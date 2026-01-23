; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!494850 () Bool)

(assert start!494850)

(declare-fun b!4798139 () Bool)

(declare-fun res!2040348 () Bool)

(declare-fun e!2996140 () Bool)

(assert (=> b!4798139 (=> res!2040348 e!2996140)))

(declare-datatypes ((K!15874 0))(
  ( (K!15875 (val!21005 Int)) )
))
(declare-datatypes ((V!16120 0))(
  ( (V!16121 (val!21006 Int)) )
))
(declare-datatypes ((tuple2!56984 0))(
  ( (tuple2!56985 (_1!31786 K!15874) (_2!31786 V!16120)) )
))
(declare-datatypes ((List!54422 0))(
  ( (Nil!54298) (Cons!54298 (h!60730 tuple2!56984) (t!361872 List!54422)) )
))
(declare-datatypes ((tuple2!56986 0))(
  ( (tuple2!56987 (_1!31787 (_ BitVec 64)) (_2!31787 List!54422)) )
))
(declare-datatypes ((List!54423 0))(
  ( (Nil!54299) (Cons!54299 (h!60731 tuple2!56986) (t!361873 List!54423)) )
))
(declare-datatypes ((ListLongMap!5409 0))(
  ( (ListLongMap!5410 (toList!6987 List!54423)) )
))
(declare-fun lm!2473 () ListLongMap!5409)

(declare-fun key!5896 () K!15874)

(declare-fun containsKey!4008 (List!54422 K!15874) Bool)

(assert (=> b!4798139 (= res!2040348 (containsKey!4008 (_2!31787 (h!60731 (toList!6987 lm!2473))) key!5896))))

(declare-fun b!4798140 () Bool)

(declare-fun lt!1954824 () ListLongMap!5409)

(declare-fun lambda!231807 () Int)

(declare-fun forall!12309 (List!54423 Int) Bool)

(assert (=> b!4798140 (= e!2996140 (forall!12309 (toList!6987 lt!1954824) lambda!231807))))

(declare-datatypes ((Unit!140435 0))(
  ( (Unit!140436) )
))
(declare-fun lt!1954826 () Unit!140435)

(declare-fun e!2996143 () Unit!140435)

(assert (=> b!4798140 (= lt!1954826 e!2996143)))

(declare-fun c!817761 () Bool)

(declare-fun lt!1954825 () (_ BitVec 64))

(declare-fun contains!17943 (ListLongMap!5409 (_ BitVec 64)) Bool)

(assert (=> b!4798140 (= c!817761 (not (contains!17943 lt!1954824 lt!1954825)))))

(declare-fun tail!9311 (ListLongMap!5409) ListLongMap!5409)

(assert (=> b!4798140 (= lt!1954824 (tail!9311 lm!2473))))

(declare-fun b!4798141 () Bool)

(declare-fun e!2996144 () Bool)

(declare-fun tp!1358272 () Bool)

(assert (=> b!4798141 (= e!2996144 tp!1358272)))

(declare-fun res!2040346 () Bool)

(declare-fun e!2996141 () Bool)

(assert (=> start!494850 (=> (not res!2040346) (not e!2996141))))

(assert (=> start!494850 (= res!2040346 (forall!12309 (toList!6987 lm!2473) lambda!231807))))

(assert (=> start!494850 e!2996141))

(declare-fun inv!69900 (ListLongMap!5409) Bool)

(assert (=> start!494850 (and (inv!69900 lm!2473) e!2996144)))

(assert (=> start!494850 true))

(declare-fun tp_is_empty!33677 () Bool)

(assert (=> start!494850 tp_is_empty!33677))

(declare-fun tp_is_empty!33679 () Bool)

(assert (=> start!494850 tp_is_empty!33679))

(declare-fun b!4798142 () Bool)

(declare-fun lt!1954822 () Unit!140435)

(assert (=> b!4798142 (= e!2996143 lt!1954822)))

(declare-datatypes ((Hashable!6954 0))(
  ( (HashableExt!6953 (__x!32977 Int)) )
))
(declare-fun hashF!1559 () Hashable!6954)

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!52 (ListLongMap!5409 K!15874 Hashable!6954) Unit!140435)

(assert (=> b!4798142 (= lt!1954822 (lemmaHashNotInLongMapThenNotInGenerated!52 lt!1954824 key!5896 hashF!1559))))

(declare-datatypes ((ListMap!6459 0))(
  ( (ListMap!6460 (toList!6988 List!54422)) )
))
(declare-fun contains!17944 (ListMap!6459 K!15874) Bool)

(declare-fun extractMap!2481 (List!54423) ListMap!6459)

(assert (=> b!4798142 (not (contains!17944 (extractMap!2481 (toList!6987 lt!1954824)) key!5896))))

(declare-fun b!4798143 () Bool)

(assert (=> b!4798143 (= e!2996141 (not e!2996140))))

(declare-fun res!2040352 () Bool)

(assert (=> b!4798143 (=> res!2040352 e!2996140)))

(declare-fun value!3111 () V!16120)

(declare-fun getValue!142 (List!54423 K!15874) V!16120)

(assert (=> b!4798143 (= res!2040352 (not (= (getValue!142 (toList!6987 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!596 (List!54423 K!15874) Bool)

(assert (=> b!4798143 (containsKeyBiggerList!596 (toList!6987 lm!2473) key!5896)))

(declare-fun lt!1954823 () Unit!140435)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!336 (ListLongMap!5409 K!15874 Hashable!6954) Unit!140435)

(assert (=> b!4798143 (= lt!1954823 (lemmaInLongMapThenContainsKeyBiggerList!336 lm!2473 key!5896 hashF!1559))))

(declare-fun e!2996142 () Bool)

(assert (=> b!4798143 e!2996142))

(declare-fun res!2040349 () Bool)

(assert (=> b!4798143 (=> (not res!2040349) (not e!2996142))))

(assert (=> b!4798143 (= res!2040349 (contains!17943 lm!2473 lt!1954825))))

(declare-fun hash!5003 (Hashable!6954 K!15874) (_ BitVec 64))

(assert (=> b!4798143 (= lt!1954825 (hash!5003 hashF!1559 key!5896))))

(declare-fun lt!1954827 () Unit!140435)

(declare-fun lemmaInGenericMapThenInLongMap!358 (ListLongMap!5409 K!15874 Hashable!6954) Unit!140435)

(assert (=> b!4798143 (= lt!1954827 (lemmaInGenericMapThenInLongMap!358 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4798144 () Bool)

(declare-fun res!2040351 () Bool)

(assert (=> b!4798144 (=> (not res!2040351) (not e!2996141))))

(declare-fun allKeysSameHashInMap!2359 (ListLongMap!5409 Hashable!6954) Bool)

(assert (=> b!4798144 (= res!2040351 (allKeysSameHashInMap!2359 lm!2473 hashF!1559))))

(declare-fun b!4798145 () Bool)

(declare-fun res!2040347 () Bool)

(assert (=> b!4798145 (=> (not res!2040347) (not e!2996141))))

(assert (=> b!4798145 (= res!2040347 (contains!17944 (extractMap!2481 (toList!6987 lm!2473)) key!5896))))

(declare-fun b!4798146 () Bool)

(declare-fun res!2040350 () Bool)

(assert (=> b!4798146 (=> res!2040350 e!2996140)))

(get-info :version)

(assert (=> b!4798146 (= res!2040350 (not ((_ is Cons!54299) (toList!6987 lm!2473))))))

(declare-fun b!4798147 () Bool)

(declare-fun Unit!140437 () Unit!140435)

(assert (=> b!4798147 (= e!2996143 Unit!140437)))

(declare-fun b!4798148 () Bool)

(declare-datatypes ((Option!13158 0))(
  ( (None!13157) (Some!13157 (v!48470 tuple2!56984)) )
))
(declare-fun isDefined!10299 (Option!13158) Bool)

(declare-fun getPair!926 (List!54422 K!15874) Option!13158)

(declare-fun apply!13027 (ListLongMap!5409 (_ BitVec 64)) List!54422)

(assert (=> b!4798148 (= e!2996142 (isDefined!10299 (getPair!926 (apply!13027 lm!2473 lt!1954825) key!5896)))))

(assert (= (and start!494850 res!2040346) b!4798144))

(assert (= (and b!4798144 res!2040351) b!4798145))

(assert (= (and b!4798145 res!2040347) b!4798143))

(assert (= (and b!4798143 res!2040349) b!4798148))

(assert (= (and b!4798143 (not res!2040352)) b!4798146))

(assert (= (and b!4798146 (not res!2040350)) b!4798139))

(assert (= (and b!4798139 (not res!2040348)) b!4798140))

(assert (= (and b!4798140 c!817761) b!4798142))

(assert (= (and b!4798140 (not c!817761)) b!4798147))

(assert (= start!494850 b!4798141))

(declare-fun m!5780816 () Bool)

(assert (=> b!4798142 m!5780816))

(declare-fun m!5780818 () Bool)

(assert (=> b!4798142 m!5780818))

(assert (=> b!4798142 m!5780818))

(declare-fun m!5780820 () Bool)

(assert (=> b!4798142 m!5780820))

(declare-fun m!5780822 () Bool)

(assert (=> start!494850 m!5780822))

(declare-fun m!5780824 () Bool)

(assert (=> start!494850 m!5780824))

(declare-fun m!5780826 () Bool)

(assert (=> b!4798144 m!5780826))

(declare-fun m!5780828 () Bool)

(assert (=> b!4798148 m!5780828))

(assert (=> b!4798148 m!5780828))

(declare-fun m!5780830 () Bool)

(assert (=> b!4798148 m!5780830))

(assert (=> b!4798148 m!5780830))

(declare-fun m!5780832 () Bool)

(assert (=> b!4798148 m!5780832))

(declare-fun m!5780834 () Bool)

(assert (=> b!4798139 m!5780834))

(declare-fun m!5780836 () Bool)

(assert (=> b!4798140 m!5780836))

(declare-fun m!5780838 () Bool)

(assert (=> b!4798140 m!5780838))

(declare-fun m!5780840 () Bool)

(assert (=> b!4798140 m!5780840))

(declare-fun m!5780842 () Bool)

(assert (=> b!4798143 m!5780842))

(declare-fun m!5780844 () Bool)

(assert (=> b!4798143 m!5780844))

(declare-fun m!5780846 () Bool)

(assert (=> b!4798143 m!5780846))

(declare-fun m!5780848 () Bool)

(assert (=> b!4798143 m!5780848))

(declare-fun m!5780850 () Bool)

(assert (=> b!4798143 m!5780850))

(declare-fun m!5780852 () Bool)

(assert (=> b!4798143 m!5780852))

(declare-fun m!5780854 () Bool)

(assert (=> b!4798145 m!5780854))

(assert (=> b!4798145 m!5780854))

(declare-fun m!5780856 () Bool)

(assert (=> b!4798145 m!5780856))

(check-sat (not b!4798143) (not b!4798144) (not b!4798145) (not b!4798139) tp_is_empty!33677 (not b!4798148) tp_is_empty!33679 (not b!4798140) (not start!494850) (not b!4798142) (not b!4798141))
(check-sat)
(get-model)

(declare-fun d!1535730 () Bool)

(declare-fun isEmpty!29484 (Option!13158) Bool)

(assert (=> d!1535730 (= (isDefined!10299 (getPair!926 (apply!13027 lm!2473 lt!1954825) key!5896)) (not (isEmpty!29484 (getPair!926 (apply!13027 lm!2473 lt!1954825) key!5896))))))

(declare-fun bs!1156572 () Bool)

(assert (= bs!1156572 d!1535730))

(assert (=> bs!1156572 m!5780830))

(declare-fun m!5780858 () Bool)

(assert (=> bs!1156572 m!5780858))

(assert (=> b!4798148 d!1535730))

(declare-fun b!4798165 () Bool)

(declare-fun e!2996158 () Option!13158)

(assert (=> b!4798165 (= e!2996158 None!13157)))

(declare-fun b!4798166 () Bool)

(declare-fun e!2996159 () Bool)

(declare-fun e!2996156 () Bool)

(assert (=> b!4798166 (= e!2996159 e!2996156)))

(declare-fun res!2040363 () Bool)

(assert (=> b!4798166 (=> (not res!2040363) (not e!2996156))))

(declare-fun lt!1954833 () Option!13158)

(assert (=> b!4798166 (= res!2040363 (isDefined!10299 lt!1954833))))

(declare-fun b!4798167 () Bool)

(declare-fun e!2996157 () Option!13158)

(assert (=> b!4798167 (= e!2996157 (Some!13157 (h!60730 (apply!13027 lm!2473 lt!1954825))))))

(declare-fun b!4798168 () Bool)

(declare-fun e!2996155 () Bool)

(assert (=> b!4798168 (= e!2996155 (not (containsKey!4008 (apply!13027 lm!2473 lt!1954825) key!5896)))))

(declare-fun b!4798169 () Bool)

(declare-fun contains!17947 (List!54422 tuple2!56984) Bool)

(declare-fun get!18531 (Option!13158) tuple2!56984)

(assert (=> b!4798169 (= e!2996156 (contains!17947 (apply!13027 lm!2473 lt!1954825) (get!18531 lt!1954833)))))

(declare-fun b!4798170 () Bool)

(assert (=> b!4798170 (= e!2996158 (getPair!926 (t!361872 (apply!13027 lm!2473 lt!1954825)) key!5896))))

(declare-fun b!4798171 () Bool)

(assert (=> b!4798171 (= e!2996157 e!2996158)))

(declare-fun c!817766 () Bool)

(assert (=> b!4798171 (= c!817766 ((_ is Cons!54298) (apply!13027 lm!2473 lt!1954825)))))

(declare-fun b!4798172 () Bool)

(declare-fun res!2040361 () Bool)

(assert (=> b!4798172 (=> (not res!2040361) (not e!2996156))))

(assert (=> b!4798172 (= res!2040361 (= (_1!31786 (get!18531 lt!1954833)) key!5896))))

(declare-fun d!1535732 () Bool)

(assert (=> d!1535732 e!2996159))

(declare-fun res!2040362 () Bool)

(assert (=> d!1535732 (=> res!2040362 e!2996159)))

(assert (=> d!1535732 (= res!2040362 e!2996155)))

(declare-fun res!2040364 () Bool)

(assert (=> d!1535732 (=> (not res!2040364) (not e!2996155))))

(assert (=> d!1535732 (= res!2040364 (isEmpty!29484 lt!1954833))))

(assert (=> d!1535732 (= lt!1954833 e!2996157)))

(declare-fun c!817767 () Bool)

(assert (=> d!1535732 (= c!817767 (and ((_ is Cons!54298) (apply!13027 lm!2473 lt!1954825)) (= (_1!31786 (h!60730 (apply!13027 lm!2473 lt!1954825))) key!5896)))))

(declare-fun noDuplicateKeys!2355 (List!54422) Bool)

(assert (=> d!1535732 (noDuplicateKeys!2355 (apply!13027 lm!2473 lt!1954825))))

(assert (=> d!1535732 (= (getPair!926 (apply!13027 lm!2473 lt!1954825) key!5896) lt!1954833)))

(assert (= (and d!1535732 c!817767) b!4798167))

(assert (= (and d!1535732 (not c!817767)) b!4798171))

(assert (= (and b!4798171 c!817766) b!4798170))

(assert (= (and b!4798171 (not c!817766)) b!4798165))

(assert (= (and d!1535732 res!2040364) b!4798168))

(assert (= (and d!1535732 (not res!2040362)) b!4798166))

(assert (= (and b!4798166 res!2040363) b!4798172))

(assert (= (and b!4798172 res!2040361) b!4798169))

(declare-fun m!5780864 () Bool)

(assert (=> b!4798169 m!5780864))

(assert (=> b!4798169 m!5780828))

(assert (=> b!4798169 m!5780864))

(declare-fun m!5780866 () Bool)

(assert (=> b!4798169 m!5780866))

(declare-fun m!5780868 () Bool)

(assert (=> d!1535732 m!5780868))

(assert (=> d!1535732 m!5780828))

(declare-fun m!5780870 () Bool)

(assert (=> d!1535732 m!5780870))

(declare-fun m!5780872 () Bool)

(assert (=> b!4798166 m!5780872))

(declare-fun m!5780874 () Bool)

(assert (=> b!4798170 m!5780874))

(assert (=> b!4798172 m!5780864))

(assert (=> b!4798168 m!5780828))

(declare-fun m!5780876 () Bool)

(assert (=> b!4798168 m!5780876))

(assert (=> b!4798148 d!1535732))

(declare-fun d!1535736 () Bool)

(declare-datatypes ((Option!13161 0))(
  ( (None!13160) (Some!13160 (v!48473 List!54422)) )
))
(declare-fun get!18532 (Option!13161) List!54422)

(declare-fun getValueByKey!2382 (List!54423 (_ BitVec 64)) Option!13161)

(assert (=> d!1535736 (= (apply!13027 lm!2473 lt!1954825) (get!18532 (getValueByKey!2382 (toList!6987 lm!2473) lt!1954825)))))

(declare-fun bs!1156575 () Bool)

(assert (= bs!1156575 d!1535736))

(declare-fun m!5780878 () Bool)

(assert (=> bs!1156575 m!5780878))

(assert (=> bs!1156575 m!5780878))

(declare-fun m!5780880 () Bool)

(assert (=> bs!1156575 m!5780880))

(assert (=> b!4798148 d!1535736))

(declare-fun bs!1156587 () Bool)

(declare-fun d!1535738 () Bool)

(assert (= bs!1156587 (and d!1535738 start!494850)))

(declare-fun lambda!231820 () Int)

(assert (=> bs!1156587 (= lambda!231820 lambda!231807)))

(assert (=> d!1535738 (not (contains!17944 (extractMap!2481 (toList!6987 lt!1954824)) key!5896))))

(declare-fun lt!1954884 () Unit!140435)

(declare-fun choose!34635 (ListLongMap!5409 K!15874 Hashable!6954) Unit!140435)

(assert (=> d!1535738 (= lt!1954884 (choose!34635 lt!1954824 key!5896 hashF!1559))))

(assert (=> d!1535738 (forall!12309 (toList!6987 lt!1954824) lambda!231820)))

(assert (=> d!1535738 (= (lemmaHashNotInLongMapThenNotInGenerated!52 lt!1954824 key!5896 hashF!1559) lt!1954884)))

(declare-fun bs!1156589 () Bool)

(assert (= bs!1156589 d!1535738))

(assert (=> bs!1156589 m!5780818))

(assert (=> bs!1156589 m!5780818))

(assert (=> bs!1156589 m!5780820))

(declare-fun m!5780956 () Bool)

(assert (=> bs!1156589 m!5780956))

(declare-fun m!5780958 () Bool)

(assert (=> bs!1156589 m!5780958))

(assert (=> b!4798142 d!1535738))

(declare-fun b!4798313 () Bool)

(declare-fun e!2996263 () Unit!140435)

(declare-fun lt!1954920 () Unit!140435)

(assert (=> b!4798313 (= e!2996263 lt!1954920)))

(declare-fun lt!1954914 () Unit!140435)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2173 (List!54422 K!15874) Unit!140435)

(assert (=> b!4798313 (= lt!1954914 (lemmaContainsKeyImpliesGetValueByKeyDefined!2173 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))) key!5896))))

(declare-datatypes ((Option!13162 0))(
  ( (None!13161) (Some!13161 (v!48474 V!16120)) )
))
(declare-fun isDefined!10302 (Option!13162) Bool)

(declare-fun getValueByKey!2383 (List!54422 K!15874) Option!13162)

(assert (=> b!4798313 (isDefined!10302 (getValueByKey!2383 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))) key!5896))))

(declare-fun lt!1954916 () Unit!140435)

(assert (=> b!4798313 (= lt!1954916 lt!1954914)))

(declare-fun lemmaInListThenGetKeysListContains!1087 (List!54422 K!15874) Unit!140435)

(assert (=> b!4798313 (= lt!1954920 (lemmaInListThenGetKeysListContains!1087 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))) key!5896))))

(declare-fun call!335267 () Bool)

(assert (=> b!4798313 call!335267))

(declare-fun b!4798314 () Bool)

(assert (=> b!4798314 false))

(declare-fun lt!1954918 () Unit!140435)

(declare-fun lt!1954919 () Unit!140435)

(assert (=> b!4798314 (= lt!1954918 lt!1954919)))

(declare-fun containsKey!4011 (List!54422 K!15874) Bool)

(assert (=> b!4798314 (containsKey!4011 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))) key!5896)))

(declare-fun lemmaInGetKeysListThenContainsKey!1092 (List!54422 K!15874) Unit!140435)

(assert (=> b!4798314 (= lt!1954919 (lemmaInGetKeysListThenContainsKey!1092 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))) key!5896))))

(declare-fun e!2996259 () Unit!140435)

(declare-fun Unit!140444 () Unit!140435)

(assert (=> b!4798314 (= e!2996259 Unit!140444)))

(declare-fun b!4798315 () Bool)

(assert (=> b!4798315 (= e!2996263 e!2996259)))

(declare-fun c!817803 () Bool)

(assert (=> b!4798315 (= c!817803 call!335267)))

(declare-fun b!4798316 () Bool)

(declare-fun Unit!140445 () Unit!140435)

(assert (=> b!4798316 (= e!2996259 Unit!140445)))

(declare-fun b!4798317 () Bool)

(declare-fun e!2996258 () Bool)

(declare-fun e!2996261 () Bool)

(assert (=> b!4798317 (= e!2996258 e!2996261)))

(declare-fun res!2040428 () Bool)

(assert (=> b!4798317 (=> (not res!2040428) (not e!2996261))))

(assert (=> b!4798317 (= res!2040428 (isDefined!10302 (getValueByKey!2383 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))) key!5896)))))

(declare-fun d!1535758 () Bool)

(assert (=> d!1535758 e!2996258))

(declare-fun res!2040429 () Bool)

(assert (=> d!1535758 (=> res!2040429 e!2996258)))

(declare-fun e!2996262 () Bool)

(assert (=> d!1535758 (= res!2040429 e!2996262)))

(declare-fun res!2040430 () Bool)

(assert (=> d!1535758 (=> (not res!2040430) (not e!2996262))))

(declare-fun lt!1954917 () Bool)

(assert (=> d!1535758 (= res!2040430 (not lt!1954917))))

(declare-fun lt!1954915 () Bool)

(assert (=> d!1535758 (= lt!1954917 lt!1954915)))

(declare-fun lt!1954921 () Unit!140435)

(assert (=> d!1535758 (= lt!1954921 e!2996263)))

(declare-fun c!817804 () Bool)

(assert (=> d!1535758 (= c!817804 lt!1954915)))

(assert (=> d!1535758 (= lt!1954915 (containsKey!4011 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))) key!5896))))

(assert (=> d!1535758 (= (contains!17944 (extractMap!2481 (toList!6987 lt!1954824)) key!5896) lt!1954917)))

(declare-fun b!4798318 () Bool)

(declare-datatypes ((List!54425 0))(
  ( (Nil!54301) (Cons!54301 (h!60733 K!15874) (t!361875 List!54425)) )
))
(declare-fun contains!17948 (List!54425 K!15874) Bool)

(declare-fun keys!19845 (ListMap!6459) List!54425)

(assert (=> b!4798318 (= e!2996261 (contains!17948 (keys!19845 (extractMap!2481 (toList!6987 lt!1954824))) key!5896))))

(declare-fun b!4798319 () Bool)

(declare-fun e!2996260 () List!54425)

(declare-fun getKeysList!1092 (List!54422) List!54425)

(assert (=> b!4798319 (= e!2996260 (getKeysList!1092 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824)))))))

(declare-fun bm!335262 () Bool)

(assert (=> bm!335262 (= call!335267 (contains!17948 e!2996260 key!5896))))

(declare-fun c!817805 () Bool)

(assert (=> bm!335262 (= c!817805 c!817804)))

(declare-fun b!4798320 () Bool)

(assert (=> b!4798320 (= e!2996260 (keys!19845 (extractMap!2481 (toList!6987 lt!1954824))))))

(declare-fun b!4798321 () Bool)

(assert (=> b!4798321 (= e!2996262 (not (contains!17948 (keys!19845 (extractMap!2481 (toList!6987 lt!1954824))) key!5896)))))

(assert (= (and d!1535758 c!817804) b!4798313))

(assert (= (and d!1535758 (not c!817804)) b!4798315))

(assert (= (and b!4798315 c!817803) b!4798314))

(assert (= (and b!4798315 (not c!817803)) b!4798316))

(assert (= (or b!4798313 b!4798315) bm!335262))

(assert (= (and bm!335262 c!817805) b!4798319))

(assert (= (and bm!335262 (not c!817805)) b!4798320))

(assert (= (and d!1535758 res!2040430) b!4798321))

(assert (= (and d!1535758 (not res!2040429)) b!4798317))

(assert (= (and b!4798317 res!2040428) b!4798318))

(assert (=> b!4798321 m!5780818))

(declare-fun m!5781022 () Bool)

(assert (=> b!4798321 m!5781022))

(assert (=> b!4798321 m!5781022))

(declare-fun m!5781024 () Bool)

(assert (=> b!4798321 m!5781024))

(declare-fun m!5781026 () Bool)

(assert (=> d!1535758 m!5781026))

(declare-fun m!5781028 () Bool)

(assert (=> b!4798317 m!5781028))

(assert (=> b!4798317 m!5781028))

(declare-fun m!5781030 () Bool)

(assert (=> b!4798317 m!5781030))

(assert (=> b!4798320 m!5780818))

(assert (=> b!4798320 m!5781022))

(assert (=> b!4798318 m!5780818))

(assert (=> b!4798318 m!5781022))

(assert (=> b!4798318 m!5781022))

(assert (=> b!4798318 m!5781024))

(declare-fun m!5781032 () Bool)

(assert (=> bm!335262 m!5781032))

(declare-fun m!5781034 () Bool)

(assert (=> b!4798313 m!5781034))

(assert (=> b!4798313 m!5781028))

(assert (=> b!4798313 m!5781028))

(assert (=> b!4798313 m!5781030))

(declare-fun m!5781036 () Bool)

(assert (=> b!4798313 m!5781036))

(assert (=> b!4798314 m!5781026))

(declare-fun m!5781038 () Bool)

(assert (=> b!4798314 m!5781038))

(declare-fun m!5781040 () Bool)

(assert (=> b!4798319 m!5781040))

(assert (=> b!4798142 d!1535758))

(declare-fun bs!1156607 () Bool)

(declare-fun d!1535784 () Bool)

(assert (= bs!1156607 (and d!1535784 start!494850)))

(declare-fun lambda!231829 () Int)

(assert (=> bs!1156607 (= lambda!231829 lambda!231807)))

(declare-fun bs!1156608 () Bool)

(assert (= bs!1156608 (and d!1535784 d!1535738)))

(assert (=> bs!1156608 (= lambda!231829 lambda!231820)))

(declare-fun lt!1954924 () ListMap!6459)

(declare-fun invariantList!1746 (List!54422) Bool)

(assert (=> d!1535784 (invariantList!1746 (toList!6988 lt!1954924))))

(declare-fun e!2996266 () ListMap!6459)

(assert (=> d!1535784 (= lt!1954924 e!2996266)))

(declare-fun c!817808 () Bool)

(assert (=> d!1535784 (= c!817808 ((_ is Cons!54299) (toList!6987 lt!1954824)))))

(assert (=> d!1535784 (forall!12309 (toList!6987 lt!1954824) lambda!231829)))

(assert (=> d!1535784 (= (extractMap!2481 (toList!6987 lt!1954824)) lt!1954924)))

