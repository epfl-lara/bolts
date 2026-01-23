; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212306 () Bool)

(assert start!212306)

(declare-fun b!2188393 () Bool)

(declare-fun e!1398377 () Bool)

(declare-fun e!1398391 () Bool)

(assert (=> b!2188393 (= e!1398377 (not e!1398391))))

(declare-fun res!940124 () Bool)

(assert (=> b!2188393 (=> res!940124 e!1398391)))

(declare-fun e!1398381 () Bool)

(assert (=> b!2188393 (= res!940124 e!1398381)))

(declare-fun res!940118 () Bool)

(assert (=> b!2188393 (=> (not res!940118) (not e!1398381))))

(declare-fun lt!817042 () Bool)

(assert (=> b!2188393 (= res!940118 (not lt!817042))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12248 0))(
  ( (C!12249 (val!7110 Int)) )
))
(declare-datatypes ((Regex!6051 0))(
  ( (ElementMatch!6051 (c!348138 C!12248)) (Concat!10353 (regOne!12614 Regex!6051) (regTwo!12614 Regex!6051)) (EmptyExpr!6051) (Star!6051 (reg!6380 Regex!6051)) (EmptyLang!6051) (Union!6051 (regOne!12615 Regex!6051) (regTwo!12615 Regex!6051)) )
))
(declare-datatypes ((List!25366 0))(
  ( (Nil!25282) (Cons!25282 (h!30683 Regex!6051) (t!197964 List!25366)) )
))
(declare-datatypes ((Context!3242 0))(
  ( (Context!3243 (exprs!2121 List!25366)) )
))
(declare-fun z!4055 () (InoxSet Context!3242))

(declare-datatypes ((List!25367 0))(
  ( (Nil!25283) (Cons!25283 (h!30684 C!12248) (t!197965 List!25367)) )
))
(declare-fun lt!817026 () List!25367)

(declare-fun matchZipper!167 ((InoxSet Context!3242) List!25367) Bool)

(assert (=> b!2188393 (= lt!817042 (matchZipper!167 z!4055 lt!817026))))

(declare-fun e!1398380 () Bool)

(assert (=> b!2188393 e!1398380))

(declare-fun res!940120 () Bool)

(assert (=> b!2188393 (=> res!940120 e!1398380)))

(declare-datatypes ((tuple2!25090 0))(
  ( (tuple2!25091 (_1!14915 List!25367) (_2!14915 List!25367)) )
))
(declare-fun lt!817033 () tuple2!25090)

(declare-fun isEmpty!14539 (List!25367) Bool)

(assert (=> b!2188393 (= res!940120 (isEmpty!14539 (_1!14915 lt!817033)))))

(declare-fun r!12534 () Regex!6051)

(declare-fun lt!817032 () List!25367)

(declare-fun findLongestMatchInner!676 (Regex!6051 List!25367 Int List!25367 List!25367 Int) tuple2!25090)

(declare-fun size!19756 (List!25367) Int)

(assert (=> b!2188393 (= lt!817033 (findLongestMatchInner!676 r!12534 Nil!25283 (size!19756 Nil!25283) lt!817032 lt!817032 (size!19756 lt!817032)))))

(declare-datatypes ((Unit!38427 0))(
  ( (Unit!38428) )
))
(declare-fun lt!817030 () Unit!38427)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!649 (Regex!6051 List!25367) Unit!38427)

(assert (=> b!2188393 (= lt!817030 (longestMatchIsAcceptedByMatchOrIsEmpty!649 r!12534 lt!817032))))

(declare-fun e!1398389 () Bool)

(assert (=> b!2188393 e!1398389))

(declare-fun res!940117 () Bool)

(assert (=> b!2188393 (=> res!940117 e!1398389)))

(declare-fun lt!817045 () Int)

(assert (=> b!2188393 (= res!940117 (<= lt!817045 0))))

(declare-fun lt!817036 () Int)

(declare-fun lt!817022 () Int)

