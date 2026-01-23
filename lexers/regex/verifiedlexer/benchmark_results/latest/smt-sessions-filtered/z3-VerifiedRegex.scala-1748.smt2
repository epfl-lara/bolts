; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87590 () Bool)

(assert start!87590)

(declare-fun b!995733 () Bool)

(assert (=> b!995733 true))

(assert (=> b!995733 true))

(declare-fun lambda!35400 () Int)

(declare-fun lambda!35399 () Int)

(assert (=> b!995733 (not (= lambda!35400 lambda!35399))))

(assert (=> b!995733 true))

(assert (=> b!995733 true))

(declare-fun b!995722 () Bool)

(declare-fun e!638763 () Bool)

(declare-fun tp_is_empty!5153 () Bool)

(assert (=> b!995722 (= e!638763 tp_is_empty!5153)))

(declare-fun res!449769 () Bool)

(declare-fun e!638759 () Bool)

(assert (=> start!87590 (=> (not res!449769) (not e!638759))))

(declare-datatypes ((C!6080 0))(
  ( (C!6081 (val!3288 Int)) )
))
(declare-datatypes ((Regex!2755 0))(
  ( (ElementMatch!2755 (c!163772 C!6080)) (Concat!4588 (regOne!6022 Regex!2755) (regTwo!6022 Regex!2755)) (EmptyExpr!2755) (Star!2755 (reg!3084 Regex!2755)) (EmptyLang!2755) (Union!2755 (regOne!6023 Regex!2755) (regTwo!6023 Regex!2755)) )
))
(declare-fun r!15766 () Regex!2755)

(declare-fun validRegex!1224 (Regex!2755) Bool)

(assert (=> start!87590 (= res!449769 (validRegex!1224 r!15766))))

(assert (=> start!87590 e!638759))

(assert (=> start!87590 e!638763))

(declare-fun e!638760 () Bool)

(assert (=> start!87590 e!638760))

(declare-fun b!995723 () Bool)

(declare-fun tp!303920 () Bool)

(assert (=> b!995723 (= e!638760 (and tp_is_empty!5153 tp!303920))))

(declare-fun b!995724 () Bool)

(declare-fun e!638761 () Bool)

(declare-datatypes ((List!9985 0))(
  ( (Nil!9969) (Cons!9969 (h!15370 C!6080) (t!101031 List!9985)) )
))
(declare-fun s!10566 () List!9985)

(declare-fun matchR!1291 (Regex!2755 List!9985) Bool)

(declare-fun removeUselessConcat!360 (Regex!2755) Regex!2755)

(assert (=> b!995724 (= e!638761 (matchR!1291 (removeUselessConcat!360 r!15766) s!10566))))

(declare-fun lt!351313 () Regex!2755)

(declare-fun lt!351320 () Regex!2755)

(declare-datatypes ((tuple2!11356 0))(
  ( (tuple2!11357 (_1!6504 List!9985) (_2!6504 List!9985)) )
))
(declare-fun lt!351321 () tuple2!11356)

(declare-fun ++!2716 (List!9985 List!9985) List!9985)

(assert (=> b!995724 (matchR!1291 (Concat!4588 lt!351313 lt!351320) (++!2716 (_1!6504 lt!351321) (_2!6504 lt!351321)))))

(declare-datatypes ((Unit!15169 0))(
  ( (Unit!15170) )
))
(declare-fun lt!351323 () Unit!15169)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!8 (Regex!2755 Regex!2755 List!9985 List!9985) Unit!15169)

(assert (=> b!995724 (= lt!351323 (lemmaTwoRegexMatchThenConcatMatchesConcatString!8 lt!351313 lt!351320 (_1!6504 lt!351321) (_2!6504 lt!351321)))))

(declare-fun b!995725 () Bool)

(declare-fun e!638758 () Bool)

(assert (=> b!995725 (= e!638758 e!638761)))

(declare-fun res!449771 () Bool)

(assert (=> b!995725 (=> res!449771 e!638761)))

(assert (=> b!995725 (= res!449771 (not (validRegex!1224 lt!351313)))))

(assert (=> b!995725 (matchR!1291 lt!351320 (_2!6504 lt!351321))))

(assert (=> b!995725 (= lt!351320 (removeUselessConcat!360 (regTwo!6022 r!15766)))))

(declare-fun lt!351315 () Unit!15169)

(declare-fun lemmaRemoveUselessConcatSound!206 (Regex!2755 List!9985) Unit!15169)

(assert (=> b!995725 (= lt!351315 (lemmaRemoveUselessConcatSound!206 (regTwo!6022 r!15766) (_2!6504 lt!351321)))))

(assert (=> b!995725 (matchR!1291 lt!351313 (_1!6504 lt!351321))))

(assert (=> b!995725 (= lt!351313 (removeUselessConcat!360 (regOne!6022 r!15766)))))

(declare-fun lt!351322 () Unit!15169)

(assert (=> b!995725 (= lt!351322 (lemmaRemoveUselessConcatSound!206 (regOne!6022 r!15766) (_1!6504 lt!351321)))))

(declare-fun b!995726 () Bool)

(declare-fun tp!303919 () Bool)

(declare-fun tp!303918 () Bool)

(assert (=> b!995726 (= e!638763 (and tp!303919 tp!303918))))

(declare-fun b!995727 () Bool)

(declare-fun res!449768 () Bool)

(assert (=> b!995727 (=> res!449768 e!638761)))

(assert (=> b!995727 (= res!449768 (not (validRegex!1224 lt!351320)))))

(declare-fun b!995728 () Bool)

(declare-fun res!449772 () Bool)

(assert (=> b!995728 (=> res!449772 e!638758)))

(assert (=> b!995728 (= res!449772 (not (matchR!1291 (regTwo!6022 r!15766) (_2!6504 lt!351321))))))

(declare-fun b!995729 () Bool)

(declare-fun tp!303916 () Bool)

(declare-fun tp!303915 () Bool)

(assert (=> b!995729 (= e!638763 (and tp!303916 tp!303915))))

(declare-fun b!995730 () Bool)

(declare-fun e!638757 () Bool)

(assert (=> b!995730 (= e!638757 e!638758)))

(declare-fun res!449766 () Bool)

(assert (=> b!995730 (=> res!449766 e!638758)))

(assert (=> b!995730 (= res!449766 (not (matchR!1291 (regOne!6022 r!15766) (_1!6504 lt!351321))))))

(declare-datatypes ((Option!2320 0))(
  ( (None!2319) (Some!2319 (v!19736 tuple2!11356)) )
))
(declare-fun lt!351314 () Option!2320)

(declare-fun get!3475 (Option!2320) tuple2!11356)

(assert (=> b!995730 (= lt!351321 (get!3475 lt!351314))))

(declare-fun b!995731 () Bool)

(declare-fun e!638762 () Bool)

(assert (=> b!995731 (= e!638759 (not e!638762))))

(declare-fun res!449770 () Bool)

(assert (=> b!995731 (=> res!449770 e!638762)))

(declare-fun lt!351316 () Bool)

(get-info :version)

(assert (=> b!995731 (= res!449770 (or (not lt!351316) (and ((_ is Concat!4588) r!15766) ((_ is EmptyExpr!2755) (regOne!6022 r!15766))) (and ((_ is Concat!4588) r!15766) ((_ is EmptyExpr!2755) (regTwo!6022 r!15766))) (not ((_ is Concat!4588) r!15766))))))

(declare-fun matchRSpec!554 (Regex!2755 List!9985) Bool)

(assert (=> b!995731 (= lt!351316 (matchRSpec!554 r!15766 s!10566))))

(assert (=> b!995731 (= lt!351316 (matchR!1291 r!15766 s!10566))))

(declare-fun lt!351317 () Unit!15169)

(declare-fun mainMatchTheorem!554 (Regex!2755 List!9985) Unit!15169)

(assert (=> b!995731 (= lt!351317 (mainMatchTheorem!554 r!15766 s!10566))))

(declare-fun b!995732 () Bool)

(declare-fun tp!303917 () Bool)

(assert (=> b!995732 (= e!638763 tp!303917)))

(assert (=> b!995733 (= e!638762 e!638757)))

(declare-fun res!449767 () Bool)

(assert (=> b!995733 (=> res!449767 e!638757)))

(declare-fun isEmpty!6307 (List!9985) Bool)

(assert (=> b!995733 (= res!449767 (isEmpty!6307 s!10566))))

(declare-fun Exists!492 (Int) Bool)

(assert (=> b!995733 (= (Exists!492 lambda!35399) (Exists!492 lambda!35400))))

(declare-fun lt!351318 () Unit!15169)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!242 (Regex!2755 Regex!2755 List!9985) Unit!15169)

(assert (=> b!995733 (= lt!351318 (lemmaExistCutMatchRandMatchRSpecEquivalent!242 (regOne!6022 r!15766) (regTwo!6022 r!15766) s!10566))))

(declare-fun isDefined!1962 (Option!2320) Bool)

(assert (=> b!995733 (= (isDefined!1962 lt!351314) (Exists!492 lambda!35399))))

(declare-fun findConcatSeparation!426 (Regex!2755 Regex!2755 List!9985 List!9985 List!9985) Option!2320)

(assert (=> b!995733 (= lt!351314 (findConcatSeparation!426 (regOne!6022 r!15766) (regTwo!6022 r!15766) Nil!9969 s!10566 s!10566))))

(declare-fun lt!351319 () Unit!15169)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!426 (Regex!2755 Regex!2755 List!9985) Unit!15169)

(assert (=> b!995733 (= lt!351319 (lemmaFindConcatSeparationEquivalentToExists!426 (regOne!6022 r!15766) (regTwo!6022 r!15766) s!10566))))

(assert (= (and start!87590 res!449769) b!995731))

(assert (= (and b!995731 (not res!449770)) b!995733))

(assert (= (and b!995733 (not res!449767)) b!995730))

(assert (= (and b!995730 (not res!449766)) b!995728))

(assert (= (and b!995728 (not res!449772)) b!995725))

(assert (= (and b!995725 (not res!449771)) b!995727))

(assert (= (and b!995727 (not res!449768)) b!995724))

(assert (= (and start!87590 ((_ is ElementMatch!2755) r!15766)) b!995722))

(assert (= (and start!87590 ((_ is Concat!4588) r!15766)) b!995726))

(assert (= (and start!87590 ((_ is Star!2755) r!15766)) b!995732))

(assert (= (and start!87590 ((_ is Union!2755) r!15766)) b!995729))

(assert (= (and start!87590 ((_ is Cons!9969) s!10566)) b!995723))

(declare-fun m!1187975 () Bool)

(assert (=> b!995733 m!1187975))

(declare-fun m!1187977 () Bool)

(assert (=> b!995733 m!1187977))

(declare-fun m!1187979 () Bool)

(assert (=> b!995733 m!1187979))

(declare-fun m!1187981 () Bool)

(assert (=> b!995733 m!1187981))

(declare-fun m!1187983 () Bool)

(assert (=> b!995733 m!1187983))

(declare-fun m!1187985 () Bool)

(assert (=> b!995733 m!1187985))

(assert (=> b!995733 m!1187975))

(declare-fun m!1187987 () Bool)

(assert (=> b!995733 m!1187987))

(declare-fun m!1187989 () Bool)

(assert (=> b!995725 m!1187989))

(declare-fun m!1187991 () Bool)

(assert (=> b!995725 m!1187991))

(declare-fun m!1187993 () Bool)

(assert (=> b!995725 m!1187993))

(declare-fun m!1187995 () Bool)

(assert (=> b!995725 m!1187995))

(declare-fun m!1187997 () Bool)

(assert (=> b!995725 m!1187997))

(declare-fun m!1187999 () Bool)

(assert (=> b!995725 m!1187999))

(declare-fun m!1188001 () Bool)

(assert (=> b!995725 m!1188001))

(declare-fun m!1188003 () Bool)

(assert (=> start!87590 m!1188003))

(declare-fun m!1188005 () Bool)

(assert (=> b!995730 m!1188005))

(declare-fun m!1188007 () Bool)

(assert (=> b!995730 m!1188007))

(declare-fun m!1188009 () Bool)

(assert (=> b!995728 m!1188009))

(declare-fun m!1188011 () Bool)

(assert (=> b!995724 m!1188011))

(declare-fun m!1188013 () Bool)

(assert (=> b!995724 m!1188013))

(declare-fun m!1188015 () Bool)

(assert (=> b!995724 m!1188015))

(assert (=> b!995724 m!1188015))

(declare-fun m!1188017 () Bool)

(assert (=> b!995724 m!1188017))

(assert (=> b!995724 m!1188011))

(declare-fun m!1188019 () Bool)

(assert (=> b!995724 m!1188019))

(declare-fun m!1188021 () Bool)

(assert (=> b!995731 m!1188021))

(declare-fun m!1188023 () Bool)

(assert (=> b!995731 m!1188023))

(declare-fun m!1188025 () Bool)

(assert (=> b!995731 m!1188025))

(declare-fun m!1188027 () Bool)

(assert (=> b!995727 m!1188027))

(check-sat (not b!995726) (not b!995724) (not b!995728) (not b!995723) (not b!995727) (not b!995732) (not start!87590) (not b!995730) (not b!995731) (not b!995733) (not b!995725) tp_is_empty!5153 (not b!995729))
(check-sat)
(get-model)

(declare-fun d!290823 () Bool)

(assert (=> d!290823 (= (matchR!1291 (regTwo!6022 r!15766) (_2!6504 lt!351321)) (matchR!1291 (removeUselessConcat!360 (regTwo!6022 r!15766)) (_2!6504 lt!351321)))))

(declare-fun lt!351326 () Unit!15169)

(declare-fun choose!6288 (Regex!2755 List!9985) Unit!15169)

(assert (=> d!290823 (= lt!351326 (choose!6288 (regTwo!6022 r!15766) (_2!6504 lt!351321)))))

(assert (=> d!290823 (validRegex!1224 (regTwo!6022 r!15766))))

(assert (=> d!290823 (= (lemmaRemoveUselessConcatSound!206 (regTwo!6022 r!15766) (_2!6504 lt!351321)) lt!351326)))

(declare-fun bs!245005 () Bool)

(assert (= bs!245005 d!290823))

(assert (=> bs!245005 m!1187989))

(declare-fun m!1188029 () Bool)

(assert (=> bs!245005 m!1188029))

(assert (=> bs!245005 m!1188009))

(assert (=> bs!245005 m!1187989))

(declare-fun m!1188031 () Bool)

(assert (=> bs!245005 m!1188031))

(declare-fun m!1188033 () Bool)

(assert (=> bs!245005 m!1188033))

(assert (=> b!995725 d!290823))

(declare-fun b!995915 () Bool)

(declare-fun e!638866 () Bool)

(declare-fun lt!351337 () Bool)

(assert (=> b!995915 (= e!638866 (not lt!351337))))

(declare-fun b!995916 () Bool)

(declare-fun e!638869 () Bool)

(assert (=> b!995916 (= e!638869 e!638866)))

(declare-fun c!163815 () Bool)

(assert (=> b!995916 (= c!163815 ((_ is EmptyLang!2755) lt!351320))))

(declare-fun b!995917 () Bool)

(declare-fun e!638871 () Bool)

(declare-fun head!1830 (List!9985) C!6080)

(assert (=> b!995917 (= e!638871 (not (= (head!1830 (_2!6504 lt!351321)) (c!163772 lt!351320))))))

(declare-fun b!995918 () Bool)

(declare-fun res!449871 () Bool)

(declare-fun e!638872 () Bool)

(assert (=> b!995918 (=> res!449871 e!638872)))

