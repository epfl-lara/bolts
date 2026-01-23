; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664602 () Bool)

(assert start!664602)

(declare-fun b!6898343 () Bool)

(assert (=> b!6898343 true))

(assert (=> b!6898343 true))

(assert (=> b!6898343 true))

(declare-fun lambda!391332 () Int)

(declare-fun lambda!391331 () Int)

(assert (=> b!6898343 (not (= lambda!391332 lambda!391331))))

(assert (=> b!6898343 true))

(assert (=> b!6898343 true))

(assert (=> b!6898343 true))

(declare-fun bs!1841171 () Bool)

(declare-fun b!6898356 () Bool)

(assert (= bs!1841171 (and b!6898356 b!6898343)))

(declare-datatypes ((C!33972 0))(
  ( (C!33973 (val!26688 Int)) )
))
(declare-datatypes ((Regex!16851 0))(
  ( (ElementMatch!16851 (c!1281927 C!33972)) (Concat!25696 (regOne!34214 Regex!16851) (regTwo!34214 Regex!16851)) (EmptyExpr!16851) (Star!16851 (reg!17180 Regex!16851)) (EmptyLang!16851) (Union!16851 (regOne!34215 Regex!16851) (regTwo!34215 Regex!16851)) )
))
(declare-fun r1!6342 () Regex!16851)

(declare-fun lambda!391333 () Int)

(declare-datatypes ((List!66608 0))(
  ( (Nil!66484) (Cons!66484 (h!72932 C!33972) (t!380351 List!66608)) )
))
(declare-fun s!14361 () List!66608)

(declare-fun lt!2465002 () Regex!16851)

(declare-fun r2!6280 () Regex!16851)

(declare-fun r3!135 () Regex!16851)

(declare-datatypes ((tuple2!67436 0))(
  ( (tuple2!67437 (_1!37021 List!66608) (_2!37021 List!66608)) )
))
(declare-fun lt!2464999 () tuple2!67436)

(assert (=> bs!1841171 (= (and (= (_2!37021 lt!2464999) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2465002)) (= lambda!391333 lambda!391331))))

(assert (=> bs!1841171 (not (= lambda!391333 lambda!391332))))

(assert (=> b!6898356 true))

(assert (=> b!6898356 true))

(assert (=> b!6898356 true))

(declare-fun lambda!391334 () Int)

(assert (=> bs!1841171 (not (= lambda!391334 lambda!391331))))

(assert (=> bs!1841171 (= (and (= (_2!37021 lt!2464999) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2465002)) (= lambda!391334 lambda!391332))))

(assert (=> b!6898356 (not (= lambda!391334 lambda!391333))))

(assert (=> b!6898356 true))

(assert (=> b!6898356 true))

(assert (=> b!6898356 true))

(declare-fun bs!1841172 () Bool)

(declare-fun b!6898345 () Bool)

(assert (= bs!1841172 (and b!6898345 b!6898343)))

(declare-fun lambda!391335 () Int)

(declare-fun lt!2465003 () List!66608)

(assert (=> bs!1841172 (= (and (= lt!2465003 s!14361) (= r2!6280 lt!2465002)) (= lambda!391335 lambda!391331))))

(assert (=> bs!1841172 (not (= lambda!391335 lambda!391332))))

(declare-fun bs!1841173 () Bool)

(assert (= bs!1841173 (and b!6898345 b!6898356)))

