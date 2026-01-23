; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83202 () Bool)

(assert start!83202)

(declare-fun b!928520 () Bool)

(declare-fun res!422011 () Bool)

(declare-fun e!603734 () Bool)

(assert (=> b!928520 (=> res!422011 e!603734)))

(declare-datatypes ((C!5596 0))(
  ( (C!5597 (val!3046 Int)) )
))
(declare-datatypes ((Regex!2513 0))(
  ( (ElementMatch!2513 (c!150806 C!5596)) (Concat!4346 (regOne!5538 Regex!2513) (regTwo!5538 Regex!2513)) (EmptyExpr!2513) (Star!2513 (reg!2842 Regex!2513)) (EmptyLang!2513) (Union!2513 (regOne!5539 Regex!2513) (regTwo!5539 Regex!2513)) )
))
(declare-fun r!15766 () Regex!2513)

(declare-datatypes ((List!9743 0))(
  ( (Nil!9727) (Cons!9727 (h!15128 C!5596) (t!100789 List!9743)) )
))
(declare-fun s!10566 () List!9743)

(declare-fun matchR!1051 (Regex!2513 List!9743) Bool)

(declare-fun removeUselessConcat!188 (Regex!2513) Regex!2513)

(assert (=> b!928520 (= res!422011 (not (matchR!1051 (Union!2513 (removeUselessConcat!188 (regOne!5539 r!15766)) (removeUselessConcat!188 (regTwo!5539 r!15766))) s!10566)))))

(declare-fun res!422010 () Bool)

(declare-fun e!603735 () Bool)

(assert (=> start!83202 (=> (not res!422010) (not e!603735))))

(declare-fun validRegex!982 (Regex!2513) Bool)

(assert (=> start!83202 (= res!422010 (validRegex!982 r!15766))))

(assert (=> start!83202 e!603735))

(declare-fun e!603732 () Bool)

(assert (=> start!83202 e!603732))

(declare-fun e!603733 () Bool)

(assert (=> start!83202 e!603733))

(declare-fun b!928521 () Bool)

(declare-fun tp!288460 () Bool)

(declare-fun tp!288455 () Bool)

(assert (=> b!928521 (= e!603732 (and tp!288460 tp!288455))))

(declare-fun b!928522 () Bool)

(assert (=> b!928522 (= e!603734 (validRegex!982 (regTwo!5539 r!15766)))))

(declare-fun b!928523 () Bool)

(declare-fun tp!288458 () Bool)

(declare-fun tp!288459 () Bool)

(assert (=> b!928523 (= e!603732 (and tp!288458 tp!288459))))

(declare-fun b!928524 () Bool)

(assert (=> b!928524 (= e!603735 (not e!603734))))

(declare-fun res!422012 () Bool)

(assert (=> b!928524 (=> res!422012 e!603734)))

(declare-fun lt!339916 () Bool)

(get-info :version)

(assert (=> b!928524 (= res!422012 (or lt!339916 (and ((_ is Concat!4346) r!15766) ((_ is EmptyExpr!2513) (regOne!5538 r!15766))) (and ((_ is Concat!4346) r!15766) ((_ is EmptyExpr!2513) (regTwo!5538 r!15766))) ((_ is Concat!4346) r!15766) (not ((_ is Union!2513) r!15766))))))

(declare-fun matchRSpec!314 (Regex!2513 List!9743) Bool)

(assert (=> b!928524 (= lt!339916 (matchRSpec!314 r!15766 s!10566))))

(assert (=> b!928524 (= lt!339916 (matchR!1051 r!15766 s!10566))))

(declare-datatypes ((Unit!14645 0))(
  ( (Unit!14646) )
))
(declare-fun lt!339917 () Unit!14645)

(declare-fun mainMatchTheorem!314 (Regex!2513 List!9743) Unit!14645)

(assert (=> b!928524 (= lt!339917 (mainMatchTheorem!314 r!15766 s!10566))))

(declare-fun b!928525 () Bool)

(declare-fun tp_is_empty!4669 () Bool)

(declare-fun tp!288456 () Bool)

(assert (=> b!928525 (= e!603733 (and tp_is_empty!4669 tp!288456))))

(declare-fun b!928526 () Bool)

(assert (=> b!928526 (= e!603732 tp_is_empty!4669)))

(declare-fun b!928527 () Bool)

(declare-fun tp!288457 () Bool)

(assert (=> b!928527 (= e!603732 tp!288457)))

(assert (= (and start!83202 res!422010) b!928524))

(assert (= (and b!928524 (not res!422012)) b!928520))

(assert (= (and b!928520 (not res!422011)) b!928522))

(assert (= (and start!83202 ((_ is ElementMatch!2513) r!15766)) b!928526))

(assert (= (and start!83202 ((_ is Concat!4346) r!15766)) b!928521))

(assert (= (and start!83202 ((_ is Star!2513) r!15766)) b!928527))

(assert (= (and start!83202 ((_ is Union!2513) r!15766)) b!928523))

(assert (= (and start!83202 ((_ is Cons!9727) s!10566)) b!928525))

(declare-fun m!1152229 () Bool)

(assert (=> b!928520 m!1152229))

(declare-fun m!1152231 () Bool)

(assert (=> b!928520 m!1152231))

(declare-fun m!1152233 () Bool)

(assert (=> b!928520 m!1152233))

(declare-fun m!1152235 () Bool)

(assert (=> start!83202 m!1152235))

(declare-fun m!1152237 () Bool)

(assert (=> b!928522 m!1152237))

(declare-fun m!1152239 () Bool)

(assert (=> b!928524 m!1152239))

(declare-fun m!1152241 () Bool)

(assert (=> b!928524 m!1152241))

(declare-fun m!1152243 () Bool)

(assert (=> b!928524 m!1152243))

(check-sat (not b!928525) (not start!83202) (not b!928522) (not b!928521) (not b!928524) (not b!928523) tp_is_empty!4669 (not b!928520) (not b!928527))
(check-sat)
(get-model)

(declare-fun b!928692 () Bool)

(assert (=> b!928692 true))

(assert (=> b!928692 true))

(declare-fun bs!237613 () Bool)

(declare-fun b!928695 () Bool)

(assert (= bs!237613 (and b!928695 b!928692)))

(declare-fun lambda!30740 () Int)

(declare-fun lambda!30738 () Int)

(assert (=> bs!237613 (not (= lambda!30740 lambda!30738))))

(assert (=> b!928695 true))

(assert (=> b!928695 true))

(declare-fun b!928689 () Bool)

(declare-fun e!603826 () Bool)

(assert (=> b!928689 (= e!603826 (matchRSpec!314 (regTwo!5539 r!15766) s!10566))))

(declare-fun b!928691 () Bool)

(declare-fun e!603825 () Bool)

(declare-fun e!603830 () Bool)

(assert (=> b!928691 (= e!603825 e!603830)))

