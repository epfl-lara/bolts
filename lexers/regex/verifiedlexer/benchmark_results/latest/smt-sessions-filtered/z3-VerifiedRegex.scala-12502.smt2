; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!695168 () Bool)

(assert start!695168)

(declare-fun b!7134563 () Bool)

(declare-fun e!4287853 () Bool)

(declare-fun tp_is_empty!45863 () Bool)

(assert (=> b!7134563 (= e!4287853 tp_is_empty!45863)))

(declare-fun setIsEmpty!52313 () Bool)

(declare-fun setRes!52313 () Bool)

(assert (=> setIsEmpty!52313 setRes!52313))

(declare-fun b!7134564 () Bool)

(declare-fun e!4287851 () Bool)

(declare-fun e!4287855 () Bool)

(assert (=> b!7134564 (= e!4287851 e!4287855)))

(declare-fun res!2911098 () Bool)

(assert (=> b!7134564 (=> (not res!2911098) (not e!4287855))))

(declare-datatypes ((C!36500 0))(
  ( (C!36501 (val!28198 Int)) )
))
(declare-datatypes ((Regex!18113 0))(
  ( (ElementMatch!18113 (c!1330536 C!36500)) (Concat!26958 (regOne!36738 Regex!18113) (regTwo!36738 Regex!18113)) (EmptyExpr!18113) (Star!18113 (reg!18442 Regex!18113)) (EmptyLang!18113) (Union!18113 (regOne!36739 Regex!18113) (regTwo!36739 Regex!18113)) )
))
(declare-fun r!11483 () Regex!18113)

(declare-fun lt!2565414 () Regex!18113)

(assert (=> b!7134564 (= res!2911098 (= r!11483 lt!2565414))))

(declare-datatypes ((List!69304 0))(
  ( (Nil!69180) (Cons!69180 (h!75628 Regex!18113) (t!383321 List!69304)) )
))
(declare-fun lt!2565413 () List!69304)

(declare-fun generalisedUnion!2618 (List!69304) Regex!18113)

(assert (=> b!7134564 (= lt!2565414 (generalisedUnion!2618 lt!2565413))))

(declare-datatypes ((Context!14214 0))(
  ( (Context!14215 (exprs!7607 List!69304)) )
))
(declare-datatypes ((List!69305 0))(
  ( (Nil!69181) (Cons!69181 (h!75629 Context!14214) (t!383322 List!69305)) )
))
(declare-fun lt!2565412 () List!69305)

(declare-fun unfocusZipperList!2154 (List!69305) List!69304)

(assert (=> b!7134564 (= lt!2565413 (unfocusZipperList!2154 lt!2565412))))

(declare-fun b!7134565 () Bool)

(declare-fun e!4287852 () Bool)

(declare-fun lambda!433318 () Int)

(declare-fun exists!3836 (List!69304 Int) Bool)

(assert (=> b!7134565 (= e!4287852 (exists!3836 lt!2565413 lambda!433318))))

(declare-fun res!2911097 () Bool)

(declare-fun e!4287856 () Bool)

(assert (=> start!695168 (=> (not res!2911097) (not e!4287856))))

(declare-fun validRegex!9280 (Regex!18113) Bool)

(assert (=> start!695168 (= res!2911097 (validRegex!9280 r!11483))))

(assert (=> start!695168 e!4287856))

(assert (=> start!695168 e!4287853))

(declare-fun condSetEmpty!52313 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3189 () (InoxSet Context!14214))

(assert (=> start!695168 (= condSetEmpty!52313 (= z!3189 ((as const (Array Context!14214 Bool)) false)))))

(assert (=> start!695168 setRes!52313))

(declare-fun b!7134566 () Bool)

(assert (=> b!7134566 (= e!4287855 (not e!4287852))))

(declare-fun res!2911100 () Bool)

(assert (=> b!7134566 (=> res!2911100 e!4287852)))

(declare-fun lt!2565416 () Bool)

(assert (=> b!7134566 (= res!2911100 (not (= lt!2565416 (exists!3836 lt!2565413 lambda!433318))))))

(assert (=> b!7134566 (= lt!2565416 (exists!3836 lt!2565413 lambda!433318))))

(declare-fun nullable!7633 (Regex!18113) Bool)

(assert (=> b!7134566 (= lt!2565416 (nullable!7633 lt!2565414))))

(declare-datatypes ((Unit!163075 0))(
  ( (Unit!163076) )
))
(declare-fun lt!2565415 () Unit!163075)

(declare-fun nullableGenUnionSpec!2 (Regex!18113 List!69304) Unit!163075)

(assert (=> b!7134566 (= lt!2565415 (nullableGenUnionSpec!2 lt!2565414 lt!2565413))))

(declare-fun b!7134567 () Bool)

(declare-fun tp!1966844 () Bool)