(assert (=> bs!1841173 (= (and (= lt!2465003 (_2!37021 lt!2464999)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391335 lambda!391333))))

(assert (=> bs!1841173 (not (= lambda!391335 lambda!391334))))

(assert (=> b!6898345 true))

(assert (=> b!6898345 true))

(assert (=> b!6898345 true))

(declare-fun lambda!391336 () Int)

(assert (=> bs!1841172 (= (and (= lt!2465003 s!14361) (= r2!6280 lt!2465002)) (= lambda!391336 lambda!391332))))

(assert (=> bs!1841173 (= (and (= lt!2465003 (_2!37021 lt!2464999)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391336 lambda!391334))))

(assert (=> bs!1841173 (not (= lambda!391336 lambda!391333))))

(assert (=> bs!1841172 (not (= lambda!391336 lambda!391331))))

(assert (=> b!6898345 (not (= lambda!391336 lambda!391335))))

(assert (=> b!6898345 true))

(assert (=> b!6898345 true))

(assert (=> b!6898345 true))

(declare-fun b!6898334 () Bool)

(declare-fun e!4154690 () Bool)

(declare-fun tp_is_empty!42927 () Bool)

(declare-fun tp!1899180 () Bool)

(assert (=> b!6898334 (= e!4154690 (and tp_is_empty!42927 tp!1899180))))

(declare-fun b!6898335 () Bool)

(declare-fun e!4154692 () Bool)

(assert (=> b!6898335 (= e!4154692 tp_is_empty!42927)))

(declare-fun b!6898336 () Bool)

(declare-fun tp!1899185 () Bool)

(declare-fun tp!1899187 () Bool)

(assert (=> b!6898336 (= e!4154692 (and tp!1899185 tp!1899187))))

(declare-fun b!6898337 () Bool)

(declare-fun tp!1899181 () Bool)

(assert (=> b!6898337 (= e!4154692 tp!1899181)))

(declare-fun b!6898338 () Bool)

(declare-fun e!4154694 () Bool)

(declare-fun tp!1899186 () Bool)

(declare-fun tp!1899178 () Bool)

(assert (=> b!6898338 (= e!4154694 (and tp!1899186 tp!1899178))))

(declare-fun b!6898339 () Bool)

(declare-fun e!4154693 () Bool)

(declare-fun tp!1899184 () Bool)

(assert (=> b!6898339 (= e!4154693 tp!1899184)))

(declare-fun b!6898340 () Bool)

(declare-fun tp!1899182 () Bool)

(declare-fun tp!1899191 () Bool)

(assert (=> b!6898340 (= e!4154693 (and tp!1899182 tp!1899191))))

(declare-fun b!6898341 () Bool)

(assert (=> b!6898341 (= e!4154693 tp_is_empty!42927)))

(declare-fun b!6898342 () Bool)

(declare-fun res!2812713 () Bool)

(declare-fun e!4154691 () Bool)

(assert (=> b!6898342 (=> (not res!2812713) (not e!4154691))))

(declare-fun validRegex!8559 (Regex!16851) Bool)

(assert (=> b!6898342 (= res!2812713 (validRegex!8559 r2!6280))))

(declare-fun e!4154697 () Bool)

(declare-fun e!4154698 () Bool)

(assert (=> b!6898343 (= e!4154697 e!4154698)))

(declare-fun res!2812712 () Bool)

(assert (=> b!6898343 (=> res!2812712 e!4154698)))

(declare-fun lt!2465001 () Bool)

(assert (=> b!6898343 (= res!2812712 (not lt!2465001))))

(declare-fun matchRSpec!3914 (Regex!16851 List!66608) Bool)

(assert (=> b!6898343 (= lt!2465001 (matchRSpec!3914 r1!6342 (_1!37021 lt!2464999)))))

(declare-fun matchR!8996 (Regex!16851 List!66608) Bool)

(assert (=> b!6898343 (= lt!2465001 (matchR!8996 r1!6342 (_1!37021 lt!2464999)))))

(declare-datatypes ((Unit!160422 0))(
  ( (Unit!160423) )
))
(declare-fun lt!2465021 () Unit!160422)

(declare-fun mainMatchTheorem!3914 (Regex!16851 List!66608) Unit!160422)

(assert (=> b!6898343 (= lt!2465021 (mainMatchTheorem!3914 r1!6342 (_1!37021 lt!2464999)))))

(declare-datatypes ((Option!16630 0))(
  ( (None!16629) (Some!16629 (v!52901 tuple2!67436)) )
))
(declare-fun lt!2465025 () Option!16630)

(declare-fun get!23227 (Option!16630) tuple2!67436)

(assert (=> b!6898343 (= lt!2464999 (get!23227 lt!2465025))))

(declare-fun Exists!3859 (Int) Bool)

(assert (=> b!6898343 (= (Exists!3859 lambda!391331) (Exists!3859 lambda!391332))))

(declare-fun lt!2465005 () Unit!160422)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2332 (Regex!16851 Regex!16851 List!66608) Unit!160422)

(assert (=> b!6898343 (= lt!2465005 (lemmaExistCutMatchRandMatchRSpecEquivalent!2332 r1!6342 lt!2465002 s!14361))))

(assert (=> b!6898343 (Exists!3859 lambda!391331)))

(declare-fun lt!2465024 () Unit!160422)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2806 (Regex!16851 Regex!16851 List!66608) Unit!160422)

(assert (=> b!6898343 (= lt!2465024 (lemmaFindConcatSeparationEquivalentToExists!2806 r1!6342 lt!2465002 s!14361))))

