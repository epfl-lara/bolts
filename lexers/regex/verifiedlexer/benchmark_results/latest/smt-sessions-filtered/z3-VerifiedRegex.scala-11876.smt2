; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!666922 () Bool)

(assert start!666922)

(declare-fun b!6947531 () Bool)

(assert (=> b!6947531 true))

(assert (=> b!6947531 true))

(declare-fun res!2834294 () Bool)

(declare-fun e!4178770 () Bool)

(assert (=> b!6947531 (=> (not res!2834294) (not e!4178770))))

(declare-fun lambda!396164 () Int)

(declare-fun Exists!3995 (Int) Bool)

(assert (=> b!6947531 (= res!2834294 (Exists!3995 lambda!396164))))

(declare-fun b!6947532 () Bool)

(declare-fun e!4178769 () Bool)

(declare-datatypes ((C!34268 0))(
  ( (C!34269 (val!26836 Int)) )
))
(declare-datatypes ((Regex!16999 0))(
  ( (ElementMatch!16999 (c!1288855 C!34268)) (Concat!25844 (regOne!34510 Regex!16999) (regTwo!34510 Regex!16999)) (EmptyExpr!16999) (Star!16999 (reg!17328 Regex!16999)) (EmptyLang!16999) (Union!16999 (regOne!34511 Regex!16999) (regTwo!34511 Regex!16999)) )
))
(declare-fun lt!2477550 () Regex!16999)

(declare-fun validRegex!8705 (Regex!16999) Bool)

(assert (=> b!6947532 (= e!4178769 (validRegex!8705 lt!2477550))))

(declare-fun b!6947533 () Bool)

(declare-fun e!4178764 () Bool)

(declare-fun tp_is_empty!43223 () Bool)

(declare-fun tp!1915158 () Bool)

(assert (=> b!6947533 (= e!4178764 (and tp_is_empty!43223 tp!1915158))))

(declare-fun b!6947534 () Bool)

(declare-fun res!2834295 () Bool)

(assert (=> b!6947534 (=> res!2834295 e!4178769)))

(declare-datatypes ((List!66752 0))(
  ( (Nil!66628) (Cons!66628 (h!73076 C!34268) (t!380495 List!66752)) )
))
(declare-datatypes ((tuple2!67708 0))(
  ( (tuple2!67709 (_1!37157 List!66752) (_2!37157 List!66752)) )
))
(declare-fun cut!46 () tuple2!67708)

(declare-fun isEmpty!38890 (List!66752) Bool)

(assert (=> b!6947534 (= res!2834295 (isEmpty!38890 (_1!37157 cut!46)))))

(declare-fun b!6947535 () Bool)

(declare-fun e!4178765 () Bool)

(declare-fun tp!1915159 () Bool)

(declare-fun tp!1915165 () Bool)

(assert (=> b!6947535 (= e!4178765 (and tp!1915159 tp!1915165))))

(declare-fun b!6947536 () Bool)

(declare-fun res!2834296 () Bool)

(assert (=> b!6947536 (=> res!2834296 e!4178769)))

(declare-fun s!10388 () List!66752)

(declare-fun ++!15036 (List!66752 List!66752) List!66752)

(assert (=> b!6947536 (= res!2834296 (not (= (++!15036 (_1!37157 cut!46) (_2!37157 cut!46)) s!10388)))))

(declare-fun b!6947537 () Bool)

(declare-fun e!4178768 () Bool)

(assert (=> b!6947537 (= e!4178770 e!4178768)))

(declare-fun res!2834293 () Bool)

(assert (=> b!6947537 (=> (not res!2834293) (not e!4178768))))

(declare-fun lt!2477553 () tuple2!67708)

(assert (=> b!6947537 (= res!2834293 (= (++!15036 (_1!37157 lt!2477553) (_2!37157 lt!2477553)) s!10388))))

(declare-fun pickWitness!344 (Int) tuple2!67708)

(assert (=> b!6947537 (= lt!2477553 (pickWitness!344 lambda!396164))))

(declare-fun b!6947538 () Bool)

(declare-fun tp!1915164 () Bool)

(assert (=> b!6947538 (= e!4178765 tp!1915164)))

(declare-fun res!2834298 () Bool)

(assert (=> start!666922 (=> (not res!2834298) (not e!4178770))))

(declare-fun rInner!765 () Regex!16999)

(assert (=> start!666922 (= res!2834298 (validRegex!8705 rInner!765))))

(assert (=> start!666922 e!4178770))

(assert (=> start!666922 e!4178765))

(declare-fun e!4178766 () Bool)

(assert (=> start!666922 e!4178766))

(declare-fun e!4178767 () Bool)

(assert (=> start!666922 (and e!4178767 e!4178764)))

(declare-fun b!6947539 () Bool)

(declare-fun res!2834297 () Bool)

(assert (=> b!6947539 (=> (not res!2834297) (not e!4178770))))

(declare-fun nullable!6812 (Regex!16999) Bool)

(assert (=> b!6947539 (= res!2834297 (not (nullable!6812 rInner!765)))))

(declare-fun b!6947540 () Bool)

(assert (=> b!6947540 (= e!4178765 tp_is_empty!43223)))

(declare-fun b!6947541 () Bool)

(declare-fun tp!1915162 () Bool)

(assert (=> b!6947541 (= e!4178766 (and tp_is_empty!43223 tp!1915162))))

(declare-fun b!6947542 () Bool)

(declare-fun res!2834299 () Bool)

(assert (=> b!6947542 (=> res!2834299 e!4178769)))

(declare-fun matchRSpec!4044 (Regex!16999 List!66752) Bool)

(assert (=> b!6947542 (= res!2834299 (not (matchRSpec!4044 rInner!765 (_1!37157 cut!46))))))

(declare-fun b!6947543 () Bool)

(declare-fun tp!1915163 () Bool)

(assert (=> b!6947543 (= e!4178767 (and tp_is_empty!43223 tp!1915163))))

(declare-fun b!6947544 () Bool)

(declare-fun tp!1915161 () Bool)

(declare-fun tp!1915160 () Bool)

(assert (=> b!6947544 (= e!4178765 (and tp!1915161 tp!1915160))))

(declare-fun b!6947545 () Bool)

(assert (=> b!6947545 (= e!4178768 (not e!4178769))))

(declare-fun res!2834300 () Bool)

(assert (=> b!6947545 (=> res!2834300 e!4178769)))

(declare-fun lt!2477552 () Bool)

(declare-fun lt!2477554 () Bool)

(assert (=> b!6947545 (= res!2834300 (or (not lt!2477552) (not lt!2477554)))))

(assert (=> b!6947545 (= lt!2477554 (matchRSpec!4044 lt!2477550 (_2!37157 lt!2477553)))))

(declare-fun matchR!9130 (Regex!16999 List!66752) Bool)

(assert (=> b!6947545 (= lt!2477554 (matchR!9130 lt!2477550 (_2!37157 lt!2477553)))))

(declare-datatypes ((Unit!160718 0))(
  ( (Unit!160719) )
))
(declare-fun lt!2477551 () Unit!160718)

(declare-fun mainMatchTheorem!4044 (Regex!16999 List!66752) Unit!160718)

(assert (=> b!6947545 (= lt!2477551 (mainMatchTheorem!4044 lt!2477550 (_2!37157 lt!2477553)))))

(assert (=> b!6947545 (= lt!2477550 (Star!16999 rInner!765))))

(assert (=> b!6947545 (= lt!2477552 (matchRSpec!4044 rInner!765 (_1!37157 lt!2477553)))))

(assert (=> b!6947545 (= lt!2477552 (matchR!9130 rInner!765 (_1!37157 lt!2477553)))))

(declare-fun lt!2477555 () Unit!160718)

(assert (=> b!6947545 (= lt!2477555 (mainMatchTheorem!4044 rInner!765 (_1!37157 lt!2477553)))))

(assert (= (and start!666922 res!2834298) b!6947539))

(assert (= (and b!6947539 res!2834297) b!6947531))

(assert (= (and b!6947531 res!2834294) b!6947537))

(assert (= (and b!6947537 res!2834293) b!6947545))

(assert (= (and b!6947545 (not res!2834300)) b!6947536))

(assert (= (and b!6947536 (not res!2834296)) b!6947534))

(assert (= (and b!6947534 (not res!2834295)) b!6947542))

(assert (= (and b!6947542 (not res!2834299)) b!6947532))

(get-info :version)

(assert (= (and start!666922 ((_ is ElementMatch!16999) rInner!765)) b!6947540))

(assert (= (and start!666922 ((_ is Concat!25844) rInner!765)) b!6947535))

(assert (= (and start!666922 ((_ is Star!16999) rInner!765)) b!6947538))

(assert (= (and start!666922 ((_ is Union!16999) rInner!765)) b!6947544))

(assert (= (and start!666922 ((_ is Cons!66628) s!10388)) b!6947541))

(assert (= (and start!666922 ((_ is Cons!66628) (_1!37157 cut!46))) b!6947543))

(assert (= (and start!666922 ((_ is Cons!66628) (_2!37157 cut!46))) b!6947533))

(declare-fun m!7650922 () Bool)

(assert (=> b!6947531 m!7650922))

(declare-fun m!7650924 () Bool)

(assert (=> b!6947542 m!7650924))

(declare-fun m!7650926 () Bool)

(assert (=> start!666922 m!7650926))

(declare-fun m!7650928 () Bool)

(assert (=> b!6947534 m!7650928))

(declare-fun m!7650930 () Bool)

(assert (=> b!6947545 m!7650930))

