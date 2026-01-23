; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187730 () Bool)

(assert start!187730)

(declare-fun b!1873151 () Bool)

(declare-fun e!1195019 () Bool)

(declare-fun tp_is_empty!8839 () Bool)

(declare-fun tp!532777 () Bool)

(assert (=> b!1873151 (= e!1195019 (and tp_is_empty!8839 tp!532777))))

(declare-fun b!1873152 () Bool)

(declare-fun e!1195017 () Bool)

(declare-fun tp!532782 () Bool)

(assert (=> b!1873152 (= e!1195017 tp!532782)))

(declare-fun b!1873153 () Bool)

(declare-fun tp!532781 () Bool)

(declare-fun tp!532780 () Bool)

(assert (=> b!1873153 (= e!1195017 (and tp!532781 tp!532780))))

(declare-fun b!1873154 () Bool)

(declare-fun tp!532778 () Bool)

(declare-fun tp!532779 () Bool)

(assert (=> b!1873154 (= e!1195017 (and tp!532778 tp!532779))))

(declare-fun b!1873155 () Bool)

(declare-fun e!1195018 () Bool)

(assert (=> b!1873155 (= e!1195018 (not true))))

(declare-datatypes ((C!10296 0))(
  ( (C!10297 (val!6036 Int)) )
))
(declare-datatypes ((Regex!5073 0))(
  ( (ElementMatch!5073 (c!305351 C!10296)) (Concat!8892 (regOne!10658 Regex!5073) (regTwo!10658 Regex!5073)) (EmptyExpr!5073) (Star!5073 (reg!5402 Regex!5073)) (EmptyLang!5073) (Union!5073 (regOne!10659 Regex!5073) (regTwo!10659 Regex!5073)) )
))
(declare-fun r!13571 () Regex!5073)

(declare-datatypes ((List!20853 0))(
  ( (Nil!20771) (Cons!20771 (h!26172 C!10296) (t!173070 List!20853)) )
))
(declare-fun input!6045 () List!20853)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!20854 0))(
  ( (Nil!20772) (Cons!20772 (h!26173 Regex!5073) (t!173071 List!20854)) )
))
(declare-datatypes ((Context!1926 0))(
  ( (Context!1927 (exprs!1463 List!20854)) )
))
(declare-fun lt!719853 () (InoxSet Context!1926))

(declare-fun matchR!2470 (Regex!5073 List!20853) Bool)

(declare-fun matchZipper!85 ((InoxSet Context!1926) List!20853) Bool)

(assert (=> b!1873155 (= (matchR!2470 r!13571 input!6045) (matchZipper!85 lt!719853 input!6045))))

(declare-datatypes ((Unit!35356 0))(
  ( (Unit!35357) )
))
(declare-fun lt!719852 () Unit!35356)

(declare-datatypes ((List!20855 0))(
  ( (Nil!20773) (Cons!20773 (h!26174 Context!1926) (t!173072 List!20855)) )
))
(declare-fun theoremZipperRegexEquiv!10 ((InoxSet Context!1926) List!20855 Regex!5073 List!20853) Unit!35356)

(declare-fun toList!1006 ((InoxSet Context!1926)) List!20855)

(assert (=> b!1873155 (= lt!719852 (theoremZipperRegexEquiv!10 lt!719853 (toList!1006 lt!719853) r!13571 input!6045))))

(declare-fun focus!245 (Regex!5073) (InoxSet Context!1926))

(assert (=> b!1873155 (= lt!719853 (focus!245 r!13571))))

(declare-fun b!1873156 () Bool)

(assert (=> b!1873156 (= e!1195017 tp_is_empty!8839)))

(declare-fun res!838245 () Bool)

(assert (=> start!187730 (=> (not res!838245) (not e!1195018))))

(declare-fun validRegex!2088 (Regex!5073) Bool)

(assert (=> start!187730 (= res!838245 (validRegex!2088 r!13571))))

(assert (=> start!187730 e!1195018))

(assert (=> start!187730 e!1195017))

(assert (=> start!187730 e!1195019))

(assert (= (and start!187730 res!838245) b!1873155))

(get-info :version)

(assert (= (and start!187730 ((_ is ElementMatch!5073) r!13571)) b!1873156))

(assert (= (and start!187730 ((_ is Concat!8892) r!13571)) b!1873153))

(assert (= (and start!187730 ((_ is Star!5073) r!13571)) b!1873152))

(assert (= (and start!187730 ((_ is Union!5073) r!13571)) b!1873154))

(assert (= (and start!187730 ((_ is Cons!20771) input!6045)) b!1873151))

(declare-fun m!2298805 () Bool)

(assert (=> b!1873155 m!2298805))

(declare-fun m!2298807 () Bool)

(assert (=> b!1873155 m!2298807))

(declare-fun m!2298809 () Bool)

(assert (=> b!1873155 m!2298809))

(declare-fun m!2298811 () Bool)

(assert (=> b!1873155 m!2298811))

(assert (=> b!1873155 m!2298805))

(declare-fun m!2298813 () Bool)

(assert (=> b!1873155 m!2298813))

(declare-fun m!2298815 () Bool)

(assert (=> start!187730 m!2298815))

(check-sat (not b!1873152) tp_is_empty!8839 (not b!1873154) (not b!1873151) (not b!1873153) (not start!187730) (not b!1873155))
(check-sat)
