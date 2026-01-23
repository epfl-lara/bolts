; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!83788 () Bool)

(assert start!83788)

(declare-fun b!937994 () Bool)

(assert (=> b!937994 true))

(assert (=> b!937994 true))

(assert (=> b!937994 true))

(declare-fun lambda!31344 () Int)

(declare-fun lambda!31343 () Int)

(assert (=> b!937994 (not (= lambda!31344 lambda!31343))))

(assert (=> b!937994 true))

(assert (=> b!937994 true))

(assert (=> b!937994 true))

(declare-fun bs!238256 () Bool)

(declare-fun b!937993 () Bool)

(assert (= bs!238256 (and b!937993 b!937994)))

(declare-datatypes ((C!5714 0))(
  ( (C!5715 (val!3105 Int)) )
))
(declare-datatypes ((Regex!2572 0))(
  ( (ElementMatch!2572 (c!152575 C!5714)) (Concat!4405 (regOne!5656 Regex!2572) (regTwo!5656 Regex!2572)) (EmptyExpr!2572) (Star!2572 (reg!2901 Regex!2572)) (EmptyLang!2572) (Union!2572 (regOne!5657 Regex!2572) (regTwo!5657 Regex!2572)) )
))
(declare-fun r!15766 () Regex!2572)

(declare-fun lambda!31345 () Int)

(declare-fun lt!341734 () Regex!2572)

(declare-fun lt!341740 () Regex!2572)

(declare-fun lt!341741 () Regex!2572)

(assert (=> bs!238256 (= (and (= lt!341741 (reg!2901 r!15766)) (= lt!341740 lt!341734)) (= lambda!31345 lambda!31343))))

(assert (=> bs!238256 (not (= lambda!31345 lambda!31344))))

(assert (=> b!937993 true))

(assert (=> b!937993 true))

(assert (=> b!937993 true))

(declare-fun lambda!31346 () Int)

(assert (=> bs!238256 (not (= lambda!31346 lambda!31343))))

(assert (=> bs!238256 (= (and (= lt!341741 (reg!2901 r!15766)) (= lt!341740 lt!341734)) (= lambda!31346 lambda!31344))))

(assert (=> b!937993 (not (= lambda!31346 lambda!31345))))

(assert (=> b!937993 true))

(assert (=> b!937993 true))

(assert (=> b!937993 true))

(declare-fun b!937990 () Bool)

(declare-fun e!608859 () Bool)

(declare-fun tp!290661 () Bool)

(declare-fun tp!290662 () Bool)

(assert (=> b!937990 (= e!608859 (and tp!290661 tp!290662))))

(declare-fun b!937991 () Bool)

(declare-fun tp_is_empty!4787 () Bool)

(assert (=> b!937991 (= e!608859 tp_is_empty!4787)))

(declare-fun b!937992 () Bool)

(declare-fun tp!290659 () Bool)

(declare-fun tp!290658 () Bool)

(assert (=> b!937992 (= e!608859 (and tp!290659 tp!290658))))

(declare-fun e!608857 () Bool)

(declare-fun e!608858 () Bool)

(assert (=> b!937993 (= e!608857 e!608858)))

(declare-fun res!425966 () Bool)

(assert (=> b!937993 (=> res!425966 e!608858)))

(declare-datatypes ((List!9802 0))(
  ( (Nil!9786) (Cons!9786 (h!15187 C!5714) (t!100848 List!9802)) )
))
(declare-fun s!10566 () List!9802)

(declare-fun isEmpty!6025 (List!9802) Bool)

(assert (=> b!937993 (= res!425966 (isEmpty!6025 s!10566))))

(declare-fun Exists!323 (Int) Bool)

(assert (=> b!937993 (= (Exists!323 lambda!31345) (Exists!323 lambda!31346))))

(declare-datatypes ((Unit!14763 0))(
  ( (Unit!14764) )
))
(declare-fun lt!341738 () Unit!14763)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!67 (Regex!2572 List!9802) Unit!14763)

(assert (=> b!937993 (= lt!341738 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!67 lt!341741 s!10566))))

(declare-datatypes ((tuple2!11042 0))(
  ( (tuple2!11043 (_1!6347 List!9802) (_2!6347 List!9802)) )
))
(declare-datatypes ((Option!2163 0))(
  ( (None!2162) (Some!2162 (v!19579 tuple2!11042)) )
))
(declare-fun isDefined!1805 (Option!2163) Bool)

(declare-fun findConcatSeparation!269 (Regex!2572 Regex!2572 List!9802 List!9802 List!9802) Option!2163)

(assert (=> b!937993 (= (isDefined!1805 (findConcatSeparation!269 lt!341741 lt!341740 Nil!9786 s!10566 s!10566)) (Exists!323 lambda!31345))))

(declare-fun lt!341736 () Unit!14763)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!269 (Regex!2572 Regex!2572 List!9802) Unit!14763)

(assert (=> b!937993 (= lt!341736 (lemmaFindConcatSeparationEquivalentToExists!269 lt!341741 lt!341740 s!10566))))

(declare-fun matchRSpec!373 (Regex!2572 List!9802) Bool)

(assert (=> b!937993 (matchRSpec!373 lt!341740 s!10566)))

(declare-fun lt!341739 () Unit!14763)

(declare-fun mainMatchTheorem!373 (Regex!2572 List!9802) Unit!14763)

(assert (=> b!937993 (= lt!341739 (mainMatchTheorem!373 lt!341740 s!10566))))

(declare-fun e!608855 () Bool)

(assert (=> b!937994 (= e!608855 e!608857)))

(declare-fun res!425965 () Bool)

(assert (=> b!937994 (=> res!425965 e!608857)))

(declare-fun matchR!1110 (Regex!2572 List!9802) Bool)

(assert (=> b!937994 (= res!425965 (not (matchR!1110 lt!341740 s!10566)))))

(assert (=> b!937994 (= lt!341740 (Star!2572 lt!341741))))

(declare-fun removeUselessConcat!241 (Regex!2572) Regex!2572)

(assert (=> b!937994 (= lt!341741 (removeUselessConcat!241 (reg!2901 r!15766)))))

(assert (=> b!937994 (= (Exists!323 lambda!31343) (Exists!323 lambda!31344))))

(declare-fun lt!341733 () Unit!14763)

(assert (=> b!937994 (= lt!341733 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!67 (reg!2901 r!15766) s!10566))))

(assert (=> b!937994 (= (isDefined!1805 (findConcatSeparation!269 (reg!2901 r!15766) lt!341734 Nil!9786 s!10566 s!10566)) (Exists!323 lambda!31343))))

(declare-fun lt!341732 () Unit!14763)

(assert (=> b!937994 (= lt!341732 (lemmaFindConcatSeparationEquivalentToExists!269 (reg!2901 r!15766) lt!341734 s!10566))))

(assert (=> b!937994 (= lt!341734 (Star!2572 (reg!2901 r!15766)))))

(declare-fun b!937995 () Bool)

(declare-fun e!608856 () Bool)

(declare-fun tp!290657 () Bool)

(assert (=> b!937995 (= e!608856 (and tp_is_empty!4787 tp!290657))))

(declare-fun res!425967 () Bool)

(declare-fun e!608854 () Bool)

(assert (=> start!83788 (=> (not res!425967) (not e!608854))))

(declare-fun validRegex!1041 (Regex!2572) Bool)

(assert (=> start!83788 (= res!425967 (validRegex!1041 r!15766))))

(assert (=> start!83788 e!608854))

(assert (=> start!83788 e!608859))

(assert (=> start!83788 e!608856))

(declare-fun b!937996 () Bool)

(declare-fun tp!290660 () Bool)

(assert (=> b!937996 (= e!608859 tp!290660)))

(declare-fun b!937997 () Bool)

(assert (=> b!937997 (= e!608854 (not e!608855))))

(declare-fun res!425968 () Bool)

(assert (=> b!937997 (=> res!425968 e!608855)))

(declare-fun lt!341737 () Bool)

(assert (=> b!937997 (= res!425968 (or lt!341737 (and (is-Concat!4405 r!15766) (is-EmptyExpr!2572 (regOne!5656 r!15766))) (and (is-Concat!4405 r!15766) (is-EmptyExpr!2572 (regTwo!5656 r!15766))) (is-Concat!4405 r!15766) (is-Union!2572 r!15766) (not (is-Star!2572 r!15766))))))

(assert (=> b!937997 (= lt!341737 (matchRSpec!373 r!15766 s!10566))))

(assert (=> b!937997 (= lt!341737 (matchR!1110 r!15766 s!10566))))

(declare-fun lt!341735 () Unit!14763)

(assert (=> b!937997 (= lt!341735 (mainMatchTheorem!373 r!15766 s!10566))))

(declare-fun b!937998 () Bool)

(assert (=> b!937998 (= e!608858 (validRegex!1041 lt!341741))))

(assert (= (and start!83788 res!425967) b!937997))

(assert (= (and b!937997 (not res!425968)) b!937994))

(assert (= (and b!937994 (not res!425965)) b!937993))

(assert (= (and b!937993 (not res!425966)) b!937998))

(assert (= (and start!83788 (is-ElementMatch!2572 r!15766)) b!937991))

(assert (= (and start!83788 (is-Concat!4405 r!15766)) b!937990))

(assert (= (and start!83788 (is-Star!2572 r!15766)) b!937996))

(assert (= (and start!83788 (is-Union!2572 r!15766)) b!937992))

(assert (= (and start!83788 (is-Cons!9786 s!10566)) b!937995))

(declare-fun m!1156545 () Bool)

(assert (=> start!83788 m!1156545))

(declare-fun m!1156547 () Bool)

(assert (=> b!937997 m!1156547))

(declare-fun m!1156549 () Bool)

(assert (=> b!937997 m!1156549))

(declare-fun m!1156551 () Bool)

(assert (=> b!937997 m!1156551))

(declare-fun m!1156553 () Bool)

(assert (=> b!937993 m!1156553))

(declare-fun m!1156555 () Bool)

(assert (=> b!937993 m!1156555))

(declare-fun m!1156557 () Bool)

(assert (=> b!937993 m!1156557))

(declare-fun m!1156559 () Bool)

(assert (=> b!937993 m!1156559))

(declare-fun m!1156561 () Bool)

(assert (=> b!937993 m!1156561))

(declare-fun m!1156563 () Bool)

(assert (=> b!937993 m!1156563))

(declare-fun m!1156565 () Bool)

(assert (=> b!937993 m!1156565))

(declare-fun m!1156567 () Bool)

(assert (=> b!937993 m!1156567))

(assert (=> b!937993 m!1156555))

(declare-fun m!1156569 () Bool)

(assert (=> b!937993 m!1156569))

(assert (=> b!937993 m!1156559))

(declare-fun m!1156571 () Bool)

(assert (=> b!937994 m!1156571))

(declare-fun m!1156573 () Bool)

(assert (=> b!937994 m!1156573))

(assert (=> b!937994 m!1156573))

(declare-fun m!1156575 () Bool)

(assert (=> b!937994 m!1156575))

(declare-fun m!1156577 () Bool)

(assert (=> b!937994 m!1156577))

(declare-fun m!1156579 () Bool)

(assert (=> b!937994 m!1156579))

(assert (=> b!937994 m!1156579))

(declare-fun m!1156581 () Bool)

(assert (=> b!937994 m!1156581))

(declare-fun m!1156583 () Bool)

(assert (=> b!937994 m!1156583))

(declare-fun m!1156585 () Bool)

(assert (=> b!937994 m!1156585))