(declare-fun b!4798326 () Bool)

(declare-fun addToMapMapFromBucket!1723 (List!54422 ListMap!6459) ListMap!6459)

(assert (=> b!4798326 (= e!2996266 (addToMapMapFromBucket!1723 (_2!31787 (h!60731 (toList!6987 lt!1954824))) (extractMap!2481 (t!361873 (toList!6987 lt!1954824)))))))

(declare-fun b!4798327 () Bool)

(assert (=> b!4798327 (= e!2996266 (ListMap!6460 Nil!54298))))

(assert (= (and d!1535784 c!817808) b!4798326))

(assert (= (and d!1535784 (not c!817808)) b!4798327))

(declare-fun m!5781042 () Bool)

(assert (=> d!1535784 m!5781042))

(declare-fun m!5781044 () Bool)

(assert (=> d!1535784 m!5781044))

(declare-fun m!5781046 () Bool)

(assert (=> b!4798326 m!5781046))

(assert (=> b!4798326 m!5781046))

(declare-fun m!5781048 () Bool)

(assert (=> b!4798326 m!5781048))

(assert (=> b!4798142 d!1535784))

(declare-fun bs!1156609 () Bool)

(declare-fun d!1535786 () Bool)

(assert (= bs!1156609 (and d!1535786 start!494850)))

(declare-fun lambda!231832 () Int)

(assert (=> bs!1156609 (not (= lambda!231832 lambda!231807))))

(declare-fun bs!1156610 () Bool)

(assert (= bs!1156610 (and d!1535786 d!1535738)))

(assert (=> bs!1156610 (not (= lambda!231832 lambda!231820))))

(declare-fun bs!1156611 () Bool)

(assert (= bs!1156611 (and d!1535786 d!1535784)))

(assert (=> bs!1156611 (not (= lambda!231832 lambda!231829))))

(assert (=> d!1535786 true))

(assert (=> d!1535786 (= (allKeysSameHashInMap!2359 lm!2473 hashF!1559) (forall!12309 (toList!6987 lm!2473) lambda!231832))))

(declare-fun bs!1156612 () Bool)

(assert (= bs!1156612 d!1535786))

(declare-fun m!5781050 () Bool)

(assert (=> bs!1156612 m!5781050))

(assert (=> b!4798144 d!1535786))

(declare-fun d!1535788 () Bool)

(declare-fun res!2040435 () Bool)

(declare-fun e!2996271 () Bool)

(assert (=> d!1535788 (=> res!2040435 e!2996271)))

(assert (=> d!1535788 (= res!2040435 ((_ is Nil!54299) (toList!6987 lm!2473)))))

(assert (=> d!1535788 (= (forall!12309 (toList!6987 lm!2473) lambda!231807) e!2996271)))

(declare-fun b!4798334 () Bool)

(declare-fun e!2996272 () Bool)

(assert (=> b!4798334 (= e!2996271 e!2996272)))

(declare-fun res!2040436 () Bool)

(assert (=> b!4798334 (=> (not res!2040436) (not e!2996272))))

(declare-fun dynLambda!22086 (Int tuple2!56986) Bool)

(assert (=> b!4798334 (= res!2040436 (dynLambda!22086 lambda!231807 (h!60731 (toList!6987 lm!2473))))))

(declare-fun b!4798335 () Bool)

(assert (=> b!4798335 (= e!2996272 (forall!12309 (t!361873 (toList!6987 lm!2473)) lambda!231807))))

(assert (= (and d!1535788 (not res!2040435)) b!4798334))

(assert (= (and b!4798334 res!2040436) b!4798335))

(declare-fun b_lambda!187331 () Bool)

(assert (=> (not b_lambda!187331) (not b!4798334)))

(declare-fun m!5781052 () Bool)

(assert (=> b!4798334 m!5781052))

(declare-fun m!5781054 () Bool)

(assert (=> b!4798335 m!5781054))

(assert (=> start!494850 d!1535788))

(declare-fun d!1535790 () Bool)

(declare-fun isStrictlySorted!893 (List!54423) Bool)

(assert (=> d!1535790 (= (inv!69900 lm!2473) (isStrictlySorted!893 (toList!6987 lm!2473)))))

(declare-fun bs!1156613 () Bool)

(assert (= bs!1156613 d!1535790))

(declare-fun m!5781056 () Bool)

(assert (=> bs!1156613 m!5781056))

(assert (=> start!494850 d!1535790))

(declare-fun d!1535792 () Bool)

(declare-fun e!2996277 () Bool)

(assert (=> d!1535792 e!2996277))

(declare-fun res!2040439 () Bool)

(assert (=> d!1535792 (=> res!2040439 e!2996277)))

(declare-fun lt!1954933 () Bool)

(assert (=> d!1535792 (= res!2040439 (not lt!1954933))))

(declare-fun lt!1954936 () Bool)

(assert (=> d!1535792 (= lt!1954933 lt!1954936)))

(declare-fun lt!1954935 () Unit!140435)

(declare-fun e!2996278 () Unit!140435)

(assert (=> d!1535792 (= lt!1954935 e!2996278)))

(declare-fun c!817811 () Bool)

(assert (=> d!1535792 (= c!817811 lt!1954936)))

(declare-fun containsKey!4012 (List!54423 (_ BitVec 64)) Bool)

(assert (=> d!1535792 (= lt!1954936 (containsKey!4012 (toList!6987 lm!2473) lt!1954825))))

(assert (=> d!1535792 (= (contains!17943 lm!2473 lt!1954825) lt!1954933)))

(declare-fun b!4798342 () Bool)

(declare-fun lt!1954934 () Unit!140435)

(assert (=> b!4798342 (= e!2996278 lt!1954934)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2174 (List!54423 (_ BitVec 64)) Unit!140435)

(assert (=> b!4798342 (= lt!1954934 (lemmaContainsKeyImpliesGetValueByKeyDefined!2174 (toList!6987 lm!2473) lt!1954825))))

(declare-fun isDefined!10303 (Option!13161) Bool)

(assert (=> b!4798342 (isDefined!10303 (getValueByKey!2382 (toList!6987 lm!2473) lt!1954825))))

(declare-fun b!4798343 () Bool)

(declare-fun Unit!140446 () Unit!140435)

(assert (=> b!4798343 (= e!2996278 Unit!140446)))

(declare-fun b!4798344 () Bool)

(assert (=> b!4798344 (= e!2996277 (isDefined!10303 (getValueByKey!2382 (toList!6987 lm!2473) lt!1954825)))))

(assert (= (and d!1535792 c!817811) b!4798342))

(assert (= (and d!1535792 (not c!817811)) b!4798343))

(assert (= (and d!1535792 (not res!2040439)) b!4798344))

(declare-fun m!5781058 () Bool)

(assert (=> d!1535792 m!5781058))

(declare-fun m!5781060 () Bool)

(assert (=> b!4798342 m!5781060))

(assert (=> b!4798342 m!5780878))

(assert (=> b!4798342 m!5780878))

(declare-fun m!5781062 () Bool)

(assert (=> b!4798342 m!5781062))

(assert (=> b!4798344 m!5780878))

(assert (=> b!4798344 m!5780878))

(assert (=> b!4798344 m!5781062))

(assert (=> b!4798143 d!1535792))

(declare-fun d!1535794 () Bool)

(declare-fun res!2040448 () Bool)

(declare-fun e!2996285 () Bool)

(assert (=> d!1535794 (=> res!2040448 e!2996285)))

(declare-fun e!2996287 () Bool)

(assert (=> d!1535794 (= res!2040448 e!2996287)))

(declare-fun res!2040447 () Bool)

(assert (=> d!1535794 (=> (not res!2040447) (not e!2996287))))

(assert (=> d!1535794 (= res!2040447 ((_ is Cons!54299) (toList!6987 lm!2473)))))

(assert (=> d!1535794 (= (containsKeyBiggerList!596 (toList!6987 lm!2473) key!5896) e!2996285)))

(declare-fun b!4798351 () Bool)

(assert (=> b!4798351 (= e!2996287 (containsKey!4008 (_2!31787 (h!60731 (toList!6987 lm!2473))) key!5896))))

(declare-fun b!4798352 () Bool)

(declare-fun e!2996286 () Bool)

(assert (=> b!4798352 (= e!2996285 e!2996286)))

(declare-fun res!2040446 () Bool)

(assert (=> b!4798352 (=> (not res!2040446) (not e!2996286))))

(assert (=> b!4798352 (= res!2040446 ((_ is Cons!54299) (toList!6987 lm!2473)))))

(declare-fun b!4798353 () Bool)

(assert (=> b!4798353 (= e!2996286 (containsKeyBiggerList!596 (t!361873 (toList!6987 lm!2473)) key!5896))))

(assert (= (and d!1535794 res!2040447) b!4798351))

(assert (= (and d!1535794 (not res!2040448)) b!4798352))

(assert (= (and b!4798352 res!2040446) b!4798353))

(assert (=> b!4798351 m!5780834))

(declare-fun m!5781064 () Bool)

(assert (=> b!4798353 m!5781064))

(assert (=> b!4798143 d!1535794))

(declare-fun bs!1156614 () Bool)

(declare-fun d!1535796 () Bool)

(assert (= bs!1156614 (and d!1535796 start!494850)))

(declare-fun lambda!231835 () Int)

(assert (=> bs!1156614 (= lambda!231835 lambda!231807)))

(declare-fun bs!1156615 () Bool)

(assert (= bs!1156615 (and d!1535796 d!1535738)))

(assert (=> bs!1156615 (= lambda!231835 lambda!231820)))

(declare-fun bs!1156616 () Bool)

(assert (= bs!1156616 (and d!1535796 d!1535784)))

(assert (=> bs!1156616 (= lambda!231835 lambda!231829)))

(declare-fun bs!1156617 () Bool)

(assert (= bs!1156617 (and d!1535796 d!1535786)))

(assert (=> bs!1156617 (not (= lambda!231835 lambda!231832))))

(assert (=> d!1535796 (containsKeyBiggerList!596 (toList!6987 lm!2473) key!5896)))

(declare-fun lt!1954939 () Unit!140435)

(declare-fun choose!34636 (ListLongMap!5409 K!15874 Hashable!6954) Unit!140435)

(assert (=> d!1535796 (= lt!1954939 (choose!34636 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1535796 (forall!12309 (toList!6987 lm!2473) lambda!231835)))

(assert (=> d!1535796 (= (lemmaInLongMapThenContainsKeyBiggerList!336 lm!2473 key!5896 hashF!1559) lt!1954939)))

(declare-fun bs!1156618 () Bool)

(assert (= bs!1156618 d!1535796))

(assert (=> bs!1156618 m!5780844))

(declare-fun m!5781066 () Bool)

(assert (=> bs!1156618 m!5781066))

(declare-fun m!5781068 () Bool)

(assert (=> bs!1156618 m!5781068))

(assert (=> b!4798143 d!1535796))

(declare-fun bs!1156619 () Bool)

(declare-fun d!1535798 () Bool)

(assert (= bs!1156619 (and d!1535798 d!1535796)))

(declare-fun lambda!231838 () Int)

(assert (=> bs!1156619 (= lambda!231838 lambda!231835)))

(declare-fun bs!1156620 () Bool)

(assert (= bs!1156620 (and d!1535798 d!1535786)))

(assert (=> bs!1156620 (not (= lambda!231838 lambda!231832))))

(declare-fun bs!1156621 () Bool)

(assert (= bs!1156621 (and d!1535798 d!1535784)))

(assert (=> bs!1156621 (= lambda!231838 lambda!231829)))

(declare-fun bs!1156622 () Bool)

(assert (= bs!1156622 (and d!1535798 start!494850)))

(assert (=> bs!1156622 (= lambda!231838 lambda!231807)))

(declare-fun bs!1156623 () Bool)

(assert (= bs!1156623 (and d!1535798 d!1535738)))

(assert (=> bs!1156623 (= lambda!231838 lambda!231820)))

(declare-fun e!2996290 () Bool)

(assert (=> d!1535798 e!2996290))

(declare-fun res!2040451 () Bool)

(assert (=> d!1535798 (=> (not res!2040451) (not e!2996290))))

(assert (=> d!1535798 (= res!2040451 (contains!17943 lm!2473 (hash!5003 hashF!1559 key!5896)))))

(declare-fun lt!1954942 () Unit!140435)

(declare-fun choose!34637 (ListLongMap!5409 K!15874 Hashable!6954) Unit!140435)

(assert (=> d!1535798 (= lt!1954942 (choose!34637 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1535798 (forall!12309 (toList!6987 lm!2473) lambda!231838)))

(assert (=> d!1535798 (= (lemmaInGenericMapThenInLongMap!358 lm!2473 key!5896 hashF!1559) lt!1954942)))

(declare-fun b!4798356 () Bool)

(assert (=> b!4798356 (= e!2996290 (isDefined!10299 (getPair!926 (apply!13027 lm!2473 (hash!5003 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1535798 res!2040451) b!4798356))

(assert (=> d!1535798 m!5780846))

(assert (=> d!1535798 m!5780846))

(declare-fun m!5781070 () Bool)

(assert (=> d!1535798 m!5781070))

(declare-fun m!5781072 () Bool)

(assert (=> d!1535798 m!5781072))

(declare-fun m!5781074 () Bool)

(assert (=> d!1535798 m!5781074))

(assert (=> b!4798356 m!5780846))

(assert (=> b!4798356 m!5780846))

(declare-fun m!5781076 () Bool)

(assert (=> b!4798356 m!5781076))

(assert (=> b!4798356 m!5781076))

(declare-fun m!5781078 () Bool)

(assert (=> b!4798356 m!5781078))

(assert (=> b!4798356 m!5781078))

(declare-fun m!5781080 () Bool)

(assert (=> b!4798356 m!5781080))

(assert (=> b!4798143 d!1535798))

(declare-fun d!1535800 () Bool)

(declare-fun c!817814 () Bool)

(declare-fun e!2996296 () Bool)

(assert (=> d!1535800 (= c!817814 e!2996296)))

(declare-fun res!2040454 () Bool)

(assert (=> d!1535800 (=> (not res!2040454) (not e!2996296))))

(assert (=> d!1535800 (= res!2040454 ((_ is Cons!54299) (toList!6987 lm!2473)))))

(declare-fun e!2996295 () V!16120)

(assert (=> d!1535800 (= (getValue!142 (toList!6987 lm!2473) key!5896) e!2996295)))

(declare-fun b!4798365 () Bool)

(assert (=> b!4798365 (= e!2996296 (containsKey!4008 (_2!31787 (h!60731 (toList!6987 lm!2473))) key!5896))))

(declare-fun b!4798363 () Bool)

(assert (=> b!4798363 (= e!2996295 (_2!31786 (get!18531 (getPair!926 (_2!31787 (h!60731 (toList!6987 lm!2473))) key!5896))))))

(declare-fun b!4798364 () Bool)

(assert (=> b!4798364 (= e!2996295 (getValue!142 (t!361873 (toList!6987 lm!2473)) key!5896))))

(assert (= (and d!1535800 res!2040454) b!4798365))

(assert (= (and d!1535800 c!817814) b!4798363))

(assert (= (and d!1535800 (not c!817814)) b!4798364))

(assert (=> b!4798365 m!5780834))

(declare-fun m!5781082 () Bool)

(assert (=> b!4798363 m!5781082))

(assert (=> b!4798363 m!5781082))

(declare-fun m!5781084 () Bool)

(assert (=> b!4798363 m!5781084))

(declare-fun m!5781086 () Bool)

(assert (=> b!4798364 m!5781086))

(assert (=> b!4798143 d!1535800))

(declare-fun d!1535802 () Bool)

(declare-fun hash!5005 (Hashable!6954 K!15874) (_ BitVec 64))

(assert (=> d!1535802 (= (hash!5003 hashF!1559 key!5896) (hash!5005 hashF!1559 key!5896))))

(declare-fun bs!1156624 () Bool)

(assert (= bs!1156624 d!1535802))

(declare-fun m!5781088 () Bool)

(assert (=> bs!1156624 m!5781088))

(assert (=> b!4798143 d!1535802))

(declare-fun d!1535804 () Bool)

(declare-fun res!2040455 () Bool)

(declare-fun e!2996297 () Bool)

(assert (=> d!1535804 (=> res!2040455 e!2996297)))

(assert (=> d!1535804 (= res!2040455 ((_ is Nil!54299) (toList!6987 lt!1954824)))))

(assert (=> d!1535804 (= (forall!12309 (toList!6987 lt!1954824) lambda!231807) e!2996297)))

(declare-fun b!4798366 () Bool)

(declare-fun e!2996298 () Bool)

(assert (=> b!4798366 (= e!2996297 e!2996298)))

(declare-fun res!2040456 () Bool)

(assert (=> b!4798366 (=> (not res!2040456) (not e!2996298))))

(assert (=> b!4798366 (= res!2040456 (dynLambda!22086 lambda!231807 (h!60731 (toList!6987 lt!1954824))))))

(declare-fun b!4798367 () Bool)

(assert (=> b!4798367 (= e!2996298 (forall!12309 (t!361873 (toList!6987 lt!1954824)) lambda!231807))))

(assert (= (and d!1535804 (not res!2040455)) b!4798366))

(assert (= (and b!4798366 res!2040456) b!4798367))

(declare-fun b_lambda!187333 () Bool)

(assert (=> (not b_lambda!187333) (not b!4798366)))

(declare-fun m!5781090 () Bool)

(assert (=> b!4798366 m!5781090))

(declare-fun m!5781092 () Bool)

(assert (=> b!4798367 m!5781092))

(assert (=> b!4798140 d!1535804))

(declare-fun d!1535806 () Bool)

(declare-fun e!2996299 () Bool)

(assert (=> d!1535806 e!2996299))

(declare-fun res!2040457 () Bool)

(assert (=> d!1535806 (=> res!2040457 e!2996299)))

(declare-fun lt!1954943 () Bool)

(assert (=> d!1535806 (= res!2040457 (not lt!1954943))))

(declare-fun lt!1954946 () Bool)

(assert (=> d!1535806 (= lt!1954943 lt!1954946)))

(declare-fun lt!1954945 () Unit!140435)

(declare-fun e!2996300 () Unit!140435)

(assert (=> d!1535806 (= lt!1954945 e!2996300)))

(declare-fun c!817815 () Bool)

(assert (=> d!1535806 (= c!817815 lt!1954946)))

(assert (=> d!1535806 (= lt!1954946 (containsKey!4012 (toList!6987 lt!1954824) lt!1954825))))

(assert (=> d!1535806 (= (contains!17943 lt!1954824 lt!1954825) lt!1954943)))

(declare-fun b!4798368 () Bool)

(declare-fun lt!1954944 () Unit!140435)

(assert (=> b!4798368 (= e!2996300 lt!1954944)))

(assert (=> b!4798368 (= lt!1954944 (lemmaContainsKeyImpliesGetValueByKeyDefined!2174 (toList!6987 lt!1954824) lt!1954825))))

(assert (=> b!4798368 (isDefined!10303 (getValueByKey!2382 (toList!6987 lt!1954824) lt!1954825))))

(declare-fun b!4798369 () Bool)

(declare-fun Unit!140447 () Unit!140435)

(assert (=> b!4798369 (= e!2996300 Unit!140447)))

(declare-fun b!4798370 () Bool)

(assert (=> b!4798370 (= e!2996299 (isDefined!10303 (getValueByKey!2382 (toList!6987 lt!1954824) lt!1954825)))))

(assert (= (and d!1535806 c!817815) b!4798368))

(assert (= (and d!1535806 (not c!817815)) b!4798369))

(assert (= (and d!1535806 (not res!2040457)) b!4798370))

(declare-fun m!5781094 () Bool)

(assert (=> d!1535806 m!5781094))

(declare-fun m!5781096 () Bool)

(assert (=> b!4798368 m!5781096))

(declare-fun m!5781098 () Bool)

(assert (=> b!4798368 m!5781098))

(assert (=> b!4798368 m!5781098))

(declare-fun m!5781100 () Bool)

(assert (=> b!4798368 m!5781100))

(assert (=> b!4798370 m!5781098))

(assert (=> b!4798370 m!5781098))

(assert (=> b!4798370 m!5781100))

(assert (=> b!4798140 d!1535806))

(declare-fun d!1535808 () Bool)

(declare-fun tail!9313 (List!54423) List!54423)

(assert (=> d!1535808 (= (tail!9311 lm!2473) (ListLongMap!5410 (tail!9313 (toList!6987 lm!2473))))))

(declare-fun bs!1156625 () Bool)

(assert (= bs!1156625 d!1535808))

(declare-fun m!5781102 () Bool)

(assert (=> bs!1156625 m!5781102))

(assert (=> b!4798140 d!1535808))

(declare-fun b!4798371 () Bool)

(declare-fun e!2996306 () Unit!140435)

(declare-fun lt!1954953 () Unit!140435)

(assert (=> b!4798371 (= e!2996306 lt!1954953)))

(declare-fun lt!1954947 () Unit!140435)

(assert (=> b!4798371 (= lt!1954947 (lemmaContainsKeyImpliesGetValueByKeyDefined!2173 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))) key!5896))))

(assert (=> b!4798371 (isDefined!10302 (getValueByKey!2383 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))) key!5896))))

(declare-fun lt!1954949 () Unit!140435)

(assert (=> b!4798371 (= lt!1954949 lt!1954947)))

(assert (=> b!4798371 (= lt!1954953 (lemmaInListThenGetKeysListContains!1087 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))) key!5896))))

(declare-fun call!335268 () Bool)

(assert (=> b!4798371 call!335268))

(declare-fun b!4798372 () Bool)

(assert (=> b!4798372 false))

(declare-fun lt!1954951 () Unit!140435)

(declare-fun lt!1954952 () Unit!140435)

(assert (=> b!4798372 (= lt!1954951 lt!1954952)))

(assert (=> b!4798372 (containsKey!4011 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))) key!5896)))

(assert (=> b!4798372 (= lt!1954952 (lemmaInGetKeysListThenContainsKey!1092 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))) key!5896))))

(declare-fun e!2996302 () Unit!140435)

(declare-fun Unit!140448 () Unit!140435)

(assert (=> b!4798372 (= e!2996302 Unit!140448)))

(declare-fun b!4798373 () Bool)

(assert (=> b!4798373 (= e!2996306 e!2996302)))

(declare-fun c!817816 () Bool)

(assert (=> b!4798373 (= c!817816 call!335268)))

(declare-fun b!4798374 () Bool)

(declare-fun Unit!140449 () Unit!140435)

(assert (=> b!4798374 (= e!2996302 Unit!140449)))

(declare-fun b!4798375 () Bool)

(declare-fun e!2996301 () Bool)

(declare-fun e!2996304 () Bool)

(assert (=> b!4798375 (= e!2996301 e!2996304)))

(declare-fun res!2040458 () Bool)

(assert (=> b!4798375 (=> (not res!2040458) (not e!2996304))))

(assert (=> b!4798375 (= res!2040458 (isDefined!10302 (getValueByKey!2383 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))) key!5896)))))

(declare-fun d!1535810 () Bool)

(assert (=> d!1535810 e!2996301))

(declare-fun res!2040459 () Bool)

(assert (=> d!1535810 (=> res!2040459 e!2996301)))

(declare-fun e!2996305 () Bool)

(assert (=> d!1535810 (= res!2040459 e!2996305)))

(declare-fun res!2040460 () Bool)

(assert (=> d!1535810 (=> (not res!2040460) (not e!2996305))))

(declare-fun lt!1954950 () Bool)

(assert (=> d!1535810 (= res!2040460 (not lt!1954950))))

(declare-fun lt!1954948 () Bool)

(assert (=> d!1535810 (= lt!1954950 lt!1954948)))

(declare-fun lt!1954954 () Unit!140435)

(assert (=> d!1535810 (= lt!1954954 e!2996306)))

(declare-fun c!817817 () Bool)

(assert (=> d!1535810 (= c!817817 lt!1954948)))

(assert (=> d!1535810 (= lt!1954948 (containsKey!4011 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))) key!5896))))

(assert (=> d!1535810 (= (contains!17944 (extractMap!2481 (toList!6987 lm!2473)) key!5896) lt!1954950)))

(declare-fun b!4798376 () Bool)

(assert (=> b!4798376 (= e!2996304 (contains!17948 (keys!19845 (extractMap!2481 (toList!6987 lm!2473))) key!5896))))

(declare-fun b!4798377 () Bool)

(declare-fun e!2996303 () List!54425)

(assert (=> b!4798377 (= e!2996303 (getKeysList!1092 (toList!6988 (extractMap!2481 (toList!6987 lm!2473)))))))

(declare-fun bm!335263 () Bool)

(assert (=> bm!335263 (= call!335268 (contains!17948 e!2996303 key!5896))))

(declare-fun c!817818 () Bool)

(assert (=> bm!335263 (= c!817818 c!817817)))

(declare-fun b!4798378 () Bool)

(assert (=> b!4798378 (= e!2996303 (keys!19845 (extractMap!2481 (toList!6987 lm!2473))))))

(declare-fun b!4798379 () Bool)

(assert (=> b!4798379 (= e!2996305 (not (contains!17948 (keys!19845 (extractMap!2481 (toList!6987 lm!2473))) key!5896)))))

(assert (= (and d!1535810 c!817817) b!4798371))

(assert (= (and d!1535810 (not c!817817)) b!4798373))

(assert (= (and b!4798373 c!817816) b!4798372))

(assert (= (and b!4798373 (not c!817816)) b!4798374))

(assert (= (or b!4798371 b!4798373) bm!335263))

(assert (= (and bm!335263 c!817818) b!4798377))

(assert (= (and bm!335263 (not c!817818)) b!4798378))

(assert (= (and d!1535810 res!2040460) b!4798379))

(assert (= (and d!1535810 (not res!2040459)) b!4798375))

(assert (= (and b!4798375 res!2040458) b!4798376))

(assert (=> b!4798379 m!5780854))

(declare-fun m!5781104 () Bool)

(assert (=> b!4798379 m!5781104))

(assert (=> b!4798379 m!5781104))

(declare-fun m!5781106 () Bool)

(assert (=> b!4798379 m!5781106))

(declare-fun m!5781108 () Bool)

(assert (=> d!1535810 m!5781108))

(declare-fun m!5781110 () Bool)

(assert (=> b!4798375 m!5781110))

(assert (=> b!4798375 m!5781110))

(declare-fun m!5781112 () Bool)

(assert (=> b!4798375 m!5781112))

(assert (=> b!4798378 m!5780854))

(assert (=> b!4798378 m!5781104))

(assert (=> b!4798376 m!5780854))

(assert (=> b!4798376 m!5781104))

(assert (=> b!4798376 m!5781104))

(assert (=> b!4798376 m!5781106))

(declare-fun m!5781114 () Bool)

(assert (=> bm!335263 m!5781114))

(declare-fun m!5781116 () Bool)

(assert (=> b!4798371 m!5781116))

(assert (=> b!4798371 m!5781110))

(assert (=> b!4798371 m!5781110))

(assert (=> b!4798371 m!5781112))

(declare-fun m!5781118 () Bool)

(assert (=> b!4798371 m!5781118))

(assert (=> b!4798372 m!5781108))

(declare-fun m!5781120 () Bool)

(assert (=> b!4798372 m!5781120))

(declare-fun m!5781122 () Bool)

(assert (=> b!4798377 m!5781122))

(assert (=> b!4798145 d!1535810))

(declare-fun bs!1156626 () Bool)

(declare-fun d!1535812 () Bool)

