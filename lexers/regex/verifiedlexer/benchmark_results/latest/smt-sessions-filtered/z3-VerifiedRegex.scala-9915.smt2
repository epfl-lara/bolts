; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!519944 () Bool)

(assert start!519944)

(declare-fun b!4942084 () Bool)

(declare-fun e!3087783 () Bool)

(declare-fun e!3087784 () Bool)

(assert (=> b!4942084 (= e!3087783 (not e!3087784))))

(declare-fun res!2108920 () Bool)

(assert (=> b!4942084 (=> res!2108920 e!3087784)))

(declare-datatypes ((C!27144 0))(
  ( (C!27145 (val!22906 Int)) )
))
(declare-datatypes ((List!57025 0))(
  ( (Nil!56901) (Cons!56901 (h!63349 C!27144) (t!367545 List!57025)) )
))
(declare-fun testedP!110 () List!57025)

(declare-fun lt!2037094 () List!57025)

(declare-fun isPrefix!5055 (List!57025 List!57025) Bool)

(assert (=> b!4942084 (= res!2108920 (not (isPrefix!5055 testedP!110 lt!2037094)))))

(declare-fun lt!2037093 () List!57025)

(assert (=> b!4942084 (isPrefix!5055 testedP!110 lt!2037093)))

(declare-datatypes ((Unit!147653 0))(
  ( (Unit!147654) )
))
(declare-fun lt!2037088 () Unit!147653)

(declare-fun testedSuffix!70 () List!57025)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3279 (List!57025 List!57025) Unit!147653)

(assert (=> b!4942084 (= lt!2037088 (lemmaConcatTwoListThenFirstIsPrefix!3279 testedP!110 testedSuffix!70))))

(declare-datatypes ((Regex!13455 0))(
  ( (ElementMatch!13455 (c!843056 C!27144)) (Concat!22028 (regOne!27422 Regex!13455) (regTwo!27422 Regex!13455)) (EmptyExpr!13455) (Star!13455 (reg!13784 Regex!13455)) (EmptyLang!13455) (Union!13455 (regOne!27423 Regex!13455) (regTwo!27423 Regex!13455)) )
))
(declare-datatypes ((List!57026 0))(
  ( (Nil!56902) (Cons!56902 (h!63350 Regex!13455) (t!367546 List!57026)) )
))
(declare-datatypes ((Context!6194 0))(
  ( (Context!6195 (exprs!3597 List!57026)) )
))
(declare-fun setElem!27918 () Context!6194)

(declare-fun setNonEmpty!27918 () Bool)

(declare-fun setRes!27918 () Bool)

(declare-fun tp!1386443 () Bool)

(declare-fun e!3087778 () Bool)

(declare-fun inv!74011 (Context!6194) Bool)

