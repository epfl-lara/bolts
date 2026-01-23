; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!520700 () Bool)

(assert start!520700)

(declare-fun res!2110548 () Bool)

(declare-fun e!3090318 () Bool)

(assert (=> start!520700 (=> (not res!2110548) (not e!3090318))))

(declare-datatypes ((C!27212 0))(
  ( (C!27213 (val!22940 Int)) )
))
(declare-datatypes ((List!57099 0))(
  ( (Nil!56975) (Cons!56975 (h!63423 C!27212) (t!367635 List!57099)) )
))
(declare-fun lt!2039576 () List!57099)

(declare-fun lt!2039579 () List!57099)

(assert (=> start!520700 (= res!2110548 (= lt!2039576 lt!2039579))))

(declare-datatypes ((IArray!30061 0))(
  ( (IArray!30062 (innerList!15088 List!57099)) )
))
(declare-datatypes ((Conc!15000 0))(
  ( (Node!15000 (left!41566 Conc!15000) (right!41896 Conc!15000) (csize!30230 Int) (cheight!15211 Int)) (Leaf!24933 (xs!18326 IArray!30061) (csize!30231 Int)) (Empty!15000) )
))
(declare-datatypes ((BalanceConc!29430 0))(
  ( (BalanceConc!29431 (c!843968 Conc!15000)) )
))
(declare-fun totalInput!685 () BalanceConc!29430)

(declare-fun list!18159 (BalanceConc!29430) List!57099)

(assert (=> start!520700 (= lt!2039579 (list!18159 totalInput!685))))

(declare-fun testedP!110 () List!57099)

(declare-fun testedSuffix!70 () List!57099)

(declare-fun ++!12466 (List!57099 List!57099) List!57099)

(assert (=> start!520700 (= lt!2039576 (++!12466 testedP!110 testedSuffix!70))))

(assert (=> start!520700 e!3090318))

(declare-fun e!3090321 () Bool)

(assert (=> start!520700 e!3090321))

(declare-fun condSetEmpty!28046 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13481 0))(
  ( (ElementMatch!13481 (c!843969 C!27212)) (Concat!22054 (regOne!27474 Regex!13481) (regTwo!27474 Regex!13481)) (EmptyExpr!13481) (Star!13481 (reg!13810 Regex!13481)) (EmptyLang!13481) (Union!13481 (regOne!27475 Regex!13481) (regTwo!27475 Regex!13481)) )
))
(declare-datatypes ((List!57100 0))(
  ( (Nil!56976) (Cons!56976 (h!63424 Regex!13481) (t!367636 List!57100)) )
))
(declare-datatypes ((Context!6246 0))(
  ( (Context!6247 (exprs!3623 List!57100)) )
))
(declare-fun z!3568 () (InoxSet Context!6246))

(assert (=> start!520700 (= condSetEmpty!28046 (= z!3568 ((as const (Array Context!6246 Bool)) false)))))

(declare-fun setRes!28046 () Bool)

(assert (=> start!520700 setRes!28046))

(assert (=> start!520700 true))

(declare-fun e!3090320 () Bool)

(declare-fun inv!74211 (BalanceConc!29430) Bool)

(assert (=> start!520700 (and (inv!74211 totalInput!685) e!3090320)))

(declare-fun e!3090329 () Bool)

(assert (=> start!520700 e!3090329))

(declare-fun b!4946078 () Bool)

(declare-fun e!3090326 () Bool)

(declare-fun e!3090325 () Bool)

(assert (=> b!4946078 (= e!3090326 e!3090325)))

(declare-fun res!2110556 () Bool)

(assert (=> b!4946078 (=> res!2110556 e!3090325)))

(declare-fun lt!2039583 () Int)

(declare-fun lt!2039581 () Int)

(assert (=> b!4946078 (= res!2110556 (not (= lt!2039583 lt!2039581)))))

(declare-fun size!37803 (List!57099) Int)

(assert (=> b!4946078 (<= lt!2039583 (size!37803 lt!2039579))))

(declare-datatypes ((Unit!147764 0))(
  ( (Unit!147765) )
))
(declare-fun lt!2039584 () Unit!147764)

(declare-fun lemmaIsPrefixThenSmallerEqSize!742 (List!57099 List!57099) Unit!147764)

(assert (=> b!4946078 (= lt!2039584 (lemmaIsPrefixThenSmallerEqSize!742 testedP!110 lt!2039579))))

(declare-fun b!4946079 () Bool)

(declare-fun e!3090328 () Bool)

