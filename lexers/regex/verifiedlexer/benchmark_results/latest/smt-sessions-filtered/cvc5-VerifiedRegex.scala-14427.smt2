; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!751782 () Bool)

(assert start!751782)

(declare-fun b!7970945 () Bool)

(declare-fun e!4699826 () Bool)

(declare-datatypes ((C!43406 0))(
  ( (C!43407 (val!32251 Int)) )
))
(declare-datatypes ((List!74763 0))(
  ( (Nil!74639) (Cons!74639 (h!81087 C!43406) (t!390506 List!74763)) )
))
(declare-fun input!7927 () List!74763)

(declare-fun testedP!447 () List!74763)

(declare-fun size!43470 (List!74763) Int)

(assert (=> b!7970945 (= e!4699826 (< (- (size!43470 input!7927) (size!43470 testedP!447)) 0))))

(declare-fun b!7970946 () Bool)

(declare-fun e!4699829 () Bool)

(declare-fun tp_is_empty!53611 () Bool)

(declare-fun tp!2376271 () Bool)

(assert (=> b!7970946 (= e!4699829 (and tp_is_empty!53611 tp!2376271))))

(declare-fun b!7970947 () Bool)

(declare-fun e!4699828 () Bool)

(declare-fun tp!2376272 () Bool)

(assert (=> b!7970947 (= e!4699828 tp!2376272)))

(declare-fun b!7970948 () Bool)

(declare-fun e!4699827 () Bool)

(assert (=> b!7970948 (= e!4699827 tp_is_empty!53611)))

(declare-fun b!7970949 () Bool)

(declare-fun tp!2376269 () Bool)

(assert (=> b!7970949 (= e!4699827 tp!2376269)))

(declare-fun b!7970950 () Bool)

(declare-fun tp!2376263 () Bool)

(declare-fun tp!2376273 () Bool)

(assert (=> b!7970950 (= e!4699827 (and tp!2376263 tp!2376273))))

(declare-fun b!7970951 () Bool)

(declare-fun res!3158023 () Bool)

(assert (=> b!7970951 (=> (not res!3158023) (not e!4699826))))

(declare-datatypes ((Regex!21534 0))(
  ( (ElementMatch!21534 (c!1463849 C!43406)) (Concat!30533 (regOne!43580 Regex!21534) (regTwo!43580 Regex!21534)) (EmptyExpr!21534) (Star!21534 (reg!21863 Regex!21534)) (EmptyLang!21534) (Union!21534 (regOne!43581 Regex!21534) (regTwo!43581 Regex!21534)) )
))
(declare-fun baseR!116 () Regex!21534)

(declare-fun r!24602 () Regex!21534)

(declare-fun derivative!720 (Regex!21534 List!74763) Regex!21534)

(assert (=> b!7970951 (= res!3158023 (= (derivative!720 baseR!116 testedP!447) r!24602))))

(declare-fun b!7970952 () Bool)

(declare-fun tp!2376265 () Bool)

(declare-fun tp!2376268 () Bool)

(assert (=> b!7970952 (= e!4699828 (and tp!2376265 tp!2376268))))

(declare-fun b!7970953 () Bool)

(declare-fun res!3158021 () Bool)

(assert (=> b!7970953 (=> (not res!3158021) (not e!4699826))))

(declare-fun isPrefix!6634 (List!74763 List!74763) Bool)

(assert (=> b!7970953 (= res!3158021 (isPrefix!6634 testedP!447 input!7927))))

(declare-fun b!7970954 () Bool)

(assert (=> b!7970954 (= e!4699828 tp_is_empty!53611)))

(declare-fun b!7970955 () Bool)

(declare-fun e!4699830 () Bool)

(declare-fun tp!2376267 () Bool)

(assert (=> b!7970955 (= e!4699830 (and tp_is_empty!53611 tp!2376267))))

(declare-fun res!3158022 () Bool)

(assert (=> start!751782 (=> (not res!3158022) (not e!4699826))))

(declare-fun validRegex!11838 (Regex!21534) Bool)

(assert (=> start!751782 (= res!3158022 (validRegex!11838 baseR!116))))

(assert (=> start!751782 e!4699826))

(assert (=> start!751782 e!4699827))

