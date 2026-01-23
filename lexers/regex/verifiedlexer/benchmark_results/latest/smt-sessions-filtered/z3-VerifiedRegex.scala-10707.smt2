; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!548552 () Bool)

(assert start!548552)

(declare-fun b!5180119 () Bool)

(declare-fun e!3227531 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!29592 0))(
  ( (C!29593 (val!24498 Int)) )
))
(declare-datatypes ((Regex!14661 0))(
  ( (ElementMatch!14661 (c!892596 C!29592)) (Concat!23506 (regOne!29834 Regex!14661) (regTwo!29834 Regex!14661)) (EmptyExpr!14661) (Star!14661 (reg!14990 Regex!14661)) (EmptyLang!14661) (Union!14661 (regOne!29835 Regex!14661) (regTwo!29835 Regex!14661)) )
))
(declare-datatypes ((List!60299 0))(
  ( (Nil!60175) (Cons!60175 (h!66623 Regex!14661) (t!373452 List!60299)) )
))
(declare-datatypes ((Context!8090 0))(
  ( (Context!8091 (exprs!4545 List!60299)) )
))
(declare-fun baseZ!62 () (InoxSet Context!8090))

(declare-datatypes ((List!60300 0))(
  ( (Nil!60176) (Cons!60176 (h!66624 C!29592) (t!373453 List!60300)) )
))
(declare-datatypes ((tuple2!63872 0))(
  ( (tuple2!63873 (_1!35239 List!60300) (_2!35239 List!60300)) )
))
(declare-fun lt!2134956 () tuple2!63872)

(declare-fun matchZipper!989 ((InoxSet Context!8090) List!60300) Bool)

(assert (=> b!5180119 (= e!3227531 (matchZipper!989 baseZ!62 (_1!35239 lt!2134956)))))

(declare-fun e!3227527 () Bool)

(assert (=> b!5180119 e!3227527))

(declare-fun res!2200868 () Bool)

(assert (=> b!5180119 (=> res!2200868 e!3227527)))

(declare-fun lt!2134953 () tuple2!63872)

(declare-fun isEmpty!32219 (List!60300) Bool)

(assert (=> b!5180119 (= res!2200868 (isEmpty!32219 (_1!35239 lt!2134953)))))

(declare-fun input!5817 () List!60300)

(declare-fun lt!2134952 () (InoxSet Context!8090))

(declare-fun lt!2134950 () Int)

(declare-fun lt!2134949 () List!60300)

(declare-fun findLongestMatchInnerZipper!317 ((InoxSet Context!8090) List!60300 Int List!60300 List!60300 Int) tuple2!63872)

(declare-fun size!39697 (List!60300) Int)

(declare-fun getSuffix!3442 (List!60300 List!60300) List!60300)

(assert (=> b!5180119 (= lt!2134953 (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 lt!2134950))))

(declare-datatypes ((Unit!152123 0))(
  ( (Unit!152124) )
))
(declare-fun lt!2134955 () Unit!152123)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRec!31 ((InoxSet Context!8090) (InoxSet Context!8090) List!60300 List!60300) Unit!152123)

(assert (=> b!5180119 (= lt!2134955 (longestMatchIsAcceptedByMatchOrIsEmptyRec!31 baseZ!62 lt!2134952 lt!2134949 input!5817))))

(declare-fun derivationZipper!284 ((InoxSet Context!8090) List!60300) (InoxSet Context!8090))

(assert (=> b!5180119 (= (derivationZipper!284 baseZ!62 lt!2134949) lt!2134952)))

(declare-fun z!4581 () (InoxSet Context!8090))

(declare-fun lt!2134944 () C!29592)

(declare-fun derivationStepZipper!1007 ((InoxSet Context!8090) C!29592) (InoxSet Context!8090))

(assert (=> b!5180119 (= lt!2134952 (derivationStepZipper!1007 z!4581 lt!2134944))))

(declare-fun testedP!294 () List!60300)

(declare-fun lt!2134958 () Unit!152123)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!117 ((InoxSet Context!8090) (InoxSet Context!8090) List!60300 C!29592) Unit!152123)

(assert (=> b!5180119 (= lt!2134958 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!117 baseZ!62 z!4581 testedP!294 lt!2134944))))

(declare-fun b!5180120 () Bool)

(declare-fun e!3227523 () Bool)

(declare-fun tp_is_empty!38575 () Bool)

(declare-fun tp!1452862 () Bool)

(assert (=> b!5180120 (= e!3227523 (and tp_is_empty!38575 tp!1452862))))

(declare-fun setIsEmpty!32401 () Bool)

(declare-fun setRes!32401 () Bool)

(assert (=> setIsEmpty!32401 setRes!32401))

(declare-fun b!5180121 () Bool)

(declare-fun e!3227528 () Bool)

(declare-fun e!3227530 () Bool)

(assert (=> b!5180121 (= e!3227528 (not e!3227530))))

(declare-fun res!2200869 () Bool)

(assert (=> b!5180121 (=> res!2200869 e!3227530)))

(declare-fun lt!2134945 () Int)

(assert (=> b!5180121 (= res!2200869 (>= lt!2134945 lt!2134950))))

(declare-fun lt!2134947 () Unit!152123)

(declare-fun e!3227532 () Unit!152123)

(assert (=> b!5180121 (= lt!2134947 e!3227532)))

(declare-fun c!892595 () Bool)

(assert (=> b!5180121 (= c!892595 (= lt!2134945 lt!2134950))))

(assert (=> b!5180121 (<= lt!2134945 lt!2134950)))

(declare-fun lt!2134948 () Unit!152123)

(declare-fun lemmaIsPrefixThenSmallerEqSize!955 (List!60300 List!60300) Unit!152123)

(assert (=> b!5180121 (= lt!2134948 (lemmaIsPrefixThenSmallerEqSize!955 testedP!294 input!5817))))

(declare-fun setRes!32402 () Bool)

(declare-fun e!3227524 () Bool)

(declare-fun setElem!32401 () Context!8090)

(declare-fun setNonEmpty!32401 () Bool)

(declare-fun tp!1452860 () Bool)

(declare-fun inv!79899 (Context!8090) Bool)

(assert (=> setNonEmpty!32401 (= setRes!32402 (and tp!1452860 (inv!79899 setElem!32401) e!3227524))))

(declare-fun setRest!32401 () (InoxSet Context!8090))

(assert (=> setNonEmpty!32401 (= z!4581 ((_ map or) (store ((as const (Array Context!8090 Bool)) false) setElem!32401 true) setRest!32401))))

(declare-fun e!3227526 () Bool)

(declare-fun setElem!32402 () Context!8090)

(declare-fun tp!1452859 () Bool)

(declare-fun setNonEmpty!32402 () Bool)

(assert (=> setNonEmpty!32402 (= setRes!32401 (and tp!1452859 (inv!79899 setElem!32402) e!3227526))))

(declare-fun setRest!32402 () (InoxSet Context!8090))

(assert (=> setNonEmpty!32402 (= baseZ!62 ((_ map or) (store ((as const (Array Context!8090 Bool)) false) setElem!32402 true) setRest!32402))))

(declare-fun b!5180122 () Bool)

(declare-fun tp!1452858 () Bool)

(assert (=> b!5180122 (= e!3227526 tp!1452858)))

(declare-fun res!2200866 () Bool)

(declare-fun e!3227529 () Bool)

(assert (=> start!548552 (=> (not res!2200866) (not e!3227529))))

(declare-fun isPrefix!5794 (List!60300 List!60300) Bool)

(assert (=> start!548552 (= res!2200866 (isPrefix!5794 testedP!294 input!5817))))

(assert (=> start!548552 e!3227529))

(declare-fun e!3227525 () Bool)

(assert (=> start!548552 e!3227525))

(assert (=> start!548552 e!3227523))

(declare-fun condSetEmpty!32402 () Bool)

(assert (=> start!548552 (= condSetEmpty!32402 (= baseZ!62 ((as const (Array Context!8090 Bool)) false)))))

(assert (=> start!548552 setRes!32401))

(declare-fun condSetEmpty!32401 () Bool)

(assert (=> start!548552 (= condSetEmpty!32401 (= z!4581 ((as const (Array Context!8090 Bool)) false)))))

(assert (=> start!548552 setRes!32402))

(declare-fun setIsEmpty!32402 () Bool)

(assert (=> setIsEmpty!32402 setRes!32402))

(declare-fun b!5180123 () Bool)

(assert (=> b!5180123 (= e!3227529 e!3227528)))

(declare-fun res!2200870 () Bool)

(assert (=> b!5180123 (=> (not res!2200870) (not e!3227528))))

(assert (=> b!5180123 (= res!2200870 (not (isEmpty!32219 (_1!35239 lt!2134956))))))

(declare-fun lt!2134946 () List!60300)

(assert (=> b!5180123 (= lt!2134956 (findLongestMatchInnerZipper!317 z!4581 testedP!294 lt!2134945 lt!2134946 input!5817 lt!2134950))))

(assert (=> b!5180123 (= lt!2134950 (size!39697 input!5817))))

(assert (=> b!5180123 (= lt!2134946 (getSuffix!3442 input!5817 testedP!294))))

(assert (=> b!5180123 (= lt!2134945 (size!39697 testedP!294))))

(declare-fun b!5180124 () Bool)

(declare-fun tp!1452861 () Bool)

(assert (=> b!5180124 (= e!3227525 (and tp_is_empty!38575 tp!1452861))))

(declare-fun b!5180125 () Bool)

(assert (=> b!5180125 (= e!3227527 (matchZipper!989 baseZ!62 (_1!35239 lt!2134953)))))

(declare-fun b!5180126 () Bool)

(declare-fun Unit!152125 () Unit!152123)

(assert (=> b!5180126 (= e!3227532 Unit!152125)))

(declare-fun lt!2134951 () Unit!152123)

(declare-fun lemmaIsPrefixRefl!3799 (List!60300 List!60300) Unit!152123)

(assert (=> b!5180126 (= lt!2134951 (lemmaIsPrefixRefl!3799 input!5817 input!5817))))

(assert (=> b!5180126 (isPrefix!5794 input!5817 input!5817)))

(declare-fun lt!2134957 () Unit!152123)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1439 (List!60300 List!60300 List!60300) Unit!152123)

(assert (=> b!5180126 (= lt!2134957 (lemmaIsPrefixSameLengthThenSameList!1439 input!5817 testedP!294 input!5817))))

(assert (=> b!5180126 false))

(declare-fun b!5180127 () Bool)

(declare-fun res!2200865 () Bool)

(assert (=> b!5180127 (=> (not res!2200865) (not e!3227529))))

(assert (=> b!5180127 (= res!2200865 (= (derivationZipper!284 baseZ!62 testedP!294) z!4581))))

(declare-fun b!5180128 () Bool)

(assert (=> b!5180128 (= e!3227530 e!3227531)))

(declare-fun res!2200864 () Bool)

(assert (=> b!5180128 (=> res!2200864 e!3227531)))

(declare-fun nullableZipper!1199 ((InoxSet Context!8090)) Bool)

(assert (=> b!5180128 (= res!2200864 (nullableZipper!1199 z!4581))))

(assert (=> b!5180128 (isPrefix!5794 lt!2134949 input!5817)))

(declare-fun lt!2134954 () Unit!152123)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1099 (List!60300 List!60300) Unit!152123)

(assert (=> b!5180128 (= lt!2134954 (lemmaAddHeadSuffixToPrefixStillPrefix!1099 testedP!294 input!5817))))

(declare-fun ++!13177 (List!60300 List!60300) List!60300)

(assert (=> b!5180128 (= lt!2134949 (++!13177 testedP!294 (Cons!60176 lt!2134944 Nil!60176)))))

(declare-fun head!11079 (List!60300) C!29592)

(assert (=> b!5180128 (= lt!2134944 (head!11079 lt!2134946))))

(declare-fun b!5180129 () Bool)

(declare-fun Unit!152126 () Unit!152123)

(assert (=> b!5180129 (= e!3227532 Unit!152126)))

(declare-fun b!5180130 () Bool)

(declare-fun res!2200867 () Bool)

(assert (=> b!5180130 (=> (not res!2200867) (not e!3227528))))

(assert (=> b!5180130 (= res!2200867 (not (= testedP!294 input!5817)))))

(declare-fun b!5180131 () Bool)

(declare-fun tp!1452863 () Bool)

(assert (=> b!5180131 (= e!3227524 tp!1452863)))

(assert (= (and start!548552 res!2200866) b!5180127))

(assert (= (and b!5180127 res!2200865) b!5180123))

(assert (= (and b!5180123 res!2200870) b!5180130))

(assert (= (and b!5180130 res!2200867) b!5180121))

(assert (= (and b!5180121 c!892595) b!5180126))

(assert (= (and b!5180121 (not c!892595)) b!5180129))

(assert (= (and b!5180121 (not res!2200869)) b!5180128))

(assert (= (and b!5180128 (not res!2200864)) b!5180119))

(assert (= (and b!5180119 (not res!2200868)) b!5180125))

(get-info :version)

(assert (= (and start!548552 ((_ is Cons!60176) testedP!294)) b!5180124))

(assert (= (and start!548552 ((_ is Cons!60176) input!5817)) b!5180120))

(assert (= (and start!548552 condSetEmpty!32402) setIsEmpty!32401))

(assert (= (and start!548552 (not condSetEmpty!32402)) setNonEmpty!32402))

(assert (= setNonEmpty!32402 b!5180122))

(assert (= (and start!548552 condSetEmpty!32401) setIsEmpty!32402))

(assert (= (and start!548552 (not condSetEmpty!32401)) setNonEmpty!32401))

(assert (= setNonEmpty!32401 b!5180131))

(declare-fun m!6238524 () Bool)

(assert (=> b!5180127 m!6238524))

(declare-fun m!6238526 () Bool)

(assert (=> b!5180128 m!6238526))

(declare-fun m!6238528 () Bool)

(assert (=> b!5180128 m!6238528))

(declare-fun m!6238530 () Bool)

(assert (=> b!5180128 m!6238530))

(declare-fun m!6238532 () Bool)

(assert (=> b!5180128 m!6238532))

(declare-fun m!6238534 () Bool)

(assert (=> b!5180128 m!6238534))

(declare-fun m!6238536 () Bool)

(assert (=> start!548552 m!6238536))

(declare-fun m!6238538 () Bool)

(assert (=> setNonEmpty!32402 m!6238538))

(declare-fun m!6238540 () Bool)

(assert (=> b!5180123 m!6238540))

(declare-fun m!6238542 () Bool)

(assert (=> b!5180123 m!6238542))

(declare-fun m!6238544 () Bool)

(assert (=> b!5180123 m!6238544))

(declare-fun m!6238546 () Bool)

(assert (=> b!5180123 m!6238546))

(declare-fun m!6238548 () Bool)

(assert (=> b!5180123 m!6238548))

(declare-fun m!6238550 () Bool)

(assert (=> b!5180121 m!6238550))

(declare-fun m!6238552 () Bool)

(assert (=> setNonEmpty!32401 m!6238552))

(declare-fun m!6238554 () Bool)

(assert (=> b!5180126 m!6238554))

(declare-fun m!6238556 () Bool)

(assert (=> b!5180126 m!6238556))

(declare-fun m!6238558 () Bool)

(assert (=> b!5180126 m!6238558))

(declare-fun m!6238560 () Bool)

(assert (=> b!5180119 m!6238560))

(declare-fun m!6238562 () Bool)

(assert (=> b!5180119 m!6238562))

(declare-fun m!6238564 () Bool)

(assert (=> b!5180119 m!6238564))

(declare-fun m!6238566 () Bool)

(assert (=> b!5180119 m!6238566))

(declare-fun m!6238568 () Bool)

(assert (=> b!5180119 m!6238568))

(assert (=> b!5180119 m!6238560))

(declare-fun m!6238570 () Bool)

(assert (=> b!5180119 m!6238570))

(declare-fun m!6238572 () Bool)

(assert (=> b!5180119 m!6238572))

(assert (=> b!5180119 m!6238570))

(declare-fun m!6238574 () Bool)

(assert (=> b!5180119 m!6238574))

(declare-fun m!6238576 () Bool)

(assert (=> b!5180119 m!6238576))

(declare-fun m!6238578 () Bool)

(assert (=> b!5180125 m!6238578))

(check-sat (not b!5180127) (not b!5180122) (not b!5180123) (not b!5180128) (not setNonEmpty!32401) (not b!5180121) (not b!5180131) tp_is_empty!38575 (not b!5180120) (not b!5180124) (not b!5180125) (not b!5180119) (not setNonEmpty!32402) (not b!5180126) (not start!548552))
(check-sat)
(get-model)

(declare-fun d!1674126 () Bool)

(assert (=> d!1674126 (isPrefix!5794 input!5817 input!5817)))

(declare-fun lt!2134961 () Unit!152123)

(declare-fun choose!38489 (List!60300 List!60300) Unit!152123)

(assert (=> d!1674126 (= lt!2134961 (choose!38489 input!5817 input!5817))))

(assert (=> d!1674126 (= (lemmaIsPrefixRefl!3799 input!5817 input!5817) lt!2134961)))

(declare-fun bs!1206730 () Bool)

(assert (= bs!1206730 d!1674126))

(assert (=> bs!1206730 m!6238556))

(declare-fun m!6238580 () Bool)

(assert (=> bs!1206730 m!6238580))

(assert (=> b!5180126 d!1674126))

(declare-fun b!5180147 () Bool)

(declare-fun res!2200881 () Bool)

(declare-fun e!3227542 () Bool)

(assert (=> b!5180147 (=> (not res!2200881) (not e!3227542))))

(assert (=> b!5180147 (= res!2200881 (= (head!11079 input!5817) (head!11079 input!5817)))))

(declare-fun b!5180149 () Bool)

(declare-fun e!3227544 () Bool)

(assert (=> b!5180149 (= e!3227544 (>= (size!39697 input!5817) (size!39697 input!5817)))))

(declare-fun b!5180146 () Bool)

(declare-fun e!3227543 () Bool)

(assert (=> b!5180146 (= e!3227543 e!3227542)))

(declare-fun res!2200880 () Bool)

(assert (=> b!5180146 (=> (not res!2200880) (not e!3227542))))

(assert (=> b!5180146 (= res!2200880 (not ((_ is Nil!60176) input!5817)))))

(declare-fun b!5180148 () Bool)

(declare-fun tail!10178 (List!60300) List!60300)

(assert (=> b!5180148 (= e!3227542 (isPrefix!5794 (tail!10178 input!5817) (tail!10178 input!5817)))))

(declare-fun d!1674128 () Bool)

(assert (=> d!1674128 e!3227544))

(declare-fun res!2200882 () Bool)

(assert (=> d!1674128 (=> res!2200882 e!3227544)))

(declare-fun lt!2134964 () Bool)

(assert (=> d!1674128 (= res!2200882 (not lt!2134964))))

(assert (=> d!1674128 (= lt!2134964 e!3227543)))

(declare-fun res!2200879 () Bool)

(assert (=> d!1674128 (=> res!2200879 e!3227543)))

(assert (=> d!1674128 (= res!2200879 ((_ is Nil!60176) input!5817))))

(assert (=> d!1674128 (= (isPrefix!5794 input!5817 input!5817) lt!2134964)))

(assert (= (and d!1674128 (not res!2200879)) b!5180146))

(assert (= (and b!5180146 res!2200880) b!5180147))

(assert (= (and b!5180147 res!2200881) b!5180148))

(assert (= (and d!1674128 (not res!2200882)) b!5180149))

(declare-fun m!6238586 () Bool)

(assert (=> b!5180147 m!6238586))

(assert (=> b!5180147 m!6238586))

(assert (=> b!5180149 m!6238548))

(assert (=> b!5180149 m!6238548))

(declare-fun m!6238588 () Bool)

(assert (=> b!5180148 m!6238588))

(assert (=> b!5180148 m!6238588))

(assert (=> b!5180148 m!6238588))

(assert (=> b!5180148 m!6238588))

(declare-fun m!6238590 () Bool)

(assert (=> b!5180148 m!6238590))

(assert (=> b!5180126 d!1674128))

(declare-fun d!1674134 () Bool)

(assert (=> d!1674134 (= input!5817 testedP!294)))

(declare-fun lt!2134970 () Unit!152123)

(declare-fun choose!38491 (List!60300 List!60300 List!60300) Unit!152123)

(assert (=> d!1674134 (= lt!2134970 (choose!38491 input!5817 testedP!294 input!5817))))

(assert (=> d!1674134 (isPrefix!5794 input!5817 input!5817)))

(assert (=> d!1674134 (= (lemmaIsPrefixSameLengthThenSameList!1439 input!5817 testedP!294 input!5817) lt!2134970)))

(declare-fun bs!1206731 () Bool)

(assert (= bs!1206731 d!1674134))

(declare-fun m!6238594 () Bool)

(assert (=> bs!1206731 m!6238594))

(assert (=> bs!1206731 m!6238556))

(assert (=> b!5180126 d!1674134))

(declare-fun d!1674136 () Bool)

(declare-fun c!892602 () Bool)

(assert (=> d!1674136 (= c!892602 ((_ is Cons!60176) testedP!294))))

(declare-fun e!3227556 () (InoxSet Context!8090))

(assert (=> d!1674136 (= (derivationZipper!284 baseZ!62 testedP!294) e!3227556)))

(declare-fun b!5180166 () Bool)

(assert (=> b!5180166 (= e!3227556 (derivationZipper!284 (derivationStepZipper!1007 baseZ!62 (h!66624 testedP!294)) (t!373453 testedP!294)))))

(declare-fun b!5180167 () Bool)

(assert (=> b!5180167 (= e!3227556 baseZ!62)))

(assert (= (and d!1674136 c!892602) b!5180166))

(assert (= (and d!1674136 (not c!892602)) b!5180167))

(declare-fun m!6238606 () Bool)

(assert (=> b!5180166 m!6238606))

(assert (=> b!5180166 m!6238606))

(declare-fun m!6238608 () Bool)

(assert (=> b!5180166 m!6238608))

(assert (=> b!5180127 d!1674136))

(declare-fun d!1674142 () Bool)

(declare-fun lt!2134976 () Int)

(assert (=> d!1674142 (>= lt!2134976 0)))

(declare-fun e!3227561 () Int)

(assert (=> d!1674142 (= lt!2134976 e!3227561)))

(declare-fun c!892607 () Bool)

(assert (=> d!1674142 (= c!892607 ((_ is Nil!60176) input!5817))))

(assert (=> d!1674142 (= (size!39697 input!5817) lt!2134976)))

(declare-fun b!5180176 () Bool)

(assert (=> b!5180176 (= e!3227561 0)))

(declare-fun b!5180177 () Bool)

(assert (=> b!5180177 (= e!3227561 (+ 1 (size!39697 (t!373453 input!5817))))))

(assert (= (and d!1674142 c!892607) b!5180176))

(assert (= (and d!1674142 (not c!892607)) b!5180177))

(declare-fun m!6238610 () Bool)

(assert (=> b!5180177 m!6238610))

(assert (=> b!5180123 d!1674142))

(declare-fun d!1674144 () Bool)

(assert (=> d!1674144 (= (isEmpty!32219 (_1!35239 lt!2134956)) ((_ is Nil!60176) (_1!35239 lt!2134956)))))

(assert (=> b!5180123 d!1674144))

(declare-fun d!1674148 () Bool)

(declare-fun lt!2134979 () List!60300)

(assert (=> d!1674148 (= (++!13177 testedP!294 lt!2134979) input!5817)))

(declare-fun e!3227565 () List!60300)

(assert (=> d!1674148 (= lt!2134979 e!3227565)))

(declare-fun c!892611 () Bool)

(assert (=> d!1674148 (= c!892611 ((_ is Cons!60176) testedP!294))))

(assert (=> d!1674148 (>= (size!39697 input!5817) (size!39697 testedP!294))))

(assert (=> d!1674148 (= (getSuffix!3442 input!5817 testedP!294) lt!2134979)))

(declare-fun b!5180184 () Bool)

(assert (=> b!5180184 (= e!3227565 (getSuffix!3442 (tail!10178 input!5817) (t!373453 testedP!294)))))

(declare-fun b!5180185 () Bool)

(assert (=> b!5180185 (= e!3227565 input!5817)))

(assert (= (and d!1674148 c!892611) b!5180184))

(assert (= (and d!1674148 (not c!892611)) b!5180185))

(declare-fun m!6238622 () Bool)

(assert (=> d!1674148 m!6238622))

(assert (=> d!1674148 m!6238548))

(assert (=> d!1674148 m!6238542))

(assert (=> b!5180184 m!6238588))

(assert (=> b!5180184 m!6238588))

(declare-fun m!6238624 () Bool)

(assert (=> b!5180184 m!6238624))

(assert (=> b!5180123 d!1674148))

(declare-fun b!5180214 () Bool)

(declare-fun c!892624 () Bool)

(declare-fun call!364046 () Bool)

(assert (=> b!5180214 (= c!892624 call!364046)))

(declare-fun lt!2135039 () Unit!152123)

(declare-fun lt!2135036 () Unit!152123)

(assert (=> b!5180214 (= lt!2135039 lt!2135036)))

(assert (=> b!5180214 (= input!5817 testedP!294)))

(declare-fun call!364044 () Unit!152123)

(assert (=> b!5180214 (= lt!2135036 call!364044)))

(declare-fun lt!2135042 () Unit!152123)

(declare-fun lt!2135046 () Unit!152123)

(assert (=> b!5180214 (= lt!2135042 lt!2135046)))

(declare-fun call!364051 () Bool)

(assert (=> b!5180214 call!364051))

(declare-fun call!364045 () Unit!152123)

(assert (=> b!5180214 (= lt!2135046 call!364045)))

(declare-fun e!3227587 () tuple2!63872)

(declare-fun e!3227588 () tuple2!63872)

(assert (=> b!5180214 (= e!3227587 e!3227588)))

(declare-fun b!5180215 () Bool)

(declare-fun e!3227585 () Bool)

(declare-fun lt!2135034 () tuple2!63872)

(assert (=> b!5180215 (= e!3227585 (>= (size!39697 (_1!35239 lt!2135034)) (size!39697 testedP!294)))))

(declare-fun b!5180216 () Bool)

(declare-fun c!892627 () Bool)

(assert (=> b!5180216 (= c!892627 call!364046)))

(declare-fun lt!2135055 () Unit!152123)

(declare-fun lt!2135054 () Unit!152123)

(assert (=> b!5180216 (= lt!2135055 lt!2135054)))

(declare-fun lt!2135043 () List!60300)

(declare-fun lt!2135040 () C!29592)

(assert (=> b!5180216 (= (++!13177 (++!13177 testedP!294 (Cons!60176 lt!2135040 Nil!60176)) lt!2135043) input!5817)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1596 (List!60300 C!29592 List!60300 List!60300) Unit!152123)

(assert (=> b!5180216 (= lt!2135054 (lemmaMoveElementToOtherListKeepsConcatEq!1596 testedP!294 lt!2135040 lt!2135043 input!5817))))

(assert (=> b!5180216 (= lt!2135043 (tail!10178 lt!2134946))))

(assert (=> b!5180216 (= lt!2135040 (head!11079 lt!2134946))))

(declare-fun lt!2135037 () Unit!152123)

(declare-fun lt!2135038 () Unit!152123)

(assert (=> b!5180216 (= lt!2135037 lt!2135038)))

(assert (=> b!5180216 (isPrefix!5794 (++!13177 testedP!294 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 testedP!294)) Nil!60176)) input!5817)))

(assert (=> b!5180216 (= lt!2135038 (lemmaAddHeadSuffixToPrefixStillPrefix!1099 testedP!294 input!5817))))

(declare-fun lt!2135047 () List!60300)

(assert (=> b!5180216 (= lt!2135047 (++!13177 testedP!294 (Cons!60176 (head!11079 lt!2134946) Nil!60176)))))

(declare-fun lt!2135056 () Unit!152123)

(declare-fun e!3227589 () Unit!152123)

(assert (=> b!5180216 (= lt!2135056 e!3227589)))

(declare-fun c!892629 () Bool)

(assert (=> b!5180216 (= c!892629 (= (size!39697 testedP!294) (size!39697 input!5817)))))

(declare-fun lt!2135035 () Unit!152123)

(declare-fun lt!2135044 () Unit!152123)

(assert (=> b!5180216 (= lt!2135035 lt!2135044)))

(assert (=> b!5180216 (<= (size!39697 testedP!294) (size!39697 input!5817))))

(assert (=> b!5180216 (= lt!2135044 (lemmaIsPrefixThenSmallerEqSize!955 testedP!294 input!5817))))

(declare-fun e!3227583 () tuple2!63872)

(assert (=> b!5180216 (= e!3227587 e!3227583)))

(declare-fun b!5180217 () Bool)

(declare-fun e!3227586 () tuple2!63872)

(assert (=> b!5180217 (= e!3227586 e!3227587)))

(declare-fun c!892625 () Bool)

(assert (=> b!5180217 (= c!892625 (= lt!2134945 lt!2134950))))

(declare-fun b!5180218 () Bool)

(declare-fun call!364047 () tuple2!63872)

(assert (=> b!5180218 (= e!3227583 call!364047)))

(declare-fun b!5180219 () Bool)

(declare-fun e!3227584 () Bool)

(assert (=> b!5180219 (= e!3227584 e!3227585)))

(declare-fun res!2200900 () Bool)

(assert (=> b!5180219 (=> res!2200900 e!3227585)))

(assert (=> b!5180219 (= res!2200900 (isEmpty!32219 (_1!35239 lt!2135034)))))

(declare-fun bm!364039 () Bool)

(assert (=> bm!364039 (= call!364051 (isPrefix!5794 input!5817 input!5817))))

(declare-fun b!5180220 () Bool)

(declare-fun Unit!152130 () Unit!152123)

(assert (=> b!5180220 (= e!3227589 Unit!152130)))

(declare-fun bm!364040 () Bool)

(assert (=> bm!364040 (= call!364044 (lemmaIsPrefixSameLengthThenSameList!1439 input!5817 testedP!294 input!5817))))

(declare-fun bm!364041 () Bool)

(assert (=> bm!364041 (= call!364046 (nullableZipper!1199 z!4581))))

(declare-fun b!5180221 () Bool)

(declare-fun Unit!152131 () Unit!152123)

(assert (=> b!5180221 (= e!3227589 Unit!152131)))

(declare-fun lt!2135050 () Unit!152123)

(assert (=> b!5180221 (= lt!2135050 call!364045)))

(assert (=> b!5180221 call!364051))

(declare-fun lt!2135048 () Unit!152123)

(assert (=> b!5180221 (= lt!2135048 lt!2135050)))

(declare-fun lt!2135052 () Unit!152123)

(assert (=> b!5180221 (= lt!2135052 call!364044)))

(assert (=> b!5180221 (= input!5817 testedP!294)))

(declare-fun lt!2135053 () Unit!152123)

(assert (=> b!5180221 (= lt!2135053 lt!2135052)))

(assert (=> b!5180221 false))

(declare-fun bm!364042 () Bool)

(declare-fun call!364049 () List!60300)

(assert (=> bm!364042 (= call!364049 (tail!10178 lt!2134946))))

(declare-fun b!5180222 () Bool)

(declare-fun e!3227582 () tuple2!63872)

(declare-fun lt!2135045 () tuple2!63872)

(assert (=> b!5180222 (= e!3227582 lt!2135045)))

(declare-fun b!5180223 () Bool)

(assert (=> b!5180223 (= e!3227588 (tuple2!63873 Nil!60176 input!5817))))

(declare-fun b!5180224 () Bool)

(assert (=> b!5180224 (= e!3227582 (tuple2!63873 testedP!294 lt!2134946))))

(declare-fun bm!364044 () Bool)

(declare-fun call!364050 () C!29592)

(assert (=> bm!364044 (= call!364050 (head!11079 lt!2134946))))

(declare-fun bm!364045 () Bool)

(assert (=> bm!364045 (= call!364045 (lemmaIsPrefixRefl!3799 input!5817 input!5817))))

(declare-fun call!364048 () (InoxSet Context!8090))

(declare-fun bm!364046 () Bool)

(assert (=> bm!364046 (= call!364047 (findLongestMatchInnerZipper!317 call!364048 lt!2135047 (+ lt!2134945 1) call!364049 input!5817 lt!2134950))))

(declare-fun b!5180225 () Bool)

(assert (=> b!5180225 (= e!3227588 (tuple2!63873 testedP!294 Nil!60176))))

(declare-fun b!5180226 () Bool)

(assert (=> b!5180226 (= e!3227583 e!3227582)))

(assert (=> b!5180226 (= lt!2135045 call!364047)))

(declare-fun c!892626 () Bool)

(assert (=> b!5180226 (= c!892626 (isEmpty!32219 (_1!35239 lt!2135045)))))

(declare-fun b!5180227 () Bool)

(assert (=> b!5180227 (= e!3227586 (tuple2!63873 Nil!60176 input!5817))))

(declare-fun bm!364043 () Bool)

(assert (=> bm!364043 (= call!364048 (derivationStepZipper!1007 z!4581 call!364050))))

(declare-fun d!1674150 () Bool)

(assert (=> d!1674150 e!3227584))

(declare-fun res!2200899 () Bool)

(assert (=> d!1674150 (=> (not res!2200899) (not e!3227584))))

(assert (=> d!1674150 (= res!2200899 (= (++!13177 (_1!35239 lt!2135034) (_2!35239 lt!2135034)) input!5817))))

(assert (=> d!1674150 (= lt!2135034 e!3227586)))

(declare-fun c!892628 () Bool)

(declare-fun lostCauseZipper!1348 ((InoxSet Context!8090)) Bool)

(assert (=> d!1674150 (= c!892628 (lostCauseZipper!1348 z!4581))))

(declare-fun lt!2135033 () Unit!152123)

(declare-fun Unit!152133 () Unit!152123)

(assert (=> d!1674150 (= lt!2135033 Unit!152133)))

(assert (=> d!1674150 (= (getSuffix!3442 input!5817 testedP!294) lt!2134946)))

(declare-fun lt!2135051 () Unit!152123)

(declare-fun lt!2135057 () Unit!152123)

(assert (=> d!1674150 (= lt!2135051 lt!2135057)))

(declare-fun lt!2135032 () List!60300)

(assert (=> d!1674150 (= lt!2134946 lt!2135032)))

(declare-fun lemmaSamePrefixThenSameSuffix!2715 (List!60300 List!60300 List!60300 List!60300 List!60300) Unit!152123)

(assert (=> d!1674150 (= lt!2135057 (lemmaSamePrefixThenSameSuffix!2715 testedP!294 lt!2134946 testedP!294 lt!2135032 input!5817))))

(assert (=> d!1674150 (= lt!2135032 (getSuffix!3442 input!5817 testedP!294))))

(declare-fun lt!2135049 () Unit!152123)

(declare-fun lt!2135041 () Unit!152123)

(assert (=> d!1674150 (= lt!2135049 lt!2135041)))

(assert (=> d!1674150 (isPrefix!5794 testedP!294 (++!13177 testedP!294 lt!2134946))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3609 (List!60300 List!60300) Unit!152123)

(assert (=> d!1674150 (= lt!2135041 (lemmaConcatTwoListThenFirstIsPrefix!3609 testedP!294 lt!2134946))))

(assert (=> d!1674150 (= (++!13177 testedP!294 lt!2134946) input!5817)))

(assert (=> d!1674150 (= (findLongestMatchInnerZipper!317 z!4581 testedP!294 lt!2134945 lt!2134946 input!5817 lt!2134950) lt!2135034)))

(assert (= (and d!1674150 c!892628) b!5180227))

(assert (= (and d!1674150 (not c!892628)) b!5180217))

(assert (= (and b!5180217 c!892625) b!5180214))

(assert (= (and b!5180217 (not c!892625)) b!5180216))

(assert (= (and b!5180214 c!892624) b!5180225))

(assert (= (and b!5180214 (not c!892624)) b!5180223))

(assert (= (and b!5180216 c!892629) b!5180221))

(assert (= (and b!5180216 (not c!892629)) b!5180220))

(assert (= (and b!5180216 c!892627) b!5180226))

(assert (= (and b!5180216 (not c!892627)) b!5180218))

(assert (= (and b!5180226 c!892626) b!5180224))

(assert (= (and b!5180226 (not c!892626)) b!5180222))

(assert (= (or b!5180226 b!5180218) bm!364042))

(assert (= (or b!5180226 b!5180218) bm!364044))

(assert (= (or b!5180226 b!5180218) bm!364043))

(assert (= (or b!5180226 b!5180218) bm!364046))

(assert (= (or b!5180214 b!5180221) bm!364045))

(assert (= (or b!5180214 b!5180216) bm!364041))

(assert (= (or b!5180214 b!5180221) bm!364039))

(assert (= (or b!5180214 b!5180221) bm!364040))

(assert (= (and d!1674150 res!2200899) b!5180219))

(assert (= (and b!5180219 (not res!2200900)) b!5180215))

(assert (=> bm!364039 m!6238556))

(assert (=> bm!364041 m!6238534))

(assert (=> bm!364040 m!6238558))

(declare-fun m!6238626 () Bool)

(assert (=> bm!364043 m!6238626))

(declare-fun m!6238628 () Bool)

(assert (=> d!1674150 m!6238628))

(declare-fun m!6238630 () Bool)

(assert (=> d!1674150 m!6238630))

(assert (=> d!1674150 m!6238630))

(declare-fun m!6238632 () Bool)

(assert (=> d!1674150 m!6238632))

(assert (=> d!1674150 m!6238546))

(declare-fun m!6238634 () Bool)

(assert (=> d!1674150 m!6238634))

(declare-fun m!6238636 () Bool)

(assert (=> d!1674150 m!6238636))

(declare-fun m!6238638 () Bool)

(assert (=> d!1674150 m!6238638))

(declare-fun m!6238640 () Bool)

(assert (=> bm!364046 m!6238640))

(declare-fun m!6238642 () Bool)

(assert (=> b!5180216 m!6238642))

(assert (=> b!5180216 m!6238550))

(declare-fun m!6238644 () Bool)

(assert (=> b!5180216 m!6238644))

(assert (=> b!5180216 m!6238546))

(declare-fun m!6238646 () Bool)

(assert (=> b!5180216 m!6238646))

(assert (=> b!5180216 m!6238542))

(assert (=> b!5180216 m!6238546))

(assert (=> b!5180216 m!6238548))

(assert (=> b!5180216 m!6238642))

(declare-fun m!6238648 () Bool)

(assert (=> b!5180216 m!6238648))

(assert (=> b!5180216 m!6238526))

(assert (=> b!5180216 m!6238528))

(declare-fun m!6238650 () Bool)

(assert (=> b!5180216 m!6238650))

(declare-fun m!6238652 () Bool)

(assert (=> b!5180216 m!6238652))

(assert (=> b!5180216 m!6238644))

(declare-fun m!6238654 () Bool)

(assert (=> b!5180216 m!6238654))

(declare-fun m!6238656 () Bool)

(assert (=> b!5180216 m!6238656))

(declare-fun m!6238658 () Bool)

(assert (=> b!5180219 m!6238658))

(declare-fun m!6238660 () Bool)

(assert (=> b!5180226 m!6238660))

(declare-fun m!6238662 () Bool)

(assert (=> b!5180215 m!6238662))

(assert (=> b!5180215 m!6238542))

(assert (=> bm!364042 m!6238652))

(assert (=> bm!364045 m!6238554))

(assert (=> bm!364044 m!6238528))

(assert (=> b!5180123 d!1674150))

(declare-fun d!1674152 () Bool)

(declare-fun lt!2135058 () Int)

(assert (=> d!1674152 (>= lt!2135058 0)))

(declare-fun e!3227590 () Int)

(assert (=> d!1674152 (= lt!2135058 e!3227590)))

(declare-fun c!892630 () Bool)

(assert (=> d!1674152 (= c!892630 ((_ is Nil!60176) testedP!294))))

(assert (=> d!1674152 (= (size!39697 testedP!294) lt!2135058)))

(declare-fun b!5180228 () Bool)

(assert (=> b!5180228 (= e!3227590 0)))

(declare-fun b!5180229 () Bool)

(assert (=> b!5180229 (= e!3227590 (+ 1 (size!39697 (t!373453 testedP!294))))))

(assert (= (and d!1674152 c!892630) b!5180228))

(assert (= (and d!1674152 (not c!892630)) b!5180229))

(declare-fun m!6238664 () Bool)

(assert (=> b!5180229 m!6238664))

(assert (=> b!5180123 d!1674152))

(declare-fun d!1674154 () Bool)

(assert (=> d!1674154 (= (head!11079 lt!2134946) (h!66624 lt!2134946))))

(assert (=> b!5180128 d!1674154))

(declare-fun b!5180239 () Bool)

(declare-fun e!3227596 () List!60300)

(assert (=> b!5180239 (= e!3227596 (Cons!60176 (h!66624 testedP!294) (++!13177 (t!373453 testedP!294) (Cons!60176 lt!2134944 Nil!60176))))))

(declare-fun b!5180238 () Bool)

(assert (=> b!5180238 (= e!3227596 (Cons!60176 lt!2134944 Nil!60176))))

(declare-fun b!5180240 () Bool)

(declare-fun res!2200905 () Bool)

(declare-fun e!3227595 () Bool)

(assert (=> b!5180240 (=> (not res!2200905) (not e!3227595))))

(declare-fun lt!2135061 () List!60300)

(assert (=> b!5180240 (= res!2200905 (= (size!39697 lt!2135061) (+ (size!39697 testedP!294) (size!39697 (Cons!60176 lt!2134944 Nil!60176)))))))

(declare-fun b!5180241 () Bool)

(assert (=> b!5180241 (= e!3227595 (or (not (= (Cons!60176 lt!2134944 Nil!60176) Nil!60176)) (= lt!2135061 testedP!294)))))

(declare-fun d!1674156 () Bool)

(assert (=> d!1674156 e!3227595))

(declare-fun res!2200906 () Bool)

(assert (=> d!1674156 (=> (not res!2200906) (not e!3227595))))

(declare-fun content!10669 (List!60300) (InoxSet C!29592))

(assert (=> d!1674156 (= res!2200906 (= (content!10669 lt!2135061) ((_ map or) (content!10669 testedP!294) (content!10669 (Cons!60176 lt!2134944 Nil!60176)))))))

(assert (=> d!1674156 (= lt!2135061 e!3227596)))

(declare-fun c!892633 () Bool)

(assert (=> d!1674156 (= c!892633 ((_ is Nil!60176) testedP!294))))

(assert (=> d!1674156 (= (++!13177 testedP!294 (Cons!60176 lt!2134944 Nil!60176)) lt!2135061)))

(assert (= (and d!1674156 c!892633) b!5180238))

(assert (= (and d!1674156 (not c!892633)) b!5180239))

(assert (= (and d!1674156 res!2200906) b!5180240))

(assert (= (and b!5180240 res!2200905) b!5180241))

(declare-fun m!6238666 () Bool)

(assert (=> b!5180239 m!6238666))

(declare-fun m!6238668 () Bool)

(assert (=> b!5180240 m!6238668))

(assert (=> b!5180240 m!6238542))

(declare-fun m!6238670 () Bool)

(assert (=> b!5180240 m!6238670))

(declare-fun m!6238672 () Bool)

(assert (=> d!1674156 m!6238672))

(declare-fun m!6238674 () Bool)

(assert (=> d!1674156 m!6238674))

(declare-fun m!6238676 () Bool)

(assert (=> d!1674156 m!6238676))

(assert (=> b!5180128 d!1674156))

(declare-fun d!1674158 () Bool)

(assert (=> d!1674158 (isPrefix!5794 (++!13177 testedP!294 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 testedP!294)) Nil!60176)) input!5817)))

(declare-fun lt!2135064 () Unit!152123)

(declare-fun choose!38492 (List!60300 List!60300) Unit!152123)

(assert (=> d!1674158 (= lt!2135064 (choose!38492 testedP!294 input!5817))))

(assert (=> d!1674158 (isPrefix!5794 testedP!294 input!5817)))

(assert (=> d!1674158 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1099 testedP!294 input!5817) lt!2135064)))

(declare-fun bs!1206733 () Bool)

(assert (= bs!1206733 d!1674158))

(declare-fun m!6238678 () Bool)

(assert (=> bs!1206733 m!6238678))

(assert (=> bs!1206733 m!6238546))

(assert (=> bs!1206733 m!6238646))

(assert (=> bs!1206733 m!6238642))

(assert (=> bs!1206733 m!6238648))

(assert (=> bs!1206733 m!6238536))

(assert (=> bs!1206733 m!6238642))

(assert (=> bs!1206733 m!6238546))

(assert (=> b!5180128 d!1674158))

(declare-fun d!1674160 () Bool)

(declare-fun lambda!258876 () Int)

(declare-fun exists!1947 ((InoxSet Context!8090) Int) Bool)

(assert (=> d!1674160 (= (nullableZipper!1199 z!4581) (exists!1947 z!4581 lambda!258876))))

(declare-fun bs!1206743 () Bool)

(assert (= bs!1206743 d!1674160))

(declare-fun m!6238838 () Bool)

(assert (=> bs!1206743 m!6238838))

(assert (=> b!5180128 d!1674160))

(declare-fun b!5180364 () Bool)

(declare-fun res!2200934 () Bool)

(declare-fun e!3227667 () Bool)

(assert (=> b!5180364 (=> (not res!2200934) (not e!3227667))))

(assert (=> b!5180364 (= res!2200934 (= (head!11079 lt!2134949) (head!11079 input!5817)))))

(declare-fun b!5180366 () Bool)

(declare-fun e!3227669 () Bool)

(assert (=> b!5180366 (= e!3227669 (>= (size!39697 input!5817) (size!39697 lt!2134949)))))

(declare-fun b!5180363 () Bool)

(declare-fun e!3227668 () Bool)

(assert (=> b!5180363 (= e!3227668 e!3227667)))

(declare-fun res!2200933 () Bool)

(assert (=> b!5180363 (=> (not res!2200933) (not e!3227667))))

(assert (=> b!5180363 (= res!2200933 (not ((_ is Nil!60176) input!5817)))))

(declare-fun b!5180365 () Bool)

(assert (=> b!5180365 (= e!3227667 (isPrefix!5794 (tail!10178 lt!2134949) (tail!10178 input!5817)))))

(declare-fun d!1674208 () Bool)

(assert (=> d!1674208 e!3227669))

(declare-fun res!2200935 () Bool)

(assert (=> d!1674208 (=> res!2200935 e!3227669)))

(declare-fun lt!2135198 () Bool)

(assert (=> d!1674208 (= res!2200935 (not lt!2135198))))

(assert (=> d!1674208 (= lt!2135198 e!3227668)))

(declare-fun res!2200932 () Bool)

(assert (=> d!1674208 (=> res!2200932 e!3227668)))

(assert (=> d!1674208 (= res!2200932 ((_ is Nil!60176) lt!2134949))))

(assert (=> d!1674208 (= (isPrefix!5794 lt!2134949 input!5817) lt!2135198)))

(assert (= (and d!1674208 (not res!2200932)) b!5180363))

(assert (= (and b!5180363 res!2200933) b!5180364))

(assert (= (and b!5180364 res!2200934) b!5180365))

(assert (= (and d!1674208 (not res!2200935)) b!5180366))

(declare-fun m!6238840 () Bool)

(assert (=> b!5180364 m!6238840))

(assert (=> b!5180364 m!6238586))

(assert (=> b!5180366 m!6238548))

(assert (=> b!5180366 m!6238560))

(declare-fun m!6238842 () Bool)

(assert (=> b!5180365 m!6238842))

(assert (=> b!5180365 m!6238588))

(assert (=> b!5180365 m!6238842))

(assert (=> b!5180365 m!6238588))

(declare-fun m!6238844 () Bool)

(assert (=> b!5180365 m!6238844))

(assert (=> b!5180128 d!1674208))

(declare-fun b!5180368 () Bool)

(declare-fun res!2200938 () Bool)

(declare-fun e!3227670 () Bool)

(assert (=> b!5180368 (=> (not res!2200938) (not e!3227670))))

(assert (=> b!5180368 (= res!2200938 (= (head!11079 testedP!294) (head!11079 input!5817)))))

(declare-fun b!5180370 () Bool)

(declare-fun e!3227672 () Bool)

(assert (=> b!5180370 (= e!3227672 (>= (size!39697 input!5817) (size!39697 testedP!294)))))

(declare-fun b!5180367 () Bool)

(declare-fun e!3227671 () Bool)

(assert (=> b!5180367 (= e!3227671 e!3227670)))

(declare-fun res!2200937 () Bool)

(assert (=> b!5180367 (=> (not res!2200937) (not e!3227670))))

(assert (=> b!5180367 (= res!2200937 (not ((_ is Nil!60176) input!5817)))))

(declare-fun b!5180369 () Bool)

(assert (=> b!5180369 (= e!3227670 (isPrefix!5794 (tail!10178 testedP!294) (tail!10178 input!5817)))))

(declare-fun d!1674210 () Bool)

(assert (=> d!1674210 e!3227672))

(declare-fun res!2200939 () Bool)

(assert (=> d!1674210 (=> res!2200939 e!3227672)))

(declare-fun lt!2135199 () Bool)

(assert (=> d!1674210 (= res!2200939 (not lt!2135199))))

(assert (=> d!1674210 (= lt!2135199 e!3227671)))

(declare-fun res!2200936 () Bool)

(assert (=> d!1674210 (=> res!2200936 e!3227671)))

(assert (=> d!1674210 (= res!2200936 ((_ is Nil!60176) testedP!294))))

(assert (=> d!1674210 (= (isPrefix!5794 testedP!294 input!5817) lt!2135199)))

(assert (= (and d!1674210 (not res!2200936)) b!5180367))

(assert (= (and b!5180367 res!2200937) b!5180368))

(assert (= (and b!5180368 res!2200938) b!5180369))

(assert (= (and d!1674210 (not res!2200939)) b!5180370))

(declare-fun m!6238846 () Bool)

(assert (=> b!5180368 m!6238846))

(assert (=> b!5180368 m!6238586))

(assert (=> b!5180370 m!6238548))

(assert (=> b!5180370 m!6238542))

(declare-fun m!6238848 () Bool)

(assert (=> b!5180369 m!6238848))

(assert (=> b!5180369 m!6238588))

(assert (=> b!5180369 m!6238848))

(assert (=> b!5180369 m!6238588))

(declare-fun m!6238850 () Bool)

(assert (=> b!5180369 m!6238850))

(assert (=> start!548552 d!1674210))

(declare-fun d!1674212 () Bool)

(assert (=> d!1674212 (<= (size!39697 testedP!294) (size!39697 input!5817))))

(declare-fun lt!2135202 () Unit!152123)

(declare-fun choose!38494 (List!60300 List!60300) Unit!152123)

(assert (=> d!1674212 (= lt!2135202 (choose!38494 testedP!294 input!5817))))

(assert (=> d!1674212 (isPrefix!5794 testedP!294 input!5817)))

(assert (=> d!1674212 (= (lemmaIsPrefixThenSmallerEqSize!955 testedP!294 input!5817) lt!2135202)))

(declare-fun bs!1206744 () Bool)

(assert (= bs!1206744 d!1674212))

(assert (=> bs!1206744 m!6238542))

(assert (=> bs!1206744 m!6238548))

(declare-fun m!6238852 () Bool)

(assert (=> bs!1206744 m!6238852))

(assert (=> bs!1206744 m!6238536))

(assert (=> b!5180121 d!1674212))

(declare-fun d!1674214 () Bool)

(declare-fun lambda!258879 () Int)

(declare-fun forall!14172 (List!60299 Int) Bool)

(assert (=> d!1674214 (= (inv!79899 setElem!32401) (forall!14172 (exprs!4545 setElem!32401) lambda!258879))))

(declare-fun bs!1206745 () Bool)

(assert (= bs!1206745 d!1674214))

(declare-fun m!6238854 () Bool)

(assert (=> bs!1206745 m!6238854))

(assert (=> setNonEmpty!32401 d!1674214))

(declare-fun d!1674216 () Bool)

(declare-fun c!892681 () Bool)

(assert (=> d!1674216 (= c!892681 (isEmpty!32219 (_1!35239 lt!2134953)))))

(declare-fun e!3227675 () Bool)

(assert (=> d!1674216 (= (matchZipper!989 baseZ!62 (_1!35239 lt!2134953)) e!3227675)))

(declare-fun b!5180375 () Bool)

(assert (=> b!5180375 (= e!3227675 (nullableZipper!1199 baseZ!62))))

(declare-fun b!5180376 () Bool)

(assert (=> b!5180376 (= e!3227675 (matchZipper!989 (derivationStepZipper!1007 baseZ!62 (head!11079 (_1!35239 lt!2134953))) (tail!10178 (_1!35239 lt!2134953))))))

(assert (= (and d!1674216 c!892681) b!5180375))

(assert (= (and d!1674216 (not c!892681)) b!5180376))

(assert (=> d!1674216 m!6238568))

(declare-fun m!6238856 () Bool)

(assert (=> b!5180375 m!6238856))

(declare-fun m!6238858 () Bool)

(assert (=> b!5180376 m!6238858))

(assert (=> b!5180376 m!6238858))

(declare-fun m!6238860 () Bool)

(assert (=> b!5180376 m!6238860))

(declare-fun m!6238862 () Bool)

(assert (=> b!5180376 m!6238862))

(assert (=> b!5180376 m!6238860))

(assert (=> b!5180376 m!6238862))

(declare-fun m!6238864 () Bool)

(assert (=> b!5180376 m!6238864))

(assert (=> b!5180125 d!1674216))

(declare-fun d!1674218 () Bool)

(declare-fun lt!2135203 () Int)

(assert (=> d!1674218 (>= lt!2135203 0)))

(declare-fun e!3227676 () Int)

(assert (=> d!1674218 (= lt!2135203 e!3227676)))

(declare-fun c!892682 () Bool)

(assert (=> d!1674218 (= c!892682 ((_ is Nil!60176) lt!2134949))))

(assert (=> d!1674218 (= (size!39697 lt!2134949) lt!2135203)))

(declare-fun b!5180377 () Bool)

(assert (=> b!5180377 (= e!3227676 0)))

(declare-fun b!5180378 () Bool)

(assert (=> b!5180378 (= e!3227676 (+ 1 (size!39697 (t!373453 lt!2134949))))))

(assert (= (and d!1674218 c!892682) b!5180377))

(assert (= (and d!1674218 (not c!892682)) b!5180378))

(declare-fun m!6238866 () Bool)

(assert (=> b!5180378 m!6238866))

(assert (=> b!5180119 d!1674218))

(declare-fun d!1674220 () Bool)

(assert (=> d!1674220 (= (isEmpty!32219 (_1!35239 lt!2134953)) ((_ is Nil!60176) (_1!35239 lt!2134953)))))

(assert (=> b!5180119 d!1674220))

(declare-fun b!5180379 () Bool)

(declare-fun c!892683 () Bool)

(declare-fun call!364086 () Bool)

(assert (=> b!5180379 (= c!892683 call!364086)))

(declare-fun lt!2135211 () Unit!152123)

(declare-fun lt!2135208 () Unit!152123)

(assert (=> b!5180379 (= lt!2135211 lt!2135208)))

(assert (=> b!5180379 (= input!5817 lt!2134949)))

(declare-fun call!364084 () Unit!152123)

(assert (=> b!5180379 (= lt!2135208 call!364084)))

(declare-fun lt!2135214 () Unit!152123)

(declare-fun lt!2135218 () Unit!152123)

(assert (=> b!5180379 (= lt!2135214 lt!2135218)))

(declare-fun call!364091 () Bool)

(assert (=> b!5180379 call!364091))

(declare-fun call!364085 () Unit!152123)

(assert (=> b!5180379 (= lt!2135218 call!364085)))

(declare-fun e!3227682 () tuple2!63872)

(declare-fun e!3227683 () tuple2!63872)

(assert (=> b!5180379 (= e!3227682 e!3227683)))

(declare-fun b!5180380 () Bool)

(declare-fun e!3227680 () Bool)

(declare-fun lt!2135206 () tuple2!63872)

(assert (=> b!5180380 (= e!3227680 (>= (size!39697 (_1!35239 lt!2135206)) (size!39697 lt!2134949)))))

(declare-fun b!5180381 () Bool)

(declare-fun c!892686 () Bool)

(assert (=> b!5180381 (= c!892686 call!364086)))

(declare-fun lt!2135227 () Unit!152123)

(declare-fun lt!2135226 () Unit!152123)

(assert (=> b!5180381 (= lt!2135227 lt!2135226)))

(declare-fun lt!2135212 () C!29592)

(declare-fun lt!2135215 () List!60300)

(assert (=> b!5180381 (= (++!13177 (++!13177 lt!2134949 (Cons!60176 lt!2135212 Nil!60176)) lt!2135215) input!5817)))

(assert (=> b!5180381 (= lt!2135226 (lemmaMoveElementToOtherListKeepsConcatEq!1596 lt!2134949 lt!2135212 lt!2135215 input!5817))))

(assert (=> b!5180381 (= lt!2135215 (tail!10178 (getSuffix!3442 input!5817 lt!2134949)))))

(assert (=> b!5180381 (= lt!2135212 (head!11079 (getSuffix!3442 input!5817 lt!2134949)))))

(declare-fun lt!2135209 () Unit!152123)

(declare-fun lt!2135210 () Unit!152123)

(assert (=> b!5180381 (= lt!2135209 lt!2135210)))

(assert (=> b!5180381 (isPrefix!5794 (++!13177 lt!2134949 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176)) input!5817)))

(assert (=> b!5180381 (= lt!2135210 (lemmaAddHeadSuffixToPrefixStillPrefix!1099 lt!2134949 input!5817))))

(declare-fun lt!2135219 () List!60300)

(assert (=> b!5180381 (= lt!2135219 (++!13177 lt!2134949 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176)))))

(declare-fun lt!2135228 () Unit!152123)

(declare-fun e!3227684 () Unit!152123)

(assert (=> b!5180381 (= lt!2135228 e!3227684)))

(declare-fun c!892688 () Bool)

(assert (=> b!5180381 (= c!892688 (= (size!39697 lt!2134949) (size!39697 input!5817)))))

(declare-fun lt!2135207 () Unit!152123)

(declare-fun lt!2135216 () Unit!152123)

(assert (=> b!5180381 (= lt!2135207 lt!2135216)))

(assert (=> b!5180381 (<= (size!39697 lt!2134949) (size!39697 input!5817))))

(assert (=> b!5180381 (= lt!2135216 (lemmaIsPrefixThenSmallerEqSize!955 lt!2134949 input!5817))))

(declare-fun e!3227678 () tuple2!63872)

(assert (=> b!5180381 (= e!3227682 e!3227678)))

(declare-fun b!5180382 () Bool)

(declare-fun e!3227681 () tuple2!63872)

(assert (=> b!5180382 (= e!3227681 e!3227682)))

(declare-fun c!892684 () Bool)

(assert (=> b!5180382 (= c!892684 (= (size!39697 lt!2134949) lt!2134950))))

(declare-fun b!5180383 () Bool)

(declare-fun call!364087 () tuple2!63872)

(assert (=> b!5180383 (= e!3227678 call!364087)))

(declare-fun b!5180384 () Bool)

(declare-fun e!3227679 () Bool)

(assert (=> b!5180384 (= e!3227679 e!3227680)))

(declare-fun res!2200941 () Bool)

(assert (=> b!5180384 (=> res!2200941 e!3227680)))

(assert (=> b!5180384 (= res!2200941 (isEmpty!32219 (_1!35239 lt!2135206)))))

(declare-fun bm!364079 () Bool)

(assert (=> bm!364079 (= call!364091 (isPrefix!5794 input!5817 input!5817))))

(declare-fun b!5180385 () Bool)

(declare-fun Unit!152136 () Unit!152123)

(assert (=> b!5180385 (= e!3227684 Unit!152136)))

(declare-fun bm!364080 () Bool)

(assert (=> bm!364080 (= call!364084 (lemmaIsPrefixSameLengthThenSameList!1439 input!5817 lt!2134949 input!5817))))

(declare-fun bm!364081 () Bool)

(assert (=> bm!364081 (= call!364086 (nullableZipper!1199 lt!2134952))))

(declare-fun b!5180386 () Bool)

(declare-fun Unit!152137 () Unit!152123)

(assert (=> b!5180386 (= e!3227684 Unit!152137)))

(declare-fun lt!2135222 () Unit!152123)

(assert (=> b!5180386 (= lt!2135222 call!364085)))

(assert (=> b!5180386 call!364091))

(declare-fun lt!2135220 () Unit!152123)

(assert (=> b!5180386 (= lt!2135220 lt!2135222)))

(declare-fun lt!2135224 () Unit!152123)

(assert (=> b!5180386 (= lt!2135224 call!364084)))

(assert (=> b!5180386 (= input!5817 lt!2134949)))

(declare-fun lt!2135225 () Unit!152123)

(assert (=> b!5180386 (= lt!2135225 lt!2135224)))

(assert (=> b!5180386 false))

(declare-fun bm!364082 () Bool)

(declare-fun call!364089 () List!60300)

(assert (=> bm!364082 (= call!364089 (tail!10178 (getSuffix!3442 input!5817 lt!2134949)))))

(declare-fun b!5180387 () Bool)

(declare-fun e!3227677 () tuple2!63872)

(declare-fun lt!2135217 () tuple2!63872)

(assert (=> b!5180387 (= e!3227677 lt!2135217)))

(declare-fun b!5180388 () Bool)

(assert (=> b!5180388 (= e!3227683 (tuple2!63873 Nil!60176 input!5817))))

(declare-fun b!5180389 () Bool)

(assert (=> b!5180389 (= e!3227677 (tuple2!63873 lt!2134949 (getSuffix!3442 input!5817 lt!2134949)))))

(declare-fun bm!364084 () Bool)

(declare-fun call!364090 () C!29592)

(assert (=> bm!364084 (= call!364090 (head!11079 (getSuffix!3442 input!5817 lt!2134949)))))

(declare-fun bm!364085 () Bool)

(assert (=> bm!364085 (= call!364085 (lemmaIsPrefixRefl!3799 input!5817 input!5817))))

(declare-fun call!364088 () (InoxSet Context!8090))

(declare-fun bm!364086 () Bool)

(assert (=> bm!364086 (= call!364087 (findLongestMatchInnerZipper!317 call!364088 lt!2135219 (+ (size!39697 lt!2134949) 1) call!364089 input!5817 lt!2134950))))

(declare-fun b!5180390 () Bool)

(assert (=> b!5180390 (= e!3227683 (tuple2!63873 lt!2134949 Nil!60176))))

(declare-fun b!5180391 () Bool)

(assert (=> b!5180391 (= e!3227678 e!3227677)))

(assert (=> b!5180391 (= lt!2135217 call!364087)))

(declare-fun c!892685 () Bool)

(assert (=> b!5180391 (= c!892685 (isEmpty!32219 (_1!35239 lt!2135217)))))

(declare-fun b!5180392 () Bool)

(assert (=> b!5180392 (= e!3227681 (tuple2!63873 Nil!60176 input!5817))))

(declare-fun bm!364083 () Bool)

(assert (=> bm!364083 (= call!364088 (derivationStepZipper!1007 lt!2134952 call!364090))))

(declare-fun d!1674222 () Bool)

(assert (=> d!1674222 e!3227679))

(declare-fun res!2200940 () Bool)

(assert (=> d!1674222 (=> (not res!2200940) (not e!3227679))))

(assert (=> d!1674222 (= res!2200940 (= (++!13177 (_1!35239 lt!2135206) (_2!35239 lt!2135206)) input!5817))))

(assert (=> d!1674222 (= lt!2135206 e!3227681)))

(declare-fun c!892687 () Bool)

(assert (=> d!1674222 (= c!892687 (lostCauseZipper!1348 lt!2134952))))

(declare-fun lt!2135205 () Unit!152123)

(declare-fun Unit!152138 () Unit!152123)

(assert (=> d!1674222 (= lt!2135205 Unit!152138)))

(assert (=> d!1674222 (= (getSuffix!3442 input!5817 lt!2134949) (getSuffix!3442 input!5817 lt!2134949))))

(declare-fun lt!2135223 () Unit!152123)

(declare-fun lt!2135229 () Unit!152123)

(assert (=> d!1674222 (= lt!2135223 lt!2135229)))

(declare-fun lt!2135204 () List!60300)

(assert (=> d!1674222 (= (getSuffix!3442 input!5817 lt!2134949) lt!2135204)))

(assert (=> d!1674222 (= lt!2135229 (lemmaSamePrefixThenSameSuffix!2715 lt!2134949 (getSuffix!3442 input!5817 lt!2134949) lt!2134949 lt!2135204 input!5817))))

(assert (=> d!1674222 (= lt!2135204 (getSuffix!3442 input!5817 lt!2134949))))

(declare-fun lt!2135221 () Unit!152123)

(declare-fun lt!2135213 () Unit!152123)

(assert (=> d!1674222 (= lt!2135221 lt!2135213)))

(assert (=> d!1674222 (isPrefix!5794 lt!2134949 (++!13177 lt!2134949 (getSuffix!3442 input!5817 lt!2134949)))))

(assert (=> d!1674222 (= lt!2135213 (lemmaConcatTwoListThenFirstIsPrefix!3609 lt!2134949 (getSuffix!3442 input!5817 lt!2134949)))))

(assert (=> d!1674222 (= (++!13177 lt!2134949 (getSuffix!3442 input!5817 lt!2134949)) input!5817)))

(assert (=> d!1674222 (= (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 lt!2134950) lt!2135206)))

(assert (= (and d!1674222 c!892687) b!5180392))

(assert (= (and d!1674222 (not c!892687)) b!5180382))

(assert (= (and b!5180382 c!892684) b!5180379))

(assert (= (and b!5180382 (not c!892684)) b!5180381))

(assert (= (and b!5180379 c!892683) b!5180390))

(assert (= (and b!5180379 (not c!892683)) b!5180388))

(assert (= (and b!5180381 c!892688) b!5180386))

(assert (= (and b!5180381 (not c!892688)) b!5180385))

(assert (= (and b!5180381 c!892686) b!5180391))

(assert (= (and b!5180381 (not c!892686)) b!5180383))

(assert (= (and b!5180391 c!892685) b!5180389))

(assert (= (and b!5180391 (not c!892685)) b!5180387))

(assert (= (or b!5180391 b!5180383) bm!364082))

(assert (= (or b!5180391 b!5180383) bm!364084))

(assert (= (or b!5180391 b!5180383) bm!364083))

(assert (= (or b!5180391 b!5180383) bm!364086))

(assert (= (or b!5180379 b!5180386) bm!364085))

(assert (= (or b!5180379 b!5180381) bm!364081))

(assert (= (or b!5180379 b!5180386) bm!364079))

(assert (= (or b!5180379 b!5180386) bm!364080))

(assert (= (and d!1674222 res!2200940) b!5180384))

(assert (= (and b!5180384 (not res!2200941)) b!5180380))

(assert (=> bm!364079 m!6238556))

(declare-fun m!6238868 () Bool)

(assert (=> bm!364081 m!6238868))

(declare-fun m!6238870 () Bool)

(assert (=> bm!364080 m!6238870))

(declare-fun m!6238872 () Bool)

(assert (=> bm!364083 m!6238872))

(assert (=> d!1674222 m!6238570))

(declare-fun m!6238874 () Bool)

(assert (=> d!1674222 m!6238874))

(assert (=> d!1674222 m!6238570))

(declare-fun m!6238876 () Bool)

(assert (=> d!1674222 m!6238876))

(assert (=> d!1674222 m!6238876))

(declare-fun m!6238878 () Bool)

(assert (=> d!1674222 m!6238878))

(assert (=> d!1674222 m!6238570))

(declare-fun m!6238880 () Bool)

(assert (=> d!1674222 m!6238880))

(declare-fun m!6238882 () Bool)

(assert (=> d!1674222 m!6238882))

(assert (=> d!1674222 m!6238570))

(declare-fun m!6238884 () Bool)

(assert (=> d!1674222 m!6238884))

(declare-fun m!6238886 () Bool)

(assert (=> bm!364086 m!6238886))

(declare-fun m!6238888 () Bool)

(assert (=> b!5180381 m!6238888))

(declare-fun m!6238890 () Bool)

(assert (=> b!5180381 m!6238890))

(declare-fun m!6238892 () Bool)

(assert (=> b!5180381 m!6238892))

(assert (=> b!5180381 m!6238570))

(declare-fun m!6238894 () Bool)

(assert (=> b!5180381 m!6238894))

(assert (=> b!5180381 m!6238560))

(assert (=> b!5180381 m!6238570))

(assert (=> b!5180381 m!6238548))

(assert (=> b!5180381 m!6238888))

(declare-fun m!6238896 () Bool)

(assert (=> b!5180381 m!6238896))

(declare-fun m!6238898 () Bool)

(assert (=> b!5180381 m!6238898))

(assert (=> b!5180381 m!6238570))

(assert (=> b!5180381 m!6238894))

(declare-fun m!6238900 () Bool)

(assert (=> b!5180381 m!6238900))

(assert (=> b!5180381 m!6238570))

(declare-fun m!6238902 () Bool)

(assert (=> b!5180381 m!6238902))

(assert (=> b!5180381 m!6238892))

(declare-fun m!6238904 () Bool)

(assert (=> b!5180381 m!6238904))

(assert (=> b!5180381 m!6238888))

(declare-fun m!6238906 () Bool)

(assert (=> b!5180384 m!6238906))

(declare-fun m!6238908 () Bool)

(assert (=> b!5180391 m!6238908))

(declare-fun m!6238910 () Bool)

(assert (=> b!5180380 m!6238910))

(assert (=> b!5180380 m!6238560))

(assert (=> bm!364082 m!6238570))

(assert (=> bm!364082 m!6238902))

(assert (=> bm!364085 m!6238554))

(assert (=> bm!364084 m!6238570))

(assert (=> bm!364084 m!6238894))

(assert (=> b!5180119 d!1674222))

(declare-fun d!1674224 () Bool)

(declare-fun c!892689 () Bool)

(assert (=> d!1674224 (= c!892689 ((_ is Cons!60176) lt!2134949))))

(declare-fun e!3227685 () (InoxSet Context!8090))

(assert (=> d!1674224 (= (derivationZipper!284 baseZ!62 lt!2134949) e!3227685)))

(declare-fun b!5180393 () Bool)

(assert (=> b!5180393 (= e!3227685 (derivationZipper!284 (derivationStepZipper!1007 baseZ!62 (h!66624 lt!2134949)) (t!373453 lt!2134949)))))

(declare-fun b!5180394 () Bool)

(assert (=> b!5180394 (= e!3227685 baseZ!62)))

(assert (= (and d!1674224 c!892689) b!5180393))

(assert (= (and d!1674224 (not c!892689)) b!5180394))

(declare-fun m!6238912 () Bool)

(assert (=> b!5180393 m!6238912))

(assert (=> b!5180393 m!6238912))

(declare-fun m!6238914 () Bool)

(assert (=> b!5180393 m!6238914))

(assert (=> b!5180119 d!1674224))

(declare-fun d!1674226 () Bool)

(declare-fun c!892690 () Bool)

(assert (=> d!1674226 (= c!892690 (isEmpty!32219 (_1!35239 lt!2134956)))))

(declare-fun e!3227686 () Bool)

(assert (=> d!1674226 (= (matchZipper!989 baseZ!62 (_1!35239 lt!2134956)) e!3227686)))

(declare-fun b!5180395 () Bool)

(assert (=> b!5180395 (= e!3227686 (nullableZipper!1199 baseZ!62))))

(declare-fun b!5180396 () Bool)

(assert (=> b!5180396 (= e!3227686 (matchZipper!989 (derivationStepZipper!1007 baseZ!62 (head!11079 (_1!35239 lt!2134956))) (tail!10178 (_1!35239 lt!2134956))))))

(assert (= (and d!1674226 c!892690) b!5180395))

(assert (= (and d!1674226 (not c!892690)) b!5180396))

(assert (=> d!1674226 m!6238544))

(assert (=> b!5180395 m!6238856))

(declare-fun m!6238916 () Bool)

(assert (=> b!5180396 m!6238916))

(assert (=> b!5180396 m!6238916))

(declare-fun m!6238918 () Bool)

(assert (=> b!5180396 m!6238918))

(declare-fun m!6238920 () Bool)

(assert (=> b!5180396 m!6238920))

(assert (=> b!5180396 m!6238918))

(assert (=> b!5180396 m!6238920))

(declare-fun m!6238922 () Bool)

(assert (=> b!5180396 m!6238922))

(assert (=> b!5180119 d!1674226))

(declare-fun d!1674228 () Bool)

(assert (=> d!1674228 true))

(declare-fun lambda!258882 () Int)

(declare-fun flatMap!464 ((InoxSet Context!8090) Int) (InoxSet Context!8090))

(assert (=> d!1674228 (= (derivationStepZipper!1007 z!4581 lt!2134944) (flatMap!464 z!4581 lambda!258882))))

(declare-fun bs!1206746 () Bool)

(assert (= bs!1206746 d!1674228))

(declare-fun m!6238924 () Bool)

(assert (=> bs!1206746 m!6238924))

(assert (=> b!5180119 d!1674228))

(declare-fun d!1674230 () Bool)

(declare-fun lt!2135230 () List!60300)

(assert (=> d!1674230 (= (++!13177 lt!2134949 lt!2135230) input!5817)))

(declare-fun e!3227687 () List!60300)

(assert (=> d!1674230 (= lt!2135230 e!3227687)))

(declare-fun c!892693 () Bool)

(assert (=> d!1674230 (= c!892693 ((_ is Cons!60176) lt!2134949))))

(assert (=> d!1674230 (>= (size!39697 input!5817) (size!39697 lt!2134949))))

(assert (=> d!1674230 (= (getSuffix!3442 input!5817 lt!2134949) lt!2135230)))

(declare-fun b!5180399 () Bool)

(assert (=> b!5180399 (= e!3227687 (getSuffix!3442 (tail!10178 input!5817) (t!373453 lt!2134949)))))

(declare-fun b!5180400 () Bool)

(assert (=> b!5180400 (= e!3227687 input!5817)))

(assert (= (and d!1674230 c!892693) b!5180399))

(assert (= (and d!1674230 (not c!892693)) b!5180400))

(declare-fun m!6238926 () Bool)

(assert (=> d!1674230 m!6238926))

(assert (=> d!1674230 m!6238548))

(assert (=> d!1674230 m!6238560))

(assert (=> b!5180399 m!6238588))

(assert (=> b!5180399 m!6238588))

(declare-fun m!6238928 () Bool)

(assert (=> b!5180399 m!6238928))

(assert (=> b!5180119 d!1674230))

(declare-fun d!1674232 () Bool)

(assert (=> d!1674232 (= (derivationZipper!284 baseZ!62 (++!13177 testedP!294 (Cons!60176 lt!2134944 Nil!60176))) (derivationStepZipper!1007 z!4581 lt!2134944))))

(declare-fun lt!2135233 () Unit!152123)

(declare-fun choose!38495 ((InoxSet Context!8090) (InoxSet Context!8090) List!60300 C!29592) Unit!152123)

(assert (=> d!1674232 (= lt!2135233 (choose!38495 baseZ!62 z!4581 testedP!294 lt!2134944))))

(assert (=> d!1674232 (= (derivationZipper!284 baseZ!62 testedP!294) z!4581)))

(assert (=> d!1674232 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!117 baseZ!62 z!4581 testedP!294 lt!2134944) lt!2135233)))

(declare-fun bs!1206747 () Bool)

(assert (= bs!1206747 d!1674232))

(assert (=> bs!1206747 m!6238524))

(assert (=> bs!1206747 m!6238576))

(declare-fun m!6238930 () Bool)

(assert (=> bs!1206747 m!6238930))

(assert (=> bs!1206747 m!6238532))

(declare-fun m!6238932 () Bool)

(assert (=> bs!1206747 m!6238932))

(assert (=> bs!1206747 m!6238532))

(assert (=> b!5180119 d!1674232))

(declare-fun d!1674234 () Bool)

(declare-fun e!3227690 () Bool)

(assert (=> d!1674234 e!3227690))

(declare-fun res!2200944 () Bool)

(assert (=> d!1674234 (=> res!2200944 e!3227690)))

(assert (=> d!1674234 (= res!2200944 (isEmpty!32219 (_1!35239 (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 (size!39697 input!5817)))))))

(declare-fun lt!2135236 () Unit!152123)

(declare-fun choose!38496 ((InoxSet Context!8090) (InoxSet Context!8090) List!60300 List!60300) Unit!152123)

(assert (=> d!1674234 (= lt!2135236 (choose!38496 baseZ!62 lt!2134952 lt!2134949 input!5817))))

(assert (=> d!1674234 (isPrefix!5794 lt!2134949 input!5817)))

(assert (=> d!1674234 (= (longestMatchIsAcceptedByMatchOrIsEmptyRec!31 baseZ!62 lt!2134952 lt!2134949 input!5817) lt!2135236)))

(declare-fun b!5180403 () Bool)

(assert (=> b!5180403 (= e!3227690 (matchZipper!989 baseZ!62 (_1!35239 (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 (size!39697 input!5817)))))))

(assert (= (and d!1674234 (not res!2200944)) b!5180403))

(assert (=> d!1674234 m!6238548))

(assert (=> d!1674234 m!6238560))

(assert (=> d!1674234 m!6238530))

(declare-fun m!6238934 () Bool)

(assert (=> d!1674234 m!6238934))

(declare-fun m!6238936 () Bool)

(assert (=> d!1674234 m!6238936))

(assert (=> d!1674234 m!6238560))

(assert (=> d!1674234 m!6238570))

(assert (=> d!1674234 m!6238548))

(declare-fun m!6238938 () Bool)

(assert (=> d!1674234 m!6238938))

(assert (=> d!1674234 m!6238570))

(assert (=> b!5180403 m!6238548))

(assert (=> b!5180403 m!6238560))

(assert (=> b!5180403 m!6238560))

(assert (=> b!5180403 m!6238570))

(assert (=> b!5180403 m!6238548))

(assert (=> b!5180403 m!6238938))

(declare-fun m!6238940 () Bool)

(assert (=> b!5180403 m!6238940))

(assert (=> b!5180403 m!6238570))

(assert (=> b!5180119 d!1674234))

(declare-fun bs!1206748 () Bool)

(declare-fun d!1674236 () Bool)

(assert (= bs!1206748 (and d!1674236 d!1674214)))

(declare-fun lambda!258883 () Int)

(assert (=> bs!1206748 (= lambda!258883 lambda!258879)))

(assert (=> d!1674236 (= (inv!79899 setElem!32402) (forall!14172 (exprs!4545 setElem!32402) lambda!258883))))

(declare-fun bs!1206749 () Bool)

(assert (= bs!1206749 d!1674236))

(declare-fun m!6238942 () Bool)

(assert (=> bs!1206749 m!6238942))

(assert (=> setNonEmpty!32402 d!1674236))

(declare-fun b!5180408 () Bool)

(declare-fun e!3227693 () Bool)

(declare-fun tp!1452888 () Bool)

(declare-fun tp!1452889 () Bool)

(assert (=> b!5180408 (= e!3227693 (and tp!1452888 tp!1452889))))

(assert (=> b!5180122 (= tp!1452858 e!3227693)))

(assert (= (and b!5180122 ((_ is Cons!60175) (exprs!4545 setElem!32402))) b!5180408))

(declare-fun b!5180413 () Bool)

(declare-fun e!3227696 () Bool)

(declare-fun tp!1452892 () Bool)

(assert (=> b!5180413 (= e!3227696 (and tp_is_empty!38575 tp!1452892))))

(assert (=> b!5180120 (= tp!1452862 e!3227696)))

(assert (= (and b!5180120 ((_ is Cons!60176) (t!373453 input!5817))) b!5180413))

(declare-fun condSetEmpty!32409 () Bool)

(assert (=> setNonEmpty!32401 (= condSetEmpty!32409 (= setRest!32401 ((as const (Array Context!8090 Bool)) false)))))

(declare-fun setRes!32409 () Bool)

(assert (=> setNonEmpty!32401 (= tp!1452860 setRes!32409)))

(declare-fun setIsEmpty!32409 () Bool)

(assert (=> setIsEmpty!32409 setRes!32409))

(declare-fun setNonEmpty!32409 () Bool)

(declare-fun tp!1452897 () Bool)

(declare-fun e!3227699 () Bool)

(declare-fun setElem!32409 () Context!8090)

(assert (=> setNonEmpty!32409 (= setRes!32409 (and tp!1452897 (inv!79899 setElem!32409) e!3227699))))

(declare-fun setRest!32409 () (InoxSet Context!8090))

(assert (=> setNonEmpty!32409 (= setRest!32401 ((_ map or) (store ((as const (Array Context!8090 Bool)) false) setElem!32409 true) setRest!32409))))

(declare-fun b!5180418 () Bool)

(declare-fun tp!1452898 () Bool)

(assert (=> b!5180418 (= e!3227699 tp!1452898)))

(assert (= (and setNonEmpty!32401 condSetEmpty!32409) setIsEmpty!32409))

(assert (= (and setNonEmpty!32401 (not condSetEmpty!32409)) setNonEmpty!32409))

(assert (= setNonEmpty!32409 b!5180418))

(declare-fun m!6238944 () Bool)

(assert (=> setNonEmpty!32409 m!6238944))

(declare-fun b!5180419 () Bool)

(declare-fun e!3227700 () Bool)

(declare-fun tp!1452899 () Bool)

(assert (=> b!5180419 (= e!3227700 (and tp_is_empty!38575 tp!1452899))))

(assert (=> b!5180124 (= tp!1452861 e!3227700)))

(assert (= (and b!5180124 ((_ is Cons!60176) (t!373453 testedP!294))) b!5180419))

(declare-fun b!5180420 () Bool)

(declare-fun e!3227701 () Bool)

(declare-fun tp!1452900 () Bool)

(declare-fun tp!1452901 () Bool)

(assert (=> b!5180420 (= e!3227701 (and tp!1452900 tp!1452901))))

(assert (=> b!5180131 (= tp!1452863 e!3227701)))

(assert (= (and b!5180131 ((_ is Cons!60175) (exprs!4545 setElem!32401))) b!5180420))

(declare-fun condSetEmpty!32410 () Bool)

(assert (=> setNonEmpty!32402 (= condSetEmpty!32410 (= setRest!32402 ((as const (Array Context!8090 Bool)) false)))))

(declare-fun setRes!32410 () Bool)

(assert (=> setNonEmpty!32402 (= tp!1452859 setRes!32410)))

(declare-fun setIsEmpty!32410 () Bool)

(assert (=> setIsEmpty!32410 setRes!32410))

(declare-fun setNonEmpty!32410 () Bool)

(declare-fun setElem!32410 () Context!8090)

(declare-fun e!3227702 () Bool)

(declare-fun tp!1452902 () Bool)

(assert (=> setNonEmpty!32410 (= setRes!32410 (and tp!1452902 (inv!79899 setElem!32410) e!3227702))))

(declare-fun setRest!32410 () (InoxSet Context!8090))

(assert (=> setNonEmpty!32410 (= setRest!32402 ((_ map or) (store ((as const (Array Context!8090 Bool)) false) setElem!32410 true) setRest!32410))))

(declare-fun b!5180421 () Bool)

(declare-fun tp!1452903 () Bool)

(assert (=> b!5180421 (= e!3227702 tp!1452903)))

(assert (= (and setNonEmpty!32402 condSetEmpty!32410) setIsEmpty!32410))

(assert (= (and setNonEmpty!32402 (not condSetEmpty!32410)) setNonEmpty!32410))

(assert (= setNonEmpty!32410 b!5180421))

(declare-fun m!6238946 () Bool)

(assert (=> setNonEmpty!32410 m!6238946))

(check-sat (not bm!364042) (not bm!364081) (not d!1674234) (not b!5180418) (not d!1674230) (not b!5180177) (not bm!364040) (not d!1674156) (not bm!364043) (not bm!364082) (not d!1674236) (not b!5180240) (not bm!364039) (not b!5180239) (not b!5180366) (not b!5180166) (not b!5180378) (not b!5180369) (not b!5180413) (not d!1674214) (not setNonEmpty!32409) (not b!5180368) (not bm!364085) (not b!5180226) (not b!5180376) (not b!5180375) (not b!5180395) (not b!5180396) (not d!1674126) (not bm!364044) (not d!1674232) (not b!5180365) (not b!5180381) (not b!5180216) (not b!5180184) (not b!5180420) (not bm!364079) (not b!5180219) (not b!5180148) (not d!1674150) (not b!5180215) (not d!1674228) (not b!5180380) (not b!5180149) (not d!1674222) (not b!5180419) (not bm!364045) (not d!1674134) (not b!5180403) (not d!1674160) (not b!5180421) (not bm!364083) (not d!1674212) (not d!1674148) (not b!5180364) (not b!5180391) (not d!1674226) (not b!5180370) (not bm!364084) (not b!5180399) (not d!1674216) (not bm!364086) (not bm!364080) (not setNonEmpty!32410) (not b!5180229) (not bm!364041) (not b!5180393) (not bm!364046) tp_is_empty!38575 (not b!5180408) (not b!5180147) (not b!5180384) (not d!1674158))
(check-sat)
(get-model)

(declare-fun b!5180475 () Bool)

(declare-fun e!3227734 () List!60300)

(assert (=> b!5180475 (= e!3227734 (Cons!60176 (h!66624 lt!2134949) (++!13177 (t!373453 lt!2134949) lt!2135230)))))

(declare-fun b!5180474 () Bool)

(assert (=> b!5180474 (= e!3227734 lt!2135230)))

(declare-fun b!5180476 () Bool)

(declare-fun res!2200963 () Bool)

(declare-fun e!3227733 () Bool)

(assert (=> b!5180476 (=> (not res!2200963) (not e!3227733))))

(declare-fun lt!2135296 () List!60300)

(assert (=> b!5180476 (= res!2200963 (= (size!39697 lt!2135296) (+ (size!39697 lt!2134949) (size!39697 lt!2135230))))))

(declare-fun b!5180477 () Bool)

(assert (=> b!5180477 (= e!3227733 (or (not (= lt!2135230 Nil!60176)) (= lt!2135296 lt!2134949)))))

(declare-fun d!1674270 () Bool)

(assert (=> d!1674270 e!3227733))

(declare-fun res!2200964 () Bool)

(assert (=> d!1674270 (=> (not res!2200964) (not e!3227733))))

(assert (=> d!1674270 (= res!2200964 (= (content!10669 lt!2135296) ((_ map or) (content!10669 lt!2134949) (content!10669 lt!2135230))))))

(assert (=> d!1674270 (= lt!2135296 e!3227734)))

(declare-fun c!892712 () Bool)

(assert (=> d!1674270 (= c!892712 ((_ is Nil!60176) lt!2134949))))

(assert (=> d!1674270 (= (++!13177 lt!2134949 lt!2135230) lt!2135296)))

(assert (= (and d!1674270 c!892712) b!5180474))

(assert (= (and d!1674270 (not c!892712)) b!5180475))

(assert (= (and d!1674270 res!2200964) b!5180476))

(assert (= (and b!5180476 res!2200963) b!5180477))

(declare-fun m!6239084 () Bool)

(assert (=> b!5180475 m!6239084))

(declare-fun m!6239086 () Bool)

(assert (=> b!5180476 m!6239086))

(assert (=> b!5180476 m!6238560))

(declare-fun m!6239088 () Bool)

(assert (=> b!5180476 m!6239088))

(declare-fun m!6239090 () Bool)

(assert (=> d!1674270 m!6239090))

(declare-fun m!6239092 () Bool)

(assert (=> d!1674270 m!6239092))

(declare-fun m!6239094 () Bool)

(assert (=> d!1674270 m!6239094))

(assert (=> d!1674230 d!1674270))

(assert (=> d!1674230 d!1674142))

(assert (=> d!1674230 d!1674218))

(assert (=> d!1674222 d!1674230))

(declare-fun b!5180479 () Bool)

(declare-fun e!3227736 () List!60300)

(assert (=> b!5180479 (= e!3227736 (Cons!60176 (h!66624 (_1!35239 lt!2135206)) (++!13177 (t!373453 (_1!35239 lt!2135206)) (_2!35239 lt!2135206))))))

(declare-fun b!5180478 () Bool)

(assert (=> b!5180478 (= e!3227736 (_2!35239 lt!2135206))))

(declare-fun b!5180480 () Bool)

(declare-fun res!2200965 () Bool)

(declare-fun e!3227735 () Bool)

(assert (=> b!5180480 (=> (not res!2200965) (not e!3227735))))

(declare-fun lt!2135297 () List!60300)

(assert (=> b!5180480 (= res!2200965 (= (size!39697 lt!2135297) (+ (size!39697 (_1!35239 lt!2135206)) (size!39697 (_2!35239 lt!2135206)))))))

(declare-fun b!5180481 () Bool)

(assert (=> b!5180481 (= e!3227735 (or (not (= (_2!35239 lt!2135206) Nil!60176)) (= lt!2135297 (_1!35239 lt!2135206))))))

(declare-fun d!1674272 () Bool)

(assert (=> d!1674272 e!3227735))

(declare-fun res!2200966 () Bool)

(assert (=> d!1674272 (=> (not res!2200966) (not e!3227735))))

(assert (=> d!1674272 (= res!2200966 (= (content!10669 lt!2135297) ((_ map or) (content!10669 (_1!35239 lt!2135206)) (content!10669 (_2!35239 lt!2135206)))))))

(assert (=> d!1674272 (= lt!2135297 e!3227736)))

(declare-fun c!892713 () Bool)

(assert (=> d!1674272 (= c!892713 ((_ is Nil!60176) (_1!35239 lt!2135206)))))

(assert (=> d!1674272 (= (++!13177 (_1!35239 lt!2135206) (_2!35239 lt!2135206)) lt!2135297)))

(assert (= (and d!1674272 c!892713) b!5180478))

(assert (= (and d!1674272 (not c!892713)) b!5180479))

(assert (= (and d!1674272 res!2200966) b!5180480))

(assert (= (and b!5180480 res!2200965) b!5180481))

(declare-fun m!6239096 () Bool)

(assert (=> b!5180479 m!6239096))

(declare-fun m!6239098 () Bool)

(assert (=> b!5180480 m!6239098))

(assert (=> b!5180480 m!6238910))

(declare-fun m!6239100 () Bool)

(assert (=> b!5180480 m!6239100))

(declare-fun m!6239102 () Bool)

(assert (=> d!1674272 m!6239102))

(declare-fun m!6239104 () Bool)

(assert (=> d!1674272 m!6239104))

(declare-fun m!6239106 () Bool)

(assert (=> d!1674272 m!6239106))

(assert (=> d!1674222 d!1674272))

(declare-fun bs!1206771 () Bool)

(declare-fun d!1674274 () Bool)

(assert (= bs!1206771 (and d!1674274 d!1674160)))

(declare-fun lambda!258901 () Int)

(assert (=> bs!1206771 (not (= lambda!258901 lambda!258876))))

(declare-fun bs!1206773 () Bool)

(declare-fun b!5180506 () Bool)

(assert (= bs!1206773 (and b!5180506 d!1674160)))

(declare-fun lambda!258902 () Int)

(assert (=> bs!1206773 (not (= lambda!258902 lambda!258876))))

(declare-fun bs!1206774 () Bool)

(assert (= bs!1206774 (and b!5180506 d!1674274)))

(assert (=> bs!1206774 (not (= lambda!258902 lambda!258901))))

(declare-fun bs!1206775 () Bool)

(declare-fun b!5180507 () Bool)

(assert (= bs!1206775 (and b!5180507 d!1674160)))

(declare-fun lambda!258903 () Int)

(assert (=> bs!1206775 (not (= lambda!258903 lambda!258876))))

(declare-fun bs!1206777 () Bool)

(assert (= bs!1206777 (and b!5180507 d!1674274)))

(assert (=> bs!1206777 (not (= lambda!258903 lambda!258901))))

(declare-fun bs!1206778 () Bool)

(assert (= bs!1206778 (and b!5180507 b!5180506)))

(assert (=> bs!1206778 (= lambda!258903 lambda!258902)))

(declare-fun e!3227753 () Unit!152123)

(declare-fun Unit!152142 () Unit!152123)

(assert (=> b!5180507 (= e!3227753 Unit!152142)))

(declare-datatypes ((List!60301 0))(
  ( (Nil!60177) (Cons!60177 (h!66625 Context!8090) (t!373454 List!60301)) )
))
(declare-fun lt!2135323 () List!60301)

(declare-fun call!364113 () List!60301)

(assert (=> b!5180507 (= lt!2135323 call!364113)))

(declare-fun lt!2135321 () Unit!152123)

(declare-fun lemmaForallThenNotExists!449 (List!60301 Int) Unit!152123)

(assert (=> b!5180507 (= lt!2135321 (lemmaForallThenNotExists!449 lt!2135323 lambda!258901))))

(declare-fun call!364112 () Bool)

(assert (=> b!5180507 (not call!364112)))

(declare-fun lt!2135328 () Unit!152123)

(assert (=> b!5180507 (= lt!2135328 lt!2135321)))

(declare-fun lt!2135322 () Bool)

(declare-datatypes ((Option!14847 0))(
  ( (None!14846) (Some!14846 (v!50875 List!60300)) )
))
(declare-fun isEmpty!32220 (Option!14847) Bool)

(declare-fun getLanguageWitness!1023 ((InoxSet Context!8090)) Option!14847)

(assert (=> d!1674274 (= lt!2135322 (isEmpty!32220 (getLanguageWitness!1023 lt!2134952)))))

(declare-fun forall!14173 ((InoxSet Context!8090) Int) Bool)

(assert (=> d!1674274 (= lt!2135322 (forall!14173 lt!2134952 lambda!258901))))

(declare-fun lt!2135325 () Unit!152123)

(assert (=> d!1674274 (= lt!2135325 e!3227753)))

(declare-fun c!892731 () Bool)

(assert (=> d!1674274 (= c!892731 (not (forall!14173 lt!2134952 lambda!258901)))))

(assert (=> d!1674274 (= (lostCauseZipper!1348 lt!2134952) lt!2135322)))

(declare-fun bm!364107 () Bool)

(declare-fun toList!8462 ((InoxSet Context!8090)) List!60301)

(assert (=> bm!364107 (= call!364113 (toList!8462 lt!2134952))))

(declare-fun lt!2135326 () List!60301)

(declare-fun bm!364108 () Bool)

(declare-fun exists!1949 (List!60301 Int) Bool)

(assert (=> bm!364108 (= call!364112 (exists!1949 (ite c!892731 lt!2135326 lt!2135323) (ite c!892731 lambda!258902 lambda!258903)))))

(declare-fun Unit!152143 () Unit!152123)

(assert (=> b!5180506 (= e!3227753 Unit!152143)))

(assert (=> b!5180506 (= lt!2135326 call!364113)))

(declare-fun lt!2135324 () Unit!152123)

(declare-fun lemmaNotForallThenExists!482 (List!60301 Int) Unit!152123)

(assert (=> b!5180506 (= lt!2135324 (lemmaNotForallThenExists!482 lt!2135326 lambda!258901))))

(assert (=> b!5180506 call!364112))

(declare-fun lt!2135327 () Unit!152123)

(assert (=> b!5180506 (= lt!2135327 lt!2135324)))

(assert (= (and d!1674274 c!892731) b!5180506))

(assert (= (and d!1674274 (not c!892731)) b!5180507))

(assert (= (or b!5180506 b!5180507) bm!364107))

(assert (= (or b!5180506 b!5180507) bm!364108))

(declare-fun m!6239188 () Bool)

(assert (=> b!5180507 m!6239188))

(declare-fun m!6239192 () Bool)

(assert (=> b!5180506 m!6239192))

(declare-fun m!6239194 () Bool)

(assert (=> d!1674274 m!6239194))

(assert (=> d!1674274 m!6239194))

(declare-fun m!6239196 () Bool)

(assert (=> d!1674274 m!6239196))

(declare-fun m!6239198 () Bool)

(assert (=> d!1674274 m!6239198))

(assert (=> d!1674274 m!6239198))

(declare-fun m!6239200 () Bool)

(assert (=> bm!364108 m!6239200))

(declare-fun m!6239202 () Bool)

(assert (=> bm!364107 m!6239202))

(assert (=> d!1674222 d!1674274))

(declare-fun b!5180517 () Bool)

(declare-fun e!3227760 () List!60300)

(assert (=> b!5180517 (= e!3227760 (Cons!60176 (h!66624 lt!2134949) (++!13177 (t!373453 lt!2134949) (getSuffix!3442 input!5817 lt!2134949))))))

(declare-fun b!5180516 () Bool)

(assert (=> b!5180516 (= e!3227760 (getSuffix!3442 input!5817 lt!2134949))))

(declare-fun b!5180518 () Bool)

(declare-fun res!2200979 () Bool)

(declare-fun e!3227759 () Bool)

(assert (=> b!5180518 (=> (not res!2200979) (not e!3227759))))

(declare-fun lt!2135334 () List!60300)

(assert (=> b!5180518 (= res!2200979 (= (size!39697 lt!2135334) (+ (size!39697 lt!2134949) (size!39697 (getSuffix!3442 input!5817 lt!2134949)))))))

(declare-fun b!5180519 () Bool)

(assert (=> b!5180519 (= e!3227759 (or (not (= (getSuffix!3442 input!5817 lt!2134949) Nil!60176)) (= lt!2135334 lt!2134949)))))

(declare-fun d!1674320 () Bool)

(assert (=> d!1674320 e!3227759))

(declare-fun res!2200980 () Bool)

(assert (=> d!1674320 (=> (not res!2200980) (not e!3227759))))

(assert (=> d!1674320 (= res!2200980 (= (content!10669 lt!2135334) ((_ map or) (content!10669 lt!2134949) (content!10669 (getSuffix!3442 input!5817 lt!2134949)))))))

(assert (=> d!1674320 (= lt!2135334 e!3227760)))

(declare-fun c!892733 () Bool)

(assert (=> d!1674320 (= c!892733 ((_ is Nil!60176) lt!2134949))))

(assert (=> d!1674320 (= (++!13177 lt!2134949 (getSuffix!3442 input!5817 lt!2134949)) lt!2135334)))

(assert (= (and d!1674320 c!892733) b!5180516))

(assert (= (and d!1674320 (not c!892733)) b!5180517))

(assert (= (and d!1674320 res!2200980) b!5180518))

(assert (= (and b!5180518 res!2200979) b!5180519))

(assert (=> b!5180517 m!6238570))

(declare-fun m!6239214 () Bool)

(assert (=> b!5180517 m!6239214))

(declare-fun m!6239216 () Bool)

(assert (=> b!5180518 m!6239216))

(assert (=> b!5180518 m!6238560))

(assert (=> b!5180518 m!6238570))

(declare-fun m!6239218 () Bool)

(assert (=> b!5180518 m!6239218))

(declare-fun m!6239220 () Bool)

(assert (=> d!1674320 m!6239220))

(assert (=> d!1674320 m!6239092))

(assert (=> d!1674320 m!6238570))

(declare-fun m!6239222 () Bool)

(assert (=> d!1674320 m!6239222))

(assert (=> d!1674222 d!1674320))

(declare-fun d!1674324 () Bool)

(assert (=> d!1674324 (isPrefix!5794 lt!2134949 (++!13177 lt!2134949 (getSuffix!3442 input!5817 lt!2134949)))))

(declare-fun lt!2135338 () Unit!152123)

(declare-fun choose!38497 (List!60300 List!60300) Unit!152123)

(assert (=> d!1674324 (= lt!2135338 (choose!38497 lt!2134949 (getSuffix!3442 input!5817 lt!2134949)))))

(assert (=> d!1674324 (= (lemmaConcatTwoListThenFirstIsPrefix!3609 lt!2134949 (getSuffix!3442 input!5817 lt!2134949)) lt!2135338)))

(declare-fun bs!1206779 () Bool)

(assert (= bs!1206779 d!1674324))

(assert (=> bs!1206779 m!6238570))

(assert (=> bs!1206779 m!6238876))

(assert (=> bs!1206779 m!6238876))

(assert (=> bs!1206779 m!6238878))

(assert (=> bs!1206779 m!6238570))

(declare-fun m!6239238 () Bool)

(assert (=> bs!1206779 m!6239238))

(assert (=> d!1674222 d!1674324))

(declare-fun b!5180529 () Bool)

(declare-fun res!2200989 () Bool)

(declare-fun e!3227767 () Bool)

(assert (=> b!5180529 (=> (not res!2200989) (not e!3227767))))

(assert (=> b!5180529 (= res!2200989 (= (head!11079 lt!2134949) (head!11079 (++!13177 lt!2134949 (getSuffix!3442 input!5817 lt!2134949)))))))

(declare-fun b!5180531 () Bool)

(declare-fun e!3227769 () Bool)

(assert (=> b!5180531 (= e!3227769 (>= (size!39697 (++!13177 lt!2134949 (getSuffix!3442 input!5817 lt!2134949))) (size!39697 lt!2134949)))))

(declare-fun b!5180528 () Bool)

(declare-fun e!3227768 () Bool)

(assert (=> b!5180528 (= e!3227768 e!3227767)))

(declare-fun res!2200988 () Bool)

(assert (=> b!5180528 (=> (not res!2200988) (not e!3227767))))

(assert (=> b!5180528 (= res!2200988 (not ((_ is Nil!60176) (++!13177 lt!2134949 (getSuffix!3442 input!5817 lt!2134949)))))))

(declare-fun b!5180530 () Bool)

(assert (=> b!5180530 (= e!3227767 (isPrefix!5794 (tail!10178 lt!2134949) (tail!10178 (++!13177 lt!2134949 (getSuffix!3442 input!5817 lt!2134949)))))))

(declare-fun d!1674332 () Bool)

(assert (=> d!1674332 e!3227769))

(declare-fun res!2200990 () Bool)

(assert (=> d!1674332 (=> res!2200990 e!3227769)))

(declare-fun lt!2135339 () Bool)

(assert (=> d!1674332 (= res!2200990 (not lt!2135339))))

(assert (=> d!1674332 (= lt!2135339 e!3227768)))

(declare-fun res!2200987 () Bool)

(assert (=> d!1674332 (=> res!2200987 e!3227768)))

(assert (=> d!1674332 (= res!2200987 ((_ is Nil!60176) lt!2134949))))

(assert (=> d!1674332 (= (isPrefix!5794 lt!2134949 (++!13177 lt!2134949 (getSuffix!3442 input!5817 lt!2134949))) lt!2135339)))

(assert (= (and d!1674332 (not res!2200987)) b!5180528))

(assert (= (and b!5180528 res!2200988) b!5180529))

(assert (= (and b!5180529 res!2200989) b!5180530))

(assert (= (and d!1674332 (not res!2200990)) b!5180531))

(assert (=> b!5180529 m!6238840))

(assert (=> b!5180529 m!6238876))

(declare-fun m!6239240 () Bool)

(assert (=> b!5180529 m!6239240))

(assert (=> b!5180531 m!6238876))

(declare-fun m!6239242 () Bool)

(assert (=> b!5180531 m!6239242))

(assert (=> b!5180531 m!6238560))

(assert (=> b!5180530 m!6238842))

(assert (=> b!5180530 m!6238876))

(declare-fun m!6239244 () Bool)

(assert (=> b!5180530 m!6239244))

(assert (=> b!5180530 m!6238842))

(assert (=> b!5180530 m!6239244))

(declare-fun m!6239246 () Bool)

(assert (=> b!5180530 m!6239246))

(assert (=> d!1674222 d!1674332))

(declare-fun d!1674334 () Bool)

(assert (=> d!1674334 (= (getSuffix!3442 input!5817 lt!2134949) lt!2135204)))

(declare-fun lt!2135368 () Unit!152123)

(declare-fun choose!38498 (List!60300 List!60300 List!60300 List!60300 List!60300) Unit!152123)

(assert (=> d!1674334 (= lt!2135368 (choose!38498 lt!2134949 (getSuffix!3442 input!5817 lt!2134949) lt!2134949 lt!2135204 input!5817))))

(assert (=> d!1674334 (isPrefix!5794 lt!2134949 input!5817)))

(assert (=> d!1674334 (= (lemmaSamePrefixThenSameSuffix!2715 lt!2134949 (getSuffix!3442 input!5817 lt!2134949) lt!2134949 lt!2135204 input!5817) lt!2135368)))

(declare-fun bs!1206785 () Bool)

(assert (= bs!1206785 d!1674334))

(assert (=> bs!1206785 m!6238570))

(declare-fun m!6239266 () Bool)

(assert (=> bs!1206785 m!6239266))

(assert (=> bs!1206785 m!6238530))

(assert (=> d!1674222 d!1674334))

(assert (=> d!1674226 d!1674144))

(assert (=> bm!364044 d!1674154))

(assert (=> d!1674158 d!1674148))

(declare-fun d!1674346 () Bool)

(assert (=> d!1674346 (= (head!11079 (getSuffix!3442 input!5817 testedP!294)) (h!66624 (getSuffix!3442 input!5817 testedP!294)))))

(assert (=> d!1674158 d!1674346))

(assert (=> d!1674158 d!1674210))

(declare-fun b!5180551 () Bool)

(declare-fun res!2200997 () Bool)

(declare-fun e!3227781 () Bool)

(assert (=> b!5180551 (=> (not res!2200997) (not e!3227781))))

(assert (=> b!5180551 (= res!2200997 (= (head!11079 (++!13177 testedP!294 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 testedP!294)) Nil!60176))) (head!11079 input!5817)))))

(declare-fun b!5180553 () Bool)

(declare-fun e!3227783 () Bool)

(assert (=> b!5180553 (= e!3227783 (>= (size!39697 input!5817) (size!39697 (++!13177 testedP!294 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 testedP!294)) Nil!60176)))))))

(declare-fun b!5180550 () Bool)

(declare-fun e!3227782 () Bool)

(assert (=> b!5180550 (= e!3227782 e!3227781)))

(declare-fun res!2200996 () Bool)

(assert (=> b!5180550 (=> (not res!2200996) (not e!3227781))))

(assert (=> b!5180550 (= res!2200996 (not ((_ is Nil!60176) input!5817)))))

(declare-fun b!5180552 () Bool)

(assert (=> b!5180552 (= e!3227781 (isPrefix!5794 (tail!10178 (++!13177 testedP!294 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 testedP!294)) Nil!60176))) (tail!10178 input!5817)))))

(declare-fun d!1674348 () Bool)

(assert (=> d!1674348 e!3227783))

(declare-fun res!2200998 () Bool)

(assert (=> d!1674348 (=> res!2200998 e!3227783)))

(declare-fun lt!2135369 () Bool)

(assert (=> d!1674348 (= res!2200998 (not lt!2135369))))

(assert (=> d!1674348 (= lt!2135369 e!3227782)))

(declare-fun res!2200995 () Bool)

(assert (=> d!1674348 (=> res!2200995 e!3227782)))

(assert (=> d!1674348 (= res!2200995 ((_ is Nil!60176) (++!13177 testedP!294 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 testedP!294)) Nil!60176))))))

(assert (=> d!1674348 (= (isPrefix!5794 (++!13177 testedP!294 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 testedP!294)) Nil!60176)) input!5817) lt!2135369)))

(assert (= (and d!1674348 (not res!2200995)) b!5180550))

(assert (= (and b!5180550 res!2200996) b!5180551))

(assert (= (and b!5180551 res!2200997) b!5180552))

(assert (= (and d!1674348 (not res!2200998)) b!5180553))

(assert (=> b!5180551 m!6238642))

(declare-fun m!6239268 () Bool)

(assert (=> b!5180551 m!6239268))

(assert (=> b!5180551 m!6238586))

(assert (=> b!5180553 m!6238548))

(assert (=> b!5180553 m!6238642))

(declare-fun m!6239270 () Bool)

(assert (=> b!5180553 m!6239270))

(assert (=> b!5180552 m!6238642))

(declare-fun m!6239272 () Bool)

(assert (=> b!5180552 m!6239272))

(assert (=> b!5180552 m!6238588))

(assert (=> b!5180552 m!6239272))

(assert (=> b!5180552 m!6238588))

(declare-fun m!6239274 () Bool)

(assert (=> b!5180552 m!6239274))

(assert (=> d!1674158 d!1674348))

(declare-fun d!1674350 () Bool)

(assert (=> d!1674350 (isPrefix!5794 (++!13177 testedP!294 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 testedP!294)) Nil!60176)) input!5817)))

(assert (=> d!1674350 true))

(declare-fun _$65!1848 () Unit!152123)

(assert (=> d!1674350 (= (choose!38492 testedP!294 input!5817) _$65!1848)))

(declare-fun bs!1206787 () Bool)

(assert (= bs!1206787 d!1674350))

(assert (=> bs!1206787 m!6238546))

(assert (=> bs!1206787 m!6238546))

(assert (=> bs!1206787 m!6238646))

(assert (=> bs!1206787 m!6238642))

(assert (=> bs!1206787 m!6238642))

(assert (=> bs!1206787 m!6238648))

(assert (=> d!1674158 d!1674350))

(declare-fun b!5180555 () Bool)

(declare-fun e!3227785 () List!60300)

(assert (=> b!5180555 (= e!3227785 (Cons!60176 (h!66624 testedP!294) (++!13177 (t!373453 testedP!294) (Cons!60176 (head!11079 (getSuffix!3442 input!5817 testedP!294)) Nil!60176))))))

(declare-fun b!5180554 () Bool)

(assert (=> b!5180554 (= e!3227785 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 testedP!294)) Nil!60176))))

(declare-fun b!5180556 () Bool)

(declare-fun res!2200999 () Bool)

(declare-fun e!3227784 () Bool)

(assert (=> b!5180556 (=> (not res!2200999) (not e!3227784))))

(declare-fun lt!2135370 () List!60300)

(assert (=> b!5180556 (= res!2200999 (= (size!39697 lt!2135370) (+ (size!39697 testedP!294) (size!39697 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 testedP!294)) Nil!60176)))))))

(declare-fun b!5180557 () Bool)

(assert (=> b!5180557 (= e!3227784 (or (not (= (Cons!60176 (head!11079 (getSuffix!3442 input!5817 testedP!294)) Nil!60176) Nil!60176)) (= lt!2135370 testedP!294)))))

(declare-fun d!1674356 () Bool)

(assert (=> d!1674356 e!3227784))

(declare-fun res!2201000 () Bool)

(assert (=> d!1674356 (=> (not res!2201000) (not e!3227784))))

(assert (=> d!1674356 (= res!2201000 (= (content!10669 lt!2135370) ((_ map or) (content!10669 testedP!294) (content!10669 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 testedP!294)) Nil!60176)))))))

(assert (=> d!1674356 (= lt!2135370 e!3227785)))

(declare-fun c!892742 () Bool)

(assert (=> d!1674356 (= c!892742 ((_ is Nil!60176) testedP!294))))

(assert (=> d!1674356 (= (++!13177 testedP!294 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 testedP!294)) Nil!60176)) lt!2135370)))

(assert (= (and d!1674356 c!892742) b!5180554))

(assert (= (and d!1674356 (not c!892742)) b!5180555))

(assert (= (and d!1674356 res!2201000) b!5180556))

(assert (= (and b!5180556 res!2200999) b!5180557))

(declare-fun m!6239332 () Bool)

(assert (=> b!5180555 m!6239332))

(declare-fun m!6239334 () Bool)

(assert (=> b!5180556 m!6239334))

(assert (=> b!5180556 m!6238542))

(declare-fun m!6239336 () Bool)

(assert (=> b!5180556 m!6239336))

(declare-fun m!6239340 () Bool)

(assert (=> d!1674356 m!6239340))

(assert (=> d!1674356 m!6238674))

(declare-fun m!6239342 () Bool)

(assert (=> d!1674356 m!6239342))

(assert (=> d!1674158 d!1674356))

(declare-fun bs!1206794 () Bool)

(declare-fun d!1674362 () Bool)

(assert (= bs!1206794 (and d!1674362 d!1674228)))

(declare-fun lambda!258907 () Int)

(assert (=> bs!1206794 (= (= call!364090 lt!2134944) (= lambda!258907 lambda!258882))))

(assert (=> d!1674362 true))

(assert (=> d!1674362 (= (derivationStepZipper!1007 lt!2134952 call!364090) (flatMap!464 lt!2134952 lambda!258907))))

(declare-fun bs!1206796 () Bool)

(assert (= bs!1206796 d!1674362))

(declare-fun m!6239346 () Bool)

(assert (=> bs!1206796 m!6239346))

(assert (=> bm!364083 d!1674362))

(declare-fun d!1674368 () Bool)

(declare-fun c!892745 () Bool)

(assert (=> d!1674368 (= c!892745 (isEmpty!32219 (tail!10178 (_1!35239 lt!2134953))))))

(declare-fun e!3227788 () Bool)

(assert (=> d!1674368 (= (matchZipper!989 (derivationStepZipper!1007 baseZ!62 (head!11079 (_1!35239 lt!2134953))) (tail!10178 (_1!35239 lt!2134953))) e!3227788)))

(declare-fun b!5180562 () Bool)

(assert (=> b!5180562 (= e!3227788 (nullableZipper!1199 (derivationStepZipper!1007 baseZ!62 (head!11079 (_1!35239 lt!2134953)))))))

(declare-fun b!5180563 () Bool)

(assert (=> b!5180563 (= e!3227788 (matchZipper!989 (derivationStepZipper!1007 (derivationStepZipper!1007 baseZ!62 (head!11079 (_1!35239 lt!2134953))) (head!11079 (tail!10178 (_1!35239 lt!2134953)))) (tail!10178 (tail!10178 (_1!35239 lt!2134953)))))))

(assert (= (and d!1674368 c!892745) b!5180562))

(assert (= (and d!1674368 (not c!892745)) b!5180563))

(assert (=> d!1674368 m!6238862))

(declare-fun m!6239352 () Bool)

(assert (=> d!1674368 m!6239352))

(assert (=> b!5180562 m!6238860))

(declare-fun m!6239354 () Bool)

(assert (=> b!5180562 m!6239354))

(assert (=> b!5180563 m!6238862))

(declare-fun m!6239356 () Bool)

(assert (=> b!5180563 m!6239356))

(assert (=> b!5180563 m!6238860))

(assert (=> b!5180563 m!6239356))

(declare-fun m!6239360 () Bool)

(assert (=> b!5180563 m!6239360))

(assert (=> b!5180563 m!6238862))

(declare-fun m!6239362 () Bool)

(assert (=> b!5180563 m!6239362))

(assert (=> b!5180563 m!6239360))

(assert (=> b!5180563 m!6239362))

(declare-fun m!6239364 () Bool)

(assert (=> b!5180563 m!6239364))

(assert (=> b!5180376 d!1674368))

(declare-fun bs!1206797 () Bool)

(declare-fun d!1674376 () Bool)

(assert (= bs!1206797 (and d!1674376 d!1674228)))

(declare-fun lambda!258908 () Int)

(assert (=> bs!1206797 (= (= (head!11079 (_1!35239 lt!2134953)) lt!2134944) (= lambda!258908 lambda!258882))))

(declare-fun bs!1206798 () Bool)

(assert (= bs!1206798 (and d!1674376 d!1674362)))

(assert (=> bs!1206798 (= (= (head!11079 (_1!35239 lt!2134953)) call!364090) (= lambda!258908 lambda!258907))))

(assert (=> d!1674376 true))

(assert (=> d!1674376 (= (derivationStepZipper!1007 baseZ!62 (head!11079 (_1!35239 lt!2134953))) (flatMap!464 baseZ!62 lambda!258908))))

(declare-fun bs!1206799 () Bool)

(assert (= bs!1206799 d!1674376))

(declare-fun m!6239366 () Bool)

(assert (=> bs!1206799 m!6239366))

(assert (=> b!5180376 d!1674376))

(declare-fun d!1674380 () Bool)

(assert (=> d!1674380 (= (head!11079 (_1!35239 lt!2134953)) (h!66624 (_1!35239 lt!2134953)))))

(assert (=> b!5180376 d!1674380))

(declare-fun d!1674382 () Bool)

(assert (=> d!1674382 (= (tail!10178 (_1!35239 lt!2134953)) (t!373453 (_1!35239 lt!2134953)))))

(assert (=> b!5180376 d!1674382))

(declare-fun d!1674384 () Bool)

(declare-fun res!2201007 () Bool)

(declare-fun e!3227797 () Bool)

(assert (=> d!1674384 (=> res!2201007 e!3227797)))

(assert (=> d!1674384 (= res!2201007 ((_ is Nil!60175) (exprs!4545 setElem!32402)))))

(assert (=> d!1674384 (= (forall!14172 (exprs!4545 setElem!32402) lambda!258883) e!3227797)))

(declare-fun b!5180576 () Bool)

(declare-fun e!3227798 () Bool)

(assert (=> b!5180576 (= e!3227797 e!3227798)))

(declare-fun res!2201008 () Bool)

(assert (=> b!5180576 (=> (not res!2201008) (not e!3227798))))

(declare-fun dynLambda!23888 (Int Regex!14661) Bool)

(assert (=> b!5180576 (= res!2201008 (dynLambda!23888 lambda!258883 (h!66623 (exprs!4545 setElem!32402))))))

(declare-fun b!5180577 () Bool)

(assert (=> b!5180577 (= e!3227798 (forall!14172 (t!373452 (exprs!4545 setElem!32402)) lambda!258883))))

(assert (= (and d!1674384 (not res!2201007)) b!5180576))

(assert (= (and b!5180576 res!2201008) b!5180577))

(declare-fun b_lambda!201075 () Bool)

(assert (=> (not b_lambda!201075) (not b!5180576)))

(declare-fun m!6239380 () Bool)

(assert (=> b!5180576 m!6239380))

(declare-fun m!6239382 () Bool)

(assert (=> b!5180577 m!6239382))

(assert (=> d!1674236 d!1674384))

(declare-fun b!5180578 () Bool)

(declare-fun c!892749 () Bool)

(declare-fun call!364124 () Bool)

(assert (=> b!5180578 (= c!892749 call!364124)))

(declare-fun lt!2135383 () Unit!152123)

(declare-fun lt!2135380 () Unit!152123)

(assert (=> b!5180578 (= lt!2135383 lt!2135380)))

(assert (=> b!5180578 (= input!5817 lt!2135047)))

(declare-fun call!364122 () Unit!152123)

(assert (=> b!5180578 (= lt!2135380 call!364122)))

(declare-fun lt!2135386 () Unit!152123)

(declare-fun lt!2135390 () Unit!152123)

(assert (=> b!5180578 (= lt!2135386 lt!2135390)))

(declare-fun call!364129 () Bool)

(assert (=> b!5180578 call!364129))

(declare-fun call!364123 () Unit!152123)

(assert (=> b!5180578 (= lt!2135390 call!364123)))

(declare-fun e!3227804 () tuple2!63872)

(declare-fun e!3227805 () tuple2!63872)

(assert (=> b!5180578 (= e!3227804 e!3227805)))

(declare-fun b!5180579 () Bool)

(declare-fun e!3227802 () Bool)

(declare-fun lt!2135378 () tuple2!63872)

(assert (=> b!5180579 (= e!3227802 (>= (size!39697 (_1!35239 lt!2135378)) (size!39697 lt!2135047)))))

(declare-fun b!5180580 () Bool)

(declare-fun c!892752 () Bool)

(assert (=> b!5180580 (= c!892752 call!364124)))

(declare-fun lt!2135399 () Unit!152123)

(declare-fun lt!2135398 () Unit!152123)

(assert (=> b!5180580 (= lt!2135399 lt!2135398)))

(declare-fun lt!2135384 () C!29592)

(declare-fun lt!2135387 () List!60300)

(assert (=> b!5180580 (= (++!13177 (++!13177 lt!2135047 (Cons!60176 lt!2135384 Nil!60176)) lt!2135387) input!5817)))

(assert (=> b!5180580 (= lt!2135398 (lemmaMoveElementToOtherListKeepsConcatEq!1596 lt!2135047 lt!2135384 lt!2135387 input!5817))))

(assert (=> b!5180580 (= lt!2135387 (tail!10178 call!364049))))

(assert (=> b!5180580 (= lt!2135384 (head!11079 call!364049))))

(declare-fun lt!2135381 () Unit!152123)

(declare-fun lt!2135382 () Unit!152123)

(assert (=> b!5180580 (= lt!2135381 lt!2135382)))

(assert (=> b!5180580 (isPrefix!5794 (++!13177 lt!2135047 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2135047)) Nil!60176)) input!5817)))

(assert (=> b!5180580 (= lt!2135382 (lemmaAddHeadSuffixToPrefixStillPrefix!1099 lt!2135047 input!5817))))

(declare-fun lt!2135391 () List!60300)

(assert (=> b!5180580 (= lt!2135391 (++!13177 lt!2135047 (Cons!60176 (head!11079 call!364049) Nil!60176)))))

(declare-fun lt!2135400 () Unit!152123)

(declare-fun e!3227806 () Unit!152123)

(assert (=> b!5180580 (= lt!2135400 e!3227806)))

(declare-fun c!892754 () Bool)

(assert (=> b!5180580 (= c!892754 (= (size!39697 lt!2135047) (size!39697 input!5817)))))

(declare-fun lt!2135379 () Unit!152123)

(declare-fun lt!2135388 () Unit!152123)

(assert (=> b!5180580 (= lt!2135379 lt!2135388)))

(assert (=> b!5180580 (<= (size!39697 lt!2135047) (size!39697 input!5817))))

(assert (=> b!5180580 (= lt!2135388 (lemmaIsPrefixThenSmallerEqSize!955 lt!2135047 input!5817))))

(declare-fun e!3227800 () tuple2!63872)

(assert (=> b!5180580 (= e!3227804 e!3227800)))

(declare-fun b!5180581 () Bool)

(declare-fun e!3227803 () tuple2!63872)

(assert (=> b!5180581 (= e!3227803 e!3227804)))

(declare-fun c!892750 () Bool)

(assert (=> b!5180581 (= c!892750 (= (+ lt!2134945 1) lt!2134950))))

(declare-fun b!5180582 () Bool)

(declare-fun call!364125 () tuple2!63872)

(assert (=> b!5180582 (= e!3227800 call!364125)))

(declare-fun b!5180583 () Bool)

(declare-fun e!3227801 () Bool)

(assert (=> b!5180583 (= e!3227801 e!3227802)))

(declare-fun res!2201010 () Bool)

(assert (=> b!5180583 (=> res!2201010 e!3227802)))

(assert (=> b!5180583 (= res!2201010 (isEmpty!32219 (_1!35239 lt!2135378)))))

(declare-fun bm!364117 () Bool)

(assert (=> bm!364117 (= call!364129 (isPrefix!5794 input!5817 input!5817))))

(declare-fun b!5180584 () Bool)

(declare-fun Unit!152147 () Unit!152123)

(assert (=> b!5180584 (= e!3227806 Unit!152147)))

(declare-fun bm!364118 () Bool)

(assert (=> bm!364118 (= call!364122 (lemmaIsPrefixSameLengthThenSameList!1439 input!5817 lt!2135047 input!5817))))

(declare-fun bm!364119 () Bool)

(assert (=> bm!364119 (= call!364124 (nullableZipper!1199 call!364048))))

(declare-fun b!5180585 () Bool)

(declare-fun Unit!152148 () Unit!152123)

(assert (=> b!5180585 (= e!3227806 Unit!152148)))

(declare-fun lt!2135394 () Unit!152123)

(assert (=> b!5180585 (= lt!2135394 call!364123)))

(assert (=> b!5180585 call!364129))

(declare-fun lt!2135392 () Unit!152123)

(assert (=> b!5180585 (= lt!2135392 lt!2135394)))

(declare-fun lt!2135396 () Unit!152123)

(assert (=> b!5180585 (= lt!2135396 call!364122)))

(assert (=> b!5180585 (= input!5817 lt!2135047)))

(declare-fun lt!2135397 () Unit!152123)

(assert (=> b!5180585 (= lt!2135397 lt!2135396)))

(assert (=> b!5180585 false))

(declare-fun bm!364120 () Bool)

(declare-fun call!364127 () List!60300)

(assert (=> bm!364120 (= call!364127 (tail!10178 call!364049))))

(declare-fun b!5180586 () Bool)

(declare-fun e!3227799 () tuple2!63872)

(declare-fun lt!2135389 () tuple2!63872)

(assert (=> b!5180586 (= e!3227799 lt!2135389)))

(declare-fun b!5180587 () Bool)

(assert (=> b!5180587 (= e!3227805 (tuple2!63873 Nil!60176 input!5817))))

(declare-fun b!5180588 () Bool)

(assert (=> b!5180588 (= e!3227799 (tuple2!63873 lt!2135047 call!364049))))

(declare-fun bm!364122 () Bool)

(declare-fun call!364128 () C!29592)

(assert (=> bm!364122 (= call!364128 (head!11079 call!364049))))

(declare-fun bm!364123 () Bool)

(assert (=> bm!364123 (= call!364123 (lemmaIsPrefixRefl!3799 input!5817 input!5817))))

(declare-fun call!364126 () (InoxSet Context!8090))

(declare-fun bm!364124 () Bool)

(assert (=> bm!364124 (= call!364125 (findLongestMatchInnerZipper!317 call!364126 lt!2135391 (+ lt!2134945 1 1) call!364127 input!5817 lt!2134950))))

(declare-fun b!5180589 () Bool)

(assert (=> b!5180589 (= e!3227805 (tuple2!63873 lt!2135047 Nil!60176))))

(declare-fun b!5180590 () Bool)

(assert (=> b!5180590 (= e!3227800 e!3227799)))

(assert (=> b!5180590 (= lt!2135389 call!364125)))

(declare-fun c!892751 () Bool)

(assert (=> b!5180590 (= c!892751 (isEmpty!32219 (_1!35239 lt!2135389)))))

(declare-fun b!5180591 () Bool)

(assert (=> b!5180591 (= e!3227803 (tuple2!63873 Nil!60176 input!5817))))

(declare-fun bm!364121 () Bool)

(assert (=> bm!364121 (= call!364126 (derivationStepZipper!1007 call!364048 call!364128))))

(declare-fun d!1674392 () Bool)

(assert (=> d!1674392 e!3227801))

(declare-fun res!2201009 () Bool)

(assert (=> d!1674392 (=> (not res!2201009) (not e!3227801))))

(assert (=> d!1674392 (= res!2201009 (= (++!13177 (_1!35239 lt!2135378) (_2!35239 lt!2135378)) input!5817))))

(assert (=> d!1674392 (= lt!2135378 e!3227803)))

(declare-fun c!892753 () Bool)

(assert (=> d!1674392 (= c!892753 (lostCauseZipper!1348 call!364048))))

(declare-fun lt!2135377 () Unit!152123)

(declare-fun Unit!152149 () Unit!152123)

(assert (=> d!1674392 (= lt!2135377 Unit!152149)))

(assert (=> d!1674392 (= (getSuffix!3442 input!5817 lt!2135047) call!364049)))

(declare-fun lt!2135395 () Unit!152123)

(declare-fun lt!2135401 () Unit!152123)

(assert (=> d!1674392 (= lt!2135395 lt!2135401)))

(declare-fun lt!2135376 () List!60300)

(assert (=> d!1674392 (= call!364049 lt!2135376)))

(assert (=> d!1674392 (= lt!2135401 (lemmaSamePrefixThenSameSuffix!2715 lt!2135047 call!364049 lt!2135047 lt!2135376 input!5817))))

(assert (=> d!1674392 (= lt!2135376 (getSuffix!3442 input!5817 lt!2135047))))

(declare-fun lt!2135393 () Unit!152123)

(declare-fun lt!2135385 () Unit!152123)

(assert (=> d!1674392 (= lt!2135393 lt!2135385)))

(assert (=> d!1674392 (isPrefix!5794 lt!2135047 (++!13177 lt!2135047 call!364049))))

(assert (=> d!1674392 (= lt!2135385 (lemmaConcatTwoListThenFirstIsPrefix!3609 lt!2135047 call!364049))))

(assert (=> d!1674392 (= (++!13177 lt!2135047 call!364049) input!5817)))

(assert (=> d!1674392 (= (findLongestMatchInnerZipper!317 call!364048 lt!2135047 (+ lt!2134945 1) call!364049 input!5817 lt!2134950) lt!2135378)))

(assert (= (and d!1674392 c!892753) b!5180591))

(assert (= (and d!1674392 (not c!892753)) b!5180581))

(assert (= (and b!5180581 c!892750) b!5180578))

(assert (= (and b!5180581 (not c!892750)) b!5180580))

(assert (= (and b!5180578 c!892749) b!5180589))

(assert (= (and b!5180578 (not c!892749)) b!5180587))

(assert (= (and b!5180580 c!892754) b!5180585))

(assert (= (and b!5180580 (not c!892754)) b!5180584))

(assert (= (and b!5180580 c!892752) b!5180590))

(assert (= (and b!5180580 (not c!892752)) b!5180582))

(assert (= (and b!5180590 c!892751) b!5180588))

(assert (= (and b!5180590 (not c!892751)) b!5180586))

(assert (= (or b!5180590 b!5180582) bm!364120))

(assert (= (or b!5180590 b!5180582) bm!364122))

(assert (= (or b!5180590 b!5180582) bm!364121))

(assert (= (or b!5180590 b!5180582) bm!364124))

(assert (= (or b!5180578 b!5180585) bm!364123))

(assert (= (or b!5180578 b!5180580) bm!364119))

(assert (= (or b!5180578 b!5180585) bm!364117))

(assert (= (or b!5180578 b!5180585) bm!364118))

(assert (= (and d!1674392 res!2201009) b!5180583))

(assert (= (and b!5180583 (not res!2201010)) b!5180579))

(assert (=> bm!364117 m!6238556))

(declare-fun m!6239384 () Bool)

(assert (=> bm!364119 m!6239384))

(declare-fun m!6239386 () Bool)

(assert (=> bm!364118 m!6239386))

(declare-fun m!6239388 () Bool)

(assert (=> bm!364121 m!6239388))

(declare-fun m!6239390 () Bool)

(assert (=> d!1674392 m!6239390))

(declare-fun m!6239392 () Bool)

(assert (=> d!1674392 m!6239392))

(assert (=> d!1674392 m!6239392))

(declare-fun m!6239394 () Bool)

(assert (=> d!1674392 m!6239394))

(declare-fun m!6239396 () Bool)

(assert (=> d!1674392 m!6239396))

(declare-fun m!6239398 () Bool)

(assert (=> d!1674392 m!6239398))

(declare-fun m!6239400 () Bool)

(assert (=> d!1674392 m!6239400))

(declare-fun m!6239402 () Bool)

(assert (=> d!1674392 m!6239402))

(declare-fun m!6239404 () Bool)

(assert (=> bm!364124 m!6239404))

(declare-fun m!6239406 () Bool)

(assert (=> b!5180580 m!6239406))

(declare-fun m!6239408 () Bool)

(assert (=> b!5180580 m!6239408))

(declare-fun m!6239410 () Bool)

(assert (=> b!5180580 m!6239410))

(assert (=> b!5180580 m!6239396))

(declare-fun m!6239412 () Bool)

(assert (=> b!5180580 m!6239412))

(declare-fun m!6239414 () Bool)

(assert (=> b!5180580 m!6239414))

(assert (=> b!5180580 m!6239396))

(assert (=> b!5180580 m!6238548))

(assert (=> b!5180580 m!6239406))

(declare-fun m!6239416 () Bool)

(assert (=> b!5180580 m!6239416))

(declare-fun m!6239418 () Bool)

(assert (=> b!5180580 m!6239418))

(declare-fun m!6239420 () Bool)

(assert (=> b!5180580 m!6239420))

(declare-fun m!6239422 () Bool)

(assert (=> b!5180580 m!6239422))

(declare-fun m!6239424 () Bool)

(assert (=> b!5180580 m!6239424))

(assert (=> b!5180580 m!6239410))

(declare-fun m!6239426 () Bool)

(assert (=> b!5180580 m!6239426))

(declare-fun m!6239428 () Bool)

(assert (=> b!5180580 m!6239428))

(declare-fun m!6239430 () Bool)

(assert (=> b!5180583 m!6239430))

(declare-fun m!6239432 () Bool)

(assert (=> b!5180590 m!6239432))

(declare-fun m!6239434 () Bool)

(assert (=> b!5180579 m!6239434))

(assert (=> b!5180579 m!6239414))

(assert (=> bm!364120 m!6239424))

(assert (=> bm!364123 m!6238554))

(assert (=> bm!364122 m!6239420))

(assert (=> bm!364046 d!1674392))

(declare-fun d!1674394 () Bool)

(assert (=> d!1674394 (= input!5817 testedP!294)))

(assert (=> d!1674394 true))

(declare-fun _$60!1001 () Unit!152123)

(assert (=> d!1674394 (= (choose!38491 input!5817 testedP!294 input!5817) _$60!1001)))

(assert (=> d!1674134 d!1674394))

(assert (=> d!1674134 d!1674128))

(declare-fun d!1674396 () Bool)

(assert (=> d!1674396 (= (head!11079 input!5817) (h!66624 input!5817))))

(assert (=> b!5180147 d!1674396))

(assert (=> b!5180370 d!1674142))

(assert (=> b!5180370 d!1674152))

(declare-fun bs!1206801 () Bool)

(declare-fun d!1674398 () Bool)

(assert (= bs!1206801 (and d!1674398 d!1674214)))

(declare-fun lambda!258909 () Int)

(assert (=> bs!1206801 (= lambda!258909 lambda!258879)))

(declare-fun bs!1206802 () Bool)

(assert (= bs!1206802 (and d!1674398 d!1674236)))

(assert (=> bs!1206802 (= lambda!258909 lambda!258883)))

(assert (=> d!1674398 (= (inv!79899 setElem!32409) (forall!14172 (exprs!4545 setElem!32409) lambda!258909))))

(declare-fun bs!1206803 () Bool)

(assert (= bs!1206803 d!1674398))

(declare-fun m!6239436 () Bool)

(assert (=> bs!1206803 m!6239436))

(assert (=> setNonEmpty!32409 d!1674398))

(declare-fun d!1674400 () Bool)

(declare-fun res!2201011 () Bool)

(declare-fun e!3227807 () Bool)

(assert (=> d!1674400 (=> res!2201011 e!3227807)))

(assert (=> d!1674400 (= res!2201011 ((_ is Nil!60175) (exprs!4545 setElem!32401)))))

(assert (=> d!1674400 (= (forall!14172 (exprs!4545 setElem!32401) lambda!258879) e!3227807)))

(declare-fun b!5180592 () Bool)

(declare-fun e!3227808 () Bool)

(assert (=> b!5180592 (= e!3227807 e!3227808)))

(declare-fun res!2201012 () Bool)

(assert (=> b!5180592 (=> (not res!2201012) (not e!3227808))))

(assert (=> b!5180592 (= res!2201012 (dynLambda!23888 lambda!258879 (h!66623 (exprs!4545 setElem!32401))))))

(declare-fun b!5180593 () Bool)

(assert (=> b!5180593 (= e!3227808 (forall!14172 (t!373452 (exprs!4545 setElem!32401)) lambda!258879))))

(assert (= (and d!1674400 (not res!2201011)) b!5180592))

(assert (= (and b!5180592 res!2201012) b!5180593))

(declare-fun b_lambda!201077 () Bool)

(assert (=> (not b_lambda!201077) (not b!5180592)))

(declare-fun m!6239438 () Bool)

(assert (=> b!5180592 m!6239438))

(declare-fun m!6239440 () Bool)

(assert (=> b!5180593 m!6239440))

(assert (=> d!1674214 d!1674400))

(declare-fun d!1674402 () Bool)

(assert (=> d!1674402 (= (isEmpty!32219 (_1!35239 lt!2135217)) ((_ is Nil!60176) (_1!35239 lt!2135217)))))

(assert (=> b!5180391 d!1674402))

(assert (=> b!5180149 d!1674142))

(declare-fun d!1674404 () Bool)

(assert (=> d!1674404 (= (head!11079 testedP!294) (h!66624 testedP!294))))

(assert (=> b!5180368 d!1674404))

(assert (=> b!5180368 d!1674396))

(declare-fun d!1674406 () Bool)

(declare-fun lt!2135402 () List!60300)

(assert (=> d!1674406 (= (++!13177 (t!373453 lt!2134949) lt!2135402) (tail!10178 input!5817))))

(declare-fun e!3227809 () List!60300)

(assert (=> d!1674406 (= lt!2135402 e!3227809)))

(declare-fun c!892755 () Bool)

(assert (=> d!1674406 (= c!892755 ((_ is Cons!60176) (t!373453 lt!2134949)))))

(assert (=> d!1674406 (>= (size!39697 (tail!10178 input!5817)) (size!39697 (t!373453 lt!2134949)))))

(assert (=> d!1674406 (= (getSuffix!3442 (tail!10178 input!5817) (t!373453 lt!2134949)) lt!2135402)))

(declare-fun b!5180594 () Bool)

(assert (=> b!5180594 (= e!3227809 (getSuffix!3442 (tail!10178 (tail!10178 input!5817)) (t!373453 (t!373453 lt!2134949))))))

(declare-fun b!5180595 () Bool)

(assert (=> b!5180595 (= e!3227809 (tail!10178 input!5817))))

(assert (= (and d!1674406 c!892755) b!5180594))

(assert (= (and d!1674406 (not c!892755)) b!5180595))

(declare-fun m!6239442 () Bool)

(assert (=> d!1674406 m!6239442))

(assert (=> d!1674406 m!6238588))

(declare-fun m!6239444 () Bool)

(assert (=> d!1674406 m!6239444))

(assert (=> d!1674406 m!6238866))

(assert (=> b!5180594 m!6238588))

(declare-fun m!6239446 () Bool)

(assert (=> b!5180594 m!6239446))

(assert (=> b!5180594 m!6239446))

(declare-fun m!6239448 () Bool)

(assert (=> b!5180594 m!6239448))

(assert (=> b!5180399 d!1674406))

(declare-fun d!1674408 () Bool)

(assert (=> d!1674408 (= (tail!10178 input!5817) (t!373453 input!5817))))

(assert (=> b!5180399 d!1674408))

(declare-fun bs!1206804 () Bool)

(declare-fun d!1674410 () Bool)

(assert (= bs!1206804 (and d!1674410 d!1674214)))

(declare-fun lambda!258910 () Int)

(assert (=> bs!1206804 (= lambda!258910 lambda!258879)))

(declare-fun bs!1206805 () Bool)

(assert (= bs!1206805 (and d!1674410 d!1674236)))

(assert (=> bs!1206805 (= lambda!258910 lambda!258883)))

(declare-fun bs!1206806 () Bool)

(assert (= bs!1206806 (and d!1674410 d!1674398)))

(assert (=> bs!1206806 (= lambda!258910 lambda!258909)))

(assert (=> d!1674410 (= (inv!79899 setElem!32410) (forall!14172 (exprs!4545 setElem!32410) lambda!258910))))

(declare-fun bs!1206807 () Bool)

(assert (= bs!1206807 d!1674410))

(declare-fun m!6239450 () Bool)

(assert (=> bs!1206807 m!6239450))

(assert (=> setNonEmpty!32410 d!1674410))

(declare-fun b!5180596 () Bool)

(declare-fun c!892756 () Bool)

(declare-fun call!364132 () Bool)

(assert (=> b!5180596 (= c!892756 call!364132)))

(declare-fun lt!2135410 () Unit!152123)

(declare-fun lt!2135407 () Unit!152123)

(assert (=> b!5180596 (= lt!2135410 lt!2135407)))

(assert (=> b!5180596 (= input!5817 lt!2135219)))

(declare-fun call!364130 () Unit!152123)

(assert (=> b!5180596 (= lt!2135407 call!364130)))

(declare-fun lt!2135413 () Unit!152123)

(declare-fun lt!2135417 () Unit!152123)

(assert (=> b!5180596 (= lt!2135413 lt!2135417)))

(declare-fun call!364137 () Bool)

(assert (=> b!5180596 call!364137))

(declare-fun call!364131 () Unit!152123)

(assert (=> b!5180596 (= lt!2135417 call!364131)))

(declare-fun e!3227815 () tuple2!63872)

(declare-fun e!3227816 () tuple2!63872)

(assert (=> b!5180596 (= e!3227815 e!3227816)))

(declare-fun b!5180597 () Bool)

(declare-fun e!3227813 () Bool)

(declare-fun lt!2135405 () tuple2!63872)

(assert (=> b!5180597 (= e!3227813 (>= (size!39697 (_1!35239 lt!2135405)) (size!39697 lt!2135219)))))

(declare-fun b!5180598 () Bool)

(declare-fun c!892759 () Bool)

(assert (=> b!5180598 (= c!892759 call!364132)))

(declare-fun lt!2135426 () Unit!152123)

(declare-fun lt!2135425 () Unit!152123)

(assert (=> b!5180598 (= lt!2135426 lt!2135425)))

(declare-fun lt!2135414 () List!60300)

(declare-fun lt!2135411 () C!29592)

(assert (=> b!5180598 (= (++!13177 (++!13177 lt!2135219 (Cons!60176 lt!2135411 Nil!60176)) lt!2135414) input!5817)))

(assert (=> b!5180598 (= lt!2135425 (lemmaMoveElementToOtherListKeepsConcatEq!1596 lt!2135219 lt!2135411 lt!2135414 input!5817))))

(assert (=> b!5180598 (= lt!2135414 (tail!10178 call!364089))))

(assert (=> b!5180598 (= lt!2135411 (head!11079 call!364089))))

(declare-fun lt!2135408 () Unit!152123)

(declare-fun lt!2135409 () Unit!152123)

(assert (=> b!5180598 (= lt!2135408 lt!2135409)))

(assert (=> b!5180598 (isPrefix!5794 (++!13177 lt!2135219 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2135219)) Nil!60176)) input!5817)))

(assert (=> b!5180598 (= lt!2135409 (lemmaAddHeadSuffixToPrefixStillPrefix!1099 lt!2135219 input!5817))))

(declare-fun lt!2135418 () List!60300)

(assert (=> b!5180598 (= lt!2135418 (++!13177 lt!2135219 (Cons!60176 (head!11079 call!364089) Nil!60176)))))

(declare-fun lt!2135427 () Unit!152123)

(declare-fun e!3227817 () Unit!152123)

(assert (=> b!5180598 (= lt!2135427 e!3227817)))

(declare-fun c!892761 () Bool)

(assert (=> b!5180598 (= c!892761 (= (size!39697 lt!2135219) (size!39697 input!5817)))))

(declare-fun lt!2135406 () Unit!152123)

(declare-fun lt!2135415 () Unit!152123)

(assert (=> b!5180598 (= lt!2135406 lt!2135415)))

(assert (=> b!5180598 (<= (size!39697 lt!2135219) (size!39697 input!5817))))

(assert (=> b!5180598 (= lt!2135415 (lemmaIsPrefixThenSmallerEqSize!955 lt!2135219 input!5817))))

(declare-fun e!3227811 () tuple2!63872)

(assert (=> b!5180598 (= e!3227815 e!3227811)))

(declare-fun b!5180599 () Bool)

(declare-fun e!3227814 () tuple2!63872)

(assert (=> b!5180599 (= e!3227814 e!3227815)))

(declare-fun c!892757 () Bool)

(assert (=> b!5180599 (= c!892757 (= (+ (size!39697 lt!2134949) 1) lt!2134950))))

(declare-fun b!5180600 () Bool)

(declare-fun call!364133 () tuple2!63872)

(assert (=> b!5180600 (= e!3227811 call!364133)))

(declare-fun b!5180601 () Bool)

(declare-fun e!3227812 () Bool)

(assert (=> b!5180601 (= e!3227812 e!3227813)))

(declare-fun res!2201014 () Bool)

(assert (=> b!5180601 (=> res!2201014 e!3227813)))

(assert (=> b!5180601 (= res!2201014 (isEmpty!32219 (_1!35239 lt!2135405)))))

(declare-fun bm!364125 () Bool)

(assert (=> bm!364125 (= call!364137 (isPrefix!5794 input!5817 input!5817))))

(declare-fun b!5180602 () Bool)

(declare-fun Unit!152150 () Unit!152123)

(assert (=> b!5180602 (= e!3227817 Unit!152150)))

(declare-fun bm!364126 () Bool)

(assert (=> bm!364126 (= call!364130 (lemmaIsPrefixSameLengthThenSameList!1439 input!5817 lt!2135219 input!5817))))

(declare-fun bm!364127 () Bool)

(assert (=> bm!364127 (= call!364132 (nullableZipper!1199 call!364088))))

(declare-fun b!5180603 () Bool)

(declare-fun Unit!152151 () Unit!152123)

(assert (=> b!5180603 (= e!3227817 Unit!152151)))

(declare-fun lt!2135421 () Unit!152123)

(assert (=> b!5180603 (= lt!2135421 call!364131)))

(assert (=> b!5180603 call!364137))

(declare-fun lt!2135419 () Unit!152123)

(assert (=> b!5180603 (= lt!2135419 lt!2135421)))

(declare-fun lt!2135423 () Unit!152123)

(assert (=> b!5180603 (= lt!2135423 call!364130)))

(assert (=> b!5180603 (= input!5817 lt!2135219)))

(declare-fun lt!2135424 () Unit!152123)

(assert (=> b!5180603 (= lt!2135424 lt!2135423)))

(assert (=> b!5180603 false))

(declare-fun bm!364128 () Bool)

(declare-fun call!364135 () List!60300)

(assert (=> bm!364128 (= call!364135 (tail!10178 call!364089))))

(declare-fun b!5180604 () Bool)

(declare-fun e!3227810 () tuple2!63872)

(declare-fun lt!2135416 () tuple2!63872)

(assert (=> b!5180604 (= e!3227810 lt!2135416)))

(declare-fun b!5180605 () Bool)

(assert (=> b!5180605 (= e!3227816 (tuple2!63873 Nil!60176 input!5817))))

(declare-fun b!5180606 () Bool)

(assert (=> b!5180606 (= e!3227810 (tuple2!63873 lt!2135219 call!364089))))

(declare-fun bm!364130 () Bool)

(declare-fun call!364136 () C!29592)

(assert (=> bm!364130 (= call!364136 (head!11079 call!364089))))

(declare-fun bm!364131 () Bool)

(assert (=> bm!364131 (= call!364131 (lemmaIsPrefixRefl!3799 input!5817 input!5817))))

(declare-fun call!364134 () (InoxSet Context!8090))

(declare-fun bm!364132 () Bool)

(assert (=> bm!364132 (= call!364133 (findLongestMatchInnerZipper!317 call!364134 lt!2135418 (+ (size!39697 lt!2134949) 1 1) call!364135 input!5817 lt!2134950))))

(declare-fun b!5180607 () Bool)

(assert (=> b!5180607 (= e!3227816 (tuple2!63873 lt!2135219 Nil!60176))))

(declare-fun b!5180608 () Bool)

(assert (=> b!5180608 (= e!3227811 e!3227810)))

(assert (=> b!5180608 (= lt!2135416 call!364133)))

(declare-fun c!892758 () Bool)

(assert (=> b!5180608 (= c!892758 (isEmpty!32219 (_1!35239 lt!2135416)))))

(declare-fun b!5180609 () Bool)

(assert (=> b!5180609 (= e!3227814 (tuple2!63873 Nil!60176 input!5817))))

(declare-fun bm!364129 () Bool)

(assert (=> bm!364129 (= call!364134 (derivationStepZipper!1007 call!364088 call!364136))))

(declare-fun d!1674412 () Bool)

(assert (=> d!1674412 e!3227812))

(declare-fun res!2201013 () Bool)

(assert (=> d!1674412 (=> (not res!2201013) (not e!3227812))))

(assert (=> d!1674412 (= res!2201013 (= (++!13177 (_1!35239 lt!2135405) (_2!35239 lt!2135405)) input!5817))))

(assert (=> d!1674412 (= lt!2135405 e!3227814)))

(declare-fun c!892760 () Bool)

(assert (=> d!1674412 (= c!892760 (lostCauseZipper!1348 call!364088))))

(declare-fun lt!2135404 () Unit!152123)

(declare-fun Unit!152152 () Unit!152123)

(assert (=> d!1674412 (= lt!2135404 Unit!152152)))

(assert (=> d!1674412 (= (getSuffix!3442 input!5817 lt!2135219) call!364089)))

(declare-fun lt!2135422 () Unit!152123)

(declare-fun lt!2135428 () Unit!152123)

(assert (=> d!1674412 (= lt!2135422 lt!2135428)))

(declare-fun lt!2135403 () List!60300)

(assert (=> d!1674412 (= call!364089 lt!2135403)))

(assert (=> d!1674412 (= lt!2135428 (lemmaSamePrefixThenSameSuffix!2715 lt!2135219 call!364089 lt!2135219 lt!2135403 input!5817))))

(assert (=> d!1674412 (= lt!2135403 (getSuffix!3442 input!5817 lt!2135219))))

(declare-fun lt!2135420 () Unit!152123)

(declare-fun lt!2135412 () Unit!152123)

(assert (=> d!1674412 (= lt!2135420 lt!2135412)))

(assert (=> d!1674412 (isPrefix!5794 lt!2135219 (++!13177 lt!2135219 call!364089))))

(assert (=> d!1674412 (= lt!2135412 (lemmaConcatTwoListThenFirstIsPrefix!3609 lt!2135219 call!364089))))

(assert (=> d!1674412 (= (++!13177 lt!2135219 call!364089) input!5817)))

(assert (=> d!1674412 (= (findLongestMatchInnerZipper!317 call!364088 lt!2135219 (+ (size!39697 lt!2134949) 1) call!364089 input!5817 lt!2134950) lt!2135405)))

(assert (= (and d!1674412 c!892760) b!5180609))

(assert (= (and d!1674412 (not c!892760)) b!5180599))

(assert (= (and b!5180599 c!892757) b!5180596))

(assert (= (and b!5180599 (not c!892757)) b!5180598))

(assert (= (and b!5180596 c!892756) b!5180607))

(assert (= (and b!5180596 (not c!892756)) b!5180605))

(assert (= (and b!5180598 c!892761) b!5180603))

(assert (= (and b!5180598 (not c!892761)) b!5180602))

(assert (= (and b!5180598 c!892759) b!5180608))

(assert (= (and b!5180598 (not c!892759)) b!5180600))

(assert (= (and b!5180608 c!892758) b!5180606))

(assert (= (and b!5180608 (not c!892758)) b!5180604))

(assert (= (or b!5180608 b!5180600) bm!364128))

(assert (= (or b!5180608 b!5180600) bm!364130))

(assert (= (or b!5180608 b!5180600) bm!364129))

(assert (= (or b!5180608 b!5180600) bm!364132))

(assert (= (or b!5180596 b!5180603) bm!364131))

(assert (= (or b!5180596 b!5180598) bm!364127))

(assert (= (or b!5180596 b!5180603) bm!364125))

(assert (= (or b!5180596 b!5180603) bm!364126))

(assert (= (and d!1674412 res!2201013) b!5180601))

(assert (= (and b!5180601 (not res!2201014)) b!5180597))

(assert (=> bm!364125 m!6238556))

(declare-fun m!6239452 () Bool)

(assert (=> bm!364127 m!6239452))

(declare-fun m!6239454 () Bool)

(assert (=> bm!364126 m!6239454))

(declare-fun m!6239456 () Bool)

(assert (=> bm!364129 m!6239456))

(declare-fun m!6239458 () Bool)

(assert (=> d!1674412 m!6239458))

(declare-fun m!6239460 () Bool)

(assert (=> d!1674412 m!6239460))

(assert (=> d!1674412 m!6239460))

(declare-fun m!6239462 () Bool)

(assert (=> d!1674412 m!6239462))

(declare-fun m!6239464 () Bool)

(assert (=> d!1674412 m!6239464))

(declare-fun m!6239466 () Bool)

(assert (=> d!1674412 m!6239466))

(declare-fun m!6239468 () Bool)

(assert (=> d!1674412 m!6239468))

(declare-fun m!6239470 () Bool)

(assert (=> d!1674412 m!6239470))

(declare-fun m!6239472 () Bool)

(assert (=> bm!364132 m!6239472))

(declare-fun m!6239474 () Bool)

(assert (=> b!5180598 m!6239474))

(declare-fun m!6239476 () Bool)

(assert (=> b!5180598 m!6239476))

(declare-fun m!6239478 () Bool)

(assert (=> b!5180598 m!6239478))

(assert (=> b!5180598 m!6239464))

(declare-fun m!6239480 () Bool)

(assert (=> b!5180598 m!6239480))

(declare-fun m!6239482 () Bool)

(assert (=> b!5180598 m!6239482))

(assert (=> b!5180598 m!6239464))

(assert (=> b!5180598 m!6238548))

(assert (=> b!5180598 m!6239474))

(declare-fun m!6239484 () Bool)

(assert (=> b!5180598 m!6239484))

(declare-fun m!6239486 () Bool)

(assert (=> b!5180598 m!6239486))

(declare-fun m!6239488 () Bool)

(assert (=> b!5180598 m!6239488))

(declare-fun m!6239490 () Bool)

(assert (=> b!5180598 m!6239490))

(declare-fun m!6239492 () Bool)

(assert (=> b!5180598 m!6239492))

(assert (=> b!5180598 m!6239478))

(declare-fun m!6239494 () Bool)

(assert (=> b!5180598 m!6239494))

(declare-fun m!6239496 () Bool)

(assert (=> b!5180598 m!6239496))

(declare-fun m!6239498 () Bool)

(assert (=> b!5180601 m!6239498))

(declare-fun m!6239500 () Bool)

(assert (=> b!5180608 m!6239500))

(declare-fun m!6239502 () Bool)

(assert (=> b!5180597 m!6239502))

(assert (=> b!5180597 m!6239482))

(assert (=> bm!364128 m!6239492))

(assert (=> bm!364131 m!6238554))

(assert (=> bm!364130 m!6239488))

(assert (=> bm!364086 d!1674412))

(declare-fun d!1674414 () Bool)

(declare-fun c!892765 () Bool)

(assert (=> d!1674414 (= c!892765 ((_ is Nil!60176) lt!2135061))))

(declare-fun e!3227825 () (InoxSet C!29592))

(assert (=> d!1674414 (= (content!10669 lt!2135061) e!3227825)))

(declare-fun b!5180621 () Bool)

(assert (=> b!5180621 (= e!3227825 ((as const (Array C!29592 Bool)) false))))

(declare-fun b!5180622 () Bool)

(assert (=> b!5180622 (= e!3227825 ((_ map or) (store ((as const (Array C!29592 Bool)) false) (h!66624 lt!2135061) true) (content!10669 (t!373453 lt!2135061))))))

(assert (= (and d!1674414 c!892765) b!5180621))

(assert (= (and d!1674414 (not c!892765)) b!5180622))

(declare-fun m!6239514 () Bool)

(assert (=> b!5180622 m!6239514))

(declare-fun m!6239516 () Bool)

(assert (=> b!5180622 m!6239516))

(assert (=> d!1674156 d!1674414))

(declare-fun d!1674422 () Bool)

(declare-fun c!892766 () Bool)

(assert (=> d!1674422 (= c!892766 ((_ is Nil!60176) testedP!294))))

(declare-fun e!3227826 () (InoxSet C!29592))

(assert (=> d!1674422 (= (content!10669 testedP!294) e!3227826)))

(declare-fun b!5180623 () Bool)

(assert (=> b!5180623 (= e!3227826 ((as const (Array C!29592 Bool)) false))))

(declare-fun b!5180624 () Bool)

(assert (=> b!5180624 (= e!3227826 ((_ map or) (store ((as const (Array C!29592 Bool)) false) (h!66624 testedP!294) true) (content!10669 (t!373453 testedP!294))))))

(assert (= (and d!1674422 c!892766) b!5180623))

(assert (= (and d!1674422 (not c!892766)) b!5180624))

(declare-fun m!6239520 () Bool)

(assert (=> b!5180624 m!6239520))

(declare-fun m!6239522 () Bool)

(assert (=> b!5180624 m!6239522))

(assert (=> d!1674156 d!1674422))

(declare-fun d!1674426 () Bool)

(declare-fun c!892767 () Bool)

(assert (=> d!1674426 (= c!892767 ((_ is Nil!60176) (Cons!60176 lt!2134944 Nil!60176)))))

(declare-fun e!3227827 () (InoxSet C!29592))

(assert (=> d!1674426 (= (content!10669 (Cons!60176 lt!2134944 Nil!60176)) e!3227827)))

(declare-fun b!5180625 () Bool)

(assert (=> b!5180625 (= e!3227827 ((as const (Array C!29592 Bool)) false))))

(declare-fun b!5180626 () Bool)

(assert (=> b!5180626 (= e!3227827 ((_ map or) (store ((as const (Array C!29592 Bool)) false) (h!66624 (Cons!60176 lt!2134944 Nil!60176)) true) (content!10669 (t!373453 (Cons!60176 lt!2134944 Nil!60176)))))))

(assert (= (and d!1674426 c!892767) b!5180625))

(assert (= (and d!1674426 (not c!892767)) b!5180626))

(declare-fun m!6239524 () Bool)

(assert (=> b!5180626 m!6239524))

(declare-fun m!6239526 () Bool)

(assert (=> b!5180626 m!6239526))

(assert (=> d!1674156 d!1674426))

(declare-fun d!1674428 () Bool)

(declare-fun c!892768 () Bool)

(assert (=> d!1674428 (= c!892768 (isEmpty!32219 (tail!10178 (_1!35239 lt!2134956))))))

(declare-fun e!3227828 () Bool)

(assert (=> d!1674428 (= (matchZipper!989 (derivationStepZipper!1007 baseZ!62 (head!11079 (_1!35239 lt!2134956))) (tail!10178 (_1!35239 lt!2134956))) e!3227828)))

(declare-fun b!5180627 () Bool)

(assert (=> b!5180627 (= e!3227828 (nullableZipper!1199 (derivationStepZipper!1007 baseZ!62 (head!11079 (_1!35239 lt!2134956)))))))

(declare-fun b!5180628 () Bool)

(assert (=> b!5180628 (= e!3227828 (matchZipper!989 (derivationStepZipper!1007 (derivationStepZipper!1007 baseZ!62 (head!11079 (_1!35239 lt!2134956))) (head!11079 (tail!10178 (_1!35239 lt!2134956)))) (tail!10178 (tail!10178 (_1!35239 lt!2134956)))))))

(assert (= (and d!1674428 c!892768) b!5180627))

(assert (= (and d!1674428 (not c!892768)) b!5180628))

(assert (=> d!1674428 m!6238920))

(declare-fun m!6239528 () Bool)

(assert (=> d!1674428 m!6239528))

(assert (=> b!5180627 m!6238918))

(declare-fun m!6239530 () Bool)

(assert (=> b!5180627 m!6239530))

(assert (=> b!5180628 m!6238920))

(declare-fun m!6239532 () Bool)

(assert (=> b!5180628 m!6239532))

(assert (=> b!5180628 m!6238918))

(assert (=> b!5180628 m!6239532))

(declare-fun m!6239534 () Bool)

(assert (=> b!5180628 m!6239534))

(assert (=> b!5180628 m!6238920))

(declare-fun m!6239536 () Bool)

(assert (=> b!5180628 m!6239536))

(assert (=> b!5180628 m!6239534))

(assert (=> b!5180628 m!6239536))

(declare-fun m!6239538 () Bool)

(assert (=> b!5180628 m!6239538))

(assert (=> b!5180396 d!1674428))

(declare-fun bs!1206811 () Bool)

(declare-fun d!1674430 () Bool)

(assert (= bs!1206811 (and d!1674430 d!1674228)))

(declare-fun lambda!258912 () Int)

(assert (=> bs!1206811 (= (= (head!11079 (_1!35239 lt!2134956)) lt!2134944) (= lambda!258912 lambda!258882))))

(declare-fun bs!1206812 () Bool)

(assert (= bs!1206812 (and d!1674430 d!1674362)))

(assert (=> bs!1206812 (= (= (head!11079 (_1!35239 lt!2134956)) call!364090) (= lambda!258912 lambda!258907))))

(declare-fun bs!1206813 () Bool)

(assert (= bs!1206813 (and d!1674430 d!1674376)))

(assert (=> bs!1206813 (= (= (head!11079 (_1!35239 lt!2134956)) (head!11079 (_1!35239 lt!2134953))) (= lambda!258912 lambda!258908))))

(assert (=> d!1674430 true))

(assert (=> d!1674430 (= (derivationStepZipper!1007 baseZ!62 (head!11079 (_1!35239 lt!2134956))) (flatMap!464 baseZ!62 lambda!258912))))

(declare-fun bs!1206814 () Bool)

(assert (= bs!1206814 d!1674430))

(declare-fun m!6239540 () Bool)

(assert (=> bs!1206814 m!6239540))

(assert (=> b!5180396 d!1674430))

(declare-fun d!1674432 () Bool)

(assert (=> d!1674432 (= (head!11079 (_1!35239 lt!2134956)) (h!66624 (_1!35239 lt!2134956)))))

(assert (=> b!5180396 d!1674432))

(declare-fun d!1674434 () Bool)

(assert (=> d!1674434 (= (tail!10178 (_1!35239 lt!2134956)) (t!373453 (_1!35239 lt!2134956)))))

(assert (=> b!5180396 d!1674434))

(declare-fun bs!1206815 () Bool)

(declare-fun d!1674436 () Bool)

(assert (= bs!1206815 (and d!1674436 d!1674228)))

(declare-fun lambda!258913 () Int)

(assert (=> bs!1206815 (= (= call!364050 lt!2134944) (= lambda!258913 lambda!258882))))

(declare-fun bs!1206816 () Bool)

(assert (= bs!1206816 (and d!1674436 d!1674362)))

(assert (=> bs!1206816 (= (= call!364050 call!364090) (= lambda!258913 lambda!258907))))

(declare-fun bs!1206817 () Bool)

(assert (= bs!1206817 (and d!1674436 d!1674376)))

(assert (=> bs!1206817 (= (= call!364050 (head!11079 (_1!35239 lt!2134953))) (= lambda!258913 lambda!258908))))

(declare-fun bs!1206818 () Bool)

(assert (= bs!1206818 (and d!1674436 d!1674430)))

(assert (=> bs!1206818 (= (= call!364050 (head!11079 (_1!35239 lt!2134956))) (= lambda!258913 lambda!258912))))

(assert (=> d!1674436 true))

(assert (=> d!1674436 (= (derivationStepZipper!1007 z!4581 call!364050) (flatMap!464 z!4581 lambda!258913))))

(declare-fun bs!1206819 () Bool)

(assert (= bs!1206819 d!1674436))

(declare-fun m!6239542 () Bool)

(assert (=> bs!1206819 m!6239542))

(assert (=> bm!364043 d!1674436))

(declare-fun d!1674438 () Bool)

(assert (=> d!1674438 (= (head!11079 (getSuffix!3442 input!5817 lt!2134949)) (h!66624 (getSuffix!3442 input!5817 lt!2134949)))))

(assert (=> bm!364084 d!1674438))

(assert (=> d!1674216 d!1674220))

(declare-fun d!1674440 () Bool)

(declare-fun lt!2135433 () List!60300)

(assert (=> d!1674440 (= (++!13177 (t!373453 testedP!294) lt!2135433) (tail!10178 input!5817))))

(declare-fun e!3227829 () List!60300)

(assert (=> d!1674440 (= lt!2135433 e!3227829)))

(declare-fun c!892769 () Bool)

(assert (=> d!1674440 (= c!892769 ((_ is Cons!60176) (t!373453 testedP!294)))))

(assert (=> d!1674440 (>= (size!39697 (tail!10178 input!5817)) (size!39697 (t!373453 testedP!294)))))

(assert (=> d!1674440 (= (getSuffix!3442 (tail!10178 input!5817) (t!373453 testedP!294)) lt!2135433)))

(declare-fun b!5180629 () Bool)

(assert (=> b!5180629 (= e!3227829 (getSuffix!3442 (tail!10178 (tail!10178 input!5817)) (t!373453 (t!373453 testedP!294))))))

(declare-fun b!5180630 () Bool)

(assert (=> b!5180630 (= e!3227829 (tail!10178 input!5817))))

(assert (= (and d!1674440 c!892769) b!5180629))

(assert (= (and d!1674440 (not c!892769)) b!5180630))

(declare-fun m!6239546 () Bool)

(assert (=> d!1674440 m!6239546))

(assert (=> d!1674440 m!6238588))

(assert (=> d!1674440 m!6239444))

(assert (=> d!1674440 m!6238664))

(assert (=> b!5180629 m!6238588))

(assert (=> b!5180629 m!6239446))

(assert (=> b!5180629 m!6239446))

(declare-fun m!6239548 () Bool)

(assert (=> b!5180629 m!6239548))

(assert (=> b!5180184 d!1674440))

(assert (=> b!5180184 d!1674408))

(assert (=> d!1674232 d!1674228))

(declare-fun d!1674444 () Bool)

(declare-fun c!892771 () Bool)

(assert (=> d!1674444 (= c!892771 ((_ is Cons!60176) (++!13177 testedP!294 (Cons!60176 lt!2134944 Nil!60176))))))

(declare-fun e!3227832 () (InoxSet Context!8090))

(assert (=> d!1674444 (= (derivationZipper!284 baseZ!62 (++!13177 testedP!294 (Cons!60176 lt!2134944 Nil!60176))) e!3227832)))

(declare-fun b!5180635 () Bool)

(assert (=> b!5180635 (= e!3227832 (derivationZipper!284 (derivationStepZipper!1007 baseZ!62 (h!66624 (++!13177 testedP!294 (Cons!60176 lt!2134944 Nil!60176)))) (t!373453 (++!13177 testedP!294 (Cons!60176 lt!2134944 Nil!60176)))))))

(declare-fun b!5180636 () Bool)

(assert (=> b!5180636 (= e!3227832 baseZ!62)))

(assert (= (and d!1674444 c!892771) b!5180635))

(assert (= (and d!1674444 (not c!892771)) b!5180636))

(declare-fun m!6239562 () Bool)

(assert (=> b!5180635 m!6239562))

(assert (=> b!5180635 m!6239562))

(declare-fun m!6239564 () Bool)

(assert (=> b!5180635 m!6239564))

(assert (=> d!1674232 d!1674444))

(declare-fun d!1674448 () Bool)

(assert (=> d!1674448 (= (derivationZipper!284 baseZ!62 (++!13177 testedP!294 (Cons!60176 lt!2134944 Nil!60176))) (derivationStepZipper!1007 z!4581 lt!2134944))))

(assert (=> d!1674448 true))

(declare-fun _$83!293 () Unit!152123)

(assert (=> d!1674448 (= (choose!38495 baseZ!62 z!4581 testedP!294 lt!2134944) _$83!293)))

(declare-fun bs!1206822 () Bool)

(assert (= bs!1206822 d!1674448))

(assert (=> bs!1206822 m!6238532))

(assert (=> bs!1206822 m!6238532))

(assert (=> bs!1206822 m!6238932))

(assert (=> bs!1206822 m!6238576))

(assert (=> d!1674232 d!1674448))

(assert (=> d!1674232 d!1674136))

(assert (=> d!1674232 d!1674156))

(assert (=> b!5180381 d!1674218))

(declare-fun b!5180638 () Bool)

(declare-fun e!3227834 () List!60300)

(assert (=> b!5180638 (= e!3227834 (Cons!60176 (h!66624 lt!2134949) (++!13177 (t!373453 lt!2134949) (Cons!60176 lt!2135212 Nil!60176))))))

(declare-fun b!5180637 () Bool)

(assert (=> b!5180637 (= e!3227834 (Cons!60176 lt!2135212 Nil!60176))))

(declare-fun b!5180639 () Bool)

(declare-fun res!2201022 () Bool)

(declare-fun e!3227833 () Bool)

(assert (=> b!5180639 (=> (not res!2201022) (not e!3227833))))

(declare-fun lt!2135438 () List!60300)

(assert (=> b!5180639 (= res!2201022 (= (size!39697 lt!2135438) (+ (size!39697 lt!2134949) (size!39697 (Cons!60176 lt!2135212 Nil!60176)))))))

(declare-fun b!5180640 () Bool)

(assert (=> b!5180640 (= e!3227833 (or (not (= (Cons!60176 lt!2135212 Nil!60176) Nil!60176)) (= lt!2135438 lt!2134949)))))

(declare-fun d!1674452 () Bool)

(assert (=> d!1674452 e!3227833))

(declare-fun res!2201023 () Bool)

(assert (=> d!1674452 (=> (not res!2201023) (not e!3227833))))

(assert (=> d!1674452 (= res!2201023 (= (content!10669 lt!2135438) ((_ map or) (content!10669 lt!2134949) (content!10669 (Cons!60176 lt!2135212 Nil!60176)))))))

(assert (=> d!1674452 (= lt!2135438 e!3227834)))

(declare-fun c!892773 () Bool)

(assert (=> d!1674452 (= c!892773 ((_ is Nil!60176) lt!2134949))))

(assert (=> d!1674452 (= (++!13177 lt!2134949 (Cons!60176 lt!2135212 Nil!60176)) lt!2135438)))

(assert (= (and d!1674452 c!892773) b!5180637))

(assert (= (and d!1674452 (not c!892773)) b!5180638))

(assert (= (and d!1674452 res!2201023) b!5180639))

(assert (= (and b!5180639 res!2201022) b!5180640))

(declare-fun m!6239568 () Bool)

(assert (=> b!5180638 m!6239568))

(declare-fun m!6239570 () Bool)

(assert (=> b!5180639 m!6239570))

(assert (=> b!5180639 m!6238560))

(declare-fun m!6239572 () Bool)

(assert (=> b!5180639 m!6239572))

(declare-fun m!6239574 () Bool)

(assert (=> d!1674452 m!6239574))

(assert (=> d!1674452 m!6239092))

(declare-fun m!6239576 () Bool)

(assert (=> d!1674452 m!6239576))

(assert (=> b!5180381 d!1674452))

(declare-fun d!1674454 () Bool)

(assert (=> d!1674454 (= (tail!10178 (getSuffix!3442 input!5817 lt!2134949)) (t!373453 (getSuffix!3442 input!5817 lt!2134949)))))

(assert (=> b!5180381 d!1674454))

(assert (=> b!5180381 d!1674438))

(assert (=> b!5180381 d!1674142))

(assert (=> b!5180381 d!1674230))

(declare-fun b!5180642 () Bool)

(declare-fun e!3227836 () List!60300)

(assert (=> b!5180642 (= e!3227836 (Cons!60176 (h!66624 (++!13177 lt!2134949 (Cons!60176 lt!2135212 Nil!60176))) (++!13177 (t!373453 (++!13177 lt!2134949 (Cons!60176 lt!2135212 Nil!60176))) lt!2135215)))))

(declare-fun b!5180641 () Bool)

(assert (=> b!5180641 (= e!3227836 lt!2135215)))

(declare-fun b!5180643 () Bool)

(declare-fun res!2201024 () Bool)

(declare-fun e!3227835 () Bool)

(assert (=> b!5180643 (=> (not res!2201024) (not e!3227835))))

(declare-fun lt!2135439 () List!60300)

(assert (=> b!5180643 (= res!2201024 (= (size!39697 lt!2135439) (+ (size!39697 (++!13177 lt!2134949 (Cons!60176 lt!2135212 Nil!60176))) (size!39697 lt!2135215))))))

(declare-fun b!5180644 () Bool)

(assert (=> b!5180644 (= e!3227835 (or (not (= lt!2135215 Nil!60176)) (= lt!2135439 (++!13177 lt!2134949 (Cons!60176 lt!2135212 Nil!60176)))))))

(declare-fun d!1674456 () Bool)

(assert (=> d!1674456 e!3227835))

(declare-fun res!2201025 () Bool)

(assert (=> d!1674456 (=> (not res!2201025) (not e!3227835))))

(assert (=> d!1674456 (= res!2201025 (= (content!10669 lt!2135439) ((_ map or) (content!10669 (++!13177 lt!2134949 (Cons!60176 lt!2135212 Nil!60176))) (content!10669 lt!2135215))))))

(assert (=> d!1674456 (= lt!2135439 e!3227836)))

(declare-fun c!892774 () Bool)

(assert (=> d!1674456 (= c!892774 ((_ is Nil!60176) (++!13177 lt!2134949 (Cons!60176 lt!2135212 Nil!60176))))))

(assert (=> d!1674456 (= (++!13177 (++!13177 lt!2134949 (Cons!60176 lt!2135212 Nil!60176)) lt!2135215) lt!2135439)))

(assert (= (and d!1674456 c!892774) b!5180641))

(assert (= (and d!1674456 (not c!892774)) b!5180642))

(assert (= (and d!1674456 res!2201025) b!5180643))

(assert (= (and b!5180643 res!2201024) b!5180644))

(declare-fun m!6239578 () Bool)

(assert (=> b!5180642 m!6239578))

(declare-fun m!6239580 () Bool)

(assert (=> b!5180643 m!6239580))

(assert (=> b!5180643 m!6238892))

(declare-fun m!6239582 () Bool)

(assert (=> b!5180643 m!6239582))

(declare-fun m!6239584 () Bool)

(assert (=> b!5180643 m!6239584))

(declare-fun m!6239586 () Bool)

(assert (=> d!1674456 m!6239586))

(assert (=> d!1674456 m!6238892))

(declare-fun m!6239588 () Bool)

(assert (=> d!1674456 m!6239588))

(declare-fun m!6239590 () Bool)

(assert (=> d!1674456 m!6239590))

(assert (=> b!5180381 d!1674456))

(declare-fun d!1674458 () Bool)

(assert (=> d!1674458 (<= (size!39697 lt!2134949) (size!39697 input!5817))))

(declare-fun lt!2135440 () Unit!152123)

(assert (=> d!1674458 (= lt!2135440 (choose!38494 lt!2134949 input!5817))))

(assert (=> d!1674458 (isPrefix!5794 lt!2134949 input!5817)))

(assert (=> d!1674458 (= (lemmaIsPrefixThenSmallerEqSize!955 lt!2134949 input!5817) lt!2135440)))

(declare-fun bs!1206823 () Bool)

(assert (= bs!1206823 d!1674458))

(assert (=> bs!1206823 m!6238560))

(assert (=> bs!1206823 m!6238548))

(declare-fun m!6239592 () Bool)

(assert (=> bs!1206823 m!6239592))

(assert (=> bs!1206823 m!6238530))

(assert (=> b!5180381 d!1674458))

(declare-fun b!5180646 () Bool)

(declare-fun e!3227838 () List!60300)

(assert (=> b!5180646 (= e!3227838 (Cons!60176 (h!66624 lt!2134949) (++!13177 (t!373453 lt!2134949) (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176))))))

(declare-fun b!5180645 () Bool)

(assert (=> b!5180645 (= e!3227838 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176))))

(declare-fun b!5180647 () Bool)

(declare-fun res!2201026 () Bool)

(declare-fun e!3227837 () Bool)

(assert (=> b!5180647 (=> (not res!2201026) (not e!3227837))))

(declare-fun lt!2135441 () List!60300)

(assert (=> b!5180647 (= res!2201026 (= (size!39697 lt!2135441) (+ (size!39697 lt!2134949) (size!39697 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176)))))))

(declare-fun b!5180648 () Bool)

(assert (=> b!5180648 (= e!3227837 (or (not (= (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176) Nil!60176)) (= lt!2135441 lt!2134949)))))

(declare-fun d!1674460 () Bool)

(assert (=> d!1674460 e!3227837))

(declare-fun res!2201027 () Bool)

(assert (=> d!1674460 (=> (not res!2201027) (not e!3227837))))

(assert (=> d!1674460 (= res!2201027 (= (content!10669 lt!2135441) ((_ map or) (content!10669 lt!2134949) (content!10669 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176)))))))

(assert (=> d!1674460 (= lt!2135441 e!3227838)))

(declare-fun c!892775 () Bool)

(assert (=> d!1674460 (= c!892775 ((_ is Nil!60176) lt!2134949))))

(assert (=> d!1674460 (= (++!13177 lt!2134949 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176)) lt!2135441)))

(assert (= (and d!1674460 c!892775) b!5180645))

(assert (= (and d!1674460 (not c!892775)) b!5180646))

(assert (= (and d!1674460 res!2201027) b!5180647))

(assert (= (and b!5180647 res!2201026) b!5180648))

(declare-fun m!6239594 () Bool)

(assert (=> b!5180646 m!6239594))

(declare-fun m!6239596 () Bool)

(assert (=> b!5180647 m!6239596))

(assert (=> b!5180647 m!6238560))

(declare-fun m!6239598 () Bool)

(assert (=> b!5180647 m!6239598))

(declare-fun m!6239600 () Bool)

(assert (=> d!1674460 m!6239600))

(assert (=> d!1674460 m!6239092))

(declare-fun m!6239602 () Bool)

(assert (=> d!1674460 m!6239602))

(assert (=> b!5180381 d!1674460))

(declare-fun d!1674462 () Bool)

(assert (=> d!1674462 (= (++!13177 (++!13177 lt!2134949 (Cons!60176 lt!2135212 Nil!60176)) lt!2135215) input!5817)))

(declare-fun lt!2135444 () Unit!152123)

(declare-fun choose!38500 (List!60300 C!29592 List!60300 List!60300) Unit!152123)

(assert (=> d!1674462 (= lt!2135444 (choose!38500 lt!2134949 lt!2135212 lt!2135215 input!5817))))

(assert (=> d!1674462 (= (++!13177 lt!2134949 (Cons!60176 lt!2135212 lt!2135215)) input!5817)))

(assert (=> d!1674462 (= (lemmaMoveElementToOtherListKeepsConcatEq!1596 lt!2134949 lt!2135212 lt!2135215 input!5817) lt!2135444)))

(declare-fun bs!1206824 () Bool)

(assert (= bs!1206824 d!1674462))

(assert (=> bs!1206824 m!6238892))

(assert (=> bs!1206824 m!6238892))

(assert (=> bs!1206824 m!6238904))

(declare-fun m!6239604 () Bool)

(assert (=> bs!1206824 m!6239604))

(declare-fun m!6239606 () Bool)

(assert (=> bs!1206824 m!6239606))

(assert (=> b!5180381 d!1674462))

(declare-fun d!1674464 () Bool)

(assert (=> d!1674464 (isPrefix!5794 (++!13177 lt!2134949 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176)) input!5817)))

(declare-fun lt!2135445 () Unit!152123)

(assert (=> d!1674464 (= lt!2135445 (choose!38492 lt!2134949 input!5817))))

(assert (=> d!1674464 (isPrefix!5794 lt!2134949 input!5817)))

(assert (=> d!1674464 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1099 lt!2134949 input!5817) lt!2135445)))

(declare-fun bs!1206825 () Bool)

(assert (= bs!1206825 d!1674464))

(declare-fun m!6239608 () Bool)

(assert (=> bs!1206825 m!6239608))

(assert (=> bs!1206825 m!6238570))

(assert (=> bs!1206825 m!6238894))

(assert (=> bs!1206825 m!6238888))

(assert (=> bs!1206825 m!6238896))

(assert (=> bs!1206825 m!6238530))

(assert (=> bs!1206825 m!6238888))

(assert (=> bs!1206825 m!6238570))

(assert (=> b!5180381 d!1674464))

(declare-fun b!5180650 () Bool)

(declare-fun res!2201030 () Bool)

(declare-fun e!3227839 () Bool)

(assert (=> b!5180650 (=> (not res!2201030) (not e!3227839))))

(assert (=> b!5180650 (= res!2201030 (= (head!11079 (++!13177 lt!2134949 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176))) (head!11079 input!5817)))))

(declare-fun b!5180652 () Bool)

(declare-fun e!3227841 () Bool)

(assert (=> b!5180652 (= e!3227841 (>= (size!39697 input!5817) (size!39697 (++!13177 lt!2134949 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176)))))))

(declare-fun b!5180649 () Bool)

(declare-fun e!3227840 () Bool)

(assert (=> b!5180649 (= e!3227840 e!3227839)))

(declare-fun res!2201029 () Bool)

(assert (=> b!5180649 (=> (not res!2201029) (not e!3227839))))

(assert (=> b!5180649 (= res!2201029 (not ((_ is Nil!60176) input!5817)))))

(declare-fun b!5180651 () Bool)

(assert (=> b!5180651 (= e!3227839 (isPrefix!5794 (tail!10178 (++!13177 lt!2134949 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176))) (tail!10178 input!5817)))))

(declare-fun d!1674466 () Bool)

(assert (=> d!1674466 e!3227841))

(declare-fun res!2201031 () Bool)

(assert (=> d!1674466 (=> res!2201031 e!3227841)))

(declare-fun lt!2135446 () Bool)

(assert (=> d!1674466 (= res!2201031 (not lt!2135446))))

(assert (=> d!1674466 (= lt!2135446 e!3227840)))

(declare-fun res!2201028 () Bool)

(assert (=> d!1674466 (=> res!2201028 e!3227840)))

(assert (=> d!1674466 (= res!2201028 ((_ is Nil!60176) (++!13177 lt!2134949 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176))))))

(assert (=> d!1674466 (= (isPrefix!5794 (++!13177 lt!2134949 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176)) input!5817) lt!2135446)))

(assert (= (and d!1674466 (not res!2201028)) b!5180649))

(assert (= (and b!5180649 res!2201029) b!5180650))

(assert (= (and b!5180650 res!2201030) b!5180651))

(assert (= (and d!1674466 (not res!2201031)) b!5180652))

(assert (=> b!5180650 m!6238888))

(declare-fun m!6239610 () Bool)

(assert (=> b!5180650 m!6239610))

(assert (=> b!5180650 m!6238586))

(assert (=> b!5180652 m!6238548))

(assert (=> b!5180652 m!6238888))

(declare-fun m!6239612 () Bool)

(assert (=> b!5180652 m!6239612))

(assert (=> b!5180651 m!6238888))

(declare-fun m!6239614 () Bool)

(assert (=> b!5180651 m!6239614))

(assert (=> b!5180651 m!6238588))

(assert (=> b!5180651 m!6239614))

(assert (=> b!5180651 m!6238588))

(declare-fun m!6239616 () Bool)

(assert (=> b!5180651 m!6239616))

(assert (=> b!5180381 d!1674466))

(assert (=> bm!364039 d!1674128))

(assert (=> b!5180403 d!1674218))

(declare-fun d!1674468 () Bool)

(declare-fun c!892780 () Bool)

(assert (=> d!1674468 (= c!892780 (isEmpty!32219 (_1!35239 (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 (size!39697 input!5817)))))))

(declare-fun e!3227844 () Bool)

(assert (=> d!1674468 (= (matchZipper!989 baseZ!62 (_1!35239 (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 (size!39697 input!5817)))) e!3227844)))

(declare-fun b!5180657 () Bool)

(assert (=> b!5180657 (= e!3227844 (nullableZipper!1199 baseZ!62))))

(declare-fun b!5180658 () Bool)

(assert (=> b!5180658 (= e!3227844 (matchZipper!989 (derivationStepZipper!1007 baseZ!62 (head!11079 (_1!35239 (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 (size!39697 input!5817))))) (tail!10178 (_1!35239 (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 (size!39697 input!5817))))))))

(assert (= (and d!1674468 c!892780) b!5180657))

(assert (= (and d!1674468 (not c!892780)) b!5180658))

(assert (=> d!1674468 m!6238934))

(assert (=> b!5180657 m!6238856))

(declare-fun m!6239618 () Bool)

(assert (=> b!5180658 m!6239618))

(assert (=> b!5180658 m!6239618))

(declare-fun m!6239620 () Bool)

(assert (=> b!5180658 m!6239620))

(declare-fun m!6239622 () Bool)

(assert (=> b!5180658 m!6239622))

(assert (=> b!5180658 m!6239620))

(assert (=> b!5180658 m!6239622))

(declare-fun m!6239624 () Bool)

(assert (=> b!5180658 m!6239624))

(assert (=> b!5180403 d!1674468))

(declare-fun b!5180659 () Bool)

(declare-fun c!892783 () Bool)

(declare-fun call!364140 () Bool)

(assert (=> b!5180659 (= c!892783 call!364140)))

(declare-fun lt!2135464 () Unit!152123)

(declare-fun lt!2135461 () Unit!152123)

(assert (=> b!5180659 (= lt!2135464 lt!2135461)))

(assert (=> b!5180659 (= input!5817 lt!2134949)))

(declare-fun call!364138 () Unit!152123)

(assert (=> b!5180659 (= lt!2135461 call!364138)))

(declare-fun lt!2135467 () Unit!152123)

(declare-fun lt!2135471 () Unit!152123)

(assert (=> b!5180659 (= lt!2135467 lt!2135471)))

(declare-fun call!364145 () Bool)

(assert (=> b!5180659 call!364145))

(declare-fun call!364139 () Unit!152123)

(assert (=> b!5180659 (= lt!2135471 call!364139)))

(declare-fun e!3227852 () tuple2!63872)

(declare-fun e!3227853 () tuple2!63872)

(assert (=> b!5180659 (= e!3227852 e!3227853)))

(declare-fun b!5180660 () Bool)

(declare-fun e!3227850 () Bool)

(declare-fun lt!2135459 () tuple2!63872)

(assert (=> b!5180660 (= e!3227850 (>= (size!39697 (_1!35239 lt!2135459)) (size!39697 lt!2134949)))))

(declare-fun b!5180661 () Bool)

(declare-fun c!892786 () Bool)

(assert (=> b!5180661 (= c!892786 call!364140)))

(declare-fun lt!2135480 () Unit!152123)

(declare-fun lt!2135479 () Unit!152123)

(assert (=> b!5180661 (= lt!2135480 lt!2135479)))

(declare-fun lt!2135465 () C!29592)

(declare-fun lt!2135468 () List!60300)

(assert (=> b!5180661 (= (++!13177 (++!13177 lt!2134949 (Cons!60176 lt!2135465 Nil!60176)) lt!2135468) input!5817)))

(assert (=> b!5180661 (= lt!2135479 (lemmaMoveElementToOtherListKeepsConcatEq!1596 lt!2134949 lt!2135465 lt!2135468 input!5817))))

(assert (=> b!5180661 (= lt!2135468 (tail!10178 (getSuffix!3442 input!5817 lt!2134949)))))

(assert (=> b!5180661 (= lt!2135465 (head!11079 (getSuffix!3442 input!5817 lt!2134949)))))

(declare-fun lt!2135462 () Unit!152123)

(declare-fun lt!2135463 () Unit!152123)

(assert (=> b!5180661 (= lt!2135462 lt!2135463)))

(assert (=> b!5180661 (isPrefix!5794 (++!13177 lt!2134949 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176)) input!5817)))

(assert (=> b!5180661 (= lt!2135463 (lemmaAddHeadSuffixToPrefixStillPrefix!1099 lt!2134949 input!5817))))

(declare-fun lt!2135472 () List!60300)

(assert (=> b!5180661 (= lt!2135472 (++!13177 lt!2134949 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176)))))

(declare-fun lt!2135481 () Unit!152123)

(declare-fun e!3227854 () Unit!152123)

(assert (=> b!5180661 (= lt!2135481 e!3227854)))

(declare-fun c!892788 () Bool)

(assert (=> b!5180661 (= c!892788 (= (size!39697 lt!2134949) (size!39697 input!5817)))))

(declare-fun lt!2135460 () Unit!152123)

(declare-fun lt!2135469 () Unit!152123)

(assert (=> b!5180661 (= lt!2135460 lt!2135469)))

(assert (=> b!5180661 (<= (size!39697 lt!2134949) (size!39697 input!5817))))

(assert (=> b!5180661 (= lt!2135469 (lemmaIsPrefixThenSmallerEqSize!955 lt!2134949 input!5817))))

(declare-fun e!3227848 () tuple2!63872)

(assert (=> b!5180661 (= e!3227852 e!3227848)))

(declare-fun b!5180662 () Bool)

(declare-fun e!3227851 () tuple2!63872)

(assert (=> b!5180662 (= e!3227851 e!3227852)))

(declare-fun c!892784 () Bool)

(assert (=> b!5180662 (= c!892784 (= (size!39697 lt!2134949) (size!39697 input!5817)))))

(declare-fun b!5180663 () Bool)

(declare-fun call!364141 () tuple2!63872)

(assert (=> b!5180663 (= e!3227848 call!364141)))

(declare-fun b!5180664 () Bool)

(declare-fun e!3227849 () Bool)

(assert (=> b!5180664 (= e!3227849 e!3227850)))

(declare-fun res!2201033 () Bool)

(assert (=> b!5180664 (=> res!2201033 e!3227850)))

(assert (=> b!5180664 (= res!2201033 (isEmpty!32219 (_1!35239 lt!2135459)))))

(declare-fun bm!364133 () Bool)

(assert (=> bm!364133 (= call!364145 (isPrefix!5794 input!5817 input!5817))))

(declare-fun b!5180665 () Bool)

(declare-fun Unit!152156 () Unit!152123)

(assert (=> b!5180665 (= e!3227854 Unit!152156)))

(declare-fun bm!364134 () Bool)

(assert (=> bm!364134 (= call!364138 (lemmaIsPrefixSameLengthThenSameList!1439 input!5817 lt!2134949 input!5817))))

(declare-fun bm!364135 () Bool)

(assert (=> bm!364135 (= call!364140 (nullableZipper!1199 lt!2134952))))

(declare-fun b!5180666 () Bool)

(declare-fun Unit!152157 () Unit!152123)

(assert (=> b!5180666 (= e!3227854 Unit!152157)))

(declare-fun lt!2135475 () Unit!152123)

(assert (=> b!5180666 (= lt!2135475 call!364139)))

(assert (=> b!5180666 call!364145))

(declare-fun lt!2135473 () Unit!152123)

(assert (=> b!5180666 (= lt!2135473 lt!2135475)))

(declare-fun lt!2135477 () Unit!152123)

(assert (=> b!5180666 (= lt!2135477 call!364138)))

(assert (=> b!5180666 (= input!5817 lt!2134949)))

(declare-fun lt!2135478 () Unit!152123)

(assert (=> b!5180666 (= lt!2135478 lt!2135477)))

(assert (=> b!5180666 false))

(declare-fun bm!364136 () Bool)

(declare-fun call!364143 () List!60300)

(assert (=> bm!364136 (= call!364143 (tail!10178 (getSuffix!3442 input!5817 lt!2134949)))))

(declare-fun b!5180667 () Bool)

(declare-fun e!3227847 () tuple2!63872)

(declare-fun lt!2135470 () tuple2!63872)

(assert (=> b!5180667 (= e!3227847 lt!2135470)))

(declare-fun b!5180668 () Bool)

(assert (=> b!5180668 (= e!3227853 (tuple2!63873 Nil!60176 input!5817))))

(declare-fun b!5180669 () Bool)

(assert (=> b!5180669 (= e!3227847 (tuple2!63873 lt!2134949 (getSuffix!3442 input!5817 lt!2134949)))))

(declare-fun bm!364138 () Bool)

(declare-fun call!364144 () C!29592)

(assert (=> bm!364138 (= call!364144 (head!11079 (getSuffix!3442 input!5817 lt!2134949)))))

(declare-fun bm!364139 () Bool)

(assert (=> bm!364139 (= call!364139 (lemmaIsPrefixRefl!3799 input!5817 input!5817))))

(declare-fun bm!364140 () Bool)

(declare-fun call!364142 () (InoxSet Context!8090))

(assert (=> bm!364140 (= call!364141 (findLongestMatchInnerZipper!317 call!364142 lt!2135472 (+ (size!39697 lt!2134949) 1) call!364143 input!5817 (size!39697 input!5817)))))

(declare-fun b!5180670 () Bool)

(assert (=> b!5180670 (= e!3227853 (tuple2!63873 lt!2134949 Nil!60176))))

(declare-fun b!5180671 () Bool)

(assert (=> b!5180671 (= e!3227848 e!3227847)))

(assert (=> b!5180671 (= lt!2135470 call!364141)))

(declare-fun c!892785 () Bool)

(assert (=> b!5180671 (= c!892785 (isEmpty!32219 (_1!35239 lt!2135470)))))

(declare-fun b!5180672 () Bool)

(assert (=> b!5180672 (= e!3227851 (tuple2!63873 Nil!60176 input!5817))))

(declare-fun bm!364137 () Bool)

(assert (=> bm!364137 (= call!364142 (derivationStepZipper!1007 lt!2134952 call!364144))))

(declare-fun d!1674470 () Bool)

(assert (=> d!1674470 e!3227849))

(declare-fun res!2201032 () Bool)

(assert (=> d!1674470 (=> (not res!2201032) (not e!3227849))))

(assert (=> d!1674470 (= res!2201032 (= (++!13177 (_1!35239 lt!2135459) (_2!35239 lt!2135459)) input!5817))))

(assert (=> d!1674470 (= lt!2135459 e!3227851)))

(declare-fun c!892787 () Bool)

(assert (=> d!1674470 (= c!892787 (lostCauseZipper!1348 lt!2134952))))

(declare-fun lt!2135458 () Unit!152123)

(declare-fun Unit!152158 () Unit!152123)

(assert (=> d!1674470 (= lt!2135458 Unit!152158)))

(assert (=> d!1674470 (= (getSuffix!3442 input!5817 lt!2134949) (getSuffix!3442 input!5817 lt!2134949))))

(declare-fun lt!2135476 () Unit!152123)

(declare-fun lt!2135482 () Unit!152123)

(assert (=> d!1674470 (= lt!2135476 lt!2135482)))

(declare-fun lt!2135457 () List!60300)

(assert (=> d!1674470 (= (getSuffix!3442 input!5817 lt!2134949) lt!2135457)))

(assert (=> d!1674470 (= lt!2135482 (lemmaSamePrefixThenSameSuffix!2715 lt!2134949 (getSuffix!3442 input!5817 lt!2134949) lt!2134949 lt!2135457 input!5817))))

(assert (=> d!1674470 (= lt!2135457 (getSuffix!3442 input!5817 lt!2134949))))

(declare-fun lt!2135474 () Unit!152123)

(declare-fun lt!2135466 () Unit!152123)

(assert (=> d!1674470 (= lt!2135474 lt!2135466)))

(assert (=> d!1674470 (isPrefix!5794 lt!2134949 (++!13177 lt!2134949 (getSuffix!3442 input!5817 lt!2134949)))))

(assert (=> d!1674470 (= lt!2135466 (lemmaConcatTwoListThenFirstIsPrefix!3609 lt!2134949 (getSuffix!3442 input!5817 lt!2134949)))))

(assert (=> d!1674470 (= (++!13177 lt!2134949 (getSuffix!3442 input!5817 lt!2134949)) input!5817)))

(assert (=> d!1674470 (= (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 (size!39697 input!5817)) lt!2135459)))

(assert (= (and d!1674470 c!892787) b!5180672))

(assert (= (and d!1674470 (not c!892787)) b!5180662))

(assert (= (and b!5180662 c!892784) b!5180659))

(assert (= (and b!5180662 (not c!892784)) b!5180661))

(assert (= (and b!5180659 c!892783) b!5180670))

(assert (= (and b!5180659 (not c!892783)) b!5180668))

(assert (= (and b!5180661 c!892788) b!5180666))

(assert (= (and b!5180661 (not c!892788)) b!5180665))

(assert (= (and b!5180661 c!892786) b!5180671))

(assert (= (and b!5180661 (not c!892786)) b!5180663))

(assert (= (and b!5180671 c!892785) b!5180669))

(assert (= (and b!5180671 (not c!892785)) b!5180667))

(assert (= (or b!5180671 b!5180663) bm!364136))

(assert (= (or b!5180671 b!5180663) bm!364138))

(assert (= (or b!5180671 b!5180663) bm!364137))

(assert (= (or b!5180671 b!5180663) bm!364140))

(assert (= (or b!5180659 b!5180666) bm!364139))

(assert (= (or b!5180659 b!5180661) bm!364135))

(assert (= (or b!5180659 b!5180666) bm!364133))

(assert (= (or b!5180659 b!5180666) bm!364134))

(assert (= (and d!1674470 res!2201032) b!5180664))

(assert (= (and b!5180664 (not res!2201033)) b!5180660))

(assert (=> bm!364133 m!6238556))

(assert (=> bm!364135 m!6238868))

(assert (=> bm!364134 m!6238870))

(declare-fun m!6239626 () Bool)

(assert (=> bm!364137 m!6239626))

(assert (=> d!1674470 m!6238570))

(assert (=> d!1674470 m!6238874))

(assert (=> d!1674470 m!6238570))

(assert (=> d!1674470 m!6238876))

(assert (=> d!1674470 m!6238876))

(assert (=> d!1674470 m!6238878))

(assert (=> d!1674470 m!6238570))

(declare-fun m!6239628 () Bool)

(assert (=> d!1674470 m!6239628))

(assert (=> d!1674470 m!6238882))

(assert (=> d!1674470 m!6238570))

(declare-fun m!6239630 () Bool)

(assert (=> d!1674470 m!6239630))

(assert (=> bm!364140 m!6238548))

(declare-fun m!6239632 () Bool)

(assert (=> bm!364140 m!6239632))

(assert (=> b!5180661 m!6238888))

(assert (=> b!5180661 m!6238890))

(declare-fun m!6239634 () Bool)

(assert (=> b!5180661 m!6239634))

(assert (=> b!5180661 m!6238570))

(assert (=> b!5180661 m!6238894))

(assert (=> b!5180661 m!6238560))

(assert (=> b!5180661 m!6238570))

(assert (=> b!5180661 m!6238548))

(assert (=> b!5180661 m!6238888))

(assert (=> b!5180661 m!6238896))

(assert (=> b!5180661 m!6238898))

(assert (=> b!5180661 m!6238570))

(assert (=> b!5180661 m!6238894))

(declare-fun m!6239636 () Bool)

(assert (=> b!5180661 m!6239636))

(assert (=> b!5180661 m!6238570))

(assert (=> b!5180661 m!6238902))

(assert (=> b!5180661 m!6239634))

(declare-fun m!6239638 () Bool)

(assert (=> b!5180661 m!6239638))

(assert (=> b!5180661 m!6238888))

(declare-fun m!6239640 () Bool)

(assert (=> b!5180664 m!6239640))

(declare-fun m!6239642 () Bool)

(assert (=> b!5180671 m!6239642))

(declare-fun m!6239644 () Bool)

(assert (=> b!5180660 m!6239644))

(assert (=> b!5180660 m!6238560))

(assert (=> bm!364136 m!6238570))

(assert (=> bm!364136 m!6238902))

(assert (=> bm!364139 m!6238554))

(assert (=> bm!364138 m!6238570))

(assert (=> bm!364138 m!6238894))

(assert (=> b!5180403 d!1674470))

(assert (=> b!5180403 d!1674142))

(assert (=> b!5180403 d!1674230))

(assert (=> b!5180366 d!1674142))

(assert (=> b!5180366 d!1674218))

(assert (=> d!1674234 d!1674218))

(assert (=> d!1674234 d!1674470))

(assert (=> d!1674234 d!1674208))

(assert (=> d!1674234 d!1674142))

(assert (=> d!1674234 d!1674230))

(declare-fun d!1674472 () Bool)

(assert (=> d!1674472 (= (isEmpty!32219 (_1!35239 (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 (size!39697 input!5817)))) ((_ is Nil!60176) (_1!35239 (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 (size!39697 input!5817)))))))

(assert (=> d!1674234 d!1674472))

(declare-fun d!1674474 () Bool)

(declare-fun e!3227873 () Bool)

(assert (=> d!1674474 e!3227873))

(declare-fun res!2201050 () Bool)

(assert (=> d!1674474 (=> res!2201050 e!3227873)))

(assert (=> d!1674474 (= res!2201050 (isEmpty!32219 (_1!35239 (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 (size!39697 input!5817)))))))

(assert (=> d!1674474 true))

(declare-fun _$79!167 () Unit!152123)

(assert (=> d!1674474 (= (choose!38496 baseZ!62 lt!2134952 lt!2134949 input!5817) _$79!167)))

(declare-fun b!5180699 () Bool)

(assert (=> b!5180699 (= e!3227873 (matchZipper!989 baseZ!62 (_1!35239 (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 (size!39697 input!5817)))))))

(assert (= (and d!1674474 (not res!2201050)) b!5180699))

(assert (=> d!1674474 m!6238548))

(assert (=> d!1674474 m!6238570))

(assert (=> d!1674474 m!6238560))

(assert (=> d!1674474 m!6238560))

(assert (=> d!1674474 m!6238570))

(assert (=> d!1674474 m!6238548))

(assert (=> d!1674474 m!6238938))

(assert (=> d!1674474 m!6238934))

(assert (=> b!5180699 m!6238548))

(assert (=> b!5180699 m!6238570))

(assert (=> b!5180699 m!6238560))

(assert (=> b!5180699 m!6238560))

(assert (=> b!5180699 m!6238570))

(assert (=> b!5180699 m!6238548))

(assert (=> b!5180699 m!6238938))

(assert (=> b!5180699 m!6238940))

(assert (=> d!1674234 d!1674474))

(assert (=> bm!364040 d!1674134))

(declare-fun d!1674494 () Bool)

(declare-fun lt!2135512 () Int)

(assert (=> d!1674494 (>= lt!2135512 0)))

(declare-fun e!3227875 () Int)

(assert (=> d!1674494 (= lt!2135512 e!3227875)))

(declare-fun c!892799 () Bool)

(assert (=> d!1674494 (= c!892799 ((_ is Nil!60176) (t!373453 input!5817)))))

(assert (=> d!1674494 (= (size!39697 (t!373453 input!5817)) lt!2135512)))

(declare-fun b!5180704 () Bool)

(assert (=> b!5180704 (= e!3227875 0)))

(declare-fun b!5180705 () Bool)

(assert (=> b!5180705 (= e!3227875 (+ 1 (size!39697 (t!373453 (t!373453 input!5817)))))))

(assert (= (and d!1674494 c!892799) b!5180704))

(assert (= (and d!1674494 (not c!892799)) b!5180705))

(declare-fun m!6239726 () Bool)

(assert (=> b!5180705 m!6239726))

(assert (=> b!5180177 d!1674494))

(declare-fun d!1674496 () Bool)

(assert (=> d!1674496 (= input!5817 lt!2134949)))

(declare-fun lt!2135513 () Unit!152123)

(assert (=> d!1674496 (= lt!2135513 (choose!38491 input!5817 lt!2134949 input!5817))))

(assert (=> d!1674496 (isPrefix!5794 input!5817 input!5817)))

(assert (=> d!1674496 (= (lemmaIsPrefixSameLengthThenSameList!1439 input!5817 lt!2134949 input!5817) lt!2135513)))

(declare-fun bs!1206861 () Bool)

(assert (= bs!1206861 d!1674496))

(declare-fun m!6239728 () Bool)

(assert (=> bs!1206861 m!6239728))

(assert (=> bs!1206861 m!6238556))

(assert (=> bm!364080 d!1674496))

(declare-fun b!5180707 () Bool)

(declare-fun e!3227878 () List!60300)

(assert (=> b!5180707 (= e!3227878 (Cons!60176 (h!66624 (t!373453 testedP!294)) (++!13177 (t!373453 (t!373453 testedP!294)) (Cons!60176 lt!2134944 Nil!60176))))))

(declare-fun b!5180706 () Bool)

(assert (=> b!5180706 (= e!3227878 (Cons!60176 lt!2134944 Nil!60176))))

(declare-fun b!5180708 () Bool)

(declare-fun res!2201051 () Bool)

(declare-fun e!3227877 () Bool)

(assert (=> b!5180708 (=> (not res!2201051) (not e!3227877))))

(declare-fun lt!2135514 () List!60300)

(assert (=> b!5180708 (= res!2201051 (= (size!39697 lt!2135514) (+ (size!39697 (t!373453 testedP!294)) (size!39697 (Cons!60176 lt!2134944 Nil!60176)))))))

(declare-fun b!5180709 () Bool)

(assert (=> b!5180709 (= e!3227877 (or (not (= (Cons!60176 lt!2134944 Nil!60176) Nil!60176)) (= lt!2135514 (t!373453 testedP!294))))))

(declare-fun d!1674498 () Bool)

(assert (=> d!1674498 e!3227877))

(declare-fun res!2201052 () Bool)

(assert (=> d!1674498 (=> (not res!2201052) (not e!3227877))))

(assert (=> d!1674498 (= res!2201052 (= (content!10669 lt!2135514) ((_ map or) (content!10669 (t!373453 testedP!294)) (content!10669 (Cons!60176 lt!2134944 Nil!60176)))))))

(assert (=> d!1674498 (= lt!2135514 e!3227878)))

(declare-fun c!892801 () Bool)

(assert (=> d!1674498 (= c!892801 ((_ is Nil!60176) (t!373453 testedP!294)))))

(assert (=> d!1674498 (= (++!13177 (t!373453 testedP!294) (Cons!60176 lt!2134944 Nil!60176)) lt!2135514)))

(assert (= (and d!1674498 c!892801) b!5180706))

(assert (= (and d!1674498 (not c!892801)) b!5180707))

(assert (= (and d!1674498 res!2201052) b!5180708))

(assert (= (and b!5180708 res!2201051) b!5180709))

(declare-fun m!6239730 () Bool)

(assert (=> b!5180707 m!6239730))

(declare-fun m!6239732 () Bool)

(assert (=> b!5180708 m!6239732))

(assert (=> b!5180708 m!6238664))

(assert (=> b!5180708 m!6238670))

(declare-fun m!6239734 () Bool)

(assert (=> d!1674498 m!6239734))

(assert (=> d!1674498 m!6239522))

(assert (=> d!1674498 m!6238676))

(assert (=> b!5180239 d!1674498))

(declare-fun d!1674500 () Bool)

(declare-fun lt!2135515 () Int)

(assert (=> d!1674500 (>= lt!2135515 0)))

(declare-fun e!3227880 () Int)

(assert (=> d!1674500 (= lt!2135515 e!3227880)))

(declare-fun c!892803 () Bool)

(assert (=> d!1674500 (= c!892803 ((_ is Nil!60176) (t!373453 lt!2134949)))))

(assert (=> d!1674500 (= (size!39697 (t!373453 lt!2134949)) lt!2135515)))

(declare-fun b!5180712 () Bool)

(assert (=> b!5180712 (= e!3227880 0)))

(declare-fun b!5180713 () Bool)

(assert (=> b!5180713 (= e!3227880 (+ 1 (size!39697 (t!373453 (t!373453 lt!2134949)))))))

(assert (= (and d!1674500 c!892803) b!5180712))

(assert (= (and d!1674500 (not c!892803)) b!5180713))

(declare-fun m!6239740 () Bool)

(assert (=> b!5180713 m!6239740))

(assert (=> b!5180378 d!1674500))

(declare-fun d!1674504 () Bool)

(declare-fun choose!38502 ((InoxSet Context!8090) Int) (InoxSet Context!8090))

(assert (=> d!1674504 (= (flatMap!464 z!4581 lambda!258882) (choose!38502 z!4581 lambda!258882))))

(declare-fun bs!1206862 () Bool)

(assert (= bs!1206862 d!1674504))

(declare-fun m!6239750 () Bool)

(assert (=> bs!1206862 m!6239750))

(assert (=> d!1674228 d!1674504))

(assert (=> bm!364079 d!1674128))

(declare-fun b!5180723 () Bool)

(declare-fun e!3227886 () List!60300)

(assert (=> b!5180723 (= e!3227886 (Cons!60176 (h!66624 testedP!294) (++!13177 (t!373453 testedP!294) lt!2134979)))))

(declare-fun b!5180722 () Bool)

(assert (=> b!5180722 (= e!3227886 lt!2134979)))

(declare-fun b!5180724 () Bool)

(declare-fun res!2201053 () Bool)

(declare-fun e!3227885 () Bool)

(assert (=> b!5180724 (=> (not res!2201053) (not e!3227885))))

(declare-fun lt!2135518 () List!60300)

(assert (=> b!5180724 (= res!2201053 (= (size!39697 lt!2135518) (+ (size!39697 testedP!294) (size!39697 lt!2134979))))))

(declare-fun b!5180725 () Bool)

(assert (=> b!5180725 (= e!3227885 (or (not (= lt!2134979 Nil!60176)) (= lt!2135518 testedP!294)))))

(declare-fun d!1674512 () Bool)

(assert (=> d!1674512 e!3227885))

(declare-fun res!2201054 () Bool)

(assert (=> d!1674512 (=> (not res!2201054) (not e!3227885))))

(assert (=> d!1674512 (= res!2201054 (= (content!10669 lt!2135518) ((_ map or) (content!10669 testedP!294) (content!10669 lt!2134979))))))

(assert (=> d!1674512 (= lt!2135518 e!3227886)))

(declare-fun c!892808 () Bool)

(assert (=> d!1674512 (= c!892808 ((_ is Nil!60176) testedP!294))))

(assert (=> d!1674512 (= (++!13177 testedP!294 lt!2134979) lt!2135518)))

(assert (= (and d!1674512 c!892808) b!5180722))

(assert (= (and d!1674512 (not c!892808)) b!5180723))

(assert (= (and d!1674512 res!2201054) b!5180724))

(assert (= (and b!5180724 res!2201053) b!5180725))

(declare-fun m!6239754 () Bool)

(assert (=> b!5180723 m!6239754))

(declare-fun m!6239756 () Bool)

(assert (=> b!5180724 m!6239756))

(assert (=> b!5180724 m!6238542))

(declare-fun m!6239758 () Bool)

(assert (=> b!5180724 m!6239758))

(declare-fun m!6239760 () Bool)

(assert (=> d!1674512 m!6239760))

(assert (=> d!1674512 m!6238674))

(declare-fun m!6239762 () Bool)

(assert (=> d!1674512 m!6239762))

(assert (=> d!1674148 d!1674512))

(assert (=> d!1674148 d!1674142))

(assert (=> d!1674148 d!1674152))

(assert (=> b!5180216 d!1674142))

(declare-fun d!1674516 () Bool)

(assert (=> d!1674516 (= (tail!10178 lt!2134946) (t!373453 lt!2134946))))

(assert (=> b!5180216 d!1674516))

(declare-fun d!1674518 () Bool)

(assert (=> d!1674518 (= (++!13177 (++!13177 testedP!294 (Cons!60176 lt!2135040 Nil!60176)) lt!2135043) input!5817)))

(declare-fun lt!2135519 () Unit!152123)

(assert (=> d!1674518 (= lt!2135519 (choose!38500 testedP!294 lt!2135040 lt!2135043 input!5817))))

(assert (=> d!1674518 (= (++!13177 testedP!294 (Cons!60176 lt!2135040 lt!2135043)) input!5817)))

(assert (=> d!1674518 (= (lemmaMoveElementToOtherListKeepsConcatEq!1596 testedP!294 lt!2135040 lt!2135043 input!5817) lt!2135519)))

(declare-fun bs!1206870 () Bool)

(assert (= bs!1206870 d!1674518))

(assert (=> bs!1206870 m!6238644))

(assert (=> bs!1206870 m!6238644))

(assert (=> bs!1206870 m!6238654))

(declare-fun m!6239766 () Bool)

(assert (=> bs!1206870 m!6239766))

(declare-fun m!6239768 () Bool)

(assert (=> bs!1206870 m!6239768))

(assert (=> b!5180216 d!1674518))

(assert (=> b!5180216 d!1674212))

(declare-fun b!5180727 () Bool)

(declare-fun e!3227888 () List!60300)

(assert (=> b!5180727 (= e!3227888 (Cons!60176 (h!66624 testedP!294) (++!13177 (t!373453 testedP!294) (Cons!60176 (head!11079 lt!2134946) Nil!60176))))))

(declare-fun b!5180726 () Bool)

(assert (=> b!5180726 (= e!3227888 (Cons!60176 (head!11079 lt!2134946) Nil!60176))))

(declare-fun b!5180728 () Bool)

(declare-fun res!2201055 () Bool)

(declare-fun e!3227887 () Bool)

(assert (=> b!5180728 (=> (not res!2201055) (not e!3227887))))

(declare-fun lt!2135520 () List!60300)

(assert (=> b!5180728 (= res!2201055 (= (size!39697 lt!2135520) (+ (size!39697 testedP!294) (size!39697 (Cons!60176 (head!11079 lt!2134946) Nil!60176)))))))

(declare-fun b!5180729 () Bool)

(assert (=> b!5180729 (= e!3227887 (or (not (= (Cons!60176 (head!11079 lt!2134946) Nil!60176) Nil!60176)) (= lt!2135520 testedP!294)))))

(declare-fun d!1674522 () Bool)

(assert (=> d!1674522 e!3227887))

(declare-fun res!2201056 () Bool)

(assert (=> d!1674522 (=> (not res!2201056) (not e!3227887))))

(assert (=> d!1674522 (= res!2201056 (= (content!10669 lt!2135520) ((_ map or) (content!10669 testedP!294) (content!10669 (Cons!60176 (head!11079 lt!2134946) Nil!60176)))))))

(assert (=> d!1674522 (= lt!2135520 e!3227888)))

(declare-fun c!892809 () Bool)

(assert (=> d!1674522 (= c!892809 ((_ is Nil!60176) testedP!294))))

(assert (=> d!1674522 (= (++!13177 testedP!294 (Cons!60176 (head!11079 lt!2134946) Nil!60176)) lt!2135520)))

(assert (= (and d!1674522 c!892809) b!5180726))

(assert (= (and d!1674522 (not c!892809)) b!5180727))

(assert (= (and d!1674522 res!2201056) b!5180728))

(assert (= (and b!5180728 res!2201055) b!5180729))

(declare-fun m!6239770 () Bool)

(assert (=> b!5180727 m!6239770))

(declare-fun m!6239772 () Bool)

(assert (=> b!5180728 m!6239772))

(assert (=> b!5180728 m!6238542))

(declare-fun m!6239774 () Bool)

(assert (=> b!5180728 m!6239774))

(declare-fun m!6239776 () Bool)

(assert (=> d!1674522 m!6239776))

(assert (=> d!1674522 m!6238674))

(declare-fun m!6239778 () Bool)

(assert (=> d!1674522 m!6239778))

(assert (=> b!5180216 d!1674522))

(assert (=> b!5180216 d!1674346))

(assert (=> b!5180216 d!1674152))

(assert (=> b!5180216 d!1674158))

(declare-fun e!3227890 () List!60300)

(declare-fun b!5180731 () Bool)

(assert (=> b!5180731 (= e!3227890 (Cons!60176 (h!66624 (++!13177 testedP!294 (Cons!60176 lt!2135040 Nil!60176))) (++!13177 (t!373453 (++!13177 testedP!294 (Cons!60176 lt!2135040 Nil!60176))) lt!2135043)))))

(declare-fun b!5180730 () Bool)

(assert (=> b!5180730 (= e!3227890 lt!2135043)))

(declare-fun b!5180732 () Bool)

(declare-fun res!2201057 () Bool)

(declare-fun e!3227889 () Bool)

(assert (=> b!5180732 (=> (not res!2201057) (not e!3227889))))

(declare-fun lt!2135521 () List!60300)

(assert (=> b!5180732 (= res!2201057 (= (size!39697 lt!2135521) (+ (size!39697 (++!13177 testedP!294 (Cons!60176 lt!2135040 Nil!60176))) (size!39697 lt!2135043))))))

(declare-fun b!5180733 () Bool)

(assert (=> b!5180733 (= e!3227889 (or (not (= lt!2135043 Nil!60176)) (= lt!2135521 (++!13177 testedP!294 (Cons!60176 lt!2135040 Nil!60176)))))))

(declare-fun d!1674524 () Bool)

(assert (=> d!1674524 e!3227889))

(declare-fun res!2201058 () Bool)

(assert (=> d!1674524 (=> (not res!2201058) (not e!3227889))))

(assert (=> d!1674524 (= res!2201058 (= (content!10669 lt!2135521) ((_ map or) (content!10669 (++!13177 testedP!294 (Cons!60176 lt!2135040 Nil!60176))) (content!10669 lt!2135043))))))

(assert (=> d!1674524 (= lt!2135521 e!3227890)))

(declare-fun c!892810 () Bool)

(assert (=> d!1674524 (= c!892810 ((_ is Nil!60176) (++!13177 testedP!294 (Cons!60176 lt!2135040 Nil!60176))))))

(assert (=> d!1674524 (= (++!13177 (++!13177 testedP!294 (Cons!60176 lt!2135040 Nil!60176)) lt!2135043) lt!2135521)))

(assert (= (and d!1674524 c!892810) b!5180730))

(assert (= (and d!1674524 (not c!892810)) b!5180731))

(assert (= (and d!1674524 res!2201058) b!5180732))

(assert (= (and b!5180732 res!2201057) b!5180733))

(declare-fun m!6239780 () Bool)

(assert (=> b!5180731 m!6239780))

(declare-fun m!6239782 () Bool)

(assert (=> b!5180732 m!6239782))

(assert (=> b!5180732 m!6238644))

(declare-fun m!6239784 () Bool)

(assert (=> b!5180732 m!6239784))

(declare-fun m!6239786 () Bool)

(assert (=> b!5180732 m!6239786))

(declare-fun m!6239788 () Bool)

(assert (=> d!1674524 m!6239788))

(assert (=> d!1674524 m!6238644))

(declare-fun m!6239790 () Bool)

(assert (=> d!1674524 m!6239790))

(declare-fun m!6239792 () Bool)

(assert (=> d!1674524 m!6239792))

(assert (=> b!5180216 d!1674524))

(assert (=> b!5180216 d!1674348))

(assert (=> b!5180216 d!1674154))

(assert (=> b!5180216 d!1674356))

(declare-fun b!5180739 () Bool)

(declare-fun e!3227895 () List!60300)

(assert (=> b!5180739 (= e!3227895 (Cons!60176 (h!66624 testedP!294) (++!13177 (t!373453 testedP!294) (Cons!60176 lt!2135040 Nil!60176))))))

(declare-fun b!5180738 () Bool)

(assert (=> b!5180738 (= e!3227895 (Cons!60176 lt!2135040 Nil!60176))))

(declare-fun b!5180740 () Bool)

(declare-fun res!2201063 () Bool)

(declare-fun e!3227894 () Bool)

(assert (=> b!5180740 (=> (not res!2201063) (not e!3227894))))

(declare-fun lt!2135523 () List!60300)

(assert (=> b!5180740 (= res!2201063 (= (size!39697 lt!2135523) (+ (size!39697 testedP!294) (size!39697 (Cons!60176 lt!2135040 Nil!60176)))))))

(declare-fun b!5180741 () Bool)

(assert (=> b!5180741 (= e!3227894 (or (not (= (Cons!60176 lt!2135040 Nil!60176) Nil!60176)) (= lt!2135523 testedP!294)))))

(declare-fun d!1674530 () Bool)

(assert (=> d!1674530 e!3227894))

(declare-fun res!2201064 () Bool)

(assert (=> d!1674530 (=> (not res!2201064) (not e!3227894))))

(assert (=> d!1674530 (= res!2201064 (= (content!10669 lt!2135523) ((_ map or) (content!10669 testedP!294) (content!10669 (Cons!60176 lt!2135040 Nil!60176)))))))

(assert (=> d!1674530 (= lt!2135523 e!3227895)))

(declare-fun c!892811 () Bool)

(assert (=> d!1674530 (= c!892811 ((_ is Nil!60176) testedP!294))))

(assert (=> d!1674530 (= (++!13177 testedP!294 (Cons!60176 lt!2135040 Nil!60176)) lt!2135523)))

(assert (= (and d!1674530 c!892811) b!5180738))

(assert (= (and d!1674530 (not c!892811)) b!5180739))

(assert (= (and d!1674530 res!2201064) b!5180740))

(assert (= (and b!5180740 res!2201063) b!5180741))

(declare-fun m!6239802 () Bool)

(assert (=> b!5180739 m!6239802))

(declare-fun m!6239804 () Bool)

(assert (=> b!5180740 m!6239804))

(assert (=> b!5180740 m!6238542))

(declare-fun m!6239806 () Bool)

(assert (=> b!5180740 m!6239806))

(declare-fun m!6239808 () Bool)

(assert (=> d!1674530 m!6239808))

(assert (=> d!1674530 m!6238674))

(declare-fun m!6239810 () Bool)

(assert (=> d!1674530 m!6239810))

(assert (=> b!5180216 d!1674530))

(assert (=> b!5180216 d!1674148))

(assert (=> bm!364045 d!1674126))

(assert (=> bm!364082 d!1674454))

(declare-fun bs!1206872 () Bool)

(declare-fun d!1674538 () Bool)

(assert (= bs!1206872 (and d!1674538 d!1674160)))

(declare-fun lambda!258933 () Int)

(assert (=> bs!1206872 (= lambda!258933 lambda!258876)))

(declare-fun bs!1206873 () Bool)

(assert (= bs!1206873 (and d!1674538 d!1674274)))

(assert (=> bs!1206873 (not (= lambda!258933 lambda!258901))))

(declare-fun bs!1206874 () Bool)

(assert (= bs!1206874 (and d!1674538 b!5180506)))

(assert (=> bs!1206874 (not (= lambda!258933 lambda!258902))))

(declare-fun bs!1206875 () Bool)

(assert (= bs!1206875 (and d!1674538 b!5180507)))

(assert (=> bs!1206875 (not (= lambda!258933 lambda!258903))))

(assert (=> d!1674538 (= (nullableZipper!1199 baseZ!62) (exists!1947 baseZ!62 lambda!258933))))

(declare-fun bs!1206876 () Bool)

(assert (= bs!1206876 d!1674538))

(declare-fun m!6239822 () Bool)

(assert (=> bs!1206876 m!6239822))

(assert (=> b!5180375 d!1674538))

(assert (=> bm!364041 d!1674160))

(declare-fun d!1674544 () Bool)

(assert (=> d!1674544 (= (head!11079 lt!2134949) (h!66624 lt!2134949))))

(assert (=> b!5180364 d!1674544))

(assert (=> b!5180364 d!1674396))

(declare-fun b!5180751 () Bool)

(declare-fun res!2201071 () Bool)

(declare-fun e!3227901 () Bool)

(assert (=> b!5180751 (=> (not res!2201071) (not e!3227901))))

(assert (=> b!5180751 (= res!2201071 (= (head!11079 (tail!10178 input!5817)) (head!11079 (tail!10178 input!5817))))))

(declare-fun b!5180753 () Bool)

(declare-fun e!3227903 () Bool)

(assert (=> b!5180753 (= e!3227903 (>= (size!39697 (tail!10178 input!5817)) (size!39697 (tail!10178 input!5817))))))

(declare-fun b!5180750 () Bool)

(declare-fun e!3227902 () Bool)

(assert (=> b!5180750 (= e!3227902 e!3227901)))

(declare-fun res!2201070 () Bool)

(assert (=> b!5180750 (=> (not res!2201070) (not e!3227901))))

(assert (=> b!5180750 (= res!2201070 (not ((_ is Nil!60176) (tail!10178 input!5817))))))

(declare-fun b!5180752 () Bool)

(assert (=> b!5180752 (= e!3227901 (isPrefix!5794 (tail!10178 (tail!10178 input!5817)) (tail!10178 (tail!10178 input!5817))))))

(declare-fun d!1674546 () Bool)

(assert (=> d!1674546 e!3227903))

(declare-fun res!2201072 () Bool)

(assert (=> d!1674546 (=> res!2201072 e!3227903)))

(declare-fun lt!2135526 () Bool)

(assert (=> d!1674546 (= res!2201072 (not lt!2135526))))

(assert (=> d!1674546 (= lt!2135526 e!3227902)))

(declare-fun res!2201069 () Bool)

(assert (=> d!1674546 (=> res!2201069 e!3227902)))

(assert (=> d!1674546 (= res!2201069 ((_ is Nil!60176) (tail!10178 input!5817)))))

(assert (=> d!1674546 (= (isPrefix!5794 (tail!10178 input!5817) (tail!10178 input!5817)) lt!2135526)))

(assert (= (and d!1674546 (not res!2201069)) b!5180750))

(assert (= (and b!5180750 res!2201070) b!5180751))

(assert (= (and b!5180751 res!2201071) b!5180752))

(assert (= (and d!1674546 (not res!2201072)) b!5180753))

(assert (=> b!5180751 m!6238588))

(declare-fun m!6239828 () Bool)

(assert (=> b!5180751 m!6239828))

(assert (=> b!5180751 m!6238588))

(assert (=> b!5180751 m!6239828))

(assert (=> b!5180753 m!6238588))

(assert (=> b!5180753 m!6239444))

(assert (=> b!5180753 m!6238588))

(assert (=> b!5180753 m!6239444))

(assert (=> b!5180752 m!6238588))

(assert (=> b!5180752 m!6239446))

(assert (=> b!5180752 m!6238588))

(assert (=> b!5180752 m!6239446))

(assert (=> b!5180752 m!6239446))

(assert (=> b!5180752 m!6239446))

(declare-fun m!6239830 () Bool)

(assert (=> b!5180752 m!6239830))

(assert (=> b!5180148 d!1674546))

(assert (=> b!5180148 d!1674408))

(declare-fun b!5180755 () Bool)

(declare-fun res!2201075 () Bool)

(declare-fun e!3227904 () Bool)

(assert (=> b!5180755 (=> (not res!2201075) (not e!3227904))))

(assert (=> b!5180755 (= res!2201075 (= (head!11079 (tail!10178 testedP!294)) (head!11079 (tail!10178 input!5817))))))

(declare-fun b!5180757 () Bool)

(declare-fun e!3227906 () Bool)

(assert (=> b!5180757 (= e!3227906 (>= (size!39697 (tail!10178 input!5817)) (size!39697 (tail!10178 testedP!294))))))

(declare-fun b!5180754 () Bool)

(declare-fun e!3227905 () Bool)

(assert (=> b!5180754 (= e!3227905 e!3227904)))

(declare-fun res!2201074 () Bool)

(assert (=> b!5180754 (=> (not res!2201074) (not e!3227904))))

(assert (=> b!5180754 (= res!2201074 (not ((_ is Nil!60176) (tail!10178 input!5817))))))

(declare-fun b!5180756 () Bool)

(assert (=> b!5180756 (= e!3227904 (isPrefix!5794 (tail!10178 (tail!10178 testedP!294)) (tail!10178 (tail!10178 input!5817))))))

(declare-fun d!1674550 () Bool)

(assert (=> d!1674550 e!3227906))

(declare-fun res!2201076 () Bool)

(assert (=> d!1674550 (=> res!2201076 e!3227906)))

(declare-fun lt!2135527 () Bool)

(assert (=> d!1674550 (= res!2201076 (not lt!2135527))))

(assert (=> d!1674550 (= lt!2135527 e!3227905)))

(declare-fun res!2201073 () Bool)

(assert (=> d!1674550 (=> res!2201073 e!3227905)))

(assert (=> d!1674550 (= res!2201073 ((_ is Nil!60176) (tail!10178 testedP!294)))))

(assert (=> d!1674550 (= (isPrefix!5794 (tail!10178 testedP!294) (tail!10178 input!5817)) lt!2135527)))

(assert (= (and d!1674550 (not res!2201073)) b!5180754))

(assert (= (and b!5180754 res!2201074) b!5180755))

(assert (= (and b!5180755 res!2201075) b!5180756))

(assert (= (and d!1674550 (not res!2201076)) b!5180757))

(assert (=> b!5180755 m!6238848))

(declare-fun m!6239832 () Bool)

(assert (=> b!5180755 m!6239832))

(assert (=> b!5180755 m!6238588))

(assert (=> b!5180755 m!6239828))

(assert (=> b!5180757 m!6238588))

(assert (=> b!5180757 m!6239444))

(assert (=> b!5180757 m!6238848))

(declare-fun m!6239834 () Bool)

(assert (=> b!5180757 m!6239834))

(assert (=> b!5180756 m!6238848))

(declare-fun m!6239836 () Bool)

(assert (=> b!5180756 m!6239836))

(assert (=> b!5180756 m!6238588))

(assert (=> b!5180756 m!6239446))

(assert (=> b!5180756 m!6239836))

(assert (=> b!5180756 m!6239446))

(declare-fun m!6239838 () Bool)

(assert (=> b!5180756 m!6239838))

(assert (=> b!5180369 d!1674550))

(declare-fun d!1674552 () Bool)

(assert (=> d!1674552 (= (tail!10178 testedP!294) (t!373453 testedP!294))))

(assert (=> b!5180369 d!1674552))

(assert (=> b!5180369 d!1674408))

(declare-fun d!1674554 () Bool)

(assert (=> d!1674554 (= lt!2134946 lt!2135032)))

(declare-fun lt!2135528 () Unit!152123)

(assert (=> d!1674554 (= lt!2135528 (choose!38498 testedP!294 lt!2134946 testedP!294 lt!2135032 input!5817))))

(assert (=> d!1674554 (isPrefix!5794 testedP!294 input!5817)))

(assert (=> d!1674554 (= (lemmaSamePrefixThenSameSuffix!2715 testedP!294 lt!2134946 testedP!294 lt!2135032 input!5817) lt!2135528)))

(declare-fun bs!1206877 () Bool)

(assert (= bs!1206877 d!1674554))

(declare-fun m!6239840 () Bool)

(assert (=> bs!1206877 m!6239840))

(assert (=> bs!1206877 m!6238536))

(assert (=> d!1674150 d!1674554))

(declare-fun bs!1206878 () Bool)

(declare-fun d!1674556 () Bool)

(assert (= bs!1206878 (and d!1674556 d!1674160)))

(declare-fun lambda!258934 () Int)

(assert (=> bs!1206878 (not (= lambda!258934 lambda!258876))))

(declare-fun bs!1206879 () Bool)

(assert (= bs!1206879 (and d!1674556 b!5180507)))

(assert (=> bs!1206879 (not (= lambda!258934 lambda!258903))))

(declare-fun bs!1206880 () Bool)

(assert (= bs!1206880 (and d!1674556 b!5180506)))

(assert (=> bs!1206880 (not (= lambda!258934 lambda!258902))))

(declare-fun bs!1206881 () Bool)

(assert (= bs!1206881 (and d!1674556 d!1674274)))

(assert (=> bs!1206881 (= lambda!258934 lambda!258901)))

(declare-fun bs!1206882 () Bool)

(assert (= bs!1206882 (and d!1674556 d!1674538)))

(assert (=> bs!1206882 (not (= lambda!258934 lambda!258933))))

(declare-fun bs!1206883 () Bool)

(declare-fun b!5180758 () Bool)

(assert (= bs!1206883 (and b!5180758 d!1674160)))

(declare-fun lambda!258935 () Int)

(assert (=> bs!1206883 (not (= lambda!258935 lambda!258876))))

(declare-fun bs!1206884 () Bool)

(assert (= bs!1206884 (and b!5180758 b!5180507)))

(assert (=> bs!1206884 (= lambda!258935 lambda!258903)))

(declare-fun bs!1206885 () Bool)

(assert (= bs!1206885 (and b!5180758 b!5180506)))

(assert (=> bs!1206885 (= lambda!258935 lambda!258902)))

(declare-fun bs!1206886 () Bool)

(assert (= bs!1206886 (and b!5180758 d!1674556)))

(assert (=> bs!1206886 (not (= lambda!258935 lambda!258934))))

(declare-fun bs!1206887 () Bool)

(assert (= bs!1206887 (and b!5180758 d!1674274)))

(assert (=> bs!1206887 (not (= lambda!258935 lambda!258901))))

(declare-fun bs!1206888 () Bool)

(assert (= bs!1206888 (and b!5180758 d!1674538)))

(assert (=> bs!1206888 (not (= lambda!258935 lambda!258933))))

(declare-fun bs!1206890 () Bool)

(declare-fun b!5180759 () Bool)

(assert (= bs!1206890 (and b!5180759 d!1674160)))

(declare-fun lambda!258936 () Int)

(assert (=> bs!1206890 (not (= lambda!258936 lambda!258876))))

(declare-fun bs!1206891 () Bool)

(assert (= bs!1206891 (and b!5180759 b!5180507)))

(assert (=> bs!1206891 (= lambda!258936 lambda!258903)))

(declare-fun bs!1206892 () Bool)

(assert (= bs!1206892 (and b!5180759 b!5180506)))

(assert (=> bs!1206892 (= lambda!258936 lambda!258902)))

(declare-fun bs!1206893 () Bool)

(assert (= bs!1206893 (and b!5180759 b!5180758)))

(assert (=> bs!1206893 (= lambda!258936 lambda!258935)))

(declare-fun bs!1206894 () Bool)

(assert (= bs!1206894 (and b!5180759 d!1674556)))

(assert (=> bs!1206894 (not (= lambda!258936 lambda!258934))))

(declare-fun bs!1206895 () Bool)

(assert (= bs!1206895 (and b!5180759 d!1674274)))

(assert (=> bs!1206895 (not (= lambda!258936 lambda!258901))))

(declare-fun bs!1206896 () Bool)

(assert (= bs!1206896 (and b!5180759 d!1674538)))

(assert (=> bs!1206896 (not (= lambda!258936 lambda!258933))))

(declare-fun e!3227907 () Unit!152123)

(declare-fun Unit!152161 () Unit!152123)

(assert (=> b!5180759 (= e!3227907 Unit!152161)))

(declare-fun lt!2135531 () List!60301)

(declare-fun call!364155 () List!60301)

(assert (=> b!5180759 (= lt!2135531 call!364155)))

(declare-fun lt!2135529 () Unit!152123)

(assert (=> b!5180759 (= lt!2135529 (lemmaForallThenNotExists!449 lt!2135531 lambda!258934))))

(declare-fun call!364154 () Bool)

(assert (=> b!5180759 (not call!364154)))

(declare-fun lt!2135536 () Unit!152123)

(assert (=> b!5180759 (= lt!2135536 lt!2135529)))

(declare-fun lt!2135530 () Bool)

(assert (=> d!1674556 (= lt!2135530 (isEmpty!32220 (getLanguageWitness!1023 z!4581)))))

(assert (=> d!1674556 (= lt!2135530 (forall!14173 z!4581 lambda!258934))))

(declare-fun lt!2135533 () Unit!152123)

(assert (=> d!1674556 (= lt!2135533 e!3227907)))

(declare-fun c!892814 () Bool)

(assert (=> d!1674556 (= c!892814 (not (forall!14173 z!4581 lambda!258934)))))

(assert (=> d!1674556 (= (lostCauseZipper!1348 z!4581) lt!2135530)))

(declare-fun bm!364149 () Bool)

(assert (=> bm!364149 (= call!364155 (toList!8462 z!4581))))

(declare-fun lt!2135534 () List!60301)

(declare-fun bm!364150 () Bool)

(assert (=> bm!364150 (= call!364154 (exists!1949 (ite c!892814 lt!2135534 lt!2135531) (ite c!892814 lambda!258935 lambda!258936)))))

(declare-fun Unit!152162 () Unit!152123)

(assert (=> b!5180758 (= e!3227907 Unit!152162)))

(assert (=> b!5180758 (= lt!2135534 call!364155)))

(declare-fun lt!2135532 () Unit!152123)

(assert (=> b!5180758 (= lt!2135532 (lemmaNotForallThenExists!482 lt!2135534 lambda!258934))))

(assert (=> b!5180758 call!364154))

(declare-fun lt!2135535 () Unit!152123)

(assert (=> b!5180758 (= lt!2135535 lt!2135532)))

(assert (= (and d!1674556 c!892814) b!5180758))

(assert (= (and d!1674556 (not c!892814)) b!5180759))

(assert (= (or b!5180758 b!5180759) bm!364149))

(assert (= (or b!5180758 b!5180759) bm!364150))

(declare-fun m!6239842 () Bool)

(assert (=> b!5180759 m!6239842))

(declare-fun m!6239844 () Bool)

(assert (=> b!5180758 m!6239844))

(declare-fun m!6239846 () Bool)

(assert (=> d!1674556 m!6239846))

(assert (=> d!1674556 m!6239846))

(declare-fun m!6239848 () Bool)

(assert (=> d!1674556 m!6239848))

(declare-fun m!6239850 () Bool)

(assert (=> d!1674556 m!6239850))

(assert (=> d!1674556 m!6239850))

(declare-fun m!6239852 () Bool)

(assert (=> bm!364150 m!6239852))

(declare-fun m!6239854 () Bool)

(assert (=> bm!364149 m!6239854))

(assert (=> d!1674150 d!1674556))

(declare-fun b!5180761 () Bool)

(declare-fun res!2201079 () Bool)

(declare-fun e!3227908 () Bool)

(assert (=> b!5180761 (=> (not res!2201079) (not e!3227908))))

(assert (=> b!5180761 (= res!2201079 (= (head!11079 testedP!294) (head!11079 (++!13177 testedP!294 lt!2134946))))))

(declare-fun b!5180763 () Bool)

(declare-fun e!3227910 () Bool)

(assert (=> b!5180763 (= e!3227910 (>= (size!39697 (++!13177 testedP!294 lt!2134946)) (size!39697 testedP!294)))))

(declare-fun b!5180760 () Bool)

(declare-fun e!3227909 () Bool)

(assert (=> b!5180760 (= e!3227909 e!3227908)))

(declare-fun res!2201078 () Bool)

(assert (=> b!5180760 (=> (not res!2201078) (not e!3227908))))

(assert (=> b!5180760 (= res!2201078 (not ((_ is Nil!60176) (++!13177 testedP!294 lt!2134946))))))

(declare-fun b!5180762 () Bool)

(assert (=> b!5180762 (= e!3227908 (isPrefix!5794 (tail!10178 testedP!294) (tail!10178 (++!13177 testedP!294 lt!2134946))))))

(declare-fun d!1674560 () Bool)

(assert (=> d!1674560 e!3227910))

(declare-fun res!2201080 () Bool)

(assert (=> d!1674560 (=> res!2201080 e!3227910)))

(declare-fun lt!2135539 () Bool)

(assert (=> d!1674560 (= res!2201080 (not lt!2135539))))

(assert (=> d!1674560 (= lt!2135539 e!3227909)))

(declare-fun res!2201077 () Bool)

(assert (=> d!1674560 (=> res!2201077 e!3227909)))

(assert (=> d!1674560 (= res!2201077 ((_ is Nil!60176) testedP!294))))

(assert (=> d!1674560 (= (isPrefix!5794 testedP!294 (++!13177 testedP!294 lt!2134946)) lt!2135539)))

(assert (= (and d!1674560 (not res!2201077)) b!5180760))

(assert (= (and b!5180760 res!2201078) b!5180761))

(assert (= (and b!5180761 res!2201079) b!5180762))

(assert (= (and d!1674560 (not res!2201080)) b!5180763))

(assert (=> b!5180761 m!6238846))

(assert (=> b!5180761 m!6238630))

(declare-fun m!6239856 () Bool)

(assert (=> b!5180761 m!6239856))

(assert (=> b!5180763 m!6238630))

(declare-fun m!6239858 () Bool)

(assert (=> b!5180763 m!6239858))

(assert (=> b!5180763 m!6238542))

(assert (=> b!5180762 m!6238848))

(assert (=> b!5180762 m!6238630))

(declare-fun m!6239860 () Bool)

(assert (=> b!5180762 m!6239860))

(assert (=> b!5180762 m!6238848))

(assert (=> b!5180762 m!6239860))

(declare-fun m!6239862 () Bool)

(assert (=> b!5180762 m!6239862))

(assert (=> d!1674150 d!1674560))

(assert (=> d!1674150 d!1674148))

(declare-fun b!5180765 () Bool)

(declare-fun e!3227912 () List!60300)

(assert (=> b!5180765 (= e!3227912 (Cons!60176 (h!66624 (_1!35239 lt!2135034)) (++!13177 (t!373453 (_1!35239 lt!2135034)) (_2!35239 lt!2135034))))))

(declare-fun b!5180764 () Bool)

(assert (=> b!5180764 (= e!3227912 (_2!35239 lt!2135034))))

(declare-fun b!5180766 () Bool)

(declare-fun res!2201081 () Bool)

(declare-fun e!3227911 () Bool)

(assert (=> b!5180766 (=> (not res!2201081) (not e!3227911))))

(declare-fun lt!2135541 () List!60300)

(assert (=> b!5180766 (= res!2201081 (= (size!39697 lt!2135541) (+ (size!39697 (_1!35239 lt!2135034)) (size!39697 (_2!35239 lt!2135034)))))))

(declare-fun b!5180767 () Bool)

(assert (=> b!5180767 (= e!3227911 (or (not (= (_2!35239 lt!2135034) Nil!60176)) (= lt!2135541 (_1!35239 lt!2135034))))))

(declare-fun d!1674562 () Bool)

(assert (=> d!1674562 e!3227911))

(declare-fun res!2201082 () Bool)

(assert (=> d!1674562 (=> (not res!2201082) (not e!3227911))))

(assert (=> d!1674562 (= res!2201082 (= (content!10669 lt!2135541) ((_ map or) (content!10669 (_1!35239 lt!2135034)) (content!10669 (_2!35239 lt!2135034)))))))

(assert (=> d!1674562 (= lt!2135541 e!3227912)))

(declare-fun c!892816 () Bool)

(assert (=> d!1674562 (= c!892816 ((_ is Nil!60176) (_1!35239 lt!2135034)))))

(assert (=> d!1674562 (= (++!13177 (_1!35239 lt!2135034) (_2!35239 lt!2135034)) lt!2135541)))

(assert (= (and d!1674562 c!892816) b!5180764))

(assert (= (and d!1674562 (not c!892816)) b!5180765))

(assert (= (and d!1674562 res!2201082) b!5180766))

(assert (= (and b!5180766 res!2201081) b!5180767))

(declare-fun m!6239870 () Bool)

(assert (=> b!5180765 m!6239870))

(declare-fun m!6239872 () Bool)

(assert (=> b!5180766 m!6239872))

(assert (=> b!5180766 m!6238662))

(declare-fun m!6239876 () Bool)

(assert (=> b!5180766 m!6239876))

(declare-fun m!6239878 () Bool)

(assert (=> d!1674562 m!6239878))

(declare-fun m!6239880 () Bool)

(assert (=> d!1674562 m!6239880))

(declare-fun m!6239882 () Bool)

(assert (=> d!1674562 m!6239882))

(assert (=> d!1674150 d!1674562))

(declare-fun d!1674566 () Bool)

(assert (=> d!1674566 (isPrefix!5794 testedP!294 (++!13177 testedP!294 lt!2134946))))

(declare-fun lt!2135542 () Unit!152123)

(assert (=> d!1674566 (= lt!2135542 (choose!38497 testedP!294 lt!2134946))))

(assert (=> d!1674566 (= (lemmaConcatTwoListThenFirstIsPrefix!3609 testedP!294 lt!2134946) lt!2135542)))

(declare-fun bs!1206898 () Bool)

(assert (= bs!1206898 d!1674566))

(assert (=> bs!1206898 m!6238630))

(assert (=> bs!1206898 m!6238630))

(assert (=> bs!1206898 m!6238632))

(declare-fun m!6239884 () Bool)

(assert (=> bs!1206898 m!6239884))

(assert (=> d!1674150 d!1674566))

(declare-fun b!5180772 () Bool)

(declare-fun e!3227917 () List!60300)

(assert (=> b!5180772 (= e!3227917 (Cons!60176 (h!66624 testedP!294) (++!13177 (t!373453 testedP!294) lt!2134946)))))

(declare-fun b!5180771 () Bool)

(assert (=> b!5180771 (= e!3227917 lt!2134946)))

(declare-fun b!5180773 () Bool)

(declare-fun res!2201085 () Bool)

(declare-fun e!3227916 () Bool)

(assert (=> b!5180773 (=> (not res!2201085) (not e!3227916))))

(declare-fun lt!2135543 () List!60300)

(assert (=> b!5180773 (= res!2201085 (= (size!39697 lt!2135543) (+ (size!39697 testedP!294) (size!39697 lt!2134946))))))

(declare-fun b!5180774 () Bool)

(assert (=> b!5180774 (= e!3227916 (or (not (= lt!2134946 Nil!60176)) (= lt!2135543 testedP!294)))))

(declare-fun d!1674568 () Bool)

(assert (=> d!1674568 e!3227916))

(declare-fun res!2201086 () Bool)

(assert (=> d!1674568 (=> (not res!2201086) (not e!3227916))))

(assert (=> d!1674568 (= res!2201086 (= (content!10669 lt!2135543) ((_ map or) (content!10669 testedP!294) (content!10669 lt!2134946))))))

(assert (=> d!1674568 (= lt!2135543 e!3227917)))

(declare-fun c!892817 () Bool)

(assert (=> d!1674568 (= c!892817 ((_ is Nil!60176) testedP!294))))

(assert (=> d!1674568 (= (++!13177 testedP!294 lt!2134946) lt!2135543)))

(assert (= (and d!1674568 c!892817) b!5180771))

(assert (= (and d!1674568 (not c!892817)) b!5180772))

(assert (= (and d!1674568 res!2201086) b!5180773))

(assert (= (and b!5180773 res!2201085) b!5180774))

(declare-fun m!6239886 () Bool)

(assert (=> b!5180772 m!6239886))

(declare-fun m!6239888 () Bool)

(assert (=> b!5180773 m!6239888))

(assert (=> b!5180773 m!6238542))

(declare-fun m!6239890 () Bool)

(assert (=> b!5180773 m!6239890))

(declare-fun m!6239892 () Bool)

(assert (=> d!1674568 m!6239892))

(assert (=> d!1674568 m!6238674))

(declare-fun m!6239894 () Bool)

(assert (=> d!1674568 m!6239894))

(assert (=> d!1674150 d!1674568))

(assert (=> bm!364042 d!1674516))

(assert (=> bm!364085 d!1674126))

(assert (=> b!5180395 d!1674538))

(declare-fun d!1674570 () Bool)

(declare-fun c!892818 () Bool)

(assert (=> d!1674570 (= c!892818 ((_ is Cons!60176) (t!373453 testedP!294)))))

(declare-fun e!3227920 () (InoxSet Context!8090))

(assert (=> d!1674570 (= (derivationZipper!284 (derivationStepZipper!1007 baseZ!62 (h!66624 testedP!294)) (t!373453 testedP!294)) e!3227920)))

(declare-fun b!5180785 () Bool)

(assert (=> b!5180785 (= e!3227920 (derivationZipper!284 (derivationStepZipper!1007 (derivationStepZipper!1007 baseZ!62 (h!66624 testedP!294)) (h!66624 (t!373453 testedP!294))) (t!373453 (t!373453 testedP!294))))))

(declare-fun b!5180786 () Bool)

(assert (=> b!5180786 (= e!3227920 (derivationStepZipper!1007 baseZ!62 (h!66624 testedP!294)))))

(assert (= (and d!1674570 c!892818) b!5180785))

(assert (= (and d!1674570 (not c!892818)) b!5180786))

(assert (=> b!5180785 m!6238606))

(declare-fun m!6239896 () Bool)

(assert (=> b!5180785 m!6239896))

(assert (=> b!5180785 m!6239896))

(declare-fun m!6239898 () Bool)

(assert (=> b!5180785 m!6239898))

(assert (=> b!5180166 d!1674570))

(declare-fun bs!1206899 () Bool)

(declare-fun d!1674572 () Bool)

(assert (= bs!1206899 (and d!1674572 d!1674376)))

(declare-fun lambda!258937 () Int)

(assert (=> bs!1206899 (= (= (h!66624 testedP!294) (head!11079 (_1!35239 lt!2134953))) (= lambda!258937 lambda!258908))))

(declare-fun bs!1206900 () Bool)

(assert (= bs!1206900 (and d!1674572 d!1674430)))

(assert (=> bs!1206900 (= (= (h!66624 testedP!294) (head!11079 (_1!35239 lt!2134956))) (= lambda!258937 lambda!258912))))

(declare-fun bs!1206901 () Bool)

(assert (= bs!1206901 (and d!1674572 d!1674436)))

(assert (=> bs!1206901 (= (= (h!66624 testedP!294) call!364050) (= lambda!258937 lambda!258913))))

(declare-fun bs!1206902 () Bool)

(assert (= bs!1206902 (and d!1674572 d!1674362)))

(assert (=> bs!1206902 (= (= (h!66624 testedP!294) call!364090) (= lambda!258937 lambda!258907))))

(declare-fun bs!1206903 () Bool)

(assert (= bs!1206903 (and d!1674572 d!1674228)))

(assert (=> bs!1206903 (= (= (h!66624 testedP!294) lt!2134944) (= lambda!258937 lambda!258882))))

(assert (=> d!1674572 true))

(assert (=> d!1674572 (= (derivationStepZipper!1007 baseZ!62 (h!66624 testedP!294)) (flatMap!464 baseZ!62 lambda!258937))))

(declare-fun bs!1206904 () Bool)

(assert (= bs!1206904 d!1674572))

(declare-fun m!6239900 () Bool)

(assert (=> bs!1206904 m!6239900))

(assert (=> b!5180166 d!1674572))

(declare-fun d!1674574 () Bool)

(assert (=> d!1674574 (= (isEmpty!32219 (_1!35239 lt!2135034)) ((_ is Nil!60176) (_1!35239 lt!2135034)))))

(assert (=> b!5180219 d!1674574))

(declare-fun d!1674576 () Bool)

(declare-fun lt!2135544 () Int)

(assert (=> d!1674576 (>= lt!2135544 0)))

(declare-fun e!3227925 () Int)

(assert (=> d!1674576 (= lt!2135544 e!3227925)))

(declare-fun c!892819 () Bool)

(assert (=> d!1674576 (= c!892819 ((_ is Nil!60176) (_1!35239 lt!2135206)))))

(assert (=> d!1674576 (= (size!39697 (_1!35239 lt!2135206)) lt!2135544)))

(declare-fun b!5180797 () Bool)

(assert (=> b!5180797 (= e!3227925 0)))

(declare-fun b!5180798 () Bool)

(assert (=> b!5180798 (= e!3227925 (+ 1 (size!39697 (t!373453 (_1!35239 lt!2135206)))))))

(assert (= (and d!1674576 c!892819) b!5180797))

(assert (= (and d!1674576 (not c!892819)) b!5180798))

(declare-fun m!6239902 () Bool)

(assert (=> b!5180798 m!6239902))

(assert (=> b!5180380 d!1674576))

(assert (=> b!5180380 d!1674218))

(declare-fun d!1674578 () Bool)

(declare-fun lt!2135547 () Bool)

(assert (=> d!1674578 (= lt!2135547 (exists!1949 (toList!8462 z!4581) lambda!258876))))

(declare-fun choose!38505 ((InoxSet Context!8090) Int) Bool)

(assert (=> d!1674578 (= lt!2135547 (choose!38505 z!4581 lambda!258876))))

(assert (=> d!1674578 (= (exists!1947 z!4581 lambda!258876) lt!2135547)))

(declare-fun bs!1206907 () Bool)

(assert (= bs!1206907 d!1674578))

(assert (=> bs!1206907 m!6239854))

(assert (=> bs!1206907 m!6239854))

(declare-fun m!6239912 () Bool)

(assert (=> bs!1206907 m!6239912))

(declare-fun m!6239914 () Bool)

(assert (=> bs!1206907 m!6239914))

(assert (=> d!1674160 d!1674578))

(declare-fun b!5180805 () Bool)

(declare-fun res!2201089 () Bool)

(declare-fun e!3227931 () Bool)

(assert (=> b!5180805 (=> (not res!2201089) (not e!3227931))))

(assert (=> b!5180805 (= res!2201089 (= (head!11079 (tail!10178 lt!2134949)) (head!11079 (tail!10178 input!5817))))))

(declare-fun b!5180807 () Bool)

(declare-fun e!3227933 () Bool)

(assert (=> b!5180807 (= e!3227933 (>= (size!39697 (tail!10178 input!5817)) (size!39697 (tail!10178 lt!2134949))))))

(declare-fun b!5180804 () Bool)

(declare-fun e!3227932 () Bool)

(assert (=> b!5180804 (= e!3227932 e!3227931)))

(declare-fun res!2201088 () Bool)

(assert (=> b!5180804 (=> (not res!2201088) (not e!3227931))))

(assert (=> b!5180804 (= res!2201088 (not ((_ is Nil!60176) (tail!10178 input!5817))))))

(declare-fun b!5180806 () Bool)

(assert (=> b!5180806 (= e!3227931 (isPrefix!5794 (tail!10178 (tail!10178 lt!2134949)) (tail!10178 (tail!10178 input!5817))))))

(declare-fun d!1674584 () Bool)

(assert (=> d!1674584 e!3227933))

(declare-fun res!2201090 () Bool)

(assert (=> d!1674584 (=> res!2201090 e!3227933)))

(declare-fun lt!2135548 () Bool)

(assert (=> d!1674584 (= res!2201090 (not lt!2135548))))

(assert (=> d!1674584 (= lt!2135548 e!3227932)))

(declare-fun res!2201087 () Bool)

(assert (=> d!1674584 (=> res!2201087 e!3227932)))

(assert (=> d!1674584 (= res!2201087 ((_ is Nil!60176) (tail!10178 lt!2134949)))))

(assert (=> d!1674584 (= (isPrefix!5794 (tail!10178 lt!2134949) (tail!10178 input!5817)) lt!2135548)))

(assert (= (and d!1674584 (not res!2201087)) b!5180804))

(assert (= (and b!5180804 res!2201088) b!5180805))

(assert (= (and b!5180805 res!2201089) b!5180806))

(assert (= (and d!1674584 (not res!2201090)) b!5180807))

(assert (=> b!5180805 m!6238842))

(declare-fun m!6239916 () Bool)

(assert (=> b!5180805 m!6239916))

(assert (=> b!5180805 m!6238588))

(assert (=> b!5180805 m!6239828))

(assert (=> b!5180807 m!6238588))

(assert (=> b!5180807 m!6239444))

(assert (=> b!5180807 m!6238842))

(declare-fun m!6239918 () Bool)

(assert (=> b!5180807 m!6239918))

(assert (=> b!5180806 m!6238842))

(declare-fun m!6239920 () Bool)

(assert (=> b!5180806 m!6239920))

(assert (=> b!5180806 m!6238588))

(assert (=> b!5180806 m!6239446))

(assert (=> b!5180806 m!6239920))

(assert (=> b!5180806 m!6239446))

(declare-fun m!6239922 () Bool)

(assert (=> b!5180806 m!6239922))

(assert (=> b!5180365 d!1674584))

(declare-fun d!1674586 () Bool)

(assert (=> d!1674586 (= (tail!10178 lt!2134949) (t!373453 lt!2134949))))

(assert (=> b!5180365 d!1674586))

(assert (=> b!5180365 d!1674408))

(assert (=> d!1674126 d!1674128))

(declare-fun d!1674588 () Bool)

(assert (=> d!1674588 (isPrefix!5794 input!5817 input!5817)))

(assert (=> d!1674588 true))

(declare-fun _$45!2377 () Unit!152123)

(assert (=> d!1674588 (= (choose!38489 input!5817 input!5817) _$45!2377)))

(declare-fun bs!1206908 () Bool)

(assert (= bs!1206908 d!1674588))

(assert (=> bs!1206908 m!6238556))

(assert (=> d!1674126 d!1674588))

(declare-fun bs!1206909 () Bool)

(declare-fun d!1674590 () Bool)

(assert (= bs!1206909 (and d!1674590 d!1674160)))

(declare-fun lambda!258938 () Int)

(assert (=> bs!1206909 (= lambda!258938 lambda!258876)))

(declare-fun bs!1206910 () Bool)

(assert (= bs!1206910 (and d!1674590 b!5180507)))

(assert (=> bs!1206910 (not (= lambda!258938 lambda!258903))))

(declare-fun bs!1206911 () Bool)

(assert (= bs!1206911 (and d!1674590 b!5180506)))

(assert (=> bs!1206911 (not (= lambda!258938 lambda!258902))))

(declare-fun bs!1206912 () Bool)

(assert (= bs!1206912 (and d!1674590 b!5180758)))

(assert (=> bs!1206912 (not (= lambda!258938 lambda!258935))))

(declare-fun bs!1206913 () Bool)

(assert (= bs!1206913 (and d!1674590 d!1674556)))

(assert (=> bs!1206913 (not (= lambda!258938 lambda!258934))))

(declare-fun bs!1206914 () Bool)

(assert (= bs!1206914 (and d!1674590 b!5180759)))

(assert (=> bs!1206914 (not (= lambda!258938 lambda!258936))))

(declare-fun bs!1206915 () Bool)

(assert (= bs!1206915 (and d!1674590 d!1674274)))

(assert (=> bs!1206915 (not (= lambda!258938 lambda!258901))))

(declare-fun bs!1206916 () Bool)

(assert (= bs!1206916 (and d!1674590 d!1674538)))

(assert (=> bs!1206916 (= lambda!258938 lambda!258933)))

(assert (=> d!1674590 (= (nullableZipper!1199 lt!2134952) (exists!1947 lt!2134952 lambda!258938))))

(declare-fun bs!1206917 () Bool)

(assert (= bs!1206917 d!1674590))

(declare-fun m!6239924 () Bool)

(assert (=> bs!1206917 m!6239924))

(assert (=> bm!364081 d!1674590))

(declare-fun d!1674592 () Bool)

(assert (=> d!1674592 (= (isEmpty!32219 (_1!35239 lt!2135045)) ((_ is Nil!60176) (_1!35239 lt!2135045)))))

(assert (=> b!5180226 d!1674592))

(assert (=> d!1674212 d!1674152))

(assert (=> d!1674212 d!1674142))

(declare-fun d!1674594 () Bool)

(assert (=> d!1674594 (<= (size!39697 testedP!294) (size!39697 input!5817))))

(assert (=> d!1674594 true))

(declare-fun _$64!731 () Unit!152123)

(assert (=> d!1674594 (= (choose!38494 testedP!294 input!5817) _$64!731)))

(declare-fun bs!1206918 () Bool)

(assert (= bs!1206918 d!1674594))

(assert (=> bs!1206918 m!6238542))

(assert (=> bs!1206918 m!6238548))

(assert (=> d!1674212 d!1674594))

(assert (=> d!1674212 d!1674210))

(declare-fun d!1674596 () Bool)

(declare-fun lt!2135549 () Int)

(assert (=> d!1674596 (>= lt!2135549 0)))

(declare-fun e!3227934 () Int)

(assert (=> d!1674596 (= lt!2135549 e!3227934)))

(declare-fun c!892820 () Bool)

(assert (=> d!1674596 (= c!892820 ((_ is Nil!60176) (_1!35239 lt!2135034)))))

(assert (=> d!1674596 (= (size!39697 (_1!35239 lt!2135034)) lt!2135549)))

(declare-fun b!5180808 () Bool)

(assert (=> b!5180808 (= e!3227934 0)))

(declare-fun b!5180809 () Bool)

(assert (=> b!5180809 (= e!3227934 (+ 1 (size!39697 (t!373453 (_1!35239 lt!2135034)))))))

(assert (= (and d!1674596 c!892820) b!5180808))

(assert (= (and d!1674596 (not c!892820)) b!5180809))

(declare-fun m!6239926 () Bool)

(assert (=> b!5180809 m!6239926))

(assert (=> b!5180215 d!1674596))

(assert (=> b!5180215 d!1674152))

(declare-fun d!1674598 () Bool)

(declare-fun lt!2135550 () Int)

(assert (=> d!1674598 (>= lt!2135550 0)))

(declare-fun e!3227935 () Int)

(assert (=> d!1674598 (= lt!2135550 e!3227935)))

(declare-fun c!892821 () Bool)

(assert (=> d!1674598 (= c!892821 ((_ is Nil!60176) lt!2135061))))

(assert (=> d!1674598 (= (size!39697 lt!2135061) lt!2135550)))

(declare-fun b!5180810 () Bool)

(assert (=> b!5180810 (= e!3227935 0)))

(declare-fun b!5180811 () Bool)

(assert (=> b!5180811 (= e!3227935 (+ 1 (size!39697 (t!373453 lt!2135061))))))

(assert (= (and d!1674598 c!892821) b!5180810))

(assert (= (and d!1674598 (not c!892821)) b!5180811))

(declare-fun m!6239928 () Bool)

(assert (=> b!5180811 m!6239928))

(assert (=> b!5180240 d!1674598))

(assert (=> b!5180240 d!1674152))

(declare-fun d!1674600 () Bool)

(declare-fun lt!2135551 () Int)

(assert (=> d!1674600 (>= lt!2135551 0)))

(declare-fun e!3227936 () Int)

(assert (=> d!1674600 (= lt!2135551 e!3227936)))

(declare-fun c!892822 () Bool)

(assert (=> d!1674600 (= c!892822 ((_ is Nil!60176) (Cons!60176 lt!2134944 Nil!60176)))))

(assert (=> d!1674600 (= (size!39697 (Cons!60176 lt!2134944 Nil!60176)) lt!2135551)))

(declare-fun b!5180812 () Bool)

(assert (=> b!5180812 (= e!3227936 0)))

(declare-fun b!5180813 () Bool)

(assert (=> b!5180813 (= e!3227936 (+ 1 (size!39697 (t!373453 (Cons!60176 lt!2134944 Nil!60176)))))))

(assert (= (and d!1674600 c!892822) b!5180812))

(assert (= (and d!1674600 (not c!892822)) b!5180813))

(declare-fun m!6239930 () Bool)

(assert (=> b!5180813 m!6239930))

(assert (=> b!5180240 d!1674600))

(declare-fun d!1674602 () Bool)

(declare-fun c!892823 () Bool)

(assert (=> d!1674602 (= c!892823 ((_ is Cons!60176) (t!373453 lt!2134949)))))

(declare-fun e!3227937 () (InoxSet Context!8090))

(assert (=> d!1674602 (= (derivationZipper!284 (derivationStepZipper!1007 baseZ!62 (h!66624 lt!2134949)) (t!373453 lt!2134949)) e!3227937)))

(declare-fun b!5180814 () Bool)

(assert (=> b!5180814 (= e!3227937 (derivationZipper!284 (derivationStepZipper!1007 (derivationStepZipper!1007 baseZ!62 (h!66624 lt!2134949)) (h!66624 (t!373453 lt!2134949))) (t!373453 (t!373453 lt!2134949))))))

(declare-fun b!5180815 () Bool)

(assert (=> b!5180815 (= e!3227937 (derivationStepZipper!1007 baseZ!62 (h!66624 lt!2134949)))))

(assert (= (and d!1674602 c!892823) b!5180814))

(assert (= (and d!1674602 (not c!892823)) b!5180815))

(assert (=> b!5180814 m!6238912))

(declare-fun m!6239932 () Bool)

(assert (=> b!5180814 m!6239932))

(assert (=> b!5180814 m!6239932))

(declare-fun m!6239934 () Bool)

(assert (=> b!5180814 m!6239934))

(assert (=> b!5180393 d!1674602))

(declare-fun bs!1206919 () Bool)

(declare-fun d!1674604 () Bool)

(assert (= bs!1206919 (and d!1674604 d!1674376)))

(declare-fun lambda!258939 () Int)

(assert (=> bs!1206919 (= (= (h!66624 lt!2134949) (head!11079 (_1!35239 lt!2134953))) (= lambda!258939 lambda!258908))))

(declare-fun bs!1206920 () Bool)

(assert (= bs!1206920 (and d!1674604 d!1674430)))

(assert (=> bs!1206920 (= (= (h!66624 lt!2134949) (head!11079 (_1!35239 lt!2134956))) (= lambda!258939 lambda!258912))))

(declare-fun bs!1206921 () Bool)

(assert (= bs!1206921 (and d!1674604 d!1674436)))

(assert (=> bs!1206921 (= (= (h!66624 lt!2134949) call!364050) (= lambda!258939 lambda!258913))))

(declare-fun bs!1206922 () Bool)

(assert (= bs!1206922 (and d!1674604 d!1674362)))

(assert (=> bs!1206922 (= (= (h!66624 lt!2134949) call!364090) (= lambda!258939 lambda!258907))))

(declare-fun bs!1206923 () Bool)

(assert (= bs!1206923 (and d!1674604 d!1674228)))

(assert (=> bs!1206923 (= (= (h!66624 lt!2134949) lt!2134944) (= lambda!258939 lambda!258882))))

(declare-fun bs!1206924 () Bool)

(assert (= bs!1206924 (and d!1674604 d!1674572)))

(assert (=> bs!1206924 (= (= (h!66624 lt!2134949) (h!66624 testedP!294)) (= lambda!258939 lambda!258937))))

(assert (=> d!1674604 true))

(assert (=> d!1674604 (= (derivationStepZipper!1007 baseZ!62 (h!66624 lt!2134949)) (flatMap!464 baseZ!62 lambda!258939))))

(declare-fun bs!1206925 () Bool)

(assert (= bs!1206925 d!1674604))

(declare-fun m!6239936 () Bool)

(assert (=> bs!1206925 m!6239936))

(assert (=> b!5180393 d!1674604))

(declare-fun d!1674606 () Bool)

(declare-fun lt!2135552 () Int)

(assert (=> d!1674606 (>= lt!2135552 0)))

(declare-fun e!3227938 () Int)

(assert (=> d!1674606 (= lt!2135552 e!3227938)))

(declare-fun c!892824 () Bool)

(assert (=> d!1674606 (= c!892824 ((_ is Nil!60176) (t!373453 testedP!294)))))

(assert (=> d!1674606 (= (size!39697 (t!373453 testedP!294)) lt!2135552)))

(declare-fun b!5180816 () Bool)

(assert (=> b!5180816 (= e!3227938 0)))

(declare-fun b!5180817 () Bool)

(assert (=> b!5180817 (= e!3227938 (+ 1 (size!39697 (t!373453 (t!373453 testedP!294)))))))

(assert (= (and d!1674606 c!892824) b!5180816))

(assert (= (and d!1674606 (not c!892824)) b!5180817))

(declare-fun m!6239938 () Bool)

(assert (=> b!5180817 m!6239938))

(assert (=> b!5180229 d!1674606))

(declare-fun d!1674608 () Bool)

(assert (=> d!1674608 (= (isEmpty!32219 (_1!35239 lt!2135206)) ((_ is Nil!60176) (_1!35239 lt!2135206)))))

(assert (=> b!5180384 d!1674608))

(declare-fun condSetEmpty!32413 () Bool)

(assert (=> setNonEmpty!32409 (= condSetEmpty!32413 (= setRest!32409 ((as const (Array Context!8090 Bool)) false)))))

(declare-fun setRes!32413 () Bool)

(assert (=> setNonEmpty!32409 (= tp!1452897 setRes!32413)))

(declare-fun setIsEmpty!32413 () Bool)

(assert (=> setIsEmpty!32413 setRes!32413))

(declare-fun tp!1452938 () Bool)

(declare-fun e!3227939 () Bool)

(declare-fun setElem!32413 () Context!8090)

(declare-fun setNonEmpty!32413 () Bool)

(assert (=> setNonEmpty!32413 (= setRes!32413 (and tp!1452938 (inv!79899 setElem!32413) e!3227939))))

(declare-fun setRest!32413 () (InoxSet Context!8090))

(assert (=> setNonEmpty!32413 (= setRest!32409 ((_ map or) (store ((as const (Array Context!8090 Bool)) false) setElem!32413 true) setRest!32413))))

(declare-fun b!5180818 () Bool)

(declare-fun tp!1452939 () Bool)

(assert (=> b!5180818 (= e!3227939 tp!1452939)))

(assert (= (and setNonEmpty!32409 condSetEmpty!32413) setIsEmpty!32413))

(assert (= (and setNonEmpty!32409 (not condSetEmpty!32413)) setNonEmpty!32413))

(assert (= setNonEmpty!32413 b!5180818))

(declare-fun m!6239940 () Bool)

(assert (=> setNonEmpty!32413 m!6239940))

(declare-fun b!5180830 () Bool)

(declare-fun e!3227942 () Bool)

(declare-fun tp!1452951 () Bool)

(declare-fun tp!1452954 () Bool)

(assert (=> b!5180830 (= e!3227942 (and tp!1452951 tp!1452954))))

(declare-fun b!5180831 () Bool)

(declare-fun tp!1452950 () Bool)

(assert (=> b!5180831 (= e!3227942 tp!1452950)))

(declare-fun b!5180832 () Bool)

(declare-fun tp!1452953 () Bool)

(declare-fun tp!1452952 () Bool)

(assert (=> b!5180832 (= e!3227942 (and tp!1452953 tp!1452952))))

(assert (=> b!5180420 (= tp!1452900 e!3227942)))

(declare-fun b!5180829 () Bool)

(assert (=> b!5180829 (= e!3227942 tp_is_empty!38575)))

(assert (= (and b!5180420 ((_ is ElementMatch!14661) (h!66623 (exprs!4545 setElem!32401)))) b!5180829))

(assert (= (and b!5180420 ((_ is Concat!23506) (h!66623 (exprs!4545 setElem!32401)))) b!5180830))

(assert (= (and b!5180420 ((_ is Star!14661) (h!66623 (exprs!4545 setElem!32401)))) b!5180831))

(assert (= (and b!5180420 ((_ is Union!14661) (h!66623 (exprs!4545 setElem!32401)))) b!5180832))

(declare-fun b!5180833 () Bool)

(declare-fun e!3227943 () Bool)

(declare-fun tp!1452955 () Bool)

(declare-fun tp!1452956 () Bool)

(assert (=> b!5180833 (= e!3227943 (and tp!1452955 tp!1452956))))

(assert (=> b!5180420 (= tp!1452901 e!3227943)))

(assert (= (and b!5180420 ((_ is Cons!60175) (t!373452 (exprs!4545 setElem!32401)))) b!5180833))

(declare-fun b!5180834 () Bool)

(declare-fun e!3227944 () Bool)

(declare-fun tp!1452957 () Bool)

(declare-fun tp!1452958 () Bool)

(assert (=> b!5180834 (= e!3227944 (and tp!1452957 tp!1452958))))

(assert (=> b!5180421 (= tp!1452903 e!3227944)))

(assert (= (and b!5180421 ((_ is Cons!60175) (exprs!4545 setElem!32410))) b!5180834))

(declare-fun b!5180836 () Bool)

(declare-fun e!3227945 () Bool)

(declare-fun tp!1452960 () Bool)

(declare-fun tp!1452963 () Bool)

(assert (=> b!5180836 (= e!3227945 (and tp!1452960 tp!1452963))))

(declare-fun b!5180837 () Bool)

(declare-fun tp!1452959 () Bool)

(assert (=> b!5180837 (= e!3227945 tp!1452959)))

(declare-fun b!5180838 () Bool)

(declare-fun tp!1452962 () Bool)

(declare-fun tp!1452961 () Bool)

(assert (=> b!5180838 (= e!3227945 (and tp!1452962 tp!1452961))))

(assert (=> b!5180408 (= tp!1452888 e!3227945)))

(declare-fun b!5180835 () Bool)

(assert (=> b!5180835 (= e!3227945 tp_is_empty!38575)))

(assert (= (and b!5180408 ((_ is ElementMatch!14661) (h!66623 (exprs!4545 setElem!32402)))) b!5180835))

(assert (= (and b!5180408 ((_ is Concat!23506) (h!66623 (exprs!4545 setElem!32402)))) b!5180836))

(assert (= (and b!5180408 ((_ is Star!14661) (h!66623 (exprs!4545 setElem!32402)))) b!5180837))

(assert (= (and b!5180408 ((_ is Union!14661) (h!66623 (exprs!4545 setElem!32402)))) b!5180838))

(declare-fun b!5180839 () Bool)

(declare-fun e!3227946 () Bool)

(declare-fun tp!1452964 () Bool)

(declare-fun tp!1452965 () Bool)

(assert (=> b!5180839 (= e!3227946 (and tp!1452964 tp!1452965))))

(assert (=> b!5180408 (= tp!1452889 e!3227946)))

(assert (= (and b!5180408 ((_ is Cons!60175) (t!373452 (exprs!4545 setElem!32402)))) b!5180839))

(declare-fun condSetEmpty!32414 () Bool)

(assert (=> setNonEmpty!32410 (= condSetEmpty!32414 (= setRest!32410 ((as const (Array Context!8090 Bool)) false)))))

(declare-fun setRes!32414 () Bool)

(assert (=> setNonEmpty!32410 (= tp!1452902 setRes!32414)))

(declare-fun setIsEmpty!32414 () Bool)

(assert (=> setIsEmpty!32414 setRes!32414))

(declare-fun e!3227947 () Bool)

(declare-fun setNonEmpty!32414 () Bool)

(declare-fun tp!1452966 () Bool)

(declare-fun setElem!32414 () Context!8090)

(assert (=> setNonEmpty!32414 (= setRes!32414 (and tp!1452966 (inv!79899 setElem!32414) e!3227947))))

(declare-fun setRest!32414 () (InoxSet Context!8090))

(assert (=> setNonEmpty!32414 (= setRest!32410 ((_ map or) (store ((as const (Array Context!8090 Bool)) false) setElem!32414 true) setRest!32414))))

(declare-fun b!5180840 () Bool)

(declare-fun tp!1452967 () Bool)

(assert (=> b!5180840 (= e!3227947 tp!1452967)))

(assert (= (and setNonEmpty!32410 condSetEmpty!32414) setIsEmpty!32414))

(assert (= (and setNonEmpty!32410 (not condSetEmpty!32414)) setNonEmpty!32414))

(assert (= setNonEmpty!32414 b!5180840))

(declare-fun m!6239942 () Bool)

(assert (=> setNonEmpty!32414 m!6239942))

(declare-fun b!5180841 () Bool)

(declare-fun e!3227948 () Bool)

(declare-fun tp!1452968 () Bool)

(assert (=> b!5180841 (= e!3227948 (and tp_is_empty!38575 tp!1452968))))

(assert (=> b!5180413 (= tp!1452892 e!3227948)))

(assert (= (and b!5180413 ((_ is Cons!60176) (t!373453 (t!373453 input!5817)))) b!5180841))

(declare-fun b!5180842 () Bool)

(declare-fun e!3227949 () Bool)

(declare-fun tp!1452969 () Bool)

(declare-fun tp!1452970 () Bool)

(assert (=> b!5180842 (= e!3227949 (and tp!1452969 tp!1452970))))

(assert (=> b!5180418 (= tp!1452898 e!3227949)))

(assert (= (and b!5180418 ((_ is Cons!60175) (exprs!4545 setElem!32409))) b!5180842))

(declare-fun b!5180843 () Bool)

(declare-fun e!3227950 () Bool)

(declare-fun tp!1452971 () Bool)

(assert (=> b!5180843 (= e!3227950 (and tp_is_empty!38575 tp!1452971))))

(assert (=> b!5180419 (= tp!1452899 e!3227950)))

(assert (= (and b!5180419 ((_ is Cons!60176) (t!373453 (t!373453 testedP!294)))) b!5180843))

(declare-fun b_lambda!201085 () Bool)

(assert (= b_lambda!201075 (or d!1674236 b_lambda!201085)))

(declare-fun bs!1206926 () Bool)

(declare-fun d!1674610 () Bool)

(assert (= bs!1206926 (and d!1674610 d!1674236)))

(declare-fun validRegex!6411 (Regex!14661) Bool)

(assert (=> bs!1206926 (= (dynLambda!23888 lambda!258883 (h!66623 (exprs!4545 setElem!32402))) (validRegex!6411 (h!66623 (exprs!4545 setElem!32402))))))

(declare-fun m!6239944 () Bool)

(assert (=> bs!1206926 m!6239944))

(assert (=> b!5180576 d!1674610))

(declare-fun b_lambda!201087 () Bool)

(assert (= b_lambda!201077 (or d!1674214 b_lambda!201087)))

(declare-fun bs!1206927 () Bool)

(declare-fun d!1674612 () Bool)

(assert (= bs!1206927 (and d!1674612 d!1674214)))

(assert (=> bs!1206927 (= (dynLambda!23888 lambda!258879 (h!66623 (exprs!4545 setElem!32401))) (validRegex!6411 (h!66623 (exprs!4545 setElem!32401))))))

(declare-fun m!6239946 () Bool)

(assert (=> bs!1206927 m!6239946))

(assert (=> b!5180592 d!1674612))

(check-sat (not b!5180583) (not b!5180731) (not d!1674448) (not d!1674334) (not d!1674590) (not b!5180579) (not bm!364140) (not b!5180805) (not b!5180551) (not bm!364120) (not bs!1206926) (not b!5180626) (not bm!364129) (not bm!364121) (not b!5180705) (not b!5180563) (not b!5180833) (not b!5180713) (not b!5180836) (not b!5180766) (not bm!364118) (not b!5180529) (not bm!364127) (not b!5180650) (not bm!364139) (not b!5180751) (not b!5180506) (not b!5180556) (not b!5180806) (not b!5180739) (not b!5180707) (not bm!364124) (not d!1674522) (not d!1674376) (not b!5180652) (not b!5180831) (not b!5180840) (not b!5180646) (not b!5180765) (not b!5180732) (not setNonEmpty!32413) (not d!1674588) (not b!5180590) (not b!5180756) (not bm!364108) (not setNonEmpty!32414) (not b!5180752) (not b!5180647) (not bm!364128) (not bm!364117) (not b!5180757) (not b!5180628) (not b!5180658) (not b!5180814) (not d!1674524) (not b!5180597) (not b!5180761) (not b!5180661) (not b!5180728) (not d!1674356) (not b!5180476) (not d!1674578) (not b!5180639) (not b!5180577) (not d!1674274) (not b!5180562) (not b!5180759) (not bm!364133) (not b!5180553) (not b!5180642) (not d!1674568) (not b_lambda!201087) (not d!1674272) (not b!5180762) (not b!5180480) (not b!5180843) (not b!5180624) (not d!1674468) (not b!5180798) (not b!5180517) (not b!5180758) (not d!1674460) (not b!5180772) (not d!1674504) (not bm!364150) (not b!5180627) (not d!1674368) (not bm!364135) (not b!5180531) (not b!5180723) (not b!5180763) (not d!1674566) (not d!1674604) (not b!5180594) (not b!5180552) (not d!1674556) (not bm!364149) (not d!1674470) (not bm!364122) (not d!1674530) (not d!1674512) (not b!5180601) (not bm!364130) (not b!5180841) (not b!5180580) (not b!5180507) (not d!1674428) (not d!1674270) (not b!5180708) (not d!1674412) (not d!1674452) (not bm!364123) (not b!5180842) (not bm!364131) (not b!5180671) (not bm!364126) (not b!5180657) (not d!1674538) (not b!5180755) (not bm!364134) (not d!1674406) (not b!5180785) (not bm!364125) (not b!5180664) (not b!5180753) (not bm!364138) (not b!5180809) (not d!1674458) (not b!5180811) (not d!1674398) (not b!5180699) (not d!1674464) (not d!1674410) (not b!5180817) (not d!1674350) (not b!5180727) (not b!5180813) (not bm!364119) (not bs!1206927) (not b!5180608) (not d!1674392) (not d!1674440) (not b!5180638) (not d!1674518) (not d!1674430) (not b!5180807) (not b!5180530) (not d!1674462) (not b!5180643) (not b!5180622) (not d!1674562) (not b!5180475) (not d!1674498) (not d!1674436) (not d!1674320) (not bm!364136) (not b!5180629) (not b!5180598) (not d!1674496) (not b!5180740) (not b!5180724) (not b!5180838) (not d!1674572) (not b!5180635) (not bm!364137) (not b!5180651) (not b!5180818) (not d!1674554) (not b!5180555) (not b_lambda!201085) (not b!5180837) (not b!5180830) (not bm!364107) (not d!1674594) (not bm!364132) (not d!1674362) (not b!5180479) (not b!5180839) tp_is_empty!38575 (not b!5180834) (not b!5180518) (not d!1674324) (not b!5180660) (not d!1674474) (not b!5180773) (not b!5180832) (not b!5180593) (not d!1674456))
(check-sat)
(get-model)

(declare-fun d!1674614 () Bool)

(declare-fun c!892825 () Bool)

(assert (=> d!1674614 (= c!892825 ((_ is Nil!60176) lt!2135334))))

(declare-fun e!3227951 () (InoxSet C!29592))

(assert (=> d!1674614 (= (content!10669 lt!2135334) e!3227951)))

(declare-fun b!5180844 () Bool)

(assert (=> b!5180844 (= e!3227951 ((as const (Array C!29592 Bool)) false))))

(declare-fun b!5180845 () Bool)

(assert (=> b!5180845 (= e!3227951 ((_ map or) (store ((as const (Array C!29592 Bool)) false) (h!66624 lt!2135334) true) (content!10669 (t!373453 lt!2135334))))))

(assert (= (and d!1674614 c!892825) b!5180844))

(assert (= (and d!1674614 (not c!892825)) b!5180845))

(declare-fun m!6239948 () Bool)

(assert (=> b!5180845 m!6239948))

(declare-fun m!6239950 () Bool)

(assert (=> b!5180845 m!6239950))

(assert (=> d!1674320 d!1674614))

(declare-fun d!1674616 () Bool)

(declare-fun c!892826 () Bool)

(assert (=> d!1674616 (= c!892826 ((_ is Nil!60176) lt!2134949))))

(declare-fun e!3227952 () (InoxSet C!29592))

(assert (=> d!1674616 (= (content!10669 lt!2134949) e!3227952)))

(declare-fun b!5180846 () Bool)

(assert (=> b!5180846 (= e!3227952 ((as const (Array C!29592 Bool)) false))))

(declare-fun b!5180847 () Bool)

(assert (=> b!5180847 (= e!3227952 ((_ map or) (store ((as const (Array C!29592 Bool)) false) (h!66624 lt!2134949) true) (content!10669 (t!373453 lt!2134949))))))

(assert (= (and d!1674616 c!892826) b!5180846))

(assert (= (and d!1674616 (not c!892826)) b!5180847))

(declare-fun m!6239952 () Bool)

(assert (=> b!5180847 m!6239952))

(declare-fun m!6239954 () Bool)

(assert (=> b!5180847 m!6239954))

(assert (=> d!1674320 d!1674616))

(declare-fun d!1674618 () Bool)

(declare-fun c!892827 () Bool)

(assert (=> d!1674618 (= c!892827 ((_ is Nil!60176) (getSuffix!3442 input!5817 lt!2134949)))))

(declare-fun e!3227953 () (InoxSet C!29592))

(assert (=> d!1674618 (= (content!10669 (getSuffix!3442 input!5817 lt!2134949)) e!3227953)))

(declare-fun b!5180848 () Bool)

(assert (=> b!5180848 (= e!3227953 ((as const (Array C!29592 Bool)) false))))

(declare-fun b!5180849 () Bool)

(assert (=> b!5180849 (= e!3227953 ((_ map or) (store ((as const (Array C!29592 Bool)) false) (h!66624 (getSuffix!3442 input!5817 lt!2134949)) true) (content!10669 (t!373453 (getSuffix!3442 input!5817 lt!2134949)))))))

(assert (= (and d!1674618 c!892827) b!5180848))

(assert (= (and d!1674618 (not c!892827)) b!5180849))

(declare-fun m!6239956 () Bool)

(assert (=> b!5180849 m!6239956))

(declare-fun m!6239958 () Bool)

(assert (=> b!5180849 m!6239958))

(assert (=> d!1674320 d!1674618))

(declare-fun b!5180850 () Bool)

(declare-fun c!892828 () Bool)

(declare-fun call!364158 () Bool)

(assert (=> b!5180850 (= c!892828 call!364158)))

(declare-fun lt!2135560 () Unit!152123)

(declare-fun lt!2135557 () Unit!152123)

(assert (=> b!5180850 (= lt!2135560 lt!2135557)))

(assert (=> b!5180850 (= input!5817 lt!2135418)))

(declare-fun call!364156 () Unit!152123)

(assert (=> b!5180850 (= lt!2135557 call!364156)))

(declare-fun lt!2135563 () Unit!152123)

(declare-fun lt!2135567 () Unit!152123)

(assert (=> b!5180850 (= lt!2135563 lt!2135567)))

(declare-fun call!364163 () Bool)

(assert (=> b!5180850 call!364163))

(declare-fun call!364157 () Unit!152123)

(assert (=> b!5180850 (= lt!2135567 call!364157)))

(declare-fun e!3227959 () tuple2!63872)

(declare-fun e!3227960 () tuple2!63872)

(assert (=> b!5180850 (= e!3227959 e!3227960)))

(declare-fun b!5180851 () Bool)

(declare-fun e!3227957 () Bool)

(declare-fun lt!2135555 () tuple2!63872)

(assert (=> b!5180851 (= e!3227957 (>= (size!39697 (_1!35239 lt!2135555)) (size!39697 lt!2135418)))))

(declare-fun b!5180852 () Bool)

(declare-fun c!892831 () Bool)

(assert (=> b!5180852 (= c!892831 call!364158)))

(declare-fun lt!2135576 () Unit!152123)

(declare-fun lt!2135575 () Unit!152123)

(assert (=> b!5180852 (= lt!2135576 lt!2135575)))

(declare-fun lt!2135561 () C!29592)

(declare-fun lt!2135564 () List!60300)

(assert (=> b!5180852 (= (++!13177 (++!13177 lt!2135418 (Cons!60176 lt!2135561 Nil!60176)) lt!2135564) input!5817)))

(assert (=> b!5180852 (= lt!2135575 (lemmaMoveElementToOtherListKeepsConcatEq!1596 lt!2135418 lt!2135561 lt!2135564 input!5817))))

(assert (=> b!5180852 (= lt!2135564 (tail!10178 call!364135))))

(assert (=> b!5180852 (= lt!2135561 (head!11079 call!364135))))

(declare-fun lt!2135558 () Unit!152123)

(declare-fun lt!2135559 () Unit!152123)

(assert (=> b!5180852 (= lt!2135558 lt!2135559)))

(assert (=> b!5180852 (isPrefix!5794 (++!13177 lt!2135418 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2135418)) Nil!60176)) input!5817)))

(assert (=> b!5180852 (= lt!2135559 (lemmaAddHeadSuffixToPrefixStillPrefix!1099 lt!2135418 input!5817))))

(declare-fun lt!2135568 () List!60300)

(assert (=> b!5180852 (= lt!2135568 (++!13177 lt!2135418 (Cons!60176 (head!11079 call!364135) Nil!60176)))))

(declare-fun lt!2135577 () Unit!152123)

(declare-fun e!3227961 () Unit!152123)

(assert (=> b!5180852 (= lt!2135577 e!3227961)))

(declare-fun c!892833 () Bool)

(assert (=> b!5180852 (= c!892833 (= (size!39697 lt!2135418) (size!39697 input!5817)))))

(declare-fun lt!2135556 () Unit!152123)

(declare-fun lt!2135565 () Unit!152123)

(assert (=> b!5180852 (= lt!2135556 lt!2135565)))

(assert (=> b!5180852 (<= (size!39697 lt!2135418) (size!39697 input!5817))))

(assert (=> b!5180852 (= lt!2135565 (lemmaIsPrefixThenSmallerEqSize!955 lt!2135418 input!5817))))

(declare-fun e!3227955 () tuple2!63872)

(assert (=> b!5180852 (= e!3227959 e!3227955)))

(declare-fun b!5180853 () Bool)

(declare-fun e!3227958 () tuple2!63872)

(assert (=> b!5180853 (= e!3227958 e!3227959)))

(declare-fun c!892829 () Bool)

(assert (=> b!5180853 (= c!892829 (= (+ (size!39697 lt!2134949) 1 1) lt!2134950))))

(declare-fun b!5180854 () Bool)

(declare-fun call!364159 () tuple2!63872)

(assert (=> b!5180854 (= e!3227955 call!364159)))

(declare-fun b!5180855 () Bool)

(declare-fun e!3227956 () Bool)

(assert (=> b!5180855 (= e!3227956 e!3227957)))

(declare-fun res!2201092 () Bool)

(assert (=> b!5180855 (=> res!2201092 e!3227957)))

(assert (=> b!5180855 (= res!2201092 (isEmpty!32219 (_1!35239 lt!2135555)))))

(declare-fun bm!364151 () Bool)

(assert (=> bm!364151 (= call!364163 (isPrefix!5794 input!5817 input!5817))))

(declare-fun b!5180856 () Bool)

(declare-fun Unit!152165 () Unit!152123)

(assert (=> b!5180856 (= e!3227961 Unit!152165)))

(declare-fun bm!364152 () Bool)

(assert (=> bm!364152 (= call!364156 (lemmaIsPrefixSameLengthThenSameList!1439 input!5817 lt!2135418 input!5817))))

(declare-fun bm!364153 () Bool)

(assert (=> bm!364153 (= call!364158 (nullableZipper!1199 call!364134))))

(declare-fun b!5180857 () Bool)

(declare-fun Unit!152166 () Unit!152123)

(assert (=> b!5180857 (= e!3227961 Unit!152166)))

(declare-fun lt!2135571 () Unit!152123)

(assert (=> b!5180857 (= lt!2135571 call!364157)))

(assert (=> b!5180857 call!364163))

(declare-fun lt!2135569 () Unit!152123)

(assert (=> b!5180857 (= lt!2135569 lt!2135571)))

(declare-fun lt!2135573 () Unit!152123)

(assert (=> b!5180857 (= lt!2135573 call!364156)))

(assert (=> b!5180857 (= input!5817 lt!2135418)))

(declare-fun lt!2135574 () Unit!152123)

(assert (=> b!5180857 (= lt!2135574 lt!2135573)))

(assert (=> b!5180857 false))

(declare-fun bm!364154 () Bool)

(declare-fun call!364161 () List!60300)

(assert (=> bm!364154 (= call!364161 (tail!10178 call!364135))))

(declare-fun b!5180858 () Bool)

(declare-fun e!3227954 () tuple2!63872)

(declare-fun lt!2135566 () tuple2!63872)

(assert (=> b!5180858 (= e!3227954 lt!2135566)))

(declare-fun b!5180859 () Bool)

(assert (=> b!5180859 (= e!3227960 (tuple2!63873 Nil!60176 input!5817))))

(declare-fun b!5180860 () Bool)

(assert (=> b!5180860 (= e!3227954 (tuple2!63873 lt!2135418 call!364135))))

(declare-fun bm!364156 () Bool)

(declare-fun call!364162 () C!29592)

(assert (=> bm!364156 (= call!364162 (head!11079 call!364135))))

(declare-fun bm!364157 () Bool)

(assert (=> bm!364157 (= call!364157 (lemmaIsPrefixRefl!3799 input!5817 input!5817))))

(declare-fun bm!364158 () Bool)

(declare-fun call!364160 () (InoxSet Context!8090))

(assert (=> bm!364158 (= call!364159 (findLongestMatchInnerZipper!317 call!364160 lt!2135568 (+ (size!39697 lt!2134949) 1 1 1) call!364161 input!5817 lt!2134950))))

(declare-fun b!5180861 () Bool)

(assert (=> b!5180861 (= e!3227960 (tuple2!63873 lt!2135418 Nil!60176))))

(declare-fun b!5180862 () Bool)

(assert (=> b!5180862 (= e!3227955 e!3227954)))

(assert (=> b!5180862 (= lt!2135566 call!364159)))

(declare-fun c!892830 () Bool)

(assert (=> b!5180862 (= c!892830 (isEmpty!32219 (_1!35239 lt!2135566)))))

(declare-fun b!5180863 () Bool)

(assert (=> b!5180863 (= e!3227958 (tuple2!63873 Nil!60176 input!5817))))

(declare-fun bm!364155 () Bool)

(assert (=> bm!364155 (= call!364160 (derivationStepZipper!1007 call!364134 call!364162))))

(declare-fun d!1674620 () Bool)

(assert (=> d!1674620 e!3227956))

(declare-fun res!2201091 () Bool)

(assert (=> d!1674620 (=> (not res!2201091) (not e!3227956))))

(assert (=> d!1674620 (= res!2201091 (= (++!13177 (_1!35239 lt!2135555) (_2!35239 lt!2135555)) input!5817))))

(assert (=> d!1674620 (= lt!2135555 e!3227958)))

(declare-fun c!892832 () Bool)

(assert (=> d!1674620 (= c!892832 (lostCauseZipper!1348 call!364134))))

(declare-fun lt!2135554 () Unit!152123)

(declare-fun Unit!152167 () Unit!152123)

(assert (=> d!1674620 (= lt!2135554 Unit!152167)))

(assert (=> d!1674620 (= (getSuffix!3442 input!5817 lt!2135418) call!364135)))

(declare-fun lt!2135572 () Unit!152123)

(declare-fun lt!2135578 () Unit!152123)

(assert (=> d!1674620 (= lt!2135572 lt!2135578)))

(declare-fun lt!2135553 () List!60300)

(assert (=> d!1674620 (= call!364135 lt!2135553)))

(assert (=> d!1674620 (= lt!2135578 (lemmaSamePrefixThenSameSuffix!2715 lt!2135418 call!364135 lt!2135418 lt!2135553 input!5817))))

(assert (=> d!1674620 (= lt!2135553 (getSuffix!3442 input!5817 lt!2135418))))

(declare-fun lt!2135570 () Unit!152123)

(declare-fun lt!2135562 () Unit!152123)

(assert (=> d!1674620 (= lt!2135570 lt!2135562)))

(assert (=> d!1674620 (isPrefix!5794 lt!2135418 (++!13177 lt!2135418 call!364135))))

(assert (=> d!1674620 (= lt!2135562 (lemmaConcatTwoListThenFirstIsPrefix!3609 lt!2135418 call!364135))))

(assert (=> d!1674620 (= (++!13177 lt!2135418 call!364135) input!5817)))

(assert (=> d!1674620 (= (findLongestMatchInnerZipper!317 call!364134 lt!2135418 (+ (size!39697 lt!2134949) 1 1) call!364135 input!5817 lt!2134950) lt!2135555)))

(assert (= (and d!1674620 c!892832) b!5180863))

(assert (= (and d!1674620 (not c!892832)) b!5180853))

(assert (= (and b!5180853 c!892829) b!5180850))

(assert (= (and b!5180853 (not c!892829)) b!5180852))

(assert (= (and b!5180850 c!892828) b!5180861))

(assert (= (and b!5180850 (not c!892828)) b!5180859))

(assert (= (and b!5180852 c!892833) b!5180857))

(assert (= (and b!5180852 (not c!892833)) b!5180856))

(assert (= (and b!5180852 c!892831) b!5180862))

(assert (= (and b!5180852 (not c!892831)) b!5180854))

(assert (= (and b!5180862 c!892830) b!5180860))

(assert (= (and b!5180862 (not c!892830)) b!5180858))

(assert (= (or b!5180862 b!5180854) bm!364154))

(assert (= (or b!5180862 b!5180854) bm!364156))

(assert (= (or b!5180862 b!5180854) bm!364155))

(assert (= (or b!5180862 b!5180854) bm!364158))

(assert (= (or b!5180850 b!5180857) bm!364157))

(assert (= (or b!5180850 b!5180852) bm!364153))

(assert (= (or b!5180850 b!5180857) bm!364151))

(assert (= (or b!5180850 b!5180857) bm!364152))

(assert (= (and d!1674620 res!2201091) b!5180855))

(assert (= (and b!5180855 (not res!2201092)) b!5180851))

(assert (=> bm!364151 m!6238556))

(declare-fun m!6239960 () Bool)

(assert (=> bm!364153 m!6239960))

(declare-fun m!6239962 () Bool)

(assert (=> bm!364152 m!6239962))

(declare-fun m!6239964 () Bool)

(assert (=> bm!364155 m!6239964))

(declare-fun m!6239966 () Bool)

(assert (=> d!1674620 m!6239966))

(declare-fun m!6239968 () Bool)

(assert (=> d!1674620 m!6239968))

(assert (=> d!1674620 m!6239968))

(declare-fun m!6239970 () Bool)

(assert (=> d!1674620 m!6239970))

(declare-fun m!6239972 () Bool)

(assert (=> d!1674620 m!6239972))

(declare-fun m!6239974 () Bool)

(assert (=> d!1674620 m!6239974))

(declare-fun m!6239976 () Bool)

(assert (=> d!1674620 m!6239976))

(declare-fun m!6239978 () Bool)

(assert (=> d!1674620 m!6239978))

(declare-fun m!6239980 () Bool)

(assert (=> bm!364158 m!6239980))

(declare-fun m!6239982 () Bool)

(assert (=> b!5180852 m!6239982))

(declare-fun m!6239984 () Bool)

(assert (=> b!5180852 m!6239984))

(declare-fun m!6239986 () Bool)

(assert (=> b!5180852 m!6239986))

(assert (=> b!5180852 m!6239972))

(declare-fun m!6239988 () Bool)

(assert (=> b!5180852 m!6239988))

(declare-fun m!6239990 () Bool)

(assert (=> b!5180852 m!6239990))

(assert (=> b!5180852 m!6239972))

(assert (=> b!5180852 m!6238548))

(assert (=> b!5180852 m!6239982))

(declare-fun m!6239992 () Bool)

(assert (=> b!5180852 m!6239992))

(declare-fun m!6239994 () Bool)

(assert (=> b!5180852 m!6239994))

(declare-fun m!6239996 () Bool)

(assert (=> b!5180852 m!6239996))

(declare-fun m!6239998 () Bool)

(assert (=> b!5180852 m!6239998))

(declare-fun m!6240000 () Bool)

(assert (=> b!5180852 m!6240000))

(assert (=> b!5180852 m!6239986))

(declare-fun m!6240002 () Bool)

(assert (=> b!5180852 m!6240002))

(declare-fun m!6240004 () Bool)

(assert (=> b!5180852 m!6240004))

(declare-fun m!6240006 () Bool)

(assert (=> b!5180855 m!6240006))

(declare-fun m!6240008 () Bool)

(assert (=> b!5180862 m!6240008))

(declare-fun m!6240010 () Bool)

(assert (=> b!5180851 m!6240010))

(assert (=> b!5180851 m!6239990))

(assert (=> bm!364154 m!6240000))

(assert (=> bm!364157 m!6238554))

(assert (=> bm!364156 m!6239996))

(assert (=> bm!364132 d!1674620))

(assert (=> bm!364139 d!1674126))

(declare-fun d!1674622 () Bool)

(declare-fun c!892834 () Bool)

(assert (=> d!1674622 (= c!892834 ((_ is Nil!60176) lt!2135438))))

(declare-fun e!3227962 () (InoxSet C!29592))

(assert (=> d!1674622 (= (content!10669 lt!2135438) e!3227962)))

(declare-fun b!5180864 () Bool)

(assert (=> b!5180864 (= e!3227962 ((as const (Array C!29592 Bool)) false))))

(declare-fun b!5180865 () Bool)

(assert (=> b!5180865 (= e!3227962 ((_ map or) (store ((as const (Array C!29592 Bool)) false) (h!66624 lt!2135438) true) (content!10669 (t!373453 lt!2135438))))))

(assert (= (and d!1674622 c!892834) b!5180864))

(assert (= (and d!1674622 (not c!892834)) b!5180865))

(declare-fun m!6240012 () Bool)

(assert (=> b!5180865 m!6240012))

(declare-fun m!6240014 () Bool)

(assert (=> b!5180865 m!6240014))

(assert (=> d!1674452 d!1674622))

(assert (=> d!1674452 d!1674616))

(declare-fun d!1674624 () Bool)

(declare-fun c!892835 () Bool)

(assert (=> d!1674624 (= c!892835 ((_ is Nil!60176) (Cons!60176 lt!2135212 Nil!60176)))))

(declare-fun e!3227963 () (InoxSet C!29592))

(assert (=> d!1674624 (= (content!10669 (Cons!60176 lt!2135212 Nil!60176)) e!3227963)))

(declare-fun b!5180866 () Bool)

(assert (=> b!5180866 (= e!3227963 ((as const (Array C!29592 Bool)) false))))

(declare-fun b!5180867 () Bool)

(assert (=> b!5180867 (= e!3227963 ((_ map or) (store ((as const (Array C!29592 Bool)) false) (h!66624 (Cons!60176 lt!2135212 Nil!60176)) true) (content!10669 (t!373453 (Cons!60176 lt!2135212 Nil!60176)))))))

(assert (= (and d!1674624 c!892835) b!5180866))

(assert (= (and d!1674624 (not c!892835)) b!5180867))

(declare-fun m!6240016 () Bool)

(assert (=> b!5180867 m!6240016))

(declare-fun m!6240018 () Bool)

(assert (=> b!5180867 m!6240018))

(assert (=> d!1674452 d!1674624))

(declare-fun d!1674626 () Bool)

(declare-fun lt!2135579 () Int)

(assert (=> d!1674626 (>= lt!2135579 0)))

(declare-fun e!3227964 () Int)

(assert (=> d!1674626 (= lt!2135579 e!3227964)))

(declare-fun c!892836 () Bool)

(assert (=> d!1674626 (= c!892836 ((_ is Nil!60176) (++!13177 testedP!294 lt!2134946)))))

(assert (=> d!1674626 (= (size!39697 (++!13177 testedP!294 lt!2134946)) lt!2135579)))

(declare-fun b!5180868 () Bool)

(assert (=> b!5180868 (= e!3227964 0)))

(declare-fun b!5180869 () Bool)

(assert (=> b!5180869 (= e!3227964 (+ 1 (size!39697 (t!373453 (++!13177 testedP!294 lt!2134946)))))))

(assert (= (and d!1674626 c!892836) b!5180868))

(assert (= (and d!1674626 (not c!892836)) b!5180869))

(declare-fun m!6240020 () Bool)

(assert (=> b!5180869 m!6240020))

(assert (=> b!5180763 d!1674626))

(assert (=> b!5180763 d!1674152))

(declare-fun bs!1206928 () Bool)

(declare-fun d!1674628 () Bool)

(assert (= bs!1206928 (and d!1674628 d!1674214)))

(declare-fun lambda!258940 () Int)

(assert (=> bs!1206928 (= lambda!258940 lambda!258879)))

(declare-fun bs!1206929 () Bool)

(assert (= bs!1206929 (and d!1674628 d!1674236)))

(assert (=> bs!1206929 (= lambda!258940 lambda!258883)))

(declare-fun bs!1206930 () Bool)

(assert (= bs!1206930 (and d!1674628 d!1674398)))

(assert (=> bs!1206930 (= lambda!258940 lambda!258909)))

(declare-fun bs!1206931 () Bool)

(assert (= bs!1206931 (and d!1674628 d!1674410)))

(assert (=> bs!1206931 (= lambda!258940 lambda!258910)))

(assert (=> d!1674628 (= (inv!79899 setElem!32413) (forall!14172 (exprs!4545 setElem!32413) lambda!258940))))

(declare-fun bs!1206932 () Bool)

(assert (= bs!1206932 d!1674628))

(declare-fun m!6240022 () Bool)

(assert (=> bs!1206932 m!6240022))

(assert (=> setNonEmpty!32413 d!1674628))

(declare-fun d!1674630 () Bool)

(declare-fun lt!2135580 () Int)

(assert (=> d!1674630 (>= lt!2135580 0)))

(declare-fun e!3227965 () Int)

(assert (=> d!1674630 (= lt!2135580 e!3227965)))

(declare-fun c!892837 () Bool)

(assert (=> d!1674630 (= c!892837 ((_ is Nil!60176) (t!373453 (t!373453 input!5817))))))

(assert (=> d!1674630 (= (size!39697 (t!373453 (t!373453 input!5817))) lt!2135580)))

(declare-fun b!5180870 () Bool)

(assert (=> b!5180870 (= e!3227965 0)))

(declare-fun b!5180871 () Bool)

(assert (=> b!5180871 (= e!3227965 (+ 1 (size!39697 (t!373453 (t!373453 (t!373453 input!5817))))))))

(assert (= (and d!1674630 c!892837) b!5180870))

(assert (= (and d!1674630 (not c!892837)) b!5180871))

(declare-fun m!6240024 () Bool)

(assert (=> b!5180871 m!6240024))

(assert (=> b!5180705 d!1674630))

(declare-fun d!1674632 () Bool)

(declare-fun c!892838 () Bool)

(assert (=> d!1674632 (= c!892838 ((_ is Nil!60176) lt!2135543))))

(declare-fun e!3227966 () (InoxSet C!29592))

(assert (=> d!1674632 (= (content!10669 lt!2135543) e!3227966)))

(declare-fun b!5180872 () Bool)

(assert (=> b!5180872 (= e!3227966 ((as const (Array C!29592 Bool)) false))))

(declare-fun b!5180873 () Bool)

(assert (=> b!5180873 (= e!3227966 ((_ map or) (store ((as const (Array C!29592 Bool)) false) (h!66624 lt!2135543) true) (content!10669 (t!373453 lt!2135543))))))

(assert (= (and d!1674632 c!892838) b!5180872))

(assert (= (and d!1674632 (not c!892838)) b!5180873))

(declare-fun m!6240026 () Bool)

(assert (=> b!5180873 m!6240026))

(declare-fun m!6240028 () Bool)

(assert (=> b!5180873 m!6240028))

(assert (=> d!1674568 d!1674632))

(assert (=> d!1674568 d!1674422))

(declare-fun d!1674634 () Bool)

(declare-fun c!892839 () Bool)

(assert (=> d!1674634 (= c!892839 ((_ is Nil!60176) lt!2134946))))

(declare-fun e!3227967 () (InoxSet C!29592))

(assert (=> d!1674634 (= (content!10669 lt!2134946) e!3227967)))

(declare-fun b!5180874 () Bool)

(assert (=> b!5180874 (= e!3227967 ((as const (Array C!29592 Bool)) false))))

(declare-fun b!5180875 () Bool)

(assert (=> b!5180875 (= e!3227967 ((_ map or) (store ((as const (Array C!29592 Bool)) false) (h!66624 lt!2134946) true) (content!10669 (t!373453 lt!2134946))))))

(assert (= (and d!1674634 c!892839) b!5180874))

(assert (= (and d!1674634 (not c!892839)) b!5180875))

(declare-fun m!6240030 () Bool)

(assert (=> b!5180875 m!6240030))

(declare-fun m!6240032 () Bool)

(assert (=> b!5180875 m!6240032))

(assert (=> d!1674568 d!1674634))

(declare-fun b!5180877 () Bool)

(declare-fun e!3227969 () List!60300)

(assert (=> b!5180877 (= e!3227969 (Cons!60176 (h!66624 (t!373453 (_1!35239 lt!2135206))) (++!13177 (t!373453 (t!373453 (_1!35239 lt!2135206))) (_2!35239 lt!2135206))))))

(declare-fun b!5180876 () Bool)

(assert (=> b!5180876 (= e!3227969 (_2!35239 lt!2135206))))

(declare-fun b!5180878 () Bool)

(declare-fun res!2201093 () Bool)

(declare-fun e!3227968 () Bool)

(assert (=> b!5180878 (=> (not res!2201093) (not e!3227968))))

(declare-fun lt!2135581 () List!60300)

(assert (=> b!5180878 (= res!2201093 (= (size!39697 lt!2135581) (+ (size!39697 (t!373453 (_1!35239 lt!2135206))) (size!39697 (_2!35239 lt!2135206)))))))

(declare-fun b!5180879 () Bool)

(assert (=> b!5180879 (= e!3227968 (or (not (= (_2!35239 lt!2135206) Nil!60176)) (= lt!2135581 (t!373453 (_1!35239 lt!2135206)))))))

(declare-fun d!1674636 () Bool)

(assert (=> d!1674636 e!3227968))

(declare-fun res!2201094 () Bool)

(assert (=> d!1674636 (=> (not res!2201094) (not e!3227968))))

(assert (=> d!1674636 (= res!2201094 (= (content!10669 lt!2135581) ((_ map or) (content!10669 (t!373453 (_1!35239 lt!2135206))) (content!10669 (_2!35239 lt!2135206)))))))

(assert (=> d!1674636 (= lt!2135581 e!3227969)))

(declare-fun c!892840 () Bool)

(assert (=> d!1674636 (= c!892840 ((_ is Nil!60176) (t!373453 (_1!35239 lt!2135206))))))

(assert (=> d!1674636 (= (++!13177 (t!373453 (_1!35239 lt!2135206)) (_2!35239 lt!2135206)) lt!2135581)))

(assert (= (and d!1674636 c!892840) b!5180876))

(assert (= (and d!1674636 (not c!892840)) b!5180877))

(assert (= (and d!1674636 res!2201094) b!5180878))

(assert (= (and b!5180878 res!2201093) b!5180879))

(declare-fun m!6240034 () Bool)

(assert (=> b!5180877 m!6240034))

(declare-fun m!6240036 () Bool)

(assert (=> b!5180878 m!6240036))

(assert (=> b!5180878 m!6239902))

(assert (=> b!5180878 m!6239100))

(declare-fun m!6240038 () Bool)

(assert (=> d!1674636 m!6240038))

(declare-fun m!6240040 () Bool)

(assert (=> d!1674636 m!6240040))

(assert (=> d!1674636 m!6239106))

(assert (=> b!5180479 d!1674636))

(declare-fun d!1674638 () Bool)

(assert (=> d!1674638 (= (flatMap!464 baseZ!62 lambda!258912) (choose!38502 baseZ!62 lambda!258912))))

(declare-fun bs!1206933 () Bool)

(assert (= bs!1206933 d!1674638))

(declare-fun m!6240042 () Bool)

(assert (=> bs!1206933 m!6240042))

(assert (=> d!1674430 d!1674638))

(declare-fun bs!1206934 () Bool)

(declare-fun d!1674640 () Bool)

(assert (= bs!1206934 (and d!1674640 d!1674160)))

(declare-fun lambda!258943 () Int)

(assert (=> bs!1206934 (not (= lambda!258943 lambda!258876))))

(declare-fun bs!1206935 () Bool)

(assert (= bs!1206935 (and d!1674640 b!5180507)))

(assert (=> bs!1206935 (not (= lambda!258943 lambda!258903))))

(declare-fun bs!1206936 () Bool)

(assert (= bs!1206936 (and d!1674640 b!5180506)))

(assert (=> bs!1206936 (not (= lambda!258943 lambda!258902))))

(declare-fun bs!1206937 () Bool)

(assert (= bs!1206937 (and d!1674640 b!5180758)))

(assert (=> bs!1206937 (not (= lambda!258943 lambda!258935))))

(declare-fun bs!1206938 () Bool)

(assert (= bs!1206938 (and d!1674640 d!1674556)))

(assert (=> bs!1206938 (not (= lambda!258943 lambda!258934))))

(declare-fun bs!1206939 () Bool)

(assert (= bs!1206939 (and d!1674640 d!1674274)))

(assert (=> bs!1206939 (not (= lambda!258943 lambda!258901))))

(declare-fun bs!1206940 () Bool)

(assert (= bs!1206940 (and d!1674640 d!1674538)))

(assert (=> bs!1206940 (not (= lambda!258943 lambda!258933))))

(declare-fun bs!1206941 () Bool)

(assert (= bs!1206941 (and d!1674640 d!1674590)))

(assert (=> bs!1206941 (not (= lambda!258943 lambda!258938))))

(declare-fun bs!1206942 () Bool)

(assert (= bs!1206942 (and d!1674640 b!5180759)))

(assert (=> bs!1206942 (not (= lambda!258943 lambda!258936))))

(assert (=> d!1674640 true))

(declare-fun order!27047 () Int)

(declare-fun dynLambda!23890 (Int Int) Int)

(assert (=> d!1674640 (< (dynLambda!23890 order!27047 (ite c!892814 lambda!258935 lambda!258936)) (dynLambda!23890 order!27047 lambda!258943))))

(declare-fun forall!14175 (List!60301 Int) Bool)

(assert (=> d!1674640 (= (exists!1949 (ite c!892814 lt!2135534 lt!2135531) (ite c!892814 lambda!258935 lambda!258936)) (not (forall!14175 (ite c!892814 lt!2135534 lt!2135531) lambda!258943)))))

(declare-fun bs!1206943 () Bool)

(assert (= bs!1206943 d!1674640))

(declare-fun m!6240044 () Bool)

(assert (=> bs!1206943 m!6240044))

(assert (=> bm!364150 d!1674640))

(declare-fun d!1674642 () Bool)

(declare-fun lt!2135582 () Int)

(assert (=> d!1674642 (>= lt!2135582 0)))

(declare-fun e!3227970 () Int)

(assert (=> d!1674642 (= lt!2135582 e!3227970)))

(declare-fun c!892841 () Bool)

(assert (=> d!1674642 (= c!892841 ((_ is Nil!60176) (tail!10178 input!5817)))))

(assert (=> d!1674642 (= (size!39697 (tail!10178 input!5817)) lt!2135582)))

(declare-fun b!5180882 () Bool)

(assert (=> b!5180882 (= e!3227970 0)))

(declare-fun b!5180883 () Bool)

(assert (=> b!5180883 (= e!3227970 (+ 1 (size!39697 (t!373453 (tail!10178 input!5817)))))))

(assert (= (and d!1674642 c!892841) b!5180882))

(assert (= (and d!1674642 (not c!892841)) b!5180883))

(declare-fun m!6240046 () Bool)

(assert (=> b!5180883 m!6240046))

(assert (=> b!5180757 d!1674642))

(declare-fun d!1674644 () Bool)

(declare-fun lt!2135583 () Int)

(assert (=> d!1674644 (>= lt!2135583 0)))

(declare-fun e!3227971 () Int)

(assert (=> d!1674644 (= lt!2135583 e!3227971)))

(declare-fun c!892842 () Bool)

(assert (=> d!1674644 (= c!892842 ((_ is Nil!60176) (tail!10178 testedP!294)))))

(assert (=> d!1674644 (= (size!39697 (tail!10178 testedP!294)) lt!2135583)))

(declare-fun b!5180884 () Bool)

(assert (=> b!5180884 (= e!3227971 0)))

(declare-fun b!5180885 () Bool)

(assert (=> b!5180885 (= e!3227971 (+ 1 (size!39697 (t!373453 (tail!10178 testedP!294)))))))

(assert (= (and d!1674644 c!892842) b!5180884))

(assert (= (and d!1674644 (not c!892842)) b!5180885))

(declare-fun m!6240048 () Bool)

(assert (=> b!5180885 m!6240048))

(assert (=> b!5180757 d!1674644))

(declare-fun b!5180887 () Bool)

(declare-fun res!2201097 () Bool)

(declare-fun e!3227972 () Bool)

(assert (=> b!5180887 (=> (not res!2201097) (not e!3227972))))

(assert (=> b!5180887 (= res!2201097 (= (head!11079 (tail!10178 (++!13177 testedP!294 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 testedP!294)) Nil!60176)))) (head!11079 (tail!10178 input!5817))))))

(declare-fun b!5180889 () Bool)

(declare-fun e!3227974 () Bool)

(assert (=> b!5180889 (= e!3227974 (>= (size!39697 (tail!10178 input!5817)) (size!39697 (tail!10178 (++!13177 testedP!294 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 testedP!294)) Nil!60176))))))))

(declare-fun b!5180886 () Bool)

(declare-fun e!3227973 () Bool)

(assert (=> b!5180886 (= e!3227973 e!3227972)))

(declare-fun res!2201096 () Bool)

(assert (=> b!5180886 (=> (not res!2201096) (not e!3227972))))

(assert (=> b!5180886 (= res!2201096 (not ((_ is Nil!60176) (tail!10178 input!5817))))))

(declare-fun b!5180888 () Bool)

(assert (=> b!5180888 (= e!3227972 (isPrefix!5794 (tail!10178 (tail!10178 (++!13177 testedP!294 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 testedP!294)) Nil!60176)))) (tail!10178 (tail!10178 input!5817))))))

(declare-fun d!1674646 () Bool)

(assert (=> d!1674646 e!3227974))

(declare-fun res!2201098 () Bool)

(assert (=> d!1674646 (=> res!2201098 e!3227974)))

(declare-fun lt!2135584 () Bool)

(assert (=> d!1674646 (= res!2201098 (not lt!2135584))))

(assert (=> d!1674646 (= lt!2135584 e!3227973)))

(declare-fun res!2201095 () Bool)

(assert (=> d!1674646 (=> res!2201095 e!3227973)))

(assert (=> d!1674646 (= res!2201095 ((_ is Nil!60176) (tail!10178 (++!13177 testedP!294 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 testedP!294)) Nil!60176)))))))

(assert (=> d!1674646 (= (isPrefix!5794 (tail!10178 (++!13177 testedP!294 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 testedP!294)) Nil!60176))) (tail!10178 input!5817)) lt!2135584)))

(assert (= (and d!1674646 (not res!2201095)) b!5180886))

(assert (= (and b!5180886 res!2201096) b!5180887))

(assert (= (and b!5180887 res!2201097) b!5180888))

(assert (= (and d!1674646 (not res!2201098)) b!5180889))

(assert (=> b!5180887 m!6239272))

(declare-fun m!6240050 () Bool)

(assert (=> b!5180887 m!6240050))

(assert (=> b!5180887 m!6238588))

(assert (=> b!5180887 m!6239828))

(assert (=> b!5180889 m!6238588))

(assert (=> b!5180889 m!6239444))

(assert (=> b!5180889 m!6239272))

(declare-fun m!6240052 () Bool)

(assert (=> b!5180889 m!6240052))

(assert (=> b!5180888 m!6239272))

(declare-fun m!6240054 () Bool)

(assert (=> b!5180888 m!6240054))

(assert (=> b!5180888 m!6238588))

(assert (=> b!5180888 m!6239446))

(assert (=> b!5180888 m!6240054))

(assert (=> b!5180888 m!6239446))

(declare-fun m!6240056 () Bool)

(assert (=> b!5180888 m!6240056))

(assert (=> b!5180552 d!1674646))

(declare-fun d!1674648 () Bool)

(assert (=> d!1674648 (= (tail!10178 (++!13177 testedP!294 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 testedP!294)) Nil!60176))) (t!373453 (++!13177 testedP!294 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 testedP!294)) Nil!60176))))))

(assert (=> b!5180552 d!1674648))

(assert (=> b!5180552 d!1674408))

(declare-fun b!5180891 () Bool)

(declare-fun e!3227976 () List!60300)

(assert (=> b!5180891 (= e!3227976 (Cons!60176 (h!66624 (t!373453 testedP!294)) (++!13177 (t!373453 (t!373453 testedP!294)) (Cons!60176 lt!2135040 Nil!60176))))))

(declare-fun b!5180890 () Bool)

(assert (=> b!5180890 (= e!3227976 (Cons!60176 lt!2135040 Nil!60176))))

(declare-fun b!5180892 () Bool)

(declare-fun res!2201099 () Bool)

(declare-fun e!3227975 () Bool)

(assert (=> b!5180892 (=> (not res!2201099) (not e!3227975))))

(declare-fun lt!2135585 () List!60300)

(assert (=> b!5180892 (= res!2201099 (= (size!39697 lt!2135585) (+ (size!39697 (t!373453 testedP!294)) (size!39697 (Cons!60176 lt!2135040 Nil!60176)))))))

(declare-fun b!5180893 () Bool)

(assert (=> b!5180893 (= e!3227975 (or (not (= (Cons!60176 lt!2135040 Nil!60176) Nil!60176)) (= lt!2135585 (t!373453 testedP!294))))))

(declare-fun d!1674650 () Bool)

(assert (=> d!1674650 e!3227975))

(declare-fun res!2201100 () Bool)

(assert (=> d!1674650 (=> (not res!2201100) (not e!3227975))))

(assert (=> d!1674650 (= res!2201100 (= (content!10669 lt!2135585) ((_ map or) (content!10669 (t!373453 testedP!294)) (content!10669 (Cons!60176 lt!2135040 Nil!60176)))))))

(assert (=> d!1674650 (= lt!2135585 e!3227976)))

(declare-fun c!892843 () Bool)

(assert (=> d!1674650 (= c!892843 ((_ is Nil!60176) (t!373453 testedP!294)))))

(assert (=> d!1674650 (= (++!13177 (t!373453 testedP!294) (Cons!60176 lt!2135040 Nil!60176)) lt!2135585)))

(assert (= (and d!1674650 c!892843) b!5180890))

(assert (= (and d!1674650 (not c!892843)) b!5180891))

(assert (= (and d!1674650 res!2201100) b!5180892))

(assert (= (and b!5180892 res!2201099) b!5180893))

(declare-fun m!6240058 () Bool)

(assert (=> b!5180891 m!6240058))

(declare-fun m!6240060 () Bool)

(assert (=> b!5180892 m!6240060))

(assert (=> b!5180892 m!6238664))

(assert (=> b!5180892 m!6239806))

(declare-fun m!6240062 () Bool)

(assert (=> d!1674650 m!6240062))

(assert (=> d!1674650 m!6239522))

(assert (=> d!1674650 m!6239810))

(assert (=> b!5180739 d!1674650))

(declare-fun d!1674652 () Bool)

(declare-fun lt!2135586 () Int)

(assert (=> d!1674652 (>= lt!2135586 0)))

(declare-fun e!3227977 () Int)

(assert (=> d!1674652 (= lt!2135586 e!3227977)))

(declare-fun c!892844 () Bool)

(assert (=> d!1674652 (= c!892844 ((_ is Nil!60176) (_1!35239 lt!2135405)))))

(assert (=> d!1674652 (= (size!39697 (_1!35239 lt!2135405)) lt!2135586)))

(declare-fun b!5180894 () Bool)

(assert (=> b!5180894 (= e!3227977 0)))

(declare-fun b!5180895 () Bool)

(assert (=> b!5180895 (= e!3227977 (+ 1 (size!39697 (t!373453 (_1!35239 lt!2135405)))))))

(assert (= (and d!1674652 c!892844) b!5180894))

(assert (= (and d!1674652 (not c!892844)) b!5180895))

(declare-fun m!6240064 () Bool)

(assert (=> b!5180895 m!6240064))

(assert (=> b!5180597 d!1674652))

(declare-fun d!1674654 () Bool)

(declare-fun lt!2135587 () Int)

(assert (=> d!1674654 (>= lt!2135587 0)))

(declare-fun e!3227978 () Int)

(assert (=> d!1674654 (= lt!2135587 e!3227978)))

(declare-fun c!892845 () Bool)

(assert (=> d!1674654 (= c!892845 ((_ is Nil!60176) lt!2135219))))

(assert (=> d!1674654 (= (size!39697 lt!2135219) lt!2135587)))

(declare-fun b!5180896 () Bool)

(assert (=> b!5180896 (= e!3227978 0)))

(declare-fun b!5180897 () Bool)

(assert (=> b!5180897 (= e!3227978 (+ 1 (size!39697 (t!373453 lt!2135219))))))

(assert (= (and d!1674654 c!892845) b!5180896))

(assert (= (and d!1674654 (not c!892845)) b!5180897))

(declare-fun m!6240066 () Bool)

(assert (=> b!5180897 m!6240066))

(assert (=> b!5180597 d!1674654))

(declare-fun b!5180899 () Bool)

(declare-fun res!2201103 () Bool)

(declare-fun e!3227979 () Bool)

(assert (=> b!5180899 (=> (not res!2201103) (not e!3227979))))

(assert (=> b!5180899 (= res!2201103 (= (head!11079 (tail!10178 (tail!10178 input!5817))) (head!11079 (tail!10178 (tail!10178 input!5817)))))))

(declare-fun b!5180901 () Bool)

(declare-fun e!3227981 () Bool)

(assert (=> b!5180901 (= e!3227981 (>= (size!39697 (tail!10178 (tail!10178 input!5817))) (size!39697 (tail!10178 (tail!10178 input!5817)))))))

(declare-fun b!5180898 () Bool)

(declare-fun e!3227980 () Bool)

(assert (=> b!5180898 (= e!3227980 e!3227979)))

(declare-fun res!2201102 () Bool)

(assert (=> b!5180898 (=> (not res!2201102) (not e!3227979))))

(assert (=> b!5180898 (= res!2201102 (not ((_ is Nil!60176) (tail!10178 (tail!10178 input!5817)))))))

(declare-fun b!5180900 () Bool)

(assert (=> b!5180900 (= e!3227979 (isPrefix!5794 (tail!10178 (tail!10178 (tail!10178 input!5817))) (tail!10178 (tail!10178 (tail!10178 input!5817)))))))

(declare-fun d!1674656 () Bool)

(assert (=> d!1674656 e!3227981))

(declare-fun res!2201104 () Bool)

(assert (=> d!1674656 (=> res!2201104 e!3227981)))

(declare-fun lt!2135588 () Bool)

(assert (=> d!1674656 (= res!2201104 (not lt!2135588))))

(assert (=> d!1674656 (= lt!2135588 e!3227980)))

(declare-fun res!2201101 () Bool)

(assert (=> d!1674656 (=> res!2201101 e!3227980)))

(assert (=> d!1674656 (= res!2201101 ((_ is Nil!60176) (tail!10178 (tail!10178 input!5817))))))

(assert (=> d!1674656 (= (isPrefix!5794 (tail!10178 (tail!10178 input!5817)) (tail!10178 (tail!10178 input!5817))) lt!2135588)))

(assert (= (and d!1674656 (not res!2201101)) b!5180898))

(assert (= (and b!5180898 res!2201102) b!5180899))

(assert (= (and b!5180899 res!2201103) b!5180900))

(assert (= (and d!1674656 (not res!2201104)) b!5180901))

(assert (=> b!5180899 m!6239446))

(declare-fun m!6240068 () Bool)

(assert (=> b!5180899 m!6240068))

(assert (=> b!5180899 m!6239446))

(assert (=> b!5180899 m!6240068))

(assert (=> b!5180901 m!6239446))

(declare-fun m!6240070 () Bool)

(assert (=> b!5180901 m!6240070))

(assert (=> b!5180901 m!6239446))

(assert (=> b!5180901 m!6240070))

(assert (=> b!5180900 m!6239446))

(declare-fun m!6240072 () Bool)

(assert (=> b!5180900 m!6240072))

(assert (=> b!5180900 m!6239446))

(assert (=> b!5180900 m!6240072))

(assert (=> b!5180900 m!6240072))

(assert (=> b!5180900 m!6240072))

(declare-fun m!6240074 () Bool)

(assert (=> b!5180900 m!6240074))

(assert (=> b!5180752 d!1674656))

(declare-fun d!1674658 () Bool)

(assert (=> d!1674658 (= (tail!10178 (tail!10178 input!5817)) (t!373453 (tail!10178 input!5817)))))

(assert (=> b!5180752 d!1674658))

(declare-fun d!1674660 () Bool)

(assert (=> d!1674660 (= input!5817 lt!2134949)))

(assert (=> d!1674660 true))

(declare-fun _$60!1002 () Unit!152123)

(assert (=> d!1674660 (= (choose!38491 input!5817 lt!2134949 input!5817) _$60!1002)))

(assert (=> d!1674496 d!1674660))

(assert (=> d!1674496 d!1674128))

(declare-fun bs!1206944 () Bool)

(declare-fun d!1674662 () Bool)

(assert (= bs!1206944 (and d!1674662 d!1674160)))

(declare-fun lambda!258944 () Int)

(assert (=> bs!1206944 (= lambda!258944 lambda!258876)))

(declare-fun bs!1206945 () Bool)

(assert (= bs!1206945 (and d!1674662 b!5180506)))

(assert (=> bs!1206945 (not (= lambda!258944 lambda!258902))))

(declare-fun bs!1206946 () Bool)

(assert (= bs!1206946 (and d!1674662 b!5180758)))

(assert (=> bs!1206946 (not (= lambda!258944 lambda!258935))))

(declare-fun bs!1206947 () Bool)

(assert (= bs!1206947 (and d!1674662 d!1674556)))

(assert (=> bs!1206947 (not (= lambda!258944 lambda!258934))))

(declare-fun bs!1206948 () Bool)

(assert (= bs!1206948 (and d!1674662 d!1674274)))

(assert (=> bs!1206948 (not (= lambda!258944 lambda!258901))))

(declare-fun bs!1206949 () Bool)

(assert (= bs!1206949 (and d!1674662 d!1674538)))

(assert (=> bs!1206949 (= lambda!258944 lambda!258933)))

(declare-fun bs!1206950 () Bool)

(assert (= bs!1206950 (and d!1674662 d!1674640)))

(assert (=> bs!1206950 (not (= lambda!258944 lambda!258943))))

(declare-fun bs!1206951 () Bool)

(assert (= bs!1206951 (and d!1674662 b!5180507)))

(assert (=> bs!1206951 (not (= lambda!258944 lambda!258903))))

(declare-fun bs!1206952 () Bool)

(assert (= bs!1206952 (and d!1674662 d!1674590)))

(assert (=> bs!1206952 (= lambda!258944 lambda!258938)))

(declare-fun bs!1206953 () Bool)

(assert (= bs!1206953 (and d!1674662 b!5180759)))

(assert (=> bs!1206953 (not (= lambda!258944 lambda!258936))))

(assert (=> d!1674662 (= (nullableZipper!1199 (derivationStepZipper!1007 baseZ!62 (head!11079 (_1!35239 lt!2134953)))) (exists!1947 (derivationStepZipper!1007 baseZ!62 (head!11079 (_1!35239 lt!2134953))) lambda!258944))))

(declare-fun bs!1206954 () Bool)

(assert (= bs!1206954 d!1674662))

(assert (=> bs!1206954 m!6238860))

(declare-fun m!6240076 () Bool)

(assert (=> bs!1206954 m!6240076))

(assert (=> b!5180562 d!1674662))

(declare-fun d!1674664 () Bool)

(declare-fun c!892846 () Bool)

(assert (=> d!1674664 (= c!892846 ((_ is Nil!60176) lt!2135518))))

(declare-fun e!3227982 () (InoxSet C!29592))

(assert (=> d!1674664 (= (content!10669 lt!2135518) e!3227982)))

(declare-fun b!5180902 () Bool)

(assert (=> b!5180902 (= e!3227982 ((as const (Array C!29592 Bool)) false))))

(declare-fun b!5180903 () Bool)

(assert (=> b!5180903 (= e!3227982 ((_ map or) (store ((as const (Array C!29592 Bool)) false) (h!66624 lt!2135518) true) (content!10669 (t!373453 lt!2135518))))))

(assert (= (and d!1674664 c!892846) b!5180902))

(assert (= (and d!1674664 (not c!892846)) b!5180903))

(declare-fun m!6240078 () Bool)

(assert (=> b!5180903 m!6240078))

(declare-fun m!6240080 () Bool)

(assert (=> b!5180903 m!6240080))

(assert (=> d!1674512 d!1674664))

(assert (=> d!1674512 d!1674422))

(declare-fun d!1674666 () Bool)

(declare-fun c!892847 () Bool)

(assert (=> d!1674666 (= c!892847 ((_ is Nil!60176) lt!2134979))))

(declare-fun e!3227983 () (InoxSet C!29592))

(assert (=> d!1674666 (= (content!10669 lt!2134979) e!3227983)))

(declare-fun b!5180904 () Bool)

(assert (=> b!5180904 (= e!3227983 ((as const (Array C!29592 Bool)) false))))

(declare-fun b!5180905 () Bool)

(assert (=> b!5180905 (= e!3227983 ((_ map or) (store ((as const (Array C!29592 Bool)) false) (h!66624 lt!2134979) true) (content!10669 (t!373453 lt!2134979))))))

(assert (= (and d!1674666 c!892847) b!5180904))

(assert (= (and d!1674666 (not c!892847)) b!5180905))

(declare-fun m!6240082 () Bool)

(assert (=> b!5180905 m!6240082))

(declare-fun m!6240084 () Bool)

(assert (=> b!5180905 m!6240084))

(assert (=> d!1674512 d!1674666))

(declare-fun d!1674668 () Bool)

(declare-fun c!892848 () Bool)

(assert (=> d!1674668 (= c!892848 ((_ is Nil!60176) lt!2135297))))

(declare-fun e!3227984 () (InoxSet C!29592))

(assert (=> d!1674668 (= (content!10669 lt!2135297) e!3227984)))

(declare-fun b!5180906 () Bool)

(assert (=> b!5180906 (= e!3227984 ((as const (Array C!29592 Bool)) false))))

(declare-fun b!5180907 () Bool)

(assert (=> b!5180907 (= e!3227984 ((_ map or) (store ((as const (Array C!29592 Bool)) false) (h!66624 lt!2135297) true) (content!10669 (t!373453 lt!2135297))))))

(assert (= (and d!1674668 c!892848) b!5180906))

(assert (= (and d!1674668 (not c!892848)) b!5180907))

(declare-fun m!6240086 () Bool)

(assert (=> b!5180907 m!6240086))

(declare-fun m!6240088 () Bool)

(assert (=> b!5180907 m!6240088))

(assert (=> d!1674272 d!1674668))

(declare-fun d!1674670 () Bool)

(declare-fun c!892849 () Bool)

(assert (=> d!1674670 (= c!892849 ((_ is Nil!60176) (_1!35239 lt!2135206)))))

(declare-fun e!3227985 () (InoxSet C!29592))

(assert (=> d!1674670 (= (content!10669 (_1!35239 lt!2135206)) e!3227985)))

(declare-fun b!5180908 () Bool)

(assert (=> b!5180908 (= e!3227985 ((as const (Array C!29592 Bool)) false))))

(declare-fun b!5180909 () Bool)

(assert (=> b!5180909 (= e!3227985 ((_ map or) (store ((as const (Array C!29592 Bool)) false) (h!66624 (_1!35239 lt!2135206)) true) (content!10669 (t!373453 (_1!35239 lt!2135206)))))))

(assert (= (and d!1674670 c!892849) b!5180908))

(assert (= (and d!1674670 (not c!892849)) b!5180909))

(declare-fun m!6240090 () Bool)

(assert (=> b!5180909 m!6240090))

(assert (=> b!5180909 m!6240040))

(assert (=> d!1674272 d!1674670))

(declare-fun d!1674672 () Bool)

(declare-fun c!892850 () Bool)

(assert (=> d!1674672 (= c!892850 ((_ is Nil!60176) (_2!35239 lt!2135206)))))

(declare-fun e!3227986 () (InoxSet C!29592))

(assert (=> d!1674672 (= (content!10669 (_2!35239 lt!2135206)) e!3227986)))

(declare-fun b!5180910 () Bool)

(assert (=> b!5180910 (= e!3227986 ((as const (Array C!29592 Bool)) false))))

(declare-fun b!5180911 () Bool)

(assert (=> b!5180911 (= e!3227986 ((_ map or) (store ((as const (Array C!29592 Bool)) false) (h!66624 (_2!35239 lt!2135206)) true) (content!10669 (t!373453 (_2!35239 lt!2135206)))))))

(assert (= (and d!1674672 c!892850) b!5180910))

(assert (= (and d!1674672 (not c!892850)) b!5180911))

(declare-fun m!6240092 () Bool)

(assert (=> b!5180911 m!6240092))

(declare-fun m!6240094 () Bool)

(assert (=> b!5180911 m!6240094))

(assert (=> d!1674272 d!1674672))

(declare-fun b!5180913 () Bool)

(declare-fun res!2201107 () Bool)

(declare-fun e!3227987 () Bool)

(assert (=> b!5180913 (=> (not res!2201107) (not e!3227987))))

(assert (=> b!5180913 (= res!2201107 (= (head!11079 (tail!10178 (++!13177 lt!2134949 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176)))) (head!11079 (tail!10178 input!5817))))))

(declare-fun b!5180915 () Bool)

(declare-fun e!3227989 () Bool)

(assert (=> b!5180915 (= e!3227989 (>= (size!39697 (tail!10178 input!5817)) (size!39697 (tail!10178 (++!13177 lt!2134949 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176))))))))

(declare-fun b!5180912 () Bool)

(declare-fun e!3227988 () Bool)

(assert (=> b!5180912 (= e!3227988 e!3227987)))

(declare-fun res!2201106 () Bool)

(assert (=> b!5180912 (=> (not res!2201106) (not e!3227987))))

(assert (=> b!5180912 (= res!2201106 (not ((_ is Nil!60176) (tail!10178 input!5817))))))

(declare-fun b!5180914 () Bool)

(assert (=> b!5180914 (= e!3227987 (isPrefix!5794 (tail!10178 (tail!10178 (++!13177 lt!2134949 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176)))) (tail!10178 (tail!10178 input!5817))))))

(declare-fun d!1674674 () Bool)

(assert (=> d!1674674 e!3227989))

(declare-fun res!2201108 () Bool)

(assert (=> d!1674674 (=> res!2201108 e!3227989)))

(declare-fun lt!2135589 () Bool)

(assert (=> d!1674674 (= res!2201108 (not lt!2135589))))

(assert (=> d!1674674 (= lt!2135589 e!3227988)))

(declare-fun res!2201105 () Bool)

(assert (=> d!1674674 (=> res!2201105 e!3227988)))

(assert (=> d!1674674 (= res!2201105 ((_ is Nil!60176) (tail!10178 (++!13177 lt!2134949 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176)))))))

(assert (=> d!1674674 (= (isPrefix!5794 (tail!10178 (++!13177 lt!2134949 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176))) (tail!10178 input!5817)) lt!2135589)))

(assert (= (and d!1674674 (not res!2201105)) b!5180912))

(assert (= (and b!5180912 res!2201106) b!5180913))

(assert (= (and b!5180913 res!2201107) b!5180914))

(assert (= (and d!1674674 (not res!2201108)) b!5180915))

(assert (=> b!5180913 m!6239614))

(declare-fun m!6240096 () Bool)

(assert (=> b!5180913 m!6240096))

(assert (=> b!5180913 m!6238588))

(assert (=> b!5180913 m!6239828))

(assert (=> b!5180915 m!6238588))

(assert (=> b!5180915 m!6239444))

(assert (=> b!5180915 m!6239614))

(declare-fun m!6240098 () Bool)

(assert (=> b!5180915 m!6240098))

(assert (=> b!5180914 m!6239614))

(declare-fun m!6240100 () Bool)

(assert (=> b!5180914 m!6240100))

(assert (=> b!5180914 m!6238588))

(assert (=> b!5180914 m!6239446))

(assert (=> b!5180914 m!6240100))

(assert (=> b!5180914 m!6239446))

(declare-fun m!6240102 () Bool)

(assert (=> b!5180914 m!6240102))

(assert (=> b!5180651 d!1674674))

(declare-fun d!1674676 () Bool)

(assert (=> d!1674676 (= (tail!10178 (++!13177 lt!2134949 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176))) (t!373453 (++!13177 lt!2134949 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176))))))

(assert (=> b!5180651 d!1674676))

(assert (=> b!5180651 d!1674408))

(assert (=> bm!364125 d!1674128))

(declare-fun d!1674678 () Bool)

(assert (=> d!1674678 (= (isEmpty!32219 (_1!35239 lt!2135459)) ((_ is Nil!60176) (_1!35239 lt!2135459)))))

(assert (=> b!5180664 d!1674678))

(declare-fun d!1674680 () Bool)

(assert (=> d!1674680 (= (head!11079 (tail!10178 lt!2134949)) (h!66624 (tail!10178 lt!2134949)))))

(assert (=> b!5180805 d!1674680))

(declare-fun d!1674682 () Bool)

(assert (=> d!1674682 (= (head!11079 (tail!10178 input!5817)) (h!66624 (tail!10178 input!5817)))))

(assert (=> b!5180805 d!1674682))

(declare-fun d!1674684 () Bool)

(declare-fun lt!2135590 () Int)

(assert (=> d!1674684 (>= lt!2135590 0)))

(declare-fun e!3227990 () Int)

(assert (=> d!1674684 (= lt!2135590 e!3227990)))

(declare-fun c!892851 () Bool)

(assert (=> d!1674684 (= c!892851 ((_ is Nil!60176) lt!2135334))))

(assert (=> d!1674684 (= (size!39697 lt!2135334) lt!2135590)))

(declare-fun b!5180916 () Bool)

(assert (=> b!5180916 (= e!3227990 0)))

(declare-fun b!5180917 () Bool)

(assert (=> b!5180917 (= e!3227990 (+ 1 (size!39697 (t!373453 lt!2135334))))))

(assert (= (and d!1674684 c!892851) b!5180916))

(assert (= (and d!1674684 (not c!892851)) b!5180917))

(declare-fun m!6240104 () Bool)

(assert (=> b!5180917 m!6240104))

(assert (=> b!5180518 d!1674684))

(assert (=> b!5180518 d!1674218))

(declare-fun d!1674686 () Bool)

(declare-fun lt!2135591 () Int)

(assert (=> d!1674686 (>= lt!2135591 0)))

(declare-fun e!3227991 () Int)

(assert (=> d!1674686 (= lt!2135591 e!3227991)))

(declare-fun c!892852 () Bool)

(assert (=> d!1674686 (= c!892852 ((_ is Nil!60176) (getSuffix!3442 input!5817 lt!2134949)))))

(assert (=> d!1674686 (= (size!39697 (getSuffix!3442 input!5817 lt!2134949)) lt!2135591)))

(declare-fun b!5180918 () Bool)

(assert (=> b!5180918 (= e!3227991 0)))

(declare-fun b!5180919 () Bool)

(assert (=> b!5180919 (= e!3227991 (+ 1 (size!39697 (t!373453 (getSuffix!3442 input!5817 lt!2134949)))))))

(assert (= (and d!1674686 c!892852) b!5180918))

(assert (= (and d!1674686 (not c!892852)) b!5180919))

(declare-fun m!6240106 () Bool)

(assert (=> b!5180919 m!6240106))

(assert (=> b!5180518 d!1674686))

(declare-fun d!1674688 () Bool)

(declare-fun c!892853 () Bool)

(assert (=> d!1674688 (= c!892853 ((_ is Cons!60176) (t!373453 (t!373453 testedP!294))))))

(declare-fun e!3227992 () (InoxSet Context!8090))

(assert (=> d!1674688 (= (derivationZipper!284 (derivationStepZipper!1007 (derivationStepZipper!1007 baseZ!62 (h!66624 testedP!294)) (h!66624 (t!373453 testedP!294))) (t!373453 (t!373453 testedP!294))) e!3227992)))

(declare-fun b!5180920 () Bool)

(assert (=> b!5180920 (= e!3227992 (derivationZipper!284 (derivationStepZipper!1007 (derivationStepZipper!1007 (derivationStepZipper!1007 baseZ!62 (h!66624 testedP!294)) (h!66624 (t!373453 testedP!294))) (h!66624 (t!373453 (t!373453 testedP!294)))) (t!373453 (t!373453 (t!373453 testedP!294)))))))

(declare-fun b!5180921 () Bool)

(assert (=> b!5180921 (= e!3227992 (derivationStepZipper!1007 (derivationStepZipper!1007 baseZ!62 (h!66624 testedP!294)) (h!66624 (t!373453 testedP!294))))))

(assert (= (and d!1674688 c!892853) b!5180920))

(assert (= (and d!1674688 (not c!892853)) b!5180921))

(assert (=> b!5180920 m!6239896))

(declare-fun m!6240108 () Bool)

(assert (=> b!5180920 m!6240108))

(assert (=> b!5180920 m!6240108))

(declare-fun m!6240110 () Bool)

(assert (=> b!5180920 m!6240110))

(assert (=> b!5180785 d!1674688))

(declare-fun bs!1206955 () Bool)

(declare-fun d!1674690 () Bool)

(assert (= bs!1206955 (and d!1674690 d!1674376)))

(declare-fun lambda!258945 () Int)

(assert (=> bs!1206955 (= (= (h!66624 (t!373453 testedP!294)) (head!11079 (_1!35239 lt!2134953))) (= lambda!258945 lambda!258908))))

(declare-fun bs!1206956 () Bool)

(assert (= bs!1206956 (and d!1674690 d!1674430)))

(assert (=> bs!1206956 (= (= (h!66624 (t!373453 testedP!294)) (head!11079 (_1!35239 lt!2134956))) (= lambda!258945 lambda!258912))))

(declare-fun bs!1206957 () Bool)

(assert (= bs!1206957 (and d!1674690 d!1674436)))

(assert (=> bs!1206957 (= (= (h!66624 (t!373453 testedP!294)) call!364050) (= lambda!258945 lambda!258913))))

(declare-fun bs!1206958 () Bool)

(assert (= bs!1206958 (and d!1674690 d!1674362)))

(assert (=> bs!1206958 (= (= (h!66624 (t!373453 testedP!294)) call!364090) (= lambda!258945 lambda!258907))))

(declare-fun bs!1206959 () Bool)

(assert (= bs!1206959 (and d!1674690 d!1674228)))

(assert (=> bs!1206959 (= (= (h!66624 (t!373453 testedP!294)) lt!2134944) (= lambda!258945 lambda!258882))))

(declare-fun bs!1206960 () Bool)

(assert (= bs!1206960 (and d!1674690 d!1674604)))

(assert (=> bs!1206960 (= (= (h!66624 (t!373453 testedP!294)) (h!66624 lt!2134949)) (= lambda!258945 lambda!258939))))

(declare-fun bs!1206961 () Bool)

(assert (= bs!1206961 (and d!1674690 d!1674572)))

(assert (=> bs!1206961 (= (= (h!66624 (t!373453 testedP!294)) (h!66624 testedP!294)) (= lambda!258945 lambda!258937))))

(assert (=> d!1674690 true))

(assert (=> d!1674690 (= (derivationStepZipper!1007 (derivationStepZipper!1007 baseZ!62 (h!66624 testedP!294)) (h!66624 (t!373453 testedP!294))) (flatMap!464 (derivationStepZipper!1007 baseZ!62 (h!66624 testedP!294)) lambda!258945))))

(declare-fun bs!1206962 () Bool)

(assert (= bs!1206962 d!1674690))

(assert (=> bs!1206962 m!6238606))

(declare-fun m!6240112 () Bool)

(assert (=> bs!1206962 m!6240112))

(assert (=> b!5180785 d!1674690))

(declare-fun d!1674692 () Bool)

(declare-fun lt!2135592 () Int)

(assert (=> d!1674692 (>= lt!2135592 0)))

(declare-fun e!3227993 () Int)

(assert (=> d!1674692 (= lt!2135592 e!3227993)))

(declare-fun c!892854 () Bool)

(assert (=> d!1674692 (= c!892854 ((_ is Nil!60176) lt!2135438))))

(assert (=> d!1674692 (= (size!39697 lt!2135438) lt!2135592)))

(declare-fun b!5180922 () Bool)

(assert (=> b!5180922 (= e!3227993 0)))

(declare-fun b!5180923 () Bool)

(assert (=> b!5180923 (= e!3227993 (+ 1 (size!39697 (t!373453 lt!2135438))))))

(assert (= (and d!1674692 c!892854) b!5180922))

(assert (= (and d!1674692 (not c!892854)) b!5180923))

(declare-fun m!6240114 () Bool)

(assert (=> b!5180923 m!6240114))

(assert (=> b!5180639 d!1674692))

(assert (=> b!5180639 d!1674218))

(declare-fun d!1674694 () Bool)

(declare-fun lt!2135593 () Int)

(assert (=> d!1674694 (>= lt!2135593 0)))

(declare-fun e!3227994 () Int)

(assert (=> d!1674694 (= lt!2135593 e!3227994)))

(declare-fun c!892855 () Bool)

(assert (=> d!1674694 (= c!892855 ((_ is Nil!60176) (Cons!60176 lt!2135212 Nil!60176)))))

(assert (=> d!1674694 (= (size!39697 (Cons!60176 lt!2135212 Nil!60176)) lt!2135593)))

(declare-fun b!5180924 () Bool)

(assert (=> b!5180924 (= e!3227994 0)))

(declare-fun b!5180925 () Bool)

(assert (=> b!5180925 (= e!3227994 (+ 1 (size!39697 (t!373453 (Cons!60176 lt!2135212 Nil!60176)))))))

(assert (= (and d!1674694 c!892855) b!5180924))

(assert (= (and d!1674694 (not c!892855)) b!5180925))

(declare-fun m!6240116 () Bool)

(assert (=> b!5180925 m!6240116))

(assert (=> b!5180639 d!1674694))

(declare-fun d!1674696 () Bool)

(declare-fun lt!2135594 () Int)

(assert (=> d!1674696 (>= lt!2135594 0)))

(declare-fun e!3227995 () Int)

(assert (=> d!1674696 (= lt!2135594 e!3227995)))

(declare-fun c!892856 () Bool)

(assert (=> d!1674696 (= c!892856 ((_ is Nil!60176) lt!2135543))))

(assert (=> d!1674696 (= (size!39697 lt!2135543) lt!2135594)))

(declare-fun b!5180926 () Bool)

(assert (=> b!5180926 (= e!3227995 0)))

(declare-fun b!5180927 () Bool)

(assert (=> b!5180927 (= e!3227995 (+ 1 (size!39697 (t!373453 lt!2135543))))))

(assert (= (and d!1674696 c!892856) b!5180926))

(assert (= (and d!1674696 (not c!892856)) b!5180927))

(declare-fun m!6240118 () Bool)

(assert (=> b!5180927 m!6240118))

(assert (=> b!5180773 d!1674696))

(assert (=> b!5180773 d!1674152))

(declare-fun d!1674698 () Bool)

(declare-fun lt!2135595 () Int)

(assert (=> d!1674698 (>= lt!2135595 0)))

(declare-fun e!3227996 () Int)

(assert (=> d!1674698 (= lt!2135595 e!3227996)))

(declare-fun c!892857 () Bool)

(assert (=> d!1674698 (= c!892857 ((_ is Nil!60176) lt!2134946))))

(assert (=> d!1674698 (= (size!39697 lt!2134946) lt!2135595)))

(declare-fun b!5180928 () Bool)

(assert (=> b!5180928 (= e!3227996 0)))

(declare-fun b!5180929 () Bool)

(assert (=> b!5180929 (= e!3227996 (+ 1 (size!39697 (t!373453 lt!2134946))))))

(assert (= (and d!1674698 c!892857) b!5180928))

(assert (= (and d!1674698 (not c!892857)) b!5180929))

(declare-fun m!6240120 () Bool)

(assert (=> b!5180929 m!6240120))

(assert (=> b!5180773 d!1674698))

(declare-fun d!1674700 () Bool)

(declare-fun c!892858 () Bool)

(assert (=> d!1674700 (= c!892858 ((_ is Nil!60176) lt!2135296))))

(declare-fun e!3227997 () (InoxSet C!29592))

(assert (=> d!1674700 (= (content!10669 lt!2135296) e!3227997)))

(declare-fun b!5180930 () Bool)

(assert (=> b!5180930 (= e!3227997 ((as const (Array C!29592 Bool)) false))))

(declare-fun b!5180931 () Bool)

(assert (=> b!5180931 (= e!3227997 ((_ map or) (store ((as const (Array C!29592 Bool)) false) (h!66624 lt!2135296) true) (content!10669 (t!373453 lt!2135296))))))

(assert (= (and d!1674700 c!892858) b!5180930))

(assert (= (and d!1674700 (not c!892858)) b!5180931))

(declare-fun m!6240122 () Bool)

(assert (=> b!5180931 m!6240122))

(declare-fun m!6240124 () Bool)

(assert (=> b!5180931 m!6240124))

(assert (=> d!1674270 d!1674700))

(assert (=> d!1674270 d!1674616))

(declare-fun d!1674702 () Bool)

(declare-fun c!892859 () Bool)

(assert (=> d!1674702 (= c!892859 ((_ is Nil!60176) lt!2135230))))

(declare-fun e!3227998 () (InoxSet C!29592))

(assert (=> d!1674702 (= (content!10669 lt!2135230) e!3227998)))

(declare-fun b!5180932 () Bool)

(assert (=> b!5180932 (= e!3227998 ((as const (Array C!29592 Bool)) false))))

(declare-fun b!5180933 () Bool)

(assert (=> b!5180933 (= e!3227998 ((_ map or) (store ((as const (Array C!29592 Bool)) false) (h!66624 lt!2135230) true) (content!10669 (t!373453 lt!2135230))))))

(assert (= (and d!1674702 c!892859) b!5180932))

(assert (= (and d!1674702 (not c!892859)) b!5180933))

(declare-fun m!6240126 () Bool)

(assert (=> b!5180933 m!6240126))

(declare-fun m!6240128 () Bool)

(assert (=> b!5180933 m!6240128))

(assert (=> d!1674270 d!1674702))

(declare-fun d!1674704 () Bool)

(declare-fun res!2201109 () Bool)

(declare-fun e!3227999 () Bool)

(assert (=> d!1674704 (=> res!2201109 e!3227999)))

(assert (=> d!1674704 (= res!2201109 ((_ is Nil!60175) (exprs!4545 setElem!32409)))))

(assert (=> d!1674704 (= (forall!14172 (exprs!4545 setElem!32409) lambda!258909) e!3227999)))

(declare-fun b!5180934 () Bool)

(declare-fun e!3228000 () Bool)

(assert (=> b!5180934 (= e!3227999 e!3228000)))

(declare-fun res!2201110 () Bool)

(assert (=> b!5180934 (=> (not res!2201110) (not e!3228000))))

(assert (=> b!5180934 (= res!2201110 (dynLambda!23888 lambda!258909 (h!66623 (exprs!4545 setElem!32409))))))

(declare-fun b!5180935 () Bool)

(assert (=> b!5180935 (= e!3228000 (forall!14172 (t!373452 (exprs!4545 setElem!32409)) lambda!258909))))

(assert (= (and d!1674704 (not res!2201109)) b!5180934))

(assert (= (and b!5180934 res!2201110) b!5180935))

(declare-fun b_lambda!201089 () Bool)

(assert (=> (not b_lambda!201089) (not b!5180934)))

(declare-fun m!6240130 () Bool)

(assert (=> b!5180934 m!6240130))

(declare-fun m!6240132 () Bool)

(assert (=> b!5180935 m!6240132))

(assert (=> d!1674398 d!1674704))

(declare-fun d!1674706 () Bool)

(assert (=> d!1674706 true))

(declare-fun setRes!32417 () Bool)

(assert (=> d!1674706 setRes!32417))

(declare-fun condSetEmpty!32417 () Bool)

(declare-fun res!2201113 () (InoxSet Context!8090))

(assert (=> d!1674706 (= condSetEmpty!32417 (= res!2201113 ((as const (Array Context!8090 Bool)) false)))))

(assert (=> d!1674706 (= (choose!38502 z!4581 lambda!258882) res!2201113)))

(declare-fun setIsEmpty!32417 () Bool)

(assert (=> setIsEmpty!32417 setRes!32417))

(declare-fun setNonEmpty!32417 () Bool)

(declare-fun setElem!32417 () Context!8090)

(declare-fun tp!1452976 () Bool)

(declare-fun e!3228003 () Bool)

(assert (=> setNonEmpty!32417 (= setRes!32417 (and tp!1452976 (inv!79899 setElem!32417) e!3228003))))

(declare-fun setRest!32417 () (InoxSet Context!8090))

(assert (=> setNonEmpty!32417 (= res!2201113 ((_ map or) (store ((as const (Array Context!8090 Bool)) false) setElem!32417 true) setRest!32417))))

(declare-fun b!5180938 () Bool)

(declare-fun tp!1452977 () Bool)

(assert (=> b!5180938 (= e!3228003 tp!1452977)))

(assert (= (and d!1674706 condSetEmpty!32417) setIsEmpty!32417))

(assert (= (and d!1674706 (not condSetEmpty!32417)) setNonEmpty!32417))

(assert (= setNonEmpty!32417 b!5180938))

(declare-fun m!6240134 () Bool)

(assert (=> setNonEmpty!32417 m!6240134))

(assert (=> d!1674504 d!1674706))

(declare-fun d!1674708 () Bool)

(assert (=> d!1674708 (= (tail!10178 call!364049) (t!373453 call!364049))))

(assert (=> bm!364120 d!1674708))

(declare-fun d!1674710 () Bool)

(declare-fun e!3228006 () Bool)

(assert (=> d!1674710 e!3228006))

(declare-fun res!2201116 () Bool)

(assert (=> d!1674710 (=> (not res!2201116) (not e!3228006))))

(declare-fun lt!2135598 () List!60301)

(declare-fun noDuplicate!1139 (List!60301) Bool)

(assert (=> d!1674710 (= res!2201116 (noDuplicate!1139 lt!2135598))))

(declare-fun choose!38507 ((InoxSet Context!8090)) List!60301)

(assert (=> d!1674710 (= lt!2135598 (choose!38507 lt!2134952))))

(assert (=> d!1674710 (= (toList!8462 lt!2134952) lt!2135598)))

(declare-fun b!5180941 () Bool)

(declare-fun content!10671 (List!60301) (InoxSet Context!8090))

(assert (=> b!5180941 (= e!3228006 (= (content!10671 lt!2135598) lt!2134952))))

(assert (= (and d!1674710 res!2201116) b!5180941))

(declare-fun m!6240136 () Bool)

(assert (=> d!1674710 m!6240136))

(declare-fun m!6240138 () Bool)

(assert (=> d!1674710 m!6240138))

(declare-fun m!6240140 () Bool)

(assert (=> b!5180941 m!6240140))

(assert (=> bm!364107 d!1674710))

(declare-fun d!1674712 () Bool)

(declare-fun lt!2135599 () Int)

(assert (=> d!1674712 (>= lt!2135599 0)))

(declare-fun e!3228007 () Int)

(assert (=> d!1674712 (= lt!2135599 e!3228007)))

(declare-fun c!892860 () Bool)

(assert (=> d!1674712 (= c!892860 ((_ is Nil!60176) lt!2135518))))

(assert (=> d!1674712 (= (size!39697 lt!2135518) lt!2135599)))

(declare-fun b!5180942 () Bool)

(assert (=> b!5180942 (= e!3228007 0)))

(declare-fun b!5180943 () Bool)

(assert (=> b!5180943 (= e!3228007 (+ 1 (size!39697 (t!373453 lt!2135518))))))

(assert (= (and d!1674712 c!892860) b!5180942))

(assert (= (and d!1674712 (not c!892860)) b!5180943))

(declare-fun m!6240142 () Bool)

(assert (=> b!5180943 m!6240142))

(assert (=> b!5180724 d!1674712))

(assert (=> b!5180724 d!1674152))

(declare-fun d!1674714 () Bool)

(declare-fun lt!2135600 () Int)

(assert (=> d!1674714 (>= lt!2135600 0)))

(declare-fun e!3228008 () Int)

(assert (=> d!1674714 (= lt!2135600 e!3228008)))

(declare-fun c!892861 () Bool)

(assert (=> d!1674714 (= c!892861 ((_ is Nil!60176) lt!2134979))))

(assert (=> d!1674714 (= (size!39697 lt!2134979) lt!2135600)))

(declare-fun b!5180944 () Bool)

(assert (=> b!5180944 (= e!3228008 0)))

(declare-fun b!5180945 () Bool)

(assert (=> b!5180945 (= e!3228008 (+ 1 (size!39697 (t!373453 lt!2134979))))))

(assert (= (and d!1674714 c!892861) b!5180944))

(assert (= (and d!1674714 (not c!892861)) b!5180945))

(declare-fun m!6240144 () Bool)

(assert (=> b!5180945 m!6240144))

(assert (=> b!5180724 d!1674714))

(assert (=> bm!364135 d!1674590))

(declare-fun b!5180947 () Bool)

(declare-fun e!3228010 () List!60300)

(assert (=> b!5180947 (= e!3228010 (Cons!60176 (h!66624 (t!373453 testedP!294)) (++!13177 (t!373453 (t!373453 testedP!294)) lt!2135433)))))

(declare-fun b!5180946 () Bool)

(assert (=> b!5180946 (= e!3228010 lt!2135433)))

(declare-fun b!5180948 () Bool)

(declare-fun res!2201117 () Bool)

(declare-fun e!3228009 () Bool)

(assert (=> b!5180948 (=> (not res!2201117) (not e!3228009))))

(declare-fun lt!2135601 () List!60300)

(assert (=> b!5180948 (= res!2201117 (= (size!39697 lt!2135601) (+ (size!39697 (t!373453 testedP!294)) (size!39697 lt!2135433))))))

(declare-fun b!5180949 () Bool)

(assert (=> b!5180949 (= e!3228009 (or (not (= lt!2135433 Nil!60176)) (= lt!2135601 (t!373453 testedP!294))))))

(declare-fun d!1674716 () Bool)

(assert (=> d!1674716 e!3228009))

(declare-fun res!2201118 () Bool)

(assert (=> d!1674716 (=> (not res!2201118) (not e!3228009))))

(assert (=> d!1674716 (= res!2201118 (= (content!10669 lt!2135601) ((_ map or) (content!10669 (t!373453 testedP!294)) (content!10669 lt!2135433))))))

(assert (=> d!1674716 (= lt!2135601 e!3228010)))

(declare-fun c!892862 () Bool)

(assert (=> d!1674716 (= c!892862 ((_ is Nil!60176) (t!373453 testedP!294)))))

(assert (=> d!1674716 (= (++!13177 (t!373453 testedP!294) lt!2135433) lt!2135601)))

(assert (= (and d!1674716 c!892862) b!5180946))

(assert (= (and d!1674716 (not c!892862)) b!5180947))

(assert (= (and d!1674716 res!2201118) b!5180948))

(assert (= (and b!5180948 res!2201117) b!5180949))

(declare-fun m!6240146 () Bool)

(assert (=> b!5180947 m!6240146))

(declare-fun m!6240148 () Bool)

(assert (=> b!5180948 m!6240148))

(assert (=> b!5180948 m!6238664))

(declare-fun m!6240150 () Bool)

(assert (=> b!5180948 m!6240150))

(declare-fun m!6240152 () Bool)

(assert (=> d!1674716 m!6240152))

(assert (=> d!1674716 m!6239522))

(declare-fun m!6240154 () Bool)

(assert (=> d!1674716 m!6240154))

(assert (=> d!1674440 d!1674716))

(assert (=> d!1674440 d!1674642))

(assert (=> d!1674440 d!1674606))

(declare-fun d!1674718 () Bool)

(assert (=> d!1674718 (= (head!11079 call!364049) (h!66624 call!364049))))

(assert (=> bm!364122 d!1674718))

(declare-fun b!5180951 () Bool)

(declare-fun e!3228012 () List!60300)

(assert (=> b!5180951 (= e!3228012 (Cons!60176 (h!66624 (t!373453 lt!2134949)) (++!13177 (t!373453 (t!373453 lt!2134949)) (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176))))))

(declare-fun b!5180950 () Bool)

(assert (=> b!5180950 (= e!3228012 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176))))

(declare-fun b!5180952 () Bool)

(declare-fun res!2201119 () Bool)

(declare-fun e!3228011 () Bool)

(assert (=> b!5180952 (=> (not res!2201119) (not e!3228011))))

(declare-fun lt!2135602 () List!60300)

(assert (=> b!5180952 (= res!2201119 (= (size!39697 lt!2135602) (+ (size!39697 (t!373453 lt!2134949)) (size!39697 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176)))))))

(declare-fun b!5180953 () Bool)

(assert (=> b!5180953 (= e!3228011 (or (not (= (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176) Nil!60176)) (= lt!2135602 (t!373453 lt!2134949))))))

(declare-fun d!1674720 () Bool)

(assert (=> d!1674720 e!3228011))

(declare-fun res!2201120 () Bool)

(assert (=> d!1674720 (=> (not res!2201120) (not e!3228011))))

(assert (=> d!1674720 (= res!2201120 (= (content!10669 lt!2135602) ((_ map or) (content!10669 (t!373453 lt!2134949)) (content!10669 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176)))))))

(assert (=> d!1674720 (= lt!2135602 e!3228012)))

(declare-fun c!892863 () Bool)

(assert (=> d!1674720 (= c!892863 ((_ is Nil!60176) (t!373453 lt!2134949)))))

(assert (=> d!1674720 (= (++!13177 (t!373453 lt!2134949) (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176)) lt!2135602)))

(assert (= (and d!1674720 c!892863) b!5180950))

(assert (= (and d!1674720 (not c!892863)) b!5180951))

(assert (= (and d!1674720 res!2201120) b!5180952))

(assert (= (and b!5180952 res!2201119) b!5180953))

(declare-fun m!6240156 () Bool)

(assert (=> b!5180951 m!6240156))

(declare-fun m!6240158 () Bool)

(assert (=> b!5180952 m!6240158))

(assert (=> b!5180952 m!6238866))

(assert (=> b!5180952 m!6239598))

(declare-fun m!6240160 () Bool)

(assert (=> d!1674720 m!6240160))

(assert (=> d!1674720 m!6239954))

(assert (=> d!1674720 m!6239602))

(assert (=> b!5180646 d!1674720))

(declare-fun d!1674722 () Bool)

(declare-fun lt!2135603 () Int)

(assert (=> d!1674722 (>= lt!2135603 0)))

(declare-fun e!3228013 () Int)

(assert (=> d!1674722 (= lt!2135603 e!3228013)))

(declare-fun c!892864 () Bool)

(assert (=> d!1674722 (= c!892864 ((_ is Nil!60176) (t!373453 (_1!35239 lt!2135034))))))

(assert (=> d!1674722 (= (size!39697 (t!373453 (_1!35239 lt!2135034))) lt!2135603)))

(declare-fun b!5180954 () Bool)

(assert (=> b!5180954 (= e!3228013 0)))

(declare-fun b!5180955 () Bool)

(assert (=> b!5180955 (= e!3228013 (+ 1 (size!39697 (t!373453 (t!373453 (_1!35239 lt!2135034))))))))

(assert (= (and d!1674722 c!892864) b!5180954))

(assert (= (and d!1674722 (not c!892864)) b!5180955))

(declare-fun m!6240162 () Bool)

(assert (=> b!5180955 m!6240162))

(assert (=> b!5180809 d!1674722))

(declare-fun d!1674724 () Bool)

(declare-fun lt!2135604 () Int)

(assert (=> d!1674724 (>= lt!2135604 0)))

(declare-fun e!3228014 () Int)

(assert (=> d!1674724 (= lt!2135604 e!3228014)))

(declare-fun c!892865 () Bool)

(assert (=> d!1674724 (= c!892865 ((_ is Nil!60176) lt!2135297))))

(assert (=> d!1674724 (= (size!39697 lt!2135297) lt!2135604)))

(declare-fun b!5180956 () Bool)

(assert (=> b!5180956 (= e!3228014 0)))

(declare-fun b!5180957 () Bool)

(assert (=> b!5180957 (= e!3228014 (+ 1 (size!39697 (t!373453 lt!2135297))))))

(assert (= (and d!1674724 c!892865) b!5180956))

(assert (= (and d!1674724 (not c!892865)) b!5180957))

(declare-fun m!6240164 () Bool)

(assert (=> b!5180957 m!6240164))

(assert (=> b!5180480 d!1674724))

(assert (=> b!5180480 d!1674576))

(declare-fun d!1674726 () Bool)

(declare-fun lt!2135605 () Int)

(assert (=> d!1674726 (>= lt!2135605 0)))

(declare-fun e!3228015 () Int)

(assert (=> d!1674726 (= lt!2135605 e!3228015)))

(declare-fun c!892866 () Bool)

(assert (=> d!1674726 (= c!892866 ((_ is Nil!60176) (_2!35239 lt!2135206)))))

(assert (=> d!1674726 (= (size!39697 (_2!35239 lt!2135206)) lt!2135605)))

(declare-fun b!5180958 () Bool)

(assert (=> b!5180958 (= e!3228015 0)))

(declare-fun b!5180959 () Bool)

(assert (=> b!5180959 (= e!3228015 (+ 1 (size!39697 (t!373453 (_2!35239 lt!2135206)))))))

(assert (= (and d!1674726 c!892866) b!5180958))

(assert (= (and d!1674726 (not c!892866)) b!5180959))

(declare-fun m!6240166 () Bool)

(assert (=> b!5180959 m!6240166))

(assert (=> b!5180480 d!1674726))

(declare-fun d!1674728 () Bool)

(assert (=> d!1674728 (= call!364049 lt!2135376)))

(declare-fun lt!2135606 () Unit!152123)

(assert (=> d!1674728 (= lt!2135606 (choose!38498 lt!2135047 call!364049 lt!2135047 lt!2135376 input!5817))))

(assert (=> d!1674728 (isPrefix!5794 lt!2135047 input!5817)))

(assert (=> d!1674728 (= (lemmaSamePrefixThenSameSuffix!2715 lt!2135047 call!364049 lt!2135047 lt!2135376 input!5817) lt!2135606)))

(declare-fun bs!1206963 () Bool)

(assert (= bs!1206963 d!1674728))

(declare-fun m!6240168 () Bool)

(assert (=> bs!1206963 m!6240168))

(declare-fun m!6240170 () Bool)

(assert (=> bs!1206963 m!6240170))

(assert (=> d!1674392 d!1674728))

(declare-fun b!5180961 () Bool)

(declare-fun e!3228017 () List!60300)

(assert (=> b!5180961 (= e!3228017 (Cons!60176 (h!66624 (_1!35239 lt!2135378)) (++!13177 (t!373453 (_1!35239 lt!2135378)) (_2!35239 lt!2135378))))))

(declare-fun b!5180960 () Bool)

(assert (=> b!5180960 (= e!3228017 (_2!35239 lt!2135378))))

(declare-fun b!5180962 () Bool)

(declare-fun res!2201121 () Bool)

(declare-fun e!3228016 () Bool)

(assert (=> b!5180962 (=> (not res!2201121) (not e!3228016))))

(declare-fun lt!2135607 () List!60300)

(assert (=> b!5180962 (= res!2201121 (= (size!39697 lt!2135607) (+ (size!39697 (_1!35239 lt!2135378)) (size!39697 (_2!35239 lt!2135378)))))))

(declare-fun b!5180963 () Bool)

(assert (=> b!5180963 (= e!3228016 (or (not (= (_2!35239 lt!2135378) Nil!60176)) (= lt!2135607 (_1!35239 lt!2135378))))))

(declare-fun d!1674730 () Bool)

(assert (=> d!1674730 e!3228016))

(declare-fun res!2201122 () Bool)

(assert (=> d!1674730 (=> (not res!2201122) (not e!3228016))))

(assert (=> d!1674730 (= res!2201122 (= (content!10669 lt!2135607) ((_ map or) (content!10669 (_1!35239 lt!2135378)) (content!10669 (_2!35239 lt!2135378)))))))

(assert (=> d!1674730 (= lt!2135607 e!3228017)))

(declare-fun c!892867 () Bool)

(assert (=> d!1674730 (= c!892867 ((_ is Nil!60176) (_1!35239 lt!2135378)))))

(assert (=> d!1674730 (= (++!13177 (_1!35239 lt!2135378) (_2!35239 lt!2135378)) lt!2135607)))

(assert (= (and d!1674730 c!892867) b!5180960))

(assert (= (and d!1674730 (not c!892867)) b!5180961))

(assert (= (and d!1674730 res!2201122) b!5180962))

(assert (= (and b!5180962 res!2201121) b!5180963))

(declare-fun m!6240172 () Bool)

(assert (=> b!5180961 m!6240172))

(declare-fun m!6240174 () Bool)

(assert (=> b!5180962 m!6240174))

(assert (=> b!5180962 m!6239434))

(declare-fun m!6240176 () Bool)

(assert (=> b!5180962 m!6240176))

(declare-fun m!6240178 () Bool)

(assert (=> d!1674730 m!6240178))

(declare-fun m!6240180 () Bool)

(assert (=> d!1674730 m!6240180))

(declare-fun m!6240182 () Bool)

(assert (=> d!1674730 m!6240182))

(assert (=> d!1674392 d!1674730))

(declare-fun b!5180965 () Bool)

(declare-fun e!3228019 () List!60300)

(assert (=> b!5180965 (= e!3228019 (Cons!60176 (h!66624 lt!2135047) (++!13177 (t!373453 lt!2135047) call!364049)))))

(declare-fun b!5180964 () Bool)

(assert (=> b!5180964 (= e!3228019 call!364049)))

(declare-fun b!5180966 () Bool)

(declare-fun res!2201123 () Bool)

(declare-fun e!3228018 () Bool)

(assert (=> b!5180966 (=> (not res!2201123) (not e!3228018))))

(declare-fun lt!2135608 () List!60300)

(assert (=> b!5180966 (= res!2201123 (= (size!39697 lt!2135608) (+ (size!39697 lt!2135047) (size!39697 call!364049))))))

(declare-fun b!5180967 () Bool)

(assert (=> b!5180967 (= e!3228018 (or (not (= call!364049 Nil!60176)) (= lt!2135608 lt!2135047)))))

(declare-fun d!1674732 () Bool)

(assert (=> d!1674732 e!3228018))

(declare-fun res!2201124 () Bool)

(assert (=> d!1674732 (=> (not res!2201124) (not e!3228018))))

(assert (=> d!1674732 (= res!2201124 (= (content!10669 lt!2135608) ((_ map or) (content!10669 lt!2135047) (content!10669 call!364049))))))

(assert (=> d!1674732 (= lt!2135608 e!3228019)))

(declare-fun c!892868 () Bool)

(assert (=> d!1674732 (= c!892868 ((_ is Nil!60176) lt!2135047))))

(assert (=> d!1674732 (= (++!13177 lt!2135047 call!364049) lt!2135608)))

(assert (= (and d!1674732 c!892868) b!5180964))

(assert (= (and d!1674732 (not c!892868)) b!5180965))

(assert (= (and d!1674732 res!2201124) b!5180966))

(assert (= (and b!5180966 res!2201123) b!5180967))

(declare-fun m!6240184 () Bool)

(assert (=> b!5180965 m!6240184))

(declare-fun m!6240186 () Bool)

(assert (=> b!5180966 m!6240186))

(assert (=> b!5180966 m!6239414))

(declare-fun m!6240188 () Bool)

(assert (=> b!5180966 m!6240188))

(declare-fun m!6240190 () Bool)

(assert (=> d!1674732 m!6240190))

(declare-fun m!6240192 () Bool)

(assert (=> d!1674732 m!6240192))

(declare-fun m!6240194 () Bool)

(assert (=> d!1674732 m!6240194))

(assert (=> d!1674392 d!1674732))

(declare-fun b!5180969 () Bool)

(declare-fun res!2201127 () Bool)

(declare-fun e!3228020 () Bool)

(assert (=> b!5180969 (=> (not res!2201127) (not e!3228020))))

(assert (=> b!5180969 (= res!2201127 (= (head!11079 lt!2135047) (head!11079 (++!13177 lt!2135047 call!364049))))))

(declare-fun b!5180971 () Bool)

(declare-fun e!3228022 () Bool)

(assert (=> b!5180971 (= e!3228022 (>= (size!39697 (++!13177 lt!2135047 call!364049)) (size!39697 lt!2135047)))))

(declare-fun b!5180968 () Bool)

(declare-fun e!3228021 () Bool)

(assert (=> b!5180968 (= e!3228021 e!3228020)))

(declare-fun res!2201126 () Bool)

(assert (=> b!5180968 (=> (not res!2201126) (not e!3228020))))

(assert (=> b!5180968 (= res!2201126 (not ((_ is Nil!60176) (++!13177 lt!2135047 call!364049))))))

(declare-fun b!5180970 () Bool)

(assert (=> b!5180970 (= e!3228020 (isPrefix!5794 (tail!10178 lt!2135047) (tail!10178 (++!13177 lt!2135047 call!364049))))))

(declare-fun d!1674734 () Bool)

(assert (=> d!1674734 e!3228022))

(declare-fun res!2201128 () Bool)

(assert (=> d!1674734 (=> res!2201128 e!3228022)))

(declare-fun lt!2135609 () Bool)

(assert (=> d!1674734 (= res!2201128 (not lt!2135609))))

(assert (=> d!1674734 (= lt!2135609 e!3228021)))

(declare-fun res!2201125 () Bool)

(assert (=> d!1674734 (=> res!2201125 e!3228021)))

(assert (=> d!1674734 (= res!2201125 ((_ is Nil!60176) lt!2135047))))

(assert (=> d!1674734 (= (isPrefix!5794 lt!2135047 (++!13177 lt!2135047 call!364049)) lt!2135609)))

(assert (= (and d!1674734 (not res!2201125)) b!5180968))

(assert (= (and b!5180968 res!2201126) b!5180969))

(assert (= (and b!5180969 res!2201127) b!5180970))

(assert (= (and d!1674734 (not res!2201128)) b!5180971))

(declare-fun m!6240196 () Bool)

(assert (=> b!5180969 m!6240196))

(assert (=> b!5180969 m!6239392))

(declare-fun m!6240198 () Bool)

(assert (=> b!5180969 m!6240198))

(assert (=> b!5180971 m!6239392))

(declare-fun m!6240200 () Bool)

(assert (=> b!5180971 m!6240200))

(assert (=> b!5180971 m!6239414))

(declare-fun m!6240202 () Bool)

(assert (=> b!5180970 m!6240202))

(assert (=> b!5180970 m!6239392))

(declare-fun m!6240204 () Bool)

(assert (=> b!5180970 m!6240204))

(assert (=> b!5180970 m!6240202))

(assert (=> b!5180970 m!6240204))

(declare-fun m!6240206 () Bool)

(assert (=> b!5180970 m!6240206))

(assert (=> d!1674392 d!1674734))

(declare-fun d!1674736 () Bool)

(assert (=> d!1674736 (isPrefix!5794 lt!2135047 (++!13177 lt!2135047 call!364049))))

(declare-fun lt!2135610 () Unit!152123)

(assert (=> d!1674736 (= lt!2135610 (choose!38497 lt!2135047 call!364049))))

(assert (=> d!1674736 (= (lemmaConcatTwoListThenFirstIsPrefix!3609 lt!2135047 call!364049) lt!2135610)))

(declare-fun bs!1206964 () Bool)

(assert (= bs!1206964 d!1674736))

(assert (=> bs!1206964 m!6239392))

(assert (=> bs!1206964 m!6239392))

(assert (=> bs!1206964 m!6239394))

(declare-fun m!6240208 () Bool)

(assert (=> bs!1206964 m!6240208))

(assert (=> d!1674392 d!1674736))

(declare-fun d!1674738 () Bool)

(declare-fun lt!2135611 () List!60300)

(assert (=> d!1674738 (= (++!13177 lt!2135047 lt!2135611) input!5817)))

(declare-fun e!3228023 () List!60300)

(assert (=> d!1674738 (= lt!2135611 e!3228023)))

(declare-fun c!892869 () Bool)

(assert (=> d!1674738 (= c!892869 ((_ is Cons!60176) lt!2135047))))

(assert (=> d!1674738 (>= (size!39697 input!5817) (size!39697 lt!2135047))))

(assert (=> d!1674738 (= (getSuffix!3442 input!5817 lt!2135047) lt!2135611)))

(declare-fun b!5180972 () Bool)

(assert (=> b!5180972 (= e!3228023 (getSuffix!3442 (tail!10178 input!5817) (t!373453 lt!2135047)))))

(declare-fun b!5180973 () Bool)

(assert (=> b!5180973 (= e!3228023 input!5817)))

(assert (= (and d!1674738 c!892869) b!5180972))

(assert (= (and d!1674738 (not c!892869)) b!5180973))

(declare-fun m!6240210 () Bool)

(assert (=> d!1674738 m!6240210))

(assert (=> d!1674738 m!6238548))

(assert (=> d!1674738 m!6239414))

(assert (=> b!5180972 m!6238588))

(assert (=> b!5180972 m!6238588))

(declare-fun m!6240212 () Bool)

(assert (=> b!5180972 m!6240212))

(assert (=> d!1674392 d!1674738))

(declare-fun bs!1206965 () Bool)

(declare-fun d!1674740 () Bool)

(assert (= bs!1206965 (and d!1674740 d!1674160)))

(declare-fun lambda!258946 () Int)

(assert (=> bs!1206965 (not (= lambda!258946 lambda!258876))))

(declare-fun bs!1206966 () Bool)

(assert (= bs!1206966 (and d!1674740 d!1674662)))

(assert (=> bs!1206966 (not (= lambda!258946 lambda!258944))))

(declare-fun bs!1206967 () Bool)

(assert (= bs!1206967 (and d!1674740 b!5180506)))

(assert (=> bs!1206967 (not (= lambda!258946 lambda!258902))))

(declare-fun bs!1206968 () Bool)

(assert (= bs!1206968 (and d!1674740 b!5180758)))

(assert (=> bs!1206968 (not (= lambda!258946 lambda!258935))))

(declare-fun bs!1206969 () Bool)

(assert (= bs!1206969 (and d!1674740 d!1674556)))

(assert (=> bs!1206969 (= lambda!258946 lambda!258934)))

(declare-fun bs!1206970 () Bool)

(assert (= bs!1206970 (and d!1674740 d!1674274)))

(assert (=> bs!1206970 (= lambda!258946 lambda!258901)))

(declare-fun bs!1206971 () Bool)

(assert (= bs!1206971 (and d!1674740 d!1674538)))

(assert (=> bs!1206971 (not (= lambda!258946 lambda!258933))))

(declare-fun bs!1206972 () Bool)

(assert (= bs!1206972 (and d!1674740 d!1674640)))

(assert (=> bs!1206972 (not (= lambda!258946 lambda!258943))))

(declare-fun bs!1206973 () Bool)

(assert (= bs!1206973 (and d!1674740 b!5180507)))

(assert (=> bs!1206973 (not (= lambda!258946 lambda!258903))))

(declare-fun bs!1206974 () Bool)

(assert (= bs!1206974 (and d!1674740 d!1674590)))

(assert (=> bs!1206974 (not (= lambda!258946 lambda!258938))))

(declare-fun bs!1206975 () Bool)

(assert (= bs!1206975 (and d!1674740 b!5180759)))

(assert (=> bs!1206975 (not (= lambda!258946 lambda!258936))))

(declare-fun bs!1206976 () Bool)

(declare-fun b!5180974 () Bool)

(assert (= bs!1206976 (and b!5180974 d!1674740)))

(declare-fun lambda!258947 () Int)

(assert (=> bs!1206976 (not (= lambda!258947 lambda!258946))))

(declare-fun bs!1206977 () Bool)

(assert (= bs!1206977 (and b!5180974 d!1674160)))

(assert (=> bs!1206977 (not (= lambda!258947 lambda!258876))))

(declare-fun bs!1206978 () Bool)

(assert (= bs!1206978 (and b!5180974 d!1674662)))

(assert (=> bs!1206978 (not (= lambda!258947 lambda!258944))))

(declare-fun bs!1206979 () Bool)

(assert (= bs!1206979 (and b!5180974 b!5180506)))

(assert (=> bs!1206979 (= lambda!258947 lambda!258902)))

(declare-fun bs!1206980 () Bool)

(assert (= bs!1206980 (and b!5180974 b!5180758)))

(assert (=> bs!1206980 (= lambda!258947 lambda!258935)))

(declare-fun bs!1206981 () Bool)

(assert (= bs!1206981 (and b!5180974 d!1674556)))

(assert (=> bs!1206981 (not (= lambda!258947 lambda!258934))))

(declare-fun bs!1206982 () Bool)

(assert (= bs!1206982 (and b!5180974 d!1674274)))

(assert (=> bs!1206982 (not (= lambda!258947 lambda!258901))))

(declare-fun bs!1206983 () Bool)

(assert (= bs!1206983 (and b!5180974 d!1674538)))

(assert (=> bs!1206983 (not (= lambda!258947 lambda!258933))))

(declare-fun bs!1206984 () Bool)

(assert (= bs!1206984 (and b!5180974 d!1674640)))

(assert (=> bs!1206984 (not (= lambda!258947 lambda!258943))))

(declare-fun bs!1206985 () Bool)

(assert (= bs!1206985 (and b!5180974 b!5180507)))

(assert (=> bs!1206985 (= lambda!258947 lambda!258903)))

(declare-fun bs!1206986 () Bool)

(assert (= bs!1206986 (and b!5180974 d!1674590)))

(assert (=> bs!1206986 (not (= lambda!258947 lambda!258938))))

(declare-fun bs!1206987 () Bool)

(assert (= bs!1206987 (and b!5180974 b!5180759)))

(assert (=> bs!1206987 (= lambda!258947 lambda!258936)))

(declare-fun bs!1206988 () Bool)

(declare-fun b!5180975 () Bool)

(assert (= bs!1206988 (and b!5180975 d!1674740)))

(declare-fun lambda!258948 () Int)

(assert (=> bs!1206988 (not (= lambda!258948 lambda!258946))))

(declare-fun bs!1206989 () Bool)

(assert (= bs!1206989 (and b!5180975 d!1674160)))

(assert (=> bs!1206989 (not (= lambda!258948 lambda!258876))))

(declare-fun bs!1206990 () Bool)

(assert (= bs!1206990 (and b!5180975 d!1674662)))

(assert (=> bs!1206990 (not (= lambda!258948 lambda!258944))))

(declare-fun bs!1206991 () Bool)

(assert (= bs!1206991 (and b!5180975 b!5180506)))

(assert (=> bs!1206991 (= lambda!258948 lambda!258902)))

(declare-fun bs!1206992 () Bool)

(assert (= bs!1206992 (and b!5180975 b!5180758)))

(assert (=> bs!1206992 (= lambda!258948 lambda!258935)))

(declare-fun bs!1206993 () Bool)

(assert (= bs!1206993 (and b!5180975 d!1674556)))

(assert (=> bs!1206993 (not (= lambda!258948 lambda!258934))))

(declare-fun bs!1206994 () Bool)

(assert (= bs!1206994 (and b!5180975 b!5180974)))

(assert (=> bs!1206994 (= lambda!258948 lambda!258947)))

(declare-fun bs!1206995 () Bool)

(assert (= bs!1206995 (and b!5180975 d!1674274)))

(assert (=> bs!1206995 (not (= lambda!258948 lambda!258901))))

(declare-fun bs!1206996 () Bool)

(assert (= bs!1206996 (and b!5180975 d!1674538)))

(assert (=> bs!1206996 (not (= lambda!258948 lambda!258933))))

(declare-fun bs!1206997 () Bool)

(assert (= bs!1206997 (and b!5180975 d!1674640)))

(assert (=> bs!1206997 (not (= lambda!258948 lambda!258943))))

(declare-fun bs!1206998 () Bool)

(assert (= bs!1206998 (and b!5180975 b!5180507)))

(assert (=> bs!1206998 (= lambda!258948 lambda!258903)))

(declare-fun bs!1206999 () Bool)

(assert (= bs!1206999 (and b!5180975 d!1674590)))

(assert (=> bs!1206999 (not (= lambda!258948 lambda!258938))))

(declare-fun bs!1207000 () Bool)

(assert (= bs!1207000 (and b!5180975 b!5180759)))

(assert (=> bs!1207000 (= lambda!258948 lambda!258936)))

(declare-fun e!3228024 () Unit!152123)

(declare-fun Unit!152168 () Unit!152123)

(assert (=> b!5180975 (= e!3228024 Unit!152168)))

(declare-fun lt!2135614 () List!60301)

(declare-fun call!364165 () List!60301)

(assert (=> b!5180975 (= lt!2135614 call!364165)))

(declare-fun lt!2135612 () Unit!152123)

(assert (=> b!5180975 (= lt!2135612 (lemmaForallThenNotExists!449 lt!2135614 lambda!258946))))

(declare-fun call!364164 () Bool)

(assert (=> b!5180975 (not call!364164)))

(declare-fun lt!2135619 () Unit!152123)

(assert (=> b!5180975 (= lt!2135619 lt!2135612)))

(declare-fun lt!2135613 () Bool)

(assert (=> d!1674740 (= lt!2135613 (isEmpty!32220 (getLanguageWitness!1023 call!364048)))))

(assert (=> d!1674740 (= lt!2135613 (forall!14173 call!364048 lambda!258946))))

(declare-fun lt!2135616 () Unit!152123)

(assert (=> d!1674740 (= lt!2135616 e!3228024)))

(declare-fun c!892870 () Bool)

(assert (=> d!1674740 (= c!892870 (not (forall!14173 call!364048 lambda!258946)))))

(assert (=> d!1674740 (= (lostCauseZipper!1348 call!364048) lt!2135613)))

(declare-fun bm!364159 () Bool)

(assert (=> bm!364159 (= call!364165 (toList!8462 call!364048))))

(declare-fun bm!364160 () Bool)

(declare-fun lt!2135617 () List!60301)

(assert (=> bm!364160 (= call!364164 (exists!1949 (ite c!892870 lt!2135617 lt!2135614) (ite c!892870 lambda!258947 lambda!258948)))))

(declare-fun Unit!152169 () Unit!152123)

(assert (=> b!5180974 (= e!3228024 Unit!152169)))

(assert (=> b!5180974 (= lt!2135617 call!364165)))

(declare-fun lt!2135615 () Unit!152123)

(assert (=> b!5180974 (= lt!2135615 (lemmaNotForallThenExists!482 lt!2135617 lambda!258946))))

(assert (=> b!5180974 call!364164))

(declare-fun lt!2135618 () Unit!152123)

(assert (=> b!5180974 (= lt!2135618 lt!2135615)))

(assert (= (and d!1674740 c!892870) b!5180974))

(assert (= (and d!1674740 (not c!892870)) b!5180975))

(assert (= (or b!5180974 b!5180975) bm!364159))

(assert (= (or b!5180974 b!5180975) bm!364160))

(declare-fun m!6240214 () Bool)

(assert (=> b!5180975 m!6240214))

(declare-fun m!6240216 () Bool)

(assert (=> b!5180974 m!6240216))

(declare-fun m!6240218 () Bool)

(assert (=> d!1674740 m!6240218))

(assert (=> d!1674740 m!6240218))

(declare-fun m!6240220 () Bool)

(assert (=> d!1674740 m!6240220))

(declare-fun m!6240222 () Bool)

(assert (=> d!1674740 m!6240222))

(assert (=> d!1674740 m!6240222))

(declare-fun m!6240224 () Bool)

(assert (=> bm!364160 m!6240224))

(declare-fun m!6240226 () Bool)

(assert (=> bm!364159 m!6240226))

(assert (=> d!1674392 d!1674740))

(assert (=> d!1674448 d!1674444))

(assert (=> d!1674448 d!1674156))

(assert (=> d!1674448 d!1674228))

(declare-fun d!1674742 () Bool)

(assert (=> d!1674742 (= (flatMap!464 z!4581 lambda!258913) (choose!38502 z!4581 lambda!258913))))

(declare-fun bs!1207001 () Bool)

(assert (= bs!1207001 d!1674742))

(declare-fun m!6240228 () Bool)

(assert (=> bs!1207001 m!6240228))

(assert (=> d!1674436 d!1674742))

(declare-fun bs!1207002 () Bool)

(declare-fun d!1674744 () Bool)

(assert (= bs!1207002 (and d!1674744 d!1674376)))

(declare-fun lambda!258949 () Int)

(assert (=> bs!1207002 (= (= call!364128 (head!11079 (_1!35239 lt!2134953))) (= lambda!258949 lambda!258908))))

(declare-fun bs!1207003 () Bool)

(assert (= bs!1207003 (and d!1674744 d!1674690)))

(assert (=> bs!1207003 (= (= call!364128 (h!66624 (t!373453 testedP!294))) (= lambda!258949 lambda!258945))))

(declare-fun bs!1207004 () Bool)

(assert (= bs!1207004 (and d!1674744 d!1674430)))

(assert (=> bs!1207004 (= (= call!364128 (head!11079 (_1!35239 lt!2134956))) (= lambda!258949 lambda!258912))))

(declare-fun bs!1207005 () Bool)

(assert (= bs!1207005 (and d!1674744 d!1674436)))

(assert (=> bs!1207005 (= (= call!364128 call!364050) (= lambda!258949 lambda!258913))))

(declare-fun bs!1207006 () Bool)

(assert (= bs!1207006 (and d!1674744 d!1674362)))

(assert (=> bs!1207006 (= (= call!364128 call!364090) (= lambda!258949 lambda!258907))))

(declare-fun bs!1207007 () Bool)

(assert (= bs!1207007 (and d!1674744 d!1674228)))

(assert (=> bs!1207007 (= (= call!364128 lt!2134944) (= lambda!258949 lambda!258882))))

(declare-fun bs!1207008 () Bool)

(assert (= bs!1207008 (and d!1674744 d!1674604)))

(assert (=> bs!1207008 (= (= call!364128 (h!66624 lt!2134949)) (= lambda!258949 lambda!258939))))

(declare-fun bs!1207009 () Bool)

(assert (= bs!1207009 (and d!1674744 d!1674572)))

(assert (=> bs!1207009 (= (= call!364128 (h!66624 testedP!294)) (= lambda!258949 lambda!258937))))

(assert (=> d!1674744 true))

(assert (=> d!1674744 (= (derivationStepZipper!1007 call!364048 call!364128) (flatMap!464 call!364048 lambda!258949))))

(declare-fun bs!1207010 () Bool)

(assert (= bs!1207010 d!1674744))

(declare-fun m!6240230 () Bool)

(assert (=> bs!1207010 m!6240230))

(assert (=> bm!364121 d!1674744))

(declare-fun b!5180977 () Bool)

(declare-fun e!3228026 () List!60300)

(assert (=> b!5180977 (= e!3228026 (Cons!60176 (h!66624 (t!373453 (t!373453 testedP!294))) (++!13177 (t!373453 (t!373453 (t!373453 testedP!294))) (Cons!60176 lt!2134944 Nil!60176))))))

(declare-fun b!5180976 () Bool)

(assert (=> b!5180976 (= e!3228026 (Cons!60176 lt!2134944 Nil!60176))))

(declare-fun b!5180978 () Bool)

(declare-fun res!2201129 () Bool)

(declare-fun e!3228025 () Bool)

(assert (=> b!5180978 (=> (not res!2201129) (not e!3228025))))

(declare-fun lt!2135620 () List!60300)

(assert (=> b!5180978 (= res!2201129 (= (size!39697 lt!2135620) (+ (size!39697 (t!373453 (t!373453 testedP!294))) (size!39697 (Cons!60176 lt!2134944 Nil!60176)))))))

(declare-fun b!5180979 () Bool)

(assert (=> b!5180979 (= e!3228025 (or (not (= (Cons!60176 lt!2134944 Nil!60176) Nil!60176)) (= lt!2135620 (t!373453 (t!373453 testedP!294)))))))

(declare-fun d!1674746 () Bool)

(assert (=> d!1674746 e!3228025))

(declare-fun res!2201130 () Bool)

(assert (=> d!1674746 (=> (not res!2201130) (not e!3228025))))

(assert (=> d!1674746 (= res!2201130 (= (content!10669 lt!2135620) ((_ map or) (content!10669 (t!373453 (t!373453 testedP!294))) (content!10669 (Cons!60176 lt!2134944 Nil!60176)))))))

(assert (=> d!1674746 (= lt!2135620 e!3228026)))

(declare-fun c!892871 () Bool)

(assert (=> d!1674746 (= c!892871 ((_ is Nil!60176) (t!373453 (t!373453 testedP!294))))))

(assert (=> d!1674746 (= (++!13177 (t!373453 (t!373453 testedP!294)) (Cons!60176 lt!2134944 Nil!60176)) lt!2135620)))

(assert (= (and d!1674746 c!892871) b!5180976))

(assert (= (and d!1674746 (not c!892871)) b!5180977))

(assert (= (and d!1674746 res!2201130) b!5180978))

(assert (= (and b!5180978 res!2201129) b!5180979))

(declare-fun m!6240232 () Bool)

(assert (=> b!5180977 m!6240232))

(declare-fun m!6240234 () Bool)

(assert (=> b!5180978 m!6240234))

(assert (=> b!5180978 m!6239938))

(assert (=> b!5180978 m!6238670))

(declare-fun m!6240236 () Bool)

(assert (=> d!1674746 m!6240236))

(declare-fun m!6240238 () Bool)

(assert (=> d!1674746 m!6240238))

(assert (=> d!1674746 m!6238676))

(assert (=> b!5180707 d!1674746))

(assert (=> b!5180529 d!1674544))

(declare-fun d!1674748 () Bool)

(assert (=> d!1674748 (= (head!11079 (++!13177 lt!2134949 (getSuffix!3442 input!5817 lt!2134949))) (h!66624 (++!13177 lt!2134949 (getSuffix!3442 input!5817 lt!2134949))))))

(assert (=> b!5180529 d!1674748))

(declare-fun e!3228028 () List!60300)

(declare-fun b!5180981 () Bool)

(assert (=> b!5180981 (= e!3228028 (Cons!60176 (h!66624 (++!13177 lt!2135219 (Cons!60176 lt!2135411 Nil!60176))) (++!13177 (t!373453 (++!13177 lt!2135219 (Cons!60176 lt!2135411 Nil!60176))) lt!2135414)))))

(declare-fun b!5180980 () Bool)

(assert (=> b!5180980 (= e!3228028 lt!2135414)))

(declare-fun b!5180982 () Bool)

(declare-fun res!2201131 () Bool)

(declare-fun e!3228027 () Bool)

(assert (=> b!5180982 (=> (not res!2201131) (not e!3228027))))

(declare-fun lt!2135621 () List!60300)

(assert (=> b!5180982 (= res!2201131 (= (size!39697 lt!2135621) (+ (size!39697 (++!13177 lt!2135219 (Cons!60176 lt!2135411 Nil!60176))) (size!39697 lt!2135414))))))

(declare-fun b!5180983 () Bool)

(assert (=> b!5180983 (= e!3228027 (or (not (= lt!2135414 Nil!60176)) (= lt!2135621 (++!13177 lt!2135219 (Cons!60176 lt!2135411 Nil!60176)))))))

(declare-fun d!1674750 () Bool)

(assert (=> d!1674750 e!3228027))

(declare-fun res!2201132 () Bool)

(assert (=> d!1674750 (=> (not res!2201132) (not e!3228027))))

(assert (=> d!1674750 (= res!2201132 (= (content!10669 lt!2135621) ((_ map or) (content!10669 (++!13177 lt!2135219 (Cons!60176 lt!2135411 Nil!60176))) (content!10669 lt!2135414))))))

(assert (=> d!1674750 (= lt!2135621 e!3228028)))

(declare-fun c!892872 () Bool)

(assert (=> d!1674750 (= c!892872 ((_ is Nil!60176) (++!13177 lt!2135219 (Cons!60176 lt!2135411 Nil!60176))))))

(assert (=> d!1674750 (= (++!13177 (++!13177 lt!2135219 (Cons!60176 lt!2135411 Nil!60176)) lt!2135414) lt!2135621)))

(assert (= (and d!1674750 c!892872) b!5180980))

(assert (= (and d!1674750 (not c!892872)) b!5180981))

(assert (= (and d!1674750 res!2201132) b!5180982))

(assert (= (and b!5180982 res!2201131) b!5180983))

(declare-fun m!6240240 () Bool)

(assert (=> b!5180981 m!6240240))

(declare-fun m!6240242 () Bool)

(assert (=> b!5180982 m!6240242))

(assert (=> b!5180982 m!6239478))

(declare-fun m!6240244 () Bool)

(assert (=> b!5180982 m!6240244))

(declare-fun m!6240246 () Bool)

(assert (=> b!5180982 m!6240246))

(declare-fun m!6240248 () Bool)

(assert (=> d!1674750 m!6240248))

(assert (=> d!1674750 m!6239478))

(declare-fun m!6240250 () Bool)

(assert (=> d!1674750 m!6240250))

(declare-fun m!6240252 () Bool)

(assert (=> d!1674750 m!6240252))

(assert (=> b!5180598 d!1674750))

(declare-fun d!1674752 () Bool)

(declare-fun lt!2135622 () List!60300)

(assert (=> d!1674752 (= (++!13177 lt!2135219 lt!2135622) input!5817)))

(declare-fun e!3228029 () List!60300)

(assert (=> d!1674752 (= lt!2135622 e!3228029)))

(declare-fun c!892873 () Bool)

(assert (=> d!1674752 (= c!892873 ((_ is Cons!60176) lt!2135219))))

(assert (=> d!1674752 (>= (size!39697 input!5817) (size!39697 lt!2135219))))

(assert (=> d!1674752 (= (getSuffix!3442 input!5817 lt!2135219) lt!2135622)))

(declare-fun b!5180984 () Bool)

(assert (=> b!5180984 (= e!3228029 (getSuffix!3442 (tail!10178 input!5817) (t!373453 lt!2135219)))))

(declare-fun b!5180985 () Bool)

(assert (=> b!5180985 (= e!3228029 input!5817)))

(assert (= (and d!1674752 c!892873) b!5180984))

(assert (= (and d!1674752 (not c!892873)) b!5180985))

(declare-fun m!6240254 () Bool)

(assert (=> d!1674752 m!6240254))

(assert (=> d!1674752 m!6238548))

(assert (=> d!1674752 m!6239482))

(assert (=> b!5180984 m!6238588))

(assert (=> b!5180984 m!6238588))

(declare-fun m!6240256 () Bool)

(assert (=> b!5180984 m!6240256))

(assert (=> b!5180598 d!1674752))

(declare-fun d!1674754 () Bool)

(assert (=> d!1674754 (<= (size!39697 lt!2135219) (size!39697 input!5817))))

(declare-fun lt!2135623 () Unit!152123)

(assert (=> d!1674754 (= lt!2135623 (choose!38494 lt!2135219 input!5817))))

(assert (=> d!1674754 (isPrefix!5794 lt!2135219 input!5817)))

(assert (=> d!1674754 (= (lemmaIsPrefixThenSmallerEqSize!955 lt!2135219 input!5817) lt!2135623)))

(declare-fun bs!1207011 () Bool)

(assert (= bs!1207011 d!1674754))

(assert (=> bs!1207011 m!6239482))

(assert (=> bs!1207011 m!6238548))

(declare-fun m!6240258 () Bool)

(assert (=> bs!1207011 m!6240258))

(declare-fun m!6240260 () Bool)

(assert (=> bs!1207011 m!6240260))

(assert (=> b!5180598 d!1674754))

(assert (=> b!5180598 d!1674654))

(declare-fun b!5180987 () Bool)

(declare-fun res!2201135 () Bool)

(declare-fun e!3228030 () Bool)

(assert (=> b!5180987 (=> (not res!2201135) (not e!3228030))))

(assert (=> b!5180987 (= res!2201135 (= (head!11079 (++!13177 lt!2135219 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2135219)) Nil!60176))) (head!11079 input!5817)))))

(declare-fun b!5180989 () Bool)

(declare-fun e!3228032 () Bool)

(assert (=> b!5180989 (= e!3228032 (>= (size!39697 input!5817) (size!39697 (++!13177 lt!2135219 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2135219)) Nil!60176)))))))

(declare-fun b!5180986 () Bool)

(declare-fun e!3228031 () Bool)

(assert (=> b!5180986 (= e!3228031 e!3228030)))

(declare-fun res!2201134 () Bool)

(assert (=> b!5180986 (=> (not res!2201134) (not e!3228030))))

(assert (=> b!5180986 (= res!2201134 (not ((_ is Nil!60176) input!5817)))))

(declare-fun b!5180988 () Bool)

(assert (=> b!5180988 (= e!3228030 (isPrefix!5794 (tail!10178 (++!13177 lt!2135219 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2135219)) Nil!60176))) (tail!10178 input!5817)))))

(declare-fun d!1674756 () Bool)

(assert (=> d!1674756 e!3228032))

(declare-fun res!2201136 () Bool)

(assert (=> d!1674756 (=> res!2201136 e!3228032)))

(declare-fun lt!2135624 () Bool)

(assert (=> d!1674756 (= res!2201136 (not lt!2135624))))

(assert (=> d!1674756 (= lt!2135624 e!3228031)))

(declare-fun res!2201133 () Bool)

(assert (=> d!1674756 (=> res!2201133 e!3228031)))

(assert (=> d!1674756 (= res!2201133 ((_ is Nil!60176) (++!13177 lt!2135219 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2135219)) Nil!60176))))))

(assert (=> d!1674756 (= (isPrefix!5794 (++!13177 lt!2135219 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2135219)) Nil!60176)) input!5817) lt!2135624)))

(assert (= (and d!1674756 (not res!2201133)) b!5180986))

(assert (= (and b!5180986 res!2201134) b!5180987))

(assert (= (and b!5180987 res!2201135) b!5180988))

(assert (= (and d!1674756 (not res!2201136)) b!5180989))

(assert (=> b!5180987 m!6239474))

(declare-fun m!6240262 () Bool)

(assert (=> b!5180987 m!6240262))

(assert (=> b!5180987 m!6238586))

(assert (=> b!5180989 m!6238548))

(assert (=> b!5180989 m!6239474))

(declare-fun m!6240264 () Bool)

(assert (=> b!5180989 m!6240264))

(assert (=> b!5180988 m!6239474))

(declare-fun m!6240266 () Bool)

(assert (=> b!5180988 m!6240266))

(assert (=> b!5180988 m!6238588))

(assert (=> b!5180988 m!6240266))

(assert (=> b!5180988 m!6238588))

(declare-fun m!6240268 () Bool)

(assert (=> b!5180988 m!6240268))

(assert (=> b!5180598 d!1674756))

(declare-fun b!5180991 () Bool)

(declare-fun e!3228034 () List!60300)

(assert (=> b!5180991 (= e!3228034 (Cons!60176 (h!66624 lt!2135219) (++!13177 (t!373453 lt!2135219) (Cons!60176 lt!2135411 Nil!60176))))))

(declare-fun b!5180990 () Bool)

(assert (=> b!5180990 (= e!3228034 (Cons!60176 lt!2135411 Nil!60176))))

(declare-fun b!5180992 () Bool)

(declare-fun res!2201137 () Bool)

(declare-fun e!3228033 () Bool)

(assert (=> b!5180992 (=> (not res!2201137) (not e!3228033))))

(declare-fun lt!2135625 () List!60300)

(assert (=> b!5180992 (= res!2201137 (= (size!39697 lt!2135625) (+ (size!39697 lt!2135219) (size!39697 (Cons!60176 lt!2135411 Nil!60176)))))))

(declare-fun b!5180993 () Bool)

(assert (=> b!5180993 (= e!3228033 (or (not (= (Cons!60176 lt!2135411 Nil!60176) Nil!60176)) (= lt!2135625 lt!2135219)))))

(declare-fun d!1674758 () Bool)

(assert (=> d!1674758 e!3228033))

(declare-fun res!2201138 () Bool)

(assert (=> d!1674758 (=> (not res!2201138) (not e!3228033))))

(assert (=> d!1674758 (= res!2201138 (= (content!10669 lt!2135625) ((_ map or) (content!10669 lt!2135219) (content!10669 (Cons!60176 lt!2135411 Nil!60176)))))))

(assert (=> d!1674758 (= lt!2135625 e!3228034)))

(declare-fun c!892874 () Bool)

(assert (=> d!1674758 (= c!892874 ((_ is Nil!60176) lt!2135219))))

(assert (=> d!1674758 (= (++!13177 lt!2135219 (Cons!60176 lt!2135411 Nil!60176)) lt!2135625)))

(assert (= (and d!1674758 c!892874) b!5180990))

(assert (= (and d!1674758 (not c!892874)) b!5180991))

(assert (= (and d!1674758 res!2201138) b!5180992))

(assert (= (and b!5180992 res!2201137) b!5180993))

(declare-fun m!6240270 () Bool)

(assert (=> b!5180991 m!6240270))

(declare-fun m!6240272 () Bool)

(assert (=> b!5180992 m!6240272))

(assert (=> b!5180992 m!6239482))

(declare-fun m!6240274 () Bool)

(assert (=> b!5180992 m!6240274))

(declare-fun m!6240276 () Bool)

(assert (=> d!1674758 m!6240276))

(declare-fun m!6240278 () Bool)

(assert (=> d!1674758 m!6240278))

(declare-fun m!6240280 () Bool)

(assert (=> d!1674758 m!6240280))

(assert (=> b!5180598 d!1674758))

(declare-fun d!1674760 () Bool)

(assert (=> d!1674760 (= (head!11079 call!364089) (h!66624 call!364089))))

(assert (=> b!5180598 d!1674760))

(declare-fun d!1674762 () Bool)

(assert (=> d!1674762 (= (head!11079 (getSuffix!3442 input!5817 lt!2135219)) (h!66624 (getSuffix!3442 input!5817 lt!2135219)))))

(assert (=> b!5180598 d!1674762))

(declare-fun b!5180995 () Bool)

(declare-fun e!3228036 () List!60300)

(assert (=> b!5180995 (= e!3228036 (Cons!60176 (h!66624 lt!2135219) (++!13177 (t!373453 lt!2135219) (Cons!60176 (head!11079 call!364089) Nil!60176))))))

(declare-fun b!5180994 () Bool)

(assert (=> b!5180994 (= e!3228036 (Cons!60176 (head!11079 call!364089) Nil!60176))))

(declare-fun b!5180996 () Bool)

(declare-fun res!2201139 () Bool)

(declare-fun e!3228035 () Bool)

(assert (=> b!5180996 (=> (not res!2201139) (not e!3228035))))

(declare-fun lt!2135626 () List!60300)

(assert (=> b!5180996 (= res!2201139 (= (size!39697 lt!2135626) (+ (size!39697 lt!2135219) (size!39697 (Cons!60176 (head!11079 call!364089) Nil!60176)))))))

(declare-fun b!5180997 () Bool)

(assert (=> b!5180997 (= e!3228035 (or (not (= (Cons!60176 (head!11079 call!364089) Nil!60176) Nil!60176)) (= lt!2135626 lt!2135219)))))

(declare-fun d!1674764 () Bool)

(assert (=> d!1674764 e!3228035))

(declare-fun res!2201140 () Bool)

(assert (=> d!1674764 (=> (not res!2201140) (not e!3228035))))

(assert (=> d!1674764 (= res!2201140 (= (content!10669 lt!2135626) ((_ map or) (content!10669 lt!2135219) (content!10669 (Cons!60176 (head!11079 call!364089) Nil!60176)))))))

(assert (=> d!1674764 (= lt!2135626 e!3228036)))

(declare-fun c!892875 () Bool)

(assert (=> d!1674764 (= c!892875 ((_ is Nil!60176) lt!2135219))))

(assert (=> d!1674764 (= (++!13177 lt!2135219 (Cons!60176 (head!11079 call!364089) Nil!60176)) lt!2135626)))

(assert (= (and d!1674764 c!892875) b!5180994))

(assert (= (and d!1674764 (not c!892875)) b!5180995))

(assert (= (and d!1674764 res!2201140) b!5180996))

(assert (= (and b!5180996 res!2201139) b!5180997))

(declare-fun m!6240282 () Bool)

(assert (=> b!5180995 m!6240282))

(declare-fun m!6240284 () Bool)

(assert (=> b!5180996 m!6240284))

(assert (=> b!5180996 m!6239482))

(declare-fun m!6240286 () Bool)

(assert (=> b!5180996 m!6240286))

(declare-fun m!6240288 () Bool)

(assert (=> d!1674764 m!6240288))

(assert (=> d!1674764 m!6240278))

(declare-fun m!6240290 () Bool)

(assert (=> d!1674764 m!6240290))

(assert (=> b!5180598 d!1674764))

(assert (=> b!5180598 d!1674142))

(declare-fun d!1674766 () Bool)

(assert (=> d!1674766 (= (tail!10178 call!364089) (t!373453 call!364089))))

(assert (=> b!5180598 d!1674766))

(declare-fun d!1674768 () Bool)

(assert (=> d!1674768 (= (++!13177 (++!13177 lt!2135219 (Cons!60176 lt!2135411 Nil!60176)) lt!2135414) input!5817)))

(declare-fun lt!2135627 () Unit!152123)

(assert (=> d!1674768 (= lt!2135627 (choose!38500 lt!2135219 lt!2135411 lt!2135414 input!5817))))

(assert (=> d!1674768 (= (++!13177 lt!2135219 (Cons!60176 lt!2135411 lt!2135414)) input!5817)))

(assert (=> d!1674768 (= (lemmaMoveElementToOtherListKeepsConcatEq!1596 lt!2135219 lt!2135411 lt!2135414 input!5817) lt!2135627)))

(declare-fun bs!1207012 () Bool)

(assert (= bs!1207012 d!1674768))

(assert (=> bs!1207012 m!6239478))

(assert (=> bs!1207012 m!6239478))

(assert (=> bs!1207012 m!6239494))

(declare-fun m!6240292 () Bool)

(assert (=> bs!1207012 m!6240292))

(declare-fun m!6240294 () Bool)

(assert (=> bs!1207012 m!6240294))

(assert (=> b!5180598 d!1674768))

(declare-fun d!1674770 () Bool)

(assert (=> d!1674770 (isPrefix!5794 (++!13177 lt!2135219 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2135219)) Nil!60176)) input!5817)))

(declare-fun lt!2135628 () Unit!152123)

(assert (=> d!1674770 (= lt!2135628 (choose!38492 lt!2135219 input!5817))))

(assert (=> d!1674770 (isPrefix!5794 lt!2135219 input!5817)))

(assert (=> d!1674770 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1099 lt!2135219 input!5817) lt!2135628)))

(declare-fun bs!1207013 () Bool)

(assert (= bs!1207013 d!1674770))

(declare-fun m!6240296 () Bool)

(assert (=> bs!1207013 m!6240296))

(assert (=> bs!1207013 m!6239464))

(assert (=> bs!1207013 m!6239480))

(assert (=> bs!1207013 m!6239474))

(assert (=> bs!1207013 m!6239484))

(assert (=> bs!1207013 m!6240260))

(assert (=> bs!1207013 m!6239474))

(assert (=> bs!1207013 m!6239464))

(assert (=> b!5180598 d!1674770))

(declare-fun b!5180999 () Bool)

(declare-fun e!3228038 () List!60300)

(assert (=> b!5180999 (= e!3228038 (Cons!60176 (h!66624 lt!2135219) (++!13177 (t!373453 lt!2135219) (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2135219)) Nil!60176))))))

(declare-fun b!5180998 () Bool)

(assert (=> b!5180998 (= e!3228038 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2135219)) Nil!60176))))

(declare-fun b!5181000 () Bool)

(declare-fun res!2201141 () Bool)

(declare-fun e!3228037 () Bool)

(assert (=> b!5181000 (=> (not res!2201141) (not e!3228037))))

(declare-fun lt!2135629 () List!60300)

(assert (=> b!5181000 (= res!2201141 (= (size!39697 lt!2135629) (+ (size!39697 lt!2135219) (size!39697 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2135219)) Nil!60176)))))))

(declare-fun b!5181001 () Bool)

(assert (=> b!5181001 (= e!3228037 (or (not (= (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2135219)) Nil!60176) Nil!60176)) (= lt!2135629 lt!2135219)))))

(declare-fun d!1674772 () Bool)

(assert (=> d!1674772 e!3228037))

(declare-fun res!2201142 () Bool)

(assert (=> d!1674772 (=> (not res!2201142) (not e!3228037))))

(assert (=> d!1674772 (= res!2201142 (= (content!10669 lt!2135629) ((_ map or) (content!10669 lt!2135219) (content!10669 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2135219)) Nil!60176)))))))

(assert (=> d!1674772 (= lt!2135629 e!3228038)))

(declare-fun c!892876 () Bool)

(assert (=> d!1674772 (= c!892876 ((_ is Nil!60176) lt!2135219))))

(assert (=> d!1674772 (= (++!13177 lt!2135219 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2135219)) Nil!60176)) lt!2135629)))

(assert (= (and d!1674772 c!892876) b!5180998))

(assert (= (and d!1674772 (not c!892876)) b!5180999))

(assert (= (and d!1674772 res!2201142) b!5181000))

(assert (= (and b!5181000 res!2201141) b!5181001))

(declare-fun m!6240298 () Bool)

(assert (=> b!5180999 m!6240298))

(declare-fun m!6240300 () Bool)

(assert (=> b!5181000 m!6240300))

(assert (=> b!5181000 m!6239482))

(declare-fun m!6240302 () Bool)

(assert (=> b!5181000 m!6240302))

(declare-fun m!6240304 () Bool)

(assert (=> d!1674772 m!6240304))

(assert (=> d!1674772 m!6240278))

(declare-fun m!6240306 () Bool)

(assert (=> d!1674772 m!6240306))

(assert (=> b!5180598 d!1674772))

(declare-fun d!1674774 () Bool)

(declare-fun lt!2135630 () Int)

(assert (=> d!1674774 (>= lt!2135630 0)))

(declare-fun e!3228039 () Int)

(assert (=> d!1674774 (= lt!2135630 e!3228039)))

(declare-fun c!892877 () Bool)

(assert (=> d!1674774 (= c!892877 ((_ is Nil!60176) (_1!35239 lt!2135459)))))

(assert (=> d!1674774 (= (size!39697 (_1!35239 lt!2135459)) lt!2135630)))

(declare-fun b!5181002 () Bool)

(assert (=> b!5181002 (= e!3228039 0)))

(declare-fun b!5181003 () Bool)

(assert (=> b!5181003 (= e!3228039 (+ 1 (size!39697 (t!373453 (_1!35239 lt!2135459)))))))

(assert (= (and d!1674774 c!892877) b!5181002))

(assert (= (and d!1674774 (not c!892877)) b!5181003))

(declare-fun m!6240308 () Bool)

(assert (=> b!5181003 m!6240308))

(assert (=> b!5180660 d!1674774))

(assert (=> b!5180660 d!1674218))

(declare-fun b!5181005 () Bool)

(declare-fun e!3228041 () List!60300)

(assert (=> b!5181005 (= e!3228041 (Cons!60176 (h!66624 (t!373453 (_1!35239 lt!2135034))) (++!13177 (t!373453 (t!373453 (_1!35239 lt!2135034))) (_2!35239 lt!2135034))))))

(declare-fun b!5181004 () Bool)

(assert (=> b!5181004 (= e!3228041 (_2!35239 lt!2135034))))

(declare-fun b!5181006 () Bool)

(declare-fun res!2201143 () Bool)

(declare-fun e!3228040 () Bool)

(assert (=> b!5181006 (=> (not res!2201143) (not e!3228040))))

(declare-fun lt!2135631 () List!60300)

(assert (=> b!5181006 (= res!2201143 (= (size!39697 lt!2135631) (+ (size!39697 (t!373453 (_1!35239 lt!2135034))) (size!39697 (_2!35239 lt!2135034)))))))

(declare-fun b!5181007 () Bool)

(assert (=> b!5181007 (= e!3228040 (or (not (= (_2!35239 lt!2135034) Nil!60176)) (= lt!2135631 (t!373453 (_1!35239 lt!2135034)))))))

(declare-fun d!1674776 () Bool)

(assert (=> d!1674776 e!3228040))

(declare-fun res!2201144 () Bool)

(assert (=> d!1674776 (=> (not res!2201144) (not e!3228040))))

(assert (=> d!1674776 (= res!2201144 (= (content!10669 lt!2135631) ((_ map or) (content!10669 (t!373453 (_1!35239 lt!2135034))) (content!10669 (_2!35239 lt!2135034)))))))

(assert (=> d!1674776 (= lt!2135631 e!3228041)))

(declare-fun c!892878 () Bool)

(assert (=> d!1674776 (= c!892878 ((_ is Nil!60176) (t!373453 (_1!35239 lt!2135034))))))

(assert (=> d!1674776 (= (++!13177 (t!373453 (_1!35239 lt!2135034)) (_2!35239 lt!2135034)) lt!2135631)))

(assert (= (and d!1674776 c!892878) b!5181004))

(assert (= (and d!1674776 (not c!892878)) b!5181005))

(assert (= (and d!1674776 res!2201144) b!5181006))

(assert (= (and b!5181006 res!2201143) b!5181007))

(declare-fun m!6240310 () Bool)

(assert (=> b!5181005 m!6240310))

(declare-fun m!6240312 () Bool)

(assert (=> b!5181006 m!6240312))

(assert (=> b!5181006 m!6239926))

(assert (=> b!5181006 m!6239876))

(declare-fun m!6240314 () Bool)

(assert (=> d!1674776 m!6240314))

(declare-fun m!6240316 () Bool)

(assert (=> d!1674776 m!6240316))

(assert (=> d!1674776 m!6239882))

(assert (=> b!5180765 d!1674776))

(assert (=> b!5180553 d!1674142))

(declare-fun d!1674778 () Bool)

(declare-fun lt!2135632 () Int)

(assert (=> d!1674778 (>= lt!2135632 0)))

(declare-fun e!3228042 () Int)

(assert (=> d!1674778 (= lt!2135632 e!3228042)))

(declare-fun c!892879 () Bool)

(assert (=> d!1674778 (= c!892879 ((_ is Nil!60176) (++!13177 testedP!294 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 testedP!294)) Nil!60176))))))

(assert (=> d!1674778 (= (size!39697 (++!13177 testedP!294 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 testedP!294)) Nil!60176))) lt!2135632)))

(declare-fun b!5181008 () Bool)

(assert (=> b!5181008 (= e!3228042 0)))

(declare-fun b!5181009 () Bool)

(assert (=> b!5181009 (= e!3228042 (+ 1 (size!39697 (t!373453 (++!13177 testedP!294 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 testedP!294)) Nil!60176))))))))

(assert (= (and d!1674778 c!892879) b!5181008))

(assert (= (and d!1674778 (not c!892879)) b!5181009))

(declare-fun m!6240318 () Bool)

(assert (=> b!5181009 m!6240318))

(assert (=> b!5180553 d!1674778))

(declare-fun d!1674780 () Bool)

(assert (=> d!1674780 (= (isEmpty!32219 (_1!35239 lt!2135389)) ((_ is Nil!60176) (_1!35239 lt!2135389)))))

(assert (=> b!5180590 d!1674780))

(declare-fun d!1674782 () Bool)

(declare-fun c!892880 () Bool)

(assert (=> d!1674782 (= c!892880 ((_ is Cons!60176) (t!373453 (t!373453 lt!2134949))))))

(declare-fun e!3228043 () (InoxSet Context!8090))

(assert (=> d!1674782 (= (derivationZipper!284 (derivationStepZipper!1007 (derivationStepZipper!1007 baseZ!62 (h!66624 lt!2134949)) (h!66624 (t!373453 lt!2134949))) (t!373453 (t!373453 lt!2134949))) e!3228043)))

(declare-fun b!5181010 () Bool)

(assert (=> b!5181010 (= e!3228043 (derivationZipper!284 (derivationStepZipper!1007 (derivationStepZipper!1007 (derivationStepZipper!1007 baseZ!62 (h!66624 lt!2134949)) (h!66624 (t!373453 lt!2134949))) (h!66624 (t!373453 (t!373453 lt!2134949)))) (t!373453 (t!373453 (t!373453 lt!2134949)))))))

(declare-fun b!5181011 () Bool)

(assert (=> b!5181011 (= e!3228043 (derivationStepZipper!1007 (derivationStepZipper!1007 baseZ!62 (h!66624 lt!2134949)) (h!66624 (t!373453 lt!2134949))))))

(assert (= (and d!1674782 c!892880) b!5181010))

(assert (= (and d!1674782 (not c!892880)) b!5181011))

(assert (=> b!5181010 m!6239932))

(declare-fun m!6240320 () Bool)

(assert (=> b!5181010 m!6240320))

(assert (=> b!5181010 m!6240320))

(declare-fun m!6240322 () Bool)

(assert (=> b!5181010 m!6240322))

(assert (=> b!5180814 d!1674782))

(declare-fun bs!1207014 () Bool)

(declare-fun d!1674784 () Bool)

(assert (= bs!1207014 (and d!1674784 d!1674744)))

(declare-fun lambda!258950 () Int)

(assert (=> bs!1207014 (= (= (h!66624 (t!373453 lt!2134949)) call!364128) (= lambda!258950 lambda!258949))))

(declare-fun bs!1207015 () Bool)

(assert (= bs!1207015 (and d!1674784 d!1674376)))

(assert (=> bs!1207015 (= (= (h!66624 (t!373453 lt!2134949)) (head!11079 (_1!35239 lt!2134953))) (= lambda!258950 lambda!258908))))

(declare-fun bs!1207016 () Bool)

(assert (= bs!1207016 (and d!1674784 d!1674690)))

(assert (=> bs!1207016 (= (= (h!66624 (t!373453 lt!2134949)) (h!66624 (t!373453 testedP!294))) (= lambda!258950 lambda!258945))))

(declare-fun bs!1207017 () Bool)

(assert (= bs!1207017 (and d!1674784 d!1674430)))

(assert (=> bs!1207017 (= (= (h!66624 (t!373453 lt!2134949)) (head!11079 (_1!35239 lt!2134956))) (= lambda!258950 lambda!258912))))

(declare-fun bs!1207018 () Bool)

(assert (= bs!1207018 (and d!1674784 d!1674436)))

(assert (=> bs!1207018 (= (= (h!66624 (t!373453 lt!2134949)) call!364050) (= lambda!258950 lambda!258913))))

(declare-fun bs!1207019 () Bool)

(assert (= bs!1207019 (and d!1674784 d!1674362)))

(assert (=> bs!1207019 (= (= (h!66624 (t!373453 lt!2134949)) call!364090) (= lambda!258950 lambda!258907))))

(declare-fun bs!1207020 () Bool)

(assert (= bs!1207020 (and d!1674784 d!1674228)))

(assert (=> bs!1207020 (= (= (h!66624 (t!373453 lt!2134949)) lt!2134944) (= lambda!258950 lambda!258882))))

(declare-fun bs!1207021 () Bool)

(assert (= bs!1207021 (and d!1674784 d!1674604)))

(assert (=> bs!1207021 (= (= (h!66624 (t!373453 lt!2134949)) (h!66624 lt!2134949)) (= lambda!258950 lambda!258939))))

(declare-fun bs!1207022 () Bool)

(assert (= bs!1207022 (and d!1674784 d!1674572)))

(assert (=> bs!1207022 (= (= (h!66624 (t!373453 lt!2134949)) (h!66624 testedP!294)) (= lambda!258950 lambda!258937))))

(assert (=> d!1674784 true))

(assert (=> d!1674784 (= (derivationStepZipper!1007 (derivationStepZipper!1007 baseZ!62 (h!66624 lt!2134949)) (h!66624 (t!373453 lt!2134949))) (flatMap!464 (derivationStepZipper!1007 baseZ!62 (h!66624 lt!2134949)) lambda!258950))))

(declare-fun bs!1207023 () Bool)

(assert (= bs!1207023 d!1674784))

(assert (=> bs!1207023 m!6238912))

(declare-fun m!6240324 () Bool)

(assert (=> bs!1207023 m!6240324))

(assert (=> b!5180814 d!1674784))

(declare-fun d!1674786 () Bool)

(declare-fun lt!2135633 () Int)

(assert (=> d!1674786 (>= lt!2135633 0)))

(declare-fun e!3228044 () Int)

(assert (=> d!1674786 (= lt!2135633 e!3228044)))

(declare-fun c!892881 () Bool)

(assert (=> d!1674786 (= c!892881 ((_ is Nil!60176) lt!2135523))))

(assert (=> d!1674786 (= (size!39697 lt!2135523) lt!2135633)))

(declare-fun b!5181012 () Bool)

(assert (=> b!5181012 (= e!3228044 0)))

(declare-fun b!5181013 () Bool)

(assert (=> b!5181013 (= e!3228044 (+ 1 (size!39697 (t!373453 lt!2135523))))))

(assert (= (and d!1674786 c!892881) b!5181012))

(assert (= (and d!1674786 (not c!892881)) b!5181013))

(declare-fun m!6240326 () Bool)

(assert (=> b!5181013 m!6240326))

(assert (=> b!5180740 d!1674786))

(assert (=> b!5180740 d!1674152))

(declare-fun d!1674788 () Bool)

(declare-fun lt!2135634 () Int)

(assert (=> d!1674788 (>= lt!2135634 0)))

(declare-fun e!3228045 () Int)

(assert (=> d!1674788 (= lt!2135634 e!3228045)))

(declare-fun c!892882 () Bool)

(assert (=> d!1674788 (= c!892882 ((_ is Nil!60176) (Cons!60176 lt!2135040 Nil!60176)))))

(assert (=> d!1674788 (= (size!39697 (Cons!60176 lt!2135040 Nil!60176)) lt!2135634)))

(declare-fun b!5181014 () Bool)

(assert (=> b!5181014 (= e!3228045 0)))

(declare-fun b!5181015 () Bool)

(assert (=> b!5181015 (= e!3228045 (+ 1 (size!39697 (t!373453 (Cons!60176 lt!2135040 Nil!60176)))))))

(assert (= (and d!1674788 c!892882) b!5181014))

(assert (= (and d!1674788 (not c!892882)) b!5181015))

(declare-fun m!6240328 () Bool)

(assert (=> b!5181015 m!6240328))

(assert (=> b!5180740 d!1674788))

(declare-fun d!1674790 () Bool)

(declare-fun c!892883 () Bool)

(assert (=> d!1674790 (= c!892883 (isEmpty!32219 (tail!10178 (tail!10178 (_1!35239 lt!2134953)))))))

(declare-fun e!3228046 () Bool)

(assert (=> d!1674790 (= (matchZipper!989 (derivationStepZipper!1007 (derivationStepZipper!1007 baseZ!62 (head!11079 (_1!35239 lt!2134953))) (head!11079 (tail!10178 (_1!35239 lt!2134953)))) (tail!10178 (tail!10178 (_1!35239 lt!2134953)))) e!3228046)))

(declare-fun b!5181016 () Bool)

(assert (=> b!5181016 (= e!3228046 (nullableZipper!1199 (derivationStepZipper!1007 (derivationStepZipper!1007 baseZ!62 (head!11079 (_1!35239 lt!2134953))) (head!11079 (tail!10178 (_1!35239 lt!2134953))))))))

(declare-fun b!5181017 () Bool)

(assert (=> b!5181017 (= e!3228046 (matchZipper!989 (derivationStepZipper!1007 (derivationStepZipper!1007 (derivationStepZipper!1007 baseZ!62 (head!11079 (_1!35239 lt!2134953))) (head!11079 (tail!10178 (_1!35239 lt!2134953)))) (head!11079 (tail!10178 (tail!10178 (_1!35239 lt!2134953))))) (tail!10178 (tail!10178 (tail!10178 (_1!35239 lt!2134953))))))))

(assert (= (and d!1674790 c!892883) b!5181016))

(assert (= (and d!1674790 (not c!892883)) b!5181017))

(assert (=> d!1674790 m!6239362))

(declare-fun m!6240330 () Bool)

(assert (=> d!1674790 m!6240330))

(assert (=> b!5181016 m!6239360))

(declare-fun m!6240332 () Bool)

(assert (=> b!5181016 m!6240332))

(assert (=> b!5181017 m!6239362))

(declare-fun m!6240334 () Bool)

(assert (=> b!5181017 m!6240334))

(assert (=> b!5181017 m!6239360))

(assert (=> b!5181017 m!6240334))

(declare-fun m!6240336 () Bool)

(assert (=> b!5181017 m!6240336))

(assert (=> b!5181017 m!6239362))

(declare-fun m!6240338 () Bool)

(assert (=> b!5181017 m!6240338))

(assert (=> b!5181017 m!6240336))

(assert (=> b!5181017 m!6240338))

(declare-fun m!6240340 () Bool)

(assert (=> b!5181017 m!6240340))

(assert (=> b!5180563 d!1674790))

(declare-fun bs!1207024 () Bool)

(declare-fun d!1674792 () Bool)

(assert (= bs!1207024 (and d!1674792 d!1674784)))

(declare-fun lambda!258951 () Int)

(assert (=> bs!1207024 (= (= (head!11079 (tail!10178 (_1!35239 lt!2134953))) (h!66624 (t!373453 lt!2134949))) (= lambda!258951 lambda!258950))))

(declare-fun bs!1207025 () Bool)

(assert (= bs!1207025 (and d!1674792 d!1674744)))

(assert (=> bs!1207025 (= (= (head!11079 (tail!10178 (_1!35239 lt!2134953))) call!364128) (= lambda!258951 lambda!258949))))

(declare-fun bs!1207026 () Bool)

(assert (= bs!1207026 (and d!1674792 d!1674376)))

(assert (=> bs!1207026 (= (= (head!11079 (tail!10178 (_1!35239 lt!2134953))) (head!11079 (_1!35239 lt!2134953))) (= lambda!258951 lambda!258908))))

(declare-fun bs!1207027 () Bool)

(assert (= bs!1207027 (and d!1674792 d!1674690)))

(assert (=> bs!1207027 (= (= (head!11079 (tail!10178 (_1!35239 lt!2134953))) (h!66624 (t!373453 testedP!294))) (= lambda!258951 lambda!258945))))

(declare-fun bs!1207028 () Bool)

(assert (= bs!1207028 (and d!1674792 d!1674430)))

(assert (=> bs!1207028 (= (= (head!11079 (tail!10178 (_1!35239 lt!2134953))) (head!11079 (_1!35239 lt!2134956))) (= lambda!258951 lambda!258912))))

(declare-fun bs!1207029 () Bool)

(assert (= bs!1207029 (and d!1674792 d!1674436)))

(assert (=> bs!1207029 (= (= (head!11079 (tail!10178 (_1!35239 lt!2134953))) call!364050) (= lambda!258951 lambda!258913))))

(declare-fun bs!1207030 () Bool)

(assert (= bs!1207030 (and d!1674792 d!1674362)))

(assert (=> bs!1207030 (= (= (head!11079 (tail!10178 (_1!35239 lt!2134953))) call!364090) (= lambda!258951 lambda!258907))))

(declare-fun bs!1207031 () Bool)

(assert (= bs!1207031 (and d!1674792 d!1674228)))

(assert (=> bs!1207031 (= (= (head!11079 (tail!10178 (_1!35239 lt!2134953))) lt!2134944) (= lambda!258951 lambda!258882))))

(declare-fun bs!1207032 () Bool)

(assert (= bs!1207032 (and d!1674792 d!1674604)))

(assert (=> bs!1207032 (= (= (head!11079 (tail!10178 (_1!35239 lt!2134953))) (h!66624 lt!2134949)) (= lambda!258951 lambda!258939))))

(declare-fun bs!1207033 () Bool)

(assert (= bs!1207033 (and d!1674792 d!1674572)))

(assert (=> bs!1207033 (= (= (head!11079 (tail!10178 (_1!35239 lt!2134953))) (h!66624 testedP!294)) (= lambda!258951 lambda!258937))))

(assert (=> d!1674792 true))

(assert (=> d!1674792 (= (derivationStepZipper!1007 (derivationStepZipper!1007 baseZ!62 (head!11079 (_1!35239 lt!2134953))) (head!11079 (tail!10178 (_1!35239 lt!2134953)))) (flatMap!464 (derivationStepZipper!1007 baseZ!62 (head!11079 (_1!35239 lt!2134953))) lambda!258951))))

(declare-fun bs!1207034 () Bool)

(assert (= bs!1207034 d!1674792))

(assert (=> bs!1207034 m!6238860))

(declare-fun m!6240342 () Bool)

(assert (=> bs!1207034 m!6240342))

(assert (=> b!5180563 d!1674792))

(declare-fun d!1674794 () Bool)

(assert (=> d!1674794 (= (head!11079 (tail!10178 (_1!35239 lt!2134953))) (h!66624 (tail!10178 (_1!35239 lt!2134953))))))

(assert (=> b!5180563 d!1674794))

(declare-fun d!1674796 () Bool)

(assert (=> d!1674796 (= (tail!10178 (tail!10178 (_1!35239 lt!2134953))) (t!373453 (tail!10178 (_1!35239 lt!2134953))))))

(assert (=> b!5180563 d!1674796))

(declare-fun d!1674798 () Bool)

(assert (=> d!1674798 (= (isEmpty!32220 (getLanguageWitness!1023 z!4581)) (not ((_ is Some!14846) (getLanguageWitness!1023 z!4581))))))

(assert (=> d!1674556 d!1674798))

(declare-fun bs!1207035 () Bool)

(declare-fun d!1674800 () Bool)

(assert (= bs!1207035 (and d!1674800 d!1674740)))

(declare-fun lambda!258958 () Int)

(assert (=> bs!1207035 (not (= lambda!258958 lambda!258946))))

(declare-fun bs!1207036 () Bool)

(assert (= bs!1207036 (and d!1674800 d!1674160)))

(assert (=> bs!1207036 (not (= lambda!258958 lambda!258876))))

(declare-fun bs!1207037 () Bool)

(assert (= bs!1207037 (and d!1674800 b!5180975)))

(assert (=> bs!1207037 (= lambda!258958 lambda!258948)))

(declare-fun bs!1207038 () Bool)

(assert (= bs!1207038 (and d!1674800 d!1674662)))

(assert (=> bs!1207038 (not (= lambda!258958 lambda!258944))))

(declare-fun bs!1207039 () Bool)

(assert (= bs!1207039 (and d!1674800 b!5180506)))

(assert (=> bs!1207039 (= lambda!258958 lambda!258902)))

(declare-fun bs!1207040 () Bool)

(assert (= bs!1207040 (and d!1674800 b!5180758)))

(assert (=> bs!1207040 (= lambda!258958 lambda!258935)))

(declare-fun bs!1207041 () Bool)

(assert (= bs!1207041 (and d!1674800 d!1674556)))

(assert (=> bs!1207041 (not (= lambda!258958 lambda!258934))))

(declare-fun bs!1207042 () Bool)

(assert (= bs!1207042 (and d!1674800 b!5180974)))

(assert (=> bs!1207042 (= lambda!258958 lambda!258947)))

(declare-fun bs!1207043 () Bool)

(assert (= bs!1207043 (and d!1674800 d!1674274)))

(assert (=> bs!1207043 (not (= lambda!258958 lambda!258901))))

(declare-fun bs!1207044 () Bool)

(assert (= bs!1207044 (and d!1674800 d!1674538)))

(assert (=> bs!1207044 (not (= lambda!258958 lambda!258933))))

(declare-fun bs!1207045 () Bool)

(assert (= bs!1207045 (and d!1674800 d!1674640)))

(assert (=> bs!1207045 (not (= lambda!258958 lambda!258943))))

(declare-fun bs!1207046 () Bool)

(assert (= bs!1207046 (and d!1674800 b!5180507)))

(assert (=> bs!1207046 (= lambda!258958 lambda!258903)))

(declare-fun bs!1207047 () Bool)

(assert (= bs!1207047 (and d!1674800 d!1674590)))

(assert (=> bs!1207047 (not (= lambda!258958 lambda!258938))))

(declare-fun bs!1207048 () Bool)

(assert (= bs!1207048 (and d!1674800 b!5180759)))

(assert (=> bs!1207048 (= lambda!258958 lambda!258936)))

(declare-fun lt!2135637 () Option!14847)

(declare-fun isDefined!11550 (Option!14847) Bool)

(assert (=> d!1674800 (= (isDefined!11550 lt!2135637) (exists!1947 z!4581 lambda!258958))))

(declare-fun e!3228049 () Option!14847)

(assert (=> d!1674800 (= lt!2135637 e!3228049)))

(declare-fun c!892892 () Bool)

(assert (=> d!1674800 (= c!892892 (exists!1947 z!4581 lambda!258958))))

(assert (=> d!1674800 (= (getLanguageWitness!1023 z!4581) lt!2135637)))

(declare-fun b!5181022 () Bool)

(declare-fun getLanguageWitness!1025 (Context!8090) Option!14847)

(declare-fun getWitness!859 ((InoxSet Context!8090) Int) Context!8090)

(assert (=> b!5181022 (= e!3228049 (getLanguageWitness!1025 (getWitness!859 z!4581 lambda!258958)))))

(declare-fun b!5181023 () Bool)

(assert (=> b!5181023 (= e!3228049 None!14846)))

(assert (= (and d!1674800 c!892892) b!5181022))

(assert (= (and d!1674800 (not c!892892)) b!5181023))

(declare-fun m!6240344 () Bool)

(assert (=> d!1674800 m!6240344))

(declare-fun m!6240346 () Bool)

(assert (=> d!1674800 m!6240346))

(assert (=> d!1674800 m!6240346))

(declare-fun m!6240348 () Bool)

(assert (=> b!5181022 m!6240348))

(assert (=> b!5181022 m!6240348))

(declare-fun m!6240350 () Bool)

(assert (=> b!5181022 m!6240350))

(assert (=> d!1674556 d!1674800))

(declare-fun d!1674802 () Bool)

(declare-fun lt!2135640 () Bool)

(assert (=> d!1674802 (= lt!2135640 (forall!14175 (toList!8462 z!4581) lambda!258934))))

(declare-fun choose!38508 ((InoxSet Context!8090) Int) Bool)

(assert (=> d!1674802 (= lt!2135640 (choose!38508 z!4581 lambda!258934))))

(assert (=> d!1674802 (= (forall!14173 z!4581 lambda!258934) lt!2135640)))

(declare-fun bs!1207049 () Bool)

(assert (= bs!1207049 d!1674802))

(assert (=> bs!1207049 m!6239854))

(assert (=> bs!1207049 m!6239854))

(declare-fun m!6240352 () Bool)

(assert (=> bs!1207049 m!6240352))

(declare-fun m!6240354 () Bool)

(assert (=> bs!1207049 m!6240354))

(assert (=> d!1674556 d!1674802))

(assert (=> b!5180753 d!1674642))

(declare-fun b!5181024 () Bool)

(declare-fun c!892893 () Bool)

(declare-fun call!364168 () Bool)

(assert (=> b!5181024 (= c!892893 call!364168)))

(declare-fun lt!2135648 () Unit!152123)

(declare-fun lt!2135645 () Unit!152123)

(assert (=> b!5181024 (= lt!2135648 lt!2135645)))

(assert (=> b!5181024 (= input!5817 lt!2135472)))

(declare-fun call!364166 () Unit!152123)

(assert (=> b!5181024 (= lt!2135645 call!364166)))

(declare-fun lt!2135651 () Unit!152123)

(declare-fun lt!2135655 () Unit!152123)

(assert (=> b!5181024 (= lt!2135651 lt!2135655)))

(declare-fun call!364173 () Bool)

(assert (=> b!5181024 call!364173))

(declare-fun call!364167 () Unit!152123)

(assert (=> b!5181024 (= lt!2135655 call!364167)))

(declare-fun e!3228055 () tuple2!63872)

(declare-fun e!3228056 () tuple2!63872)

(assert (=> b!5181024 (= e!3228055 e!3228056)))

(declare-fun b!5181025 () Bool)

(declare-fun e!3228053 () Bool)

(declare-fun lt!2135643 () tuple2!63872)

(assert (=> b!5181025 (= e!3228053 (>= (size!39697 (_1!35239 lt!2135643)) (size!39697 lt!2135472)))))

(declare-fun b!5181026 () Bool)

(declare-fun c!892896 () Bool)

(assert (=> b!5181026 (= c!892896 call!364168)))

(declare-fun lt!2135664 () Unit!152123)

(declare-fun lt!2135663 () Unit!152123)

(assert (=> b!5181026 (= lt!2135664 lt!2135663)))

(declare-fun lt!2135649 () C!29592)

(declare-fun lt!2135652 () List!60300)

(assert (=> b!5181026 (= (++!13177 (++!13177 lt!2135472 (Cons!60176 lt!2135649 Nil!60176)) lt!2135652) input!5817)))

(assert (=> b!5181026 (= lt!2135663 (lemmaMoveElementToOtherListKeepsConcatEq!1596 lt!2135472 lt!2135649 lt!2135652 input!5817))))

(assert (=> b!5181026 (= lt!2135652 (tail!10178 call!364143))))

(assert (=> b!5181026 (= lt!2135649 (head!11079 call!364143))))

(declare-fun lt!2135646 () Unit!152123)

(declare-fun lt!2135647 () Unit!152123)

(assert (=> b!5181026 (= lt!2135646 lt!2135647)))

(assert (=> b!5181026 (isPrefix!5794 (++!13177 lt!2135472 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2135472)) Nil!60176)) input!5817)))

(assert (=> b!5181026 (= lt!2135647 (lemmaAddHeadSuffixToPrefixStillPrefix!1099 lt!2135472 input!5817))))

(declare-fun lt!2135656 () List!60300)

(assert (=> b!5181026 (= lt!2135656 (++!13177 lt!2135472 (Cons!60176 (head!11079 call!364143) Nil!60176)))))

(declare-fun lt!2135665 () Unit!152123)

(declare-fun e!3228057 () Unit!152123)

(assert (=> b!5181026 (= lt!2135665 e!3228057)))

(declare-fun c!892898 () Bool)

(assert (=> b!5181026 (= c!892898 (= (size!39697 lt!2135472) (size!39697 input!5817)))))

(declare-fun lt!2135644 () Unit!152123)

(declare-fun lt!2135653 () Unit!152123)

(assert (=> b!5181026 (= lt!2135644 lt!2135653)))

(assert (=> b!5181026 (<= (size!39697 lt!2135472) (size!39697 input!5817))))

(assert (=> b!5181026 (= lt!2135653 (lemmaIsPrefixThenSmallerEqSize!955 lt!2135472 input!5817))))

(declare-fun e!3228051 () tuple2!63872)

(assert (=> b!5181026 (= e!3228055 e!3228051)))

(declare-fun b!5181027 () Bool)

(declare-fun e!3228054 () tuple2!63872)

(assert (=> b!5181027 (= e!3228054 e!3228055)))

(declare-fun c!892894 () Bool)

(assert (=> b!5181027 (= c!892894 (= (+ (size!39697 lt!2134949) 1) (size!39697 input!5817)))))

(declare-fun b!5181028 () Bool)

(declare-fun call!364169 () tuple2!63872)

(assert (=> b!5181028 (= e!3228051 call!364169)))

(declare-fun b!5181029 () Bool)

(declare-fun e!3228052 () Bool)

(assert (=> b!5181029 (= e!3228052 e!3228053)))

(declare-fun res!2201146 () Bool)

(assert (=> b!5181029 (=> res!2201146 e!3228053)))

(assert (=> b!5181029 (= res!2201146 (isEmpty!32219 (_1!35239 lt!2135643)))))

(declare-fun bm!364161 () Bool)

(assert (=> bm!364161 (= call!364173 (isPrefix!5794 input!5817 input!5817))))

(declare-fun b!5181030 () Bool)

(declare-fun Unit!152170 () Unit!152123)

(assert (=> b!5181030 (= e!3228057 Unit!152170)))

(declare-fun bm!364162 () Bool)

(assert (=> bm!364162 (= call!364166 (lemmaIsPrefixSameLengthThenSameList!1439 input!5817 lt!2135472 input!5817))))

(declare-fun bm!364163 () Bool)

(assert (=> bm!364163 (= call!364168 (nullableZipper!1199 call!364142))))

(declare-fun b!5181031 () Bool)

(declare-fun Unit!152171 () Unit!152123)

(assert (=> b!5181031 (= e!3228057 Unit!152171)))

(declare-fun lt!2135659 () Unit!152123)

(assert (=> b!5181031 (= lt!2135659 call!364167)))

(assert (=> b!5181031 call!364173))

(declare-fun lt!2135657 () Unit!152123)

(assert (=> b!5181031 (= lt!2135657 lt!2135659)))

(declare-fun lt!2135661 () Unit!152123)

(assert (=> b!5181031 (= lt!2135661 call!364166)))

(assert (=> b!5181031 (= input!5817 lt!2135472)))

(declare-fun lt!2135662 () Unit!152123)

(assert (=> b!5181031 (= lt!2135662 lt!2135661)))

(assert (=> b!5181031 false))

(declare-fun bm!364164 () Bool)

(declare-fun call!364171 () List!60300)

(assert (=> bm!364164 (= call!364171 (tail!10178 call!364143))))

(declare-fun b!5181032 () Bool)

(declare-fun e!3228050 () tuple2!63872)

(declare-fun lt!2135654 () tuple2!63872)

(assert (=> b!5181032 (= e!3228050 lt!2135654)))

(declare-fun b!5181033 () Bool)

(assert (=> b!5181033 (= e!3228056 (tuple2!63873 Nil!60176 input!5817))))

(declare-fun b!5181034 () Bool)

(assert (=> b!5181034 (= e!3228050 (tuple2!63873 lt!2135472 call!364143))))

(declare-fun bm!364166 () Bool)

(declare-fun call!364172 () C!29592)

(assert (=> bm!364166 (= call!364172 (head!11079 call!364143))))

(declare-fun bm!364167 () Bool)

(assert (=> bm!364167 (= call!364167 (lemmaIsPrefixRefl!3799 input!5817 input!5817))))

(declare-fun call!364170 () (InoxSet Context!8090))

(declare-fun bm!364168 () Bool)

(assert (=> bm!364168 (= call!364169 (findLongestMatchInnerZipper!317 call!364170 lt!2135656 (+ (size!39697 lt!2134949) 1 1) call!364171 input!5817 (size!39697 input!5817)))))

(declare-fun b!5181035 () Bool)

(assert (=> b!5181035 (= e!3228056 (tuple2!63873 lt!2135472 Nil!60176))))

(declare-fun b!5181036 () Bool)

(assert (=> b!5181036 (= e!3228051 e!3228050)))

(assert (=> b!5181036 (= lt!2135654 call!364169)))

(declare-fun c!892895 () Bool)

(assert (=> b!5181036 (= c!892895 (isEmpty!32219 (_1!35239 lt!2135654)))))

(declare-fun b!5181037 () Bool)

(assert (=> b!5181037 (= e!3228054 (tuple2!63873 Nil!60176 input!5817))))

(declare-fun bm!364165 () Bool)

(assert (=> bm!364165 (= call!364170 (derivationStepZipper!1007 call!364142 call!364172))))

(declare-fun d!1674804 () Bool)

(assert (=> d!1674804 e!3228052))

(declare-fun res!2201145 () Bool)

(assert (=> d!1674804 (=> (not res!2201145) (not e!3228052))))

(assert (=> d!1674804 (= res!2201145 (= (++!13177 (_1!35239 lt!2135643) (_2!35239 lt!2135643)) input!5817))))

(assert (=> d!1674804 (= lt!2135643 e!3228054)))

(declare-fun c!892897 () Bool)

(assert (=> d!1674804 (= c!892897 (lostCauseZipper!1348 call!364142))))

(declare-fun lt!2135642 () Unit!152123)

(declare-fun Unit!152172 () Unit!152123)

(assert (=> d!1674804 (= lt!2135642 Unit!152172)))

(assert (=> d!1674804 (= (getSuffix!3442 input!5817 lt!2135472) call!364143)))

(declare-fun lt!2135660 () Unit!152123)

(declare-fun lt!2135666 () Unit!152123)

(assert (=> d!1674804 (= lt!2135660 lt!2135666)))

(declare-fun lt!2135641 () List!60300)

(assert (=> d!1674804 (= call!364143 lt!2135641)))

(assert (=> d!1674804 (= lt!2135666 (lemmaSamePrefixThenSameSuffix!2715 lt!2135472 call!364143 lt!2135472 lt!2135641 input!5817))))

(assert (=> d!1674804 (= lt!2135641 (getSuffix!3442 input!5817 lt!2135472))))

(declare-fun lt!2135658 () Unit!152123)

(declare-fun lt!2135650 () Unit!152123)

(assert (=> d!1674804 (= lt!2135658 lt!2135650)))

(assert (=> d!1674804 (isPrefix!5794 lt!2135472 (++!13177 lt!2135472 call!364143))))

(assert (=> d!1674804 (= lt!2135650 (lemmaConcatTwoListThenFirstIsPrefix!3609 lt!2135472 call!364143))))

(assert (=> d!1674804 (= (++!13177 lt!2135472 call!364143) input!5817)))

(assert (=> d!1674804 (= (findLongestMatchInnerZipper!317 call!364142 lt!2135472 (+ (size!39697 lt!2134949) 1) call!364143 input!5817 (size!39697 input!5817)) lt!2135643)))

(assert (= (and d!1674804 c!892897) b!5181037))

(assert (= (and d!1674804 (not c!892897)) b!5181027))

(assert (= (and b!5181027 c!892894) b!5181024))

(assert (= (and b!5181027 (not c!892894)) b!5181026))

(assert (= (and b!5181024 c!892893) b!5181035))

(assert (= (and b!5181024 (not c!892893)) b!5181033))

(assert (= (and b!5181026 c!892898) b!5181031))

(assert (= (and b!5181026 (not c!892898)) b!5181030))

(assert (= (and b!5181026 c!892896) b!5181036))

(assert (= (and b!5181026 (not c!892896)) b!5181028))

(assert (= (and b!5181036 c!892895) b!5181034))

(assert (= (and b!5181036 (not c!892895)) b!5181032))

(assert (= (or b!5181036 b!5181028) bm!364164))

(assert (= (or b!5181036 b!5181028) bm!364166))

(assert (= (or b!5181036 b!5181028) bm!364165))

(assert (= (or b!5181036 b!5181028) bm!364168))

(assert (= (or b!5181024 b!5181031) bm!364167))

(assert (= (or b!5181024 b!5181026) bm!364163))

(assert (= (or b!5181024 b!5181031) bm!364161))

(assert (= (or b!5181024 b!5181031) bm!364162))

(assert (= (and d!1674804 res!2201145) b!5181029))

(assert (= (and b!5181029 (not res!2201146)) b!5181025))

(assert (=> bm!364161 m!6238556))

(declare-fun m!6240356 () Bool)

(assert (=> bm!364163 m!6240356))

(declare-fun m!6240358 () Bool)

(assert (=> bm!364162 m!6240358))

(declare-fun m!6240360 () Bool)

(assert (=> bm!364165 m!6240360))

(declare-fun m!6240362 () Bool)

(assert (=> d!1674804 m!6240362))

(declare-fun m!6240364 () Bool)

(assert (=> d!1674804 m!6240364))

(assert (=> d!1674804 m!6240364))

(declare-fun m!6240366 () Bool)

(assert (=> d!1674804 m!6240366))

(declare-fun m!6240368 () Bool)

(assert (=> d!1674804 m!6240368))

(declare-fun m!6240370 () Bool)

(assert (=> d!1674804 m!6240370))

(declare-fun m!6240372 () Bool)

(assert (=> d!1674804 m!6240372))

(declare-fun m!6240374 () Bool)

(assert (=> d!1674804 m!6240374))

(assert (=> bm!364168 m!6238548))

(declare-fun m!6240376 () Bool)

(assert (=> bm!364168 m!6240376))

(declare-fun m!6240378 () Bool)

(assert (=> b!5181026 m!6240378))

(declare-fun m!6240380 () Bool)

(assert (=> b!5181026 m!6240380))

(declare-fun m!6240382 () Bool)

(assert (=> b!5181026 m!6240382))

(assert (=> b!5181026 m!6240368))

(declare-fun m!6240384 () Bool)

(assert (=> b!5181026 m!6240384))

(declare-fun m!6240386 () Bool)

(assert (=> b!5181026 m!6240386))

(assert (=> b!5181026 m!6240368))

(assert (=> b!5181026 m!6238548))

(assert (=> b!5181026 m!6240378))

(declare-fun m!6240388 () Bool)

(assert (=> b!5181026 m!6240388))

(declare-fun m!6240390 () Bool)

(assert (=> b!5181026 m!6240390))

(declare-fun m!6240392 () Bool)

(assert (=> b!5181026 m!6240392))

(declare-fun m!6240394 () Bool)

(assert (=> b!5181026 m!6240394))

(declare-fun m!6240396 () Bool)

(assert (=> b!5181026 m!6240396))

(assert (=> b!5181026 m!6240382))

(declare-fun m!6240398 () Bool)

(assert (=> b!5181026 m!6240398))

(declare-fun m!6240400 () Bool)

(assert (=> b!5181026 m!6240400))

(declare-fun m!6240402 () Bool)

(assert (=> b!5181029 m!6240402))

(declare-fun m!6240404 () Bool)

(assert (=> b!5181036 m!6240404))

(declare-fun m!6240406 () Bool)

(assert (=> b!5181025 m!6240406))

(assert (=> b!5181025 m!6240386))

(assert (=> bm!364164 m!6240396))

(assert (=> bm!364167 m!6238554))

(assert (=> bm!364166 m!6240392))

(assert (=> bm!364140 d!1674804))

(declare-fun d!1674806 () Bool)

(declare-fun res!2201147 () Bool)

(declare-fun e!3228058 () Bool)

(assert (=> d!1674806 (=> res!2201147 e!3228058)))

(assert (=> d!1674806 (= res!2201147 ((_ is Nil!60175) (t!373452 (exprs!4545 setElem!32402))))))

(assert (=> d!1674806 (= (forall!14172 (t!373452 (exprs!4545 setElem!32402)) lambda!258883) e!3228058)))

(declare-fun b!5181038 () Bool)

(declare-fun e!3228059 () Bool)

(assert (=> b!5181038 (= e!3228058 e!3228059)))

(declare-fun res!2201148 () Bool)

(assert (=> b!5181038 (=> (not res!2201148) (not e!3228059))))

(assert (=> b!5181038 (= res!2201148 (dynLambda!23888 lambda!258883 (h!66623 (t!373452 (exprs!4545 setElem!32402)))))))

(declare-fun b!5181039 () Bool)

(assert (=> b!5181039 (= e!3228059 (forall!14172 (t!373452 (t!373452 (exprs!4545 setElem!32402))) lambda!258883))))

(assert (= (and d!1674806 (not res!2201147)) b!5181038))

(assert (= (and b!5181038 res!2201148) b!5181039))

(declare-fun b_lambda!201091 () Bool)

(assert (=> (not b_lambda!201091) (not b!5181038)))

(declare-fun m!6240408 () Bool)

(assert (=> b!5181038 m!6240408))

(declare-fun m!6240410 () Bool)

(assert (=> b!5181039 m!6240410))

(assert (=> b!5180577 d!1674806))

(assert (=> bm!364133 d!1674128))

(declare-fun b!5181041 () Bool)

(declare-fun res!2201151 () Bool)

(declare-fun e!3228060 () Bool)

(assert (=> b!5181041 (=> (not res!2201151) (not e!3228060))))

(assert (=> b!5181041 (= res!2201151 (= (head!11079 (tail!10178 (tail!10178 lt!2134949))) (head!11079 (tail!10178 (tail!10178 input!5817)))))))

(declare-fun b!5181043 () Bool)

(declare-fun e!3228062 () Bool)

(assert (=> b!5181043 (= e!3228062 (>= (size!39697 (tail!10178 (tail!10178 input!5817))) (size!39697 (tail!10178 (tail!10178 lt!2134949)))))))

(declare-fun b!5181040 () Bool)

(declare-fun e!3228061 () Bool)

(assert (=> b!5181040 (= e!3228061 e!3228060)))

(declare-fun res!2201150 () Bool)

(assert (=> b!5181040 (=> (not res!2201150) (not e!3228060))))

(assert (=> b!5181040 (= res!2201150 (not ((_ is Nil!60176) (tail!10178 (tail!10178 input!5817)))))))

(declare-fun b!5181042 () Bool)

(assert (=> b!5181042 (= e!3228060 (isPrefix!5794 (tail!10178 (tail!10178 (tail!10178 lt!2134949))) (tail!10178 (tail!10178 (tail!10178 input!5817)))))))

(declare-fun d!1674808 () Bool)

(assert (=> d!1674808 e!3228062))

(declare-fun res!2201152 () Bool)

(assert (=> d!1674808 (=> res!2201152 e!3228062)))

(declare-fun lt!2135667 () Bool)

(assert (=> d!1674808 (= res!2201152 (not lt!2135667))))

(assert (=> d!1674808 (= lt!2135667 e!3228061)))

(declare-fun res!2201149 () Bool)

(assert (=> d!1674808 (=> res!2201149 e!3228061)))

(assert (=> d!1674808 (= res!2201149 ((_ is Nil!60176) (tail!10178 (tail!10178 lt!2134949))))))

(assert (=> d!1674808 (= (isPrefix!5794 (tail!10178 (tail!10178 lt!2134949)) (tail!10178 (tail!10178 input!5817))) lt!2135667)))

(assert (= (and d!1674808 (not res!2201149)) b!5181040))

(assert (= (and b!5181040 res!2201150) b!5181041))

(assert (= (and b!5181041 res!2201151) b!5181042))

(assert (= (and d!1674808 (not res!2201152)) b!5181043))

(assert (=> b!5181041 m!6239920))

(declare-fun m!6240412 () Bool)

(assert (=> b!5181041 m!6240412))

(assert (=> b!5181041 m!6239446))

(assert (=> b!5181041 m!6240068))

(assert (=> b!5181043 m!6239446))

(assert (=> b!5181043 m!6240070))

(assert (=> b!5181043 m!6239920))

(declare-fun m!6240414 () Bool)

(assert (=> b!5181043 m!6240414))

(assert (=> b!5181042 m!6239920))

(declare-fun m!6240416 () Bool)

(assert (=> b!5181042 m!6240416))

(assert (=> b!5181042 m!6239446))

(assert (=> b!5181042 m!6240072))

(assert (=> b!5181042 m!6240416))

(assert (=> b!5181042 m!6240072))

(declare-fun m!6240418 () Bool)

(assert (=> b!5181042 m!6240418))

(assert (=> b!5180806 d!1674808))

(declare-fun d!1674810 () Bool)

(assert (=> d!1674810 (= (tail!10178 (tail!10178 lt!2134949)) (t!373453 (tail!10178 lt!2134949)))))

(assert (=> b!5180806 d!1674810))

(assert (=> b!5180806 d!1674658))

(declare-fun d!1674812 () Bool)

(declare-fun c!892899 () Bool)

(assert (=> d!1674812 (= c!892899 ((_ is Nil!60176) lt!2135514))))

(declare-fun e!3228063 () (InoxSet C!29592))

(assert (=> d!1674812 (= (content!10669 lt!2135514) e!3228063)))

(declare-fun b!5181044 () Bool)

(assert (=> b!5181044 (= e!3228063 ((as const (Array C!29592 Bool)) false))))

(declare-fun b!5181045 () Bool)

(assert (=> b!5181045 (= e!3228063 ((_ map or) (store ((as const (Array C!29592 Bool)) false) (h!66624 lt!2135514) true) (content!10669 (t!373453 lt!2135514))))))

(assert (= (and d!1674812 c!892899) b!5181044))

(assert (= (and d!1674812 (not c!892899)) b!5181045))

(declare-fun m!6240420 () Bool)

(assert (=> b!5181045 m!6240420))

(declare-fun m!6240422 () Bool)

(assert (=> b!5181045 m!6240422))

(assert (=> d!1674498 d!1674812))

(declare-fun d!1674814 () Bool)

(declare-fun c!892900 () Bool)

(assert (=> d!1674814 (= c!892900 ((_ is Nil!60176) (t!373453 testedP!294)))))

(declare-fun e!3228064 () (InoxSet C!29592))

(assert (=> d!1674814 (= (content!10669 (t!373453 testedP!294)) e!3228064)))

(declare-fun b!5181046 () Bool)

(assert (=> b!5181046 (= e!3228064 ((as const (Array C!29592 Bool)) false))))

(declare-fun b!5181047 () Bool)

(assert (=> b!5181047 (= e!3228064 ((_ map or) (store ((as const (Array C!29592 Bool)) false) (h!66624 (t!373453 testedP!294)) true) (content!10669 (t!373453 (t!373453 testedP!294)))))))

(assert (= (and d!1674814 c!892900) b!5181046))

(assert (= (and d!1674814 (not c!892900)) b!5181047))

(declare-fun m!6240424 () Bool)

(assert (=> b!5181047 m!6240424))

(assert (=> b!5181047 m!6240238))

(assert (=> d!1674498 d!1674814))

(assert (=> d!1674498 d!1674426))

(declare-fun d!1674816 () Bool)

(declare-fun lt!2135668 () Int)

(assert (=> d!1674816 (>= lt!2135668 0)))

(declare-fun e!3228065 () Int)

(assert (=> d!1674816 (= lt!2135668 e!3228065)))

(declare-fun c!892901 () Bool)

(assert (=> d!1674816 (= c!892901 ((_ is Nil!60176) (t!373453 lt!2135061)))))

(assert (=> d!1674816 (= (size!39697 (t!373453 lt!2135061)) lt!2135668)))

(declare-fun b!5181048 () Bool)

(assert (=> b!5181048 (= e!3228065 0)))

(declare-fun b!5181049 () Bool)

(assert (=> b!5181049 (= e!3228065 (+ 1 (size!39697 (t!373453 (t!373453 lt!2135061)))))))

(assert (= (and d!1674816 c!892901) b!5181048))

(assert (= (and d!1674816 (not c!892901)) b!5181049))

(declare-fun m!6240426 () Bool)

(assert (=> b!5181049 m!6240426))

(assert (=> b!5180811 d!1674816))

(declare-fun bs!1207050 () Bool)

(declare-fun d!1674818 () Bool)

(assert (= bs!1207050 (and d!1674818 d!1674740)))

(declare-fun lambda!258959 () Int)

(assert (=> bs!1207050 (not (= lambda!258959 lambda!258946))))

(declare-fun bs!1207051 () Bool)

(assert (= bs!1207051 (and d!1674818 d!1674160)))

(assert (=> bs!1207051 (not (= lambda!258959 lambda!258876))))

(declare-fun bs!1207052 () Bool)

(assert (= bs!1207052 (and d!1674818 b!5180975)))

(assert (=> bs!1207052 (not (= lambda!258959 lambda!258948))))

(declare-fun bs!1207053 () Bool)

(assert (= bs!1207053 (and d!1674818 d!1674662)))

(assert (=> bs!1207053 (not (= lambda!258959 lambda!258944))))

(declare-fun bs!1207054 () Bool)

(assert (= bs!1207054 (and d!1674818 d!1674800)))

(assert (=> bs!1207054 (not (= lambda!258959 lambda!258958))))

(declare-fun bs!1207055 () Bool)

(assert (= bs!1207055 (and d!1674818 b!5180506)))

(assert (=> bs!1207055 (not (= lambda!258959 lambda!258902))))

(declare-fun bs!1207056 () Bool)

(assert (= bs!1207056 (and d!1674818 b!5180758)))

(assert (=> bs!1207056 (not (= lambda!258959 lambda!258935))))

(declare-fun bs!1207057 () Bool)

(assert (= bs!1207057 (and d!1674818 d!1674556)))

(assert (=> bs!1207057 (not (= lambda!258959 lambda!258934))))

(declare-fun bs!1207058 () Bool)

(assert (= bs!1207058 (and d!1674818 b!5180974)))

(assert (=> bs!1207058 (not (= lambda!258959 lambda!258947))))

(declare-fun bs!1207059 () Bool)

(assert (= bs!1207059 (and d!1674818 d!1674274)))

(assert (=> bs!1207059 (not (= lambda!258959 lambda!258901))))

(declare-fun bs!1207060 () Bool)

(assert (= bs!1207060 (and d!1674818 d!1674538)))

(assert (=> bs!1207060 (not (= lambda!258959 lambda!258933))))

(declare-fun bs!1207061 () Bool)

(assert (= bs!1207061 (and d!1674818 d!1674640)))

(assert (=> bs!1207061 (= (= lambda!258876 (ite c!892814 lambda!258935 lambda!258936)) (= lambda!258959 lambda!258943))))

(declare-fun bs!1207062 () Bool)

(assert (= bs!1207062 (and d!1674818 b!5180507)))

(assert (=> bs!1207062 (not (= lambda!258959 lambda!258903))))

(declare-fun bs!1207063 () Bool)

(assert (= bs!1207063 (and d!1674818 d!1674590)))

(assert (=> bs!1207063 (not (= lambda!258959 lambda!258938))))

(declare-fun bs!1207064 () Bool)

(assert (= bs!1207064 (and d!1674818 b!5180759)))

(assert (=> bs!1207064 (not (= lambda!258959 lambda!258936))))

(assert (=> d!1674818 true))

(assert (=> d!1674818 (< (dynLambda!23890 order!27047 lambda!258876) (dynLambda!23890 order!27047 lambda!258959))))

(assert (=> d!1674818 (= (exists!1949 (toList!8462 z!4581) lambda!258876) (not (forall!14175 (toList!8462 z!4581) lambda!258959)))))

(declare-fun bs!1207065 () Bool)

(assert (= bs!1207065 d!1674818))

(assert (=> bs!1207065 m!6239854))

(declare-fun m!6240428 () Bool)

(assert (=> bs!1207065 m!6240428))

(assert (=> d!1674578 d!1674818))

(declare-fun d!1674820 () Bool)

(declare-fun e!3228066 () Bool)

(assert (=> d!1674820 e!3228066))

(declare-fun res!2201153 () Bool)

(assert (=> d!1674820 (=> (not res!2201153) (not e!3228066))))

(declare-fun lt!2135669 () List!60301)

(assert (=> d!1674820 (= res!2201153 (noDuplicate!1139 lt!2135669))))

(assert (=> d!1674820 (= lt!2135669 (choose!38507 z!4581))))

(assert (=> d!1674820 (= (toList!8462 z!4581) lt!2135669)))

(declare-fun b!5181050 () Bool)

(assert (=> b!5181050 (= e!3228066 (= (content!10671 lt!2135669) z!4581))))

(assert (= (and d!1674820 res!2201153) b!5181050))

(declare-fun m!6240430 () Bool)

(assert (=> d!1674820 m!6240430))

(declare-fun m!6240432 () Bool)

(assert (=> d!1674820 m!6240432))

(declare-fun m!6240434 () Bool)

(assert (=> b!5181050 m!6240434))

(assert (=> d!1674578 d!1674820))

(declare-fun d!1674822 () Bool)

(declare-fun res!2201156 () Bool)

(assert (=> d!1674822 (= res!2201156 (exists!1949 (toList!8462 z!4581) lambda!258876))))

(assert (=> d!1674822 true))

(assert (=> d!1674822 (= (choose!38505 z!4581 lambda!258876) res!2201156)))

(declare-fun bs!1207066 () Bool)

(assert (= bs!1207066 d!1674822))

(assert (=> bs!1207066 m!6239854))

(assert (=> bs!1207066 m!6239854))

(assert (=> bs!1207066 m!6239912))

(assert (=> d!1674578 d!1674822))

(assert (=> d!1674464 d!1674230))

(declare-fun d!1674824 () Bool)

(assert (=> d!1674824 (isPrefix!5794 (++!13177 lt!2134949 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176)) input!5817)))

(assert (=> d!1674824 true))

(declare-fun _$65!1849 () Unit!152123)

(assert (=> d!1674824 (= (choose!38492 lt!2134949 input!5817) _$65!1849)))

(declare-fun bs!1207067 () Bool)

(assert (= bs!1207067 d!1674824))

(assert (=> bs!1207067 m!6238570))

(assert (=> bs!1207067 m!6238570))

(assert (=> bs!1207067 m!6238894))

(assert (=> bs!1207067 m!6238888))

(assert (=> bs!1207067 m!6238888))

(assert (=> bs!1207067 m!6238896))

(assert (=> d!1674464 d!1674824))

(assert (=> d!1674464 d!1674460))

(assert (=> d!1674464 d!1674466))

(assert (=> d!1674464 d!1674438))

(assert (=> d!1674464 d!1674208))

(assert (=> b!5180661 d!1674218))

(declare-fun b!5181052 () Bool)

(declare-fun e!3228068 () List!60300)

(assert (=> b!5181052 (= e!3228068 (Cons!60176 (h!66624 (++!13177 lt!2134949 (Cons!60176 lt!2135465 Nil!60176))) (++!13177 (t!373453 (++!13177 lt!2134949 (Cons!60176 lt!2135465 Nil!60176))) lt!2135468)))))

(declare-fun b!5181051 () Bool)

(assert (=> b!5181051 (= e!3228068 lt!2135468)))

(declare-fun b!5181053 () Bool)

(declare-fun res!2201157 () Bool)

(declare-fun e!3228067 () Bool)

(assert (=> b!5181053 (=> (not res!2201157) (not e!3228067))))

(declare-fun lt!2135670 () List!60300)

(assert (=> b!5181053 (= res!2201157 (= (size!39697 lt!2135670) (+ (size!39697 (++!13177 lt!2134949 (Cons!60176 lt!2135465 Nil!60176))) (size!39697 lt!2135468))))))

(declare-fun b!5181054 () Bool)

(assert (=> b!5181054 (= e!3228067 (or (not (= lt!2135468 Nil!60176)) (= lt!2135670 (++!13177 lt!2134949 (Cons!60176 lt!2135465 Nil!60176)))))))

(declare-fun d!1674826 () Bool)

(assert (=> d!1674826 e!3228067))

(declare-fun res!2201158 () Bool)

(assert (=> d!1674826 (=> (not res!2201158) (not e!3228067))))

(assert (=> d!1674826 (= res!2201158 (= (content!10669 lt!2135670) ((_ map or) (content!10669 (++!13177 lt!2134949 (Cons!60176 lt!2135465 Nil!60176))) (content!10669 lt!2135468))))))

(assert (=> d!1674826 (= lt!2135670 e!3228068)))

(declare-fun c!892902 () Bool)

(assert (=> d!1674826 (= c!892902 ((_ is Nil!60176) (++!13177 lt!2134949 (Cons!60176 lt!2135465 Nil!60176))))))

(assert (=> d!1674826 (= (++!13177 (++!13177 lt!2134949 (Cons!60176 lt!2135465 Nil!60176)) lt!2135468) lt!2135670)))

(assert (= (and d!1674826 c!892902) b!5181051))

(assert (= (and d!1674826 (not c!892902)) b!5181052))

(assert (= (and d!1674826 res!2201158) b!5181053))

(assert (= (and b!5181053 res!2201157) b!5181054))

(declare-fun m!6240436 () Bool)

(assert (=> b!5181052 m!6240436))

(declare-fun m!6240438 () Bool)

(assert (=> b!5181053 m!6240438))

(assert (=> b!5181053 m!6239634))

(declare-fun m!6240440 () Bool)

(assert (=> b!5181053 m!6240440))

(declare-fun m!6240442 () Bool)

(assert (=> b!5181053 m!6240442))

(declare-fun m!6240444 () Bool)

(assert (=> d!1674826 m!6240444))

(assert (=> d!1674826 m!6239634))

(declare-fun m!6240446 () Bool)

(assert (=> d!1674826 m!6240446))

(declare-fun m!6240448 () Bool)

(assert (=> d!1674826 m!6240448))

(assert (=> b!5180661 d!1674826))

(assert (=> b!5180661 d!1674458))

(assert (=> b!5180661 d!1674460))

(assert (=> b!5180661 d!1674438))

(assert (=> b!5180661 d!1674142))

(assert (=> b!5180661 d!1674230))

(declare-fun b!5181056 () Bool)

(declare-fun e!3228070 () List!60300)

(assert (=> b!5181056 (= e!3228070 (Cons!60176 (h!66624 lt!2134949) (++!13177 (t!373453 lt!2134949) (Cons!60176 lt!2135465 Nil!60176))))))

(declare-fun b!5181055 () Bool)

(assert (=> b!5181055 (= e!3228070 (Cons!60176 lt!2135465 Nil!60176))))

(declare-fun b!5181057 () Bool)

(declare-fun res!2201159 () Bool)

(declare-fun e!3228069 () Bool)

(assert (=> b!5181057 (=> (not res!2201159) (not e!3228069))))

(declare-fun lt!2135671 () List!60300)

(assert (=> b!5181057 (= res!2201159 (= (size!39697 lt!2135671) (+ (size!39697 lt!2134949) (size!39697 (Cons!60176 lt!2135465 Nil!60176)))))))

(declare-fun b!5181058 () Bool)

(assert (=> b!5181058 (= e!3228069 (or (not (= (Cons!60176 lt!2135465 Nil!60176) Nil!60176)) (= lt!2135671 lt!2134949)))))

(declare-fun d!1674828 () Bool)

(assert (=> d!1674828 e!3228069))

(declare-fun res!2201160 () Bool)

(assert (=> d!1674828 (=> (not res!2201160) (not e!3228069))))

(assert (=> d!1674828 (= res!2201160 (= (content!10669 lt!2135671) ((_ map or) (content!10669 lt!2134949) (content!10669 (Cons!60176 lt!2135465 Nil!60176)))))))

(assert (=> d!1674828 (= lt!2135671 e!3228070)))

(declare-fun c!892903 () Bool)

(assert (=> d!1674828 (= c!892903 ((_ is Nil!60176) lt!2134949))))

(assert (=> d!1674828 (= (++!13177 lt!2134949 (Cons!60176 lt!2135465 Nil!60176)) lt!2135671)))

(assert (= (and d!1674828 c!892903) b!5181055))

(assert (= (and d!1674828 (not c!892903)) b!5181056))

(assert (= (and d!1674828 res!2201160) b!5181057))

(assert (= (and b!5181057 res!2201159) b!5181058))

(declare-fun m!6240450 () Bool)

(assert (=> b!5181056 m!6240450))

(declare-fun m!6240452 () Bool)

(assert (=> b!5181057 m!6240452))

(assert (=> b!5181057 m!6238560))

(declare-fun m!6240454 () Bool)

(assert (=> b!5181057 m!6240454))

(declare-fun m!6240456 () Bool)

(assert (=> d!1674828 m!6240456))

(assert (=> d!1674828 m!6239092))

(declare-fun m!6240458 () Bool)

(assert (=> d!1674828 m!6240458))

(assert (=> b!5180661 d!1674828))

(assert (=> b!5180661 d!1674454))

(assert (=> b!5180661 d!1674464))

(declare-fun d!1674830 () Bool)

(assert (=> d!1674830 (= (++!13177 (++!13177 lt!2134949 (Cons!60176 lt!2135465 Nil!60176)) lt!2135468) input!5817)))

(declare-fun lt!2135672 () Unit!152123)

(assert (=> d!1674830 (= lt!2135672 (choose!38500 lt!2134949 lt!2135465 lt!2135468 input!5817))))

(assert (=> d!1674830 (= (++!13177 lt!2134949 (Cons!60176 lt!2135465 lt!2135468)) input!5817)))

(assert (=> d!1674830 (= (lemmaMoveElementToOtherListKeepsConcatEq!1596 lt!2134949 lt!2135465 lt!2135468 input!5817) lt!2135672)))

(declare-fun bs!1207068 () Bool)

(assert (= bs!1207068 d!1674830))

(assert (=> bs!1207068 m!6239634))

(assert (=> bs!1207068 m!6239634))

(assert (=> bs!1207068 m!6239638))

(declare-fun m!6240460 () Bool)

(assert (=> bs!1207068 m!6240460))

(declare-fun m!6240462 () Bool)

(assert (=> bs!1207068 m!6240462))

(assert (=> b!5180661 d!1674830))

(assert (=> b!5180661 d!1674466))

(declare-fun d!1674832 () Bool)

(declare-fun res!2201161 () Bool)

(declare-fun e!3228071 () Bool)

(assert (=> d!1674832 (=> res!2201161 e!3228071)))

(assert (=> d!1674832 (= res!2201161 ((_ is Nil!60175) (exprs!4545 setElem!32410)))))

(assert (=> d!1674832 (= (forall!14172 (exprs!4545 setElem!32410) lambda!258910) e!3228071)))

(declare-fun b!5181059 () Bool)

(declare-fun e!3228072 () Bool)

(assert (=> b!5181059 (= e!3228071 e!3228072)))

(declare-fun res!2201162 () Bool)

(assert (=> b!5181059 (=> (not res!2201162) (not e!3228072))))

(assert (=> b!5181059 (= res!2201162 (dynLambda!23888 lambda!258910 (h!66623 (exprs!4545 setElem!32410))))))

(declare-fun b!5181060 () Bool)

(assert (=> b!5181060 (= e!3228072 (forall!14172 (t!373452 (exprs!4545 setElem!32410)) lambda!258910))))

(assert (= (and d!1674832 (not res!2201161)) b!5181059))

(assert (= (and b!5181059 res!2201162) b!5181060))

(declare-fun b_lambda!201093 () Bool)

(assert (=> (not b_lambda!201093) (not b!5181059)))

(declare-fun m!6240464 () Bool)

(assert (=> b!5181059 m!6240464))

(declare-fun m!6240466 () Bool)

(assert (=> b!5181060 m!6240466))

(assert (=> d!1674410 d!1674832))

(declare-fun d!1674834 () Bool)

(declare-fun c!892904 () Bool)

(assert (=> d!1674834 (= c!892904 ((_ is Nil!60176) lt!2135520))))

(declare-fun e!3228073 () (InoxSet C!29592))

(assert (=> d!1674834 (= (content!10669 lt!2135520) e!3228073)))

(declare-fun b!5181061 () Bool)

(assert (=> b!5181061 (= e!3228073 ((as const (Array C!29592 Bool)) false))))

(declare-fun b!5181062 () Bool)

(assert (=> b!5181062 (= e!3228073 ((_ map or) (store ((as const (Array C!29592 Bool)) false) (h!66624 lt!2135520) true) (content!10669 (t!373453 lt!2135520))))))

(assert (= (and d!1674834 c!892904) b!5181061))

(assert (= (and d!1674834 (not c!892904)) b!5181062))

(declare-fun m!6240468 () Bool)

(assert (=> b!5181062 m!6240468))

(declare-fun m!6240470 () Bool)

(assert (=> b!5181062 m!6240470))

(assert (=> d!1674522 d!1674834))

(assert (=> d!1674522 d!1674422))

(declare-fun d!1674836 () Bool)

(declare-fun c!892905 () Bool)

(assert (=> d!1674836 (= c!892905 ((_ is Nil!60176) (Cons!60176 (head!11079 lt!2134946) Nil!60176)))))

(declare-fun e!3228074 () (InoxSet C!29592))

(assert (=> d!1674836 (= (content!10669 (Cons!60176 (head!11079 lt!2134946) Nil!60176)) e!3228074)))

(declare-fun b!5181063 () Bool)

(assert (=> b!5181063 (= e!3228074 ((as const (Array C!29592 Bool)) false))))

(declare-fun b!5181064 () Bool)

(assert (=> b!5181064 (= e!3228074 ((_ map or) (store ((as const (Array C!29592 Bool)) false) (h!66624 (Cons!60176 (head!11079 lt!2134946) Nil!60176)) true) (content!10669 (t!373453 (Cons!60176 (head!11079 lt!2134946) Nil!60176)))))))

(assert (= (and d!1674836 c!892905) b!5181063))

(assert (= (and d!1674836 (not c!892905)) b!5181064))

(declare-fun m!6240472 () Bool)

(assert (=> b!5181064 m!6240472))

(declare-fun m!6240474 () Bool)

(assert (=> b!5181064 m!6240474))

(assert (=> d!1674522 d!1674836))

(declare-fun b!5181066 () Bool)

(declare-fun e!3228076 () List!60300)

(assert (=> b!5181066 (= e!3228076 (Cons!60176 (h!66624 (t!373453 lt!2134949)) (++!13177 (t!373453 (t!373453 lt!2134949)) lt!2135230)))))

(declare-fun b!5181065 () Bool)

(assert (=> b!5181065 (= e!3228076 lt!2135230)))

(declare-fun b!5181067 () Bool)

(declare-fun res!2201163 () Bool)

(declare-fun e!3228075 () Bool)

(assert (=> b!5181067 (=> (not res!2201163) (not e!3228075))))

(declare-fun lt!2135673 () List!60300)

(assert (=> b!5181067 (= res!2201163 (= (size!39697 lt!2135673) (+ (size!39697 (t!373453 lt!2134949)) (size!39697 lt!2135230))))))

(declare-fun b!5181068 () Bool)

(assert (=> b!5181068 (= e!3228075 (or (not (= lt!2135230 Nil!60176)) (= lt!2135673 (t!373453 lt!2134949))))))

(declare-fun d!1674838 () Bool)

(assert (=> d!1674838 e!3228075))

(declare-fun res!2201164 () Bool)

(assert (=> d!1674838 (=> (not res!2201164) (not e!3228075))))

(assert (=> d!1674838 (= res!2201164 (= (content!10669 lt!2135673) ((_ map or) (content!10669 (t!373453 lt!2134949)) (content!10669 lt!2135230))))))

(assert (=> d!1674838 (= lt!2135673 e!3228076)))

(declare-fun c!892906 () Bool)

(assert (=> d!1674838 (= c!892906 ((_ is Nil!60176) (t!373453 lt!2134949)))))

(assert (=> d!1674838 (= (++!13177 (t!373453 lt!2134949) lt!2135230) lt!2135673)))

(assert (= (and d!1674838 c!892906) b!5181065))

(assert (= (and d!1674838 (not c!892906)) b!5181066))

(assert (= (and d!1674838 res!2201164) b!5181067))

(assert (= (and b!5181067 res!2201163) b!5181068))

(declare-fun m!6240476 () Bool)

(assert (=> b!5181066 m!6240476))

(declare-fun m!6240478 () Bool)

(assert (=> b!5181067 m!6240478))

(assert (=> b!5181067 m!6238866))

(assert (=> b!5181067 m!6239088))

(declare-fun m!6240480 () Bool)

(assert (=> d!1674838 m!6240480))

(assert (=> d!1674838 m!6239954))

(assert (=> d!1674838 m!6239094))

(assert (=> b!5180475 d!1674838))

(declare-fun d!1674840 () Bool)

(declare-fun c!892907 () Bool)

(assert (=> d!1674840 (= c!892907 ((_ is Nil!60176) (t!373453 (Cons!60176 lt!2134944 Nil!60176))))))

(declare-fun e!3228077 () (InoxSet C!29592))

(assert (=> d!1674840 (= (content!10669 (t!373453 (Cons!60176 lt!2134944 Nil!60176))) e!3228077)))

(declare-fun b!5181069 () Bool)

(assert (=> b!5181069 (= e!3228077 ((as const (Array C!29592 Bool)) false))))

(declare-fun b!5181070 () Bool)

(assert (=> b!5181070 (= e!3228077 ((_ map or) (store ((as const (Array C!29592 Bool)) false) (h!66624 (t!373453 (Cons!60176 lt!2134944 Nil!60176))) true) (content!10669 (t!373453 (t!373453 (Cons!60176 lt!2134944 Nil!60176))))))))

(assert (= (and d!1674840 c!892907) b!5181069))

(assert (= (and d!1674840 (not c!892907)) b!5181070))

(declare-fun m!6240482 () Bool)

(assert (=> b!5181070 m!6240482))

(declare-fun m!6240484 () Bool)

(assert (=> b!5181070 m!6240484))

(assert (=> b!5180626 d!1674840))

(declare-fun bs!1207069 () Bool)

(declare-fun d!1674842 () Bool)

(assert (= bs!1207069 (and d!1674842 d!1674740)))

(declare-fun lambda!258962 () Int)

(assert (=> bs!1207069 (not (= lambda!258962 lambda!258946))))

(declare-fun bs!1207070 () Bool)

(assert (= bs!1207070 (and d!1674842 d!1674160)))

(assert (=> bs!1207070 (not (= lambda!258962 lambda!258876))))

(declare-fun bs!1207071 () Bool)

(assert (= bs!1207071 (and d!1674842 b!5180975)))

(assert (=> bs!1207071 (not (= lambda!258962 lambda!258948))))

(declare-fun bs!1207072 () Bool)

(assert (= bs!1207072 (and d!1674842 d!1674662)))

(assert (=> bs!1207072 (not (= lambda!258962 lambda!258944))))

(declare-fun bs!1207073 () Bool)

(assert (= bs!1207073 (and d!1674842 d!1674800)))

(assert (=> bs!1207073 (not (= lambda!258962 lambda!258958))))

(declare-fun bs!1207074 () Bool)

(assert (= bs!1207074 (and d!1674842 b!5180506)))

(assert (=> bs!1207074 (not (= lambda!258962 lambda!258902))))

(declare-fun bs!1207075 () Bool)

(assert (= bs!1207075 (and d!1674842 d!1674818)))

(assert (=> bs!1207075 (= (= lambda!258934 lambda!258876) (= lambda!258962 lambda!258959))))

(declare-fun bs!1207076 () Bool)

(assert (= bs!1207076 (and d!1674842 b!5180758)))

(assert (=> bs!1207076 (not (= lambda!258962 lambda!258935))))

(declare-fun bs!1207077 () Bool)

(assert (= bs!1207077 (and d!1674842 d!1674556)))

(assert (=> bs!1207077 (not (= lambda!258962 lambda!258934))))

(declare-fun bs!1207078 () Bool)

(assert (= bs!1207078 (and d!1674842 b!5180974)))

(assert (=> bs!1207078 (not (= lambda!258962 lambda!258947))))

(declare-fun bs!1207079 () Bool)

(assert (= bs!1207079 (and d!1674842 d!1674274)))

(assert (=> bs!1207079 (not (= lambda!258962 lambda!258901))))

(declare-fun bs!1207080 () Bool)

(assert (= bs!1207080 (and d!1674842 d!1674538)))

(assert (=> bs!1207080 (not (= lambda!258962 lambda!258933))))

(declare-fun bs!1207081 () Bool)

(assert (= bs!1207081 (and d!1674842 d!1674640)))

(assert (=> bs!1207081 (= (= lambda!258934 (ite c!892814 lambda!258935 lambda!258936)) (= lambda!258962 lambda!258943))))

(declare-fun bs!1207082 () Bool)

(assert (= bs!1207082 (and d!1674842 b!5180507)))

(assert (=> bs!1207082 (not (= lambda!258962 lambda!258903))))

(declare-fun bs!1207083 () Bool)

(assert (= bs!1207083 (and d!1674842 d!1674590)))

(assert (=> bs!1207083 (not (= lambda!258962 lambda!258938))))

(declare-fun bs!1207084 () Bool)

(assert (= bs!1207084 (and d!1674842 b!5180759)))

(assert (=> bs!1207084 (not (= lambda!258962 lambda!258936))))

(assert (=> d!1674842 true))

(assert (=> d!1674842 (< (dynLambda!23890 order!27047 lambda!258934) (dynLambda!23890 order!27047 lambda!258962))))

(assert (=> d!1674842 (exists!1949 lt!2135534 lambda!258962)))

(declare-fun lt!2135676 () Unit!152123)

(declare-fun choose!38509 (List!60301 Int) Unit!152123)

(assert (=> d!1674842 (= lt!2135676 (choose!38509 lt!2135534 lambda!258934))))

(assert (=> d!1674842 (not (forall!14175 lt!2135534 lambda!258934))))

(assert (=> d!1674842 (= (lemmaNotForallThenExists!482 lt!2135534 lambda!258934) lt!2135676)))

(declare-fun bs!1207085 () Bool)

(assert (= bs!1207085 d!1674842))

(declare-fun m!6240486 () Bool)

(assert (=> bs!1207085 m!6240486))

(declare-fun m!6240488 () Bool)

(assert (=> bs!1207085 m!6240488))

(declare-fun m!6240490 () Bool)

(assert (=> bs!1207085 m!6240490))

(assert (=> b!5180758 d!1674842))

(declare-fun d!1674844 () Bool)

(declare-fun lt!2135677 () List!60300)

(assert (=> d!1674844 (= (++!13177 (t!373453 (t!373453 lt!2134949)) lt!2135677) (tail!10178 (tail!10178 input!5817)))))

(declare-fun e!3228080 () List!60300)

(assert (=> d!1674844 (= lt!2135677 e!3228080)))

(declare-fun c!892908 () Bool)

(assert (=> d!1674844 (= c!892908 ((_ is Cons!60176) (t!373453 (t!373453 lt!2134949))))))

(assert (=> d!1674844 (>= (size!39697 (tail!10178 (tail!10178 input!5817))) (size!39697 (t!373453 (t!373453 lt!2134949))))))

(assert (=> d!1674844 (= (getSuffix!3442 (tail!10178 (tail!10178 input!5817)) (t!373453 (t!373453 lt!2134949))) lt!2135677)))

(declare-fun b!5181071 () Bool)

(assert (=> b!5181071 (= e!3228080 (getSuffix!3442 (tail!10178 (tail!10178 (tail!10178 input!5817))) (t!373453 (t!373453 (t!373453 lt!2134949)))))))

(declare-fun b!5181072 () Bool)

(assert (=> b!5181072 (= e!3228080 (tail!10178 (tail!10178 input!5817)))))

(assert (= (and d!1674844 c!892908) b!5181071))

(assert (= (and d!1674844 (not c!892908)) b!5181072))

(declare-fun m!6240492 () Bool)

(assert (=> d!1674844 m!6240492))

(assert (=> d!1674844 m!6239446))

(assert (=> d!1674844 m!6240070))

(assert (=> d!1674844 m!6239740))

(assert (=> b!5181071 m!6239446))

(assert (=> b!5181071 m!6240072))

(assert (=> b!5181071 m!6240072))

(declare-fun m!6240494 () Bool)

(assert (=> b!5181071 m!6240494))

(assert (=> b!5180594 d!1674844))

(assert (=> b!5180594 d!1674658))

(assert (=> b!5180657 d!1674538))

(declare-fun d!1674846 () Bool)

(assert (=> d!1674846 (= (flatMap!464 baseZ!62 lambda!258908) (choose!38502 baseZ!62 lambda!258908))))

(declare-fun bs!1207086 () Bool)

(assert (= bs!1207086 d!1674846))

(declare-fun m!6240496 () Bool)

(assert (=> bs!1207086 m!6240496))

(assert (=> d!1674376 d!1674846))

(declare-fun bs!1207087 () Bool)

(declare-fun d!1674848 () Bool)

(assert (= bs!1207087 (and d!1674848 d!1674740)))

(declare-fun lambda!258963 () Int)

(assert (=> bs!1207087 (not (= lambda!258963 lambda!258946))))

(declare-fun bs!1207088 () Bool)

(assert (= bs!1207088 (and d!1674848 d!1674160)))

(assert (=> bs!1207088 (not (= lambda!258963 lambda!258876))))

(declare-fun bs!1207089 () Bool)

(assert (= bs!1207089 (and d!1674848 b!5180975)))

(assert (=> bs!1207089 (not (= lambda!258963 lambda!258948))))

(declare-fun bs!1207090 () Bool)

(assert (= bs!1207090 (and d!1674848 d!1674662)))

(assert (=> bs!1207090 (not (= lambda!258963 lambda!258944))))

(declare-fun bs!1207091 () Bool)

(assert (= bs!1207091 (and d!1674848 d!1674800)))

(assert (=> bs!1207091 (not (= lambda!258963 lambda!258958))))

(declare-fun bs!1207092 () Bool)

(assert (= bs!1207092 (and d!1674848 b!5180506)))

(assert (=> bs!1207092 (not (= lambda!258963 lambda!258902))))

(declare-fun bs!1207093 () Bool)

(assert (= bs!1207093 (and d!1674848 d!1674818)))

(assert (=> bs!1207093 (= (= (ite c!892731 lambda!258902 lambda!258903) lambda!258876) (= lambda!258963 lambda!258959))))

(declare-fun bs!1207094 () Bool)

(assert (= bs!1207094 (and d!1674848 b!5180758)))

(assert (=> bs!1207094 (not (= lambda!258963 lambda!258935))))

(declare-fun bs!1207095 () Bool)

(assert (= bs!1207095 (and d!1674848 d!1674556)))

(assert (=> bs!1207095 (not (= lambda!258963 lambda!258934))))

(declare-fun bs!1207096 () Bool)

(assert (= bs!1207096 (and d!1674848 b!5180974)))

(assert (=> bs!1207096 (not (= lambda!258963 lambda!258947))))

(declare-fun bs!1207097 () Bool)

(assert (= bs!1207097 (and d!1674848 d!1674274)))

(assert (=> bs!1207097 (not (= lambda!258963 lambda!258901))))

(declare-fun bs!1207098 () Bool)

(assert (= bs!1207098 (and d!1674848 d!1674538)))

(assert (=> bs!1207098 (not (= lambda!258963 lambda!258933))))

(declare-fun bs!1207099 () Bool)

(assert (= bs!1207099 (and d!1674848 d!1674842)))

(assert (=> bs!1207099 (= (= (ite c!892731 lambda!258902 lambda!258903) lambda!258934) (= lambda!258963 lambda!258962))))

(declare-fun bs!1207100 () Bool)

(assert (= bs!1207100 (and d!1674848 d!1674640)))

(assert (=> bs!1207100 (= (= (ite c!892731 lambda!258902 lambda!258903) (ite c!892814 lambda!258935 lambda!258936)) (= lambda!258963 lambda!258943))))

(declare-fun bs!1207101 () Bool)

(assert (= bs!1207101 (and d!1674848 b!5180507)))

(assert (=> bs!1207101 (not (= lambda!258963 lambda!258903))))

(declare-fun bs!1207102 () Bool)

(assert (= bs!1207102 (and d!1674848 d!1674590)))

(assert (=> bs!1207102 (not (= lambda!258963 lambda!258938))))

(declare-fun bs!1207103 () Bool)

(assert (= bs!1207103 (and d!1674848 b!5180759)))

(assert (=> bs!1207103 (not (= lambda!258963 lambda!258936))))

(assert (=> d!1674848 true))

(assert (=> d!1674848 (< (dynLambda!23890 order!27047 (ite c!892731 lambda!258902 lambda!258903)) (dynLambda!23890 order!27047 lambda!258963))))

(assert (=> d!1674848 (= (exists!1949 (ite c!892731 lt!2135326 lt!2135323) (ite c!892731 lambda!258902 lambda!258903)) (not (forall!14175 (ite c!892731 lt!2135326 lt!2135323) lambda!258963)))))

(declare-fun bs!1207104 () Bool)

(assert (= bs!1207104 d!1674848))

(declare-fun m!6240498 () Bool)

(assert (=> bs!1207104 m!6240498))

(assert (=> bm!364108 d!1674848))

(declare-fun d!1674850 () Bool)

(declare-fun c!892909 () Bool)

(assert (=> d!1674850 (= c!892909 ((_ is Nil!60176) lt!2135541))))

(declare-fun e!3228081 () (InoxSet C!29592))

(assert (=> d!1674850 (= (content!10669 lt!2135541) e!3228081)))

(declare-fun b!5181073 () Bool)

(assert (=> b!5181073 (= e!3228081 ((as const (Array C!29592 Bool)) false))))

(declare-fun b!5181074 () Bool)

(assert (=> b!5181074 (= e!3228081 ((_ map or) (store ((as const (Array C!29592 Bool)) false) (h!66624 lt!2135541) true) (content!10669 (t!373453 lt!2135541))))))

(assert (= (and d!1674850 c!892909) b!5181073))

(assert (= (and d!1674850 (not c!892909)) b!5181074))

(declare-fun m!6240500 () Bool)

(assert (=> b!5181074 m!6240500))

(declare-fun m!6240502 () Bool)

(assert (=> b!5181074 m!6240502))

(assert (=> d!1674562 d!1674850))

(declare-fun d!1674852 () Bool)

(declare-fun c!892910 () Bool)

(assert (=> d!1674852 (= c!892910 ((_ is Nil!60176) (_1!35239 lt!2135034)))))

(declare-fun e!3228082 () (InoxSet C!29592))

(assert (=> d!1674852 (= (content!10669 (_1!35239 lt!2135034)) e!3228082)))

(declare-fun b!5181075 () Bool)

(assert (=> b!5181075 (= e!3228082 ((as const (Array C!29592 Bool)) false))))

(declare-fun b!5181076 () Bool)

(assert (=> b!5181076 (= e!3228082 ((_ map or) (store ((as const (Array C!29592 Bool)) false) (h!66624 (_1!35239 lt!2135034)) true) (content!10669 (t!373453 (_1!35239 lt!2135034)))))))

(assert (= (and d!1674852 c!892910) b!5181075))

(assert (= (and d!1674852 (not c!892910)) b!5181076))

(declare-fun m!6240504 () Bool)

(assert (=> b!5181076 m!6240504))

(assert (=> b!5181076 m!6240316))

(assert (=> d!1674562 d!1674852))

(declare-fun d!1674854 () Bool)

(declare-fun c!892911 () Bool)

(assert (=> d!1674854 (= c!892911 ((_ is Nil!60176) (_2!35239 lt!2135034)))))

(declare-fun e!3228083 () (InoxSet C!29592))

(assert (=> d!1674854 (= (content!10669 (_2!35239 lt!2135034)) e!3228083)))

(declare-fun b!5181077 () Bool)

(assert (=> b!5181077 (= e!3228083 ((as const (Array C!29592 Bool)) false))))

(declare-fun b!5181078 () Bool)

(assert (=> b!5181078 (= e!3228083 ((_ map or) (store ((as const (Array C!29592 Bool)) false) (h!66624 (_2!35239 lt!2135034)) true) (content!10669 (t!373453 (_2!35239 lt!2135034)))))))

(assert (= (and d!1674854 c!892911) b!5181077))

(assert (= (and d!1674854 (not c!892911)) b!5181078))

(declare-fun m!6240506 () Bool)

(assert (=> b!5181078 m!6240506))

(declare-fun m!6240508 () Bool)

(assert (=> b!5181078 m!6240508))

(assert (=> d!1674562 d!1674854))

(assert (=> bm!364128 d!1674766))

(declare-fun d!1674856 () Bool)

(declare-fun c!892912 () Bool)

(assert (=> d!1674856 (= c!892912 ((_ is Nil!60176) lt!2135521))))

(declare-fun e!3228084 () (InoxSet C!29592))

(assert (=> d!1674856 (= (content!10669 lt!2135521) e!3228084)))

(declare-fun b!5181079 () Bool)

(assert (=> b!5181079 (= e!3228084 ((as const (Array C!29592 Bool)) false))))

(declare-fun b!5181080 () Bool)

(assert (=> b!5181080 (= e!3228084 ((_ map or) (store ((as const (Array C!29592 Bool)) false) (h!66624 lt!2135521) true) (content!10669 (t!373453 lt!2135521))))))

(assert (= (and d!1674856 c!892912) b!5181079))

(assert (= (and d!1674856 (not c!892912)) b!5181080))

(declare-fun m!6240510 () Bool)

(assert (=> b!5181080 m!6240510))

(declare-fun m!6240512 () Bool)

(assert (=> b!5181080 m!6240512))

(assert (=> d!1674524 d!1674856))

(declare-fun d!1674858 () Bool)

(declare-fun c!892913 () Bool)

(assert (=> d!1674858 (= c!892913 ((_ is Nil!60176) (++!13177 testedP!294 (Cons!60176 lt!2135040 Nil!60176))))))

(declare-fun e!3228085 () (InoxSet C!29592))

(assert (=> d!1674858 (= (content!10669 (++!13177 testedP!294 (Cons!60176 lt!2135040 Nil!60176))) e!3228085)))

(declare-fun b!5181081 () Bool)

(assert (=> b!5181081 (= e!3228085 ((as const (Array C!29592 Bool)) false))))

(declare-fun b!5181082 () Bool)

(assert (=> b!5181082 (= e!3228085 ((_ map or) (store ((as const (Array C!29592 Bool)) false) (h!66624 (++!13177 testedP!294 (Cons!60176 lt!2135040 Nil!60176))) true) (content!10669 (t!373453 (++!13177 testedP!294 (Cons!60176 lt!2135040 Nil!60176))))))))

(assert (= (and d!1674858 c!892913) b!5181081))

(assert (= (and d!1674858 (not c!892913)) b!5181082))

(declare-fun m!6240514 () Bool)

(assert (=> b!5181082 m!6240514))

(declare-fun m!6240516 () Bool)

(assert (=> b!5181082 m!6240516))

(assert (=> d!1674524 d!1674858))

(declare-fun d!1674860 () Bool)

(declare-fun c!892914 () Bool)

(assert (=> d!1674860 (= c!892914 ((_ is Nil!60176) lt!2135043))))

(declare-fun e!3228086 () (InoxSet C!29592))

(assert (=> d!1674860 (= (content!10669 lt!2135043) e!3228086)))

(declare-fun b!5181083 () Bool)

(assert (=> b!5181083 (= e!3228086 ((as const (Array C!29592 Bool)) false))))

(declare-fun b!5181084 () Bool)

(assert (=> b!5181084 (= e!3228086 ((_ map or) (store ((as const (Array C!29592 Bool)) false) (h!66624 lt!2135043) true) (content!10669 (t!373453 lt!2135043))))))

(assert (= (and d!1674860 c!892914) b!5181083))

(assert (= (and d!1674860 (not c!892914)) b!5181084))

(declare-fun m!6240518 () Bool)

(assert (=> b!5181084 m!6240518))

(declare-fun m!6240520 () Bool)

(assert (=> b!5181084 m!6240520))

(assert (=> d!1674524 d!1674860))

(assert (=> d!1674470 d!1674230))

(declare-fun b!5181086 () Bool)

(declare-fun e!3228088 () List!60300)

(assert (=> b!5181086 (= e!3228088 (Cons!60176 (h!66624 (_1!35239 lt!2135459)) (++!13177 (t!373453 (_1!35239 lt!2135459)) (_2!35239 lt!2135459))))))

(declare-fun b!5181085 () Bool)

(assert (=> b!5181085 (= e!3228088 (_2!35239 lt!2135459))))

(declare-fun b!5181087 () Bool)

(declare-fun res!2201165 () Bool)

(declare-fun e!3228087 () Bool)

(assert (=> b!5181087 (=> (not res!2201165) (not e!3228087))))

(declare-fun lt!2135678 () List!60300)

(assert (=> b!5181087 (= res!2201165 (= (size!39697 lt!2135678) (+ (size!39697 (_1!35239 lt!2135459)) (size!39697 (_2!35239 lt!2135459)))))))

(declare-fun b!5181088 () Bool)

(assert (=> b!5181088 (= e!3228087 (or (not (= (_2!35239 lt!2135459) Nil!60176)) (= lt!2135678 (_1!35239 lt!2135459))))))

(declare-fun d!1674862 () Bool)

(assert (=> d!1674862 e!3228087))

(declare-fun res!2201166 () Bool)

(assert (=> d!1674862 (=> (not res!2201166) (not e!3228087))))

(assert (=> d!1674862 (= res!2201166 (= (content!10669 lt!2135678) ((_ map or) (content!10669 (_1!35239 lt!2135459)) (content!10669 (_2!35239 lt!2135459)))))))

(assert (=> d!1674862 (= lt!2135678 e!3228088)))

(declare-fun c!892915 () Bool)

(assert (=> d!1674862 (= c!892915 ((_ is Nil!60176) (_1!35239 lt!2135459)))))

(assert (=> d!1674862 (= (++!13177 (_1!35239 lt!2135459) (_2!35239 lt!2135459)) lt!2135678)))

(assert (= (and d!1674862 c!892915) b!5181085))

(assert (= (and d!1674862 (not c!892915)) b!5181086))

(assert (= (and d!1674862 res!2201166) b!5181087))

(assert (= (and b!5181087 res!2201165) b!5181088))

(declare-fun m!6240522 () Bool)

(assert (=> b!5181086 m!6240522))

(declare-fun m!6240524 () Bool)

(assert (=> b!5181087 m!6240524))

(assert (=> b!5181087 m!6239644))

(declare-fun m!6240526 () Bool)

(assert (=> b!5181087 m!6240526))

(declare-fun m!6240528 () Bool)

(assert (=> d!1674862 m!6240528))

(declare-fun m!6240530 () Bool)

(assert (=> d!1674862 m!6240530))

(declare-fun m!6240532 () Bool)

(assert (=> d!1674862 m!6240532))

(assert (=> d!1674470 d!1674862))

(assert (=> d!1674470 d!1674274))

(assert (=> d!1674470 d!1674320))

(assert (=> d!1674470 d!1674324))

(declare-fun d!1674864 () Bool)

(assert (=> d!1674864 (= (getSuffix!3442 input!5817 lt!2134949) lt!2135457)))

(declare-fun lt!2135679 () Unit!152123)

(assert (=> d!1674864 (= lt!2135679 (choose!38498 lt!2134949 (getSuffix!3442 input!5817 lt!2134949) lt!2134949 lt!2135457 input!5817))))

(assert (=> d!1674864 (isPrefix!5794 lt!2134949 input!5817)))

(assert (=> d!1674864 (= (lemmaSamePrefixThenSameSuffix!2715 lt!2134949 (getSuffix!3442 input!5817 lt!2134949) lt!2134949 lt!2135457 input!5817) lt!2135679)))

(declare-fun bs!1207105 () Bool)

(assert (= bs!1207105 d!1674864))

(assert (=> bs!1207105 m!6238570))

(declare-fun m!6240534 () Bool)

(assert (=> bs!1207105 m!6240534))

(assert (=> bs!1207105 m!6238530))

(assert (=> d!1674470 d!1674864))

(assert (=> d!1674470 d!1674332))

(declare-fun b!5181090 () Bool)

(declare-fun e!3228090 () List!60300)

(assert (=> b!5181090 (= e!3228090 (Cons!60176 (h!66624 (t!373453 testedP!294)) (++!13177 (t!373453 (t!373453 testedP!294)) (Cons!60176 (head!11079 lt!2134946) Nil!60176))))))

(declare-fun b!5181089 () Bool)

(assert (=> b!5181089 (= e!3228090 (Cons!60176 (head!11079 lt!2134946) Nil!60176))))

(declare-fun b!5181091 () Bool)

(declare-fun res!2201167 () Bool)

(declare-fun e!3228089 () Bool)

(assert (=> b!5181091 (=> (not res!2201167) (not e!3228089))))

(declare-fun lt!2135680 () List!60300)

(assert (=> b!5181091 (= res!2201167 (= (size!39697 lt!2135680) (+ (size!39697 (t!373453 testedP!294)) (size!39697 (Cons!60176 (head!11079 lt!2134946) Nil!60176)))))))

(declare-fun b!5181092 () Bool)

(assert (=> b!5181092 (= e!3228089 (or (not (= (Cons!60176 (head!11079 lt!2134946) Nil!60176) Nil!60176)) (= lt!2135680 (t!373453 testedP!294))))))

(declare-fun d!1674866 () Bool)

(assert (=> d!1674866 e!3228089))

(declare-fun res!2201168 () Bool)

(assert (=> d!1674866 (=> (not res!2201168) (not e!3228089))))

(assert (=> d!1674866 (= res!2201168 (= (content!10669 lt!2135680) ((_ map or) (content!10669 (t!373453 testedP!294)) (content!10669 (Cons!60176 (head!11079 lt!2134946) Nil!60176)))))))

(assert (=> d!1674866 (= lt!2135680 e!3228090)))

(declare-fun c!892916 () Bool)

(assert (=> d!1674866 (= c!892916 ((_ is Nil!60176) (t!373453 testedP!294)))))

(assert (=> d!1674866 (= (++!13177 (t!373453 testedP!294) (Cons!60176 (head!11079 lt!2134946) Nil!60176)) lt!2135680)))

(assert (= (and d!1674866 c!892916) b!5181089))

(assert (= (and d!1674866 (not c!892916)) b!5181090))

(assert (= (and d!1674866 res!2201168) b!5181091))

(assert (= (and b!5181091 res!2201167) b!5181092))

(declare-fun m!6240536 () Bool)

(assert (=> b!5181090 m!6240536))

(declare-fun m!6240538 () Bool)

(assert (=> b!5181091 m!6240538))

(assert (=> b!5181091 m!6238664))

(assert (=> b!5181091 m!6239774))

(declare-fun m!6240540 () Bool)

(assert (=> d!1674866 m!6240540))

(assert (=> d!1674866 m!6239522))

(assert (=> d!1674866 m!6239778))

(assert (=> b!5180727 d!1674866))

(assert (=> d!1674518 d!1674524))

(assert (=> d!1674518 d!1674530))

(declare-fun d!1674868 () Bool)

(assert (=> d!1674868 (= (++!13177 (++!13177 testedP!294 (Cons!60176 lt!2135040 Nil!60176)) lt!2135043) input!5817)))

(assert (=> d!1674868 true))

(declare-fun _$68!888 () Unit!152123)

(assert (=> d!1674868 (= (choose!38500 testedP!294 lt!2135040 lt!2135043 input!5817) _$68!888)))

(declare-fun bs!1207106 () Bool)

(assert (= bs!1207106 d!1674868))

(assert (=> bs!1207106 m!6238644))

(assert (=> bs!1207106 m!6238644))

(assert (=> bs!1207106 m!6238654))

(assert (=> d!1674518 d!1674868))

(declare-fun b!5181094 () Bool)

(declare-fun e!3228092 () List!60300)

(assert (=> b!5181094 (= e!3228092 (Cons!60176 (h!66624 testedP!294) (++!13177 (t!373453 testedP!294) (Cons!60176 lt!2135040 lt!2135043))))))

(declare-fun b!5181093 () Bool)

(assert (=> b!5181093 (= e!3228092 (Cons!60176 lt!2135040 lt!2135043))))

(declare-fun b!5181095 () Bool)

(declare-fun res!2201169 () Bool)

(declare-fun e!3228091 () Bool)

(assert (=> b!5181095 (=> (not res!2201169) (not e!3228091))))

(declare-fun lt!2135681 () List!60300)

(assert (=> b!5181095 (= res!2201169 (= (size!39697 lt!2135681) (+ (size!39697 testedP!294) (size!39697 (Cons!60176 lt!2135040 lt!2135043)))))))

(declare-fun b!5181096 () Bool)

(assert (=> b!5181096 (= e!3228091 (or (not (= (Cons!60176 lt!2135040 lt!2135043) Nil!60176)) (= lt!2135681 testedP!294)))))

(declare-fun d!1674870 () Bool)

(assert (=> d!1674870 e!3228091))

(declare-fun res!2201170 () Bool)

(assert (=> d!1674870 (=> (not res!2201170) (not e!3228091))))

(assert (=> d!1674870 (= res!2201170 (= (content!10669 lt!2135681) ((_ map or) (content!10669 testedP!294) (content!10669 (Cons!60176 lt!2135040 lt!2135043)))))))

(assert (=> d!1674870 (= lt!2135681 e!3228092)))

(declare-fun c!892917 () Bool)

(assert (=> d!1674870 (= c!892917 ((_ is Nil!60176) testedP!294))))

(assert (=> d!1674870 (= (++!13177 testedP!294 (Cons!60176 lt!2135040 lt!2135043)) lt!2135681)))

(assert (= (and d!1674870 c!892917) b!5181093))

(assert (= (and d!1674870 (not c!892917)) b!5181094))

(assert (= (and d!1674870 res!2201170) b!5181095))

(assert (= (and b!5181095 res!2201169) b!5181096))

(declare-fun m!6240542 () Bool)

(assert (=> b!5181094 m!6240542))

(declare-fun m!6240544 () Bool)

(assert (=> b!5181095 m!6240544))

(assert (=> b!5181095 m!6238542))

(declare-fun m!6240546 () Bool)

(assert (=> b!5181095 m!6240546))

(declare-fun m!6240548 () Bool)

(assert (=> d!1674870 m!6240548))

(assert (=> d!1674870 m!6238674))

(declare-fun m!6240550 () Bool)

(assert (=> d!1674870 m!6240550))

(assert (=> d!1674518 d!1674870))

(declare-fun d!1674872 () Bool)

(assert (=> d!1674872 (= input!5817 lt!2135047)))

(declare-fun lt!2135682 () Unit!152123)

(assert (=> d!1674872 (= lt!2135682 (choose!38491 input!5817 lt!2135047 input!5817))))

(assert (=> d!1674872 (isPrefix!5794 input!5817 input!5817)))

(assert (=> d!1674872 (= (lemmaIsPrefixSameLengthThenSameList!1439 input!5817 lt!2135047 input!5817) lt!2135682)))

(declare-fun bs!1207107 () Bool)

(assert (= bs!1207107 d!1674872))

(declare-fun m!6240552 () Bool)

(assert (=> bs!1207107 m!6240552))

(assert (=> bs!1207107 m!6238556))

(assert (=> bm!364118 d!1674872))

(assert (=> d!1674474 d!1674218))

(assert (=> d!1674474 d!1674472))

(assert (=> d!1674474 d!1674470))

(assert (=> d!1674474 d!1674142))

(assert (=> d!1674474 d!1674230))

(declare-fun d!1674874 () Bool)

(declare-fun c!892918 () Bool)

(assert (=> d!1674874 (= c!892918 ((_ is Nil!60176) lt!2135441))))

(declare-fun e!3228093 () (InoxSet C!29592))

(assert (=> d!1674874 (= (content!10669 lt!2135441) e!3228093)))

(declare-fun b!5181097 () Bool)

(assert (=> b!5181097 (= e!3228093 ((as const (Array C!29592 Bool)) false))))

(declare-fun b!5181098 () Bool)

(assert (=> b!5181098 (= e!3228093 ((_ map or) (store ((as const (Array C!29592 Bool)) false) (h!66624 lt!2135441) true) (content!10669 (t!373453 lt!2135441))))))

(assert (= (and d!1674874 c!892918) b!5181097))

(assert (= (and d!1674874 (not c!892918)) b!5181098))

(declare-fun m!6240554 () Bool)

(assert (=> b!5181098 m!6240554))

(declare-fun m!6240556 () Bool)

(assert (=> b!5181098 m!6240556))

(assert (=> d!1674460 d!1674874))

(assert (=> d!1674460 d!1674616))

(declare-fun d!1674876 () Bool)

(declare-fun c!892919 () Bool)

(assert (=> d!1674876 (= c!892919 ((_ is Nil!60176) (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176)))))

(declare-fun e!3228094 () (InoxSet C!29592))

(assert (=> d!1674876 (= (content!10669 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176)) e!3228094)))

(declare-fun b!5181099 () Bool)

(assert (=> b!5181099 (= e!3228094 ((as const (Array C!29592 Bool)) false))))

(declare-fun b!5181100 () Bool)

(assert (=> b!5181100 (= e!3228094 ((_ map or) (store ((as const (Array C!29592 Bool)) false) (h!66624 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176)) true) (content!10669 (t!373453 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176)))))))

(assert (= (and d!1674876 c!892919) b!5181099))

(assert (= (and d!1674876 (not c!892919)) b!5181100))

(declare-fun m!6240558 () Bool)

(assert (=> b!5181100 m!6240558))

(declare-fun m!6240560 () Bool)

(assert (=> b!5181100 m!6240560))

(assert (=> d!1674460 d!1674876))

(assert (=> b!5180699 d!1674218))

(assert (=> b!5180699 d!1674468))

(assert (=> b!5180699 d!1674470))

(assert (=> b!5180699 d!1674142))

(assert (=> b!5180699 d!1674230))

(assert (=> b!5180652 d!1674142))

(declare-fun d!1674878 () Bool)

(declare-fun lt!2135683 () Int)

(assert (=> d!1674878 (>= lt!2135683 0)))

(declare-fun e!3228095 () Int)

(assert (=> d!1674878 (= lt!2135683 e!3228095)))

(declare-fun c!892920 () Bool)

(assert (=> d!1674878 (= c!892920 ((_ is Nil!60176) (++!13177 lt!2134949 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176))))))

(assert (=> d!1674878 (= (size!39697 (++!13177 lt!2134949 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176))) lt!2135683)))

(declare-fun b!5181101 () Bool)

(assert (=> b!5181101 (= e!3228095 0)))

(declare-fun b!5181102 () Bool)

(assert (=> b!5181102 (= e!3228095 (+ 1 (size!39697 (t!373453 (++!13177 lt!2134949 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176))))))))

(assert (= (and d!1674878 c!892920) b!5181101))

(assert (= (and d!1674878 (not c!892920)) b!5181102))

(declare-fun m!6240562 () Bool)

(assert (=> b!5181102 m!6240562))

(assert (=> b!5180652 d!1674878))

(declare-fun b!5181104 () Bool)

(declare-fun e!3228097 () List!60300)

(assert (=> b!5181104 (= e!3228097 (Cons!60176 (h!66624 (t!373453 lt!2134949)) (++!13177 (t!373453 (t!373453 lt!2134949)) lt!2135402)))))

(declare-fun b!5181103 () Bool)

(assert (=> b!5181103 (= e!3228097 lt!2135402)))

(declare-fun b!5181105 () Bool)

(declare-fun res!2201171 () Bool)

(declare-fun e!3228096 () Bool)

(assert (=> b!5181105 (=> (not res!2201171) (not e!3228096))))

(declare-fun lt!2135684 () List!60300)

(assert (=> b!5181105 (= res!2201171 (= (size!39697 lt!2135684) (+ (size!39697 (t!373453 lt!2134949)) (size!39697 lt!2135402))))))

(declare-fun b!5181106 () Bool)

(assert (=> b!5181106 (= e!3228096 (or (not (= lt!2135402 Nil!60176)) (= lt!2135684 (t!373453 lt!2134949))))))

(declare-fun d!1674880 () Bool)

(assert (=> d!1674880 e!3228096))

(declare-fun res!2201172 () Bool)

(assert (=> d!1674880 (=> (not res!2201172) (not e!3228096))))

(assert (=> d!1674880 (= res!2201172 (= (content!10669 lt!2135684) ((_ map or) (content!10669 (t!373453 lt!2134949)) (content!10669 lt!2135402))))))

(assert (=> d!1674880 (= lt!2135684 e!3228097)))

(declare-fun c!892921 () Bool)

(assert (=> d!1674880 (= c!892921 ((_ is Nil!60176) (t!373453 lt!2134949)))))

(assert (=> d!1674880 (= (++!13177 (t!373453 lt!2134949) lt!2135402) lt!2135684)))

(assert (= (and d!1674880 c!892921) b!5181103))

(assert (= (and d!1674880 (not c!892921)) b!5181104))

(assert (= (and d!1674880 res!2201172) b!5181105))

(assert (= (and b!5181105 res!2201171) b!5181106))

(declare-fun m!6240564 () Bool)

(assert (=> b!5181104 m!6240564))

(declare-fun m!6240566 () Bool)

(assert (=> b!5181105 m!6240566))

(assert (=> b!5181105 m!6238866))

(declare-fun m!6240568 () Bool)

(assert (=> b!5181105 m!6240568))

(declare-fun m!6240570 () Bool)

(assert (=> d!1674880 m!6240570))

(assert (=> d!1674880 m!6239954))

(declare-fun m!6240572 () Bool)

(assert (=> d!1674880 m!6240572))

(assert (=> d!1674406 d!1674880))

(assert (=> d!1674406 d!1674642))

(assert (=> d!1674406 d!1674500))

(declare-fun d!1674882 () Bool)

(declare-fun res!2201173 () Bool)

(declare-fun e!3228098 () Bool)

(assert (=> d!1674882 (=> res!2201173 e!3228098)))

(assert (=> d!1674882 (= res!2201173 ((_ is Nil!60175) (t!373452 (exprs!4545 setElem!32401))))))

(assert (=> d!1674882 (= (forall!14172 (t!373452 (exprs!4545 setElem!32401)) lambda!258879) e!3228098)))

(declare-fun b!5181107 () Bool)

(declare-fun e!3228099 () Bool)

(assert (=> b!5181107 (= e!3228098 e!3228099)))

(declare-fun res!2201174 () Bool)

(assert (=> b!5181107 (=> (not res!2201174) (not e!3228099))))

(assert (=> b!5181107 (= res!2201174 (dynLambda!23888 lambda!258879 (h!66623 (t!373452 (exprs!4545 setElem!32401)))))))

(declare-fun b!5181108 () Bool)

(assert (=> b!5181108 (= e!3228099 (forall!14172 (t!373452 (t!373452 (exprs!4545 setElem!32401))) lambda!258879))))

(assert (= (and d!1674882 (not res!2201173)) b!5181107))

(assert (= (and b!5181107 res!2201174) b!5181108))

(declare-fun b_lambda!201095 () Bool)

(assert (=> (not b_lambda!201095) (not b!5181107)))

(declare-fun m!6240574 () Bool)

(assert (=> b!5181107 m!6240574))

(declare-fun m!6240576 () Bool)

(assert (=> b!5181108 m!6240576))

(assert (=> b!5180593 d!1674882))

(declare-fun d!1674884 () Bool)

(declare-fun lt!2135685 () Int)

(assert (=> d!1674884 (>= lt!2135685 0)))

(declare-fun e!3228100 () Int)

(assert (=> d!1674884 (= lt!2135685 e!3228100)))

(declare-fun c!892922 () Bool)

(assert (=> d!1674884 (= c!892922 ((_ is Nil!60176) lt!2135441))))

(assert (=> d!1674884 (= (size!39697 lt!2135441) lt!2135685)))

(declare-fun b!5181109 () Bool)

(assert (=> b!5181109 (= e!3228100 0)))

(declare-fun b!5181110 () Bool)

(assert (=> b!5181110 (= e!3228100 (+ 1 (size!39697 (t!373453 lt!2135441))))))

(assert (= (and d!1674884 c!892922) b!5181109))

(assert (= (and d!1674884 (not c!892922)) b!5181110))

(declare-fun m!6240578 () Bool)

(assert (=> b!5181110 m!6240578))

(assert (=> b!5180647 d!1674884))

(assert (=> b!5180647 d!1674218))

(declare-fun d!1674886 () Bool)

(declare-fun lt!2135686 () Int)

(assert (=> d!1674886 (>= lt!2135686 0)))

(declare-fun e!3228101 () Int)

(assert (=> d!1674886 (= lt!2135686 e!3228101)))

(declare-fun c!892923 () Bool)

(assert (=> d!1674886 (= c!892923 ((_ is Nil!60176) (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176)))))

(assert (=> d!1674886 (= (size!39697 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176)) lt!2135686)))

(declare-fun b!5181111 () Bool)

(assert (=> b!5181111 (= e!3228101 0)))

(declare-fun b!5181112 () Bool)

(assert (=> b!5181112 (= e!3228101 (+ 1 (size!39697 (t!373453 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176)))))))

(assert (= (and d!1674886 c!892923) b!5181111))

(assert (= (and d!1674886 (not c!892923)) b!5181112))

(declare-fun m!6240580 () Bool)

(assert (=> b!5181112 m!6240580))

(assert (=> b!5180647 d!1674886))

(declare-fun d!1674888 () Bool)

(declare-fun lt!2135687 () List!60300)

(assert (=> d!1674888 (= (++!13177 (t!373453 (t!373453 testedP!294)) lt!2135687) (tail!10178 (tail!10178 input!5817)))))

(declare-fun e!3228102 () List!60300)

(assert (=> d!1674888 (= lt!2135687 e!3228102)))

(declare-fun c!892924 () Bool)

(assert (=> d!1674888 (= c!892924 ((_ is Cons!60176) (t!373453 (t!373453 testedP!294))))))

(assert (=> d!1674888 (>= (size!39697 (tail!10178 (tail!10178 input!5817))) (size!39697 (t!373453 (t!373453 testedP!294))))))

(assert (=> d!1674888 (= (getSuffix!3442 (tail!10178 (tail!10178 input!5817)) (t!373453 (t!373453 testedP!294))) lt!2135687)))

(declare-fun b!5181113 () Bool)

(assert (=> b!5181113 (= e!3228102 (getSuffix!3442 (tail!10178 (tail!10178 (tail!10178 input!5817))) (t!373453 (t!373453 (t!373453 testedP!294)))))))

(declare-fun b!5181114 () Bool)

(assert (=> b!5181114 (= e!3228102 (tail!10178 (tail!10178 input!5817)))))

(assert (= (and d!1674888 c!892924) b!5181113))

(assert (= (and d!1674888 (not c!892924)) b!5181114))

(declare-fun m!6240582 () Bool)

(assert (=> d!1674888 m!6240582))

(assert (=> d!1674888 m!6239446))

(assert (=> d!1674888 m!6240070))

(assert (=> d!1674888 m!6239938))

(assert (=> b!5181113 m!6239446))

(assert (=> b!5181113 m!6240072))

(assert (=> b!5181113 m!6240072))

(declare-fun m!6240584 () Bool)

(assert (=> b!5181113 m!6240584))

(assert (=> b!5180629 d!1674888))

(assert (=> b!5180629 d!1674658))

(assert (=> b!5180761 d!1674404))

(declare-fun d!1674890 () Bool)

(assert (=> d!1674890 (= (head!11079 (++!13177 testedP!294 lt!2134946)) (h!66624 (++!13177 testedP!294 lt!2134946)))))

(assert (=> b!5180761 d!1674890))

(declare-fun d!1674892 () Bool)

(declare-fun lt!2135688 () Int)

(assert (=> d!1674892 (>= lt!2135688 0)))

(declare-fun e!3228103 () Int)

(assert (=> d!1674892 (= lt!2135688 e!3228103)))

(declare-fun c!892925 () Bool)

(assert (=> d!1674892 (= c!892925 ((_ is Nil!60176) (t!373453 (Cons!60176 lt!2134944 Nil!60176))))))

(assert (=> d!1674892 (= (size!39697 (t!373453 (Cons!60176 lt!2134944 Nil!60176))) lt!2135688)))

(declare-fun b!5181115 () Bool)

(assert (=> b!5181115 (= e!3228103 0)))

(declare-fun b!5181116 () Bool)

(assert (=> b!5181116 (= e!3228103 (+ 1 (size!39697 (t!373453 (t!373453 (Cons!60176 lt!2134944 Nil!60176))))))))

(assert (= (and d!1674892 c!892925) b!5181115))

(assert (= (and d!1674892 (not c!892925)) b!5181116))

(declare-fun m!6240586 () Bool)

(assert (=> b!5181116 m!6240586))

(assert (=> b!5180813 d!1674892))

(assert (=> bm!364130 d!1674760))

(declare-fun b!5181118 () Bool)

(declare-fun res!2201177 () Bool)

(declare-fun e!3228104 () Bool)

(assert (=> b!5181118 (=> (not res!2201177) (not e!3228104))))

(assert (=> b!5181118 (= res!2201177 (= (head!11079 (tail!10178 lt!2134949)) (head!11079 (tail!10178 (++!13177 lt!2134949 (getSuffix!3442 input!5817 lt!2134949))))))))

(declare-fun b!5181120 () Bool)

(declare-fun e!3228106 () Bool)

(assert (=> b!5181120 (= e!3228106 (>= (size!39697 (tail!10178 (++!13177 lt!2134949 (getSuffix!3442 input!5817 lt!2134949)))) (size!39697 (tail!10178 lt!2134949))))))

(declare-fun b!5181117 () Bool)

(declare-fun e!3228105 () Bool)

(assert (=> b!5181117 (= e!3228105 e!3228104)))

(declare-fun res!2201176 () Bool)

(assert (=> b!5181117 (=> (not res!2201176) (not e!3228104))))

(assert (=> b!5181117 (= res!2201176 (not ((_ is Nil!60176) (tail!10178 (++!13177 lt!2134949 (getSuffix!3442 input!5817 lt!2134949))))))))

(declare-fun b!5181119 () Bool)

(assert (=> b!5181119 (= e!3228104 (isPrefix!5794 (tail!10178 (tail!10178 lt!2134949)) (tail!10178 (tail!10178 (++!13177 lt!2134949 (getSuffix!3442 input!5817 lt!2134949))))))))

(declare-fun d!1674894 () Bool)

(assert (=> d!1674894 e!3228106))

(declare-fun res!2201178 () Bool)

(assert (=> d!1674894 (=> res!2201178 e!3228106)))

(declare-fun lt!2135689 () Bool)

(assert (=> d!1674894 (= res!2201178 (not lt!2135689))))

(assert (=> d!1674894 (= lt!2135689 e!3228105)))

(declare-fun res!2201175 () Bool)

(assert (=> d!1674894 (=> res!2201175 e!3228105)))

(assert (=> d!1674894 (= res!2201175 ((_ is Nil!60176) (tail!10178 lt!2134949)))))

(assert (=> d!1674894 (= (isPrefix!5794 (tail!10178 lt!2134949) (tail!10178 (++!13177 lt!2134949 (getSuffix!3442 input!5817 lt!2134949)))) lt!2135689)))

(assert (= (and d!1674894 (not res!2201175)) b!5181117))

(assert (= (and b!5181117 res!2201176) b!5181118))

(assert (= (and b!5181118 res!2201177) b!5181119))

(assert (= (and d!1674894 (not res!2201178)) b!5181120))

(assert (=> b!5181118 m!6238842))

(assert (=> b!5181118 m!6239916))

(assert (=> b!5181118 m!6239244))

(declare-fun m!6240588 () Bool)

(assert (=> b!5181118 m!6240588))

(assert (=> b!5181120 m!6239244))

(declare-fun m!6240590 () Bool)

(assert (=> b!5181120 m!6240590))

(assert (=> b!5181120 m!6238842))

(assert (=> b!5181120 m!6239918))

(assert (=> b!5181119 m!6238842))

(assert (=> b!5181119 m!6239920))

(assert (=> b!5181119 m!6239244))

(declare-fun m!6240592 () Bool)

(assert (=> b!5181119 m!6240592))

(assert (=> b!5181119 m!6239920))

(assert (=> b!5181119 m!6240592))

(declare-fun m!6240594 () Bool)

(assert (=> b!5181119 m!6240594))

(assert (=> b!5180530 d!1674894))

(assert (=> b!5180530 d!1674586))

(declare-fun d!1674896 () Bool)

(assert (=> d!1674896 (= (tail!10178 (++!13177 lt!2134949 (getSuffix!3442 input!5817 lt!2134949))) (t!373453 (++!13177 lt!2134949 (getSuffix!3442 input!5817 lt!2134949))))))

(assert (=> b!5180530 d!1674896))

(declare-fun d!1674898 () Bool)

(declare-fun lt!2135690 () Int)

(assert (=> d!1674898 (>= lt!2135690 0)))

(declare-fun e!3228107 () Int)

(assert (=> d!1674898 (= lt!2135690 e!3228107)))

(declare-fun c!892926 () Bool)

(assert (=> d!1674898 (= c!892926 ((_ is Nil!60176) lt!2135296))))

(assert (=> d!1674898 (= (size!39697 lt!2135296) lt!2135690)))

(declare-fun b!5181121 () Bool)

(assert (=> b!5181121 (= e!3228107 0)))

(declare-fun b!5181122 () Bool)

(assert (=> b!5181122 (= e!3228107 (+ 1 (size!39697 (t!373453 lt!2135296))))))

(assert (= (and d!1674898 c!892926) b!5181121))

(assert (= (and d!1674898 (not c!892926)) b!5181122))

(declare-fun m!6240596 () Bool)

(assert (=> b!5181122 m!6240596))

(assert (=> b!5180476 d!1674898))

(assert (=> b!5180476 d!1674218))

(declare-fun d!1674900 () Bool)

(declare-fun lt!2135691 () Int)

(assert (=> d!1674900 (>= lt!2135691 0)))

(declare-fun e!3228108 () Int)

(assert (=> d!1674900 (= lt!2135691 e!3228108)))

(declare-fun c!892927 () Bool)

(assert (=> d!1674900 (= c!892927 ((_ is Nil!60176) lt!2135230))))

(assert (=> d!1674900 (= (size!39697 lt!2135230) lt!2135691)))

(declare-fun b!5181123 () Bool)

(assert (=> b!5181123 (= e!3228108 0)))

(declare-fun b!5181124 () Bool)

(assert (=> b!5181124 (= e!3228108 (+ 1 (size!39697 (t!373453 lt!2135230))))))

(assert (= (and d!1674900 c!892927) b!5181123))

(assert (= (and d!1674900 (not c!892927)) b!5181124))

(declare-fun m!6240598 () Bool)

(assert (=> b!5181124 m!6240598))

(assert (=> b!5180476 d!1674900))

(declare-fun d!1674902 () Bool)

(declare-fun lt!2135692 () Int)

(assert (=> d!1674902 (>= lt!2135692 0)))

(declare-fun e!3228109 () Int)

(assert (=> d!1674902 (= lt!2135692 e!3228109)))

(declare-fun c!892928 () Bool)

(assert (=> d!1674902 (= c!892928 ((_ is Nil!60176) lt!2135514))))

(assert (=> d!1674902 (= (size!39697 lt!2135514) lt!2135692)))

(declare-fun b!5181125 () Bool)

(assert (=> b!5181125 (= e!3228109 0)))

(declare-fun b!5181126 () Bool)

(assert (=> b!5181126 (= e!3228109 (+ 1 (size!39697 (t!373453 lt!2135514))))))

(assert (= (and d!1674902 c!892928) b!5181125))

(assert (= (and d!1674902 (not c!892928)) b!5181126))

(declare-fun m!6240600 () Bool)

(assert (=> b!5181126 m!6240600))

(assert (=> b!5180708 d!1674902))

(assert (=> b!5180708 d!1674606))

(assert (=> b!5180708 d!1674600))

(declare-fun d!1674904 () Bool)

(declare-fun lt!2135693 () Int)

(assert (=> d!1674904 (>= lt!2135693 0)))

(declare-fun e!3228110 () Int)

(assert (=> d!1674904 (= lt!2135693 e!3228110)))

(declare-fun c!892929 () Bool)

(assert (=> d!1674904 (= c!892929 ((_ is Nil!60176) lt!2135541))))

(assert (=> d!1674904 (= (size!39697 lt!2135541) lt!2135693)))

(declare-fun b!5181127 () Bool)

(assert (=> b!5181127 (= e!3228110 0)))

(declare-fun b!5181128 () Bool)

(assert (=> b!5181128 (= e!3228110 (+ 1 (size!39697 (t!373453 lt!2135541))))))

(assert (= (and d!1674904 c!892929) b!5181127))

(assert (= (and d!1674904 (not c!892929)) b!5181128))

(declare-fun m!6240602 () Bool)

(assert (=> b!5181128 m!6240602))

(assert (=> b!5180766 d!1674904))

(assert (=> b!5180766 d!1674596))

(declare-fun d!1674906 () Bool)

(declare-fun lt!2135694 () Int)

(assert (=> d!1674906 (>= lt!2135694 0)))

(declare-fun e!3228111 () Int)

(assert (=> d!1674906 (= lt!2135694 e!3228111)))

(declare-fun c!892930 () Bool)

(assert (=> d!1674906 (= c!892930 ((_ is Nil!60176) (_2!35239 lt!2135034)))))

(assert (=> d!1674906 (= (size!39697 (_2!35239 lt!2135034)) lt!2135694)))

(declare-fun b!5181129 () Bool)

(assert (=> b!5181129 (= e!3228111 0)))

(declare-fun b!5181130 () Bool)

(assert (=> b!5181130 (= e!3228111 (+ 1 (size!39697 (t!373453 (_2!35239 lt!2135034)))))))

(assert (= (and d!1674906 c!892930) b!5181129))

(assert (= (and d!1674906 (not c!892930)) b!5181130))

(declare-fun m!6240604 () Bool)

(assert (=> b!5181130 m!6240604))

(assert (=> b!5180766 d!1674906))

(declare-fun bs!1207108 () Bool)

(declare-fun d!1674908 () Bool)

(assert (= bs!1207108 (and d!1674908 d!1674740)))

(declare-fun lambda!258964 () Int)

(assert (=> bs!1207108 (not (= lambda!258964 lambda!258946))))

(declare-fun bs!1207109 () Bool)

(assert (= bs!1207109 (and d!1674908 d!1674160)))

(assert (=> bs!1207109 (= lambda!258964 lambda!258876)))

(declare-fun bs!1207110 () Bool)

(assert (= bs!1207110 (and d!1674908 b!5180975)))

(assert (=> bs!1207110 (not (= lambda!258964 lambda!258948))))

(declare-fun bs!1207111 () Bool)

(assert (= bs!1207111 (and d!1674908 d!1674662)))

(assert (=> bs!1207111 (= lambda!258964 lambda!258944)))

(declare-fun bs!1207112 () Bool)

(assert (= bs!1207112 (and d!1674908 d!1674800)))

(assert (=> bs!1207112 (not (= lambda!258964 lambda!258958))))

(declare-fun bs!1207113 () Bool)

(assert (= bs!1207113 (and d!1674908 b!5180506)))

(assert (=> bs!1207113 (not (= lambda!258964 lambda!258902))))

(declare-fun bs!1207114 () Bool)

(assert (= bs!1207114 (and d!1674908 d!1674818)))

(assert (=> bs!1207114 (not (= lambda!258964 lambda!258959))))

(declare-fun bs!1207115 () Bool)

(assert (= bs!1207115 (and d!1674908 b!5180758)))

(assert (=> bs!1207115 (not (= lambda!258964 lambda!258935))))

(declare-fun bs!1207116 () Bool)

(assert (= bs!1207116 (and d!1674908 d!1674556)))

(assert (=> bs!1207116 (not (= lambda!258964 lambda!258934))))

(declare-fun bs!1207117 () Bool)

(assert (= bs!1207117 (and d!1674908 b!5180974)))

(assert (=> bs!1207117 (not (= lambda!258964 lambda!258947))))

(declare-fun bs!1207118 () Bool)

(assert (= bs!1207118 (and d!1674908 d!1674274)))

(assert (=> bs!1207118 (not (= lambda!258964 lambda!258901))))

(declare-fun bs!1207119 () Bool)

(assert (= bs!1207119 (and d!1674908 d!1674538)))

(assert (=> bs!1207119 (= lambda!258964 lambda!258933)))

(declare-fun bs!1207120 () Bool)

(assert (= bs!1207120 (and d!1674908 d!1674640)))

(assert (=> bs!1207120 (not (= lambda!258964 lambda!258943))))

(declare-fun bs!1207121 () Bool)

(assert (= bs!1207121 (and d!1674908 b!5180507)))

(assert (=> bs!1207121 (not (= lambda!258964 lambda!258903))))

(declare-fun bs!1207122 () Bool)

(assert (= bs!1207122 (and d!1674908 d!1674590)))

(assert (=> bs!1207122 (= lambda!258964 lambda!258938)))

(declare-fun bs!1207123 () Bool)

(assert (= bs!1207123 (and d!1674908 b!5180759)))

(assert (=> bs!1207123 (not (= lambda!258964 lambda!258936))))

(declare-fun bs!1207124 () Bool)

(assert (= bs!1207124 (and d!1674908 d!1674848)))

(assert (=> bs!1207124 (not (= lambda!258964 lambda!258963))))

(declare-fun bs!1207125 () Bool)

(assert (= bs!1207125 (and d!1674908 d!1674842)))

(assert (=> bs!1207125 (not (= lambda!258964 lambda!258962))))

(assert (=> d!1674908 (= (nullableZipper!1199 (derivationStepZipper!1007 baseZ!62 (head!11079 (_1!35239 lt!2134956)))) (exists!1947 (derivationStepZipper!1007 baseZ!62 (head!11079 (_1!35239 lt!2134956))) lambda!258964))))

(declare-fun bs!1207126 () Bool)

(assert (= bs!1207126 d!1674908))

(assert (=> bs!1207126 m!6238918))

(declare-fun m!6240606 () Bool)

(assert (=> bs!1207126 m!6240606))

(assert (=> b!5180627 d!1674908))

(declare-fun d!1674910 () Bool)

(assert (=> d!1674910 (= (head!11079 (tail!10178 testedP!294)) (h!66624 (tail!10178 testedP!294)))))

(assert (=> b!5180755 d!1674910))

(assert (=> b!5180755 d!1674682))

(declare-fun b!5181132 () Bool)

(declare-fun e!3228113 () List!60300)

(assert (=> b!5181132 (= e!3228113 (Cons!60176 (h!66624 (t!373453 (++!13177 testedP!294 (Cons!60176 lt!2135040 Nil!60176)))) (++!13177 (t!373453 (t!373453 (++!13177 testedP!294 (Cons!60176 lt!2135040 Nil!60176)))) lt!2135043)))))

(declare-fun b!5181131 () Bool)

(assert (=> b!5181131 (= e!3228113 lt!2135043)))

(declare-fun b!5181133 () Bool)

(declare-fun res!2201179 () Bool)

(declare-fun e!3228112 () Bool)

(assert (=> b!5181133 (=> (not res!2201179) (not e!3228112))))

(declare-fun lt!2135695 () List!60300)

(assert (=> b!5181133 (= res!2201179 (= (size!39697 lt!2135695) (+ (size!39697 (t!373453 (++!13177 testedP!294 (Cons!60176 lt!2135040 Nil!60176)))) (size!39697 lt!2135043))))))

(declare-fun b!5181134 () Bool)

(assert (=> b!5181134 (= e!3228112 (or (not (= lt!2135043 Nil!60176)) (= lt!2135695 (t!373453 (++!13177 testedP!294 (Cons!60176 lt!2135040 Nil!60176))))))))

(declare-fun d!1674912 () Bool)

(assert (=> d!1674912 e!3228112))

(declare-fun res!2201180 () Bool)

(assert (=> d!1674912 (=> (not res!2201180) (not e!3228112))))

(assert (=> d!1674912 (= res!2201180 (= (content!10669 lt!2135695) ((_ map or) (content!10669 (t!373453 (++!13177 testedP!294 (Cons!60176 lt!2135040 Nil!60176)))) (content!10669 lt!2135043))))))

(assert (=> d!1674912 (= lt!2135695 e!3228113)))

(declare-fun c!892931 () Bool)

(assert (=> d!1674912 (= c!892931 ((_ is Nil!60176) (t!373453 (++!13177 testedP!294 (Cons!60176 lt!2135040 Nil!60176)))))))

(assert (=> d!1674912 (= (++!13177 (t!373453 (++!13177 testedP!294 (Cons!60176 lt!2135040 Nil!60176))) lt!2135043) lt!2135695)))

(assert (= (and d!1674912 c!892931) b!5181131))

(assert (= (and d!1674912 (not c!892931)) b!5181132))

(assert (= (and d!1674912 res!2201180) b!5181133))

(assert (= (and b!5181133 res!2201179) b!5181134))

(declare-fun m!6240608 () Bool)

(assert (=> b!5181132 m!6240608))

(declare-fun m!6240610 () Bool)

(assert (=> b!5181133 m!6240610))

(declare-fun m!6240612 () Bool)

(assert (=> b!5181133 m!6240612))

(assert (=> b!5181133 m!6239786))

(declare-fun m!6240614 () Bool)

(assert (=> d!1674912 m!6240614))

(assert (=> d!1674912 m!6240516))

(assert (=> d!1674912 m!6239792))

(assert (=> b!5180731 d!1674912))

(assert (=> d!1674588 d!1674128))

(declare-fun b!5181153 () Bool)

(declare-fun e!3228130 () Bool)

(declare-fun e!3228132 () Bool)

(assert (=> b!5181153 (= e!3228130 e!3228132)))

(declare-fun res!2201192 () Bool)

(declare-fun nullable!4897 (Regex!14661) Bool)

(assert (=> b!5181153 (= res!2201192 (not (nullable!4897 (reg!14990 (h!66623 (exprs!4545 setElem!32402))))))))

(assert (=> b!5181153 (=> (not res!2201192) (not e!3228132))))

(declare-fun b!5181154 () Bool)

(declare-fun e!3228133 () Bool)

(assert (=> b!5181154 (= e!3228133 e!3228130)))

(declare-fun c!892936 () Bool)

(assert (=> b!5181154 (= c!892936 ((_ is Star!14661) (h!66623 (exprs!4545 setElem!32402))))))

(declare-fun b!5181155 () Bool)

(declare-fun e!3228128 () Bool)

(assert (=> b!5181155 (= e!3228130 e!3228128)))

(declare-fun c!892937 () Bool)

(assert (=> b!5181155 (= c!892937 ((_ is Union!14661) (h!66623 (exprs!4545 setElem!32402))))))

(declare-fun b!5181156 () Bool)

(declare-fun e!3228131 () Bool)

(declare-fun call!364180 () Bool)

(assert (=> b!5181156 (= e!3228131 call!364180)))

(declare-fun b!5181157 () Bool)

(declare-fun e!3228134 () Bool)

(assert (=> b!5181157 (= e!3228134 call!364180)))

(declare-fun call!364182 () Bool)

(declare-fun bm!364175 () Bool)

(assert (=> bm!364175 (= call!364182 (validRegex!6411 (ite c!892936 (reg!14990 (h!66623 (exprs!4545 setElem!32402))) (ite c!892937 (regOne!29835 (h!66623 (exprs!4545 setElem!32402))) (regOne!29834 (h!66623 (exprs!4545 setElem!32402)))))))))

(declare-fun b!5181158 () Bool)

(declare-fun e!3228129 () Bool)

(assert (=> b!5181158 (= e!3228129 e!3228134)))

(declare-fun res!2201191 () Bool)

(assert (=> b!5181158 (=> (not res!2201191) (not e!3228134))))

(declare-fun call!364181 () Bool)

(assert (=> b!5181158 (= res!2201191 call!364181)))

(declare-fun b!5181159 () Bool)

(declare-fun res!2201194 () Bool)

(assert (=> b!5181159 (=> (not res!2201194) (not e!3228131))))

(assert (=> b!5181159 (= res!2201194 call!364181)))

(assert (=> b!5181159 (= e!3228128 e!3228131)))

(declare-fun b!5181160 () Bool)

(assert (=> b!5181160 (= e!3228132 call!364182)))

(declare-fun bm!364177 () Bool)

(assert (=> bm!364177 (= call!364181 call!364182)))

(declare-fun b!5181161 () Bool)

(declare-fun res!2201195 () Bool)

(assert (=> b!5181161 (=> res!2201195 e!3228129)))

(assert (=> b!5181161 (= res!2201195 (not ((_ is Concat!23506) (h!66623 (exprs!4545 setElem!32402)))))))

(assert (=> b!5181161 (= e!3228128 e!3228129)))

(declare-fun bm!364176 () Bool)

(assert (=> bm!364176 (= call!364180 (validRegex!6411 (ite c!892937 (regTwo!29835 (h!66623 (exprs!4545 setElem!32402))) (regTwo!29834 (h!66623 (exprs!4545 setElem!32402))))))))

(declare-fun d!1674914 () Bool)

(declare-fun res!2201193 () Bool)

(assert (=> d!1674914 (=> res!2201193 e!3228133)))

(assert (=> d!1674914 (= res!2201193 ((_ is ElementMatch!14661) (h!66623 (exprs!4545 setElem!32402))))))

(assert (=> d!1674914 (= (validRegex!6411 (h!66623 (exprs!4545 setElem!32402))) e!3228133)))

(assert (= (and d!1674914 (not res!2201193)) b!5181154))

(assert (= (and b!5181154 c!892936) b!5181153))

(assert (= (and b!5181154 (not c!892936)) b!5181155))

(assert (= (and b!5181153 res!2201192) b!5181160))

(assert (= (and b!5181155 c!892937) b!5181159))

(assert (= (and b!5181155 (not c!892937)) b!5181161))

(assert (= (and b!5181159 res!2201194) b!5181156))

(assert (= (and b!5181161 (not res!2201195)) b!5181158))

(assert (= (and b!5181158 res!2201191) b!5181157))

(assert (= (or b!5181156 b!5181157) bm!364176))

(assert (= (or b!5181159 b!5181158) bm!364177))

(assert (= (or b!5181160 bm!364177) bm!364175))

(declare-fun m!6240616 () Bool)

(assert (=> b!5181153 m!6240616))

(declare-fun m!6240618 () Bool)

(assert (=> bm!364175 m!6240618))

(declare-fun m!6240620 () Bool)

(assert (=> bm!364176 m!6240620))

(assert (=> bs!1206926 d!1674914))

(assert (=> d!1674324 d!1674332))

(assert (=> d!1674324 d!1674320))

(declare-fun d!1674916 () Bool)

(assert (=> d!1674916 (isPrefix!5794 lt!2134949 (++!13177 lt!2134949 (getSuffix!3442 input!5817 lt!2134949)))))

(assert (=> d!1674916 true))

(declare-fun _$46!2010 () Unit!152123)

(assert (=> d!1674916 (= (choose!38497 lt!2134949 (getSuffix!3442 input!5817 lt!2134949)) _$46!2010)))

(declare-fun bs!1207127 () Bool)

(assert (= bs!1207127 d!1674916))

(assert (=> bs!1207127 m!6238570))

(assert (=> bs!1207127 m!6238876))

(assert (=> bs!1207127 m!6238876))

(assert (=> bs!1207127 m!6238878))

(assert (=> d!1674324 d!1674916))

(assert (=> bm!364123 d!1674126))

(declare-fun d!1674918 () Bool)

(assert (=> d!1674918 (= (isEmpty!32219 (_1!35239 lt!2135416)) ((_ is Nil!60176) (_1!35239 lt!2135416)))))

(assert (=> b!5180608 d!1674918))

(declare-fun d!1674920 () Bool)

(assert (=> d!1674920 (= (isEmpty!32219 (_1!35239 lt!2135378)) ((_ is Nil!60176) (_1!35239 lt!2135378)))))

(assert (=> b!5180583 d!1674920))

(declare-fun b!5181163 () Bool)

(declare-fun e!3228136 () List!60300)

(assert (=> b!5181163 (= e!3228136 (Cons!60176 (h!66624 (t!373453 (++!13177 lt!2134949 (Cons!60176 lt!2135212 Nil!60176)))) (++!13177 (t!373453 (t!373453 (++!13177 lt!2134949 (Cons!60176 lt!2135212 Nil!60176)))) lt!2135215)))))

(declare-fun b!5181162 () Bool)

(assert (=> b!5181162 (= e!3228136 lt!2135215)))

(declare-fun b!5181164 () Bool)

(declare-fun res!2201196 () Bool)

(declare-fun e!3228135 () Bool)

(assert (=> b!5181164 (=> (not res!2201196) (not e!3228135))))

(declare-fun lt!2135696 () List!60300)

(assert (=> b!5181164 (= res!2201196 (= (size!39697 lt!2135696) (+ (size!39697 (t!373453 (++!13177 lt!2134949 (Cons!60176 lt!2135212 Nil!60176)))) (size!39697 lt!2135215))))))

(declare-fun b!5181165 () Bool)

(assert (=> b!5181165 (= e!3228135 (or (not (= lt!2135215 Nil!60176)) (= lt!2135696 (t!373453 (++!13177 lt!2134949 (Cons!60176 lt!2135212 Nil!60176))))))))

(declare-fun d!1674922 () Bool)

(assert (=> d!1674922 e!3228135))

(declare-fun res!2201197 () Bool)

(assert (=> d!1674922 (=> (not res!2201197) (not e!3228135))))

(assert (=> d!1674922 (= res!2201197 (= (content!10669 lt!2135696) ((_ map or) (content!10669 (t!373453 (++!13177 lt!2134949 (Cons!60176 lt!2135212 Nil!60176)))) (content!10669 lt!2135215))))))

(assert (=> d!1674922 (= lt!2135696 e!3228136)))

(declare-fun c!892938 () Bool)

(assert (=> d!1674922 (= c!892938 ((_ is Nil!60176) (t!373453 (++!13177 lt!2134949 (Cons!60176 lt!2135212 Nil!60176)))))))

(assert (=> d!1674922 (= (++!13177 (t!373453 (++!13177 lt!2134949 (Cons!60176 lt!2135212 Nil!60176))) lt!2135215) lt!2135696)))

(assert (= (and d!1674922 c!892938) b!5181162))

(assert (= (and d!1674922 (not c!892938)) b!5181163))

(assert (= (and d!1674922 res!2201197) b!5181164))

(assert (= (and b!5181164 res!2201196) b!5181165))

(declare-fun m!6240622 () Bool)

(assert (=> b!5181163 m!6240622))

(declare-fun m!6240624 () Bool)

(assert (=> b!5181164 m!6240624))

(declare-fun m!6240626 () Bool)

(assert (=> b!5181164 m!6240626))

(assert (=> b!5181164 m!6239584))

(declare-fun m!6240628 () Bool)

(assert (=> d!1674922 m!6240628))

(declare-fun m!6240630 () Bool)

(assert (=> d!1674922 m!6240630))

(assert (=> d!1674922 m!6239590))

(assert (=> b!5180642 d!1674922))

(declare-fun d!1674924 () Bool)

(assert (=> d!1674924 (= input!5817 lt!2135219)))

(declare-fun lt!2135697 () Unit!152123)

(assert (=> d!1674924 (= lt!2135697 (choose!38491 input!5817 lt!2135219 input!5817))))

(assert (=> d!1674924 (isPrefix!5794 input!5817 input!5817)))

(assert (=> d!1674924 (= (lemmaIsPrefixSameLengthThenSameList!1439 input!5817 lt!2135219 input!5817) lt!2135697)))

(declare-fun bs!1207128 () Bool)

(assert (= bs!1207128 d!1674924))

(declare-fun m!6240632 () Bool)

(assert (=> bs!1207128 m!6240632))

(assert (=> bs!1207128 m!6238556))

(assert (=> bm!364126 d!1674924))

(declare-fun d!1674926 () Bool)

(declare-fun c!892939 () Bool)

(assert (=> d!1674926 (= c!892939 ((_ is Nil!60176) (t!373453 lt!2135061)))))

(declare-fun e!3228137 () (InoxSet C!29592))

(assert (=> d!1674926 (= (content!10669 (t!373453 lt!2135061)) e!3228137)))

(declare-fun b!5181166 () Bool)

(assert (=> b!5181166 (= e!3228137 ((as const (Array C!29592 Bool)) false))))

(declare-fun b!5181167 () Bool)

(assert (=> b!5181167 (= e!3228137 ((_ map or) (store ((as const (Array C!29592 Bool)) false) (h!66624 (t!373453 lt!2135061)) true) (content!10669 (t!373453 (t!373453 lt!2135061)))))))

(assert (= (and d!1674926 c!892939) b!5181166))

(assert (= (and d!1674926 (not c!892939)) b!5181167))

(declare-fun m!6240634 () Bool)

(assert (=> b!5181167 m!6240634))

(declare-fun m!6240636 () Bool)

(assert (=> b!5181167 m!6240636))

(assert (=> b!5180622 d!1674926))

(declare-fun b!5181169 () Bool)

(declare-fun e!3228139 () List!60300)

(assert (=> b!5181169 (= e!3228139 (Cons!60176 (h!66624 (t!373453 testedP!294)) (++!13177 (t!373453 (t!373453 testedP!294)) (Cons!60176 (head!11079 (getSuffix!3442 input!5817 testedP!294)) Nil!60176))))))

(declare-fun b!5181168 () Bool)

(assert (=> b!5181168 (= e!3228139 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 testedP!294)) Nil!60176))))

(declare-fun b!5181170 () Bool)

(declare-fun res!2201198 () Bool)

(declare-fun e!3228138 () Bool)

(assert (=> b!5181170 (=> (not res!2201198) (not e!3228138))))

(declare-fun lt!2135698 () List!60300)

(assert (=> b!5181170 (= res!2201198 (= (size!39697 lt!2135698) (+ (size!39697 (t!373453 testedP!294)) (size!39697 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 testedP!294)) Nil!60176)))))))

(declare-fun b!5181171 () Bool)

(assert (=> b!5181171 (= e!3228138 (or (not (= (Cons!60176 (head!11079 (getSuffix!3442 input!5817 testedP!294)) Nil!60176) Nil!60176)) (= lt!2135698 (t!373453 testedP!294))))))

(declare-fun d!1674928 () Bool)

(assert (=> d!1674928 e!3228138))

(declare-fun res!2201199 () Bool)

(assert (=> d!1674928 (=> (not res!2201199) (not e!3228138))))

(assert (=> d!1674928 (= res!2201199 (= (content!10669 lt!2135698) ((_ map or) (content!10669 (t!373453 testedP!294)) (content!10669 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 testedP!294)) Nil!60176)))))))

(assert (=> d!1674928 (= lt!2135698 e!3228139)))

(declare-fun c!892940 () Bool)

(assert (=> d!1674928 (= c!892940 ((_ is Nil!60176) (t!373453 testedP!294)))))

(assert (=> d!1674928 (= (++!13177 (t!373453 testedP!294) (Cons!60176 (head!11079 (getSuffix!3442 input!5817 testedP!294)) Nil!60176)) lt!2135698)))

(assert (= (and d!1674928 c!892940) b!5181168))

(assert (= (and d!1674928 (not c!892940)) b!5181169))

(assert (= (and d!1674928 res!2201199) b!5181170))

(assert (= (and b!5181170 res!2201198) b!5181171))

(declare-fun m!6240638 () Bool)

(assert (=> b!5181169 m!6240638))

(declare-fun m!6240640 () Bool)

(assert (=> b!5181170 m!6240640))

(assert (=> b!5181170 m!6238664))

(assert (=> b!5181170 m!6239336))

(declare-fun m!6240642 () Bool)

(assert (=> d!1674928 m!6240642))

(assert (=> d!1674928 m!6239522))

(assert (=> d!1674928 m!6239342))

(assert (=> b!5180555 d!1674928))

(declare-fun b!5181172 () Bool)

(declare-fun e!3228142 () Bool)

(declare-fun e!3228144 () Bool)

(assert (=> b!5181172 (= e!3228142 e!3228144)))

(declare-fun res!2201201 () Bool)

(assert (=> b!5181172 (= res!2201201 (not (nullable!4897 (reg!14990 (h!66623 (exprs!4545 setElem!32401))))))))

(assert (=> b!5181172 (=> (not res!2201201) (not e!3228144))))

(declare-fun b!5181173 () Bool)

(declare-fun e!3228145 () Bool)

(assert (=> b!5181173 (= e!3228145 e!3228142)))

(declare-fun c!892941 () Bool)

(assert (=> b!5181173 (= c!892941 ((_ is Star!14661) (h!66623 (exprs!4545 setElem!32401))))))

(declare-fun b!5181174 () Bool)

(declare-fun e!3228140 () Bool)

(assert (=> b!5181174 (= e!3228142 e!3228140)))

(declare-fun c!892942 () Bool)

(assert (=> b!5181174 (= c!892942 ((_ is Union!14661) (h!66623 (exprs!4545 setElem!32401))))))

(declare-fun b!5181175 () Bool)

(declare-fun e!3228143 () Bool)

(declare-fun call!364183 () Bool)

(assert (=> b!5181175 (= e!3228143 call!364183)))

(declare-fun b!5181176 () Bool)

(declare-fun e!3228146 () Bool)

(assert (=> b!5181176 (= e!3228146 call!364183)))

(declare-fun bm!364178 () Bool)

(declare-fun call!364185 () Bool)

(assert (=> bm!364178 (= call!364185 (validRegex!6411 (ite c!892941 (reg!14990 (h!66623 (exprs!4545 setElem!32401))) (ite c!892942 (regOne!29835 (h!66623 (exprs!4545 setElem!32401))) (regOne!29834 (h!66623 (exprs!4545 setElem!32401)))))))))

(declare-fun b!5181177 () Bool)

(declare-fun e!3228141 () Bool)

(assert (=> b!5181177 (= e!3228141 e!3228146)))

(declare-fun res!2201200 () Bool)

(assert (=> b!5181177 (=> (not res!2201200) (not e!3228146))))

(declare-fun call!364184 () Bool)

(assert (=> b!5181177 (= res!2201200 call!364184)))

(declare-fun b!5181178 () Bool)

(declare-fun res!2201203 () Bool)

(assert (=> b!5181178 (=> (not res!2201203) (not e!3228143))))

(assert (=> b!5181178 (= res!2201203 call!364184)))

(assert (=> b!5181178 (= e!3228140 e!3228143)))

(declare-fun b!5181179 () Bool)

(assert (=> b!5181179 (= e!3228144 call!364185)))

(declare-fun bm!364180 () Bool)

(assert (=> bm!364180 (= call!364184 call!364185)))

(declare-fun b!5181180 () Bool)

(declare-fun res!2201204 () Bool)

(assert (=> b!5181180 (=> res!2201204 e!3228141)))

(assert (=> b!5181180 (= res!2201204 (not ((_ is Concat!23506) (h!66623 (exprs!4545 setElem!32401)))))))

(assert (=> b!5181180 (= e!3228140 e!3228141)))

(declare-fun bm!364179 () Bool)

(assert (=> bm!364179 (= call!364183 (validRegex!6411 (ite c!892942 (regTwo!29835 (h!66623 (exprs!4545 setElem!32401))) (regTwo!29834 (h!66623 (exprs!4545 setElem!32401))))))))

(declare-fun d!1674930 () Bool)

(declare-fun res!2201202 () Bool)

(assert (=> d!1674930 (=> res!2201202 e!3228145)))

(assert (=> d!1674930 (= res!2201202 ((_ is ElementMatch!14661) (h!66623 (exprs!4545 setElem!32401))))))

(assert (=> d!1674930 (= (validRegex!6411 (h!66623 (exprs!4545 setElem!32401))) e!3228145)))

(assert (= (and d!1674930 (not res!2201202)) b!5181173))

(assert (= (and b!5181173 c!892941) b!5181172))

(assert (= (and b!5181173 (not c!892941)) b!5181174))

(assert (= (and b!5181172 res!2201201) b!5181179))

(assert (= (and b!5181174 c!892942) b!5181178))

(assert (= (and b!5181174 (not c!892942)) b!5181180))

(assert (= (and b!5181178 res!2201203) b!5181175))

(assert (= (and b!5181180 (not res!2201204)) b!5181177))

(assert (= (and b!5181177 res!2201200) b!5181176))

(assert (= (or b!5181175 b!5181176) bm!364179))

(assert (= (or b!5181178 b!5181177) bm!364180))

(assert (= (or b!5181179 bm!364180) bm!364178))

(declare-fun m!6240644 () Bool)

(assert (=> b!5181172 m!6240644))

(declare-fun m!6240646 () Bool)

(assert (=> bm!364178 m!6240646))

(declare-fun m!6240648 () Bool)

(assert (=> bm!364179 m!6240648))

(assert (=> bs!1206927 d!1674930))

(declare-fun d!1674932 () Bool)

(declare-fun lt!2135699 () Int)

(assert (=> d!1674932 (>= lt!2135699 0)))

(declare-fun e!3228147 () Int)

(assert (=> d!1674932 (= lt!2135699 e!3228147)))

(declare-fun c!892943 () Bool)

(assert (=> d!1674932 (= c!892943 ((_ is Nil!60176) (_1!35239 lt!2135378)))))

(assert (=> d!1674932 (= (size!39697 (_1!35239 lt!2135378)) lt!2135699)))

(declare-fun b!5181181 () Bool)

(assert (=> b!5181181 (= e!3228147 0)))

(declare-fun b!5181182 () Bool)

(assert (=> b!5181182 (= e!3228147 (+ 1 (size!39697 (t!373453 (_1!35239 lt!2135378)))))))

(assert (= (and d!1674932 c!892943) b!5181181))

(assert (= (and d!1674932 (not c!892943)) b!5181182))

(declare-fun m!6240650 () Bool)

(assert (=> b!5181182 m!6240650))

(assert (=> b!5180579 d!1674932))

(declare-fun d!1674934 () Bool)

(declare-fun lt!2135700 () Int)

(assert (=> d!1674934 (>= lt!2135700 0)))

(declare-fun e!3228148 () Int)

(assert (=> d!1674934 (= lt!2135700 e!3228148)))

(declare-fun c!892944 () Bool)

(assert (=> d!1674934 (= c!892944 ((_ is Nil!60176) lt!2135047))))

(assert (=> d!1674934 (= (size!39697 lt!2135047) lt!2135700)))

(declare-fun b!5181183 () Bool)

(assert (=> b!5181183 (= e!3228148 0)))

(declare-fun b!5181184 () Bool)

(assert (=> b!5181184 (= e!3228148 (+ 1 (size!39697 (t!373453 lt!2135047))))))

(assert (= (and d!1674934 c!892944) b!5181183))

(assert (= (and d!1674934 (not c!892944)) b!5181184))

(declare-fun m!6240652 () Bool)

(assert (=> b!5181184 m!6240652))

(assert (=> b!5180579 d!1674934))

(assert (=> d!1674594 d!1674152))

(assert (=> d!1674594 d!1674142))

(declare-fun d!1674936 () Bool)

(declare-fun lt!2135701 () Int)

(assert (=> d!1674936 (>= lt!2135701 0)))

(declare-fun e!3228149 () Int)

(assert (=> d!1674936 (= lt!2135701 e!3228149)))

(declare-fun c!892945 () Bool)

(assert (=> d!1674936 (= c!892945 ((_ is Nil!60176) lt!2135520))))

(assert (=> d!1674936 (= (size!39697 lt!2135520) lt!2135701)))

(declare-fun b!5181185 () Bool)

(assert (=> b!5181185 (= e!3228149 0)))

(declare-fun b!5181186 () Bool)

(assert (=> b!5181186 (= e!3228149 (+ 1 (size!39697 (t!373453 lt!2135520))))))

(assert (= (and d!1674936 c!892945) b!5181185))

(assert (= (and d!1674936 (not c!892945)) b!5181186))

(declare-fun m!6240654 () Bool)

(assert (=> b!5181186 m!6240654))

(assert (=> b!5180728 d!1674936))

(assert (=> b!5180728 d!1674152))

(declare-fun d!1674938 () Bool)

(declare-fun lt!2135702 () Int)

(assert (=> d!1674938 (>= lt!2135702 0)))

(declare-fun e!3228150 () Int)

(assert (=> d!1674938 (= lt!2135702 e!3228150)))

(declare-fun c!892946 () Bool)

(assert (=> d!1674938 (= c!892946 ((_ is Nil!60176) (Cons!60176 (head!11079 lt!2134946) Nil!60176)))))

(assert (=> d!1674938 (= (size!39697 (Cons!60176 (head!11079 lt!2134946) Nil!60176)) lt!2135702)))

(declare-fun b!5181187 () Bool)

(assert (=> b!5181187 (= e!3228150 0)))

(declare-fun b!5181188 () Bool)

(assert (=> b!5181188 (= e!3228150 (+ 1 (size!39697 (t!373453 (Cons!60176 (head!11079 lt!2134946) Nil!60176)))))))

(assert (= (and d!1674938 c!892946) b!5181187))

(assert (= (and d!1674938 (not c!892946)) b!5181188))

(declare-fun m!6240656 () Bool)

(assert (=> b!5181188 m!6240656))

(assert (=> b!5180728 d!1674938))

(declare-fun d!1674940 () Bool)

(declare-fun c!892947 () Bool)

(assert (=> d!1674940 (= c!892947 (isEmpty!32219 (tail!10178 (_1!35239 (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 (size!39697 input!5817))))))))

(declare-fun e!3228151 () Bool)

(assert (=> d!1674940 (= (matchZipper!989 (derivationStepZipper!1007 baseZ!62 (head!11079 (_1!35239 (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 (size!39697 input!5817))))) (tail!10178 (_1!35239 (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 (size!39697 input!5817))))) e!3228151)))

(declare-fun b!5181189 () Bool)

(assert (=> b!5181189 (= e!3228151 (nullableZipper!1199 (derivationStepZipper!1007 baseZ!62 (head!11079 (_1!35239 (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 (size!39697 input!5817)))))))))

(declare-fun b!5181190 () Bool)

(assert (=> b!5181190 (= e!3228151 (matchZipper!989 (derivationStepZipper!1007 (derivationStepZipper!1007 baseZ!62 (head!11079 (_1!35239 (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 (size!39697 input!5817))))) (head!11079 (tail!10178 (_1!35239 (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 (size!39697 input!5817)))))) (tail!10178 (tail!10178 (_1!35239 (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 (size!39697 input!5817)))))))))

(assert (= (and d!1674940 c!892947) b!5181189))

(assert (= (and d!1674940 (not c!892947)) b!5181190))

(assert (=> d!1674940 m!6239622))

(declare-fun m!6240658 () Bool)

(assert (=> d!1674940 m!6240658))

(assert (=> b!5181189 m!6239620))

(declare-fun m!6240660 () Bool)

(assert (=> b!5181189 m!6240660))

(assert (=> b!5181190 m!6239622))

(declare-fun m!6240662 () Bool)

(assert (=> b!5181190 m!6240662))

(assert (=> b!5181190 m!6239620))

(assert (=> b!5181190 m!6240662))

(declare-fun m!6240664 () Bool)

(assert (=> b!5181190 m!6240664))

(assert (=> b!5181190 m!6239622))

(declare-fun m!6240666 () Bool)

(assert (=> b!5181190 m!6240666))

(assert (=> b!5181190 m!6240664))

(assert (=> b!5181190 m!6240666))

(declare-fun m!6240668 () Bool)

(assert (=> b!5181190 m!6240668))

(assert (=> b!5180658 d!1674940))

(declare-fun bs!1207129 () Bool)

(declare-fun d!1674942 () Bool)

(assert (= bs!1207129 (and d!1674942 d!1674784)))

(declare-fun lambda!258965 () Int)

(assert (=> bs!1207129 (= (= (head!11079 (_1!35239 (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 (size!39697 input!5817)))) (h!66624 (t!373453 lt!2134949))) (= lambda!258965 lambda!258950))))

(declare-fun bs!1207130 () Bool)

(assert (= bs!1207130 (and d!1674942 d!1674744)))

(assert (=> bs!1207130 (= (= (head!11079 (_1!35239 (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 (size!39697 input!5817)))) call!364128) (= lambda!258965 lambda!258949))))

(declare-fun bs!1207131 () Bool)

(assert (= bs!1207131 (and d!1674942 d!1674376)))

(assert (=> bs!1207131 (= (= (head!11079 (_1!35239 (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 (size!39697 input!5817)))) (head!11079 (_1!35239 lt!2134953))) (= lambda!258965 lambda!258908))))

(declare-fun bs!1207132 () Bool)

(assert (= bs!1207132 (and d!1674942 d!1674690)))

(assert (=> bs!1207132 (= (= (head!11079 (_1!35239 (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 (size!39697 input!5817)))) (h!66624 (t!373453 testedP!294))) (= lambda!258965 lambda!258945))))

(declare-fun bs!1207133 () Bool)

(assert (= bs!1207133 (and d!1674942 d!1674430)))

(assert (=> bs!1207133 (= (= (head!11079 (_1!35239 (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 (size!39697 input!5817)))) (head!11079 (_1!35239 lt!2134956))) (= lambda!258965 lambda!258912))))

(declare-fun bs!1207134 () Bool)

(assert (= bs!1207134 (and d!1674942 d!1674792)))

(assert (=> bs!1207134 (= (= (head!11079 (_1!35239 (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 (size!39697 input!5817)))) (head!11079 (tail!10178 (_1!35239 lt!2134953)))) (= lambda!258965 lambda!258951))))

(declare-fun bs!1207135 () Bool)

(assert (= bs!1207135 (and d!1674942 d!1674436)))

(assert (=> bs!1207135 (= (= (head!11079 (_1!35239 (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 (size!39697 input!5817)))) call!364050) (= lambda!258965 lambda!258913))))

(declare-fun bs!1207136 () Bool)

(assert (= bs!1207136 (and d!1674942 d!1674362)))

(assert (=> bs!1207136 (= (= (head!11079 (_1!35239 (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 (size!39697 input!5817)))) call!364090) (= lambda!258965 lambda!258907))))

(declare-fun bs!1207137 () Bool)

(assert (= bs!1207137 (and d!1674942 d!1674228)))

(assert (=> bs!1207137 (= (= (head!11079 (_1!35239 (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 (size!39697 input!5817)))) lt!2134944) (= lambda!258965 lambda!258882))))

(declare-fun bs!1207138 () Bool)

(assert (= bs!1207138 (and d!1674942 d!1674604)))

(assert (=> bs!1207138 (= (= (head!11079 (_1!35239 (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 (size!39697 input!5817)))) (h!66624 lt!2134949)) (= lambda!258965 lambda!258939))))

(declare-fun bs!1207139 () Bool)

(assert (= bs!1207139 (and d!1674942 d!1674572)))

(assert (=> bs!1207139 (= (= (head!11079 (_1!35239 (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 (size!39697 input!5817)))) (h!66624 testedP!294)) (= lambda!258965 lambda!258937))))

(assert (=> d!1674942 true))

(assert (=> d!1674942 (= (derivationStepZipper!1007 baseZ!62 (head!11079 (_1!35239 (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 (size!39697 input!5817))))) (flatMap!464 baseZ!62 lambda!258965))))

(declare-fun bs!1207140 () Bool)

(assert (= bs!1207140 d!1674942))

(declare-fun m!6240670 () Bool)

(assert (=> bs!1207140 m!6240670))

(assert (=> b!5180658 d!1674942))

(declare-fun d!1674944 () Bool)

(assert (=> d!1674944 (= (head!11079 (_1!35239 (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 (size!39697 input!5817)))) (h!66624 (_1!35239 (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 (size!39697 input!5817)))))))

(assert (=> b!5180658 d!1674944))

(declare-fun d!1674946 () Bool)

(assert (=> d!1674946 (= (tail!10178 (_1!35239 (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 (size!39697 input!5817)))) (t!373453 (_1!35239 (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 (size!39697 input!5817)))))))

(assert (=> b!5180658 d!1674946))

(assert (=> d!1674412 d!1674752))

(declare-fun bs!1207141 () Bool)

(declare-fun d!1674948 () Bool)

(assert (= bs!1207141 (and d!1674948 d!1674740)))

(declare-fun lambda!258966 () Int)

(assert (=> bs!1207141 (= lambda!258966 lambda!258946)))

(declare-fun bs!1207142 () Bool)

(assert (= bs!1207142 (and d!1674948 d!1674160)))

(assert (=> bs!1207142 (not (= lambda!258966 lambda!258876))))

(declare-fun bs!1207143 () Bool)

(assert (= bs!1207143 (and d!1674948 b!5180975)))

(assert (=> bs!1207143 (not (= lambda!258966 lambda!258948))))

(declare-fun bs!1207144 () Bool)

(assert (= bs!1207144 (and d!1674948 d!1674662)))

(assert (=> bs!1207144 (not (= lambda!258966 lambda!258944))))

(declare-fun bs!1207145 () Bool)

(assert (= bs!1207145 (and d!1674948 d!1674800)))

(assert (=> bs!1207145 (not (= lambda!258966 lambda!258958))))

(declare-fun bs!1207146 () Bool)

(assert (= bs!1207146 (and d!1674948 b!5180506)))

(assert (=> bs!1207146 (not (= lambda!258966 lambda!258902))))

(declare-fun bs!1207147 () Bool)

(assert (= bs!1207147 (and d!1674948 d!1674818)))

(assert (=> bs!1207147 (not (= lambda!258966 lambda!258959))))

(declare-fun bs!1207148 () Bool)

(assert (= bs!1207148 (and d!1674948 d!1674556)))

(assert (=> bs!1207148 (= lambda!258966 lambda!258934)))

(declare-fun bs!1207149 () Bool)

(assert (= bs!1207149 (and d!1674948 b!5180974)))

(assert (=> bs!1207149 (not (= lambda!258966 lambda!258947))))

(declare-fun bs!1207150 () Bool)

(assert (= bs!1207150 (and d!1674948 d!1674274)))

(assert (=> bs!1207150 (= lambda!258966 lambda!258901)))

(declare-fun bs!1207151 () Bool)

(assert (= bs!1207151 (and d!1674948 d!1674538)))

(assert (=> bs!1207151 (not (= lambda!258966 lambda!258933))))

(declare-fun bs!1207152 () Bool)

(assert (= bs!1207152 (and d!1674948 d!1674640)))

(assert (=> bs!1207152 (not (= lambda!258966 lambda!258943))))

(declare-fun bs!1207153 () Bool)

(assert (= bs!1207153 (and d!1674948 b!5180507)))

(assert (=> bs!1207153 (not (= lambda!258966 lambda!258903))))

(declare-fun bs!1207154 () Bool)

(assert (= bs!1207154 (and d!1674948 b!5180758)))

(assert (=> bs!1207154 (not (= lambda!258966 lambda!258935))))

(declare-fun bs!1207155 () Bool)

(assert (= bs!1207155 (and d!1674948 d!1674908)))

(assert (=> bs!1207155 (not (= lambda!258966 lambda!258964))))

(declare-fun bs!1207156 () Bool)

(assert (= bs!1207156 (and d!1674948 d!1674590)))

(assert (=> bs!1207156 (not (= lambda!258966 lambda!258938))))

(declare-fun bs!1207157 () Bool)

(assert (= bs!1207157 (and d!1674948 b!5180759)))

(assert (=> bs!1207157 (not (= lambda!258966 lambda!258936))))

(declare-fun bs!1207158 () Bool)

(assert (= bs!1207158 (and d!1674948 d!1674848)))

(assert (=> bs!1207158 (not (= lambda!258966 lambda!258963))))

(declare-fun bs!1207159 () Bool)

(assert (= bs!1207159 (and d!1674948 d!1674842)))

(assert (=> bs!1207159 (not (= lambda!258966 lambda!258962))))

(declare-fun bs!1207160 () Bool)

(declare-fun b!5181191 () Bool)

(assert (= bs!1207160 (and b!5181191 d!1674740)))

(declare-fun lambda!258967 () Int)

(assert (=> bs!1207160 (not (= lambda!258967 lambda!258946))))

(declare-fun bs!1207161 () Bool)

(assert (= bs!1207161 (and b!5181191 d!1674160)))

(assert (=> bs!1207161 (not (= lambda!258967 lambda!258876))))

(declare-fun bs!1207162 () Bool)

(assert (= bs!1207162 (and b!5181191 b!5180975)))

(assert (=> bs!1207162 (= lambda!258967 lambda!258948)))

(declare-fun bs!1207163 () Bool)

(assert (= bs!1207163 (and b!5181191 d!1674662)))

(assert (=> bs!1207163 (not (= lambda!258967 lambda!258944))))

(declare-fun bs!1207164 () Bool)

(assert (= bs!1207164 (and b!5181191 d!1674800)))

(assert (=> bs!1207164 (= lambda!258967 lambda!258958)))

(declare-fun bs!1207165 () Bool)

(assert (= bs!1207165 (and b!5181191 b!5180506)))

(assert (=> bs!1207165 (= lambda!258967 lambda!258902)))

(declare-fun bs!1207166 () Bool)

(assert (= bs!1207166 (and b!5181191 d!1674818)))

(assert (=> bs!1207166 (not (= lambda!258967 lambda!258959))))

(declare-fun bs!1207167 () Bool)

(assert (= bs!1207167 (and b!5181191 d!1674556)))

(assert (=> bs!1207167 (not (= lambda!258967 lambda!258934))))

(declare-fun bs!1207168 () Bool)

(assert (= bs!1207168 (and b!5181191 b!5180974)))

(assert (=> bs!1207168 (= lambda!258967 lambda!258947)))

(declare-fun bs!1207169 () Bool)

(assert (= bs!1207169 (and b!5181191 d!1674274)))

(assert (=> bs!1207169 (not (= lambda!258967 lambda!258901))))

(declare-fun bs!1207170 () Bool)

(assert (= bs!1207170 (and b!5181191 d!1674640)))

(assert (=> bs!1207170 (not (= lambda!258967 lambda!258943))))

(declare-fun bs!1207171 () Bool)

(assert (= bs!1207171 (and b!5181191 b!5180507)))

(assert (=> bs!1207171 (= lambda!258967 lambda!258903)))

(declare-fun bs!1207172 () Bool)

(assert (= bs!1207172 (and b!5181191 b!5180758)))

(assert (=> bs!1207172 (= lambda!258967 lambda!258935)))

(declare-fun bs!1207173 () Bool)

(assert (= bs!1207173 (and b!5181191 d!1674908)))

(assert (=> bs!1207173 (not (= lambda!258967 lambda!258964))))

(declare-fun bs!1207174 () Bool)

(assert (= bs!1207174 (and b!5181191 d!1674590)))

(assert (=> bs!1207174 (not (= lambda!258967 lambda!258938))))

(declare-fun bs!1207175 () Bool)

(assert (= bs!1207175 (and b!5181191 b!5180759)))

(assert (=> bs!1207175 (= lambda!258967 lambda!258936)))

(declare-fun bs!1207176 () Bool)

(assert (= bs!1207176 (and b!5181191 d!1674948)))

(assert (=> bs!1207176 (not (= lambda!258967 lambda!258966))))

(declare-fun bs!1207177 () Bool)

(assert (= bs!1207177 (and b!5181191 d!1674538)))

(assert (=> bs!1207177 (not (= lambda!258967 lambda!258933))))

(declare-fun bs!1207178 () Bool)

(assert (= bs!1207178 (and b!5181191 d!1674848)))

(assert (=> bs!1207178 (not (= lambda!258967 lambda!258963))))

(declare-fun bs!1207179 () Bool)

(assert (= bs!1207179 (and b!5181191 d!1674842)))

(assert (=> bs!1207179 (not (= lambda!258967 lambda!258962))))

(declare-fun bs!1207180 () Bool)

(declare-fun b!5181192 () Bool)

(assert (= bs!1207180 (and b!5181192 d!1674740)))

(declare-fun lambda!258968 () Int)

(assert (=> bs!1207180 (not (= lambda!258968 lambda!258946))))

(declare-fun bs!1207181 () Bool)

(assert (= bs!1207181 (and b!5181192 d!1674160)))

(assert (=> bs!1207181 (not (= lambda!258968 lambda!258876))))

(declare-fun bs!1207182 () Bool)

(assert (= bs!1207182 (and b!5181192 b!5180975)))

(assert (=> bs!1207182 (= lambda!258968 lambda!258948)))

(declare-fun bs!1207183 () Bool)

(assert (= bs!1207183 (and b!5181192 d!1674662)))

(assert (=> bs!1207183 (not (= lambda!258968 lambda!258944))))

(declare-fun bs!1207184 () Bool)

(assert (= bs!1207184 (and b!5181192 d!1674800)))

(assert (=> bs!1207184 (= lambda!258968 lambda!258958)))

(declare-fun bs!1207185 () Bool)

(assert (= bs!1207185 (and b!5181192 b!5180506)))

(assert (=> bs!1207185 (= lambda!258968 lambda!258902)))

(declare-fun bs!1207186 () Bool)

(assert (= bs!1207186 (and b!5181192 d!1674818)))

(assert (=> bs!1207186 (not (= lambda!258968 lambda!258959))))

(declare-fun bs!1207187 () Bool)

(assert (= bs!1207187 (and b!5181192 d!1674556)))

(assert (=> bs!1207187 (not (= lambda!258968 lambda!258934))))

(declare-fun bs!1207188 () Bool)

(assert (= bs!1207188 (and b!5181192 b!5180974)))

(assert (=> bs!1207188 (= lambda!258968 lambda!258947)))

(declare-fun bs!1207189 () Bool)

(assert (= bs!1207189 (and b!5181192 d!1674274)))

(assert (=> bs!1207189 (not (= lambda!258968 lambda!258901))))

(declare-fun bs!1207190 () Bool)

(assert (= bs!1207190 (and b!5181192 d!1674640)))

(assert (=> bs!1207190 (not (= lambda!258968 lambda!258943))))

(declare-fun bs!1207191 () Bool)

(assert (= bs!1207191 (and b!5181192 b!5180507)))

(assert (=> bs!1207191 (= lambda!258968 lambda!258903)))

(declare-fun bs!1207192 () Bool)

(assert (= bs!1207192 (and b!5181192 b!5180758)))

(assert (=> bs!1207192 (= lambda!258968 lambda!258935)))

(declare-fun bs!1207193 () Bool)

(assert (= bs!1207193 (and b!5181192 d!1674908)))

(assert (=> bs!1207193 (not (= lambda!258968 lambda!258964))))

(declare-fun bs!1207194 () Bool)

(assert (= bs!1207194 (and b!5181192 d!1674590)))

(assert (=> bs!1207194 (not (= lambda!258968 lambda!258938))))

(declare-fun bs!1207195 () Bool)

(assert (= bs!1207195 (and b!5181192 b!5181191)))

(assert (=> bs!1207195 (= lambda!258968 lambda!258967)))

(declare-fun bs!1207196 () Bool)

(assert (= bs!1207196 (and b!5181192 b!5180759)))

(assert (=> bs!1207196 (= lambda!258968 lambda!258936)))

(declare-fun bs!1207197 () Bool)

(assert (= bs!1207197 (and b!5181192 d!1674948)))

(assert (=> bs!1207197 (not (= lambda!258968 lambda!258966))))

(declare-fun bs!1207198 () Bool)

(assert (= bs!1207198 (and b!5181192 d!1674538)))

(assert (=> bs!1207198 (not (= lambda!258968 lambda!258933))))

(declare-fun bs!1207199 () Bool)

(assert (= bs!1207199 (and b!5181192 d!1674848)))

(assert (=> bs!1207199 (not (= lambda!258968 lambda!258963))))

(declare-fun bs!1207200 () Bool)

(assert (= bs!1207200 (and b!5181192 d!1674842)))

(assert (=> bs!1207200 (not (= lambda!258968 lambda!258962))))

(declare-fun e!3228152 () Unit!152123)

(declare-fun Unit!152173 () Unit!152123)

(assert (=> b!5181192 (= e!3228152 Unit!152173)))

(declare-fun lt!2135705 () List!60301)

(declare-fun call!364187 () List!60301)

(assert (=> b!5181192 (= lt!2135705 call!364187)))

(declare-fun lt!2135703 () Unit!152123)

(assert (=> b!5181192 (= lt!2135703 (lemmaForallThenNotExists!449 lt!2135705 lambda!258966))))

(declare-fun call!364186 () Bool)

(assert (=> b!5181192 (not call!364186)))

(declare-fun lt!2135710 () Unit!152123)

(assert (=> b!5181192 (= lt!2135710 lt!2135703)))

(declare-fun lt!2135704 () Bool)

(assert (=> d!1674948 (= lt!2135704 (isEmpty!32220 (getLanguageWitness!1023 call!364088)))))

(assert (=> d!1674948 (= lt!2135704 (forall!14173 call!364088 lambda!258966))))

(declare-fun lt!2135707 () Unit!152123)

(assert (=> d!1674948 (= lt!2135707 e!3228152)))

(declare-fun c!892948 () Bool)

(assert (=> d!1674948 (= c!892948 (not (forall!14173 call!364088 lambda!258966)))))

(assert (=> d!1674948 (= (lostCauseZipper!1348 call!364088) lt!2135704)))

(declare-fun bm!364181 () Bool)

(assert (=> bm!364181 (= call!364187 (toList!8462 call!364088))))

(declare-fun bm!364182 () Bool)

(declare-fun lt!2135708 () List!60301)

(assert (=> bm!364182 (= call!364186 (exists!1949 (ite c!892948 lt!2135708 lt!2135705) (ite c!892948 lambda!258967 lambda!258968)))))

(declare-fun Unit!152174 () Unit!152123)

(assert (=> b!5181191 (= e!3228152 Unit!152174)))

(assert (=> b!5181191 (= lt!2135708 call!364187)))

(declare-fun lt!2135706 () Unit!152123)

(assert (=> b!5181191 (= lt!2135706 (lemmaNotForallThenExists!482 lt!2135708 lambda!258966))))

(assert (=> b!5181191 call!364186))

(declare-fun lt!2135709 () Unit!152123)

(assert (=> b!5181191 (= lt!2135709 lt!2135706)))

(assert (= (and d!1674948 c!892948) b!5181191))

(assert (= (and d!1674948 (not c!892948)) b!5181192))

(assert (= (or b!5181191 b!5181192) bm!364181))

(assert (= (or b!5181191 b!5181192) bm!364182))

(declare-fun m!6240672 () Bool)

(assert (=> b!5181192 m!6240672))

(declare-fun m!6240674 () Bool)

(assert (=> b!5181191 m!6240674))

(declare-fun m!6240676 () Bool)

(assert (=> d!1674948 m!6240676))

(assert (=> d!1674948 m!6240676))

(declare-fun m!6240678 () Bool)

(assert (=> d!1674948 m!6240678))

(declare-fun m!6240680 () Bool)

(assert (=> d!1674948 m!6240680))

(assert (=> d!1674948 m!6240680))

(declare-fun m!6240682 () Bool)

(assert (=> bm!364182 m!6240682))

(declare-fun m!6240684 () Bool)

(assert (=> bm!364181 m!6240684))

(assert (=> d!1674412 d!1674948))

(declare-fun d!1674950 () Bool)

(assert (=> d!1674950 (isPrefix!5794 lt!2135219 (++!13177 lt!2135219 call!364089))))

(declare-fun lt!2135711 () Unit!152123)

(assert (=> d!1674950 (= lt!2135711 (choose!38497 lt!2135219 call!364089))))

(assert (=> d!1674950 (= (lemmaConcatTwoListThenFirstIsPrefix!3609 lt!2135219 call!364089) lt!2135711)))

(declare-fun bs!1207201 () Bool)

(assert (= bs!1207201 d!1674950))

(assert (=> bs!1207201 m!6239460))

(assert (=> bs!1207201 m!6239460))

(assert (=> bs!1207201 m!6239462))

(declare-fun m!6240686 () Bool)

(assert (=> bs!1207201 m!6240686))

(assert (=> d!1674412 d!1674950))

(declare-fun b!5181194 () Bool)

(declare-fun e!3228154 () List!60300)

(assert (=> b!5181194 (= e!3228154 (Cons!60176 (h!66624 lt!2135219) (++!13177 (t!373453 lt!2135219) call!364089)))))

(declare-fun b!5181193 () Bool)

(assert (=> b!5181193 (= e!3228154 call!364089)))

(declare-fun b!5181195 () Bool)

(declare-fun res!2201205 () Bool)

(declare-fun e!3228153 () Bool)

(assert (=> b!5181195 (=> (not res!2201205) (not e!3228153))))

(declare-fun lt!2135712 () List!60300)

(assert (=> b!5181195 (= res!2201205 (= (size!39697 lt!2135712) (+ (size!39697 lt!2135219) (size!39697 call!364089))))))

(declare-fun b!5181196 () Bool)

(assert (=> b!5181196 (= e!3228153 (or (not (= call!364089 Nil!60176)) (= lt!2135712 lt!2135219)))))

(declare-fun d!1674952 () Bool)

(assert (=> d!1674952 e!3228153))

(declare-fun res!2201206 () Bool)

(assert (=> d!1674952 (=> (not res!2201206) (not e!3228153))))

(assert (=> d!1674952 (= res!2201206 (= (content!10669 lt!2135712) ((_ map or) (content!10669 lt!2135219) (content!10669 call!364089))))))

(assert (=> d!1674952 (= lt!2135712 e!3228154)))

(declare-fun c!892949 () Bool)

(assert (=> d!1674952 (= c!892949 ((_ is Nil!60176) lt!2135219))))

(assert (=> d!1674952 (= (++!13177 lt!2135219 call!364089) lt!2135712)))

(assert (= (and d!1674952 c!892949) b!5181193))

(assert (= (and d!1674952 (not c!892949)) b!5181194))

(assert (= (and d!1674952 res!2201206) b!5181195))

(assert (= (and b!5181195 res!2201205) b!5181196))

(declare-fun m!6240688 () Bool)

(assert (=> b!5181194 m!6240688))

(declare-fun m!6240690 () Bool)

(assert (=> b!5181195 m!6240690))

(assert (=> b!5181195 m!6239482))

(declare-fun m!6240692 () Bool)

(assert (=> b!5181195 m!6240692))

(declare-fun m!6240694 () Bool)

(assert (=> d!1674952 m!6240694))

(assert (=> d!1674952 m!6240278))

(declare-fun m!6240696 () Bool)

(assert (=> d!1674952 m!6240696))

(assert (=> d!1674412 d!1674952))

(declare-fun b!5181198 () Bool)

(declare-fun e!3228156 () List!60300)

(assert (=> b!5181198 (= e!3228156 (Cons!60176 (h!66624 (_1!35239 lt!2135405)) (++!13177 (t!373453 (_1!35239 lt!2135405)) (_2!35239 lt!2135405))))))

(declare-fun b!5181197 () Bool)

(assert (=> b!5181197 (= e!3228156 (_2!35239 lt!2135405))))

(declare-fun b!5181199 () Bool)

(declare-fun res!2201207 () Bool)

(declare-fun e!3228155 () Bool)

(assert (=> b!5181199 (=> (not res!2201207) (not e!3228155))))

(declare-fun lt!2135713 () List!60300)

(assert (=> b!5181199 (= res!2201207 (= (size!39697 lt!2135713) (+ (size!39697 (_1!35239 lt!2135405)) (size!39697 (_2!35239 lt!2135405)))))))

(declare-fun b!5181200 () Bool)

(assert (=> b!5181200 (= e!3228155 (or (not (= (_2!35239 lt!2135405) Nil!60176)) (= lt!2135713 (_1!35239 lt!2135405))))))

(declare-fun d!1674954 () Bool)

(assert (=> d!1674954 e!3228155))

(declare-fun res!2201208 () Bool)

(assert (=> d!1674954 (=> (not res!2201208) (not e!3228155))))

(assert (=> d!1674954 (= res!2201208 (= (content!10669 lt!2135713) ((_ map or) (content!10669 (_1!35239 lt!2135405)) (content!10669 (_2!35239 lt!2135405)))))))

(assert (=> d!1674954 (= lt!2135713 e!3228156)))

(declare-fun c!892950 () Bool)

(assert (=> d!1674954 (= c!892950 ((_ is Nil!60176) (_1!35239 lt!2135405)))))

(assert (=> d!1674954 (= (++!13177 (_1!35239 lt!2135405) (_2!35239 lt!2135405)) lt!2135713)))

(assert (= (and d!1674954 c!892950) b!5181197))

(assert (= (and d!1674954 (not c!892950)) b!5181198))

(assert (= (and d!1674954 res!2201208) b!5181199))

(assert (= (and b!5181199 res!2201207) b!5181200))

(declare-fun m!6240698 () Bool)

(assert (=> b!5181198 m!6240698))

(declare-fun m!6240700 () Bool)

(assert (=> b!5181199 m!6240700))

(assert (=> b!5181199 m!6239502))

(declare-fun m!6240702 () Bool)

(assert (=> b!5181199 m!6240702))

(declare-fun m!6240704 () Bool)

(assert (=> d!1674954 m!6240704))

(declare-fun m!6240706 () Bool)

(assert (=> d!1674954 m!6240706))

(declare-fun m!6240708 () Bool)

(assert (=> d!1674954 m!6240708))

(assert (=> d!1674412 d!1674954))

(declare-fun b!5181202 () Bool)

(declare-fun res!2201211 () Bool)

(declare-fun e!3228157 () Bool)

(assert (=> b!5181202 (=> (not res!2201211) (not e!3228157))))

(assert (=> b!5181202 (= res!2201211 (= (head!11079 lt!2135219) (head!11079 (++!13177 lt!2135219 call!364089))))))

(declare-fun b!5181204 () Bool)

(declare-fun e!3228159 () Bool)

(assert (=> b!5181204 (= e!3228159 (>= (size!39697 (++!13177 lt!2135219 call!364089)) (size!39697 lt!2135219)))))

(declare-fun b!5181201 () Bool)

(declare-fun e!3228158 () Bool)

(assert (=> b!5181201 (= e!3228158 e!3228157)))

(declare-fun res!2201210 () Bool)

(assert (=> b!5181201 (=> (not res!2201210) (not e!3228157))))

(assert (=> b!5181201 (= res!2201210 (not ((_ is Nil!60176) (++!13177 lt!2135219 call!364089))))))

(declare-fun b!5181203 () Bool)

(assert (=> b!5181203 (= e!3228157 (isPrefix!5794 (tail!10178 lt!2135219) (tail!10178 (++!13177 lt!2135219 call!364089))))))

(declare-fun d!1674956 () Bool)

(assert (=> d!1674956 e!3228159))

(declare-fun res!2201212 () Bool)

(assert (=> d!1674956 (=> res!2201212 e!3228159)))

(declare-fun lt!2135714 () Bool)

(assert (=> d!1674956 (= res!2201212 (not lt!2135714))))

(assert (=> d!1674956 (= lt!2135714 e!3228158)))

(declare-fun res!2201209 () Bool)

(assert (=> d!1674956 (=> res!2201209 e!3228158)))

(assert (=> d!1674956 (= res!2201209 ((_ is Nil!60176) lt!2135219))))

(assert (=> d!1674956 (= (isPrefix!5794 lt!2135219 (++!13177 lt!2135219 call!364089)) lt!2135714)))

(assert (= (and d!1674956 (not res!2201209)) b!5181201))

(assert (= (and b!5181201 res!2201210) b!5181202))

(assert (= (and b!5181202 res!2201211) b!5181203))

(assert (= (and d!1674956 (not res!2201212)) b!5181204))

(declare-fun m!6240710 () Bool)

(assert (=> b!5181202 m!6240710))

(assert (=> b!5181202 m!6239460))

(declare-fun m!6240712 () Bool)

(assert (=> b!5181202 m!6240712))

(assert (=> b!5181204 m!6239460))

(declare-fun m!6240714 () Bool)

(assert (=> b!5181204 m!6240714))

(assert (=> b!5181204 m!6239482))

(declare-fun m!6240716 () Bool)

(assert (=> b!5181203 m!6240716))

(assert (=> b!5181203 m!6239460))

(declare-fun m!6240718 () Bool)

(assert (=> b!5181203 m!6240718))

(assert (=> b!5181203 m!6240716))

(assert (=> b!5181203 m!6240718))

(declare-fun m!6240720 () Bool)

(assert (=> b!5181203 m!6240720))

(assert (=> d!1674412 d!1674956))

(declare-fun d!1674958 () Bool)

(assert (=> d!1674958 (= call!364089 lt!2135403)))

(declare-fun lt!2135715 () Unit!152123)

(assert (=> d!1674958 (= lt!2135715 (choose!38498 lt!2135219 call!364089 lt!2135219 lt!2135403 input!5817))))

(assert (=> d!1674958 (isPrefix!5794 lt!2135219 input!5817)))

(assert (=> d!1674958 (= (lemmaSamePrefixThenSameSuffix!2715 lt!2135219 call!364089 lt!2135219 lt!2135403 input!5817) lt!2135715)))

(declare-fun bs!1207202 () Bool)

(assert (= bs!1207202 d!1674958))

(declare-fun m!6240722 () Bool)

(assert (=> bs!1207202 m!6240722))

(assert (=> bs!1207202 m!6240260))

(assert (=> d!1674412 d!1674958))

(declare-fun bs!1207203 () Bool)

(declare-fun d!1674960 () Bool)

(assert (= bs!1207203 (and d!1674960 d!1674740)))

(declare-fun lambda!258971 () Int)

(assert (=> bs!1207203 (not (= lambda!258971 lambda!258946))))

(declare-fun bs!1207204 () Bool)

(assert (= bs!1207204 (and d!1674960 d!1674160)))

(assert (=> bs!1207204 (not (= lambda!258971 lambda!258876))))

(declare-fun bs!1207205 () Bool)

(assert (= bs!1207205 (and d!1674960 b!5180975)))

(assert (=> bs!1207205 (not (= lambda!258971 lambda!258948))))

(declare-fun bs!1207206 () Bool)

(assert (= bs!1207206 (and d!1674960 d!1674662)))

(assert (=> bs!1207206 (not (= lambda!258971 lambda!258944))))

(declare-fun bs!1207207 () Bool)

(assert (= bs!1207207 (and d!1674960 d!1674800)))

(assert (=> bs!1207207 (not (= lambda!258971 lambda!258958))))

(declare-fun bs!1207208 () Bool)

(assert (= bs!1207208 (and d!1674960 b!5180506)))

(assert (=> bs!1207208 (not (= lambda!258971 lambda!258902))))

(declare-fun bs!1207209 () Bool)

(assert (= bs!1207209 (and d!1674960 d!1674818)))

(assert (=> bs!1207209 (= (= lambda!258934 lambda!258876) (= lambda!258971 lambda!258959))))

(declare-fun bs!1207210 () Bool)

(assert (= bs!1207210 (and d!1674960 b!5180974)))

(assert (=> bs!1207210 (not (= lambda!258971 lambda!258947))))

(declare-fun bs!1207211 () Bool)

(assert (= bs!1207211 (and d!1674960 d!1674274)))

(assert (=> bs!1207211 (not (= lambda!258971 lambda!258901))))

(declare-fun bs!1207212 () Bool)

(assert (= bs!1207212 (and d!1674960 d!1674640)))

(assert (=> bs!1207212 (= (= lambda!258934 (ite c!892814 lambda!258935 lambda!258936)) (= lambda!258971 lambda!258943))))

(declare-fun bs!1207213 () Bool)

(assert (= bs!1207213 (and d!1674960 b!5180507)))

(assert (=> bs!1207213 (not (= lambda!258971 lambda!258903))))

(declare-fun bs!1207214 () Bool)

(assert (= bs!1207214 (and d!1674960 b!5180758)))

(assert (=> bs!1207214 (not (= lambda!258971 lambda!258935))))

(declare-fun bs!1207215 () Bool)

(assert (= bs!1207215 (and d!1674960 d!1674908)))

(assert (=> bs!1207215 (not (= lambda!258971 lambda!258964))))

(declare-fun bs!1207216 () Bool)

(assert (= bs!1207216 (and d!1674960 b!5181192)))

(assert (=> bs!1207216 (not (= lambda!258971 lambda!258968))))

(declare-fun bs!1207217 () Bool)

(assert (= bs!1207217 (and d!1674960 d!1674556)))

(assert (=> bs!1207217 (not (= lambda!258971 lambda!258934))))

(declare-fun bs!1207218 () Bool)

(assert (= bs!1207218 (and d!1674960 d!1674590)))

(assert (=> bs!1207218 (not (= lambda!258971 lambda!258938))))

(declare-fun bs!1207219 () Bool)

(assert (= bs!1207219 (and d!1674960 b!5181191)))

(assert (=> bs!1207219 (not (= lambda!258971 lambda!258967))))

(declare-fun bs!1207220 () Bool)

(assert (= bs!1207220 (and d!1674960 b!5180759)))

(assert (=> bs!1207220 (not (= lambda!258971 lambda!258936))))

(declare-fun bs!1207221 () Bool)

(assert (= bs!1207221 (and d!1674960 d!1674948)))

(assert (=> bs!1207221 (not (= lambda!258971 lambda!258966))))

(declare-fun bs!1207222 () Bool)

(assert (= bs!1207222 (and d!1674960 d!1674538)))

(assert (=> bs!1207222 (not (= lambda!258971 lambda!258933))))

(declare-fun bs!1207223 () Bool)

(assert (= bs!1207223 (and d!1674960 d!1674848)))

(assert (=> bs!1207223 (= (= lambda!258934 (ite c!892731 lambda!258902 lambda!258903)) (= lambda!258971 lambda!258963))))

(declare-fun bs!1207224 () Bool)

(assert (= bs!1207224 (and d!1674960 d!1674842)))

(assert (=> bs!1207224 (= lambda!258971 lambda!258962)))

(assert (=> d!1674960 true))

(assert (=> d!1674960 (< (dynLambda!23890 order!27047 lambda!258934) (dynLambda!23890 order!27047 lambda!258971))))

(assert (=> d!1674960 (not (exists!1949 lt!2135531 lambda!258971))))

(declare-fun lt!2135718 () Unit!152123)

(declare-fun choose!38510 (List!60301 Int) Unit!152123)

(assert (=> d!1674960 (= lt!2135718 (choose!38510 lt!2135531 lambda!258934))))

(assert (=> d!1674960 (forall!14175 lt!2135531 lambda!258934)))

(assert (=> d!1674960 (= (lemmaForallThenNotExists!449 lt!2135531 lambda!258934) lt!2135718)))

(declare-fun bs!1207225 () Bool)

(assert (= bs!1207225 d!1674960))

(declare-fun m!6240724 () Bool)

(assert (=> bs!1207225 m!6240724))

(declare-fun m!6240726 () Bool)

(assert (=> bs!1207225 m!6240726))

(declare-fun m!6240728 () Bool)

(assert (=> bs!1207225 m!6240728))

(assert (=> b!5180759 d!1674960))

(assert (=> d!1674350 d!1674348))

(assert (=> d!1674350 d!1674356))

(assert (=> d!1674350 d!1674346))

(assert (=> d!1674350 d!1674148))

(declare-fun bs!1207226 () Bool)

(declare-fun d!1674962 () Bool)

(assert (= bs!1207226 (and d!1674962 d!1674740)))

(declare-fun lambda!258972 () Int)

(assert (=> bs!1207226 (not (= lambda!258972 lambda!258946))))

(declare-fun bs!1207227 () Bool)

(assert (= bs!1207227 (and d!1674962 d!1674160)))

(assert (=> bs!1207227 (= lambda!258972 lambda!258876)))

(declare-fun bs!1207228 () Bool)

(assert (= bs!1207228 (and d!1674962 b!5180975)))

(assert (=> bs!1207228 (not (= lambda!258972 lambda!258948))))

(declare-fun bs!1207229 () Bool)

(assert (= bs!1207229 (and d!1674962 d!1674662)))

(assert (=> bs!1207229 (= lambda!258972 lambda!258944)))

(declare-fun bs!1207230 () Bool)

(assert (= bs!1207230 (and d!1674962 d!1674800)))

(assert (=> bs!1207230 (not (= lambda!258972 lambda!258958))))

(declare-fun bs!1207231 () Bool)

(assert (= bs!1207231 (and d!1674962 b!5180506)))

(assert (=> bs!1207231 (not (= lambda!258972 lambda!258902))))

(declare-fun bs!1207232 () Bool)

(assert (= bs!1207232 (and d!1674962 d!1674818)))

(assert (=> bs!1207232 (not (= lambda!258972 lambda!258959))))

(declare-fun bs!1207233 () Bool)

(assert (= bs!1207233 (and d!1674962 b!5180974)))

(assert (=> bs!1207233 (not (= lambda!258972 lambda!258947))))

(declare-fun bs!1207234 () Bool)

(assert (= bs!1207234 (and d!1674962 d!1674274)))

(assert (=> bs!1207234 (not (= lambda!258972 lambda!258901))))

(declare-fun bs!1207235 () Bool)

(assert (= bs!1207235 (and d!1674962 d!1674960)))

(assert (=> bs!1207235 (not (= lambda!258972 lambda!258971))))

(declare-fun bs!1207236 () Bool)

(assert (= bs!1207236 (and d!1674962 d!1674640)))

(assert (=> bs!1207236 (not (= lambda!258972 lambda!258943))))

(declare-fun bs!1207237 () Bool)

(assert (= bs!1207237 (and d!1674962 b!5180507)))

(assert (=> bs!1207237 (not (= lambda!258972 lambda!258903))))

(declare-fun bs!1207238 () Bool)

(assert (= bs!1207238 (and d!1674962 b!5180758)))

(assert (=> bs!1207238 (not (= lambda!258972 lambda!258935))))

(declare-fun bs!1207239 () Bool)

(assert (= bs!1207239 (and d!1674962 d!1674908)))

(assert (=> bs!1207239 (= lambda!258972 lambda!258964)))

(declare-fun bs!1207240 () Bool)

(assert (= bs!1207240 (and d!1674962 b!5181192)))

(assert (=> bs!1207240 (not (= lambda!258972 lambda!258968))))

(declare-fun bs!1207241 () Bool)

(assert (= bs!1207241 (and d!1674962 d!1674556)))

(assert (=> bs!1207241 (not (= lambda!258972 lambda!258934))))

(declare-fun bs!1207242 () Bool)

(assert (= bs!1207242 (and d!1674962 d!1674590)))

(assert (=> bs!1207242 (= lambda!258972 lambda!258938)))

(declare-fun bs!1207243 () Bool)

(assert (= bs!1207243 (and d!1674962 b!5181191)))

(assert (=> bs!1207243 (not (= lambda!258972 lambda!258967))))

(declare-fun bs!1207244 () Bool)

(assert (= bs!1207244 (and d!1674962 b!5180759)))

(assert (=> bs!1207244 (not (= lambda!258972 lambda!258936))))

(declare-fun bs!1207245 () Bool)

(assert (= bs!1207245 (and d!1674962 d!1674948)))

(assert (=> bs!1207245 (not (= lambda!258972 lambda!258966))))

(declare-fun bs!1207246 () Bool)

(assert (= bs!1207246 (and d!1674962 d!1674538)))

(assert (=> bs!1207246 (= lambda!258972 lambda!258933)))

(declare-fun bs!1207247 () Bool)

(assert (= bs!1207247 (and d!1674962 d!1674848)))

(assert (=> bs!1207247 (not (= lambda!258972 lambda!258963))))

(declare-fun bs!1207248 () Bool)

(assert (= bs!1207248 (and d!1674962 d!1674842)))

(assert (=> bs!1207248 (not (= lambda!258972 lambda!258962))))

(assert (=> d!1674962 (= (nullableZipper!1199 call!364048) (exists!1947 call!364048 lambda!258972))))

(declare-fun bs!1207249 () Bool)

(assert (= bs!1207249 d!1674962))

(declare-fun m!6240730 () Bool)

(assert (=> bs!1207249 m!6240730))

(assert (=> bm!364119 d!1674962))

(declare-fun bs!1207250 () Bool)

(declare-fun d!1674964 () Bool)

(assert (= bs!1207250 (and d!1674964 d!1674744)))

(declare-fun lambda!258973 () Int)

(assert (=> bs!1207250 (= (= call!364136 call!364128) (= lambda!258973 lambda!258949))))

(declare-fun bs!1207251 () Bool)

(assert (= bs!1207251 (and d!1674964 d!1674376)))

(assert (=> bs!1207251 (= (= call!364136 (head!11079 (_1!35239 lt!2134953))) (= lambda!258973 lambda!258908))))

(declare-fun bs!1207252 () Bool)

(assert (= bs!1207252 (and d!1674964 d!1674690)))

(assert (=> bs!1207252 (= (= call!364136 (h!66624 (t!373453 testedP!294))) (= lambda!258973 lambda!258945))))

(declare-fun bs!1207253 () Bool)

(assert (= bs!1207253 (and d!1674964 d!1674430)))

(assert (=> bs!1207253 (= (= call!364136 (head!11079 (_1!35239 lt!2134956))) (= lambda!258973 lambda!258912))))

(declare-fun bs!1207254 () Bool)

(assert (= bs!1207254 (and d!1674964 d!1674792)))

(assert (=> bs!1207254 (= (= call!364136 (head!11079 (tail!10178 (_1!35239 lt!2134953)))) (= lambda!258973 lambda!258951))))

(declare-fun bs!1207255 () Bool)

(assert (= bs!1207255 (and d!1674964 d!1674436)))

(assert (=> bs!1207255 (= (= call!364136 call!364050) (= lambda!258973 lambda!258913))))

(declare-fun bs!1207256 () Bool)

(assert (= bs!1207256 (and d!1674964 d!1674362)))

(assert (=> bs!1207256 (= (= call!364136 call!364090) (= lambda!258973 lambda!258907))))

(declare-fun bs!1207257 () Bool)

(assert (= bs!1207257 (and d!1674964 d!1674228)))

(assert (=> bs!1207257 (= (= call!364136 lt!2134944) (= lambda!258973 lambda!258882))))

(declare-fun bs!1207258 () Bool)

(assert (= bs!1207258 (and d!1674964 d!1674604)))

(assert (=> bs!1207258 (= (= call!364136 (h!66624 lt!2134949)) (= lambda!258973 lambda!258939))))

(declare-fun bs!1207259 () Bool)

(assert (= bs!1207259 (and d!1674964 d!1674572)))

(assert (=> bs!1207259 (= (= call!364136 (h!66624 testedP!294)) (= lambda!258973 lambda!258937))))

(declare-fun bs!1207260 () Bool)

(assert (= bs!1207260 (and d!1674964 d!1674784)))

(assert (=> bs!1207260 (= (= call!364136 (h!66624 (t!373453 lt!2134949))) (= lambda!258973 lambda!258950))))

(declare-fun bs!1207261 () Bool)

(assert (= bs!1207261 (and d!1674964 d!1674942)))

(assert (=> bs!1207261 (= (= call!364136 (head!11079 (_1!35239 (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 (size!39697 input!5817))))) (= lambda!258973 lambda!258965))))

(assert (=> d!1674964 true))

(assert (=> d!1674964 (= (derivationStepZipper!1007 call!364088 call!364136) (flatMap!464 call!364088 lambda!258973))))

(declare-fun bs!1207262 () Bool)

(assert (= bs!1207262 d!1674964))

(declare-fun m!6240732 () Bool)

(assert (=> bs!1207262 m!6240732))

(assert (=> bm!364129 d!1674964))

(assert (=> bm!364136 d!1674454))

(declare-fun d!1674966 () Bool)

(declare-fun c!892951 () Bool)

(assert (=> d!1674966 (= c!892951 ((_ is Nil!60176) lt!2135523))))

(declare-fun e!3228162 () (InoxSet C!29592))

(assert (=> d!1674966 (= (content!10669 lt!2135523) e!3228162)))

(declare-fun b!5181205 () Bool)

(assert (=> b!5181205 (= e!3228162 ((as const (Array C!29592 Bool)) false))))

(declare-fun b!5181206 () Bool)

(assert (=> b!5181206 (= e!3228162 ((_ map or) (store ((as const (Array C!29592 Bool)) false) (h!66624 lt!2135523) true) (content!10669 (t!373453 lt!2135523))))))

(assert (= (and d!1674966 c!892951) b!5181205))

(assert (= (and d!1674966 (not c!892951)) b!5181206))

(declare-fun m!6240734 () Bool)

(assert (=> b!5181206 m!6240734))

(declare-fun m!6240736 () Bool)

(assert (=> b!5181206 m!6240736))

(assert (=> d!1674530 d!1674966))

(assert (=> d!1674530 d!1674422))

(declare-fun d!1674968 () Bool)

(declare-fun c!892952 () Bool)

(assert (=> d!1674968 (= c!892952 ((_ is Nil!60176) (Cons!60176 lt!2135040 Nil!60176)))))

(declare-fun e!3228163 () (InoxSet C!29592))

(assert (=> d!1674968 (= (content!10669 (Cons!60176 lt!2135040 Nil!60176)) e!3228163)))

(declare-fun b!5181207 () Bool)

(assert (=> b!5181207 (= e!3228163 ((as const (Array C!29592 Bool)) false))))

(declare-fun b!5181208 () Bool)

(assert (=> b!5181208 (= e!3228163 ((_ map or) (store ((as const (Array C!29592 Bool)) false) (h!66624 (Cons!60176 lt!2135040 Nil!60176)) true) (content!10669 (t!373453 (Cons!60176 lt!2135040 Nil!60176)))))))

(assert (= (and d!1674968 c!892952) b!5181207))

(assert (= (and d!1674968 (not c!892952)) b!5181208))

(declare-fun m!6240738 () Bool)

(assert (=> b!5181208 m!6240738))

(declare-fun m!6240740 () Bool)

(assert (=> b!5181208 m!6240740))

(assert (=> d!1674530 d!1674968))

(declare-fun d!1674970 () Bool)

(assert (=> d!1674970 (= (getSuffix!3442 input!5817 lt!2134949) lt!2135204)))

(assert (=> d!1674970 true))

(declare-fun _$63!1314 () Unit!152123)

(assert (=> d!1674970 (= (choose!38498 lt!2134949 (getSuffix!3442 input!5817 lt!2134949) lt!2134949 lt!2135204 input!5817) _$63!1314)))

(assert (=> d!1674334 d!1674970))

(assert (=> d!1674334 d!1674208))

(declare-fun bs!1207263 () Bool)

(declare-fun d!1674972 () Bool)

(assert (= bs!1207263 (and d!1674972 d!1674740)))

(declare-fun lambda!258974 () Int)

(assert (=> bs!1207263 (not (= lambda!258974 lambda!258946))))

(declare-fun bs!1207264 () Bool)

(assert (= bs!1207264 (and d!1674972 d!1674160)))

(assert (=> bs!1207264 (not (= lambda!258974 lambda!258876))))

(declare-fun bs!1207265 () Bool)

(assert (= bs!1207265 (and d!1674972 b!5180975)))

(assert (=> bs!1207265 (not (= lambda!258974 lambda!258948))))

(declare-fun bs!1207266 () Bool)

(assert (= bs!1207266 (and d!1674972 d!1674662)))

(assert (=> bs!1207266 (not (= lambda!258974 lambda!258944))))

(declare-fun bs!1207267 () Bool)

(assert (= bs!1207267 (and d!1674972 d!1674800)))

(assert (=> bs!1207267 (not (= lambda!258974 lambda!258958))))

(declare-fun bs!1207268 () Bool)

(assert (= bs!1207268 (and d!1674972 b!5180506)))

(assert (=> bs!1207268 (not (= lambda!258974 lambda!258902))))

(declare-fun bs!1207269 () Bool)

(assert (= bs!1207269 (and d!1674972 d!1674962)))

(assert (=> bs!1207269 (not (= lambda!258974 lambda!258972))))

(declare-fun bs!1207270 () Bool)

(assert (= bs!1207270 (and d!1674972 d!1674818)))

(assert (=> bs!1207270 (= (= lambda!258901 lambda!258876) (= lambda!258974 lambda!258959))))

(declare-fun bs!1207271 () Bool)

(assert (= bs!1207271 (and d!1674972 b!5180974)))

(assert (=> bs!1207271 (not (= lambda!258974 lambda!258947))))

(declare-fun bs!1207272 () Bool)

(assert (= bs!1207272 (and d!1674972 d!1674274)))

(assert (=> bs!1207272 (not (= lambda!258974 lambda!258901))))

(declare-fun bs!1207273 () Bool)

(assert (= bs!1207273 (and d!1674972 d!1674960)))

(assert (=> bs!1207273 (= (= lambda!258901 lambda!258934) (= lambda!258974 lambda!258971))))

(declare-fun bs!1207274 () Bool)

(assert (= bs!1207274 (and d!1674972 d!1674640)))

(assert (=> bs!1207274 (= (= lambda!258901 (ite c!892814 lambda!258935 lambda!258936)) (= lambda!258974 lambda!258943))))

(declare-fun bs!1207275 () Bool)

(assert (= bs!1207275 (and d!1674972 b!5180507)))

(assert (=> bs!1207275 (not (= lambda!258974 lambda!258903))))

(declare-fun bs!1207276 () Bool)

(assert (= bs!1207276 (and d!1674972 b!5180758)))

(assert (=> bs!1207276 (not (= lambda!258974 lambda!258935))))

(declare-fun bs!1207277 () Bool)

(assert (= bs!1207277 (and d!1674972 d!1674908)))

(assert (=> bs!1207277 (not (= lambda!258974 lambda!258964))))

(declare-fun bs!1207278 () Bool)

(assert (= bs!1207278 (and d!1674972 b!5181192)))

(assert (=> bs!1207278 (not (= lambda!258974 lambda!258968))))

(declare-fun bs!1207279 () Bool)

(assert (= bs!1207279 (and d!1674972 d!1674556)))

(assert (=> bs!1207279 (not (= lambda!258974 lambda!258934))))

(declare-fun bs!1207280 () Bool)

(assert (= bs!1207280 (and d!1674972 d!1674590)))

(assert (=> bs!1207280 (not (= lambda!258974 lambda!258938))))

(declare-fun bs!1207281 () Bool)

(assert (= bs!1207281 (and d!1674972 b!5181191)))

(assert (=> bs!1207281 (not (= lambda!258974 lambda!258967))))

(declare-fun bs!1207282 () Bool)

(assert (= bs!1207282 (and d!1674972 b!5180759)))

(assert (=> bs!1207282 (not (= lambda!258974 lambda!258936))))

(declare-fun bs!1207283 () Bool)

(assert (= bs!1207283 (and d!1674972 d!1674948)))

(assert (=> bs!1207283 (not (= lambda!258974 lambda!258966))))

(declare-fun bs!1207284 () Bool)

(assert (= bs!1207284 (and d!1674972 d!1674538)))

(assert (=> bs!1207284 (not (= lambda!258974 lambda!258933))))

(declare-fun bs!1207285 () Bool)

(assert (= bs!1207285 (and d!1674972 d!1674848)))

(assert (=> bs!1207285 (= (= lambda!258901 (ite c!892731 lambda!258902 lambda!258903)) (= lambda!258974 lambda!258963))))

(declare-fun bs!1207286 () Bool)

(assert (= bs!1207286 (and d!1674972 d!1674842)))

(assert (=> bs!1207286 (= (= lambda!258901 lambda!258934) (= lambda!258974 lambda!258962))))

(assert (=> d!1674972 true))

(assert (=> d!1674972 (< (dynLambda!23890 order!27047 lambda!258901) (dynLambda!23890 order!27047 lambda!258974))))

(assert (=> d!1674972 (exists!1949 lt!2135326 lambda!258974)))

(declare-fun lt!2135719 () Unit!152123)

(assert (=> d!1674972 (= lt!2135719 (choose!38509 lt!2135326 lambda!258901))))

(assert (=> d!1674972 (not (forall!14175 lt!2135326 lambda!258901))))

(assert (=> d!1674972 (= (lemmaNotForallThenExists!482 lt!2135326 lambda!258901) lt!2135719)))

(declare-fun bs!1207287 () Bool)

(assert (= bs!1207287 d!1674972))

(declare-fun m!6240742 () Bool)

(assert (=> bs!1207287 m!6240742))

(declare-fun m!6240744 () Bool)

(assert (=> bs!1207287 m!6240744))

(declare-fun m!6240746 () Bool)

(assert (=> bs!1207287 m!6240746))

(assert (=> b!5180506 d!1674972))

(assert (=> d!1674462 d!1674456))

(assert (=> d!1674462 d!1674452))

(declare-fun d!1674974 () Bool)

(assert (=> d!1674974 (= (++!13177 (++!13177 lt!2134949 (Cons!60176 lt!2135212 Nil!60176)) lt!2135215) input!5817)))

(assert (=> d!1674974 true))

(declare-fun _$68!889 () Unit!152123)

(assert (=> d!1674974 (= (choose!38500 lt!2134949 lt!2135212 lt!2135215 input!5817) _$68!889)))

(declare-fun bs!1207288 () Bool)

(assert (= bs!1207288 d!1674974))

(assert (=> bs!1207288 m!6238892))

(assert (=> bs!1207288 m!6238892))

(assert (=> bs!1207288 m!6238904))

(assert (=> d!1674462 d!1674974))

(declare-fun b!5181210 () Bool)

(declare-fun e!3228165 () List!60300)

(assert (=> b!5181210 (= e!3228165 (Cons!60176 (h!66624 lt!2134949) (++!13177 (t!373453 lt!2134949) (Cons!60176 lt!2135212 lt!2135215))))))

(declare-fun b!5181209 () Bool)

(assert (=> b!5181209 (= e!3228165 (Cons!60176 lt!2135212 lt!2135215))))

(declare-fun b!5181211 () Bool)

(declare-fun res!2201213 () Bool)

(declare-fun e!3228164 () Bool)

(assert (=> b!5181211 (=> (not res!2201213) (not e!3228164))))

(declare-fun lt!2135720 () List!60300)

(assert (=> b!5181211 (= res!2201213 (= (size!39697 lt!2135720) (+ (size!39697 lt!2134949) (size!39697 (Cons!60176 lt!2135212 lt!2135215)))))))

(declare-fun b!5181212 () Bool)

(assert (=> b!5181212 (= e!3228164 (or (not (= (Cons!60176 lt!2135212 lt!2135215) Nil!60176)) (= lt!2135720 lt!2134949)))))

(declare-fun d!1674976 () Bool)

(assert (=> d!1674976 e!3228164))

(declare-fun res!2201214 () Bool)

(assert (=> d!1674976 (=> (not res!2201214) (not e!3228164))))

(assert (=> d!1674976 (= res!2201214 (= (content!10669 lt!2135720) ((_ map or) (content!10669 lt!2134949) (content!10669 (Cons!60176 lt!2135212 lt!2135215)))))))

(assert (=> d!1674976 (= lt!2135720 e!3228165)))

(declare-fun c!892953 () Bool)

(assert (=> d!1674976 (= c!892953 ((_ is Nil!60176) lt!2134949))))

(assert (=> d!1674976 (= (++!13177 lt!2134949 (Cons!60176 lt!2135212 lt!2135215)) lt!2135720)))

(assert (= (and d!1674976 c!892953) b!5181209))

(assert (= (and d!1674976 (not c!892953)) b!5181210))

(assert (= (and d!1674976 res!2201214) b!5181211))

(assert (= (and b!5181211 res!2201213) b!5181212))

(declare-fun m!6240748 () Bool)

(assert (=> b!5181210 m!6240748))

(declare-fun m!6240750 () Bool)

(assert (=> b!5181211 m!6240750))

(assert (=> b!5181211 m!6238560))

(declare-fun m!6240752 () Bool)

(assert (=> b!5181211 m!6240752))

(declare-fun m!6240754 () Bool)

(assert (=> d!1674976 m!6240754))

(assert (=> d!1674976 m!6239092))

(declare-fun m!6240756 () Bool)

(assert (=> d!1674976 m!6240756))

(assert (=> d!1674462 d!1674976))

(assert (=> b!5180807 d!1674642))

(declare-fun d!1674978 () Bool)

(declare-fun lt!2135721 () Int)

(assert (=> d!1674978 (>= lt!2135721 0)))

(declare-fun e!3228166 () Int)

(assert (=> d!1674978 (= lt!2135721 e!3228166)))

(declare-fun c!892954 () Bool)

(assert (=> d!1674978 (= c!892954 ((_ is Nil!60176) (tail!10178 lt!2134949)))))

(assert (=> d!1674978 (= (size!39697 (tail!10178 lt!2134949)) lt!2135721)))

(declare-fun b!5181213 () Bool)

(assert (=> b!5181213 (= e!3228166 0)))

(declare-fun b!5181214 () Bool)

(assert (=> b!5181214 (= e!3228166 (+ 1 (size!39697 (t!373453 (tail!10178 lt!2134949)))))))

(assert (= (and d!1674978 c!892954) b!5181213))

(assert (= (and d!1674978 (not c!892954)) b!5181214))

(declare-fun m!6240758 () Bool)

(assert (=> b!5181214 m!6240758))

(assert (=> b!5180807 d!1674978))

(assert (=> d!1674468 d!1674472))

(declare-fun d!1674980 () Bool)

(assert (=> d!1674980 (= (isEmpty!32219 (tail!10178 (_1!35239 lt!2134956))) ((_ is Nil!60176) (tail!10178 (_1!35239 lt!2134956))))))

(assert (=> d!1674428 d!1674980))

(assert (=> bm!364131 d!1674126))

(assert (=> bm!364138 d!1674438))

(declare-fun b!5181216 () Bool)

(declare-fun res!2201217 () Bool)

(declare-fun e!3228167 () Bool)

(assert (=> b!5181216 (=> (not res!2201217) (not e!3228167))))

(assert (=> b!5181216 (= res!2201217 (= (head!11079 (tail!10178 testedP!294)) (head!11079 (tail!10178 (++!13177 testedP!294 lt!2134946)))))))

(declare-fun b!5181218 () Bool)

(declare-fun e!3228169 () Bool)

(assert (=> b!5181218 (= e!3228169 (>= (size!39697 (tail!10178 (++!13177 testedP!294 lt!2134946))) (size!39697 (tail!10178 testedP!294))))))

(declare-fun b!5181215 () Bool)

(declare-fun e!3228168 () Bool)

(assert (=> b!5181215 (= e!3228168 e!3228167)))

(declare-fun res!2201216 () Bool)

(assert (=> b!5181215 (=> (not res!2201216) (not e!3228167))))

(assert (=> b!5181215 (= res!2201216 (not ((_ is Nil!60176) (tail!10178 (++!13177 testedP!294 lt!2134946)))))))

(declare-fun b!5181217 () Bool)

(assert (=> b!5181217 (= e!3228167 (isPrefix!5794 (tail!10178 (tail!10178 testedP!294)) (tail!10178 (tail!10178 (++!13177 testedP!294 lt!2134946)))))))

(declare-fun d!1674982 () Bool)

(assert (=> d!1674982 e!3228169))

(declare-fun res!2201218 () Bool)

(assert (=> d!1674982 (=> res!2201218 e!3228169)))

(declare-fun lt!2135722 () Bool)

(assert (=> d!1674982 (= res!2201218 (not lt!2135722))))

(assert (=> d!1674982 (= lt!2135722 e!3228168)))

(declare-fun res!2201215 () Bool)

(assert (=> d!1674982 (=> res!2201215 e!3228168)))

(assert (=> d!1674982 (= res!2201215 ((_ is Nil!60176) (tail!10178 testedP!294)))))

(assert (=> d!1674982 (= (isPrefix!5794 (tail!10178 testedP!294) (tail!10178 (++!13177 testedP!294 lt!2134946))) lt!2135722)))

(assert (= (and d!1674982 (not res!2201215)) b!5181215))

(assert (= (and b!5181215 res!2201216) b!5181216))

(assert (= (and b!5181216 res!2201217) b!5181217))

(assert (= (and d!1674982 (not res!2201218)) b!5181218))

(assert (=> b!5181216 m!6238848))

(assert (=> b!5181216 m!6239832))

(assert (=> b!5181216 m!6239860))

(declare-fun m!6240760 () Bool)

(assert (=> b!5181216 m!6240760))

(assert (=> b!5181218 m!6239860))

(declare-fun m!6240762 () Bool)

(assert (=> b!5181218 m!6240762))

(assert (=> b!5181218 m!6238848))

(assert (=> b!5181218 m!6239834))

(assert (=> b!5181217 m!6238848))

(assert (=> b!5181217 m!6239836))

(assert (=> b!5181217 m!6239860))

(declare-fun m!6240764 () Bool)

(assert (=> b!5181217 m!6240764))

(assert (=> b!5181217 m!6239836))

(assert (=> b!5181217 m!6240764))

(declare-fun m!6240766 () Bool)

(assert (=> b!5181217 m!6240766))

(assert (=> b!5180762 d!1674982))

(assert (=> b!5180762 d!1674552))

(declare-fun d!1674984 () Bool)

(assert (=> d!1674984 (= (tail!10178 (++!13177 testedP!294 lt!2134946)) (t!373453 (++!13177 testedP!294 lt!2134946)))))

(assert (=> b!5180762 d!1674984))

(declare-fun d!1674986 () Bool)

(declare-fun lt!2135723 () Int)

(assert (=> d!1674986 (>= lt!2135723 0)))

(declare-fun e!3228170 () Int)

(assert (=> d!1674986 (= lt!2135723 e!3228170)))

(declare-fun c!892955 () Bool)

(assert (=> d!1674986 (= c!892955 ((_ is Nil!60176) (++!13177 lt!2134949 (getSuffix!3442 input!5817 lt!2134949))))))

(assert (=> d!1674986 (= (size!39697 (++!13177 lt!2134949 (getSuffix!3442 input!5817 lt!2134949))) lt!2135723)))

(declare-fun b!5181219 () Bool)

(assert (=> b!5181219 (= e!3228170 0)))

(declare-fun b!5181220 () Bool)

(assert (=> b!5181220 (= e!3228170 (+ 1 (size!39697 (t!373453 (++!13177 lt!2134949 (getSuffix!3442 input!5817 lt!2134949))))))))

(assert (= (and d!1674986 c!892955) b!5181219))

(assert (= (and d!1674986 (not c!892955)) b!5181220))

(declare-fun m!6240768 () Bool)

(assert (=> b!5181220 m!6240768))

(assert (=> b!5180531 d!1674986))

(assert (=> b!5180531 d!1674218))

(declare-fun d!1674988 () Bool)

(assert (=> d!1674988 (= (isEmpty!32219 (tail!10178 (_1!35239 lt!2134953))) ((_ is Nil!60176) (tail!10178 (_1!35239 lt!2134953))))))

(assert (=> d!1674368 d!1674988))

(declare-fun d!1674990 () Bool)

(assert (=> d!1674990 (= (flatMap!464 lt!2134952 lambda!258907) (choose!38502 lt!2134952 lambda!258907))))

(declare-fun bs!1207289 () Bool)

(assert (= bs!1207289 d!1674990))

(declare-fun m!6240770 () Bool)

(assert (=> bs!1207289 m!6240770))

(assert (=> d!1674362 d!1674990))

(assert (=> bm!364149 d!1674820))

(declare-fun d!1674992 () Bool)

(assert (=> d!1674992 (= lt!2134946 lt!2135032)))

(assert (=> d!1674992 true))

(declare-fun _$63!1315 () Unit!152123)

(assert (=> d!1674992 (= (choose!38498 testedP!294 lt!2134946 testedP!294 lt!2135032 input!5817) _$63!1315)))

(assert (=> d!1674554 d!1674992))

(assert (=> d!1674554 d!1674210))

(declare-fun d!1674994 () Bool)

(declare-fun lt!2135724 () Int)

(assert (=> d!1674994 (>= lt!2135724 0)))

(declare-fun e!3228171 () Int)

(assert (=> d!1674994 (= lt!2135724 e!3228171)))

(declare-fun c!892956 () Bool)

(assert (=> d!1674994 (= c!892956 ((_ is Nil!60176) (t!373453 (_1!35239 lt!2135206))))))

(assert (=> d!1674994 (= (size!39697 (t!373453 (_1!35239 lt!2135206))) lt!2135724)))

(declare-fun b!5181221 () Bool)

(assert (=> b!5181221 (= e!3228171 0)))

(declare-fun b!5181222 () Bool)

(assert (=> b!5181222 (= e!3228171 (+ 1 (size!39697 (t!373453 (t!373453 (_1!35239 lt!2135206))))))))

(assert (= (and d!1674994 c!892956) b!5181221))

(assert (= (and d!1674994 (not c!892956)) b!5181222))

(declare-fun m!6240772 () Bool)

(assert (=> b!5181222 m!6240772))

(assert (=> b!5180798 d!1674994))

(declare-fun b!5181224 () Bool)

(declare-fun res!2201221 () Bool)

(declare-fun e!3228172 () Bool)

(assert (=> b!5181224 (=> (not res!2201221) (not e!3228172))))

(assert (=> b!5181224 (= res!2201221 (= (head!11079 (tail!10178 (tail!10178 testedP!294))) (head!11079 (tail!10178 (tail!10178 input!5817)))))))

(declare-fun b!5181226 () Bool)

(declare-fun e!3228174 () Bool)

(assert (=> b!5181226 (= e!3228174 (>= (size!39697 (tail!10178 (tail!10178 input!5817))) (size!39697 (tail!10178 (tail!10178 testedP!294)))))))

(declare-fun b!5181223 () Bool)

(declare-fun e!3228173 () Bool)

(assert (=> b!5181223 (= e!3228173 e!3228172)))

(declare-fun res!2201220 () Bool)

(assert (=> b!5181223 (=> (not res!2201220) (not e!3228172))))

(assert (=> b!5181223 (= res!2201220 (not ((_ is Nil!60176) (tail!10178 (tail!10178 input!5817)))))))

(declare-fun b!5181225 () Bool)

(assert (=> b!5181225 (= e!3228172 (isPrefix!5794 (tail!10178 (tail!10178 (tail!10178 testedP!294))) (tail!10178 (tail!10178 (tail!10178 input!5817)))))))

(declare-fun d!1674996 () Bool)

(assert (=> d!1674996 e!3228174))

(declare-fun res!2201222 () Bool)

(assert (=> d!1674996 (=> res!2201222 e!3228174)))

(declare-fun lt!2135725 () Bool)

(assert (=> d!1674996 (= res!2201222 (not lt!2135725))))

(assert (=> d!1674996 (= lt!2135725 e!3228173)))

(declare-fun res!2201219 () Bool)

(assert (=> d!1674996 (=> res!2201219 e!3228173)))

(assert (=> d!1674996 (= res!2201219 ((_ is Nil!60176) (tail!10178 (tail!10178 testedP!294))))))

(assert (=> d!1674996 (= (isPrefix!5794 (tail!10178 (tail!10178 testedP!294)) (tail!10178 (tail!10178 input!5817))) lt!2135725)))

(assert (= (and d!1674996 (not res!2201219)) b!5181223))

(assert (= (and b!5181223 res!2201220) b!5181224))

(assert (= (and b!5181224 res!2201221) b!5181225))

(assert (= (and d!1674996 (not res!2201222)) b!5181226))

(assert (=> b!5181224 m!6239836))

(declare-fun m!6240774 () Bool)

(assert (=> b!5181224 m!6240774))

(assert (=> b!5181224 m!6239446))

(assert (=> b!5181224 m!6240068))

(assert (=> b!5181226 m!6239446))

(assert (=> b!5181226 m!6240070))

(assert (=> b!5181226 m!6239836))

(declare-fun m!6240776 () Bool)

(assert (=> b!5181226 m!6240776))

(assert (=> b!5181225 m!6239836))

(declare-fun m!6240778 () Bool)

(assert (=> b!5181225 m!6240778))

(assert (=> b!5181225 m!6239446))

(assert (=> b!5181225 m!6240072))

(assert (=> b!5181225 m!6240778))

(assert (=> b!5181225 m!6240072))

(declare-fun m!6240780 () Bool)

(assert (=> b!5181225 m!6240780))

(assert (=> b!5180756 d!1674996))

(declare-fun d!1674998 () Bool)

(assert (=> d!1674998 (= (tail!10178 (tail!10178 testedP!294)) (t!373453 (tail!10178 testedP!294)))))

(assert (=> b!5180756 d!1674998))

(assert (=> b!5180756 d!1674658))

(declare-fun d!1675000 () Bool)

(declare-fun c!892957 () Bool)

(assert (=> d!1675000 (= c!892957 (isEmpty!32219 (tail!10178 (tail!10178 (_1!35239 lt!2134956)))))))

(declare-fun e!3228175 () Bool)

(assert (=> d!1675000 (= (matchZipper!989 (derivationStepZipper!1007 (derivationStepZipper!1007 baseZ!62 (head!11079 (_1!35239 lt!2134956))) (head!11079 (tail!10178 (_1!35239 lt!2134956)))) (tail!10178 (tail!10178 (_1!35239 lt!2134956)))) e!3228175)))

(declare-fun b!5181227 () Bool)

(assert (=> b!5181227 (= e!3228175 (nullableZipper!1199 (derivationStepZipper!1007 (derivationStepZipper!1007 baseZ!62 (head!11079 (_1!35239 lt!2134956))) (head!11079 (tail!10178 (_1!35239 lt!2134956))))))))

(declare-fun b!5181228 () Bool)

(assert (=> b!5181228 (= e!3228175 (matchZipper!989 (derivationStepZipper!1007 (derivationStepZipper!1007 (derivationStepZipper!1007 baseZ!62 (head!11079 (_1!35239 lt!2134956))) (head!11079 (tail!10178 (_1!35239 lt!2134956)))) (head!11079 (tail!10178 (tail!10178 (_1!35239 lt!2134956))))) (tail!10178 (tail!10178 (tail!10178 (_1!35239 lt!2134956))))))))

(assert (= (and d!1675000 c!892957) b!5181227))

(assert (= (and d!1675000 (not c!892957)) b!5181228))

(assert (=> d!1675000 m!6239536))

(declare-fun m!6240782 () Bool)

(assert (=> d!1675000 m!6240782))

(assert (=> b!5181227 m!6239534))

(declare-fun m!6240784 () Bool)

(assert (=> b!5181227 m!6240784))

(assert (=> b!5181228 m!6239536))

(declare-fun m!6240786 () Bool)

(assert (=> b!5181228 m!6240786))

(assert (=> b!5181228 m!6239534))

(assert (=> b!5181228 m!6240786))

(declare-fun m!6240788 () Bool)

(assert (=> b!5181228 m!6240788))

(assert (=> b!5181228 m!6239536))

(declare-fun m!6240790 () Bool)

(assert (=> b!5181228 m!6240790))

(assert (=> b!5181228 m!6240788))

(assert (=> b!5181228 m!6240790))

(declare-fun m!6240792 () Bool)

(assert (=> b!5181228 m!6240792))

(assert (=> b!5180628 d!1675000))

(declare-fun bs!1207290 () Bool)

(declare-fun d!1675002 () Bool)

(assert (= bs!1207290 (and d!1675002 d!1674744)))

(declare-fun lambda!258975 () Int)

(assert (=> bs!1207290 (= (= (head!11079 (tail!10178 (_1!35239 lt!2134956))) call!364128) (= lambda!258975 lambda!258949))))

(declare-fun bs!1207291 () Bool)

(assert (= bs!1207291 (and d!1675002 d!1674376)))

(assert (=> bs!1207291 (= (= (head!11079 (tail!10178 (_1!35239 lt!2134956))) (head!11079 (_1!35239 lt!2134953))) (= lambda!258975 lambda!258908))))

(declare-fun bs!1207292 () Bool)

(assert (= bs!1207292 (and d!1675002 d!1674690)))

(assert (=> bs!1207292 (= (= (head!11079 (tail!10178 (_1!35239 lt!2134956))) (h!66624 (t!373453 testedP!294))) (= lambda!258975 lambda!258945))))

(declare-fun bs!1207293 () Bool)

(assert (= bs!1207293 (and d!1675002 d!1674430)))

(assert (=> bs!1207293 (= (= (head!11079 (tail!10178 (_1!35239 lt!2134956))) (head!11079 (_1!35239 lt!2134956))) (= lambda!258975 lambda!258912))))

(declare-fun bs!1207294 () Bool)

(assert (= bs!1207294 (and d!1675002 d!1674792)))

(assert (=> bs!1207294 (= (= (head!11079 (tail!10178 (_1!35239 lt!2134956))) (head!11079 (tail!10178 (_1!35239 lt!2134953)))) (= lambda!258975 lambda!258951))))

(declare-fun bs!1207295 () Bool)

(assert (= bs!1207295 (and d!1675002 d!1674436)))

(assert (=> bs!1207295 (= (= (head!11079 (tail!10178 (_1!35239 lt!2134956))) call!364050) (= lambda!258975 lambda!258913))))

(declare-fun bs!1207296 () Bool)

(assert (= bs!1207296 (and d!1675002 d!1674362)))

(assert (=> bs!1207296 (= (= (head!11079 (tail!10178 (_1!35239 lt!2134956))) call!364090) (= lambda!258975 lambda!258907))))

(declare-fun bs!1207297 () Bool)

(assert (= bs!1207297 (and d!1675002 d!1674228)))

(assert (=> bs!1207297 (= (= (head!11079 (tail!10178 (_1!35239 lt!2134956))) lt!2134944) (= lambda!258975 lambda!258882))))

(declare-fun bs!1207298 () Bool)

(assert (= bs!1207298 (and d!1675002 d!1674964)))

(assert (=> bs!1207298 (= (= (head!11079 (tail!10178 (_1!35239 lt!2134956))) call!364136) (= lambda!258975 lambda!258973))))

(declare-fun bs!1207299 () Bool)

(assert (= bs!1207299 (and d!1675002 d!1674604)))

(assert (=> bs!1207299 (= (= (head!11079 (tail!10178 (_1!35239 lt!2134956))) (h!66624 lt!2134949)) (= lambda!258975 lambda!258939))))

(declare-fun bs!1207300 () Bool)

(assert (= bs!1207300 (and d!1675002 d!1674572)))

(assert (=> bs!1207300 (= (= (head!11079 (tail!10178 (_1!35239 lt!2134956))) (h!66624 testedP!294)) (= lambda!258975 lambda!258937))))

(declare-fun bs!1207301 () Bool)

(assert (= bs!1207301 (and d!1675002 d!1674784)))

(assert (=> bs!1207301 (= (= (head!11079 (tail!10178 (_1!35239 lt!2134956))) (h!66624 (t!373453 lt!2134949))) (= lambda!258975 lambda!258950))))

(declare-fun bs!1207302 () Bool)

(assert (= bs!1207302 (and d!1675002 d!1674942)))

(assert (=> bs!1207302 (= (= (head!11079 (tail!10178 (_1!35239 lt!2134956))) (head!11079 (_1!35239 (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 (size!39697 input!5817))))) (= lambda!258975 lambda!258965))))

(assert (=> d!1675002 true))

(assert (=> d!1675002 (= (derivationStepZipper!1007 (derivationStepZipper!1007 baseZ!62 (head!11079 (_1!35239 lt!2134956))) (head!11079 (tail!10178 (_1!35239 lt!2134956)))) (flatMap!464 (derivationStepZipper!1007 baseZ!62 (head!11079 (_1!35239 lt!2134956))) lambda!258975))))

(declare-fun bs!1207303 () Bool)

(assert (= bs!1207303 d!1675002))

(assert (=> bs!1207303 m!6238918))

(declare-fun m!6240794 () Bool)

(assert (=> bs!1207303 m!6240794))

(assert (=> b!5180628 d!1675002))

(declare-fun d!1675004 () Bool)

(assert (=> d!1675004 (= (head!11079 (tail!10178 (_1!35239 lt!2134956))) (h!66624 (tail!10178 (_1!35239 lt!2134956))))))

(assert (=> b!5180628 d!1675004))

(declare-fun d!1675006 () Bool)

(assert (=> d!1675006 (= (tail!10178 (tail!10178 (_1!35239 lt!2134956))) (t!373453 (tail!10178 (_1!35239 lt!2134956))))))

(assert (=> b!5180628 d!1675006))

(declare-fun bs!1207304 () Bool)

(declare-fun d!1675008 () Bool)

(assert (= bs!1207304 (and d!1675008 d!1674628)))

(declare-fun lambda!258976 () Int)

(assert (=> bs!1207304 (= lambda!258976 lambda!258940)))

(declare-fun bs!1207305 () Bool)

(assert (= bs!1207305 (and d!1675008 d!1674410)))

(assert (=> bs!1207305 (= lambda!258976 lambda!258910)))

(declare-fun bs!1207306 () Bool)

(assert (= bs!1207306 (and d!1675008 d!1674214)))

(assert (=> bs!1207306 (= lambda!258976 lambda!258879)))

(declare-fun bs!1207307 () Bool)

(assert (= bs!1207307 (and d!1675008 d!1674398)))

(assert (=> bs!1207307 (= lambda!258976 lambda!258909)))

(declare-fun bs!1207308 () Bool)

(assert (= bs!1207308 (and d!1675008 d!1674236)))

(assert (=> bs!1207308 (= lambda!258976 lambda!258883)))

(assert (=> d!1675008 (= (inv!79899 setElem!32414) (forall!14172 (exprs!4545 setElem!32414) lambda!258976))))

(declare-fun bs!1207309 () Bool)

(assert (= bs!1207309 d!1675008))

(declare-fun m!6240796 () Bool)

(assert (=> bs!1207309 m!6240796))

(assert (=> setNonEmpty!32414 d!1675008))

(declare-fun d!1675010 () Bool)

(assert (=> d!1675010 (= (head!11079 (++!13177 testedP!294 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 testedP!294)) Nil!60176))) (h!66624 (++!13177 testedP!294 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 testedP!294)) Nil!60176))))))

(assert (=> b!5180551 d!1675010))

(assert (=> b!5180551 d!1674396))

(declare-fun d!1675012 () Bool)

(declare-fun c!892958 () Bool)

(assert (=> d!1675012 (= c!892958 ((_ is Nil!60176) lt!2135439))))

(declare-fun e!3228176 () (InoxSet C!29592))

(assert (=> d!1675012 (= (content!10669 lt!2135439) e!3228176)))

(declare-fun b!5181229 () Bool)

(assert (=> b!5181229 (= e!3228176 ((as const (Array C!29592 Bool)) false))))

(declare-fun b!5181230 () Bool)

(assert (=> b!5181230 (= e!3228176 ((_ map or) (store ((as const (Array C!29592 Bool)) false) (h!66624 lt!2135439) true) (content!10669 (t!373453 lt!2135439))))))

(assert (= (and d!1675012 c!892958) b!5181229))

(assert (= (and d!1675012 (not c!892958)) b!5181230))

(declare-fun m!6240798 () Bool)

(assert (=> b!5181230 m!6240798))

(declare-fun m!6240800 () Bool)

(assert (=> b!5181230 m!6240800))

(assert (=> d!1674456 d!1675012))

(declare-fun d!1675014 () Bool)

(declare-fun c!892959 () Bool)

(assert (=> d!1675014 (= c!892959 ((_ is Nil!60176) (++!13177 lt!2134949 (Cons!60176 lt!2135212 Nil!60176))))))

(declare-fun e!3228177 () (InoxSet C!29592))

(assert (=> d!1675014 (= (content!10669 (++!13177 lt!2134949 (Cons!60176 lt!2135212 Nil!60176))) e!3228177)))

(declare-fun b!5181231 () Bool)

(assert (=> b!5181231 (= e!3228177 ((as const (Array C!29592 Bool)) false))))

(declare-fun b!5181232 () Bool)

(assert (=> b!5181232 (= e!3228177 ((_ map or) (store ((as const (Array C!29592 Bool)) false) (h!66624 (++!13177 lt!2134949 (Cons!60176 lt!2135212 Nil!60176))) true) (content!10669 (t!373453 (++!13177 lt!2134949 (Cons!60176 lt!2135212 Nil!60176))))))))

(assert (= (and d!1675014 c!892959) b!5181231))

(assert (= (and d!1675014 (not c!892959)) b!5181232))

(declare-fun m!6240802 () Bool)

(assert (=> b!5181232 m!6240802))

(assert (=> b!5181232 m!6240630))

(assert (=> d!1674456 d!1675014))

(declare-fun d!1675016 () Bool)

(declare-fun c!892960 () Bool)

(assert (=> d!1675016 (= c!892960 ((_ is Nil!60176) lt!2135215))))

(declare-fun e!3228178 () (InoxSet C!29592))

(assert (=> d!1675016 (= (content!10669 lt!2135215) e!3228178)))

(declare-fun b!5181233 () Bool)

(assert (=> b!5181233 (= e!3228178 ((as const (Array C!29592 Bool)) false))))

(declare-fun b!5181234 () Bool)

(assert (=> b!5181234 (= e!3228178 ((_ map or) (store ((as const (Array C!29592 Bool)) false) (h!66624 lt!2135215) true) (content!10669 (t!373453 lt!2135215))))))

(assert (= (and d!1675016 c!892960) b!5181233))

(assert (= (and d!1675016 (not c!892960)) b!5181234))

(declare-fun m!6240804 () Bool)

(assert (=> b!5181234 m!6240804))

(declare-fun m!6240806 () Bool)

(assert (=> b!5181234 m!6240806))

(assert (=> d!1674456 d!1675016))

(declare-fun d!1675018 () Bool)

(declare-fun c!892961 () Bool)

(assert (=> d!1675018 (= c!892961 ((_ is Cons!60176) (t!373453 (++!13177 testedP!294 (Cons!60176 lt!2134944 Nil!60176)))))))

(declare-fun e!3228179 () (InoxSet Context!8090))

(assert (=> d!1675018 (= (derivationZipper!284 (derivationStepZipper!1007 baseZ!62 (h!66624 (++!13177 testedP!294 (Cons!60176 lt!2134944 Nil!60176)))) (t!373453 (++!13177 testedP!294 (Cons!60176 lt!2134944 Nil!60176)))) e!3228179)))

(declare-fun b!5181235 () Bool)

(assert (=> b!5181235 (= e!3228179 (derivationZipper!284 (derivationStepZipper!1007 (derivationStepZipper!1007 baseZ!62 (h!66624 (++!13177 testedP!294 (Cons!60176 lt!2134944 Nil!60176)))) (h!66624 (t!373453 (++!13177 testedP!294 (Cons!60176 lt!2134944 Nil!60176))))) (t!373453 (t!373453 (++!13177 testedP!294 (Cons!60176 lt!2134944 Nil!60176))))))))

(declare-fun b!5181236 () Bool)

(assert (=> b!5181236 (= e!3228179 (derivationStepZipper!1007 baseZ!62 (h!66624 (++!13177 testedP!294 (Cons!60176 lt!2134944 Nil!60176)))))))

(assert (= (and d!1675018 c!892961) b!5181235))

(assert (= (and d!1675018 (not c!892961)) b!5181236))

(assert (=> b!5181235 m!6239562))

(declare-fun m!6240808 () Bool)

(assert (=> b!5181235 m!6240808))

(assert (=> b!5181235 m!6240808))

(declare-fun m!6240810 () Bool)

(assert (=> b!5181235 m!6240810))

(assert (=> b!5180635 d!1675018))

(declare-fun bs!1207310 () Bool)

(declare-fun d!1675020 () Bool)

(assert (= bs!1207310 (and d!1675020 d!1674744)))

(declare-fun lambda!258977 () Int)

(assert (=> bs!1207310 (= (= (h!66624 (++!13177 testedP!294 (Cons!60176 lt!2134944 Nil!60176))) call!364128) (= lambda!258977 lambda!258949))))

(declare-fun bs!1207311 () Bool)

(assert (= bs!1207311 (and d!1675020 d!1674376)))

(assert (=> bs!1207311 (= (= (h!66624 (++!13177 testedP!294 (Cons!60176 lt!2134944 Nil!60176))) (head!11079 (_1!35239 lt!2134953))) (= lambda!258977 lambda!258908))))

(declare-fun bs!1207312 () Bool)

(assert (= bs!1207312 (and d!1675020 d!1674690)))

(assert (=> bs!1207312 (= (= (h!66624 (++!13177 testedP!294 (Cons!60176 lt!2134944 Nil!60176))) (h!66624 (t!373453 testedP!294))) (= lambda!258977 lambda!258945))))

(declare-fun bs!1207313 () Bool)

(assert (= bs!1207313 (and d!1675020 d!1674430)))

(assert (=> bs!1207313 (= (= (h!66624 (++!13177 testedP!294 (Cons!60176 lt!2134944 Nil!60176))) (head!11079 (_1!35239 lt!2134956))) (= lambda!258977 lambda!258912))))

(declare-fun bs!1207314 () Bool)

(assert (= bs!1207314 (and d!1675020 d!1675002)))

(assert (=> bs!1207314 (= (= (h!66624 (++!13177 testedP!294 (Cons!60176 lt!2134944 Nil!60176))) (head!11079 (tail!10178 (_1!35239 lt!2134956)))) (= lambda!258977 lambda!258975))))

(declare-fun bs!1207315 () Bool)

(assert (= bs!1207315 (and d!1675020 d!1674792)))

(assert (=> bs!1207315 (= (= (h!66624 (++!13177 testedP!294 (Cons!60176 lt!2134944 Nil!60176))) (head!11079 (tail!10178 (_1!35239 lt!2134953)))) (= lambda!258977 lambda!258951))))

(declare-fun bs!1207316 () Bool)

(assert (= bs!1207316 (and d!1675020 d!1674436)))

(assert (=> bs!1207316 (= (= (h!66624 (++!13177 testedP!294 (Cons!60176 lt!2134944 Nil!60176))) call!364050) (= lambda!258977 lambda!258913))))

(declare-fun bs!1207317 () Bool)

(assert (= bs!1207317 (and d!1675020 d!1674362)))

(assert (=> bs!1207317 (= (= (h!66624 (++!13177 testedP!294 (Cons!60176 lt!2134944 Nil!60176))) call!364090) (= lambda!258977 lambda!258907))))

(declare-fun bs!1207318 () Bool)

(assert (= bs!1207318 (and d!1675020 d!1674228)))

(assert (=> bs!1207318 (= (= (h!66624 (++!13177 testedP!294 (Cons!60176 lt!2134944 Nil!60176))) lt!2134944) (= lambda!258977 lambda!258882))))

(declare-fun bs!1207319 () Bool)

(assert (= bs!1207319 (and d!1675020 d!1674964)))

(assert (=> bs!1207319 (= (= (h!66624 (++!13177 testedP!294 (Cons!60176 lt!2134944 Nil!60176))) call!364136) (= lambda!258977 lambda!258973))))

(declare-fun bs!1207320 () Bool)

(assert (= bs!1207320 (and d!1675020 d!1674604)))

(assert (=> bs!1207320 (= (= (h!66624 (++!13177 testedP!294 (Cons!60176 lt!2134944 Nil!60176))) (h!66624 lt!2134949)) (= lambda!258977 lambda!258939))))

(declare-fun bs!1207321 () Bool)

(assert (= bs!1207321 (and d!1675020 d!1674572)))

(assert (=> bs!1207321 (= (= (h!66624 (++!13177 testedP!294 (Cons!60176 lt!2134944 Nil!60176))) (h!66624 testedP!294)) (= lambda!258977 lambda!258937))))

(declare-fun bs!1207322 () Bool)

(assert (= bs!1207322 (and d!1675020 d!1674784)))

(assert (=> bs!1207322 (= (= (h!66624 (++!13177 testedP!294 (Cons!60176 lt!2134944 Nil!60176))) (h!66624 (t!373453 lt!2134949))) (= lambda!258977 lambda!258950))))

(declare-fun bs!1207323 () Bool)

(assert (= bs!1207323 (and d!1675020 d!1674942)))

(assert (=> bs!1207323 (= (= (h!66624 (++!13177 testedP!294 (Cons!60176 lt!2134944 Nil!60176))) (head!11079 (_1!35239 (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 (size!39697 input!5817))))) (= lambda!258977 lambda!258965))))

(assert (=> d!1675020 true))

(assert (=> d!1675020 (= (derivationStepZipper!1007 baseZ!62 (h!66624 (++!13177 testedP!294 (Cons!60176 lt!2134944 Nil!60176)))) (flatMap!464 baseZ!62 lambda!258977))))

(declare-fun bs!1207324 () Bool)

(assert (= bs!1207324 d!1675020))

(declare-fun m!6240812 () Bool)

(assert (=> bs!1207324 m!6240812))

(assert (=> b!5180635 d!1675020))

(declare-fun d!1675022 () Bool)

(assert (=> d!1675022 (= (isEmpty!32219 (_1!35239 lt!2135470)) ((_ is Nil!60176) (_1!35239 lt!2135470)))))

(assert (=> b!5180671 d!1675022))

(declare-fun d!1675024 () Bool)

(declare-fun lt!2135726 () Int)

(assert (=> d!1675024 (>= lt!2135726 0)))

(declare-fun e!3228180 () Int)

(assert (=> d!1675024 (= lt!2135726 e!3228180)))

(declare-fun c!892962 () Bool)

(assert (=> d!1675024 (= c!892962 ((_ is Nil!60176) lt!2135521))))

(assert (=> d!1675024 (= (size!39697 lt!2135521) lt!2135726)))

(declare-fun b!5181237 () Bool)

(assert (=> b!5181237 (= e!3228180 0)))

(declare-fun b!5181238 () Bool)

(assert (=> b!5181238 (= e!3228180 (+ 1 (size!39697 (t!373453 lt!2135521))))))

(assert (= (and d!1675024 c!892962) b!5181237))

(assert (= (and d!1675024 (not c!892962)) b!5181238))

(declare-fun m!6240814 () Bool)

(assert (=> b!5181238 m!6240814))

(assert (=> b!5180732 d!1675024))

(declare-fun d!1675026 () Bool)

(declare-fun lt!2135727 () Int)

(assert (=> d!1675026 (>= lt!2135727 0)))

(declare-fun e!3228181 () Int)

(assert (=> d!1675026 (= lt!2135727 e!3228181)))

(declare-fun c!892963 () Bool)

(assert (=> d!1675026 (= c!892963 ((_ is Nil!60176) (++!13177 testedP!294 (Cons!60176 lt!2135040 Nil!60176))))))

(assert (=> d!1675026 (= (size!39697 (++!13177 testedP!294 (Cons!60176 lt!2135040 Nil!60176))) lt!2135727)))

(declare-fun b!5181239 () Bool)

(assert (=> b!5181239 (= e!3228181 0)))

(declare-fun b!5181240 () Bool)

(assert (=> b!5181240 (= e!3228181 (+ 1 (size!39697 (t!373453 (++!13177 testedP!294 (Cons!60176 lt!2135040 Nil!60176))))))))

(assert (= (and d!1675026 c!892963) b!5181239))

(assert (= (and d!1675026 (not c!892963)) b!5181240))

(assert (=> b!5181240 m!6240612))

(assert (=> b!5180732 d!1675026))

(declare-fun d!1675028 () Bool)

(declare-fun lt!2135728 () Int)

(assert (=> d!1675028 (>= lt!2135728 0)))

(declare-fun e!3228182 () Int)

(assert (=> d!1675028 (= lt!2135728 e!3228182)))

(declare-fun c!892964 () Bool)

(assert (=> d!1675028 (= c!892964 ((_ is Nil!60176) lt!2135043))))

(assert (=> d!1675028 (= (size!39697 lt!2135043) lt!2135728)))

(declare-fun b!5181241 () Bool)

(assert (=> b!5181241 (= e!3228182 0)))

(declare-fun b!5181242 () Bool)

(assert (=> b!5181242 (= e!3228182 (+ 1 (size!39697 (t!373453 lt!2135043))))))

(assert (= (and d!1675028 c!892964) b!5181241))

(assert (= (and d!1675028 (not c!892964)) b!5181242))

(declare-fun m!6240816 () Bool)

(assert (=> b!5181242 m!6240816))

(assert (=> b!5180732 d!1675028))

(declare-fun d!1675030 () Bool)

(declare-fun c!892965 () Bool)

(assert (=> d!1675030 (= c!892965 ((_ is Nil!60176) lt!2135370))))

(declare-fun e!3228183 () (InoxSet C!29592))

(assert (=> d!1675030 (= (content!10669 lt!2135370) e!3228183)))

(declare-fun b!5181243 () Bool)

(assert (=> b!5181243 (= e!3228183 ((as const (Array C!29592 Bool)) false))))

(declare-fun b!5181244 () Bool)

(assert (=> b!5181244 (= e!3228183 ((_ map or) (store ((as const (Array C!29592 Bool)) false) (h!66624 lt!2135370) true) (content!10669 (t!373453 lt!2135370))))))

(assert (= (and d!1675030 c!892965) b!5181243))

(assert (= (and d!1675030 (not c!892965)) b!5181244))

(declare-fun m!6240818 () Bool)

(assert (=> b!5181244 m!6240818))

(declare-fun m!6240820 () Bool)

(assert (=> b!5181244 m!6240820))

(assert (=> d!1674356 d!1675030))

(assert (=> d!1674356 d!1674422))

(declare-fun d!1675032 () Bool)

(declare-fun c!892966 () Bool)

(assert (=> d!1675032 (= c!892966 ((_ is Nil!60176) (Cons!60176 (head!11079 (getSuffix!3442 input!5817 testedP!294)) Nil!60176)))))

(declare-fun e!3228184 () (InoxSet C!29592))

(assert (=> d!1675032 (= (content!10669 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 testedP!294)) Nil!60176)) e!3228184)))

(declare-fun b!5181245 () Bool)

(assert (=> b!5181245 (= e!3228184 ((as const (Array C!29592 Bool)) false))))

(declare-fun b!5181246 () Bool)

(assert (=> b!5181246 (= e!3228184 ((_ map or) (store ((as const (Array C!29592 Bool)) false) (h!66624 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 testedP!294)) Nil!60176)) true) (content!10669 (t!373453 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 testedP!294)) Nil!60176)))))))

(assert (= (and d!1675032 c!892966) b!5181245))

(assert (= (and d!1675032 (not c!892966)) b!5181246))

(declare-fun m!6240822 () Bool)

(assert (=> b!5181246 m!6240822))

(declare-fun m!6240824 () Bool)

(assert (=> b!5181246 m!6240824))

(assert (=> d!1674356 d!1675032))

(assert (=> b!5180624 d!1674814))

(assert (=> b!5180751 d!1674682))

(declare-fun b!5181247 () Bool)

(declare-fun c!892967 () Bool)

(declare-fun call!364190 () Bool)

(assert (=> b!5181247 (= c!892967 call!364190)))

(declare-fun lt!2135736 () Unit!152123)

(declare-fun lt!2135733 () Unit!152123)

(assert (=> b!5181247 (= lt!2135736 lt!2135733)))

(assert (=> b!5181247 (= input!5817 lt!2135391)))

(declare-fun call!364188 () Unit!152123)

(assert (=> b!5181247 (= lt!2135733 call!364188)))

(declare-fun lt!2135739 () Unit!152123)

(declare-fun lt!2135743 () Unit!152123)

(assert (=> b!5181247 (= lt!2135739 lt!2135743)))

(declare-fun call!364195 () Bool)

(assert (=> b!5181247 call!364195))

(declare-fun call!364189 () Unit!152123)

(assert (=> b!5181247 (= lt!2135743 call!364189)))

(declare-fun e!3228190 () tuple2!63872)

(declare-fun e!3228191 () tuple2!63872)

(assert (=> b!5181247 (= e!3228190 e!3228191)))

(declare-fun b!5181248 () Bool)

(declare-fun e!3228188 () Bool)

(declare-fun lt!2135731 () tuple2!63872)

(assert (=> b!5181248 (= e!3228188 (>= (size!39697 (_1!35239 lt!2135731)) (size!39697 lt!2135391)))))

(declare-fun b!5181249 () Bool)

(declare-fun c!892970 () Bool)

(assert (=> b!5181249 (= c!892970 call!364190)))

(declare-fun lt!2135752 () Unit!152123)

(declare-fun lt!2135751 () Unit!152123)

(assert (=> b!5181249 (= lt!2135752 lt!2135751)))

(declare-fun lt!2135737 () C!29592)

(declare-fun lt!2135740 () List!60300)

(assert (=> b!5181249 (= (++!13177 (++!13177 lt!2135391 (Cons!60176 lt!2135737 Nil!60176)) lt!2135740) input!5817)))

(assert (=> b!5181249 (= lt!2135751 (lemmaMoveElementToOtherListKeepsConcatEq!1596 lt!2135391 lt!2135737 lt!2135740 input!5817))))

(assert (=> b!5181249 (= lt!2135740 (tail!10178 call!364127))))

(assert (=> b!5181249 (= lt!2135737 (head!11079 call!364127))))

(declare-fun lt!2135734 () Unit!152123)

(declare-fun lt!2135735 () Unit!152123)

(assert (=> b!5181249 (= lt!2135734 lt!2135735)))

(assert (=> b!5181249 (isPrefix!5794 (++!13177 lt!2135391 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2135391)) Nil!60176)) input!5817)))

(assert (=> b!5181249 (= lt!2135735 (lemmaAddHeadSuffixToPrefixStillPrefix!1099 lt!2135391 input!5817))))

(declare-fun lt!2135744 () List!60300)

(assert (=> b!5181249 (= lt!2135744 (++!13177 lt!2135391 (Cons!60176 (head!11079 call!364127) Nil!60176)))))

(declare-fun lt!2135753 () Unit!152123)

(declare-fun e!3228192 () Unit!152123)

(assert (=> b!5181249 (= lt!2135753 e!3228192)))

(declare-fun c!892972 () Bool)

(assert (=> b!5181249 (= c!892972 (= (size!39697 lt!2135391) (size!39697 input!5817)))))

(declare-fun lt!2135732 () Unit!152123)

(declare-fun lt!2135741 () Unit!152123)

(assert (=> b!5181249 (= lt!2135732 lt!2135741)))

(assert (=> b!5181249 (<= (size!39697 lt!2135391) (size!39697 input!5817))))

(assert (=> b!5181249 (= lt!2135741 (lemmaIsPrefixThenSmallerEqSize!955 lt!2135391 input!5817))))

(declare-fun e!3228186 () tuple2!63872)

(assert (=> b!5181249 (= e!3228190 e!3228186)))

(declare-fun b!5181250 () Bool)

(declare-fun e!3228189 () tuple2!63872)

(assert (=> b!5181250 (= e!3228189 e!3228190)))

(declare-fun c!892968 () Bool)

(assert (=> b!5181250 (= c!892968 (= (+ lt!2134945 1 1) lt!2134950))))

(declare-fun b!5181251 () Bool)

(declare-fun call!364191 () tuple2!63872)

(assert (=> b!5181251 (= e!3228186 call!364191)))

(declare-fun b!5181252 () Bool)

(declare-fun e!3228187 () Bool)

(assert (=> b!5181252 (= e!3228187 e!3228188)))

(declare-fun res!2201224 () Bool)

(assert (=> b!5181252 (=> res!2201224 e!3228188)))

(assert (=> b!5181252 (= res!2201224 (isEmpty!32219 (_1!35239 lt!2135731)))))

(declare-fun bm!364183 () Bool)

(assert (=> bm!364183 (= call!364195 (isPrefix!5794 input!5817 input!5817))))

(declare-fun b!5181253 () Bool)

(declare-fun Unit!152178 () Unit!152123)

(assert (=> b!5181253 (= e!3228192 Unit!152178)))

(declare-fun bm!364184 () Bool)

(assert (=> bm!364184 (= call!364188 (lemmaIsPrefixSameLengthThenSameList!1439 input!5817 lt!2135391 input!5817))))

(declare-fun bm!364185 () Bool)

(assert (=> bm!364185 (= call!364190 (nullableZipper!1199 call!364126))))

(declare-fun b!5181254 () Bool)

(declare-fun Unit!152179 () Unit!152123)

(assert (=> b!5181254 (= e!3228192 Unit!152179)))

(declare-fun lt!2135747 () Unit!152123)

(assert (=> b!5181254 (= lt!2135747 call!364189)))

(assert (=> b!5181254 call!364195))

(declare-fun lt!2135745 () Unit!152123)

(assert (=> b!5181254 (= lt!2135745 lt!2135747)))

(declare-fun lt!2135749 () Unit!152123)

(assert (=> b!5181254 (= lt!2135749 call!364188)))

(assert (=> b!5181254 (= input!5817 lt!2135391)))

(declare-fun lt!2135750 () Unit!152123)

(assert (=> b!5181254 (= lt!2135750 lt!2135749)))

(assert (=> b!5181254 false))

(declare-fun bm!364186 () Bool)

(declare-fun call!364193 () List!60300)

(assert (=> bm!364186 (= call!364193 (tail!10178 call!364127))))

(declare-fun b!5181255 () Bool)

(declare-fun e!3228185 () tuple2!63872)

(declare-fun lt!2135742 () tuple2!63872)

(assert (=> b!5181255 (= e!3228185 lt!2135742)))

(declare-fun b!5181256 () Bool)

(assert (=> b!5181256 (= e!3228191 (tuple2!63873 Nil!60176 input!5817))))

(declare-fun b!5181257 () Bool)

(assert (=> b!5181257 (= e!3228185 (tuple2!63873 lt!2135391 call!364127))))

(declare-fun bm!364188 () Bool)

(declare-fun call!364194 () C!29592)

(assert (=> bm!364188 (= call!364194 (head!11079 call!364127))))

(declare-fun bm!364189 () Bool)

(assert (=> bm!364189 (= call!364189 (lemmaIsPrefixRefl!3799 input!5817 input!5817))))

(declare-fun call!364192 () (InoxSet Context!8090))

(declare-fun bm!364190 () Bool)

(assert (=> bm!364190 (= call!364191 (findLongestMatchInnerZipper!317 call!364192 lt!2135744 (+ lt!2134945 1 1 1) call!364193 input!5817 lt!2134950))))

(declare-fun b!5181258 () Bool)

(assert (=> b!5181258 (= e!3228191 (tuple2!63873 lt!2135391 Nil!60176))))

(declare-fun b!5181259 () Bool)

(assert (=> b!5181259 (= e!3228186 e!3228185)))

(assert (=> b!5181259 (= lt!2135742 call!364191)))

(declare-fun c!892969 () Bool)

(assert (=> b!5181259 (= c!892969 (isEmpty!32219 (_1!35239 lt!2135742)))))

(declare-fun b!5181260 () Bool)

(assert (=> b!5181260 (= e!3228189 (tuple2!63873 Nil!60176 input!5817))))

(declare-fun bm!364187 () Bool)

(assert (=> bm!364187 (= call!364192 (derivationStepZipper!1007 call!364126 call!364194))))

(declare-fun d!1675034 () Bool)

(assert (=> d!1675034 e!3228187))

(declare-fun res!2201223 () Bool)

(assert (=> d!1675034 (=> (not res!2201223) (not e!3228187))))

(assert (=> d!1675034 (= res!2201223 (= (++!13177 (_1!35239 lt!2135731) (_2!35239 lt!2135731)) input!5817))))

(assert (=> d!1675034 (= lt!2135731 e!3228189)))

(declare-fun c!892971 () Bool)

(assert (=> d!1675034 (= c!892971 (lostCauseZipper!1348 call!364126))))

(declare-fun lt!2135730 () Unit!152123)

(declare-fun Unit!152180 () Unit!152123)

(assert (=> d!1675034 (= lt!2135730 Unit!152180)))

(assert (=> d!1675034 (= (getSuffix!3442 input!5817 lt!2135391) call!364127)))

(declare-fun lt!2135748 () Unit!152123)

(declare-fun lt!2135754 () Unit!152123)

(assert (=> d!1675034 (= lt!2135748 lt!2135754)))

(declare-fun lt!2135729 () List!60300)

(assert (=> d!1675034 (= call!364127 lt!2135729)))

(assert (=> d!1675034 (= lt!2135754 (lemmaSamePrefixThenSameSuffix!2715 lt!2135391 call!364127 lt!2135391 lt!2135729 input!5817))))

(assert (=> d!1675034 (= lt!2135729 (getSuffix!3442 input!5817 lt!2135391))))

(declare-fun lt!2135746 () Unit!152123)

(declare-fun lt!2135738 () Unit!152123)

(assert (=> d!1675034 (= lt!2135746 lt!2135738)))

(assert (=> d!1675034 (isPrefix!5794 lt!2135391 (++!13177 lt!2135391 call!364127))))

(assert (=> d!1675034 (= lt!2135738 (lemmaConcatTwoListThenFirstIsPrefix!3609 lt!2135391 call!364127))))

(assert (=> d!1675034 (= (++!13177 lt!2135391 call!364127) input!5817)))

(assert (=> d!1675034 (= (findLongestMatchInnerZipper!317 call!364126 lt!2135391 (+ lt!2134945 1 1) call!364127 input!5817 lt!2134950) lt!2135731)))

(assert (= (and d!1675034 c!892971) b!5181260))

(assert (= (and d!1675034 (not c!892971)) b!5181250))

(assert (= (and b!5181250 c!892968) b!5181247))

(assert (= (and b!5181250 (not c!892968)) b!5181249))

(assert (= (and b!5181247 c!892967) b!5181258))

(assert (= (and b!5181247 (not c!892967)) b!5181256))

(assert (= (and b!5181249 c!892972) b!5181254))

(assert (= (and b!5181249 (not c!892972)) b!5181253))

(assert (= (and b!5181249 c!892970) b!5181259))

(assert (= (and b!5181249 (not c!892970)) b!5181251))

(assert (= (and b!5181259 c!892969) b!5181257))

(assert (= (and b!5181259 (not c!892969)) b!5181255))

(assert (= (or b!5181259 b!5181251) bm!364186))

(assert (= (or b!5181259 b!5181251) bm!364188))

(assert (= (or b!5181259 b!5181251) bm!364187))

(assert (= (or b!5181259 b!5181251) bm!364190))

(assert (= (or b!5181247 b!5181254) bm!364189))

(assert (= (or b!5181247 b!5181249) bm!364185))

(assert (= (or b!5181247 b!5181254) bm!364183))

(assert (= (or b!5181247 b!5181254) bm!364184))

(assert (= (and d!1675034 res!2201223) b!5181252))

(assert (= (and b!5181252 (not res!2201224)) b!5181248))

(assert (=> bm!364183 m!6238556))

(declare-fun m!6240826 () Bool)

(assert (=> bm!364185 m!6240826))

(declare-fun m!6240828 () Bool)

(assert (=> bm!364184 m!6240828))

(declare-fun m!6240830 () Bool)

(assert (=> bm!364187 m!6240830))

(declare-fun m!6240832 () Bool)

(assert (=> d!1675034 m!6240832))

(declare-fun m!6240834 () Bool)

(assert (=> d!1675034 m!6240834))

(assert (=> d!1675034 m!6240834))

(declare-fun m!6240836 () Bool)

(assert (=> d!1675034 m!6240836))

(declare-fun m!6240838 () Bool)

(assert (=> d!1675034 m!6240838))

(declare-fun m!6240840 () Bool)

(assert (=> d!1675034 m!6240840))

(declare-fun m!6240842 () Bool)

(assert (=> d!1675034 m!6240842))

(declare-fun m!6240844 () Bool)

(assert (=> d!1675034 m!6240844))

(declare-fun m!6240846 () Bool)

(assert (=> bm!364190 m!6240846))

(declare-fun m!6240848 () Bool)

(assert (=> b!5181249 m!6240848))

(declare-fun m!6240850 () Bool)

(assert (=> b!5181249 m!6240850))

(declare-fun m!6240852 () Bool)

(assert (=> b!5181249 m!6240852))

(assert (=> b!5181249 m!6240838))

(declare-fun m!6240854 () Bool)

(assert (=> b!5181249 m!6240854))

(declare-fun m!6240856 () Bool)

(assert (=> b!5181249 m!6240856))

(assert (=> b!5181249 m!6240838))

(assert (=> b!5181249 m!6238548))

(assert (=> b!5181249 m!6240848))

(declare-fun m!6240858 () Bool)

(assert (=> b!5181249 m!6240858))

(declare-fun m!6240860 () Bool)

(assert (=> b!5181249 m!6240860))

(declare-fun m!6240862 () Bool)

(assert (=> b!5181249 m!6240862))

(declare-fun m!6240864 () Bool)

(assert (=> b!5181249 m!6240864))

(declare-fun m!6240866 () Bool)

(assert (=> b!5181249 m!6240866))

(assert (=> b!5181249 m!6240852))

(declare-fun m!6240868 () Bool)

(assert (=> b!5181249 m!6240868))

(declare-fun m!6240870 () Bool)

(assert (=> b!5181249 m!6240870))

(declare-fun m!6240872 () Bool)

(assert (=> b!5181252 m!6240872))

(declare-fun m!6240874 () Bool)

(assert (=> b!5181259 m!6240874))

(declare-fun m!6240876 () Bool)

(assert (=> b!5181248 m!6240876))

(assert (=> b!5181248 m!6240856))

(assert (=> bm!364186 m!6240866))

(assert (=> bm!364189 m!6238554))

(assert (=> bm!364188 m!6240862))

(assert (=> bm!364124 d!1675034))

(declare-fun d!1675036 () Bool)

(declare-fun lt!2135755 () Int)

(assert (=> d!1675036 (>= lt!2135755 0)))

(declare-fun e!3228193 () Int)

(assert (=> d!1675036 (= lt!2135755 e!3228193)))

(declare-fun c!892973 () Bool)

(assert (=> d!1675036 (= c!892973 ((_ is Nil!60176) lt!2135370))))

(assert (=> d!1675036 (= (size!39697 lt!2135370) lt!2135755)))

(declare-fun b!5181261 () Bool)

(assert (=> b!5181261 (= e!3228193 0)))

(declare-fun b!5181262 () Bool)

(assert (=> b!5181262 (= e!3228193 (+ 1 (size!39697 (t!373453 lt!2135370))))))

(assert (= (and d!1675036 c!892973) b!5181261))

(assert (= (and d!1675036 (not c!892973)) b!5181262))

(declare-fun m!6240878 () Bool)

(assert (=> b!5181262 m!6240878))

(assert (=> b!5180556 d!1675036))

(assert (=> b!5180556 d!1674152))

(declare-fun d!1675038 () Bool)

(declare-fun lt!2135756 () Int)

(assert (=> d!1675038 (>= lt!2135756 0)))

(declare-fun e!3228194 () Int)

(assert (=> d!1675038 (= lt!2135756 e!3228194)))

(declare-fun c!892974 () Bool)

(assert (=> d!1675038 (= c!892974 ((_ is Nil!60176) (Cons!60176 (head!11079 (getSuffix!3442 input!5817 testedP!294)) Nil!60176)))))

(assert (=> d!1675038 (= (size!39697 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 testedP!294)) Nil!60176)) lt!2135756)))

(declare-fun b!5181263 () Bool)

(assert (=> b!5181263 (= e!3228194 0)))

(declare-fun b!5181264 () Bool)

(assert (=> b!5181264 (= e!3228194 (+ 1 (size!39697 (t!373453 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 testedP!294)) Nil!60176)))))))

(assert (= (and d!1675038 c!892974) b!5181263))

(assert (= (and d!1675038 (not c!892974)) b!5181264))

(declare-fun m!6240880 () Bool)

(assert (=> b!5181264 m!6240880))

(assert (=> b!5180556 d!1675038))

(assert (=> bm!364117 d!1674128))

(declare-fun d!1675040 () Bool)

(declare-fun lt!2135757 () Int)

(assert (=> d!1675040 (>= lt!2135757 0)))

(declare-fun e!3228195 () Int)

(assert (=> d!1675040 (= lt!2135757 e!3228195)))

(declare-fun c!892975 () Bool)

(assert (=> d!1675040 (= c!892975 ((_ is Nil!60176) lt!2135439))))

(assert (=> d!1675040 (= (size!39697 lt!2135439) lt!2135757)))

(declare-fun b!5181265 () Bool)

(assert (=> b!5181265 (= e!3228195 0)))

(declare-fun b!5181266 () Bool)

(assert (=> b!5181266 (= e!3228195 (+ 1 (size!39697 (t!373453 lt!2135439))))))

(assert (= (and d!1675040 c!892975) b!5181265))

(assert (= (and d!1675040 (not c!892975)) b!5181266))

(declare-fun m!6240882 () Bool)

(assert (=> b!5181266 m!6240882))

(assert (=> b!5180643 d!1675040))

(declare-fun d!1675042 () Bool)

(declare-fun lt!2135758 () Int)

(assert (=> d!1675042 (>= lt!2135758 0)))

(declare-fun e!3228196 () Int)

(assert (=> d!1675042 (= lt!2135758 e!3228196)))

(declare-fun c!892976 () Bool)

(assert (=> d!1675042 (= c!892976 ((_ is Nil!60176) (++!13177 lt!2134949 (Cons!60176 lt!2135212 Nil!60176))))))

(assert (=> d!1675042 (= (size!39697 (++!13177 lt!2134949 (Cons!60176 lt!2135212 Nil!60176))) lt!2135758)))

(declare-fun b!5181267 () Bool)

(assert (=> b!5181267 (= e!3228196 0)))

(declare-fun b!5181268 () Bool)

(assert (=> b!5181268 (= e!3228196 (+ 1 (size!39697 (t!373453 (++!13177 lt!2134949 (Cons!60176 lt!2135212 Nil!60176))))))))

(assert (= (and d!1675042 c!892976) b!5181267))

(assert (= (and d!1675042 (not c!892976)) b!5181268))

(assert (=> b!5181268 m!6240626))

(assert (=> b!5180643 d!1675042))

(declare-fun d!1675044 () Bool)

(declare-fun lt!2135759 () Int)

(assert (=> d!1675044 (>= lt!2135759 0)))

(declare-fun e!3228197 () Int)

(assert (=> d!1675044 (= lt!2135759 e!3228197)))

(declare-fun c!892977 () Bool)

(assert (=> d!1675044 (= c!892977 ((_ is Nil!60176) lt!2135215))))

(assert (=> d!1675044 (= (size!39697 lt!2135215) lt!2135759)))

(declare-fun b!5181269 () Bool)

(assert (=> b!5181269 (= e!3228197 0)))

(declare-fun b!5181270 () Bool)

(assert (=> b!5181270 (= e!3228197 (+ 1 (size!39697 (t!373453 lt!2135215))))))

(assert (= (and d!1675044 c!892977) b!5181269))

(assert (= (and d!1675044 (not c!892977)) b!5181270))

(declare-fun m!6240884 () Bool)

(assert (=> b!5181270 m!6240884))

(assert (=> b!5180643 d!1675044))

(declare-fun d!1675046 () Bool)

(assert (=> d!1675046 (= (flatMap!464 baseZ!62 lambda!258939) (choose!38502 baseZ!62 lambda!258939))))

(declare-fun bs!1207325 () Bool)

(assert (= bs!1207325 d!1675046))

(declare-fun m!6240886 () Bool)

(assert (=> bs!1207325 m!6240886))

(assert (=> d!1674604 d!1675046))

(declare-fun d!1675048 () Bool)

(assert (=> d!1675048 (= (head!11079 (++!13177 lt!2134949 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176))) (h!66624 (++!13177 lt!2134949 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2134949)) Nil!60176))))))

(assert (=> b!5180650 d!1675048))

(assert (=> b!5180650 d!1674396))

(declare-fun b!5181272 () Bool)

(declare-fun e!3228199 () List!60300)

(assert (=> b!5181272 (= e!3228199 (Cons!60176 (h!66624 (t!373453 lt!2134949)) (++!13177 (t!373453 (t!373453 lt!2134949)) (getSuffix!3442 input!5817 lt!2134949))))))

(declare-fun b!5181271 () Bool)

(assert (=> b!5181271 (= e!3228199 (getSuffix!3442 input!5817 lt!2134949))))

(declare-fun b!5181273 () Bool)

(declare-fun res!2201225 () Bool)

(declare-fun e!3228198 () Bool)

(assert (=> b!5181273 (=> (not res!2201225) (not e!3228198))))

(declare-fun lt!2135760 () List!60300)

(assert (=> b!5181273 (= res!2201225 (= (size!39697 lt!2135760) (+ (size!39697 (t!373453 lt!2134949)) (size!39697 (getSuffix!3442 input!5817 lt!2134949)))))))

(declare-fun b!5181274 () Bool)

(assert (=> b!5181274 (= e!3228198 (or (not (= (getSuffix!3442 input!5817 lt!2134949) Nil!60176)) (= lt!2135760 (t!373453 lt!2134949))))))

(declare-fun d!1675050 () Bool)

(assert (=> d!1675050 e!3228198))

(declare-fun res!2201226 () Bool)

(assert (=> d!1675050 (=> (not res!2201226) (not e!3228198))))

(assert (=> d!1675050 (= res!2201226 (= (content!10669 lt!2135760) ((_ map or) (content!10669 (t!373453 lt!2134949)) (content!10669 (getSuffix!3442 input!5817 lt!2134949)))))))

(assert (=> d!1675050 (= lt!2135760 e!3228199)))

(declare-fun c!892978 () Bool)

(assert (=> d!1675050 (= c!892978 ((_ is Nil!60176) (t!373453 lt!2134949)))))

(assert (=> d!1675050 (= (++!13177 (t!373453 lt!2134949) (getSuffix!3442 input!5817 lt!2134949)) lt!2135760)))

(assert (= (and d!1675050 c!892978) b!5181271))

(assert (= (and d!1675050 (not c!892978)) b!5181272))

(assert (= (and d!1675050 res!2201226) b!5181273))

(assert (= (and b!5181273 res!2201225) b!5181274))

(assert (=> b!5181272 m!6238570))

(declare-fun m!6240888 () Bool)

(assert (=> b!5181272 m!6240888))

(declare-fun m!6240890 () Bool)

(assert (=> b!5181273 m!6240890))

(assert (=> b!5181273 m!6238866))

(assert (=> b!5181273 m!6238570))

(assert (=> b!5181273 m!6239218))

(declare-fun m!6240892 () Bool)

(assert (=> d!1675050 m!6240892))

(assert (=> d!1675050 m!6239954))

(assert (=> d!1675050 m!6238570))

(assert (=> d!1675050 m!6239222))

(assert (=> b!5180517 d!1675050))

(declare-fun b!5181276 () Bool)

(declare-fun e!3228201 () List!60300)

(assert (=> b!5181276 (= e!3228201 (Cons!60176 (h!66624 (t!373453 lt!2134949)) (++!13177 (t!373453 (t!373453 lt!2134949)) (Cons!60176 lt!2135212 Nil!60176))))))

(declare-fun b!5181275 () Bool)

(assert (=> b!5181275 (= e!3228201 (Cons!60176 lt!2135212 Nil!60176))))

(declare-fun b!5181277 () Bool)

(declare-fun res!2201227 () Bool)

(declare-fun e!3228200 () Bool)

(assert (=> b!5181277 (=> (not res!2201227) (not e!3228200))))

(declare-fun lt!2135761 () List!60300)

(assert (=> b!5181277 (= res!2201227 (= (size!39697 lt!2135761) (+ (size!39697 (t!373453 lt!2134949)) (size!39697 (Cons!60176 lt!2135212 Nil!60176)))))))

(declare-fun b!5181278 () Bool)

(assert (=> b!5181278 (= e!3228200 (or (not (= (Cons!60176 lt!2135212 Nil!60176) Nil!60176)) (= lt!2135761 (t!373453 lt!2134949))))))

(declare-fun d!1675052 () Bool)

(assert (=> d!1675052 e!3228200))

(declare-fun res!2201228 () Bool)

(assert (=> d!1675052 (=> (not res!2201228) (not e!3228200))))

(assert (=> d!1675052 (= res!2201228 (= (content!10669 lt!2135761) ((_ map or) (content!10669 (t!373453 lt!2134949)) (content!10669 (Cons!60176 lt!2135212 Nil!60176)))))))

(assert (=> d!1675052 (= lt!2135761 e!3228201)))

(declare-fun c!892979 () Bool)

(assert (=> d!1675052 (= c!892979 ((_ is Nil!60176) (t!373453 lt!2134949)))))

(assert (=> d!1675052 (= (++!13177 (t!373453 lt!2134949) (Cons!60176 lt!2135212 Nil!60176)) lt!2135761)))

(assert (= (and d!1675052 c!892979) b!5181275))

(assert (= (and d!1675052 (not c!892979)) b!5181276))

(assert (= (and d!1675052 res!2201228) b!5181277))

(assert (= (and b!5181277 res!2201227) b!5181278))

(declare-fun m!6240894 () Bool)

(assert (=> b!5181276 m!6240894))

(declare-fun m!6240896 () Bool)

(assert (=> b!5181277 m!6240896))

(assert (=> b!5181277 m!6238866))

(assert (=> b!5181277 m!6239572))

(declare-fun m!6240898 () Bool)

(assert (=> d!1675052 m!6240898))

(assert (=> d!1675052 m!6239954))

(assert (=> d!1675052 m!6239576))

(assert (=> b!5180638 d!1675052))

(declare-fun d!1675054 () Bool)

(assert (=> d!1675054 (= (isEmpty!32219 (_1!35239 lt!2135405)) ((_ is Nil!60176) (_1!35239 lt!2135405)))))

(assert (=> b!5180601 d!1675054))

(assert (=> b!5180580 d!1674142))

(declare-fun b!5181280 () Bool)

(declare-fun e!3228203 () List!60300)

(assert (=> b!5181280 (= e!3228203 (Cons!60176 (h!66624 lt!2135047) (++!13177 (t!373453 lt!2135047) (Cons!60176 (head!11079 call!364049) Nil!60176))))))

(declare-fun b!5181279 () Bool)

(assert (=> b!5181279 (= e!3228203 (Cons!60176 (head!11079 call!364049) Nil!60176))))

(declare-fun b!5181281 () Bool)

(declare-fun res!2201229 () Bool)

(declare-fun e!3228202 () Bool)

(assert (=> b!5181281 (=> (not res!2201229) (not e!3228202))))

(declare-fun lt!2135762 () List!60300)

(assert (=> b!5181281 (= res!2201229 (= (size!39697 lt!2135762) (+ (size!39697 lt!2135047) (size!39697 (Cons!60176 (head!11079 call!364049) Nil!60176)))))))

(declare-fun b!5181282 () Bool)

(assert (=> b!5181282 (= e!3228202 (or (not (= (Cons!60176 (head!11079 call!364049) Nil!60176) Nil!60176)) (= lt!2135762 lt!2135047)))))

(declare-fun d!1675056 () Bool)

(assert (=> d!1675056 e!3228202))

(declare-fun res!2201230 () Bool)

(assert (=> d!1675056 (=> (not res!2201230) (not e!3228202))))

(assert (=> d!1675056 (= res!2201230 (= (content!10669 lt!2135762) ((_ map or) (content!10669 lt!2135047) (content!10669 (Cons!60176 (head!11079 call!364049) Nil!60176)))))))

(assert (=> d!1675056 (= lt!2135762 e!3228203)))

(declare-fun c!892980 () Bool)

(assert (=> d!1675056 (= c!892980 ((_ is Nil!60176) lt!2135047))))

(assert (=> d!1675056 (= (++!13177 lt!2135047 (Cons!60176 (head!11079 call!364049) Nil!60176)) lt!2135762)))

(assert (= (and d!1675056 c!892980) b!5181279))

(assert (= (and d!1675056 (not c!892980)) b!5181280))

(assert (= (and d!1675056 res!2201230) b!5181281))

(assert (= (and b!5181281 res!2201229) b!5181282))

(declare-fun m!6240900 () Bool)

(assert (=> b!5181280 m!6240900))

(declare-fun m!6240902 () Bool)

(assert (=> b!5181281 m!6240902))

(assert (=> b!5181281 m!6239414))

(declare-fun m!6240904 () Bool)

(assert (=> b!5181281 m!6240904))

(declare-fun m!6240906 () Bool)

(assert (=> d!1675056 m!6240906))

(assert (=> d!1675056 m!6240192))

(declare-fun m!6240908 () Bool)

(assert (=> d!1675056 m!6240908))

(assert (=> b!5180580 d!1675056))

(declare-fun b!5181284 () Bool)

(declare-fun e!3228205 () List!60300)

(assert (=> b!5181284 (= e!3228205 (Cons!60176 (h!66624 (++!13177 lt!2135047 (Cons!60176 lt!2135384 Nil!60176))) (++!13177 (t!373453 (++!13177 lt!2135047 (Cons!60176 lt!2135384 Nil!60176))) lt!2135387)))))

(declare-fun b!5181283 () Bool)

(assert (=> b!5181283 (= e!3228205 lt!2135387)))

(declare-fun b!5181285 () Bool)

(declare-fun res!2201231 () Bool)

(declare-fun e!3228204 () Bool)

(assert (=> b!5181285 (=> (not res!2201231) (not e!3228204))))

(declare-fun lt!2135763 () List!60300)

(assert (=> b!5181285 (= res!2201231 (= (size!39697 lt!2135763) (+ (size!39697 (++!13177 lt!2135047 (Cons!60176 lt!2135384 Nil!60176))) (size!39697 lt!2135387))))))

(declare-fun b!5181286 () Bool)

(assert (=> b!5181286 (= e!3228204 (or (not (= lt!2135387 Nil!60176)) (= lt!2135763 (++!13177 lt!2135047 (Cons!60176 lt!2135384 Nil!60176)))))))

(declare-fun d!1675058 () Bool)

(assert (=> d!1675058 e!3228204))

(declare-fun res!2201232 () Bool)

(assert (=> d!1675058 (=> (not res!2201232) (not e!3228204))))

(assert (=> d!1675058 (= res!2201232 (= (content!10669 lt!2135763) ((_ map or) (content!10669 (++!13177 lt!2135047 (Cons!60176 lt!2135384 Nil!60176))) (content!10669 lt!2135387))))))

(assert (=> d!1675058 (= lt!2135763 e!3228205)))

(declare-fun c!892981 () Bool)

(assert (=> d!1675058 (= c!892981 ((_ is Nil!60176) (++!13177 lt!2135047 (Cons!60176 lt!2135384 Nil!60176))))))

(assert (=> d!1675058 (= (++!13177 (++!13177 lt!2135047 (Cons!60176 lt!2135384 Nil!60176)) lt!2135387) lt!2135763)))

(assert (= (and d!1675058 c!892981) b!5181283))

(assert (= (and d!1675058 (not c!892981)) b!5181284))

(assert (= (and d!1675058 res!2201232) b!5181285))

(assert (= (and b!5181285 res!2201231) b!5181286))

(declare-fun m!6240910 () Bool)

(assert (=> b!5181284 m!6240910))

(declare-fun m!6240912 () Bool)

(assert (=> b!5181285 m!6240912))

(assert (=> b!5181285 m!6239410))

(declare-fun m!6240914 () Bool)

(assert (=> b!5181285 m!6240914))

(declare-fun m!6240916 () Bool)

(assert (=> b!5181285 m!6240916))

(declare-fun m!6240918 () Bool)

(assert (=> d!1675058 m!6240918))

(assert (=> d!1675058 m!6239410))

(declare-fun m!6240920 () Bool)

(assert (=> d!1675058 m!6240920))

(declare-fun m!6240922 () Bool)

(assert (=> d!1675058 m!6240922))

(assert (=> b!5180580 d!1675058))

(declare-fun d!1675060 () Bool)

(assert (=> d!1675060 (= (++!13177 (++!13177 lt!2135047 (Cons!60176 lt!2135384 Nil!60176)) lt!2135387) input!5817)))

(declare-fun lt!2135764 () Unit!152123)

(assert (=> d!1675060 (= lt!2135764 (choose!38500 lt!2135047 lt!2135384 lt!2135387 input!5817))))

(assert (=> d!1675060 (= (++!13177 lt!2135047 (Cons!60176 lt!2135384 lt!2135387)) input!5817)))

(assert (=> d!1675060 (= (lemmaMoveElementToOtherListKeepsConcatEq!1596 lt!2135047 lt!2135384 lt!2135387 input!5817) lt!2135764)))

(declare-fun bs!1207326 () Bool)

(assert (= bs!1207326 d!1675060))

(assert (=> bs!1207326 m!6239410))

(assert (=> bs!1207326 m!6239410))

(assert (=> bs!1207326 m!6239426))

(declare-fun m!6240924 () Bool)

(assert (=> bs!1207326 m!6240924))

(declare-fun m!6240926 () Bool)

(assert (=> bs!1207326 m!6240926))

(assert (=> b!5180580 d!1675060))

(assert (=> b!5180580 d!1674708))

(declare-fun d!1675062 () Bool)

(assert (=> d!1675062 (<= (size!39697 lt!2135047) (size!39697 input!5817))))

(declare-fun lt!2135765 () Unit!152123)

(assert (=> d!1675062 (= lt!2135765 (choose!38494 lt!2135047 input!5817))))

(assert (=> d!1675062 (isPrefix!5794 lt!2135047 input!5817)))

(assert (=> d!1675062 (= (lemmaIsPrefixThenSmallerEqSize!955 lt!2135047 input!5817) lt!2135765)))

(declare-fun bs!1207327 () Bool)

(assert (= bs!1207327 d!1675062))

(assert (=> bs!1207327 m!6239414))

(assert (=> bs!1207327 m!6238548))

(declare-fun m!6240928 () Bool)

(assert (=> bs!1207327 m!6240928))

(assert (=> bs!1207327 m!6240170))

(assert (=> b!5180580 d!1675062))

(assert (=> b!5180580 d!1674738))

(declare-fun b!5181288 () Bool)

(declare-fun e!3228207 () List!60300)

(assert (=> b!5181288 (= e!3228207 (Cons!60176 (h!66624 lt!2135047) (++!13177 (t!373453 lt!2135047) (Cons!60176 lt!2135384 Nil!60176))))))

(declare-fun b!5181287 () Bool)

(assert (=> b!5181287 (= e!3228207 (Cons!60176 lt!2135384 Nil!60176))))

(declare-fun b!5181289 () Bool)

(declare-fun res!2201233 () Bool)

(declare-fun e!3228206 () Bool)

(assert (=> b!5181289 (=> (not res!2201233) (not e!3228206))))

(declare-fun lt!2135766 () List!60300)

(assert (=> b!5181289 (= res!2201233 (= (size!39697 lt!2135766) (+ (size!39697 lt!2135047) (size!39697 (Cons!60176 lt!2135384 Nil!60176)))))))

(declare-fun b!5181290 () Bool)

(assert (=> b!5181290 (= e!3228206 (or (not (= (Cons!60176 lt!2135384 Nil!60176) Nil!60176)) (= lt!2135766 lt!2135047)))))

(declare-fun d!1675064 () Bool)

(assert (=> d!1675064 e!3228206))

(declare-fun res!2201234 () Bool)

(assert (=> d!1675064 (=> (not res!2201234) (not e!3228206))))

(assert (=> d!1675064 (= res!2201234 (= (content!10669 lt!2135766) ((_ map or) (content!10669 lt!2135047) (content!10669 (Cons!60176 lt!2135384 Nil!60176)))))))

(assert (=> d!1675064 (= lt!2135766 e!3228207)))

(declare-fun c!892982 () Bool)

(assert (=> d!1675064 (= c!892982 ((_ is Nil!60176) lt!2135047))))

(assert (=> d!1675064 (= (++!13177 lt!2135047 (Cons!60176 lt!2135384 Nil!60176)) lt!2135766)))

(assert (= (and d!1675064 c!892982) b!5181287))

(assert (= (and d!1675064 (not c!892982)) b!5181288))

(assert (= (and d!1675064 res!2201234) b!5181289))

(assert (= (and b!5181289 res!2201233) b!5181290))

(declare-fun m!6240930 () Bool)

(assert (=> b!5181288 m!6240930))

(declare-fun m!6240932 () Bool)

(assert (=> b!5181289 m!6240932))

(assert (=> b!5181289 m!6239414))

(declare-fun m!6240934 () Bool)

(assert (=> b!5181289 m!6240934))

(declare-fun m!6240936 () Bool)

(assert (=> d!1675064 m!6240936))

(assert (=> d!1675064 m!6240192))

(declare-fun m!6240938 () Bool)

(assert (=> d!1675064 m!6240938))

(assert (=> b!5180580 d!1675064))

(declare-fun b!5181292 () Bool)

(declare-fun res!2201237 () Bool)

(declare-fun e!3228208 () Bool)

(assert (=> b!5181292 (=> (not res!2201237) (not e!3228208))))

(assert (=> b!5181292 (= res!2201237 (= (head!11079 (++!13177 lt!2135047 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2135047)) Nil!60176))) (head!11079 input!5817)))))

(declare-fun b!5181294 () Bool)

(declare-fun e!3228210 () Bool)

(assert (=> b!5181294 (= e!3228210 (>= (size!39697 input!5817) (size!39697 (++!13177 lt!2135047 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2135047)) Nil!60176)))))))

(declare-fun b!5181291 () Bool)

(declare-fun e!3228209 () Bool)

(assert (=> b!5181291 (= e!3228209 e!3228208)))

(declare-fun res!2201236 () Bool)

(assert (=> b!5181291 (=> (not res!2201236) (not e!3228208))))

(assert (=> b!5181291 (= res!2201236 (not ((_ is Nil!60176) input!5817)))))

(declare-fun b!5181293 () Bool)

(assert (=> b!5181293 (= e!3228208 (isPrefix!5794 (tail!10178 (++!13177 lt!2135047 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2135047)) Nil!60176))) (tail!10178 input!5817)))))

(declare-fun d!1675066 () Bool)

(assert (=> d!1675066 e!3228210))

(declare-fun res!2201238 () Bool)

(assert (=> d!1675066 (=> res!2201238 e!3228210)))

(declare-fun lt!2135767 () Bool)

(assert (=> d!1675066 (= res!2201238 (not lt!2135767))))

(assert (=> d!1675066 (= lt!2135767 e!3228209)))

(declare-fun res!2201235 () Bool)

(assert (=> d!1675066 (=> res!2201235 e!3228209)))

(assert (=> d!1675066 (= res!2201235 ((_ is Nil!60176) (++!13177 lt!2135047 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2135047)) Nil!60176))))))

(assert (=> d!1675066 (= (isPrefix!5794 (++!13177 lt!2135047 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2135047)) Nil!60176)) input!5817) lt!2135767)))

(assert (= (and d!1675066 (not res!2201235)) b!5181291))

(assert (= (and b!5181291 res!2201236) b!5181292))

(assert (= (and b!5181292 res!2201237) b!5181293))

(assert (= (and d!1675066 (not res!2201238)) b!5181294))

(assert (=> b!5181292 m!6239406))

(declare-fun m!6240940 () Bool)

(assert (=> b!5181292 m!6240940))

(assert (=> b!5181292 m!6238586))

(assert (=> b!5181294 m!6238548))

(assert (=> b!5181294 m!6239406))

(declare-fun m!6240942 () Bool)

(assert (=> b!5181294 m!6240942))

(assert (=> b!5181293 m!6239406))

(declare-fun m!6240944 () Bool)

(assert (=> b!5181293 m!6240944))

(assert (=> b!5181293 m!6238588))

(assert (=> b!5181293 m!6240944))

(assert (=> b!5181293 m!6238588))

(declare-fun m!6240946 () Bool)

(assert (=> b!5181293 m!6240946))

(assert (=> b!5180580 d!1675066))

(assert (=> b!5180580 d!1674934))

(declare-fun b!5181296 () Bool)

(declare-fun e!3228212 () List!60300)

(assert (=> b!5181296 (= e!3228212 (Cons!60176 (h!66624 lt!2135047) (++!13177 (t!373453 lt!2135047) (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2135047)) Nil!60176))))))

(declare-fun b!5181295 () Bool)

(assert (=> b!5181295 (= e!3228212 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2135047)) Nil!60176))))

(declare-fun b!5181297 () Bool)

(declare-fun res!2201239 () Bool)

(declare-fun e!3228211 () Bool)

(assert (=> b!5181297 (=> (not res!2201239) (not e!3228211))))

(declare-fun lt!2135768 () List!60300)

(assert (=> b!5181297 (= res!2201239 (= (size!39697 lt!2135768) (+ (size!39697 lt!2135047) (size!39697 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2135047)) Nil!60176)))))))

(declare-fun b!5181298 () Bool)

(assert (=> b!5181298 (= e!3228211 (or (not (= (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2135047)) Nil!60176) Nil!60176)) (= lt!2135768 lt!2135047)))))

(declare-fun d!1675068 () Bool)

(assert (=> d!1675068 e!3228211))

(declare-fun res!2201240 () Bool)

(assert (=> d!1675068 (=> (not res!2201240) (not e!3228211))))

(assert (=> d!1675068 (= res!2201240 (= (content!10669 lt!2135768) ((_ map or) (content!10669 lt!2135047) (content!10669 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2135047)) Nil!60176)))))))

(assert (=> d!1675068 (= lt!2135768 e!3228212)))

(declare-fun c!892983 () Bool)

(assert (=> d!1675068 (= c!892983 ((_ is Nil!60176) lt!2135047))))

(assert (=> d!1675068 (= (++!13177 lt!2135047 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2135047)) Nil!60176)) lt!2135768)))

(assert (= (and d!1675068 c!892983) b!5181295))

(assert (= (and d!1675068 (not c!892983)) b!5181296))

(assert (= (and d!1675068 res!2201240) b!5181297))

(assert (= (and b!5181297 res!2201239) b!5181298))

(declare-fun m!6240948 () Bool)

(assert (=> b!5181296 m!6240948))

(declare-fun m!6240950 () Bool)

(assert (=> b!5181297 m!6240950))

(assert (=> b!5181297 m!6239414))

(declare-fun m!6240952 () Bool)

(assert (=> b!5181297 m!6240952))

(declare-fun m!6240954 () Bool)

(assert (=> d!1675068 m!6240954))

(assert (=> d!1675068 m!6240192))

(declare-fun m!6240956 () Bool)

(assert (=> d!1675068 m!6240956))

(assert (=> b!5180580 d!1675068))

(declare-fun d!1675070 () Bool)

(assert (=> d!1675070 (isPrefix!5794 (++!13177 lt!2135047 (Cons!60176 (head!11079 (getSuffix!3442 input!5817 lt!2135047)) Nil!60176)) input!5817)))

(declare-fun lt!2135769 () Unit!152123)

(assert (=> d!1675070 (= lt!2135769 (choose!38492 lt!2135047 input!5817))))

(assert (=> d!1675070 (isPrefix!5794 lt!2135047 input!5817)))

(assert (=> d!1675070 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1099 lt!2135047 input!5817) lt!2135769)))

(declare-fun bs!1207328 () Bool)

(assert (= bs!1207328 d!1675070))

(declare-fun m!6240958 () Bool)

(assert (=> bs!1207328 m!6240958))

(assert (=> bs!1207328 m!6239396))

(assert (=> bs!1207328 m!6239412))

(assert (=> bs!1207328 m!6239406))

(assert (=> bs!1207328 m!6239416))

(assert (=> bs!1207328 m!6240170))

(assert (=> bs!1207328 m!6239406))

(assert (=> bs!1207328 m!6239396))

(assert (=> b!5180580 d!1675070))

(assert (=> b!5180580 d!1674718))

(declare-fun d!1675072 () Bool)

(assert (=> d!1675072 (= (head!11079 (getSuffix!3442 input!5817 lt!2135047)) (h!66624 (getSuffix!3442 input!5817 lt!2135047)))))

(assert (=> b!5180580 d!1675072))

(declare-fun d!1675074 () Bool)

(declare-fun lt!2135770 () Int)

(assert (=> d!1675074 (>= lt!2135770 0)))

(declare-fun e!3228213 () Int)

(assert (=> d!1675074 (= lt!2135770 e!3228213)))

(declare-fun c!892984 () Bool)

(assert (=> d!1675074 (= c!892984 ((_ is Nil!60176) (t!373453 (t!373453 testedP!294))))))

(assert (=> d!1675074 (= (size!39697 (t!373453 (t!373453 testedP!294))) lt!2135770)))

(declare-fun b!5181299 () Bool)

(assert (=> b!5181299 (= e!3228213 0)))

(declare-fun b!5181300 () Bool)

(assert (=> b!5181300 (= e!3228213 (+ 1 (size!39697 (t!373453 (t!373453 (t!373453 testedP!294))))))))

(assert (= (and d!1675074 c!892984) b!5181299))

(assert (= (and d!1675074 (not c!892984)) b!5181300))

(declare-fun m!6240960 () Bool)

(assert (=> b!5181300 m!6240960))

(assert (=> b!5180817 d!1675074))

(assert (=> d!1674458 d!1674218))

(assert (=> d!1674458 d!1674142))

(declare-fun d!1675076 () Bool)

(assert (=> d!1675076 (<= (size!39697 lt!2134949) (size!39697 input!5817))))

(assert (=> d!1675076 true))

(declare-fun _$64!732 () Unit!152123)

(assert (=> d!1675076 (= (choose!38494 lt!2134949 input!5817) _$64!732)))

(declare-fun bs!1207329 () Bool)

(assert (= bs!1207329 d!1675076))

(assert (=> bs!1207329 m!6238560))

(assert (=> bs!1207329 m!6238548))

(assert (=> d!1674458 d!1675076))

(assert (=> d!1674458 d!1674208))

(declare-fun b!5181302 () Bool)

(declare-fun e!3228215 () List!60300)

(assert (=> b!5181302 (= e!3228215 (Cons!60176 (h!66624 (t!373453 testedP!294)) (++!13177 (t!373453 (t!373453 testedP!294)) lt!2134946)))))

(declare-fun b!5181301 () Bool)

(assert (=> b!5181301 (= e!3228215 lt!2134946)))

(declare-fun b!5181303 () Bool)

(declare-fun res!2201241 () Bool)

(declare-fun e!3228214 () Bool)

(assert (=> b!5181303 (=> (not res!2201241) (not e!3228214))))

(declare-fun lt!2135771 () List!60300)

(assert (=> b!5181303 (= res!2201241 (= (size!39697 lt!2135771) (+ (size!39697 (t!373453 testedP!294)) (size!39697 lt!2134946))))))

(declare-fun b!5181304 () Bool)

(assert (=> b!5181304 (= e!3228214 (or (not (= lt!2134946 Nil!60176)) (= lt!2135771 (t!373453 testedP!294))))))

(declare-fun d!1675078 () Bool)

(assert (=> d!1675078 e!3228214))

(declare-fun res!2201242 () Bool)

(assert (=> d!1675078 (=> (not res!2201242) (not e!3228214))))

(assert (=> d!1675078 (= res!2201242 (= (content!10669 lt!2135771) ((_ map or) (content!10669 (t!373453 testedP!294)) (content!10669 lt!2134946))))))

(assert (=> d!1675078 (= lt!2135771 e!3228215)))

(declare-fun c!892985 () Bool)

(assert (=> d!1675078 (= c!892985 ((_ is Nil!60176) (t!373453 testedP!294)))))

(assert (=> d!1675078 (= (++!13177 (t!373453 testedP!294) lt!2134946) lt!2135771)))

(assert (= (and d!1675078 c!892985) b!5181301))

(assert (= (and d!1675078 (not c!892985)) b!5181302))

(assert (= (and d!1675078 res!2201242) b!5181303))

(assert (= (and b!5181303 res!2201241) b!5181304))

(declare-fun m!6240962 () Bool)

(assert (=> b!5181302 m!6240962))

(declare-fun m!6240964 () Bool)

(assert (=> b!5181303 m!6240964))

(assert (=> b!5181303 m!6238664))

(assert (=> b!5181303 m!6239890))

(declare-fun m!6240966 () Bool)

(assert (=> d!1675078 m!6240966))

(assert (=> d!1675078 m!6239522))

(assert (=> d!1675078 m!6239894))

(assert (=> b!5180772 d!1675078))

(declare-fun bs!1207330 () Bool)

(declare-fun d!1675080 () Bool)

(assert (= bs!1207330 (and d!1675080 d!1674744)))

(declare-fun lambda!258978 () Int)

(assert (=> bs!1207330 (= (= call!364144 call!364128) (= lambda!258978 lambda!258949))))

(declare-fun bs!1207331 () Bool)

(assert (= bs!1207331 (and d!1675080 d!1674376)))

(assert (=> bs!1207331 (= (= call!364144 (head!11079 (_1!35239 lt!2134953))) (= lambda!258978 lambda!258908))))

(declare-fun bs!1207332 () Bool)

(assert (= bs!1207332 (and d!1675080 d!1675020)))

(assert (=> bs!1207332 (= (= call!364144 (h!66624 (++!13177 testedP!294 (Cons!60176 lt!2134944 Nil!60176)))) (= lambda!258978 lambda!258977))))

(declare-fun bs!1207333 () Bool)

(assert (= bs!1207333 (and d!1675080 d!1674690)))

(assert (=> bs!1207333 (= (= call!364144 (h!66624 (t!373453 testedP!294))) (= lambda!258978 lambda!258945))))

(declare-fun bs!1207334 () Bool)

(assert (= bs!1207334 (and d!1675080 d!1674430)))

(assert (=> bs!1207334 (= (= call!364144 (head!11079 (_1!35239 lt!2134956))) (= lambda!258978 lambda!258912))))

(declare-fun bs!1207335 () Bool)

(assert (= bs!1207335 (and d!1675080 d!1675002)))

(assert (=> bs!1207335 (= (= call!364144 (head!11079 (tail!10178 (_1!35239 lt!2134956)))) (= lambda!258978 lambda!258975))))

(declare-fun bs!1207336 () Bool)

(assert (= bs!1207336 (and d!1675080 d!1674792)))

(assert (=> bs!1207336 (= (= call!364144 (head!11079 (tail!10178 (_1!35239 lt!2134953)))) (= lambda!258978 lambda!258951))))

(declare-fun bs!1207337 () Bool)

(assert (= bs!1207337 (and d!1675080 d!1674436)))

(assert (=> bs!1207337 (= (= call!364144 call!364050) (= lambda!258978 lambda!258913))))

(declare-fun bs!1207338 () Bool)

(assert (= bs!1207338 (and d!1675080 d!1674362)))

(assert (=> bs!1207338 (= (= call!364144 call!364090) (= lambda!258978 lambda!258907))))

(declare-fun bs!1207339 () Bool)

(assert (= bs!1207339 (and d!1675080 d!1674228)))

(assert (=> bs!1207339 (= (= call!364144 lt!2134944) (= lambda!258978 lambda!258882))))

(declare-fun bs!1207340 () Bool)

(assert (= bs!1207340 (and d!1675080 d!1674964)))

(assert (=> bs!1207340 (= (= call!364144 call!364136) (= lambda!258978 lambda!258973))))

(declare-fun bs!1207341 () Bool)

(assert (= bs!1207341 (and d!1675080 d!1674604)))

(assert (=> bs!1207341 (= (= call!364144 (h!66624 lt!2134949)) (= lambda!258978 lambda!258939))))

(declare-fun bs!1207342 () Bool)

(assert (= bs!1207342 (and d!1675080 d!1674572)))

(assert (=> bs!1207342 (= (= call!364144 (h!66624 testedP!294)) (= lambda!258978 lambda!258937))))

(declare-fun bs!1207343 () Bool)

(assert (= bs!1207343 (and d!1675080 d!1674784)))

(assert (=> bs!1207343 (= (= call!364144 (h!66624 (t!373453 lt!2134949))) (= lambda!258978 lambda!258950))))

(declare-fun bs!1207344 () Bool)

(assert (= bs!1207344 (and d!1675080 d!1674942)))

(assert (=> bs!1207344 (= (= call!364144 (head!11079 (_1!35239 (findLongestMatchInnerZipper!317 lt!2134952 lt!2134949 (size!39697 lt!2134949) (getSuffix!3442 input!5817 lt!2134949) input!5817 (size!39697 input!5817))))) (= lambda!258978 lambda!258965))))

(assert (=> d!1675080 true))

(assert (=> d!1675080 (= (derivationStepZipper!1007 lt!2134952 call!364144) (flatMap!464 lt!2134952 lambda!258978))))

(declare-fun bs!1207345 () Bool)

(assert (= bs!1207345 d!1675080))

(declare-fun m!6240968 () Bool)

(assert (=> bs!1207345 m!6240968))

(assert (=> bm!364137 d!1675080))

(declare-fun d!1675082 () Bool)

(declare-fun lt!2135772 () Int)

(assert (=> d!1675082 (>= lt!2135772 0)))

(declare-fun e!3228216 () Int)

(assert (=> d!1675082 (= lt!2135772 e!3228216)))

(declare-fun c!892986 () Bool)

(assert (=> d!1675082 (= c!892986 ((_ is Nil!60176) (t!373453 (t!373453 lt!2134949))))))

(assert (=> d!1675082 (= (size!39697 (t!373453 (t!373453 lt!2134949))) lt!2135772)))

(declare-fun b!5181305 () Bool)

(assert (=> b!5181305 (= e!3228216 0)))

(declare-fun b!5181306 () Bool)

(assert (=> b!5181306 (= e!3228216 (+ 1 (size!39697 (t!373453 (t!373453 (t!373453 lt!2134949))))))))

(assert (= (and d!1675082 c!892986) b!5181305))

(assert (= (and d!1675082 (not c!892986)) b!5181306))

(declare-fun m!6240970 () Bool)

(assert (=> b!5181306 m!6240970))

(assert (=> b!5180713 d!1675082))

(declare-fun d!1675084 () Bool)

(assert (=> d!1675084 (= (flatMap!464 baseZ!62 lambda!258937) (choose!38502 baseZ!62 lambda!258937))))

(declare-fun bs!1207346 () Bool)

(assert (= bs!1207346 d!1675084))

(declare-fun m!6240972 () Bool)

(assert (=> bs!1207346 m!6240972))

(assert (=> d!1674572 d!1675084))

(declare-fun d!1675086 () Bool)

(declare-fun lt!2135773 () Bool)

(assert (=> d!1675086 (= lt!2135773 (exists!1949 (toList!8462 baseZ!62) lambda!258933))))

(assert (=> d!1675086 (= lt!2135773 (choose!38505 baseZ!62 lambda!258933))))

(assert (=> d!1675086 (= (exists!1947 baseZ!62 lambda!258933) lt!2135773)))

(declare-fun bs!1207347 () Bool)

(assert (= bs!1207347 d!1675086))

(declare-fun m!6240974 () Bool)

(assert (=> bs!1207347 m!6240974))

(assert (=> bs!1207347 m!6240974))

(declare-fun m!6240976 () Bool)

(assert (=> bs!1207347 m!6240976))

(declare-fun m!6240978 () Bool)

(assert (=> bs!1207347 m!6240978))

(assert (=> d!1674538 d!1675086))

(declare-fun d!1675088 () Bool)

(assert (=> d!1675088 (= (isEmpty!32220 (getLanguageWitness!1023 lt!2134952)) (not ((_ is Some!14846) (getLanguageWitness!1023 lt!2134952))))))

(assert (=> d!1674274 d!1675088))

(declare-fun bs!1207348 () Bool)

(declare-fun d!1675090 () Bool)

(assert (= bs!1207348 (and d!1675090 d!1674740)))

(declare-fun lambda!258979 () Int)

(assert (=> bs!1207348 (not (= lambda!258979 lambda!258946))))

(declare-fun bs!1207349 () Bool)

(assert (= bs!1207349 (and d!1675090 d!1674160)))

(assert (=> bs!1207349 (not (= lambda!258979 lambda!258876))))

(declare-fun bs!1207350 () Bool)

(assert (= bs!1207350 (and d!1675090 b!5180975)))

(assert (=> bs!1207350 (= lambda!258979 lambda!258948)))

(declare-fun bs!1207351 () Bool)

(assert (= bs!1207351 (and d!1675090 d!1674662)))

(assert (=> bs!1207351 (not (= lambda!258979 lambda!258944))))

(declare-fun bs!1207352 () Bool)

(assert (= bs!1207352 (and d!1675090 d!1674800)))

(assert (=> bs!1207352 (= lambda!258979 lambda!258958)))

(declare-fun bs!1207353 () Bool)

(assert (= bs!1207353 (and d!1675090 b!5180506)))

(assert (=> bs!1207353 (= lambda!258979 lambda!258902)))

(declare-fun bs!1207354 () Bool)

(assert (= bs!1207354 (and d!1675090 d!1674962)))

(assert (=> bs!1207354 (not (= lambda!258979 lambda!258972))))

(declare-fun bs!1207355 () Bool)

(assert (= bs!1207355 (and d!1675090 d!1674818)))

(assert (=> bs!1207355 (not (= lambda!258979 lambda!258959))))

(declare-fun bs!1207356 () Bool)

(assert (= bs!1207356 (and d!1675090 d!1674972)))

(assert (=> bs!1207356 (not (= lambda!258979 lambda!258974))))

(declare-fun bs!1207357 () Bool)

(assert (= bs!1207357 (and d!1675090 b!5180974)))

(assert (=> bs!1207357 (= lambda!258979 lambda!258947)))

(declare-fun bs!1207358 () Bool)

(assert (= bs!1207358 (and d!1675090 d!1674274)))

(assert (=> bs!1207358 (not (= lambda!258979 lambda!258901))))

(declare-fun bs!1207359 () Bool)

(assert (= bs!1207359 (and d!1675090 d!1674960)))

(assert (=> bs!1207359 (not (= lambda!258979 lambda!258971))))

(declare-fun bs!1207360 () Bool)

(assert (= bs!1207360 (and d!1675090 d!1674640)))

(assert (=> bs!1207360 (not (= lambda!258979 lambda!258943))))

(declare-fun bs!1207361 () Bool)

(assert (= bs!1207361 (and d!1675090 b!5180507)))

(assert (=> bs!1207361 (= lambda!258979 lambda!258903)))

(declare-fun bs!1207362 () Bool)

(assert (= bs!1207362 (and d!1675090 b!5180758)))

(assert (=> bs!1207362 (= lambda!258979 lambda!258935)))

(declare-fun bs!1207363 () Bool)

(assert (= bs!1207363 (and d!1675090 d!1674908)))

(assert (=> bs!1207363 (not (= lambda!258979 lambda!258964))))

(declare-fun bs!1207364 () Bool)

(assert (= bs!1207364 (and d!1675090 b!5181192)))

(assert (=> bs!1207364 (= lambda!258979 lambda!258968)))

(declare-fun bs!1207365 () Bool)

(assert (= bs!1207365 (and d!1675090 d!1674556)))

(assert (=> bs!1207365 (not (= lambda!258979 lambda!258934))))

(declare-fun bs!1207366 () Bool)

(assert (= bs!1207366 (and d!1675090 d!1674590)))

(assert (=> bs!1207366 (not (= lambda!258979 lambda!258938))))

(declare-fun bs!1207367 () Bool)

(assert (= bs!1207367 (and d!1675090 b!5181191)))

(assert (=> bs!1207367 (= lambda!258979 lambda!258967)))

(declare-fun bs!1207368 () Bool)

(assert (= bs!1207368 (and d!1675090 b!5180759)))

(assert (=> bs!1207368 (= lambda!258979 lambda!258936)))

(declare-fun bs!1207369 () Bool)

(assert (= bs!1207369 (and d!1675090 d!1674948)))

(assert (=> bs!1207369 (not (= lambda!258979 lambda!258966))))

(declare-fun bs!1207370 () Bool)

(assert (= bs!1207370 (and d!1675090 d!1674538)))

(assert (=> bs!1207370 (not (= lambda!258979 lambda!258933))))

(declare-fun bs!1207371 () Bool)

(assert (= bs!1207371 (and d!1675090 d!1674848)))

(assert (=> bs!1207371 (not (= lambda!258979 lambda!258963))))

(declare-fun bs!1207372 () Bool)

(assert (= bs!1207372 (and d!1675090 d!1674842)))

(assert (=> bs!1207372 (not (= lambda!258979 lambda!258962))))

(declare-fun lt!2135774 () Option!14847)

(assert (=> d!1675090 (= (isDefined!11550 lt!2135774) (exists!1947 lt!2134952 lambda!258979))))

(declare-fun e!3228217 () Option!14847)

(assert (=> d!1675090 (= lt!2135774 e!3228217)))

(declare-fun c!892987 () Bool)

(assert (=> d!1675090 (= c!892987 (exists!1947 lt!2134952 lambda!258979))))

(assert (=> d!1675090 (= (getLanguageWitness!1023 lt!2134952) lt!2135774)))

(declare-fun b!5181307 () Bool)

(assert (=> b!5181307 (= e!3228217 (getLanguageWitness!1025 (getWitness!859 lt!2134952 lambda!258979)))))

(declare-fun b!5181308 () Bool)

(assert (=> b!5181308 (= e!3228217 None!14846)))

(assert (= (and d!1675090 c!892987) b!5181307))

(assert (= (and d!1675090 (not c!892987)) b!5181308))

(declare-fun m!6240980 () Bool)

(assert (=> d!1675090 m!6240980))

(declare-fun m!6240982 () Bool)

(assert (=> d!1675090 m!6240982))

(assert (=> d!1675090 m!6240982))

(declare-fun m!6240984 () Bool)

(assert (=> b!5181307 m!6240984))

(assert (=> b!5181307 m!6240984))

(declare-fun m!6240986 () Bool)

(assert (=> b!5181307 m!6240986))

(assert (=> d!1674274 d!1675090))

(declare-fun d!1675092 () Bool)

(declare-fun lt!2135775 () Bool)

(assert (=> d!1675092 (= lt!2135775 (forall!14175 (toList!8462 lt!2134952) lambda!258901))))

(assert (=> d!1675092 (= lt!2135775 (choose!38508 lt!2134952 lambda!258901))))

(assert (=> d!1675092 (= (forall!14173 lt!2134952 lambda!258901) lt!2135775)))

(declare-fun bs!1207373 () Bool)

(assert (= bs!1207373 d!1675092))

(assert (=> bs!1207373 m!6239202))

(assert (=> bs!1207373 m!6239202))

(declare-fun m!6240988 () Bool)

(assert (=> bs!1207373 m!6240988))

(declare-fun m!6240990 () Bool)

(assert (=> bs!1207373 m!6240990))

(assert (=> d!1674274 d!1675092))

(declare-fun bs!1207374 () Bool)

(declare-fun d!1675094 () Bool)

(assert (= bs!1207374 (and d!1675094 d!1674740)))

(declare-fun lambda!258980 () Int)

(assert (=> bs!1207374 (not (= lambda!258980 lambda!258946))))

(declare-fun bs!1207375 () Bool)

(assert (= bs!1207375 (and d!1675094 d!1674160)))

(assert (=> bs!1207375 (not (= lambda!258980 lambda!258876))))

(declare-fun bs!1207376 () Bool)

(assert (= bs!1207376 (and d!1675094 b!5180975)))

(assert (=> bs!1207376 (not (= lambda!258980 lambda!258948))))

(declare-fun bs!1207377 () Bool)

(assert (= bs!1207377 (and d!1675094 d!1674662)))

(assert (=> bs!1207377 (not (= lambda!258980 lambda!258944))))

(declare-fun bs!1207378 () Bool)

(assert (= bs!1207378 (and d!1675094 d!1674800)))

(assert (=> bs!1207378 (not (= lambda!258980 lambda!258958))))

(declare-fun bs!1207379 () Bool)

(assert (= bs!1207379 (and d!1675094 b!5180506)))

(assert (=> bs!1207379 (not (= lambda!258980 lambda!258902))))

(declare-fun bs!1207380 () Bool)

(assert (= bs!1207380 (and d!1675094 d!1674962)))

(assert (=> bs!1207380 (not (= lambda!258980 lambda!258972))))

(declare-fun bs!1207381 () Bool)

(assert (= bs!1207381 (and d!1675094 d!1674818)))

(assert (=> bs!1207381 (= (= lambda!258901 lambda!258876) (= lambda!258980 lambda!258959))))

(declare-fun bs!1207382 () Bool)

(assert (= bs!1207382 (and d!1675094 d!1674972)))

(assert (=> bs!1207382 (= lambda!258980 lambda!258974)))

(declare-fun bs!1207383 () Bool)

(assert (= bs!1207383 (and d!1675094 b!5180974)))

(assert (=> bs!1207383 (not (= lambda!258980 lambda!258947))))

(declare-fun bs!1207384 () Bool)

(assert (= bs!1207384 (and d!1675094 d!1674274)))

(assert (=> bs!1207384 (not (= lambda!258980 lambda!258901))))

(declare-fun bs!1207385 () Bool)

(assert (= bs!1207385 (and d!1675094 d!1675090)))

(assert (=> bs!1207385 (not (= lambda!258980 lambda!258979))))

(declare-fun bs!1207386 () Bool)

(assert (= bs!1207386 (and d!1675094 d!1674960)))

(assert (=> bs!1207386 (= (= lambda!258901 lambda!258934) (= lambda!258980 lambda!258971))))

(declare-fun bs!1207387 () Bool)

(assert (= bs!1207387 (and d!1675094 d!1674640)))

(assert (=> bs!1207387 (= (= lambda!258901 (ite c!892814 lambda!258935 lambda!258936)) (= lambda!258980 lambda!258943))))

(declare-fun bs!1207388 () Bool)

(assert (= bs!1207388 (and d!1675094 b!5180507)))

(assert (=> bs!1207388 (not (= lambda!258980 lambda!258903))))

(declare-fun bs!1207389 () Bool)

(assert (= bs!1207389 (and d!1675094 b!5180758)))

(assert (=> bs!1207389 (not (= lambda!258980 lambda!258935))))

(declare-fun bs!1207390 () Bool)

(assert (= bs!1207390 (and d!1675094 d!1674908)))

(assert (=> bs!1207390 (not (= lambda!258980 lambda!258964))))

(declare-fun bs!1207391 () Bool)

(assert (= bs!1207391 (and d!1675094 b!5181192)))

(assert (=> bs!1207391 (not (= lambda!258980 lambda!258968))))

(declare-fun bs!1207392 () Bool)

(assert (= bs!1207392 (and d!1675094 d!1674556)))

(assert (=> bs!1207392 (not (= lambda!258980 lambda!258934))))

(declare-fun bs!1207393 () Bool)

(assert (= bs!1207393 (and d!1675094 d!1674590)))

(assert (=> bs!1207393 (not (= lambda!258980 lambda!258938))))

(declare-fun bs!1207394 () Bool)

(assert (= bs!1207394 (and d!1675094 b!5181191)))

(assert (=> bs!1207394 (not (= lambda!258980 lambda!258967))))

(declare-fun bs!1207395 () Bool)

(assert (= bs!1207395 (and d!1675094 b!5180759)))

(assert (=> bs!1207395 (not (= lambda!258980 lambda!258936))))

(declare-fun bs!1207396 () Bool)

(assert (= bs!1207396 (and d!1675094 d!1674948)))

(assert (=> bs!1207396 (not (= lambda!258980 lambda!258966))))

(declare-fun bs!1207397 () Bool)

(assert (= bs!1207397 (and d!1675094 d!1674538)))

(assert (=> bs!1207397 (not (= lambda!258980 lambda!258933))))

(declare-fun bs!1207398 () Bool)

(assert (= bs!1207398 (and d!1675094 d!1674848)))

(assert (=> bs!1207398 (= (= lambda!258901 (ite c!892731 lambda!258902 lambda!258903)) (= lambda!258980 lambda!258963))))

(declare-fun bs!1207399 () Bool)

(assert (= bs!1207399 (and d!1675094 d!1674842)))

(assert (=> bs!1207399 (= (= lambda!258901 lambda!258934) (= lambda!258980 lambda!258962))))

(assert (=> d!1675094 true))

(assert (=> d!1675094 (< (dynLambda!23890 order!27047 lambda!258901) (dynLambda!23890 order!27047 lambda!258980))))

(assert (=> d!1675094 (not (exists!1949 lt!2135323 lambda!258980))))

(declare-fun lt!2135776 () Unit!152123)

(assert (=> d!1675094 (= lt!2135776 (choose!38510 lt!2135323 lambda!258901))))

(assert (=> d!1675094 (forall!14175 lt!2135323 lambda!258901)))

(assert (=> d!1675094 (= (lemmaForallThenNotExists!449 lt!2135323 lambda!258901) lt!2135776)))

(declare-fun bs!1207400 () Bool)

(assert (= bs!1207400 d!1675094))

(declare-fun m!6240992 () Bool)

(assert (=> bs!1207400 m!6240992))

(declare-fun m!6240994 () Bool)

(assert (=> bs!1207400 m!6240994))

(declare-fun m!6240996 () Bool)

(assert (=> bs!1207400 m!6240996))

(assert (=> b!5180507 d!1675094))

(declare-fun b!5181310 () Bool)

(declare-fun e!3228219 () List!60300)

(assert (=> b!5181310 (= e!3228219 (Cons!60176 (h!66624 (t!373453 testedP!294)) (++!13177 (t!373453 (t!373453 testedP!294)) lt!2134979)))))

(declare-fun b!5181309 () Bool)

(assert (=> b!5181309 (= e!3228219 lt!2134979)))

(declare-fun b!5181311 () Bool)

(declare-fun res!2201243 () Bool)

(declare-fun e!3228218 () Bool)

(assert (=> b!5181311 (=> (not res!2201243) (not e!3228218))))

(declare-fun lt!2135777 () List!60300)

(assert (=> b!5181311 (= res!2201243 (= (size!39697 lt!2135777) (+ (size!39697 (t!373453 testedP!294)) (size!39697 lt!2134979))))))

(declare-fun b!5181312 () Bool)

(assert (=> b!5181312 (= e!3228218 (or (not (= lt!2134979 Nil!60176)) (= lt!2135777 (t!373453 testedP!294))))))

(declare-fun d!1675096 () Bool)

(assert (=> d!1675096 e!3228218))

(declare-fun res!2201244 () Bool)

(assert (=> d!1675096 (=> (not res!2201244) (not e!3228218))))

(assert (=> d!1675096 (= res!2201244 (= (content!10669 lt!2135777) ((_ map or) (content!10669 (t!373453 testedP!294)) (content!10669 lt!2134979))))))

(assert (=> d!1675096 (= lt!2135777 e!3228219)))

(declare-fun c!892988 () Bool)

(assert (=> d!1675096 (= c!892988 ((_ is Nil!60176) (t!373453 testedP!294)))))

(assert (=> d!1675096 (= (++!13177 (t!373453 testedP!294) lt!2134979) lt!2135777)))

(assert (= (and d!1675096 c!892988) b!5181309))

(assert (= (and d!1675096 (not c!892988)) b!5181310))

(assert (= (and d!1675096 res!2201244) b!5181311))

(assert (= (and b!5181311 res!2201243) b!5181312))

(declare-fun m!6240998 () Bool)

(assert (=> b!5181310 m!6240998))

(declare-fun m!6241000 () Bool)

(assert (=> b!5181311 m!6241000))

(assert (=> b!5181311 m!6238664))

(assert (=> b!5181311 m!6239758))

(declare-fun m!6241002 () Bool)

(assert (=> d!1675096 m!6241002))

(assert (=> d!1675096 m!6239522))

(assert (=> d!1675096 m!6239762))

(assert (=> b!5180723 d!1675096))

(assert (=> d!1674566 d!1674560))

(assert (=> d!1674566 d!1674568))

(declare-fun d!1675098 () Bool)

(assert (=> d!1675098 (isPrefix!5794 testedP!294 (++!13177 testedP!294 lt!2134946))))

(assert (=> d!1675098 true))

(declare-fun _$46!2011 () Unit!152123)

(assert (=> d!1675098 (= (choose!38497 testedP!294 lt!2134946) _$46!2011)))

(declare-fun bs!1207401 () Bool)

(assert (= bs!1207401 d!1675098))

(assert (=> bs!1207401 m!6238630))

(assert (=> bs!1207401 m!6238630))

(assert (=> bs!1207401 m!6238632))

(assert (=> d!1674566 d!1675098))

(declare-fun d!1675100 () Bool)

(declare-fun lt!2135778 () Bool)

(assert (=> d!1675100 (= lt!2135778 (exists!1949 (toList!8462 lt!2134952) lambda!258938))))

(assert (=> d!1675100 (= lt!2135778 (choose!38505 lt!2134952 lambda!258938))))

(assert (=> d!1675100 (= (exists!1947 lt!2134952 lambda!258938) lt!2135778)))

(declare-fun bs!1207402 () Bool)

(assert (= bs!1207402 d!1675100))

(assert (=> bs!1207402 m!6239202))

(assert (=> bs!1207402 m!6239202))

(declare-fun m!6241004 () Bool)

(assert (=> bs!1207402 m!6241004))

(declare-fun m!6241006 () Bool)

(assert (=> bs!1207402 m!6241006))

(assert (=> d!1674590 d!1675100))

(declare-fun bs!1207403 () Bool)

(declare-fun d!1675102 () Bool)

(assert (= bs!1207403 (and d!1675102 d!1674740)))

(declare-fun lambda!258981 () Int)

(assert (=> bs!1207403 (not (= lambda!258981 lambda!258946))))

(declare-fun bs!1207404 () Bool)

(assert (= bs!1207404 (and d!1675102 d!1674160)))

(assert (=> bs!1207404 (= lambda!258981 lambda!258876)))

(declare-fun bs!1207405 () Bool)

(assert (= bs!1207405 (and d!1675102 b!5180975)))

(assert (=> bs!1207405 (not (= lambda!258981 lambda!258948))))

(declare-fun bs!1207406 () Bool)

(assert (= bs!1207406 (and d!1675102 d!1674662)))

(assert (=> bs!1207406 (= lambda!258981 lambda!258944)))

(declare-fun bs!1207407 () Bool)

(assert (= bs!1207407 (and d!1675102 d!1674800)))

(assert (=> bs!1207407 (not (= lambda!258981 lambda!258958))))

(declare-fun bs!1207408 () Bool)

(assert (= bs!1207408 (and d!1675102 b!5180506)))

(assert (=> bs!1207408 (not (= lambda!258981 lambda!258902))))

(declare-fun bs!1207409 () Bool)

(assert (= bs!1207409 (and d!1675102 d!1675094)))

(assert (=> bs!1207409 (not (= lambda!258981 lambda!258980))))

(declare-fun bs!1207410 () Bool)

(assert (= bs!1207410 (and d!1675102 d!1674962)))

(assert (=> bs!1207410 (= lambda!258981 lambda!258972)))

(declare-fun bs!1207411 () Bool)

(assert (= bs!1207411 (and d!1675102 d!1674818)))

(assert (=> bs!1207411 (not (= lambda!258981 lambda!258959))))

(declare-fun bs!1207412 () Bool)

(assert (= bs!1207412 (and d!1675102 d!1674972)))

(assert (=> bs!1207412 (not (= lambda!258981 lambda!258974))))

(declare-fun bs!1207413 () Bool)

(assert (= bs!1207413 (and d!1675102 b!5180974)))

(assert (=> bs!1207413 (not (= lambda!258981 lambda!258947))))

(declare-fun bs!1207414 () Bool)

(assert (= bs!1207414 (and d!1675102 d!1674274)))

(assert (=> bs!1207414 (not (= lambda!258981 lambda!258901))))

(declare-fun bs!1207415 () Bool)

(assert (= bs!1207415 (and d!1675102 d!1675090)))

(assert (=> bs!1207415 (not (= lambda!258981 lambda!258979))))

(declare-fun bs!1207416 () Bool)

(assert (= bs!1207416 (and d!1675102 d!1674960)))

(assert (=> bs!1207416 (not (= lambda!258981 lambda!258971))))

(declare-fun bs!1207417 () Bool)

(assert (= bs!1207417 (and d!1675102 d!1674640)))

(assert (=> bs!1207417 (not (= lambda!258981 lambda!258943))))

(declare-fun bs!1207418 () Bool)

(assert (= bs!1207418 (and d!1675102 b!5180507)))

(assert (=> bs!1207418 (not (= lambda!258981 lambda!258903))))

(declare-fun bs!1207419 () Bool)

(assert (= bs!1207419 (and d!1675102 b!5180758)))

(assert (=> bs!1207419 (not (= lambda!258981 lambda!258935))))

(declare-fun bs!1207420 () Bool)

(assert (= bs!1207420 (and d!1675102 d!1674908)))

(assert (=> bs!1207420 (= lambda!258981 lambda!258964)))

(declare-fun bs!1207421 () Bool)

(assert (= bs!1207421 (and d!1675102 b!5181192)))

(assert (=> bs!1207421 (not (= lambda!258981 lambda!258968))))

(declare-fun bs!1207422 () Bool)

(assert (= bs!1207422 (and d!1675102 d!1674556)))

(assert (=> bs!1207422 (not (= lambda!258981 lambda!258934))))

(declare-fun bs!1207423 () Bool)

(assert (= bs!1207423 (and d!1675102 d!1674590)))

(assert (=> bs!1207423 (= lambda!258981 lambda!258938)))

(declare-fun bs!1207424 () Bool)

(assert (= bs!1207424 (and d!1675102 b!5181191)))

(assert (=> bs!1207424 (not (= lambda!258981 lambda!258967))))

(declare-fun bs!1207425 () Bool)

(assert (= bs!1207425 (and d!1675102 b!5180759)))

(assert (=> bs!1207425 (not (= lambda!258981 lambda!258936))))

(declare-fun bs!1207426 () Bool)

(assert (= bs!1207426 (and d!1675102 d!1674948)))

(assert (=> bs!1207426 (not (= lambda!258981 lambda!258966))))

(declare-fun bs!1207427 () Bool)

(assert (= bs!1207427 (and d!1675102 d!1674538)))

(assert (=> bs!1207427 (= lambda!258981 lambda!258933)))

(declare-fun bs!1207428 () Bool)

(assert (= bs!1207428 (and d!1675102 d!1674848)))

(assert (=> bs!1207428 (not (= lambda!258981 lambda!258963))))

(declare-fun bs!1207429 () Bool)

(assert (= bs!1207429 (and d!1675102 d!1674842)))

(assert (=> bs!1207429 (not (= lambda!258981 lambda!258962))))

(assert (=> d!1675102 (= (nullableZipper!1199 call!364088) (exists!1947 call!364088 lambda!258981))))

(declare-fun bs!1207430 () Bool)

(assert (= bs!1207430 d!1675102))

(declare-fun m!6241008 () Bool)

(assert (=> bs!1207430 m!6241008))

(assert (=> bm!364127 d!1675102))

(assert (=> bm!364134 d!1674496))

(declare-fun b!5181313 () Bool)

(declare-fun e!3228220 () Bool)

(declare-fun tp!1452978 () Bool)

(declare-fun tp!1452979 () Bool)

(assert (=> b!5181313 (= e!3228220 (and tp!1452978 tp!1452979))))

(assert (=> b!5180818 (= tp!1452939 e!3228220)))

(assert (= (and b!5180818 ((_ is Cons!60175) (exprs!4545 setElem!32413))) b!5181313))

(declare-fun b!5181314 () Bool)

(declare-fun e!3228221 () Bool)

(declare-fun tp!1452980 () Bool)

(assert (=> b!5181314 (= e!3228221 (and tp_is_empty!38575 tp!1452980))))

(assert (=> b!5180841 (= tp!1452968 e!3228221)))

(assert (= (and b!5180841 ((_ is Cons!60176) (t!373453 (t!373453 (t!373453 input!5817))))) b!5181314))

(declare-fun b!5181316 () Bool)

(declare-fun e!3228222 () Bool)

(declare-fun tp!1452982 () Bool)

(declare-fun tp!1452985 () Bool)

(assert (=> b!5181316 (= e!3228222 (and tp!1452982 tp!1452985))))

(declare-fun b!5181317 () Bool)

(declare-fun tp!1452981 () Bool)

(assert (=> b!5181317 (= e!3228222 tp!1452981)))

(declare-fun b!5181318 () Bool)

(declare-fun tp!1452984 () Bool)

(declare-fun tp!1452983 () Bool)

(assert (=> b!5181318 (= e!3228222 (and tp!1452984 tp!1452983))))

(assert (=> b!5180836 (= tp!1452960 e!3228222)))

(declare-fun b!5181315 () Bool)

(assert (=> b!5181315 (= e!3228222 tp_is_empty!38575)))

(assert (= (and b!5180836 ((_ is ElementMatch!14661) (regOne!29834 (h!66623 (exprs!4545 setElem!32402))))) b!5181315))

(assert (= (and b!5180836 ((_ is Concat!23506) (regOne!29834 (h!66623 (exprs!4545 setElem!32402))))) b!5181316))

(assert (= (and b!5180836 ((_ is Star!14661) (regOne!29834 (h!66623 (exprs!4545 setElem!32402))))) b!5181317))

(assert (= (and b!5180836 ((_ is Union!14661) (regOne!29834 (h!66623 (exprs!4545 setElem!32402))))) b!5181318))

(declare-fun b!5181320 () Bool)

(declare-fun e!3228223 () Bool)

(declare-fun tp!1452987 () Bool)

(declare-fun tp!1452990 () Bool)

(assert (=> b!5181320 (= e!3228223 (and tp!1452987 tp!1452990))))

(declare-fun b!5181321 () Bool)

(declare-fun tp!1452986 () Bool)

(assert (=> b!5181321 (= e!3228223 tp!1452986)))

(declare-fun b!5181322 () Bool)

(declare-fun tp!1452989 () Bool)

(declare-fun tp!1452988 () Bool)

(assert (=> b!5181322 (= e!3228223 (and tp!1452989 tp!1452988))))

(assert (=> b!5180836 (= tp!1452963 e!3228223)))

(declare-fun b!5181319 () Bool)

(assert (=> b!5181319 (= e!3228223 tp_is_empty!38575)))

(assert (= (and b!5180836 ((_ is ElementMatch!14661) (regTwo!29834 (h!66623 (exprs!4545 setElem!32402))))) b!5181319))

(assert (= (and b!5180836 ((_ is Concat!23506) (regTwo!29834 (h!66623 (exprs!4545 setElem!32402))))) b!5181320))

(assert (= (and b!5180836 ((_ is Star!14661) (regTwo!29834 (h!66623 (exprs!4545 setElem!32402))))) b!5181321))

(assert (= (and b!5180836 ((_ is Union!14661) (regTwo!29834 (h!66623 (exprs!4545 setElem!32402))))) b!5181322))

(declare-fun condSetEmpty!32418 () Bool)

(assert (=> setNonEmpty!32413 (= condSetEmpty!32418 (= setRest!32413 ((as const (Array Context!8090 Bool)) false)))))

(declare-fun setRes!32418 () Bool)

(assert (=> setNonEmpty!32413 (= tp!1452938 setRes!32418)))

(declare-fun setIsEmpty!32418 () Bool)

(assert (=> setIsEmpty!32418 setRes!32418))

(declare-fun tp!1452991 () Bool)

(declare-fun setElem!32418 () Context!8090)

(declare-fun setNonEmpty!32418 () Bool)

(declare-fun e!3228224 () Bool)

(assert (=> setNonEmpty!32418 (= setRes!32418 (and tp!1452991 (inv!79899 setElem!32418) e!3228224))))

(declare-fun setRest!32418 () (InoxSet Context!8090))

(assert (=> setNonEmpty!32418 (= setRest!32413 ((_ map or) (store ((as const (Array Context!8090 Bool)) false) setElem!32418 true) setRest!32418))))

(declare-fun b!5181323 () Bool)

(declare-fun tp!1452992 () Bool)

(assert (=> b!5181323 (= e!3228224 tp!1452992)))

(assert (= (and setNonEmpty!32413 condSetEmpty!32418) setIsEmpty!32418))

(assert (= (and setNonEmpty!32413 (not condSetEmpty!32418)) setNonEmpty!32418))

(assert (= setNonEmpty!32418 b!5181323))

(declare-fun m!6241010 () Bool)

(assert (=> setNonEmpty!32418 m!6241010))

(declare-fun b!5181325 () Bool)

(declare-fun e!3228225 () Bool)

(declare-fun tp!1452994 () Bool)

(declare-fun tp!1452997 () Bool)

(assert (=> b!5181325 (= e!3228225 (and tp!1452994 tp!1452997))))

(declare-fun b!5181326 () Bool)

(declare-fun tp!1452993 () Bool)

(assert (=> b!5181326 (= e!3228225 tp!1452993)))

(declare-fun b!5181327 () Bool)

(declare-fun tp!1452996 () Bool)

(declare-fun tp!1452995 () Bool)

(assert (=> b!5181327 (= e!3228225 (and tp!1452996 tp!1452995))))

(assert (=> b!5180833 (= tp!1452955 e!3228225)))

(declare-fun b!5181324 () Bool)

(assert (=> b!5181324 (= e!3228225 tp_is_empty!38575)))

(assert (= (and b!5180833 ((_ is ElementMatch!14661) (h!66623 (t!373452 (exprs!4545 setElem!32401))))) b!5181324))

(assert (= (and b!5180833 ((_ is Concat!23506) (h!66623 (t!373452 (exprs!4545 setElem!32401))))) b!5181325))

(assert (= (and b!5180833 ((_ is Star!14661) (h!66623 (t!373452 (exprs!4545 setElem!32401))))) b!5181326))

(assert (= (and b!5180833 ((_ is Union!14661) (h!66623 (t!373452 (exprs!4545 setElem!32401))))) b!5181327))

(declare-fun b!5181328 () Bool)

(declare-fun e!3228226 () Bool)

(declare-fun tp!1452998 () Bool)

(declare-fun tp!1452999 () Bool)

(assert (=> b!5181328 (= e!3228226 (and tp!1452998 tp!1452999))))

(assert (=> b!5180833 (= tp!1452956 e!3228226)))

(assert (= (and b!5180833 ((_ is Cons!60175) (t!373452 (t!373452 (exprs!4545 setElem!32401))))) b!5181328))

(declare-fun b!5181330 () Bool)

(declare-fun e!3228227 () Bool)

(declare-fun tp!1453001 () Bool)

(declare-fun tp!1453004 () Bool)

(assert (=> b!5181330 (= e!3228227 (and tp!1453001 tp!1453004))))

(declare-fun b!5181331 () Bool)

(declare-fun tp!1453000 () Bool)

(assert (=> b!5181331 (= e!3228227 tp!1453000)))

(declare-fun b!5181332 () Bool)

(declare-fun tp!1453003 () Bool)

(declare-fun tp!1453002 () Bool)

(assert (=> b!5181332 (= e!3228227 (and tp!1453003 tp!1453002))))

(assert (=> b!5180839 (= tp!1452964 e!3228227)))

(declare-fun b!5181329 () Bool)

(assert (=> b!5181329 (= e!3228227 tp_is_empty!38575)))

(assert (= (and b!5180839 ((_ is ElementMatch!14661) (h!66623 (t!373452 (exprs!4545 setElem!32402))))) b!5181329))

(assert (= (and b!5180839 ((_ is Concat!23506) (h!66623 (t!373452 (exprs!4545 setElem!32402))))) b!5181330))

(assert (= (and b!5180839 ((_ is Star!14661) (h!66623 (t!373452 (exprs!4545 setElem!32402))))) b!5181331))

(assert (= (and b!5180839 ((_ is Union!14661) (h!66623 (t!373452 (exprs!4545 setElem!32402))))) b!5181332))

(declare-fun b!5181333 () Bool)

(declare-fun e!3228228 () Bool)

(declare-fun tp!1453005 () Bool)

(declare-fun tp!1453006 () Bool)

(assert (=> b!5181333 (= e!3228228 (and tp!1453005 tp!1453006))))

(assert (=> b!5180839 (= tp!1452965 e!3228228)))

(assert (= (and b!5180839 ((_ is Cons!60175) (t!373452 (t!373452 (exprs!4545 setElem!32402))))) b!5181333))

(declare-fun b!5181334 () Bool)

(declare-fun e!3228229 () Bool)

(declare-fun tp!1453007 () Bool)

(assert (=> b!5181334 (= e!3228229 (and tp_is_empty!38575 tp!1453007))))

(assert (=> b!5180843 (= tp!1452971 e!3228229)))

(assert (= (and b!5180843 ((_ is Cons!60176) (t!373453 (t!373453 (t!373453 testedP!294))))) b!5181334))

(declare-fun b!5181335 () Bool)

(declare-fun e!3228230 () Bool)

(declare-fun tp!1453008 () Bool)

(declare-fun tp!1453009 () Bool)

(assert (=> b!5181335 (= e!3228230 (and tp!1453008 tp!1453009))))

(assert (=> b!5180840 (= tp!1452967 e!3228230)))

(assert (= (and b!5180840 ((_ is Cons!60175) (exprs!4545 setElem!32414))) b!5181335))

(declare-fun b!5181337 () Bool)

(declare-fun e!3228231 () Bool)

(declare-fun tp!1453011 () Bool)

(declare-fun tp!1453014 () Bool)

(assert (=> b!5181337 (= e!3228231 (and tp!1453011 tp!1453014))))

(declare-fun b!5181338 () Bool)

(declare-fun tp!1453010 () Bool)

(assert (=> b!5181338 (= e!3228231 tp!1453010)))

(declare-fun b!5181339 () Bool)

(declare-fun tp!1453013 () Bool)

(declare-fun tp!1453012 () Bool)

(assert (=> b!5181339 (= e!3228231 (and tp!1453013 tp!1453012))))

(assert (=> b!5180832 (= tp!1452953 e!3228231)))

(declare-fun b!5181336 () Bool)

(assert (=> b!5181336 (= e!3228231 tp_is_empty!38575)))

(assert (= (and b!5180832 ((_ is ElementMatch!14661) (regOne!29835 (h!66623 (exprs!4545 setElem!32401))))) b!5181336))

(assert (= (and b!5180832 ((_ is Concat!23506) (regOne!29835 (h!66623 (exprs!4545 setElem!32401))))) b!5181337))

(assert (= (and b!5180832 ((_ is Star!14661) (regOne!29835 (h!66623 (exprs!4545 setElem!32401))))) b!5181338))

(assert (= (and b!5180832 ((_ is Union!14661) (regOne!29835 (h!66623 (exprs!4545 setElem!32401))))) b!5181339))

(declare-fun b!5181341 () Bool)

(declare-fun e!3228232 () Bool)

(declare-fun tp!1453016 () Bool)

(declare-fun tp!1453019 () Bool)

(assert (=> b!5181341 (= e!3228232 (and tp!1453016 tp!1453019))))

(declare-fun b!5181342 () Bool)

(declare-fun tp!1453015 () Bool)

(assert (=> b!5181342 (= e!3228232 tp!1453015)))

(declare-fun b!5181343 () Bool)

(declare-fun tp!1453018 () Bool)

(declare-fun tp!1453017 () Bool)

(assert (=> b!5181343 (= e!3228232 (and tp!1453018 tp!1453017))))

(assert (=> b!5180832 (= tp!1452952 e!3228232)))

(declare-fun b!5181340 () Bool)

(assert (=> b!5181340 (= e!3228232 tp_is_empty!38575)))

(assert (= (and b!5180832 ((_ is ElementMatch!14661) (regTwo!29835 (h!66623 (exprs!4545 setElem!32401))))) b!5181340))

(assert (= (and b!5180832 ((_ is Concat!23506) (regTwo!29835 (h!66623 (exprs!4545 setElem!32401))))) b!5181341))

(assert (= (and b!5180832 ((_ is Star!14661) (regTwo!29835 (h!66623 (exprs!4545 setElem!32401))))) b!5181342))

(assert (= (and b!5180832 ((_ is Union!14661) (regTwo!29835 (h!66623 (exprs!4545 setElem!32401))))) b!5181343))

(declare-fun b!5181345 () Bool)

(declare-fun e!3228233 () Bool)

(declare-fun tp!1453021 () Bool)

(declare-fun tp!1453024 () Bool)

(assert (=> b!5181345 (= e!3228233 (and tp!1453021 tp!1453024))))

(declare-fun b!5181346 () Bool)

(declare-fun tp!1453020 () Bool)

(assert (=> b!5181346 (= e!3228233 tp!1453020)))

(declare-fun b!5181347 () Bool)

(declare-fun tp!1453023 () Bool)

(declare-fun tp!1453022 () Bool)

(assert (=> b!5181347 (= e!3228233 (and tp!1453023 tp!1453022))))

(assert (=> b!5180830 (= tp!1452951 e!3228233)))

(declare-fun b!5181344 () Bool)

(assert (=> b!5181344 (= e!3228233 tp_is_empty!38575)))

(assert (= (and b!5180830 ((_ is ElementMatch!14661) (regOne!29834 (h!66623 (exprs!4545 setElem!32401))))) b!5181344))

(assert (= (and b!5180830 ((_ is Concat!23506) (regOne!29834 (h!66623 (exprs!4545 setElem!32401))))) b!5181345))

(assert (= (and b!5180830 ((_ is Star!14661) (regOne!29834 (h!66623 (exprs!4545 setElem!32401))))) b!5181346))

(assert (= (and b!5180830 ((_ is Union!14661) (regOne!29834 (h!66623 (exprs!4545 setElem!32401))))) b!5181347))

(declare-fun b!5181349 () Bool)

(declare-fun e!3228234 () Bool)

(declare-fun tp!1453026 () Bool)

(declare-fun tp!1453029 () Bool)

(assert (=> b!5181349 (= e!3228234 (and tp!1453026 tp!1453029))))

(declare-fun b!5181350 () Bool)

(declare-fun tp!1453025 () Bool)

(assert (=> b!5181350 (= e!3228234 tp!1453025)))

(declare-fun b!5181351 () Bool)

(declare-fun tp!1453028 () Bool)

(declare-fun tp!1453027 () Bool)

(assert (=> b!5181351 (= e!3228234 (and tp!1453028 tp!1453027))))

(assert (=> b!5180830 (= tp!1452954 e!3228234)))

(declare-fun b!5181348 () Bool)

(assert (=> b!5181348 (= e!3228234 tp_is_empty!38575)))

(assert (= (and b!5180830 ((_ is ElementMatch!14661) (regTwo!29834 (h!66623 (exprs!4545 setElem!32401))))) b!5181348))

(assert (= (and b!5180830 ((_ is Concat!23506) (regTwo!29834 (h!66623 (exprs!4545 setElem!32401))))) b!5181349))

(assert (= (and b!5180830 ((_ is Star!14661) (regTwo!29834 (h!66623 (exprs!4545 setElem!32401))))) b!5181350))

(assert (= (and b!5180830 ((_ is Union!14661) (regTwo!29834 (h!66623 (exprs!4545 setElem!32401))))) b!5181351))

(declare-fun b!5181353 () Bool)

(declare-fun e!3228235 () Bool)

(declare-fun tp!1453031 () Bool)

(declare-fun tp!1453034 () Bool)

(assert (=> b!5181353 (= e!3228235 (and tp!1453031 tp!1453034))))

(declare-fun b!5181354 () Bool)

(declare-fun tp!1453030 () Bool)

(assert (=> b!5181354 (= e!3228235 tp!1453030)))

(declare-fun b!5181355 () Bool)

(declare-fun tp!1453033 () Bool)

(declare-fun tp!1453032 () Bool)

(assert (=> b!5181355 (= e!3228235 (and tp!1453033 tp!1453032))))

(assert (=> b!5180842 (= tp!1452969 e!3228235)))

(declare-fun b!5181352 () Bool)

(assert (=> b!5181352 (= e!3228235 tp_is_empty!38575)))

(assert (= (and b!5180842 ((_ is ElementMatch!14661) (h!66623 (exprs!4545 setElem!32409)))) b!5181352))

(assert (= (and b!5180842 ((_ is Concat!23506) (h!66623 (exprs!4545 setElem!32409)))) b!5181353))

(assert (= (and b!5180842 ((_ is Star!14661) (h!66623 (exprs!4545 setElem!32409)))) b!5181354))

(assert (= (and b!5180842 ((_ is Union!14661) (h!66623 (exprs!4545 setElem!32409)))) b!5181355))

(declare-fun b!5181356 () Bool)

(declare-fun e!3228236 () Bool)

(declare-fun tp!1453035 () Bool)

(declare-fun tp!1453036 () Bool)

(assert (=> b!5181356 (= e!3228236 (and tp!1453035 tp!1453036))))

(assert (=> b!5180842 (= tp!1452970 e!3228236)))

(assert (= (and b!5180842 ((_ is Cons!60175) (t!373452 (exprs!4545 setElem!32409)))) b!5181356))

(declare-fun condSetEmpty!32419 () Bool)

(assert (=> setNonEmpty!32414 (= condSetEmpty!32419 (= setRest!32414 ((as const (Array Context!8090 Bool)) false)))))

(declare-fun setRes!32419 () Bool)

(assert (=> setNonEmpty!32414 (= tp!1452966 setRes!32419)))

(declare-fun setIsEmpty!32419 () Bool)

(assert (=> setIsEmpty!32419 setRes!32419))

(declare-fun setElem!32419 () Context!8090)

(declare-fun setNonEmpty!32419 () Bool)

(declare-fun e!3228237 () Bool)

(declare-fun tp!1453037 () Bool)

(assert (=> setNonEmpty!32419 (= setRes!32419 (and tp!1453037 (inv!79899 setElem!32419) e!3228237))))

(declare-fun setRest!32419 () (InoxSet Context!8090))

(assert (=> setNonEmpty!32419 (= setRest!32414 ((_ map or) (store ((as const (Array Context!8090 Bool)) false) setElem!32419 true) setRest!32419))))

(declare-fun b!5181357 () Bool)

(declare-fun tp!1453038 () Bool)

(assert (=> b!5181357 (= e!3228237 tp!1453038)))

(assert (= (and setNonEmpty!32414 condSetEmpty!32419) setIsEmpty!32419))

(assert (= (and setNonEmpty!32414 (not condSetEmpty!32419)) setNonEmpty!32419))

(assert (= setNonEmpty!32419 b!5181357))

(declare-fun m!6241012 () Bool)

(assert (=> setNonEmpty!32419 m!6241012))

(declare-fun b!5181359 () Bool)

(declare-fun e!3228238 () Bool)

(declare-fun tp!1453040 () Bool)

(declare-fun tp!1453043 () Bool)

(assert (=> b!5181359 (= e!3228238 (and tp!1453040 tp!1453043))))

(declare-fun b!5181360 () Bool)

(declare-fun tp!1453039 () Bool)

(assert (=> b!5181360 (= e!3228238 tp!1453039)))

(declare-fun b!5181361 () Bool)

(declare-fun tp!1453042 () Bool)

(declare-fun tp!1453041 () Bool)

(assert (=> b!5181361 (= e!3228238 (and tp!1453042 tp!1453041))))

(assert (=> b!5180831 (= tp!1452950 e!3228238)))

(declare-fun b!5181358 () Bool)

(assert (=> b!5181358 (= e!3228238 tp_is_empty!38575)))

(assert (= (and b!5180831 ((_ is ElementMatch!14661) (reg!14990 (h!66623 (exprs!4545 setElem!32401))))) b!5181358))

(assert (= (and b!5180831 ((_ is Concat!23506) (reg!14990 (h!66623 (exprs!4545 setElem!32401))))) b!5181359))

(assert (= (and b!5180831 ((_ is Star!14661) (reg!14990 (h!66623 (exprs!4545 setElem!32401))))) b!5181360))

(assert (= (and b!5180831 ((_ is Union!14661) (reg!14990 (h!66623 (exprs!4545 setElem!32401))))) b!5181361))

(declare-fun b!5181363 () Bool)

(declare-fun e!3228239 () Bool)

(declare-fun tp!1453045 () Bool)

(declare-fun tp!1453048 () Bool)

(assert (=> b!5181363 (= e!3228239 (and tp!1453045 tp!1453048))))

(declare-fun b!5181364 () Bool)

(declare-fun tp!1453044 () Bool)

(assert (=> b!5181364 (= e!3228239 tp!1453044)))

(declare-fun b!5181365 () Bool)

(declare-fun tp!1453047 () Bool)

(declare-fun tp!1453046 () Bool)

(assert (=> b!5181365 (= e!3228239 (and tp!1453047 tp!1453046))))

(assert (=> b!5180838 (= tp!1452962 e!3228239)))

(declare-fun b!5181362 () Bool)

(assert (=> b!5181362 (= e!3228239 tp_is_empty!38575)))

(assert (= (and b!5180838 ((_ is ElementMatch!14661) (regOne!29835 (h!66623 (exprs!4545 setElem!32402))))) b!5181362))

(assert (= (and b!5180838 ((_ is Concat!23506) (regOne!29835 (h!66623 (exprs!4545 setElem!32402))))) b!5181363))

(assert (= (and b!5180838 ((_ is Star!14661) (regOne!29835 (h!66623 (exprs!4545 setElem!32402))))) b!5181364))

(assert (= (and b!5180838 ((_ is Union!14661) (regOne!29835 (h!66623 (exprs!4545 setElem!32402))))) b!5181365))

(declare-fun b!5181367 () Bool)

(declare-fun e!3228240 () Bool)

(declare-fun tp!1453050 () Bool)

(declare-fun tp!1453053 () Bool)

(assert (=> b!5181367 (= e!3228240 (and tp!1453050 tp!1453053))))

(declare-fun b!5181368 () Bool)

(declare-fun tp!1453049 () Bool)

(assert (=> b!5181368 (= e!3228240 tp!1453049)))

(declare-fun b!5181369 () Bool)

(declare-fun tp!1453052 () Bool)

(declare-fun tp!1453051 () Bool)

(assert (=> b!5181369 (= e!3228240 (and tp!1453052 tp!1453051))))

(assert (=> b!5180838 (= tp!1452961 e!3228240)))

(declare-fun b!5181366 () Bool)

(assert (=> b!5181366 (= e!3228240 tp_is_empty!38575)))

(assert (= (and b!5180838 ((_ is ElementMatch!14661) (regTwo!29835 (h!66623 (exprs!4545 setElem!32402))))) b!5181366))

(assert (= (and b!5180838 ((_ is Concat!23506) (regTwo!29835 (h!66623 (exprs!4545 setElem!32402))))) b!5181367))

(assert (= (and b!5180838 ((_ is Star!14661) (regTwo!29835 (h!66623 (exprs!4545 setElem!32402))))) b!5181368))

(assert (= (and b!5180838 ((_ is Union!14661) (regTwo!29835 (h!66623 (exprs!4545 setElem!32402))))) b!5181369))

(declare-fun b!5181371 () Bool)

(declare-fun e!3228241 () Bool)

(declare-fun tp!1453055 () Bool)

(declare-fun tp!1453058 () Bool)

(assert (=> b!5181371 (= e!3228241 (and tp!1453055 tp!1453058))))

(declare-fun b!5181372 () Bool)

(declare-fun tp!1453054 () Bool)

(assert (=> b!5181372 (= e!3228241 tp!1453054)))

(declare-fun b!5181373 () Bool)

(declare-fun tp!1453057 () Bool)

(declare-fun tp!1453056 () Bool)

(assert (=> b!5181373 (= e!3228241 (and tp!1453057 tp!1453056))))

(assert (=> b!5180834 (= tp!1452957 e!3228241)))

(declare-fun b!5181370 () Bool)

(assert (=> b!5181370 (= e!3228241 tp_is_empty!38575)))

(assert (= (and b!5180834 ((_ is ElementMatch!14661) (h!66623 (exprs!4545 setElem!32410)))) b!5181370))

(assert (= (and b!5180834 ((_ is Concat!23506) (h!66623 (exprs!4545 setElem!32410)))) b!5181371))

(assert (= (and b!5180834 ((_ is Star!14661) (h!66623 (exprs!4545 setElem!32410)))) b!5181372))

(assert (= (and b!5180834 ((_ is Union!14661) (h!66623 (exprs!4545 setElem!32410)))) b!5181373))

(declare-fun b!5181374 () Bool)

(declare-fun e!3228242 () Bool)

(declare-fun tp!1453059 () Bool)

(declare-fun tp!1453060 () Bool)

(assert (=> b!5181374 (= e!3228242 (and tp!1453059 tp!1453060))))

(assert (=> b!5180834 (= tp!1452958 e!3228242)))

(assert (= (and b!5180834 ((_ is Cons!60175) (t!373452 (exprs!4545 setElem!32410)))) b!5181374))

(declare-fun b!5181376 () Bool)

(declare-fun e!3228243 () Bool)

(declare-fun tp!1453062 () Bool)

(declare-fun tp!1453065 () Bool)

(assert (=> b!5181376 (= e!3228243 (and tp!1453062 tp!1453065))))

(declare-fun b!5181377 () Bool)

(declare-fun tp!1453061 () Bool)

(assert (=> b!5181377 (= e!3228243 tp!1453061)))

(declare-fun b!5181378 () Bool)

(declare-fun tp!1453064 () Bool)

(declare-fun tp!1453063 () Bool)

(assert (=> b!5181378 (= e!3228243 (and tp!1453064 tp!1453063))))

(assert (=> b!5180837 (= tp!1452959 e!3228243)))

(declare-fun b!5181375 () Bool)

(assert (=> b!5181375 (= e!3228243 tp_is_empty!38575)))

(assert (= (and b!5180837 ((_ is ElementMatch!14661) (reg!14990 (h!66623 (exprs!4545 setElem!32402))))) b!5181375))

(assert (= (and b!5180837 ((_ is Concat!23506) (reg!14990 (h!66623 (exprs!4545 setElem!32402))))) b!5181376))

(assert (= (and b!5180837 ((_ is Star!14661) (reg!14990 (h!66623 (exprs!4545 setElem!32402))))) b!5181377))

(assert (= (and b!5180837 ((_ is Union!14661) (reg!14990 (h!66623 (exprs!4545 setElem!32402))))) b!5181378))

(declare-fun b_lambda!201097 () Bool)

(assert (= b_lambda!201091 (or d!1674236 b_lambda!201097)))

(declare-fun bs!1207431 () Bool)

(declare-fun d!1675104 () Bool)

(assert (= bs!1207431 (and d!1675104 d!1674236)))

(assert (=> bs!1207431 (= (dynLambda!23888 lambda!258883 (h!66623 (t!373452 (exprs!4545 setElem!32402)))) (validRegex!6411 (h!66623 (t!373452 (exprs!4545 setElem!32402)))))))

(declare-fun m!6241014 () Bool)

(assert (=> bs!1207431 m!6241014))

(assert (=> b!5181038 d!1675104))

(declare-fun b_lambda!201099 () Bool)

(assert (= b_lambda!201093 (or d!1674410 b_lambda!201099)))

(declare-fun bs!1207432 () Bool)

(declare-fun d!1675106 () Bool)

(assert (= bs!1207432 (and d!1675106 d!1674410)))

(assert (=> bs!1207432 (= (dynLambda!23888 lambda!258910 (h!66623 (exprs!4545 setElem!32410))) (validRegex!6411 (h!66623 (exprs!4545 setElem!32410))))))

(declare-fun m!6241016 () Bool)

(assert (=> bs!1207432 m!6241016))

(assert (=> b!5181059 d!1675106))

(declare-fun b_lambda!201101 () Bool)

(assert (= b_lambda!201095 (or d!1674214 b_lambda!201101)))

(declare-fun bs!1207433 () Bool)

(declare-fun d!1675108 () Bool)

(assert (= bs!1207433 (and d!1675108 d!1674214)))

(assert (=> bs!1207433 (= (dynLambda!23888 lambda!258879 (h!66623 (t!373452 (exprs!4545 setElem!32401)))) (validRegex!6411 (h!66623 (t!373452 (exprs!4545 setElem!32401)))))))

(declare-fun m!6241018 () Bool)

(assert (=> bs!1207433 m!6241018))

(assert (=> b!5181107 d!1675108))

(declare-fun b_lambda!201103 () Bool)

(assert (= b_lambda!201089 (or d!1674398 b_lambda!201103)))

(declare-fun bs!1207434 () Bool)

(declare-fun d!1675110 () Bool)

(assert (= bs!1207434 (and d!1675110 d!1674398)))

(assert (=> bs!1207434 (= (dynLambda!23888 lambda!258909 (h!66623 (exprs!4545 setElem!32409))) (validRegex!6411 (h!66623 (exprs!4545 setElem!32409))))))

(declare-fun m!6241020 () Bool)

(assert (=> bs!1207434 m!6241020))

(assert (=> b!5180934 d!1675110))

(check-sat (not b!5180941) (not b!5180971) (not d!1674744) (not b!5180901) (not b!5181285) (not d!1674864) (not d!1674964) (not b!5180845) (not bm!364167) (not b!5181357) (not b!5180996) (not b!5181206) (not d!1674866) (not d!1674912) (not d!1674720) (not b!5181368) (not bm!364186) (not b!5180869) (not d!1675056) (not b!5181003) (not b!5181013) (not b!5180875) (not d!1674888) (not b!5180987) (not b!5181220) (not b!5180970) (not b!5181310) (not b!5181343) (not d!1675102) (not b!5181242) (not b!5181244) (not d!1674924) (not d!1675094) (not b!5181377) (not d!1674804) (not setNonEmpty!32417) (not b!5181120) (not b!5181045) (not b!5181234) (not b!5180966) (not b!5181211) (not b!5180920) (not bm!364190) (not bm!364153) (not b!5181341) (not d!1674990) (not b!5180852) (not b!5181090) (not d!1674736) (not b!5181066) (not d!1674842) (not bm!364161) (not b!5180947) (not b!5181293) (not b!5181167) (not b!5181124) (not d!1674776) (not b!5180878) (not b!5181118) (not b!5181094) (not b!5181240) (not b!5181053) (not d!1675080) (not d!1675052) (not b!5181064) (not b!5181262) (not d!1674922) (not b!5181369) (not b!5181259) (not d!1674822) (not b!5181112) (not b!5181186) (not b!5180888) (not b_lambda!201103) (not b!5181005) (not b!5181331) (not b!5181153) (not bm!364168) (not d!1675092) (not d!1675000) (not setNonEmpty!32419) (not b!5181249) (not d!1674952) (not b!5181323) (not d!1674750) (not b!5181325) (not b!5181202) (not b!5181116) (not d!1674650) (not b!5181347) (not d!1674960) (not d!1674792) (not b!5181235) (not d!1674838) (not b!5181042) (not d!1674728) (not b!5181132) (not d!1674846) (not b!5180952) (not bm!364165) (not b!5181170) (not b!5180984) (not b!5180851) (not b!5181371) (not b!5180914) (not b!5181052) (not d!1674828) (not b!5181226) (not d!1674848) (not b!5181084) (not b!5181126) (not d!1674628) (not bm!364179) (not d!1674824) (not d!1674742) (not b!5180891) (not d!1674826) (not b!5181217) (not b!5181361) (not b!5181276) (not b!5181373) (not b!5181172) (not b!5181210) (not b!5181189) (not b!5181195) (not bs!1207434) (not b!5181025) (not b!5181056) (not b!5181359) (not d!1674942) (not b!5181026) (not b!5181294) (not b!5181091) (not b!5181332) (not b!5180989) (not b!5181082) (not b!5181076) (not b!5181356) (not d!1675062) (not d!1674928) (not b!5181190) (not d!1675050) (not b!5181264) (not b!5181009) (not b!5181080) (not b!5181353) (not b_lambda!201087) (not b!5181203) (not b!5181208) (not b!5181074) (not d!1675076) (not bm!364164) (not b!5181015) (not b!5181010) (not b_lambda!201099) (not d!1674800) (not b!5181188) (not b!5181043) (not d!1674820) (not b!5181216) (not b!5180847) (not b!5181367) (not b!5181328) (not d!1674768) (not d!1674916) (not b!5181000) (not b!5181350) (not b!5181337) (not b!5180877) (not b!5180911) (not b!5180992) (not b!5180978) (not d!1675034) (not b!5180935) (not b!5181360) (not b!5181199) (not b!5180907) (not b!5181184) (not bm!364189) (not bm!364154) (not b!5181060) (not b!5180871) (not b!5181277) (not b!5181281) (not d!1674908) (not bm!364157) (not b!5181225) (not d!1674746) (not b!5180889) (not b!5181130) (not b!5181327) (not b!5181192) (not b!5181194) (not b!5181335) (not d!1674844) (not b!5180909) (not b!5180892) (not d!1675098) (not b!5180865) (not d!1675064) (not b!5181122) (not b!5181133) (not b!5180873) (not b!5180981) (not d!1674962) (not d!1674940) (not bm!364184) (not b!5180948) (not b!5181104) (not d!1674772) (not setNonEmpty!32418) (not d!1674872) (not d!1675078) (not b!5181268) (not d!1674730) (not b!5181071) (not b!5181230) (not d!1674640) (not b!5180919) (not b!5180915) (not d!1674638) (not b!5180969) (not d!1675046) (not b!5181182) (not b!5181284) (not b!5180988) (not d!1674830) (not b!5181086) (not d!1675020) (not bm!364183) (not d!1675068) (not b!5181062) (not d!1675100) (not d!1674862) (not bm!364160) (not b!5180945) (not b!5180975) (not d!1674710) (not b!5181110) (not d!1674764) (not bm!364182) (not d!1674954) (not b!5181321) (not b!5180897) (not d!1674880) (not bm!364158) (not b!5180917) (not b!5181204) (not d!1674974) (not b!5181070) (not b!5180905) (not b!5181227) (not d!1674758) (not b!5181016) (not bs!1207433) (not b!5181273) (not b!5181238) (not b!5181036) (not b!5181270) (not b!5181248) (not bm!364187) (not b!5181047) (not b!5181314) (not b!5180972) (not bm!364152) (not bm!364175) (not b!5180957) (not b!5181022) (not b!5181326) (not b!5181017) (not b!5181303) (not d!1674732) (not b!5181378) (not bs!1207431) (not bs!1207432) (not b!5180929) (not b!5181039) (not d!1675058) (not b!5181296) (not b!5181108) (not b!5181317) (not b!5181169) (not b!5181346) (not bm!364181) (not b!5180943) (not b!5181246) (not b!5181041) (not b!5180951) (not b!5181098) (not b!5181365) (not b!5181006) (not d!1674790) (not bm!364156) (not b!5180938) (not b!5180925) (not d!1674868) (not d!1675086) (not b!5181095) (not b!5181376) (not d!1674784) (not b!5180903) (not b_lambda!201101) (not bm!364176) (not b!5181102) (not d!1675060) (not b!5180885) (not b!5181218) (not b!5180900) (not b!5180959) (not d!1674636) (not bm!364159) (not b_lambda!201097) (not b!5181333) (not d!1674740) (not b!5181198) (not b!5181266) (not b!5181100) (not b!5181214) (not b!5181338) (not b!5181050) (not b!5181316) (not b!5181128) (not b!5181029) (not b!5180974) (not b!5180887) (not b!5181222) (not b!5180867) (not b!5181334) (not b!5180965) (not d!1674950) (not b!5180862) (not b!5180927) (not d!1674752) (not d!1675084) (not b!5181306) (not b!5181330) (not bm!364166) (not b!5180913) (not b!5181372) (not b!5180961) (not b!5181289) (not b!5181300) (not b!5181302) (not b!5180955) (not b!5180923) (not d!1675096) (not b!5181354) (not b!5181224) (not b!5181252) (not b!5181363) (not b!5181288) (not b!5181228) (not d!1674802) (not d!1674662) (not b!5181057) (not b!5181342) (not b!5181374) (not b!5181067) (not b!5180995) (not b!5181345) (not d!1674870) (not b!5180895) (not b!5181113) (not d!1675090) (not b!5181313) (not d!1675008) (not b!5181164) (not d!1674958) (not d!1674818) (not b!5181318) (not b!5181351) (not b!5181232) (not b!5180977) (not d!1674738) (not b!5180991) (not d!1674754) (not bm!364188) (not bm!364163) (not b!5181272) (not b!5180849) (not b!5181307) (not b!5181322) (not b!5181297) (not d!1674972) (not bm!364155) (not d!1674948) (not b!5180999) (not b!5181087) (not b!5181349) (not b!5181320) (not b!5180982) (not b!5180962) (not b_lambda!201085) (not b!5180931) (not d!1674620) (not d!1674976) (not b!5180855) (not b!5181292) (not b!5180883) (not d!1674770) (not d!1674690) (not d!1675070) (not bm!364162) (not b!5181191) (not d!1675002) (not bm!364178) (not bm!364185) (not b!5180899) (not b!5181355) (not d!1674716) (not b!5181280) (not b!5181339) (not b!5180933) tp_is_empty!38575 (not b!5181105) (not b!5181364) (not b!5181119) (not b!5181163) (not b!5181049) (not b!5181311) (not bm!364151) (not b!5181078))
(check-sat)