(declare-fun m!7650932 () Bool)

(assert (=> b!6947545 m!7650932))

(declare-fun m!7650934 () Bool)

(assert (=> b!6947545 m!7650934))

(declare-fun m!7650936 () Bool)

(assert (=> b!6947545 m!7650936))

(declare-fun m!7650938 () Bool)

(assert (=> b!6947545 m!7650938))

(declare-fun m!7650940 () Bool)

(assert (=> b!6947545 m!7650940))

(declare-fun m!7650942 () Bool)

(assert (=> b!6947539 m!7650942))

(declare-fun m!7650944 () Bool)

(assert (=> b!6947532 m!7650944))

(declare-fun m!7650946 () Bool)

(assert (=> b!6947537 m!7650946))

(declare-fun m!7650948 () Bool)

(assert (=> b!6947537 m!7650948))

(declare-fun m!7650950 () Bool)

(assert (=> b!6947536 m!7650950))

(check-sat (not b!6947538) (not b!6947533) (not b!6947543) (not b!6947531) (not b!6947532) (not b!6947539) (not start!666922) (not b!6947542) tp_is_empty!43223 (not b!6947534) (not b!6947536) (not b!6947535) (not b!6947541) (not b!6947537) (not b!6947545) (not b!6947544))
(check-sat)
(get-model)

(declare-fun b!6947590 () Bool)

(declare-fun e!4178791 () Bool)

(declare-fun lt!2477561 () Bool)

(declare-fun call!631036 () Bool)

(assert (=> b!6947590 (= e!4178791 (= lt!2477561 call!631036))))

(declare-fun b!6947591 () Bool)

(declare-fun e!4178793 () Bool)

(declare-fun derivativeStep!5471 (Regex!16999 C!34268) Regex!16999)

(declare-fun head!13924 (List!66752) C!34268)

(declare-fun tail!12976 (List!66752) List!66752)

(assert (=> b!6947591 (= e!4178793 (matchR!9130 (derivativeStep!5471 rInner!765 (head!13924 (_1!37157 lt!2477553))) (tail!12976 (_1!37157 lt!2477553))))))

(declare-fun b!6947592 () Bool)

(declare-fun e!4178795 () Bool)

(assert (=> b!6947592 (= e!4178795 (not lt!2477561))))

(declare-fun b!6947593 () Bool)

(declare-fun e!4178792 () Bool)

(assert (=> b!6947593 (= e!4178792 (= (head!13924 (_1!37157 lt!2477553)) (c!1288855 rInner!765)))))

(declare-fun b!6947594 () Bool)

(declare-fun res!2834324 () Bool)

(declare-fun e!4178796 () Bool)

(assert (=> b!6947594 (=> res!2834324 e!4178796)))

(assert (=> b!6947594 (= res!2834324 e!4178792)))

(declare-fun res!2834327 () Bool)

(assert (=> b!6947594 (=> (not res!2834327) (not e!4178792))))

(assert (=> b!6947594 (= res!2834327 lt!2477561)))

(declare-fun bm!631031 () Bool)

(assert (=> bm!631031 (= call!631036 (isEmpty!38890 (_1!37157 lt!2477553)))))

(declare-fun b!6947595 () Bool)

(declare-fun e!4178794 () Bool)

(declare-fun e!4178797 () Bool)

(assert (=> b!6947595 (= e!4178794 e!4178797)))

(declare-fun res!2834326 () Bool)

(assert (=> b!6947595 (=> res!2834326 e!4178797)))

(assert (=> b!6947595 (= res!2834326 call!631036)))

(declare-fun b!6947596 () Bool)

(assert (=> b!6947596 (= e!4178791 e!4178795)))

(declare-fun c!1288867 () Bool)

(assert (=> b!6947596 (= c!1288867 ((_ is EmptyLang!16999) rInner!765))))

(declare-fun b!6947598 () Bool)

(assert (=> b!6947598 (= e!4178797 (not (= (head!13924 (_1!37157 lt!2477553)) (c!1288855 rInner!765))))))

(declare-fun b!6947599 () Bool)

(assert (=> b!6947599 (= e!4178796 e!4178794)))

(declare-fun res!2834329 () Bool)

(assert (=> b!6947599 (=> (not res!2834329) (not e!4178794))))

(assert (=> b!6947599 (= res!2834329 (not lt!2477561))))

(declare-fun b!6947600 () Bool)

(declare-fun res!2834330 () Bool)

(assert (=> b!6947600 (=> (not res!2834330) (not e!4178792))))

(assert (=> b!6947600 (= res!2834330 (isEmpty!38890 (tail!12976 (_1!37157 lt!2477553))))))

(declare-fun b!6947601 () Bool)

(assert (=> b!6947601 (= e!4178793 (nullable!6812 rInner!765))))

(declare-fun b!6947602 () Bool)

(declare-fun res!2834325 () Bool)

(assert (=> b!6947602 (=> res!2834325 e!4178796)))

(assert (=> b!6947602 (= res!2834325 (not ((_ is ElementMatch!16999) rInner!765)))))

(assert (=> b!6947602 (= e!4178795 e!4178796)))

(declare-fun b!6947603 () Bool)

(declare-fun res!2834328 () Bool)

(assert (=> b!6947603 (=> res!2834328 e!4178797)))

(assert (=> b!6947603 (= res!2834328 (not (isEmpty!38890 (tail!12976 (_1!37157 lt!2477553)))))))

(declare-fun b!6947597 () Bool)

(declare-fun res!2834323 () Bool)

(assert (=> b!6947597 (=> (not res!2834323) (not e!4178792))))

(assert (=> b!6947597 (= res!2834323 (not call!631036))))

(declare-fun d!2168771 () Bool)

(assert (=> d!2168771 e!4178791))

(declare-fun c!1288866 () Bool)

(assert (=> d!2168771 (= c!1288866 ((_ is EmptyExpr!16999) rInner!765))))

(assert (=> d!2168771 (= lt!2477561 e!4178793)))

(declare-fun c!1288865 () Bool)

(assert (=> d!2168771 (= c!1288865 (isEmpty!38890 (_1!37157 lt!2477553)))))

(assert (=> d!2168771 (validRegex!8705 rInner!765)))

(assert (=> d!2168771 (= (matchR!9130 rInner!765 (_1!37157 lt!2477553)) lt!2477561)))

(assert (= (and d!2168771 c!1288865) b!6947601))

(assert (= (and d!2168771 (not c!1288865)) b!6947591))

(assert (= (and d!2168771 c!1288866) b!6947590))

(assert (= (and d!2168771 (not c!1288866)) b!6947596))

(assert (= (and b!6947596 c!1288867) b!6947592))

(assert (= (and b!6947596 (not c!1288867)) b!6947602))

(assert (= (and b!6947602 (not res!2834325)) b!6947594))

(assert (= (and b!6947594 res!2834327) b!6947597))

(assert (= (and b!6947597 res!2834323) b!6947600))

(assert (= (and b!6947600 res!2834330) b!6947593))

(assert (= (and b!6947594 (not res!2834324)) b!6947599))

(assert (= (and b!6947599 res!2834329) b!6947595))

(assert (= (and b!6947595 (not res!2834326)) b!6947603))

(assert (= (and b!6947603 (not res!2834328)) b!6947598))

(assert (= (or b!6947590 b!6947595 b!6947597) bm!631031))

(declare-fun m!7650968 () Bool)

(assert (=> b!6947591 m!7650968))

(assert (=> b!6947591 m!7650968))

(declare-fun m!7650970 () Bool)

(assert (=> b!6947591 m!7650970))

(declare-fun m!7650972 () Bool)

(assert (=> b!6947591 m!7650972))

(assert (=> b!6947591 m!7650970))

(assert (=> b!6947591 m!7650972))

(declare-fun m!7650974 () Bool)

(assert (=> b!6947591 m!7650974))

(declare-fun m!7650976 () Bool)

(assert (=> bm!631031 m!7650976))

(assert (=> d!2168771 m!7650976))

(assert (=> d!2168771 m!7650926))

(assert (=> b!6947601 m!7650942))

(assert (=> b!6947603 m!7650972))

(assert (=> b!6947603 m!7650972))

(declare-fun m!7650978 () Bool)

(assert (=> b!6947603 m!7650978))

(assert (=> b!6947600 m!7650972))

(assert (=> b!6947600 m!7650972))

(assert (=> b!6947600 m!7650978))

(assert (=> b!6947593 m!7650968))

(assert (=> b!6947598 m!7650968))

(assert (=> b!6947545 d!2168771))

(declare-fun bs!1857447 () Bool)

(declare-fun b!6947665 () Bool)

(assert (= bs!1857447 (and b!6947665 b!6947531)))

(declare-fun lambda!396169 () Int)

(assert (=> bs!1857447 (not (= lambda!396169 lambda!396164))))

(assert (=> b!6947665 true))

(assert (=> b!6947665 true))

(declare-fun bs!1857448 () Bool)

(declare-fun b!6947669 () Bool)

(assert (= bs!1857448 (and b!6947669 b!6947531)))

(declare-fun lambda!396170 () Int)

(assert (=> bs!1857448 (not (= lambda!396170 lambda!396164))))

(declare-fun bs!1857449 () Bool)

(assert (= bs!1857449 (and b!6947669 b!6947665)))

(assert (=> bs!1857449 (not (= lambda!396170 lambda!396169))))

(assert (=> b!6947669 true))

(assert (=> b!6947669 true))

(declare-fun b!6947663 () Bool)

(declare-fun e!4178841 () Bool)

