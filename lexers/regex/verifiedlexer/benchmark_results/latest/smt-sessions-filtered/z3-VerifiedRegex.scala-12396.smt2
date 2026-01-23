; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!693436 () Bool)

(assert start!693436)

(declare-fun b_free!133689 () Bool)

(declare-fun b_next!134479 () Bool)

(assert (=> start!693436 (= b_free!133689 (not b_next!134479))))

(declare-fun tp!1960989 () Bool)

(declare-fun b_and!350785 () Bool)

(assert (=> start!693436 (= tp!1960989 b_and!350785)))

(declare-fun setIsEmpty!50976 () Bool)

(declare-fun setRes!50977 () Bool)

(assert (=> setIsEmpty!50976 setRes!50977))

(declare-fun setNonEmpty!50976 () Bool)

(declare-fun tp!1960990 () Bool)

(declare-fun tp_is_empty!45343 () Bool)

(assert (=> setNonEmpty!50976 (= setRes!50977 (and tp!1960990 tp_is_empty!45343))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!595 0))(
  ( (A!596 (val!27921 Int)) )
))
(declare-fun s2!385 () (InoxSet A!595))

(declare-fun setElem!50977 () A!595)

(declare-fun setRest!50976 () (InoxSet A!595))

(assert (=> setNonEmpty!50976 (= s2!385 ((_ map or) (store ((as const (Array A!595 Bool)) false) setElem!50977 true) setRest!50976))))

(declare-fun setNonEmpty!50977 () Bool)

(declare-fun setRes!50976 () Bool)

(declare-fun tp!1960988 () Bool)

(assert (=> setNonEmpty!50977 (= setRes!50976 (and tp!1960988 tp_is_empty!45343))))

(declare-fun s1!414 () (InoxSet A!595))

(declare-fun setElem!50976 () A!595)

(declare-fun setRest!50977 () (InoxSet A!595))

(assert (=> setNonEmpty!50977 (= s1!414 ((_ map or) (store ((as const (Array A!595 Bool)) false) setElem!50976 true) setRest!50977))))

(declare-fun b!7121740 () Bool)

(declare-fun e!4279280 () Bool)

(declare-fun e!4279281 () Bool)

(assert (=> b!7121740 (= e!4279280 e!4279281)))

(declare-fun res!2905461 () Bool)

(assert (=> b!7121740 (=> (not res!2905461) (not e!4279281))))

(declare-datatypes ((B!3253 0))(
  ( (B!3254 (val!27922 Int)) )
))
(declare-datatypes ((List!68996 0))(
  ( (Nil!68872) (Cons!68872 (h!75320 B!3253) (t!382903 List!68996)) )
))
(declare-fun l2!745 () List!68996)

(declare-fun lt!2561906 () (InoxSet B!3253))

(declare-fun toList!11099 ((InoxSet B!3253)) List!68996)

(assert (=> b!7121740 (= res!2905461 (= l2!745 (toList!11099 lt!2561906)))))

(declare-fun f!567 () Int)

(declare-fun map!16392 ((InoxSet A!595) Int) (InoxSet B!3253))

(assert (=> b!7121740 (= lt!2561906 (map!16392 ((_ map or) s1!414 s2!385) f!567))))

(declare-fun b!7121741 () Bool)

(declare-fun e!4279279 () Bool)

(declare-fun tp_is_empty!45341 () Bool)

(declare-fun tp!1960987 () Bool)

(assert (=> b!7121741 (= e!4279279 (and tp_is_empty!45341 tp!1960987))))

(declare-fun b!7121742 () Bool)

(assert (=> b!7121742 (= e!4279281 (not true))))

(declare-datatypes ((Unit!162693 0))(
  ( (Unit!162694) )
))
(declare-fun lt!2561903 () Unit!162693)

(declare-fun l1!756 () List!68996)

(declare-fun lt!2561905 () List!68996)

(declare-fun subseqTail!18 (List!68996 List!68996) Unit!162693)

(assert (=> b!7121742 (= lt!2561903 (subseqTail!18 l1!756 lt!2561905))))

(declare-fun lt!2561902 () (InoxSet B!3253))

(assert (=> b!7121742 (= (select lt!2561902 (h!75320 l1!756)) (select lt!2561906 (h!75320 l1!756)))))

