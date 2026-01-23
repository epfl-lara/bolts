; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!547084 () Bool)

(assert start!547084)

(declare-fun res!2197229 () Bool)

(declare-fun e!3220966 () Bool)

(assert (=> start!547084 (=> (not res!2197229) (not e!3220966))))

(declare-datatypes ((C!29484 0))(
  ( (C!29485 (val!24444 Int)) )
))
(declare-datatypes ((List!60175 0))(
  ( (Nil!60051) (Cons!60051 (h!66499 C!29484) (t!373328 List!60175)) )
))
(declare-fun testedP!294 () List!60175)

(declare-fun input!5817 () List!60175)

(declare-fun isPrefix!5740 (List!60175 List!60175) Bool)

(assert (=> start!547084 (= res!2197229 (isPrefix!5740 testedP!294 input!5817))))

(assert (=> start!547084 e!3220966))

(declare-fun e!3220972 () Bool)

(assert (=> start!547084 e!3220972))

(declare-fun e!3220967 () Bool)

(assert (=> start!547084 e!3220967))

(declare-fun condSetEmpty!31912 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14607 0))(
  ( (ElementMatch!14607 (c!889670 C!29484)) (Concat!23452 (regOne!29726 Regex!14607) (regTwo!29726 Regex!14607)) (EmptyExpr!14607) (Star!14607 (reg!14936 Regex!14607)) (EmptyLang!14607) (Union!14607 (regOne!29727 Regex!14607) (regTwo!29727 Regex!14607)) )
))
(declare-datatypes ((List!60176 0))(
  ( (Nil!60052) (Cons!60052 (h!66500 Regex!14607) (t!373329 List!60176)) )
))
(declare-datatypes ((Context!7982 0))(
  ( (Context!7983 (exprs!4491 List!60176)) )
))
(declare-fun z!4581 () (InoxSet Context!7982))

(assert (=> start!547084 (= condSetEmpty!31912 (= z!4581 ((as const (Array Context!7982 Bool)) false)))))

(declare-fun setRes!31912 () Bool)

(assert (=> start!547084 setRes!31912))

(declare-fun condSetEmpty!31911 () Bool)

(declare-fun baseZ!62 () (InoxSet Context!7982))

(assert (=> start!547084 (= condSetEmpty!31911 (= baseZ!62 ((as const (Array Context!7982 Bool)) false)))))

(declare-fun setRes!31911 () Bool)

(assert (=> start!547084 setRes!31911))

(declare-fun e!3220969 () Bool)

(declare-fun setNonEmpty!31911 () Bool)

(declare-fun tp!1450262 () Bool)

(declare-fun setElem!31911 () Context!7982)

(declare-fun inv!79764 (Context!7982) Bool)

(assert (=> setNonEmpty!31911 (= setRes!31912 (and tp!1450262 (inv!79764 setElem!31911) e!3220969))))

(declare-fun setRest!31911 () (InoxSet Context!7982))

(assert (=> setNonEmpty!31911 (= z!4581 ((_ map or) (store ((as const (Array Context!7982 Bool)) false) setElem!31911 true) setRest!31911))))

(declare-fun b!5169329 () Bool)

(declare-fun res!2197227 () Bool)

(declare-fun e!3220971 () Bool)

(assert (=> b!5169329 (=> res!2197227 e!3220971)))

(declare-fun lt!2127154 () Int)

(declare-fun lt!2127146 () List!60175)

(declare-fun lt!2127149 () C!29484)

(declare-fun lt!2127151 () Int)

(declare-fun lt!2127145 () List!60175)

(declare-fun isEmpty!32151 (List!60175) Bool)

(declare-datatypes ((tuple2!63768 0))(
  ( (tuple2!63769 (_1!35187 List!60175) (_2!35187 List!60175)) )
))
(declare-fun findLongestMatchInnerZipper!265 ((InoxSet Context!7982) List!60175 Int List!60175 List!60175 Int) tuple2!63768)

(declare-fun derivationStepZipper!961 ((InoxSet Context!7982) C!29484) (InoxSet Context!7982))

(declare-fun tail!10140 (List!60175) List!60175)

