; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664082 () Bool)

(assert start!664082)

(declare-fun b!6885711 () Bool)

(assert (=> b!6885711 true))

(assert (=> b!6885711 true))

(assert (=> b!6885711 true))

(declare-fun lambda!389944 () Int)

(declare-fun lambda!389943 () Int)

(assert (=> b!6885711 (not (= lambda!389944 lambda!389943))))

(assert (=> b!6885711 true))

(assert (=> b!6885711 true))

(assert (=> b!6885711 true))

(declare-fun bs!1838609 () Bool)

(declare-fun b!6885719 () Bool)

(assert (= bs!1838609 (and b!6885719 b!6885711)))

(declare-fun lambda!389945 () Int)

(declare-datatypes ((C!33840 0))(
  ( (C!33841 (val!26622 Int)) )
))
(declare-datatypes ((Regex!16785 0))(
  ( (ElementMatch!16785 (c!1280617 C!33840)) (Concat!25630 (regOne!34082 Regex!16785) (regTwo!34082 Regex!16785)) (EmptyExpr!16785) (Star!16785 (reg!17114 Regex!16785)) (EmptyLang!16785) (Union!16785 (regOne!34083 Regex!16785) (regTwo!34083 Regex!16785)) )
))
(declare-fun r1!6342 () Regex!16785)

(declare-fun lt!2460896 () Regex!16785)

(declare-fun r3!135 () Regex!16785)

(declare-datatypes ((List!66542 0))(
  ( (Nil!66418) (Cons!66418 (h!72866 C!33840) (t!380285 List!66542)) )
))
(declare-fun s!14361 () List!66542)

(declare-datatypes ((tuple2!67316 0))(
  ( (tuple2!67317 (_1!36961 List!66542) (_2!36961 List!66542)) )
))
(declare-fun lt!2460888 () tuple2!67316)

(declare-fun r2!6280 () Regex!16785)

(assert (=> bs!1838609 (= (and (= (_1!36961 lt!2460888) s!14361) (= r1!6342 lt!2460896) (= r2!6280 r3!135)) (= lambda!389945 lambda!389943))))

(assert (=> bs!1838609 (not (= lambda!389945 lambda!389944))))

(assert (=> b!6885719 true))

(assert (=> b!6885719 true))

(assert (=> b!6885719 true))

(declare-fun lambda!389946 () Int)

(assert (=> bs!1838609 (not (= lambda!389946 lambda!389943))))

(assert (=> bs!1838609 (= (and (= (_1!36961 lt!2460888) s!14361) (= r1!6342 lt!2460896) (= r2!6280 r3!135)) (= lambda!389946 lambda!389944))))

(assert (=> b!6885719 (not (= lambda!389946 lambda!389945))))

(assert (=> b!6885719 true))

(assert (=> b!6885719 true))

(assert (=> b!6885719 true))

(declare-fun b!6885707 () Bool)

(declare-fun e!4148798 () Bool)

(declare-fun tp!1894257 () Bool)

(declare-fun tp!1894248 () Bool)

(assert (=> b!6885707 (= e!4148798 (and tp!1894257 tp!1894248))))

(declare-fun b!6885708 () Bool)

(declare-fun res!2806981 () Bool)

(declare-fun e!4148793 () Bool)

(assert (=> b!6885708 (=> res!2806981 e!4148793)))

(declare-fun lt!2460900 () tuple2!67316)

(declare-fun matchR!8930 (Regex!16785 List!66542) Bool)

(assert (=> b!6885708 (= res!2806981 (not (matchR!8930 r2!6280 (_2!36961 lt!2460900))))))

(declare-fun b!6885709 () Bool)

(declare-fun e!4148799 () Bool)

(declare-fun tp!1894261 () Bool)

(assert (=> b!6885709 (= e!4148799 tp!1894261)))

(declare-fun b!6885710 () Bool)

(declare-fun tp_is_empty!42795 () Bool)

(assert (=> b!6885710 (= e!4148798 tp_is_empty!42795)))

(declare-fun e!4148797 () Bool)

(declare-fun e!4148795 () Bool)

(assert (=> b!6885711 (= e!4148797 e!4148795)))

(declare-fun res!2806979 () Bool)

(assert (=> b!6885711 (=> res!2806979 e!4148795)))

(declare-fun lt!2460894 () Bool)

(assert (=> b!6885711 (= res!2806979 (not lt!2460894))))

(declare-fun matchRSpec!3848 (Regex!16785 List!66542) Bool)

(assert (=> b!6885711 (= lt!2460894 (matchRSpec!3848 lt!2460896 (_1!36961 lt!2460888)))))

(assert (=> b!6885711 (= lt!2460894 (matchR!8930 lt!2460896 (_1!36961 lt!2460888)))))

