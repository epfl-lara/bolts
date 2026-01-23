; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91026 () Bool)

(assert start!91026)

(declare-fun b!1057789 () Bool)

(declare-fun e!671516 () Bool)

(declare-fun e!671517 () Bool)

(assert (=> b!1057789 (= e!671516 (not e!671517))))

(declare-fun res!472916 () Bool)

(assert (=> b!1057789 (=> res!472916 e!671517)))

(declare-fun lt!359321 () Bool)

(declare-datatypes ((C!6388 0))(
  ( (C!6389 (val!3442 Int)) )
))
(declare-datatypes ((Regex!2909 0))(
  ( (ElementMatch!2909 (c!177070 C!6388)) (Concat!4742 (regOne!6330 Regex!2909) (regTwo!6330 Regex!2909)) (EmptyExpr!2909) (Star!2909 (reg!3238 Regex!2909)) (EmptyLang!2909) (Union!2909 (regOne!6331 Regex!2909) (regTwo!6331 Regex!2909)) )
))
(declare-fun r!15766 () Regex!2909)

(get-info :version)

(assert (=> b!1057789 (= res!472916 (or lt!359321 (and ((_ is Concat!4742) r!15766) ((_ is EmptyExpr!2909) (regOne!6330 r!15766))) (and ((_ is Concat!4742) r!15766) ((_ is EmptyExpr!2909) (regTwo!6330 r!15766))) ((_ is Concat!4742) r!15766) (not ((_ is Union!2909) r!15766))))))

(declare-datatypes ((List!10139 0))(
  ( (Nil!10123) (Cons!10123 (h!15524 C!6388) (t!101185 List!10139)) )
))
(declare-fun s!10566 () List!10139)

(declare-fun matchRSpec!708 (Regex!2909 List!10139) Bool)

(assert (=> b!1057789 (= lt!359321 (matchRSpec!708 r!15766 s!10566))))

(declare-fun matchR!1445 (Regex!2909 List!10139) Bool)

(assert (=> b!1057789 (= lt!359321 (matchR!1445 r!15766 s!10566))))

(declare-datatypes ((Unit!15493 0))(
  ( (Unit!15494) )
))
(declare-fun lt!359312 () Unit!15493)

(declare-fun mainMatchTheorem!708 (Regex!2909 List!10139) Unit!15493)

(assert (=> b!1057789 (= lt!359312 (mainMatchTheorem!708 r!15766 s!10566))))

(declare-fun b!1057790 () Bool)

(declare-fun e!671515 () Bool)

(declare-fun tp!318227 () Bool)

(assert (=> b!1057790 (= e!671515 tp!318227)))

(declare-fun b!1057791 () Bool)

(declare-fun tp!318223 () Bool)

(declare-fun tp!318224 () Bool)

(assert (=> b!1057791 (= e!671515 (and tp!318223 tp!318224))))

(declare-fun b!1057792 () Bool)

(declare-fun e!671520 () Bool)

(assert (=> b!1057792 (= e!671517 e!671520)))

(declare-fun res!472914 () Bool)

(assert (=> b!1057792 (=> res!472914 e!671520)))

(declare-fun lt!359316 () Regex!2909)

(assert (=> b!1057792 (= res!472914 (not (matchR!1445 lt!359316 s!10566)))))

(declare-fun lt!359317 () Regex!2909)

(declare-fun lt!359314 () Regex!2909)

(assert (=> b!1057792 (= lt!359316 (Union!2909 lt!359317 lt!359314))))

(declare-fun removeUselessConcat!458 (Regex!2909) Regex!2909)

(assert (=> b!1057792 (= lt!359314 (removeUselessConcat!458 (regTwo!6331 r!15766)))))

(assert (=> b!1057792 (= lt!359317 (removeUselessConcat!458 (regOne!6331 r!15766)))))

(declare-fun lt!359318 () Int)

(declare-fun lt!359320 () Int)

(declare-fun e!671518 () Bool)

(declare-fun b!1057794 () Bool)

(declare-fun regexDepth!40 (Regex!2909) Int)

(assert (=> b!1057794 (= e!671518 (< (+ lt!359320 lt!359318) (+ (regexDepth!40 r!15766) lt!359318)))))

(declare-fun size!8002 (List!10139) Int)

(assert (=> b!1057794 (= lt!359318 (size!8002 s!10566))))

(assert (=> b!1057794 (= lt!359320 (regexDepth!40 (regOne!6331 r!15766)))))

(declare-fun b!1057795 () Bool)

(declare-fun tp_is_empty!5461 () Bool)

(assert (=> b!1057795 (= e!671515 tp_is_empty!5461)))

(declare-fun b!1057796 () Bool)

(assert (=> b!1057796 (= e!671520 e!671518)))

(declare-fun res!472911 () Bool)

(assert (=> b!1057796 (=> res!472911 e!671518)))

(declare-fun lt!359315 () Bool)

(assert (=> b!1057796 (= res!472911 (not lt!359315))))

(declare-fun e!671521 () Bool)

(assert (=> b!1057796 e!671521))

(declare-fun res!472913 () Bool)

(assert (=> b!1057796 (=> res!472913 e!671521)))

(assert (=> b!1057796 (= res!472913 lt!359315)))

(assert (=> b!1057796 (= lt!359315 (matchR!1445 lt!359317 s!10566))))

(declare-fun lt!359319 () Unit!15493)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!88 (Regex!2909 Regex!2909 List!10139) Unit!15493)

(assert (=> b!1057796 (= lt!359319 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!88 lt!359317 lt!359314 s!10566))))

(assert (=> b!1057796 (matchRSpec!708 lt!359316 s!10566)))

(declare-fun lt!359313 () Unit!15493)

(assert (=> b!1057796 (= lt!359313 (mainMatchTheorem!708 lt!359316 s!10566))))

(declare-fun b!1057797 () Bool)

(declare-fun res!472912 () Bool)

(assert (=> b!1057797 (=> res!472912 e!671518)))

(declare-fun validRegex!1378 (Regex!2909) Bool)

(assert (=> b!1057797 (= res!472912 (not (validRegex!1378 (regOne!6331 r!15766))))))

(declare-fun b!1057798 () Bool)

(declare-fun e!671519 () Bool)

(declare-fun tp!318228 () Bool)

(assert (=> b!1057798 (= e!671519 (and tp_is_empty!5461 tp!318228))))

(declare-fun b!1057799 () Bool)

(declare-fun tp!318226 () Bool)

(declare-fun tp!318225 () Bool)

(assert (=> b!1057799 (= e!671515 (and tp!318226 tp!318225))))

(declare-fun b!1057793 () Bool)

(assert (=> b!1057793 (= e!671521 (matchR!1445 lt!359314 s!10566))))

(declare-fun res!472915 () Bool)

(assert (=> start!91026 (=> (not res!472915) (not e!671516))))

(assert (=> start!91026 (= res!472915 (validRegex!1378 r!15766))))

(assert (=> start!91026 e!671516))

(assert (=> start!91026 e!671515))

(assert (=> start!91026 e!671519))

(assert (= (and start!91026 res!472915) b!1057789))

(assert (= (and b!1057789 (not res!472916)) b!1057792))

(assert (= (and b!1057792 (not res!472914)) b!1057796))

(assert (= (and b!1057796 (not res!472913)) b!1057793))

(assert (= (and b!1057796 (not res!472911)) b!1057797))

(assert (= (and b!1057797 (not res!472912)) b!1057794))

(assert (= (and start!91026 ((_ is ElementMatch!2909) r!15766)) b!1057795))

(assert (= (and start!91026 ((_ is Concat!4742) r!15766)) b!1057799))

(assert (= (and start!91026 ((_ is Star!2909) r!15766)) b!1057790))

(assert (= (and start!91026 ((_ is Union!2909) r!15766)) b!1057791))

(assert (= (and start!91026 ((_ is Cons!10123) s!10566)) b!1057798))

(declare-fun m!1219737 () Bool)

(assert (=> b!1057796 m!1219737))

(declare-fun m!1219739 () Bool)

(assert (=> b!1057796 m!1219739))

(declare-fun m!1219741 () Bool)

(assert (=> b!1057796 m!1219741))

(declare-fun m!1219743 () Bool)

(assert (=> b!1057796 m!1219743))

(declare-fun m!1219745 () Bool)

(assert (=> b!1057789 m!1219745))

(declare-fun m!1219747 () Bool)

(assert (=> b!1057789 m!1219747))

(declare-fun m!1219749 () Bool)

(assert (=> b!1057789 m!1219749))

(declare-fun m!1219751 () Bool)

(assert (=> b!1057792 m!1219751))

(declare-fun m!1219753 () Bool)

(assert (=> b!1057792 m!1219753))

(declare-fun m!1219755 () Bool)

(assert (=> b!1057792 m!1219755))

(declare-fun m!1219757 () Bool)

(assert (=> start!91026 m!1219757))

(declare-fun m!1219759 () Bool)

(assert (=> b!1057797 m!1219759))

(declare-fun m!1219761 () Bool)

(assert (=> b!1057794 m!1219761))

(declare-fun m!1219763 () Bool)

(assert (=> b!1057794 m!1219763))

(declare-fun m!1219765 () Bool)

(assert (=> b!1057794 m!1219765))

(declare-fun m!1219767 () Bool)

(assert (=> b!1057793 m!1219767))

(check-sat (not b!1057798) (not b!1057799) (not b!1057797) (not b!1057793) (not b!1057792) tp_is_empty!5461 (not b!1057796) (not b!1057790) (not b!1057791) (not b!1057789) (not b!1057794) (not start!91026))
(check-sat)
(get-model)

(declare-fun d!300360 () Bool)

(declare-fun e!671576 () Bool)

(assert (=> d!300360 e!671576))

(declare-fun c!177091 () Bool)

(assert (=> d!300360 (= c!177091 ((_ is EmptyExpr!2909) lt!359316))))

(declare-fun lt!359324 () Bool)

(declare-fun e!671575 () Bool)

(assert (=> d!300360 (= lt!359324 e!671575)))

(declare-fun c!177093 () Bool)

(declare-fun isEmpty!6541 (List!10139) Bool)

(assert (=> d!300360 (= c!177093 (isEmpty!6541 s!10566))))

(assert (=> d!300360 (validRegex!1378 lt!359316)))

(assert (=> d!300360 (= (matchR!1445 lt!359316 s!10566) lt!359324)))

(declare-fun b!1057877 () Bool)

(declare-fun res!472955 () Bool)

(declare-fun e!671571 () Bool)

(assert (=> b!1057877 (=> (not res!472955) (not e!671571))))

(declare-fun tail!1518 (List!10139) List!10139)

(assert (=> b!1057877 (= res!472955 (isEmpty!6541 (tail!1518 s!10566)))))

(declare-fun bm!75700 () Bool)

(declare-fun call!75705 () Bool)

(assert (=> bm!75700 (= call!75705 (isEmpty!6541 s!10566))))

(declare-fun b!1057878 () Bool)

(declare-fun res!472960 () Bool)

(declare-fun e!671569 () Bool)

(assert (=> b!1057878 (=> res!472960 e!671569)))

(assert (=> b!1057878 (= res!472960 e!671571)))

(declare-fun res!472954 () Bool)

(assert (=> b!1057878 (=> (not res!472954) (not e!671571))))

(assert (=> b!1057878 (= res!472954 lt!359324)))

(declare-fun b!1057879 () Bool)

(declare-fun e!671577 () Bool)

(declare-fun e!671572 () Bool)

(assert (=> b!1057879 (= e!671577 e!671572)))

(declare-fun res!472953 () Bool)

(assert (=> b!1057879 (=> res!472953 e!671572)))

(assert (=> b!1057879 (= res!472953 call!75705)))

(declare-fun b!1057880 () Bool)

(declare-fun res!472958 () Bool)

(assert (=> b!1057880 (=> (not res!472958) (not e!671571))))

(assert (=> b!1057880 (= res!472958 (not call!75705))))

(declare-fun b!1057881 () Bool)

(declare-fun derivativeStep!801 (Regex!2909 C!6388) Regex!2909)

(declare-fun head!1956 (List!10139) C!6388)

