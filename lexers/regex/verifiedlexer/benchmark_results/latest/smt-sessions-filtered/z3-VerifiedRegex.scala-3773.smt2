; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!210614 () Bool)

(assert start!210614)

(declare-fun b!2171262 () Bool)

(declare-fun e!1388521 () Bool)

(declare-fun e!1388517 () Bool)

(assert (=> b!2171262 (= e!1388521 e!1388517)))

(declare-fun res!934359 () Bool)

(assert (=> b!2171262 (=> (not res!934359) (not e!1388517))))

(declare-datatypes ((C!12172 0))(
  ( (C!12173 (val!7072 Int)) )
))
(declare-datatypes ((List!25252 0))(
  ( (Nil!25168) (Cons!25168 (h!30569 C!12172) (t!197820 List!25252)) )
))
(declare-fun lt!808712 () List!25252)

(declare-fun lt!808704 () List!25252)

(declare-fun isSuffix!680 (List!25252 List!25252) Bool)

(assert (=> b!2171262 (= res!934359 (isSuffix!680 lt!808712 lt!808704))))

(declare-datatypes ((IArray!16303 0))(
  ( (IArray!16304 (innerList!8209 List!25252)) )
))
(declare-datatypes ((Conc!8149 0))(
  ( (Node!8149 (left!19338 Conc!8149) (right!19668 Conc!8149) (csize!16528 Int) (cheight!8360 Int)) (Leaf!11923 (xs!11091 IArray!16303) (csize!16529 Int)) (Empty!8149) )
))
(declare-datatypes ((BalanceConc!16060 0))(
  ( (BalanceConc!16061 (c!344110 Conc!8149)) )
))
(declare-fun totalInput!977 () BalanceConc!16060)

(declare-fun list!9650 (BalanceConc!16060) List!25252)

(assert (=> b!2171262 (= lt!808704 (list!9650 totalInput!977))))

(declare-fun input!5540 () BalanceConc!16060)

(assert (=> b!2171262 (= lt!808712 (list!9650 input!5540))))

(declare-fun e!1388520 () Bool)

(declare-fun lt!808702 () Int)

(declare-fun lt!808705 () Int)

(declare-fun lt!808709 () Bool)

(declare-fun lt!808714 () Int)

(declare-fun b!2171263 () Bool)

(assert (=> b!2171263 (= e!1388520 (not (or (< lt!808702 0) (> lt!808702 lt!808705) (< lt!808714 (- 1)) (>= lt!808714 lt!808702) (not lt!808709) (= lt!808714 (- lt!808702 1)))))))

(assert (=> b!2171263 (= lt!808714 (ite lt!808709 (- lt!808702 1) (- 1)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6013 0))(
  ( (ElementMatch!6013 (c!344111 C!12172)) (Concat!10315 (regOne!12538 Regex!6013) (regTwo!12538 Regex!6013)) (EmptyExpr!6013) (Star!6013 (reg!6342 Regex!6013)) (EmptyLang!6013) (Union!6013 (regOne!12539 Regex!6013) (regTwo!12539 Regex!6013)) )
))
(declare-datatypes ((List!25253 0))(
  ( (Nil!25169) (Cons!25169 (h!30570 Regex!6013) (t!197821 List!25253)) )
))
(declare-datatypes ((Context!3166 0))(
  ( (Context!3167 (exprs!2083 List!25253)) )
))
(declare-fun z!4055 () (InoxSet Context!3166))

(declare-fun nullableZipper!293 ((InoxSet Context!3166)) Bool)

(assert (=> b!2171263 (= lt!808709 (nullableZipper!293 z!4055))))

(declare-fun isPrefix!2129 (List!25252 List!25252) Bool)

(declare-fun take!221 (List!25252 Int) List!25252)

(assert (=> b!2171263 (isPrefix!2129 (take!221 lt!808704 lt!808702) lt!808704)))

(declare-datatypes ((Unit!38233 0))(
  ( (Unit!38234) )
))
(declare-fun lt!808713 () Unit!38233)

(declare-fun lemmaTakeIsPrefix!44 (List!25252 Int) Unit!38233)

(assert (=> b!2171263 (= lt!808713 (lemmaTakeIsPrefix!44 lt!808704 lt!808702))))

(declare-datatypes ((tuple2!24926 0))(
  ( (tuple2!24927 (_1!14833 List!25252) (_2!14833 List!25252)) )
))
(declare-fun lt!808707 () tuple2!24926)

(declare-fun lt!808703 () List!25252)

(assert (=> b!2171263 (isPrefix!2129 (_1!14833 lt!808707) lt!808703)))

(declare-fun lt!808706 () Unit!38233)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1412 (List!25252 List!25252) Unit!38233)