(declare-fun c!150859 () Bool)

(assert (=> b!928691 (= c!150859 ((_ is Star!2513) r!15766))))

(declare-fun bm!57020 () Bool)

(declare-fun call!57025 () Bool)

(declare-fun isEmpty!5986 (List!9743) Bool)

(assert (=> bm!57020 (= call!57025 (isEmpty!5986 s!10566))))

(declare-fun e!603824 () Bool)

(declare-fun call!57026 () Bool)

(assert (=> b!928692 (= e!603824 call!57026)))

(declare-fun b!928693 () Bool)

(declare-fun e!603829 () Bool)

(assert (=> b!928693 (= e!603829 call!57025)))

(declare-fun b!928694 () Bool)

(declare-fun c!150858 () Bool)

(assert (=> b!928694 (= c!150858 ((_ is ElementMatch!2513) r!15766))))

(declare-fun e!603828 () Bool)

(declare-fun e!603827 () Bool)

(assert (=> b!928694 (= e!603828 e!603827)))

(assert (=> b!928695 (= e!603830 call!57026)))

(declare-fun b!928696 () Bool)

(assert (=> b!928696 (= e!603827 (= s!10566 (Cons!9727 (c!150806 r!15766) Nil!9727)))))

(declare-fun b!928697 () Bool)

(assert (=> b!928697 (= e!603825 e!603826)))

(declare-fun res!422077 () Bool)

(assert (=> b!928697 (= res!422077 (matchRSpec!314 (regOne!5539 r!15766) s!10566))))

(assert (=> b!928697 (=> res!422077 e!603826)))

(declare-fun bm!57021 () Bool)

(declare-fun Exists!283 (Int) Bool)

(assert (=> bm!57021 (= call!57026 (Exists!283 (ite c!150859 lambda!30738 lambda!30740)))))

(declare-fun b!928698 () Bool)

(declare-fun res!422078 () Bool)

(assert (=> b!928698 (=> res!422078 e!603824)))

(assert (=> b!928698 (= res!422078 call!57025)))

(assert (=> b!928698 (= e!603830 e!603824)))

(declare-fun b!928699 () Bool)

(assert (=> b!928699 (= e!603829 e!603828)))

(declare-fun res!422076 () Bool)

(assert (=> b!928699 (= res!422076 (not ((_ is EmptyLang!2513) r!15766)))))

(assert (=> b!928699 (=> (not res!422076) (not e!603828))))

(declare-fun b!928690 () Bool)

(declare-fun c!150857 () Bool)

(assert (=> b!928690 (= c!150857 ((_ is Union!2513) r!15766))))

(assert (=> b!928690 (= e!603827 e!603825)))

(declare-fun d!281244 () Bool)

(declare-fun c!150856 () Bool)

(assert (=> d!281244 (= c!150856 ((_ is EmptyExpr!2513) r!15766))))

(assert (=> d!281244 (= (matchRSpec!314 r!15766 s!10566) e!603829)))

(assert (= (and d!281244 c!150856) b!928693))

(assert (= (and d!281244 (not c!150856)) b!928699))

(assert (= (and b!928699 res!422076) b!928694))

(assert (= (and b!928694 c!150858) b!928696))

(assert (= (and b!928694 (not c!150858)) b!928690))

(assert (= (and b!928690 c!150857) b!928697))

(assert (= (and b!928690 (not c!150857)) b!928691))

(assert (= (and b!928697 (not res!422077)) b!928689))

(assert (= (and b!928691 c!150859) b!928698))

(assert (= (and b!928691 (not c!150859)) b!928695))

(assert (= (and b!928698 (not res!422078)) b!928692))

(assert (= (or b!928692 b!928695) bm!57021))

(assert (= (or b!928693 b!928698) bm!57020))

(declare-fun m!1152289 () Bool)

(assert (=> b!928689 m!1152289))

(declare-fun m!1152291 () Bool)

(assert (=> bm!57020 m!1152291))

(declare-fun m!1152293 () Bool)

(assert (=> b!928697 m!1152293))

(declare-fun m!1152295 () Bool)

(assert (=> bm!57021 m!1152295))

(assert (=> b!928524 d!281244))

(declare-fun b!928786 () Bool)

(declare-fun e!603886 () Bool)

(declare-fun e!603883 () Bool)

(assert (=> b!928786 (= e!603886 e!603883)))

(declare-fun res!422125 () Bool)

(assert (=> b!928786 (=> (not res!422125) (not e!603883))))

(declare-fun lt!339931 () Bool)

(assert (=> b!928786 (= res!422125 (not lt!339931))))

(declare-fun b!928787 () Bool)

(declare-fun res!422124 () Bool)

(declare-fun e!603882 () Bool)

(assert (=> b!928787 (=> res!422124 e!603882)))

(declare-fun tail!1238 (List!9743) List!9743)

(assert (=> b!928787 (= res!422124 (not (isEmpty!5986 (tail!1238 s!10566))))))

(declare-fun b!928788 () Bool)

(declare-fun res!422130 () Bool)

(declare-fun e!603885 () Bool)

(assert (=> b!928788 (=> (not res!422130) (not e!603885))))

(assert (=> b!928788 (= res!422130 (isEmpty!5986 (tail!1238 s!10566)))))

(declare-fun b!928789 () Bool)

(assert (=> b!928789 (= e!603883 e!603882)))

(declare-fun res!422128 () Bool)

(assert (=> b!928789 (=> res!422128 e!603882)))

(declare-fun call!57042 () Bool)

(assert (=> b!928789 (= res!422128 call!57042)))

(declare-fun bm!57037 () Bool)

(assert (=> bm!57037 (= call!57042 (isEmpty!5986 s!10566))))

(declare-fun b!928790 () Bool)

(declare-fun res!422123 () Bool)

(assert (=> b!928790 (=> res!422123 e!603886)))

(assert (=> b!928790 (= res!422123 (not ((_ is ElementMatch!2513) r!15766)))))

(declare-fun e!603884 () Bool)

(assert (=> b!928790 (= e!603884 e!603886)))

(declare-fun b!928791 () Bool)

(declare-fun res!422126 () Bool)

(assert (=> b!928791 (=> (not res!422126) (not e!603885))))

(assert (=> b!928791 (= res!422126 (not call!57042))))

(declare-fun d!281256 () Bool)

(declare-fun e!603880 () Bool)

(assert (=> d!281256 e!603880))

(declare-fun c!150877 () Bool)

(assert (=> d!281256 (= c!150877 ((_ is EmptyExpr!2513) r!15766))))

(declare-fun e!603881 () Bool)

(assert (=> d!281256 (= lt!339931 e!603881)))

(declare-fun c!150878 () Bool)

(assert (=> d!281256 (= c!150878 (isEmpty!5986 s!10566))))

(assert (=> d!281256 (validRegex!982 r!15766)))