(declare-fun e!3090327 () Bool)

(assert (=> b!4946079 (= e!3090328 (not e!3090327))))

(declare-fun res!2110547 () Bool)

(assert (=> b!4946079 (=> res!2110547 e!3090327)))

(declare-fun isPrefix!5087 (List!57099 List!57099) Bool)

(assert (=> b!4946079 (= res!2110547 (not (isPrefix!5087 testedP!110 lt!2039579)))))

(assert (=> b!4946079 (isPrefix!5087 testedP!110 lt!2039576)))

(declare-fun lt!2039573 () Unit!147764)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3311 (List!57099 List!57099) Unit!147764)

(assert (=> b!4946079 (= lt!2039573 (lemmaConcatTwoListThenFirstIsPrefix!3311 testedP!110 testedSuffix!70))))

(declare-fun b!4946080 () Bool)

(assert (=> b!4946080 (= e!3090325 false)))

(assert (=> b!4946080 (= lt!2039579 testedP!110)))

(declare-fun lt!2039582 () Unit!147764)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1179 (List!57099 List!57099 List!57099) Unit!147764)

(assert (=> b!4946080 (= lt!2039582 (lemmaIsPrefixSameLengthThenSameList!1179 lt!2039579 testedP!110 lt!2039579))))

(assert (=> b!4946080 (isPrefix!5087 lt!2039579 lt!2039579)))

(declare-fun lt!2039577 () Unit!147764)

(declare-fun lemmaIsPrefixRefl!3427 (List!57099 List!57099) Unit!147764)

(assert (=> b!4946080 (= lt!2039577 (lemmaIsPrefixRefl!3427 lt!2039579 lt!2039579))))

(declare-fun b!4946081 () Bool)

(declare-fun e!3090322 () Bool)

(declare-fun tp!1387432 () Bool)

(assert (=> b!4946081 (= e!3090322 tp!1387432)))

(declare-fun b!4946082 () Bool)

(declare-fun e!3090319 () Bool)

(assert (=> b!4946082 (= e!3090319 e!3090328)))

(declare-fun res!2110554 () Bool)

(assert (=> b!4946082 (=> (not res!2110554) (not e!3090328))))

(declare-fun totalInputSize!132 () Int)

(assert (=> b!4946082 (= res!2110554 (= totalInputSize!132 lt!2039581))))

(declare-fun size!37804 (BalanceConc!29430) Int)

(assert (=> b!4946082 (= lt!2039581 (size!37804 totalInput!685))))

(declare-fun b!4946083 () Bool)

(declare-fun res!2110549 () Bool)

(declare-fun e!3090323 () Bool)

(assert (=> b!4946083 (=> res!2110549 e!3090323)))

(declare-datatypes ((tuple2!61520 0))(
  ( (tuple2!61521 (_1!34063 BalanceConc!29430) (_2!34063 BalanceConc!29430)) )
))
(declare-fun lt!2039580 () tuple2!61520)

(declare-fun testedPSize!70 () Int)

(assert (=> b!4946083 (= res!2110549 (not (= (size!37804 (_1!34063 lt!2039580)) testedPSize!70)))))

(declare-fun b!4946084 () Bool)

(declare-fun tp_is_empty!36159 () Bool)

(declare-fun tp!1387434 () Bool)

(assert (=> b!4946084 (= e!3090329 (and tp_is_empty!36159 tp!1387434))))

(declare-fun b!4946085 () Bool)

(declare-fun tp!1387435 () Bool)

(assert (=> b!4946085 (= e!3090321 (and tp_is_empty!36159 tp!1387435))))

(declare-fun b!4946086 () Bool)

(declare-fun e!3090324 () Bool)

(assert (=> b!4946086 (= e!3090324 e!3090323)))

(declare-fun res!2110550 () Bool)

(assert (=> b!4946086 (=> res!2110550 e!3090323)))

(declare-fun lt!2039574 () List!57099)

(declare-fun lt!2039575 () List!57099)

(assert (=> b!4946086 (= res!2110550 (not (= (++!12466 lt!2039574 lt!2039575) lt!2039579)))))

(assert (=> b!4946086 (= lt!2039575 (list!18159 (_2!34063 lt!2039580)))))

(assert (=> b!4946086 (= lt!2039574 (list!18159 (_1!34063 lt!2039580)))))

(declare-fun splitAt!394 (BalanceConc!29430 Int) tuple2!61520)

(assert (=> b!4946086 (= lt!2039580 (splitAt!394 totalInput!685 testedPSize!70))))