(declare-datatypes ((Unit!160290 0))(
  ( (Unit!160291) )
))
(declare-fun lt!2460887 () Unit!160290)

(declare-fun mainMatchTheorem!3848 (Regex!16785 List!66542) Unit!160290)

(assert (=> b!6885711 (= lt!2460887 (mainMatchTheorem!3848 lt!2460896 (_1!36961 lt!2460888)))))

(declare-datatypes ((Option!16570 0))(
  ( (None!16569) (Some!16569 (v!52841 tuple2!67316)) )
))
(declare-fun lt!2460893 () Option!16570)

(declare-fun get!23140 (Option!16570) tuple2!67316)

(assert (=> b!6885711 (= lt!2460888 (get!23140 lt!2460893))))

(declare-fun Exists!3797 (Int) Bool)

(assert (=> b!6885711 (= (Exists!3797 lambda!389943) (Exists!3797 lambda!389944))))

(declare-fun lt!2460891 () Unit!160290)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2276 (Regex!16785 Regex!16785 List!66542) Unit!160290)

(assert (=> b!6885711 (= lt!2460891 (lemmaExistCutMatchRandMatchRSpecEquivalent!2276 lt!2460896 r3!135 s!14361))))

(declare-fun isDefined!13273 (Option!16570) Bool)

(assert (=> b!6885711 (= (isDefined!13273 lt!2460893) (Exists!3797 lambda!389943))))

(declare-fun findConcatSeparation!2984 (Regex!16785 Regex!16785 List!66542 List!66542 List!66542) Option!16570)

(assert (=> b!6885711 (= lt!2460893 (findConcatSeparation!2984 lt!2460896 r3!135 Nil!66418 s!14361 s!14361))))

(declare-fun lt!2460897 () Unit!160290)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2748 (Regex!16785 Regex!16785 List!66542) Unit!160290)

(assert (=> b!6885711 (= lt!2460897 (lemmaFindConcatSeparationEquivalentToExists!2748 lt!2460896 r3!135 s!14361))))

(declare-fun b!6885712 () Bool)

(declare-fun tp!1894259 () Bool)

(assert (=> b!6885712 (= e!4148798 tp!1894259)))

(declare-fun b!6885713 () Bool)

(declare-fun res!2806975 () Bool)

(declare-fun e!4148796 () Bool)

(assert (=> b!6885713 (=> (not res!2806975) (not e!4148796))))

(declare-fun validRegex!8493 (Regex!16785) Bool)

(assert (=> b!6885713 (= res!2806975 (validRegex!8493 r3!135))))

(declare-fun b!6885715 () Bool)

(declare-fun e!4148800 () Bool)

(assert (=> b!6885715 (= e!4148800 tp_is_empty!42795)))

(declare-fun b!6885716 () Bool)

(declare-fun tp!1894254 () Bool)

(declare-fun tp!1894256 () Bool)

(assert (=> b!6885716 (= e!4148799 (and tp!1894254 tp!1894256))))

(declare-fun b!6885717 () Bool)

(assert (=> b!6885717 (= e!4148793 true)))

(assert (=> b!6885717 (matchRSpec!3848 r1!6342 (_1!36961 lt!2460900))))

(declare-fun lt!2460902 () Unit!160290)

(assert (=> b!6885717 (= lt!2460902 (mainMatchTheorem!3848 r1!6342 (_1!36961 lt!2460900)))))

(declare-fun b!6885718 () Bool)

(declare-fun tp!1894253 () Bool)

(declare-fun tp!1894263 () Bool)

(assert (=> b!6885718 (= e!4148800 (and tp!1894253 tp!1894263))))

(assert (=> b!6885719 (= e!4148795 e!4148793)))

(declare-fun res!2806976 () Bool)

(assert (=> b!6885719 (=> res!2806976 e!4148793)))

(assert (=> b!6885719 (= res!2806976 (not (matchR!8930 r1!6342 (_1!36961 lt!2460900))))))

(declare-fun lt!2460892 () Option!16570)

(assert (=> b!6885719 (= lt!2460900 (get!23140 lt!2460892))))

(assert (=> b!6885719 (= (Exists!3797 lambda!389945) (Exists!3797 lambda!389946))))

(declare-fun lt!2460899 () Unit!160290)

(assert (=> b!6885719 (= lt!2460899 (lemmaExistCutMatchRandMatchRSpecEquivalent!2276 r1!6342 r2!6280 (_1!36961 lt!2460888)))))

(assert (=> b!6885719 (= (isDefined!13273 lt!2460892) (Exists!3797 lambda!389945))))