(assert (=> d!281256 (= (matchR!1051 r!15766 s!10566) lt!339931)))

(declare-fun b!928792 () Bool)

(declare-fun res!422129 () Bool)

(assert (=> b!928792 (=> res!422129 e!603886)))

(assert (=> b!928792 (= res!422129 e!603885)))

(declare-fun res!422127 () Bool)

(assert (=> b!928792 (=> (not res!422127) (not e!603885))))

(assert (=> b!928792 (= res!422127 lt!339931)))

(declare-fun b!928793 () Bool)

(assert (=> b!928793 (= e!603884 (not lt!339931))))

(declare-fun b!928794 () Bool)

(declare-fun derivativeStep!523 (Regex!2513 C!5596) Regex!2513)

(declare-fun head!1676 (List!9743) C!5596)

(assert (=> b!928794 (= e!603881 (matchR!1051 (derivativeStep!523 r!15766 (head!1676 s!10566)) (tail!1238 s!10566)))))

(declare-fun b!928795 () Bool)

(assert (=> b!928795 (= e!603880 (= lt!339931 call!57042))))

(declare-fun b!928796 () Bool)

(assert (=> b!928796 (= e!603880 e!603884)))

(declare-fun c!150879 () Bool)

(assert (=> b!928796 (= c!150879 ((_ is EmptyLang!2513) r!15766))))

(declare-fun b!928797 () Bool)

(declare-fun nullable!713 (Regex!2513) Bool)

(assert (=> b!928797 (= e!603881 (nullable!713 r!15766))))

(declare-fun b!928798 () Bool)

(assert (=> b!928798 (= e!603882 (not (= (head!1676 s!10566) (c!150806 r!15766))))))

(declare-fun b!928799 () Bool)

(assert (=> b!928799 (= e!603885 (= (head!1676 s!10566) (c!150806 r!15766)))))

(assert (= (and d!281256 c!150878) b!928797))

(assert (= (and d!281256 (not c!150878)) b!928794))

(assert (= (and d!281256 c!150877) b!928795))

(assert (= (and d!281256 (not c!150877)) b!928796))

(assert (= (and b!928796 c!150879) b!928793))

(assert (= (and b!928796 (not c!150879)) b!928790))

(assert (= (and b!928790 (not res!422123)) b!928792))

(assert (= (and b!928792 res!422127) b!928791))

(assert (= (and b!928791 res!422126) b!928788))

(assert (= (and b!928788 res!422130) b!928799))

(assert (= (and b!928792 (not res!422129)) b!928786))

(assert (= (and b!928786 res!422125) b!928789))

(assert (= (and b!928789 (not res!422128)) b!928787))

(assert (= (and b!928787 (not res!422124)) b!928798))

(assert (= (or b!928795 b!928789 b!928791) bm!57037))

(assert (=> d!281256 m!1152291))

(assert (=> d!281256 m!1152235))

(declare-fun m!1152317 () Bool)

(assert (=> b!928798 m!1152317))

(declare-fun m!1152319 () Bool)

(assert (=> b!928788 m!1152319))

(assert (=> b!928788 m!1152319))

(declare-fun m!1152321 () Bool)

(assert (=> b!928788 m!1152321))

(assert (=> b!928787 m!1152319))

(assert (=> b!928787 m!1152319))

(assert (=> b!928787 m!1152321))

(assert (=> b!928799 m!1152317))

(assert (=> b!928794 m!1152317))

(assert (=> b!928794 m!1152317))

(declare-fun m!1152323 () Bool)

(assert (=> b!928794 m!1152323))

(assert (=> b!928794 m!1152319))

(assert (=> b!928794 m!1152323))

(assert (=> b!928794 m!1152319))

(declare-fun m!1152325 () Bool)

(assert (=> b!928794 m!1152325))

(declare-fun m!1152327 () Bool)

(assert (=> b!928797 m!1152327))

(assert (=> bm!57037 m!1152291))

(assert (=> b!928524 d!281256))

(declare-fun d!281264 () Bool)

(assert (=> d!281264 (= (matchR!1051 r!15766 s!10566) (matchRSpec!314 r!15766 s!10566))))

(declare-fun lt!339934 () Unit!14645)

(declare-fun choose!5712 (Regex!2513 List!9743) Unit!14645)

(assert (=> d!281264 (= lt!339934 (choose!5712 r!15766 s!10566))))

(assert (=> d!281264 (validRegex!982 r!15766)))

(assert (=> d!281264 (= (mainMatchTheorem!314 r!15766 s!10566) lt!339934)))

(declare-fun bs!237615 () Bool)

(assert (= bs!237615 d!281264))

(assert (=> bs!237615 m!1152241))

(assert (=> bs!237615 m!1152239))

(declare-fun m!1152329 () Bool)

(assert (=> bs!237615 m!1152329))

(assert (=> bs!237615 m!1152235))

(assert (=> b!928524 d!281264))

(declare-fun d!281266 () Bool)

(declare-fun res!422142 () Bool)

(declare-fun e!603917 () Bool)

(assert (=> d!281266 (=> res!422142 e!603917)))

(assert (=> d!281266 (= res!422142 ((_ is ElementMatch!2513) (regTwo!5539 r!15766)))))

(assert (=> d!281266 (= (validRegex!982 (regTwo!5539 r!15766)) e!603917)))

(declare-fun b!928853 () Bool)

(declare-fun e!603913 () Bool)

(declare-fun call!57050 () Bool)

(assert (=> b!928853 (= e!603913 call!57050)))

(declare-fun b!928854 () Bool)

(declare-fun e!603912 () Bool)

(assert (=> b!928854 (= e!603917 e!603912)))

(declare-fun c!150884 () Bool)

(assert (=> b!928854 (= c!150884 ((_ is Star!2513) (regTwo!5539 r!15766)))))

(declare-fun b!928855 () Bool)

(declare-fun e!603916 () Bool)

(assert (=> b!928855 (= e!603916 call!57050)))

(declare-fun bm!57044 () Bool)

(declare-fun call!57049 () Bool)

(declare-fun call!57051 () Bool)

(assert (=> bm!57044 (= call!57049 call!57051)))

(declare-fun b!928856 () Bool)

(declare-fun e!603911 () Bool)

(assert (=> b!928856 (= e!603911 e!603913)))

(declare-fun res!422145 () Bool)

(assert (=> b!928856 (=> (not res!422145) (not e!603913))))

(assert (=> b!928856 (= res!422145 call!57049)))

(declare-fun b!928857 () Bool)

(declare-fun e!603914 () Bool)

(assert (=> b!928857 (= e!603914 call!57051)))

(declare-fun b!928858 () Bool)

(assert (=> b!928858 (= e!603912 e!603914)))

(declare-fun res!422144 () Bool)

(assert (=> b!928858 (= res!422144 (not (nullable!713 (reg!2842 (regTwo!5539 r!15766)))))))

