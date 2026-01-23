; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!88692 () Bool)

(assert start!88692)

(declare-fun b!1018898 () Bool)

(assert (=> b!1018898 true))

(assert (=> b!1018898 true))

(declare-fun lambda!36110 () Int)

(declare-fun lambda!36109 () Int)

(assert (=> b!1018898 (not (= lambda!36110 lambda!36109))))

(assert (=> b!1018898 true))

(assert (=> b!1018898 true))

(declare-fun b!1018896 () Bool)

(declare-fun e!650905 () Bool)

(declare-datatypes ((C!6194 0))(
  ( (C!6195 (val!3345 Int)) )
))
(declare-datatypes ((Regex!2812 0))(
  ( (ElementMatch!2812 (c!168819 C!6194)) (Concat!4645 (regOne!6136 Regex!2812) (regTwo!6136 Regex!2812)) (EmptyExpr!2812) (Star!2812 (reg!3141 Regex!2812)) (EmptyLang!2812) (Union!2812 (regOne!6137 Regex!2812) (regTwo!6137 Regex!2812)) )
))
(declare-fun r!15766 () Regex!2812)

(declare-datatypes ((List!10042 0))(
  ( (Nil!10026) (Cons!10026 (h!15427 C!6194) (t!101088 List!10042)) )
))
(declare-fun s!10566 () List!10042)

(declare-fun matchR!1348 (Regex!2812 List!10042) Bool)

(declare-fun removeUselessConcat!385 (Regex!2812) Regex!2812)

(assert (=> b!1018896 (= e!650905 (not (matchR!1348 (removeUselessConcat!385 r!15766) s!10566)))))

(declare-fun b!1018897 () Bool)

(declare-fun e!650904 () Bool)

(declare-fun tp!309778 () Bool)

(declare-fun tp!309775 () Bool)

(assert (=> b!1018897 (= e!650904 (and tp!309778 tp!309775))))

(declare-fun e!650908 () Bool)

(assert (=> b!1018898 (= e!650908 e!650905)))

(declare-fun res!457841 () Bool)

(assert (=> b!1018898 (=> res!457841 e!650905)))

(declare-fun isEmpty!6372 (List!10042) Bool)

(assert (=> b!1018898 (= res!457841 (not (isEmpty!6372 s!10566)))))

(declare-fun Exists!541 (Int) Bool)

(assert (=> b!1018898 (= (Exists!541 lambda!36109) (Exists!541 lambda!36110))))

(declare-datatypes ((Unit!15299 0))(
  ( (Unit!15300) )
))
(declare-fun lt!353961 () Unit!15299)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!243 (Regex!2812 Regex!2812 List!10042) Unit!15299)

(assert (=> b!1018898 (= lt!353961 (lemmaExistCutMatchRandMatchRSpecEquivalent!243 EmptyExpr!2812 (regTwo!6136 r!15766) s!10566))))

(declare-datatypes ((tuple2!11406 0))(
  ( (tuple2!11407 (_1!6529 List!10042) (_2!6529 List!10042)) )
))
(declare-datatypes ((Option!2345 0))(
  ( (None!2344) (Some!2344 (v!19761 tuple2!11406)) )
))
(declare-fun isDefined!1987 (Option!2345) Bool)

(declare-fun findConcatSeparation!451 (Regex!2812 Regex!2812 List!10042 List!10042 List!10042) Option!2345)

(assert (=> b!1018898 (= (isDefined!1987 (findConcatSeparation!451 EmptyExpr!2812 (regTwo!6136 r!15766) Nil!10026 s!10566 s!10566)) (Exists!541 lambda!36109))))

(declare-fun lt!353960 () Unit!15299)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!451 (Regex!2812 Regex!2812 List!10042) Unit!15299)

(assert (=> b!1018898 (= lt!353960 (lemmaFindConcatSeparationEquivalentToExists!451 EmptyExpr!2812 (regTwo!6136 r!15766) s!10566))))

(declare-fun res!457843 () Bool)

(declare-fun e!650906 () Bool)

(assert (=> start!88692 (=> (not res!457843) (not e!650906))))

(declare-fun validRegex!1281 (Regex!2812) Bool)

(assert (=> start!88692 (= res!457843 (validRegex!1281 r!15766))))

(assert (=> start!88692 e!650906))

(assert (=> start!88692 e!650904))

(declare-fun e!650907 () Bool)

(assert (=> start!88692 e!650907))

(declare-fun b!1018899 () Bool)

(assert (=> b!1018899 (= e!650906 (not e!650908))))

(declare-fun res!457842 () Bool)

(assert (=> b!1018899 (=> res!457842 e!650908)))

(declare-fun lt!353958 () Bool)

(assert (=> b!1018899 (= res!457842 (or lt!353958 (not (is-Concat!4645 r!15766)) (not (is-EmptyExpr!2812 (regOne!6136 r!15766)))))))

(declare-fun matchRSpec!611 (Regex!2812 List!10042) Bool)

(assert (=> b!1018899 (= lt!353958 (matchRSpec!611 r!15766 s!10566))))

(assert (=> b!1018899 (= lt!353958 (matchR!1348 r!15766 s!10566))))

(declare-fun lt!353959 () Unit!15299)

(declare-fun mainMatchTheorem!611 (Regex!2812 List!10042) Unit!15299)

(assert (=> b!1018899 (= lt!353959 (mainMatchTheorem!611 r!15766 s!10566))))

(declare-fun b!1018900 () Bool)

(declare-fun tp!309774 () Bool)

(assert (=> b!1018900 (= e!650904 tp!309774)))

(declare-fun b!1018901 () Bool)

(declare-fun tp_is_empty!5267 () Bool)

(assert (=> b!1018901 (= e!650904 tp_is_empty!5267)))

(declare-fun b!1018902 () Bool)

(declare-fun tp!309773 () Bool)

(assert (=> b!1018902 (= e!650907 (and tp_is_empty!5267 tp!309773))))

(declare-fun b!1018903 () Bool)

(declare-fun tp!309776 () Bool)

(declare-fun tp!309777 () Bool)

(assert (=> b!1018903 (= e!650904 (and tp!309776 tp!309777))))

(assert (= (and start!88692 res!457843) b!1018899))

(assert (= (and b!1018899 (not res!457842)) b!1018898))

(assert (= (and b!1018898 (not res!457841)) b!1018896))

(assert (= (and start!88692 (is-ElementMatch!2812 r!15766)) b!1018901))

(assert (= (and start!88692 (is-Concat!4645 r!15766)) b!1018897))

(assert (= (and start!88692 (is-Star!2812 r!15766)) b!1018900))

(assert (= (and start!88692 (is-Union!2812 r!15766)) b!1018903))

(assert (= (and start!88692 (is-Cons!10026 s!10566)) b!1018902))

(declare-fun m!1199109 () Bool)

(assert (=> b!1018896 m!1199109))

(assert (=> b!1018896 m!1199109))

(declare-fun m!1199111 () Bool)

(assert (=> b!1018896 m!1199111))

(declare-fun m!1199113 () Bool)

(assert (=> b!1018898 m!1199113))

(declare-fun m!1199115 () Bool)

(assert (=> b!1018898 m!1199115))

(declare-fun m!1199117 () Bool)

(assert (=> b!1018898 m!1199117))

(declare-fun m!1199119 () Bool)

(assert (=> b!1018898 m!1199119))

(declare-fun m!1199121 () Bool)

(assert (=> b!1018898 m!1199121))

(assert (=> b!1018898 m!1199115))

