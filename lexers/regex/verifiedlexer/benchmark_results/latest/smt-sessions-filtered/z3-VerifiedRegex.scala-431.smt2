; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!12766 () Bool)

(assert start!12766)

(declare-fun b!125396 () Bool)

(declare-fun e!72203 () Bool)

(declare-fun tp!68410 () Bool)

(assert (=> b!125396 (= e!72203 tp!68410)))

(declare-fun b!125397 () Bool)

(declare-fun tp!68413 () Bool)

(declare-fun tp!68412 () Bool)

(assert (=> b!125397 (= e!72203 (and tp!68413 tp!68412))))

(declare-fun b!125398 () Bool)

(declare-fun e!72200 () Bool)

(declare-fun e!72201 () Bool)

(assert (=> b!125398 (= e!72200 e!72201)))

(declare-fun res!58272 () Bool)

(assert (=> b!125398 (=> (not res!58272) (not e!72201))))

(assert (=> b!125398 (= res!58272 true)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!2056 0))(
  ( (C!2057 (val!754 Int)) )
))
(declare-datatypes ((Regex!567 0))(
  ( (ElementMatch!567 (c!27635 C!2056)) (Concat!961 (regOne!1646 Regex!567) (regTwo!1646 Regex!567)) (EmptyExpr!567) (Star!567 (reg!896 Regex!567)) (EmptyLang!567) (Union!567 (regOne!1647 Regex!567) (regTwo!1647 Regex!567)) )
))
(declare-datatypes ((List!2050 0))(
  ( (Nil!2044) (Cons!2044 (h!7441 Regex!567) (t!22618 List!2050)) )
))
(declare-datatypes ((Context!214 0))(
  ( (Context!215 (exprs!607 List!2050)) )
))
(declare-fun lt!37874 () (InoxSet Context!214))

(declare-fun r!13481 () Regex!567)

(declare-fun focus!2 (Regex!567) (InoxSet Context!214))

(assert (=> b!125398 (= lt!37874 (focus!2 r!13481))))

(declare-fun b!125399 () Bool)

(assert (=> b!125399 (= e!72201 false)))

(declare-fun lt!37875 () Int)

(declare-datatypes ((List!2051 0))(
  ( (Nil!2045) (Cons!2045 (h!7442 C!2056) (t!22619 List!2051)) )
))
(declare-datatypes ((IArray!1147 0))(
  ( (IArray!1148 (innerList!631 List!2051)) )
))
(declare-datatypes ((Conc!573 0))(
  ( (Node!573 (left!1640 Conc!573) (right!1970 Conc!573) (csize!1376 Int) (cheight!784 Int)) (Leaf!1005 (xs!3168 IArray!1147) (csize!1377 Int)) (Empty!573) )
))
(declare-datatypes ((BalanceConc!1150 0))(
  ( (BalanceConc!1151 (c!27636 Conc!573)) )
))
(declare-fun input!6028 () BalanceConc!1150)

(declare-fun size!1903 (BalanceConc!1150) Int)

(assert (=> b!125399 (= lt!37875 (size!1903 input!6028))))

(declare-fun b!125400 () Bool)

(declare-fun tp_is_empty!1189 () Bool)

(assert (=> b!125400 (= e!72203 tp_is_empty!1189)))

(declare-fun b!125401 () Bool)

(declare-fun tp!68408 () Bool)

(declare-fun tp!68411 () Bool)

(assert (=> b!125401 (= e!72203 (and tp!68408 tp!68411))))

(declare-fun b!125402 () Bool)

(declare-fun e!72202 () Bool)

(declare-fun tp!68409 () Bool)

(declare-fun inv!2622 (Conc!573) Bool)

(assert (=> b!125402 (= e!72202 (and (inv!2622 (c!27636 input!6028)) tp!68409))))

(declare-fun res!58271 () Bool)

(assert (=> start!12766 (=> (not res!58271) (not e!72200))))

(declare-fun validRegex!159 (Regex!567) Bool)

(assert (=> start!12766 (= res!58271 (validRegex!159 r!13481))))

(assert (=> start!12766 e!72200))

(assert (=> start!12766 e!72203))

(declare-fun inv!2623 (BalanceConc!1150) Bool)

(assert (=> start!12766 (and (inv!2623 input!6028) e!72202)))

(assert (= (and start!12766 res!58271) b!125398))

(assert (= (and b!125398 res!58272) b!125399))

(get-info :version)

(assert (= (and start!12766 ((_ is ElementMatch!567) r!13481)) b!125400))

(assert (= (and start!12766 ((_ is Concat!961) r!13481)) b!125397))

(assert (= (and start!12766 ((_ is Star!567) r!13481)) b!125396))

(assert (= (and start!12766 ((_ is Union!567) r!13481)) b!125401))

(assert (= start!12766 b!125402))

(declare-fun m!111061 () Bool)

(assert (=> b!125398 m!111061))

(declare-fun m!111063 () Bool)

(assert (=> b!125399 m!111063))

(declare-fun m!111065 () Bool)

(assert (=> b!125402 m!111065))

(declare-fun m!111067 () Bool)

(assert (=> start!12766 m!111067))

(declare-fun m!111069 () Bool)

(assert (=> start!12766 m!111069))

(check-sat tp_is_empty!1189 (not start!12766) (not b!125399) (not b!125401) (not b!125402) (not b!125397) (not b!125396) (not b!125398))
(check-sat)
