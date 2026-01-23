; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!547540 () Bool)

(assert start!547540)

(declare-fun setIsEmpty!32075 () Bool)

(declare-fun setRes!32076 () Bool)

(assert (=> setIsEmpty!32075 setRes!32076))

(declare-fun res!2198291 () Bool)

(declare-fun e!3222774 () Bool)

(assert (=> start!547540 (=> (not res!2198291) (not e!3222774))))

(declare-datatypes ((C!29524 0))(
  ( (C!29525 (val!24464 Int)) )
))
(declare-datatypes ((List!60221 0))(
  ( (Nil!60097) (Cons!60097 (h!66545 C!29524) (t!373374 List!60221)) )
))
(declare-fun testedP!294 () List!60221)

(declare-fun input!5817 () List!60221)

(declare-fun isPrefix!5760 (List!60221 List!60221) Bool)

(assert (=> start!547540 (= res!2198291 (isPrefix!5760 testedP!294 input!5817))))

(assert (=> start!547540 e!3222774))

(declare-fun e!3222778 () Bool)

(assert (=> start!547540 e!3222778))

(declare-fun e!3222776 () Bool)

(assert (=> start!547540 e!3222776))

(declare-fun condSetEmpty!32075 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14627 0))(
  ( (ElementMatch!14627 (c!890390 C!29524)) (Concat!23472 (regOne!29766 Regex!14627) (regTwo!29766 Regex!14627)) (EmptyExpr!14627) (Star!14627 (reg!14956 Regex!14627)) (EmptyLang!14627) (Union!14627 (regOne!29767 Regex!14627) (regTwo!29767 Regex!14627)) )
))
(declare-datatypes ((List!60222 0))(
  ( (Nil!60098) (Cons!60098 (h!66546 Regex!14627) (t!373375 List!60222)) )
))
(declare-datatypes ((Context!8022 0))(
  ( (Context!8023 (exprs!4511 List!60222)) )
))
(declare-fun baseZ!62 () (InoxSet Context!8022))

(assert (=> start!547540 (= condSetEmpty!32075 (= baseZ!62 ((as const (Array Context!8022 Bool)) false)))))

(declare-fun setRes!32075 () Bool)

(assert (=> start!547540 setRes!32075))

(declare-fun condSetEmpty!32076 () Bool)

(declare-fun z!4581 () (InoxSet Context!8022))

(assert (=> start!547540 (= condSetEmpty!32076 (= z!4581 ((as const (Array Context!8022 Bool)) false)))))

(assert (=> start!547540 setRes!32076))

(declare-fun setIsEmpty!32076 () Bool)

(assert (=> setIsEmpty!32076 setRes!32075))

(declare-fun e!3222773 () Bool)

(declare-fun tp!1450982 () Bool)

(declare-fun setElem!32076 () Context!8022)

(declare-fun setNonEmpty!32075 () Bool)

(declare-fun inv!79814 (Context!8022) Bool)

(assert (=> setNonEmpty!32075 (= setRes!32075 (and tp!1450982 (inv!79814 setElem!32076) e!3222773))))

(declare-fun setRest!32076 () (InoxSet Context!8022))

(assert (=> setNonEmpty!32075 (= baseZ!62 ((_ map or) (store ((as const (Array Context!8022 Bool)) false) setElem!32076 true) setRest!32076))))

(declare-fun b!5172177 () Bool)

(declare-fun tp!1450983 () Bool)

(assert (=> b!5172177 (= e!3222773 tp!1450983)))

(declare-fun b!5172178 () Bool)

(declare-fun e!3222779 () Bool)

(assert (=> b!5172178 (= e!3222774 e!3222779)))

(declare-fun res!2198289 () Bool)

(assert (=> b!5172178 (=> (not res!2198289) (not e!3222779))))

(declare-fun lt!2129639 () Int)

(declare-fun lt!2129641 () List!60221)

(declare-fun lt!2129637 () Int)

(declare-fun isEmpty!32177 (List!60221) Bool)

(declare-datatypes ((tuple2!63808 0))(
  ( (tuple2!63809 (_1!35207 List!60221) (_2!35207 List!60221)) )
))
(declare-fun findLongestMatchInnerZipper!285 ((InoxSet Context!8022) List!60221 Int List!60221 List!60221 Int) tuple2!63808)

(assert (=> b!5172178 (= res!2198289 (not (isEmpty!32177 (_1!35207 (findLongestMatchInnerZipper!285 z!4581 testedP!294 lt!2129639 lt!2129641 input!5817 lt!2129637)))))))

