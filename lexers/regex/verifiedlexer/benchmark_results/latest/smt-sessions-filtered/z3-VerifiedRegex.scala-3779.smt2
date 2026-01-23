; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!210750 () Bool)

(assert start!210750)

(declare-fun b!2172760 () Bool)

(declare-fun e!1389557 () Bool)

(declare-fun tp_is_empty!9657 () Bool)

(assert (=> b!2172760 (= e!1389557 tp_is_empty!9657)))

(declare-fun b!2172761 () Bool)

(declare-fun tp!678276 () Bool)

(declare-fun tp!678283 () Bool)

(assert (=> b!2172761 (= e!1389557 (and tp!678276 tp!678283))))

(declare-fun b!2172762 () Bool)

(declare-fun e!1389553 () Bool)

(declare-datatypes ((C!12196 0))(
  ( (C!12197 (val!7084 Int)) )
))
(declare-datatypes ((List!25288 0))(
  ( (Nil!25204) (Cons!25204 (h!30605 C!12196) (t!197856 List!25288)) )
))
(declare-fun lt!809970 () List!25288)

(declare-fun lt!809984 () Int)

(declare-fun size!19688 (List!25288) Int)

(assert (=> b!2172762 (= e!1389553 (= (size!19688 lt!809970) lt!809984))))

(declare-fun b!2172763 () Bool)

(declare-fun res!935052 () Bool)

(assert (=> b!2172763 (=> res!935052 e!1389553)))

(declare-datatypes ((tuple2!24974 0))(
  ( (tuple2!24975 (_1!14857 List!25288) (_2!14857 List!25288)) )
))
(declare-fun lt!809963 () tuple2!24974)

(declare-fun lt!809968 () List!25288)

(declare-fun isPrefix!2141 (List!25288 List!25288) Bool)

(assert (=> b!2172763 (= res!935052 (not (isPrefix!2141 (_1!14857 lt!809963) lt!809968)))))

(declare-fun b!2172764 () Bool)

(declare-fun e!1389543 () Bool)

(declare-datatypes ((IArray!16327 0))(
  ( (IArray!16328 (innerList!8221 List!25288)) )
))
(declare-datatypes ((Conc!8161 0))(
  ( (Node!8161 (left!19356 Conc!8161) (right!19686 Conc!8161) (csize!16552 Int) (cheight!8372 Int)) (Leaf!11941 (xs!11103 IArray!16327) (csize!16553 Int)) (Empty!8161) )
))
(declare-datatypes ((BalanceConc!16084 0))(
  ( (BalanceConc!16085 (c!344366 Conc!8161)) )
))
(declare-fun input!5540 () BalanceConc!16084)

(declare-fun tp!678284 () Bool)

(declare-fun inv!33459 (Conc!8161) Bool)

(assert (=> b!2172764 (= e!1389543 (and (inv!33459 (c!344366 input!5540)) tp!678284))))

(declare-datatypes ((Regex!6025 0))(
  ( (ElementMatch!6025 (c!344367 C!12196)) (Concat!10327 (regOne!12562 Regex!6025) (regTwo!12562 Regex!6025)) (EmptyExpr!6025) (Star!6025 (reg!6354 Regex!6025)) (EmptyLang!6025) (Union!6025 (regOne!12563 Regex!6025) (regTwo!12563 Regex!6025)) )
))
(declare-datatypes ((List!25289 0))(
  ( (Nil!25205) (Cons!25205 (h!30606 Regex!6025) (t!197857 List!25289)) )
))
(declare-datatypes ((Context!3190 0))(
  ( (Context!3191 (exprs!2095 List!25289)) )
))
(declare-fun setElem!18238 () Context!3190)

(declare-fun tp!678281 () Bool)

(declare-fun e!1389546 () Bool)

(declare-fun setNonEmpty!18238 () Bool)

(declare-fun setRes!18238 () Bool)

(declare-fun inv!33460 (Context!3190) Bool)

(assert (=> setNonEmpty!18238 (= setRes!18238 (and tp!678281 (inv!33460 setElem!18238) e!1389546))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4055 () (InoxSet Context!3190))

(declare-fun setRest!18238 () (InoxSet Context!3190))

(assert (=> setNonEmpty!18238 (= z!4055 ((_ map or) (store ((as const (Array Context!3190 Bool)) false) setElem!18238 true) setRest!18238))))

(declare-fun b!2172765 () Bool)

(declare-fun e!1389559 () Int)

(declare-fun lt!809974 () Int)

(assert (=> b!2172765 (= e!1389559 (- lt!809974 1))))

(declare-fun setIsEmpty!18238 () Bool)

(assert (=> setIsEmpty!18238 setRes!18238))

(declare-fun b!2172766 () Bool)

(declare-fun e!1389552 () Bool)

(declare-datatypes ((tuple2!24976 0))(
  ( (tuple2!24977 (_1!14858 BalanceConc!16084) (_2!14858 BalanceConc!16084)) )
))
(declare-fun lt!809976 () tuple2!24976)

(declare-fun isEmpty!14459 (BalanceConc!16084) Bool)

(assert (=> b!2172766 (= e!1389552 (not (isEmpty!14459 (_1!14858 lt!809976))))))

(declare-fun b!2172767 () Bool)

(declare-fun e!1389541 () Bool)

(declare-fun isEmpty!14460 (List!25288) Bool)

(assert (=> b!2172767 (= e!1389541 (not (isEmpty!14460 (_1!14857 lt!809963))))))

(declare-fun b!2172768 () Bool)

(declare-fun tp!678279 () Bool)

(declare-fun tp!678277 () Bool)

(assert (=> b!2172768 (= e!1389557 (and tp!678279 tp!678277))))

(declare-fun b!2172769 () Bool)

(declare-fun e!1389547 () Bool)

(declare-fun e!1389550 () Bool)

(assert (=> b!2172769 (= e!1389547 e!1389550)))

(declare-fun res!935049 () Bool)

(assert (=> b!2172769 (=> res!935049 e!1389550)))

(declare-fun lt!809959 () List!25288)

(assert (=> b!2172769 (= res!935049 (not (= lt!809959 lt!809968)))))

(declare-fun take!233 (List!25288 Int) List!25288)

(assert (=> b!2172769 (= lt!809970 (take!233 lt!809959 lt!809984))))

(declare-fun lt!809965 () List!25288)

(declare-fun drop!1243 (List!25288 Int) List!25288)

(assert (=> b!2172769 (= lt!809959 (drop!1243 lt!809965 lt!809974))))

(declare-fun b!2172770 () Bool)

(declare-fun e!1389554 () Bool)

(declare-fun e!1389545 () Bool)

(assert (=> b!2172770 (= e!1389554 e!1389545)))

(declare-fun res!935055 () Bool)

(assert (=> b!2172770 (=> (not res!935055) (not e!1389545))))

(declare-fun lt!809961 () List!25288)

(assert (=> b!2172770 (= res!935055 (= lt!809961 lt!809968))))

(declare-fun ++!6384 (List!25288 List!25288) List!25288)

(assert (=> b!2172770 (= lt!809961 (++!6384 (_1!14857 lt!809963) (_2!14857 lt!809963)))))

(declare-fun b!2172771 () Bool)

(declare-fun e!1389556 () Bool)

(declare-fun e!1389542 () Bool)

(assert (=> b!2172771 (= e!1389556 e!1389542)))

(declare-fun res!935044 () Bool)

(assert (=> b!2172771 (=> res!935044 e!1389542)))

(assert (=> b!2172771 (= res!935044 e!1389541)))

(declare-fun res!935050 () Bool)

(assert (=> b!2172771 (=> (not res!935050) (not e!1389541))))

(declare-fun lt!809969 () Bool)

(assert (=> b!2172771 (= res!935050 (not lt!809969))))

(declare-fun r!12534 () Regex!6025)

(declare-fun matchR!2774 (Regex!6025 List!25288) Bool)

(assert (=> b!2172771 (= lt!809969 (matchR!2774 r!12534 (_1!14857 lt!809963)))))

(declare-fun b!2172772 () Bool)

(declare-fun e!1389549 () Bool)

(declare-fun totalInput!977 () BalanceConc!16084)

(declare-fun tp!678280 () Bool)

(assert (=> b!2172772 (= e!1389549 (and (inv!33459 (c!344366 totalInput!977)) tp!678280))))

(declare-fun b!2172773 () Bool)

(assert (=> b!2172773 (= e!1389559 (- 1))))

(declare-fun b!2172774 () Bool)

(assert (=> b!2172774 (= e!1389542 e!1389547)))

(declare-fun res!935057 () Bool)

(assert (=> b!2172774 (=> res!935057 e!1389547)))

(declare-fun size!19689 (BalanceConc!16084) Int)

(assert (=> b!2172774 (= res!935057 (<= lt!809984 (size!19689 (_1!14858 lt!809976))))))

(assert (=> b!2172774 (= lt!809984 (size!19688 (_1!14857 lt!809963)))))

(declare-fun lt!809973 () List!25288)

(declare-fun lt!809978 () Bool)

(assert (=> b!2172774 (= (matchR!2774 r!12534 lt!809973) lt!809978)))

(declare-datatypes ((List!25290 0))(
  ( (Nil!25206) (Cons!25206 (h!30607 Context!3190) (t!197858 List!25290)) )
))
(declare-fun lt!809960 () List!25290)

(declare-datatypes ((Unit!38263 0))(
  ( (Unit!38264) )
))
(declare-fun lt!809979 () Unit!38263)

(declare-fun theoremZipperRegexEquiv!51 ((InoxSet Context!3190) List!25290 Regex!6025 List!25288) Unit!38263)

(assert (=> b!2172774 (= lt!809979 (theoremZipperRegexEquiv!51 z!4055 lt!809960 r!12534 lt!809973))))

(declare-fun matchZipper!141 ((InoxSet Context!3190) List!25288) Bool)

(assert (=> b!2172774 (= lt!809969 (matchZipper!141 z!4055 (_1!14857 lt!809963)))))

(declare-fun lt!809966 () Unit!38263)

(assert (=> b!2172774 (= lt!809966 (theoremZipperRegexEquiv!51 z!4055 lt!809960 r!12534 (_1!14857 lt!809963)))))

(declare-fun res!935043 () Bool)

(declare-fun e!1389551 () Bool)

(assert (=> start!210750 (=> (not res!935043) (not e!1389551))))

(declare-fun validRegex!2301 (Regex!6025) Bool)

(assert (=> start!210750 (= res!935043 (validRegex!2301 r!12534))))

(assert (=> start!210750 e!1389551))

(assert (=> start!210750 e!1389557))

(declare-fun inv!33461 (BalanceConc!16084) Bool)

(assert (=> start!210750 (and (inv!33461 totalInput!977) e!1389549)))

(assert (=> start!210750 (and (inv!33461 input!5540) e!1389543)))

(declare-fun condSetEmpty!18238 () Bool)

(assert (=> start!210750 (= condSetEmpty!18238 (= z!4055 ((as const (Array Context!3190 Bool)) false)))))

(assert (=> start!210750 setRes!18238))

(declare-fun b!2172775 () Bool)

(declare-fun e!1389548 () Bool)

(declare-fun lt!809983 () tuple2!24974)

(assert (=> b!2172775 (= e!1389548 (matchR!2774 r!12534 (_1!14857 lt!809983)))))

(declare-fun b!2172776 () Bool)

(declare-fun tp!678278 () Bool)

(assert (=> b!2172776 (= e!1389546 tp!678278)))

(declare-fun b!2172777 () Bool)

(declare-fun lt!809972 () Int)

(declare-fun e!1389558 () Bool)

(assert (=> b!2172777 (= e!1389558 (matchZipper!141 z!4055 (take!233 (drop!1243 lt!809965 lt!809974) lt!809972)))))

(declare-fun b!2172778 () Bool)

(declare-fun e!1389544 () Bool)

(declare-fun e!1389555 () Bool)

(assert (=> b!2172778 (= e!1389544 e!1389555)))

(declare-fun res!935045 () Bool)

(assert (=> b!2172778 (=> (not res!935045) (not e!1389555))))

(declare-fun isSuffix!692 (List!25288 List!25288) Bool)

(assert (=> b!2172778 (= res!935045 (isSuffix!692 lt!809968 lt!809965))))

(declare-fun list!9664 (BalanceConc!16084) List!25288)

(assert (=> b!2172778 (= lt!809965 (list!9664 totalInput!977))))

(assert (=> b!2172778 (= lt!809968 (list!9664 input!5540))))

(declare-fun b!2172779 () Bool)

(assert (=> b!2172779 (= e!1389555 e!1389554)))

(declare-fun res!935053 () Bool)

(assert (=> b!2172779 (=> (not res!935053) (not e!1389554))))

(declare-fun lt!809967 () List!25288)

(assert (=> b!2172779 (= res!935053 (= lt!809967 lt!809968))))

(declare-fun lt!809977 () List!25288)

(assert (=> b!2172779 (= lt!809967 (++!6384 lt!809973 lt!809977))))

(assert (=> b!2172779 (= lt!809977 (list!9664 (_2!14858 lt!809976)))))

(assert (=> b!2172779 (= lt!809973 (list!9664 (_1!14858 lt!809976)))))

(declare-fun findLongestMatch!579 (Regex!6025 List!25288) tuple2!24974)

(assert (=> b!2172779 (= lt!809963 (findLongestMatch!579 r!12534 lt!809968))))

(declare-fun lt!809962 () Int)

(assert (=> b!2172779 (= lt!809974 (- lt!809962 (size!19689 input!5540)))))

(assert (=> b!2172779 (= lt!809962 (size!19689 totalInput!977))))

(declare-fun findLongestMatchZipperSequenceV3!74 ((InoxSet Context!3190) BalanceConc!16084 BalanceConc!16084) tuple2!24976)

(assert (=> b!2172779 (= lt!809976 (findLongestMatchZipperSequenceV3!74 z!4055 input!5540 totalInput!977))))

(declare-fun b!2172780 () Bool)

(assert (=> b!2172780 (= e!1389545 (not e!1389556))))

(declare-fun res!935056 () Bool)

(assert (=> b!2172780 (=> res!935056 e!1389556)))

(assert (=> b!2172780 (= res!935056 e!1389552)))

(declare-fun res!935048 () Bool)

(assert (=> b!2172780 (=> (not res!935048) (not e!1389552))))

(assert (=> b!2172780 (= res!935048 (not lt!809978))))

(assert (=> b!2172780 (= lt!809978 (matchZipper!141 z!4055 lt!809973))))

(assert (=> b!2172780 e!1389548))

(declare-fun res!935051 () Bool)

(assert (=> b!2172780 (=> res!935051 e!1389548)))

(assert (=> b!2172780 (= res!935051 (isEmpty!14460 (_1!14857 lt!809983)))))

(declare-fun findLongestMatchInner!650 (Regex!6025 List!25288 Int List!25288 List!25288 Int) tuple2!24974)

(assert (=> b!2172780 (= lt!809983 (findLongestMatchInner!650 r!12534 Nil!25204 (size!19688 Nil!25204) lt!809968 lt!809968 (size!19688 lt!809968)))))

(declare-fun lt!809958 () Unit!38263)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!623 (Regex!6025 List!25288) Unit!38263)

(assert (=> b!2172780 (= lt!809958 (longestMatchIsAcceptedByMatchOrIsEmpty!623 r!12534 lt!809968))))

(assert (=> b!2172780 e!1389558))

(declare-fun res!935054 () Bool)

(assert (=> b!2172780 (=> res!935054 e!1389558)))

(assert (=> b!2172780 (= res!935054 (<= lt!809972 0))))

(declare-fun lt!809980 () Int)

(declare-fun furthestNullablePosition!207 ((InoxSet Context!3190) Int BalanceConc!16084 Int Int) Int)

(assert (=> b!2172780 (= lt!809972 (+ 1 (- (furthestNullablePosition!207 z!4055 lt!809974 totalInput!977 lt!809962 lt!809980) lt!809974)))))

(declare-fun lt!809982 () Unit!38263)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!48 ((InoxSet Context!3190) Int BalanceConc!16084 Int) Unit!38263)

(assert (=> b!2172780 (= lt!809982 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!48 z!4055 lt!809974 totalInput!977 lt!809980))))

(assert (=> b!2172780 (= lt!809980 e!1389559)))

(declare-fun c!344365 () Bool)

(declare-fun nullableZipper!305 ((InoxSet Context!3190)) Bool)

(assert (=> b!2172780 (= c!344365 (nullableZipper!305 z!4055))))

(assert (=> b!2172780 (isPrefix!2141 (take!233 lt!809965 lt!809974) lt!809965)))

(declare-fun lt!809981 () Unit!38263)

(declare-fun lemmaTakeIsPrefix!56 (List!25288 Int) Unit!38263)

(assert (=> b!2172780 (= lt!809981 (lemmaTakeIsPrefix!56 lt!809965 lt!809974))))

(assert (=> b!2172780 (isPrefix!2141 (_1!14857 lt!809963) lt!809961)))

(declare-fun lt!809975 () Unit!38263)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1424 (List!25288 List!25288) Unit!38263)

(assert (=> b!2172780 (= lt!809975 (lemmaConcatTwoListThenFirstIsPrefix!1424 (_1!14857 lt!809963) (_2!14857 lt!809963)))))

(assert (=> b!2172780 (isPrefix!2141 lt!809973 lt!809967)))

(declare-fun lt!809964 () Unit!38263)

(assert (=> b!2172780 (= lt!809964 (lemmaConcatTwoListThenFirstIsPrefix!1424 lt!809973 lt!809977))))

(declare-fun b!2172781 () Bool)

(declare-fun tp!678282 () Bool)

(assert (=> b!2172781 (= e!1389557 tp!678282)))

(declare-fun b!2172782 () Bool)

(assert (=> b!2172782 (= e!1389550 e!1389553)))

(declare-fun res!935046 () Bool)

(assert (=> b!2172782 (=> res!935046 e!1389553)))

(assert (=> b!2172782 (= res!935046 (not (isPrefix!2141 lt!809970 lt!809968)))))

(assert (=> b!2172782 (isPrefix!2141 (take!233 lt!809968 lt!809984) lt!809968)))

(declare-fun lt!809971 () Unit!38263)

(assert (=> b!2172782 (= lt!809971 (lemmaTakeIsPrefix!56 lt!809968 lt!809984))))

(declare-fun b!2172783 () Bool)

(assert (=> b!2172783 (= e!1389551 e!1389544)))

(declare-fun res!935047 () Bool)

(assert (=> b!2172783 (=> (not res!935047) (not e!1389544))))

(declare-fun unfocusZipper!132 (List!25290) Regex!6025)

(assert (=> b!2172783 (= res!935047 (= (unfocusZipper!132 lt!809960) r!12534))))

(declare-fun toList!1208 ((InoxSet Context!3190)) List!25290)

(assert (=> b!2172783 (= lt!809960 (toList!1208 z!4055))))

(assert (= (and start!210750 res!935043) b!2172783))

(assert (= (and b!2172783 res!935047) b!2172778))

(assert (= (and b!2172778 res!935045) b!2172779))

(assert (= (and b!2172779 res!935053) b!2172770))

(assert (= (and b!2172770 res!935055) b!2172780))

(assert (= (and b!2172780 c!344365) b!2172765))

(assert (= (and b!2172780 (not c!344365)) b!2172773))

(assert (= (and b!2172780 (not res!935054)) b!2172777))

(assert (= (and b!2172780 (not res!935051)) b!2172775))

(assert (= (and b!2172780 res!935048) b!2172766))

(assert (= (and b!2172780 (not res!935056)) b!2172771))

(assert (= (and b!2172771 res!935050) b!2172767))

(assert (= (and b!2172771 (not res!935044)) b!2172774))

(assert (= (and b!2172774 (not res!935057)) b!2172769))

(assert (= (and b!2172769 (not res!935049)) b!2172782))

(assert (= (and b!2172782 (not res!935046)) b!2172763))

(assert (= (and b!2172763 (not res!935052)) b!2172762))

(get-info :version)

(assert (= (and start!210750 ((_ is ElementMatch!6025) r!12534)) b!2172760))

(assert (= (and start!210750 ((_ is Concat!10327) r!12534)) b!2172768))

(assert (= (and start!210750 ((_ is Star!6025) r!12534)) b!2172781))

