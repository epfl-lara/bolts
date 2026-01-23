; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45046 () Bool)

(assert start!45046)

(declare-fun b_free!13137 () Bool)

(declare-fun b_next!13137 () Bool)

(assert (=> start!45046 (= b_free!13137 (not b_next!13137))))

(declare-fun tp!130626 () Bool)

(declare-fun b_and!50421 () Bool)

(assert (=> start!45046 (= tp!130626 b_and!50421)))

(declare-fun b_free!13139 () Bool)

(declare-fun b_next!13139 () Bool)

(assert (=> start!45046 (= b_free!13139 (not b_next!13139))))

(declare-fun tp!130627 () Bool)

(declare-fun b_and!50423 () Bool)

(assert (=> start!45046 (= tp!130627 b_and!50423)))

(assert (=> start!45046 true))

(declare-fun lambda!13947 () Int)

(declare-fun order!4161 () Int)

(declare-fun order!4163 () Int)

(declare-fun f!1027 () Int)

(declare-fun dynLambda!2841 (Int Int) Int)

(declare-fun dynLambda!2842 (Int Int) Int)

(assert (=> start!45046 (< (dynLambda!2841 order!4161 f!1027) (dynLambda!2842 order!4163 lambda!13947))))

(assert (=> start!45046 true))

(declare-fun p!1789 () Int)

(declare-fun order!4165 () Int)

(declare-fun dynLambda!2843 (Int Int) Int)

(assert (=> start!45046 (< (dynLambda!2843 order!4165 p!1789) (dynLambda!2842 order!4163 lambda!13947))))

(declare-fun b!471498 () Bool)

(declare-fun res!209083 () Bool)

(declare-fun e!288342 () Bool)

(assert (=> b!471498 (=> (not res!209083) (not e!288342))))

(declare-datatypes ((B!925 0))(
  ( (B!926 (val!1501 Int)) )
))
(declare-datatypes ((List!4549 0))(
  ( (Nil!4539) (Cons!4539 (h!9936 B!925) (t!72964 List!4549)) )
))
(declare-fun l!2882 () List!4549)

(get-info :version)

(assert (=> b!471498 (= res!209083 ((_ is Cons!4539) l!2882))))

(declare-fun setIsEmpty!1918 () Bool)

(declare-fun setRes!1918 () Bool)

(assert (=> setIsEmpty!1918 setRes!1918))

(declare-fun b!471499 () Bool)

(declare-fun e!288343 () Bool)

(declare-fun tp_is_empty!2107 () Bool)

(declare-fun tp!130625 () Bool)

(assert (=> b!471499 (= e!288343 (and tp_is_empty!2107 tp!130625))))

(declare-fun b!471500 () Bool)

(declare-fun e!288344 () Bool)

(declare-fun Forall!236 (Int) Bool)

(assert (=> b!471500 (= e!288344 (not (Forall!236 lambda!13947)))))

(declare-datatypes ((Unit!8279 0))(
  ( (Unit!8280) )
))
(declare-fun lt!210052 () Unit!8279)

(declare-fun lt!210051 () List!4549)

(declare-fun subseqTail!6 (List!4549 List!4549) Unit!8279)

(assert (=> b!471500 (= lt!210052 (subseqTail!6 l!2882 lt!210051))))

(declare-fun dynLambda!2844 (Int B!925) Bool)

(assert (=> b!471500 (dynLambda!2844 p!1789 (h!9936 l!2882))))

(declare-fun lt!210048 () Unit!8279)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!363 0))(
  ( (A!364 (val!1502 Int)) )
))
(declare-fun s!1494 () (InoxSet A!363))

(declare-fun lemmaFlatMapForallElem!8 ((InoxSet A!363) Int Int B!925) Unit!8279)

(assert (=> b!471500 (= lt!210048 (lemmaFlatMapForallElem!8 s!1494 f!1027 p!1789 (h!9936 l!2882)))))

(declare-fun empty!2587 () A!363)

(declare-fun flatMapPost!14 ((InoxSet A!363) Int B!925) A!363)

(assert (=> b!471500 (= (flatMapPost!14 s!1494 f!1027 (h!9936 l!2882)) empty!2587)))

(assert (=> b!471500 true))

(declare-fun tp_is_empty!2105 () Bool)

(assert (=> b!471500 tp_is_empty!2105))

(declare-fun res!209084 () Bool)

(declare-fun e!288345 () Bool)

(assert (=> start!45046 (=> (not res!209084) (not e!288345))))

(assert (=> start!45046 (= res!209084 (Forall!236 lambda!13947))))

(assert (=> start!45046 e!288345))

(assert (=> start!45046 tp!130626))

