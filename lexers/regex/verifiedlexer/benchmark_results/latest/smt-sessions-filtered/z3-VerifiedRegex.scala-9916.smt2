; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!519948 () Bool)

(assert start!519948)

(declare-fun b!4942156 () Bool)

(declare-fun e!3087829 () Bool)

(declare-fun tp_is_empty!36095 () Bool)

(declare-fun tp!1386469 () Bool)

(assert (=> b!4942156 (= e!3087829 (and tp_is_empty!36095 tp!1386469))))

(declare-fun b!4942157 () Bool)

(declare-fun e!3087830 () Bool)

(declare-fun e!3087827 () Bool)

(assert (=> b!4942157 (= e!3087830 (not e!3087827))))

(declare-fun res!2108969 () Bool)

(assert (=> b!4942157 (=> res!2108969 e!3087827)))

(declare-datatypes ((C!27148 0))(
  ( (C!27149 (val!22908 Int)) )
))
(declare-datatypes ((List!57029 0))(
  ( (Nil!56905) (Cons!56905 (h!63353 C!27148) (t!367549 List!57029)) )
))
(declare-fun testedP!110 () List!57029)

(declare-fun lt!2037151 () List!57029)

(declare-fun isPrefix!5057 (List!57029 List!57029) Bool)

(assert (=> b!4942157 (= res!2108969 (not (isPrefix!5057 testedP!110 lt!2037151)))))

(declare-fun lt!2037150 () List!57029)

(assert (=> b!4942157 (isPrefix!5057 testedP!110 lt!2037150)))

(declare-datatypes ((Unit!147657 0))(
  ( (Unit!147658) )
))
(declare-fun lt!2037157 () Unit!147657)

(declare-fun testedSuffix!70 () List!57029)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3281 (List!57029 List!57029) Unit!147657)

(assert (=> b!4942157 (= lt!2037157 (lemmaConcatTwoListThenFirstIsPrefix!3281 testedP!110 testedSuffix!70))))

(declare-fun b!4942158 () Bool)

(declare-fun lt!2037155 () Bool)

(declare-fun e!3087831 () Bool)

(declare-fun lt!2037153 () List!57029)

(assert (=> b!4942158 (= e!3087831 (or lt!2037155 (= lt!2037153 testedSuffix!70)))))

(assert (=> b!4942158 (and (not lt!2037155) (= lt!2037153 testedSuffix!70))))

(declare-fun lt!2037148 () List!57029)

(assert (=> b!4942158 (= lt!2037155 (not (= lt!2037148 testedP!110)))))

(declare-fun lt!2037149 () Unit!147657)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!715 (List!57029 List!57029 List!57029 List!57029) Unit!147657)

(assert (=> b!4942158 (= lt!2037149 (lemmaConcatSameAndSameSizesThenSameLists!715 lt!2037148 lt!2037153 testedP!110 testedSuffix!70))))

(declare-fun b!4942159 () Bool)

(declare-fun e!3087833 () Bool)

(declare-fun tp!1386470 () Bool)

(assert (=> b!4942159 (= e!3087833 tp!1386470)))

(declare-fun res!2108968 () Bool)

(assert (=> start!519948 (=> (not res!2108968) (not e!3087830))))

(assert (=> start!519948 (= res!2108968 (= lt!2037150 lt!2037151))))

(declare-datatypes ((IArray!29997 0))(
  ( (IArray!29998 (innerList!15056 List!57029)) )
))
(declare-datatypes ((Conc!14968 0))(
  ( (Node!14968 (left!41514 Conc!14968) (right!41844 Conc!14968) (csize!30166 Int) (cheight!15179 Int)) (Leaf!24885 (xs!18294 IArray!29997) (csize!30167 Int)) (Empty!14968) )
))
(declare-datatypes ((BalanceConc!29366 0))(
  ( (BalanceConc!29367 (c!843060 Conc!14968)) )
))
(declare-fun totalInput!685 () BalanceConc!29366)

(declare-fun list!18103 (BalanceConc!29366) List!57029)

(assert (=> start!519948 (= lt!2037151 (list!18103 totalInput!685))))

(declare-fun ++!12432 (List!57029 List!57029) List!57029)

(assert (=> start!519948 (= lt!2037150 (++!12432 testedP!110 testedSuffix!70))))

(assert (=> start!519948 e!3087830))

(assert (=> start!519948 e!3087829))