(assert (= (and start!210750 ((_ is Union!6025) r!12534)) b!2172761))

(assert (= start!210750 b!2172772))

(assert (= start!210750 b!2172764))

(assert (= (and start!210750 condSetEmpty!18238) setIsEmpty!18238))

(assert (= (and start!210750 (not condSetEmpty!18238)) setNonEmpty!18238))

(assert (= setNonEmpty!18238 b!2172776))

(declare-fun m!2614173 () Bool)

(assert (=> b!2172767 m!2614173))

(declare-fun m!2614175 () Bool)

(assert (=> b!2172762 m!2614175))

(declare-fun m!2614177 () Bool)

(assert (=> b!2172772 m!2614177))

(declare-fun m!2614179 () Bool)

(assert (=> b!2172770 m!2614179))

(declare-fun m!2614181 () Bool)

(assert (=> setNonEmpty!18238 m!2614181))

(declare-fun m!2614183 () Bool)

(assert (=> b!2172769 m!2614183))

(declare-fun m!2614185 () Bool)

(assert (=> b!2172769 m!2614185))

(declare-fun m!2614187 () Bool)

(assert (=> b!2172780 m!2614187))

(declare-fun m!2614189 () Bool)

(assert (=> b!2172780 m!2614189))

(declare-fun m!2614191 () Bool)

(assert (=> b!2172780 m!2614191))

(declare-fun m!2614193 () Bool)

(assert (=> b!2172780 m!2614193))

(declare-fun m!2614195 () Bool)

(assert (=> b!2172780 m!2614195))

(declare-fun m!2614197 () Bool)

(assert (=> b!2172780 m!2614197))

(assert (=> b!2172780 m!2614191))

(declare-fun m!2614199 () Bool)

(assert (=> b!2172780 m!2614199))

(declare-fun m!2614201 () Bool)

(assert (=> b!2172780 m!2614201))

(declare-fun m!2614203 () Bool)

(assert (=> b!2172780 m!2614203))

(declare-fun m!2614205 () Bool)

(assert (=> b!2172780 m!2614205))

(declare-fun m!2614207 () Bool)

(assert (=> b!2172780 m!2614207))

(assert (=> b!2172780 m!2614189))

(declare-fun m!2614209 () Bool)

(assert (=> b!2172780 m!2614209))

(declare-fun m!2614211 () Bool)

(assert (=> b!2172780 m!2614211))

(declare-fun m!2614213 () Bool)

(assert (=> b!2172780 m!2614213))

(declare-fun m!2614215 () Bool)

(assert (=> b!2172780 m!2614215))

(declare-fun m!2614217 () Bool)

(assert (=> b!2172780 m!2614217))

(assert (=> b!2172780 m!2614207))

(declare-fun m!2614219 () Bool)

(assert (=> b!2172771 m!2614219))

(declare-fun m!2614221 () Bool)

(assert (=> b!2172779 m!2614221))

(declare-fun m!2614223 () Bool)

(assert (=> b!2172779 m!2614223))

(declare-fun m!2614225 () Bool)

(assert (=> b!2172779 m!2614225))

(declare-fun m!2614227 () Bool)

(assert (=> b!2172779 m!2614227))

(declare-fun m!2614229 () Bool)

(assert (=> b!2172779 m!2614229))

(declare-fun m!2614231 () Bool)

(assert (=> b!2172779 m!2614231))

(declare-fun m!2614233 () Bool)

(assert (=> b!2172779 m!2614233))

(declare-fun m!2614235 () Bool)

(assert (=> b!2172778 m!2614235))

(declare-fun m!2614237 () Bool)

(assert (=> b!2172778 m!2614237))

(declare-fun m!2614239 () Bool)

(assert (=> b!2172778 m!2614239))

(declare-fun m!2614241 () Bool)

(assert (=> b!2172783 m!2614241))

(declare-fun m!2614243 () Bool)

(assert (=> b!2172783 m!2614243))

(declare-fun m!2614245 () Bool)

(assert (=> b!2172775 m!2614245))

(declare-fun m!2614247 () Bool)

(assert (=> b!2172766 m!2614247))

(declare-fun m!2614249 () Bool)

(assert (=> start!210750 m!2614249))

(declare-fun m!2614251 () Bool)

(assert (=> start!210750 m!2614251))

(declare-fun m!2614253 () Bool)

(assert (=> start!210750 m!2614253))

(declare-fun m!2614255 () Bool)

(assert (=> b!2172774 m!2614255))

(declare-fun m!2614257 () Bool)

(assert (=> b!2172774 m!2614257))

(declare-fun m!2614259 () Bool)

(assert (=> b!2172774 m!2614259))

(declare-fun m!2614261 () Bool)

(assert (=> b!2172774 m!2614261))

(declare-fun m!2614263 () Bool)

(assert (=> b!2172774 m!2614263))

(declare-fun m!2614265 () Bool)

(assert (=> b!2172774 m!2614265))

(declare-fun m!2614267 () Bool)

(assert (=> b!2172764 m!2614267))

(declare-fun m!2614269 () Bool)

(assert (=> b!2172782 m!2614269))

(declare-fun m!2614271 () Bool)

(assert (=> b!2172782 m!2614271))

(assert (=> b!2172782 m!2614271))

(declare-fun m!2614273 () Bool)

(assert (=> b!2172782 m!2614273))

(declare-fun m!2614275 () Bool)

(assert (=> b!2172782 m!2614275))

(declare-fun m!2614277 () Bool)

(assert (=> b!2172763 m!2614277))

(assert (=> b!2172777 m!2614185))

(assert (=> b!2172777 m!2614185))

(declare-fun m!2614279 () Bool)

(assert (=> b!2172777 m!2614279))

(assert (=> b!2172777 m!2614279))

(declare-fun m!2614281 () Bool)

(assert (=> b!2172777 m!2614281))

(check-sat (not b!2172762) (not b!2172780) (not b!2172782) (not start!210750) (not b!2172777) (not b!2172775) (not b!2172768) (not b!2172781) (not b!2172772) (not b!2172774) (not b!2172761) (not b!2172763) (not b!2172767) (not b!2172778) (not b!2172779) (not b!2172769) (not setNonEmpty!18238) tp_is_empty!9657 (not b!2172776) (not b!2172771) (not b!2172766) (not b!2172770) (not b!2172783) (not b!2172764))
(check-sat)
(get-model)

(declare-fun d!650416 () Bool)

(declare-fun c!344376 () Bool)

(assert (=> d!650416 (= c!344376 ((_ is Node!8161) (c!344366 input!5540)))))

(declare-fun e!1389585 () Bool)

(assert (=> d!650416 (= (inv!33459 (c!344366 input!5540)) e!1389585)))

(declare-fun b!2172817 () Bool)

(declare-fun inv!33462 (Conc!8161) Bool)

(assert (=> b!2172817 (= e!1389585 (inv!33462 (c!344366 input!5540)))))

(declare-fun b!2172818 () Bool)

(declare-fun e!1389586 () Bool)

(assert (=> b!2172818 (= e!1389585 e!1389586)))

(declare-fun res!935075 () Bool)

(assert (=> b!2172818 (= res!935075 (not ((_ is Leaf!11941) (c!344366 input!5540))))))

(assert (=> b!2172818 (=> res!935075 e!1389586)))

(declare-fun b!2172819 () Bool)

(declare-fun inv!33463 (Conc!8161) Bool)

(assert (=> b!2172819 (= e!1389586 (inv!33463 (c!344366 input!5540)))))

(assert (= (and d!650416 c!344376) b!2172817))

(assert (= (and d!650416 (not c!344376)) b!2172818))

(assert (= (and b!2172818 (not res!935075)) b!2172819))

(declare-fun m!2614289 () Bool)

(assert (=> b!2172817 m!2614289))

(declare-fun m!2614291 () Bool)

(assert (=> b!2172819 m!2614291))

(assert (=> b!2172764 d!650416))

(declare-fun d!650420 () Bool)

(declare-fun lambda!81814 () Int)

(declare-fun forall!5170 (List!25289 Int) Bool)

(assert (=> d!650420 (= (inv!33460 setElem!18238) (forall!5170 (exprs!2095 setElem!18238) lambda!81814))))

(declare-fun bs!446988 () Bool)

(assert (= bs!446988 d!650420))

(declare-fun m!2614331 () Bool)

(assert (=> bs!446988 m!2614331))

(assert (=> setNonEmpty!18238 d!650420))

(declare-fun d!650436 () Bool)

(assert (=> d!650436 (= (matchR!2774 r!12534 lt!809973) (matchZipper!141 z!4055 lt!809973))))

(declare-fun lt!810002 () Unit!38263)

(declare-fun choose!12803 ((InoxSet Context!3190) List!25290 Regex!6025 List!25288) Unit!38263)

(assert (=> d!650436 (= lt!810002 (choose!12803 z!4055 lt!809960 r!12534 lt!809973))))

(assert (=> d!650436 (validRegex!2301 r!12534)))

(assert (=> d!650436 (= (theoremZipperRegexEquiv!51 z!4055 lt!809960 r!12534 lt!809973) lt!810002)))

(declare-fun bs!446989 () Bool)

(assert (= bs!446989 d!650436))

(assert (=> bs!446989 m!2614257))

(assert (=> bs!446989 m!2614217))

(declare-fun m!2614333 () Bool)

(assert (=> bs!446989 m!2614333))

(assert (=> bs!446989 m!2614249))

(assert (=> b!2172774 d!650436))

(declare-fun d!650438 () Bool)

(assert (=> d!650438 (= (matchR!2774 r!12534 (_1!14857 lt!809963)) (matchZipper!141 z!4055 (_1!14857 lt!809963)))))

(declare-fun lt!810003 () Unit!38263)

(assert (=> d!650438 (= lt!810003 (choose!12803 z!4055 lt!809960 r!12534 (_1!14857 lt!809963)))))

(assert (=> d!650438 (validRegex!2301 r!12534)))

(assert (=> d!650438 (= (theoremZipperRegexEquiv!51 z!4055 lt!809960 r!12534 (_1!14857 lt!809963)) lt!810003)))

(declare-fun bs!446990 () Bool)

(assert (= bs!446990 d!650438))

(assert (=> bs!446990 m!2614219))

(assert (=> bs!446990 m!2614261))

(declare-fun m!2614335 () Bool)

(assert (=> bs!446990 m!2614335))

(assert (=> bs!446990 m!2614249))

(assert (=> b!2172774 d!650438))

(declare-fun d!650440 () Bool)

(declare-fun lt!810006 () Int)

(assert (=> d!650440 (>= lt!810006 0)))

(declare-fun e!1389622 () Int)

(assert (=> d!650440 (= lt!810006 e!1389622)))

(declare-fun c!344403 () Bool)

(assert (=> d!650440 (= c!344403 ((_ is Nil!25204) (_1!14857 lt!809963)))))

(assert (=> d!650440 (= (size!19688 (_1!14857 lt!809963)) lt!810006)))

(declare-fun b!2172881 () Bool)

(assert (=> b!2172881 (= e!1389622 0)))

(declare-fun b!2172882 () Bool)

(assert (=> b!2172882 (= e!1389622 (+ 1 (size!19688 (t!197856 (_1!14857 lt!809963)))))))

(assert (= (and d!650440 c!344403) b!2172881))

(assert (= (and d!650440 (not c!344403)) b!2172882))

(declare-fun m!2614337 () Bool)

(assert (=> b!2172882 m!2614337))

(assert (=> b!2172774 d!650440))

(declare-fun d!650442 () Bool)

(declare-fun c!344406 () Bool)

(assert (=> d!650442 (= c!344406 (isEmpty!14460 (_1!14857 lt!809963)))))

(declare-fun e!1389625 () Bool)

(assert (=> d!650442 (= (matchZipper!141 z!4055 (_1!14857 lt!809963)) e!1389625)))

(declare-fun b!2172887 () Bool)

(assert (=> b!2172887 (= e!1389625 (nullableZipper!305 z!4055))))

(declare-fun b!2172888 () Bool)

(declare-fun derivationStepZipper!127 ((InoxSet Context!3190) C!12196) (InoxSet Context!3190))

(declare-fun head!4651 (List!25288) C!12196)

(declare-fun tail!3123 (List!25288) List!25288)

(assert (=> b!2172888 (= e!1389625 (matchZipper!141 (derivationStepZipper!127 z!4055 (head!4651 (_1!14857 lt!809963))) (tail!3123 (_1!14857 lt!809963))))))

(assert (= (and d!650442 c!344406) b!2172887))

(assert (= (and d!650442 (not c!344406)) b!2172888))

(assert (=> d!650442 m!2614173))

(assert (=> b!2172887 m!2614201))

(declare-fun m!2614339 () Bool)

(assert (=> b!2172888 m!2614339))

(assert (=> b!2172888 m!2614339))

(declare-fun m!2614341 () Bool)

(assert (=> b!2172888 m!2614341))

(declare-fun m!2614343 () Bool)

(assert (=> b!2172888 m!2614343))

(assert (=> b!2172888 m!2614341))

(assert (=> b!2172888 m!2614343))

(declare-fun m!2614345 () Bool)

(assert (=> b!2172888 m!2614345))

(assert (=> b!2172774 d!650442))

(declare-fun b!2172917 () Bool)

(declare-fun e!1389643 () Bool)

(assert (=> b!2172917 (= e!1389643 (not (= (head!4651 lt!809973) (c!344367 r!12534))))))

(declare-fun b!2172918 () Bool)

(declare-fun res!935101 () Bool)

(declare-fun e!1389642 () Bool)

(assert (=> b!2172918 (=> res!935101 e!1389642)))

(declare-fun e!1389640 () Bool)

(assert (=> b!2172918 (= res!935101 e!1389640)))

(declare-fun res!935107 () Bool)

(assert (=> b!2172918 (=> (not res!935107) (not e!1389640))))

(declare-fun lt!810009 () Bool)

(assert (=> b!2172918 (= res!935107 lt!810009)))

(declare-fun b!2172919 () Bool)

(declare-fun e!1389641 () Bool)

(declare-fun call!130351 () Bool)

(assert (=> b!2172919 (= e!1389641 (= lt!810009 call!130351))))

(declare-fun b!2172921 () Bool)

(declare-fun res!935103 () Bool)

(assert (=> b!2172921 (=> (not res!935103) (not e!1389640))))

(assert (=> b!2172921 (= res!935103 (isEmpty!14460 (tail!3123 lt!809973)))))

(declare-fun b!2172922 () Bool)

(declare-fun e!1389646 () Bool)

(assert (=> b!2172922 (= e!1389646 e!1389643)))

(declare-fun res!935104 () Bool)

(assert (=> b!2172922 (=> res!935104 e!1389643)))

(assert (=> b!2172922 (= res!935104 call!130351)))

(declare-fun b!2172923 () Bool)

(declare-fun e!1389645 () Bool)

(assert (=> b!2172923 (= e!1389641 e!1389645)))

(declare-fun c!344414 () Bool)

(assert (=> b!2172923 (= c!344414 ((_ is EmptyLang!6025) r!12534))))

(declare-fun b!2172924 () Bool)

(assert (=> b!2172924 (= e!1389645 (not lt!810009))))

(declare-fun b!2172925 () Bool)

(declare-fun e!1389644 () Bool)

(declare-fun derivativeStep!1441 (Regex!6025 C!12196) Regex!6025)

(assert (=> b!2172925 (= e!1389644 (matchR!2774 (derivativeStep!1441 r!12534 (head!4651 lt!809973)) (tail!3123 lt!809973)))))

(declare-fun b!2172926 () Bool)

(declare-fun nullable!1699 (Regex!6025) Bool)

(assert (=> b!2172926 (= e!1389644 (nullable!1699 r!12534))))

(declare-fun bm!130346 () Bool)

(assert (=> bm!130346 (= call!130351 (isEmpty!14460 lt!809973))))

(declare-fun b!2172927 () Bool)

(declare-fun res!935102 () Bool)

(assert (=> b!2172927 (=> (not res!935102) (not e!1389640))))

(assert (=> b!2172927 (= res!935102 (not call!130351))))

(declare-fun b!2172928 () Bool)

(assert (=> b!2172928 (= e!1389640 (= (head!4651 lt!809973) (c!344367 r!12534)))))

(declare-fun d!650444 () Bool)

(assert (=> d!650444 e!1389641))

(declare-fun c!344415 () Bool)

(assert (=> d!650444 (= c!344415 ((_ is EmptyExpr!6025) r!12534))))

(assert (=> d!650444 (= lt!810009 e!1389644)))

(declare-fun c!344413 () Bool)

(assert (=> d!650444 (= c!344413 (isEmpty!14460 lt!809973))))

(assert (=> d!650444 (validRegex!2301 r!12534)))

(assert (=> d!650444 (= (matchR!2774 r!12534 lt!809973) lt!810009)))

(declare-fun b!2172920 () Bool)

(declare-fun res!935105 () Bool)

(assert (=> b!2172920 (=> res!935105 e!1389642)))

(assert (=> b!2172920 (= res!935105 (not ((_ is ElementMatch!6025) r!12534)))))

(assert (=> b!2172920 (= e!1389645 e!1389642)))

(declare-fun b!2172929 () Bool)

(declare-fun res!935106 () Bool)

(assert (=> b!2172929 (=> res!935106 e!1389643)))

(assert (=> b!2172929 (= res!935106 (not (isEmpty!14460 (tail!3123 lt!809973))))))

(declare-fun b!2172930 () Bool)

(assert (=> b!2172930 (= e!1389642 e!1389646)))

(declare-fun res!935108 () Bool)

(assert (=> b!2172930 (=> (not res!935108) (not e!1389646))))

(assert (=> b!2172930 (= res!935108 (not lt!810009))))

(assert (= (and d!650444 c!344413) b!2172926))

(assert (= (and d!650444 (not c!344413)) b!2172925))

(assert (= (and d!650444 c!344415) b!2172919))

(assert (= (and d!650444 (not c!344415)) b!2172923))

(assert (= (and b!2172923 c!344414) b!2172924))

(assert (= (and b!2172923 (not c!344414)) b!2172920))

(assert (= (and b!2172920 (not res!935105)) b!2172918))

(assert (= (and b!2172918 res!935107) b!2172927))

(assert (= (and b!2172927 res!935102) b!2172921))

(assert (= (and b!2172921 res!935103) b!2172928))

(assert (= (and b!2172918 (not res!935101)) b!2172930))

(assert (= (and b!2172930 res!935108) b!2172922))

(assert (= (and b!2172922 (not res!935104)) b!2172929))

(assert (= (and b!2172929 (not res!935106)) b!2172917))

(assert (= (or b!2172919 b!2172922 b!2172927) bm!130346))

(declare-fun m!2614347 () Bool)

(assert (=> bm!130346 m!2614347))

(assert (=> d!650444 m!2614347))

(assert (=> d!650444 m!2614249))

(declare-fun m!2614349 () Bool)

(assert (=> b!2172917 m!2614349))

(assert (=> b!2172925 m!2614349))

(assert (=> b!2172925 m!2614349))

(declare-fun m!2614351 () Bool)

(assert (=> b!2172925 m!2614351))

(declare-fun m!2614353 () Bool)

(assert (=> b!2172925 m!2614353))

(assert (=> b!2172925 m!2614351))

(assert (=> b!2172925 m!2614353))

(declare-fun m!2614355 () Bool)

(assert (=> b!2172925 m!2614355))

(assert (=> b!2172929 m!2614353))

(assert (=> b!2172929 m!2614353))

(declare-fun m!2614357 () Bool)

(assert (=> b!2172929 m!2614357))

(assert (=> b!2172921 m!2614353))

(assert (=> b!2172921 m!2614353))

(assert (=> b!2172921 m!2614357))

(assert (=> b!2172928 m!2614349))

(declare-fun m!2614359 () Bool)

(assert (=> b!2172926 m!2614359))

(assert (=> b!2172774 d!650444))

(declare-fun d!650446 () Bool)

(declare-fun lt!810012 () Int)

(assert (=> d!650446 (= lt!810012 (size!19688 (list!9664 (_1!14858 lt!809976))))))

(declare-fun size!19690 (Conc!8161) Int)

(assert (=> d!650446 (= lt!810012 (size!19690 (c!344366 (_1!14858 lt!809976))))))

(assert (=> d!650446 (= (size!19689 (_1!14858 lt!809976)) lt!810012)))