(assert (=> start!751782 e!4699830))

(assert (=> start!751782 e!4699829))

(assert (=> start!751782 e!4699828))

(declare-fun b!7970956 () Bool)

(declare-fun tp!2376264 () Bool)

(declare-fun tp!2376274 () Bool)

(assert (=> b!7970956 (= e!4699827 (and tp!2376264 tp!2376274))))

(declare-fun b!7970957 () Bool)

(declare-fun tp!2376270 () Bool)

(declare-fun tp!2376266 () Bool)

(assert (=> b!7970957 (= e!4699828 (and tp!2376270 tp!2376266))))

(assert (= (and start!751782 res!3158022) b!7970953))

(assert (= (and b!7970953 res!3158021) b!7970951))

(assert (= (and b!7970951 res!3158023) b!7970945))

(assert (= (and start!751782 (is-ElementMatch!21534 baseR!116)) b!7970948))

(assert (= (and start!751782 (is-Concat!30533 baseR!116)) b!7970950))

(assert (= (and start!751782 (is-Star!21534 baseR!116)) b!7970949))

(assert (= (and start!751782 (is-Union!21534 baseR!116)) b!7970956))

(assert (= (and start!751782 (is-Cons!74639 testedP!447)) b!7970955))

(assert (= (and start!751782 (is-Cons!74639 input!7927)) b!7970946))

(assert (= (and start!751782 (is-ElementMatch!21534 r!24602)) b!7970954))

(assert (= (and start!751782 (is-Concat!30533 r!24602)) b!7970957))

(assert (= (and start!751782 (is-Star!21534 r!24602)) b!7970947))

(assert (= (and start!751782 (is-Union!21534 r!24602)) b!7970952))

(declare-fun m!8349118 () Bool)

(assert (=> b!7970945 m!8349118))

(declare-fun m!8349120 () Bool)

(assert (=> b!7970945 m!8349120))

(declare-fun m!8349122 () Bool)

(assert (=> b!7970951 m!8349122))

(declare-fun m!8349124 () Bool)

(assert (=> b!7970953 m!8349124))

(declare-fun m!8349126 () Bool)

(assert (=> start!751782 m!8349126))

(push 1)

(assert (not b!7970956))

(assert (not b!7970952))

(assert (not b!7970945))

(assert (not b!7970949))

(assert (not b!7970953))

(assert (not b!7970957))

(assert (not b!7970955))

(assert (not b!7970947))

(assert (not b!7970946))

(assert (not b!7970950))

(assert (not start!751782))

(assert tp_is_empty!53611)

(assert (not b!7970951))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2379880 () Bool)

(declare-fun lt!2708110 () Int)

(assert (=> d!2379880 (>= lt!2708110 0)))

(declare-fun e!4699848 () Int)

(assert (=> d!2379880 (= lt!2708110 e!4699848)))

(declare-fun c!1463853 () Bool)

(assert (=> d!2379880 (= c!1463853 (is-Nil!74639 input!7927))))

(assert (=> d!2379880 (= (size!43470 input!7927) lt!2708110)))

(declare-fun b!7971001 () Bool)

(assert (=> b!7971001 (= e!4699848 0)))

(declare-fun b!7971002 () Bool)

(assert (=> b!7971002 (= e!4699848 (+ 1 (size!43470 (t!390506 input!7927))))))

(assert (= (and d!2379880 c!1463853) b!7971001))

(assert (= (and d!2379880 (not c!1463853)) b!7971002))

(declare-fun m!8349138 () Bool)

(assert (=> b!7971002 m!8349138))

(assert (=> b!7970945 d!2379880))

(declare-fun d!2379884 () Bool)

(declare-fun lt!2708111 () Int)

(assert (=> d!2379884 (>= lt!2708111 0)))

(declare-fun e!4699849 () Int)

(assert (=> d!2379884 (= lt!2708111 e!4699849)))

(declare-fun c!1463854 () Bool)

(assert (=> d!2379884 (= c!1463854 (is-Nil!74639 testedP!447))))

(assert (=> d!2379884 (= (size!43470 testedP!447) lt!2708111)))

(declare-fun b!7971003 () Bool)

(assert (=> b!7971003 (= e!4699849 0)))

(declare-fun b!7971004 () Bool)

