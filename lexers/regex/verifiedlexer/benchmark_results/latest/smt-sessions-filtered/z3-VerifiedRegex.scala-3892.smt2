; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!214146 () Bool)

(assert start!214146)

(declare-fun res!947235 () Bool)

(declare-fun e!1407867 () Bool)

(assert (=> start!214146 (=> (not res!947235) (not e!1407867))))

(declare-fun from!1082 () Int)

(assert (=> start!214146 (= res!947235 (>= from!1082 0))))

(assert (=> start!214146 e!1407867))

(assert (=> start!214146 true))

(declare-datatypes ((C!12648 0))(
  ( (C!12649 (val!7310 Int)) )
))
(declare-datatypes ((List!25800 0))(
  ( (Nil!25716) (Cons!25716 (h!31117 C!12648) (t!198434 List!25800)) )
))
(declare-datatypes ((IArray!16779 0))(
  ( (IArray!16780 (innerList!8447 List!25800)) )
))
(declare-datatypes ((Conc!8387 0))(
  ( (Node!8387 (left!19755 Conc!8387) (right!20085 Conc!8387) (csize!17004 Int) (cheight!8598 Int)) (Leaf!12280 (xs!11329 IArray!16779) (csize!17005 Int)) (Empty!8387) )
))
(declare-datatypes ((BalanceConc!16536 0))(
  ( (BalanceConc!16537 (c!351638 Conc!8387)) )
))
(declare-fun totalInput!891 () BalanceConc!16536)

(declare-fun e!1407869 () Bool)

(declare-fun inv!34628 (BalanceConc!16536) Bool)

(assert (=> start!214146 (and (inv!34628 totalInput!891) e!1407869)))

(declare-fun condSetEmpty!19102 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6251 0))(
  ( (ElementMatch!6251 (c!351639 C!12648)) (Concat!10553 (regOne!13014 Regex!6251) (regTwo!13014 Regex!6251)) (EmptyExpr!6251) (Star!6251 (reg!6580 Regex!6251)) (EmptyLang!6251) (Union!6251 (regOne!13015 Regex!6251) (regTwo!13015 Regex!6251)) )
))
(declare-datatypes ((List!25801 0))(
  ( (Nil!25717) (Cons!25717 (h!31118 Regex!6251) (t!198435 List!25801)) )
))
(declare-datatypes ((Context!3642 0))(
  ( (Context!3643 (exprs!2321 List!25801)) )
))
(declare-fun z!3888 () (InoxSet Context!3642))

(assert (=> start!214146 (= condSetEmpty!19102 (= z!3888 ((as const (Array Context!3642 Bool)) false)))))

(declare-fun setRes!19102 () Bool)

(assert (=> start!214146 setRes!19102))

(declare-fun b!2203577 () Bool)

(declare-fun e!1407864 () Bool)

(assert (=> b!2203577 (= e!1407867 e!1407864)))

(declare-fun res!947236 () Bool)

(assert (=> b!2203577 (=> (not res!947236) (not e!1407864))))

(declare-fun knownSize!10 () Int)

(declare-fun lt!823893 () Int)

(assert (=> b!2203577 (= res!947236 (and (<= from!1082 lt!823893) (>= knownSize!10 0) (<= knownSize!10 (- lt!823893 from!1082))))))

(declare-fun size!20042 (BalanceConc!16536) Int)

(assert (=> b!2203577 (= lt!823893 (size!20042 totalInput!891))))

(declare-fun b!2203578 () Bool)

(declare-fun e!1407870 () Bool)

(declare-fun lt!823890 () List!25800)

(declare-fun isEmpty!14693 (List!25800) Bool)

(assert (=> b!2203578 (= e!1407870 (not (isEmpty!14693 lt!823890)))))

(declare-fun b!2203579 () Bool)

(declare-fun e!1407868 () Bool)

(declare-fun lastNullablePos!161 () Int)

(assert (=> b!2203579 (= e!1407868 (= lastNullablePos!161 (- from!1082 1)))))

(declare-fun b!2203580 () Bool)

(declare-fun tp!685488 () Bool)

(declare-fun inv!34629 (Conc!8387) Bool)

(assert (=> b!2203580 (= e!1407869 (and (inv!34629 (c!351638 totalInput!891)) tp!685488))))