(declare-fun b!6898344 () Bool)

(declare-fun res!2812717 () Bool)

(assert (=> b!6898344 (=> (not res!2812717) (not e!4154691))))

(assert (=> b!6898344 (= res!2812717 (validRegex!8559 r3!135))))

(declare-fun e!4154696 () Bool)

(declare-fun e!4154700 () Bool)

(assert (=> b!6898345 (= e!4154696 e!4154700)))

(declare-fun res!2812710 () Bool)

(assert (=> b!6898345 (=> res!2812710 e!4154700)))

(declare-fun isPrefix!5800 (List!66608 List!66608) Bool)

(assert (=> b!6898345 (= res!2812710 (not (isPrefix!5800 Nil!66484 (_1!37021 lt!2464999))))))

(assert (=> b!6898345 (= (Exists!3859 lambda!391335) (Exists!3859 lambda!391336))))

(declare-fun lt!2465007 () Unit!160422)

(assert (=> b!6898345 (= lt!2465007 (lemmaExistCutMatchRandMatchRSpecEquivalent!2332 r1!6342 r2!6280 lt!2465003))))

(declare-fun isDefined!13333 (Option!16630) Bool)

(declare-fun findConcatSeparation!3044 (Regex!16851 Regex!16851 List!66608 List!66608 List!66608) Option!16630)

(assert (=> b!6898345 (= (isDefined!13333 (findConcatSeparation!3044 r1!6342 r2!6280 Nil!66484 lt!2465003 lt!2465003)) (Exists!3859 lambda!391335))))

(declare-fun lt!2465014 () Unit!160422)

(assert (=> b!6898345 (= lt!2465014 (lemmaFindConcatSeparationEquivalentToExists!2806 r1!6342 r2!6280 lt!2465003))))

(declare-fun lt!2465004 () Regex!16851)

(assert (=> b!6898345 (= (matchR!8996 lt!2465004 lt!2465003) (matchRSpec!3914 lt!2465004 lt!2465003))))

(declare-fun lt!2465010 () Unit!160422)

(assert (=> b!6898345 (= lt!2465010 (mainMatchTheorem!3914 lt!2465004 lt!2465003))))

(declare-fun lt!2465015 () tuple2!67436)

(declare-fun lt!2465000 () List!66608)

(declare-fun ++!14904 (List!66608 List!66608) List!66608)

(assert (=> b!6898345 (= (++!14904 lt!2465003 (_2!37021 lt!2465015)) lt!2465000)))

(assert (=> b!6898345 (= lt!2465003 (++!14904 (_1!37021 lt!2464999) (_1!37021 lt!2465015)))))

(declare-fun lt!2465022 () Unit!160422)

(declare-fun lemmaConcatAssociativity!2984 (List!66608 List!66608 List!66608) Unit!160422)

(assert (=> b!6898345 (= lt!2465022 (lemmaConcatAssociativity!2984 (_1!37021 lt!2464999) (_1!37021 lt!2465015) (_2!37021 lt!2465015)))))

(declare-fun b!6898346 () Bool)

(declare-fun res!2812716 () Bool)

(assert (=> b!6898346 (=> res!2812716 e!4154698)))

(assert (=> b!6898346 (= res!2812716 (not (matchR!8996 lt!2465002 (_2!37021 lt!2464999))))))

(declare-fun b!6898348 () Bool)

(declare-fun tp!1899189 () Bool)

(declare-fun tp!1899183 () Bool)

(assert (=> b!6898348 (= e!4154694 (and tp!1899189 tp!1899183))))

(declare-fun b!6898349 () Bool)

(declare-fun res!2812708 () Bool)

(declare-fun e!4154699 () Bool)

(assert (=> b!6898349 (=> res!2812708 e!4154699)))

(assert (=> b!6898349 (= res!2812708 (not (matchR!8996 r3!135 (_2!37021 lt!2465015))))))

(declare-fun b!6898350 () Bool)

(assert (=> b!6898350 (= e!4154694 tp_is_empty!42927)))

(declare-fun b!6898351 () Bool)

(declare-fun e!4154695 () Bool)

(assert (=> b!6898351 (= e!4154695 e!4154697)))

(declare-fun res!2812714 () Bool)

(assert (=> b!6898351 (=> res!2812714 e!4154697)))

(assert (=> b!6898351 (= res!2812714 (not (isDefined!13333 lt!2465025)))))

(assert (=> b!6898351 (= lt!2465025 (findConcatSeparation!3044 r1!6342 lt!2465002 Nil!66484 s!14361 s!14361))))