(declare-fun condSetEmpty!27924 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13457 0))(
  ( (ElementMatch!13457 (c!843061 C!27148)) (Concat!22030 (regOne!27426 Regex!13457) (regTwo!27426 Regex!13457)) (EmptyExpr!13457) (Star!13457 (reg!13786 Regex!13457)) (EmptyLang!13457) (Union!13457 (regOne!27427 Regex!13457) (regTwo!27427 Regex!13457)) )
))
(declare-datatypes ((List!57030 0))(
  ( (Nil!56906) (Cons!56906 (h!63354 Regex!13457) (t!367550 List!57030)) )
))
(declare-datatypes ((Context!6198 0))(
  ( (Context!6199 (exprs!3599 List!57030)) )
))
(declare-fun z!3568 () (InoxSet Context!6198))

(assert (=> start!519948 (= condSetEmpty!27924 (= z!3568 ((as const (Array Context!6198 Bool)) false)))))

(declare-fun setRes!27924 () Bool)

(assert (=> start!519948 setRes!27924))

(assert (=> start!519948 true))

(declare-fun e!3087828 () Bool)

(declare-fun inv!74020 (BalanceConc!29366) Bool)

(assert (=> start!519948 (and (inv!74020 totalInput!685) e!3087828)))

(declare-fun e!3087826 () Bool)

(assert (=> start!519948 e!3087826))

(declare-fun setIsEmpty!27924 () Bool)

(assert (=> setIsEmpty!27924 setRes!27924))

(declare-fun b!4942160 () Bool)

(declare-fun res!2108967 () Bool)

(declare-fun e!3087832 () Bool)

(assert (=> b!4942160 (=> res!2108967 e!3087832)))

(declare-fun testedPSize!70 () Int)

(declare-fun totalInputSize!132 () Int)