(assert (=> b!2171263 (= lt!808706 (lemmaConcatTwoListThenFirstIsPrefix!1412 (_1!14833 lt!808707) (_2!14833 lt!808707)))))

(declare-fun lt!808716 () List!25252)

(declare-fun lt!808711 () List!25252)

(assert (=> b!2171263 (isPrefix!2129 lt!808716 lt!808711)))

(declare-fun lt!808715 () Unit!38233)

(declare-fun lt!808710 () List!25252)

(assert (=> b!2171263 (= lt!808715 (lemmaConcatTwoListThenFirstIsPrefix!1412 lt!808716 lt!808710))))

(declare-fun b!2171264 () Bool)

(declare-fun e!1388516 () Bool)

(declare-fun tp_is_empty!9633 () Bool)

(assert (=> b!2171264 (= e!1388516 tp_is_empty!9633)))

(declare-fun b!2171265 () Bool)

(declare-fun res!934363 () Bool)

(assert (=> b!2171265 (=> (not res!934363) (not e!1388521))))

(declare-fun r!12534 () Regex!6013)

(declare-datatypes ((List!25254 0))(
  ( (Nil!25170) (Cons!25170 (h!30571 Context!3166) (t!197822 List!25254)) )
))
(declare-fun unfocusZipper!120 (List!25254) Regex!6013)

(declare-fun toList!1196 ((InoxSet Context!3166)) List!25254)

(assert (=> b!2171265 (= res!934363 (= (unfocusZipper!120 (toList!1196 z!4055)) r!12534))))

(declare-fun b!2171266 () Bool)

(declare-fun tp!677841 () Bool)

(assert (=> b!2171266 (= e!1388516 tp!677841)))

(declare-fun b!2171267 () Bool)

(declare-fun e!1388515 () Bool)

(assert (=> b!2171267 (= e!1388517 e!1388515)))

(declare-fun res!934362 () Bool)

(assert (=> b!2171267 (=> (not res!934362) (not e!1388515))))

(assert (=> b!2171267 (= res!934362 (= lt!808711 lt!808712))))

(declare-fun ++!6372 (List!25252 List!25252) List!25252)

(assert (=> b!2171267 (= lt!808711 (++!6372 lt!808716 lt!808710))))

(declare-datatypes ((tuple2!24928 0))(
  ( (tuple2!24929 (_1!14834 BalanceConc!16060) (_2!14834 BalanceConc!16060)) )
))
(declare-fun lt!808708 () tuple2!24928)

(assert (=> b!2171267 (= lt!808710 (list!9650 (_2!14834 lt!808708)))))

(assert (=> b!2171267 (= lt!808716 (list!9650 (_1!14834 lt!808708)))))

(declare-fun findLongestMatch!567 (Regex!6013 List!25252) tuple2!24926)

(assert (=> b!2171267 (= lt!808707 (findLongestMatch!567 r!12534 lt!808712))))

(declare-fun size!19663 (BalanceConc!16060) Int)

(assert (=> b!2171267 (= lt!808702 (- lt!808705 (size!19663 input!5540)))))