(declare-fun b!2203581 () Bool)

(declare-fun e!1407866 () Bool)

(declare-fun e!1407871 () Bool)

(assert (=> b!2203581 (= e!1407866 e!1407871)))

(declare-fun res!947233 () Bool)

(assert (=> b!2203581 (=> (not res!947233) (not e!1407871))))

(declare-fun e!1407872 () Bool)

(assert (=> b!2203581 (= res!947233 e!1407872)))

(declare-fun res!947234 () Bool)

(assert (=> b!2203581 (=> res!947234 e!1407872)))

(declare-fun lt!823894 () Bool)

(assert (=> b!2203581 (= res!947234 lt!823894)))

(assert (=> b!2203581 (= lt!823894 (= from!1082 lt!823893))))

(declare-fun b!2203582 () Bool)

(declare-fun e!1407873 () Bool)

(declare-fun tp!685487 () Bool)

(assert (=> b!2203582 (= e!1407873 tp!685487)))

(declare-fun b!2203583 () Bool)

(assert (=> b!2203583 (= e!1407864 e!1407866)))

(declare-fun res!947232 () Bool)

(assert (=> b!2203583 (=> (not res!947232) (not e!1407866))))

(declare-fun lt!823895 () List!25800)

(declare-fun matchZipper!337 ((InoxSet Context!3642) List!25800) Bool)

(assert (=> b!2203583 (= res!947232 (matchZipper!337 z!3888 lt!823895))))

(declare-fun take!429 (List!25800 Int) List!25800)

(assert (=> b!2203583 (= lt!823895 (take!429 lt!823890 knownSize!10))))

(declare-fun drop!1439 (List!25800 Int) List!25800)

(declare-fun list!9925 (BalanceConc!16536) List!25800)

(assert (=> b!2203583 (= lt!823890 (drop!1439 (list!9925 totalInput!891) from!1082))))

(declare-fun b!2203584 () Bool)

(declare-datatypes ((Unit!38789 0))(
  ( (Unit!38790) )
))
(declare-fun e!1407865 () Unit!38789)

(declare-fun Unit!38791 () Unit!38789)

(assert (=> b!2203584 (= e!1407865 Unit!38791)))

(declare-fun b!2203585 () Bool)

(declare-fun res!947227 () Bool)

(assert (=> b!2203585 (=> (not res!947227) (not e!1407866))))

(declare-fun isEmpty!14694 (BalanceConc!16536) Bool)

(assert (=> b!2203585 (= res!947227 (not (isEmpty!14694 totalInput!891)))))

(declare-fun setIsEmpty!19102 () Bool)

(assert (=> setIsEmpty!19102 setRes!19102))

(declare-fun b!2203586 () Bool)

(declare-fun res!947237 () Bool)

(assert (=> b!2203586 (=> (not res!947237) (not e!1407866))))

(assert (=> b!2203586 (= res!947237 (and (not (= knownSize!10 0)) (> knownSize!10 0)))))

(declare-fun b!2203587 () Bool)

(declare-fun res!947231 () Bool)

(assert (=> b!2203587 (=> (not res!947231) (not e!1407866))))

(assert (=> b!2203587 (= res!947231 e!1407868)))

(declare-fun res!947229 () Bool)

(assert (=> b!2203587 (=> res!947229 e!1407868)))

(declare-fun nullableZipper!531 ((InoxSet Context!3642)) Bool)

(assert (=> b!2203587 (= res!947229 (not (nullableZipper!531 z!3888)))))

(declare-fun b!2203588 () Bool)

(declare-fun res!947230 () Bool)

(assert (=> b!2203588 (=> (not res!947230) (not e!1407866))))

