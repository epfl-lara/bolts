; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!538364 () Bool)

(assert start!538364)

(declare-fun b!5105455 () Bool)

(declare-fun e!3184223 () Bool)

(declare-fun tp_is_empty!37415 () Bool)

(assert (=> b!5105455 (= e!3184223 tp_is_empty!37415)))

(declare-fun b!5105456 () Bool)

(declare-fun e!3184210 () Bool)

(declare-datatypes ((C!28408 0))(
  ( (C!28409 (val!23856 Int)) )
))
(declare-datatypes ((List!59011 0))(
  ( (Nil!58887) (Cons!58887 (h!65335 C!28408) (t!372012 List!59011)) )
))
(declare-datatypes ((tuple2!63536 0))(
  ( (tuple2!63537 (_1!35071 List!59011) (_2!35071 List!59011)) )
))
(declare-fun lt!2101334 () tuple2!63536)

(declare-fun isEmpty!31820 (List!59011) Bool)

(assert (=> b!5105456 (= e!3184210 (not (isEmpty!31820 (_1!35071 lt!2101334))))))

(declare-fun b!5105457 () Bool)

(declare-fun e!3184214 () Bool)

(declare-fun input!5654 () List!59011)

(declare-fun isPrefix!5476 (List!59011 List!59011) Bool)

(assert (=> b!5105457 (= e!3184214 (isPrefix!5476 (_1!35071 lt!2101334) input!5654))))

(declare-fun lt!2101328 () tuple2!63536)

(assert (=> b!5105457 (= (_1!35071 lt!2101334) (_1!35071 lt!2101328))))

(declare-datatypes ((Unit!149944 0))(
  ( (Unit!149945) )
))
(declare-fun lt!2101327 () Unit!149944)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1311 (List!59011 List!59011 List!59011) Unit!149944)

(assert (=> b!5105457 (= lt!2101327 (lemmaIsPrefixSameLengthThenSameList!1311 (_1!35071 lt!2101334) (_1!35071 lt!2101328) input!5654))))

(declare-fun b!5105458 () Bool)

(declare-fun e!3184220 () Bool)

(declare-fun e!3184217 () Bool)

(assert (=> b!5105458 (= e!3184220 e!3184217)))

(declare-fun res!2173102 () Bool)

(assert (=> b!5105458 (=> (not res!2173102) (not e!3184217))))

(declare-datatypes ((Regex!14075 0))(
  ( (ElementMatch!14075 (c!877053 C!28408)) (Concat!22920 (regOne!28662 Regex!14075) (regTwo!28662 Regex!14075)) (EmptyExpr!14075) (Star!14075 (reg!14404 Regex!14075)) (EmptyLang!14075) (Union!14075 (regOne!28663 Regex!14075) (regTwo!28663 Regex!14075)) )
))
(declare-datatypes ((List!59012 0))(
  ( (Nil!58888) (Cons!58888 (h!65336 Regex!14075) (t!372013 List!59012)) )
))
(declare-datatypes ((Context!6918 0))(
  ( (Context!6919 (exprs!3959 List!59012)) )
))
(declare-datatypes ((List!59013 0))(
  ( (Nil!58889) (Cons!58889 (h!65337 Context!6918) (t!372014 List!59013)) )
))
(declare-fun lt!2101330 () List!59013)

(declare-fun r!12920 () Regex!14075)

(declare-fun unfocusZipper!417 (List!59013) Regex!14075)

