; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!86720 () Bool)

(assert start!86720)

(declare-fun b!976827 () Bool)

(assert (=> b!976827 true))

(assert (=> b!976827 true))

(declare-fun lambda!34696 () Int)

(declare-fun lambda!34695 () Int)

(assert (=> b!976827 (not (= lambda!34696 lambda!34695))))

(assert (=> b!976827 true))

(assert (=> b!976827 true))

(declare-fun res!443618 () Bool)

(declare-fun e!628975 () Bool)

(assert (=> start!86720 (=> (not res!443618) (not e!628975))))

(declare-datatypes ((C!6022 0))(
  ( (C!6023 (val!3259 Int)) )
))
(declare-datatypes ((Regex!2726 0))(
  ( (ElementMatch!2726 (c!159519 C!6022)) (Concat!4559 (regOne!5964 Regex!2726) (regTwo!5964 Regex!2726)) (EmptyExpr!2726) (Star!2726 (reg!3055 Regex!2726)) (EmptyLang!2726) (Union!2726 (regOne!5965 Regex!2726) (regTwo!5965 Regex!2726)) )
))
(declare-fun r!15766 () Regex!2726)

(declare-fun validRegex!1195 (Regex!2726) Bool)

(assert (=> start!86720 (= res!443618 (validRegex!1195 r!15766))))

(assert (=> start!86720 e!628975))

(declare-fun e!628974 () Bool)

(assert (=> start!86720 e!628974))

(declare-fun e!628978 () Bool)

(assert (=> start!86720 e!628978))

(declare-fun b!976822 () Bool)

(declare-fun e!628977 () Bool)

(assert (=> b!976822 (= e!628977 (validRegex!1195 (regOne!5964 r!15766)))))

(declare-fun b!976823 () Bool)

(declare-fun tp!298817 () Bool)

(declare-fun tp!298822 () Bool)

(assert (=> b!976823 (= e!628974 (and tp!298817 tp!298822))))

(declare-fun b!976824 () Bool)

(declare-fun res!443617 () Bool)

(assert (=> b!976824 (=> res!443617 e!628977)))

(declare-datatypes ((List!9956 0))(
  ( (Nil!9940) (Cons!9940 (h!15341 C!6022) (t!101002 List!9956)) )
))
(declare-datatypes ((tuple2!11306 0))(
  ( (tuple2!11307 (_1!6479 List!9956) (_2!6479 List!9956)) )
))
(declare-fun lt!349562 () tuple2!11306)

(declare-fun matchR!1262 (Regex!2726 List!9956) Bool)

(assert (=> b!976824 (= res!443617 (not (matchR!1262 (regOne!5964 r!15766) (_1!6479 lt!349562))))))

(declare-fun b!976825 () Bool)

(declare-fun tp!298818 () Bool)

(assert (=> b!976825 (= e!628974 tp!298818)))

(declare-fun b!976826 () Bool)

(declare-fun e!628976 () Bool)

(assert (=> b!976826 (= e!628975 (not e!628976))))

(declare-fun res!443619 () Bool)

(assert (=> b!976826 (=> res!443619 e!628976)))

(declare-fun lt!349559 () Bool)

(assert (=> b!976826 (= res!443619 (or (not lt!349559) (and (is-Concat!4559 r!15766) (is-EmptyExpr!2726 (regOne!5964 r!15766))) (not (is-Concat!4559 r!15766)) (not (is-EmptyExpr!2726 (regTwo!5964 r!15766)))))))

(declare-fun s!10566 () List!9956)

(declare-fun matchRSpec!525 (Regex!2726 List!9956) Bool)

(assert (=> b!976826 (= lt!349559 (matchRSpec!525 r!15766 s!10566))))

(assert (=> b!976826 (= lt!349559 (matchR!1262 r!15766 s!10566))))

(declare-datatypes ((Unit!15111 0))(
  ( (Unit!15112) )
))
(declare-fun lt!349563 () Unit!15111)

(declare-fun mainMatchTheorem!525 (Regex!2726 List!9956) Unit!15111)

(assert (=> b!976826 (= lt!349563 (mainMatchTheorem!525 r!15766 s!10566))))

(assert (=> b!976827 (= e!628976 e!628977)))

(declare-fun res!443615 () Bool)

(assert (=> b!976827 (=> res!443615 e!628977)))

(declare-fun isEmpty!6257 (List!9956) Bool)

(assert (=> b!976827 (= res!443615 (not (isEmpty!6257 (_2!6479 lt!349562))))))

(declare-datatypes ((Option!2295 0))(
  ( (None!2294) (Some!2294 (v!19711 tuple2!11306)) )
))
(declare-fun lt!349561 () Option!2295)

(declare-fun get!3437 (Option!2295) tuple2!11306)

(assert (=> b!976827 (= lt!349562 (get!3437 lt!349561))))

(declare-fun Exists!463 (Int) Bool)

(assert (=> b!976827 (= (Exists!463 lambda!34695) (Exists!463 lambda!34696))))

(declare-fun lt!349558 () Unit!15111)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!221 (Regex!2726 Regex!2726 List!9956) Unit!15111)

(assert (=> b!976827 (= lt!349558 (lemmaExistCutMatchRandMatchRSpecEquivalent!221 (regOne!5964 r!15766) EmptyExpr!2726 s!10566))))

(declare-fun isDefined!1937 (Option!2295) Bool)

(assert (=> b!976827 (= (isDefined!1937 lt!349561) (Exists!463 lambda!34695))))

(declare-fun findConcatSeparation!401 (Regex!2726 Regex!2726 List!9956 List!9956 List!9956) Option!2295)

(assert (=> b!976827 (= lt!349561 (findConcatSeparation!401 (regOne!5964 r!15766) EmptyExpr!2726 Nil!9940 s!10566 s!10566))))

(declare-fun lt!349560 () Unit!15111)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!401 (Regex!2726 Regex!2726 List!9956) Unit!15111)

(assert (=> b!976827 (= lt!349560 (lemmaFindConcatSeparationEquivalentToExists!401 (regOne!5964 r!15766) EmptyExpr!2726 s!10566))))

(declare-fun b!976828 () Bool)

(declare-fun tp!298821 () Bool)

(declare-fun tp!298820 () Bool)

(assert (=> b!976828 (= e!628974 (and tp!298821 tp!298820))))

(declare-fun b!976829 () Bool)

(declare-fun tp_is_empty!5095 () Bool)

(declare-fun tp!298819 () Bool)

(assert (=> b!976829 (= e!628978 (and tp_is_empty!5095 tp!298819))))

(declare-fun b!976830 () Bool)

(declare-fun res!443616 () Bool)

(assert (=> b!976830 (=> res!443616 e!628976)))

(assert (=> b!976830 (= res!443616 (isEmpty!6257 s!10566))))

(declare-fun b!976831 () Bool)

(assert (=> b!976831 (= e!628974 tp_is_empty!5095)))

(assert (= (and start!86720 res!443618) b!976826))

(assert (= (and b!976826 (not res!443619)) b!976830))

(assert (= (and b!976830 (not res!443616)) b!976827))

(assert (= (and b!976827 (not res!443615)) b!976824))

(assert (= (and b!976824 (not res!443617)) b!976822))

(assert (= (and start!86720 (is-ElementMatch!2726 r!15766)) b!976831))

(assert (= (and start!86720 (is-Concat!4559 r!15766)) b!976828))