(declare-datatypes ((IArray!16379 0))(
  ( (IArray!16380 (innerList!8247 List!25367)) )
))
(declare-datatypes ((Conc!8187 0))(
  ( (Node!8187 (left!19407 Conc!8187) (right!19737 Conc!8187) (csize!16604 Int) (cheight!8398 Int)) (Leaf!11980 (xs!11129 IArray!16379) (csize!16605 Int)) (Empty!8187) )
))
(declare-datatypes ((BalanceConc!16136 0))(
  ( (BalanceConc!16137 (c!348139 Conc!8187)) )
))
(declare-fun totalInput!977 () BalanceConc!16136)

(declare-fun lt!817023 () Int)

(declare-fun furthestNullablePosition!233 ((InoxSet Context!3242) Int BalanceConc!16136 Int Int) Int)

(assert (=> b!2188393 (= lt!817045 (+ 1 (- (furthestNullablePosition!233 z!4055 lt!817036 totalInput!977 lt!817023 lt!817022) lt!817036)))))

(declare-fun lt!817040 () Unit!38427)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!74 ((InoxSet Context!3242) Int BalanceConc!16136 Int) Unit!38427)

(assert (=> b!2188393 (= lt!817040 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!74 z!4055 lt!817036 totalInput!977 lt!817022))))

(declare-fun e!1398390 () Int)

(assert (=> b!2188393 (= lt!817022 e!1398390)))

(declare-fun c!348137 () Bool)

(declare-fun nullableZipper!331 ((InoxSet Context!3242)) Bool)

(assert (=> b!2188393 (= c!348137 (nullableZipper!331 z!4055))))

(declare-fun lt!817035 () List!25367)

(declare-fun isPrefix!2167 (List!25367 List!25367) Bool)

(declare-fun take!259 (List!25367 Int) List!25367)

(assert (=> b!2188393 (isPrefix!2167 (take!259 lt!817035 lt!817036) lt!817035)))

(declare-fun lt!817043 () Unit!38427)

(declare-fun lemmaTakeIsPrefix!82 (List!25367 Int) Unit!38427)

(assert (=> b!2188393 (= lt!817043 (lemmaTakeIsPrefix!82 lt!817035 lt!817036))))

(declare-fun lt!817041 () tuple2!25090)

(declare-fun lt!817044 () List!25367)

(assert (=> b!2188393 (isPrefix!2167 (_1!14915 lt!817041) lt!817044)))

(declare-fun lt!817024 () Unit!38427)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1450 (List!25367 List!25367) Unit!38427)

(assert (=> b!2188393 (= lt!817024 (lemmaConcatTwoListThenFirstIsPrefix!1450 (_1!14915 lt!817041) (_2!14915 lt!817041)))))

(declare-fun lt!817027 () List!25367)

(assert (=> b!2188393 (isPrefix!2167 lt!817026 lt!817027)))

(declare-fun lt!817025 () Unit!38427)

(declare-fun lt!817039 () List!25367)

(assert (=> b!2188393 (= lt!817025 (lemmaConcatTwoListThenFirstIsPrefix!1450 lt!817026 lt!817039))))

(declare-fun b!2188394 () Bool)

(declare-fun e!1398386 () Bool)

(declare-fun e!1398378 () Bool)

(assert (=> b!2188394 (= e!1398386 e!1398378)))

(declare-fun res!940122 () Bool)

(assert (=> b!2188394 (=> (not res!940122) (not e!1398378))))

(assert (=> b!2188394 (= res!940122 (= lt!817027 lt!817032))))

(declare-fun ++!6412 (List!25367 List!25367) List!25367)

(assert (=> b!2188394 (= lt!817027 (++!6412 lt!817026 lt!817039))))

(declare-datatypes ((tuple2!25092 0))(
  ( (tuple2!25093 (_1!14916 BalanceConc!16136) (_2!14916 BalanceConc!16136)) )
))
(declare-fun lt!817046 () tuple2!25092)

(declare-fun list!9712 (BalanceConc!16136) List!25367)

(assert (=> b!2188394 (= lt!817039 (list!9712 (_2!14916 lt!817046)))))

(assert (=> b!2188394 (= lt!817026 (list!9712 (_1!14916 lt!817046)))))

(declare-fun findLongestMatch!605 (Regex!6051 List!25367) tuple2!25090)