(assert (=> b!5105458 (= res!2173102 (= (unfocusZipper!417 lt!2101330) r!12920))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4303 () (InoxSet Context!6918))

(declare-fun toList!8209 ((InoxSet Context!6918)) List!59013)

(assert (=> b!5105458 (= lt!2101330 (toList!8209 z!4303))))

(declare-fun b!5105459 () Bool)

(declare-fun e!3184216 () Bool)

(declare-fun e!3184211 () Bool)

(assert (=> b!5105459 (= e!3184216 (not e!3184211))))

(declare-fun res!2173096 () Bool)

(assert (=> b!5105459 (=> res!2173096 e!3184211)))

(assert (=> b!5105459 (= res!2173096 e!3184210)))

(declare-fun res!2173099 () Bool)

(assert (=> b!5105459 (=> (not res!2173099) (not e!3184210))))

(declare-fun lt!2101319 () Bool)

(assert (=> b!5105459 (= res!2173099 (not lt!2101319))))

(declare-fun matchZipper!747 ((InoxSet Context!6918) List!59011) Bool)

(assert (=> b!5105459 (= lt!2101319 (matchZipper!747 z!4303 (_1!35071 lt!2101334)))))

(declare-fun e!3184222 () Bool)

(assert (=> b!5105459 e!3184222))

(declare-fun res!2173094 () Bool)

(assert (=> b!5105459 (=> res!2173094 e!3184222)))

(declare-fun lt!2101332 () tuple2!63536)

(assert (=> b!5105459 (= res!2173094 (isEmpty!31820 (_1!35071 lt!2101332)))))

(declare-fun lt!2101324 () Int)

(declare-fun lt!2101321 () Int)

(declare-fun findLongestMatchInner!2088 (Regex!14075 List!59011 Int List!59011 List!59011 Int) tuple2!63536)

(assert (=> b!5105459 (= lt!2101332 (findLongestMatchInner!2088 r!12920 Nil!58887 lt!2101324 input!5654 input!5654 lt!2101321))))

(declare-fun lt!2101323 () Unit!149944)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2096 (Regex!14075 List!59011) Unit!149944)

(assert (=> b!5105459 (= lt!2101323 (longestMatchIsAcceptedByMatchOrIsEmpty!2096 r!12920 input!5654))))

(declare-fun e!3184221 () Bool)

(assert (=> b!5105459 e!3184221))

(declare-fun res!2173095 () Bool)

(assert (=> b!5105459 (=> res!2173095 e!3184221)))

(declare-fun lt!2101333 () tuple2!63536)

(assert (=> b!5105459 (= res!2173095 (isEmpty!31820 (_1!35071 lt!2101333)))))

(declare-fun findLongestMatchInnerZipper!149 ((InoxSet Context!6918) List!59011 Int List!59011 List!59011 Int) tuple2!63536)

(assert (=> b!5105459 (= lt!2101333 (findLongestMatchInnerZipper!149 z!4303 Nil!58887 lt!2101324 input!5654 input!5654 lt!2101321))))

(declare-fun size!39377 (List!59011) Int)

(assert (=> b!5105459 (= lt!2101321 (size!39377 input!5654))))

(assert (=> b!5105459 (= lt!2101324 (size!39377 Nil!58887))))

(declare-fun lt!2101315 () Unit!149944)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2097 ((InoxSet Context!6918) List!59011) Unit!149944)

(assert (=> b!5105459 (= lt!2101315 (longestMatchIsAcceptedByMatchOrIsEmpty!2097 z!4303 input!5654))))

(declare-fun lt!2101317 () List!59011)

(assert (=> b!5105459 (isPrefix!5476 (_1!35071 lt!2101328) lt!2101317)))

(declare-fun lt!2101329 () Unit!149944)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3534 (List!59011 List!59011) Unit!149944)

(assert (=> b!5105459 (= lt!2101329 (lemmaConcatTwoListThenFirstIsPrefix!3534 (_1!35071 lt!2101328) (_2!35071 lt!2101328)))))

(declare-fun lt!2101318 () List!59011)

(assert (=> b!5105459 (isPrefix!5476 (_1!35071 lt!2101334) lt!2101318)))

(declare-fun lt!2101322 () Unit!149944)

(assert (=> b!5105459 (= lt!2101322 (lemmaConcatTwoListThenFirstIsPrefix!3534 (_1!35071 lt!2101334) (_2!35071 lt!2101334)))))

(declare-fun b!5105460 () Bool)

(declare-fun e!3184218 () Bool)

(assert (=> b!5105460 (= e!3184218 e!3184216)))