(declare-fun m!1199123 () Bool)

(assert (=> b!1018898 m!1199123))

(declare-fun m!1199125 () Bool)

(assert (=> b!1018898 m!1199125))

(assert (=> b!1018898 m!1199123))

(declare-fun m!1199127 () Bool)

(assert (=> start!88692 m!1199127))

(declare-fun m!1199129 () Bool)

(assert (=> b!1018899 m!1199129))

(declare-fun m!1199131 () Bool)

(assert (=> b!1018899 m!1199131))

(declare-fun m!1199133 () Bool)

(assert (=> b!1018899 m!1199133))

(push 1)

(assert (not b!1018902))

(assert (not b!1018898))

(assert (not b!1018896))

(assert (not b!1018899))

(assert (not start!88692))

(assert tp_is_empty!5267)

(assert (not b!1018897))

(assert (not b!1018900))

(assert (not b!1018903))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!246552 () Bool)

(declare-fun b!1018983 () Bool)

(assert (= bs!246552 (and b!1018983 b!1018898)))

(declare-fun lambda!36123 () Int)

(assert (=> bs!246552 (not (= lambda!36123 lambda!36109))))

(assert (=> bs!246552 (not (= lambda!36123 lambda!36110))))

(assert (=> b!1018983 true))

(assert (=> b!1018983 true))

(declare-fun bs!246553 () Bool)

(declare-fun b!1018990 () Bool)

(assert (= bs!246553 (and b!1018990 b!1018898)))

(declare-fun lambda!36124 () Int)

(assert (=> bs!246553 (not (= lambda!36124 lambda!36109))))

(assert (=> bs!246553 (= (= (regOne!6136 r!15766) EmptyExpr!2812) (= lambda!36124 lambda!36110))))

(declare-fun bs!246554 () Bool)

(assert (= bs!246554 (and b!1018990 b!1018983)))

(assert (=> bs!246554 (not (= lambda!36124 lambda!36123))))

(assert (=> b!1018990 true))

(assert (=> b!1018990 true))

(declare-fun d!294178 () Bool)

(declare-fun c!168830 () Bool)

(assert (=> d!294178 (= c!168830 (is-EmptyExpr!2812 r!15766))))

(declare-fun e!650951 () Bool)

(assert (=> d!294178 (= (matchRSpec!611 r!15766 s!10566) e!650951)))

(declare-fun b!1018980 () Bool)

(declare-fun e!650950 () Bool)

(declare-fun e!650948 () Bool)

(assert (=> b!1018980 (= e!650950 e!650948)))

(declare-fun res!457882 () Bool)

(assert (=> b!1018980 (= res!457882 (matchRSpec!611 (regOne!6137 r!15766) s!10566))))

(assert (=> b!1018980 (=> res!457882 e!650948)))

(declare-fun b!1018981 () Bool)

(assert (=> b!1018981 (= e!650948 (matchRSpec!611 (regTwo!6137 r!15766) s!10566))))

(declare-fun b!1018982 () Bool)

(declare-fun e!650952 () Bool)

(assert (=> b!1018982 (= e!650952 (= s!10566 (Cons!10026 (c!168819 r!15766) Nil!10026)))))

(declare-fun e!650949 () Bool)

(declare-fun call!69638 () Bool)

(assert (=> b!1018983 (= e!650949 call!69638)))

(declare-fun b!1018984 () Bool)

(declare-fun call!69639 () Bool)

(assert (=> b!1018984 (= e!650951 call!69639)))

(declare-fun b!1018985 () Bool)

(declare-fun c!168832 () Bool)

(assert (=> b!1018985 (= c!168832 (is-Union!2812 r!15766))))

(assert (=> b!1018985 (= e!650952 e!650950)))

(declare-fun b!1018986 () Bool)

(declare-fun e!650953 () Bool)

(assert (=> b!1018986 (= e!650950 e!650953)))

(declare-fun c!168831 () Bool)

(assert (=> b!1018986 (= c!168831 (is-Star!2812 r!15766))))

(declare-fun bm!69633 () Bool)

(assert (=> bm!69633 (= call!69638 (Exists!541 (ite c!168831 lambda!36123 lambda!36124)))))

(declare-fun b!1018987 () Bool)

(declare-fun e!650954 () Bool)

(assert (=> b!1018987 (= e!650951 e!650954)))

(declare-fun res!457883 () Bool)

(assert (=> b!1018987 (= res!457883 (not (is-EmptyLang!2812 r!15766)))))

(assert (=> b!1018987 (=> (not res!457883) (not e!650954))))

(declare-fun bm!69634 () Bool)

(assert (=> bm!69634 (= call!69639 (isEmpty!6372 s!10566))))

(declare-fun b!1018988 () Bool)

(declare-fun res!457881 () Bool)

(assert (=> b!1018988 (=> res!457881 e!650949)))

(assert (=> b!1018988 (= res!457881 call!69639)))

(assert (=> b!1018988 (= e!650953 e!650949)))

(declare-fun b!1018989 () Bool)

(declare-fun c!168829 () Bool)

(assert (=> b!1018989 (= c!168829 (is-ElementMatch!2812 r!15766))))

(assert (=> b!1018989 (= e!650954 e!650952)))

(assert (=> b!1018990 (= e!650953 call!69638)))

(assert (= (and d!294178 c!168830) b!1018984))

(assert (= (and d!294178 (not c!168830)) b!1018987))

(assert (= (and b!1018987 res!457883) b!1018989))

(assert (= (and b!1018989 c!168829) b!1018982))

(assert (= (and b!1018989 (not c!168829)) b!1018985))

(assert (= (and b!1018985 c!168832) b!1018980))

(assert (= (and b!1018985 (not c!168832)) b!1018986))

(assert (= (and b!1018980 (not res!457882)) b!1018981))

(assert (= (and b!1018986 c!168831) b!1018988))

(assert (= (and b!1018986 (not c!168831)) b!1018990))

(assert (= (and b!1018988 (not res!457881)) b!1018983))

(assert (= (or b!1018983 b!1018990) bm!69633))

(assert (= (or b!1018984 b!1018988) bm!69634))

(declare-fun m!1199161 () Bool)

(assert (=> b!1018980 m!1199161))

(declare-fun m!1199163 () Bool)

(assert (=> b!1018981 m!1199163))

(declare-fun m!1199165 () Bool)

(assert (=> bm!69633 m!1199165))

(assert (=> bm!69634 m!1199121))

(assert (=> b!1018899 d!294178))

(declare-fun b!1019023 () Bool)

(declare-fun e!650972 () Bool)

(declare-fun e!650971 () Bool)

(assert (=> b!1019023 (= e!650972 e!650971)))

(declare-fun res!457907 () Bool)

(assert (=> b!1019023 (=> (not res!457907) (not e!650971))))

(declare-fun lt!353976 () Bool)

(assert (=> b!1019023 (= res!457907 (not lt!353976))))

(declare-fun b!1019024 () Bool)

(declare-fun e!650976 () Bool)

(assert (=> b!1019024 (= e!650976 (not lt!353976))))

(declare-fun b!1019025 () Bool)

(declare-fun e!650974 () Bool)

(declare-fun head!1874 (List!10042) C!6194)

(assert (=> b!1019025 (= e!650974 (not (= (head!1874 s!10566) (c!168819 r!15766))))))

(declare-fun b!1019026 () Bool)

(declare-fun e!650973 () Bool)

(declare-fun nullable!917 (Regex!2812) Bool)

(assert (=> b!1019026 (= e!650973 (nullable!917 r!15766))))

