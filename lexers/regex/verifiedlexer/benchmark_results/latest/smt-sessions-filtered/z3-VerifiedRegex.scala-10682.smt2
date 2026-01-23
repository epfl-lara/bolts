; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!547204 () Bool)

(assert start!547204)

(declare-fun setIsEmpty!31947 () Bool)

(declare-fun setRes!31947 () Bool)

(assert (=> setIsEmpty!31947 setRes!31947))

(declare-fun b!5170104 () Bool)

(declare-fun e!3221440 () Bool)

(declare-fun e!3221441 () Bool)

(assert (=> b!5170104 (= e!3221440 (not e!3221441))))

(declare-fun res!2197507 () Bool)

(assert (=> b!5170104 (=> res!2197507 e!3221441)))

(declare-fun lt!2127801 () Int)

(declare-fun lt!2127807 () Int)

(assert (=> b!5170104 (= res!2197507 (>= lt!2127801 lt!2127807))))

(declare-datatypes ((Unit!151658 0))(
  ( (Unit!151659) )
))
(declare-fun lt!2127806 () Unit!151658)

(declare-fun e!3221438 () Unit!151658)

(assert (=> b!5170104 (= lt!2127806 e!3221438)))

(declare-fun c!889873 () Bool)

(assert (=> b!5170104 (= c!889873 (= lt!2127801 lt!2127807))))

(assert (=> b!5170104 (<= lt!2127801 lt!2127807)))

(declare-fun lt!2127805 () Unit!151658)

(declare-datatypes ((C!29492 0))(
  ( (C!29493 (val!24448 Int)) )
))
(declare-datatypes ((List!60185 0))(
  ( (Nil!60061) (Cons!60061 (h!66509 C!29492) (t!373338 List!60185)) )
))
(declare-fun testedP!294 () List!60185)

(declare-fun input!5817 () List!60185)

(declare-fun lemmaIsPrefixThenSmallerEqSize!907 (List!60185 List!60185) Unit!151658)

(assert (=> b!5170104 (= lt!2127805 (lemmaIsPrefixThenSmallerEqSize!907 testedP!294 input!5817))))

(declare-fun b!5170105 () Bool)

(declare-fun e!3221442 () Bool)

(declare-fun tp_is_empty!38475 () Bool)

(declare-fun tp!1450443 () Bool)

(assert (=> b!5170105 (= e!3221442 (and tp_is_empty!38475 tp!1450443))))

(declare-fun res!2197510 () Bool)

(declare-fun e!3221439 () Bool)

(assert (=> start!547204 (=> (not res!2197510) (not e!3221439))))

(declare-fun isPrefix!5744 (List!60185 List!60185) Bool)

(assert (=> start!547204 (= res!2197510 (isPrefix!5744 testedP!294 input!5817))))

(assert (=> start!547204 e!3221439))

(declare-fun e!3221445 () Bool)

(assert (=> start!547204 e!3221445))

(assert (=> start!547204 e!3221442))

(declare-fun condSetEmpty!31947 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14611 0))(
  ( (ElementMatch!14611 (c!889874 C!29492)) (Concat!23456 (regOne!29734 Regex!14611) (regTwo!29734 Regex!14611)) (EmptyExpr!14611) (Star!14611 (reg!14940 Regex!14611)) (EmptyLang!14611) (Union!14611 (regOne!29735 Regex!14611) (regTwo!29735 Regex!14611)) )
))
(declare-datatypes ((List!60186 0))(
  ( (Nil!60062) (Cons!60062 (h!66510 Regex!14611) (t!373339 List!60186)) )
))
(declare-datatypes ((Context!7990 0))(
  ( (Context!7991 (exprs!4495 List!60186)) )
))
(declare-fun baseZ!62 () (InoxSet Context!7990))

(assert (=> start!547204 (= condSetEmpty!31947 (= baseZ!62 ((as const (Array Context!7990 Bool)) false)))))

(declare-fun setRes!31948 () Bool)

(assert (=> start!547204 setRes!31948))

(declare-fun condSetEmpty!31948 () Bool)

(declare-fun z!4581 () (InoxSet Context!7990))

(assert (=> start!547204 (= condSetEmpty!31948 (= z!4581 ((as const (Array Context!7990 Bool)) false)))))

(assert (=> start!547204 setRes!31947))

(declare-fun b!5170106 () Bool)

(declare-fun e!3221446 () Bool)

(assert (=> b!5170106 (= e!3221441 e!3221446)))

(declare-fun res!2197511 () Bool)

(assert (=> b!5170106 (=> res!2197511 e!3221446)))

(declare-fun nullableZipper!1157 ((InoxSet Context!7990)) Bool)

(assert (=> b!5170106 (= res!2197511 (not (nullableZipper!1157 z!4581)))))

(declare-fun lt!2127800 () List!60185)

(assert (=> b!5170106 (isPrefix!5744 lt!2127800 input!5817)))

