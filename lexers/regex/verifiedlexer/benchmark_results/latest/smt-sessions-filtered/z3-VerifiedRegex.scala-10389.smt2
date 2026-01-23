; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!538360 () Bool)

(assert start!538360)

(declare-fun b!5105351 () Bool)

(declare-fun e!3184127 () Bool)

(declare-datatypes ((C!28404 0))(
  ( (C!28405 (val!23854 Int)) )
))
(declare-datatypes ((List!59005 0))(
  ( (Nil!58881) (Cons!58881 (h!65329 C!28404) (t!372006 List!59005)) )
))
(declare-datatypes ((tuple2!63532 0))(
  ( (tuple2!63533 (_1!35069 List!59005) (_2!35069 List!59005)) )
))
(declare-fun lt!2101198 () tuple2!63532)

(declare-fun isEmpty!31818 (List!59005) Bool)

(assert (=> b!5105351 (= e!3184127 (not (isEmpty!31818 (_1!35069 lt!2101198))))))

(declare-fun b!5105352 () Bool)

(declare-fun e!3184132 () Bool)

(declare-fun tp!1424069 () Bool)

(declare-fun tp!1424068 () Bool)

(assert (=> b!5105352 (= e!3184132 (and tp!1424069 tp!1424068))))

(declare-fun b!5105353 () Bool)

(declare-fun tp!1424066 () Bool)

(assert (=> b!5105353 (= e!3184132 tp!1424066)))

(declare-fun b!5105354 () Bool)

(declare-fun e!3184134 () Bool)

(declare-fun e!3184129 () Bool)

(assert (=> b!5105354 (= e!3184134 e!3184129)))

(declare-fun res!2173029 () Bool)

(assert (=> b!5105354 (=> (not res!2173029) (not e!3184129))))

(declare-datatypes ((Regex!14073 0))(
  ( (ElementMatch!14073 (c!877051 C!28404)) (Concat!22918 (regOne!28658 Regex!14073) (regTwo!28658 Regex!14073)) (EmptyExpr!14073) (Star!14073 (reg!14402 Regex!14073)) (EmptyLang!14073) (Union!14073 (regOne!28659 Regex!14073) (regTwo!28659 Regex!14073)) )
))
(declare-datatypes ((List!59006 0))(
  ( (Nil!58882) (Cons!58882 (h!65330 Regex!14073) (t!372007 List!59006)) )
))
(declare-datatypes ((Context!6914 0))(
  ( (Context!6915 (exprs!3957 List!59006)) )
))
(declare-datatypes ((List!59007 0))(
  ( (Nil!58883) (Cons!58883 (h!65331 Context!6914) (t!372008 List!59007)) )
))
(declare-fun lt!2101199 () List!59007)

(declare-fun r!12920 () Regex!14073)

(declare-fun unfocusZipper!415 (List!59007) Regex!14073)