(assert (=> b!2171267 (= lt!808705 (size!19663 totalInput!977))))

(declare-fun findLongestMatchZipperSequenceV3!62 ((InoxSet Context!3166) BalanceConc!16060 BalanceConc!16060) tuple2!24928)

(assert (=> b!2171267 (= lt!808708 (findLongestMatchZipperSequenceV3!62 z!4055 input!5540 totalInput!977))))

(declare-fun res!934360 () Bool)

(assert (=> start!210614 (=> (not res!934360) (not e!1388521))))

(declare-fun validRegex!2289 (Regex!6013) Bool)

(assert (=> start!210614 (= res!934360 (validRegex!2289 r!12534))))

(assert (=> start!210614 e!1388521))

(assert (=> start!210614 e!1388516))

(declare-fun condSetEmpty!18196 () Bool)

(assert (=> start!210614 (= condSetEmpty!18196 (= z!4055 ((as const (Array Context!3166 Bool)) false)))))

(declare-fun setRes!18196 () Bool)

(assert (=> start!210614 setRes!18196))

(declare-fun e!1388519 () Bool)

(declare-fun inv!33399 (BalanceConc!16060) Bool)

(assert (=> start!210614 (and (inv!33399 totalInput!977) e!1388519)))

(declare-fun e!1388514 () Bool)

(assert (=> start!210614 (and (inv!33399 input!5540) e!1388514)))

(declare-fun setIsEmpty!18196 () Bool)

(assert (=> setIsEmpty!18196 setRes!18196))

(declare-fun b!2171268 () Bool)

(assert (=> b!2171268 (= e!1388515 e!1388520)))

(declare-fun res!934361 () Bool)

(assert (=> b!2171268 (=> (not res!934361) (not e!1388520))))

(assert (=> b!2171268 (= res!934361 (= lt!808703 lt!808712))))

(assert (=> b!2171268 (= lt!808703 (++!6372 (_1!14833 lt!808707) (_2!14833 lt!808707)))))

(declare-fun b!2171269 () Bool)

(declare-fun tp!677839 () Bool)

(declare-fun inv!33400 (Conc!8149) Bool)

(assert (=> b!2171269 (= e!1388514 (and (inv!33400 (c!344110 input!5540)) tp!677839))))

(declare-fun e!1388518 () Bool)

(declare-fun setNonEmpty!18196 () Bool)

(declare-fun setElem!18196 () Context!3166)

(declare-fun tp!677834 () Bool)

(declare-fun inv!33401 (Context!3166) Bool)

(assert (=> setNonEmpty!18196 (= setRes!18196 (and tp!677834 (inv!33401 setElem!18196) e!1388518))))

(declare-fun setRest!18196 () (InoxSet Context!3166))

(assert (=> setNonEmpty!18196 (= z!4055 ((_ map or) (store ((as const (Array Context!3166 Bool)) false) setElem!18196 true) setRest!18196))))

(declare-fun b!2171270 () Bool)

(declare-fun tp!677838 () Bool)

(declare-fun tp!677837 () Bool)

(assert (=> b!2171270 (= e!1388516 (and tp!677838 tp!677837))))

(declare-fun b!2171271 () Bool)

(declare-fun tp!677840 () Bool)

(declare-fun tp!677842 () Bool)

(assert (=> b!2171271 (= e!1388516 (and tp!677840 tp!677842))))

(declare-fun b!2171272 () Bool)

(declare-fun tp!677835 () Bool)

(assert (=> b!2171272 (= e!1388518 tp!677835)))

(declare-fun b!2171273 () Bool)

(declare-fun tp!677836 () Bool)

(assert (=> b!2171273 (= e!1388519 (and (inv!33400 (c!344110 totalInput!977)) tp!677836))))

(assert (= (and start!210614 res!934360) b!2171265))

(assert (= (and b!2171265 res!934363) b!2171262))