(declare-fun m!1156587 () Bool)

(assert (=> b!937998 m!1156587))

(push 1)

(assert (not b!937998))

(assert (not b!937997))

(assert (not b!937995))

(assert (not b!937992))

(assert (not start!83788))

(assert (not b!937990))

(assert (not b!937994))

(assert (not b!937993))

(assert (not b!937996))

(assert tp_is_empty!4787)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!238258 () Bool)

(declare-fun b!938100 () Bool)

(assert (= bs!238258 (and b!938100 b!937994)))

(declare-fun lambda!31367 () Int)

(assert (=> bs!238258 (not (= lambda!31367 lambda!31343))))

(assert (=> bs!238258 (= (= r!15766 lt!341734) (= lambda!31367 lambda!31344))))

(declare-fun bs!238259 () Bool)

(assert (= bs!238259 (and b!938100 b!937993)))

(assert (=> bs!238259 (not (= lambda!31367 lambda!31345))))

(assert (=> bs!238259 (= (and (= (reg!2901 r!15766) lt!341741) (= r!15766 lt!341740)) (= lambda!31367 lambda!31346))))

(assert (=> b!938100 true))

(assert (=> b!938100 true))

(declare-fun bs!238260 () Bool)

(declare-fun b!938095 () Bool)

(assert (= bs!238260 (and b!938095 b!937993)))

(declare-fun lambda!31368 () Int)

(assert (=> bs!238260 (not (= lambda!31368 lambda!31345))))

(declare-fun bs!238261 () Bool)

(assert (= bs!238261 (and b!938095 b!938100)))

(assert (=> bs!238261 (not (= lambda!31368 lambda!31367))))

(assert (=> bs!238260 (not (= lambda!31368 lambda!31346))))

(declare-fun bs!238262 () Bool)

(assert (= bs!238262 (and b!938095 b!937994)))

(assert (=> bs!238262 (not (= lambda!31368 lambda!31344))))

(assert (=> bs!238262 (not (= lambda!31368 lambda!31343))))

(assert (=> b!938095 true))

(assert (=> b!938095 true))

(declare-fun b!938094 () Bool)

(declare-fun e!608910 () Bool)

(assert (=> b!938094 (= e!608910 (matchRSpec!373 (regTwo!5657 r!15766) s!10566))))

(declare-fun e!608912 () Bool)

(declare-fun call!58256 () Bool)

(assert (=> b!938095 (= e!608912 call!58256)))

(declare-fun c!152585 () Bool)

(declare-fun bm!58251 () Bool)

(assert (=> bm!58251 (= call!58256 (Exists!323 (ite c!152585 lambda!31367 lambda!31368)))))

(declare-fun b!938096 () Bool)

(declare-fun c!152588 () Bool)

(assert (=> b!938096 (= c!152588 (is-Union!2572 r!15766))))

(declare-fun e!608911 () Bool)

(declare-fun e!608913 () Bool)

(assert (=> b!938096 (= e!608911 e!608913)))

(declare-fun d!282106 () Bool)

(declare-fun c!152587 () Bool)

(assert (=> d!282106 (= c!152587 (is-EmptyExpr!2572 r!15766))))

(declare-fun e!608908 () Bool)

(assert (=> d!282106 (= (matchRSpec!373 r!15766 s!10566) e!608908)))

(declare-fun b!938097 () Bool)

(declare-fun c!152586 () Bool)

(assert (=> b!938097 (= c!152586 (is-ElementMatch!2572 r!15766))))

(declare-fun e!608914 () Bool)

(assert (=> b!938097 (= e!608914 e!608911)))

(declare-fun b!938098 () Bool)

(assert (=> b!938098 (= e!608908 e!608914)))

(declare-fun res!426025 () Bool)

(assert (=> b!938098 (= res!426025 (not (is-EmptyLang!2572 r!15766)))))

(assert (=> b!938098 (=> (not res!426025) (not e!608914))))

(declare-fun b!938099 () Bool)

(assert (=> b!938099 (= e!608911 (= s!10566 (Cons!9786 (c!152575 r!15766) Nil!9786)))))

(declare-fun e!608909 () Bool)

(assert (=> b!938100 (= e!608909 call!58256)))

(declare-fun b!938101 () Bool)

(assert (=> b!938101 (= e!608913 e!608910)))

(declare-fun res!426027 () Bool)

(assert (=> b!938101 (= res!426027 (matchRSpec!373 (regOne!5657 r!15766) s!10566))))

(assert (=> b!938101 (=> res!426027 e!608910)))

(declare-fun b!938102 () Bool)

(declare-fun call!58257 () Bool)

(assert (=> b!938102 (= e!608908 call!58257)))

(declare-fun b!938103 () Bool)

(declare-fun res!426026 () Bool)

(assert (=> b!938103 (=> res!426026 e!608909)))

(assert (=> b!938103 (= res!426026 call!58257)))

(assert (=> b!938103 (= e!608912 e!608909)))

(declare-fun bm!58252 () Bool)

(assert (=> bm!58252 (= call!58257 (isEmpty!6025 s!10566))))

(declare-fun b!938104 () Bool)

(assert (=> b!938104 (= e!608913 e!608912)))

(assert (=> b!938104 (= c!152585 (is-Star!2572 r!15766))))

(assert (= (and d!282106 c!152587) b!938102))

(assert (= (and d!282106 (not c!152587)) b!938098))

(assert (= (and b!938098 res!426025) b!938097))

(assert (= (and b!938097 c!152586) b!938099))

(assert (= (and b!938097 (not c!152586)) b!938096))

(assert (= (and b!938096 c!152588) b!938101))

(assert (= (and b!938096 (not c!152588)) b!938104))

(assert (= (and b!938101 (not res!426027)) b!938094))

(assert (= (and b!938104 c!152585) b!938103))

(assert (= (and b!938104 (not c!152585)) b!938095))

(assert (= (and b!938103 (not res!426026)) b!938100))

(assert (= (or b!938100 b!938095) bm!58251))

(assert (= (or b!938102 b!938103) bm!58252))

(declare-fun m!1156633 () Bool)

(assert (=> b!938094 m!1156633))

(declare-fun m!1156635 () Bool)

(assert (=> bm!58251 m!1156635))

(declare-fun m!1156637 () Bool)

(assert (=> b!938101 m!1156637))

(assert (=> bm!58252 m!1156567))

(assert (=> b!937997 d!282106))

(declare-fun b!938133 () Bool)

(declare-fun res!426047 () Bool)

(declare-fun e!608935 () Bool)

(assert (=> b!938133 (=> res!426047 e!608935)))

(assert (=> b!938133 (= res!426047 (not (is-ElementMatch!2572 r!15766)))))

(declare-fun e!608932 () Bool)

(assert (=> b!938133 (= e!608932 e!608935)))

(declare-fun b!938134 () Bool)

(declare-fun res!426051 () Bool)

(assert (=> b!938134 (=> res!426051 e!608935)))

(declare-fun e!608934 () Bool)

(assert (=> b!938134 (= res!426051 e!608934)))

(declare-fun res!426045 () Bool)

(assert (=> b!938134 (=> (not res!426045) (not e!608934))))

(declare-fun lt!341774 () Bool)

(assert (=> b!938134 (= res!426045 lt!341774)))

(declare-fun b!938135 () Bool)

(declare-fun e!608929 () Bool)

(declare-fun head!1704 (List!9802) C!5714)

(assert (=> b!938135 (= e!608929 (not (= (head!1704 s!10566) (c!152575 r!15766))))))

(declare-fun b!938136 () Bool)

(declare-fun e!608930 () Bool)

(declare-fun derivativeStep!551 (Regex!2572 C!5714) Regex!2572)

(declare-fun tail!1266 (List!9802) List!9802)

(assert (=> b!938136 (= e!608930 (matchR!1110 (derivativeStep!551 r!15766 (head!1704 s!10566)) (tail!1266 s!10566)))))

(declare-fun bm!58255 () Bool)

(declare-fun call!58260 () Bool)

(assert (=> bm!58255 (= call!58260 (isEmpty!6025 s!10566))))

(declare-fun b!938138 () Bool)

(declare-fun res!426048 () Bool)

(assert (=> b!938138 (=> (not res!426048) (not e!608934))))

(assert (=> b!938138 (= res!426048 (not call!58260))))

(declare-fun b!938139 () Bool)

(declare-fun res!426044 () Bool)

(assert (=> b!938139 (=> res!426044 e!608929)))

(assert (=> b!938139 (= res!426044 (not (isEmpty!6025 (tail!1266 s!10566))))))

(declare-fun b!938140 () Bool)

(declare-fun e!608931 () Bool)

(assert (=> b!938140 (= e!608931 e!608932)))

(declare-fun c!152596 () Bool)

(assert (=> b!938140 (= c!152596 (is-EmptyLang!2572 r!15766))))

(declare-fun b!938141 () Bool)

(declare-fun nullable!742 (Regex!2572) Bool)

(assert (=> b!938141 (= e!608930 (nullable!742 r!15766))))

(declare-fun b!938142 () Bool)

(assert (=> b!938142 (= e!608934 (= (head!1704 s!10566) (c!152575 r!15766)))))

(declare-fun b!938143 () Bool)

(assert (=> b!938143 (= e!608931 (= lt!341774 call!58260))))

(declare-fun b!938144 () Bool)

(declare-fun res!426050 () Bool)

(assert (=> b!938144 (=> (not res!426050) (not e!608934))))

(assert (=> b!938144 (= res!426050 (isEmpty!6025 (tail!1266 s!10566)))))

(declare-fun b!938137 () Bool)

(assert (=> b!938137 (= e!608932 (not lt!341774))))

(declare-fun d!282108 () Bool)

(assert (=> d!282108 e!608931))

(declare-fun c!152597 () Bool)

(assert (=> d!282108 (= c!152597 (is-EmptyExpr!2572 r!15766))))

(assert (=> d!282108 (= lt!341774 e!608930)))

(declare-fun c!152595 () Bool)

(assert (=> d!282108 (= c!152595 (isEmpty!6025 s!10566))))

(assert (=> d!282108 (validRegex!1041 r!15766)))

(assert (=> d!282108 (= (matchR!1110 r!15766 s!10566) lt!341774)))

(declare-fun b!938145 () Bool)

(declare-fun e!608933 () Bool)

(assert (=> b!938145 (= e!608935 e!608933)))

(declare-fun res!426046 () Bool)

(assert (=> b!938145 (=> (not res!426046) (not e!608933))))

(assert (=> b!938145 (= res!426046 (not lt!341774))))

(declare-fun b!938146 () Bool)

(assert (=> b!938146 (= e!608933 e!608929)))

(declare-fun res!426049 () Bool)

(assert (=> b!938146 (=> res!426049 e!608929)))

(assert (=> b!938146 (= res!426049 call!58260)))

(assert (= (and d!282108 c!152595) b!938141))

(assert (= (and d!282108 (not c!152595)) b!938136))

(assert (= (and d!282108 c!152597) b!938143))

(assert (= (and d!282108 (not c!152597)) b!938140))

(assert (= (and b!938140 c!152596) b!938137))

(assert (= (and b!938140 (not c!152596)) b!938133))

(assert (= (and b!938133 (not res!426047)) b!938134))

(assert (= (and b!938134 res!426045) b!938138))

(assert (= (and b!938138 res!426048) b!938144))

(assert (= (and b!938144 res!426050) b!938142))

(assert (= (and b!938134 (not res!426051)) b!938145))

(assert (= (and b!938145 res!426046) b!938146))

