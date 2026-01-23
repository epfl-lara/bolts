; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!537776 () Bool)

(assert start!537776)

(declare-fun b!5099210 () Bool)

(declare-fun e!3180207 () Bool)

(declare-datatypes ((C!28308 0))(
  ( (C!28309 (val!23806 Int)) )
))
(declare-datatypes ((List!58861 0))(
  ( (Nil!58737) (Cons!58737 (h!65185 C!28308) (t!371862 List!58861)) )
))
(declare-datatypes ((tuple2!63436 0))(
  ( (tuple2!63437 (_1!35021 List!58861) (_2!35021 List!58861)) )
))
(declare-fun lt!2095768 () tuple2!63436)

(declare-fun isEmpty!31774 (List!58861) Bool)

(assert (=> b!5099210 (= e!3180207 (not (isEmpty!31774 (_1!35021 lt!2095768))))))

(declare-fun res!2170212 () Bool)

(declare-fun e!3180206 () Bool)

(assert (=> start!537776 (=> (not res!2170212) (not e!3180206))))

(declare-datatypes ((Regex!14025 0))(
  ( (ElementMatch!14025 (c!876131 C!28308)) (Concat!22870 (regOne!28562 Regex!14025) (regTwo!28562 Regex!14025)) (EmptyExpr!14025) (Star!14025 (reg!14354 Regex!14025)) (EmptyLang!14025) (Union!14025 (regOne!28563 Regex!14025) (regTwo!28563 Regex!14025)) )
))
(declare-fun r!12920 () Regex!14025)

(declare-fun validRegex!6152 (Regex!14025) Bool)

(assert (=> start!537776 (= res!2170212 (validRegex!6152 r!12920))))

(assert (=> start!537776 e!3180206))

(declare-fun e!3180218 () Bool)

(assert (=> start!537776 e!3180218))

(declare-fun condSetEmpty!29140 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!58862 0))(
  ( (Nil!58738) (Cons!58738 (h!65186 Regex!14025) (t!371863 List!58862)) )
))
(declare-datatypes ((Context!6818 0))(
  ( (Context!6819 (exprs!3909 List!58862)) )
))
(declare-fun z!4303 () (InoxSet Context!6818))

(assert (=> start!537776 (= condSetEmpty!29140 (= z!4303 ((as const (Array Context!6818 Bool)) false)))))

(declare-fun setRes!29140 () Bool)

(assert (=> start!537776 setRes!29140))

(declare-fun e!3180210 () Bool)

(assert (=> start!537776 e!3180210))

(declare-fun b!5099211 () Bool)

(declare-fun tp!1422113 () Bool)

(declare-fun tp!1422112 () Bool)

(assert (=> b!5099211 (= e!3180218 (and tp!1422113 tp!1422112))))

(declare-fun b!5099212 () Bool)

(declare-fun e!3180208 () Bool)

(declare-fun lt!2095762 () tuple2!63436)

(declare-fun matchR!6814 (Regex!14025 List!58861) Bool)

(assert (=> b!5099212 (= e!3180208 (matchR!6814 r!12920 (_1!35021 lt!2095762)))))

(declare-fun b!5099213 () Bool)

(declare-fun e!3180209 () Bool)

(declare-fun e!3180212 () Bool)

(assert (=> b!5099213 (= e!3180209 e!3180212)))

(declare-fun res!2170211 () Bool)

(assert (=> b!5099213 (=> (not res!2170211) (not e!3180212))))

(declare-fun lt!2095756 () List!58861)

(declare-fun input!5654 () List!58861)

(assert (=> b!5099213 (= res!2170211 (= lt!2095756 input!5654))))

(declare-fun lt!2095769 () tuple2!63436)

(declare-fun ++!12874 (List!58861 List!58861) List!58861)

(assert (=> b!5099213 (= lt!2095756 (++!12874 (_1!35021 lt!2095769) (_2!35021 lt!2095769)))))

(declare-fun b!5099214 () Bool)

(declare-fun tp_is_empty!37315 () Bool)