(assert (=> b!7971004 (= e!4699849 (+ 1 (size!43470 (t!390506 testedP!447))))))

(assert (= (and d!2379884 c!1463854) b!7971003))

(assert (= (and d!2379884 (not c!1463854)) b!7971004))

(declare-fun m!8349140 () Bool)

(assert (=> b!7971004 m!8349140))

(assert (=> b!7970945 d!2379884))

(declare-fun b!7971013 () Bool)

(declare-fun e!4699856 () Bool)

(declare-fun e!4699858 () Bool)

(assert (=> b!7971013 (= e!4699856 e!4699858)))

(declare-fun res!3158042 () Bool)

(assert (=> b!7971013 (=> (not res!3158042) (not e!4699858))))

(assert (=> b!7971013 (= res!3158042 (not (is-Nil!74639 input!7927)))))

(declare-fun b!7971015 () Bool)

(declare-fun tail!15811 (List!74763) List!74763)

(assert (=> b!7971015 (= e!4699858 (isPrefix!6634 (tail!15811 testedP!447) (tail!15811 input!7927)))))

(declare-fun d!2379886 () Bool)

(declare-fun e!4699857 () Bool)

(assert (=> d!2379886 e!4699857))

(declare-fun res!3158044 () Bool)

(assert (=> d!2379886 (=> res!3158044 e!4699857)))

(declare-fun lt!2708114 () Bool)

(assert (=> d!2379886 (= res!3158044 (not lt!2708114))))

(assert (=> d!2379886 (= lt!2708114 e!4699856)))

(declare-fun res!3158043 () Bool)

(assert (=> d!2379886 (=> res!3158043 e!4699856)))

(assert (=> d!2379886 (= res!3158043 (is-Nil!74639 testedP!447))))

(assert (=> d!2379886 (= (isPrefix!6634 testedP!447 input!7927) lt!2708114)))

(declare-fun b!7971014 () Bool)

(declare-fun res!3158041 () Bool)

(assert (=> b!7971014 (=> (not res!3158041) (not e!4699858))))

(declare-fun head!16284 (List!74763) C!43406)

(assert (=> b!7971014 (= res!3158041 (= (head!16284 testedP!447) (head!16284 input!7927)))))

(declare-fun b!7971016 () Bool)

(assert (=> b!7971016 (= e!4699857 (>= (size!43470 input!7927) (size!43470 testedP!447)))))

(assert (= (and d!2379886 (not res!3158043)) b!7971013))

(assert (= (and b!7971013 res!3158042) b!7971014))

(assert (= (and b!7971014 res!3158041) b!7971015))

(assert (= (and d!2379886 (not res!3158044)) b!7971016))

(declare-fun m!8349142 () Bool)

(assert (=> b!7971015 m!8349142))

(declare-fun m!8349144 () Bool)

(assert (=> b!7971015 m!8349144))

(assert (=> b!7971015 m!8349142))

(assert (=> b!7971015 m!8349144))

(declare-fun m!8349146 () Bool)

(assert (=> b!7971015 m!8349146))

(declare-fun m!8349148 () Bool)

(assert (=> b!7971014 m!8349148))

(declare-fun m!8349150 () Bool)

(assert (=> b!7971014 m!8349150))

(assert (=> b!7971016 m!8349118))

(assert (=> b!7971016 m!8349120))

(assert (=> b!7970953 d!2379886))

(declare-fun d!2379888 () Bool)

(declare-fun res!3158070 () Bool)

(declare-fun e!4699886 () Bool)

(assert (=> d!2379888 (=> res!3158070 e!4699886)))

(assert (=> d!2379888 (= res!3158070 (is-ElementMatch!21534 baseR!116))))

(assert (=> d!2379888 (= (validRegex!11838 baseR!116) e!4699886)))

(declare-fun b!7971047 () Bool)

(declare-fun e!4699883 () Bool)

(declare-fun e!4699885 () Bool)

(assert (=> b!7971047 (= e!4699883 e!4699885)))

(declare-fun res!3158071 () Bool)

(assert (=> b!7971047 (=> (not res!3158071) (not e!4699885))))

(declare-fun call!739615 () Bool)

(assert (=> b!7971047 (= res!3158071 call!739615)))

