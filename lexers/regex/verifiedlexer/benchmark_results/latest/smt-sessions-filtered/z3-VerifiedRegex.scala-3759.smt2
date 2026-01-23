; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209634 () Bool)

(assert start!209634)

(declare-fun b!2161161 () Bool)

(declare-fun e!1382943 () Bool)

(declare-datatypes ((C!12116 0))(
  ( (C!12117 (val!7044 Int)) )
))
(declare-datatypes ((List!25168 0))(
  ( (Nil!25084) (Cons!25084 (h!30485 C!12116) (t!197716 List!25168)) )
))
(declare-datatypes ((IArray!16247 0))(
  ( (IArray!16248 (innerList!8181 List!25168)) )
))
(declare-datatypes ((Conc!8121 0))(
  ( (Node!8121 (left!19292 Conc!8121) (right!19622 Conc!8121) (csize!16472 Int) (cheight!8332 Int)) (Leaf!11881 (xs!11063 IArray!16247) (csize!16473 Int)) (Empty!8121) )
))
(declare-datatypes ((BalanceConc!16004 0))(
  ( (BalanceConc!16005 (c!341966 Conc!8121)) )
))
(declare-fun totalInput!977 () BalanceConc!16004)

(declare-fun tp!674211 () Bool)

(declare-fun inv!33235 (Conc!8121) Bool)

(assert (=> b!2161161 (= e!1382943 (and (inv!33235 (c!341966 totalInput!977)) tp!674211))))

(declare-fun b!2161162 () Bool)

(declare-fun e!1382929 () Bool)

(declare-fun e!1382927 () Bool)

(assert (=> b!2161162 (= e!1382929 e!1382927)))

(declare-fun res!931345 () Bool)

(assert (=> b!2161162 (=> res!931345 e!1382927)))

(declare-fun lt!804331 () Int)

(declare-fun lt!804319 () Int)

(assert (=> b!2161162 (= res!931345 (or (> lt!804331 lt!804319) (<= lt!804319 lt!804331)))))

(declare-datatypes ((tuple2!24806 0))(
  ( (tuple2!24807 (_1!14773 BalanceConc!16004) (_2!14773 BalanceConc!16004)) )
))
(declare-fun lt!804332 () tuple2!24806)

(declare-fun size!19597 (BalanceConc!16004) Int)

(assert (=> b!2161162 (= lt!804319 (size!19597 (_1!14773 lt!804332)))))

(declare-datatypes ((tuple2!24808 0))(
  ( (tuple2!24809 (_1!14774 List!25168) (_2!14774 List!25168)) )
))
(declare-fun lt!804312 () tuple2!24808)

(declare-fun size!19598 (List!25168) Int)

(assert (=> b!2161162 (= lt!804331 (size!19598 (_1!14774 lt!804312)))))

(declare-fun lt!804307 () Bool)

(declare-fun lt!804308 () Bool)

(assert (=> b!2161162 (= lt!804307 lt!804308)))

(declare-datatypes ((Regex!5985 0))(
  ( (ElementMatch!5985 (c!341967 C!12116)) (Concat!10287 (regOne!12482 Regex!5985) (regTwo!12482 Regex!5985)) (EmptyExpr!5985) (Star!5985 (reg!6314 Regex!5985)) (EmptyLang!5985) (Union!5985 (regOne!12483 Regex!5985) (regTwo!12483 Regex!5985)) )
))
(declare-fun r!12534 () Regex!5985)

(declare-fun lt!804322 () List!25168)

(declare-fun matchR!2746 (Regex!5985 List!25168) Bool)

(assert (=> b!2161162 (= lt!804307 (matchR!2746 r!12534 lt!804322))))

(declare-datatypes ((List!25169 0))(
  ( (Nil!25085) (Cons!25085 (h!30486 Regex!5985) (t!197717 List!25169)) )
))
(declare-datatypes ((Context!3110 0))(
  ( (Context!3111 (exprs!2055 List!25169)) )
))
(declare-datatypes ((List!25170 0))(
  ( (Nil!25086) (Cons!25086 (h!30487 Context!3110) (t!197718 List!25170)) )
))
(declare-fun lt!804313 () List!25170)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4055 () (InoxSet Context!3110))