(assert (= (and start!86720 (is-Star!2726 r!15766)) b!976825))

(assert (= (and start!86720 (is-Union!2726 r!15766)) b!976823))

(assert (= (and start!86720 (is-Cons!9940 s!10566)) b!976829))

(declare-fun m!1177889 () Bool)

(assert (=> b!976822 m!1177889))

(declare-fun m!1177891 () Bool)

(assert (=> b!976827 m!1177891))

(declare-fun m!1177893 () Bool)

(assert (=> b!976827 m!1177893))

(declare-fun m!1177895 () Bool)

(assert (=> b!976827 m!1177895))

(assert (=> b!976827 m!1177893))

(declare-fun m!1177897 () Bool)

(assert (=> b!976827 m!1177897))

(declare-fun m!1177899 () Bool)

(assert (=> b!976827 m!1177899))

(declare-fun m!1177901 () Bool)

(assert (=> b!976827 m!1177901))

(declare-fun m!1177903 () Bool)

(assert (=> b!976827 m!1177903))

(declare-fun m!1177905 () Bool)

(assert (=> b!976827 m!1177905))

(declare-fun m!1177907 () Bool)

(assert (=> b!976826 m!1177907))

(declare-fun m!1177909 () Bool)

(assert (=> b!976826 m!1177909))

(declare-fun m!1177911 () Bool)

(assert (=> b!976826 m!1177911))

(declare-fun m!1177913 () Bool)

(assert (=> start!86720 m!1177913))

(declare-fun m!1177915 () Bool)

(assert (=> b!976830 m!1177915))

(declare-fun m!1177917 () Bool)

(assert (=> b!976824 m!1177917))

(push 1)

(assert tp_is_empty!5095)

(assert (not start!86720))

(assert (not b!976822))

(assert (not b!976829))

(assert (not b!976826))

(assert (not b!976824))

(assert (not b!976823))

(assert (not b!976825))

(assert (not b!976827))

(assert (not b!976830))

(assert (not b!976828))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!976910 () Bool)

(declare-fun e!629017 () Bool)

(declare-fun e!629014 () Bool)

(assert (=> b!976910 (= e!629017 e!629014)))

(declare-fun res!443667 () Bool)

(assert (=> b!976910 (=> (not res!443667) (not e!629014))))

(declare-fun lt!349584 () Bool)

(assert (=> b!976910 (= res!443667 (not lt!349584))))

(declare-fun b!976911 () Bool)

(declare-fun e!629015 () Bool)

(assert (=> b!976911 (= e!629015 (not lt!349584))))

(declare-fun b!976912 () Bool)

(declare-fun e!629016 () Bool)

(declare-fun head!1801 (List!9956) C!6022)

(assert (=> b!976912 (= e!629016 (not (= (head!1801 (_1!6479 lt!349562)) (c!159519 (regOne!5964 r!15766)))))))

(declare-fun b!976913 () Bool)

(declare-fun e!629019 () Bool)

(assert (=> b!976913 (= e!629019 (= (head!1801 (_1!6479 lt!349562)) (c!159519 (regOne!5964 r!15766))))))

(declare-fun b!976914 () Bool)

(declare-fun res!443666 () Bool)

(assert (=> b!976914 (=> res!443666 e!629016)))

(declare-fun tail!1363 (List!9956) List!9956)

(assert (=> b!976914 (= res!443666 (not (isEmpty!6257 (tail!1363 (_1!6479 lt!349562)))))))

(declare-fun b!976915 () Bool)

(declare-fun e!629018 () Bool)

(declare-fun derivativeStep!648 (Regex!2726 C!6022) Regex!2726)

(assert (=> b!976915 (= e!629018 (matchR!1262 (derivativeStep!648 (regOne!5964 r!15766) (head!1801 (_1!6479 lt!349562))) (tail!1363 (_1!6479 lt!349562))))))

(declare-fun b!976916 () Bool)

(declare-fun res!443669 () Bool)

(assert (=> b!976916 (=> (not res!443669) (not e!629019))))

(assert (=> b!976916 (= res!443669 (isEmpty!6257 (tail!1363 (_1!6479 lt!349562))))))

(declare-fun b!976917 () Bool)

(declare-fun res!443663 () Bool)

(assert (=> b!976917 (=> (not res!443663) (not e!629019))))

(declare-fun call!62434 () Bool)

(assert (=> b!976917 (= res!443663 (not call!62434))))

(declare-fun b!976918 () Bool)

(declare-fun e!629020 () Bool)

(assert (=> b!976918 (= e!629020 (= lt!349584 call!62434))))

(declare-fun d!287511 () Bool)

(assert (=> d!287511 e!629020))

(declare-fun c!159529 () Bool)

(assert (=> d!287511 (= c!159529 (is-EmptyExpr!2726 (regOne!5964 r!15766)))))

(assert (=> d!287511 (= lt!349584 e!629018)))

(declare-fun c!159528 () Bool)

(assert (=> d!287511 (= c!159528 (isEmpty!6257 (_1!6479 lt!349562)))))

(assert (=> d!287511 (validRegex!1195 (regOne!5964 r!15766))))

(assert (=> d!287511 (= (matchR!1262 (regOne!5964 r!15766) (_1!6479 lt!349562)) lt!349584)))

(declare-fun b!976919 () Bool)

(assert (=> b!976919 (= e!629014 e!629016)))

(declare-fun res!443664 () Bool)

(assert (=> b!976919 (=> res!443664 e!629016)))

(assert (=> b!976919 (= res!443664 call!62434)))

(declare-fun b!976920 () Bool)

(declare-fun nullable!842 (Regex!2726) Bool)

(assert (=> b!976920 (= e!629018 (nullable!842 (regOne!5964 r!15766)))))

(declare-fun b!976921 () Bool)

(assert (=> b!976921 (= e!629020 e!629015)))

(declare-fun c!159527 () Bool)

(assert (=> b!976921 (= c!159527 (is-EmptyLang!2726 (regOne!5964 r!15766)))))

(declare-fun b!976922 () Bool)

(declare-fun res!443670 () Bool)

(assert (=> b!976922 (=> res!443670 e!629017)))

(assert (=> b!976922 (= res!443670 (not (is-ElementMatch!2726 (regOne!5964 r!15766))))))

(assert (=> b!976922 (= e!629015 e!629017)))

(declare-fun bm!62429 () Bool)

(assert (=> bm!62429 (= call!62434 (isEmpty!6257 (_1!6479 lt!349562)))))

(declare-fun b!976923 () Bool)

(declare-fun res!443668 () Bool)

(assert (=> b!976923 (=> res!443668 e!629017)))

(assert (=> b!976923 (= res!443668 e!629019)))

(declare-fun res!443665 () Bool)

(assert (=> b!976923 (=> (not res!443665) (not e!629019))))

(assert (=> b!976923 (= res!443665 lt!349584)))

(assert (= (and d!287511 c!159528) b!976920))

(assert (= (and d!287511 (not c!159528)) b!976915))

(assert (= (and d!287511 c!159529) b!976918))

(assert (= (and d!287511 (not c!159529)) b!976921))

(assert (= (and b!976921 c!159527) b!976911))

(assert (= (and b!976921 (not c!159527)) b!976922))

(assert (= (and b!976922 (not res!443670)) b!976923))

(assert (= (and b!976923 res!443665) b!976917))