(assert (=> b!1057881 (= e!671575 (matchR!1445 (derivativeStep!801 lt!359316 (head!1956 s!10566)) (tail!1518 s!10566)))))

(declare-fun b!1057882 () Bool)

(assert (=> b!1057882 (= e!671572 (not (= (head!1956 s!10566) (c!177070 lt!359316))))))

(declare-fun b!1057883 () Bool)

(declare-fun res!472961 () Bool)

(assert (=> b!1057883 (=> res!472961 e!671569)))

(assert (=> b!1057883 (= res!472961 (not ((_ is ElementMatch!2909) lt!359316)))))

(declare-fun e!671570 () Bool)

(assert (=> b!1057883 (= e!671570 e!671569)))

(declare-fun b!1057884 () Bool)

(assert (=> b!1057884 (= e!671570 (not lt!359324))))

(declare-fun b!1057885 () Bool)

(assert (=> b!1057885 (= e!671571 (= (head!1956 s!10566) (c!177070 lt!359316)))))

(declare-fun b!1057886 () Bool)

(declare-fun res!472959 () Bool)

(assert (=> b!1057886 (=> res!472959 e!671572)))

(assert (=> b!1057886 (= res!472959 (not (isEmpty!6541 (tail!1518 s!10566))))))

(declare-fun b!1057887 () Bool)

(assert (=> b!1057887 (= e!671576 (= lt!359324 call!75705))))

(declare-fun b!1057888 () Bool)

(declare-fun nullable!1001 (Regex!2909) Bool)

(assert (=> b!1057888 (= e!671575 (nullable!1001 lt!359316))))

(declare-fun b!1057889 () Bool)

(assert (=> b!1057889 (= e!671576 e!671570)))

(declare-fun c!177092 () Bool)

(assert (=> b!1057889 (= c!177092 ((_ is EmptyLang!2909) lt!359316))))

(declare-fun b!1057890 () Bool)

(assert (=> b!1057890 (= e!671569 e!671577)))

(declare-fun res!472952 () Bool)

(assert (=> b!1057890 (=> (not res!472952) (not e!671577))))

(assert (=> b!1057890 (= res!472952 (not lt!359324))))

(assert (= (and d!300360 c!177093) b!1057888))

(assert (= (and d!300360 (not c!177093)) b!1057881))

(assert (= (and d!300360 c!177091) b!1057887))

(assert (= (and d!300360 (not c!177091)) b!1057889))

(assert (= (and b!1057889 c!177092) b!1057884))

(assert (= (and b!1057889 (not c!177092)) b!1057883))

(assert (= (and b!1057883 (not res!472961)) b!1057878))

(assert (= (and b!1057878 res!472954) b!1057880))

(assert (= (and b!1057880 res!472958) b!1057877))

(assert (= (and b!1057877 res!472955) b!1057885))

(assert (= (and b!1057878 (not res!472960)) b!1057890))

(assert (= (and b!1057890 res!472952) b!1057879))

(assert (= (and b!1057879 (not res!472953)) b!1057886))

(assert (= (and b!1057886 (not res!472959)) b!1057882))

(assert (= (or b!1057887 b!1057879 b!1057880) bm!75700))

(declare-fun m!1219775 () Bool)

(assert (=> bm!75700 m!1219775))

(declare-fun m!1219777 () Bool)

(assert (=> b!1057881 m!1219777))

(assert (=> b!1057881 m!1219777))

(declare-fun m!1219779 () Bool)

(assert (=> b!1057881 m!1219779))

(declare-fun m!1219781 () Bool)

(assert (=> b!1057881 m!1219781))

(assert (=> b!1057881 m!1219779))

(assert (=> b!1057881 m!1219781))

(declare-fun m!1219783 () Bool)

(assert (=> b!1057881 m!1219783))

(assert (=> b!1057885 m!1219777))

(assert (=> b!1057886 m!1219781))

(assert (=> b!1057886 m!1219781))

(declare-fun m!1219785 () Bool)

(assert (=> b!1057886 m!1219785))

(declare-fun m!1219787 () Bool)

(assert (=> b!1057888 m!1219787))

(assert (=> b!1057882 m!1219777))

(assert (=> b!1057877 m!1219781))

(assert (=> b!1057877 m!1219781))

(assert (=> b!1057877 m!1219785))

(assert (=> d!300360 m!1219775))

(declare-fun m!1219789 () Bool)

(assert (=> d!300360 m!1219789))

(assert (=> b!1057792 d!300360))

(declare-fun d!300364 () Bool)

(declare-fun e!671592 () Bool)

(assert (=> d!300364 e!671592))

(declare-fun res!472964 () Bool)

(assert (=> d!300364 (=> (not res!472964) (not e!671592))))

(declare-fun lt!359327 () Regex!2909)

(assert (=> d!300364 (= res!472964 (validRegex!1378 lt!359327))))

(declare-fun e!671594 () Regex!2909)

(assert (=> d!300364 (= lt!359327 e!671594)))

(declare-fun c!177105 () Bool)

(assert (=> d!300364 (= c!177105 (and ((_ is Concat!4742) (regTwo!6331 r!15766)) ((_ is EmptyExpr!2909) (regOne!6330 (regTwo!6331 r!15766)))))))

(assert (=> d!300364 (validRegex!1378 (regTwo!6331 r!15766))))

(assert (=> d!300364 (= (removeUselessConcat!458 (regTwo!6331 r!15766)) lt!359327)))

(declare-fun b!1057913 () Bool)

(declare-fun e!671593 () Regex!2909)

(declare-fun call!75716 () Regex!2909)

(declare-fun call!75717 () Regex!2909)

(assert (=> b!1057913 (= e!671593 (Union!2909 call!75716 call!75717))))

(declare-fun bm!75711 () Bool)

(declare-fun call!75720 () Regex!2909)

(assert (=> bm!75711 (= call!75716 call!75720)))

(declare-fun bm!75712 () Bool)

(declare-fun call!75718 () Regex!2909)

(assert (=> bm!75712 (= call!75720 call!75718)))

(declare-fun b!1057914 () Bool)

(declare-fun e!671591 () Regex!2909)

(declare-fun call!75719 () Regex!2909)

(assert (=> b!1057914 (= e!671591 (Concat!4742 call!75716 call!75719))))

(declare-fun b!1057915 () Bool)

(declare-fun e!671590 () Regex!2909)

(assert (=> b!1057915 (= e!671594 e!671590)))

(declare-fun c!177108 () Bool)

(assert (=> b!1057915 (= c!177108 (and ((_ is Concat!4742) (regTwo!6331 r!15766)) ((_ is EmptyExpr!2909) (regTwo!6330 (regTwo!6331 r!15766)))))))

(declare-fun bm!75713 () Bool)

(declare-fun c!177107 () Bool)

(declare-fun c!177104 () Bool)

(assert (=> bm!75713 (= call!75719 (removeUselessConcat!458 (ite c!177104 (regTwo!6330 (regTwo!6331 r!15766)) (ite c!177107 (regTwo!6331 (regTwo!6331 r!15766)) (reg!3238 (regTwo!6331 r!15766))))))))

(declare-fun b!1057916 () Bool)

(assert (=> b!1057916 (= e!671592 (= (nullable!1001 lt!359327) (nullable!1001 (regTwo!6331 r!15766))))))

(declare-fun b!1057917 () Bool)

(declare-fun e!671595 () Regex!2909)

(assert (=> b!1057917 (= e!671595 (Star!2909 call!75717))))

(declare-fun bm!75714 () Bool)

(assert (=> bm!75714 (= call!75718 (removeUselessConcat!458 (ite c!177105 (regTwo!6330 (regTwo!6331 r!15766)) (ite (or c!177108 c!177104) (regOne!6330 (regTwo!6331 r!15766)) (regOne!6331 (regTwo!6331 r!15766))))))))

(declare-fun b!1057918 () Bool)

(declare-fun c!177106 () Bool)

(assert (=> b!1057918 (= c!177106 ((_ is Star!2909) (regTwo!6331 r!15766)))))

(assert (=> b!1057918 (= e!671593 e!671595)))

(declare-fun b!1057919 () Bool)

(assert (=> b!1057919 (= e!671591 e!671593)))

(assert (=> b!1057919 (= c!177107 ((_ is Union!2909) (regTwo!6331 r!15766)))))

(declare-fun b!1057920 () Bool)

(assert (=> b!1057920 (= e!671590 call!75720)))

(declare-fun b!1057921 () Bool)

(assert (=> b!1057921 (= e!671594 call!75718)))

(declare-fun bm!75715 () Bool)

(assert (=> bm!75715 (= call!75717 call!75719)))

(declare-fun b!1057922 () Bool)

(assert (=> b!1057922 (= e!671595 (regTwo!6331 r!15766))))

(declare-fun b!1057923 () Bool)

(assert (=> b!1057923 (= c!177104 ((_ is Concat!4742) (regTwo!6331 r!15766)))))

(assert (=> b!1057923 (= e!671590 e!671591)))

(assert (= (and d!300364 c!177105) b!1057921))

(assert (= (and d!300364 (not c!177105)) b!1057915))

(assert (= (and b!1057915 c!177108) b!1057920))

(assert (= (and b!1057915 (not c!177108)) b!1057923))

(assert (= (and b!1057923 c!177104) b!1057914))

(assert (= (and b!1057923 (not c!177104)) b!1057919))

(assert (= (and b!1057919 c!177107) b!1057913))

(assert (= (and b!1057919 (not c!177107)) b!1057918))

(assert (= (and b!1057918 c!177106) b!1057917))

(assert (= (and b!1057918 (not c!177106)) b!1057922))

(assert (= (or b!1057913 b!1057917) bm!75715))

(assert (= (or b!1057914 bm!75715) bm!75713))

(assert (= (or b!1057914 b!1057913) bm!75711))

(assert (= (or b!1057920 bm!75711) bm!75712))

(assert (= (or b!1057921 bm!75712) bm!75714))

(assert (= (and d!300364 res!472964) b!1057916))

(declare-fun m!1219791 () Bool)

(assert (=> d!300364 m!1219791))

(declare-fun m!1219793 () Bool)

(assert (=> d!300364 m!1219793))

(declare-fun m!1219795 () Bool)

(assert (=> bm!75713 m!1219795))

(declare-fun m!1219797 () Bool)

(assert (=> b!1057916 m!1219797))

(declare-fun m!1219799 () Bool)

(assert (=> b!1057916 m!1219799))

(declare-fun m!1219801 () Bool)

(assert (=> bm!75714 m!1219801))

(assert (=> b!1057792 d!300364))

(declare-fun d!300366 () Bool)

(declare-fun e!671598 () Bool)

(assert (=> d!300366 e!671598))

(declare-fun res!472965 () Bool)

(assert (=> d!300366 (=> (not res!472965) (not e!671598))))

(declare-fun lt!359328 () Regex!2909)

(assert (=> d!300366 (= res!472965 (validRegex!1378 lt!359328))))

(declare-fun e!671600 () Regex!2909)

(assert (=> d!300366 (= lt!359328 e!671600)))

(declare-fun c!177110 () Bool)

(assert (=> d!300366 (= c!177110 (and ((_ is Concat!4742) (regOne!6331 r!15766)) ((_ is EmptyExpr!2909) (regOne!6330 (regOne!6331 r!15766)))))))

(assert (=> d!300366 (validRegex!1378 (regOne!6331 r!15766))))

(assert (=> d!300366 (= (removeUselessConcat!458 (regOne!6331 r!15766)) lt!359328)))

(declare-fun b!1057924 () Bool)

(declare-fun e!671599 () Regex!2909)

(declare-fun call!75721 () Regex!2909)

(declare-fun call!75722 () Regex!2909)

(assert (=> b!1057924 (= e!671599 (Union!2909 call!75721 call!75722))))

(declare-fun bm!75716 () Bool)

(declare-fun call!75725 () Regex!2909)

(assert (=> bm!75716 (= call!75721 call!75725)))

(declare-fun bm!75717 () Bool)

(declare-fun call!75723 () Regex!2909)

(assert (=> bm!75717 (= call!75725 call!75723)))

(declare-fun b!1057925 () Bool)