(declare-datatypes ((Unit!38121 0))(
  ( (Unit!38122) )
))
(declare-fun lt!804310 () Unit!38121)

(declare-fun theoremZipperRegexEquiv!29 ((InoxSet Context!3110) List!25170 Regex!5985 List!25168) Unit!38121)

(assert (=> b!2161162 (= lt!804310 (theoremZipperRegexEquiv!29 z!4055 lt!804313 r!12534 lt!804322))))

(declare-fun lt!804329 () Bool)

(declare-fun matchZipper!113 ((InoxSet Context!3110) List!25168) Bool)

(assert (=> b!2161162 (= lt!804329 (matchZipper!113 z!4055 (_1!14774 lt!804312)))))

(declare-fun lt!804318 () Unit!38121)

(assert (=> b!2161162 (= lt!804318 (theoremZipperRegexEquiv!29 z!4055 lt!804313 r!12534 (_1!14774 lt!804312)))))

(declare-fun b!2161163 () Bool)

(declare-fun e!1382931 () Bool)

(declare-fun tp!674213 () Bool)

(declare-fun tp!674210 () Bool)

(assert (=> b!2161163 (= e!1382931 (and tp!674213 tp!674210))))

(declare-fun b!2161164 () Bool)

(declare-fun e!1382934 () Int)

(declare-fun lt!804325 () Int)

(assert (=> b!2161164 (= e!1382934 (- lt!804325 1))))

(declare-fun b!2161165 () Bool)

(declare-fun e!1382937 () Bool)

(declare-fun tp!674208 () Bool)

(assert (=> b!2161165 (= e!1382937 tp!674208)))

(declare-fun setElem!18064 () Context!3110)

(declare-fun setNonEmpty!18064 () Bool)

(declare-fun tp!674215 () Bool)

(declare-fun setRes!18064 () Bool)

(declare-fun inv!33236 (Context!3110) Bool)

(assert (=> setNonEmpty!18064 (= setRes!18064 (and tp!674215 (inv!33236 setElem!18064) e!1382937))))

(declare-fun setRest!18064 () (InoxSet Context!3110))

(assert (=> setNonEmpty!18064 (= z!4055 ((_ map or) (store ((as const (Array Context!3110 Bool)) false) setElem!18064 true) setRest!18064))))

(declare-fun b!2161166 () Bool)

(assert (=> b!2161166 (= e!1382927 true)))

(assert (=> b!2161166 (or (= lt!804322 (_1!14774 lt!804312)) (not lt!804307))))

(declare-fun lt!804327 () Unit!38121)

(declare-fun lt!804311 () List!25168)

(declare-fun longestMatchNoBiggerStringMatch!3 (Regex!5985 List!25168 List!25168 List!25168) Unit!38121)

(assert (=> b!2161166 (= lt!804327 (longestMatchNoBiggerStringMatch!3 r!12534 lt!804311 (_1!14774 lt!804312) lt!804322))))

(declare-fun b!2161167 () Bool)

(declare-fun e!1382940 () Bool)

(declare-fun e!1382942 () Bool)

(assert (=> b!2161167 (= e!1382940 e!1382942)))

(declare-fun res!931342 () Bool)

(assert (=> b!2161167 (=> (not res!931342) (not e!1382942))))

(declare-fun lt!804326 () List!25168)

(assert (=> b!2161167 (= res!931342 (= lt!804326 lt!804311))))

(declare-fun ++!6342 (List!25168 List!25168) List!25168)

(assert (=> b!2161167 (= lt!804326 (++!6342 (_1!14774 lt!804312) (_2!14774 lt!804312)))))

(declare-fun b!2161169 () Bool)

(declare-fun e!1382941 () Bool)

(assert (=> b!2161169 (= e!1382941 e!1382929)))

(declare-fun res!931349 () Bool)

(assert (=> b!2161169 (=> res!931349 e!1382929)))

(declare-fun e!1382928 () Bool)

(assert (=> b!2161169 (= res!931349 e!1382928)))

(declare-fun res!931343 () Bool)

(assert (=> b!2161169 (=> (not res!931343) (not e!1382928))))

(assert (=> b!2161169 (= res!931343 (not lt!804329))))

(assert (=> b!2161169 (= lt!804329 (matchR!2746 r!12534 (_1!14774 lt!804312)))))

