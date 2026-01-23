; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!714928 () Bool)

(assert start!714928)

(declare-fun b!7324975 () Bool)

(declare-fun res!2960728 () Bool)

(declare-fun e!4385971 () Bool)

(assert (=> b!7324975 (=> (not res!2960728) (not e!4385971))))

(declare-datatypes ((C!38248 0))(
  ( (C!38249 (val!29484 Int)) )
))
(declare-datatypes ((Regex!18987 0))(
  ( (ElementMatch!18987 (c!1359540 C!38248)) (Concat!27832 (regOne!38486 Regex!18987) (regTwo!38486 Regex!18987)) (EmptyExpr!18987) (Star!18987 (reg!19316 Regex!18987)) (EmptyLang!18987) (Union!18987 (regOne!38487 Regex!18987) (regTwo!38487 Regex!18987)) )
))
(declare-datatypes ((List!71483 0))(
  ( (Nil!71359) (Cons!71359 (h!77807 Regex!18987) (t!385868 List!71483)) )
))
(declare-fun lt!2605712 () List!71483)

(declare-fun isEmpty!40905 (List!71483) Bool)

(assert (=> b!7324975 (= res!2960728 (not (isEmpty!40905 lt!2605712)))))

(declare-fun b!7324976 () Bool)

(declare-fun e!4385966 () Bool)

(declare-fun tp!2080361 () Bool)

(assert (=> b!7324976 (= e!4385966 tp!2080361)))

(declare-fun b!7324977 () Bool)

(declare-fun e!4385967 () Bool)

(declare-fun tp!2080362 () Bool)

(assert (=> b!7324977 (= e!4385967 tp!2080362)))

(declare-fun b!7324978 () Bool)

(declare-fun e!4385970 () Bool)

(assert (=> b!7324978 (= e!4385970 e!4385971)))

(declare-fun res!2960723 () Bool)

(assert (=> b!7324978 (=> (not res!2960723) (not e!4385971))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Context!15854 0))(
  ( (Context!15855 (exprs!8427 List!71483)) )
))
(declare-fun lt!2605714 () (InoxSet Context!15854))

(declare-fun cWitness!35 () Context!15854)

(declare-fun lt!2605711 () (InoxSet Context!15854))

(declare-fun lt!2605709 () (InoxSet Context!15854))

(assert (=> b!7324978 (= res!2960723 (and (= lt!2605709 ((_ map or) lt!2605714 lt!2605711)) (or (select lt!2605714 cWitness!35) (select lt!2605711 cWitness!35)) (not (select lt!2605711 cWitness!35))))))

(declare-fun lt!2605708 () Context!15854)

(declare-fun c!10305 () C!38248)

(declare-fun derivationStepZipperUp!2667 (Context!15854 C!38248) (InoxSet Context!15854))

(assert (=> b!7324978 (= lt!2605711 (derivationStepZipperUp!2667 lt!2605708 c!10305))))

(declare-fun b!7324979 () Bool)

(declare-fun e!4385968 () Bool)

(declare-fun e!4385969 () Bool)

(assert (=> b!7324979 (= e!4385968 e!4385969)))

(declare-fun res!2960727 () Bool)

(assert (=> b!7324979 (=> (not res!2960727) (not e!4385969))))

(declare-fun ct1!256 () Context!15854)

(get-info :version)

(assert (=> b!7324979 (= res!2960727 ((_ is Cons!71359) (exprs!8427 ct1!256)))))

(declare-fun ct2!352 () Context!15854)

(declare-fun ++!16811 (List!71483 List!71483) List!71483)

(assert (=> b!7324979 (= lt!2605712 (++!16811 (exprs!8427 ct1!256) (exprs!8427 ct2!352)))))

(declare-datatypes ((Unit!164939 0))(
  ( (Unit!164940) )
))
(declare-fun lt!2605710 () Unit!164939)

(declare-fun lambda!453906 () Int)

(declare-fun lemmaConcatPreservesForall!1668 (List!71483 List!71483 Int) Unit!164939)

(assert (=> b!7324979 (= lt!2605710 (lemmaConcatPreservesForall!1668 (exprs!8427 ct1!256) (exprs!8427 ct2!352) lambda!453906))))

(declare-fun b!7324980 () Bool)

(declare-fun e!4385965 () Bool)

(declare-fun tp!2080363 () Bool)

(assert (=> b!7324980 (= e!4385965 tp!2080363)))

(declare-fun res!2960724 () Bool)

(assert (=> start!714928 (=> (not res!2960724) (not e!4385968))))

(assert (=> start!714928 (= res!2960724 (select lt!2605709 cWitness!35))))

