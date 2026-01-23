; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!210610 () Bool)

(assert start!210610)

(declare-fun b!2171188 () Bool)

(declare-fun e!1388467 () Bool)

(declare-fun e!1388466 () Bool)

(assert (=> b!2171188 (= e!1388467 e!1388466)))

(declare-fun res!934333 () Bool)

(assert (=> b!2171188 (=> (not res!934333) (not e!1388466))))

(declare-datatypes ((C!12168 0))(
  ( (C!12169 (val!7070 Int)) )
))
(declare-datatypes ((List!25246 0))(
  ( (Nil!25162) (Cons!25162 (h!30563 C!12168) (t!197814 List!25246)) )
))
(declare-fun lt!808616 () List!25246)

(declare-fun lt!808619 () List!25246)

(assert (=> b!2171188 (= res!934333 (= lt!808616 lt!808619))))

(declare-datatypes ((tuple2!24918 0))(
  ( (tuple2!24919 (_1!14829 List!25246) (_2!14829 List!25246)) )
))
(declare-fun lt!808618 () tuple2!24918)

(declare-fun ++!6370 (List!25246 List!25246) List!25246)

(assert (=> b!2171188 (= lt!808616 (++!6370 (_1!14829 lt!808618) (_2!14829 lt!808618)))))

(declare-fun b!2171189 () Bool)

(declare-fun e!1388471 () Int)

(declare-fun lt!808624 () Int)

(assert (=> b!2171189 (= e!1388471 (- lt!808624 1))))

(declare-fun b!2171190 () Bool)

(assert (=> b!2171190 (= e!1388471 (- 1))))

(declare-fun b!2171191 () Bool)

(declare-fun e!1388470 () Bool)

(declare-datatypes ((IArray!16299 0))(
  ( (IArray!16300 (innerList!8207 List!25246)) )
))
(declare-datatypes ((Conc!8147 0))(
  ( (Node!8147 (left!19335 Conc!8147) (right!19665 Conc!8147) (csize!16524 Int) (cheight!8358 Int)) (Leaf!11920 (xs!11089 IArray!16299) (csize!16525 Int)) (Empty!8147) )
))
(declare-datatypes ((BalanceConc!16056 0))(
  ( (BalanceConc!16057 (c!344106 Conc!8147)) )
))
(declare-fun input!5540 () BalanceConc!16056)

(declare-fun tp!677786 () Bool)

(declare-fun inv!33390 (Conc!8147) Bool)

(assert (=> b!2171191 (= e!1388470 (and (inv!33390 (c!344106 input!5540)) tp!677786))))

(declare-fun b!2171192 () Bool)

(declare-fun res!934331 () Bool)

(declare-fun e!1388468 () Bool)

(assert (=> b!2171192 (=> (not res!934331) (not e!1388468))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6011 0))(
  ( (ElementMatch!6011 (c!344107 C!12168)) (Concat!10313 (regOne!12534 Regex!6011) (regTwo!12534 Regex!6011)) (EmptyExpr!6011) (Star!6011 (reg!6340 Regex!6011)) (EmptyLang!6011) (Union!6011 (regOne!12535 Regex!6011) (regTwo!12535 Regex!6011)) )
))
(declare-datatypes ((List!25247 0))(
  ( (Nil!25163) (Cons!25163 (h!30564 Regex!6011) (t!197815 List!25247)) )
))
(declare-datatypes ((Context!3162 0))(
  ( (Context!3163 (exprs!2081 List!25247)) )
))
(declare-fun z!4055 () (InoxSet Context!3162))

(declare-fun r!12534 () Regex!6011)

(declare-datatypes ((List!25248 0))(
  ( (Nil!25164) (Cons!25164 (h!30565 Context!3162) (t!197816 List!25248)) )
))
(declare-fun unfocusZipper!118 (List!25248) Regex!6011)

(declare-fun toList!1194 ((InoxSet Context!3162)) List!25248)