(assert (= (and b!938146 (not res!426049)) b!938139))

(assert (= (and b!938139 (not res!426044)) b!938135))

(assert (= (or b!938143 b!938138 b!938146) bm!58255))

(declare-fun m!1156639 () Bool)

(assert (=> b!938139 m!1156639))

(assert (=> b!938139 m!1156639))

(declare-fun m!1156641 () Bool)

(assert (=> b!938139 m!1156641))

(assert (=> b!938144 m!1156639))

(assert (=> b!938144 m!1156639))

(assert (=> b!938144 m!1156641))

(declare-fun m!1156643 () Bool)

(assert (=> b!938142 m!1156643))

(assert (=> b!938135 m!1156643))

(declare-fun m!1156645 () Bool)

(assert (=> b!938141 m!1156645))

(assert (=> b!938136 m!1156643))

(assert (=> b!938136 m!1156643))

(declare-fun m!1156647 () Bool)

(assert (=> b!938136 m!1156647))

(assert (=> b!938136 m!1156639))

(assert (=> b!938136 m!1156647))

(assert (=> b!938136 m!1156639))

(declare-fun m!1156649 () Bool)

(assert (=> b!938136 m!1156649))

(assert (=> bm!58255 m!1156567))

(assert (=> d!282108 m!1156567))

(assert (=> d!282108 m!1156545))

(assert (=> b!937997 d!282108))

(declare-fun d!282112 () Bool)

(assert (=> d!282112 (= (matchR!1110 r!15766 s!10566) (matchRSpec!373 r!15766 s!10566))))

(declare-fun lt!341777 () Unit!14763)

(declare-fun choose!5789 (Regex!2572 List!9802) Unit!14763)

(assert (=> d!282112 (= lt!341777 (choose!5789 r!15766 s!10566))))

(assert (=> d!282112 (validRegex!1041 r!15766)))

(assert (=> d!282112 (= (mainMatchTheorem!373 r!15766 s!10566) lt!341777)))

(declare-fun bs!238263 () Bool)

(assert (= bs!238263 d!282112))

(assert (=> bs!238263 m!1156549))

(assert (=> bs!238263 m!1156547))

(declare-fun m!1156651 () Bool)

(assert (=> bs!238263 m!1156651))

(assert (=> bs!238263 m!1156545))

(assert (=> b!937997 d!282112))

(declare-fun bs!238264 () Bool)

(declare-fun b!938171 () Bool)

(assert (= bs!238264 (and b!938171 b!938095)))

(declare-fun lambda!31369 () Int)

(assert (=> bs!238264 (not (= lambda!31369 lambda!31368))))

(declare-fun bs!238265 () Bool)

(assert (= bs!238265 (and b!938171 b!937993)))

(assert (=> bs!238265 (not (= lambda!31369 lambda!31345))))

(declare-fun bs!238266 () Bool)

(assert (= bs!238266 (and b!938171 b!938100)))

(assert (=> bs!238266 (= (and (= (reg!2901 lt!341740) (reg!2901 r!15766)) (= lt!341740 r!15766)) (= lambda!31369 lambda!31367))))

(assert (=> bs!238265 (= (= (reg!2901 lt!341740) lt!341741) (= lambda!31369 lambda!31346))))

(declare-fun bs!238267 () Bool)

(assert (= bs!238267 (and b!938171 b!937994)))

(assert (=> bs!238267 (= (and (= (reg!2901 lt!341740) (reg!2901 r!15766)) (= lt!341740 lt!341734)) (= lambda!31369 lambda!31344))))

(assert (=> bs!238267 (not (= lambda!31369 lambda!31343))))

(assert (=> b!938171 true))

(assert (=> b!938171 true))

(declare-fun bs!238268 () Bool)

(declare-fun b!938166 () Bool)

(assert (= bs!238268 (and b!938166 b!938095)))

(declare-fun lambda!31370 () Int)

(assert (=> bs!238268 (= (and (= (regOne!5656 lt!341740) (regOne!5656 r!15766)) (= (regTwo!5656 lt!341740) (regTwo!5656 r!15766))) (= lambda!31370 lambda!31368))))

(declare-fun bs!238269 () Bool)

(assert (= bs!238269 (and b!938166 b!938171)))

(assert (=> bs!238269 (not (= lambda!31370 lambda!31369))))

(declare-fun bs!238270 () Bool)

(assert (= bs!238270 (and b!938166 b!937993)))

(assert (=> bs!238270 (not (= lambda!31370 lambda!31345))))

(declare-fun bs!238271 () Bool)

(assert (= bs!238271 (and b!938166 b!938100)))

(assert (=> bs!238271 (not (= lambda!31370 lambda!31367))))

(assert (=> bs!238270 (not (= lambda!31370 lambda!31346))))

(declare-fun bs!238272 () Bool)

(assert (= bs!238272 (and b!938166 b!937994)))

(assert (=> bs!238272 (not (= lambda!31370 lambda!31344))))

(assert (=> bs!238272 (not (= lambda!31370 lambda!31343))))

(assert (=> b!938166 true))

(assert (=> b!938166 true))

(declare-fun b!938165 () Bool)

(declare-fun e!608952 () Bool)

(assert (=> b!938165 (= e!608952 (matchRSpec!373 (regTwo!5657 lt!341740) s!10566))))

(declare-fun e!608954 () Bool)

(declare-fun call!58265 () Bool)

(assert (=> b!938166 (= e!608954 call!58265)))

(declare-fun bm!58260 () Bool)

(declare-fun c!152602 () Bool)

(assert (=> bm!58260 (= call!58265 (Exists!323 (ite c!152602 lambda!31369 lambda!31370)))))

(declare-fun b!938167 () Bool)

(declare-fun c!152605 () Bool)

(assert (=> b!938167 (= c!152605 (is-Union!2572 lt!341740))))

(declare-fun e!608953 () Bool)

(declare-fun e!608955 () Bool)

(assert (=> b!938167 (= e!608953 e!608955)))

(declare-fun d!282114 () Bool)

(declare-fun c!152604 () Bool)

(assert (=> d!282114 (= c!152604 (is-EmptyExpr!2572 lt!341740))))

(declare-fun e!608950 () Bool)

(assert (=> d!282114 (= (matchRSpec!373 lt!341740 s!10566) e!608950)))

(declare-fun b!938168 () Bool)

(declare-fun c!152603 () Bool)

(assert (=> b!938168 (= c!152603 (is-ElementMatch!2572 lt!341740))))

(declare-fun e!608956 () Bool)

(assert (=> b!938168 (= e!608956 e!608953)))

(declare-fun b!938169 () Bool)

(assert (=> b!938169 (= e!608950 e!608956)))

(declare-fun res!426062 () Bool)

(assert (=> b!938169 (= res!426062 (not (is-EmptyLang!2572 lt!341740)))))

(assert (=> b!938169 (=> (not res!426062) (not e!608956))))

(declare-fun b!938170 () Bool)

(assert (=> b!938170 (= e!608953 (= s!10566 (Cons!9786 (c!152575 lt!341740) Nil!9786)))))

(declare-fun e!608951 () Bool)

(assert (=> b!938171 (= e!608951 call!58265)))

(declare-fun b!938172 () Bool)

(assert (=> b!938172 (= e!608955 e!608952)))

(declare-fun res!426064 () Bool)

(assert (=> b!938172 (= res!426064 (matchRSpec!373 (regOne!5657 lt!341740) s!10566))))

(assert (=> b!938172 (=> res!426064 e!608952)))

(declare-fun b!938173 () Bool)

(declare-fun call!58266 () Bool)

(assert (=> b!938173 (= e!608950 call!58266)))

(declare-fun b!938174 () Bool)

(declare-fun res!426063 () Bool)

(assert (=> b!938174 (=> res!426063 e!608951)))

(assert (=> b!938174 (= res!426063 call!58266)))

(assert (=> b!938174 (= e!608954 e!608951)))

(declare-fun bm!58261 () Bool)

(assert (=> bm!58261 (= call!58266 (isEmpty!6025 s!10566))))

(declare-fun b!938175 () Bool)

(assert (=> b!938175 (= e!608955 e!608954)))

(assert (=> b!938175 (= c!152602 (is-Star!2572 lt!341740))))

(assert (= (and d!282114 c!152604) b!938173))

(assert (= (and d!282114 (not c!152604)) b!938169))

(assert (= (and b!938169 res!426062) b!938168))

(assert (= (and b!938168 c!152603) b!938170))

(assert (= (and b!938168 (not c!152603)) b!938167))

(assert (= (and b!938167 c!152605) b!938172))

(assert (= (and b!938167 (not c!152605)) b!938175))

(assert (= (and b!938172 (not res!426064)) b!938165))

(assert (= (and b!938175 c!152602) b!938174))

(assert (= (and b!938175 (not c!152602)) b!938166))

(assert (= (and b!938174 (not res!426063)) b!938171))

(assert (= (or b!938171 b!938166) bm!58260))

(assert (= (or b!938173 b!938174) bm!58261))

(declare-fun m!1156653 () Bool)

(assert (=> b!938165 m!1156653))

(declare-fun m!1156655 () Bool)

(assert (=> bm!58260 m!1156655))

(declare-fun m!1156657 () Bool)

(assert (=> b!938172 m!1156657))

(assert (=> bm!58261 m!1156567))

(assert (=> b!937993 d!282114))

(declare-fun d!282116 () Bool)

(declare-fun choose!5790 (Int) Bool)

(assert (=> d!282116 (= (Exists!323 lambda!31346) (choose!5790 lambda!31346))))

(declare-fun bs!238273 () Bool)

(assert (= bs!238273 d!282116))

(declare-fun m!1156659 () Bool)

(assert (=> bs!238273 m!1156659))

(assert (=> b!937993 d!282116))

(declare-fun d!282118 () Bool)

(assert (=> d!282118 (= (isEmpty!6025 s!10566) (is-Nil!9786 s!10566))))

(assert (=> b!937993 d!282118))

(declare-fun bs!238274 () Bool)

(declare-fun d!282120 () Bool)

(assert (= bs!238274 (and d!282120 b!938095)))

(declare-fun lambda!31375 () Int)

(assert (=> bs!238274 (not (= lambda!31375 lambda!31368))))

(declare-fun bs!238275 () Bool)

(assert (= bs!238275 (and d!282120 b!938171)))

(assert (=> bs!238275 (not (= lambda!31375 lambda!31369))))

(declare-fun bs!238276 () Bool)

(assert (= bs!238276 (and d!282120 b!937993)))

(assert (=> bs!238276 (= (= (Star!2572 lt!341741) lt!341740) (= lambda!31375 lambda!31345))))

(declare-fun bs!238277 () Bool)

(assert (= bs!238277 (and d!282120 b!938166)))

(assert (=> bs!238277 (not (= lambda!31375 lambda!31370))))

(declare-fun bs!238278 () Bool)

(assert (= bs!238278 (and d!282120 b!938100)))

(assert (=> bs!238278 (not (= lambda!31375 lambda!31367))))

(assert (=> bs!238276 (not (= lambda!31375 lambda!31346))))

(declare-fun bs!238279 () Bool)

(assert (= bs!238279 (and d!282120 b!937994)))

(assert (=> bs!238279 (not (= lambda!31375 lambda!31344))))

(assert (=> bs!238279 (= (and (= lt!341741 (reg!2901 r!15766)) (= (Star!2572 lt!341741) lt!341734)) (= lambda!31375 lambda!31343))))

(assert (=> d!282120 true))

(assert (=> d!282120 true))