(declare-fun b!1019027 () Bool)

(declare-fun res!457903 () Bool)

(assert (=> b!1019027 (=> res!457903 e!650972)))

(assert (=> b!1019027 (= res!457903 (not (is-ElementMatch!2812 r!15766)))))

(assert (=> b!1019027 (= e!650976 e!650972)))

(declare-fun b!1019028 () Bool)

(declare-fun derivativeStep!720 (Regex!2812 C!6194) Regex!2812)

(declare-fun tail!1436 (List!10042) List!10042)

(assert (=> b!1019028 (= e!650973 (matchR!1348 (derivativeStep!720 r!15766 (head!1874 s!10566)) (tail!1436 s!10566)))))

(declare-fun b!1019029 () Bool)

(declare-fun res!457902 () Bool)

(declare-fun e!650977 () Bool)

(assert (=> b!1019029 (=> (not res!457902) (not e!650977))))

(declare-fun call!69642 () Bool)

(assert (=> b!1019029 (= res!457902 (not call!69642))))

(declare-fun d!294182 () Bool)

(declare-fun e!650975 () Bool)

(assert (=> d!294182 e!650975))

(declare-fun c!168842 () Bool)

(assert (=> d!294182 (= c!168842 (is-EmptyExpr!2812 r!15766))))

(assert (=> d!294182 (= lt!353976 e!650973)))

(declare-fun c!168843 () Bool)

(assert (=> d!294182 (= c!168843 (isEmpty!6372 s!10566))))

(assert (=> d!294182 (validRegex!1281 r!15766)))

(assert (=> d!294182 (= (matchR!1348 r!15766 s!10566) lt!353976)))

(declare-fun b!1019030 () Bool)

(assert (=> b!1019030 (= e!650971 e!650974)))

(declare-fun res!457901 () Bool)

(assert (=> b!1019030 (=> res!457901 e!650974)))

(assert (=> b!1019030 (= res!457901 call!69642)))

(declare-fun b!1019031 () Bool)

(declare-fun res!457906 () Bool)

(assert (=> b!1019031 (=> res!457906 e!650974)))

(assert (=> b!1019031 (= res!457906 (not (isEmpty!6372 (tail!1436 s!10566))))))

(declare-fun b!1019032 () Bool)

(assert (=> b!1019032 (= e!650977 (= (head!1874 s!10566) (c!168819 r!15766)))))

(declare-fun bm!69637 () Bool)

(assert (=> bm!69637 (= call!69642 (isEmpty!6372 s!10566))))

(declare-fun b!1019033 () Bool)

(declare-fun res!457900 () Bool)

(assert (=> b!1019033 (=> res!457900 e!650972)))

(assert (=> b!1019033 (= res!457900 e!650977)))

(declare-fun res!457904 () Bool)

(assert (=> b!1019033 (=> (not res!457904) (not e!650977))))

(assert (=> b!1019033 (= res!457904 lt!353976)))

(declare-fun b!1019034 () Bool)

(assert (=> b!1019034 (= e!650975 e!650976)))

(declare-fun c!168841 () Bool)

(assert (=> b!1019034 (= c!168841 (is-EmptyLang!2812 r!15766))))

(declare-fun b!1019035 () Bool)

(assert (=> b!1019035 (= e!650975 (= lt!353976 call!69642))))

(declare-fun b!1019036 () Bool)

(declare-fun res!457905 () Bool)

(assert (=> b!1019036 (=> (not res!457905) (not e!650977))))

(assert (=> b!1019036 (= res!457905 (isEmpty!6372 (tail!1436 s!10566)))))

(assert (= (and d!294182 c!168843) b!1019026))

(assert (= (and d!294182 (not c!168843)) b!1019028))

(assert (= (and d!294182 c!168842) b!1019035))

(assert (= (and d!294182 (not c!168842)) b!1019034))

(assert (= (and b!1019034 c!168841) b!1019024))

(assert (= (and b!1019034 (not c!168841)) b!1019027))

(assert (= (and b!1019027 (not res!457903)) b!1019033))

(assert (= (and b!1019033 res!457904) b!1019029))

(assert (= (and b!1019029 res!457902) b!1019036))

(assert (= (and b!1019036 res!457905) b!1019032))

(assert (= (and b!1019033 (not res!457900)) b!1019023))

(assert (= (and b!1019023 res!457907) b!1019030))

(assert (= (and b!1019030 (not res!457901)) b!1019031))

(assert (= (and b!1019031 (not res!457906)) b!1019025))

(assert (= (or b!1019035 b!1019029 b!1019030) bm!69637))

(assert (=> d!294182 m!1199121))

(assert (=> d!294182 m!1199127))

(declare-fun m!1199167 () Bool)

(assert (=> b!1019036 m!1199167))

(assert (=> b!1019036 m!1199167))

(declare-fun m!1199169 () Bool)

(assert (=> b!1019036 m!1199169))

(assert (=> b!1019031 m!1199167))

(assert (=> b!1019031 m!1199167))

(assert (=> b!1019031 m!1199169))

(declare-fun m!1199171 () Bool)

(assert (=> b!1019028 m!1199171))

(assert (=> b!1019028 m!1199171))

(declare-fun m!1199173 () Bool)

(assert (=> b!1019028 m!1199173))

(assert (=> b!1019028 m!1199167))

(assert (=> b!1019028 m!1199173))

(assert (=> b!1019028 m!1199167))

(declare-fun m!1199175 () Bool)

(assert (=> b!1019028 m!1199175))

(declare-fun m!1199177 () Bool)

(assert (=> b!1019026 m!1199177))

(assert (=> b!1019025 m!1199171))

(assert (=> bm!69637 m!1199121))

(assert (=> b!1019032 m!1199171))

(assert (=> b!1018899 d!294182))

(declare-fun d!294184 () Bool)

(assert (=> d!294184 (= (matchR!1348 r!15766 s!10566) (matchRSpec!611 r!15766 s!10566))))

(declare-fun lt!353979 () Unit!15299)

(declare-fun choose!6434 (Regex!2812 List!10042) Unit!15299)

(assert (=> d!294184 (= lt!353979 (choose!6434 r!15766 s!10566))))

(assert (=> d!294184 (validRegex!1281 r!15766)))

(assert (=> d!294184 (= (mainMatchTheorem!611 r!15766 s!10566) lt!353979)))

(declare-fun bs!246555 () Bool)

(assert (= bs!246555 d!294184))

(assert (=> bs!246555 m!1199131))

(assert (=> bs!246555 m!1199129))

(declare-fun m!1199179 () Bool)

(assert (=> bs!246555 m!1199179))

(assert (=> bs!246555 m!1199127))

(assert (=> b!1018899 d!294184))

(declare-fun d!294186 () Bool)

(assert (=> d!294186 (= (isEmpty!6372 s!10566) (is-Nil!10026 s!10566))))

(assert (=> b!1018898 d!294186))

(declare-fun b!1019083 () Bool)

(declare-fun e!651005 () Bool)

(declare-fun lt!353986 () Option!2345)

(declare-fun ++!2734 (List!10042 List!10042) List!10042)

(declare-fun get!3524 (Option!2345) tuple2!11406)

(assert (=> b!1019083 (= e!651005 (= (++!2734 (_1!6529 (get!3524 lt!353986)) (_2!6529 (get!3524 lt!353986))) s!10566))))

(declare-fun b!1019084 () Bool)

(declare-fun res!457936 () Bool)

(assert (=> b!1019084 (=> (not res!457936) (not e!651005))))