(declare-fun e!4178843 () Bool)

(assert (=> b!6947663 (= e!4178841 e!4178843)))

(declare-fun res!2834362 () Bool)

(assert (=> b!6947663 (= res!2834362 (matchRSpec!4044 (regOne!34511 lt!2477550) (_2!37157 lt!2477553)))))

(assert (=> b!6947663 (=> res!2834362 e!4178843)))

(declare-fun b!6947664 () Bool)

(declare-fun e!4178840 () Bool)

(declare-fun call!631051 () Bool)

(assert (=> b!6947664 (= e!4178840 call!631051)))

(declare-fun e!4178839 () Bool)

(declare-fun call!631050 () Bool)

(assert (=> b!6947665 (= e!4178839 call!631050)))

(declare-fun b!6947666 () Bool)

(declare-fun res!2834364 () Bool)

(assert (=> b!6947666 (=> res!2834364 e!4178839)))

(assert (=> b!6947666 (= res!2834364 call!631051)))

(declare-fun e!4178837 () Bool)

(assert (=> b!6947666 (= e!4178837 e!4178839)))

(declare-fun bm!631045 () Bool)

(assert (=> bm!631045 (= call!631051 (isEmpty!38890 (_2!37157 lt!2477553)))))

(declare-fun b!6947667 () Bool)

(assert (=> b!6947667 (= e!4178843 (matchRSpec!4044 (regTwo!34511 lt!2477550) (_2!37157 lt!2477553)))))

(declare-fun c!1288883 () Bool)

(declare-fun bm!631046 () Bool)

(assert (=> bm!631046 (= call!631050 (Exists!3995 (ite c!1288883 lambda!396169 lambda!396170)))))

(declare-fun d!2168781 () Bool)

(declare-fun c!1288885 () Bool)

(assert (=> d!2168781 (= c!1288885 ((_ is EmptyExpr!16999) lt!2477550))))

(assert (=> d!2168781 (= (matchRSpec!4044 lt!2477550 (_2!37157 lt!2477553)) e!4178840)))

(declare-fun b!6947668 () Bool)

(declare-fun e!4178838 () Bool)

(assert (=> b!6947668 (= e!4178838 (= (_2!37157 lt!2477553) (Cons!66628 (c!1288855 lt!2477550) Nil!66628)))))

(assert (=> b!6947669 (= e!4178837 call!631050)))

(declare-fun b!6947670 () Bool)

(declare-fun c!1288884 () Bool)

(assert (=> b!6947670 (= c!1288884 ((_ is Union!16999) lt!2477550))))

(assert (=> b!6947670 (= e!4178838 e!4178841)))

(declare-fun b!6947671 () Bool)

(assert (=> b!6947671 (= e!4178841 e!4178837)))

(assert (=> b!6947671 (= c!1288883 ((_ is Star!16999) lt!2477550))))

(declare-fun b!6947672 () Bool)

(declare-fun e!4178842 () Bool)

(assert (=> b!6947672 (= e!4178840 e!4178842)))

(declare-fun res!2834363 () Bool)

(assert (=> b!6947672 (= res!2834363 (not ((_ is EmptyLang!16999) lt!2477550)))))

(assert (=> b!6947672 (=> (not res!2834363) (not e!4178842))))

(declare-fun b!6947673 () Bool)

(declare-fun c!1288882 () Bool)

(assert (=> b!6947673 (= c!1288882 ((_ is ElementMatch!16999) lt!2477550))))

(assert (=> b!6947673 (= e!4178842 e!4178838)))

(assert (= (and d!2168781 c!1288885) b!6947664))

(assert (= (and d!2168781 (not c!1288885)) b!6947672))

(assert (= (and b!6947672 res!2834363) b!6947673))

(assert (= (and b!6947673 c!1288882) b!6947668))

(assert (= (and b!6947673 (not c!1288882)) b!6947670))

(assert (= (and b!6947670 c!1288884) b!6947663))

(assert (= (and b!6947670 (not c!1288884)) b!6947671))

(assert (= (and b!6947663 (not res!2834362)) b!6947667))

(assert (= (and b!6947671 c!1288883) b!6947666))

(assert (= (and b!6947671 (not c!1288883)) b!6947669))

(assert (= (and b!6947666 (not res!2834364)) b!6947665))

(assert (= (or b!6947665 b!6947669) bm!631046))

(assert (= (or b!6947664 b!6947666) bm!631045))

(declare-fun m!7650992 () Bool)

(assert (=> b!6947663 m!7650992))

(declare-fun m!7650994 () Bool)

(assert (=> bm!631045 m!7650994))

(declare-fun m!7650996 () Bool)

(assert (=> b!6947667 m!7650996))

(declare-fun m!7650998 () Bool)

(assert (=> bm!631046 m!7650998))

(assert (=> b!6947545 d!2168781))

(declare-fun bs!1857450 () Bool)

(declare-fun b!6947698 () Bool)

(assert (= bs!1857450 (and b!6947698 b!6947531)))

(declare-fun lambda!396172 () Int)

(assert (=> bs!1857450 (not (= lambda!396172 lambda!396164))))

(declare-fun bs!1857451 () Bool)

(assert (= bs!1857451 (and b!6947698 b!6947665)))

(assert (=> bs!1857451 (= (and (= (_1!37157 lt!2477553) (_2!37157 lt!2477553)) (= (reg!17328 rInner!765) (reg!17328 lt!2477550)) (= rInner!765 lt!2477550)) (= lambda!396172 lambda!396169))))

(declare-fun bs!1857452 () Bool)

(assert (= bs!1857452 (and b!6947698 b!6947669)))

(assert (=> bs!1857452 (not (= lambda!396172 lambda!396170))))

(assert (=> b!6947698 true))

(assert (=> b!6947698 true))

(declare-fun bs!1857453 () Bool)

(declare-fun b!6947702 () Bool)

(assert (= bs!1857453 (and b!6947702 b!6947531)))

(declare-fun lambda!396174 () Int)

(assert (=> bs!1857453 (not (= lambda!396174 lambda!396164))))

(declare-fun bs!1857454 () Bool)

(assert (= bs!1857454 (and b!6947702 b!6947665)))

(assert (=> bs!1857454 (not (= lambda!396174 lambda!396169))))

(declare-fun bs!1857455 () Bool)

(assert (= bs!1857455 (and b!6947702 b!6947669)))

(assert (=> bs!1857455 (= (and (= (_1!37157 lt!2477553) (_2!37157 lt!2477553)) (= (regOne!34510 rInner!765) (regOne!34510 lt!2477550)) (= (regTwo!34510 rInner!765) (regTwo!34510 lt!2477550))) (= lambda!396174 lambda!396170))))

(declare-fun bs!1857456 () Bool)

(assert (= bs!1857456 (and b!6947702 b!6947698)))

(assert (=> bs!1857456 (not (= lambda!396174 lambda!396172))))

(assert (=> b!6947702 true))

(assert (=> b!6947702 true))

(declare-fun b!6947696 () Bool)

(declare-fun e!4178862 () Bool)

(declare-fun e!4178864 () Bool)

(assert (=> b!6947696 (= e!4178862 e!4178864)))

(declare-fun res!2834371 () Bool)

(assert (=> b!6947696 (= res!2834371 (matchRSpec!4044 (regOne!34511 rInner!765) (_1!37157 lt!2477553)))))

(assert (=> b!6947696 (=> res!2834371 e!4178864)))

(declare-fun b!6947697 () Bool)

(declare-fun e!4178861 () Bool)

(declare-fun call!631053 () Bool)

(assert (=> b!6947697 (= e!4178861 call!631053)))

(declare-fun e!4178860 () Bool)

(declare-fun call!631052 () Bool)

(assert (=> b!6947698 (= e!4178860 call!631052)))

(declare-fun b!6947699 () Bool)

(declare-fun res!2834373 () Bool)

(assert (=> b!6947699 (=> res!2834373 e!4178860)))

(assert (=> b!6947699 (= res!2834373 call!631053)))

(declare-fun e!4178858 () Bool)

(assert (=> b!6947699 (= e!4178858 e!4178860)))

(declare-fun bm!631047 () Bool)

(assert (=> bm!631047 (= call!631053 (isEmpty!38890 (_1!37157 lt!2477553)))))

(declare-fun b!6947700 () Bool)

(assert (=> b!6947700 (= e!4178864 (matchRSpec!4044 (regTwo!34511 rInner!765) (_1!37157 lt!2477553)))))

(declare-fun bm!631048 () Bool)

(declare-fun c!1288895 () Bool)

(assert (=> bm!631048 (= call!631052 (Exists!3995 (ite c!1288895 lambda!396172 lambda!396174)))))

(declare-fun d!2168789 () Bool)

(declare-fun c!1288897 () Bool)

(assert (=> d!2168789 (= c!1288897 ((_ is EmptyExpr!16999) rInner!765))))

(assert (=> d!2168789 (= (matchRSpec!4044 rInner!765 (_1!37157 lt!2477553)) e!4178861)))

(declare-fun b!6947701 () Bool)

(declare-fun e!4178859 () Bool)

(assert (=> b!6947701 (= e!4178859 (= (_1!37157 lt!2477553) (Cons!66628 (c!1288855 rInner!765) Nil!66628)))))

(assert (=> b!6947702 (= e!4178858 call!631052)))

(declare-fun b!6947703 () Bool)

(declare-fun c!1288896 () Bool)

(assert (=> b!6947703 (= c!1288896 ((_ is Union!16999) rInner!765))))

(assert (=> b!6947703 (= e!4178859 e!4178862)))

