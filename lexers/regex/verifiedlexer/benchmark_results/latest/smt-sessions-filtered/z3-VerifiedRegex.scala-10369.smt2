; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!537792 () Bool)

(assert start!537792)

(declare-fun b!5099631 () Bool)

(declare-fun e!3180552 () Bool)

(declare-fun tp_is_empty!37331 () Bool)

(declare-fun tp!1422310 () Bool)

(assert (=> b!5099631 (= e!3180552 (and tp_is_empty!37331 tp!1422310))))

(declare-fun b!5099632 () Bool)

(declare-fun e!3180559 () Bool)

(assert (=> b!5099632 (= e!3180559 true)))

(declare-datatypes ((C!28324 0))(
  ( (C!28325 (val!23814 Int)) )
))
(declare-datatypes ((List!58885 0))(
  ( (Nil!58761) (Cons!58761 (h!65209 C!28324) (t!371886 List!58885)) )
))
(declare-datatypes ((tuple2!63452 0))(
  ( (tuple2!63453 (_1!35029 List!58885) (_2!35029 List!58885)) )
))
(declare-fun lt!2096258 () tuple2!63452)

(declare-fun lt!2096269 () tuple2!63452)

(assert (=> b!5099632 (= (_2!35029 lt!2096258) (_2!35029 lt!2096269))))

(declare-datatypes ((Unit!149790 0))(
  ( (Unit!149791) )
))
(declare-fun lt!2096262 () Unit!149790)

(declare-fun input!5654 () List!58885)

(declare-fun lemmaSamePrefixThenSameSuffix!2574 (List!58885 List!58885 List!58885 List!58885 List!58885) Unit!149790)

(assert (=> b!5099632 (= lt!2096262 (lemmaSamePrefixThenSameSuffix!2574 (_1!35029 lt!2096258) (_2!35029 lt!2096258) (_1!35029 lt!2096269) (_2!35029 lt!2096269) input!5654))))

(assert (=> b!5099632 (= (_1!35029 lt!2096258) (_1!35029 lt!2096269))))

(declare-fun lt!2096255 () Unit!149790)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1297 (List!58885 List!58885 List!58885) Unit!149790)

(assert (=> b!5099632 (= lt!2096255 (lemmaIsPrefixSameLengthThenSameList!1297 (_1!35029 lt!2096258) (_1!35029 lt!2096269) input!5654))))

(declare-fun b!5099633 () Bool)

(declare-fun e!3180551 () Bool)

(declare-fun isEmpty!31782 (List!58885) Bool)

(assert (=> b!5099633 (= e!3180551 (not (isEmpty!31782 (_1!35029 lt!2096269))))))

(declare-fun b!5099634 () Bool)

(declare-fun e!3180549 () Bool)

(declare-fun tp!1422308 () Bool)

(declare-fun tp!1422311 () Bool)

(assert (=> b!5099634 (= e!3180549 (and tp!1422308 tp!1422311))))

(declare-fun b!5099635 () Bool)

(declare-fun e!3180561 () Bool)

(declare-fun e!3180554 () Bool)

(assert (=> b!5099635 (= e!3180561 (not e!3180554))))

(declare-fun res!2170497 () Bool)

(assert (=> b!5099635 (=> res!2170497 e!3180554)))

(declare-fun e!3180558 () Bool)

(assert (=> b!5099635 (= res!2170497 e!3180558)))

(declare-fun res!2170496 () Bool)

(assert (=> b!5099635 (=> (not res!2170496) (not e!3180558))))

(declare-fun lt!2096266 () Bool)

(assert (=> b!5099635 (= res!2170496 (not lt!2096266))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14033 0))(
  ( (ElementMatch!14033 (c!876139 C!28324)) (Concat!22878 (regOne!28578 Regex!14033) (regTwo!28578 Regex!14033)) (EmptyExpr!14033) (Star!14033 (reg!14362 Regex!14033)) (EmptyLang!14033) (Union!14033 (regOne!28579 Regex!14033) (regTwo!28579 Regex!14033)) )
))
(declare-datatypes ((List!58886 0))(
  ( (Nil!58762) (Cons!58762 (h!65210 Regex!14033) (t!371887 List!58886)) )
))
(declare-datatypes ((Context!6834 0))(
  ( (Context!6835 (exprs!3917 List!58886)) )
))
(declare-fun z!4303 () (InoxSet Context!6834))