(declare-fun size!39663 (List!60221) Int)

(assert (=> b!5172178 (= lt!2129637 (size!39663 input!5817))))

(declare-fun getSuffix!3410 (List!60221 List!60221) List!60221)

(assert (=> b!5172178 (= lt!2129641 (getSuffix!3410 input!5817 testedP!294))))

(assert (=> b!5172178 (= lt!2129639 (size!39663 testedP!294))))

(declare-fun b!5172179 () Bool)

(declare-datatypes ((Unit!151788 0))(
  ( (Unit!151789) )
))
(declare-fun e!3222780 () Unit!151788)

(declare-fun Unit!151790 () Unit!151788)

(assert (=> b!5172179 (= e!3222780 Unit!151790)))

(declare-fun lt!2129642 () Unit!151788)

(declare-fun lemmaIsPrefixRefl!3767 (List!60221 List!60221) Unit!151788)

(assert (=> b!5172179 (= lt!2129642 (lemmaIsPrefixRefl!3767 input!5817 input!5817))))

(assert (=> b!5172179 (isPrefix!5760 input!5817 input!5817)))

(declare-fun lt!2129636 () Unit!151788)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1409 (List!60221 List!60221 List!60221) Unit!151788)

(assert (=> b!5172179 (= lt!2129636 (lemmaIsPrefixSameLengthThenSameList!1409 input!5817 testedP!294 input!5817))))

(assert (=> b!5172179 false))

(declare-fun b!5172180 () Bool)

(declare-fun e!3222777 () Bool)

(assert (=> b!5172180 (= e!3222779 (not e!3222777))))

(declare-fun res!2198292 () Bool)

(assert (=> b!5172180 (=> res!2198292 e!3222777)))

(assert (=> b!5172180 (= res!2198292 (>= lt!2129639 lt!2129637))))

(declare-fun lt!2129644 () Unit!151788)

(assert (=> b!5172180 (= lt!2129644 e!3222780)))

(declare-fun c!890389 () Bool)

(assert (=> b!5172180 (= c!890389 (= lt!2129639 lt!2129637))))

(assert (=> b!5172180 (<= lt!2129639 lt!2129637)))

(declare-fun lt!2129635 () Unit!151788)

(declare-fun lemmaIsPrefixThenSmallerEqSize!923 (List!60221 List!60221) Unit!151788)

(assert (=> b!5172180 (= lt!2129635 (lemmaIsPrefixThenSmallerEqSize!923 testedP!294 input!5817))))

(declare-fun b!5172181 () Bool)

(declare-fun res!2198290 () Bool)

(assert (=> b!5172181 (=> (not res!2198290) (not e!3222774))))

(declare-fun derivationZipper!250 ((InoxSet Context!8022) List!60221) (InoxSet Context!8022))

(assert (=> b!5172181 (= res!2198290 (= (derivationZipper!250 baseZ!62 testedP!294) z!4581))))

(declare-fun b!5172182 () Bool)

(declare-fun tp_is_empty!38507 () Bool)

(declare-fun tp!1450987 () Bool)

(assert (=> b!5172182 (= e!3222778 (and tp_is_empty!38507 tp!1450987))))

(declare-fun b!5172183 () Bool)

(declare-fun res!2198288 () Bool)

(assert (=> b!5172183 (=> (not res!2198288) (not e!3222779))))

(assert (=> b!5172183 (= res!2198288 (not (= testedP!294 input!5817)))))

(declare-fun b!5172184 () Bool)

(assert (=> b!5172184 (= e!3222777 true)))

(declare-fun lt!2129638 () Bool)

(declare-fun nullableZipper!1173 ((InoxSet Context!8022)) Bool)

(assert (=> b!5172184 (= lt!2129638 (nullableZipper!1173 z!4581))))

(declare-fun lt!2129643 () List!60221)

(assert (=> b!5172184 (isPrefix!5760 lt!2129643 input!5817)))

(declare-fun lt!2129640 () Unit!151788)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1073 (List!60221 List!60221) Unit!151788)

(assert (=> b!5172184 (= lt!2129640 (lemmaAddHeadSuffixToPrefixStillPrefix!1073 testedP!294 input!5817))))

(declare-fun ++!13151 (List!60221 List!60221) List!60221)

(declare-fun head!11051 (List!60221) C!29524)

