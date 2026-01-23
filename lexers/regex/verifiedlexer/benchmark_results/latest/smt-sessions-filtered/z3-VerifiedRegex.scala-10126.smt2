; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!530222 () Bool)

(assert start!530222)

(declare-fun b!5018619 () Bool)

(declare-fun e!3135214 () Bool)

(declare-fun e!3135217 () Bool)

(assert (=> b!5018619 (= e!3135214 (not e!3135217))))

(declare-fun res!2140125 () Bool)

(assert (=> b!5018619 (=> res!2140125 e!3135217)))

(declare-fun from!1212 () Int)

(declare-fun lt!2077105 () Int)

(declare-fun knownSize!24 () Int)

(assert (=> b!5018619 (= res!2140125 (or (< (+ 1 from!1212) 0) (> (+ 1 from!1212) lt!2077105) (< (- knownSize!24 1) 0) (> (- knownSize!24 1) (- lt!2077105 (+ 1 from!1212)))))))

(declare-datatypes ((C!27924 0))(
  ( (C!27925 (val!23328 Int)) )
))
(declare-fun lt!2077108 () C!27924)

(declare-datatypes ((List!58098 0))(
  ( (Nil!57974) (Cons!57974 (h!64422 C!27924) (t!370474 List!58098)) )
))
(declare-fun lt!2077114 () List!58098)

(declare-fun lt!2077112 () List!58098)

(declare-fun take!696 (List!58098 Int) List!58098)

(assert (=> b!5018619 (= (Cons!57974 lt!2077108 lt!2077112) (take!696 lt!2077114 (+ 1 (- knownSize!24 1))))))

(declare-fun lt!2077107 () List!58098)

(assert (=> b!5018619 (= lt!2077112 (take!696 lt!2077107 (- knownSize!24 1)))))

(declare-datatypes ((Unit!149187 0))(
  ( (Unit!149188) )
))
(declare-fun lt!2077113 () Unit!149187)

(declare-fun lt!2077106 () List!58098)

(declare-fun lemmaDropTakeAddOneLeft!56 (List!58098 Int Int) Unit!149187)

(assert (=> b!5018619 (= lt!2077113 (lemmaDropTakeAddOneLeft!56 lt!2077106 from!1212 (- knownSize!24 1)))))

(declare-fun lt!2077111 () Int)

(assert (=> b!5018619 (= (Cons!57974 lt!2077108 (take!696 lt!2077107 lt!2077111)) (take!696 lt!2077114 (+ 1 lt!2077111)))))

(declare-fun drop!2500 (List!58098 Int) List!58098)

(assert (=> b!5018619 (= lt!2077107 (drop!2500 lt!2077106 (+ 1 from!1212)))))

(declare-fun apply!14027 (List!58098 Int) C!27924)

(assert (=> b!5018619 (= lt!2077108 (apply!14027 lt!2077106 from!1212))))

(declare-fun lt!2077115 () Unit!149187)

(assert (=> b!5018619 (= lt!2077115 (lemmaDropTakeAddOneLeft!56 lt!2077106 from!1212 lt!2077111))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13837 0))(
  ( (ElementMatch!13837 (c!857469 C!27924)) (Concat!22630 (regOne!28186 Regex!13837) (regTwo!28186 Regex!13837)) (EmptyExpr!13837) (Star!13837 (reg!14166 Regex!13837)) (EmptyLang!13837) (Union!13837 (regOne!28187 Regex!13837) (regTwo!28187 Regex!13837)) )
))
(declare-datatypes ((List!58099 0))(
  ( (Nil!57975) (Cons!57975 (h!64423 Regex!13837) (t!370475 List!58099)) )
))
(declare-datatypes ((Context!6524 0))(
  ( (Context!6525 (exprs!3762 List!58099)) )
))
(declare-fun lt!2077116 () (InoxSet Context!6524))

(declare-datatypes ((IArray!30773 0))(
  ( (IArray!30774 (innerList!15444 List!58098)) )
))
(declare-datatypes ((Conc!15356 0))(
  ( (Node!15356 (left!42380 Conc!15356) (right!42710 Conc!15356) (csize!30942 Int) (cheight!15567 Int)) (Leaf!25483 (xs!18682 IArray!30773) (csize!30943 Int)) (Empty!15356) )
))
(declare-datatypes ((BalanceConc!30142 0))(
  ( (BalanceConc!30143 (c!857470 Conc!15356)) )
))
(declare-fun totalInput!1125 () BalanceConc!30142)

