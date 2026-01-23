; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!546432 () Bool)

(assert start!546432)

(declare-fun b!5165051 () Bool)

(declare-fun e!3218303 () Bool)

(declare-fun tp_is_empty!38391 () Bool)

(declare-fun tp!1448917 () Bool)

(assert (=> b!5165051 (= e!3218303 (and tp_is_empty!38391 tp!1448917))))

(declare-fun e!3218304 () Bool)

(declare-fun setNonEmpty!31611 () Bool)

(declare-fun setRes!31611 () Bool)

(declare-datatypes ((C!29408 0))(
  ( (C!29409 (val!24406 Int)) )
))
(declare-datatypes ((Regex!14569 0))(
  ( (ElementMatch!14569 (c!888640 C!29408)) (Concat!23414 (regOne!29650 Regex!14569) (regTwo!29650 Regex!14569)) (EmptyExpr!14569) (Star!14569 (reg!14898 Regex!14569)) (EmptyLang!14569) (Union!14569 (regOne!29651 Regex!14569) (regTwo!29651 Regex!14569)) )
))
(declare-datatypes ((List!60093 0))(
  ( (Nil!59969) (Cons!59969 (h!66417 Regex!14569) (t!373246 List!60093)) )
))
(declare-datatypes ((Context!7906 0))(
  ( (Context!7907 (exprs!4453 List!60093)) )
))
(declare-fun setElem!31611 () Context!7906)

(declare-fun tp!1448919 () Bool)

(declare-fun inv!79669 (Context!7906) Bool)