(declare-fun e!638867 () Bool)

(assert (=> b!995918 (= res!449871 e!638867)))

(declare-fun res!449870 () Bool)

(assert (=> b!995918 (=> (not res!449870) (not e!638867))))

(assert (=> b!995918 (= res!449870 lt!351337)))

(declare-fun bm!65800 () Bool)

(declare-fun call!65805 () Bool)

(assert (=> bm!65800 (= call!65805 (isEmpty!6307 (_2!6504 lt!351321)))))

(declare-fun b!995919 () Bool)

(declare-fun res!449869 () Bool)

(assert (=> b!995919 (=> (not res!449869) (not e!638867))))

(declare-fun tail!1392 (List!9985) List!9985)

(assert (=> b!995919 (= res!449869 (isEmpty!6307 (tail!1392 (_2!6504 lt!351321))))))

(declare-fun b!995920 () Bool)

(declare-fun e!638868 () Bool)

(declare-fun nullable!871 (Regex!2755) Bool)

(assert (=> b!995920 (= e!638868 (nullable!871 lt!351320))))

(declare-fun b!995921 () Bool)

(declare-fun res!449868 () Bool)

(assert (=> b!995921 (=> res!449868 e!638872)))

(assert (=> b!995921 (= res!449868 (not ((_ is ElementMatch!2755) lt!351320)))))

(assert (=> b!995921 (= e!638866 e!638872)))

(declare-fun b!995922 () Bool)

(assert (=> b!995922 (= e!638867 (= (head!1830 (_2!6504 lt!351321)) (c!163772 lt!351320)))))

(declare-fun b!995923 () Bool)

(declare-fun derivativeStep!677 (Regex!2755 C!6080) Regex!2755)

(assert (=> b!995923 (= e!638868 (matchR!1291 (derivativeStep!677 lt!351320 (head!1830 (_2!6504 lt!351321))) (tail!1392 (_2!6504 lt!351321))))))

(declare-fun b!995924 () Bool)

(assert (=> b!995924 (= e!638869 (= lt!351337 call!65805))))

(declare-fun b!995925 () Bool)

(declare-fun res!449874 () Bool)

(assert (=> b!995925 (=> res!449874 e!638871)))

(assert (=> b!995925 (= res!449874 (not (isEmpty!6307 (tail!1392 (_2!6504 lt!351321)))))))

(declare-fun b!995926 () Bool)

(declare-fun e!638870 () Bool)

(assert (=> b!995926 (= e!638872 e!638870)))

(declare-fun res!449875 () Bool)

(assert (=> b!995926 (=> (not res!449875) (not e!638870))))

(assert (=> b!995926 (= res!449875 (not lt!351337))))

(declare-fun b!995927 () Bool)

(assert (=> b!995927 (= e!638870 e!638871)))

(declare-fun res!449872 () Bool)

(assert (=> b!995927 (=> res!449872 e!638871)))

(assert (=> b!995927 (= res!449872 call!65805)))

(declare-fun b!995928 () Bool)

(declare-fun res!449873 () Bool)

(assert (=> b!995928 (=> (not res!449873) (not e!638867))))

(assert (=> b!995928 (= res!449873 (not call!65805))))

(declare-fun d!290825 () Bool)

(assert (=> d!290825 e!638869))

(declare-fun c!163816 () Bool)

(assert (=> d!290825 (= c!163816 ((_ is EmptyExpr!2755) lt!351320))))

(assert (=> d!290825 (= lt!351337 e!638868)))

(declare-fun c!163814 () Bool)

(assert (=> d!290825 (= c!163814 (isEmpty!6307 (_2!6504 lt!351321)))))

(assert (=> d!290825 (validRegex!1224 lt!351320)))

(assert (=> d!290825 (= (matchR!1291 lt!351320 (_2!6504 lt!351321)) lt!351337)))

(assert (= (and d!290825 c!163814) b!995920))

(assert (= (and d!290825 (not c!163814)) b!995923))

(assert (= (and d!290825 c!163816) b!995924))

(assert (= (and d!290825 (not c!163816)) b!995916))

(assert (= (and b!995916 c!163815) b!995915))

(assert (= (and b!995916 (not c!163815)) b!995921))

(assert (= (and b!995921 (not res!449868)) b!995918))

(assert (= (and b!995918 res!449870) b!995928))

(assert (= (and b!995928 res!449873) b!995919))

(assert (= (and b!995919 res!449869) b!995922))

(assert (= (and b!995918 (not res!449871)) b!995926))

(assert (= (and b!995926 res!449875) b!995927))

(assert (= (and b!995927 (not res!449872)) b!995925))

(assert (= (and b!995925 (not res!449874)) b!995917))

(assert (= (or b!995924 b!995927 b!995928) bm!65800))

(declare-fun m!1188105 () Bool)

(assert (=> b!995925 m!1188105))

(assert (=> b!995925 m!1188105))

(declare-fun m!1188107 () Bool)

(assert (=> b!995925 m!1188107))

(declare-fun m!1188109 () Bool)

(assert (=> b!995920 m!1188109))

(declare-fun m!1188111 () Bool)

(assert (=> b!995923 m!1188111))

(assert (=> b!995923 m!1188111))

(declare-fun m!1188113 () Bool)

(assert (=> b!995923 m!1188113))

(assert (=> b!995923 m!1188105))

(assert (=> b!995923 m!1188113))

(assert (=> b!995923 m!1188105))

(declare-fun m!1188115 () Bool)

(assert (=> b!995923 m!1188115))

(assert (=> b!995922 m!1188111))

(assert (=> b!995919 m!1188105))

(assert (=> b!995919 m!1188105))

(assert (=> b!995919 m!1188107))

(assert (=> b!995917 m!1188111))

(declare-fun m!1188123 () Bool)

(assert (=> d!290825 m!1188123))

(assert (=> d!290825 m!1188027))

(assert (=> bm!65800 m!1188123))

(assert (=> b!995725 d!290825))

(declare-fun b!996003 () Bool)

(declare-fun res!449902 () Bool)

(declare-fun e!638925 () Bool)

(assert (=> b!996003 (=> res!449902 e!638925)))

(assert (=> b!996003 (= res!449902 (not ((_ is Concat!4588) lt!351313)))))

(declare-fun e!638922 () Bool)

(assert (=> b!996003 (= e!638922 e!638925)))

(declare-fun b!996004 () Bool)

(declare-fun e!638919 () Bool)

(declare-fun call!65833 () Bool)

(assert (=> b!996004 (= e!638919 call!65833)))

(declare-fun b!996005 () Bool)

(assert (=> b!996005 (= e!638925 e!638919)))

(declare-fun res!449904 () Bool)

(assert (=> b!996005 (=> (not res!449904) (not e!638919))))

(declare-fun call!65832 () Bool)

(assert (=> b!996005 (= res!449904 call!65832)))

(declare-fun d!290847 () Bool)

(declare-fun res!449905 () Bool)

(declare-fun e!638923 () Bool)

(assert (=> d!290847 (=> res!449905 e!638923)))

(assert (=> d!290847 (= res!449905 ((_ is ElementMatch!2755) lt!351313))))

(assert (=> d!290847 (= (validRegex!1224 lt!351313) e!638923)))

(declare-fun b!996006 () Bool)

(declare-fun e!638920 () Bool)

(assert (=> b!996006 (= e!638920 call!65833)))

(declare-fun b!996007 () Bool)

(declare-fun e!638921 () Bool)

(declare-fun call!65831 () Bool)

(assert (=> b!996007 (= e!638921 call!65831)))

(declare-fun c!163841 () Bool)

(declare-fun bm!65826 () Bool)

(declare-fun c!163842 () Bool)

(assert (=> bm!65826 (= call!65831 (validRegex!1224 (ite c!163841 (reg!3084 lt!351313) (ite c!163842 (regOne!6023 lt!351313) (regOne!6022 lt!351313)))))))

(declare-fun bm!65827 () Bool)

(assert (=> bm!65827 (= call!65833 (validRegex!1224 (ite c!163842 (regTwo!6023 lt!351313) (regTwo!6022 lt!351313))))))

(declare-fun b!996008 () Bool)

(declare-fun e!638924 () Bool)

(assert (=> b!996008 (= e!638924 e!638921)))

(declare-fun res!449906 () Bool)

(assert (=> b!996008 (= res!449906 (not (nullable!871 (reg!3084 lt!351313))))))

(assert (=> b!996008 (=> (not res!449906) (not e!638921))))

(declare-fun b!996009 () Bool)

(declare-fun res!449903 () Bool)

(assert (=> b!996009 (=> (not res!449903) (not e!638920))))

(assert (=> b!996009 (= res!449903 call!65832)))

(assert (=> b!996009 (= e!638922 e!638920)))

(declare-fun b!996010 () Bool)

(assert (=> b!996010 (= e!638923 e!638924)))

(assert (=> b!996010 (= c!163841 ((_ is Star!2755) lt!351313))))

(declare-fun b!996011 () Bool)

(assert (=> b!996011 (= e!638924 e!638922)))

(assert (=> b!996011 (= c!163842 ((_ is Union!2755) lt!351313))))

(declare-fun bm!65828 () Bool)

(assert (=> bm!65828 (= call!65832 call!65831)))

(assert (= (and d!290847 (not res!449905)) b!996010))

(assert (= (and b!996010 c!163841) b!996008))

(assert (= (and b!996010 (not c!163841)) b!996011))

(assert (= (and b!996008 res!449906) b!996007))

(assert (= (and b!996011 c!163842) b!996009))

(assert (= (and b!996011 (not c!163842)) b!996003))

(assert (= (and b!996009 res!449903) b!996006))

(assert (= (and b!996003 (not res!449902)) b!996005))

(assert (= (and b!996005 res!449904) b!996004))

(assert (= (or b!996006 b!996004) bm!65827))

(assert (= (or b!996009 b!996005) bm!65828))

(assert (= (or b!996007 bm!65828) bm!65826))

(declare-fun m!1188149 () Bool)

(assert (=> bm!65826 m!1188149))

(declare-fun m!1188151 () Bool)

(assert (=> bm!65827 m!1188151))

(declare-fun m!1188153 () Bool)

(assert (=> b!996008 m!1188153))

(assert (=> b!995725 d!290847))

(declare-fun d!290857 () Bool)

(declare-fun e!638965 () Bool)

(assert (=> d!290857 e!638965))

(declare-fun res!449930 () Bool)

(assert (=> d!290857 (=> (not res!449930) (not e!638965))))

(declare-fun lt!351359 () Regex!2755)

(assert (=> d!290857 (= res!449930 (validRegex!1224 lt!351359))))

(declare-fun e!638967 () Regex!2755)

(assert (=> d!290857 (= lt!351359 e!638967)))

(declare-fun c!163868 () Bool)

(assert (=> d!290857 (= c!163868 (and ((_ is Concat!4588) (regOne!6022 r!15766)) ((_ is EmptyExpr!2755) (regOne!6022 (regOne!6022 r!15766)))))))

(assert (=> d!290857 (validRegex!1224 (regOne!6022 r!15766))))

(assert (=> d!290857 (= (removeUselessConcat!360 (regOne!6022 r!15766)) lt!351359)))

(declare-fun bm!65845 () Bool)

(declare-fun call!65850 () Regex!2755)

(declare-fun call!65853 () Regex!2755)

(assert (=> bm!65845 (= call!65850 call!65853)))

(declare-fun b!996079 () Bool)

(assert (=> b!996079 (= e!638967 call!65853)))

(declare-fun bm!65846 () Bool)

(declare-fun c!163869 () Bool)

(assert (=> bm!65846 (= call!65853 (removeUselessConcat!360 (ite c!163868 (regTwo!6022 (regOne!6022 r!15766)) (ite c!163869 (regOne!6022 (regOne!6022 r!15766)) (regOne!6023 (regOne!6022 r!15766))))))))

(declare-fun bm!65847 () Bool)

(declare-fun call!65854 () Regex!2755)

(declare-fun call!65852 () Regex!2755)

(assert (=> bm!65847 (= call!65854 call!65852)))

(declare-fun bm!65848 () Bool)

(declare-fun call!65851 () Regex!2755)

(assert (=> bm!65848 (= call!65851 call!65854)))

(declare-fun b!996080 () Bool)

(declare-fun e!638963 () Regex!2755)

(assert (=> b!996080 (= e!638963 (regOne!6022 r!15766))))

(declare-fun b!996081 () Bool)

(declare-fun e!638964 () Regex!2755)

(assert (=> b!996081 (= e!638967 e!638964)))

(declare-fun c!163866 () Bool)

(assert (=> b!996081 (= c!163866 (and ((_ is Concat!4588) (regOne!6022 r!15766)) ((_ is EmptyExpr!2755) (regTwo!6022 (regOne!6022 r!15766)))))))

(declare-fun b!996082 () Bool)

(declare-fun e!638966 () Regex!2755)

(assert (=> b!996082 (= e!638966 (Concat!4588 call!65850 call!65854))))

(declare-fun b!996083 () Bool)

(assert (=> b!996083 (= c!163869 ((_ is Concat!4588) (regOne!6022 r!15766)))))

(assert (=> b!996083 (= e!638964 e!638966)))

(declare-fun b!996084 () Bool)

(declare-fun e!638968 () Regex!2755)

(assert (=> b!996084 (= e!638968 (Union!2755 call!65850 call!65851))))

(declare-fun b!996087 () Bool)

(assert (=> b!996087 (= e!638965 (= (nullable!871 lt!351359) (nullable!871 (regOne!6022 r!15766))))))

(declare-fun c!163865 () Bool)

(declare-fun bm!65849 () Bool)

(assert (=> bm!65849 (= call!65852 (removeUselessConcat!360 (ite c!163866 (regOne!6022 (regOne!6022 r!15766)) (ite c!163869 (regTwo!6022 (regOne!6022 r!15766)) (ite c!163865 (regTwo!6023 (regOne!6022 r!15766)) (reg!3084 (regOne!6022 r!15766)))))))))

(declare-fun b!996088 () Bool)

(assert (=> b!996088 (= e!638964 call!65852)))

(declare-fun b!996089 () Bool)

(declare-fun c!163867 () Bool)

(assert (=> b!996089 (= c!163867 ((_ is Star!2755) (regOne!6022 r!15766)))))

(assert (=> b!996089 (= e!638968 e!638963)))

(declare-fun b!996090 () Bool)

(assert (=> b!996090 (= e!638963 (Star!2755 call!65851))))

(declare-fun b!996091 () Bool)

(assert (=> b!996091 (= e!638966 e!638968)))

(assert (=> b!996091 (= c!163865 ((_ is Union!2755) (regOne!6022 r!15766)))))

(assert (= (and d!290857 c!163868) b!996079))

(assert (= (and d!290857 (not c!163868)) b!996081))

(assert (= (and b!996081 c!163866) b!996088))

(assert (= (and b!996081 (not c!163866)) b!996083))

(assert (= (and b!996083 c!163869) b!996082))

(assert (= (and b!996083 (not c!163869)) b!996091))

(assert (= (and b!996091 c!163865) b!996084))

(assert (= (and b!996091 (not c!163865)) b!996089))

(assert (= (and b!996089 c!163867) b!996090))

(assert (= (and b!996089 (not c!163867)) b!996080))

(assert (= (or b!996084 b!996090) bm!65848))

(assert (= (or b!996082 bm!65848) bm!65847))

(assert (= (or b!996082 b!996084) bm!65845))

(assert (= (or b!996088 bm!65847) bm!65849))

(assert (= (or b!996079 bm!65845) bm!65846))

