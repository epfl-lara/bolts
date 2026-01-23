; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!695172 () Bool)

(assert start!695172)

(declare-fun b!7134634 () Bool)

(declare-fun e!4287898 () Bool)

(assert (=> b!7134634 (= e!4287898 true)))

(declare-fun lt!2565454 () Bool)

(declare-datatypes ((C!36504 0))(
  ( (C!36505 (val!28200 Int)) )
))
(declare-datatypes ((Regex!18115 0))(
  ( (ElementMatch!18115 (c!1330538 C!36504)) (Concat!26960 (regOne!36742 Regex!18115) (regTwo!36742 Regex!18115)) (EmptyExpr!18115) (Star!18115 (reg!18444 Regex!18115)) (EmptyLang!18115) (Union!18115 (regOne!36743 Regex!18115) (regTwo!36743 Regex!18115)) )
))
(declare-datatypes ((List!69308 0))(
  ( (Nil!69184) (Cons!69184 (h!75632 Regex!18115) (t!383325 List!69308)) )
))
(declare-fun lt!2565453 () List!69308)

(declare-fun lt!2565458 () Regex!18115)

(declare-fun contains!20555 (List!69308 Regex!18115) Bool)

(assert (=> b!7134634 (= lt!2565454 (contains!20555 lt!2565453 lt!2565458))))

(declare-fun b!7134635 () Bool)

(declare-fun e!4287895 () Bool)

(declare-fun tp_is_empty!45867 () Bool)

(assert (=> b!7134635 (= e!4287895 tp_is_empty!45867)))

(declare-fun b!7134636 () Bool)

(declare-fun tp!1966882 () Bool)

(assert (=> b!7134636 (= e!4287895 tp!1966882)))

(declare-fun b!7134637 () Bool)

(declare-fun e!4287897 () Bool)

(assert (=> b!7134637 (= e!4287897 e!4287898)))

(declare-fun res!2911143 () Bool)

(assert (=> b!7134637 (=> res!2911143 e!4287898)))

(declare-fun nullable!7635 (Regex!18115) Bool)

(assert (=> b!7134637 (= res!2911143 (not (nullable!7635 lt!2565458)))))

(declare-fun lambda!433336 () Int)

(declare-fun getWitness!1864 (List!69308 Int) Regex!18115)

(assert (=> b!7134637 (= lt!2565458 (getWitness!1864 lt!2565453 lambda!433336))))

(declare-fun b!7134638 () Bool)

(declare-fun e!4287896 () Bool)

(declare-fun e!4287893 () Bool)

(assert (=> b!7134638 (= e!4287896 e!4287893)))

(declare-fun res!2911142 () Bool)

(assert (=> b!7134638 (=> (not res!2911142) (not e!4287893))))

(declare-fun r!11483 () Regex!18115)

(declare-datatypes ((Context!14218 0))(
  ( (Context!14219 (exprs!7609 List!69308)) )
))
(declare-datatypes ((List!69309 0))(
  ( (Nil!69185) (Cons!69185 (h!75633 Context!14218) (t!383326 List!69309)) )
))
(declare-fun lt!2565455 () List!69309)

(declare-fun unfocusZipper!2463 (List!69309) Regex!18115)