(declare-fun tp!1422114 () Bool)

(assert (=> b!5099214 (= e!3180210 (and tp_is_empty!37315 tp!1422114))))

(declare-fun setIsEmpty!29140 () Bool)

(assert (=> setIsEmpty!29140 setRes!29140))

(declare-fun b!5099215 () Bool)

(declare-fun e!3180213 () Bool)

(assert (=> b!5099215 (= e!3180213 (not (isEmpty!31774 (_1!35021 lt!2095769))))))

(declare-fun b!5099216 () Bool)

(declare-fun tp!1422117 () Bool)

(assert (=> b!5099216 (= e!3180218 tp!1422117)))

(declare-fun b!5099217 () Bool)

(declare-fun e!3180217 () Bool)

(declare-fun e!3180211 () Bool)

(assert (=> b!5099217 (= e!3180217 e!3180211)))

(declare-fun res!2170222 () Bool)

(assert (=> b!5099217 (=> res!2170222 e!3180211)))

(assert (=> b!5099217 (= res!2170222 e!3180213)))

(declare-fun res!2170220 () Bool)

(assert (=> b!5099217 (=> (not res!2170220) (not e!3180213))))

(declare-fun lt!2095759 () Bool)

(assert (=> b!5099217 (= res!2170220 (not lt!2095759))))

(assert (=> b!5099217 (= lt!2095759 (matchR!6814 r!12920 (_1!35021 lt!2095769)))))

(declare-fun b!5099218 () Bool)

(declare-fun res!2170216 () Bool)

(declare-fun e!3180216 () Bool)

(assert (=> b!5099218 (=> res!2170216 e!3180216)))

(declare-fun isPrefix!5430 (List!58861 List!58861) Bool)

(assert (=> b!5099218 (= res!2170216 (not (isPrefix!5430 (_1!35021 lt!2095769) input!5654)))))

(declare-fun b!5099219 () Bool)

(assert (=> b!5099219 (= e!3180211 e!3180216)))

(declare-fun res!2170215 () Bool)

(assert (=> b!5099219 (=> res!2170215 e!3180216)))

(declare-fun lt!2095765 () Int)

(declare-fun lt!2095755 () Int)

(assert (=> b!5099219 (= res!2170215 (or (> lt!2095765 lt!2095755) (<= lt!2095755 lt!2095765)))))

(declare-fun size!39327 (List!58861) Int)

(assert (=> b!5099219 (= lt!2095755 (size!39327 (_1!35021 lt!2095768)))))

(assert (=> b!5099219 (= lt!2095765 (size!39327 (_1!35021 lt!2095769)))))

(declare-fun lt!2095766 () Bool)

(assert (=> b!5099219 (= (matchR!6814 r!12920 (_1!35021 lt!2095768)) lt!2095766)))

(declare-datatypes ((List!58863 0))(
  ( (Nil!58739) (Cons!58739 (h!65187 Context!6818) (t!371864 List!58863)) )
))
(declare-fun lt!2095771 () List!58863)

(declare-datatypes ((Unit!149774 0))(
  ( (Unit!149775) )
))
(declare-fun lt!2095774 () Unit!149774)

(declare-fun theoremZipperRegexEquiv!199 ((InoxSet Context!6818) List!58863 Regex!14025 List!58861) Unit!149774)

(assert (=> b!5099219 (= lt!2095774 (theoremZipperRegexEquiv!199 z!4303 lt!2095771 r!12920 (_1!35021 lt!2095768)))))

(declare-fun matchZipper!701 ((InoxSet Context!6818) List!58861) Bool)

(assert (=> b!5099219 (= lt!2095759 (matchZipper!701 z!4303 (_1!35021 lt!2095769)))))

(declare-fun lt!2095773 () Unit!149774)

(assert (=> b!5099219 (= lt!2095773 (theoremZipperRegexEquiv!199 z!4303 lt!2095771 r!12920 (_1!35021 lt!2095769)))))

(declare-fun b!5099220 () Bool)