(assert (=> b!5172184 (= lt!2129643 (++!13151 testedP!294 (Cons!60097 (head!11051 lt!2129641) Nil!60097)))))

(declare-fun b!5172185 () Bool)

(declare-fun e!3222775 () Bool)

(declare-fun tp!1450986 () Bool)

(assert (=> b!5172185 (= e!3222775 tp!1450986)))

(declare-fun b!5172186 () Bool)

(declare-fun Unit!151791 () Unit!151788)

(assert (=> b!5172186 (= e!3222780 Unit!151791)))

(declare-fun setElem!32075 () Context!8022)

(declare-fun setNonEmpty!32076 () Bool)

(declare-fun tp!1450984 () Bool)

(assert (=> setNonEmpty!32076 (= setRes!32076 (and tp!1450984 (inv!79814 setElem!32075) e!3222775))))

(declare-fun setRest!32075 () (InoxSet Context!8022))

(assert (=> setNonEmpty!32076 (= z!4581 ((_ map or) (store ((as const (Array Context!8022 Bool)) false) setElem!32075 true) setRest!32075))))

(declare-fun b!5172187 () Bool)

(declare-fun tp!1450985 () Bool)

(assert (=> b!5172187 (= e!3222776 (and tp_is_empty!38507 tp!1450985))))

(assert (= (and start!547540 res!2198291) b!5172181))

(assert (= (and b!5172181 res!2198290) b!5172178))

(assert (= (and b!5172178 res!2198289) b!5172183))

(assert (= (and b!5172183 res!2198288) b!5172180))

(assert (= (and b!5172180 c!890389) b!5172179))

(assert (= (and b!5172180 (not c!890389)) b!5172186))

(assert (= (and b!5172180 (not res!2198292)) b!5172184))

(get-info :version)

(assert (= (and start!547540 ((_ is Cons!60097) testedP!294)) b!5172182))

(assert (= (and start!547540 ((_ is Cons!60097) input!5817)) b!5172187))

(assert (= (and start!547540 condSetEmpty!32075) setIsEmpty!32076))

(assert (= (and start!547540 (not condSetEmpty!32075)) setNonEmpty!32075))

(assert (= setNonEmpty!32075 b!5172177))

(assert (= (and start!547540 condSetEmpty!32076) setIsEmpty!32075))

(assert (= (and start!547540 (not condSetEmpty!32076)) setNonEmpty!32076))

(assert (= setNonEmpty!32076 b!5172185))

(declare-fun m!6225376 () Bool)

(assert (=> b!5172178 m!6225376))

(declare-fun m!6225378 () Bool)

(assert (=> b!5172178 m!6225378))

(declare-fun m!6225380 () Bool)

(assert (=> b!5172178 m!6225380))

(declare-fun m!6225382 () Bool)

(assert (=> b!5172178 m!6225382))

(declare-fun m!6225384 () Bool)

(assert (=> b!5172178 m!6225384))

(declare-fun m!6225386 () Bool)

(assert (=> setNonEmpty!32075 m!6225386))

(declare-fun m!6225388 () Bool)

(assert (=> start!547540 m!6225388))

(declare-fun m!6225390 () Bool)

(assert (=> b!5172181 m!6225390))

(declare-fun m!6225392 () Bool)

(assert (=> setNonEmpty!32076 m!6225392))

(declare-fun m!6225394 () Bool)

(assert (=> b!5172180 m!6225394))

(declare-fun m!6225396 () Bool)

(assert (=> b!5172184 m!6225396))

(declare-fun m!6225398 () Bool)

(assert (=> b!5172184 m!6225398))

(declare-fun m!6225400 () Bool)

(assert (=> b!5172184 m!6225400))

(declare-fun m!6225402 () Bool)

(assert (=> b!5172184 m!6225402))

(declare-fun m!6225404 () Bool)

(assert (=> b!5172184 m!6225404))

(declare-fun m!6225406 () Bool)

(assert (=> b!5172179 m!6225406))

(declare-fun m!6225408 () Bool)

(assert (=> b!5172179 m!6225408))

(declare-fun m!6225410 () Bool)

(assert (=> b!5172179 m!6225410))

(check-sat (not setNonEmpty!32075) (not start!547540) (not b!5172180) (not b!5172179) tp_is_empty!38507 (not b!5172184) (not b!5172177) (not b!5172187) (not b!5172185) (not b!5172178) (not b!5172181) (not setNonEmpty!32076) (not b!5172182))
(check-sat)