(assert (=> b!5105354 (= res!2173029 (= (unfocusZipper!415 lt!2101199) r!12920))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4303 () (InoxSet Context!6914))

(declare-fun toList!8207 ((InoxSet Context!6914)) List!59007)

(assert (=> b!5105354 (= lt!2101199 (toList!8207 z!4303))))

(declare-fun b!5105355 () Bool)

(declare-fun e!3184133 () Bool)

(declare-fun e!3184136 () Bool)

(assert (=> b!5105355 (= e!3184133 e!3184136)))

(declare-fun res!2173032 () Bool)

(assert (=> b!5105355 (=> res!2173032 e!3184136)))

(assert (=> b!5105355 (= res!2173032 e!3184127)))

(declare-fun res!2173035 () Bool)

(assert (=> b!5105355 (=> (not res!2173035) (not e!3184127))))

(declare-fun lt!2101210 () Bool)

(assert (=> b!5105355 (= res!2173035 (not lt!2101210))))

(declare-fun matchR!6858 (Regex!14073 List!59005) Bool)

(assert (=> b!5105355 (= lt!2101210 (matchR!6858 r!12920 (_1!35069 lt!2101198)))))

(declare-fun b!5105356 () Bool)

(declare-fun res!2173026 () Bool)

(declare-fun e!3184128 () Bool)

(assert (=> b!5105356 (=> res!2173026 e!3184128)))

(declare-fun lt!2101211 () tuple2!63532)

(declare-fun input!5654 () List!59005)

(declare-fun isPrefix!5474 (List!59005 List!59005) Bool)

(assert (=> b!5105356 (= res!2173026 (not (isPrefix!5474 (_1!35069 lt!2101211) input!5654)))))

(declare-fun b!5105357 () Bool)

(declare-fun e!3184131 () Bool)

(assert (=> b!5105357 (= e!3184131 (not (isEmpty!31818 (_1!35069 lt!2101211))))))

(declare-fun b!5105358 () Bool)

(declare-fun tp!1424064 () Bool)

(declare-fun tp!1424071 () Bool)

(assert (=> b!5105358 (= e!3184132 (and tp!1424064 tp!1424071))))

(declare-fun b!5105359 () Bool)

(declare-fun tp_is_empty!37411 () Bool)

(assert (=> b!5105359 (= e!3184132 tp_is_empty!37411)))

(declare-fun b!5105360 () Bool)

(declare-fun e!3184126 () Bool)

(declare-fun e!3184130 () Bool)

(assert (=> b!5105360 (= e!3184126 e!3184130)))

(declare-fun res!2173027 () Bool)

(assert (=> b!5105360 (=> (not res!2173027) (not e!3184130))))

(declare-fun lt!2101201 () List!59005)

(assert (=> b!5105360 (= res!2173027 (= lt!2101201 input!5654))))

(declare-fun ++!12922 (List!59005 List!59005) List!59005)

(assert (=> b!5105360 (= lt!2101201 (++!12922 (_1!35069 lt!2101198) (_2!35069 lt!2101198)))))

(declare-fun setRes!29332 () Bool)

(declare-fun e!3184138 () Bool)

(declare-fun setNonEmpty!29332 () Bool)

(declare-fun setElem!29332 () Context!6914)

(declare-fun tp!1424070 () Bool)

(declare-fun inv!78357 (Context!6914) Bool)

(assert (=> setNonEmpty!29332 (= setRes!29332 (and tp!1424070 (inv!78357 setElem!29332) e!3184138))))

(declare-fun setRest!29332 () (InoxSet Context!6914))

(assert (=> setNonEmpty!29332 (= z!4303 ((_ map or) (store ((as const (Array Context!6914 Bool)) false) setElem!29332 true) setRest!29332))))

(declare-fun b!5105361 () Bool)

(declare-fun tp!1424067 () Bool)

(assert (=> b!5105361 (= e!3184138 tp!1424067)))

(declare-fun b!5105362 () Bool)

(declare-fun lt!2101203 () Int)

(declare-fun lt!2101204 () Int)

(assert (=> b!5105362 (= e!3184128 (= lt!2101203 lt!2101204))))

(declare-fun b!5105363 () Bool)

(assert (=> b!5105363 (= e!3184129 e!3184126)))

(declare-fun res!2173030 () Bool)

(assert (=> b!5105363 (=> (not res!2173030) (not e!3184126))))

(declare-fun lt!2101200 () List!59005)

(assert (=> b!5105363 (= res!2173030 (= lt!2101200 input!5654))))

(assert (=> b!5105363 (= lt!2101200 (++!12922 (_1!35069 lt!2101211) (_2!35069 lt!2101211)))))

(declare-fun findLongestMatch!1903 (Regex!14073 List!59005) tuple2!63532)

(assert (=> b!5105363 (= lt!2101198 (findLongestMatch!1903 r!12920 input!5654))))

(declare-fun findLongestMatchZipper!97 ((InoxSet Context!6914) List!59005) tuple2!63532)

(assert (=> b!5105363 (= lt!2101211 (findLongestMatchZipper!97 z!4303 input!5654))))

(declare-fun b!5105364 () Bool)

(declare-fun e!3184139 () Bool)

(declare-fun lt!2101196 () tuple2!63532)

(declare-fun matchZipper!745 ((InoxSet Context!6914) List!59005) Bool)

(assert (=> b!5105364 (= e!3184139 (matchZipper!745 z!4303 (_1!35069 lt!2101196)))))

(declare-fun res!2173033 () Bool)

(assert (=> start!538360 (=> (not res!2173033) (not e!3184134))))

(declare-fun validRegex!6200 (Regex!14073) Bool)

(assert (=> start!538360 (= res!2173033 (validRegex!6200 r!12920))))

(assert (=> start!538360 e!3184134))

(assert (=> start!538360 e!3184132))

(declare-fun condSetEmpty!29332 () Bool)

(assert (=> start!538360 (= condSetEmpty!29332 (= z!4303 ((as const (Array Context!6914 Bool)) false)))))

(assert (=> start!538360 setRes!29332))

(declare-fun e!3184137 () Bool)

(assert (=> start!538360 e!3184137))

(declare-fun b!5105365 () Bool)

(assert (=> b!5105365 (= e!3184130 (not e!3184133))))

(declare-fun res!2173036 () Bool)

(assert (=> b!5105365 (=> res!2173036 e!3184133)))

(assert (=> b!5105365 (= res!2173036 e!3184131)))

(declare-fun res!2173028 () Bool)

(assert (=> b!5105365 (=> (not res!2173028) (not e!3184131))))

(declare-fun lt!2101206 () Bool)

(assert (=> b!5105365 (= res!2173028 (not lt!2101206))))

(assert (=> b!5105365 (= lt!2101206 (matchZipper!745 z!4303 (_1!35069 lt!2101211)))))

(declare-fun e!3184135 () Bool)

(assert (=> b!5105365 e!3184135))

(declare-fun res!2173024 () Bool)

(assert (=> b!5105365 (=> res!2173024 e!3184135)))

(declare-fun lt!2101205 () tuple2!63532)

(assert (=> b!5105365 (= res!2173024 (isEmpty!31818 (_1!35069 lt!2101205)))))

(declare-fun lt!2101209 () Int)

(declare-fun lt!2101212 () Int)

(declare-fun findLongestMatchInner!2086 (Regex!14073 List!59005 Int List!59005 List!59005 Int) tuple2!63532)

(assert (=> b!5105365 (= lt!2101205 (findLongestMatchInner!2086 r!12920 Nil!58881 lt!2101209 input!5654 input!5654 lt!2101212))))

(declare-datatypes ((Unit!149940 0))(
  ( (Unit!149941) )
))
(declare-fun lt!2101213 () Unit!149940)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2092 (Regex!14073 List!59005) Unit!149940)