(declare-fun e!671597 () Regex!2909)

(declare-fun call!75724 () Regex!2909)

(assert (=> b!1057925 (= e!671597 (Concat!4742 call!75721 call!75724))))

(declare-fun b!1057926 () Bool)

(declare-fun e!671596 () Regex!2909)

(assert (=> b!1057926 (= e!671600 e!671596)))

(declare-fun c!177113 () Bool)

(assert (=> b!1057926 (= c!177113 (and ((_ is Concat!4742) (regOne!6331 r!15766)) ((_ is EmptyExpr!2909) (regTwo!6330 (regOne!6331 r!15766)))))))

(declare-fun c!177109 () Bool)

(declare-fun bm!75718 () Bool)

(declare-fun c!177112 () Bool)

(assert (=> bm!75718 (= call!75724 (removeUselessConcat!458 (ite c!177109 (regTwo!6330 (regOne!6331 r!15766)) (ite c!177112 (regTwo!6331 (regOne!6331 r!15766)) (reg!3238 (regOne!6331 r!15766))))))))

(declare-fun b!1057927 () Bool)

(assert (=> b!1057927 (= e!671598 (= (nullable!1001 lt!359328) (nullable!1001 (regOne!6331 r!15766))))))

(declare-fun b!1057928 () Bool)

(declare-fun e!671601 () Regex!2909)

(assert (=> b!1057928 (= e!671601 (Star!2909 call!75722))))

(declare-fun bm!75719 () Bool)

(assert (=> bm!75719 (= call!75723 (removeUselessConcat!458 (ite c!177110 (regTwo!6330 (regOne!6331 r!15766)) (ite (or c!177113 c!177109) (regOne!6330 (regOne!6331 r!15766)) (regOne!6331 (regOne!6331 r!15766))))))))

(declare-fun b!1057929 () Bool)

(declare-fun c!177111 () Bool)

(assert (=> b!1057929 (= c!177111 ((_ is Star!2909) (regOne!6331 r!15766)))))

(assert (=> b!1057929 (= e!671599 e!671601)))

(declare-fun b!1057930 () Bool)

(assert (=> b!1057930 (= e!671597 e!671599)))

(assert (=> b!1057930 (= c!177112 ((_ is Union!2909) (regOne!6331 r!15766)))))

(declare-fun b!1057931 () Bool)

(assert (=> b!1057931 (= e!671596 call!75725)))

(declare-fun b!1057932 () Bool)

(assert (=> b!1057932 (= e!671600 call!75723)))

(declare-fun bm!75720 () Bool)

(assert (=> bm!75720 (= call!75722 call!75724)))

(declare-fun b!1057933 () Bool)

(assert (=> b!1057933 (= e!671601 (regOne!6331 r!15766))))

(declare-fun b!1057934 () Bool)

(assert (=> b!1057934 (= c!177109 ((_ is Concat!4742) (regOne!6331 r!15766)))))

(assert (=> b!1057934 (= e!671596 e!671597)))

(assert (= (and d!300366 c!177110) b!1057932))

(assert (= (and d!300366 (not c!177110)) b!1057926))

(assert (= (and b!1057926 c!177113) b!1057931))

(assert (= (and b!1057926 (not c!177113)) b!1057934))

(assert (= (and b!1057934 c!177109) b!1057925))

(assert (= (and b!1057934 (not c!177109)) b!1057930))

(assert (= (and b!1057930 c!177112) b!1057924))

(assert (= (and b!1057930 (not c!177112)) b!1057929))

(assert (= (and b!1057929 c!177111) b!1057928))

(assert (= (and b!1057929 (not c!177111)) b!1057933))

(assert (= (or b!1057924 b!1057928) bm!75720))

(assert (= (or b!1057925 bm!75720) bm!75718))

(assert (= (or b!1057925 b!1057924) bm!75716))

(assert (= (or b!1057931 bm!75716) bm!75717))

(assert (= (or b!1057932 bm!75717) bm!75719))

(assert (= (and d!300366 res!472965) b!1057927))

(declare-fun m!1219803 () Bool)

(assert (=> d!300366 m!1219803))

(assert (=> d!300366 m!1219759))

(declare-fun m!1219805 () Bool)

(assert (=> bm!75718 m!1219805))

(declare-fun m!1219807 () Bool)

(assert (=> b!1057927 m!1219807))

(declare-fun m!1219809 () Bool)

(assert (=> b!1057927 m!1219809))

(declare-fun m!1219811 () Bool)

(assert (=> bm!75719 m!1219811))

(assert (=> b!1057792 d!300366))

(declare-fun d!300368 () Bool)

(declare-fun e!671607 () Bool)

(assert (=> d!300368 e!671607))

(declare-fun c!177114 () Bool)

(assert (=> d!300368 (= c!177114 ((_ is EmptyExpr!2909) lt!359314))))

(declare-fun lt!359329 () Bool)

(declare-fun e!671606 () Bool)

(assert (=> d!300368 (= lt!359329 e!671606)))

(declare-fun c!177116 () Bool)

(assert (=> d!300368 (= c!177116 (isEmpty!6541 s!10566))))

(assert (=> d!300368 (validRegex!1378 lt!359314)))

(assert (=> d!300368 (= (matchR!1445 lt!359314 s!10566) lt!359329)))

(declare-fun b!1057935 () Bool)

(declare-fun res!472969 () Bool)

(declare-fun e!671604 () Bool)

(assert (=> b!1057935 (=> (not res!472969) (not e!671604))))

(assert (=> b!1057935 (= res!472969 (isEmpty!6541 (tail!1518 s!10566)))))

(declare-fun bm!75721 () Bool)

(declare-fun call!75726 () Bool)

(assert (=> bm!75721 (= call!75726 (isEmpty!6541 s!10566))))

(declare-fun b!1057936 () Bool)

(declare-fun res!472972 () Bool)

(declare-fun e!671602 () Bool)

(assert (=> b!1057936 (=> res!472972 e!671602)))

(assert (=> b!1057936 (= res!472972 e!671604)))

(declare-fun res!472968 () Bool)

(assert (=> b!1057936 (=> (not res!472968) (not e!671604))))

(assert (=> b!1057936 (= res!472968 lt!359329)))

(declare-fun b!1057937 () Bool)

(declare-fun e!671608 () Bool)

(declare-fun e!671605 () Bool)

(assert (=> b!1057937 (= e!671608 e!671605)))

(declare-fun res!472967 () Bool)

(assert (=> b!1057937 (=> res!472967 e!671605)))

(assert (=> b!1057937 (= res!472967 call!75726)))

(declare-fun b!1057938 () Bool)

(declare-fun res!472970 () Bool)

(assert (=> b!1057938 (=> (not res!472970) (not e!671604))))

(assert (=> b!1057938 (= res!472970 (not call!75726))))

(declare-fun b!1057939 () Bool)

(assert (=> b!1057939 (= e!671606 (matchR!1445 (derivativeStep!801 lt!359314 (head!1956 s!10566)) (tail!1518 s!10566)))))

(declare-fun b!1057940 () Bool)

(assert (=> b!1057940 (= e!671605 (not (= (head!1956 s!10566) (c!177070 lt!359314))))))

(declare-fun b!1057941 () Bool)

(declare-fun res!472973 () Bool)

(assert (=> b!1057941 (=> res!472973 e!671602)))

(assert (=> b!1057941 (= res!472973 (not ((_ is ElementMatch!2909) lt!359314)))))

(declare-fun e!671603 () Bool)

(assert (=> b!1057941 (= e!671603 e!671602)))

(declare-fun b!1057942 () Bool)

(assert (=> b!1057942 (= e!671603 (not lt!359329))))

(declare-fun b!1057943 () Bool)

(assert (=> b!1057943 (= e!671604 (= (head!1956 s!10566) (c!177070 lt!359314)))))

(declare-fun b!1057944 () Bool)

(declare-fun res!472971 () Bool)

(assert (=> b!1057944 (=> res!472971 e!671605)))

(assert (=> b!1057944 (= res!472971 (not (isEmpty!6541 (tail!1518 s!10566))))))

(declare-fun b!1057945 () Bool)

(assert (=> b!1057945 (= e!671607 (= lt!359329 call!75726))))

(declare-fun b!1057946 () Bool)

(assert (=> b!1057946 (= e!671606 (nullable!1001 lt!359314))))

(declare-fun b!1057947 () Bool)

(assert (=> b!1057947 (= e!671607 e!671603)))

(declare-fun c!177115 () Bool)

(assert (=> b!1057947 (= c!177115 ((_ is EmptyLang!2909) lt!359314))))

(declare-fun b!1057948 () Bool)

(assert (=> b!1057948 (= e!671602 e!671608)))

(declare-fun res!472966 () Bool)

(assert (=> b!1057948 (=> (not res!472966) (not e!671608))))

(assert (=> b!1057948 (= res!472966 (not lt!359329))))

(assert (= (and d!300368 c!177116) b!1057946))

(assert (= (and d!300368 (not c!177116)) b!1057939))

(assert (= (and d!300368 c!177114) b!1057945))

(assert (= (and d!300368 (not c!177114)) b!1057947))

(assert (= (and b!1057947 c!177115) b!1057942))

(assert (= (and b!1057947 (not c!177115)) b!1057941))

(assert (= (and b!1057941 (not res!472973)) b!1057936))

(assert (= (and b!1057936 res!472968) b!1057938))

(assert (= (and b!1057938 res!472970) b!1057935))

(assert (= (and b!1057935 res!472969) b!1057943))

(assert (= (and b!1057936 (not res!472972)) b!1057948))

(assert (= (and b!1057948 res!472966) b!1057937))

(assert (= (and b!1057937 (not res!472967)) b!1057944))

(assert (= (and b!1057944 (not res!472971)) b!1057940))

(assert (= (or b!1057945 b!1057937 b!1057938) bm!75721))

(assert (=> bm!75721 m!1219775))

(assert (=> b!1057939 m!1219777))

(assert (=> b!1057939 m!1219777))

(declare-fun m!1219813 () Bool)

(assert (=> b!1057939 m!1219813))

(assert (=> b!1057939 m!1219781))

(assert (=> b!1057939 m!1219813))

(assert (=> b!1057939 m!1219781))

(declare-fun m!1219815 () Bool)

(assert (=> b!1057939 m!1219815))

(assert (=> b!1057943 m!1219777))

(assert (=> b!1057944 m!1219781))

(assert (=> b!1057944 m!1219781))

(assert (=> b!1057944 m!1219785))

(declare-fun m!1219817 () Bool)

(assert (=> b!1057946 m!1219817))

(assert (=> b!1057940 m!1219777))

(assert (=> b!1057935 m!1219781))

(assert (=> b!1057935 m!1219781))

(assert (=> b!1057935 m!1219785))

(assert (=> d!300368 m!1219775))

(declare-fun m!1219819 () Bool)

(assert (=> d!300368 m!1219819))

(assert (=> b!1057793 d!300368))

(declare-fun d!300370 () Bool)

(declare-fun e!671614 () Bool)

(assert (=> d!300370 e!671614))

(declare-fun c!177117 () Bool)

(assert (=> d!300370 (= c!177117 ((_ is EmptyExpr!2909) lt!359317))))

(declare-fun lt!359330 () Bool)

(declare-fun e!671613 () Bool)

(assert (=> d!300370 (= lt!359330 e!671613)))

(declare-fun c!177119 () Bool)

(assert (=> d!300370 (= c!177119 (isEmpty!6541 s!10566))))

(assert (=> d!300370 (validRegex!1378 lt!359317)))

(assert (=> d!300370 (= (matchR!1445 lt!359317 s!10566) lt!359330)))

(declare-fun b!1057949 () Bool)

(declare-fun res!472977 () Bool)

(declare-fun e!671611 () Bool)

(assert (=> b!1057949 (=> (not res!472977) (not e!671611))))

(assert (=> b!1057949 (= res!472977 (isEmpty!6541 (tail!1518 s!10566)))))

(declare-fun bm!75722 () Bool)

(declare-fun call!75727 () Bool)

(assert (=> bm!75722 (= call!75727 (isEmpty!6541 s!10566))))