(assert (= (and d!290857 res!449930) b!996087))

(declare-fun m!1188169 () Bool)

(assert (=> d!290857 m!1188169))

(declare-fun m!1188171 () Bool)

(assert (=> d!290857 m!1188171))

(declare-fun m!1188173 () Bool)

(assert (=> bm!65846 m!1188173))

(declare-fun m!1188175 () Bool)

(assert (=> b!996087 m!1188175))

(declare-fun m!1188177 () Bool)

(assert (=> b!996087 m!1188177))

(declare-fun m!1188179 () Bool)

(assert (=> bm!65849 m!1188179))

(assert (=> b!995725 d!290857))

(declare-fun b!996092 () Bool)

(declare-fun e!638969 () Bool)

(declare-fun lt!351360 () Bool)

(assert (=> b!996092 (= e!638969 (not lt!351360))))

(declare-fun b!996093 () Bool)

(declare-fun e!638972 () Bool)

(assert (=> b!996093 (= e!638972 e!638969)))

(declare-fun c!163871 () Bool)

(assert (=> b!996093 (= c!163871 ((_ is EmptyLang!2755) lt!351313))))

(declare-fun b!996094 () Bool)

(declare-fun e!638974 () Bool)

(assert (=> b!996094 (= e!638974 (not (= (head!1830 (_1!6504 lt!351321)) (c!163772 lt!351313))))))

(declare-fun b!996095 () Bool)

(declare-fun res!449936 () Bool)

(declare-fun e!638975 () Bool)

(assert (=> b!996095 (=> res!449936 e!638975)))

(declare-fun e!638970 () Bool)

(assert (=> b!996095 (= res!449936 e!638970)))

(declare-fun res!449935 () Bool)

(assert (=> b!996095 (=> (not res!449935) (not e!638970))))

(assert (=> b!996095 (= res!449935 lt!351360)))

(declare-fun bm!65850 () Bool)

(declare-fun call!65855 () Bool)

(assert (=> bm!65850 (= call!65855 (isEmpty!6307 (_1!6504 lt!351321)))))

(declare-fun b!996096 () Bool)

(declare-fun res!449934 () Bool)

(assert (=> b!996096 (=> (not res!449934) (not e!638970))))

(assert (=> b!996096 (= res!449934 (isEmpty!6307 (tail!1392 (_1!6504 lt!351321))))))

(declare-fun b!996097 () Bool)

(declare-fun e!638971 () Bool)

(assert (=> b!996097 (= e!638971 (nullable!871 lt!351313))))

(declare-fun b!996098 () Bool)

(declare-fun res!449933 () Bool)

(assert (=> b!996098 (=> res!449933 e!638975)))

(assert (=> b!996098 (= res!449933 (not ((_ is ElementMatch!2755) lt!351313)))))

(assert (=> b!996098 (= e!638969 e!638975)))

(declare-fun b!996099 () Bool)

(assert (=> b!996099 (= e!638970 (= (head!1830 (_1!6504 lt!351321)) (c!163772 lt!351313)))))

(declare-fun b!996100 () Bool)

(assert (=> b!996100 (= e!638971 (matchR!1291 (derivativeStep!677 lt!351313 (head!1830 (_1!6504 lt!351321))) (tail!1392 (_1!6504 lt!351321))))))

(declare-fun b!996101 () Bool)

(assert (=> b!996101 (= e!638972 (= lt!351360 call!65855))))

(declare-fun b!996102 () Bool)

(declare-fun res!449939 () Bool)

(assert (=> b!996102 (=> res!449939 e!638974)))

(assert (=> b!996102 (= res!449939 (not (isEmpty!6307 (tail!1392 (_1!6504 lt!351321)))))))

(declare-fun b!996103 () Bool)

(declare-fun e!638973 () Bool)

(assert (=> b!996103 (= e!638975 e!638973)))

(declare-fun res!449940 () Bool)

(assert (=> b!996103 (=> (not res!449940) (not e!638973))))

(assert (=> b!996103 (= res!449940 (not lt!351360))))

(declare-fun b!996104 () Bool)

(assert (=> b!996104 (= e!638973 e!638974)))

(declare-fun res!449937 () Bool)

(assert (=> b!996104 (=> res!449937 e!638974)))

(assert (=> b!996104 (= res!449937 call!65855)))

(declare-fun b!996105 () Bool)

(declare-fun res!449938 () Bool)

(assert (=> b!996105 (=> (not res!449938) (not e!638970))))

(assert (=> b!996105 (= res!449938 (not call!65855))))

(declare-fun d!290867 () Bool)

(assert (=> d!290867 e!638972))

(declare-fun c!163872 () Bool)

(assert (=> d!290867 (= c!163872 ((_ is EmptyExpr!2755) lt!351313))))

(assert (=> d!290867 (= lt!351360 e!638971)))

(declare-fun c!163870 () Bool)

(assert (=> d!290867 (= c!163870 (isEmpty!6307 (_1!6504 lt!351321)))))

(assert (=> d!290867 (validRegex!1224 lt!351313)))

(assert (=> d!290867 (= (matchR!1291 lt!351313 (_1!6504 lt!351321)) lt!351360)))

(assert (= (and d!290867 c!163870) b!996097))

(assert (= (and d!290867 (not c!163870)) b!996100))

(assert (= (and d!290867 c!163872) b!996101))

(assert (= (and d!290867 (not c!163872)) b!996093))

(assert (= (and b!996093 c!163871) b!996092))

(assert (= (and b!996093 (not c!163871)) b!996098))

(assert (= (and b!996098 (not res!449933)) b!996095))

(assert (= (and b!996095 res!449935) b!996105))

(assert (= (and b!996105 res!449938) b!996096))

(assert (= (and b!996096 res!449934) b!996099))

(assert (= (and b!996095 (not res!449936)) b!996103))

(assert (= (and b!996103 res!449940) b!996104))

(assert (= (and b!996104 (not res!449937)) b!996102))

(assert (= (and b!996102 (not res!449939)) b!996094))

(assert (= (or b!996101 b!996104 b!996105) bm!65850))

(declare-fun m!1188181 () Bool)

(assert (=> b!996102 m!1188181))

(assert (=> b!996102 m!1188181))

(declare-fun m!1188183 () Bool)

(assert (=> b!996102 m!1188183))

(declare-fun m!1188185 () Bool)

(assert (=> b!996097 m!1188185))

(declare-fun m!1188187 () Bool)

(assert (=> b!996100 m!1188187))

(assert (=> b!996100 m!1188187))

(declare-fun m!1188189 () Bool)

(assert (=> b!996100 m!1188189))

(assert (=> b!996100 m!1188181))

(assert (=> b!996100 m!1188189))

(assert (=> b!996100 m!1188181))

(declare-fun m!1188191 () Bool)

(assert (=> b!996100 m!1188191))

(assert (=> b!996099 m!1188187))

(assert (=> b!996096 m!1188181))

(assert (=> b!996096 m!1188181))

(assert (=> b!996096 m!1188183))

(assert (=> b!996094 m!1188187))

(declare-fun m!1188197 () Bool)

(assert (=> d!290867 m!1188197))

(assert (=> d!290867 m!1187997))

(assert (=> bm!65850 m!1188197))

(assert (=> b!995725 d!290867))

(declare-fun d!290869 () Bool)

(declare-fun e!638983 () Bool)

(assert (=> d!290869 e!638983))

(declare-fun res!449946 () Bool)

(assert (=> d!290869 (=> (not res!449946) (not e!638983))))

(declare-fun lt!351364 () Regex!2755)

(assert (=> d!290869 (= res!449946 (validRegex!1224 lt!351364))))

(declare-fun e!638985 () Regex!2755)

(assert (=> d!290869 (= lt!351364 e!638985)))

(declare-fun c!163878 () Bool)

(assert (=> d!290869 (= c!163878 (and ((_ is Concat!4588) (regTwo!6022 r!15766)) ((_ is EmptyExpr!2755) (regOne!6022 (regTwo!6022 r!15766)))))))

(assert (=> d!290869 (validRegex!1224 (regTwo!6022 r!15766))))

(assert (=> d!290869 (= (removeUselessConcat!360 (regTwo!6022 r!15766)) lt!351364)))

(declare-fun bm!65851 () Bool)

(declare-fun call!65856 () Regex!2755)

(declare-fun call!65859 () Regex!2755)

(assert (=> bm!65851 (= call!65856 call!65859)))

(declare-fun b!996115 () Bool)

(assert (=> b!996115 (= e!638985 call!65859)))

(declare-fun c!163879 () Bool)

(declare-fun bm!65852 () Bool)

(assert (=> bm!65852 (= call!65859 (removeUselessConcat!360 (ite c!163878 (regTwo!6022 (regTwo!6022 r!15766)) (ite c!163879 (regOne!6022 (regTwo!6022 r!15766)) (regOne!6023 (regTwo!6022 r!15766))))))))

(declare-fun bm!65853 () Bool)

(declare-fun call!65860 () Regex!2755)

(declare-fun call!65858 () Regex!2755)

(assert (=> bm!65853 (= call!65860 call!65858)))

(declare-fun bm!65854 () Bool)

(declare-fun call!65857 () Regex!2755)

(assert (=> bm!65854 (= call!65857 call!65860)))

(declare-fun b!996116 () Bool)

(declare-fun e!638981 () Regex!2755)

(assert (=> b!996116 (= e!638981 (regTwo!6022 r!15766))))

(declare-fun b!996117 () Bool)

(declare-fun e!638982 () Regex!2755)

(assert (=> b!996117 (= e!638985 e!638982)))

(declare-fun c!163876 () Bool)

(assert (=> b!996117 (= c!163876 (and ((_ is Concat!4588) (regTwo!6022 r!15766)) ((_ is EmptyExpr!2755) (regTwo!6022 (regTwo!6022 r!15766)))))))

(declare-fun b!996118 () Bool)

(declare-fun e!638984 () Regex!2755)

(assert (=> b!996118 (= e!638984 (Concat!4588 call!65856 call!65860))))

(declare-fun b!996119 () Bool)

(assert (=> b!996119 (= c!163879 ((_ is Concat!4588) (regTwo!6022 r!15766)))))

(assert (=> b!996119 (= e!638982 e!638984)))

(declare-fun b!996120 () Bool)

(declare-fun e!638986 () Regex!2755)

(assert (=> b!996120 (= e!638986 (Union!2755 call!65856 call!65857))))

(declare-fun b!996121 () Bool)

(assert (=> b!996121 (= e!638983 (= (nullable!871 lt!351364) (nullable!871 (regTwo!6022 r!15766))))))

(declare-fun bm!65855 () Bool)

(declare-fun c!163875 () Bool)

(assert (=> bm!65855 (= call!65858 (removeUselessConcat!360 (ite c!163876 (regOne!6022 (regTwo!6022 r!15766)) (ite c!163879 (regTwo!6022 (regTwo!6022 r!15766)) (ite c!163875 (regTwo!6023 (regTwo!6022 r!15766)) (reg!3084 (regTwo!6022 r!15766)))))))))

(declare-fun b!996122 () Bool)

(assert (=> b!996122 (= e!638982 call!65858)))

(declare-fun b!996123 () Bool)

(declare-fun c!163877 () Bool)

(assert (=> b!996123 (= c!163877 ((_ is Star!2755) (regTwo!6022 r!15766)))))

(assert (=> b!996123 (= e!638986 e!638981)))

(declare-fun b!996124 () Bool)

(assert (=> b!996124 (= e!638981 (Star!2755 call!65857))))

(declare-fun b!996125 () Bool)

(assert (=> b!996125 (= e!638984 e!638986)))

(assert (=> b!996125 (= c!163875 ((_ is Union!2755) (regTwo!6022 r!15766)))))

(assert (= (and d!290869 c!163878) b!996115))

(assert (= (and d!290869 (not c!163878)) b!996117))

(assert (= (and b!996117 c!163876) b!996122))

(assert (= (and b!996117 (not c!163876)) b!996119))

(assert (= (and b!996119 c!163879) b!996118))

(assert (= (and b!996119 (not c!163879)) b!996125))

(assert (= (and b!996125 c!163875) b!996120))

(assert (= (and b!996125 (not c!163875)) b!996123))

(assert (= (and b!996123 c!163877) b!996124))

(assert (= (and b!996123 (not c!163877)) b!996116))

(assert (= (or b!996120 b!996124) bm!65854))

(assert (= (or b!996118 bm!65854) bm!65853))

(assert (= (or b!996118 b!996120) bm!65851))

(assert (= (or b!996122 bm!65853) bm!65855))

(assert (= (or b!996115 bm!65851) bm!65852))

(assert (= (and d!290869 res!449946) b!996121))

(declare-fun m!1188217 () Bool)

(assert (=> d!290869 m!1188217))

(assert (=> d!290869 m!1188029))

(declare-fun m!1188219 () Bool)

(assert (=> bm!65852 m!1188219))

(declare-fun m!1188221 () Bool)

(assert (=> b!996121 m!1188221))

(declare-fun m!1188223 () Bool)

(assert (=> b!996121 m!1188223))

(declare-fun m!1188225 () Bool)

(assert (=> bm!65855 m!1188225))

(assert (=> b!995725 d!290869))

(declare-fun d!290873 () Bool)

(assert (=> d!290873 (= (matchR!1291 (regOne!6022 r!15766) (_1!6504 lt!351321)) (matchR!1291 (removeUselessConcat!360 (regOne!6022 r!15766)) (_1!6504 lt!351321)))))

(declare-fun lt!351365 () Unit!15169)

(assert (=> d!290873 (= lt!351365 (choose!6288 (regOne!6022 r!15766) (_1!6504 lt!351321)))))

(assert (=> d!290873 (validRegex!1224 (regOne!6022 r!15766))))

(assert (=> d!290873 (= (lemmaRemoveUselessConcatSound!206 (regOne!6022 r!15766) (_1!6504 lt!351321)) lt!351365)))

(declare-fun bs!245016 () Bool)

(assert (= bs!245016 d!290873))

(assert (=> bs!245016 m!1187995))

(assert (=> bs!245016 m!1188171))

(assert (=> bs!245016 m!1188005))

(assert (=> bs!245016 m!1187995))

(declare-fun m!1188227 () Bool)

(assert (=> bs!245016 m!1188227))

(declare-fun m!1188229 () Bool)

(assert (=> bs!245016 m!1188229))

(assert (=> b!995725 d!290873))

(declare-fun b!996126 () Bool)

(declare-fun e!638987 () Bool)

(declare-fun lt!351366 () Bool)

(assert (=> b!996126 (= e!638987 (not lt!351366))))

(declare-fun b!996127 () Bool)

(declare-fun e!638990 () Bool)

(assert (=> b!996127 (= e!638990 e!638987)))

(declare-fun c!163881 () Bool)

(assert (=> b!996127 (= c!163881 ((_ is EmptyLang!2755) (regOne!6022 r!15766)))))

(declare-fun b!996128 () Bool)

(declare-fun e!638992 () Bool)

(assert (=> b!996128 (= e!638992 (not (= (head!1830 (_1!6504 lt!351321)) (c!163772 (regOne!6022 r!15766)))))))

(declare-fun b!996129 () Bool)

(declare-fun res!449950 () Bool)

(declare-fun e!638993 () Bool)

(assert (=> b!996129 (=> res!449950 e!638993)))

(declare-fun e!638988 () Bool)

(assert (=> b!996129 (= res!449950 e!638988)))

(declare-fun res!449949 () Bool)

(assert (=> b!996129 (=> (not res!449949) (not e!638988))))

(assert (=> b!996129 (= res!449949 lt!351366)))