(assert (=> b!5105365 (= lt!2101213 (longestMatchIsAcceptedByMatchOrIsEmpty!2092 r!12920 input!5654))))

(assert (=> b!5105365 e!3184139))

(declare-fun res!2173034 () Bool)

(assert (=> b!5105365 (=> res!2173034 e!3184139)))

(assert (=> b!5105365 (= res!2173034 (isEmpty!31818 (_1!35069 lt!2101196)))))

(declare-fun findLongestMatchInnerZipper!147 ((InoxSet Context!6914) List!59005 Int List!59005 List!59005 Int) tuple2!63532)

(assert (=> b!5105365 (= lt!2101196 (findLongestMatchInnerZipper!147 z!4303 Nil!58881 lt!2101209 input!5654 input!5654 lt!2101212))))

(declare-fun size!39375 (List!59005) Int)

(assert (=> b!5105365 (= lt!2101212 (size!39375 input!5654))))

(assert (=> b!5105365 (= lt!2101209 (size!39375 Nil!58881))))

(declare-fun lt!2101202 () Unit!149940)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2093 ((InoxSet Context!6914) List!59005) Unit!149940)

(assert (=> b!5105365 (= lt!2101202 (longestMatchIsAcceptedByMatchOrIsEmpty!2093 z!4303 input!5654))))

(assert (=> b!5105365 (isPrefix!5474 (_1!35069 lt!2101198) lt!2101201)))

(declare-fun lt!2101214 () Unit!149940)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3532 (List!59005 List!59005) Unit!149940)