(declare-fun b!6898352 () Bool)

(assert (=> b!6898352 (= e!4154691 (not e!4154695))))

(declare-fun res!2812718 () Bool)

(assert (=> b!6898352 (=> res!2812718 e!4154695)))

(declare-fun lt!2465008 () Bool)

(assert (=> b!6898352 (= res!2812718 lt!2465008)))

(declare-fun lt!2465013 () Regex!16851)

(assert (=> b!6898352 (= (matchR!8996 lt!2465013 s!14361) (matchRSpec!3914 lt!2465013 s!14361))))

(declare-fun lt!2465023 () Unit!160422)

(assert (=> b!6898352 (= lt!2465023 (mainMatchTheorem!3914 lt!2465013 s!14361))))

(declare-fun lt!2465009 () Regex!16851)

(assert (=> b!6898352 (= lt!2465008 (matchRSpec!3914 lt!2465009 s!14361))))

(assert (=> b!6898352 (= lt!2465008 (matchR!8996 lt!2465009 s!14361))))

(declare-fun lt!2465020 () Unit!160422)

(assert (=> b!6898352 (= lt!2465020 (mainMatchTheorem!3914 lt!2465009 s!14361))))

(assert (=> b!6898352 (= lt!2465013 (Concat!25696 r1!6342 lt!2465002))))

(assert (=> b!6898352 (= lt!2465002 (Concat!25696 r2!6280 r3!135))))

(assert (=> b!6898352 (= lt!2465009 (Concat!25696 lt!2465004 r3!135))))

(assert (=> b!6898352 (= lt!2465004 (Concat!25696 r1!6342 r2!6280))))

(declare-fun b!6898353 () Bool)

(assert (=> b!6898353 (= e!4154700 true)))

(declare-fun lt!2465019 () List!66608)

(assert (=> b!6898353 (= lt!2465019 (++!14904 Nil!66484 lt!2465003))))

(declare-fun b!6898354 () Bool)

(assert (=> b!6898354 (= e!4154699 e!4154696)))

(declare-fun res!2812715 () Bool)

(assert (=> b!6898354 (=> res!2812715 e!4154696)))

(assert (=> b!6898354 (= res!2812715 (not (= lt!2465000 s!14361)))))

(assert (=> b!6898354 (= lt!2465000 (++!14904 (_1!37021 lt!2464999) (++!14904 (_1!37021 lt!2465015) (_2!37021 lt!2465015))))))

(assert (=> b!6898354 (matchRSpec!3914 r3!135 (_2!37021 lt!2465015))))

(declare-fun lt!2465018 () Unit!160422)

(assert (=> b!6898354 (= lt!2465018 (mainMatchTheorem!3914 r3!135 (_2!37021 lt!2465015)))))

(assert (=> b!6898354 (matchRSpec!3914 r2!6280 (_1!37021 lt!2465015))))

(declare-fun lt!2465006 () Unit!160422)

(assert (=> b!6898354 (= lt!2465006 (mainMatchTheorem!3914 r2!6280 (_1!37021 lt!2465015)))))

(declare-fun b!6898355 () Bool)

(declare-fun tp!1899188 () Bool)

(declare-fun tp!1899179 () Bool)

(assert (=> b!6898355 (= e!4154693 (and tp!1899188 tp!1899179))))

(assert (=> b!6898356 (= e!4154698 e!4154699)))

(declare-fun res!2812711 () Bool)

(assert (=> b!6898356 (=> res!2812711 e!4154699)))

(assert (=> b!6898356 (= res!2812711 (not (matchR!8996 r2!6280 (_1!37021 lt!2465015))))))

(declare-fun lt!2465016 () Option!16630)

(assert (=> b!6898356 (= lt!2465015 (get!23227 lt!2465016))))

(assert (=> b!6898356 (= (Exists!3859 lambda!391333) (Exists!3859 lambda!391334))))

(declare-fun lt!2465017 () Unit!160422)

(assert (=> b!6898356 (= lt!2465017 (lemmaExistCutMatchRandMatchRSpecEquivalent!2332 r2!6280 r3!135 (_2!37021 lt!2464999)))))

(assert (=> b!6898356 (= (isDefined!13333 lt!2465016) (Exists!3859 lambda!391333))))

(assert (=> b!6898356 (= lt!2465016 (findConcatSeparation!3044 r2!6280 r3!135 Nil!66484 (_2!37021 lt!2464999) (_2!37021 lt!2464999)))))

