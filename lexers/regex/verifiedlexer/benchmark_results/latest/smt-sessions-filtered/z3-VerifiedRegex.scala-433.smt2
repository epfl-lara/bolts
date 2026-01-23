; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!12774 () Bool)

(assert start!12774)

(declare-fun b!125469 () Bool)

(declare-fun e!72237 () Bool)

(assert (=> b!125469 (= e!72237 (not true))))

(declare-datatypes ((C!2064 0))(
  ( (C!2065 (val!758 Int)) )
))
(declare-datatypes ((Regex!571 0))(
  ( (ElementMatch!571 (c!27643 C!2064)) (Concat!965 (regOne!1654 Regex!571) (regTwo!1654 Regex!571)) (EmptyExpr!571) (Star!571 (reg!900 Regex!571)) (EmptyLang!571) (Union!571 (regOne!1655 Regex!571) (regTwo!1655 Regex!571)) )
))
(declare-fun lt!37916 () Regex!571)

(declare-datatypes ((List!2059 0))(
  ( (Nil!2053) (Cons!2053 (h!7450 Regex!571) (t!22627 List!2059)) )
))
(declare-datatypes ((Context!222 0))(
  ( (Context!223 (exprs!611 List!2059)) )
))
(declare-datatypes ((List!2060 0))(
  ( (Nil!2054) (Cons!2054 (h!7451 Context!222) (t!22628 List!2060)) )
))
(declare-fun lt!37917 () List!2060)

(declare-fun unfocusZipper!2 (List!2060) Regex!571)

(assert (=> b!125469 (= lt!37916 (unfocusZipper!2 lt!37917))))

(declare-datatypes ((List!2061 0))(
  ( (Nil!2055) (Cons!2055 (h!7452 C!2064) (t!22629 List!2061)) )
))
(declare-fun lt!37913 () List!2061)

(declare-datatypes ((IArray!1155 0))(
  ( (IArray!1156 (innerList!635 List!2061)) )
))
(declare-datatypes ((Conc!577 0))(
  ( (Node!577 (left!1646 Conc!577) (right!1976 Conc!577) (csize!1384 Int) (cheight!788 Int)) (Leaf!1011 (xs!3172 IArray!1155) (csize!1385 Int)) (Empty!577) )
))
(declare-datatypes ((BalanceConc!1158 0))(
  ( (BalanceConc!1159 (c!27644 Conc!577)) )
))
(declare-fun input!6028 () BalanceConc!1158)

(declare-fun list!794 (BalanceConc!1158) List!2061)

(assert (=> b!125469 (= lt!37913 (list!794 input!6028))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!37914 () (InoxSet Context!222))

(declare-fun toList!271 ((InoxSet Context!222)) List!2060)

(assert (=> b!125469 (= lt!37917 (toList!271 lt!37914))))

(declare-fun matchZipper!5 ((InoxSet Context!222) List!2061) Bool)

(declare-fun dropList!40 (BalanceConc!1158 Int) List!2061)

(declare-fun matchZipperSequence!5 ((InoxSet Context!222) BalanceConc!1158 Int) Bool)

(assert (=> b!125469 (= (matchZipper!5 lt!37914 (dropList!40 input!6028 0)) (matchZipperSequence!5 lt!37914 input!6028 0))))

(declare-datatypes ((Unit!1613 0))(
  ( (Unit!1614) )
))
(declare-fun lt!37915 () Unit!1613)

(declare-fun lemmaMatchZipperSequenceEquivalent!4 ((InoxSet Context!222) BalanceConc!1158 Int) Unit!1613)

(assert (=> b!125469 (= lt!37915 (lemmaMatchZipperSequenceEquivalent!4 lt!37914 input!6028 0))))

(declare-fun r!13481 () Regex!571)

(declare-fun focus!6 (Regex!571) (InoxSet Context!222))

(assert (=> b!125469 (= lt!37914 (focus!6 r!13481))))

(declare-fun b!125470 () Bool)

(declare-fun e!72238 () Bool)

(declare-fun tp!68481 () Bool)

(declare-fun inv!2636 (Conc!577) Bool)

(assert (=> b!125470 (= e!72238 (and (inv!2636 (c!27644 input!6028)) tp!68481))))

(declare-fun b!125471 () Bool)

(declare-fun e!72239 () Bool)

(declare-fun tp_is_empty!1197 () Bool)

(assert (=> b!125471 (= e!72239 tp_is_empty!1197)))

(declare-fun b!125472 () Bool)

(declare-fun tp!68485 () Bool)

(declare-fun tp!68482 () Bool)

(assert (=> b!125472 (= e!72239 (and tp!68485 tp!68482))))

(declare-fun res!58284 () Bool)

(assert (=> start!12774 (=> (not res!58284) (not e!72237))))

(declare-fun validRegex!163 (Regex!571) Bool)

(assert (=> start!12774 (= res!58284 (validRegex!163 r!13481))))

(assert (=> start!12774 e!72237))

(assert (=> start!12774 e!72239))

(declare-fun inv!2637 (BalanceConc!1158) Bool)

(assert (=> start!12774 (and (inv!2637 input!6028) e!72238)))

(declare-fun b!125473 () Bool)

(declare-fun tp!68483 () Bool)

(declare-fun tp!68484 () Bool)

(assert (=> b!125473 (= e!72239 (and tp!68483 tp!68484))))

(declare-fun b!125474 () Bool)

(declare-fun tp!68480 () Bool)

(assert (=> b!125474 (= e!72239 tp!68480)))

(assert (= (and start!12774 res!58284) b!125469))

(get-info :version)

(assert (= (and start!12774 ((_ is ElementMatch!571) r!13481)) b!125471))

(assert (= (and start!12774 ((_ is Concat!965) r!13481)) b!125473))

(assert (= (and start!12774 ((_ is Star!571) r!13481)) b!125474))

(assert (= (and start!12774 ((_ is Union!571) r!13481)) b!125472))

(assert (= start!12774 b!125470))

(declare-fun m!111125 () Bool)

(assert (=> b!125469 m!111125))

(declare-fun m!111127 () Bool)

(assert (=> b!125469 m!111127))

(declare-fun m!111129 () Bool)

(assert (=> b!125469 m!111129))

(declare-fun m!111131 () Bool)

(assert (=> b!125469 m!111131))

(assert (=> b!125469 m!111129))

(declare-fun m!111133 () Bool)

(assert (=> b!125469 m!111133))

(declare-fun m!111135 () Bool)

(assert (=> b!125469 m!111135))

(declare-fun m!111137 () Bool)

(assert (=> b!125469 m!111137))

(declare-fun m!111139 () Bool)

(assert (=> b!125469 m!111139))

(declare-fun m!111141 () Bool)

(assert (=> b!125470 m!111141))

(declare-fun m!111143 () Bool)

(assert (=> start!12774 m!111143))

(declare-fun m!111145 () Bool)

(assert (=> start!12774 m!111145))

(check-sat (not b!125473) (not b!125474) tp_is_empty!1197 (not b!125472) (not b!125470) (not b!125469) (not start!12774))
(check-sat)