(declare-fun b!7971048 () Bool)

(declare-fun call!739613 () Bool)

(assert (=> b!7971048 (= e!4699885 call!739613)))

(declare-fun b!7971049 () Bool)

(declare-fun e!4699884 () Bool)

(assert (=> b!7971049 (= e!4699886 e!4699884)))

(declare-fun c!1463859 () Bool)

(assert (=> b!7971049 (= c!1463859 (is-Star!21534 baseR!116))))

(declare-fun b!7971050 () Bool)

(declare-fun res!3158068 () Bool)

(declare-fun e!4699887 () Bool)

(assert (=> b!7971050 (=> (not res!3158068) (not e!4699887))))

(assert (=> b!7971050 (= res!3158068 call!739615)))

(declare-fun e!4699888 () Bool)

(assert (=> b!7971050 (= e!4699888 e!4699887)))

(declare-fun bm!739608 () Bool)

(declare-fun call!739614 () Bool)

(assert (=> bm!739608 (= call!739613 call!739614)))

(declare-fun bm!739609 () Bool)

(declare-fun c!1463860 () Bool)

(assert (=> bm!739609 (= call!739614 (validRegex!11838 (ite c!1463859 (reg!21863 baseR!116) (ite c!1463860 (regTwo!43581 baseR!116) (regTwo!43580 baseR!116)))))))

(declare-fun b!7971051 () Bool)

(assert (=> b!7971051 (= e!4699884 e!4699888)))

(assert (=> b!7971051 (= c!1463860 (is-Union!21534 baseR!116))))

(declare-fun b!7971052 () Bool)

(declare-fun e!4699882 () Bool)

(assert (=> b!7971052 (= e!4699884 e!4699882)))

(declare-fun res!3158067 () Bool)

(declare-fun nullable!9631 (Regex!21534) Bool)

(assert (=> b!7971052 (= res!3158067 (not (nullable!9631 (reg!21863 baseR!116))))))

(assert (=> b!7971052 (=> (not res!3158067) (not e!4699882))))

(declare-fun bm!739610 () Bool)

(assert (=> bm!739610 (= call!739615 (validRegex!11838 (ite c!1463860 (regOne!43581 baseR!116) (regOne!43580 baseR!116))))))

(declare-fun b!7971053 () Bool)

(declare-fun res!3158069 () Bool)

(assert (=> b!7971053 (=> res!3158069 e!4699883)))

(assert (=> b!7971053 (= res!3158069 (not (is-Concat!30533 baseR!116)))))

(assert (=> b!7971053 (= e!4699888 e!4699883)))

(declare-fun b!7971054 () Bool)

(assert (=> b!7971054 (= e!4699882 call!739614)))

(declare-fun b!7971055 () Bool)

(assert (=> b!7971055 (= e!4699887 call!739613)))

(assert (= (and d!2379888 (not res!3158070)) b!7971049))

(assert (= (and b!7971049 c!1463859) b!7971052))

(assert (= (and b!7971049 (not c!1463859)) b!7971051))

(assert (= (and b!7971052 res!3158067) b!7971054))

(assert (= (and b!7971051 c!1463860) b!7971050))

(assert (= (and b!7971051 (not c!1463860)) b!7971053))

(assert (= (and b!7971050 res!3158068) b!7971055))

(assert (= (and b!7971053 (not res!3158069)) b!7971047))

(assert (= (and b!7971047 res!3158071) b!7971048))

(assert (= (or b!7971055 b!7971048) bm!739608))

(assert (= (or b!7971050 b!7971047) bm!739610))

(assert (= (or b!7971054 bm!739608) bm!739609))

(declare-fun m!8349162 () Bool)

(assert (=> bm!739609 m!8349162))

(declare-fun m!8349164 () Bool)

(assert (=> b!7971052 m!8349164))

(declare-fun m!8349166 () Bool)

(assert (=> bm!739610 m!8349166))

(assert (=> start!751782 d!2379888))

(declare-fun d!2379892 () Bool)

(declare-fun lt!2708122 () Regex!21534)

(assert (=> d!2379892 (validRegex!11838 lt!2708122)))

(declare-fun e!4699893 () Regex!21534)

(assert (=> d!2379892 (= lt!2708122 e!4699893)))

