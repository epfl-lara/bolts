; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!537768 () Bool)

(assert start!537768)

(declare-fun setIsEmpty!29128 () Bool)

(declare-fun setRes!29128 () Bool)

(assert (=> setIsEmpty!29128 setRes!29128))

(declare-fun b!5099000 () Bool)

(declare-fun e!3180038 () Bool)

(declare-datatypes ((C!28300 0))(
  ( (C!28301 (val!23802 Int)) )
))
(declare-datatypes ((List!58849 0))(
  ( (Nil!58725) (Cons!58725 (h!65173 C!28300) (t!371850 List!58849)) )
))
(declare-datatypes ((tuple2!63428 0))(
  ( (tuple2!63429 (_1!35017 List!58849) (_2!35017 List!58849)) )
))
(declare-fun lt!2095527 () tuple2!63428)

(declare-fun isEmpty!31770 (List!58849) Bool)

(assert (=> b!5099000 (= e!3180038 (not (isEmpty!31770 (_1!35017 lt!2095527))))))

(declare-fun b!5099001 () Bool)

(declare-fun e!3180051 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14021 0))(
  ( (ElementMatch!14021 (c!876127 C!28300)) (Concat!22866 (regOne!28554 Regex!14021) (regTwo!28554 Regex!14021)) (EmptyExpr!14021) (Star!14021 (reg!14350 Regex!14021)) (EmptyLang!14021) (Union!14021 (regOne!28555 Regex!14021) (regTwo!28555 Regex!14021)) )
))
(declare-datatypes ((List!58850 0))(
  ( (Nil!58726) (Cons!58726 (h!65174 Regex!14021) (t!371851 List!58850)) )
))
(declare-datatypes ((Context!6810 0))(
  ( (Context!6811 (exprs!3905 List!58850)) )
))
(declare-fun z!4303 () (InoxSet Context!6810))

(declare-fun lt!2095539 () tuple2!63428)

(declare-fun matchZipper!697 ((InoxSet Context!6810) List!58849) Bool)

(assert (=> b!5099001 (= e!3180051 (matchZipper!697 z!4303 (_1!35017 lt!2095539)))))

(declare-fun b!5099002 () Bool)

(declare-fun res!2170081 () Bool)

(declare-fun e!3180044 () Bool)

(assert (=> b!5099002 (=> res!2170081 e!3180044)))

(declare-fun lt!2095524 () tuple2!63428)

(declare-fun input!5654 () List!58849)

(declare-fun isPrefix!5426 (List!58849 List!58849) Bool)

(assert (=> b!5099002 (= res!2170081 (not (isPrefix!5426 (_1!35017 lt!2095524) input!5654)))))

(declare-fun b!5099003 () Bool)

(declare-fun e!3180050 () Bool)

(declare-fun tp_is_empty!37307 () Bool)

(assert (=> b!5099003 (= e!3180050 tp_is_empty!37307)))

(declare-fun b!5099004 () Bool)

(declare-fun e!3180039 () Bool)

(assert (=> b!5099004 (= e!3180039 e!3180044)))

(declare-fun res!2170076 () Bool)

(assert (=> b!5099004 (=> res!2170076 e!3180044)))

(declare-fun size!39323 (List!58849) Int)

(assert (=> b!5099004 (= res!2170076 (<= (size!39323 (_1!35017 lt!2095527)) (size!39323 (_1!35017 lt!2095524))))))

(declare-fun r!12920 () Regex!14021)

(declare-fun lt!2095540 () Bool)

(declare-fun matchR!6810 (Regex!14021 List!58849) Bool)

(assert (=> b!5099004 (= (matchR!6810 r!12920 (_1!35017 lt!2095524)) lt!2095540)))

(declare-datatypes ((List!58851 0))(
  ( (Nil!58727) (Cons!58727 (h!65175 Context!6810) (t!371852 List!58851)) )
))
(declare-fun lt!2095529 () List!58851)