(assert (=> b!2171192 (= res!934331 (= (unfocusZipper!118 (toList!1194 z!4055)) r!12534))))

(declare-fun b!2171193 () Bool)

(declare-fun e!1388469 () Bool)

(declare-fun tp!677788 () Bool)

(declare-fun tp!677780 () Bool)

(assert (=> b!2171193 (= e!1388469 (and tp!677788 tp!677780))))

(declare-fun b!2171194 () Bool)

(declare-fun e!1388465 () Bool)

(assert (=> b!2171194 (= e!1388468 e!1388465)))

(declare-fun res!934329 () Bool)

(assert (=> b!2171194 (=> (not res!934329) (not e!1388465))))

(declare-fun lt!808622 () List!25246)

(declare-fun isSuffix!678 (List!25246 List!25246) Bool)

(assert (=> b!2171194 (= res!934329 (isSuffix!678 lt!808619 lt!808622))))

(declare-fun totalInput!977 () BalanceConc!16056)

(declare-fun list!9648 (BalanceConc!16056) List!25246)

(assert (=> b!2171194 (= lt!808622 (list!9648 totalInput!977))))

(assert (=> b!2171194 (= lt!808619 (list!9648 input!5540))))

(declare-fun b!2171196 () Bool)

(declare-fun e!1388472 () Bool)

(declare-fun tp!677781 () Bool)

(assert (=> b!2171196 (= e!1388472 (and (inv!33390 (c!344106 totalInput!977)) tp!677781))))

(declare-fun b!2171197 () Bool)

(declare-fun tp!677782 () Bool)

(declare-fun tp!677784 () Bool)

(assert (=> b!2171197 (= e!1388469 (and tp!677782 tp!677784))))

(declare-fun setIsEmpty!18190 () Bool)

(declare-fun setRes!18190 () Bool)

(assert (=> setIsEmpty!18190 setRes!18190))

(declare-fun b!2171198 () Bool)

(assert (=> b!2171198 (= e!1388465 e!1388467)))

(declare-fun res!934330 () Bool)

(assert (=> b!2171198 (=> (not res!934330) (not e!1388467))))

(declare-fun lt!808614 () List!25246)

(assert (=> b!2171198 (= res!934330 (= lt!808614 lt!808619))))

(declare-fun lt!808625 () List!25246)

(declare-fun lt!808617 () List!25246)

(assert (=> b!2171198 (= lt!808614 (++!6370 lt!808625 lt!808617))))

(declare-datatypes ((tuple2!24920 0))(
  ( (tuple2!24921 (_1!14830 BalanceConc!16056) (_2!14830 BalanceConc!16056)) )
))
(declare-fun lt!808620 () tuple2!24920)

(assert (=> b!2171198 (= lt!808617 (list!9648 (_2!14830 lt!808620)))))

(assert (=> b!2171198 (= lt!808625 (list!9648 (_1!14830 lt!808620)))))

(declare-fun findLongestMatch!565 (Regex!6011 List!25246) tuple2!24918)

(assert (=> b!2171198 (= lt!808618 (findLongestMatch!565 r!12534 lt!808619))))

(declare-fun lt!808621 () Int)

(declare-fun size!19661 (BalanceConc!16056) Int)

(assert (=> b!2171198 (= lt!808624 (- lt!808621 (size!19661 input!5540)))))

(assert (=> b!2171198 (= lt!808621 (size!19661 totalInput!977))))

(declare-fun findLongestMatchZipperSequenceV3!60 ((InoxSet Context!3162) BalanceConc!16056 BalanceConc!16056) tuple2!24920)

(assert (=> b!2171198 (= lt!808620 (findLongestMatchZipperSequenceV3!60 z!4055 input!5540 totalInput!977))))

(declare-fun b!2171195 () Bool)

(declare-fun tp_is_empty!9629 () Bool)

(assert (=> b!2171195 (= e!1388469 tp_is_empty!9629)))

