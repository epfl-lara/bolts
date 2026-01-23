; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694788 () Bool)

(assert start!694788)

(declare-fun b!7131915 () Bool)

(declare-fun res!2910008 () Bool)

(declare-fun e!4286005 () Bool)

(assert (=> b!7131915 (=> (not res!2910008) (not e!4286005))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!36412 0))(
  ( (C!36413 (val!28132 Int)) )
))
(declare-datatypes ((Regex!18071 0))(
  ( (ElementMatch!18071 (c!1330273 C!36412)) (Concat!26916 (regOne!36654 Regex!18071) (regTwo!36654 Regex!18071)) (EmptyExpr!18071) (Star!18071 (reg!18400 Regex!18071)) (EmptyLang!18071) (Union!18071 (regOne!36655 Regex!18071) (regTwo!36655 Regex!18071)) )
))
(declare-datatypes ((List!69196 0))(
  ( (Nil!69072) (Cons!69072 (h!75520 Regex!18071) (t!383173 List!69196)) )
))
(declare-datatypes ((Context!14130 0))(
  ( (Context!14131 (exprs!7565 List!69196)) )
))
(declare-fun z1!538 () (InoxSet Context!14130))

(declare-datatypes ((List!69197 0))(
  ( (Nil!69073) (Cons!69073 (h!75521 C!36412) (t!383174 List!69197)) )
))
(declare-fun s1!1678 () List!69197)

(declare-fun matchZipper!3327 ((InoxSet Context!14130) List!69197) Bool)

(assert (=> b!7131915 (= res!2910008 (matchZipper!3327 z1!538 s1!1678))))

(declare-fun b!7131916 () Bool)

(declare-fun e!4286006 () Bool)

(declare-fun tp_is_empty!45743 () Bool)

(declare-fun tp!1965472 () Bool)

(assert (=> b!7131916 (= e!4286006 (and tp_is_empty!45743 tp!1965472))))

(declare-fun b!7131917 () Bool)

(declare-fun e!4286010 () Bool)

(assert (=> b!7131917 (= e!4286005 e!4286010)))

(declare-fun res!2910006 () Bool)

(assert (=> b!7131917 (=> (not res!2910006) (not e!4286010))))

(declare-datatypes ((tuple2!68376 0))(
  ( (tuple2!68377 (_1!37491 List!69197) (_2!37491 List!69197)) )
))
(declare-datatypes ((Option!17020 0))(
  ( (None!17019) (Some!17019 (v!53513 tuple2!68376)) )
))
(declare-fun lt!2564917 () Option!17020)

(declare-fun isDefined!13717 (Option!17020) Bool)

(assert (=> b!7131917 (= res!2910006 (isDefined!13717 lt!2564917))))

(declare-fun s2!1615 () List!69197)

(assert (=> b!7131917 (= lt!2564917 (Some!17019 (tuple2!68377 s1!1678 s2!1615)))))

(declare-fun b!7131918 () Bool)

(declare-fun e!4286007 () Bool)

(declare-fun tp!1965475 () Bool)

(assert (=> b!7131918 (= e!4286007 tp!1965475)))

(declare-fun b!7131919 () Bool)

(declare-fun res!2910007 () Bool)

(assert (=> b!7131919 (=> (not res!2910007) (not e!4286005))))

(declare-fun z2!457 () (InoxSet Context!14130))

(assert (=> b!7131919 (= res!2910007 (matchZipper!3327 z2!457 s2!1615))))

(declare-fun tp!1965469 () Bool)

(declare-fun setElem!52090 () Context!14130)

(declare-fun setRes!52091 () Bool)

(declare-fun setNonEmpty!52090 () Bool)

(declare-fun inv!88205 (Context!14130) Bool)

(assert (=> setNonEmpty!52090 (= setRes!52091 (and tp!1965469 (inv!88205 setElem!52090) e!4286007))))

(declare-fun setRest!52090 () (InoxSet Context!14130))

(assert (=> setNonEmpty!52090 (= z1!538 ((_ map or) (store ((as const (Array Context!14130 Bool)) false) setElem!52090 true) setRest!52090))))

(declare-fun res!2910009 () Bool)

(assert (=> start!694788 (=> (not res!2910009) (not e!4286005))))

(declare-fun s!7358 () List!69197)

(declare-fun ++!16209 (List!69197 List!69197) List!69197)

(assert (=> start!694788 (= res!2910009 (= (++!16209 s1!1678 s2!1615) s!7358))))

(assert (=> start!694788 e!4286005))

(declare-fun condSetEmpty!52090 () Bool)