(declare-fun b!1057950 () Bool)

(declare-fun res!472980 () Bool)

(declare-fun e!671609 () Bool)

(assert (=> b!1057950 (=> res!472980 e!671609)))

(assert (=> b!1057950 (= res!472980 e!671611)))

(declare-fun res!472976 () Bool)

(assert (=> b!1057950 (=> (not res!472976) (not e!671611))))

(assert (=> b!1057950 (= res!472976 lt!359330)))

(declare-fun b!1057951 () Bool)

(declare-fun e!671615 () Bool)

(declare-fun e!671612 () Bool)

(assert (=> b!1057951 (= e!671615 e!671612)))

(declare-fun res!472975 () Bool)

(assert (=> b!1057951 (=> res!472975 e!671612)))

(assert (=> b!1057951 (= res!472975 call!75727)))

(declare-fun b!1057952 () Bool)

(declare-fun res!472978 () Bool)

(assert (=> b!1057952 (=> (not res!472978) (not e!671611))))

(assert (=> b!1057952 (= res!472978 (not call!75727))))

(declare-fun b!1057953 () Bool)

(assert (=> b!1057953 (= e!671613 (matchR!1445 (derivativeStep!801 lt!359317 (head!1956 s!10566)) (tail!1518 s!10566)))))

(declare-fun b!1057954 () Bool)

(assert (=> b!1057954 (= e!671612 (not (= (head!1956 s!10566) (c!177070 lt!359317))))))

(declare-fun b!1057955 () Bool)

(declare-fun res!472981 () Bool)

(assert (=> b!1057955 (=> res!472981 e!671609)))

(assert (=> b!1057955 (= res!472981 (not ((_ is ElementMatch!2909) lt!359317)))))

(declare-fun e!671610 () Bool)

(assert (=> b!1057955 (= e!671610 e!671609)))

(declare-fun b!1057956 () Bool)

(assert (=> b!1057956 (= e!671610 (not lt!359330))))

(declare-fun b!1057957 () Bool)

(assert (=> b!1057957 (= e!671611 (= (head!1956 s!10566) (c!177070 lt!359317)))))

(declare-fun b!1057958 () Bool)

(declare-fun res!472979 () Bool)

(assert (=> b!1057958 (=> res!472979 e!671612)))

(assert (=> b!1057958 (= res!472979 (not (isEmpty!6541 (tail!1518 s!10566))))))

(declare-fun b!1057959 () Bool)

(assert (=> b!1057959 (= e!671614 (= lt!359330 call!75727))))

(declare-fun b!1057960 () Bool)

(assert (=> b!1057960 (= e!671613 (nullable!1001 lt!359317))))

(declare-fun b!1057961 () Bool)

(assert (=> b!1057961 (= e!671614 e!671610)))

(declare-fun c!177118 () Bool)

(assert (=> b!1057961 (= c!177118 ((_ is EmptyLang!2909) lt!359317))))

(declare-fun b!1057962 () Bool)

(assert (=> b!1057962 (= e!671609 e!671615)))

(declare-fun res!472974 () Bool)

(assert (=> b!1057962 (=> (not res!472974) (not e!671615))))

(assert (=> b!1057962 (= res!472974 (not lt!359330))))

(assert (= (and d!300370 c!177119) b!1057960))

(assert (= (and d!300370 (not c!177119)) b!1057953))

(assert (= (and d!300370 c!177117) b!1057959))

(assert (= (and d!300370 (not c!177117)) b!1057961))

(assert (= (and b!1057961 c!177118) b!1057956))

(assert (= (and b!1057961 (not c!177118)) b!1057955))

(assert (= (and b!1057955 (not res!472981)) b!1057950))

(assert (= (and b!1057950 res!472976) b!1057952))

(assert (= (and b!1057952 res!472978) b!1057949))

(assert (= (and b!1057949 res!472977) b!1057957))

(assert (= (and b!1057950 (not res!472980)) b!1057962))

(assert (= (and b!1057962 res!472974) b!1057951))

(assert (= (and b!1057951 (not res!472975)) b!1057958))

(assert (= (and b!1057958 (not res!472979)) b!1057954))

(assert (= (or b!1057959 b!1057951 b!1057952) bm!75722))

(assert (=> bm!75722 m!1219775))

(assert (=> b!1057953 m!1219777))

(assert (=> b!1057953 m!1219777))

(declare-fun m!1219821 () Bool)

(assert (=> b!1057953 m!1219821))

(assert (=> b!1057953 m!1219781))

(assert (=> b!1057953 m!1219821))

(assert (=> b!1057953 m!1219781))

(declare-fun m!1219823 () Bool)

(assert (=> b!1057953 m!1219823))

(assert (=> b!1057957 m!1219777))

(assert (=> b!1057958 m!1219781))

(assert (=> b!1057958 m!1219781))

(assert (=> b!1057958 m!1219785))

(declare-fun m!1219825 () Bool)

(assert (=> b!1057960 m!1219825))

(assert (=> b!1057954 m!1219777))

(assert (=> b!1057949 m!1219781))

(assert (=> b!1057949 m!1219781))

(assert (=> b!1057949 m!1219785))

(assert (=> d!300370 m!1219775))

(declare-fun m!1219827 () Bool)

(assert (=> d!300370 m!1219827))

(assert (=> b!1057796 d!300370))

(declare-fun d!300372 () Bool)

(declare-fun e!671621 () Bool)

(assert (=> d!300372 e!671621))

(declare-fun res!472987 () Bool)

(assert (=> d!300372 (=> res!472987 e!671621)))

(assert (=> d!300372 (= res!472987 (matchR!1445 lt!359317 s!10566))))

(declare-fun lt!359333 () Unit!15493)

(declare-fun choose!6736 (Regex!2909 Regex!2909 List!10139) Unit!15493)

(assert (=> d!300372 (= lt!359333 (choose!6736 lt!359317 lt!359314 s!10566))))

(declare-fun e!671620 () Bool)

(assert (=> d!300372 e!671620))

(declare-fun res!472986 () Bool)

(assert (=> d!300372 (=> (not res!472986) (not e!671620))))

(assert (=> d!300372 (= res!472986 (validRegex!1378 lt!359317))))

(assert (=> d!300372 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!88 lt!359317 lt!359314 s!10566) lt!359333)))

(declare-fun b!1057967 () Bool)

(assert (=> b!1057967 (= e!671620 (validRegex!1378 lt!359314))))

(declare-fun b!1057968 () Bool)

(assert (=> b!1057968 (= e!671621 (matchR!1445 lt!359314 s!10566))))

(assert (= (and d!300372 res!472986) b!1057967))

(assert (= (and d!300372 (not res!472987)) b!1057968))

(assert (=> d!300372 m!1219737))

(declare-fun m!1219829 () Bool)

(assert (=> d!300372 m!1219829))

(assert (=> d!300372 m!1219827))

(assert (=> b!1057967 m!1219819))

(assert (=> b!1057968 m!1219767))

(assert (=> b!1057796 d!300372))

(declare-fun b!1058299 () Bool)

(assert (=> b!1058299 true))

(assert (=> b!1058299 true))

(declare-fun bs!251752 () Bool)

(declare-fun b!1058290 () Bool)

(assert (= bs!251752 (and b!1058290 b!1058299)))

(declare-fun lambda!38266 () Int)

(declare-fun lambda!38265 () Int)

(assert (=> bs!251752 (not (= lambda!38266 lambda!38265))))

(assert (=> b!1058290 true))

(assert (=> b!1058290 true))

(declare-fun b!1058289 () Bool)

(declare-fun e!671790 () Bool)

(declare-fun e!671795 () Bool)

(assert (=> b!1058289 (= e!671790 e!671795)))

(declare-fun res!473096 () Bool)

(assert (=> b!1058289 (= res!473096 (matchRSpec!708 (regOne!6331 lt!359316) s!10566))))

(assert (=> b!1058289 (=> res!473096 e!671795)))

(declare-fun e!671792 () Bool)

(declare-fun call!75798 () Bool)

(assert (=> b!1058290 (= e!671792 call!75798)))

(declare-fun b!1058291 () Bool)

(declare-fun c!177209 () Bool)

(assert (=> b!1058291 (= c!177209 ((_ is Union!2909) lt!359316))))

(declare-fun e!671794 () Bool)

(assert (=> b!1058291 (= e!671794 e!671790)))

(declare-fun b!1058292 () Bool)

(declare-fun res!473097 () Bool)

(declare-fun e!671796 () Bool)

(assert (=> b!1058292 (=> res!473097 e!671796)))

(declare-fun call!75797 () Bool)

(assert (=> b!1058292 (= res!473097 call!75797)))

(assert (=> b!1058292 (= e!671792 e!671796)))

(declare-fun b!1058293 () Bool)

(assert (=> b!1058293 (= e!671795 (matchRSpec!708 (regTwo!6331 lt!359316) s!10566))))

(declare-fun b!1058294 () Bool)

(assert (=> b!1058294 (= e!671790 e!671792)))

(declare-fun c!177210 () Bool)

(assert (=> b!1058294 (= c!177210 ((_ is Star!2909) lt!359316))))

(declare-fun b!1058295 () Bool)

(assert (=> b!1058295 (= e!671794 (= s!10566 (Cons!10123 (c!177070 lt!359316) Nil!10123)))))

(declare-fun bm!75792 () Bool)

(declare-fun Exists!636 (Int) Bool)

(assert (=> bm!75792 (= call!75798 (Exists!636 (ite c!177210 lambda!38265 lambda!38266)))))

(declare-fun b!1058296 () Bool)

(declare-fun c!177207 () Bool)

(assert (=> b!1058296 (= c!177207 ((_ is ElementMatch!2909) lt!359316))))

(declare-fun e!671791 () Bool)

(assert (=> b!1058296 (= e!671791 e!671794)))

(declare-fun b!1058297 () Bool)

(declare-fun e!671793 () Bool)

(assert (=> b!1058297 (= e!671793 call!75797)))

(declare-fun d!300374 () Bool)

(declare-fun c!177208 () Bool)

(assert (=> d!300374 (= c!177208 ((_ is EmptyExpr!2909) lt!359316))))

(assert (=> d!300374 (= (matchRSpec!708 lt!359316 s!10566) e!671793)))

(declare-fun b!1058298 () Bool)

(assert (=> b!1058298 (= e!671793 e!671791)))

(declare-fun res!473095 () Bool)

(assert (=> b!1058298 (= res!473095 (not ((_ is EmptyLang!2909) lt!359316)))))

(assert (=> b!1058298 (=> (not res!473095) (not e!671791))))

(assert (=> b!1058299 (= e!671796 call!75798)))

(declare-fun bm!75793 () Bool)

(assert (=> bm!75793 (= call!75797 (isEmpty!6541 s!10566))))

(assert (= (and d!300374 c!177208) b!1058297))

(assert (= (and d!300374 (not c!177208)) b!1058298))

(assert (= (and b!1058298 res!473095) b!1058296))

(assert (= (and b!1058296 c!177207) b!1058295))

(assert (= (and b!1058296 (not c!177207)) b!1058291))

(assert (= (and b!1058291 c!177209) b!1058289))

(assert (= (and b!1058291 (not c!177209)) b!1058294))

(assert (= (and b!1058289 (not res!473096)) b!1058293))

(assert (= (and b!1058294 c!177210) b!1058292))

(assert (= (and b!1058294 (not c!177210)) b!1058290))

(assert (= (and b!1058292 (not res!473097)) b!1058299))

(assert (= (or b!1058299 b!1058290) bm!75792))

(assert (= (or b!1058297 b!1058292) bm!75793))

(declare-fun m!1219937 () Bool)

(assert (=> b!1058289 m!1219937))

(declare-fun m!1219939 () Bool)

(assert (=> b!1058293 m!1219939))

(declare-fun m!1219941 () Bool)

(assert (=> bm!75792 m!1219941))

(assert (=> bm!75793 m!1219775))

(assert (=> b!1057796 d!300374))

(declare-fun d!300404 () Bool)

(assert (=> d!300404 (= (matchR!1445 lt!359316 s!10566) (matchRSpec!708 lt!359316 s!10566))))