(assert (=> b!2188394 (= lt!817041 (findLongestMatch!605 r!12534 lt!817032))))

(declare-fun input!5540 () BalanceConc!16136)

(declare-fun size!19757 (BalanceConc!16136) Int)

(assert (=> b!2188394 (= lt!817036 (- lt!817023 (size!19757 input!5540)))))

(assert (=> b!2188394 (= lt!817023 (size!19757 totalInput!977))))

(declare-fun findLongestMatchZipperSequenceV3!100 ((InoxSet Context!3242) BalanceConc!16136 BalanceConc!16136) tuple2!25092)

(assert (=> b!2188394 (= lt!817046 (findLongestMatchZipperSequenceV3!100 z!4055 input!5540 totalInput!977))))

(declare-fun b!2188395 () Bool)

(declare-fun e!1398375 () Bool)

(declare-fun tp_is_empty!9709 () Bool)

(assert (=> b!2188395 (= e!1398375 tp_is_empty!9709)))

(declare-fun tp!682290 () Bool)

(declare-fun setRes!18372 () Bool)

(declare-fun setNonEmpty!18372 () Bool)

(declare-fun e!1398387 () Bool)

(declare-fun setElem!18372 () Context!3242)

(declare-fun inv!33624 (Context!3242) Bool)

(assert (=> setNonEmpty!18372 (= setRes!18372 (and tp!682290 (inv!33624 setElem!18372) e!1398387))))

(declare-fun setRest!18372 () (InoxSet Context!3242))

(assert (=> setNonEmpty!18372 (= z!4055 ((_ map or) (store ((as const (Array Context!3242 Bool)) false) setElem!18372 true) setRest!18372))))

(declare-fun b!2188396 () Bool)

(assert (=> b!2188396 (= e!1398378 e!1398377)))

(declare-fun res!940125 () Bool)

(assert (=> b!2188396 (=> (not res!940125) (not e!1398377))))

(assert (=> b!2188396 (= res!940125 (= lt!817044 lt!817032))))

(assert (=> b!2188396 (= lt!817044 (++!6412 (_1!14915 lt!817041) (_2!14915 lt!817041)))))

(declare-fun b!2188397 () Bool)

(declare-fun tp!682289 () Bool)

(declare-fun tp!682288 () Bool)

(assert (=> b!2188397 (= e!1398375 (and tp!682289 tp!682288))))

(declare-fun b!2188398 () Bool)

(declare-fun isEmpty!14540 (BalanceConc!16136) Bool)

(assert (=> b!2188398 (= e!1398381 (not (isEmpty!14540 (_1!14916 lt!817046))))))

(declare-fun b!2188399 () Bool)

(declare-fun e!1398376 () Bool)

(declare-fun e!1398379 () Bool)

(assert (=> b!2188399 (= e!1398376 e!1398379)))

(declare-fun res!940114 () Bool)

(assert (=> b!2188399 (=> (not res!940114) (not e!1398379))))

(declare-datatypes ((List!25368 0))(
  ( (Nil!25284) (Cons!25284 (h!30685 Context!3242) (t!197966 List!25368)) )
))
(declare-fun lt!817034 () List!25368)

(declare-fun unfocusZipper!158 (List!25368) Regex!6051)

(assert (=> b!2188399 (= res!940114 (= (unfocusZipper!158 lt!817034) r!12534))))

(declare-fun toList!1234 ((InoxSet Context!3242)) List!25368)

(assert (=> b!2188399 (= lt!817034 (toList!1234 z!4055))))

(declare-fun res!940123 () Bool)

(assert (=> start!212306 (=> (not res!940123) (not e!1398376))))

(declare-fun validRegex!2327 (Regex!6051) Bool)

(assert (=> start!212306 (= res!940123 (validRegex!2327 r!12534))))

(assert (=> start!212306 e!1398376))

(assert (=> start!212306 e!1398375))

(declare-fun e!1398385 () Bool)

(declare-fun inv!33625 (BalanceConc!16136) Bool)

(assert (=> start!212306 (and (inv!33625 totalInput!977) e!1398385)))

(declare-fun e!1398382 () Bool)