(assert (=> start!45046 tp!130627))

(declare-fun condSetEmpty!1918 () Bool)

(assert (=> start!45046 (= condSetEmpty!1918 (= s!1494 ((as const (Array A!363 Bool)) false)))))

(assert (=> start!45046 setRes!1918))

(assert (=> start!45046 e!288343))

(declare-fun b!471501 () Bool)

(assert (=> b!471501 (= e!288345 e!288342)))

(declare-fun res!209085 () Bool)

(assert (=> b!471501 (=> (not res!209085) (not e!288342))))

(declare-fun subseq!107 (List!4549 List!4549) Bool)

(assert (=> b!471501 (= res!209085 (subseq!107 l!2882 lt!210051))))

(declare-fun lt!210049 () (InoxSet B!925))

(declare-fun toList!320 ((InoxSet B!925)) List!4549)

(assert (=> b!471501 (= lt!210051 (toList!320 lt!210049))))

(declare-fun flatMap!86 ((InoxSet A!363) Int) (InoxSet B!925))

(assert (=> b!471501 (= lt!210049 (flatMap!86 s!1494 f!1027))))

(declare-fun setNonEmpty!1918 () Bool)

(declare-fun tp!130624 () Bool)

(assert (=> setNonEmpty!1918 (= setRes!1918 (and tp!130624 tp_is_empty!2105))))

(declare-fun setElem!1918 () A!363)

(declare-fun setRest!1918 () (InoxSet A!363))

(assert (=> setNonEmpty!1918 (= s!1494 ((_ map or) (store ((as const (Array A!363 Bool)) false) setElem!1918 true) setRest!1918))))

(declare-fun b!471502 () Bool)

(assert (=> b!471502 (= e!288342 e!288344)))

(declare-fun res!209086 () Bool)

(assert (=> b!471502 (=> (not res!209086) (not e!288344))))

(assert (=> b!471502 (= res!209086 (select lt!210049 (h!9936 l!2882)))))

(declare-fun lt!210050 () Unit!8279)

(declare-fun subseqContains!16 (List!4549 List!4549 B!925) Unit!8279)

(assert (=> b!471502 (= lt!210050 (subseqContains!16 l!2882 lt!210051 (h!9936 l!2882)))))

(assert (= (and start!45046 res!209084) b!471501))

(assert (= (and b!471501 res!209085) b!471498))

(assert (= (and b!471498 res!209083) b!471502))

(assert (= (and b!471502 res!209086) b!471500))

(assert (= (and start!45046 condSetEmpty!1918) setIsEmpty!1918))

(assert (= (and start!45046 (not condSetEmpty!1918)) setNonEmpty!1918))

(assert (= (and start!45046 ((_ is Cons!4539) l!2882)) b!471499))

(declare-fun b_lambda!19665 () Bool)

(assert (=> (not b_lambda!19665) (not b!471500)))

(declare-fun t!72963 () Bool)

(declare-fun tb!47019 () Bool)

(assert (=> (and start!45046 (= p!1789 p!1789) t!72963) tb!47019))

(declare-fun result!51774 () Bool)

(assert (=> tb!47019 (= result!51774 true)))

(assert (=> b!471500 t!72963))

(declare-fun b_and!50425 () Bool)

(assert (= b_and!50423 (and (=> t!72963 result!51774) b_and!50425)))

(declare-fun m!744993 () Bool)

(assert (=> b!471500 m!744993))

(declare-fun m!744995 () Bool)

(assert (=> b!471500 m!744995))

(declare-fun m!744997 () Bool)

(assert (=> b!471500 m!744997))

(declare-fun m!744999 () Bool)

(assert (=> b!471500 m!744999))

(declare-fun m!745001 () Bool)

(assert (=> b!471500 m!745001))

(assert (=> start!45046 m!744993))

(declare-fun m!745003 () Bool)

(assert (=> b!471501 m!745003))

(declare-fun m!745005 () Bool)

(assert (=> b!471501 m!745005))

(declare-fun m!745007 () Bool)

(assert (=> b!471501 m!745007))

(declare-fun m!745009 () Bool)

(assert (=> b!471502 m!745009))

(declare-fun m!745011 () Bool)

(assert (=> b!471502 m!745011))

(check-sat (not b_next!13139) tp_is_empty!2105 b_and!50421 b_and!50425 (not start!45046) (not b_next!13137) (not b_lambda!19665) (not b!471501) tp_is_empty!2107 (not b!471499) (not b!471502) (not b!471500) (not setNonEmpty!1918))
(check-sat b_and!50421 b_and!50425 (not b_next!13139) (not b_next!13137))