(assert (=> b!6885719 (= lt!2460892 (findConcatSeparation!2984 r1!6342 r2!6280 Nil!66418 (_1!36961 lt!2460888) (_1!36961 lt!2460888)))))

(declare-fun lt!2460901 () Unit!160290)

(assert (=> b!6885719 (= lt!2460901 (lemmaFindConcatSeparationEquivalentToExists!2748 r1!6342 r2!6280 (_1!36961 lt!2460888)))))

(declare-fun b!6885720 () Bool)

(declare-fun res!2806977 () Bool)

(assert (=> b!6885720 (=> (not res!2806977) (not e!4148796))))

(assert (=> b!6885720 (= res!2806977 (validRegex!8493 r2!6280))))

(declare-fun b!6885721 () Bool)

(assert (=> b!6885721 (= e!4148799 tp_is_empty!42795)))

(declare-fun b!6885722 () Bool)

(assert (=> b!6885722 (= e!4148796 (not e!4148797))))

(declare-fun res!2806978 () Bool)

(assert (=> b!6885722 (=> res!2806978 e!4148797)))

(declare-fun lt!2460890 () Bool)

(assert (=> b!6885722 (= res!2806978 (not lt!2460890))))

(declare-fun lt!2460898 () Regex!16785)

(assert (=> b!6885722 (= (matchR!8930 lt!2460898 s!14361) (matchRSpec!3848 lt!2460898 s!14361))))

(declare-fun lt!2460895 () Unit!160290)

(assert (=> b!6885722 (= lt!2460895 (mainMatchTheorem!3848 lt!2460898 s!14361))))

(declare-fun lt!2460903 () Regex!16785)

(assert (=> b!6885722 (= lt!2460890 (matchRSpec!3848 lt!2460903 s!14361))))

(assert (=> b!6885722 (= lt!2460890 (matchR!8930 lt!2460903 s!14361))))

(declare-fun lt!2460889 () Unit!160290)

(assert (=> b!6885722 (= lt!2460889 (mainMatchTheorem!3848 lt!2460903 s!14361))))

(assert (=> b!6885722 (= lt!2460898 (Concat!25630 r1!6342 (Concat!25630 r2!6280 r3!135)))))

(assert (=> b!6885722 (= lt!2460903 (Concat!25630 lt!2460896 r3!135))))

(assert (=> b!6885722 (= lt!2460896 (Concat!25630 r1!6342 r2!6280))))

(declare-fun b!6885723 () Bool)

(declare-fun tp!1894255 () Bool)

(declare-fun tp!1894252 () Bool)

(assert (=> b!6885723 (= e!4148800 (and tp!1894255 tp!1894252))))

(declare-fun b!6885724 () Bool)

(declare-fun res!2806982 () Bool)

(assert (=> b!6885724 (=> res!2806982 e!4148795)))

(assert (=> b!6885724 (= res!2806982 (not (matchR!8930 r3!135 (_2!36961 lt!2460888))))))

(declare-fun res!2806980 () Bool)

(assert (=> start!664082 (=> (not res!2806980) (not e!4148796))))

(assert (=> start!664082 (= res!2806980 (validRegex!8493 r1!6342))))

(assert (=> start!664082 e!4148796))

(assert (=> start!664082 e!4148799))

(assert (=> start!664082 e!4148798))

(assert (=> start!664082 e!4148800))

(declare-fun e!4148794 () Bool)

(assert (=> start!664082 e!4148794))

(declare-fun b!6885714 () Bool)

(declare-fun tp!1894251 () Bool)

(declare-fun tp!1894260 () Bool)

(assert (=> b!6885714 (= e!4148799 (and tp!1894251 tp!1894260))))

(declare-fun b!6885725 () Bool)

(declare-fun tp!1894262 () Bool)

(declare-fun tp!1894250 () Bool)

(assert (=> b!6885725 (= e!4148798 (and tp!1894262 tp!1894250))))

(declare-fun b!6885726 () Bool)

(declare-fun tp!1894249 () Bool)

(assert (=> b!6885726 (= e!4148800 tp!1894249)))

(declare-fun b!6885727 () Bool)

(declare-fun tp!1894258 () Bool)

(assert (=> b!6885727 (= e!4148794 (and tp_is_empty!42795 tp!1894258))))

(assert (= (and start!664082 res!2806980) b!6885720))

(assert (= (and b!6885720 res!2806977) b!6885713))

(assert (= (and b!6885713 res!2806975) b!6885722))

(assert (= (and b!6885722 (not res!2806978)) b!6885711))

(assert (= (and b!6885711 (not res!2806979)) b!6885724))

(assert (= (and b!6885724 (not res!2806982)) b!6885719))

(assert (= (and b!6885719 (not res!2806976)) b!6885708))

(assert (= (and b!6885708 (not res!2806981)) b!6885717))