(assert (=> b!928858 (=> (not res!422144) (not e!603914))))

(declare-fun c!150885 () Bool)

(declare-fun bm!57045 () Bool)

(assert (=> bm!57045 (= call!57051 (validRegex!982 (ite c!150884 (reg!2842 (regTwo!5539 r!15766)) (ite c!150885 (regOne!5539 (regTwo!5539 r!15766)) (regOne!5538 (regTwo!5539 r!15766))))))))

(declare-fun b!928859 () Bool)

(declare-fun res!422143 () Bool)

(assert (=> b!928859 (=> (not res!422143) (not e!603916))))

(assert (=> b!928859 (= res!422143 call!57049)))

(declare-fun e!603915 () Bool)

(assert (=> b!928859 (= e!603915 e!603916)))

(declare-fun bm!57046 () Bool)

(assert (=> bm!57046 (= call!57050 (validRegex!982 (ite c!150885 (regTwo!5539 (regTwo!5539 r!15766)) (regTwo!5538 (regTwo!5539 r!15766)))))))

(declare-fun b!928860 () Bool)

(declare-fun res!422141 () Bool)

(assert (=> b!928860 (=> res!422141 e!603911)))

(assert (=> b!928860 (= res!422141 (not ((_ is Concat!4346) (regTwo!5539 r!15766))))))

(assert (=> b!928860 (= e!603915 e!603911)))

(declare-fun b!928861 () Bool)

(assert (=> b!928861 (= e!603912 e!603915)))

(assert (=> b!928861 (= c!150885 ((_ is Union!2513) (regTwo!5539 r!15766)))))

(assert (= (and d!281266 (not res!422142)) b!928854))

(assert (= (and b!928854 c!150884) b!928858))

(assert (= (and b!928854 (not c!150884)) b!928861))

(assert (= (and b!928858 res!422144) b!928857))

(assert (= (and b!928861 c!150885) b!928859))

(assert (= (and b!928861 (not c!150885)) b!928860))

(assert (= (and b!928859 res!422143) b!928855))

(assert (= (and b!928860 (not res!422141)) b!928856))

(assert (= (and b!928856 res!422145) b!928853))

(assert (= (or b!928855 b!928853) bm!57046))

(assert (= (or b!928859 b!928856) bm!57044))

(assert (= (or b!928857 bm!57044) bm!57045))

(declare-fun m!1152331 () Bool)

(assert (=> b!928858 m!1152331))

(declare-fun m!1152333 () Bool)

(assert (=> bm!57045 m!1152333))

(declare-fun m!1152335 () Bool)

(assert (=> bm!57046 m!1152335))

(assert (=> b!928522 d!281266))

(declare-fun d!281268 () Bool)

(declare-fun res!422147 () Bool)

(declare-fun e!603924 () Bool)

(assert (=> d!281268 (=> res!422147 e!603924)))

(assert (=> d!281268 (= res!422147 ((_ is ElementMatch!2513) r!15766))))

(assert (=> d!281268 (= (validRegex!982 r!15766) e!603924)))

(declare-fun b!928862 () Bool)

(declare-fun e!603920 () Bool)

(declare-fun call!57053 () Bool)

(assert (=> b!928862 (= e!603920 call!57053)))

(declare-fun b!928863 () Bool)

(declare-fun e!603919 () Bool)

(assert (=> b!928863 (= e!603924 e!603919)))

(declare-fun c!150886 () Bool)

(assert (=> b!928863 (= c!150886 ((_ is Star!2513) r!15766))))

(declare-fun b!928864 () Bool)

(declare-fun e!603923 () Bool)

(assert (=> b!928864 (= e!603923 call!57053)))

(declare-fun bm!57047 () Bool)

(declare-fun call!57052 () Bool)

(declare-fun call!57054 () Bool)

(assert (=> bm!57047 (= call!57052 call!57054)))

(declare-fun b!928865 () Bool)

(declare-fun e!603918 () Bool)

(assert (=> b!928865 (= e!603918 e!603920)))

(declare-fun res!422150 () Bool)

(assert (=> b!928865 (=> (not res!422150) (not e!603920))))

(assert (=> b!928865 (= res!422150 call!57052)))

(declare-fun b!928866 () Bool)

(declare-fun e!603921 () Bool)

(assert (=> b!928866 (= e!603921 call!57054)))

(declare-fun b!928867 () Bool)

(assert (=> b!928867 (= e!603919 e!603921)))

(declare-fun res!422149 () Bool)

(assert (=> b!928867 (= res!422149 (not (nullable!713 (reg!2842 r!15766))))))

(assert (=> b!928867 (=> (not res!422149) (not e!603921))))

(declare-fun bm!57048 () Bool)

(declare-fun c!150887 () Bool)

(assert (=> bm!57048 (= call!57054 (validRegex!982 (ite c!150886 (reg!2842 r!15766) (ite c!150887 (regOne!5539 r!15766) (regOne!5538 r!15766)))))))

(declare-fun b!928868 () Bool)

(declare-fun res!422148 () Bool)

(assert (=> b!928868 (=> (not res!422148) (not e!603923))))

(assert (=> b!928868 (= res!422148 call!57052)))

(declare-fun e!603922 () Bool)

(assert (=> b!928868 (= e!603922 e!603923)))

(declare-fun bm!57049 () Bool)

(assert (=> bm!57049 (= call!57053 (validRegex!982 (ite c!150887 (regTwo!5539 r!15766) (regTwo!5538 r!15766))))))

(declare-fun b!928869 () Bool)

(declare-fun res!422146 () Bool)

(assert (=> b!928869 (=> res!422146 e!603918)))

(assert (=> b!928869 (= res!422146 (not ((_ is Concat!4346) r!15766)))))

(assert (=> b!928869 (= e!603922 e!603918)))

(declare-fun b!928870 () Bool)

(assert (=> b!928870 (= e!603919 e!603922)))

(assert (=> b!928870 (= c!150887 ((_ is Union!2513) r!15766))))

(assert (= (and d!281268 (not res!422147)) b!928863))

(assert (= (and b!928863 c!150886) b!928867))

(assert (= (and b!928863 (not c!150886)) b!928870))

(assert (= (and b!928867 res!422149) b!928866))

(assert (= (and b!928870 c!150887) b!928868))

(assert (= (and b!928870 (not c!150887)) b!928869))

(assert (= (and b!928868 res!422148) b!928864))

(assert (= (and b!928869 (not res!422146)) b!928865))

(assert (= (and b!928865 res!422150) b!928862))

(assert (= (or b!928864 b!928862) bm!57049))

(assert (= (or b!928868 b!928865) bm!57047))

(assert (= (or b!928866 bm!57047) bm!57048))

(declare-fun m!1152337 () Bool)

(assert (=> b!928867 m!1152337))

(declare-fun m!1152339 () Bool)

(assert (=> bm!57048 m!1152339))

(declare-fun m!1152341 () Bool)

