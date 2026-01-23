; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728708 () Bool)

(assert start!728708)

(declare-fun b!7532200 () Bool)

(declare-fun e!4488908 () Bool)

(declare-fun tp!2189775 () Bool)

(declare-fun tp!2189772 () Bool)

(assert (=> b!7532200 (= e!4488908 (and tp!2189775 tp!2189772))))

(declare-fun b!7532201 () Bool)

(declare-fun tp!2189774 () Bool)

(assert (=> b!7532201 (= e!4488908 tp!2189774)))

(declare-fun b!7532202 () Bool)

(declare-fun e!4488913 () Bool)

(declare-fun tp!2189768 () Bool)

(assert (=> b!7532202 (= e!4488913 tp!2189768)))

(declare-fun b!7532203 () Bool)

(declare-fun res!3018746 () Bool)

(declare-fun e!4488907 () Bool)

(assert (=> b!7532203 (=> res!3018746 e!4488907)))

(declare-datatypes ((C!40060 0))(
  ( (C!40061 (val!30470 Int)) )
))
(declare-datatypes ((Regex!19867 0))(
  ( (ElementMatch!19867 (c!1391068 C!40060)) (Concat!28712 (regOne!40246 Regex!19867) (regTwo!40246 Regex!19867)) (EmptyExpr!19867) (Star!19867 (reg!20196 Regex!19867)) (EmptyLang!19867) (Union!19867 (regOne!40247 Regex!19867) (regTwo!40247 Regex!19867)) )
))
(declare-fun r!24333 () Regex!19867)

(declare-fun lostCause!1659 (Regex!19867) Bool)

(assert (=> b!7532203 (= res!3018746 (lostCause!1659 r!24333))))

(declare-fun b!7532204 () Bool)

(declare-fun e!4488905 () Bool)

(declare-fun tp_is_empty!50089 () Bool)

(declare-fun tp!2189770 () Bool)

(assert (=> b!7532204 (= e!4488905 (and tp_is_empty!50089 tp!2189770))))

(declare-fun b!7532205 () Bool)

(declare-fun res!3018749 () Bool)

(assert (=> b!7532205 (=> res!3018749 e!4488907)))

(declare-fun baseR!101 () Regex!19867)

(declare-datatypes ((List!72750 0))(
  ( (Nil!72626) (Cons!72626 (h!79074 C!40060) (t!387457 List!72750)) )
))
(declare-fun testedP!423 () List!72750)

(declare-fun derivative!399 (Regex!19867 List!72750) Regex!19867)