(declare-fun b!2161170 () Bool)

(declare-fun e!1382932 () Bool)

(assert (=> b!2161170 (= e!1382932 e!1382940)))

(declare-fun res!931344 () Bool)

(assert (=> b!2161170 (=> (not res!931344) (not e!1382940))))

(declare-fun lt!804328 () List!25168)

(assert (=> b!2161170 (= res!931344 (= lt!804328 lt!804311))))

(declare-fun lt!804330 () List!25168)

(assert (=> b!2161170 (= lt!804328 (++!6342 lt!804322 lt!804330))))

(declare-fun list!9604 (BalanceConc!16004) List!25168)

(assert (=> b!2161170 (= lt!804330 (list!9604 (_2!14773 lt!804332)))))

(assert (=> b!2161170 (= lt!804322 (list!9604 (_1!14773 lt!804332)))))

(declare-fun findLongestMatch!539 (Regex!5985 List!25168) tuple2!24808)

(assert (=> b!2161170 (= lt!804312 (findLongestMatch!539 r!12534 lt!804311))))

(declare-fun lt!804321 () Int)

(declare-fun input!5540 () BalanceConc!16004)

(assert (=> b!2161170 (= lt!804325 (- lt!804321 (size!19597 input!5540)))))

(assert (=> b!2161170 (= lt!804321 (size!19597 totalInput!977))))

(declare-fun findLongestMatchZipperSequenceV3!34 ((InoxSet Context!3110) BalanceConc!16004 BalanceConc!16004) tuple2!24806)

(assert (=> b!2161170 (= lt!804332 (findLongestMatchZipperSequenceV3!34 z!4055 input!5540 totalInput!977))))

(declare-fun b!2161171 () Bool)

(declare-fun e!1382936 () Bool)

(declare-fun e!1382930 () Bool)

(assert (=> b!2161171 (= e!1382936 e!1382930)))

(declare-fun res!931347 () Bool)

(assert (=> b!2161171 (=> (not res!931347) (not e!1382930))))

(declare-fun unfocusZipper!92 (List!25170) Regex!5985)

(assert (=> b!2161171 (= res!931347 (= (unfocusZipper!92 lt!804313) r!12534))))

(declare-fun toList!1168 ((InoxSet Context!3110)) List!25170)

(assert (=> b!2161171 (= lt!804313 (toList!1168 z!4055))))

(declare-fun b!2161172 () Bool)

(declare-fun e!1382933 () Bool)

(declare-fun tp!674216 () Bool)

(assert (=> b!2161172 (= e!1382933 (and (inv!33235 (c!341966 input!5540)) tp!674216))))

(declare-fun b!2161173 () Bool)

(declare-fun e!1382939 () Bool)

(declare-fun lt!804314 () tuple2!24808)

(assert (=> b!2161173 (= e!1382939 (matchR!2746 r!12534 (_1!14774 lt!804314)))))

(declare-fun b!2161174 () Bool)

(assert (=> b!2161174 (= e!1382934 (- 1))))

(declare-fun b!2161175 () Bool)

(declare-fun tp!674214 () Bool)

(assert (=> b!2161175 (= e!1382931 tp!674214)))

(declare-fun b!2161176 () Bool)

(declare-fun tp_is_empty!9577 () Bool)

(assert (=> b!2161176 (= e!1382931 tp_is_empty!9577)))

(declare-fun setIsEmpty!18064 () Bool)

(assert (=> setIsEmpty!18064 setRes!18064))

(declare-fun b!2161177 () Bool)

(assert (=> b!2161177 (= e!1382930 e!1382932)))

(declare-fun res!931350 () Bool)

(assert (=> b!2161177 (=> (not res!931350) (not e!1382932))))

(declare-fun lt!804316 () List!25168)

(declare-fun isSuffix!652 (List!25168 List!25168) Bool)

(assert (=> b!2161177 (= res!931350 (isSuffix!652 lt!804311 lt!804316))))

(assert (=> b!2161177 (= lt!804316 (list!9604 totalInput!977))))

(assert (=> b!2161177 (= lt!804311 (list!9604 input!5540))))

(declare-fun b!2161178 () Bool)

(declare-fun e!1382938 () Bool)