(assert (=> bm!57049 m!1152341))

(assert (=> start!83202 d!281268))

(declare-fun b!928871 () Bool)

(declare-fun e!603931 () Bool)

(declare-fun e!603928 () Bool)

(assert (=> b!928871 (= e!603931 e!603928)))

(declare-fun res!422153 () Bool)

(assert (=> b!928871 (=> (not res!422153) (not e!603928))))

(declare-fun lt!339935 () Bool)

(assert (=> b!928871 (= res!422153 (not lt!339935))))

(declare-fun b!928872 () Bool)

(declare-fun res!422152 () Bool)

(declare-fun e!603927 () Bool)

(assert (=> b!928872 (=> res!422152 e!603927)))

(assert (=> b!928872 (= res!422152 (not (isEmpty!5986 (tail!1238 s!10566))))))

(declare-fun b!928873 () Bool)

(declare-fun res!422158 () Bool)

(declare-fun e!603930 () Bool)

(assert (=> b!928873 (=> (not res!422158) (not e!603930))))

(assert (=> b!928873 (= res!422158 (isEmpty!5986 (tail!1238 s!10566)))))

(declare-fun b!928874 () Bool)

(assert (=> b!928874 (= e!603928 e!603927)))

(declare-fun res!422156 () Bool)

(assert (=> b!928874 (=> res!422156 e!603927)))

(declare-fun call!57055 () Bool)

(assert (=> b!928874 (= res!422156 call!57055)))

(declare-fun bm!57050 () Bool)

(assert (=> bm!57050 (= call!57055 (isEmpty!5986 s!10566))))

(declare-fun b!928875 () Bool)

(declare-fun res!422151 () Bool)

(assert (=> b!928875 (=> res!422151 e!603931)))

(assert (=> b!928875 (= res!422151 (not ((_ is ElementMatch!2513) (Union!2513 (removeUselessConcat!188 (regOne!5539 r!15766)) (removeUselessConcat!188 (regTwo!5539 r!15766))))))))

(declare-fun e!603929 () Bool)

(assert (=> b!928875 (= e!603929 e!603931)))

(declare-fun b!928876 () Bool)

(declare-fun res!422154 () Bool)

(assert (=> b!928876 (=> (not res!422154) (not e!603930))))

(assert (=> b!928876 (= res!422154 (not call!57055))))

(declare-fun d!281270 () Bool)

(declare-fun e!603925 () Bool)

(assert (=> d!281270 e!603925))

(declare-fun c!150888 () Bool)

(assert (=> d!281270 (= c!150888 ((_ is EmptyExpr!2513) (Union!2513 (removeUselessConcat!188 (regOne!5539 r!15766)) (removeUselessConcat!188 (regTwo!5539 r!15766)))))))

(declare-fun e!603926 () Bool)

(assert (=> d!281270 (= lt!339935 e!603926)))

(declare-fun c!150889 () Bool)

(assert (=> d!281270 (= c!150889 (isEmpty!5986 s!10566))))

(assert (=> d!281270 (validRegex!982 (Union!2513 (removeUselessConcat!188 (regOne!5539 r!15766)) (removeUselessConcat!188 (regTwo!5539 r!15766))))))

(assert (=> d!281270 (= (matchR!1051 (Union!2513 (removeUselessConcat!188 (regOne!5539 r!15766)) (removeUselessConcat!188 (regTwo!5539 r!15766))) s!10566) lt!339935)))

(declare-fun b!928877 () Bool)

(declare-fun res!422157 () Bool)

(assert (=> b!928877 (=> res!422157 e!603931)))

(assert (=> b!928877 (= res!422157 e!603930)))

(declare-fun res!422155 () Bool)

(assert (=> b!928877 (=> (not res!422155) (not e!603930))))

(assert (=> b!928877 (= res!422155 lt!339935)))

(declare-fun b!928878 () Bool)

(assert (=> b!928878 (= e!603929 (not lt!339935))))

(declare-fun b!928879 () Bool)

(assert (=> b!928879 (= e!603926 (matchR!1051 (derivativeStep!523 (Union!2513 (removeUselessConcat!188 (regOne!5539 r!15766)) (removeUselessConcat!188 (regTwo!5539 r!15766))) (head!1676 s!10566)) (tail!1238 s!10566)))))

(declare-fun b!928880 () Bool)

(assert (=> b!928880 (= e!603925 (= lt!339935 call!57055))))

(declare-fun b!928881 () Bool)

(assert (=> b!928881 (= e!603925 e!603929)))

(declare-fun c!150890 () Bool)

(assert (=> b!928881 (= c!150890 ((_ is EmptyLang!2513) (Union!2513 (removeUselessConcat!188 (regOne!5539 r!15766)) (removeUselessConcat!188 (regTwo!5539 r!15766)))))))

(declare-fun b!928882 () Bool)

(assert (=> b!928882 (= e!603926 (nullable!713 (Union!2513 (removeUselessConcat!188 (regOne!5539 r!15766)) (removeUselessConcat!188 (regTwo!5539 r!15766)))))))

(declare-fun b!928883 () Bool)

(assert (=> b!928883 (= e!603927 (not (= (head!1676 s!10566) (c!150806 (Union!2513 (removeUselessConcat!188 (regOne!5539 r!15766)) (removeUselessConcat!188 (regTwo!5539 r!15766)))))))))

(declare-fun b!928884 () Bool)

(assert (=> b!928884 (= e!603930 (= (head!1676 s!10566) (c!150806 (Union!2513 (removeUselessConcat!188 (regOne!5539 r!15766)) (removeUselessConcat!188 (regTwo!5539 r!15766))))))))

(assert (= (and d!281270 c!150889) b!928882))

(assert (= (and d!281270 (not c!150889)) b!928879))

(assert (= (and d!281270 c!150888) b!928880))

(assert (= (and d!281270 (not c!150888)) b!928881))

(assert (= (and b!928881 c!150890) b!928878))

(assert (= (and b!928881 (not c!150890)) b!928875))

(assert (= (and b!928875 (not res!422151)) b!928877))

(assert (= (and b!928877 res!422155) b!928876))

(assert (= (and b!928876 res!422154) b!928873))

(assert (= (and b!928873 res!422158) b!928884))

(assert (= (and b!928877 (not res!422157)) b!928871))

(assert (= (and b!928871 res!422153) b!928874))

(assert (= (and b!928874 (not res!422156)) b!928872))

(assert (= (and b!928872 (not res!422152)) b!928883))

(assert (= (or b!928880 b!928874 b!928876) bm!57050))

(assert (=> d!281270 m!1152291))

(declare-fun m!1152343 () Bool)

(assert (=> d!281270 m!1152343))

(assert (=> b!928883 m!1152317))

(assert (=> b!928873 m!1152319))

(assert (=> b!928873 m!1152319))

(assert (=> b!928873 m!1152321))