(declare-fun bs!446992 () Bool)

(assert (= bs!446992 d!650446))

(assert (=> bs!446992 m!2614233))

(assert (=> bs!446992 m!2614233))

(declare-fun m!2614363 () Bool)

(assert (=> bs!446992 m!2614363))

(declare-fun m!2614365 () Bool)

(assert (=> bs!446992 m!2614365))

(assert (=> b!2172774 d!650446))

(declare-fun b!2172931 () Bool)

(declare-fun e!1389650 () Bool)

(assert (=> b!2172931 (= e!1389650 (not (= (head!4651 (_1!14857 lt!809983)) (c!344367 r!12534))))))

(declare-fun b!2172932 () Bool)

(declare-fun res!935109 () Bool)

(declare-fun e!1389649 () Bool)

(assert (=> b!2172932 (=> res!935109 e!1389649)))

(declare-fun e!1389647 () Bool)

(assert (=> b!2172932 (= res!935109 e!1389647)))

(declare-fun res!935115 () Bool)

(assert (=> b!2172932 (=> (not res!935115) (not e!1389647))))

(declare-fun lt!810013 () Bool)

(assert (=> b!2172932 (= res!935115 lt!810013)))

(declare-fun b!2172933 () Bool)

(declare-fun e!1389648 () Bool)

(declare-fun call!130352 () Bool)

(assert (=> b!2172933 (= e!1389648 (= lt!810013 call!130352))))

(declare-fun b!2172935 () Bool)

(declare-fun res!935111 () Bool)

(assert (=> b!2172935 (=> (not res!935111) (not e!1389647))))

(assert (=> b!2172935 (= res!935111 (isEmpty!14460 (tail!3123 (_1!14857 lt!809983))))))

(declare-fun b!2172936 () Bool)

(declare-fun e!1389653 () Bool)

(assert (=> b!2172936 (= e!1389653 e!1389650)))

(declare-fun res!935112 () Bool)

(assert (=> b!2172936 (=> res!935112 e!1389650)))

(assert (=> b!2172936 (= res!935112 call!130352)))

(declare-fun b!2172937 () Bool)

(declare-fun e!1389652 () Bool)

(assert (=> b!2172937 (= e!1389648 e!1389652)))

(declare-fun c!344417 () Bool)

(assert (=> b!2172937 (= c!344417 ((_ is EmptyLang!6025) r!12534))))

(declare-fun b!2172938 () Bool)

(assert (=> b!2172938 (= e!1389652 (not lt!810013))))

(declare-fun b!2172939 () Bool)

(declare-fun e!1389651 () Bool)

(assert (=> b!2172939 (= e!1389651 (matchR!2774 (derivativeStep!1441 r!12534 (head!4651 (_1!14857 lt!809983))) (tail!3123 (_1!14857 lt!809983))))))

(declare-fun b!2172940 () Bool)

(assert (=> b!2172940 (= e!1389651 (nullable!1699 r!12534))))

(declare-fun bm!130347 () Bool)

(assert (=> bm!130347 (= call!130352 (isEmpty!14460 (_1!14857 lt!809983)))))

(declare-fun b!2172941 () Bool)

(declare-fun res!935110 () Bool)

(assert (=> b!2172941 (=> (not res!935110) (not e!1389647))))

(assert (=> b!2172941 (= res!935110 (not call!130352))))

(declare-fun b!2172942 () Bool)

(assert (=> b!2172942 (= e!1389647 (= (head!4651 (_1!14857 lt!809983)) (c!344367 r!12534)))))

(declare-fun d!650450 () Bool)

(assert (=> d!650450 e!1389648))

(declare-fun c!344418 () Bool)

(assert (=> d!650450 (= c!344418 ((_ is EmptyExpr!6025) r!12534))))

(assert (=> d!650450 (= lt!810013 e!1389651)))

(declare-fun c!344416 () Bool)

(assert (=> d!650450 (= c!344416 (isEmpty!14460 (_1!14857 lt!809983)))))

(assert (=> d!650450 (validRegex!2301 r!12534)))

(assert (=> d!650450 (= (matchR!2774 r!12534 (_1!14857 lt!809983)) lt!810013)))

(declare-fun b!2172934 () Bool)

(declare-fun res!935113 () Bool)

(assert (=> b!2172934 (=> res!935113 e!1389649)))

(assert (=> b!2172934 (= res!935113 (not ((_ is ElementMatch!6025) r!12534)))))

(assert (=> b!2172934 (= e!1389652 e!1389649)))

(declare-fun b!2172943 () Bool)

(declare-fun res!935114 () Bool)

(assert (=> b!2172943 (=> res!935114 e!1389650)))

(assert (=> b!2172943 (= res!935114 (not (isEmpty!14460 (tail!3123 (_1!14857 lt!809983)))))))

(declare-fun b!2172944 () Bool)

(assert (=> b!2172944 (= e!1389649 e!1389653)))

(declare-fun res!935116 () Bool)

(assert (=> b!2172944 (=> (not res!935116) (not e!1389653))))

(assert (=> b!2172944 (= res!935116 (not lt!810013))))

(assert (= (and d!650450 c!344416) b!2172940))

(assert (= (and d!650450 (not c!344416)) b!2172939))

(assert (= (and d!650450 c!344418) b!2172933))

(assert (= (and d!650450 (not c!344418)) b!2172937))

(assert (= (and b!2172937 c!344417) b!2172938))

(assert (= (and b!2172937 (not c!344417)) b!2172934))

(assert (= (and b!2172934 (not res!935113)) b!2172932))

(assert (= (and b!2172932 res!935115) b!2172941))

(assert (= (and b!2172941 res!935110) b!2172935))

(assert (= (and b!2172935 res!935111) b!2172942))

(assert (= (and b!2172932 (not res!935109)) b!2172944))

(assert (= (and b!2172944 res!935116) b!2172936))

(assert (= (and b!2172936 (not res!935112)) b!2172943))

(assert (= (and b!2172943 (not res!935114)) b!2172931))

(assert (= (or b!2172933 b!2172936 b!2172941) bm!130347))

(assert (=> bm!130347 m!2614195))

(assert (=> d!650450 m!2614195))

(assert (=> d!650450 m!2614249))

(declare-fun m!2614367 () Bool)

(assert (=> b!2172931 m!2614367))

(assert (=> b!2172939 m!2614367))

(assert (=> b!2172939 m!2614367))

(declare-fun m!2614369 () Bool)

(assert (=> b!2172939 m!2614369))

(declare-fun m!2614371 () Bool)

(assert (=> b!2172939 m!2614371))

(assert (=> b!2172939 m!2614369))

(assert (=> b!2172939 m!2614371))

(declare-fun m!2614373 () Bool)

(assert (=> b!2172939 m!2614373))

(assert (=> b!2172943 m!2614371))

(assert (=> b!2172943 m!2614371))

(declare-fun m!2614375 () Bool)

(assert (=> b!2172943 m!2614375))

(assert (=> b!2172935 m!2614371))

(assert (=> b!2172935 m!2614371))

(assert (=> b!2172935 m!2614375))

(assert (=> b!2172942 m!2614367))

(assert (=> b!2172940 m!2614359))

(assert (=> b!2172775 d!650450))

(declare-fun d!650454 () Bool)

(declare-fun lt!810019 () Bool)

(assert (=> d!650454 (= lt!810019 (isEmpty!14460 (list!9664 (_1!14858 lt!809976))))))

(declare-fun isEmpty!14462 (Conc!8161) Bool)

(assert (=> d!650454 (= lt!810019 (isEmpty!14462 (c!344366 (_1!14858 lt!809976))))))

(assert (=> d!650454 (= (isEmpty!14459 (_1!14858 lt!809976)) lt!810019)))

(declare-fun bs!446994 () Bool)

(assert (= bs!446994 d!650454))

(assert (=> bs!446994 m!2614233))

(assert (=> bs!446994 m!2614233))

(declare-fun m!2614381 () Bool)

(assert (=> bs!446994 m!2614381))

(declare-fun m!2614383 () Bool)

(assert (=> bs!446994 m!2614383))

(assert (=> b!2172766 d!650454))

(declare-fun b!2172991 () Bool)

(declare-fun res!935145 () Bool)

(declare-fun e!1389687 () Bool)

(assert (=> b!2172991 (=> res!935145 e!1389687)))

(assert (=> b!2172991 (= res!935145 (not ((_ is Concat!10327) r!12534)))))

(declare-fun e!1389684 () Bool)

(assert (=> b!2172991 (= e!1389684 e!1389687)))

(declare-fun bm!130356 () Bool)

(declare-fun call!130361 () Bool)

(declare-fun call!130362 () Bool)

(assert (=> bm!130356 (= call!130361 call!130362)))

(declare-fun b!2172992 () Bool)

(declare-fun res!935147 () Bool)

(declare-fun e!1389682 () Bool)

(assert (=> b!2172992 (=> (not res!935147) (not e!1389682))))

(assert (=> b!2172992 (= res!935147 call!130361)))

(assert (=> b!2172992 (= e!1389684 e!1389682)))

(declare-fun b!2172993 () Bool)

(declare-fun e!1389688 () Bool)

(assert (=> b!2172993 (= e!1389688 call!130362)))

(declare-fun bm!130357 () Bool)

(declare-fun c!344430 () Bool)

(declare-fun c!344429 () Bool)

(assert (=> bm!130357 (= call!130362 (validRegex!2301 (ite c!344429 (reg!6354 r!12534) (ite c!344430 (regOne!12563 r!12534) (regTwo!12562 r!12534)))))))

(declare-fun b!2172994 () Bool)

(declare-fun e!1389686 () Bool)

(assert (=> b!2172994 (= e!1389686 e!1389684)))

(assert (=> b!2172994 (= c!344430 ((_ is Union!6025) r!12534))))

(declare-fun d!650456 () Bool)

(declare-fun res!935143 () Bool)

(declare-fun e!1389683 () Bool)

(assert (=> d!650456 (=> res!935143 e!1389683)))

(assert (=> d!650456 (= res!935143 ((_ is ElementMatch!6025) r!12534))))

(assert (=> d!650456 (= (validRegex!2301 r!12534) e!1389683)))

(declare-fun b!2172995 () Bool)

(declare-fun e!1389685 () Bool)

(assert (=> b!2172995 (= e!1389687 e!1389685)))

(declare-fun res!935144 () Bool)

(assert (=> b!2172995 (=> (not res!935144) (not e!1389685))))

(declare-fun call!130363 () Bool)

(assert (=> b!2172995 (= res!935144 call!130363)))

(declare-fun b!2172996 () Bool)

(assert (=> b!2172996 (= e!1389683 e!1389686)))

(assert (=> b!2172996 (= c!344429 ((_ is Star!6025) r!12534))))

(declare-fun b!2172997 () Bool)

(assert (=> b!2172997 (= e!1389685 call!130361)))

(declare-fun b!2172998 () Bool)

(assert (=> b!2172998 (= e!1389682 call!130363)))

(declare-fun b!2172999 () Bool)

(assert (=> b!2172999 (= e!1389686 e!1389688)))

(declare-fun res!935146 () Bool)

(assert (=> b!2172999 (= res!935146 (not (nullable!1699 (reg!6354 r!12534))))))

(assert (=> b!2172999 (=> (not res!935146) (not e!1389688))))

(declare-fun bm!130358 () Bool)

(assert (=> bm!130358 (= call!130363 (validRegex!2301 (ite c!344430 (regTwo!12563 r!12534) (regOne!12562 r!12534))))))

(assert (= (and d!650456 (not res!935143)) b!2172996))

(assert (= (and b!2172996 c!344429) b!2172999))

(assert (= (and b!2172996 (not c!344429)) b!2172994))

(assert (= (and b!2172999 res!935146) b!2172993))

(assert (= (and b!2172994 c!344430) b!2172992))

(assert (= (and b!2172994 (not c!344430)) b!2172991))

(assert (= (and b!2172992 res!935147) b!2172998))

(assert (= (and b!2172991 (not res!935145)) b!2172995))

(assert (= (and b!2172995 res!935144) b!2172997))

(assert (= (or b!2172998 b!2172995) bm!130358))

(assert (= (or b!2172992 b!2172997) bm!130356))

(assert (= (or b!2172993 bm!130356) bm!130357))

(declare-fun m!2614385 () Bool)

(assert (=> bm!130357 m!2614385))

(declare-fun m!2614387 () Bool)

(assert (=> b!2172999 m!2614387))

(declare-fun m!2614389 () Bool)

(assert (=> bm!130358 m!2614389))

(assert (=> start!210750 d!650456))

(declare-fun d!650458 () Bool)

(declare-fun isBalanced!2532 (Conc!8161) Bool)

(assert (=> d!650458 (= (inv!33461 totalInput!977) (isBalanced!2532 (c!344366 totalInput!977)))))

(declare-fun bs!446995 () Bool)

(assert (= bs!446995 d!650458))

(declare-fun m!2614391 () Bool)

(assert (=> bs!446995 m!2614391))

(assert (=> start!210750 d!650458))

(declare-fun d!650460 () Bool)

(assert (=> d!650460 (= (inv!33461 input!5540) (isBalanced!2532 (c!344366 input!5540)))))

(declare-fun bs!446996 () Bool)

(assert (= bs!446996 d!650460))

(declare-fun m!2614393 () Bool)

(assert (=> bs!446996 m!2614393))

(assert (=> start!210750 d!650460))

(declare-fun c!344431 () Bool)

(declare-fun d!650462 () Bool)

(assert (=> d!650462 (= c!344431 (isEmpty!14460 (take!233 (drop!1243 lt!809965 lt!809974) lt!809972)))))

(declare-fun e!1389689 () Bool)

(assert (=> d!650462 (= (matchZipper!141 z!4055 (take!233 (drop!1243 lt!809965 lt!809974) lt!809972)) e!1389689)))

(declare-fun b!2173000 () Bool)

(assert (=> b!2173000 (= e!1389689 (nullableZipper!305 z!4055))))

(declare-fun b!2173001 () Bool)

(assert (=> b!2173001 (= e!1389689 (matchZipper!141 (derivationStepZipper!127 z!4055 (head!4651 (take!233 (drop!1243 lt!809965 lt!809974) lt!809972))) (tail!3123 (take!233 (drop!1243 lt!809965 lt!809974) lt!809972))))))

(assert (= (and d!650462 c!344431) b!2173000))

(assert (= (and d!650462 (not c!344431)) b!2173001))

(assert (=> d!650462 m!2614279))

(declare-fun m!2614395 () Bool)

(assert (=> d!650462 m!2614395))

(assert (=> b!2173000 m!2614201))

(assert (=> b!2173001 m!2614279))

(declare-fun m!2614397 () Bool)

(assert (=> b!2173001 m!2614397))

(assert (=> b!2173001 m!2614397))

(declare-fun m!2614399 () Bool)

(assert (=> b!2173001 m!2614399))

(assert (=> b!2173001 m!2614279))

(declare-fun m!2614401 () Bool)

(assert (=> b!2173001 m!2614401))

(assert (=> b!2173001 m!2614399))

(assert (=> b!2173001 m!2614401))

(declare-fun m!2614403 () Bool)

(assert (=> b!2173001 m!2614403))

(assert (=> b!2172777 d!650462))

(declare-fun b!2173038 () Bool)

(declare-fun e!1389712 () Int)

(declare-fun e!1389710 () Int)

(assert (=> b!2173038 (= e!1389712 e!1389710)))

(declare-fun c!344445 () Bool)

(assert (=> b!2173038 (= c!344445 (>= lt!809972 (size!19688 (drop!1243 lt!809965 lt!809974))))))

(declare-fun b!2173039 () Bool)

(assert (=> b!2173039 (= e!1389710 (size!19688 (drop!1243 lt!809965 lt!809974)))))

(declare-fun b!2173040 () Bool)

(declare-fun e!1389709 () Bool)

(declare-fun lt!810026 () List!25288)

(assert (=> b!2173040 (= e!1389709 (= (size!19688 lt!810026) e!1389712))))

(declare-fun c!344446 () Bool)

(assert (=> b!2173040 (= c!344446 (<= lt!809972 0))))

(declare-fun b!2173041 () Bool)

(declare-fun e!1389711 () List!25288)

(assert (=> b!2173041 (= e!1389711 Nil!25204)))

(declare-fun b!2173042 () Bool)

(assert (=> b!2173042 (= e!1389712 0)))

(declare-fun d!650464 () Bool)

(assert (=> d!650464 e!1389709))

(declare-fun res!935158 () Bool)

(assert (=> d!650464 (=> (not res!935158) (not e!1389709))))

(declare-fun content!3424 (List!25288) (InoxSet C!12196))

(assert (=> d!650464 (= res!935158 (= ((_ map implies) (content!3424 lt!810026) (content!3424 (drop!1243 lt!809965 lt!809974))) ((as const (InoxSet C!12196)) true)))))

(assert (=> d!650464 (= lt!810026 e!1389711)))

(declare-fun c!344447 () Bool)

(assert (=> d!650464 (= c!344447 (or ((_ is Nil!25204) (drop!1243 lt!809965 lt!809974)) (<= lt!809972 0)))))

(assert (=> d!650464 (= (take!233 (drop!1243 lt!809965 lt!809974) lt!809972) lt!810026)))

(declare-fun b!2173043 () Bool)

(assert (=> b!2173043 (= e!1389711 (Cons!25204 (h!30605 (drop!1243 lt!809965 lt!809974)) (take!233 (t!197856 (drop!1243 lt!809965 lt!809974)) (- lt!809972 1))))))

(declare-fun b!2173044 () Bool)

(assert (=> b!2173044 (= e!1389710 lt!809972)))

(assert (= (and d!650464 c!344447) b!2173041))

(assert (= (and d!650464 (not c!344447)) b!2173043))

(assert (= (and d!650464 res!935158) b!2173040))

(assert (= (and b!2173040 c!344446) b!2173042))

(assert (= (and b!2173040 (not c!344446)) b!2173038))

(assert (= (and b!2173038 c!344445) b!2173039))

(assert (= (and b!2173038 (not c!344445)) b!2173044))

(declare-fun m!2614429 () Bool)

(assert (=> b!2173040 m!2614429))

(assert (=> b!2173038 m!2614185))

(declare-fun m!2614431 () Bool)

(assert (=> b!2173038 m!2614431))

(declare-fun m!2614433 () Bool)

(assert (=> b!2173043 m!2614433))

(assert (=> b!2173039 m!2614185))

(assert (=> b!2173039 m!2614431))

(declare-fun m!2614435 () Bool)

(assert (=> d!650464 m!2614435))

(assert (=> d!650464 m!2614185))

(declare-fun m!2614437 () Bool)

(assert (=> d!650464 m!2614437))

(assert (=> b!2172777 d!650464))

(declare-fun b!2173063 () Bool)

(declare-fun e!1389724 () Bool)

(declare-fun lt!810032 () List!25288)

(declare-fun e!1389723 () Int)

(assert (=> b!2173063 (= e!1389724 (= (size!19688 lt!810032) e!1389723))))

(declare-fun c!344456 () Bool)

(assert (=> b!2173063 (= c!344456 (<= lt!809974 0))))

(declare-fun b!2173064 () Bool)

(declare-fun e!1389727 () List!25288)

(assert (=> b!2173064 (= e!1389727 lt!809965)))

(declare-fun bm!130362 () Bool)

(declare-fun call!130367 () Int)

(assert (=> bm!130362 (= call!130367 (size!19688 lt!809965))))

(declare-fun b!2173065 () Bool)

(declare-fun e!1389726 () Int)

(assert (=> b!2173065 (= e!1389726 (- call!130367 lt!809974))))

(declare-fun b!2173066 () Bool)

(declare-fun e!1389725 () List!25288)

(assert (=> b!2173066 (= e!1389725 e!1389727)))

(declare-fun c!344458 () Bool)

(assert (=> b!2173066 (= c!344458 (<= lt!809974 0))))

(declare-fun b!2173067 () Bool)

(assert (=> b!2173067 (= e!1389723 e!1389726)))

(declare-fun c!344459 () Bool)

(assert (=> b!2173067 (= c!344459 (>= lt!809974 call!130367))))

(declare-fun b!2173068 () Bool)

(assert (=> b!2173068 (= e!1389723 call!130367)))

(declare-fun b!2173069 () Bool)