(declare-fun matchZipper!709 ((InoxSet Context!6834) List!58885) Bool)

(assert (=> b!5099635 (= lt!2096266 (matchZipper!709 z!4303 (_1!35029 lt!2096258)))))

(declare-fun e!3180560 () Bool)

(assert (=> b!5099635 e!3180560))

(declare-fun res!2170489 () Bool)

(assert (=> b!5099635 (=> res!2170489 e!3180560)))

(declare-fun lt!2096259 () tuple2!63452)

(assert (=> b!5099635 (= res!2170489 (isEmpty!31782 (_1!35029 lt!2096259)))))

(declare-fun lt!2096267 () Int)

(declare-fun r!12920 () Regex!14033)

(declare-fun lt!2096270 () Int)

(declare-fun findLongestMatchInner!2046 (Regex!14033 List!58885 Int List!58885 List!58885 Int) tuple2!63452)

(assert (=> b!5099635 (= lt!2096259 (findLongestMatchInner!2046 r!12920 Nil!58761 lt!2096270 input!5654 input!5654 lt!2096267))))

(declare-fun lt!2096260 () Unit!149790)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2020 (Regex!14033 List!58885) Unit!149790)

(assert (=> b!5099635 (= lt!2096260 (longestMatchIsAcceptedByMatchOrIsEmpty!2020 r!12920 input!5654))))

(declare-fun e!3180555 () Bool)

(assert (=> b!5099635 e!3180555))

(declare-fun res!2170494 () Bool)

(assert (=> b!5099635 (=> res!2170494 e!3180555)))

(declare-fun lt!2096271 () tuple2!63452)

(assert (=> b!5099635 (= res!2170494 (isEmpty!31782 (_1!35029 lt!2096271)))))

(declare-fun findLongestMatchInnerZipper!107 ((InoxSet Context!6834) List!58885 Int List!58885 List!58885 Int) tuple2!63452)

(assert (=> b!5099635 (= lt!2096271 (findLongestMatchInnerZipper!107 z!4303 Nil!58761 lt!2096270 input!5654 input!5654 lt!2096267))))

(declare-fun size!39335 (List!58885) Int)

(assert (=> b!5099635 (= lt!2096267 (size!39335 input!5654))))

(assert (=> b!5099635 (= lt!2096270 (size!39335 Nil!58761))))

(declare-fun lt!2096261 () Unit!149790)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2021 ((InoxSet Context!6834) List!58885) Unit!149790)

(assert (=> b!5099635 (= lt!2096261 (longestMatchIsAcceptedByMatchOrIsEmpty!2021 z!4303 input!5654))))

(declare-fun lt!2096263 () List!58885)

(declare-fun isPrefix!5438 (List!58885 List!58885) Bool)

(assert (=> b!5099635 (isPrefix!5438 (_1!35029 lt!2096269) lt!2096263)))

(declare-fun lt!2096252 () Unit!149790)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3496 (List!58885 List!58885) Unit!149790)

(assert (=> b!5099635 (= lt!2096252 (lemmaConcatTwoListThenFirstIsPrefix!3496 (_1!35029 lt!2096269) (_2!35029 lt!2096269)))))

(declare-fun lt!2096272 () List!58885)

(assert (=> b!5099635 (isPrefix!5438 (_1!35029 lt!2096258) lt!2096272)))

(declare-fun lt!2096265 () Unit!149790)

(assert (=> b!5099635 (= lt!2096265 (lemmaConcatTwoListThenFirstIsPrefix!3496 (_1!35029 lt!2096258) (_2!35029 lt!2096258)))))

(declare-fun b!5099636 () Bool)

(assert (=> b!5099636 (= e!3180549 tp_is_empty!37331)))

(declare-fun b!5099637 () Bool)

(declare-fun e!3180548 () Bool)

(declare-fun tp!1422309 () Bool)