(assert (=> b!928872 m!1152319))

(assert (=> b!928872 m!1152319))

(assert (=> b!928872 m!1152321))

(assert (=> b!928884 m!1152317))

(assert (=> b!928879 m!1152317))

(assert (=> b!928879 m!1152317))

(declare-fun m!1152345 () Bool)

(assert (=> b!928879 m!1152345))

(assert (=> b!928879 m!1152319))

(assert (=> b!928879 m!1152345))

(assert (=> b!928879 m!1152319))

(declare-fun m!1152347 () Bool)

(assert (=> b!928879 m!1152347))

(declare-fun m!1152349 () Bool)

(assert (=> b!928882 m!1152349))

(assert (=> bm!57050 m!1152291))

(assert (=> b!928520 d!281270))

(declare-fun bm!57061 () Bool)

(declare-fun call!57066 () Regex!2513)

(declare-fun call!57068 () Regex!2513)

(assert (=> bm!57061 (= call!57066 call!57068)))

(declare-fun c!150905 () Bool)

(declare-fun c!150903 () Bool)

(declare-fun c!150902 () Bool)

(declare-fun call!57069 () Regex!2513)

(declare-fun bm!57062 () Bool)

(assert (=> bm!57062 (= call!57069 (removeUselessConcat!188 (ite c!150903 (regTwo!5538 (regOne!5539 r!15766)) (ite c!150902 (regOne!5538 (regOne!5539 r!15766)) (ite c!150905 (regTwo!5538 (regOne!5539 r!15766)) (regOne!5539 (regOne!5539 r!15766)))))))))

(declare-fun b!928907 () Bool)

(declare-fun e!603947 () Regex!2513)

(declare-fun call!57067 () Regex!2513)

(assert (=> b!928907 (= e!603947 (Concat!4346 call!57068 call!57067))))

(declare-fun b!928908 () Bool)

(assert (=> b!928908 (= c!150905 ((_ is Concat!4346) (regOne!5539 r!15766)))))

(declare-fun e!603946 () Regex!2513)

(assert (=> b!928908 (= e!603946 e!603947)))

(declare-fun b!928909 () Bool)

(declare-fun e!603948 () Regex!2513)

(assert (=> b!928909 (= e!603948 e!603946)))

(assert (=> b!928909 (= c!150902 (and ((_ is Concat!4346) (regOne!5539 r!15766)) ((_ is EmptyExpr!2513) (regTwo!5538 (regOne!5539 r!15766)))))))

(declare-fun b!928910 () Bool)

(declare-fun c!150901 () Bool)

(assert (=> b!928910 (= c!150901 ((_ is Star!2513) (regOne!5539 r!15766)))))

(declare-fun e!603949 () Regex!2513)

(declare-fun e!603944 () Regex!2513)

(assert (=> b!928910 (= e!603949 e!603944)))

(declare-fun bm!57063 () Bool)

(declare-fun call!57070 () Regex!2513)

(assert (=> bm!57063 (= call!57070 call!57069)))

(declare-fun b!928911 () Bool)

(assert (=> b!928911 (= e!603946 call!57070)))

(declare-fun b!928912 () Bool)

(assert (=> b!928912 (= e!603947 e!603949)))

(declare-fun c!150904 () Bool)

(assert (=> b!928912 (= c!150904 ((_ is Union!2513) (regOne!5539 r!15766)))))

(declare-fun b!928914 () Bool)

(assert (=> b!928914 (= e!603948 call!57069)))

(declare-fun b!928915 () Bool)

(declare-fun e!603945 () Bool)

(declare-fun lt!339938 () Regex!2513)

(assert (=> b!928915 (= e!603945 (= (nullable!713 lt!339938) (nullable!713 (regOne!5539 r!15766))))))

(declare-fun bm!57064 () Bool)

(assert (=> bm!57064 (= call!57068 (removeUselessConcat!188 (ite c!150905 (regOne!5538 (regOne!5539 r!15766)) (ite c!150904 (regTwo!5539 (regOne!5539 r!15766)) (reg!2842 (regOne!5539 r!15766))))))))

(declare-fun b!928916 () Bool)

(assert (=> b!928916 (= e!603944 (Star!2513 call!57066))))

(declare-fun bm!57065 () Bool)

(assert (=> bm!57065 (= call!57067 call!57070)))

(declare-fun b!928917 () Bool)

(assert (=> b!928917 (= e!603944 (regOne!5539 r!15766))))

(declare-fun d!281272 () Bool)

(assert (=> d!281272 e!603945))

(declare-fun res!422161 () Bool)

(assert (=> d!281272 (=> (not res!422161) (not e!603945))))

(assert (=> d!281272 (= res!422161 (validRegex!982 lt!339938))))

(assert (=> d!281272 (= lt!339938 e!603948)))

(assert (=> d!281272 (= c!150903 (and ((_ is Concat!4346) (regOne!5539 r!15766)) ((_ is EmptyExpr!2513) (regOne!5538 (regOne!5539 r!15766)))))))

(assert (=> d!281272 (validRegex!982 (regOne!5539 r!15766))))

(assert (=> d!281272 (= (removeUselessConcat!188 (regOne!5539 r!15766)) lt!339938)))

(declare-fun b!928913 () Bool)

(assert (=> b!928913 (= e!603949 (Union!2513 call!57067 call!57066))))

(assert (= (and d!281272 c!150903) b!928914))

(assert (= (and d!281272 (not c!150903)) b!928909))

(assert (= (and b!928909 c!150902) b!928911))

(assert (= (and b!928909 (not c!150902)) b!928908))

(assert (= (and b!928908 c!150905) b!928907))

(assert (= (and b!928908 (not c!150905)) b!928912))

(assert (= (and b!928912 c!150904) b!928913))

(assert (= (and b!928912 (not c!150904)) b!928910))

(assert (= (and b!928910 c!150901) b!928916))

(assert (= (and b!928910 (not c!150901)) b!928917))

(assert (= (or b!928913 b!928916) bm!57061))

(assert (= (or b!928907 b!928913) bm!57065))

(assert (= (or b!928907 bm!57061) bm!57064))

(assert (= (or b!928911 bm!57065) bm!57063))

(assert (= (or b!928914 bm!57063) bm!57062))

(assert (= (and d!281272 res!422161) b!928915))

(declare-fun m!1152351 () Bool)

(assert (=> bm!57062 m!1152351))

(declare-fun m!1152353 () Bool)

(assert (=> b!928915 m!1152353))

(declare-fun m!1152355 () Bool)

(assert (=> b!928915 m!1152355))

(declare-fun m!1152357 () Bool)

(assert (=> bm!57064 m!1152357))

(declare-fun m!1152359 () Bool)

(assert (=> d!281272 m!1152359))

(declare-fun m!1152361 () Bool)

(assert (=> d!281272 m!1152361))

(assert (=> b!928520 d!281272))

