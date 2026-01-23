; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91226 () Bool)

(assert start!91226)

(declare-fun b!1061815 () Bool)

(declare-fun e!673783 () Bool)

(declare-fun e!673778 () Bool)

(assert (=> b!1061815 (= e!673783 (not e!673778))))

(declare-fun res!474473 () Bool)

(assert (=> b!1061815 (=> res!474473 e!673778)))

(declare-fun lt!359951 () Bool)

(declare-datatypes ((C!6412 0))(
  ( (C!6413 (val!3454 Int)) )
))
(declare-datatypes ((Regex!2921 0))(
  ( (ElementMatch!2921 (c!177992 C!6412)) (Concat!4754 (regOne!6354 Regex!2921) (regTwo!6354 Regex!2921)) (EmptyExpr!2921) (Star!2921 (reg!3250 Regex!2921)) (EmptyLang!2921) (Union!2921 (regOne!6355 Regex!2921) (regTwo!6355 Regex!2921)) )
))
(declare-fun r!15766 () Regex!2921)

(get-info :version)

(assert (=> b!1061815 (= res!474473 (or lt!359951 (and ((_ is Concat!4754) r!15766) ((_ is EmptyExpr!2921) (regOne!6354 r!15766))) (and ((_ is Concat!4754) r!15766) ((_ is EmptyExpr!2921) (regTwo!6354 r!15766))) ((_ is Concat!4754) r!15766) (not ((_ is Union!2921) r!15766))))))

(declare-datatypes ((List!10151 0))(
  ( (Nil!10135) (Cons!10135 (h!15536 C!6412) (t!101197 List!10151)) )
))
(declare-fun s!10566 () List!10151)

(declare-fun matchRSpec!720 (Regex!2921 List!10151) Bool)

(assert (=> b!1061815 (= lt!359951 (matchRSpec!720 r!15766 s!10566))))

(declare-fun matchR!1457 (Regex!2921 List!10151) Bool)

(assert (=> b!1061815 (= lt!359951 (matchR!1457 r!15766 s!10566))))

(declare-datatypes ((Unit!15517 0))(
  ( (Unit!15518) )
))
(declare-fun lt!359954 () Unit!15517)

(declare-fun mainMatchTheorem!720 (Regex!2921 List!10151) Unit!15517)

(assert (=> b!1061815 (= lt!359954 (mainMatchTheorem!720 r!15766 s!10566))))

(declare-fun b!1061816 () Bool)

(declare-fun e!673780 () Bool)

(declare-fun tp!318897 () Bool)

(declare-fun tp!318898 () Bool)

(assert (=> b!1061816 (= e!673780 (and tp!318897 tp!318898))))

(declare-fun b!1061817 () Bool)

(declare-fun e!673782 () Bool)

(assert (=> b!1061817 (= e!673778 e!673782)))

(declare-fun res!474471 () Bool)

(assert (=> b!1061817 (=> res!474471 e!673782)))

(declare-fun lt!359956 () Regex!2921)

(assert (=> b!1061817 (= res!474471 (not (matchR!1457 lt!359956 s!10566)))))

(declare-fun lt!359947 () Regex!2921)

(declare-fun lt!359955 () Regex!2921)

(assert (=> b!1061817 (= lt!359956 (Union!2921 lt!359947 lt!359955))))

(declare-fun removeUselessConcat!470 (Regex!2921) Regex!2921)

(assert (=> b!1061817 (= lt!359955 (removeUselessConcat!470 (regTwo!6355 r!15766)))))

(assert (=> b!1061817 (= lt!359947 (removeUselessConcat!470 (regOne!6355 r!15766)))))

(declare-fun bm!76399 () Bool)

(declare-fun call!76407 () Unit!15517)

(declare-fun c!177991 () Bool)

(declare-fun lemmaRemoveUselessConcatSound!280 (Regex!2921 List!10151) Unit!15517)

(assert (=> bm!76399 (= call!76407 (lemmaRemoveUselessConcatSound!280 (ite c!177991 (regOne!6355 r!15766) (regTwo!6355 r!15766)) s!10566))))

(declare-fun b!1061818 () Bool)