(declare-fun lt!359360 () Unit!15493)

(declare-fun choose!6737 (Regex!2909 List!10139) Unit!15493)

(assert (=> d!300404 (= lt!359360 (choose!6737 lt!359316 s!10566))))

(assert (=> d!300404 (validRegex!1378 lt!359316)))

(assert (=> d!300404 (= (mainMatchTheorem!708 lt!359316 s!10566) lt!359360)))

(declare-fun bs!251753 () Bool)

(assert (= bs!251753 d!300404))

(assert (=> bs!251753 m!1219751))

(assert (=> bs!251753 m!1219741))

(declare-fun m!1219943 () Bool)

(assert (=> bs!251753 m!1219943))

(assert (=> bs!251753 m!1219789))

(assert (=> b!1057796 d!300404))

(declare-fun b!1058322 () Bool)

(declare-fun e!671817 () Bool)

(declare-fun e!671813 () Bool)

(assert (=> b!1058322 (= e!671817 e!671813)))

(declare-fun c!177215 () Bool)

(assert (=> b!1058322 (= c!177215 ((_ is Star!2909) (regOne!6331 r!15766)))))

(declare-fun b!1058323 () Bool)

(declare-fun e!671812 () Bool)

(declare-fun call!75806 () Bool)

(assert (=> b!1058323 (= e!671812 call!75806)))

(declare-fun b!1058324 () Bool)

(declare-fun res!473111 () Bool)

(declare-fun e!671811 () Bool)

(assert (=> b!1058324 (=> (not res!473111) (not e!671811))))

(declare-fun call!75805 () Bool)

(assert (=> b!1058324 (= res!473111 call!75805)))

(declare-fun e!671815 () Bool)

(assert (=> b!1058324 (= e!671815 e!671811)))

(declare-fun c!177216 () Bool)

(declare-fun call!75807 () Bool)

(declare-fun bm!75801 () Bool)

(assert (=> bm!75801 (= call!75807 (validRegex!1378 (ite c!177215 (reg!3238 (regOne!6331 r!15766)) (ite c!177216 (regTwo!6331 (regOne!6331 r!15766)) (regTwo!6330 (regOne!6331 r!15766))))))))

(declare-fun b!1058325 () Bool)

(declare-fun e!671816 () Bool)

(assert (=> b!1058325 (= e!671816 e!671812)))

(declare-fun res!473108 () Bool)

(assert (=> b!1058325 (=> (not res!473108) (not e!671812))))

(assert (=> b!1058325 (= res!473108 call!75805)))

(declare-fun b!1058326 () Bool)

(assert (=> b!1058326 (= e!671811 call!75806)))

(declare-fun b!1058327 () Bool)

(declare-fun e!671814 () Bool)

(assert (=> b!1058327 (= e!671813 e!671814)))

(declare-fun res!473109 () Bool)

(assert (=> b!1058327 (= res!473109 (not (nullable!1001 (reg!3238 (regOne!6331 r!15766)))))))

(assert (=> b!1058327 (=> (not res!473109) (not e!671814))))

(declare-fun b!1058328 () Bool)

(assert (=> b!1058328 (= e!671814 call!75807)))

(declare-fun bm!75802 () Bool)

(assert (=> bm!75802 (= call!75806 call!75807)))

(declare-fun b!1058329 () Bool)

(assert (=> b!1058329 (= e!671813 e!671815)))

(assert (=> b!1058329 (= c!177216 ((_ is Union!2909) (regOne!6331 r!15766)))))

(declare-fun b!1058330 () Bool)

(declare-fun res!473112 () Bool)

(assert (=> b!1058330 (=> res!473112 e!671816)))

(assert (=> b!1058330 (= res!473112 (not ((_ is Concat!4742) (regOne!6331 r!15766))))))

(assert (=> b!1058330 (= e!671815 e!671816)))

(declare-fun bm!75800 () Bool)

(assert (=> bm!75800 (= call!75805 (validRegex!1378 (ite c!177216 (regOne!6331 (regOne!6331 r!15766)) (regOne!6330 (regOne!6331 r!15766)))))))

(declare-fun d!300406 () Bool)

(declare-fun res!473110 () Bool)

(assert (=> d!300406 (=> res!473110 e!671817)))

(assert (=> d!300406 (= res!473110 ((_ is ElementMatch!2909) (regOne!6331 r!15766)))))

(assert (=> d!300406 (= (validRegex!1378 (regOne!6331 r!15766)) e!671817)))

(assert (= (and d!300406 (not res!473110)) b!1058322))

(assert (= (and b!1058322 c!177215) b!1058327))

(assert (= (and b!1058322 (not c!177215)) b!1058329))

(assert (= (and b!1058327 res!473109) b!1058328))

(assert (= (and b!1058329 c!177216) b!1058324))

(assert (= (and b!1058329 (not c!177216)) b!1058330))

(assert (= (and b!1058324 res!473111) b!1058326))

(assert (= (and b!1058330 (not res!473112)) b!1058325))

(assert (= (and b!1058325 res!473108) b!1058323))

(assert (= (or b!1058326 b!1058323) bm!75802))

(assert (= (or b!1058324 b!1058325) bm!75800))

(assert (= (or b!1058328 bm!75802) bm!75801))

(declare-fun m!1219945 () Bool)

(assert (=> bm!75801 m!1219945))

(declare-fun m!1219947 () Bool)

(assert (=> b!1058327 m!1219947))

(declare-fun m!1219949 () Bool)

(assert (=> bm!75800 m!1219949))

(assert (=> b!1057797 d!300406))

(declare-fun b!1058331 () Bool)

(declare-fun e!671824 () Bool)

(declare-fun e!671820 () Bool)

(assert (=> b!1058331 (= e!671824 e!671820)))

(declare-fun c!177217 () Bool)

(assert (=> b!1058331 (= c!177217 ((_ is Star!2909) r!15766))))

(declare-fun b!1058332 () Bool)

(declare-fun e!671819 () Bool)

(declare-fun call!75809 () Bool)

(assert (=> b!1058332 (= e!671819 call!75809)))

(declare-fun b!1058333 () Bool)

(declare-fun res!473116 () Bool)

(declare-fun e!671818 () Bool)

(assert (=> b!1058333 (=> (not res!473116) (not e!671818))))

(declare-fun call!75808 () Bool)

(assert (=> b!1058333 (= res!473116 call!75808)))

(declare-fun e!671822 () Bool)

(assert (=> b!1058333 (= e!671822 e!671818)))

(declare-fun call!75810 () Bool)

(declare-fun c!177218 () Bool)

(declare-fun bm!75804 () Bool)

(assert (=> bm!75804 (= call!75810 (validRegex!1378 (ite c!177217 (reg!3238 r!15766) (ite c!177218 (regTwo!6331 r!15766) (regTwo!6330 r!15766)))))))

(declare-fun b!1058334 () Bool)

(declare-fun e!671823 () Bool)

(assert (=> b!1058334 (= e!671823 e!671819)))

(declare-fun res!473113 () Bool)

(assert (=> b!1058334 (=> (not res!473113) (not e!671819))))

(assert (=> b!1058334 (= res!473113 call!75808)))

(declare-fun b!1058335 () Bool)

(assert (=> b!1058335 (= e!671818 call!75809)))

(declare-fun b!1058336 () Bool)

(declare-fun e!671821 () Bool)

(assert (=> b!1058336 (= e!671820 e!671821)))

(declare-fun res!473114 () Bool)

(assert (=> b!1058336 (= res!473114 (not (nullable!1001 (reg!3238 r!15766))))))

(assert (=> b!1058336 (=> (not res!473114) (not e!671821))))

(declare-fun b!1058337 () Bool)

(assert (=> b!1058337 (= e!671821 call!75810)))

(declare-fun bm!75805 () Bool)

(assert (=> bm!75805 (= call!75809 call!75810)))

(declare-fun b!1058338 () Bool)

(assert (=> b!1058338 (= e!671820 e!671822)))

(assert (=> b!1058338 (= c!177218 ((_ is Union!2909) r!15766))))

(declare-fun b!1058339 () Bool)

(declare-fun res!473117 () Bool)

(assert (=> b!1058339 (=> res!473117 e!671823)))

(assert (=> b!1058339 (= res!473117 (not ((_ is Concat!4742) r!15766)))))

(assert (=> b!1058339 (= e!671822 e!671823)))

(declare-fun bm!75803 () Bool)

(assert (=> bm!75803 (= call!75808 (validRegex!1378 (ite c!177218 (regOne!6331 r!15766) (regOne!6330 r!15766))))))

(declare-fun d!300408 () Bool)

(declare-fun res!473115 () Bool)

(assert (=> d!300408 (=> res!473115 e!671824)))

(assert (=> d!300408 (= res!473115 ((_ is ElementMatch!2909) r!15766))))

(assert (=> d!300408 (= (validRegex!1378 r!15766) e!671824)))

(assert (= (and d!300408 (not res!473115)) b!1058331))

(assert (= (and b!1058331 c!177217) b!1058336))

(assert (= (and b!1058331 (not c!177217)) b!1058338))

(assert (= (and b!1058336 res!473114) b!1058337))

(assert (= (and b!1058338 c!177218) b!1058333))

(assert (= (and b!1058338 (not c!177218)) b!1058339))

(assert (= (and b!1058333 res!473116) b!1058335))

(assert (= (and b!1058339 (not res!473117)) b!1058334))

(assert (= (and b!1058334 res!473113) b!1058332))

(assert (= (or b!1058335 b!1058332) bm!75805))

(assert (= (or b!1058333 b!1058334) bm!75803))

(assert (= (or b!1058337 bm!75805) bm!75804))

(declare-fun m!1219951 () Bool)

(assert (=> bm!75804 m!1219951))

(declare-fun m!1219953 () Bool)

(assert (=> b!1058336 m!1219953))

(declare-fun m!1219955 () Bool)

(assert (=> bm!75803 m!1219955))

(assert (=> start!91026 d!300408))

(declare-fun bs!251754 () Bool)

(declare-fun b!1058350 () Bool)

(assert (= bs!251754 (and b!1058350 b!1058299)))

(declare-fun lambda!38267 () Int)

(assert (=> bs!251754 (= (and (= (reg!3238 r!15766) (reg!3238 lt!359316)) (= r!15766 lt!359316)) (= lambda!38267 lambda!38265))))

(declare-fun bs!251755 () Bool)

(assert (= bs!251755 (and b!1058350 b!1058290)))

(assert (=> bs!251755 (not (= lambda!38267 lambda!38266))))

(assert (=> b!1058350 true))

(assert (=> b!1058350 true))

(declare-fun bs!251756 () Bool)

(declare-fun b!1058341 () Bool)

(assert (= bs!251756 (and b!1058341 b!1058299)))

(declare-fun lambda!38268 () Int)

(assert (=> bs!251756 (not (= lambda!38268 lambda!38265))))

(declare-fun bs!251757 () Bool)

(assert (= bs!251757 (and b!1058341 b!1058290)))

(assert (=> bs!251757 (= (and (= (regOne!6330 r!15766) (regOne!6330 lt!359316)) (= (regTwo!6330 r!15766) (regTwo!6330 lt!359316))) (= lambda!38268 lambda!38266))))

(declare-fun bs!251758 () Bool)

(assert (= bs!251758 (and b!1058341 b!1058350)))

(assert (=> bs!251758 (not (= lambda!38268 lambda!38267))))

(assert (=> b!1058341 true))

(assert (=> b!1058341 true))

(declare-fun b!1058340 () Bool)

(declare-fun e!671825 () Bool)

(declare-fun e!671830 () Bool)

(assert (=> b!1058340 (= e!671825 e!671830)))

(declare-fun res!473119 () Bool)

(assert (=> b!1058340 (= res!473119 (matchRSpec!708 (regOne!6331 r!15766) s!10566))))

(assert (=> b!1058340 (=> res!473119 e!671830)))

(declare-fun e!671827 () Bool)

(declare-fun call!75812 () Bool)

(assert (=> b!1058341 (= e!671827 call!75812)))

(declare-fun b!1058342 () Bool)

(declare-fun c!177221 () Bool)

