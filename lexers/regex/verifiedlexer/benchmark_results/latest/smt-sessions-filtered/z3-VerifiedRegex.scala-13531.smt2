; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728552 () Bool)

(assert start!728552)

(declare-fun b!7530119 () Bool)

(declare-fun e!4487902 () Bool)

(declare-fun tp_is_empty!50069 () Bool)

(declare-fun tp!2188995 () Bool)

(assert (=> b!7530119 (= e!4487902 (and tp_is_empty!50069 tp!2188995))))

(declare-fun b!7530120 () Bool)

(declare-fun e!4487900 () Bool)

(declare-fun tp!2188983 () Bool)

(declare-fun tp!2188984 () Bool)

(assert (=> b!7530120 (= e!4487900 (and tp!2188983 tp!2188984))))

(declare-fun b!7530121 () Bool)

(declare-fun e!4487904 () Bool)

(declare-fun e!4487905 () Bool)

(assert (=> b!7530121 (= e!4487904 (not e!4487905))))

(declare-fun res!3017955 () Bool)

(assert (=> b!7530121 (=> res!3017955 e!4487905)))

(declare-datatypes ((C!40040 0))(
  ( (C!40041 (val!30460 Int)) )
))
(declare-datatypes ((List!72740 0))(
  ( (Nil!72616) (Cons!72616 (h!79064 C!40040) (t!387447 List!72740)) )
))
(declare-fun knownP!30 () List!72740)

(declare-fun testedP!423 () List!72740)

(declare-datatypes ((Regex!19857 0))(
  ( (ElementMatch!19857 (c!1390746 C!40040)) (Concat!28702 (regOne!40226 Regex!19857) (regTwo!40226 Regex!19857)) (EmptyExpr!19857) (Star!19857 (reg!20186 Regex!19857)) (EmptyLang!19857) (Union!19857 (regOne!40227 Regex!19857) (regTwo!40227 Regex!19857)) )
))
(declare-fun r!24333 () Regex!19857)

(declare-fun matchR!9459 (Regex!19857 List!72740) Bool)

(declare-fun getSuffix!3543 (List!72740 List!72740) List!72740)

(assert (=> b!7530121 (= res!3017955 (not (matchR!9459 r!24333 (getSuffix!3543 knownP!30 testedP!423))))))

(declare-fun isPrefix!6063 (List!72740 List!72740) Bool)

(assert (=> b!7530121 (isPrefix!6063 testedP!423 knownP!30)))

(declare-datatypes ((Unit!166628 0))(
  ( (Unit!166629) )
))
(declare-fun lt!2640239 () Unit!166628)

(declare-fun input!7874 () List!72740)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!813 (List!72740 List!72740 List!72740) Unit!166628)

(assert (=> b!7530121 (= lt!2640239 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!813 knownP!30 testedP!423 input!7874))))

(declare-fun b!7530122 () Bool)

(declare-fun e!4487899 () Bool)

(declare-fun tp!2188990 () Bool)

(assert (=> b!7530122 (= e!4487899 tp!2188990)))

(declare-fun b!7530123 () Bool)

(declare-fun res!3017960 () Bool)

(declare-fun e!4487903 () Bool)

(assert (=> b!7530123 (=> (not res!3017960) (not e!4487903))))

(assert (=> b!7530123 (= res!3017960 (isPrefix!6063 knownP!30 input!7874))))

(declare-fun b!7530124 () Bool)

(assert (=> b!7530124 (= e!4487899 tp_is_empty!50069)))

(declare-fun b!7530125 () Bool)

(declare-fun tp!2188985 () Bool)

(declare-fun tp!2188987 () Bool)

(assert (=> b!7530125 (= e!4487899 (and tp!2188985 tp!2188987))))

(declare-fun b!7530126 () Bool)

(declare-fun tp!2188994 () Bool)

(declare-fun tp!2188992 () Bool)

(assert (=> b!7530126 (= e!4487899 (and tp!2188994 tp!2188992))))

(declare-fun b!7530127 () Bool)

(declare-fun res!3017957 () Bool)

(assert (=> b!7530127 (=> (not res!3017957) (not e!4487904))))

(declare-fun baseR!101 () Regex!19857)

(assert (=> b!7530127 (= res!3017957 (matchR!9459 baseR!101 knownP!30))))

(declare-fun b!7530128 () Bool)

(declare-fun tp!2188989 () Bool)

(declare-fun tp!2188991 () Bool)

(assert (=> b!7530128 (= e!4487900 (and tp!2188989 tp!2188991))))

(declare-fun b!7530129 () Bool)

(declare-fun e!4487898 () Bool)

(declare-fun tp!2188993 () Bool)

(assert (=> b!7530129 (= e!4487898 (and tp_is_empty!50069 tp!2188993))))

(declare-fun b!7530130 () Bool)

(assert (=> b!7530130 (= e!4487903 e!4487904)))

(declare-fun res!3017964 () Bool)

(assert (=> b!7530130 (=> (not res!3017964) (not e!4487904))))

(declare-fun lt!2640234 () Int)

(declare-fun lt!2640237 () Int)

(assert (=> b!7530130 (= res!3017964 (>= lt!2640234 lt!2640237))))

(declare-fun size!42353 (List!72740) Int)

(assert (=> b!7530130 (= lt!2640237 (size!42353 testedP!423))))

(assert (=> b!7530130 (= lt!2640234 (size!42353 knownP!30))))

(declare-fun b!7530132 () Bool)

(declare-fun tp!2188988 () Bool)

(assert (=> b!7530132 (= e!4487900 tp!2188988)))

(declare-fun b!7530133 () Bool)

(declare-fun res!3017958 () Bool)

(assert (=> b!7530133 (=> res!3017958 e!4487905)))

(assert (=> b!7530133 (= res!3017958 (not (= lt!2640237 lt!2640234)))))

(declare-fun b!7530134 () Bool)

(declare-fun res!3017959 () Bool)

(assert (=> b!7530134 (=> res!3017959 e!4487905)))

(declare-fun derivative!389 (Regex!19857 List!72740) Regex!19857)