(declare-fun e!673781 () Bool)

(declare-fun tp_is_empty!5485 () Bool)

(declare-fun tp!318896 () Bool)

(assert (=> b!1061818 (= e!673781 (and tp_is_empty!5485 tp!318896))))

(declare-fun b!1061819 () Bool)

(declare-fun e!673777 () Unit!15517)

(declare-fun lt!359949 () Unit!15517)

(assert (=> b!1061819 (= e!673777 lt!359949)))

(declare-fun lt!359946 () Unit!15517)

(assert (=> b!1061819 (= lt!359946 call!76407)))

(declare-fun call!76404 () Bool)

(assert (=> b!1061819 (= call!76404 (matchR!1457 lt!359955 s!10566))))

(declare-fun lt!359950 () Unit!15517)

(declare-fun call!76406 () Unit!15517)

(assert (=> b!1061819 (= lt!359950 call!76406)))

(declare-fun call!76405 () Bool)

(assert (=> b!1061819 call!76405))

(declare-fun lemmaReversedUnionAcceptsSameString!10 (Regex!2921 Regex!2921 List!10151) Unit!15517)

(assert (=> b!1061819 (= lt!359949 (lemmaReversedUnionAcceptsSameString!10 (regTwo!6355 r!15766) (regOne!6355 r!15766) s!10566))))

(assert (=> b!1061819 (matchR!1457 (Union!2921 (regOne!6355 r!15766) (regTwo!6355 r!15766)) s!10566)))

(declare-fun b!1061820 () Bool)

(declare-fun e!673779 () Bool)

(assert (=> b!1061820 (= e!673779 (matchR!1457 lt!359955 s!10566))))

(declare-fun bm!76400 () Bool)

(assert (=> bm!76400 (= call!76404 (matchR!1457 (ite c!177991 (regOne!6355 r!15766) (regTwo!6355 r!15766)) s!10566))))

(declare-fun b!1061821 () Bool)

(assert (=> b!1061821 (= e!673782 false)))

(declare-fun lt!359957 () Unit!15517)

(assert (=> b!1061821 (= lt!359957 e!673777)))

(declare-fun lt!359945 () Bool)

(assert (=> b!1061821 (= c!177991 lt!359945)))

(assert (=> b!1061821 e!673779))

(declare-fun res!474472 () Bool)

(assert (=> b!1061821 (=> res!474472 e!673779)))

(assert (=> b!1061821 (= res!474472 lt!359945)))

(assert (=> b!1061821 (= lt!359945 (matchR!1457 lt!359947 s!10566))))

(declare-fun lt!359948 () Unit!15517)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!100 (Regex!2921 Regex!2921 List!10151) Unit!15517)

(assert (=> b!1061821 (= lt!359948 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!100 lt!359947 lt!359955 s!10566))))

(assert (=> b!1061821 (matchRSpec!720 lt!359956 s!10566)))

(declare-fun lt!359952 () Unit!15517)

(assert (=> b!1061821 (= lt!359952 (mainMatchTheorem!720 lt!359956 s!10566))))

(declare-fun bm!76401 () Bool)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!28 (Regex!2921 Regex!2921 List!10151) Unit!15517)

(assert (=> bm!76401 (= call!76406 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!28 (ite c!177991 (regOne!6355 r!15766) (regTwo!6355 r!15766)) (ite c!177991 (regTwo!6355 r!15766) (regOne!6355 r!15766)) s!10566))))

(declare-fun b!1061822 () Bool)

(declare-fun tp!318899 () Bool)

(declare-fun tp!318900 () Bool)

(assert (=> b!1061822 (= e!673780 (and tp!318899 tp!318900))))

(declare-fun bm!76402 () Bool)

(assert (=> bm!76402 (= call!76405 (matchR!1457 (ite c!177991 (Union!2921 (regOne!6355 r!15766) (regTwo!6355 r!15766)) (Union!2921 (regTwo!6355 r!15766) (regOne!6355 r!15766))) s!10566))))

(declare-fun b!1061824 () Bool)

(declare-fun tp!318895 () Bool)

(assert (=> b!1061824 (= e!673780 tp!318895)))

(declare-fun b!1061825 () Bool)