(assert (=> setNonEmpty!31611 (= setRes!31611 (and tp!1448919 (inv!79669 setElem!31611) e!3218304))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4581 () (InoxSet Context!7906))

(declare-fun setRest!31612 () (InoxSet Context!7906))

(assert (=> setNonEmpty!31611 (= z!4581 ((_ map or) (store ((as const (Array Context!7906 Bool)) false) setElem!31611 true) setRest!31612))))

(declare-fun setIsEmpty!31611 () Bool)

(assert (=> setIsEmpty!31611 setRes!31611))

(declare-fun b!5165052 () Bool)

(declare-fun tp!1448918 () Bool)

(assert (=> b!5165052 (= e!3218304 tp!1448918)))

(declare-fun setElem!31612 () Context!7906)

(declare-fun setRes!31612 () Bool)

(declare-fun setNonEmpty!31612 () Bool)

(declare-fun tp!1448916 () Bool)

(declare-fun e!3218301 () Bool)

(assert (=> setNonEmpty!31612 (= setRes!31612 (and tp!1448916 (inv!79669 setElem!31612) e!3218301))))

(declare-fun baseZ!62 () (InoxSet Context!7906))

(declare-fun setRest!31611 () (InoxSet Context!7906))

(assert (=> setNonEmpty!31612 (= baseZ!62 ((_ map or) (store ((as const (Array Context!7906 Bool)) false) setElem!31612 true) setRest!31611))))

(declare-fun b!5165053 () Bool)

(declare-fun e!3218300 () Bool)

(declare-fun e!3218305 () Bool)

(assert (=> b!5165053 (= e!3218300 e!3218305)))

(declare-fun res!2195734 () Bool)

(assert (=> b!5165053 (=> (not res!2195734) (not e!3218305))))

(declare-datatypes ((List!60094 0))(
  ( (Nil!59970) (Cons!59970 (h!66418 C!29408) (t!373247 List!60094)) )
))
(declare-fun input!5817 () List!60094)

(declare-fun lt!2124145 () List!60094)

(declare-fun testedP!294 () List!60094)

(declare-fun lt!2124147 () Int)

(declare-fun isEmpty!32107 (List!60094) Bool)

(declare-datatypes ((tuple2!63692 0))(
  ( (tuple2!63693 (_1!35149 List!60094) (_2!35149 List!60094)) )
))
(declare-fun findLongestMatchInnerZipper!227 ((InoxSet Context!7906) List!60094 Int List!60094 List!60094 Int) tuple2!63692)

(declare-fun size!39605 (List!60094) Int)

(assert (=> b!5165053 (= res!2195734 (not (isEmpty!32107 (_1!35149 (findLongestMatchInnerZipper!227 z!4581 testedP!294 lt!2124147 lt!2124145 input!5817 (size!39605 input!5817))))))))

(declare-fun getSuffix!3352 (List!60094 List!60094) List!60094)

(assert (=> b!5165053 (= lt!2124145 (getSuffix!3352 input!5817 testedP!294))))

(assert (=> b!5165053 (= lt!2124147 (size!39605 testedP!294))))

(declare-fun b!5165054 () Bool)

(declare-fun e!3218302 () Bool)

(assert (=> b!5165054 (= e!3218302 e!3218300)))

(declare-fun res!2195733 () Bool)

(assert (=> b!5165054 (=> (not res!2195733) (not e!3218300))))

(declare-fun lt!2124146 () (InoxSet Context!7906))

(assert (=> b!5165054 (= res!2195733 (= lt!2124146 z!4581))))

(declare-fun derivationZipper!192 ((InoxSet Context!7906) List!60094) (InoxSet Context!7906))

(assert (=> b!5165054 (= lt!2124146 (derivationZipper!192 baseZ!62 testedP!294))))

(declare-fun b!5165055 () Bool)

(declare-fun e!3218306 () Bool)

(declare-fun tp!1448915 () Bool)

(assert (=> b!5165055 (= e!3218306 (and tp_is_empty!38391 tp!1448915))))

(declare-fun setIsEmpty!31612 () Bool)

(assert (=> setIsEmpty!31612 setRes!31612))

(declare-fun res!2195730 () Bool)

(assert (=> start!546432 (=> (not res!2195730) (not e!3218302))))

(declare-fun isPrefix!5702 (List!60094 List!60094) Bool)

(assert (=> start!546432 (= res!2195730 (isPrefix!5702 testedP!294 input!5817))))

(assert (=> start!546432 e!3218302))

(assert (=> start!546432 e!3218306))

(assert (=> start!546432 e!3218303))

(declare-fun condSetEmpty!31612 () Bool)

(assert (=> start!546432 (= condSetEmpty!31612 (= z!4581 ((as const (Array Context!7906 Bool)) false)))))

(assert (=> start!546432 setRes!31611))

(declare-fun condSetEmpty!31611 () Bool)

(assert (=> start!546432 (= condSetEmpty!31611 (= baseZ!62 ((as const (Array Context!7906 Bool)) false)))))

(assert (=> start!546432 setRes!31612))

(declare-fun b!5165056 () Bool)

(declare-fun res!2195731 () Bool)

(assert (=> b!5165056 (=> (not res!2195731) (not e!3218305))))

(assert (=> b!5165056 (= res!2195731 (= testedP!294 input!5817))))

(declare-fun b!5165057 () Bool)

(declare-fun res!2195732 () Bool)

(assert (=> b!5165057 (=> (not res!2195732) (not e!3218305))))

(declare-fun nullableZipper!1125 ((InoxSet Context!7906)) Bool)

(assert (=> b!5165057 (= res!2195732 (nullableZipper!1125 z!4581))))

(declare-fun b!5165058 () Bool)

(declare-fun ++!13105 (List!60094 List!60094) List!60094)

(assert (=> b!5165058 (= e!3218305 (not (= (++!13105 testedP!294 lt!2124145) input!5817)))))

(declare-fun matchZipper!953 ((InoxSet Context!7906) List!60094) Bool)

(assert (=> b!5165058 (= (matchZipper!953 baseZ!62 testedP!294) (matchZipper!953 lt!2124146 Nil!59970))))

(declare-datatypes ((Unit!151412 0))(
  ( (Unit!151413) )
))
(declare-fun lt!2124148 () Unit!151412)

(declare-fun lemmaMatchZipperIsSameAsWholeDerivativeAndNil!34 ((InoxSet Context!7906) List!60094) Unit!151412)

(assert (=> b!5165058 (= lt!2124148 (lemmaMatchZipperIsSameAsWholeDerivativeAndNil!34 baseZ!62 testedP!294))))

(declare-fun b!5165059 () Bool)

(declare-fun tp!1448914 () Bool)

(assert (=> b!5165059 (= e!3218301 tp!1448914)))

(assert (= (and start!546432 res!2195730) b!5165054))

(assert (= (and b!5165054 res!2195733) b!5165053))

(assert (= (and b!5165053 res!2195734) b!5165056))

(assert (= (and b!5165056 res!2195731) b!5165057))

(assert (= (and b!5165057 res!2195732) b!5165058))

(get-info :version)

(assert (= (and start!546432 ((_ is Cons!59970) testedP!294)) b!5165055))

(assert (= (and start!546432 ((_ is Cons!59970) input!5817)) b!5165051))

(assert (= (and start!546432 condSetEmpty!31612) setIsEmpty!31611))

(assert (= (and start!546432 (not condSetEmpty!31612)) setNonEmpty!31611))

(assert (= setNonEmpty!31611 b!5165052))

(assert (= (and start!546432 condSetEmpty!31611) setIsEmpty!31612))

(assert (= (and start!546432 (not condSetEmpty!31611)) setNonEmpty!31612))

(assert (= setNonEmpty!31612 b!5165059))

(declare-fun m!6215548 () Bool)

(assert (=> b!5165057 m!6215548))

(declare-fun m!6215550 () Bool)

(assert (=> b!5165054 m!6215550))

(declare-fun m!6215552 () Bool)

(assert (=> b!5165058 m!6215552))

(declare-fun m!6215554 () Bool)

(assert (=> b!5165058 m!6215554))

(declare-fun m!6215556 () Bool)

(assert (=> b!5165058 m!6215556))

(declare-fun m!6215558 () Bool)

(assert (=> b!5165058 m!6215558))

(declare-fun m!6215560 () Bool)

(assert (=> b!5165053 m!6215560))

(declare-fun m!6215562 () Bool)

(assert (=> b!5165053 m!6215562))

(declare-fun m!6215564 () Bool)

(assert (=> b!5165053 m!6215564))

(declare-fun m!6215566 () Bool)

(assert (=> b!5165053 m!6215566))

(declare-fun m!6215568 () Bool)

(assert (=> b!5165053 m!6215568))

(assert (=> b!5165053 m!6215560))

(declare-fun m!6215570 () Bool)

(assert (=> setNonEmpty!31611 m!6215570))

(declare-fun m!6215572 () Bool)

(assert (=> start!546432 m!6215572))

(declare-fun m!6215574 () Bool)

(assert (=> setNonEmpty!31612 m!6215574))

(check-sat (not b!5165057) (not b!5165052) tp_is_empty!38391 (not b!5165054) (not b!5165051) (not b!5165058) (not b!5165059) (not b!5165055) (not setNonEmpty!31611) (not start!546432) (not b!5165053) (not setNonEmpty!31612))
(check-sat)
(get-model)

(declare-fun d!1666408 () Bool)

(declare-fun lt!2124151 () Int)

(assert (=> d!1666408 (>= lt!2124151 0)))

(declare-fun e!3218309 () Int)

(assert (=> d!1666408 (= lt!2124151 e!3218309)))

(declare-fun c!888643 () Bool)

(assert (=> d!1666408 (= c!888643 ((_ is Nil!59970) input!5817))))

(assert (=> d!1666408 (= (size!39605 input!5817) lt!2124151)))

(declare-fun b!5165064 () Bool)

(assert (=> b!5165064 (= e!3218309 0)))

(declare-fun b!5165065 () Bool)

(assert (=> b!5165065 (= e!3218309 (+ 1 (size!39605 (t!373247 input!5817))))))

(assert (= (and d!1666408 c!888643) b!5165064))

(assert (= (and d!1666408 (not c!888643)) b!5165065))

(declare-fun m!6215576 () Bool)

(assert (=> b!5165065 m!6215576))

(assert (=> b!5165053 d!1666408))

(declare-fun d!1666410 () Bool)

(declare-fun lt!2124154 () List!60094)

(assert (=> d!1666410 (= (++!13105 testedP!294 lt!2124154) input!5817)))

(declare-fun e!3218312 () List!60094)

(assert (=> d!1666410 (= lt!2124154 e!3218312)))

(declare-fun c!888646 () Bool)

(assert (=> d!1666410 (= c!888646 ((_ is Cons!59970) testedP!294))))

(assert (=> d!1666410 (>= (size!39605 input!5817) (size!39605 testedP!294))))

(assert (=> d!1666410 (= (getSuffix!3352 input!5817 testedP!294) lt!2124154)))

(declare-fun b!5165070 () Bool)

(declare-fun tail!10120 (List!60094) List!60094)

(assert (=> b!5165070 (= e!3218312 (getSuffix!3352 (tail!10120 input!5817) (t!373247 testedP!294)))))

(declare-fun b!5165071 () Bool)

(assert (=> b!5165071 (= e!3218312 input!5817)))

(assert (= (and d!1666410 c!888646) b!5165070))

(assert (= (and d!1666410 (not c!888646)) b!5165071))

(declare-fun m!6215578 () Bool)

(assert (=> d!1666410 m!6215578))

(assert (=> d!1666410 m!6215560))

(assert (=> d!1666410 m!6215566))

(declare-fun m!6215580 () Bool)

(assert (=> b!5165070 m!6215580))

(assert (=> b!5165070 m!6215580))

(declare-fun m!6215582 () Bool)

(assert (=> b!5165070 m!6215582))

(assert (=> b!5165053 d!1666410))

(declare-fun d!1666414 () Bool)

(declare-fun lt!2124155 () Int)

(assert (=> d!1666414 (>= lt!2124155 0)))

(declare-fun e!3218315 () Int)

(assert (=> d!1666414 (= lt!2124155 e!3218315)))

(declare-fun c!888649 () Bool)

(assert (=> d!1666414 (= c!888649 ((_ is Nil!59970) testedP!294))))

(assert (=> d!1666414 (= (size!39605 testedP!294) lt!2124155)))

(declare-fun b!5165076 () Bool)

(assert (=> b!5165076 (= e!3218315 0)))

(declare-fun b!5165077 () Bool)

(assert (=> b!5165077 (= e!3218315 (+ 1 (size!39605 (t!373247 testedP!294))))))

(assert (= (and d!1666414 c!888649) b!5165076))

(assert (= (and d!1666414 (not c!888649)) b!5165077))

(declare-fun m!6215584 () Bool)

(assert (=> b!5165077 m!6215584))

(assert (=> b!5165053 d!1666414))

(declare-fun bm!362295 () Bool)

(declare-fun call!362302 () Unit!151412)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1362 (List!60094 List!60094 List!60094) Unit!151412)