(declare-fun e!3180214 () Bool)

(declare-fun lt!2095761 () tuple2!63436)

(assert (=> b!5099220 (= e!3180214 (matchZipper!701 z!4303 (_1!35021 lt!2095761)))))

(declare-fun b!5099221 () Bool)

(declare-fun e!3180219 () Bool)

(assert (=> b!5099221 (= e!3180206 e!3180219)))

(declare-fun res!2170217 () Bool)

(assert (=> b!5099221 (=> (not res!2170217) (not e!3180219))))

(declare-fun unfocusZipper!367 (List!58863) Regex!14025)

(assert (=> b!5099221 (= res!2170217 (= (unfocusZipper!367 lt!2095771) r!12920))))

(declare-fun toList!8159 ((InoxSet Context!6818)) List!58863)

(assert (=> b!5099221 (= lt!2095771 (toList!8159 z!4303))))

(declare-fun b!5099222 () Bool)

(assert (=> b!5099222 (= e!3180216 true)))

(declare-fun lt!2095767 () Bool)

(assert (=> b!5099222 (= lt!2095767 (isPrefix!5430 (_1!35021 lt!2095768) input!5654))))

(declare-fun b!5099223 () Bool)

(assert (=> b!5099223 (= e!3180219 e!3180209)))

(declare-fun res!2170219 () Bool)

(assert (=> b!5099223 (=> (not res!2170219) (not e!3180209))))

(declare-fun lt!2095760 () List!58861)

(assert (=> b!5099223 (= res!2170219 (= lt!2095760 input!5654))))

(assert (=> b!5099223 (= lt!2095760 (++!12874 (_1!35021 lt!2095768) (_2!35021 lt!2095768)))))

(declare-fun findLongestMatch!1855 (Regex!14025 List!58861) tuple2!63436)

(assert (=> b!5099223 (= lt!2095769 (findLongestMatch!1855 r!12920 input!5654))))

(declare-fun findLongestMatchZipper!49 ((InoxSet Context!6818) List!58861) tuple2!63436)

(assert (=> b!5099223 (= lt!2095768 (findLongestMatchZipper!49 z!4303 input!5654))))

(declare-fun b!5099224 () Bool)

(declare-fun tp!1422116 () Bool)

(declare-fun tp!1422115 () Bool)

(assert (=> b!5099224 (= e!3180218 (and tp!1422116 tp!1422115))))

(declare-fun b!5099225 () Bool)

(declare-fun e!3180215 () Bool)

(declare-fun tp!1422118 () Bool)

(assert (=> b!5099225 (= e!3180215 tp!1422118)))

(declare-fun b!5099226 () Bool)

(assert (=> b!5099226 (= e!3180212 (not e!3180217))))

(declare-fun res!2170214 () Bool)

(assert (=> b!5099226 (=> res!2170214 e!3180217)))

(assert (=> b!5099226 (= res!2170214 e!3180207)))

(declare-fun res!2170221 () Bool)

(assert (=> b!5099226 (=> (not res!2170221) (not e!3180207))))

(assert (=> b!5099226 (= res!2170221 (not lt!2095766))))

(assert (=> b!5099226 (= lt!2095766 (matchZipper!701 z!4303 (_1!35021 lt!2095768)))))

(assert (=> b!5099226 e!3180208))

(declare-fun res!2170218 () Bool)

(assert (=> b!5099226 (=> res!2170218 e!3180208)))

(assert (=> b!5099226 (= res!2170218 (isEmpty!31774 (_1!35021 lt!2095762)))))

(declare-fun lt!2095758 () Int)

(declare-fun lt!2095764 () Int)

(declare-fun findLongestMatchInner!2038 (Regex!14025 List!58861 Int List!58861 List!58861 Int) tuple2!63436)

(assert (=> b!5099226 (= lt!2095762 (findLongestMatchInner!2038 r!12920 Nil!58737 lt!2095764 input!5654 input!5654 lt!2095758))))

(declare-fun lt!2095763 () Unit!149774)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2004 (Regex!14025 List!58861) Unit!149774)