(declare-datatypes ((Unit!149766 0))(
  ( (Unit!149767) )
))
(declare-fun lt!2095534 () Unit!149766)

(declare-fun theoremZipperRegexEquiv!195 ((InoxSet Context!6810) List!58851 Regex!14021 List!58849) Unit!149766)

(assert (=> b!5099004 (= lt!2095534 (theoremZipperRegexEquiv!195 z!4303 lt!2095529 r!12920 (_1!35017 lt!2095524)))))

(declare-fun lt!2095535 () Bool)

(assert (=> b!5099004 (= lt!2095535 (matchZipper!697 z!4303 (_1!35017 lt!2095527)))))

(declare-fun lt!2095536 () Unit!149766)

(assert (=> b!5099004 (= lt!2095536 (theoremZipperRegexEquiv!195 z!4303 lt!2095529 r!12920 (_1!35017 lt!2095527)))))

(declare-fun b!5099006 () Bool)

(declare-fun tp!1422021 () Bool)

(declare-fun tp!1422019 () Bool)

(assert (=> b!5099006 (= e!3180050 (and tp!1422021 tp!1422019))))

(declare-fun tp!1422017 () Bool)

(declare-fun e!3180041 () Bool)

(declare-fun setElem!29128 () Context!6810)

(declare-fun setNonEmpty!29128 () Bool)

(declare-fun inv!78227 (Context!6810) Bool)

(assert (=> setNonEmpty!29128 (= setRes!29128 (and tp!1422017 (inv!78227 setElem!29128) e!3180041))))

(declare-fun setRest!29128 () (InoxSet Context!6810))

(assert (=> setNonEmpty!29128 (= z!4303 ((_ map or) (store ((as const (Array Context!6810 Bool)) false) setElem!29128 true) setRest!29128))))

(declare-fun b!5099007 () Bool)

(declare-fun e!3180045 () Bool)

(declare-fun e!3180046 () Bool)

(assert (=> b!5099007 (= e!3180045 e!3180046)))

(declare-fun res!2170080 () Bool)

(assert (=> b!5099007 (=> (not res!2170080) (not e!3180046))))

(declare-fun unfocusZipper!363 (List!58851) Regex!14021)

(assert (=> b!5099007 (= res!2170080 (= (unfocusZipper!363 lt!2095529) r!12920))))

(declare-fun toList!8155 ((InoxSet Context!6810)) List!58851)

(assert (=> b!5099007 (= lt!2095529 (toList!8155 z!4303))))

(declare-fun b!5099008 () Bool)

(declare-fun e!3180040 () Bool)

(assert (=> b!5099008 (= e!3180046 e!3180040)))

(declare-fun res!2170074 () Bool)

(assert (=> b!5099008 (=> (not res!2170074) (not e!3180040))))

(declare-fun lt!2095526 () List!58849)

(assert (=> b!5099008 (= res!2170074 (= lt!2095526 input!5654))))

(declare-fun ++!12870 (List!58849 List!58849) List!58849)

(assert (=> b!5099008 (= lt!2095526 (++!12870 (_1!35017 lt!2095524) (_2!35017 lt!2095524)))))

(declare-fun findLongestMatch!1851 (Regex!14021 List!58849) tuple2!63428)

(assert (=> b!5099008 (= lt!2095527 (findLongestMatch!1851 r!12920 input!5654))))

(declare-fun findLongestMatchZipper!45 ((InoxSet Context!6810) List!58849) tuple2!63428)

(assert (=> b!5099008 (= lt!2095524 (findLongestMatchZipper!45 z!4303 input!5654))))

(declare-fun b!5099009 () Bool)

(assert (=> b!5099009 (= e!3180044 true)))

(declare-fun lt!2095532 () Bool)

(assert (=> b!5099009 (= lt!2095532 (isPrefix!5426 (_1!35017 lt!2095527) input!5654))))

(declare-fun b!5099010 () Bool)

(declare-fun tp!1422023 () Bool)