(declare-fun bm!65856 () Bool)

(declare-fun call!65861 () Bool)

(assert (=> bm!65856 (= call!65861 (isEmpty!6307 (_1!6504 lt!351321)))))

(declare-fun b!996130 () Bool)

(declare-fun res!449948 () Bool)

(assert (=> b!996130 (=> (not res!449948) (not e!638988))))

(assert (=> b!996130 (= res!449948 (isEmpty!6307 (tail!1392 (_1!6504 lt!351321))))))

(declare-fun b!996131 () Bool)

(declare-fun e!638989 () Bool)

(assert (=> b!996131 (= e!638989 (nullable!871 (regOne!6022 r!15766)))))

(declare-fun b!996132 () Bool)

(declare-fun res!449947 () Bool)

(assert (=> b!996132 (=> res!449947 e!638993)))

(assert (=> b!996132 (= res!449947 (not ((_ is ElementMatch!2755) (regOne!6022 r!15766))))))

(assert (=> b!996132 (= e!638987 e!638993)))

(declare-fun b!996133 () Bool)

(assert (=> b!996133 (= e!638988 (= (head!1830 (_1!6504 lt!351321)) (c!163772 (regOne!6022 r!15766))))))

(declare-fun b!996134 () Bool)

(assert (=> b!996134 (= e!638989 (matchR!1291 (derivativeStep!677 (regOne!6022 r!15766) (head!1830 (_1!6504 lt!351321))) (tail!1392 (_1!6504 lt!351321))))))

(declare-fun b!996135 () Bool)

(assert (=> b!996135 (= e!638990 (= lt!351366 call!65861))))

(declare-fun b!996136 () Bool)

(declare-fun res!449953 () Bool)

(assert (=> b!996136 (=> res!449953 e!638992)))

(assert (=> b!996136 (= res!449953 (not (isEmpty!6307 (tail!1392 (_1!6504 lt!351321)))))))

(declare-fun b!996137 () Bool)

(declare-fun e!638991 () Bool)

(assert (=> b!996137 (= e!638993 e!638991)))

(declare-fun res!449954 () Bool)

(assert (=> b!996137 (=> (not res!449954) (not e!638991))))

(assert (=> b!996137 (= res!449954 (not lt!351366))))

(declare-fun b!996138 () Bool)

(assert (=> b!996138 (= e!638991 e!638992)))

(declare-fun res!449951 () Bool)

(assert (=> b!996138 (=> res!449951 e!638992)))

(assert (=> b!996138 (= res!449951 call!65861)))

(declare-fun b!996139 () Bool)

(declare-fun res!449952 () Bool)

(assert (=> b!996139 (=> (not res!449952) (not e!638988))))

(assert (=> b!996139 (= res!449952 (not call!65861))))

(declare-fun d!290875 () Bool)

(assert (=> d!290875 e!638990))

(declare-fun c!163882 () Bool)

(assert (=> d!290875 (= c!163882 ((_ is EmptyExpr!2755) (regOne!6022 r!15766)))))

(assert (=> d!290875 (= lt!351366 e!638989)))

(declare-fun c!163880 () Bool)

(assert (=> d!290875 (= c!163880 (isEmpty!6307 (_1!6504 lt!351321)))))

(assert (=> d!290875 (validRegex!1224 (regOne!6022 r!15766))))

(assert (=> d!290875 (= (matchR!1291 (regOne!6022 r!15766) (_1!6504 lt!351321)) lt!351366)))

(assert (= (and d!290875 c!163880) b!996131))

(assert (= (and d!290875 (not c!163880)) b!996134))

(assert (= (and d!290875 c!163882) b!996135))

(assert (= (and d!290875 (not c!163882)) b!996127))

(assert (= (and b!996127 c!163881) b!996126))

(assert (= (and b!996127 (not c!163881)) b!996132))

(assert (= (and b!996132 (not res!449947)) b!996129))

(assert (= (and b!996129 res!449949) b!996139))

(assert (= (and b!996139 res!449952) b!996130))

(assert (= (and b!996130 res!449948) b!996133))

(assert (= (and b!996129 (not res!449950)) b!996137))

(assert (= (and b!996137 res!449954) b!996138))

(assert (= (and b!996138 (not res!449951)) b!996136))

(assert (= (and b!996136 (not res!449953)) b!996128))

(assert (= (or b!996135 b!996138 b!996139) bm!65856))

(assert (=> b!996136 m!1188181))

(assert (=> b!996136 m!1188181))

(assert (=> b!996136 m!1188183))

(assert (=> b!996131 m!1188177))

(assert (=> b!996134 m!1188187))

(assert (=> b!996134 m!1188187))

(declare-fun m!1188231 () Bool)

(assert (=> b!996134 m!1188231))

(assert (=> b!996134 m!1188181))

(assert (=> b!996134 m!1188231))

(assert (=> b!996134 m!1188181))

(declare-fun m!1188233 () Bool)

(assert (=> b!996134 m!1188233))

(assert (=> b!996133 m!1188187))

(assert (=> b!996130 m!1188181))

(assert (=> b!996130 m!1188181))

(assert (=> b!996130 m!1188183))

(assert (=> b!996128 m!1188187))

(assert (=> d!290875 m!1188197))

(assert (=> d!290875 m!1188171))

(assert (=> bm!65856 m!1188197))

(assert (=> b!995730 d!290875))

(declare-fun d!290877 () Bool)

(assert (=> d!290877 (= (get!3475 lt!351314) (v!19736 lt!351314))))

(assert (=> b!995730 d!290877))

(declare-fun bs!245024 () Bool)

(declare-fun b!996278 () Bool)

(assert (= bs!245024 (and b!996278 b!995733)))

(declare-fun lambda!35420 () Int)

(assert (=> bs!245024 (not (= lambda!35420 lambda!35399))))

(assert (=> bs!245024 (not (= lambda!35420 lambda!35400))))

(assert (=> b!996278 true))

(assert (=> b!996278 true))

(declare-fun bs!245025 () Bool)

(declare-fun b!996270 () Bool)

(assert (= bs!245025 (and b!996270 b!995733)))

(declare-fun lambda!35421 () Int)

(assert (=> bs!245025 (not (= lambda!35421 lambda!35399))))

(assert (=> bs!245025 (= lambda!35421 lambda!35400)))

(declare-fun bs!245026 () Bool)

(assert (= bs!245026 (and b!996270 b!996278)))

(assert (=> bs!245026 (not (= lambda!35421 lambda!35420))))

(assert (=> b!996270 true))

(assert (=> b!996270 true))

(declare-fun b!996269 () Bool)

(declare-fun e!639055 () Bool)

(declare-fun e!639059 () Bool)

(assert (=> b!996269 (= e!639055 e!639059)))

(declare-fun res!450005 () Bool)

(assert (=> b!996269 (= res!450005 (matchRSpec!554 (regOne!6023 r!15766) s!10566))))

(assert (=> b!996269 (=> res!450005 e!639059)))

(declare-fun d!290879 () Bool)

(declare-fun c!163905 () Bool)

(assert (=> d!290879 (= c!163905 ((_ is EmptyExpr!2755) r!15766))))

(declare-fun e!639060 () Bool)

(assert (=> d!290879 (= (matchRSpec!554 r!15766 s!10566) e!639060)))

(declare-fun e!639057 () Bool)

(declare-fun call!65873 () Bool)

(assert (=> b!996270 (= e!639057 call!65873)))

(declare-fun bm!65868 () Bool)

(declare-fun call!65874 () Bool)

(assert (=> bm!65868 (= call!65874 (isEmpty!6307 s!10566))))

(declare-fun b!996271 () Bool)

(assert (=> b!996271 (= e!639055 e!639057)))

(declare-fun c!163908 () Bool)

(assert (=> b!996271 (= c!163908 ((_ is Star!2755) r!15766))))

(declare-fun b!996272 () Bool)

(declare-fun c!163906 () Bool)

(assert (=> b!996272 (= c!163906 ((_ is ElementMatch!2755) r!15766))))

(declare-fun e!639061 () Bool)

(declare-fun e!639058 () Bool)

(assert (=> b!996272 (= e!639061 e!639058)))

(declare-fun bm!65869 () Bool)

(assert (=> bm!65869 (= call!65873 (Exists!492 (ite c!163908 lambda!35420 lambda!35421)))))

(declare-fun b!996273 () Bool)

(declare-fun c!163907 () Bool)

(assert (=> b!996273 (= c!163907 ((_ is Union!2755) r!15766))))

(assert (=> b!996273 (= e!639058 e!639055)))

(declare-fun b!996274 () Bool)

(assert (=> b!996274 (= e!639060 e!639061)))

(declare-fun res!450007 () Bool)

(assert (=> b!996274 (= res!450007 (not ((_ is EmptyLang!2755) r!15766)))))

(assert (=> b!996274 (=> (not res!450007) (not e!639061))))

(declare-fun b!996275 () Bool)

(assert (=> b!996275 (= e!639059 (matchRSpec!554 (regTwo!6023 r!15766) s!10566))))

(declare-fun b!996276 () Bool)

(assert (=> b!996276 (= e!639060 call!65874)))

(declare-fun b!996277 () Bool)

(declare-fun res!450006 () Bool)

(declare-fun e!639056 () Bool)

(assert (=> b!996277 (=> res!450006 e!639056)))

(assert (=> b!996277 (= res!450006 call!65874)))

(assert (=> b!996277 (= e!639057 e!639056)))

(assert (=> b!996278 (= e!639056 call!65873)))

(declare-fun b!996279 () Bool)

(assert (=> b!996279 (= e!639058 (= s!10566 (Cons!9969 (c!163772 r!15766) Nil!9969)))))

(assert (= (and d!290879 c!163905) b!996276))

(assert (= (and d!290879 (not c!163905)) b!996274))

(assert (= (and b!996274 res!450007) b!996272))

(assert (= (and b!996272 c!163906) b!996279))

(assert (= (and b!996272 (not c!163906)) b!996273))

(assert (= (and b!996273 c!163907) b!996269))

(assert (= (and b!996273 (not c!163907)) b!996271))

(assert (= (and b!996269 (not res!450005)) b!996275))

(assert (= (and b!996271 c!163908) b!996277))

(assert (= (and b!996271 (not c!163908)) b!996270))

(assert (= (and b!996277 (not res!450006)) b!996278))

(assert (= (or b!996278 b!996270) bm!65869))

(assert (= (or b!996276 b!996277) bm!65868))

(declare-fun m!1188293 () Bool)

(assert (=> b!996269 m!1188293))

(assert (=> bm!65868 m!1187981))

(declare-fun m!1188295 () Bool)

(assert (=> bm!65869 m!1188295))

(declare-fun m!1188297 () Bool)

(assert (=> b!996275 m!1188297))

(assert (=> b!995731 d!290879))

(declare-fun b!996280 () Bool)

(declare-fun e!639062 () Bool)

(declare-fun lt!351379 () Bool)

(assert (=> b!996280 (= e!639062 (not lt!351379))))

(declare-fun b!996281 () Bool)

(declare-fun e!639065 () Bool)

(assert (=> b!996281 (= e!639065 e!639062)))

(declare-fun c!163910 () Bool)

(assert (=> b!996281 (= c!163910 ((_ is EmptyLang!2755) r!15766))))

(declare-fun b!996282 () Bool)

(declare-fun e!639067 () Bool)

(assert (=> b!996282 (= e!639067 (not (= (head!1830 s!10566) (c!163772 r!15766))))))

(declare-fun b!996283 () Bool)

(declare-fun res!450011 () Bool)

(declare-fun e!639068 () Bool)

(assert (=> b!996283 (=> res!450011 e!639068)))

(declare-fun e!639063 () Bool)

(assert (=> b!996283 (= res!450011 e!639063)))

(declare-fun res!450010 () Bool)

(assert (=> b!996283 (=> (not res!450010) (not e!639063))))

(assert (=> b!996283 (= res!450010 lt!351379)))

(declare-fun bm!65870 () Bool)

(declare-fun call!65875 () Bool)

(assert (=> bm!65870 (= call!65875 (isEmpty!6307 s!10566))))

(declare-fun b!996284 () Bool)

(declare-fun res!450009 () Bool)

(assert (=> b!996284 (=> (not res!450009) (not e!639063))))

(assert (=> b!996284 (= res!450009 (isEmpty!6307 (tail!1392 s!10566)))))

(declare-fun b!996285 () Bool)

(declare-fun e!639064 () Bool)

(assert (=> b!996285 (= e!639064 (nullable!871 r!15766))))

(declare-fun b!996286 () Bool)

(declare-fun res!450008 () Bool)

(assert (=> b!996286 (=> res!450008 e!639068)))

(assert (=> b!996286 (= res!450008 (not ((_ is ElementMatch!2755) r!15766)))))

(assert (=> b!996286 (= e!639062 e!639068)))

(declare-fun b!996287 () Bool)

(assert (=> b!996287 (= e!639063 (= (head!1830 s!10566) (c!163772 r!15766)))))

(declare-fun b!996288 () Bool)

(assert (=> b!996288 (= e!639064 (matchR!1291 (derivativeStep!677 r!15766 (head!1830 s!10566)) (tail!1392 s!10566)))))

(declare-fun b!996289 () Bool)

(assert (=> b!996289 (= e!639065 (= lt!351379 call!65875))))

(declare-fun b!996290 () Bool)

(declare-fun res!450014 () Bool)

(assert (=> b!996290 (=> res!450014 e!639067)))

(assert (=> b!996290 (= res!450014 (not (isEmpty!6307 (tail!1392 s!10566))))))

(declare-fun b!996291 () Bool)

(declare-fun e!639066 () Bool)

(assert (=> b!996291 (= e!639068 e!639066)))

(declare-fun res!450015 () Bool)

(assert (=> b!996291 (=> (not res!450015) (not e!639066))))

(assert (=> b!996291 (= res!450015 (not lt!351379))))

(declare-fun b!996292 () Bool)

(assert (=> b!996292 (= e!639066 e!639067)))

(declare-fun res!450012 () Bool)

(assert (=> b!996292 (=> res!450012 e!639067)))

(assert (=> b!996292 (= res!450012 call!65875)))

(declare-fun b!996293 () Bool)

(declare-fun res!450013 () Bool)

(assert (=> b!996293 (=> (not res!450013) (not e!639063))))

(assert (=> b!996293 (= res!450013 (not call!65875))))

(declare-fun d!290895 () Bool)

(assert (=> d!290895 e!639065))

(declare-fun c!163911 () Bool)

(assert (=> d!290895 (= c!163911 ((_ is EmptyExpr!2755) r!15766))))

(assert (=> d!290895 (= lt!351379 e!639064)))

(declare-fun c!163909 () Bool)

(assert (=> d!290895 (= c!163909 (isEmpty!6307 s!10566))))

(assert (=> d!290895 (validRegex!1224 r!15766)))

(assert (=> d!290895 (= (matchR!1291 r!15766 s!10566) lt!351379)))

(assert (= (and d!290895 c!163909) b!996285))

(assert (= (and d!290895 (not c!163909)) b!996288))

(assert (= (and d!290895 c!163911) b!996289))

(assert (= (and d!290895 (not c!163911)) b!996281))

(assert (= (and b!996281 c!163910) b!996280))

(assert (= (and b!996281 (not c!163910)) b!996286))

(assert (= (and b!996286 (not res!450008)) b!996283))

(assert (= (and b!996283 res!450010) b!996293))

(assert (= (and b!996293 res!450013) b!996284))

(assert (= (and b!996284 res!450009) b!996287))

(assert (= (and b!996283 (not res!450011)) b!996291))