(assert (=> b!5099226 (= lt!2095763 (longestMatchIsAcceptedByMatchOrIsEmpty!2004 r!12920 input!5654))))

(assert (=> b!5099226 e!3180214))

(declare-fun res!2170213 () Bool)

(assert (=> b!5099226 (=> res!2170213 e!3180214)))

(assert (=> b!5099226 (= res!2170213 (isEmpty!31774 (_1!35021 lt!2095761)))))

(declare-fun findLongestMatchInnerZipper!99 ((InoxSet Context!6818) List!58861 Int List!58861 List!58861 Int) tuple2!63436)

(assert (=> b!5099226 (= lt!2095761 (findLongestMatchInnerZipper!99 z!4303 Nil!58737 lt!2095764 input!5654 input!5654 lt!2095758))))

(assert (=> b!5099226 (= lt!2095758 (size!39327 input!5654))))

(assert (=> b!5099226 (= lt!2095764 (size!39327 Nil!58737))))

(declare-fun lt!2095757 () Unit!149774)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2005 ((InoxSet Context!6818) List!58861) Unit!149774)

(assert (=> b!5099226 (= lt!2095757 (longestMatchIsAcceptedByMatchOrIsEmpty!2005 z!4303 input!5654))))

(assert (=> b!5099226 (isPrefix!5430 (_1!35021 lt!2095769) lt!2095756)))

(declare-fun lt!2095770 () Unit!149774)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3488 (List!58861 List!58861) Unit!149774)

(assert (=> b!5099226 (= lt!2095770 (lemmaConcatTwoListThenFirstIsPrefix!3488 (_1!35021 lt!2095769) (_2!35021 lt!2095769)))))

(assert (=> b!5099226 (isPrefix!5430 (_1!35021 lt!2095768) lt!2095760)))

(declare-fun lt!2095772 () Unit!149774)

(assert (=> b!5099226 (= lt!2095772 (lemmaConcatTwoListThenFirstIsPrefix!3488 (_1!35021 lt!2095768) (_2!35021 lt!2095768)))))

(declare-fun setElem!29140 () Context!6818)

(declare-fun setNonEmpty!29140 () Bool)

(declare-fun tp!1422119 () Bool)

(declare-fun inv!78237 (Context!6818) Bool)

(assert (=> setNonEmpty!29140 (= setRes!29140 (and tp!1422119 (inv!78237 setElem!29140) e!3180215))))

(declare-fun setRest!29140 () (InoxSet Context!6818))

(assert (=> setNonEmpty!29140 (= z!4303 ((_ map or) (store ((as const (Array Context!6818 Bool)) false) setElem!29140 true) setRest!29140))))

(declare-fun b!5099227 () Bool)

(assert (=> b!5099227 (= e!3180218 tp_is_empty!37315)))

(assert (= (and start!537776 res!2170212) b!5099221))

(assert (= (and b!5099221 res!2170217) b!5099223))

(assert (= (and b!5099223 res!2170219) b!5099213))

(assert (= (and b!5099213 res!2170211) b!5099226))

(assert (= (and b!5099226 (not res!2170213)) b!5099220))

(assert (= (and b!5099226 (not res!2170218)) b!5099212))

(assert (= (and b!5099226 res!2170221) b!5099210))

(assert (= (and b!5099226 (not res!2170214)) b!5099217))

(assert (= (and b!5099217 res!2170220) b!5099215))

(assert (= (and b!5099217 (not res!2170222)) b!5099219))

(assert (= (and b!5099219 (not res!2170215)) b!5099218))

(assert (= (and b!5099218 (not res!2170216)) b!5099222))

(get-info :version)

(assert (= (and start!537776 ((_ is ElementMatch!14025) r!12920)) b!5099227))

(assert (= (and start!537776 ((_ is Concat!22870) r!12920)) b!5099211))

(assert (= (and start!537776 ((_ is Star!14025) r!12920)) b!5099216))

(assert (= (and start!537776 ((_ is Union!14025) r!12920)) b!5099224))