(assert (=> b!2173069 (= e!1389727 (drop!1243 (t!197856 lt!809965) (- lt!809974 1)))))

(declare-fun d!650472 () Bool)

(assert (=> d!650472 e!1389724))

(declare-fun res!935161 () Bool)

(assert (=> d!650472 (=> (not res!935161) (not e!1389724))))

(assert (=> d!650472 (= res!935161 (= ((_ map implies) (content!3424 lt!810032) (content!3424 lt!809965)) ((as const (InoxSet C!12196)) true)))))

(assert (=> d!650472 (= lt!810032 e!1389725)))

(declare-fun c!344457 () Bool)

(assert (=> d!650472 (= c!344457 ((_ is Nil!25204) lt!809965))))

(assert (=> d!650472 (= (drop!1243 lt!809965 lt!809974) lt!810032)))

(declare-fun b!2173070 () Bool)

(assert (=> b!2173070 (= e!1389726 0)))

(declare-fun b!2173071 () Bool)

(assert (=> b!2173071 (= e!1389725 Nil!25204)))

(assert (= (and d!650472 c!344457) b!2173071))

(assert (= (and d!650472 (not c!344457)) b!2173066))

(assert (= (and b!2173066 c!344458) b!2173064))

(assert (= (and b!2173066 (not c!344458)) b!2173069))

(assert (= (and d!650472 res!935161) b!2173063))

(assert (= (and b!2173063 c!344456) b!2173068))

(assert (= (and b!2173063 (not c!344456)) b!2173067))

(assert (= (and b!2173067 c!344459) b!2173070))

(assert (= (and b!2173067 (not c!344459)) b!2173065))

(assert (= (or b!2173068 b!2173067 b!2173065) bm!130362))

(declare-fun m!2614443 () Bool)

(assert (=> b!2173063 m!2614443))

(declare-fun m!2614445 () Bool)

(assert (=> bm!130362 m!2614445))

(declare-fun m!2614447 () Bool)

(assert (=> b!2173069 m!2614447))

(declare-fun m!2614449 () Bool)

(assert (=> d!650472 m!2614449))

(declare-fun m!2614451 () Bool)

(assert (=> d!650472 m!2614451))

(assert (=> b!2172777 d!650472))

(declare-fun d!650476 () Bool)

(assert (=> d!650476 (= (isEmpty!14460 (_1!14857 lt!809963)) ((_ is Nil!25204) (_1!14857 lt!809963)))))

(assert (=> b!2172767 d!650476))

(declare-fun d!650478 () Bool)

(declare-fun e!1389730 () Bool)

(assert (=> d!650478 e!1389730))

(declare-fun res!935164 () Bool)

(assert (=> d!650478 (=> res!935164 e!1389730)))

(declare-fun lt!810035 () Bool)

(assert (=> d!650478 (= res!935164 (not lt!810035))))

(assert (=> d!650478 (= lt!810035 (= lt!809968 (drop!1243 lt!809965 (- (size!19688 lt!809965) (size!19688 lt!809968)))))))

(assert (=> d!650478 (= (isSuffix!692 lt!809968 lt!809965) lt!810035)))

(declare-fun b!2173074 () Bool)

(assert (=> b!2173074 (= e!1389730 (>= (size!19688 lt!809965) (size!19688 lt!809968)))))

(assert (= (and d!650478 (not res!935164)) b!2173074))

(assert (=> d!650478 m!2614445))

(assert (=> d!650478 m!2614189))

(declare-fun m!2614453 () Bool)

(assert (=> d!650478 m!2614453))

(assert (=> b!2173074 m!2614445))

(assert (=> b!2173074 m!2614189))

(assert (=> b!2172778 d!650478))

(declare-fun d!650480 () Bool)

(declare-fun list!9665 (Conc!8161) List!25288)

(assert (=> d!650480 (= (list!9664 totalInput!977) (list!9665 (c!344366 totalInput!977)))))

(declare-fun bs!446998 () Bool)

(assert (= bs!446998 d!650480))

(declare-fun m!2614455 () Bool)

(assert (=> bs!446998 m!2614455))

(assert (=> b!2172778 d!650480))

(declare-fun d!650482 () Bool)

(assert (=> d!650482 (= (list!9664 input!5540) (list!9665 (c!344366 input!5540)))))

(declare-fun bs!446999 () Bool)

(assert (= bs!446999 d!650482))

(declare-fun m!2614457 () Bool)

(assert (=> bs!446999 m!2614457))

(assert (=> b!2172778 d!650482))

(declare-fun lt!810040 () List!25288)

(declare-fun b!2173092 () Bool)

(declare-fun e!1389740 () Bool)

(assert (=> b!2173092 (= e!1389740 (or (not (= lt!809977 Nil!25204)) (= lt!810040 lt!809973)))))

(declare-fun d!650484 () Bool)

(assert (=> d!650484 e!1389740))

(declare-fun res!935172 () Bool)

(assert (=> d!650484 (=> (not res!935172) (not e!1389740))))

(assert (=> d!650484 (= res!935172 (= (content!3424 lt!810040) ((_ map or) (content!3424 lt!809973) (content!3424 lt!809977))))))

(declare-fun e!1389739 () List!25288)

(assert (=> d!650484 (= lt!810040 e!1389739)))

(declare-fun c!344464 () Bool)

(assert (=> d!650484 (= c!344464 ((_ is Nil!25204) lt!809973))))

(assert (=> d!650484 (= (++!6384 lt!809973 lt!809977) lt!810040)))

(declare-fun b!2173091 () Bool)

(declare-fun res!935171 () Bool)

(assert (=> b!2173091 (=> (not res!935171) (not e!1389740))))

(assert (=> b!2173091 (= res!935171 (= (size!19688 lt!810040) (+ (size!19688 lt!809973) (size!19688 lt!809977))))))

(declare-fun b!2173090 () Bool)

(assert (=> b!2173090 (= e!1389739 (Cons!25204 (h!30605 lt!809973) (++!6384 (t!197856 lt!809973) lt!809977)))))

(declare-fun b!2173089 () Bool)

(assert (=> b!2173089 (= e!1389739 lt!809977)))

(assert (= (and d!650484 c!344464) b!2173089))

(assert (= (and d!650484 (not c!344464)) b!2173090))

(assert (= (and d!650484 res!935172) b!2173091))

(assert (= (and b!2173091 res!935171) b!2173092))

(declare-fun m!2614459 () Bool)

(assert (=> d!650484 m!2614459))

(declare-fun m!2614461 () Bool)

(assert (=> d!650484 m!2614461))

(declare-fun m!2614463 () Bool)

(assert (=> d!650484 m!2614463))

(declare-fun m!2614465 () Bool)

(assert (=> b!2173091 m!2614465))

(declare-fun m!2614467 () Bool)

(assert (=> b!2173091 m!2614467))

(declare-fun m!2614469 () Bool)

(assert (=> b!2173091 m!2614469))

(declare-fun m!2614471 () Bool)

(assert (=> b!2173090 m!2614471))

(assert (=> b!2172779 d!650484))

(declare-fun d!650486 () Bool)

(declare-fun lt!810043 () Int)

(assert (=> d!650486 (= lt!810043 (size!19688 (list!9664 totalInput!977)))))

(assert (=> d!650486 (= lt!810043 (size!19690 (c!344366 totalInput!977)))))

(assert (=> d!650486 (= (size!19689 totalInput!977) lt!810043)))

(declare-fun bs!447000 () Bool)

(assert (= bs!447000 d!650486))

(assert (=> bs!447000 m!2614237))

(assert (=> bs!447000 m!2614237))

(declare-fun m!2614473 () Bool)

(assert (=> bs!447000 m!2614473))

(declare-fun m!2614475 () Bool)

(assert (=> bs!447000 m!2614475))

(assert (=> b!2172779 d!650486))

(declare-fun d!650488 () Bool)

(assert (=> d!650488 (= (list!9664 (_2!14858 lt!809976)) (list!9665 (c!344366 (_2!14858 lt!809976))))))

(declare-fun bs!447001 () Bool)

(assert (= bs!447001 d!650488))

(declare-fun m!2614477 () Bool)

(assert (=> bs!447001 m!2614477))

(assert (=> b!2172779 d!650488))

(declare-fun d!650490 () Bool)

(assert (=> d!650490 (= (list!9664 (_1!14858 lt!809976)) (list!9665 (c!344366 (_1!14858 lt!809976))))))

(declare-fun bs!447002 () Bool)

(assert (= bs!447002 d!650490))

(declare-fun m!2614479 () Bool)

(assert (=> bs!447002 m!2614479))

(assert (=> b!2172779 d!650490))

(declare-fun b!2173133 () Bool)

(declare-fun e!1389767 () Int)

(declare-fun lt!810065 () Int)

(assert (=> b!2173133 (= e!1389767 (- lt!810065 1))))

(declare-fun d!650492 () Bool)

(declare-fun lt!810062 () tuple2!24976)

(assert (=> d!650492 (= (++!6384 (list!9664 (_1!14858 lt!810062)) (list!9664 (_2!14858 lt!810062))) (list!9664 input!5540))))

(declare-fun e!1389768 () tuple2!24976)

(assert (=> d!650492 (= lt!810062 e!1389768)))

(declare-fun c!344477 () Bool)

(declare-fun lt!810063 () Int)

(assert (=> d!650492 (= c!344477 (< lt!810063 0))))

(declare-fun lt!810064 () Int)

(assert (=> d!650492 (= lt!810063 (+ (- (furthestNullablePosition!207 z!4055 lt!810065 totalInput!977 lt!810064 e!1389767) lt!810065) 1))))

(declare-fun c!344476 () Bool)

(assert (=> d!650492 (= c!344476 (nullableZipper!305 z!4055))))

(assert (=> d!650492 (= lt!810065 (- lt!810064 (size!19689 input!5540)))))

(assert (=> d!650492 (= lt!810064 (size!19689 totalInput!977))))

(assert (=> d!650492 (isSuffix!692 (list!9664 input!5540) (list!9664 totalInput!977))))

(assert (=> d!650492 (= (findLongestMatchZipperSequenceV3!74 z!4055 input!5540 totalInput!977) lt!810062)))

(declare-fun b!2173134 () Bool)

(declare-fun call!130370 () tuple2!24976)

(assert (=> b!2173134 (= e!1389768 call!130370)))

(declare-fun b!2173135 () Bool)

(assert (=> b!2173135 (= e!1389768 call!130370)))

(declare-fun b!2173136 () Bool)

(assert (=> b!2173136 (= e!1389767 (- 1))))

(declare-fun bm!130365 () Bool)

(declare-fun splitAt!38 (BalanceConc!16084 Int) tuple2!24976)

(assert (=> bm!130365 (= call!130370 (splitAt!38 input!5540 (ite c!344477 0 lt!810063)))))

(assert (= (and d!650492 c!344476) b!2173133))

(assert (= (and d!650492 (not c!344476)) b!2173136))

(assert (= (and d!650492 c!344477) b!2173135))

(assert (= (and d!650492 (not c!344477)) b!2173134))

(assert (= (or b!2173135 b!2173134) bm!130365))

(assert (=> d!650492 m!2614237))

(assert (=> d!650492 m!2614223))

(declare-fun m!2614509 () Bool)

(assert (=> d!650492 m!2614509))

(assert (=> d!650492 m!2614225))

(assert (=> d!650492 m!2614239))

(assert (=> d!650492 m!2614237))

(declare-fun m!2614511 () Bool)

(assert (=> d!650492 m!2614511))

(declare-fun m!2614513 () Bool)

(assert (=> d!650492 m!2614513))

(assert (=> d!650492 m!2614239))

(assert (=> d!650492 m!2614513))

(assert (=> d!650492 m!2614509))

(declare-fun m!2614515 () Bool)

(assert (=> d!650492 m!2614515))

(declare-fun m!2614517 () Bool)

(assert (=> d!650492 m!2614517))

(assert (=> d!650492 m!2614201))

(declare-fun m!2614519 () Bool)

(assert (=> bm!130365 m!2614519))

(assert (=> b!2172779 d!650492))

(declare-fun d!650502 () Bool)

(declare-fun lt!810092 () tuple2!24974)

(assert (=> d!650502 (= (++!6384 (_1!14857 lt!810092) (_2!14857 lt!810092)) lt!809968)))

(declare-fun sizeTr!115 (List!25288 Int) Int)

(assert (=> d!650502 (= lt!810092 (findLongestMatchInner!650 r!12534 Nil!25204 0 lt!809968 lt!809968 (sizeTr!115 lt!809968 0)))))

(declare-fun lt!810096 () Unit!38263)

(declare-fun lt!810093 () Unit!38263)

(assert (=> d!650502 (= lt!810096 lt!810093)))

(declare-fun lt!810094 () List!25288)

(declare-fun lt!810091 () Int)

(assert (=> d!650502 (= (sizeTr!115 lt!810094 lt!810091) (+ (size!19688 lt!810094) lt!810091))))

(declare-fun lemmaSizeTrEqualsSize!114 (List!25288 Int) Unit!38263)

(assert (=> d!650502 (= lt!810093 (lemmaSizeTrEqualsSize!114 lt!810094 lt!810091))))

(assert (=> d!650502 (= lt!810091 0)))

(assert (=> d!650502 (= lt!810094 Nil!25204)))

(declare-fun lt!810090 () Unit!38263)

(declare-fun lt!810095 () Unit!38263)

(assert (=> d!650502 (= lt!810090 lt!810095)))

(declare-fun lt!810089 () Int)

(assert (=> d!650502 (= (sizeTr!115 lt!809968 lt!810089) (+ (size!19688 lt!809968) lt!810089))))

(assert (=> d!650502 (= lt!810095 (lemmaSizeTrEqualsSize!114 lt!809968 lt!810089))))

(assert (=> d!650502 (= lt!810089 0)))

(assert (=> d!650502 (validRegex!2301 r!12534)))

(assert (=> d!650502 (= (findLongestMatch!579 r!12534 lt!809968) lt!810092)))

(declare-fun bs!447004 () Bool)

(assert (= bs!447004 d!650502))

(declare-fun m!2614545 () Bool)

(assert (=> bs!447004 m!2614545))

(declare-fun m!2614551 () Bool)

(assert (=> bs!447004 m!2614551))

(declare-fun m!2614555 () Bool)

(assert (=> bs!447004 m!2614555))

(declare-fun m!2614559 () Bool)

(assert (=> bs!447004 m!2614559))

(assert (=> bs!447004 m!2614189))

(assert (=> bs!447004 m!2614555))

(declare-fun m!2614563 () Bool)

(assert (=> bs!447004 m!2614563))

(declare-fun m!2614565 () Bool)

(assert (=> bs!447004 m!2614565))

(declare-fun m!2614567 () Bool)

(assert (=> bs!447004 m!2614567))

(declare-fun m!2614569 () Bool)

(assert (=> bs!447004 m!2614569))

(assert (=> bs!447004 m!2614249))

(assert (=> b!2172779 d!650502))

(declare-fun d!650514 () Bool)

(declare-fun lt!810098 () Int)

(assert (=> d!650514 (= lt!810098 (size!19688 (list!9664 input!5540)))))

(assert (=> d!650514 (= lt!810098 (size!19690 (c!344366 input!5540)))))

(assert (=> d!650514 (= (size!19689 input!5540) lt!810098)))

(declare-fun bs!447005 () Bool)

(assert (= bs!447005 d!650514))

(assert (=> bs!447005 m!2614239))

(assert (=> bs!447005 m!2614239))

(declare-fun m!2614571 () Bool)

(assert (=> bs!447005 m!2614571))

(declare-fun m!2614573 () Bool)

(assert (=> bs!447005 m!2614573))

(assert (=> b!2172779 d!650514))

(declare-fun b!2173148 () Bool)

(declare-fun e!1389781 () Int)

(declare-fun e!1389779 () Int)

(assert (=> b!2173148 (= e!1389781 e!1389779)))

(declare-fun c!344479 () Bool)

(assert (=> b!2173148 (= c!344479 (>= lt!809984 (size!19688 lt!809959)))))

(declare-fun b!2173149 () Bool)

(assert (=> b!2173149 (= e!1389779 (size!19688 lt!809959))))

(declare-fun b!2173150 () Bool)

(declare-fun e!1389778 () Bool)

(declare-fun lt!810099 () List!25288)

(assert (=> b!2173150 (= e!1389778 (= (size!19688 lt!810099) e!1389781))))

(declare-fun c!344480 () Bool)

(assert (=> b!2173150 (= c!344480 (<= lt!809984 0))))

(declare-fun b!2173151 () Bool)

(declare-fun e!1389780 () List!25288)

(assert (=> b!2173151 (= e!1389780 Nil!25204)))

(declare-fun b!2173152 () Bool)

(assert (=> b!2173152 (= e!1389781 0)))

(declare-fun d!650516 () Bool)

(assert (=> d!650516 e!1389778))

(declare-fun res!935200 () Bool)

(assert (=> d!650516 (=> (not res!935200) (not e!1389778))))

(assert (=> d!650516 (= res!935200 (= ((_ map implies) (content!3424 lt!810099) (content!3424 lt!809959)) ((as const (InoxSet C!12196)) true)))))

(assert (=> d!650516 (= lt!810099 e!1389780)))

(declare-fun c!344481 () Bool)

(assert (=> d!650516 (= c!344481 (or ((_ is Nil!25204) lt!809959) (<= lt!809984 0)))))

(assert (=> d!650516 (= (take!233 lt!809959 lt!809984) lt!810099)))

(declare-fun b!2173153 () Bool)

(assert (=> b!2173153 (= e!1389780 (Cons!25204 (h!30605 lt!809959) (take!233 (t!197856 lt!809959) (- lt!809984 1))))))

(declare-fun b!2173154 () Bool)

(assert (=> b!2173154 (= e!1389779 lt!809984)))

(assert (= (and d!650516 c!344481) b!2173151))

(assert (= (and d!650516 (not c!344481)) b!2173153))

(assert (= (and d!650516 res!935200) b!2173150))

(assert (= (and b!2173150 c!344480) b!2173152))

(assert (= (and b!2173150 (not c!344480)) b!2173148))

(assert (= (and b!2173148 c!344479) b!2173149))

(assert (= (and b!2173148 (not c!344479)) b!2173154))

(declare-fun m!2614575 () Bool)

(assert (=> b!2173150 m!2614575))

(declare-fun m!2614577 () Bool)

(assert (=> b!2173148 m!2614577))

(declare-fun m!2614579 () Bool)

(assert (=> b!2173153 m!2614579))

(assert (=> b!2173149 m!2614577))

(declare-fun m!2614581 () Bool)

(assert (=> d!650516 m!2614581))

(declare-fun m!2614583 () Bool)

(assert (=> d!650516 m!2614583))

(assert (=> b!2172769 d!650516))

(assert (=> b!2172769 d!650472))

(declare-fun d!650518 () Bool)

(declare-fun e!1389789 () Bool)

(assert (=> d!650518 e!1389789))

(declare-fun res!935209 () Bool)

(assert (=> d!650518 (=> res!935209 e!1389789)))

(declare-fun lt!810109 () Int)

(assert (=> d!650518 (= res!935209 (<= lt!810109 0))))

(assert (=> d!650518 (= lt!810109 (+ (- (furthestNullablePosition!207 z!4055 lt!809974 totalInput!977 (size!19689 totalInput!977) lt!809980) lt!809974) 1))))

(declare-fun lt!810108 () Unit!38263)

(declare-fun choose!12809 ((InoxSet Context!3190) Int BalanceConc!16084 Int) Unit!38263)

(assert (=> d!650518 (= lt!810108 (choose!12809 z!4055 lt!809974 totalInput!977 lt!809980))))

(declare-fun e!1389790 () Bool)

(assert (=> d!650518 e!1389790))

(declare-fun res!935210 () Bool)

(assert (=> d!650518 (=> (not res!935210) (not e!1389790))))

(assert (=> d!650518 (= res!935210 (>= lt!809974 0))))

(assert (=> d!650518 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!48 z!4055 lt!809974 totalInput!977 lt!809980) lt!810108)))

(declare-fun b!2173163 () Bool)

(assert (=> b!2173163 (= e!1389790 (<= lt!809974 (size!19689 totalInput!977)))))

(declare-fun b!2173164 () Bool)