(declare-fun res!2173097 () Bool)

(assert (=> b!5105460 (=> (not res!2173097) (not e!3184216))))

(assert (=> b!5105460 (= res!2173097 (= lt!2101317 input!5654))))

(declare-fun ++!12924 (List!59011 List!59011) List!59011)

(assert (=> b!5105460 (= lt!2101317 (++!12924 (_1!35071 lt!2101328) (_2!35071 lt!2101328)))))

(declare-fun b!5105461 () Bool)

(declare-fun matchR!6860 (Regex!14075 List!59011) Bool)

(assert (=> b!5105461 (= e!3184222 (matchR!6860 r!12920 (_1!35071 lt!2101332)))))

(declare-fun b!5105462 () Bool)

(assert (=> b!5105462 (= e!3184217 e!3184218)))

(declare-fun res!2173101 () Bool)

(assert (=> b!5105462 (=> (not res!2173101) (not e!3184218))))

(assert (=> b!5105462 (= res!2173101 (= lt!2101318 input!5654))))

(assert (=> b!5105462 (= lt!2101318 (++!12924 (_1!35071 lt!2101334) (_2!35071 lt!2101334)))))

(declare-fun findLongestMatch!1905 (Regex!14075 List!59011) tuple2!63536)

(assert (=> b!5105462 (= lt!2101328 (findLongestMatch!1905 r!12920 input!5654))))

(declare-fun findLongestMatchZipper!99 ((InoxSet Context!6918) List!59011) tuple2!63536)

(assert (=> b!5105462 (= lt!2101334 (findLongestMatchZipper!99 z!4303 input!5654))))

(declare-fun b!5105463 () Bool)

(declare-fun tp!1424116 () Bool)

(declare-fun tp!1424115 () Bool)

(assert (=> b!5105463 (= e!3184223 (and tp!1424116 tp!1424115))))

(declare-fun b!5105464 () Bool)

(declare-fun e!3184219 () Bool)

(declare-fun tp!1424117 () Bool)

(assert (=> b!5105464 (= e!3184219 (and tp_is_empty!37415 tp!1424117))))

(declare-fun b!5105465 () Bool)

(declare-fun tp!1424119 () Bool)

(assert (=> b!5105465 (= e!3184223 tp!1424119)))

(declare-fun b!5105466 () Bool)

(declare-fun e!3184213 () Bool)

(declare-fun tp!1424112 () Bool)

(assert (=> b!5105466 (= e!3184213 tp!1424112)))

(declare-fun b!5105467 () Bool)

(declare-fun tp!1424113 () Bool)

(declare-fun tp!1424118 () Bool)

(assert (=> b!5105467 (= e!3184223 (and tp!1424113 tp!1424118))))

(declare-fun b!5105468 () Bool)

(declare-fun e!3184215 () Bool)

(assert (=> b!5105468 (= e!3184211 e!3184215)))

(declare-fun res!2173092 () Bool)

(assert (=> b!5105468 (=> res!2173092 e!3184215)))

(declare-fun e!3184212 () Bool)

(assert (=> b!5105468 (= res!2173092 e!3184212)))

(declare-fun res!2173093 () Bool)

(assert (=> b!5105468 (=> (not res!2173093) (not e!3184212))))

(declare-fun lt!2101325 () Bool)

(assert (=> b!5105468 (= res!2173093 (not lt!2101325))))

(assert (=> b!5105468 (= lt!2101325 (matchR!6860 r!12920 (_1!35071 lt!2101328)))))

(declare-fun b!5105469 () Bool)

(assert (=> b!5105469 (= e!3184215 e!3184214)))

(declare-fun res!2173100 () Bool)

(assert (=> b!5105469 (=> res!2173100 e!3184214)))

(declare-fun lt!2101320 () Int)

(declare-fun lt!2101331 () Int)

(assert (=> b!5105469 (= res!2173100 (or (> lt!2101320 lt!2101331) (> lt!2101331 lt!2101320)))))

