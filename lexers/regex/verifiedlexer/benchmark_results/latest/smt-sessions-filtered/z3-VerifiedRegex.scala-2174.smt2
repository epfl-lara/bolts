; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107788 () Bool)

(assert start!107788)

(declare-fun res!544107 () Bool)

(declare-fun e!776265 () Bool)

(assert (=> start!107788 (=> (not res!544107) (not e!776265))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((B!1309 0))(
  ( (B!1310 (val!4012 Int)) )
))
(declare-fun s!1510 () (InoxSet B!1309))

(assert (=> start!107788 (= res!544107 (not (= s!1510 ((as const (Array B!1309 Bool)) false))))))

(assert (=> start!107788 e!776265))

(declare-fun condSetEmpty!7864 () Bool)

(assert (=> start!107788 (= condSetEmpty!7864 (= s!1510 ((as const (Array B!1309 Bool)) false)))))

(declare-fun setRes!7864 () Bool)

(assert (=> start!107788 setRes!7864))

(declare-fun b!1210089 () Bool)

(assert (=> b!1210089 (= e!776265 false)))

(declare-datatypes ((List!12259 0))(
  ( (Nil!12201) (Cons!12201 (h!17602 B!1309) (t!112643 List!12259)) )
))
(declare-fun lt!414099 () List!12259)

(declare-fun toList!673 ((InoxSet B!1309)) List!12259)

(assert (=> b!1210089 (= lt!414099 (toList!673 s!1510))))

(declare-fun setIsEmpty!7864 () Bool)

(assert (=> setIsEmpty!7864 setRes!7864))

(declare-fun setNonEmpty!7864 () Bool)

(declare-fun tp!342779 () Bool)

(declare-fun tp_is_empty!6167 () Bool)

(assert (=> setNonEmpty!7864 (= setRes!7864 (and tp!342779 tp_is_empty!6167))))

(declare-fun setElem!7864 () B!1309)

(declare-fun setRest!7864 () (InoxSet B!1309))

(assert (=> setNonEmpty!7864 (= s!1510 ((_ map or) (store ((as const (Array B!1309 Bool)) false) setElem!7864 true) setRest!7864))))

(assert (= (and start!107788 res!544107) b!1210089))

(assert (= (and start!107788 condSetEmpty!7864) setIsEmpty!7864))

(assert (= (and start!107788 (not condSetEmpty!7864)) setNonEmpty!7864))

(declare-fun m!1386077 () Bool)

(assert (=> b!1210089 m!1386077))

(check-sat (not b!1210089) (not setNonEmpty!7864) tp_is_empty!6167)
(check-sat)