(declare-fun bm!57066 () Bool)

(declare-fun call!57071 () Regex!2513)

(declare-fun call!57073 () Regex!2513)

(assert (=> bm!57066 (= call!57071 call!57073)))

(declare-fun c!150910 () Bool)

(declare-fun call!57074 () Regex!2513)

(declare-fun c!150907 () Bool)

(declare-fun bm!57067 () Bool)

(declare-fun c!150908 () Bool)

(assert (=> bm!57067 (= call!57074 (removeUselessConcat!188 (ite c!150908 (regTwo!5538 (regTwo!5539 r!15766)) (ite c!150907 (regOne!5538 (regTwo!5539 r!15766)) (ite c!150910 (regTwo!5538 (regTwo!5539 r!15766)) (regOne!5539 (regTwo!5539 r!15766)))))))))

(declare-fun b!928918 () Bool)

(declare-fun e!603953 () Regex!2513)

(declare-fun call!57072 () Regex!2513)

(assert (=> b!928918 (= e!603953 (Concat!4346 call!57073 call!57072))))

(declare-fun b!928919 () Bool)

(assert (=> b!928919 (= c!150910 ((_ is Concat!4346) (regTwo!5539 r!15766)))))

(declare-fun e!603952 () Regex!2513)

(assert (=> b!928919 (= e!603952 e!603953)))

(declare-fun b!928920 () Bool)

(declare-fun e!603954 () Regex!2513)

(assert (=> b!928920 (= e!603954 e!603952)))

(assert (=> b!928920 (= c!150907 (and ((_ is Concat!4346) (regTwo!5539 r!15766)) ((_ is EmptyExpr!2513) (regTwo!5538 (regTwo!5539 r!15766)))))))

(declare-fun b!928921 () Bool)

(declare-fun c!150906 () Bool)

(assert (=> b!928921 (= c!150906 ((_ is Star!2513) (regTwo!5539 r!15766)))))

(declare-fun e!603955 () Regex!2513)

(declare-fun e!603950 () Regex!2513)

(assert (=> b!928921 (= e!603955 e!603950)))

(declare-fun bm!57068 () Bool)

(declare-fun call!57075 () Regex!2513)

(assert (=> bm!57068 (= call!57075 call!57074)))

(declare-fun b!928922 () Bool)

(assert (=> b!928922 (= e!603952 call!57075)))

(declare-fun b!928923 () Bool)

(assert (=> b!928923 (= e!603953 e!603955)))

(declare-fun c!150909 () Bool)

(assert (=> b!928923 (= c!150909 ((_ is Union!2513) (regTwo!5539 r!15766)))))

(declare-fun b!928925 () Bool)

(assert (=> b!928925 (= e!603954 call!57074)))

(declare-fun b!928926 () Bool)

(declare-fun e!603951 () Bool)

(declare-fun lt!339939 () Regex!2513)

(assert (=> b!928926 (= e!603951 (= (nullable!713 lt!339939) (nullable!713 (regTwo!5539 r!15766))))))

(declare-fun bm!57069 () Bool)

(assert (=> bm!57069 (= call!57073 (removeUselessConcat!188 (ite c!150910 (regOne!5538 (regTwo!5539 r!15766)) (ite c!150909 (regTwo!5539 (regTwo!5539 r!15766)) (reg!2842 (regTwo!5539 r!15766))))))))

(declare-fun b!928927 () Bool)

(assert (=> b!928927 (= e!603950 (Star!2513 call!57071))))

(declare-fun bm!57070 () Bool)

(assert (=> bm!57070 (= call!57072 call!57075)))

(declare-fun b!928928 () Bool)

(assert (=> b!928928 (= e!603950 (regTwo!5539 r!15766))))

(declare-fun d!281274 () Bool)

(assert (=> d!281274 e!603951))

(declare-fun res!422162 () Bool)

(assert (=> d!281274 (=> (not res!422162) (not e!603951))))

(assert (=> d!281274 (= res!422162 (validRegex!982 lt!339939))))

(assert (=> d!281274 (= lt!339939 e!603954)))

(assert (=> d!281274 (= c!150908 (and ((_ is Concat!4346) (regTwo!5539 r!15766)) ((_ is EmptyExpr!2513) (regOne!5538 (regTwo!5539 r!15766)))))))

(assert (=> d!281274 (validRegex!982 (regTwo!5539 r!15766))))

(assert (=> d!281274 (= (removeUselessConcat!188 (regTwo!5539 r!15766)) lt!339939)))

(declare-fun b!928924 () Bool)

(assert (=> b!928924 (= e!603955 (Union!2513 call!57072 call!57071))))

(assert (= (and d!281274 c!150908) b!928925))

(assert (= (and d!281274 (not c!150908)) b!928920))

(assert (= (and b!928920 c!150907) b!928922))

(assert (= (and b!928920 (not c!150907)) b!928919))

(assert (= (and b!928919 c!150910) b!928918))

(assert (= (and b!928919 (not c!150910)) b!928923))

(assert (= (and b!928923 c!150909) b!928924))

(assert (= (and b!928923 (not c!150909)) b!928921))

(assert (= (and b!928921 c!150906) b!928927))

(assert (= (and b!928921 (not c!150906)) b!928928))

(assert (= (or b!928924 b!928927) bm!57066))

(assert (= (or b!928918 b!928924) bm!57070))

(assert (= (or b!928918 bm!57066) bm!57069))

(assert (= (or b!928922 bm!57070) bm!57068))

(assert (= (or b!928925 bm!57068) bm!57067))

(assert (= (and d!281274 res!422162) b!928926))

(declare-fun m!1152363 () Bool)

(assert (=> bm!57067 m!1152363))

(declare-fun m!1152365 () Bool)

(assert (=> b!928926 m!1152365))

(declare-fun m!1152367 () Bool)

(assert (=> b!928926 m!1152367))

(declare-fun m!1152369 () Bool)

(assert (=> bm!57069 m!1152369))

(declare-fun m!1152371 () Bool)

(assert (=> d!281274 m!1152371))

(assert (=> d!281274 m!1152237))

(assert (=> b!928520 d!281274))

(declare-fun b!928939 () Bool)

(declare-fun e!603958 () Bool)

(assert (=> b!928939 (= e!603958 tp_is_empty!4669)))

(declare-fun b!928941 () Bool)

(declare-fun tp!288509 () Bool)

(assert (=> b!928941 (= e!603958 tp!288509)))

(assert (=> b!928523 (= tp!288458 e!603958)))

(declare-fun b!928940 () Bool)

(declare-fun tp!288513 () Bool)

(declare-fun tp!288511 () Bool)

(assert (=> b!928940 (= e!603958 (and tp!288513 tp!288511))))

(declare-fun b!928942 () Bool)

(declare-fun tp!288512 () Bool)

(declare-fun tp!288510 () Bool)

(assert (=> b!928942 (= e!603958 (and tp!288512 tp!288510))))