(declare-fun b!6947704 () Bool)

(assert (=> b!6947704 (= e!4178862 e!4178858)))

(assert (=> b!6947704 (= c!1288895 ((_ is Star!16999) rInner!765))))

(declare-fun b!6947705 () Bool)

(declare-fun e!4178863 () Bool)

(assert (=> b!6947705 (= e!4178861 e!4178863)))

(declare-fun res!2834372 () Bool)

(assert (=> b!6947705 (= res!2834372 (not ((_ is EmptyLang!16999) rInner!765)))))

(assert (=> b!6947705 (=> (not res!2834372) (not e!4178863))))

(declare-fun b!6947706 () Bool)

(declare-fun c!1288894 () Bool)

(assert (=> b!6947706 (= c!1288894 ((_ is ElementMatch!16999) rInner!765))))

(assert (=> b!6947706 (= e!4178863 e!4178859)))

(assert (= (and d!2168789 c!1288897) b!6947697))

(assert (= (and d!2168789 (not c!1288897)) b!6947705))

(assert (= (and b!6947705 res!2834372) b!6947706))

(assert (= (and b!6947706 c!1288894) b!6947701))

(assert (= (and b!6947706 (not c!1288894)) b!6947703))

(assert (= (and b!6947703 c!1288896) b!6947696))

(assert (= (and b!6947703 (not c!1288896)) b!6947704))

(assert (= (and b!6947696 (not res!2834371)) b!6947700))

(assert (= (and b!6947704 c!1288895) b!6947699))

(assert (= (and b!6947704 (not c!1288895)) b!6947702))

(assert (= (and b!6947699 (not res!2834373)) b!6947698))

(assert (= (or b!6947698 b!6947702) bm!631048))

(assert (= (or b!6947697 b!6947699) bm!631047))

(declare-fun m!7651000 () Bool)

(assert (=> b!6947696 m!7651000))

(assert (=> bm!631047 m!7650976))

(declare-fun m!7651002 () Bool)

(assert (=> b!6947700 m!7651002))

(declare-fun m!7651004 () Bool)

(assert (=> bm!631048 m!7651004))

(assert (=> b!6947545 d!2168789))

(declare-fun b!6947717 () Bool)

(declare-fun e!4178869 () Bool)

(declare-fun lt!2477568 () Bool)

(declare-fun call!631054 () Bool)

(assert (=> b!6947717 (= e!4178869 (= lt!2477568 call!631054))))

(declare-fun b!6947718 () Bool)

(declare-fun e!4178871 () Bool)

(assert (=> b!6947718 (= e!4178871 (matchR!9130 (derivativeStep!5471 lt!2477550 (head!13924 (_2!37157 lt!2477553))) (tail!12976 (_2!37157 lt!2477553))))))

(declare-fun b!6947719 () Bool)

(declare-fun e!4178873 () Bool)

(assert (=> b!6947719 (= e!4178873 (not lt!2477568))))

(declare-fun b!6947720 () Bool)

(declare-fun e!4178870 () Bool)

(assert (=> b!6947720 (= e!4178870 (= (head!13924 (_2!37157 lt!2477553)) (c!1288855 lt!2477550)))))

(declare-fun b!6947721 () Bool)

(declare-fun res!2834385 () Bool)

(declare-fun e!4178874 () Bool)

(assert (=> b!6947721 (=> res!2834385 e!4178874)))

(assert (=> b!6947721 (= res!2834385 e!4178870)))

(declare-fun res!2834388 () Bool)

(assert (=> b!6947721 (=> (not res!2834388) (not e!4178870))))

(assert (=> b!6947721 (= res!2834388 lt!2477568)))

(declare-fun bm!631049 () Bool)

(assert (=> bm!631049 (= call!631054 (isEmpty!38890 (_2!37157 lt!2477553)))))

(declare-fun b!6947722 () Bool)

(declare-fun e!4178872 () Bool)

(declare-fun e!4178875 () Bool)

(assert (=> b!6947722 (= e!4178872 e!4178875)))

(declare-fun res!2834387 () Bool)

(assert (=> b!6947722 (=> res!2834387 e!4178875)))

(assert (=> b!6947722 (= res!2834387 call!631054)))

(declare-fun b!6947723 () Bool)

(assert (=> b!6947723 (= e!4178869 e!4178873)))

(declare-fun c!1288900 () Bool)

(assert (=> b!6947723 (= c!1288900 ((_ is EmptyLang!16999) lt!2477550))))

(declare-fun b!6947725 () Bool)

(assert (=> b!6947725 (= e!4178875 (not (= (head!13924 (_2!37157 lt!2477553)) (c!1288855 lt!2477550))))))

(declare-fun b!6947726 () Bool)

(assert (=> b!6947726 (= e!4178874 e!4178872)))

(declare-fun res!2834390 () Bool)

(assert (=> b!6947726 (=> (not res!2834390) (not e!4178872))))

(assert (=> b!6947726 (= res!2834390 (not lt!2477568))))

(declare-fun b!6947727 () Bool)

(declare-fun res!2834391 () Bool)

(assert (=> b!6947727 (=> (not res!2834391) (not e!4178870))))

(assert (=> b!6947727 (= res!2834391 (isEmpty!38890 (tail!12976 (_2!37157 lt!2477553))))))

(declare-fun b!6947728 () Bool)

(assert (=> b!6947728 (= e!4178871 (nullable!6812 lt!2477550))))

(declare-fun b!6947729 () Bool)

(declare-fun res!2834386 () Bool)

(assert (=> b!6947729 (=> res!2834386 e!4178874)))

(assert (=> b!6947729 (= res!2834386 (not ((_ is ElementMatch!16999) lt!2477550)))))

(assert (=> b!6947729 (= e!4178873 e!4178874)))

(declare-fun b!6947730 () Bool)

(declare-fun res!2834389 () Bool)

(assert (=> b!6947730 (=> res!2834389 e!4178875)))

(assert (=> b!6947730 (= res!2834389 (not (isEmpty!38890 (tail!12976 (_2!37157 lt!2477553)))))))

(declare-fun b!6947724 () Bool)

(declare-fun res!2834384 () Bool)

(assert (=> b!6947724 (=> (not res!2834384) (not e!4178870))))

(assert (=> b!6947724 (= res!2834384 (not call!631054))))

(declare-fun d!2168791 () Bool)

(assert (=> d!2168791 e!4178869))

(declare-fun c!1288899 () Bool)

(assert (=> d!2168791 (= c!1288899 ((_ is EmptyExpr!16999) lt!2477550))))

(assert (=> d!2168791 (= lt!2477568 e!4178871)))

(declare-fun c!1288898 () Bool)

(assert (=> d!2168791 (= c!1288898 (isEmpty!38890 (_2!37157 lt!2477553)))))

(assert (=> d!2168791 (validRegex!8705 lt!2477550)))

(assert (=> d!2168791 (= (matchR!9130 lt!2477550 (_2!37157 lt!2477553)) lt!2477568)))

(assert (= (and d!2168791 c!1288898) b!6947728))

(assert (= (and d!2168791 (not c!1288898)) b!6947718))

(assert (= (and d!2168791 c!1288899) b!6947717))

(assert (= (and d!2168791 (not c!1288899)) b!6947723))

(assert (= (and b!6947723 c!1288900) b!6947719))

(assert (= (and b!6947723 (not c!1288900)) b!6947729))

(assert (= (and b!6947729 (not res!2834386)) b!6947721))

(assert (= (and b!6947721 res!2834388) b!6947724))

(assert (= (and b!6947724 res!2834384) b!6947727))

(assert (= (and b!6947727 res!2834391) b!6947720))

(assert (= (and b!6947721 (not res!2834385)) b!6947726))

(assert (= (and b!6947726 res!2834390) b!6947722))

(assert (= (and b!6947722 (not res!2834387)) b!6947730))

(assert (= (and b!6947730 (not res!2834389)) b!6947725))

(assert (= (or b!6947717 b!6947722 b!6947724) bm!631049))

(declare-fun m!7651006 () Bool)

(assert (=> b!6947718 m!7651006))

(assert (=> b!6947718 m!7651006))

(declare-fun m!7651008 () Bool)

(assert (=> b!6947718 m!7651008))

(declare-fun m!7651010 () Bool)

(assert (=> b!6947718 m!7651010))

(assert (=> b!6947718 m!7651008))

(assert (=> b!6947718 m!7651010))

(declare-fun m!7651012 () Bool)

(assert (=> b!6947718 m!7651012))

(assert (=> bm!631049 m!7650994))

(assert (=> d!2168791 m!7650994))

(assert (=> d!2168791 m!7650944))

(declare-fun m!7651014 () Bool)

(assert (=> b!6947728 m!7651014))

(assert (=> b!6947730 m!7651010))

(assert (=> b!6947730 m!7651010))

(declare-fun m!7651016 () Bool)

(assert (=> b!6947730 m!7651016))

(assert (=> b!6947727 m!7651010))

(assert (=> b!6947727 m!7651010))

(assert (=> b!6947727 m!7651016))

(assert (=> b!6947720 m!7651006))

(assert (=> b!6947725 m!7651006))

(assert (=> b!6947545 d!2168791))

(declare-fun d!2168793 () Bool)

(assert (=> d!2168793 (= (matchR!9130 rInner!765 (_1!37157 lt!2477553)) (matchRSpec!4044 rInner!765 (_1!37157 lt!2477553)))))

(declare-fun lt!2477571 () Unit!160718)

(declare-fun choose!51768 (Regex!16999 List!66752) Unit!160718)