(declare-fun tp!1422020 () Bool)

(assert (=> b!5099010 (= e!3180050 (and tp!1422023 tp!1422020))))

(declare-fun b!5099011 () Bool)

(declare-fun tp!1422022 () Bool)

(assert (=> b!5099011 (= e!3180050 tp!1422022)))

(declare-fun b!5099012 () Bool)

(declare-fun e!3180047 () Bool)

(assert (=> b!5099012 (= e!3180047 (not (isEmpty!31770 (_1!35017 lt!2095524))))))

(declare-fun b!5099013 () Bool)

(declare-fun e!3180049 () Bool)

(declare-fun tp!1422018 () Bool)

(assert (=> b!5099013 (= e!3180049 (and tp_is_empty!37307 tp!1422018))))

(declare-fun b!5099014 () Bool)

(declare-fun e!3180042 () Bool)

(assert (=> b!5099014 (= e!3180040 e!3180042)))

(declare-fun res!2170079 () Bool)

(assert (=> b!5099014 (=> (not res!2170079) (not e!3180042))))

(declare-fun lt!2095525 () List!58849)

(assert (=> b!5099014 (= res!2170079 (= lt!2095525 input!5654))))

(assert (=> b!5099014 (= lt!2095525 (++!12870 (_1!35017 lt!2095527) (_2!35017 lt!2095527)))))

(declare-fun b!5099015 () Bool)

(declare-fun e!3180048 () Bool)

(declare-fun lt!2095538 () tuple2!63428)

(assert (=> b!5099015 (= e!3180048 (matchR!6810 r!12920 (_1!35017 lt!2095538)))))

(declare-fun b!5099005 () Bool)

(declare-fun e!3180043 () Bool)

(assert (=> b!5099005 (= e!3180043 e!3180039)))

(declare-fun res!2170075 () Bool)

(assert (=> b!5099005 (=> res!2170075 e!3180039)))

(assert (=> b!5099005 (= res!2170075 e!3180038)))

(declare-fun res!2170078 () Bool)

(assert (=> b!5099005 (=> (not res!2170078) (not e!3180038))))

(assert (=> b!5099005 (= res!2170078 (not lt!2095535))))

(assert (=> b!5099005 (= lt!2095535 (matchR!6810 r!12920 (_1!35017 lt!2095527)))))

(declare-fun res!2170082 () Bool)

(assert (=> start!537768 (=> (not res!2170082) (not e!3180045))))

(declare-fun validRegex!6148 (Regex!14021) Bool)

(assert (=> start!537768 (= res!2170082 (validRegex!6148 r!12920))))

(assert (=> start!537768 e!3180045))

(assert (=> start!537768 e!3180050))

(declare-fun condSetEmpty!29128 () Bool)

(assert (=> start!537768 (= condSetEmpty!29128 (= z!4303 ((as const (Array Context!6810 Bool)) false)))))

(assert (=> start!537768 setRes!29128))

(assert (=> start!537768 e!3180049))

(declare-fun b!5099016 () Bool)

(assert (=> b!5099016 (= e!3180042 (not e!3180043))))

(declare-fun res!2170073 () Bool)

(assert (=> b!5099016 (=> res!2170073 e!3180043)))

(assert (=> b!5099016 (= res!2170073 e!3180047)))

(declare-fun res!2170084 () Bool)

(assert (=> b!5099016 (=> (not res!2170084) (not e!3180047))))

(assert (=> b!5099016 (= res!2170084 (not lt!2095540))))

(assert (=> b!5099016 (= lt!2095540 (matchZipper!697 z!4303 (_1!35017 lt!2095524)))))

(assert (=> b!5099016 e!3180048))

(declare-fun res!2170083 () Bool)

(assert (=> b!5099016 (=> res!2170083 e!3180048)))

(assert (=> b!5099016 (= res!2170083 (isEmpty!31770 (_1!35017 lt!2095538)))))

(declare-fun lt!2095530 () Int)