(assert (= (and b!976917 res!443663) b!976916))

(assert (= (and b!976916 res!443669) b!976913))

(assert (= (and b!976923 (not res!443668)) b!976910))

(assert (= (and b!976910 res!443667) b!976919))

(assert (= (and b!976919 (not res!443664)) b!976914))

(assert (= (and b!976914 (not res!443666)) b!976912))

(assert (= (or b!976918 b!976917 b!976919) bm!62429))

(declare-fun m!1177949 () Bool)

(assert (=> b!976914 m!1177949))

(assert (=> b!976914 m!1177949))

(declare-fun m!1177951 () Bool)

(assert (=> b!976914 m!1177951))

(declare-fun m!1177953 () Bool)

(assert (=> b!976920 m!1177953))

(declare-fun m!1177955 () Bool)

(assert (=> b!976913 m!1177955))

(assert (=> b!976912 m!1177955))

(assert (=> b!976916 m!1177949))

(assert (=> b!976916 m!1177949))

(assert (=> b!976916 m!1177951))

(assert (=> b!976915 m!1177955))

(assert (=> b!976915 m!1177955))

(declare-fun m!1177957 () Bool)

(assert (=> b!976915 m!1177957))

(assert (=> b!976915 m!1177949))

(assert (=> b!976915 m!1177957))

(assert (=> b!976915 m!1177949))

(declare-fun m!1177959 () Bool)

(assert (=> b!976915 m!1177959))

(declare-fun m!1177961 () Bool)

(assert (=> d!287511 m!1177961))

(assert (=> d!287511 m!1177889))

(assert (=> bm!62429 m!1177961))

(assert (=> b!976824 d!287511))

(declare-fun d!287513 () Bool)

(assert (=> d!287513 (= (isEmpty!6257 s!10566) (is-Nil!9940 s!10566))))

(assert (=> b!976830 d!287513))

(declare-fun bs!243194 () Bool)

(declare-fun b!976964 () Bool)

(assert (= bs!243194 (and b!976964 b!976827)))

(declare-fun lambda!34709 () Int)

(assert (=> bs!243194 (not (= lambda!34709 lambda!34695))))

(assert (=> bs!243194 (not (= lambda!34709 lambda!34696))))

(assert (=> b!976964 true))

(assert (=> b!976964 true))

(declare-fun bs!243195 () Bool)

(declare-fun b!976959 () Bool)

(assert (= bs!243195 (and b!976959 b!976827)))

(declare-fun lambda!34710 () Int)

(assert (=> bs!243195 (not (= lambda!34710 lambda!34695))))

(assert (=> bs!243195 (= (= (regTwo!5964 r!15766) EmptyExpr!2726) (= lambda!34710 lambda!34696))))

(declare-fun bs!243196 () Bool)

(assert (= bs!243196 (and b!976959 b!976964)))

(assert (=> bs!243196 (not (= lambda!34710 lambda!34709))))

(assert (=> b!976959 true))

(assert (=> b!976959 true))

(declare-fun call!62439 () Bool)

(declare-fun c!159540 () Bool)

(declare-fun bm!62434 () Bool)

(assert (=> bm!62434 (= call!62439 (Exists!463 (ite c!159540 lambda!34709 lambda!34710)))))

(declare-fun b!976956 () Bool)

(declare-fun e!629039 () Bool)

(declare-fun call!62440 () Bool)

(assert (=> b!976956 (= e!629039 call!62440)))

(declare-fun b!976957 () Bool)

(declare-fun e!629041 () Bool)

(declare-fun e!629043 () Bool)

(assert (=> b!976957 (= e!629041 e!629043)))

(assert (=> b!976957 (= c!159540 (is-Star!2726 r!15766))))

(declare-fun b!976958 () Bool)

(declare-fun res!443689 () Bool)

(declare-fun e!629042 () Bool)

(assert (=> b!976958 (=> res!443689 e!629042)))

(assert (=> b!976958 (= res!443689 call!62440)))

(assert (=> b!976958 (= e!629043 e!629042)))

(declare-fun b!976960 () Bool)

(declare-fun e!629045 () Bool)

(assert (=> b!976960 (= e!629045 (= s!10566 (Cons!9940 (c!159519 r!15766) Nil!9940)))))

(declare-fun b!976961 () Bool)

(declare-fun e!629044 () Bool)

(assert (=> b!976961 (= e!629041 e!629044)))

(declare-fun res!443687 () Bool)

(assert (=> b!976961 (= res!443687 (matchRSpec!525 (regOne!5965 r!15766) s!10566))))

(assert (=> b!976961 (=> res!443687 e!629044)))

(declare-fun b!976962 () Bool)

(declare-fun c!159538 () Bool)

(assert (=> b!976962 (= c!159538 (is-ElementMatch!2726 r!15766))))

(declare-fun e!629040 () Bool)

(assert (=> b!976962 (= e!629040 e!629045)))

(declare-fun b!976963 () Bool)

(declare-fun c!159539 () Bool)

(assert (=> b!976963 (= c!159539 (is-Union!2726 r!15766))))

(assert (=> b!976963 (= e!629045 e!629041)))

(assert (=> b!976964 (= e!629042 call!62439)))

(declare-fun b!976965 () Bool)

(assert (=> b!976965 (= e!629044 (matchRSpec!525 (regTwo!5965 r!15766) s!10566))))

(assert (=> b!976959 (= e!629043 call!62439)))

(declare-fun d!287515 () Bool)

(declare-fun c!159541 () Bool)

(assert (=> d!287515 (= c!159541 (is-EmptyExpr!2726 r!15766))))

(assert (=> d!287515 (= (matchRSpec!525 r!15766 s!10566) e!629039)))

(declare-fun bm!62435 () Bool)

(assert (=> bm!62435 (= call!62440 (isEmpty!6257 s!10566))))

(declare-fun b!976966 () Bool)

(assert (=> b!976966 (= e!629039 e!629040)))

(declare-fun res!443688 () Bool)

(assert (=> b!976966 (= res!443688 (not (is-EmptyLang!2726 r!15766)))))

(assert (=> b!976966 (=> (not res!443688) (not e!629040))))

(assert (= (and d!287515 c!159541) b!976956))

(assert (= (and d!287515 (not c!159541)) b!976966))

(assert (= (and b!976966 res!443688) b!976962))

(assert (= (and b!976962 c!159538) b!976960))

(assert (= (and b!976962 (not c!159538)) b!976963))

(assert (= (and b!976963 c!159539) b!976961))

(assert (= (and b!976963 (not c!159539)) b!976957))

(assert (= (and b!976961 (not res!443687)) b!976965))

(assert (= (and b!976957 c!159540) b!976958))

(assert (= (and b!976957 (not c!159540)) b!976959))

(assert (= (and b!976958 (not res!443689)) b!976964))

(assert (= (or b!976964 b!976959) bm!62434))

(assert (= (or b!976956 b!976958) bm!62435))

(declare-fun m!1177963 () Bool)

(assert (=> bm!62434 m!1177963))

(declare-fun m!1177965 () Bool)

(assert (=> b!976961 m!1177965))

(declare-fun m!1177967 () Bool)

(assert (=> b!976965 m!1177967))

(assert (=> bm!62435 m!1177915))

(assert (=> b!976826 d!287515))

(declare-fun b!976989 () Bool)

(declare-fun e!629063 () Bool)