(assert (=> b!5105365 (= lt!2101214 (lemmaConcatTwoListThenFirstIsPrefix!3532 (_1!35069 lt!2101198) (_2!35069 lt!2101198)))))

(assert (=> b!5105365 (isPrefix!5474 (_1!35069 lt!2101211) lt!2101200)))

(declare-fun lt!2101197 () Unit!149940)

(assert (=> b!5105365 (= lt!2101197 (lemmaConcatTwoListThenFirstIsPrefix!3532 (_1!35069 lt!2101211) (_2!35069 lt!2101211)))))

(declare-fun setIsEmpty!29332 () Bool)

(assert (=> setIsEmpty!29332 setRes!29332))

(declare-fun b!5105366 () Bool)

(assert (=> b!5105366 (= e!3184135 (matchR!6858 r!12920 (_1!35069 lt!2101205)))))

(declare-fun b!5105367 () Bool)

(declare-fun tp!1424065 () Bool)

(assert (=> b!5105367 (= e!3184137 (and tp_is_empty!37411 tp!1424065))))

(declare-fun b!5105368 () Bool)

(declare-fun res!2173025 () Bool)

(assert (=> b!5105368 (=> res!2173025 e!3184128)))

(assert (=> b!5105368 (= res!2173025 (not (isPrefix!5474 (_1!35069 lt!2101198) input!5654)))))

(declare-fun b!5105369 () Bool)

(assert (=> b!5105369 (= e!3184136 e!3184128)))

(declare-fun res!2173031 () Bool)

(assert (=> b!5105369 (=> res!2173031 e!3184128)))

(assert (=> b!5105369 (= res!2173031 (or (> lt!2101204 lt!2101203) (> lt!2101203 lt!2101204)))))

(assert (=> b!5105369 (= lt!2101203 (size!39375 (_1!35069 lt!2101211)))))

(assert (=> b!5105369 (= lt!2101204 (size!39375 (_1!35069 lt!2101198)))))

(assert (=> b!5105369 (= (matchR!6858 r!12920 (_1!35069 lt!2101211)) lt!2101206)))

(declare-fun lt!2101207 () Unit!149940)

(declare-fun theoremZipperRegexEquiv!237 ((InoxSet Context!6914) List!59007 Regex!14073 List!59005) Unit!149940)

(assert (=> b!5105369 (= lt!2101207 (theoremZipperRegexEquiv!237 z!4303 lt!2101199 r!12920 (_1!35069 lt!2101211)))))

(assert (=> b!5105369 (= lt!2101210 (matchZipper!745 z!4303 (_1!35069 lt!2101198)))))

(declare-fun lt!2101208 () Unit!149940)

(assert (=> b!5105369 (= lt!2101208 (theoremZipperRegexEquiv!237 z!4303 lt!2101199 r!12920 (_1!35069 lt!2101198)))))

(assert (= (and start!538360 res!2173033) b!5105354))

(assert (= (and b!5105354 res!2173029) b!5105363))

(assert (= (and b!5105363 res!2173030) b!5105360))

(assert (= (and b!5105360 res!2173027) b!5105365))

(assert (= (and b!5105365 (not res!2173034)) b!5105364))

(assert (= (and b!5105365 (not res!2173024)) b!5105366))

(assert (= (and b!5105365 res!2173028) b!5105357))

(assert (= (and b!5105365 (not res!2173036)) b!5105355))

(assert (= (and b!5105355 res!2173035) b!5105351))

(assert (= (and b!5105355 (not res!2173032)) b!5105369))

(assert (= (and b!5105369 (not res!2173031)) b!5105356))

(assert (= (and b!5105356 (not res!2173026)) b!5105368))

(assert (= (and b!5105368 (not res!2173025)) b!5105362))

(get-info :version)

(assert (= (and start!538360 ((_ is ElementMatch!14073) r!12920)) b!5105359))

(assert (= (and start!538360 ((_ is Concat!22918) r!12920)) b!5105352))

(assert (= (and start!538360 ((_ is Star!14073) r!12920)) b!5105353))