(declare-fun c!1463865 () Bool)

(assert (=> d!2379892 (= c!1463865 (is-Cons!74639 testedP!447))))

(assert (=> d!2379892 (validRegex!11838 baseR!116)))

(assert (=> d!2379892 (= (derivative!720 baseR!116 testedP!447) lt!2708122)))

(declare-fun b!7971064 () Bool)

(declare-fun derivativeStep!6558 (Regex!21534 C!43406) Regex!21534)

(assert (=> b!7971064 (= e!4699893 (derivative!720 (derivativeStep!6558 baseR!116 (h!81087 testedP!447)) (t!390506 testedP!447)))))

(declare-fun b!7971065 () Bool)

(assert (=> b!7971065 (= e!4699893 baseR!116)))

(assert (= (and d!2379892 c!1463865) b!7971064))

(assert (= (and d!2379892 (not c!1463865)) b!7971065))

(declare-fun m!8349168 () Bool)

(assert (=> d!2379892 m!8349168))

(assert (=> d!2379892 m!8349126))

(declare-fun m!8349170 () Bool)

(assert (=> b!7971064 m!8349170))

(assert (=> b!7971064 m!8349170))

(declare-fun m!8349172 () Bool)

(assert (=> b!7971064 m!8349172))

(assert (=> b!7970951 d!2379892))

(declare-fun b!7971078 () Bool)

(declare-fun e!4699896 () Bool)

(declare-fun tp!2376322 () Bool)

(assert (=> b!7971078 (= e!4699896 tp!2376322)))

(declare-fun b!7971079 () Bool)

(declare-fun tp!2376325 () Bool)

(declare-fun tp!2376323 () Bool)

(assert (=> b!7971079 (= e!4699896 (and tp!2376325 tp!2376323))))

(assert (=> b!7970956 (= tp!2376264 e!4699896)))

(declare-fun b!7971076 () Bool)

(assert (=> b!7971076 (= e!4699896 tp_is_empty!53611)))

(declare-fun b!7971077 () Bool)

(declare-fun tp!2376321 () Bool)

(declare-fun tp!2376324 () Bool)

(assert (=> b!7971077 (= e!4699896 (and tp!2376321 tp!2376324))))

(assert (= (and b!7970956 (is-ElementMatch!21534 (regOne!43581 baseR!116))) b!7971076))

(assert (= (and b!7970956 (is-Concat!30533 (regOne!43581 baseR!116))) b!7971077))

(assert (= (and b!7970956 (is-Star!21534 (regOne!43581 baseR!116))) b!7971078))

(assert (= (and b!7970956 (is-Union!21534 (regOne!43581 baseR!116))) b!7971079))

(declare-fun b!7971082 () Bool)

(declare-fun e!4699897 () Bool)

(declare-fun tp!2376327 () Bool)

(assert (=> b!7971082 (= e!4699897 tp!2376327)))

(declare-fun b!7971083 () Bool)

(declare-fun tp!2376330 () Bool)

(declare-fun tp!2376328 () Bool)

(assert (=> b!7971083 (= e!4699897 (and tp!2376330 tp!2376328))))

(assert (=> b!7970956 (= tp!2376274 e!4699897)))

(declare-fun b!7971080 () Bool)

(assert (=> b!7971080 (= e!4699897 tp_is_empty!53611)))

(declare-fun b!7971081 () Bool)

(declare-fun tp!2376326 () Bool)

(declare-fun tp!2376329 () Bool)

(assert (=> b!7971081 (= e!4699897 (and tp!2376326 tp!2376329))))

(assert (= (and b!7970956 (is-ElementMatch!21534 (regTwo!43581 baseR!116))) b!7971080))

(assert (= (and b!7970956 (is-Concat!30533 (regTwo!43581 baseR!116))) b!7971081))

(assert (= (and b!7970956 (is-Star!21534 (regTwo!43581 baseR!116))) b!7971082))

(assert (= (and b!7970956 (is-Union!21534 (regTwo!43581 baseR!116))) b!7971083))

(declare-fun b!7971088 () Bool)

(declare-fun e!4699899 () Bool)

(declare-fun tp!2376332 () Bool)

(assert (=> b!7971088 (= e!4699899 tp!2376332)))