(assert (=> b!5105469 (= lt!2101331 (size!39377 (_1!35071 lt!2101334)))))

(assert (=> b!5105469 (= lt!2101320 (size!39377 (_1!35071 lt!2101328)))))

(assert (=> b!5105469 (= (matchR!6860 r!12920 (_1!35071 lt!2101334)) lt!2101319)))

(declare-fun lt!2101316 () Unit!149944)

(declare-fun theoremZipperRegexEquiv!239 ((InoxSet Context!6918) List!59013 Regex!14075 List!59011) Unit!149944)

(assert (=> b!5105469 (= lt!2101316 (theoremZipperRegexEquiv!239 z!4303 lt!2101330 r!12920 (_1!35071 lt!2101334)))))

(assert (=> b!5105469 (= lt!2101325 (matchZipper!747 z!4303 (_1!35071 lt!2101328)))))

(declare-fun lt!2101326 () Unit!149944)

(assert (=> b!5105469 (= lt!2101326 (theoremZipperRegexEquiv!239 z!4303 lt!2101330 r!12920 (_1!35071 lt!2101328)))))

(declare-fun b!5105470 () Bool)

(assert (=> b!5105470 (= e!3184221 (matchZipper!747 z!4303 (_1!35071 lt!2101333)))))

(declare-fun b!5105471 () Bool)

(assert (=> b!5105471 (= e!3184212 (not (isEmpty!31820 (_1!35071 lt!2101328))))))

(declare-fun setIsEmpty!29338 () Bool)

(declare-fun setRes!29338 () Bool)

(assert (=> setIsEmpty!29338 setRes!29338))

(declare-fun res!2173098 () Bool)

(assert (=> start!538364 (=> (not res!2173098) (not e!3184220))))

(declare-fun validRegex!6202 (Regex!14075) Bool)

(assert (=> start!538364 (= res!2173098 (validRegex!6202 r!12920))))

(assert (=> start!538364 e!3184220))

(assert (=> start!538364 e!3184223))

(declare-fun condSetEmpty!29338 () Bool)

(assert (=> start!538364 (= condSetEmpty!29338 (= z!4303 ((as const (Array Context!6918 Bool)) false)))))

(assert (=> start!538364 setRes!29338))

(assert (=> start!538364 e!3184219))

(declare-fun setNonEmpty!29338 () Bool)

(declare-fun setElem!29338 () Context!6918)

(declare-fun tp!1424114 () Bool)

(declare-fun inv!78362 (Context!6918) Bool)

(assert (=> setNonEmpty!29338 (= setRes!29338 (and tp!1424114 (inv!78362 setElem!29338) e!3184213))))

(declare-fun setRest!29338 () (InoxSet Context!6918))

(assert (=> setNonEmpty!29338 (= z!4303 ((_ map or) (store ((as const (Array Context!6918 Bool)) false) setElem!29338 true) setRest!29338))))

(assert (= (and start!538364 res!2173098) b!5105458))

(assert (= (and b!5105458 res!2173102) b!5105462))

(assert (= (and b!5105462 res!2173101) b!5105460))

(assert (= (and b!5105460 res!2173097) b!5105459))

(assert (= (and b!5105459 (not res!2173095)) b!5105470))

(assert (= (and b!5105459 (not res!2173094)) b!5105461))

(assert (= (and b!5105459 res!2173099) b!5105456))

(assert (= (and b!5105459 (not res!2173096)) b!5105468))

(assert (= (and b!5105468 res!2173093) b!5105471))

(assert (= (and b!5105468 (not res!2173092)) b!5105469))

(assert (= (and b!5105469 (not res!2173100)) b!5105457))

(get-info :version)

(assert (= (and start!538364 ((_ is ElementMatch!14075) r!12920)) b!5105455))

(assert (= (and start!538364 ((_ is Concat!22920) r!12920)) b!5105467))

(assert (= (and start!538364 ((_ is Star!14075) r!12920)) b!5105465))

(assert (= (and start!538364 ((_ is Union!14075) r!12920)) b!5105463))