(declare-fun lt!2465012 () Unit!160422)

(assert (=> b!6898356 (= lt!2465012 (lemmaFindConcatSeparationEquivalentToExists!2806 r2!6280 r3!135 (_2!37021 lt!2464999)))))

(assert (=> b!6898356 (matchRSpec!3914 lt!2465002 (_2!37021 lt!2464999))))

(declare-fun lt!2465011 () Unit!160422)

(assert (=> b!6898356 (= lt!2465011 (mainMatchTheorem!3914 lt!2465002 (_2!37021 lt!2464999)))))

(declare-fun b!6898357 () Bool)

(declare-fun tp!1899177 () Bool)

(assert (=> b!6898357 (= e!4154694 tp!1899177)))

(declare-fun b!6898347 () Bool)

(declare-fun tp!1899176 () Bool)

(declare-fun tp!1899190 () Bool)

(assert (=> b!6898347 (= e!4154692 (and tp!1899176 tp!1899190))))

(declare-fun res!2812709 () Bool)

(assert (=> start!664602 (=> (not res!2812709) (not e!4154691))))

(assert (=> start!664602 (= res!2812709 (validRegex!8559 r1!6342))))

(assert (=> start!664602 e!4154691))

(assert (=> start!664602 e!4154694))

(assert (=> start!664602 e!4154692))

(assert (=> start!664602 e!4154693))

(assert (=> start!664602 e!4154690))

(assert (= (and start!664602 res!2812709) b!6898342))

(assert (= (and b!6898342 res!2812713) b!6898344))

(assert (= (and b!6898344 res!2812717) b!6898352))

(assert (= (and b!6898352 (not res!2812718)) b!6898351))

(assert (= (and b!6898351 (not res!2812714)) b!6898343))

(assert (= (and b!6898343 (not res!2812712)) b!6898346))

(assert (= (and b!6898346 (not res!2812716)) b!6898356))

(assert (= (and b!6898356 (not res!2812711)) b!6898349))

(assert (= (and b!6898349 (not res!2812708)) b!6898354))

(assert (= (and b!6898354 (not res!2812715)) b!6898345))

(assert (= (and b!6898345 (not res!2812710)) b!6898353))

(get-info :version)

(assert (= (and start!664602 ((_ is ElementMatch!16851) r1!6342)) b!6898350))

(assert (= (and start!664602 ((_ is Concat!25696) r1!6342)) b!6898348))

(assert (= (and start!664602 ((_ is Star!16851) r1!6342)) b!6898357))

(assert (= (and start!664602 ((_ is Union!16851) r1!6342)) b!6898338))

(assert (= (and start!664602 ((_ is ElementMatch!16851) r2!6280)) b!6898335))

(assert (= (and start!664602 ((_ is Concat!25696) r2!6280)) b!6898336))

(assert (= (and start!664602 ((_ is Star!16851) r2!6280)) b!6898337))

(assert (= (and start!664602 ((_ is Union!16851) r2!6280)) b!6898347))

(assert (= (and start!664602 ((_ is ElementMatch!16851) r3!135)) b!6898341))

(assert (= (and start!664602 ((_ is Concat!25696) r3!135)) b!6898340))

(assert (= (and start!664602 ((_ is Star!16851) r3!135)) b!6898339))

(assert (= (and start!664602 ((_ is Union!16851) r3!135)) b!6898355))

(assert (= (and start!664602 ((_ is Cons!66484) s!14361)) b!6898334))

(declare-fun m!7616750 () Bool)

(assert (=> b!6898352 m!7616750))

(declare-fun m!7616752 () Bool)

(assert (=> b!6898352 m!7616752))

(declare-fun m!7616754 () Bool)

(assert (=> b!6898352 m!7616754))

(declare-fun m!7616756 () Bool)

(assert (=> b!6898352 m!7616756))

(declare-fun m!7616758 () Bool)

(assert (=> b!6898352 m!7616758))

(declare-fun m!7616760 () Bool)

(assert (=> b!6898352 m!7616760))

(declare-fun m!7616762 () Bool)

(assert (=> b!6898351 m!7616762))

(declare-fun m!7616764 () Bool)

(assert (=> b!6898351 m!7616764))

(declare-fun m!7616766 () Bool)

(assert (=> b!6898342 m!7616766))

(declare-fun m!7616768 () Bool)

(assert (=> b!6898354 m!7616768))

(declare-fun m!7616770 () Bool)

(assert (=> b!6898354 m!7616770))