(declare-fun b!7971089 () Bool)

(declare-fun tp!2376335 () Bool)

(declare-fun tp!2376333 () Bool)

(assert (=> b!7971089 (= e!4699899 (and tp!2376335 tp!2376333))))

(assert (=> b!7970950 (= tp!2376263 e!4699899)))

(declare-fun b!7971086 () Bool)

(assert (=> b!7971086 (= e!4699899 tp_is_empty!53611)))

(declare-fun b!7971087 () Bool)

(declare-fun tp!2376331 () Bool)

(declare-fun tp!2376334 () Bool)

(assert (=> b!7971087 (= e!4699899 (and tp!2376331 tp!2376334))))

(assert (= (and b!7970950 (is-ElementMatch!21534 (regOne!43580 baseR!116))) b!7971086))

(assert (= (and b!7970950 (is-Concat!30533 (regOne!43580 baseR!116))) b!7971087))

(assert (= (and b!7970950 (is-Star!21534 (regOne!43580 baseR!116))) b!7971088))

(assert (= (and b!7970950 (is-Union!21534 (regOne!43580 baseR!116))) b!7971089))

(declare-fun b!7971092 () Bool)

(declare-fun e!4699900 () Bool)

(declare-fun tp!2376337 () Bool)

(assert (=> b!7971092 (= e!4699900 tp!2376337)))

(declare-fun b!7971093 () Bool)

(declare-fun tp!2376340 () Bool)

(declare-fun tp!2376338 () Bool)

(assert (=> b!7971093 (= e!4699900 (and tp!2376340 tp!2376338))))

(assert (=> b!7970950 (= tp!2376273 e!4699900)))

(declare-fun b!7971090 () Bool)

(assert (=> b!7971090 (= e!4699900 tp_is_empty!53611)))

(declare-fun b!7971091 () Bool)

(declare-fun tp!2376336 () Bool)

(declare-fun tp!2376339 () Bool)

(assert (=> b!7971091 (= e!4699900 (and tp!2376336 tp!2376339))))

(assert (= (and b!7970950 (is-ElementMatch!21534 (regTwo!43580 baseR!116))) b!7971090))

(assert (= (and b!7970950 (is-Concat!30533 (regTwo!43580 baseR!116))) b!7971091))

(assert (= (and b!7970950 (is-Star!21534 (regTwo!43580 baseR!116))) b!7971092))

(assert (= (and b!7970950 (is-Union!21534 (regTwo!43580 baseR!116))) b!7971093))

(declare-fun b!7971098 () Bool)

(declare-fun e!4699903 () Bool)

(declare-fun tp!2376343 () Bool)

(assert (=> b!7971098 (= e!4699903 (and tp_is_empty!53611 tp!2376343))))

(assert (=> b!7970955 (= tp!2376267 e!4699903)))

(assert (= (and b!7970955 (is-Cons!74639 (t!390506 testedP!447))) b!7971098))

(declare-fun b!7971101 () Bool)

(declare-fun e!4699904 () Bool)

(declare-fun tp!2376345 () Bool)

(assert (=> b!7971101 (= e!4699904 tp!2376345)))

(declare-fun b!7971102 () Bool)

(declare-fun tp!2376348 () Bool)

(declare-fun tp!2376346 () Bool)

(assert (=> b!7971102 (= e!4699904 (and tp!2376348 tp!2376346))))

(assert (=> b!7970949 (= tp!2376269 e!4699904)))

(declare-fun b!7971099 () Bool)

(assert (=> b!7971099 (= e!4699904 tp_is_empty!53611)))

(declare-fun b!7971100 () Bool)

(declare-fun tp!2376344 () Bool)

(declare-fun tp!2376347 () Bool)

(assert (=> b!7971100 (= e!4699904 (and tp!2376344 tp!2376347))))

(assert (= (and b!7970949 (is-ElementMatch!21534 (reg!21863 baseR!116))) b!7971099))

(assert (= (and b!7970949 (is-Concat!30533 (reg!21863 baseR!116))) b!7971100))

(assert (= (and b!7970949 (is-Star!21534 (reg!21863 baseR!116))) b!7971101))

(assert (= (and b!7970949 (is-Union!21534 (reg!21863 baseR!116))) b!7971102))

