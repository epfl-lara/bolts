; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!284090 () Bool)

(assert start!284090)

(declare-fun b!2915932 () Bool)

(assert (=> b!2915932 true))

(assert (=> b!2915932 true))

(declare-fun lambda!108444 () Int)

(declare-fun lambda!108443 () Int)

(assert (=> b!2915932 (not (= lambda!108444 lambda!108443))))

(assert (=> b!2915932 true))

(assert (=> b!2915932 true))

(declare-fun b!2915930 () Bool)

(declare-fun e!1840042 () Bool)

(declare-fun tp!936360 () Bool)

(declare-fun tp!936363 () Bool)

(assert (=> b!2915930 (= e!1840042 (and tp!936360 tp!936363))))

(declare-fun b!2915931 () Bool)

(declare-fun res!1203796 () Bool)

(declare-fun e!1840043 () Bool)

(assert (=> b!2915931 (=> res!1203796 e!1840043)))

(declare-datatypes ((C!18130 0))(
  ( (C!18131 (val!11101 Int)) )
))
(declare-datatypes ((Regex!8972 0))(
  ( (ElementMatch!8972 (c!475570 C!18130)) (Concat!14293 (regOne!18456 Regex!8972) (regTwo!18456 Regex!8972)) (EmptyExpr!8972) (Star!8972 (reg!9301 Regex!8972)) (EmptyLang!8972) (Union!8972 (regOne!18457 Regex!8972) (regTwo!18457 Regex!8972)) )
))
(declare-fun r!17423 () Regex!8972)

(declare-datatypes ((List!34837 0))(
  ( (Nil!34713) (Cons!34713 (h!40133 C!18130) (t!233902 List!34837)) )
))
(declare-datatypes ((tuple2!33682 0))(
  ( (tuple2!33683 (_1!19973 List!34837) (_2!19973 List!34837)) )
))
(declare-fun lt!1024688 () tuple2!33682)

(declare-fun matchR!3854 (Regex!8972 List!34837) Bool)

(assert (=> b!2915931 (= res!1203796 (not (matchR!3854 (regTwo!18456 r!17423) (_2!19973 lt!1024688))))))

(declare-fun e!1840041 () Bool)

(assert (=> b!2915932 (= e!1840041 e!1840043)))

(declare-fun res!1203794 () Bool)

(assert (=> b!2915932 (=> res!1203794 e!1840043)))

(assert (=> b!2915932 (= res!1203794 (not (matchR!3854 (regOne!18456 r!17423) (_1!19973 lt!1024688))))))

(declare-datatypes ((Option!6573 0))(
  ( (None!6572) (Some!6572 (v!34706 tuple2!33682)) )
))
(declare-fun lt!1024692 () Option!6573)

(declare-fun get!10560 (Option!6573) tuple2!33682)

(assert (=> b!2915932 (= lt!1024688 (get!10560 lt!1024692))))

(declare-fun Exists!1352 (Int) Bool)

(assert (=> b!2915932 (= (Exists!1352 lambda!108443) (Exists!1352 lambda!108444))))

(declare-datatypes ((Unit!48283 0))(
  ( (Unit!48284) )
))
(declare-fun lt!1024693 () Unit!48283)

(declare-fun s!11993 () List!34837)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!493 (Regex!8972 Regex!8972 List!34837) Unit!48283)

(assert (=> b!2915932 (= lt!1024693 (lemmaExistCutMatchRandMatchRSpecEquivalent!493 (regOne!18456 r!17423) (regTwo!18456 r!17423) s!11993))))

(declare-fun isDefined!5124 (Option!6573) Bool)

(assert (=> b!2915932 (= (isDefined!5124 lt!1024692) (Exists!1352 lambda!108443))))

(declare-fun findConcatSeparation!967 (Regex!8972 Regex!8972 List!34837 List!34837 List!34837) Option!6573)

(assert (=> b!2915932 (= lt!1024692 (findConcatSeparation!967 (regOne!18456 r!17423) (regTwo!18456 r!17423) Nil!34713 s!11993 s!11993))))

(declare-fun lt!1024695 () Unit!48283)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!749 (Regex!8972 Regex!8972 List!34837) Unit!48283)

(assert (=> b!2915932 (= lt!1024695 (lemmaFindConcatSeparationEquivalentToExists!749 (regOne!18456 r!17423) (regTwo!18456 r!17423) s!11993))))

(declare-fun b!2915933 () Bool)

(declare-fun tp!936358 () Bool)

(declare-fun tp!936362 () Bool)

(assert (=> b!2915933 (= e!1840042 (and tp!936358 tp!936362))))

(declare-fun b!2915934 () Bool)

(declare-fun tp_is_empty!15507 () Bool)

(assert (=> b!2915934 (= e!1840042 tp_is_empty!15507)))

(declare-fun b!2915935 () Bool)

(declare-fun tp!936359 () Bool)

(assert (=> b!2915935 (= e!1840042 tp!936359)))

(declare-fun res!1203793 () Bool)

(declare-fun e!1840040 () Bool)

(assert (=> start!284090 (=> (not res!1203793) (not e!1840040))))

(declare-fun validRegex!3705 (Regex!8972) Bool)

(assert (=> start!284090 (= res!1203793 (validRegex!3705 r!17423))))

(assert (=> start!284090 e!1840040))

(assert (=> start!284090 e!1840042))

(declare-fun e!1840044 () Bool)

(assert (=> start!284090 e!1840044))

(declare-fun b!2915936 () Bool)

(assert (=> b!2915936 (= e!1840040 (not e!1840041))))

(declare-fun res!1203795 () Bool)

(assert (=> b!2915936 (=> res!1203795 e!1840041)))

(declare-fun lt!1024691 () Bool)

(assert (=> b!2915936 (= res!1203795 (or (not lt!1024691) (not (is-Concat!14293 r!17423))))))

(declare-fun matchRSpec!1109 (Regex!8972 List!34837) Bool)

(assert (=> b!2915936 (= lt!1024691 (matchRSpec!1109 r!17423 s!11993))))

(assert (=> b!2915936 (= lt!1024691 (matchR!3854 r!17423 s!11993))))

(declare-fun lt!1024694 () Unit!48283)

(declare-fun mainMatchTheorem!1109 (Regex!8972 List!34837) Unit!48283)

(assert (=> b!2915936 (= lt!1024694 (mainMatchTheorem!1109 r!17423 s!11993))))

(declare-fun b!2915937 () Bool)

(declare-fun res!1203797 () Bool)

(assert (=> b!2915937 (=> res!1203797 e!1840041)))

(declare-fun isEmpty!18966 (List!34837) Bool)

(assert (=> b!2915937 (= res!1203797 (isEmpty!18966 s!11993))))

(declare-fun b!2915938 () Bool)

(declare-fun tp!936361 () Bool)

(assert (=> b!2915938 (= e!1840044 (and tp_is_empty!15507 tp!936361))))

(declare-fun b!2915939 () Bool)

(assert (=> b!2915939 (= e!1840043 (validRegex!3705 (regTwo!18456 r!17423)))))

(declare-fun simplify!9 (Regex!8972) Regex!8972)

(assert (=> b!2915939 (matchR!3854 (simplify!9 (regTwo!18456 r!17423)) (_2!19973 lt!1024688))))

(declare-fun lt!1024689 () Unit!48283)

(declare-fun lemmaSimplifySound!7 (Regex!8972 List!34837) Unit!48283)

(assert (=> b!2915939 (= lt!1024689 (lemmaSimplifySound!7 (regTwo!18456 r!17423) (_2!19973 lt!1024688)))))

(assert (=> b!2915939 (matchR!3854 (simplify!9 (regOne!18456 r!17423)) (_1!19973 lt!1024688))))

(declare-fun lt!1024690 () Unit!48283)

(assert (=> b!2915939 (= lt!1024690 (lemmaSimplifySound!7 (regOne!18456 r!17423) (_1!19973 lt!1024688)))))

(assert (= (and start!284090 res!1203793) b!2915936))

(assert (= (and b!2915936 (not res!1203795)) b!2915937))

(assert (= (and b!2915937 (not res!1203797)) b!2915932))

(assert (= (and b!2915932 (not res!1203794)) b!2915931))

(assert (= (and b!2915931 (not res!1203796)) b!2915939))

(assert (= (and start!284090 (is-ElementMatch!8972 r!17423)) b!2915934))

(assert (= (and start!284090 (is-Concat!14293 r!17423)) b!2915933))

(assert (= (and start!284090 (is-Star!8972 r!17423)) b!2915935))

(assert (= (and start!284090 (is-Union!8972 r!17423)) b!2915930))

(assert (= (and start!284090 (is-Cons!34713 s!11993)) b!2915938))

(declare-fun m!3314717 () Bool)

(assert (=> start!284090 m!3314717))

(declare-fun m!3314719 () Bool)

(assert (=> b!2915936 m!3314719))

(declare-fun m!3314721 () Bool)

(assert (=> b!2915936 m!3314721))

(declare-fun m!3314723 () Bool)

(assert (=> b!2915936 m!3314723))

(declare-fun m!3314725 () Bool)

(assert (=> b!2915939 m!3314725))

(declare-fun m!3314727 () Bool)

(assert (=> b!2915939 m!3314727))

(declare-fun m!3314729 () Bool)

(assert (=> b!2915939 m!3314729))

(declare-fun m!3314731 () Bool)

(assert (=> b!2915939 m!3314731))

(declare-fun m!3314733 () Bool)

(assert (=> b!2915939 m!3314733))

(assert (=> b!2915939 m!3314727))

(declare-fun m!3314735 () Bool)

(assert (=> b!2915939 m!3314735))

(assert (=> b!2915939 m!3314729))

(declare-fun m!3314737 () Bool)

(assert (=> b!2915939 m!3314737))

(declare-fun m!3314739 () Bool)

(assert (=> b!2915932 m!3314739))

(declare-fun m!3314741 () Bool)

(assert (=> b!2915932 m!3314741))

(declare-fun m!3314743 () Bool)

(assert (=> b!2915932 m!3314743))

(declare-fun m!3314745 () Bool)

(assert (=> b!2915932 m!3314745))

(declare-fun m!3314747 () Bool)

(assert (=> b!2915932 m!3314747))

(declare-fun m!3314749 () Bool)

(assert (=> b!2915932 m!3314749))

(declare-fun m!3314751 () Bool)

(assert (=> b!2915932 m!3314751))

(declare-fun m!3314753 () Bool)

(assert (=> b!2915932 m!3314753))

(assert (=> b!2915932 m!3314749))

(declare-fun m!3314755 () Bool)

(assert (=> b!2915937 m!3314755))

(declare-fun m!3314757 () Bool)

(assert (=> b!2915931 m!3314757))

(push 1)

(assert tp_is_empty!15507)

(assert (not b!2915931))

(assert (not b!2915938))

(assert (not b!2915937))

(assert (not b!2915933))

(assert (not b!2915936))

(assert (not b!2915932))

(assert (not start!284090))

(assert (not b!2915930))

(assert (not b!2915935))

(assert (not b!2915939))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!838108 () Bool)

(declare-fun isEmpty!18968 (Option!6573) Bool)

(assert (=> d!838108 (= (isDefined!5124 lt!1024692) (not (isEmpty!18968 lt!1024692)))))

(declare-fun bs!524805 () Bool)

(assert (= bs!524805 d!838108))

(declare-fun m!3314801 () Bool)

(assert (=> bs!524805 m!3314801))

(assert (=> b!2915932 d!838108))

(declare-fun d!838110 () Bool)

(declare-fun choose!17172 (Int) Bool)

(assert (=> d!838110 (= (Exists!1352 lambda!108443) (choose!17172 lambda!108443))))

(declare-fun bs!524806 () Bool)

(assert (= bs!524806 d!838110))

(declare-fun m!3314803 () Bool)

(assert (=> bs!524806 m!3314803))

(assert (=> b!2915932 d!838110))

(declare-fun bs!524807 () Bool)

(declare-fun d!838112 () Bool)

(assert (= bs!524807 (and d!838112 b!2915932)))

(declare-fun lambda!108457 () Int)

(assert (=> bs!524807 (= lambda!108457 lambda!108443)))

(assert (=> bs!524807 (not (= lambda!108457 lambda!108444))))

(assert (=> d!838112 true))

(assert (=> d!838112 true))

(assert (=> d!838112 true))

(declare-fun lambda!108458 () Int)

(assert (=> bs!524807 (not (= lambda!108458 lambda!108443))))

(assert (=> bs!524807 (= lambda!108458 lambda!108444)))

(declare-fun bs!524808 () Bool)

(assert (= bs!524808 d!838112))

(assert (=> bs!524808 (not (= lambda!108458 lambda!108457))))

(assert (=> d!838112 true))

(assert (=> d!838112 true))

(assert (=> d!838112 true))

(assert (=> d!838112 (= (Exists!1352 lambda!108457) (Exists!1352 lambda!108458))))

(declare-fun lt!1024722 () Unit!48283)

(declare-fun choose!17173 (Regex!8972 Regex!8972 List!34837) Unit!48283)

(assert (=> d!838112 (= lt!1024722 (choose!17173 (regOne!18456 r!17423) (regTwo!18456 r!17423) s!11993))))

(assert (=> d!838112 (validRegex!3705 (regOne!18456 r!17423))))

(assert (=> d!838112 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!493 (regOne!18456 r!17423) (regTwo!18456 r!17423) s!11993) lt!1024722)))

(declare-fun m!3314805 () Bool)

(assert (=> bs!524808 m!3314805))

(declare-fun m!3314807 () Bool)

(assert (=> bs!524808 m!3314807))

(declare-fun m!3314809 () Bool)

(assert (=> bs!524808 m!3314809))

(declare-fun m!3314811 () Bool)

(assert (=> bs!524808 m!3314811))