(declare-fun isEmpty!14385 (BalanceConc!16004) Bool)

(assert (=> b!2161178 (= e!1382938 (not (isEmpty!14385 (_1!14773 lt!804332))))))

(declare-fun b!2161179 () Bool)

(declare-fun isEmpty!14386 (List!25168) Bool)

(assert (=> b!2161179 (= e!1382928 (not (isEmpty!14386 (_1!14774 lt!804312))))))

(declare-fun b!2161180 () Bool)

(assert (=> b!2161180 (= e!1382942 (not e!1382941))))

(declare-fun res!931351 () Bool)

(assert (=> b!2161180 (=> res!931351 e!1382941)))

(assert (=> b!2161180 (= res!931351 e!1382938)))

(declare-fun res!931341 () Bool)

(assert (=> b!2161180 (=> (not res!931341) (not e!1382938))))

(assert (=> b!2161180 (= res!931341 (not lt!804308))))

(assert (=> b!2161180 (= lt!804308 (matchZipper!113 z!4055 lt!804322))))

(assert (=> b!2161180 e!1382939))

(declare-fun res!931346 () Bool)

(assert (=> b!2161180 (=> res!931346 e!1382939)))

(assert (=> b!2161180 (= res!931346 (isEmpty!14386 (_1!14774 lt!804314)))))

(declare-fun findLongestMatchInner!614 (Regex!5985 List!25168 Int List!25168 List!25168 Int) tuple2!24808)

(assert (=> b!2161180 (= lt!804314 (findLongestMatchInner!614 r!12534 Nil!25084 (size!19598 Nil!25084) lt!804311 lt!804311 (size!19598 lt!804311)))))

(declare-fun lt!804320 () Unit!38121)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!595 (Regex!5985 List!25168) Unit!38121)

(assert (=> b!2161180 (= lt!804320 (longestMatchIsAcceptedByMatchOrIsEmpty!595 r!12534 lt!804311))))

(declare-fun e!1382935 () Bool)

(assert (=> b!2161180 e!1382935))

(declare-fun res!931340 () Bool)

(assert (=> b!2161180 (=> res!931340 e!1382935)))

(declare-fun lt!804315 () Int)

(assert (=> b!2161180 (= res!931340 (<= lt!804315 0))))

(declare-fun lt!804317 () Int)

(declare-fun furthestNullablePosition!172 ((InoxSet Context!3110) Int BalanceConc!16004 Int Int) Int)

(assert (=> b!2161180 (= lt!804315 (+ 1 (- (furthestNullablePosition!172 z!4055 lt!804325 totalInput!977 lt!804321 lt!804317) lt!804325)))))

(declare-fun lt!804309 () Unit!38121)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!20 ((InoxSet Context!3110) Int BalanceConc!16004 Int) Unit!38121)

(assert (=> b!2161180 (= lt!804309 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!20 z!4055 lt!804325 totalInput!977 lt!804317))))

(assert (=> b!2161180 (= lt!804317 e!1382934)))

(declare-fun c!341965 () Bool)

(declare-fun nullableZipper!266 ((InoxSet Context!3110)) Bool)

(assert (=> b!2161180 (= c!341965 (nullableZipper!266 z!4055))))

(declare-fun isPrefix!2105 (List!25168 List!25168) Bool)

(declare-fun take!199 (List!25168 Int) List!25168)

(assert (=> b!2161180 (isPrefix!2105 (take!199 lt!804316 lt!804325) lt!804316)))

(declare-fun lt!804306 () Unit!38121)

(declare-fun lemmaTakeIsPrefix!22 (List!25168 Int) Unit!38121)

(assert (=> b!2161180 (= lt!804306 (lemmaTakeIsPrefix!22 lt!804316 lt!804325))))

(assert (=> b!2161180 (isPrefix!2105 (_1!14774 lt!804312) lt!804326)))

(declare-fun lt!804323 () Unit!38121)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1388 (List!25168 List!25168) Unit!38121)

(assert (=> b!2161180 (= lt!804323 (lemmaConcatTwoListThenFirstIsPrefix!1388 (_1!14774 lt!804312) (_2!14774 lt!804312)))))

(assert (=> b!2161180 (isPrefix!2105 lt!804322 lt!804328)))

