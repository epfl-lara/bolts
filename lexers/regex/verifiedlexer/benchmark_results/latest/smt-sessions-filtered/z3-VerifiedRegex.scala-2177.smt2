; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107820 () Bool)

(assert start!107820)

(declare-fun b!1210198 () Bool)

(declare-fun res!544191 () Bool)

(declare-fun e!776346 () Bool)

(assert (=> b!1210198 (=> (not res!544191) (not e!776346))))

(declare-fun lt!414181 () Bool)

(assert (=> b!1210198 (= res!544191 (not lt!414181))))

(declare-fun b!1210199 () Bool)

(declare-fun e!776345 () Bool)

(declare-datatypes ((B!1321 0))(
  ( (B!1322 (val!4018 Int)) )
))
(declare-datatypes ((List!12265 0))(
  ( (Nil!12207) (Cons!12207 (h!17608 B!1321) (t!112649 List!12265)) )
))
(declare-fun lt!414183 () List!12265)

(declare-fun isEmpty!7291 (List!12265) Bool)

(assert (=> b!1210199 (= e!776345 (not (isEmpty!7291 (t!112649 lt!414183))))))

(declare-fun setNonEmpty!7888 () Bool)

(declare-fun setRes!7888 () Bool)

(declare-fun tp!342803 () Bool)

(declare-fun tp_is_empty!6179 () Bool)

(assert (=> setNonEmpty!7888 (= setRes!7888 (and tp!342803 tp_is_empty!6179))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun s!1510 () (InoxSet B!1321))

(declare-fun setElem!7888 () B!1321)

(declare-fun setRest!7888 () (InoxSet B!1321))

(assert (=> setNonEmpty!7888 (= s!1510 ((_ map or) (store ((as const (Array B!1321 Bool)) false) setElem!7888 true) setRest!7888))))

(declare-fun res!544188 () Bool)

(declare-fun e!776347 () Bool)

(assert (=> start!107820 (=> (not res!544188) (not e!776347))))

(assert (=> start!107820 (= res!544188 (not (= s!1510 ((as const (Array B!1321 Bool)) false))))))

(assert (=> start!107820 e!776347))

(declare-fun condSetEmpty!7888 () Bool)

(assert (=> start!107820 (= condSetEmpty!7888 (= s!1510 ((as const (Array B!1321 Bool)) false)))))

(assert (=> start!107820 setRes!7888))

(declare-fun setIsEmpty!7888 () Bool)

(assert (=> setIsEmpty!7888 setRes!7888))

(declare-fun b!1210200 () Bool)

(assert (=> b!1210200 (= e!776347 e!776346)))

(declare-fun res!544190 () Bool)

(assert (=> b!1210200 (=> (not res!544190) (not e!776346))))

(assert (=> b!1210200 (= res!544190 e!776345)))

(declare-fun res!544189 () Bool)

(assert (=> b!1210200 (=> res!544189 e!776345)))

(assert (=> b!1210200 (= res!544189 lt!414181)))

(get-info :version)

(assert (=> b!1210200 (= lt!414181 (not ((_ is Cons!12207) lt!414183)))))

(declare-fun toList!679 ((InoxSet B!1321)) List!12265)

(assert (=> b!1210200 (= lt!414183 (toList!679 s!1510))))

(declare-fun b!1210201 () Bool)

(declare-fun lt!414180 () List!12265)

(assert (=> b!1210201 (= e!776346 (not (or (not (= lt!414183 (Cons!12207 (h!17608 lt!414183) (t!112649 lt!414183)))) (not (= lt!414180 (t!112649 lt!414183))) (= (t!112649 lt!414183) lt!414180))))))

(declare-fun tail!1772 (List!12265) List!12265)

(assert (=> b!1210201 (= lt!414180 (tail!1772 lt!414183))))

(declare-fun -!82 (List!12265 B!1321) List!12265)

(assert (=> b!1210201 (= lt!414180 (-!82 lt!414183 (h!17608 lt!414183)))))

(declare-datatypes ((Unit!18588 0))(
  ( (Unit!18589) )
))
(declare-fun lt!414182 () Unit!18588)

(declare-fun lemmaNoDuplicateMinusHeadSameAsTail!10 (List!12265 B!1321) Unit!18588)

(assert (=> b!1210201 (= lt!414182 (lemmaNoDuplicateMinusHeadSameAsTail!10 lt!414183 (h!17608 lt!414183)))))

(assert (= (and start!107820 res!544188) b!1210200))

(assert (= (and b!1210200 (not res!544189)) b!1210199))

(assert (= (and b!1210200 res!544190) b!1210198))

(assert (= (and b!1210198 res!544191) b!1210201))

(assert (= (and start!107820 condSetEmpty!7888) setIsEmpty!7888))

(assert (= (and start!107820 (not condSetEmpty!7888)) setNonEmpty!7888))

(declare-fun m!1386173 () Bool)

(assert (=> b!1210199 m!1386173))

(declare-fun m!1386175 () Bool)

(assert (=> b!1210200 m!1386175))

(declare-fun m!1386177 () Bool)

(assert (=> b!1210201 m!1386177))

(declare-fun m!1386179 () Bool)

(assert (=> b!1210201 m!1386179))

(declare-fun m!1386181 () Bool)

(assert (=> b!1210201 m!1386181))

(check-sat tp_is_empty!6179 (not b!1210199) (not b!1210201) (not setNonEmpty!7888) (not b!1210200))
(check-sat)