(assert (=> start!212306 (and (inv!33625 input!5540) e!1398382)))

(declare-fun condSetEmpty!18372 () Bool)

(assert (=> start!212306 (= condSetEmpty!18372 (= z!4055 ((as const (Array Context!3242 Bool)) false)))))

(assert (=> start!212306 setRes!18372))

(declare-fun b!2188400 () Bool)

(declare-fun tp!682284 () Bool)

(declare-fun tp!682287 () Bool)

(assert (=> b!2188400 (= e!1398375 (and tp!682284 tp!682287))))

(declare-fun b!2188401 () Bool)

(assert (=> b!2188401 (= e!1398390 (- lt!817036 1))))

(declare-fun b!2188402 () Bool)

(declare-fun tp!682283 () Bool)

(assert (=> b!2188402 (= e!1398387 tp!682283)))

(declare-fun b!2188403 () Bool)

(declare-fun tp!682286 () Bool)

(declare-fun inv!33626 (Conc!8187) Bool)

(assert (=> b!2188403 (= e!1398385 (and (inv!33626 (c!348139 totalInput!977)) tp!682286))))

(declare-fun b!2188404 () Bool)

(assert (=> b!2188404 (= e!1398379 e!1398386)))

(declare-fun res!940119 () Bool)

(assert (=> b!2188404 (=> (not res!940119) (not e!1398386))))

(declare-fun isSuffix!718 (List!25367 List!25367) Bool)

(assert (=> b!2188404 (= res!940119 (isSuffix!718 lt!817032 lt!817035))))

(assert (=> b!2188404 (= lt!817035 (list!9712 totalInput!977))))

(assert (=> b!2188404 (= lt!817032 (list!9712 input!5540))))

(declare-fun setIsEmpty!18372 () Bool)

(assert (=> setIsEmpty!18372 setRes!18372))

(declare-fun b!2188405 () Bool)

(declare-fun e!1398388 () Bool)

(assert (=> b!2188405 (= e!1398388 (isPrefix!2167 lt!817026 lt!817032))))

(declare-fun b!2188406 () Bool)

(declare-fun matchR!2800 (Regex!6051 List!25367) Bool)

(assert (=> b!2188406 (= e!1398380 (matchR!2800 r!12534 (_1!14915 lt!817033)))))

(declare-fun b!2188407 () Bool)

(declare-fun e!1398384 () Bool)

(assert (=> b!2188407 (= e!1398384 e!1398388)))

(declare-fun res!940121 () Bool)

(assert (=> b!2188407 (=> res!940121 e!1398388)))

(declare-fun lt!817037 () Int)

(declare-fun lt!817031 () Int)

(assert (=> b!2188407 (= res!940121 (or (> lt!817037 lt!817031) (> lt!817031 lt!817037)))))

(assert (=> b!2188407 (= lt!817031 (size!19757 (_1!14916 lt!817046)))))

(assert (=> b!2188407 (= lt!817037 (size!19756 (_1!14915 lt!817041)))))

(assert (=> b!2188407 (= (matchR!2800 r!12534 lt!817026) lt!817042)))

(declare-fun lt!817038 () Unit!38427)

(declare-fun theoremZipperRegexEquiv!77 ((InoxSet Context!3242) List!25368 Regex!6051 List!25367) Unit!38427)

(assert (=> b!2188407 (= lt!817038 (theoremZipperRegexEquiv!77 z!4055 lt!817034 r!12534 lt!817026))))

(declare-fun lt!817029 () Bool)

(assert (=> b!2188407 (= lt!817029 (matchZipper!167 z!4055 (_1!14915 lt!817041)))))

(declare-fun lt!817028 () Unit!38427)

(assert (=> b!2188407 (= lt!817028 (theoremZipperRegexEquiv!77 z!4055 lt!817034 r!12534 (_1!14915 lt!817041)))))

(declare-fun b!2188408 () Bool)

(declare-fun tp!682282 () Bool)

(assert (=> b!2188408 (= e!1398375 tp!682282)))

(declare-fun b!2188409 () Bool)

(assert (=> b!2188409 (= e!1398390 (- 1))))