(assert (= bs!1156626 (and d!1535812 d!1535796)))

(declare-fun lambda!231839 () Int)

(assert (=> bs!1156626 (= lambda!231839 lambda!231835)))

(declare-fun bs!1156627 () Bool)

(assert (= bs!1156627 (and d!1535812 d!1535786)))

(assert (=> bs!1156627 (not (= lambda!231839 lambda!231832))))

(declare-fun bs!1156628 () Bool)

(assert (= bs!1156628 (and d!1535812 d!1535784)))

(assert (=> bs!1156628 (= lambda!231839 lambda!231829)))

(declare-fun bs!1156629 () Bool)

(assert (= bs!1156629 (and d!1535812 start!494850)))

(assert (=> bs!1156629 (= lambda!231839 lambda!231807)))

(declare-fun bs!1156630 () Bool)

(assert (= bs!1156630 (and d!1535812 d!1535798)))

(assert (=> bs!1156630 (= lambda!231839 lambda!231838)))

(declare-fun bs!1156631 () Bool)

(assert (= bs!1156631 (and d!1535812 d!1535738)))

(assert (=> bs!1156631 (= lambda!231839 lambda!231820)))

(declare-fun lt!1954955 () ListMap!6459)

(assert (=> d!1535812 (invariantList!1746 (toList!6988 lt!1954955))))

(declare-fun e!2996307 () ListMap!6459)

(assert (=> d!1535812 (= lt!1954955 e!2996307)))

(declare-fun c!817819 () Bool)

(assert (=> d!1535812 (= c!817819 ((_ is Cons!54299) (toList!6987 lm!2473)))))

(assert (=> d!1535812 (forall!12309 (toList!6987 lm!2473) lambda!231839)))

(assert (=> d!1535812 (= (extractMap!2481 (toList!6987 lm!2473)) lt!1954955)))

(declare-fun b!4798380 () Bool)

(assert (=> b!4798380 (= e!2996307 (addToMapMapFromBucket!1723 (_2!31787 (h!60731 (toList!6987 lm!2473))) (extractMap!2481 (t!361873 (toList!6987 lm!2473)))))))

(declare-fun b!4798381 () Bool)

(assert (=> b!4798381 (= e!2996307 (ListMap!6460 Nil!54298))))

(assert (= (and d!1535812 c!817819) b!4798380))

(assert (= (and d!1535812 (not c!817819)) b!4798381))

(declare-fun m!5781124 () Bool)

(assert (=> d!1535812 m!5781124))

(declare-fun m!5781126 () Bool)

(assert (=> d!1535812 m!5781126))

(declare-fun m!5781128 () Bool)

(assert (=> b!4798380 m!5781128))

(assert (=> b!4798380 m!5781128))

(declare-fun m!5781130 () Bool)

(assert (=> b!4798380 m!5781130))

(assert (=> b!4798145 d!1535812))

(declare-fun d!1535814 () Bool)

(declare-fun res!2040465 () Bool)

(declare-fun e!2996312 () Bool)

(assert (=> d!1535814 (=> res!2040465 e!2996312)))

(assert (=> d!1535814 (= res!2040465 (and ((_ is Cons!54298) (_2!31787 (h!60731 (toList!6987 lm!2473)))) (= (_1!31786 (h!60730 (_2!31787 (h!60731 (toList!6987 lm!2473))))) key!5896)))))

(assert (=> d!1535814 (= (containsKey!4008 (_2!31787 (h!60731 (toList!6987 lm!2473))) key!5896) e!2996312)))

(declare-fun b!4798386 () Bool)

(declare-fun e!2996313 () Bool)

(assert (=> b!4798386 (= e!2996312 e!2996313)))

(declare-fun res!2040466 () Bool)

(assert (=> b!4798386 (=> (not res!2040466) (not e!2996313))))

(assert (=> b!4798386 (= res!2040466 ((_ is Cons!54298) (_2!31787 (h!60731 (toList!6987 lm!2473)))))))

(declare-fun b!4798387 () Bool)

(assert (=> b!4798387 (= e!2996313 (containsKey!4008 (t!361872 (_2!31787 (h!60731 (toList!6987 lm!2473)))) key!5896))))

(assert (= (and d!1535814 (not res!2040465)) b!4798386))

(assert (= (and b!4798386 res!2040466) b!4798387))

(declare-fun m!5781132 () Bool)

(assert (=> b!4798387 m!5781132))

(assert (=> b!4798139 d!1535814))

(declare-fun b!4798392 () Bool)

(declare-fun e!2996316 () Bool)

(declare-fun tp!1358283 () Bool)

(declare-fun tp!1358284 () Bool)

(assert (=> b!4798392 (= e!2996316 (and tp!1358283 tp!1358284))))

(assert (=> b!4798141 (= tp!1358272 e!2996316)))

(assert (= (and b!4798141 ((_ is Cons!54299) (toList!6987 lm!2473))) b!4798392))

(declare-fun b_lambda!187335 () Bool)

(assert (= b_lambda!187333 (or start!494850 b_lambda!187335)))

(declare-fun bs!1156632 () Bool)

(declare-fun d!1535816 () Bool)

(assert (= bs!1156632 (and d!1535816 start!494850)))

(assert (=> bs!1156632 (= (dynLambda!22086 lambda!231807 (h!60731 (toList!6987 lt!1954824))) (noDuplicateKeys!2355 (_2!31787 (h!60731 (toList!6987 lt!1954824)))))))

(declare-fun m!5781134 () Bool)

(assert (=> bs!1156632 m!5781134))

(assert (=> b!4798366 d!1535816))

(declare-fun b_lambda!187337 () Bool)

(assert (= b_lambda!187331 (or start!494850 b_lambda!187337)))

(declare-fun bs!1156633 () Bool)

(declare-fun d!1535818 () Bool)

(assert (= bs!1156633 (and d!1535818 start!494850)))

(assert (=> bs!1156633 (= (dynLambda!22086 lambda!231807 (h!60731 (toList!6987 lm!2473))) (noDuplicateKeys!2355 (_2!31787 (h!60731 (toList!6987 lm!2473)))))))

(declare-fun m!5781136 () Bool)

(assert (=> bs!1156633 m!5781136))

(assert (=> b!4798334 d!1535818))

(check-sat (not d!1535798) (not bs!1156633) (not d!1535810) (not d!1535812) (not b!4798326) (not b!4798356) (not b!4798379) tp_is_empty!33679 (not b_lambda!187337) (not b!4798351) (not b!4798172) (not d!1535802) (not b!4798319) (not b!4798168) (not d!1535786) (not bm!335263) (not bs!1156632) (not b!4798372) (not bm!335262) (not b!4798317) (not b!4798342) (not b!4798380) (not b!4798364) (not b!4798365) (not d!1535738) (not b!4798375) (not b!4798363) (not b!4798368) (not b_lambda!187335) (not b!4798169) (not d!1535732) (not b!4798344) (not d!1535792) (not d!1535784) (not b!4798335) (not b!4798320) (not b!4798367) (not d!1535736) (not b!4798314) (not d!1535790) (not b!4798313) (not b!4798170) (not b!4798318) tp_is_empty!33677 (not b!4798353) (not b!4798370) (not d!1535806) (not b!4798376) (not b!4798371) (not b!4798166) (not d!1535796) (not d!1535808) (not b!4798377) (not b!4798378) (not d!1535758) (not b!4798392) (not b!4798321) (not b!4798387) (not d!1535730))
(check-sat)
(get-model)

(declare-fun d!1535914 () Bool)

(assert (=> d!1535914 (= (isEmpty!29484 (getPair!926 (apply!13027 lm!2473 lt!1954825) key!5896)) (not ((_ is Some!13157) (getPair!926 (apply!13027 lm!2473 lt!1954825) key!5896))))))

(assert (=> d!1535730 d!1535914))

(declare-fun d!1535916 () Bool)

(declare-fun isEmpty!29487 (Option!13161) Bool)

(assert (=> d!1535916 (= (isDefined!10303 (getValueByKey!2382 (toList!6987 lt!1954824) lt!1954825)) (not (isEmpty!29487 (getValueByKey!2382 (toList!6987 lt!1954824) lt!1954825))))))

(declare-fun bs!1156680 () Bool)

(assert (= bs!1156680 d!1535916))

(assert (=> bs!1156680 m!5781098))

(declare-fun m!5781364 () Bool)

(assert (=> bs!1156680 m!5781364))

(assert (=> b!4798370 d!1535916))

(declare-fun d!1535918 () Bool)

(declare-fun c!817858 () Bool)

(assert (=> d!1535918 (= c!817858 (and ((_ is Cons!54299) (toList!6987 lt!1954824)) (= (_1!31787 (h!60731 (toList!6987 lt!1954824))) lt!1954825)))))

(declare-fun e!2996432 () Option!13161)

(assert (=> d!1535918 (= (getValueByKey!2382 (toList!6987 lt!1954824) lt!1954825) e!2996432)))

(declare-fun b!4798569 () Bool)

(assert (=> b!4798569 (= e!2996432 (Some!13160 (_2!31787 (h!60731 (toList!6987 lt!1954824)))))))

(declare-fun b!4798571 () Bool)

(declare-fun e!2996433 () Option!13161)

(assert (=> b!4798571 (= e!2996433 (getValueByKey!2382 (t!361873 (toList!6987 lt!1954824)) lt!1954825))))

(declare-fun b!4798572 () Bool)

(assert (=> b!4798572 (= e!2996433 None!13160)))

(declare-fun b!4798570 () Bool)

(assert (=> b!4798570 (= e!2996432 e!2996433)))

(declare-fun c!817859 () Bool)

(assert (=> b!4798570 (= c!817859 (and ((_ is Cons!54299) (toList!6987 lt!1954824)) (not (= (_1!31787 (h!60731 (toList!6987 lt!1954824))) lt!1954825))))))

(assert (= (and d!1535918 c!817858) b!4798569))

(assert (= (and d!1535918 (not c!817858)) b!4798570))

(assert (= (and b!4798570 c!817859) b!4798571))

(assert (= (and b!4798570 (not c!817859)) b!4798572))

(declare-fun m!5781366 () Bool)

(assert (=> b!4798571 m!5781366))

(assert (=> b!4798370 d!1535918))

(declare-fun d!1535920 () Bool)

(declare-fun lt!1955019 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9735 (List!54425) (InoxSet K!15874))

(assert (=> d!1535920 (= lt!1955019 (select (content!9735 e!2996260) key!5896))))

(declare-fun e!2996438 () Bool)

(assert (=> d!1535920 (= lt!1955019 e!2996438)))

(declare-fun res!2040567 () Bool)

(assert (=> d!1535920 (=> (not res!2040567) (not e!2996438))))

(assert (=> d!1535920 (= res!2040567 ((_ is Cons!54301) e!2996260))))

(assert (=> d!1535920 (= (contains!17948 e!2996260 key!5896) lt!1955019)))

(declare-fun b!4798577 () Bool)

(declare-fun e!2996439 () Bool)

(assert (=> b!4798577 (= e!2996438 e!2996439)))

(declare-fun res!2040568 () Bool)

(assert (=> b!4798577 (=> res!2040568 e!2996439)))

(assert (=> b!4798577 (= res!2040568 (= (h!60733 e!2996260) key!5896))))

(declare-fun b!4798578 () Bool)

(assert (=> b!4798578 (= e!2996439 (contains!17948 (t!361875 e!2996260) key!5896))))

(assert (= (and d!1535920 res!2040567) b!4798577))

(assert (= (and b!4798577 (not res!2040568)) b!4798578))

(declare-fun m!5781368 () Bool)

(assert (=> d!1535920 m!5781368))

(declare-fun m!5781370 () Bool)

(assert (=> d!1535920 m!5781370))

(declare-fun m!5781372 () Bool)

(assert (=> b!4798578 m!5781372))

(assert (=> bm!335262 d!1535920))

(declare-fun d!1535922 () Bool)

(declare-fun isEmpty!29488 (Option!13162) Bool)

(assert (=> d!1535922 (= (isDefined!10302 (getValueByKey!2383 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))) key!5896)) (not (isEmpty!29488 (getValueByKey!2383 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))) key!5896))))))

(declare-fun bs!1156681 () Bool)

(assert (= bs!1156681 d!1535922))

(assert (=> bs!1156681 m!5781110))

(declare-fun m!5781374 () Bool)

(assert (=> bs!1156681 m!5781374))

(assert (=> b!4798375 d!1535922))

(declare-fun b!4798588 () Bool)

(declare-fun e!2996444 () Option!13162)

(declare-fun e!2996445 () Option!13162)

(assert (=> b!4798588 (= e!2996444 e!2996445)))

(declare-fun c!817865 () Bool)

(assert (=> b!4798588 (= c!817865 (and ((_ is Cons!54298) (toList!6988 (extractMap!2481 (toList!6987 lm!2473)))) (not (= (_1!31786 (h!60730 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))))) key!5896))))))

(declare-fun b!4798587 () Bool)

(assert (=> b!4798587 (= e!2996444 (Some!13161 (_2!31786 (h!60730 (toList!6988 (extractMap!2481 (toList!6987 lm!2473)))))))))

(declare-fun b!4798590 () Bool)

(assert (=> b!4798590 (= e!2996445 None!13161)))

(declare-fun d!1535924 () Bool)

(declare-fun c!817864 () Bool)

(assert (=> d!1535924 (= c!817864 (and ((_ is Cons!54298) (toList!6988 (extractMap!2481 (toList!6987 lm!2473)))) (= (_1!31786 (h!60730 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))))) key!5896)))))

(assert (=> d!1535924 (= (getValueByKey!2383 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))) key!5896) e!2996444)))

(declare-fun b!4798589 () Bool)

(assert (=> b!4798589 (= e!2996445 (getValueByKey!2383 (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lm!2473)))) key!5896))))

(assert (= (and d!1535924 c!817864) b!4798587))

(assert (= (and d!1535924 (not c!817864)) b!4798588))

(assert (= (and b!4798588 c!817865) b!4798589))

(assert (= (and b!4798588 (not c!817865)) b!4798590))

(declare-fun m!5781376 () Bool)

(assert (=> b!4798589 m!5781376))

(assert (=> b!4798375 d!1535924))

(declare-fun d!1535926 () Bool)

(declare-fun lt!1955020 () Bool)

(assert (=> d!1535926 (= lt!1955020 (select (content!9735 (keys!19845 (extractMap!2481 (toList!6987 lt!1954824)))) key!5896))))

(declare-fun e!2996446 () Bool)

(assert (=> d!1535926 (= lt!1955020 e!2996446)))

(declare-fun res!2040569 () Bool)

(assert (=> d!1535926 (=> (not res!2040569) (not e!2996446))))

(assert (=> d!1535926 (= res!2040569 ((_ is Cons!54301) (keys!19845 (extractMap!2481 (toList!6987 lt!1954824)))))))

(assert (=> d!1535926 (= (contains!17948 (keys!19845 (extractMap!2481 (toList!6987 lt!1954824))) key!5896) lt!1955020)))

(declare-fun b!4798591 () Bool)

(declare-fun e!2996447 () Bool)

(assert (=> b!4798591 (= e!2996446 e!2996447)))

(declare-fun res!2040570 () Bool)

(assert (=> b!4798591 (=> res!2040570 e!2996447)))

(assert (=> b!4798591 (= res!2040570 (= (h!60733 (keys!19845 (extractMap!2481 (toList!6987 lt!1954824)))) key!5896))))

(declare-fun b!4798592 () Bool)

(assert (=> b!4798592 (= e!2996447 (contains!17948 (t!361875 (keys!19845 (extractMap!2481 (toList!6987 lt!1954824)))) key!5896))))

(assert (= (and d!1535926 res!2040569) b!4798591))

(assert (= (and b!4798591 (not res!2040570)) b!4798592))

(assert (=> d!1535926 m!5781022))

(declare-fun m!5781378 () Bool)

(assert (=> d!1535926 m!5781378))

(declare-fun m!5781380 () Bool)

(assert (=> d!1535926 m!5781380))

(declare-fun m!5781382 () Bool)

(assert (=> b!4798592 m!5781382))

(assert (=> b!4798321 d!1535926))

(declare-fun b!4798604 () Bool)

(assert (=> b!4798604 true))

(declare-fun d!1535928 () Bool)

(declare-fun e!2996452 () Bool)

(assert (=> d!1535928 e!2996452))

(declare-fun res!2040577 () Bool)

(assert (=> d!1535928 (=> (not res!2040577) (not e!2996452))))

(declare-fun lt!1955043 () List!54425)

(declare-fun noDuplicate!929 (List!54425) Bool)

(assert (=> d!1535928 (= res!2040577 (noDuplicate!929 lt!1955043))))

(assert (=> d!1535928 (= lt!1955043 (getKeysList!1092 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824)))))))

(assert (=> d!1535928 (= (keys!19845 (extractMap!2481 (toList!6987 lt!1954824))) lt!1955043)))

(declare-fun b!4798603 () Bool)

(declare-fun res!2040579 () Bool)

(assert (=> b!4798603 (=> (not res!2040579) (not e!2996452))))

(declare-fun length!714 (List!54425) Int)

(declare-fun length!715 (List!54422) Int)

(assert (=> b!4798603 (= res!2040579 (= (length!714 lt!1955043) (length!715 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))))))))

(declare-fun res!2040578 () Bool)

(assert (=> b!4798604 (=> (not res!2040578) (not e!2996452))))

(declare-fun lambda!231878 () Int)

(declare-fun forall!12311 (List!54425 Int) Bool)

(assert (=> b!4798604 (= res!2040578 (forall!12311 lt!1955043 lambda!231878))))

(declare-fun b!4798605 () Bool)

(declare-fun lambda!231879 () Int)

(declare-fun map!12267 (List!54422 Int) List!54425)

(assert (=> b!4798605 (= e!2996452 (= (content!9735 lt!1955043) (content!9735 (map!12267 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))) lambda!231879))))))

(assert (= (and d!1535928 res!2040577) b!4798603))

(assert (= (and b!4798603 res!2040579) b!4798604))

(assert (= (and b!4798604 res!2040578) b!4798605))

(declare-fun m!5781384 () Bool)

(assert (=> d!1535928 m!5781384))

(assert (=> d!1535928 m!5781040))

(declare-fun m!5781386 () Bool)

(assert (=> b!4798603 m!5781386))

(declare-fun m!5781388 () Bool)

(assert (=> b!4798603 m!5781388))

(declare-fun m!5781390 () Bool)

(assert (=> b!4798604 m!5781390))

(declare-fun m!5781392 () Bool)

(assert (=> b!4798605 m!5781392))

(declare-fun m!5781394 () Bool)

(assert (=> b!4798605 m!5781394))

(assert (=> b!4798605 m!5781394))

(declare-fun m!5781396 () Bool)

(assert (=> b!4798605 m!5781396))

(assert (=> b!4798321 d!1535928))

(declare-fun d!1535930 () Bool)

(declare-fun res!2040580 () Bool)

(declare-fun e!2996453 () Bool)

(assert (=> d!1535930 (=> res!2040580 e!2996453)))

(assert (=> d!1535930 (= res!2040580 ((_ is Nil!54299) (toList!6987 lm!2473)))))

(assert (=> d!1535930 (= (forall!12309 (toList!6987 lm!2473) lambda!231832) e!2996453)))

(declare-fun b!4798608 () Bool)

(declare-fun e!2996454 () Bool)

(assert (=> b!4798608 (= e!2996453 e!2996454)))

(declare-fun res!2040581 () Bool)

(assert (=> b!4798608 (=> (not res!2040581) (not e!2996454))))

(assert (=> b!4798608 (= res!2040581 (dynLambda!22086 lambda!231832 (h!60731 (toList!6987 lm!2473))))))

(declare-fun b!4798609 () Bool)

(assert (=> b!4798609 (= e!2996454 (forall!12309 (t!361873 (toList!6987 lm!2473)) lambda!231832))))

(assert (= (and d!1535930 (not res!2040580)) b!4798608))

(assert (= (and b!4798608 res!2040581) b!4798609))

(declare-fun b_lambda!187349 () Bool)

(assert (=> (not b_lambda!187349) (not b!4798608)))

(declare-fun m!5781398 () Bool)

(assert (=> b!4798608 m!5781398))

(declare-fun m!5781400 () Bool)

(assert (=> b!4798609 m!5781400))

(assert (=> d!1535786 d!1535930))

(assert (=> b!4798365 d!1535814))

(declare-fun d!1535932 () Bool)

(declare-fun res!2040582 () Bool)

(declare-fun e!2996455 () Bool)

(assert (=> d!1535932 (=> res!2040582 e!2996455)))

(assert (=> d!1535932 (= res!2040582 ((_ is Nil!54299) (t!361873 (toList!6987 lt!1954824))))))

(assert (=> d!1535932 (= (forall!12309 (t!361873 (toList!6987 lt!1954824)) lambda!231807) e!2996455)))

(declare-fun b!4798610 () Bool)

(declare-fun e!2996456 () Bool)

(assert (=> b!4798610 (= e!2996455 e!2996456)))

(declare-fun res!2040583 () Bool)

(assert (=> b!4798610 (=> (not res!2040583) (not e!2996456))))

(assert (=> b!4798610 (= res!2040583 (dynLambda!22086 lambda!231807 (h!60731 (t!361873 (toList!6987 lt!1954824)))))))

(declare-fun b!4798611 () Bool)

(assert (=> b!4798611 (= e!2996456 (forall!12309 (t!361873 (t!361873 (toList!6987 lt!1954824))) lambda!231807))))

(assert (= (and d!1535932 (not res!2040582)) b!4798610))

(assert (= (and b!4798610 res!2040583) b!4798611))

(declare-fun b_lambda!187351 () Bool)

(assert (=> (not b_lambda!187351) (not b!4798610)))

(declare-fun m!5781402 () Bool)

(assert (=> b!4798610 m!5781402))

(declare-fun m!5781404 () Bool)

(assert (=> b!4798611 m!5781404))

(assert (=> b!4798367 d!1535932))

(declare-fun bs!1156694 () Bool)

(declare-fun b!4798658 () Bool)

(assert (= bs!1156694 (and b!4798658 b!4798604)))

(declare-fun lambda!231911 () Int)

(assert (=> bs!1156694 (= (= (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lm!2473)))) (toList!6988 (extractMap!2481 (toList!6987 lt!1954824)))) (= lambda!231911 lambda!231878))))

(assert (=> b!4798658 true))

(declare-fun bs!1156696 () Bool)

(declare-fun b!4798656 () Bool)

(assert (= bs!1156696 (and b!4798656 b!4798604)))

(declare-fun lambda!231912 () Int)

(assert (=> bs!1156696 (= (= (Cons!54298 (h!60730 (toList!6988 (extractMap!2481 (toList!6987 lm!2473)))) (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))))) (toList!6988 (extractMap!2481 (toList!6987 lt!1954824)))) (= lambda!231912 lambda!231878))))

(declare-fun bs!1156697 () Bool)

(assert (= bs!1156697 (and b!4798656 b!4798658)))

(assert (=> bs!1156697 (= (= (Cons!54298 (h!60730 (toList!6988 (extractMap!2481 (toList!6987 lm!2473)))) (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))))) (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))))) (= lambda!231912 lambda!231911))))

(assert (=> b!4798656 true))

(declare-fun bs!1156699 () Bool)

(declare-fun b!4798654 () Bool)

(assert (= bs!1156699 (and b!4798654 b!4798604)))

(declare-fun lambda!231913 () Int)

(assert (=> bs!1156699 (= (= (toList!6988 (extractMap!2481 (toList!6987 lm!2473))) (toList!6988 (extractMap!2481 (toList!6987 lt!1954824)))) (= lambda!231913 lambda!231878))))

(declare-fun bs!1156700 () Bool)

(assert (= bs!1156700 (and b!4798654 b!4798658)))

(assert (=> bs!1156700 (= (= (toList!6988 (extractMap!2481 (toList!6987 lm!2473))) (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))))) (= lambda!231913 lambda!231911))))

(declare-fun bs!1156701 () Bool)

(assert (= bs!1156701 (and b!4798654 b!4798656)))

(assert (=> bs!1156701 (= (= (toList!6988 (extractMap!2481 (toList!6987 lm!2473))) (Cons!54298 (h!60730 (toList!6988 (extractMap!2481 (toList!6987 lm!2473)))) (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lm!2473)))))) (= lambda!231913 lambda!231912))))

(assert (=> b!4798654 true))

(declare-fun bs!1156702 () Bool)

(declare-fun b!4798655 () Bool)

(assert (= bs!1156702 (and b!4798655 b!4798605)))

(declare-fun lambda!231914 () Int)

(assert (=> bs!1156702 (= lambda!231914 lambda!231879)))

(declare-fun b!4798651 () Bool)

(declare-fun e!2996480 () List!54425)

(assert (=> b!4798651 (= e!2996480 Nil!54301)))

(declare-fun b!4798652 () Bool)

(assert (=> b!4798652 false))

(declare-fun e!2996481 () Unit!140435)

(declare-fun Unit!140459 () Unit!140435)

(assert (=> b!4798652 (= e!2996481 Unit!140459)))

(declare-fun b!4798653 () Bool)

(declare-fun Unit!140460 () Unit!140435)

(assert (=> b!4798653 (= e!2996481 Unit!140460)))

(declare-fun res!2040606 () Bool)

(declare-fun e!2996482 () Bool)

(assert (=> b!4798654 (=> (not res!2040606) (not e!2996482))))

(declare-fun lt!1955107 () List!54425)

(assert (=> b!4798654 (= res!2040606 (forall!12311 lt!1955107 lambda!231913))))

(assert (=> b!4798656 (= e!2996480 (Cons!54301 (_1!31786 (h!60730 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))))) (getKeysList!1092 (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lm!2473)))))))))

(declare-fun c!817876 () Bool)

(assert (=> b!4798656 (= c!817876 (containsKey!4011 (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lm!2473)))) (_1!31786 (h!60730 (toList!6988 (extractMap!2481 (toList!6987 lm!2473)))))))))

(declare-fun lt!1955108 () Unit!140435)

(assert (=> b!4798656 (= lt!1955108 e!2996481)))

(declare-fun c!817877 () Bool)

(assert (=> b!4798656 (= c!817877 (contains!17948 (getKeysList!1092 (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))))) (_1!31786 (h!60730 (toList!6988 (extractMap!2481 (toList!6987 lm!2473)))))))))

(declare-fun lt!1955106 () Unit!140435)

(declare-fun e!2996479 () Unit!140435)

(assert (=> b!4798656 (= lt!1955106 e!2996479)))

(declare-fun lt!1955105 () List!54425)

(assert (=> b!4798656 (= lt!1955105 (getKeysList!1092 (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))))))))

(declare-fun lt!1955102 () Unit!140435)

(declare-fun lemmaForallContainsAddHeadPreserves!344 (List!54422 List!54425 tuple2!56984) Unit!140435)

(assert (=> b!4798656 (= lt!1955102 (lemmaForallContainsAddHeadPreserves!344 (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lm!2473)))) lt!1955105 (h!60730 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))))))))

(assert (=> b!4798656 (forall!12311 lt!1955105 lambda!231912)))

(declare-fun lt!1955104 () Unit!140435)

(assert (=> b!4798656 (= lt!1955104 lt!1955102)))

(declare-fun d!1535934 () Bool)

(assert (=> d!1535934 e!2996482))

(declare-fun res!2040605 () Bool)

(assert (=> d!1535934 (=> (not res!2040605) (not e!2996482))))

(assert (=> d!1535934 (= res!2040605 (noDuplicate!929 lt!1955107))))