(assert (=> b!5099637 (= e!3180548 tp!1422309)))

(declare-fun b!5099638 () Bool)

(declare-fun e!3180553 () Bool)

(assert (=> b!5099638 (= e!3180554 e!3180553)))

(declare-fun res!2170490 () Bool)

(assert (=> b!5099638 (=> res!2170490 e!3180553)))

(assert (=> b!5099638 (= res!2170490 e!3180551)))

(declare-fun res!2170493 () Bool)

(assert (=> b!5099638 (=> (not res!2170493) (not e!3180551))))

(declare-fun lt!2096254 () Bool)

(assert (=> b!5099638 (= res!2170493 (not lt!2096254))))

(declare-fun matchR!6822 (Regex!14033 List!58885) Bool)

(assert (=> b!5099638 (= lt!2096254 (matchR!6822 r!12920 (_1!35029 lt!2096269)))))

(declare-fun b!5099639 () Bool)

(declare-fun e!3180556 () Bool)

(declare-fun e!3180550 () Bool)

(assert (=> b!5099639 (= e!3180556 e!3180550)))

(declare-fun res!2170491 () Bool)

(assert (=> b!5099639 (=> (not res!2170491) (not e!3180550))))

(assert (=> b!5099639 (= res!2170491 (= lt!2096272 input!5654))))

(declare-fun ++!12882 (List!58885 List!58885) List!58885)

(assert (=> b!5099639 (= lt!2096272 (++!12882 (_1!35029 lt!2096258) (_2!35029 lt!2096258)))))

(declare-fun findLongestMatch!1863 (Regex!14033 List!58885) tuple2!63452)

(assert (=> b!5099639 (= lt!2096269 (findLongestMatch!1863 r!12920 input!5654))))

(declare-fun findLongestMatchZipper!57 ((InoxSet Context!6834) List!58885) tuple2!63452)

(assert (=> b!5099639 (= lt!2096258 (findLongestMatchZipper!57 z!4303 input!5654))))

(declare-fun b!5099640 () Bool)

(assert (=> b!5099640 (= e!3180553 e!3180559)))

(declare-fun res!2170495 () Bool)

(assert (=> b!5099640 (=> res!2170495 e!3180559)))

(declare-fun lt!2096256 () Int)

(declare-fun lt!2096268 () Int)

(assert (=> b!5099640 (= res!2170495 (or (> lt!2096256 lt!2096268) (> lt!2096268 lt!2096256)))))

(assert (=> b!5099640 (= lt!2096268 (size!39335 (_1!35029 lt!2096258)))))

(assert (=> b!5099640 (= lt!2096256 (size!39335 (_1!35029 lt!2096269)))))

(assert (=> b!5099640 (= (matchR!6822 r!12920 (_1!35029 lt!2096258)) lt!2096266)))

(declare-fun lt!2096264 () Unit!149790)

(declare-datatypes ((List!58887 0))(
  ( (Nil!58763) (Cons!58763 (h!65211 Context!6834) (t!371888 List!58887)) )
))
(declare-fun lt!2096253 () List!58887)

(declare-fun theoremZipperRegexEquiv!207 ((InoxSet Context!6834) List!58887 Regex!14033 List!58885) Unit!149790)

(assert (=> b!5099640 (= lt!2096264 (theoremZipperRegexEquiv!207 z!4303 lt!2096253 r!12920 (_1!35029 lt!2096258)))))

(assert (=> b!5099640 (= lt!2096254 (matchZipper!709 z!4303 (_1!35029 lt!2096269)))))

(declare-fun lt!2096257 () Unit!149790)

(assert (=> b!5099640 (= lt!2096257 (theoremZipperRegexEquiv!207 z!4303 lt!2096253 r!12920 (_1!35029 lt!2096269)))))

(declare-fun b!5099641 () Bool)

(assert (=> b!5099641 (= e!3180550 e!3180561)))

(declare-fun res!2170488 () Bool)

(assert (=> b!5099641 (=> (not res!2170488) (not e!3180561))))

(assert (=> b!5099641 (= res!2170488 (= lt!2096263 input!5654))))