(assert (=> b!2173164 (= e!1389789 (matchZipper!141 z!4055 (take!233 (drop!1243 (list!9664 totalInput!977) lt!809974) lt!810109)))))

(assert (= (and d!650518 res!935210) b!2173163))

(assert (= (and d!650518 (not res!935209)) b!2173164))

(assert (=> d!650518 m!2614223))

(assert (=> d!650518 m!2614223))

(declare-fun m!2614599 () Bool)

(assert (=> d!650518 m!2614599))

(declare-fun m!2614601 () Bool)

(assert (=> d!650518 m!2614601))

(assert (=> b!2173163 m!2614223))

(assert (=> b!2173164 m!2614237))

(assert (=> b!2173164 m!2614237))

(declare-fun m!2614603 () Bool)

(assert (=> b!2173164 m!2614603))

(assert (=> b!2173164 m!2614603))

(declare-fun m!2614605 () Bool)

(assert (=> b!2173164 m!2614605))

(assert (=> b!2173164 m!2614605))

(declare-fun m!2614607 () Bool)

(assert (=> b!2173164 m!2614607))

(assert (=> b!2172780 d!650518))

(declare-fun d!650526 () Bool)

(declare-fun c!344484 () Bool)

(assert (=> d!650526 (= c!344484 (isEmpty!14460 lt!809973))))

(declare-fun e!1389791 () Bool)

(assert (=> d!650526 (= (matchZipper!141 z!4055 lt!809973) e!1389791)))

(declare-fun b!2173165 () Bool)

(assert (=> b!2173165 (= e!1389791 (nullableZipper!305 z!4055))))

(declare-fun b!2173166 () Bool)

(assert (=> b!2173166 (= e!1389791 (matchZipper!141 (derivationStepZipper!127 z!4055 (head!4651 lt!809973)) (tail!3123 lt!809973)))))

(assert (= (and d!650526 c!344484) b!2173165))

(assert (= (and d!650526 (not c!344484)) b!2173166))

(assert (=> d!650526 m!2614347))

(assert (=> b!2173165 m!2614201))

(assert (=> b!2173166 m!2614349))

(assert (=> b!2173166 m!2614349))

(declare-fun m!2614609 () Bool)

(assert (=> b!2173166 m!2614609))

(assert (=> b!2173166 m!2614353))

(assert (=> b!2173166 m!2614609))

(assert (=> b!2173166 m!2614353))

(declare-fun m!2614611 () Bool)

(assert (=> b!2173166 m!2614611))

(assert (=> b!2172780 d!650526))

(declare-fun d!650528 () Bool)

(assert (=> d!650528 (isPrefix!2141 (_1!14857 lt!809963) (++!6384 (_1!14857 lt!809963) (_2!14857 lt!809963)))))

(declare-fun lt!810112 () Unit!38263)

(declare-fun choose!12810 (List!25288 List!25288) Unit!38263)

(assert (=> d!650528 (= lt!810112 (choose!12810 (_1!14857 lt!809963) (_2!14857 lt!809963)))))

(assert (=> d!650528 (= (lemmaConcatTwoListThenFirstIsPrefix!1424 (_1!14857 lt!809963) (_2!14857 lt!809963)) lt!810112)))

(declare-fun bs!447008 () Bool)

(assert (= bs!447008 d!650528))

(assert (=> bs!447008 m!2614179))

(assert (=> bs!447008 m!2614179))

(declare-fun m!2614613 () Bool)

(assert (=> bs!447008 m!2614613))

(declare-fun m!2614615 () Bool)

(assert (=> bs!447008 m!2614615))

(assert (=> b!2172780 d!650528))

(declare-fun b!2173251 () Bool)

(declare-fun e!1389841 () Bool)

(declare-fun e!1389839 () Bool)

(assert (=> b!2173251 (= e!1389841 e!1389839)))

(declare-fun res!935229 () Bool)

(assert (=> b!2173251 (=> res!935229 e!1389839)))

(declare-fun lt!810275 () tuple2!24974)

(assert (=> b!2173251 (= res!935229 (isEmpty!14460 (_1!14857 lt!810275)))))

(declare-fun bm!130407 () Bool)

(declare-fun call!130414 () C!12196)

(assert (=> bm!130407 (= call!130414 (head!4651 lt!809968))))

(declare-fun bm!130408 () Bool)

(declare-fun call!130413 () Unit!38263)

(declare-fun lemmaIsPrefixSameLengthThenSameList!353 (List!25288 List!25288 List!25288) Unit!38263)

(assert (=> bm!130408 (= call!130413 (lemmaIsPrefixSameLengthThenSameList!353 lt!809968 Nil!25204 lt!809968))))

(declare-fun call!130416 () tuple2!24974)

(declare-fun call!130415 () Regex!6025)

(declare-fun bm!130409 () Bool)

(declare-fun lt!810282 () List!25288)

(declare-fun call!130417 () List!25288)

(assert (=> bm!130409 (= call!130416 (findLongestMatchInner!650 call!130415 lt!810282 (+ (size!19688 Nil!25204) 1) call!130417 lt!809968 (size!19688 lt!809968)))))

(declare-fun b!2173252 () Bool)

(declare-fun e!1389845 () tuple2!24974)

(assert (=> b!2173252 (= e!1389845 (tuple2!24975 Nil!25204 Nil!25204))))

(declare-fun b!2173253 () Bool)

(declare-fun e!1389843 () tuple2!24974)

(declare-fun lt!810279 () tuple2!24974)

(assert (=> b!2173253 (= e!1389843 lt!810279)))

(declare-fun bm!130410 () Bool)

(declare-fun call!130418 () Bool)

(assert (=> bm!130410 (= call!130418 (isPrefix!2141 lt!809968 lt!809968))))

(declare-fun b!2173254 () Bool)

(declare-fun e!1389846 () tuple2!24974)

(assert (=> b!2173254 (= e!1389846 call!130416)))

(declare-fun d!650530 () Bool)

(assert (=> d!650530 e!1389841))

(declare-fun res!935230 () Bool)

(assert (=> d!650530 (=> (not res!935230) (not e!1389841))))

(assert (=> d!650530 (= res!935230 (= (++!6384 (_1!14857 lt!810275) (_2!14857 lt!810275)) lt!809968))))

(declare-fun e!1389844 () tuple2!24974)

(assert (=> d!650530 (= lt!810275 e!1389844)))

(declare-fun c!344523 () Bool)

(declare-fun lostCause!671 (Regex!6025) Bool)

(assert (=> d!650530 (= c!344523 (lostCause!671 r!12534))))

(declare-fun lt!810276 () Unit!38263)

(declare-fun Unit!38268 () Unit!38263)

(assert (=> d!650530 (= lt!810276 Unit!38268)))

(declare-fun getSuffix!1036 (List!25288 List!25288) List!25288)

(assert (=> d!650530 (= (getSuffix!1036 lt!809968 Nil!25204) lt!809968)))

(declare-fun lt!810258 () Unit!38263)

(declare-fun lt!810277 () Unit!38263)

(assert (=> d!650530 (= lt!810258 lt!810277)))

(declare-fun lt!810259 () List!25288)

(assert (=> d!650530 (= lt!809968 lt!810259)))

(declare-fun lemmaSamePrefixThenSameSuffix!958 (List!25288 List!25288 List!25288 List!25288 List!25288) Unit!38263)

(assert (=> d!650530 (= lt!810277 (lemmaSamePrefixThenSameSuffix!958 Nil!25204 lt!809968 Nil!25204 lt!810259 lt!809968))))

(assert (=> d!650530 (= lt!810259 (getSuffix!1036 lt!809968 Nil!25204))))

(declare-fun lt!810278 () Unit!38263)

(declare-fun lt!810262 () Unit!38263)

(assert (=> d!650530 (= lt!810278 lt!810262)))

(assert (=> d!650530 (isPrefix!2141 Nil!25204 (++!6384 Nil!25204 lt!809968))))

(assert (=> d!650530 (= lt!810262 (lemmaConcatTwoListThenFirstIsPrefix!1424 Nil!25204 lt!809968))))

(assert (=> d!650530 (validRegex!2301 r!12534)))

(assert (=> d!650530 (= (findLongestMatchInner!650 r!12534 Nil!25204 (size!19688 Nil!25204) lt!809968 lt!809968 (size!19688 lt!809968)) lt!810275)))

(declare-fun b!2173255 () Bool)

(declare-fun e!1389840 () Unit!38263)

(declare-fun Unit!38269 () Unit!38263)

(assert (=> b!2173255 (= e!1389840 Unit!38269)))

(declare-fun lt!810272 () Unit!38263)

(declare-fun call!130419 () Unit!38263)

(assert (=> b!2173255 (= lt!810272 call!130419)))

(assert (=> b!2173255 call!130418))

(declare-fun lt!810284 () Unit!38263)

(assert (=> b!2173255 (= lt!810284 lt!810272)))

(declare-fun lt!810269 () Unit!38263)

(assert (=> b!2173255 (= lt!810269 call!130413)))

(assert (=> b!2173255 (= lt!809968 Nil!25204)))

(declare-fun lt!810270 () Unit!38263)

(assert (=> b!2173255 (= lt!810270 lt!810269)))

(assert (=> b!2173255 false))

(declare-fun b!2173256 () Bool)

(assert (=> b!2173256 (= e!1389845 (tuple2!24975 Nil!25204 lt!809968))))

(declare-fun bm!130411 () Bool)

(assert (=> bm!130411 (= call!130417 (tail!3123 lt!809968))))

(declare-fun b!2173257 () Bool)

(assert (=> b!2173257 (= e!1389839 (>= (size!19688 (_1!14857 lt!810275)) (size!19688 Nil!25204)))))

(declare-fun bm!130412 () Bool)

(declare-fun call!130412 () Bool)

(assert (=> bm!130412 (= call!130412 (nullable!1699 r!12534))))

(declare-fun b!2173258 () Bool)

(declare-fun c!344518 () Bool)

(assert (=> b!2173258 (= c!344518 call!130412)))

(declare-fun lt!810267 () Unit!38263)

(declare-fun lt!810266 () Unit!38263)

(assert (=> b!2173258 (= lt!810267 lt!810266)))

(declare-fun lt!810271 () C!12196)

(declare-fun lt!810274 () List!25288)