(declare-fun e!629060 () Bool)

(assert (=> b!976989 (= e!629063 e!629060)))

(declare-fun res!443700 () Bool)

(assert (=> b!976989 (=> (not res!443700) (not e!629060))))

(declare-fun lt!349585 () Bool)

(assert (=> b!976989 (= res!443700 (not lt!349585))))

(declare-fun b!976990 () Bool)

(declare-fun e!629061 () Bool)

(assert (=> b!976990 (= e!629061 (not lt!349585))))

(declare-fun b!976991 () Bool)

(declare-fun e!629062 () Bool)

(assert (=> b!976991 (= e!629062 (not (= (head!1801 s!10566) (c!159519 r!15766))))))

(declare-fun b!976992 () Bool)

(declare-fun e!629065 () Bool)

(assert (=> b!976992 (= e!629065 (= (head!1801 s!10566) (c!159519 r!15766)))))

(declare-fun b!976993 () Bool)

(declare-fun res!443699 () Bool)

(assert (=> b!976993 (=> res!443699 e!629062)))

(assert (=> b!976993 (= res!443699 (not (isEmpty!6257 (tail!1363 s!10566))))))

(declare-fun b!976994 () Bool)

(declare-fun e!629064 () Bool)

(assert (=> b!976994 (= e!629064 (matchR!1262 (derivativeStep!648 r!15766 (head!1801 s!10566)) (tail!1363 s!10566)))))

(declare-fun b!976995 () Bool)

(declare-fun res!443702 () Bool)

(assert (=> b!976995 (=> (not res!443702) (not e!629065))))

(assert (=> b!976995 (= res!443702 (isEmpty!6257 (tail!1363 s!10566)))))

(declare-fun b!976996 () Bool)

(declare-fun res!443696 () Bool)

(assert (=> b!976996 (=> (not res!443696) (not e!629065))))

(declare-fun call!62441 () Bool)

(assert (=> b!976996 (= res!443696 (not call!62441))))

(declare-fun b!976997 () Bool)

(declare-fun e!629066 () Bool)

(assert (=> b!976997 (= e!629066 (= lt!349585 call!62441))))

(declare-fun d!287521 () Bool)

(assert (=> d!287521 e!629066))

(declare-fun c!159552 () Bool)

(assert (=> d!287521 (= c!159552 (is-EmptyExpr!2726 r!15766))))

(assert (=> d!287521 (= lt!349585 e!629064)))

(declare-fun c!159551 () Bool)

(assert (=> d!287521 (= c!159551 (isEmpty!6257 s!10566))))

(assert (=> d!287521 (validRegex!1195 r!15766)))

(assert (=> d!287521 (= (matchR!1262 r!15766 s!10566) lt!349585)))

(declare-fun b!976998 () Bool)

(assert (=> b!976998 (= e!629060 e!629062)))

(declare-fun res!443697 () Bool)

(assert (=> b!976998 (=> res!443697 e!629062)))

(assert (=> b!976998 (= res!443697 call!62441)))

(declare-fun b!976999 () Bool)

(assert (=> b!976999 (= e!629064 (nullable!842 r!15766))))

(declare-fun b!977000 () Bool)

(assert (=> b!977000 (= e!629066 e!629061)))

(declare-fun c!159550 () Bool)

(assert (=> b!977000 (= c!159550 (is-EmptyLang!2726 r!15766))))

(declare-fun b!977001 () Bool)

(declare-fun res!443703 () Bool)

(assert (=> b!977001 (=> res!443703 e!629063)))

(assert (=> b!977001 (= res!443703 (not (is-ElementMatch!2726 r!15766)))))

(assert (=> b!977001 (= e!629061 e!629063)))

(declare-fun bm!62436 () Bool)

(assert (=> bm!62436 (= call!62441 (isEmpty!6257 s!10566))))

(declare-fun b!977002 () Bool)

(declare-fun res!443701 () Bool)

(assert (=> b!977002 (=> res!443701 e!629063)))

(assert (=> b!977002 (= res!443701 e!629065)))

(declare-fun res!443698 () Bool)

(assert (=> b!977002 (=> (not res!443698) (not e!629065))))

(assert (=> b!977002 (= res!443698 lt!349585)))

(assert (= (and d!287521 c!159551) b!976999))

(assert (= (and d!287521 (not c!159551)) b!976994))

(assert (= (and d!287521 c!159552) b!976997))

(assert (= (and d!287521 (not c!159552)) b!977000))

(assert (= (and b!977000 c!159550) b!976990))

(assert (= (and b!977000 (not c!159550)) b!977001))

(assert (= (and b!977001 (not res!443703)) b!977002))

(assert (= (and b!977002 res!443698) b!976996))

(assert (= (and b!976996 res!443696) b!976995))

(assert (= (and b!976995 res!443702) b!976992))

(assert (= (and b!977002 (not res!443701)) b!976989))

(assert (= (and b!976989 res!443700) b!976998))

(assert (= (and b!976998 (not res!443697)) b!976993))

(assert (= (and b!976993 (not res!443699)) b!976991))

(assert (= (or b!976997 b!976996 b!976998) bm!62436))

(declare-fun m!1177969 () Bool)

(assert (=> b!976993 m!1177969))

(assert (=> b!976993 m!1177969))

(declare-fun m!1177971 () Bool)

(assert (=> b!976993 m!1177971))

(declare-fun m!1177973 () Bool)

(assert (=> b!976999 m!1177973))

(declare-fun m!1177975 () Bool)

(assert (=> b!976992 m!1177975))

(assert (=> b!976991 m!1177975))

(assert (=> b!976995 m!1177969))

(assert (=> b!976995 m!1177969))

(assert (=> b!976995 m!1177971))

(assert (=> b!976994 m!1177975))

(assert (=> b!976994 m!1177975))

(declare-fun m!1177977 () Bool)

(assert (=> b!976994 m!1177977))

(assert (=> b!976994 m!1177969))

(assert (=> b!976994 m!1177977))

(assert (=> b!976994 m!1177969))

(declare-fun m!1177979 () Bool)

(assert (=> b!976994 m!1177979))

(assert (=> d!287521 m!1177915))

(assert (=> d!287521 m!1177913))

(assert (=> bm!62436 m!1177915))

(assert (=> b!976826 d!287521))

(declare-fun d!287523 () Bool)

(assert (=> d!287523 (= (matchR!1262 r!15766 s!10566) (matchRSpec!525 r!15766 s!10566))))

(declare-fun lt!349588 () Unit!15111)

(declare-fun choose!6185 (Regex!2726 List!9956) Unit!15111)

(assert (=> d!287523 (= lt!349588 (choose!6185 r!15766 s!10566))))

(assert (=> d!287523 (validRegex!1195 r!15766)))

(assert (=> d!287523 (= (mainMatchTheorem!525 r!15766 s!10566) lt!349588)))

(declare-fun bs!243197 () Bool)

(assert (= bs!243197 d!287523))

(assert (=> bs!243197 m!1177909))

(assert (=> bs!243197 m!1177907))

(declare-fun m!1177981 () Bool)

(assert (=> bs!243197 m!1177981))

(assert (=> bs!243197 m!1177913))

(assert (=> b!976826 d!287523))

(declare-fun d!287525 () Bool)

(declare-fun isEmpty!6259 (Option!2295) Bool)