(assert (=> d!1535934 (= lt!1955107 e!2996480)))

(declare-fun c!817878 () Bool)

(assert (=> d!1535934 (= c!817878 ((_ is Cons!54298) (toList!6988 (extractMap!2481 (toList!6987 lm!2473)))))))

(assert (=> d!1535934 (invariantList!1746 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))))))

(assert (=> d!1535934 (= (getKeysList!1092 (toList!6988 (extractMap!2481 (toList!6987 lm!2473)))) lt!1955107)))

(assert (=> b!4798655 (= e!2996482 (= (content!9735 lt!1955107) (content!9735 (map!12267 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))) lambda!231914))))))

(declare-fun b!4798657 () Bool)

(declare-fun res!2040607 () Bool)

(assert (=> b!4798657 (=> (not res!2040607) (not e!2996482))))

(assert (=> b!4798657 (= res!2040607 (= (length!714 lt!1955107) (length!715 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))))))))

(assert (=> b!4798658 false))

(declare-fun lt!1955103 () Unit!140435)

(declare-fun forallContained!4201 (List!54425 Int K!15874) Unit!140435)

(assert (=> b!4798658 (= lt!1955103 (forallContained!4201 (getKeysList!1092 (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))))) lambda!231911 (_1!31786 (h!60730 (toList!6988 (extractMap!2481 (toList!6987 lm!2473)))))))))

(declare-fun Unit!140461 () Unit!140435)

(assert (=> b!4798658 (= e!2996479 Unit!140461)))

(declare-fun b!4798659 () Bool)

(declare-fun Unit!140462 () Unit!140435)

(assert (=> b!4798659 (= e!2996479 Unit!140462)))

(assert (= (and d!1535934 c!817878) b!4798656))

(assert (= (and d!1535934 (not c!817878)) b!4798651))

(assert (= (and b!4798656 c!817876) b!4798652))

(assert (= (and b!4798656 (not c!817876)) b!4798653))

(assert (= (and b!4798656 c!817877) b!4798658))

(assert (= (and b!4798656 (not c!817877)) b!4798659))

(assert (= (and d!1535934 res!2040605) b!4798657))

(assert (= (and b!4798657 res!2040607) b!4798654))

(assert (= (and b!4798654 res!2040606) b!4798655))

(declare-fun m!5781474 () Bool)

(assert (=> b!4798655 m!5781474))

(declare-fun m!5781476 () Bool)

(assert (=> b!4798655 m!5781476))

(assert (=> b!4798655 m!5781476))

(declare-fun m!5781478 () Bool)

(assert (=> b!4798655 m!5781478))

(declare-fun m!5781480 () Bool)

(assert (=> b!4798657 m!5781480))

(declare-fun m!5781482 () Bool)

(assert (=> b!4798657 m!5781482))

(declare-fun m!5781484 () Bool)

(assert (=> b!4798658 m!5781484))

(assert (=> b!4798658 m!5781484))

(declare-fun m!5781486 () Bool)

(assert (=> b!4798658 m!5781486))

(declare-fun m!5781488 () Bool)

(assert (=> b!4798654 m!5781488))

(declare-fun m!5781490 () Bool)

(assert (=> d!1535934 m!5781490))

(declare-fun m!5781492 () Bool)

(assert (=> d!1535934 m!5781492))

(assert (=> b!4798656 m!5781484))

(declare-fun m!5781494 () Bool)

(assert (=> b!4798656 m!5781494))

(assert (=> b!4798656 m!5781484))

(declare-fun m!5781496 () Bool)

(assert (=> b!4798656 m!5781496))

(declare-fun m!5781498 () Bool)

(assert (=> b!4798656 m!5781498))

(declare-fun m!5781500 () Bool)

(assert (=> b!4798656 m!5781500))

(assert (=> b!4798377 d!1535934))

(declare-fun bs!1156711 () Bool)

(declare-fun b!4798672 () Bool)

(assert (= bs!1156711 (and b!4798672 b!4798604)))

(declare-fun lambda!231917 () Int)

(assert (=> bs!1156711 (= (= (toList!6988 (extractMap!2481 (toList!6987 lm!2473))) (toList!6988 (extractMap!2481 (toList!6987 lt!1954824)))) (= lambda!231917 lambda!231878))))

(declare-fun bs!1156712 () Bool)

(assert (= bs!1156712 (and b!4798672 b!4798658)))

(assert (=> bs!1156712 (= (= (toList!6988 (extractMap!2481 (toList!6987 lm!2473))) (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))))) (= lambda!231917 lambda!231911))))

(declare-fun bs!1156713 () Bool)

(assert (= bs!1156713 (and b!4798672 b!4798656)))

(assert (=> bs!1156713 (= (= (toList!6988 (extractMap!2481 (toList!6987 lm!2473))) (Cons!54298 (h!60730 (toList!6988 (extractMap!2481 (toList!6987 lm!2473)))) (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lm!2473)))))) (= lambda!231917 lambda!231912))))

(declare-fun bs!1156714 () Bool)

(assert (= bs!1156714 (and b!4798672 b!4798654)))

(assert (=> bs!1156714 (= lambda!231917 lambda!231913)))

(assert (=> b!4798672 true))

(declare-fun bs!1156715 () Bool)

(declare-fun b!4798673 () Bool)

(assert (= bs!1156715 (and b!4798673 b!4798605)))

(declare-fun lambda!231919 () Int)

(assert (=> bs!1156715 (= lambda!231919 lambda!231879)))

(declare-fun bs!1156716 () Bool)

(assert (= bs!1156716 (and b!4798673 b!4798655)))

(assert (=> bs!1156716 (= lambda!231919 lambda!231914)))

(declare-fun d!1535958 () Bool)

(declare-fun e!2996488 () Bool)

(assert (=> d!1535958 e!2996488))

(declare-fun res!2040611 () Bool)

(assert (=> d!1535958 (=> (not res!2040611) (not e!2996488))))

(declare-fun lt!1955132 () List!54425)

(assert (=> d!1535958 (= res!2040611 (noDuplicate!929 lt!1955132))))

(assert (=> d!1535958 (= lt!1955132 (getKeysList!1092 (toList!6988 (extractMap!2481 (toList!6987 lm!2473)))))))

(assert (=> d!1535958 (= (keys!19845 (extractMap!2481 (toList!6987 lm!2473))) lt!1955132)))

(declare-fun b!4798671 () Bool)

(declare-fun res!2040613 () Bool)

(assert (=> b!4798671 (=> (not res!2040613) (not e!2996488))))

(assert (=> b!4798671 (= res!2040613 (= (length!714 lt!1955132) (length!715 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))))))))

(declare-fun res!2040612 () Bool)

(assert (=> b!4798672 (=> (not res!2040612) (not e!2996488))))

(assert (=> b!4798672 (= res!2040612 (forall!12311 lt!1955132 lambda!231917))))

(assert (=> b!4798673 (= e!2996488 (= (content!9735 lt!1955132) (content!9735 (map!12267 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))) lambda!231919))))))

(assert (= (and d!1535958 res!2040611) b!4798671))

(assert (= (and b!4798671 res!2040613) b!4798672))

(assert (= (and b!4798672 res!2040612) b!4798673))

(declare-fun m!5781502 () Bool)

(assert (=> d!1535958 m!5781502))

(assert (=> d!1535958 m!5781122))

(declare-fun m!5781504 () Bool)

(assert (=> b!4798671 m!5781504))

(assert (=> b!4798671 m!5781482))

(declare-fun m!5781506 () Bool)

(assert (=> b!4798672 m!5781506))

(declare-fun m!5781508 () Bool)

(assert (=> b!4798673 m!5781508))

(declare-fun m!5781510 () Bool)

(assert (=> b!4798673 m!5781510))

(assert (=> b!4798673 m!5781510))

(declare-fun m!5781512 () Bool)

(assert (=> b!4798673 m!5781512))

(assert (=> b!4798378 d!1535958))

(declare-fun d!1535960 () Bool)

(declare-fun res!2040618 () Bool)

(declare-fun e!2996493 () Bool)

(assert (=> d!1535960 (=> res!2040618 e!2996493)))

(assert (=> d!1535960 (= res!2040618 (or ((_ is Nil!54299) (toList!6987 lm!2473)) ((_ is Nil!54299) (t!361873 (toList!6987 lm!2473)))))))

(assert (=> d!1535960 (= (isStrictlySorted!893 (toList!6987 lm!2473)) e!2996493)))

(declare-fun b!4798678 () Bool)

(declare-fun e!2996494 () Bool)

(assert (=> b!4798678 (= e!2996493 e!2996494)))

(declare-fun res!2040619 () Bool)

(assert (=> b!4798678 (=> (not res!2040619) (not e!2996494))))

(assert (=> b!4798678 (= res!2040619 (bvslt (_1!31787 (h!60731 (toList!6987 lm!2473))) (_1!31787 (h!60731 (t!361873 (toList!6987 lm!2473))))))))

(declare-fun b!4798679 () Bool)

(assert (=> b!4798679 (= e!2996494 (isStrictlySorted!893 (t!361873 (toList!6987 lm!2473))))))

(assert (= (and d!1535960 (not res!2040618)) b!4798678))

(assert (= (and b!4798678 res!2040619) b!4798679))

(declare-fun m!5781526 () Bool)

(assert (=> b!4798679 m!5781526))

(assert (=> d!1535790 d!1535960))

(declare-fun lt!1955136 () Bool)

(declare-fun d!1535962 () Bool)

(declare-fun content!9736 (List!54422) (InoxSet tuple2!56984))

(assert (=> d!1535962 (= lt!1955136 (select (content!9736 (apply!13027 lm!2473 lt!1954825)) (get!18531 lt!1954833)))))

(declare-fun e!2996502 () Bool)

(assert (=> d!1535962 (= lt!1955136 e!2996502)))

(declare-fun res!2040627 () Bool)

(assert (=> d!1535962 (=> (not res!2040627) (not e!2996502))))

(assert (=> d!1535962 (= res!2040627 ((_ is Cons!54298) (apply!13027 lm!2473 lt!1954825)))))

(assert (=> d!1535962 (= (contains!17947 (apply!13027 lm!2473 lt!1954825) (get!18531 lt!1954833)) lt!1955136)))

(declare-fun b!4798688 () Bool)

(declare-fun e!2996503 () Bool)

(assert (=> b!4798688 (= e!2996502 e!2996503)))

(declare-fun res!2040626 () Bool)

(assert (=> b!4798688 (=> res!2040626 e!2996503)))

(assert (=> b!4798688 (= res!2040626 (= (h!60730 (apply!13027 lm!2473 lt!1954825)) (get!18531 lt!1954833)))))

(declare-fun b!4798689 () Bool)

(assert (=> b!4798689 (= e!2996503 (contains!17947 (t!361872 (apply!13027 lm!2473 lt!1954825)) (get!18531 lt!1954833)))))

(assert (= (and d!1535962 res!2040627) b!4798688))

(assert (= (and b!4798688 (not res!2040626)) b!4798689))

(assert (=> d!1535962 m!5780828))

(declare-fun m!5781560 () Bool)

(assert (=> d!1535962 m!5781560))

(assert (=> d!1535962 m!5780864))

(declare-fun m!5781562 () Bool)

(assert (=> d!1535962 m!5781562))

(assert (=> b!4798689 m!5780864))

(declare-fun m!5781564 () Bool)

(assert (=> b!4798689 m!5781564))

(assert (=> b!4798169 d!1535962))

(declare-fun d!1535970 () Bool)

(assert (=> d!1535970 (= (get!18531 lt!1954833) (v!48470 lt!1954833))))

(assert (=> b!4798169 d!1535970))

(declare-fun b!4798723 () Bool)

(assert (=> b!4798723 true))

(declare-fun bs!1156739 () Bool)

(declare-fun b!4798720 () Bool)

(assert (= bs!1156739 (and b!4798720 b!4798723)))

(declare-fun lambda!231951 () Int)

(declare-fun lambda!231950 () Int)

(assert (=> bs!1156739 (= lambda!231951 lambda!231950)))

(assert (=> b!4798720 true))

(declare-fun lt!1955191 () ListMap!6459)

(declare-fun lambda!231952 () Int)

(assert (=> bs!1156739 (= (= lt!1955191 (extractMap!2481 (t!361873 (toList!6987 lt!1954824)))) (= lambda!231952 lambda!231950))))

(assert (=> b!4798720 (= (= lt!1955191 (extractMap!2481 (t!361873 (toList!6987 lt!1954824)))) (= lambda!231952 lambda!231951))))

(assert (=> b!4798720 true))

(declare-fun bs!1156740 () Bool)

(declare-fun d!1535972 () Bool)

(assert (= bs!1156740 (and d!1535972 b!4798723)))

(declare-fun lt!1955190 () ListMap!6459)

(declare-fun lambda!231953 () Int)

(assert (=> bs!1156740 (= (= lt!1955190 (extractMap!2481 (t!361873 (toList!6987 lt!1954824)))) (= lambda!231953 lambda!231950))))

(declare-fun bs!1156741 () Bool)

(assert (= bs!1156741 (and d!1535972 b!4798720)))

(assert (=> bs!1156741 (= (= lt!1955190 (extractMap!2481 (t!361873 (toList!6987 lt!1954824)))) (= lambda!231953 lambda!231951))))

(assert (=> bs!1156741 (= (= lt!1955190 lt!1955191) (= lambda!231953 lambda!231952))))

(assert (=> d!1535972 true))

(declare-fun e!2996528 () ListMap!6459)

(assert (=> b!4798720 (= e!2996528 lt!1955191)))

(declare-fun lt!1955192 () ListMap!6459)

(declare-fun +!2499 (ListMap!6459 tuple2!56984) ListMap!6459)

(assert (=> b!4798720 (= lt!1955192 (+!2499 (extractMap!2481 (t!361873 (toList!6987 lt!1954824))) (h!60730 (_2!31787 (h!60731 (toList!6987 lt!1954824))))))))

(assert (=> b!4798720 (= lt!1955191 (addToMapMapFromBucket!1723 (t!361872 (_2!31787 (h!60731 (toList!6987 lt!1954824)))) (+!2499 (extractMap!2481 (t!361873 (toList!6987 lt!1954824))) (h!60730 (_2!31787 (h!60731 (toList!6987 lt!1954824)))))))))

(declare-fun lt!1955195 () Unit!140435)

(declare-fun call!335287 () Unit!140435)

(assert (=> b!4798720 (= lt!1955195 call!335287)))

(declare-fun forall!12313 (List!54422 Int) Bool)

(assert (=> b!4798720 (forall!12313 (toList!6988 (extractMap!2481 (t!361873 (toList!6987 lt!1954824)))) lambda!231951)))

(declare-fun lt!1955196 () Unit!140435)

(assert (=> b!4798720 (= lt!1955196 lt!1955195)))

(declare-fun call!335289 () Bool)

(assert (=> b!4798720 call!335289))

(declare-fun lt!1955182 () Unit!140435)

(declare-fun Unit!140472 () Unit!140435)

(assert (=> b!4798720 (= lt!1955182 Unit!140472)))

(declare-fun call!335288 () Bool)

(assert (=> b!4798720 call!335288))

(declare-fun lt!1955186 () Unit!140435)

(declare-fun Unit!140474 () Unit!140435)

(assert (=> b!4798720 (= lt!1955186 Unit!140474)))

(declare-fun lt!1955188 () Unit!140435)

(declare-fun Unit!140475 () Unit!140435)

(assert (=> b!4798720 (= lt!1955188 Unit!140475)))

(declare-fun lt!1955197 () Unit!140435)

(declare-fun forallContained!4203 (List!54422 Int tuple2!56984) Unit!140435)

(assert (=> b!4798720 (= lt!1955197 (forallContained!4203 (toList!6988 lt!1955192) lambda!231952 (h!60730 (_2!31787 (h!60731 (toList!6987 lt!1954824))))))))

(assert (=> b!4798720 (contains!17944 lt!1955192 (_1!31786 (h!60730 (_2!31787 (h!60731 (toList!6987 lt!1954824))))))))

(declare-fun lt!1955193 () Unit!140435)

(declare-fun Unit!140476 () Unit!140435)

(assert (=> b!4798720 (= lt!1955193 Unit!140476)))

(assert (=> b!4798720 (contains!17944 lt!1955191 (_1!31786 (h!60730 (_2!31787 (h!60731 (toList!6987 lt!1954824))))))))

(declare-fun lt!1955180 () Unit!140435)

(declare-fun Unit!140477 () Unit!140435)

(assert (=> b!4798720 (= lt!1955180 Unit!140477)))

(assert (=> b!4798720 (forall!12313 (_2!31787 (h!60731 (toList!6987 lt!1954824))) lambda!231952)))

(declare-fun lt!1955198 () Unit!140435)

(declare-fun Unit!140478 () Unit!140435)

(assert (=> b!4798720 (= lt!1955198 Unit!140478)))

(assert (=> b!4798720 (forall!12313 (toList!6988 lt!1955192) lambda!231952)))

(declare-fun lt!1955200 () Unit!140435)

(declare-fun Unit!140479 () Unit!140435)

(assert (=> b!4798720 (= lt!1955200 Unit!140479)))

(declare-fun lt!1955185 () Unit!140435)

(declare-fun Unit!140480 () Unit!140435)

(assert (=> b!4798720 (= lt!1955185 Unit!140480)))

(declare-fun lt!1955189 () Unit!140435)

(declare-fun addForallContainsKeyThenBeforeAdding!954 (ListMap!6459 ListMap!6459 K!15874 V!16120) Unit!140435)

(assert (=> b!4798720 (= lt!1955189 (addForallContainsKeyThenBeforeAdding!954 (extractMap!2481 (t!361873 (toList!6987 lt!1954824))) lt!1955191 (_1!31786 (h!60730 (_2!31787 (h!60731 (toList!6987 lt!1954824))))) (_2!31786 (h!60730 (_2!31787 (h!60731 (toList!6987 lt!1954824)))))))))

(assert (=> b!4798720 (forall!12313 (toList!6988 (extractMap!2481 (t!361873 (toList!6987 lt!1954824)))) lambda!231952)))

(declare-fun lt!1955194 () Unit!140435)

(assert (=> b!4798720 (= lt!1955194 lt!1955189)))

(assert (=> b!4798720 (forall!12313 (toList!6988 (extractMap!2481 (t!361873 (toList!6987 lt!1954824)))) lambda!231952)))

(declare-fun lt!1955183 () Unit!140435)

(declare-fun Unit!140482 () Unit!140435)

(assert (=> b!4798720 (= lt!1955183 Unit!140482)))

(declare-fun res!2040650 () Bool)

(assert (=> b!4798720 (= res!2040650 (forall!12313 (_2!31787 (h!60731 (toList!6987 lt!1954824))) lambda!231952))))

(declare-fun e!2996530 () Bool)

(assert (=> b!4798720 (=> (not res!2040650) (not e!2996530))))

(assert (=> b!4798720 e!2996530))

(declare-fun lt!1955181 () Unit!140435)

(declare-fun Unit!140483 () Unit!140435)

(assert (=> b!4798720 (= lt!1955181 Unit!140483)))

(declare-fun bm!335283 () Bool)

(declare-fun c!817885 () Bool)

(assert (=> bm!335283 (= call!335289 (forall!12313 (ite c!817885 (toList!6988 (extractMap!2481 (t!361873 (toList!6987 lt!1954824)))) (toList!6988 lt!1955192)) (ite c!817885 lambda!231950 lambda!231952)))))

(declare-fun b!4798721 () Bool)

(declare-fun e!2996529 () Bool)

(assert (=> b!4798721 (= e!2996529 (invariantList!1746 (toList!6988 lt!1955190)))))

(declare-fun bm!335284 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!955 (ListMap!6459) Unit!140435)

(assert (=> bm!335284 (= call!335287 (lemmaContainsAllItsOwnKeys!955 (extractMap!2481 (t!361873 (toList!6987 lt!1954824)))))))

(declare-fun b!4798722 () Bool)

(declare-fun res!2040649 () Bool)

(assert (=> b!4798722 (=> (not res!2040649) (not e!2996529))))

(assert (=> b!4798722 (= res!2040649 (forall!12313 (toList!6988 (extractMap!2481 (t!361873 (toList!6987 lt!1954824)))) lambda!231953))))

(assert (=> d!1535972 e!2996529))

(declare-fun res!2040648 () Bool)

(assert (=> d!1535972 (=> (not res!2040648) (not e!2996529))))

(assert (=> d!1535972 (= res!2040648 (forall!12313 (_2!31787 (h!60731 (toList!6987 lt!1954824))) lambda!231953))))

(assert (=> d!1535972 (= lt!1955190 e!2996528)))

(assert (=> d!1535972 (= c!817885 ((_ is Nil!54298) (_2!31787 (h!60731 (toList!6987 lt!1954824)))))))

(assert (=> d!1535972 (noDuplicateKeys!2355 (_2!31787 (h!60731 (toList!6987 lt!1954824))))))

(assert (=> d!1535972 (= (addToMapMapFromBucket!1723 (_2!31787 (h!60731 (toList!6987 lt!1954824))) (extractMap!2481 (t!361873 (toList!6987 lt!1954824)))) lt!1955190)))

(declare-fun bm!335282 () Bool)

(assert (=> bm!335282 (= call!335288 (forall!12313 (ite c!817885 (toList!6988 (extractMap!2481 (t!361873 (toList!6987 lt!1954824)))) (t!361872 (_2!31787 (h!60731 (toList!6987 lt!1954824))))) (ite c!817885 lambda!231950 lambda!231952)))))

(assert (=> b!4798723 (= e!2996528 (extractMap!2481 (t!361873 (toList!6987 lt!1954824))))))

(declare-fun lt!1955184 () Unit!140435)

(assert (=> b!4798723 (= lt!1955184 call!335287)))

(assert (=> b!4798723 call!335289))

(declare-fun lt!1955187 () Unit!140435)

(assert (=> b!4798723 (= lt!1955187 lt!1955184)))

(assert (=> b!4798723 call!335288))

(declare-fun lt!1955199 () Unit!140435)

(declare-fun Unit!140484 () Unit!140435)

(assert (=> b!4798723 (= lt!1955199 Unit!140484)))

(declare-fun b!4798724 () Bool)

(assert (=> b!4798724 (= e!2996530 (forall!12313 (toList!6988 (extractMap!2481 (t!361873 (toList!6987 lt!1954824)))) lambda!231952))))

(assert (= (and d!1535972 c!817885) b!4798723))

(assert (= (and d!1535972 (not c!817885)) b!4798720))

(assert (= (and b!4798720 res!2040650) b!4798724))

(assert (= (or b!4798723 b!4798720) bm!335283))

(assert (= (or b!4798723 b!4798720) bm!335282))

(assert (= (or b!4798723 b!4798720) bm!335284))

(assert (= (and d!1535972 res!2040648) b!4798722))

(assert (= (and b!4798722 res!2040649) b!4798721))

(declare-fun m!5781586 () Bool)

(assert (=> d!1535972 m!5781586))

(assert (=> d!1535972 m!5781134))

(declare-fun m!5781588 () Bool)

(assert (=> b!4798721 m!5781588))

(declare-fun m!5781590 () Bool)

(assert (=> b!4798724 m!5781590))

(assert (=> bm!335284 m!5781046))

(declare-fun m!5781592 () Bool)

(assert (=> bm!335284 m!5781592))

(declare-fun m!5781594 () Bool)

(assert (=> b!4798720 m!5781594))

(declare-fun m!5781596 () Bool)

(assert (=> b!4798720 m!5781596))

(declare-fun m!5781598 () Bool)

(assert (=> b!4798720 m!5781598))

(declare-fun m!5781600 () Bool)

(assert (=> b!4798720 m!5781600))

(assert (=> b!4798720 m!5781046))

(declare-fun m!5781602 () Bool)

(assert (=> b!4798720 m!5781602))

(declare-fun m!5781604 () Bool)

(assert (=> b!4798720 m!5781604))

(declare-fun m!5781606 () Bool)

(assert (=> b!4798720 m!5781606))

(assert (=> b!4798720 m!5781046))

(assert (=> b!4798720 m!5781596))

(declare-fun m!5781608 () Bool)

(assert (=> b!4798720 m!5781608))

(assert (=> b!4798720 m!5781608))

(assert (=> b!4798720 m!5781590))

(declare-fun m!5781610 () Bool)

(assert (=> b!4798720 m!5781610))

(assert (=> b!4798720 m!5781590))

(declare-fun m!5781612 () Bool)

(assert (=> bm!335282 m!5781612))

(declare-fun m!5781614 () Bool)

(assert (=> bm!335283 m!5781614))

(declare-fun m!5781616 () Bool)

(assert (=> b!4798722 m!5781616))

(assert (=> b!4798326 d!1535972))

(declare-fun bs!1156742 () Bool)

(declare-fun d!1536004 () Bool)

(assert (= bs!1156742 (and d!1536004 d!1535796)))

(declare-fun lambda!231954 () Int)

(assert (=> bs!1156742 (= lambda!231954 lambda!231835)))

(declare-fun bs!1156743 () Bool)

(assert (= bs!1156743 (and d!1536004 d!1535812)))

(assert (=> bs!1156743 (= lambda!231954 lambda!231839)))

(declare-fun bs!1156744 () Bool)

(assert (= bs!1156744 (and d!1536004 d!1535786)))

(assert (=> bs!1156744 (not (= lambda!231954 lambda!231832))))

(declare-fun bs!1156745 () Bool)

(assert (= bs!1156745 (and d!1536004 d!1535784)))

(assert (=> bs!1156745 (= lambda!231954 lambda!231829)))

(declare-fun bs!1156746 () Bool)

(assert (= bs!1156746 (and d!1536004 start!494850)))

(assert (=> bs!1156746 (= lambda!231954 lambda!231807)))

(declare-fun bs!1156747 () Bool)

(assert (= bs!1156747 (and d!1536004 d!1535798)))

(assert (=> bs!1156747 (= lambda!231954 lambda!231838)))

(declare-fun bs!1156748 () Bool)

(assert (= bs!1156748 (and d!1536004 d!1535738)))

(assert (=> bs!1156748 (= lambda!231954 lambda!231820)))

(declare-fun lt!1955201 () ListMap!6459)

(assert (=> d!1536004 (invariantList!1746 (toList!6988 lt!1955201))))

(declare-fun e!2996531 () ListMap!6459)

(assert (=> d!1536004 (= lt!1955201 e!2996531)))

(declare-fun c!817886 () Bool)

(assert (=> d!1536004 (= c!817886 ((_ is Cons!54299) (t!361873 (toList!6987 lt!1954824))))))

(assert (=> d!1536004 (forall!12309 (t!361873 (toList!6987 lt!1954824)) lambda!231954)))

(assert (=> d!1536004 (= (extractMap!2481 (t!361873 (toList!6987 lt!1954824))) lt!1955201)))

(declare-fun b!4798727 () Bool)

(assert (=> b!4798727 (= e!2996531 (addToMapMapFromBucket!1723 (_2!31787 (h!60731 (t!361873 (toList!6987 lt!1954824)))) (extractMap!2481 (t!361873 (t!361873 (toList!6987 lt!1954824))))))))

(declare-fun b!4798728 () Bool)

(assert (=> b!4798728 (= e!2996531 (ListMap!6460 Nil!54298))))

(assert (= (and d!1536004 c!817886) b!4798727))

(assert (= (and d!1536004 (not c!817886)) b!4798728))

(declare-fun m!5781618 () Bool)

(assert (=> d!1536004 m!5781618))

(declare-fun m!5781620 () Bool)

