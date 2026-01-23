; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694592 () Bool)

(assert start!694592)

(declare-fun b!7130359 () Bool)

(declare-fun e!4285019 () Bool)

(declare-fun tp_is_empty!45719 () Bool)

(declare-fun tp!1964957 () Bool)

(assert (=> b!7130359 (= e!4285019 (and tp_is_empty!45719 tp!1964957))))

(declare-fun res!2909358 () Bool)

(declare-fun e!4285016 () Bool)

(assert (=> start!694592 (=> (not res!2909358) (not e!4285016))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!36388 0))(
  ( (C!36389 (val!28120 Int)) )
))
(declare-datatypes ((Regex!18059 0))(
  ( (ElementMatch!18059 (c!1330011 C!36388)) (Concat!26904 (regOne!36630 Regex!18059) (regTwo!36630 Regex!18059)) (EmptyExpr!18059) (Star!18059 (reg!18388 Regex!18059)) (EmptyLang!18059) (Union!18059 (regOne!36631 Regex!18059) (regTwo!36631 Regex!18059)) )
))
(declare-datatypes ((List!69172 0))(
  ( (Nil!69048) (Cons!69048 (h!75496 Regex!18059) (t!383149 List!69172)) )
))
(declare-datatypes ((Context!14106 0))(
  ( (Context!14107 (exprs!7553 List!69172)) )
))
(declare-fun z1!552 () (InoxSet Context!14106))

(declare-datatypes ((List!69173 0))(
  ( (Nil!69049) (Cons!69049 (h!75497 C!36388) (t!383150 List!69173)) )
))
(declare-fun s1!1688 () List!69173)

(declare-fun matchZipper!3315 ((InoxSet Context!14106) List!69173) Bool)

(assert (=> start!694592 (= res!2909358 (matchZipper!3315 z1!552 s1!1688))))

(assert (=> start!694592 e!4285016))

(declare-fun e!4285021 () Bool)

(assert (=> start!694592 e!4285021))

(declare-fun condSetEmpty!51991 () Bool)

(assert (=> start!694592 (= condSetEmpty!51991 (= z1!552 ((as const (Array Context!14106 Bool)) false)))))

(declare-fun setRes!51991 () Bool)

(assert (=> start!694592 setRes!51991))

(declare-fun e!4285010 () Bool)

(assert (=> start!694592 e!4285010))

(declare-fun condSetEmpty!51990 () Bool)

(declare-fun z2!471 () (InoxSet Context!14106))

(assert (=> start!694592 (= condSetEmpty!51990 (= z2!471 ((as const (Array Context!14106 Bool)) false)))))

(declare-fun setRes!51990 () Bool)

(assert (=> start!694592 setRes!51990))

(declare-fun e!4285011 () Bool)

(assert (=> start!694592 e!4285011))

(assert (=> start!694592 e!4285019))

(declare-fun e!4285014 () Bool)

(assert (=> start!694592 e!4285014))

(declare-fun b!7130360 () Bool)

(declare-fun e!4285018 () Bool)

(declare-fun s!7390 () List!69173)

(declare-fun isPrefix!5928 (List!69173 List!69173) Bool)

(assert (=> b!7130360 (= e!4285018 (not (isPrefix!5928 s1!1688 s!7390)))))

(declare-datatypes ((Unit!162971 0))(
  ( (Unit!162972) )
))
(declare-fun lt!2564279 () Unit!162971)

(declare-fun e!4285013 () Unit!162971)

(assert (=> b!7130360 (= lt!2564279 e!4285013)))

(declare-fun c!1330010 () Bool)

(declare-fun s1Rec!140 () List!69173)

(declare-fun size!41484 (List!69173) Int)

(assert (=> b!7130360 (= c!1330010 (= (size!41484 s1Rec!140) (size!41484 s1!1688)))))

(declare-fun lt!2564285 () List!69173)

(declare-fun lt!2564286 () List!69173)

(assert (=> b!7130360 (isPrefix!5928 lt!2564285 lt!2564286)))

(declare-fun lt!2564276 () Unit!162971)

(declare-fun s2Rec!140 () List!69173)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3641 (List!69173 List!69173) Unit!162971)

(assert (=> b!7130360 (= lt!2564276 (lemmaConcatTwoListThenFirstIsPrefix!3641 lt!2564285 (t!383150 s2Rec!140)))))