(declare-fun lt!2127804 () Unit!151658)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1057 (List!60185 List!60185) Unit!151658)

(assert (=> b!5170106 (= lt!2127804 (lemmaAddHeadSuffixToPrefixStillPrefix!1057 testedP!294 input!5817))))

(declare-fun lt!2127799 () C!29492)

(declare-fun ++!13135 (List!60185 List!60185) List!60185)

(assert (=> b!5170106 (= lt!2127800 (++!13135 testedP!294 (Cons!60061 lt!2127799 Nil!60061)))))

(declare-fun lt!2127808 () List!60185)

(declare-fun head!11035 (List!60185) C!29492)

(assert (=> b!5170106 (= lt!2127799 (head!11035 lt!2127808))))

(declare-fun b!5170107 () Bool)

(declare-fun Unit!151660 () Unit!151658)

(assert (=> b!5170107 (= e!3221438 Unit!151660)))

(declare-fun lt!2127798 () Unit!151658)

(declare-fun lemmaIsPrefixRefl!3751 (List!60185 List!60185) Unit!151658)

(assert (=> b!5170107 (= lt!2127798 (lemmaIsPrefixRefl!3751 input!5817 input!5817))))

(assert (=> b!5170107 (isPrefix!5744 input!5817 input!5817)))

(declare-fun lt!2127803 () Unit!151658)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1393 (List!60185 List!60185 List!60185) Unit!151658)

(assert (=> b!5170107 (= lt!2127803 (lemmaIsPrefixSameLengthThenSameList!1393 input!5817 testedP!294 input!5817))))

(assert (=> b!5170107 false))

(declare-fun b!5170108 () Bool)

(declare-fun tp!1450440 () Bool)

(assert (=> b!5170108 (= e!3221445 (and tp_is_empty!38475 tp!1450440))))

(declare-fun b!5170109 () Bool)

(assert (=> b!5170109 (= e!3221446 true)))

(declare-datatypes ((tuple2!63776 0))(
  ( (tuple2!63777 (_1!35191 List!60185) (_2!35191 List!60185)) )
))
(declare-fun lt!2127802 () tuple2!63776)

(declare-fun findLongestMatchInnerZipper!269 ((InoxSet Context!7990) List!60185 Int List!60185 List!60185 Int) tuple2!63776)

(declare-fun derivationStepZipper!965 ((InoxSet Context!7990) C!29492) (InoxSet Context!7990))

(declare-fun tail!10144 (List!60185) List!60185)

(assert (=> b!5170109 (= lt!2127802 (findLongestMatchInnerZipper!269 (derivationStepZipper!965 z!4581 lt!2127799) lt!2127800 (+ 1 lt!2127801) (tail!10144 lt!2127808) input!5817 lt!2127807))))

(declare-fun b!5170110 () Bool)

(declare-fun res!2197509 () Bool)

(assert (=> b!5170110 (=> (not res!2197509) (not e!3221440))))

(assert (=> b!5170110 (= res!2197509 (not (= testedP!294 input!5817)))))

(declare-fun b!5170111 () Bool)

(assert (=> b!5170111 (= e!3221439 e!3221440)))

(declare-fun res!2197508 () Bool)

(assert (=> b!5170111 (=> (not res!2197508) (not e!3221440))))

(declare-fun isEmpty!32157 (List!60185) Bool)

(assert (=> b!5170111 (= res!2197508 (not (isEmpty!32157 (_1!35191 (findLongestMatchInnerZipper!269 z!4581 testedP!294 lt!2127801 lt!2127808 input!5817 lt!2127807)))))))

(declare-fun size!39647 (List!60185) Int)

(assert (=> b!5170111 (= lt!2127807 (size!39647 input!5817))))

(declare-fun getSuffix!3394 (List!60185 List!60185) List!60185)

(assert (=> b!5170111 (= lt!2127808 (getSuffix!3394 input!5817 testedP!294))))

(assert (=> b!5170111 (= lt!2127801 (size!39647 testedP!294))))

(declare-fun b!5170112 () Bool)

(declare-fun e!3221444 () Bool)

(declare-fun tp!1450439 () Bool)

(assert (=> b!5170112 (= e!3221444 tp!1450439)))

(declare-fun setIsEmpty!31948 () Bool)

(assert (=> setIsEmpty!31948 setRes!31948))

(declare-fun b!5170113 () Bool)

(declare-fun Unit!151661 () Unit!151658)

(assert (=> b!5170113 (= e!3221438 Unit!151661)))

(declare-fun setNonEmpty!31947 () Bool)

(declare-fun e!3221443 () Bool)

(declare-fun setElem!31948 () Context!7990)

(declare-fun tp!1450442 () Bool)

(declare-fun inv!79774 (Context!7990) Bool)

(assert (=> setNonEmpty!31947 (= setRes!31947 (and tp!1450442 (inv!79774 setElem!31948) e!3221443))))

(declare-fun setRest!31948 () (InoxSet Context!7990))