(assert (= (and start!537776 condSetEmpty!29140) setIsEmpty!29140))

(assert (= (and start!537776 (not condSetEmpty!29140)) setNonEmpty!29140))

(assert (= setNonEmpty!29140 b!5099225))

(assert (= (and start!537776 ((_ is Cons!58737) input!5654)) b!5099214))

(declare-fun m!6156562 () Bool)

(assert (=> b!5099212 m!6156562))

(declare-fun m!6156564 () Bool)

(assert (=> b!5099226 m!6156564))

(declare-fun m!6156566 () Bool)

(assert (=> b!5099226 m!6156566))

(declare-fun m!6156568 () Bool)

(assert (=> b!5099226 m!6156568))

(declare-fun m!6156570 () Bool)

(assert (=> b!5099226 m!6156570))

(declare-fun m!6156572 () Bool)

(assert (=> b!5099226 m!6156572))

(declare-fun m!6156574 () Bool)

(assert (=> b!5099226 m!6156574))

(declare-fun m!6156576 () Bool)

(assert (=> b!5099226 m!6156576))

(declare-fun m!6156578 () Bool)

(assert (=> b!5099226 m!6156578))

(declare-fun m!6156580 () Bool)

(assert (=> b!5099226 m!6156580))

(declare-fun m!6156582 () Bool)

(assert (=> b!5099226 m!6156582))

(declare-fun m!6156584 () Bool)

(assert (=> b!5099226 m!6156584))

(declare-fun m!6156586 () Bool)

(assert (=> b!5099226 m!6156586))

(declare-fun m!6156588 () Bool)

(assert (=> b!5099226 m!6156588))

(declare-fun m!6156590 () Bool)

(assert (=> b!5099215 m!6156590))

(declare-fun m!6156592 () Bool)

(assert (=> b!5099223 m!6156592))

(declare-fun m!6156594 () Bool)

(assert (=> b!5099223 m!6156594))

(declare-fun m!6156596 () Bool)

(assert (=> b!5099223 m!6156596))

(declare-fun m!6156598 () Bool)

(assert (=> b!5099220 m!6156598))

(declare-fun m!6156600 () Bool)

(assert (=> b!5099210 m!6156600))

(declare-fun m!6156602 () Bool)

(assert (=> b!5099221 m!6156602))

(declare-fun m!6156604 () Bool)

(assert (=> b!5099221 m!6156604))

(declare-fun m!6156606 () Bool)

(assert (=> b!5099213 m!6156606))

(declare-fun m!6156608 () Bool)

(assert (=> setNonEmpty!29140 m!6156608))

(declare-fun m!6156610 () Bool)

(assert (=> start!537776 m!6156610))

(declare-fun m!6156612 () Bool)

(assert (=> b!5099222 m!6156612))

(declare-fun m!6156614 () Bool)

(assert (=> b!5099219 m!6156614))

(declare-fun m!6156616 () Bool)

(assert (=> b!5099219 m!6156616))

(declare-fun m!6156618 () Bool)

(assert (=> b!5099219 m!6156618))

(declare-fun m!6156620 () Bool)

(assert (=> b!5099219 m!6156620))

(declare-fun m!6156622 () Bool)

(assert (=> b!5099219 m!6156622))

(declare-fun m!6156624 () Bool)

(assert (=> b!5099219 m!6156624))

(declare-fun m!6156626 () Bool)

(assert (=> b!5099217 m!6156626))

(declare-fun m!6156628 () Bool)

(assert (=> b!5099218 m!6156628))

(check-sat (not b!5099213) (not b!5099223) (not b!5099218) (not b!5099214) (not b!5099222) (not start!537776) (not b!5099225) (not b!5099219) (not b!5099211) (not b!5099216) (not setNonEmpty!29140) (not b!5099226) (not b!5099215) (not b!5099220) (not b!5099224) (not b!5099210) tp_is_empty!37315 (not b!5099221) (not b!5099217) (not b!5099212))
(check-sat)