(assert (= (and b!2171262 res!934359) b!2171267))

(assert (= (and b!2171267 res!934362) b!2171268))

(assert (= (and b!2171268 res!934361) b!2171263))

(get-info :version)

(assert (= (and start!210614 ((_ is ElementMatch!6013) r!12534)) b!2171264))

(assert (= (and start!210614 ((_ is Concat!10315) r!12534)) b!2171271))

(assert (= (and start!210614 ((_ is Star!6013) r!12534)) b!2171266))

(assert (= (and start!210614 ((_ is Union!6013) r!12534)) b!2171270))

(assert (= (and start!210614 condSetEmpty!18196) setIsEmpty!18196))

(assert (= (and start!210614 (not condSetEmpty!18196)) setNonEmpty!18196))

(assert (= setNonEmpty!18196 b!2171272))

(assert (= start!210614 b!2171273))

(assert (= start!210614 b!2171269))

(declare-fun m!2612357 () Bool)

(assert (=> b!2171268 m!2612357))

(declare-fun m!2612359 () Bool)

(assert (=> b!2171269 m!2612359))

(declare-fun m!2612361 () Bool)

(assert (=> b!2171267 m!2612361))

(declare-fun m!2612363 () Bool)

(assert (=> b!2171267 m!2612363))

(declare-fun m!2612365 () Bool)

(assert (=> b!2171267 m!2612365))

(declare-fun m!2612367 () Bool)

(assert (=> b!2171267 m!2612367))

(declare-fun m!2612369 () Bool)

(assert (=> b!2171267 m!2612369))

(declare-fun m!2612371 () Bool)

(assert (=> b!2171267 m!2612371))

(declare-fun m!2612373 () Bool)

(assert (=> b!2171267 m!2612373))

(declare-fun m!2612375 () Bool)

(assert (=> b!2171262 m!2612375))

(declare-fun m!2612377 () Bool)

(assert (=> b!2171262 m!2612377))

(declare-fun m!2612379 () Bool)

(assert (=> b!2171262 m!2612379))

(declare-fun m!2612381 () Bool)

(assert (=> b!2171273 m!2612381))

(declare-fun m!2612383 () Bool)

(assert (=> b!2171263 m!2612383))

(declare-fun m!2612385 () Bool)

(assert (=> b!2171263 m!2612385))

(declare-fun m!2612387 () Bool)

(assert (=> b!2171263 m!2612387))

(declare-fun m!2612389 () Bool)

(assert (=> b!2171263 m!2612389))

(declare-fun m!2612391 () Bool)

(assert (=> b!2171263 m!2612391))

(declare-fun m!2612393 () Bool)

(assert (=> b!2171263 m!2612393))

(declare-fun m!2612395 () Bool)

(assert (=> b!2171263 m!2612395))

(assert (=> b!2171263 m!2612389))

(declare-fun m!2612397 () Bool)

(assert (=> b!2171263 m!2612397))

(declare-fun m!2612399 () Bool)

(assert (=> b!2171265 m!2612399))

(assert (=> b!2171265 m!2612399))

(declare-fun m!2612401 () Bool)

(assert (=> b!2171265 m!2612401))

(declare-fun m!2612403 () Bool)

(assert (=> start!210614 m!2612403))

(declare-fun m!2612405 () Bool)

(assert (=> start!210614 m!2612405))

(declare-fun m!2612407 () Bool)

(assert (=> start!210614 m!2612407))

(declare-fun m!2612409 () Bool)

(assert (=> setNonEmpty!18196 m!2612409))

(check-sat (not start!210614) tp_is_empty!9633 (not b!2171271) (not b!2171265) (not b!2171268) (not b!2171272) (not b!2171263) (not b!2171269) (not b!2171273) (not b!2171266) (not b!2171262) (not b!2171270) (not setNonEmpty!18196) (not b!2171267))
(check-sat)