(assert (=> b!7130360 (= lt!2564286 s!7390)))

(declare-fun ++!16197 (List!69173 List!69173) List!69173)

(assert (=> b!7130360 (= lt!2564286 (++!16197 lt!2564285 (t!383150 s2Rec!140)))))

(assert (=> b!7130360 (= lt!2564285 (++!16197 s1Rec!140 (Cons!69049 (h!75497 s2Rec!140) Nil!69049)))))

(declare-fun lt!2564277 () Unit!162971)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3019 (List!69173 C!36388 List!69173 List!69173) Unit!162971)

(assert (=> b!7130360 (= lt!2564277 (lemmaMoveElementToOtherListKeepsConcatEq!3019 s1Rec!140 (h!75497 s2Rec!140) (t!383150 s2Rec!140) s!7390))))

(declare-fun lt!2564284 () Unit!162971)

(declare-fun e!4285012 () Unit!162971)

(assert (=> b!7130360 (= lt!2564284 e!4285012)))

(declare-fun c!1330009 () Bool)

(assert (=> b!7130360 (= c!1330009 (= s1Rec!140 s1!1688))))

(declare-fun lt!2564278 () List!69173)

(assert (=> b!7130360 (isPrefix!5928 s1Rec!140 lt!2564278)))

(declare-fun lt!2564282 () Unit!162971)

(assert (=> b!7130360 (= lt!2564282 (lemmaConcatTwoListThenFirstIsPrefix!3641 s1Rec!140 s2Rec!140))))

(declare-fun lt!2564283 () List!69173)

(assert (=> b!7130360 (isPrefix!5928 s1!1688 lt!2564283)))

(declare-fun lt!2564280 () Unit!162971)

(declare-fun s2!1620 () List!69173)

(assert (=> b!7130360 (= lt!2564280 (lemmaConcatTwoListThenFirstIsPrefix!3641 s1!1688 s2!1620))))

(declare-fun b!7130361 () Bool)

(declare-fun e!4285017 () Bool)

(declare-fun tp!1964962 () Bool)

(assert (=> b!7130361 (= e!4285017 tp!1964962)))

(declare-fun b!7130362 () Bool)

(declare-fun tp!1964963 () Bool)

(assert (=> b!7130362 (= e!4285011 (and tp_is_empty!45719 tp!1964963))))

(declare-fun b!7130363 () Bool)

(declare-fun tp!1964960 () Bool)

(assert (=> b!7130363 (= e!4285010 (and tp_is_empty!45719 tp!1964960))))

(declare-fun b!7130364 () Bool)

(declare-fun res!2909359 () Bool)

(assert (=> b!7130364 (=> (not res!2909359) (not e!4285018))))

(get-info :version)

(assert (=> b!7130364 (= res!2909359 (not ((_ is Nil!69049) s2Rec!140)))))

(declare-fun b!7130365 () Bool)

(declare-fun Unit!162973 () Unit!162971)

(assert (=> b!7130365 (= e!4285012 Unit!162973)))

(declare-fun b!7130366 () Bool)

(declare-fun e!4285009 () Bool)

(assert (=> b!7130366 (= e!4285009 (not (matchZipper!3315 z2!471 s2Rec!140)))))

(declare-fun b!7130367 () Bool)

(declare-fun res!2909361 () Bool)

(assert (=> b!7130367 (=> (not res!2909361) (not e!4285016))))

(assert (=> b!7130367 (= res!2909361 (matchZipper!3315 z2!471 s2!1620))))

(declare-fun b!7130368 () Bool)

(declare-fun e!4285015 () Bool)

(assert (=> b!7130368 (= e!4285015 e!4285018)))

(declare-fun res!2909362 () Bool)

(assert (=> b!7130368 (=> (not res!2909362) (not e!4285018))))

(assert (=> b!7130368 (= res!2909362 (= lt!2564278 s!7390))))

(assert (=> b!7130368 (= lt!2564278 (++!16197 s1Rec!140 s2Rec!140))))

(declare-fun b!7130369 () Bool)

(declare-fun e!4285020 () Bool)

(declare-fun tp!1964961 () Bool)

(assert (=> b!7130369 (= e!4285020 tp!1964961)))

(declare-fun tp!1964956 () Bool)

(declare-fun setNonEmpty!51990 () Bool)