(assert (=> b!2203588 (= res!947230 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun b!2203589 () Bool)

(assert (=> b!2203589 (= e!1407871 e!1407870)))

(declare-fun res!947228 () Bool)

(assert (=> b!2203589 (=> (not res!947228) (not e!1407870))))

(declare-fun lt!823896 () Bool)

(assert (=> b!2203589 (= res!947228 (and (not lt!823896) lt!823894))))

(declare-fun lt!823891 () Unit!38789)

(assert (=> b!2203589 (= lt!823891 e!1407865)))

(declare-fun c!351637 () Bool)

(assert (=> b!2203589 (= c!351637 lt!823896)))

(declare-fun lostCauseZipper!351 ((InoxSet Context!3642)) Bool)

(assert (=> b!2203589 (= lt!823896 (lostCauseZipper!351 z!3888))))

(declare-fun b!2203590 () Bool)

(assert (=> b!2203590 (= e!1407872 (lostCauseZipper!351 z!3888))))

(declare-fun tp!685486 () Bool)

(declare-fun setNonEmpty!19102 () Bool)

(declare-fun setElem!19102 () Context!3642)

(declare-fun inv!34630 (Context!3642) Bool)

(assert (=> setNonEmpty!19102 (= setRes!19102 (and tp!685486 (inv!34630 setElem!19102) e!1407873))))

(declare-fun setRest!19102 () (InoxSet Context!3642))

(assert (=> setNonEmpty!19102 (= z!3888 ((_ map or) (store ((as const (Array Context!3642 Bool)) false) setElem!19102 true) setRest!19102))))

(declare-fun b!2203591 () Bool)

(declare-fun Unit!38792 () Unit!38789)

(assert (=> b!2203591 (= e!1407865 Unit!38792)))

(declare-fun lt!823892 () Unit!38789)

(declare-fun lemmaLostCauseCannotMatch!31 ((InoxSet Context!3642) List!25800) Unit!38789)

(assert (=> b!2203591 (= lt!823892 (lemmaLostCauseCannotMatch!31 z!3888 lt!823895))))

(assert (=> b!2203591 false))

(assert (= (and start!214146 res!947235) b!2203577))

(assert (= (and b!2203577 res!947236) b!2203583))

(assert (= (and b!2203583 res!947232) b!2203588))

(assert (= (and b!2203588 res!947230) b!2203587))

(assert (= (and b!2203587 (not res!947229)) b!2203579))

(assert (= (and b!2203587 res!947231) b!2203585))

(assert (= (and b!2203585 res!947227) b!2203586))

(assert (= (and b!2203586 res!947237) b!2203581))

(assert (= (and b!2203581 (not res!947234)) b!2203590))

(assert (= (and b!2203581 res!947233) b!2203589))

(assert (= (and b!2203589 c!351637) b!2203591))

(assert (= (and b!2203589 (not c!351637)) b!2203584))

(assert (= (and b!2203589 res!947228) b!2203578))

(assert (= start!214146 b!2203580))

(assert (= (and start!214146 condSetEmpty!19102) setIsEmpty!19102))

(assert (= (and start!214146 (not condSetEmpty!19102)) setNonEmpty!19102))

(assert (= setNonEmpty!19102 b!2203582))

(declare-fun m!2645501 () Bool)

(assert (=> start!214146 m!2645501))

(declare-fun m!2645503 () Bool)

(assert (=> b!2203591 m!2645503))

(declare-fun m!2645505 () Bool)

(assert (=> setNonEmpty!19102 m!2645505))

(declare-fun m!2645507 () Bool)

(assert (=> b!2203589 m!2645507))

(declare-fun m!2645509 () Bool)

(assert (=> b!2203583 m!2645509))

(declare-fun m!2645511 () Bool)

(assert (=> b!2203583 m!2645511))

(declare-fun m!2645513 () Bool)

(assert (=> b!2203583 m!2645513))

(assert (=> b!2203583 m!2645513))

(declare-fun m!2645515 () Bool)

(assert (=> b!2203583 m!2645515))

(declare-fun m!2645517 () Bool)

(assert (=> b!2203585 m!2645517))

(declare-fun m!2645519 () Bool)

(assert (=> b!2203587 m!2645519))

(declare-fun m!2645521 () Bool)

(assert (=> b!2203578 m!2645521))

(declare-fun m!2645523 () Bool)

(assert (=> b!2203577 m!2645523))

(assert (=> b!2203590 m!2645507))

(declare-fun m!2645525 () Bool)

(assert (=> b!2203580 m!2645525))

(check-sat (not b!2203577) (not b!2203590) (not b!2203580) (not b!2203589) (not b!2203583) (not b!2203585) (not b!2203591) (not setNonEmpty!19102) (not b!2203578) (not b!2203582) (not start!214146) (not b!2203587))
(check-sat)
