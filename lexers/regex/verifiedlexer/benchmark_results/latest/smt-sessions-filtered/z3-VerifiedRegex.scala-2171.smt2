; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107776 () Bool)

(assert start!107776)

(declare-fun b!1210013 () Bool)

(declare-fun e!776211 () Bool)

(declare-fun e!776210 () Bool)

(assert (=> b!1210013 (= e!776211 e!776210)))

(declare-fun res!544035 () Bool)

(assert (=> b!1210013 (=> (not res!544035) (not e!776210))))

(declare-fun e!776209 () Bool)

(assert (=> b!1210013 (= res!544035 e!776209)))

(declare-fun res!544032 () Bool)

(assert (=> b!1210013 (=> res!544032 e!776209)))

(declare-fun lt!414033 () Bool)

(assert (=> b!1210013 (= res!544032 lt!414033)))

(declare-datatypes ((B!1297 0))(
  ( (B!1298 (val!4006 Int)) )
))
(declare-datatypes ((List!12253 0))(
  ( (Nil!12195) (Cons!12195 (h!17596 B!1297) (t!112637 List!12253)) )
))
(declare-fun lt!414032 () List!12253)

(get-info :version)

(assert (=> b!1210013 (= lt!414033 (not ((_ is Cons!12195) lt!414032)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun s!1510 () (InoxSet B!1297))

(declare-fun toList!667 ((InoxSet B!1297)) List!12253)

(assert (=> b!1210013 (= lt!414032 (toList!667 s!1510))))

(declare-fun b!1210014 () Bool)

(assert (=> b!1210014 (= e!776210 false)))

(declare-fun lt!414031 () Bool)

(declare-fun contains!2024 (List!12253 B!1297) Bool)

(assert (=> b!1210014 (= lt!414031 (contains!2024 lt!414032 (h!17596 lt!414032)))))

(declare-fun b!1210015 () Bool)

(declare-fun isEmpty!7281 (List!12253) Bool)

(assert (=> b!1210015 (= e!776209 (not (isEmpty!7281 (t!112637 lt!414032))))))

(declare-fun setNonEmpty!7846 () Bool)

(declare-fun setRes!7846 () Bool)

(declare-fun tp!342761 () Bool)

(declare-fun tp_is_empty!6155 () Bool)

(assert (=> setNonEmpty!7846 (= setRes!7846 (and tp!342761 tp_is_empty!6155))))

(declare-fun setElem!7846 () B!1297)

(declare-fun setRest!7846 () (InoxSet B!1297))

(assert (=> setNonEmpty!7846 (= s!1510 ((_ map or) (store ((as const (Array B!1297 Bool)) false) setElem!7846 true) setRest!7846))))

(declare-fun b!1210016 () Bool)

(declare-fun res!544033 () Bool)

(assert (=> b!1210016 (=> (not res!544033) (not e!776210))))

(declare-fun noDuplicate!200 (List!12253) Bool)

(assert (=> b!1210016 (= res!544033 (noDuplicate!200 lt!414032))))

(declare-fun res!544034 () Bool)

(assert (=> start!107776 (=> (not res!544034) (not e!776211))))

(assert (=> start!107776 (= res!544034 (not (= s!1510 ((as const (Array B!1297 Bool)) false))))))

(assert (=> start!107776 e!776211))

(declare-fun condSetEmpty!7846 () Bool)

(assert (=> start!107776 (= condSetEmpty!7846 (= s!1510 ((as const (Array B!1297 Bool)) false)))))

(assert (=> start!107776 setRes!7846))

(declare-fun setIsEmpty!7846 () Bool)

(assert (=> setIsEmpty!7846 setRes!7846))

(declare-fun b!1210017 () Bool)

(declare-fun res!544031 () Bool)

(assert (=> b!1210017 (=> (not res!544031) (not e!776210))))

(assert (=> b!1210017 (= res!544031 (not lt!414033))))

(assert (= (and start!107776 res!544034) b!1210013))

(assert (= (and b!1210013 (not res!544032)) b!1210015))

(assert (= (and b!1210013 res!544035) b!1210017))

(assert (= (and b!1210017 res!544031) b!1210016))

(assert (= (and b!1210016 res!544033) b!1210014))

(assert (= (and start!107776 condSetEmpty!7846) setIsEmpty!7846))

(assert (= (and start!107776 (not condSetEmpty!7846)) setNonEmpty!7846))

(declare-fun m!1386007 () Bool)

(assert (=> b!1210013 m!1386007))

(declare-fun m!1386009 () Bool)

(assert (=> b!1210014 m!1386009))

(declare-fun m!1386011 () Bool)

(assert (=> b!1210015 m!1386011))

(declare-fun m!1386013 () Bool)

(assert (=> b!1210016 m!1386013))

(check-sat tp_is_empty!6155 (not b!1210013) (not b!1210014) (not b!1210015) (not b!1210016) (not setNonEmpty!7846))
(check-sat)