(assert (= (and start!538364 condSetEmpty!29338) setIsEmpty!29338))

(assert (= (and start!538364 (not condSetEmpty!29338)) setNonEmpty!29338))

(assert (= setNonEmpty!29338 b!5105466))

(assert (= (and start!538364 ((_ is Cons!58887) input!5654)) b!5105464))

(declare-fun m!6162782 () Bool)

(assert (=> b!5105470 m!6162782))

(declare-fun m!6162784 () Bool)

(assert (=> b!5105469 m!6162784))

(declare-fun m!6162786 () Bool)

(assert (=> b!5105469 m!6162786))

(declare-fun m!6162788 () Bool)

(assert (=> b!5105469 m!6162788))

(declare-fun m!6162790 () Bool)

(assert (=> b!5105469 m!6162790))

(declare-fun m!6162792 () Bool)

(assert (=> b!5105469 m!6162792))

(declare-fun m!6162794 () Bool)

(assert (=> b!5105469 m!6162794))

(declare-fun m!6162796 () Bool)

(assert (=> b!5105471 m!6162796))

(declare-fun m!6162798 () Bool)

(assert (=> b!5105468 m!6162798))

(declare-fun m!6162800 () Bool)

(assert (=> b!5105461 m!6162800))

(declare-fun m!6162802 () Bool)

(assert (=> start!538364 m!6162802))

(declare-fun m!6162804 () Bool)

(assert (=> b!5105462 m!6162804))

(declare-fun m!6162806 () Bool)

(assert (=> b!5105462 m!6162806))

(declare-fun m!6162808 () Bool)

(assert (=> b!5105462 m!6162808))

(declare-fun m!6162810 () Bool)

(assert (=> setNonEmpty!29338 m!6162810))

(declare-fun m!6162812 () Bool)

(assert (=> b!5105460 m!6162812))

(declare-fun m!6162814 () Bool)

(assert (=> b!5105459 m!6162814))

(declare-fun m!6162816 () Bool)

(assert (=> b!5105459 m!6162816))

(declare-fun m!6162818 () Bool)

(assert (=> b!5105459 m!6162818))

(declare-fun m!6162820 () Bool)

(assert (=> b!5105459 m!6162820))

(declare-fun m!6162822 () Bool)

(assert (=> b!5105459 m!6162822))

(declare-fun m!6162824 () Bool)

(assert (=> b!5105459 m!6162824))

(declare-fun m!6162826 () Bool)

(assert (=> b!5105459 m!6162826))

(declare-fun m!6162828 () Bool)

(assert (=> b!5105459 m!6162828))

(declare-fun m!6162830 () Bool)

(assert (=> b!5105459 m!6162830))

(declare-fun m!6162832 () Bool)

(assert (=> b!5105459 m!6162832))

(declare-fun m!6162834 () Bool)

(assert (=> b!5105459 m!6162834))

(declare-fun m!6162836 () Bool)

(assert (=> b!5105459 m!6162836))

(declare-fun m!6162838 () Bool)

(assert (=> b!5105459 m!6162838))

(declare-fun m!6162840 () Bool)

(assert (=> b!5105456 m!6162840))

(declare-fun m!6162842 () Bool)

(assert (=> b!5105457 m!6162842))

(declare-fun m!6162844 () Bool)

(assert (=> b!5105457 m!6162844))

(declare-fun m!6162846 () Bool)

(assert (=> b!5105458 m!6162846))

(declare-fun m!6162848 () Bool)

(assert (=> b!5105458 m!6162848))

(check-sat (not b!5105471) (not b!5105460) (not b!5105464) (not b!5105457) tp_is_empty!37415 (not b!5105462) (not b!5105469) (not b!5105456) (not start!538364) (not b!5105467) (not b!5105470) (not setNonEmpty!29338) (not b!5105463) (not b!5105466) (not b!5105458) (not b!5105459) (not b!5105468) (not b!5105461) (not b!5105465))
(check-sat)