(assert (=> b!2173258 (= (++!6384 (++!6384 Nil!25204 (Cons!25204 lt!810271 Nil!25204)) lt!810274) lt!809968)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!509 (List!25288 C!12196 List!25288 List!25288) Unit!38263)

(assert (=> b!2173258 (= lt!810266 (lemmaMoveElementToOtherListKeepsConcatEq!509 Nil!25204 lt!810271 lt!810274 lt!809968))))

(assert (=> b!2173258 (= lt!810274 (tail!3123 lt!809968))))

(assert (=> b!2173258 (= lt!810271 (head!4651 lt!809968))))

(declare-fun lt!810268 () Unit!38263)

(declare-fun lt!810260 () Unit!38263)

(assert (=> b!2173258 (= lt!810268 lt!810260)))

(assert (=> b!2173258 (isPrefix!2141 (++!6384 Nil!25204 (Cons!25204 (head!4651 (getSuffix!1036 lt!809968 Nil!25204)) Nil!25204)) lt!809968)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!381 (List!25288 List!25288) Unit!38263)

(assert (=> b!2173258 (= lt!810260 (lemmaAddHeadSuffixToPrefixStillPrefix!381 Nil!25204 lt!809968))))

(declare-fun lt!810280 () Unit!38263)

(declare-fun lt!810281 () Unit!38263)

(assert (=> b!2173258 (= lt!810280 lt!810281)))

(assert (=> b!2173258 (= lt!810281 (lemmaAddHeadSuffixToPrefixStillPrefix!381 Nil!25204 lt!809968))))

(assert (=> b!2173258 (= lt!810282 (++!6384 Nil!25204 (Cons!25204 (head!4651 lt!809968) Nil!25204)))))

(declare-fun lt!810283 () Unit!38263)

(assert (=> b!2173258 (= lt!810283 e!1389840)))

(declare-fun c!344519 () Bool)

(assert (=> b!2173258 (= c!344519 (= (size!19688 Nil!25204) (size!19688 lt!809968)))))

(declare-fun lt!810265 () Unit!38263)

(declare-fun lt!810261 () Unit!38263)

(assert (=> b!2173258 (= lt!810265 lt!810261)))

(assert (=> b!2173258 (<= (size!19688 Nil!25204) (size!19688 lt!809968))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!184 (List!25288 List!25288) Unit!38263)

(assert (=> b!2173258 (= lt!810261 (lemmaIsPrefixThenSmallerEqSize!184 Nil!25204 lt!809968))))

(declare-fun e!1389842 () tuple2!24974)

(assert (=> b!2173258 (= e!1389842 e!1389846)))

(declare-fun b!2173259 () Bool)

(assert (=> b!2173259 (= e!1389846 e!1389843)))

(assert (=> b!2173259 (= lt!810279 call!130416)))

(declare-fun c!344520 () Bool)

(assert (=> b!2173259 (= c!344520 (isEmpty!14460 (_1!14857 lt!810279)))))

(declare-fun bm!130413 () Bool)

(assert (=> bm!130413 (= call!130415 (derivativeStep!1441 r!12534 call!130414))))

(declare-fun b!2173260 () Bool)

(assert (=> b!2173260 (= e!1389844 e!1389842)))

(declare-fun c!344521 () Bool)

(assert (=> b!2173260 (= c!344521 (= (size!19688 Nil!25204) (size!19688 lt!809968)))))

(declare-fun b!2173261 () Bool)

(declare-fun c!344522 () Bool)

(assert (=> b!2173261 (= c!344522 call!130412)))

(declare-fun lt!810263 () Unit!38263)

(declare-fun lt!810273 () Unit!38263)

(assert (=> b!2173261 (= lt!810263 lt!810273)))

(assert (=> b!2173261 (= lt!809968 Nil!25204)))

(assert (=> b!2173261 (= lt!810273 call!130413)))

(declare-fun lt!810264 () Unit!38263)

(declare-fun lt!810257 () Unit!38263)

(assert (=> b!2173261 (= lt!810264 lt!810257)))

(assert (=> b!2173261 call!130418))

(assert (=> b!2173261 (= lt!810257 call!130419)))

(assert (=> b!2173261 (= e!1389842 e!1389845)))

(declare-fun bm!130414 () Bool)

(declare-fun lemmaIsPrefixRefl!1411 (List!25288 List!25288) Unit!38263)

(assert (=> bm!130414 (= call!130419 (lemmaIsPrefixRefl!1411 lt!809968 lt!809968))))

(declare-fun b!2173262 () Bool)

(assert (=> b!2173262 (= e!1389843 (tuple2!24975 Nil!25204 lt!809968))))

(declare-fun b!2173263 () Bool)

(assert (=> b!2173263 (= e!1389844 (tuple2!24975 Nil!25204 lt!809968))))

(declare-fun b!2173264 () Bool)

(declare-fun Unit!38270 () Unit!38263)

(assert (=> b!2173264 (= e!1389840 Unit!38270)))

(assert (= (and d!650530 c!344523) b!2173263))

(assert (= (and d!650530 (not c!344523)) b!2173260))

(assert (= (and b!2173260 c!344521) b!2173261))

(assert (= (and b!2173260 (not c!344521)) b!2173258))

(assert (= (and b!2173261 c!344522) b!2173252))

(assert (= (and b!2173261 (not c!344522)) b!2173256))

(assert (= (and b!2173258 c!344519) b!2173255))

(assert (= (and b!2173258 (not c!344519)) b!2173264))

(assert (= (and b!2173258 c!344518) b!2173259))

(assert (= (and b!2173258 (not c!344518)) b!2173254))

(assert (= (and b!2173259 c!344520) b!2173262))

(assert (= (and b!2173259 (not c!344520)) b!2173253))

(assert (= (or b!2173259 b!2173254) bm!130407))

(assert (= (or b!2173259 b!2173254) bm!130411))

(assert (= (or b!2173259 b!2173254) bm!130413))

(assert (= (or b!2173259 b!2173254) bm!130409))

(assert (= (or b!2173261 b!2173255) bm!130410))

(assert (= (or b!2173261 b!2173255) bm!130414))

(assert (= (or b!2173261 b!2173255) bm!130408))

(assert (= (or b!2173261 b!2173258) bm!130412))

(assert (= (and d!650530 res!935230) b!2173251))

(assert (= (and b!2173251 (not res!935229)) b!2173257))

(declare-fun m!2614679 () Bool)

(assert (=> d!650530 m!2614679))

(declare-fun m!2614681 () Bool)

(assert (=> d!650530 m!2614681))

(assert (=> d!650530 m!2614249))

(declare-fun m!2614683 () Bool)

(assert (=> d!650530 m!2614683))

(declare-fun m!2614685 () Bool)

(assert (=> d!650530 m!2614685))

(declare-fun m!2614687 () Bool)

(assert (=> d!650530 m!2614687))

(declare-fun m!2614689 () Bool)

(assert (=> d!650530 m!2614689))

(assert (=> d!650530 m!2614683))

(declare-fun m!2614691 () Bool)

(assert (=> d!650530 m!2614691))

(declare-fun m!2614693 () Bool)

(assert (=> bm!130413 m!2614693))

(declare-fun m!2614695 () Bool)

(assert (=> b!2173259 m!2614695))

(declare-fun m!2614697 () Bool)

(assert (=> bm!130414 m!2614697))

(assert (=> bm!130409 m!2614189))

(declare-fun m!2614699 () Bool)

(assert (=> bm!130409 m!2614699))

(declare-fun m!2614701 () Bool)

(assert (=> bm!130408 m!2614701))

(assert (=> bm!130412 m!2614359))

(declare-fun m!2614703 () Bool)

(assert (=> b!2173251 m!2614703))

(declare-fun m!2614705 () Bool)

(assert (=> bm!130411 m!2614705))

(declare-fun m!2614707 () Bool)

(assert (=> bm!130407 m!2614707))

(assert (=> b!2173258 m!2614207))

(assert (=> b!2173258 m!2614705))

(assert (=> b!2173258 m!2614691))

(declare-fun m!2614709 () Bool)

(assert (=> b!2173258 m!2614709))

(declare-fun m!2614711 () Bool)

(assert (=> b!2173258 m!2614711))

(declare-fun m!2614713 () Bool)

(assert (=> b!2173258 m!2614713))

(declare-fun m!2614715 () Bool)

(assert (=> b!2173258 m!2614715))

(declare-fun m!2614717 () Bool)

(assert (=> b!2173258 m!2614717))

(declare-fun m!2614719 () Bool)

(assert (=> b!2173258 m!2614719))

(assert (=> b!2173258 m!2614717))

(assert (=> b!2173258 m!2614713))

(declare-fun m!2614721 () Bool)

(assert (=> b!2173258 m!2614721))

(assert (=> b!2173258 m!2614691))

(declare-fun m!2614723 () Bool)

(assert (=> b!2173258 m!2614723))

(declare-fun m!2614725 () Bool)

(assert (=> b!2173258 m!2614725))

(assert (=> b!2173258 m!2614707))

(assert (=> b!2173258 m!2614189))

(declare-fun m!2614727 () Bool)

(assert (=> b!2173257 m!2614727))

(assert (=> b!2173257 m!2614207))

(declare-fun m!2614729 () Bool)

(assert (=> bm!130410 m!2614729))

(assert (=> b!2172780 d!650530))

(declare-fun d!650538 () Bool)

(declare-fun lt!810285 () Int)

(assert (=> d!650538 (>= lt!810285 0)))

(declare-fun e!1389847 () Int)

(assert (=> d!650538 (= lt!810285 e!1389847)))

(declare-fun c!344524 () Bool)

(assert (=> d!650538 (= c!344524 ((_ is Nil!25204) lt!809968))))

(assert (=> d!650538 (= (size!19688 lt!809968) lt!810285)))

(declare-fun b!2173265 () Bool)

(assert (=> b!2173265 (= e!1389847 0)))

(declare-fun b!2173266 () Bool)

(assert (=> b!2173266 (= e!1389847 (+ 1 (size!19688 (t!197856 lt!809968))))))

(assert (= (and d!650538 c!344524) b!2173265))

(assert (= (and d!650538 (not c!344524)) b!2173266))

(declare-fun m!2614731 () Bool)

(assert (=> b!2173266 m!2614731))

(assert (=> b!2172780 d!650538))

(declare-fun d!650540 () Bool)

(assert (=> d!650540 (isPrefix!2141 (take!233 lt!809965 lt!809974) lt!809965)))

(declare-fun lt!810296 () Unit!38263)

(declare-fun choose!12811 (List!25288 Int) Unit!38263)

(assert (=> d!650540 (= lt!810296 (choose!12811 lt!809965 lt!809974))))

(assert (=> d!650540 (>= lt!809974 0)))

(assert (=> d!650540 (= (lemmaTakeIsPrefix!56 lt!809965 lt!809974) lt!810296)))

(declare-fun bs!447010 () Bool)

(assert (= bs!447010 d!650540))

(assert (=> bs!447010 m!2614191))

(assert (=> bs!447010 m!2614191))

(assert (=> bs!447010 m!2614199))

(declare-fun m!2614733 () Bool)

(assert (=> bs!447010 m!2614733))

(assert (=> b!2172780 d!650540))

(declare-fun d!650542 () Bool)

(declare-fun lambda!81823 () Int)

(declare-fun exists!762 ((InoxSet Context!3190) Int) Bool)

(assert (=> d!650542 (= (nullableZipper!305 z!4055) (exists!762 z!4055 lambda!81823))))

(declare-fun bs!447012 () Bool)

(assert (= bs!447012 d!650542))

(declare-fun m!2614749 () Bool)

(assert (=> bs!447012 m!2614749))

(assert (=> b!2172780 d!650542))

(declare-fun d!650546 () Bool)

(declare-fun e!1389855 () Bool)

(assert (=> d!650546 e!1389855))

(declare-fun res!935240 () Bool)

(assert (=> d!650546 (=> res!935240 e!1389855)))

(declare-fun lt!810315 () Bool)

(assert (=> d!650546 (= res!935240 (not lt!810315))))

(declare-fun e!1389856 () Bool)

(assert (=> d!650546 (= lt!810315 e!1389856)))

(declare-fun res!935241 () Bool)

(assert (=> d!650546 (=> res!935241 e!1389856)))

(assert (=> d!650546 (= res!935241 ((_ is Nil!25204) (take!233 lt!809965 lt!809974)))))

(assert (=> d!650546 (= (isPrefix!2141 (take!233 lt!809965 lt!809974) lt!809965) lt!810315)))

(declare-fun b!2173277 () Bool)

(declare-fun e!1389854 () Bool)

(assert (=> b!2173277 (= e!1389854 (isPrefix!2141 (tail!3123 (take!233 lt!809965 lt!809974)) (tail!3123 lt!809965)))))

(declare-fun b!2173276 () Bool)

(declare-fun res!935239 () Bool)

(assert (=> b!2173276 (=> (not res!935239) (not e!1389854))))

(assert (=> b!2173276 (= res!935239 (= (head!4651 (take!233 lt!809965 lt!809974)) (head!4651 lt!809965)))))

(declare-fun b!2173278 () Bool)

(assert (=> b!2173278 (= e!1389855 (>= (size!19688 lt!809965) (size!19688 (take!233 lt!809965 lt!809974))))))

(declare-fun b!2173275 () Bool)

(assert (=> b!2173275 (= e!1389856 e!1389854)))

(declare-fun res!935242 () Bool)

(assert (=> b!2173275 (=> (not res!935242) (not e!1389854))))

(assert (=> b!2173275 (= res!935242 (not ((_ is Nil!25204) lt!809965)))))

(assert (= (and d!650546 (not res!935241)) b!2173275))

(assert (= (and b!2173275 res!935242) b!2173276))

(assert (= (and b!2173276 res!935239) b!2173277))

(assert (= (and d!650546 (not res!935240)) b!2173278))

(assert (=> b!2173277 m!2614191))

(declare-fun m!2614755 () Bool)

(assert (=> b!2173277 m!2614755))

(declare-fun m!2614757 () Bool)

(assert (=> b!2173277 m!2614757))

(assert (=> b!2173277 m!2614755))

(assert (=> b!2173277 m!2614757))

(declare-fun m!2614759 () Bool)

(assert (=> b!2173277 m!2614759))

(assert (=> b!2173276 m!2614191))

(declare-fun m!2614761 () Bool)

(assert (=> b!2173276 m!2614761))

(declare-fun m!2614763 () Bool)

(assert (=> b!2173276 m!2614763))

(assert (=> b!2173278 m!2614445))

(assert (=> b!2173278 m!2614191))

(declare-fun m!2614765 () Bool)

(assert (=> b!2173278 m!2614765))

(assert (=> b!2172780 d!650546))

(declare-fun d!650550 () Bool)

(assert (=> d!650550 (= (isEmpty!14460 (_1!14857 lt!809983)) ((_ is Nil!25204) (_1!14857 lt!809983)))))

(assert (=> b!2172780 d!650550))

(declare-fun b!2173279 () Bool)

(declare-fun e!1389860 () Int)

(declare-fun e!1389858 () Int)

(assert (=> b!2173279 (= e!1389860 e!1389858)))

(declare-fun c!344527 () Bool)

(assert (=> b!2173279 (= c!344527 (>= lt!809974 (size!19688 lt!809965)))))

(declare-fun b!2173280 () Bool)

(assert (=> b!2173280 (= e!1389858 (size!19688 lt!809965))))

(declare-fun b!2173281 () Bool)

(declare-fun e!1389857 () Bool)

(declare-fun lt!810316 () List!25288)

(assert (=> b!2173281 (= e!1389857 (= (size!19688 lt!810316) e!1389860))))

(declare-fun c!344528 () Bool)

(assert (=> b!2173281 (= c!344528 (<= lt!809974 0))))

(declare-fun b!2173282 () Bool)

(declare-fun e!1389859 () List!25288)

(assert (=> b!2173282 (= e!1389859 Nil!25204)))

(declare-fun b!2173283 () Bool)

(assert (=> b!2173283 (= e!1389860 0)))

(declare-fun d!650552 () Bool)

(assert (=> d!650552 e!1389857))

(declare-fun res!935243 () Bool)

(assert (=> d!650552 (=> (not res!935243) (not e!1389857))))

(assert (=> d!650552 (= res!935243 (= ((_ map implies) (content!3424 lt!810316) (content!3424 lt!809965)) ((as const (InoxSet C!12196)) true)))))

(assert (=> d!650552 (= lt!810316 e!1389859)))

(declare-fun c!344529 () Bool)

(assert (=> d!650552 (= c!344529 (or ((_ is Nil!25204) lt!809965) (<= lt!809974 0)))))

(assert (=> d!650552 (= (take!233 lt!809965 lt!809974) lt!810316)))

(declare-fun b!2173284 () Bool)

(assert (=> b!2173284 (= e!1389859 (Cons!25204 (h!30605 lt!809965) (take!233 (t!197856 lt!809965) (- lt!809974 1))))))

(declare-fun b!2173285 () Bool)

(assert (=> b!2173285 (= e!1389858 lt!809974)))

(assert (= (and d!650552 c!344529) b!2173282))

(assert (= (and d!650552 (not c!344529)) b!2173284))

(assert (= (and d!650552 res!935243) b!2173281))

(assert (= (and b!2173281 c!344528) b!2173283))

(assert (= (and b!2173281 (not c!344528)) b!2173279))

(assert (= (and b!2173279 c!344527) b!2173280))

(assert (= (and b!2173279 (not c!344527)) b!2173285))

(declare-fun m!2614767 () Bool)

(assert (=> b!2173281 m!2614767))

(assert (=> b!2173279 m!2614445))

(declare-fun m!2614769 () Bool)

(assert (=> b!2173284 m!2614769))

(assert (=> b!2173280 m!2614445))

(declare-fun m!2614771 () Bool)

(assert (=> d!650552 m!2614771))

(assert (=> d!650552 m!2614451))

(assert (=> b!2172780 d!650552))

(declare-fun d!650554 () Bool)

(declare-fun lt!810317 () Int)

(assert (=> d!650554 (>= lt!810317 0)))

(declare-fun e!1389861 () Int)

(assert (=> d!650554 (= lt!810317 e!1389861)))

(declare-fun c!344530 () Bool)

(assert (=> d!650554 (= c!344530 ((_ is Nil!25204) Nil!25204))))

(assert (=> d!650554 (= (size!19688 Nil!25204) lt!810317)))

(declare-fun b!2173286 () Bool)

(assert (=> b!2173286 (= e!1389861 0)))

(declare-fun b!2173287 () Bool)

(assert (=> b!2173287 (= e!1389861 (+ 1 (size!19688 (t!197856 Nil!25204))))))

(assert (= (and d!650554 c!344530) b!2173286))

(assert (= (and d!650554 (not c!344530)) b!2173287))

(declare-fun m!2614773 () Bool)

(assert (=> b!2173287 m!2614773))

(assert (=> b!2172780 d!650554))

(declare-fun b!2173310 () Bool)

(declare-fun e!1389874 () Int)

(assert (=> b!2173310 (= e!1389874 lt!809980)))

(declare-fun d!650556 () Bool)

(declare-fun lt!810336 () Int)

(assert (=> d!650556 (and (>= lt!810336 (- 1)) (< lt!810336 lt!809962) (>= lt!810336 lt!809980) (or (= lt!810336 lt!809980) (>= lt!810336 lt!809974)))))

(declare-fun e!1389876 () Int)

(assert (=> d!650556 (= lt!810336 e!1389876)))

(declare-fun c!344541 () Bool)

(declare-fun e!1389875 () Bool)

(assert (=> d!650556 (= c!344541 e!1389875)))

(declare-fun res!935246 () Bool)

(assert (=> d!650556 (=> res!935246 e!1389875)))

(assert (=> d!650556 (= res!935246 (= lt!809974 lt!809962))))

(assert (=> d!650556 (and (>= lt!809974 0) (<= lt!809974 lt!809962))))

(assert (=> d!650556 (= (furthestNullablePosition!207 z!4055 lt!809974 totalInput!977 lt!809962 lt!809980) lt!810336)))

(declare-fun b!2173311 () Bool)

(declare-fun lostCauseZipper!161 ((InoxSet Context!3190)) Bool)

(assert (=> b!2173311 (= e!1389875 (lostCauseZipper!161 z!4055))))

(declare-fun lt!810335 () (InoxSet Context!3190))

(declare-fun b!2173312 () Bool)

(assert (=> b!2173312 (= e!1389876 (furthestNullablePosition!207 lt!810335 (+ lt!809974 1) totalInput!977 lt!809962 e!1389874))))

(declare-fun apply!6070 (BalanceConc!16084 Int) C!12196)

(assert (=> b!2173312 (= lt!810335 (derivationStepZipper!127 z!4055 (apply!6070 totalInput!977 lt!809974)))))

(declare-fun c!344542 () Bool)

(assert (=> b!2173312 (= c!344542 (nullableZipper!305 lt!810335))))

(declare-fun b!2173313 () Bool)

(assert (=> b!2173313 (= e!1389874 lt!809974)))

(declare-fun b!2173314 () Bool)

(assert (=> b!2173314 (= e!1389876 lt!809980)))

(assert (= (and d!650556 (not res!935246)) b!2173311))

(assert (= (and d!650556 c!344541) b!2173314))

(assert (= (and d!650556 (not c!344541)) b!2173312))

(assert (= (and b!2173312 c!344542) b!2173313))

(assert (= (and b!2173312 (not c!344542)) b!2173310))

(declare-fun m!2614793 () Bool)

(assert (=> b!2173311 m!2614793))

(declare-fun m!2614795 () Bool)

(assert (=> b!2173312 m!2614795))

(declare-fun m!2614797 () Bool)

(assert (=> b!2173312 m!2614797))

(assert (=> b!2173312 m!2614797))

(declare-fun m!2614799 () Bool)

(assert (=> b!2173312 m!2614799))

(declare-fun m!2614801 () Bool)

(assert (=> b!2173312 m!2614801))

(assert (=> b!2172780 d!650556))

(declare-fun d!650564 () Bool)

(assert (=> d!650564 (isPrefix!2141 lt!809973 (++!6384 lt!809973 lt!809977))))

(declare-fun lt!810337 () Unit!38263)

(assert (=> d!650564 (= lt!810337 (choose!12810 lt!809973 lt!809977))))

(assert (=> d!650564 (= (lemmaConcatTwoListThenFirstIsPrefix!1424 lt!809973 lt!809977) lt!810337)))

(declare-fun bs!447016 () Bool)

(assert (= bs!447016 d!650564))

(assert (=> bs!447016 m!2614231))

(assert (=> bs!447016 m!2614231))

(declare-fun m!2614803 () Bool)

(assert (=> bs!447016 m!2614803))

(declare-fun m!2614805 () Bool)

(assert (=> bs!447016 m!2614805))

(assert (=> b!2172780 d!650564))

(declare-fun d!650566 () Bool)

(declare-fun e!1389878 () Bool)

(assert (=> d!650566 e!1389878))

(declare-fun res!935248 () Bool)

(assert (=> d!650566 (=> res!935248 e!1389878)))

(declare-fun lt!810338 () Bool)

(assert (=> d!650566 (= res!935248 (not lt!810338))))

(declare-fun e!1389879 () Bool)

(assert (=> d!650566 (= lt!810338 e!1389879)))

(declare-fun res!935249 () Bool)

(assert (=> d!650566 (=> res!935249 e!1389879)))

(assert (=> d!650566 (= res!935249 ((_ is Nil!25204) lt!809973))))

(assert (=> d!650566 (= (isPrefix!2141 lt!809973 lt!809967) lt!810338)))

(declare-fun b!2173317 () Bool)

(declare-fun e!1389877 () Bool)

(assert (=> b!2173317 (= e!1389877 (isPrefix!2141 (tail!3123 lt!809973) (tail!3123 lt!809967)))))

(declare-fun b!2173316 () Bool)

(declare-fun res!935247 () Bool)

(assert (=> b!2173316 (=> (not res!935247) (not e!1389877))))

(assert (=> b!2173316 (= res!935247 (= (head!4651 lt!809973) (head!4651 lt!809967)))))

(declare-fun b!2173318 () Bool)

(assert (=> b!2173318 (= e!1389878 (>= (size!19688 lt!809967) (size!19688 lt!809973)))))

(declare-fun b!2173315 () Bool)

(assert (=> b!2173315 (= e!1389879 e!1389877)))

(declare-fun res!935250 () Bool)

(assert (=> b!2173315 (=> (not res!935250) (not e!1389877))))

(assert (=> b!2173315 (= res!935250 (not ((_ is Nil!25204) lt!809967)))))

(assert (= (and d!650566 (not res!935249)) b!2173315))

(assert (= (and b!2173315 res!935250) b!2173316))

(assert (= (and b!2173316 res!935247) b!2173317))

(assert (= (and d!650566 (not res!935248)) b!2173318))

(assert (=> b!2173317 m!2614353))

(declare-fun m!2614807 () Bool)

(assert (=> b!2173317 m!2614807))

(assert (=> b!2173317 m!2614353))

(assert (=> b!2173317 m!2614807))

(declare-fun m!2614809 () Bool)

(assert (=> b!2173317 m!2614809))

(assert (=> b!2173316 m!2614349))

(declare-fun m!2614811 () Bool)

(assert (=> b!2173316 m!2614811))

(declare-fun m!2614813 () Bool)

(assert (=> b!2173318 m!2614813))

(assert (=> b!2173318 m!2614467))

(assert (=> b!2172780 d!650566))

(declare-fun d!650568 () Bool)

(declare-fun e!1389883 () Bool)

(assert (=> d!650568 e!1389883))

(declare-fun res!935252 () Bool)

(assert (=> d!650568 (=> res!935252 e!1389883)))

(declare-fun lt!810341 () Bool)

(assert (=> d!650568 (= res!935252 (not lt!810341))))

(declare-fun e!1389884 () Bool)

(assert (=> d!650568 (= lt!810341 e!1389884)))

(declare-fun res!935253 () Bool)

(assert (=> d!650568 (=> res!935253 e!1389884)))

(assert (=> d!650568 (= res!935253 ((_ is Nil!25204) (_1!14857 lt!809963)))))

(assert (=> d!650568 (= (isPrefix!2141 (_1!14857 lt!809963) lt!809961) lt!810341)))

(declare-fun b!2173325 () Bool)

(declare-fun e!1389882 () Bool)

(assert (=> b!2173325 (= e!1389882 (isPrefix!2141 (tail!3123 (_1!14857 lt!809963)) (tail!3123 lt!809961)))))

(declare-fun b!2173324 () Bool)

(declare-fun res!935251 () Bool)

(assert (=> b!2173324 (=> (not res!935251) (not e!1389882))))

(assert (=> b!2173324 (= res!935251 (= (head!4651 (_1!14857 lt!809963)) (head!4651 lt!809961)))))

(declare-fun b!2173326 () Bool)

(assert (=> b!2173326 (= e!1389883 (>= (size!19688 lt!809961) (size!19688 (_1!14857 lt!809963))))))

(declare-fun b!2173323 () Bool)

(assert (=> b!2173323 (= e!1389884 e!1389882)))

(declare-fun res!935254 () Bool)

(assert (=> b!2173323 (=> (not res!935254) (not e!1389882))))

(assert (=> b!2173323 (= res!935254 (not ((_ is Nil!25204) lt!809961)))))

(assert (= (and d!650568 (not res!935253)) b!2173323))

(assert (= (and b!2173323 res!935254) b!2173324))

(assert (= (and b!2173324 res!935251) b!2173325))

(assert (= (and d!650568 (not res!935252)) b!2173326))

(assert (=> b!2173325 m!2614343))

(declare-fun m!2614815 () Bool)

(assert (=> b!2173325 m!2614815))

(assert (=> b!2173325 m!2614343))

(assert (=> b!2173325 m!2614815))

(declare-fun m!2614817 () Bool)

(assert (=> b!2173325 m!2614817))

(assert (=> b!2173324 m!2614339))

(declare-fun m!2614819 () Bool)

(assert (=> b!2173324 m!2614819))

(declare-fun m!2614821 () Bool)

(assert (=> b!2173326 m!2614821))

(assert (=> b!2173326 m!2614265))

(assert (=> b!2172780 d!650568))

(declare-fun d!650570 () Bool)

(declare-fun e!1389914 () Bool)

(assert (=> d!650570 e!1389914))

(declare-fun res!935282 () Bool)

(assert (=> d!650570 (=> res!935282 e!1389914)))

(assert (=> d!650570 (= res!935282 (isEmpty!14460 (_1!14857 (findLongestMatchInner!650 r!12534 Nil!25204 (size!19688 Nil!25204) lt!809968 lt!809968 (size!19688 lt!809968)))))))

(declare-fun lt!810354 () Unit!38263)

(declare-fun choose!12812 (Regex!6025 List!25288) Unit!38263)

(assert (=> d!650570 (= lt!810354 (choose!12812 r!12534 lt!809968))))

(assert (=> d!650570 (validRegex!2301 r!12534)))

(assert (=> d!650570 (= (longestMatchIsAcceptedByMatchOrIsEmpty!623 r!12534 lt!809968) lt!810354)))

(declare-fun b!2173372 () Bool)

(assert (=> b!2173372 (= e!1389914 (matchR!2774 r!12534 (_1!14857 (findLongestMatchInner!650 r!12534 Nil!25204 (size!19688 Nil!25204) lt!809968 lt!809968 (size!19688 lt!809968)))))))

(assert (= (and d!650570 (not res!935282)) b!2173372))

(declare-fun m!2614897 () Bool)

(assert (=> d!650570 m!2614897))

(assert (=> d!650570 m!2614189))

(assert (=> d!650570 m!2614207))

(assert (=> d!650570 m!2614189))

(assert (=> d!650570 m!2614209))

(declare-fun m!2614901 () Bool)

(assert (=> d!650570 m!2614901))

(assert (=> d!650570 m!2614207))

(assert (=> d!650570 m!2614249))

(assert (=> b!2173372 m!2614207))

(assert (=> b!2173372 m!2614189))

(assert (=> b!2173372 m!2614207))

(assert (=> b!2173372 m!2614189))

(assert (=> b!2173372 m!2614209))

(declare-fun m!2614903 () Bool)

(assert (=> b!2173372 m!2614903))

(assert (=> b!2172780 d!650570))

(declare-fun b!2173376 () Bool)

(declare-fun e!1389916 () Bool)

(declare-fun lt!810356 () List!25288)

(assert (=> b!2173376 (= e!1389916 (or (not (= (_2!14857 lt!809963) Nil!25204)) (= lt!810356 (_1!14857 lt!809963))))))

(declare-fun d!650598 () Bool)

(assert (=> d!650598 e!1389916))

(declare-fun res!935284 () Bool)

(assert (=> d!650598 (=> (not res!935284) (not e!1389916))))

(assert (=> d!650598 (= res!935284 (= (content!3424 lt!810356) ((_ map or) (content!3424 (_1!14857 lt!809963)) (content!3424 (_2!14857 lt!809963)))))))

(declare-fun e!1389915 () List!25288)

(assert (=> d!650598 (= lt!810356 e!1389915)))

(declare-fun c!344554 () Bool)

(assert (=> d!650598 (= c!344554 ((_ is Nil!25204) (_1!14857 lt!809963)))))

(assert (=> d!650598 (= (++!6384 (_1!14857 lt!809963) (_2!14857 lt!809963)) lt!810356)))

(declare-fun b!2173375 () Bool)

(declare-fun res!935283 () Bool)

(assert (=> b!2173375 (=> (not res!935283) (not e!1389916))))

(assert (=> b!2173375 (= res!935283 (= (size!19688 lt!810356) (+ (size!19688 (_1!14857 lt!809963)) (size!19688 (_2!14857 lt!809963)))))))

(declare-fun b!2173374 () Bool)

(assert (=> b!2173374 (= e!1389915 (Cons!25204 (h!30605 (_1!14857 lt!809963)) (++!6384 (t!197856 (_1!14857 lt!809963)) (_2!14857 lt!809963))))))

(declare-fun b!2173373 () Bool)

(assert (=> b!2173373 (= e!1389915 (_2!14857 lt!809963))))

(assert (= (and d!650598 c!344554) b!2173373))

(assert (= (and d!650598 (not c!344554)) b!2173374))

(assert (= (and d!650598 res!935284) b!2173375))

(assert (= (and b!2173375 res!935283) b!2173376))

(declare-fun m!2614905 () Bool)

(assert (=> d!650598 m!2614905))

(declare-fun m!2614907 () Bool)

(assert (=> d!650598 m!2614907))

(declare-fun m!2614909 () Bool)

(assert (=> d!650598 m!2614909))

(declare-fun m!2614911 () Bool)

(assert (=> b!2173375 m!2614911))

(assert (=> b!2173375 m!2614265))

(declare-fun m!2614913 () Bool)

(assert (=> b!2173375 m!2614913))

(declare-fun m!2614915 () Bool)

(assert (=> b!2173374 m!2614915))

(assert (=> b!2172770 d!650598))

(declare-fun d!650600 () Bool)

(declare-fun lt!810357 () Int)

(assert (=> d!650600 (>= lt!810357 0)))

(declare-fun e!1389917 () Int)

(assert (=> d!650600 (= lt!810357 e!1389917)))

(declare-fun c!344555 () Bool)

(assert (=> d!650600 (= c!344555 ((_ is Nil!25204) lt!809970))))

(assert (=> d!650600 (= (size!19688 lt!809970) lt!810357)))

(declare-fun b!2173377 () Bool)

(assert (=> b!2173377 (= e!1389917 0)))

(declare-fun b!2173378 () Bool)

(assert (=> b!2173378 (= e!1389917 (+ 1 (size!19688 (t!197856 lt!809970))))))

(assert (= (and d!650600 c!344555) b!2173377))

(assert (= (and d!650600 (not c!344555)) b!2173378))

(declare-fun m!2614917 () Bool)

(assert (=> b!2173378 m!2614917))

(assert (=> b!2172762 d!650600))

(declare-fun b!2173379 () Bool)

(declare-fun e!1389921 () Bool)

(assert (=> b!2173379 (= e!1389921 (not (= (head!4651 (_1!14857 lt!809963)) (c!344367 r!12534))))))

(declare-fun b!2173380 () Bool)

(declare-fun res!935285 () Bool)

(declare-fun e!1389920 () Bool)

(assert (=> b!2173380 (=> res!935285 e!1389920)))

(declare-fun e!1389918 () Bool)

(assert (=> b!2173380 (= res!935285 e!1389918)))

(declare-fun res!935291 () Bool)

(assert (=> b!2173380 (=> (not res!935291) (not e!1389918))))

(declare-fun lt!810358 () Bool)

(assert (=> b!2173380 (= res!935291 lt!810358)))

(declare-fun b!2173381 () Bool)

(declare-fun e!1389919 () Bool)

(declare-fun call!130423 () Bool)

(assert (=> b!2173381 (= e!1389919 (= lt!810358 call!130423))))

(declare-fun b!2173383 () Bool)

(declare-fun res!935287 () Bool)

(assert (=> b!2173383 (=> (not res!935287) (not e!1389918))))

(assert (=> b!2173383 (= res!935287 (isEmpty!14460 (tail!3123 (_1!14857 lt!809963))))))

(declare-fun b!2173384 () Bool)

(declare-fun e!1389924 () Bool)

(assert (=> b!2173384 (= e!1389924 e!1389921)))

(declare-fun res!935288 () Bool)

(assert (=> b!2173384 (=> res!935288 e!1389921)))

(assert (=> b!2173384 (= res!935288 call!130423)))

(declare-fun b!2173385 () Bool)

(declare-fun e!1389923 () Bool)

(assert (=> b!2173385 (= e!1389919 e!1389923)))

(declare-fun c!344557 () Bool)

(assert (=> b!2173385 (= c!344557 ((_ is EmptyLang!6025) r!12534))))

(declare-fun b!2173386 () Bool)

(assert (=> b!2173386 (= e!1389923 (not lt!810358))))

(declare-fun b!2173387 () Bool)

(declare-fun e!1389922 () Bool)

(assert (=> b!2173387 (= e!1389922 (matchR!2774 (derivativeStep!1441 r!12534 (head!4651 (_1!14857 lt!809963))) (tail!3123 (_1!14857 lt!809963))))))

(declare-fun b!2173388 () Bool)

(assert (=> b!2173388 (= e!1389922 (nullable!1699 r!12534))))

(declare-fun bm!130418 () Bool)

(assert (=> bm!130418 (= call!130423 (isEmpty!14460 (_1!14857 lt!809963)))))

(declare-fun b!2173389 () Bool)

(declare-fun res!935286 () Bool)

(assert (=> b!2173389 (=> (not res!935286) (not e!1389918))))

(assert (=> b!2173389 (= res!935286 (not call!130423))))

(declare-fun b!2173390 () Bool)

(assert (=> b!2173390 (= e!1389918 (= (head!4651 (_1!14857 lt!809963)) (c!344367 r!12534)))))

(declare-fun d!650602 () Bool)

(assert (=> d!650602 e!1389919))

(declare-fun c!344558 () Bool)

(assert (=> d!650602 (= c!344558 ((_ is EmptyExpr!6025) r!12534))))

(assert (=> d!650602 (= lt!810358 e!1389922)))

(declare-fun c!344556 () Bool)

(assert (=> d!650602 (= c!344556 (isEmpty!14460 (_1!14857 lt!809963)))))

(assert (=> d!650602 (validRegex!2301 r!12534)))

(assert (=> d!650602 (= (matchR!2774 r!12534 (_1!14857 lt!809963)) lt!810358)))

(declare-fun b!2173382 () Bool)

(declare-fun res!935289 () Bool)

(assert (=> b!2173382 (=> res!935289 e!1389920)))

(assert (=> b!2173382 (= res!935289 (not ((_ is ElementMatch!6025) r!12534)))))

(assert (=> b!2173382 (= e!1389923 e!1389920)))

(declare-fun b!2173391 () Bool)

(declare-fun res!935290 () Bool)

(assert (=> b!2173391 (=> res!935290 e!1389921)))

(assert (=> b!2173391 (= res!935290 (not (isEmpty!14460 (tail!3123 (_1!14857 lt!809963)))))))

(declare-fun b!2173392 () Bool)

(assert (=> b!2173392 (= e!1389920 e!1389924)))

(declare-fun res!935292 () Bool)

(assert (=> b!2173392 (=> (not res!935292) (not e!1389924))))

(assert (=> b!2173392 (= res!935292 (not lt!810358))))

(assert (= (and d!650602 c!344556) b!2173388))

(assert (= (and d!650602 (not c!344556)) b!2173387))

(assert (= (and d!650602 c!344558) b!2173381))

(assert (= (and d!650602 (not c!344558)) b!2173385))

(assert (= (and b!2173385 c!344557) b!2173386))

(assert (= (and b!2173385 (not c!344557)) b!2173382))

(assert (= (and b!2173382 (not res!935289)) b!2173380))

(assert (= (and b!2173380 res!935291) b!2173389))

(assert (= (and b!2173389 res!935286) b!2173383))

(assert (= (and b!2173383 res!935287) b!2173390))

(assert (= (and b!2173380 (not res!935285)) b!2173392))

(assert (= (and b!2173392 res!935292) b!2173384))

(assert (= (and b!2173384 (not res!935288)) b!2173391))

(assert (= (and b!2173391 (not res!935290)) b!2173379))

(assert (= (or b!2173381 b!2173384 b!2173389) bm!130418))

(assert (=> bm!130418 m!2614173))

(assert (=> d!650602 m!2614173))

(assert (=> d!650602 m!2614249))

(assert (=> b!2173379 m!2614339))

(assert (=> b!2173387 m!2614339))

(assert (=> b!2173387 m!2614339))

(declare-fun m!2614919 () Bool)

(assert (=> b!2173387 m!2614919))

(assert (=> b!2173387 m!2614343))

(assert (=> b!2173387 m!2614919))

(assert (=> b!2173387 m!2614343))

(declare-fun m!2614921 () Bool)

(assert (=> b!2173387 m!2614921))

(assert (=> b!2173391 m!2614343))

(assert (=> b!2173391 m!2614343))

(declare-fun m!2614923 () Bool)

(assert (=> b!2173391 m!2614923))

(assert (=> b!2173383 m!2614343))

(assert (=> b!2173383 m!2614343))

(assert (=> b!2173383 m!2614923))

(assert (=> b!2173390 m!2614339))

(assert (=> b!2173388 m!2614359))

(assert (=> b!2172771 d!650602))

(declare-fun d!650604 () Bool)

(declare-fun e!1389930 () Bool)

(assert (=> d!650604 e!1389930))

(declare-fun res!935296 () Bool)

(assert (=> d!650604 (=> res!935296 e!1389930)))

(declare-fun lt!810359 () Bool)

(assert (=> d!650604 (= res!935296 (not lt!810359))))

(declare-fun e!1389931 () Bool)

(assert (=> d!650604 (= lt!810359 e!1389931)))

(declare-fun res!935297 () Bool)

(assert (=> d!650604 (=> res!935297 e!1389931)))

(assert (=> d!650604 (= res!935297 ((_ is Nil!25204) lt!809970))))

(assert (=> d!650604 (= (isPrefix!2141 lt!809970 lt!809968) lt!810359)))

(declare-fun b!2173401 () Bool)

(declare-fun e!1389929 () Bool)

(assert (=> b!2173401 (= e!1389929 (isPrefix!2141 (tail!3123 lt!809970) (tail!3123 lt!809968)))))

(declare-fun b!2173400 () Bool)

(declare-fun res!935295 () Bool)

(assert (=> b!2173400 (=> (not res!935295) (not e!1389929))))

(assert (=> b!2173400 (= res!935295 (= (head!4651 lt!809970) (head!4651 lt!809968)))))

(declare-fun b!2173402 () Bool)

(assert (=> b!2173402 (= e!1389930 (>= (size!19688 lt!809968) (size!19688 lt!809970)))))

(declare-fun b!2173399 () Bool)

(assert (=> b!2173399 (= e!1389931 e!1389929)))

(declare-fun res!935298 () Bool)

(assert (=> b!2173399 (=> (not res!935298) (not e!1389929))))

(assert (=> b!2173399 (= res!935298 (not ((_ is Nil!25204) lt!809968)))))

(assert (= (and d!650604 (not res!935297)) b!2173399))

(assert (= (and b!2173399 res!935298) b!2173400))

(assert (= (and b!2173400 res!935295) b!2173401))

(assert (= (and d!650604 (not res!935296)) b!2173402))

(declare-fun m!2614925 () Bool)

(assert (=> b!2173401 m!2614925))

(assert (=> b!2173401 m!2614705))

(assert (=> b!2173401 m!2614925))

(assert (=> b!2173401 m!2614705))

(declare-fun m!2614927 () Bool)

(assert (=> b!2173401 m!2614927))

(declare-fun m!2614929 () Bool)

(assert (=> b!2173400 m!2614929))

(assert (=> b!2173400 m!2614707))

(assert (=> b!2173402 m!2614189))

(assert (=> b!2173402 m!2614175))

(assert (=> b!2172782 d!650604))

(declare-fun d!650606 () Bool)

(declare-fun e!1389933 () Bool)

(assert (=> d!650606 e!1389933))

(declare-fun res!935300 () Bool)

(assert (=> d!650606 (=> res!935300 e!1389933)))

(declare-fun lt!810360 () Bool)

(assert (=> d!650606 (= res!935300 (not lt!810360))))

(declare-fun e!1389934 () Bool)

(assert (=> d!650606 (= lt!810360 e!1389934)))

(declare-fun res!935301 () Bool)

(assert (=> d!650606 (=> res!935301 e!1389934)))

(assert (=> d!650606 (= res!935301 ((_ is Nil!25204) (take!233 lt!809968 lt!809984)))))

(assert (=> d!650606 (= (isPrefix!2141 (take!233 lt!809968 lt!809984) lt!809968) lt!810360)))

(declare-fun b!2173405 () Bool)

(declare-fun e!1389932 () Bool)

(assert (=> b!2173405 (= e!1389932 (isPrefix!2141 (tail!3123 (take!233 lt!809968 lt!809984)) (tail!3123 lt!809968)))))

(declare-fun b!2173404 () Bool)

(declare-fun res!935299 () Bool)

(assert (=> b!2173404 (=> (not res!935299) (not e!1389932))))

(assert (=> b!2173404 (= res!935299 (= (head!4651 (take!233 lt!809968 lt!809984)) (head!4651 lt!809968)))))

(declare-fun b!2173406 () Bool)

(assert (=> b!2173406 (= e!1389933 (>= (size!19688 lt!809968) (size!19688 (take!233 lt!809968 lt!809984))))))

(declare-fun b!2173403 () Bool)

(assert (=> b!2173403 (= e!1389934 e!1389932)))

(declare-fun res!935302 () Bool)

(assert (=> b!2173403 (=> (not res!935302) (not e!1389932))))

(assert (=> b!2173403 (= res!935302 (not ((_ is Nil!25204) lt!809968)))))

(assert (= (and d!650606 (not res!935301)) b!2173403))

(assert (= (and b!2173403 res!935302) b!2173404))

(assert (= (and b!2173404 res!935299) b!2173405))

(assert (= (and d!650606 (not res!935300)) b!2173406))

(assert (=> b!2173405 m!2614271))

(declare-fun m!2614931 () Bool)

(assert (=> b!2173405 m!2614931))

(assert (=> b!2173405 m!2614705))

(assert (=> b!2173405 m!2614931))

(assert (=> b!2173405 m!2614705))

(declare-fun m!2614933 () Bool)

(assert (=> b!2173405 m!2614933))

(assert (=> b!2173404 m!2614271))

(declare-fun m!2614935 () Bool)

(assert (=> b!2173404 m!2614935))

(assert (=> b!2173404 m!2614707))

(assert (=> b!2173406 m!2614189))

(assert (=> b!2173406 m!2614271))

(declare-fun m!2614939 () Bool)

(assert (=> b!2173406 m!2614939))

(assert (=> b!2172782 d!650606))

(declare-fun b!2173410 () Bool)

(declare-fun e!1389940 () Int)

(declare-fun e!1389938 () Int)

(assert (=> b!2173410 (= e!1389940 e!1389938)))

(declare-fun c!344562 () Bool)

(assert (=> b!2173410 (= c!344562 (>= lt!809984 (size!19688 lt!809968)))))

(declare-fun b!2173411 () Bool)

(assert (=> b!2173411 (= e!1389938 (size!19688 lt!809968))))

(declare-fun b!2173412 () Bool)

(declare-fun e!1389937 () Bool)

(declare-fun lt!810361 () List!25288)

(assert (=> b!2173412 (= e!1389937 (= (size!19688 lt!810361) e!1389940))))

(declare-fun c!344563 () Bool)

(assert (=> b!2173412 (= c!344563 (<= lt!809984 0))))

(declare-fun b!2173413 () Bool)

(declare-fun e!1389939 () List!25288)

(assert (=> b!2173413 (= e!1389939 Nil!25204)))

(declare-fun b!2173414 () Bool)

(assert (=> b!2173414 (= e!1389940 0)))

(declare-fun d!650608 () Bool)

(assert (=> d!650608 e!1389937))

(declare-fun res!935304 () Bool)

(assert (=> d!650608 (=> (not res!935304) (not e!1389937))))

(assert (=> d!650608 (= res!935304 (= ((_ map implies) (content!3424 lt!810361) (content!3424 lt!809968)) ((as const (InoxSet C!12196)) true)))))

(assert (=> d!650608 (= lt!810361 e!1389939)))

(declare-fun c!344564 () Bool)

(assert (=> d!650608 (= c!344564 (or ((_ is Nil!25204) lt!809968) (<= lt!809984 0)))))

(assert (=> d!650608 (= (take!233 lt!809968 lt!809984) lt!810361)))

(declare-fun b!2173415 () Bool)

(assert (=> b!2173415 (= e!1389939 (Cons!25204 (h!30605 lt!809968) (take!233 (t!197856 lt!809968) (- lt!809984 1))))))

(declare-fun b!2173416 () Bool)

(assert (=> b!2173416 (= e!1389938 lt!809984)))

(assert (= (and d!650608 c!344564) b!2173413))

(assert (= (and d!650608 (not c!344564)) b!2173415))

(assert (= (and d!650608 res!935304) b!2173412))

(assert (= (and b!2173412 c!344563) b!2173414))

(assert (= (and b!2173412 (not c!344563)) b!2173410))

(assert (= (and b!2173410 c!344562) b!2173411))

(assert (= (and b!2173410 (not c!344562)) b!2173416))

(declare-fun m!2614947 () Bool)

(assert (=> b!2173412 m!2614947))

(assert (=> b!2173410 m!2614189))

(declare-fun m!2614951 () Bool)

(assert (=> b!2173415 m!2614951))

(assert (=> b!2173411 m!2614189))

(declare-fun m!2614955 () Bool)

(assert (=> d!650608 m!2614955))

(declare-fun m!2614957 () Bool)

(assert (=> d!650608 m!2614957))

(assert (=> b!2172782 d!650608))

(declare-fun d!650616 () Bool)

(assert (=> d!650616 (isPrefix!2141 (take!233 lt!809968 lt!809984) lt!809968)))

(declare-fun lt!810364 () Unit!38263)

(assert (=> d!650616 (= lt!810364 (choose!12811 lt!809968 lt!809984))))

(assert (=> d!650616 (>= lt!809984 0)))

(assert (=> d!650616 (= (lemmaTakeIsPrefix!56 lt!809968 lt!809984) lt!810364)))

(declare-fun bs!447021 () Bool)

(assert (= bs!447021 d!650616))

(assert (=> bs!447021 m!2614271))

(assert (=> bs!447021 m!2614271))

(assert (=> bs!447021 m!2614273))

(declare-fun m!2614959 () Bool)

(assert (=> bs!447021 m!2614959))

(assert (=> b!2172782 d!650616))

(declare-fun d!650618 () Bool)

(declare-fun e!1389951 () Bool)

(assert (=> d!650618 e!1389951))

(declare-fun res!935315 () Bool)

(assert (=> d!650618 (=> res!935315 e!1389951)))

(declare-fun lt!810365 () Bool)

(assert (=> d!650618 (= res!935315 (not lt!810365))))

(declare-fun e!1389952 () Bool)

(assert (=> d!650618 (= lt!810365 e!1389952)))

(declare-fun res!935316 () Bool)

(assert (=> d!650618 (=> res!935316 e!1389952)))

(assert (=> d!650618 (= res!935316 ((_ is Nil!25204) (_1!14857 lt!809963)))))

(assert (=> d!650618 (= (isPrefix!2141 (_1!14857 lt!809963) lt!809968) lt!810365)))

(declare-fun b!2173436 () Bool)

(declare-fun e!1389950 () Bool)

(assert (=> b!2173436 (= e!1389950 (isPrefix!2141 (tail!3123 (_1!14857 lt!809963)) (tail!3123 lt!809968)))))

(declare-fun b!2173435 () Bool)

(declare-fun res!935314 () Bool)

(assert (=> b!2173435 (=> (not res!935314) (not e!1389950))))

(assert (=> b!2173435 (= res!935314 (= (head!4651 (_1!14857 lt!809963)) (head!4651 lt!809968)))))

(declare-fun b!2173437 () Bool)

(assert (=> b!2173437 (= e!1389951 (>= (size!19688 lt!809968) (size!19688 (_1!14857 lt!809963))))))

(declare-fun b!2173434 () Bool)

(assert (=> b!2173434 (= e!1389952 e!1389950)))

(declare-fun res!935317 () Bool)

(assert (=> b!2173434 (=> (not res!935317) (not e!1389950))))

(assert (=> b!2173434 (= res!935317 (not ((_ is Nil!25204) lt!809968)))))

(assert (= (and d!650618 (not res!935316)) b!2173434))

(assert (= (and b!2173434 res!935317) b!2173435))

(assert (= (and b!2173435 res!935314) b!2173436))

(assert (= (and d!650618 (not res!935315)) b!2173437))

(assert (=> b!2173436 m!2614343))

(assert (=> b!2173436 m!2614705))

(assert (=> b!2173436 m!2614343))

(assert (=> b!2173436 m!2614705))

(declare-fun m!2614961 () Bool)

(assert (=> b!2173436 m!2614961))

(assert (=> b!2173435 m!2614339))

(assert (=> b!2173435 m!2614707))

(assert (=> b!2173437 m!2614189))

(assert (=> b!2173437 m!2614265))

(assert (=> b!2172763 d!650618))

(declare-fun d!650620 () Bool)

(declare-fun c!344569 () Bool)

(assert (=> d!650620 (= c!344569 ((_ is Node!8161) (c!344366 totalInput!977)))))

(declare-fun e!1389953 () Bool)

(assert (=> d!650620 (= (inv!33459 (c!344366 totalInput!977)) e!1389953)))

(declare-fun b!2173438 () Bool)

(assert (=> b!2173438 (= e!1389953 (inv!33462 (c!344366 totalInput!977)))))

(declare-fun b!2173439 () Bool)

(declare-fun e!1389954 () Bool)

(assert (=> b!2173439 (= e!1389953 e!1389954)))

(declare-fun res!935318 () Bool)

(assert (=> b!2173439 (= res!935318 (not ((_ is Leaf!11941) (c!344366 totalInput!977))))))

(assert (=> b!2173439 (=> res!935318 e!1389954)))

(declare-fun b!2173440 () Bool)

(assert (=> b!2173440 (= e!1389954 (inv!33463 (c!344366 totalInput!977)))))

(assert (= (and d!650620 c!344569) b!2173438))

(assert (= (and d!650620 (not c!344569)) b!2173439))

(assert (= (and b!2173439 (not res!935318)) b!2173440))

(declare-fun m!2614965 () Bool)

(assert (=> b!2173438 m!2614965))

(declare-fun m!2614967 () Bool)

(assert (=> b!2173440 m!2614967))

(assert (=> b!2172772 d!650620))

(declare-fun d!650622 () Bool)

(declare-fun lt!810369 () Regex!6025)

(assert (=> d!650622 (validRegex!2301 lt!810369)))

(declare-fun generalisedUnion!515 (List!25289) Regex!6025)

(declare-fun unfocusZipperList!39 (List!25290) List!25289)

(assert (=> d!650622 (= lt!810369 (generalisedUnion!515 (unfocusZipperList!39 lt!809960)))))

(assert (=> d!650622 (= (unfocusZipper!132 lt!809960) lt!810369)))

(declare-fun bs!447022 () Bool)

(assert (= bs!447022 d!650622))

(declare-fun m!2614979 () Bool)

(assert (=> bs!447022 m!2614979))

(declare-fun m!2614981 () Bool)

(assert (=> bs!447022 m!2614981))

(assert (=> bs!447022 m!2614981))

(declare-fun m!2614983 () Bool)

(assert (=> bs!447022 m!2614983))

(assert (=> b!2172783 d!650622))

(declare-fun d!650630 () Bool)

(declare-fun e!1389959 () Bool)

(assert (=> d!650630 e!1389959))

(declare-fun res!935321 () Bool)

(assert (=> d!650630 (=> (not res!935321) (not e!1389959))))

(declare-fun lt!810372 () List!25290)

(declare-fun noDuplicate!292 (List!25290) Bool)

(assert (=> d!650630 (= res!935321 (noDuplicate!292 lt!810372))))

(declare-fun choose!12814 ((InoxSet Context!3190)) List!25290)

(assert (=> d!650630 (= lt!810372 (choose!12814 z!4055))))

(assert (=> d!650630 (= (toList!1208 z!4055) lt!810372)))

(declare-fun b!2173447 () Bool)

(declare-fun content!3425 (List!25290) (InoxSet Context!3190))

(assert (=> b!2173447 (= e!1389959 (= (content!3425 lt!810372) z!4055))))

(assert (= (and d!650630 res!935321) b!2173447))

(declare-fun m!2614985 () Bool)

(assert (=> d!650630 m!2614985))

(declare-fun m!2614987 () Bool)

(assert (=> d!650630 m!2614987))

(declare-fun m!2614989 () Bool)

(assert (=> b!2173447 m!2614989))

(assert (=> b!2172783 d!650630))

(declare-fun tp!678293 () Bool)

(declare-fun b!2173456 () Bool)

(declare-fun tp!678291 () Bool)

(declare-fun e!1389965 () Bool)

(assert (=> b!2173456 (= e!1389965 (and (inv!33459 (left!19356 (c!344366 input!5540))) tp!678291 (inv!33459 (right!19686 (c!344366 input!5540))) tp!678293))))

(declare-fun b!2173458 () Bool)

(declare-fun e!1389964 () Bool)

(declare-fun tp!678292 () Bool)

(assert (=> b!2173458 (= e!1389964 tp!678292)))

(declare-fun b!2173457 () Bool)

(declare-fun inv!33467 (IArray!16327) Bool)

(assert (=> b!2173457 (= e!1389965 (and (inv!33467 (xs!11103 (c!344366 input!5540))) e!1389964))))

(assert (=> b!2172764 (= tp!678284 (and (inv!33459 (c!344366 input!5540)) e!1389965))))

(assert (= (and b!2172764 ((_ is Node!8161) (c!344366 input!5540))) b!2173456))

(assert (= b!2173457 b!2173458))

(assert (= (and b!2172764 ((_ is Leaf!11941) (c!344366 input!5540))) b!2173457))

(declare-fun m!2614995 () Bool)

(assert (=> b!2173456 m!2614995))

(declare-fun m!2614997 () Bool)

(assert (=> b!2173456 m!2614997))

(declare-fun m!2614999 () Bool)

(assert (=> b!2173457 m!2614999))

(assert (=> b!2172764 m!2614267))

(declare-fun b!2173474 () Bool)

(declare-fun e!1389971 () Bool)

(assert (=> b!2173474 (= e!1389971 tp_is_empty!9657)))

(declare-fun b!2173476 () Bool)

(declare-fun tp!678311 () Bool)

(assert (=> b!2173476 (= e!1389971 tp!678311)))

(declare-fun b!2173475 () Bool)

(declare-fun tp!678310 () Bool)

(declare-fun tp!678313 () Bool)

(assert (=> b!2173475 (= e!1389971 (and tp!678310 tp!678313))))

(assert (=> b!2172768 (= tp!678279 e!1389971)))

(declare-fun b!2173477 () Bool)

(declare-fun tp!678312 () Bool)

(declare-fun tp!678314 () Bool)

(assert (=> b!2173477 (= e!1389971 (and tp!678312 tp!678314))))

(assert (= (and b!2172768 ((_ is ElementMatch!6025) (regOne!12562 r!12534))) b!2173474))

(assert (= (and b!2172768 ((_ is Concat!10327) (regOne!12562 r!12534))) b!2173475))

(assert (= (and b!2172768 ((_ is Star!6025) (regOne!12562 r!12534))) b!2173476))

(assert (= (and b!2172768 ((_ is Union!6025) (regOne!12562 r!12534))) b!2173477))

(declare-fun b!2173478 () Bool)

(declare-fun e!1389972 () Bool)

(assert (=> b!2173478 (= e!1389972 tp_is_empty!9657)))

(declare-fun b!2173480 () Bool)

(declare-fun tp!678316 () Bool)

(assert (=> b!2173480 (= e!1389972 tp!678316)))

(declare-fun b!2173479 () Bool)

(declare-fun tp!678315 () Bool)

(declare-fun tp!678318 () Bool)

(assert (=> b!2173479 (= e!1389972 (and tp!678315 tp!678318))))

(assert (=> b!2172768 (= tp!678277 e!1389972)))

(declare-fun b!2173481 () Bool)

(declare-fun tp!678317 () Bool)

(declare-fun tp!678319 () Bool)

(assert (=> b!2173481 (= e!1389972 (and tp!678317 tp!678319))))

(assert (= (and b!2172768 ((_ is ElementMatch!6025) (regTwo!12562 r!12534))) b!2173478))

(assert (= (and b!2172768 ((_ is Concat!10327) (regTwo!12562 r!12534))) b!2173479))

(assert (= (and b!2172768 ((_ is Star!6025) (regTwo!12562 r!12534))) b!2173480))

(assert (= (and b!2172768 ((_ is Union!6025) (regTwo!12562 r!12534))) b!2173481))

(declare-fun condSetEmpty!18244 () Bool)

(assert (=> setNonEmpty!18238 (= condSetEmpty!18244 (= setRest!18238 ((as const (Array Context!3190 Bool)) false)))))

(declare-fun setRes!18244 () Bool)

(assert (=> setNonEmpty!18238 (= tp!678281 setRes!18244)))

(declare-fun setIsEmpty!18244 () Bool)

(assert (=> setIsEmpty!18244 setRes!18244))

(declare-fun setElem!18244 () Context!3190)

(declare-fun setNonEmpty!18244 () Bool)

(declare-fun e!1389979 () Bool)

(declare-fun tp!678330 () Bool)

(assert (=> setNonEmpty!18244 (= setRes!18244 (and tp!678330 (inv!33460 setElem!18244) e!1389979))))

(declare-fun setRest!18244 () (InoxSet Context!3190))

(assert (=> setNonEmpty!18244 (= setRest!18238 ((_ map or) (store ((as const (Array Context!3190 Bool)) false) setElem!18244 true) setRest!18244))))

(declare-fun b!2173494 () Bool)

(declare-fun tp!678331 () Bool)

(assert (=> b!2173494 (= e!1389979 tp!678331)))

(assert (= (and setNonEmpty!18238 condSetEmpty!18244) setIsEmpty!18244))

(assert (= (and setNonEmpty!18238 (not condSetEmpty!18244)) setNonEmpty!18244))

(assert (= setNonEmpty!18244 b!2173494))

(declare-fun m!2615003 () Bool)

(assert (=> setNonEmpty!18244 m!2615003))

(declare-fun b!2173498 () Bool)

(declare-fun e!1389982 () Bool)

(assert (=> b!2173498 (= e!1389982 tp_is_empty!9657)))

(declare-fun b!2173500 () Bool)

(declare-fun tp!678336 () Bool)

(assert (=> b!2173500 (= e!1389982 tp!678336)))

(declare-fun b!2173499 () Bool)

(declare-fun tp!678335 () Bool)

(declare-fun tp!678338 () Bool)

(assert (=> b!2173499 (= e!1389982 (and tp!678335 tp!678338))))

(assert (=> b!2172761 (= tp!678276 e!1389982)))

(declare-fun b!2173501 () Bool)

(declare-fun tp!678337 () Bool)

(declare-fun tp!678339 () Bool)

(assert (=> b!2173501 (= e!1389982 (and tp!678337 tp!678339))))

(assert (= (and b!2172761 ((_ is ElementMatch!6025) (regOne!12563 r!12534))) b!2173498))

(assert (= (and b!2172761 ((_ is Concat!10327) (regOne!12563 r!12534))) b!2173499))

(assert (= (and b!2172761 ((_ is Star!6025) (regOne!12563 r!12534))) b!2173500))

(assert (= (and b!2172761 ((_ is Union!6025) (regOne!12563 r!12534))) b!2173501))

(declare-fun b!2173502 () Bool)

(declare-fun e!1389983 () Bool)

(assert (=> b!2173502 (= e!1389983 tp_is_empty!9657)))

(declare-fun b!2173504 () Bool)

(declare-fun tp!678341 () Bool)

(assert (=> b!2173504 (= e!1389983 tp!678341)))

(declare-fun b!2173503 () Bool)

(declare-fun tp!678340 () Bool)

(declare-fun tp!678343 () Bool)

(assert (=> b!2173503 (= e!1389983 (and tp!678340 tp!678343))))

(assert (=> b!2172761 (= tp!678283 e!1389983)))

(declare-fun b!2173505 () Bool)

(declare-fun tp!678342 () Bool)

(declare-fun tp!678344 () Bool)

(assert (=> b!2173505 (= e!1389983 (and tp!678342 tp!678344))))

(assert (= (and b!2172761 ((_ is ElementMatch!6025) (regTwo!12563 r!12534))) b!2173502))

(assert (= (and b!2172761 ((_ is Concat!10327) (regTwo!12563 r!12534))) b!2173503))

(assert (= (and b!2172761 ((_ is Star!6025) (regTwo!12563 r!12534))) b!2173504))

(assert (= (and b!2172761 ((_ is Union!6025) (regTwo!12563 r!12534))) b!2173505))

(declare-fun b!2173512 () Bool)

(declare-fun e!1389986 () Bool)

(assert (=> b!2173512 (= e!1389986 tp_is_empty!9657)))

(declare-fun b!2173514 () Bool)

(declare-fun tp!678348 () Bool)

(assert (=> b!2173514 (= e!1389986 tp!678348)))

(declare-fun b!2173513 () Bool)

(declare-fun tp!678347 () Bool)

(declare-fun tp!678350 () Bool)

(assert (=> b!2173513 (= e!1389986 (and tp!678347 tp!678350))))

(assert (=> b!2172781 (= tp!678282 e!1389986)))

(declare-fun b!2173515 () Bool)

(declare-fun tp!678349 () Bool)

(declare-fun tp!678351 () Bool)

(assert (=> b!2173515 (= e!1389986 (and tp!678349 tp!678351))))

(assert (= (and b!2172781 ((_ is ElementMatch!6025) (reg!6354 r!12534))) b!2173512))

(assert (= (and b!2172781 ((_ is Concat!10327) (reg!6354 r!12534))) b!2173513))

(assert (= (and b!2172781 ((_ is Star!6025) (reg!6354 r!12534))) b!2173514))

(assert (= (and b!2172781 ((_ is Union!6025) (reg!6354 r!12534))) b!2173515))

(declare-fun b!2173524 () Bool)

(declare-fun e!1389989 () Bool)

(declare-fun tp!678364 () Bool)

(declare-fun tp!678365 () Bool)

(assert (=> b!2173524 (= e!1389989 (and tp!678364 tp!678365))))

(assert (=> b!2172776 (= tp!678278 e!1389989)))

(assert (= (and b!2172776 ((_ is Cons!25205) (exprs!2095 setElem!18238))) b!2173524))

(declare-fun e!1389991 () Bool)

(declare-fun b!2173525 () Bool)

(declare-fun tp!678366 () Bool)

(declare-fun tp!678368 () Bool)

(assert (=> b!2173525 (= e!1389991 (and (inv!33459 (left!19356 (c!344366 totalInput!977))) tp!678366 (inv!33459 (right!19686 (c!344366 totalInput!977))) tp!678368))))

(declare-fun b!2173527 () Bool)

(declare-fun e!1389990 () Bool)

(declare-fun tp!678367 () Bool)

(assert (=> b!2173527 (= e!1389990 tp!678367)))

(declare-fun b!2173526 () Bool)

(assert (=> b!2173526 (= e!1389991 (and (inv!33467 (xs!11103 (c!344366 totalInput!977))) e!1389990))))

(assert (=> b!2172772 (= tp!678280 (and (inv!33459 (c!344366 totalInput!977)) e!1389991))))

(assert (= (and b!2172772 ((_ is Node!8161) (c!344366 totalInput!977))) b!2173525))

(assert (= b!2173526 b!2173527))

(assert (= (and b!2172772 ((_ is Leaf!11941) (c!344366 totalInput!977))) b!2173526))

(declare-fun m!2615011 () Bool)

(assert (=> b!2173525 m!2615011))

(declare-fun m!2615013 () Bool)

(assert (=> b!2173525 m!2615013))

(declare-fun m!2615015 () Bool)

(assert (=> b!2173526 m!2615015))

(assert (=> b!2172772 m!2614177))

(check-sat (not b!2173259) (not b!2173525) (not b!2173447) (not d!650488) (not bm!130414) (not setNonEmpty!18244) (not b!2172817) (not b!2173164) (not b!2173477) (not b!2173325) (not b!2173040) (not d!650442) (not b!2173499) (not b!2173090) (not d!650616) (not b!2173074) (not b!2172887) (not b!2173000) (not b!2173166) (not d!650458) (not b!2173515) (not bm!130362) (not d!650492) (not b!2172819) (not bm!130346) (not b!2172942) (not d!650518) (not b!2173406) (not b!2173149) (not b!2173374) (not b!2173165) (not b!2173383) (not b!2173400) (not b!2173379) (not b!2173501) (not b!2173390) (not b!2173504) (not b!2173279) (not d!650542) (not b!2173387) (not b!2173150) (not b!2173411) (not b!2173284) (not b!2172921) (not d!650478) (not b!2173402) (not b!2173500) (not b!2173479) (not b!2173513) (not b!2173277) (not d!650514) (not bm!130408) (not d!650482) (not b!2173312) (not b!2173153) (not d!650450) (not bm!130357) (not b!2173404) (not b!2173405) (not d!650502) (not b!2173456) (not d!650480) (not b!2173435) (not d!650490) (not b!2173276) (not b!2172929) (not bm!130365) (not d!650526) (not b!2172935) (not d!650598) (not b!2173494) (not b!2172888) (not d!650486) (not d!650460) (not b!2173378) (not b!2172882) (not b!2172940) (not d!650630) (not b!2173415) (not b!2173257) (not d!650622) (not b!2172925) (not bm!130412) (not d!650438) (not d!650528) (not b!2172931) (not d!650564) (not b!2173440) (not b!2173458) (not b!2172943) (not b!2173258) (not b!2173063) (not d!650552) tp_is_empty!9657 (not b!2173475) (not bm!130413) (not b!2173039) (not d!650464) (not d!650472) (not b!2172928) (not b!2173388) (not b!2173281) (not d!650540) (not b!2173372) (not b!2173280) (not b!2173514) (not d!650446) (not b!2173438) (not d!650484) (not bm!130418) (not b!2173311) (not b!2173437) (not bm!130411) (not b!2173527) (not b!2172917) (not b!2173069) (not d!650530) (not b!2173266) (not b!2173436) (not b!2173326) (not b!2173038) (not b!2173526) (not b!2173043) (not b!2172772) (not b!2173318) (not bm!130407) (not d!650444) (not b!2173091) (not d!650602) (not b!2172926) (not b!2173316) (not b!2173317) (not d!650608) (not bm!130347) (not b!2173287) (not b!2173481) (not bm!130409) (not b!2173001) (not d!650570) (not d!650420) (not bm!130358) (not b!2173375) (not b!2173524) (not d!650436) (not d!650516) (not d!650462) (not bm!130410) (not b!2172939) (not b!2173163) (not b!2173148) (not b!2173391) (not b!2173401) (not d!650454) (not b!2173278) (not b!2173503) (not b!2173410) (not b!2173505) (not b!2173324) (not b!2173480) (not b!2173476) (not b!2173457) (not b!2173251) (not b!2172999) (not b!2172764) (not b!2173412))
(check-sat)