(declare-fun b!2188410 () Bool)

(declare-fun tp!682285 () Bool)

(assert (=> b!2188410 (= e!1398382 (and (inv!33626 (c!348139 input!5540)) tp!682285))))

(declare-fun b!2188411 () Bool)

(assert (=> b!2188411 (= e!1398391 e!1398384)))

(declare-fun res!940115 () Bool)

(assert (=> b!2188411 (=> res!940115 e!1398384)))

(declare-fun e!1398383 () Bool)

(assert (=> b!2188411 (= res!940115 e!1398383)))

(declare-fun res!940116 () Bool)

(assert (=> b!2188411 (=> (not res!940116) (not e!1398383))))

(assert (=> b!2188411 (= res!940116 (not lt!817029))))

(assert (=> b!2188411 (= lt!817029 (matchR!2800 r!12534 (_1!14915 lt!817041)))))

(declare-fun b!2188412 () Bool)

(declare-fun drop!1269 (List!25367 Int) List!25367)

(assert (=> b!2188412 (= e!1398389 (matchZipper!167 z!4055 (take!259 (drop!1269 lt!817035 lt!817036) lt!817045)))))

(declare-fun b!2188413 () Bool)

(assert (=> b!2188413 (= e!1398383 (not (isEmpty!14539 (_1!14915 lt!817041))))))

(assert (= (and start!212306 res!940123) b!2188399))

(assert (= (and b!2188399 res!940114) b!2188404))

(assert (= (and b!2188404 res!940119) b!2188394))

(assert (= (and b!2188394 res!940122) b!2188396))

(assert (= (and b!2188396 res!940125) b!2188393))

(assert (= (and b!2188393 c!348137) b!2188401))

(assert (= (and b!2188393 (not c!348137)) b!2188409))

(assert (= (and b!2188393 (not res!940117)) b!2188412))

(assert (= (and b!2188393 (not res!940120)) b!2188406))

(assert (= (and b!2188393 res!940118) b!2188398))

(assert (= (and b!2188393 (not res!940124)) b!2188411))

(assert (= (and b!2188411 res!940116) b!2188413))

(assert (= (and b!2188411 (not res!940115)) b!2188407))

(assert (= (and b!2188407 (not res!940121)) b!2188405))

(get-info :version)

(assert (= (and start!212306 ((_ is ElementMatch!6051) r!12534)) b!2188395))

(assert (= (and start!212306 ((_ is Concat!10353) r!12534)) b!2188397))

(assert (= (and start!212306 ((_ is Star!6051) r!12534)) b!2188408))

(assert (= (and start!212306 ((_ is Union!6051) r!12534)) b!2188400))

(assert (= start!212306 b!2188403))

(assert (= start!212306 b!2188410))

(assert (= (and start!212306 condSetEmpty!18372) setIsEmpty!18372))

(assert (= (and start!212306 (not condSetEmpty!18372)) setNonEmpty!18372))

(assert (= setNonEmpty!18372 b!2188402))

(declare-fun m!2631173 () Bool)

(assert (=> b!2188398 m!2631173))

(declare-fun m!2631175 () Bool)

(assert (=> b!2188394 m!2631175))

(declare-fun m!2631177 () Bool)

(assert (=> b!2188394 m!2631177))

(declare-fun m!2631179 () Bool)

(assert (=> b!2188394 m!2631179))

(declare-fun m!2631181 () Bool)

(assert (=> b!2188394 m!2631181))

(declare-fun m!2631183 () Bool)

(assert (=> b!2188394 m!2631183))

(declare-fun m!2631185 () Bool)

(assert (=> b!2188394 m!2631185))

(declare-fun m!2631187 () Bool)

(assert (=> b!2188394 m!2631187))

(declare-fun m!2631189 () Bool)

(assert (=> b!2188403 m!2631189))

(declare-fun m!2631191 () Bool)

(assert (=> b!2188399 m!2631191))

(declare-fun m!2631193 () Bool)

(assert (=> b!2188399 m!2631193))

(declare-fun m!2631195 () Bool)

(assert (=> start!212306 m!2631195))

(declare-fun m!2631197 () Bool)

