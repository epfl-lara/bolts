; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107772 () Bool)

(assert start!107772)

(declare-fun setIsEmpty!7840 () Bool)

(declare-fun setRes!7840 () Bool)

(assert (=> setIsEmpty!7840 setRes!7840))

(declare-fun res!544004 () Bool)

(declare-fun e!776193 () Bool)

(assert (=> start!107772 (=> (not res!544004) (not e!776193))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((B!1293 0))(
  ( (B!1294 (val!4004 Int)) )
))
(declare-fun s!1510 () (InoxSet B!1293))

(assert (=> start!107772 (= res!544004 (not (= s!1510 ((as const (Array B!1293 Bool)) false))))))

(assert (=> start!107772 e!776193))

(declare-fun condSetEmpty!7840 () Bool)

(assert (=> start!107772 (= condSetEmpty!7840 (= s!1510 ((as const (Array B!1293 Bool)) false)))))

(assert (=> start!107772 setRes!7840))

(declare-fun setNonEmpty!7840 () Bool)

(declare-fun tp!342755 () Bool)

(declare-fun tp_is_empty!6151 () Bool)

(assert (=> setNonEmpty!7840 (= setRes!7840 (and tp!342755 tp_is_empty!6151))))

(declare-fun setElem!7840 () B!1293)

(declare-fun setRest!7840 () (InoxSet B!1293))

(assert (=> setNonEmpty!7840 (= s!1510 ((_ map or) (store ((as const (Array B!1293 Bool)) false) setElem!7840 true) setRest!7840))))

(declare-fun b!1209985 () Bool)

(declare-fun res!544003 () Bool)

(declare-fun e!776192 () Bool)

(assert (=> b!1209985 (=> (not res!544003) (not e!776192))))

(declare-datatypes ((List!12251 0))(
  ( (Nil!12193) (Cons!12193 (h!17594 B!1293) (t!112635 List!12251)) )
))
(declare-fun lt!414015 () List!12251)

(declare-fun isEmpty!7279 (List!12251) Bool)

(assert (=> b!1209985 (= res!544003 (isEmpty!7279 (t!112635 lt!414015)))))

(declare-fun b!1209986 () Bool)

(assert (=> b!1209986 (= e!776192 (= lt!414015 Nil!12193))))

(declare-fun b!1209987 () Bool)

(assert (=> b!1209987 (= e!776193 e!776192)))

(declare-fun res!544005 () Bool)

(assert (=> b!1209987 (=> (not res!544005) (not e!776192))))

(get-info :version)

(assert (=> b!1209987 (= res!544005 ((_ is Cons!12193) lt!414015))))

(declare-fun toList!665 ((InoxSet B!1293)) List!12251)

(assert (=> b!1209987 (= lt!414015 (toList!665 s!1510))))

(assert (= (and start!107772 res!544004) b!1209987))

(assert (= (and b!1209987 res!544005) b!1209985))

(assert (= (and b!1209985 res!544003) b!1209986))

(assert (= (and start!107772 condSetEmpty!7840) setIsEmpty!7840))

(assert (= (and start!107772 (not condSetEmpty!7840)) setNonEmpty!7840))

(declare-fun m!1385995 () Bool)

(assert (=> b!1209985 m!1385995))

(declare-fun m!1385997 () Bool)

(assert (=> b!1209987 m!1385997))

(check-sat (not b!1209985) (not b!1209987) (not setNonEmpty!7840) tp_is_empty!6151)
(check-sat)