(declare-fun lt!804324 () Unit!38121)

(assert (=> b!2161180 (= lt!804324 (lemmaConcatTwoListThenFirstIsPrefix!1388 lt!804322 lt!804330))))

(declare-fun b!2161181 () Bool)

(declare-fun drop!1208 (List!25168 Int) List!25168)

(assert (=> b!2161181 (= e!1382935 (matchZipper!113 z!4055 (take!199 (drop!1208 lt!804316 lt!804325) lt!804315)))))

(declare-fun b!2161168 () Bool)

(declare-fun tp!674212 () Bool)

(declare-fun tp!674209 () Bool)

(assert (=> b!2161168 (= e!1382931 (and tp!674212 tp!674209))))

(declare-fun res!931348 () Bool)

(assert (=> start!209634 (=> (not res!931348) (not e!1382936))))

(declare-fun validRegex!2261 (Regex!5985) Bool)

(assert (=> start!209634 (= res!931348 (validRegex!2261 r!12534))))

(assert (=> start!209634 e!1382936))

(assert (=> start!209634 e!1382931))

(declare-fun inv!33237 (BalanceConc!16004) Bool)

(assert (=> start!209634 (and (inv!33237 totalInput!977) e!1382943)))

(assert (=> start!209634 (and (inv!33237 input!5540) e!1382933)))

(declare-fun condSetEmpty!18064 () Bool)

(assert (=> start!209634 (= condSetEmpty!18064 (= z!4055 ((as const (Array Context!3110 Bool)) false)))))

(assert (=> start!209634 setRes!18064))

(assert (= (and start!209634 res!931348) b!2161171))

(assert (= (and b!2161171 res!931347) b!2161177))

(assert (= (and b!2161177 res!931350) b!2161170))

(assert (= (and b!2161170 res!931344) b!2161167))

(assert (= (and b!2161167 res!931342) b!2161180))

(assert (= (and b!2161180 c!341965) b!2161164))

(assert (= (and b!2161180 (not c!341965)) b!2161174))

(assert (= (and b!2161180 (not res!931340)) b!2161181))

(assert (= (and b!2161180 (not res!931346)) b!2161173))

(assert (= (and b!2161180 res!931341) b!2161178))

(assert (= (and b!2161180 (not res!931351)) b!2161169))

(assert (= (and b!2161169 res!931343) b!2161179))

(assert (= (and b!2161169 (not res!931349)) b!2161162))

(assert (= (and b!2161162 (not res!931345)) b!2161166))

(get-info :version)

(assert (= (and start!209634 ((_ is ElementMatch!5985) r!12534)) b!2161176))

(assert (= (and start!209634 ((_ is Concat!10287) r!12534)) b!2161168))

(assert (= (and start!209634 ((_ is Star!5985) r!12534)) b!2161175))

(assert (= (and start!209634 ((_ is Union!5985) r!12534)) b!2161163))

(assert (= start!209634 b!2161161))

(assert (= start!209634 b!2161172))

(assert (= (and start!209634 condSetEmpty!18064) setIsEmpty!18064))

(assert (= (and start!209634 (not condSetEmpty!18064)) setNonEmpty!18064))

(assert (= setNonEmpty!18064 b!2161165))

(declare-fun m!2601529 () Bool)

(assert (=> b!2161170 m!2601529))

(declare-fun m!2601531 () Bool)

(assert (=> b!2161170 m!2601531))

(declare-fun m!2601533 () Bool)

(assert (=> b!2161170 m!2601533))

(declare-fun m!2601535 () Bool)

(assert (=> b!2161170 m!2601535))

(declare-fun m!2601537 () Bool)

(assert (=> b!2161170 m!2601537))

(declare-fun m!2601539 () Bool)

(assert (=> b!2161170 m!2601539))

(declare-fun m!2601541 () Bool)

(assert (=> b!2161170 m!2601541))

(declare-fun m!2601543 () Bool)

(assert (=> b!2161162 m!2601543))

(declare-fun m!2601545 () Bool)

(assert (=> b!2161162 m!2601545))

(declare-fun m!2601547 () Bool)

(assert (=> b!2161162 m!2601547))

(declare-fun m!2601549 () Bool)

(assert (=> b!2161162 m!2601549))