(assert (=> start!212306 m!2631197))

(declare-fun m!2631199 () Bool)

(assert (=> start!212306 m!2631199))

(declare-fun m!2631201 () Bool)

(assert (=> b!2188412 m!2631201))

(assert (=> b!2188412 m!2631201))

(declare-fun m!2631203 () Bool)

(assert (=> b!2188412 m!2631203))

(assert (=> b!2188412 m!2631203))

(declare-fun m!2631205 () Bool)

(assert (=> b!2188412 m!2631205))

(declare-fun m!2631207 () Bool)

(assert (=> b!2188396 m!2631207))

(declare-fun m!2631209 () Bool)

(assert (=> b!2188393 m!2631209))

(declare-fun m!2631211 () Bool)

(assert (=> b!2188393 m!2631211))

(declare-fun m!2631213 () Bool)

(assert (=> b!2188393 m!2631213))

(declare-fun m!2631215 () Bool)

(assert (=> b!2188393 m!2631215))

(declare-fun m!2631217 () Bool)

(assert (=> b!2188393 m!2631217))

(assert (=> b!2188393 m!2631209))

(declare-fun m!2631219 () Bool)

(assert (=> b!2188393 m!2631219))

(declare-fun m!2631221 () Bool)

(assert (=> b!2188393 m!2631221))

(declare-fun m!2631223 () Bool)

(assert (=> b!2188393 m!2631223))

(declare-fun m!2631225 () Bool)

(assert (=> b!2188393 m!2631225))

(declare-fun m!2631227 () Bool)

(assert (=> b!2188393 m!2631227))

(assert (=> b!2188393 m!2631223))

(assert (=> b!2188393 m!2631211))

(declare-fun m!2631229 () Bool)

(assert (=> b!2188393 m!2631229))

(declare-fun m!2631231 () Bool)

(assert (=> b!2188393 m!2631231))

(declare-fun m!2631233 () Bool)

(assert (=> b!2188393 m!2631233))

(declare-fun m!2631235 () Bool)

(assert (=> b!2188393 m!2631235))

(declare-fun m!2631237 () Bool)

(assert (=> b!2188393 m!2631237))

(declare-fun m!2631239 () Bool)

(assert (=> b!2188393 m!2631239))

(declare-fun m!2631241 () Bool)

(assert (=> setNonEmpty!18372 m!2631241))

(declare-fun m!2631243 () Bool)

(assert (=> b!2188407 m!2631243))

(declare-fun m!2631245 () Bool)

(assert (=> b!2188407 m!2631245))

(declare-fun m!2631247 () Bool)

(assert (=> b!2188407 m!2631247))

(declare-fun m!2631249 () Bool)

(assert (=> b!2188407 m!2631249))

(declare-fun m!2631251 () Bool)

(assert (=> b!2188407 m!2631251))

(declare-fun m!2631253 () Bool)

(assert (=> b!2188407 m!2631253))

(declare-fun m!2631255 () Bool)

(assert (=> b!2188410 m!2631255))

(declare-fun m!2631257 () Bool)

(assert (=> b!2188411 m!2631257))

(declare-fun m!2631259 () Bool)

(assert (=> b!2188413 m!2631259))

(declare-fun m!2631261 () Bool)

(assert (=> b!2188404 m!2631261))

(declare-fun m!2631263 () Bool)

(assert (=> b!2188404 m!2631263))

(declare-fun m!2631265 () Bool)

(assert (=> b!2188404 m!2631265))

(declare-fun m!2631267 () Bool)

(assert (=> b!2188406 m!2631267))

(declare-fun m!2631269 () Bool)

(assert (=> b!2188405 m!2631269))

(check-sat (not b!2188400) (not b!2188402) (not setNonEmpty!18372) (not b!2188398) (not b!2188410) tp_is_empty!9709 (not b!2188404) (not b!2188399) (not b!2188394) (not b!2188403) (not b!2188406) (not b!2188396) (not b!2188413) (not b!2188397) (not b!2188408) (not b!2188393) (not start!212306) (not b!2188412) (not b!2188405) (not b!2188411) (not b!2188407))
(check-sat)