(declare-fun b!7971105 () Bool)

(declare-fun e!4699905 () Bool)

(declare-fun tp!2376350 () Bool)

(assert (=> b!7971105 (= e!4699905 tp!2376350)))

(declare-fun b!7971106 () Bool)

(declare-fun tp!2376353 () Bool)

(declare-fun tp!2376351 () Bool)

(assert (=> b!7971106 (= e!4699905 (and tp!2376353 tp!2376351))))

(assert (=> b!7970947 (= tp!2376272 e!4699905)))

(declare-fun b!7971103 () Bool)

(assert (=> b!7971103 (= e!4699905 tp_is_empty!53611)))

(declare-fun b!7971104 () Bool)

(declare-fun tp!2376349 () Bool)

(declare-fun tp!2376352 () Bool)

(assert (=> b!7971104 (= e!4699905 (and tp!2376349 tp!2376352))))

(assert (= (and b!7970947 (is-ElementMatch!21534 (reg!21863 r!24602))) b!7971103))

(assert (= (and b!7970947 (is-Concat!30533 (reg!21863 r!24602))) b!7971104))

(assert (= (and b!7970947 (is-Star!21534 (reg!21863 r!24602))) b!7971105))

(assert (= (and b!7970947 (is-Union!21534 (reg!21863 r!24602))) b!7971106))

(declare-fun b!7971109 () Bool)

(declare-fun e!4699906 () Bool)

(declare-fun tp!2376355 () Bool)

(assert (=> b!7971109 (= e!4699906 tp!2376355)))

(declare-fun b!7971110 () Bool)

(declare-fun tp!2376358 () Bool)

(declare-fun tp!2376356 () Bool)

(assert (=> b!7971110 (= e!4699906 (and tp!2376358 tp!2376356))))

(assert (=> b!7970952 (= tp!2376265 e!4699906)))

(declare-fun b!7971107 () Bool)

(assert (=> b!7971107 (= e!4699906 tp_is_empty!53611)))

(declare-fun b!7971108 () Bool)

(declare-fun tp!2376354 () Bool)

(declare-fun tp!2376357 () Bool)

(assert (=> b!7971108 (= e!4699906 (and tp!2376354 tp!2376357))))

(assert (= (and b!7970952 (is-ElementMatch!21534 (regOne!43581 r!24602))) b!7971107))

(assert (= (and b!7970952 (is-Concat!30533 (regOne!43581 r!24602))) b!7971108))

(assert (= (and b!7970952 (is-Star!21534 (regOne!43581 r!24602))) b!7971109))

(assert (= (and b!7970952 (is-Union!21534 (regOne!43581 r!24602))) b!7971110))

(declare-fun b!7971113 () Bool)

(declare-fun e!4699907 () Bool)

(declare-fun tp!2376360 () Bool)

(assert (=> b!7971113 (= e!4699907 tp!2376360)))

(declare-fun b!7971114 () Bool)

(declare-fun tp!2376363 () Bool)

(declare-fun tp!2376361 () Bool)

(assert (=> b!7971114 (= e!4699907 (and tp!2376363 tp!2376361))))

(assert (=> b!7970952 (= tp!2376268 e!4699907)))

(declare-fun b!7971111 () Bool)

(assert (=> b!7971111 (= e!4699907 tp_is_empty!53611)))

(declare-fun b!7971112 () Bool)

(declare-fun tp!2376359 () Bool)

(declare-fun tp!2376362 () Bool)

(assert (=> b!7971112 (= e!4699907 (and tp!2376359 tp!2376362))))

(assert (= (and b!7970952 (is-ElementMatch!21534 (regTwo!43581 r!24602))) b!7971111))

(assert (= (and b!7970952 (is-Concat!30533 (regTwo!43581 r!24602))) b!7971112))

(assert (= (and b!7970952 (is-Star!21534 (regTwo!43581 r!24602))) b!7971113))

(assert (= (and b!7970952 (is-Union!21534 (regTwo!43581 r!24602))) b!7971114))

(declare-fun b!7971117 () Bool)

(declare-fun e!4699908 () Bool)

(declare-fun tp!2376365 () Bool)

(assert (=> b!7971117 (= e!4699908 tp!2376365)))