(declare-fun lambda!31376 () Int)

(assert (=> bs!238274 (not (= lambda!31376 lambda!31368))))

(assert (=> bs!238275 (= (and (= lt!341741 (reg!2901 lt!341740)) (= (Star!2572 lt!341741) lt!341740)) (= lambda!31376 lambda!31369))))

(assert (=> bs!238276 (not (= lambda!31376 lambda!31345))))

(declare-fun bs!238280 () Bool)

(assert (= bs!238280 d!282120))

(assert (=> bs!238280 (not (= lambda!31376 lambda!31375))))

(assert (=> bs!238277 (not (= lambda!31376 lambda!31370))))

(assert (=> bs!238278 (= (and (= lt!341741 (reg!2901 r!15766)) (= (Star!2572 lt!341741) r!15766)) (= lambda!31376 lambda!31367))))

(assert (=> bs!238276 (= (= (Star!2572 lt!341741) lt!341740) (= lambda!31376 lambda!31346))))

(assert (=> bs!238279 (= (and (= lt!341741 (reg!2901 r!15766)) (= (Star!2572 lt!341741) lt!341734)) (= lambda!31376 lambda!31344))))

(assert (=> bs!238279 (not (= lambda!31376 lambda!31343))))

(assert (=> d!282120 true))

(assert (=> d!282120 true))

(assert (=> d!282120 (= (Exists!323 lambda!31375) (Exists!323 lambda!31376))))

(declare-fun lt!341780 () Unit!14763)

(declare-fun choose!5791 (Regex!2572 List!9802) Unit!14763)

(assert (=> d!282120 (= lt!341780 (choose!5791 lt!341741 s!10566))))

(assert (=> d!282120 (validRegex!1041 lt!341741)))

(assert (=> d!282120 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!67 lt!341741 s!10566) lt!341780)))

(declare-fun m!1156667 () Bool)

(assert (=> bs!238280 m!1156667))

(declare-fun m!1156669 () Bool)

(assert (=> bs!238280 m!1156669))

(declare-fun m!1156671 () Bool)

(assert (=> bs!238280 m!1156671))

(assert (=> bs!238280 m!1156587))

(assert (=> b!937993 d!282120))

(declare-fun bs!238281 () Bool)

(declare-fun d!282124 () Bool)

(assert (= bs!238281 (and d!282124 b!938095)))

(declare-fun lambda!31379 () Int)

(assert (=> bs!238281 (not (= lambda!31379 lambda!31368))))

(declare-fun bs!238282 () Bool)

(assert (= bs!238282 (and d!282124 b!938171)))

(assert (=> bs!238282 (not (= lambda!31379 lambda!31369))))

(declare-fun bs!238283 () Bool)

(assert (= bs!238283 (and d!282124 b!937993)))

(assert (=> bs!238283 (= lambda!31379 lambda!31345)))

(declare-fun bs!238284 () Bool)

(assert (= bs!238284 (and d!282124 d!282120)))

(assert (=> bs!238284 (= (= lt!341740 (Star!2572 lt!341741)) (= lambda!31379 lambda!31375))))

(declare-fun bs!238285 () Bool)

(assert (= bs!238285 (and d!282124 b!938100)))

(assert (=> bs!238285 (not (= lambda!31379 lambda!31367))))

(assert (=> bs!238283 (not (= lambda!31379 lambda!31346))))

(assert (=> bs!238284 (not (= lambda!31379 lambda!31376))))

(declare-fun bs!238286 () Bool)

(assert (= bs!238286 (and d!282124 b!938166)))

(assert (=> bs!238286 (not (= lambda!31379 lambda!31370))))

(declare-fun bs!238287 () Bool)

(assert (= bs!238287 (and d!282124 b!937994)))

(assert (=> bs!238287 (not (= lambda!31379 lambda!31344))))

(assert (=> bs!238287 (= (and (= lt!341741 (reg!2901 r!15766)) (= lt!341740 lt!341734)) (= lambda!31379 lambda!31343))))

(assert (=> d!282124 true))

(assert (=> d!282124 true))

(assert (=> d!282124 true))

(assert (=> d!282124 (= (isDefined!1805 (findConcatSeparation!269 lt!341741 lt!341740 Nil!9786 s!10566 s!10566)) (Exists!323 lambda!31379))))

(declare-fun lt!341783 () Unit!14763)

(declare-fun choose!5792 (Regex!2572 Regex!2572 List!9802) Unit!14763)

(assert (=> d!282124 (= lt!341783 (choose!5792 lt!341741 lt!341740 s!10566))))

(assert (=> d!282124 (validRegex!1041 lt!341741)))

(assert (=> d!282124 (= (lemmaFindConcatSeparationEquivalentToExists!269 lt!341741 lt!341740 s!10566) lt!341783)))

(declare-fun bs!238288 () Bool)

(assert (= bs!238288 d!282124))

(assert (=> bs!238288 m!1156555))

(assert (=> bs!238288 m!1156555))

(assert (=> bs!238288 m!1156557))

(assert (=> bs!238288 m!1156587))

(declare-fun m!1156673 () Bool)

(assert (=> bs!238288 m!1156673))

(declare-fun m!1156675 () Bool)

(assert (=> bs!238288 m!1156675))

(assert (=> b!937993 d!282124))

(declare-fun d!282126 () Bool)

(assert (=> d!282126 (= (matchR!1110 lt!341740 s!10566) (matchRSpec!373 lt!341740 s!10566))))

(declare-fun lt!341784 () Unit!14763)

(assert (=> d!282126 (= lt!341784 (choose!5789 lt!341740 s!10566))))

(assert (=> d!282126 (validRegex!1041 lt!341740)))

(assert (=> d!282126 (= (mainMatchTheorem!373 lt!341740 s!10566) lt!341784)))

(declare-fun bs!238289 () Bool)

(assert (= bs!238289 d!282126))

(assert (=> bs!238289 m!1156577))

(assert (=> bs!238289 m!1156561))

(declare-fun m!1156677 () Bool)

(assert (=> bs!238289 m!1156677))

(declare-fun m!1156679 () Bool)

(assert (=> bs!238289 m!1156679))

(assert (=> b!937993 d!282126))

(declare-fun d!282128 () Bool)

(assert (=> d!282128 (= (Exists!323 lambda!31345) (choose!5790 lambda!31345))))

(declare-fun bs!238290 () Bool)

(assert (= bs!238290 d!282128))

(declare-fun m!1156681 () Bool)

(assert (=> bs!238290 m!1156681))

(assert (=> b!937993 d!282128))

(declare-fun b!938249 () Bool)

(declare-fun e!608998 () Bool)

(declare-fun lt!341792 () Option!2163)

(declare-fun ++!2594 (List!9802 List!9802) List!9802)

(declare-fun get!3240 (Option!2163) tuple2!11042)

(assert (=> b!938249 (= e!608998 (= (++!2594 (_1!6347 (get!3240 lt!341792)) (_2!6347 (get!3240 lt!341792))) s!10566))))

(declare-fun b!938250 () Bool)

(declare-fun lt!341791 () Unit!14763)

(declare-fun lt!341793 () Unit!14763)

(assert (=> b!938250 (= lt!341791 lt!341793)))