(declare-fun setElem!51990 () Context!14106)

(declare-fun inv!88175 (Context!14106) Bool)

(assert (=> setNonEmpty!51990 (= setRes!51991 (and tp!1964956 (inv!88175 setElem!51990) e!4285017))))

(declare-fun setRest!51991 () (InoxSet Context!14106))

(assert (=> setNonEmpty!51990 (= z1!552 ((_ map or) (store ((as const (Array Context!14106 Bool)) false) setElem!51990 true) setRest!51991))))

(declare-fun b!7130370 () Bool)

(declare-fun Unit!162974 () Unit!162971)

(assert (=> b!7130370 (= e!4285013 Unit!162974)))

(declare-fun setIsEmpty!51990 () Bool)

(assert (=> setIsEmpty!51990 setRes!51991))

(declare-fun b!7130371 () Bool)

(declare-fun res!2909357 () Bool)

(assert (=> b!7130371 (=> (not res!2909357) (not e!4285015))))

(assert (=> b!7130371 (= res!2909357 (isPrefix!5928 s1Rec!140 s1!1688))))

(declare-fun setIsEmpty!51991 () Bool)

(assert (=> setIsEmpty!51991 setRes!51990))

(declare-fun setNonEmpty!51991 () Bool)

(declare-fun setElem!51991 () Context!14106)

(declare-fun tp!1964958 () Bool)

(assert (=> setNonEmpty!51991 (= setRes!51990 (and tp!1964958 (inv!88175 setElem!51991) e!4285020))))

(declare-fun setRest!51990 () (InoxSet Context!14106))

(assert (=> setNonEmpty!51991 (= z2!471 ((_ map or) (store ((as const (Array Context!14106 Bool)) false) setElem!51991 true) setRest!51990))))

(declare-fun b!7130372 () Bool)

(declare-fun tp!1964955 () Bool)

(assert (=> b!7130372 (= e!4285014 (and tp_is_empty!45719 tp!1964955))))

(declare-fun b!7130373 () Bool)

(declare-fun Unit!162975 () Unit!162971)

(assert (=> b!7130373 (= e!4285013 Unit!162975)))

(declare-fun lt!2564281 () Unit!162971)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1449 (List!69173 List!69173 List!69173) Unit!162971)

(assert (=> b!7130373 (= lt!2564281 (lemmaIsPrefixSameLengthThenSameList!1449 s1!1688 s1Rec!140 s!7390))))

(assert (=> b!7130373 false))

(declare-fun b!7130374 () Bool)

(declare-fun res!2909360 () Bool)

(assert (=> b!7130374 (=> (not res!2909360) (not e!4285018))))

(assert (=> b!7130374 (= res!2909360 e!4285009)))

(declare-fun res!2909356 () Bool)

(assert (=> b!7130374 (=> res!2909356 e!4285009)))

(assert (=> b!7130374 (= res!2909356 (not (matchZipper!3315 z1!552 s1Rec!140)))))

(declare-fun b!7130375 () Bool)

(assert (=> b!7130375 (= e!4285016 e!4285015)))

(declare-fun res!2909363 () Bool)

(assert (=> b!7130375 (=> (not res!2909363) (not e!4285015))))

(assert (=> b!7130375 (= res!2909363 (= lt!2564283 s!7390))))

(assert (=> b!7130375 (= lt!2564283 (++!16197 s1!1688 s2!1620))))

(declare-fun b!7130376 () Bool)

(declare-fun tp!1964959 () Bool)

(assert (=> b!7130376 (= e!4285021 (and tp_is_empty!45719 tp!1964959))))

(declare-fun b!7130377 () Bool)

(declare-fun Unit!162976 () Unit!162971)

(assert (=> b!7130377 (= e!4285012 Unit!162976)))

(declare-fun lt!2564275 () Unit!162971)

(declare-fun lemmaSamePrefixThenSameSuffix!2739 (List!69173 List!69173 List!69173 List!69173 List!69173) Unit!162971)

(assert (=> b!7130377 (= lt!2564275 (lemmaSamePrefixThenSameSuffix!2739 s1!1688 s2!1620 s1Rec!140 s2Rec!140 s!7390))))

(assert (=> b!7130377 false))

(assert (= (and start!694592 res!2909358) b!7130367))