(assert (=> setNonEmpty!31947 (= z!4581 ((_ map or) (store ((as const (Array Context!7990 Bool)) false) setElem!31948 true) setRest!31948))))

(declare-fun tp!1450438 () Bool)

(declare-fun setElem!31947 () Context!7990)

(declare-fun setNonEmpty!31948 () Bool)

(assert (=> setNonEmpty!31948 (= setRes!31948 (and tp!1450438 (inv!79774 setElem!31947) e!3221444))))

(declare-fun setRest!31947 () (InoxSet Context!7990))

(assert (=> setNonEmpty!31948 (= baseZ!62 ((_ map or) (store ((as const (Array Context!7990 Bool)) false) setElem!31947 true) setRest!31947))))

(declare-fun b!5170114 () Bool)

(declare-fun res!2197512 () Bool)

(assert (=> b!5170114 (=> (not res!2197512) (not e!3221439))))

(declare-fun derivationZipper!234 ((InoxSet Context!7990) List!60185) (InoxSet Context!7990))

(assert (=> b!5170114 (= res!2197512 (= (derivationZipper!234 baseZ!62 testedP!294) z!4581))))

(declare-fun b!5170115 () Bool)

(declare-fun tp!1450441 () Bool)

(assert (=> b!5170115 (= e!3221443 tp!1450441)))

(assert (= (and start!547204 res!2197510) b!5170114))

(assert (= (and b!5170114 res!2197512) b!5170111))

(assert (= (and b!5170111 res!2197508) b!5170110))

(assert (= (and b!5170110 res!2197509) b!5170104))

(assert (= (and b!5170104 c!889873) b!5170107))

(assert (= (and b!5170104 (not c!889873)) b!5170113))

(assert (= (and b!5170104 (not res!2197507)) b!5170106))

(assert (= (and b!5170106 (not res!2197511)) b!5170109))

(get-info :version)

(assert (= (and start!547204 ((_ is Cons!60061) testedP!294)) b!5170108))

(assert (= (and start!547204 ((_ is Cons!60061) input!5817)) b!5170105))

(assert (= (and start!547204 condSetEmpty!31947) setIsEmpty!31948))

(assert (= (and start!547204 (not condSetEmpty!31947)) setNonEmpty!31948))

(assert (= setNonEmpty!31948 b!5170112))

(assert (= (and start!547204 condSetEmpty!31948) setIsEmpty!31947))

(assert (= (and start!547204 (not condSetEmpty!31948)) setNonEmpty!31947))

(assert (= setNonEmpty!31947 b!5170115))

(declare-fun m!6222230 () Bool)

(assert (=> setNonEmpty!31948 m!6222230))

(declare-fun m!6222232 () Bool)

(assert (=> setNonEmpty!31947 m!6222232))

(declare-fun m!6222234 () Bool)

(assert (=> start!547204 m!6222234))

(declare-fun m!6222236 () Bool)

(assert (=> b!5170106 m!6222236))

(declare-fun m!6222238 () Bool)

(assert (=> b!5170106 m!6222238))

(declare-fun m!6222240 () Bool)

(assert (=> b!5170106 m!6222240))

(declare-fun m!6222242 () Bool)

(assert (=> b!5170106 m!6222242))

(declare-fun m!6222244 () Bool)

(assert (=> b!5170106 m!6222244))

(declare-fun m!6222246 () Bool)

(assert (=> b!5170109 m!6222246))

(declare-fun m!6222248 () Bool)

(assert (=> b!5170109 m!6222248))

(assert (=> b!5170109 m!6222246))

(assert (=> b!5170109 m!6222248))

(declare-fun m!6222250 () Bool)

(assert (=> b!5170109 m!6222250))

(declare-fun m!6222252 () Bool)

(assert (=> b!5170114 m!6222252))

(declare-fun m!6222254 () Bool)

(assert (=> b!5170111 m!6222254))

(declare-fun m!6222256 () Bool)

(assert (=> b!5170111 m!6222256))

(declare-fun m!6222258 () Bool)

(assert (=> b!5170111 m!6222258))

(declare-fun m!6222260 () Bool)

(assert (=> b!5170111 m!6222260))

(declare-fun m!6222262 () Bool)

(assert (=> b!5170111 m!6222262))

(declare-fun m!6222264 () Bool)

(assert (=> b!5170104 m!6222264))

(declare-fun m!6222266 () Bool)

(assert (=> b!5170107 m!6222266))

(declare-fun m!6222268 () Bool)

(assert (=> b!5170107 m!6222268))

(declare-fun m!6222270 () Bool)

(assert (=> b!5170107 m!6222270))

(check-sat (not b!5170114) (not b!5170109) (not b!5170112) (not b!5170104) (not b!5170108) (not b!5170115) (not b!5170111) (not setNonEmpty!31948) (not b!5170105) tp_is_empty!38475 (not start!547204) (not b!5170107) (not b!5170106) (not setNonEmpty!31947))
(check-sat)