(assert (= (and b!996291 res!450015) b!996292))

(assert (= (and b!996292 (not res!450012)) b!996290))

(assert (= (and b!996290 (not res!450014)) b!996282))

(assert (= (or b!996289 b!996292 b!996293) bm!65870))

(declare-fun m!1188299 () Bool)

(assert (=> b!996290 m!1188299))

(assert (=> b!996290 m!1188299))

(declare-fun m!1188301 () Bool)

(assert (=> b!996290 m!1188301))

(declare-fun m!1188303 () Bool)

(assert (=> b!996285 m!1188303))

(declare-fun m!1188305 () Bool)

(assert (=> b!996288 m!1188305))

(assert (=> b!996288 m!1188305))

(declare-fun m!1188307 () Bool)

(assert (=> b!996288 m!1188307))

(assert (=> b!996288 m!1188299))

(assert (=> b!996288 m!1188307))

(assert (=> b!996288 m!1188299))

(declare-fun m!1188309 () Bool)

(assert (=> b!996288 m!1188309))

(assert (=> b!996287 m!1188305))

(assert (=> b!996284 m!1188299))

(assert (=> b!996284 m!1188299))

(assert (=> b!996284 m!1188301))

(assert (=> b!996282 m!1188305))

(assert (=> d!290895 m!1187981))

(assert (=> d!290895 m!1188003))

(assert (=> bm!65870 m!1187981))

(assert (=> b!995731 d!290895))

(declare-fun d!290897 () Bool)

(assert (=> d!290897 (= (matchR!1291 r!15766 s!10566) (matchRSpec!554 r!15766 s!10566))))

(declare-fun lt!351382 () Unit!15169)

(declare-fun choose!6293 (Regex!2755 List!9985) Unit!15169)

(assert (=> d!290897 (= lt!351382 (choose!6293 r!15766 s!10566))))

(assert (=> d!290897 (validRegex!1224 r!15766)))

(assert (=> d!290897 (= (mainMatchTheorem!554 r!15766 s!10566) lt!351382)))

(declare-fun bs!245027 () Bool)

(assert (= bs!245027 d!290897))

(assert (=> bs!245027 m!1188023))

(assert (=> bs!245027 m!1188021))

(declare-fun m!1188311 () Bool)

(assert (=> bs!245027 m!1188311))

(assert (=> bs!245027 m!1188003))

(assert (=> b!995731 d!290897))

(declare-fun d!290899 () Bool)

(assert (=> d!290899 (= (isEmpty!6307 s!10566) ((_ is Nil!9969) s!10566))))

(assert (=> b!995733 d!290899))

(declare-fun d!290901 () Bool)

(declare-fun choose!6294 (Int) Bool)

(assert (=> d!290901 (= (Exists!492 lambda!35399) (choose!6294 lambda!35399))))

(declare-fun bs!245028 () Bool)

(assert (= bs!245028 d!290901))

(declare-fun m!1188313 () Bool)

(assert (=> bs!245028 m!1188313))

(assert (=> b!995733 d!290901))

(declare-fun bs!245029 () Bool)

(declare-fun d!290903 () Bool)

(assert (= bs!245029 (and d!290903 b!995733)))

(declare-fun lambda!35424 () Int)

(assert (=> bs!245029 (= lambda!35424 lambda!35399)))

(assert (=> bs!245029 (not (= lambda!35424 lambda!35400))))

(declare-fun bs!245030 () Bool)

(assert (= bs!245030 (and d!290903 b!996278)))

(assert (=> bs!245030 (not (= lambda!35424 lambda!35420))))

(declare-fun bs!245031 () Bool)

(assert (= bs!245031 (and d!290903 b!996270)))

(assert (=> bs!245031 (not (= lambda!35424 lambda!35421))))

(assert (=> d!290903 true))

(assert (=> d!290903 true))

(assert (=> d!290903 true))

(assert (=> d!290903 (= (isDefined!1962 (findConcatSeparation!426 (regOne!6022 r!15766) (regTwo!6022 r!15766) Nil!9969 s!10566 s!10566)) (Exists!492 lambda!35424))))

(declare-fun lt!351385 () Unit!15169)

(declare-fun choose!6296 (Regex!2755 Regex!2755 List!9985) Unit!15169)

(assert (=> d!290903 (= lt!351385 (choose!6296 (regOne!6022 r!15766) (regTwo!6022 r!15766) s!10566))))

(assert (=> d!290903 (validRegex!1224 (regOne!6022 r!15766))))

(assert (=> d!290903 (= (lemmaFindConcatSeparationEquivalentToExists!426 (regOne!6022 r!15766) (regTwo!6022 r!15766) s!10566) lt!351385)))

(declare-fun bs!245032 () Bool)

(assert (= bs!245032 d!290903))

(assert (=> bs!245032 m!1187987))

(declare-fun m!1188315 () Bool)

(assert (=> bs!245032 m!1188315))

(assert (=> bs!245032 m!1187987))

(declare-fun m!1188317 () Bool)

(assert (=> bs!245032 m!1188317))

(declare-fun m!1188319 () Bool)

(assert (=> bs!245032 m!1188319))

(assert (=> bs!245032 m!1188171))

(assert (=> b!995733 d!290903))

(declare-fun b!996316 () Bool)

(declare-fun res!450033 () Bool)

(declare-fun e!639084 () Bool)

(assert (=> b!996316 (=> (not res!450033) (not e!639084))))

(declare-fun lt!351394 () Option!2320)

(assert (=> b!996316 (= res!450033 (matchR!1291 (regOne!6022 r!15766) (_1!6504 (get!3475 lt!351394))))))

(declare-fun b!996317 () Bool)

(declare-fun e!639085 () Option!2320)

(assert (=> b!996317 (= e!639085 None!2319)))

(declare-fun b!996318 () Bool)

(declare-fun res!450030 () Bool)

(assert (=> b!996318 (=> (not res!450030) (not e!639084))))

(assert (=> b!996318 (= res!450030 (matchR!1291 (regTwo!6022 r!15766) (_2!6504 (get!3475 lt!351394))))))

(declare-fun b!996319 () Bool)

(declare-fun e!639081 () Bool)

(assert (=> b!996319 (= e!639081 (matchR!1291 (regTwo!6022 r!15766) s!10566))))

(declare-fun b!996320 () Bool)

(declare-fun e!639083 () Bool)

(assert (=> b!996320 (= e!639083 (not (isDefined!1962 lt!351394)))))

(declare-fun d!290905 () Bool)

(assert (=> d!290905 e!639083))

(declare-fun res!450032 () Bool)

(assert (=> d!290905 (=> res!450032 e!639083)))

(assert (=> d!290905 (= res!450032 e!639084)))

(declare-fun res!450034 () Bool)

(assert (=> d!290905 (=> (not res!450034) (not e!639084))))

(assert (=> d!290905 (= res!450034 (isDefined!1962 lt!351394))))

(declare-fun e!639082 () Option!2320)

(assert (=> d!290905 (= lt!351394 e!639082)))

(declare-fun c!163917 () Bool)

(assert (=> d!290905 (= c!163917 e!639081)))

(declare-fun res!450031 () Bool)

(assert (=> d!290905 (=> (not res!450031) (not e!639081))))

(assert (=> d!290905 (= res!450031 (matchR!1291 (regOne!6022 r!15766) Nil!9969))))

(assert (=> d!290905 (validRegex!1224 (regOne!6022 r!15766))))

(assert (=> d!290905 (= (findConcatSeparation!426 (regOne!6022 r!15766) (regTwo!6022 r!15766) Nil!9969 s!10566 s!10566) lt!351394)))

(declare-fun b!996321 () Bool)

(declare-fun lt!351392 () Unit!15169)

(declare-fun lt!351393 () Unit!15169)

(assert (=> b!996321 (= lt!351392 lt!351393)))