(assert (=> b!5169329 (= res!2197227 (not (isEmpty!32151 (_1!35187 (findLongestMatchInnerZipper!265 (derivationStepZipper!961 z!4581 lt!2127149) lt!2127145 (+ 1 lt!2127154) (tail!10140 lt!2127146) input!5817 lt!2127151)))))))

(declare-fun tp!1450263 () Bool)

(declare-fun e!3220963 () Bool)

(declare-fun setElem!31912 () Context!7982)

(declare-fun setNonEmpty!31912 () Bool)

(assert (=> setNonEmpty!31912 (= setRes!31911 (and tp!1450263 (inv!79764 setElem!31912) e!3220963))))

(declare-fun setRest!31912 () (InoxSet Context!7982))

(assert (=> setNonEmpty!31912 (= baseZ!62 ((_ map or) (store ((as const (Array Context!7982 Bool)) false) setElem!31912 true) setRest!31912))))

(declare-fun b!5169330 () Bool)

(assert (=> b!5169330 (= e!3220971 true)))

(declare-fun lt!2127155 () List!60175)

(declare-fun ++!13131 (List!60175 List!60175) List!60175)

(assert (=> b!5169330 (= lt!2127155 (++!13131 testedP!294 lt!2127146))))

(declare-fun lt!2127150 () (InoxSet Context!7982))

(declare-fun matchZipper!963 ((InoxSet Context!7982) List!60175) Bool)

(assert (=> b!5169330 (= (matchZipper!963 baseZ!62 testedP!294) (matchZipper!963 lt!2127150 Nil!60051))))

(declare-datatypes ((Unit!151610 0))(
  ( (Unit!151611) )
))
(declare-fun lt!2127144 () Unit!151610)

(declare-fun lemmaMatchZipperIsSameAsWholeDerivativeAndNil!44 ((InoxSet Context!7982) List!60175) Unit!151610)

(assert (=> b!5169330 (= lt!2127144 (lemmaMatchZipperIsSameAsWholeDerivativeAndNil!44 baseZ!62 testedP!294))))

(declare-fun setIsEmpty!31911 () Bool)

(assert (=> setIsEmpty!31911 setRes!31912))

(declare-fun b!5169331 () Bool)

(declare-fun e!3220965 () Unit!151610)

(declare-fun Unit!151612 () Unit!151610)

(assert (=> b!5169331 (= e!3220965 Unit!151612)))

(declare-fun b!5169332 () Bool)

(declare-fun Unit!151613 () Unit!151610)

(assert (=> b!5169332 (= e!3220965 Unit!151613)))

(declare-fun lt!2127148 () Unit!151610)

(declare-fun lemmaIsPrefixRefl!3747 (List!60175 List!60175) Unit!151610)

(assert (=> b!5169332 (= lt!2127148 (lemmaIsPrefixRefl!3747 input!5817 input!5817))))

(assert (=> b!5169332 (isPrefix!5740 input!5817 input!5817)))

(declare-fun lt!2127152 () Unit!151610)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1389 (List!60175 List!60175 List!60175) Unit!151610)

(assert (=> b!5169332 (= lt!2127152 (lemmaIsPrefixSameLengthThenSameList!1389 input!5817 testedP!294 input!5817))))

(assert (=> b!5169332 false))

(declare-fun b!5169333 () Bool)

(declare-fun e!3220970 () Bool)

(declare-fun e!3220968 () Bool)

(assert (=> b!5169333 (= e!3220970 (not e!3220968))))

(declare-fun res!2197225 () Bool)

(assert (=> b!5169333 (=> res!2197225 e!3220968)))

(assert (=> b!5169333 (= res!2197225 (>= lt!2127154 lt!2127151))))

(declare-fun lt!2127147 () Unit!151610)

(assert (=> b!5169333 (= lt!2127147 e!3220965)))

(declare-fun c!889669 () Bool)

(assert (=> b!5169333 (= c!889669 (= lt!2127154 lt!2127151))))

(assert (=> b!5169333 (<= lt!2127154 lt!2127151)))

(declare-fun lt!2127153 () Unit!151610)