(assert (=> b!4942160 (= res!2108967 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4942161 () Bool)

(assert (=> b!4942161 (= e!3087827 e!3087832)))

(declare-fun res!2108970 () Bool)

(assert (=> b!4942161 (=> res!2108970 e!3087832)))

(declare-fun lostCauseZipper!775 ((InoxSet Context!6198)) Bool)

(assert (=> b!4942161 (= res!2108970 (lostCauseZipper!775 z!3568))))

(declare-fun lt!2037154 () List!57029)

(assert (=> b!4942161 (and (= testedSuffix!70 lt!2037154) (= lt!2037154 testedSuffix!70))))

(declare-fun lt!2037156 () Unit!147657)

(declare-fun lemmaSamePrefixThenSameSuffix!2453 (List!57029 List!57029 List!57029 List!57029 List!57029) Unit!147657)

(assert (=> b!4942161 (= lt!2037156 (lemmaSamePrefixThenSameSuffix!2453 testedP!110 testedSuffix!70 testedP!110 lt!2037154 lt!2037151))))

(declare-fun getSuffix!3039 (List!57029 List!57029) List!57029)

(assert (=> b!4942161 (= lt!2037154 (getSuffix!3039 lt!2037151 testedP!110))))

(declare-fun b!4942162 () Bool)

(declare-fun tp!1386472 () Bool)

(declare-fun inv!74021 (Conc!14968) Bool)

(assert (=> b!4942162 (= e!3087828 (and (inv!74021 (c!843060 totalInput!685)) tp!1386472))))

(declare-fun b!4942163 () Bool)

(declare-fun res!2108972 () Bool)

(assert (=> b!4942163 (=> res!2108972 e!3087831)))

(declare-datatypes ((tuple2!61448 0))(
  ( (tuple2!61449 (_1!34027 BalanceConc!29366) (_2!34027 BalanceConc!29366)) )
))
(declare-fun lt!2037152 () tuple2!61448)

(declare-fun size!37719 (BalanceConc!29366) Int)

(assert (=> b!4942163 (= res!2108972 (not (= (size!37719 (_1!34027 lt!2037152)) testedPSize!70)))))

(declare-fun b!4942164 () Bool)

(assert (=> b!4942164 (= e!3087832 e!3087831)))

(declare-fun res!2108973 () Bool)

(assert (=> b!4942164 (=> res!2108973 e!3087831)))

(assert (=> b!4942164 (= res!2108973 (not (= (++!12432 lt!2037148 lt!2037153) lt!2037151)))))

(assert (=> b!4942164 (= lt!2037153 (list!18103 (_2!34027 lt!2037152)))))

(assert (=> b!4942164 (= lt!2037148 (list!18103 (_1!34027 lt!2037152)))))

(declare-fun splitAt!372 (BalanceConc!29366 Int) tuple2!61448)

(assert (=> b!4942164 (= lt!2037152 (splitAt!372 totalInput!685 testedPSize!70))))

(declare-fun b!4942165 () Bool)

(declare-fun res!2108974 () Bool)

(assert (=> b!4942165 (=> (not res!2108974) (not e!3087830))))

(assert (=> b!4942165 (= res!2108974 (= totalInputSize!132 (size!37719 totalInput!685)))))

(declare-fun b!4942166 () Bool)

(declare-fun res!2108971 () Bool)

(assert (=> b!4942166 (=> (not res!2108971) (not e!3087830))))

(declare-fun size!37720 (List!57029) Int)

(assert (=> b!4942166 (= res!2108971 (= testedPSize!70 (size!37720 testedP!110)))))

(declare-fun b!4942167 () Bool)

(declare-fun tp!1386473 () Bool)

(assert (=> b!4942167 (= e!3087826 (and tp_is_empty!36095 tp!1386473))))

(declare-fun setNonEmpty!27924 () Bool)

(declare-fun setElem!27924 () Context!6198)

(declare-fun tp!1386471 () Bool)

(declare-fun inv!74022 (Context!6198) Bool)

(assert (=> setNonEmpty!27924 (= setRes!27924 (and tp!1386471 (inv!74022 setElem!27924) e!3087833))))

(declare-fun setRest!27924 () (InoxSet Context!6198))

(assert (=> setNonEmpty!27924 (= z!3568 ((_ map or) (store ((as const (Array Context!6198 Bool)) false) setElem!27924 true) setRest!27924))))

(assert (= (and start!519948 res!2108968) b!4942166))

(assert (= (and b!4942166 res!2108971) b!4942165))

(assert (= (and b!4942165 res!2108974) b!4942157))

(assert (= (and b!4942157 (not res!2108969)) b!4942161))

(assert (= (and b!4942161 (not res!2108970)) b!4942160))

(assert (= (and b!4942160 (not res!2108967)) b!4942164))

(assert (= (and b!4942164 (not res!2108973)) b!4942163))

(assert (= (and b!4942163 (not res!2108972)) b!4942158))

(get-info :version)

(assert (= (and start!519948 ((_ is Cons!56905) testedP!110)) b!4942156))

(assert (= (and start!519948 condSetEmpty!27924) setIsEmpty!27924))

(assert (= (and start!519948 (not condSetEmpty!27924)) setNonEmpty!27924))

(assert (= setNonEmpty!27924 b!4942159))

(assert (= start!519948 b!4942162))

(assert (= (and start!519948 ((_ is Cons!56905) testedSuffix!70)) b!4942167))

(declare-fun m!5965126 () Bool)

(assert (=> b!4942158 m!5965126))

(declare-fun m!5965128 () Bool)

(assert (=> b!4942161 m!5965128))

(declare-fun m!5965130 () Bool)

(assert (=> b!4942161 m!5965130))

(declare-fun m!5965132 () Bool)

(assert (=> b!4942161 m!5965132))

(declare-fun m!5965134 () Bool)

(assert (=> start!519948 m!5965134))

(declare-fun m!5965136 () Bool)

(assert (=> start!519948 m!5965136))

(declare-fun m!5965138 () Bool)

(assert (=> start!519948 m!5965138))

(declare-fun m!5965140 () Bool)

(assert (=> b!4942164 m!5965140))

(declare-fun m!5965142 () Bool)

(assert (=> b!4942164 m!5965142))

(declare-fun m!5965144 () Bool)

(assert (=> b!4942164 m!5965144))

(declare-fun m!5965146 () Bool)

(assert (=> b!4942164 m!5965146))

(declare-fun m!5965148 () Bool)

(assert (=> setNonEmpty!27924 m!5965148))

(declare-fun m!5965150 () Bool)

(assert (=> b!4942163 m!5965150))

(declare-fun m!5965152 () Bool)

(assert (=> b!4942157 m!5965152))

(declare-fun m!5965154 () Bool)

(assert (=> b!4942157 m!5965154))

(declare-fun m!5965156 () Bool)

(assert (=> b!4942157 m!5965156))

(declare-fun m!5965158 () Bool)

(assert (=> b!4942166 m!5965158))

(declare-fun m!5965160 () Bool)

(assert (=> b!4942165 m!5965160))

(declare-fun m!5965162 () Bool)

(assert (=> b!4942162 m!5965162))

(check-sat (not b!4942158) tp_is_empty!36095 (not b!4942165) (not b!4942166) (not b!4942157) (not setNonEmpty!27924) (not b!4942159) (not b!4942167) (not b!4942164) (not b!4942161) (not b!4942156) (not start!519948) (not b!4942163) (not b!4942162))
(check-sat)