(declare-fun m!7616772 () Bool)

(assert (=> b!6898354 m!7616772))

(declare-fun m!7616774 () Bool)

(assert (=> b!6898354 m!7616774))

(declare-fun m!7616776 () Bool)

(assert (=> b!6898354 m!7616776))

(assert (=> b!6898354 m!7616776))

(declare-fun m!7616778 () Bool)

(assert (=> b!6898354 m!7616778))

(declare-fun m!7616780 () Bool)

(assert (=> b!6898353 m!7616780))

(declare-fun m!7616782 () Bool)

(assert (=> b!6898356 m!7616782))

(declare-fun m!7616784 () Bool)

(assert (=> b!6898356 m!7616784))

(declare-fun m!7616786 () Bool)

(assert (=> b!6898356 m!7616786))

(declare-fun m!7616788 () Bool)

(assert (=> b!6898356 m!7616788))

(declare-fun m!7616790 () Bool)

(assert (=> b!6898356 m!7616790))

(assert (=> b!6898356 m!7616788))

(declare-fun m!7616792 () Bool)

(assert (=> b!6898356 m!7616792))

(declare-fun m!7616794 () Bool)

(assert (=> b!6898356 m!7616794))

(declare-fun m!7616796 () Bool)

(assert (=> b!6898356 m!7616796))

(declare-fun m!7616798 () Bool)

(assert (=> b!6898356 m!7616798))

(declare-fun m!7616800 () Bool)

(assert (=> b!6898356 m!7616800))

(declare-fun m!7616802 () Bool)

(assert (=> b!6898349 m!7616802))

(declare-fun m!7616804 () Bool)

(assert (=> b!6898343 m!7616804))

(declare-fun m!7616806 () Bool)

(assert (=> b!6898343 m!7616806))

(declare-fun m!7616808 () Bool)

(assert (=> b!6898343 m!7616808))

(declare-fun m!7616810 () Bool)

(assert (=> b!6898343 m!7616810))

(declare-fun m!7616812 () Bool)

(assert (=> b!6898343 m!7616812))

(declare-fun m!7616814 () Bool)

(assert (=> b!6898343 m!7616814))

(assert (=> b!6898343 m!7616814))

(declare-fun m!7616816 () Bool)

(assert (=> b!6898343 m!7616816))

(declare-fun m!7616818 () Bool)

(assert (=> b!6898343 m!7616818))

(declare-fun m!7616820 () Bool)

(assert (=> b!6898346 m!7616820))

(declare-fun m!7616822 () Bool)

(assert (=> start!664602 m!7616822))

(declare-fun m!7616824 () Bool)

(assert (=> b!6898345 m!7616824))

(declare-fun m!7616826 () Bool)

(assert (=> b!6898345 m!7616826))

(declare-fun m!7616828 () Bool)

(assert (=> b!6898345 m!7616828))

(declare-fun m!7616830 () Bool)

(assert (=> b!6898345 m!7616830))

(declare-fun m!7616832 () Bool)

(assert (=> b!6898345 m!7616832))

(declare-fun m!7616834 () Bool)

(assert (=> b!6898345 m!7616834))

(declare-fun m!7616836 () Bool)

(assert (=> b!6898345 m!7616836))

(declare-fun m!7616838 () Bool)

(assert (=> b!6898345 m!7616838))

(declare-fun m!7616840 () Bool)

(assert (=> b!6898345 m!7616840))

(assert (=> b!6898345 m!7616836))

(declare-fun m!7616842 () Bool)

(assert (=> b!6898345 m!7616842))

(declare-fun m!7616844 () Bool)

(assert (=> b!6898345 m!7616844))

(declare-fun m!7616846 () Bool)

(assert (=> b!6898345 m!7616846))

(declare-fun m!7616848 () Bool)

(assert (=> b!6898345 m!7616848))

(assert (=> b!6898345 m!7616824))

(declare-fun m!7616850 () Bool)

(assert (=> b!6898344 m!7616850))

(check-sat (not b!6898339) (not b!6898351) (not start!664602) (not b!6898344) (not b!6898342) (not b!6898349) (not b!6898354) (not b!6898348) (not b!6898356) (not b!6898338) (not b!6898355) (not b!6898357) (not b!6898337) (not b!6898334) (not b!6898353) (not b!6898346) (not b!6898347) (not b!6898343) (not b!6898340) (not b!6898352) (not b!6898345) (not b!6898336) tp_is_empty!42927)
(check-sat)