(declare-fun b!4946087 () Bool)

(assert (=> b!4946087 (= e!3090318 e!3090319)))

(declare-fun res!2110551 () Bool)

(assert (=> b!4946087 (=> (not res!2110551) (not e!3090319))))

(assert (=> b!4946087 (= res!2110551 (= testedPSize!70 lt!2039583))))

(assert (=> b!4946087 (= lt!2039583 (size!37803 testedP!110))))

(declare-fun setIsEmpty!28046 () Bool)

(assert (=> setIsEmpty!28046 setRes!28046))

(declare-fun b!4946088 () Bool)

(assert (=> b!4946088 (= e!3090323 e!3090326)))

(declare-fun res!2110555 () Bool)

(assert (=> b!4946088 (=> res!2110555 e!3090326)))

(declare-fun apply!13811 (BalanceConc!29430 Int) C!27212)

(declare-fun head!10607 (List!57099) C!27212)

(assert (=> b!4946088 (= res!2110555 (not (= (apply!13811 totalInput!685 testedPSize!70) (head!10607 testedSuffix!70))))))

(declare-fun drop!2288 (List!57099 Int) List!57099)

(declare-fun apply!13812 (List!57099 Int) C!27212)

(assert (=> b!4946088 (= (head!10607 (drop!2288 lt!2039579 testedPSize!70)) (apply!13812 lt!2039579 testedPSize!70))))

(declare-fun lt!2039572 () Unit!147764)

(declare-fun lemmaDropApply!1342 (List!57099 Int) Unit!147764)

(assert (=> b!4946088 (= lt!2039572 (lemmaDropApply!1342 lt!2039579 testedPSize!70))))

(assert (=> b!4946088 (not (or (not (= lt!2039574 testedP!110)) (not (= lt!2039575 testedSuffix!70))))))

(declare-fun lt!2039578 () Unit!147764)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!725 (List!57099 List!57099 List!57099 List!57099) Unit!147764)

(assert (=> b!4946088 (= lt!2039578 (lemmaConcatSameAndSameSizesThenSameLists!725 lt!2039574 lt!2039575 testedP!110 testedSuffix!70))))

(declare-fun b!4946089 () Bool)

(declare-fun res!2110553 () Bool)

(assert (=> b!4946089 (=> res!2110553 e!3090324)))

(assert (=> b!4946089 (= res!2110553 (= testedPSize!70 totalInputSize!132))))

(declare-fun setElem!28046 () Context!6246)

(declare-fun setNonEmpty!28046 () Bool)

(declare-fun tp!1387433 () Bool)

(declare-fun inv!74212 (Context!6246) Bool)

(assert (=> setNonEmpty!28046 (= setRes!28046 (and tp!1387433 (inv!74212 setElem!28046) e!3090322))))

(declare-fun setRest!28046 () (InoxSet Context!6246))

(assert (=> setNonEmpty!28046 (= z!3568 ((_ map or) (store ((as const (Array Context!6246 Bool)) false) setElem!28046 true) setRest!28046))))

(declare-fun b!4946090 () Bool)

(assert (=> b!4946090 (= e!3090327 e!3090324)))

(declare-fun res!2110552 () Bool)

(assert (=> b!4946090 (=> res!2110552 e!3090324)))

(declare-fun lostCauseZipper!799 ((InoxSet Context!6246)) Bool)

(assert (=> b!4946090 (= res!2110552 (lostCauseZipper!799 z!3568))))

(declare-fun lt!2039571 () List!57099)

(assert (=> b!4946090 (and (= testedSuffix!70 lt!2039571) (= lt!2039571 testedSuffix!70))))

(declare-fun lt!2039585 () Unit!147764)

(declare-fun lemmaSamePrefixThenSameSuffix!2479 (List!57099 List!57099 List!57099 List!57099 List!57099) Unit!147764)

(assert (=> b!4946090 (= lt!2039585 (lemmaSamePrefixThenSameSuffix!2479 testedP!110 testedSuffix!70 testedP!110 lt!2039571 lt!2039579))))

(declare-fun getSuffix!3069 (List!57099 List!57099) List!57099)

(assert (=> b!4946090 (= lt!2039571 (getSuffix!3069 lt!2039579 testedP!110))))

(declare-fun b!4946091 () Bool)

(declare-fun tp!1387431 () Bool)

(declare-fun inv!74213 (Conc!15000) Bool)

(assert (=> b!4946091 (= e!3090320 (and (inv!74213 (c!843968 totalInput!685)) tp!1387431))))