(assert (=> b!996321 (= (++!2716 (++!2716 Nil!9969 (Cons!9969 (h!15370 s!10566) Nil!9969)) (t!101031 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!316 (List!9985 C!6080 List!9985 List!9985) Unit!15169)

(assert (=> b!996321 (= lt!351393 (lemmaMoveElementToOtherListKeepsConcatEq!316 Nil!9969 (h!15370 s!10566) (t!101031 s!10566) s!10566))))

(assert (=> b!996321 (= e!639085 (findConcatSeparation!426 (regOne!6022 r!15766) (regTwo!6022 r!15766) (++!2716 Nil!9969 (Cons!9969 (h!15370 s!10566) Nil!9969)) (t!101031 s!10566) s!10566))))

(declare-fun b!996322 () Bool)

(assert (=> b!996322 (= e!639082 e!639085)))

(declare-fun c!163916 () Bool)

(assert (=> b!996322 (= c!163916 ((_ is Nil!9969) s!10566))))

(declare-fun b!996323 () Bool)

(assert (=> b!996323 (= e!639082 (Some!2319 (tuple2!11357 Nil!9969 s!10566)))))

(declare-fun b!996324 () Bool)

(assert (=> b!996324 (= e!639084 (= (++!2716 (_1!6504 (get!3475 lt!351394)) (_2!6504 (get!3475 lt!351394))) s!10566))))

(assert (= (and d!290905 res!450031) b!996319))

(assert (= (and d!290905 c!163917) b!996323))

(assert (= (and d!290905 (not c!163917)) b!996322))

(assert (= (and b!996322 c!163916) b!996317))

(assert (= (and b!996322 (not c!163916)) b!996321))

(assert (= (and d!290905 res!450034) b!996316))

(assert (= (and b!996316 res!450033) b!996318))

(assert (= (and b!996318 res!450030) b!996324))

(assert (= (and d!290905 (not res!450032)) b!996320))

(declare-fun m!1188321 () Bool)

(assert (=> b!996316 m!1188321))

(declare-fun m!1188323 () Bool)

(assert (=> b!996316 m!1188323))

(assert (=> b!996324 m!1188321))

(declare-fun m!1188325 () Bool)

(assert (=> b!996324 m!1188325))

(declare-fun m!1188327 () Bool)

(assert (=> b!996320 m!1188327))

(declare-fun m!1188329 () Bool)

(assert (=> b!996321 m!1188329))

(assert (=> b!996321 m!1188329))

(declare-fun m!1188331 () Bool)

(assert (=> b!996321 m!1188331))

(declare-fun m!1188333 () Bool)

(assert (=> b!996321 m!1188333))

(assert (=> b!996321 m!1188329))

(declare-fun m!1188335 () Bool)

(assert (=> b!996321 m!1188335))

(assert (=> d!290905 m!1188327))

(declare-fun m!1188337 () Bool)

(assert (=> d!290905 m!1188337))

(assert (=> d!290905 m!1188171))

(declare-fun m!1188339 () Bool)

(assert (=> b!996319 m!1188339))

(assert (=> b!996318 m!1188321))

(declare-fun m!1188341 () Bool)

(assert (=> b!996318 m!1188341))

(assert (=> b!995733 d!290905))

(declare-fun d!290907 () Bool)

(declare-fun isEmpty!6309 (Option!2320) Bool)

(assert (=> d!290907 (= (isDefined!1962 lt!351314) (not (isEmpty!6309 lt!351314)))))

(declare-fun bs!245033 () Bool)

(assert (= bs!245033 d!290907))

(declare-fun m!1188343 () Bool)

(assert (=> bs!245033 m!1188343))

(assert (=> b!995733 d!290907))

(declare-fun d!290909 () Bool)

(assert (=> d!290909 (= (Exists!492 lambda!35400) (choose!6294 lambda!35400))))

(declare-fun bs!245034 () Bool)

(assert (= bs!245034 d!290909))

(declare-fun m!1188345 () Bool)

(assert (=> bs!245034 m!1188345))

(assert (=> b!995733 d!290909))

(declare-fun bs!245035 () Bool)

(declare-fun d!290911 () Bool)

(assert (= bs!245035 (and d!290911 b!995733)))

(declare-fun lambda!35429 () Int)

(assert (=> bs!245035 (= lambda!35429 lambda!35399)))

(declare-fun bs!245036 () Bool)

(assert (= bs!245036 (and d!290911 b!996270)))

(assert (=> bs!245036 (not (= lambda!35429 lambda!35421))))

(assert (=> bs!245035 (not (= lambda!35429 lambda!35400))))

(declare-fun bs!245037 () Bool)

(assert (= bs!245037 (and d!290911 b!996278)))

(assert (=> bs!245037 (not (= lambda!35429 lambda!35420))))

(declare-fun bs!245038 () Bool)

(assert (= bs!245038 (and d!290911 d!290903)))

(assert (=> bs!245038 (= lambda!35429 lambda!35424)))

(assert (=> d!290911 true))

(assert (=> d!290911 true))

(assert (=> d!290911 true))

(declare-fun lambda!35430 () Int)

(assert (=> bs!245035 (not (= lambda!35430 lambda!35399))))

(assert (=> bs!245036 (= lambda!35430 lambda!35421)))

(declare-fun bs!245039 () Bool)

(assert (= bs!245039 d!290911))

(assert (=> bs!245039 (not (= lambda!35430 lambda!35429))))

(assert (=> bs!245035 (= lambda!35430 lambda!35400)))

(assert (=> bs!245037 (not (= lambda!35430 lambda!35420))))

(assert (=> bs!245038 (not (= lambda!35430 lambda!35424))))

(assert (=> d!290911 true))

(assert (=> d!290911 true))

(assert (=> d!290911 true))

(assert (=> d!290911 (= (Exists!492 lambda!35429) (Exists!492 lambda!35430))))

(declare-fun lt!351397 () Unit!15169)

(declare-fun choose!6297 (Regex!2755 Regex!2755 List!9985) Unit!15169)

(assert (=> d!290911 (= lt!351397 (choose!6297 (regOne!6022 r!15766) (regTwo!6022 r!15766) s!10566))))

(assert (=> d!290911 (validRegex!1224 (regOne!6022 r!15766))))

(assert (=> d!290911 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!242 (regOne!6022 r!15766) (regTwo!6022 r!15766) s!10566) lt!351397)))

(declare-fun m!1188347 () Bool)

(assert (=> bs!245039 m!1188347))

(declare-fun m!1188349 () Bool)

(assert (=> bs!245039 m!1188349))

(declare-fun m!1188351 () Bool)

(assert (=> bs!245039 m!1188351))

(assert (=> bs!245039 m!1188171))

(assert (=> b!995733 d!290911))

(declare-fun b!996333 () Bool)

(declare-fun e!639090 () Bool)

(declare-fun lt!351398 () Bool)

(assert (=> b!996333 (= e!639090 (not lt!351398))))

(declare-fun b!996334 () Bool)

(declare-fun e!639093 () Bool)

(assert (=> b!996334 (= e!639093 e!639090)))

(declare-fun c!163919 () Bool)

(assert (=> b!996334 (= c!163919 ((_ is EmptyLang!2755) (regTwo!6022 r!15766)))))

(declare-fun b!996335 () Bool)

(declare-fun e!639095 () Bool)

(assert (=> b!996335 (= e!639095 (not (= (head!1830 (_2!6504 lt!351321)) (c!163772 (regTwo!6022 r!15766)))))))

(declare-fun b!996336 () Bool)

(declare-fun res!450046 () Bool)

(declare-fun e!639096 () Bool)

(assert (=> b!996336 (=> res!450046 e!639096)))

(declare-fun e!639091 () Bool)

(assert (=> b!996336 (= res!450046 e!639091)))

(declare-fun res!450045 () Bool)

(assert (=> b!996336 (=> (not res!450045) (not e!639091))))

(assert (=> b!996336 (= res!450045 lt!351398)))

(declare-fun bm!65871 () Bool)

(declare-fun call!65876 () Bool)

(assert (=> bm!65871 (= call!65876 (isEmpty!6307 (_2!6504 lt!351321)))))

(declare-fun b!996337 () Bool)

(declare-fun res!450044 () Bool)

(assert (=> b!996337 (=> (not res!450044) (not e!639091))))

(assert (=> b!996337 (= res!450044 (isEmpty!6307 (tail!1392 (_2!6504 lt!351321))))))

(declare-fun b!996338 () Bool)

(declare-fun e!639092 () Bool)

(assert (=> b!996338 (= e!639092 (nullable!871 (regTwo!6022 r!15766)))))

(declare-fun b!996339 () Bool)

(declare-fun res!450043 () Bool)

(assert (=> b!996339 (=> res!450043 e!639096)))

(assert (=> b!996339 (= res!450043 (not ((_ is ElementMatch!2755) (regTwo!6022 r!15766))))))

(assert (=> b!996339 (= e!639090 e!639096)))

(declare-fun b!996340 () Bool)

(assert (=> b!996340 (= e!639091 (= (head!1830 (_2!6504 lt!351321)) (c!163772 (regTwo!6022 r!15766))))))

(declare-fun b!996341 () Bool)

(assert (=> b!996341 (= e!639092 (matchR!1291 (derivativeStep!677 (regTwo!6022 r!15766) (head!1830 (_2!6504 lt!351321))) (tail!1392 (_2!6504 lt!351321))))))

(declare-fun b!996342 () Bool)

(assert (=> b!996342 (= e!639093 (= lt!351398 call!65876))))

(declare-fun b!996343 () Bool)

(declare-fun res!450049 () Bool)

(assert (=> b!996343 (=> res!450049 e!639095)))

(assert (=> b!996343 (= res!450049 (not (isEmpty!6307 (tail!1392 (_2!6504 lt!351321)))))))

(declare-fun b!996344 () Bool)

(declare-fun e!639094 () Bool)

(assert (=> b!996344 (= e!639096 e!639094)))

(declare-fun res!450050 () Bool)

(assert (=> b!996344 (=> (not res!450050) (not e!639094))))

(assert (=> b!996344 (= res!450050 (not lt!351398))))

(declare-fun b!996345 () Bool)

(assert (=> b!996345 (= e!639094 e!639095)))

(declare-fun res!450047 () Bool)

(assert (=> b!996345 (=> res!450047 e!639095)))

(assert (=> b!996345 (= res!450047 call!65876)))

(declare-fun b!996346 () Bool)

(declare-fun res!450048 () Bool)

(assert (=> b!996346 (=> (not res!450048) (not e!639091))))

(assert (=> b!996346 (= res!450048 (not call!65876))))

(declare-fun d!290913 () Bool)

(assert (=> d!290913 e!639093))

(declare-fun c!163920 () Bool)

(assert (=> d!290913 (= c!163920 ((_ is EmptyExpr!2755) (regTwo!6022 r!15766)))))

(assert (=> d!290913 (= lt!351398 e!639092)))

(declare-fun c!163918 () Bool)

(assert (=> d!290913 (= c!163918 (isEmpty!6307 (_2!6504 lt!351321)))))

(assert (=> d!290913 (validRegex!1224 (regTwo!6022 r!15766))))

(assert (=> d!290913 (= (matchR!1291 (regTwo!6022 r!15766) (_2!6504 lt!351321)) lt!351398)))

(assert (= (and d!290913 c!163918) b!996338))

(assert (= (and d!290913 (not c!163918)) b!996341))

(assert (= (and d!290913 c!163920) b!996342))

(assert (= (and d!290913 (not c!163920)) b!996334))

(assert (= (and b!996334 c!163919) b!996333))

(assert (= (and b!996334 (not c!163919)) b!996339))

(assert (= (and b!996339 (not res!450043)) b!996336))

(assert (= (and b!996336 res!450045) b!996346))

(assert (= (and b!996346 res!450048) b!996337))

(assert (= (and b!996337 res!450044) b!996340))

(assert (= (and b!996336 (not res!450046)) b!996344))

(assert (= (and b!996344 res!450050) b!996345))

(assert (= (and b!996345 (not res!450047)) b!996343))

(assert (= (and b!996343 (not res!450049)) b!996335))

(assert (= (or b!996342 b!996345 b!996346) bm!65871))

(assert (=> b!996343 m!1188105))

(assert (=> b!996343 m!1188105))

(assert (=> b!996343 m!1188107))

(assert (=> b!996338 m!1188223))

(assert (=> b!996341 m!1188111))

(assert (=> b!996341 m!1188111))

(declare-fun m!1188353 () Bool)

(assert (=> b!996341 m!1188353))

(assert (=> b!996341 m!1188105))

(assert (=> b!996341 m!1188353))

(assert (=> b!996341 m!1188105))

(declare-fun m!1188355 () Bool)

(assert (=> b!996341 m!1188355))

(assert (=> b!996340 m!1188111))

(assert (=> b!996337 m!1188105))

(assert (=> b!996337 m!1188105))

(assert (=> b!996337 m!1188107))

(assert (=> b!996335 m!1188111))

(assert (=> d!290913 m!1188123))

(assert (=> d!290913 m!1188029))

(assert (=> bm!65871 m!1188123))

(assert (=> b!995728 d!290913))

(declare-fun b!996347 () Bool)

(declare-fun res!450051 () Bool)

(declare-fun e!639103 () Bool)

(assert (=> b!996347 (=> res!450051 e!639103)))

(assert (=> b!996347 (= res!450051 (not ((_ is Concat!4588) lt!351320)))))

(declare-fun e!639100 () Bool)

(assert (=> b!996347 (= e!639100 e!639103)))

(declare-fun b!996348 () Bool)

(declare-fun e!639097 () Bool)

(declare-fun call!65879 () Bool)

(assert (=> b!996348 (= e!639097 call!65879)))

(declare-fun b!996349 () Bool)

(assert (=> b!996349 (= e!639103 e!639097)))

(declare-fun res!450053 () Bool)

(assert (=> b!996349 (=> (not res!450053) (not e!639097))))

(declare-fun call!65878 () Bool)

(assert (=> b!996349 (= res!450053 call!65878)))

(declare-fun d!290915 () Bool)

(declare-fun res!450054 () Bool)

(declare-fun e!639101 () Bool)

(assert (=> d!290915 (=> res!450054 e!639101)))

(assert (=> d!290915 (= res!450054 ((_ is ElementMatch!2755) lt!351320))))

(assert (=> d!290915 (= (validRegex!1224 lt!351320) e!639101)))

(declare-fun b!996350 () Bool)

(declare-fun e!639098 () Bool)

(assert (=> b!996350 (= e!639098 call!65879)))

(declare-fun b!996351 () Bool)

(declare-fun e!639099 () Bool)

(declare-fun call!65877 () Bool)

(assert (=> b!996351 (= e!639099 call!65877)))

(declare-fun c!163921 () Bool)

(declare-fun bm!65872 () Bool)

(declare-fun c!163922 () Bool)

(assert (=> bm!65872 (= call!65877 (validRegex!1224 (ite c!163921 (reg!3084 lt!351320) (ite c!163922 (regOne!6023 lt!351320) (regOne!6022 lt!351320)))))))

(declare-fun bm!65873 () Bool)

(assert (=> bm!65873 (= call!65879 (validRegex!1224 (ite c!163922 (regTwo!6023 lt!351320) (regTwo!6022 lt!351320))))))

(declare-fun b!996352 () Bool)

(declare-fun e!639102 () Bool)

(assert (=> b!996352 (= e!639102 e!639099)))

(declare-fun res!450055 () Bool)

(assert (=> b!996352 (= res!450055 (not (nullable!871 (reg!3084 lt!351320))))))

(assert (=> b!996352 (=> (not res!450055) (not e!639099))))

(declare-fun b!996353 () Bool)

(declare-fun res!450052 () Bool)

(assert (=> b!996353 (=> (not res!450052) (not e!639098))))

(assert (=> b!996353 (= res!450052 call!65878)))

(assert (=> b!996353 (= e!639100 e!639098)))

(declare-fun b!996354 () Bool)

(assert (=> b!996354 (= e!639101 e!639102)))

(assert (=> b!996354 (= c!163921 ((_ is Star!2755) lt!351320))))

(declare-fun b!996355 () Bool)

(assert (=> b!996355 (= e!639102 e!639100)))

(assert (=> b!996355 (= c!163922 ((_ is Union!2755) lt!351320))))

(declare-fun bm!65874 () Bool)

(assert (=> bm!65874 (= call!65878 call!65877)))

(assert (= (and d!290915 (not res!450054)) b!996354))

(assert (= (and b!996354 c!163921) b!996352))

(assert (= (and b!996354 (not c!163921)) b!996355))

(assert (= (and b!996352 res!450055) b!996351))

(assert (= (and b!996355 c!163922) b!996353))

(assert (= (and b!996355 (not c!163922)) b!996347))

(assert (= (and b!996353 res!450052) b!996350))

(assert (= (and b!996347 (not res!450051)) b!996349))

(assert (= (and b!996349 res!450053) b!996348))

(assert (= (or b!996350 b!996348) bm!65873))

(assert (= (or b!996353 b!996349) bm!65874))

(assert (= (or b!996351 bm!65874) bm!65872))

(declare-fun m!1188357 () Bool)

(assert (=> bm!65872 m!1188357))

(declare-fun m!1188359 () Bool)

(assert (=> bm!65873 m!1188359))

(declare-fun m!1188361 () Bool)

(assert (=> b!996352 m!1188361))

(assert (=> b!995727 d!290915))

(declare-fun d!290917 () Bool)

(assert (=> d!290917 (matchR!1291 (Concat!4588 lt!351313 lt!351320) (++!2716 (_1!6504 lt!351321) (_2!6504 lt!351321)))))

(declare-fun lt!351401 () Unit!15169)

(declare-fun choose!6298 (Regex!2755 Regex!2755 List!9985 List!9985) Unit!15169)

(assert (=> d!290917 (= lt!351401 (choose!6298 lt!351313 lt!351320 (_1!6504 lt!351321) (_2!6504 lt!351321)))))

(declare-fun e!639106 () Bool)

(assert (=> d!290917 e!639106))

(declare-fun res!450058 () Bool)

(assert (=> d!290917 (=> (not res!450058) (not e!639106))))

(assert (=> d!290917 (= res!450058 (validRegex!1224 lt!351313))))

(assert (=> d!290917 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!8 lt!351313 lt!351320 (_1!6504 lt!351321) (_2!6504 lt!351321)) lt!351401)))

(declare-fun b!996358 () Bool)

(assert (=> b!996358 (= e!639106 (validRegex!1224 lt!351320))))

(assert (= (and d!290917 res!450058) b!996358))

(assert (=> d!290917 m!1188011))

(assert (=> d!290917 m!1188011))

(assert (=> d!290917 m!1188013))

(declare-fun m!1188363 () Bool)

(assert (=> d!290917 m!1188363))

(assert (=> d!290917 m!1187997))

(assert (=> b!996358 m!1188027))

(assert (=> b!995724 d!290917))

(declare-fun d!290919 () Bool)

(declare-fun e!639109 () Bool)

(assert (=> d!290919 e!639109))

(declare-fun res!450059 () Bool)

(assert (=> d!290919 (=> (not res!450059) (not e!639109))))

(declare-fun lt!351402 () Regex!2755)

(assert (=> d!290919 (= res!450059 (validRegex!1224 lt!351402))))

(declare-fun e!639111 () Regex!2755)

(assert (=> d!290919 (= lt!351402 e!639111)))

(declare-fun c!163926 () Bool)

(assert (=> d!290919 (= c!163926 (and ((_ is Concat!4588) r!15766) ((_ is EmptyExpr!2755) (regOne!6022 r!15766))))))

(assert (=> d!290919 (validRegex!1224 r!15766)))

(assert (=> d!290919 (= (removeUselessConcat!360 r!15766) lt!351402)))

(declare-fun bm!65875 () Bool)

(declare-fun call!65880 () Regex!2755)

(declare-fun call!65883 () Regex!2755)

(assert (=> bm!65875 (= call!65880 call!65883)))

(declare-fun b!996359 () Bool)

(assert (=> b!996359 (= e!639111 call!65883)))

(declare-fun c!163927 () Bool)

(declare-fun bm!65876 () Bool)

(assert (=> bm!65876 (= call!65883 (removeUselessConcat!360 (ite c!163926 (regTwo!6022 r!15766) (ite c!163927 (regOne!6022 r!15766) (regOne!6023 r!15766)))))))

(declare-fun bm!65877 () Bool)

(declare-fun call!65884 () Regex!2755)

(declare-fun call!65882 () Regex!2755)

(assert (=> bm!65877 (= call!65884 call!65882)))

(declare-fun bm!65878 () Bool)

(declare-fun call!65881 () Regex!2755)

(assert (=> bm!65878 (= call!65881 call!65884)))

(declare-fun b!996360 () Bool)

(declare-fun e!639107 () Regex!2755)

(assert (=> b!996360 (= e!639107 r!15766)))

(declare-fun b!996361 () Bool)

(declare-fun e!639108 () Regex!2755)

(assert (=> b!996361 (= e!639111 e!639108)))

(declare-fun c!163924 () Bool)

(assert (=> b!996361 (= c!163924 (and ((_ is Concat!4588) r!15766) ((_ is EmptyExpr!2755) (regTwo!6022 r!15766))))))

(declare-fun b!996362 () Bool)

(declare-fun e!639110 () Regex!2755)

(assert (=> b!996362 (= e!639110 (Concat!4588 call!65880 call!65884))))

(declare-fun b!996363 () Bool)

(assert (=> b!996363 (= c!163927 ((_ is Concat!4588) r!15766))))

(assert (=> b!996363 (= e!639108 e!639110)))

(declare-fun b!996364 () Bool)

(declare-fun e!639112 () Regex!2755)

(assert (=> b!996364 (= e!639112 (Union!2755 call!65880 call!65881))))

(declare-fun b!996365 () Bool)

(assert (=> b!996365 (= e!639109 (= (nullable!871 lt!351402) (nullable!871 r!15766)))))

(declare-fun bm!65879 () Bool)

(declare-fun c!163923 () Bool)

(assert (=> bm!65879 (= call!65882 (removeUselessConcat!360 (ite c!163924 (regOne!6022 r!15766) (ite c!163927 (regTwo!6022 r!15766) (ite c!163923 (regTwo!6023 r!15766) (reg!3084 r!15766))))))))

(declare-fun b!996366 () Bool)

(assert (=> b!996366 (= e!639108 call!65882)))

(declare-fun b!996367 () Bool)

(declare-fun c!163925 () Bool)

(assert (=> b!996367 (= c!163925 ((_ is Star!2755) r!15766))))

(assert (=> b!996367 (= e!639112 e!639107)))

(declare-fun b!996368 () Bool)

(assert (=> b!996368 (= e!639107 (Star!2755 call!65881))))

(declare-fun b!996369 () Bool)

(assert (=> b!996369 (= e!639110 e!639112)))

(assert (=> b!996369 (= c!163923 ((_ is Union!2755) r!15766))))

(assert (= (and d!290919 c!163926) b!996359))

(assert (= (and d!290919 (not c!163926)) b!996361))

(assert (= (and b!996361 c!163924) b!996366))

(assert (= (and b!996361 (not c!163924)) b!996363))

(assert (= (and b!996363 c!163927) b!996362))

(assert (= (and b!996363 (not c!163927)) b!996369))