(assert (=> b!1019084 (= res!457936 (matchR!1348 EmptyExpr!2812 (_1!6529 (get!3524 lt!353986))))))

(declare-fun b!1019085 () Bool)

(declare-fun e!651004 () Bool)

(assert (=> b!1019085 (= e!651004 (not (isDefined!1987 lt!353986)))))

(declare-fun b!1019086 () Bool)

(declare-fun lt!353988 () Unit!15299)

(declare-fun lt!353987 () Unit!15299)

(assert (=> b!1019086 (= lt!353988 lt!353987)))

(assert (=> b!1019086 (= (++!2734 (++!2734 Nil!10026 (Cons!10026 (h!15427 s!10566) Nil!10026)) (t!101088 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!334 (List!10042 C!6194 List!10042 List!10042) Unit!15299)

(assert (=> b!1019086 (= lt!353987 (lemmaMoveElementToOtherListKeepsConcatEq!334 Nil!10026 (h!15427 s!10566) (t!101088 s!10566) s!10566))))

(declare-fun e!651008 () Option!2345)

(assert (=> b!1019086 (= e!651008 (findConcatSeparation!451 EmptyExpr!2812 (regTwo!6136 r!15766) (++!2734 Nil!10026 (Cons!10026 (h!15427 s!10566) Nil!10026)) (t!101088 s!10566) s!10566))))

(declare-fun b!1019088 () Bool)

(declare-fun e!651007 () Bool)

(assert (=> b!1019088 (= e!651007 (matchR!1348 (regTwo!6136 r!15766) s!10566))))

(declare-fun b!1019089 () Bool)

(assert (=> b!1019089 (= e!651008 None!2344)))

(declare-fun b!1019087 () Bool)

(declare-fun res!457934 () Bool)

(assert (=> b!1019087 (=> (not res!457934) (not e!651005))))

(assert (=> b!1019087 (= res!457934 (matchR!1348 (regTwo!6136 r!15766) (_2!6529 (get!3524 lt!353986))))))

(declare-fun d!294188 () Bool)

(assert (=> d!294188 e!651004))

(declare-fun res!457937 () Bool)

(assert (=> d!294188 (=> res!457937 e!651004)))

(assert (=> d!294188 (= res!457937 e!651005)))

(declare-fun res!457935 () Bool)

(assert (=> d!294188 (=> (not res!457935) (not e!651005))))

(assert (=> d!294188 (= res!457935 (isDefined!1987 lt!353986))))

(declare-fun e!651006 () Option!2345)

(assert (=> d!294188 (= lt!353986 e!651006)))

(declare-fun c!168854 () Bool)

(assert (=> d!294188 (= c!168854 e!651007)))

(declare-fun res!457938 () Bool)

(assert (=> d!294188 (=> (not res!457938) (not e!651007))))

(assert (=> d!294188 (= res!457938 (matchR!1348 EmptyExpr!2812 Nil!10026))))

(assert (=> d!294188 (validRegex!1281 EmptyExpr!2812)))

(assert (=> d!294188 (= (findConcatSeparation!451 EmptyExpr!2812 (regTwo!6136 r!15766) Nil!10026 s!10566 s!10566) lt!353986)))

(declare-fun b!1019090 () Bool)

(assert (=> b!1019090 (= e!651006 (Some!2344 (tuple2!11407 Nil!10026 s!10566)))))

(declare-fun b!1019091 () Bool)

(assert (=> b!1019091 (= e!651006 e!651008)))

(declare-fun c!168855 () Bool)

(assert (=> b!1019091 (= c!168855 (is-Nil!10026 s!10566))))

(assert (= (and d!294188 res!457938) b!1019088))

(assert (= (and d!294188 c!168854) b!1019090))

(assert (= (and d!294188 (not c!168854)) b!1019091))

(assert (= (and b!1019091 c!168855) b!1019089))

(assert (= (and b!1019091 (not c!168855)) b!1019086))

(assert (= (and d!294188 res!457935) b!1019084))

(assert (= (and b!1019084 res!457936) b!1019087))

(assert (= (and b!1019087 res!457934) b!1019083))

(assert (= (and d!294188 (not res!457937)) b!1019085))

(declare-fun m!1199181 () Bool)

(assert (=> b!1019084 m!1199181))

(declare-fun m!1199183 () Bool)

(assert (=> b!1019084 m!1199183))

(assert (=> b!1019083 m!1199181))

(declare-fun m!1199185 () Bool)

(assert (=> b!1019083 m!1199185))

(declare-fun m!1199187 () Bool)

(assert (=> d!294188 m!1199187))

(declare-fun m!1199189 () Bool)

(assert (=> d!294188 m!1199189))

(declare-fun m!1199191 () Bool)

(assert (=> d!294188 m!1199191))

(assert (=> b!1019085 m!1199187))

(declare-fun m!1199193 () Bool)

(assert (=> b!1019086 m!1199193))

(assert (=> b!1019086 m!1199193))

(declare-fun m!1199195 () Bool)

(assert (=> b!1019086 m!1199195))

(declare-fun m!1199197 () Bool)

(assert (=> b!1019086 m!1199197))

(assert (=> b!1019086 m!1199193))

(declare-fun m!1199199 () Bool)

(assert (=> b!1019086 m!1199199))

(declare-fun m!1199201 () Bool)

(assert (=> b!1019088 m!1199201))

(assert (=> b!1019087 m!1199181))

(declare-fun m!1199203 () Bool)

(assert (=> b!1019087 m!1199203))

(assert (=> b!1018898 d!294188))

(declare-fun bs!246559 () Bool)

(declare-fun d!294190 () Bool)

(assert (= bs!246559 (and d!294190 b!1018898)))

(declare-fun lambda!36135 () Int)

(assert (=> bs!246559 (= lambda!36135 lambda!36109)))

(assert (=> bs!246559 (not (= lambda!36135 lambda!36110))))

(declare-fun bs!246560 () Bool)

(assert (= bs!246560 (and d!294190 b!1018983)))

(assert (=> bs!246560 (not (= lambda!36135 lambda!36123))))

(declare-fun bs!246561 () Bool)

(assert (= bs!246561 (and d!294190 b!1018990)))

(assert (=> bs!246561 (not (= lambda!36135 lambda!36124))))

(assert (=> d!294190 true))

(assert (=> d!294190 true))

(assert (=> d!294190 true))

(declare-fun lambda!36136 () Int)

(assert (=> bs!246559 (= lambda!36136 lambda!36110)))

(assert (=> bs!246560 (not (= lambda!36136 lambda!36123))))

(assert (=> bs!246559 (not (= lambda!36136 lambda!36109))))

(declare-fun bs!246562 () Bool)

(assert (= bs!246562 d!294190))

(assert (=> bs!246562 (not (= lambda!36136 lambda!36135))))

(assert (=> bs!246561 (= (= EmptyExpr!2812 (regOne!6136 r!15766)) (= lambda!36136 lambda!36124))))

(assert (=> d!294190 true))

(assert (=> d!294190 true))

(assert (=> d!294190 true))

(assert (=> d!294190 (= (Exists!541 lambda!36135) (Exists!541 lambda!36136))))

(declare-fun lt!353991 () Unit!15299)

(declare-fun choose!6435 (Regex!2812 Regex!2812 List!10042) Unit!15299)

(assert (=> d!294190 (= lt!353991 (choose!6435 EmptyExpr!2812 (regTwo!6136 r!15766) s!10566))))

(assert (=> d!294190 (validRegex!1281 EmptyExpr!2812)))

(assert (=> d!294190 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!243 EmptyExpr!2812 (regTwo!6136 r!15766) s!10566) lt!353991)))

(declare-fun m!1199211 () Bool)

(assert (=> bs!246562 m!1199211))

(declare-fun m!1199213 () Bool)

(assert (=> bs!246562 m!1199213))

(declare-fun m!1199215 () Bool)

(assert (=> bs!246562 m!1199215))

(assert (=> bs!246562 m!1199191))

(assert (=> b!1018898 d!294190))

(declare-fun d!294194 () Bool)

(declare-fun isEmpty!6374 (Option!2345) Bool)

(assert (=> d!294194 (= (isDefined!1987 (findConcatSeparation!451 EmptyExpr!2812 (regTwo!6136 r!15766) Nil!10026 s!10566 s!10566)) (not (isEmpty!6374 (findConcatSeparation!451 EmptyExpr!2812 (regTwo!6136 r!15766) Nil!10026 s!10566 s!10566))))))

(declare-fun bs!246563 () Bool)

(assert (= bs!246563 d!294194))

(assert (=> bs!246563 m!1199115))

(declare-fun m!1199217 () Bool)

(assert (=> bs!246563 m!1199217))

(assert (=> b!1018898 d!294194))

(declare-fun d!294196 () Bool)

(declare-fun choose!6436 (Int) Bool)

(assert (=> d!294196 (= (Exists!541 lambda!36109) (choose!6436 lambda!36109))))

(declare-fun bs!246564 () Bool)

(assert (= bs!246564 d!294196))

(declare-fun m!1199219 () Bool)

(assert (=> bs!246564 m!1199219))

(assert (=> b!1018898 d!294196))

(declare-fun bs!246565 () Bool)

(declare-fun d!294198 () Bool)

(assert (= bs!246565 (and d!294198 d!294190)))

(declare-fun lambda!36139 () Int)

(assert (=> bs!246565 (not (= lambda!36139 lambda!36136))))

(declare-fun bs!246566 () Bool)

(assert (= bs!246566 (and d!294198 b!1018898)))

(assert (=> bs!246566 (not (= lambda!36139 lambda!36110))))

(declare-fun bs!246567 () Bool)

(assert (= bs!246567 (and d!294198 b!1018983)))

(assert (=> bs!246567 (not (= lambda!36139 lambda!36123))))

(assert (=> bs!246566 (= lambda!36139 lambda!36109)))

(assert (=> bs!246565 (= lambda!36139 lambda!36135)))

(declare-fun bs!246568 () Bool)

(assert (= bs!246568 (and d!294198 b!1018990)))

(assert (=> bs!246568 (not (= lambda!36139 lambda!36124))))

(assert (=> d!294198 true))

(assert (=> d!294198 true))

(assert (=> d!294198 true))

(assert (=> d!294198 (= (isDefined!1987 (findConcatSeparation!451 EmptyExpr!2812 (regTwo!6136 r!15766) Nil!10026 s!10566 s!10566)) (Exists!541 lambda!36139))))

(declare-fun lt!353996 () Unit!15299)

(declare-fun choose!6437 (Regex!2812 Regex!2812 List!10042) Unit!15299)

(assert (=> d!294198 (= lt!353996 (choose!6437 EmptyExpr!2812 (regTwo!6136 r!15766) s!10566))))

(assert (=> d!294198 (validRegex!1281 EmptyExpr!2812)))

(assert (=> d!294198 (= (lemmaFindConcatSeparationEquivalentToExists!451 EmptyExpr!2812 (regTwo!6136 r!15766) s!10566) lt!353996)))

(declare-fun bs!246569 () Bool)

(assert (= bs!246569 d!294198))

(assert (=> bs!246569 m!1199115))

(declare-fun m!1199221 () Bool)

(assert (=> bs!246569 m!1199221))

(assert (=> bs!246569 m!1199115))

(assert (=> bs!246569 m!1199117))

(declare-fun m!1199223 () Bool)

(assert (=> bs!246569 m!1199223))

(assert (=> bs!246569 m!1199191))

(assert (=> b!1018898 d!294198))

(declare-fun d!294200 () Bool)

(assert (=> d!294200 (= (Exists!541 lambda!36110) (choose!6436 lambda!36110))))

(declare-fun bs!246570 () Bool)

(assert (= bs!246570 d!294200))

(declare-fun m!1199225 () Bool)

(assert (=> bs!246570 m!1199225))

(assert (=> b!1018898 d!294200))

(declare-fun b!1019161 () Bool)

(declare-fun e!651052 () Bool)

(declare-fun e!651053 () Bool)

(assert (=> b!1019161 (= e!651052 e!651053)))

(declare-fun res!457983 () Bool)

(assert (=> b!1019161 (=> (not res!457983) (not e!651053))))

(declare-fun call!69657 () Bool)

(assert (=> b!1019161 (= res!457983 call!69657)))

(declare-fun b!1019162 () Bool)

(declare-fun call!69659 () Bool)

(assert (=> b!1019162 (= e!651053 call!69659)))

(declare-fun bm!69652 () Bool)

(declare-fun call!69658 () Bool)

(declare-fun c!168871 () Bool)

(declare-fun c!168870 () Bool)

(assert (=> bm!69652 (= call!69658 (validRegex!1281 (ite c!168870 (reg!3141 r!15766) (ite c!168871 (regTwo!6137 r!15766) (regTwo!6136 r!15766)))))))

(declare-fun bm!69653 () Bool)

(assert (=> bm!69653 (= call!69659 call!69658)))

(declare-fun b!1019163 () Bool)

(declare-fun e!651051 () Bool)

(declare-fun e!651050 () Bool)

(assert (=> b!1019163 (= e!651051 e!651050)))

(assert (=> b!1019163 (= c!168870 (is-Star!2812 r!15766))))

(declare-fun b!1019164 () Bool)

(declare-fun res!457984 () Bool)

(assert (=> b!1019164 (=> res!457984 e!651052)))

(assert (=> b!1019164 (= res!457984 (not (is-Concat!4645 r!15766)))))

(declare-fun e!651054 () Bool)

(assert (=> b!1019164 (= e!651054 e!651052)))

(declare-fun b!1019165 () Bool)

(declare-fun e!651056 () Bool)

(assert (=> b!1019165 (= e!651056 call!69659)))

(declare-fun b!1019166 () Bool)

(declare-fun e!651055 () Bool)

(assert (=> b!1019166 (= e!651055 call!69658)))

(declare-fun b!1019167 () Bool)

(declare-fun res!457981 () Bool)

(assert (=> b!1019167 (=> (not res!457981) (not e!651056))))

(assert (=> b!1019167 (= res!457981 call!69657)))

(assert (=> b!1019167 (= e!651054 e!651056)))

(declare-fun d!294202 () Bool)

(declare-fun res!457982 () Bool)

(assert (=> d!294202 (=> res!457982 e!651051)))

(assert (=> d!294202 (= res!457982 (is-ElementMatch!2812 r!15766))))

(assert (=> d!294202 (= (validRegex!1281 r!15766) e!651051)))

(declare-fun b!1019168 () Bool)

(assert (=> b!1019168 (= e!651050 e!651054)))

(assert (=> b!1019168 (= c!168871 (is-Union!2812 r!15766))))

(declare-fun b!1019169 () Bool)

(assert (=> b!1019169 (= e!651050 e!651055)))

(declare-fun res!457980 () Bool)

(assert (=> b!1019169 (= res!457980 (not (nullable!917 (reg!3141 r!15766))))))

(assert (=> b!1019169 (=> (not res!457980) (not e!651055))))

(declare-fun bm!69654 () Bool)

(assert (=> bm!69654 (= call!69657 (validRegex!1281 (ite c!168871 (regOne!6137 r!15766) (regOne!6136 r!15766))))))

(assert (= (and d!294202 (not res!457982)) b!1019163))

(assert (= (and b!1019163 c!168870) b!1019169))

(assert (= (and b!1019163 (not c!168870)) b!1019168))

(assert (= (and b!1019169 res!457980) b!1019166))

(assert (= (and b!1019168 c!168871) b!1019167))

(assert (= (and b!1019168 (not c!168871)) b!1019164))

(assert (= (and b!1019167 res!457981) b!1019165))

(assert (= (and b!1019164 (not res!457984)) b!1019161))

(assert (= (and b!1019161 res!457983) b!1019162))

(assert (= (or b!1019165 b!1019162) bm!69653))

(assert (= (or b!1019167 b!1019161) bm!69654))

(assert (= (or b!1019166 bm!69653) bm!69652))

(declare-fun m!1199227 () Bool)

(assert (=> bm!69652 m!1199227))

(declare-fun m!1199229 () Bool)

(assert (=> b!1019169 m!1199229))

(declare-fun m!1199231 () Bool)

(assert (=> bm!69654 m!1199231))

(assert (=> start!88692 d!294202))

(declare-fun b!1019170 () Bool)

(declare-fun e!651058 () Bool)

(declare-fun e!651057 () Bool)

(assert (=> b!1019170 (= e!651058 e!651057)))

(declare-fun res!457992 () Bool)

(assert (=> b!1019170 (=> (not res!457992) (not e!651057))))

(declare-fun lt!353997 () Bool)

(assert (=> b!1019170 (= res!457992 (not lt!353997))))

(declare-fun b!1019171 () Bool)

(declare-fun e!651062 () Bool)

(assert (=> b!1019171 (= e!651062 (not lt!353997))))

(declare-fun b!1019172 () Bool)

(declare-fun e!651060 () Bool)

(assert (=> b!1019172 (= e!651060 (not (= (head!1874 s!10566) (c!168819 (removeUselessConcat!385 r!15766)))))))

(declare-fun b!1019173 () Bool)

(declare-fun e!651059 () Bool)

(assert (=> b!1019173 (= e!651059 (nullable!917 (removeUselessConcat!385 r!15766)))))

(declare-fun b!1019174 () Bool)

(declare-fun res!457988 () Bool)

(assert (=> b!1019174 (=> res!457988 e!651058)))

(assert (=> b!1019174 (= res!457988 (not (is-ElementMatch!2812 (removeUselessConcat!385 r!15766))))))

(assert (=> b!1019174 (= e!651062 e!651058)))

(declare-fun b!1019175 () Bool)

(assert (=> b!1019175 (= e!651059 (matchR!1348 (derivativeStep!720 (removeUselessConcat!385 r!15766) (head!1874 s!10566)) (tail!1436 s!10566)))))

(declare-fun b!1019176 () Bool)

(declare-fun res!457987 () Bool)

(declare-fun e!651063 () Bool)

(assert (=> b!1019176 (=> (not res!457987) (not e!651063))))

(declare-fun call!69660 () Bool)

(assert (=> b!1019176 (= res!457987 (not call!69660))))

(declare-fun d!294204 () Bool)

(declare-fun e!651061 () Bool)

(assert (=> d!294204 e!651061))

(declare-fun c!168873 () Bool)

(assert (=> d!294204 (= c!168873 (is-EmptyExpr!2812 (removeUselessConcat!385 r!15766)))))

(assert (=> d!294204 (= lt!353997 e!651059)))

(declare-fun c!168874 () Bool)

(assert (=> d!294204 (= c!168874 (isEmpty!6372 s!10566))))

(assert (=> d!294204 (validRegex!1281 (removeUselessConcat!385 r!15766))))

(assert (=> d!294204 (= (matchR!1348 (removeUselessConcat!385 r!15766) s!10566) lt!353997)))

(declare-fun b!1019177 () Bool)

(assert (=> b!1019177 (= e!651057 e!651060)))

(declare-fun res!457986 () Bool)

(assert (=> b!1019177 (=> res!457986 e!651060)))

(assert (=> b!1019177 (= res!457986 call!69660)))

(declare-fun b!1019178 () Bool)

(declare-fun res!457991 () Bool)

(assert (=> b!1019178 (=> res!457991 e!651060)))

(assert (=> b!1019178 (= res!457991 (not (isEmpty!6372 (tail!1436 s!10566))))))

(declare-fun b!1019179 () Bool)

(assert (=> b!1019179 (= e!651063 (= (head!1874 s!10566) (c!168819 (removeUselessConcat!385 r!15766))))))

(declare-fun bm!69655 () Bool)

(assert (=> bm!69655 (= call!69660 (isEmpty!6372 s!10566))))

(declare-fun b!1019180 () Bool)

(declare-fun res!457985 () Bool)

(assert (=> b!1019180 (=> res!457985 e!651058)))

(assert (=> b!1019180 (= res!457985 e!651063)))

(declare-fun res!457989 () Bool)

(assert (=> b!1019180 (=> (not res!457989) (not e!651063))))

(assert (=> b!1019180 (= res!457989 lt!353997)))

(declare-fun b!1019181 () Bool)

(assert (=> b!1019181 (= e!651061 e!651062)))

(declare-fun c!168872 () Bool)

(assert (=> b!1019181 (= c!168872 (is-EmptyLang!2812 (removeUselessConcat!385 r!15766)))))

(declare-fun b!1019182 () Bool)

(assert (=> b!1019182 (= e!651061 (= lt!353997 call!69660))))

(declare-fun b!1019183 () Bool)

(declare-fun res!457990 () Bool)

(assert (=> b!1019183 (=> (not res!457990) (not e!651063))))

(assert (=> b!1019183 (= res!457990 (isEmpty!6372 (tail!1436 s!10566)))))

(assert (= (and d!294204 c!168874) b!1019173))

(assert (= (and d!294204 (not c!168874)) b!1019175))

(assert (= (and d!294204 c!168873) b!1019182))

(assert (= (and d!294204 (not c!168873)) b!1019181))

(assert (= (and b!1019181 c!168872) b!1019171))

(assert (= (and b!1019181 (not c!168872)) b!1019174))

(assert (= (and b!1019174 (not res!457988)) b!1019180))

(assert (= (and b!1019180 res!457989) b!1019176))

(assert (= (and b!1019176 res!457987) b!1019183))

(assert (= (and b!1019183 res!457990) b!1019179))

(assert (= (and b!1019180 (not res!457985)) b!1019170))

(assert (= (and b!1019170 res!457992) b!1019177))

(assert (= (and b!1019177 (not res!457986)) b!1019178))

(assert (= (and b!1019178 (not res!457991)) b!1019172))

(assert (= (or b!1019182 b!1019176 b!1019177) bm!69655))

(assert (=> d!294204 m!1199121))

(assert (=> d!294204 m!1199109))

(declare-fun m!1199233 () Bool)

(assert (=> d!294204 m!1199233))

(assert (=> b!1019183 m!1199167))

(assert (=> b!1019183 m!1199167))

(assert (=> b!1019183 m!1199169))

(assert (=> b!1019178 m!1199167))

(assert (=> b!1019178 m!1199167))

(assert (=> b!1019178 m!1199169))

(assert (=> b!1019175 m!1199171))

(assert (=> b!1019175 m!1199109))

(assert (=> b!1019175 m!1199171))

(declare-fun m!1199235 () Bool)

(assert (=> b!1019175 m!1199235))

(assert (=> b!1019175 m!1199167))

(assert (=> b!1019175 m!1199235))

(assert (=> b!1019175 m!1199167))

(declare-fun m!1199237 () Bool)

(assert (=> b!1019175 m!1199237))

(assert (=> b!1019173 m!1199109))

(declare-fun m!1199239 () Bool)

(assert (=> b!1019173 m!1199239))

(assert (=> b!1019172 m!1199171))

(assert (=> bm!69655 m!1199121))

(assert (=> b!1019179 m!1199171))

(assert (=> b!1018896 d!294204))

(declare-fun b!1019220 () Bool)

(declare-fun e!651084 () Regex!2812)

(declare-fun call!69672 () Regex!2812)

(declare-fun call!69676 () Regex!2812)

(assert (=> b!1019220 (= e!651084 (Concat!4645 call!69672 call!69676))))

(declare-fun b!1019221 () Bool)

(declare-fun c!168891 () Bool)

(assert (=> b!1019221 (= c!168891 (is-Concat!4645 r!15766))))

(declare-fun e!651088 () Regex!2812)

(assert (=> b!1019221 (= e!651088 e!651084)))

(declare-fun b!1019222 () Bool)

(declare-fun e!651085 () Regex!2812)

(assert (=> b!1019222 (= e!651085 r!15766)))

(declare-fun b!1019223 () Bool)

(declare-fun e!651086 () Regex!2812)

(declare-fun call!69673 () Regex!2812)

(assert (=> b!1019223 (= e!651086 call!69673)))

(declare-fun b!1019224 () Bool)

(declare-fun call!69675 () Regex!2812)

(assert (=> b!1019224 (= e!651088 call!69675)))

(declare-fun b!1019225 () Bool)

(declare-fun e!651087 () Regex!2812)

(declare-fun call!69674 () Regex!2812)

(assert (=> b!1019225 (= e!651087 (Union!2812 call!69676 call!69674))))

(declare-fun c!168889 () Bool)

(declare-fun bm!69667 () Bool)

(declare-fun c!168888 () Bool)

(assert (=> bm!69667 (= call!69673 (removeUselessConcat!385 (ite c!168889 (regTwo!6136 r!15766) (ite c!168888 (regOne!6136 r!15766) (ite c!168891 (regTwo!6136 r!15766) (regOne!6137 r!15766))))))))

(declare-fun bm!69668 () Bool)

(assert (=> bm!69668 (= call!69674 call!69672)))

(declare-fun bm!69669 () Bool)

(assert (=> bm!69669 (= call!69676 call!69675)))

(declare-fun b!1019226 () Bool)

(declare-fun c!168890 () Bool)

(assert (=> b!1019226 (= c!168890 (is-Star!2812 r!15766))))

(assert (=> b!1019226 (= e!651087 e!651085)))

(declare-fun b!1019227 () Bool)

(assert (=> b!1019227 (= e!651086 e!651088)))

(assert (=> b!1019227 (= c!168888 (and (is-Concat!4645 r!15766) (is-EmptyExpr!2812 (regTwo!6136 r!15766))))))

(declare-fun b!1019228 () Bool)

(declare-fun e!651083 () Bool)

(declare-fun lt!354001 () Regex!2812)

(assert (=> b!1019228 (= e!651083 (= (nullable!917 lt!354001) (nullable!917 r!15766)))))

(declare-fun bm!69670 () Bool)

(assert (=> bm!69670 (= call!69675 call!69673)))

(declare-fun d!294206 () Bool)

(assert (=> d!294206 e!651083))

(declare-fun res!458003 () Bool)

(assert (=> d!294206 (=> (not res!458003) (not e!651083))))

(assert (=> d!294206 (= res!458003 (validRegex!1281 lt!354001))))

(assert (=> d!294206 (= lt!354001 e!651086)))

(assert (=> d!294206 (= c!168889 (and (is-Concat!4645 r!15766) (is-EmptyExpr!2812 (regOne!6136 r!15766))))))

(assert (=> d!294206 (validRegex!1281 r!15766)))

(assert (=> d!294206 (= (removeUselessConcat!385 r!15766) lt!354001)))

(declare-fun b!1019229 () Bool)

(assert (=> b!1019229 (= e!651084 e!651087)))

(declare-fun c!168892 () Bool)

(assert (=> b!1019229 (= c!168892 (is-Union!2812 r!15766))))

(declare-fun b!1019230 () Bool)

(assert (=> b!1019230 (= e!651085 (Star!2812 call!69674))))

(declare-fun bm!69671 () Bool)

(assert (=> bm!69671 (= call!69672 (removeUselessConcat!385 (ite c!168891 (regOne!6136 r!15766) (ite c!168892 (regTwo!6137 r!15766) (reg!3141 r!15766)))))))

(assert (= (and d!294206 c!168889) b!1019223))

(assert (= (and d!294206 (not c!168889)) b!1019227))

(assert (= (and b!1019227 c!168888) b!1019224))

(assert (= (and b!1019227 (not c!168888)) b!1019221))

(assert (= (and b!1019221 c!168891) b!1019220))

(assert (= (and b!1019221 (not c!168891)) b!1019229))

(assert (= (and b!1019229 c!168892) b!1019225))

(assert (= (and b!1019229 (not c!168892)) b!1019226))

(assert (= (and b!1019226 c!168890) b!1019230))

(assert (= (and b!1019226 (not c!168890)) b!1019222))

(assert (= (or b!1019225 b!1019230) bm!69668))

(assert (= (or b!1019220 b!1019225) bm!69669))

(assert (= (or b!1019220 bm!69668) bm!69671))

(assert (= (or b!1019224 bm!69669) bm!69670))

(assert (= (or b!1019223 bm!69670) bm!69667))

(assert (= (and d!294206 res!458003) b!1019228))

(declare-fun m!1199253 () Bool)

(assert (=> bm!69667 m!1199253))

(declare-fun m!1199255 () Bool)

(assert (=> b!1019228 m!1199255))

(assert (=> b!1019228 m!1199177))

(declare-fun m!1199257 () Bool)

(assert (=> d!294206 m!1199257))

(assert (=> d!294206 m!1199127))

(declare-fun m!1199259 () Bool)

(assert (=> bm!69671 m!1199259))

(assert (=> b!1018896 d!294206))

(declare-fun b!1019242 () Bool)

(declare-fun e!651091 () Bool)

(declare-fun tp!309809 () Bool)

(declare-fun tp!309807 () Bool)

(assert (=> b!1019242 (= e!651091 (and tp!309809 tp!309807))))

(assert (=> b!1018903 (= tp!309776 e!651091)))

(declare-fun b!1019244 () Bool)

(declare-fun tp!309810 () Bool)

(declare-fun tp!309811 () Bool)

(assert (=> b!1019244 (= e!651091 (and tp!309810 tp!309811))))

(declare-fun b!1019241 () Bool)

(assert (=> b!1019241 (= e!651091 tp_is_empty!5267)))

(declare-fun b!1019243 () Bool)

(declare-fun tp!309808 () Bool)

(assert (=> b!1019243 (= e!651091 tp!309808)))

(assert (= (and b!1018903 (is-ElementMatch!2812 (regOne!6137 r!15766))) b!1019241))

(assert (= (and b!1018903 (is-Concat!4645 (regOne!6137 r!15766))) b!1019242))

(assert (= (and b!1018903 (is-Star!2812 (regOne!6137 r!15766))) b!1019243))

(assert (= (and b!1018903 (is-Union!2812 (regOne!6137 r!15766))) b!1019244))

(declare-fun b!1019246 () Bool)

(declare-fun e!651092 () Bool)

(declare-fun tp!309814 () Bool)

(declare-fun tp!309812 () Bool)

(assert (=> b!1019246 (= e!651092 (and tp!309814 tp!309812))))

(assert (=> b!1018903 (= tp!309777 e!651092)))

(declare-fun b!1019248 () Bool)

(declare-fun tp!309815 () Bool)

(declare-fun tp!309816 () Bool)

(assert (=> b!1019248 (= e!651092 (and tp!309815 tp!309816))))

(declare-fun b!1019245 () Bool)

(assert (=> b!1019245 (= e!651092 tp_is_empty!5267)))

(declare-fun b!1019247 () Bool)

(declare-fun tp!309813 () Bool)

(assert (=> b!1019247 (= e!651092 tp!309813)))

(assert (= (and b!1018903 (is-ElementMatch!2812 (regTwo!6137 r!15766))) b!1019245))

(assert (= (and b!1018903 (is-Concat!4645 (regTwo!6137 r!15766))) b!1019246))

(assert (= (and b!1018903 (is-Star!2812 (regTwo!6137 r!15766))) b!1019247))

(assert (= (and b!1018903 (is-Union!2812 (regTwo!6137 r!15766))) b!1019248))

(declare-fun b!1019250 () Bool)

(declare-fun e!651093 () Bool)

(declare-fun tp!309819 () Bool)

(declare-fun tp!309817 () Bool)

(assert (=> b!1019250 (= e!651093 (and tp!309819 tp!309817))))

(assert (=> b!1018897 (= tp!309778 e!651093)))

(declare-fun b!1019252 () Bool)

(declare-fun tp!309820 () Bool)

(declare-fun tp!309821 () Bool)

(assert (=> b!1019252 (= e!651093 (and tp!309820 tp!309821))))

(declare-fun b!1019249 () Bool)

(assert (=> b!1019249 (= e!651093 tp_is_empty!5267)))

(declare-fun b!1019251 () Bool)

(declare-fun tp!309818 () Bool)

(assert (=> b!1019251 (= e!651093 tp!309818)))

(assert (= (and b!1018897 (is-ElementMatch!2812 (regOne!6136 r!15766))) b!1019249))

(assert (= (and b!1018897 (is-Concat!4645 (regOne!6136 r!15766))) b!1019250))

(assert (= (and b!1018897 (is-Star!2812 (regOne!6136 r!15766))) b!1019251))

(assert (= (and b!1018897 (is-Union!2812 (regOne!6136 r!15766))) b!1019252))

(declare-fun b!1019254 () Bool)

(declare-fun e!651094 () Bool)

(declare-fun tp!309824 () Bool)

(declare-fun tp!309822 () Bool)

(assert (=> b!1019254 (= e!651094 (and tp!309824 tp!309822))))

(assert (=> b!1018897 (= tp!309775 e!651094)))

(declare-fun b!1019256 () Bool)

(declare-fun tp!309825 () Bool)

(declare-fun tp!309826 () Bool)

(assert (=> b!1019256 (= e!651094 (and tp!309825 tp!309826))))

(declare-fun b!1019253 () Bool)

(assert (=> b!1019253 (= e!651094 tp_is_empty!5267)))

(declare-fun b!1019255 () Bool)

(declare-fun tp!309823 () Bool)

(assert (=> b!1019255 (= e!651094 tp!309823)))

(assert (= (and b!1018897 (is-ElementMatch!2812 (regTwo!6136 r!15766))) b!1019253))

(assert (= (and b!1018897 (is-Concat!4645 (regTwo!6136 r!15766))) b!1019254))

(assert (= (and b!1018897 (is-Star!2812 (regTwo!6136 r!15766))) b!1019255))

(assert (= (and b!1018897 (is-Union!2812 (regTwo!6136 r!15766))) b!1019256))

(declare-fun b!1019261 () Bool)

(declare-fun e!651097 () Bool)

(declare-fun tp!309829 () Bool)

(assert (=> b!1019261 (= e!651097 (and tp_is_empty!5267 tp!309829))))

(assert (=> b!1018902 (= tp!309773 e!651097)))

(assert (= (and b!1018902 (is-Cons!10026 (t!101088 s!10566))) b!1019261))

(declare-fun b!1019263 () Bool)

(declare-fun e!651098 () Bool)

(declare-fun tp!309832 () Bool)

(declare-fun tp!309830 () Bool)

(assert (=> b!1019263 (= e!651098 (and tp!309832 tp!309830))))

(assert (=> b!1018900 (= tp!309774 e!651098)))

(declare-fun b!1019265 () Bool)

(declare-fun tp!309833 () Bool)

(declare-fun tp!309834 () Bool)

(assert (=> b!1019265 (= e!651098 (and tp!309833 tp!309834))))

(declare-fun b!1019262 () Bool)

(assert (=> b!1019262 (= e!651098 tp_is_empty!5267)))

(declare-fun b!1019264 () Bool)

(declare-fun tp!309831 () Bool)

(assert (=> b!1019264 (= e!651098 tp!309831)))

(assert (= (and b!1018900 (is-ElementMatch!2812 (reg!3141 r!15766))) b!1019262))

(assert (= (and b!1018900 (is-Concat!4645 (reg!3141 r!15766))) b!1019263))

(assert (= (and b!1018900 (is-Star!2812 (reg!3141 r!15766))) b!1019264))

(assert (= (and b!1018900 (is-Union!2812 (reg!3141 r!15766))) b!1019265))

(push 1)

(assert (not d!294190))

(assert (not bm!69655))

(assert (not d!294184))

(assert tp_is_empty!5267)

(assert (not b!1019247))

(assert (not b!1019228))

(assert (not b!1018981))

(assert (not d!294194))

(assert (not b!1019264))

(assert (not b!1019242))

(assert (not bm!69671))

(assert (not b!1019179))

(assert (not b!1019173))

(assert (not b!1019265))

(assert (not bm!69634))

(assert (not b!1019032))

(assert (not b!1019036))

(assert (not b!1019246))

(assert (not b!1019243))

(assert (not b!1019263))

(assert (not b!1019256))

(assert (not b!1019183))

(assert (not b!1019254))

(assert (not d!294188))

(assert (not d!294206))

(assert (not d!294198))

(assert (not b!1019083))

(assert (not d!294200))

(assert (not bm!69652))

(assert (not b!1019084))

(assert (not b!1019261))

(assert (not b!1019172))

(assert (not b!1019244))

(assert (not d!294204))

(assert (not b!1019088))

(assert (not d!294196))

(assert (not b!1019175))

(assert (not b!1019248))

(assert (not b!1019250))

(assert (not b!1019026))

(assert (not bm!69654))

(assert (not b!1019255))

(assert (not b!1019025))

(assert (not b!1019086))

(assert (not b!1019031))

(assert (not b!1019028))

(assert (not bm!69633))

(assert (not b!1019169))

(assert (not b!1019178))

(assert (not b!1019085))

(assert (not b!1019087))

(assert (not bm!69637))

(assert (not bm!69667))

(assert (not d!294182))

(assert (not b!1018980))

(assert (not b!1019252))

(assert (not b!1019251))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