(declare-fun m!2601551 () Bool)

(assert (=> b!2161162 m!2601551))

(declare-fun m!2601553 () Bool)

(assert (=> b!2161162 m!2601553))

(declare-fun m!2601555 () Bool)

(assert (=> start!209634 m!2601555))

(declare-fun m!2601557 () Bool)

(assert (=> start!209634 m!2601557))

(declare-fun m!2601559 () Bool)

(assert (=> start!209634 m!2601559))

(declare-fun m!2601561 () Bool)

(assert (=> b!2161178 m!2601561))

(declare-fun m!2601563 () Bool)

(assert (=> b!2161180 m!2601563))

(declare-fun m!2601565 () Bool)

(assert (=> b!2161180 m!2601565))

(declare-fun m!2601567 () Bool)

(assert (=> b!2161180 m!2601567))

(declare-fun m!2601569 () Bool)

(assert (=> b!2161180 m!2601569))

(declare-fun m!2601571 () Bool)

(assert (=> b!2161180 m!2601571))

(declare-fun m!2601573 () Bool)

(assert (=> b!2161180 m!2601573))

(declare-fun m!2601575 () Bool)

(assert (=> b!2161180 m!2601575))

(declare-fun m!2601577 () Bool)

(assert (=> b!2161180 m!2601577))

(declare-fun m!2601579 () Bool)

(assert (=> b!2161180 m!2601579))

(assert (=> b!2161180 m!2601569))

(declare-fun m!2601581 () Bool)

(assert (=> b!2161180 m!2601581))

(declare-fun m!2601583 () Bool)

(assert (=> b!2161180 m!2601583))

(declare-fun m!2601585 () Bool)

(assert (=> b!2161180 m!2601585))

(declare-fun m!2601587 () Bool)

(assert (=> b!2161180 m!2601587))

(declare-fun m!2601589 () Bool)

(assert (=> b!2161180 m!2601589))

(assert (=> b!2161180 m!2601571))

(declare-fun m!2601591 () Bool)

(assert (=> b!2161180 m!2601591))

(assert (=> b!2161180 m!2601563))

(declare-fun m!2601593 () Bool)

(assert (=> b!2161180 m!2601593))

(declare-fun m!2601595 () Bool)

(assert (=> b!2161177 m!2601595))

(declare-fun m!2601597 () Bool)

(assert (=> b!2161177 m!2601597))

(declare-fun m!2601599 () Bool)

(assert (=> b!2161177 m!2601599))

(declare-fun m!2601601 () Bool)

(assert (=> b!2161181 m!2601601))

(assert (=> b!2161181 m!2601601))

(declare-fun m!2601603 () Bool)

(assert (=> b!2161181 m!2601603))

(assert (=> b!2161181 m!2601603))

(declare-fun m!2601605 () Bool)

(assert (=> b!2161181 m!2601605))

(declare-fun m!2601607 () Bool)

(assert (=> b!2161161 m!2601607))

(declare-fun m!2601609 () Bool)

(assert (=> b!2161172 m!2601609))

(declare-fun m!2601611 () Bool)

(assert (=> setNonEmpty!18064 m!2601611))

(declare-fun m!2601613 () Bool)

(assert (=> b!2161166 m!2601613))

(declare-fun m!2601615 () Bool)

(assert (=> b!2161171 m!2601615))

(declare-fun m!2601617 () Bool)

(assert (=> b!2161171 m!2601617))

(declare-fun m!2601619 () Bool)

(assert (=> b!2161179 m!2601619))

(declare-fun m!2601621 () Bool)

(assert (=> b!2161167 m!2601621))

(declare-fun m!2601623 () Bool)

(assert (=> b!2161173 m!2601623))

(declare-fun m!2601625 () Bool)

(assert (=> b!2161169 m!2601625))

(check-sat (not b!2161172) (not b!2161168) (not b!2161178) (not b!2161177) (not b!2161165) (not b!2161181) (not b!2161180) (not b!2161173) (not b!2161169) (not b!2161179) (not b!2161162) (not b!2161163) (not start!209634) (not b!2161167) (not b!2161175) (not b!2161171) (not b!2161161) (not b!2161166) (not b!2161170) tp_is_empty!9577 (not setNonEmpty!18064))
(check-sat)