(assert (=> d!1536004 m!5781620))

(declare-fun m!5781622 () Bool)

(assert (=> b!4798727 m!5781622))

(assert (=> b!4798727 m!5781622))

(declare-fun m!5781624 () Bool)

(assert (=> b!4798727 m!5781624))

(assert (=> b!4798326 d!1536004))

(declare-fun d!1536006 () Bool)

(declare-fun noDuplicatedKeys!448 (List!54422) Bool)

(assert (=> d!1536006 (= (invariantList!1746 (toList!6988 lt!1954955)) (noDuplicatedKeys!448 (toList!6988 lt!1954955)))))

(declare-fun bs!1156749 () Bool)

(assert (= bs!1156749 d!1536006))

(declare-fun m!5781626 () Bool)

(assert (=> bs!1156749 m!5781626))

(assert (=> d!1535812 d!1536006))

(declare-fun d!1536008 () Bool)

(declare-fun res!2040651 () Bool)

(declare-fun e!2996532 () Bool)

(assert (=> d!1536008 (=> res!2040651 e!2996532)))

(assert (=> d!1536008 (= res!2040651 ((_ is Nil!54299) (toList!6987 lm!2473)))))

(assert (=> d!1536008 (= (forall!12309 (toList!6987 lm!2473) lambda!231839) e!2996532)))

(declare-fun b!4798729 () Bool)

(declare-fun e!2996533 () Bool)

(assert (=> b!4798729 (= e!2996532 e!2996533)))

(declare-fun res!2040652 () Bool)

(assert (=> b!4798729 (=> (not res!2040652) (not e!2996533))))

(assert (=> b!4798729 (= res!2040652 (dynLambda!22086 lambda!231839 (h!60731 (toList!6987 lm!2473))))))

(declare-fun b!4798730 () Bool)

(assert (=> b!4798730 (= e!2996533 (forall!12309 (t!361873 (toList!6987 lm!2473)) lambda!231839))))

(assert (= (and d!1536008 (not res!2040651)) b!4798729))

(assert (= (and b!4798729 res!2040652) b!4798730))

(declare-fun b_lambda!187375 () Bool)

(assert (=> (not b_lambda!187375) (not b!4798729)))

(declare-fun m!5781628 () Bool)

(assert (=> b!4798729 m!5781628))

(declare-fun m!5781630 () Bool)

(assert (=> b!4798730 m!5781630))

(assert (=> d!1535812 d!1536008))

(assert (=> b!4798351 d!1535814))

(declare-fun d!1536010 () Bool)

(assert (=> d!1536010 (= (isEmpty!29484 lt!1954833) (not ((_ is Some!13157) lt!1954833)))))

(assert (=> d!1535732 d!1536010))

(declare-fun d!1536012 () Bool)

(declare-fun res!2040657 () Bool)

(declare-fun e!2996538 () Bool)

(assert (=> d!1536012 (=> res!2040657 e!2996538)))

(assert (=> d!1536012 (= res!2040657 (not ((_ is Cons!54298) (apply!13027 lm!2473 lt!1954825))))))

(assert (=> d!1536012 (= (noDuplicateKeys!2355 (apply!13027 lm!2473 lt!1954825)) e!2996538)))

(declare-fun b!4798735 () Bool)

(declare-fun e!2996539 () Bool)

(assert (=> b!4798735 (= e!2996538 e!2996539)))

(declare-fun res!2040658 () Bool)

(assert (=> b!4798735 (=> (not res!2040658) (not e!2996539))))

(assert (=> b!4798735 (= res!2040658 (not (containsKey!4008 (t!361872 (apply!13027 lm!2473 lt!1954825)) (_1!31786 (h!60730 (apply!13027 lm!2473 lt!1954825))))))))

(declare-fun b!4798736 () Bool)

(assert (=> b!4798736 (= e!2996539 (noDuplicateKeys!2355 (t!361872 (apply!13027 lm!2473 lt!1954825))))))

(assert (= (and d!1536012 (not res!2040657)) b!4798735))

(assert (= (and b!4798735 res!2040658) b!4798736))

(declare-fun m!5781632 () Bool)

(assert (=> b!4798735 m!5781632))

(declare-fun m!5781634 () Bool)

(assert (=> b!4798736 m!5781634))

(assert (=> d!1535732 d!1536012))

(declare-fun d!1536014 () Bool)

(declare-fun res!2040661 () Bool)

(declare-fun e!2996540 () Bool)

(assert (=> d!1536014 (=> res!2040661 e!2996540)))

(declare-fun e!2996542 () Bool)

(assert (=> d!1536014 (= res!2040661 e!2996542)))

(declare-fun res!2040660 () Bool)

(assert (=> d!1536014 (=> (not res!2040660) (not e!2996542))))

(assert (=> d!1536014 (= res!2040660 ((_ is Cons!54299) (t!361873 (toList!6987 lm!2473))))))

(assert (=> d!1536014 (= (containsKeyBiggerList!596 (t!361873 (toList!6987 lm!2473)) key!5896) e!2996540)))

(declare-fun b!4798737 () Bool)

(assert (=> b!4798737 (= e!2996542 (containsKey!4008 (_2!31787 (h!60731 (t!361873 (toList!6987 lm!2473)))) key!5896))))

(declare-fun b!4798738 () Bool)

(declare-fun e!2996541 () Bool)

(assert (=> b!4798738 (= e!2996540 e!2996541)))

(declare-fun res!2040659 () Bool)

(assert (=> b!4798738 (=> (not res!2040659) (not e!2996541))))

(assert (=> b!4798738 (= res!2040659 ((_ is Cons!54299) (t!361873 (toList!6987 lm!2473))))))

(declare-fun b!4798739 () Bool)

(assert (=> b!4798739 (= e!2996541 (containsKeyBiggerList!596 (t!361873 (t!361873 (toList!6987 lm!2473))) key!5896))))

(assert (= (and d!1536014 res!2040660) b!4798737))

(assert (= (and d!1536014 (not res!2040661)) b!4798738))

(assert (= (and b!4798738 res!2040659) b!4798739))

(declare-fun m!5781636 () Bool)

(assert (=> b!4798737 m!5781636))

(declare-fun m!5781638 () Bool)

(assert (=> b!4798739 m!5781638))

(assert (=> b!4798353 d!1536014))

(declare-fun d!1536016 () Bool)

(declare-fun res!2040662 () Bool)

(declare-fun e!2996543 () Bool)

(assert (=> d!1536016 (=> res!2040662 e!2996543)))

(assert (=> d!1536016 (= res!2040662 (and ((_ is Cons!54298) (t!361872 (_2!31787 (h!60731 (toList!6987 lm!2473))))) (= (_1!31786 (h!60730 (t!361872 (_2!31787 (h!60731 (toList!6987 lm!2473)))))) key!5896)))))

(assert (=> d!1536016 (= (containsKey!4008 (t!361872 (_2!31787 (h!60731 (toList!6987 lm!2473)))) key!5896) e!2996543)))

(declare-fun b!4798740 () Bool)

(declare-fun e!2996544 () Bool)

(assert (=> b!4798740 (= e!2996543 e!2996544)))

(declare-fun res!2040663 () Bool)

(assert (=> b!4798740 (=> (not res!2040663) (not e!2996544))))

(assert (=> b!4798740 (= res!2040663 ((_ is Cons!54298) (t!361872 (_2!31787 (h!60731 (toList!6987 lm!2473))))))))

(declare-fun b!4798741 () Bool)

(assert (=> b!4798741 (= e!2996544 (containsKey!4008 (t!361872 (t!361872 (_2!31787 (h!60731 (toList!6987 lm!2473))))) key!5896))))

(assert (= (and d!1536016 (not res!2040662)) b!4798740))

(assert (= (and b!4798740 res!2040663) b!4798741))

(declare-fun m!5781640 () Bool)

(assert (=> b!4798741 m!5781640))

(assert (=> b!4798387 d!1536016))

(declare-fun d!1536018 () Bool)

(declare-fun choose!34642 (Hashable!6954 K!15874) (_ BitVec 64))

(assert (=> d!1536018 (= (hash!5005 hashF!1559 key!5896) (choose!34642 hashF!1559 key!5896))))

(declare-fun bs!1156750 () Bool)

(assert (= bs!1156750 d!1536018))

(declare-fun m!5781642 () Bool)

(assert (=> bs!1156750 m!5781642))

(assert (=> d!1535802 d!1536018))

(declare-fun bs!1156751 () Bool)

(declare-fun b!4798745 () Bool)

(assert (= bs!1156751 (and b!4798745 b!4798723)))

(declare-fun lambda!231955 () Int)

(assert (=> bs!1156751 (= (= (extractMap!2481 (t!361873 (toList!6987 lm!2473))) (extractMap!2481 (t!361873 (toList!6987 lt!1954824)))) (= lambda!231955 lambda!231950))))

(declare-fun bs!1156752 () Bool)

(assert (= bs!1156752 (and b!4798745 b!4798720)))

(assert (=> bs!1156752 (= (= (extractMap!2481 (t!361873 (toList!6987 lm!2473))) (extractMap!2481 (t!361873 (toList!6987 lt!1954824)))) (= lambda!231955 lambda!231951))))

(assert (=> bs!1156752 (= (= (extractMap!2481 (t!361873 (toList!6987 lm!2473))) lt!1955191) (= lambda!231955 lambda!231952))))

(declare-fun bs!1156753 () Bool)

(assert (= bs!1156753 (and b!4798745 d!1535972)))

(assert (=> bs!1156753 (= (= (extractMap!2481 (t!361873 (toList!6987 lm!2473))) lt!1955190) (= lambda!231955 lambda!231953))))

(assert (=> b!4798745 true))

(declare-fun bs!1156754 () Bool)

(declare-fun b!4798742 () Bool)

(assert (= bs!1156754 (and b!4798742 b!4798720)))

(declare-fun lambda!231956 () Int)

(assert (=> bs!1156754 (= (= (extractMap!2481 (t!361873 (toList!6987 lm!2473))) lt!1955191) (= lambda!231956 lambda!231952))))

(declare-fun bs!1156755 () Bool)

(assert (= bs!1156755 (and b!4798742 d!1535972)))

(assert (=> bs!1156755 (= (= (extractMap!2481 (t!361873 (toList!6987 lm!2473))) lt!1955190) (= lambda!231956 lambda!231953))))

(declare-fun bs!1156756 () Bool)

(assert (= bs!1156756 (and b!4798742 b!4798745)))

(assert (=> bs!1156756 (= lambda!231956 lambda!231955)))

(declare-fun bs!1156757 () Bool)

(assert (= bs!1156757 (and b!4798742 b!4798723)))

(assert (=> bs!1156757 (= (= (extractMap!2481 (t!361873 (toList!6987 lm!2473))) (extractMap!2481 (t!361873 (toList!6987 lt!1954824)))) (= lambda!231956 lambda!231950))))

(assert (=> bs!1156754 (= (= (extractMap!2481 (t!361873 (toList!6987 lm!2473))) (extractMap!2481 (t!361873 (toList!6987 lt!1954824)))) (= lambda!231956 lambda!231951))))

(assert (=> b!4798742 true))

(declare-fun lambda!231957 () Int)

(declare-fun lt!1955213 () ListMap!6459)

(assert (=> bs!1156755 (= (= lt!1955213 lt!1955190) (= lambda!231957 lambda!231953))))

(assert (=> bs!1156756 (= (= lt!1955213 (extractMap!2481 (t!361873 (toList!6987 lm!2473)))) (= lambda!231957 lambda!231955))))

(assert (=> bs!1156757 (= (= lt!1955213 (extractMap!2481 (t!361873 (toList!6987 lt!1954824)))) (= lambda!231957 lambda!231950))))

(assert (=> bs!1156754 (= (= lt!1955213 (extractMap!2481 (t!361873 (toList!6987 lt!1954824)))) (= lambda!231957 lambda!231951))))

(assert (=> b!4798742 (= (= lt!1955213 (extractMap!2481 (t!361873 (toList!6987 lm!2473)))) (= lambda!231957 lambda!231956))))

(assert (=> bs!1156754 (= (= lt!1955213 lt!1955191) (= lambda!231957 lambda!231952))))

(assert (=> b!4798742 true))

(declare-fun bs!1156758 () Bool)

(declare-fun d!1536020 () Bool)

(assert (= bs!1156758 (and d!1536020 b!4798742)))

(declare-fun lt!1955212 () ListMap!6459)

(declare-fun lambda!231958 () Int)

(assert (=> bs!1156758 (= (= lt!1955212 lt!1955213) (= lambda!231958 lambda!231957))))

(declare-fun bs!1156759 () Bool)

(assert (= bs!1156759 (and d!1536020 d!1535972)))

(assert (=> bs!1156759 (= (= lt!1955212 lt!1955190) (= lambda!231958 lambda!231953))))

(declare-fun bs!1156760 () Bool)

(assert (= bs!1156760 (and d!1536020 b!4798745)))

(assert (=> bs!1156760 (= (= lt!1955212 (extractMap!2481 (t!361873 (toList!6987 lm!2473)))) (= lambda!231958 lambda!231955))))

(declare-fun bs!1156761 () Bool)

(assert (= bs!1156761 (and d!1536020 b!4798723)))

(assert (=> bs!1156761 (= (= lt!1955212 (extractMap!2481 (t!361873 (toList!6987 lt!1954824)))) (= lambda!231958 lambda!231950))))

(declare-fun bs!1156762 () Bool)

(assert (= bs!1156762 (and d!1536020 b!4798720)))

(assert (=> bs!1156762 (= (= lt!1955212 (extractMap!2481 (t!361873 (toList!6987 lt!1954824)))) (= lambda!231958 lambda!231951))))

(assert (=> bs!1156758 (= (= lt!1955212 (extractMap!2481 (t!361873 (toList!6987 lm!2473)))) (= lambda!231958 lambda!231956))))

(assert (=> bs!1156762 (= (= lt!1955212 lt!1955191) (= lambda!231958 lambda!231952))))

(assert (=> d!1536020 true))

(declare-fun e!2996545 () ListMap!6459)

(assert (=> b!4798742 (= e!2996545 lt!1955213)))

(declare-fun lt!1955214 () ListMap!6459)

(assert (=> b!4798742 (= lt!1955214 (+!2499 (extractMap!2481 (t!361873 (toList!6987 lm!2473))) (h!60730 (_2!31787 (h!60731 (toList!6987 lm!2473))))))))

(assert (=> b!4798742 (= lt!1955213 (addToMapMapFromBucket!1723 (t!361872 (_2!31787 (h!60731 (toList!6987 lm!2473)))) (+!2499 (extractMap!2481 (t!361873 (toList!6987 lm!2473))) (h!60730 (_2!31787 (h!60731 (toList!6987 lm!2473)))))))))

(declare-fun lt!1955217 () Unit!140435)

(declare-fun call!335290 () Unit!140435)

(assert (=> b!4798742 (= lt!1955217 call!335290)))

(assert (=> b!4798742 (forall!12313 (toList!6988 (extractMap!2481 (t!361873 (toList!6987 lm!2473)))) lambda!231956)))

(declare-fun lt!1955218 () Unit!140435)

(assert (=> b!4798742 (= lt!1955218 lt!1955217)))

(declare-fun call!335292 () Bool)

(assert (=> b!4798742 call!335292))

(declare-fun lt!1955204 () Unit!140435)

(declare-fun Unit!140485 () Unit!140435)

(assert (=> b!4798742 (= lt!1955204 Unit!140485)))

(declare-fun call!335291 () Bool)

(assert (=> b!4798742 call!335291))

(declare-fun lt!1955208 () Unit!140435)

(declare-fun Unit!140486 () Unit!140435)

(assert (=> b!4798742 (= lt!1955208 Unit!140486)))

(declare-fun lt!1955210 () Unit!140435)

(declare-fun Unit!140487 () Unit!140435)

(assert (=> b!4798742 (= lt!1955210 Unit!140487)))

(declare-fun lt!1955219 () Unit!140435)

(assert (=> b!4798742 (= lt!1955219 (forallContained!4203 (toList!6988 lt!1955214) lambda!231957 (h!60730 (_2!31787 (h!60731 (toList!6987 lm!2473))))))))

(assert (=> b!4798742 (contains!17944 lt!1955214 (_1!31786 (h!60730 (_2!31787 (h!60731 (toList!6987 lm!2473))))))))

(declare-fun lt!1955215 () Unit!140435)

(declare-fun Unit!140488 () Unit!140435)

(assert (=> b!4798742 (= lt!1955215 Unit!140488)))

(assert (=> b!4798742 (contains!17944 lt!1955213 (_1!31786 (h!60730 (_2!31787 (h!60731 (toList!6987 lm!2473))))))))

(declare-fun lt!1955202 () Unit!140435)

(declare-fun Unit!140489 () Unit!140435)

(assert (=> b!4798742 (= lt!1955202 Unit!140489)))

(assert (=> b!4798742 (forall!12313 (_2!31787 (h!60731 (toList!6987 lm!2473))) lambda!231957)))

(declare-fun lt!1955220 () Unit!140435)

(declare-fun Unit!140490 () Unit!140435)

(assert (=> b!4798742 (= lt!1955220 Unit!140490)))

(assert (=> b!4798742 (forall!12313 (toList!6988 lt!1955214) lambda!231957)))

(declare-fun lt!1955222 () Unit!140435)

(declare-fun Unit!140491 () Unit!140435)

(assert (=> b!4798742 (= lt!1955222 Unit!140491)))

(declare-fun lt!1955207 () Unit!140435)

(declare-fun Unit!140493 () Unit!140435)

(assert (=> b!4798742 (= lt!1955207 Unit!140493)))

(declare-fun lt!1955211 () Unit!140435)

(assert (=> b!4798742 (= lt!1955211 (addForallContainsKeyThenBeforeAdding!954 (extractMap!2481 (t!361873 (toList!6987 lm!2473))) lt!1955213 (_1!31786 (h!60730 (_2!31787 (h!60731 (toList!6987 lm!2473))))) (_2!31786 (h!60730 (_2!31787 (h!60731 (toList!6987 lm!2473)))))))))

(assert (=> b!4798742 (forall!12313 (toList!6988 (extractMap!2481 (t!361873 (toList!6987 lm!2473)))) lambda!231957)))

(declare-fun lt!1955216 () Unit!140435)

(assert (=> b!4798742 (= lt!1955216 lt!1955211)))

(assert (=> b!4798742 (forall!12313 (toList!6988 (extractMap!2481 (t!361873 (toList!6987 lm!2473)))) lambda!231957)))

(declare-fun lt!1955205 () Unit!140435)

(declare-fun Unit!140496 () Unit!140435)

(assert (=> b!4798742 (= lt!1955205 Unit!140496)))

(declare-fun res!2040666 () Bool)

(assert (=> b!4798742 (= res!2040666 (forall!12313 (_2!31787 (h!60731 (toList!6987 lm!2473))) lambda!231957))))

(declare-fun e!2996547 () Bool)

(assert (=> b!4798742 (=> (not res!2040666) (not e!2996547))))

(assert (=> b!4798742 e!2996547))

(declare-fun lt!1955203 () Unit!140435)

(declare-fun Unit!140498 () Unit!140435)

(assert (=> b!4798742 (= lt!1955203 Unit!140498)))

(declare-fun bm!335286 () Bool)

(declare-fun c!817887 () Bool)

(assert (=> bm!335286 (= call!335292 (forall!12313 (ite c!817887 (toList!6988 (extractMap!2481 (t!361873 (toList!6987 lm!2473)))) (toList!6988 lt!1955214)) (ite c!817887 lambda!231955 lambda!231957)))))

(declare-fun b!4798743 () Bool)

(declare-fun e!2996546 () Bool)

(assert (=> b!4798743 (= e!2996546 (invariantList!1746 (toList!6988 lt!1955212)))))

(declare-fun bm!335287 () Bool)

(assert (=> bm!335287 (= call!335290 (lemmaContainsAllItsOwnKeys!955 (extractMap!2481 (t!361873 (toList!6987 lm!2473)))))))

(declare-fun b!4798744 () Bool)

(declare-fun res!2040665 () Bool)

(assert (=> b!4798744 (=> (not res!2040665) (not e!2996546))))

(assert (=> b!4798744 (= res!2040665 (forall!12313 (toList!6988 (extractMap!2481 (t!361873 (toList!6987 lm!2473)))) lambda!231958))))

(assert (=> d!1536020 e!2996546))

(declare-fun res!2040664 () Bool)

(assert (=> d!1536020 (=> (not res!2040664) (not e!2996546))))

(assert (=> d!1536020 (= res!2040664 (forall!12313 (_2!31787 (h!60731 (toList!6987 lm!2473))) lambda!231958))))

(assert (=> d!1536020 (= lt!1955212 e!2996545)))

(assert (=> d!1536020 (= c!817887 ((_ is Nil!54298) (_2!31787 (h!60731 (toList!6987 lm!2473)))))))

(assert (=> d!1536020 (noDuplicateKeys!2355 (_2!31787 (h!60731 (toList!6987 lm!2473))))))

(assert (=> d!1536020 (= (addToMapMapFromBucket!1723 (_2!31787 (h!60731 (toList!6987 lm!2473))) (extractMap!2481 (t!361873 (toList!6987 lm!2473)))) lt!1955212)))

(declare-fun bm!335285 () Bool)

(assert (=> bm!335285 (= call!335291 (forall!12313 (ite c!817887 (toList!6988 (extractMap!2481 (t!361873 (toList!6987 lm!2473)))) (t!361872 (_2!31787 (h!60731 (toList!6987 lm!2473))))) (ite c!817887 lambda!231955 lambda!231957)))))

(assert (=> b!4798745 (= e!2996545 (extractMap!2481 (t!361873 (toList!6987 lm!2473))))))

(declare-fun lt!1955206 () Unit!140435)

(assert (=> b!4798745 (= lt!1955206 call!335290)))

(assert (=> b!4798745 call!335292))

(declare-fun lt!1955209 () Unit!140435)

(assert (=> b!4798745 (= lt!1955209 lt!1955206)))

(assert (=> b!4798745 call!335291))

(declare-fun lt!1955221 () Unit!140435)

(declare-fun Unit!140505 () Unit!140435)

(assert (=> b!4798745 (= lt!1955221 Unit!140505)))

(declare-fun b!4798746 () Bool)

(assert (=> b!4798746 (= e!2996547 (forall!12313 (toList!6988 (extractMap!2481 (t!361873 (toList!6987 lm!2473)))) lambda!231957))))

(assert (= (and d!1536020 c!817887) b!4798745))

(assert (= (and d!1536020 (not c!817887)) b!4798742))

(assert (= (and b!4798742 res!2040666) b!4798746))

(assert (= (or b!4798745 b!4798742) bm!335286))

(assert (= (or b!4798745 b!4798742) bm!335285))

(assert (= (or b!4798745 b!4798742) bm!335287))

(assert (= (and d!1536020 res!2040664) b!4798744))

(assert (= (and b!4798744 res!2040665) b!4798743))

(declare-fun m!5781644 () Bool)

(assert (=> d!1536020 m!5781644))

(assert (=> d!1536020 m!5781136))

(declare-fun m!5781646 () Bool)

(assert (=> b!4798743 m!5781646))

(declare-fun m!5781648 () Bool)

(assert (=> b!4798746 m!5781648))

(assert (=> bm!335287 m!5781128))

(declare-fun m!5781650 () Bool)

(assert (=> bm!335287 m!5781650))

(declare-fun m!5781652 () Bool)

(assert (=> b!4798742 m!5781652))

(declare-fun m!5781654 () Bool)

(assert (=> b!4798742 m!5781654))

(declare-fun m!5781656 () Bool)

(assert (=> b!4798742 m!5781656))

(declare-fun m!5781658 () Bool)

(assert (=> b!4798742 m!5781658))

(assert (=> b!4798742 m!5781128))

(declare-fun m!5781660 () Bool)

(assert (=> b!4798742 m!5781660))

(declare-fun m!5781662 () Bool)

(assert (=> b!4798742 m!5781662))

(declare-fun m!5781664 () Bool)

(assert (=> b!4798742 m!5781664))

(assert (=> b!4798742 m!5781128))

(assert (=> b!4798742 m!5781654))

(declare-fun m!5781666 () Bool)

(assert (=> b!4798742 m!5781666))

(assert (=> b!4798742 m!5781666))

(assert (=> b!4798742 m!5781648))

(declare-fun m!5781668 () Bool)

(assert (=> b!4798742 m!5781668))

(assert (=> b!4798742 m!5781648))

(declare-fun m!5781670 () Bool)

(assert (=> bm!335285 m!5781670))

(declare-fun m!5781672 () Bool)

(assert (=> bm!335286 m!5781672))

(declare-fun m!5781674 () Bool)

(assert (=> b!4798744 m!5781674))

(assert (=> b!4798380 d!1536020))

(declare-fun bs!1156763 () Bool)

(declare-fun d!1536022 () Bool)

(assert (= bs!1156763 (and d!1536022 d!1535796)))

(declare-fun lambda!231959 () Int)

(assert (=> bs!1156763 (= lambda!231959 lambda!231835)))

(declare-fun bs!1156764 () Bool)

(assert (= bs!1156764 (and d!1536022 d!1535812)))

(assert (=> bs!1156764 (= lambda!231959 lambda!231839)))

(declare-fun bs!1156765 () Bool)

(assert (= bs!1156765 (and d!1536022 d!1535786)))

(assert (=> bs!1156765 (not (= lambda!231959 lambda!231832))))

(declare-fun bs!1156766 () Bool)

(assert (= bs!1156766 (and d!1536022 start!494850)))

(assert (=> bs!1156766 (= lambda!231959 lambda!231807)))

(declare-fun bs!1156767 () Bool)

(assert (= bs!1156767 (and d!1536022 d!1535798)))

(assert (=> bs!1156767 (= lambda!231959 lambda!231838)))

(declare-fun bs!1156768 () Bool)

(assert (= bs!1156768 (and d!1536022 d!1535738)))

(assert (=> bs!1156768 (= lambda!231959 lambda!231820)))

(declare-fun bs!1156769 () Bool)

(assert (= bs!1156769 (and d!1536022 d!1536004)))

(assert (=> bs!1156769 (= lambda!231959 lambda!231954)))

(declare-fun bs!1156770 () Bool)

(assert (= bs!1156770 (and d!1536022 d!1535784)))

(assert (=> bs!1156770 (= lambda!231959 lambda!231829)))

(declare-fun lt!1955223 () ListMap!6459)

(assert (=> d!1536022 (invariantList!1746 (toList!6988 lt!1955223))))

(declare-fun e!2996548 () ListMap!6459)

(assert (=> d!1536022 (= lt!1955223 e!2996548)))

(declare-fun c!817888 () Bool)

(assert (=> d!1536022 (= c!817888 ((_ is Cons!54299) (t!361873 (toList!6987 lm!2473))))))

(assert (=> d!1536022 (forall!12309 (t!361873 (toList!6987 lm!2473)) lambda!231959)))

(assert (=> d!1536022 (= (extractMap!2481 (t!361873 (toList!6987 lm!2473))) lt!1955223)))

(declare-fun b!4798747 () Bool)

(assert (=> b!4798747 (= e!2996548 (addToMapMapFromBucket!1723 (_2!31787 (h!60731 (t!361873 (toList!6987 lm!2473)))) (extractMap!2481 (t!361873 (t!361873 (toList!6987 lm!2473))))))))

(declare-fun b!4798748 () Bool)

(assert (=> b!4798748 (= e!2996548 (ListMap!6460 Nil!54298))))