(declare-fun findLongestMatchInnerZipperFastV2!165 ((InoxSet Context!6524) Int BalanceConc!30142 Int) Int)

(assert (=> b!5018619 (= lt!2077111 (findLongestMatchInnerZipperFastV2!165 lt!2077116 (+ 1 from!1212) totalInput!1125 lt!2077105))))

(declare-fun z!4710 () (InoxSet Context!6524))

(declare-fun derivationStepZipper!649 ((InoxSet Context!6524) C!27924) (InoxSet Context!6524))

(declare-fun apply!14028 (BalanceConc!30142 Int) C!27924)

(assert (=> b!5018619 (= lt!2077116 (derivationStepZipper!649 z!4710 (apply!14028 totalInput!1125 from!1212)))))

(declare-fun b!5018620 () Bool)

(declare-fun res!2140126 () Bool)

(assert (=> b!5018620 (=> (not res!2140126) (not e!3135214))))

(assert (=> b!5018620 (= res!2140126 (and (not (= knownSize!24 0)) (> knownSize!24 0)))))

(declare-fun b!5018621 () Bool)

(declare-fun e!3135216 () Bool)

(declare-fun tp!1407374 () Bool)

(declare-fun inv!76254 (Conc!15356) Bool)

(assert (=> b!5018621 (= e!3135216 (and (inv!76254 (c!857470 totalInput!1125)) tp!1407374))))

(declare-fun b!5018622 () Bool)

(declare-fun e!3135213 () Bool)

(assert (=> b!5018622 (= e!3135213 e!3135214)))

(declare-fun res!2140124 () Bool)

(assert (=> b!5018622 (=> (not res!2140124) (not e!3135214))))

(declare-fun lt!2077109 () List!58098)

(declare-fun matchZipper!605 ((InoxSet Context!6524) List!58098) Bool)

(assert (=> b!5018622 (= res!2140124 (matchZipper!605 z!4710 lt!2077109))))

(assert (=> b!5018622 (= lt!2077109 (take!696 lt!2077114 knownSize!24))))

(assert (=> b!5018622 (= lt!2077114 (drop!2500 lt!2077106 from!1212))))

(declare-fun list!18684 (BalanceConc!30142) List!58098)

(assert (=> b!5018622 (= lt!2077106 (list!18684 totalInput!1125))))

(declare-fun setRes!28582 () Bool)

(declare-fun tp!1407372 () Bool)

(declare-fun setNonEmpty!28582 () Bool)

(declare-fun setElem!28582 () Context!6524)

(declare-fun e!3135215 () Bool)

(declare-fun inv!76255 (Context!6524) Bool)

(assert (=> setNonEmpty!28582 (= setRes!28582 (and tp!1407372 (inv!76255 setElem!28582) e!3135215))))

(declare-fun setRest!28582 () (InoxSet Context!6524))

(assert (=> setNonEmpty!28582 (= z!4710 ((_ map or) (store ((as const (Array Context!6524 Bool)) false) setElem!28582 true) setRest!28582))))

(declare-fun res!2140130 () Bool)

(declare-fun e!3135212 () Bool)

(assert (=> start!530222 (=> (not res!2140130) (not e!3135212))))

(assert (=> start!530222 (= res!2140130 (>= from!1212 0))))

(assert (=> start!530222 e!3135212))

(assert (=> start!530222 true))

(declare-fun inv!76256 (BalanceConc!30142) Bool)

(assert (=> start!530222 (and (inv!76256 totalInput!1125) e!3135216)))

(declare-fun condSetEmpty!28582 () Bool)

(assert (=> start!530222 (= condSetEmpty!28582 (= z!4710 ((as const (Array Context!6524 Bool)) false)))))

(assert (=> start!530222 setRes!28582))

(declare-fun b!5018623 () Bool)

(declare-fun res!2140128 () Bool)

(assert (=> b!5018623 (=> (not res!2140128) (not e!3135214))))

(assert (=> b!5018623 (= res!2140128 (not (= from!1212 lt!2077105)))))

(declare-fun b!5018624 () Bool)

(assert (=> b!5018624 (= e!3135212 e!3135213)))

(declare-fun res!2140131 () Bool)

(assert (=> b!5018624 (=> (not res!2140131) (not e!3135213))))

(assert (=> b!5018624 (= res!2140131 (and (<= from!1212 lt!2077105) (>= knownSize!24 0) (<= knownSize!24 (- lt!2077105 from!1212))))))

(declare-fun size!38558 (BalanceConc!30142) Int)

