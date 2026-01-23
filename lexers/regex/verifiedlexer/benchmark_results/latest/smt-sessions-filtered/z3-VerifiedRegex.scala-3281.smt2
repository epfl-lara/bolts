; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!188744 () Bool)

(assert start!188744)

(declare-fun b!1885142 () Bool)

(declare-fun e!1202537 () Bool)

(declare-datatypes ((C!10420 0))(
  ( (C!10421 (val!6098 Int)) )
))
(declare-datatypes ((List!21036 0))(
  ( (Nil!20954) (Cons!20954 (h!26355 C!10420) (t!175035 List!21036)) )
))
(declare-datatypes ((IArray!13937 0))(
  ( (IArray!13938 (innerList!7026 List!21036)) )
))
(declare-datatypes ((Conc!6966 0))(
  ( (Node!6966 (left!16843 Conc!6966) (right!17173 Conc!6966) (csize!14162 Int) (cheight!7177 Int)) (Leaf!10248 (xs!9856 IArray!13937) (csize!14163 Int)) (Empty!6966) )
))
(declare-datatypes ((BalanceConc!13748 0))(
  ( (BalanceConc!13749 (c!308002 Conc!6966)) )
))
(declare-fun input!3724 () BalanceConc!13748)

(declare-fun tp!537015 () Bool)

(declare-fun inv!27913 (Conc!6966) Bool)

(assert (=> b!1885142 (= e!1202537 (and (inv!27913 (c!308002 input!3724)) tp!537015))))

(declare-fun setIsEmpty!11668 () Bool)

(declare-fun setRes!11668 () Bool)

(assert (=> setIsEmpty!11668 setRes!11668))

(declare-fun tp!537014 () Bool)

(declare-fun e!1202534 () Bool)

(declare-fun setNonEmpty!11668 () Bool)

(declare-datatypes ((Regex!5131 0))(
  ( (ElementMatch!5131 (c!308003 C!10420)) (Concat!8984 (regOne!10774 Regex!5131) (regTwo!10774 Regex!5131)) (EmptyExpr!5131) (Star!5131 (reg!5460 Regex!5131)) (EmptyLang!5131) (Union!5131 (regOne!10775 Regex!5131) (regTwo!10775 Regex!5131)) )
))
(declare-datatypes ((List!21037 0))(
  ( (Nil!20955) (Cons!20955 (h!26356 Regex!5131) (t!175036 List!21037)) )
))
(declare-datatypes ((Context!1970 0))(
  ( (Context!1971 (exprs!1485 List!21037)) )
))
(declare-fun setElem!11668 () Context!1970)

(declare-fun inv!27914 (Context!1970) Bool)

(assert (=> setNonEmpty!11668 (= setRes!11668 (and tp!537014 (inv!27914 setElem!11668) e!1202534))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!580 () (InoxSet Context!1970))

(declare-fun setRest!11668 () (InoxSet Context!1970))

(assert (=> setNonEmpty!11668 (= z!580 ((_ map or) (store ((as const (Array Context!1970 Bool)) false) setElem!11668 true) setRest!11668))))

(declare-fun b!1885144 () Bool)

(declare-fun tp!537013 () Bool)

(assert (=> b!1885144 (= e!1202534 tp!537013)))

(declare-fun b!1885145 () Bool)

(declare-fun e!1202536 () Bool)

(declare-fun e!1202535 () Bool)

(assert (=> b!1885145 (= e!1202536 e!1202535)))

(declare-fun res!841601 () Bool)

(assert (=> b!1885145 (=> (not res!841601) (not e!1202535))))

(declare-fun i!1815 () Int)

(declare-fun lt!723276 () Int)

(assert (=> b!1885145 (= res!841601 (and (<= i!1815 lt!723276) (= i!1815 lt!723276)))))

(declare-fun size!16643 (BalanceConc!13748) Int)

(assert (=> b!1885145 (= lt!723276 (size!16643 input!3724))))

(declare-fun b!1885143 () Bool)

(assert (=> b!1885143 (= e!1202535 false)))

(declare-fun lt!723277 () Bool)

(declare-fun nullableZipper!44 ((InoxSet Context!1970)) Bool)

(assert (=> b!1885143 (= lt!723277 (nullableZipper!44 z!580))))

(declare-fun res!841602 () Bool)

(assert (=> start!188744 (=> (not res!841602) (not e!1202536))))

(assert (=> start!188744 (= res!841602 (>= i!1815 0))))

(assert (=> start!188744 e!1202536))

(assert (=> start!188744 true))

(declare-fun inv!27915 (BalanceConc!13748) Bool)

(assert (=> start!188744 (and (inv!27915 input!3724) e!1202537)))

(declare-fun condSetEmpty!11668 () Bool)

(assert (=> start!188744 (= condSetEmpty!11668 (= z!580 ((as const (Array Context!1970 Bool)) false)))))

(assert (=> start!188744 setRes!11668))

(assert (= (and start!188744 res!841602) b!1885145))

(assert (= (and b!1885145 res!841601) b!1885143))

(assert (= start!188744 b!1885142))

(assert (= (and start!188744 condSetEmpty!11668) setIsEmpty!11668))

(assert (= (and start!188744 (not condSetEmpty!11668)) setNonEmpty!11668))

(assert (= setNonEmpty!11668 b!1885144))

(declare-fun m!2318239 () Bool)

(assert (=> setNonEmpty!11668 m!2318239))

(declare-fun m!2318241 () Bool)

(assert (=> b!1885145 m!2318241))

(declare-fun m!2318243 () Bool)

(assert (=> b!1885142 m!2318243))

(declare-fun m!2318245 () Bool)

(assert (=> start!188744 m!2318245))

(declare-fun m!2318247 () Bool)

(assert (=> b!1885143 m!2318247))

(check-sat (not b!1885143) (not b!1885145) (not setNonEmpty!11668) (not b!1885144) (not start!188744) (not b!1885142))
(check-sat)