(declare-fun lemmaIsPrefixThenSmallerEqSize!903 (List!60175 List!60175) Unit!151610)

(assert (=> b!5169333 (= lt!2127153 (lemmaIsPrefixThenSmallerEqSize!903 testedP!294 input!5817))))

(declare-fun b!5169334 () Bool)

(declare-fun tp!1450260 () Bool)

(assert (=> b!5169334 (= e!3220969 tp!1450260)))

(declare-fun b!5169335 () Bool)

(declare-fun tp!1450261 () Bool)

(assert (=> b!5169335 (= e!3220963 tp!1450261)))

(declare-fun setIsEmpty!31912 () Bool)

(assert (=> setIsEmpty!31912 setRes!31911))

(declare-fun b!5169336 () Bool)

(declare-fun e!3220964 () Bool)

(assert (=> b!5169336 (= e!3220964 e!3220970)))

(declare-fun res!2197226 () Bool)

(assert (=> b!5169336 (=> (not res!2197226) (not e!3220970))))

(assert (=> b!5169336 (= res!2197226 (not (isEmpty!32151 (_1!35187 (findLongestMatchInnerZipper!265 z!4581 testedP!294 lt!2127154 lt!2127146 input!5817 lt!2127151)))))))

(declare-fun size!39643 (List!60175) Int)

(assert (=> b!5169336 (= lt!2127151 (size!39643 input!5817))))

(declare-fun getSuffix!3390 (List!60175 List!60175) List!60175)

(assert (=> b!5169336 (= lt!2127146 (getSuffix!3390 input!5817 testedP!294))))

(assert (=> b!5169336 (= lt!2127154 (size!39643 testedP!294))))

(declare-fun b!5169337 () Bool)

(assert (=> b!5169337 (= e!3220968 e!3220971)))

(declare-fun res!2197224 () Bool)

(assert (=> b!5169337 (=> res!2197224 e!3220971)))

(declare-fun nullableZipper!1153 ((InoxSet Context!7982)) Bool)

(assert (=> b!5169337 (= res!2197224 (not (nullableZipper!1153 z!4581)))))

(assert (=> b!5169337 (isPrefix!5740 lt!2127145 input!5817)))

(declare-fun lt!2127156 () Unit!151610)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1053 (List!60175 List!60175) Unit!151610)

(assert (=> b!5169337 (= lt!2127156 (lemmaAddHeadSuffixToPrefixStillPrefix!1053 testedP!294 input!5817))))

(assert (=> b!5169337 (= lt!2127145 (++!13131 testedP!294 (Cons!60051 lt!2127149 Nil!60051)))))

(declare-fun head!11031 (List!60175) C!29484)

(assert (=> b!5169337 (= lt!2127149 (head!11031 lt!2127146))))

(declare-fun b!5169338 () Bool)

(declare-fun tp_is_empty!38467 () Bool)

(declare-fun tp!1450259 () Bool)

(assert (=> b!5169338 (= e!3220972 (and tp_is_empty!38467 tp!1450259))))

(declare-fun b!5169339 () Bool)

(assert (=> b!5169339 (= e!3220966 e!3220964)))

(declare-fun res!2197230 () Bool)

(assert (=> b!5169339 (=> (not res!2197230) (not e!3220964))))

(assert (=> b!5169339 (= res!2197230 (= lt!2127150 z!4581))))

(declare-fun derivationZipper!230 ((InoxSet Context!7982) List!60175) (InoxSet Context!7982))

(assert (=> b!5169339 (= lt!2127150 (derivationZipper!230 baseZ!62 testedP!294))))

(declare-fun b!5169340 () Bool)

(declare-fun tp!1450258 () Bool)

(assert (=> b!5169340 (= e!3220967 (and tp_is_empty!38467 tp!1450258))))

(declare-fun b!5169341 () Bool)

(declare-fun res!2197228 () Bool)

(assert (=> b!5169341 (=> (not res!2197228) (not e!3220970))))

(assert (=> b!5169341 (= res!2197228 (not (= testedP!294 input!5817)))))

(assert (= (and start!547084 res!2197229) b!5169339))