(assert (=> b!7530134 (= res!3017959 (not (= (derivative!389 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7530135 () Bool)

(declare-fun res!3017961 () Bool)

(assert (=> b!7530135 (=> (not res!3017961) (not e!4487903))))

(assert (=> b!7530135 (= res!3017961 (isPrefix!6063 testedP!423 input!7874))))

(declare-fun b!7530136 () Bool)

(declare-fun res!3017956 () Bool)

(assert (=> b!7530136 (=> (not res!3017956) (not e!4487903))))

(declare-fun validRegex!10285 (Regex!19857) Bool)

(assert (=> b!7530136 (= res!3017956 (validRegex!10285 r!24333))))

(declare-fun b!7530137 () Bool)

(assert (=> b!7530137 (= e!4487900 tp_is_empty!50069)))

(declare-fun b!7530138 () Bool)

(declare-fun lt!2640240 () Int)

(assert (=> b!7530138 (= e!4487905 (>= lt!2640240 lt!2640237))))

(declare-fun lt!2640236 () List!72740)

(declare-datatypes ((tuple2!68816 0))(
  ( (tuple2!68817 (_1!37711 List!72740) (_2!37711 List!72740)) )
))
(declare-fun findLongestMatchInner!2116 (Regex!19857 List!72740 Int List!72740 List!72740 Int) tuple2!68816)

(assert (=> b!7530138 (>= (size!42353 (_1!37711 (findLongestMatchInner!2116 r!24333 testedP!423 lt!2640237 lt!2640236 input!7874 lt!2640240))) lt!2640237)))

(assert (=> b!7530138 (= lt!2640240 (size!42353 input!7874))))

(assert (=> b!7530138 (= lt!2640236 (getSuffix!3543 input!7874 testedP!423))))

(declare-fun lt!2640235 () Unit!166628)

(declare-fun lemmaIfMatchRThenLongestMatchFromThereReturnsAtLeastThis!2 (Regex!19857 Regex!19857 List!72740 List!72740) Unit!166628)

(assert (=> b!7530138 (= lt!2640235 (lemmaIfMatchRThenLongestMatchFromThereReturnsAtLeastThis!2 baseR!101 r!24333 input!7874 testedP!423))))

(assert (=> b!7530138 (= testedP!423 knownP!30)))

(declare-fun lt!2640238 () Unit!166628)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1517 (List!72740 List!72740 List!72740) Unit!166628)

(assert (=> b!7530138 (= lt!2640238 (lemmaIsPrefixSameLengthThenSameList!1517 testedP!423 knownP!30 input!7874))))

(declare-fun b!7530139 () Bool)

(declare-fun res!3017962 () Bool)

(assert (=> b!7530139 (=> res!3017962 e!4487905)))

(declare-fun lostCause!1649 (Regex!19857) Bool)

(assert (=> b!7530139 (= res!3017962 (lostCause!1649 r!24333))))

(declare-fun res!3017963 () Bool)

(assert (=> start!728552 (=> (not res!3017963) (not e!4487903))))

(assert (=> start!728552 (= res!3017963 (validRegex!10285 baseR!101))))

(assert (=> start!728552 e!4487903))

(assert (=> start!728552 e!4487899))

(assert (=> start!728552 e!4487902))

(assert (=> start!728552 e!4487898))

(declare-fun e!4487901 () Bool)

(assert (=> start!728552 e!4487901))

(assert (=> start!728552 e!4487900))

(declare-fun b!7530131 () Bool)

(declare-fun tp!2188986 () Bool)

(assert (=> b!7530131 (= e!4487901 (and tp_is_empty!50069 tp!2188986))))

(assert (= (and start!728552 res!3017963) b!7530136))

(assert (= (and b!7530136 res!3017956) b!7530135))

(assert (= (and b!7530135 res!3017961) b!7530123))

(assert (= (and b!7530123 res!3017960) b!7530130))

(assert (= (and b!7530130 res!3017964) b!7530127))

(assert (= (and b!7530127 res!3017957) b!7530121))

(assert (= (and b!7530121 (not res!3017955)) b!7530134))

(assert (= (and b!7530134 (not res!3017959)) b!7530139))

(assert (= (and b!7530139 (not res!3017962)) b!7530133))

(assert (= (and b!7530133 (not res!3017958)) b!7530138))

(get-info :version)

(assert (= (and start!728552 ((_ is ElementMatch!19857) baseR!101)) b!7530124))

(assert (= (and start!728552 ((_ is Concat!28702) baseR!101)) b!7530126))

(assert (= (and start!728552 ((_ is Star!19857) baseR!101)) b!7530122))

(assert (= (and start!728552 ((_ is Union!19857) baseR!101)) b!7530125))

(assert (= (and start!728552 ((_ is Cons!72616) input!7874)) b!7530119))

(assert (= (and start!728552 ((_ is Cons!72616) knownP!30)) b!7530129))

(assert (= (and start!728552 ((_ is Cons!72616) testedP!423)) b!7530131))

(assert (= (and start!728552 ((_ is ElementMatch!19857) r!24333)) b!7530137))

(assert (= (and start!728552 ((_ is Concat!28702) r!24333)) b!7530120))

(assert (= (and start!728552 ((_ is Star!19857) r!24333)) b!7530132))

(assert (= (and start!728552 ((_ is Union!19857) r!24333)) b!7530128))

(declare-fun m!8103664 () Bool)

(assert (=> b!7530123 m!8103664))

(declare-fun m!8103666 () Bool)

(assert (=> b!7530139 m!8103666))

(declare-fun m!8103668 () Bool)

(assert (=> b!7530134 m!8103668))

(declare-fun m!8103670 () Bool)

(assert (=> b!7530127 m!8103670))

(declare-fun m!8103672 () Bool)

(assert (=> start!728552 m!8103672))

(declare-fun m!8103674 () Bool)

(assert (=> b!7530138 m!8103674))

(declare-fun m!8103676 () Bool)

(assert (=> b!7530138 m!8103676))

(declare-fun m!8103678 () Bool)

(assert (=> b!7530138 m!8103678))

(declare-fun m!8103680 () Bool)

(assert (=> b!7530138 m!8103680))

(declare-fun m!8103682 () Bool)

(assert (=> b!7530138 m!8103682))

(declare-fun m!8103684 () Bool)

(assert (=> b!7530138 m!8103684))

(declare-fun m!8103686 () Bool)

(assert (=> b!7530135 m!8103686))

(declare-fun m!8103688 () Bool)

(assert (=> b!7530130 m!8103688))

(declare-fun m!8103690 () Bool)

(assert (=> b!7530130 m!8103690))

(declare-fun m!8103692 () Bool)

(assert (=> b!7530136 m!8103692))

(declare-fun m!8103694 () Bool)

(assert (=> b!7530121 m!8103694))

(assert (=> b!7530121 m!8103694))

(declare-fun m!8103696 () Bool)

(assert (=> b!7530121 m!8103696))

(declare-fun m!8103698 () Bool)

(assert (=> b!7530121 m!8103698))

(declare-fun m!8103700 () Bool)

(assert (=> b!7530121 m!8103700))

(check-sat (not b!7530139) (not b!7530126) (not b!7530129) (not b!7530130) (not b!7530123) (not b!7530134) (not b!7530127) (not b!7530136) (not b!7530128) (not b!7530121) (not start!728552) (not b!7530138) (not b!7530120) (not b!7530132) (not b!7530122) (not b!7530119) tp_is_empty!50069 (not b!7530135) (not b!7530125) (not b!7530131))
(check-sat)
(get-model)

(declare-fun b!7530168 () Bool)

(declare-fun res!3017982 () Bool)

(declare-fun e!4487926 () Bool)

(assert (=> b!7530168 (=> (not res!3017982) (not e!4487926))))

(declare-fun call!690823 () Bool)

(assert (=> b!7530168 (= res!3017982 (not call!690823))))

(declare-fun b!7530169 () Bool)

(declare-fun head!15456 (List!72740) C!40040)

(assert (=> b!7530169 (= e!4487926 (= (head!15456 knownP!30) (c!1390746 baseR!101)))))

(declare-fun b!7530170 () Bool)

(declare-fun e!4487922 () Bool)

(declare-fun e!4487923 () Bool)

(assert (=> b!7530170 (= e!4487922 e!4487923)))

(declare-fun res!3017981 () Bool)

(assert (=> b!7530170 (=> (not res!3017981) (not e!4487923))))

(declare-fun lt!2640243 () Bool)

(assert (=> b!7530170 (= res!3017981 (not lt!2640243))))

(declare-fun b!7530172 () Bool)

(declare-fun res!3017984 () Bool)

(assert (=> b!7530172 (=> (not res!3017984) (not e!4487926))))

(declare-fun isEmpty!41346 (List!72740) Bool)

(declare-fun tail!15016 (List!72740) List!72740)

(assert (=> b!7530172 (= res!3017984 (isEmpty!41346 (tail!15016 knownP!30)))))

(declare-fun b!7530173 () Bool)

(declare-fun e!4487924 () Bool)

(declare-fun nullable!8654 (Regex!19857) Bool)

(assert (=> b!7530173 (= e!4487924 (nullable!8654 baseR!101))))

(declare-fun b!7530174 () Bool)

(declare-fun derivativeStep!5660 (Regex!19857 C!40040) Regex!19857)

(assert (=> b!7530174 (= e!4487924 (matchR!9459 (derivativeStep!5660 baseR!101 (head!15456 knownP!30)) (tail!15016 knownP!30)))))

(declare-fun b!7530175 () Bool)

(declare-fun e!4487920 () Bool)

(assert (=> b!7530175 (= e!4487920 (= lt!2640243 call!690823))))

(declare-fun b!7530176 () Bool)

(declare-fun res!3017983 () Bool)

(declare-fun e!4487921 () Bool)

(assert (=> b!7530176 (=> res!3017983 e!4487921)))

(assert (=> b!7530176 (= res!3017983 (not (isEmpty!41346 (tail!15016 knownP!30))))))

(declare-fun bm!690818 () Bool)

(assert (=> bm!690818 (= call!690823 (isEmpty!41346 knownP!30))))

(declare-fun b!7530177 () Bool)

(assert (=> b!7530177 (= e!4487923 e!4487921)))

(declare-fun res!3017986 () Bool)

(assert (=> b!7530177 (=> res!3017986 e!4487921)))

(assert (=> b!7530177 (= res!3017986 call!690823)))

(declare-fun b!7530178 () Bool)

(declare-fun e!4487925 () Bool)

(assert (=> b!7530178 (= e!4487920 e!4487925)))

(declare-fun c!1390755 () Bool)

(assert (=> b!7530178 (= c!1390755 ((_ is EmptyLang!19857) baseR!101))))

(declare-fun b!7530179 () Bool)

(assert (=> b!7530179 (= e!4487925 (not lt!2640243))))

(declare-fun b!7530171 () Bool)

(declare-fun res!3017985 () Bool)

(assert (=> b!7530171 (=> res!3017985 e!4487922)))

(assert (=> b!7530171 (= res!3017985 e!4487926)))

(declare-fun res!3017988 () Bool)

(assert (=> b!7530171 (=> (not res!3017988) (not e!4487926))))

(assert (=> b!7530171 (= res!3017988 lt!2640243)))

(declare-fun d!2309692 () Bool)

(assert (=> d!2309692 e!4487920))

(declare-fun c!1390753 () Bool)

(assert (=> d!2309692 (= c!1390753 ((_ is EmptyExpr!19857) baseR!101))))

(assert (=> d!2309692 (= lt!2640243 e!4487924)))

(declare-fun c!1390754 () Bool)

(assert (=> d!2309692 (= c!1390754 (isEmpty!41346 knownP!30))))

(assert (=> d!2309692 (validRegex!10285 baseR!101)))

(assert (=> d!2309692 (= (matchR!9459 baseR!101 knownP!30) lt!2640243)))

(declare-fun b!7530180 () Bool)

(declare-fun res!3017987 () Bool)

(assert (=> b!7530180 (=> res!3017987 e!4487922)))

(assert (=> b!7530180 (= res!3017987 (not ((_ is ElementMatch!19857) baseR!101)))))

(assert (=> b!7530180 (= e!4487925 e!4487922)))

(declare-fun b!7530181 () Bool)

(assert (=> b!7530181 (= e!4487921 (not (= (head!15456 knownP!30) (c!1390746 baseR!101))))))

(assert (= (and d!2309692 c!1390754) b!7530173))

(assert (= (and d!2309692 (not c!1390754)) b!7530174))

(assert (= (and d!2309692 c!1390753) b!7530175))

(assert (= (and d!2309692 (not c!1390753)) b!7530178))

(assert (= (and b!7530178 c!1390755) b!7530179))

(assert (= (and b!7530178 (not c!1390755)) b!7530180))

(assert (= (and b!7530180 (not res!3017987)) b!7530171))

(assert (= (and b!7530171 res!3017988) b!7530168))

(assert (= (and b!7530168 res!3017982) b!7530172))

(assert (= (and b!7530172 res!3017984) b!7530169))

(assert (= (and b!7530171 (not res!3017985)) b!7530170))

(assert (= (and b!7530170 res!3017981) b!7530177))

(assert (= (and b!7530177 (not res!3017986)) b!7530176))

(assert (= (and b!7530176 (not res!3017983)) b!7530181))

(assert (= (or b!7530175 b!7530168 b!7530177) bm!690818))

(declare-fun m!8103702 () Bool)

(assert (=> b!7530172 m!8103702))

(assert (=> b!7530172 m!8103702))

(declare-fun m!8103704 () Bool)

(assert (=> b!7530172 m!8103704))

(declare-fun m!8103706 () Bool)

(assert (=> b!7530169 m!8103706))

(declare-fun m!8103708 () Bool)

(assert (=> d!2309692 m!8103708))

(assert (=> d!2309692 m!8103672))

(assert (=> b!7530181 m!8103706))

(declare-fun m!8103710 () Bool)

(assert (=> b!7530173 m!8103710))

(assert (=> bm!690818 m!8103708))

(assert (=> b!7530174 m!8103706))

(assert (=> b!7530174 m!8103706))

(declare-fun m!8103712 () Bool)

(assert (=> b!7530174 m!8103712))

(assert (=> b!7530174 m!8103702))

(assert (=> b!7530174 m!8103712))

(assert (=> b!7530174 m!8103702))

(declare-fun m!8103714 () Bool)

(assert (=> b!7530174 m!8103714))

(assert (=> b!7530176 m!8103702))

(assert (=> b!7530176 m!8103702))

(assert (=> b!7530176 m!8103704))

(assert (=> b!7530127 d!2309692))

(declare-fun d!2309694 () Bool)

(declare-fun lt!2640246 () Int)

(assert (=> d!2309694 (>= lt!2640246 0)))

(declare-fun e!4487929 () Int)

(assert (=> d!2309694 (= lt!2640246 e!4487929)))

(declare-fun c!1390758 () Bool)

(assert (=> d!2309694 (= c!1390758 ((_ is Nil!72616) input!7874))))

(assert (=> d!2309694 (= (size!42353 input!7874) lt!2640246)))

(declare-fun b!7530186 () Bool)

(assert (=> b!7530186 (= e!4487929 0)))

(declare-fun b!7530187 () Bool)

(assert (=> b!7530187 (= e!4487929 (+ 1 (size!42353 (t!387447 input!7874))))))

(assert (= (and d!2309694 c!1390758) b!7530186))

(assert (= (and d!2309694 (not c!1390758)) b!7530187))

(declare-fun m!8103716 () Bool)

(assert (=> b!7530187 m!8103716))

(assert (=> b!7530138 d!2309694))

(declare-fun d!2309696 () Bool)

(assert (=> d!2309696 (= testedP!423 knownP!30)))

(declare-fun lt!2640249 () Unit!166628)

(declare-fun choose!58264 (List!72740 List!72740 List!72740) Unit!166628)

(assert (=> d!2309696 (= lt!2640249 (choose!58264 testedP!423 knownP!30 input!7874))))

(assert (=> d!2309696 (isPrefix!6063 testedP!423 input!7874)))

(assert (=> d!2309696 (= (lemmaIsPrefixSameLengthThenSameList!1517 testedP!423 knownP!30 input!7874) lt!2640249)))

(declare-fun bs!1939813 () Bool)

(assert (= bs!1939813 d!2309696))

(declare-fun m!8103718 () Bool)

(assert (=> bs!1939813 m!8103718))

(assert (=> bs!1939813 m!8103686))

(assert (=> b!7530138 d!2309696))

(declare-fun bm!690835 () Bool)

(declare-fun call!690846 () Bool)

(assert (=> bm!690835 (= call!690846 (isPrefix!6063 input!7874 input!7874))))

(declare-fun bm!690836 () Bool)

(declare-fun call!690840 () Bool)

(assert (=> bm!690836 (= call!690840 (nullable!8654 r!24333))))

(declare-fun d!2309698 () Bool)

(declare-fun e!4487968 () Bool)

(assert (=> d!2309698 e!4487968))

(declare-fun res!3018006 () Bool)

(assert (=> d!2309698 (=> (not res!3018006) (not e!4487968))))

(declare-fun lt!2640327 () tuple2!68816)

(declare-fun ++!17379 (List!72740 List!72740) List!72740)

(assert (=> d!2309698 (= res!3018006 (= (++!17379 (_1!37711 lt!2640327) (_2!37711 lt!2640327)) input!7874))))

(declare-fun e!4487965 () tuple2!68816)

(assert (=> d!2309698 (= lt!2640327 e!4487965)))

(declare-fun c!1390782 () Bool)

(assert (=> d!2309698 (= c!1390782 (lostCause!1649 r!24333))))

(declare-fun lt!2640320 () Unit!166628)

(declare-fun Unit!166630 () Unit!166628)

(assert (=> d!2309698 (= lt!2640320 Unit!166630)))

(assert (=> d!2309698 (= (getSuffix!3543 input!7874 testedP!423) lt!2640236)))

(declare-fun lt!2640322 () Unit!166628)

(declare-fun lt!2640337 () Unit!166628)

(assert (=> d!2309698 (= lt!2640322 lt!2640337)))

(declare-fun lt!2640317 () List!72740)

(assert (=> d!2309698 (= lt!2640236 lt!2640317)))

(declare-fun lemmaSamePrefixThenSameSuffix!2822 (List!72740 List!72740 List!72740 List!72740 List!72740) Unit!166628)

(assert (=> d!2309698 (= lt!2640337 (lemmaSamePrefixThenSameSuffix!2822 testedP!423 lt!2640236 testedP!423 lt!2640317 input!7874))))

(assert (=> d!2309698 (= lt!2640317 (getSuffix!3543 input!7874 testedP!423))))

(declare-fun lt!2640331 () Unit!166628)

(declare-fun lt!2640341 () Unit!166628)

(assert (=> d!2309698 (= lt!2640331 lt!2640341)))

(assert (=> d!2309698 (isPrefix!6063 testedP!423 (++!17379 testedP!423 lt!2640236))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3736 (List!72740 List!72740) Unit!166628)

(assert (=> d!2309698 (= lt!2640341 (lemmaConcatTwoListThenFirstIsPrefix!3736 testedP!423 lt!2640236))))

(assert (=> d!2309698 (validRegex!10285 r!24333)))

(assert (=> d!2309698 (= (findLongestMatchInner!2116 r!24333 testedP!423 lt!2640237 lt!2640236 input!7874 lt!2640240) lt!2640327)))

(declare-fun b!7530242 () Bool)

(declare-fun e!4487962 () tuple2!68816)

(assert (=> b!7530242 (= e!4487962 (tuple2!68817 Nil!72616 input!7874))))

(declare-fun b!7530243 () Bool)

(declare-fun e!4487967 () tuple2!68816)

(assert (=> b!7530243 (= e!4487965 e!4487967)))

(declare-fun c!1390783 () Bool)

(assert (=> b!7530243 (= c!1390783 (= lt!2640237 lt!2640240))))

(declare-fun b!7530244 () Bool)

(declare-fun c!1390778 () Bool)

(assert (=> b!7530244 (= c!1390778 call!690840)))

(declare-fun lt!2640325 () Unit!166628)

(declare-fun lt!2640336 () Unit!166628)

(assert (=> b!7530244 (= lt!2640325 lt!2640336)))

(assert (=> b!7530244 (= input!7874 testedP!423)))

(declare-fun call!690843 () Unit!166628)

(assert (=> b!7530244 (= lt!2640336 call!690843)))

(declare-fun lt!2640338 () Unit!166628)

(declare-fun lt!2640316 () Unit!166628)

(assert (=> b!7530244 (= lt!2640338 lt!2640316)))

(assert (=> b!7530244 call!690846))

(declare-fun call!690845 () Unit!166628)

(assert (=> b!7530244 (= lt!2640316 call!690845)))

(assert (=> b!7530244 (= e!4487967 e!4487962)))

(declare-fun bm!690837 () Bool)

(declare-fun lemmaIsPrefixRefl!3863 (List!72740 List!72740) Unit!166628)

(assert (=> bm!690837 (= call!690845 (lemmaIsPrefixRefl!3863 input!7874 input!7874))))

(declare-fun b!7530245 () Bool)

(declare-fun e!4487966 () tuple2!68816)

(declare-fun lt!2640339 () tuple2!68816)

(assert (=> b!7530245 (= e!4487966 lt!2640339)))

(declare-fun b!7530246 () Bool)

(declare-fun e!4487964 () Unit!166628)

(declare-fun Unit!166631 () Unit!166628)

(assert (=> b!7530246 (= e!4487964 Unit!166631)))

(declare-fun lt!2640326 () Unit!166628)

(assert (=> b!7530246 (= lt!2640326 call!690845)))

(assert (=> b!7530246 call!690846))

(declare-fun lt!2640343 () Unit!166628)

(assert (=> b!7530246 (= lt!2640343 lt!2640326)))

(declare-fun lt!2640333 () Unit!166628)

(assert (=> b!7530246 (= lt!2640333 call!690843)))

(assert (=> b!7530246 (= input!7874 testedP!423)))

(declare-fun lt!2640334 () Unit!166628)

(assert (=> b!7530246 (= lt!2640334 lt!2640333)))

(assert (=> b!7530246 false))

(declare-fun b!7530247 () Bool)

(declare-fun Unit!166632 () Unit!166628)

(assert (=> b!7530247 (= e!4487964 Unit!166632)))

(declare-fun b!7530248 () Bool)

(declare-fun c!1390781 () Bool)

(assert (=> b!7530248 (= c!1390781 call!690840)))

(declare-fun lt!2640332 () Unit!166628)

(declare-fun lt!2640342 () Unit!166628)

(assert (=> b!7530248 (= lt!2640332 lt!2640342)))

(declare-fun lt!2640323 () C!40040)

(declare-fun lt!2640329 () List!72740)

(assert (=> b!7530248 (= (++!17379 (++!17379 testedP!423 (Cons!72616 lt!2640323 Nil!72616)) lt!2640329) input!7874)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3172 (List!72740 C!40040 List!72740 List!72740) Unit!166628)

(assert (=> b!7530248 (= lt!2640342 (lemmaMoveElementToOtherListKeepsConcatEq!3172 testedP!423 lt!2640323 lt!2640329 input!7874))))

(assert (=> b!7530248 (= lt!2640329 (tail!15016 lt!2640236))))

(assert (=> b!7530248 (= lt!2640323 (head!15456 lt!2640236))))

(declare-fun lt!2640321 () Unit!166628)

(declare-fun lt!2640335 () Unit!166628)

(assert (=> b!7530248 (= lt!2640321 lt!2640335)))

(assert (=> b!7530248 (isPrefix!6063 (++!17379 testedP!423 (Cons!72616 (head!15456 (getSuffix!3543 input!7874 testedP!423)) Nil!72616)) input!7874)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1141 (List!72740 List!72740) Unit!166628)

(assert (=> b!7530248 (= lt!2640335 (lemmaAddHeadSuffixToPrefixStillPrefix!1141 testedP!423 input!7874))))

(declare-fun lt!2640328 () Unit!166628)

(declare-fun lt!2640340 () Unit!166628)

(assert (=> b!7530248 (= lt!2640328 lt!2640340)))

(assert (=> b!7530248 (= lt!2640340 (lemmaAddHeadSuffixToPrefixStillPrefix!1141 testedP!423 input!7874))))

(declare-fun lt!2640318 () List!72740)

(assert (=> b!7530248 (= lt!2640318 (++!17379 testedP!423 (Cons!72616 (head!15456 lt!2640236) Nil!72616)))))

(declare-fun lt!2640330 () Unit!166628)

(assert (=> b!7530248 (= lt!2640330 e!4487964)))

(declare-fun c!1390780 () Bool)

(assert (=> b!7530248 (= c!1390780 (= (size!42353 testedP!423) (size!42353 input!7874)))))

(declare-fun lt!2640319 () Unit!166628)

(declare-fun lt!2640324 () Unit!166628)

(assert (=> b!7530248 (= lt!2640319 lt!2640324)))

(assert (=> b!7530248 (<= (size!42353 testedP!423) (size!42353 input!7874))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!1011 (List!72740 List!72740) Unit!166628)

(assert (=> b!7530248 (= lt!2640324 (lemmaIsPrefixThenSmallerEqSize!1011 testedP!423 input!7874))))

(declare-fun e!4487969 () tuple2!68816)

(assert (=> b!7530248 (= e!4487967 e!4487969)))

(declare-fun b!7530249 () Bool)

(assert (=> b!7530249 (= e!4487965 (tuple2!68817 Nil!72616 input!7874))))

(declare-fun bm!690838 () Bool)

(assert (=> bm!690838 (= call!690843 (lemmaIsPrefixSameLengthThenSameList!1517 input!7874 testedP!423 input!7874))))

(declare-fun b!7530250 () Bool)

(declare-fun e!4487963 () Bool)

(assert (=> b!7530250 (= e!4487968 e!4487963)))

(declare-fun res!3018005 () Bool)

(assert (=> b!7530250 (=> res!3018005 e!4487963)))

(assert (=> b!7530250 (= res!3018005 (isEmpty!41346 (_1!37711 lt!2640327)))))

(declare-fun bm!690839 () Bool)

(declare-fun call!690847 () C!40040)

(assert (=> bm!690839 (= call!690847 (head!15456 lt!2640236))))

(declare-fun bm!690840 () Bool)

(declare-fun call!690842 () List!72740)

(assert (=> bm!690840 (= call!690842 (tail!15016 lt!2640236))))

(declare-fun call!690844 () tuple2!68816)

(declare-fun bm!690841 () Bool)

(declare-fun call!690841 () Regex!19857)

(assert (=> bm!690841 (= call!690844 (findLongestMatchInner!2116 call!690841 lt!2640318 (+ lt!2640237 1) call!690842 input!7874 lt!2640240))))

(declare-fun b!7530251 () Bool)

(assert (=> b!7530251 (= e!4487966 (tuple2!68817 testedP!423 lt!2640236))))

(declare-fun b!7530252 () Bool)

(assert (=> b!7530252 (= e!4487969 e!4487966)))

(assert (=> b!7530252 (= lt!2640339 call!690844)))

(declare-fun c!1390779 () Bool)

(assert (=> b!7530252 (= c!1390779 (isEmpty!41346 (_1!37711 lt!2640339)))))

(declare-fun b!7530253 () Bool)

(assert (=> b!7530253 (= e!4487963 (>= (size!42353 (_1!37711 lt!2640327)) (size!42353 testedP!423)))))

(declare-fun b!7530254 () Bool)

(assert (=> b!7530254 (= e!4487969 call!690844)))

(declare-fun b!7530255 () Bool)

(assert (=> b!7530255 (= e!4487962 (tuple2!68817 testedP!423 Nil!72616))))

(declare-fun bm!690842 () Bool)

(assert (=> bm!690842 (= call!690841 (derivativeStep!5660 r!24333 call!690847))))

(assert (= (and d!2309698 c!1390782) b!7530249))

(assert (= (and d!2309698 (not c!1390782)) b!7530243))

(assert (= (and b!7530243 c!1390783) b!7530244))

(assert (= (and b!7530243 (not c!1390783)) b!7530248))

(assert (= (and b!7530244 c!1390778) b!7530255))

(assert (= (and b!7530244 (not c!1390778)) b!7530242))

(assert (= (and b!7530248 c!1390780) b!7530246))

(assert (= (and b!7530248 (not c!1390780)) b!7530247))

(assert (= (and b!7530248 c!1390781) b!7530252))

(assert (= (and b!7530248 (not c!1390781)) b!7530254))

(assert (= (and b!7530252 c!1390779) b!7530251))

(assert (= (and b!7530252 (not c!1390779)) b!7530245))

(assert (= (or b!7530252 b!7530254) bm!690840))

(assert (= (or b!7530252 b!7530254) bm!690839))

(assert (= (or b!7530252 b!7530254) bm!690842))

(assert (= (or b!7530252 b!7530254) bm!690841))

(assert (= (or b!7530244 b!7530246) bm!690835))

(assert (= (or b!7530244 b!7530248) bm!690836))

(assert (= (or b!7530244 b!7530246) bm!690838))

(assert (= (or b!7530244 b!7530246) bm!690837))

(assert (= (and d!2309698 res!3018006) b!7530250))

(assert (= (and b!7530250 (not res!3018005)) b!7530253))

(declare-fun m!8103740 () Bool)

(assert (=> bm!690842 m!8103740))

(declare-fun m!8103742 () Bool)

(assert (=> bm!690837 m!8103742))

(declare-fun m!8103744 () Bool)

(assert (=> b!7530252 m!8103744))

(declare-fun m!8103746 () Bool)

(assert (=> d!2309698 m!8103746))

(declare-fun m!8103748 () Bool)

(assert (=> d!2309698 m!8103748))

(declare-fun m!8103750 () Bool)

(assert (=> d!2309698 m!8103750))

(declare-fun m!8103752 () Bool)

(assert (=> d!2309698 m!8103752))

(assert (=> d!2309698 m!8103666))

(assert (=> d!2309698 m!8103750))

(declare-fun m!8103754 () Bool)

(assert (=> d!2309698 m!8103754))

(assert (=> d!2309698 m!8103692))

(assert (=> d!2309698 m!8103678))

(declare-fun m!8103756 () Bool)

(assert (=> bm!690839 m!8103756))

(declare-fun m!8103758 () Bool)

(assert (=> bm!690838 m!8103758))

(declare-fun m!8103760 () Bool)

(assert (=> b!7530248 m!8103760))

(declare-fun m!8103762 () Bool)

(assert (=> b!7530248 m!8103762))

(declare-fun m!8103764 () Bool)

(assert (=> b!7530248 m!8103764))

(assert (=> b!7530248 m!8103680))

(declare-fun m!8103766 () Bool)

(assert (=> b!7530248 m!8103766))

(declare-fun m!8103768 () Bool)

(assert (=> b!7530248 m!8103768))

(declare-fun m!8103770 () Bool)

(assert (=> b!7530248 m!8103770))

(declare-fun m!8103772 () Bool)

(assert (=> b!7530248 m!8103772))

(assert (=> b!7530248 m!8103678))

(declare-fun m!8103774 () Bool)

(assert (=> b!7530248 m!8103774))

(declare-fun m!8103776 () Bool)

(assert (=> b!7530248 m!8103776))

(declare-fun m!8103778 () Bool)

(assert (=> b!7530248 m!8103778))

(assert (=> b!7530248 m!8103678))

(assert (=> b!7530248 m!8103756))

(assert (=> b!7530248 m!8103688))

(assert (=> b!7530248 m!8103766))

(assert (=> b!7530248 m!8103762))

(assert (=> bm!690840 m!8103770))

(declare-fun m!8103780 () Bool)

(assert (=> b!7530253 m!8103780))

(assert (=> b!7530253 m!8103688))

(declare-fun m!8103782 () Bool)

(assert (=> b!7530250 m!8103782))

(declare-fun m!8103784 () Bool)

(assert (=> bm!690836 m!8103784))

(declare-fun m!8103786 () Bool)

(assert (=> bm!690835 m!8103786))

(declare-fun m!8103788 () Bool)

(assert (=> bm!690841 m!8103788))

(assert (=> b!7530138 d!2309698))

(declare-fun d!2309710 () Bool)

(declare-fun lt!2640344 () Int)

(assert (=> d!2309710 (>= lt!2640344 0)))

(declare-fun e!4487970 () Int)

(assert (=> d!2309710 (= lt!2640344 e!4487970)))

(declare-fun c!1390784 () Bool)

(assert (=> d!2309710 (= c!1390784 ((_ is Nil!72616) (_1!37711 (findLongestMatchInner!2116 r!24333 testedP!423 lt!2640237 lt!2640236 input!7874 lt!2640240))))))

(assert (=> d!2309710 (= (size!42353 (_1!37711 (findLongestMatchInner!2116 r!24333 testedP!423 lt!2640237 lt!2640236 input!7874 lt!2640240))) lt!2640344)))

(declare-fun b!7530256 () Bool)

(assert (=> b!7530256 (= e!4487970 0)))

(declare-fun b!7530257 () Bool)

(assert (=> b!7530257 (= e!4487970 (+ 1 (size!42353 (t!387447 (_1!37711 (findLongestMatchInner!2116 r!24333 testedP!423 lt!2640237 lt!2640236 input!7874 lt!2640240))))))))

(assert (= (and d!2309710 c!1390784) b!7530256))

(assert (= (and d!2309710 (not c!1390784)) b!7530257))

(declare-fun m!8103790 () Bool)

(assert (=> b!7530257 m!8103790))

(assert (=> b!7530138 d!2309710))

(declare-fun d!2309712 () Bool)

(assert (=> d!2309712 (>= (size!42353 (_1!37711 (findLongestMatchInner!2116 r!24333 testedP!423 (size!42353 testedP!423) (getSuffix!3543 input!7874 testedP!423) input!7874 (size!42353 input!7874)))) (size!42353 testedP!423))))

(declare-fun lt!2640347 () Unit!166628)

(declare-fun choose!58265 (Regex!19857 Regex!19857 List!72740 List!72740) Unit!166628)

(assert (=> d!2309712 (= lt!2640347 (choose!58265 baseR!101 r!24333 input!7874 testedP!423))))

(assert (=> d!2309712 (validRegex!10285 baseR!101)))

(assert (=> d!2309712 (= (lemmaIfMatchRThenLongestMatchFromThereReturnsAtLeastThis!2 baseR!101 r!24333 input!7874 testedP!423) lt!2640347)))

(declare-fun bs!1939814 () Bool)

(assert (= bs!1939814 d!2309712))

(assert (=> bs!1939814 m!8103688))

(assert (=> bs!1939814 m!8103678))

(assert (=> bs!1939814 m!8103680))

(declare-fun m!8103792 () Bool)

(assert (=> bs!1939814 m!8103792))

(assert (=> bs!1939814 m!8103688))

(assert (=> bs!1939814 m!8103680))

(declare-fun m!8103794 () Bool)

(assert (=> bs!1939814 m!8103794))

(assert (=> bs!1939814 m!8103672))

(declare-fun m!8103796 () Bool)

(assert (=> bs!1939814 m!8103796))

(assert (=> bs!1939814 m!8103678))

(assert (=> b!7530138 d!2309712))

(declare-fun d!2309714 () Bool)

(declare-fun lt!2640350 () List!72740)

(assert (=> d!2309714 (= (++!17379 testedP!423 lt!2640350) input!7874)))

(declare-fun e!4487973 () List!72740)

(assert (=> d!2309714 (= lt!2640350 e!4487973)))

(declare-fun c!1390787 () Bool)

(assert (=> d!2309714 (= c!1390787 ((_ is Cons!72616) testedP!423))))

(assert (=> d!2309714 (>= (size!42353 input!7874) (size!42353 testedP!423))))

(assert (=> d!2309714 (= (getSuffix!3543 input!7874 testedP!423) lt!2640350)))

(declare-fun b!7530262 () Bool)

(assert (=> b!7530262 (= e!4487973 (getSuffix!3543 (tail!15016 input!7874) (t!387447 testedP!423)))))

(declare-fun b!7530263 () Bool)

(assert (=> b!7530263 (= e!4487973 input!7874)))

(assert (= (and d!2309714 c!1390787) b!7530262))

(assert (= (and d!2309714 (not c!1390787)) b!7530263))

(declare-fun m!8103798 () Bool)

(assert (=> d!2309714 m!8103798))

(assert (=> d!2309714 m!8103680))

(assert (=> d!2309714 m!8103688))

(declare-fun m!8103800 () Bool)

(assert (=> b!7530262 m!8103800))

(assert (=> b!7530262 m!8103800))

(declare-fun m!8103802 () Bool)

(assert (=> b!7530262 m!8103802))

(assert (=> b!7530138 d!2309714))

(declare-fun bm!690849 () Bool)

(declare-fun call!690856 () Bool)

(declare-fun call!690855 () Bool)

(assert (=> bm!690849 (= call!690856 call!690855)))

(declare-fun b!7530282 () Bool)

(declare-fun e!4487991 () Bool)

(assert (=> b!7530282 (= e!4487991 call!690856)))

(declare-fun b!7530283 () Bool)

(declare-fun e!4487993 () Bool)

(declare-fun e!4487994 () Bool)

(assert (=> b!7530283 (= e!4487993 e!4487994)))

(declare-fun c!1390793 () Bool)

(assert (=> b!7530283 (= c!1390793 ((_ is Star!19857) r!24333))))

(declare-fun b!7530284 () Bool)

(declare-fun e!4487988 () Bool)

(assert (=> b!7530284 (= e!4487994 e!4487988)))

(declare-fun c!1390792 () Bool)

(assert (=> b!7530284 (= c!1390792 ((_ is Union!19857) r!24333))))

(declare-fun bm!690850 () Bool)

(declare-fun call!690854 () Bool)

(assert (=> bm!690850 (= call!690854 (validRegex!10285 (ite c!1390792 (regOne!40227 r!24333) (regOne!40226 r!24333))))))

(declare-fun b!7530285 () Bool)

(declare-fun res!3018019 () Bool)

(declare-fun e!4487990 () Bool)

(assert (=> b!7530285 (=> (not res!3018019) (not e!4487990))))

(assert (=> b!7530285 (= res!3018019 call!690854)))

(assert (=> b!7530285 (= e!4487988 e!4487990)))

(declare-fun d!2309716 () Bool)

(declare-fun res!3018021 () Bool)

(assert (=> d!2309716 (=> res!3018021 e!4487993)))

(assert (=> d!2309716 (= res!3018021 ((_ is ElementMatch!19857) r!24333))))

(assert (=> d!2309716 (= (validRegex!10285 r!24333) e!4487993)))

(declare-fun b!7530286 () Bool)

(declare-fun e!4487992 () Bool)

(assert (=> b!7530286 (= e!4487994 e!4487992)))

(declare-fun res!3018018 () Bool)

(assert (=> b!7530286 (= res!3018018 (not (nullable!8654 (reg!20186 r!24333))))))

(assert (=> b!7530286 (=> (not res!3018018) (not e!4487992))))

(declare-fun b!7530287 () Bool)

(assert (=> b!7530287 (= e!4487992 call!690855)))

(declare-fun b!7530288 () Bool)

(declare-fun res!3018020 () Bool)

(declare-fun e!4487989 () Bool)

(assert (=> b!7530288 (=> res!3018020 e!4487989)))

(assert (=> b!7530288 (= res!3018020 (not ((_ is Concat!28702) r!24333)))))

(assert (=> b!7530288 (= e!4487988 e!4487989)))

(declare-fun bm!690851 () Bool)

(assert (=> bm!690851 (= call!690855 (validRegex!10285 (ite c!1390793 (reg!20186 r!24333) (ite c!1390792 (regTwo!40227 r!24333) (regTwo!40226 r!24333)))))))

(declare-fun b!7530289 () Bool)

(assert (=> b!7530289 (= e!4487990 call!690856)))

(declare-fun b!7530290 () Bool)

(assert (=> b!7530290 (= e!4487989 e!4487991)))

(declare-fun res!3018017 () Bool)

(assert (=> b!7530290 (=> (not res!3018017) (not e!4487991))))

(assert (=> b!7530290 (= res!3018017 call!690854)))

(assert (= (and d!2309716 (not res!3018021)) b!7530283))

(assert (= (and b!7530283 c!1390793) b!7530286))

(assert (= (and b!7530283 (not c!1390793)) b!7530284))

(assert (= (and b!7530286 res!3018018) b!7530287))

(assert (= (and b!7530284 c!1390792) b!7530285))

(assert (= (and b!7530284 (not c!1390792)) b!7530288))

(assert (= (and b!7530285 res!3018019) b!7530289))

(assert (= (and b!7530288 (not res!3018020)) b!7530290))

(assert (= (and b!7530290 res!3018017) b!7530282))

(assert (= (or b!7530285 b!7530290) bm!690850))

(assert (= (or b!7530289 b!7530282) bm!690849))

(assert (= (or b!7530287 bm!690849) bm!690851))

(declare-fun m!8103804 () Bool)

(assert (=> bm!690850 m!8103804))

(declare-fun m!8103806 () Bool)

(assert (=> b!7530286 m!8103806))

(declare-fun m!8103808 () Bool)

(assert (=> bm!690851 m!8103808))

(assert (=> b!7530136 d!2309716))

(declare-fun bm!690852 () Bool)

(declare-fun call!690859 () Bool)

(declare-fun call!690858 () Bool)

(assert (=> bm!690852 (= call!690859 call!690858)))

(declare-fun b!7530291 () Bool)

(declare-fun e!4487998 () Bool)

(assert (=> b!7530291 (= e!4487998 call!690859)))

(declare-fun b!7530292 () Bool)

(declare-fun e!4488000 () Bool)

(declare-fun e!4488001 () Bool)

(assert (=> b!7530292 (= e!4488000 e!4488001)))

(declare-fun c!1390795 () Bool)

(assert (=> b!7530292 (= c!1390795 ((_ is Star!19857) baseR!101))))

(declare-fun b!7530293 () Bool)

(declare-fun e!4487995 () Bool)

(assert (=> b!7530293 (= e!4488001 e!4487995)))

(declare-fun c!1390794 () Bool)

(assert (=> b!7530293 (= c!1390794 ((_ is Union!19857) baseR!101))))

(declare-fun bm!690853 () Bool)

(declare-fun call!690857 () Bool)

(assert (=> bm!690853 (= call!690857 (validRegex!10285 (ite c!1390794 (regOne!40227 baseR!101) (regOne!40226 baseR!101))))))

(declare-fun b!7530294 () Bool)

(declare-fun res!3018024 () Bool)

(declare-fun e!4487997 () Bool)

(assert (=> b!7530294 (=> (not res!3018024) (not e!4487997))))

(assert (=> b!7530294 (= res!3018024 call!690857)))

(assert (=> b!7530294 (= e!4487995 e!4487997)))

(declare-fun d!2309718 () Bool)

(declare-fun res!3018026 () Bool)

(assert (=> d!2309718 (=> res!3018026 e!4488000)))

(assert (=> d!2309718 (= res!3018026 ((_ is ElementMatch!19857) baseR!101))))

(assert (=> d!2309718 (= (validRegex!10285 baseR!101) e!4488000)))

(declare-fun b!7530295 () Bool)

(declare-fun e!4487999 () Bool)

(assert (=> b!7530295 (= e!4488001 e!4487999)))

(declare-fun res!3018023 () Bool)

(assert (=> b!7530295 (= res!3018023 (not (nullable!8654 (reg!20186 baseR!101))))))

(assert (=> b!7530295 (=> (not res!3018023) (not e!4487999))))

(declare-fun b!7530296 () Bool)

(assert (=> b!7530296 (= e!4487999 call!690858)))

(declare-fun b!7530297 () Bool)

(declare-fun res!3018025 () Bool)

(declare-fun e!4487996 () Bool)

(assert (=> b!7530297 (=> res!3018025 e!4487996)))

(assert (=> b!7530297 (= res!3018025 (not ((_ is Concat!28702) baseR!101)))))

(assert (=> b!7530297 (= e!4487995 e!4487996)))

(declare-fun bm!690854 () Bool)

(assert (=> bm!690854 (= call!690858 (validRegex!10285 (ite c!1390795 (reg!20186 baseR!101) (ite c!1390794 (regTwo!40227 baseR!101) (regTwo!40226 baseR!101)))))))

(declare-fun b!7530298 () Bool)

(assert (=> b!7530298 (= e!4487997 call!690859)))

(declare-fun b!7530299 () Bool)

(assert (=> b!7530299 (= e!4487996 e!4487998)))

(declare-fun res!3018022 () Bool)

(assert (=> b!7530299 (=> (not res!3018022) (not e!4487998))))

(assert (=> b!7530299 (= res!3018022 call!690857)))

(assert (= (and d!2309718 (not res!3018026)) b!7530292))

(assert (= (and b!7530292 c!1390795) b!7530295))

(assert (= (and b!7530292 (not c!1390795)) b!7530293))

(assert (= (and b!7530295 res!3018023) b!7530296))

(assert (= (and b!7530293 c!1390794) b!7530294))

(assert (= (and b!7530293 (not c!1390794)) b!7530297))

(assert (= (and b!7530294 res!3018024) b!7530298))

(assert (= (and b!7530297 (not res!3018025)) b!7530299))

(assert (= (and b!7530299 res!3018022) b!7530291))

(assert (= (or b!7530294 b!7530299) bm!690853))

(assert (= (or b!7530298 b!7530291) bm!690852))

(assert (= (or b!7530296 bm!690852) bm!690854))

(declare-fun m!8103810 () Bool)

(assert (=> bm!690853 m!8103810))

(declare-fun m!8103812 () Bool)

(assert (=> b!7530295 m!8103812))

(declare-fun m!8103814 () Bool)

(assert (=> bm!690854 m!8103814))

(assert (=> start!728552 d!2309718))

(declare-fun b!7530300 () Bool)

(declare-fun res!3018028 () Bool)

(declare-fun e!4488008 () Bool)

(assert (=> b!7530300 (=> (not res!3018028) (not e!4488008))))

(declare-fun call!690860 () Bool)

(assert (=> b!7530300 (= res!3018028 (not call!690860))))

(declare-fun b!7530301 () Bool)

(assert (=> b!7530301 (= e!4488008 (= (head!15456 (getSuffix!3543 knownP!30 testedP!423)) (c!1390746 r!24333)))))

(declare-fun b!7530302 () Bool)

(declare-fun e!4488004 () Bool)

(declare-fun e!4488005 () Bool)

(assert (=> b!7530302 (= e!4488004 e!4488005)))

(declare-fun res!3018027 () Bool)

(assert (=> b!7530302 (=> (not res!3018027) (not e!4488005))))

(declare-fun lt!2640351 () Bool)

(assert (=> b!7530302 (= res!3018027 (not lt!2640351))))

(declare-fun b!7530304 () Bool)

(declare-fun res!3018030 () Bool)

(assert (=> b!7530304 (=> (not res!3018030) (not e!4488008))))

(assert (=> b!7530304 (= res!3018030 (isEmpty!41346 (tail!15016 (getSuffix!3543 knownP!30 testedP!423))))))

(declare-fun b!7530305 () Bool)

(declare-fun e!4488006 () Bool)

(assert (=> b!7530305 (= e!4488006 (nullable!8654 r!24333))))

(declare-fun b!7530306 () Bool)

(assert (=> b!7530306 (= e!4488006 (matchR!9459 (derivativeStep!5660 r!24333 (head!15456 (getSuffix!3543 knownP!30 testedP!423))) (tail!15016 (getSuffix!3543 knownP!30 testedP!423))))))

(declare-fun b!7530307 () Bool)

(declare-fun e!4488002 () Bool)

(assert (=> b!7530307 (= e!4488002 (= lt!2640351 call!690860))))

(declare-fun b!7530308 () Bool)

(declare-fun res!3018029 () Bool)

(declare-fun e!4488003 () Bool)

(assert (=> b!7530308 (=> res!3018029 e!4488003)))

(assert (=> b!7530308 (= res!3018029 (not (isEmpty!41346 (tail!15016 (getSuffix!3543 knownP!30 testedP!423)))))))

(declare-fun bm!690855 () Bool)

(assert (=> bm!690855 (= call!690860 (isEmpty!41346 (getSuffix!3543 knownP!30 testedP!423)))))

(declare-fun b!7530309 () Bool)

(assert (=> b!7530309 (= e!4488005 e!4488003)))

(declare-fun res!3018032 () Bool)

(assert (=> b!7530309 (=> res!3018032 e!4488003)))

(assert (=> b!7530309 (= res!3018032 call!690860)))

(declare-fun b!7530310 () Bool)

(declare-fun e!4488007 () Bool)

(assert (=> b!7530310 (= e!4488002 e!4488007)))

(declare-fun c!1390798 () Bool)

(assert (=> b!7530310 (= c!1390798 ((_ is EmptyLang!19857) r!24333))))

(declare-fun b!7530311 () Bool)

(assert (=> b!7530311 (= e!4488007 (not lt!2640351))))

(declare-fun b!7530303 () Bool)

(declare-fun res!3018031 () Bool)

(assert (=> b!7530303 (=> res!3018031 e!4488004)))

(assert (=> b!7530303 (= res!3018031 e!4488008)))

(declare-fun res!3018034 () Bool)

(assert (=> b!7530303 (=> (not res!3018034) (not e!4488008))))

(assert (=> b!7530303 (= res!3018034 lt!2640351)))

(declare-fun d!2309720 () Bool)

(assert (=> d!2309720 e!4488002))

(declare-fun c!1390796 () Bool)

(assert (=> d!2309720 (= c!1390796 ((_ is EmptyExpr!19857) r!24333))))

(assert (=> d!2309720 (= lt!2640351 e!4488006)))

(declare-fun c!1390797 () Bool)

(assert (=> d!2309720 (= c!1390797 (isEmpty!41346 (getSuffix!3543 knownP!30 testedP!423)))))

(assert (=> d!2309720 (validRegex!10285 r!24333)))

(assert (=> d!2309720 (= (matchR!9459 r!24333 (getSuffix!3543 knownP!30 testedP!423)) lt!2640351)))

(declare-fun b!7530312 () Bool)

(declare-fun res!3018033 () Bool)

(assert (=> b!7530312 (=> res!3018033 e!4488004)))

(assert (=> b!7530312 (= res!3018033 (not ((_ is ElementMatch!19857) r!24333)))))

(assert (=> b!7530312 (= e!4488007 e!4488004)))

(declare-fun b!7530313 () Bool)

(assert (=> b!7530313 (= e!4488003 (not (= (head!15456 (getSuffix!3543 knownP!30 testedP!423)) (c!1390746 r!24333))))))

(assert (= (and d!2309720 c!1390797) b!7530305))

(assert (= (and d!2309720 (not c!1390797)) b!7530306))

(assert (= (and d!2309720 c!1390796) b!7530307))

(assert (= (and d!2309720 (not c!1390796)) b!7530310))

(assert (= (and b!7530310 c!1390798) b!7530311))

(assert (= (and b!7530310 (not c!1390798)) b!7530312))

(assert (= (and b!7530312 (not res!3018033)) b!7530303))

(assert (= (and b!7530303 res!3018034) b!7530300))

(assert (= (and b!7530300 res!3018028) b!7530304))

(assert (= (and b!7530304 res!3018030) b!7530301))

(assert (= (and b!7530303 (not res!3018031)) b!7530302))

(assert (= (and b!7530302 res!3018027) b!7530309))

(assert (= (and b!7530309 (not res!3018032)) b!7530308))

(assert (= (and b!7530308 (not res!3018029)) b!7530313))

(assert (= (or b!7530307 b!7530300 b!7530309) bm!690855))

(assert (=> b!7530304 m!8103694))

(declare-fun m!8103816 () Bool)

(assert (=> b!7530304 m!8103816))

(assert (=> b!7530304 m!8103816))

(declare-fun m!8103818 () Bool)

(assert (=> b!7530304 m!8103818))

(assert (=> b!7530301 m!8103694))

(declare-fun m!8103820 () Bool)

(assert (=> b!7530301 m!8103820))

(assert (=> d!2309720 m!8103694))

(declare-fun m!8103822 () Bool)

(assert (=> d!2309720 m!8103822))

(assert (=> d!2309720 m!8103692))

(assert (=> b!7530313 m!8103694))

(assert (=> b!7530313 m!8103820))

(assert (=> b!7530305 m!8103784))

(assert (=> bm!690855 m!8103694))

(assert (=> bm!690855 m!8103822))

(assert (=> b!7530306 m!8103694))

(assert (=> b!7530306 m!8103820))

(assert (=> b!7530306 m!8103820))

(declare-fun m!8103824 () Bool)

(assert (=> b!7530306 m!8103824))

(assert (=> b!7530306 m!8103694))

(assert (=> b!7530306 m!8103816))

(assert (=> b!7530306 m!8103824))

(assert (=> b!7530306 m!8103816))

(declare-fun m!8103826 () Bool)

(assert (=> b!7530306 m!8103826))

(assert (=> b!7530308 m!8103694))

(assert (=> b!7530308 m!8103816))

(assert (=> b!7530308 m!8103816))

(assert (=> b!7530308 m!8103818))

(assert (=> b!7530121 d!2309720))

(declare-fun d!2309722 () Bool)

(declare-fun lt!2640352 () List!72740)

(assert (=> d!2309722 (= (++!17379 testedP!423 lt!2640352) knownP!30)))

(declare-fun e!4488009 () List!72740)

(assert (=> d!2309722 (= lt!2640352 e!4488009)))

(declare-fun c!1390799 () Bool)

(assert (=> d!2309722 (= c!1390799 ((_ is Cons!72616) testedP!423))))

(assert (=> d!2309722 (>= (size!42353 knownP!30) (size!42353 testedP!423))))

(assert (=> d!2309722 (= (getSuffix!3543 knownP!30 testedP!423) lt!2640352)))

(declare-fun b!7530314 () Bool)

(assert (=> b!7530314 (= e!4488009 (getSuffix!3543 (tail!15016 knownP!30) (t!387447 testedP!423)))))

(declare-fun b!7530315 () Bool)

(assert (=> b!7530315 (= e!4488009 knownP!30)))

(assert (= (and d!2309722 c!1390799) b!7530314))

(assert (= (and d!2309722 (not c!1390799)) b!7530315))

(declare-fun m!8103828 () Bool)

(assert (=> d!2309722 m!8103828))

(assert (=> d!2309722 m!8103690))

(assert (=> d!2309722 m!8103688))

(assert (=> b!7530314 m!8103702))

(assert (=> b!7530314 m!8103702))

(declare-fun m!8103830 () Bool)

(assert (=> b!7530314 m!8103830))

(assert (=> b!7530121 d!2309722))

(declare-fun b!7530326 () Bool)

(declare-fun e!4488016 () Bool)

(assert (=> b!7530326 (= e!4488016 (isPrefix!6063 (tail!15016 testedP!423) (tail!15016 knownP!30)))))

(declare-fun b!7530325 () Bool)

(declare-fun res!3018046 () Bool)

(assert (=> b!7530325 (=> (not res!3018046) (not e!4488016))))

(assert (=> b!7530325 (= res!3018046 (= (head!15456 testedP!423) (head!15456 knownP!30)))))

(declare-fun b!7530327 () Bool)

(declare-fun e!4488018 () Bool)

(assert (=> b!7530327 (= e!4488018 (>= (size!42353 knownP!30) (size!42353 testedP!423)))))

(declare-fun d!2309724 () Bool)

(assert (=> d!2309724 e!4488018))

(declare-fun res!3018043 () Bool)

(assert (=> d!2309724 (=> res!3018043 e!4488018)))

(declare-fun lt!2640355 () Bool)

(assert (=> d!2309724 (= res!3018043 (not lt!2640355))))

(declare-fun e!4488017 () Bool)

(assert (=> d!2309724 (= lt!2640355 e!4488017)))

(declare-fun res!3018044 () Bool)

(assert (=> d!2309724 (=> res!3018044 e!4488017)))

(assert (=> d!2309724 (= res!3018044 ((_ is Nil!72616) testedP!423))))

(assert (=> d!2309724 (= (isPrefix!6063 testedP!423 knownP!30) lt!2640355)))

(declare-fun b!7530324 () Bool)

(assert (=> b!7530324 (= e!4488017 e!4488016)))

(declare-fun res!3018045 () Bool)

(assert (=> b!7530324 (=> (not res!3018045) (not e!4488016))))

(assert (=> b!7530324 (= res!3018045 (not ((_ is Nil!72616) knownP!30)))))

(assert (= (and d!2309724 (not res!3018044)) b!7530324))

(assert (= (and b!7530324 res!3018045) b!7530325))

(assert (= (and b!7530325 res!3018046) b!7530326))

(assert (= (and d!2309724 (not res!3018043)) b!7530327))

(declare-fun m!8103832 () Bool)

(assert (=> b!7530326 m!8103832))

(assert (=> b!7530326 m!8103702))

(assert (=> b!7530326 m!8103832))

(assert (=> b!7530326 m!8103702))

(declare-fun m!8103834 () Bool)

(assert (=> b!7530326 m!8103834))

(declare-fun m!8103836 () Bool)

(assert (=> b!7530325 m!8103836))

(assert (=> b!7530325 m!8103706))

(assert (=> b!7530327 m!8103690))

(assert (=> b!7530327 m!8103688))

(assert (=> b!7530121 d!2309724))

(declare-fun d!2309726 () Bool)

(assert (=> d!2309726 (isPrefix!6063 testedP!423 knownP!30)))

(declare-fun lt!2640358 () Unit!166628)

(declare-fun choose!58266 (List!72740 List!72740 List!72740) Unit!166628)

(assert (=> d!2309726 (= lt!2640358 (choose!58266 knownP!30 testedP!423 input!7874))))

(assert (=> d!2309726 (isPrefix!6063 knownP!30 input!7874)))

(assert (=> d!2309726 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!813 knownP!30 testedP!423 input!7874) lt!2640358)))

(declare-fun bs!1939815 () Bool)

(assert (= bs!1939815 d!2309726))

(assert (=> bs!1939815 m!8103698))

(declare-fun m!8103838 () Bool)

(assert (=> bs!1939815 m!8103838))

(assert (=> bs!1939815 m!8103664))

(assert (=> b!7530121 d!2309726))

(declare-fun b!7530330 () Bool)

(declare-fun e!4488019 () Bool)

(assert (=> b!7530330 (= e!4488019 (isPrefix!6063 (tail!15016 testedP!423) (tail!15016 input!7874)))))

(declare-fun b!7530329 () Bool)

(declare-fun res!3018050 () Bool)

(assert (=> b!7530329 (=> (not res!3018050) (not e!4488019))))

(assert (=> b!7530329 (= res!3018050 (= (head!15456 testedP!423) (head!15456 input!7874)))))

(declare-fun b!7530331 () Bool)

(declare-fun e!4488021 () Bool)

(assert (=> b!7530331 (= e!4488021 (>= (size!42353 input!7874) (size!42353 testedP!423)))))

(declare-fun d!2309728 () Bool)

(assert (=> d!2309728 e!4488021))

(declare-fun res!3018047 () Bool)

(assert (=> d!2309728 (=> res!3018047 e!4488021)))

(declare-fun lt!2640359 () Bool)

(assert (=> d!2309728 (= res!3018047 (not lt!2640359))))

(declare-fun e!4488020 () Bool)

(assert (=> d!2309728 (= lt!2640359 e!4488020)))

(declare-fun res!3018048 () Bool)

(assert (=> d!2309728 (=> res!3018048 e!4488020)))

(assert (=> d!2309728 (= res!3018048 ((_ is Nil!72616) testedP!423))))

(assert (=> d!2309728 (= (isPrefix!6063 testedP!423 input!7874) lt!2640359)))

(declare-fun b!7530328 () Bool)

(assert (=> b!7530328 (= e!4488020 e!4488019)))

(declare-fun res!3018049 () Bool)

(assert (=> b!7530328 (=> (not res!3018049) (not e!4488019))))

(assert (=> b!7530328 (= res!3018049 (not ((_ is Nil!72616) input!7874)))))

(assert (= (and d!2309728 (not res!3018048)) b!7530328))

(assert (= (and b!7530328 res!3018049) b!7530329))

(assert (= (and b!7530329 res!3018050) b!7530330))

(assert (= (and d!2309728 (not res!3018047)) b!7530331))

(assert (=> b!7530330 m!8103832))

(assert (=> b!7530330 m!8103800))

(assert (=> b!7530330 m!8103832))

(assert (=> b!7530330 m!8103800))

(declare-fun m!8103840 () Bool)

(assert (=> b!7530330 m!8103840))

(assert (=> b!7530329 m!8103836))

(declare-fun m!8103842 () Bool)

(assert (=> b!7530329 m!8103842))

(assert (=> b!7530331 m!8103680))

(assert (=> b!7530331 m!8103688))

(assert (=> b!7530135 d!2309728))

(declare-fun d!2309730 () Bool)

(declare-fun lt!2640360 () Int)

(assert (=> d!2309730 (>= lt!2640360 0)))

(declare-fun e!4488022 () Int)

(assert (=> d!2309730 (= lt!2640360 e!4488022)))

(declare-fun c!1390800 () Bool)

(assert (=> d!2309730 (= c!1390800 ((_ is Nil!72616) testedP!423))))

(assert (=> d!2309730 (= (size!42353 testedP!423) lt!2640360)))

(declare-fun b!7530332 () Bool)

(assert (=> b!7530332 (= e!4488022 0)))

(declare-fun b!7530333 () Bool)

(assert (=> b!7530333 (= e!4488022 (+ 1 (size!42353 (t!387447 testedP!423))))))

(assert (= (and d!2309730 c!1390800) b!7530332))

(assert (= (and d!2309730 (not c!1390800)) b!7530333))

(declare-fun m!8103844 () Bool)

(assert (=> b!7530333 m!8103844))

(assert (=> b!7530130 d!2309730))

(declare-fun d!2309732 () Bool)

(declare-fun lt!2640361 () Int)

(assert (=> d!2309732 (>= lt!2640361 0)))

(declare-fun e!4488023 () Int)

(assert (=> d!2309732 (= lt!2640361 e!4488023)))

(declare-fun c!1390801 () Bool)

(assert (=> d!2309732 (= c!1390801 ((_ is Nil!72616) knownP!30))))

(assert (=> d!2309732 (= (size!42353 knownP!30) lt!2640361)))

(declare-fun b!7530334 () Bool)

(assert (=> b!7530334 (= e!4488023 0)))

(declare-fun b!7530335 () Bool)

(assert (=> b!7530335 (= e!4488023 (+ 1 (size!42353 (t!387447 knownP!30))))))

(assert (= (and d!2309732 c!1390801) b!7530334))

(assert (= (and d!2309732 (not c!1390801)) b!7530335))

(declare-fun m!8103846 () Bool)

(assert (=> b!7530335 m!8103846))

(assert (=> b!7530130 d!2309732))

(declare-fun b!7530338 () Bool)

(declare-fun e!4488024 () Bool)

(assert (=> b!7530338 (= e!4488024 (isPrefix!6063 (tail!15016 knownP!30) (tail!15016 input!7874)))))

(declare-fun b!7530337 () Bool)

(declare-fun res!3018054 () Bool)

(assert (=> b!7530337 (=> (not res!3018054) (not e!4488024))))

(assert (=> b!7530337 (= res!3018054 (= (head!15456 knownP!30) (head!15456 input!7874)))))

(declare-fun b!7530339 () Bool)

(declare-fun e!4488026 () Bool)

(assert (=> b!7530339 (= e!4488026 (>= (size!42353 input!7874) (size!42353 knownP!30)))))

(declare-fun d!2309734 () Bool)

(assert (=> d!2309734 e!4488026))

(declare-fun res!3018051 () Bool)

(assert (=> d!2309734 (=> res!3018051 e!4488026)))

(declare-fun lt!2640362 () Bool)

(assert (=> d!2309734 (= res!3018051 (not lt!2640362))))

(declare-fun e!4488025 () Bool)

(assert (=> d!2309734 (= lt!2640362 e!4488025)))

(declare-fun res!3018052 () Bool)

(assert (=> d!2309734 (=> res!3018052 e!4488025)))

(assert (=> d!2309734 (= res!3018052 ((_ is Nil!72616) knownP!30))))

(assert (=> d!2309734 (= (isPrefix!6063 knownP!30 input!7874) lt!2640362)))

(declare-fun b!7530336 () Bool)

(assert (=> b!7530336 (= e!4488025 e!4488024)))

(declare-fun res!3018053 () Bool)

(assert (=> b!7530336 (=> (not res!3018053) (not e!4488024))))

(assert (=> b!7530336 (= res!3018053 (not ((_ is Nil!72616) input!7874)))))

(assert (= (and d!2309734 (not res!3018052)) b!7530336))

(assert (= (and b!7530336 res!3018053) b!7530337))

(assert (= (and b!7530337 res!3018054) b!7530338))

(assert (= (and d!2309734 (not res!3018051)) b!7530339))

(assert (=> b!7530338 m!8103702))

(assert (=> b!7530338 m!8103800))

(assert (=> b!7530338 m!8103702))

(assert (=> b!7530338 m!8103800))

(declare-fun m!8103848 () Bool)

(assert (=> b!7530338 m!8103848))

(assert (=> b!7530337 m!8103706))

(assert (=> b!7530337 m!8103842))

(assert (=> b!7530339 m!8103680))

(assert (=> b!7530339 m!8103690))

(assert (=> b!7530123 d!2309734))

(declare-fun d!2309736 () Bool)

(declare-fun lostCauseFct!411 (Regex!19857) Bool)

(assert (=> d!2309736 (= (lostCause!1649 r!24333) (lostCauseFct!411 r!24333))))

(declare-fun bs!1939816 () Bool)

(assert (= bs!1939816 d!2309736))

(declare-fun m!8103850 () Bool)

(assert (=> bs!1939816 m!8103850))

(assert (=> b!7530139 d!2309736))

(declare-fun d!2309738 () Bool)

(declare-fun lt!2640421 () Regex!19857)

(assert (=> d!2309738 (validRegex!10285 lt!2640421)))

(declare-fun e!4488041 () Regex!19857)

(assert (=> d!2309738 (= lt!2640421 e!4488041)))

(declare-fun c!1390816 () Bool)

(assert (=> d!2309738 (= c!1390816 ((_ is Cons!72616) testedP!423))))

(assert (=> d!2309738 (validRegex!10285 baseR!101)))

(assert (=> d!2309738 (= (derivative!389 baseR!101 testedP!423) lt!2640421)))

(declare-fun b!7530368 () Bool)

(assert (=> b!7530368 (= e!4488041 (derivative!389 (derivativeStep!5660 baseR!101 (h!79064 testedP!423)) (t!387447 testedP!423)))))

(declare-fun b!7530369 () Bool)

(assert (=> b!7530369 (= e!4488041 baseR!101)))

(assert (= (and d!2309738 c!1390816) b!7530368))

(assert (= (and d!2309738 (not c!1390816)) b!7530369))

(declare-fun m!8103852 () Bool)

(assert (=> d!2309738 m!8103852))

(assert (=> d!2309738 m!8103672))

(declare-fun m!8103854 () Bool)

(assert (=> b!7530368 m!8103854))

(assert (=> b!7530368 m!8103854))

(declare-fun m!8103856 () Bool)

(assert (=> b!7530368 m!8103856))

(assert (=> b!7530134 d!2309738))

(declare-fun e!4488044 () Bool)

(assert (=> b!7530132 (= tp!2188988 e!4488044)))

(declare-fun b!7530381 () Bool)

(declare-fun tp!2189006 () Bool)

(declare-fun tp!2189007 () Bool)

(assert (=> b!7530381 (= e!4488044 (and tp!2189006 tp!2189007))))

(declare-fun b!7530380 () Bool)

(assert (=> b!7530380 (= e!4488044 tp_is_empty!50069)))

(declare-fun b!7530382 () Bool)

(declare-fun tp!2189008 () Bool)

(assert (=> b!7530382 (= e!4488044 tp!2189008)))

(declare-fun b!7530383 () Bool)

(declare-fun tp!2189010 () Bool)

(declare-fun tp!2189009 () Bool)

(assert (=> b!7530383 (= e!4488044 (and tp!2189010 tp!2189009))))

(assert (= (and b!7530132 ((_ is ElementMatch!19857) (reg!20186 r!24333))) b!7530380))

(assert (= (and b!7530132 ((_ is Concat!28702) (reg!20186 r!24333))) b!7530381))

(assert (= (and b!7530132 ((_ is Star!19857) (reg!20186 r!24333))) b!7530382))

(assert (= (and b!7530132 ((_ is Union!19857) (reg!20186 r!24333))) b!7530383))

(declare-fun e!4488045 () Bool)

(assert (=> b!7530122 (= tp!2188990 e!4488045)))

(declare-fun b!7530385 () Bool)

(declare-fun tp!2189011 () Bool)

(declare-fun tp!2189012 () Bool)

(assert (=> b!7530385 (= e!4488045 (and tp!2189011 tp!2189012))))

(declare-fun b!7530384 () Bool)

(assert (=> b!7530384 (= e!4488045 tp_is_empty!50069)))

(declare-fun b!7530386 () Bool)

(declare-fun tp!2189013 () Bool)

(assert (=> b!7530386 (= e!4488045 tp!2189013)))

(declare-fun b!7530387 () Bool)

(declare-fun tp!2189015 () Bool)

(declare-fun tp!2189014 () Bool)

(assert (=> b!7530387 (= e!4488045 (and tp!2189015 tp!2189014))))

(assert (= (and b!7530122 ((_ is ElementMatch!19857) (reg!20186 baseR!101))) b!7530384))

(assert (= (and b!7530122 ((_ is Concat!28702) (reg!20186 baseR!101))) b!7530385))

(assert (= (and b!7530122 ((_ is Star!19857) (reg!20186 baseR!101))) b!7530386))

(assert (= (and b!7530122 ((_ is Union!19857) (reg!20186 baseR!101))) b!7530387))

(declare-fun e!4488046 () Bool)

(assert (=> b!7530120 (= tp!2188983 e!4488046)))

(declare-fun b!7530389 () Bool)

(declare-fun tp!2189016 () Bool)

(declare-fun tp!2189017 () Bool)

(assert (=> b!7530389 (= e!4488046 (and tp!2189016 tp!2189017))))

(declare-fun b!7530388 () Bool)

(assert (=> b!7530388 (= e!4488046 tp_is_empty!50069)))

(declare-fun b!7530390 () Bool)

(declare-fun tp!2189018 () Bool)

(assert (=> b!7530390 (= e!4488046 tp!2189018)))

(declare-fun b!7530391 () Bool)

(declare-fun tp!2189020 () Bool)

(declare-fun tp!2189019 () Bool)

(assert (=> b!7530391 (= e!4488046 (and tp!2189020 tp!2189019))))

(assert (= (and b!7530120 ((_ is ElementMatch!19857) (regOne!40226 r!24333))) b!7530388))

(assert (= (and b!7530120 ((_ is Concat!28702) (regOne!40226 r!24333))) b!7530389))

(assert (= (and b!7530120 ((_ is Star!19857) (regOne!40226 r!24333))) b!7530390))

(assert (= (and b!7530120 ((_ is Union!19857) (regOne!40226 r!24333))) b!7530391))

(declare-fun e!4488047 () Bool)

(assert (=> b!7530120 (= tp!2188984 e!4488047)))

(declare-fun b!7530393 () Bool)

(declare-fun tp!2189021 () Bool)

(declare-fun tp!2189022 () Bool)

(assert (=> b!7530393 (= e!4488047 (and tp!2189021 tp!2189022))))

(declare-fun b!7530392 () Bool)

(assert (=> b!7530392 (= e!4488047 tp_is_empty!50069)))

(declare-fun b!7530394 () Bool)

(declare-fun tp!2189023 () Bool)

(assert (=> b!7530394 (= e!4488047 tp!2189023)))

(declare-fun b!7530395 () Bool)

(declare-fun tp!2189025 () Bool)

(declare-fun tp!2189024 () Bool)

(assert (=> b!7530395 (= e!4488047 (and tp!2189025 tp!2189024))))

(assert (= (and b!7530120 ((_ is ElementMatch!19857) (regTwo!40226 r!24333))) b!7530392))

(assert (= (and b!7530120 ((_ is Concat!28702) (regTwo!40226 r!24333))) b!7530393))

(assert (= (and b!7530120 ((_ is Star!19857) (regTwo!40226 r!24333))) b!7530394))

(assert (= (and b!7530120 ((_ is Union!19857) (regTwo!40226 r!24333))) b!7530395))

(declare-fun b!7530400 () Bool)

(declare-fun e!4488050 () Bool)

(declare-fun tp!2189028 () Bool)

(assert (=> b!7530400 (= e!4488050 (and tp_is_empty!50069 tp!2189028))))

(assert (=> b!7530131 (= tp!2188986 e!4488050)))

(assert (= (and b!7530131 ((_ is Cons!72616) (t!387447 testedP!423))) b!7530400))

(declare-fun e!4488051 () Bool)

(assert (=> b!7530126 (= tp!2188994 e!4488051)))

(declare-fun b!7530402 () Bool)

(declare-fun tp!2189029 () Bool)

(declare-fun tp!2189030 () Bool)

(assert (=> b!7530402 (= e!4488051 (and tp!2189029 tp!2189030))))

(declare-fun b!7530401 () Bool)

(assert (=> b!7530401 (= e!4488051 tp_is_empty!50069)))

(declare-fun b!7530403 () Bool)

(declare-fun tp!2189031 () Bool)

(assert (=> b!7530403 (= e!4488051 tp!2189031)))

(declare-fun b!7530404 () Bool)

(declare-fun tp!2189033 () Bool)

(declare-fun tp!2189032 () Bool)

(assert (=> b!7530404 (= e!4488051 (and tp!2189033 tp!2189032))))

(assert (= (and b!7530126 ((_ is ElementMatch!19857) (regOne!40226 baseR!101))) b!7530401))

(assert (= (and b!7530126 ((_ is Concat!28702) (regOne!40226 baseR!101))) b!7530402))

(assert (= (and b!7530126 ((_ is Star!19857) (regOne!40226 baseR!101))) b!7530403))

(assert (= (and b!7530126 ((_ is Union!19857) (regOne!40226 baseR!101))) b!7530404))

(declare-fun e!4488052 () Bool)

(assert (=> b!7530126 (= tp!2188992 e!4488052)))

(declare-fun b!7530406 () Bool)

(declare-fun tp!2189034 () Bool)

(declare-fun tp!2189035 () Bool)

(assert (=> b!7530406 (= e!4488052 (and tp!2189034 tp!2189035))))

(declare-fun b!7530405 () Bool)

(assert (=> b!7530405 (= e!4488052 tp_is_empty!50069)))

(declare-fun b!7530407 () Bool)

(declare-fun tp!2189036 () Bool)

(assert (=> b!7530407 (= e!4488052 tp!2189036)))

(declare-fun b!7530408 () Bool)

(declare-fun tp!2189038 () Bool)

(declare-fun tp!2189037 () Bool)

(assert (=> b!7530408 (= e!4488052 (and tp!2189038 tp!2189037))))

(assert (= (and b!7530126 ((_ is ElementMatch!19857) (regTwo!40226 baseR!101))) b!7530405))

(assert (= (and b!7530126 ((_ is Concat!28702) (regTwo!40226 baseR!101))) b!7530406))

(assert (= (and b!7530126 ((_ is Star!19857) (regTwo!40226 baseR!101))) b!7530407))

(assert (= (and b!7530126 ((_ is Union!19857) (regTwo!40226 baseR!101))) b!7530408))

(declare-fun b!7530409 () Bool)

(declare-fun e!4488053 () Bool)

(declare-fun tp!2189039 () Bool)

(assert (=> b!7530409 (= e!4488053 (and tp_is_empty!50069 tp!2189039))))

(assert (=> b!7530119 (= tp!2188995 e!4488053)))

(assert (= (and b!7530119 ((_ is Cons!72616) (t!387447 input!7874))) b!7530409))

(declare-fun e!4488054 () Bool)

(assert (=> b!7530125 (= tp!2188985 e!4488054)))

(declare-fun b!7530411 () Bool)

(declare-fun tp!2189040 () Bool)

(declare-fun tp!2189041 () Bool)

(assert (=> b!7530411 (= e!4488054 (and tp!2189040 tp!2189041))))

(declare-fun b!7530410 () Bool)

(assert (=> b!7530410 (= e!4488054 tp_is_empty!50069)))

(declare-fun b!7530412 () Bool)

(declare-fun tp!2189042 () Bool)

(assert (=> b!7530412 (= e!4488054 tp!2189042)))

(declare-fun b!7530413 () Bool)

(declare-fun tp!2189044 () Bool)

(declare-fun tp!2189043 () Bool)

(assert (=> b!7530413 (= e!4488054 (and tp!2189044 tp!2189043))))

(assert (= (and b!7530125 ((_ is ElementMatch!19857) (regOne!40227 baseR!101))) b!7530410))

(assert (= (and b!7530125 ((_ is Concat!28702) (regOne!40227 baseR!101))) b!7530411))

(assert (= (and b!7530125 ((_ is Star!19857) (regOne!40227 baseR!101))) b!7530412))

(assert (= (and b!7530125 ((_ is Union!19857) (regOne!40227 baseR!101))) b!7530413))

(declare-fun e!4488055 () Bool)

(assert (=> b!7530125 (= tp!2188987 e!4488055)))

(declare-fun b!7530415 () Bool)

(declare-fun tp!2189045 () Bool)

(declare-fun tp!2189046 () Bool)

(assert (=> b!7530415 (= e!4488055 (and tp!2189045 tp!2189046))))

(declare-fun b!7530414 () Bool)

(assert (=> b!7530414 (= e!4488055 tp_is_empty!50069)))

(declare-fun b!7530416 () Bool)

(declare-fun tp!2189047 () Bool)

(assert (=> b!7530416 (= e!4488055 tp!2189047)))

(declare-fun b!7530417 () Bool)

(declare-fun tp!2189049 () Bool)

(declare-fun tp!2189048 () Bool)

(assert (=> b!7530417 (= e!4488055 (and tp!2189049 tp!2189048))))

(assert (= (and b!7530125 ((_ is ElementMatch!19857) (regTwo!40227 baseR!101))) b!7530414))

(assert (= (and b!7530125 ((_ is Concat!28702) (regTwo!40227 baseR!101))) b!7530415))

(assert (= (and b!7530125 ((_ is Star!19857) (regTwo!40227 baseR!101))) b!7530416))

(assert (= (and b!7530125 ((_ is Union!19857) (regTwo!40227 baseR!101))) b!7530417))

(declare-fun e!4488056 () Bool)

(assert (=> b!7530128 (= tp!2188989 e!4488056)))

(declare-fun b!7530419 () Bool)

(declare-fun tp!2189050 () Bool)

(declare-fun tp!2189051 () Bool)

(assert (=> b!7530419 (= e!4488056 (and tp!2189050 tp!2189051))))

(declare-fun b!7530418 () Bool)

(assert (=> b!7530418 (= e!4488056 tp_is_empty!50069)))

(declare-fun b!7530420 () Bool)

(declare-fun tp!2189052 () Bool)

(assert (=> b!7530420 (= e!4488056 tp!2189052)))

(declare-fun b!7530421 () Bool)

(declare-fun tp!2189054 () Bool)

(declare-fun tp!2189053 () Bool)

(assert (=> b!7530421 (= e!4488056 (and tp!2189054 tp!2189053))))

(assert (= (and b!7530128 ((_ is ElementMatch!19857) (regOne!40227 r!24333))) b!7530418))

(assert (= (and b!7530128 ((_ is Concat!28702) (regOne!40227 r!24333))) b!7530419))

(assert (= (and b!7530128 ((_ is Star!19857) (regOne!40227 r!24333))) b!7530420))

(assert (= (and b!7530128 ((_ is Union!19857) (regOne!40227 r!24333))) b!7530421))

(declare-fun e!4488057 () Bool)

(assert (=> b!7530128 (= tp!2188991 e!4488057)))

(declare-fun b!7530423 () Bool)

(declare-fun tp!2189055 () Bool)

(declare-fun tp!2189056 () Bool)

(assert (=> b!7530423 (= e!4488057 (and tp!2189055 tp!2189056))))

(declare-fun b!7530422 () Bool)

(assert (=> b!7530422 (= e!4488057 tp_is_empty!50069)))

(declare-fun b!7530424 () Bool)

(declare-fun tp!2189057 () Bool)

(assert (=> b!7530424 (= e!4488057 tp!2189057)))

(declare-fun b!7530425 () Bool)

(declare-fun tp!2189059 () Bool)

(declare-fun tp!2189058 () Bool)

(assert (=> b!7530425 (= e!4488057 (and tp!2189059 tp!2189058))))

(assert (= (and b!7530128 ((_ is ElementMatch!19857) (regTwo!40227 r!24333))) b!7530422))

(assert (= (and b!7530128 ((_ is Concat!28702) (regTwo!40227 r!24333))) b!7530423))

(assert (= (and b!7530128 ((_ is Star!19857) (regTwo!40227 r!24333))) b!7530424))

(assert (= (and b!7530128 ((_ is Union!19857) (regTwo!40227 r!24333))) b!7530425))

(declare-fun b!7530426 () Bool)

(declare-fun e!4488058 () Bool)

(declare-fun tp!2189060 () Bool)

(assert (=> b!7530426 (= e!4488058 (and tp_is_empty!50069 tp!2189060))))

(assert (=> b!7530129 (= tp!2188993 e!4488058)))

(assert (= (and b!7530129 ((_ is Cons!72616) (t!387447 knownP!30))) b!7530426))

(check-sat (not d!2309714) (not b!7530390) (not b!7530335) (not d!2309696) (not b!7530426) (not b!7530253) (not b!7530416) (not b!7530325) (not d!2309692) (not b!7530305) (not b!7530394) (not b!7530257) (not b!7530262) (not b!7530301) (not b!7530174) (not bm!690837) (not b!7530389) (not bm!690818) (not d!2309698) (not b!7530252) (not b!7530420) (not b!7530295) (not b!7530327) (not b!7530402) (not b!7530385) (not b!7530286) (not b!7530326) (not b!7530412) (not bm!690838) (not d!2309736) (not b!7530173) (not bm!690840) (not b!7530314) (not b!7530338) (not b!7530181) (not b!7530404) (not b!7530425) (not b!7530337) (not d!2309720) (not b!7530411) (not bm!690850) (not bm!690853) (not b!7530387) tp_is_empty!50069 (not b!7530395) (not bm!690835) (not b!7530187) (not d!2309738) (not bm!690842) (not bm!690855) (not b!7530408) (not b!7530391) (not b!7530406) (not b!7530400) (not b!7530304) (not b!7530413) (not b!7530330) (not b!7530424) (not bm!690839) (not b!7530339) (not b!7530383) (not b!7530407) (not b!7530313) (not d!2309712) (not b!7530386) (not b!7530248) (not b!7530329) (not b!7530250) (not b!7530308) (not b!7530169) (not b!7530368) (not bm!690841) (not b!7530417) (not bm!690836) (not b!7530381) (not b!7530419) (not b!7530382) (not b!7530333) (not bm!690851) (not b!7530403) (not b!7530176) (not b!7530409) (not d!2309726) (not b!7530421) (not bm!690854) (not b!7530415) (not b!7530306) (not b!7530172) (not b!7530393) (not b!7530423) (not b!7530331) (not d!2309722))
(check-sat)