(assert (=> b!1058342 (= c!177221 ((_ is Union!2909) r!15766))))

(declare-fun e!671829 () Bool)

(assert (=> b!1058342 (= e!671829 e!671825)))

(declare-fun b!1058343 () Bool)

(declare-fun res!473120 () Bool)

(declare-fun e!671831 () Bool)

(assert (=> b!1058343 (=> res!473120 e!671831)))

(declare-fun call!75811 () Bool)

(assert (=> b!1058343 (= res!473120 call!75811)))

(assert (=> b!1058343 (= e!671827 e!671831)))

(declare-fun b!1058344 () Bool)

(assert (=> b!1058344 (= e!671830 (matchRSpec!708 (regTwo!6331 r!15766) s!10566))))

(declare-fun b!1058345 () Bool)

(assert (=> b!1058345 (= e!671825 e!671827)))

(declare-fun c!177222 () Bool)

(assert (=> b!1058345 (= c!177222 ((_ is Star!2909) r!15766))))

(declare-fun b!1058346 () Bool)

(assert (=> b!1058346 (= e!671829 (= s!10566 (Cons!10123 (c!177070 r!15766) Nil!10123)))))

(declare-fun bm!75806 () Bool)

(assert (=> bm!75806 (= call!75812 (Exists!636 (ite c!177222 lambda!38267 lambda!38268)))))

(declare-fun b!1058347 () Bool)

(declare-fun c!177219 () Bool)

(assert (=> b!1058347 (= c!177219 ((_ is ElementMatch!2909) r!15766))))

(declare-fun e!671826 () Bool)

(assert (=> b!1058347 (= e!671826 e!671829)))

(declare-fun b!1058348 () Bool)

(declare-fun e!671828 () Bool)

(assert (=> b!1058348 (= e!671828 call!75811)))

(declare-fun d!300410 () Bool)

(declare-fun c!177220 () Bool)

(assert (=> d!300410 (= c!177220 ((_ is EmptyExpr!2909) r!15766))))

(assert (=> d!300410 (= (matchRSpec!708 r!15766 s!10566) e!671828)))

(declare-fun b!1058349 () Bool)

(assert (=> b!1058349 (= e!671828 e!671826)))

(declare-fun res!473118 () Bool)

(assert (=> b!1058349 (= res!473118 (not ((_ is EmptyLang!2909) r!15766)))))

(assert (=> b!1058349 (=> (not res!473118) (not e!671826))))

(assert (=> b!1058350 (= e!671831 call!75812)))

(declare-fun bm!75807 () Bool)

(assert (=> bm!75807 (= call!75811 (isEmpty!6541 s!10566))))

(assert (= (and d!300410 c!177220) b!1058348))

(assert (= (and d!300410 (not c!177220)) b!1058349))

(assert (= (and b!1058349 res!473118) b!1058347))

(assert (= (and b!1058347 c!177219) b!1058346))

(assert (= (and b!1058347 (not c!177219)) b!1058342))

(assert (= (and b!1058342 c!177221) b!1058340))

(assert (= (and b!1058342 (not c!177221)) b!1058345))

(assert (= (and b!1058340 (not res!473119)) b!1058344))

(assert (= (and b!1058345 c!177222) b!1058343))

(assert (= (and b!1058345 (not c!177222)) b!1058341))

(assert (= (and b!1058343 (not res!473120)) b!1058350))

(assert (= (or b!1058350 b!1058341) bm!75806))

(assert (= (or b!1058348 b!1058343) bm!75807))

(declare-fun m!1219957 () Bool)

(assert (=> b!1058340 m!1219957))

(declare-fun m!1219959 () Bool)

(assert (=> b!1058344 m!1219959))

(declare-fun m!1219961 () Bool)

(assert (=> bm!75806 m!1219961))

(assert (=> bm!75807 m!1219775))

(assert (=> b!1057789 d!300410))

(declare-fun d!300412 () Bool)

(declare-fun e!671837 () Bool)

(assert (=> d!300412 e!671837))

(declare-fun c!177223 () Bool)

(assert (=> d!300412 (= c!177223 ((_ is EmptyExpr!2909) r!15766))))

(declare-fun lt!359361 () Bool)

(declare-fun e!671836 () Bool)

(assert (=> d!300412 (= lt!359361 e!671836)))

(declare-fun c!177225 () Bool)

(assert (=> d!300412 (= c!177225 (isEmpty!6541 s!10566))))

(assert (=> d!300412 (validRegex!1378 r!15766)))

(assert (=> d!300412 (= (matchR!1445 r!15766 s!10566) lt!359361)))

(declare-fun b!1058351 () Bool)

(declare-fun res!473124 () Bool)

(declare-fun e!671834 () Bool)

(assert (=> b!1058351 (=> (not res!473124) (not e!671834))))

(assert (=> b!1058351 (= res!473124 (isEmpty!6541 (tail!1518 s!10566)))))

(declare-fun bm!75808 () Bool)

(declare-fun call!75813 () Bool)

(assert (=> bm!75808 (= call!75813 (isEmpty!6541 s!10566))))

(declare-fun b!1058352 () Bool)

(declare-fun res!473127 () Bool)

(declare-fun e!671832 () Bool)

(assert (=> b!1058352 (=> res!473127 e!671832)))

(assert (=> b!1058352 (= res!473127 e!671834)))

(declare-fun res!473123 () Bool)

(assert (=> b!1058352 (=> (not res!473123) (not e!671834))))

(assert (=> b!1058352 (= res!473123 lt!359361)))

(declare-fun b!1058353 () Bool)

(declare-fun e!671838 () Bool)

(declare-fun e!671835 () Bool)

(assert (=> b!1058353 (= e!671838 e!671835)))

(declare-fun res!473122 () Bool)

(assert (=> b!1058353 (=> res!473122 e!671835)))

(assert (=> b!1058353 (= res!473122 call!75813)))

(declare-fun b!1058354 () Bool)

(declare-fun res!473125 () Bool)

(assert (=> b!1058354 (=> (not res!473125) (not e!671834))))

(assert (=> b!1058354 (= res!473125 (not call!75813))))

(declare-fun b!1058355 () Bool)

(assert (=> b!1058355 (= e!671836 (matchR!1445 (derivativeStep!801 r!15766 (head!1956 s!10566)) (tail!1518 s!10566)))))

(declare-fun b!1058356 () Bool)

(assert (=> b!1058356 (= e!671835 (not (= (head!1956 s!10566) (c!177070 r!15766))))))

(declare-fun b!1058357 () Bool)

(declare-fun res!473128 () Bool)

(assert (=> b!1058357 (=> res!473128 e!671832)))

(assert (=> b!1058357 (= res!473128 (not ((_ is ElementMatch!2909) r!15766)))))

(declare-fun e!671833 () Bool)

(assert (=> b!1058357 (= e!671833 e!671832)))

(declare-fun b!1058358 () Bool)

(assert (=> b!1058358 (= e!671833 (not lt!359361))))

(declare-fun b!1058359 () Bool)

(assert (=> b!1058359 (= e!671834 (= (head!1956 s!10566) (c!177070 r!15766)))))

(declare-fun b!1058360 () Bool)

(declare-fun res!473126 () Bool)

(assert (=> b!1058360 (=> res!473126 e!671835)))

(assert (=> b!1058360 (= res!473126 (not (isEmpty!6541 (tail!1518 s!10566))))))

(declare-fun b!1058361 () Bool)

(assert (=> b!1058361 (= e!671837 (= lt!359361 call!75813))))

(declare-fun b!1058362 () Bool)

(assert (=> b!1058362 (= e!671836 (nullable!1001 r!15766))))

(declare-fun b!1058363 () Bool)

(assert (=> b!1058363 (= e!671837 e!671833)))

(declare-fun c!177224 () Bool)

(assert (=> b!1058363 (= c!177224 ((_ is EmptyLang!2909) r!15766))))

(declare-fun b!1058364 () Bool)

(assert (=> b!1058364 (= e!671832 e!671838)))

(declare-fun res!473121 () Bool)

(assert (=> b!1058364 (=> (not res!473121) (not e!671838))))

(assert (=> b!1058364 (= res!473121 (not lt!359361))))

(assert (= (and d!300412 c!177225) b!1058362))

(assert (= (and d!300412 (not c!177225)) b!1058355))

(assert (= (and d!300412 c!177223) b!1058361))

(assert (= (and d!300412 (not c!177223)) b!1058363))

(assert (= (and b!1058363 c!177224) b!1058358))

(assert (= (and b!1058363 (not c!177224)) b!1058357))

(assert (= (and b!1058357 (not res!473128)) b!1058352))

(assert (= (and b!1058352 res!473123) b!1058354))

(assert (= (and b!1058354 res!473125) b!1058351))

(assert (= (and b!1058351 res!473124) b!1058359))

(assert (= (and b!1058352 (not res!473127)) b!1058364))

(assert (= (and b!1058364 res!473121) b!1058353))

(assert (= (and b!1058353 (not res!473122)) b!1058360))

(assert (= (and b!1058360 (not res!473126)) b!1058356))

(assert (= (or b!1058361 b!1058353 b!1058354) bm!75808))

(assert (=> bm!75808 m!1219775))

(assert (=> b!1058355 m!1219777))

(assert (=> b!1058355 m!1219777))

(declare-fun m!1219963 () Bool)

(assert (=> b!1058355 m!1219963))

(assert (=> b!1058355 m!1219781))

(assert (=> b!1058355 m!1219963))

(assert (=> b!1058355 m!1219781))

(declare-fun m!1219965 () Bool)

(assert (=> b!1058355 m!1219965))

(assert (=> b!1058359 m!1219777))

(assert (=> b!1058360 m!1219781))

(assert (=> b!1058360 m!1219781))

(assert (=> b!1058360 m!1219785))

(declare-fun m!1219967 () Bool)

(assert (=> b!1058362 m!1219967))

(assert (=> b!1058356 m!1219777))

(assert (=> b!1058351 m!1219781))

(assert (=> b!1058351 m!1219781))

(assert (=> b!1058351 m!1219785))

(assert (=> d!300412 m!1219775))

(assert (=> d!300412 m!1219757))

(assert (=> b!1057789 d!300412))

(declare-fun d!300414 () Bool)

(assert (=> d!300414 (= (matchR!1445 r!15766 s!10566) (matchRSpec!708 r!15766 s!10566))))

(declare-fun lt!359362 () Unit!15493)

(assert (=> d!300414 (= lt!359362 (choose!6737 r!15766 s!10566))))

(assert (=> d!300414 (validRegex!1378 r!15766)))

(assert (=> d!300414 (= (mainMatchTheorem!708 r!15766 s!10566) lt!359362)))

(declare-fun bs!251759 () Bool)

(assert (= bs!251759 d!300414))

(assert (=> bs!251759 m!1219747))

(assert (=> bs!251759 m!1219745))

(declare-fun m!1219969 () Bool)

(assert (=> bs!251759 m!1219969))

(assert (=> bs!251759 m!1219757))

(assert (=> b!1057789 d!300414))

(declare-fun d!300416 () Bool)

(declare-fun e!671862 () Bool)

(assert (=> d!300416 e!671862))

(declare-fun res!473135 () Bool)

(assert (=> d!300416 (=> (not res!473135) (not e!671862))))

(declare-fun lt!359365 () Int)

(assert (=> d!300416 (= res!473135 (> lt!359365 0))))

(declare-fun e!671868 () Int)

(assert (=> d!300416 (= lt!359365 e!671868)))

(declare-fun c!177242 () Bool)

(assert (=> d!300416 (= c!177242 ((_ is ElementMatch!2909) r!15766))))

(assert (=> d!300416 (= (regexDepth!40 r!15766) lt!359365)))

(declare-fun b!1058399 () Bool)

(declare-fun res!473136 () Bool)

(declare-fun e!671860 () Bool)

(assert (=> b!1058399 (=> (not res!473136) (not e!671860))))

(declare-fun call!75832 () Int)

(assert (=> b!1058399 (= res!473136 (> lt!359365 call!75832))))

(declare-fun e!671863 () Bool)

(assert (=> b!1058399 (= e!671863 e!671860)))

(declare-fun bm!75823 () Bool)