(assert (= (and b!996369 c!163923) b!996364))

(assert (= (and b!996369 (not c!163923)) b!996367))

(assert (= (and b!996367 c!163925) b!996368))

(assert (= (and b!996367 (not c!163925)) b!996360))

(assert (= (or b!996364 b!996368) bm!65878))

(assert (= (or b!996362 bm!65878) bm!65877))

(assert (= (or b!996362 b!996364) bm!65875))

(assert (= (or b!996366 bm!65877) bm!65879))

(assert (= (or b!996359 bm!65875) bm!65876))

(assert (= (and d!290919 res!450059) b!996365))

(declare-fun m!1188365 () Bool)

(assert (=> d!290919 m!1188365))

(assert (=> d!290919 m!1188003))

(declare-fun m!1188367 () Bool)

(assert (=> bm!65876 m!1188367))

(declare-fun m!1188369 () Bool)

(assert (=> b!996365 m!1188369))

(assert (=> b!996365 m!1188303))

(declare-fun m!1188371 () Bool)

(assert (=> bm!65879 m!1188371))

(assert (=> b!995724 d!290919))

(declare-fun b!996370 () Bool)

(declare-fun e!639113 () Bool)

(declare-fun lt!351403 () Bool)

(assert (=> b!996370 (= e!639113 (not lt!351403))))

(declare-fun b!996371 () Bool)

(declare-fun e!639116 () Bool)

(assert (=> b!996371 (= e!639116 e!639113)))

(declare-fun c!163929 () Bool)

(assert (=> b!996371 (= c!163929 ((_ is EmptyLang!2755) (Concat!4588 lt!351313 lt!351320)))))

(declare-fun b!996372 () Bool)

(declare-fun e!639118 () Bool)

(assert (=> b!996372 (= e!639118 (not (= (head!1830 (++!2716 (_1!6504 lt!351321) (_2!6504 lt!351321))) (c!163772 (Concat!4588 lt!351313 lt!351320)))))))

(declare-fun b!996373 () Bool)

(declare-fun res!450063 () Bool)

(declare-fun e!639119 () Bool)

(assert (=> b!996373 (=> res!450063 e!639119)))

(declare-fun e!639114 () Bool)

(assert (=> b!996373 (= res!450063 e!639114)))

(declare-fun res!450062 () Bool)

(assert (=> b!996373 (=> (not res!450062) (not e!639114))))

(assert (=> b!996373 (= res!450062 lt!351403)))

(declare-fun bm!65880 () Bool)

(declare-fun call!65885 () Bool)

(assert (=> bm!65880 (= call!65885 (isEmpty!6307 (++!2716 (_1!6504 lt!351321) (_2!6504 lt!351321))))))

(declare-fun b!996374 () Bool)

(declare-fun res!450061 () Bool)

(assert (=> b!996374 (=> (not res!450061) (not e!639114))))

(assert (=> b!996374 (= res!450061 (isEmpty!6307 (tail!1392 (++!2716 (_1!6504 lt!351321) (_2!6504 lt!351321)))))))

(declare-fun b!996375 () Bool)

(declare-fun e!639115 () Bool)

(assert (=> b!996375 (= e!639115 (nullable!871 (Concat!4588 lt!351313 lt!351320)))))

(declare-fun b!996376 () Bool)

(declare-fun res!450060 () Bool)

(assert (=> b!996376 (=> res!450060 e!639119)))

(assert (=> b!996376 (= res!450060 (not ((_ is ElementMatch!2755) (Concat!4588 lt!351313 lt!351320))))))

(assert (=> b!996376 (= e!639113 e!639119)))

(declare-fun b!996377 () Bool)

(assert (=> b!996377 (= e!639114 (= (head!1830 (++!2716 (_1!6504 lt!351321) (_2!6504 lt!351321))) (c!163772 (Concat!4588 lt!351313 lt!351320))))))

(declare-fun b!996378 () Bool)

(assert (=> b!996378 (= e!639115 (matchR!1291 (derivativeStep!677 (Concat!4588 lt!351313 lt!351320) (head!1830 (++!2716 (_1!6504 lt!351321) (_2!6504 lt!351321)))) (tail!1392 (++!2716 (_1!6504 lt!351321) (_2!6504 lt!351321)))))))

(declare-fun b!996379 () Bool)

(assert (=> b!996379 (= e!639116 (= lt!351403 call!65885))))

(declare-fun b!996380 () Bool)

(declare-fun res!450066 () Bool)

(assert (=> b!996380 (=> res!450066 e!639118)))

(assert (=> b!996380 (= res!450066 (not (isEmpty!6307 (tail!1392 (++!2716 (_1!6504 lt!351321) (_2!6504 lt!351321))))))))

(declare-fun b!996381 () Bool)

(declare-fun e!639117 () Bool)

(assert (=> b!996381 (= e!639119 e!639117)))

(declare-fun res!450067 () Bool)

(assert (=> b!996381 (=> (not res!450067) (not e!639117))))

(assert (=> b!996381 (= res!450067 (not lt!351403))))

(declare-fun b!996382 () Bool)

(assert (=> b!996382 (= e!639117 e!639118)))

(declare-fun res!450064 () Bool)

(assert (=> b!996382 (=> res!450064 e!639118)))

(assert (=> b!996382 (= res!450064 call!65885)))

(declare-fun b!996383 () Bool)

(declare-fun res!450065 () Bool)

(assert (=> b!996383 (=> (not res!450065) (not e!639114))))

(assert (=> b!996383 (= res!450065 (not call!65885))))

(declare-fun d!290921 () Bool)

(assert (=> d!290921 e!639116))

(declare-fun c!163930 () Bool)

(assert (=> d!290921 (= c!163930 ((_ is EmptyExpr!2755) (Concat!4588 lt!351313 lt!351320)))))

(assert (=> d!290921 (= lt!351403 e!639115)))

(declare-fun c!163928 () Bool)

(assert (=> d!290921 (= c!163928 (isEmpty!6307 (++!2716 (_1!6504 lt!351321) (_2!6504 lt!351321))))))

(assert (=> d!290921 (validRegex!1224 (Concat!4588 lt!351313 lt!351320))))

(assert (=> d!290921 (= (matchR!1291 (Concat!4588 lt!351313 lt!351320) (++!2716 (_1!6504 lt!351321) (_2!6504 lt!351321))) lt!351403)))

(assert (= (and d!290921 c!163928) b!996375))

(assert (= (and d!290921 (not c!163928)) b!996378))

(assert (= (and d!290921 c!163930) b!996379))

(assert (= (and d!290921 (not c!163930)) b!996371))

(assert (= (and b!996371 c!163929) b!996370))

(assert (= (and b!996371 (not c!163929)) b!996376))

(assert (= (and b!996376 (not res!450060)) b!996373))

(assert (= (and b!996373 res!450062) b!996383))

(assert (= (and b!996383 res!450065) b!996374))

(assert (= (and b!996374 res!450061) b!996377))

(assert (= (and b!996373 (not res!450063)) b!996381))

(assert (= (and b!996381 res!450067) b!996382))

(assert (= (and b!996382 (not res!450064)) b!996380))

(assert (= (and b!996380 (not res!450066)) b!996372))

(assert (= (or b!996379 b!996382 b!996383) bm!65880))

(assert (=> b!996380 m!1188011))

(declare-fun m!1188373 () Bool)

(assert (=> b!996380 m!1188373))

(assert (=> b!996380 m!1188373))

(declare-fun m!1188375 () Bool)

(assert (=> b!996380 m!1188375))

(declare-fun m!1188377 () Bool)

(assert (=> b!996375 m!1188377))

(assert (=> b!996378 m!1188011))

(declare-fun m!1188379 () Bool)

(assert (=> b!996378 m!1188379))

(assert (=> b!996378 m!1188379))

(declare-fun m!1188381 () Bool)

(assert (=> b!996378 m!1188381))

(assert (=> b!996378 m!1188011))

(assert (=> b!996378 m!1188373))

(assert (=> b!996378 m!1188381))

(assert (=> b!996378 m!1188373))

(declare-fun m!1188383 () Bool)

(assert (=> b!996378 m!1188383))

(assert (=> b!996377 m!1188011))

(assert (=> b!996377 m!1188379))

(assert (=> b!996374 m!1188011))

(assert (=> b!996374 m!1188373))

(assert (=> b!996374 m!1188373))

(assert (=> b!996374 m!1188375))

(assert (=> b!996372 m!1188011))

(assert (=> b!996372 m!1188379))

(assert (=> d!290921 m!1188011))

(declare-fun m!1188385 () Bool)

(assert (=> d!290921 m!1188385))

(declare-fun m!1188387 () Bool)

(assert (=> d!290921 m!1188387))

(assert (=> bm!65880 m!1188011))

(assert (=> bm!65880 m!1188385))

(assert (=> b!995724 d!290921))

(declare-fun d!290923 () Bool)

(declare-fun e!639124 () Bool)

(assert (=> d!290923 e!639124))

(declare-fun res!450072 () Bool)

(assert (=> d!290923 (=> (not res!450072) (not e!639124))))

(declare-fun lt!351406 () List!9985)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1428 (List!9985) (InoxSet C!6080))

(assert (=> d!290923 (= res!450072 (= (content!1428 lt!351406) ((_ map or) (content!1428 (_1!6504 lt!351321)) (content!1428 (_2!6504 lt!351321)))))))

(declare-fun e!639125 () List!9985)

(assert (=> d!290923 (= lt!351406 e!639125)))

(declare-fun c!163933 () Bool)

(assert (=> d!290923 (= c!163933 ((_ is Nil!9969) (_1!6504 lt!351321)))))

(assert (=> d!290923 (= (++!2716 (_1!6504 lt!351321) (_2!6504 lt!351321)) lt!351406)))

(declare-fun b!996393 () Bool)

(assert (=> b!996393 (= e!639125 (Cons!9969 (h!15370 (_1!6504 lt!351321)) (++!2716 (t!101031 (_1!6504 lt!351321)) (_2!6504 lt!351321))))))

(declare-fun b!996392 () Bool)

(assert (=> b!996392 (= e!639125 (_2!6504 lt!351321))))

(declare-fun b!996394 () Bool)

(declare-fun res!450073 () Bool)

(assert (=> b!996394 (=> (not res!450073) (not e!639124))))

(declare-fun size!7961 (List!9985) Int)

(assert (=> b!996394 (= res!450073 (= (size!7961 lt!351406) (+ (size!7961 (_1!6504 lt!351321)) (size!7961 (_2!6504 lt!351321)))))))

(declare-fun b!996395 () Bool)

(assert (=> b!996395 (= e!639124 (or (not (= (_2!6504 lt!351321) Nil!9969)) (= lt!351406 (_1!6504 lt!351321))))))

(assert (= (and d!290923 c!163933) b!996392))

(assert (= (and d!290923 (not c!163933)) b!996393))

(assert (= (and d!290923 res!450072) b!996394))

(assert (= (and b!996394 res!450073) b!996395))

(declare-fun m!1188389 () Bool)

(assert (=> d!290923 m!1188389))

(declare-fun m!1188391 () Bool)

(assert (=> d!290923 m!1188391))

(declare-fun m!1188393 () Bool)

(assert (=> d!290923 m!1188393))

(declare-fun m!1188395 () Bool)

(assert (=> b!996393 m!1188395))

(declare-fun m!1188397 () Bool)

(assert (=> b!996394 m!1188397))

(declare-fun m!1188399 () Bool)

(assert (=> b!996394 m!1188399))

(declare-fun m!1188401 () Bool)

(assert (=> b!996394 m!1188401))

(assert (=> b!995724 d!290923))

(declare-fun b!996396 () Bool)

(declare-fun e!639126 () Bool)

(declare-fun lt!351407 () Bool)

(assert (=> b!996396 (= e!639126 (not lt!351407))))

(declare-fun b!996397 () Bool)

(declare-fun e!639129 () Bool)

(assert (=> b!996397 (= e!639129 e!639126)))

(declare-fun c!163935 () Bool)

(assert (=> b!996397 (= c!163935 ((_ is EmptyLang!2755) (removeUselessConcat!360 r!15766)))))

(declare-fun b!996398 () Bool)

(declare-fun e!639131 () Bool)

(assert (=> b!996398 (= e!639131 (not (= (head!1830 s!10566) (c!163772 (removeUselessConcat!360 r!15766)))))))

(declare-fun b!996399 () Bool)

(declare-fun res!450077 () Bool)

(declare-fun e!639132 () Bool)

(assert (=> b!996399 (=> res!450077 e!639132)))

(declare-fun e!639127 () Bool)

(assert (=> b!996399 (= res!450077 e!639127)))

(declare-fun res!450076 () Bool)

(assert (=> b!996399 (=> (not res!450076) (not e!639127))))

(assert (=> b!996399 (= res!450076 lt!351407)))

(declare-fun bm!65881 () Bool)

(declare-fun call!65886 () Bool)

(assert (=> bm!65881 (= call!65886 (isEmpty!6307 s!10566))))

(declare-fun b!996400 () Bool)

(declare-fun res!450075 () Bool)

(assert (=> b!996400 (=> (not res!450075) (not e!639127))))

(assert (=> b!996400 (= res!450075 (isEmpty!6307 (tail!1392 s!10566)))))

(declare-fun b!996401 () Bool)

(declare-fun e!639128 () Bool)

(assert (=> b!996401 (= e!639128 (nullable!871 (removeUselessConcat!360 r!15766)))))

(declare-fun b!996402 () Bool)

(declare-fun res!450074 () Bool)

(assert (=> b!996402 (=> res!450074 e!639132)))

(assert (=> b!996402 (= res!450074 (not ((_ is ElementMatch!2755) (removeUselessConcat!360 r!15766))))))

(assert (=> b!996402 (= e!639126 e!639132)))

(declare-fun b!996403 () Bool)

(assert (=> b!996403 (= e!639127 (= (head!1830 s!10566) (c!163772 (removeUselessConcat!360 r!15766))))))

(declare-fun b!996404 () Bool)

(assert (=> b!996404 (= e!639128 (matchR!1291 (derivativeStep!677 (removeUselessConcat!360 r!15766) (head!1830 s!10566)) (tail!1392 s!10566)))))

(declare-fun b!996405 () Bool)

(assert (=> b!996405 (= e!639129 (= lt!351407 call!65886))))

(declare-fun b!996406 () Bool)

(declare-fun res!450080 () Bool)

(assert (=> b!996406 (=> res!450080 e!639131)))

(assert (=> b!996406 (= res!450080 (not (isEmpty!6307 (tail!1392 s!10566))))))

(declare-fun b!996407 () Bool)

(declare-fun e!639130 () Bool)

(assert (=> b!996407 (= e!639132 e!639130)))

(declare-fun res!450081 () Bool)

(assert (=> b!996407 (=> (not res!450081) (not e!639130))))

(assert (=> b!996407 (= res!450081 (not lt!351407))))

(declare-fun b!996408 () Bool)

(assert (=> b!996408 (= e!639130 e!639131)))

(declare-fun res!450078 () Bool)

(assert (=> b!996408 (=> res!450078 e!639131)))

(assert (=> b!996408 (= res!450078 call!65886)))

(declare-fun b!996409 () Bool)

(declare-fun res!450079 () Bool)

(assert (=> b!996409 (=> (not res!450079) (not e!639127))))

(assert (=> b!996409 (= res!450079 (not call!65886))))

(declare-fun d!290925 () Bool)

(assert (=> d!290925 e!639129))

(declare-fun c!163936 () Bool)