(assert (= (and d!1536022 c!817888) b!4798747))

(assert (= (and d!1536022 (not c!817888)) b!4798748))

(declare-fun m!5781676 () Bool)

(assert (=> d!1536022 m!5781676))

(declare-fun m!5781678 () Bool)

(assert (=> d!1536022 m!5781678))

(declare-fun m!5781680 () Bool)

(assert (=> b!4798747 m!5781680))

(assert (=> b!4798747 m!5781680))

(declare-fun m!5781682 () Bool)

(assert (=> b!4798747 m!5781682))

(assert (=> b!4798380 d!1536022))

(declare-fun d!1536024 () Bool)

(assert (=> d!1536024 (= (tail!9313 (toList!6987 lm!2473)) (t!361873 (toList!6987 lm!2473)))))

(assert (=> d!1535808 d!1536024))

(declare-fun d!1536026 () Bool)

(declare-fun res!2040671 () Bool)

(declare-fun e!2996553 () Bool)

(assert (=> d!1536026 (=> res!2040671 e!2996553)))

(assert (=> d!1536026 (= res!2040671 (and ((_ is Cons!54299) (toList!6987 lt!1954824)) (= (_1!31787 (h!60731 (toList!6987 lt!1954824))) lt!1954825)))))

(assert (=> d!1536026 (= (containsKey!4012 (toList!6987 lt!1954824) lt!1954825) e!2996553)))

(declare-fun b!4798753 () Bool)

(declare-fun e!2996554 () Bool)

(assert (=> b!4798753 (= e!2996553 e!2996554)))

(declare-fun res!2040672 () Bool)

(assert (=> b!4798753 (=> (not res!2040672) (not e!2996554))))

(assert (=> b!4798753 (= res!2040672 (and (or (not ((_ is Cons!54299) (toList!6987 lt!1954824))) (bvsle (_1!31787 (h!60731 (toList!6987 lt!1954824))) lt!1954825)) ((_ is Cons!54299) (toList!6987 lt!1954824)) (bvslt (_1!31787 (h!60731 (toList!6987 lt!1954824))) lt!1954825)))))

(declare-fun b!4798754 () Bool)

(assert (=> b!4798754 (= e!2996554 (containsKey!4012 (t!361873 (toList!6987 lt!1954824)) lt!1954825))))

(assert (= (and d!1536026 (not res!2040671)) b!4798753))

(assert (= (and b!4798753 res!2040672) b!4798754))

(declare-fun m!5781684 () Bool)

(assert (=> b!4798754 m!5781684))

(assert (=> d!1535806 d!1536026))

(assert (=> d!1535796 d!1535794))

(declare-fun d!1536028 () Bool)

(assert (=> d!1536028 (containsKeyBiggerList!596 (toList!6987 lm!2473) key!5896)))

(assert (=> d!1536028 true))

(declare-fun _$33!862 () Unit!140435)

(assert (=> d!1536028 (= (choose!34636 lm!2473 key!5896 hashF!1559) _$33!862)))

(declare-fun bs!1156771 () Bool)

(assert (= bs!1156771 d!1536028))

(assert (=> bs!1156771 m!5780844))

(assert (=> d!1535796 d!1536028))

(declare-fun d!1536030 () Bool)

(declare-fun res!2040673 () Bool)

(declare-fun e!2996555 () Bool)

(assert (=> d!1536030 (=> res!2040673 e!2996555)))

(assert (=> d!1536030 (= res!2040673 ((_ is Nil!54299) (toList!6987 lm!2473)))))

(assert (=> d!1536030 (= (forall!12309 (toList!6987 lm!2473) lambda!231835) e!2996555)))

(declare-fun b!4798755 () Bool)

(declare-fun e!2996556 () Bool)

(assert (=> b!4798755 (= e!2996555 e!2996556)))

(declare-fun res!2040674 () Bool)

(assert (=> b!4798755 (=> (not res!2040674) (not e!2996556))))

(assert (=> b!4798755 (= res!2040674 (dynLambda!22086 lambda!231835 (h!60731 (toList!6987 lm!2473))))))

(declare-fun b!4798756 () Bool)

(assert (=> b!4798756 (= e!2996556 (forall!12309 (t!361873 (toList!6987 lm!2473)) lambda!231835))))

(assert (= (and d!1536030 (not res!2040673)) b!4798755))

(assert (= (and b!4798755 res!2040674) b!4798756))

(declare-fun b_lambda!187377 () Bool)

(assert (=> (not b_lambda!187377) (not b!4798755)))

(declare-fun m!5781686 () Bool)

(assert (=> b!4798755 m!5781686))

(declare-fun m!5781688 () Bool)

(assert (=> b!4798756 m!5781688))

(assert (=> d!1535796 d!1536030))

(declare-fun d!1536032 () Bool)

(assert (=> d!1536032 (isDefined!10302 (getValueByKey!2383 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))) key!5896))))

(declare-fun lt!1955226 () Unit!140435)

(declare-fun choose!34644 (List!54422 K!15874) Unit!140435)

(assert (=> d!1536032 (= lt!1955226 (choose!34644 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))) key!5896))))

(assert (=> d!1536032 (invariantList!1746 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))))))

(assert (=> d!1536032 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2173 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))) key!5896) lt!1955226)))

(declare-fun bs!1156772 () Bool)

(assert (= bs!1156772 d!1536032))

(assert (=> bs!1156772 m!5781028))

(assert (=> bs!1156772 m!5781028))

(assert (=> bs!1156772 m!5781030))

(declare-fun m!5781690 () Bool)

(assert (=> bs!1156772 m!5781690))

(declare-fun m!5781692 () Bool)

(assert (=> bs!1156772 m!5781692))

(assert (=> b!4798313 d!1536032))

(declare-fun d!1536034 () Bool)

(assert (=> d!1536034 (= (isDefined!10302 (getValueByKey!2383 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))) key!5896)) (not (isEmpty!29488 (getValueByKey!2383 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))) key!5896))))))

(declare-fun bs!1156773 () Bool)

(assert (= bs!1156773 d!1536034))

(assert (=> bs!1156773 m!5781028))

(declare-fun m!5781694 () Bool)

(assert (=> bs!1156773 m!5781694))

(assert (=> b!4798313 d!1536034))

(declare-fun b!4798758 () Bool)

(declare-fun e!2996557 () Option!13162)

(declare-fun e!2996558 () Option!13162)

(assert (=> b!4798758 (= e!2996557 e!2996558)))

(declare-fun c!817890 () Bool)

(assert (=> b!4798758 (= c!817890 (and ((_ is Cons!54298) (toList!6988 (extractMap!2481 (toList!6987 lt!1954824)))) (not (= (_1!31786 (h!60730 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))))) key!5896))))))

(declare-fun b!4798757 () Bool)

(assert (=> b!4798757 (= e!2996557 (Some!13161 (_2!31786 (h!60730 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824)))))))))

(declare-fun b!4798760 () Bool)

(assert (=> b!4798760 (= e!2996558 None!13161)))

(declare-fun d!1536036 () Bool)

(declare-fun c!817889 () Bool)

(assert (=> d!1536036 (= c!817889 (and ((_ is Cons!54298) (toList!6988 (extractMap!2481 (toList!6987 lt!1954824)))) (= (_1!31786 (h!60730 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))))) key!5896)))))

(assert (=> d!1536036 (= (getValueByKey!2383 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))) key!5896) e!2996557)))

(declare-fun b!4798759 () Bool)

(assert (=> b!4798759 (= e!2996558 (getValueByKey!2383 (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824)))) key!5896))))

(assert (= (and d!1536036 c!817889) b!4798757))

(assert (= (and d!1536036 (not c!817889)) b!4798758))

(assert (= (and b!4798758 c!817890) b!4798759))

(assert (= (and b!4798758 (not c!817890)) b!4798760))

(declare-fun m!5781696 () Bool)

(assert (=> b!4798759 m!5781696))

(assert (=> b!4798313 d!1536036))

(declare-fun d!1536038 () Bool)

(assert (=> d!1536038 (contains!17948 (getKeysList!1092 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824)))) key!5896)))

(declare-fun lt!1955229 () Unit!140435)

(declare-fun choose!34645 (List!54422 K!15874) Unit!140435)

(assert (=> d!1536038 (= lt!1955229 (choose!34645 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))) key!5896))))

(assert (=> d!1536038 (invariantList!1746 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))))))

(assert (=> d!1536038 (= (lemmaInListThenGetKeysListContains!1087 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))) key!5896) lt!1955229)))

(declare-fun bs!1156774 () Bool)

(assert (= bs!1156774 d!1536038))

(assert (=> bs!1156774 m!5781040))

(assert (=> bs!1156774 m!5781040))

(declare-fun m!5781698 () Bool)

(assert (=> bs!1156774 m!5781698))

(declare-fun m!5781700 () Bool)

(assert (=> bs!1156774 m!5781700))

(assert (=> bs!1156774 m!5781692))

(assert (=> b!4798313 d!1536038))

(declare-fun d!1536040 () Bool)

(declare-fun res!2040675 () Bool)

(declare-fun e!2996559 () Bool)

(assert (=> d!1536040 (=> res!2040675 e!2996559)))

(assert (=> d!1536040 (= res!2040675 (not ((_ is Cons!54298) (_2!31787 (h!60731 (toList!6987 lt!1954824))))))))

(assert (=> d!1536040 (= (noDuplicateKeys!2355 (_2!31787 (h!60731 (toList!6987 lt!1954824)))) e!2996559)))

(declare-fun b!4798761 () Bool)

(declare-fun e!2996560 () Bool)

(assert (=> b!4798761 (= e!2996559 e!2996560)))

(declare-fun res!2040676 () Bool)

(assert (=> b!4798761 (=> (not res!2040676) (not e!2996560))))

(assert (=> b!4798761 (= res!2040676 (not (containsKey!4008 (t!361872 (_2!31787 (h!60731 (toList!6987 lt!1954824)))) (_1!31786 (h!60730 (_2!31787 (h!60731 (toList!6987 lt!1954824))))))))))

(declare-fun b!4798762 () Bool)

(assert (=> b!4798762 (= e!2996560 (noDuplicateKeys!2355 (t!361872 (_2!31787 (h!60731 (toList!6987 lt!1954824))))))))

(assert (= (and d!1536040 (not res!2040675)) b!4798761))

(assert (= (and b!4798761 res!2040676) b!4798762))

(declare-fun m!5781702 () Bool)

(assert (=> b!4798761 m!5781702))

(declare-fun m!5781704 () Bool)

(assert (=> b!4798762 m!5781704))

(assert (=> bs!1156632 d!1536040))

(declare-fun d!1536042 () Bool)

(declare-fun res!2040677 () Bool)

(declare-fun e!2996561 () Bool)

(assert (=> d!1536042 (=> res!2040677 e!2996561)))

(assert (=> d!1536042 (= res!2040677 (and ((_ is Cons!54299) (toList!6987 lm!2473)) (= (_1!31787 (h!60731 (toList!6987 lm!2473))) lt!1954825)))))

(assert (=> d!1536042 (= (containsKey!4012 (toList!6987 lm!2473) lt!1954825) e!2996561)))

(declare-fun b!4798763 () Bool)

(declare-fun e!2996562 () Bool)

(assert (=> b!4798763 (= e!2996561 e!2996562)))

(declare-fun res!2040678 () Bool)

(assert (=> b!4798763 (=> (not res!2040678) (not e!2996562))))

(assert (=> b!4798763 (= res!2040678 (and (or (not ((_ is Cons!54299) (toList!6987 lm!2473))) (bvsle (_1!31787 (h!60731 (toList!6987 lm!2473))) lt!1954825)) ((_ is Cons!54299) (toList!6987 lm!2473)) (bvslt (_1!31787 (h!60731 (toList!6987 lm!2473))) lt!1954825)))))

(declare-fun b!4798764 () Bool)

(assert (=> b!4798764 (= e!2996562 (containsKey!4012 (t!361873 (toList!6987 lm!2473)) lt!1954825))))

(assert (= (and d!1536042 (not res!2040677)) b!4798763))

(assert (= (and b!4798763 res!2040678) b!4798764))

(declare-fun m!5781706 () Bool)

(assert (=> b!4798764 m!5781706))

(assert (=> d!1535792 d!1536042))

(declare-fun d!1536044 () Bool)

(assert (=> d!1536044 (= (isDefined!10299 (getPair!926 (apply!13027 lm!2473 (hash!5003 hashF!1559 key!5896)) key!5896)) (not (isEmpty!29484 (getPair!926 (apply!13027 lm!2473 (hash!5003 hashF!1559 key!5896)) key!5896))))))

(declare-fun bs!1156775 () Bool)

(assert (= bs!1156775 d!1536044))

(assert (=> bs!1156775 m!5781078))

(declare-fun m!5781708 () Bool)

(assert (=> bs!1156775 m!5781708))

(assert (=> b!4798356 d!1536044))

(declare-fun b!4798765 () Bool)

(declare-fun e!2996566 () Option!13158)

(assert (=> b!4798765 (= e!2996566 None!13157)))

(declare-fun b!4798766 () Bool)

(declare-fun e!2996567 () Bool)

(declare-fun e!2996564 () Bool)

(assert (=> b!4798766 (= e!2996567 e!2996564)))

(declare-fun res!2040681 () Bool)

(assert (=> b!4798766 (=> (not res!2040681) (not e!2996564))))

(declare-fun lt!1955230 () Option!13158)

(assert (=> b!4798766 (= res!2040681 (isDefined!10299 lt!1955230))))

(declare-fun e!2996565 () Option!13158)

(declare-fun b!4798767 () Bool)

(assert (=> b!4798767 (= e!2996565 (Some!13157 (h!60730 (apply!13027 lm!2473 (hash!5003 hashF!1559 key!5896)))))))

(declare-fun b!4798768 () Bool)

(declare-fun e!2996563 () Bool)

(assert (=> b!4798768 (= e!2996563 (not (containsKey!4008 (apply!13027 lm!2473 (hash!5003 hashF!1559 key!5896)) key!5896)))))

(declare-fun b!4798769 () Bool)

(assert (=> b!4798769 (= e!2996564 (contains!17947 (apply!13027 lm!2473 (hash!5003 hashF!1559 key!5896)) (get!18531 lt!1955230)))))

(declare-fun b!4798770 () Bool)

(assert (=> b!4798770 (= e!2996566 (getPair!926 (t!361872 (apply!13027 lm!2473 (hash!5003 hashF!1559 key!5896))) key!5896))))

(declare-fun b!4798771 () Bool)

(assert (=> b!4798771 (= e!2996565 e!2996566)))

(declare-fun c!817891 () Bool)

(assert (=> b!4798771 (= c!817891 ((_ is Cons!54298) (apply!13027 lm!2473 (hash!5003 hashF!1559 key!5896))))))

(declare-fun b!4798772 () Bool)

(declare-fun res!2040679 () Bool)

(assert (=> b!4798772 (=> (not res!2040679) (not e!2996564))))

(assert (=> b!4798772 (= res!2040679 (= (_1!31786 (get!18531 lt!1955230)) key!5896))))

(declare-fun d!1536046 () Bool)

(assert (=> d!1536046 e!2996567))

(declare-fun res!2040680 () Bool)

(assert (=> d!1536046 (=> res!2040680 e!2996567)))

(assert (=> d!1536046 (= res!2040680 e!2996563)))

(declare-fun res!2040682 () Bool)

(assert (=> d!1536046 (=> (not res!2040682) (not e!2996563))))

(assert (=> d!1536046 (= res!2040682 (isEmpty!29484 lt!1955230))))

(assert (=> d!1536046 (= lt!1955230 e!2996565)))

(declare-fun c!817892 () Bool)

(assert (=> d!1536046 (= c!817892 (and ((_ is Cons!54298) (apply!13027 lm!2473 (hash!5003 hashF!1559 key!5896))) (= (_1!31786 (h!60730 (apply!13027 lm!2473 (hash!5003 hashF!1559 key!5896)))) key!5896)))))

(assert (=> d!1536046 (noDuplicateKeys!2355 (apply!13027 lm!2473 (hash!5003 hashF!1559 key!5896)))))

(assert (=> d!1536046 (= (getPair!926 (apply!13027 lm!2473 (hash!5003 hashF!1559 key!5896)) key!5896) lt!1955230)))

(assert (= (and d!1536046 c!817892) b!4798767))

(assert (= (and d!1536046 (not c!817892)) b!4798771))

(assert (= (and b!4798771 c!817891) b!4798770))

(assert (= (and b!4798771 (not c!817891)) b!4798765))

(assert (= (and d!1536046 res!2040682) b!4798768))

(assert (= (and d!1536046 (not res!2040680)) b!4798766))

(assert (= (and b!4798766 res!2040681) b!4798772))

(assert (= (and b!4798772 res!2040679) b!4798769))

(declare-fun m!5781710 () Bool)

(assert (=> b!4798769 m!5781710))

(assert (=> b!4798769 m!5781076))

(assert (=> b!4798769 m!5781710))

(declare-fun m!5781712 () Bool)

(assert (=> b!4798769 m!5781712))

(declare-fun m!5781714 () Bool)

(assert (=> d!1536046 m!5781714))

(assert (=> d!1536046 m!5781076))

(declare-fun m!5781716 () Bool)

(assert (=> d!1536046 m!5781716))

(declare-fun m!5781718 () Bool)

(assert (=> b!4798766 m!5781718))

(declare-fun m!5781720 () Bool)

(assert (=> b!4798770 m!5781720))

(assert (=> b!4798772 m!5781710))

(assert (=> b!4798768 m!5781076))

(declare-fun m!5781722 () Bool)

(assert (=> b!4798768 m!5781722))

(assert (=> b!4798356 d!1536046))

(declare-fun d!1536048 () Bool)

(assert (=> d!1536048 (= (apply!13027 lm!2473 (hash!5003 hashF!1559 key!5896)) (get!18532 (getValueByKey!2382 (toList!6987 lm!2473) (hash!5003 hashF!1559 key!5896))))))

(declare-fun bs!1156776 () Bool)

(assert (= bs!1156776 d!1536048))

(assert (=> bs!1156776 m!5780846))

(declare-fun m!5781724 () Bool)

(assert (=> bs!1156776 m!5781724))

(assert (=> bs!1156776 m!5781724))

(declare-fun m!5781726 () Bool)

(assert (=> bs!1156776 m!5781726))

(assert (=> b!4798356 d!1536048))

(assert (=> b!4798356 d!1535802))

(declare-fun d!1536050 () Bool)

(declare-fun res!2040683 () Bool)

(declare-fun e!2996568 () Bool)

(assert (=> d!1536050 (=> res!2040683 e!2996568)))

(assert (=> d!1536050 (= res!2040683 ((_ is Nil!54299) (t!361873 (toList!6987 lm!2473))))))

(assert (=> d!1536050 (= (forall!12309 (t!361873 (toList!6987 lm!2473)) lambda!231807) e!2996568)))

(declare-fun b!4798773 () Bool)

(declare-fun e!2996569 () Bool)

(assert (=> b!4798773 (= e!2996568 e!2996569)))

(declare-fun res!2040684 () Bool)

(assert (=> b!4798773 (=> (not res!2040684) (not e!2996569))))

(assert (=> b!4798773 (= res!2040684 (dynLambda!22086 lambda!231807 (h!60731 (t!361873 (toList!6987 lm!2473)))))))

(declare-fun b!4798774 () Bool)

(assert (=> b!4798774 (= e!2996569 (forall!12309 (t!361873 (t!361873 (toList!6987 lm!2473))) lambda!231807))))

(assert (= (and d!1536050 (not res!2040683)) b!4798773))

(assert (= (and b!4798773 res!2040684) b!4798774))

(declare-fun b_lambda!187379 () Bool)

(assert (=> (not b_lambda!187379) (not b!4798773)))

(declare-fun m!5781728 () Bool)

(assert (=> b!4798773 m!5781728))

(declare-fun m!5781730 () Bool)

(assert (=> b!4798774 m!5781730))

(assert (=> b!4798335 d!1536050))

(assert (=> b!4798317 d!1536034))

(assert (=> b!4798317 d!1536036))

(declare-fun d!1536052 () Bool)

(declare-fun res!2040689 () Bool)

(declare-fun e!2996574 () Bool)

(assert (=> d!1536052 (=> res!2040689 e!2996574)))

(assert (=> d!1536052 (= res!2040689 (and ((_ is Cons!54298) (toList!6988 (extractMap!2481 (toList!6987 lm!2473)))) (= (_1!31786 (h!60730 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))))) key!5896)))))

(assert (=> d!1536052 (= (containsKey!4011 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))) key!5896) e!2996574)))

(declare-fun b!4798779 () Bool)

(declare-fun e!2996575 () Bool)

(assert (=> b!4798779 (= e!2996574 e!2996575)))

(declare-fun res!2040690 () Bool)

(assert (=> b!4798779 (=> (not res!2040690) (not e!2996575))))

(assert (=> b!4798779 (= res!2040690 ((_ is Cons!54298) (toList!6988 (extractMap!2481 (toList!6987 lm!2473)))))))

(declare-fun b!4798780 () Bool)

(assert (=> b!4798780 (= e!2996575 (containsKey!4011 (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lm!2473)))) key!5896))))

(assert (= (and d!1536052 (not res!2040689)) b!4798779))

(assert (= (and b!4798779 res!2040690) b!4798780))

(declare-fun m!5781732 () Bool)

(assert (=> b!4798780 m!5781732))

(assert (=> d!1535810 d!1536052))

(declare-fun bs!1156777 () Bool)

(declare-fun b!4798788 () Bool)

(assert (= bs!1156777 (and b!4798788 b!4798658)))

(declare-fun lambda!231960 () Int)

(assert (=> bs!1156777 (= (= (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824)))) (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))))) (= lambda!231960 lambda!231911))))

(declare-fun bs!1156778 () Bool)

(assert (= bs!1156778 (and b!4798788 b!4798656)))

(assert (=> bs!1156778 (= (= (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824)))) (Cons!54298 (h!60730 (toList!6988 (extractMap!2481 (toList!6987 lm!2473)))) (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lm!2473)))))) (= lambda!231960 lambda!231912))))

(declare-fun bs!1156779 () Bool)

(assert (= bs!1156779 (and b!4798788 b!4798654)))

(assert (=> bs!1156779 (= (= (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824)))) (toList!6988 (extractMap!2481 (toList!6987 lm!2473)))) (= lambda!231960 lambda!231913))))

(declare-fun bs!1156780 () Bool)

(assert (= bs!1156780 (and b!4798788 b!4798604)))

(assert (=> bs!1156780 (= (= (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824)))) (toList!6988 (extractMap!2481 (toList!6987 lt!1954824)))) (= lambda!231960 lambda!231878))))

(declare-fun bs!1156781 () Bool)

(assert (= bs!1156781 (and b!4798788 b!4798672)))

(assert (=> bs!1156781 (= (= (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824)))) (toList!6988 (extractMap!2481 (toList!6987 lm!2473)))) (= lambda!231960 lambda!231917))))

(assert (=> b!4798788 true))

(declare-fun bs!1156782 () Bool)

(declare-fun b!4798786 () Bool)

(assert (= bs!1156782 (and b!4798786 b!4798658)))

(declare-fun lambda!231961 () Int)

(assert (=> bs!1156782 (= (= (Cons!54298 (h!60730 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824)))) (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))))) (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))))) (= lambda!231961 lambda!231911))))

(declare-fun bs!1156783 () Bool)

(assert (= bs!1156783 (and b!4798786 b!4798656)))

(assert (=> bs!1156783 (= (= (Cons!54298 (h!60730 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824)))) (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))))) (Cons!54298 (h!60730 (toList!6988 (extractMap!2481 (toList!6987 lm!2473)))) (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lm!2473)))))) (= lambda!231961 lambda!231912))))

(declare-fun bs!1156784 () Bool)

(assert (= bs!1156784 (and b!4798786 b!4798654)))

(assert (=> bs!1156784 (= (= (Cons!54298 (h!60730 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824)))) (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))))) (toList!6988 (extractMap!2481 (toList!6987 lm!2473)))) (= lambda!231961 lambda!231913))))

(declare-fun bs!1156785 () Bool)

(assert (= bs!1156785 (and b!4798786 b!4798788)))

(assert (=> bs!1156785 (= (= (Cons!54298 (h!60730 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824)))) (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))))) (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))))) (= lambda!231961 lambda!231960))))

(declare-fun bs!1156786 () Bool)

(assert (= bs!1156786 (and b!4798786 b!4798604)))

(assert (=> bs!1156786 (= (= (Cons!54298 (h!60730 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824)))) (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))))) (toList!6988 (extractMap!2481 (toList!6987 lt!1954824)))) (= lambda!231961 lambda!231878))))

(declare-fun bs!1156787 () Bool)

(assert (= bs!1156787 (and b!4798786 b!4798672)))

(assert (=> bs!1156787 (= (= (Cons!54298 (h!60730 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824)))) (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))))) (toList!6988 (extractMap!2481 (toList!6987 lm!2473)))) (= lambda!231961 lambda!231917))))

(assert (=> b!4798786 true))

(declare-fun bs!1156788 () Bool)

(declare-fun b!4798784 () Bool)

(assert (= bs!1156788 (and b!4798784 b!4798658)))

(declare-fun lambda!231962 () Int)

(assert (=> bs!1156788 (= (= (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))) (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))))) (= lambda!231962 lambda!231911))))

(declare-fun bs!1156789 () Bool)

(assert (= bs!1156789 (and b!4798784 b!4798656)))

(assert (=> bs!1156789 (= (= (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))) (Cons!54298 (h!60730 (toList!6988 (extractMap!2481 (toList!6987 lm!2473)))) (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lm!2473)))))) (= lambda!231962 lambda!231912))))

(declare-fun bs!1156790 () Bool)

(assert (= bs!1156790 (and b!4798784 b!4798786)))

(assert (=> bs!1156790 (= (= (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))) (Cons!54298 (h!60730 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824)))) (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824)))))) (= lambda!231962 lambda!231961))))

(declare-fun bs!1156791 () Bool)

(assert (= bs!1156791 (and b!4798784 b!4798654)))

(assert (=> bs!1156791 (= (= (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))) (toList!6988 (extractMap!2481 (toList!6987 lm!2473)))) (= lambda!231962 lambda!231913))))

(declare-fun bs!1156792 () Bool)

(assert (= bs!1156792 (and b!4798784 b!4798788)))

(assert (=> bs!1156792 (= (= (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))) (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))))) (= lambda!231962 lambda!231960))))

(declare-fun bs!1156793 () Bool)

(assert (= bs!1156793 (and b!4798784 b!4798604)))

(assert (=> bs!1156793 (= lambda!231962 lambda!231878)))

(declare-fun bs!1156794 () Bool)

(assert (= bs!1156794 (and b!4798784 b!4798672)))

(assert (=> bs!1156794 (= (= (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))) (toList!6988 (extractMap!2481 (toList!6987 lm!2473)))) (= lambda!231962 lambda!231917))))

(assert (=> b!4798784 true))

(declare-fun bs!1156795 () Bool)

(declare-fun b!4798785 () Bool)

(assert (= bs!1156795 (and b!4798785 b!4798605)))

(declare-fun lambda!231963 () Int)

(assert (=> bs!1156795 (= lambda!231963 lambda!231879)))

(declare-fun bs!1156796 () Bool)

(assert (= bs!1156796 (and b!4798785 b!4798655)))

(assert (=> bs!1156796 (= lambda!231963 lambda!231914)))

(declare-fun bs!1156797 () Bool)