(assert (=> bm!362295 (= call!362302 (lemmaIsPrefixSameLengthThenSameList!1362 input!5817 testedP!294 input!5817))))

(declare-fun bm!362296 () Bool)

(declare-fun call!362301 () (InoxSet Context!7906))

(declare-fun call!362306 () C!29408)

(declare-fun derivationStepZipper!943 ((InoxSet Context!7906) C!29408) (InoxSet Context!7906))

(assert (=> bm!362296 (= call!362301 (derivationStepZipper!943 z!4581 call!362306))))

(declare-fun b!5165120 () Bool)

(declare-fun c!888667 () Bool)

(declare-fun call!362304 () Bool)

(assert (=> b!5165120 (= c!888667 call!362304)))

(declare-fun lt!2124229 () Unit!151412)

(declare-fun lt!2124232 () Unit!151412)

(assert (=> b!5165120 (= lt!2124229 lt!2124232)))

(assert (=> b!5165120 (= input!5817 testedP!294)))

(assert (=> b!5165120 (= lt!2124232 call!362302)))

(declare-fun lt!2124228 () Unit!151412)

(declare-fun lt!2124236 () Unit!151412)

(assert (=> b!5165120 (= lt!2124228 lt!2124236)))

(declare-fun call!362300 () Bool)

(assert (=> b!5165120 call!362300))

(declare-fun call!362307 () Unit!151412)

(assert (=> b!5165120 (= lt!2124236 call!362307)))

(declare-fun e!3218348 () tuple2!63692)

(declare-fun e!3218342 () tuple2!63692)

(assert (=> b!5165120 (= e!3218348 e!3218342)))

(declare-fun b!5165121 () Bool)

(declare-fun e!3218343 () tuple2!63692)

(assert (=> b!5165121 (= e!3218343 e!3218348)))

(declare-fun c!888664 () Bool)

(assert (=> b!5165121 (= c!888664 (= lt!2124147 (size!39605 input!5817)))))

(declare-fun b!5165122 () Bool)

(declare-fun e!3218344 () Bool)

(declare-fun lt!2124234 () tuple2!63692)

(assert (=> b!5165122 (= e!3218344 (>= (size!39605 (_1!35149 lt!2124234)) (size!39605 testedP!294)))))

(declare-fun b!5165123 () Bool)

(declare-fun e!3218347 () Bool)

(assert (=> b!5165123 (= e!3218347 e!3218344)))

(declare-fun res!2195751 () Bool)

(assert (=> b!5165123 (=> res!2195751 e!3218344)))

(assert (=> b!5165123 (= res!2195751 (isEmpty!32107 (_1!35149 lt!2124234)))))

(declare-fun bm!362298 () Bool)

(declare-fun call!362305 () tuple2!63692)

(declare-fun call!362303 () List!60094)

(declare-fun lt!2124215 () List!60094)

(assert (=> bm!362298 (= call!362305 (findLongestMatchInnerZipper!227 call!362301 lt!2124215 (+ lt!2124147 1) call!362303 input!5817 (size!39605 input!5817)))))

(declare-fun b!5165124 () Bool)

(declare-fun e!3218345 () tuple2!63692)

(assert (=> b!5165124 (= e!3218345 call!362305)))

(declare-fun bm!362299 () Bool)

(assert (=> bm!362299 (= call!362303 (tail!10120 lt!2124145))))

(declare-fun b!5165125 () Bool)

(declare-fun e!3218346 () tuple2!63692)

(declare-fun lt!2124219 () tuple2!63692)

(assert (=> b!5165125 (= e!3218346 lt!2124219)))

(declare-fun bm!362300 () Bool)

(declare-fun head!11009 (List!60094) C!29408)

(assert (=> bm!362300 (= call!362306 (head!11009 lt!2124145))))

(declare-fun b!5165126 () Bool)

(assert (=> b!5165126 (= e!3218342 (tuple2!63693 testedP!294 Nil!59970))))