(assert (=> d!2168793 (= lt!2477571 (choose!51768 rInner!765 (_1!37157 lt!2477553)))))

(assert (=> d!2168793 (validRegex!8705 rInner!765)))

(assert (=> d!2168793 (= (mainMatchTheorem!4044 rInner!765 (_1!37157 lt!2477553)) lt!2477571)))

(declare-fun bs!1857457 () Bool)

(assert (= bs!1857457 d!2168793))

(assert (=> bs!1857457 m!7650932))

(assert (=> bs!1857457 m!7650930))

(declare-fun m!7651018 () Bool)

(assert (=> bs!1857457 m!7651018))

(assert (=> bs!1857457 m!7650926))

(assert (=> b!6947545 d!2168793))

(declare-fun d!2168795 () Bool)

(assert (=> d!2168795 (= (matchR!9130 lt!2477550 (_2!37157 lt!2477553)) (matchRSpec!4044 lt!2477550 (_2!37157 lt!2477553)))))

(declare-fun lt!2477572 () Unit!160718)

(assert (=> d!2168795 (= lt!2477572 (choose!51768 lt!2477550 (_2!37157 lt!2477553)))))

(assert (=> d!2168795 (validRegex!8705 lt!2477550)))

(assert (=> d!2168795 (= (mainMatchTheorem!4044 lt!2477550 (_2!37157 lt!2477553)) lt!2477572)))

(declare-fun bs!1857458 () Bool)

(assert (= bs!1857458 d!2168795))

(assert (=> bs!1857458 m!7650936))

(assert (=> bs!1857458 m!7650934))

(declare-fun m!7651020 () Bool)

(assert (=> bs!1857458 m!7651020))

(assert (=> bs!1857458 m!7650944))

(assert (=> b!6947545 d!2168795))

(declare-fun bm!631062 () Bool)

(declare-fun call!631067 () Bool)

(declare-fun call!631068 () Bool)

(assert (=> bm!631062 (= call!631067 call!631068)))

(declare-fun bm!631063 () Bool)

(declare-fun call!631069 () Bool)

(declare-fun c!1288909 () Bool)

(assert (=> bm!631063 (= call!631069 (validRegex!8705 (ite c!1288909 (regTwo!34511 rInner!765) (regOne!34510 rInner!765))))))

(declare-fun c!1288910 () Bool)

(declare-fun bm!631064 () Bool)

(assert (=> bm!631064 (= call!631068 (validRegex!8705 (ite c!1288910 (reg!17328 rInner!765) (ite c!1288909 (regOne!34511 rInner!765) (regTwo!34510 rInner!765)))))))

(declare-fun b!6947760 () Bool)

(declare-fun e!4178899 () Bool)

(declare-fun e!4178898 () Bool)

(assert (=> b!6947760 (= e!4178899 e!4178898)))

(declare-fun res!2834406 () Bool)

(assert (=> b!6947760 (=> (not res!2834406) (not e!4178898))))

(assert (=> b!6947760 (= res!2834406 call!631069)))

(declare-fun d!2168797 () Bool)

(declare-fun res!2834405 () Bool)

(declare-fun e!4178902 () Bool)

(assert (=> d!2168797 (=> res!2834405 e!4178902)))

(assert (=> d!2168797 (= res!2834405 ((_ is ElementMatch!16999) rInner!765))))

(assert (=> d!2168797 (= (validRegex!8705 rInner!765) e!4178902)))

(declare-fun b!6947761 () Bool)

(declare-fun e!4178897 () Bool)

(assert (=> b!6947761 (= e!4178902 e!4178897)))

(assert (=> b!6947761 (= c!1288910 ((_ is Star!16999) rInner!765))))

(declare-fun b!6947762 () Bool)

(declare-fun e!4178900 () Bool)

(assert (=> b!6947762 (= e!4178900 call!631069)))

(declare-fun b!6947763 () Bool)

(assert (=> b!6947763 (= e!4178898 call!631067)))

(declare-fun b!6947764 () Bool)

(declare-fun e!4178903 () Bool)

(assert (=> b!6947764 (= e!4178903 call!631068)))

(declare-fun b!6947765 () Bool)

(declare-fun e!4178901 () Bool)

(assert (=> b!6947765 (= e!4178897 e!4178901)))

(assert (=> b!6947765 (= c!1288909 ((_ is Union!16999) rInner!765))))

(declare-fun b!6947766 () Bool)

(declare-fun res!2834407 () Bool)

(assert (=> b!6947766 (=> res!2834407 e!4178899)))

(assert (=> b!6947766 (= res!2834407 (not ((_ is Concat!25844) rInner!765)))))

(assert (=> b!6947766 (= e!4178901 e!4178899)))

(declare-fun b!6947767 () Bool)

(declare-fun res!2834408 () Bool)

(assert (=> b!6947767 (=> (not res!2834408) (not e!4178900))))

(assert (=> b!6947767 (= res!2834408 call!631067)))

(assert (=> b!6947767 (= e!4178901 e!4178900)))

(declare-fun b!6947768 () Bool)

(assert (=> b!6947768 (= e!4178897 e!4178903)))

(declare-fun res!2834409 () Bool)

(assert (=> b!6947768 (= res!2834409 (not (nullable!6812 (reg!17328 rInner!765))))))

(assert (=> b!6947768 (=> (not res!2834409) (not e!4178903))))

(assert (= (and d!2168797 (not res!2834405)) b!6947761))

(assert (= (and b!6947761 c!1288910) b!6947768))

(assert (= (and b!6947761 (not c!1288910)) b!6947765))

(assert (= (and b!6947768 res!2834409) b!6947764))

(assert (= (and b!6947765 c!1288909) b!6947767))

(assert (= (and b!6947765 (not c!1288909)) b!6947766))

(assert (= (and b!6947767 res!2834408) b!6947762))

(assert (= (and b!6947766 (not res!2834407)) b!6947760))

(assert (= (and b!6947760 res!2834406) b!6947763))

(assert (= (or b!6947767 b!6947763) bm!631062))

(assert (= (or b!6947762 b!6947760) bm!631063))

(assert (= (or b!6947764 bm!631062) bm!631064))

(declare-fun m!7651032 () Bool)

(assert (=> bm!631063 m!7651032))

(declare-fun m!7651034 () Bool)

(assert (=> bm!631064 m!7651034))

(declare-fun m!7651036 () Bool)

(assert (=> b!6947768 m!7651036))

(assert (=> start!666922 d!2168797))

(declare-fun d!2168803 () Bool)

(declare-fun nullableFct!2547 (Regex!16999) Bool)

(assert (=> d!2168803 (= (nullable!6812 rInner!765) (nullableFct!2547 rInner!765))))

(declare-fun bs!1857463 () Bool)

(assert (= bs!1857463 d!2168803))

(declare-fun m!7651038 () Bool)

(assert (=> bs!1857463 m!7651038))

(assert (=> b!6947539 d!2168803))

(declare-fun d!2168805 () Bool)

(assert (=> d!2168805 (= (isEmpty!38890 (_1!37157 cut!46)) ((_ is Nil!66628) (_1!37157 cut!46)))))

(assert (=> b!6947534 d!2168805))

(declare-fun b!6947806 () Bool)

(declare-fun e!4178922 () List!66752)

(assert (=> b!6947806 (= e!4178922 (Cons!66628 (h!73076 (_1!37157 lt!2477553)) (++!15036 (t!380495 (_1!37157 lt!2477553)) (_2!37157 lt!2477553))))))

(declare-fun b!6947808 () Bool)

(declare-fun e!4178923 () Bool)

(declare-fun lt!2477578 () List!66752)

(assert (=> b!6947808 (= e!4178923 (or (not (= (_2!37157 lt!2477553) Nil!66628)) (= lt!2477578 (_1!37157 lt!2477553))))))

(declare-fun b!6947807 () Bool)

(declare-fun res!2834430 () Bool)

(assert (=> b!6947807 (=> (not res!2834430) (not e!4178923))))

(declare-fun size!40815 (List!66752) Int)

(assert (=> b!6947807 (= res!2834430 (= (size!40815 lt!2477578) (+ (size!40815 (_1!37157 lt!2477553)) (size!40815 (_2!37157 lt!2477553)))))))

(declare-fun b!6947805 () Bool)

(assert (=> b!6947805 (= e!4178922 (_2!37157 lt!2477553))))

(declare-fun d!2168807 () Bool)

(assert (=> d!2168807 e!4178923))

(declare-fun res!2834431 () Bool)