(declare-fun b!7971118 () Bool)

(declare-fun tp!2376368 () Bool)

(declare-fun tp!2376366 () Bool)

(assert (=> b!7971118 (= e!4699908 (and tp!2376368 tp!2376366))))

(assert (=> b!7970957 (= tp!2376270 e!4699908)))

(declare-fun b!7971115 () Bool)

(assert (=> b!7971115 (= e!4699908 tp_is_empty!53611)))

(declare-fun b!7971116 () Bool)

(declare-fun tp!2376364 () Bool)

(declare-fun tp!2376367 () Bool)

(assert (=> b!7971116 (= e!4699908 (and tp!2376364 tp!2376367))))

(assert (= (and b!7970957 (is-ElementMatch!21534 (regOne!43580 r!24602))) b!7971115))

(assert (= (and b!7970957 (is-Concat!30533 (regOne!43580 r!24602))) b!7971116))

(assert (= (and b!7970957 (is-Star!21534 (regOne!43580 r!24602))) b!7971117))

(assert (= (and b!7970957 (is-Union!21534 (regOne!43580 r!24602))) b!7971118))

(declare-fun b!7971121 () Bool)

(declare-fun e!4699909 () Bool)

(declare-fun tp!2376370 () Bool)

(assert (=> b!7971121 (= e!4699909 tp!2376370)))

(declare-fun b!7971122 () Bool)

(declare-fun tp!2376373 () Bool)

(declare-fun tp!2376371 () Bool)

(assert (=> b!7971122 (= e!4699909 (and tp!2376373 tp!2376371))))

(assert (=> b!7970957 (= tp!2376266 e!4699909)))

(declare-fun b!7971119 () Bool)

(assert (=> b!7971119 (= e!4699909 tp_is_empty!53611)))

(declare-fun b!7971120 () Bool)

(declare-fun tp!2376369 () Bool)

(declare-fun tp!2376372 () Bool)

(assert (=> b!7971120 (= e!4699909 (and tp!2376369 tp!2376372))))

(assert (= (and b!7970957 (is-ElementMatch!21534 (regTwo!43580 r!24602))) b!7971119))

(assert (= (and b!7970957 (is-Concat!30533 (regTwo!43580 r!24602))) b!7971120))

(assert (= (and b!7970957 (is-Star!21534 (regTwo!43580 r!24602))) b!7971121))

(assert (= (and b!7970957 (is-Union!21534 (regTwo!43580 r!24602))) b!7971122))

(declare-fun b!7971123 () Bool)

(declare-fun e!4699910 () Bool)

(declare-fun tp!2376374 () Bool)

(assert (=> b!7971123 (= e!4699910 (and tp_is_empty!53611 tp!2376374))))

(assert (=> b!7970946 (= tp!2376271 e!4699910)))

(assert (= (and b!7970946 (is-Cons!74639 (t!390506 input!7927))) b!7971123))

(push 1)

(assert (not b!7971120))

(assert (not b!7971004))

(assert (not b!7971109))

(assert (not b!7971100))

(assert (not b!7971015))

(assert (not bm!739609))

(assert (not b!7971113))

(assert (not b!7971064))

(assert (not b!7971081))

(assert (not b!7971116))

(assert (not b!7971088))

(assert (not b!7971101))

(assert (not b!7971118))

(assert (not b!7971089))

(assert (not b!7971052))

(assert (not b!7971078))

(assert (not b!7971077))

(assert (not b!7971110))

(assert (not b!7971002))

(assert (not b!7971112))

(assert (not b!7971016))

(assert (not bm!739610))

(assert (not b!7971117))

(assert (not b!7971123))

(assert (not b!7971083))

(assert (not b!7971121))

(assert (not b!7971098))

(assert (not d!2379892))

(assert (not b!7971092))

(assert tp_is_empty!53611)

(assert (not b!7971079))

(assert (not b!7971093))

(assert (not b!7971082))

(assert (not b!7971091))

(assert (not b!7971122))

(assert (not b!7971104))

(assert (not b!7971087))

(assert (not b!7971102))

(assert (not b!7971106))

(assert (not b!7971108))

(assert (not b!7971014))

(assert (not b!7971105))

(assert (not b!7971114))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