(assert (= (and b!7130367 res!2909361) b!7130375))

(assert (= (and b!7130375 res!2909363) b!7130371))

(assert (= (and b!7130371 res!2909357) b!7130368))

(assert (= (and b!7130368 res!2909362) b!7130374))

(assert (= (and b!7130374 (not res!2909356)) b!7130366))

(assert (= (and b!7130374 res!2909360) b!7130364))

(assert (= (and b!7130364 res!2909359) b!7130360))

(assert (= (and b!7130360 c!1330009) b!7130377))

(assert (= (and b!7130360 (not c!1330009)) b!7130365))

(assert (= (and b!7130360 c!1330010) b!7130373))

(assert (= (and b!7130360 (not c!1330010)) b!7130370))

(assert (= (and start!694592 ((_ is Cons!69049) s1Rec!140)) b!7130376))

(assert (= (and start!694592 condSetEmpty!51991) setIsEmpty!51990))

(assert (= (and start!694592 (not condSetEmpty!51991)) setNonEmpty!51990))

(assert (= setNonEmpty!51990 b!7130361))

(assert (= (and start!694592 ((_ is Cons!69049) s2Rec!140)) b!7130363))

(assert (= (and start!694592 condSetEmpty!51990) setIsEmpty!51991))

(assert (= (and start!694592 (not condSetEmpty!51990)) setNonEmpty!51991))

(assert (= setNonEmpty!51991 b!7130369))

(assert (= (and start!694592 ((_ is Cons!69049) s2!1620)) b!7130362))

(assert (= (and start!694592 ((_ is Cons!69049) s1!1688)) b!7130359))

(assert (= (and start!694592 ((_ is Cons!69049) s!7390)) b!7130372))

(declare-fun m!7847250 () Bool)

(assert (=> b!7130360 m!7847250))

(declare-fun m!7847252 () Bool)

(assert (=> b!7130360 m!7847252))

(declare-fun m!7847254 () Bool)

(assert (=> b!7130360 m!7847254))

(declare-fun m!7847256 () Bool)

(assert (=> b!7130360 m!7847256))

(declare-fun m!7847258 () Bool)

(assert (=> b!7130360 m!7847258))

(declare-fun m!7847260 () Bool)

(assert (=> b!7130360 m!7847260))

(declare-fun m!7847262 () Bool)

(assert (=> b!7130360 m!7847262))

(declare-fun m!7847264 () Bool)

(assert (=> b!7130360 m!7847264))

(declare-fun m!7847266 () Bool)

(assert (=> b!7130360 m!7847266))

(declare-fun m!7847268 () Bool)

(assert (=> b!7130360 m!7847268))

(declare-fun m!7847270 () Bool)

(assert (=> b!7130360 m!7847270))

(declare-fun m!7847272 () Bool)

(assert (=> b!7130360 m!7847272))

(declare-fun m!7847274 () Bool)

(assert (=> start!694592 m!7847274))

(declare-fun m!7847276 () Bool)

(assert (=> setNonEmpty!51990 m!7847276))

(declare-fun m!7847278 () Bool)

(assert (=> b!7130374 m!7847278))

(declare-fun m!7847280 () Bool)

(assert (=> b!7130367 m!7847280))

(declare-fun m!7847282 () Bool)

(assert (=> b!7130371 m!7847282))

(declare-fun m!7847284 () Bool)

(assert (=> b!7130375 m!7847284))

(declare-fun m!7847286 () Bool)

(assert (=> b!7130366 m!7847286))

(declare-fun m!7847288 () Bool)

(assert (=> b!7130373 m!7847288))

(declare-fun m!7847290 () Bool)

(assert (=> b!7130377 m!7847290))

(declare-fun m!7847292 () Bool)

(assert (=> setNonEmpty!51991 m!7847292))

(declare-fun m!7847294 () Bool)

(assert (=> b!7130368 m!7847294))

(check-sat (not b!7130359) (not b!7130361) (not b!7130375) (not setNonEmpty!51991) (not b!7130372) (not b!7130360) (not b!7130376) (not setNonEmpty!51990) (not b!7130377) (not b!7130362) (not b!7130371) (not b!7130369) tp_is_empty!45719 (not b!7130368) (not b!7130363) (not b!7130373) (not b!7130374) (not b!7130366) (not start!694592) (not b!7130367))
(check-sat)