(declare-fun bm!362301 () Bool)

(assert (=> bm!362301 (= call!362300 (isPrefix!5702 input!5817 input!5817))))

(declare-fun b!5165127 () Bool)

(assert (=> b!5165127 (= e!3218345 e!3218346)))

(assert (=> b!5165127 (= lt!2124219 call!362305)))

(declare-fun c!888668 () Bool)

(assert (=> b!5165127 (= c!888668 (isEmpty!32107 (_1!35149 lt!2124219)))))

(declare-fun b!5165128 () Bool)

(declare-fun e!3218349 () Unit!151412)

(declare-fun Unit!151417 () Unit!151412)

(assert (=> b!5165128 (= e!3218349 Unit!151417)))

(declare-fun lt!2124213 () Unit!151412)

(assert (=> b!5165128 (= lt!2124213 call!362307)))

(assert (=> b!5165128 call!362300))

(declare-fun lt!2124235 () Unit!151412)

(assert (=> b!5165128 (= lt!2124235 lt!2124213)))

(declare-fun lt!2124214 () Unit!151412)

(assert (=> b!5165128 (= lt!2124214 call!362302)))

(assert (=> b!5165128 (= input!5817 testedP!294)))

(declare-fun lt!2124218 () Unit!151412)

(assert (=> b!5165128 (= lt!2124218 lt!2124214)))

(assert (=> b!5165128 false))

(declare-fun b!5165129 () Bool)

(declare-fun c!888665 () Bool)

(assert (=> b!5165129 (= c!888665 call!362304)))

(declare-fun lt!2124216 () Unit!151412)

(declare-fun lt!2124230 () Unit!151412)

(assert (=> b!5165129 (= lt!2124216 lt!2124230)))

(declare-fun lt!2124233 () List!60094)

(declare-fun lt!2124227 () C!29408)