(assert (= (and b!928523 ((_ is ElementMatch!2513) (regOne!5539 r!15766))) b!928939))

(assert (= (and b!928523 ((_ is Concat!4346) (regOne!5539 r!15766))) b!928940))

(assert (= (and b!928523 ((_ is Star!2513) (regOne!5539 r!15766))) b!928941))

(assert (= (and b!928523 ((_ is Union!2513) (regOne!5539 r!15766))) b!928942))

(declare-fun b!928943 () Bool)

(declare-fun e!603959 () Bool)

(assert (=> b!928943 (= e!603959 tp_is_empty!4669)))

(declare-fun b!928945 () Bool)

(declare-fun tp!288514 () Bool)

(assert (=> b!928945 (= e!603959 tp!288514)))

(assert (=> b!928523 (= tp!288459 e!603959)))

(declare-fun b!928944 () Bool)

(declare-fun tp!288518 () Bool)

(declare-fun tp!288516 () Bool)

(assert (=> b!928944 (= e!603959 (and tp!288518 tp!288516))))

(declare-fun b!928946 () Bool)

(declare-fun tp!288517 () Bool)

(declare-fun tp!288515 () Bool)

(assert (=> b!928946 (= e!603959 (and tp!288517 tp!288515))))

(assert (= (and b!928523 ((_ is ElementMatch!2513) (regTwo!5539 r!15766))) b!928943))

(assert (= (and b!928523 ((_ is Concat!4346) (regTwo!5539 r!15766))) b!928944))

(assert (= (and b!928523 ((_ is Star!2513) (regTwo!5539 r!15766))) b!928945))

(assert (= (and b!928523 ((_ is Union!2513) (regTwo!5539 r!15766))) b!928946))

(declare-fun b!928947 () Bool)

(declare-fun e!603960 () Bool)

(assert (=> b!928947 (= e!603960 tp_is_empty!4669)))

(declare-fun b!928949 () Bool)

(declare-fun tp!288519 () Bool)

(assert (=> b!928949 (= e!603960 tp!288519)))

(assert (=> b!928527 (= tp!288457 e!603960)))

(declare-fun b!928948 () Bool)

(declare-fun tp!288523 () Bool)

(declare-fun tp!288521 () Bool)

(assert (=> b!928948 (= e!603960 (and tp!288523 tp!288521))))

(declare-fun b!928950 () Bool)

(declare-fun tp!288522 () Bool)

(declare-fun tp!288520 () Bool)

(assert (=> b!928950 (= e!603960 (and tp!288522 tp!288520))))

(assert (= (and b!928527 ((_ is ElementMatch!2513) (reg!2842 r!15766))) b!928947))

(assert (= (and b!928527 ((_ is Concat!4346) (reg!2842 r!15766))) b!928948))

(assert (= (and b!928527 ((_ is Star!2513) (reg!2842 r!15766))) b!928949))

(assert (= (and b!928527 ((_ is Union!2513) (reg!2842 r!15766))) b!928950))

(declare-fun b!928951 () Bool)

(declare-fun e!603961 () Bool)

(assert (=> b!928951 (= e!603961 tp_is_empty!4669)))

(declare-fun b!928953 () Bool)

(declare-fun tp!288524 () Bool)

(assert (=> b!928953 (= e!603961 tp!288524)))

(assert (=> b!928521 (= tp!288460 e!603961)))

(declare-fun b!928952 () Bool)

(declare-fun tp!288528 () Bool)

(declare-fun tp!288526 () Bool)

(assert (=> b!928952 (= e!603961 (and tp!288528 tp!288526))))

(declare-fun b!928954 () Bool)

(declare-fun tp!288527 () Bool)

(declare-fun tp!288525 () Bool)

(assert (=> b!928954 (= e!603961 (and tp!288527 tp!288525))))

(assert (= (and b!928521 ((_ is ElementMatch!2513) (regOne!5538 r!15766))) b!928951))

(assert (= (and b!928521 ((_ is Concat!4346) (regOne!5538 r!15766))) b!928952))

(assert (= (and b!928521 ((_ is Star!2513) (regOne!5538 r!15766))) b!928953))

(assert (= (and b!928521 ((_ is Union!2513) (regOne!5538 r!15766))) b!928954))

(declare-fun b!928955 () Bool)

(declare-fun e!603962 () Bool)

(assert (=> b!928955 (= e!603962 tp_is_empty!4669)))

(declare-fun b!928957 () Bool)

(declare-fun tp!288529 () Bool)

(assert (=> b!928957 (= e!603962 tp!288529)))

(assert (=> b!928521 (= tp!288455 e!603962)))

(declare-fun b!928956 () Bool)

(declare-fun tp!288533 () Bool)

(declare-fun tp!288531 () Bool)

(assert (=> b!928956 (= e!603962 (and tp!288533 tp!288531))))

(declare-fun b!928958 () Bool)

(declare-fun tp!288532 () Bool)

(declare-fun tp!288530 () Bool)

(assert (=> b!928958 (= e!603962 (and tp!288532 tp!288530))))

(assert (= (and b!928521 ((_ is ElementMatch!2513) (regTwo!5538 r!15766))) b!928955))

(assert (= (and b!928521 ((_ is Concat!4346) (regTwo!5538 r!15766))) b!928956))

(assert (= (and b!928521 ((_ is Star!2513) (regTwo!5538 r!15766))) b!928957))

(assert (= (and b!928521 ((_ is Union!2513) (regTwo!5538 r!15766))) b!928958))

(declare-fun b!928963 () Bool)

(declare-fun e!603965 () Bool)

(declare-fun tp!288536 () Bool)

(assert (=> b!928963 (= e!603965 (and tp_is_empty!4669 tp!288536))))

(assert (=> b!928525 (= tp!288456 e!603965)))

(assert (= (and b!928525 ((_ is Cons!9727) (t!100789 s!10566))) b!928963))

(check-sat (not d!281274) (not bm!57020) (not b!928941) (not bm!57049) (not b!928858) (not b!928956) (not b!928872) (not b!928689) (not d!281270) (not b!928926) (not d!281264) (not bm!57050) (not bm!57062) (not bm!57064) (not b!928950) (not b!928873) (not d!281272) (not b!928867) (not b!928797) (not b!928697) (not b!928787) (not d!281256) (not bm!57037) (not b!928942) (not bm!57045) (not b!928953) (not bm!57048) (not b!928794) (not bm!57046) (not b!928957) (not b!928949) (not b!928958) (not b!928944) (not b!928798) (not b!928945) (not b!928915) (not b!928883) tp_is_empty!4669 (not b!928884) (not b!928963) (not b!928879) (not bm!57069) (not b!928954) (not b!928946) (not b!928788) (not bm!57067) (not b!928952) (not b!928882) (not bm!57021) (not b!928940) (not b!928948) (not b!928799))
(check-sat)