(assert (= (and start!520700 res!2110548) b!4946087))

(assert (= (and b!4946087 res!2110551) b!4946082))

(assert (= (and b!4946082 res!2110554) b!4946079))

(assert (= (and b!4946079 (not res!2110547)) b!4946090))

(assert (= (and b!4946090 (not res!2110552)) b!4946089))

(assert (= (and b!4946089 (not res!2110553)) b!4946086))

(assert (= (and b!4946086 (not res!2110550)) b!4946083))

(assert (= (and b!4946083 (not res!2110549)) b!4946088))

(assert (= (and b!4946088 (not res!2110555)) b!4946078))

(assert (= (and b!4946078 (not res!2110556)) b!4946080))

(get-info :version)

(assert (= (and start!520700 ((_ is Cons!56975) testedP!110)) b!4946085))

(assert (= (and start!520700 condSetEmpty!28046) setIsEmpty!28046))

(assert (= (and start!520700 (not condSetEmpty!28046)) setNonEmpty!28046))

(assert (= setNonEmpty!28046 b!4946081))

(assert (= start!520700 b!4946091))

(assert (= (and start!520700 ((_ is Cons!56975) testedSuffix!70)) b!4946084))

(declare-fun m!5969220 () Bool)

(assert (=> b!4946090 m!5969220))

(declare-fun m!5969222 () Bool)

(assert (=> b!4946090 m!5969222))

(declare-fun m!5969224 () Bool)

(assert (=> b!4946090 m!5969224))

(declare-fun m!5969226 () Bool)

(assert (=> b!4946080 m!5969226))

(declare-fun m!5969228 () Bool)

(assert (=> b!4946080 m!5969228))

(declare-fun m!5969230 () Bool)

(assert (=> b!4946080 m!5969230))

(declare-fun m!5969232 () Bool)

(assert (=> start!520700 m!5969232))

(declare-fun m!5969234 () Bool)

(assert (=> start!520700 m!5969234))

(declare-fun m!5969236 () Bool)

(assert (=> start!520700 m!5969236))

(declare-fun m!5969238 () Bool)

(assert (=> b!4946082 m!5969238))

(declare-fun m!5969240 () Bool)

(assert (=> b!4946078 m!5969240))

(declare-fun m!5969242 () Bool)

(assert (=> b!4946078 m!5969242))

(declare-fun m!5969244 () Bool)

(assert (=> b!4946088 m!5969244))

(declare-fun m!5969246 () Bool)

(assert (=> b!4946088 m!5969246))

(declare-fun m!5969248 () Bool)

(assert (=> b!4946088 m!5969248))

(declare-fun m!5969250 () Bool)

(assert (=> b!4946088 m!5969250))

(declare-fun m!5969252 () Bool)

(assert (=> b!4946088 m!5969252))

(declare-fun m!5969254 () Bool)

(assert (=> b!4946088 m!5969254))

(declare-fun m!5969256 () Bool)

(assert (=> b!4946088 m!5969256))

(assert (=> b!4946088 m!5969244))

(declare-fun m!5969258 () Bool)

(assert (=> b!4946079 m!5969258))

(declare-fun m!5969260 () Bool)

(assert (=> b!4946079 m!5969260))

(declare-fun m!5969262 () Bool)

(assert (=> b!4946079 m!5969262))

(declare-fun m!5969264 () Bool)

(assert (=> setNonEmpty!28046 m!5969264))

(declare-fun m!5969266 () Bool)

(assert (=> b!4946086 m!5969266))

(declare-fun m!5969268 () Bool)

(assert (=> b!4946086 m!5969268))

(declare-fun m!5969270 () Bool)

(assert (=> b!4946086 m!5969270))

(declare-fun m!5969272 () Bool)

(assert (=> b!4946086 m!5969272))

(declare-fun m!5969274 () Bool)

(assert (=> b!4946083 m!5969274))

(declare-fun m!5969276 () Bool)

(assert (=> b!4946091 m!5969276))

(declare-fun m!5969278 () Bool)

(assert (=> b!4946087 m!5969278))

(check-sat (not b!4946082) (not b!4946081) (not b!4946078) (not b!4946084) (not b!4946086) (not b!4946085) (not b!4946087) (not start!520700) (not b!4946088) tp_is_empty!36159 (not b!4946091) (not b!4946090) (not setNonEmpty!28046) (not b!4946080) (not b!4946079) (not b!4946083))
(check-sat)