(assert (=> b!5018624 (= lt!2077105 (size!38558 totalInput!1125))))

(declare-fun setIsEmpty!28582 () Bool)

(assert (=> setIsEmpty!28582 setRes!28582))

(declare-fun b!5018625 () Bool)

(assert (=> b!5018625 (= e!3135217 true)))

(declare-fun lt!2077110 () Bool)

(assert (=> b!5018625 (= lt!2077110 (matchZipper!605 lt!2077116 lt!2077112))))

(declare-fun b!5018626 () Bool)

(declare-fun res!2140127 () Bool)

(assert (=> b!5018626 (=> (not res!2140127) (not e!3135214))))

(declare-fun lostCauseZipper!856 ((InoxSet Context!6524)) Bool)

(assert (=> b!5018626 (= res!2140127 (not (lostCauseZipper!856 z!4710)))))

(declare-fun b!5018627 () Bool)

(declare-fun res!2140129 () Bool)

(assert (=> b!5018627 (=> (not res!2140129) (not e!3135214))))

(declare-fun size!38559 (List!58098) Int)

(assert (=> b!5018627 (= res!2140129 (= (size!38559 lt!2077109) knownSize!24))))

(declare-fun b!5018628 () Bool)

(declare-fun tp!1407373 () Bool)

(assert (=> b!5018628 (= e!3135215 tp!1407373)))

(assert (= (and start!530222 res!2140130) b!5018624))

(assert (= (and b!5018624 res!2140131) b!5018622))

(assert (= (and b!5018622 res!2140124) b!5018620))

(assert (= (and b!5018620 res!2140126) b!5018627))

(assert (= (and b!5018627 res!2140129) b!5018626))

(assert (= (and b!5018626 res!2140127) b!5018623))

(assert (= (and b!5018623 res!2140128) b!5018619))

(assert (= (and b!5018619 (not res!2140125)) b!5018625))

(assert (= start!530222 b!5018621))

(assert (= (and start!530222 condSetEmpty!28582) setIsEmpty!28582))

(assert (= (and start!530222 (not condSetEmpty!28582)) setNonEmpty!28582))

(assert (= setNonEmpty!28582 b!5018628))

(declare-fun m!6053898 () Bool)

(assert (=> b!5018625 m!6053898))

(declare-fun m!6053900 () Bool)

(assert (=> setNonEmpty!28582 m!6053900))

(declare-fun m!6053902 () Bool)

(assert (=> b!5018621 m!6053902))

(declare-fun m!6053904 () Bool)

(assert (=> b!5018627 m!6053904))

(declare-fun m!6053906 () Bool)

(assert (=> b!5018622 m!6053906))

(declare-fun m!6053908 () Bool)

(assert (=> b!5018622 m!6053908))

(declare-fun m!6053910 () Bool)

(assert (=> b!5018622 m!6053910))

(declare-fun m!6053912 () Bool)

(assert (=> b!5018622 m!6053912))

(declare-fun m!6053914 () Bool)

(assert (=> b!5018624 m!6053914))

(declare-fun m!6053916 () Bool)

(assert (=> b!5018626 m!6053916))

(declare-fun m!6053918 () Bool)

(assert (=> start!530222 m!6053918))

(declare-fun m!6053920 () Bool)

(assert (=> b!5018619 m!6053920))

(declare-fun m!6053922 () Bool)

(assert (=> b!5018619 m!6053922))

(declare-fun m!6053924 () Bool)

(assert (=> b!5018619 m!6053924))

(assert (=> b!5018619 m!6053920))

(declare-fun m!6053926 () Bool)

(assert (=> b!5018619 m!6053926))

(declare-fun m!6053928 () Bool)

(assert (=> b!5018619 m!6053928))

(declare-fun m!6053930 () Bool)

(assert (=> b!5018619 m!6053930))

(declare-fun m!6053932 () Bool)

(assert (=> b!5018619 m!6053932))

(declare-fun m!6053934 () Bool)

(assert (=> b!5018619 m!6053934))

(declare-fun m!6053936 () Bool)

(assert (=> b!5018619 m!6053936))

(declare-fun m!6053938 () Bool)

(assert (=> b!5018619 m!6053938))

(declare-fun m!6053940 () Bool)

(assert (=> b!5018619 m!6053940))

(check-sat (not b!5018624) (not b!5018628) (not start!530222) (not setNonEmpty!28582) (not b!5018627) (not b!5018625) (not b!5018621) (not b!5018626) (not b!5018622) (not b!5018619))
(check-sat)