(assert (=> b!5099641 (= lt!2096263 (++!12882 (_1!35029 lt!2096269) (_2!35029 lt!2096269)))))

(declare-fun b!5099642 () Bool)

(declare-fun tp!1422306 () Bool)

(declare-fun tp!1422305 () Bool)

(assert (=> b!5099642 (= e!3180549 (and tp!1422306 tp!1422305))))

(declare-fun b!5099643 () Bool)

(assert (=> b!5099643 (= e!3180558 (not (isEmpty!31782 (_1!35029 lt!2096258))))))

(declare-fun b!5099644 () Bool)

(declare-fun tp!1422304 () Bool)

(assert (=> b!5099644 (= e!3180549 tp!1422304)))

(declare-fun b!5099645 () Bool)

(declare-fun e!3180557 () Bool)

(assert (=> b!5099645 (= e!3180557 e!3180556)))

(declare-fun res!2170492 () Bool)

(assert (=> b!5099645 (=> (not res!2170492) (not e!3180556))))

(declare-fun unfocusZipper!375 (List!58887) Regex!14033)

(assert (=> b!5099645 (= res!2170492 (= (unfocusZipper!375 lt!2096253) r!12920))))

(declare-fun toList!8167 ((InoxSet Context!6834)) List!58887)

(assert (=> b!5099645 (= lt!2096253 (toList!8167 z!4303))))

(declare-fun res!2170498 () Bool)

(assert (=> start!537792 (=> (not res!2170498) (not e!3180557))))

(declare-fun validRegex!6160 (Regex!14033) Bool)

(assert (=> start!537792 (= res!2170498 (validRegex!6160 r!12920))))

(assert (=> start!537792 e!3180557))

(assert (=> start!537792 e!3180549))

(declare-fun condSetEmpty!29164 () Bool)

(assert (=> start!537792 (= condSetEmpty!29164 (= z!4303 ((as const (Array Context!6834 Bool)) false)))))

(declare-fun setRes!29164 () Bool)

(assert (=> start!537792 setRes!29164))

(assert (=> start!537792 e!3180552))

(declare-fun setIsEmpty!29164 () Bool)

(assert (=> setIsEmpty!29164 setRes!29164))

(declare-fun b!5099646 () Bool)

(assert (=> b!5099646 (= e!3180555 (matchZipper!709 z!4303 (_1!35029 lt!2096271)))))

(declare-fun setNonEmpty!29164 () Bool)

(declare-fun tp!1422307 () Bool)

(declare-fun setElem!29164 () Context!6834)

(declare-fun inv!78257 (Context!6834) Bool)

(assert (=> setNonEmpty!29164 (= setRes!29164 (and tp!1422307 (inv!78257 setElem!29164) e!3180548))))

(declare-fun setRest!29164 () (InoxSet Context!6834))

(assert (=> setNonEmpty!29164 (= z!4303 ((_ map or) (store ((as const (Array Context!6834 Bool)) false) setElem!29164 true) setRest!29164))))

(declare-fun b!5099647 () Bool)

(assert (=> b!5099647 (= e!3180560 (matchR!6822 r!12920 (_1!35029 lt!2096259)))))

(assert (= (and start!537792 res!2170498) b!5099645))

(assert (= (and b!5099645 res!2170492) b!5099639))

(assert (= (and b!5099639 res!2170491) b!5099641))

(assert (= (and b!5099641 res!2170488) b!5099635))

(assert (= (and b!5099635 (not res!2170494)) b!5099646))

(assert (= (and b!5099635 (not res!2170489)) b!5099647))

(assert (= (and b!5099635 res!2170496) b!5099643))

(assert (= (and b!5099635 (not res!2170497)) b!5099638))

(assert (= (and b!5099638 res!2170493) b!5099633))

(assert (= (and b!5099638 (not res!2170490)) b!5099640))

(assert (= (and b!5099640 (not res!2170495)) b!5099632))

(get-info :version)

(assert (= (and start!537792 ((_ is ElementMatch!14033) r!12920)) b!5099636))

(assert (= (and start!537792 ((_ is Concat!22878) r!12920)) b!5099634))