(assert (=> b!2915932 d!838112))

(declare-fun b!2916044 () Bool)

(declare-fun e!1840103 () Bool)

(declare-fun lt!1024725 () Bool)

(declare-fun call!190521 () Bool)

(assert (=> b!2916044 (= e!1840103 (= lt!1024725 call!190521))))

(declare-fun b!2916045 () Bool)

(declare-fun res!1203865 () Bool)

(declare-fun e!1840102 () Bool)

(assert (=> b!2916045 (=> res!1203865 e!1840102)))

(declare-fun tail!4705 (List!34837) List!34837)

(assert (=> b!2916045 (= res!1203865 (not (isEmpty!18966 (tail!4705 (_1!19973 lt!1024688)))))))

(declare-fun b!2916047 () Bool)

(declare-fun res!1203864 () Bool)

(declare-fun e!1840100 () Bool)

(assert (=> b!2916047 (=> (not res!1203864) (not e!1840100))))

(assert (=> b!2916047 (= res!1203864 (not call!190521))))

(declare-fun bm!190514 () Bool)

(assert (=> bm!190514 (= call!190521 (isEmpty!18966 (_1!19973 lt!1024688)))))

(declare-fun b!2916048 () Bool)

(declare-fun head!6479 (List!34837) C!18130)

(assert (=> b!2916048 (= e!1840100 (= (head!6479 (_1!19973 lt!1024688)) (c!475570 (regOne!18456 r!17423))))))

(declare-fun b!2916049 () Bool)

(declare-fun e!1840098 () Bool)

(assert (=> b!2916049 (= e!1840098 e!1840102)))

(declare-fun res!1203859 () Bool)

(assert (=> b!2916049 (=> res!1203859 e!1840102)))

(assert (=> b!2916049 (= res!1203859 call!190521)))

(declare-fun d!838114 () Bool)

(assert (=> d!838114 e!1840103))

(declare-fun c!475582 () Bool)

(assert (=> d!838114 (= c!475582 (is-EmptyExpr!8972 (regOne!18456 r!17423)))))

(declare-fun e!1840104 () Bool)

(assert (=> d!838114 (= lt!1024725 e!1840104)))

(declare-fun c!475583 () Bool)

(assert (=> d!838114 (= c!475583 (isEmpty!18966 (_1!19973 lt!1024688)))))

(assert (=> d!838114 (validRegex!3705 (regOne!18456 r!17423))))

(assert (=> d!838114 (= (matchR!3854 (regOne!18456 r!17423) (_1!19973 lt!1024688)) lt!1024725)))

(declare-fun b!2916046 () Bool)

(assert (=> b!2916046 (= e!1840102 (not (= (head!6479 (_1!19973 lt!1024688)) (c!475570 (regOne!18456 r!17423)))))))

(declare-fun b!2916050 () Bool)

(declare-fun res!1203861 () Bool)

(assert (=> b!2916050 (=> (not res!1203861) (not e!1840100))))

(assert (=> b!2916050 (= res!1203861 (isEmpty!18966 (tail!4705 (_1!19973 lt!1024688))))))

(declare-fun b!2916051 () Bool)

(declare-fun e!1840101 () Bool)

(assert (=> b!2916051 (= e!1840101 (not lt!1024725))))

(declare-fun b!2916052 () Bool)

(declare-fun res!1203860 () Bool)

(declare-fun e!1840099 () Bool)

(assert (=> b!2916052 (=> res!1203860 e!1840099)))

(assert (=> b!2916052 (= res!1203860 (not (is-ElementMatch!8972 (regOne!18456 r!17423))))))

(assert (=> b!2916052 (= e!1840101 e!1840099)))

(declare-fun b!2916053 () Bool)

(declare-fun res!1203863 () Bool)

(assert (=> b!2916053 (=> res!1203863 e!1840099)))

(assert (=> b!2916053 (= res!1203863 e!1840100)))

(declare-fun res!1203862 () Bool)

(assert (=> b!2916053 (=> (not res!1203862) (not e!1840100))))

(assert (=> b!2916053 (= res!1203862 lt!1024725)))

(declare-fun b!2916054 () Bool)

(assert (=> b!2916054 (= e!1840099 e!1840098)))

(declare-fun res!1203866 () Bool)

(assert (=> b!2916054 (=> (not res!1203866) (not e!1840098))))

(assert (=> b!2916054 (= res!1203866 (not lt!1024725))))

(declare-fun b!2916055 () Bool)

(declare-fun derivativeStep!2420 (Regex!8972 C!18130) Regex!8972)

(assert (=> b!2916055 (= e!1840104 (matchR!3854 (derivativeStep!2420 (regOne!18456 r!17423) (head!6479 (_1!19973 lt!1024688))) (tail!4705 (_1!19973 lt!1024688))))))

(declare-fun b!2916056 () Bool)

(declare-fun nullable!2806 (Regex!8972) Bool)

(assert (=> b!2916056 (= e!1840104 (nullable!2806 (regOne!18456 r!17423)))))

(declare-fun b!2916057 () Bool)

(assert (=> b!2916057 (= e!1840103 e!1840101)))

(declare-fun c!475584 () Bool)

(assert (=> b!2916057 (= c!475584 (is-EmptyLang!8972 (regOne!18456 r!17423)))))

(assert (= (and d!838114 c!475583) b!2916056))

(assert (= (and d!838114 (not c!475583)) b!2916055))

(assert (= (and d!838114 c!475582) b!2916044))

(assert (= (and d!838114 (not c!475582)) b!2916057))

(assert (= (and b!2916057 c!475584) b!2916051))

(assert (= (and b!2916057 (not c!475584)) b!2916052))

(assert (= (and b!2916052 (not res!1203860)) b!2916053))

(assert (= (and b!2916053 res!1203862) b!2916047))

(assert (= (and b!2916047 res!1203864) b!2916050))

(assert (= (and b!2916050 res!1203861) b!2916048))

(assert (= (and b!2916053 (not res!1203863)) b!2916054))

(assert (= (and b!2916054 res!1203866) b!2916049))

(assert (= (and b!2916049 (not res!1203859)) b!2916045))

(assert (= (and b!2916045 (not res!1203865)) b!2916046))

(assert (= (or b!2916044 b!2916047 b!2916049) bm!190514))

(declare-fun m!3314813 () Bool)

(assert (=> b!2916056 m!3314813))

(declare-fun m!3314815 () Bool)

(assert (=> b!2916048 m!3314815))

(declare-fun m!3314817 () Bool)

(assert (=> d!838114 m!3314817))

(assert (=> d!838114 m!3314811))

(declare-fun m!3314819 () Bool)

(assert (=> b!2916050 m!3314819))

(assert (=> b!2916050 m!3314819))

(declare-fun m!3314821 () Bool)

(assert (=> b!2916050 m!3314821))

(assert (=> bm!190514 m!3314817))

(assert (=> b!2916045 m!3314819))

(assert (=> b!2916045 m!3314819))

(assert (=> b!2916045 m!3314821))

(assert (=> b!2916046 m!3314815))

(assert (=> b!2916055 m!3314815))

(assert (=> b!2916055 m!3314815))

(declare-fun m!3314823 () Bool)

(assert (=> b!2916055 m!3314823))

(assert (=> b!2916055 m!3314819))

(assert (=> b!2916055 m!3314823))

(assert (=> b!2916055 m!3314819))

(declare-fun m!3314825 () Bool)

(assert (=> b!2916055 m!3314825))

(assert (=> b!2915932 d!838114))

(declare-fun d!838118 () Bool)

(assert (=> d!838118 (= (get!10560 lt!1024692) (v!34706 lt!1024692))))

(assert (=> b!2915932 d!838118))

(declare-fun d!838120 () Bool)

(assert (=> d!838120 (= (Exists!1352 lambda!108444) (choose!17172 lambda!108444))))

(declare-fun bs!524809 () Bool)

(assert (= bs!524809 d!838120))

(declare-fun m!3314827 () Bool)

(assert (=> bs!524809 m!3314827))

(assert (=> b!2915932 d!838120))

(declare-fun b!2916085 () Bool)

(declare-fun e!1840125 () Bool)

(assert (=> b!2916085 (= e!1840125 (matchR!3854 (regTwo!18456 r!17423) s!11993))))

(declare-fun b!2916086 () Bool)

(declare-fun e!1840123 () Option!6573)

(declare-fun e!1840122 () Option!6573)

(assert (=> b!2916086 (= e!1840123 e!1840122)))

(declare-fun c!475591 () Bool)

(assert (=> b!2916086 (= c!475591 (is-Nil!34713 s!11993))))

(declare-fun d!838122 () Bool)

(declare-fun e!1840124 () Bool)

(assert (=> d!838122 e!1840124))

(declare-fun res!1203883 () Bool)

(assert (=> d!838122 (=> res!1203883 e!1840124)))

(declare-fun e!1840126 () Bool)

(assert (=> d!838122 (= res!1203883 e!1840126)))

(declare-fun res!1203882 () Bool)

(assert (=> d!838122 (=> (not res!1203882) (not e!1840126))))

(declare-fun lt!1024733 () Option!6573)

(assert (=> d!838122 (= res!1203882 (isDefined!5124 lt!1024733))))

(assert (=> d!838122 (= lt!1024733 e!1840123)))

(declare-fun c!475592 () Bool)

(assert (=> d!838122 (= c!475592 e!1840125)))

(declare-fun res!1203886 () Bool)

(assert (=> d!838122 (=> (not res!1203886) (not e!1840125))))

(assert (=> d!838122 (= res!1203886 (matchR!3854 (regOne!18456 r!17423) Nil!34713))))

(assert (=> d!838122 (validRegex!3705 (regOne!18456 r!17423))))

(assert (=> d!838122 (= (findConcatSeparation!967 (regOne!18456 r!17423) (regTwo!18456 r!17423) Nil!34713 s!11993 s!11993) lt!1024733)))

(declare-fun b!2916087 () Bool)

(declare-fun res!1203885 () Bool)

(assert (=> b!2916087 (=> (not res!1203885) (not e!1840126))))

(assert (=> b!2916087 (= res!1203885 (matchR!3854 (regTwo!18456 r!17423) (_2!19973 (get!10560 lt!1024733))))))

(declare-fun b!2916088 () Bool)

(assert (=> b!2916088 (= e!1840122 None!6572)))

(declare-fun b!2916089 () Bool)

(assert (=> b!2916089 (= e!1840123 (Some!6572 (tuple2!33683 Nil!34713 s!11993)))))

(declare-fun b!2916090 () Bool)

(declare-fun ++!8280 (List!34837 List!34837) List!34837)

(assert (=> b!2916090 (= e!1840126 (= (++!8280 (_1!19973 (get!10560 lt!1024733)) (_2!19973 (get!10560 lt!1024733))) s!11993))))

(declare-fun b!2916091 () Bool)

(assert (=> b!2916091 (= e!1840124 (not (isDefined!5124 lt!1024733)))))

(declare-fun b!2916092 () Bool)

(declare-fun res!1203884 () Bool)

(assert (=> b!2916092 (=> (not res!1203884) (not e!1840126))))

(assert (=> b!2916092 (= res!1203884 (matchR!3854 (regOne!18456 r!17423) (_1!19973 (get!10560 lt!1024733))))))

(declare-fun b!2916093 () Bool)

(declare-fun lt!1024734 () Unit!48283)

(declare-fun lt!1024732 () Unit!48283)

(assert (=> b!2916093 (= lt!1024734 lt!1024732)))