(assert (=> b!7532205 (= res!3018749 (not (= (derivative!399 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7532206 () Bool)

(declare-fun e!4488912 () Bool)

(assert (=> b!7532206 (= e!4488912 (not e!4488907))))

(declare-fun res!3018743 () Bool)

(assert (=> b!7532206 (=> res!3018743 e!4488907)))

(declare-fun knownP!30 () List!72750)

(declare-fun matchR!9469 (Regex!19867 List!72750) Bool)

(declare-fun getSuffix!3553 (List!72750 List!72750) List!72750)

(assert (=> b!7532206 (= res!3018743 (not (matchR!9469 r!24333 (getSuffix!3553 knownP!30 testedP!423))))))

(declare-fun isPrefix!6073 (List!72750 List!72750) Bool)

(assert (=> b!7532206 (isPrefix!6073 testedP!423 knownP!30)))

(declare-datatypes ((Unit!166666 0))(
  ( (Unit!166667) )
))
(declare-fun lt!2641129 () Unit!166666)

(declare-fun input!7874 () List!72750)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!823 (List!72750 List!72750 List!72750) Unit!166666)

(assert (=> b!7532206 (= lt!2641129 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!823 knownP!30 testedP!423 input!7874))))

(declare-fun b!7532207 () Bool)

(declare-fun tp!2189765 () Bool)

(declare-fun tp!2189773 () Bool)

(assert (=> b!7532207 (= e!4488913 (and tp!2189765 tp!2189773))))

(declare-fun b!7532208 () Bool)

(declare-fun tp!2189769 () Bool)

(declare-fun tp!2189764 () Bool)

(assert (=> b!7532208 (= e!4488913 (and tp!2189769 tp!2189764))))

(declare-fun b!7532210 () Bool)

(declare-fun res!3018742 () Bool)

(assert (=> b!7532210 (=> (not res!3018742) (not e!4488912))))

(assert (=> b!7532210 (= res!3018742 (matchR!9469 baseR!101 knownP!30))))

(declare-fun b!7532211 () Bool)

(declare-fun e!4488909 () Bool)

(assert (=> b!7532211 (= e!4488909 e!4488912)))

(declare-fun res!3018740 () Bool)

(assert (=> b!7532211 (=> (not res!3018740) (not e!4488912))))

(declare-fun lt!2641130 () Int)

(declare-fun lt!2641134 () Int)

(assert (=> b!7532211 (= res!3018740 (>= lt!2641130 lt!2641134))))

(declare-fun size!42363 (List!72750) Int)

(assert (=> b!7532211 (= lt!2641134 (size!42363 testedP!423))))

(assert (=> b!7532211 (= lt!2641130 (size!42363 knownP!30))))

(declare-fun b!7532212 () Bool)

(assert (=> b!7532212 (= e!4488913 tp_is_empty!50089)))

(declare-fun b!7532213 () Bool)

(assert (=> b!7532213 (= e!4488908 tp_is_empty!50089)))

(declare-fun lt!2641128 () List!72750)

(declare-fun e!4488906 () Bool)

(declare-fun b!7532214 () Bool)

(declare-fun ++!17388 (List!72750 List!72750) List!72750)

(assert (=> b!7532214 (= e!4488906 (= (++!17388 testedP!423 lt!2641128) input!7874))))

(declare-fun b!7532215 () Bool)

(declare-fun e!4488910 () Bool)

(declare-fun tp!2189767 () Bool)

(assert (=> b!7532215 (= e!4488910 (and tp_is_empty!50089 tp!2189767))))

(declare-fun b!7532216 () Bool)

(declare-fun tp!2189766 () Bool)

(declare-fun tp!2189771 () Bool)

(assert (=> b!7532216 (= e!4488908 (and tp!2189766 tp!2189771))))

(declare-fun b!7532217 () Bool)

(declare-fun res!3018744 () Bool)

(assert (=> b!7532217 (=> (not res!3018744) (not e!4488909))))

(assert (=> b!7532217 (= res!3018744 (isPrefix!6073 testedP!423 input!7874))))

(declare-fun b!7532218 () Bool)

(declare-fun e!4488911 () Bool)

(declare-fun tp!2189763 () Bool)

(assert (=> b!7532218 (= e!4488911 (and tp_is_empty!50089 tp!2189763))))

(declare-fun b!7532219 () Bool)

(declare-fun res!3018750 () Bool)

(assert (=> b!7532219 (=> (not res!3018750) (not e!4488909))))

(assert (=> b!7532219 (= res!3018750 (isPrefix!6073 knownP!30 input!7874))))

(declare-fun b!7532209 () Bool)

(declare-fun res!3018747 () Bool)

(assert (=> b!7532209 (=> res!3018747 e!4488907)))

(assert (=> b!7532209 (= res!3018747 (not (= lt!2641134 lt!2641130)))))

(declare-fun res!3018741 () Bool)

(assert (=> start!728708 (=> (not res!3018741) (not e!4488909))))

(declare-fun validRegex!10295 (Regex!19867) Bool)

(assert (=> start!728708 (= res!3018741 (validRegex!10295 baseR!101))))

(assert (=> start!728708 e!4488909))

(assert (=> start!728708 e!4488908))

(assert (=> start!728708 e!4488911))

(assert (=> start!728708 e!4488905))

(assert (=> start!728708 e!4488910))

(assert (=> start!728708 e!4488913))

(declare-fun b!7532220 () Bool)

(declare-fun res!3018748 () Bool)

(assert (=> b!7532220 (=> (not res!3018748) (not e!4488909))))

(assert (=> b!7532220 (= res!3018748 (validRegex!10295 r!24333))))

(declare-fun b!7532221 () Bool)

(assert (=> b!7532221 (= e!4488907 e!4488906)))

(declare-fun res!3018745 () Bool)

(assert (=> b!7532221 (=> res!3018745 e!4488906)))

(declare-fun lt!2641132 () Int)

(assert (=> b!7532221 (= res!3018745 (< lt!2641132 lt!2641130))))

(assert (=> b!7532221 (>= lt!2641132 lt!2641134)))

(declare-datatypes ((tuple2!68836 0))(
  ( (tuple2!68837 (_1!37721 List!72750) (_2!37721 List!72750)) )
))
(declare-fun findLongestMatchInner!2126 (Regex!19867 List!72750 Int List!72750 List!72750 Int) tuple2!68836)

(assert (=> b!7532221 (= lt!2641132 (size!42363 (_1!37721 (findLongestMatchInner!2126 r!24333 testedP!423 lt!2641134 lt!2641128 input!7874 (size!42363 input!7874)))))))

(assert (=> b!7532221 (= lt!2641128 (getSuffix!3553 input!7874 testedP!423))))

(declare-fun lt!2641133 () Unit!166666)

(declare-fun lemmaIfMatchRThenLongestMatchFromThereReturnsAtLeastThis!12 (Regex!19867 Regex!19867 List!72750 List!72750) Unit!166666)

(assert (=> b!7532221 (= lt!2641133 (lemmaIfMatchRThenLongestMatchFromThereReturnsAtLeastThis!12 baseR!101 r!24333 input!7874 testedP!423))))

(assert (=> b!7532221 (= testedP!423 knownP!30)))

(declare-fun lt!2641131 () Unit!166666)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1527 (List!72750 List!72750 List!72750) Unit!166666)

(assert (=> b!7532221 (= lt!2641131 (lemmaIsPrefixSameLengthThenSameList!1527 testedP!423 knownP!30 input!7874))))

(assert (= (and start!728708 res!3018741) b!7532220))

(assert (= (and b!7532220 res!3018748) b!7532217))

(assert (= (and b!7532217 res!3018744) b!7532219))

(assert (= (and b!7532219 res!3018750) b!7532211))

(assert (= (and b!7532211 res!3018740) b!7532210))

(assert (= (and b!7532210 res!3018742) b!7532206))

(assert (= (and b!7532206 (not res!3018743)) b!7532205))

(assert (= (and b!7532205 (not res!3018749)) b!7532203))

(assert (= (and b!7532203 (not res!3018746)) b!7532209))

(assert (= (and b!7532209 (not res!3018747)) b!7532221))

(assert (= (and b!7532221 (not res!3018745)) b!7532214))

(get-info :version)

(assert (= (and start!728708 ((_ is ElementMatch!19867) baseR!101)) b!7532213))

(assert (= (and start!728708 ((_ is Concat!28712) baseR!101)) b!7532200))

(assert (= (and start!728708 ((_ is Star!19867) baseR!101)) b!7532201))

(assert (= (and start!728708 ((_ is Union!19867) baseR!101)) b!7532216))

(assert (= (and start!728708 ((_ is Cons!72626) input!7874)) b!7532218))

(assert (= (and start!728708 ((_ is Cons!72626) knownP!30)) b!7532204))

(assert (= (and start!728708 ((_ is Cons!72626) testedP!423)) b!7532215))

(assert (= (and start!728708 ((_ is ElementMatch!19867) r!24333)) b!7532212))

(assert (= (and start!728708 ((_ is Concat!28712) r!24333)) b!7532208))

(assert (= (and start!728708 ((_ is Star!19867) r!24333)) b!7532202))

(assert (= (and start!728708 ((_ is Union!19867) r!24333)) b!7532207))

(declare-fun m!8104890 () Bool)

(assert (=> b!7532211 m!8104890))

(declare-fun m!8104892 () Bool)

(assert (=> b!7532211 m!8104892))

(declare-fun m!8104894 () Bool)

(assert (=> b!7532219 m!8104894))

(declare-fun m!8104896 () Bool)

(assert (=> b!7532203 m!8104896))

(declare-fun m!8104898 () Bool)

(assert (=> b!7532210 m!8104898))

(declare-fun m!8104900 () Bool)

(assert (=> b!7532220 m!8104900))

(declare-fun m!8104902 () Bool)

(assert (=> b!7532214 m!8104902))

(declare-fun m!8104904 () Bool)

(assert (=> b!7532206 m!8104904))

(assert (=> b!7532206 m!8104904))

(declare-fun m!8104906 () Bool)

(assert (=> b!7532206 m!8104906))

(declare-fun m!8104908 () Bool)

(assert (=> b!7532206 m!8104908))

(declare-fun m!8104910 () Bool)

(assert (=> b!7532206 m!8104910))

(declare-fun m!8104912 () Bool)

(assert (=> b!7532221 m!8104912))

(declare-fun m!8104914 () Bool)

(assert (=> b!7532221 m!8104914))

(declare-fun m!8104916 () Bool)

(assert (=> b!7532221 m!8104916))

(declare-fun m!8104918 () Bool)

(assert (=> b!7532221 m!8104918))

(declare-fun m!8104920 () Bool)

(assert (=> b!7532221 m!8104920))

(assert (=> b!7532221 m!8104918))

(declare-fun m!8104922 () Bool)

(assert (=> b!7532221 m!8104922))

(declare-fun m!8104924 () Bool)

(assert (=> b!7532205 m!8104924))

(declare-fun m!8104926 () Bool)

(assert (=> b!7532217 m!8104926))

(declare-fun m!8104928 () Bool)

(assert (=> start!728708 m!8104928))

(check-sat (not b!7532211) (not b!7532205) (not b!7532208) (not b!7532207) (not b!7532204) (not b!7532214) (not b!7532200) (not b!7532216) (not start!728708) (not b!7532221) (not b!7532215) (not b!7532218) tp_is_empty!50089 (not b!7532201) (not b!7532220) (not b!7532210) (not b!7532219) (not b!7532202) (not b!7532206) (not b!7532217) (not b!7532203))
(check-sat)
(get-model)

(declare-fun d!2309929 () Bool)

(declare-fun lt!2641137 () Regex!19867)

(assert (=> d!2309929 (validRegex!10295 lt!2641137)))

(declare-fun e!4488916 () Regex!19867)

(assert (=> d!2309929 (= lt!2641137 e!4488916)))

(declare-fun c!1391071 () Bool)

(assert (=> d!2309929 (= c!1391071 ((_ is Cons!72626) testedP!423))))

(assert (=> d!2309929 (validRegex!10295 baseR!101)))

(assert (=> d!2309929 (= (derivative!399 baseR!101 testedP!423) lt!2641137)))

(declare-fun b!7532226 () Bool)

(declare-fun derivativeStep!5666 (Regex!19867 C!40060) Regex!19867)

(assert (=> b!7532226 (= e!4488916 (derivative!399 (derivativeStep!5666 baseR!101 (h!79074 testedP!423)) (t!387457 testedP!423)))))

(declare-fun b!7532227 () Bool)

(assert (=> b!7532227 (= e!4488916 baseR!101)))

(assert (= (and d!2309929 c!1391071) b!7532226))

(assert (= (and d!2309929 (not c!1391071)) b!7532227))

(declare-fun m!8104930 () Bool)

(assert (=> d!2309929 m!8104930))

(assert (=> d!2309929 m!8104928))

(declare-fun m!8104932 () Bool)

(assert (=> b!7532226 m!8104932))

(assert (=> b!7532226 m!8104932))

(declare-fun m!8104934 () Bool)

(assert (=> b!7532226 m!8104934))

(assert (=> b!7532205 d!2309929))

(declare-fun d!2309931 () Bool)

(declare-fun lt!2641140 () Int)

(assert (=> d!2309931 (>= lt!2641140 0)))

(declare-fun e!4488919 () Int)

(assert (=> d!2309931 (= lt!2641140 e!4488919)))

(declare-fun c!1391074 () Bool)

(assert (=> d!2309931 (= c!1391074 ((_ is Nil!72626) (_1!37721 (findLongestMatchInner!2126 r!24333 testedP!423 lt!2641134 lt!2641128 input!7874 (size!42363 input!7874)))))))

(assert (=> d!2309931 (= (size!42363 (_1!37721 (findLongestMatchInner!2126 r!24333 testedP!423 lt!2641134 lt!2641128 input!7874 (size!42363 input!7874)))) lt!2641140)))

(declare-fun b!7532232 () Bool)

(assert (=> b!7532232 (= e!4488919 0)))

(declare-fun b!7532233 () Bool)

(assert (=> b!7532233 (= e!4488919 (+ 1 (size!42363 (t!387457 (_1!37721 (findLongestMatchInner!2126 r!24333 testedP!423 lt!2641134 lt!2641128 input!7874 (size!42363 input!7874)))))))))

(assert (= (and d!2309931 c!1391074) b!7532232))

(assert (= (and d!2309931 (not c!1391074)) b!7532233))

(declare-fun m!8104936 () Bool)

(assert (=> b!7532233 m!8104936))

(assert (=> b!7532221 d!2309931))

(declare-fun b!7532288 () Bool)

(declare-fun e!4488956 () tuple2!68836)

(declare-fun lt!2641213 () tuple2!68836)

(assert (=> b!7532288 (= e!4488956 lt!2641213)))

(declare-fun d!2309933 () Bool)

(declare-fun e!4488957 () Bool)

(assert (=> d!2309933 e!4488957))

(declare-fun res!3018768 () Bool)

(assert (=> d!2309933 (=> (not res!3018768) (not e!4488957))))

(declare-fun lt!2641219 () tuple2!68836)

(assert (=> d!2309933 (= res!3018768 (= (++!17388 (_1!37721 lt!2641219) (_2!37721 lt!2641219)) input!7874))))

(declare-fun e!4488958 () tuple2!68836)

(assert (=> d!2309933 (= lt!2641219 e!4488958)))

(declare-fun c!1391096 () Bool)

(assert (=> d!2309933 (= c!1391096 (lostCause!1659 r!24333))))

(declare-fun lt!2641234 () Unit!166666)

(declare-fun Unit!166668 () Unit!166666)

(assert (=> d!2309933 (= lt!2641234 Unit!166668)))

(assert (=> d!2309933 (= (getSuffix!3553 input!7874 testedP!423) lt!2641128)))

(declare-fun lt!2641212 () Unit!166666)

(declare-fun lt!2641216 () Unit!166666)

(assert (=> d!2309933 (= lt!2641212 lt!2641216)))

(declare-fun lt!2641224 () List!72750)

(assert (=> d!2309933 (= lt!2641128 lt!2641224)))

(declare-fun lemmaSamePrefixThenSameSuffix!2828 (List!72750 List!72750 List!72750 List!72750 List!72750) Unit!166666)

(assert (=> d!2309933 (= lt!2641216 (lemmaSamePrefixThenSameSuffix!2828 testedP!423 lt!2641128 testedP!423 lt!2641224 input!7874))))

(assert (=> d!2309933 (= lt!2641224 (getSuffix!3553 input!7874 testedP!423))))

(declare-fun lt!2641218 () Unit!166666)

(declare-fun lt!2641230 () Unit!166666)

(assert (=> d!2309933 (= lt!2641218 lt!2641230)))

(assert (=> d!2309933 (isPrefix!6073 testedP!423 (++!17388 testedP!423 lt!2641128))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3742 (List!72750 List!72750) Unit!166666)

(assert (=> d!2309933 (= lt!2641230 (lemmaConcatTwoListThenFirstIsPrefix!3742 testedP!423 lt!2641128))))

(assert (=> d!2309933 (validRegex!10295 r!24333)))

(assert (=> d!2309933 (= (findLongestMatchInner!2126 r!24333 testedP!423 lt!2641134 lt!2641128 input!7874 (size!42363 input!7874)) lt!2641219)))

(declare-fun b!7532289 () Bool)

(assert (=> b!7532289 (= e!4488958 (tuple2!68837 Nil!72626 input!7874))))

(declare-fun lt!2641210 () List!72750)

(declare-fun call!691082 () List!72750)

(declare-fun call!691083 () tuple2!68836)

(declare-fun call!691079 () Regex!19867)

(declare-fun bm!691072 () Bool)

(assert (=> bm!691072 (= call!691083 (findLongestMatchInner!2126 call!691079 lt!2641210 (+ lt!2641134 1) call!691082 input!7874 (size!42363 input!7874)))))

(declare-fun bm!691073 () Bool)

(declare-fun call!691081 () C!40060)

(assert (=> bm!691073 (= call!691079 (derivativeStep!5666 r!24333 call!691081))))

(declare-fun b!7532290 () Bool)

(declare-fun e!4488955 () tuple2!68836)

(assert (=> b!7532290 (= e!4488955 (tuple2!68837 Nil!72626 input!7874))))

(declare-fun b!7532291 () Bool)

(declare-fun e!4488952 () Bool)

(assert (=> b!7532291 (= e!4488957 e!4488952)))

(declare-fun res!3018767 () Bool)

(assert (=> b!7532291 (=> res!3018767 e!4488952)))

(declare-fun isEmpty!41352 (List!72750) Bool)

(assert (=> b!7532291 (= res!3018767 (isEmpty!41352 (_1!37721 lt!2641219)))))

(declare-fun b!7532292 () Bool)

(declare-fun c!1391097 () Bool)

(declare-fun call!691078 () Bool)

(assert (=> b!7532292 (= c!1391097 call!691078)))

(declare-fun lt!2641225 () Unit!166666)

(declare-fun lt!2641227 () Unit!166666)

(assert (=> b!7532292 (= lt!2641225 lt!2641227)))

(assert (=> b!7532292 (= input!7874 testedP!423)))

(declare-fun call!691084 () Unit!166666)

(assert (=> b!7532292 (= lt!2641227 call!691084)))

(declare-fun lt!2641214 () Unit!166666)

(declare-fun lt!2641222 () Unit!166666)

(assert (=> b!7532292 (= lt!2641214 lt!2641222)))

(declare-fun call!691077 () Bool)

(assert (=> b!7532292 call!691077))

(declare-fun call!691080 () Unit!166666)

(assert (=> b!7532292 (= lt!2641222 call!691080)))

(declare-fun e!4488959 () tuple2!68836)

(assert (=> b!7532292 (= e!4488959 e!4488955)))

(declare-fun b!7532293 () Bool)

(assert (=> b!7532293 (= e!4488955 (tuple2!68837 testedP!423 Nil!72626))))

(declare-fun bm!691074 () Bool)

(declare-fun tail!15022 (List!72750) List!72750)

(assert (=> bm!691074 (= call!691082 (tail!15022 lt!2641128))))

(declare-fun b!7532294 () Bool)

(declare-fun e!4488954 () tuple2!68836)

(assert (=> b!7532294 (= e!4488954 call!691083)))

(declare-fun b!7532295 () Bool)

(declare-fun e!4488953 () Unit!166666)

(declare-fun Unit!166669 () Unit!166666)

(assert (=> b!7532295 (= e!4488953 Unit!166669)))

(declare-fun bm!691075 () Bool)

(assert (=> bm!691075 (= call!691077 (isPrefix!6073 input!7874 input!7874))))

(declare-fun bm!691076 () Bool)

(assert (=> bm!691076 (= call!691084 (lemmaIsPrefixSameLengthThenSameList!1527 input!7874 testedP!423 input!7874))))

(declare-fun b!7532296 () Bool)

(declare-fun Unit!166670 () Unit!166666)

(assert (=> b!7532296 (= e!4488953 Unit!166670)))

(declare-fun lt!2641226 () Unit!166666)

(assert (=> b!7532296 (= lt!2641226 call!691080)))

(assert (=> b!7532296 call!691077))

(declare-fun lt!2641237 () Unit!166666)

(assert (=> b!7532296 (= lt!2641237 lt!2641226)))

(declare-fun lt!2641223 () Unit!166666)

(assert (=> b!7532296 (= lt!2641223 call!691084)))

(assert (=> b!7532296 (= input!7874 testedP!423)))

(declare-fun lt!2641233 () Unit!166666)

(assert (=> b!7532296 (= lt!2641233 lt!2641223)))

(assert (=> b!7532296 false))

(declare-fun b!7532297 () Bool)

(assert (=> b!7532297 (= e!4488958 e!4488959)))

(declare-fun c!1391094 () Bool)

(assert (=> b!7532297 (= c!1391094 (= lt!2641134 (size!42363 input!7874)))))

(declare-fun b!7532298 () Bool)

(assert (=> b!7532298 (= e!4488952 (>= (size!42363 (_1!37721 lt!2641219)) (size!42363 testedP!423)))))

(declare-fun b!7532299 () Bool)

(declare-fun c!1391095 () Bool)

(assert (=> b!7532299 (= c!1391095 call!691078)))

(declare-fun lt!2641215 () Unit!166666)

(declare-fun lt!2641228 () Unit!166666)

(assert (=> b!7532299 (= lt!2641215 lt!2641228)))

(declare-fun lt!2641236 () List!72750)

(declare-fun lt!2641235 () C!40060)

(assert (=> b!7532299 (= (++!17388 (++!17388 testedP!423 (Cons!72626 lt!2641235 Nil!72626)) lt!2641236) input!7874)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3178 (List!72750 C!40060 List!72750 List!72750) Unit!166666)

(assert (=> b!7532299 (= lt!2641228 (lemmaMoveElementToOtherListKeepsConcatEq!3178 testedP!423 lt!2641235 lt!2641236 input!7874))))

(assert (=> b!7532299 (= lt!2641236 (tail!15022 lt!2641128))))

(declare-fun head!15463 (List!72750) C!40060)

(assert (=> b!7532299 (= lt!2641235 (head!15463 lt!2641128))))

(declare-fun lt!2641220 () Unit!166666)

(declare-fun lt!2641221 () Unit!166666)

(assert (=> b!7532299 (= lt!2641220 lt!2641221)))

(assert (=> b!7532299 (isPrefix!6073 (++!17388 testedP!423 (Cons!72626 (head!15463 (getSuffix!3553 input!7874 testedP!423)) Nil!72626)) input!7874)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1147 (List!72750 List!72750) Unit!166666)

(assert (=> b!7532299 (= lt!2641221 (lemmaAddHeadSuffixToPrefixStillPrefix!1147 testedP!423 input!7874))))

(declare-fun lt!2641211 () Unit!166666)

(declare-fun lt!2641231 () Unit!166666)

(assert (=> b!7532299 (= lt!2641211 lt!2641231)))

(assert (=> b!7532299 (= lt!2641231 (lemmaAddHeadSuffixToPrefixStillPrefix!1147 testedP!423 input!7874))))

(assert (=> b!7532299 (= lt!2641210 (++!17388 testedP!423 (Cons!72626 (head!15463 lt!2641128) Nil!72626)))))

(declare-fun lt!2641217 () Unit!166666)

(assert (=> b!7532299 (= lt!2641217 e!4488953)))

(declare-fun c!1391099 () Bool)

(assert (=> b!7532299 (= c!1391099 (= (size!42363 testedP!423) (size!42363 input!7874)))))

(declare-fun lt!2641232 () Unit!166666)

(declare-fun lt!2641229 () Unit!166666)

(assert (=> b!7532299 (= lt!2641232 lt!2641229)))

(assert (=> b!7532299 (<= (size!42363 testedP!423) (size!42363 input!7874))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!1017 (List!72750 List!72750) Unit!166666)

(assert (=> b!7532299 (= lt!2641229 (lemmaIsPrefixThenSmallerEqSize!1017 testedP!423 input!7874))))

(assert (=> b!7532299 (= e!4488959 e!4488954)))

(declare-fun bm!691077 () Bool)

(assert (=> bm!691077 (= call!691081 (head!15463 lt!2641128))))

(declare-fun bm!691078 () Bool)

(declare-fun lemmaIsPrefixRefl!3869 (List!72750 List!72750) Unit!166666)

(assert (=> bm!691078 (= call!691080 (lemmaIsPrefixRefl!3869 input!7874 input!7874))))

(declare-fun b!7532300 () Bool)

(assert (=> b!7532300 (= e!4488956 (tuple2!68837 testedP!423 lt!2641128))))

(declare-fun bm!691079 () Bool)

(declare-fun nullable!8660 (Regex!19867) Bool)

(assert (=> bm!691079 (= call!691078 (nullable!8660 r!24333))))

(declare-fun b!7532301 () Bool)

(assert (=> b!7532301 (= e!4488954 e!4488956)))

(assert (=> b!7532301 (= lt!2641213 call!691083)))

(declare-fun c!1391098 () Bool)

(assert (=> b!7532301 (= c!1391098 (isEmpty!41352 (_1!37721 lt!2641213)))))

(assert (= (and d!2309933 c!1391096) b!7532289))

(assert (= (and d!2309933 (not c!1391096)) b!7532297))

(assert (= (and b!7532297 c!1391094) b!7532292))

(assert (= (and b!7532297 (not c!1391094)) b!7532299))

(assert (= (and b!7532292 c!1391097) b!7532293))

(assert (= (and b!7532292 (not c!1391097)) b!7532290))

(assert (= (and b!7532299 c!1391099) b!7532296))

(assert (= (and b!7532299 (not c!1391099)) b!7532295))

(assert (= (and b!7532299 c!1391095) b!7532301))

(assert (= (and b!7532299 (not c!1391095)) b!7532294))

(assert (= (and b!7532301 c!1391098) b!7532300))

(assert (= (and b!7532301 (not c!1391098)) b!7532288))

(assert (= (or b!7532301 b!7532294) bm!691074))

(assert (= (or b!7532301 b!7532294) bm!691077))

(assert (= (or b!7532301 b!7532294) bm!691073))

(assert (= (or b!7532301 b!7532294) bm!691072))

(assert (= (or b!7532292 b!7532296) bm!691075))

(assert (= (or b!7532292 b!7532299) bm!691079))

(assert (= (or b!7532292 b!7532296) bm!691076))

(assert (= (or b!7532292 b!7532296) bm!691078))

(assert (= (and d!2309933 res!3018768) b!7532291))

(assert (= (and b!7532291 (not res!3018767)) b!7532298))

(declare-fun m!8104960 () Bool)

(assert (=> bm!691074 m!8104960))

(assert (=> b!7532299 m!8104960))

(declare-fun m!8104962 () Bool)

(assert (=> b!7532299 m!8104962))

(declare-fun m!8104964 () Bool)

(assert (=> b!7532299 m!8104964))

(declare-fun m!8104966 () Bool)

(assert (=> b!7532299 m!8104966))

(declare-fun m!8104968 () Bool)

(assert (=> b!7532299 m!8104968))

(assert (=> b!7532299 m!8104918))

(assert (=> b!7532299 m!8104914))

(declare-fun m!8104970 () Bool)

(assert (=> b!7532299 m!8104970))

(assert (=> b!7532299 m!8104914))

(declare-fun m!8104972 () Bool)

(assert (=> b!7532299 m!8104972))

(declare-fun m!8104974 () Bool)

(assert (=> b!7532299 m!8104974))

(assert (=> b!7532299 m!8104962))

(assert (=> b!7532299 m!8104966))

(declare-fun m!8104976 () Bool)

(assert (=> b!7532299 m!8104976))

(assert (=> b!7532299 m!8104890))

(declare-fun m!8104978 () Bool)

(assert (=> b!7532299 m!8104978))

(declare-fun m!8104980 () Bool)

(assert (=> b!7532299 m!8104980))

(declare-fun m!8104982 () Bool)

(assert (=> bm!691073 m!8104982))

(declare-fun m!8104984 () Bool)

(assert (=> bm!691075 m!8104984))

(declare-fun m!8104986 () Bool)

(assert (=> bm!691078 m!8104986))

(assert (=> bm!691072 m!8104918))

(declare-fun m!8104988 () Bool)

(assert (=> bm!691072 m!8104988))

(declare-fun m!8104990 () Bool)

(assert (=> b!7532301 m!8104990))

(declare-fun m!8104992 () Bool)

(assert (=> b!7532298 m!8104992))

(assert (=> b!7532298 m!8104890))

(declare-fun m!8104994 () Bool)

(assert (=> bm!691076 m!8104994))

(assert (=> d!2309933 m!8104902))

(declare-fun m!8104996 () Bool)

(assert (=> d!2309933 m!8104996))

(declare-fun m!8104998 () Bool)

(assert (=> d!2309933 m!8104998))

(assert (=> d!2309933 m!8104914))

(declare-fun m!8105000 () Bool)

(assert (=> d!2309933 m!8105000))

(assert (=> d!2309933 m!8104902))

(declare-fun m!8105002 () Bool)

(assert (=> d!2309933 m!8105002))

(assert (=> d!2309933 m!8104900))

(assert (=> d!2309933 m!8104896))

(assert (=> bm!691077 m!8104980))

(declare-fun m!8105004 () Bool)

(assert (=> b!7532291 m!8105004))

(declare-fun m!8105006 () Bool)

(assert (=> bm!691079 m!8105006))

(assert (=> b!7532221 d!2309933))

(declare-fun d!2309947 () Bool)

(declare-fun lt!2641238 () Int)

(assert (=> d!2309947 (>= lt!2641238 0)))

(declare-fun e!4488960 () Int)

(assert (=> d!2309947 (= lt!2641238 e!4488960)))

(declare-fun c!1391100 () Bool)

(assert (=> d!2309947 (= c!1391100 ((_ is Nil!72626) input!7874))))

(assert (=> d!2309947 (= (size!42363 input!7874) lt!2641238)))

(declare-fun b!7532302 () Bool)

(assert (=> b!7532302 (= e!4488960 0)))

(declare-fun b!7532303 () Bool)

(assert (=> b!7532303 (= e!4488960 (+ 1 (size!42363 (t!387457 input!7874))))))

(assert (= (and d!2309947 c!1391100) b!7532302))

(assert (= (and d!2309947 (not c!1391100)) b!7532303))

(declare-fun m!8105008 () Bool)

(assert (=> b!7532303 m!8105008))

(assert (=> b!7532221 d!2309947))

(declare-fun d!2309949 () Bool)

(assert (=> d!2309949 (= testedP!423 knownP!30)))

(declare-fun lt!2641241 () Unit!166666)

(declare-fun choose!58282 (List!72750 List!72750 List!72750) Unit!166666)

(assert (=> d!2309949 (= lt!2641241 (choose!58282 testedP!423 knownP!30 input!7874))))

(assert (=> d!2309949 (isPrefix!6073 testedP!423 input!7874)))

(assert (=> d!2309949 (= (lemmaIsPrefixSameLengthThenSameList!1527 testedP!423 knownP!30 input!7874) lt!2641241)))

(declare-fun bs!1939848 () Bool)

(assert (= bs!1939848 d!2309949))

(declare-fun m!8105010 () Bool)

(assert (=> bs!1939848 m!8105010))

(assert (=> bs!1939848 m!8104926))

(assert (=> b!7532221 d!2309949))

(declare-fun d!2309951 () Bool)

(assert (=> d!2309951 (>= (size!42363 (_1!37721 (findLongestMatchInner!2126 r!24333 testedP!423 (size!42363 testedP!423) (getSuffix!3553 input!7874 testedP!423) input!7874 (size!42363 input!7874)))) (size!42363 testedP!423))))

(declare-fun lt!2641300 () Unit!166666)

(declare-fun choose!58283 (Regex!19867 Regex!19867 List!72750 List!72750) Unit!166666)

(assert (=> d!2309951 (= lt!2641300 (choose!58283 baseR!101 r!24333 input!7874 testedP!423))))

(assert (=> d!2309951 (validRegex!10295 baseR!101)))

(assert (=> d!2309951 (= (lemmaIfMatchRThenLongestMatchFromThereReturnsAtLeastThis!12 baseR!101 r!24333 input!7874 testedP!423) lt!2641300)))

(declare-fun bs!1939849 () Bool)

(assert (= bs!1939849 d!2309951))

(assert (=> bs!1939849 m!8104890))

(assert (=> bs!1939849 m!8104914))

(assert (=> bs!1939849 m!8104918))

(declare-fun m!8105012 () Bool)

(assert (=> bs!1939849 m!8105012))

(assert (=> bs!1939849 m!8104890))

(assert (=> bs!1939849 m!8104928))

(assert (=> bs!1939849 m!8104918))

(declare-fun m!8105014 () Bool)

(assert (=> bs!1939849 m!8105014))

(assert (=> bs!1939849 m!8104914))

(declare-fun m!8105016 () Bool)

(assert (=> bs!1939849 m!8105016))

(assert (=> b!7532221 d!2309951))

(declare-fun d!2309953 () Bool)

(declare-fun lt!2641303 () List!72750)

(assert (=> d!2309953 (= (++!17388 testedP!423 lt!2641303) input!7874)))

(declare-fun e!4488979 () List!72750)

(assert (=> d!2309953 (= lt!2641303 e!4488979)))

(declare-fun c!1391115 () Bool)

(assert (=> d!2309953 (= c!1391115 ((_ is Cons!72626) testedP!423))))

(assert (=> d!2309953 (>= (size!42363 input!7874) (size!42363 testedP!423))))

(assert (=> d!2309953 (= (getSuffix!3553 input!7874 testedP!423) lt!2641303)))

(declare-fun b!7532336 () Bool)

(assert (=> b!7532336 (= e!4488979 (getSuffix!3553 (tail!15022 input!7874) (t!387457 testedP!423)))))

(declare-fun b!7532337 () Bool)

(assert (=> b!7532337 (= e!4488979 input!7874)))

(assert (= (and d!2309953 c!1391115) b!7532336))

(assert (= (and d!2309953 (not c!1391115)) b!7532337))

(declare-fun m!8105018 () Bool)

(assert (=> d!2309953 m!8105018))

(assert (=> d!2309953 m!8104918))

(assert (=> d!2309953 m!8104890))

(declare-fun m!8105020 () Bool)

(assert (=> b!7532336 m!8105020))

(assert (=> b!7532336 m!8105020))

(declare-fun m!8105022 () Bool)

(assert (=> b!7532336 m!8105022))

(assert (=> b!7532221 d!2309953))

(declare-fun b!7532380 () Bool)

(declare-fun res!3018794 () Bool)

(declare-fun e!4489008 () Bool)

(assert (=> b!7532380 (=> (not res!3018794) (not e!4489008))))

(assert (=> b!7532380 (= res!3018794 (isEmpty!41352 (tail!15022 knownP!30)))))

(declare-fun b!7532381 () Bool)

(declare-fun e!4489005 () Bool)

(declare-fun e!4489006 () Bool)

(assert (=> b!7532381 (= e!4489005 e!4489006)))

(declare-fun res!3018795 () Bool)

(assert (=> b!7532381 (=> (not res!3018795) (not e!4489006))))

(declare-fun lt!2641334 () Bool)

(assert (=> b!7532381 (= res!3018795 (not lt!2641334))))

(declare-fun b!7532382 () Bool)

(declare-fun e!4489002 () Bool)

(assert (=> b!7532382 (= e!4489002 (matchR!9469 (derivativeStep!5666 baseR!101 (head!15463 knownP!30)) (tail!15022 knownP!30)))))

(declare-fun b!7532383 () Bool)

(declare-fun e!4489007 () Bool)

(assert (=> b!7532383 (= e!4489007 (not lt!2641334))))

(declare-fun b!7532384 () Bool)

(declare-fun e!4489003 () Bool)

(assert (=> b!7532384 (= e!4489006 e!4489003)))

(declare-fun res!3018793 () Bool)

(assert (=> b!7532384 (=> res!3018793 e!4489003)))

(declare-fun call!691111 () Bool)

(assert (=> b!7532384 (= res!3018793 call!691111)))

(declare-fun b!7532385 () Bool)

(declare-fun e!4489004 () Bool)

(assert (=> b!7532385 (= e!4489004 (= lt!2641334 call!691111))))

(declare-fun b!7532386 () Bool)

(assert (=> b!7532386 (= e!4489003 (not (= (head!15463 knownP!30) (c!1391068 baseR!101))))))

(declare-fun d!2309955 () Bool)

(assert (=> d!2309955 e!4489004))

(declare-fun c!1391130 () Bool)

(assert (=> d!2309955 (= c!1391130 ((_ is EmptyExpr!19867) baseR!101))))

(assert (=> d!2309955 (= lt!2641334 e!4489002)))

(declare-fun c!1391128 () Bool)

(assert (=> d!2309955 (= c!1391128 (isEmpty!41352 knownP!30))))

(assert (=> d!2309955 (validRegex!10295 baseR!101)))

(assert (=> d!2309955 (= (matchR!9469 baseR!101 knownP!30) lt!2641334)))

(declare-fun b!7532387 () Bool)

(assert (=> b!7532387 (= e!4489002 (nullable!8660 baseR!101))))

(declare-fun b!7532388 () Bool)

(declare-fun res!3018796 () Bool)

(assert (=> b!7532388 (=> res!3018796 e!4489005)))

(assert (=> b!7532388 (= res!3018796 e!4489008)))

(declare-fun res!3018797 () Bool)

(assert (=> b!7532388 (=> (not res!3018797) (not e!4489008))))

(assert (=> b!7532388 (= res!3018797 lt!2641334)))

(declare-fun bm!691106 () Bool)

(assert (=> bm!691106 (= call!691111 (isEmpty!41352 knownP!30))))

(declare-fun b!7532389 () Bool)

(declare-fun res!3018791 () Bool)

(assert (=> b!7532389 (=> (not res!3018791) (not e!4489008))))

(assert (=> b!7532389 (= res!3018791 (not call!691111))))

(declare-fun b!7532390 () Bool)

(assert (=> b!7532390 (= e!4489004 e!4489007)))

(declare-fun c!1391129 () Bool)

(assert (=> b!7532390 (= c!1391129 ((_ is EmptyLang!19867) baseR!101))))

(declare-fun b!7532391 () Bool)

(declare-fun res!3018798 () Bool)

(assert (=> b!7532391 (=> res!3018798 e!4489005)))

(assert (=> b!7532391 (= res!3018798 (not ((_ is ElementMatch!19867) baseR!101)))))

(assert (=> b!7532391 (= e!4489007 e!4489005)))

(declare-fun b!7532392 () Bool)

(declare-fun res!3018792 () Bool)

(assert (=> b!7532392 (=> res!3018792 e!4489003)))

(assert (=> b!7532392 (= res!3018792 (not (isEmpty!41352 (tail!15022 knownP!30))))))

(declare-fun b!7532393 () Bool)

(assert (=> b!7532393 (= e!4489008 (= (head!15463 knownP!30) (c!1391068 baseR!101)))))

(assert (= (and d!2309955 c!1391128) b!7532387))

(assert (= (and d!2309955 (not c!1391128)) b!7532382))

(assert (= (and d!2309955 c!1391130) b!7532385))

(assert (= (and d!2309955 (not c!1391130)) b!7532390))

(assert (= (and b!7532390 c!1391129) b!7532383))

(assert (= (and b!7532390 (not c!1391129)) b!7532391))

(assert (= (and b!7532391 (not res!3018798)) b!7532388))

(assert (= (and b!7532388 res!3018797) b!7532389))

(assert (= (and b!7532389 res!3018791) b!7532380))

(assert (= (and b!7532380 res!3018794) b!7532393))

(assert (= (and b!7532388 (not res!3018796)) b!7532381))

(assert (= (and b!7532381 res!3018795) b!7532384))

(assert (= (and b!7532384 (not res!3018793)) b!7532392))

(assert (= (and b!7532392 (not res!3018792)) b!7532386))

(assert (= (or b!7532385 b!7532384 b!7532389) bm!691106))

(declare-fun m!8105072 () Bool)

(assert (=> b!7532382 m!8105072))

(assert (=> b!7532382 m!8105072))

(declare-fun m!8105074 () Bool)

(assert (=> b!7532382 m!8105074))

(declare-fun m!8105076 () Bool)

(assert (=> b!7532382 m!8105076))

(assert (=> b!7532382 m!8105074))

(assert (=> b!7532382 m!8105076))

(declare-fun m!8105078 () Bool)

(assert (=> b!7532382 m!8105078))

(declare-fun m!8105080 () Bool)

(assert (=> b!7532387 m!8105080))

(assert (=> b!7532380 m!8105076))

(assert (=> b!7532380 m!8105076))

(declare-fun m!8105082 () Bool)

(assert (=> b!7532380 m!8105082))

(declare-fun m!8105084 () Bool)

(assert (=> bm!691106 m!8105084))

(assert (=> b!7532393 m!8105072))

(assert (=> d!2309955 m!8105084))

(assert (=> d!2309955 m!8104928))

(assert (=> b!7532386 m!8105072))

(assert (=> b!7532392 m!8105076))

(assert (=> b!7532392 m!8105076))

(assert (=> b!7532392 m!8105082))

(assert (=> b!7532210 d!2309955))

(declare-fun b!7532412 () Bool)

(declare-fun e!4489025 () Bool)

(declare-fun call!691120 () Bool)

(assert (=> b!7532412 (= e!4489025 call!691120)))

(declare-fun b!7532413 () Bool)

(declare-fun res!3018812 () Bool)

(declare-fun e!4489029 () Bool)

(assert (=> b!7532413 (=> res!3018812 e!4489029)))

(assert (=> b!7532413 (= res!3018812 (not ((_ is Concat!28712) r!24333)))))

(declare-fun e!4489023 () Bool)

(assert (=> b!7532413 (= e!4489023 e!4489029)))

(declare-fun b!7532414 () Bool)

(declare-fun e!4489028 () Bool)

(declare-fun call!691119 () Bool)

(assert (=> b!7532414 (= e!4489028 call!691119)))

(declare-fun b!7532415 () Bool)

(declare-fun e!4489024 () Bool)

(assert (=> b!7532415 (= e!4489029 e!4489024)))

(declare-fun res!3018810 () Bool)

(assert (=> b!7532415 (=> (not res!3018810) (not e!4489024))))

(declare-fun call!691118 () Bool)

(assert (=> b!7532415 (= res!3018810 call!691118)))

(declare-fun b!7532416 () Bool)

(declare-fun e!4489027 () Bool)

(assert (=> b!7532416 (= e!4489027 e!4489028)))

(declare-fun res!3018811 () Bool)

(assert (=> b!7532416 (= res!3018811 (not (nullable!8660 (reg!20196 r!24333))))))

(assert (=> b!7532416 (=> (not res!3018811) (not e!4489028))))

(declare-fun b!7532417 () Bool)

(assert (=> b!7532417 (= e!4489024 call!691120)))

(declare-fun bm!691113 () Bool)

(assert (=> bm!691113 (= call!691118 call!691119)))

(declare-fun bm!691114 () Bool)

(declare-fun c!1391135 () Bool)

(assert (=> bm!691114 (= call!691120 (validRegex!10295 (ite c!1391135 (regTwo!40247 r!24333) (regTwo!40246 r!24333))))))

(declare-fun b!7532418 () Bool)

(assert (=> b!7532418 (= e!4489027 e!4489023)))

(assert (=> b!7532418 (= c!1391135 ((_ is Union!19867) r!24333))))

(declare-fun b!7532419 () Bool)

(declare-fun res!3018809 () Bool)

(assert (=> b!7532419 (=> (not res!3018809) (not e!4489025))))

(assert (=> b!7532419 (= res!3018809 call!691118)))

(assert (=> b!7532419 (= e!4489023 e!4489025)))

(declare-fun d!2309959 () Bool)

(declare-fun res!3018813 () Bool)

(declare-fun e!4489026 () Bool)

(assert (=> d!2309959 (=> res!3018813 e!4489026)))

(assert (=> d!2309959 (= res!3018813 ((_ is ElementMatch!19867) r!24333))))

(assert (=> d!2309959 (= (validRegex!10295 r!24333) e!4489026)))

(declare-fun c!1391136 () Bool)

(declare-fun bm!691115 () Bool)

(assert (=> bm!691115 (= call!691119 (validRegex!10295 (ite c!1391136 (reg!20196 r!24333) (ite c!1391135 (regOne!40247 r!24333) (regOne!40246 r!24333)))))))

(declare-fun b!7532420 () Bool)

(assert (=> b!7532420 (= e!4489026 e!4489027)))

(assert (=> b!7532420 (= c!1391136 ((_ is Star!19867) r!24333))))

(assert (= (and d!2309959 (not res!3018813)) b!7532420))

(assert (= (and b!7532420 c!1391136) b!7532416))

(assert (= (and b!7532420 (not c!1391136)) b!7532418))

(assert (= (and b!7532416 res!3018811) b!7532414))

(assert (= (and b!7532418 c!1391135) b!7532419))

(assert (= (and b!7532418 (not c!1391135)) b!7532413))

(assert (= (and b!7532419 res!3018809) b!7532412))

(assert (= (and b!7532413 (not res!3018812)) b!7532415))

(assert (= (and b!7532415 res!3018810) b!7532417))

(assert (= (or b!7532419 b!7532415) bm!691113))

(assert (= (or b!7532412 b!7532417) bm!691114))

(assert (= (or b!7532414 bm!691113) bm!691115))

(declare-fun m!8105092 () Bool)

(assert (=> b!7532416 m!8105092))

(declare-fun m!8105094 () Bool)

(assert (=> bm!691114 m!8105094))

(declare-fun m!8105096 () Bool)

(assert (=> bm!691115 m!8105096))

(assert (=> b!7532220 d!2309959))

(declare-fun b!7532436 () Bool)

(declare-fun res!3018822 () Bool)

(declare-fun e!4489041 () Bool)

(assert (=> b!7532436 (=> (not res!3018822) (not e!4489041))))

(assert (=> b!7532436 (= res!3018822 (= (head!15463 testedP!423) (head!15463 input!7874)))))

(declare-fun b!7532435 () Bool)

(declare-fun e!4489039 () Bool)

(assert (=> b!7532435 (= e!4489039 e!4489041)))

(declare-fun res!3018823 () Bool)

(assert (=> b!7532435 (=> (not res!3018823) (not e!4489041))))

(assert (=> b!7532435 (= res!3018823 (not ((_ is Nil!72626) input!7874)))))

(declare-fun d!2309963 () Bool)

(declare-fun e!4489040 () Bool)

(assert (=> d!2309963 e!4489040))

(declare-fun res!3018825 () Bool)

(assert (=> d!2309963 (=> res!3018825 e!4489040)))

(declare-fun lt!2641343 () Bool)

(assert (=> d!2309963 (= res!3018825 (not lt!2641343))))

(assert (=> d!2309963 (= lt!2641343 e!4489039)))

(declare-fun res!3018824 () Bool)

(assert (=> d!2309963 (=> res!3018824 e!4489039)))

(assert (=> d!2309963 (= res!3018824 ((_ is Nil!72626) testedP!423))))

(assert (=> d!2309963 (= (isPrefix!6073 testedP!423 input!7874) lt!2641343)))

(declare-fun b!7532438 () Bool)

(assert (=> b!7532438 (= e!4489040 (>= (size!42363 input!7874) (size!42363 testedP!423)))))

(declare-fun b!7532437 () Bool)

(assert (=> b!7532437 (= e!4489041 (isPrefix!6073 (tail!15022 testedP!423) (tail!15022 input!7874)))))

(assert (= (and d!2309963 (not res!3018824)) b!7532435))

(assert (= (and b!7532435 res!3018823) b!7532436))

(assert (= (and b!7532436 res!3018822) b!7532437))

(assert (= (and d!2309963 (not res!3018825)) b!7532438))

(declare-fun m!8105102 () Bool)

(assert (=> b!7532436 m!8105102))

(declare-fun m!8105104 () Bool)

(assert (=> b!7532436 m!8105104))

(assert (=> b!7532438 m!8104918))

(assert (=> b!7532438 m!8104890))

(declare-fun m!8105106 () Bool)

(assert (=> b!7532437 m!8105106))

(assert (=> b!7532437 m!8105020))

(assert (=> b!7532437 m!8105106))

(assert (=> b!7532437 m!8105020))

(declare-fun m!8105108 () Bool)

(assert (=> b!7532437 m!8105108))

(assert (=> b!7532217 d!2309963))

(declare-fun b!7532439 () Bool)

(declare-fun res!3018829 () Bool)

(declare-fun e!4489048 () Bool)

(assert (=> b!7532439 (=> (not res!3018829) (not e!4489048))))

(assert (=> b!7532439 (= res!3018829 (isEmpty!41352 (tail!15022 (getSuffix!3553 knownP!30 testedP!423))))))

(declare-fun b!7532440 () Bool)

(declare-fun e!4489045 () Bool)

(declare-fun e!4489046 () Bool)

(assert (=> b!7532440 (= e!4489045 e!4489046)))

(declare-fun res!3018830 () Bool)

(assert (=> b!7532440 (=> (not res!3018830) (not e!4489046))))

(declare-fun lt!2641344 () Bool)

(assert (=> b!7532440 (= res!3018830 (not lt!2641344))))

(declare-fun b!7532441 () Bool)

(declare-fun e!4489042 () Bool)

(assert (=> b!7532441 (= e!4489042 (matchR!9469 (derivativeStep!5666 r!24333 (head!15463 (getSuffix!3553 knownP!30 testedP!423))) (tail!15022 (getSuffix!3553 knownP!30 testedP!423))))))

(declare-fun b!7532442 () Bool)

(declare-fun e!4489047 () Bool)

(assert (=> b!7532442 (= e!4489047 (not lt!2641344))))

(declare-fun b!7532443 () Bool)

(declare-fun e!4489043 () Bool)

(assert (=> b!7532443 (= e!4489046 e!4489043)))

(declare-fun res!3018828 () Bool)

(assert (=> b!7532443 (=> res!3018828 e!4489043)))

(declare-fun call!691121 () Bool)

(assert (=> b!7532443 (= res!3018828 call!691121)))

(declare-fun b!7532444 () Bool)

(declare-fun e!4489044 () Bool)

(assert (=> b!7532444 (= e!4489044 (= lt!2641344 call!691121))))

(declare-fun b!7532445 () Bool)

(assert (=> b!7532445 (= e!4489043 (not (= (head!15463 (getSuffix!3553 knownP!30 testedP!423)) (c!1391068 r!24333))))))

(declare-fun d!2309967 () Bool)

(assert (=> d!2309967 e!4489044))

(declare-fun c!1391142 () Bool)

(assert (=> d!2309967 (= c!1391142 ((_ is EmptyExpr!19867) r!24333))))

(assert (=> d!2309967 (= lt!2641344 e!4489042)))

(declare-fun c!1391140 () Bool)

(assert (=> d!2309967 (= c!1391140 (isEmpty!41352 (getSuffix!3553 knownP!30 testedP!423)))))

(assert (=> d!2309967 (validRegex!10295 r!24333)))

(assert (=> d!2309967 (= (matchR!9469 r!24333 (getSuffix!3553 knownP!30 testedP!423)) lt!2641344)))

(declare-fun b!7532446 () Bool)

(assert (=> b!7532446 (= e!4489042 (nullable!8660 r!24333))))

(declare-fun b!7532447 () Bool)

(declare-fun res!3018831 () Bool)

(assert (=> b!7532447 (=> res!3018831 e!4489045)))

(assert (=> b!7532447 (= res!3018831 e!4489048)))

(declare-fun res!3018832 () Bool)

(assert (=> b!7532447 (=> (not res!3018832) (not e!4489048))))

(assert (=> b!7532447 (= res!3018832 lt!2641344)))

(declare-fun bm!691116 () Bool)

(assert (=> bm!691116 (= call!691121 (isEmpty!41352 (getSuffix!3553 knownP!30 testedP!423)))))

(declare-fun b!7532448 () Bool)

(declare-fun res!3018826 () Bool)

(assert (=> b!7532448 (=> (not res!3018826) (not e!4489048))))

(assert (=> b!7532448 (= res!3018826 (not call!691121))))

(declare-fun b!7532449 () Bool)

(assert (=> b!7532449 (= e!4489044 e!4489047)))

(declare-fun c!1391141 () Bool)

(assert (=> b!7532449 (= c!1391141 ((_ is EmptyLang!19867) r!24333))))

(declare-fun b!7532450 () Bool)

(declare-fun res!3018833 () Bool)

(assert (=> b!7532450 (=> res!3018833 e!4489045)))

(assert (=> b!7532450 (= res!3018833 (not ((_ is ElementMatch!19867) r!24333)))))

(assert (=> b!7532450 (= e!4489047 e!4489045)))

(declare-fun b!7532451 () Bool)

(declare-fun res!3018827 () Bool)

(assert (=> b!7532451 (=> res!3018827 e!4489043)))

(assert (=> b!7532451 (= res!3018827 (not (isEmpty!41352 (tail!15022 (getSuffix!3553 knownP!30 testedP!423)))))))

(declare-fun b!7532452 () Bool)

(assert (=> b!7532452 (= e!4489048 (= (head!15463 (getSuffix!3553 knownP!30 testedP!423)) (c!1391068 r!24333)))))

(assert (= (and d!2309967 c!1391140) b!7532446))

(assert (= (and d!2309967 (not c!1391140)) b!7532441))

(assert (= (and d!2309967 c!1391142) b!7532444))

(assert (= (and d!2309967 (not c!1391142)) b!7532449))

(assert (= (and b!7532449 c!1391141) b!7532442))

(assert (= (and b!7532449 (not c!1391141)) b!7532450))

(assert (= (and b!7532450 (not res!3018833)) b!7532447))

(assert (= (and b!7532447 res!3018832) b!7532448))

(assert (= (and b!7532448 res!3018826) b!7532439))

(assert (= (and b!7532439 res!3018829) b!7532452))

(assert (= (and b!7532447 (not res!3018831)) b!7532440))

(assert (= (and b!7532440 res!3018830) b!7532443))

(assert (= (and b!7532443 (not res!3018828)) b!7532451))

(assert (= (and b!7532451 (not res!3018827)) b!7532445))

(assert (= (or b!7532444 b!7532443 b!7532448) bm!691116))

(assert (=> b!7532441 m!8104904))

(declare-fun m!8105110 () Bool)

(assert (=> b!7532441 m!8105110))

(assert (=> b!7532441 m!8105110))

(declare-fun m!8105112 () Bool)

(assert (=> b!7532441 m!8105112))

(assert (=> b!7532441 m!8104904))

(declare-fun m!8105114 () Bool)

(assert (=> b!7532441 m!8105114))

(assert (=> b!7532441 m!8105112))

(assert (=> b!7532441 m!8105114))

(declare-fun m!8105116 () Bool)

(assert (=> b!7532441 m!8105116))

(assert (=> b!7532446 m!8105006))

(assert (=> b!7532439 m!8104904))

(assert (=> b!7532439 m!8105114))

(assert (=> b!7532439 m!8105114))

(declare-fun m!8105118 () Bool)

(assert (=> b!7532439 m!8105118))

(assert (=> bm!691116 m!8104904))

(declare-fun m!8105120 () Bool)

(assert (=> bm!691116 m!8105120))

(assert (=> b!7532452 m!8104904))

(assert (=> b!7532452 m!8105110))

(assert (=> d!2309967 m!8104904))

(assert (=> d!2309967 m!8105120))

(assert (=> d!2309967 m!8104900))

(assert (=> b!7532445 m!8104904))

(assert (=> b!7532445 m!8105110))

(assert (=> b!7532451 m!8104904))

(assert (=> b!7532451 m!8105114))

(assert (=> b!7532451 m!8105114))

(assert (=> b!7532451 m!8105118))

(assert (=> b!7532206 d!2309967))

(declare-fun d!2309969 () Bool)

(declare-fun lt!2641345 () List!72750)

(assert (=> d!2309969 (= (++!17388 testedP!423 lt!2641345) knownP!30)))

(declare-fun e!4489063 () List!72750)

(assert (=> d!2309969 (= lt!2641345 e!4489063)))

(declare-fun c!1391147 () Bool)

(assert (=> d!2309969 (= c!1391147 ((_ is Cons!72626) testedP!423))))

(assert (=> d!2309969 (>= (size!42363 knownP!30) (size!42363 testedP!423))))

(assert (=> d!2309969 (= (getSuffix!3553 knownP!30 testedP!423) lt!2641345)))

(declare-fun b!7532471 () Bool)

(assert (=> b!7532471 (= e!4489063 (getSuffix!3553 (tail!15022 knownP!30) (t!387457 testedP!423)))))

(declare-fun b!7532472 () Bool)

(assert (=> b!7532472 (= e!4489063 knownP!30)))

(assert (= (and d!2309969 c!1391147) b!7532471))

(assert (= (and d!2309969 (not c!1391147)) b!7532472))

(declare-fun m!8105122 () Bool)

(assert (=> d!2309969 m!8105122))

(assert (=> d!2309969 m!8104892))

(assert (=> d!2309969 m!8104890))

(assert (=> b!7532471 m!8105076))

(assert (=> b!7532471 m!8105076))

(declare-fun m!8105124 () Bool)

(assert (=> b!7532471 m!8105124))

(assert (=> b!7532206 d!2309969))

(declare-fun b!7532474 () Bool)

(declare-fun res!3018844 () Bool)

(declare-fun e!4489066 () Bool)

(assert (=> b!7532474 (=> (not res!3018844) (not e!4489066))))

(assert (=> b!7532474 (= res!3018844 (= (head!15463 testedP!423) (head!15463 knownP!30)))))

(declare-fun b!7532473 () Bool)

(declare-fun e!4489064 () Bool)

(assert (=> b!7532473 (= e!4489064 e!4489066)))

(declare-fun res!3018845 () Bool)

(assert (=> b!7532473 (=> (not res!3018845) (not e!4489066))))

(assert (=> b!7532473 (= res!3018845 (not ((_ is Nil!72626) knownP!30)))))

(declare-fun d!2309971 () Bool)

(declare-fun e!4489065 () Bool)

(assert (=> d!2309971 e!4489065))

(declare-fun res!3018847 () Bool)

(assert (=> d!2309971 (=> res!3018847 e!4489065)))

(declare-fun lt!2641346 () Bool)

(assert (=> d!2309971 (= res!3018847 (not lt!2641346))))

(assert (=> d!2309971 (= lt!2641346 e!4489064)))

(declare-fun res!3018846 () Bool)

(assert (=> d!2309971 (=> res!3018846 e!4489064)))

(assert (=> d!2309971 (= res!3018846 ((_ is Nil!72626) testedP!423))))

(assert (=> d!2309971 (= (isPrefix!6073 testedP!423 knownP!30) lt!2641346)))

(declare-fun b!7532476 () Bool)

(assert (=> b!7532476 (= e!4489065 (>= (size!42363 knownP!30) (size!42363 testedP!423)))))

(declare-fun b!7532475 () Bool)

(assert (=> b!7532475 (= e!4489066 (isPrefix!6073 (tail!15022 testedP!423) (tail!15022 knownP!30)))))

(assert (= (and d!2309971 (not res!3018846)) b!7532473))

(assert (= (and b!7532473 res!3018845) b!7532474))

(assert (= (and b!7532474 res!3018844) b!7532475))

(assert (= (and d!2309971 (not res!3018847)) b!7532476))

(assert (=> b!7532474 m!8105102))

(assert (=> b!7532474 m!8105072))

(assert (=> b!7532476 m!8104892))

(assert (=> b!7532476 m!8104890))

(assert (=> b!7532475 m!8105106))

(assert (=> b!7532475 m!8105076))

(assert (=> b!7532475 m!8105106))

(assert (=> b!7532475 m!8105076))

(declare-fun m!8105126 () Bool)

(assert (=> b!7532475 m!8105126))

(assert (=> b!7532206 d!2309971))

(declare-fun d!2309973 () Bool)

(assert (=> d!2309973 (isPrefix!6073 testedP!423 knownP!30)))

(declare-fun lt!2641349 () Unit!166666)

(declare-fun choose!58285 (List!72750 List!72750 List!72750) Unit!166666)

(assert (=> d!2309973 (= lt!2641349 (choose!58285 knownP!30 testedP!423 input!7874))))

(assert (=> d!2309973 (isPrefix!6073 knownP!30 input!7874)))

(assert (=> d!2309973 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!823 knownP!30 testedP!423 input!7874) lt!2641349)))

(declare-fun bs!1939851 () Bool)

(assert (= bs!1939851 d!2309973))

(assert (=> bs!1939851 m!8104908))

(declare-fun m!8105128 () Bool)

(assert (=> bs!1939851 m!8105128))

(assert (=> bs!1939851 m!8104894))

(assert (=> b!7532206 d!2309973))

(declare-fun d!2309975 () Bool)

(declare-fun lt!2641350 () Int)

(assert (=> d!2309975 (>= lt!2641350 0)))

(declare-fun e!4489074 () Int)

(assert (=> d!2309975 (= lt!2641350 e!4489074)))

(declare-fun c!1391150 () Bool)

(assert (=> d!2309975 (= c!1391150 ((_ is Nil!72626) testedP!423))))

(assert (=> d!2309975 (= (size!42363 testedP!423) lt!2641350)))

(declare-fun b!7532486 () Bool)

(assert (=> b!7532486 (= e!4489074 0)))

(declare-fun b!7532487 () Bool)

(assert (=> b!7532487 (= e!4489074 (+ 1 (size!42363 (t!387457 testedP!423))))))

(assert (= (and d!2309975 c!1391150) b!7532486))

(assert (= (and d!2309975 (not c!1391150)) b!7532487))

(declare-fun m!8105130 () Bool)

(assert (=> b!7532487 m!8105130))

(assert (=> b!7532211 d!2309975))

(declare-fun d!2309977 () Bool)

(declare-fun lt!2641351 () Int)

(assert (=> d!2309977 (>= lt!2641351 0)))

(declare-fun e!4489075 () Int)

(assert (=> d!2309977 (= lt!2641351 e!4489075)))

(declare-fun c!1391151 () Bool)

(assert (=> d!2309977 (= c!1391151 ((_ is Nil!72626) knownP!30))))

(assert (=> d!2309977 (= (size!42363 knownP!30) lt!2641351)))

(declare-fun b!7532488 () Bool)

(assert (=> b!7532488 (= e!4489075 0)))

(declare-fun b!7532489 () Bool)

(assert (=> b!7532489 (= e!4489075 (+ 1 (size!42363 (t!387457 knownP!30))))))

(assert (= (and d!2309977 c!1391151) b!7532488))

(assert (= (and d!2309977 (not c!1391151)) b!7532489))

(declare-fun m!8105132 () Bool)

(assert (=> b!7532489 m!8105132))

(assert (=> b!7532211 d!2309977))

(declare-fun b!7532490 () Bool)

(declare-fun e!4489078 () Bool)

(declare-fun call!691133 () Bool)

(assert (=> b!7532490 (= e!4489078 call!691133)))

(declare-fun b!7532491 () Bool)

(declare-fun res!3018856 () Bool)

(declare-fun e!4489082 () Bool)

(assert (=> b!7532491 (=> res!3018856 e!4489082)))

(assert (=> b!7532491 (= res!3018856 (not ((_ is Concat!28712) baseR!101)))))

(declare-fun e!4489076 () Bool)

(assert (=> b!7532491 (= e!4489076 e!4489082)))

(declare-fun b!7532492 () Bool)

(declare-fun e!4489081 () Bool)

(declare-fun call!691132 () Bool)

(assert (=> b!7532492 (= e!4489081 call!691132)))

(declare-fun b!7532493 () Bool)

(declare-fun e!4489077 () Bool)

(assert (=> b!7532493 (= e!4489082 e!4489077)))

(declare-fun res!3018854 () Bool)

(assert (=> b!7532493 (=> (not res!3018854) (not e!4489077))))

(declare-fun call!691131 () Bool)

(assert (=> b!7532493 (= res!3018854 call!691131)))

(declare-fun b!7532494 () Bool)

(declare-fun e!4489080 () Bool)

(assert (=> b!7532494 (= e!4489080 e!4489081)))

(declare-fun res!3018855 () Bool)

(assert (=> b!7532494 (= res!3018855 (not (nullable!8660 (reg!20196 baseR!101))))))

(assert (=> b!7532494 (=> (not res!3018855) (not e!4489081))))

(declare-fun b!7532495 () Bool)

(assert (=> b!7532495 (= e!4489077 call!691133)))

(declare-fun bm!691126 () Bool)

(assert (=> bm!691126 (= call!691131 call!691132)))

(declare-fun bm!691127 () Bool)

(declare-fun c!1391152 () Bool)

(assert (=> bm!691127 (= call!691133 (validRegex!10295 (ite c!1391152 (regTwo!40247 baseR!101) (regTwo!40246 baseR!101))))))

(declare-fun b!7532496 () Bool)

(assert (=> b!7532496 (= e!4489080 e!4489076)))

(assert (=> b!7532496 (= c!1391152 ((_ is Union!19867) baseR!101))))

(declare-fun b!7532497 () Bool)

(declare-fun res!3018853 () Bool)

(assert (=> b!7532497 (=> (not res!3018853) (not e!4489078))))

(assert (=> b!7532497 (= res!3018853 call!691131)))

(assert (=> b!7532497 (= e!4489076 e!4489078)))

(declare-fun d!2309979 () Bool)

(declare-fun res!3018857 () Bool)

(declare-fun e!4489079 () Bool)

(assert (=> d!2309979 (=> res!3018857 e!4489079)))

(assert (=> d!2309979 (= res!3018857 ((_ is ElementMatch!19867) baseR!101))))

(assert (=> d!2309979 (= (validRegex!10295 baseR!101) e!4489079)))

(declare-fun c!1391153 () Bool)

(declare-fun bm!691128 () Bool)

(assert (=> bm!691128 (= call!691132 (validRegex!10295 (ite c!1391153 (reg!20196 baseR!101) (ite c!1391152 (regOne!40247 baseR!101) (regOne!40246 baseR!101)))))))

(declare-fun b!7532498 () Bool)

(assert (=> b!7532498 (= e!4489079 e!4489080)))

(assert (=> b!7532498 (= c!1391153 ((_ is Star!19867) baseR!101))))

(assert (= (and d!2309979 (not res!3018857)) b!7532498))

(assert (= (and b!7532498 c!1391153) b!7532494))

(assert (= (and b!7532498 (not c!1391153)) b!7532496))

(assert (= (and b!7532494 res!3018855) b!7532492))

(assert (= (and b!7532496 c!1391152) b!7532497))

(assert (= (and b!7532496 (not c!1391152)) b!7532491))

(assert (= (and b!7532497 res!3018853) b!7532490))

(assert (= (and b!7532491 (not res!3018856)) b!7532493))

(assert (= (and b!7532493 res!3018854) b!7532495))

(assert (= (or b!7532497 b!7532493) bm!691126))

(assert (= (or b!7532490 b!7532495) bm!691127))

(assert (= (or b!7532492 bm!691126) bm!691128))

(declare-fun m!8105140 () Bool)

(assert (=> b!7532494 m!8105140))

(declare-fun m!8105142 () Bool)

(assert (=> bm!691127 m!8105142))

(declare-fun m!8105144 () Bool)

(assert (=> bm!691128 m!8105144))

(assert (=> start!728708 d!2309979))

(declare-fun b!7532509 () Bool)

(declare-fun res!3018862 () Bool)

(declare-fun e!4489088 () Bool)

(assert (=> b!7532509 (=> (not res!3018862) (not e!4489088))))

(declare-fun lt!2641354 () List!72750)

(assert (=> b!7532509 (= res!3018862 (= (size!42363 lt!2641354) (+ (size!42363 testedP!423) (size!42363 lt!2641128))))))

(declare-fun d!2309983 () Bool)

(assert (=> d!2309983 e!4489088))

(declare-fun res!3018863 () Bool)

(assert (=> d!2309983 (=> (not res!3018863) (not e!4489088))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15349 (List!72750) (InoxSet C!40060))

(assert (=> d!2309983 (= res!3018863 (= (content!15349 lt!2641354) ((_ map or) (content!15349 testedP!423) (content!15349 lt!2641128))))))

(declare-fun e!4489087 () List!72750)

(assert (=> d!2309983 (= lt!2641354 e!4489087)))

(declare-fun c!1391156 () Bool)

(assert (=> d!2309983 (= c!1391156 ((_ is Nil!72626) testedP!423))))

(assert (=> d!2309983 (= (++!17388 testedP!423 lt!2641128) lt!2641354)))

(declare-fun b!7532507 () Bool)

(assert (=> b!7532507 (= e!4489087 lt!2641128)))

(declare-fun b!7532508 () Bool)

(assert (=> b!7532508 (= e!4489087 (Cons!72626 (h!79074 testedP!423) (++!17388 (t!387457 testedP!423) lt!2641128)))))

(declare-fun b!7532510 () Bool)

(assert (=> b!7532510 (= e!4489088 (or (not (= lt!2641128 Nil!72626)) (= lt!2641354 testedP!423)))))

(assert (= (and d!2309983 c!1391156) b!7532507))

(assert (= (and d!2309983 (not c!1391156)) b!7532508))

(assert (= (and d!2309983 res!3018863) b!7532509))

(assert (= (and b!7532509 res!3018862) b!7532510))

(declare-fun m!8105146 () Bool)

(assert (=> b!7532509 m!8105146))

(assert (=> b!7532509 m!8104890))

(declare-fun m!8105148 () Bool)

(assert (=> b!7532509 m!8105148))

(declare-fun m!8105150 () Bool)

(assert (=> d!2309983 m!8105150))

(declare-fun m!8105152 () Bool)

(assert (=> d!2309983 m!8105152))

(declare-fun m!8105154 () Bool)

(assert (=> d!2309983 m!8105154))

(declare-fun m!8105156 () Bool)

(assert (=> b!7532508 m!8105156))

(assert (=> b!7532214 d!2309983))

(declare-fun d!2309985 () Bool)

(declare-fun lostCauseFct!416 (Regex!19867) Bool)

(assert (=> d!2309985 (= (lostCause!1659 r!24333) (lostCauseFct!416 r!24333))))

(declare-fun bs!1939852 () Bool)

(assert (= bs!1939852 d!2309985))

(declare-fun m!8105158 () Bool)

(assert (=> bs!1939852 m!8105158))

(assert (=> b!7532203 d!2309985))

(declare-fun b!7532540 () Bool)

(declare-fun res!3018880 () Bool)

(declare-fun e!4489105 () Bool)

(assert (=> b!7532540 (=> (not res!3018880) (not e!4489105))))

(assert (=> b!7532540 (= res!3018880 (= (head!15463 knownP!30) (head!15463 input!7874)))))

(declare-fun b!7532539 () Bool)

(declare-fun e!4489103 () Bool)

(assert (=> b!7532539 (= e!4489103 e!4489105)))

(declare-fun res!3018881 () Bool)

(assert (=> b!7532539 (=> (not res!3018881) (not e!4489105))))

(assert (=> b!7532539 (= res!3018881 (not ((_ is Nil!72626) input!7874)))))

(declare-fun d!2309987 () Bool)

(declare-fun e!4489104 () Bool)

(assert (=> d!2309987 e!4489104))

(declare-fun res!3018883 () Bool)

(assert (=> d!2309987 (=> res!3018883 e!4489104)))

(declare-fun lt!2641357 () Bool)

(assert (=> d!2309987 (= res!3018883 (not lt!2641357))))

(assert (=> d!2309987 (= lt!2641357 e!4489103)))

(declare-fun res!3018882 () Bool)

(assert (=> d!2309987 (=> res!3018882 e!4489103)))

(assert (=> d!2309987 (= res!3018882 ((_ is Nil!72626) knownP!30))))

(assert (=> d!2309987 (= (isPrefix!6073 knownP!30 input!7874) lt!2641357)))

(declare-fun b!7532542 () Bool)

(assert (=> b!7532542 (= e!4489104 (>= (size!42363 input!7874) (size!42363 knownP!30)))))

(declare-fun b!7532541 () Bool)

(assert (=> b!7532541 (= e!4489105 (isPrefix!6073 (tail!15022 knownP!30) (tail!15022 input!7874)))))

(assert (= (and d!2309987 (not res!3018882)) b!7532539))

(assert (= (and b!7532539 res!3018881) b!7532540))

(assert (= (and b!7532540 res!3018880) b!7532541))

(assert (= (and d!2309987 (not res!3018883)) b!7532542))

(assert (=> b!7532540 m!8105072))

(assert (=> b!7532540 m!8105104))

(assert (=> b!7532542 m!8104918))

(assert (=> b!7532542 m!8104892))

(assert (=> b!7532541 m!8105076))

(assert (=> b!7532541 m!8105020))

(assert (=> b!7532541 m!8105076))

(assert (=> b!7532541 m!8105020))

(declare-fun m!8105160 () Bool)

(assert (=> b!7532541 m!8105160))

(assert (=> b!7532219 d!2309987))

(declare-fun b!7532547 () Bool)

(declare-fun e!4489108 () Bool)

(declare-fun tp!2189778 () Bool)

(assert (=> b!7532547 (= e!4489108 (and tp_is_empty!50089 tp!2189778))))

(assert (=> b!7532215 (= tp!2189767 e!4489108)))

(assert (= (and b!7532215 ((_ is Cons!72626) (t!387457 testedP!423))) b!7532547))

(declare-fun b!7532548 () Bool)

(declare-fun e!4489109 () Bool)

(declare-fun tp!2189779 () Bool)

(assert (=> b!7532548 (= e!4489109 (and tp_is_empty!50089 tp!2189779))))

(assert (=> b!7532204 (= tp!2189770 e!4489109)))

(assert (= (and b!7532204 ((_ is Cons!72626) (t!387457 knownP!30))) b!7532548))

(declare-fun b!7532562 () Bool)

(declare-fun e!4489112 () Bool)

(declare-fun tp!2189790 () Bool)

(declare-fun tp!2189792 () Bool)

(assert (=> b!7532562 (= e!4489112 (and tp!2189790 tp!2189792))))

(declare-fun b!7532559 () Bool)

(assert (=> b!7532559 (= e!4489112 tp_is_empty!50089)))

(declare-fun b!7532560 () Bool)

(declare-fun tp!2189793 () Bool)

(declare-fun tp!2189791 () Bool)

(assert (=> b!7532560 (= e!4489112 (and tp!2189793 tp!2189791))))

(assert (=> b!7532201 (= tp!2189774 e!4489112)))

(declare-fun b!7532561 () Bool)

(declare-fun tp!2189794 () Bool)

(assert (=> b!7532561 (= e!4489112 tp!2189794)))

(assert (= (and b!7532201 ((_ is ElementMatch!19867) (reg!20196 baseR!101))) b!7532559))

(assert (= (and b!7532201 ((_ is Concat!28712) (reg!20196 baseR!101))) b!7532560))

(assert (= (and b!7532201 ((_ is Star!19867) (reg!20196 baseR!101))) b!7532561))

(assert (= (and b!7532201 ((_ is Union!19867) (reg!20196 baseR!101))) b!7532562))

(declare-fun b!7532566 () Bool)

(declare-fun e!4489113 () Bool)

(declare-fun tp!2189795 () Bool)

(declare-fun tp!2189797 () Bool)

(assert (=> b!7532566 (= e!4489113 (and tp!2189795 tp!2189797))))

(declare-fun b!7532563 () Bool)

(assert (=> b!7532563 (= e!4489113 tp_is_empty!50089)))

(declare-fun b!7532564 () Bool)

(declare-fun tp!2189798 () Bool)

(declare-fun tp!2189796 () Bool)

(assert (=> b!7532564 (= e!4489113 (and tp!2189798 tp!2189796))))

(assert (=> b!7532200 (= tp!2189775 e!4489113)))

(declare-fun b!7532565 () Bool)

(declare-fun tp!2189799 () Bool)

(assert (=> b!7532565 (= e!4489113 tp!2189799)))

(assert (= (and b!7532200 ((_ is ElementMatch!19867) (regOne!40246 baseR!101))) b!7532563))

(assert (= (and b!7532200 ((_ is Concat!28712) (regOne!40246 baseR!101))) b!7532564))

(assert (= (and b!7532200 ((_ is Star!19867) (regOne!40246 baseR!101))) b!7532565))

(assert (= (and b!7532200 ((_ is Union!19867) (regOne!40246 baseR!101))) b!7532566))

(declare-fun b!7532570 () Bool)

(declare-fun e!4489114 () Bool)

(declare-fun tp!2189800 () Bool)

(declare-fun tp!2189802 () Bool)

(assert (=> b!7532570 (= e!4489114 (and tp!2189800 tp!2189802))))

(declare-fun b!7532567 () Bool)

(assert (=> b!7532567 (= e!4489114 tp_is_empty!50089)))

(declare-fun b!7532568 () Bool)

(declare-fun tp!2189803 () Bool)

(declare-fun tp!2189801 () Bool)

(assert (=> b!7532568 (= e!4489114 (and tp!2189803 tp!2189801))))

(assert (=> b!7532200 (= tp!2189772 e!4489114)))

(declare-fun b!7532569 () Bool)

(declare-fun tp!2189804 () Bool)

(assert (=> b!7532569 (= e!4489114 tp!2189804)))

(assert (= (and b!7532200 ((_ is ElementMatch!19867) (regTwo!40246 baseR!101))) b!7532567))

(assert (= (and b!7532200 ((_ is Concat!28712) (regTwo!40246 baseR!101))) b!7532568))

(assert (= (and b!7532200 ((_ is Star!19867) (regTwo!40246 baseR!101))) b!7532569))

(assert (= (and b!7532200 ((_ is Union!19867) (regTwo!40246 baseR!101))) b!7532570))

(declare-fun b!7532574 () Bool)

(declare-fun e!4489115 () Bool)

(declare-fun tp!2189805 () Bool)

(declare-fun tp!2189807 () Bool)

(assert (=> b!7532574 (= e!4489115 (and tp!2189805 tp!2189807))))

(declare-fun b!7532571 () Bool)

(assert (=> b!7532571 (= e!4489115 tp_is_empty!50089)))

(declare-fun b!7532572 () Bool)

(declare-fun tp!2189808 () Bool)

(declare-fun tp!2189806 () Bool)

(assert (=> b!7532572 (= e!4489115 (and tp!2189808 tp!2189806))))

(assert (=> b!7532216 (= tp!2189766 e!4489115)))

(declare-fun b!7532573 () Bool)

(declare-fun tp!2189809 () Bool)

(assert (=> b!7532573 (= e!4489115 tp!2189809)))

(assert (= (and b!7532216 ((_ is ElementMatch!19867) (regOne!40247 baseR!101))) b!7532571))

(assert (= (and b!7532216 ((_ is Concat!28712) (regOne!40247 baseR!101))) b!7532572))

(assert (= (and b!7532216 ((_ is Star!19867) (regOne!40247 baseR!101))) b!7532573))

(assert (= (and b!7532216 ((_ is Union!19867) (regOne!40247 baseR!101))) b!7532574))

(declare-fun b!7532578 () Bool)

(declare-fun e!4489116 () Bool)

(declare-fun tp!2189810 () Bool)

(declare-fun tp!2189812 () Bool)

(assert (=> b!7532578 (= e!4489116 (and tp!2189810 tp!2189812))))

(declare-fun b!7532575 () Bool)

(assert (=> b!7532575 (= e!4489116 tp_is_empty!50089)))

(declare-fun b!7532576 () Bool)

(declare-fun tp!2189813 () Bool)

(declare-fun tp!2189811 () Bool)

(assert (=> b!7532576 (= e!4489116 (and tp!2189813 tp!2189811))))

(assert (=> b!7532216 (= tp!2189771 e!4489116)))

(declare-fun b!7532577 () Bool)

(declare-fun tp!2189814 () Bool)

(assert (=> b!7532577 (= e!4489116 tp!2189814)))

(assert (= (and b!7532216 ((_ is ElementMatch!19867) (regTwo!40247 baseR!101))) b!7532575))

(assert (= (and b!7532216 ((_ is Concat!28712) (regTwo!40247 baseR!101))) b!7532576))

(assert (= (and b!7532216 ((_ is Star!19867) (regTwo!40247 baseR!101))) b!7532577))

(assert (= (and b!7532216 ((_ is Union!19867) (regTwo!40247 baseR!101))) b!7532578))

(declare-fun b!7532582 () Bool)

(declare-fun e!4489117 () Bool)

(declare-fun tp!2189815 () Bool)

(declare-fun tp!2189817 () Bool)

(assert (=> b!7532582 (= e!4489117 (and tp!2189815 tp!2189817))))

(declare-fun b!7532579 () Bool)

(assert (=> b!7532579 (= e!4489117 tp_is_empty!50089)))

(declare-fun b!7532580 () Bool)

(declare-fun tp!2189818 () Bool)

(declare-fun tp!2189816 () Bool)

(assert (=> b!7532580 (= e!4489117 (and tp!2189818 tp!2189816))))

(assert (=> b!7532202 (= tp!2189768 e!4489117)))

(declare-fun b!7532581 () Bool)

(declare-fun tp!2189819 () Bool)

(assert (=> b!7532581 (= e!4489117 tp!2189819)))

(assert (= (and b!7532202 ((_ is ElementMatch!19867) (reg!20196 r!24333))) b!7532579))

(assert (= (and b!7532202 ((_ is Concat!28712) (reg!20196 r!24333))) b!7532580))

(assert (= (and b!7532202 ((_ is Star!19867) (reg!20196 r!24333))) b!7532581))

(assert (= (and b!7532202 ((_ is Union!19867) (reg!20196 r!24333))) b!7532582))

(declare-fun b!7532583 () Bool)

(declare-fun e!4489118 () Bool)

(declare-fun tp!2189820 () Bool)

(assert (=> b!7532583 (= e!4489118 (and tp_is_empty!50089 tp!2189820))))

(assert (=> b!7532218 (= tp!2189763 e!4489118)))

(assert (= (and b!7532218 ((_ is Cons!72626) (t!387457 input!7874))) b!7532583))

(declare-fun b!7532587 () Bool)

(declare-fun e!4489119 () Bool)

(declare-fun tp!2189821 () Bool)

(declare-fun tp!2189823 () Bool)

(assert (=> b!7532587 (= e!4489119 (and tp!2189821 tp!2189823))))

(declare-fun b!7532584 () Bool)

(assert (=> b!7532584 (= e!4489119 tp_is_empty!50089)))

(declare-fun b!7532585 () Bool)

(declare-fun tp!2189824 () Bool)

(declare-fun tp!2189822 () Bool)

(assert (=> b!7532585 (= e!4489119 (and tp!2189824 tp!2189822))))

(assert (=> b!7532207 (= tp!2189765 e!4489119)))

(declare-fun b!7532586 () Bool)

(declare-fun tp!2189825 () Bool)

(assert (=> b!7532586 (= e!4489119 tp!2189825)))

(assert (= (and b!7532207 ((_ is ElementMatch!19867) (regOne!40247 r!24333))) b!7532584))

(assert (= (and b!7532207 ((_ is Concat!28712) (regOne!40247 r!24333))) b!7532585))

(assert (= (and b!7532207 ((_ is Star!19867) (regOne!40247 r!24333))) b!7532586))

(assert (= (and b!7532207 ((_ is Union!19867) (regOne!40247 r!24333))) b!7532587))

(declare-fun b!7532591 () Bool)

(declare-fun e!4489120 () Bool)

(declare-fun tp!2189826 () Bool)

(declare-fun tp!2189828 () Bool)

(assert (=> b!7532591 (= e!4489120 (and tp!2189826 tp!2189828))))

(declare-fun b!7532588 () Bool)

(assert (=> b!7532588 (= e!4489120 tp_is_empty!50089)))

(declare-fun b!7532589 () Bool)

(declare-fun tp!2189829 () Bool)

(declare-fun tp!2189827 () Bool)

(assert (=> b!7532589 (= e!4489120 (and tp!2189829 tp!2189827))))

(assert (=> b!7532207 (= tp!2189773 e!4489120)))

(declare-fun b!7532590 () Bool)

(declare-fun tp!2189830 () Bool)

(assert (=> b!7532590 (= e!4489120 tp!2189830)))

(assert (= (and b!7532207 ((_ is ElementMatch!19867) (regTwo!40247 r!24333))) b!7532588))

(assert (= (and b!7532207 ((_ is Concat!28712) (regTwo!40247 r!24333))) b!7532589))

(assert (= (and b!7532207 ((_ is Star!19867) (regTwo!40247 r!24333))) b!7532590))

(assert (= (and b!7532207 ((_ is Union!19867) (regTwo!40247 r!24333))) b!7532591))

(declare-fun b!7532595 () Bool)

(declare-fun e!4489121 () Bool)

(declare-fun tp!2189831 () Bool)

(declare-fun tp!2189833 () Bool)

(assert (=> b!7532595 (= e!4489121 (and tp!2189831 tp!2189833))))

(declare-fun b!7532592 () Bool)

(assert (=> b!7532592 (= e!4489121 tp_is_empty!50089)))

(declare-fun b!7532593 () Bool)

(declare-fun tp!2189834 () Bool)

(declare-fun tp!2189832 () Bool)

(assert (=> b!7532593 (= e!4489121 (and tp!2189834 tp!2189832))))

(assert (=> b!7532208 (= tp!2189769 e!4489121)))

(declare-fun b!7532594 () Bool)

(declare-fun tp!2189835 () Bool)

(assert (=> b!7532594 (= e!4489121 tp!2189835)))

(assert (= (and b!7532208 ((_ is ElementMatch!19867) (regOne!40246 r!24333))) b!7532592))

(assert (= (and b!7532208 ((_ is Concat!28712) (regOne!40246 r!24333))) b!7532593))

(assert (= (and b!7532208 ((_ is Star!19867) (regOne!40246 r!24333))) b!7532594))

(assert (= (and b!7532208 ((_ is Union!19867) (regOne!40246 r!24333))) b!7532595))

(declare-fun b!7532613 () Bool)

(declare-fun e!4489129 () Bool)

(declare-fun tp!2189836 () Bool)

(declare-fun tp!2189838 () Bool)

(assert (=> b!7532613 (= e!4489129 (and tp!2189836 tp!2189838))))

(declare-fun b!7532610 () Bool)

(assert (=> b!7532610 (= e!4489129 tp_is_empty!50089)))

(declare-fun b!7532611 () Bool)

(declare-fun tp!2189839 () Bool)

(declare-fun tp!2189837 () Bool)

(assert (=> b!7532611 (= e!4489129 (and tp!2189839 tp!2189837))))

(assert (=> b!7532208 (= tp!2189764 e!4489129)))

(declare-fun b!7532612 () Bool)

(declare-fun tp!2189840 () Bool)

(assert (=> b!7532612 (= e!4489129 tp!2189840)))

(assert (= (and b!7532208 ((_ is ElementMatch!19867) (regTwo!40246 r!24333))) b!7532610))

(assert (= (and b!7532208 ((_ is Concat!28712) (regTwo!40246 r!24333))) b!7532611))

(assert (= (and b!7532208 ((_ is Star!19867) (regTwo!40246 r!24333))) b!7532612))

(assert (= (and b!7532208 ((_ is Union!19867) (regTwo!40246 r!24333))) b!7532613))

(check-sat (not b!7532489) (not b!7532564) (not b!7532591) (not bm!691128) (not b!7532576) (not bm!691077) (not b!7532594) (not b!7532613) (not d!2309973) tp_is_empty!50089 (not b!7532593) (not b!7532587) (not b!7532416) (not b!7532589) (not b!7532561) (not b!7532380) (not bm!691078) (not b!7532541) (not bm!691115) (not b!7532445) (not b!7532611) (not b!7532494) (not d!2309955) (not b!7532386) (not b!7532562) (not b!7532581) (not b!7532436) (not b!7532437) (not b!7532595) (not b!7532560) (not b!7532612) (not d!2309933) (not b!7532585) (not b!7532582) (not b!7532291) (not b!7532590) (not b!7532336) (not b!7532439) (not d!2309929) (not b!7532570) (not b!7532226) (not b!7532303) (not d!2309967) (not b!7532475) (not d!2309983) (not d!2309953) (not b!7532476) (not b!7532509) (not b!7532578) (not b!7532547) (not b!7532586) (not b!7532298) (not b!7532583) (not d!2309949) (not b!7532566) (not bm!691074) (not bm!691114) (not b!7532299) (not b!7532508) (not b!7532471) (not bm!691116) (not b!7532441) (not b!7532387) (not bm!691075) (not b!7532574) (not b!7532542) (not b!7532392) (not b!7532548) (not b!7532572) (not b!7532301) (not b!7532487) (not d!2309985) (not b!7532580) (not b!7532438) (not b!7532452) (not b!7532393) (not b!7532565) (not d!2309969) (not bm!691106) (not b!7532573) (not b!7532451) (not b!7532577) (not bm!691076) (not b!7532569) (not b!7532474) (not bm!691079) (not b!7532446) (not d!2309951) (not b!7532382) (not b!7532568) (not b!7532233) (not b!7532540) (not bm!691127) (not bm!691072) (not bm!691073))
(check-sat)