(assert (= (and start!537792 ((_ is Star!14033) r!12920)) b!5099644))

(assert (= (and start!537792 ((_ is Union!14033) r!12920)) b!5099642))

(assert (= (and start!537792 condSetEmpty!29164) setIsEmpty!29164))

(assert (= (and start!537792 (not condSetEmpty!29164)) setNonEmpty!29164))

(assert (= setNonEmpty!29164 b!5099637))

(assert (= (and start!537792 ((_ is Cons!58761) input!5654)) b!5099631))

(declare-fun m!6157106 () Bool)

(assert (=> b!5099633 m!6157106))

(declare-fun m!6157108 () Bool)

(assert (=> start!537792 m!6157108))

(declare-fun m!6157110 () Bool)

(assert (=> b!5099646 m!6157110))

(declare-fun m!6157112 () Bool)

(assert (=> b!5099640 m!6157112))

(declare-fun m!6157114 () Bool)

(assert (=> b!5099640 m!6157114))

(declare-fun m!6157116 () Bool)

(assert (=> b!5099640 m!6157116))

(declare-fun m!6157118 () Bool)

(assert (=> b!5099640 m!6157118))

(declare-fun m!6157120 () Bool)

(assert (=> b!5099640 m!6157120))

(declare-fun m!6157122 () Bool)

(assert (=> b!5099640 m!6157122))

(declare-fun m!6157124 () Bool)

(assert (=> b!5099641 m!6157124))

(declare-fun m!6157126 () Bool)

(assert (=> b!5099635 m!6157126))

(declare-fun m!6157128 () Bool)

(assert (=> b!5099635 m!6157128))

(declare-fun m!6157130 () Bool)

(assert (=> b!5099635 m!6157130))

(declare-fun m!6157132 () Bool)

(assert (=> b!5099635 m!6157132))

(declare-fun m!6157134 () Bool)

(assert (=> b!5099635 m!6157134))

(declare-fun m!6157136 () Bool)

(assert (=> b!5099635 m!6157136))

(declare-fun m!6157138 () Bool)

(assert (=> b!5099635 m!6157138))

(declare-fun m!6157140 () Bool)

(assert (=> b!5099635 m!6157140))

(declare-fun m!6157142 () Bool)

(assert (=> b!5099635 m!6157142))

(declare-fun m!6157144 () Bool)

(assert (=> b!5099635 m!6157144))

(declare-fun m!6157146 () Bool)

(assert (=> b!5099635 m!6157146))

(declare-fun m!6157148 () Bool)

(assert (=> b!5099635 m!6157148))

(declare-fun m!6157150 () Bool)

(assert (=> b!5099635 m!6157150))

(declare-fun m!6157152 () Bool)

(assert (=> b!5099632 m!6157152))

(declare-fun m!6157154 () Bool)

(assert (=> b!5099632 m!6157154))

(declare-fun m!6157156 () Bool)

(assert (=> b!5099639 m!6157156))

(declare-fun m!6157158 () Bool)

(assert (=> b!5099639 m!6157158))

(declare-fun m!6157160 () Bool)

(assert (=> b!5099639 m!6157160))

(declare-fun m!6157162 () Bool)

(assert (=> b!5099643 m!6157162))

(declare-fun m!6157164 () Bool)

(assert (=> b!5099645 m!6157164))

(declare-fun m!6157166 () Bool)

(assert (=> b!5099645 m!6157166))

(declare-fun m!6157168 () Bool)

(assert (=> setNonEmpty!29164 m!6157168))

(declare-fun m!6157170 () Bool)

(assert (=> b!5099638 m!6157170))

(declare-fun m!6157172 () Bool)

(assert (=> b!5099647 m!6157172))

(check-sat (not b!5099641) (not b!5099646) (not start!537792) (not b!5099638) tp_is_empty!37331 (not b!5099637) (not b!5099634) (not b!5099642) (not b!5099632) (not b!5099635) (not b!5099631) (not b!5099645) (not b!5099647) (not b!5099639) (not b!5099640) (not b!5099643) (not b!5099633) (not setNonEmpty!29164) (not b!5099644))
(check-sat)