(declare-fun lt!2561904 () Unit!162693)

(declare-fun lemmaMapAssociativeElem!4 ((InoxSet A!595) (InoxSet A!595) Int B!3253) Unit!162693)

(assert (=> b!7121742 (= lt!2561904 (lemmaMapAssociativeElem!4 s1!414 s2!385 f!567 (h!75320 l1!756)))))

(declare-fun b!7121743 () Bool)

(declare-fun res!2905462 () Bool)

(assert (=> b!7121743 (=> (not res!2905462) (not e!4279281))))

(get-info :version)

(assert (=> b!7121743 (= res!2905462 ((_ is Cons!68872) l1!756))))

(declare-fun b!7121744 () Bool)

(declare-fun e!4279282 () Bool)

(declare-fun tp!1960986 () Bool)

(assert (=> b!7121744 (= e!4279282 (and tp_is_empty!45341 tp!1960986))))

(declare-fun res!2905460 () Bool)

(assert (=> start!693436 (=> (not res!2905460) (not e!4279280))))

(declare-fun subseq!735 (List!68996 List!68996) Bool)

(assert (=> start!693436 (= res!2905460 (subseq!735 l1!756 lt!2561905))))

(assert (=> start!693436 (= lt!2561905 (toList!11099 lt!2561902))))

(assert (=> start!693436 (= lt!2561902 ((_ map or) (map!16392 s1!414 f!567) (map!16392 s2!385 f!567)))))

(assert (=> start!693436 e!4279280))

(assert (=> start!693436 e!4279279))

(declare-fun condSetEmpty!50976 () Bool)

(assert (=> start!693436 (= condSetEmpty!50976 (= s1!414 ((as const (Array A!595 Bool)) false)))))

(assert (=> start!693436 setRes!50976))

(declare-fun condSetEmpty!50977 () Bool)

(assert (=> start!693436 (= condSetEmpty!50977 (= s2!385 ((as const (Array A!595 Bool)) false)))))

(assert (=> start!693436 setRes!50977))

(assert (=> start!693436 e!4279282))

(assert (=> start!693436 tp!1960989))

(declare-fun setIsEmpty!50977 () Bool)

(assert (=> setIsEmpty!50977 setRes!50976))

(assert (= (and start!693436 res!2905460) b!7121740))

(assert (= (and b!7121740 res!2905461) b!7121743))

(assert (= (and b!7121743 res!2905462) b!7121742))

(assert (= (and start!693436 ((_ is Cons!68872) l1!756)) b!7121741))

(assert (= (and start!693436 condSetEmpty!50976) setIsEmpty!50977))

(assert (= (and start!693436 (not condSetEmpty!50976)) setNonEmpty!50977))

(assert (= (and start!693436 condSetEmpty!50977) setIsEmpty!50976))

(assert (= (and start!693436 (not condSetEmpty!50977)) setNonEmpty!50976))

(assert (= (and start!693436 ((_ is Cons!68872) l2!745)) b!7121744))

(declare-fun m!7838968 () Bool)

(assert (=> b!7121740 m!7838968))

(declare-fun m!7838970 () Bool)

(assert (=> b!7121740 m!7838970))

(declare-fun m!7838972 () Bool)

(assert (=> b!7121742 m!7838972))

(declare-fun m!7838974 () Bool)

(assert (=> b!7121742 m!7838974))

(declare-fun m!7838976 () Bool)

(assert (=> b!7121742 m!7838976))

(declare-fun m!7838978 () Bool)

(assert (=> b!7121742 m!7838978))

(declare-fun m!7838980 () Bool)

(assert (=> start!693436 m!7838980))

(declare-fun m!7838982 () Bool)

(assert (=> start!693436 m!7838982))

(declare-fun m!7838984 () Bool)

(assert (=> start!693436 m!7838984))

(declare-fun m!7838986 () Bool)

(assert (=> start!693436 m!7838986))

(check-sat (not setNonEmpty!50977) b_and!350785 (not b!7121742) (not b!7121744) (not b!7121740) (not setNonEmpty!50976) (not start!693436) (not b_next!134479) (not b!7121741) tp_is_empty!45341 tp_is_empty!45343)
(check-sat b_and!350785 (not b_next!134479))