(declare-fun lt!2095533 () Int)

(declare-fun findLongestMatchInner!2034 (Regex!14021 List!58849 Int List!58849 List!58849 Int) tuple2!63428)

(assert (=> b!5099016 (= lt!2095538 (findLongestMatchInner!2034 r!12920 Nil!58725 lt!2095533 input!5654 input!5654 lt!2095530))))

(declare-fun lt!2095523 () Unit!149766)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1996 (Regex!14021 List!58849) Unit!149766)

(assert (=> b!5099016 (= lt!2095523 (longestMatchIsAcceptedByMatchOrIsEmpty!1996 r!12920 input!5654))))

(assert (=> b!5099016 e!3180051))

(declare-fun res!2170077 () Bool)

(assert (=> b!5099016 (=> res!2170077 e!3180051)))

(assert (=> b!5099016 (= res!2170077 (isEmpty!31770 (_1!35017 lt!2095539)))))

(declare-fun findLongestMatchInnerZipper!95 ((InoxSet Context!6810) List!58849 Int List!58849 List!58849 Int) tuple2!63428)

(assert (=> b!5099016 (= lt!2095539 (findLongestMatchInnerZipper!95 z!4303 Nil!58725 lt!2095533 input!5654 input!5654 lt!2095530))))

(assert (=> b!5099016 (= lt!2095530 (size!39323 input!5654))))

(assert (=> b!5099016 (= lt!2095533 (size!39323 Nil!58725))))

(declare-fun lt!2095531 () Unit!149766)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1997 ((InoxSet Context!6810) List!58849) Unit!149766)

(assert (=> b!5099016 (= lt!2095531 (longestMatchIsAcceptedByMatchOrIsEmpty!1997 z!4303 input!5654))))

(assert (=> b!5099016 (isPrefix!5426 (_1!35017 lt!2095527) lt!2095525)))

(declare-fun lt!2095537 () Unit!149766)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3484 (List!58849 List!58849) Unit!149766)

(assert (=> b!5099016 (= lt!2095537 (lemmaConcatTwoListThenFirstIsPrefix!3484 (_1!35017 lt!2095527) (_2!35017 lt!2095527)))))

(assert (=> b!5099016 (isPrefix!5426 (_1!35017 lt!2095524) lt!2095526)))

(declare-fun lt!2095528 () Unit!149766)

(assert (=> b!5099016 (= lt!2095528 (lemmaConcatTwoListThenFirstIsPrefix!3484 (_1!35017 lt!2095524) (_2!35017 lt!2095524)))))

(declare-fun b!5099017 () Bool)

(declare-fun tp!1422016 () Bool)

(assert (=> b!5099017 (= e!3180041 tp!1422016)))

(assert (= (and start!537768 res!2170082) b!5099007))

(assert (= (and b!5099007 res!2170080) b!5099008))

(assert (= (and b!5099008 res!2170074) b!5099014))

(assert (= (and b!5099014 res!2170079) b!5099016))

(assert (= (and b!5099016 (not res!2170077)) b!5099001))

(assert (= (and b!5099016 (not res!2170083)) b!5099015))

(assert (= (and b!5099016 res!2170084) b!5099012))

(assert (= (and b!5099016 (not res!2170073)) b!5099005))

(assert (= (and b!5099005 res!2170078) b!5099000))

(assert (= (and b!5099005 (not res!2170075)) b!5099004))

(assert (= (and b!5099004 (not res!2170076)) b!5099002))

(assert (= (and b!5099002 (not res!2170081)) b!5099009))

(get-info :version)

(assert (= (and start!537768 ((_ is ElementMatch!14021) r!12920)) b!5099003))

(assert (= (and start!537768 ((_ is Concat!22866) r!12920)) b!5099010))

(assert (= (and start!537768 ((_ is Star!14021) r!12920)) b!5099011))

(assert (= (and start!537768 ((_ is Union!14021) r!12920)) b!5099006))