(assert (=> b!2916093 (= (++!8280 (++!8280 Nil!34713 (Cons!34713 (h!40133 s!11993) Nil!34713)) (t!233902 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!916 (List!34837 C!18130 List!34837 List!34837) Unit!48283)

(assert (=> b!2916093 (= lt!1024732 (lemmaMoveElementToOtherListKeepsConcatEq!916 Nil!34713 (h!40133 s!11993) (t!233902 s!11993) s!11993))))

(assert (=> b!2916093 (= e!1840122 (findConcatSeparation!967 (regOne!18456 r!17423) (regTwo!18456 r!17423) (++!8280 Nil!34713 (Cons!34713 (h!40133 s!11993) Nil!34713)) (t!233902 s!11993) s!11993))))

(assert (= (and d!838122 res!1203886) b!2916085))

(assert (= (and d!838122 c!475592) b!2916089))

(assert (= (and d!838122 (not c!475592)) b!2916086))

(assert (= (and b!2916086 c!475591) b!2916088))

(assert (= (and b!2916086 (not c!475591)) b!2916093))

(assert (= (and d!838122 res!1203882) b!2916092))

(assert (= (and b!2916092 res!1203884) b!2916087))

(assert (= (and b!2916087 res!1203885) b!2916090))

(assert (= (and d!838122 (not res!1203883)) b!2916091))

(declare-fun m!3314837 () Bool)

(assert (=> b!2916085 m!3314837))

(declare-fun m!3314839 () Bool)

(assert (=> b!2916087 m!3314839))

(declare-fun m!3314841 () Bool)

(assert (=> b!2916087 m!3314841))

(assert (=> b!2916092 m!3314839))

(declare-fun m!3314843 () Bool)

(assert (=> b!2916092 m!3314843))

(assert (=> b!2916090 m!3314839))

(declare-fun m!3314845 () Bool)

(assert (=> b!2916090 m!3314845))

(declare-fun m!3314847 () Bool)

(assert (=> d!838122 m!3314847))

(declare-fun m!3314849 () Bool)

(assert (=> d!838122 m!3314849))

(assert (=> d!838122 m!3314811))

(assert (=> b!2916091 m!3314847))

(declare-fun m!3314851 () Bool)

(assert (=> b!2916093 m!3314851))

(assert (=> b!2916093 m!3314851))

(declare-fun m!3314853 () Bool)

(assert (=> b!2916093 m!3314853))

(declare-fun m!3314855 () Bool)

(assert (=> b!2916093 m!3314855))

(assert (=> b!2916093 m!3314851))

(declare-fun m!3314857 () Bool)

(assert (=> b!2916093 m!3314857))

(assert (=> b!2915932 d!838122))

(declare-fun bs!524811 () Bool)

(declare-fun d!838130 () Bool)

(assert (= bs!524811 (and d!838130 b!2915932)))

(declare-fun lambda!108463 () Int)

(assert (=> bs!524811 (= lambda!108463 lambda!108443)))

(assert (=> bs!524811 (not (= lambda!108463 lambda!108444))))

(declare-fun bs!524812 () Bool)

(assert (= bs!524812 (and d!838130 d!838112)))

(assert (=> bs!524812 (= lambda!108463 lambda!108457)))

(assert (=> bs!524812 (not (= lambda!108463 lambda!108458))))

(assert (=> d!838130 true))

(assert (=> d!838130 true))

(assert (=> d!838130 true))

(assert (=> d!838130 (= (isDefined!5124 (findConcatSeparation!967 (regOne!18456 r!17423) (regTwo!18456 r!17423) Nil!34713 s!11993 s!11993)) (Exists!1352 lambda!108463))))

(declare-fun lt!1024739 () Unit!48283)

(declare-fun choose!17174 (Regex!8972 Regex!8972 List!34837) Unit!48283)

(assert (=> d!838130 (= lt!1024739 (choose!17174 (regOne!18456 r!17423) (regTwo!18456 r!17423) s!11993))))

(assert (=> d!838130 (validRegex!3705 (regOne!18456 r!17423))))

(assert (=> d!838130 (= (lemmaFindConcatSeparationEquivalentToExists!749 (regOne!18456 r!17423) (regTwo!18456 r!17423) s!11993) lt!1024739)))

(declare-fun bs!524813 () Bool)

(assert (= bs!524813 d!838130))

(declare-fun m!3314859 () Bool)

(assert (=> bs!524813 m!3314859))

(declare-fun m!3314861 () Bool)

(assert (=> bs!524813 m!3314861))

(assert (=> bs!524813 m!3314745))

(declare-fun m!3314863 () Bool)

(assert (=> bs!524813 m!3314863))

(assert (=> bs!524813 m!3314745))

(assert (=> bs!524813 m!3314811))

(assert (=> b!2915932 d!838130))

(declare-fun d!838132 () Bool)

(assert (=> d!838132 (= (matchR!3854 (regTwo!18456 r!17423) (_2!19973 lt!1024688)) (matchR!3854 (simplify!9 (regTwo!18456 r!17423)) (_2!19973 lt!1024688)))))

(declare-fun lt!1024742 () Unit!48283)

(declare-fun choose!17175 (Regex!8972 List!34837) Unit!48283)

(assert (=> d!838132 (= lt!1024742 (choose!17175 (regTwo!18456 r!17423) (_2!19973 lt!1024688)))))

(assert (=> d!838132 (validRegex!3705 (regTwo!18456 r!17423))))

(assert (=> d!838132 (= (lemmaSimplifySound!7 (regTwo!18456 r!17423) (_2!19973 lt!1024688)) lt!1024742)))

(declare-fun bs!524814 () Bool)

(assert (= bs!524814 d!838132))

(assert (=> bs!524814 m!3314757))

(declare-fun m!3314865 () Bool)

(assert (=> bs!524814 m!3314865))

(assert (=> bs!524814 m!3314727))

(assert (=> bs!524814 m!3314727))

(assert (=> bs!524814 m!3314735))

(assert (=> bs!524814 m!3314737))

(assert (=> b!2915939 d!838132))

(declare-fun b!2916156 () Bool)

(declare-fun e!1840162 () Regex!8972)

(assert (=> b!2916156 (= e!1840162 (regTwo!18456 r!17423))))

(declare-fun bm!190534 () Bool)

(declare-fun call!190543 () Regex!8972)

(declare-fun call!190540 () Regex!8972)

(assert (=> bm!190534 (= call!190543 call!190540)))

(declare-fun b!2916157 () Bool)

(declare-fun e!1840173 () Bool)

(declare-fun call!190544 () Bool)

(assert (=> b!2916157 (= e!1840173 call!190544)))

(declare-fun bm!190535 () Bool)

(declare-fun call!190541 () Regex!8972)

(declare-fun c!475617 () Bool)

(assert (=> bm!190535 (= call!190541 (simplify!9 (ite c!475617 (regTwo!18457 (regTwo!18456 r!17423)) (regOne!18456 (regTwo!18456 r!17423)))))))

(declare-fun b!2916158 () Bool)

(declare-fun e!1840163 () Bool)

(declare-fun call!190545 () Bool)

(assert (=> b!2916158 (= e!1840163 call!190545)))

(declare-fun b!2916159 () Bool)

(declare-fun e!1840169 () Regex!8972)

(declare-fun e!1840168 () Regex!8972)

(assert (=> b!2916159 (= e!1840169 e!1840168)))

(declare-fun c!475623 () Bool)

(assert (=> b!2916159 (= c!475623 call!190544)))

(declare-fun b!2916160 () Bool)

(declare-fun lt!1024756 () Regex!8972)

(assert (=> b!2916160 (= e!1840168 lt!1024756)))

(declare-fun b!2916161 () Bool)

(assert (=> b!2916161 (= c!475617 (is-Union!8972 (regTwo!18456 r!17423)))))

(declare-fun e!1840167 () Regex!8972)

(declare-fun e!1840164 () Regex!8972)

(assert (=> b!2916161 (= e!1840167 e!1840164)))

(declare-fun b!2916163 () Bool)

(declare-fun e!1840171 () Bool)

(declare-fun lt!1024761 () Regex!8972)

(assert (=> b!2916163 (= e!1840171 (= (nullable!2806 lt!1024761) (nullable!2806 (regTwo!18456 r!17423))))))

(declare-fun b!2916164 () Bool)

(declare-fun e!1840170 () Regex!8972)

(declare-fun lt!1024759 () Regex!8972)

(declare-fun lt!1024760 () Regex!8972)

(assert (=> b!2916164 (= e!1840170 (Union!8972 lt!1024759 lt!1024760))))

(declare-fun b!2916165 () Bool)

(declare-fun e!1840172 () Regex!8972)

(assert (=> b!2916165 (= e!1840172 e!1840162)))

(declare-fun c!475622 () Bool)

(assert (=> b!2916165 (= c!475622 (is-ElementMatch!8972 (regTwo!18456 r!17423)))))

(declare-fun b!2916166 () Bool)

(declare-fun e!1840165 () Regex!8972)

(assert (=> b!2916166 (= e!1840164 e!1840165)))

(assert (=> b!2916166 (= lt!1024756 call!190541)))

(declare-fun lt!1024757 () Regex!8972)

(assert (=> b!2916166 (= lt!1024757 call!190543)))

(declare-fun res!1203906 () Bool)

(declare-fun call!190542 () Bool)

(assert (=> b!2916166 (= res!1203906 call!190542)))

(assert (=> b!2916166 (=> res!1203906 e!1840163)))

(declare-fun c!475619 () Bool)

(assert (=> b!2916166 (= c!475619 e!1840163)))

(declare-fun bm!190536 () Bool)

(declare-fun c!475625 () Bool)

(assert (=> bm!190536 (= call!190540 (simplify!9 (ite c!475625 (reg!9301 (regTwo!18456 r!17423)) (ite c!475617 (regOne!18457 (regTwo!18456 r!17423)) (regTwo!18456 (regTwo!18456 r!17423))))))))

(declare-fun b!2916167 () Bool)

(declare-fun e!1840161 () Regex!8972)

(assert (=> b!2916167 (= e!1840161 EmptyExpr!8972)))

(declare-fun b!2916168 () Bool)

(declare-fun c!475621 () Bool)

(assert (=> b!2916168 (= c!475621 call!190545)))

(declare-fun e!1840166 () Regex!8972)

(assert (=> b!2916168 (= e!1840166 e!1840170)))

(declare-fun b!2916169 () Bool)

(declare-fun lt!1024758 () Regex!8972)

(assert (=> b!2916169 (= e!1840161 (Star!8972 lt!1024758))))

(declare-fun b!2916170 () Bool)

(declare-fun c!475615 () Bool)

(declare-fun isEmptyExpr!246 (Regex!8972) Bool)

(assert (=> b!2916170 (= c!475615 (isEmptyExpr!246 lt!1024756))))

(assert (=> b!2916170 (= e!1840165 e!1840169)))

(declare-fun bm!190537 () Bool)

(declare-fun isEmptyLang!161 (Regex!8972) Bool)

(assert (=> bm!190537 (= call!190545 (isEmptyLang!161 (ite c!475617 lt!1024760 lt!1024757)))))

(declare-fun b!2916171 () Bool)

(assert (=> b!2916171 (= e!1840164 e!1840166)))

(assert (=> b!2916171 (= lt!1024759 call!190543)))

(assert (=> b!2916171 (= lt!1024760 call!190541)))

(declare-fun c!475618 () Bool)

(assert (=> b!2916171 (= c!475618 call!190542)))

(declare-fun b!2916172 () Bool)

(assert (=> b!2916172 (= e!1840165 EmptyLang!8972)))

(declare-fun b!2916173 () Bool)

(assert (=> b!2916173 (= e!1840168 (Concat!14293 lt!1024756 lt!1024757))))

(declare-fun bm!190538 () Bool)

(assert (=> bm!190538 (= call!190544 (isEmptyExpr!246 (ite c!475625 lt!1024758 lt!1024757)))))

(declare-fun bm!190539 () Bool)

(declare-fun call!190539 () Bool)

(assert (=> bm!190539 (= call!190542 call!190539)))

(declare-fun bm!190540 () Bool)

(assert (=> bm!190540 (= call!190539 (isEmptyLang!161 (ite c!475625 lt!1024758 (ite c!475617 lt!1024759 lt!1024756))))))

(declare-fun b!2916174 () Bool)

(declare-fun e!1840174 () Regex!8972)

(assert (=> b!2916174 (= e!1840174 EmptyExpr!8972)))

(declare-fun b!2916175 () Bool)

(assert (=> b!2916175 (= e!1840166 lt!1024760)))

(declare-fun b!2916176 () Bool)

(assert (=> b!2916176 (= e!1840174 e!1840167)))

(assert (=> b!2916176 (= c!475625 (is-Star!8972 (regTwo!18456 r!17423)))))

(declare-fun b!2916162 () Bool)

(assert (=> b!2916162 (= e!1840172 EmptyLang!8972)))

(declare-fun d!838134 () Bool)

(assert (=> d!838134 e!1840171))

(declare-fun res!1203907 () Bool)

(assert (=> d!838134 (=> (not res!1203907) (not e!1840171))))

(assert (=> d!838134 (= res!1203907 (validRegex!3705 lt!1024761))))

(assert (=> d!838134 (= lt!1024761 e!1840172)))

(declare-fun c!475616 () Bool)

(assert (=> d!838134 (= c!475616 (is-EmptyLang!8972 (regTwo!18456 r!17423)))))

(assert (=> d!838134 (validRegex!3705 (regTwo!18456 r!17423))))

(assert (=> d!838134 (= (simplify!9 (regTwo!18456 r!17423)) lt!1024761)))

(declare-fun b!2916177 () Bool)

(assert (=> b!2916177 (= e!1840169 lt!1024757)))

(declare-fun b!2916178 () Bool)

(assert (=> b!2916178 (= e!1840170 lt!1024759)))

(declare-fun b!2916179 () Bool)

(declare-fun c!475624 () Bool)

(assert (=> b!2916179 (= c!475624 (is-EmptyExpr!8972 (regTwo!18456 r!17423)))))

(assert (=> b!2916179 (= e!1840162 e!1840174)))

(declare-fun b!2916180 () Bool)

(declare-fun c!475620 () Bool)

(assert (=> b!2916180 (= c!475620 e!1840173)))

(declare-fun res!1203905 () Bool)

(assert (=> b!2916180 (=> res!1203905 e!1840173)))

(assert (=> b!2916180 (= res!1203905 call!190539)))

(assert (=> b!2916180 (= lt!1024758 call!190540)))

(assert (=> b!2916180 (= e!1840167 e!1840161)))

(assert (= (and d!838134 c!475616) b!2916162))

(assert (= (and d!838134 (not c!475616)) b!2916165))

(assert (= (and b!2916165 c!475622) b!2916156))

(assert (= (and b!2916165 (not c!475622)) b!2916179))

(assert (= (and b!2916179 c!475624) b!2916174))

(assert (= (and b!2916179 (not c!475624)) b!2916176))

(assert (= (and b!2916176 c!475625) b!2916180))

(assert (= (and b!2916176 (not c!475625)) b!2916161))

(assert (= (and b!2916180 (not res!1203905)) b!2916157))

(assert (= (and b!2916180 c!475620) b!2916167))

(assert (= (and b!2916180 (not c!475620)) b!2916169))

(assert (= (and b!2916161 c!475617) b!2916171))

(assert (= (and b!2916161 (not c!475617)) b!2916166))

(assert (= (and b!2916171 c!475618) b!2916175))

(assert (= (and b!2916171 (not c!475618)) b!2916168))

(assert (= (and b!2916168 c!475621) b!2916178))

(assert (= (and b!2916168 (not c!475621)) b!2916164))

(assert (= (and b!2916166 (not res!1203906)) b!2916158))

(assert (= (and b!2916166 c!475619) b!2916172))

(assert (= (and b!2916166 (not c!475619)) b!2916170))

(assert (= (and b!2916170 c!475615) b!2916177))

(assert (= (and b!2916170 (not c!475615)) b!2916159))

(assert (= (and b!2916159 c!475623) b!2916160))

(assert (= (and b!2916159 (not c!475623)) b!2916173))

(assert (= (or b!2916171 b!2916166) bm!190534))

(assert (= (or b!2916171 b!2916166) bm!190535))

(assert (= (or b!2916171 b!2916166) bm!190539))

(assert (= (or b!2916168 b!2916158) bm!190537))

(assert (= (or b!2916157 b!2916159) bm!190538))

(assert (= (or b!2916180 bm!190534) bm!190536))

(assert (= (or b!2916180 bm!190539) bm!190540))

(assert (= (and d!838134 res!1203907) b!2916163))

(declare-fun m!3314879 () Bool)

(assert (=> bm!190536 m!3314879))

(declare-fun m!3314881 () Bool)

(assert (=> bm!190540 m!3314881))

(declare-fun m!3314883 () Bool)

(assert (=> d!838134 m!3314883))

(assert (=> d!838134 m!3314737))

(declare-fun m!3314885 () Bool)

(assert (=> b!2916163 m!3314885))

(declare-fun m!3314887 () Bool)

(assert (=> b!2916163 m!3314887))

(declare-fun m!3314889 () Bool)

(assert (=> b!2916170 m!3314889))

(declare-fun m!3314891 () Bool)

(assert (=> bm!190535 m!3314891))

(declare-fun m!3314893 () Bool)

(assert (=> bm!190538 m!3314893))

(declare-fun m!3314895 () Bool)

(assert (=> bm!190537 m!3314895))

(assert (=> b!2915939 d!838134))

(declare-fun b!2916227 () Bool)

(declare-fun e!1840207 () Bool)

(declare-fun e!1840206 () Bool)

(assert (=> b!2916227 (= e!1840207 e!1840206)))

(declare-fun c!475636 () Bool)

(assert (=> b!2916227 (= c!475636 (is-Star!8972 (regTwo!18456 r!17423)))))

(declare-fun b!2916228 () Bool)

(declare-fun e!1840209 () Bool)

(assert (=> b!2916228 (= e!1840206 e!1840209)))

(declare-fun c!475637 () Bool)

(assert (=> b!2916228 (= c!475637 (is-Union!8972 (regTwo!18456 r!17423)))))

(declare-fun bm!190549 () Bool)

(declare-fun call!190556 () Bool)

(assert (=> bm!190549 (= call!190556 (validRegex!3705 (ite c!475636 (reg!9301 (regTwo!18456 r!17423)) (ite c!475637 (regTwo!18457 (regTwo!18456 r!17423)) (regOne!18456 (regTwo!18456 r!17423))))))))

(declare-fun bm!190550 () Bool)

(declare-fun call!190555 () Bool)

(assert (=> bm!190550 (= call!190555 (validRegex!3705 (ite c!475637 (regOne!18457 (regTwo!18456 r!17423)) (regTwo!18456 (regTwo!18456 r!17423)))))))

(declare-fun bm!190551 () Bool)

(declare-fun call!190554 () Bool)

(assert (=> bm!190551 (= call!190554 call!190556)))

(declare-fun b!2916229 () Bool)

(declare-fun e!1840205 () Bool)

(assert (=> b!2916229 (= e!1840205 call!190554)))

(declare-fun b!2916230 () Bool)

(declare-fun e!1840208 () Bool)

(declare-fun e!1840203 () Bool)

(assert (=> b!2916230 (= e!1840208 e!1840203)))

(declare-fun res!1203938 () Bool)

(assert (=> b!2916230 (=> (not res!1203938) (not e!1840203))))

(assert (=> b!2916230 (= res!1203938 call!190554)))

(declare-fun b!2916231 () Bool)

(declare-fun res!1203937 () Bool)

(assert (=> b!2916231 (=> (not res!1203937) (not e!1840205))))

(assert (=> b!2916231 (= res!1203937 call!190555)))

(assert (=> b!2916231 (= e!1840209 e!1840205)))

(declare-fun b!2916232 () Bool)

(declare-fun res!1203935 () Bool)

(assert (=> b!2916232 (=> res!1203935 e!1840208)))

(assert (=> b!2916232 (= res!1203935 (not (is-Concat!14293 (regTwo!18456 r!17423))))))

(assert (=> b!2916232 (= e!1840209 e!1840208)))

(declare-fun b!2916233 () Bool)

(declare-fun e!1840204 () Bool)

(assert (=> b!2916233 (= e!1840204 call!190556)))

(declare-fun d!838142 () Bool)

(declare-fun res!1203934 () Bool)

(assert (=> d!838142 (=> res!1203934 e!1840207)))

(assert (=> d!838142 (= res!1203934 (is-ElementMatch!8972 (regTwo!18456 r!17423)))))

(assert (=> d!838142 (= (validRegex!3705 (regTwo!18456 r!17423)) e!1840207)))

(declare-fun b!2916234 () Bool)

(assert (=> b!2916234 (= e!1840206 e!1840204)))

(declare-fun res!1203936 () Bool)

(assert (=> b!2916234 (= res!1203936 (not (nullable!2806 (reg!9301 (regTwo!18456 r!17423)))))))

(assert (=> b!2916234 (=> (not res!1203936) (not e!1840204))))

(declare-fun b!2916235 () Bool)

(assert (=> b!2916235 (= e!1840203 call!190555)))

(assert (= (and d!838142 (not res!1203934)) b!2916227))

(assert (= (and b!2916227 c!475636) b!2916234))

(assert (= (and b!2916227 (not c!475636)) b!2916228))

(assert (= (and b!2916234 res!1203936) b!2916233))

(assert (= (and b!2916228 c!475637) b!2916231))

(assert (= (and b!2916228 (not c!475637)) b!2916232))

(assert (= (and b!2916231 res!1203937) b!2916229))

(assert (= (and b!2916232 (not res!1203935)) b!2916230))

(assert (= (and b!2916230 res!1203938) b!2916235))

(assert (= (or b!2916231 b!2916235) bm!190550))

(assert (= (or b!2916229 b!2916230) bm!190551))

(assert (= (or b!2916233 bm!190551) bm!190549))

(declare-fun m!3314897 () Bool)

(assert (=> bm!190549 m!3314897))

(declare-fun m!3314899 () Bool)

(assert (=> bm!190550 m!3314899))

(declare-fun m!3314901 () Bool)

(assert (=> b!2916234 m!3314901))

(assert (=> b!2915939 d!838142))

(declare-fun d!838144 () Bool)

(assert (=> d!838144 (= (matchR!3854 (regOne!18456 r!17423) (_1!19973 lt!1024688)) (matchR!3854 (simplify!9 (regOne!18456 r!17423)) (_1!19973 lt!1024688)))))

(declare-fun lt!1024764 () Unit!48283)

(assert (=> d!838144 (= lt!1024764 (choose!17175 (regOne!18456 r!17423) (_1!19973 lt!1024688)))))

(assert (=> d!838144 (validRegex!3705 (regOne!18456 r!17423))))

(assert (=> d!838144 (= (lemmaSimplifySound!7 (regOne!18456 r!17423) (_1!19973 lt!1024688)) lt!1024764)))

(declare-fun bs!524819 () Bool)

(assert (= bs!524819 d!838144))

(assert (=> bs!524819 m!3314751))

(declare-fun m!3314903 () Bool)

(assert (=> bs!524819 m!3314903))

(assert (=> bs!524819 m!3314729))

(assert (=> bs!524819 m!3314729))

(assert (=> bs!524819 m!3314731))

(assert (=> bs!524819 m!3314811))

(assert (=> b!2915939 d!838144))

(declare-fun b!2916236 () Bool)

(declare-fun e!1840215 () Bool)

(declare-fun lt!1024765 () Bool)

(declare-fun call!190557 () Bool)

(assert (=> b!2916236 (= e!1840215 (= lt!1024765 call!190557))))

(declare-fun b!2916237 () Bool)

(declare-fun res!1203945 () Bool)

(declare-fun e!1840214 () Bool)

(assert (=> b!2916237 (=> res!1203945 e!1840214)))

(assert (=> b!2916237 (= res!1203945 (not (isEmpty!18966 (tail!4705 (_2!19973 lt!1024688)))))))

(declare-fun b!2916239 () Bool)

(declare-fun res!1203944 () Bool)

(declare-fun e!1840212 () Bool)

(assert (=> b!2916239 (=> (not res!1203944) (not e!1840212))))

(assert (=> b!2916239 (= res!1203944 (not call!190557))))

(declare-fun bm!190552 () Bool)

(assert (=> bm!190552 (= call!190557 (isEmpty!18966 (_2!19973 lt!1024688)))))

(declare-fun b!2916240 () Bool)

(assert (=> b!2916240 (= e!1840212 (= (head!6479 (_2!19973 lt!1024688)) (c!475570 (simplify!9 (regTwo!18456 r!17423)))))))

(declare-fun b!2916241 () Bool)

(declare-fun e!1840210 () Bool)

(assert (=> b!2916241 (= e!1840210 e!1840214)))

(declare-fun res!1203939 () Bool)

(assert (=> b!2916241 (=> res!1203939 e!1840214)))

(assert (=> b!2916241 (= res!1203939 call!190557)))

(declare-fun d!838146 () Bool)

(assert (=> d!838146 e!1840215))

(declare-fun c!475638 () Bool)

(assert (=> d!838146 (= c!475638 (is-EmptyExpr!8972 (simplify!9 (regTwo!18456 r!17423))))))

(declare-fun e!1840216 () Bool)

(assert (=> d!838146 (= lt!1024765 e!1840216)))

(declare-fun c!475639 () Bool)

(assert (=> d!838146 (= c!475639 (isEmpty!18966 (_2!19973 lt!1024688)))))

(assert (=> d!838146 (validRegex!3705 (simplify!9 (regTwo!18456 r!17423)))))

(assert (=> d!838146 (= (matchR!3854 (simplify!9 (regTwo!18456 r!17423)) (_2!19973 lt!1024688)) lt!1024765)))

(declare-fun b!2916238 () Bool)

(assert (=> b!2916238 (= e!1840214 (not (= (head!6479 (_2!19973 lt!1024688)) (c!475570 (simplify!9 (regTwo!18456 r!17423))))))))

(declare-fun b!2916242 () Bool)

(declare-fun res!1203941 () Bool)

(assert (=> b!2916242 (=> (not res!1203941) (not e!1840212))))

(assert (=> b!2916242 (= res!1203941 (isEmpty!18966 (tail!4705 (_2!19973 lt!1024688))))))

(declare-fun b!2916243 () Bool)

(declare-fun e!1840213 () Bool)

(assert (=> b!2916243 (= e!1840213 (not lt!1024765))))

(declare-fun b!2916244 () Bool)

(declare-fun res!1203940 () Bool)

(declare-fun e!1840211 () Bool)

(assert (=> b!2916244 (=> res!1203940 e!1840211)))

(assert (=> b!2916244 (= res!1203940 (not (is-ElementMatch!8972 (simplify!9 (regTwo!18456 r!17423)))))))

(assert (=> b!2916244 (= e!1840213 e!1840211)))

(declare-fun b!2916245 () Bool)

(declare-fun res!1203943 () Bool)

(assert (=> b!2916245 (=> res!1203943 e!1840211)))

(assert (=> b!2916245 (= res!1203943 e!1840212)))

(declare-fun res!1203942 () Bool)

(assert (=> b!2916245 (=> (not res!1203942) (not e!1840212))))

(assert (=> b!2916245 (= res!1203942 lt!1024765)))

(declare-fun b!2916246 () Bool)

(assert (=> b!2916246 (= e!1840211 e!1840210)))

(declare-fun res!1203946 () Bool)

(assert (=> b!2916246 (=> (not res!1203946) (not e!1840210))))

(assert (=> b!2916246 (= res!1203946 (not lt!1024765))))

(declare-fun b!2916247 () Bool)

(assert (=> b!2916247 (= e!1840216 (matchR!3854 (derivativeStep!2420 (simplify!9 (regTwo!18456 r!17423)) (head!6479 (_2!19973 lt!1024688))) (tail!4705 (_2!19973 lt!1024688))))))

(declare-fun b!2916248 () Bool)

(assert (=> b!2916248 (= e!1840216 (nullable!2806 (simplify!9 (regTwo!18456 r!17423))))))

(declare-fun b!2916249 () Bool)

(assert (=> b!2916249 (= e!1840215 e!1840213)))

(declare-fun c!475640 () Bool)

(assert (=> b!2916249 (= c!475640 (is-EmptyLang!8972 (simplify!9 (regTwo!18456 r!17423))))))

(assert (= (and d!838146 c!475639) b!2916248))

(assert (= (and d!838146 (not c!475639)) b!2916247))

(assert (= (and d!838146 c!475638) b!2916236))

(assert (= (and d!838146 (not c!475638)) b!2916249))

(assert (= (and b!2916249 c!475640) b!2916243))

(assert (= (and b!2916249 (not c!475640)) b!2916244))

(assert (= (and b!2916244 (not res!1203940)) b!2916245))

(assert (= (and b!2916245 res!1203942) b!2916239))

(assert (= (and b!2916239 res!1203944) b!2916242))

(assert (= (and b!2916242 res!1203941) b!2916240))

(assert (= (and b!2916245 (not res!1203943)) b!2916246))

(assert (= (and b!2916246 res!1203946) b!2916241))

(assert (= (and b!2916241 (not res!1203939)) b!2916237))

(assert (= (and b!2916237 (not res!1203945)) b!2916238))

(assert (= (or b!2916236 b!2916239 b!2916241) bm!190552))

(assert (=> b!2916248 m!3314727))

(declare-fun m!3314905 () Bool)

(assert (=> b!2916248 m!3314905))

(declare-fun m!3314907 () Bool)

(assert (=> b!2916240 m!3314907))

(declare-fun m!3314909 () Bool)

(assert (=> d!838146 m!3314909))

(assert (=> d!838146 m!3314727))

(declare-fun m!3314911 () Bool)

(assert (=> d!838146 m!3314911))

(declare-fun m!3314913 () Bool)

(assert (=> b!2916242 m!3314913))

(assert (=> b!2916242 m!3314913))

(declare-fun m!3314915 () Bool)

(assert (=> b!2916242 m!3314915))

(assert (=> bm!190552 m!3314909))

(assert (=> b!2916237 m!3314913))

(assert (=> b!2916237 m!3314913))

(assert (=> b!2916237 m!3314915))

(assert (=> b!2916238 m!3314907))

(assert (=> b!2916247 m!3314907))

(assert (=> b!2916247 m!3314727))

(assert (=> b!2916247 m!3314907))

(declare-fun m!3314917 () Bool)

(assert (=> b!2916247 m!3314917))

(assert (=> b!2916247 m!3314913))

(assert (=> b!2916247 m!3314917))

(assert (=> b!2916247 m!3314913))

(declare-fun m!3314919 () Bool)

(assert (=> b!2916247 m!3314919))

(assert (=> b!2915939 d!838146))

(declare-fun b!2916250 () Bool)

(declare-fun e!1840218 () Regex!8972)

(assert (=> b!2916250 (= e!1840218 (regOne!18456 r!17423))))

(declare-fun bm!190553 () Bool)

(declare-fun call!190562 () Regex!8972)

(declare-fun call!190559 () Regex!8972)

(assert (=> bm!190553 (= call!190562 call!190559)))

(declare-fun b!2916251 () Bool)

(declare-fun e!1840229 () Bool)

(declare-fun call!190563 () Bool)

(assert (=> b!2916251 (= e!1840229 call!190563)))

(declare-fun bm!190554 () Bool)

(declare-fun call!190560 () Regex!8972)

(declare-fun c!475643 () Bool)

(assert (=> bm!190554 (= call!190560 (simplify!9 (ite c!475643 (regTwo!18457 (regOne!18456 r!17423)) (regOne!18456 (regOne!18456 r!17423)))))))

(declare-fun b!2916252 () Bool)

(declare-fun e!1840219 () Bool)

(declare-fun call!190564 () Bool)

(assert (=> b!2916252 (= e!1840219 call!190564)))

(declare-fun b!2916253 () Bool)

(declare-fun e!1840225 () Regex!8972)

(declare-fun e!1840224 () Regex!8972)

(assert (=> b!2916253 (= e!1840225 e!1840224)))

(declare-fun c!475649 () Bool)

(assert (=> b!2916253 (= c!475649 call!190563)))

(declare-fun b!2916254 () Bool)

(declare-fun lt!1024766 () Regex!8972)

(assert (=> b!2916254 (= e!1840224 lt!1024766)))

(declare-fun b!2916255 () Bool)

(assert (=> b!2916255 (= c!475643 (is-Union!8972 (regOne!18456 r!17423)))))

(declare-fun e!1840223 () Regex!8972)

(declare-fun e!1840220 () Regex!8972)

(assert (=> b!2916255 (= e!1840223 e!1840220)))

(declare-fun b!2916257 () Bool)

(declare-fun e!1840227 () Bool)

(declare-fun lt!1024771 () Regex!8972)

(assert (=> b!2916257 (= e!1840227 (= (nullable!2806 lt!1024771) (nullable!2806 (regOne!18456 r!17423))))))

(declare-fun b!2916258 () Bool)

(declare-fun e!1840226 () Regex!8972)

(declare-fun lt!1024769 () Regex!8972)

(declare-fun lt!1024770 () Regex!8972)

(assert (=> b!2916258 (= e!1840226 (Union!8972 lt!1024769 lt!1024770))))

(declare-fun b!2916259 () Bool)

(declare-fun e!1840228 () Regex!8972)

(assert (=> b!2916259 (= e!1840228 e!1840218)))

(declare-fun c!475648 () Bool)

(assert (=> b!2916259 (= c!475648 (is-ElementMatch!8972 (regOne!18456 r!17423)))))

(declare-fun b!2916260 () Bool)

(declare-fun e!1840221 () Regex!8972)

(assert (=> b!2916260 (= e!1840220 e!1840221)))

(assert (=> b!2916260 (= lt!1024766 call!190560)))

(declare-fun lt!1024767 () Regex!8972)

(assert (=> b!2916260 (= lt!1024767 call!190562)))

(declare-fun res!1203948 () Bool)

(declare-fun call!190561 () Bool)

(assert (=> b!2916260 (= res!1203948 call!190561)))

(assert (=> b!2916260 (=> res!1203948 e!1840219)))

(declare-fun c!475645 () Bool)

(assert (=> b!2916260 (= c!475645 e!1840219)))

(declare-fun bm!190555 () Bool)

(declare-fun c!475651 () Bool)

(assert (=> bm!190555 (= call!190559 (simplify!9 (ite c!475651 (reg!9301 (regOne!18456 r!17423)) (ite c!475643 (regOne!18457 (regOne!18456 r!17423)) (regTwo!18456 (regOne!18456 r!17423))))))))

(declare-fun b!2916261 () Bool)

(declare-fun e!1840217 () Regex!8972)

(assert (=> b!2916261 (= e!1840217 EmptyExpr!8972)))

(declare-fun b!2916262 () Bool)

(declare-fun c!475647 () Bool)

(assert (=> b!2916262 (= c!475647 call!190564)))

(declare-fun e!1840222 () Regex!8972)

(assert (=> b!2916262 (= e!1840222 e!1840226)))

(declare-fun b!2916263 () Bool)

(declare-fun lt!1024768 () Regex!8972)

(assert (=> b!2916263 (= e!1840217 (Star!8972 lt!1024768))))

(declare-fun b!2916264 () Bool)

(declare-fun c!475641 () Bool)

(assert (=> b!2916264 (= c!475641 (isEmptyExpr!246 lt!1024766))))

(assert (=> b!2916264 (= e!1840221 e!1840225)))

(declare-fun bm!190556 () Bool)

(assert (=> bm!190556 (= call!190564 (isEmptyLang!161 (ite c!475643 lt!1024770 lt!1024767)))))

(declare-fun b!2916265 () Bool)

(assert (=> b!2916265 (= e!1840220 e!1840222)))

(assert (=> b!2916265 (= lt!1024769 call!190562)))

(assert (=> b!2916265 (= lt!1024770 call!190560)))

(declare-fun c!475644 () Bool)

(assert (=> b!2916265 (= c!475644 call!190561)))

(declare-fun b!2916266 () Bool)

(assert (=> b!2916266 (= e!1840221 EmptyLang!8972)))

(declare-fun b!2916267 () Bool)

(assert (=> b!2916267 (= e!1840224 (Concat!14293 lt!1024766 lt!1024767))))

(declare-fun bm!190557 () Bool)

(assert (=> bm!190557 (= call!190563 (isEmptyExpr!246 (ite c!475651 lt!1024768 lt!1024767)))))

(declare-fun bm!190558 () Bool)

(declare-fun call!190558 () Bool)

(assert (=> bm!190558 (= call!190561 call!190558)))

(declare-fun bm!190559 () Bool)

(assert (=> bm!190559 (= call!190558 (isEmptyLang!161 (ite c!475651 lt!1024768 (ite c!475643 lt!1024769 lt!1024766))))))

(declare-fun b!2916268 () Bool)

(declare-fun e!1840230 () Regex!8972)

(assert (=> b!2916268 (= e!1840230 EmptyExpr!8972)))

(declare-fun b!2916269 () Bool)

(assert (=> b!2916269 (= e!1840222 lt!1024770)))

(declare-fun b!2916270 () Bool)

(assert (=> b!2916270 (= e!1840230 e!1840223)))

(assert (=> b!2916270 (= c!475651 (is-Star!8972 (regOne!18456 r!17423)))))

(declare-fun b!2916256 () Bool)

(assert (=> b!2916256 (= e!1840228 EmptyLang!8972)))

(declare-fun d!838148 () Bool)

(assert (=> d!838148 e!1840227))

(declare-fun res!1203949 () Bool)

(assert (=> d!838148 (=> (not res!1203949) (not e!1840227))))

(assert (=> d!838148 (= res!1203949 (validRegex!3705 lt!1024771))))

(assert (=> d!838148 (= lt!1024771 e!1840228)))

(declare-fun c!475642 () Bool)

(assert (=> d!838148 (= c!475642 (is-EmptyLang!8972 (regOne!18456 r!17423)))))

(assert (=> d!838148 (validRegex!3705 (regOne!18456 r!17423))))

(assert (=> d!838148 (= (simplify!9 (regOne!18456 r!17423)) lt!1024771)))

(declare-fun b!2916271 () Bool)

(assert (=> b!2916271 (= e!1840225 lt!1024767)))

(declare-fun b!2916272 () Bool)

(assert (=> b!2916272 (= e!1840226 lt!1024769)))

(declare-fun b!2916273 () Bool)

(declare-fun c!475650 () Bool)

(assert (=> b!2916273 (= c!475650 (is-EmptyExpr!8972 (regOne!18456 r!17423)))))

(assert (=> b!2916273 (= e!1840218 e!1840230)))

(declare-fun b!2916274 () Bool)

(declare-fun c!475646 () Bool)

(assert (=> b!2916274 (= c!475646 e!1840229)))

(declare-fun res!1203947 () Bool)

(assert (=> b!2916274 (=> res!1203947 e!1840229)))

(assert (=> b!2916274 (= res!1203947 call!190558)))

(assert (=> b!2916274 (= lt!1024768 call!190559)))

(assert (=> b!2916274 (= e!1840223 e!1840217)))

(assert (= (and d!838148 c!475642) b!2916256))

(assert (= (and d!838148 (not c!475642)) b!2916259))

(assert (= (and b!2916259 c!475648) b!2916250))

(assert (= (and b!2916259 (not c!475648)) b!2916273))

(assert (= (and b!2916273 c!475650) b!2916268))

(assert (= (and b!2916273 (not c!475650)) b!2916270))

(assert (= (and b!2916270 c!475651) b!2916274))

(assert (= (and b!2916270 (not c!475651)) b!2916255))

(assert (= (and b!2916274 (not res!1203947)) b!2916251))

(assert (= (and b!2916274 c!475646) b!2916261))

(assert (= (and b!2916274 (not c!475646)) b!2916263))

(assert (= (and b!2916255 c!475643) b!2916265))

(assert (= (and b!2916255 (not c!475643)) b!2916260))

(assert (= (and b!2916265 c!475644) b!2916269))

(assert (= (and b!2916265 (not c!475644)) b!2916262))

(assert (= (and b!2916262 c!475647) b!2916272))

(assert (= (and b!2916262 (not c!475647)) b!2916258))

(assert (= (and b!2916260 (not res!1203948)) b!2916252))

(assert (= (and b!2916260 c!475645) b!2916266))

(assert (= (and b!2916260 (not c!475645)) b!2916264))

(assert (= (and b!2916264 c!475641) b!2916271))

(assert (= (and b!2916264 (not c!475641)) b!2916253))

(assert (= (and b!2916253 c!475649) b!2916254))

(assert (= (and b!2916253 (not c!475649)) b!2916267))

(assert (= (or b!2916265 b!2916260) bm!190553))

(assert (= (or b!2916265 b!2916260) bm!190554))

(assert (= (or b!2916265 b!2916260) bm!190558))

(assert (= (or b!2916262 b!2916252) bm!190556))

(assert (= (or b!2916251 b!2916253) bm!190557))

(assert (= (or b!2916274 bm!190553) bm!190555))

(assert (= (or b!2916274 bm!190558) bm!190559))

(assert (= (and d!838148 res!1203949) b!2916257))

(declare-fun m!3314921 () Bool)

(assert (=> bm!190555 m!3314921))

(declare-fun m!3314923 () Bool)

(assert (=> bm!190559 m!3314923))

(declare-fun m!3314925 () Bool)

(assert (=> d!838148 m!3314925))

(assert (=> d!838148 m!3314811))

(declare-fun m!3314927 () Bool)

(assert (=> b!2916257 m!3314927))

(assert (=> b!2916257 m!3314813))

(declare-fun m!3314929 () Bool)

(assert (=> b!2916264 m!3314929))

(declare-fun m!3314931 () Bool)

(assert (=> bm!190554 m!3314931))

(declare-fun m!3314933 () Bool)

(assert (=> bm!190557 m!3314933))

(declare-fun m!3314935 () Bool)

(assert (=> bm!190556 m!3314935))

(assert (=> b!2915939 d!838148))

(declare-fun b!2916275 () Bool)

(declare-fun e!1840236 () Bool)

(declare-fun lt!1024772 () Bool)

(declare-fun call!190565 () Bool)

(assert (=> b!2916275 (= e!1840236 (= lt!1024772 call!190565))))

(declare-fun b!2916276 () Bool)

(declare-fun res!1203956 () Bool)

(declare-fun e!1840235 () Bool)

(assert (=> b!2916276 (=> res!1203956 e!1840235)))

(assert (=> b!2916276 (= res!1203956 (not (isEmpty!18966 (tail!4705 (_1!19973 lt!1024688)))))))

(declare-fun b!2916278 () Bool)

(declare-fun res!1203955 () Bool)

(declare-fun e!1840233 () Bool)

(assert (=> b!2916278 (=> (not res!1203955) (not e!1840233))))

(assert (=> b!2916278 (= res!1203955 (not call!190565))))

(declare-fun bm!190560 () Bool)

(assert (=> bm!190560 (= call!190565 (isEmpty!18966 (_1!19973 lt!1024688)))))

(declare-fun b!2916279 () Bool)

(assert (=> b!2916279 (= e!1840233 (= (head!6479 (_1!19973 lt!1024688)) (c!475570 (simplify!9 (regOne!18456 r!17423)))))))

(declare-fun b!2916280 () Bool)

(declare-fun e!1840231 () Bool)

(assert (=> b!2916280 (= e!1840231 e!1840235)))

(declare-fun res!1203950 () Bool)

(assert (=> b!2916280 (=> res!1203950 e!1840235)))

(assert (=> b!2916280 (= res!1203950 call!190565)))

(declare-fun d!838150 () Bool)

(assert (=> d!838150 e!1840236))

(declare-fun c!475652 () Bool)

(assert (=> d!838150 (= c!475652 (is-EmptyExpr!8972 (simplify!9 (regOne!18456 r!17423))))))

(declare-fun e!1840237 () Bool)

(assert (=> d!838150 (= lt!1024772 e!1840237)))

(declare-fun c!475653 () Bool)

(assert (=> d!838150 (= c!475653 (isEmpty!18966 (_1!19973 lt!1024688)))))

(assert (=> d!838150 (validRegex!3705 (simplify!9 (regOne!18456 r!17423)))))

(assert (=> d!838150 (= (matchR!3854 (simplify!9 (regOne!18456 r!17423)) (_1!19973 lt!1024688)) lt!1024772)))

(declare-fun b!2916277 () Bool)

(assert (=> b!2916277 (= e!1840235 (not (= (head!6479 (_1!19973 lt!1024688)) (c!475570 (simplify!9 (regOne!18456 r!17423))))))))

(declare-fun b!2916281 () Bool)

(declare-fun res!1203952 () Bool)

(assert (=> b!2916281 (=> (not res!1203952) (not e!1840233))))

(assert (=> b!2916281 (= res!1203952 (isEmpty!18966 (tail!4705 (_1!19973 lt!1024688))))))

(declare-fun b!2916282 () Bool)

(declare-fun e!1840234 () Bool)

(assert (=> b!2916282 (= e!1840234 (not lt!1024772))))

(declare-fun b!2916283 () Bool)

(declare-fun res!1203951 () Bool)

(declare-fun e!1840232 () Bool)

(assert (=> b!2916283 (=> res!1203951 e!1840232)))

(assert (=> b!2916283 (= res!1203951 (not (is-ElementMatch!8972 (simplify!9 (regOne!18456 r!17423)))))))

(assert (=> b!2916283 (= e!1840234 e!1840232)))

(declare-fun b!2916284 () Bool)

(declare-fun res!1203954 () Bool)

(assert (=> b!2916284 (=> res!1203954 e!1840232)))

(assert (=> b!2916284 (= res!1203954 e!1840233)))

(declare-fun res!1203953 () Bool)

(assert (=> b!2916284 (=> (not res!1203953) (not e!1840233))))

(assert (=> b!2916284 (= res!1203953 lt!1024772)))

(declare-fun b!2916285 () Bool)

(assert (=> b!2916285 (= e!1840232 e!1840231)))

(declare-fun res!1203957 () Bool)

(assert (=> b!2916285 (=> (not res!1203957) (not e!1840231))))

(assert (=> b!2916285 (= res!1203957 (not lt!1024772))))

(declare-fun b!2916286 () Bool)

(assert (=> b!2916286 (= e!1840237 (matchR!3854 (derivativeStep!2420 (simplify!9 (regOne!18456 r!17423)) (head!6479 (_1!19973 lt!1024688))) (tail!4705 (_1!19973 lt!1024688))))))

(declare-fun b!2916287 () Bool)

(assert (=> b!2916287 (= e!1840237 (nullable!2806 (simplify!9 (regOne!18456 r!17423))))))

(declare-fun b!2916288 () Bool)

(assert (=> b!2916288 (= e!1840236 e!1840234)))

(declare-fun c!475654 () Bool)

(assert (=> b!2916288 (= c!475654 (is-EmptyLang!8972 (simplify!9 (regOne!18456 r!17423))))))

(assert (= (and d!838150 c!475653) b!2916287))

(assert (= (and d!838150 (not c!475653)) b!2916286))

(assert (= (and d!838150 c!475652) b!2916275))

(assert (= (and d!838150 (not c!475652)) b!2916288))

(assert (= (and b!2916288 c!475654) b!2916282))

(assert (= (and b!2916288 (not c!475654)) b!2916283))

(assert (= (and b!2916283 (not res!1203951)) b!2916284))

(assert (= (and b!2916284 res!1203953) b!2916278))

(assert (= (and b!2916278 res!1203955) b!2916281))

(assert (= (and b!2916281 res!1203952) b!2916279))

(assert (= (and b!2916284 (not res!1203954)) b!2916285))

(assert (= (and b!2916285 res!1203957) b!2916280))

(assert (= (and b!2916280 (not res!1203950)) b!2916276))

(assert (= (and b!2916276 (not res!1203956)) b!2916277))

(assert (= (or b!2916275 b!2916278 b!2916280) bm!190560))

(assert (=> b!2916287 m!3314729))

(declare-fun m!3314937 () Bool)

(assert (=> b!2916287 m!3314937))

(assert (=> b!2916279 m!3314815))

(assert (=> d!838150 m!3314817))

(assert (=> d!838150 m!3314729))

(declare-fun m!3314939 () Bool)

(assert (=> d!838150 m!3314939))

(assert (=> b!2916281 m!3314819))

(assert (=> b!2916281 m!3314819))

(assert (=> b!2916281 m!3314821))

(assert (=> bm!190560 m!3314817))

(assert (=> b!2916276 m!3314819))

(assert (=> b!2916276 m!3314819))

(assert (=> b!2916276 m!3314821))

(assert (=> b!2916277 m!3314815))

(assert (=> b!2916286 m!3314815))

(assert (=> b!2916286 m!3314729))

(assert (=> b!2916286 m!3314815))

(declare-fun m!3314941 () Bool)

(assert (=> b!2916286 m!3314941))

(assert (=> b!2916286 m!3314819))

(assert (=> b!2916286 m!3314941))

(assert (=> b!2916286 m!3314819))

(declare-fun m!3314943 () Bool)

(assert (=> b!2916286 m!3314943))

(assert (=> b!2915939 d!838150))

(declare-fun b!2916289 () Bool)

(declare-fun e!1840242 () Bool)

(declare-fun e!1840241 () Bool)

(assert (=> b!2916289 (= e!1840242 e!1840241)))

(declare-fun c!475655 () Bool)

(assert (=> b!2916289 (= c!475655 (is-Star!8972 r!17423))))

(declare-fun b!2916290 () Bool)

(declare-fun e!1840244 () Bool)

(assert (=> b!2916290 (= e!1840241 e!1840244)))

(declare-fun c!475656 () Bool)

(assert (=> b!2916290 (= c!475656 (is-Union!8972 r!17423))))

(declare-fun bm!190561 () Bool)

(declare-fun call!190568 () Bool)

(assert (=> bm!190561 (= call!190568 (validRegex!3705 (ite c!475655 (reg!9301 r!17423) (ite c!475656 (regTwo!18457 r!17423) (regOne!18456 r!17423)))))))

(declare-fun bm!190562 () Bool)

(declare-fun call!190567 () Bool)

(assert (=> bm!190562 (= call!190567 (validRegex!3705 (ite c!475656 (regOne!18457 r!17423) (regTwo!18456 r!17423))))))

(declare-fun bm!190563 () Bool)

(declare-fun call!190566 () Bool)

(assert (=> bm!190563 (= call!190566 call!190568)))

(declare-fun b!2916291 () Bool)

(declare-fun e!1840240 () Bool)

(assert (=> b!2916291 (= e!1840240 call!190566)))

(declare-fun b!2916292 () Bool)

(declare-fun e!1840243 () Bool)

(declare-fun e!1840238 () Bool)

(assert (=> b!2916292 (= e!1840243 e!1840238)))

(declare-fun res!1203962 () Bool)

(assert (=> b!2916292 (=> (not res!1203962) (not e!1840238))))

(assert (=> b!2916292 (= res!1203962 call!190566)))

(declare-fun b!2916293 () Bool)

(declare-fun res!1203961 () Bool)

(assert (=> b!2916293 (=> (not res!1203961) (not e!1840240))))

(assert (=> b!2916293 (= res!1203961 call!190567)))

(assert (=> b!2916293 (= e!1840244 e!1840240)))

(declare-fun b!2916294 () Bool)

(declare-fun res!1203959 () Bool)

(assert (=> b!2916294 (=> res!1203959 e!1840243)))

(assert (=> b!2916294 (= res!1203959 (not (is-Concat!14293 r!17423)))))

(assert (=> b!2916294 (= e!1840244 e!1840243)))

(declare-fun b!2916295 () Bool)

(declare-fun e!1840239 () Bool)

(assert (=> b!2916295 (= e!1840239 call!190568)))

(declare-fun d!838152 () Bool)

(declare-fun res!1203958 () Bool)

(assert (=> d!838152 (=> res!1203958 e!1840242)))

(assert (=> d!838152 (= res!1203958 (is-ElementMatch!8972 r!17423))))

(assert (=> d!838152 (= (validRegex!3705 r!17423) e!1840242)))

(declare-fun b!2916296 () Bool)

(assert (=> b!2916296 (= e!1840241 e!1840239)))

(declare-fun res!1203960 () Bool)

(assert (=> b!2916296 (= res!1203960 (not (nullable!2806 (reg!9301 r!17423))))))

(assert (=> b!2916296 (=> (not res!1203960) (not e!1840239))))

(declare-fun b!2916297 () Bool)

(assert (=> b!2916297 (= e!1840238 call!190567)))

(assert (= (and d!838152 (not res!1203958)) b!2916289))

(assert (= (and b!2916289 c!475655) b!2916296))

(assert (= (and b!2916289 (not c!475655)) b!2916290))

(assert (= (and b!2916296 res!1203960) b!2916295))

(assert (= (and b!2916290 c!475656) b!2916293))

(assert (= (and b!2916290 (not c!475656)) b!2916294))

(assert (= (and b!2916293 res!1203961) b!2916291))

(assert (= (and b!2916294 (not res!1203959)) b!2916292))

(assert (= (and b!2916292 res!1203962) b!2916297))

(assert (= (or b!2916293 b!2916297) bm!190562))

(assert (= (or b!2916291 b!2916292) bm!190563))

(assert (= (or b!2916295 bm!190563) bm!190561))

(declare-fun m!3314945 () Bool)

(assert (=> bm!190561 m!3314945))

(declare-fun m!3314947 () Bool)

(assert (=> bm!190562 m!3314947))

(declare-fun m!3314949 () Bool)

(assert (=> b!2916296 m!3314949))

(assert (=> start!284090 d!838152))

(declare-fun d!838154 () Bool)

(assert (=> d!838154 (= (isEmpty!18966 s!11993) (is-Nil!34713 s!11993))))

(assert (=> b!2915937 d!838154))

(declare-fun bs!524820 () Bool)

(declare-fun b!2916344 () Bool)

(assert (= bs!524820 (and b!2916344 d!838112)))

(declare-fun lambda!108472 () Int)

(assert (=> bs!524820 (not (= lambda!108472 lambda!108458))))

(declare-fun bs!524821 () Bool)

(assert (= bs!524821 (and b!2916344 b!2915932)))

(assert (=> bs!524821 (not (= lambda!108472 lambda!108443))))

(assert (=> bs!524821 (not (= lambda!108472 lambda!108444))))

(assert (=> bs!524820 (not (= lambda!108472 lambda!108457))))

(declare-fun bs!524822 () Bool)

(assert (= bs!524822 (and b!2916344 d!838130)))

(assert (=> bs!524822 (not (= lambda!108472 lambda!108463))))

(assert (=> b!2916344 true))

(assert (=> b!2916344 true))

(declare-fun bs!524823 () Bool)

(declare-fun b!2916347 () Bool)

(assert (= bs!524823 (and b!2916347 b!2916344)))

(declare-fun lambda!108473 () Int)

(assert (=> bs!524823 (not (= lambda!108473 lambda!108472))))

(declare-fun bs!524824 () Bool)

(assert (= bs!524824 (and b!2916347 d!838112)))

(assert (=> bs!524824 (= lambda!108473 lambda!108458)))

(declare-fun bs!524825 () Bool)

(assert (= bs!524825 (and b!2916347 b!2915932)))

(assert (=> bs!524825 (not (= lambda!108473 lambda!108443))))

(assert (=> bs!524825 (= lambda!108473 lambda!108444)))

(assert (=> bs!524824 (not (= lambda!108473 lambda!108457))))

(declare-fun bs!524826 () Bool)

(assert (= bs!524826 (and b!2916347 d!838130)))

(assert (=> bs!524826 (not (= lambda!108473 lambda!108463))))

(assert (=> b!2916347 true))

(assert (=> b!2916347 true))

(declare-fun bm!190569 () Bool)

(declare-fun call!190574 () Bool)

(assert (=> bm!190569 (= call!190574 (isEmpty!18966 s!11993))))

(declare-fun e!1840274 () Bool)

(declare-fun call!190575 () Bool)

(assert (=> b!2916344 (= e!1840274 call!190575)))

(declare-fun b!2916345 () Bool)

(declare-fun e!1840271 () Bool)

(declare-fun e!1840272 () Bool)

(assert (=> b!2916345 (= e!1840271 e!1840272)))

(declare-fun c!475668 () Bool)

(assert (=> b!2916345 (= c!475668 (is-Star!8972 r!17423))))

(declare-fun d!838156 () Bool)

(declare-fun c!475669 () Bool)

(assert (=> d!838156 (= c!475669 (is-EmptyExpr!8972 r!17423))))

(declare-fun e!1840273 () Bool)

(assert (=> d!838156 (= (matchRSpec!1109 r!17423 s!11993) e!1840273)))

(declare-fun b!2916346 () Bool)

(declare-fun e!1840270 () Bool)

(assert (=> b!2916346 (= e!1840271 e!1840270)))

(declare-fun res!1203987 () Bool)

(assert (=> b!2916346 (= res!1203987 (matchRSpec!1109 (regOne!18457 r!17423) s!11993))))

(assert (=> b!2916346 (=> res!1203987 e!1840270)))

(assert (=> b!2916347 (= e!1840272 call!190575)))

(declare-fun b!2916348 () Bool)

(declare-fun c!475671 () Bool)

(assert (=> b!2916348 (= c!475671 (is-ElementMatch!8972 r!17423))))

(declare-fun e!1840275 () Bool)

(declare-fun e!1840276 () Bool)

(assert (=> b!2916348 (= e!1840275 e!1840276)))

(declare-fun b!2916349 () Bool)

(declare-fun res!1203989 () Bool)

(assert (=> b!2916349 (=> res!1203989 e!1840274)))

(assert (=> b!2916349 (= res!1203989 call!190574)))

(assert (=> b!2916349 (= e!1840272 e!1840274)))

(declare-fun b!2916350 () Bool)

(assert (=> b!2916350 (= e!1840273 e!1840275)))

(declare-fun res!1203988 () Bool)

(assert (=> b!2916350 (= res!1203988 (not (is-EmptyLang!8972 r!17423)))))

(assert (=> b!2916350 (=> (not res!1203988) (not e!1840275))))

(declare-fun b!2916351 () Bool)

(assert (=> b!2916351 (= e!1840273 call!190574)))

(declare-fun b!2916352 () Bool)

(assert (=> b!2916352 (= e!1840270 (matchRSpec!1109 (regTwo!18457 r!17423) s!11993))))

(declare-fun b!2916353 () Bool)

(assert (=> b!2916353 (= e!1840276 (= s!11993 (Cons!34713 (c!475570 r!17423) Nil!34713)))))

(declare-fun bm!190570 () Bool)

(assert (=> bm!190570 (= call!190575 (Exists!1352 (ite c!475668 lambda!108472 lambda!108473)))))

(declare-fun b!2916354 () Bool)

(declare-fun c!475670 () Bool)

(assert (=> b!2916354 (= c!475670 (is-Union!8972 r!17423))))

(assert (=> b!2916354 (= e!1840276 e!1840271)))

(assert (= (and d!838156 c!475669) b!2916351))

(assert (= (and d!838156 (not c!475669)) b!2916350))

(assert (= (and b!2916350 res!1203988) b!2916348))

(assert (= (and b!2916348 c!475671) b!2916353))

(assert (= (and b!2916348 (not c!475671)) b!2916354))

(assert (= (and b!2916354 c!475670) b!2916346))

(assert (= (and b!2916354 (not c!475670)) b!2916345))

(assert (= (and b!2916346 (not res!1203987)) b!2916352))

(assert (= (and b!2916345 c!475668) b!2916349))

(assert (= (and b!2916345 (not c!475668)) b!2916347))

(assert (= (and b!2916349 (not res!1203989)) b!2916344))

(assert (= (or b!2916344 b!2916347) bm!190570))

(assert (= (or b!2916351 b!2916349) bm!190569))

(assert (=> bm!190569 m!3314755))

(declare-fun m!3314965 () Bool)

(assert (=> b!2916346 m!3314965))

(declare-fun m!3314967 () Bool)

(assert (=> b!2916352 m!3314967))

(declare-fun m!3314969 () Bool)

(assert (=> bm!190570 m!3314969))

(assert (=> b!2915936 d!838156))

(declare-fun b!2916355 () Bool)

(declare-fun e!1840282 () Bool)

(declare-fun lt!1024774 () Bool)

(declare-fun call!190576 () Bool)

(assert (=> b!2916355 (= e!1840282 (= lt!1024774 call!190576))))

(declare-fun b!2916356 () Bool)

(declare-fun res!1203996 () Bool)

(declare-fun e!1840281 () Bool)

(assert (=> b!2916356 (=> res!1203996 e!1840281)))

(assert (=> b!2916356 (= res!1203996 (not (isEmpty!18966 (tail!4705 s!11993))))))

(declare-fun b!2916358 () Bool)

(declare-fun res!1203995 () Bool)

(declare-fun e!1840279 () Bool)

(assert (=> b!2916358 (=> (not res!1203995) (not e!1840279))))

(assert (=> b!2916358 (= res!1203995 (not call!190576))))

(declare-fun bm!190571 () Bool)

(assert (=> bm!190571 (= call!190576 (isEmpty!18966 s!11993))))

(declare-fun b!2916359 () Bool)

(assert (=> b!2916359 (= e!1840279 (= (head!6479 s!11993) (c!475570 r!17423)))))

(declare-fun b!2916360 () Bool)

(declare-fun e!1840277 () Bool)

(assert (=> b!2916360 (= e!1840277 e!1840281)))

(declare-fun res!1203990 () Bool)

(assert (=> b!2916360 (=> res!1203990 e!1840281)))

(assert (=> b!2916360 (= res!1203990 call!190576)))

(declare-fun d!838160 () Bool)

(assert (=> d!838160 e!1840282))

(declare-fun c!475672 () Bool)

(assert (=> d!838160 (= c!475672 (is-EmptyExpr!8972 r!17423))))

(declare-fun e!1840283 () Bool)

(assert (=> d!838160 (= lt!1024774 e!1840283)))

(declare-fun c!475673 () Bool)

(assert (=> d!838160 (= c!475673 (isEmpty!18966 s!11993))))

(assert (=> d!838160 (validRegex!3705 r!17423)))

(assert (=> d!838160 (= (matchR!3854 r!17423 s!11993) lt!1024774)))

(declare-fun b!2916357 () Bool)

(assert (=> b!2916357 (= e!1840281 (not (= (head!6479 s!11993) (c!475570 r!17423))))))

(declare-fun b!2916361 () Bool)

(declare-fun res!1203992 () Bool)

(assert (=> b!2916361 (=> (not res!1203992) (not e!1840279))))

(assert (=> b!2916361 (= res!1203992 (isEmpty!18966 (tail!4705 s!11993)))))

(declare-fun b!2916362 () Bool)

(declare-fun e!1840280 () Bool)

(assert (=> b!2916362 (= e!1840280 (not lt!1024774))))

(declare-fun b!2916363 () Bool)

(declare-fun res!1203991 () Bool)

(declare-fun e!1840278 () Bool)

(assert (=> b!2916363 (=> res!1203991 e!1840278)))

(assert (=> b!2916363 (= res!1203991 (not (is-ElementMatch!8972 r!17423)))))

(assert (=> b!2916363 (= e!1840280 e!1840278)))

(declare-fun b!2916364 () Bool)

(declare-fun res!1203994 () Bool)

(assert (=> b!2916364 (=> res!1203994 e!1840278)))

(assert (=> b!2916364 (= res!1203994 e!1840279)))

(declare-fun res!1203993 () Bool)

(assert (=> b!2916364 (=> (not res!1203993) (not e!1840279))))

(assert (=> b!2916364 (= res!1203993 lt!1024774)))

(declare-fun b!2916365 () Bool)

(assert (=> b!2916365 (= e!1840278 e!1840277)))

(declare-fun res!1203997 () Bool)

(assert (=> b!2916365 (=> (not res!1203997) (not e!1840277))))

(assert (=> b!2916365 (= res!1203997 (not lt!1024774))))

(declare-fun b!2916366 () Bool)

(assert (=> b!2916366 (= e!1840283 (matchR!3854 (derivativeStep!2420 r!17423 (head!6479 s!11993)) (tail!4705 s!11993)))))

(declare-fun b!2916367 () Bool)

(assert (=> b!2916367 (= e!1840283 (nullable!2806 r!17423))))

(declare-fun b!2916368 () Bool)

(assert (=> b!2916368 (= e!1840282 e!1840280)))

(declare-fun c!475674 () Bool)

(assert (=> b!2916368 (= c!475674 (is-EmptyLang!8972 r!17423))))

(assert (= (and d!838160 c!475673) b!2916367))

(assert (= (and d!838160 (not c!475673)) b!2916366))

(assert (= (and d!838160 c!475672) b!2916355))

(assert (= (and d!838160 (not c!475672)) b!2916368))

(assert (= (and b!2916368 c!475674) b!2916362))

(assert (= (and b!2916368 (not c!475674)) b!2916363))

(assert (= (and b!2916363 (not res!1203991)) b!2916364))

(assert (= (and b!2916364 res!1203993) b!2916358))

(assert (= (and b!2916358 res!1203995) b!2916361))

(assert (= (and b!2916361 res!1203992) b!2916359))

(assert (= (and b!2916364 (not res!1203994)) b!2916365))

(assert (= (and b!2916365 res!1203997) b!2916360))

(assert (= (and b!2916360 (not res!1203990)) b!2916356))

(assert (= (and b!2916356 (not res!1203996)) b!2916357))

(assert (= (or b!2916355 b!2916358 b!2916360) bm!190571))

(declare-fun m!3314971 () Bool)

(assert (=> b!2916367 m!3314971))

(declare-fun m!3314973 () Bool)

(assert (=> b!2916359 m!3314973))

(assert (=> d!838160 m!3314755))

(assert (=> d!838160 m!3314717))

(declare-fun m!3314975 () Bool)

(assert (=> b!2916361 m!3314975))

(assert (=> b!2916361 m!3314975))

(declare-fun m!3314977 () Bool)

(assert (=> b!2916361 m!3314977))

(assert (=> bm!190571 m!3314755))

(assert (=> b!2916356 m!3314975))

(assert (=> b!2916356 m!3314975))

(assert (=> b!2916356 m!3314977))

(assert (=> b!2916357 m!3314973))

(assert (=> b!2916366 m!3314973))

(assert (=> b!2916366 m!3314973))

(declare-fun m!3314979 () Bool)

(assert (=> b!2916366 m!3314979))

(assert (=> b!2916366 m!3314975))

(assert (=> b!2916366 m!3314979))

(assert (=> b!2916366 m!3314975))

(declare-fun m!3314981 () Bool)

(assert (=> b!2916366 m!3314981))

(assert (=> b!2915936 d!838160))

(declare-fun d!838162 () Bool)

(assert (=> d!838162 (= (matchR!3854 r!17423 s!11993) (matchRSpec!1109 r!17423 s!11993))))

(declare-fun lt!1024777 () Unit!48283)

(declare-fun choose!17178 (Regex!8972 List!34837) Unit!48283)

(assert (=> d!838162 (= lt!1024777 (choose!17178 r!17423 s!11993))))

(assert (=> d!838162 (validRegex!3705 r!17423)))

(assert (=> d!838162 (= (mainMatchTheorem!1109 r!17423 s!11993) lt!1024777)))

(declare-fun bs!524827 () Bool)

(assert (= bs!524827 d!838162))

(assert (=> bs!524827 m!3314721))

(assert (=> bs!524827 m!3314719))

(declare-fun m!3314983 () Bool)

(assert (=> bs!524827 m!3314983))

(assert (=> bs!524827 m!3314717))

(assert (=> b!2915936 d!838162))

(declare-fun b!2916369 () Bool)

(declare-fun e!1840289 () Bool)

(declare-fun lt!1024778 () Bool)

(declare-fun call!190577 () Bool)

(assert (=> b!2916369 (= e!1840289 (= lt!1024778 call!190577))))

(declare-fun b!2916370 () Bool)

(declare-fun res!1204004 () Bool)

(declare-fun e!1840288 () Bool)

(assert (=> b!2916370 (=> res!1204004 e!1840288)))

(assert (=> b!2916370 (= res!1204004 (not (isEmpty!18966 (tail!4705 (_2!19973 lt!1024688)))))))

(declare-fun b!2916372 () Bool)

(declare-fun res!1204003 () Bool)

(declare-fun e!1840286 () Bool)

(assert (=> b!2916372 (=> (not res!1204003) (not e!1840286))))

(assert (=> b!2916372 (= res!1204003 (not call!190577))))

(declare-fun bm!190572 () Bool)

(assert (=> bm!190572 (= call!190577 (isEmpty!18966 (_2!19973 lt!1024688)))))

(declare-fun b!2916373 () Bool)

(assert (=> b!2916373 (= e!1840286 (= (head!6479 (_2!19973 lt!1024688)) (c!475570 (regTwo!18456 r!17423))))))

(declare-fun b!2916374 () Bool)

(declare-fun e!1840284 () Bool)

(assert (=> b!2916374 (= e!1840284 e!1840288)))

(declare-fun res!1203998 () Bool)

(assert (=> b!2916374 (=> res!1203998 e!1840288)))

(assert (=> b!2916374 (= res!1203998 call!190577)))

(declare-fun d!838164 () Bool)

(assert (=> d!838164 e!1840289))

(declare-fun c!475675 () Bool)

(assert (=> d!838164 (= c!475675 (is-EmptyExpr!8972 (regTwo!18456 r!17423)))))

(declare-fun e!1840290 () Bool)

(assert (=> d!838164 (= lt!1024778 e!1840290)))

(declare-fun c!475676 () Bool)

(assert (=> d!838164 (= c!475676 (isEmpty!18966 (_2!19973 lt!1024688)))))

(assert (=> d!838164 (validRegex!3705 (regTwo!18456 r!17423))))

(assert (=> d!838164 (= (matchR!3854 (regTwo!18456 r!17423) (_2!19973 lt!1024688)) lt!1024778)))

(declare-fun b!2916371 () Bool)

(assert (=> b!2916371 (= e!1840288 (not (= (head!6479 (_2!19973 lt!1024688)) (c!475570 (regTwo!18456 r!17423)))))))

(declare-fun b!2916375 () Bool)

(declare-fun res!1204000 () Bool)

(assert (=> b!2916375 (=> (not res!1204000) (not e!1840286))))

(assert (=> b!2916375 (= res!1204000 (isEmpty!18966 (tail!4705 (_2!19973 lt!1024688))))))

(declare-fun b!2916376 () Bool)

(declare-fun e!1840287 () Bool)

(assert (=> b!2916376 (= e!1840287 (not lt!1024778))))

(declare-fun b!2916377 () Bool)

(declare-fun res!1203999 () Bool)

(declare-fun e!1840285 () Bool)

(assert (=> b!2916377 (=> res!1203999 e!1840285)))

(assert (=> b!2916377 (= res!1203999 (not (is-ElementMatch!8972 (regTwo!18456 r!17423))))))

(assert (=> b!2916377 (= e!1840287 e!1840285)))

(declare-fun b!2916378 () Bool)

(declare-fun res!1204002 () Bool)

(assert (=> b!2916378 (=> res!1204002 e!1840285)))

(assert (=> b!2916378 (= res!1204002 e!1840286)))

(declare-fun res!1204001 () Bool)

(assert (=> b!2916378 (=> (not res!1204001) (not e!1840286))))

(assert (=> b!2916378 (= res!1204001 lt!1024778)))

(declare-fun b!2916379 () Bool)

(assert (=> b!2916379 (= e!1840285 e!1840284)))

(declare-fun res!1204005 () Bool)

(assert (=> b!2916379 (=> (not res!1204005) (not e!1840284))))

(assert (=> b!2916379 (= res!1204005 (not lt!1024778))))

(declare-fun b!2916380 () Bool)

(assert (=> b!2916380 (= e!1840290 (matchR!3854 (derivativeStep!2420 (regTwo!18456 r!17423) (head!6479 (_2!19973 lt!1024688))) (tail!4705 (_2!19973 lt!1024688))))))

(declare-fun b!2916381 () Bool)

(assert (=> b!2916381 (= e!1840290 (nullable!2806 (regTwo!18456 r!17423)))))

(declare-fun b!2916382 () Bool)

(assert (=> b!2916382 (= e!1840289 e!1840287)))

(declare-fun c!475677 () Bool)

(assert (=> b!2916382 (= c!475677 (is-EmptyLang!8972 (regTwo!18456 r!17423)))))

(assert (= (and d!838164 c!475676) b!2916381))

(assert (= (and d!838164 (not c!475676)) b!2916380))

(assert (= (and d!838164 c!475675) b!2916369))

(assert (= (and d!838164 (not c!475675)) b!2916382))

(assert (= (and b!2916382 c!475677) b!2916376))

(assert (= (and b!2916382 (not c!475677)) b!2916377))

(assert (= (and b!2916377 (not res!1203999)) b!2916378))

(assert (= (and b!2916378 res!1204001) b!2916372))

(assert (= (and b!2916372 res!1204003) b!2916375))

(assert (= (and b!2916375 res!1204000) b!2916373))

(assert (= (and b!2916378 (not res!1204002)) b!2916379))

(assert (= (and b!2916379 res!1204005) b!2916374))

(assert (= (and b!2916374 (not res!1203998)) b!2916370))

(assert (= (and b!2916370 (not res!1204004)) b!2916371))

(assert (= (or b!2916369 b!2916372 b!2916374) bm!190572))

(assert (=> b!2916381 m!3314887))

(assert (=> b!2916373 m!3314907))

(assert (=> d!838164 m!3314909))

(assert (=> d!838164 m!3314737))

(assert (=> b!2916375 m!3314913))

(assert (=> b!2916375 m!3314913))

(assert (=> b!2916375 m!3314915))

(assert (=> bm!190572 m!3314909))

(assert (=> b!2916370 m!3314913))

(assert (=> b!2916370 m!3314913))

(assert (=> b!2916370 m!3314915))

(assert (=> b!2916371 m!3314907))

(assert (=> b!2916380 m!3314907))

(assert (=> b!2916380 m!3314907))

(declare-fun m!3314985 () Bool)

(assert (=> b!2916380 m!3314985))

(assert (=> b!2916380 m!3314913))

(assert (=> b!2916380 m!3314985))

(assert (=> b!2916380 m!3314913))

(declare-fun m!3314987 () Bool)

(assert (=> b!2916380 m!3314987))

(assert (=> b!2915931 d!838164))

(declare-fun b!2916387 () Bool)

(declare-fun e!1840293 () Bool)

(declare-fun tp!936384 () Bool)

(assert (=> b!2916387 (= e!1840293 (and tp_is_empty!15507 tp!936384))))

(assert (=> b!2915938 (= tp!936361 e!1840293)))

(assert (= (and b!2915938 (is-Cons!34713 (t!233902 s!11993))) b!2916387))

(declare-fun b!2916401 () Bool)

(declare-fun e!1840296 () Bool)

(declare-fun tp!936398 () Bool)

(declare-fun tp!936395 () Bool)

(assert (=> b!2916401 (= e!1840296 (and tp!936398 tp!936395))))

(declare-fun b!2916400 () Bool)

(declare-fun tp!936396 () Bool)

(assert (=> b!2916400 (= e!1840296 tp!936396)))

(declare-fun b!2916399 () Bool)

(declare-fun tp!936399 () Bool)

(declare-fun tp!936397 () Bool)

(assert (=> b!2916399 (= e!1840296 (and tp!936399 tp!936397))))

(assert (=> b!2915933 (= tp!936358 e!1840296)))

(declare-fun b!2916398 () Bool)

(assert (=> b!2916398 (= e!1840296 tp_is_empty!15507)))

(assert (= (and b!2915933 (is-ElementMatch!8972 (regOne!18456 r!17423))) b!2916398))

(assert (= (and b!2915933 (is-Concat!14293 (regOne!18456 r!17423))) b!2916399))

(assert (= (and b!2915933 (is-Star!8972 (regOne!18456 r!17423))) b!2916400))

(assert (= (and b!2915933 (is-Union!8972 (regOne!18456 r!17423))) b!2916401))

(declare-fun b!2916405 () Bool)

(declare-fun e!1840297 () Bool)

(declare-fun tp!936403 () Bool)

(declare-fun tp!936400 () Bool)

(assert (=> b!2916405 (= e!1840297 (and tp!936403 tp!936400))))

(declare-fun b!2916404 () Bool)

(declare-fun tp!936401 () Bool)

(assert (=> b!2916404 (= e!1840297 tp!936401)))

(declare-fun b!2916403 () Bool)

(declare-fun tp!936404 () Bool)

(declare-fun tp!936402 () Bool)

(assert (=> b!2916403 (= e!1840297 (and tp!936404 tp!936402))))

(assert (=> b!2915933 (= tp!936362 e!1840297)))

(declare-fun b!2916402 () Bool)

(assert (=> b!2916402 (= e!1840297 tp_is_empty!15507)))

(assert (= (and b!2915933 (is-ElementMatch!8972 (regTwo!18456 r!17423))) b!2916402))

(assert (= (and b!2915933 (is-Concat!14293 (regTwo!18456 r!17423))) b!2916403))

(assert (= (and b!2915933 (is-Star!8972 (regTwo!18456 r!17423))) b!2916404))

(assert (= (and b!2915933 (is-Union!8972 (regTwo!18456 r!17423))) b!2916405))

(declare-fun b!2916411 () Bool)

(declare-fun e!1840298 () Bool)

(declare-fun tp!936408 () Bool)

(declare-fun tp!936405 () Bool)

(assert (=> b!2916411 (= e!1840298 (and tp!936408 tp!936405))))

(declare-fun b!2916410 () Bool)

(declare-fun tp!936406 () Bool)

(assert (=> b!2916410 (= e!1840298 tp!936406)))

(declare-fun b!2916409 () Bool)

(declare-fun tp!936409 () Bool)

(declare-fun tp!936407 () Bool)

(assert (=> b!2916409 (= e!1840298 (and tp!936409 tp!936407))))

(assert (=> b!2915930 (= tp!936360 e!1840298)))

(declare-fun b!2916408 () Bool)

(assert (=> b!2916408 (= e!1840298 tp_is_empty!15507)))

(assert (= (and b!2915930 (is-ElementMatch!8972 (regOne!18457 r!17423))) b!2916408))

(assert (= (and b!2915930 (is-Concat!14293 (regOne!18457 r!17423))) b!2916409))

(assert (= (and b!2915930 (is-Star!8972 (regOne!18457 r!17423))) b!2916410))

(assert (= (and b!2915930 (is-Union!8972 (regOne!18457 r!17423))) b!2916411))

(declare-fun b!2916415 () Bool)

(declare-fun e!1840299 () Bool)

(declare-fun tp!936413 () Bool)

(declare-fun tp!936410 () Bool)

(assert (=> b!2916415 (= e!1840299 (and tp!936413 tp!936410))))

(declare-fun b!2916414 () Bool)

(declare-fun tp!936411 () Bool)

(assert (=> b!2916414 (= e!1840299 tp!936411)))

(declare-fun b!2916413 () Bool)

(declare-fun tp!936414 () Bool)

(declare-fun tp!936412 () Bool)

(assert (=> b!2916413 (= e!1840299 (and tp!936414 tp!936412))))

(assert (=> b!2915930 (= tp!936363 e!1840299)))

(declare-fun b!2916412 () Bool)

(assert (=> b!2916412 (= e!1840299 tp_is_empty!15507)))

(assert (= (and b!2915930 (is-ElementMatch!8972 (regTwo!18457 r!17423))) b!2916412))

(assert (= (and b!2915930 (is-Concat!14293 (regTwo!18457 r!17423))) b!2916413))

(assert (= (and b!2915930 (is-Star!8972 (regTwo!18457 r!17423))) b!2916414))

(assert (= (and b!2915930 (is-Union!8972 (regTwo!18457 r!17423))) b!2916415))

(declare-fun b!2916423 () Bool)

(declare-fun e!1840304 () Bool)

(declare-fun tp!936418 () Bool)

(declare-fun tp!936415 () Bool)

(assert (=> b!2916423 (= e!1840304 (and tp!936418 tp!936415))))

(declare-fun b!2916422 () Bool)

(declare-fun tp!936416 () Bool)

(assert (=> b!2916422 (= e!1840304 tp!936416)))

(declare-fun b!2916421 () Bool)

(declare-fun tp!936419 () Bool)

(declare-fun tp!936417 () Bool)

(assert (=> b!2916421 (= e!1840304 (and tp!936419 tp!936417))))

(assert (=> b!2915935 (= tp!936359 e!1840304)))

(declare-fun b!2916420 () Bool)

(assert (=> b!2916420 (= e!1840304 tp_is_empty!15507)))

(assert (= (and b!2915935 (is-ElementMatch!8972 (reg!9301 r!17423))) b!2916420))

(assert (= (and b!2915935 (is-Concat!14293 (reg!9301 r!17423))) b!2916421))

(assert (= (and b!2915935 (is-Star!8972 (reg!9301 r!17423))) b!2916422))

(assert (= (and b!2915935 (is-Union!8972 (reg!9301 r!17423))) b!2916423))

(push 1)

(assert (not b!2916422))

(assert (not b!2916359))

(assert (not bm!190536))

(assert (not b!2916387))

(assert (not b!2916050))

(assert (not d!838150))

(assert (not bm!190562))

(assert (not b!2916048))

(assert (not bm!190559))

(assert tp_is_empty!15507)

(assert (not bm!190556))

(assert (not bm!190555))

(assert (not b!2916373))

(assert (not b!2916410))

(assert (not b!2916247))

(assert (not bm!190538))

(assert (not b!2916361))

(assert (not bm!190514))

(assert (not bm!190561))

(assert (not b!2916046))

(assert (not b!2916264))

(assert (not bm!190554))

(assert (not b!2916380))

(assert (not bm!190550))

(assert (not b!2916234))

(assert (not d!838164))

(assert (not b!2916399))

(assert (not b!2916409))

(assert (not b!2916421))

(assert (not d!838130))

(assert (not b!2916045))

(assert (not b!2916352))

(assert (not b!2916242))

(assert (not bm!190552))

(assert (not b!2916401))

(assert (not b!2916257))

(assert (not b!2916091))

(assert (not d!838114))

(assert (not b!2916423))

(assert (not b!2916281))

(assert (not bm!190569))

(assert (not bm!190549))

(assert (not b!2916367))

(assert (not b!2916087))

(assert (not bm!190540))

(assert (not b!2916170))

(assert (not bm!190537))

(assert (not b!2916277))

(assert (not d!838146))

(assert (not b!2916366))

(assert (not b!2916415))

(assert (not b!2916370))

(assert (not b!2916287))

(assert (not b!2916240))

(assert (not b!2916381))

(assert (not b!2916400))

(assert (not b!2916413))

(assert (not d!838148))

(assert (not bm!190560))

(assert (not b!2916404))

(assert (not b!2916405))

(assert (not b!2916414))

(assert (not d!838162))

(assert (not bm!190572))

(assert (not bm!190571))

(assert (not b!2916357))

(assert (not d!838112))

(assert (not b!2916248))

(assert (not bm!190557))

(assert (not b!2916296))

(assert (not b!2916163))

(assert (not b!2916356))

(assert (not b!2916237))

(assert (not b!2916056))

(assert (not d!838120))

(assert (not b!2916093))

(assert (not b!2916279))

(assert (not bm!190570))

(assert (not b!2916055))

(assert (not d!838132))

(assert (not d!838108))

(assert (not b!2916276))

(assert (not b!2916411))

(assert (not d!838134))

(assert (not d!838160))

(assert (not b!2916286))

(assert (not b!2916090))

(assert (not d!838122))

(assert (not b!2916403))

(assert (not b!2916375))

(assert (not b!2916092))

(assert (not b!2916346))

(assert (not b!2916238))

(assert (not d!838144))

(assert (not b!2916371))

(assert (not d!838110))

(assert (not b!2916085))

(assert (not bm!190535))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