(assert (=> d!287525 (= (isDefined!1937 lt!349561) (not (isEmpty!6259 lt!349561)))))

(declare-fun bs!243198 () Bool)

(assert (= bs!243198 d!287525))

(declare-fun m!1177983 () Bool)

(assert (=> bs!243198 m!1177983))

(assert (=> b!976827 d!287525))

(declare-fun b!977031 () Bool)

(declare-fun e!629082 () Option!2295)

(assert (=> b!977031 (= e!629082 None!2294)))

(declare-fun b!977032 () Bool)

(declare-fun e!629081 () Bool)

(declare-fun lt!349595 () Option!2295)

(declare-fun ++!2694 (List!9956 List!9956) List!9956)

(assert (=> b!977032 (= e!629081 (= (++!2694 (_1!6479 (get!3437 lt!349595)) (_2!6479 (get!3437 lt!349595))) s!10566))))

(declare-fun b!977033 () Bool)

(declare-fun e!629085 () Option!2295)

(assert (=> b!977033 (= e!629085 e!629082)))

(declare-fun c!159558 () Bool)

(assert (=> b!977033 (= c!159558 (is-Nil!9940 s!10566))))

(declare-fun b!977034 () Bool)

(declare-fun res!443725 () Bool)

(assert (=> b!977034 (=> (not res!443725) (not e!629081))))

(assert (=> b!977034 (= res!443725 (matchR!1262 (regOne!5964 r!15766) (_1!6479 (get!3437 lt!349595))))))

(declare-fun b!977035 () Bool)

(declare-fun e!629083 () Bool)

(assert (=> b!977035 (= e!629083 (not (isDefined!1937 lt!349595)))))

(declare-fun b!977036 () Bool)

(declare-fun res!443724 () Bool)

(assert (=> b!977036 (=> (not res!443724) (not e!629081))))

(assert (=> b!977036 (= res!443724 (matchR!1262 EmptyExpr!2726 (_2!6479 (get!3437 lt!349595))))))

(declare-fun b!977037 () Bool)

(declare-fun lt!349597 () Unit!15111)

(declare-fun lt!349596 () Unit!15111)

(assert (=> b!977037 (= lt!349597 lt!349596)))

