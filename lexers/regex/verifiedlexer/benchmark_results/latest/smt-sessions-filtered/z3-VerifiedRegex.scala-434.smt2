; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!12778 () Bool)

(assert start!12778)

(declare-fun b!125506 () Bool)

(declare-fun e!72255 () Bool)

(assert (=> b!125506 (= e!72255 (not true))))

(declare-datatypes ((C!2068 0))(
  ( (C!2069 (val!760 Int)) )
))
(declare-datatypes ((Regex!573 0))(
  ( (ElementMatch!573 (c!27647 C!2068)) (Concat!967 (regOne!1658 Regex!573) (regTwo!1658 Regex!573)) (EmptyExpr!573) (Star!573 (reg!902 Regex!573)) (EmptyLang!573) (Union!573 (regOne!1659 Regex!573) (regTwo!1659 Regex!573)) )
))
(declare-fun r!13481 () Regex!573)

(declare-datatypes ((List!2065 0))(
  ( (Nil!2059) (Cons!2059 (h!7456 C!2068) (t!22633 List!2065)) )
))
(declare-fun lt!37946 () List!2065)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!2066 0))(
  ( (Nil!2060) (Cons!2060 (h!7457 Regex!573) (t!22634 List!2066)) )
))
(declare-datatypes ((Context!226 0))(
  ( (Context!227 (exprs!613 List!2066)) )
))
(declare-fun lt!37947 () (InoxSet Context!226))

(declare-fun matchR!51 (Regex!573 List!2065) Bool)

(declare-fun matchZipper!7 ((InoxSet Context!226) List!2065) Bool)

(assert (=> b!125506 (= (matchR!51 r!13481 lt!37946) (matchZipper!7 lt!37947 lt!37946))))

(declare-datatypes ((Unit!1617 0))(
  ( (Unit!1618) )
))
(declare-fun lt!37945 () Unit!1617)

(declare-datatypes ((List!2067 0))(
  ( (Nil!2061) (Cons!2061 (h!7458 Context!226) (t!22635 List!2067)) )
))
(declare-fun lt!37944 () List!2067)

(declare-fun theoremZipperRegexEquiv!2 ((InoxSet Context!226) List!2067 Regex!573 List!2065) Unit!1617)

(assert (=> b!125506 (= lt!37945 (theoremZipperRegexEquiv!2 lt!37947 lt!37944 r!13481 lt!37946))))

(declare-datatypes ((IArray!1159 0))(
  ( (IArray!1160 (innerList!637 List!2065)) )
))
(declare-datatypes ((Conc!579 0))(
  ( (Node!579 (left!1649 Conc!579) (right!1979 Conc!579) (csize!1388 Int) (cheight!790 Int)) (Leaf!1014 (xs!3174 IArray!1159) (csize!1389 Int)) (Empty!579) )
))
(declare-datatypes ((BalanceConc!1162 0))(
  ( (BalanceConc!1163 (c!27648 Conc!579)) )
))
(declare-fun input!6028 () BalanceConc!1162)

(declare-fun list!796 (BalanceConc!1162) List!2065)

(assert (=> b!125506 (= lt!37946 (list!796 input!6028))))

(declare-fun toList!273 ((InoxSet Context!226)) List!2067)

(assert (=> b!125506 (= lt!37944 (toList!273 lt!37947))))

(declare-fun dropList!42 (BalanceConc!1162 Int) List!2065)

(declare-fun matchZipperSequence!7 ((InoxSet Context!226) BalanceConc!1162 Int) Bool)

(assert (=> b!125506 (= (matchZipper!7 lt!37947 (dropList!42 input!6028 0)) (matchZipperSequence!7 lt!37947 input!6028 0))))

(declare-fun lt!37943 () Unit!1617)

(declare-fun lemmaMatchZipperSequenceEquivalent!6 ((InoxSet Context!226) BalanceConc!1162 Int) Unit!1617)

(assert (=> b!125506 (= lt!37943 (lemmaMatchZipperSequenceEquivalent!6 lt!37947 input!6028 0))))

(declare-fun focus!8 (Regex!573) (InoxSet Context!226))

(assert (=> b!125506 (= lt!37947 (focus!8 r!13481))))

(declare-fun b!125507 () Bool)

(declare-fun e!72257 () Bool)

(declare-fun tp!68519 () Bool)

(declare-fun tp!68521 () Bool)

(assert (=> b!125507 (= e!72257 (and tp!68519 tp!68521))))

(declare-fun b!125508 () Bool)

(declare-fun e!72256 () Bool)

(declare-fun tp!68517 () Bool)

(declare-fun inv!2643 (Conc!579) Bool)

(assert (=> b!125508 (= e!72256 (and (inv!2643 (c!27648 input!6028)) tp!68517))))

(declare-fun b!125505 () Bool)

(declare-fun tp!68520 () Bool)

(assert (=> b!125505 (= e!72257 tp!68520)))

(declare-fun res!58290 () Bool)

(assert (=> start!12778 (=> (not res!58290) (not e!72255))))

(declare-fun validRegex!165 (Regex!573) Bool)

(assert (=> start!12778 (= res!58290 (validRegex!165 r!13481))))

(assert (=> start!12778 e!72255))

(assert (=> start!12778 e!72257))

(declare-fun inv!2644 (BalanceConc!1162) Bool)

(assert (=> start!12778 (and (inv!2644 input!6028) e!72256)))

(declare-fun b!125509 () Bool)

(declare-fun tp!68518 () Bool)

(declare-fun tp!68516 () Bool)

(assert (=> b!125509 (= e!72257 (and tp!68518 tp!68516))))

(declare-fun b!125510 () Bool)

(declare-fun tp_is_empty!1201 () Bool)

(assert (=> b!125510 (= e!72257 tp_is_empty!1201)))

(assert (= (and start!12778 res!58290) b!125506))

(get-info :version)

(assert (= (and start!12778 ((_ is ElementMatch!573) r!13481)) b!125510))

(assert (= (and start!12778 ((_ is Concat!967) r!13481)) b!125507))

(assert (= (and start!12778 ((_ is Star!573) r!13481)) b!125505))

(assert (= (and start!12778 ((_ is Union!573) r!13481)) b!125509))

(assert (= start!12778 b!125508))

(declare-fun m!111173 () Bool)

(assert (=> b!125506 m!111173))

(declare-fun m!111175 () Bool)

(assert (=> b!125506 m!111175))

(declare-fun m!111177 () Bool)

(assert (=> b!125506 m!111177))

(declare-fun m!111179 () Bool)

(assert (=> b!125506 m!111179))

(declare-fun m!111181 () Bool)

(assert (=> b!125506 m!111181))

(assert (=> b!125506 m!111175))

(declare-fun m!111183 () Bool)

(assert (=> b!125506 m!111183))

(declare-fun m!111185 () Bool)

(assert (=> b!125506 m!111185))

(declare-fun m!111187 () Bool)

(assert (=> b!125506 m!111187))

(declare-fun m!111189 () Bool)

(assert (=> b!125506 m!111189))

(declare-fun m!111191 () Bool)

(assert (=> b!125506 m!111191))

(declare-fun m!111193 () Bool)

(assert (=> b!125508 m!111193))

(declare-fun m!111195 () Bool)

(assert (=> start!12778 m!111195))

(declare-fun m!111197 () Bool)

(assert (=> start!12778 m!111197))

(check-sat (not b!125507) (not b!125505) (not b!125506) (not start!12778) (not b!125509) tp_is_empty!1201 (not b!125508))
(check-sat)