(assert (=> b!5165129 (= (++!13105 (++!13105 testedP!294 (Cons!59970 lt!2124227 Nil!59970)) lt!2124233) input!5817)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1558 (List!60094 C!29408 List!60094 List!60094) Unit!151412)

(assert (=> b!5165129 (= lt!2124230 (lemmaMoveElementToOtherListKeepsConcatEq!1558 testedP!294 lt!2124227 lt!2124233 input!5817))))

(assert (=> b!5165129 (= lt!2124233 (tail!10120 lt!2124145))))

(assert (=> b!5165129 (= lt!2124227 (head!11009 lt!2124145))))

(declare-fun lt!2124222 () Unit!151412)

(declare-fun lt!2124220 () Unit!151412)

(assert (=> b!5165129 (= lt!2124222 lt!2124220)))

(assert (=> b!5165129 (isPrefix!5702 (++!13105 testedP!294 (Cons!59970 (head!11009 (getSuffix!3352 input!5817 testedP!294)) Nil!59970)) input!5817)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1033 (List!60094 List!60094) Unit!151412)

(assert (=> b!5165129 (= lt!2124220 (lemmaAddHeadSuffixToPrefixStillPrefix!1033 testedP!294 input!5817))))

(assert (=> b!5165129 (= lt!2124215 (++!13105 testedP!294 (Cons!59970 (head!11009 lt!2124145) Nil!59970)))))

(declare-fun lt!2124221 () Unit!151412)

(assert (=> b!5165129 (= lt!2124221 e!3218349)))

(declare-fun c!888666 () Bool)

(assert (=> b!5165129 (= c!888666 (= (size!39605 testedP!294) (size!39605 input!5817)))))

(declare-fun lt!2124231 () Unit!151412)

(declare-fun lt!2124226 () Unit!151412)

(assert (=> b!5165129 (= lt!2124231 lt!2124226)))

(assert (=> b!5165129 (<= (size!39605 testedP!294) (size!39605 input!5817))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!873 (List!60094 List!60094) Unit!151412)

(assert (=> b!5165129 (= lt!2124226 (lemmaIsPrefixThenSmallerEqSize!873 testedP!294 input!5817))))

(assert (=> b!5165129 (= e!3218348 e!3218345)))

(declare-fun b!5165130 () Bool)

(assert (=> b!5165130 (= e!3218346 (tuple2!63693 testedP!294 lt!2124145))))

(declare-fun b!5165131 () Bool)

(assert (=> b!5165131 (= e!3218343 (tuple2!63693 Nil!59970 input!5817))))

(declare-fun bm!362302 () Bool)

(assert (=> bm!362302 (= call!362304 (nullableZipper!1125 z!4581))))

(declare-fun bm!362297 () Bool)

(declare-fun lemmaIsPrefixRefl!3719 (List!60094 List!60094) Unit!151412)

(assert (=> bm!362297 (= call!362307 (lemmaIsPrefixRefl!3719 input!5817 input!5817))))

(declare-fun d!1666416 () Bool)

(assert (=> d!1666416 e!3218347))

(declare-fun res!2195752 () Bool)

(assert (=> d!1666416 (=> (not res!2195752) (not e!3218347))))

(assert (=> d!1666416 (= res!2195752 (= (++!13105 (_1!35149 lt!2124234) (_2!35149 lt!2124234)) input!5817))))

(assert (=> d!1666416 (= lt!2124234 e!3218343)))

(declare-fun c!888663 () Bool)

(declare-fun lostCauseZipper!1310 ((InoxSet Context!7906)) Bool)

(assert (=> d!1666416 (= c!888663 (lostCauseZipper!1310 z!4581))))

(declare-fun lt!2124225 () Unit!151412)

(declare-fun Unit!151418 () Unit!151412)

(assert (=> d!1666416 (= lt!2124225 Unit!151418)))

(assert (=> d!1666416 (= (getSuffix!3352 input!5817 testedP!294) lt!2124145)))

(declare-fun lt!2124217 () Unit!151412)

(declare-fun lt!2124211 () Unit!151412)

(assert (=> d!1666416 (= lt!2124217 lt!2124211)))

(declare-fun lt!2124212 () List!60094)

(assert (=> d!1666416 (= lt!2124145 lt!2124212)))

(declare-fun lemmaSamePrefixThenSameSuffix!2677 (List!60094 List!60094 List!60094 List!60094 List!60094) Unit!151412)

(assert (=> d!1666416 (= lt!2124211 (lemmaSamePrefixThenSameSuffix!2677 testedP!294 lt!2124145 testedP!294 lt!2124212 input!5817))))

(assert (=> d!1666416 (= lt!2124212 (getSuffix!3352 input!5817 testedP!294))))

(declare-fun lt!2124223 () Unit!151412)

(declare-fun lt!2124224 () Unit!151412)

(assert (=> d!1666416 (= lt!2124223 lt!2124224)))

(assert (=> d!1666416 (isPrefix!5702 testedP!294 (++!13105 testedP!294 lt!2124145))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3571 (List!60094 List!60094) Unit!151412)

(assert (=> d!1666416 (= lt!2124224 (lemmaConcatTwoListThenFirstIsPrefix!3571 testedP!294 lt!2124145))))

(assert (=> d!1666416 (= (++!13105 testedP!294 lt!2124145) input!5817)))

(assert (=> d!1666416 (= (findLongestMatchInnerZipper!227 z!4581 testedP!294 lt!2124147 lt!2124145 input!5817 (size!39605 input!5817)) lt!2124234)))

(declare-fun b!5165132 () Bool)

(assert (=> b!5165132 (= e!3218342 (tuple2!63693 Nil!59970 input!5817))))

(declare-fun b!5165133 () Bool)

(declare-fun Unit!151419 () Unit!151412)

(assert (=> b!5165133 (= e!3218349 Unit!151419)))

(assert (= (and d!1666416 c!888663) b!5165131))

(assert (= (and d!1666416 (not c!888663)) b!5165121))

(assert (= (and b!5165121 c!888664) b!5165120))

(assert (= (and b!5165121 (not c!888664)) b!5165129))

(assert (= (and b!5165120 c!888667) b!5165126))

(assert (= (and b!5165120 (not c!888667)) b!5165132))

(assert (= (and b!5165129 c!888666) b!5165128))

(assert (= (and b!5165129 (not c!888666)) b!5165133))

(assert (= (and b!5165129 c!888665) b!5165127))

(assert (= (and b!5165129 (not c!888665)) b!5165124))

(assert (= (and b!5165127 c!888668) b!5165130))

(assert (= (and b!5165127 (not c!888668)) b!5165125))

(assert (= (or b!5165127 b!5165124) bm!362299))

(assert (= (or b!5165127 b!5165124) bm!362300))

(assert (= (or b!5165127 b!5165124) bm!362296))

(assert (= (or b!5165127 b!5165124) bm!362298))

(assert (= (or b!5165120 b!5165128) bm!362297))

(assert (= (or b!5165120 b!5165129) bm!362302))

(assert (= (or b!5165120 b!5165128) bm!362301))

(assert (= (or b!5165120 b!5165128) bm!362295))

(assert (= (and d!1666416 res!2195752) b!5165123))

(assert (= (and b!5165123 (not res!2195751)) b!5165122))

(declare-fun m!6215600 () Bool)

(assert (=> bm!362295 m!6215600))

(assert (=> bm!362298 m!6215560))

(declare-fun m!6215602 () Bool)

(assert (=> bm!362298 m!6215602))

(declare-fun m!6215604 () Bool)

(assert (=> bm!362299 m!6215604))

(declare-fun m!6215606 () Bool)

(assert (=> bm!362301 m!6215606))

(declare-fun m!6215608 () Bool)

(assert (=> bm!362300 m!6215608))

(assert (=> b!5165129 m!6215568))

(declare-fun m!6215610 () Bool)

(assert (=> b!5165129 m!6215610))

(assert (=> b!5165129 m!6215608))

(declare-fun m!6215612 () Bool)

(assert (=> b!5165129 m!6215612))

(declare-fun m!6215614 () Bool)

(assert (=> b!5165129 m!6215614))

(declare-fun m!6215616 () Bool)

(assert (=> b!5165129 m!6215616))

(assert (=> b!5165129 m!6215560))

(declare-fun m!6215618 () Bool)

(assert (=> b!5165129 m!6215618))

(assert (=> b!5165129 m!6215604))

(assert (=> b!5165129 m!6215612))

(declare-fun m!6215620 () Bool)

(assert (=> b!5165129 m!6215620))

(declare-fun m!6215622 () Bool)

(assert (=> b!5165129 m!6215622))

(assert (=> b!5165129 m!6215568))

(assert (=> b!5165129 m!6215566))

(declare-fun m!6215624 () Bool)

(assert (=> b!5165129 m!6215624))

(declare-fun m!6215626 () Bool)

(assert (=> b!5165129 m!6215626))

(assert (=> b!5165129 m!6215624))

(declare-fun m!6215628 () Bool)

(assert (=> b!5165122 m!6215628))

(assert (=> b!5165122 m!6215566))

(declare-fun m!6215630 () Bool)

(assert (=> b!5165123 m!6215630))

(declare-fun m!6215632 () Bool)

(assert (=> bm!362297 m!6215632))

(declare-fun m!6215634 () Bool)

(assert (=> b!5165127 m!6215634))

(declare-fun m!6215636 () Bool)

(assert (=> bm!362296 m!6215636))

(declare-fun m!6215638 () Bool)

(assert (=> d!1666416 m!6215638))

(declare-fun m!6215640 () Bool)

(assert (=> d!1666416 m!6215640))

(assert (=> d!1666416 m!6215552))

(declare-fun m!6215642 () Bool)

(assert (=> d!1666416 m!6215642))

(assert (=> d!1666416 m!6215568))

(declare-fun m!6215644 () Bool)

(assert (=> d!1666416 m!6215644))

(assert (=> d!1666416 m!6215552))

(declare-fun m!6215646 () Bool)

(assert (=> d!1666416 m!6215646))

(assert (=> bm!362302 m!6215548))

(assert (=> b!5165053 d!1666416))

(declare-fun d!1666422 () Bool)

(assert (=> d!1666422 (= (isEmpty!32107 (_1!35149 (findLongestMatchInnerZipper!227 z!4581 testedP!294 lt!2124147 lt!2124145 input!5817 (size!39605 input!5817)))) ((_ is Nil!59970) (_1!35149 (findLongestMatchInnerZipper!227 z!4581 testedP!294 lt!2124147 lt!2124145 input!5817 (size!39605 input!5817)))))))

(assert (=> b!5165053 d!1666422))

(declare-fun d!1666424 () Bool)

(declare-fun lambda!257764 () Int)

(declare-fun exists!1888 ((InoxSet Context!7906) Int) Bool)

(assert (=> d!1666424 (= (nullableZipper!1125 z!4581) (exists!1888 z!4581 lambda!257764))))

(declare-fun bs!1202780 () Bool)

(assert (= bs!1202780 d!1666424))

(declare-fun m!6215708 () Bool)

(assert (=> bs!1202780 m!6215708))

(assert (=> b!5165057 d!1666424))

(declare-fun d!1666440 () Bool)

(declare-fun lambda!257767 () Int)

(declare-fun forall!14103 (List!60093 Int) Bool)

(assert (=> d!1666440 (= (inv!79669 setElem!31612) (forall!14103 (exprs!4453 setElem!31612) lambda!257767))))

(declare-fun bs!1202781 () Bool)

(assert (= bs!1202781 d!1666440))

(declare-fun m!6215722 () Bool)

(assert (=> bs!1202781 m!6215722))

(assert (=> setNonEmpty!31612 d!1666440))

(declare-fun b!5165219 () Bool)

(declare-fun res!2195774 () Bool)

(declare-fun e!3218397 () Bool)

(assert (=> b!5165219 (=> (not res!2195774) (not e!3218397))))

(assert (=> b!5165219 (= res!2195774 (= (head!11009 testedP!294) (head!11009 input!5817)))))

(declare-fun d!1666444 () Bool)

(declare-fun e!3218398 () Bool)

(assert (=> d!1666444 e!3218398))

(declare-fun res!2195775 () Bool)

(assert (=> d!1666444 (=> res!2195775 e!3218398)))

(declare-fun lt!2124329 () Bool)

(assert (=> d!1666444 (= res!2195775 (not lt!2124329))))

(declare-fun e!3218399 () Bool)

(assert (=> d!1666444 (= lt!2124329 e!3218399)))

(declare-fun res!2195773 () Bool)

(assert (=> d!1666444 (=> res!2195773 e!3218399)))

(assert (=> d!1666444 (= res!2195773 ((_ is Nil!59970) testedP!294))))

(assert (=> d!1666444 (= (isPrefix!5702 testedP!294 input!5817) lt!2124329)))

(declare-fun b!5165218 () Bool)

(assert (=> b!5165218 (= e!3218399 e!3218397)))

(declare-fun res!2195776 () Bool)

(assert (=> b!5165218 (=> (not res!2195776) (not e!3218397))))

(assert (=> b!5165218 (= res!2195776 (not ((_ is Nil!59970) input!5817)))))

(declare-fun b!5165221 () Bool)

(assert (=> b!5165221 (= e!3218398 (>= (size!39605 input!5817) (size!39605 testedP!294)))))

(declare-fun b!5165220 () Bool)

(assert (=> b!5165220 (= e!3218397 (isPrefix!5702 (tail!10120 testedP!294) (tail!10120 input!5817)))))

(assert (= (and d!1666444 (not res!2195773)) b!5165218))

(assert (= (and b!5165218 res!2195776) b!5165219))

(assert (= (and b!5165219 res!2195774) b!5165220))

(assert (= (and d!1666444 (not res!2195775)) b!5165221))

(declare-fun m!6215744 () Bool)

(assert (=> b!5165219 m!6215744))

(declare-fun m!6215746 () Bool)

(assert (=> b!5165219 m!6215746))

(assert (=> b!5165221 m!6215560))

(assert (=> b!5165221 m!6215566))

(declare-fun m!6215748 () Bool)

(assert (=> b!5165220 m!6215748))

(assert (=> b!5165220 m!6215580))

(assert (=> b!5165220 m!6215748))

(assert (=> b!5165220 m!6215580))

(declare-fun m!6215750 () Bool)

(assert (=> b!5165220 m!6215750))

(assert (=> start!546432 d!1666444))

(declare-fun bs!1202783 () Bool)

(declare-fun d!1666450 () Bool)

(assert (= bs!1202783 (and d!1666450 d!1666440)))

(declare-fun lambda!257768 () Int)

(assert (=> bs!1202783 (= lambda!257768 lambda!257767)))

(assert (=> d!1666450 (= (inv!79669 setElem!31611) (forall!14103 (exprs!4453 setElem!31611) lambda!257768))))

(declare-fun bs!1202785 () Bool)

(assert (= bs!1202785 d!1666450))

(declare-fun m!6215756 () Bool)

(assert (=> bs!1202785 m!6215756))

(assert (=> setNonEmpty!31611 d!1666450))

(declare-fun d!1666454 () Bool)

(declare-fun c!888707 () Bool)

(assert (=> d!1666454 (= c!888707 ((_ is Cons!59970) testedP!294))))

(declare-fun e!3218410 () (InoxSet Context!7906))

(assert (=> d!1666454 (= (derivationZipper!192 baseZ!62 testedP!294) e!3218410)))

(declare-fun b!5165240 () Bool)

(assert (=> b!5165240 (= e!3218410 (derivationZipper!192 (derivationStepZipper!943 baseZ!62 (h!66418 testedP!294)) (t!373247 testedP!294)))))

(declare-fun b!5165241 () Bool)

(assert (=> b!5165241 (= e!3218410 baseZ!62)))

(assert (= (and d!1666454 c!888707) b!5165240))

(assert (= (and d!1666454 (not c!888707)) b!5165241))

(declare-fun m!6215762 () Bool)

(assert (=> b!5165240 m!6215762))

(assert (=> b!5165240 m!6215762))

(declare-fun m!6215764 () Bool)

(assert (=> b!5165240 m!6215764))

(assert (=> b!5165054 d!1666454))

(declare-fun b!5165257 () Bool)

(declare-fun e!3218419 () Bool)

(declare-fun lt!2124333 () List!60094)

(assert (=> b!5165257 (= e!3218419 (or (not (= lt!2124145 Nil!59970)) (= lt!2124333 testedP!294)))))

(declare-fun b!5165254 () Bool)

(declare-fun e!3218420 () List!60094)

(assert (=> b!5165254 (= e!3218420 lt!2124145)))

(declare-fun b!5165255 () Bool)

(assert (=> b!5165255 (= e!3218420 (Cons!59970 (h!66418 testedP!294) (++!13105 (t!373247 testedP!294) lt!2124145)))))

(declare-fun d!1666456 () Bool)

(assert (=> d!1666456 e!3218419))

(declare-fun res!2195781 () Bool)

(assert (=> d!1666456 (=> (not res!2195781) (not e!3218419))))

(declare-fun content!10627 (List!60094) (InoxSet C!29408))

(assert (=> d!1666456 (= res!2195781 (= (content!10627 lt!2124333) ((_ map or) (content!10627 testedP!294) (content!10627 lt!2124145))))))

(assert (=> d!1666456 (= lt!2124333 e!3218420)))

(declare-fun c!888710 () Bool)

(assert (=> d!1666456 (= c!888710 ((_ is Nil!59970) testedP!294))))

(assert (=> d!1666456 (= (++!13105 testedP!294 lt!2124145) lt!2124333)))

(declare-fun b!5165256 () Bool)

(declare-fun res!2195782 () Bool)

(assert (=> b!5165256 (=> (not res!2195782) (not e!3218419))))

(assert (=> b!5165256 (= res!2195782 (= (size!39605 lt!2124333) (+ (size!39605 testedP!294) (size!39605 lt!2124145))))))

(assert (= (and d!1666456 c!888710) b!5165254))

(assert (= (and d!1666456 (not c!888710)) b!5165255))

(assert (= (and d!1666456 res!2195781) b!5165256))

(assert (= (and b!5165256 res!2195782) b!5165257))

(declare-fun m!6215768 () Bool)

(assert (=> b!5165255 m!6215768))

(declare-fun m!6215770 () Bool)

(assert (=> d!1666456 m!6215770))

(declare-fun m!6215772 () Bool)

(assert (=> d!1666456 m!6215772))

(declare-fun m!6215774 () Bool)

(assert (=> d!1666456 m!6215774))

(declare-fun m!6215776 () Bool)

(assert (=> b!5165256 m!6215776))

(assert (=> b!5165256 m!6215566))

(declare-fun m!6215778 () Bool)

(assert (=> b!5165256 m!6215778))

(assert (=> b!5165058 d!1666456))

(declare-fun d!1666458 () Bool)

(declare-fun c!888713 () Bool)

(assert (=> d!1666458 (= c!888713 (isEmpty!32107 testedP!294))))

(declare-fun e!3218423 () Bool)

(assert (=> d!1666458 (= (matchZipper!953 baseZ!62 testedP!294) e!3218423)))

(declare-fun b!5165262 () Bool)

(assert (=> b!5165262 (= e!3218423 (nullableZipper!1125 baseZ!62))))

(declare-fun b!5165263 () Bool)

(assert (=> b!5165263 (= e!3218423 (matchZipper!953 (derivationStepZipper!943 baseZ!62 (head!11009 testedP!294)) (tail!10120 testedP!294)))))

(assert (= (and d!1666458 c!888713) b!5165262))

(assert (= (and d!1666458 (not c!888713)) b!5165263))

(declare-fun m!6215780 () Bool)

(assert (=> d!1666458 m!6215780))

(declare-fun m!6215782 () Bool)

(assert (=> b!5165262 m!6215782))

(assert (=> b!5165263 m!6215744))

(assert (=> b!5165263 m!6215744))

(declare-fun m!6215784 () Bool)

(assert (=> b!5165263 m!6215784))

(assert (=> b!5165263 m!6215748))

(assert (=> b!5165263 m!6215784))

(assert (=> b!5165263 m!6215748))

(declare-fun m!6215786 () Bool)

(assert (=> b!5165263 m!6215786))

(assert (=> b!5165058 d!1666458))

(declare-fun d!1666460 () Bool)

(declare-fun c!888714 () Bool)

(assert (=> d!1666460 (= c!888714 (isEmpty!32107 Nil!59970))))

(declare-fun e!3218424 () Bool)

(assert (=> d!1666460 (= (matchZipper!953 lt!2124146 Nil!59970) e!3218424)))

(declare-fun b!5165264 () Bool)

(assert (=> b!5165264 (= e!3218424 (nullableZipper!1125 lt!2124146))))

(declare-fun b!5165265 () Bool)

(assert (=> b!5165265 (= e!3218424 (matchZipper!953 (derivationStepZipper!943 lt!2124146 (head!11009 Nil!59970)) (tail!10120 Nil!59970)))))

(assert (= (and d!1666460 c!888714) b!5165264))

(assert (= (and d!1666460 (not c!888714)) b!5165265))

(declare-fun m!6215788 () Bool)

(assert (=> d!1666460 m!6215788))

(declare-fun m!6215790 () Bool)

(assert (=> b!5165264 m!6215790))

(declare-fun m!6215792 () Bool)

(assert (=> b!5165265 m!6215792))

(assert (=> b!5165265 m!6215792))

(declare-fun m!6215794 () Bool)

(assert (=> b!5165265 m!6215794))

(declare-fun m!6215796 () Bool)

(assert (=> b!5165265 m!6215796))

(assert (=> b!5165265 m!6215794))

(assert (=> b!5165265 m!6215796))

(declare-fun m!6215798 () Bool)

(assert (=> b!5165265 m!6215798))

(assert (=> b!5165058 d!1666460))

(declare-fun d!1666462 () Bool)

(assert (=> d!1666462 (= (matchZipper!953 baseZ!62 testedP!294) (matchZipper!953 (derivationZipper!192 baseZ!62 testedP!294) Nil!59970))))

(declare-fun lt!2124336 () Unit!151412)

(declare-fun choose!38202 ((InoxSet Context!7906) List!60094) Unit!151412)

(assert (=> d!1666462 (= lt!2124336 (choose!38202 baseZ!62 testedP!294))))

(assert (=> d!1666462 (= (lemmaMatchZipperIsSameAsWholeDerivativeAndNil!34 baseZ!62 testedP!294) lt!2124336)))

(declare-fun bs!1202787 () Bool)

(assert (= bs!1202787 d!1666462))

(assert (=> bs!1202787 m!6215554))

(assert (=> bs!1202787 m!6215550))

(assert (=> bs!1202787 m!6215550))

(declare-fun m!6215800 () Bool)

(assert (=> bs!1202787 m!6215800))

(declare-fun m!6215802 () Bool)

(assert (=> bs!1202787 m!6215802))

(assert (=> b!5165058 d!1666462))

(declare-fun condSetEmpty!31619 () Bool)

(assert (=> setNonEmpty!31612 (= condSetEmpty!31619 (= setRest!31611 ((as const (Array Context!7906 Bool)) false)))))

(declare-fun setRes!31619 () Bool)

(assert (=> setNonEmpty!31612 (= tp!1448916 setRes!31619)))

(declare-fun setIsEmpty!31619 () Bool)

(assert (=> setIsEmpty!31619 setRes!31619))

(declare-fun setElem!31619 () Context!7906)

(declare-fun setNonEmpty!31619 () Bool)

(declare-fun e!3218427 () Bool)

(declare-fun tp!1448945 () Bool)

(assert (=> setNonEmpty!31619 (= setRes!31619 (and tp!1448945 (inv!79669 setElem!31619) e!3218427))))

(declare-fun setRest!31619 () (InoxSet Context!7906))

(assert (=> setNonEmpty!31619 (= setRest!31611 ((_ map or) (store ((as const (Array Context!7906 Bool)) false) setElem!31619 true) setRest!31619))))

(declare-fun b!5165270 () Bool)

(declare-fun tp!1448944 () Bool)

(assert (=> b!5165270 (= e!3218427 tp!1448944)))

(assert (= (and setNonEmpty!31612 condSetEmpty!31619) setIsEmpty!31619))

(assert (= (and setNonEmpty!31612 (not condSetEmpty!31619)) setNonEmpty!31619))

(assert (= setNonEmpty!31619 b!5165270))

(declare-fun m!6215804 () Bool)

(assert (=> setNonEmpty!31619 m!6215804))

(declare-fun b!5165275 () Bool)

(declare-fun e!3218430 () Bool)

(declare-fun tp!1448950 () Bool)

(declare-fun tp!1448951 () Bool)

(assert (=> b!5165275 (= e!3218430 (and tp!1448950 tp!1448951))))

(assert (=> b!5165052 (= tp!1448918 e!3218430)))

(assert (= (and b!5165052 ((_ is Cons!59969) (exprs!4453 setElem!31611))) b!5165275))

(declare-fun b!5165280 () Bool)

(declare-fun e!3218433 () Bool)

(declare-fun tp!1448954 () Bool)

(assert (=> b!5165280 (= e!3218433 (and tp_is_empty!38391 tp!1448954))))

(assert (=> b!5165055 (= tp!1448915 e!3218433)))

(assert (= (and b!5165055 ((_ is Cons!59970) (t!373247 testedP!294))) b!5165280))

(declare-fun b!5165281 () Bool)

(declare-fun e!3218434 () Bool)

(declare-fun tp!1448955 () Bool)

(declare-fun tp!1448956 () Bool)

(assert (=> b!5165281 (= e!3218434 (and tp!1448955 tp!1448956))))

(assert (=> b!5165059 (= tp!1448914 e!3218434)))

(assert (= (and b!5165059 ((_ is Cons!59969) (exprs!4453 setElem!31612))) b!5165281))

(declare-fun condSetEmpty!31620 () Bool)

(assert (=> setNonEmpty!31611 (= condSetEmpty!31620 (= setRest!31612 ((as const (Array Context!7906 Bool)) false)))))

(declare-fun setRes!31620 () Bool)

(assert (=> setNonEmpty!31611 (= tp!1448919 setRes!31620)))

(declare-fun setIsEmpty!31620 () Bool)

(assert (=> setIsEmpty!31620 setRes!31620))

(declare-fun tp!1448958 () Bool)

(declare-fun e!3218435 () Bool)

(declare-fun setElem!31620 () Context!7906)

(declare-fun setNonEmpty!31620 () Bool)

(assert (=> setNonEmpty!31620 (= setRes!31620 (and tp!1448958 (inv!79669 setElem!31620) e!3218435))))

(declare-fun setRest!31620 () (InoxSet Context!7906))

(assert (=> setNonEmpty!31620 (= setRest!31612 ((_ map or) (store ((as const (Array Context!7906 Bool)) false) setElem!31620 true) setRest!31620))))

(declare-fun b!5165282 () Bool)

(declare-fun tp!1448957 () Bool)

(assert (=> b!5165282 (= e!3218435 tp!1448957)))

(assert (= (and setNonEmpty!31611 condSetEmpty!31620) setIsEmpty!31620))

(assert (= (and setNonEmpty!31611 (not condSetEmpty!31620)) setNonEmpty!31620))

(assert (= setNonEmpty!31620 b!5165282))

(declare-fun m!6215806 () Bool)

(assert (=> setNonEmpty!31620 m!6215806))

(declare-fun b!5165283 () Bool)

(declare-fun e!3218436 () Bool)

(declare-fun tp!1448959 () Bool)

(assert (=> b!5165283 (= e!3218436 (and tp_is_empty!38391 tp!1448959))))

(assert (=> b!5165051 (= tp!1448917 e!3218436)))

(assert (= (and b!5165051 ((_ is Cons!59970) (t!373247 input!5817))) b!5165283))

(check-sat (not d!1666462) (not bm!362302) (not b!5165129) (not b!5165077) (not d!1666440) (not b!5165282) (not b!5165280) (not b!5165221) (not d!1666416) (not bm!362295) (not b!5165220) (not bm!362298) (not d!1666424) (not d!1666456) (not b!5165281) tp_is_empty!38391 (not b!5165283) (not bm!362300) (not b!5165240) (not b!5165275) (not bm!362301) (not d!1666458) (not b!5165070) (not d!1666410) (not b!5165127) (not setNonEmpty!31620) (not bm!362297) (not b!5165263) (not bm!362299) (not b!5165065) (not b!5165219) (not b!5165262) (not b!5165270) (not b!5165264) (not d!1666460) (not b!5165123) (not setNonEmpty!31619) (not b!5165255) (not b!5165265) (not b!5165256) (not d!1666450) (not b!5165122) (not bm!362296))
(check-sat)