(assert (=> b!7134567 (= e!4287853 tp!1966844)))

(declare-fun b!7134568 () Bool)

(declare-fun e!4287854 () Bool)

(declare-fun tp!1966842 () Bool)

(assert (=> b!7134568 (= e!4287854 tp!1966842)))

(declare-fun b!7134569 () Bool)

(declare-fun tp!1966839 () Bool)

(declare-fun tp!1966840 () Bool)

(assert (=> b!7134569 (= e!4287853 (and tp!1966839 tp!1966840))))

(declare-fun b!7134570 () Bool)

(declare-fun res!2911099 () Bool)

(assert (=> b!7134570 (=> res!2911099 e!4287852)))

(assert (=> b!7134570 (= res!2911099 (not lt!2565416))))

(declare-fun b!7134571 () Bool)

(assert (=> b!7134571 (= e!4287856 e!4287851)))

(declare-fun res!2911101 () Bool)

(assert (=> b!7134571 (=> (not res!2911101) (not e!4287851))))

(declare-fun unfocusZipper!2461 (List!69305) Regex!18113)

(assert (=> b!7134571 (= res!2911101 (= r!11483 (unfocusZipper!2461 lt!2565412)))))

(declare-fun toList!11144 ((InoxSet Context!14214)) List!69305)

(assert (=> b!7134571 (= lt!2565412 (toList!11144 z!3189))))

(declare-fun setElem!52313 () Context!14214)

(declare-fun tp!1966841 () Bool)

(declare-fun setNonEmpty!52313 () Bool)

(declare-fun inv!88346 (Context!14214) Bool)

(assert (=> setNonEmpty!52313 (= setRes!52313 (and tp!1966841 (inv!88346 setElem!52313) e!4287854))))

(declare-fun setRest!52313 () (InoxSet Context!14214))

(assert (=> setNonEmpty!52313 (= z!3189 ((_ map or) (store ((as const (Array Context!14214 Bool)) false) setElem!52313 true) setRest!52313))))

(declare-fun b!7134572 () Bool)

(declare-fun tp!1966843 () Bool)

(declare-fun tp!1966845 () Bool)

(assert (=> b!7134572 (= e!4287853 (and tp!1966843 tp!1966845))))

(declare-fun b!7134573 () Bool)

(declare-fun res!2911096 () Bool)

(assert (=> b!7134573 (=> res!2911096 e!4287852)))

(assert (=> b!7134573 (= res!2911096 (not (exists!3836 lt!2565413 lambda!433318)))))

(assert (= (and start!695168 res!2911097) b!7134571))

(assert (= (and b!7134571 res!2911101) b!7134564))

(assert (= (and b!7134564 res!2911098) b!7134566))

(assert (= (and b!7134566 (not res!2911100)) b!7134570))

(assert (= (and b!7134570 (not res!2911099)) b!7134573))

(assert (= (and b!7134573 (not res!2911096)) b!7134565))

(get-info :version)

(assert (= (and start!695168 ((_ is ElementMatch!18113) r!11483)) b!7134563))

(assert (= (and start!695168 ((_ is Concat!26958) r!11483)) b!7134569))

(assert (= (and start!695168 ((_ is Star!18113) r!11483)) b!7134567))

(assert (= (and start!695168 ((_ is Union!18113) r!11483)) b!7134572))

(assert (= (and start!695168 condSetEmpty!52313) setIsEmpty!52313))

(assert (= (and start!695168 (not condSetEmpty!52313)) setNonEmpty!52313))

(assert (= setNonEmpty!52313 b!7134568))

(declare-fun m!7851176 () Bool)

(assert (=> b!7134564 m!7851176))

(declare-fun m!7851178 () Bool)

(assert (=> b!7134564 m!7851178))

(declare-fun m!7851180 () Bool)

(assert (=> b!7134566 m!7851180))

(assert (=> b!7134566 m!7851180))

(declare-fun m!7851182 () Bool)

(assert (=> b!7134566 m!7851182))

(declare-fun m!7851184 () Bool)

(assert (=> b!7134566 m!7851184))

(assert (=> b!7134573 m!7851180))

(declare-fun m!7851186 () Bool)

(assert (=> setNonEmpty!52313 m!7851186))

(declare-fun m!7851188 () Bool)

(assert (=> b!7134571 m!7851188))

(declare-fun m!7851190 () Bool)

(assert (=> b!7134571 m!7851190))

(assert (=> b!7134565 m!7851180))

(declare-fun m!7851192 () Bool)

(assert (=> start!695168 m!7851192))

(check-sat (not b!7134568) (not b!7134567) (not b!7134569) (not setNonEmpty!52313) (not b!7134564) (not b!7134571) (not b!7134573) tp_is_empty!45863 (not b!7134566) (not b!7134572) (not start!695168) (not b!7134565))
(check-sat)