(assert (= bs!1156797 (and b!4798785 b!4798673)))

(assert (=> bs!1156797 (= lambda!231963 lambda!231919)))

(declare-fun b!4798781 () Bool)

(declare-fun e!2996577 () List!54425)

(assert (=> b!4798781 (= e!2996577 Nil!54301)))

(declare-fun b!4798782 () Bool)

(assert (=> b!4798782 false))

(declare-fun e!2996578 () Unit!140435)

(declare-fun Unit!140507 () Unit!140435)

(assert (=> b!4798782 (= e!2996578 Unit!140507)))

(declare-fun b!4798783 () Bool)

(declare-fun Unit!140508 () Unit!140435)

(assert (=> b!4798783 (= e!2996578 Unit!140508)))

(declare-fun res!2040692 () Bool)

(declare-fun e!2996579 () Bool)

(assert (=> b!4798784 (=> (not res!2040692) (not e!2996579))))

(declare-fun lt!1955236 () List!54425)

(assert (=> b!4798784 (= res!2040692 (forall!12311 lt!1955236 lambda!231962))))

(assert (=> b!4798786 (= e!2996577 (Cons!54301 (_1!31786 (h!60730 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))))) (getKeysList!1092 (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824)))))))))

(declare-fun c!817893 () Bool)

(assert (=> b!4798786 (= c!817893 (containsKey!4011 (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824)))) (_1!31786 (h!60730 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824)))))))))

(declare-fun lt!1955237 () Unit!140435)

(assert (=> b!4798786 (= lt!1955237 e!2996578)))

(declare-fun c!817894 () Bool)

(assert (=> b!4798786 (= c!817894 (contains!17948 (getKeysList!1092 (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))))) (_1!31786 (h!60730 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824)))))))))

(declare-fun lt!1955235 () Unit!140435)

(declare-fun e!2996576 () Unit!140435)

(assert (=> b!4798786 (= lt!1955235 e!2996576)))

(declare-fun lt!1955234 () List!54425)

(assert (=> b!4798786 (= lt!1955234 (getKeysList!1092 (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))))))))

(declare-fun lt!1955231 () Unit!140435)

(assert (=> b!4798786 (= lt!1955231 (lemmaForallContainsAddHeadPreserves!344 (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824)))) lt!1955234 (h!60730 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))))))))

(assert (=> b!4798786 (forall!12311 lt!1955234 lambda!231961)))

(declare-fun lt!1955233 () Unit!140435)

(assert (=> b!4798786 (= lt!1955233 lt!1955231)))

(declare-fun d!1536054 () Bool)

(assert (=> d!1536054 e!2996579))

(declare-fun res!2040691 () Bool)

(assert (=> d!1536054 (=> (not res!2040691) (not e!2996579))))

(assert (=> d!1536054 (= res!2040691 (noDuplicate!929 lt!1955236))))

(assert (=> d!1536054 (= lt!1955236 e!2996577)))

(declare-fun c!817895 () Bool)

(assert (=> d!1536054 (= c!817895 ((_ is Cons!54298) (toList!6988 (extractMap!2481 (toList!6987 lt!1954824)))))))

(assert (=> d!1536054 (invariantList!1746 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))))))

(assert (=> d!1536054 (= (getKeysList!1092 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824)))) lt!1955236)))

(assert (=> b!4798785 (= e!2996579 (= (content!9735 lt!1955236) (content!9735 (map!12267 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))) lambda!231963))))))

(declare-fun b!4798787 () Bool)

(declare-fun res!2040693 () Bool)

(assert (=> b!4798787 (=> (not res!2040693) (not e!2996579))))

(assert (=> b!4798787 (= res!2040693 (= (length!714 lt!1955236) (length!715 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))))))))

(assert (=> b!4798788 false))

(declare-fun lt!1955232 () Unit!140435)

(assert (=> b!4798788 (= lt!1955232 (forallContained!4201 (getKeysList!1092 (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))))) lambda!231960 (_1!31786 (h!60730 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824)))))))))

(declare-fun Unit!140509 () Unit!140435)

(assert (=> b!4798788 (= e!2996576 Unit!140509)))

(declare-fun b!4798789 () Bool)

(declare-fun Unit!140510 () Unit!140435)

(assert (=> b!4798789 (= e!2996576 Unit!140510)))

(assert (= (and d!1536054 c!817895) b!4798786))

(assert (= (and d!1536054 (not c!817895)) b!4798781))

(assert (= (and b!4798786 c!817893) b!4798782))

(assert (= (and b!4798786 (not c!817893)) b!4798783))

(assert (= (and b!4798786 c!817894) b!4798788))

(assert (= (and b!4798786 (not c!817894)) b!4798789))

(assert (= (and d!1536054 res!2040691) b!4798787))

(assert (= (and b!4798787 res!2040693) b!4798784))

(assert (= (and b!4798784 res!2040692) b!4798785))

(declare-fun m!5781734 () Bool)

(assert (=> b!4798785 m!5781734))

(declare-fun m!5781736 () Bool)

(assert (=> b!4798785 m!5781736))

(assert (=> b!4798785 m!5781736))

(declare-fun m!5781738 () Bool)

(assert (=> b!4798785 m!5781738))

(declare-fun m!5781740 () Bool)

(assert (=> b!4798787 m!5781740))

(assert (=> b!4798787 m!5781388))

(declare-fun m!5781742 () Bool)

(assert (=> b!4798788 m!5781742))

(assert (=> b!4798788 m!5781742))

(declare-fun m!5781744 () Bool)

(assert (=> b!4798788 m!5781744))

(declare-fun m!5781746 () Bool)

(assert (=> b!4798784 m!5781746))

(declare-fun m!5781748 () Bool)

(assert (=> d!1536054 m!5781748))

(assert (=> d!1536054 m!5781692))

(assert (=> b!4798786 m!5781742))

(declare-fun m!5781750 () Bool)

(assert (=> b!4798786 m!5781750))

(assert (=> b!4798786 m!5781742))

(declare-fun m!5781752 () Bool)

(assert (=> b!4798786 m!5781752))

(declare-fun m!5781754 () Bool)

(assert (=> b!4798786 m!5781754))

(declare-fun m!5781756 () Bool)

(assert (=> b!4798786 m!5781756))

(assert (=> b!4798319 d!1536054))

(assert (=> b!4798372 d!1536052))

(declare-fun d!1536056 () Bool)

(assert (=> d!1536056 (containsKey!4011 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))) key!5896)))

(declare-fun lt!1955240 () Unit!140435)

(declare-fun choose!34646 (List!54422 K!15874) Unit!140435)

(assert (=> d!1536056 (= lt!1955240 (choose!34646 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))) key!5896))))

(assert (=> d!1536056 (invariantList!1746 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))))))

(assert (=> d!1536056 (= (lemmaInGetKeysListThenContainsKey!1092 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))) key!5896) lt!1955240)))

(declare-fun bs!1156798 () Bool)

(assert (= bs!1156798 d!1536056))

(assert (=> bs!1156798 m!5781108))

(declare-fun m!5781758 () Bool)

(assert (=> bs!1156798 m!5781758))

(assert (=> bs!1156798 m!5781492))

(assert (=> b!4798372 d!1536056))

(declare-fun d!1536058 () Bool)

(declare-fun res!2040694 () Bool)

(declare-fun e!2996580 () Bool)

(assert (=> d!1536058 (=> res!2040694 e!2996580)))

(assert (=> d!1536058 (= res!2040694 (and ((_ is Cons!54298) (toList!6988 (extractMap!2481 (toList!6987 lt!1954824)))) (= (_1!31786 (h!60730 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))))) key!5896)))))

(assert (=> d!1536058 (= (containsKey!4011 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))) key!5896) e!2996580)))

(declare-fun b!4798790 () Bool)

(declare-fun e!2996581 () Bool)

(assert (=> b!4798790 (= e!2996580 e!2996581)))

(declare-fun res!2040695 () Bool)

(assert (=> b!4798790 (=> (not res!2040695) (not e!2996581))))

(assert (=> b!4798790 (= res!2040695 ((_ is Cons!54298) (toList!6988 (extractMap!2481 (toList!6987 lt!1954824)))))))

(declare-fun b!4798791 () Bool)

(assert (=> b!4798791 (= e!2996581 (containsKey!4011 (t!361872 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824)))) key!5896))))

(assert (= (and d!1536058 (not res!2040694)) b!4798790))

(assert (= (and b!4798790 res!2040695) b!4798791))

(declare-fun m!5781760 () Bool)

(assert (=> b!4798791 m!5781760))

(assert (=> d!1535758 d!1536058))

(declare-fun d!1536060 () Bool)

(declare-fun c!817896 () Bool)

(declare-fun e!2996583 () Bool)

(assert (=> d!1536060 (= c!817896 e!2996583)))

(declare-fun res!2040696 () Bool)

(assert (=> d!1536060 (=> (not res!2040696) (not e!2996583))))

(assert (=> d!1536060 (= res!2040696 ((_ is Cons!54299) (t!361873 (toList!6987 lm!2473))))))

(declare-fun e!2996582 () V!16120)

(assert (=> d!1536060 (= (getValue!142 (t!361873 (toList!6987 lm!2473)) key!5896) e!2996582)))

(declare-fun b!4798794 () Bool)

(assert (=> b!4798794 (= e!2996583 (containsKey!4008 (_2!31787 (h!60731 (t!361873 (toList!6987 lm!2473)))) key!5896))))

(declare-fun b!4798792 () Bool)

(assert (=> b!4798792 (= e!2996582 (_2!31786 (get!18531 (getPair!926 (_2!31787 (h!60731 (t!361873 (toList!6987 lm!2473)))) key!5896))))))

(declare-fun b!4798793 () Bool)

(assert (=> b!4798793 (= e!2996582 (getValue!142 (t!361873 (t!361873 (toList!6987 lm!2473))) key!5896))))

(assert (= (and d!1536060 res!2040696) b!4798794))

(assert (= (and d!1536060 c!817896) b!4798792))

(assert (= (and d!1536060 (not c!817896)) b!4798793))

(assert (=> b!4798794 m!5781636))

(declare-fun m!5781762 () Bool)

(assert (=> b!4798792 m!5781762))

(assert (=> b!4798792 m!5781762))

(declare-fun m!5781764 () Bool)

(assert (=> b!4798792 m!5781764))

(declare-fun m!5781766 () Bool)

(assert (=> b!4798793 m!5781766))

(assert (=> b!4798364 d!1536060))

(assert (=> b!4798320 d!1535928))

(declare-fun d!1536062 () Bool)

(assert (=> d!1536062 (= (isDefined!10299 lt!1954833) (not (isEmpty!29484 lt!1954833)))))

(declare-fun bs!1156799 () Bool)

(assert (= bs!1156799 d!1536062))

(assert (=> bs!1156799 m!5780868))

(assert (=> b!4798166 d!1536062))

(declare-fun d!1536064 () Bool)

(assert (=> d!1536064 (= (invariantList!1746 (toList!6988 lt!1954924)) (noDuplicatedKeys!448 (toList!6988 lt!1954924)))))

(declare-fun bs!1156800 () Bool)

(assert (= bs!1156800 d!1536064))

(declare-fun m!5781768 () Bool)

(assert (=> bs!1156800 m!5781768))

(assert (=> d!1535784 d!1536064))

(declare-fun d!1536066 () Bool)

(declare-fun res!2040697 () Bool)

(declare-fun e!2996584 () Bool)

(assert (=> d!1536066 (=> res!2040697 e!2996584)))

(assert (=> d!1536066 (= res!2040697 ((_ is Nil!54299) (toList!6987 lt!1954824)))))

(assert (=> d!1536066 (= (forall!12309 (toList!6987 lt!1954824) lambda!231829) e!2996584)))

(declare-fun b!4798795 () Bool)

(declare-fun e!2996585 () Bool)

(assert (=> b!4798795 (= e!2996584 e!2996585)))

(declare-fun res!2040698 () Bool)

(assert (=> b!4798795 (=> (not res!2040698) (not e!2996585))))

(assert (=> b!4798795 (= res!2040698 (dynLambda!22086 lambda!231829 (h!60731 (toList!6987 lt!1954824))))))

(declare-fun b!4798796 () Bool)

(assert (=> b!4798796 (= e!2996585 (forall!12309 (t!361873 (toList!6987 lt!1954824)) lambda!231829))))

(assert (= (and d!1536066 (not res!2040697)) b!4798795))

(assert (= (and b!4798795 res!2040698) b!4798796))

(declare-fun b_lambda!187381 () Bool)

(assert (=> (not b_lambda!187381) (not b!4798795)))

(declare-fun m!5781770 () Bool)

(assert (=> b!4798795 m!5781770))

(declare-fun m!5781772 () Bool)

(assert (=> b!4798796 m!5781772))

(assert (=> d!1535784 d!1536066))

(declare-fun d!1536068 () Bool)

(declare-fun lt!1955241 () Bool)

(assert (=> d!1536068 (= lt!1955241 (select (content!9735 (keys!19845 (extractMap!2481 (toList!6987 lm!2473)))) key!5896))))

(declare-fun e!2996586 () Bool)

(assert (=> d!1536068 (= lt!1955241 e!2996586)))

(declare-fun res!2040699 () Bool)

(assert (=> d!1536068 (=> (not res!2040699) (not e!2996586))))

(assert (=> d!1536068 (= res!2040699 ((_ is Cons!54301) (keys!19845 (extractMap!2481 (toList!6987 lm!2473)))))))

(assert (=> d!1536068 (= (contains!17948 (keys!19845 (extractMap!2481 (toList!6987 lm!2473))) key!5896) lt!1955241)))

(declare-fun b!4798797 () Bool)

(declare-fun e!2996587 () Bool)

(assert (=> b!4798797 (= e!2996586 e!2996587)))

(declare-fun res!2040700 () Bool)

(assert (=> b!4798797 (=> res!2040700 e!2996587)))

(assert (=> b!4798797 (= res!2040700 (= (h!60733 (keys!19845 (extractMap!2481 (toList!6987 lm!2473)))) key!5896))))

(declare-fun b!4798798 () Bool)

(assert (=> b!4798798 (= e!2996587 (contains!17948 (t!361875 (keys!19845 (extractMap!2481 (toList!6987 lm!2473)))) key!5896))))

(assert (= (and d!1536068 res!2040699) b!4798797))

(assert (= (and b!4798797 (not res!2040700)) b!4798798))

(assert (=> d!1536068 m!5781104))

(declare-fun m!5781774 () Bool)

(assert (=> d!1536068 m!5781774))

(declare-fun m!5781776 () Bool)

(assert (=> d!1536068 m!5781776))

(declare-fun m!5781778 () Bool)

(assert (=> b!4798798 m!5781778))

(assert (=> b!4798376 d!1536068))

(assert (=> b!4798376 d!1535958))

(declare-fun d!1536070 () Bool)

(declare-fun res!2040701 () Bool)

(declare-fun e!2996588 () Bool)

(assert (=> d!1536070 (=> res!2040701 e!2996588)))

(assert (=> d!1536070 (= res!2040701 (and ((_ is Cons!54298) (apply!13027 lm!2473 lt!1954825)) (= (_1!31786 (h!60730 (apply!13027 lm!2473 lt!1954825))) key!5896)))))

(assert (=> d!1536070 (= (containsKey!4008 (apply!13027 lm!2473 lt!1954825) key!5896) e!2996588)))

(declare-fun b!4798799 () Bool)

(declare-fun e!2996589 () Bool)

(assert (=> b!4798799 (= e!2996588 e!2996589)))

(declare-fun res!2040702 () Bool)

(assert (=> b!4798799 (=> (not res!2040702) (not e!2996589))))

(assert (=> b!4798799 (= res!2040702 ((_ is Cons!54298) (apply!13027 lm!2473 lt!1954825)))))

(declare-fun b!4798800 () Bool)

(assert (=> b!4798800 (= e!2996589 (containsKey!4008 (t!361872 (apply!13027 lm!2473 lt!1954825)) key!5896))))

(assert (= (and d!1536070 (not res!2040701)) b!4798799))

(assert (= (and b!4798799 res!2040702) b!4798800))

(declare-fun m!5781780 () Bool)

(assert (=> b!4798800 m!5781780))

(assert (=> b!4798168 d!1536070))

(assert (=> d!1535738 d!1535758))

(assert (=> d!1535738 d!1535784))

(declare-fun d!1536072 () Bool)

(assert (=> d!1536072 (not (contains!17944 (extractMap!2481 (toList!6987 lt!1954824)) key!5896))))

(assert (=> d!1536072 true))

(declare-fun _$28!835 () Unit!140435)

(assert (=> d!1536072 (= (choose!34635 lt!1954824 key!5896 hashF!1559) _$28!835)))

(declare-fun bs!1156801 () Bool)

(assert (= bs!1156801 d!1536072))

(assert (=> bs!1156801 m!5780818))

(assert (=> bs!1156801 m!5780818))

(assert (=> bs!1156801 m!5780820))

(assert (=> d!1535738 d!1536072))

(declare-fun d!1536074 () Bool)

(declare-fun res!2040703 () Bool)

(declare-fun e!2996590 () Bool)

(assert (=> d!1536074 (=> res!2040703 e!2996590)))

(assert (=> d!1536074 (= res!2040703 ((_ is Nil!54299) (toList!6987 lt!1954824)))))

(assert (=> d!1536074 (= (forall!12309 (toList!6987 lt!1954824) lambda!231820) e!2996590)))

(declare-fun b!4798801 () Bool)

(declare-fun e!2996591 () Bool)

(assert (=> b!4798801 (= e!2996590 e!2996591)))

(declare-fun res!2040704 () Bool)

(assert (=> b!4798801 (=> (not res!2040704) (not e!2996591))))

(assert (=> b!4798801 (= res!2040704 (dynLambda!22086 lambda!231820 (h!60731 (toList!6987 lt!1954824))))))

(declare-fun b!4798802 () Bool)

(assert (=> b!4798802 (= e!2996591 (forall!12309 (t!361873 (toList!6987 lt!1954824)) lambda!231820))))

(assert (= (and d!1536074 (not res!2040703)) b!4798801))

(assert (= (and b!4798801 res!2040704) b!4798802))

(declare-fun b_lambda!187383 () Bool)

(assert (=> (not b_lambda!187383) (not b!4798801)))

(declare-fun m!5781782 () Bool)

(assert (=> b!4798801 m!5781782))

(declare-fun m!5781784 () Bool)

(assert (=> b!4798802 m!5781784))

(assert (=> d!1535738 d!1536074))

(declare-fun d!1536076 () Bool)

(declare-fun lt!1955242 () Bool)

(assert (=> d!1536076 (= lt!1955242 (select (content!9735 e!2996303) key!5896))))

(declare-fun e!2996592 () Bool)

(assert (=> d!1536076 (= lt!1955242 e!2996592)))

(declare-fun res!2040705 () Bool)

(assert (=> d!1536076 (=> (not res!2040705) (not e!2996592))))

(assert (=> d!1536076 (= res!2040705 ((_ is Cons!54301) e!2996303))))

(assert (=> d!1536076 (= (contains!17948 e!2996303 key!5896) lt!1955242)))

(declare-fun b!4798803 () Bool)

(declare-fun e!2996593 () Bool)

(assert (=> b!4798803 (= e!2996592 e!2996593)))

(declare-fun res!2040706 () Bool)

(assert (=> b!4798803 (=> res!2040706 e!2996593)))

(assert (=> b!4798803 (= res!2040706 (= (h!60733 e!2996303) key!5896))))

(declare-fun b!4798804 () Bool)

(assert (=> b!4798804 (= e!2996593 (contains!17948 (t!361875 e!2996303) key!5896))))

(assert (= (and d!1536076 res!2040705) b!4798803))

(assert (= (and b!4798803 (not res!2040706)) b!4798804))

(declare-fun m!5781786 () Bool)

(assert (=> d!1536076 m!5781786))

(declare-fun m!5781788 () Bool)

(assert (=> d!1536076 m!5781788))

(declare-fun m!5781790 () Bool)

(assert (=> b!4798804 m!5781790))

(assert (=> bm!335263 d!1536076))

(declare-fun b!4798805 () Bool)

(declare-fun e!2996597 () Option!13158)

(assert (=> b!4798805 (= e!2996597 None!13157)))

(declare-fun b!4798806 () Bool)

(declare-fun e!2996598 () Bool)

(declare-fun e!2996595 () Bool)

(assert (=> b!4798806 (= e!2996598 e!2996595)))

(declare-fun res!2040709 () Bool)

(assert (=> b!4798806 (=> (not res!2040709) (not e!2996595))))

(declare-fun lt!1955243 () Option!13158)

(assert (=> b!4798806 (= res!2040709 (isDefined!10299 lt!1955243))))

(declare-fun b!4798807 () Bool)

(declare-fun e!2996596 () Option!13158)

(assert (=> b!4798807 (= e!2996596 (Some!13157 (h!60730 (t!361872 (apply!13027 lm!2473 lt!1954825)))))))

(declare-fun e!2996594 () Bool)

(declare-fun b!4798808 () Bool)

(assert (=> b!4798808 (= e!2996594 (not (containsKey!4008 (t!361872 (apply!13027 lm!2473 lt!1954825)) key!5896)))))

(declare-fun b!4798809 () Bool)

(assert (=> b!4798809 (= e!2996595 (contains!17947 (t!361872 (apply!13027 lm!2473 lt!1954825)) (get!18531 lt!1955243)))))

(declare-fun b!4798810 () Bool)

(assert (=> b!4798810 (= e!2996597 (getPair!926 (t!361872 (t!361872 (apply!13027 lm!2473 lt!1954825))) key!5896))))

(declare-fun b!4798811 () Bool)

(assert (=> b!4798811 (= e!2996596 e!2996597)))

(declare-fun c!817897 () Bool)

(assert (=> b!4798811 (= c!817897 ((_ is Cons!54298) (t!361872 (apply!13027 lm!2473 lt!1954825))))))

(declare-fun b!4798812 () Bool)

(declare-fun res!2040707 () Bool)

(assert (=> b!4798812 (=> (not res!2040707) (not e!2996595))))

(assert (=> b!4798812 (= res!2040707 (= (_1!31786 (get!18531 lt!1955243)) key!5896))))

(declare-fun d!1536078 () Bool)

(assert (=> d!1536078 e!2996598))

(declare-fun res!2040708 () Bool)

(assert (=> d!1536078 (=> res!2040708 e!2996598)))

(assert (=> d!1536078 (= res!2040708 e!2996594)))

(declare-fun res!2040710 () Bool)

(assert (=> d!1536078 (=> (not res!2040710) (not e!2996594))))

(assert (=> d!1536078 (= res!2040710 (isEmpty!29484 lt!1955243))))

(assert (=> d!1536078 (= lt!1955243 e!2996596)))

(declare-fun c!817898 () Bool)

(assert (=> d!1536078 (= c!817898 (and ((_ is Cons!54298) (t!361872 (apply!13027 lm!2473 lt!1954825))) (= (_1!31786 (h!60730 (t!361872 (apply!13027 lm!2473 lt!1954825)))) key!5896)))))

(assert (=> d!1536078 (noDuplicateKeys!2355 (t!361872 (apply!13027 lm!2473 lt!1954825)))))

(assert (=> d!1536078 (= (getPair!926 (t!361872 (apply!13027 lm!2473 lt!1954825)) key!5896) lt!1955243)))

(assert (= (and d!1536078 c!817898) b!4798807))

(assert (= (and d!1536078 (not c!817898)) b!4798811))

(assert (= (and b!4798811 c!817897) b!4798810))

(assert (= (and b!4798811 (not c!817897)) b!4798805))

(assert (= (and d!1536078 res!2040710) b!4798808))

(assert (= (and d!1536078 (not res!2040708)) b!4798806))

(assert (= (and b!4798806 res!2040709) b!4798812))

(assert (= (and b!4798812 res!2040707) b!4798809))

(declare-fun m!5781792 () Bool)

(assert (=> b!4798809 m!5781792))

(assert (=> b!4798809 m!5781792))

(declare-fun m!5781794 () Bool)

(assert (=> b!4798809 m!5781794))

(declare-fun m!5781796 () Bool)

(assert (=> d!1536078 m!5781796))

(assert (=> d!1536078 m!5781634))

(declare-fun m!5781798 () Bool)

(assert (=> b!4798806 m!5781798))

(declare-fun m!5781800 () Bool)

(assert (=> b!4798810 m!5781800))

(assert (=> b!4798812 m!5781792))

(assert (=> b!4798808 m!5781780))

(assert (=> b!4798170 d!1536078))

(assert (=> b!4798379 d!1536068))

(assert (=> b!4798379 d!1535958))

(assert (=> b!4798172 d!1535970))

(declare-fun d!1536080 () Bool)

(assert (=> d!1536080 (isDefined!10303 (getValueByKey!2382 (toList!6987 lm!2473) lt!1954825))))

(declare-fun lt!1955246 () Unit!140435)

(declare-fun choose!34647 (List!54423 (_ BitVec 64)) Unit!140435)

(assert (=> d!1536080 (= lt!1955246 (choose!34647 (toList!6987 lm!2473) lt!1954825))))

(declare-fun e!2996601 () Bool)

(assert (=> d!1536080 e!2996601))

(declare-fun res!2040713 () Bool)

(assert (=> d!1536080 (=> (not res!2040713) (not e!2996601))))

(assert (=> d!1536080 (= res!2040713 (isStrictlySorted!893 (toList!6987 lm!2473)))))

(assert (=> d!1536080 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2174 (toList!6987 lm!2473) lt!1954825) lt!1955246)))

(declare-fun b!4798815 () Bool)

(assert (=> b!4798815 (= e!2996601 (containsKey!4012 (toList!6987 lm!2473) lt!1954825))))

(assert (= (and d!1536080 res!2040713) b!4798815))

(assert (=> d!1536080 m!5780878))

(assert (=> d!1536080 m!5780878))

(assert (=> d!1536080 m!5781062))

(declare-fun m!5781802 () Bool)

(assert (=> d!1536080 m!5781802))

(assert (=> d!1536080 m!5781056))

(assert (=> b!4798815 m!5781058))

(assert (=> b!4798342 d!1536080))

(declare-fun d!1536082 () Bool)

(assert (=> d!1536082 (= (isDefined!10303 (getValueByKey!2382 (toList!6987 lm!2473) lt!1954825)) (not (isEmpty!29487 (getValueByKey!2382 (toList!6987 lm!2473) lt!1954825))))))

(declare-fun bs!1156802 () Bool)

(assert (= bs!1156802 d!1536082))

(assert (=> bs!1156802 m!5780878))

(declare-fun m!5781804 () Bool)

(assert (=> bs!1156802 m!5781804))

(assert (=> b!4798342 d!1536082))

(declare-fun d!1536084 () Bool)

(declare-fun c!817899 () Bool)

(assert (=> d!1536084 (= c!817899 (and ((_ is Cons!54299) (toList!6987 lm!2473)) (= (_1!31787 (h!60731 (toList!6987 lm!2473))) lt!1954825)))))

(declare-fun e!2996602 () Option!13161)

(assert (=> d!1536084 (= (getValueByKey!2382 (toList!6987 lm!2473) lt!1954825) e!2996602)))

(declare-fun b!4798816 () Bool)

(assert (=> b!4798816 (= e!2996602 (Some!13160 (_2!31787 (h!60731 (toList!6987 lm!2473)))))))

(declare-fun b!4798818 () Bool)

(declare-fun e!2996603 () Option!13161)

(assert (=> b!4798818 (= e!2996603 (getValueByKey!2382 (t!361873 (toList!6987 lm!2473)) lt!1954825))))