(assert (=> b!7134638 (= res!2911142 (= r!11483 (unfocusZipper!2463 lt!2565455)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3189 () (InoxSet Context!14218))

(declare-fun toList!11146 ((InoxSet Context!14218)) List!69309)

(assert (=> b!7134638 (= lt!2565455 (toList!11146 z!3189))))

(declare-fun b!7134639 () Bool)

(declare-fun res!2911139 () Bool)

(assert (=> b!7134639 (=> res!2911139 e!4287897)))

(declare-fun lt!2565456 () Bool)

(assert (=> b!7134639 (= res!2911139 (not lt!2565456))))

(declare-fun res!2911140 () Bool)

(assert (=> start!695172 (=> (not res!2911140) (not e!4287896))))

(declare-fun validRegex!9282 (Regex!18115) Bool)

(assert (=> start!695172 (= res!2911140 (validRegex!9282 r!11483))))

(assert (=> start!695172 e!4287896))

(assert (=> start!695172 e!4287895))

(declare-fun condSetEmpty!52319 () Bool)

(assert (=> start!695172 (= condSetEmpty!52319 (= z!3189 ((as const (Array Context!14218 Bool)) false)))))

(declare-fun setRes!52319 () Bool)

(assert (=> start!695172 setRes!52319))

(declare-fun setIsEmpty!52319 () Bool)

(assert (=> setIsEmpty!52319 setRes!52319))

(declare-fun b!7134640 () Bool)

(declare-fun e!4287894 () Bool)

(declare-fun tp!1966883 () Bool)

(assert (=> b!7134640 (= e!4287894 tp!1966883)))

(declare-fun b!7134641 () Bool)

(declare-fun tp!1966885 () Bool)

(declare-fun tp!1966886 () Bool)

(assert (=> b!7134641 (= e!4287895 (and tp!1966885 tp!1966886))))

(declare-fun b!7134642 () Bool)

(declare-fun e!4287892 () Bool)

(assert (=> b!7134642 (= e!4287893 e!4287892)))

(declare-fun res!2911138 () Bool)

(assert (=> b!7134642 (=> (not res!2911138) (not e!4287892))))

(declare-fun lt!2565452 () Regex!18115)

(assert (=> b!7134642 (= res!2911138 (= r!11483 lt!2565452))))

(declare-fun generalisedUnion!2620 (List!69308) Regex!18115)

(assert (=> b!7134642 (= lt!2565452 (generalisedUnion!2620 lt!2565453))))

(declare-fun unfocusZipperList!2156 (List!69309) List!69308)

(assert (=> b!7134642 (= lt!2565453 (unfocusZipperList!2156 lt!2565455))))

(declare-fun b!7134643 () Bool)

(assert (=> b!7134643 (= e!4287892 (not e!4287897))))

(declare-fun res!2911141 () Bool)

(assert (=> b!7134643 (=> res!2911141 e!4287897)))

(declare-fun exists!3838 (List!69308 Int) Bool)

(assert (=> b!7134643 (= res!2911141 (not (= lt!2565456 (exists!3838 lt!2565453 lambda!433336))))))

(assert (=> b!7134643 (= lt!2565456 (exists!3838 lt!2565453 lambda!433336))))

(assert (=> b!7134643 (= lt!2565456 (nullable!7635 lt!2565452))))

(declare-datatypes ((Unit!163079 0))(
  ( (Unit!163080) )
))
(declare-fun lt!2565457 () Unit!163079)

(declare-fun nullableGenUnionSpec!4 (Regex!18115 List!69308) Unit!163079)

(assert (=> b!7134643 (= lt!2565457 (nullableGenUnionSpec!4 lt!2565452 lt!2565453))))

(declare-fun b!7134644 () Bool)

(declare-fun res!2911137 () Bool)

(assert (=> b!7134644 (=> res!2911137 e!4287897)))

(assert (=> b!7134644 (= res!2911137 (not (exists!3838 lt!2565453 lambda!433336)))))

(declare-fun b!7134645 () Bool)

(declare-fun tp!1966887 () Bool)

(declare-fun tp!1966881 () Bool)

(assert (=> b!7134645 (= e!4287895 (and tp!1966887 tp!1966881))))

(declare-fun setElem!52319 () Context!14218)

(declare-fun setNonEmpty!52319 () Bool)

(declare-fun tp!1966884 () Bool)

(declare-fun inv!88351 (Context!14218) Bool)

(assert (=> setNonEmpty!52319 (= setRes!52319 (and tp!1966884 (inv!88351 setElem!52319) e!4287894))))

(declare-fun setRest!52319 () (InoxSet Context!14218))

(assert (=> setNonEmpty!52319 (= z!3189 ((_ map or) (store ((as const (Array Context!14218 Bool)) false) setElem!52319 true) setRest!52319))))

(assert (= (and start!695172 res!2911140) b!7134638))

(assert (= (and b!7134638 res!2911142) b!7134642))

(assert (= (and b!7134642 res!2911138) b!7134643))

(assert (= (and b!7134643 (not res!2911141)) b!7134639))

(assert (= (and b!7134639 (not res!2911139)) b!7134644))

(assert (= (and b!7134644 (not res!2911137)) b!7134637))

(assert (= (and b!7134637 (not res!2911143)) b!7134634))

(get-info :version)

(assert (= (and start!695172 ((_ is ElementMatch!18115) r!11483)) b!7134635))

(assert (= (and start!695172 ((_ is Concat!26960) r!11483)) b!7134641))

(assert (= (and start!695172 ((_ is Star!18115) r!11483)) b!7134636))

(assert (= (and start!695172 ((_ is Union!18115) r!11483)) b!7134645))

(assert (= (and start!695172 condSetEmpty!52319) setIsEmpty!52319))

(assert (= (and start!695172 (not condSetEmpty!52319)) setNonEmpty!52319))

(assert (= setNonEmpty!52319 b!7134640))

(declare-fun m!7851218 () Bool)

(assert (=> b!7134643 m!7851218))

(assert (=> b!7134643 m!7851218))

(declare-fun m!7851220 () Bool)

(assert (=> b!7134643 m!7851220))

(declare-fun m!7851222 () Bool)

(assert (=> b!7134643 m!7851222))

(declare-fun m!7851224 () Bool)

(assert (=> start!695172 m!7851224))

(assert (=> b!7134644 m!7851218))

(declare-fun m!7851226 () Bool)

(assert (=> b!7134637 m!7851226))

(declare-fun m!7851228 () Bool)

(assert (=> b!7134637 m!7851228))

(declare-fun m!7851230 () Bool)

(assert (=> b!7134638 m!7851230))

(declare-fun m!7851232 () Bool)

(assert (=> b!7134638 m!7851232))

(declare-fun m!7851234 () Bool)

(assert (=> setNonEmpty!52319 m!7851234))

(declare-fun m!7851236 () Bool)

(assert (=> b!7134642 m!7851236))

(declare-fun m!7851238 () Bool)

(assert (=> b!7134642 m!7851238))

(declare-fun m!7851240 () Bool)

(assert (=> b!7134634 m!7851240))

(check-sat (not b!7134641) (not b!7134640) (not b!7134638) (not b!7134634) (not start!695172) (not b!7134642) (not b!7134637) (not b!7134636) (not b!7134643) (not setNonEmpty!52319) (not b!7134645) tp_is_empty!45867 (not b!7134644))
(check-sat)