(assert (=> setNonEmpty!27918 (= setRes!27918 (and tp!1386443 (inv!74011 setElem!27918) e!3087778))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3568 () (InoxSet Context!6194))

(declare-fun setRest!27918 () (InoxSet Context!6194))

(assert (=> setNonEmpty!27918 (= z!3568 ((_ map or) (store ((as const (Array Context!6194 Bool)) false) setElem!27918 true) setRest!27918))))

(declare-fun res!2108926 () Bool)

(assert (=> start!519944 (=> (not res!2108926) (not e!3087783))))

(assert (=> start!519944 (= res!2108926 (= lt!2037093 lt!2037094))))

(declare-datatypes ((IArray!29993 0))(
  ( (IArray!29994 (innerList!15054 List!57025)) )
))
(declare-datatypes ((Conc!14966 0))(
  ( (Node!14966 (left!41511 Conc!14966) (right!41841 Conc!14966) (csize!30162 Int) (cheight!15177 Int)) (Leaf!24882 (xs!18292 IArray!29993) (csize!30163 Int)) (Empty!14966) )
))
(declare-datatypes ((BalanceConc!29362 0))(
  ( (BalanceConc!29363 (c!843057 Conc!14966)) )
))
(declare-fun totalInput!685 () BalanceConc!29362)

(declare-fun list!18101 (BalanceConc!29362) List!57025)

(assert (=> start!519944 (= lt!2037094 (list!18101 totalInput!685))))

(declare-fun ++!12430 (List!57025 List!57025) List!57025)

(assert (=> start!519944 (= lt!2037093 (++!12430 testedP!110 testedSuffix!70))))

(assert (=> start!519944 e!3087783))

(declare-fun e!3087780 () Bool)

(assert (=> start!519944 e!3087780))

(declare-fun condSetEmpty!27918 () Bool)

(assert (=> start!519944 (= condSetEmpty!27918 (= z!3568 ((as const (Array Context!6194 Bool)) false)))))

(assert (=> start!519944 setRes!27918))

(assert (=> start!519944 true))

(declare-fun e!3087781 () Bool)

(declare-fun inv!74012 (BalanceConc!29362) Bool)

(assert (=> start!519944 (and (inv!74012 totalInput!685) e!3087781)))

(declare-fun e!3087785 () Bool)

(assert (=> start!519944 e!3087785))

(declare-fun b!4942085 () Bool)

(declare-fun res!2108925 () Bool)

(declare-fun e!3087779 () Bool)

(assert (=> b!4942085 (=> res!2108925 e!3087779)))

(declare-fun testedPSize!70 () Int)

(declare-fun totalInputSize!132 () Int)

(assert (=> b!4942085 (= res!2108925 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4942086 () Bool)

(declare-fun res!2108923 () Bool)

(assert (=> b!4942086 (=> (not res!2108923) (not e!3087783))))

(declare-fun size!37715 (BalanceConc!29362) Int)

(assert (=> b!4942086 (= res!2108923 (= totalInputSize!132 (size!37715 totalInput!685)))))

(declare-fun b!4942087 () Bool)

(declare-fun res!2108921 () Bool)

(declare-fun e!3087782 () Bool)

(assert (=> b!4942087 (=> res!2108921 e!3087782)))

(declare-datatypes ((tuple2!61444 0))(
  ( (tuple2!61445 (_1!34025 BalanceConc!29362) (_2!34025 BalanceConc!29362)) )
))
(declare-fun lt!2037097 () tuple2!61444)

(assert (=> b!4942087 (= res!2108921 (not (= (size!37715 (_1!34025 lt!2037097)) testedPSize!70)))))

(declare-fun b!4942088 () Bool)

(declare-fun lt!2037095 () Bool)

(assert (=> b!4942088 (= e!3087782 lt!2037095)))

(declare-fun lt!2037096 () List!57025)

(assert (=> b!4942088 (and lt!2037095 (= lt!2037096 testedSuffix!70))))

(declare-fun lt!2037090 () List!57025)

(assert (=> b!4942088 (= lt!2037095 (= lt!2037090 testedP!110))))

(declare-fun lt!2037092 () Unit!147653)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!713 (List!57025 List!57025 List!57025 List!57025) Unit!147653)

(assert (=> b!4942088 (= lt!2037092 (lemmaConcatSameAndSameSizesThenSameLists!713 lt!2037090 lt!2037096 testedP!110 testedSuffix!70))))

(declare-fun b!4942089 () Bool)

(assert (=> b!4942089 (= e!3087784 e!3087779)))

(declare-fun res!2108922 () Bool)

(assert (=> b!4942089 (=> res!2108922 e!3087779)))

(declare-fun lostCauseZipper!773 ((InoxSet Context!6194)) Bool)

(assert (=> b!4942089 (= res!2108922 (lostCauseZipper!773 z!3568))))

(declare-fun lt!2037091 () List!57025)

(assert (=> b!4942089 (and (= testedSuffix!70 lt!2037091) (= lt!2037091 testedSuffix!70))))

(declare-fun lt!2037089 () Unit!147653)

(declare-fun lemmaSamePrefixThenSameSuffix!2451 (List!57025 List!57025 List!57025 List!57025 List!57025) Unit!147653)

(assert (=> b!4942089 (= lt!2037089 (lemmaSamePrefixThenSameSuffix!2451 testedP!110 testedSuffix!70 testedP!110 lt!2037091 lt!2037094))))

(declare-fun getSuffix!3037 (List!57025 List!57025) List!57025)

(assert (=> b!4942089 (= lt!2037091 (getSuffix!3037 lt!2037094 testedP!110))))

(declare-fun setIsEmpty!27918 () Bool)

(assert (=> setIsEmpty!27918 setRes!27918))

(declare-fun b!4942090 () Bool)

(declare-fun tp_is_empty!36091 () Bool)

(declare-fun tp!1386441 () Bool)

(assert (=> b!4942090 (= e!3087780 (and tp_is_empty!36091 tp!1386441))))

(declare-fun b!4942091 () Bool)

(declare-fun tp!1386439 () Bool)

(declare-fun inv!74013 (Conc!14966) Bool)

(assert (=> b!4942091 (= e!3087781 (and (inv!74013 (c!843057 totalInput!685)) tp!1386439))))

(declare-fun b!4942092 () Bool)

(declare-fun res!2108919 () Bool)

(assert (=> b!4942092 (=> (not res!2108919) (not e!3087783))))

(declare-fun size!37716 (List!57025) Int)

(assert (=> b!4942092 (= res!2108919 (= testedPSize!70 (size!37716 testedP!110)))))

(declare-fun b!4942093 () Bool)

(declare-fun tp!1386440 () Bool)

(assert (=> b!4942093 (= e!3087778 tp!1386440)))

(declare-fun b!4942094 () Bool)

(assert (=> b!4942094 (= e!3087779 e!3087782)))

(declare-fun res!2108924 () Bool)

(assert (=> b!4942094 (=> res!2108924 e!3087782)))

(assert (=> b!4942094 (= res!2108924 (not (= (++!12430 lt!2037090 lt!2037096) lt!2037094)))))

(assert (=> b!4942094 (= lt!2037096 (list!18101 (_2!34025 lt!2037097)))))

(assert (=> b!4942094 (= lt!2037090 (list!18101 (_1!34025 lt!2037097)))))

(declare-fun splitAt!370 (BalanceConc!29362 Int) tuple2!61444)

(assert (=> b!4942094 (= lt!2037097 (splitAt!370 totalInput!685 testedPSize!70))))

(declare-fun b!4942095 () Bool)

(declare-fun tp!1386442 () Bool)

(assert (=> b!4942095 (= e!3087785 (and tp_is_empty!36091 tp!1386442))))

(assert (= (and start!519944 res!2108926) b!4942092))

(assert (= (and b!4942092 res!2108919) b!4942086))

(assert (= (and b!4942086 res!2108923) b!4942084))

(assert (= (and b!4942084 (not res!2108920)) b!4942089))

(assert (= (and b!4942089 (not res!2108922)) b!4942085))

(assert (= (and b!4942085 (not res!2108925)) b!4942094))

(assert (= (and b!4942094 (not res!2108924)) b!4942087))

(assert (= (and b!4942087 (not res!2108921)) b!4942088))

(get-info :version)

(assert (= (and start!519944 ((_ is Cons!56901) testedP!110)) b!4942090))

(assert (= (and start!519944 condSetEmpty!27918) setIsEmpty!27918))

(assert (= (and start!519944 (not condSetEmpty!27918)) setNonEmpty!27918))

(assert (= setNonEmpty!27918 b!4942093))

(assert (= start!519944 b!4942091))

(assert (= (and start!519944 ((_ is Cons!56901) testedSuffix!70)) b!4942095))

(declare-fun m!5965050 () Bool)

(assert (=> b!4942088 m!5965050))

(declare-fun m!5965052 () Bool)

(assert (=> b!4942094 m!5965052))

(declare-fun m!5965054 () Bool)

(assert (=> b!4942094 m!5965054))

(declare-fun m!5965056 () Bool)

(assert (=> b!4942094 m!5965056))

(declare-fun m!5965058 () Bool)

(assert (=> b!4942094 m!5965058))

(declare-fun m!5965060 () Bool)

(assert (=> b!4942091 m!5965060))

(declare-fun m!5965062 () Bool)

(assert (=> b!4942087 m!5965062))

(declare-fun m!5965064 () Bool)

(assert (=> setNonEmpty!27918 m!5965064))

(declare-fun m!5965066 () Bool)

(assert (=> b!4942086 m!5965066))

(declare-fun m!5965068 () Bool)

(assert (=> start!519944 m!5965068))

(declare-fun m!5965070 () Bool)

(assert (=> start!519944 m!5965070))

(declare-fun m!5965072 () Bool)

(assert (=> start!519944 m!5965072))

(declare-fun m!5965074 () Bool)

(assert (=> b!4942089 m!5965074))

(declare-fun m!5965076 () Bool)

(assert (=> b!4942089 m!5965076))

(declare-fun m!5965078 () Bool)

(assert (=> b!4942089 m!5965078))

(declare-fun m!5965080 () Bool)

(assert (=> b!4942092 m!5965080))

(declare-fun m!5965082 () Bool)

(assert (=> b!4942084 m!5965082))

(declare-fun m!5965084 () Bool)

(assert (=> b!4942084 m!5965084))

(declare-fun m!5965086 () Bool)

(assert (=> b!4942084 m!5965086))

(check-sat (not b!4942088) (not b!4942091) (not b!4942094) (not b!4942084) (not b!4942090) (not setNonEmpty!27918) (not b!4942095) (not b!4942092) (not b!4942089) (not b!4942086) (not b!4942087) (not start!519944) (not b!4942093) tp_is_empty!36091)
(check-sat)