(assert (=> start!694788 (= condSetEmpty!52090 (= z2!457 ((as const (Array Context!14130 Bool)) false)))))

(declare-fun setRes!52090 () Bool)

(assert (=> start!694788 setRes!52090))

(declare-fun e!4286011 () Bool)

(assert (=> start!694788 e!4286011))

(declare-fun condSetEmpty!52091 () Bool)

(assert (=> start!694788 (= condSetEmpty!52091 (= z1!538 ((as const (Array Context!14130 Bool)) false)))))

(assert (=> start!694788 setRes!52091))

(declare-fun e!4286009 () Bool)

(assert (=> start!694788 e!4286009))

(assert (=> start!694788 e!4286006))

(declare-fun e!4286008 () Bool)

(declare-fun setNonEmpty!52091 () Bool)

(declare-fun tp!1965471 () Bool)

(declare-fun setElem!52091 () Context!14130)

(assert (=> setNonEmpty!52091 (= setRes!52090 (and tp!1965471 (inv!88205 setElem!52091) e!4286008))))

(declare-fun setRest!52091 () (InoxSet Context!14130))

(assert (=> setNonEmpty!52091 (= z2!457 ((_ map or) (store ((as const (Array Context!14130 Bool)) false) setElem!52091 true) setRest!52091))))

(declare-fun setIsEmpty!52090 () Bool)

(assert (=> setIsEmpty!52090 setRes!52090))

(declare-fun b!7131920 () Bool)

(assert (=> b!7131920 (= e!4286010 false)))

(declare-fun lt!2564918 () Bool)

(declare-fun get!24251 (Option!17020) tuple2!68376)

(assert (=> b!7131920 (= lt!2564918 (matchZipper!3327 z1!538 (_1!37491 (get!24251 lt!2564917))))))

(declare-fun b!7131921 () Bool)

(declare-fun tp!1965473 () Bool)

(assert (=> b!7131921 (= e!4286009 (and tp_is_empty!45743 tp!1965473))))

(declare-fun b!7131922 () Bool)

(declare-fun tp!1965470 () Bool)

(assert (=> b!7131922 (= e!4286008 tp!1965470)))

(declare-fun b!7131923 () Bool)

(declare-fun tp!1965474 () Bool)

(assert (=> b!7131923 (= e!4286011 (and tp_is_empty!45743 tp!1965474))))

(declare-fun setIsEmpty!52091 () Bool)

(assert (=> setIsEmpty!52091 setRes!52091))

(assert (= (and start!694788 res!2910009) b!7131915))

(assert (= (and b!7131915 res!2910008) b!7131919))

(assert (= (and b!7131919 res!2910007) b!7131917))

(assert (= (and b!7131917 res!2910006) b!7131920))

(assert (= (and start!694788 condSetEmpty!52090) setIsEmpty!52090))

(assert (= (and start!694788 (not condSetEmpty!52090)) setNonEmpty!52091))

(assert (= setNonEmpty!52091 b!7131922))

(get-info :version)

(assert (= (and start!694788 ((_ is Cons!69073) s2!1615)) b!7131923))

(assert (= (and start!694788 condSetEmpty!52091) setIsEmpty!52091))

(assert (= (and start!694788 (not condSetEmpty!52091)) setNonEmpty!52090))

(assert (= setNonEmpty!52090 b!7131918))

(assert (= (and start!694788 ((_ is Cons!69073) s1!1678)) b!7131921))

(assert (= (and start!694788 ((_ is Cons!69073) s!7358)) b!7131916))

(declare-fun m!7849332 () Bool)

(assert (=> b!7131915 m!7849332))

(declare-fun m!7849334 () Bool)

(assert (=> setNonEmpty!52090 m!7849334))

(declare-fun m!7849336 () Bool)

(assert (=> b!7131920 m!7849336))

(declare-fun m!7849338 () Bool)

(assert (=> b!7131920 m!7849338))

(declare-fun m!7849340 () Bool)

(assert (=> start!694788 m!7849340))

(declare-fun m!7849342 () Bool)

(assert (=> b!7131919 m!7849342))

(declare-fun m!7849344 () Bool)

(assert (=> setNonEmpty!52091 m!7849344))

(declare-fun m!7849346 () Bool)

(assert (=> b!7131917 m!7849346))

(check-sat (not b!7131917) (not b!7131915) (not b!7131920) (not b!7131916) (not setNonEmpty!52091) (not b!7131921) (not b!7131923) (not start!694788) tp_is_empty!45743 (not setNonEmpty!52090) (not b!7131919) (not b!7131918) (not b!7131922))
(check-sat)