(declare-fun res!934332 () Bool)

(assert (=> start!210610 (=> (not res!934332) (not e!1388468))))

(declare-fun validRegex!2287 (Regex!6011) Bool)

(assert (=> start!210610 (= res!934332 (validRegex!2287 r!12534))))

(assert (=> start!210610 e!1388468))

(assert (=> start!210610 e!1388469))

(declare-fun condSetEmpty!18190 () Bool)

(assert (=> start!210610 (= condSetEmpty!18190 (= z!4055 ((as const (Array Context!3162 Bool)) false)))))

(assert (=> start!210610 setRes!18190))

(declare-fun inv!33391 (BalanceConc!16056) Bool)

(assert (=> start!210610 (and (inv!33391 totalInput!977) e!1388472)))

(assert (=> start!210610 (and (inv!33391 input!5540) e!1388470)))

(declare-fun setElem!18190 () Context!3162)

(declare-fun setNonEmpty!18190 () Bool)

(declare-fun tp!677783 () Bool)

(declare-fun e!1388473 () Bool)

(declare-fun inv!33392 (Context!3162) Bool)

(assert (=> setNonEmpty!18190 (= setRes!18190 (and tp!677783 (inv!33392 setElem!18190) e!1388473))))

(declare-fun setRest!18190 () (InoxSet Context!3162))

(assert (=> setNonEmpty!18190 (= z!4055 ((_ map or) (store ((as const (Array Context!3162 Bool)) false) setElem!18190 true) setRest!18190))))

(declare-fun b!2171199 () Bool)

(declare-fun lt!808615 () Int)

(assert (=> b!2171199 (= e!1388466 (not (or (< lt!808624 0) (> lt!808624 lt!808621) (and (>= lt!808615 (- 1)) (< lt!808615 lt!808624)))))))

(assert (=> b!2171199 (= lt!808615 e!1388471)))

(declare-fun c!344105 () Bool)

(declare-fun nullableZipper!291 ((InoxSet Context!3162)) Bool)

(assert (=> b!2171199 (= c!344105 (nullableZipper!291 z!4055))))

(declare-fun isPrefix!2127 (List!25246 List!25246) Bool)

(declare-fun take!219 (List!25246 Int) List!25246)

(assert (=> b!2171199 (isPrefix!2127 (take!219 lt!808622 lt!808624) lt!808622)))

(declare-datatypes ((Unit!38229 0))(
  ( (Unit!38230) )
))
(declare-fun lt!808623 () Unit!38229)

(declare-fun lemmaTakeIsPrefix!42 (List!25246 Int) Unit!38229)

(assert (=> b!2171199 (= lt!808623 (lemmaTakeIsPrefix!42 lt!808622 lt!808624))))

(assert (=> b!2171199 (isPrefix!2127 (_1!14829 lt!808618) lt!808616)))

(declare-fun lt!808626 () Unit!38229)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1410 (List!25246 List!25246) Unit!38229)

(assert (=> b!2171199 (= lt!808626 (lemmaConcatTwoListThenFirstIsPrefix!1410 (_1!14829 lt!808618) (_2!14829 lt!808618)))))

(assert (=> b!2171199 (isPrefix!2127 lt!808625 lt!808614)))

(declare-fun lt!808613 () Unit!38229)

(assert (=> b!2171199 (= lt!808613 (lemmaConcatTwoListThenFirstIsPrefix!1410 lt!808625 lt!808617))))

(declare-fun b!2171200 () Bool)

(declare-fun tp!677787 () Bool)

(assert (=> b!2171200 (= e!1388473 tp!677787)))

(declare-fun b!2171201 () Bool)

(declare-fun tp!677785 () Bool)

(assert (=> b!2171201 (= e!1388469 tp!677785)))

(assert (= (and start!210610 res!934332) b!2171192))

(assert (= (and b!2171192 res!934331) b!2171194))

(assert (= (and b!2171194 res!934329) b!2171198))