(declare-fun b!4798819 () Bool)

(assert (=> b!4798819 (= e!2996603 None!13160)))

(declare-fun b!4798817 () Bool)

(assert (=> b!4798817 (= e!2996602 e!2996603)))

(declare-fun c!817900 () Bool)

(assert (=> b!4798817 (= c!817900 (and ((_ is Cons!54299) (toList!6987 lm!2473)) (not (= (_1!31787 (h!60731 (toList!6987 lm!2473))) lt!1954825))))))

(assert (= (and d!1536084 c!817899) b!4798816))

(assert (= (and d!1536084 (not c!817899)) b!4798817))

(assert (= (and b!4798817 c!817900) b!4798818))

(assert (= (and b!4798817 (not c!817900)) b!4798819))

(declare-fun m!5781806 () Bool)

(assert (=> b!4798818 m!5781806))

(assert (=> b!4798342 d!1536084))

(assert (=> b!4798344 d!1536082))

(assert (=> b!4798344 d!1536084))

(assert (=> b!4798314 d!1536058))

(declare-fun d!1536086 () Bool)

(assert (=> d!1536086 (containsKey!4011 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))) key!5896)))

(declare-fun lt!1955247 () Unit!140435)

(assert (=> d!1536086 (= lt!1955247 (choose!34646 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))) key!5896))))

(assert (=> d!1536086 (invariantList!1746 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))))))

(assert (=> d!1536086 (= (lemmaInGetKeysListThenContainsKey!1092 (toList!6988 (extractMap!2481 (toList!6987 lt!1954824))) key!5896) lt!1955247)))

(declare-fun bs!1156803 () Bool)

(assert (= bs!1156803 d!1536086))

(assert (=> bs!1156803 m!5781026))

(declare-fun m!5781808 () Bool)

(assert (=> bs!1156803 m!5781808))

(assert (=> bs!1156803 m!5781692))

(assert (=> b!4798314 d!1536086))

(declare-fun d!1536088 () Bool)

(assert (=> d!1536088 (= (get!18532 (getValueByKey!2382 (toList!6987 lm!2473) lt!1954825)) (v!48473 (getValueByKey!2382 (toList!6987 lm!2473) lt!1954825)))))

(assert (=> d!1535736 d!1536088))

(assert (=> d!1535736 d!1536084))

(declare-fun d!1536090 () Bool)

(declare-fun e!2996604 () Bool)

(assert (=> d!1536090 e!2996604))

(declare-fun res!2040714 () Bool)

(assert (=> d!1536090 (=> res!2040714 e!2996604)))

(declare-fun lt!1955248 () Bool)

(assert (=> d!1536090 (= res!2040714 (not lt!1955248))))

(declare-fun lt!1955251 () Bool)

(assert (=> d!1536090 (= lt!1955248 lt!1955251)))

(declare-fun lt!1955250 () Unit!140435)

(declare-fun e!2996605 () Unit!140435)

(assert (=> d!1536090 (= lt!1955250 e!2996605)))

(declare-fun c!817901 () Bool)

(assert (=> d!1536090 (= c!817901 lt!1955251)))

(assert (=> d!1536090 (= lt!1955251 (containsKey!4012 (toList!6987 lm!2473) (hash!5003 hashF!1559 key!5896)))))

(assert (=> d!1536090 (= (contains!17943 lm!2473 (hash!5003 hashF!1559 key!5896)) lt!1955248)))

(declare-fun b!4798820 () Bool)

(declare-fun lt!1955249 () Unit!140435)

(assert (=> b!4798820 (= e!2996605 lt!1955249)))

(assert (=> b!4798820 (= lt!1955249 (lemmaContainsKeyImpliesGetValueByKeyDefined!2174 (toList!6987 lm!2473) (hash!5003 hashF!1559 key!5896)))))

(assert (=> b!4798820 (isDefined!10303 (getValueByKey!2382 (toList!6987 lm!2473) (hash!5003 hashF!1559 key!5896)))))

(declare-fun b!4798821 () Bool)

(declare-fun Unit!140511 () Unit!140435)

(assert (=> b!4798821 (= e!2996605 Unit!140511)))

(declare-fun b!4798822 () Bool)

(assert (=> b!4798822 (= e!2996604 (isDefined!10303 (getValueByKey!2382 (toList!6987 lm!2473) (hash!5003 hashF!1559 key!5896))))))

(assert (= (and d!1536090 c!817901) b!4798820))

(assert (= (and d!1536090 (not c!817901)) b!4798821))

(assert (= (and d!1536090 (not res!2040714)) b!4798822))

(assert (=> d!1536090 m!5780846))

(declare-fun m!5781810 () Bool)

(assert (=> d!1536090 m!5781810))

(assert (=> b!4798820 m!5780846))

(declare-fun m!5781812 () Bool)

(assert (=> b!4798820 m!5781812))

(assert (=> b!4798820 m!5780846))

(assert (=> b!4798820 m!5781724))

(assert (=> b!4798820 m!5781724))

(declare-fun m!5781814 () Bool)

(assert (=> b!4798820 m!5781814))

(assert (=> b!4798822 m!5780846))

(assert (=> b!4798822 m!5781724))

(assert (=> b!4798822 m!5781724))

(assert (=> b!4798822 m!5781814))

(assert (=> d!1535798 d!1536090))

(assert (=> d!1535798 d!1535802))

(declare-fun d!1536092 () Bool)

(declare-fun e!2996608 () Bool)

(assert (=> d!1536092 e!2996608))

(declare-fun res!2040717 () Bool)

(assert (=> d!1536092 (=> (not res!2040717) (not e!2996608))))

(assert (=> d!1536092 (= res!2040717 (contains!17943 lm!2473 (hash!5003 hashF!1559 key!5896)))))

(assert (=> d!1536092 true))

(declare-fun _$5!244 () Unit!140435)

(assert (=> d!1536092 (= (choose!34637 lm!2473 key!5896 hashF!1559) _$5!244)))

(declare-fun b!4798825 () Bool)

(assert (=> b!4798825 (= e!2996608 (isDefined!10299 (getPair!926 (apply!13027 lm!2473 (hash!5003 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1536092 res!2040717) b!4798825))

(assert (=> d!1536092 m!5780846))

(assert (=> d!1536092 m!5780846))

(assert (=> d!1536092 m!5781070))

(assert (=> b!4798825 m!5780846))

(assert (=> b!4798825 m!5780846))

(assert (=> b!4798825 m!5781076))

(assert (=> b!4798825 m!5781076))

(assert (=> b!4798825 m!5781078))

(assert (=> b!4798825 m!5781078))

(assert (=> b!4798825 m!5781080))

(assert (=> d!1535798 d!1536092))

(declare-fun d!1536094 () Bool)

(declare-fun res!2040718 () Bool)

(declare-fun e!2996609 () Bool)

(assert (=> d!1536094 (=> res!2040718 e!2996609)))

(assert (=> d!1536094 (= res!2040718 ((_ is Nil!54299) (toList!6987 lm!2473)))))

(assert (=> d!1536094 (= (forall!12309 (toList!6987 lm!2473) lambda!231838) e!2996609)))

(declare-fun b!4798826 () Bool)

(declare-fun e!2996610 () Bool)

(assert (=> b!4798826 (= e!2996609 e!2996610)))

(declare-fun res!2040719 () Bool)

(assert (=> b!4798826 (=> (not res!2040719) (not e!2996610))))

(assert (=> b!4798826 (= res!2040719 (dynLambda!22086 lambda!231838 (h!60731 (toList!6987 lm!2473))))))

(declare-fun b!4798827 () Bool)

(assert (=> b!4798827 (= e!2996610 (forall!12309 (t!361873 (toList!6987 lm!2473)) lambda!231838))))

(assert (= (and d!1536094 (not res!2040718)) b!4798826))

(assert (= (and b!4798826 res!2040719) b!4798827))

(declare-fun b_lambda!187385 () Bool)

(assert (=> (not b_lambda!187385) (not b!4798826)))

(declare-fun m!5781816 () Bool)

(assert (=> b!4798826 m!5781816))

(declare-fun m!5781818 () Bool)

(assert (=> b!4798827 m!5781818))

(assert (=> d!1535798 d!1536094))

(declare-fun d!1536096 () Bool)

(assert (=> d!1536096 (isDefined!10302 (getValueByKey!2383 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))) key!5896))))

(declare-fun lt!1955252 () Unit!140435)

(assert (=> d!1536096 (= lt!1955252 (choose!34644 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))) key!5896))))

(assert (=> d!1536096 (invariantList!1746 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))))))

(assert (=> d!1536096 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2173 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))) key!5896) lt!1955252)))

(declare-fun bs!1156804 () Bool)

(assert (= bs!1156804 d!1536096))

(assert (=> bs!1156804 m!5781110))

(assert (=> bs!1156804 m!5781110))

(assert (=> bs!1156804 m!5781112))

(declare-fun m!5781820 () Bool)

(assert (=> bs!1156804 m!5781820))

(assert (=> bs!1156804 m!5781492))

(assert (=> b!4798371 d!1536096))

(assert (=> b!4798371 d!1535922))

(assert (=> b!4798371 d!1535924))

(declare-fun d!1536098 () Bool)

(assert (=> d!1536098 (contains!17948 (getKeysList!1092 (toList!6988 (extractMap!2481 (toList!6987 lm!2473)))) key!5896)))

(declare-fun lt!1955253 () Unit!140435)

(assert (=> d!1536098 (= lt!1955253 (choose!34645 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))) key!5896))))

(assert (=> d!1536098 (invariantList!1746 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))))))

(assert (=> d!1536098 (= (lemmaInListThenGetKeysListContains!1087 (toList!6988 (extractMap!2481 (toList!6987 lm!2473))) key!5896) lt!1955253)))

(declare-fun bs!1156805 () Bool)

(assert (= bs!1156805 d!1536098))

(assert (=> bs!1156805 m!5781122))

(assert (=> bs!1156805 m!5781122))

(declare-fun m!5781822 () Bool)

(assert (=> bs!1156805 m!5781822))

(declare-fun m!5781824 () Bool)

(assert (=> bs!1156805 m!5781824))

(assert (=> bs!1156805 m!5781492))

(assert (=> b!4798371 d!1536098))

(assert (=> b!4798318 d!1535926))

(assert (=> b!4798318 d!1535928))

(declare-fun d!1536100 () Bool)

(declare-fun res!2040720 () Bool)

(declare-fun e!2996611 () Bool)

(assert (=> d!1536100 (=> res!2040720 e!2996611)))

(assert (=> d!1536100 (= res!2040720 (not ((_ is Cons!54298) (_2!31787 (h!60731 (toList!6987 lm!2473))))))))

(assert (=> d!1536100 (= (noDuplicateKeys!2355 (_2!31787 (h!60731 (toList!6987 lm!2473)))) e!2996611)))

(declare-fun b!4798828 () Bool)

(declare-fun e!2996612 () Bool)

(assert (=> b!4798828 (= e!2996611 e!2996612)))

(declare-fun res!2040721 () Bool)

(assert (=> b!4798828 (=> (not res!2040721) (not e!2996612))))

(assert (=> b!4798828 (= res!2040721 (not (containsKey!4008 (t!361872 (_2!31787 (h!60731 (toList!6987 lm!2473)))) (_1!31786 (h!60730 (_2!31787 (h!60731 (toList!6987 lm!2473))))))))))

(declare-fun b!4798829 () Bool)

(assert (=> b!4798829 (= e!2996612 (noDuplicateKeys!2355 (t!361872 (_2!31787 (h!60731 (toList!6987 lm!2473))))))))

(assert (= (and d!1536100 (not res!2040720)) b!4798828))

(assert (= (and b!4798828 res!2040721) b!4798829))

(declare-fun m!5781826 () Bool)

(assert (=> b!4798828 m!5781826))

(declare-fun m!5781828 () Bool)

(assert (=> b!4798829 m!5781828))

(assert (=> bs!1156633 d!1536100))

(declare-fun d!1536102 () Bool)

(assert (=> d!1536102 (= (get!18531 (getPair!926 (_2!31787 (h!60731 (toList!6987 lm!2473))) key!5896)) (v!48470 (getPair!926 (_2!31787 (h!60731 (toList!6987 lm!2473))) key!5896)))))

(assert (=> b!4798363 d!1536102))

(declare-fun b!4798830 () Bool)

(declare-fun e!2996616 () Option!13158)

(assert (=> b!4798830 (= e!2996616 None!13157)))

(declare-fun b!4798831 () Bool)

(declare-fun e!2996617 () Bool)

(declare-fun e!2996614 () Bool)

(assert (=> b!4798831 (= e!2996617 e!2996614)))

(declare-fun res!2040724 () Bool)

(assert (=> b!4798831 (=> (not res!2040724) (not e!2996614))))

(declare-fun lt!1955254 () Option!13158)

(assert (=> b!4798831 (= res!2040724 (isDefined!10299 lt!1955254))))

(declare-fun b!4798832 () Bool)

(declare-fun e!2996615 () Option!13158)

(assert (=> b!4798832 (= e!2996615 (Some!13157 (h!60730 (_2!31787 (h!60731 (toList!6987 lm!2473))))))))

(declare-fun b!4798833 () Bool)

(declare-fun e!2996613 () Bool)

(assert (=> b!4798833 (= e!2996613 (not (containsKey!4008 (_2!31787 (h!60731 (toList!6987 lm!2473))) key!5896)))))

(declare-fun b!4798834 () Bool)

(assert (=> b!4798834 (= e!2996614 (contains!17947 (_2!31787 (h!60731 (toList!6987 lm!2473))) (get!18531 lt!1955254)))))

(declare-fun b!4798835 () Bool)

(assert (=> b!4798835 (= e!2996616 (getPair!926 (t!361872 (_2!31787 (h!60731 (toList!6987 lm!2473)))) key!5896))))

(declare-fun b!4798836 () Bool)

(assert (=> b!4798836 (= e!2996615 e!2996616)))

(declare-fun c!817902 () Bool)

(assert (=> b!4798836 (= c!817902 ((_ is Cons!54298) (_2!31787 (h!60731 (toList!6987 lm!2473)))))))

(declare-fun b!4798837 () Bool)

(declare-fun res!2040722 () Bool)

(assert (=> b!4798837 (=> (not res!2040722) (not e!2996614))))

(assert (=> b!4798837 (= res!2040722 (= (_1!31786 (get!18531 lt!1955254)) key!5896))))

(declare-fun d!1536104 () Bool)

(assert (=> d!1536104 e!2996617))

(declare-fun res!2040723 () Bool)

(assert (=> d!1536104 (=> res!2040723 e!2996617)))

(assert (=> d!1536104 (= res!2040723 e!2996613)))

(declare-fun res!2040725 () Bool)

(assert (=> d!1536104 (=> (not res!2040725) (not e!2996613))))

(assert (=> d!1536104 (= res!2040725 (isEmpty!29484 lt!1955254))))

(assert (=> d!1536104 (= lt!1955254 e!2996615)))

(declare-fun c!817903 () Bool)

(assert (=> d!1536104 (= c!817903 (and ((_ is Cons!54298) (_2!31787 (h!60731 (toList!6987 lm!2473)))) (= (_1!31786 (h!60730 (_2!31787 (h!60731 (toList!6987 lm!2473))))) key!5896)))))

(assert (=> d!1536104 (noDuplicateKeys!2355 (_2!31787 (h!60731 (toList!6987 lm!2473))))))

(assert (=> d!1536104 (= (getPair!926 (_2!31787 (h!60731 (toList!6987 lm!2473))) key!5896) lt!1955254)))

(assert (= (and d!1536104 c!817903) b!4798832))

(assert (= (and d!1536104 (not c!817903)) b!4798836))

(assert (= (and b!4798836 c!817902) b!4798835))

(assert (= (and b!4798836 (not c!817902)) b!4798830))

(assert (= (and d!1536104 res!2040725) b!4798833))

(assert (= (and d!1536104 (not res!2040723)) b!4798831))

(assert (= (and b!4798831 res!2040724) b!4798837))

(assert (= (and b!4798837 res!2040722) b!4798834))

(declare-fun m!5781830 () Bool)

(assert (=> b!4798834 m!5781830))

(assert (=> b!4798834 m!5781830))

(declare-fun m!5781832 () Bool)

(assert (=> b!4798834 m!5781832))

(declare-fun m!5781834 () Bool)

(assert (=> d!1536104 m!5781834))

(assert (=> d!1536104 m!5781136))

(declare-fun m!5781836 () Bool)

(assert (=> b!4798831 m!5781836))

(declare-fun m!5781838 () Bool)

(assert (=> b!4798835 m!5781838))

(assert (=> b!4798837 m!5781830))

(assert (=> b!4798833 m!5780834))

(assert (=> b!4798363 d!1536104))

(declare-fun d!1536106 () Bool)

(assert (=> d!1536106 (isDefined!10303 (getValueByKey!2382 (toList!6987 lt!1954824) lt!1954825))))

(declare-fun lt!1955255 () Unit!140435)

(assert (=> d!1536106 (= lt!1955255 (choose!34647 (toList!6987 lt!1954824) lt!1954825))))

(declare-fun e!2996618 () Bool)

(assert (=> d!1536106 e!2996618))

(declare-fun res!2040726 () Bool)

(assert (=> d!1536106 (=> (not res!2040726) (not e!2996618))))

(assert (=> d!1536106 (= res!2040726 (isStrictlySorted!893 (toList!6987 lt!1954824)))))

(assert (=> d!1536106 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2174 (toList!6987 lt!1954824) lt!1954825) lt!1955255)))

(declare-fun b!4798838 () Bool)

(assert (=> b!4798838 (= e!2996618 (containsKey!4012 (toList!6987 lt!1954824) lt!1954825))))

(assert (= (and d!1536106 res!2040726) b!4798838))

(assert (=> d!1536106 m!5781098))

(assert (=> d!1536106 m!5781098))

(assert (=> d!1536106 m!5781100))

(declare-fun m!5781840 () Bool)

(assert (=> d!1536106 m!5781840))

(declare-fun m!5781842 () Bool)

(assert (=> d!1536106 m!5781842))

(assert (=> b!4798838 m!5781094))

(assert (=> b!4798368 d!1536106))

(assert (=> b!4798368 d!1535916))

(assert (=> b!4798368 d!1535918))

(declare-fun tp!1358292 () Bool)

(declare-fun b!4798843 () Bool)

(declare-fun e!2996621 () Bool)

(assert (=> b!4798843 (= e!2996621 (and tp_is_empty!33677 tp_is_empty!33679 tp!1358292))))

(assert (=> b!4798392 (= tp!1358283 e!2996621)))

(assert (= (and b!4798392 ((_ is Cons!54298) (_2!31787 (h!60731 (toList!6987 lm!2473))))) b!4798843))

(declare-fun b!4798844 () Bool)

(declare-fun e!2996622 () Bool)

(declare-fun tp!1358293 () Bool)

(declare-fun tp!1358294 () Bool)

(assert (=> b!4798844 (= e!2996622 (and tp!1358293 tp!1358294))))

(assert (=> b!4798392 (= tp!1358284 e!2996622)))

(assert (= (and b!4798392 ((_ is Cons!54299) (t!361873 (toList!6987 lm!2473)))) b!4798844))

(declare-fun b_lambda!187387 () Bool)

(assert (= b_lambda!187351 (or start!494850 b_lambda!187387)))

(declare-fun bs!1156806 () Bool)

(declare-fun d!1536108 () Bool)

(assert (= bs!1156806 (and d!1536108 start!494850)))

(assert (=> bs!1156806 (= (dynLambda!22086 lambda!231807 (h!60731 (t!361873 (toList!6987 lt!1954824)))) (noDuplicateKeys!2355 (_2!31787 (h!60731 (t!361873 (toList!6987 lt!1954824))))))))

(declare-fun m!5781844 () Bool)

(assert (=> bs!1156806 m!5781844))

(assert (=> b!4798610 d!1536108))

(declare-fun b_lambda!187389 () Bool)

(assert (= b_lambda!187383 (or d!1535738 b_lambda!187389)))

(declare-fun bs!1156807 () Bool)

(declare-fun d!1536110 () Bool)

(assert (= bs!1156807 (and d!1536110 d!1535738)))

(assert (=> bs!1156807 (= (dynLambda!22086 lambda!231820 (h!60731 (toList!6987 lt!1954824))) (noDuplicateKeys!2355 (_2!31787 (h!60731 (toList!6987 lt!1954824)))))))

(assert (=> bs!1156807 m!5781134))

(assert (=> b!4798801 d!1536110))

(declare-fun b_lambda!187391 () Bool)

(assert (= b_lambda!187349 (or d!1535786 b_lambda!187391)))

(declare-fun bs!1156808 () Bool)

(declare-fun d!1536112 () Bool)

(assert (= bs!1156808 (and d!1536112 d!1535786)))

(declare-fun allKeysSameHash!1971 (List!54422 (_ BitVec 64) Hashable!6954) Bool)

(assert (=> bs!1156808 (= (dynLambda!22086 lambda!231832 (h!60731 (toList!6987 lm!2473))) (allKeysSameHash!1971 (_2!31787 (h!60731 (toList!6987 lm!2473))) (_1!31787 (h!60731 (toList!6987 lm!2473))) hashF!1559))))

(declare-fun m!5781846 () Bool)

(assert (=> bs!1156808 m!5781846))

(assert (=> b!4798608 d!1536112))

(declare-fun b_lambda!187393 () Bool)

(assert (= b_lambda!187375 (or d!1535812 b_lambda!187393)))

(declare-fun bs!1156809 () Bool)

(declare-fun d!1536114 () Bool)

(assert (= bs!1156809 (and d!1536114 d!1535812)))

(assert (=> bs!1156809 (= (dynLambda!22086 lambda!231839 (h!60731 (toList!6987 lm!2473))) (noDuplicateKeys!2355 (_2!31787 (h!60731 (toList!6987 lm!2473)))))))

(assert (=> bs!1156809 m!5781136))

(assert (=> b!4798729 d!1536114))

(declare-fun b_lambda!187395 () Bool)

(assert (= b_lambda!187381 (or d!1535784 b_lambda!187395)))

(declare-fun bs!1156810 () Bool)

(declare-fun d!1536116 () Bool)

(assert (= bs!1156810 (and d!1536116 d!1535784)))

(assert (=> bs!1156810 (= (dynLambda!22086 lambda!231829 (h!60731 (toList!6987 lt!1954824))) (noDuplicateKeys!2355 (_2!31787 (h!60731 (toList!6987 lt!1954824)))))))

(assert (=> bs!1156810 m!5781134))

(assert (=> b!4798795 d!1536116))

(declare-fun b_lambda!187397 () Bool)

(assert (= b_lambda!187377 (or d!1535796 b_lambda!187397)))

(declare-fun bs!1156811 () Bool)

(declare-fun d!1536118 () Bool)

(assert (= bs!1156811 (and d!1536118 d!1535796)))

(assert (=> bs!1156811 (= (dynLambda!22086 lambda!231835 (h!60731 (toList!6987 lm!2473))) (noDuplicateKeys!2355 (_2!31787 (h!60731 (toList!6987 lm!2473)))))))

(assert (=> bs!1156811 m!5781136))

(assert (=> b!4798755 d!1536118))

(declare-fun b_lambda!187399 () Bool)

(assert (= b_lambda!187385 (or d!1535798 b_lambda!187399)))

(declare-fun bs!1156812 () Bool)

(declare-fun d!1536120 () Bool)

(assert (= bs!1156812 (and d!1536120 d!1535798)))

(assert (=> bs!1156812 (= (dynLambda!22086 lambda!231838 (h!60731 (toList!6987 lm!2473))) (noDuplicateKeys!2355 (_2!31787 (h!60731 (toList!6987 lm!2473)))))))

(assert (=> bs!1156812 m!5781136))

(assert (=> b!4798826 d!1536120))

(declare-fun b_lambda!187401 () Bool)

(assert (= b_lambda!187379 (or start!494850 b_lambda!187401)))

(declare-fun bs!1156813 () Bool)

(declare-fun d!1536122 () Bool)

(assert (= bs!1156813 (and d!1536122 start!494850)))

(assert (=> bs!1156813 (= (dynLambda!22086 lambda!231807 (h!60731 (t!361873 (toList!6987 lm!2473)))) (noDuplicateKeys!2355 (_2!31787 (h!60731 (t!361873 (toList!6987 lm!2473))))))))

(declare-fun m!5781848 () Bool)

(assert (=> bs!1156813 m!5781848))

(assert (=> b!4798773 d!1536122))

(check-sat (not b!4798762) (not bm!335283) (not b!4798611) (not b_lambda!187397) (not b!4798798) (not b!4798756) (not b!4798835) (not b!4798656) (not b!4798724) (not b!4798672) (not d!1536020) (not d!1536096) (not b_lambda!187395) (not d!1536104) (not b!4798571) (not d!1536106) (not d!1535922) (not d!1536048) (not b!4798812) (not b!4798802) (not b!4798759) (not d!1536044) (not d!1536004) (not b!4798822) (not bs!1156806) (not d!1536064) (not d!1536046) (not b!4798844) (not b!4798831) (not b_lambda!187389) (not d!1536080) (not b!4798747) (not b!4798809) (not b!4798737) (not b!4798609) (not b!4798833) (not d!1536056) (not b!4798787) (not b!4798727) (not b_lambda!187399) (not b_lambda!187401) (not b!4798603) (not d!1535934) (not b!4798792) (not b!4798769) (not b!4798720) (not b!4798744) (not d!1536090) (not b!4798780) (not d!1536076) (not b!4798604) (not d!1536006) (not b!4798589) (not bm!335287) (not b!4798578) (not b!4798774) (not b!4798820) (not b!4798791) (not d!1536098) (not b!4798810) (not b_lambda!187335) (not d!1536062) (not b_lambda!187393) (not d!1536086) (not b!4798804) (not b!4798806) (not bs!1156812) (not d!1536072) (not d!1535928) (not bm!335285) (not b!4798825) (not b!4798689) (not d!1536034) (not b!4798722) (not b!4798770) (not b!4798768) (not d!1535958) (not b!4798843) (not d!1536092) (not d!1535926) (not b!4798818) (not b!4798788) (not b!4798735) (not b!4798834) (not b!4798592) (not b!4798730) (not d!1536022) tp_is_empty!33677 (not b_lambda!187387) (not d!1536054) (not d!1536032) (not b!4798796) (not d!1535972) (not d!1536068) (not b!4798837) (not b!4798736) (not b!4798766) (not b!4798739) (not bm!335286) (not bm!335282) (not b!4798746) (not d!1536028) (not b!4798671) (not bm!335284) (not b!4798673) (not b!4798658) (not b!4798785) (not b!4798800) (not b!4798655) (not bs!1156811) (not bs!1156807) (not b!4798754) (not b!4798794) (not b!4798829) (not d!1536018) (not b!4798815) (not b!4798784) (not b!4798741) (not b!4798793) tp_is_empty!33679 (not b!4798838) (not b!4798679) (not b!4798761) (not b_lambda!187391) (not d!1536078) (not b!4798743) (not b!4798786) (not d!1535962) (not d!1536082) (not b!4798772) (not b!4798827) (not b!4798654) (not b!4798764) (not b!4798742) (not d!1536038) (not d!1535920) (not bs!1156810) (not b!4798828) (not b!4798721) (not b!4798808) (not bs!1156809) (not bs!1156813) (not d!1535916) (not b!4798657) (not b_lambda!187337) (not b!4798605) (not bs!1156808))
(check-sat)