(assert (=> d!290925 (= c!163936 ((_ is EmptyExpr!2755) (removeUselessConcat!360 r!15766)))))

(assert (=> d!290925 (= lt!351407 e!639128)))

(declare-fun c!163934 () Bool)

(assert (=> d!290925 (= c!163934 (isEmpty!6307 s!10566))))

(assert (=> d!290925 (validRegex!1224 (removeUselessConcat!360 r!15766))))

(assert (=> d!290925 (= (matchR!1291 (removeUselessConcat!360 r!15766) s!10566) lt!351407)))

(assert (= (and d!290925 c!163934) b!996401))

(assert (= (and d!290925 (not c!163934)) b!996404))

(assert (= (and d!290925 c!163936) b!996405))

(assert (= (and d!290925 (not c!163936)) b!996397))

(assert (= (and b!996397 c!163935) b!996396))

(assert (= (and b!996397 (not c!163935)) b!996402))

(assert (= (and b!996402 (not res!450074)) b!996399))

(assert (= (and b!996399 res!450076) b!996409))

(assert (= (and b!996409 res!450079) b!996400))

(assert (= (and b!996400 res!450075) b!996403))

(assert (= (and b!996399 (not res!450077)) b!996407))

(assert (= (and b!996407 res!450081) b!996408))

(assert (= (and b!996408 (not res!450078)) b!996406))

(assert (= (and b!996406 (not res!450080)) b!996398))

(assert (= (or b!996405 b!996408 b!996409) bm!65881))

(assert (=> b!996406 m!1188299))

(assert (=> b!996406 m!1188299))

(assert (=> b!996406 m!1188301))

(assert (=> b!996401 m!1188015))

(declare-fun m!1188403 () Bool)

(assert (=> b!996401 m!1188403))

(assert (=> b!996404 m!1188305))

(assert (=> b!996404 m!1188015))

(assert (=> b!996404 m!1188305))

(declare-fun m!1188405 () Bool)

(assert (=> b!996404 m!1188405))

(assert (=> b!996404 m!1188299))

(assert (=> b!996404 m!1188405))

(assert (=> b!996404 m!1188299))

(declare-fun m!1188407 () Bool)

(assert (=> b!996404 m!1188407))

(assert (=> b!996403 m!1188305))

(assert (=> b!996400 m!1188299))

(assert (=> b!996400 m!1188299))

(assert (=> b!996400 m!1188301))

(assert (=> b!996398 m!1188305))

(assert (=> d!290925 m!1187981))

(assert (=> d!290925 m!1188015))

(declare-fun m!1188409 () Bool)

(assert (=> d!290925 m!1188409))

(assert (=> bm!65881 m!1187981))

(assert (=> b!995724 d!290925))

(declare-fun b!996410 () Bool)

(declare-fun res!450082 () Bool)

(declare-fun e!639139 () Bool)

(assert (=> b!996410 (=> res!450082 e!639139)))

(assert (=> b!996410 (= res!450082 (not ((_ is Concat!4588) r!15766)))))

(declare-fun e!639136 () Bool)

(assert (=> b!996410 (= e!639136 e!639139)))

(declare-fun b!996411 () Bool)

(declare-fun e!639133 () Bool)

(declare-fun call!65889 () Bool)

(assert (=> b!996411 (= e!639133 call!65889)))

(declare-fun b!996412 () Bool)

(assert (=> b!996412 (= e!639139 e!639133)))

(declare-fun res!450084 () Bool)

(assert (=> b!996412 (=> (not res!450084) (not e!639133))))

(declare-fun call!65888 () Bool)

(assert (=> b!996412 (= res!450084 call!65888)))

(declare-fun d!290927 () Bool)

(declare-fun res!450085 () Bool)

(declare-fun e!639137 () Bool)

(assert (=> d!290927 (=> res!450085 e!639137)))

(assert (=> d!290927 (= res!450085 ((_ is ElementMatch!2755) r!15766))))

(assert (=> d!290927 (= (validRegex!1224 r!15766) e!639137)))

(declare-fun b!996413 () Bool)

(declare-fun e!639134 () Bool)

(assert (=> b!996413 (= e!639134 call!65889)))

(declare-fun b!996414 () Bool)

(declare-fun e!639135 () Bool)

(declare-fun call!65887 () Bool)

(assert (=> b!996414 (= e!639135 call!65887)))

(declare-fun c!163938 () Bool)

(declare-fun bm!65882 () Bool)

(declare-fun c!163937 () Bool)

(assert (=> bm!65882 (= call!65887 (validRegex!1224 (ite c!163937 (reg!3084 r!15766) (ite c!163938 (regOne!6023 r!15766) (regOne!6022 r!15766)))))))

(declare-fun bm!65883 () Bool)

(assert (=> bm!65883 (= call!65889 (validRegex!1224 (ite c!163938 (regTwo!6023 r!15766) (regTwo!6022 r!15766))))))

(declare-fun b!996415 () Bool)

(declare-fun e!639138 () Bool)

(assert (=> b!996415 (= e!639138 e!639135)))

(declare-fun res!450086 () Bool)

(assert (=> b!996415 (= res!450086 (not (nullable!871 (reg!3084 r!15766))))))

(assert (=> b!996415 (=> (not res!450086) (not e!639135))))

(declare-fun b!996416 () Bool)

(declare-fun res!450083 () Bool)

(assert (=> b!996416 (=> (not res!450083) (not e!639134))))

(assert (=> b!996416 (= res!450083 call!65888)))

(assert (=> b!996416 (= e!639136 e!639134)))

(declare-fun b!996417 () Bool)

(assert (=> b!996417 (= e!639137 e!639138)))

(assert (=> b!996417 (= c!163937 ((_ is Star!2755) r!15766))))

(declare-fun b!996418 () Bool)

(assert (=> b!996418 (= e!639138 e!639136)))

(assert (=> b!996418 (= c!163938 ((_ is Union!2755) r!15766))))

(declare-fun bm!65884 () Bool)

(assert (=> bm!65884 (= call!65888 call!65887)))

(assert (= (and d!290927 (not res!450085)) b!996417))

(assert (= (and b!996417 c!163937) b!996415))

(assert (= (and b!996417 (not c!163937)) b!996418))

(assert (= (and b!996415 res!450086) b!996414))

(assert (= (and b!996418 c!163938) b!996416))

(assert (= (and b!996418 (not c!163938)) b!996410))

(assert (= (and b!996416 res!450083) b!996413))

(assert (= (and b!996410 (not res!450082)) b!996412))

(assert (= (and b!996412 res!450084) b!996411))

(assert (= (or b!996413 b!996411) bm!65883))

(assert (= (or b!996416 b!996412) bm!65884))

(assert (= (or b!996414 bm!65884) bm!65882))

(declare-fun m!1188411 () Bool)

(assert (=> bm!65882 m!1188411))

(declare-fun m!1188413 () Bool)

(assert (=> bm!65883 m!1188413))

(declare-fun m!1188415 () Bool)

(assert (=> b!996415 m!1188415))

(assert (=> start!87590 d!290927))

(declare-fun b!996432 () Bool)

(declare-fun e!639142 () Bool)

(declare-fun tp!303973 () Bool)

(declare-fun tp!303972 () Bool)

(assert (=> b!996432 (= e!639142 (and tp!303973 tp!303972))))

(declare-fun b!996429 () Bool)

(assert (=> b!996429 (= e!639142 tp_is_empty!5153)))

(declare-fun b!996430 () Bool)

(declare-fun tp!303971 () Bool)

(declare-fun tp!303969 () Bool)

(assert (=> b!996430 (= e!639142 (and tp!303971 tp!303969))))

(declare-fun b!996431 () Bool)

(declare-fun tp!303970 () Bool)

(assert (=> b!996431 (= e!639142 tp!303970)))

(assert (=> b!995732 (= tp!303917 e!639142)))

(assert (= (and b!995732 ((_ is ElementMatch!2755) (reg!3084 r!15766))) b!996429))

(assert (= (and b!995732 ((_ is Concat!4588) (reg!3084 r!15766))) b!996430))

(assert (= (and b!995732 ((_ is Star!2755) (reg!3084 r!15766))) b!996431))

(assert (= (and b!995732 ((_ is Union!2755) (reg!3084 r!15766))) b!996432))

(declare-fun b!996436 () Bool)

(declare-fun e!639143 () Bool)

(declare-fun tp!303978 () Bool)

(declare-fun tp!303977 () Bool)

(assert (=> b!996436 (= e!639143 (and tp!303978 tp!303977))))

(declare-fun b!996433 () Bool)

(assert (=> b!996433 (= e!639143 tp_is_empty!5153)))

(declare-fun b!996434 () Bool)

(declare-fun tp!303976 () Bool)

(declare-fun tp!303974 () Bool)

(assert (=> b!996434 (= e!639143 (and tp!303976 tp!303974))))

(declare-fun b!996435 () Bool)

(declare-fun tp!303975 () Bool)

(assert (=> b!996435 (= e!639143 tp!303975)))

(assert (=> b!995726 (= tp!303919 e!639143)))

(assert (= (and b!995726 ((_ is ElementMatch!2755) (regOne!6022 r!15766))) b!996433))

(assert (= (and b!995726 ((_ is Concat!4588) (regOne!6022 r!15766))) b!996434))

(assert (= (and b!995726 ((_ is Star!2755) (regOne!6022 r!15766))) b!996435))

(assert (= (and b!995726 ((_ is Union!2755) (regOne!6022 r!15766))) b!996436))

(declare-fun b!996440 () Bool)

(declare-fun e!639144 () Bool)

(declare-fun tp!303983 () Bool)

(declare-fun tp!303982 () Bool)

(assert (=> b!996440 (= e!639144 (and tp!303983 tp!303982))))

(declare-fun b!996437 () Bool)

(assert (=> b!996437 (= e!639144 tp_is_empty!5153)))

(declare-fun b!996438 () Bool)

(declare-fun tp!303981 () Bool)

(declare-fun tp!303979 () Bool)

(assert (=> b!996438 (= e!639144 (and tp!303981 tp!303979))))

(declare-fun b!996439 () Bool)

(declare-fun tp!303980 () Bool)

(assert (=> b!996439 (= e!639144 tp!303980)))

(assert (=> b!995726 (= tp!303918 e!639144)))

(assert (= (and b!995726 ((_ is ElementMatch!2755) (regTwo!6022 r!15766))) b!996437))

(assert (= (and b!995726 ((_ is Concat!4588) (regTwo!6022 r!15766))) b!996438))

(assert (= (and b!995726 ((_ is Star!2755) (regTwo!6022 r!15766))) b!996439))

(assert (= (and b!995726 ((_ is Union!2755) (regTwo!6022 r!15766))) b!996440))

(declare-fun b!996444 () Bool)

(declare-fun e!639145 () Bool)

(declare-fun tp!303988 () Bool)

(declare-fun tp!303987 () Bool)

(assert (=> b!996444 (= e!639145 (and tp!303988 tp!303987))))

(declare-fun b!996441 () Bool)

(assert (=> b!996441 (= e!639145 tp_is_empty!5153)))

(declare-fun b!996442 () Bool)

(declare-fun tp!303986 () Bool)

(declare-fun tp!303984 () Bool)

(assert (=> b!996442 (= e!639145 (and tp!303986 tp!303984))))

(declare-fun b!996443 () Bool)

(declare-fun tp!303985 () Bool)

(assert (=> b!996443 (= e!639145 tp!303985)))

(assert (=> b!995729 (= tp!303916 e!639145)))

(assert (= (and b!995729 ((_ is ElementMatch!2755) (regOne!6023 r!15766))) b!996441))

(assert (= (and b!995729 ((_ is Concat!4588) (regOne!6023 r!15766))) b!996442))

(assert (= (and b!995729 ((_ is Star!2755) (regOne!6023 r!15766))) b!996443))

(assert (= (and b!995729 ((_ is Union!2755) (regOne!6023 r!15766))) b!996444))

(declare-fun b!996448 () Bool)

(declare-fun e!639146 () Bool)

(declare-fun tp!303993 () Bool)

(declare-fun tp!303992 () Bool)

(assert (=> b!996448 (= e!639146 (and tp!303993 tp!303992))))

(declare-fun b!996445 () Bool)

(assert (=> b!996445 (= e!639146 tp_is_empty!5153)))

(declare-fun b!996446 () Bool)

(declare-fun tp!303991 () Bool)

(declare-fun tp!303989 () Bool)

(assert (=> b!996446 (= e!639146 (and tp!303991 tp!303989))))

(declare-fun b!996447 () Bool)

(declare-fun tp!303990 () Bool)

(assert (=> b!996447 (= e!639146 tp!303990)))

(assert (=> b!995729 (= tp!303915 e!639146)))

(assert (= (and b!995729 ((_ is ElementMatch!2755) (regTwo!6023 r!15766))) b!996445))

(assert (= (and b!995729 ((_ is Concat!4588) (regTwo!6023 r!15766))) b!996446))

(assert (= (and b!995729 ((_ is Star!2755) (regTwo!6023 r!15766))) b!996447))

(assert (= (and b!995729 ((_ is Union!2755) (regTwo!6023 r!15766))) b!996448))

(declare-fun b!996453 () Bool)

(declare-fun e!639149 () Bool)

(declare-fun tp!303996 () Bool)

(assert (=> b!996453 (= e!639149 (and tp_is_empty!5153 tp!303996))))

(assert (=> b!995723 (= tp!303920 e!639149)))

(assert (= (and b!995723 ((_ is Cons!9969) (t!101031 s!10566))) b!996453))

(check-sat (not b!996436) (not b!996406) (not b!996128) (not b!996131) (not bm!65880) (not b!996335) (not b!996377) (not b!996343) (not b!995925) (not d!290921) (not d!290913) (not d!290823) (not b!996338) (not bm!65871) tp_is_empty!5153 (not bm!65856) (not bm!65873) (not b!995919) (not d!290857) (not d!290917) (not b!996287) (not b!996324) (not b!996446) (not bm!65855) (not b!996133) (not b!996358) (not b!996393) (not d!290903) (not d!290911) (not bm!65869) (not bm!65881) (not b!996318) (not b!996320) (not b!996337) (not b!996087) (not b!995917) (not b!996435) (not b!996316) (not b!996374) (not b!996394) (not bm!65868) (not b!996365) (not d!290925) (not b!996100) (not b!996431) (not d!290901) (not b!996340) (not d!290905) (not b!996415) (not b!996380) (not d!290897) (not bm!65849) (not b!996269) (not b!996448) (not b!996444) (not bm!65882) (not b!996288) (not b!996275) (not bm!65872) (not b!996404) (not b!996352) (not b!996321) (not bm!65879) (not b!996102) (not b!996443) (not d!290825) (not b!996130) (not b!996096) (not b!996438) (not bm!65876) (not d!290919) (not bm!65800) (not d!290869) (not b!996453) (not b!996400) (not b!996341) (not d!290873) (not d!290909) (not b!996134) (not d!290867) (not b!996375) (not bm!65826) (not b!995923) (not b!996290) (not b!996378) (not b!996434) (not b!996430) (not bm!65883) (not bm!65870) (not b!996094) (not b!996285) (not b!996432) (not b!995920) (not d!290895) (not bm!65827) (not b!996398) (not b!996439) (not b!996282) (not b!996372) (not d!290923) (not b!996442) (not b!996099) (not bm!65846) (not b!996440) (not b!996097) (not d!290907) (not b!996403) (not bm!65852) (not d!290875) (not b!996008) (not b!996121) (not b!995922) (not b!996136) (not b!996401) (not b!996319) (not b!996447) (not bm!65850) (not b!996284))
(check-sat)