(assert (= (and b!2171198 res!934330) b!2171188))

(assert (= (and b!2171188 res!934333) b!2171199))

(assert (= (and b!2171199 c!344105) b!2171189))

(assert (= (and b!2171199 (not c!344105)) b!2171190))

(get-info :version)

(assert (= (and start!210610 ((_ is ElementMatch!6011) r!12534)) b!2171195))

(assert (= (and start!210610 ((_ is Concat!10313) r!12534)) b!2171197))

(assert (= (and start!210610 ((_ is Star!6011) r!12534)) b!2171201))

(assert (= (and start!210610 ((_ is Union!6011) r!12534)) b!2171193))

(assert (= (and start!210610 condSetEmpty!18190) setIsEmpty!18190))

(assert (= (and start!210610 (not condSetEmpty!18190)) setNonEmpty!18190))

(assert (= setNonEmpty!18190 b!2171200))

(assert (= start!210610 b!2171196))

(assert (= start!210610 b!2171191))

(declare-fun m!2612249 () Bool)

(assert (=> b!2171194 m!2612249))

(declare-fun m!2612251 () Bool)

(assert (=> b!2171194 m!2612251))

(declare-fun m!2612253 () Bool)

(assert (=> b!2171194 m!2612253))

(declare-fun m!2612255 () Bool)

(assert (=> setNonEmpty!18190 m!2612255))

(declare-fun m!2612257 () Bool)

(assert (=> b!2171196 m!2612257))

(declare-fun m!2612259 () Bool)

(assert (=> b!2171188 m!2612259))

(declare-fun m!2612261 () Bool)

(assert (=> b!2171192 m!2612261))

(assert (=> b!2171192 m!2612261))

(declare-fun m!2612263 () Bool)

(assert (=> b!2171192 m!2612263))

(declare-fun m!2612265 () Bool)

(assert (=> start!210610 m!2612265))

(declare-fun m!2612267 () Bool)

(assert (=> start!210610 m!2612267))

(declare-fun m!2612269 () Bool)

(assert (=> start!210610 m!2612269))

(declare-fun m!2612271 () Bool)

(assert (=> b!2171199 m!2612271))

(declare-fun m!2612273 () Bool)

(assert (=> b!2171199 m!2612273))

(declare-fun m!2612275 () Bool)

(assert (=> b!2171199 m!2612275))

(declare-fun m!2612277 () Bool)

(assert (=> b!2171199 m!2612277))

(declare-fun m!2612279 () Bool)

(assert (=> b!2171199 m!2612279))

(declare-fun m!2612281 () Bool)

(assert (=> b!2171199 m!2612281))

(declare-fun m!2612283 () Bool)

(assert (=> b!2171199 m!2612283))

(declare-fun m!2612285 () Bool)

(assert (=> b!2171199 m!2612285))

(assert (=> b!2171199 m!2612273))

(declare-fun m!2612287 () Bool)

(assert (=> b!2171191 m!2612287))

(declare-fun m!2612289 () Bool)

(assert (=> b!2171198 m!2612289))

(declare-fun m!2612291 () Bool)

(assert (=> b!2171198 m!2612291))

(declare-fun m!2612293 () Bool)

(assert (=> b!2171198 m!2612293))

(declare-fun m!2612295 () Bool)

(assert (=> b!2171198 m!2612295))

(declare-fun m!2612297 () Bool)

(assert (=> b!2171198 m!2612297))

(declare-fun m!2612299 () Bool)

(assert (=> b!2171198 m!2612299))

(declare-fun m!2612301 () Bool)

(assert (=> b!2171198 m!2612301))

(check-sat (not b!2171196) (not b!2171191) (not b!2171198) (not b!2171193) (not b!2171188) tp_is_empty!9629 (not b!2171199) (not setNonEmpty!18190) (not b!2171197) (not b!2171192) (not b!2171201) (not b!2171194) (not start!210610) (not b!2171200))
(check-sat)