(declare-fun call!75829 () Int)

(declare-fun call!75834 () Int)

(assert (=> bm!75823 (= call!75829 call!75834)))

(declare-fun bm!75824 () Bool)

(declare-fun call!75828 () Int)

(declare-fun call!75831 () Int)

(assert (=> bm!75824 (= call!75828 call!75831)))

(declare-fun b!1058400 () Bool)

(assert (=> b!1058400 (= e!671860 (> lt!359365 call!75828))))

(declare-fun bm!75825 () Bool)

(declare-fun call!75833 () Int)

(declare-fun call!75830 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!75825 (= call!75833 (maxBigInt!0 call!75829 call!75830))))

(declare-fun b!1058401 () Bool)

(declare-fun e!671864 () Bool)

(assert (=> b!1058401 (= e!671864 (> lt!359365 call!75828))))

(declare-fun b!1058402 () Bool)

(declare-fun e!671859 () Int)

(assert (=> b!1058402 (= e!671868 e!671859)))

(declare-fun c!177245 () Bool)

(assert (=> b!1058402 (= c!177245 ((_ is Star!2909) r!15766))))

(declare-fun b!1058403 () Bool)

(declare-fun e!671865 () Int)

(assert (=> b!1058403 (= e!671865 (+ 1 call!75833))))

(declare-fun b!1058404 () Bool)

(declare-fun e!671867 () Bool)

(assert (=> b!1058404 (= e!671867 (> lt!359365 call!75831))))

(declare-fun b!1058405 () Bool)

(declare-fun c!177244 () Bool)

(assert (=> b!1058405 (= c!177244 ((_ is Union!2909) r!15766))))

(assert (=> b!1058405 (= e!671859 e!671865)))

(declare-fun b!1058406 () Bool)

(assert (=> b!1058406 (= e!671868 1)))

(declare-fun bm!75826 () Bool)

(assert (=> bm!75826 (= call!75834 (regexDepth!40 (ite c!177245 (reg!3238 r!15766) (ite c!177244 (regOne!6331 r!15766) (regOne!6330 r!15766)))))))

(declare-fun bm!75827 () Bool)

(declare-fun c!177246 () Bool)

(assert (=> bm!75827 (= call!75832 (regexDepth!40 (ite c!177246 (regOne!6331 r!15766) (regOne!6330 r!15766))))))

(declare-fun b!1058407 () Bool)

(declare-fun e!671866 () Int)

(assert (=> b!1058407 (= e!671866 (+ 1 call!75833))))

(declare-fun b!1058408 () Bool)

(assert (=> b!1058408 (= e!671859 (+ 1 call!75834))))

(declare-fun b!1058409 () Bool)

(declare-fun e!671861 () Bool)

(assert (=> b!1058409 (= e!671862 e!671861)))

(assert (=> b!1058409 (= c!177246 ((_ is Union!2909) r!15766))))

(declare-fun b!1058410 () Bool)

(assert (=> b!1058410 (= e!671865 e!671866)))

(declare-fun c!177240 () Bool)

(assert (=> b!1058410 (= c!177240 ((_ is Concat!4742) r!15766))))

(declare-fun b!1058411 () Bool)

(assert (=> b!1058411 (= e!671864 (= lt!359365 1))))

(declare-fun b!1058412 () Bool)

(assert (=> b!1058412 (= e!671861 e!671867)))

(declare-fun res!473137 () Bool)

(assert (=> b!1058412 (= res!473137 (> lt!359365 call!75832))))

(assert (=> b!1058412 (=> (not res!473137) (not e!671867))))

(declare-fun b!1058413 () Bool)

(assert (=> b!1058413 (= e!671866 1)))

(declare-fun bm!75828 () Bool)

(assert (=> bm!75828 (= call!75830 (regexDepth!40 (ite c!177244 (regTwo!6331 r!15766) (regTwo!6330 r!15766))))))

(declare-fun b!1058414 () Bool)

(declare-fun c!177241 () Bool)

(assert (=> b!1058414 (= c!177241 ((_ is Star!2909) r!15766))))

(assert (=> b!1058414 (= e!671863 e!671864)))

(declare-fun b!1058415 () Bool)

(assert (=> b!1058415 (= e!671861 e!671863)))

(declare-fun c!177243 () Bool)

(assert (=> b!1058415 (= c!177243 ((_ is Concat!4742) r!15766))))

(declare-fun bm!75829 () Bool)

(assert (=> bm!75829 (= call!75831 (regexDepth!40 (ite c!177246 (regTwo!6331 r!15766) (ite c!177243 (regTwo!6330 r!15766) (reg!3238 r!15766)))))))

(assert (= (and d!300416 c!177242) b!1058406))

(assert (= (and d!300416 (not c!177242)) b!1058402))

(assert (= (and b!1058402 c!177245) b!1058408))

(assert (= (and b!1058402 (not c!177245)) b!1058405))

(assert (= (and b!1058405 c!177244) b!1058403))

(assert (= (and b!1058405 (not c!177244)) b!1058410))

(assert (= (and b!1058410 c!177240) b!1058407))

(assert (= (and b!1058410 (not c!177240)) b!1058413))

(assert (= (or b!1058403 b!1058407) bm!75828))

(assert (= (or b!1058403 b!1058407) bm!75823))

(assert (= (or b!1058403 b!1058407) bm!75825))

(assert (= (or b!1058408 bm!75823) bm!75826))

(assert (= (and d!300416 res!473135) b!1058409))

(assert (= (and b!1058409 c!177246) b!1058412))

(assert (= (and b!1058409 (not c!177246)) b!1058415))

(assert (= (and b!1058412 res!473137) b!1058404))

(assert (= (and b!1058415 c!177243) b!1058399))

(assert (= (and b!1058415 (not c!177243)) b!1058414))

(assert (= (and b!1058399 res!473136) b!1058400))

(assert (= (and b!1058414 c!177241) b!1058401))

(assert (= (and b!1058414 (not c!177241)) b!1058411))

(assert (= (or b!1058400 b!1058401) bm!75824))

(assert (= (or b!1058404 bm!75824) bm!75829))

(assert (= (or b!1058412 b!1058399) bm!75827))

(declare-fun m!1219971 () Bool)

(assert (=> bm!75828 m!1219971))

(declare-fun m!1219973 () Bool)

(assert (=> bm!75827 m!1219973))

(declare-fun m!1219975 () Bool)

(assert (=> bm!75825 m!1219975))

(declare-fun m!1219977 () Bool)

(assert (=> bm!75826 m!1219977))

(declare-fun m!1219979 () Bool)

(assert (=> bm!75829 m!1219979))

(assert (=> b!1057794 d!300416))

(declare-fun d!300418 () Bool)

(declare-fun lt!359368 () Int)

(assert (=> d!300418 (>= lt!359368 0)))

(declare-fun e!671871 () Int)

(assert (=> d!300418 (= lt!359368 e!671871)))

(declare-fun c!177249 () Bool)

(assert (=> d!300418 (= c!177249 ((_ is Nil!10123) s!10566))))

(assert (=> d!300418 (= (size!8002 s!10566) lt!359368)))

(declare-fun b!1058420 () Bool)

(assert (=> b!1058420 (= e!671871 0)))

(declare-fun b!1058421 () Bool)

(assert (=> b!1058421 (= e!671871 (+ 1 (size!8002 (t!101185 s!10566))))))

(assert (= (and d!300418 c!177249) b!1058420))

(assert (= (and d!300418 (not c!177249)) b!1058421))

(declare-fun m!1219981 () Bool)

(assert (=> b!1058421 m!1219981))

(assert (=> b!1057794 d!300418))

(declare-fun d!300420 () Bool)

(declare-fun e!671875 () Bool)

(assert (=> d!300420 e!671875))

(declare-fun res!473138 () Bool)

(assert (=> d!300420 (=> (not res!473138) (not e!671875))))

(declare-fun lt!359369 () Int)

(assert (=> d!300420 (= res!473138 (> lt!359369 0))))

(declare-fun e!671881 () Int)

(assert (=> d!300420 (= lt!359369 e!671881)))

(declare-fun c!177252 () Bool)

(assert (=> d!300420 (= c!177252 ((_ is ElementMatch!2909) (regOne!6331 r!15766)))))

(assert (=> d!300420 (= (regexDepth!40 (regOne!6331 r!15766)) lt!359369)))

(declare-fun b!1058422 () Bool)

(declare-fun res!473139 () Bool)

(declare-fun e!671873 () Bool)

(assert (=> b!1058422 (=> (not res!473139) (not e!671873))))

(declare-fun call!75839 () Int)

(assert (=> b!1058422 (= res!473139 (> lt!359369 call!75839))))

(declare-fun e!671876 () Bool)

(assert (=> b!1058422 (= e!671876 e!671873)))

(declare-fun bm!75830 () Bool)

(declare-fun call!75836 () Int)

(declare-fun call!75841 () Int)

(assert (=> bm!75830 (= call!75836 call!75841)))

(declare-fun bm!75831 () Bool)

(declare-fun call!75835 () Int)

(declare-fun call!75838 () Int)

(assert (=> bm!75831 (= call!75835 call!75838)))

(declare-fun b!1058423 () Bool)

(assert (=> b!1058423 (= e!671873 (> lt!359369 call!75835))))

(declare-fun bm!75832 () Bool)

(declare-fun call!75840 () Int)

(declare-fun call!75837 () Int)

(assert (=> bm!75832 (= call!75840 (maxBigInt!0 call!75836 call!75837))))

(declare-fun b!1058424 () Bool)

(declare-fun e!671877 () Bool)

(assert (=> b!1058424 (= e!671877 (> lt!359369 call!75835))))

(declare-fun b!1058425 () Bool)

(declare-fun e!671872 () Int)

(assert (=> b!1058425 (= e!671881 e!671872)))

(declare-fun c!177255 () Bool)

(assert (=> b!1058425 (= c!177255 ((_ is Star!2909) (regOne!6331 r!15766)))))

(declare-fun b!1058426 () Bool)

(declare-fun e!671878 () Int)

(assert (=> b!1058426 (= e!671878 (+ 1 call!75840))))

(declare-fun b!1058427 () Bool)

(declare-fun e!671880 () Bool)

(assert (=> b!1058427 (= e!671880 (> lt!359369 call!75838))))

(declare-fun b!1058428 () Bool)

(declare-fun c!177254 () Bool)

(assert (=> b!1058428 (= c!177254 ((_ is Union!2909) (regOne!6331 r!15766)))))

(assert (=> b!1058428 (= e!671872 e!671878)))

(declare-fun b!1058429 () Bool)

(assert (=> b!1058429 (= e!671881 1)))

(declare-fun bm!75833 () Bool)

(assert (=> bm!75833 (= call!75841 (regexDepth!40 (ite c!177255 (reg!3238 (regOne!6331 r!15766)) (ite c!177254 (regOne!6331 (regOne!6331 r!15766)) (regOne!6330 (regOne!6331 r!15766))))))))

(declare-fun bm!75834 () Bool)

(declare-fun c!177256 () Bool)

(assert (=> bm!75834 (= call!75839 (regexDepth!40 (ite c!177256 (regOne!6331 (regOne!6331 r!15766)) (regOne!6330 (regOne!6331 r!15766)))))))

(declare-fun b!1058430 () Bool)

(declare-fun e!671879 () Int)

(assert (=> b!1058430 (= e!671879 (+ 1 call!75840))))

(declare-fun b!1058431 () Bool)

(assert (=> b!1058431 (= e!671872 (+ 1 call!75841))))

(declare-fun b!1058432 () Bool)

(declare-fun e!671874 () Bool)

(assert (=> b!1058432 (= e!671875 e!671874)))

(assert (=> b!1058432 (= c!177256 ((_ is Union!2909) (regOne!6331 r!15766)))))

(declare-fun b!1058433 () Bool)

(assert (=> b!1058433 (= e!671878 e!671879)))

(declare-fun c!177250 () Bool)

(assert (=> b!1058433 (= c!177250 ((_ is Concat!4742) (regOne!6331 r!15766)))))

(declare-fun b!1058434 () Bool)

(assert (=> b!1058434 (= e!671877 (= lt!359369 1))))