(assert (=> b!938250 (= (++!2594 (++!2594 Nil!9786 (Cons!9786 (h!15187 s!10566) Nil!9786)) (t!100848 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!207 (List!9802 C!5714 List!9802 List!9802) Unit!14763)

(assert (=> b!938250 (= lt!341793 (lemmaMoveElementToOtherListKeepsConcatEq!207 Nil!9786 (h!15187 s!10566) (t!100848 s!10566) s!10566))))

(declare-fun e!609001 () Option!2163)

(assert (=> b!938250 (= e!609001 (findConcatSeparation!269 lt!341741 lt!341740 (++!2594 Nil!9786 (Cons!9786 (h!15187 s!10566) Nil!9786)) (t!100848 s!10566) s!10566))))

(declare-fun b!938251 () Bool)

(declare-fun e!608999 () Bool)

(assert (=> b!938251 (= e!608999 (matchR!1110 lt!341740 s!10566))))

(declare-fun b!938252 () Bool)

(declare-fun e!609002 () Option!2163)

(assert (=> b!938252 (= e!609002 (Some!2162 (tuple2!11043 Nil!9786 s!10566)))))

(declare-fun b!938253 () Bool)

(assert (=> b!938253 (= e!609002 e!609001)))

(declare-fun c!152621 () Bool)

(assert (=> b!938253 (= c!152621 (is-Nil!9786 s!10566))))

(declare-fun b!938254 () Bool)

(declare-fun e!609000 () Bool)

(assert (=> b!938254 (= e!609000 (not (isDefined!1805 lt!341792)))))

(declare-fun b!938255 () Bool)

(assert (=> b!938255 (= e!609001 None!2162)))

(declare-fun d!282130 () Bool)

(assert (=> d!282130 e!609000))

(declare-fun res!426110 () Bool)

(assert (=> d!282130 (=> res!426110 e!609000)))

(assert (=> d!282130 (= res!426110 e!608998)))

(declare-fun res!426113 () Bool)

(assert (=> d!282130 (=> (not res!426113) (not e!608998))))

(assert (=> d!282130 (= res!426113 (isDefined!1805 lt!341792))))

(assert (=> d!282130 (= lt!341792 e!609002)))

(declare-fun c!152620 () Bool)

(assert (=> d!282130 (= c!152620 e!608999)))

(declare-fun res!426112 () Bool)

(assert (=> d!282130 (=> (not res!426112) (not e!608999))))

(assert (=> d!282130 (= res!426112 (matchR!1110 lt!341741 Nil!9786))))

(assert (=> d!282130 (validRegex!1041 lt!341741)))

(assert (=> d!282130 (= (findConcatSeparation!269 lt!341741 lt!341740 Nil!9786 s!10566 s!10566) lt!341792)))

(declare-fun b!938256 () Bool)

(declare-fun res!426111 () Bool)

(assert (=> b!938256 (=> (not res!426111) (not e!608998))))

(assert (=> b!938256 (= res!426111 (matchR!1110 lt!341740 (_2!6347 (get!3240 lt!341792))))))

(declare-fun b!938257 () Bool)

(declare-fun res!426114 () Bool)

(assert (=> b!938257 (=> (not res!426114) (not e!608998))))

(assert (=> b!938257 (= res!426114 (matchR!1110 lt!341741 (_1!6347 (get!3240 lt!341792))))))

(assert (= (and d!282130 res!426112) b!938251))

(assert (= (and d!282130 c!152620) b!938252))

(assert (= (and d!282130 (not c!152620)) b!938253))

(assert (= (and b!938253 c!152621) b!938255))

(assert (= (and b!938253 (not c!152621)) b!938250))

(assert (= (and d!282130 res!426113) b!938257))

(assert (= (and b!938257 res!426114) b!938256))

(assert (= (and b!938256 res!426111) b!938249))

(assert (= (and d!282130 (not res!426110)) b!938254))

(declare-fun m!1156683 () Bool)

(assert (=> b!938250 m!1156683))

(assert (=> b!938250 m!1156683))

(declare-fun m!1156685 () Bool)

(assert (=> b!938250 m!1156685))

(declare-fun m!1156687 () Bool)

(assert (=> b!938250 m!1156687))

(assert (=> b!938250 m!1156683))

(declare-fun m!1156689 () Bool)

(assert (=> b!938250 m!1156689))

(assert (=> b!938251 m!1156577))

(declare-fun m!1156691 () Bool)

(assert (=> b!938257 m!1156691))

(declare-fun m!1156693 () Bool)

(assert (=> b!938257 m!1156693))

(declare-fun m!1156695 () Bool)

(assert (=> d!282130 m!1156695))

(declare-fun m!1156697 () Bool)

(assert (=> d!282130 m!1156697))

(assert (=> d!282130 m!1156587))

(assert (=> b!938254 m!1156695))

(assert (=> b!938249 m!1156691))

(declare-fun m!1156699 () Bool)

(assert (=> b!938249 m!1156699))

(assert (=> b!938256 m!1156691))

(declare-fun m!1156701 () Bool)

(assert (=> b!938256 m!1156701))

(assert (=> b!937993 d!282130))

(declare-fun d!282132 () Bool)

(declare-fun isEmpty!6027 (Option!2163) Bool)

(assert (=> d!282132 (= (isDefined!1805 (findConcatSeparation!269 lt!341741 lt!341740 Nil!9786 s!10566 s!10566)) (not (isEmpty!6027 (findConcatSeparation!269 lt!341741 lt!341740 Nil!9786 s!10566 s!10566))))))

(declare-fun bs!238291 () Bool)

(assert (= bs!238291 d!282132))

(assert (=> bs!238291 m!1156555))

(declare-fun m!1156703 () Bool)

(assert (=> bs!238291 m!1156703))

(assert (=> b!937993 d!282132))

(declare-fun b!938287 () Bool)

(declare-fun e!609029 () Bool)

(declare-fun call!58286 () Bool)

(assert (=> b!938287 (= e!609029 call!58286)))

(declare-fun bm!58279 () Bool)

(declare-fun c!152630 () Bool)

(declare-fun c!152631 () Bool)

(declare-fun call!58285 () Bool)

(assert (=> bm!58279 (= call!58285 (validRegex!1041 (ite c!152631 (reg!2901 lt!341741) (ite c!152630 (regTwo!5657 lt!341741) (regTwo!5656 lt!341741)))))))

(declare-fun b!938288 () Bool)

(declare-fun e!609028 () Bool)

(assert (=> b!938288 (= e!609028 call!58286)))

(declare-fun bm!58281 () Bool)

(declare-fun call!58284 () Bool)

(assert (=> bm!58281 (= call!58284 (validRegex!1041 (ite c!152630 (regOne!5657 lt!341741) (regOne!5656 lt!341741))))))

(declare-fun b!938289 () Bool)

(declare-fun res!426129 () Bool)

(declare-fun e!609026 () Bool)

(assert (=> b!938289 (=> res!426129 e!609026)))

(assert (=> b!938289 (= res!426129 (not (is-Concat!4405 lt!341741)))))

(declare-fun e!609027 () Bool)

(assert (=> b!938289 (= e!609027 e!609026)))

(declare-fun b!938290 () Bool)

(declare-fun e!609024 () Bool)

(assert (=> b!938290 (= e!609024 e!609027)))

(assert (=> b!938290 (= c!152630 (is-Union!2572 lt!341741))))

(declare-fun b!938291 () Bool)

(declare-fun res!426132 () Bool)

(assert (=> b!938291 (=> (not res!426132) (not e!609029))))

(assert (=> b!938291 (= res!426132 call!58284)))

(assert (=> b!938291 (= e!609027 e!609029)))

(declare-fun b!938292 () Bool)

(declare-fun e!609030 () Bool)

(assert (=> b!938292 (= e!609024 e!609030)))

(declare-fun res!426130 () Bool)

(assert (=> b!938292 (= res!426130 (not (nullable!742 (reg!2901 lt!341741))))))

(assert (=> b!938292 (=> (not res!426130) (not e!609030))))

(declare-fun b!938293 () Bool)

(assert (=> b!938293 (= e!609030 call!58285)))

(declare-fun bm!58280 () Bool)

(assert (=> bm!58280 (= call!58286 call!58285)))

(declare-fun d!282134 () Bool)

(declare-fun res!426128 () Bool)

(declare-fun e!609025 () Bool)

(assert (=> d!282134 (=> res!426128 e!609025)))

(assert (=> d!282134 (= res!426128 (is-ElementMatch!2572 lt!341741))))

(assert (=> d!282134 (= (validRegex!1041 lt!341741) e!609025)))

(declare-fun b!938294 () Bool)

(assert (=> b!938294 (= e!609025 e!609024)))

(assert (=> b!938294 (= c!152631 (is-Star!2572 lt!341741))))

(declare-fun b!938295 () Bool)

(assert (=> b!938295 (= e!609026 e!609028)))

(declare-fun res!426131 () Bool)

(assert (=> b!938295 (=> (not res!426131) (not e!609028))))

(assert (=> b!938295 (= res!426131 call!58284)))

(assert (= (and d!282134 (not res!426128)) b!938294))

(assert (= (and b!938294 c!152631) b!938292))

(assert (= (and b!938294 (not c!152631)) b!938290))

(assert (= (and b!938292 res!426130) b!938293))

(assert (= (and b!938290 c!152630) b!938291))

(assert (= (and b!938290 (not c!152630)) b!938289))

(assert (= (and b!938291 res!426132) b!938287))

(assert (= (and b!938289 (not res!426129)) b!938295))

(assert (= (and b!938295 res!426131) b!938288))

(assert (= (or b!938287 b!938288) bm!58280))

(assert (= (or b!938291 b!938295) bm!58281))

(assert (= (or b!938293 bm!58280) bm!58279))

(declare-fun m!1156705 () Bool)

(assert (=> bm!58279 m!1156705))

(declare-fun m!1156707 () Bool)

(assert (=> bm!58281 m!1156707))

(declare-fun m!1156709 () Bool)

(assert (=> b!938292 m!1156709))

(assert (=> b!937998 d!282134))

(declare-fun b!938296 () Bool)

(declare-fun e!609031 () Bool)

(declare-fun lt!341795 () Option!2163)

(assert (=> b!938296 (= e!609031 (= (++!2594 (_1!6347 (get!3240 lt!341795)) (_2!6347 (get!3240 lt!341795))) s!10566))))

(declare-fun b!938297 () Bool)

(declare-fun lt!341794 () Unit!14763)

(declare-fun lt!341796 () Unit!14763)

(assert (=> b!938297 (= lt!341794 lt!341796)))

(assert (=> b!938297 (= (++!2594 (++!2594 Nil!9786 (Cons!9786 (h!15187 s!10566) Nil!9786)) (t!100848 s!10566)) s!10566)))

(assert (=> b!938297 (= lt!341796 (lemmaMoveElementToOtherListKeepsConcatEq!207 Nil!9786 (h!15187 s!10566) (t!100848 s!10566) s!10566))))

(declare-fun e!609034 () Option!2163)

(assert (=> b!938297 (= e!609034 (findConcatSeparation!269 (reg!2901 r!15766) lt!341734 (++!2594 Nil!9786 (Cons!9786 (h!15187 s!10566) Nil!9786)) (t!100848 s!10566) s!10566))))

(declare-fun b!938298 () Bool)

(declare-fun e!609032 () Bool)

(assert (=> b!938298 (= e!609032 (matchR!1110 lt!341734 s!10566))))

(declare-fun b!938299 () Bool)

(declare-fun e!609035 () Option!2163)

(assert (=> b!938299 (= e!609035 (Some!2162 (tuple2!11043 Nil!9786 s!10566)))))

(declare-fun b!938300 () Bool)

(assert (=> b!938300 (= e!609035 e!609034)))

(declare-fun c!152633 () Bool)

(assert (=> b!938300 (= c!152633 (is-Nil!9786 s!10566))))

(declare-fun b!938301 () Bool)

(declare-fun e!609033 () Bool)

(assert (=> b!938301 (= e!609033 (not (isDefined!1805 lt!341795)))))

(declare-fun b!938302 () Bool)

(assert (=> b!938302 (= e!609034 None!2162)))

(declare-fun d!282136 () Bool)

(assert (=> d!282136 e!609033))

(declare-fun res!426133 () Bool)

(assert (=> d!282136 (=> res!426133 e!609033)))

(assert (=> d!282136 (= res!426133 e!609031)))

(declare-fun res!426136 () Bool)

(assert (=> d!282136 (=> (not res!426136) (not e!609031))))

(assert (=> d!282136 (= res!426136 (isDefined!1805 lt!341795))))

(assert (=> d!282136 (= lt!341795 e!609035)))

(declare-fun c!152632 () Bool)

(assert (=> d!282136 (= c!152632 e!609032)))

(declare-fun res!426135 () Bool)

(assert (=> d!282136 (=> (not res!426135) (not e!609032))))

(assert (=> d!282136 (= res!426135 (matchR!1110 (reg!2901 r!15766) Nil!9786))))

(assert (=> d!282136 (validRegex!1041 (reg!2901 r!15766))))

(assert (=> d!282136 (= (findConcatSeparation!269 (reg!2901 r!15766) lt!341734 Nil!9786 s!10566 s!10566) lt!341795)))

(declare-fun b!938303 () Bool)

(declare-fun res!426134 () Bool)

(assert (=> b!938303 (=> (not res!426134) (not e!609031))))

(assert (=> b!938303 (= res!426134 (matchR!1110 lt!341734 (_2!6347 (get!3240 lt!341795))))))

(declare-fun b!938304 () Bool)

(declare-fun res!426137 () Bool)

(assert (=> b!938304 (=> (not res!426137) (not e!609031))))

(assert (=> b!938304 (= res!426137 (matchR!1110 (reg!2901 r!15766) (_1!6347 (get!3240 lt!341795))))))

(assert (= (and d!282136 res!426135) b!938298))

(assert (= (and d!282136 c!152632) b!938299))

(assert (= (and d!282136 (not c!152632)) b!938300))

(assert (= (and b!938300 c!152633) b!938302))

(assert (= (and b!938300 (not c!152633)) b!938297))

(assert (= (and d!282136 res!426136) b!938304))

(assert (= (and b!938304 res!426137) b!938303))

(assert (= (and b!938303 res!426134) b!938296))

(assert (= (and d!282136 (not res!426133)) b!938301))

(assert (=> b!938297 m!1156683))

(assert (=> b!938297 m!1156683))

(assert (=> b!938297 m!1156685))

(assert (=> b!938297 m!1156687))

(assert (=> b!938297 m!1156683))

(declare-fun m!1156711 () Bool)

(assert (=> b!938297 m!1156711))

(declare-fun m!1156713 () Bool)

(assert (=> b!938298 m!1156713))

(declare-fun m!1156715 () Bool)

(assert (=> b!938304 m!1156715))

(declare-fun m!1156717 () Bool)

(assert (=> b!938304 m!1156717))

(declare-fun m!1156719 () Bool)

(assert (=> d!282136 m!1156719))

(declare-fun m!1156721 () Bool)

(assert (=> d!282136 m!1156721))

(declare-fun m!1156723 () Bool)

(assert (=> d!282136 m!1156723))

(assert (=> b!938301 m!1156719))

(assert (=> b!938296 m!1156715))

(declare-fun m!1156725 () Bool)

(assert (=> b!938296 m!1156725))

(assert (=> b!938303 m!1156715))

(declare-fun m!1156727 () Bool)

(assert (=> b!938303 m!1156727))

(assert (=> b!937994 d!282136))

(declare-fun bs!238297 () Bool)

(declare-fun d!282138 () Bool)

(assert (= bs!238297 (and d!282138 b!938095)))

(declare-fun lambda!31386 () Int)

(assert (=> bs!238297 (not (= lambda!31386 lambda!31368))))

(declare-fun bs!238298 () Bool)

(assert (= bs!238298 (and d!282138 b!938171)))

(assert (=> bs!238298 (not (= lambda!31386 lambda!31369))))

(declare-fun bs!238299 () Bool)

(assert (= bs!238299 (and d!282138 b!937993)))

(assert (=> bs!238299 (= (and (= (reg!2901 r!15766) lt!341741) (= (Star!2572 (reg!2901 r!15766)) lt!341740)) (= lambda!31386 lambda!31345))))

(declare-fun bs!238300 () Bool)

(assert (= bs!238300 (and d!282138 d!282120)))

(assert (=> bs!238300 (= (and (= (reg!2901 r!15766) lt!341741) (= (Star!2572 (reg!2901 r!15766)) (Star!2572 lt!341741))) (= lambda!31386 lambda!31375))))

(declare-fun bs!238301 () Bool)

(assert (= bs!238301 (and d!282138 b!938100)))

(assert (=> bs!238301 (not (= lambda!31386 lambda!31367))))

(declare-fun bs!238302 () Bool)

(assert (= bs!238302 (and d!282138 d!282124)))

(assert (=> bs!238302 (= (and (= (reg!2901 r!15766) lt!341741) (= (Star!2572 (reg!2901 r!15766)) lt!341740)) (= lambda!31386 lambda!31379))))

(assert (=> bs!238299 (not (= lambda!31386 lambda!31346))))

(assert (=> bs!238300 (not (= lambda!31386 lambda!31376))))

(declare-fun bs!238303 () Bool)

(assert (= bs!238303 (and d!282138 b!938166)))

(assert (=> bs!238303 (not (= lambda!31386 lambda!31370))))

(declare-fun bs!238304 () Bool)

(assert (= bs!238304 (and d!282138 b!937994)))

(assert (=> bs!238304 (not (= lambda!31386 lambda!31344))))

(assert (=> bs!238304 (= (= (Star!2572 (reg!2901 r!15766)) lt!341734) (= lambda!31386 lambda!31343))))

(assert (=> d!282138 true))

(assert (=> d!282138 true))

(declare-fun bs!238305 () Bool)

(assert (= bs!238305 d!282138))

(declare-fun lambda!31387 () Int)

(assert (=> bs!238305 (not (= lambda!31387 lambda!31386))))

(assert (=> bs!238297 (not (= lambda!31387 lambda!31368))))

(assert (=> bs!238298 (= (and (= (reg!2901 r!15766) (reg!2901 lt!341740)) (= (Star!2572 (reg!2901 r!15766)) lt!341740)) (= lambda!31387 lambda!31369))))

(assert (=> bs!238299 (not (= lambda!31387 lambda!31345))))

(assert (=> bs!238300 (not (= lambda!31387 lambda!31375))))

(assert (=> bs!238301 (= (= (Star!2572 (reg!2901 r!15766)) r!15766) (= lambda!31387 lambda!31367))))

(assert (=> bs!238302 (not (= lambda!31387 lambda!31379))))

(assert (=> bs!238299 (= (and (= (reg!2901 r!15766) lt!341741) (= (Star!2572 (reg!2901 r!15766)) lt!341740)) (= lambda!31387 lambda!31346))))

(assert (=> bs!238300 (= (and (= (reg!2901 r!15766) lt!341741) (= (Star!2572 (reg!2901 r!15766)) (Star!2572 lt!341741))) (= lambda!31387 lambda!31376))))

(assert (=> bs!238303 (not (= lambda!31387 lambda!31370))))

(assert (=> bs!238304 (= (= (Star!2572 (reg!2901 r!15766)) lt!341734) (= lambda!31387 lambda!31344))))

(assert (=> bs!238304 (not (= lambda!31387 lambda!31343))))

(assert (=> d!282138 true))

(assert (=> d!282138 true))

(assert (=> d!282138 (= (Exists!323 lambda!31386) (Exists!323 lambda!31387))))

(declare-fun lt!341797 () Unit!14763)

(assert (=> d!282138 (= lt!341797 (choose!5791 (reg!2901 r!15766) s!10566))))

(assert (=> d!282138 (validRegex!1041 (reg!2901 r!15766))))

(assert (=> d!282138 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!67 (reg!2901 r!15766) s!10566) lt!341797)))

(declare-fun m!1156735 () Bool)

(assert (=> bs!238305 m!1156735))

(declare-fun m!1156737 () Bool)

(assert (=> bs!238305 m!1156737))

(declare-fun m!1156739 () Bool)

(assert (=> bs!238305 m!1156739))

(assert (=> bs!238305 m!1156723))

(assert (=> b!937994 d!282138))

(declare-fun bs!238306 () Bool)

(declare-fun d!282142 () Bool)

(assert (= bs!238306 (and d!282142 d!282138)))

(declare-fun lambda!31388 () Int)

(assert (=> bs!238306 (= (= lt!341734 (Star!2572 (reg!2901 r!15766))) (= lambda!31388 lambda!31386))))

(declare-fun bs!238307 () Bool)

(assert (= bs!238307 (and d!282142 b!938095)))

(assert (=> bs!238307 (not (= lambda!31388 lambda!31368))))

(declare-fun bs!238308 () Bool)

(assert (= bs!238308 (and d!282142 b!938171)))

(assert (=> bs!238308 (not (= lambda!31388 lambda!31369))))

(declare-fun bs!238309 () Bool)

(assert (= bs!238309 (and d!282142 b!937993)))

(assert (=> bs!238309 (= (and (= (reg!2901 r!15766) lt!341741) (= lt!341734 lt!341740)) (= lambda!31388 lambda!31345))))

(assert (=> bs!238306 (not (= lambda!31388 lambda!31387))))

(declare-fun bs!238310 () Bool)

(assert (= bs!238310 (and d!282142 d!282120)))

(assert (=> bs!238310 (= (and (= (reg!2901 r!15766) lt!341741) (= lt!341734 (Star!2572 lt!341741))) (= lambda!31388 lambda!31375))))

(declare-fun bs!238311 () Bool)

(assert (= bs!238311 (and d!282142 b!938100)))

(assert (=> bs!238311 (not (= lambda!31388 lambda!31367))))

(declare-fun bs!238312 () Bool)

(assert (= bs!238312 (and d!282142 d!282124)))

(assert (=> bs!238312 (= (and (= (reg!2901 r!15766) lt!341741) (= lt!341734 lt!341740)) (= lambda!31388 lambda!31379))))

(assert (=> bs!238309 (not (= lambda!31388 lambda!31346))))

(assert (=> bs!238310 (not (= lambda!31388 lambda!31376))))

(declare-fun bs!238313 () Bool)

(assert (= bs!238313 (and d!282142 b!938166)))

(assert (=> bs!238313 (not (= lambda!31388 lambda!31370))))

(declare-fun bs!238314 () Bool)

(assert (= bs!238314 (and d!282142 b!937994)))

(assert (=> bs!238314 (not (= lambda!31388 lambda!31344))))

(assert (=> bs!238314 (= lambda!31388 lambda!31343)))

(assert (=> d!282142 true))

(assert (=> d!282142 true))

(assert (=> d!282142 true))

(assert (=> d!282142 (= (isDefined!1805 (findConcatSeparation!269 (reg!2901 r!15766) lt!341734 Nil!9786 s!10566 s!10566)) (Exists!323 lambda!31388))))

(declare-fun lt!341798 () Unit!14763)

(assert (=> d!282142 (= lt!341798 (choose!5792 (reg!2901 r!15766) lt!341734 s!10566))))

(assert (=> d!282142 (validRegex!1041 (reg!2901 r!15766))))

(assert (=> d!282142 (= (lemmaFindConcatSeparationEquivalentToExists!269 (reg!2901 r!15766) lt!341734 s!10566) lt!341798)))

(declare-fun bs!238315 () Bool)

(assert (= bs!238315 d!282142))

(assert (=> bs!238315 m!1156579))

(assert (=> bs!238315 m!1156579))

(assert (=> bs!238315 m!1156581))

(assert (=> bs!238315 m!1156723))

(declare-fun m!1156741 () Bool)

(assert (=> bs!238315 m!1156741))

(declare-fun m!1156743 () Bool)

(assert (=> bs!238315 m!1156743))

(assert (=> b!937994 d!282142))

(declare-fun b!938339 () Bool)

(declare-fun e!609053 () Regex!2572)

(declare-fun e!609057 () Regex!2572)

(assert (=> b!938339 (= e!609053 e!609057)))

(declare-fun c!152653 () Bool)

(assert (=> b!938339 (= c!152653 (is-Union!2572 (reg!2901 r!15766)))))

(declare-fun b!938340 () Bool)

(declare-fun e!609054 () Regex!2572)

(declare-fun call!58301 () Regex!2572)

(assert (=> b!938340 (= e!609054 call!58301)))

(declare-fun b!938341 () Bool)

(declare-fun call!58299 () Regex!2572)

(declare-fun call!58300 () Regex!2572)

(assert (=> b!938341 (= e!609057 (Union!2572 call!58299 call!58300))))

(declare-fun bm!58292 () Bool)

(assert (=> bm!58292 (= call!58299 call!58301)))

(declare-fun b!938342 () Bool)

(declare-fun e!609058 () Regex!2572)

(declare-fun call!58298 () Regex!2572)

(assert (=> b!938342 (= e!609058 call!58298)))

(declare-fun b!938344 () Bool)

(declare-fun e!609059 () Regex!2572)

(assert (=> b!938344 (= e!609059 (Star!2572 call!58300))))

(declare-fun bm!58293 () Bool)

(declare-fun c!152652 () Bool)

(declare-fun c!152654 () Bool)

(assert (=> bm!58293 (= call!58298 (removeUselessConcat!241 (ite c!152652 (regOne!5656 (reg!2901 r!15766)) (ite c!152654 (regTwo!5656 (reg!2901 r!15766)) (ite c!152653 (regTwo!5657 (reg!2901 r!15766)) (reg!2901 (reg!2901 r!15766)))))))))

(declare-fun bm!58294 () Bool)

(declare-fun c!152648 () Bool)

(assert (=> bm!58294 (= call!58301 (removeUselessConcat!241 (ite c!152648 (regTwo!5656 (reg!2901 r!15766)) (ite c!152654 (regOne!5656 (reg!2901 r!15766)) (regOne!5657 (reg!2901 r!15766))))))))

(declare-fun b!938345 () Bool)

(declare-fun c!152650 () Bool)

(assert (=> b!938345 (= c!152650 (is-Star!2572 (reg!2901 r!15766)))))

(assert (=> b!938345 (= e!609057 e!609059)))

(declare-fun b!938346 () Bool)

(assert (=> b!938346 (= e!609059 (reg!2901 r!15766))))

(declare-fun b!938347 () Bool)

(assert (=> b!938347 (= e!609054 e!609058)))

(assert (=> b!938347 (= c!152652 (and (is-Concat!4405 (reg!2901 r!15766)) (is-EmptyExpr!2572 (regTwo!5656 (reg!2901 r!15766)))))))

(declare-fun b!938348 () Bool)

(assert (=> b!938348 (= c!152654 (is-Concat!4405 (reg!2901 r!15766)))))

(assert (=> b!938348 (= e!609058 e!609053)))

(declare-fun bm!58295 () Bool)

(declare-fun call!58297 () Regex!2572)

(assert (=> bm!58295 (= call!58300 call!58297)))

(declare-fun b!938343 () Bool)

(declare-fun e!609056 () Bool)

(declare-fun lt!341803 () Regex!2572)

(assert (=> b!938343 (= e!609056 (= (nullable!742 lt!341803) (nullable!742 (reg!2901 r!15766))))))

(declare-fun d!282144 () Bool)

(assert (=> d!282144 e!609056))

(declare-fun res!426140 () Bool)

(assert (=> d!282144 (=> (not res!426140) (not e!609056))))

(assert (=> d!282144 (= res!426140 (validRegex!1041 lt!341803))))

(assert (=> d!282144 (= lt!341803 e!609054)))

(assert (=> d!282144 (= c!152648 (and (is-Concat!4405 (reg!2901 r!15766)) (is-EmptyExpr!2572 (regOne!5656 (reg!2901 r!15766)))))))

(assert (=> d!282144 (validRegex!1041 (reg!2901 r!15766))))

(assert (=> d!282144 (= (removeUselessConcat!241 (reg!2901 r!15766)) lt!341803)))

(declare-fun bm!58296 () Bool)

(assert (=> bm!58296 (= call!58297 call!58298)))

(declare-fun b!938349 () Bool)

(assert (=> b!938349 (= e!609053 (Concat!4405 call!58299 call!58297))))

(assert (= (and d!282144 c!152648) b!938340))

(assert (= (and d!282144 (not c!152648)) b!938347))

(assert (= (and b!938347 c!152652) b!938342))

(assert (= (and b!938347 (not c!152652)) b!938348))

(assert (= (and b!938348 c!152654) b!938349))

(assert (= (and b!938348 (not c!152654)) b!938339))

(assert (= (and b!938339 c!152653) b!938341))

(assert (= (and b!938339 (not c!152653)) b!938345))

(assert (= (and b!938345 c!152650) b!938344))

(assert (= (and b!938345 (not c!152650)) b!938346))

(assert (= (or b!938341 b!938344) bm!58295))

(assert (= (or b!938349 bm!58295) bm!58296))

(assert (= (or b!938349 b!938341) bm!58292))

(assert (= (or b!938342 bm!58296) bm!58293))

(assert (= (or b!938340 bm!58292) bm!58294))

(assert (= (and d!282144 res!426140) b!938343))

(declare-fun m!1156745 () Bool)

(assert (=> bm!58293 m!1156745))

(declare-fun m!1156747 () Bool)

(assert (=> bm!58294 m!1156747))

(declare-fun m!1156749 () Bool)

(assert (=> b!938343 m!1156749))

(declare-fun m!1156751 () Bool)

(assert (=> b!938343 m!1156751))

(declare-fun m!1156753 () Bool)

(assert (=> d!282144 m!1156753))

(assert (=> d!282144 m!1156723))

(assert (=> b!937994 d!282144))

(declare-fun d!282146 () Bool)

(assert (=> d!282146 (= (isDefined!1805 (findConcatSeparation!269 (reg!2901 r!15766) lt!341734 Nil!9786 s!10566 s!10566)) (not (isEmpty!6027 (findConcatSeparation!269 (reg!2901 r!15766) lt!341734 Nil!9786 s!10566 s!10566))))))

(declare-fun bs!238316 () Bool)

(assert (= bs!238316 d!282146))

(assert (=> bs!238316 m!1156579))

(declare-fun m!1156755 () Bool)

(assert (=> bs!238316 m!1156755))

(assert (=> b!937994 d!282146))

(declare-fun d!282148 () Bool)

(assert (=> d!282148 (= (Exists!323 lambda!31344) (choose!5790 lambda!31344))))

(declare-fun bs!238317 () Bool)

(assert (= bs!238317 d!282148))

(declare-fun m!1156757 () Bool)

(assert (=> bs!238317 m!1156757))

(assert (=> b!937994 d!282148))

(declare-fun b!938366 () Bool)

(declare-fun res!426160 () Bool)

(declare-fun e!609074 () Bool)

(assert (=> b!938366 (=> res!426160 e!609074)))

(assert (=> b!938366 (= res!426160 (not (is-ElementMatch!2572 lt!341740)))))

(declare-fun e!609071 () Bool)

(assert (=> b!938366 (= e!609071 e!609074)))

(declare-fun b!938367 () Bool)

(declare-fun res!426164 () Bool)

(assert (=> b!938367 (=> res!426164 e!609074)))

(declare-fun e!609073 () Bool)

(assert (=> b!938367 (= res!426164 e!609073)))

(declare-fun res!426158 () Bool)

(assert (=> b!938367 (=> (not res!426158) (not e!609073))))

(declare-fun lt!341804 () Bool)

(assert (=> b!938367 (= res!426158 lt!341804)))

(declare-fun b!938368 () Bool)

(declare-fun e!609068 () Bool)

(assert (=> b!938368 (= e!609068 (not (= (head!1704 s!10566) (c!152575 lt!341740))))))

(declare-fun b!938369 () Bool)

(declare-fun e!609069 () Bool)

(assert (=> b!938369 (= e!609069 (matchR!1110 (derivativeStep!551 lt!341740 (head!1704 s!10566)) (tail!1266 s!10566)))))

(declare-fun bm!58297 () Bool)

(declare-fun call!58302 () Bool)

(assert (=> bm!58297 (= call!58302 (isEmpty!6025 s!10566))))

(declare-fun b!938371 () Bool)

(declare-fun res!426161 () Bool)

(assert (=> b!938371 (=> (not res!426161) (not e!609073))))

(assert (=> b!938371 (= res!426161 (not call!58302))))

(declare-fun b!938372 () Bool)

(declare-fun res!426157 () Bool)

(assert (=> b!938372 (=> res!426157 e!609068)))

(assert (=> b!938372 (= res!426157 (not (isEmpty!6025 (tail!1266 s!10566))))))

(declare-fun b!938373 () Bool)

(declare-fun e!609070 () Bool)

(assert (=> b!938373 (= e!609070 e!609071)))

(declare-fun c!152656 () Bool)

(assert (=> b!938373 (= c!152656 (is-EmptyLang!2572 lt!341740))))

(declare-fun b!938374 () Bool)

(assert (=> b!938374 (= e!609069 (nullable!742 lt!341740))))

(declare-fun b!938375 () Bool)

(assert (=> b!938375 (= e!609073 (= (head!1704 s!10566) (c!152575 lt!341740)))))

(declare-fun b!938376 () Bool)

(assert (=> b!938376 (= e!609070 (= lt!341804 call!58302))))

(declare-fun b!938377 () Bool)

(declare-fun res!426163 () Bool)

(assert (=> b!938377 (=> (not res!426163) (not e!609073))))

(assert (=> b!938377 (= res!426163 (isEmpty!6025 (tail!1266 s!10566)))))

(declare-fun b!938370 () Bool)

(assert (=> b!938370 (= e!609071 (not lt!341804))))

(declare-fun d!282150 () Bool)

(assert (=> d!282150 e!609070))

(declare-fun c!152657 () Bool)

(assert (=> d!282150 (= c!152657 (is-EmptyExpr!2572 lt!341740))))

(assert (=> d!282150 (= lt!341804 e!609069)))

(declare-fun c!152655 () Bool)

(assert (=> d!282150 (= c!152655 (isEmpty!6025 s!10566))))

(assert (=> d!282150 (validRegex!1041 lt!341740)))

(assert (=> d!282150 (= (matchR!1110 lt!341740 s!10566) lt!341804)))

(declare-fun b!938378 () Bool)

(declare-fun e!609072 () Bool)

(assert (=> b!938378 (= e!609074 e!609072)))

(declare-fun res!426159 () Bool)

(assert (=> b!938378 (=> (not res!426159) (not e!609072))))

(assert (=> b!938378 (= res!426159 (not lt!341804))))

(declare-fun b!938379 () Bool)

(assert (=> b!938379 (= e!609072 e!609068)))

(declare-fun res!426162 () Bool)

(assert (=> b!938379 (=> res!426162 e!609068)))

(assert (=> b!938379 (= res!426162 call!58302)))

(assert (= (and d!282150 c!152655) b!938374))

(assert (= (and d!282150 (not c!152655)) b!938369))

(assert (= (and d!282150 c!152657) b!938376))

(assert (= (and d!282150 (not c!152657)) b!938373))

(assert (= (and b!938373 c!152656) b!938370))

(assert (= (and b!938373 (not c!152656)) b!938366))

(assert (= (and b!938366 (not res!426160)) b!938367))

(assert (= (and b!938367 res!426158) b!938371))

(assert (= (and b!938371 res!426161) b!938377))

(assert (= (and b!938377 res!426163) b!938375))

(assert (= (and b!938367 (not res!426164)) b!938378))

(assert (= (and b!938378 res!426159) b!938379))

(assert (= (and b!938379 (not res!426162)) b!938372))

(assert (= (and b!938372 (not res!426157)) b!938368))

(assert (= (or b!938376 b!938371 b!938379) bm!58297))

(assert (=> b!938372 m!1156639))

(assert (=> b!938372 m!1156639))

(assert (=> b!938372 m!1156641))

(assert (=> b!938377 m!1156639))

(assert (=> b!938377 m!1156639))

(assert (=> b!938377 m!1156641))

(assert (=> b!938375 m!1156643))

(assert (=> b!938368 m!1156643))

(declare-fun m!1156759 () Bool)

(assert (=> b!938374 m!1156759))

(assert (=> b!938369 m!1156643))

(assert (=> b!938369 m!1156643))

(declare-fun m!1156761 () Bool)

(assert (=> b!938369 m!1156761))

(assert (=> b!938369 m!1156639))

(assert (=> b!938369 m!1156761))

(assert (=> b!938369 m!1156639))

(declare-fun m!1156763 () Bool)

(assert (=> b!938369 m!1156763))

(assert (=> bm!58297 m!1156567))

(assert (=> d!282150 m!1156567))

(assert (=> d!282150 m!1156679))

(assert (=> b!937994 d!282150))

(declare-fun d!282152 () Bool)

(assert (=> d!282152 (= (Exists!323 lambda!31343) (choose!5790 lambda!31343))))

(declare-fun bs!238318 () Bool)

(assert (= bs!238318 d!282152))

(declare-fun m!1156765 () Bool)

(assert (=> bs!238318 m!1156765))

(assert (=> b!937994 d!282152))

(declare-fun b!938380 () Bool)

(declare-fun e!609080 () Bool)

(declare-fun call!58307 () Bool)

(assert (=> b!938380 (= e!609080 call!58307)))

(declare-fun c!152658 () Bool)

(declare-fun bm!58298 () Bool)

(declare-fun call!58306 () Bool)

(declare-fun c!152659 () Bool)

(assert (=> bm!58298 (= call!58306 (validRegex!1041 (ite c!152659 (reg!2901 r!15766) (ite c!152658 (regTwo!5657 r!15766) (regTwo!5656 r!15766)))))))

(declare-fun b!938381 () Bool)

(declare-fun e!609079 () Bool)

(assert (=> b!938381 (= e!609079 call!58307)))

(declare-fun bm!58300 () Bool)

(declare-fun call!58303 () Bool)

(assert (=> bm!58300 (= call!58303 (validRegex!1041 (ite c!152658 (regOne!5657 r!15766) (regOne!5656 r!15766))))))

(declare-fun b!938382 () Bool)

(declare-fun res!426166 () Bool)

(declare-fun e!609077 () Bool)

(assert (=> b!938382 (=> res!426166 e!609077)))

(assert (=> b!938382 (= res!426166 (not (is-Concat!4405 r!15766)))))

(declare-fun e!609078 () Bool)

(assert (=> b!938382 (= e!609078 e!609077)))

(declare-fun b!938383 () Bool)

(declare-fun e!609075 () Bool)

(assert (=> b!938383 (= e!609075 e!609078)))

(assert (=> b!938383 (= c!152658 (is-Union!2572 r!15766))))

(declare-fun b!938384 () Bool)

(declare-fun res!426169 () Bool)

(assert (=> b!938384 (=> (not res!426169) (not e!609080))))

(assert (=> b!938384 (= res!426169 call!58303)))

(assert (=> b!938384 (= e!609078 e!609080)))

(declare-fun b!938385 () Bool)

(declare-fun e!609081 () Bool)

(assert (=> b!938385 (= e!609075 e!609081)))

(declare-fun res!426167 () Bool)

(assert (=> b!938385 (= res!426167 (not (nullable!742 (reg!2901 r!15766))))))

(assert (=> b!938385 (=> (not res!426167) (not e!609081))))

(declare-fun b!938386 () Bool)

(assert (=> b!938386 (= e!609081 call!58306)))

(declare-fun bm!58299 () Bool)

(assert (=> bm!58299 (= call!58307 call!58306)))

(declare-fun d!282154 () Bool)

(declare-fun res!426165 () Bool)

(declare-fun e!609076 () Bool)

(assert (=> d!282154 (=> res!426165 e!609076)))

(assert (=> d!282154 (= res!426165 (is-ElementMatch!2572 r!15766))))

(assert (=> d!282154 (= (validRegex!1041 r!15766) e!609076)))

(declare-fun b!938387 () Bool)

(assert (=> b!938387 (= e!609076 e!609075)))

(assert (=> b!938387 (= c!152659 (is-Star!2572 r!15766))))

(declare-fun b!938388 () Bool)

(assert (=> b!938388 (= e!609077 e!609079)))

(declare-fun res!426168 () Bool)

(assert (=> b!938388 (=> (not res!426168) (not e!609079))))

(assert (=> b!938388 (= res!426168 call!58303)))

(assert (= (and d!282154 (not res!426165)) b!938387))

(assert (= (and b!938387 c!152659) b!938385))

(assert (= (and b!938387 (not c!152659)) b!938383))

(assert (= (and b!938385 res!426167) b!938386))

(assert (= (and b!938383 c!152658) b!938384))

(assert (= (and b!938383 (not c!152658)) b!938382))

(assert (= (and b!938384 res!426169) b!938380))

(assert (= (and b!938382 (not res!426166)) b!938388))

(assert (= (and b!938388 res!426168) b!938381))

(assert (= (or b!938380 b!938381) bm!58299))

(assert (= (or b!938384 b!938388) bm!58300))

(assert (= (or b!938386 bm!58299) bm!58298))

(declare-fun m!1156767 () Bool)

(assert (=> bm!58298 m!1156767))

(declare-fun m!1156769 () Bool)

(assert (=> bm!58300 m!1156769))

(assert (=> b!938385 m!1156751))

(assert (=> start!83788 d!282154))

(declare-fun b!938402 () Bool)

(declare-fun e!609084 () Bool)

(declare-fun tp!290694 () Bool)

(declare-fun tp!290695 () Bool)

(assert (=> b!938402 (= e!609084 (and tp!290694 tp!290695))))

(declare-fun b!938401 () Bool)

(declare-fun tp!290692 () Bool)

(assert (=> b!938401 (= e!609084 tp!290692)))

(assert (=> b!937996 (= tp!290660 e!609084)))

(declare-fun b!938400 () Bool)

(declare-fun tp!290693 () Bool)

(declare-fun tp!290691 () Bool)

(assert (=> b!938400 (= e!609084 (and tp!290693 tp!290691))))

(declare-fun b!938399 () Bool)

(assert (=> b!938399 (= e!609084 tp_is_empty!4787)))

(assert (= (and b!937996 (is-ElementMatch!2572 (reg!2901 r!15766))) b!938399))

(assert (= (and b!937996 (is-Concat!4405 (reg!2901 r!15766))) b!938400))

(assert (= (and b!937996 (is-Star!2572 (reg!2901 r!15766))) b!938401))

(assert (= (and b!937996 (is-Union!2572 (reg!2901 r!15766))) b!938402))

(declare-fun b!938406 () Bool)

(declare-fun e!609085 () Bool)

(declare-fun tp!290699 () Bool)

(declare-fun tp!290700 () Bool)

(assert (=> b!938406 (= e!609085 (and tp!290699 tp!290700))))

(declare-fun b!938405 () Bool)

(declare-fun tp!290697 () Bool)

(assert (=> b!938405 (= e!609085 tp!290697)))

(assert (=> b!937992 (= tp!290659 e!609085)))

(declare-fun b!938404 () Bool)

(declare-fun tp!290698 () Bool)

(declare-fun tp!290696 () Bool)

(assert (=> b!938404 (= e!609085 (and tp!290698 tp!290696))))

(declare-fun b!938403 () Bool)

(assert (=> b!938403 (= e!609085 tp_is_empty!4787)))

(assert (= (and b!937992 (is-ElementMatch!2572 (regOne!5657 r!15766))) b!938403))

(assert (= (and b!937992 (is-Concat!4405 (regOne!5657 r!15766))) b!938404))

(assert (= (and b!937992 (is-Star!2572 (regOne!5657 r!15766))) b!938405))

(assert (= (and b!937992 (is-Union!2572 (regOne!5657 r!15766))) b!938406))

(declare-fun b!938410 () Bool)

(declare-fun e!609086 () Bool)

(declare-fun tp!290704 () Bool)

(declare-fun tp!290705 () Bool)

(assert (=> b!938410 (= e!609086 (and tp!290704 tp!290705))))

(declare-fun b!938409 () Bool)

(declare-fun tp!290702 () Bool)

(assert (=> b!938409 (= e!609086 tp!290702)))

(assert (=> b!937992 (= tp!290658 e!609086)))

(declare-fun b!938408 () Bool)

(declare-fun tp!290703 () Bool)

(declare-fun tp!290701 () Bool)

(assert (=> b!938408 (= e!609086 (and tp!290703 tp!290701))))

(declare-fun b!938407 () Bool)

(assert (=> b!938407 (= e!609086 tp_is_empty!4787)))

(assert (= (and b!937992 (is-ElementMatch!2572 (regTwo!5657 r!15766))) b!938407))

(assert (= (and b!937992 (is-Concat!4405 (regTwo!5657 r!15766))) b!938408))

(assert (= (and b!937992 (is-Star!2572 (regTwo!5657 r!15766))) b!938409))

(assert (= (and b!937992 (is-Union!2572 (regTwo!5657 r!15766))) b!938410))

(declare-fun b!938415 () Bool)

(declare-fun e!609089 () Bool)

(declare-fun tp!290708 () Bool)

(assert (=> b!938415 (= e!609089 (and tp_is_empty!4787 tp!290708))))

(assert (=> b!937995 (= tp!290657 e!609089)))

(assert (= (and b!937995 (is-Cons!9786 (t!100848 s!10566))) b!938415))

(declare-fun b!938419 () Bool)

(declare-fun e!609090 () Bool)

(declare-fun tp!290712 () Bool)

(declare-fun tp!290713 () Bool)

(assert (=> b!938419 (= e!609090 (and tp!290712 tp!290713))))

(declare-fun b!938418 () Bool)

(declare-fun tp!290710 () Bool)

(assert (=> b!938418 (= e!609090 tp!290710)))

(assert (=> b!937990 (= tp!290661 e!609090)))

(declare-fun b!938417 () Bool)

(declare-fun tp!290711 () Bool)

(declare-fun tp!290709 () Bool)

(assert (=> b!938417 (= e!609090 (and tp!290711 tp!290709))))

(declare-fun b!938416 () Bool)

(assert (=> b!938416 (= e!609090 tp_is_empty!4787)))

(assert (= (and b!937990 (is-ElementMatch!2572 (regOne!5656 r!15766))) b!938416))

(assert (= (and b!937990 (is-Concat!4405 (regOne!5656 r!15766))) b!938417))

(assert (= (and b!937990 (is-Star!2572 (regOne!5656 r!15766))) b!938418))

(assert (= (and b!937990 (is-Union!2572 (regOne!5656 r!15766))) b!938419))

(declare-fun b!938423 () Bool)

(declare-fun e!609091 () Bool)

(declare-fun tp!290717 () Bool)

(declare-fun tp!290718 () Bool)

(assert (=> b!938423 (= e!609091 (and tp!290717 tp!290718))))

(declare-fun b!938422 () Bool)

(declare-fun tp!290715 () Bool)

(assert (=> b!938422 (= e!609091 tp!290715)))

(assert (=> b!937990 (= tp!290662 e!609091)))

(declare-fun b!938421 () Bool)

(declare-fun tp!290716 () Bool)

(declare-fun tp!290714 () Bool)

(assert (=> b!938421 (= e!609091 (and tp!290716 tp!290714))))

(declare-fun b!938420 () Bool)

(assert (=> b!938420 (= e!609091 tp_is_empty!4787)))

(assert (= (and b!937990 (is-ElementMatch!2572 (regTwo!5656 r!15766))) b!938420))

(assert (= (and b!937990 (is-Concat!4405 (regTwo!5656 r!15766))) b!938421))

(assert (= (and b!937990 (is-Star!2572 (regTwo!5656 r!15766))) b!938422))

(assert (= (and b!937990 (is-Union!2572 (regTwo!5656 r!15766))) b!938423))

(push 1)

(assert (not b!938135))

(assert (not b!938419))

(assert (not b!938257))

(assert (not b!938372))

(assert (not b!938415))

(assert (not b!938374))

(assert (not d!282136))

(assert (not b!938292))

(assert (not d!282128))

(assert (not d!282112))

(assert (not d!282150))

(assert (not bm!58281))

(assert (not bm!58261))

(assert (not b!938136))

(assert (not d!282126))

(assert (not b!938297))

(assert (not d!282144))

(assert (not d!282130))

(assert (not d!282120))

(assert (not b!938423))

(assert (not bm!58251))

(assert (not b!938094))

(assert (not b!938418))

(assert (not d!282116))

(assert (not b!938410))

(assert (not b!938101))

(assert (not d!282124))

(assert (not d!282132))

(assert (not bm!58279))

(assert (not b!938139))

(assert (not b!938417))

(assert (not b!938343))

(assert (not bm!58294))

(assert (not b!938251))

(assert (not d!282148))

(assert (not b!938369))

(assert (not b!938144))

(assert tp_is_empty!4787)

(assert (not b!938141))

(assert (not b!938298))

(assert (not b!938402))

(assert (not b!938254))

(assert (not b!938377))

(assert (not d!282146))

(assert (not b!938172))

(assert (not bm!58255))

(assert (not bm!58298))

(assert (not b!938250))

(assert (not b!938304))

(assert (not b!938375))

(assert (not bm!58293))

(assert (not d!282152))

(assert (not bm!58252))

(assert (not d!282142))

(assert (not b!938406))

(assert (not b!938256))

(assert (not b!938165))

(assert (not b!938409))

(assert (not b!938296))

(assert (not b!938368))

(assert (not b!938422))

(assert (not b!938421))

(assert (not bm!58297))

(assert (not b!938142))

(assert (not b!938385))

(assert (not b!938408))

(assert (not bm!58260))

(assert (not b!938301))

(assert (not b!938400))

(assert (not b!938404))

(assert (not d!282138))

(assert (not b!938401))

(assert (not d!282108))

(assert (not b!938405))

(assert (not b!938249))

(assert (not b!938303))

(assert (not bm!58300))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