(assert (= (and b!5169339 res!2197230) b!5169336))

(assert (= (and b!5169336 res!2197226) b!5169341))

(assert (= (and b!5169341 res!2197228) b!5169333))

(assert (= (and b!5169333 c!889669) b!5169332))

(assert (= (and b!5169333 (not c!889669)) b!5169331))

(assert (= (and b!5169333 (not res!2197225)) b!5169337))

(assert (= (and b!5169337 (not res!2197224)) b!5169329))

(assert (= (and b!5169329 (not res!2197227)) b!5169330))

(get-info :version)

(assert (= (and start!547084 ((_ is Cons!60051) testedP!294)) b!5169338))

(assert (= (and start!547084 ((_ is Cons!60051) input!5817)) b!5169340))

(assert (= (and start!547084 condSetEmpty!31912) setIsEmpty!31911))

(assert (= (and start!547084 (not condSetEmpty!31912)) setNonEmpty!31911))

(assert (= setNonEmpty!31911 b!5169334))

(assert (= (and start!547084 condSetEmpty!31911) setIsEmpty!31912))

(assert (= (and start!547084 (not condSetEmpty!31911)) setNonEmpty!31912))

(assert (= setNonEmpty!31912 b!5169335))

(declare-fun m!6220884 () Bool)

(assert (=> b!5169337 m!6220884))

(declare-fun m!6220886 () Bool)

(assert (=> b!5169337 m!6220886))

(declare-fun m!6220888 () Bool)

(assert (=> b!5169337 m!6220888))

(declare-fun m!6220890 () Bool)

(assert (=> b!5169337 m!6220890))

(declare-fun m!6220892 () Bool)

(assert (=> b!5169337 m!6220892))

(declare-fun m!6220894 () Bool)

(assert (=> b!5169330 m!6220894))

(declare-fun m!6220896 () Bool)

(assert (=> b!5169330 m!6220896))

(declare-fun m!6220898 () Bool)

(assert (=> b!5169330 m!6220898))

(declare-fun m!6220900 () Bool)

(assert (=> b!5169330 m!6220900))

(declare-fun m!6220902 () Bool)

(assert (=> b!5169336 m!6220902))

(declare-fun m!6220904 () Bool)

(assert (=> b!5169336 m!6220904))

(declare-fun m!6220906 () Bool)

(assert (=> b!5169336 m!6220906))

(declare-fun m!6220908 () Bool)

(assert (=> b!5169336 m!6220908))

(declare-fun m!6220910 () Bool)

(assert (=> b!5169336 m!6220910))

(declare-fun m!6220912 () Bool)

(assert (=> b!5169332 m!6220912))

(declare-fun m!6220914 () Bool)

(assert (=> b!5169332 m!6220914))

(declare-fun m!6220916 () Bool)

(assert (=> b!5169332 m!6220916))

(declare-fun m!6220918 () Bool)

(assert (=> setNonEmpty!31911 m!6220918))

(declare-fun m!6220920 () Bool)

(assert (=> start!547084 m!6220920))

(declare-fun m!6220922 () Bool)

(assert (=> setNonEmpty!31912 m!6220922))

(declare-fun m!6220924 () Bool)

(assert (=> b!5169339 m!6220924))

(declare-fun m!6220926 () Bool)

(assert (=> b!5169333 m!6220926))

(declare-fun m!6220928 () Bool)

(assert (=> b!5169329 m!6220928))

(declare-fun m!6220930 () Bool)

(assert (=> b!5169329 m!6220930))

(assert (=> b!5169329 m!6220928))

(assert (=> b!5169329 m!6220930))

(declare-fun m!6220932 () Bool)

(assert (=> b!5169329 m!6220932))

(declare-fun m!6220934 () Bool)

(assert (=> b!5169329 m!6220934))

(check-sat (not b!5169336) (not b!5169335) (not b!5169332) (not b!5169330) (not b!5169334) (not b!5169333) (not b!5169337) (not setNonEmpty!31912) (not b!5169338) (not b!5169340) tp_is_empty!38467 (not setNonEmpty!31911) (not b!5169329) (not b!5169339) (not start!547084))
(check-sat)