(assert (= (and start!538360 ((_ is Union!14073) r!12920)) b!5105358))

(assert (= (and start!538360 condSetEmpty!29332) setIsEmpty!29332))

(assert (= (and start!538360 (not condSetEmpty!29332)) setNonEmpty!29332))

(assert (= setNonEmpty!29332 b!5105361))

(assert (= (and start!538360 ((_ is Cons!58881) input!5654)) b!5105367))

(declare-fun m!6162646 () Bool)

(assert (=> b!5105369 m!6162646))

(declare-fun m!6162648 () Bool)

(assert (=> b!5105369 m!6162648))

(declare-fun m!6162650 () Bool)

(assert (=> b!5105369 m!6162650))

(declare-fun m!6162652 () Bool)

(assert (=> b!5105369 m!6162652))

(declare-fun m!6162654 () Bool)

(assert (=> b!5105369 m!6162654))

(declare-fun m!6162656 () Bool)

(assert (=> b!5105369 m!6162656))

(declare-fun m!6162658 () Bool)

(assert (=> setNonEmpty!29332 m!6162658))

(declare-fun m!6162660 () Bool)

(assert (=> b!5105355 m!6162660))

(declare-fun m!6162662 () Bool)

(assert (=> b!5105365 m!6162662))

(declare-fun m!6162664 () Bool)

(assert (=> b!5105365 m!6162664))

(declare-fun m!6162666 () Bool)

(assert (=> b!5105365 m!6162666))

(declare-fun m!6162668 () Bool)

(assert (=> b!5105365 m!6162668))

(declare-fun m!6162670 () Bool)

(assert (=> b!5105365 m!6162670))

(declare-fun m!6162672 () Bool)

(assert (=> b!5105365 m!6162672))

(declare-fun m!6162674 () Bool)

(assert (=> b!5105365 m!6162674))

(declare-fun m!6162676 () Bool)

(assert (=> b!5105365 m!6162676))

(declare-fun m!6162678 () Bool)

(assert (=> b!5105365 m!6162678))

(declare-fun m!6162680 () Bool)

(assert (=> b!5105365 m!6162680))

(declare-fun m!6162682 () Bool)

(assert (=> b!5105365 m!6162682))

(declare-fun m!6162684 () Bool)

(assert (=> b!5105365 m!6162684))

(declare-fun m!6162686 () Bool)

(assert (=> b!5105365 m!6162686))

(declare-fun m!6162688 () Bool)

(assert (=> b!5105360 m!6162688))

(declare-fun m!6162690 () Bool)

(assert (=> b!5105364 m!6162690))

(declare-fun m!6162692 () Bool)

(assert (=> b!5105368 m!6162692))

(declare-fun m!6162694 () Bool)

(assert (=> b!5105354 m!6162694))

(declare-fun m!6162696 () Bool)

(assert (=> b!5105354 m!6162696))

(declare-fun m!6162698 () Bool)

(assert (=> b!5105356 m!6162698))

(declare-fun m!6162700 () Bool)

(assert (=> b!5105363 m!6162700))

(declare-fun m!6162702 () Bool)

(assert (=> b!5105363 m!6162702))

(declare-fun m!6162704 () Bool)

(assert (=> b!5105363 m!6162704))

(declare-fun m!6162706 () Bool)

(assert (=> b!5105366 m!6162706))

(declare-fun m!6162708 () Bool)

(assert (=> start!538360 m!6162708))

(declare-fun m!6162710 () Bool)

(assert (=> b!5105351 m!6162710))

(declare-fun m!6162712 () Bool)

(assert (=> b!5105357 m!6162712))

(check-sat (not b!5105351) (not b!5105360) (not b!5105363) (not b!5105366) (not start!538360) (not b!5105368) (not b!5105356) (not b!5105365) (not b!5105369) (not b!5105353) (not setNonEmpty!29332) (not b!5105358) (not b!5105357) (not b!5105354) (not b!5105355) tp_is_empty!37411 (not b!5105367) (not b!5105352) (not b!5105361) (not b!5105364))
(check-sat)