(assert (=> d!2168807 (=> (not res!2834431) (not e!4178923))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13118 (List!66752) (InoxSet C!34268))

(assert (=> d!2168807 (= res!2834431 (= (content!13118 lt!2477578) ((_ map or) (content!13118 (_1!37157 lt!2477553)) (content!13118 (_2!37157 lt!2477553)))))))

(assert (=> d!2168807 (= lt!2477578 e!4178922)))

(declare-fun c!1288919 () Bool)

(assert (=> d!2168807 (= c!1288919 ((_ is Nil!66628) (_1!37157 lt!2477553)))))

(assert (=> d!2168807 (= (++!15036 (_1!37157 lt!2477553) (_2!37157 lt!2477553)) lt!2477578)))

(assert (= (and d!2168807 c!1288919) b!6947805))

(assert (= (and d!2168807 (not c!1288919)) b!6947806))

(assert (= (and d!2168807 res!2834431) b!6947807))

(assert (= (and b!6947807 res!2834430) b!6947808))

(declare-fun m!7651040 () Bool)

(assert (=> b!6947806 m!7651040))

(declare-fun m!7651042 () Bool)

(assert (=> b!6947807 m!7651042))

(declare-fun m!7651044 () Bool)

(assert (=> b!6947807 m!7651044))

(declare-fun m!7651046 () Bool)

(assert (=> b!6947807 m!7651046))

(declare-fun m!7651048 () Bool)

(assert (=> d!2168807 m!7651048))

(declare-fun m!7651050 () Bool)

(assert (=> d!2168807 m!7651050))

(declare-fun m!7651052 () Bool)

(assert (=> d!2168807 m!7651052))

(assert (=> b!6947537 d!2168807))

(declare-fun d!2168809 () Bool)

(declare-fun lt!2477582 () tuple2!67708)

(declare-fun dynLambda!26573 (Int tuple2!67708) Bool)

(assert (=> d!2168809 (dynLambda!26573 lambda!396164 lt!2477582)))

(declare-fun choose!51769 (Int) tuple2!67708)

(assert (=> d!2168809 (= lt!2477582 (choose!51769 lambda!396164))))

(assert (=> d!2168809 (Exists!3995 lambda!396164)))

(assert (=> d!2168809 (= (pickWitness!344 lambda!396164) lt!2477582)))

(declare-fun b_lambda!260355 () Bool)

(assert (=> (not b_lambda!260355) (not d!2168809)))

(declare-fun bs!1857464 () Bool)

(assert (= bs!1857464 d!2168809))

(declare-fun m!7651054 () Bool)

(assert (=> bs!1857464 m!7651054))

(declare-fun m!7651056 () Bool)

(assert (=> bs!1857464 m!7651056))

(assert (=> bs!1857464 m!7650922))

(assert (=> b!6947537 d!2168809))

(declare-fun bm!631068 () Bool)

(declare-fun call!631073 () Bool)

(declare-fun call!631074 () Bool)

(assert (=> bm!631068 (= call!631073 call!631074)))

(declare-fun bm!631069 () Bool)

(declare-fun call!631075 () Bool)

(declare-fun c!1288923 () Bool)

(assert (=> bm!631069 (= call!631075 (validRegex!8705 (ite c!1288923 (regTwo!34511 lt!2477550) (regOne!34510 lt!2477550))))))

(declare-fun bm!631070 () Bool)

(declare-fun c!1288924 () Bool)

(assert (=> bm!631070 (= call!631074 (validRegex!8705 (ite c!1288924 (reg!17328 lt!2477550) (ite c!1288923 (regOne!34511 lt!2477550) (regTwo!34510 lt!2477550)))))))

(declare-fun b!6947823 () Bool)

(declare-fun e!4178933 () Bool)

(declare-fun e!4178932 () Bool)

(assert (=> b!6947823 (= e!4178933 e!4178932)))

(declare-fun res!2834441 () Bool)

(assert (=> b!6947823 (=> (not res!2834441) (not e!4178932))))

(assert (=> b!6947823 (= res!2834441 call!631075)))

(declare-fun d!2168811 () Bool)

(declare-fun res!2834440 () Bool)

(declare-fun e!4178936 () Bool)

(assert (=> d!2168811 (=> res!2834440 e!4178936)))

(assert (=> d!2168811 (= res!2834440 ((_ is ElementMatch!16999) lt!2477550))))

(assert (=> d!2168811 (= (validRegex!8705 lt!2477550) e!4178936)))

(declare-fun b!6947824 () Bool)

(declare-fun e!4178931 () Bool)

(assert (=> b!6947824 (= e!4178936 e!4178931)))

(assert (=> b!6947824 (= c!1288924 ((_ is Star!16999) lt!2477550))))

(declare-fun b!6947825 () Bool)

(declare-fun e!4178934 () Bool)

(assert (=> b!6947825 (= e!4178934 call!631075)))

(declare-fun b!6947826 () Bool)

(assert (=> b!6947826 (= e!4178932 call!631073)))

(declare-fun b!6947827 () Bool)

(declare-fun e!4178937 () Bool)

(assert (=> b!6947827 (= e!4178937 call!631074)))

(declare-fun b!6947828 () Bool)

(declare-fun e!4178935 () Bool)

(assert (=> b!6947828 (= e!4178931 e!4178935)))

(assert (=> b!6947828 (= c!1288923 ((_ is Union!16999) lt!2477550))))

(declare-fun b!6947829 () Bool)

(declare-fun res!2834442 () Bool)

(assert (=> b!6947829 (=> res!2834442 e!4178933)))

(assert (=> b!6947829 (= res!2834442 (not ((_ is Concat!25844) lt!2477550)))))

(assert (=> b!6947829 (= e!4178935 e!4178933)))

(declare-fun b!6947830 () Bool)

(declare-fun res!2834443 () Bool)

(assert (=> b!6947830 (=> (not res!2834443) (not e!4178934))))

(assert (=> b!6947830 (= res!2834443 call!631073)))

(assert (=> b!6947830 (= e!4178935 e!4178934)))

(declare-fun b!6947831 () Bool)

(assert (=> b!6947831 (= e!4178931 e!4178937)))

(declare-fun res!2834444 () Bool)

(assert (=> b!6947831 (= res!2834444 (not (nullable!6812 (reg!17328 lt!2477550))))))

(assert (=> b!6947831 (=> (not res!2834444) (not e!4178937))))

(assert (= (and d!2168811 (not res!2834440)) b!6947824))

(assert (= (and b!6947824 c!1288924) b!6947831))

(assert (= (and b!6947824 (not c!1288924)) b!6947828))

(assert (= (and b!6947831 res!2834444) b!6947827))

(assert (= (and b!6947828 c!1288923) b!6947830))

(assert (= (and b!6947828 (not c!1288923)) b!6947829))

(assert (= (and b!6947830 res!2834443) b!6947825))

(assert (= (and b!6947829 (not res!2834442)) b!6947823))

(assert (= (and b!6947823 res!2834441) b!6947826))

(assert (= (or b!6947830 b!6947826) bm!631068))

(assert (= (or b!6947825 b!6947823) bm!631069))

(assert (= (or b!6947827 bm!631068) bm!631070))

(declare-fun m!7651070 () Bool)

(assert (=> bm!631069 m!7651070))

(declare-fun m!7651072 () Bool)

(assert (=> bm!631070 m!7651072))

(declare-fun m!7651074 () Bool)

(assert (=> b!6947831 m!7651074))

(assert (=> b!6947532 d!2168811))

(declare-fun b!6947847 () Bool)

(declare-fun e!4178945 () List!66752)

(assert (=> b!6947847 (= e!4178945 (Cons!66628 (h!73076 (_1!37157 cut!46)) (++!15036 (t!380495 (_1!37157 cut!46)) (_2!37157 cut!46))))))

(declare-fun b!6947849 () Bool)

(declare-fun e!4178946 () Bool)

(declare-fun lt!2477584 () List!66752)

(assert (=> b!6947849 (= e!4178946 (or (not (= (_2!37157 cut!46) Nil!66628)) (= lt!2477584 (_1!37157 cut!46))))))

(declare-fun b!6947848 () Bool)

(declare-fun res!2834453 () Bool)

(assert (=> b!6947848 (=> (not res!2834453) (not e!4178946))))

(assert (=> b!6947848 (= res!2834453 (= (size!40815 lt!2477584) (+ (size!40815 (_1!37157 cut!46)) (size!40815 (_2!37157 cut!46)))))))

(declare-fun b!6947846 () Bool)

(assert (=> b!6947846 (= e!4178945 (_2!37157 cut!46))))

(declare-fun d!2168815 () Bool)

(assert (=> d!2168815 e!4178946))

(declare-fun res!2834454 () Bool)

(assert (=> d!2168815 (=> (not res!2834454) (not e!4178946))))

(assert (=> d!2168815 (= res!2834454 (= (content!13118 lt!2477584) ((_ map or) (content!13118 (_1!37157 cut!46)) (content!13118 (_2!37157 cut!46)))))))

(assert (=> d!2168815 (= lt!2477584 e!4178945)))

(declare-fun c!1288928 () Bool)

(assert (=> d!2168815 (= c!1288928 ((_ is Nil!66628) (_1!37157 cut!46)))))

(assert (=> d!2168815 (= (++!15036 (_1!37157 cut!46) (_2!37157 cut!46)) lt!2477584)))

(assert (= (and d!2168815 c!1288928) b!6947846))

(assert (= (and d!2168815 (not c!1288928)) b!6947847))

(assert (= (and d!2168815 res!2834454) b!6947848))

(assert (= (and b!6947848 res!2834453) b!6947849))

(declare-fun m!7651076 () Bool)

(assert (=> b!6947847 m!7651076))

(declare-fun m!7651078 () Bool)

(assert (=> b!6947848 m!7651078))

(declare-fun m!7651082 () Bool)

(assert (=> b!6947848 m!7651082))

(declare-fun m!7651086 () Bool)

(assert (=> b!6947848 m!7651086))

(declare-fun m!7651088 () Bool)

(assert (=> d!2168815 m!7651088))

(declare-fun m!7651091 () Bool)

(assert (=> d!2168815 m!7651091))

(declare-fun m!7651094 () Bool)

(assert (=> d!2168815 m!7651094))

(assert (=> b!6947536 d!2168815))

(declare-fun d!2168817 () Bool)

(declare-fun choose!51771 (Int) Bool)

(assert (=> d!2168817 (= (Exists!3995 lambda!396164) (choose!51771 lambda!396164))))

(declare-fun bs!1857465 () Bool)

(assert (= bs!1857465 d!2168817))

(declare-fun m!7651102 () Bool)

(assert (=> bs!1857465 m!7651102))

(assert (=> b!6947531 d!2168817))

(declare-fun bs!1857468 () Bool)

(declare-fun b!6947863 () Bool)

(assert (= bs!1857468 (and b!6947863 b!6947665)))

(declare-fun lambda!396180 () Int)

(assert (=> bs!1857468 (= (and (= (_1!37157 cut!46) (_2!37157 lt!2477553)) (= (reg!17328 rInner!765) (reg!17328 lt!2477550)) (= rInner!765 lt!2477550)) (= lambda!396180 lambda!396169))))

(declare-fun bs!1857470 () Bool)

(assert (= bs!1857470 (and b!6947863 b!6947698)))

(assert (=> bs!1857470 (= (= (_1!37157 cut!46) (_1!37157 lt!2477553)) (= lambda!396180 lambda!396172))))

(declare-fun bs!1857471 () Bool)

(assert (= bs!1857471 (and b!6947863 b!6947531)))

(assert (=> bs!1857471 (not (= lambda!396180 lambda!396164))))

(declare-fun bs!1857472 () Bool)

(assert (= bs!1857472 (and b!6947863 b!6947669)))

(assert (=> bs!1857472 (not (= lambda!396180 lambda!396170))))

(declare-fun bs!1857473 () Bool)

(assert (= bs!1857473 (and b!6947863 b!6947702)))

(assert (=> bs!1857473 (not (= lambda!396180 lambda!396174))))

(assert (=> b!6947863 true))

(assert (=> b!6947863 true))

(declare-fun bs!1857478 () Bool)

(declare-fun b!6947867 () Bool)

(assert (= bs!1857478 (and b!6947867 b!6947665)))

(declare-fun lambda!396182 () Int)

(assert (=> bs!1857478 (not (= lambda!396182 lambda!396169))))

(declare-fun bs!1857479 () Bool)

(assert (= bs!1857479 (and b!6947867 b!6947698)))

(assert (=> bs!1857479 (not (= lambda!396182 lambda!396172))))

(declare-fun bs!1857480 () Bool)

(assert (= bs!1857480 (and b!6947867 b!6947531)))

(assert (=> bs!1857480 (not (= lambda!396182 lambda!396164))))

(declare-fun bs!1857481 () Bool)

(assert (= bs!1857481 (and b!6947867 b!6947669)))

(assert (=> bs!1857481 (= (and (= (_1!37157 cut!46) (_2!37157 lt!2477553)) (= (regOne!34510 rInner!765) (regOne!34510 lt!2477550)) (= (regTwo!34510 rInner!765) (regTwo!34510 lt!2477550))) (= lambda!396182 lambda!396170))))

(declare-fun bs!1857482 () Bool)

(assert (= bs!1857482 (and b!6947867 b!6947702)))

(assert (=> bs!1857482 (= (= (_1!37157 cut!46) (_1!37157 lt!2477553)) (= lambda!396182 lambda!396174))))

(declare-fun bs!1857483 () Bool)

(assert (= bs!1857483 (and b!6947867 b!6947863)))

(assert (=> bs!1857483 (not (= lambda!396182 lambda!396180))))

(assert (=> b!6947867 true))

(assert (=> b!6947867 true))

(declare-fun b!6947861 () Bool)

(declare-fun e!4178958 () Bool)

(declare-fun e!4178960 () Bool)

(assert (=> b!6947861 (= e!4178958 e!4178960)))

(declare-fun res!2834458 () Bool)

(assert (=> b!6947861 (= res!2834458 (matchRSpec!4044 (regOne!34511 rInner!765) (_1!37157 cut!46)))))

(assert (=> b!6947861 (=> res!2834458 e!4178960)))

(declare-fun b!6947862 () Bool)

(declare-fun e!4178957 () Bool)

(declare-fun call!631080 () Bool)

(assert (=> b!6947862 (= e!4178957 call!631080)))

(declare-fun e!4178956 () Bool)

(declare-fun call!631079 () Bool)

(assert (=> b!6947863 (= e!4178956 call!631079)))

(declare-fun b!6947864 () Bool)

(declare-fun res!2834460 () Bool)

(assert (=> b!6947864 (=> res!2834460 e!4178956)))

(assert (=> b!6947864 (= res!2834460 call!631080)))

(declare-fun e!4178954 () Bool)

(assert (=> b!6947864 (= e!4178954 e!4178956)))

(declare-fun bm!631074 () Bool)

(assert (=> bm!631074 (= call!631080 (isEmpty!38890 (_1!37157 cut!46)))))

(declare-fun b!6947865 () Bool)

(assert (=> b!6947865 (= e!4178960 (matchRSpec!4044 (regTwo!34511 rInner!765) (_1!37157 cut!46)))))

(declare-fun c!1288934 () Bool)

(declare-fun bm!631075 () Bool)

(assert (=> bm!631075 (= call!631079 (Exists!3995 (ite c!1288934 lambda!396180 lambda!396182)))))

(declare-fun d!2168821 () Bool)

(declare-fun c!1288936 () Bool)

(assert (=> d!2168821 (= c!1288936 ((_ is EmptyExpr!16999) rInner!765))))

(assert (=> d!2168821 (= (matchRSpec!4044 rInner!765 (_1!37157 cut!46)) e!4178957)))

(declare-fun b!6947866 () Bool)

(declare-fun e!4178955 () Bool)

(assert (=> b!6947866 (= e!4178955 (= (_1!37157 cut!46) (Cons!66628 (c!1288855 rInner!765) Nil!66628)))))

(assert (=> b!6947867 (= e!4178954 call!631079)))

(declare-fun b!6947868 () Bool)

(declare-fun c!1288935 () Bool)

(assert (=> b!6947868 (= c!1288935 ((_ is Union!16999) rInner!765))))

(assert (=> b!6947868 (= e!4178955 e!4178958)))

(declare-fun b!6947869 () Bool)

(assert (=> b!6947869 (= e!4178958 e!4178954)))

(assert (=> b!6947869 (= c!1288934 ((_ is Star!16999) rInner!765))))

(declare-fun b!6947870 () Bool)

(declare-fun e!4178959 () Bool)

(assert (=> b!6947870 (= e!4178957 e!4178959)))

(declare-fun res!2834459 () Bool)

(assert (=> b!6947870 (= res!2834459 (not ((_ is EmptyLang!16999) rInner!765)))))

(assert (=> b!6947870 (=> (not res!2834459) (not e!4178959))))

(declare-fun b!6947871 () Bool)

(declare-fun c!1288933 () Bool)

(assert (=> b!6947871 (= c!1288933 ((_ is ElementMatch!16999) rInner!765))))

(assert (=> b!6947871 (= e!4178959 e!4178955)))

(assert (= (and d!2168821 c!1288936) b!6947862))

(assert (= (and d!2168821 (not c!1288936)) b!6947870))

(assert (= (and b!6947870 res!2834459) b!6947871))

(assert (= (and b!6947871 c!1288933) b!6947866))

(assert (= (and b!6947871 (not c!1288933)) b!6947868))

(assert (= (and b!6947868 c!1288935) b!6947861))

(assert (= (and b!6947868 (not c!1288935)) b!6947869))

(assert (= (and b!6947861 (not res!2834458)) b!6947865))

(assert (= (and b!6947869 c!1288934) b!6947864))

(assert (= (and b!6947869 (not c!1288934)) b!6947867))

(assert (= (and b!6947864 (not res!2834460)) b!6947863))

(assert (= (or b!6947863 b!6947867) bm!631075))

(assert (= (or b!6947862 b!6947864) bm!631074))

(declare-fun m!7651110 () Bool)

(assert (=> b!6947861 m!7651110))

(assert (=> bm!631074 m!7650928))

(declare-fun m!7651112 () Bool)

(assert (=> b!6947865 m!7651112))

(declare-fun m!7651114 () Bool)

(assert (=> bm!631075 m!7651114))

(assert (=> b!6947542 d!2168821))

(declare-fun b!6947893 () Bool)

(declare-fun e!4178970 () Bool)

(assert (=> b!6947893 (= e!4178970 tp_is_empty!43223)))

(assert (=> b!6947535 (= tp!1915159 e!4178970)))

(declare-fun b!6947896 () Bool)

(declare-fun tp!1915179 () Bool)

(declare-fun tp!1915177 () Bool)

(assert (=> b!6947896 (= e!4178970 (and tp!1915179 tp!1915177))))

(declare-fun b!6947895 () Bool)

(declare-fun tp!1915176 () Bool)

(assert (=> b!6947895 (= e!4178970 tp!1915176)))

(declare-fun b!6947894 () Bool)

(declare-fun tp!1915178 () Bool)

(declare-fun tp!1915180 () Bool)

(assert (=> b!6947894 (= e!4178970 (and tp!1915178 tp!1915180))))

(assert (= (and b!6947535 ((_ is ElementMatch!16999) (regOne!34510 rInner!765))) b!6947893))

(assert (= (and b!6947535 ((_ is Concat!25844) (regOne!34510 rInner!765))) b!6947894))

(assert (= (and b!6947535 ((_ is Star!16999) (regOne!34510 rInner!765))) b!6947895))

(assert (= (and b!6947535 ((_ is Union!16999) (regOne!34510 rInner!765))) b!6947896))

(declare-fun b!6947897 () Bool)

(declare-fun e!4178971 () Bool)

(assert (=> b!6947897 (= e!4178971 tp_is_empty!43223)))

(assert (=> b!6947535 (= tp!1915165 e!4178971)))

(declare-fun b!6947900 () Bool)

(declare-fun tp!1915184 () Bool)

(declare-fun tp!1915182 () Bool)

(assert (=> b!6947900 (= e!4178971 (and tp!1915184 tp!1915182))))

(declare-fun b!6947899 () Bool)

(declare-fun tp!1915181 () Bool)

(assert (=> b!6947899 (= e!4178971 tp!1915181)))

(declare-fun b!6947898 () Bool)

(declare-fun tp!1915183 () Bool)

(declare-fun tp!1915185 () Bool)

(assert (=> b!6947898 (= e!4178971 (and tp!1915183 tp!1915185))))

(assert (= (and b!6947535 ((_ is ElementMatch!16999) (regTwo!34510 rInner!765))) b!6947897))

(assert (= (and b!6947535 ((_ is Concat!25844) (regTwo!34510 rInner!765))) b!6947898))

(assert (= (and b!6947535 ((_ is Star!16999) (regTwo!34510 rInner!765))) b!6947899))

(assert (= (and b!6947535 ((_ is Union!16999) (regTwo!34510 rInner!765))) b!6947900))

(declare-fun b!6947905 () Bool)

(declare-fun e!4178974 () Bool)

(declare-fun tp!1915188 () Bool)

(assert (=> b!6947905 (= e!4178974 (and tp_is_empty!43223 tp!1915188))))

(assert (=> b!6947533 (= tp!1915158 e!4178974)))

(assert (= (and b!6947533 ((_ is Cons!66628) (t!380495 (_2!37157 cut!46)))) b!6947905))

(declare-fun b!6947906 () Bool)

(declare-fun e!4178975 () Bool)

(assert (=> b!6947906 (= e!4178975 tp_is_empty!43223)))

(assert (=> b!6947544 (= tp!1915161 e!4178975)))

(declare-fun b!6947909 () Bool)

(declare-fun tp!1915192 () Bool)

(declare-fun tp!1915190 () Bool)

(assert (=> b!6947909 (= e!4178975 (and tp!1915192 tp!1915190))))

(declare-fun b!6947908 () Bool)

(declare-fun tp!1915189 () Bool)

(assert (=> b!6947908 (= e!4178975 tp!1915189)))

(declare-fun b!6947907 () Bool)

(declare-fun tp!1915191 () Bool)

(declare-fun tp!1915193 () Bool)

(assert (=> b!6947907 (= e!4178975 (and tp!1915191 tp!1915193))))

(assert (= (and b!6947544 ((_ is ElementMatch!16999) (regOne!34511 rInner!765))) b!6947906))

(assert (= (and b!6947544 ((_ is Concat!25844) (regOne!34511 rInner!765))) b!6947907))

(assert (= (and b!6947544 ((_ is Star!16999) (regOne!34511 rInner!765))) b!6947908))

(assert (= (and b!6947544 ((_ is Union!16999) (regOne!34511 rInner!765))) b!6947909))

(declare-fun b!6947910 () Bool)

(declare-fun e!4178976 () Bool)

(assert (=> b!6947910 (= e!4178976 tp_is_empty!43223)))

(assert (=> b!6947544 (= tp!1915160 e!4178976)))

(declare-fun b!6947913 () Bool)

(declare-fun tp!1915197 () Bool)

(declare-fun tp!1915195 () Bool)

(assert (=> b!6947913 (= e!4178976 (and tp!1915197 tp!1915195))))

(declare-fun b!6947912 () Bool)

(declare-fun tp!1915194 () Bool)

(assert (=> b!6947912 (= e!4178976 tp!1915194)))

(declare-fun b!6947911 () Bool)

(declare-fun tp!1915196 () Bool)

(declare-fun tp!1915198 () Bool)

(assert (=> b!6947911 (= e!4178976 (and tp!1915196 tp!1915198))))

(assert (= (and b!6947544 ((_ is ElementMatch!16999) (regTwo!34511 rInner!765))) b!6947910))

(assert (= (and b!6947544 ((_ is Concat!25844) (regTwo!34511 rInner!765))) b!6947911))

(assert (= (and b!6947544 ((_ is Star!16999) (regTwo!34511 rInner!765))) b!6947912))

(assert (= (and b!6947544 ((_ is Union!16999) (regTwo!34511 rInner!765))) b!6947913))

(declare-fun b!6947914 () Bool)

(declare-fun e!4178977 () Bool)

(declare-fun tp!1915199 () Bool)

(assert (=> b!6947914 (= e!4178977 (and tp_is_empty!43223 tp!1915199))))

(assert (=> b!6947543 (= tp!1915163 e!4178977)))

(assert (= (and b!6947543 ((_ is Cons!66628) (t!380495 (_1!37157 cut!46)))) b!6947914))

(declare-fun b!6947915 () Bool)

(declare-fun e!4178978 () Bool)

(assert (=> b!6947915 (= e!4178978 tp_is_empty!43223)))

(assert (=> b!6947538 (= tp!1915164 e!4178978)))

(declare-fun b!6947918 () Bool)

(declare-fun tp!1915203 () Bool)

(declare-fun tp!1915201 () Bool)

(assert (=> b!6947918 (= e!4178978 (and tp!1915203 tp!1915201))))

(declare-fun b!6947917 () Bool)

(declare-fun tp!1915200 () Bool)

(assert (=> b!6947917 (= e!4178978 tp!1915200)))

(declare-fun b!6947916 () Bool)

(declare-fun tp!1915202 () Bool)

(declare-fun tp!1915204 () Bool)

(assert (=> b!6947916 (= e!4178978 (and tp!1915202 tp!1915204))))

(assert (= (and b!6947538 ((_ is ElementMatch!16999) (reg!17328 rInner!765))) b!6947915))

(assert (= (and b!6947538 ((_ is Concat!25844) (reg!17328 rInner!765))) b!6947916))

(assert (= (and b!6947538 ((_ is Star!16999) (reg!17328 rInner!765))) b!6947917))

(assert (= (and b!6947538 ((_ is Union!16999) (reg!17328 rInner!765))) b!6947918))

(declare-fun b!6947919 () Bool)

(declare-fun e!4178979 () Bool)

(declare-fun tp!1915205 () Bool)

(assert (=> b!6947919 (= e!4178979 (and tp_is_empty!43223 tp!1915205))))

(assert (=> b!6947541 (= tp!1915162 e!4178979)))

(assert (= (and b!6947541 ((_ is Cons!66628) (t!380495 s!10388))) b!6947919))

(declare-fun b_lambda!260357 () Bool)

(assert (= b_lambda!260355 (or b!6947531 b_lambda!260357)))

(declare-fun bs!1857495 () Bool)

(declare-fun d!2168827 () Bool)

(assert (= bs!1857495 (and d!2168827 b!6947531)))

(declare-fun res!2834469 () Bool)

(declare-fun e!4178987 () Bool)

(assert (=> bs!1857495 (=> (not res!2834469) (not e!4178987))))

(assert (=> bs!1857495 (= res!2834469 (= (++!15036 (_1!37157 lt!2477582) (_2!37157 lt!2477582)) s!10388))))

(assert (=> bs!1857495 (= (dynLambda!26573 lambda!396164 lt!2477582) e!4178987)))

(declare-fun b!6947929 () Bool)

(declare-fun res!2834470 () Bool)

(assert (=> b!6947929 (=> (not res!2834470) (not e!4178987))))

(assert (=> b!6947929 (= res!2834470 (matchR!9130 rInner!765 (_1!37157 lt!2477582)))))

(declare-fun b!6947930 () Bool)

(assert (=> b!6947930 (= e!4178987 (matchR!9130 (Star!16999 rInner!765) (_2!37157 lt!2477582)))))

(assert (= (and bs!1857495 res!2834469) b!6947929))

(assert (= (and b!6947929 res!2834470) b!6947930))

(declare-fun m!7651122 () Bool)

(assert (=> bs!1857495 m!7651122))

(declare-fun m!7651124 () Bool)

(assert (=> b!6947929 m!7651124))

(declare-fun m!7651126 () Bool)

(assert (=> b!6947930 m!7651126))

(assert (=> d!2168809 d!2168827))

(check-sat (not b!6947831) (not b!6947768) (not b!6947930) (not d!2168795) (not b!6947730) (not b!6947591) (not b!6947603) (not b!6947899) (not bm!631046) (not b!6947917) (not bm!631045) (not b!6947913) (not b!6947601) (not b!6947727) (not d!2168803) (not b_lambda!260357) (not b!6947663) (not b!6947909) (not bm!631048) (not bs!1857495) (not b!6947848) (not b!6947905) (not b!6947911) (not b!6947914) (not b!6947667) (not b!6947895) (not d!2168771) (not b!6947896) (not b!6947593) (not bm!631070) (not bm!631074) (not b!6947600) (not b!6947847) (not bm!631049) (not d!2168793) (not bm!631047) (not b!6947900) (not b!6947894) (not d!2168791) (not bm!631064) (not b!6947918) (not b!6947807) (not b!6947865) (not d!2168807) (not b!6947806) (not b!6947725) (not d!2168815) (not b!6947728) (not b!6947700) (not d!2168817) (not b!6947718) (not b!6947919) (not b!6947929) (not b!6947598) (not b!6947916) tp_is_empty!43223 (not b!6947720) (not b!6947907) (not bm!631031) (not b!6947861) (not b!6947696) (not b!6947898) (not b!6947912) (not d!2168809) (not bm!631075) (not bm!631063) (not bm!631069) (not b!6947908))
(check-sat)