(assert (=> start!714928 (= lt!2605709 (derivationStepZipperUp!2667 ct1!256 c!10305))))

(assert (=> start!714928 e!4385968))

(declare-fun tp_is_empty!48219 () Bool)

(assert (=> start!714928 tp_is_empty!48219))

(declare-fun inv!90807 (Context!15854) Bool)

(assert (=> start!714928 (and (inv!90807 cWitness!35) e!4385966)))

(assert (=> start!714928 (and (inv!90807 ct1!256) e!4385965)))

(assert (=> start!714928 (and (inv!90807 ct2!352) e!4385967)))

(declare-fun b!7324981 () Bool)

(assert (=> b!7324981 (= e!4385971 false)))

(declare-fun lt!2605713 () (InoxSet Context!15854))

(declare-fun derivationStepZipperDown!2818 (Regex!18987 Context!15854 C!38248) (InoxSet Context!15854))

(declare-fun tail!14676 (List!71483) List!71483)

(assert (=> b!7324981 (= lt!2605713 (derivationStepZipperDown!2818 (h!77807 (exprs!8427 ct1!256)) (Context!15855 (tail!14676 lt!2605712)) c!10305))))

(declare-fun b!7324982 () Bool)

(assert (=> b!7324982 (= e!4385969 e!4385970)))

(declare-fun res!2960726 () Bool)

(assert (=> b!7324982 (=> (not res!2960726) (not e!4385970))))

(declare-fun nullable!8091 (Regex!18987) Bool)

(assert (=> b!7324982 (= res!2960726 (nullable!8091 (h!77807 (exprs!8427 ct1!256))))))

(assert (=> b!7324982 (= lt!2605714 (derivationStepZipperDown!2818 (h!77807 (exprs!8427 ct1!256)) lt!2605708 c!10305))))

(assert (=> b!7324982 (= lt!2605708 (Context!15855 (tail!14676 (exprs!8427 ct1!256))))))

(declare-fun b!7324983 () Bool)

(declare-fun res!2960725 () Bool)

(assert (=> b!7324983 (=> (not res!2960725) (not e!4385969))))

(assert (=> b!7324983 (= res!2960725 (not (isEmpty!40905 (exprs!8427 ct1!256))))))

(assert (= (and start!714928 res!2960724) b!7324979))

(assert (= (and b!7324979 res!2960727) b!7324983))

(assert (= (and b!7324983 res!2960725) b!7324982))

(assert (= (and b!7324982 res!2960726) b!7324978))

(assert (= (and b!7324978 res!2960723) b!7324975))

(assert (= (and b!7324975 res!2960728) b!7324981))

(assert (= start!714928 b!7324976))

(assert (= start!714928 b!7324980))

(assert (= start!714928 b!7324977))

(declare-fun m!7990620 () Bool)

(assert (=> b!7324975 m!7990620))

(declare-fun m!7990622 () Bool)

(assert (=> b!7324983 m!7990622))

(declare-fun m!7990624 () Bool)

(assert (=> start!714928 m!7990624))

(declare-fun m!7990626 () Bool)

(assert (=> start!714928 m!7990626))

(declare-fun m!7990628 () Bool)

(assert (=> start!714928 m!7990628))

(declare-fun m!7990630 () Bool)

(assert (=> start!714928 m!7990630))

(declare-fun m!7990632 () Bool)

(assert (=> start!714928 m!7990632))

(declare-fun m!7990634 () Bool)

(assert (=> b!7324978 m!7990634))

(declare-fun m!7990636 () Bool)

(assert (=> b!7324978 m!7990636))

(declare-fun m!7990638 () Bool)

(assert (=> b!7324978 m!7990638))

(declare-fun m!7990640 () Bool)

(assert (=> b!7324981 m!7990640))

(declare-fun m!7990642 () Bool)

(assert (=> b!7324981 m!7990642))

(declare-fun m!7990644 () Bool)

(assert (=> b!7324979 m!7990644))

(declare-fun m!7990646 () Bool)

(assert (=> b!7324979 m!7990646))

(declare-fun m!7990648 () Bool)

(assert (=> b!7324982 m!7990648))

(declare-fun m!7990650 () Bool)

(assert (=> b!7324982 m!7990650))

(declare-fun m!7990652 () Bool)

(assert (=> b!7324982 m!7990652))

(check-sat (not b!7324977) (not b!7324976) (not b!7324983) (not b!7324975) (not b!7324981) (not b!7324979) (not b!7324982) (not start!714928) (not b!7324978) tp_is_empty!48219 (not b!7324980))
(check-sat)