(declare-fun lt!359953 () Unit!15517)

(assert (=> b!1061825 (= e!673777 lt!359953)))

(declare-fun lt!359944 () Unit!15517)

(assert (=> b!1061825 (= lt!359944 call!76407)))

(assert (=> b!1061825 call!76404))

(assert (=> b!1061825 (= lt!359953 call!76406)))

(assert (=> b!1061825 call!76405))

(declare-fun res!474474 () Bool)

(assert (=> start!91226 (=> (not res!474474) (not e!673783))))

(declare-fun validRegex!1390 (Regex!2921) Bool)

(assert (=> start!91226 (= res!474474 (validRegex!1390 r!15766))))

(assert (=> start!91226 e!673783))

(assert (=> start!91226 e!673780))

(assert (=> start!91226 e!673781))

(declare-fun b!1061823 () Bool)

(assert (=> b!1061823 (= e!673780 tp_is_empty!5485)))

(assert (= (and start!91226 res!474474) b!1061815))

(assert (= (and b!1061815 (not res!474473)) b!1061817))

(assert (= (and b!1061817 (not res!474471)) b!1061821))

(assert (= (and b!1061821 (not res!474472)) b!1061820))

(assert (= (and b!1061821 c!177991) b!1061825))

(assert (= (and b!1061821 (not c!177991)) b!1061819))

(assert (= (or b!1061825 b!1061819) bm!76399))

(assert (= (or b!1061825 b!1061819) bm!76401))

(assert (= (or b!1061825 b!1061819) bm!76400))

(assert (= (or b!1061825 b!1061819) bm!76402))

(assert (= (and start!91226 ((_ is ElementMatch!2921) r!15766)) b!1061823))

(assert (= (and start!91226 ((_ is Concat!4754) r!15766)) b!1061822))

(assert (= (and start!91226 ((_ is Star!2921) r!15766)) b!1061824))

(assert (= (and start!91226 ((_ is Union!2921) r!15766)) b!1061816))

(assert (= (and start!91226 ((_ is Cons!10135) s!10566)) b!1061818))

(declare-fun m!1221383 () Bool)

(assert (=> start!91226 m!1221383))

(declare-fun m!1221385 () Bool)

(assert (=> b!1061820 m!1221385))

(declare-fun m!1221387 () Bool)

(assert (=> b!1061815 m!1221387))

(declare-fun m!1221389 () Bool)

(assert (=> b!1061815 m!1221389))

(declare-fun m!1221391 () Bool)

(assert (=> b!1061815 m!1221391))

(declare-fun m!1221393 () Bool)

(assert (=> b!1061817 m!1221393))

(declare-fun m!1221395 () Bool)

(assert (=> b!1061817 m!1221395))

(declare-fun m!1221397 () Bool)

(assert (=> b!1061817 m!1221397))

(declare-fun m!1221399 () Bool)

(assert (=> bm!76402 m!1221399))

(declare-fun m!1221401 () Bool)

(assert (=> bm!76401 m!1221401))

(declare-fun m!1221403 () Bool)

(assert (=> bm!76400 m!1221403))

(assert (=> b!1061819 m!1221385))

(declare-fun m!1221405 () Bool)

(assert (=> b!1061819 m!1221405))

(declare-fun m!1221407 () Bool)

(assert (=> b!1061819 m!1221407))

(declare-fun m!1221409 () Bool)

(assert (=> b!1061821 m!1221409))

(declare-fun m!1221411 () Bool)

(assert (=> b!1061821 m!1221411))

(declare-fun m!1221413 () Bool)

(assert (=> b!1061821 m!1221413))

(declare-fun m!1221415 () Bool)

(assert (=> b!1061821 m!1221415))

(declare-fun m!1221417 () Bool)

(assert (=> bm!76399 m!1221417))

(check-sat tp_is_empty!5485 (not bm!76400) (not b!1061819) (not b!1061816) (not b!1061817) (not b!1061820) (not start!91226) (not bm!76401) (not b!1061822) (not bm!76399) (not b!1061815) (not b!1061821) (not b!1061824) (not bm!76402) (not b!1061818))
(check-sat)