(assert (=> b!977037 (= (++!2694 (++!2694 Nil!9940 (Cons!9940 (h!15341 s!10566) Nil!9940)) (t!101002 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!295 (List!9956 C!6022 List!9956 List!9956) Unit!15111)

(assert (=> b!977037 (= lt!349596 (lemmaMoveElementToOtherListKeepsConcatEq!295 Nil!9940 (h!15341 s!10566) (t!101002 s!10566) s!10566))))

(assert (=> b!977037 (= e!629082 (findConcatSeparation!401 (regOne!5964 r!15766) EmptyExpr!2726 (++!2694 Nil!9940 (Cons!9940 (h!15341 s!10566) Nil!9940)) (t!101002 s!10566) s!10566))))

(declare-fun b!977038 () Bool)

(declare-fun e!629084 () Bool)

(assert (=> b!977038 (= e!629084 (matchR!1262 EmptyExpr!2726 s!10566))))

(declare-fun b!977039 () Bool)

(assert (=> b!977039 (= e!629085 (Some!2294 (tuple2!11307 Nil!9940 s!10566)))))

(declare-fun d!287527 () Bool)

(assert (=> d!287527 e!629083))

(declare-fun res!443727 () Bool)

(assert (=> d!287527 (=> res!443727 e!629083)))

(assert (=> d!287527 (= res!443727 e!629081)))

(declare-fun res!443728 () Bool)

(assert (=> d!287527 (=> (not res!443728) (not e!629081))))

(assert (=> d!287527 (= res!443728 (isDefined!1937 lt!349595))))

(assert (=> d!287527 (= lt!349595 e!629085)))

(declare-fun c!159557 () Bool)

(assert (=> d!287527 (= c!159557 e!629084)))

(declare-fun res!443726 () Bool)

(assert (=> d!287527 (=> (not res!443726) (not e!629084))))

(assert (=> d!287527 (= res!443726 (matchR!1262 (regOne!5964 r!15766) Nil!9940))))

(assert (=> d!287527 (validRegex!1195 (regOne!5964 r!15766))))

(assert (=> d!287527 (= (findConcatSeparation!401 (regOne!5964 r!15766) EmptyExpr!2726 Nil!9940 s!10566 s!10566) lt!349595)))

(assert (= (and d!287527 res!443726) b!977038))

(assert (= (and d!287527 c!159557) b!977039))

(assert (= (and d!287527 (not c!159557)) b!977033))

(assert (= (and b!977033 c!159558) b!977031))

(assert (= (and b!977033 (not c!159558)) b!977037))

(assert (= (and d!287527 res!443728) b!977034))

(assert (= (and b!977034 res!443725) b!977036))

(assert (= (and b!977036 res!443724) b!977032))

(assert (= (and d!287527 (not res!443727)) b!977035))

(declare-fun m!1177985 () Bool)

(assert (=> b!977035 m!1177985))

(assert (=> d!287527 m!1177985))

(declare-fun m!1177987 () Bool)

(assert (=> d!287527 m!1177987))

(assert (=> d!287527 m!1177889))

(declare-fun m!1177989 () Bool)

(assert (=> b!977036 m!1177989))

(declare-fun m!1177991 () Bool)

(assert (=> b!977036 m!1177991))

(declare-fun m!1177993 () Bool)

(assert (=> b!977037 m!1177993))

(assert (=> b!977037 m!1177993))

(declare-fun m!1177995 () Bool)

(assert (=> b!977037 m!1177995))

(declare-fun m!1177997 () Bool)

(assert (=> b!977037 m!1177997))

(assert (=> b!977037 m!1177993))

(declare-fun m!1177999 () Bool)

(assert (=> b!977037 m!1177999))

(assert (=> b!977034 m!1177989))

(declare-fun m!1178001 () Bool)

(assert (=> b!977034 m!1178001))

(declare-fun m!1178003 () Bool)

(assert (=> b!977038 m!1178003))

(assert (=> b!977032 m!1177989))

(declare-fun m!1178005 () Bool)

(assert (=> b!977032 m!1178005))

(assert (=> b!976827 d!287527))

(declare-fun d!287529 () Bool)

(assert (=> d!287529 (= (get!3437 lt!349561) (v!19711 lt!349561))))

(assert (=> b!976827 d!287529))

(declare-fun d!287531 () Bool)

(declare-fun choose!6186 (Int) Bool)

(assert (=> d!287531 (= (Exists!463 lambda!34696) (choose!6186 lambda!34696))))

(declare-fun bs!243199 () Bool)

(assert (= bs!243199 d!287531))

(declare-fun m!1178007 () Bool)

(assert (=> bs!243199 m!1178007))

(assert (=> b!976827 d!287531))

(declare-fun bs!243203 () Bool)

(declare-fun d!287533 () Bool)

(assert (= bs!243203 (and d!287533 b!976827)))

(declare-fun lambda!34719 () Int)

(assert (=> bs!243203 (= lambda!34719 lambda!34695)))

(assert (=> bs!243203 (not (= lambda!34719 lambda!34696))))

(declare-fun bs!243204 () Bool)

(assert (= bs!243204 (and d!287533 b!976964)))

(assert (=> bs!243204 (not (= lambda!34719 lambda!34709))))

(declare-fun bs!243205 () Bool)

(assert (= bs!243205 (and d!287533 b!976959)))

(assert (=> bs!243205 (not (= lambda!34719 lambda!34710))))

(assert (=> d!287533 true))

(assert (=> d!287533 true))

(assert (=> d!287533 true))

(assert (=> d!287533 (= (isDefined!1937 (findConcatSeparation!401 (regOne!5964 r!15766) EmptyExpr!2726 Nil!9940 s!10566 s!10566)) (Exists!463 lambda!34719))))

(declare-fun lt!349600 () Unit!15111)

(declare-fun choose!6187 (Regex!2726 Regex!2726 List!9956) Unit!15111)

(assert (=> d!287533 (= lt!349600 (choose!6187 (regOne!5964 r!15766) EmptyExpr!2726 s!10566))))

(assert (=> d!287533 (validRegex!1195 (regOne!5964 r!15766))))

(assert (=> d!287533 (= (lemmaFindConcatSeparationEquivalentToExists!401 (regOne!5964 r!15766) EmptyExpr!2726 s!10566) lt!349600)))

(declare-fun bs!243206 () Bool)

(assert (= bs!243206 d!287533))

(assert (=> bs!243206 m!1177895))

(declare-fun m!1178015 () Bool)

(assert (=> bs!243206 m!1178015))

(declare-fun m!1178017 () Bool)

(assert (=> bs!243206 m!1178017))

(assert (=> bs!243206 m!1177889))

(assert (=> bs!243206 m!1177895))

(declare-fun m!1178019 () Bool)

(assert (=> bs!243206 m!1178019))

(assert (=> b!976827 d!287533))

(declare-fun d!287537 () Bool)

(assert (=> d!287537 (= (isEmpty!6257 (_2!6479 lt!349562)) (is-Nil!9940 (_2!6479 lt!349562)))))

(assert (=> b!976827 d!287537))

(declare-fun d!287539 () Bool)

(assert (=> d!287539 (= (Exists!463 lambda!34695) (choose!6186 lambda!34695))))

(declare-fun bs!243207 () Bool)

(assert (= bs!243207 d!287539))

(declare-fun m!1178021 () Bool)

(assert (=> bs!243207 m!1178021))

(assert (=> b!976827 d!287539))

(declare-fun bs!243208 () Bool)

(declare-fun d!287541 () Bool)

(assert (= bs!243208 (and d!287541 b!976827)))

(declare-fun lambda!34724 () Int)

(assert (=> bs!243208 (= lambda!34724 lambda!34695)))

(declare-fun bs!243209 () Bool)

(assert (= bs!243209 (and d!287541 b!976959)))

(assert (=> bs!243209 (not (= lambda!34724 lambda!34710))))

(declare-fun bs!243210 () Bool)

(assert (= bs!243210 (and d!287541 d!287533)))

(assert (=> bs!243210 (= lambda!34724 lambda!34719)))

(declare-fun bs!243211 () Bool)

(assert (= bs!243211 (and d!287541 b!976964)))

(assert (=> bs!243211 (not (= lambda!34724 lambda!34709))))

(assert (=> bs!243208 (not (= lambda!34724 lambda!34696))))

(assert (=> d!287541 true))

(assert (=> d!287541 true))

(assert (=> d!287541 true))

(declare-fun lambda!34725 () Int)

(assert (=> bs!243208 (not (= lambda!34725 lambda!34695))))

(assert (=> bs!243209 (= (= EmptyExpr!2726 (regTwo!5964 r!15766)) (= lambda!34725 lambda!34710))))

(assert (=> bs!243210 (not (= lambda!34725 lambda!34719))))

(declare-fun bs!243212 () Bool)

(assert (= bs!243212 d!287541))

(assert (=> bs!243212 (not (= lambda!34725 lambda!34724))))

(assert (=> bs!243211 (not (= lambda!34725 lambda!34709))))

(assert (=> bs!243208 (= lambda!34725 lambda!34696)))

(assert (=> d!287541 true))

(assert (=> d!287541 true))

(assert (=> d!287541 true))

(assert (=> d!287541 (= (Exists!463 lambda!34724) (Exists!463 lambda!34725))))

(declare-fun lt!349605 () Unit!15111)

(declare-fun choose!6188 (Regex!2726 Regex!2726 List!9956) Unit!15111)

(assert (=> d!287541 (= lt!349605 (choose!6188 (regOne!5964 r!15766) EmptyExpr!2726 s!10566))))

(assert (=> d!287541 (validRegex!1195 (regOne!5964 r!15766))))

(assert (=> d!287541 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!221 (regOne!5964 r!15766) EmptyExpr!2726 s!10566) lt!349605)))

(declare-fun m!1178023 () Bool)

(assert (=> bs!243212 m!1178023))

(declare-fun m!1178025 () Bool)

(assert (=> bs!243212 m!1178025))

(declare-fun m!1178027 () Bool)

(assert (=> bs!243212 m!1178027))

(assert (=> bs!243212 m!1177889))

(assert (=> b!976827 d!287541))

(declare-fun bm!62451 () Bool)

(declare-fun call!62456 () Bool)

(declare-fun call!62458 () Bool)

(assert (=> bm!62451 (= call!62456 call!62458)))

(declare-fun c!159573 () Bool)

(declare-fun c!159574 () Bool)

(declare-fun bm!62452 () Bool)

(assert (=> bm!62452 (= call!62458 (validRegex!1195 (ite c!159574 (reg!3055 r!15766) (ite c!159573 (regTwo!5965 r!15766) (regTwo!5964 r!15766)))))))

(declare-fun b!977109 () Bool)

(declare-fun e!629128 () Bool)

(declare-fun e!629131 () Bool)

(assert (=> b!977109 (= e!629128 e!629131)))

(assert (=> b!977109 (= c!159574 (is-Star!2726 r!15766))))

(declare-fun d!287543 () Bool)

(declare-fun res!443770 () Bool)

(assert (=> d!287543 (=> res!443770 e!629128)))

(assert (=> d!287543 (= res!443770 (is-ElementMatch!2726 r!15766))))

(assert (=> d!287543 (= (validRegex!1195 r!15766) e!629128)))

(declare-fun bm!62453 () Bool)

(declare-fun call!62457 () Bool)

(assert (=> bm!62453 (= call!62457 (validRegex!1195 (ite c!159573 (regOne!5965 r!15766) (regOne!5964 r!15766))))))

(declare-fun b!977110 () Bool)

(declare-fun e!629133 () Bool)

(assert (=> b!977110 (= e!629131 e!629133)))

(assert (=> b!977110 (= c!159573 (is-Union!2726 r!15766))))

(declare-fun b!977111 () Bool)

(declare-fun e!629129 () Bool)

(assert (=> b!977111 (= e!629129 call!62458)))

(declare-fun b!977112 () Bool)

(declare-fun res!443773 () Bool)

(declare-fun e!629130 () Bool)

(assert (=> b!977112 (=> (not res!443773) (not e!629130))))

(assert (=> b!977112 (= res!443773 call!62457)))

(assert (=> b!977112 (= e!629133 e!629130)))

(declare-fun b!977113 () Bool)

(declare-fun e!629127 () Bool)

(declare-fun e!629132 () Bool)

(assert (=> b!977113 (= e!629127 e!629132)))

(declare-fun res!443772 () Bool)

(assert (=> b!977113 (=> (not res!443772) (not e!629132))))

(assert (=> b!977113 (= res!443772 call!62457)))

(declare-fun b!977114 () Bool)

(declare-fun res!443774 () Bool)

(assert (=> b!977114 (=> res!443774 e!629127)))

(assert (=> b!977114 (= res!443774 (not (is-Concat!4559 r!15766)))))

(assert (=> b!977114 (= e!629133 e!629127)))

(declare-fun b!977115 () Bool)

(assert (=> b!977115 (= e!629131 e!629129)))

(declare-fun res!443771 () Bool)

(assert (=> b!977115 (= res!443771 (not (nullable!842 (reg!3055 r!15766))))))

(assert (=> b!977115 (=> (not res!443771) (not e!629129))))

(declare-fun b!977116 () Bool)

(assert (=> b!977116 (= e!629130 call!62456)))

(declare-fun b!977117 () Bool)

(assert (=> b!977117 (= e!629132 call!62456)))

(assert (= (and d!287543 (not res!443770)) b!977109))

(assert (= (and b!977109 c!159574) b!977115))

(assert (= (and b!977109 (not c!159574)) b!977110))

(assert (= (and b!977115 res!443771) b!977111))

(assert (= (and b!977110 c!159573) b!977112))

(assert (= (and b!977110 (not c!159573)) b!977114))

(assert (= (and b!977112 res!443773) b!977116))

(assert (= (and b!977114 (not res!443774)) b!977113))

(assert (= (and b!977113 res!443772) b!977117))

(assert (= (or b!977116 b!977117) bm!62451))

(assert (= (or b!977112 b!977113) bm!62453))

(assert (= (or b!977111 bm!62451) bm!62452))

(declare-fun m!1178029 () Bool)

(assert (=> bm!62452 m!1178029))

(declare-fun m!1178031 () Bool)

(assert (=> bm!62453 m!1178031))

(declare-fun m!1178033 () Bool)

(assert (=> b!977115 m!1178033))

(assert (=> start!86720 d!287543))

(declare-fun bm!62454 () Bool)

(declare-fun call!62459 () Bool)

(declare-fun call!62461 () Bool)

(assert (=> bm!62454 (= call!62459 call!62461)))

(declare-fun c!159575 () Bool)

(declare-fun bm!62455 () Bool)

(declare-fun c!159576 () Bool)

(assert (=> bm!62455 (= call!62461 (validRegex!1195 (ite c!159576 (reg!3055 (regOne!5964 r!15766)) (ite c!159575 (regTwo!5965 (regOne!5964 r!15766)) (regTwo!5964 (regOne!5964 r!15766))))))))

(declare-fun b!977118 () Bool)

(declare-fun e!629135 () Bool)

(declare-fun e!629138 () Bool)

(assert (=> b!977118 (= e!629135 e!629138)))

(assert (=> b!977118 (= c!159576 (is-Star!2726 (regOne!5964 r!15766)))))

(declare-fun d!287545 () Bool)

(declare-fun res!443775 () Bool)

(assert (=> d!287545 (=> res!443775 e!629135)))

(assert (=> d!287545 (= res!443775 (is-ElementMatch!2726 (regOne!5964 r!15766)))))

(assert (=> d!287545 (= (validRegex!1195 (regOne!5964 r!15766)) e!629135)))

(declare-fun bm!62456 () Bool)

(declare-fun call!62460 () Bool)

(assert (=> bm!62456 (= call!62460 (validRegex!1195 (ite c!159575 (regOne!5965 (regOne!5964 r!15766)) (regOne!5964 (regOne!5964 r!15766)))))))

(declare-fun b!977119 () Bool)

(declare-fun e!629140 () Bool)

(assert (=> b!977119 (= e!629138 e!629140)))

(assert (=> b!977119 (= c!159575 (is-Union!2726 (regOne!5964 r!15766)))))

(declare-fun b!977120 () Bool)

(declare-fun e!629136 () Bool)

(assert (=> b!977120 (= e!629136 call!62461)))

(declare-fun b!977121 () Bool)

(declare-fun res!443778 () Bool)

(declare-fun e!629137 () Bool)

(assert (=> b!977121 (=> (not res!443778) (not e!629137))))

(assert (=> b!977121 (= res!443778 call!62460)))

(assert (=> b!977121 (= e!629140 e!629137)))

(declare-fun b!977122 () Bool)

(declare-fun e!629134 () Bool)

(declare-fun e!629139 () Bool)

(assert (=> b!977122 (= e!629134 e!629139)))

(declare-fun res!443777 () Bool)

(assert (=> b!977122 (=> (not res!443777) (not e!629139))))

(assert (=> b!977122 (= res!443777 call!62460)))

(declare-fun b!977123 () Bool)

(declare-fun res!443779 () Bool)

(assert (=> b!977123 (=> res!443779 e!629134)))

(assert (=> b!977123 (= res!443779 (not (is-Concat!4559 (regOne!5964 r!15766))))))

(assert (=> b!977123 (= e!629140 e!629134)))

(declare-fun b!977124 () Bool)

(assert (=> b!977124 (= e!629138 e!629136)))

(declare-fun res!443776 () Bool)

(assert (=> b!977124 (= res!443776 (not (nullable!842 (reg!3055 (regOne!5964 r!15766)))))))

(assert (=> b!977124 (=> (not res!443776) (not e!629136))))

(declare-fun b!977125 () Bool)

(assert (=> b!977125 (= e!629137 call!62459)))

(declare-fun b!977126 () Bool)

(assert (=> b!977126 (= e!629139 call!62459)))

(assert (= (and d!287545 (not res!443775)) b!977118))

(assert (= (and b!977118 c!159576) b!977124))

(assert (= (and b!977118 (not c!159576)) b!977119))

(assert (= (and b!977124 res!443776) b!977120))

(assert (= (and b!977119 c!159575) b!977121))

(assert (= (and b!977119 (not c!159575)) b!977123))

(assert (= (and b!977121 res!443778) b!977125))

(assert (= (and b!977123 (not res!443779)) b!977122))

(assert (= (and b!977122 res!443777) b!977126))

(assert (= (or b!977125 b!977126) bm!62454))

(assert (= (or b!977121 b!977122) bm!62456))

(assert (= (or b!977120 bm!62454) bm!62455))

(declare-fun m!1178035 () Bool)

(assert (=> bm!62455 m!1178035))

(declare-fun m!1178037 () Bool)

(assert (=> bm!62456 m!1178037))

(declare-fun m!1178039 () Bool)

(assert (=> b!977124 m!1178039))

(assert (=> b!976822 d!287545))

(declare-fun e!629150 () Bool)

(assert (=> b!976823 (= tp!298817 e!629150)))

(declare-fun b!977153 () Bool)

(declare-fun tp!298851 () Bool)

(assert (=> b!977153 (= e!629150 tp!298851)))

(declare-fun b!977152 () Bool)

(declare-fun tp!298853 () Bool)

(declare-fun tp!298852 () Bool)

(assert (=> b!977152 (= e!629150 (and tp!298853 tp!298852))))

(declare-fun b!977154 () Bool)

(declare-fun tp!298855 () Bool)

(declare-fun tp!298854 () Bool)

(assert (=> b!977154 (= e!629150 (and tp!298855 tp!298854))))

(declare-fun b!977151 () Bool)

(assert (=> b!977151 (= e!629150 tp_is_empty!5095)))

(assert (= (and b!976823 (is-ElementMatch!2726 (regOne!5965 r!15766))) b!977151))

(assert (= (and b!976823 (is-Concat!4559 (regOne!5965 r!15766))) b!977152))

(assert (= (and b!976823 (is-Star!2726 (regOne!5965 r!15766))) b!977153))

(assert (= (and b!976823 (is-Union!2726 (regOne!5965 r!15766))) b!977154))

(declare-fun e!629151 () Bool)

(assert (=> b!976823 (= tp!298822 e!629151)))

(declare-fun b!977157 () Bool)

(declare-fun tp!298856 () Bool)

(assert (=> b!977157 (= e!629151 tp!298856)))

(declare-fun b!977156 () Bool)

(declare-fun tp!298858 () Bool)

(declare-fun tp!298857 () Bool)

(assert (=> b!977156 (= e!629151 (and tp!298858 tp!298857))))

(declare-fun b!977158 () Bool)

(declare-fun tp!298860 () Bool)

(declare-fun tp!298859 () Bool)

(assert (=> b!977158 (= e!629151 (and tp!298860 tp!298859))))

(declare-fun b!977155 () Bool)

(assert (=> b!977155 (= e!629151 tp_is_empty!5095)))

(assert (= (and b!976823 (is-ElementMatch!2726 (regTwo!5965 r!15766))) b!977155))

(assert (= (and b!976823 (is-Concat!4559 (regTwo!5965 r!15766))) b!977156))

(assert (= (and b!976823 (is-Star!2726 (regTwo!5965 r!15766))) b!977157))

(assert (= (and b!976823 (is-Union!2726 (regTwo!5965 r!15766))) b!977158))

(declare-fun b!977163 () Bool)

(declare-fun e!629154 () Bool)

(declare-fun tp!298863 () Bool)

(assert (=> b!977163 (= e!629154 (and tp_is_empty!5095 tp!298863))))

(assert (=> b!976829 (= tp!298819 e!629154)))

(assert (= (and b!976829 (is-Cons!9940 (t!101002 s!10566))) b!977163))

(declare-fun e!629155 () Bool)

(assert (=> b!976825 (= tp!298818 e!629155)))

(declare-fun b!977166 () Bool)

(declare-fun tp!298864 () Bool)

(assert (=> b!977166 (= e!629155 tp!298864)))

(declare-fun b!977165 () Bool)

(declare-fun tp!298866 () Bool)

(declare-fun tp!298865 () Bool)

(assert (=> b!977165 (= e!629155 (and tp!298866 tp!298865))))

(declare-fun b!977167 () Bool)

(declare-fun tp!298868 () Bool)

(declare-fun tp!298867 () Bool)

(assert (=> b!977167 (= e!629155 (and tp!298868 tp!298867))))

(declare-fun b!977164 () Bool)

(assert (=> b!977164 (= e!629155 tp_is_empty!5095)))

(assert (= (and b!976825 (is-ElementMatch!2726 (reg!3055 r!15766))) b!977164))

(assert (= (and b!976825 (is-Concat!4559 (reg!3055 r!15766))) b!977165))

(assert (= (and b!976825 (is-Star!2726 (reg!3055 r!15766))) b!977166))

(assert (= (and b!976825 (is-Union!2726 (reg!3055 r!15766))) b!977167))

(declare-fun e!629156 () Bool)

(assert (=> b!976828 (= tp!298821 e!629156)))

(declare-fun b!977170 () Bool)

(declare-fun tp!298869 () Bool)

(assert (=> b!977170 (= e!629156 tp!298869)))

(declare-fun b!977169 () Bool)

(declare-fun tp!298871 () Bool)

(declare-fun tp!298870 () Bool)

(assert (=> b!977169 (= e!629156 (and tp!298871 tp!298870))))

(declare-fun b!977171 () Bool)

(declare-fun tp!298873 () Bool)

(declare-fun tp!298872 () Bool)

(assert (=> b!977171 (= e!629156 (and tp!298873 tp!298872))))

(declare-fun b!977168 () Bool)

(assert (=> b!977168 (= e!629156 tp_is_empty!5095)))

(assert (= (and b!976828 (is-ElementMatch!2726 (regOne!5964 r!15766))) b!977168))

(assert (= (and b!976828 (is-Concat!4559 (regOne!5964 r!15766))) b!977169))

(assert (= (and b!976828 (is-Star!2726 (regOne!5964 r!15766))) b!977170))

(assert (= (and b!976828 (is-Union!2726 (regOne!5964 r!15766))) b!977171))

(declare-fun e!629157 () Bool)

(assert (=> b!976828 (= tp!298820 e!629157)))

(declare-fun b!977174 () Bool)

(declare-fun tp!298874 () Bool)

(assert (=> b!977174 (= e!629157 tp!298874)))

(declare-fun b!977173 () Bool)

(declare-fun tp!298876 () Bool)

(declare-fun tp!298875 () Bool)

(assert (=> b!977173 (= e!629157 (and tp!298876 tp!298875))))

(declare-fun b!977175 () Bool)

(declare-fun tp!298878 () Bool)

(declare-fun tp!298877 () Bool)

(assert (=> b!977175 (= e!629157 (and tp!298878 tp!298877))))

(declare-fun b!977172 () Bool)

(assert (=> b!977172 (= e!629157 tp_is_empty!5095)))

(assert (= (and b!976828 (is-ElementMatch!2726 (regTwo!5964 r!15766))) b!977172))

(assert (= (and b!976828 (is-Concat!4559 (regTwo!5964 r!15766))) b!977173))

(assert (= (and b!976828 (is-Star!2726 (regTwo!5964 r!15766))) b!977174))

(assert (= (and b!976828 (is-Union!2726 (regTwo!5964 r!15766))) b!977175))

(push 1)

(assert (not b!977037))

(assert (not bm!62434))

(assert (not b!977153))

(assert (not b!977166))

(assert (not b!977167))

(assert (not b!976995))

(assert (not bm!62452))

(assert (not b!977032))

(assert (not b!976994))

(assert (not b!976993))

(assert (not b!976912))

(assert tp_is_empty!5095)

(assert (not d!287531))

(assert (not bm!62455))

(assert (not b!976999))

(assert (not d!287533))

(assert (not bm!62435))

(assert (not bm!62429))

(assert (not bm!62436))

(assert (not d!287525))

(assert (not b!976913))

(assert (not b!977175))

(assert (not b!976991))

(assert (not d!287511))

(assert (not b!977115))

(assert (not b!977154))

(assert (not b!976914))

(assert (not b!977036))

(assert (not d!287541))

(assert (not d!287539))

(assert (not b!977156))

(assert (not bm!62453))

(assert (not d!287523))

(assert (not b!977157))

(assert (not b!977169))

(assert (not b!976961))

(assert (not b!977158))

(assert (not d!287521))

(assert (not b!977174))

(assert (not b!977152))

(assert (not b!977170))

(assert (not b!977124))

(assert (not b!977163))

(assert (not b!977173))

(assert (not b!977038))

(assert (not b!976916))

(assert (not b!977165))

(assert (not b!977034))

(assert (not b!976992))

(assert (not b!976915))

(assert (not bm!62456))

(assert (not b!977035))

(assert (not d!287527))

(assert (not b!976965))

(assert (not b!977171))

(assert (not b!976920))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