(assert (= (and start!537768 condSetEmpty!29128) setIsEmpty!29128))

(assert (= (and start!537768 (not condSetEmpty!29128)) setNonEmpty!29128))

(assert (= setNonEmpty!29128 b!5099017))

(assert (= (and start!537768 ((_ is Cons!58725) input!5654)) b!5099013))

(declare-fun m!6156294 () Bool)

(assert (=> setNonEmpty!29128 m!6156294))

(declare-fun m!6156296 () Bool)

(assert (=> b!5099007 m!6156296))

(declare-fun m!6156298 () Bool)

(assert (=> b!5099007 m!6156298))

(declare-fun m!6156300 () Bool)

(assert (=> b!5099008 m!6156300))

(declare-fun m!6156302 () Bool)

(assert (=> b!5099008 m!6156302))

(declare-fun m!6156304 () Bool)

(assert (=> b!5099008 m!6156304))

(declare-fun m!6156306 () Bool)

(assert (=> b!5099012 m!6156306))

(declare-fun m!6156308 () Bool)

(assert (=> b!5099016 m!6156308))

(declare-fun m!6156310 () Bool)

(assert (=> b!5099016 m!6156310))

(declare-fun m!6156312 () Bool)

(assert (=> b!5099016 m!6156312))

(declare-fun m!6156314 () Bool)

(assert (=> b!5099016 m!6156314))

(declare-fun m!6156316 () Bool)

(assert (=> b!5099016 m!6156316))

(declare-fun m!6156318 () Bool)

(assert (=> b!5099016 m!6156318))

(declare-fun m!6156320 () Bool)

(assert (=> b!5099016 m!6156320))

(declare-fun m!6156322 () Bool)

(assert (=> b!5099016 m!6156322))

(declare-fun m!6156324 () Bool)

(assert (=> b!5099016 m!6156324))

(declare-fun m!6156326 () Bool)

(assert (=> b!5099016 m!6156326))

(declare-fun m!6156328 () Bool)

(assert (=> b!5099016 m!6156328))

(declare-fun m!6156330 () Bool)

(assert (=> b!5099016 m!6156330))

(declare-fun m!6156332 () Bool)

(assert (=> b!5099016 m!6156332))

(declare-fun m!6156334 () Bool)

(assert (=> b!5099002 m!6156334))

(declare-fun m!6156336 () Bool)

(assert (=> b!5099004 m!6156336))

(declare-fun m!6156338 () Bool)

(assert (=> b!5099004 m!6156338))

(declare-fun m!6156340 () Bool)

(assert (=> b!5099004 m!6156340))

(declare-fun m!6156342 () Bool)

(assert (=> b!5099004 m!6156342))

(declare-fun m!6156344 () Bool)

(assert (=> b!5099004 m!6156344))

(declare-fun m!6156346 () Bool)

(assert (=> b!5099004 m!6156346))

(declare-fun m!6156348 () Bool)

(assert (=> b!5099000 m!6156348))

(declare-fun m!6156350 () Bool)

(assert (=> b!5099005 m!6156350))

(declare-fun m!6156352 () Bool)

(assert (=> b!5099015 m!6156352))

(declare-fun m!6156354 () Bool)

(assert (=> b!5099001 m!6156354))

(declare-fun m!6156356 () Bool)

(assert (=> b!5099014 m!6156356))

(declare-fun m!6156358 () Bool)

(assert (=> start!537768 m!6156358))

(declare-fun m!6156360 () Bool)

(assert (=> b!5099009 m!6156360))

(check-sat tp_is_empty!37307 (not b!5099004) (not b!5099008) (not b!5099000) (not b!5099007) (not b!5099013) (not b!5099001) (not b!5099016) (not b!5099012) (not b!5099002) (not b!5099010) (not b!5099014) (not b!5099017) (not b!5099011) (not start!537768) (not b!5099005) (not setNonEmpty!29128) (not b!5099009) (not b!5099015) (not b!5099006))
(check-sat)