(declare-fun b!1058435 () Bool)

(assert (=> b!1058435 (= e!671874 e!671880)))

(declare-fun res!473140 () Bool)

(assert (=> b!1058435 (= res!473140 (> lt!359369 call!75839))))

(assert (=> b!1058435 (=> (not res!473140) (not e!671880))))

(declare-fun b!1058436 () Bool)

(assert (=> b!1058436 (= e!671879 1)))

(declare-fun bm!75835 () Bool)

(assert (=> bm!75835 (= call!75837 (regexDepth!40 (ite c!177254 (regTwo!6331 (regOne!6331 r!15766)) (regTwo!6330 (regOne!6331 r!15766)))))))

(declare-fun b!1058437 () Bool)

(declare-fun c!177251 () Bool)

(assert (=> b!1058437 (= c!177251 ((_ is Star!2909) (regOne!6331 r!15766)))))

(assert (=> b!1058437 (= e!671876 e!671877)))

(declare-fun b!1058438 () Bool)

(assert (=> b!1058438 (= e!671874 e!671876)))

(declare-fun c!177253 () Bool)

(assert (=> b!1058438 (= c!177253 ((_ is Concat!4742) (regOne!6331 r!15766)))))

(declare-fun bm!75836 () Bool)

(assert (=> bm!75836 (= call!75838 (regexDepth!40 (ite c!177256 (regTwo!6331 (regOne!6331 r!15766)) (ite c!177253 (regTwo!6330 (regOne!6331 r!15766)) (reg!3238 (regOne!6331 r!15766))))))))

(assert (= (and d!300420 c!177252) b!1058429))

(assert (= (and d!300420 (not c!177252)) b!1058425))

(assert (= (and b!1058425 c!177255) b!1058431))

(assert (= (and b!1058425 (not c!177255)) b!1058428))

(assert (= (and b!1058428 c!177254) b!1058426))

(assert (= (and b!1058428 (not c!177254)) b!1058433))

(assert (= (and b!1058433 c!177250) b!1058430))

(assert (= (and b!1058433 (not c!177250)) b!1058436))

(assert (= (or b!1058426 b!1058430) bm!75835))

(assert (= (or b!1058426 b!1058430) bm!75830))

(assert (= (or b!1058426 b!1058430) bm!75832))

(assert (= (or b!1058431 bm!75830) bm!75833))

(assert (= (and d!300420 res!473138) b!1058432))

(assert (= (and b!1058432 c!177256) b!1058435))

(assert (= (and b!1058432 (not c!177256)) b!1058438))

(assert (= (and b!1058435 res!473140) b!1058427))

(assert (= (and b!1058438 c!177253) b!1058422))

(assert (= (and b!1058438 (not c!177253)) b!1058437))

(assert (= (and b!1058422 res!473139) b!1058423))

(assert (= (and b!1058437 c!177251) b!1058424))

(assert (= (and b!1058437 (not c!177251)) b!1058434))

(assert (= (or b!1058423 b!1058424) bm!75831))

(assert (= (or b!1058427 bm!75831) bm!75836))

(assert (= (or b!1058435 b!1058422) bm!75834))

(declare-fun m!1219983 () Bool)

(assert (=> bm!75835 m!1219983))

(declare-fun m!1219985 () Bool)

(assert (=> bm!75834 m!1219985))

(declare-fun m!1219987 () Bool)

(assert (=> bm!75832 m!1219987))

(declare-fun m!1219989 () Bool)

(assert (=> bm!75833 m!1219989))

(declare-fun m!1219991 () Bool)

(assert (=> bm!75836 m!1219991))

(assert (=> b!1057794 d!300420))

(declare-fun b!1058443 () Bool)

(declare-fun e!671884 () Bool)

(declare-fun tp!318269 () Bool)

(assert (=> b!1058443 (= e!671884 (and tp_is_empty!5461 tp!318269))))

(assert (=> b!1057798 (= tp!318228 e!671884)))

(assert (= (and b!1057798 ((_ is Cons!10123) (t!101185 s!10566))) b!1058443))

(declare-fun b!1058456 () Bool)

(declare-fun e!671887 () Bool)

(declare-fun tp!318282 () Bool)

(assert (=> b!1058456 (= e!671887 tp!318282)))

(assert (=> b!1057791 (= tp!318223 e!671887)))

(declare-fun b!1058454 () Bool)

(assert (=> b!1058454 (= e!671887 tp_is_empty!5461)))

(declare-fun b!1058457 () Bool)

(declare-fun tp!318281 () Bool)

(declare-fun tp!318284 () Bool)

(assert (=> b!1058457 (= e!671887 (and tp!318281 tp!318284))))

(declare-fun b!1058455 () Bool)

(declare-fun tp!318283 () Bool)

(declare-fun tp!318280 () Bool)

(assert (=> b!1058455 (= e!671887 (and tp!318283 tp!318280))))

(assert (= (and b!1057791 ((_ is ElementMatch!2909) (regOne!6331 r!15766))) b!1058454))

(assert (= (and b!1057791 ((_ is Concat!4742) (regOne!6331 r!15766))) b!1058455))

(assert (= (and b!1057791 ((_ is Star!2909) (regOne!6331 r!15766))) b!1058456))

(assert (= (and b!1057791 ((_ is Union!2909) (regOne!6331 r!15766))) b!1058457))

(declare-fun b!1058460 () Bool)

(declare-fun e!671888 () Bool)

(declare-fun tp!318287 () Bool)

(assert (=> b!1058460 (= e!671888 tp!318287)))

(assert (=> b!1057791 (= tp!318224 e!671888)))

(declare-fun b!1058458 () Bool)

(assert (=> b!1058458 (= e!671888 tp_is_empty!5461)))

(declare-fun b!1058461 () Bool)

(declare-fun tp!318286 () Bool)

(declare-fun tp!318289 () Bool)

(assert (=> b!1058461 (= e!671888 (and tp!318286 tp!318289))))

(declare-fun b!1058459 () Bool)

(declare-fun tp!318288 () Bool)

(declare-fun tp!318285 () Bool)

(assert (=> b!1058459 (= e!671888 (and tp!318288 tp!318285))))

(assert (= (and b!1057791 ((_ is ElementMatch!2909) (regTwo!6331 r!15766))) b!1058458))

(assert (= (and b!1057791 ((_ is Concat!4742) (regTwo!6331 r!15766))) b!1058459))

(assert (= (and b!1057791 ((_ is Star!2909) (regTwo!6331 r!15766))) b!1058460))

(assert (= (and b!1057791 ((_ is Union!2909) (regTwo!6331 r!15766))) b!1058461))

(declare-fun b!1058464 () Bool)

(declare-fun e!671889 () Bool)

(declare-fun tp!318292 () Bool)

(assert (=> b!1058464 (= e!671889 tp!318292)))

(assert (=> b!1057790 (= tp!318227 e!671889)))

(declare-fun b!1058462 () Bool)

(assert (=> b!1058462 (= e!671889 tp_is_empty!5461)))

(declare-fun b!1058465 () Bool)

(declare-fun tp!318291 () Bool)

(declare-fun tp!318294 () Bool)

(assert (=> b!1058465 (= e!671889 (and tp!318291 tp!318294))))

(declare-fun b!1058463 () Bool)

(declare-fun tp!318293 () Bool)

(declare-fun tp!318290 () Bool)

(assert (=> b!1058463 (= e!671889 (and tp!318293 tp!318290))))

(assert (= (and b!1057790 ((_ is ElementMatch!2909) (reg!3238 r!15766))) b!1058462))

(assert (= (and b!1057790 ((_ is Concat!4742) (reg!3238 r!15766))) b!1058463))

(assert (= (and b!1057790 ((_ is Star!2909) (reg!3238 r!15766))) b!1058464))

(assert (= (and b!1057790 ((_ is Union!2909) (reg!3238 r!15766))) b!1058465))

(declare-fun b!1058468 () Bool)

(declare-fun e!671890 () Bool)

(declare-fun tp!318297 () Bool)

(assert (=> b!1058468 (= e!671890 tp!318297)))

(assert (=> b!1057799 (= tp!318226 e!671890)))

(declare-fun b!1058466 () Bool)

(assert (=> b!1058466 (= e!671890 tp_is_empty!5461)))

(declare-fun b!1058469 () Bool)

(declare-fun tp!318296 () Bool)

(declare-fun tp!318299 () Bool)

(assert (=> b!1058469 (= e!671890 (and tp!318296 tp!318299))))

(declare-fun b!1058467 () Bool)

(declare-fun tp!318298 () Bool)

(declare-fun tp!318295 () Bool)

(assert (=> b!1058467 (= e!671890 (and tp!318298 tp!318295))))

(assert (= (and b!1057799 ((_ is ElementMatch!2909) (regOne!6330 r!15766))) b!1058466))

(assert (= (and b!1057799 ((_ is Concat!4742) (regOne!6330 r!15766))) b!1058467))

(assert (= (and b!1057799 ((_ is Star!2909) (regOne!6330 r!15766))) b!1058468))

(assert (= (and b!1057799 ((_ is Union!2909) (regOne!6330 r!15766))) b!1058469))

(declare-fun b!1058472 () Bool)

(declare-fun e!671891 () Bool)

(declare-fun tp!318302 () Bool)

(assert (=> b!1058472 (= e!671891 tp!318302)))

(assert (=> b!1057799 (= tp!318225 e!671891)))

(declare-fun b!1058470 () Bool)

(assert (=> b!1058470 (= e!671891 tp_is_empty!5461)))

(declare-fun b!1058473 () Bool)

(declare-fun tp!318301 () Bool)

(declare-fun tp!318304 () Bool)

(assert (=> b!1058473 (= e!671891 (and tp!318301 tp!318304))))

(declare-fun b!1058471 () Bool)

(declare-fun tp!318303 () Bool)

(declare-fun tp!318300 () Bool)

(assert (=> b!1058471 (= e!671891 (and tp!318303 tp!318300))))

(assert (= (and b!1057799 ((_ is ElementMatch!2909) (regTwo!6330 r!15766))) b!1058470))

(assert (= (and b!1057799 ((_ is Concat!4742) (regTwo!6330 r!15766))) b!1058471))

(assert (= (and b!1057799 ((_ is Star!2909) (regTwo!6330 r!15766))) b!1058472))

(assert (= (and b!1057799 ((_ is Union!2909) (regTwo!6330 r!15766))) b!1058473))

(check-sat (not b!1057946) (not b!1058467) (not bm!75700) (not bm!75792) (not bm!75829) (not bm!75836) (not b!1057877) (not bm!75714) (not b!1058472) (not b!1058459) (not bm!75835) (not b!1058362) (not bm!75833) (not d!300412) (not b!1057881) (not d!300370) (not d!300364) (not bm!75807) (not bm!75721) (not b!1058327) (not b!1057960) (not bm!75834) (not b!1058468) (not b!1057957) (not b!1058465) (not b!1058351) (not d!300360) (not b!1058469) (not b!1057939) (not b!1058464) (not b!1058344) (not b!1057916) (not b!1058356) (not d!300366) (not bm!75713) (not b!1058471) tp_is_empty!5461 (not b!1058473) (not d!300368) (not b!1057927) (not b!1057888) (not b!1058289) (not d!300404) (not bm!75825) (not b!1057967) (not b!1057940) (not b!1057885) (not bm!75722) (not b!1058359) (not bm!75803) (not b!1058293) (not b!1058360) (not b!1057935) (not bm!75718) (not bm!75826) (not b!1057958) (not b!1057954) (not bm!75801) (not b!1058463) (not b!1057968) (not b!1058457) (not bm!75827) (not bm!75828) (not bm!75804) (not b!1057886) (not bm!75832) (not b!1057944) (not b!1058461) (not bm!75808) (not b!1058443) (not bm!75793) (not b!1058455) (not b!1058456) (not b!1057953) (not b!1058355) (not b!1057882) (not b!1058340) (not b!1058460) (not bm!75719) (not b!1058336) (not bm!75800) (not b!1058421) (not b!1057949) (not b!1057943) (not d!300414) (not bm!75806) (not d!300372))
(check-sat)