(get-info :version)

(assert (= (and start!664082 ((_ is ElementMatch!16785) r1!6342)) b!6885721))

(assert (= (and start!664082 ((_ is Concat!25630) r1!6342)) b!6885714))

(assert (= (and start!664082 ((_ is Star!16785) r1!6342)) b!6885709))

(assert (= (and start!664082 ((_ is Union!16785) r1!6342)) b!6885716))

(assert (= (and start!664082 ((_ is ElementMatch!16785) r2!6280)) b!6885710))

(assert (= (and start!664082 ((_ is Concat!25630) r2!6280)) b!6885707))

(assert (= (and start!664082 ((_ is Star!16785) r2!6280)) b!6885712))

(assert (= (and start!664082 ((_ is Union!16785) r2!6280)) b!6885725))

(assert (= (and start!664082 ((_ is ElementMatch!16785) r3!135)) b!6885715))

(assert (= (and start!664082 ((_ is Concat!25630) r3!135)) b!6885723))

(assert (= (and start!664082 ((_ is Star!16785) r3!135)) b!6885726))

(assert (= (and start!664082 ((_ is Union!16785) r3!135)) b!6885718))

(assert (= (and start!664082 ((_ is Cons!66418) s!14361)) b!6885727))

(declare-fun m!7608730 () Bool)

(assert (=> b!6885719 m!7608730))

(declare-fun m!7608732 () Bool)

(assert (=> b!6885719 m!7608732))

(declare-fun m!7608734 () Bool)

(assert (=> b!6885719 m!7608734))

(declare-fun m!7608736 () Bool)

(assert (=> b!6885719 m!7608736))

(declare-fun m!7608738 () Bool)

(assert (=> b!6885719 m!7608738))

(declare-fun m!7608740 () Bool)

(assert (=> b!6885719 m!7608740))

(declare-fun m!7608742 () Bool)

(assert (=> b!6885719 m!7608742))

(declare-fun m!7608744 () Bool)

(assert (=> b!6885719 m!7608744))

(assert (=> b!6885719 m!7608742))

(declare-fun m!7608746 () Bool)

(assert (=> b!6885711 m!7608746))

(declare-fun m!7608748 () Bool)

(assert (=> b!6885711 m!7608748))

(declare-fun m!7608750 () Bool)

(assert (=> b!6885711 m!7608750))

(declare-fun m!7608752 () Bool)

(assert (=> b!6885711 m!7608752))

(declare-fun m!7608754 () Bool)

(assert (=> b!6885711 m!7608754))

(declare-fun m!7608756 () Bool)

(assert (=> b!6885711 m!7608756))

(declare-fun m!7608758 () Bool)

(assert (=> b!6885711 m!7608758))

(assert (=> b!6885711 m!7608758))

(declare-fun m!7608760 () Bool)

(assert (=> b!6885711 m!7608760))

(declare-fun m!7608762 () Bool)

(assert (=> b!6885711 m!7608762))

(declare-fun m!7608764 () Bool)

(assert (=> b!6885711 m!7608764))

(declare-fun m!7608766 () Bool)

(assert (=> b!6885708 m!7608766))

(declare-fun m!7608768 () Bool)

(assert (=> b!6885713 m!7608768))

(declare-fun m!7608770 () Bool)

(assert (=> b!6885724 m!7608770))

(declare-fun m!7608772 () Bool)

(assert (=> start!664082 m!7608772))

(declare-fun m!7608774 () Bool)

(assert (=> b!6885720 m!7608774))

(declare-fun m!7608776 () Bool)

(assert (=> b!6885722 m!7608776))

(declare-fun m!7608778 () Bool)

(assert (=> b!6885722 m!7608778))

(declare-fun m!7608780 () Bool)

(assert (=> b!6885722 m!7608780))

(declare-fun m!7608782 () Bool)

(assert (=> b!6885722 m!7608782))

(declare-fun m!7608784 () Bool)

(assert (=> b!6885722 m!7608784))

(declare-fun m!7608786 () Bool)

(assert (=> b!6885722 m!7608786))

(declare-fun m!7608788 () Bool)

(assert (=> b!6885717 m!7608788))

(declare-fun m!7608790 () Bool)

(assert (=> b!6885717 m!7608790))

(check-sat (not b!6885711) (not b!6885723) (not b!6885708) (not b!6885722) (not b!6885726) (not b!6885718) (not b!6885717) (not b!6885724) tp_is_empty!42795 (not b!6885709) (not b!6885727) (not b!6885720) (not b!6885719) (not start!664082) (not b!6885712) (not b!6885716) (not b!6885725) (not b!6885713) (not b!6885714) (not b!6885707))
(check-sat)
