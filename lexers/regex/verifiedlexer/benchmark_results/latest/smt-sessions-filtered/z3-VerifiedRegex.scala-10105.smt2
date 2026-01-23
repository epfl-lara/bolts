; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!528890 () Bool)

(assert start!528890)

(declare-fun b!5004368 () Bool)

(declare-fun e!3127169 () Bool)

(declare-datatypes ((C!27840 0))(
  ( (C!27841 (val!23286 Int)) )
))
(declare-datatypes ((List!57989 0))(
  ( (Nil!57865) (Cons!57865 (h!64313 C!27840) (t!370335 List!57989)) )
))
(declare-datatypes ((IArray!30689 0))(
  ( (IArray!30690 (innerList!15402 List!57989)) )
))
(declare-datatypes ((Conc!15314 0))(
  ( (Node!15314 (left!42305 Conc!15314) (right!42635 Conc!15314) (csize!30858 Int) (cheight!15525 Int)) (Leaf!25420 (xs!18640 IArray!30689) (csize!30859 Int)) (Empty!15314) )
))
(declare-datatypes ((BalanceConc!30058 0))(
  ( (BalanceConc!30059 (c!854185 Conc!15314)) )
))
(declare-datatypes ((tuple2!63016 0))(
  ( (tuple2!63017 (_1!34811 BalanceConc!30058) (_2!34811 BalanceConc!30058)) )
))
(declare-fun lt!2071017 () tuple2!63016)

(declare-fun isEmpty!31332 (BalanceConc!30058) Bool)

(assert (=> b!5004368 (= e!3127169 (not (isEmpty!31332 (_1!34811 lt!2071017))))))

(declare-fun b!5004369 () Bool)

(declare-fun e!3127175 () Bool)

(declare-fun input!5597 () BalanceConc!30058)

(declare-fun tp!1403494 () Bool)

(declare-fun inv!76029 (Conc!15314) Bool)

(assert (=> b!5004369 (= e!3127175 (and (inv!76029 (c!854185 input!5597)) tp!1403494))))

(declare-fun b!5004370 () Bool)

(declare-fun e!3127174 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13795 0))(
  ( (ElementMatch!13795 (c!854186 C!27840)) (Concat!22588 (regOne!28102 Regex!13795) (regTwo!28102 Regex!13795)) (EmptyExpr!13795) (Star!13795 (reg!14124 Regex!13795)) (EmptyLang!13795) (Union!13795 (regOne!28103 Regex!13795) (regTwo!28103 Regex!13795)) )
))
(declare-datatypes ((List!57990 0))(
  ( (Nil!57866) (Cons!57866 (h!64314 Regex!13795) (t!370336 List!57990)) )
))
(declare-datatypes ((Context!6440 0))(
  ( (Context!6441 (exprs!3720 List!57990)) )
))
(declare-fun z!4183 () (InoxSet Context!6440))

(declare-fun lt!2071030 () List!57989)

(declare-fun matchZipper!563 ((InoxSet Context!6440) List!57989) Bool)

(assert (=> b!5004370 (= e!3127174 (matchZipper!563 z!4183 lt!2071030))))

(declare-fun b!5004371 () Bool)

(declare-fun e!3127171 () Bool)

(declare-fun e!3127162 () Bool)

(assert (=> b!5004371 (= e!3127171 e!3127162)))

(declare-fun res!2135306 () Bool)

(assert (=> b!5004371 (=> (not res!2135306) (not e!3127162))))

(declare-fun lt!2071008 () List!57989)

(declare-fun lt!2071019 () List!57989)

(declare-fun isSuffix!1361 (List!57989 List!57989) Bool)

(assert (=> b!5004371 (= res!2135306 (isSuffix!1361 lt!2071008 lt!2071019))))

(declare-fun totalInput!1012 () BalanceConc!30058)

(declare-fun list!18624 (BalanceConc!30058) List!57989)

(assert (=> b!5004371 (= lt!2071019 (list!18624 totalInput!1012))))

(assert (=> b!5004371 (= lt!2071008 (list!18624 input!5597))))

(declare-fun b!5004372 () Bool)

(declare-fun e!3127172 () Bool)

(assert (=> b!5004372 (= e!3127172 e!3127171)))

(declare-fun res!2135297 () Bool)

(assert (=> b!5004372 (=> (not res!2135297) (not e!3127171))))

(declare-datatypes ((List!57991 0))(
  ( (Nil!57867) (Cons!57867 (h!64315 Context!6440) (t!370337 List!57991)) )
))
(declare-fun lt!2071007 () List!57991)

(declare-fun r!12727 () Regex!13795)

(declare-fun unfocusZipper!322 (List!57991) Regex!13795)

(assert (=> b!5004372 (= res!2135297 (= (unfocusZipper!322 lt!2071007) r!12727))))

(declare-fun toList!8080 ((InoxSet Context!6440)) List!57991)

(assert (=> b!5004372 (= lt!2071007 (toList!8080 z!4183))))

(declare-fun b!5004373 () Bool)

(declare-fun e!3127176 () Bool)

(declare-fun tp!1403495 () Bool)

(assert (=> b!5004373 (= e!3127176 (and (inv!76029 (c!854185 totalInput!1012)) tp!1403495))))

(declare-fun b!5004374 () Bool)

(declare-fun e!3127170 () Bool)

(assert (=> b!5004374 (= e!3127162 e!3127170)))

(declare-fun res!2135302 () Bool)

(assert (=> b!5004374 (=> (not res!2135302) (not e!3127170))))

(declare-fun lt!2071012 () List!57989)

(assert (=> b!5004374 (= res!2135302 (= lt!2071012 lt!2071008))))

(declare-fun lt!2071021 () List!57989)

(declare-fun lt!2071011 () List!57989)

(declare-fun ++!12641 (List!57989 List!57989) List!57989)

(assert (=> b!5004374 (= lt!2071012 (++!12641 lt!2071021 lt!2071011))))

(assert (=> b!5004374 (= lt!2071011 (list!18624 (_2!34811 lt!2071017)))))

(assert (=> b!5004374 (= lt!2071021 (list!18624 (_1!34811 lt!2071017)))))

(declare-datatypes ((tuple2!63018 0))(
  ( (tuple2!63019 (_1!34812 List!57989) (_2!34812 List!57989)) )
))
(declare-fun lt!2071026 () tuple2!63018)

(declare-fun findLongestMatch!1808 (Regex!13795 List!57989) tuple2!63018)

(assert (=> b!5004374 (= lt!2071026 (findLongestMatch!1808 r!12727 lt!2071008))))

(declare-fun lt!2071014 () Int)

(declare-fun lt!2071027 () Int)

(declare-fun size!38464 (BalanceConc!30058) Int)

(assert (=> b!5004374 (= lt!2071014 (- lt!2071027 (size!38464 input!5597)))))

(assert (=> b!5004374 (= lt!2071027 (size!38464 totalInput!1012))))

(declare-fun findLongestMatchZipperFastV2!97 ((InoxSet Context!6440) BalanceConc!30058 BalanceConc!30058) tuple2!63016)

(assert (=> b!5004374 (= lt!2071017 (findLongestMatchZipperFastV2!97 z!4183 input!5597 totalInput!1012))))

(declare-fun b!5004375 () Bool)

(declare-fun e!3127173 () Bool)

(declare-fun tp!1403492 () Bool)

(declare-fun tp!1403491 () Bool)

(assert (=> b!5004375 (= e!3127173 (and tp!1403492 tp!1403491))))

(declare-fun b!5004376 () Bool)

(declare-fun e!3127165 () Bool)

(assert (=> b!5004376 (= e!3127165 e!3127174)))

(declare-fun res!2135308 () Bool)

(assert (=> b!5004376 (=> res!2135308 e!3127174)))

(declare-fun lt!2071010 () List!57989)

(declare-fun lt!2071005 () Int)

(assert (=> b!5004376 (= res!2135308 (or (not (= lt!2071010 (_1!34812 lt!2071026))) (< lt!2071014 0) (> lt!2071014 lt!2071027) (< lt!2071005 0) (> lt!2071005 (- lt!2071027 lt!2071014))))))

(assert (=> b!5004376 (= lt!2071030 (_1!34812 lt!2071026))))

(declare-datatypes ((Unit!149035 0))(
  ( (Unit!149036) )
))
(declare-fun lt!2071006 () Unit!149035)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1275 (List!57989 List!57989 List!57989) Unit!149035)

(assert (=> b!5004376 (= lt!2071006 (lemmaIsPrefixSameLengthThenSameList!1275 lt!2071030 (_1!34812 lt!2071026) lt!2071008))))

(declare-fun isPrefix!5348 (List!57989 List!57989) Bool)

(assert (=> b!5004376 (isPrefix!5348 lt!2071010 lt!2071008)))

(declare-fun take!654 (List!57989 Int) List!57989)

(assert (=> b!5004376 (= lt!2071010 (take!654 lt!2071008 lt!2071005))))

(declare-fun lt!2071028 () Unit!149035)

(declare-fun lemmaTakeIsPrefix!148 (List!57989 Int) Unit!149035)

(assert (=> b!5004376 (= lt!2071028 (lemmaTakeIsPrefix!148 lt!2071008 lt!2071005))))

(declare-fun b!5004377 () Bool)

(declare-fun e!3127164 () Bool)

(declare-fun e!3127177 () Bool)

(assert (=> b!5004377 (= e!3127164 (not e!3127177))))

(declare-fun res!2135305 () Bool)

(assert (=> b!5004377 (=> res!2135305 e!3127177)))

(assert (=> b!5004377 (= res!2135305 e!3127169)))

(declare-fun res!2135303 () Bool)

(assert (=> b!5004377 (=> (not res!2135303) (not e!3127169))))

(declare-fun lt!2071023 () Bool)

(assert (=> b!5004377 (= res!2135303 (not lt!2071023))))

(assert (=> b!5004377 (= lt!2071023 (matchZipper!563 z!4183 lt!2071021))))

(declare-fun e!3127161 () Bool)

(assert (=> b!5004377 e!3127161))

(declare-fun res!2135296 () Bool)

(assert (=> b!5004377 (=> res!2135296 e!3127161)))

(declare-fun lt!2071024 () tuple2!63018)

(declare-fun isEmpty!31333 (List!57989) Bool)

(assert (=> b!5004377 (= res!2135296 (isEmpty!31333 (_1!34812 lt!2071024)))))

(declare-fun findLongestMatchInner!1984 (Regex!13795 List!57989 Int List!57989 List!57989 Int) tuple2!63018)

(declare-fun size!38465 (List!57989) Int)

(assert (=> b!5004377 (= lt!2071024 (findLongestMatchInner!1984 r!12727 Nil!57865 (size!38465 Nil!57865) lt!2071008 lt!2071008 (size!38465 lt!2071008)))))

(declare-fun lt!2071020 () Unit!149035)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1937 (Regex!13795 List!57989) Unit!149035)

(assert (=> b!5004377 (= lt!2071020 (longestMatchIsAcceptedByMatchOrIsEmpty!1937 r!12727 lt!2071008))))

(declare-fun e!3127168 () Bool)

(assert (=> b!5004377 e!3127168))

(declare-fun res!2135299 () Bool)

(assert (=> b!5004377 (=> res!2135299 e!3127168)))

(declare-fun lt!2071018 () Int)

(assert (=> b!5004377 (= res!2135299 (= lt!2071018 0))))

(declare-fun findLongestMatchInnerZipperFastV2!135 ((InoxSet Context!6440) Int BalanceConc!30058 Int) Int)

(assert (=> b!5004377 (= lt!2071018 (findLongestMatchInnerZipperFastV2!135 z!4183 lt!2071014 totalInput!1012 lt!2071027))))

(declare-fun lt!2071015 () Unit!149035)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!54 ((InoxSet Context!6440) Int BalanceConc!30058) Unit!149035)

(assert (=> b!5004377 (= lt!2071015 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!54 z!4183 lt!2071014 totalInput!1012))))

(assert (=> b!5004377 (isPrefix!5348 (take!654 lt!2071019 lt!2071014) lt!2071019)))

(declare-fun lt!2071022 () Unit!149035)

(assert (=> b!5004377 (= lt!2071022 (lemmaTakeIsPrefix!148 lt!2071019 lt!2071014))))

(declare-fun lt!2071013 () List!57989)

(assert (=> b!5004377 (isPrefix!5348 (_1!34812 lt!2071026) lt!2071013)))

(declare-fun lt!2071031 () Unit!149035)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3446 (List!57989 List!57989) Unit!149035)

(assert (=> b!5004377 (= lt!2071031 (lemmaConcatTwoListThenFirstIsPrefix!3446 (_1!34812 lt!2071026) (_2!34812 lt!2071026)))))

(assert (=> b!5004377 (isPrefix!5348 lt!2071021 lt!2071012)))

(declare-fun lt!2071032 () Unit!149035)

(assert (=> b!5004377 (= lt!2071032 (lemmaConcatTwoListThenFirstIsPrefix!3446 lt!2071021 lt!2071011))))

(declare-fun b!5004378 () Bool)

(declare-fun drop!2458 (List!57989 Int) List!57989)

(assert (=> b!5004378 (= e!3127168 (matchZipper!563 z!4183 (take!654 (drop!2458 lt!2071019 lt!2071014) lt!2071018)))))

(declare-fun setIsEmpty!28412 () Bool)

(declare-fun setRes!28412 () Bool)

(assert (=> setIsEmpty!28412 setRes!28412))

(declare-fun b!5004379 () Bool)

(declare-fun e!3127160 () Bool)

(assert (=> b!5004379 (= e!3127160 e!3127165)))

(declare-fun res!2135298 () Bool)

(assert (=> b!5004379 (=> res!2135298 e!3127165)))

(declare-fun lt!2071025 () List!57989)

(assert (=> b!5004379 (= res!2135298 (not (= lt!2071025 lt!2071008)))))

(assert (=> b!5004379 (= lt!2071030 (take!654 lt!2071025 lt!2071005))))

(assert (=> b!5004379 (= lt!2071025 (drop!2458 lt!2071019 lt!2071014))))

(declare-fun b!5004380 () Bool)

(declare-fun tp_is_empty!36587 () Bool)

(assert (=> b!5004380 (= e!3127173 tp_is_empty!36587)))

(declare-fun b!5004381 () Bool)

(assert (=> b!5004381 (= e!3127170 e!3127164)))

(declare-fun res!2135307 () Bool)

(assert (=> b!5004381 (=> (not res!2135307) (not e!3127164))))

(assert (=> b!5004381 (= res!2135307 (= lt!2071013 lt!2071008))))

(assert (=> b!5004381 (= lt!2071013 (++!12641 (_1!34812 lt!2071026) (_2!34812 lt!2071026)))))

(declare-fun b!5004382 () Bool)

(declare-fun e!3127163 () Bool)

(assert (=> b!5004382 (= e!3127163 (not (isEmpty!31333 (_1!34812 lt!2071026))))))

(declare-fun res!2135301 () Bool)

(assert (=> start!528890 (=> (not res!2135301) (not e!3127172))))

(declare-fun validRegex!6092 (Regex!13795) Bool)

(assert (=> start!528890 (= res!2135301 (validRegex!6092 r!12727))))

(assert (=> start!528890 e!3127172))

(assert (=> start!528890 e!3127173))

(declare-fun inv!76030 (BalanceConc!30058) Bool)

(assert (=> start!528890 (and (inv!76030 input!5597) e!3127175)))

(declare-fun condSetEmpty!28412 () Bool)

(assert (=> start!528890 (= condSetEmpty!28412 (= z!4183 ((as const (Array Context!6440 Bool)) false)))))

(assert (=> start!528890 setRes!28412))

(assert (=> start!528890 (and (inv!76030 totalInput!1012) e!3127176)))

(declare-fun e!3127167 () Bool)

(declare-fun tp!1403489 () Bool)

(declare-fun setNonEmpty!28412 () Bool)

(declare-fun setElem!28412 () Context!6440)

(declare-fun inv!76031 (Context!6440) Bool)

(assert (=> setNonEmpty!28412 (= setRes!28412 (and tp!1403489 (inv!76031 setElem!28412) e!3127167))))

(declare-fun setRest!28412 () (InoxSet Context!6440))

(assert (=> setNonEmpty!28412 (= z!4183 ((_ map or) (store ((as const (Array Context!6440 Bool)) false) setElem!28412 true) setRest!28412))))

(declare-fun b!5004383 () Bool)

(declare-fun tp!1403488 () Bool)

(assert (=> b!5004383 (= e!3127173 tp!1403488)))

(declare-fun b!5004384 () Bool)

(declare-fun e!3127166 () Bool)

(assert (=> b!5004384 (= e!3127177 e!3127166)))

(declare-fun res!2135300 () Bool)

(assert (=> b!5004384 (=> res!2135300 e!3127166)))

(assert (=> b!5004384 (= res!2135300 e!3127163)))

(declare-fun res!2135309 () Bool)

(assert (=> b!5004384 (=> (not res!2135309) (not e!3127163))))

(declare-fun lt!2071009 () Bool)

(assert (=> b!5004384 (= res!2135309 (not lt!2071009))))

(declare-fun matchR!6759 (Regex!13795 List!57989) Bool)

(assert (=> b!5004384 (= lt!2071009 (matchR!6759 r!12727 (_1!34812 lt!2071026)))))

(declare-fun b!5004385 () Bool)

(declare-fun tp!1403493 () Bool)

(declare-fun tp!1403496 () Bool)

(assert (=> b!5004385 (= e!3127173 (and tp!1403493 tp!1403496))))

(declare-fun b!5004386 () Bool)

(declare-fun tp!1403490 () Bool)

(assert (=> b!5004386 (= e!3127167 tp!1403490)))

(declare-fun b!5004387 () Bool)

(assert (=> b!5004387 (= e!3127166 e!3127160)))

(declare-fun res!2135304 () Bool)

(assert (=> b!5004387 (=> res!2135304 e!3127160)))

(assert (=> b!5004387 (= res!2135304 (<= lt!2071005 (size!38464 (_1!34811 lt!2071017))))))

(assert (=> b!5004387 (= lt!2071005 (size!38465 (_1!34812 lt!2071026)))))

(assert (=> b!5004387 (= (matchR!6759 r!12727 lt!2071021) lt!2071023)))

(declare-fun lt!2071029 () Unit!149035)

(declare-fun theoremZipperRegexEquiv!167 ((InoxSet Context!6440) List!57991 Regex!13795 List!57989) Unit!149035)

(assert (=> b!5004387 (= lt!2071029 (theoremZipperRegexEquiv!167 z!4183 lt!2071007 r!12727 lt!2071021))))

(assert (=> b!5004387 (= lt!2071009 (matchZipper!563 z!4183 (_1!34812 lt!2071026)))))

(declare-fun lt!2071016 () Unit!149035)

(assert (=> b!5004387 (= lt!2071016 (theoremZipperRegexEquiv!167 z!4183 lt!2071007 r!12727 (_1!34812 lt!2071026)))))

(declare-fun b!5004388 () Bool)

(assert (=> b!5004388 (= e!3127161 (matchR!6759 r!12727 (_1!34812 lt!2071024)))))

(assert (= (and start!528890 res!2135301) b!5004372))

(assert (= (and b!5004372 res!2135297) b!5004371))

(assert (= (and b!5004371 res!2135306) b!5004374))

(assert (= (and b!5004374 res!2135302) b!5004381))

(assert (= (and b!5004381 res!2135307) b!5004377))

(assert (= (and b!5004377 (not res!2135299)) b!5004378))

(assert (= (and b!5004377 (not res!2135296)) b!5004388))

(assert (= (and b!5004377 res!2135303) b!5004368))

(assert (= (and b!5004377 (not res!2135305)) b!5004384))

(assert (= (and b!5004384 res!2135309) b!5004382))

(assert (= (and b!5004384 (not res!2135300)) b!5004387))

(assert (= (and b!5004387 (not res!2135304)) b!5004379))

(assert (= (and b!5004379 (not res!2135298)) b!5004376))

(assert (= (and b!5004376 (not res!2135308)) b!5004370))

(get-info :version)

(assert (= (and start!528890 ((_ is ElementMatch!13795) r!12727)) b!5004380))

(assert (= (and start!528890 ((_ is Concat!22588) r!12727)) b!5004375))

(assert (= (and start!528890 ((_ is Star!13795) r!12727)) b!5004383))

(assert (= (and start!528890 ((_ is Union!13795) r!12727)) b!5004385))

(assert (= start!528890 b!5004369))

(assert (= (and start!528890 condSetEmpty!28412) setIsEmpty!28412))

(assert (= (and start!528890 (not condSetEmpty!28412)) setNonEmpty!28412))

(assert (= setNonEmpty!28412 b!5004386))

(assert (= start!528890 b!5004373))

(declare-fun m!6038308 () Bool)

(assert (=> b!5004388 m!6038308))

(declare-fun m!6038310 () Bool)

(assert (=> b!5004377 m!6038310))

(declare-fun m!6038312 () Bool)

(assert (=> b!5004377 m!6038312))

(declare-fun m!6038314 () Bool)

(assert (=> b!5004377 m!6038314))

(declare-fun m!6038316 () Bool)

(assert (=> b!5004377 m!6038316))

(declare-fun m!6038318 () Bool)

(assert (=> b!5004377 m!6038318))

(declare-fun m!6038320 () Bool)

(assert (=> b!5004377 m!6038320))

(declare-fun m!6038322 () Bool)

(assert (=> b!5004377 m!6038322))

(assert (=> b!5004377 m!6038316))

(assert (=> b!5004377 m!6038310))

(declare-fun m!6038324 () Bool)

(assert (=> b!5004377 m!6038324))

(declare-fun m!6038326 () Bool)

(assert (=> b!5004377 m!6038326))

(declare-fun m!6038328 () Bool)

(assert (=> b!5004377 m!6038328))

(declare-fun m!6038330 () Bool)

(assert (=> b!5004377 m!6038330))

(declare-fun m!6038332 () Bool)

(assert (=> b!5004377 m!6038332))

(declare-fun m!6038334 () Bool)

(assert (=> b!5004377 m!6038334))

(declare-fun m!6038336 () Bool)

(assert (=> b!5004377 m!6038336))

(assert (=> b!5004377 m!6038312))

(declare-fun m!6038338 () Bool)

(assert (=> b!5004377 m!6038338))

(declare-fun m!6038340 () Bool)

(assert (=> setNonEmpty!28412 m!6038340))

(declare-fun m!6038342 () Bool)

(assert (=> b!5004373 m!6038342))

(declare-fun m!6038344 () Bool)

(assert (=> b!5004382 m!6038344))

(declare-fun m!6038346 () Bool)

(assert (=> b!5004369 m!6038346))

(declare-fun m!6038348 () Bool)

(assert (=> b!5004379 m!6038348))

(declare-fun m!6038350 () Bool)

(assert (=> b!5004379 m!6038350))

(declare-fun m!6038352 () Bool)

(assert (=> b!5004384 m!6038352))

(declare-fun m!6038354 () Bool)

(assert (=> b!5004381 m!6038354))

(assert (=> b!5004378 m!6038350))

(assert (=> b!5004378 m!6038350))

(declare-fun m!6038356 () Bool)

(assert (=> b!5004378 m!6038356))

(assert (=> b!5004378 m!6038356))

(declare-fun m!6038358 () Bool)

(assert (=> b!5004378 m!6038358))

(declare-fun m!6038360 () Bool)

(assert (=> b!5004387 m!6038360))

(declare-fun m!6038362 () Bool)

(assert (=> b!5004387 m!6038362))

(declare-fun m!6038364 () Bool)

(assert (=> b!5004387 m!6038364))

(declare-fun m!6038366 () Bool)

(assert (=> b!5004387 m!6038366))

(declare-fun m!6038368 () Bool)

(assert (=> b!5004387 m!6038368))

(declare-fun m!6038370 () Bool)

(assert (=> b!5004387 m!6038370))

(declare-fun m!6038372 () Bool)

(assert (=> b!5004371 m!6038372))

(declare-fun m!6038374 () Bool)

(assert (=> b!5004371 m!6038374))

(declare-fun m!6038376 () Bool)

(assert (=> b!5004371 m!6038376))

(declare-fun m!6038378 () Bool)

(assert (=> b!5004376 m!6038378))

(declare-fun m!6038380 () Bool)

(assert (=> b!5004376 m!6038380))

(declare-fun m!6038382 () Bool)

(assert (=> b!5004376 m!6038382))

(declare-fun m!6038384 () Bool)

(assert (=> b!5004376 m!6038384))

(declare-fun m!6038386 () Bool)

(assert (=> start!528890 m!6038386))

(declare-fun m!6038388 () Bool)

(assert (=> start!528890 m!6038388))

(declare-fun m!6038390 () Bool)

(assert (=> start!528890 m!6038390))

(declare-fun m!6038392 () Bool)

(assert (=> b!5004370 m!6038392))

(declare-fun m!6038394 () Bool)

(assert (=> b!5004374 m!6038394))

(declare-fun m!6038396 () Bool)

(assert (=> b!5004374 m!6038396))

(declare-fun m!6038398 () Bool)

(assert (=> b!5004374 m!6038398))

(declare-fun m!6038400 () Bool)

(assert (=> b!5004374 m!6038400))

(declare-fun m!6038402 () Bool)

(assert (=> b!5004374 m!6038402))

(declare-fun m!6038404 () Bool)

(assert (=> b!5004374 m!6038404))

(declare-fun m!6038406 () Bool)

(assert (=> b!5004374 m!6038406))

(declare-fun m!6038408 () Bool)

(assert (=> b!5004368 m!6038408))

(declare-fun m!6038410 () Bool)

(assert (=> b!5004372 m!6038410))

(declare-fun m!6038412 () Bool)

(assert (=> b!5004372 m!6038412))

(check-sat (not b!5004388) (not b!5004368) (not b!5004381) (not b!5004378) (not b!5004371) (not b!5004384) (not b!5004379) tp_is_empty!36587 (not b!5004373) (not b!5004374) (not b!5004377) (not b!5004372) (not b!5004387) (not setNonEmpty!28412) (not b!5004385) (not b!5004386) (not b!5004370) (not b!5004382) (not b!5004375) (not b!5004369) (not b!5004383) (not b!5004376) (not start!528890))
(check-sat)
(get-model)

(declare-fun d!1610622 () Bool)

(declare-fun c!854189 () Bool)

(assert (=> d!1610622 (= c!854189 ((_ is Node!15314) (c!854185 totalInput!1012)))))

(declare-fun e!3127182 () Bool)

(assert (=> d!1610622 (= (inv!76029 (c!854185 totalInput!1012)) e!3127182)))

(declare-fun b!5004395 () Bool)

(declare-fun inv!76034 (Conc!15314) Bool)

(assert (=> b!5004395 (= e!3127182 (inv!76034 (c!854185 totalInput!1012)))))

(declare-fun b!5004396 () Bool)

(declare-fun e!3127183 () Bool)

(assert (=> b!5004396 (= e!3127182 e!3127183)))

(declare-fun res!2135312 () Bool)

(assert (=> b!5004396 (= res!2135312 (not ((_ is Leaf!25420) (c!854185 totalInput!1012))))))

(assert (=> b!5004396 (=> res!2135312 e!3127183)))

(declare-fun b!5004397 () Bool)

(declare-fun inv!76035 (Conc!15314) Bool)

(assert (=> b!5004397 (= e!3127183 (inv!76035 (c!854185 totalInput!1012)))))

(assert (= (and d!1610622 c!854189) b!5004395))

(assert (= (and d!1610622 (not c!854189)) b!5004396))

(assert (= (and b!5004396 (not res!2135312)) b!5004397))

(declare-fun m!6038414 () Bool)

(assert (=> b!5004395 m!6038414))

(declare-fun m!6038416 () Bool)

(assert (=> b!5004397 m!6038416))

(assert (=> b!5004373 d!1610622))

(declare-fun d!1610624 () Bool)

(assert (=> d!1610624 (= (isEmpty!31333 (_1!34812 lt!2071026)) ((_ is Nil!57865) (_1!34812 lt!2071026)))))

(assert (=> b!5004382 d!1610624))

(declare-fun d!1610628 () Bool)

(declare-fun lt!2071067 () tuple2!63018)

(assert (=> d!1610628 (= (++!12641 (_1!34812 lt!2071067) (_2!34812 lt!2071067)) lt!2071008)))

(declare-fun sizeTr!399 (List!57989 Int) Int)

(assert (=> d!1610628 (= lt!2071067 (findLongestMatchInner!1984 r!12727 Nil!57865 0 lt!2071008 lt!2071008 (sizeTr!399 lt!2071008 0)))))

(declare-fun lt!2071066 () Unit!149035)

(declare-fun lt!2071065 () Unit!149035)

(assert (=> d!1610628 (= lt!2071066 lt!2071065)))

(declare-fun lt!2071063 () List!57989)

(declare-fun lt!2071062 () Int)

(assert (=> d!1610628 (= (sizeTr!399 lt!2071063 lt!2071062) (+ (size!38465 lt!2071063) lt!2071062))))

(declare-fun lemmaSizeTrEqualsSize!398 (List!57989 Int) Unit!149035)

(assert (=> d!1610628 (= lt!2071065 (lemmaSizeTrEqualsSize!398 lt!2071063 lt!2071062))))

(assert (=> d!1610628 (= lt!2071062 0)))

(assert (=> d!1610628 (= lt!2071063 Nil!57865)))

(declare-fun lt!2071068 () Unit!149035)

(declare-fun lt!2071064 () Unit!149035)

(assert (=> d!1610628 (= lt!2071068 lt!2071064)))

(declare-fun lt!2071069 () Int)

(assert (=> d!1610628 (= (sizeTr!399 lt!2071008 lt!2071069) (+ (size!38465 lt!2071008) lt!2071069))))

(assert (=> d!1610628 (= lt!2071064 (lemmaSizeTrEqualsSize!398 lt!2071008 lt!2071069))))

(assert (=> d!1610628 (= lt!2071069 0)))

(assert (=> d!1610628 (validRegex!6092 r!12727)))

(assert (=> d!1610628 (= (findLongestMatch!1808 r!12727 lt!2071008) lt!2071067)))

(declare-fun bs!1185914 () Bool)

(assert (= bs!1185914 d!1610628))

(declare-fun m!6038466 () Bool)

(assert (=> bs!1185914 m!6038466))

(declare-fun m!6038472 () Bool)

(assert (=> bs!1185914 m!6038472))

(assert (=> bs!1185914 m!6038386))

(assert (=> bs!1185914 m!6038310))

(declare-fun m!6038476 () Bool)

(assert (=> bs!1185914 m!6038476))

(declare-fun m!6038478 () Bool)

(assert (=> bs!1185914 m!6038478))

(declare-fun m!6038480 () Bool)

(assert (=> bs!1185914 m!6038480))

(declare-fun m!6038482 () Bool)

(assert (=> bs!1185914 m!6038482))

(declare-fun m!6038484 () Bool)

(assert (=> bs!1185914 m!6038484))

(declare-fun m!6038486 () Bool)

(assert (=> bs!1185914 m!6038486))

(assert (=> bs!1185914 m!6038480))

(assert (=> b!5004374 d!1610628))

(declare-fun d!1610646 () Bool)

(declare-fun list!18626 (Conc!15314) List!57989)

(assert (=> d!1610646 (= (list!18624 (_2!34811 lt!2071017)) (list!18626 (c!854185 (_2!34811 lt!2071017))))))

(declare-fun bs!1185915 () Bool)

(assert (= bs!1185915 d!1610646))

(declare-fun m!6038488 () Bool)

(assert (=> bs!1185915 m!6038488))

(assert (=> b!5004374 d!1610646))

(declare-fun d!1610648 () Bool)

(assert (=> d!1610648 (= (list!18624 (_1!34811 lt!2071017)) (list!18626 (c!854185 (_1!34811 lt!2071017))))))

(declare-fun bs!1185916 () Bool)

(assert (= bs!1185916 d!1610648))

(declare-fun m!6038490 () Bool)

(assert (=> bs!1185916 m!6038490))

(assert (=> b!5004374 d!1610648))

(declare-fun d!1610650 () Bool)

(declare-fun lt!2071075 () Int)

(assert (=> d!1610650 (= lt!2071075 (size!38465 (list!18624 input!5597)))))

(declare-fun size!38467 (Conc!15314) Int)

(assert (=> d!1610650 (= lt!2071075 (size!38467 (c!854185 input!5597)))))

(assert (=> d!1610650 (= (size!38464 input!5597) lt!2071075)))

(declare-fun bs!1185917 () Bool)

(assert (= bs!1185917 d!1610650))

(assert (=> bs!1185917 m!6038376))

(assert (=> bs!1185917 m!6038376))

(declare-fun m!6038502 () Bool)

(assert (=> bs!1185917 m!6038502))

(declare-fun m!6038504 () Bool)

(assert (=> bs!1185917 m!6038504))

(assert (=> b!5004374 d!1610650))

(declare-fun d!1610654 () Bool)

(declare-fun lt!2071076 () Int)

(assert (=> d!1610654 (= lt!2071076 (size!38465 (list!18624 totalInput!1012)))))

(assert (=> d!1610654 (= lt!2071076 (size!38467 (c!854185 totalInput!1012)))))

(assert (=> d!1610654 (= (size!38464 totalInput!1012) lt!2071076)))

(declare-fun bs!1185918 () Bool)

(assert (= bs!1185918 d!1610654))

(assert (=> bs!1185918 m!6038374))

(assert (=> bs!1185918 m!6038374))

(declare-fun m!6038506 () Bool)

(assert (=> bs!1185918 m!6038506))

(declare-fun m!6038508 () Bool)

(assert (=> bs!1185918 m!6038508))

(assert (=> b!5004374 d!1610654))

(declare-fun b!5004515 () Bool)

(declare-fun e!3127248 () List!57989)

(assert (=> b!5004515 (= e!3127248 lt!2071011)))

(declare-fun b!5004516 () Bool)

(assert (=> b!5004516 (= e!3127248 (Cons!57865 (h!64313 lt!2071021) (++!12641 (t!370335 lt!2071021) lt!2071011)))))

(declare-fun b!5004517 () Bool)

(declare-fun res!2135351 () Bool)

(declare-fun e!3127247 () Bool)

(assert (=> b!5004517 (=> (not res!2135351) (not e!3127247))))

(declare-fun lt!2071085 () List!57989)

(assert (=> b!5004517 (= res!2135351 (= (size!38465 lt!2071085) (+ (size!38465 lt!2071021) (size!38465 lt!2071011))))))

(declare-fun d!1610656 () Bool)

(assert (=> d!1610656 e!3127247))

(declare-fun res!2135350 () Bool)

(assert (=> d!1610656 (=> (not res!2135350) (not e!3127247))))

(declare-fun content!10251 (List!57989) (InoxSet C!27840))

(assert (=> d!1610656 (= res!2135350 (= (content!10251 lt!2071085) ((_ map or) (content!10251 lt!2071021) (content!10251 lt!2071011))))))

(assert (=> d!1610656 (= lt!2071085 e!3127248)))

(declare-fun c!854230 () Bool)

(assert (=> d!1610656 (= c!854230 ((_ is Nil!57865) lt!2071021))))

(assert (=> d!1610656 (= (++!12641 lt!2071021 lt!2071011) lt!2071085)))

(declare-fun b!5004518 () Bool)

(assert (=> b!5004518 (= e!3127247 (or (not (= lt!2071011 Nil!57865)) (= lt!2071085 lt!2071021)))))

(assert (= (and d!1610656 c!854230) b!5004515))

(assert (= (and d!1610656 (not c!854230)) b!5004516))

(assert (= (and d!1610656 res!2135350) b!5004517))

(assert (= (and b!5004517 res!2135351) b!5004518))

(declare-fun m!6038526 () Bool)

(assert (=> b!5004516 m!6038526))

(declare-fun m!6038528 () Bool)

(assert (=> b!5004517 m!6038528))

(declare-fun m!6038530 () Bool)

(assert (=> b!5004517 m!6038530))

(declare-fun m!6038532 () Bool)

(assert (=> b!5004517 m!6038532))

(declare-fun m!6038534 () Bool)

(assert (=> d!1610656 m!6038534))

(declare-fun m!6038536 () Bool)

(assert (=> d!1610656 m!6038536))

(declare-fun m!6038538 () Bool)

(assert (=> d!1610656 m!6038538))

(assert (=> b!5004374 d!1610656))

(declare-fun d!1610666 () Bool)

(declare-fun lt!2071101 () tuple2!63016)

(assert (=> d!1610666 (= (++!12641 (list!18624 (_1!34811 lt!2071101)) (list!18624 (_2!34811 lt!2071101))) (list!18624 input!5597))))

(declare-fun lt!2071102 () Int)

(declare-fun splitAt!448 (BalanceConc!30058 Int) tuple2!63016)

(assert (=> d!1610666 (= lt!2071101 (splitAt!448 input!5597 (findLongestMatchInnerZipperFastV2!135 z!4183 (- lt!2071102 (size!38464 input!5597)) totalInput!1012 lt!2071102)))))

(assert (=> d!1610666 (= lt!2071102 (size!38464 totalInput!1012))))

(assert (=> d!1610666 (isSuffix!1361 (list!18624 input!5597) (list!18624 totalInput!1012))))

(assert (=> d!1610666 (= (findLongestMatchZipperFastV2!97 z!4183 input!5597 totalInput!1012) lt!2071101)))

(declare-fun bs!1185923 () Bool)

(assert (= bs!1185923 d!1610666))

(assert (=> bs!1185923 m!6038404))

(assert (=> bs!1185923 m!6038374))

(assert (=> bs!1185923 m!6038376))

(declare-fun m!6038578 () Bool)

(assert (=> bs!1185923 m!6038578))

(declare-fun m!6038580 () Bool)

(assert (=> bs!1185923 m!6038580))

(declare-fun m!6038582 () Bool)

(assert (=> bs!1185923 m!6038582))

(declare-fun m!6038584 () Bool)

(assert (=> bs!1185923 m!6038584))

(assert (=> bs!1185923 m!6038376))

(assert (=> bs!1185923 m!6038374))

(declare-fun m!6038586 () Bool)

(assert (=> bs!1185923 m!6038586))

(assert (=> bs!1185923 m!6038584))

(assert (=> bs!1185923 m!6038582))

(declare-fun m!6038588 () Bool)

(assert (=> bs!1185923 m!6038588))

(assert (=> bs!1185923 m!6038398))

(assert (=> bs!1185923 m!6038578))

(assert (=> b!5004374 d!1610666))

(declare-fun d!1610680 () Bool)

(declare-fun lambda!248369 () Int)

(declare-fun forall!13364 (List!57990 Int) Bool)

(assert (=> d!1610680 (= (inv!76031 setElem!28412) (forall!13364 (exprs!3720 setElem!28412) lambda!248369))))

(declare-fun bs!1185937 () Bool)

(assert (= bs!1185937 d!1610680))

(declare-fun m!6038832 () Bool)

(assert (=> bs!1185937 m!6038832))

(assert (=> setNonEmpty!28412 d!1610680))

(declare-fun d!1610748 () Bool)

(declare-fun c!854292 () Bool)

(assert (=> d!1610748 (= c!854292 (isEmpty!31333 lt!2071030))))

(declare-fun e!3127386 () Bool)

(assert (=> d!1610748 (= (matchZipper!563 z!4183 lt!2071030) e!3127386)))

(declare-fun b!5004735 () Bool)

(declare-fun nullableZipper!884 ((InoxSet Context!6440)) Bool)

(assert (=> b!5004735 (= e!3127386 (nullableZipper!884 z!4183))))

(declare-fun b!5004736 () Bool)

(declare-fun derivationStepZipper!633 ((InoxSet Context!6440) C!27840) (InoxSet Context!6440))

(declare-fun head!10733 (List!57989) C!27840)

(declare-fun tail!9866 (List!57989) List!57989)

(assert (=> b!5004736 (= e!3127386 (matchZipper!563 (derivationStepZipper!633 z!4183 (head!10733 lt!2071030)) (tail!9866 lt!2071030)))))

(assert (= (and d!1610748 c!854292) b!5004735))

(assert (= (and d!1610748 (not c!854292)) b!5004736))

(declare-fun m!6038834 () Bool)

(assert (=> d!1610748 m!6038834))

(declare-fun m!6038836 () Bool)

(assert (=> b!5004735 m!6038836))

(declare-fun m!6038838 () Bool)

(assert (=> b!5004736 m!6038838))

(assert (=> b!5004736 m!6038838))

(declare-fun m!6038840 () Bool)

(assert (=> b!5004736 m!6038840))

(declare-fun m!6038842 () Bool)

(assert (=> b!5004736 m!6038842))

(assert (=> b!5004736 m!6038840))

(assert (=> b!5004736 m!6038842))

(declare-fun m!6038844 () Bool)

(assert (=> b!5004736 m!6038844))

(assert (=> b!5004370 d!1610748))

(declare-fun b!5004751 () Bool)

(declare-fun e!3127397 () List!57989)

(assert (=> b!5004751 (= e!3127397 (Cons!57865 (h!64313 lt!2071025) (take!654 (t!370335 lt!2071025) (- lt!2071005 1))))))

(declare-fun b!5004752 () Bool)

(declare-fun e!3127396 () Bool)

(declare-fun lt!2071262 () List!57989)

(declare-fun e!3127398 () Int)

(assert (=> b!5004752 (= e!3127396 (= (size!38465 lt!2071262) e!3127398))))

(declare-fun c!854299 () Bool)

(assert (=> b!5004752 (= c!854299 (<= lt!2071005 0))))

(declare-fun b!5004753 () Bool)

(assert (=> b!5004753 (= e!3127397 Nil!57865)))

(declare-fun b!5004754 () Bool)

(declare-fun e!3127395 () Int)

(assert (=> b!5004754 (= e!3127398 e!3127395)))

(declare-fun c!854300 () Bool)

(assert (=> b!5004754 (= c!854300 (>= lt!2071005 (size!38465 lt!2071025)))))

(declare-fun d!1610750 () Bool)

(assert (=> d!1610750 e!3127396))

(declare-fun res!2135448 () Bool)

(assert (=> d!1610750 (=> (not res!2135448) (not e!3127396))))

(assert (=> d!1610750 (= res!2135448 (= ((_ map implies) (content!10251 lt!2071262) (content!10251 lt!2071025)) ((as const (InoxSet C!27840)) true)))))

(assert (=> d!1610750 (= lt!2071262 e!3127397)))

(declare-fun c!854301 () Bool)

(assert (=> d!1610750 (= c!854301 (or ((_ is Nil!57865) lt!2071025) (<= lt!2071005 0)))))

(assert (=> d!1610750 (= (take!654 lt!2071025 lt!2071005) lt!2071262)))

(declare-fun b!5004755 () Bool)

(assert (=> b!5004755 (= e!3127395 lt!2071005)))

(declare-fun b!5004756 () Bool)

(assert (=> b!5004756 (= e!3127395 (size!38465 lt!2071025))))

(declare-fun b!5004757 () Bool)

(assert (=> b!5004757 (= e!3127398 0)))

(assert (= (and d!1610750 c!854301) b!5004753))

(assert (= (and d!1610750 (not c!854301)) b!5004751))

(assert (= (and d!1610750 res!2135448) b!5004752))

(assert (= (and b!5004752 c!854299) b!5004757))

(assert (= (and b!5004752 (not c!854299)) b!5004754))

(assert (= (and b!5004754 c!854300) b!5004756))

(assert (= (and b!5004754 (not c!854300)) b!5004755))

(declare-fun m!6038846 () Bool)

(assert (=> b!5004752 m!6038846))

(declare-fun m!6038848 () Bool)

(assert (=> b!5004754 m!6038848))

(declare-fun m!6038850 () Bool)

(assert (=> b!5004751 m!6038850))

(assert (=> b!5004756 m!6038848))

(declare-fun m!6038852 () Bool)

(assert (=> d!1610750 m!6038852))

(declare-fun m!6038854 () Bool)

(assert (=> d!1610750 m!6038854))

(assert (=> b!5004379 d!1610750))

(declare-fun b!5004776 () Bool)

(declare-fun e!3127411 () List!57989)

(declare-fun e!3127413 () List!57989)

(assert (=> b!5004776 (= e!3127411 e!3127413)))

(declare-fun c!854313 () Bool)

(assert (=> b!5004776 (= c!854313 (<= lt!2071014 0))))

(declare-fun b!5004778 () Bool)

(declare-fun e!3127409 () Int)

(assert (=> b!5004778 (= e!3127409 0)))

(declare-fun b!5004779 () Bool)

(declare-fun e!3127412 () Bool)

(declare-fun lt!2071265 () List!57989)

(declare-fun e!3127410 () Int)

(assert (=> b!5004779 (= e!3127412 (= (size!38465 lt!2071265) e!3127410))))

(declare-fun c!854311 () Bool)

(assert (=> b!5004779 (= c!854311 (<= lt!2071014 0))))

(declare-fun b!5004780 () Bool)

(declare-fun call!349357 () Int)

(assert (=> b!5004780 (= e!3127410 call!349357)))

(declare-fun b!5004781 () Bool)

(assert (=> b!5004781 (= e!3127413 lt!2071019)))

(declare-fun b!5004782 () Bool)

(assert (=> b!5004782 (= e!3127410 e!3127409)))

(declare-fun c!854312 () Bool)

(assert (=> b!5004782 (= c!854312 (>= lt!2071014 call!349357))))

(declare-fun b!5004783 () Bool)

(assert (=> b!5004783 (= e!3127411 Nil!57865)))

(declare-fun bm!349352 () Bool)

(assert (=> bm!349352 (= call!349357 (size!38465 lt!2071019))))

(declare-fun b!5004784 () Bool)

(assert (=> b!5004784 (= e!3127413 (drop!2458 (t!370335 lt!2071019) (- lt!2071014 1)))))

(declare-fun b!5004777 () Bool)

(assert (=> b!5004777 (= e!3127409 (- call!349357 lt!2071014))))

(declare-fun d!1610752 () Bool)

(assert (=> d!1610752 e!3127412))

(declare-fun res!2135451 () Bool)

(assert (=> d!1610752 (=> (not res!2135451) (not e!3127412))))

(assert (=> d!1610752 (= res!2135451 (= ((_ map implies) (content!10251 lt!2071265) (content!10251 lt!2071019)) ((as const (InoxSet C!27840)) true)))))

(assert (=> d!1610752 (= lt!2071265 e!3127411)))

(declare-fun c!854310 () Bool)

(assert (=> d!1610752 (= c!854310 ((_ is Nil!57865) lt!2071019))))

(assert (=> d!1610752 (= (drop!2458 lt!2071019 lt!2071014) lt!2071265)))

(assert (= (and d!1610752 c!854310) b!5004783))

(assert (= (and d!1610752 (not c!854310)) b!5004776))

(assert (= (and b!5004776 c!854313) b!5004781))

(assert (= (and b!5004776 (not c!854313)) b!5004784))

(assert (= (and d!1610752 res!2135451) b!5004779))

(assert (= (and b!5004779 c!854311) b!5004780))

(assert (= (and b!5004779 (not c!854311)) b!5004782))

(assert (= (and b!5004782 c!854312) b!5004778))

(assert (= (and b!5004782 (not c!854312)) b!5004777))

(assert (= (or b!5004780 b!5004782 b!5004777) bm!349352))

(declare-fun m!6038856 () Bool)

(assert (=> b!5004779 m!6038856))

(declare-fun m!6038858 () Bool)

(assert (=> bm!349352 m!6038858))

(declare-fun m!6038860 () Bool)

(assert (=> b!5004784 m!6038860))

(declare-fun m!6038862 () Bool)

(assert (=> d!1610752 m!6038862))

(declare-fun m!6038864 () Bool)

(assert (=> d!1610752 m!6038864))

(assert (=> b!5004379 d!1610752))

(declare-fun d!1610754 () Bool)

(declare-fun e!3127416 () Bool)

(assert (=> d!1610754 e!3127416))

(declare-fun res!2135454 () Bool)

(assert (=> d!1610754 (=> res!2135454 e!3127416)))

(declare-fun lt!2071268 () Bool)

(assert (=> d!1610754 (= res!2135454 (not lt!2071268))))

(assert (=> d!1610754 (= lt!2071268 (= lt!2071008 (drop!2458 lt!2071019 (- (size!38465 lt!2071019) (size!38465 lt!2071008)))))))

(assert (=> d!1610754 (= (isSuffix!1361 lt!2071008 lt!2071019) lt!2071268)))

(declare-fun b!5004787 () Bool)

(assert (=> b!5004787 (= e!3127416 (>= (size!38465 lt!2071019) (size!38465 lt!2071008)))))

(assert (= (and d!1610754 (not res!2135454)) b!5004787))

(assert (=> d!1610754 m!6038858))

(assert (=> d!1610754 m!6038310))

(declare-fun m!6038866 () Bool)

(assert (=> d!1610754 m!6038866))

(assert (=> b!5004787 m!6038858))

(assert (=> b!5004787 m!6038310))

(assert (=> b!5004371 d!1610754))

(declare-fun d!1610756 () Bool)

(assert (=> d!1610756 (= (list!18624 totalInput!1012) (list!18626 (c!854185 totalInput!1012)))))

(declare-fun bs!1185938 () Bool)

(assert (= bs!1185938 d!1610756))

(declare-fun m!6038868 () Bool)

(assert (=> bs!1185938 m!6038868))

(assert (=> b!5004371 d!1610756))

(declare-fun d!1610758 () Bool)

(assert (=> d!1610758 (= (list!18624 input!5597) (list!18626 (c!854185 input!5597)))))

(declare-fun bs!1185939 () Bool)

(assert (= bs!1185939 d!1610758))

(declare-fun m!6038870 () Bool)

(assert (=> bs!1185939 m!6038870))

(assert (=> b!5004371 d!1610758))

(declare-fun d!1610760 () Bool)

(declare-fun lt!2071271 () Regex!13795)

(assert (=> d!1610760 (validRegex!6092 lt!2071271)))

(declare-fun generalisedUnion!581 (List!57990) Regex!13795)

(declare-fun unfocusZipperList!94 (List!57991) List!57990)

(assert (=> d!1610760 (= lt!2071271 (generalisedUnion!581 (unfocusZipperList!94 lt!2071007)))))

(assert (=> d!1610760 (= (unfocusZipper!322 lt!2071007) lt!2071271)))

(declare-fun bs!1185940 () Bool)

(assert (= bs!1185940 d!1610760))

(declare-fun m!6038872 () Bool)

(assert (=> bs!1185940 m!6038872))

(declare-fun m!6038874 () Bool)

(assert (=> bs!1185940 m!6038874))

(assert (=> bs!1185940 m!6038874))

(declare-fun m!6038876 () Bool)

(assert (=> bs!1185940 m!6038876))

(assert (=> b!5004372 d!1610760))

(declare-fun d!1610762 () Bool)

(declare-fun e!3127419 () Bool)

(assert (=> d!1610762 e!3127419))

(declare-fun res!2135457 () Bool)

(assert (=> d!1610762 (=> (not res!2135457) (not e!3127419))))

(declare-fun lt!2071274 () List!57991)

(declare-fun noDuplicate!1030 (List!57991) Bool)

(assert (=> d!1610762 (= res!2135457 (noDuplicate!1030 lt!2071274))))

(declare-fun choose!37012 ((InoxSet Context!6440)) List!57991)

(assert (=> d!1610762 (= lt!2071274 (choose!37012 z!4183))))

(assert (=> d!1610762 (= (toList!8080 z!4183) lt!2071274)))

(declare-fun b!5004790 () Bool)

(declare-fun content!10252 (List!57991) (InoxSet Context!6440))

(assert (=> b!5004790 (= e!3127419 (= (content!10252 lt!2071274) z!4183))))

(assert (= (and d!1610762 res!2135457) b!5004790))

(declare-fun m!6038878 () Bool)

(assert (=> d!1610762 m!6038878))

(declare-fun m!6038880 () Bool)

(assert (=> d!1610762 m!6038880))

(declare-fun m!6038882 () Bool)

(assert (=> b!5004790 m!6038882))

(assert (=> b!5004372 d!1610762))

(declare-fun b!5004791 () Bool)

(declare-fun e!3127421 () List!57989)

(assert (=> b!5004791 (= e!3127421 (_2!34812 lt!2071026))))

(declare-fun b!5004792 () Bool)

(assert (=> b!5004792 (= e!3127421 (Cons!57865 (h!64313 (_1!34812 lt!2071026)) (++!12641 (t!370335 (_1!34812 lt!2071026)) (_2!34812 lt!2071026))))))

(declare-fun b!5004793 () Bool)

(declare-fun res!2135459 () Bool)

(declare-fun e!3127420 () Bool)

(assert (=> b!5004793 (=> (not res!2135459) (not e!3127420))))

(declare-fun lt!2071275 () List!57989)

(assert (=> b!5004793 (= res!2135459 (= (size!38465 lt!2071275) (+ (size!38465 (_1!34812 lt!2071026)) (size!38465 (_2!34812 lt!2071026)))))))

(declare-fun d!1610764 () Bool)

(assert (=> d!1610764 e!3127420))

(declare-fun res!2135458 () Bool)

(assert (=> d!1610764 (=> (not res!2135458) (not e!3127420))))

(assert (=> d!1610764 (= res!2135458 (= (content!10251 lt!2071275) ((_ map or) (content!10251 (_1!34812 lt!2071026)) (content!10251 (_2!34812 lt!2071026)))))))

(assert (=> d!1610764 (= lt!2071275 e!3127421)))

(declare-fun c!854314 () Bool)

(assert (=> d!1610764 (= c!854314 ((_ is Nil!57865) (_1!34812 lt!2071026)))))

(assert (=> d!1610764 (= (++!12641 (_1!34812 lt!2071026) (_2!34812 lt!2071026)) lt!2071275)))

(declare-fun b!5004794 () Bool)

(assert (=> b!5004794 (= e!3127420 (or (not (= (_2!34812 lt!2071026) Nil!57865)) (= lt!2071275 (_1!34812 lt!2071026))))))

(assert (= (and d!1610764 c!854314) b!5004791))

(assert (= (and d!1610764 (not c!854314)) b!5004792))

(assert (= (and d!1610764 res!2135458) b!5004793))

(assert (= (and b!5004793 res!2135459) b!5004794))

(declare-fun m!6038884 () Bool)

(assert (=> b!5004792 m!6038884))

(declare-fun m!6038886 () Bool)

(assert (=> b!5004793 m!6038886))

(assert (=> b!5004793 m!6038364))

(declare-fun m!6038888 () Bool)

(assert (=> b!5004793 m!6038888))

(declare-fun m!6038890 () Bool)

(assert (=> d!1610764 m!6038890))

(declare-fun m!6038892 () Bool)

(assert (=> d!1610764 m!6038892))

(declare-fun m!6038894 () Bool)

(assert (=> d!1610764 m!6038894))

(assert (=> b!5004381 d!1610764))

(declare-fun b!5004803 () Bool)

(declare-fun e!3127430 () Bool)

(declare-fun e!3127429 () Bool)

(assert (=> b!5004803 (= e!3127430 e!3127429)))

(declare-fun res!2135469 () Bool)

(assert (=> b!5004803 (=> (not res!2135469) (not e!3127429))))

(assert (=> b!5004803 (= res!2135469 (not ((_ is Nil!57865) lt!2071012)))))

(declare-fun b!5004805 () Bool)

(assert (=> b!5004805 (= e!3127429 (isPrefix!5348 (tail!9866 lt!2071021) (tail!9866 lt!2071012)))))

(declare-fun b!5004806 () Bool)

(declare-fun e!3127428 () Bool)

(assert (=> b!5004806 (= e!3127428 (>= (size!38465 lt!2071012) (size!38465 lt!2071021)))))

(declare-fun b!5004804 () Bool)

(declare-fun res!2135471 () Bool)

(assert (=> b!5004804 (=> (not res!2135471) (not e!3127429))))

(assert (=> b!5004804 (= res!2135471 (= (head!10733 lt!2071021) (head!10733 lt!2071012)))))

(declare-fun d!1610766 () Bool)

(assert (=> d!1610766 e!3127428))

(declare-fun res!2135470 () Bool)

(assert (=> d!1610766 (=> res!2135470 e!3127428)))

(declare-fun lt!2071278 () Bool)

(assert (=> d!1610766 (= res!2135470 (not lt!2071278))))

(assert (=> d!1610766 (= lt!2071278 e!3127430)))

(declare-fun res!2135468 () Bool)

(assert (=> d!1610766 (=> res!2135468 e!3127430)))

(assert (=> d!1610766 (= res!2135468 ((_ is Nil!57865) lt!2071021))))

(assert (=> d!1610766 (= (isPrefix!5348 lt!2071021 lt!2071012) lt!2071278)))

(assert (= (and d!1610766 (not res!2135468)) b!5004803))

(assert (= (and b!5004803 res!2135469) b!5004804))

(assert (= (and b!5004804 res!2135471) b!5004805))

(assert (= (and d!1610766 (not res!2135470)) b!5004806))

(declare-fun m!6038896 () Bool)

(assert (=> b!5004805 m!6038896))

(declare-fun m!6038898 () Bool)

(assert (=> b!5004805 m!6038898))

(assert (=> b!5004805 m!6038896))

(assert (=> b!5004805 m!6038898))

(declare-fun m!6038900 () Bool)

(assert (=> b!5004805 m!6038900))

(declare-fun m!6038902 () Bool)

(assert (=> b!5004806 m!6038902))

(assert (=> b!5004806 m!6038530))

(declare-fun m!6038904 () Bool)

(assert (=> b!5004804 m!6038904))

(declare-fun m!6038906 () Bool)

(assert (=> b!5004804 m!6038906))

(assert (=> b!5004377 d!1610766))

(declare-fun d!1610768 () Bool)

(declare-fun c!854315 () Bool)

(assert (=> d!1610768 (= c!854315 (isEmpty!31333 lt!2071021))))

(declare-fun e!3127431 () Bool)

(assert (=> d!1610768 (= (matchZipper!563 z!4183 lt!2071021) e!3127431)))

(declare-fun b!5004807 () Bool)

(assert (=> b!5004807 (= e!3127431 (nullableZipper!884 z!4183))))

(declare-fun b!5004808 () Bool)

(assert (=> b!5004808 (= e!3127431 (matchZipper!563 (derivationStepZipper!633 z!4183 (head!10733 lt!2071021)) (tail!9866 lt!2071021)))))

(assert (= (and d!1610768 c!854315) b!5004807))

(assert (= (and d!1610768 (not c!854315)) b!5004808))

(declare-fun m!6038908 () Bool)

(assert (=> d!1610768 m!6038908))

(assert (=> b!5004807 m!6038836))

(assert (=> b!5004808 m!6038904))

(assert (=> b!5004808 m!6038904))

(declare-fun m!6038910 () Bool)

(assert (=> b!5004808 m!6038910))

(assert (=> b!5004808 m!6038896))

(assert (=> b!5004808 m!6038910))

(assert (=> b!5004808 m!6038896))

(declare-fun m!6038912 () Bool)

(assert (=> b!5004808 m!6038912))

(assert (=> b!5004377 d!1610768))

(declare-fun d!1610770 () Bool)

(assert (=> d!1610770 (isPrefix!5348 lt!2071021 (++!12641 lt!2071021 lt!2071011))))

(declare-fun lt!2071281 () Unit!149035)

(declare-fun choose!37014 (List!57989 List!57989) Unit!149035)

(assert (=> d!1610770 (= lt!2071281 (choose!37014 lt!2071021 lt!2071011))))

(assert (=> d!1610770 (= (lemmaConcatTwoListThenFirstIsPrefix!3446 lt!2071021 lt!2071011) lt!2071281)))

(declare-fun bs!1185941 () Bool)

(assert (= bs!1185941 d!1610770))

(assert (=> bs!1185941 m!6038402))

(assert (=> bs!1185941 m!6038402))

(declare-fun m!6038914 () Bool)

(assert (=> bs!1185941 m!6038914))

(declare-fun m!6038916 () Bool)

(assert (=> bs!1185941 m!6038916))

(assert (=> b!5004377 d!1610770))

(declare-fun d!1610772 () Bool)

(assert (=> d!1610772 (isPrefix!5348 (take!654 lt!2071019 lt!2071014) lt!2071019)))

(declare-fun lt!2071284 () Unit!149035)

(declare-fun choose!37015 (List!57989 Int) Unit!149035)

(assert (=> d!1610772 (= lt!2071284 (choose!37015 lt!2071019 lt!2071014))))

(assert (=> d!1610772 (>= lt!2071014 0)))

(assert (=> d!1610772 (= (lemmaTakeIsPrefix!148 lt!2071019 lt!2071014) lt!2071284)))

(declare-fun bs!1185942 () Bool)

(assert (= bs!1185942 d!1610772))

(assert (=> bs!1185942 m!6038312))

(assert (=> bs!1185942 m!6038312))

(assert (=> bs!1185942 m!6038314))

(declare-fun m!6038918 () Bool)

(assert (=> bs!1185942 m!6038918))

(assert (=> b!5004377 d!1610772))

(declare-fun d!1610774 () Bool)

(declare-fun e!3127437 () Bool)

(assert (=> d!1610774 e!3127437))

(declare-fun res!2135476 () Bool)

(assert (=> d!1610774 (=> res!2135476 e!3127437)))

(assert (=> d!1610774 (= res!2135476 (= (findLongestMatchInnerZipperFastV2!135 z!4183 lt!2071014 totalInput!1012 (size!38464 totalInput!1012)) 0))))

(declare-fun lt!2071287 () Unit!149035)

(declare-fun choose!37016 ((InoxSet Context!6440) Int BalanceConc!30058) Unit!149035)

(assert (=> d!1610774 (= lt!2071287 (choose!37016 z!4183 lt!2071014 totalInput!1012))))

(declare-fun e!3127436 () Bool)

(assert (=> d!1610774 e!3127436))

(declare-fun res!2135477 () Bool)

(assert (=> d!1610774 (=> (not res!2135477) (not e!3127436))))

(assert (=> d!1610774 (= res!2135477 (>= lt!2071014 0))))

(assert (=> d!1610774 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!54 z!4183 lt!2071014 totalInput!1012) lt!2071287)))

(declare-fun b!5004813 () Bool)

(assert (=> b!5004813 (= e!3127436 (<= lt!2071014 (size!38464 totalInput!1012)))))

(declare-fun b!5004814 () Bool)

(assert (=> b!5004814 (= e!3127437 (matchZipper!563 z!4183 (take!654 (drop!2458 (list!18624 totalInput!1012) lt!2071014) (findLongestMatchInnerZipperFastV2!135 z!4183 lt!2071014 totalInput!1012 (size!38464 totalInput!1012)))))))

(assert (= (and d!1610774 res!2135477) b!5004813))

(assert (= (and d!1610774 (not res!2135476)) b!5004814))

(assert (=> d!1610774 m!6038404))

(assert (=> d!1610774 m!6038404))

(declare-fun m!6038920 () Bool)

(assert (=> d!1610774 m!6038920))

(declare-fun m!6038922 () Bool)

(assert (=> d!1610774 m!6038922))

(assert (=> b!5004813 m!6038404))

(assert (=> b!5004814 m!6038374))

(declare-fun m!6038924 () Bool)

(assert (=> b!5004814 m!6038924))

(declare-fun m!6038926 () Bool)

(assert (=> b!5004814 m!6038926))

(assert (=> b!5004814 m!6038374))

(declare-fun m!6038928 () Bool)

(assert (=> b!5004814 m!6038928))

(assert (=> b!5004814 m!6038928))

(assert (=> b!5004814 m!6038920))

(assert (=> b!5004814 m!6038924))

(assert (=> b!5004814 m!6038404))

(assert (=> b!5004814 m!6038920))

(assert (=> b!5004814 m!6038404))

(assert (=> b!5004377 d!1610774))

(declare-fun d!1610776 () Bool)

(declare-fun lt!2071290 () Int)

(assert (=> d!1610776 (>= lt!2071290 0)))

(declare-fun e!3127440 () Int)

(assert (=> d!1610776 (= lt!2071290 e!3127440)))

(declare-fun c!854318 () Bool)

(assert (=> d!1610776 (= c!854318 ((_ is Nil!57865) lt!2071008))))

(assert (=> d!1610776 (= (size!38465 lt!2071008) lt!2071290)))

(declare-fun b!5004819 () Bool)

(assert (=> b!5004819 (= e!3127440 0)))

(declare-fun b!5004820 () Bool)

(assert (=> b!5004820 (= e!3127440 (+ 1 (size!38465 (t!370335 lt!2071008))))))

(assert (= (and d!1610776 c!854318) b!5004819))

(assert (= (and d!1610776 (not c!854318)) b!5004820))

(declare-fun m!6038930 () Bool)

(assert (=> b!5004820 m!6038930))

(assert (=> b!5004377 d!1610776))

(declare-fun b!5004821 () Bool)

(declare-fun e!3127443 () List!57989)

(assert (=> b!5004821 (= e!3127443 (Cons!57865 (h!64313 lt!2071019) (take!654 (t!370335 lt!2071019) (- lt!2071014 1))))))

(declare-fun b!5004822 () Bool)

(declare-fun e!3127442 () Bool)

(declare-fun lt!2071291 () List!57989)

(declare-fun e!3127444 () Int)

(assert (=> b!5004822 (= e!3127442 (= (size!38465 lt!2071291) e!3127444))))

(declare-fun c!854319 () Bool)

(assert (=> b!5004822 (= c!854319 (<= lt!2071014 0))))

(declare-fun b!5004823 () Bool)

(assert (=> b!5004823 (= e!3127443 Nil!57865)))

(declare-fun b!5004824 () Bool)

(declare-fun e!3127441 () Int)

(assert (=> b!5004824 (= e!3127444 e!3127441)))

(declare-fun c!854320 () Bool)

(assert (=> b!5004824 (= c!854320 (>= lt!2071014 (size!38465 lt!2071019)))))

(declare-fun d!1610778 () Bool)

(assert (=> d!1610778 e!3127442))

(declare-fun res!2135478 () Bool)

(assert (=> d!1610778 (=> (not res!2135478) (not e!3127442))))

(assert (=> d!1610778 (= res!2135478 (= ((_ map implies) (content!10251 lt!2071291) (content!10251 lt!2071019)) ((as const (InoxSet C!27840)) true)))))

(assert (=> d!1610778 (= lt!2071291 e!3127443)))

(declare-fun c!854321 () Bool)

(assert (=> d!1610778 (= c!854321 (or ((_ is Nil!57865) lt!2071019) (<= lt!2071014 0)))))

(assert (=> d!1610778 (= (take!654 lt!2071019 lt!2071014) lt!2071291)))

(declare-fun b!5004825 () Bool)

(assert (=> b!5004825 (= e!3127441 lt!2071014)))

(declare-fun b!5004826 () Bool)

(assert (=> b!5004826 (= e!3127441 (size!38465 lt!2071019))))

(declare-fun b!5004827 () Bool)

(assert (=> b!5004827 (= e!3127444 0)))

(assert (= (and d!1610778 c!854321) b!5004823))

(assert (= (and d!1610778 (not c!854321)) b!5004821))

(assert (= (and d!1610778 res!2135478) b!5004822))

(assert (= (and b!5004822 c!854319) b!5004827))

(assert (= (and b!5004822 (not c!854319)) b!5004824))

(assert (= (and b!5004824 c!854320) b!5004826))

(assert (= (and b!5004824 (not c!854320)) b!5004825))

(declare-fun m!6038932 () Bool)

(assert (=> b!5004822 m!6038932))

(assert (=> b!5004824 m!6038858))

(declare-fun m!6038934 () Bool)

(assert (=> b!5004821 m!6038934))

(assert (=> b!5004826 m!6038858))

(declare-fun m!6038936 () Bool)

(assert (=> d!1610778 m!6038936))

(assert (=> d!1610778 m!6038864))

(assert (=> b!5004377 d!1610778))

(declare-fun d!1610780 () Bool)

(assert (=> d!1610780 (isPrefix!5348 (_1!34812 lt!2071026) (++!12641 (_1!34812 lt!2071026) (_2!34812 lt!2071026)))))

(declare-fun lt!2071292 () Unit!149035)

(assert (=> d!1610780 (= lt!2071292 (choose!37014 (_1!34812 lt!2071026) (_2!34812 lt!2071026)))))

(assert (=> d!1610780 (= (lemmaConcatTwoListThenFirstIsPrefix!3446 (_1!34812 lt!2071026) (_2!34812 lt!2071026)) lt!2071292)))

(declare-fun bs!1185943 () Bool)

(assert (= bs!1185943 d!1610780))

(assert (=> bs!1185943 m!6038354))

(assert (=> bs!1185943 m!6038354))

(declare-fun m!6038938 () Bool)

(assert (=> bs!1185943 m!6038938))

(declare-fun m!6038940 () Bool)

(assert (=> bs!1185943 m!6038940))

(assert (=> b!5004377 d!1610780))

(declare-fun b!5004828 () Bool)

(declare-fun e!3127447 () Bool)

(declare-fun e!3127446 () Bool)

(assert (=> b!5004828 (= e!3127447 e!3127446)))

(declare-fun res!2135480 () Bool)

(assert (=> b!5004828 (=> (not res!2135480) (not e!3127446))))

(assert (=> b!5004828 (= res!2135480 (not ((_ is Nil!57865) lt!2071019)))))

(declare-fun b!5004830 () Bool)

(assert (=> b!5004830 (= e!3127446 (isPrefix!5348 (tail!9866 (take!654 lt!2071019 lt!2071014)) (tail!9866 lt!2071019)))))

(declare-fun b!5004831 () Bool)

(declare-fun e!3127445 () Bool)

(assert (=> b!5004831 (= e!3127445 (>= (size!38465 lt!2071019) (size!38465 (take!654 lt!2071019 lt!2071014))))))

(declare-fun b!5004829 () Bool)

(declare-fun res!2135482 () Bool)

(assert (=> b!5004829 (=> (not res!2135482) (not e!3127446))))

(assert (=> b!5004829 (= res!2135482 (= (head!10733 (take!654 lt!2071019 lt!2071014)) (head!10733 lt!2071019)))))

(declare-fun d!1610782 () Bool)

(assert (=> d!1610782 e!3127445))

(declare-fun res!2135481 () Bool)

(assert (=> d!1610782 (=> res!2135481 e!3127445)))

(declare-fun lt!2071293 () Bool)

(assert (=> d!1610782 (= res!2135481 (not lt!2071293))))

(assert (=> d!1610782 (= lt!2071293 e!3127447)))

(declare-fun res!2135479 () Bool)

(assert (=> d!1610782 (=> res!2135479 e!3127447)))

(assert (=> d!1610782 (= res!2135479 ((_ is Nil!57865) (take!654 lt!2071019 lt!2071014)))))

(assert (=> d!1610782 (= (isPrefix!5348 (take!654 lt!2071019 lt!2071014) lt!2071019) lt!2071293)))

(assert (= (and d!1610782 (not res!2135479)) b!5004828))

(assert (= (and b!5004828 res!2135480) b!5004829))

(assert (= (and b!5004829 res!2135482) b!5004830))

(assert (= (and d!1610782 (not res!2135481)) b!5004831))

(assert (=> b!5004830 m!6038312))

(declare-fun m!6038942 () Bool)

(assert (=> b!5004830 m!6038942))

(declare-fun m!6038944 () Bool)

(assert (=> b!5004830 m!6038944))

(assert (=> b!5004830 m!6038942))

(assert (=> b!5004830 m!6038944))

(declare-fun m!6038946 () Bool)

(assert (=> b!5004830 m!6038946))

(assert (=> b!5004831 m!6038858))

(assert (=> b!5004831 m!6038312))

(declare-fun m!6038948 () Bool)

(assert (=> b!5004831 m!6038948))

(assert (=> b!5004829 m!6038312))

(declare-fun m!6038950 () Bool)

(assert (=> b!5004829 m!6038950))

(declare-fun m!6038952 () Bool)

(assert (=> b!5004829 m!6038952))

(assert (=> b!5004377 d!1610782))

(declare-fun d!1610784 () Bool)

(declare-fun lt!2071294 () Int)

(assert (=> d!1610784 (>= lt!2071294 0)))

(declare-fun e!3127448 () Int)

(assert (=> d!1610784 (= lt!2071294 e!3127448)))

(declare-fun c!854322 () Bool)

(assert (=> d!1610784 (= c!854322 ((_ is Nil!57865) Nil!57865))))

(assert (=> d!1610784 (= (size!38465 Nil!57865) lt!2071294)))

(declare-fun b!5004832 () Bool)

(assert (=> b!5004832 (= e!3127448 0)))

(declare-fun b!5004833 () Bool)

(assert (=> b!5004833 (= e!3127448 (+ 1 (size!38465 (t!370335 Nil!57865))))))

(assert (= (and d!1610784 c!854322) b!5004832))

(assert (= (and d!1610784 (not c!854322)) b!5004833))

(declare-fun m!6038954 () Bool)

(assert (=> b!5004833 m!6038954))

(assert (=> b!5004377 d!1610784))

(declare-fun d!1610786 () Bool)

(declare-fun e!3127451 () Bool)

(assert (=> d!1610786 e!3127451))

(declare-fun res!2135485 () Bool)

(assert (=> d!1610786 (=> res!2135485 e!3127451)))

(assert (=> d!1610786 (= res!2135485 (isEmpty!31333 (_1!34812 (findLongestMatchInner!1984 r!12727 Nil!57865 (size!38465 Nil!57865) lt!2071008 lt!2071008 (size!38465 lt!2071008)))))))

(declare-fun lt!2071297 () Unit!149035)

(declare-fun choose!37019 (Regex!13795 List!57989) Unit!149035)

(assert (=> d!1610786 (= lt!2071297 (choose!37019 r!12727 lt!2071008))))

(assert (=> d!1610786 (validRegex!6092 r!12727)))

(assert (=> d!1610786 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1937 r!12727 lt!2071008) lt!2071297)))

(declare-fun b!5004836 () Bool)

(assert (=> b!5004836 (= e!3127451 (matchR!6759 r!12727 (_1!34812 (findLongestMatchInner!1984 r!12727 Nil!57865 (size!38465 Nil!57865) lt!2071008 lt!2071008 (size!38465 lt!2071008)))))))

(assert (= (and d!1610786 (not res!2135485)) b!5004836))

(assert (=> d!1610786 m!6038316))

(assert (=> d!1610786 m!6038310))

(assert (=> d!1610786 m!6038324))

(assert (=> d!1610786 m!6038316))

(assert (=> d!1610786 m!6038310))

(declare-fun m!6038956 () Bool)

(assert (=> d!1610786 m!6038956))

(declare-fun m!6038958 () Bool)

(assert (=> d!1610786 m!6038958))

(assert (=> d!1610786 m!6038386))

(assert (=> b!5004836 m!6038316))

(assert (=> b!5004836 m!6038310))

(assert (=> b!5004836 m!6038316))

(assert (=> b!5004836 m!6038310))

(assert (=> b!5004836 m!6038324))

(declare-fun m!6038960 () Bool)

(assert (=> b!5004836 m!6038960))

(assert (=> b!5004377 d!1610786))

(declare-fun d!1610788 () Bool)

(assert (=> d!1610788 (= (isEmpty!31333 (_1!34812 lt!2071024)) ((_ is Nil!57865) (_1!34812 lt!2071024)))))

(assert (=> b!5004377 d!1610788))

(declare-fun d!1610790 () Bool)

(declare-fun lt!2071305 () Int)

(assert (=> d!1610790 (and (>= lt!2071305 0) (<= lt!2071305 (- lt!2071027 lt!2071014)))))

(declare-fun e!3127466 () Int)

(assert (=> d!1610790 (= lt!2071305 e!3127466)))

(declare-fun c!854329 () Bool)

(declare-fun e!3127465 () Bool)

(assert (=> d!1610790 (= c!854329 e!3127465)))

(declare-fun res!2135490 () Bool)

(assert (=> d!1610790 (=> res!2135490 e!3127465)))

(assert (=> d!1610790 (= res!2135490 (= lt!2071014 lt!2071027))))

(declare-fun e!3127463 () Bool)

(assert (=> d!1610790 e!3127463))

(declare-fun res!2135491 () Bool)

(assert (=> d!1610790 (=> (not res!2135491) (not e!3127463))))

(assert (=> d!1610790 (= res!2135491 (>= lt!2071014 0))))

(assert (=> d!1610790 (= (findLongestMatchInnerZipperFastV2!135 z!4183 lt!2071014 totalInput!1012 lt!2071027) lt!2071305)))

(declare-fun b!5004853 () Bool)

(declare-fun lostCauseZipper!829 ((InoxSet Context!6440)) Bool)

(assert (=> b!5004853 (= e!3127465 (lostCauseZipper!829 z!4183))))

(declare-fun b!5004854 () Bool)

(assert (=> b!5004854 (= e!3127463 (<= lt!2071014 (size!38464 totalInput!1012)))))

(declare-fun b!5004855 () Bool)

(declare-fun e!3127464 () Int)

(assert (=> b!5004855 (= e!3127464 0)))

(declare-fun b!5004856 () Bool)

(declare-fun c!854330 () Bool)

(declare-fun lt!2071306 () (InoxSet Context!6440))

(assert (=> b!5004856 (= c!854330 (nullableZipper!884 lt!2071306))))

(declare-fun e!3127462 () Int)

(assert (=> b!5004856 (= e!3127462 e!3127464)))

(declare-fun b!5004857 () Bool)

(declare-fun lt!2071304 () Int)

(assert (=> b!5004857 (= e!3127462 (+ 1 lt!2071304))))

(declare-fun b!5004858 () Bool)

(assert (=> b!5004858 (= e!3127466 0)))

(declare-fun b!5004859 () Bool)

(assert (=> b!5004859 (= e!3127464 1)))

(declare-fun b!5004860 () Bool)

(assert (=> b!5004860 (= e!3127466 e!3127462)))

(declare-fun apply!13989 (BalanceConc!30058 Int) C!27840)

(assert (=> b!5004860 (= lt!2071306 (derivationStepZipper!633 z!4183 (apply!13989 totalInput!1012 lt!2071014)))))

(assert (=> b!5004860 (= lt!2071304 (findLongestMatchInnerZipperFastV2!135 lt!2071306 (+ lt!2071014 1) totalInput!1012 lt!2071027))))

(declare-fun c!854331 () Bool)

(assert (=> b!5004860 (= c!854331 (> lt!2071304 0))))

(assert (= (and d!1610790 res!2135491) b!5004854))

(assert (= (and d!1610790 (not res!2135490)) b!5004853))

(assert (= (and d!1610790 c!854329) b!5004858))

(assert (= (and d!1610790 (not c!854329)) b!5004860))

(assert (= (and b!5004860 c!854331) b!5004857))

(assert (= (and b!5004860 (not c!854331)) b!5004856))

(assert (= (and b!5004856 c!854330) b!5004859))

(assert (= (and b!5004856 (not c!854330)) b!5004855))

(declare-fun m!6038962 () Bool)

(assert (=> b!5004853 m!6038962))

(assert (=> b!5004854 m!6038404))

(declare-fun m!6038964 () Bool)

(assert (=> b!5004856 m!6038964))

(declare-fun m!6038966 () Bool)

(assert (=> b!5004860 m!6038966))

(assert (=> b!5004860 m!6038966))

(declare-fun m!6038968 () Bool)

(assert (=> b!5004860 m!6038968))

(declare-fun m!6038970 () Bool)

(assert (=> b!5004860 m!6038970))

(assert (=> b!5004377 d!1610790))

(declare-fun b!5004943 () Bool)

(declare-fun e!3127507 () Unit!149035)

(declare-fun Unit!149040 () Unit!149035)

(assert (=> b!5004943 (= e!3127507 Unit!149040)))

(declare-fun lt!2071369 () Unit!149035)

(declare-fun call!349376 () Unit!149035)

(assert (=> b!5004943 (= lt!2071369 call!349376)))

(declare-fun call!349375 () Bool)

(assert (=> b!5004943 call!349375))

(declare-fun lt!2071364 () Unit!149035)

(assert (=> b!5004943 (= lt!2071364 lt!2071369)))

(declare-fun lt!2071375 () Unit!149035)

(declare-fun call!349377 () Unit!149035)

(assert (=> b!5004943 (= lt!2071375 call!349377)))

(assert (=> b!5004943 (= lt!2071008 Nil!57865)))

(declare-fun lt!2071377 () Unit!149035)

(assert (=> b!5004943 (= lt!2071377 lt!2071375)))

(assert (=> b!5004943 false))

(declare-fun b!5004944 () Bool)

(declare-fun Unit!149041 () Unit!149035)

(assert (=> b!5004944 (= e!3127507 Unit!149041)))

(declare-fun b!5004945 () Bool)

(declare-fun e!3127510 () tuple2!63018)

(declare-fun call!349380 () tuple2!63018)

(assert (=> b!5004945 (= e!3127510 call!349380)))

(declare-fun bm!349369 () Bool)

(declare-fun call!349381 () List!57989)

(assert (=> bm!349369 (= call!349381 (tail!9866 lt!2071008))))

(declare-fun b!5004946 () Bool)

(declare-fun c!854344 () Bool)

(declare-fun call!349378 () Bool)

(assert (=> b!5004946 (= c!854344 call!349378)))

(declare-fun lt!2071381 () Unit!149035)

(declare-fun lt!2071387 () Unit!149035)

(assert (=> b!5004946 (= lt!2071381 lt!2071387)))

(assert (=> b!5004946 (= lt!2071008 Nil!57865)))

(assert (=> b!5004946 (= lt!2071387 call!349377)))

(declare-fun lt!2071390 () Unit!149035)

(declare-fun lt!2071363 () Unit!149035)

(assert (=> b!5004946 (= lt!2071390 lt!2071363)))

(assert (=> b!5004946 call!349375))

(assert (=> b!5004946 (= lt!2071363 call!349376)))

(declare-fun e!3127508 () tuple2!63018)

(declare-fun e!3127504 () tuple2!63018)

(assert (=> b!5004946 (= e!3127508 e!3127504)))

(declare-fun b!5004947 () Bool)

(declare-fun e!3127511 () Bool)

(declare-fun lt!2071378 () tuple2!63018)

(assert (=> b!5004947 (= e!3127511 (>= (size!38465 (_1!34812 lt!2071378)) (size!38465 Nil!57865)))))

(declare-fun d!1610792 () Bool)

(declare-fun e!3127509 () Bool)

(assert (=> d!1610792 e!3127509))

(declare-fun res!2135497 () Bool)

(assert (=> d!1610792 (=> (not res!2135497) (not e!3127509))))

(assert (=> d!1610792 (= res!2135497 (= (++!12641 (_1!34812 lt!2071378) (_2!34812 lt!2071378)) lt!2071008))))

(declare-fun e!3127506 () tuple2!63018)

(assert (=> d!1610792 (= lt!2071378 e!3127506)))

(declare-fun c!854346 () Bool)

(declare-fun lostCause!1188 (Regex!13795) Bool)

(assert (=> d!1610792 (= c!854346 (lostCause!1188 r!12727))))

(declare-fun lt!2071383 () Unit!149035)

(declare-fun Unit!149042 () Unit!149035)

(assert (=> d!1610792 (= lt!2071383 Unit!149042)))

(declare-fun getSuffix!3144 (List!57989 List!57989) List!57989)

(assert (=> d!1610792 (= (getSuffix!3144 lt!2071008 Nil!57865) lt!2071008)))

(declare-fun lt!2071389 () Unit!149035)

(declare-fun lt!2071371 () Unit!149035)

(assert (=> d!1610792 (= lt!2071389 lt!2071371)))

(declare-fun lt!2071376 () List!57989)

(assert (=> d!1610792 (= lt!2071008 lt!2071376)))

(declare-fun lemmaSamePrefixThenSameSuffix!2558 (List!57989 List!57989 List!57989 List!57989 List!57989) Unit!149035)

(assert (=> d!1610792 (= lt!2071371 (lemmaSamePrefixThenSameSuffix!2558 Nil!57865 lt!2071008 Nil!57865 lt!2071376 lt!2071008))))

(assert (=> d!1610792 (= lt!2071376 (getSuffix!3144 lt!2071008 Nil!57865))))

(declare-fun lt!2071365 () Unit!149035)

(declare-fun lt!2071380 () Unit!149035)

(assert (=> d!1610792 (= lt!2071365 lt!2071380)))

(assert (=> d!1610792 (isPrefix!5348 Nil!57865 (++!12641 Nil!57865 lt!2071008))))

(assert (=> d!1610792 (= lt!2071380 (lemmaConcatTwoListThenFirstIsPrefix!3446 Nil!57865 lt!2071008))))

(assert (=> d!1610792 (validRegex!6092 r!12727)))

(assert (=> d!1610792 (= (findLongestMatchInner!1984 r!12727 Nil!57865 (size!38465 Nil!57865) lt!2071008 lt!2071008 (size!38465 lt!2071008)) lt!2071378)))

(declare-fun b!5004948 () Bool)

(assert (=> b!5004948 (= e!3127504 (tuple2!63019 Nil!57865 Nil!57865))))

(declare-fun bm!349370 () Bool)

(declare-fun lemmaIsPrefixRefl!3627 (List!57989 List!57989) Unit!149035)

(assert (=> bm!349370 (= call!349376 (lemmaIsPrefixRefl!3627 lt!2071008 lt!2071008))))

(declare-fun bm!349371 () Bool)

(assert (=> bm!349371 (= call!349375 (isPrefix!5348 lt!2071008 lt!2071008))))

(declare-fun b!5004949 () Bool)

(assert (=> b!5004949 (= e!3127506 e!3127508)))

(declare-fun c!854347 () Bool)

(assert (=> b!5004949 (= c!854347 (= (size!38465 Nil!57865) (size!38465 lt!2071008)))))

(declare-fun bm!349372 () Bool)

(declare-fun call!349374 () C!27840)

(assert (=> bm!349372 (= call!349374 (head!10733 lt!2071008))))

(declare-fun b!5004950 () Bool)

(declare-fun e!3127505 () tuple2!63018)

(declare-fun lt!2071373 () tuple2!63018)

(assert (=> b!5004950 (= e!3127505 lt!2071373)))

(declare-fun b!5004951 () Bool)

(assert (=> b!5004951 (= e!3127509 e!3127511)))

(declare-fun res!2135496 () Bool)

(assert (=> b!5004951 (=> res!2135496 e!3127511)))

(assert (=> b!5004951 (= res!2135496 (isEmpty!31333 (_1!34812 lt!2071378)))))

(declare-fun bm!349373 () Bool)

(declare-fun call!349379 () Regex!13795)

(declare-fun derivativeStep!3979 (Regex!13795 C!27840) Regex!13795)

(assert (=> bm!349373 (= call!349379 (derivativeStep!3979 r!12727 call!349374))))

(declare-fun b!5004952 () Bool)

(assert (=> b!5004952 (= e!3127506 (tuple2!63019 Nil!57865 lt!2071008))))

(declare-fun b!5004953 () Bool)

(declare-fun c!854349 () Bool)

(assert (=> b!5004953 (= c!854349 call!349378)))

(declare-fun lt!2071388 () Unit!149035)

(declare-fun lt!2071385 () Unit!149035)

(assert (=> b!5004953 (= lt!2071388 lt!2071385)))

(declare-fun lt!2071366 () C!27840)

(declare-fun lt!2071372 () List!57989)

(assert (=> b!5004953 (= (++!12641 (++!12641 Nil!57865 (Cons!57865 lt!2071366 Nil!57865)) lt!2071372) lt!2071008)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1500 (List!57989 C!27840 List!57989 List!57989) Unit!149035)

(assert (=> b!5004953 (= lt!2071385 (lemmaMoveElementToOtherListKeepsConcatEq!1500 Nil!57865 lt!2071366 lt!2071372 lt!2071008))))

(assert (=> b!5004953 (= lt!2071372 (tail!9866 lt!2071008))))

(assert (=> b!5004953 (= lt!2071366 (head!10733 lt!2071008))))

(declare-fun lt!2071374 () Unit!149035)

(declare-fun lt!2071367 () Unit!149035)

(assert (=> b!5004953 (= lt!2071374 lt!2071367)))

(assert (=> b!5004953 (isPrefix!5348 (++!12641 Nil!57865 (Cons!57865 (head!10733 (getSuffix!3144 lt!2071008 Nil!57865)) Nil!57865)) lt!2071008)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!889 (List!57989 List!57989) Unit!149035)

(assert (=> b!5004953 (= lt!2071367 (lemmaAddHeadSuffixToPrefixStillPrefix!889 Nil!57865 lt!2071008))))

(declare-fun lt!2071386 () Unit!149035)

(declare-fun lt!2071368 () Unit!149035)

(assert (=> b!5004953 (= lt!2071386 lt!2071368)))

(assert (=> b!5004953 (= lt!2071368 (lemmaAddHeadSuffixToPrefixStillPrefix!889 Nil!57865 lt!2071008))))

(declare-fun lt!2071382 () List!57989)

(assert (=> b!5004953 (= lt!2071382 (++!12641 Nil!57865 (Cons!57865 (head!10733 lt!2071008) Nil!57865)))))

(declare-fun lt!2071370 () Unit!149035)

(assert (=> b!5004953 (= lt!2071370 e!3127507)))

(declare-fun c!854345 () Bool)

(assert (=> b!5004953 (= c!854345 (= (size!38465 Nil!57865) (size!38465 lt!2071008)))))

(declare-fun lt!2071379 () Unit!149035)

(declare-fun lt!2071384 () Unit!149035)

(assert (=> b!5004953 (= lt!2071379 lt!2071384)))

(assert (=> b!5004953 (<= (size!38465 Nil!57865) (size!38465 lt!2071008))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!815 (List!57989 List!57989) Unit!149035)

(assert (=> b!5004953 (= lt!2071384 (lemmaIsPrefixThenSmallerEqSize!815 Nil!57865 lt!2071008))))

(assert (=> b!5004953 (= e!3127508 e!3127510)))

(declare-fun bm!349374 () Bool)

(declare-fun nullable!4689 (Regex!13795) Bool)

(assert (=> bm!349374 (= call!349378 (nullable!4689 r!12727))))

(declare-fun b!5004954 () Bool)

(assert (=> b!5004954 (= e!3127504 (tuple2!63019 Nil!57865 lt!2071008))))

(declare-fun bm!349375 () Bool)

(assert (=> bm!349375 (= call!349377 (lemmaIsPrefixSameLengthThenSameList!1275 lt!2071008 Nil!57865 lt!2071008))))

(declare-fun b!5004955 () Bool)

(assert (=> b!5004955 (= e!3127505 (tuple2!63019 Nil!57865 lt!2071008))))

(declare-fun bm!349376 () Bool)

(assert (=> bm!349376 (= call!349380 (findLongestMatchInner!1984 call!349379 lt!2071382 (+ (size!38465 Nil!57865) 1) call!349381 lt!2071008 (size!38465 lt!2071008)))))

(declare-fun b!5004956 () Bool)

(assert (=> b!5004956 (= e!3127510 e!3127505)))

(assert (=> b!5004956 (= lt!2071373 call!349380)))

(declare-fun c!854348 () Bool)

(assert (=> b!5004956 (= c!854348 (isEmpty!31333 (_1!34812 lt!2071373)))))

(assert (= (and d!1610792 c!854346) b!5004952))

(assert (= (and d!1610792 (not c!854346)) b!5004949))

(assert (= (and b!5004949 c!854347) b!5004946))

(assert (= (and b!5004949 (not c!854347)) b!5004953))

(assert (= (and b!5004946 c!854344) b!5004948))

(assert (= (and b!5004946 (not c!854344)) b!5004954))

(assert (= (and b!5004953 c!854345) b!5004943))

(assert (= (and b!5004953 (not c!854345)) b!5004944))

(assert (= (and b!5004953 c!854349) b!5004956))

(assert (= (and b!5004953 (not c!854349)) b!5004945))

(assert (= (and b!5004956 c!854348) b!5004955))

(assert (= (and b!5004956 (not c!854348)) b!5004950))

(assert (= (or b!5004956 b!5004945) bm!349372))

(assert (= (or b!5004956 b!5004945) bm!349369))

(assert (= (or b!5004956 b!5004945) bm!349373))

(assert (= (or b!5004956 b!5004945) bm!349376))

(assert (= (or b!5004946 b!5004953) bm!349374))

(assert (= (or b!5004946 b!5004943) bm!349371))

(assert (= (or b!5004946 b!5004943) bm!349375))

(assert (= (or b!5004946 b!5004943) bm!349370))

(assert (= (and d!1610792 res!2135497) b!5004951))

(assert (= (and b!5004951 (not res!2135496)) b!5004947))

(declare-fun m!6038988 () Bool)

(assert (=> bm!349372 m!6038988))

(declare-fun m!6038990 () Bool)

(assert (=> b!5004956 m!6038990))

(declare-fun m!6038992 () Bool)

(assert (=> bm!349371 m!6038992))

(declare-fun m!6038994 () Bool)

(assert (=> b!5004951 m!6038994))

(declare-fun m!6038996 () Bool)

(assert (=> b!5004947 m!6038996))

(assert (=> b!5004947 m!6038316))

(assert (=> bm!349376 m!6038310))

(declare-fun m!6038998 () Bool)

(assert (=> bm!349376 m!6038998))

(declare-fun m!6039000 () Bool)

(assert (=> bm!349370 m!6039000))

(declare-fun m!6039002 () Bool)

(assert (=> bm!349373 m!6039002))

(declare-fun m!6039004 () Bool)

(assert (=> bm!349374 m!6039004))

(declare-fun m!6039006 () Bool)

(assert (=> bm!349375 m!6039006))

(declare-fun m!6039008 () Bool)

(assert (=> b!5004953 m!6039008))

(assert (=> b!5004953 m!6038316))

(declare-fun m!6039010 () Bool)

(assert (=> b!5004953 m!6039010))

(declare-fun m!6039012 () Bool)

(assert (=> b!5004953 m!6039012))

(assert (=> b!5004953 m!6038310))

(declare-fun m!6039014 () Bool)

(assert (=> b!5004953 m!6039014))

(declare-fun m!6039016 () Bool)

(assert (=> b!5004953 m!6039016))

(declare-fun m!6039018 () Bool)

(assert (=> b!5004953 m!6039018))

(declare-fun m!6039020 () Bool)

(assert (=> b!5004953 m!6039020))

(assert (=> b!5004953 m!6039014))

(declare-fun m!6039022 () Bool)

(assert (=> b!5004953 m!6039022))

(assert (=> b!5004953 m!6039018))

(declare-fun m!6039024 () Bool)

(assert (=> b!5004953 m!6039024))

(assert (=> b!5004953 m!6038988))

(assert (=> b!5004953 m!6039024))

(declare-fun m!6039026 () Bool)

(assert (=> b!5004953 m!6039026))

(declare-fun m!6039028 () Bool)

(assert (=> b!5004953 m!6039028))

(declare-fun m!6039030 () Bool)

(assert (=> d!1610792 m!6039030))

(declare-fun m!6039032 () Bool)

(assert (=> d!1610792 m!6039032))

(declare-fun m!6039034 () Bool)

(assert (=> d!1610792 m!6039034))

(assert (=> d!1610792 m!6038386))

(assert (=> d!1610792 m!6039014))

(declare-fun m!6039036 () Bool)

(assert (=> d!1610792 m!6039036))

(declare-fun m!6039038 () Bool)

(assert (=> d!1610792 m!6039038))

(assert (=> d!1610792 m!6039034))

(declare-fun m!6039040 () Bool)

(assert (=> d!1610792 m!6039040))

(assert (=> bm!349369 m!6039012))

(assert (=> b!5004377 d!1610792))

(declare-fun b!5004957 () Bool)

(declare-fun e!3127514 () Bool)

(declare-fun e!3127513 () Bool)

(assert (=> b!5004957 (= e!3127514 e!3127513)))

(declare-fun res!2135499 () Bool)

(assert (=> b!5004957 (=> (not res!2135499) (not e!3127513))))

(assert (=> b!5004957 (= res!2135499 (not ((_ is Nil!57865) lt!2071013)))))

(declare-fun b!5004959 () Bool)

(assert (=> b!5004959 (= e!3127513 (isPrefix!5348 (tail!9866 (_1!34812 lt!2071026)) (tail!9866 lt!2071013)))))

(declare-fun b!5004960 () Bool)

(declare-fun e!3127512 () Bool)

(assert (=> b!5004960 (= e!3127512 (>= (size!38465 lt!2071013) (size!38465 (_1!34812 lt!2071026))))))

(declare-fun b!5004958 () Bool)

(declare-fun res!2135501 () Bool)

(assert (=> b!5004958 (=> (not res!2135501) (not e!3127513))))

(assert (=> b!5004958 (= res!2135501 (= (head!10733 (_1!34812 lt!2071026)) (head!10733 lt!2071013)))))

(declare-fun d!1610794 () Bool)

(assert (=> d!1610794 e!3127512))

(declare-fun res!2135500 () Bool)

(assert (=> d!1610794 (=> res!2135500 e!3127512)))

(declare-fun lt!2071391 () Bool)

(assert (=> d!1610794 (= res!2135500 (not lt!2071391))))

(assert (=> d!1610794 (= lt!2071391 e!3127514)))

(declare-fun res!2135498 () Bool)

(assert (=> d!1610794 (=> res!2135498 e!3127514)))

(assert (=> d!1610794 (= res!2135498 ((_ is Nil!57865) (_1!34812 lt!2071026)))))

(assert (=> d!1610794 (= (isPrefix!5348 (_1!34812 lt!2071026) lt!2071013) lt!2071391)))

(assert (= (and d!1610794 (not res!2135498)) b!5004957))

(assert (= (and b!5004957 res!2135499) b!5004958))

(assert (= (and b!5004958 res!2135501) b!5004959))

(assert (= (and d!1610794 (not res!2135500)) b!5004960))

(declare-fun m!6039042 () Bool)

(assert (=> b!5004959 m!6039042))

(declare-fun m!6039044 () Bool)

(assert (=> b!5004959 m!6039044))

(assert (=> b!5004959 m!6039042))

(assert (=> b!5004959 m!6039044))

(declare-fun m!6039046 () Bool)

(assert (=> b!5004959 m!6039046))

(declare-fun m!6039048 () Bool)

(assert (=> b!5004960 m!6039048))

(assert (=> b!5004960 m!6038364))

(declare-fun m!6039050 () Bool)

(assert (=> b!5004958 m!6039050))

(declare-fun m!6039052 () Bool)

(assert (=> b!5004958 m!6039052))

(assert (=> b!5004377 d!1610794))

(declare-fun d!1610796 () Bool)

(assert (=> d!1610796 (= (matchR!6759 r!12727 lt!2071021) (matchZipper!563 z!4183 lt!2071021))))

(declare-fun lt!2071394 () Unit!149035)

(declare-fun choose!37020 ((InoxSet Context!6440) List!57991 Regex!13795 List!57989) Unit!149035)

(assert (=> d!1610796 (= lt!2071394 (choose!37020 z!4183 lt!2071007 r!12727 lt!2071021))))

(assert (=> d!1610796 (validRegex!6092 r!12727)))

(assert (=> d!1610796 (= (theoremZipperRegexEquiv!167 z!4183 lt!2071007 r!12727 lt!2071021) lt!2071394)))

(declare-fun bs!1185945 () Bool)

(assert (= bs!1185945 d!1610796))

(assert (=> bs!1185945 m!6038360))

(assert (=> bs!1185945 m!6038326))

(declare-fun m!6039054 () Bool)

(assert (=> bs!1185945 m!6039054))

(assert (=> bs!1185945 m!6038386))

(assert (=> b!5004387 d!1610796))

(declare-fun b!5004989 () Bool)

(declare-fun e!3127535 () Bool)

(declare-fun e!3127534 () Bool)

(assert (=> b!5004989 (= e!3127535 e!3127534)))

(declare-fun res!2135520 () Bool)

(assert (=> b!5004989 (=> res!2135520 e!3127534)))

(declare-fun call!349384 () Bool)

(assert (=> b!5004989 (= res!2135520 call!349384)))

(declare-fun b!5004990 () Bool)

(declare-fun e!3127529 () Bool)

(declare-fun e!3127533 () Bool)

(assert (=> b!5004990 (= e!3127529 e!3127533)))

(declare-fun c!854358 () Bool)

(assert (=> b!5004990 (= c!854358 ((_ is EmptyLang!13795) r!12727))))

(declare-fun b!5004991 () Bool)

(declare-fun e!3127532 () Bool)

(assert (=> b!5004991 (= e!3127532 (= (head!10733 lt!2071021) (c!854186 r!12727)))))

(declare-fun b!5004992 () Bool)

(declare-fun res!2135519 () Bool)

(assert (=> b!5004992 (=> (not res!2135519) (not e!3127532))))

(assert (=> b!5004992 (= res!2135519 (not call!349384))))

(declare-fun d!1610798 () Bool)

(assert (=> d!1610798 e!3127529))

(declare-fun c!854357 () Bool)

(assert (=> d!1610798 (= c!854357 ((_ is EmptyExpr!13795) r!12727))))

(declare-fun lt!2071397 () Bool)

(declare-fun e!3127530 () Bool)

(assert (=> d!1610798 (= lt!2071397 e!3127530)))

(declare-fun c!854356 () Bool)

(assert (=> d!1610798 (= c!854356 (isEmpty!31333 lt!2071021))))

(assert (=> d!1610798 (validRegex!6092 r!12727)))

(assert (=> d!1610798 (= (matchR!6759 r!12727 lt!2071021) lt!2071397)))

(declare-fun b!5004993 () Bool)

(assert (=> b!5004993 (= e!3127529 (= lt!2071397 call!349384))))

(declare-fun bm!349379 () Bool)

(assert (=> bm!349379 (= call!349384 (isEmpty!31333 lt!2071021))))

(declare-fun b!5004994 () Bool)

(declare-fun res!2135525 () Bool)

(assert (=> b!5004994 (=> (not res!2135525) (not e!3127532))))

(assert (=> b!5004994 (= res!2135525 (isEmpty!31333 (tail!9866 lt!2071021)))))

(declare-fun b!5004995 () Bool)

(declare-fun res!2135518 () Bool)

(declare-fun e!3127531 () Bool)

(assert (=> b!5004995 (=> res!2135518 e!3127531)))

(assert (=> b!5004995 (= res!2135518 (not ((_ is ElementMatch!13795) r!12727)))))

(assert (=> b!5004995 (= e!3127533 e!3127531)))

(declare-fun b!5004996 () Bool)

(assert (=> b!5004996 (= e!3127530 (matchR!6759 (derivativeStep!3979 r!12727 (head!10733 lt!2071021)) (tail!9866 lt!2071021)))))

(declare-fun b!5004997 () Bool)

(declare-fun res!2135521 () Bool)

(assert (=> b!5004997 (=> res!2135521 e!3127531)))

(assert (=> b!5004997 (= res!2135521 e!3127532)))

(declare-fun res!2135524 () Bool)

(assert (=> b!5004997 (=> (not res!2135524) (not e!3127532))))

(assert (=> b!5004997 (= res!2135524 lt!2071397)))

(declare-fun b!5004998 () Bool)

(assert (=> b!5004998 (= e!3127533 (not lt!2071397))))

(declare-fun b!5004999 () Bool)

(assert (=> b!5004999 (= e!3127531 e!3127535)))

(declare-fun res!2135522 () Bool)

(assert (=> b!5004999 (=> (not res!2135522) (not e!3127535))))

(assert (=> b!5004999 (= res!2135522 (not lt!2071397))))

(declare-fun b!5005000 () Bool)

(assert (=> b!5005000 (= e!3127534 (not (= (head!10733 lt!2071021) (c!854186 r!12727))))))

(declare-fun b!5005001 () Bool)

(assert (=> b!5005001 (= e!3127530 (nullable!4689 r!12727))))

(declare-fun b!5005002 () Bool)

(declare-fun res!2135523 () Bool)

(assert (=> b!5005002 (=> res!2135523 e!3127534)))

(assert (=> b!5005002 (= res!2135523 (not (isEmpty!31333 (tail!9866 lt!2071021))))))

(assert (= (and d!1610798 c!854356) b!5005001))

(assert (= (and d!1610798 (not c!854356)) b!5004996))

(assert (= (and d!1610798 c!854357) b!5004993))

(assert (= (and d!1610798 (not c!854357)) b!5004990))

(assert (= (and b!5004990 c!854358) b!5004998))

(assert (= (and b!5004990 (not c!854358)) b!5004995))

(assert (= (and b!5004995 (not res!2135518)) b!5004997))

(assert (= (and b!5004997 res!2135524) b!5004992))

(assert (= (and b!5004992 res!2135519) b!5004994))

(assert (= (and b!5004994 res!2135525) b!5004991))

(assert (= (and b!5004997 (not res!2135521)) b!5004999))

(assert (= (and b!5004999 res!2135522) b!5004989))

(assert (= (and b!5004989 (not res!2135520)) b!5005002))

(assert (= (and b!5005002 (not res!2135523)) b!5005000))

(assert (= (or b!5004993 b!5004989 b!5004992) bm!349379))

(assert (=> b!5005002 m!6038896))

(assert (=> b!5005002 m!6038896))

(declare-fun m!6039056 () Bool)

(assert (=> b!5005002 m!6039056))

(assert (=> b!5004991 m!6038904))

(assert (=> b!5005000 m!6038904))

(assert (=> b!5004996 m!6038904))

(assert (=> b!5004996 m!6038904))

(declare-fun m!6039058 () Bool)

(assert (=> b!5004996 m!6039058))

(assert (=> b!5004996 m!6038896))

(assert (=> b!5004996 m!6039058))

(assert (=> b!5004996 m!6038896))

(declare-fun m!6039060 () Bool)

(assert (=> b!5004996 m!6039060))

(assert (=> bm!349379 m!6038908))

(assert (=> b!5005001 m!6039004))

(assert (=> b!5004994 m!6038896))

(assert (=> b!5004994 m!6038896))

(assert (=> b!5004994 m!6039056))

(assert (=> d!1610798 m!6038908))

(assert (=> d!1610798 m!6038386))

(assert (=> b!5004387 d!1610798))

(declare-fun d!1610800 () Bool)

(declare-fun lt!2071398 () Int)

(assert (=> d!1610800 (= lt!2071398 (size!38465 (list!18624 (_1!34811 lt!2071017))))))

(assert (=> d!1610800 (= lt!2071398 (size!38467 (c!854185 (_1!34811 lt!2071017))))))

(assert (=> d!1610800 (= (size!38464 (_1!34811 lt!2071017)) lt!2071398)))

(declare-fun bs!1185946 () Bool)

(assert (= bs!1185946 d!1610800))

(assert (=> bs!1185946 m!6038400))

(assert (=> bs!1185946 m!6038400))

(declare-fun m!6039062 () Bool)

(assert (=> bs!1185946 m!6039062))

(declare-fun m!6039064 () Bool)

(assert (=> bs!1185946 m!6039064))

(assert (=> b!5004387 d!1610800))

(declare-fun d!1610802 () Bool)

(declare-fun c!854359 () Bool)

(assert (=> d!1610802 (= c!854359 (isEmpty!31333 (_1!34812 lt!2071026)))))

(declare-fun e!3127536 () Bool)

(assert (=> d!1610802 (= (matchZipper!563 z!4183 (_1!34812 lt!2071026)) e!3127536)))

(declare-fun b!5005003 () Bool)

(assert (=> b!5005003 (= e!3127536 (nullableZipper!884 z!4183))))

(declare-fun b!5005004 () Bool)

(assert (=> b!5005004 (= e!3127536 (matchZipper!563 (derivationStepZipper!633 z!4183 (head!10733 (_1!34812 lt!2071026))) (tail!9866 (_1!34812 lt!2071026))))))

(assert (= (and d!1610802 c!854359) b!5005003))

(assert (= (and d!1610802 (not c!854359)) b!5005004))

(assert (=> d!1610802 m!6038344))

(assert (=> b!5005003 m!6038836))

(assert (=> b!5005004 m!6039050))

(assert (=> b!5005004 m!6039050))

(declare-fun m!6039066 () Bool)

(assert (=> b!5005004 m!6039066))

(assert (=> b!5005004 m!6039042))

(assert (=> b!5005004 m!6039066))

(assert (=> b!5005004 m!6039042))

(declare-fun m!6039068 () Bool)

(assert (=> b!5005004 m!6039068))

(assert (=> b!5004387 d!1610802))

(declare-fun d!1610804 () Bool)

(declare-fun lt!2071399 () Int)

(assert (=> d!1610804 (>= lt!2071399 0)))

(declare-fun e!3127537 () Int)

(assert (=> d!1610804 (= lt!2071399 e!3127537)))

(declare-fun c!854360 () Bool)

(assert (=> d!1610804 (= c!854360 ((_ is Nil!57865) (_1!34812 lt!2071026)))))

(assert (=> d!1610804 (= (size!38465 (_1!34812 lt!2071026)) lt!2071399)))

(declare-fun b!5005005 () Bool)

(assert (=> b!5005005 (= e!3127537 0)))

(declare-fun b!5005006 () Bool)

(assert (=> b!5005006 (= e!3127537 (+ 1 (size!38465 (t!370335 (_1!34812 lt!2071026)))))))

(assert (= (and d!1610804 c!854360) b!5005005))

(assert (= (and d!1610804 (not c!854360)) b!5005006))

(declare-fun m!6039070 () Bool)

(assert (=> b!5005006 m!6039070))

(assert (=> b!5004387 d!1610804))

(declare-fun d!1610806 () Bool)

(assert (=> d!1610806 (= (matchR!6759 r!12727 (_1!34812 lt!2071026)) (matchZipper!563 z!4183 (_1!34812 lt!2071026)))))

(declare-fun lt!2071400 () Unit!149035)

(assert (=> d!1610806 (= lt!2071400 (choose!37020 z!4183 lt!2071007 r!12727 (_1!34812 lt!2071026)))))

(assert (=> d!1610806 (validRegex!6092 r!12727)))

(assert (=> d!1610806 (= (theoremZipperRegexEquiv!167 z!4183 lt!2071007 r!12727 (_1!34812 lt!2071026)) lt!2071400)))

(declare-fun bs!1185947 () Bool)

(assert (= bs!1185947 d!1610806))

(assert (=> bs!1185947 m!6038352))

(assert (=> bs!1185947 m!6038362))

(declare-fun m!6039072 () Bool)

(assert (=> bs!1185947 m!6039072))

(assert (=> bs!1185947 m!6038386))

(assert (=> b!5004387 d!1610806))

(declare-fun d!1610808 () Bool)

(declare-fun lt!2071403 () Bool)

(assert (=> d!1610808 (= lt!2071403 (isEmpty!31333 (list!18624 (_1!34811 lt!2071017))))))

(declare-fun isEmpty!31334 (Conc!15314) Bool)

(assert (=> d!1610808 (= lt!2071403 (isEmpty!31334 (c!854185 (_1!34811 lt!2071017))))))

(assert (=> d!1610808 (= (isEmpty!31332 (_1!34811 lt!2071017)) lt!2071403)))

(declare-fun bs!1185948 () Bool)

(assert (= bs!1185948 d!1610808))

(assert (=> bs!1185948 m!6038400))

(assert (=> bs!1185948 m!6038400))

(declare-fun m!6039074 () Bool)

(assert (=> bs!1185948 m!6039074))

(declare-fun m!6039076 () Bool)

(assert (=> bs!1185948 m!6039076))

(assert (=> b!5004368 d!1610808))

(declare-fun d!1610810 () Bool)

(declare-fun c!854361 () Bool)

(assert (=> d!1610810 (= c!854361 (isEmpty!31333 (take!654 (drop!2458 lt!2071019 lt!2071014) lt!2071018)))))

(declare-fun e!3127538 () Bool)

(assert (=> d!1610810 (= (matchZipper!563 z!4183 (take!654 (drop!2458 lt!2071019 lt!2071014) lt!2071018)) e!3127538)))

(declare-fun b!5005007 () Bool)

(assert (=> b!5005007 (= e!3127538 (nullableZipper!884 z!4183))))

(declare-fun b!5005008 () Bool)

(assert (=> b!5005008 (= e!3127538 (matchZipper!563 (derivationStepZipper!633 z!4183 (head!10733 (take!654 (drop!2458 lt!2071019 lt!2071014) lt!2071018))) (tail!9866 (take!654 (drop!2458 lt!2071019 lt!2071014) lt!2071018))))))

(assert (= (and d!1610810 c!854361) b!5005007))

(assert (= (and d!1610810 (not c!854361)) b!5005008))

(assert (=> d!1610810 m!6038356))

(declare-fun m!6039078 () Bool)

(assert (=> d!1610810 m!6039078))

(assert (=> b!5005007 m!6038836))

(assert (=> b!5005008 m!6038356))

(declare-fun m!6039080 () Bool)

(assert (=> b!5005008 m!6039080))

(assert (=> b!5005008 m!6039080))

(declare-fun m!6039082 () Bool)

(assert (=> b!5005008 m!6039082))

(assert (=> b!5005008 m!6038356))

(declare-fun m!6039084 () Bool)

(assert (=> b!5005008 m!6039084))

(assert (=> b!5005008 m!6039082))

(assert (=> b!5005008 m!6039084))

(declare-fun m!6039086 () Bool)

(assert (=> b!5005008 m!6039086))

(assert (=> b!5004378 d!1610810))

(declare-fun e!3127541 () List!57989)

(declare-fun b!5005009 () Bool)

(assert (=> b!5005009 (= e!3127541 (Cons!57865 (h!64313 (drop!2458 lt!2071019 lt!2071014)) (take!654 (t!370335 (drop!2458 lt!2071019 lt!2071014)) (- lt!2071018 1))))))

(declare-fun b!5005010 () Bool)

(declare-fun e!3127540 () Bool)

(declare-fun lt!2071404 () List!57989)

(declare-fun e!3127542 () Int)

(assert (=> b!5005010 (= e!3127540 (= (size!38465 lt!2071404) e!3127542))))

(declare-fun c!854362 () Bool)

(assert (=> b!5005010 (= c!854362 (<= lt!2071018 0))))

(declare-fun b!5005011 () Bool)

(assert (=> b!5005011 (= e!3127541 Nil!57865)))

(declare-fun b!5005012 () Bool)

(declare-fun e!3127539 () Int)

(assert (=> b!5005012 (= e!3127542 e!3127539)))

(declare-fun c!854363 () Bool)

(assert (=> b!5005012 (= c!854363 (>= lt!2071018 (size!38465 (drop!2458 lt!2071019 lt!2071014))))))

(declare-fun d!1610812 () Bool)

(assert (=> d!1610812 e!3127540))

(declare-fun res!2135526 () Bool)

(assert (=> d!1610812 (=> (not res!2135526) (not e!3127540))))

(assert (=> d!1610812 (= res!2135526 (= ((_ map implies) (content!10251 lt!2071404) (content!10251 (drop!2458 lt!2071019 lt!2071014))) ((as const (InoxSet C!27840)) true)))))

(assert (=> d!1610812 (= lt!2071404 e!3127541)))

(declare-fun c!854364 () Bool)

(assert (=> d!1610812 (= c!854364 (or ((_ is Nil!57865) (drop!2458 lt!2071019 lt!2071014)) (<= lt!2071018 0)))))

(assert (=> d!1610812 (= (take!654 (drop!2458 lt!2071019 lt!2071014) lt!2071018) lt!2071404)))

(declare-fun b!5005013 () Bool)

(assert (=> b!5005013 (= e!3127539 lt!2071018)))

(declare-fun b!5005014 () Bool)

(assert (=> b!5005014 (= e!3127539 (size!38465 (drop!2458 lt!2071019 lt!2071014)))))

(declare-fun b!5005015 () Bool)

(assert (=> b!5005015 (= e!3127542 0)))

(assert (= (and d!1610812 c!854364) b!5005011))

(assert (= (and d!1610812 (not c!854364)) b!5005009))

(assert (= (and d!1610812 res!2135526) b!5005010))

(assert (= (and b!5005010 c!854362) b!5005015))

(assert (= (and b!5005010 (not c!854362)) b!5005012))

(assert (= (and b!5005012 c!854363) b!5005014))

(assert (= (and b!5005012 (not c!854363)) b!5005013))

(declare-fun m!6039088 () Bool)

(assert (=> b!5005010 m!6039088))

(assert (=> b!5005012 m!6038350))

(declare-fun m!6039090 () Bool)

(assert (=> b!5005012 m!6039090))

(declare-fun m!6039092 () Bool)

(assert (=> b!5005009 m!6039092))

(assert (=> b!5005014 m!6038350))

(assert (=> b!5005014 m!6039090))

(declare-fun m!6039094 () Bool)

(assert (=> d!1610812 m!6039094))

(assert (=> d!1610812 m!6038350))

(declare-fun m!6039096 () Bool)

(assert (=> d!1610812 m!6039096))

(assert (=> b!5004378 d!1610812))

(assert (=> b!5004378 d!1610752))

(declare-fun b!5005016 () Bool)

(declare-fun e!3127549 () Bool)

(declare-fun e!3127548 () Bool)

(assert (=> b!5005016 (= e!3127549 e!3127548)))

(declare-fun res!2135529 () Bool)

(assert (=> b!5005016 (=> res!2135529 e!3127548)))

(declare-fun call!349385 () Bool)

(assert (=> b!5005016 (= res!2135529 call!349385)))

(declare-fun b!5005017 () Bool)

(declare-fun e!3127543 () Bool)

(declare-fun e!3127547 () Bool)

(assert (=> b!5005017 (= e!3127543 e!3127547)))

(declare-fun c!854367 () Bool)

(assert (=> b!5005017 (= c!854367 ((_ is EmptyLang!13795) r!12727))))

(declare-fun b!5005018 () Bool)

(declare-fun e!3127546 () Bool)

(assert (=> b!5005018 (= e!3127546 (= (head!10733 (_1!34812 lt!2071024)) (c!854186 r!12727)))))

(declare-fun b!5005019 () Bool)

(declare-fun res!2135528 () Bool)

(assert (=> b!5005019 (=> (not res!2135528) (not e!3127546))))

(assert (=> b!5005019 (= res!2135528 (not call!349385))))

(declare-fun d!1610814 () Bool)

(assert (=> d!1610814 e!3127543))

(declare-fun c!854366 () Bool)

(assert (=> d!1610814 (= c!854366 ((_ is EmptyExpr!13795) r!12727))))

(declare-fun lt!2071405 () Bool)

(declare-fun e!3127544 () Bool)

(assert (=> d!1610814 (= lt!2071405 e!3127544)))

(declare-fun c!854365 () Bool)

(assert (=> d!1610814 (= c!854365 (isEmpty!31333 (_1!34812 lt!2071024)))))

(assert (=> d!1610814 (validRegex!6092 r!12727)))

(assert (=> d!1610814 (= (matchR!6759 r!12727 (_1!34812 lt!2071024)) lt!2071405)))

(declare-fun b!5005020 () Bool)

(assert (=> b!5005020 (= e!3127543 (= lt!2071405 call!349385))))

(declare-fun bm!349380 () Bool)

(assert (=> bm!349380 (= call!349385 (isEmpty!31333 (_1!34812 lt!2071024)))))

(declare-fun b!5005021 () Bool)

(declare-fun res!2135534 () Bool)

(assert (=> b!5005021 (=> (not res!2135534) (not e!3127546))))

(assert (=> b!5005021 (= res!2135534 (isEmpty!31333 (tail!9866 (_1!34812 lt!2071024))))))

(declare-fun b!5005022 () Bool)

(declare-fun res!2135527 () Bool)

(declare-fun e!3127545 () Bool)

(assert (=> b!5005022 (=> res!2135527 e!3127545)))

(assert (=> b!5005022 (= res!2135527 (not ((_ is ElementMatch!13795) r!12727)))))

(assert (=> b!5005022 (= e!3127547 e!3127545)))

(declare-fun b!5005023 () Bool)

(assert (=> b!5005023 (= e!3127544 (matchR!6759 (derivativeStep!3979 r!12727 (head!10733 (_1!34812 lt!2071024))) (tail!9866 (_1!34812 lt!2071024))))))

(declare-fun b!5005024 () Bool)

(declare-fun res!2135530 () Bool)

(assert (=> b!5005024 (=> res!2135530 e!3127545)))

(assert (=> b!5005024 (= res!2135530 e!3127546)))

(declare-fun res!2135533 () Bool)

(assert (=> b!5005024 (=> (not res!2135533) (not e!3127546))))

(assert (=> b!5005024 (= res!2135533 lt!2071405)))

(declare-fun b!5005025 () Bool)

(assert (=> b!5005025 (= e!3127547 (not lt!2071405))))

(declare-fun b!5005026 () Bool)

(assert (=> b!5005026 (= e!3127545 e!3127549)))

(declare-fun res!2135531 () Bool)

(assert (=> b!5005026 (=> (not res!2135531) (not e!3127549))))

(assert (=> b!5005026 (= res!2135531 (not lt!2071405))))

(declare-fun b!5005027 () Bool)

(assert (=> b!5005027 (= e!3127548 (not (= (head!10733 (_1!34812 lt!2071024)) (c!854186 r!12727))))))

(declare-fun b!5005028 () Bool)

(assert (=> b!5005028 (= e!3127544 (nullable!4689 r!12727))))

(declare-fun b!5005029 () Bool)

(declare-fun res!2135532 () Bool)

(assert (=> b!5005029 (=> res!2135532 e!3127548)))

(assert (=> b!5005029 (= res!2135532 (not (isEmpty!31333 (tail!9866 (_1!34812 lt!2071024)))))))

(assert (= (and d!1610814 c!854365) b!5005028))

(assert (= (and d!1610814 (not c!854365)) b!5005023))

(assert (= (and d!1610814 c!854366) b!5005020))

(assert (= (and d!1610814 (not c!854366)) b!5005017))

(assert (= (and b!5005017 c!854367) b!5005025))

(assert (= (and b!5005017 (not c!854367)) b!5005022))

(assert (= (and b!5005022 (not res!2135527)) b!5005024))

(assert (= (and b!5005024 res!2135533) b!5005019))

(assert (= (and b!5005019 res!2135528) b!5005021))

(assert (= (and b!5005021 res!2135534) b!5005018))

(assert (= (and b!5005024 (not res!2135530)) b!5005026))

(assert (= (and b!5005026 res!2135531) b!5005016))

(assert (= (and b!5005016 (not res!2135529)) b!5005029))

(assert (= (and b!5005029 (not res!2135532)) b!5005027))

(assert (= (or b!5005020 b!5005016 b!5005019) bm!349380))

(declare-fun m!6039098 () Bool)

(assert (=> b!5005029 m!6039098))

(assert (=> b!5005029 m!6039098))

(declare-fun m!6039100 () Bool)

(assert (=> b!5005029 m!6039100))

(declare-fun m!6039102 () Bool)

(assert (=> b!5005018 m!6039102))

(assert (=> b!5005027 m!6039102))

(assert (=> b!5005023 m!6039102))

(assert (=> b!5005023 m!6039102))

(declare-fun m!6039104 () Bool)

(assert (=> b!5005023 m!6039104))

(assert (=> b!5005023 m!6039098))

(assert (=> b!5005023 m!6039104))

(assert (=> b!5005023 m!6039098))

(declare-fun m!6039106 () Bool)

(assert (=> b!5005023 m!6039106))

(assert (=> bm!349380 m!6038322))

(assert (=> b!5005028 m!6039004))

(assert (=> b!5005021 m!6039098))

(assert (=> b!5005021 m!6039098))

(assert (=> b!5005021 m!6039100))

(assert (=> d!1610814 m!6038322))

(assert (=> d!1610814 m!6038386))

(assert (=> b!5004388 d!1610814))

(declare-fun d!1610816 () Bool)

(declare-fun c!854368 () Bool)

(assert (=> d!1610816 (= c!854368 ((_ is Node!15314) (c!854185 input!5597)))))

(declare-fun e!3127550 () Bool)

(assert (=> d!1610816 (= (inv!76029 (c!854185 input!5597)) e!3127550)))

(declare-fun b!5005030 () Bool)

(assert (=> b!5005030 (= e!3127550 (inv!76034 (c!854185 input!5597)))))

(declare-fun b!5005031 () Bool)

(declare-fun e!3127551 () Bool)

(assert (=> b!5005031 (= e!3127550 e!3127551)))

(declare-fun res!2135535 () Bool)

(assert (=> b!5005031 (= res!2135535 (not ((_ is Leaf!25420) (c!854185 input!5597))))))

(assert (=> b!5005031 (=> res!2135535 e!3127551)))

(declare-fun b!5005032 () Bool)

(assert (=> b!5005032 (= e!3127551 (inv!76035 (c!854185 input!5597)))))

(assert (= (and d!1610816 c!854368) b!5005030))

(assert (= (and d!1610816 (not c!854368)) b!5005031))

(assert (= (and b!5005031 (not res!2135535)) b!5005032))

(declare-fun m!6039108 () Bool)

(assert (=> b!5005030 m!6039108))

(declare-fun m!6039110 () Bool)

(assert (=> b!5005032 m!6039110))

(assert (=> b!5004369 d!1610816))

(declare-fun b!5005033 () Bool)

(declare-fun e!3127558 () Bool)

(declare-fun e!3127557 () Bool)

(assert (=> b!5005033 (= e!3127558 e!3127557)))

(declare-fun res!2135538 () Bool)

(assert (=> b!5005033 (=> res!2135538 e!3127557)))

(declare-fun call!349386 () Bool)

(assert (=> b!5005033 (= res!2135538 call!349386)))

(declare-fun b!5005034 () Bool)

(declare-fun e!3127552 () Bool)

(declare-fun e!3127556 () Bool)

(assert (=> b!5005034 (= e!3127552 e!3127556)))

(declare-fun c!854371 () Bool)

(assert (=> b!5005034 (= c!854371 ((_ is EmptyLang!13795) r!12727))))

(declare-fun b!5005035 () Bool)

(declare-fun e!3127555 () Bool)

(assert (=> b!5005035 (= e!3127555 (= (head!10733 (_1!34812 lt!2071026)) (c!854186 r!12727)))))

(declare-fun b!5005036 () Bool)

(declare-fun res!2135537 () Bool)

(assert (=> b!5005036 (=> (not res!2135537) (not e!3127555))))

(assert (=> b!5005036 (= res!2135537 (not call!349386))))

(declare-fun d!1610818 () Bool)

(assert (=> d!1610818 e!3127552))

(declare-fun c!854370 () Bool)

(assert (=> d!1610818 (= c!854370 ((_ is EmptyExpr!13795) r!12727))))

(declare-fun lt!2071406 () Bool)

(declare-fun e!3127553 () Bool)

(assert (=> d!1610818 (= lt!2071406 e!3127553)))

(declare-fun c!854369 () Bool)

(assert (=> d!1610818 (= c!854369 (isEmpty!31333 (_1!34812 lt!2071026)))))

(assert (=> d!1610818 (validRegex!6092 r!12727)))

(assert (=> d!1610818 (= (matchR!6759 r!12727 (_1!34812 lt!2071026)) lt!2071406)))

(declare-fun b!5005037 () Bool)

(assert (=> b!5005037 (= e!3127552 (= lt!2071406 call!349386))))

(declare-fun bm!349381 () Bool)

(assert (=> bm!349381 (= call!349386 (isEmpty!31333 (_1!34812 lt!2071026)))))

(declare-fun b!5005038 () Bool)

(declare-fun res!2135543 () Bool)

(assert (=> b!5005038 (=> (not res!2135543) (not e!3127555))))

(assert (=> b!5005038 (= res!2135543 (isEmpty!31333 (tail!9866 (_1!34812 lt!2071026))))))

(declare-fun b!5005039 () Bool)

(declare-fun res!2135536 () Bool)

(declare-fun e!3127554 () Bool)

(assert (=> b!5005039 (=> res!2135536 e!3127554)))

(assert (=> b!5005039 (= res!2135536 (not ((_ is ElementMatch!13795) r!12727)))))

(assert (=> b!5005039 (= e!3127556 e!3127554)))

(declare-fun b!5005040 () Bool)

(assert (=> b!5005040 (= e!3127553 (matchR!6759 (derivativeStep!3979 r!12727 (head!10733 (_1!34812 lt!2071026))) (tail!9866 (_1!34812 lt!2071026))))))

(declare-fun b!5005041 () Bool)

(declare-fun res!2135539 () Bool)

(assert (=> b!5005041 (=> res!2135539 e!3127554)))

(assert (=> b!5005041 (= res!2135539 e!3127555)))

(declare-fun res!2135542 () Bool)

(assert (=> b!5005041 (=> (not res!2135542) (not e!3127555))))

(assert (=> b!5005041 (= res!2135542 lt!2071406)))

(declare-fun b!5005042 () Bool)

(assert (=> b!5005042 (= e!3127556 (not lt!2071406))))

(declare-fun b!5005043 () Bool)

(assert (=> b!5005043 (= e!3127554 e!3127558)))

(declare-fun res!2135540 () Bool)

(assert (=> b!5005043 (=> (not res!2135540) (not e!3127558))))

(assert (=> b!5005043 (= res!2135540 (not lt!2071406))))

(declare-fun b!5005044 () Bool)

(assert (=> b!5005044 (= e!3127557 (not (= (head!10733 (_1!34812 lt!2071026)) (c!854186 r!12727))))))

(declare-fun b!5005045 () Bool)

(assert (=> b!5005045 (= e!3127553 (nullable!4689 r!12727))))

(declare-fun b!5005046 () Bool)

(declare-fun res!2135541 () Bool)

(assert (=> b!5005046 (=> res!2135541 e!3127557)))

(assert (=> b!5005046 (= res!2135541 (not (isEmpty!31333 (tail!9866 (_1!34812 lt!2071026)))))))

(assert (= (and d!1610818 c!854369) b!5005045))

(assert (= (and d!1610818 (not c!854369)) b!5005040))

(assert (= (and d!1610818 c!854370) b!5005037))

(assert (= (and d!1610818 (not c!854370)) b!5005034))

(assert (= (and b!5005034 c!854371) b!5005042))

(assert (= (and b!5005034 (not c!854371)) b!5005039))

(assert (= (and b!5005039 (not res!2135536)) b!5005041))

(assert (= (and b!5005041 res!2135542) b!5005036))

(assert (= (and b!5005036 res!2135537) b!5005038))

(assert (= (and b!5005038 res!2135543) b!5005035))

(assert (= (and b!5005041 (not res!2135539)) b!5005043))

(assert (= (and b!5005043 res!2135540) b!5005033))

(assert (= (and b!5005033 (not res!2135538)) b!5005046))

(assert (= (and b!5005046 (not res!2135541)) b!5005044))

(assert (= (or b!5005037 b!5005033 b!5005036) bm!349381))

(assert (=> b!5005046 m!6039042))

(assert (=> b!5005046 m!6039042))

(declare-fun m!6039112 () Bool)

(assert (=> b!5005046 m!6039112))

(assert (=> b!5005035 m!6039050))

(assert (=> b!5005044 m!6039050))

(assert (=> b!5005040 m!6039050))

(assert (=> b!5005040 m!6039050))

(declare-fun m!6039114 () Bool)

(assert (=> b!5005040 m!6039114))

(assert (=> b!5005040 m!6039042))

(assert (=> b!5005040 m!6039114))

(assert (=> b!5005040 m!6039042))

(declare-fun m!6039116 () Bool)

(assert (=> b!5005040 m!6039116))

(assert (=> bm!349381 m!6038344))

(assert (=> b!5005045 m!6039004))

(assert (=> b!5005038 m!6039042))

(assert (=> b!5005038 m!6039042))

(assert (=> b!5005038 m!6039112))

(assert (=> d!1610818 m!6038344))

(assert (=> d!1610818 m!6038386))

(assert (=> b!5004384 d!1610818))

(declare-fun d!1610820 () Bool)

(assert (=> d!1610820 (= lt!2071030 (_1!34812 lt!2071026))))

(declare-fun lt!2071409 () Unit!149035)

(declare-fun choose!37021 (List!57989 List!57989 List!57989) Unit!149035)

(assert (=> d!1610820 (= lt!2071409 (choose!37021 lt!2071030 (_1!34812 lt!2071026) lt!2071008))))

(assert (=> d!1610820 (isPrefix!5348 lt!2071030 lt!2071008)))

(assert (=> d!1610820 (= (lemmaIsPrefixSameLengthThenSameList!1275 lt!2071030 (_1!34812 lt!2071026) lt!2071008) lt!2071409)))

(declare-fun bs!1185949 () Bool)

(assert (= bs!1185949 d!1610820))

(declare-fun m!6039118 () Bool)

(assert (=> bs!1185949 m!6039118))

(declare-fun m!6039120 () Bool)

(assert (=> bs!1185949 m!6039120))

(assert (=> b!5004376 d!1610820))

(declare-fun b!5005047 () Bool)

(declare-fun e!3127561 () Bool)

(declare-fun e!3127560 () Bool)

(assert (=> b!5005047 (= e!3127561 e!3127560)))

(declare-fun res!2135545 () Bool)

(assert (=> b!5005047 (=> (not res!2135545) (not e!3127560))))

(assert (=> b!5005047 (= res!2135545 (not ((_ is Nil!57865) lt!2071008)))))

(declare-fun b!5005049 () Bool)

(assert (=> b!5005049 (= e!3127560 (isPrefix!5348 (tail!9866 lt!2071010) (tail!9866 lt!2071008)))))

(declare-fun b!5005050 () Bool)

(declare-fun e!3127559 () Bool)

(assert (=> b!5005050 (= e!3127559 (>= (size!38465 lt!2071008) (size!38465 lt!2071010)))))

(declare-fun b!5005048 () Bool)

(declare-fun res!2135547 () Bool)

(assert (=> b!5005048 (=> (not res!2135547) (not e!3127560))))

(assert (=> b!5005048 (= res!2135547 (= (head!10733 lt!2071010) (head!10733 lt!2071008)))))

(declare-fun d!1610822 () Bool)

(assert (=> d!1610822 e!3127559))

(declare-fun res!2135546 () Bool)

(assert (=> d!1610822 (=> res!2135546 e!3127559)))

(declare-fun lt!2071410 () Bool)

(assert (=> d!1610822 (= res!2135546 (not lt!2071410))))

(assert (=> d!1610822 (= lt!2071410 e!3127561)))

(declare-fun res!2135544 () Bool)

(assert (=> d!1610822 (=> res!2135544 e!3127561)))

(assert (=> d!1610822 (= res!2135544 ((_ is Nil!57865) lt!2071010))))

(assert (=> d!1610822 (= (isPrefix!5348 lt!2071010 lt!2071008) lt!2071410)))

(assert (= (and d!1610822 (not res!2135544)) b!5005047))

(assert (= (and b!5005047 res!2135545) b!5005048))

(assert (= (and b!5005048 res!2135547) b!5005049))

(assert (= (and d!1610822 (not res!2135546)) b!5005050))

(declare-fun m!6039122 () Bool)

(assert (=> b!5005049 m!6039122))

(assert (=> b!5005049 m!6039012))

(assert (=> b!5005049 m!6039122))

(assert (=> b!5005049 m!6039012))

(declare-fun m!6039124 () Bool)

(assert (=> b!5005049 m!6039124))

(assert (=> b!5005050 m!6038310))

(declare-fun m!6039126 () Bool)

(assert (=> b!5005050 m!6039126))

(declare-fun m!6039128 () Bool)

(assert (=> b!5005048 m!6039128))

(assert (=> b!5005048 m!6038988))

(assert (=> b!5004376 d!1610822))

(declare-fun b!5005051 () Bool)

(declare-fun e!3127564 () List!57989)

(assert (=> b!5005051 (= e!3127564 (Cons!57865 (h!64313 lt!2071008) (take!654 (t!370335 lt!2071008) (- lt!2071005 1))))))

(declare-fun b!5005052 () Bool)

(declare-fun e!3127563 () Bool)

(declare-fun lt!2071411 () List!57989)

(declare-fun e!3127565 () Int)

(assert (=> b!5005052 (= e!3127563 (= (size!38465 lt!2071411) e!3127565))))

(declare-fun c!854372 () Bool)

(assert (=> b!5005052 (= c!854372 (<= lt!2071005 0))))

(declare-fun b!5005053 () Bool)

(assert (=> b!5005053 (= e!3127564 Nil!57865)))

(declare-fun b!5005054 () Bool)

(declare-fun e!3127562 () Int)

(assert (=> b!5005054 (= e!3127565 e!3127562)))

(declare-fun c!854373 () Bool)

(assert (=> b!5005054 (= c!854373 (>= lt!2071005 (size!38465 lt!2071008)))))

(declare-fun d!1610824 () Bool)

(assert (=> d!1610824 e!3127563))

(declare-fun res!2135548 () Bool)

(assert (=> d!1610824 (=> (not res!2135548) (not e!3127563))))

(assert (=> d!1610824 (= res!2135548 (= ((_ map implies) (content!10251 lt!2071411) (content!10251 lt!2071008)) ((as const (InoxSet C!27840)) true)))))

(assert (=> d!1610824 (= lt!2071411 e!3127564)))

(declare-fun c!854374 () Bool)

(assert (=> d!1610824 (= c!854374 (or ((_ is Nil!57865) lt!2071008) (<= lt!2071005 0)))))

(assert (=> d!1610824 (= (take!654 lt!2071008 lt!2071005) lt!2071411)))

(declare-fun b!5005055 () Bool)

(assert (=> b!5005055 (= e!3127562 lt!2071005)))

(declare-fun b!5005056 () Bool)

(assert (=> b!5005056 (= e!3127562 (size!38465 lt!2071008))))

(declare-fun b!5005057 () Bool)

(assert (=> b!5005057 (= e!3127565 0)))

(assert (= (and d!1610824 c!854374) b!5005053))

(assert (= (and d!1610824 (not c!854374)) b!5005051))

(assert (= (and d!1610824 res!2135548) b!5005052))

(assert (= (and b!5005052 c!854372) b!5005057))

(assert (= (and b!5005052 (not c!854372)) b!5005054))

(assert (= (and b!5005054 c!854373) b!5005056))

(assert (= (and b!5005054 (not c!854373)) b!5005055))

(declare-fun m!6039130 () Bool)

(assert (=> b!5005052 m!6039130))

(assert (=> b!5005054 m!6038310))

(declare-fun m!6039132 () Bool)

(assert (=> b!5005051 m!6039132))

(assert (=> b!5005056 m!6038310))

(declare-fun m!6039134 () Bool)

(assert (=> d!1610824 m!6039134))

(declare-fun m!6039136 () Bool)

(assert (=> d!1610824 m!6039136))

(assert (=> b!5004376 d!1610824))

(declare-fun d!1610826 () Bool)

(assert (=> d!1610826 (isPrefix!5348 (take!654 lt!2071008 lt!2071005) lt!2071008)))

(declare-fun lt!2071412 () Unit!149035)

(assert (=> d!1610826 (= lt!2071412 (choose!37015 lt!2071008 lt!2071005))))

(assert (=> d!1610826 (>= lt!2071005 0)))

(assert (=> d!1610826 (= (lemmaTakeIsPrefix!148 lt!2071008 lt!2071005) lt!2071412)))

(declare-fun bs!1185950 () Bool)

(assert (= bs!1185950 d!1610826))

(assert (=> bs!1185950 m!6038382))

(assert (=> bs!1185950 m!6038382))

(declare-fun m!6039138 () Bool)

(assert (=> bs!1185950 m!6039138))

(declare-fun m!6039140 () Bool)

(assert (=> bs!1185950 m!6039140))

(assert (=> b!5004376 d!1610826))

(declare-fun b!5005076 () Bool)

(declare-fun e!3127581 () Bool)

(declare-fun e!3127583 () Bool)

(assert (=> b!5005076 (= e!3127581 e!3127583)))

(declare-fun res!2135561 () Bool)

(assert (=> b!5005076 (= res!2135561 (not (nullable!4689 (reg!14124 r!12727))))))

(assert (=> b!5005076 (=> (not res!2135561) (not e!3127583))))

(declare-fun b!5005077 () Bool)

(declare-fun e!3127584 () Bool)

(assert (=> b!5005077 (= e!3127581 e!3127584)))

(declare-fun c!854379 () Bool)

(assert (=> b!5005077 (= c!854379 ((_ is Union!13795) r!12727))))

(declare-fun call!349393 () Bool)

(declare-fun c!854380 () Bool)

(declare-fun bm!349388 () Bool)

(assert (=> bm!349388 (= call!349393 (validRegex!6092 (ite c!854380 (reg!14124 r!12727) (ite c!854379 (regTwo!28103 r!12727) (regOne!28102 r!12727)))))))

(declare-fun b!5005078 () Bool)

(declare-fun res!2135560 () Bool)

(declare-fun e!3127580 () Bool)

(assert (=> b!5005078 (=> (not res!2135560) (not e!3127580))))

(declare-fun call!349395 () Bool)

(assert (=> b!5005078 (= res!2135560 call!349395)))

(assert (=> b!5005078 (= e!3127584 e!3127580)))

(declare-fun b!5005079 () Bool)

(declare-fun res!2135562 () Bool)

(declare-fun e!3127586 () Bool)

(assert (=> b!5005079 (=> res!2135562 e!3127586)))

(assert (=> b!5005079 (= res!2135562 (not ((_ is Concat!22588) r!12727)))))

(assert (=> b!5005079 (= e!3127584 e!3127586)))

(declare-fun b!5005080 () Bool)

(declare-fun call!349394 () Bool)

(assert (=> b!5005080 (= e!3127580 call!349394)))

(declare-fun b!5005081 () Bool)

(declare-fun e!3127585 () Bool)

(assert (=> b!5005081 (= e!3127586 e!3127585)))

(declare-fun res!2135563 () Bool)

(assert (=> b!5005081 (=> (not res!2135563) (not e!3127585))))

(assert (=> b!5005081 (= res!2135563 call!349394)))

(declare-fun b!5005082 () Bool)

(assert (=> b!5005082 (= e!3127583 call!349393)))

(declare-fun b!5005083 () Bool)

(declare-fun e!3127582 () Bool)

(assert (=> b!5005083 (= e!3127582 e!3127581)))

(assert (=> b!5005083 (= c!854380 ((_ is Star!13795) r!12727))))

(declare-fun d!1610828 () Bool)

(declare-fun res!2135559 () Bool)

(assert (=> d!1610828 (=> res!2135559 e!3127582)))

(assert (=> d!1610828 (= res!2135559 ((_ is ElementMatch!13795) r!12727))))

(assert (=> d!1610828 (= (validRegex!6092 r!12727) e!3127582)))

(declare-fun b!5005084 () Bool)

(assert (=> b!5005084 (= e!3127585 call!349395)))

(declare-fun bm!349389 () Bool)

(assert (=> bm!349389 (= call!349395 (validRegex!6092 (ite c!854379 (regOne!28103 r!12727) (regTwo!28102 r!12727))))))

(declare-fun bm!349390 () Bool)

(assert (=> bm!349390 (= call!349394 call!349393)))

(assert (= (and d!1610828 (not res!2135559)) b!5005083))

(assert (= (and b!5005083 c!854380) b!5005076))

(assert (= (and b!5005083 (not c!854380)) b!5005077))

(assert (= (and b!5005076 res!2135561) b!5005082))

(assert (= (and b!5005077 c!854379) b!5005078))

(assert (= (and b!5005077 (not c!854379)) b!5005079))

(assert (= (and b!5005078 res!2135560) b!5005080))

(assert (= (and b!5005079 (not res!2135562)) b!5005081))

(assert (= (and b!5005081 res!2135563) b!5005084))

(assert (= (or b!5005080 b!5005081) bm!349390))

(assert (= (or b!5005078 b!5005084) bm!349389))

(assert (= (or b!5005082 bm!349390) bm!349388))

(declare-fun m!6039142 () Bool)

(assert (=> b!5005076 m!6039142))

(declare-fun m!6039144 () Bool)

(assert (=> bm!349388 m!6039144))

(declare-fun m!6039146 () Bool)

(assert (=> bm!349389 m!6039146))

(assert (=> start!528890 d!1610828))

(declare-fun d!1610830 () Bool)

(declare-fun isBalanced!4272 (Conc!15314) Bool)

(assert (=> d!1610830 (= (inv!76030 input!5597) (isBalanced!4272 (c!854185 input!5597)))))

(declare-fun bs!1185951 () Bool)

(assert (= bs!1185951 d!1610830))

(declare-fun m!6039148 () Bool)

(assert (=> bs!1185951 m!6039148))

(assert (=> start!528890 d!1610830))

(declare-fun d!1610832 () Bool)

(assert (=> d!1610832 (= (inv!76030 totalInput!1012) (isBalanced!4272 (c!854185 totalInput!1012)))))

(declare-fun bs!1185952 () Bool)

(assert (= bs!1185952 d!1610832))

(declare-fun m!6039150 () Bool)

(assert (=> bs!1185952 m!6039150))

(assert (=> start!528890 d!1610832))

(declare-fun b!5005093 () Bool)

(declare-fun e!3127591 () Bool)

(declare-fun tp!1403563 () Bool)

(declare-fun tp!1403564 () Bool)

(assert (=> b!5005093 (= e!3127591 (and (inv!76029 (left!42305 (c!854185 totalInput!1012))) tp!1403564 (inv!76029 (right!42635 (c!854185 totalInput!1012))) tp!1403563))))

(declare-fun b!5005095 () Bool)

(declare-fun e!3127592 () Bool)

(declare-fun tp!1403562 () Bool)

(assert (=> b!5005095 (= e!3127592 tp!1403562)))

(declare-fun b!5005094 () Bool)

(declare-fun inv!76036 (IArray!30689) Bool)

(assert (=> b!5005094 (= e!3127591 (and (inv!76036 (xs!18640 (c!854185 totalInput!1012))) e!3127592))))

(assert (=> b!5004373 (= tp!1403495 (and (inv!76029 (c!854185 totalInput!1012)) e!3127591))))

(assert (= (and b!5004373 ((_ is Node!15314) (c!854185 totalInput!1012))) b!5005093))

(assert (= b!5005094 b!5005095))

(assert (= (and b!5004373 ((_ is Leaf!25420) (c!854185 totalInput!1012))) b!5005094))

(declare-fun m!6039152 () Bool)

(assert (=> b!5005093 m!6039152))

(declare-fun m!6039154 () Bool)

(assert (=> b!5005093 m!6039154))

(declare-fun m!6039156 () Bool)

(assert (=> b!5005094 m!6039156))

(assert (=> b!5004373 m!6038342))

(declare-fun e!3127593 () Bool)

(declare-fun b!5005096 () Bool)

(declare-fun tp!1403567 () Bool)

(declare-fun tp!1403566 () Bool)

(assert (=> b!5005096 (= e!3127593 (and (inv!76029 (left!42305 (c!854185 input!5597))) tp!1403567 (inv!76029 (right!42635 (c!854185 input!5597))) tp!1403566))))

(declare-fun b!5005098 () Bool)

(declare-fun e!3127594 () Bool)

(declare-fun tp!1403565 () Bool)

(assert (=> b!5005098 (= e!3127594 tp!1403565)))

(declare-fun b!5005097 () Bool)

(assert (=> b!5005097 (= e!3127593 (and (inv!76036 (xs!18640 (c!854185 input!5597))) e!3127594))))

(assert (=> b!5004369 (= tp!1403494 (and (inv!76029 (c!854185 input!5597)) e!3127593))))

(assert (= (and b!5004369 ((_ is Node!15314) (c!854185 input!5597))) b!5005096))

(assert (= b!5005097 b!5005098))

(assert (= (and b!5004369 ((_ is Leaf!25420) (c!854185 input!5597))) b!5005097))

(declare-fun m!6039158 () Bool)

(assert (=> b!5005096 m!6039158))

(declare-fun m!6039160 () Bool)

(assert (=> b!5005096 m!6039160))

(declare-fun m!6039162 () Bool)

(assert (=> b!5005097 m!6039162))

(assert (=> b!5004369 m!6038346))

(declare-fun b!5005110 () Bool)

(declare-fun e!3127597 () Bool)

(declare-fun tp!1403578 () Bool)

(declare-fun tp!1403579 () Bool)

(assert (=> b!5005110 (= e!3127597 (and tp!1403578 tp!1403579))))

(declare-fun b!5005111 () Bool)

(declare-fun tp!1403581 () Bool)

(assert (=> b!5005111 (= e!3127597 tp!1403581)))

(declare-fun b!5005112 () Bool)

(declare-fun tp!1403580 () Bool)

(declare-fun tp!1403582 () Bool)

(assert (=> b!5005112 (= e!3127597 (and tp!1403580 tp!1403582))))

(assert (=> b!5004383 (= tp!1403488 e!3127597)))

(declare-fun b!5005109 () Bool)

(assert (=> b!5005109 (= e!3127597 tp_is_empty!36587)))

(assert (= (and b!5004383 ((_ is ElementMatch!13795) (reg!14124 r!12727))) b!5005109))

(assert (= (and b!5004383 ((_ is Concat!22588) (reg!14124 r!12727))) b!5005110))

(assert (= (and b!5004383 ((_ is Star!13795) (reg!14124 r!12727))) b!5005111))

(assert (= (and b!5004383 ((_ is Union!13795) (reg!14124 r!12727))) b!5005112))

(declare-fun condSetEmpty!28418 () Bool)

(assert (=> setNonEmpty!28412 (= condSetEmpty!28418 (= setRest!28412 ((as const (Array Context!6440 Bool)) false)))))

(declare-fun setRes!28418 () Bool)

(assert (=> setNonEmpty!28412 (= tp!1403489 setRes!28418)))

(declare-fun setIsEmpty!28418 () Bool)

(assert (=> setIsEmpty!28418 setRes!28418))

(declare-fun e!3127600 () Bool)

(declare-fun setNonEmpty!28418 () Bool)

(declare-fun setElem!28418 () Context!6440)

(declare-fun tp!1403587 () Bool)

(assert (=> setNonEmpty!28418 (= setRes!28418 (and tp!1403587 (inv!76031 setElem!28418) e!3127600))))

(declare-fun setRest!28418 () (InoxSet Context!6440))

(assert (=> setNonEmpty!28418 (= setRest!28412 ((_ map or) (store ((as const (Array Context!6440 Bool)) false) setElem!28418 true) setRest!28418))))

(declare-fun b!5005117 () Bool)

(declare-fun tp!1403588 () Bool)

(assert (=> b!5005117 (= e!3127600 tp!1403588)))

(assert (= (and setNonEmpty!28412 condSetEmpty!28418) setIsEmpty!28418))

(assert (= (and setNonEmpty!28412 (not condSetEmpty!28418)) setNonEmpty!28418))

(assert (= setNonEmpty!28418 b!5005117))

(declare-fun m!6039164 () Bool)

(assert (=> setNonEmpty!28418 m!6039164))

(declare-fun b!5005119 () Bool)

(declare-fun e!3127601 () Bool)

(declare-fun tp!1403589 () Bool)

(declare-fun tp!1403590 () Bool)

(assert (=> b!5005119 (= e!3127601 (and tp!1403589 tp!1403590))))

(declare-fun b!5005120 () Bool)

(declare-fun tp!1403592 () Bool)

(assert (=> b!5005120 (= e!3127601 tp!1403592)))

(declare-fun b!5005121 () Bool)

(declare-fun tp!1403591 () Bool)

(declare-fun tp!1403593 () Bool)

(assert (=> b!5005121 (= e!3127601 (and tp!1403591 tp!1403593))))

(assert (=> b!5004375 (= tp!1403492 e!3127601)))

(declare-fun b!5005118 () Bool)

(assert (=> b!5005118 (= e!3127601 tp_is_empty!36587)))

(assert (= (and b!5004375 ((_ is ElementMatch!13795) (regOne!28102 r!12727))) b!5005118))

(assert (= (and b!5004375 ((_ is Concat!22588) (regOne!28102 r!12727))) b!5005119))

(assert (= (and b!5004375 ((_ is Star!13795) (regOne!28102 r!12727))) b!5005120))

(assert (= (and b!5004375 ((_ is Union!13795) (regOne!28102 r!12727))) b!5005121))

(declare-fun b!5005123 () Bool)

(declare-fun e!3127602 () Bool)

(declare-fun tp!1403594 () Bool)

(declare-fun tp!1403595 () Bool)

(assert (=> b!5005123 (= e!3127602 (and tp!1403594 tp!1403595))))

(declare-fun b!5005124 () Bool)

(declare-fun tp!1403597 () Bool)

(assert (=> b!5005124 (= e!3127602 tp!1403597)))

(declare-fun b!5005125 () Bool)

(declare-fun tp!1403596 () Bool)

(declare-fun tp!1403598 () Bool)

(assert (=> b!5005125 (= e!3127602 (and tp!1403596 tp!1403598))))

(assert (=> b!5004375 (= tp!1403491 e!3127602)))

(declare-fun b!5005122 () Bool)

(assert (=> b!5005122 (= e!3127602 tp_is_empty!36587)))

(assert (= (and b!5004375 ((_ is ElementMatch!13795) (regTwo!28102 r!12727))) b!5005122))

(assert (= (and b!5004375 ((_ is Concat!22588) (regTwo!28102 r!12727))) b!5005123))

(assert (= (and b!5004375 ((_ is Star!13795) (regTwo!28102 r!12727))) b!5005124))

(assert (= (and b!5004375 ((_ is Union!13795) (regTwo!28102 r!12727))) b!5005125))

(declare-fun b!5005127 () Bool)

(declare-fun e!3127603 () Bool)

(declare-fun tp!1403599 () Bool)

(declare-fun tp!1403600 () Bool)

(assert (=> b!5005127 (= e!3127603 (and tp!1403599 tp!1403600))))

(declare-fun b!5005128 () Bool)

(declare-fun tp!1403602 () Bool)

(assert (=> b!5005128 (= e!3127603 tp!1403602)))

(declare-fun b!5005129 () Bool)

(declare-fun tp!1403601 () Bool)

(declare-fun tp!1403603 () Bool)

(assert (=> b!5005129 (= e!3127603 (and tp!1403601 tp!1403603))))

(assert (=> b!5004385 (= tp!1403493 e!3127603)))

(declare-fun b!5005126 () Bool)

(assert (=> b!5005126 (= e!3127603 tp_is_empty!36587)))

(assert (= (and b!5004385 ((_ is ElementMatch!13795) (regOne!28103 r!12727))) b!5005126))

(assert (= (and b!5004385 ((_ is Concat!22588) (regOne!28103 r!12727))) b!5005127))

(assert (= (and b!5004385 ((_ is Star!13795) (regOne!28103 r!12727))) b!5005128))

(assert (= (and b!5004385 ((_ is Union!13795) (regOne!28103 r!12727))) b!5005129))

(declare-fun b!5005131 () Bool)

(declare-fun e!3127604 () Bool)

(declare-fun tp!1403604 () Bool)

(declare-fun tp!1403605 () Bool)

(assert (=> b!5005131 (= e!3127604 (and tp!1403604 tp!1403605))))

(declare-fun b!5005132 () Bool)

(declare-fun tp!1403607 () Bool)

(assert (=> b!5005132 (= e!3127604 tp!1403607)))

(declare-fun b!5005133 () Bool)

(declare-fun tp!1403606 () Bool)

(declare-fun tp!1403608 () Bool)

(assert (=> b!5005133 (= e!3127604 (and tp!1403606 tp!1403608))))

(assert (=> b!5004385 (= tp!1403496 e!3127604)))

(declare-fun b!5005130 () Bool)

(assert (=> b!5005130 (= e!3127604 tp_is_empty!36587)))

(assert (= (and b!5004385 ((_ is ElementMatch!13795) (regTwo!28103 r!12727))) b!5005130))

(assert (= (and b!5004385 ((_ is Concat!22588) (regTwo!28103 r!12727))) b!5005131))

(assert (= (and b!5004385 ((_ is Star!13795) (regTwo!28103 r!12727))) b!5005132))

(assert (= (and b!5004385 ((_ is Union!13795) (regTwo!28103 r!12727))) b!5005133))

(declare-fun b!5005138 () Bool)

(declare-fun e!3127607 () Bool)

(declare-fun tp!1403613 () Bool)

(declare-fun tp!1403614 () Bool)

(assert (=> b!5005138 (= e!3127607 (and tp!1403613 tp!1403614))))

(assert (=> b!5004386 (= tp!1403490 e!3127607)))

(assert (= (and b!5004386 ((_ is Cons!57866) (exprs!3720 setElem!28412))) b!5005138))

(check-sat (not b!5004820) (not bm!349373) (not b!5004397) (not d!1610764) (not b!5005028) (not d!1610810) (not b!5005112) (not d!1610754) (not b!5005076) (not b!5004369) (not b!5004807) (not b!5004808) (not b!5005049) (not d!1610792) (not d!1610770) (not d!1610786) (not b!5005032) (not b!5004784) (not d!1610798) (not b!5005093) (not b!5004735) (not bm!349369) (not b!5004804) (not b!5004805) (not bm!349352) (not b!5004793) (not b!5004395) (not b!5005001) (not d!1610680) (not b!5004960) (not b!5005056) (not d!1610656) (not b!5004790) (not d!1610748) (not b!5004953) (not d!1610648) (not b!5005040) (not b!5004754) (not bm!349380) (not d!1610758) (not b!5004517) (not b!5005018) (not b!5005044) (not b!5004856) (not d!1610800) (not b!5004824) (not b!5004956) (not d!1610820) (not d!1610806) (not b!5005127) (not d!1610796) (not d!1610750) (not bm!349376) (not b!5004806) (not bm!349374) (not b!5005000) (not b!5005048) (not b!5004947) (not d!1610768) (not b!5004854) (not setNonEmpty!28418) (not d!1610830) (not bm!349388) (not d!1610814) (not b!5005030) (not d!1610654) (not b!5005052) (not b!5004994) (not b!5005008) (not b!5004959) (not b!5005131) (not bm!349381) tp_is_empty!36587 (not b!5004822) (not b!5005054) (not b!5005125) (not bm!349375) (not b!5005117) (not b!5005009) (not b!5005014) (not b!5004736) (not b!5004373) (not b!5005128) (not b!5005050) (not d!1610808) (not bm!349389) (not b!5004833) (not b!5004860) (not b!5004996) (not b!5005110) (not b!5004516) (not b!5005007) (not d!1610628) (not b!5005095) (not d!1610650) (not b!5005045) (not d!1610812) (not b!5005124) (not b!5005120) (not b!5005002) (not d!1610774) (not d!1610824) (not bm!349370) (not b!5005119) (not b!5005129) (not b!5005029) (not b!5004752) (not b!5004951) (not d!1610646) (not d!1610772) (not b!5005021) (not b!5004821) (not b!5004991) (not b!5004756) (not b!5004829) (not b!5005123) (not b!5005035) (not b!5004787) (not b!5005010) (not d!1610762) (not b!5005006) (not b!5004814) (not d!1610832) (not b!5005111) (not d!1610756) (not b!5004836) (not b!5005138) (not b!5004853) (not d!1610780) (not b!5005094) (not b!5005051) (not bm!349379) (not b!5005027) (not d!1610778) (not b!5005133) (not b!5005038) (not b!5005004) (not b!5005097) (not b!5004813) (not bm!349371) (not b!5005012) (not b!5005098) (not b!5004751) (not b!5004830) (not b!5004779) (not d!1610802) (not d!1610826) (not b!5005046) (not b!5004958) (not b!5005132) (not d!1610752) (not b!5004826) (not b!5005023) (not bm!349372) (not b!5004792) (not d!1610666) (not b!5005121) (not b!5005096) (not b!5004831) (not d!1610760) (not b!5005003) (not d!1610818))
(check-sat)
(get-model)

(declare-fun b!5005139 () Bool)

(declare-fun e!3127610 () Bool)

(declare-fun e!3127609 () Bool)

(assert (=> b!5005139 (= e!3127610 e!3127609)))

(declare-fun res!2135565 () Bool)

(assert (=> b!5005139 (=> (not res!2135565) (not e!3127609))))

(assert (=> b!5005139 (= res!2135565 (not ((_ is Nil!57865) (tail!9866 lt!2071013))))))

(declare-fun b!5005141 () Bool)

(assert (=> b!5005141 (= e!3127609 (isPrefix!5348 (tail!9866 (tail!9866 (_1!34812 lt!2071026))) (tail!9866 (tail!9866 lt!2071013))))))

(declare-fun b!5005142 () Bool)

(declare-fun e!3127608 () Bool)

(assert (=> b!5005142 (= e!3127608 (>= (size!38465 (tail!9866 lt!2071013)) (size!38465 (tail!9866 (_1!34812 lt!2071026)))))))

(declare-fun b!5005140 () Bool)

(declare-fun res!2135567 () Bool)

(assert (=> b!5005140 (=> (not res!2135567) (not e!3127609))))

(assert (=> b!5005140 (= res!2135567 (= (head!10733 (tail!9866 (_1!34812 lt!2071026))) (head!10733 (tail!9866 lt!2071013))))))

(declare-fun d!1610834 () Bool)

(assert (=> d!1610834 e!3127608))

(declare-fun res!2135566 () Bool)

(assert (=> d!1610834 (=> res!2135566 e!3127608)))

(declare-fun lt!2071413 () Bool)

(assert (=> d!1610834 (= res!2135566 (not lt!2071413))))

(assert (=> d!1610834 (= lt!2071413 e!3127610)))

(declare-fun res!2135564 () Bool)

(assert (=> d!1610834 (=> res!2135564 e!3127610)))

(assert (=> d!1610834 (= res!2135564 ((_ is Nil!57865) (tail!9866 (_1!34812 lt!2071026))))))

(assert (=> d!1610834 (= (isPrefix!5348 (tail!9866 (_1!34812 lt!2071026)) (tail!9866 lt!2071013)) lt!2071413)))

(assert (= (and d!1610834 (not res!2135564)) b!5005139))

(assert (= (and b!5005139 res!2135565) b!5005140))

(assert (= (and b!5005140 res!2135567) b!5005141))

(assert (= (and d!1610834 (not res!2135566)) b!5005142))

(assert (=> b!5005141 m!6039042))

(declare-fun m!6039166 () Bool)

(assert (=> b!5005141 m!6039166))

(assert (=> b!5005141 m!6039044))

(declare-fun m!6039168 () Bool)

(assert (=> b!5005141 m!6039168))

(assert (=> b!5005141 m!6039166))

(assert (=> b!5005141 m!6039168))

(declare-fun m!6039170 () Bool)

(assert (=> b!5005141 m!6039170))

(assert (=> b!5005142 m!6039044))

(declare-fun m!6039172 () Bool)

(assert (=> b!5005142 m!6039172))

(assert (=> b!5005142 m!6039042))

(declare-fun m!6039174 () Bool)

(assert (=> b!5005142 m!6039174))

(assert (=> b!5005140 m!6039042))

(declare-fun m!6039176 () Bool)

(assert (=> b!5005140 m!6039176))

(assert (=> b!5005140 m!6039044))

(declare-fun m!6039178 () Bool)

(assert (=> b!5005140 m!6039178))

(assert (=> b!5004959 d!1610834))

(declare-fun d!1610836 () Bool)

(assert (=> d!1610836 (= (tail!9866 (_1!34812 lt!2071026)) (t!370335 (_1!34812 lt!2071026)))))

(assert (=> b!5004959 d!1610836))

(declare-fun d!1610838 () Bool)

(assert (=> d!1610838 (= (tail!9866 lt!2071013) (t!370335 lt!2071013))))

(assert (=> b!5004959 d!1610838))

(declare-fun d!1610840 () Bool)

(declare-fun lt!2071414 () Int)

(assert (=> d!1610840 (>= lt!2071414 0)))

(declare-fun e!3127611 () Int)

(assert (=> d!1610840 (= lt!2071414 e!3127611)))

(declare-fun c!854381 () Bool)

(assert (=> d!1610840 (= c!854381 ((_ is Nil!57865) (list!18624 totalInput!1012)))))

(assert (=> d!1610840 (= (size!38465 (list!18624 totalInput!1012)) lt!2071414)))

(declare-fun b!5005143 () Bool)

(assert (=> b!5005143 (= e!3127611 0)))

(declare-fun b!5005144 () Bool)

(assert (=> b!5005144 (= e!3127611 (+ 1 (size!38465 (t!370335 (list!18624 totalInput!1012)))))))

(assert (= (and d!1610840 c!854381) b!5005143))

(assert (= (and d!1610840 (not c!854381)) b!5005144))

(declare-fun m!6039180 () Bool)

(assert (=> b!5005144 m!6039180))

(assert (=> d!1610654 d!1610840))

(assert (=> d!1610654 d!1610756))

(declare-fun d!1610842 () Bool)

(declare-fun lt!2071417 () Int)

(assert (=> d!1610842 (= lt!2071417 (size!38465 (list!18626 (c!854185 totalInput!1012))))))

(assert (=> d!1610842 (= lt!2071417 (ite ((_ is Empty!15314) (c!854185 totalInput!1012)) 0 (ite ((_ is Leaf!25420) (c!854185 totalInput!1012)) (csize!30859 (c!854185 totalInput!1012)) (csize!30858 (c!854185 totalInput!1012)))))))

(assert (=> d!1610842 (= (size!38467 (c!854185 totalInput!1012)) lt!2071417)))

(declare-fun bs!1185953 () Bool)

(assert (= bs!1185953 d!1610842))

(assert (=> bs!1185953 m!6038868))

(assert (=> bs!1185953 m!6038868))

(declare-fun m!6039182 () Bool)

(assert (=> bs!1185953 m!6039182))

(assert (=> d!1610654 d!1610842))

(declare-fun b!5005145 () Bool)

(declare-fun e!3127614 () List!57989)

(declare-fun e!3127616 () List!57989)

(assert (=> b!5005145 (= e!3127614 e!3127616)))

(declare-fun c!854385 () Bool)

(assert (=> b!5005145 (= c!854385 (<= lt!2071014 0))))

(declare-fun b!5005147 () Bool)

(declare-fun e!3127612 () Int)

(assert (=> b!5005147 (= e!3127612 0)))

(declare-fun b!5005148 () Bool)

(declare-fun e!3127615 () Bool)

(declare-fun lt!2071418 () List!57989)

(declare-fun e!3127613 () Int)

(assert (=> b!5005148 (= e!3127615 (= (size!38465 lt!2071418) e!3127613))))

(declare-fun c!854383 () Bool)

(assert (=> b!5005148 (= c!854383 (<= lt!2071014 0))))

(declare-fun b!5005149 () Bool)

(declare-fun call!349396 () Int)

(assert (=> b!5005149 (= e!3127613 call!349396)))

(declare-fun b!5005150 () Bool)

(assert (=> b!5005150 (= e!3127616 (list!18624 totalInput!1012))))

(declare-fun b!5005151 () Bool)

(assert (=> b!5005151 (= e!3127613 e!3127612)))

(declare-fun c!854384 () Bool)

(assert (=> b!5005151 (= c!854384 (>= lt!2071014 call!349396))))

(declare-fun b!5005152 () Bool)

(assert (=> b!5005152 (= e!3127614 Nil!57865)))

(declare-fun bm!349391 () Bool)

(assert (=> bm!349391 (= call!349396 (size!38465 (list!18624 totalInput!1012)))))

(declare-fun b!5005153 () Bool)

(assert (=> b!5005153 (= e!3127616 (drop!2458 (t!370335 (list!18624 totalInput!1012)) (- lt!2071014 1)))))

(declare-fun b!5005146 () Bool)

(assert (=> b!5005146 (= e!3127612 (- call!349396 lt!2071014))))

(declare-fun d!1610844 () Bool)

(assert (=> d!1610844 e!3127615))

(declare-fun res!2135568 () Bool)

(assert (=> d!1610844 (=> (not res!2135568) (not e!3127615))))

(assert (=> d!1610844 (= res!2135568 (= ((_ map implies) (content!10251 lt!2071418) (content!10251 (list!18624 totalInput!1012))) ((as const (InoxSet C!27840)) true)))))

(assert (=> d!1610844 (= lt!2071418 e!3127614)))

(declare-fun c!854382 () Bool)

(assert (=> d!1610844 (= c!854382 ((_ is Nil!57865) (list!18624 totalInput!1012)))))

(assert (=> d!1610844 (= (drop!2458 (list!18624 totalInput!1012) lt!2071014) lt!2071418)))

(assert (= (and d!1610844 c!854382) b!5005152))

(assert (= (and d!1610844 (not c!854382)) b!5005145))

(assert (= (and b!5005145 c!854385) b!5005150))

(assert (= (and b!5005145 (not c!854385)) b!5005153))

(assert (= (and d!1610844 res!2135568) b!5005148))

(assert (= (and b!5005148 c!854383) b!5005149))

(assert (= (and b!5005148 (not c!854383)) b!5005151))

(assert (= (and b!5005151 c!854384) b!5005147))

(assert (= (and b!5005151 (not c!854384)) b!5005146))

(assert (= (or b!5005149 b!5005151 b!5005146) bm!349391))

(declare-fun m!6039184 () Bool)

(assert (=> b!5005148 m!6039184))

(assert (=> bm!349391 m!6038374))

(assert (=> bm!349391 m!6038506))

(declare-fun m!6039186 () Bool)

(assert (=> b!5005153 m!6039186))

(declare-fun m!6039188 () Bool)

(assert (=> d!1610844 m!6039188))

(assert (=> d!1610844 m!6038374))

(declare-fun m!6039190 () Bool)

(assert (=> d!1610844 m!6039190))

(assert (=> b!5004814 d!1610844))

(assert (=> b!5004814 d!1610756))

(declare-fun b!5005154 () Bool)

(declare-fun e!3127619 () List!57989)

(assert (=> b!5005154 (= e!3127619 (Cons!57865 (h!64313 (drop!2458 (list!18624 totalInput!1012) lt!2071014)) (take!654 (t!370335 (drop!2458 (list!18624 totalInput!1012) lt!2071014)) (- (findLongestMatchInnerZipperFastV2!135 z!4183 lt!2071014 totalInput!1012 (size!38464 totalInput!1012)) 1))))))

(declare-fun b!5005155 () Bool)

(declare-fun e!3127618 () Bool)

(declare-fun lt!2071419 () List!57989)

(declare-fun e!3127620 () Int)

(assert (=> b!5005155 (= e!3127618 (= (size!38465 lt!2071419) e!3127620))))

(declare-fun c!854386 () Bool)

(assert (=> b!5005155 (= c!854386 (<= (findLongestMatchInnerZipperFastV2!135 z!4183 lt!2071014 totalInput!1012 (size!38464 totalInput!1012)) 0))))

(declare-fun b!5005156 () Bool)

(assert (=> b!5005156 (= e!3127619 Nil!57865)))

(declare-fun b!5005157 () Bool)

(declare-fun e!3127617 () Int)

(assert (=> b!5005157 (= e!3127620 e!3127617)))

(declare-fun c!854387 () Bool)

(assert (=> b!5005157 (= c!854387 (>= (findLongestMatchInnerZipperFastV2!135 z!4183 lt!2071014 totalInput!1012 (size!38464 totalInput!1012)) (size!38465 (drop!2458 (list!18624 totalInput!1012) lt!2071014))))))

(declare-fun d!1610846 () Bool)

(assert (=> d!1610846 e!3127618))

(declare-fun res!2135569 () Bool)

(assert (=> d!1610846 (=> (not res!2135569) (not e!3127618))))

(assert (=> d!1610846 (= res!2135569 (= ((_ map implies) (content!10251 lt!2071419) (content!10251 (drop!2458 (list!18624 totalInput!1012) lt!2071014))) ((as const (InoxSet C!27840)) true)))))

(assert (=> d!1610846 (= lt!2071419 e!3127619)))

(declare-fun c!854388 () Bool)

(assert (=> d!1610846 (= c!854388 (or ((_ is Nil!57865) (drop!2458 (list!18624 totalInput!1012) lt!2071014)) (<= (findLongestMatchInnerZipperFastV2!135 z!4183 lt!2071014 totalInput!1012 (size!38464 totalInput!1012)) 0)))))

(assert (=> d!1610846 (= (take!654 (drop!2458 (list!18624 totalInput!1012) lt!2071014) (findLongestMatchInnerZipperFastV2!135 z!4183 lt!2071014 totalInput!1012 (size!38464 totalInput!1012))) lt!2071419)))

(declare-fun b!5005158 () Bool)

(assert (=> b!5005158 (= e!3127617 (findLongestMatchInnerZipperFastV2!135 z!4183 lt!2071014 totalInput!1012 (size!38464 totalInput!1012)))))

(declare-fun b!5005159 () Bool)

(assert (=> b!5005159 (= e!3127617 (size!38465 (drop!2458 (list!18624 totalInput!1012) lt!2071014)))))

(declare-fun b!5005160 () Bool)

(assert (=> b!5005160 (= e!3127620 0)))

(assert (= (and d!1610846 c!854388) b!5005156))

(assert (= (and d!1610846 (not c!854388)) b!5005154))

(assert (= (and d!1610846 res!2135569) b!5005155))

(assert (= (and b!5005155 c!854386) b!5005160))

(assert (= (and b!5005155 (not c!854386)) b!5005157))

(assert (= (and b!5005157 c!854387) b!5005159))

(assert (= (and b!5005157 (not c!854387)) b!5005158))

(declare-fun m!6039192 () Bool)

(assert (=> b!5005155 m!6039192))

(assert (=> b!5005157 m!6038928))

(declare-fun m!6039194 () Bool)

(assert (=> b!5005157 m!6039194))

(declare-fun m!6039196 () Bool)

(assert (=> b!5005154 m!6039196))

(assert (=> b!5005159 m!6038928))

(assert (=> b!5005159 m!6039194))

(declare-fun m!6039198 () Bool)

(assert (=> d!1610846 m!6039198))

(assert (=> d!1610846 m!6038928))

(declare-fun m!6039200 () Bool)

(assert (=> d!1610846 m!6039200))

(assert (=> b!5004814 d!1610846))

(declare-fun d!1610848 () Bool)

(declare-fun lt!2071421 () Int)

(assert (=> d!1610848 (and (>= lt!2071421 0) (<= lt!2071421 (- (size!38464 totalInput!1012) lt!2071014)))))

(declare-fun e!3127625 () Int)

(assert (=> d!1610848 (= lt!2071421 e!3127625)))

(declare-fun c!854389 () Bool)

(declare-fun e!3127624 () Bool)

(assert (=> d!1610848 (= c!854389 e!3127624)))

(declare-fun res!2135570 () Bool)

(assert (=> d!1610848 (=> res!2135570 e!3127624)))

(assert (=> d!1610848 (= res!2135570 (= lt!2071014 (size!38464 totalInput!1012)))))

(declare-fun e!3127622 () Bool)

(assert (=> d!1610848 e!3127622))

(declare-fun res!2135571 () Bool)

(assert (=> d!1610848 (=> (not res!2135571) (not e!3127622))))

(assert (=> d!1610848 (= res!2135571 (>= lt!2071014 0))))

(assert (=> d!1610848 (= (findLongestMatchInnerZipperFastV2!135 z!4183 lt!2071014 totalInput!1012 (size!38464 totalInput!1012)) lt!2071421)))

(declare-fun b!5005161 () Bool)

(assert (=> b!5005161 (= e!3127624 (lostCauseZipper!829 z!4183))))

(declare-fun b!5005162 () Bool)

(assert (=> b!5005162 (= e!3127622 (<= lt!2071014 (size!38464 totalInput!1012)))))

(declare-fun b!5005163 () Bool)

(declare-fun e!3127623 () Int)

(assert (=> b!5005163 (= e!3127623 0)))

(declare-fun b!5005164 () Bool)

(declare-fun c!854390 () Bool)

(declare-fun lt!2071422 () (InoxSet Context!6440))

(assert (=> b!5005164 (= c!854390 (nullableZipper!884 lt!2071422))))

(declare-fun e!3127621 () Int)

(assert (=> b!5005164 (= e!3127621 e!3127623)))

(declare-fun b!5005165 () Bool)

(declare-fun lt!2071420 () Int)

(assert (=> b!5005165 (= e!3127621 (+ 1 lt!2071420))))

(declare-fun b!5005166 () Bool)

(assert (=> b!5005166 (= e!3127625 0)))

(declare-fun b!5005167 () Bool)

(assert (=> b!5005167 (= e!3127623 1)))

(declare-fun b!5005168 () Bool)

(assert (=> b!5005168 (= e!3127625 e!3127621)))

(assert (=> b!5005168 (= lt!2071422 (derivationStepZipper!633 z!4183 (apply!13989 totalInput!1012 lt!2071014)))))

(assert (=> b!5005168 (= lt!2071420 (findLongestMatchInnerZipperFastV2!135 lt!2071422 (+ lt!2071014 1) totalInput!1012 (size!38464 totalInput!1012)))))

(declare-fun c!854391 () Bool)

(assert (=> b!5005168 (= c!854391 (> lt!2071420 0))))

(assert (= (and d!1610848 res!2135571) b!5005162))

(assert (= (and d!1610848 (not res!2135570)) b!5005161))

(assert (= (and d!1610848 c!854389) b!5005166))

(assert (= (and d!1610848 (not c!854389)) b!5005168))

(assert (= (and b!5005168 c!854391) b!5005165))

(assert (= (and b!5005168 (not c!854391)) b!5005164))

(assert (= (and b!5005164 c!854390) b!5005167))

(assert (= (and b!5005164 (not c!854390)) b!5005163))

(assert (=> b!5005161 m!6038962))

(assert (=> b!5005162 m!6038404))

(declare-fun m!6039202 () Bool)

(assert (=> b!5005164 m!6039202))

(assert (=> b!5005168 m!6038966))

(assert (=> b!5005168 m!6038966))

(assert (=> b!5005168 m!6038968))

(assert (=> b!5005168 m!6038404))

(declare-fun m!6039204 () Bool)

(assert (=> b!5005168 m!6039204))

(assert (=> b!5004814 d!1610848))

(declare-fun d!1610850 () Bool)

(declare-fun c!854392 () Bool)

(assert (=> d!1610850 (= c!854392 (isEmpty!31333 (take!654 (drop!2458 (list!18624 totalInput!1012) lt!2071014) (findLongestMatchInnerZipperFastV2!135 z!4183 lt!2071014 totalInput!1012 (size!38464 totalInput!1012)))))))

(declare-fun e!3127626 () Bool)

(assert (=> d!1610850 (= (matchZipper!563 z!4183 (take!654 (drop!2458 (list!18624 totalInput!1012) lt!2071014) (findLongestMatchInnerZipperFastV2!135 z!4183 lt!2071014 totalInput!1012 (size!38464 totalInput!1012)))) e!3127626)))

(declare-fun b!5005169 () Bool)

(assert (=> b!5005169 (= e!3127626 (nullableZipper!884 z!4183))))

(declare-fun b!5005170 () Bool)

(assert (=> b!5005170 (= e!3127626 (matchZipper!563 (derivationStepZipper!633 z!4183 (head!10733 (take!654 (drop!2458 (list!18624 totalInput!1012) lt!2071014) (findLongestMatchInnerZipperFastV2!135 z!4183 lt!2071014 totalInput!1012 (size!38464 totalInput!1012))))) (tail!9866 (take!654 (drop!2458 (list!18624 totalInput!1012) lt!2071014) (findLongestMatchInnerZipperFastV2!135 z!4183 lt!2071014 totalInput!1012 (size!38464 totalInput!1012))))))))

(assert (= (and d!1610850 c!854392) b!5005169))

(assert (= (and d!1610850 (not c!854392)) b!5005170))

(assert (=> d!1610850 m!6038924))

(declare-fun m!6039206 () Bool)

(assert (=> d!1610850 m!6039206))

(assert (=> b!5005169 m!6038836))

(assert (=> b!5005170 m!6038924))

(declare-fun m!6039208 () Bool)

(assert (=> b!5005170 m!6039208))

(assert (=> b!5005170 m!6039208))

(declare-fun m!6039210 () Bool)

(assert (=> b!5005170 m!6039210))

(assert (=> b!5005170 m!6038924))

(declare-fun m!6039212 () Bool)

(assert (=> b!5005170 m!6039212))

(assert (=> b!5005170 m!6039210))

(assert (=> b!5005170 m!6039212))

(declare-fun m!6039214 () Bool)

(assert (=> b!5005170 m!6039214))

(assert (=> b!5004814 d!1610850))

(assert (=> b!5004814 d!1610654))

(assert (=> d!1610818 d!1610624))

(assert (=> d!1610818 d!1610828))

(declare-fun b!5005171 () Bool)

(declare-fun e!3127629 () List!57989)

(declare-fun e!3127631 () List!57989)

(assert (=> b!5005171 (= e!3127629 e!3127631)))

(declare-fun c!854396 () Bool)

(assert (=> b!5005171 (= c!854396 (<= (- (size!38465 lt!2071019) (size!38465 lt!2071008)) 0))))

(declare-fun b!5005173 () Bool)

(declare-fun e!3127627 () Int)

(assert (=> b!5005173 (= e!3127627 0)))

(declare-fun b!5005174 () Bool)

(declare-fun e!3127630 () Bool)

(declare-fun lt!2071423 () List!57989)

(declare-fun e!3127628 () Int)

(assert (=> b!5005174 (= e!3127630 (= (size!38465 lt!2071423) e!3127628))))

(declare-fun c!854394 () Bool)

(assert (=> b!5005174 (= c!854394 (<= (- (size!38465 lt!2071019) (size!38465 lt!2071008)) 0))))

(declare-fun b!5005175 () Bool)

(declare-fun call!349397 () Int)

(assert (=> b!5005175 (= e!3127628 call!349397)))

(declare-fun b!5005176 () Bool)

(assert (=> b!5005176 (= e!3127631 lt!2071019)))

(declare-fun b!5005177 () Bool)

(assert (=> b!5005177 (= e!3127628 e!3127627)))

(declare-fun c!854395 () Bool)

(assert (=> b!5005177 (= c!854395 (>= (- (size!38465 lt!2071019) (size!38465 lt!2071008)) call!349397))))

(declare-fun b!5005178 () Bool)

(assert (=> b!5005178 (= e!3127629 Nil!57865)))

(declare-fun bm!349392 () Bool)

(assert (=> bm!349392 (= call!349397 (size!38465 lt!2071019))))

(declare-fun b!5005179 () Bool)

(assert (=> b!5005179 (= e!3127631 (drop!2458 (t!370335 lt!2071019) (- (- (size!38465 lt!2071019) (size!38465 lt!2071008)) 1)))))

(declare-fun b!5005172 () Bool)

(assert (=> b!5005172 (= e!3127627 (- call!349397 (- (size!38465 lt!2071019) (size!38465 lt!2071008))))))

(declare-fun d!1610852 () Bool)

(assert (=> d!1610852 e!3127630))

(declare-fun res!2135572 () Bool)

(assert (=> d!1610852 (=> (not res!2135572) (not e!3127630))))

(assert (=> d!1610852 (= res!2135572 (= ((_ map implies) (content!10251 lt!2071423) (content!10251 lt!2071019)) ((as const (InoxSet C!27840)) true)))))

(assert (=> d!1610852 (= lt!2071423 e!3127629)))

(declare-fun c!854393 () Bool)

(assert (=> d!1610852 (= c!854393 ((_ is Nil!57865) lt!2071019))))

(assert (=> d!1610852 (= (drop!2458 lt!2071019 (- (size!38465 lt!2071019) (size!38465 lt!2071008))) lt!2071423)))

(assert (= (and d!1610852 c!854393) b!5005178))

(assert (= (and d!1610852 (not c!854393)) b!5005171))

(assert (= (and b!5005171 c!854396) b!5005176))

(assert (= (and b!5005171 (not c!854396)) b!5005179))

(assert (= (and d!1610852 res!2135572) b!5005174))

(assert (= (and b!5005174 c!854394) b!5005175))

(assert (= (and b!5005174 (not c!854394)) b!5005177))

(assert (= (and b!5005177 c!854395) b!5005173))

(assert (= (and b!5005177 (not c!854395)) b!5005172))

(assert (= (or b!5005175 b!5005177 b!5005172) bm!349392))

(declare-fun m!6039216 () Bool)

(assert (=> b!5005174 m!6039216))

(assert (=> bm!349392 m!6038858))

(declare-fun m!6039218 () Bool)

(assert (=> b!5005179 m!6039218))

(declare-fun m!6039220 () Bool)

(assert (=> d!1610852 m!6039220))

(assert (=> d!1610852 m!6038864))

(assert (=> d!1610754 d!1610852))

(declare-fun d!1610854 () Bool)

(declare-fun lt!2071424 () Int)

(assert (=> d!1610854 (>= lt!2071424 0)))

(declare-fun e!3127632 () Int)

(assert (=> d!1610854 (= lt!2071424 e!3127632)))

(declare-fun c!854397 () Bool)

(assert (=> d!1610854 (= c!854397 ((_ is Nil!57865) lt!2071019))))

(assert (=> d!1610854 (= (size!38465 lt!2071019) lt!2071424)))

(declare-fun b!5005180 () Bool)

(assert (=> b!5005180 (= e!3127632 0)))

(declare-fun b!5005181 () Bool)

(assert (=> b!5005181 (= e!3127632 (+ 1 (size!38465 (t!370335 lt!2071019))))))

(assert (= (and d!1610854 c!854397) b!5005180))

(assert (= (and d!1610854 (not c!854397)) b!5005181))

(declare-fun m!6039222 () Bool)

(assert (=> b!5005181 m!6039222))

(assert (=> d!1610754 d!1610854))

(assert (=> d!1610754 d!1610776))

(declare-fun d!1610856 () Bool)

(assert (=> d!1610856 (= (isEmpty!31333 (take!654 (drop!2458 lt!2071019 lt!2071014) lt!2071018)) ((_ is Nil!57865) (take!654 (drop!2458 lt!2071019 lt!2071014) lt!2071018)))))

(assert (=> d!1610810 d!1610856))

(declare-fun d!1610858 () Bool)

(assert (=> d!1610858 (= (isEmpty!31333 lt!2071021) ((_ is Nil!57865) lt!2071021))))

(assert (=> bm!349379 d!1610858))

(declare-fun b!5005182 () Bool)

(declare-fun e!3127635 () Bool)

(declare-fun e!3127634 () Bool)

(assert (=> b!5005182 (= e!3127635 e!3127634)))

(declare-fun res!2135574 () Bool)

(assert (=> b!5005182 (=> (not res!2135574) (not e!3127634))))

(assert (=> b!5005182 (= res!2135574 (not ((_ is Nil!57865) lt!2071008)))))

(declare-fun b!5005184 () Bool)

(assert (=> b!5005184 (= e!3127634 (isPrefix!5348 (tail!9866 lt!2071008) (tail!9866 lt!2071008)))))

(declare-fun b!5005185 () Bool)

(declare-fun e!3127633 () Bool)

(assert (=> b!5005185 (= e!3127633 (>= (size!38465 lt!2071008) (size!38465 lt!2071008)))))

(declare-fun b!5005183 () Bool)

(declare-fun res!2135576 () Bool)

(assert (=> b!5005183 (=> (not res!2135576) (not e!3127634))))

(assert (=> b!5005183 (= res!2135576 (= (head!10733 lt!2071008) (head!10733 lt!2071008)))))

(declare-fun d!1610860 () Bool)

(assert (=> d!1610860 e!3127633))

(declare-fun res!2135575 () Bool)

(assert (=> d!1610860 (=> res!2135575 e!3127633)))

(declare-fun lt!2071425 () Bool)

(assert (=> d!1610860 (= res!2135575 (not lt!2071425))))

(assert (=> d!1610860 (= lt!2071425 e!3127635)))

(declare-fun res!2135573 () Bool)

(assert (=> d!1610860 (=> res!2135573 e!3127635)))

(assert (=> d!1610860 (= res!2135573 ((_ is Nil!57865) lt!2071008))))

(assert (=> d!1610860 (= (isPrefix!5348 lt!2071008 lt!2071008) lt!2071425)))

(assert (= (and d!1610860 (not res!2135573)) b!5005182))

(assert (= (and b!5005182 res!2135574) b!5005183))

(assert (= (and b!5005183 res!2135576) b!5005184))

(assert (= (and d!1610860 (not res!2135575)) b!5005185))

(assert (=> b!5005184 m!6039012))

(assert (=> b!5005184 m!6039012))

(assert (=> b!5005184 m!6039012))

(assert (=> b!5005184 m!6039012))

(declare-fun m!6039224 () Bool)

(assert (=> b!5005184 m!6039224))

(assert (=> b!5005185 m!6038310))

(assert (=> b!5005185 m!6038310))

(assert (=> b!5005183 m!6038988))

(assert (=> b!5005183 m!6038988))

(assert (=> bm!349371 d!1610860))

(declare-fun c!854398 () Bool)

(declare-fun d!1610862 () Bool)

(assert (=> d!1610862 (= c!854398 (isEmpty!31333 (tail!9866 (take!654 (drop!2458 lt!2071019 lt!2071014) lt!2071018))))))

(declare-fun e!3127636 () Bool)

(assert (=> d!1610862 (= (matchZipper!563 (derivationStepZipper!633 z!4183 (head!10733 (take!654 (drop!2458 lt!2071019 lt!2071014) lt!2071018))) (tail!9866 (take!654 (drop!2458 lt!2071019 lt!2071014) lt!2071018))) e!3127636)))

(declare-fun b!5005186 () Bool)

(assert (=> b!5005186 (= e!3127636 (nullableZipper!884 (derivationStepZipper!633 z!4183 (head!10733 (take!654 (drop!2458 lt!2071019 lt!2071014) lt!2071018)))))))

(declare-fun b!5005187 () Bool)

(assert (=> b!5005187 (= e!3127636 (matchZipper!563 (derivationStepZipper!633 (derivationStepZipper!633 z!4183 (head!10733 (take!654 (drop!2458 lt!2071019 lt!2071014) lt!2071018))) (head!10733 (tail!9866 (take!654 (drop!2458 lt!2071019 lt!2071014) lt!2071018)))) (tail!9866 (tail!9866 (take!654 (drop!2458 lt!2071019 lt!2071014) lt!2071018)))))))

(assert (= (and d!1610862 c!854398) b!5005186))

(assert (= (and d!1610862 (not c!854398)) b!5005187))

(assert (=> d!1610862 m!6039084))

(declare-fun m!6039226 () Bool)

(assert (=> d!1610862 m!6039226))

(assert (=> b!5005186 m!6039082))

(declare-fun m!6039228 () Bool)

(assert (=> b!5005186 m!6039228))

(assert (=> b!5005187 m!6039084))

(declare-fun m!6039230 () Bool)

(assert (=> b!5005187 m!6039230))

(assert (=> b!5005187 m!6039082))

(assert (=> b!5005187 m!6039230))

(declare-fun m!6039232 () Bool)

(assert (=> b!5005187 m!6039232))

(assert (=> b!5005187 m!6039084))

(declare-fun m!6039234 () Bool)

(assert (=> b!5005187 m!6039234))

(assert (=> b!5005187 m!6039232))

(assert (=> b!5005187 m!6039234))

(declare-fun m!6039236 () Bool)

(assert (=> b!5005187 m!6039236))

(assert (=> b!5005008 d!1610862))

(declare-fun d!1610864 () Bool)

(assert (=> d!1610864 true))

(declare-fun lambda!248375 () Int)

(declare-fun flatMap!280 ((InoxSet Context!6440) Int) (InoxSet Context!6440))

(assert (=> d!1610864 (= (derivationStepZipper!633 z!4183 (head!10733 (take!654 (drop!2458 lt!2071019 lt!2071014) lt!2071018))) (flatMap!280 z!4183 lambda!248375))))

(declare-fun bs!1185954 () Bool)

(assert (= bs!1185954 d!1610864))

(declare-fun m!6039238 () Bool)

(assert (=> bs!1185954 m!6039238))

(assert (=> b!5005008 d!1610864))

(declare-fun d!1610866 () Bool)

(assert (=> d!1610866 (= (head!10733 (take!654 (drop!2458 lt!2071019 lt!2071014) lt!2071018)) (h!64313 (take!654 (drop!2458 lt!2071019 lt!2071014) lt!2071018)))))

(assert (=> b!5005008 d!1610866))

(declare-fun d!1610868 () Bool)

(assert (=> d!1610868 (= (tail!9866 (take!654 (drop!2458 lt!2071019 lt!2071014) lt!2071018)) (t!370335 (take!654 (drop!2458 lt!2071019 lt!2071014) lt!2071018)))))

(assert (=> b!5005008 d!1610868))

(declare-fun b!5005201 () Bool)

(declare-fun e!3127642 () List!57989)

(assert (=> b!5005201 (= e!3127642 (++!12641 (list!18626 (left!42305 (c!854185 input!5597))) (list!18626 (right!42635 (c!854185 input!5597)))))))

(declare-fun b!5005200 () Bool)

(declare-fun list!18627 (IArray!30689) List!57989)

(assert (=> b!5005200 (= e!3127642 (list!18627 (xs!18640 (c!854185 input!5597))))))

(declare-fun b!5005199 () Bool)

(declare-fun e!3127641 () List!57989)

(assert (=> b!5005199 (= e!3127641 e!3127642)))

(declare-fun c!854406 () Bool)

(assert (=> b!5005199 (= c!854406 ((_ is Leaf!25420) (c!854185 input!5597)))))

(declare-fun b!5005198 () Bool)

(assert (=> b!5005198 (= e!3127641 Nil!57865)))

(declare-fun d!1610870 () Bool)

(declare-fun c!854405 () Bool)

(assert (=> d!1610870 (= c!854405 ((_ is Empty!15314) (c!854185 input!5597)))))

(assert (=> d!1610870 (= (list!18626 (c!854185 input!5597)) e!3127641)))

(assert (= (and d!1610870 c!854405) b!5005198))

(assert (= (and d!1610870 (not c!854405)) b!5005199))

(assert (= (and b!5005199 c!854406) b!5005200))

(assert (= (and b!5005199 (not c!854406)) b!5005201))

(declare-fun m!6039240 () Bool)

(assert (=> b!5005201 m!6039240))

(declare-fun m!6039242 () Bool)

(assert (=> b!5005201 m!6039242))

(assert (=> b!5005201 m!6039240))

(assert (=> b!5005201 m!6039242))

(declare-fun m!6039244 () Bool)

(assert (=> b!5005201 m!6039244))

(declare-fun m!6039246 () Bool)

(assert (=> b!5005200 m!6039246))

(assert (=> d!1610758 d!1610870))

(assert (=> d!1610802 d!1610624))

(declare-fun d!1610872 () Bool)

(declare-fun lt!2071426 () Int)

(assert (=> d!1610872 (>= lt!2071426 0)))

(declare-fun e!3127643 () Int)

(assert (=> d!1610872 (= lt!2071426 e!3127643)))

(declare-fun c!854407 () Bool)

(assert (=> d!1610872 (= c!854407 ((_ is Nil!57865) lt!2071411))))

(assert (=> d!1610872 (= (size!38465 lt!2071411) lt!2071426)))

(declare-fun b!5005202 () Bool)

(assert (=> b!5005202 (= e!3127643 0)))

(declare-fun b!5005203 () Bool)

(assert (=> b!5005203 (= e!3127643 (+ 1 (size!38465 (t!370335 lt!2071411))))))

(assert (= (and d!1610872 c!854407) b!5005202))

(assert (= (and d!1610872 (not c!854407)) b!5005203))

(declare-fun m!6039248 () Bool)

(assert (=> b!5005203 m!6039248))

(assert (=> b!5005052 d!1610872))

(declare-fun b!5005204 () Bool)

(declare-fun e!3127645 () List!57989)

(assert (=> b!5005204 (= e!3127645 lt!2071011)))

(declare-fun b!5005205 () Bool)

(assert (=> b!5005205 (= e!3127645 (Cons!57865 (h!64313 (t!370335 lt!2071021)) (++!12641 (t!370335 (t!370335 lt!2071021)) lt!2071011)))))

(declare-fun b!5005206 () Bool)

(declare-fun res!2135578 () Bool)

(declare-fun e!3127644 () Bool)

(assert (=> b!5005206 (=> (not res!2135578) (not e!3127644))))

(declare-fun lt!2071427 () List!57989)

(assert (=> b!5005206 (= res!2135578 (= (size!38465 lt!2071427) (+ (size!38465 (t!370335 lt!2071021)) (size!38465 lt!2071011))))))

(declare-fun d!1610874 () Bool)

(assert (=> d!1610874 e!3127644))

(declare-fun res!2135577 () Bool)

(assert (=> d!1610874 (=> (not res!2135577) (not e!3127644))))

(assert (=> d!1610874 (= res!2135577 (= (content!10251 lt!2071427) ((_ map or) (content!10251 (t!370335 lt!2071021)) (content!10251 lt!2071011))))))

(assert (=> d!1610874 (= lt!2071427 e!3127645)))

(declare-fun c!854408 () Bool)

(assert (=> d!1610874 (= c!854408 ((_ is Nil!57865) (t!370335 lt!2071021)))))

(assert (=> d!1610874 (= (++!12641 (t!370335 lt!2071021) lt!2071011) lt!2071427)))

(declare-fun b!5005207 () Bool)

(assert (=> b!5005207 (= e!3127644 (or (not (= lt!2071011 Nil!57865)) (= lt!2071427 (t!370335 lt!2071021))))))

(assert (= (and d!1610874 c!854408) b!5005204))

(assert (= (and d!1610874 (not c!854408)) b!5005205))

(assert (= (and d!1610874 res!2135577) b!5005206))

(assert (= (and b!5005206 res!2135578) b!5005207))

(declare-fun m!6039250 () Bool)

(assert (=> b!5005205 m!6039250))

(declare-fun m!6039252 () Bool)

(assert (=> b!5005206 m!6039252))

(declare-fun m!6039254 () Bool)

(assert (=> b!5005206 m!6039254))

(assert (=> b!5005206 m!6038532))

(declare-fun m!6039256 () Bool)

(assert (=> d!1610874 m!6039256))

(declare-fun m!6039258 () Bool)

(assert (=> d!1610874 m!6039258))

(assert (=> d!1610874 m!6038538))

(assert (=> b!5004516 d!1610874))

(assert (=> d!1610772 d!1610782))

(assert (=> d!1610772 d!1610778))

(declare-fun d!1610876 () Bool)

(assert (=> d!1610876 (isPrefix!5348 (take!654 lt!2071019 lt!2071014) lt!2071019)))

(assert (=> d!1610876 true))

(declare-fun _$48!741 () Unit!149035)

(assert (=> d!1610876 (= (choose!37015 lt!2071019 lt!2071014) _$48!741)))

(declare-fun bs!1185955 () Bool)

(assert (= bs!1185955 d!1610876))

(assert (=> bs!1185955 m!6038312))

(assert (=> bs!1185955 m!6038312))

(assert (=> bs!1185955 m!6038314))

(assert (=> d!1610772 d!1610876))

(declare-fun d!1610878 () Bool)

(assert (=> d!1610878 (= (head!10733 (_1!34812 lt!2071024)) (h!64313 (_1!34812 lt!2071024)))))

(assert (=> b!5005018 d!1610878))

(declare-fun d!1610880 () Bool)

(assert (=> d!1610880 (= (head!10733 lt!2071021) (h!64313 lt!2071021))))

(assert (=> b!5004804 d!1610880))

(declare-fun d!1610882 () Bool)

(assert (=> d!1610882 (= (head!10733 lt!2071012) (h!64313 lt!2071012))))

(assert (=> b!5004804 d!1610882))

(declare-fun d!1610884 () Bool)

(assert (=> d!1610884 (= (list!18624 (_2!34811 lt!2071101)) (list!18626 (c!854185 (_2!34811 lt!2071101))))))

(declare-fun bs!1185956 () Bool)

(assert (= bs!1185956 d!1610884))

(declare-fun m!6039260 () Bool)

(assert (=> bs!1185956 m!6039260))

(assert (=> d!1610666 d!1610884))

(declare-fun d!1610886 () Bool)

(declare-fun lt!2071429 () Int)

(assert (=> d!1610886 (and (>= lt!2071429 0) (<= lt!2071429 (- lt!2071102 (- lt!2071102 (size!38464 input!5597)))))))

(declare-fun e!3127650 () Int)

(assert (=> d!1610886 (= lt!2071429 e!3127650)))

(declare-fun c!854409 () Bool)

(declare-fun e!3127649 () Bool)

(assert (=> d!1610886 (= c!854409 e!3127649)))

(declare-fun res!2135579 () Bool)

(assert (=> d!1610886 (=> res!2135579 e!3127649)))

(assert (=> d!1610886 (= res!2135579 (= (- lt!2071102 (size!38464 input!5597)) lt!2071102))))

(declare-fun e!3127647 () Bool)

(assert (=> d!1610886 e!3127647))

(declare-fun res!2135580 () Bool)

(assert (=> d!1610886 (=> (not res!2135580) (not e!3127647))))

(assert (=> d!1610886 (= res!2135580 (>= (- lt!2071102 (size!38464 input!5597)) 0))))

(assert (=> d!1610886 (= (findLongestMatchInnerZipperFastV2!135 z!4183 (- lt!2071102 (size!38464 input!5597)) totalInput!1012 lt!2071102) lt!2071429)))

(declare-fun b!5005208 () Bool)

(assert (=> b!5005208 (= e!3127649 (lostCauseZipper!829 z!4183))))

(declare-fun b!5005209 () Bool)

(assert (=> b!5005209 (= e!3127647 (<= (- lt!2071102 (size!38464 input!5597)) (size!38464 totalInput!1012)))))

(declare-fun b!5005210 () Bool)

(declare-fun e!3127648 () Int)

(assert (=> b!5005210 (= e!3127648 0)))

(declare-fun b!5005211 () Bool)

(declare-fun c!854410 () Bool)

(declare-fun lt!2071430 () (InoxSet Context!6440))

(assert (=> b!5005211 (= c!854410 (nullableZipper!884 lt!2071430))))

(declare-fun e!3127646 () Int)

(assert (=> b!5005211 (= e!3127646 e!3127648)))

(declare-fun b!5005212 () Bool)

(declare-fun lt!2071428 () Int)

(assert (=> b!5005212 (= e!3127646 (+ 1 lt!2071428))))

(declare-fun b!5005213 () Bool)

(assert (=> b!5005213 (= e!3127650 0)))

(declare-fun b!5005214 () Bool)

(assert (=> b!5005214 (= e!3127648 1)))

(declare-fun b!5005215 () Bool)

(assert (=> b!5005215 (= e!3127650 e!3127646)))

(assert (=> b!5005215 (= lt!2071430 (derivationStepZipper!633 z!4183 (apply!13989 totalInput!1012 (- lt!2071102 (size!38464 input!5597)))))))

(assert (=> b!5005215 (= lt!2071428 (findLongestMatchInnerZipperFastV2!135 lt!2071430 (+ (- lt!2071102 (size!38464 input!5597)) 1) totalInput!1012 lt!2071102))))

(declare-fun c!854411 () Bool)

(assert (=> b!5005215 (= c!854411 (> lt!2071428 0))))

(assert (= (and d!1610886 res!2135580) b!5005209))

(assert (= (and d!1610886 (not res!2135579)) b!5005208))

(assert (= (and d!1610886 c!854409) b!5005213))

(assert (= (and d!1610886 (not c!854409)) b!5005215))

(assert (= (and b!5005215 c!854411) b!5005212))

(assert (= (and b!5005215 (not c!854411)) b!5005211))

(assert (= (and b!5005211 c!854410) b!5005214))

(assert (= (and b!5005211 (not c!854410)) b!5005210))

(assert (=> b!5005208 m!6038962))

(assert (=> b!5005209 m!6038404))

(declare-fun m!6039262 () Bool)

(assert (=> b!5005211 m!6039262))

(declare-fun m!6039264 () Bool)

(assert (=> b!5005215 m!6039264))

(assert (=> b!5005215 m!6039264))

(declare-fun m!6039266 () Bool)

(assert (=> b!5005215 m!6039266))

(declare-fun m!6039268 () Bool)

(assert (=> b!5005215 m!6039268))

(assert (=> d!1610666 d!1610886))

(declare-fun d!1610888 () Bool)

(assert (=> d!1610888 (= (list!18624 (_1!34811 lt!2071101)) (list!18626 (c!854185 (_1!34811 lt!2071101))))))

(declare-fun bs!1185957 () Bool)

(assert (= bs!1185957 d!1610888))

(declare-fun m!6039270 () Bool)

(assert (=> bs!1185957 m!6039270))

(assert (=> d!1610666 d!1610888))

(assert (=> d!1610666 d!1610758))

(assert (=> d!1610666 d!1610650))

(declare-fun d!1610890 () Bool)

(declare-fun e!3127653 () Bool)

(assert (=> d!1610890 e!3127653))

(declare-fun res!2135585 () Bool)

(assert (=> d!1610890 (=> (not res!2135585) (not e!3127653))))

(declare-fun lt!2071436 () tuple2!63016)

(assert (=> d!1610890 (= res!2135585 (isBalanced!4272 (c!854185 (_1!34811 lt!2071436))))))

(declare-datatypes ((tuple2!63020 0))(
  ( (tuple2!63021 (_1!34813 Conc!15314) (_2!34813 Conc!15314)) )
))
(declare-fun lt!2071435 () tuple2!63020)

(assert (=> d!1610890 (= lt!2071436 (tuple2!63017 (BalanceConc!30059 (_1!34813 lt!2071435)) (BalanceConc!30059 (_2!34813 lt!2071435))))))

(declare-fun splitAt!450 (Conc!15314 Int) tuple2!63020)

(assert (=> d!1610890 (= lt!2071435 (splitAt!450 (c!854185 input!5597) (findLongestMatchInnerZipperFastV2!135 z!4183 (- lt!2071102 (size!38464 input!5597)) totalInput!1012 lt!2071102)))))

(assert (=> d!1610890 (isBalanced!4272 (c!854185 input!5597))))

(assert (=> d!1610890 (= (splitAt!448 input!5597 (findLongestMatchInnerZipperFastV2!135 z!4183 (- lt!2071102 (size!38464 input!5597)) totalInput!1012 lt!2071102)) lt!2071436)))

(declare-fun b!5005220 () Bool)

(declare-fun res!2135586 () Bool)

(assert (=> b!5005220 (=> (not res!2135586) (not e!3127653))))

(assert (=> b!5005220 (= res!2135586 (isBalanced!4272 (c!854185 (_2!34811 lt!2071436))))))

(declare-fun b!5005221 () Bool)

(declare-fun splitAtIndex!162 (List!57989 Int) tuple2!63018)

(assert (=> b!5005221 (= e!3127653 (= (tuple2!63019 (list!18624 (_1!34811 lt!2071436)) (list!18624 (_2!34811 lt!2071436))) (splitAtIndex!162 (list!18624 input!5597) (findLongestMatchInnerZipperFastV2!135 z!4183 (- lt!2071102 (size!38464 input!5597)) totalInput!1012 lt!2071102))))))

(assert (= (and d!1610890 res!2135585) b!5005220))

(assert (= (and b!5005220 res!2135586) b!5005221))

(declare-fun m!6039272 () Bool)

(assert (=> d!1610890 m!6039272))

(assert (=> d!1610890 m!6038578))

(declare-fun m!6039274 () Bool)

(assert (=> d!1610890 m!6039274))

(assert (=> d!1610890 m!6039148))

(declare-fun m!6039276 () Bool)

(assert (=> b!5005220 m!6039276))

(declare-fun m!6039278 () Bool)

(assert (=> b!5005221 m!6039278))

(declare-fun m!6039280 () Bool)

(assert (=> b!5005221 m!6039280))

(assert (=> b!5005221 m!6038376))

(assert (=> b!5005221 m!6038376))

(assert (=> b!5005221 m!6038578))

(declare-fun m!6039282 () Bool)

(assert (=> b!5005221 m!6039282))

(assert (=> d!1610666 d!1610890))

(assert (=> d!1610666 d!1610654))

(declare-fun d!1610892 () Bool)

(declare-fun e!3127654 () Bool)

(assert (=> d!1610892 e!3127654))

(declare-fun res!2135587 () Bool)

(assert (=> d!1610892 (=> res!2135587 e!3127654)))

(declare-fun lt!2071437 () Bool)

(assert (=> d!1610892 (= res!2135587 (not lt!2071437))))

(assert (=> d!1610892 (= lt!2071437 (= (list!18624 input!5597) (drop!2458 (list!18624 totalInput!1012) (- (size!38465 (list!18624 totalInput!1012)) (size!38465 (list!18624 input!5597))))))))

(assert (=> d!1610892 (= (isSuffix!1361 (list!18624 input!5597) (list!18624 totalInput!1012)) lt!2071437)))

(declare-fun b!5005222 () Bool)

(assert (=> b!5005222 (= e!3127654 (>= (size!38465 (list!18624 totalInput!1012)) (size!38465 (list!18624 input!5597))))))

(assert (= (and d!1610892 (not res!2135587)) b!5005222))

(assert (=> d!1610892 m!6038374))

(assert (=> d!1610892 m!6038506))

(assert (=> d!1610892 m!6038376))

(assert (=> d!1610892 m!6038502))

(assert (=> d!1610892 m!6038374))

(declare-fun m!6039284 () Bool)

(assert (=> d!1610892 m!6039284))

(assert (=> b!5005222 m!6038374))

(assert (=> b!5005222 m!6038506))

(assert (=> b!5005222 m!6038376))

(assert (=> b!5005222 m!6038502))

(assert (=> d!1610666 d!1610892))

(declare-fun b!5005223 () Bool)

(declare-fun e!3127656 () List!57989)

(assert (=> b!5005223 (= e!3127656 (list!18624 (_2!34811 lt!2071101)))))

(declare-fun b!5005224 () Bool)

(assert (=> b!5005224 (= e!3127656 (Cons!57865 (h!64313 (list!18624 (_1!34811 lt!2071101))) (++!12641 (t!370335 (list!18624 (_1!34811 lt!2071101))) (list!18624 (_2!34811 lt!2071101)))))))

(declare-fun b!5005225 () Bool)

(declare-fun res!2135589 () Bool)

(declare-fun e!3127655 () Bool)

(assert (=> b!5005225 (=> (not res!2135589) (not e!3127655))))

(declare-fun lt!2071438 () List!57989)

(assert (=> b!5005225 (= res!2135589 (= (size!38465 lt!2071438) (+ (size!38465 (list!18624 (_1!34811 lt!2071101))) (size!38465 (list!18624 (_2!34811 lt!2071101))))))))

(declare-fun d!1610894 () Bool)

(assert (=> d!1610894 e!3127655))

(declare-fun res!2135588 () Bool)

(assert (=> d!1610894 (=> (not res!2135588) (not e!3127655))))

(assert (=> d!1610894 (= res!2135588 (= (content!10251 lt!2071438) ((_ map or) (content!10251 (list!18624 (_1!34811 lt!2071101))) (content!10251 (list!18624 (_2!34811 lt!2071101))))))))

(assert (=> d!1610894 (= lt!2071438 e!3127656)))

(declare-fun c!854412 () Bool)

(assert (=> d!1610894 (= c!854412 ((_ is Nil!57865) (list!18624 (_1!34811 lt!2071101))))))

(assert (=> d!1610894 (= (++!12641 (list!18624 (_1!34811 lt!2071101)) (list!18624 (_2!34811 lt!2071101))) lt!2071438)))

(declare-fun b!5005226 () Bool)

(assert (=> b!5005226 (= e!3127655 (or (not (= (list!18624 (_2!34811 lt!2071101)) Nil!57865)) (= lt!2071438 (list!18624 (_1!34811 lt!2071101)))))))

(assert (= (and d!1610894 c!854412) b!5005223))

(assert (= (and d!1610894 (not c!854412)) b!5005224))

(assert (= (and d!1610894 res!2135588) b!5005225))

(assert (= (and b!5005225 res!2135589) b!5005226))

(assert (=> b!5005224 m!6038582))

(declare-fun m!6039286 () Bool)

(assert (=> b!5005224 m!6039286))

(declare-fun m!6039288 () Bool)

(assert (=> b!5005225 m!6039288))

(assert (=> b!5005225 m!6038584))

(declare-fun m!6039290 () Bool)

(assert (=> b!5005225 m!6039290))

(assert (=> b!5005225 m!6038582))

(declare-fun m!6039292 () Bool)

(assert (=> b!5005225 m!6039292))

(declare-fun m!6039294 () Bool)

(assert (=> d!1610894 m!6039294))

(assert (=> d!1610894 m!6038584))

(declare-fun m!6039296 () Bool)

(assert (=> d!1610894 m!6039296))

(assert (=> d!1610894 m!6038582))

(declare-fun m!6039298 () Bool)

(assert (=> d!1610894 m!6039298))

(assert (=> d!1610666 d!1610894))

(assert (=> d!1610666 d!1610756))

(declare-fun d!1610896 () Bool)

(assert (=> d!1610896 (= (isEmpty!31333 (tail!9866 (_1!34812 lt!2071024))) ((_ is Nil!57865) (tail!9866 (_1!34812 lt!2071024))))))

(assert (=> b!5005021 d!1610896))

(declare-fun d!1610898 () Bool)

(assert (=> d!1610898 (= (tail!9866 (_1!34812 lt!2071024)) (t!370335 (_1!34812 lt!2071024)))))

(assert (=> b!5005021 d!1610898))

(declare-fun d!1610900 () Bool)

(declare-fun lt!2071439 () Int)

(assert (=> d!1610900 (>= lt!2071439 0)))

(declare-fun e!3127657 () Int)

(assert (=> d!1610900 (= lt!2071439 e!3127657)))

(declare-fun c!854413 () Bool)

(assert (=> d!1610900 (= c!854413 ((_ is Nil!57865) (drop!2458 lt!2071019 lt!2071014)))))

(assert (=> d!1610900 (= (size!38465 (drop!2458 lt!2071019 lt!2071014)) lt!2071439)))

(declare-fun b!5005227 () Bool)

(assert (=> b!5005227 (= e!3127657 0)))

(declare-fun b!5005228 () Bool)

(assert (=> b!5005228 (= e!3127657 (+ 1 (size!38465 (t!370335 (drop!2458 lt!2071019 lt!2071014)))))))

(assert (= (and d!1610900 c!854413) b!5005227))

(assert (= (and d!1610900 (not c!854413)) b!5005228))

(declare-fun m!6039300 () Bool)

(assert (=> b!5005228 m!6039300))

(assert (=> b!5005012 d!1610900))

(assert (=> b!5005050 d!1610776))

(declare-fun d!1610902 () Bool)

(declare-fun lt!2071440 () Int)

(assert (=> d!1610902 (>= lt!2071440 0)))

(declare-fun e!3127658 () Int)

(assert (=> d!1610902 (= lt!2071440 e!3127658)))

(declare-fun c!854414 () Bool)

(assert (=> d!1610902 (= c!854414 ((_ is Nil!57865) lt!2071010))))

(assert (=> d!1610902 (= (size!38465 lt!2071010) lt!2071440)))

(declare-fun b!5005229 () Bool)

(assert (=> b!5005229 (= e!3127658 0)))

(declare-fun b!5005230 () Bool)

(assert (=> b!5005230 (= e!3127658 (+ 1 (size!38465 (t!370335 lt!2071010))))))

(assert (= (and d!1610902 c!854414) b!5005229))

(assert (= (and d!1610902 (not c!854414)) b!5005230))

(declare-fun m!6039302 () Bool)

(assert (=> b!5005230 m!6039302))

(assert (=> b!5005050 d!1610902))

(declare-fun d!1610904 () Bool)

(declare-fun c!854417 () Bool)

(assert (=> d!1610904 (= c!854417 ((_ is Nil!57865) lt!2071085))))

(declare-fun e!3127661 () (InoxSet C!27840))

(assert (=> d!1610904 (= (content!10251 lt!2071085) e!3127661)))

(declare-fun b!5005235 () Bool)

(assert (=> b!5005235 (= e!3127661 ((as const (Array C!27840 Bool)) false))))

(declare-fun b!5005236 () Bool)

(assert (=> b!5005236 (= e!3127661 ((_ map or) (store ((as const (Array C!27840 Bool)) false) (h!64313 lt!2071085) true) (content!10251 (t!370335 lt!2071085))))))

(assert (= (and d!1610904 c!854417) b!5005235))

(assert (= (and d!1610904 (not c!854417)) b!5005236))

(declare-fun m!6039304 () Bool)

(assert (=> b!5005236 m!6039304))

(declare-fun m!6039306 () Bool)

(assert (=> b!5005236 m!6039306))

(assert (=> d!1610656 d!1610904))

(declare-fun d!1610906 () Bool)

(declare-fun c!854418 () Bool)

(assert (=> d!1610906 (= c!854418 ((_ is Nil!57865) lt!2071021))))

(declare-fun e!3127662 () (InoxSet C!27840))

(assert (=> d!1610906 (= (content!10251 lt!2071021) e!3127662)))

(declare-fun b!5005237 () Bool)

(assert (=> b!5005237 (= e!3127662 ((as const (Array C!27840 Bool)) false))))

(declare-fun b!5005238 () Bool)

(assert (=> b!5005238 (= e!3127662 ((_ map or) (store ((as const (Array C!27840 Bool)) false) (h!64313 lt!2071021) true) (content!10251 (t!370335 lt!2071021))))))

(assert (= (and d!1610906 c!854418) b!5005237))

(assert (= (and d!1610906 (not c!854418)) b!5005238))

(declare-fun m!6039308 () Bool)

(assert (=> b!5005238 m!6039308))

(assert (=> b!5005238 m!6039258))

(assert (=> d!1610656 d!1610906))

(declare-fun d!1610908 () Bool)

(declare-fun c!854419 () Bool)

(assert (=> d!1610908 (= c!854419 ((_ is Nil!57865) lt!2071011))))

(declare-fun e!3127663 () (InoxSet C!27840))

(assert (=> d!1610908 (= (content!10251 lt!2071011) e!3127663)))

(declare-fun b!5005239 () Bool)

(assert (=> b!5005239 (= e!3127663 ((as const (Array C!27840 Bool)) false))))

(declare-fun b!5005240 () Bool)

(assert (=> b!5005240 (= e!3127663 ((_ map or) (store ((as const (Array C!27840 Bool)) false) (h!64313 lt!2071011) true) (content!10251 (t!370335 lt!2071011))))))

(assert (= (and d!1610908 c!854419) b!5005239))

(assert (= (and d!1610908 (not c!854419)) b!5005240))

(declare-fun m!6039310 () Bool)

(assert (=> b!5005240 m!6039310))

(declare-fun m!6039312 () Bool)

(assert (=> b!5005240 m!6039312))

(assert (=> d!1610656 d!1610908))

(declare-fun b!5005241 () Bool)

(declare-fun e!3127670 () Bool)

(declare-fun e!3127669 () Bool)

(assert (=> b!5005241 (= e!3127670 e!3127669)))

(declare-fun res!2135592 () Bool)

(assert (=> b!5005241 (=> res!2135592 e!3127669)))

(declare-fun call!349398 () Bool)

(assert (=> b!5005241 (= res!2135592 call!349398)))

(declare-fun b!5005242 () Bool)

(declare-fun e!3127664 () Bool)

(declare-fun e!3127668 () Bool)

(assert (=> b!5005242 (= e!3127664 e!3127668)))

(declare-fun c!854422 () Bool)

(assert (=> b!5005242 (= c!854422 ((_ is EmptyLang!13795) (derivativeStep!3979 r!12727 (head!10733 (_1!34812 lt!2071026)))))))

(declare-fun b!5005243 () Bool)

(declare-fun e!3127667 () Bool)

(assert (=> b!5005243 (= e!3127667 (= (head!10733 (tail!9866 (_1!34812 lt!2071026))) (c!854186 (derivativeStep!3979 r!12727 (head!10733 (_1!34812 lt!2071026))))))))

(declare-fun b!5005244 () Bool)

(declare-fun res!2135591 () Bool)

(assert (=> b!5005244 (=> (not res!2135591) (not e!3127667))))

(assert (=> b!5005244 (= res!2135591 (not call!349398))))

(declare-fun d!1610910 () Bool)

(assert (=> d!1610910 e!3127664))

(declare-fun c!854421 () Bool)

(assert (=> d!1610910 (= c!854421 ((_ is EmptyExpr!13795) (derivativeStep!3979 r!12727 (head!10733 (_1!34812 lt!2071026)))))))

(declare-fun lt!2071441 () Bool)

(declare-fun e!3127665 () Bool)

(assert (=> d!1610910 (= lt!2071441 e!3127665)))

(declare-fun c!854420 () Bool)

(assert (=> d!1610910 (= c!854420 (isEmpty!31333 (tail!9866 (_1!34812 lt!2071026))))))

(assert (=> d!1610910 (validRegex!6092 (derivativeStep!3979 r!12727 (head!10733 (_1!34812 lt!2071026))))))

(assert (=> d!1610910 (= (matchR!6759 (derivativeStep!3979 r!12727 (head!10733 (_1!34812 lt!2071026))) (tail!9866 (_1!34812 lt!2071026))) lt!2071441)))

(declare-fun b!5005245 () Bool)

(assert (=> b!5005245 (= e!3127664 (= lt!2071441 call!349398))))

(declare-fun bm!349393 () Bool)

(assert (=> bm!349393 (= call!349398 (isEmpty!31333 (tail!9866 (_1!34812 lt!2071026))))))

(declare-fun b!5005246 () Bool)

(declare-fun res!2135597 () Bool)

(assert (=> b!5005246 (=> (not res!2135597) (not e!3127667))))

(assert (=> b!5005246 (= res!2135597 (isEmpty!31333 (tail!9866 (tail!9866 (_1!34812 lt!2071026)))))))

(declare-fun b!5005247 () Bool)

(declare-fun res!2135590 () Bool)

(declare-fun e!3127666 () Bool)

(assert (=> b!5005247 (=> res!2135590 e!3127666)))

(assert (=> b!5005247 (= res!2135590 (not ((_ is ElementMatch!13795) (derivativeStep!3979 r!12727 (head!10733 (_1!34812 lt!2071026))))))))

(assert (=> b!5005247 (= e!3127668 e!3127666)))

(declare-fun b!5005248 () Bool)

(assert (=> b!5005248 (= e!3127665 (matchR!6759 (derivativeStep!3979 (derivativeStep!3979 r!12727 (head!10733 (_1!34812 lt!2071026))) (head!10733 (tail!9866 (_1!34812 lt!2071026)))) (tail!9866 (tail!9866 (_1!34812 lt!2071026)))))))

(declare-fun b!5005249 () Bool)

(declare-fun res!2135593 () Bool)

(assert (=> b!5005249 (=> res!2135593 e!3127666)))

(assert (=> b!5005249 (= res!2135593 e!3127667)))

(declare-fun res!2135596 () Bool)

(assert (=> b!5005249 (=> (not res!2135596) (not e!3127667))))

(assert (=> b!5005249 (= res!2135596 lt!2071441)))

(declare-fun b!5005250 () Bool)

(assert (=> b!5005250 (= e!3127668 (not lt!2071441))))

(declare-fun b!5005251 () Bool)

(assert (=> b!5005251 (= e!3127666 e!3127670)))

(declare-fun res!2135594 () Bool)

(assert (=> b!5005251 (=> (not res!2135594) (not e!3127670))))

(assert (=> b!5005251 (= res!2135594 (not lt!2071441))))

(declare-fun b!5005252 () Bool)

(assert (=> b!5005252 (= e!3127669 (not (= (head!10733 (tail!9866 (_1!34812 lt!2071026))) (c!854186 (derivativeStep!3979 r!12727 (head!10733 (_1!34812 lt!2071026)))))))))

(declare-fun b!5005253 () Bool)

(assert (=> b!5005253 (= e!3127665 (nullable!4689 (derivativeStep!3979 r!12727 (head!10733 (_1!34812 lt!2071026)))))))

(declare-fun b!5005254 () Bool)

(declare-fun res!2135595 () Bool)

(assert (=> b!5005254 (=> res!2135595 e!3127669)))

(assert (=> b!5005254 (= res!2135595 (not (isEmpty!31333 (tail!9866 (tail!9866 (_1!34812 lt!2071026))))))))

(assert (= (and d!1610910 c!854420) b!5005253))

(assert (= (and d!1610910 (not c!854420)) b!5005248))

(assert (= (and d!1610910 c!854421) b!5005245))

(assert (= (and d!1610910 (not c!854421)) b!5005242))

(assert (= (and b!5005242 c!854422) b!5005250))

(assert (= (and b!5005242 (not c!854422)) b!5005247))

(assert (= (and b!5005247 (not res!2135590)) b!5005249))

(assert (= (and b!5005249 res!2135596) b!5005244))

(assert (= (and b!5005244 res!2135591) b!5005246))

(assert (= (and b!5005246 res!2135597) b!5005243))

(assert (= (and b!5005249 (not res!2135593)) b!5005251))

(assert (= (and b!5005251 res!2135594) b!5005241))

(assert (= (and b!5005241 (not res!2135592)) b!5005254))

(assert (= (and b!5005254 (not res!2135595)) b!5005252))

(assert (= (or b!5005245 b!5005241 b!5005244) bm!349393))

(assert (=> b!5005254 m!6039042))

(assert (=> b!5005254 m!6039166))

(assert (=> b!5005254 m!6039166))

(declare-fun m!6039314 () Bool)

(assert (=> b!5005254 m!6039314))

(assert (=> b!5005243 m!6039042))

(assert (=> b!5005243 m!6039176))

(assert (=> b!5005252 m!6039042))

(assert (=> b!5005252 m!6039176))

(assert (=> b!5005248 m!6039042))

(assert (=> b!5005248 m!6039176))

(assert (=> b!5005248 m!6039114))

(assert (=> b!5005248 m!6039176))

(declare-fun m!6039316 () Bool)

(assert (=> b!5005248 m!6039316))

(assert (=> b!5005248 m!6039042))

(assert (=> b!5005248 m!6039166))

(assert (=> b!5005248 m!6039316))

(assert (=> b!5005248 m!6039166))

(declare-fun m!6039318 () Bool)

(assert (=> b!5005248 m!6039318))

(assert (=> bm!349393 m!6039042))

(assert (=> bm!349393 m!6039112))

(assert (=> b!5005253 m!6039114))

(declare-fun m!6039320 () Bool)

(assert (=> b!5005253 m!6039320))

(assert (=> b!5005246 m!6039042))

(assert (=> b!5005246 m!6039166))

(assert (=> b!5005246 m!6039166))

(assert (=> b!5005246 m!6039314))

(assert (=> d!1610910 m!6039042))

(assert (=> d!1610910 m!6039112))

(assert (=> d!1610910 m!6039114))

(declare-fun m!6039322 () Bool)

(assert (=> d!1610910 m!6039322))

(assert (=> b!5005040 d!1610910))

(declare-fun b!5005275 () Bool)

(declare-fun e!3127685 () Regex!13795)

(declare-fun e!3127682 () Regex!13795)

(assert (=> b!5005275 (= e!3127685 e!3127682)))

(declare-fun c!854435 () Bool)

(assert (=> b!5005275 (= c!854435 ((_ is Star!13795) r!12727))))

(declare-fun b!5005276 () Bool)

(declare-fun e!3127684 () Regex!13795)

(declare-fun e!3127683 () Regex!13795)

(assert (=> b!5005276 (= e!3127684 e!3127683)))

(declare-fun c!854433 () Bool)

(assert (=> b!5005276 (= c!854433 ((_ is ElementMatch!13795) r!12727))))

(declare-fun b!5005277 () Bool)

(declare-fun call!349409 () Regex!13795)

(assert (=> b!5005277 (= e!3127682 (Concat!22588 call!349409 r!12727))))

(declare-fun bm!349402 () Bool)

(declare-fun call!349408 () Regex!13795)

(assert (=> bm!349402 (= call!349408 call!349409)))

(declare-fun b!5005278 () Bool)

(declare-fun e!3127681 () Regex!13795)

(assert (=> b!5005278 (= e!3127681 (Union!13795 (Concat!22588 call!349408 (regTwo!28102 r!12727)) EmptyLang!13795))))

(declare-fun b!5005279 () Bool)

(assert (=> b!5005279 (= e!3127684 EmptyLang!13795)))

(declare-fun b!5005280 () Bool)

(declare-fun c!854437 () Bool)

(assert (=> b!5005280 (= c!854437 ((_ is Union!13795) r!12727))))

(assert (=> b!5005280 (= e!3127683 e!3127685)))

(declare-fun call!349410 () Regex!13795)

(declare-fun bm!349403 () Bool)

(assert (=> bm!349403 (= call!349410 (derivativeStep!3979 (ite c!854437 (regTwo!28103 r!12727) (regOne!28102 r!12727)) (head!10733 (_1!34812 lt!2071026))))))

(declare-fun d!1610912 () Bool)

(declare-fun lt!2071444 () Regex!13795)

(assert (=> d!1610912 (validRegex!6092 lt!2071444)))

(assert (=> d!1610912 (= lt!2071444 e!3127684)))

(declare-fun c!854434 () Bool)

(assert (=> d!1610912 (= c!854434 (or ((_ is EmptyExpr!13795) r!12727) ((_ is EmptyLang!13795) r!12727)))))

(assert (=> d!1610912 (validRegex!6092 r!12727)))

(assert (=> d!1610912 (= (derivativeStep!3979 r!12727 (head!10733 (_1!34812 lt!2071026))) lt!2071444)))

(declare-fun b!5005281 () Bool)

(assert (=> b!5005281 (= e!3127683 (ite (= (head!10733 (_1!34812 lt!2071026)) (c!854186 r!12727)) EmptyExpr!13795 EmptyLang!13795))))

(declare-fun b!5005282 () Bool)

(assert (=> b!5005282 (= e!3127681 (Union!13795 (Concat!22588 call!349410 (regTwo!28102 r!12727)) call!349408))))

(declare-fun c!854436 () Bool)

(declare-fun bm!349404 () Bool)

(declare-fun call!349407 () Regex!13795)

(assert (=> bm!349404 (= call!349407 (derivativeStep!3979 (ite c!854437 (regOne!28103 r!12727) (ite c!854435 (reg!14124 r!12727) (ite c!854436 (regTwo!28102 r!12727) (regOne!28102 r!12727)))) (head!10733 (_1!34812 lt!2071026))))))

(declare-fun b!5005283 () Bool)

(assert (=> b!5005283 (= c!854436 (nullable!4689 (regOne!28102 r!12727)))))

(assert (=> b!5005283 (= e!3127682 e!3127681)))

(declare-fun bm!349405 () Bool)

(assert (=> bm!349405 (= call!349409 call!349407)))

(declare-fun b!5005284 () Bool)

(assert (=> b!5005284 (= e!3127685 (Union!13795 call!349407 call!349410))))

(assert (= (and d!1610912 c!854434) b!5005279))

(assert (= (and d!1610912 (not c!854434)) b!5005276))

(assert (= (and b!5005276 c!854433) b!5005281))

(assert (= (and b!5005276 (not c!854433)) b!5005280))

(assert (= (and b!5005280 c!854437) b!5005284))

(assert (= (and b!5005280 (not c!854437)) b!5005275))

(assert (= (and b!5005275 c!854435) b!5005277))

(assert (= (and b!5005275 (not c!854435)) b!5005283))

(assert (= (and b!5005283 c!854436) b!5005282))

(assert (= (and b!5005283 (not c!854436)) b!5005278))

(assert (= (or b!5005282 b!5005278) bm!349402))

(assert (= (or b!5005277 bm!349402) bm!349405))

(assert (= (or b!5005284 bm!349405) bm!349404))

(assert (= (or b!5005284 b!5005282) bm!349403))

(assert (=> bm!349403 m!6039050))

(declare-fun m!6039324 () Bool)

(assert (=> bm!349403 m!6039324))

(declare-fun m!6039326 () Bool)

(assert (=> d!1610912 m!6039326))

(assert (=> d!1610912 m!6038386))

(assert (=> bm!349404 m!6039050))

(declare-fun m!6039328 () Bool)

(assert (=> bm!349404 m!6039328))

(declare-fun m!6039330 () Bool)

(assert (=> b!5005283 m!6039330))

(assert (=> b!5005040 d!1610912))

(declare-fun d!1610914 () Bool)

(assert (=> d!1610914 (= (head!10733 (_1!34812 lt!2071026)) (h!64313 (_1!34812 lt!2071026)))))

(assert (=> b!5005040 d!1610914))

(assert (=> b!5005040 d!1610836))

(declare-fun d!1610916 () Bool)

(assert (not d!1610916))

(assert (=> b!5004833 d!1610916))

(declare-fun b!5005285 () Bool)

(declare-fun e!3127690 () Regex!13795)

(declare-fun e!3127687 () Regex!13795)

(assert (=> b!5005285 (= e!3127690 e!3127687)))

(declare-fun c!854440 () Bool)

(assert (=> b!5005285 (= c!854440 ((_ is Star!13795) r!12727))))

(declare-fun b!5005286 () Bool)

(declare-fun e!3127689 () Regex!13795)

(declare-fun e!3127688 () Regex!13795)

(assert (=> b!5005286 (= e!3127689 e!3127688)))

(declare-fun c!854438 () Bool)

(assert (=> b!5005286 (= c!854438 ((_ is ElementMatch!13795) r!12727))))

(declare-fun b!5005287 () Bool)

(declare-fun call!349413 () Regex!13795)

(assert (=> b!5005287 (= e!3127687 (Concat!22588 call!349413 r!12727))))

(declare-fun bm!349406 () Bool)

(declare-fun call!349412 () Regex!13795)

(assert (=> bm!349406 (= call!349412 call!349413)))

(declare-fun b!5005288 () Bool)

(declare-fun e!3127686 () Regex!13795)

(assert (=> b!5005288 (= e!3127686 (Union!13795 (Concat!22588 call!349412 (regTwo!28102 r!12727)) EmptyLang!13795))))

(declare-fun b!5005289 () Bool)

(assert (=> b!5005289 (= e!3127689 EmptyLang!13795)))

(declare-fun b!5005290 () Bool)

(declare-fun c!854442 () Bool)

(assert (=> b!5005290 (= c!854442 ((_ is Union!13795) r!12727))))

(assert (=> b!5005290 (= e!3127688 e!3127690)))

(declare-fun bm!349407 () Bool)

(declare-fun call!349414 () Regex!13795)

(assert (=> bm!349407 (= call!349414 (derivativeStep!3979 (ite c!854442 (regTwo!28103 r!12727) (regOne!28102 r!12727)) call!349374))))

(declare-fun d!1610918 () Bool)

(declare-fun lt!2071445 () Regex!13795)

(assert (=> d!1610918 (validRegex!6092 lt!2071445)))

(assert (=> d!1610918 (= lt!2071445 e!3127689)))

(declare-fun c!854439 () Bool)

(assert (=> d!1610918 (= c!854439 (or ((_ is EmptyExpr!13795) r!12727) ((_ is EmptyLang!13795) r!12727)))))

(assert (=> d!1610918 (validRegex!6092 r!12727)))

(assert (=> d!1610918 (= (derivativeStep!3979 r!12727 call!349374) lt!2071445)))

(declare-fun b!5005291 () Bool)

(assert (=> b!5005291 (= e!3127688 (ite (= call!349374 (c!854186 r!12727)) EmptyExpr!13795 EmptyLang!13795))))

(declare-fun b!5005292 () Bool)

(assert (=> b!5005292 (= e!3127686 (Union!13795 (Concat!22588 call!349414 (regTwo!28102 r!12727)) call!349412))))

(declare-fun bm!349408 () Bool)

(declare-fun call!349411 () Regex!13795)

(declare-fun c!854441 () Bool)

(assert (=> bm!349408 (= call!349411 (derivativeStep!3979 (ite c!854442 (regOne!28103 r!12727) (ite c!854440 (reg!14124 r!12727) (ite c!854441 (regTwo!28102 r!12727) (regOne!28102 r!12727)))) call!349374))))

(declare-fun b!5005293 () Bool)

(assert (=> b!5005293 (= c!854441 (nullable!4689 (regOne!28102 r!12727)))))

(assert (=> b!5005293 (= e!3127687 e!3127686)))

(declare-fun bm!349409 () Bool)

(assert (=> bm!349409 (= call!349413 call!349411)))

(declare-fun b!5005294 () Bool)

(assert (=> b!5005294 (= e!3127690 (Union!13795 call!349411 call!349414))))

(assert (= (and d!1610918 c!854439) b!5005289))

(assert (= (and d!1610918 (not c!854439)) b!5005286))

(assert (= (and b!5005286 c!854438) b!5005291))

(assert (= (and b!5005286 (not c!854438)) b!5005290))

(assert (= (and b!5005290 c!854442) b!5005294))

(assert (= (and b!5005290 (not c!854442)) b!5005285))

(assert (= (and b!5005285 c!854440) b!5005287))

(assert (= (and b!5005285 (not c!854440)) b!5005293))

(assert (= (and b!5005293 c!854441) b!5005292))

(assert (= (and b!5005293 (not c!854441)) b!5005288))

(assert (= (or b!5005292 b!5005288) bm!349406))

(assert (= (or b!5005287 bm!349406) bm!349409))

(assert (= (or b!5005294 bm!349409) bm!349408))

(assert (= (or b!5005294 b!5005292) bm!349407))

(declare-fun m!6039332 () Bool)

(assert (=> bm!349407 m!6039332))

(declare-fun m!6039334 () Bool)

(assert (=> d!1610918 m!6039334))

(assert (=> d!1610918 m!6038386))

(declare-fun m!6039336 () Bool)

(assert (=> bm!349408 m!6039336))

(assert (=> b!5005293 m!6039330))

(assert (=> bm!349373 d!1610918))

(declare-fun d!1610920 () Bool)

(assert (=> d!1610920 (= (head!10733 (take!654 lt!2071019 lt!2071014)) (h!64313 (take!654 lt!2071019 lt!2071014)))))

(assert (=> b!5004829 d!1610920))

(declare-fun d!1610922 () Bool)

(assert (=> d!1610922 (= (head!10733 lt!2071019) (h!64313 lt!2071019))))

(assert (=> b!5004829 d!1610922))

(declare-fun b!5005295 () Bool)

(declare-fun e!3127692 () Bool)

(declare-fun e!3127694 () Bool)

(assert (=> b!5005295 (= e!3127692 e!3127694)))

(declare-fun res!2135600 () Bool)

(assert (=> b!5005295 (= res!2135600 (not (nullable!4689 (reg!14124 lt!2071271))))))

(assert (=> b!5005295 (=> (not res!2135600) (not e!3127694))))

(declare-fun b!5005296 () Bool)

(declare-fun e!3127695 () Bool)

(assert (=> b!5005296 (= e!3127692 e!3127695)))

(declare-fun c!854443 () Bool)

(assert (=> b!5005296 (= c!854443 ((_ is Union!13795) lt!2071271))))

(declare-fun c!854444 () Bool)

(declare-fun bm!349410 () Bool)

(declare-fun call!349415 () Bool)

(assert (=> bm!349410 (= call!349415 (validRegex!6092 (ite c!854444 (reg!14124 lt!2071271) (ite c!854443 (regTwo!28103 lt!2071271) (regOne!28102 lt!2071271)))))))

(declare-fun b!5005297 () Bool)

(declare-fun res!2135599 () Bool)

(declare-fun e!3127691 () Bool)

(assert (=> b!5005297 (=> (not res!2135599) (not e!3127691))))

(declare-fun call!349417 () Bool)

(assert (=> b!5005297 (= res!2135599 call!349417)))

(assert (=> b!5005297 (= e!3127695 e!3127691)))

(declare-fun b!5005298 () Bool)

(declare-fun res!2135601 () Bool)

(declare-fun e!3127697 () Bool)

(assert (=> b!5005298 (=> res!2135601 e!3127697)))

(assert (=> b!5005298 (= res!2135601 (not ((_ is Concat!22588) lt!2071271)))))

(assert (=> b!5005298 (= e!3127695 e!3127697)))

(declare-fun b!5005299 () Bool)

(declare-fun call!349416 () Bool)

(assert (=> b!5005299 (= e!3127691 call!349416)))

(declare-fun b!5005300 () Bool)

(declare-fun e!3127696 () Bool)

(assert (=> b!5005300 (= e!3127697 e!3127696)))

(declare-fun res!2135602 () Bool)

(assert (=> b!5005300 (=> (not res!2135602) (not e!3127696))))

(assert (=> b!5005300 (= res!2135602 call!349416)))

(declare-fun b!5005301 () Bool)

(assert (=> b!5005301 (= e!3127694 call!349415)))

(declare-fun b!5005302 () Bool)

(declare-fun e!3127693 () Bool)

(assert (=> b!5005302 (= e!3127693 e!3127692)))

(assert (=> b!5005302 (= c!854444 ((_ is Star!13795) lt!2071271))))

(declare-fun d!1610924 () Bool)

(declare-fun res!2135598 () Bool)

(assert (=> d!1610924 (=> res!2135598 e!3127693)))

(assert (=> d!1610924 (= res!2135598 ((_ is ElementMatch!13795) lt!2071271))))

(assert (=> d!1610924 (= (validRegex!6092 lt!2071271) e!3127693)))

(declare-fun b!5005303 () Bool)

(assert (=> b!5005303 (= e!3127696 call!349417)))

(declare-fun bm!349411 () Bool)

(assert (=> bm!349411 (= call!349417 (validRegex!6092 (ite c!854443 (regOne!28103 lt!2071271) (regTwo!28102 lt!2071271))))))

(declare-fun bm!349412 () Bool)

(assert (=> bm!349412 (= call!349416 call!349415)))

(assert (= (and d!1610924 (not res!2135598)) b!5005302))

(assert (= (and b!5005302 c!854444) b!5005295))

(assert (= (and b!5005302 (not c!854444)) b!5005296))

(assert (= (and b!5005295 res!2135600) b!5005301))

(assert (= (and b!5005296 c!854443) b!5005297))

(assert (= (and b!5005296 (not c!854443)) b!5005298))

(assert (= (and b!5005297 res!2135599) b!5005299))

(assert (= (and b!5005298 (not res!2135601)) b!5005300))

(assert (= (and b!5005300 res!2135602) b!5005303))

(assert (= (or b!5005299 b!5005300) bm!349412))

(assert (= (or b!5005297 b!5005303) bm!349411))

(assert (= (or b!5005301 bm!349412) bm!349410))

(declare-fun m!6039338 () Bool)

(assert (=> b!5005295 m!6039338))

(declare-fun m!6039340 () Bool)

(assert (=> bm!349410 m!6039340))

(declare-fun m!6039342 () Bool)

(assert (=> bm!349411 m!6039342))

(assert (=> d!1610760 d!1610924))

(declare-fun bs!1185958 () Bool)

(declare-fun d!1610926 () Bool)

(assert (= bs!1185958 (and d!1610926 d!1610680)))

(declare-fun lambda!248378 () Int)

(assert (=> bs!1185958 (= lambda!248378 lambda!248369)))

(declare-fun b!5005324 () Bool)

(declare-fun e!3127711 () Regex!13795)

(assert (=> b!5005324 (= e!3127711 (Union!13795 (h!64314 (unfocusZipperList!94 lt!2071007)) (generalisedUnion!581 (t!370336 (unfocusZipperList!94 lt!2071007)))))))

(declare-fun b!5005325 () Bool)

(assert (=> b!5005325 (= e!3127711 EmptyLang!13795)))

(declare-fun b!5005326 () Bool)

(declare-fun e!3127712 () Bool)

(declare-fun lt!2071448 () Regex!13795)

(declare-fun isEmptyLang!727 (Regex!13795) Bool)

(assert (=> b!5005326 (= e!3127712 (isEmptyLang!727 lt!2071448))))

(declare-fun e!3127714 () Bool)

(assert (=> d!1610926 e!3127714))

(declare-fun res!2135607 () Bool)

(assert (=> d!1610926 (=> (not res!2135607) (not e!3127714))))

(assert (=> d!1610926 (= res!2135607 (validRegex!6092 lt!2071448))))

(declare-fun e!3127713 () Regex!13795)

(assert (=> d!1610926 (= lt!2071448 e!3127713)))

(declare-fun c!854456 () Bool)

(declare-fun e!3127710 () Bool)

(assert (=> d!1610926 (= c!854456 e!3127710)))

(declare-fun res!2135608 () Bool)

(assert (=> d!1610926 (=> (not res!2135608) (not e!3127710))))

(assert (=> d!1610926 (= res!2135608 ((_ is Cons!57866) (unfocusZipperList!94 lt!2071007)))))

(assert (=> d!1610926 (forall!13364 (unfocusZipperList!94 lt!2071007) lambda!248378)))

(assert (=> d!1610926 (= (generalisedUnion!581 (unfocusZipperList!94 lt!2071007)) lt!2071448)))

(declare-fun b!5005327 () Bool)

(assert (=> b!5005327 (= e!3127714 e!3127712)))

(declare-fun c!854454 () Bool)

(declare-fun isEmpty!31336 (List!57990) Bool)

(assert (=> b!5005327 (= c!854454 (isEmpty!31336 (unfocusZipperList!94 lt!2071007)))))

(declare-fun b!5005328 () Bool)

(assert (=> b!5005328 (= e!3127713 e!3127711)))

(declare-fun c!854455 () Bool)

(assert (=> b!5005328 (= c!854455 ((_ is Cons!57866) (unfocusZipperList!94 lt!2071007)))))

(declare-fun b!5005329 () Bool)

(declare-fun e!3127715 () Bool)

(declare-fun isUnion!159 (Regex!13795) Bool)

(assert (=> b!5005329 (= e!3127715 (isUnion!159 lt!2071448))))

(declare-fun b!5005330 () Bool)

(assert (=> b!5005330 (= e!3127712 e!3127715)))

(declare-fun c!854453 () Bool)

(declare-fun tail!9867 (List!57990) List!57990)

(assert (=> b!5005330 (= c!854453 (isEmpty!31336 (tail!9867 (unfocusZipperList!94 lt!2071007))))))

(declare-fun b!5005331 () Bool)

(assert (=> b!5005331 (= e!3127710 (isEmpty!31336 (t!370336 (unfocusZipperList!94 lt!2071007))))))

(declare-fun b!5005332 () Bool)

(declare-fun head!10734 (List!57990) Regex!13795)

(assert (=> b!5005332 (= e!3127715 (= lt!2071448 (head!10734 (unfocusZipperList!94 lt!2071007))))))

(declare-fun b!5005333 () Bool)

(assert (=> b!5005333 (= e!3127713 (h!64314 (unfocusZipperList!94 lt!2071007)))))

(assert (= (and d!1610926 res!2135608) b!5005331))

(assert (= (and d!1610926 c!854456) b!5005333))

(assert (= (and d!1610926 (not c!854456)) b!5005328))

(assert (= (and b!5005328 c!854455) b!5005324))

(assert (= (and b!5005328 (not c!854455)) b!5005325))

(assert (= (and d!1610926 res!2135607) b!5005327))

(assert (= (and b!5005327 c!854454) b!5005326))

(assert (= (and b!5005327 (not c!854454)) b!5005330))

(assert (= (and b!5005330 c!854453) b!5005332))

(assert (= (and b!5005330 (not c!854453)) b!5005329))

(declare-fun m!6039344 () Bool)

(assert (=> d!1610926 m!6039344))

(assert (=> d!1610926 m!6038874))

(declare-fun m!6039346 () Bool)

(assert (=> d!1610926 m!6039346))

(declare-fun m!6039348 () Bool)

(assert (=> b!5005331 m!6039348))

(declare-fun m!6039350 () Bool)

(assert (=> b!5005326 m!6039350))

(declare-fun m!6039352 () Bool)

(assert (=> b!5005329 m!6039352))

(assert (=> b!5005327 m!6038874))

(declare-fun m!6039354 () Bool)

(assert (=> b!5005327 m!6039354))

(assert (=> b!5005332 m!6038874))

(declare-fun m!6039356 () Bool)

(assert (=> b!5005332 m!6039356))

(assert (=> b!5005330 m!6038874))

(declare-fun m!6039358 () Bool)

(assert (=> b!5005330 m!6039358))

(assert (=> b!5005330 m!6039358))

(declare-fun m!6039360 () Bool)

(assert (=> b!5005330 m!6039360))

(declare-fun m!6039362 () Bool)

(assert (=> b!5005324 m!6039362))

(assert (=> d!1610760 d!1610926))

(declare-fun bs!1185959 () Bool)

(declare-fun d!1610928 () Bool)

(assert (= bs!1185959 (and d!1610928 d!1610680)))

(declare-fun lambda!248381 () Int)

(assert (=> bs!1185959 (= lambda!248381 lambda!248369)))

(declare-fun bs!1185960 () Bool)

(assert (= bs!1185960 (and d!1610928 d!1610926)))

(assert (=> bs!1185960 (= lambda!248381 lambda!248378)))

(declare-fun lt!2071451 () List!57990)

(assert (=> d!1610928 (forall!13364 lt!2071451 lambda!248381)))

(declare-fun e!3127718 () List!57990)

(assert (=> d!1610928 (= lt!2071451 e!3127718)))

(declare-fun c!854459 () Bool)

(assert (=> d!1610928 (= c!854459 ((_ is Cons!57867) lt!2071007))))

(assert (=> d!1610928 (= (unfocusZipperList!94 lt!2071007) lt!2071451)))

(declare-fun b!5005338 () Bool)

(declare-fun generalisedConcat!345 (List!57990) Regex!13795)

(assert (=> b!5005338 (= e!3127718 (Cons!57866 (generalisedConcat!345 (exprs!3720 (h!64315 lt!2071007))) (unfocusZipperList!94 (t!370337 lt!2071007))))))

(declare-fun b!5005339 () Bool)

(assert (=> b!5005339 (= e!3127718 Nil!57866)))

(assert (= (and d!1610928 c!854459) b!5005338))

(assert (= (and d!1610928 (not c!854459)) b!5005339))

(declare-fun m!6039364 () Bool)

(assert (=> d!1610928 m!6039364))

(declare-fun m!6039366 () Bool)

(assert (=> b!5005338 m!6039366))

(declare-fun m!6039368 () Bool)

(assert (=> b!5005338 m!6039368))

(assert (=> d!1610760 d!1610928))

(declare-fun d!1610930 () Bool)

(assert (=> d!1610930 (= (isEmpty!31333 (tail!9866 lt!2071021)) ((_ is Nil!57865) (tail!9866 lt!2071021)))))

(assert (=> b!5005002 d!1610930))

(declare-fun d!1610932 () Bool)

(assert (=> d!1610932 (= (tail!9866 lt!2071021) (t!370335 lt!2071021))))

(assert (=> b!5005002 d!1610932))

(declare-fun b!5005340 () Bool)

(declare-fun e!3127721 () List!57989)

(assert (=> b!5005340 (= e!3127721 (Cons!57865 (h!64313 (t!370335 lt!2071025)) (take!654 (t!370335 (t!370335 lt!2071025)) (- (- lt!2071005 1) 1))))))

(declare-fun b!5005341 () Bool)

(declare-fun e!3127720 () Bool)

(declare-fun lt!2071452 () List!57989)

(declare-fun e!3127722 () Int)

(assert (=> b!5005341 (= e!3127720 (= (size!38465 lt!2071452) e!3127722))))

(declare-fun c!854460 () Bool)

(assert (=> b!5005341 (= c!854460 (<= (- lt!2071005 1) 0))))

(declare-fun b!5005342 () Bool)

(assert (=> b!5005342 (= e!3127721 Nil!57865)))

(declare-fun b!5005343 () Bool)

(declare-fun e!3127719 () Int)

(assert (=> b!5005343 (= e!3127722 e!3127719)))

(declare-fun c!854461 () Bool)

(assert (=> b!5005343 (= c!854461 (>= (- lt!2071005 1) (size!38465 (t!370335 lt!2071025))))))

(declare-fun d!1610934 () Bool)

(assert (=> d!1610934 e!3127720))

(declare-fun res!2135609 () Bool)

(assert (=> d!1610934 (=> (not res!2135609) (not e!3127720))))

(assert (=> d!1610934 (= res!2135609 (= ((_ map implies) (content!10251 lt!2071452) (content!10251 (t!370335 lt!2071025))) ((as const (InoxSet C!27840)) true)))))

(assert (=> d!1610934 (= lt!2071452 e!3127721)))

(declare-fun c!854462 () Bool)

(assert (=> d!1610934 (= c!854462 (or ((_ is Nil!57865) (t!370335 lt!2071025)) (<= (- lt!2071005 1) 0)))))

(assert (=> d!1610934 (= (take!654 (t!370335 lt!2071025) (- lt!2071005 1)) lt!2071452)))

(declare-fun b!5005344 () Bool)

(assert (=> b!5005344 (= e!3127719 (- lt!2071005 1))))

(declare-fun b!5005345 () Bool)

(assert (=> b!5005345 (= e!3127719 (size!38465 (t!370335 lt!2071025)))))

(declare-fun b!5005346 () Bool)

(assert (=> b!5005346 (= e!3127722 0)))

(assert (= (and d!1610934 c!854462) b!5005342))

(assert (= (and d!1610934 (not c!854462)) b!5005340))

(assert (= (and d!1610934 res!2135609) b!5005341))

(assert (= (and b!5005341 c!854460) b!5005346))

(assert (= (and b!5005341 (not c!854460)) b!5005343))

(assert (= (and b!5005343 c!854461) b!5005345))

(assert (= (and b!5005343 (not c!854461)) b!5005344))

(declare-fun m!6039370 () Bool)

(assert (=> b!5005341 m!6039370))

(declare-fun m!6039372 () Bool)

(assert (=> b!5005343 m!6039372))

(declare-fun m!6039374 () Bool)

(assert (=> b!5005340 m!6039374))

(assert (=> b!5005345 m!6039372))

(declare-fun m!6039376 () Bool)

(assert (=> d!1610934 m!6039376))

(declare-fun m!6039378 () Bool)

(assert (=> d!1610934 m!6039378))

(assert (=> b!5004751 d!1610934))

(declare-fun d!1610936 () Bool)

(declare-fun lt!2071453 () Int)

(assert (=> d!1610936 (>= lt!2071453 0)))

(declare-fun e!3127723 () Int)

(assert (=> d!1610936 (= lt!2071453 e!3127723)))

(declare-fun c!854463 () Bool)

(assert (=> d!1610936 (= c!854463 ((_ is Nil!57865) (list!18624 input!5597)))))

(assert (=> d!1610936 (= (size!38465 (list!18624 input!5597)) lt!2071453)))

(declare-fun b!5005347 () Bool)

(assert (=> b!5005347 (= e!3127723 0)))

(declare-fun b!5005348 () Bool)

(assert (=> b!5005348 (= e!3127723 (+ 1 (size!38465 (t!370335 (list!18624 input!5597)))))))

(assert (= (and d!1610936 c!854463) b!5005347))

(assert (= (and d!1610936 (not c!854463)) b!5005348))

(declare-fun m!6039380 () Bool)

(assert (=> b!5005348 m!6039380))

(assert (=> d!1610650 d!1610936))

(assert (=> d!1610650 d!1610758))

(declare-fun d!1610938 () Bool)

(declare-fun lt!2071454 () Int)

(assert (=> d!1610938 (= lt!2071454 (size!38465 (list!18626 (c!854185 input!5597))))))

(assert (=> d!1610938 (= lt!2071454 (ite ((_ is Empty!15314) (c!854185 input!5597)) 0 (ite ((_ is Leaf!25420) (c!854185 input!5597)) (csize!30859 (c!854185 input!5597)) (csize!30858 (c!854185 input!5597)))))))

(assert (=> d!1610938 (= (size!38467 (c!854185 input!5597)) lt!2071454)))

(declare-fun bs!1185961 () Bool)

(assert (= bs!1185961 d!1610938))

(assert (=> bs!1185961 m!6038870))

(assert (=> bs!1185961 m!6038870))

(declare-fun m!6039382 () Bool)

(assert (=> bs!1185961 m!6039382))

(assert (=> d!1610650 d!1610938))

(declare-fun d!1610940 () Bool)

(declare-fun c!854464 () Bool)

(assert (=> d!1610940 (= c!854464 ((_ is Nil!57865) lt!2071291))))

(declare-fun e!3127724 () (InoxSet C!27840))

(assert (=> d!1610940 (= (content!10251 lt!2071291) e!3127724)))

(declare-fun b!5005349 () Bool)

(assert (=> b!5005349 (= e!3127724 ((as const (Array C!27840 Bool)) false))))

(declare-fun b!5005350 () Bool)

(assert (=> b!5005350 (= e!3127724 ((_ map or) (store ((as const (Array C!27840 Bool)) false) (h!64313 lt!2071291) true) (content!10251 (t!370335 lt!2071291))))))

(assert (= (and d!1610940 c!854464) b!5005349))

(assert (= (and d!1610940 (not c!854464)) b!5005350))

(declare-fun m!6039384 () Bool)

(assert (=> b!5005350 m!6039384))

(declare-fun m!6039386 () Bool)

(assert (=> b!5005350 m!6039386))

(assert (=> d!1610778 d!1610940))

(declare-fun d!1610942 () Bool)

(declare-fun c!854465 () Bool)

(assert (=> d!1610942 (= c!854465 ((_ is Nil!57865) lt!2071019))))

(declare-fun e!3127725 () (InoxSet C!27840))

(assert (=> d!1610942 (= (content!10251 lt!2071019) e!3127725)))

(declare-fun b!5005351 () Bool)

(assert (=> b!5005351 (= e!3127725 ((as const (Array C!27840 Bool)) false))))

(declare-fun b!5005352 () Bool)

(assert (=> b!5005352 (= e!3127725 ((_ map or) (store ((as const (Array C!27840 Bool)) false) (h!64313 lt!2071019) true) (content!10251 (t!370335 lt!2071019))))))

(assert (= (and d!1610942 c!854465) b!5005351))

(assert (= (and d!1610942 (not c!854465)) b!5005352))

(declare-fun m!6039388 () Bool)

(assert (=> b!5005352 m!6039388))

(declare-fun m!6039390 () Bool)

(assert (=> b!5005352 m!6039390))

(assert (=> d!1610778 d!1610942))

(declare-fun d!1610944 () Bool)

(declare-fun nullableFct!1269 (Regex!13795) Bool)

(assert (=> d!1610944 (= (nullable!4689 r!12727) (nullableFct!1269 r!12727))))

(declare-fun bs!1185962 () Bool)

(assert (= bs!1185962 d!1610944))

(declare-fun m!6039392 () Bool)

(assert (=> bs!1185962 m!6039392))

(assert (=> b!5005045 d!1610944))

(declare-fun b!5005353 () Bool)

(declare-fun e!3127728 () List!57989)

(declare-fun e!3127730 () List!57989)

(assert (=> b!5005353 (= e!3127728 e!3127730)))

(declare-fun c!854469 () Bool)

(assert (=> b!5005353 (= c!854469 (<= (- lt!2071014 1) 0))))

(declare-fun b!5005355 () Bool)

(declare-fun e!3127726 () Int)

(assert (=> b!5005355 (= e!3127726 0)))

(declare-fun b!5005356 () Bool)

(declare-fun e!3127729 () Bool)

(declare-fun lt!2071455 () List!57989)

(declare-fun e!3127727 () Int)

(assert (=> b!5005356 (= e!3127729 (= (size!38465 lt!2071455) e!3127727))))

(declare-fun c!854467 () Bool)

(assert (=> b!5005356 (= c!854467 (<= (- lt!2071014 1) 0))))

(declare-fun b!5005357 () Bool)

(declare-fun call!349418 () Int)

(assert (=> b!5005357 (= e!3127727 call!349418)))

(declare-fun b!5005358 () Bool)

(assert (=> b!5005358 (= e!3127730 (t!370335 lt!2071019))))

(declare-fun b!5005359 () Bool)

(assert (=> b!5005359 (= e!3127727 e!3127726)))

(declare-fun c!854468 () Bool)

(assert (=> b!5005359 (= c!854468 (>= (- lt!2071014 1) call!349418))))

(declare-fun b!5005360 () Bool)

(assert (=> b!5005360 (= e!3127728 Nil!57865)))

(declare-fun bm!349413 () Bool)

(assert (=> bm!349413 (= call!349418 (size!38465 (t!370335 lt!2071019)))))

(declare-fun b!5005361 () Bool)

(assert (=> b!5005361 (= e!3127730 (drop!2458 (t!370335 (t!370335 lt!2071019)) (- (- lt!2071014 1) 1)))))

(declare-fun b!5005354 () Bool)

(assert (=> b!5005354 (= e!3127726 (- call!349418 (- lt!2071014 1)))))

(declare-fun d!1610946 () Bool)

(assert (=> d!1610946 e!3127729))

(declare-fun res!2135610 () Bool)

(assert (=> d!1610946 (=> (not res!2135610) (not e!3127729))))

(assert (=> d!1610946 (= res!2135610 (= ((_ map implies) (content!10251 lt!2071455) (content!10251 (t!370335 lt!2071019))) ((as const (InoxSet C!27840)) true)))))

(assert (=> d!1610946 (= lt!2071455 e!3127728)))

(declare-fun c!854466 () Bool)

(assert (=> d!1610946 (= c!854466 ((_ is Nil!57865) (t!370335 lt!2071019)))))

(assert (=> d!1610946 (= (drop!2458 (t!370335 lt!2071019) (- lt!2071014 1)) lt!2071455)))

(assert (= (and d!1610946 c!854466) b!5005360))

(assert (= (and d!1610946 (not c!854466)) b!5005353))

(assert (= (and b!5005353 c!854469) b!5005358))

(assert (= (and b!5005353 (not c!854469)) b!5005361))

(assert (= (and d!1610946 res!2135610) b!5005356))

(assert (= (and b!5005356 c!854467) b!5005357))

(assert (= (and b!5005356 (not c!854467)) b!5005359))

(assert (= (and b!5005359 c!854468) b!5005355))

(assert (= (and b!5005359 (not c!854468)) b!5005354))

(assert (= (or b!5005357 b!5005359 b!5005354) bm!349413))

(declare-fun m!6039394 () Bool)

(assert (=> b!5005356 m!6039394))

(assert (=> bm!349413 m!6039222))

(declare-fun m!6039396 () Bool)

(assert (=> b!5005361 m!6039396))

(declare-fun m!6039398 () Bool)

(assert (=> d!1610946 m!6039398))

(assert (=> d!1610946 m!6039390))

(assert (=> b!5004784 d!1610946))

(declare-fun d!1610948 () Bool)

(declare-fun res!2135617 () Bool)

(declare-fun e!3127733 () Bool)

(assert (=> d!1610948 (=> (not res!2135617) (not e!3127733))))

(assert (=> d!1610948 (= res!2135617 (= (csize!30858 (c!854185 input!5597)) (+ (size!38467 (left!42305 (c!854185 input!5597))) (size!38467 (right!42635 (c!854185 input!5597))))))))

(assert (=> d!1610948 (= (inv!76034 (c!854185 input!5597)) e!3127733)))

(declare-fun b!5005368 () Bool)

(declare-fun res!2135618 () Bool)

(assert (=> b!5005368 (=> (not res!2135618) (not e!3127733))))

(assert (=> b!5005368 (= res!2135618 (and (not (= (left!42305 (c!854185 input!5597)) Empty!15314)) (not (= (right!42635 (c!854185 input!5597)) Empty!15314))))))

(declare-fun b!5005369 () Bool)

(declare-fun res!2135619 () Bool)

(assert (=> b!5005369 (=> (not res!2135619) (not e!3127733))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!2033 (Conc!15314) Int)

(assert (=> b!5005369 (= res!2135619 (= (cheight!15525 (c!854185 input!5597)) (+ (max!0 (height!2033 (left!42305 (c!854185 input!5597))) (height!2033 (right!42635 (c!854185 input!5597)))) 1)))))

(declare-fun b!5005370 () Bool)

(assert (=> b!5005370 (= e!3127733 (<= 0 (cheight!15525 (c!854185 input!5597))))))

(assert (= (and d!1610948 res!2135617) b!5005368))

(assert (= (and b!5005368 res!2135618) b!5005369))

(assert (= (and b!5005369 res!2135619) b!5005370))

(declare-fun m!6039400 () Bool)

(assert (=> d!1610948 m!6039400))

(declare-fun m!6039402 () Bool)

(assert (=> d!1610948 m!6039402))

(declare-fun m!6039404 () Bool)

(assert (=> b!5005369 m!6039404))

(declare-fun m!6039406 () Bool)

(assert (=> b!5005369 m!6039406))

(assert (=> b!5005369 m!6039404))

(assert (=> b!5005369 m!6039406))

(declare-fun m!6039408 () Bool)

(assert (=> b!5005369 m!6039408))

(assert (=> b!5005030 d!1610948))

(declare-fun d!1610950 () Bool)

(declare-fun c!854470 () Bool)

(assert (=> d!1610950 (= c!854470 ((_ is Node!15314) (left!42305 (c!854185 totalInput!1012))))))

(declare-fun e!3127734 () Bool)

(assert (=> d!1610950 (= (inv!76029 (left!42305 (c!854185 totalInput!1012))) e!3127734)))

(declare-fun b!5005371 () Bool)

(assert (=> b!5005371 (= e!3127734 (inv!76034 (left!42305 (c!854185 totalInput!1012))))))

(declare-fun b!5005372 () Bool)

(declare-fun e!3127735 () Bool)

(assert (=> b!5005372 (= e!3127734 e!3127735)))

(declare-fun res!2135620 () Bool)

(assert (=> b!5005372 (= res!2135620 (not ((_ is Leaf!25420) (left!42305 (c!854185 totalInput!1012)))))))

(assert (=> b!5005372 (=> res!2135620 e!3127735)))

(declare-fun b!5005373 () Bool)

(assert (=> b!5005373 (= e!3127735 (inv!76035 (left!42305 (c!854185 totalInput!1012))))))

(assert (= (and d!1610950 c!854470) b!5005371))

(assert (= (and d!1610950 (not c!854470)) b!5005372))

(assert (= (and b!5005372 (not res!2135620)) b!5005373))

(declare-fun m!6039410 () Bool)

(assert (=> b!5005371 m!6039410))

(declare-fun m!6039412 () Bool)

(assert (=> b!5005373 m!6039412))

(assert (=> b!5005093 d!1610950))

(declare-fun d!1610952 () Bool)

(declare-fun c!854471 () Bool)

(assert (=> d!1610952 (= c!854471 ((_ is Node!15314) (right!42635 (c!854185 totalInput!1012))))))

(declare-fun e!3127736 () Bool)

(assert (=> d!1610952 (= (inv!76029 (right!42635 (c!854185 totalInput!1012))) e!3127736)))

(declare-fun b!5005374 () Bool)

(assert (=> b!5005374 (= e!3127736 (inv!76034 (right!42635 (c!854185 totalInput!1012))))))

(declare-fun b!5005375 () Bool)

(declare-fun e!3127737 () Bool)

(assert (=> b!5005375 (= e!3127736 e!3127737)))

(declare-fun res!2135621 () Bool)

(assert (=> b!5005375 (= res!2135621 (not ((_ is Leaf!25420) (right!42635 (c!854185 totalInput!1012)))))))

(assert (=> b!5005375 (=> res!2135621 e!3127737)))

(declare-fun b!5005376 () Bool)

(assert (=> b!5005376 (= e!3127737 (inv!76035 (right!42635 (c!854185 totalInput!1012))))))

(assert (= (and d!1610952 c!854471) b!5005374))

(assert (= (and d!1610952 (not c!854471)) b!5005375))

(assert (= (and b!5005375 (not res!2135621)) b!5005376))

(declare-fun m!6039414 () Bool)

(assert (=> b!5005374 m!6039414))

(declare-fun m!6039416 () Bool)

(assert (=> b!5005376 m!6039416))

(assert (=> b!5005093 d!1610952))

(assert (=> d!1610786 d!1610828))

(assert (=> d!1610786 d!1610776))

(assert (=> d!1610786 d!1610784))

(assert (=> d!1610786 d!1610792))

(declare-fun d!1610954 () Bool)

(assert (=> d!1610954 (= (isEmpty!31333 (_1!34812 (findLongestMatchInner!1984 r!12727 Nil!57865 (size!38465 Nil!57865) lt!2071008 lt!2071008 (size!38465 lt!2071008)))) ((_ is Nil!57865) (_1!34812 (findLongestMatchInner!1984 r!12727 Nil!57865 (size!38465 Nil!57865) lt!2071008 lt!2071008 (size!38465 lt!2071008)))))))

(assert (=> d!1610786 d!1610954))

(declare-fun d!1610956 () Bool)

(declare-fun e!3127740 () Bool)

(assert (=> d!1610956 e!3127740))

(declare-fun res!2135624 () Bool)

(assert (=> d!1610956 (=> res!2135624 e!3127740)))

(assert (=> d!1610956 (= res!2135624 (isEmpty!31333 (_1!34812 (findLongestMatchInner!1984 r!12727 Nil!57865 (size!38465 Nil!57865) lt!2071008 lt!2071008 (size!38465 lt!2071008)))))))

(assert (=> d!1610956 true))

(declare-fun _$92!560 () Unit!149035)

(assert (=> d!1610956 (= (choose!37019 r!12727 lt!2071008) _$92!560)))

(declare-fun b!5005379 () Bool)

(assert (=> b!5005379 (= e!3127740 (matchR!6759 r!12727 (_1!34812 (findLongestMatchInner!1984 r!12727 Nil!57865 (size!38465 Nil!57865) lt!2071008 lt!2071008 (size!38465 lt!2071008)))))))

(assert (= (and d!1610956 (not res!2135624)) b!5005379))

(assert (=> d!1610956 m!6038316))

(assert (=> d!1610956 m!6038310))

(assert (=> d!1610956 m!6038316))

(assert (=> d!1610956 m!6038310))

(assert (=> d!1610956 m!6038324))

(assert (=> d!1610956 m!6038958))

(assert (=> b!5005379 m!6038316))

(assert (=> b!5005379 m!6038310))

(assert (=> b!5005379 m!6038316))

(assert (=> b!5005379 m!6038310))

(assert (=> b!5005379 m!6038324))

(assert (=> b!5005379 m!6038960))

(assert (=> d!1610786 d!1610956))

(declare-fun b!5005380 () Bool)

(declare-fun e!3127742 () List!57989)

(assert (=> b!5005380 (= e!3127742 (_2!34812 lt!2071026))))

(declare-fun b!5005381 () Bool)

(assert (=> b!5005381 (= e!3127742 (Cons!57865 (h!64313 (t!370335 (_1!34812 lt!2071026))) (++!12641 (t!370335 (t!370335 (_1!34812 lt!2071026))) (_2!34812 lt!2071026))))))

(declare-fun b!5005382 () Bool)

(declare-fun res!2135626 () Bool)

(declare-fun e!3127741 () Bool)

(assert (=> b!5005382 (=> (not res!2135626) (not e!3127741))))

(declare-fun lt!2071456 () List!57989)

(assert (=> b!5005382 (= res!2135626 (= (size!38465 lt!2071456) (+ (size!38465 (t!370335 (_1!34812 lt!2071026))) (size!38465 (_2!34812 lt!2071026)))))))

(declare-fun d!1610958 () Bool)

(assert (=> d!1610958 e!3127741))

(declare-fun res!2135625 () Bool)

(assert (=> d!1610958 (=> (not res!2135625) (not e!3127741))))

(assert (=> d!1610958 (= res!2135625 (= (content!10251 lt!2071456) ((_ map or) (content!10251 (t!370335 (_1!34812 lt!2071026))) (content!10251 (_2!34812 lt!2071026)))))))

(assert (=> d!1610958 (= lt!2071456 e!3127742)))

(declare-fun c!854472 () Bool)

(assert (=> d!1610958 (= c!854472 ((_ is Nil!57865) (t!370335 (_1!34812 lt!2071026))))))

(assert (=> d!1610958 (= (++!12641 (t!370335 (_1!34812 lt!2071026)) (_2!34812 lt!2071026)) lt!2071456)))

(declare-fun b!5005383 () Bool)

(assert (=> b!5005383 (= e!3127741 (or (not (= (_2!34812 lt!2071026) Nil!57865)) (= lt!2071456 (t!370335 (_1!34812 lt!2071026)))))))

(assert (= (and d!1610958 c!854472) b!5005380))

(assert (= (and d!1610958 (not c!854472)) b!5005381))

(assert (= (and d!1610958 res!2135625) b!5005382))

(assert (= (and b!5005382 res!2135626) b!5005383))

(declare-fun m!6039418 () Bool)

(assert (=> b!5005381 m!6039418))

(declare-fun m!6039420 () Bool)

(assert (=> b!5005382 m!6039420))

(assert (=> b!5005382 m!6039070))

(assert (=> b!5005382 m!6038888))

(declare-fun m!6039422 () Bool)

(assert (=> d!1610958 m!6039422))

(declare-fun m!6039424 () Bool)

(assert (=> d!1610958 m!6039424))

(assert (=> d!1610958 m!6038894))

(assert (=> b!5004792 d!1610958))

(declare-fun d!1610960 () Bool)

(declare-fun res!2135631 () Bool)

(declare-fun e!3127745 () Bool)

(assert (=> d!1610960 (=> (not res!2135631) (not e!3127745))))

(assert (=> d!1610960 (= res!2135631 (<= (size!38465 (list!18627 (xs!18640 (c!854185 totalInput!1012)))) 512))))

(assert (=> d!1610960 (= (inv!76035 (c!854185 totalInput!1012)) e!3127745)))

(declare-fun b!5005388 () Bool)

(declare-fun res!2135632 () Bool)

(assert (=> b!5005388 (=> (not res!2135632) (not e!3127745))))

(assert (=> b!5005388 (= res!2135632 (= (csize!30859 (c!854185 totalInput!1012)) (size!38465 (list!18627 (xs!18640 (c!854185 totalInput!1012))))))))

(declare-fun b!5005389 () Bool)

(assert (=> b!5005389 (= e!3127745 (and (> (csize!30859 (c!854185 totalInput!1012)) 0) (<= (csize!30859 (c!854185 totalInput!1012)) 512)))))

(assert (= (and d!1610960 res!2135631) b!5005388))

(assert (= (and b!5005388 res!2135632) b!5005389))

(declare-fun m!6039426 () Bool)

(assert (=> d!1610960 m!6039426))

(assert (=> d!1610960 m!6039426))

(declare-fun m!6039428 () Bool)

(assert (=> d!1610960 m!6039428))

(assert (=> b!5005388 m!6039426))

(assert (=> b!5005388 m!6039426))

(assert (=> b!5005388 m!6039428))

(assert (=> b!5004397 d!1610960))

(declare-fun d!1610962 () Bool)

(assert (=> d!1610962 (= (isEmpty!31333 (_1!34812 lt!2071373)) ((_ is Nil!57865) (_1!34812 lt!2071373)))))

(assert (=> b!5004956 d!1610962))

(declare-fun d!1610964 () Bool)

(assert (=> d!1610964 (= (isEmpty!31333 lt!2071030) ((_ is Nil!57865) lt!2071030))))

(assert (=> d!1610748 d!1610964))

(declare-fun d!1610966 () Bool)

(declare-fun lt!2071457 () Int)

(assert (=> d!1610966 (>= lt!2071457 0)))

(declare-fun e!3127746 () Int)

(assert (=> d!1610966 (= lt!2071457 e!3127746)))

(declare-fun c!854473 () Bool)

(assert (=> d!1610966 (= c!854473 ((_ is Nil!57865) (list!18624 (_1!34811 lt!2071017))))))

(assert (=> d!1610966 (= (size!38465 (list!18624 (_1!34811 lt!2071017))) lt!2071457)))

(declare-fun b!5005390 () Bool)

(assert (=> b!5005390 (= e!3127746 0)))

(declare-fun b!5005391 () Bool)

(assert (=> b!5005391 (= e!3127746 (+ 1 (size!38465 (t!370335 (list!18624 (_1!34811 lt!2071017))))))))

(assert (= (and d!1610966 c!854473) b!5005390))

(assert (= (and d!1610966 (not c!854473)) b!5005391))

(declare-fun m!6039430 () Bool)

(assert (=> b!5005391 m!6039430))

(assert (=> d!1610800 d!1610966))

(assert (=> d!1610800 d!1610648))

(declare-fun d!1610968 () Bool)

(declare-fun lt!2071458 () Int)

(assert (=> d!1610968 (= lt!2071458 (size!38465 (list!18626 (c!854185 (_1!34811 lt!2071017)))))))

(assert (=> d!1610968 (= lt!2071458 (ite ((_ is Empty!15314) (c!854185 (_1!34811 lt!2071017))) 0 (ite ((_ is Leaf!25420) (c!854185 (_1!34811 lt!2071017))) (csize!30859 (c!854185 (_1!34811 lt!2071017))) (csize!30858 (c!854185 (_1!34811 lt!2071017))))))))

(assert (=> d!1610968 (= (size!38467 (c!854185 (_1!34811 lt!2071017))) lt!2071458)))

(declare-fun bs!1185963 () Bool)

(assert (= bs!1185963 d!1610968))

(assert (=> bs!1185963 m!6038490))

(assert (=> bs!1185963 m!6038490))

(declare-fun m!6039432 () Bool)

(assert (=> bs!1185963 m!6039432))

(assert (=> d!1610800 d!1610968))

(declare-fun bs!1185964 () Bool)

(declare-fun b!5005396 () Bool)

(declare-fun d!1610970 () Bool)

(assert (= bs!1185964 (and b!5005396 d!1610970)))

(declare-fun lambda!248395 () Int)

(declare-fun lambda!248394 () Int)

(assert (=> bs!1185964 (not (= lambda!248395 lambda!248394))))

(declare-fun bs!1185965 () Bool)

(declare-fun b!5005397 () Bool)

(assert (= bs!1185965 (and b!5005397 d!1610970)))

(declare-fun lambda!248396 () Int)

(assert (=> bs!1185965 (not (= lambda!248396 lambda!248394))))

(declare-fun bs!1185966 () Bool)

(assert (= bs!1185966 (and b!5005397 b!5005396)))

(assert (=> bs!1185966 (= lambda!248396 lambda!248395)))

(declare-fun e!3127753 () Unit!149035)

(declare-fun Unit!149043 () Unit!149035)

(assert (=> b!5005397 (= e!3127753 Unit!149043)))

(declare-fun lt!2071481 () List!57991)

(declare-fun call!349424 () List!57991)

(assert (=> b!5005397 (= lt!2071481 call!349424)))

(declare-fun lt!2071475 () Unit!149035)

(declare-fun lemmaForallThenNotExists!232 (List!57991 Int) Unit!149035)

(assert (=> b!5005397 (= lt!2071475 (lemmaForallThenNotExists!232 lt!2071481 lambda!248394))))

(declare-fun call!349423 () Bool)

(assert (=> b!5005397 (not call!349423)))

(declare-fun lt!2071476 () Unit!149035)

(assert (=> b!5005397 (= lt!2071476 lt!2071475)))

(declare-fun Unit!149044 () Unit!149035)

(assert (=> b!5005396 (= e!3127753 Unit!149044)))

(declare-fun lt!2071482 () List!57991)

(assert (=> b!5005396 (= lt!2071482 call!349424)))

(declare-fun lt!2071478 () Unit!149035)

(declare-fun lemmaNotForallThenExists!249 (List!57991 Int) Unit!149035)

(assert (=> b!5005396 (= lt!2071478 (lemmaNotForallThenExists!249 lt!2071482 lambda!248394))))

(assert (=> b!5005396 call!349423))

(declare-fun lt!2071480 () Unit!149035)

(assert (=> b!5005396 (= lt!2071480 lt!2071478)))

(declare-fun bm!349418 () Bool)

(declare-fun c!854484 () Bool)

(declare-fun exists!1359 (List!57991 Int) Bool)

(assert (=> bm!349418 (= call!349423 (exists!1359 (ite c!854484 lt!2071482 lt!2071481) (ite c!854484 lambda!248395 lambda!248396)))))

(declare-fun lt!2071479 () Bool)

(declare-datatypes ((Option!14579 0))(
  ( (None!14578) (Some!14578 (v!50577 List!57989)) )
))
(declare-fun isEmpty!31337 (Option!14579) Bool)

(declare-fun getLanguageWitness!708 ((InoxSet Context!6440)) Option!14579)

(assert (=> d!1610970 (= lt!2071479 (isEmpty!31337 (getLanguageWitness!708 z!4183)))))

(declare-fun forall!13366 ((InoxSet Context!6440) Int) Bool)

(assert (=> d!1610970 (= lt!2071479 (forall!13366 z!4183 lambda!248394))))

(declare-fun lt!2071477 () Unit!149035)

(assert (=> d!1610970 (= lt!2071477 e!3127753)))

(assert (=> d!1610970 (= c!854484 (not (forall!13366 z!4183 lambda!248394)))))

(assert (=> d!1610970 (= (lostCauseZipper!829 z!4183) lt!2071479)))

(declare-fun bm!349419 () Bool)

(assert (=> bm!349419 (= call!349424 (toList!8080 z!4183))))

(assert (= (and d!1610970 c!854484) b!5005396))

(assert (= (and d!1610970 (not c!854484)) b!5005397))

(assert (= (or b!5005396 b!5005397) bm!349418))

(assert (= (or b!5005396 b!5005397) bm!349419))

(declare-fun m!6039434 () Bool)

(assert (=> b!5005397 m!6039434))

(declare-fun m!6039436 () Bool)

(assert (=> b!5005396 m!6039436))

(declare-fun m!6039438 () Bool)

(assert (=> d!1610970 m!6039438))

(assert (=> d!1610970 m!6039438))

(declare-fun m!6039440 () Bool)

(assert (=> d!1610970 m!6039440))

(declare-fun m!6039442 () Bool)

(assert (=> d!1610970 m!6039442))

(assert (=> d!1610970 m!6039442))

(declare-fun m!6039444 () Bool)

(assert (=> bm!349418 m!6039444))

(assert (=> bm!349419 m!6038412))

(assert (=> b!5004853 d!1610970))

(declare-fun d!1610972 () Bool)

(assert (=> d!1610972 (= (tail!9866 lt!2071008) (t!370335 lt!2071008))))

(assert (=> bm!349369 d!1610972))

(declare-fun b!5005410 () Bool)

(declare-fun e!3127758 () Bool)

(assert (=> b!5005410 (= e!3127758 (not (isEmpty!31334 (right!42635 (c!854185 input!5597)))))))

(declare-fun b!5005411 () Bool)

(declare-fun res!2135649 () Bool)

(assert (=> b!5005411 (=> (not res!2135649) (not e!3127758))))

(assert (=> b!5005411 (= res!2135649 (<= (- (height!2033 (left!42305 (c!854185 input!5597))) (height!2033 (right!42635 (c!854185 input!5597)))) 1))))

(declare-fun b!5005412 () Bool)

(declare-fun e!3127759 () Bool)

(assert (=> b!5005412 (= e!3127759 e!3127758)))

(declare-fun res!2135647 () Bool)

(assert (=> b!5005412 (=> (not res!2135647) (not e!3127758))))

(assert (=> b!5005412 (= res!2135647 (<= (- 1) (- (height!2033 (left!42305 (c!854185 input!5597))) (height!2033 (right!42635 (c!854185 input!5597))))))))

(declare-fun b!5005413 () Bool)

(declare-fun res!2135645 () Bool)

(assert (=> b!5005413 (=> (not res!2135645) (not e!3127758))))

(assert (=> b!5005413 (= res!2135645 (isBalanced!4272 (right!42635 (c!854185 input!5597))))))

(declare-fun b!5005414 () Bool)

(declare-fun res!2135650 () Bool)

(assert (=> b!5005414 (=> (not res!2135650) (not e!3127758))))

(assert (=> b!5005414 (= res!2135650 (isBalanced!4272 (left!42305 (c!854185 input!5597))))))

(declare-fun d!1610974 () Bool)

(declare-fun res!2135648 () Bool)

(assert (=> d!1610974 (=> res!2135648 e!3127759)))

(assert (=> d!1610974 (= res!2135648 (not ((_ is Node!15314) (c!854185 input!5597))))))

(assert (=> d!1610974 (= (isBalanced!4272 (c!854185 input!5597)) e!3127759)))

(declare-fun b!5005415 () Bool)

(declare-fun res!2135646 () Bool)

(assert (=> b!5005415 (=> (not res!2135646) (not e!3127758))))

(assert (=> b!5005415 (= res!2135646 (not (isEmpty!31334 (left!42305 (c!854185 input!5597)))))))

(assert (= (and d!1610974 (not res!2135648)) b!5005412))

(assert (= (and b!5005412 res!2135647) b!5005411))

(assert (= (and b!5005411 res!2135649) b!5005414))

(assert (= (and b!5005414 res!2135650) b!5005413))

(assert (= (and b!5005413 res!2135645) b!5005415))

(assert (= (and b!5005415 res!2135646) b!5005410))

(assert (=> b!5005412 m!6039404))

(assert (=> b!5005412 m!6039406))

(assert (=> b!5005411 m!6039404))

(assert (=> b!5005411 m!6039406))

(declare-fun m!6039446 () Bool)

(assert (=> b!5005413 m!6039446))

(declare-fun m!6039448 () Bool)

(assert (=> b!5005415 m!6039448))

(declare-fun m!6039450 () Bool)

(assert (=> b!5005414 m!6039450))

(declare-fun m!6039452 () Bool)

(assert (=> b!5005410 m!6039452))

(assert (=> d!1610830 d!1610974))

(declare-fun bs!1185967 () Bool)

(declare-fun d!1610976 () Bool)

(assert (= bs!1185967 (and d!1610976 d!1610970)))

(declare-fun lambda!248399 () Int)

(assert (=> bs!1185967 (not (= lambda!248399 lambda!248394))))

(declare-fun bs!1185968 () Bool)

(assert (= bs!1185968 (and d!1610976 b!5005396)))

(assert (=> bs!1185968 (not (= lambda!248399 lambda!248395))))

(declare-fun bs!1185969 () Bool)

(assert (= bs!1185969 (and d!1610976 b!5005397)))

(assert (=> bs!1185969 (not (= lambda!248399 lambda!248396))))

(declare-fun exists!1360 ((InoxSet Context!6440) Int) Bool)

(assert (=> d!1610976 (= (nullableZipper!884 lt!2071306) (exists!1360 lt!2071306 lambda!248399))))

(declare-fun bs!1185970 () Bool)

(assert (= bs!1185970 d!1610976))

(declare-fun m!6039454 () Bool)

(assert (=> bs!1185970 m!6039454))

(assert (=> b!5004856 d!1610976))

(assert (=> d!1610768 d!1610858))

(assert (=> b!5004958 d!1610914))

(declare-fun d!1610978 () Bool)

(assert (=> d!1610978 (= (head!10733 lt!2071013) (h!64313 lt!2071013))))

(assert (=> b!5004958 d!1610978))

(declare-fun bs!1185971 () Bool)

(declare-fun d!1610980 () Bool)

(assert (= bs!1185971 (and d!1610980 d!1610864)))

(declare-fun lambda!248400 () Int)

(assert (=> bs!1185971 (= (= (apply!13989 totalInput!1012 lt!2071014) (head!10733 (take!654 (drop!2458 lt!2071019 lt!2071014) lt!2071018))) (= lambda!248400 lambda!248375))))

(assert (=> d!1610980 true))

(assert (=> d!1610980 (= (derivationStepZipper!633 z!4183 (apply!13989 totalInput!1012 lt!2071014)) (flatMap!280 z!4183 lambda!248400))))

(declare-fun bs!1185972 () Bool)

(assert (= bs!1185972 d!1610980))

(declare-fun m!6039456 () Bool)

(assert (=> bs!1185972 m!6039456))

(assert (=> b!5004860 d!1610980))

(declare-fun d!1610982 () Bool)

(declare-fun lt!2071485 () C!27840)

(declare-fun apply!13991 (List!57989 Int) C!27840)

(assert (=> d!1610982 (= lt!2071485 (apply!13991 (list!18624 totalInput!1012) lt!2071014))))

(declare-fun apply!13992 (Conc!15314 Int) C!27840)

(assert (=> d!1610982 (= lt!2071485 (apply!13992 (c!854185 totalInput!1012) lt!2071014))))

(declare-fun e!3127762 () Bool)

(assert (=> d!1610982 e!3127762))

(declare-fun res!2135653 () Bool)

(assert (=> d!1610982 (=> (not res!2135653) (not e!3127762))))

(assert (=> d!1610982 (= res!2135653 (<= 0 lt!2071014))))

(assert (=> d!1610982 (= (apply!13989 totalInput!1012 lt!2071014) lt!2071485)))

(declare-fun b!5005418 () Bool)

(assert (=> b!5005418 (= e!3127762 (< lt!2071014 (size!38464 totalInput!1012)))))

(assert (= (and d!1610982 res!2135653) b!5005418))

(assert (=> d!1610982 m!6038374))

(assert (=> d!1610982 m!6038374))

(declare-fun m!6039458 () Bool)

(assert (=> d!1610982 m!6039458))

(declare-fun m!6039460 () Bool)

(assert (=> d!1610982 m!6039460))

(assert (=> b!5005418 m!6038404))

(assert (=> b!5004860 d!1610982))

(declare-fun d!1610984 () Bool)

(declare-fun lt!2071487 () Int)

(assert (=> d!1610984 (and (>= lt!2071487 0) (<= lt!2071487 (- lt!2071027 (+ lt!2071014 1))))))

(declare-fun e!3127767 () Int)

(assert (=> d!1610984 (= lt!2071487 e!3127767)))

(declare-fun c!854487 () Bool)

(declare-fun e!3127766 () Bool)

(assert (=> d!1610984 (= c!854487 e!3127766)))

(declare-fun res!2135654 () Bool)

(assert (=> d!1610984 (=> res!2135654 e!3127766)))

(assert (=> d!1610984 (= res!2135654 (= (+ lt!2071014 1) lt!2071027))))

(declare-fun e!3127764 () Bool)

(assert (=> d!1610984 e!3127764))

(declare-fun res!2135655 () Bool)

(assert (=> d!1610984 (=> (not res!2135655) (not e!3127764))))

(assert (=> d!1610984 (= res!2135655 (>= (+ lt!2071014 1) 0))))

(assert (=> d!1610984 (= (findLongestMatchInnerZipperFastV2!135 lt!2071306 (+ lt!2071014 1) totalInput!1012 lt!2071027) lt!2071487)))

(declare-fun b!5005419 () Bool)

(assert (=> b!5005419 (= e!3127766 (lostCauseZipper!829 lt!2071306))))

(declare-fun b!5005420 () Bool)

(assert (=> b!5005420 (= e!3127764 (<= (+ lt!2071014 1) (size!38464 totalInput!1012)))))

(declare-fun b!5005421 () Bool)

(declare-fun e!3127765 () Int)

(assert (=> b!5005421 (= e!3127765 0)))

(declare-fun b!5005422 () Bool)

(declare-fun c!854488 () Bool)

(declare-fun lt!2071488 () (InoxSet Context!6440))

(assert (=> b!5005422 (= c!854488 (nullableZipper!884 lt!2071488))))

(declare-fun e!3127763 () Int)

(assert (=> b!5005422 (= e!3127763 e!3127765)))

(declare-fun b!5005423 () Bool)

(declare-fun lt!2071486 () Int)

(assert (=> b!5005423 (= e!3127763 (+ 1 lt!2071486))))

(declare-fun b!5005424 () Bool)

(assert (=> b!5005424 (= e!3127767 0)))

(declare-fun b!5005425 () Bool)

(assert (=> b!5005425 (= e!3127765 1)))

(declare-fun b!5005426 () Bool)

(assert (=> b!5005426 (= e!3127767 e!3127763)))

(assert (=> b!5005426 (= lt!2071488 (derivationStepZipper!633 lt!2071306 (apply!13989 totalInput!1012 (+ lt!2071014 1))))))

(assert (=> b!5005426 (= lt!2071486 (findLongestMatchInnerZipperFastV2!135 lt!2071488 (+ lt!2071014 1 1) totalInput!1012 lt!2071027))))

(declare-fun c!854489 () Bool)

(assert (=> b!5005426 (= c!854489 (> lt!2071486 0))))

(assert (= (and d!1610984 res!2135655) b!5005420))

(assert (= (and d!1610984 (not res!2135654)) b!5005419))

(assert (= (and d!1610984 c!854487) b!5005424))

(assert (= (and d!1610984 (not c!854487)) b!5005426))

(assert (= (and b!5005426 c!854489) b!5005423))

(assert (= (and b!5005426 (not c!854489)) b!5005422))

(assert (= (and b!5005422 c!854488) b!5005425))

(assert (= (and b!5005422 (not c!854488)) b!5005421))

(declare-fun m!6039462 () Bool)

(assert (=> b!5005419 m!6039462))

(assert (=> b!5005420 m!6038404))

(declare-fun m!6039464 () Bool)

(assert (=> b!5005422 m!6039464))

(declare-fun m!6039466 () Bool)

(assert (=> b!5005426 m!6039466))

(assert (=> b!5005426 m!6039466))

(declare-fun m!6039468 () Bool)

(assert (=> b!5005426 m!6039468))

(declare-fun m!6039470 () Bool)

(assert (=> b!5005426 m!6039470))

(assert (=> b!5004860 d!1610984))

(declare-fun d!1610986 () Bool)

(declare-fun c!854490 () Bool)

(assert (=> d!1610986 (= c!854490 (isEmpty!31333 (tail!9866 lt!2071021)))))

(declare-fun e!3127768 () Bool)

(assert (=> d!1610986 (= (matchZipper!563 (derivationStepZipper!633 z!4183 (head!10733 lt!2071021)) (tail!9866 lt!2071021)) e!3127768)))

(declare-fun b!5005427 () Bool)

(assert (=> b!5005427 (= e!3127768 (nullableZipper!884 (derivationStepZipper!633 z!4183 (head!10733 lt!2071021))))))

(declare-fun b!5005428 () Bool)

(assert (=> b!5005428 (= e!3127768 (matchZipper!563 (derivationStepZipper!633 (derivationStepZipper!633 z!4183 (head!10733 lt!2071021)) (head!10733 (tail!9866 lt!2071021))) (tail!9866 (tail!9866 lt!2071021))))))

(assert (= (and d!1610986 c!854490) b!5005427))

(assert (= (and d!1610986 (not c!854490)) b!5005428))

(assert (=> d!1610986 m!6038896))

(assert (=> d!1610986 m!6039056))

(assert (=> b!5005427 m!6038910))

(declare-fun m!6039472 () Bool)

(assert (=> b!5005427 m!6039472))

(assert (=> b!5005428 m!6038896))

(declare-fun m!6039474 () Bool)

(assert (=> b!5005428 m!6039474))

(assert (=> b!5005428 m!6038910))

(assert (=> b!5005428 m!6039474))

(declare-fun m!6039476 () Bool)

(assert (=> b!5005428 m!6039476))

(assert (=> b!5005428 m!6038896))

(declare-fun m!6039478 () Bool)

(assert (=> b!5005428 m!6039478))

(assert (=> b!5005428 m!6039476))

(assert (=> b!5005428 m!6039478))

(declare-fun m!6039480 () Bool)

(assert (=> b!5005428 m!6039480))

(assert (=> b!5004808 d!1610986))

(declare-fun bs!1185973 () Bool)

(declare-fun d!1610988 () Bool)

(assert (= bs!1185973 (and d!1610988 d!1610864)))

(declare-fun lambda!248401 () Int)

(assert (=> bs!1185973 (= (= (head!10733 lt!2071021) (head!10733 (take!654 (drop!2458 lt!2071019 lt!2071014) lt!2071018))) (= lambda!248401 lambda!248375))))

(declare-fun bs!1185974 () Bool)

(assert (= bs!1185974 (and d!1610988 d!1610980)))

(assert (=> bs!1185974 (= (= (head!10733 lt!2071021) (apply!13989 totalInput!1012 lt!2071014)) (= lambda!248401 lambda!248400))))

(assert (=> d!1610988 true))

(assert (=> d!1610988 (= (derivationStepZipper!633 z!4183 (head!10733 lt!2071021)) (flatMap!280 z!4183 lambda!248401))))

(declare-fun bs!1185975 () Bool)

(assert (= bs!1185975 d!1610988))

(declare-fun m!6039482 () Bool)

(assert (=> bs!1185975 m!6039482))

(assert (=> b!5004808 d!1610988))

(assert (=> b!5004808 d!1610880))

(assert (=> b!5004808 d!1610932))

(declare-fun b!5005429 () Bool)

(declare-fun e!3127770 () Bool)

(declare-fun e!3127772 () Bool)

(assert (=> b!5005429 (= e!3127770 e!3127772)))

(declare-fun res!2135658 () Bool)

(assert (=> b!5005429 (= res!2135658 (not (nullable!4689 (reg!14124 (ite c!854380 (reg!14124 r!12727) (ite c!854379 (regTwo!28103 r!12727) (regOne!28102 r!12727)))))))))

(assert (=> b!5005429 (=> (not res!2135658) (not e!3127772))))

(declare-fun b!5005430 () Bool)

(declare-fun e!3127773 () Bool)

(assert (=> b!5005430 (= e!3127770 e!3127773)))

(declare-fun c!854491 () Bool)

(assert (=> b!5005430 (= c!854491 ((_ is Union!13795) (ite c!854380 (reg!14124 r!12727) (ite c!854379 (regTwo!28103 r!12727) (regOne!28102 r!12727)))))))

(declare-fun bm!349420 () Bool)

(declare-fun c!854492 () Bool)

(declare-fun call!349425 () Bool)

(assert (=> bm!349420 (= call!349425 (validRegex!6092 (ite c!854492 (reg!14124 (ite c!854380 (reg!14124 r!12727) (ite c!854379 (regTwo!28103 r!12727) (regOne!28102 r!12727)))) (ite c!854491 (regTwo!28103 (ite c!854380 (reg!14124 r!12727) (ite c!854379 (regTwo!28103 r!12727) (regOne!28102 r!12727)))) (regOne!28102 (ite c!854380 (reg!14124 r!12727) (ite c!854379 (regTwo!28103 r!12727) (regOne!28102 r!12727))))))))))

(declare-fun b!5005431 () Bool)

(declare-fun res!2135657 () Bool)

(declare-fun e!3127769 () Bool)

(assert (=> b!5005431 (=> (not res!2135657) (not e!3127769))))

(declare-fun call!349427 () Bool)

(assert (=> b!5005431 (= res!2135657 call!349427)))

(assert (=> b!5005431 (= e!3127773 e!3127769)))

(declare-fun b!5005432 () Bool)

(declare-fun res!2135659 () Bool)

(declare-fun e!3127775 () Bool)

(assert (=> b!5005432 (=> res!2135659 e!3127775)))

(assert (=> b!5005432 (= res!2135659 (not ((_ is Concat!22588) (ite c!854380 (reg!14124 r!12727) (ite c!854379 (regTwo!28103 r!12727) (regOne!28102 r!12727))))))))

(assert (=> b!5005432 (= e!3127773 e!3127775)))

(declare-fun b!5005433 () Bool)

(declare-fun call!349426 () Bool)

(assert (=> b!5005433 (= e!3127769 call!349426)))

(declare-fun b!5005434 () Bool)

(declare-fun e!3127774 () Bool)

(assert (=> b!5005434 (= e!3127775 e!3127774)))

(declare-fun res!2135660 () Bool)

(assert (=> b!5005434 (=> (not res!2135660) (not e!3127774))))

(assert (=> b!5005434 (= res!2135660 call!349426)))

(declare-fun b!5005435 () Bool)

(assert (=> b!5005435 (= e!3127772 call!349425)))

(declare-fun b!5005436 () Bool)

(declare-fun e!3127771 () Bool)

(assert (=> b!5005436 (= e!3127771 e!3127770)))

(assert (=> b!5005436 (= c!854492 ((_ is Star!13795) (ite c!854380 (reg!14124 r!12727) (ite c!854379 (regTwo!28103 r!12727) (regOne!28102 r!12727)))))))

(declare-fun d!1610990 () Bool)

(declare-fun res!2135656 () Bool)

(assert (=> d!1610990 (=> res!2135656 e!3127771)))

(assert (=> d!1610990 (= res!2135656 ((_ is ElementMatch!13795) (ite c!854380 (reg!14124 r!12727) (ite c!854379 (regTwo!28103 r!12727) (regOne!28102 r!12727)))))))

(assert (=> d!1610990 (= (validRegex!6092 (ite c!854380 (reg!14124 r!12727) (ite c!854379 (regTwo!28103 r!12727) (regOne!28102 r!12727)))) e!3127771)))

(declare-fun b!5005437 () Bool)

(assert (=> b!5005437 (= e!3127774 call!349427)))

(declare-fun bm!349421 () Bool)

(assert (=> bm!349421 (= call!349427 (validRegex!6092 (ite c!854491 (regOne!28103 (ite c!854380 (reg!14124 r!12727) (ite c!854379 (regTwo!28103 r!12727) (regOne!28102 r!12727)))) (regTwo!28102 (ite c!854380 (reg!14124 r!12727) (ite c!854379 (regTwo!28103 r!12727) (regOne!28102 r!12727)))))))))

(declare-fun bm!349422 () Bool)

(assert (=> bm!349422 (= call!349426 call!349425)))

(assert (= (and d!1610990 (not res!2135656)) b!5005436))

(assert (= (and b!5005436 c!854492) b!5005429))

(assert (= (and b!5005436 (not c!854492)) b!5005430))

(assert (= (and b!5005429 res!2135658) b!5005435))

(assert (= (and b!5005430 c!854491) b!5005431))

(assert (= (and b!5005430 (not c!854491)) b!5005432))

(assert (= (and b!5005431 res!2135657) b!5005433))

(assert (= (and b!5005432 (not res!2135659)) b!5005434))

(assert (= (and b!5005434 res!2135660) b!5005437))

(assert (= (or b!5005433 b!5005434) bm!349422))

(assert (= (or b!5005431 b!5005437) bm!349421))

(assert (= (or b!5005435 bm!349422) bm!349420))

(declare-fun m!6039484 () Bool)

(assert (=> b!5005429 m!6039484))

(declare-fun m!6039486 () Bool)

(assert (=> bm!349420 m!6039486))

(declare-fun m!6039488 () Bool)

(assert (=> bm!349421 m!6039488))

(assert (=> bm!349388 d!1610990))

(declare-fun d!1610992 () Bool)

(declare-fun lt!2071489 () Int)

(assert (=> d!1610992 (>= lt!2071489 0)))

(declare-fun e!3127776 () Int)

(assert (=> d!1610992 (= lt!2071489 e!3127776)))

(declare-fun c!854493 () Bool)

(assert (=> d!1610992 (= c!854493 ((_ is Nil!57865) lt!2071291))))

(assert (=> d!1610992 (= (size!38465 lt!2071291) lt!2071489)))

(declare-fun b!5005438 () Bool)

(assert (=> b!5005438 (= e!3127776 0)))

(declare-fun b!5005439 () Bool)

(assert (=> b!5005439 (= e!3127776 (+ 1 (size!38465 (t!370335 lt!2071291))))))

(assert (= (and d!1610992 c!854493) b!5005438))

(assert (= (and d!1610992 (not c!854493)) b!5005439))

(declare-fun m!6039490 () Bool)

(assert (=> b!5005439 m!6039490))

(assert (=> b!5004822 d!1610992))

(declare-fun b!5005443 () Bool)

(declare-fun e!3127778 () List!57989)

(assert (=> b!5005443 (= e!3127778 (++!12641 (list!18626 (left!42305 (c!854185 totalInput!1012))) (list!18626 (right!42635 (c!854185 totalInput!1012)))))))

(declare-fun b!5005442 () Bool)

(assert (=> b!5005442 (= e!3127778 (list!18627 (xs!18640 (c!854185 totalInput!1012))))))

(declare-fun b!5005441 () Bool)

(declare-fun e!3127777 () List!57989)

(assert (=> b!5005441 (= e!3127777 e!3127778)))

(declare-fun c!854495 () Bool)

(assert (=> b!5005441 (= c!854495 ((_ is Leaf!25420) (c!854185 totalInput!1012)))))

(declare-fun b!5005440 () Bool)

(assert (=> b!5005440 (= e!3127777 Nil!57865)))

(declare-fun d!1610994 () Bool)

(declare-fun c!854494 () Bool)

(assert (=> d!1610994 (= c!854494 ((_ is Empty!15314) (c!854185 totalInput!1012)))))

(assert (=> d!1610994 (= (list!18626 (c!854185 totalInput!1012)) e!3127777)))

(assert (= (and d!1610994 c!854494) b!5005440))

(assert (= (and d!1610994 (not c!854494)) b!5005441))

(assert (= (and b!5005441 c!854495) b!5005442))

(assert (= (and b!5005441 (not c!854495)) b!5005443))

(declare-fun m!6039492 () Bool)

(assert (=> b!5005443 m!6039492))

(declare-fun m!6039494 () Bool)

(assert (=> b!5005443 m!6039494))

(assert (=> b!5005443 m!6039492))

(assert (=> b!5005443 m!6039494))

(declare-fun m!6039496 () Bool)

(assert (=> b!5005443 m!6039496))

(assert (=> b!5005442 m!6039426))

(assert (=> d!1610756 d!1610994))

(declare-fun d!1610996 () Bool)

(declare-fun lt!2071490 () Int)

(assert (=> d!1610996 (>= lt!2071490 0)))

(declare-fun e!3127779 () Int)

(assert (=> d!1610996 (= lt!2071490 e!3127779)))

(declare-fun c!854496 () Bool)

(assert (=> d!1610996 (= c!854496 ((_ is Nil!57865) lt!2071265))))

(assert (=> d!1610996 (= (size!38465 lt!2071265) lt!2071490)))

(declare-fun b!5005444 () Bool)

(assert (=> b!5005444 (= e!3127779 0)))

(declare-fun b!5005445 () Bool)

(assert (=> b!5005445 (= e!3127779 (+ 1 (size!38465 (t!370335 lt!2071265))))))

(assert (= (and d!1610996 c!854496) b!5005444))

(assert (= (and d!1610996 (not c!854496)) b!5005445))

(declare-fun m!6039498 () Bool)

(assert (=> b!5005445 m!6039498))

(assert (=> b!5004779 d!1610996))

(assert (=> b!5004826 d!1610854))

(declare-fun b!5005446 () Bool)

(declare-fun e!3127782 () List!57989)

(assert (=> b!5005446 (= e!3127782 (Cons!57865 (h!64313 (t!370335 lt!2071008)) (take!654 (t!370335 (t!370335 lt!2071008)) (- (- lt!2071005 1) 1))))))

(declare-fun b!5005447 () Bool)

(declare-fun e!3127781 () Bool)

(declare-fun lt!2071491 () List!57989)

(declare-fun e!3127783 () Int)

(assert (=> b!5005447 (= e!3127781 (= (size!38465 lt!2071491) e!3127783))))

(declare-fun c!854497 () Bool)

(assert (=> b!5005447 (= c!854497 (<= (- lt!2071005 1) 0))))

(declare-fun b!5005448 () Bool)

(assert (=> b!5005448 (= e!3127782 Nil!57865)))

(declare-fun b!5005449 () Bool)

(declare-fun e!3127780 () Int)

(assert (=> b!5005449 (= e!3127783 e!3127780)))

(declare-fun c!854498 () Bool)

(assert (=> b!5005449 (= c!854498 (>= (- lt!2071005 1) (size!38465 (t!370335 lt!2071008))))))

(declare-fun d!1610998 () Bool)

(assert (=> d!1610998 e!3127781))

(declare-fun res!2135661 () Bool)

(assert (=> d!1610998 (=> (not res!2135661) (not e!3127781))))

(assert (=> d!1610998 (= res!2135661 (= ((_ map implies) (content!10251 lt!2071491) (content!10251 (t!370335 lt!2071008))) ((as const (InoxSet C!27840)) true)))))

(assert (=> d!1610998 (= lt!2071491 e!3127782)))

(declare-fun c!854499 () Bool)

(assert (=> d!1610998 (= c!854499 (or ((_ is Nil!57865) (t!370335 lt!2071008)) (<= (- lt!2071005 1) 0)))))

(assert (=> d!1610998 (= (take!654 (t!370335 lt!2071008) (- lt!2071005 1)) lt!2071491)))

(declare-fun b!5005450 () Bool)

(assert (=> b!5005450 (= e!3127780 (- lt!2071005 1))))

(declare-fun b!5005451 () Bool)

(assert (=> b!5005451 (= e!3127780 (size!38465 (t!370335 lt!2071008)))))

(declare-fun b!5005452 () Bool)

(assert (=> b!5005452 (= e!3127783 0)))

(assert (= (and d!1610998 c!854499) b!5005448))

(assert (= (and d!1610998 (not c!854499)) b!5005446))

(assert (= (and d!1610998 res!2135661) b!5005447))

(assert (= (and b!5005447 c!854497) b!5005452))

(assert (= (and b!5005447 (not c!854497)) b!5005449))

(assert (= (and b!5005449 c!854498) b!5005451))

(assert (= (and b!5005449 (not c!854498)) b!5005450))

(declare-fun m!6039500 () Bool)

(assert (=> b!5005447 m!6039500))

(assert (=> b!5005449 m!6038930))

(declare-fun m!6039502 () Bool)

(assert (=> b!5005446 m!6039502))

(assert (=> b!5005451 m!6038930))

(declare-fun m!6039504 () Bool)

(assert (=> d!1610998 m!6039504))

(declare-fun m!6039506 () Bool)

(assert (=> d!1610998 m!6039506))

(assert (=> b!5005051 d!1610998))

(declare-fun b!5005453 () Bool)

(declare-fun e!3127790 () Bool)

(declare-fun e!3127789 () Bool)

(assert (=> b!5005453 (= e!3127790 e!3127789)))

(declare-fun res!2135664 () Bool)

(assert (=> b!5005453 (=> res!2135664 e!3127789)))

(declare-fun call!349428 () Bool)

(assert (=> b!5005453 (= res!2135664 call!349428)))

(declare-fun b!5005454 () Bool)

(declare-fun e!3127784 () Bool)

(declare-fun e!3127788 () Bool)

(assert (=> b!5005454 (= e!3127784 e!3127788)))

(declare-fun c!854502 () Bool)

(assert (=> b!5005454 (= c!854502 ((_ is EmptyLang!13795) (derivativeStep!3979 r!12727 (head!10733 lt!2071021))))))

(declare-fun b!5005455 () Bool)

(declare-fun e!3127787 () Bool)

(assert (=> b!5005455 (= e!3127787 (= (head!10733 (tail!9866 lt!2071021)) (c!854186 (derivativeStep!3979 r!12727 (head!10733 lt!2071021)))))))

(declare-fun b!5005456 () Bool)

(declare-fun res!2135663 () Bool)

(assert (=> b!5005456 (=> (not res!2135663) (not e!3127787))))

(assert (=> b!5005456 (= res!2135663 (not call!349428))))

(declare-fun d!1611000 () Bool)

(assert (=> d!1611000 e!3127784))

(declare-fun c!854501 () Bool)

(assert (=> d!1611000 (= c!854501 ((_ is EmptyExpr!13795) (derivativeStep!3979 r!12727 (head!10733 lt!2071021))))))

(declare-fun lt!2071492 () Bool)

(declare-fun e!3127785 () Bool)

(assert (=> d!1611000 (= lt!2071492 e!3127785)))

(declare-fun c!854500 () Bool)

(assert (=> d!1611000 (= c!854500 (isEmpty!31333 (tail!9866 lt!2071021)))))

(assert (=> d!1611000 (validRegex!6092 (derivativeStep!3979 r!12727 (head!10733 lt!2071021)))))

(assert (=> d!1611000 (= (matchR!6759 (derivativeStep!3979 r!12727 (head!10733 lt!2071021)) (tail!9866 lt!2071021)) lt!2071492)))

(declare-fun b!5005457 () Bool)

(assert (=> b!5005457 (= e!3127784 (= lt!2071492 call!349428))))

(declare-fun bm!349423 () Bool)

(assert (=> bm!349423 (= call!349428 (isEmpty!31333 (tail!9866 lt!2071021)))))

(declare-fun b!5005458 () Bool)

(declare-fun res!2135669 () Bool)

(assert (=> b!5005458 (=> (not res!2135669) (not e!3127787))))

(assert (=> b!5005458 (= res!2135669 (isEmpty!31333 (tail!9866 (tail!9866 lt!2071021))))))

(declare-fun b!5005459 () Bool)

(declare-fun res!2135662 () Bool)

(declare-fun e!3127786 () Bool)

(assert (=> b!5005459 (=> res!2135662 e!3127786)))

(assert (=> b!5005459 (= res!2135662 (not ((_ is ElementMatch!13795) (derivativeStep!3979 r!12727 (head!10733 lt!2071021)))))))

(assert (=> b!5005459 (= e!3127788 e!3127786)))

(declare-fun b!5005460 () Bool)

(assert (=> b!5005460 (= e!3127785 (matchR!6759 (derivativeStep!3979 (derivativeStep!3979 r!12727 (head!10733 lt!2071021)) (head!10733 (tail!9866 lt!2071021))) (tail!9866 (tail!9866 lt!2071021))))))

(declare-fun b!5005461 () Bool)

(declare-fun res!2135665 () Bool)

(assert (=> b!5005461 (=> res!2135665 e!3127786)))

(assert (=> b!5005461 (= res!2135665 e!3127787)))

(declare-fun res!2135668 () Bool)

(assert (=> b!5005461 (=> (not res!2135668) (not e!3127787))))

(assert (=> b!5005461 (= res!2135668 lt!2071492)))

(declare-fun b!5005462 () Bool)

(assert (=> b!5005462 (= e!3127788 (not lt!2071492))))

(declare-fun b!5005463 () Bool)

(assert (=> b!5005463 (= e!3127786 e!3127790)))

(declare-fun res!2135666 () Bool)

(assert (=> b!5005463 (=> (not res!2135666) (not e!3127790))))

(assert (=> b!5005463 (= res!2135666 (not lt!2071492))))

(declare-fun b!5005464 () Bool)

(assert (=> b!5005464 (= e!3127789 (not (= (head!10733 (tail!9866 lt!2071021)) (c!854186 (derivativeStep!3979 r!12727 (head!10733 lt!2071021))))))))

(declare-fun b!5005465 () Bool)

(assert (=> b!5005465 (= e!3127785 (nullable!4689 (derivativeStep!3979 r!12727 (head!10733 lt!2071021))))))

(declare-fun b!5005466 () Bool)

(declare-fun res!2135667 () Bool)

(assert (=> b!5005466 (=> res!2135667 e!3127789)))

(assert (=> b!5005466 (= res!2135667 (not (isEmpty!31333 (tail!9866 (tail!9866 lt!2071021)))))))

(assert (= (and d!1611000 c!854500) b!5005465))

(assert (= (and d!1611000 (not c!854500)) b!5005460))

(assert (= (and d!1611000 c!854501) b!5005457))

(assert (= (and d!1611000 (not c!854501)) b!5005454))

(assert (= (and b!5005454 c!854502) b!5005462))

(assert (= (and b!5005454 (not c!854502)) b!5005459))

(assert (= (and b!5005459 (not res!2135662)) b!5005461))

(assert (= (and b!5005461 res!2135668) b!5005456))

(assert (= (and b!5005456 res!2135663) b!5005458))

(assert (= (and b!5005458 res!2135669) b!5005455))

(assert (= (and b!5005461 (not res!2135665)) b!5005463))

(assert (= (and b!5005463 res!2135666) b!5005453))

(assert (= (and b!5005453 (not res!2135664)) b!5005466))

(assert (= (and b!5005466 (not res!2135667)) b!5005464))

(assert (= (or b!5005457 b!5005453 b!5005456) bm!349423))

(assert (=> b!5005466 m!6038896))

(assert (=> b!5005466 m!6039478))

(assert (=> b!5005466 m!6039478))

(declare-fun m!6039508 () Bool)

(assert (=> b!5005466 m!6039508))

(assert (=> b!5005455 m!6038896))

(assert (=> b!5005455 m!6039474))

(assert (=> b!5005464 m!6038896))

(assert (=> b!5005464 m!6039474))

(assert (=> b!5005460 m!6038896))

(assert (=> b!5005460 m!6039474))

(assert (=> b!5005460 m!6039058))

(assert (=> b!5005460 m!6039474))

(declare-fun m!6039510 () Bool)

(assert (=> b!5005460 m!6039510))

(assert (=> b!5005460 m!6038896))

(assert (=> b!5005460 m!6039478))

(assert (=> b!5005460 m!6039510))

(assert (=> b!5005460 m!6039478))

(declare-fun m!6039512 () Bool)

(assert (=> b!5005460 m!6039512))

(assert (=> bm!349423 m!6038896))

(assert (=> bm!349423 m!6039056))

(assert (=> b!5005465 m!6039058))

(declare-fun m!6039514 () Bool)

(assert (=> b!5005465 m!6039514))

(assert (=> b!5005458 m!6038896))

(assert (=> b!5005458 m!6039478))

(assert (=> b!5005458 m!6039478))

(assert (=> b!5005458 m!6039508))

(assert (=> d!1611000 m!6038896))

(assert (=> d!1611000 m!6039056))

(assert (=> d!1611000 m!6039058))

(declare-fun m!6039516 () Bool)

(assert (=> d!1611000 m!6039516))

(assert (=> b!5004996 d!1611000))

(declare-fun b!5005467 () Bool)

(declare-fun e!3127795 () Regex!13795)

(declare-fun e!3127792 () Regex!13795)

(assert (=> b!5005467 (= e!3127795 e!3127792)))

(declare-fun c!854505 () Bool)

(assert (=> b!5005467 (= c!854505 ((_ is Star!13795) r!12727))))

(declare-fun b!5005468 () Bool)

(declare-fun e!3127794 () Regex!13795)

(declare-fun e!3127793 () Regex!13795)

(assert (=> b!5005468 (= e!3127794 e!3127793)))

(declare-fun c!854503 () Bool)

(assert (=> b!5005468 (= c!854503 ((_ is ElementMatch!13795) r!12727))))

(declare-fun b!5005469 () Bool)

(declare-fun call!349431 () Regex!13795)

(assert (=> b!5005469 (= e!3127792 (Concat!22588 call!349431 r!12727))))

(declare-fun bm!349424 () Bool)

(declare-fun call!349430 () Regex!13795)

(assert (=> bm!349424 (= call!349430 call!349431)))

(declare-fun b!5005470 () Bool)

(declare-fun e!3127791 () Regex!13795)

(assert (=> b!5005470 (= e!3127791 (Union!13795 (Concat!22588 call!349430 (regTwo!28102 r!12727)) EmptyLang!13795))))

(declare-fun b!5005471 () Bool)

(assert (=> b!5005471 (= e!3127794 EmptyLang!13795)))

(declare-fun b!5005472 () Bool)

(declare-fun c!854507 () Bool)

(assert (=> b!5005472 (= c!854507 ((_ is Union!13795) r!12727))))

(assert (=> b!5005472 (= e!3127793 e!3127795)))

(declare-fun bm!349425 () Bool)

(declare-fun call!349432 () Regex!13795)

(assert (=> bm!349425 (= call!349432 (derivativeStep!3979 (ite c!854507 (regTwo!28103 r!12727) (regOne!28102 r!12727)) (head!10733 lt!2071021)))))

(declare-fun d!1611002 () Bool)

(declare-fun lt!2071493 () Regex!13795)

(assert (=> d!1611002 (validRegex!6092 lt!2071493)))

(assert (=> d!1611002 (= lt!2071493 e!3127794)))

(declare-fun c!854504 () Bool)

(assert (=> d!1611002 (= c!854504 (or ((_ is EmptyExpr!13795) r!12727) ((_ is EmptyLang!13795) r!12727)))))

(assert (=> d!1611002 (validRegex!6092 r!12727)))

(assert (=> d!1611002 (= (derivativeStep!3979 r!12727 (head!10733 lt!2071021)) lt!2071493)))

(declare-fun b!5005473 () Bool)

(assert (=> b!5005473 (= e!3127793 (ite (= (head!10733 lt!2071021) (c!854186 r!12727)) EmptyExpr!13795 EmptyLang!13795))))

(declare-fun b!5005474 () Bool)

(assert (=> b!5005474 (= e!3127791 (Union!13795 (Concat!22588 call!349432 (regTwo!28102 r!12727)) call!349430))))

(declare-fun c!854506 () Bool)

(declare-fun bm!349426 () Bool)

(declare-fun call!349429 () Regex!13795)

(assert (=> bm!349426 (= call!349429 (derivativeStep!3979 (ite c!854507 (regOne!28103 r!12727) (ite c!854505 (reg!14124 r!12727) (ite c!854506 (regTwo!28102 r!12727) (regOne!28102 r!12727)))) (head!10733 lt!2071021)))))

(declare-fun b!5005475 () Bool)

(assert (=> b!5005475 (= c!854506 (nullable!4689 (regOne!28102 r!12727)))))

(assert (=> b!5005475 (= e!3127792 e!3127791)))

(declare-fun bm!349427 () Bool)

(assert (=> bm!349427 (= call!349431 call!349429)))

(declare-fun b!5005476 () Bool)

(assert (=> b!5005476 (= e!3127795 (Union!13795 call!349429 call!349432))))

(assert (= (and d!1611002 c!854504) b!5005471))

(assert (= (and d!1611002 (not c!854504)) b!5005468))

(assert (= (and b!5005468 c!854503) b!5005473))

(assert (= (and b!5005468 (not c!854503)) b!5005472))

(assert (= (and b!5005472 c!854507) b!5005476))

(assert (= (and b!5005472 (not c!854507)) b!5005467))

(assert (= (and b!5005467 c!854505) b!5005469))

(assert (= (and b!5005467 (not c!854505)) b!5005475))

(assert (= (and b!5005475 c!854506) b!5005474))

(assert (= (and b!5005475 (not c!854506)) b!5005470))

(assert (= (or b!5005474 b!5005470) bm!349424))

(assert (= (or b!5005469 bm!349424) bm!349427))

(assert (= (or b!5005476 bm!349427) bm!349426))

(assert (= (or b!5005476 b!5005474) bm!349425))

(assert (=> bm!349425 m!6038904))

(declare-fun m!6039518 () Bool)

(assert (=> bm!349425 m!6039518))

(declare-fun m!6039520 () Bool)

(assert (=> d!1611002 m!6039520))

(assert (=> d!1611002 m!6038386))

(assert (=> bm!349426 m!6038904))

(declare-fun m!6039522 () Bool)

(assert (=> bm!349426 m!6039522))

(assert (=> b!5005475 m!6039330))

(assert (=> b!5004996 d!1611002))

(assert (=> b!5004996 d!1610880))

(assert (=> b!5004996 d!1610932))

(declare-fun b!5005477 () Bool)

(declare-fun e!3127798 () Bool)

(declare-fun e!3127797 () Bool)

(assert (=> b!5005477 (= e!3127798 e!3127797)))

(declare-fun res!2135671 () Bool)

(assert (=> b!5005477 (=> (not res!2135671) (not e!3127797))))

(assert (=> b!5005477 (= res!2135671 (not ((_ is Nil!57865) (tail!9866 lt!2071008))))))

(declare-fun b!5005479 () Bool)

(assert (=> b!5005479 (= e!3127797 (isPrefix!5348 (tail!9866 (tail!9866 lt!2071010)) (tail!9866 (tail!9866 lt!2071008))))))

(declare-fun b!5005480 () Bool)

(declare-fun e!3127796 () Bool)

(assert (=> b!5005480 (= e!3127796 (>= (size!38465 (tail!9866 lt!2071008)) (size!38465 (tail!9866 lt!2071010))))))

(declare-fun b!5005478 () Bool)

(declare-fun res!2135673 () Bool)

(assert (=> b!5005478 (=> (not res!2135673) (not e!3127797))))

(assert (=> b!5005478 (= res!2135673 (= (head!10733 (tail!9866 lt!2071010)) (head!10733 (tail!9866 lt!2071008))))))

(declare-fun d!1611004 () Bool)

(assert (=> d!1611004 e!3127796))

(declare-fun res!2135672 () Bool)

(assert (=> d!1611004 (=> res!2135672 e!3127796)))

(declare-fun lt!2071494 () Bool)

(assert (=> d!1611004 (= res!2135672 (not lt!2071494))))

(assert (=> d!1611004 (= lt!2071494 e!3127798)))

(declare-fun res!2135670 () Bool)

(assert (=> d!1611004 (=> res!2135670 e!3127798)))

(assert (=> d!1611004 (= res!2135670 ((_ is Nil!57865) (tail!9866 lt!2071010)))))

(assert (=> d!1611004 (= (isPrefix!5348 (tail!9866 lt!2071010) (tail!9866 lt!2071008)) lt!2071494)))

(assert (= (and d!1611004 (not res!2135670)) b!5005477))

(assert (= (and b!5005477 res!2135671) b!5005478))

(assert (= (and b!5005478 res!2135673) b!5005479))

(assert (= (and d!1611004 (not res!2135672)) b!5005480))

(assert (=> b!5005479 m!6039122))

(declare-fun m!6039524 () Bool)

(assert (=> b!5005479 m!6039524))

(assert (=> b!5005479 m!6039012))

(declare-fun m!6039526 () Bool)

(assert (=> b!5005479 m!6039526))

(assert (=> b!5005479 m!6039524))

(assert (=> b!5005479 m!6039526))

(declare-fun m!6039528 () Bool)

(assert (=> b!5005479 m!6039528))

(assert (=> b!5005480 m!6039012))

(declare-fun m!6039530 () Bool)

(assert (=> b!5005480 m!6039530))

(assert (=> b!5005480 m!6039122))

(declare-fun m!6039532 () Bool)

(assert (=> b!5005480 m!6039532))

(assert (=> b!5005478 m!6039122))

(declare-fun m!6039534 () Bool)

(assert (=> b!5005478 m!6039534))

(assert (=> b!5005478 m!6039012))

(declare-fun m!6039536 () Bool)

(assert (=> b!5005478 m!6039536))

(assert (=> b!5005049 d!1611004))

(declare-fun d!1611006 () Bool)

(assert (=> d!1611006 (= (tail!9866 lt!2071010) (t!370335 lt!2071010))))

(assert (=> b!5005049 d!1611006))

(assert (=> b!5005049 d!1610972))

(assert (=> b!5004369 d!1610816))

(declare-fun bs!1185976 () Bool)

(declare-fun d!1611008 () Bool)

(assert (= bs!1185976 (and d!1611008 d!1610970)))

(declare-fun lambda!248402 () Int)

(assert (=> bs!1185976 (not (= lambda!248402 lambda!248394))))

(declare-fun bs!1185977 () Bool)

(assert (= bs!1185977 (and d!1611008 b!5005396)))

(assert (=> bs!1185977 (not (= lambda!248402 lambda!248395))))

(declare-fun bs!1185978 () Bool)

(assert (= bs!1185978 (and d!1611008 b!5005397)))

(assert (=> bs!1185978 (not (= lambda!248402 lambda!248396))))

(declare-fun bs!1185979 () Bool)

(assert (= bs!1185979 (and d!1611008 d!1610976)))

(assert (=> bs!1185979 (= lambda!248402 lambda!248399)))

(assert (=> d!1611008 (= (nullableZipper!884 z!4183) (exists!1360 z!4183 lambda!248402))))

(declare-fun bs!1185980 () Bool)

(assert (= bs!1185980 d!1611008))

(declare-fun m!6039538 () Bool)

(assert (=> bs!1185980 m!6039538))

(assert (=> b!5005007 d!1611008))

(declare-fun d!1611010 () Bool)

(declare-fun res!2135678 () Bool)

(declare-fun e!3127803 () Bool)

(assert (=> d!1611010 (=> res!2135678 e!3127803)))

(assert (=> d!1611010 (= res!2135678 ((_ is Nil!57867) lt!2071274))))

(assert (=> d!1611010 (= (noDuplicate!1030 lt!2071274) e!3127803)))

(declare-fun b!5005485 () Bool)

(declare-fun e!3127804 () Bool)

(assert (=> b!5005485 (= e!3127803 e!3127804)))

(declare-fun res!2135679 () Bool)

(assert (=> b!5005485 (=> (not res!2135679) (not e!3127804))))

(declare-fun contains!19554 (List!57991 Context!6440) Bool)

(assert (=> b!5005485 (= res!2135679 (not (contains!19554 (t!370337 lt!2071274) (h!64315 lt!2071274))))))

(declare-fun b!5005486 () Bool)

(assert (=> b!5005486 (= e!3127804 (noDuplicate!1030 (t!370337 lt!2071274)))))

(assert (= (and d!1611010 (not res!2135678)) b!5005485))

(assert (= (and b!5005485 res!2135679) b!5005486))

(declare-fun m!6039540 () Bool)

(assert (=> b!5005485 m!6039540))

(declare-fun m!6039542 () Bool)

(assert (=> b!5005486 m!6039542))

(assert (=> d!1610762 d!1611010))

(declare-fun d!1611012 () Bool)

(declare-fun e!3127813 () Bool)

(assert (=> d!1611012 e!3127813))

(declare-fun res!2135685 () Bool)

(assert (=> d!1611012 (=> (not res!2135685) (not e!3127813))))

(declare-fun res!2135684 () List!57991)

(assert (=> d!1611012 (= res!2135685 (noDuplicate!1030 res!2135684))))

(declare-fun e!3127811 () Bool)

(assert (=> d!1611012 e!3127811))

(assert (=> d!1611012 (= (choose!37012 z!4183) res!2135684)))

(declare-fun b!5005494 () Bool)

(declare-fun e!3127812 () Bool)

(declare-fun tp!1403620 () Bool)

(assert (=> b!5005494 (= e!3127812 tp!1403620)))

(declare-fun b!5005493 () Bool)

(declare-fun tp!1403619 () Bool)

(assert (=> b!5005493 (= e!3127811 (and (inv!76031 (h!64315 res!2135684)) e!3127812 tp!1403619))))

(declare-fun b!5005495 () Bool)

(assert (=> b!5005495 (= e!3127813 (= (content!10252 res!2135684) z!4183))))

(assert (= b!5005493 b!5005494))

(assert (= (and d!1611012 ((_ is Cons!57867) res!2135684)) b!5005493))

(assert (= (and d!1611012 res!2135685) b!5005495))

(declare-fun m!6039544 () Bool)

(assert (=> d!1611012 m!6039544))

(declare-fun m!6039546 () Bool)

(assert (=> b!5005493 m!6039546))

(declare-fun m!6039548 () Bool)

(assert (=> b!5005495 m!6039548))

(assert (=> d!1610762 d!1611012))

(declare-fun d!1611014 () Bool)

(assert (=> d!1611014 (isPrefix!5348 lt!2071008 lt!2071008)))

(declare-fun lt!2071497 () Unit!149035)

(declare-fun choose!37023 (List!57989 List!57989) Unit!149035)

(assert (=> d!1611014 (= lt!2071497 (choose!37023 lt!2071008 lt!2071008))))

(assert (=> d!1611014 (= (lemmaIsPrefixRefl!3627 lt!2071008 lt!2071008) lt!2071497)))

(declare-fun bs!1185981 () Bool)

(assert (= bs!1185981 d!1611014))

(assert (=> bs!1185981 m!6038992))

(declare-fun m!6039550 () Bool)

(assert (=> bs!1185981 m!6039550))

(assert (=> bm!349370 d!1611014))

(assert (=> b!5005003 d!1611008))

(declare-fun b!5005496 () Bool)

(declare-fun e!3127814 () Bool)

(assert (=> b!5005496 (= e!3127814 (not (isEmpty!31334 (right!42635 (c!854185 totalInput!1012)))))))

(declare-fun b!5005497 () Bool)

(declare-fun res!2135690 () Bool)

(assert (=> b!5005497 (=> (not res!2135690) (not e!3127814))))

(assert (=> b!5005497 (= res!2135690 (<= (- (height!2033 (left!42305 (c!854185 totalInput!1012))) (height!2033 (right!42635 (c!854185 totalInput!1012)))) 1))))

(declare-fun b!5005498 () Bool)

(declare-fun e!3127815 () Bool)

(assert (=> b!5005498 (= e!3127815 e!3127814)))

(declare-fun res!2135688 () Bool)

(assert (=> b!5005498 (=> (not res!2135688) (not e!3127814))))

(assert (=> b!5005498 (= res!2135688 (<= (- 1) (- (height!2033 (left!42305 (c!854185 totalInput!1012))) (height!2033 (right!42635 (c!854185 totalInput!1012))))))))

(declare-fun b!5005499 () Bool)

(declare-fun res!2135686 () Bool)

(assert (=> b!5005499 (=> (not res!2135686) (not e!3127814))))

(assert (=> b!5005499 (= res!2135686 (isBalanced!4272 (right!42635 (c!854185 totalInput!1012))))))

(declare-fun b!5005500 () Bool)

(declare-fun res!2135691 () Bool)

(assert (=> b!5005500 (=> (not res!2135691) (not e!3127814))))

(assert (=> b!5005500 (= res!2135691 (isBalanced!4272 (left!42305 (c!854185 totalInput!1012))))))

(declare-fun d!1611016 () Bool)

(declare-fun res!2135689 () Bool)

(assert (=> d!1611016 (=> res!2135689 e!3127815)))

(assert (=> d!1611016 (= res!2135689 (not ((_ is Node!15314) (c!854185 totalInput!1012))))))

(assert (=> d!1611016 (= (isBalanced!4272 (c!854185 totalInput!1012)) e!3127815)))

(declare-fun b!5005501 () Bool)

(declare-fun res!2135687 () Bool)

(assert (=> b!5005501 (=> (not res!2135687) (not e!3127814))))

(assert (=> b!5005501 (= res!2135687 (not (isEmpty!31334 (left!42305 (c!854185 totalInput!1012)))))))

(assert (= (and d!1611016 (not res!2135689)) b!5005498))

(assert (= (and b!5005498 res!2135688) b!5005497))

(assert (= (and b!5005497 res!2135690) b!5005500))

(assert (= (and b!5005500 res!2135691) b!5005499))

(assert (= (and b!5005499 res!2135686) b!5005501))

(assert (= (and b!5005501 res!2135687) b!5005496))

(declare-fun m!6039552 () Bool)

(assert (=> b!5005498 m!6039552))

(declare-fun m!6039554 () Bool)

(assert (=> b!5005498 m!6039554))

(assert (=> b!5005497 m!6039552))

(assert (=> b!5005497 m!6039554))

(declare-fun m!6039556 () Bool)

(assert (=> b!5005499 m!6039556))

(declare-fun m!6039558 () Bool)

(assert (=> b!5005501 m!6039558))

(declare-fun m!6039560 () Bool)

(assert (=> b!5005500 m!6039560))

(declare-fun m!6039562 () Bool)

(assert (=> b!5005496 m!6039562))

(assert (=> d!1610832 d!1611016))

(assert (=> bm!349380 d!1610788))

(assert (=> b!5005044 d!1610914))

(assert (=> bm!349352 d!1610854))

(declare-fun b!5005502 () Bool)

(declare-fun e!3127822 () Bool)

(declare-fun e!3127821 () Bool)

(assert (=> b!5005502 (= e!3127822 e!3127821)))

(declare-fun res!2135694 () Bool)

(assert (=> b!5005502 (=> res!2135694 e!3127821)))

(declare-fun call!349433 () Bool)

(assert (=> b!5005502 (= res!2135694 call!349433)))

(declare-fun b!5005503 () Bool)

(declare-fun e!3127816 () Bool)

(declare-fun e!3127820 () Bool)

(assert (=> b!5005503 (= e!3127816 e!3127820)))

(declare-fun c!854510 () Bool)

(assert (=> b!5005503 (= c!854510 ((_ is EmptyLang!13795) r!12727))))

(declare-fun b!5005504 () Bool)

(declare-fun e!3127819 () Bool)

(assert (=> b!5005504 (= e!3127819 (= (head!10733 (_1!34812 (findLongestMatchInner!1984 r!12727 Nil!57865 (size!38465 Nil!57865) lt!2071008 lt!2071008 (size!38465 lt!2071008)))) (c!854186 r!12727)))))

(declare-fun b!5005505 () Bool)

(declare-fun res!2135693 () Bool)

(assert (=> b!5005505 (=> (not res!2135693) (not e!3127819))))

(assert (=> b!5005505 (= res!2135693 (not call!349433))))

(declare-fun d!1611018 () Bool)

(assert (=> d!1611018 e!3127816))

(declare-fun c!854509 () Bool)

(assert (=> d!1611018 (= c!854509 ((_ is EmptyExpr!13795) r!12727))))

(declare-fun lt!2071498 () Bool)

(declare-fun e!3127817 () Bool)

(assert (=> d!1611018 (= lt!2071498 e!3127817)))

(declare-fun c!854508 () Bool)

(assert (=> d!1611018 (= c!854508 (isEmpty!31333 (_1!34812 (findLongestMatchInner!1984 r!12727 Nil!57865 (size!38465 Nil!57865) lt!2071008 lt!2071008 (size!38465 lt!2071008)))))))

(assert (=> d!1611018 (validRegex!6092 r!12727)))

(assert (=> d!1611018 (= (matchR!6759 r!12727 (_1!34812 (findLongestMatchInner!1984 r!12727 Nil!57865 (size!38465 Nil!57865) lt!2071008 lt!2071008 (size!38465 lt!2071008)))) lt!2071498)))

(declare-fun b!5005506 () Bool)

(assert (=> b!5005506 (= e!3127816 (= lt!2071498 call!349433))))

(declare-fun bm!349428 () Bool)

(assert (=> bm!349428 (= call!349433 (isEmpty!31333 (_1!34812 (findLongestMatchInner!1984 r!12727 Nil!57865 (size!38465 Nil!57865) lt!2071008 lt!2071008 (size!38465 lt!2071008)))))))

(declare-fun b!5005507 () Bool)

(declare-fun res!2135699 () Bool)

(assert (=> b!5005507 (=> (not res!2135699) (not e!3127819))))

(assert (=> b!5005507 (= res!2135699 (isEmpty!31333 (tail!9866 (_1!34812 (findLongestMatchInner!1984 r!12727 Nil!57865 (size!38465 Nil!57865) lt!2071008 lt!2071008 (size!38465 lt!2071008))))))))

(declare-fun b!5005508 () Bool)

(declare-fun res!2135692 () Bool)

(declare-fun e!3127818 () Bool)

(assert (=> b!5005508 (=> res!2135692 e!3127818)))

(assert (=> b!5005508 (= res!2135692 (not ((_ is ElementMatch!13795) r!12727)))))

(assert (=> b!5005508 (= e!3127820 e!3127818)))

(declare-fun b!5005509 () Bool)

(assert (=> b!5005509 (= e!3127817 (matchR!6759 (derivativeStep!3979 r!12727 (head!10733 (_1!34812 (findLongestMatchInner!1984 r!12727 Nil!57865 (size!38465 Nil!57865) lt!2071008 lt!2071008 (size!38465 lt!2071008))))) (tail!9866 (_1!34812 (findLongestMatchInner!1984 r!12727 Nil!57865 (size!38465 Nil!57865) lt!2071008 lt!2071008 (size!38465 lt!2071008))))))))

(declare-fun b!5005510 () Bool)

(declare-fun res!2135695 () Bool)

(assert (=> b!5005510 (=> res!2135695 e!3127818)))

(assert (=> b!5005510 (= res!2135695 e!3127819)))

(declare-fun res!2135698 () Bool)

(assert (=> b!5005510 (=> (not res!2135698) (not e!3127819))))

(assert (=> b!5005510 (= res!2135698 lt!2071498)))

(declare-fun b!5005511 () Bool)

(assert (=> b!5005511 (= e!3127820 (not lt!2071498))))

(declare-fun b!5005512 () Bool)

(assert (=> b!5005512 (= e!3127818 e!3127822)))

(declare-fun res!2135696 () Bool)

(assert (=> b!5005512 (=> (not res!2135696) (not e!3127822))))

(assert (=> b!5005512 (= res!2135696 (not lt!2071498))))

(declare-fun b!5005513 () Bool)

(assert (=> b!5005513 (= e!3127821 (not (= (head!10733 (_1!34812 (findLongestMatchInner!1984 r!12727 Nil!57865 (size!38465 Nil!57865) lt!2071008 lt!2071008 (size!38465 lt!2071008)))) (c!854186 r!12727))))))

(declare-fun b!5005514 () Bool)

(assert (=> b!5005514 (= e!3127817 (nullable!4689 r!12727))))

(declare-fun b!5005515 () Bool)

(declare-fun res!2135697 () Bool)

(assert (=> b!5005515 (=> res!2135697 e!3127821)))

(assert (=> b!5005515 (= res!2135697 (not (isEmpty!31333 (tail!9866 (_1!34812 (findLongestMatchInner!1984 r!12727 Nil!57865 (size!38465 Nil!57865) lt!2071008 lt!2071008 (size!38465 lt!2071008)))))))))

(assert (= (and d!1611018 c!854508) b!5005514))

(assert (= (and d!1611018 (not c!854508)) b!5005509))

(assert (= (and d!1611018 c!854509) b!5005506))

(assert (= (and d!1611018 (not c!854509)) b!5005503))

(assert (= (and b!5005503 c!854510) b!5005511))

(assert (= (and b!5005503 (not c!854510)) b!5005508))

(assert (= (and b!5005508 (not res!2135692)) b!5005510))

(assert (= (and b!5005510 res!2135698) b!5005505))

(assert (= (and b!5005505 res!2135693) b!5005507))

(assert (= (and b!5005507 res!2135699) b!5005504))

(assert (= (and b!5005510 (not res!2135695)) b!5005512))

(assert (= (and b!5005512 res!2135696) b!5005502))

(assert (= (and b!5005502 (not res!2135694)) b!5005515))

(assert (= (and b!5005515 (not res!2135697)) b!5005513))

(assert (= (or b!5005506 b!5005502 b!5005505) bm!349428))

(declare-fun m!6039564 () Bool)

(assert (=> b!5005515 m!6039564))

(assert (=> b!5005515 m!6039564))

(declare-fun m!6039566 () Bool)

(assert (=> b!5005515 m!6039566))

(declare-fun m!6039568 () Bool)

(assert (=> b!5005504 m!6039568))

(assert (=> b!5005513 m!6039568))

(assert (=> b!5005509 m!6039568))

(assert (=> b!5005509 m!6039568))

(declare-fun m!6039570 () Bool)

(assert (=> b!5005509 m!6039570))

(assert (=> b!5005509 m!6039564))

(assert (=> b!5005509 m!6039570))

(assert (=> b!5005509 m!6039564))

(declare-fun m!6039572 () Bool)

(assert (=> b!5005509 m!6039572))

(assert (=> bm!349428 m!6038958))

(assert (=> b!5005514 m!6039004))

(assert (=> b!5005507 m!6039564))

(assert (=> b!5005507 m!6039564))

(assert (=> b!5005507 m!6039566))

(assert (=> d!1611018 m!6038958))

(assert (=> d!1611018 m!6038386))

(assert (=> b!5004836 d!1611018))

(assert (=> b!5004836 d!1610792))

(assert (=> b!5004836 d!1610784))

(assert (=> b!5004836 d!1610776))

(declare-fun d!1611020 () Bool)

(assert (=> d!1611020 (= (isEmpty!31333 (list!18624 (_1!34811 lt!2071017))) ((_ is Nil!57865) (list!18624 (_1!34811 lt!2071017))))))

(assert (=> d!1610808 d!1611020))

(assert (=> d!1610808 d!1610648))

(declare-fun d!1611022 () Bool)

(declare-fun lt!2071501 () Bool)

(assert (=> d!1611022 (= lt!2071501 (isEmpty!31333 (list!18626 (c!854185 (_1!34811 lt!2071017)))))))

(assert (=> d!1611022 (= lt!2071501 (= (size!38467 (c!854185 (_1!34811 lt!2071017))) 0))))

(assert (=> d!1611022 (= (isEmpty!31334 (c!854185 (_1!34811 lt!2071017))) lt!2071501)))

(declare-fun bs!1185982 () Bool)

(assert (= bs!1185982 d!1611022))

(assert (=> bs!1185982 m!6038490))

(assert (=> bs!1185982 m!6038490))

(declare-fun m!6039574 () Bool)

(assert (=> bs!1185982 m!6039574))

(assert (=> bs!1185982 m!6039064))

(assert (=> d!1610808 d!1611022))

(declare-fun d!1611024 () Bool)

(assert (=> d!1611024 (= (isEmpty!31333 (_1!34812 lt!2071378)) ((_ is Nil!57865) (_1!34812 lt!2071378)))))

(assert (=> b!5004951 d!1611024))

(assert (=> b!5005001 d!1610944))

(declare-fun d!1611026 () Bool)

(declare-fun c!854511 () Bool)

(assert (=> d!1611026 (= c!854511 (isEmpty!31333 (tail!9866 (_1!34812 lt!2071026))))))

(declare-fun e!3127823 () Bool)

(assert (=> d!1611026 (= (matchZipper!563 (derivationStepZipper!633 z!4183 (head!10733 (_1!34812 lt!2071026))) (tail!9866 (_1!34812 lt!2071026))) e!3127823)))

(declare-fun b!5005516 () Bool)

(assert (=> b!5005516 (= e!3127823 (nullableZipper!884 (derivationStepZipper!633 z!4183 (head!10733 (_1!34812 lt!2071026)))))))

(declare-fun b!5005517 () Bool)

(assert (=> b!5005517 (= e!3127823 (matchZipper!563 (derivationStepZipper!633 (derivationStepZipper!633 z!4183 (head!10733 (_1!34812 lt!2071026))) (head!10733 (tail!9866 (_1!34812 lt!2071026)))) (tail!9866 (tail!9866 (_1!34812 lt!2071026)))))))

(assert (= (and d!1611026 c!854511) b!5005516))

(assert (= (and d!1611026 (not c!854511)) b!5005517))

(assert (=> d!1611026 m!6039042))

(assert (=> d!1611026 m!6039112))

(assert (=> b!5005516 m!6039066))

(declare-fun m!6039576 () Bool)

(assert (=> b!5005516 m!6039576))

(assert (=> b!5005517 m!6039042))

(assert (=> b!5005517 m!6039176))

(assert (=> b!5005517 m!6039066))

(assert (=> b!5005517 m!6039176))

(declare-fun m!6039578 () Bool)

(assert (=> b!5005517 m!6039578))

(assert (=> b!5005517 m!6039042))

(assert (=> b!5005517 m!6039166))

(assert (=> b!5005517 m!6039578))

(assert (=> b!5005517 m!6039166))

(declare-fun m!6039580 () Bool)

(assert (=> b!5005517 m!6039580))

(assert (=> b!5005004 d!1611026))

(declare-fun bs!1185983 () Bool)

(declare-fun d!1611028 () Bool)

(assert (= bs!1185983 (and d!1611028 d!1610864)))

(declare-fun lambda!248403 () Int)

(assert (=> bs!1185983 (= (= (head!10733 (_1!34812 lt!2071026)) (head!10733 (take!654 (drop!2458 lt!2071019 lt!2071014) lt!2071018))) (= lambda!248403 lambda!248375))))

(declare-fun bs!1185984 () Bool)

(assert (= bs!1185984 (and d!1611028 d!1610980)))

(assert (=> bs!1185984 (= (= (head!10733 (_1!34812 lt!2071026)) (apply!13989 totalInput!1012 lt!2071014)) (= lambda!248403 lambda!248400))))

(declare-fun bs!1185985 () Bool)

(assert (= bs!1185985 (and d!1611028 d!1610988)))

(assert (=> bs!1185985 (= (= (head!10733 (_1!34812 lt!2071026)) (head!10733 lt!2071021)) (= lambda!248403 lambda!248401))))

(assert (=> d!1611028 true))

(assert (=> d!1611028 (= (derivationStepZipper!633 z!4183 (head!10733 (_1!34812 lt!2071026))) (flatMap!280 z!4183 lambda!248403))))

(declare-fun bs!1185986 () Bool)

(assert (= bs!1185986 d!1611028))

(declare-fun m!6039582 () Bool)

(assert (=> bs!1185986 m!6039582))

(assert (=> b!5005004 d!1611028))

(assert (=> b!5005004 d!1610914))

(assert (=> b!5005004 d!1610836))

(assert (=> b!5005056 d!1610776))

(assert (=> bm!349374 d!1610944))

(declare-fun d!1611030 () Bool)

(declare-fun c!854512 () Bool)

(assert (=> d!1611030 (= c!854512 (isEmpty!31333 (tail!9866 lt!2071030)))))

(declare-fun e!3127824 () Bool)

(assert (=> d!1611030 (= (matchZipper!563 (derivationStepZipper!633 z!4183 (head!10733 lt!2071030)) (tail!9866 lt!2071030)) e!3127824)))

(declare-fun b!5005518 () Bool)

(assert (=> b!5005518 (= e!3127824 (nullableZipper!884 (derivationStepZipper!633 z!4183 (head!10733 lt!2071030))))))

(declare-fun b!5005519 () Bool)

(assert (=> b!5005519 (= e!3127824 (matchZipper!563 (derivationStepZipper!633 (derivationStepZipper!633 z!4183 (head!10733 lt!2071030)) (head!10733 (tail!9866 lt!2071030))) (tail!9866 (tail!9866 lt!2071030))))))

(assert (= (and d!1611030 c!854512) b!5005518))

(assert (= (and d!1611030 (not c!854512)) b!5005519))

(assert (=> d!1611030 m!6038842))

(declare-fun m!6039584 () Bool)

(assert (=> d!1611030 m!6039584))

(assert (=> b!5005518 m!6038840))

(declare-fun m!6039586 () Bool)

(assert (=> b!5005518 m!6039586))

(assert (=> b!5005519 m!6038842))

(declare-fun m!6039588 () Bool)

(assert (=> b!5005519 m!6039588))

(assert (=> b!5005519 m!6038840))

(assert (=> b!5005519 m!6039588))

(declare-fun m!6039590 () Bool)

(assert (=> b!5005519 m!6039590))

(assert (=> b!5005519 m!6038842))

(declare-fun m!6039592 () Bool)

(assert (=> b!5005519 m!6039592))

(assert (=> b!5005519 m!6039590))

(assert (=> b!5005519 m!6039592))

(declare-fun m!6039594 () Bool)

(assert (=> b!5005519 m!6039594))

(assert (=> b!5004736 d!1611030))

(declare-fun bs!1185987 () Bool)

(declare-fun d!1611032 () Bool)

(assert (= bs!1185987 (and d!1611032 d!1610864)))

(declare-fun lambda!248404 () Int)

(assert (=> bs!1185987 (= (= (head!10733 lt!2071030) (head!10733 (take!654 (drop!2458 lt!2071019 lt!2071014) lt!2071018))) (= lambda!248404 lambda!248375))))

(declare-fun bs!1185988 () Bool)

(assert (= bs!1185988 (and d!1611032 d!1610980)))

(assert (=> bs!1185988 (= (= (head!10733 lt!2071030) (apply!13989 totalInput!1012 lt!2071014)) (= lambda!248404 lambda!248400))))

(declare-fun bs!1185989 () Bool)

(assert (= bs!1185989 (and d!1611032 d!1610988)))

(assert (=> bs!1185989 (= (= (head!10733 lt!2071030) (head!10733 lt!2071021)) (= lambda!248404 lambda!248401))))

(declare-fun bs!1185990 () Bool)

(assert (= bs!1185990 (and d!1611032 d!1611028)))

(assert (=> bs!1185990 (= (= (head!10733 lt!2071030) (head!10733 (_1!34812 lt!2071026))) (= lambda!248404 lambda!248403))))

(assert (=> d!1611032 true))

(assert (=> d!1611032 (= (derivationStepZipper!633 z!4183 (head!10733 lt!2071030)) (flatMap!280 z!4183 lambda!248404))))

(declare-fun bs!1185991 () Bool)

(assert (= bs!1185991 d!1611032))

(declare-fun m!6039596 () Bool)

(assert (=> bs!1185991 m!6039596))

(assert (=> b!5004736 d!1611032))

(declare-fun d!1611034 () Bool)

(assert (=> d!1611034 (= (head!10733 lt!2071030) (h!64313 lt!2071030))))

(assert (=> b!5004736 d!1611034))

(declare-fun d!1611036 () Bool)

(assert (=> d!1611036 (= (tail!9866 lt!2071030) (t!370335 lt!2071030))))

(assert (=> b!5004736 d!1611036))

(declare-fun d!1611038 () Bool)

(declare-fun lt!2071502 () Int)

(assert (=> d!1611038 (>= lt!2071502 0)))

(declare-fun e!3127825 () Int)

(assert (=> d!1611038 (= lt!2071502 e!3127825)))

(declare-fun c!854513 () Bool)

(assert (=> d!1611038 (= c!854513 ((_ is Nil!57865) lt!2071025))))

(assert (=> d!1611038 (= (size!38465 lt!2071025) lt!2071502)))

(declare-fun b!5005520 () Bool)

(assert (=> b!5005520 (= e!3127825 0)))

(declare-fun b!5005521 () Bool)

(assert (=> b!5005521 (= e!3127825 (+ 1 (size!38465 (t!370335 lt!2071025))))))

(assert (= (and d!1611038 c!854513) b!5005520))

(assert (= (and d!1611038 (not c!854513)) b!5005521))

(assert (=> b!5005521 m!6039372))

(assert (=> b!5004754 d!1611038))

(assert (=> d!1610774 d!1610848))

(assert (=> d!1610774 d!1610654))

(declare-fun d!1611040 () Bool)

(declare-fun e!3127828 () Bool)

(assert (=> d!1611040 e!3127828))

(declare-fun res!2135702 () Bool)

(assert (=> d!1611040 (=> res!2135702 e!3127828)))

(assert (=> d!1611040 (= res!2135702 (= (findLongestMatchInnerZipperFastV2!135 z!4183 lt!2071014 totalInput!1012 (size!38464 totalInput!1012)) 0))))

(assert (=> d!1611040 true))

(declare-fun _$81!96 () Unit!149035)

(assert (=> d!1611040 (= (choose!37016 z!4183 lt!2071014 totalInput!1012) _$81!96)))

(declare-fun b!5005524 () Bool)

(assert (=> b!5005524 (= e!3127828 (matchZipper!563 z!4183 (take!654 (drop!2458 (list!18624 totalInput!1012) lt!2071014) (findLongestMatchInnerZipperFastV2!135 z!4183 lt!2071014 totalInput!1012 (size!38464 totalInput!1012)))))))

(assert (= (and d!1611040 (not res!2135702)) b!5005524))

(assert (=> d!1611040 m!6038404))

(assert (=> d!1611040 m!6038404))

(assert (=> d!1611040 m!6038920))

(assert (=> b!5005524 m!6038404))

(assert (=> b!5005524 m!6038920))

(assert (=> b!5005524 m!6038928))

(assert (=> b!5005524 m!6038920))

(assert (=> b!5005524 m!6038924))

(assert (=> b!5005524 m!6038924))

(assert (=> b!5005524 m!6038926))

(assert (=> b!5005524 m!6038374))

(assert (=> b!5005524 m!6038928))

(assert (=> b!5005524 m!6038374))

(assert (=> b!5005524 m!6038404))

(assert (=> d!1610774 d!1611040))

(assert (=> b!5005029 d!1610896))

(assert (=> b!5005029 d!1610898))

(declare-fun b!5005525 () Bool)

(declare-fun e!3127831 () Bool)

(declare-fun e!3127830 () Bool)

(assert (=> b!5005525 (= e!3127831 e!3127830)))

(declare-fun res!2135704 () Bool)

(assert (=> b!5005525 (=> (not res!2135704) (not e!3127830))))

(assert (=> b!5005525 (= res!2135704 (not ((_ is Nil!57865) (++!12641 (_1!34812 lt!2071026) (_2!34812 lt!2071026)))))))

(declare-fun b!5005527 () Bool)

(assert (=> b!5005527 (= e!3127830 (isPrefix!5348 (tail!9866 (_1!34812 lt!2071026)) (tail!9866 (++!12641 (_1!34812 lt!2071026) (_2!34812 lt!2071026)))))))

(declare-fun b!5005528 () Bool)

(declare-fun e!3127829 () Bool)

(assert (=> b!5005528 (= e!3127829 (>= (size!38465 (++!12641 (_1!34812 lt!2071026) (_2!34812 lt!2071026))) (size!38465 (_1!34812 lt!2071026))))))

(declare-fun b!5005526 () Bool)

(declare-fun res!2135706 () Bool)

(assert (=> b!5005526 (=> (not res!2135706) (not e!3127830))))

(assert (=> b!5005526 (= res!2135706 (= (head!10733 (_1!34812 lt!2071026)) (head!10733 (++!12641 (_1!34812 lt!2071026) (_2!34812 lt!2071026)))))))

(declare-fun d!1611042 () Bool)

(assert (=> d!1611042 e!3127829))

(declare-fun res!2135705 () Bool)

(assert (=> d!1611042 (=> res!2135705 e!3127829)))

(declare-fun lt!2071503 () Bool)

(assert (=> d!1611042 (= res!2135705 (not lt!2071503))))

(assert (=> d!1611042 (= lt!2071503 e!3127831)))

(declare-fun res!2135703 () Bool)

(assert (=> d!1611042 (=> res!2135703 e!3127831)))

(assert (=> d!1611042 (= res!2135703 ((_ is Nil!57865) (_1!34812 lt!2071026)))))

(assert (=> d!1611042 (= (isPrefix!5348 (_1!34812 lt!2071026) (++!12641 (_1!34812 lt!2071026) (_2!34812 lt!2071026))) lt!2071503)))

(assert (= (and d!1611042 (not res!2135703)) b!5005525))

(assert (= (and b!5005525 res!2135704) b!5005526))

(assert (= (and b!5005526 res!2135706) b!5005527))

(assert (= (and d!1611042 (not res!2135705)) b!5005528))

(assert (=> b!5005527 m!6039042))

(assert (=> b!5005527 m!6038354))

(declare-fun m!6039598 () Bool)

(assert (=> b!5005527 m!6039598))

(assert (=> b!5005527 m!6039042))

(assert (=> b!5005527 m!6039598))

(declare-fun m!6039600 () Bool)

(assert (=> b!5005527 m!6039600))

(assert (=> b!5005528 m!6038354))

(declare-fun m!6039602 () Bool)

(assert (=> b!5005528 m!6039602))

(assert (=> b!5005528 m!6038364))

(assert (=> b!5005526 m!6039050))

(assert (=> b!5005526 m!6038354))

(declare-fun m!6039604 () Bool)

(assert (=> b!5005526 m!6039604))

(assert (=> d!1610780 d!1611042))

(assert (=> d!1610780 d!1610764))

(declare-fun d!1611044 () Bool)

(assert (=> d!1611044 (isPrefix!5348 (_1!34812 lt!2071026) (++!12641 (_1!34812 lt!2071026) (_2!34812 lt!2071026)))))

(assert (=> d!1611044 true))

(declare-fun _$46!1954 () Unit!149035)

(assert (=> d!1611044 (= (choose!37014 (_1!34812 lt!2071026) (_2!34812 lt!2071026)) _$46!1954)))

(declare-fun bs!1185992 () Bool)

(assert (= bs!1185992 d!1611044))

(assert (=> bs!1185992 m!6038354))

(assert (=> bs!1185992 m!6038354))

(assert (=> bs!1185992 m!6038938))

(assert (=> d!1610780 d!1611044))

(assert (=> b!5004787 d!1610854))

(assert (=> b!5004787 d!1610776))

(assert (=> b!5004813 d!1610654))

(declare-fun b!5005529 () Bool)

(declare-fun e!3127835 () Unit!149035)

(declare-fun Unit!149045 () Unit!149035)

(assert (=> b!5005529 (= e!3127835 Unit!149045)))

(declare-fun lt!2071510 () Unit!149035)

(declare-fun call!349436 () Unit!149035)

(assert (=> b!5005529 (= lt!2071510 call!349436)))

(declare-fun call!349435 () Bool)

(assert (=> b!5005529 call!349435))

(declare-fun lt!2071505 () Unit!149035)

(assert (=> b!5005529 (= lt!2071505 lt!2071510)))

(declare-fun lt!2071516 () Unit!149035)

(declare-fun call!349437 () Unit!149035)

(assert (=> b!5005529 (= lt!2071516 call!349437)))

(assert (=> b!5005529 (= lt!2071008 lt!2071382)))

(declare-fun lt!2071518 () Unit!149035)

(assert (=> b!5005529 (= lt!2071518 lt!2071516)))

(assert (=> b!5005529 false))

(declare-fun b!5005530 () Bool)

(declare-fun Unit!149046 () Unit!149035)

(assert (=> b!5005530 (= e!3127835 Unit!149046)))

(declare-fun b!5005531 () Bool)

(declare-fun e!3127838 () tuple2!63018)

(declare-fun call!349440 () tuple2!63018)

(assert (=> b!5005531 (= e!3127838 call!349440)))

(declare-fun bm!349429 () Bool)

(declare-fun call!349441 () List!57989)

(assert (=> bm!349429 (= call!349441 (tail!9866 call!349381))))

(declare-fun b!5005532 () Bool)

(declare-fun c!854514 () Bool)

(declare-fun call!349438 () Bool)

(assert (=> b!5005532 (= c!854514 call!349438)))

(declare-fun lt!2071522 () Unit!149035)

(declare-fun lt!2071528 () Unit!149035)

(assert (=> b!5005532 (= lt!2071522 lt!2071528)))

(assert (=> b!5005532 (= lt!2071008 lt!2071382)))

(assert (=> b!5005532 (= lt!2071528 call!349437)))

(declare-fun lt!2071531 () Unit!149035)

(declare-fun lt!2071504 () Unit!149035)

(assert (=> b!5005532 (= lt!2071531 lt!2071504)))

(assert (=> b!5005532 call!349435))

(assert (=> b!5005532 (= lt!2071504 call!349436)))

(declare-fun e!3127836 () tuple2!63018)

(declare-fun e!3127832 () tuple2!63018)

(assert (=> b!5005532 (= e!3127836 e!3127832)))

(declare-fun b!5005533 () Bool)

(declare-fun e!3127839 () Bool)

(declare-fun lt!2071519 () tuple2!63018)

(assert (=> b!5005533 (= e!3127839 (>= (size!38465 (_1!34812 lt!2071519)) (size!38465 lt!2071382)))))

(declare-fun d!1611046 () Bool)

(declare-fun e!3127837 () Bool)

(assert (=> d!1611046 e!3127837))

(declare-fun res!2135708 () Bool)

(assert (=> d!1611046 (=> (not res!2135708) (not e!3127837))))

(assert (=> d!1611046 (= res!2135708 (= (++!12641 (_1!34812 lt!2071519) (_2!34812 lt!2071519)) lt!2071008))))

(declare-fun e!3127834 () tuple2!63018)

(assert (=> d!1611046 (= lt!2071519 e!3127834)))

(declare-fun c!854516 () Bool)

(assert (=> d!1611046 (= c!854516 (lostCause!1188 call!349379))))

(declare-fun lt!2071524 () Unit!149035)

(declare-fun Unit!149047 () Unit!149035)

(assert (=> d!1611046 (= lt!2071524 Unit!149047)))

(assert (=> d!1611046 (= (getSuffix!3144 lt!2071008 lt!2071382) call!349381)))

(declare-fun lt!2071530 () Unit!149035)

(declare-fun lt!2071512 () Unit!149035)

(assert (=> d!1611046 (= lt!2071530 lt!2071512)))

(declare-fun lt!2071517 () List!57989)

(assert (=> d!1611046 (= call!349381 lt!2071517)))

(assert (=> d!1611046 (= lt!2071512 (lemmaSamePrefixThenSameSuffix!2558 lt!2071382 call!349381 lt!2071382 lt!2071517 lt!2071008))))

(assert (=> d!1611046 (= lt!2071517 (getSuffix!3144 lt!2071008 lt!2071382))))

(declare-fun lt!2071506 () Unit!149035)

(declare-fun lt!2071521 () Unit!149035)

(assert (=> d!1611046 (= lt!2071506 lt!2071521)))

(assert (=> d!1611046 (isPrefix!5348 lt!2071382 (++!12641 lt!2071382 call!349381))))

(assert (=> d!1611046 (= lt!2071521 (lemmaConcatTwoListThenFirstIsPrefix!3446 lt!2071382 call!349381))))

(assert (=> d!1611046 (validRegex!6092 call!349379)))

(assert (=> d!1611046 (= (findLongestMatchInner!1984 call!349379 lt!2071382 (+ (size!38465 Nil!57865) 1) call!349381 lt!2071008 (size!38465 lt!2071008)) lt!2071519)))

(declare-fun b!5005534 () Bool)

(assert (=> b!5005534 (= e!3127832 (tuple2!63019 lt!2071382 Nil!57865))))

(declare-fun bm!349430 () Bool)

(assert (=> bm!349430 (= call!349436 (lemmaIsPrefixRefl!3627 lt!2071008 lt!2071008))))

(declare-fun bm!349431 () Bool)

(assert (=> bm!349431 (= call!349435 (isPrefix!5348 lt!2071008 lt!2071008))))

(declare-fun b!5005535 () Bool)

(assert (=> b!5005535 (= e!3127834 e!3127836)))

(declare-fun c!854517 () Bool)

(assert (=> b!5005535 (= c!854517 (= (+ (size!38465 Nil!57865) 1) (size!38465 lt!2071008)))))

(declare-fun bm!349432 () Bool)

(declare-fun call!349434 () C!27840)

(assert (=> bm!349432 (= call!349434 (head!10733 call!349381))))

(declare-fun b!5005536 () Bool)

(declare-fun e!3127833 () tuple2!63018)

(declare-fun lt!2071514 () tuple2!63018)

(assert (=> b!5005536 (= e!3127833 lt!2071514)))

(declare-fun b!5005537 () Bool)

(assert (=> b!5005537 (= e!3127837 e!3127839)))

(declare-fun res!2135707 () Bool)

(assert (=> b!5005537 (=> res!2135707 e!3127839)))

(assert (=> b!5005537 (= res!2135707 (isEmpty!31333 (_1!34812 lt!2071519)))))

(declare-fun bm!349433 () Bool)

(declare-fun call!349439 () Regex!13795)

(assert (=> bm!349433 (= call!349439 (derivativeStep!3979 call!349379 call!349434))))

(declare-fun b!5005538 () Bool)

(assert (=> b!5005538 (= e!3127834 (tuple2!63019 Nil!57865 lt!2071008))))

(declare-fun b!5005539 () Bool)

(declare-fun c!854519 () Bool)

(assert (=> b!5005539 (= c!854519 call!349438)))

(declare-fun lt!2071529 () Unit!149035)

(declare-fun lt!2071526 () Unit!149035)

(assert (=> b!5005539 (= lt!2071529 lt!2071526)))

(declare-fun lt!2071513 () List!57989)

(declare-fun lt!2071507 () C!27840)

(assert (=> b!5005539 (= (++!12641 (++!12641 lt!2071382 (Cons!57865 lt!2071507 Nil!57865)) lt!2071513) lt!2071008)))

(assert (=> b!5005539 (= lt!2071526 (lemmaMoveElementToOtherListKeepsConcatEq!1500 lt!2071382 lt!2071507 lt!2071513 lt!2071008))))

(assert (=> b!5005539 (= lt!2071513 (tail!9866 call!349381))))

(assert (=> b!5005539 (= lt!2071507 (head!10733 call!349381))))

(declare-fun lt!2071515 () Unit!149035)

(declare-fun lt!2071508 () Unit!149035)

(assert (=> b!5005539 (= lt!2071515 lt!2071508)))

(assert (=> b!5005539 (isPrefix!5348 (++!12641 lt!2071382 (Cons!57865 (head!10733 (getSuffix!3144 lt!2071008 lt!2071382)) Nil!57865)) lt!2071008)))

(assert (=> b!5005539 (= lt!2071508 (lemmaAddHeadSuffixToPrefixStillPrefix!889 lt!2071382 lt!2071008))))

(declare-fun lt!2071527 () Unit!149035)

(declare-fun lt!2071509 () Unit!149035)

(assert (=> b!5005539 (= lt!2071527 lt!2071509)))

(assert (=> b!5005539 (= lt!2071509 (lemmaAddHeadSuffixToPrefixStillPrefix!889 lt!2071382 lt!2071008))))

(declare-fun lt!2071523 () List!57989)

(assert (=> b!5005539 (= lt!2071523 (++!12641 lt!2071382 (Cons!57865 (head!10733 call!349381) Nil!57865)))))

(declare-fun lt!2071511 () Unit!149035)

(assert (=> b!5005539 (= lt!2071511 e!3127835)))

(declare-fun c!854515 () Bool)

(assert (=> b!5005539 (= c!854515 (= (size!38465 lt!2071382) (size!38465 lt!2071008)))))

(declare-fun lt!2071520 () Unit!149035)

(declare-fun lt!2071525 () Unit!149035)

(assert (=> b!5005539 (= lt!2071520 lt!2071525)))

(assert (=> b!5005539 (<= (size!38465 lt!2071382) (size!38465 lt!2071008))))

(assert (=> b!5005539 (= lt!2071525 (lemmaIsPrefixThenSmallerEqSize!815 lt!2071382 lt!2071008))))

(assert (=> b!5005539 (= e!3127836 e!3127838)))

(declare-fun bm!349434 () Bool)

(assert (=> bm!349434 (= call!349438 (nullable!4689 call!349379))))

(declare-fun b!5005540 () Bool)

(assert (=> b!5005540 (= e!3127832 (tuple2!63019 Nil!57865 lt!2071008))))

(declare-fun bm!349435 () Bool)

(assert (=> bm!349435 (= call!349437 (lemmaIsPrefixSameLengthThenSameList!1275 lt!2071008 lt!2071382 lt!2071008))))

(declare-fun b!5005541 () Bool)

(assert (=> b!5005541 (= e!3127833 (tuple2!63019 lt!2071382 call!349381))))

(declare-fun bm!349436 () Bool)

(assert (=> bm!349436 (= call!349440 (findLongestMatchInner!1984 call!349439 lt!2071523 (+ (size!38465 Nil!57865) 1 1) call!349441 lt!2071008 (size!38465 lt!2071008)))))

(declare-fun b!5005542 () Bool)

(assert (=> b!5005542 (= e!3127838 e!3127833)))

(assert (=> b!5005542 (= lt!2071514 call!349440)))

(declare-fun c!854518 () Bool)

(assert (=> b!5005542 (= c!854518 (isEmpty!31333 (_1!34812 lt!2071514)))))

(assert (= (and d!1611046 c!854516) b!5005538))

(assert (= (and d!1611046 (not c!854516)) b!5005535))

(assert (= (and b!5005535 c!854517) b!5005532))

(assert (= (and b!5005535 (not c!854517)) b!5005539))

(assert (= (and b!5005532 c!854514) b!5005534))

(assert (= (and b!5005532 (not c!854514)) b!5005540))

(assert (= (and b!5005539 c!854515) b!5005529))

(assert (= (and b!5005539 (not c!854515)) b!5005530))

(assert (= (and b!5005539 c!854519) b!5005542))

(assert (= (and b!5005539 (not c!854519)) b!5005531))

(assert (= (and b!5005542 c!854518) b!5005541))

(assert (= (and b!5005542 (not c!854518)) b!5005536))

(assert (= (or b!5005542 b!5005531) bm!349432))

(assert (= (or b!5005542 b!5005531) bm!349429))

(assert (= (or b!5005542 b!5005531) bm!349433))

(assert (= (or b!5005542 b!5005531) bm!349436))

(assert (= (or b!5005532 b!5005539) bm!349434))

(assert (= (or b!5005532 b!5005529) bm!349431))

(assert (= (or b!5005532 b!5005529) bm!349435))

(assert (= (or b!5005532 b!5005529) bm!349430))

(assert (= (and d!1611046 res!2135708) b!5005537))

(assert (= (and b!5005537 (not res!2135707)) b!5005533))

(declare-fun m!6039606 () Bool)

(assert (=> bm!349432 m!6039606))

(declare-fun m!6039608 () Bool)

(assert (=> b!5005542 m!6039608))

(assert (=> bm!349431 m!6038992))

(declare-fun m!6039610 () Bool)

(assert (=> b!5005537 m!6039610))

(declare-fun m!6039612 () Bool)

(assert (=> b!5005533 m!6039612))

(declare-fun m!6039614 () Bool)

(assert (=> b!5005533 m!6039614))

(assert (=> bm!349436 m!6038310))

(declare-fun m!6039616 () Bool)

(assert (=> bm!349436 m!6039616))

(assert (=> bm!349430 m!6039000))

(declare-fun m!6039618 () Bool)

(assert (=> bm!349433 m!6039618))

(declare-fun m!6039620 () Bool)

(assert (=> bm!349434 m!6039620))

(declare-fun m!6039622 () Bool)

(assert (=> bm!349435 m!6039622))

(declare-fun m!6039624 () Bool)

(assert (=> b!5005539 m!6039624))

(assert (=> b!5005539 m!6039614))

(declare-fun m!6039626 () Bool)

(assert (=> b!5005539 m!6039626))

(declare-fun m!6039628 () Bool)

(assert (=> b!5005539 m!6039628))

(assert (=> b!5005539 m!6038310))

(declare-fun m!6039630 () Bool)

(assert (=> b!5005539 m!6039630))

(declare-fun m!6039632 () Bool)

(assert (=> b!5005539 m!6039632))

(declare-fun m!6039634 () Bool)

(assert (=> b!5005539 m!6039634))

(declare-fun m!6039636 () Bool)

(assert (=> b!5005539 m!6039636))

(assert (=> b!5005539 m!6039630))

(declare-fun m!6039638 () Bool)

(assert (=> b!5005539 m!6039638))

(assert (=> b!5005539 m!6039634))

(declare-fun m!6039640 () Bool)

(assert (=> b!5005539 m!6039640))

(assert (=> b!5005539 m!6039606))

(assert (=> b!5005539 m!6039640))

(declare-fun m!6039642 () Bool)

(assert (=> b!5005539 m!6039642))

(declare-fun m!6039644 () Bool)

(assert (=> b!5005539 m!6039644))

(declare-fun m!6039646 () Bool)

(assert (=> d!1611046 m!6039646))

(declare-fun m!6039648 () Bool)

(assert (=> d!1611046 m!6039648))

(declare-fun m!6039650 () Bool)

(assert (=> d!1611046 m!6039650))

(declare-fun m!6039652 () Bool)

(assert (=> d!1611046 m!6039652))

(assert (=> d!1611046 m!6039630))

(declare-fun m!6039654 () Bool)

(assert (=> d!1611046 m!6039654))

(declare-fun m!6039656 () Bool)

(assert (=> d!1611046 m!6039656))

(assert (=> d!1611046 m!6039650))

(declare-fun m!6039658 () Bool)

(assert (=> d!1611046 m!6039658))

(assert (=> bm!349429 m!6039628))

(assert (=> bm!349376 d!1611046))

(declare-fun d!1611048 () Bool)

(declare-fun c!854520 () Bool)

(assert (=> d!1611048 (= c!854520 ((_ is Nil!57865) lt!2071404))))

(declare-fun e!3127840 () (InoxSet C!27840))

(assert (=> d!1611048 (= (content!10251 lt!2071404) e!3127840)))

(declare-fun b!5005543 () Bool)

(assert (=> b!5005543 (= e!3127840 ((as const (Array C!27840 Bool)) false))))

(declare-fun b!5005544 () Bool)

(assert (=> b!5005544 (= e!3127840 ((_ map or) (store ((as const (Array C!27840 Bool)) false) (h!64313 lt!2071404) true) (content!10251 (t!370335 lt!2071404))))))

(assert (= (and d!1611048 c!854520) b!5005543))

(assert (= (and d!1611048 (not c!854520)) b!5005544))

(declare-fun m!6039660 () Bool)

(assert (=> b!5005544 m!6039660))

(declare-fun m!6039662 () Bool)

(assert (=> b!5005544 m!6039662))

(assert (=> d!1610812 d!1611048))

(declare-fun d!1611050 () Bool)

(declare-fun c!854521 () Bool)

(assert (=> d!1611050 (= c!854521 ((_ is Nil!57865) (drop!2458 lt!2071019 lt!2071014)))))

(declare-fun e!3127841 () (InoxSet C!27840))

(assert (=> d!1611050 (= (content!10251 (drop!2458 lt!2071019 lt!2071014)) e!3127841)))

(declare-fun b!5005545 () Bool)

(assert (=> b!5005545 (= e!3127841 ((as const (Array C!27840 Bool)) false))))

(declare-fun b!5005546 () Bool)

(assert (=> b!5005546 (= e!3127841 ((_ map or) (store ((as const (Array C!27840 Bool)) false) (h!64313 (drop!2458 lt!2071019 lt!2071014)) true) (content!10251 (t!370335 (drop!2458 lt!2071019 lt!2071014)))))))

(assert (= (and d!1611050 c!854521) b!5005545))

(assert (= (and d!1611050 (not c!854521)) b!5005546))

(declare-fun m!6039664 () Bool)

(assert (=> b!5005546 m!6039664))

(declare-fun m!6039666 () Bool)

(assert (=> b!5005546 m!6039666))

(assert (=> d!1610812 d!1611050))

(declare-fun b!5005547 () Bool)

(declare-fun e!3127844 () Bool)

(declare-fun e!3127843 () Bool)

(assert (=> b!5005547 (= e!3127844 e!3127843)))

(declare-fun res!2135710 () Bool)

(assert (=> b!5005547 (=> (not res!2135710) (not e!3127843))))

(assert (=> b!5005547 (= res!2135710 (not ((_ is Nil!57865) lt!2071008)))))

(declare-fun b!5005549 () Bool)

(assert (=> b!5005549 (= e!3127843 (isPrefix!5348 (tail!9866 (take!654 lt!2071008 lt!2071005)) (tail!9866 lt!2071008)))))

(declare-fun b!5005550 () Bool)

(declare-fun e!3127842 () Bool)

(assert (=> b!5005550 (= e!3127842 (>= (size!38465 lt!2071008) (size!38465 (take!654 lt!2071008 lt!2071005))))))

(declare-fun b!5005548 () Bool)

(declare-fun res!2135712 () Bool)

(assert (=> b!5005548 (=> (not res!2135712) (not e!3127843))))

(assert (=> b!5005548 (= res!2135712 (= (head!10733 (take!654 lt!2071008 lt!2071005)) (head!10733 lt!2071008)))))

(declare-fun d!1611052 () Bool)

(assert (=> d!1611052 e!3127842))

(declare-fun res!2135711 () Bool)

(assert (=> d!1611052 (=> res!2135711 e!3127842)))

(declare-fun lt!2071532 () Bool)

(assert (=> d!1611052 (= res!2135711 (not lt!2071532))))

(assert (=> d!1611052 (= lt!2071532 e!3127844)))

(declare-fun res!2135709 () Bool)

(assert (=> d!1611052 (=> res!2135709 e!3127844)))

(assert (=> d!1611052 (= res!2135709 ((_ is Nil!57865) (take!654 lt!2071008 lt!2071005)))))

(assert (=> d!1611052 (= (isPrefix!5348 (take!654 lt!2071008 lt!2071005) lt!2071008) lt!2071532)))

(assert (= (and d!1611052 (not res!2135709)) b!5005547))

(assert (= (and b!5005547 res!2135710) b!5005548))

(assert (= (and b!5005548 res!2135712) b!5005549))

(assert (= (and d!1611052 (not res!2135711)) b!5005550))

(assert (=> b!5005549 m!6038382))

(declare-fun m!6039668 () Bool)

(assert (=> b!5005549 m!6039668))

(assert (=> b!5005549 m!6039012))

(assert (=> b!5005549 m!6039668))

(assert (=> b!5005549 m!6039012))

(declare-fun m!6039670 () Bool)

(assert (=> b!5005549 m!6039670))

(assert (=> b!5005550 m!6038310))

(assert (=> b!5005550 m!6038382))

(declare-fun m!6039672 () Bool)

(assert (=> b!5005550 m!6039672))

(assert (=> b!5005548 m!6038382))

(declare-fun m!6039674 () Bool)

(assert (=> b!5005548 m!6039674))

(assert (=> b!5005548 m!6038988))

(assert (=> d!1610826 d!1611052))

(assert (=> d!1610826 d!1610824))

(declare-fun d!1611054 () Bool)

(assert (=> d!1611054 (isPrefix!5348 (take!654 lt!2071008 lt!2071005) lt!2071008)))

(assert (=> d!1611054 true))

(declare-fun _$48!742 () Unit!149035)

(assert (=> d!1611054 (= (choose!37015 lt!2071008 lt!2071005) _$48!742)))

(declare-fun bs!1185993 () Bool)

(assert (= bs!1185993 d!1611054))

(assert (=> bs!1185993 m!6038382))

(assert (=> bs!1185993 m!6038382))

(assert (=> bs!1185993 m!6039138))

(assert (=> d!1610826 d!1611054))

(declare-fun b!5005551 () Bool)

(declare-fun e!3127847 () List!57989)

(assert (=> b!5005551 (= e!3127847 (Cons!57865 (h!64313 (t!370335 lt!2071019)) (take!654 (t!370335 (t!370335 lt!2071019)) (- (- lt!2071014 1) 1))))))

(declare-fun b!5005552 () Bool)

(declare-fun e!3127846 () Bool)

(declare-fun lt!2071533 () List!57989)

(declare-fun e!3127848 () Int)

(assert (=> b!5005552 (= e!3127846 (= (size!38465 lt!2071533) e!3127848))))

(declare-fun c!854522 () Bool)

(assert (=> b!5005552 (= c!854522 (<= (- lt!2071014 1) 0))))

(declare-fun b!5005553 () Bool)

(assert (=> b!5005553 (= e!3127847 Nil!57865)))

(declare-fun b!5005554 () Bool)

(declare-fun e!3127845 () Int)

(assert (=> b!5005554 (= e!3127848 e!3127845)))

(declare-fun c!854523 () Bool)

(assert (=> b!5005554 (= c!854523 (>= (- lt!2071014 1) (size!38465 (t!370335 lt!2071019))))))

(declare-fun d!1611056 () Bool)

(assert (=> d!1611056 e!3127846))

(declare-fun res!2135713 () Bool)

(assert (=> d!1611056 (=> (not res!2135713) (not e!3127846))))

(assert (=> d!1611056 (= res!2135713 (= ((_ map implies) (content!10251 lt!2071533) (content!10251 (t!370335 lt!2071019))) ((as const (InoxSet C!27840)) true)))))

(assert (=> d!1611056 (= lt!2071533 e!3127847)))

(declare-fun c!854524 () Bool)

(assert (=> d!1611056 (= c!854524 (or ((_ is Nil!57865) (t!370335 lt!2071019)) (<= (- lt!2071014 1) 0)))))

(assert (=> d!1611056 (= (take!654 (t!370335 lt!2071019) (- lt!2071014 1)) lt!2071533)))

(declare-fun b!5005555 () Bool)

(assert (=> b!5005555 (= e!3127845 (- lt!2071014 1))))

(declare-fun b!5005556 () Bool)

(assert (=> b!5005556 (= e!3127845 (size!38465 (t!370335 lt!2071019)))))

(declare-fun b!5005557 () Bool)

(assert (=> b!5005557 (= e!3127848 0)))

(assert (= (and d!1611056 c!854524) b!5005553))

(assert (= (and d!1611056 (not c!854524)) b!5005551))

(assert (= (and d!1611056 res!2135713) b!5005552))

(assert (= (and b!5005552 c!854522) b!5005557))

(assert (= (and b!5005552 (not c!854522)) b!5005554))

(assert (= (and b!5005554 c!854523) b!5005556))

(assert (= (and b!5005554 (not c!854523)) b!5005555))

(declare-fun m!6039676 () Bool)

(assert (=> b!5005552 m!6039676))

(assert (=> b!5005554 m!6039222))

(declare-fun m!6039678 () Bool)

(assert (=> b!5005551 m!6039678))

(assert (=> b!5005556 m!6039222))

(declare-fun m!6039680 () Bool)

(assert (=> d!1611056 m!6039680))

(assert (=> d!1611056 m!6039390))

(assert (=> b!5004821 d!1611056))

(declare-fun d!1611058 () Bool)

(assert (=> d!1611058 (= lt!2071030 (_1!34812 lt!2071026))))

(assert (=> d!1611058 true))

(declare-fun _$60!920 () Unit!149035)

(assert (=> d!1611058 (= (choose!37021 lt!2071030 (_1!34812 lt!2071026) lt!2071008) _$60!920)))

(assert (=> d!1610820 d!1611058))

(declare-fun b!5005558 () Bool)

(declare-fun e!3127851 () Bool)

(declare-fun e!3127850 () Bool)

(assert (=> b!5005558 (= e!3127851 e!3127850)))

(declare-fun res!2135715 () Bool)

(assert (=> b!5005558 (=> (not res!2135715) (not e!3127850))))

(assert (=> b!5005558 (= res!2135715 (not ((_ is Nil!57865) lt!2071008)))))

(declare-fun b!5005560 () Bool)

(assert (=> b!5005560 (= e!3127850 (isPrefix!5348 (tail!9866 lt!2071030) (tail!9866 lt!2071008)))))

(declare-fun b!5005561 () Bool)

(declare-fun e!3127849 () Bool)

(assert (=> b!5005561 (= e!3127849 (>= (size!38465 lt!2071008) (size!38465 lt!2071030)))))

(declare-fun b!5005559 () Bool)

(declare-fun res!2135717 () Bool)

(assert (=> b!5005559 (=> (not res!2135717) (not e!3127850))))

(assert (=> b!5005559 (= res!2135717 (= (head!10733 lt!2071030) (head!10733 lt!2071008)))))

(declare-fun d!1611060 () Bool)

(assert (=> d!1611060 e!3127849))

(declare-fun res!2135716 () Bool)

(assert (=> d!1611060 (=> res!2135716 e!3127849)))

(declare-fun lt!2071534 () Bool)

(assert (=> d!1611060 (= res!2135716 (not lt!2071534))))

(assert (=> d!1611060 (= lt!2071534 e!3127851)))

(declare-fun res!2135714 () Bool)

(assert (=> d!1611060 (=> res!2135714 e!3127851)))

(assert (=> d!1611060 (= res!2135714 ((_ is Nil!57865) lt!2071030))))

(assert (=> d!1611060 (= (isPrefix!5348 lt!2071030 lt!2071008) lt!2071534)))

(assert (= (and d!1611060 (not res!2135714)) b!5005558))

(assert (= (and b!5005558 res!2135715) b!5005559))

(assert (= (and b!5005559 res!2135717) b!5005560))

(assert (= (and d!1611060 (not res!2135716)) b!5005561))

(assert (=> b!5005560 m!6038842))

(assert (=> b!5005560 m!6039012))

(assert (=> b!5005560 m!6038842))

(assert (=> b!5005560 m!6039012))

(declare-fun m!6039682 () Bool)

(assert (=> b!5005560 m!6039682))

(assert (=> b!5005561 m!6038310))

(declare-fun m!6039684 () Bool)

(assert (=> b!5005561 m!6039684))

(assert (=> b!5005559 m!6038838))

(assert (=> b!5005559 m!6038988))

(assert (=> d!1610820 d!1611060))

(declare-fun d!1611062 () Bool)

(declare-fun lt!2071535 () Int)

(assert (=> d!1611062 (>= lt!2071535 0)))

(declare-fun e!3127852 () Int)

(assert (=> d!1611062 (= lt!2071535 e!3127852)))

(declare-fun c!854525 () Bool)

(assert (=> d!1611062 (= c!854525 ((_ is Nil!57865) (t!370335 (_1!34812 lt!2071026))))))

(assert (=> d!1611062 (= (size!38465 (t!370335 (_1!34812 lt!2071026))) lt!2071535)))

(declare-fun b!5005562 () Bool)

(assert (=> b!5005562 (= e!3127852 0)))

(declare-fun b!5005563 () Bool)

(assert (=> b!5005563 (= e!3127852 (+ 1 (size!38465 (t!370335 (t!370335 (_1!34812 lt!2071026))))))))

(assert (= (and d!1611062 c!854525) b!5005562))

(assert (= (and d!1611062 (not c!854525)) b!5005563))

(declare-fun m!6039686 () Bool)

(assert (=> b!5005563 m!6039686))

(assert (=> b!5005006 d!1611062))

(assert (=> d!1610814 d!1610788))

(assert (=> d!1610814 d!1610828))

(assert (=> d!1610806 d!1610818))

(assert (=> d!1610806 d!1610802))

(declare-fun d!1611064 () Bool)

(assert (=> d!1611064 (= (matchR!6759 r!12727 (_1!34812 lt!2071026)) (matchZipper!563 z!4183 (_1!34812 lt!2071026)))))

(assert (=> d!1611064 true))

(declare-fun _$44!1347 () Unit!149035)

(assert (=> d!1611064 (= (choose!37020 z!4183 lt!2071007 r!12727 (_1!34812 lt!2071026)) _$44!1347)))

(declare-fun bs!1185994 () Bool)

(assert (= bs!1185994 d!1611064))

(assert (=> bs!1185994 m!6038352))

(assert (=> bs!1185994 m!6038362))

(assert (=> d!1610806 d!1611064))

(assert (=> d!1610806 d!1610828))

(declare-fun b!5005567 () Bool)

(declare-fun e!3127854 () List!57989)

(assert (=> b!5005567 (= e!3127854 (++!12641 (list!18626 (left!42305 (c!854185 (_1!34811 lt!2071017)))) (list!18626 (right!42635 (c!854185 (_1!34811 lt!2071017))))))))

(declare-fun b!5005566 () Bool)

(assert (=> b!5005566 (= e!3127854 (list!18627 (xs!18640 (c!854185 (_1!34811 lt!2071017)))))))

(declare-fun b!5005565 () Bool)

(declare-fun e!3127853 () List!57989)

(assert (=> b!5005565 (= e!3127853 e!3127854)))

(declare-fun c!854527 () Bool)

(assert (=> b!5005565 (= c!854527 ((_ is Leaf!25420) (c!854185 (_1!34811 lt!2071017))))))

(declare-fun b!5005564 () Bool)

(assert (=> b!5005564 (= e!3127853 Nil!57865)))

(declare-fun d!1611066 () Bool)

(declare-fun c!854526 () Bool)

(assert (=> d!1611066 (= c!854526 ((_ is Empty!15314) (c!854185 (_1!34811 lt!2071017))))))

(assert (=> d!1611066 (= (list!18626 (c!854185 (_1!34811 lt!2071017))) e!3127853)))

(assert (= (and d!1611066 c!854526) b!5005564))

(assert (= (and d!1611066 (not c!854526)) b!5005565))

(assert (= (and b!5005565 c!854527) b!5005566))

(assert (= (and b!5005565 (not c!854527)) b!5005567))

(declare-fun m!6039688 () Bool)

(assert (=> b!5005567 m!6039688))

(declare-fun m!6039690 () Bool)

(assert (=> b!5005567 m!6039690))

(assert (=> b!5005567 m!6039688))

(assert (=> b!5005567 m!6039690))

(declare-fun m!6039692 () Bool)

(assert (=> b!5005567 m!6039692))

(declare-fun m!6039694 () Bool)

(assert (=> b!5005566 m!6039694))

(assert (=> d!1610648 d!1611066))

(assert (=> b!5005035 d!1610914))

(assert (=> b!5004807 d!1611008))

(declare-fun d!1611068 () Bool)

(declare-fun c!854528 () Bool)

(assert (=> d!1611068 (= c!854528 ((_ is Nil!57865) lt!2071265))))

(declare-fun e!3127855 () (InoxSet C!27840))

(assert (=> d!1611068 (= (content!10251 lt!2071265) e!3127855)))

(declare-fun b!5005568 () Bool)

(assert (=> b!5005568 (= e!3127855 ((as const (Array C!27840 Bool)) false))))

(declare-fun b!5005569 () Bool)

(assert (=> b!5005569 (= e!3127855 ((_ map or) (store ((as const (Array C!27840 Bool)) false) (h!64313 lt!2071265) true) (content!10251 (t!370335 lt!2071265))))))

(assert (= (and d!1611068 c!854528) b!5005568))

(assert (= (and d!1611068 (not c!854528)) b!5005569))

(declare-fun m!6039696 () Bool)

(assert (=> b!5005569 m!6039696))

(declare-fun m!6039698 () Bool)

(assert (=> b!5005569 m!6039698))

(assert (=> d!1610752 d!1611068))

(assert (=> d!1610752 d!1610942))

(declare-fun d!1611070 () Bool)

(assert (=> d!1611070 (= (isEmpty!31333 (tail!9866 (_1!34812 lt!2071026))) ((_ is Nil!57865) (tail!9866 (_1!34812 lt!2071026))))))

(assert (=> b!5005038 d!1611070))

(assert (=> b!5005038 d!1610836))

(declare-fun bs!1185995 () Bool)

(declare-fun d!1611072 () Bool)

(assert (= bs!1185995 (and d!1611072 d!1610680)))

(declare-fun lambda!248405 () Int)

(assert (=> bs!1185995 (= lambda!248405 lambda!248369)))

(declare-fun bs!1185996 () Bool)

(assert (= bs!1185996 (and d!1611072 d!1610926)))

(assert (=> bs!1185996 (= lambda!248405 lambda!248378)))

(declare-fun bs!1185997 () Bool)

(assert (= bs!1185997 (and d!1611072 d!1610928)))

(assert (=> bs!1185997 (= lambda!248405 lambda!248381)))

(assert (=> d!1611072 (= (inv!76031 setElem!28418) (forall!13364 (exprs!3720 setElem!28418) lambda!248405))))

(declare-fun bs!1185998 () Bool)

(assert (= bs!1185998 d!1611072))

(declare-fun m!6039700 () Bool)

(assert (=> bs!1185998 m!6039700))

(assert (=> setNonEmpty!28418 d!1611072))

(declare-fun d!1611074 () Bool)

(assert (=> d!1611074 (= (head!10733 lt!2071010) (h!64313 lt!2071010))))

(assert (=> b!5005048 d!1611074))

(declare-fun d!1611076 () Bool)

(assert (=> d!1611076 (= (head!10733 lt!2071008) (h!64313 lt!2071008))))

(assert (=> b!5005048 d!1611076))

(assert (=> b!5005054 d!1610776))

(declare-fun d!1611078 () Bool)

(declare-fun lt!2071536 () Int)

(assert (=> d!1611078 (>= lt!2071536 0)))

(declare-fun e!3127856 () Int)

(assert (=> d!1611078 (= lt!2071536 e!3127856)))

(declare-fun c!854529 () Bool)

(assert (=> d!1611078 (= c!854529 ((_ is Nil!57865) lt!2071012))))

(assert (=> d!1611078 (= (size!38465 lt!2071012) lt!2071536)))

(declare-fun b!5005570 () Bool)

(assert (=> b!5005570 (= e!3127856 0)))

(declare-fun b!5005571 () Bool)

(assert (=> b!5005571 (= e!3127856 (+ 1 (size!38465 (t!370335 lt!2071012))))))

(assert (= (and d!1611078 c!854529) b!5005570))

(assert (= (and d!1611078 (not c!854529)) b!5005571))

(declare-fun m!6039702 () Bool)

(assert (=> b!5005571 m!6039702))

(assert (=> b!5004806 d!1611078))

(declare-fun d!1611080 () Bool)

(declare-fun lt!2071537 () Int)

(assert (=> d!1611080 (>= lt!2071537 0)))

(declare-fun e!3127857 () Int)

(assert (=> d!1611080 (= lt!2071537 e!3127857)))

(declare-fun c!854530 () Bool)

(assert (=> d!1611080 (= c!854530 ((_ is Nil!57865) lt!2071021))))

(assert (=> d!1611080 (= (size!38465 lt!2071021) lt!2071537)))

(declare-fun b!5005572 () Bool)

(assert (=> b!5005572 (= e!3127857 0)))

(declare-fun b!5005573 () Bool)

(assert (=> b!5005573 (= e!3127857 (+ 1 (size!38465 (t!370335 lt!2071021))))))

(assert (= (and d!1611080 c!854530) b!5005572))

(assert (= (and d!1611080 (not c!854530)) b!5005573))

(assert (=> b!5005573 m!6039254))

(assert (=> b!5004806 d!1611080))

(declare-fun d!1611082 () Bool)

(declare-fun lt!2071538 () Int)

(assert (=> d!1611082 (>= lt!2071538 0)))

(declare-fun e!3127858 () Int)

(assert (=> d!1611082 (= lt!2071538 e!3127858)))

(declare-fun c!854531 () Bool)

(assert (=> d!1611082 (= c!854531 ((_ is Nil!57865) lt!2071404))))

(assert (=> d!1611082 (= (size!38465 lt!2071404) lt!2071538)))

(declare-fun b!5005574 () Bool)

(assert (=> b!5005574 (= e!3127858 0)))

(declare-fun b!5005575 () Bool)

(assert (=> b!5005575 (= e!3127858 (+ 1 (size!38465 (t!370335 lt!2071404))))))

(assert (= (and d!1611082 c!854531) b!5005574))

(assert (= (and d!1611082 (not c!854531)) b!5005575))

(declare-fun m!6039704 () Bool)

(assert (=> b!5005575 m!6039704))

(assert (=> b!5005010 d!1611082))

(assert (=> bm!349372 d!1611076))

(declare-fun d!1611084 () Bool)

(assert (=> d!1611084 (= (inv!76036 (xs!18640 (c!854185 input!5597))) (<= (size!38465 (innerList!15402 (xs!18640 (c!854185 input!5597)))) 2147483647))))

(declare-fun bs!1185999 () Bool)

(assert (= bs!1185999 d!1611084))

(declare-fun m!6039706 () Bool)

(assert (=> bs!1185999 m!6039706))

(assert (=> b!5005097 d!1611084))

(assert (=> b!5004373 d!1610622))

(declare-fun b!5005576 () Bool)

(declare-fun e!3127861 () Bool)

(declare-fun e!3127860 () Bool)

(assert (=> b!5005576 (= e!3127861 e!3127860)))

(declare-fun res!2135719 () Bool)

(assert (=> b!5005576 (=> (not res!2135719) (not e!3127860))))

(assert (=> b!5005576 (= res!2135719 (not ((_ is Nil!57865) (++!12641 lt!2071021 lt!2071011))))))

(declare-fun b!5005578 () Bool)

(assert (=> b!5005578 (= e!3127860 (isPrefix!5348 (tail!9866 lt!2071021) (tail!9866 (++!12641 lt!2071021 lt!2071011))))))

(declare-fun b!5005579 () Bool)

(declare-fun e!3127859 () Bool)

(assert (=> b!5005579 (= e!3127859 (>= (size!38465 (++!12641 lt!2071021 lt!2071011)) (size!38465 lt!2071021)))))

(declare-fun b!5005577 () Bool)

(declare-fun res!2135721 () Bool)

(assert (=> b!5005577 (=> (not res!2135721) (not e!3127860))))

(assert (=> b!5005577 (= res!2135721 (= (head!10733 lt!2071021) (head!10733 (++!12641 lt!2071021 lt!2071011))))))

(declare-fun d!1611086 () Bool)

(assert (=> d!1611086 e!3127859))

(declare-fun res!2135720 () Bool)

(assert (=> d!1611086 (=> res!2135720 e!3127859)))

(declare-fun lt!2071539 () Bool)

(assert (=> d!1611086 (= res!2135720 (not lt!2071539))))

(assert (=> d!1611086 (= lt!2071539 e!3127861)))

(declare-fun res!2135718 () Bool)

(assert (=> d!1611086 (=> res!2135718 e!3127861)))

(assert (=> d!1611086 (= res!2135718 ((_ is Nil!57865) lt!2071021))))

(assert (=> d!1611086 (= (isPrefix!5348 lt!2071021 (++!12641 lt!2071021 lt!2071011)) lt!2071539)))

(assert (= (and d!1611086 (not res!2135718)) b!5005576))

(assert (= (and b!5005576 res!2135719) b!5005577))

(assert (= (and b!5005577 res!2135721) b!5005578))

(assert (= (and d!1611086 (not res!2135720)) b!5005579))

(assert (=> b!5005578 m!6038896))

(assert (=> b!5005578 m!6038402))

(declare-fun m!6039708 () Bool)

(assert (=> b!5005578 m!6039708))

(assert (=> b!5005578 m!6038896))

(assert (=> b!5005578 m!6039708))

(declare-fun m!6039710 () Bool)

(assert (=> b!5005578 m!6039710))

(assert (=> b!5005579 m!6038402))

(declare-fun m!6039712 () Bool)

(assert (=> b!5005579 m!6039712))

(assert (=> b!5005579 m!6038530))

(assert (=> b!5005577 m!6038904))

(assert (=> b!5005577 m!6038402))

(declare-fun m!6039714 () Bool)

(assert (=> b!5005577 m!6039714))

(assert (=> d!1610770 d!1611086))

(assert (=> d!1610770 d!1610656))

(declare-fun d!1611088 () Bool)

(assert (=> d!1611088 (isPrefix!5348 lt!2071021 (++!12641 lt!2071021 lt!2071011))))

(assert (=> d!1611088 true))

(declare-fun _$46!1955 () Unit!149035)

(assert (=> d!1611088 (= (choose!37014 lt!2071021 lt!2071011) _$46!1955)))

(declare-fun bs!1186000 () Bool)

(assert (= bs!1186000 d!1611088))

(assert (=> bs!1186000 m!6038402))

(assert (=> bs!1186000 m!6038402))

(assert (=> bs!1186000 m!6038914))

(assert (=> d!1610770 d!1611088))

(declare-fun b!5005580 () Bool)

(declare-fun e!3127863 () Bool)

(declare-fun e!3127865 () Bool)

(assert (=> b!5005580 (= e!3127863 e!3127865)))

(declare-fun res!2135724 () Bool)

(assert (=> b!5005580 (= res!2135724 (not (nullable!4689 (reg!14124 (ite c!854379 (regOne!28103 r!12727) (regTwo!28102 r!12727))))))))

(assert (=> b!5005580 (=> (not res!2135724) (not e!3127865))))

(declare-fun b!5005581 () Bool)

(declare-fun e!3127866 () Bool)

(assert (=> b!5005581 (= e!3127863 e!3127866)))

(declare-fun c!854532 () Bool)

(assert (=> b!5005581 (= c!854532 ((_ is Union!13795) (ite c!854379 (regOne!28103 r!12727) (regTwo!28102 r!12727))))))

(declare-fun call!349442 () Bool)

(declare-fun c!854533 () Bool)

(declare-fun bm!349437 () Bool)

(assert (=> bm!349437 (= call!349442 (validRegex!6092 (ite c!854533 (reg!14124 (ite c!854379 (regOne!28103 r!12727) (regTwo!28102 r!12727))) (ite c!854532 (regTwo!28103 (ite c!854379 (regOne!28103 r!12727) (regTwo!28102 r!12727))) (regOne!28102 (ite c!854379 (regOne!28103 r!12727) (regTwo!28102 r!12727)))))))))

(declare-fun b!5005582 () Bool)

(declare-fun res!2135723 () Bool)

(declare-fun e!3127862 () Bool)

(assert (=> b!5005582 (=> (not res!2135723) (not e!3127862))))

(declare-fun call!349444 () Bool)

(assert (=> b!5005582 (= res!2135723 call!349444)))

(assert (=> b!5005582 (= e!3127866 e!3127862)))

(declare-fun b!5005583 () Bool)

(declare-fun res!2135725 () Bool)

(declare-fun e!3127868 () Bool)

(assert (=> b!5005583 (=> res!2135725 e!3127868)))

(assert (=> b!5005583 (= res!2135725 (not ((_ is Concat!22588) (ite c!854379 (regOne!28103 r!12727) (regTwo!28102 r!12727)))))))

(assert (=> b!5005583 (= e!3127866 e!3127868)))

(declare-fun b!5005584 () Bool)

(declare-fun call!349443 () Bool)

(assert (=> b!5005584 (= e!3127862 call!349443)))

(declare-fun b!5005585 () Bool)

(declare-fun e!3127867 () Bool)

(assert (=> b!5005585 (= e!3127868 e!3127867)))

(declare-fun res!2135726 () Bool)

(assert (=> b!5005585 (=> (not res!2135726) (not e!3127867))))

(assert (=> b!5005585 (= res!2135726 call!349443)))

(declare-fun b!5005586 () Bool)

(assert (=> b!5005586 (= e!3127865 call!349442)))

(declare-fun b!5005587 () Bool)

(declare-fun e!3127864 () Bool)

(assert (=> b!5005587 (= e!3127864 e!3127863)))

(assert (=> b!5005587 (= c!854533 ((_ is Star!13795) (ite c!854379 (regOne!28103 r!12727) (regTwo!28102 r!12727))))))

(declare-fun d!1611090 () Bool)

(declare-fun res!2135722 () Bool)

(assert (=> d!1611090 (=> res!2135722 e!3127864)))

(assert (=> d!1611090 (= res!2135722 ((_ is ElementMatch!13795) (ite c!854379 (regOne!28103 r!12727) (regTwo!28102 r!12727))))))

(assert (=> d!1611090 (= (validRegex!6092 (ite c!854379 (regOne!28103 r!12727) (regTwo!28102 r!12727))) e!3127864)))

(declare-fun b!5005588 () Bool)

(assert (=> b!5005588 (= e!3127867 call!349444)))

(declare-fun bm!349438 () Bool)

(assert (=> bm!349438 (= call!349444 (validRegex!6092 (ite c!854532 (regOne!28103 (ite c!854379 (regOne!28103 r!12727) (regTwo!28102 r!12727))) (regTwo!28102 (ite c!854379 (regOne!28103 r!12727) (regTwo!28102 r!12727))))))))

(declare-fun bm!349439 () Bool)

(assert (=> bm!349439 (= call!349443 call!349442)))

(assert (= (and d!1611090 (not res!2135722)) b!5005587))

(assert (= (and b!5005587 c!854533) b!5005580))

(assert (= (and b!5005587 (not c!854533)) b!5005581))

(assert (= (and b!5005580 res!2135724) b!5005586))

(assert (= (and b!5005581 c!854532) b!5005582))

(assert (= (and b!5005581 (not c!854532)) b!5005583))

(assert (= (and b!5005582 res!2135723) b!5005584))

(assert (= (and b!5005583 (not res!2135725)) b!5005585))

(assert (= (and b!5005585 res!2135726) b!5005588))

(assert (= (or b!5005584 b!5005585) bm!349439))

(assert (= (or b!5005582 b!5005588) bm!349438))

(assert (= (or b!5005586 bm!349439) bm!349437))

(declare-fun m!6039716 () Bool)

(assert (=> b!5005580 m!6039716))

(declare-fun m!6039718 () Bool)

(assert (=> bm!349437 m!6039718))

(declare-fun m!6039720 () Bool)

(assert (=> bm!349438 m!6039720))

(assert (=> bm!349389 d!1611090))

(assert (=> b!5005000 d!1610880))

(assert (=> b!5004831 d!1610854))

(declare-fun d!1611092 () Bool)

(declare-fun lt!2071540 () Int)

(assert (=> d!1611092 (>= lt!2071540 0)))

(declare-fun e!3127869 () Int)

(assert (=> d!1611092 (= lt!2071540 e!3127869)))

(declare-fun c!854534 () Bool)

(assert (=> d!1611092 (= c!854534 ((_ is Nil!57865) (take!654 lt!2071019 lt!2071014)))))

(assert (=> d!1611092 (= (size!38465 (take!654 lt!2071019 lt!2071014)) lt!2071540)))

(declare-fun b!5005589 () Bool)

(assert (=> b!5005589 (= e!3127869 0)))

(declare-fun b!5005590 () Bool)

(assert (=> b!5005590 (= e!3127869 (+ 1 (size!38465 (t!370335 (take!654 lt!2071019 lt!2071014)))))))

(assert (= (and d!1611092 c!854534) b!5005589))

(assert (= (and d!1611092 (not c!854534)) b!5005590))

(declare-fun m!6039722 () Bool)

(assert (=> b!5005590 m!6039722))

(assert (=> b!5004831 d!1611092))

(declare-fun d!1611094 () Bool)

(declare-fun res!2135727 () Bool)

(declare-fun e!3127870 () Bool)

(assert (=> d!1611094 (=> (not res!2135727) (not e!3127870))))

(assert (=> d!1611094 (= res!2135727 (= (csize!30858 (c!854185 totalInput!1012)) (+ (size!38467 (left!42305 (c!854185 totalInput!1012))) (size!38467 (right!42635 (c!854185 totalInput!1012))))))))

(assert (=> d!1611094 (= (inv!76034 (c!854185 totalInput!1012)) e!3127870)))

(declare-fun b!5005591 () Bool)

(declare-fun res!2135728 () Bool)

(assert (=> b!5005591 (=> (not res!2135728) (not e!3127870))))

(assert (=> b!5005591 (= res!2135728 (and (not (= (left!42305 (c!854185 totalInput!1012)) Empty!15314)) (not (= (right!42635 (c!854185 totalInput!1012)) Empty!15314))))))

(declare-fun b!5005592 () Bool)

(declare-fun res!2135729 () Bool)

(assert (=> b!5005592 (=> (not res!2135729) (not e!3127870))))

(assert (=> b!5005592 (= res!2135729 (= (cheight!15525 (c!854185 totalInput!1012)) (+ (max!0 (height!2033 (left!42305 (c!854185 totalInput!1012))) (height!2033 (right!42635 (c!854185 totalInput!1012)))) 1)))))

(declare-fun b!5005593 () Bool)

(assert (=> b!5005593 (= e!3127870 (<= 0 (cheight!15525 (c!854185 totalInput!1012))))))

(assert (= (and d!1611094 res!2135727) b!5005591))

(assert (= (and b!5005591 res!2135728) b!5005592))

(assert (= (and b!5005592 res!2135729) b!5005593))

(declare-fun m!6039724 () Bool)

(assert (=> d!1611094 m!6039724))

(declare-fun m!6039726 () Bool)

(assert (=> d!1611094 m!6039726))

(assert (=> b!5005592 m!6039552))

(assert (=> b!5005592 m!6039554))

(assert (=> b!5005592 m!6039552))

(assert (=> b!5005592 m!6039554))

(declare-fun m!6039728 () Bool)

(assert (=> b!5005592 m!6039728))

(assert (=> b!5004395 d!1611094))

(assert (=> b!5004735 d!1611008))

(declare-fun d!1611096 () Bool)

(assert (=> d!1611096 (= (head!10733 (getSuffix!3144 lt!2071008 Nil!57865)) (h!64313 (getSuffix!3144 lt!2071008 Nil!57865)))))

(assert (=> b!5004953 d!1611096))

(declare-fun b!5005594 () Bool)

(declare-fun e!3127872 () List!57989)

(assert (=> b!5005594 (= e!3127872 (Cons!57865 lt!2071366 Nil!57865))))

(declare-fun b!5005595 () Bool)

(assert (=> b!5005595 (= e!3127872 (Cons!57865 (h!64313 Nil!57865) (++!12641 (t!370335 Nil!57865) (Cons!57865 lt!2071366 Nil!57865))))))

(declare-fun b!5005596 () Bool)

(declare-fun res!2135731 () Bool)

(declare-fun e!3127871 () Bool)

(assert (=> b!5005596 (=> (not res!2135731) (not e!3127871))))

(declare-fun lt!2071541 () List!57989)

(assert (=> b!5005596 (= res!2135731 (= (size!38465 lt!2071541) (+ (size!38465 Nil!57865) (size!38465 (Cons!57865 lt!2071366 Nil!57865)))))))

(declare-fun d!1611098 () Bool)

(assert (=> d!1611098 e!3127871))

(declare-fun res!2135730 () Bool)

(assert (=> d!1611098 (=> (not res!2135730) (not e!3127871))))

(assert (=> d!1611098 (= res!2135730 (= (content!10251 lt!2071541) ((_ map or) (content!10251 Nil!57865) (content!10251 (Cons!57865 lt!2071366 Nil!57865)))))))

(assert (=> d!1611098 (= lt!2071541 e!3127872)))

(declare-fun c!854535 () Bool)

(assert (=> d!1611098 (= c!854535 ((_ is Nil!57865) Nil!57865))))

(assert (=> d!1611098 (= (++!12641 Nil!57865 (Cons!57865 lt!2071366 Nil!57865)) lt!2071541)))

(declare-fun b!5005597 () Bool)

(assert (=> b!5005597 (= e!3127871 (or (not (= (Cons!57865 lt!2071366 Nil!57865) Nil!57865)) (= lt!2071541 Nil!57865)))))

(assert (= (and d!1611098 c!854535) b!5005594))

(assert (= (and d!1611098 (not c!854535)) b!5005595))

(assert (= (and d!1611098 res!2135730) b!5005596))

(assert (= (and b!5005596 res!2135731) b!5005597))

(declare-fun m!6039730 () Bool)

(assert (=> b!5005595 m!6039730))

(declare-fun m!6039732 () Bool)

(assert (=> b!5005596 m!6039732))

(assert (=> b!5005596 m!6038316))

(declare-fun m!6039734 () Bool)

(assert (=> b!5005596 m!6039734))

(declare-fun m!6039736 () Bool)

(assert (=> d!1611098 m!6039736))

(declare-fun m!6039738 () Bool)

(assert (=> d!1611098 m!6039738))

(declare-fun m!6039740 () Bool)

(assert (=> d!1611098 m!6039740))

(assert (=> b!5004953 d!1611098))

(assert (=> b!5004953 d!1610776))

(declare-fun b!5005598 () Bool)

(declare-fun e!3127875 () Bool)

(declare-fun e!3127874 () Bool)

(assert (=> b!5005598 (= e!3127875 e!3127874)))

(declare-fun res!2135733 () Bool)

(assert (=> b!5005598 (=> (not res!2135733) (not e!3127874))))

(assert (=> b!5005598 (= res!2135733 (not ((_ is Nil!57865) lt!2071008)))))

(declare-fun b!5005600 () Bool)

(assert (=> b!5005600 (= e!3127874 (isPrefix!5348 (tail!9866 (++!12641 Nil!57865 (Cons!57865 (head!10733 (getSuffix!3144 lt!2071008 Nil!57865)) Nil!57865))) (tail!9866 lt!2071008)))))

(declare-fun b!5005601 () Bool)

(declare-fun e!3127873 () Bool)

(assert (=> b!5005601 (= e!3127873 (>= (size!38465 lt!2071008) (size!38465 (++!12641 Nil!57865 (Cons!57865 (head!10733 (getSuffix!3144 lt!2071008 Nil!57865)) Nil!57865)))))))

(declare-fun b!5005599 () Bool)

(declare-fun res!2135735 () Bool)

(assert (=> b!5005599 (=> (not res!2135735) (not e!3127874))))

(assert (=> b!5005599 (= res!2135735 (= (head!10733 (++!12641 Nil!57865 (Cons!57865 (head!10733 (getSuffix!3144 lt!2071008 Nil!57865)) Nil!57865))) (head!10733 lt!2071008)))))

(declare-fun d!1611100 () Bool)

(assert (=> d!1611100 e!3127873))

(declare-fun res!2135734 () Bool)

(assert (=> d!1611100 (=> res!2135734 e!3127873)))

(declare-fun lt!2071542 () Bool)

(assert (=> d!1611100 (= res!2135734 (not lt!2071542))))

(assert (=> d!1611100 (= lt!2071542 e!3127875)))

(declare-fun res!2135732 () Bool)

(assert (=> d!1611100 (=> res!2135732 e!3127875)))

(assert (=> d!1611100 (= res!2135732 ((_ is Nil!57865) (++!12641 Nil!57865 (Cons!57865 (head!10733 (getSuffix!3144 lt!2071008 Nil!57865)) Nil!57865))))))

(assert (=> d!1611100 (= (isPrefix!5348 (++!12641 Nil!57865 (Cons!57865 (head!10733 (getSuffix!3144 lt!2071008 Nil!57865)) Nil!57865)) lt!2071008) lt!2071542)))

(assert (= (and d!1611100 (not res!2135732)) b!5005598))

(assert (= (and b!5005598 res!2135733) b!5005599))

(assert (= (and b!5005599 res!2135735) b!5005600))

(assert (= (and d!1611100 (not res!2135734)) b!5005601))

(assert (=> b!5005600 m!6039018))

(declare-fun m!6039742 () Bool)

(assert (=> b!5005600 m!6039742))

(assert (=> b!5005600 m!6039012))

(assert (=> b!5005600 m!6039742))

(assert (=> b!5005600 m!6039012))

(declare-fun m!6039744 () Bool)

(assert (=> b!5005600 m!6039744))

(assert (=> b!5005601 m!6038310))

(assert (=> b!5005601 m!6039018))

(declare-fun m!6039746 () Bool)

(assert (=> b!5005601 m!6039746))

(assert (=> b!5005599 m!6039018))

(declare-fun m!6039748 () Bool)

(assert (=> b!5005599 m!6039748))

(assert (=> b!5005599 m!6038988))

(assert (=> b!5004953 d!1611100))

(declare-fun b!5005602 () Bool)

(declare-fun e!3127877 () List!57989)

(assert (=> b!5005602 (= e!3127877 (Cons!57865 (head!10733 lt!2071008) Nil!57865))))

(declare-fun b!5005603 () Bool)

(assert (=> b!5005603 (= e!3127877 (Cons!57865 (h!64313 Nil!57865) (++!12641 (t!370335 Nil!57865) (Cons!57865 (head!10733 lt!2071008) Nil!57865))))))

(declare-fun b!5005604 () Bool)

(declare-fun res!2135737 () Bool)

(declare-fun e!3127876 () Bool)

(assert (=> b!5005604 (=> (not res!2135737) (not e!3127876))))

(declare-fun lt!2071543 () List!57989)

(assert (=> b!5005604 (= res!2135737 (= (size!38465 lt!2071543) (+ (size!38465 Nil!57865) (size!38465 (Cons!57865 (head!10733 lt!2071008) Nil!57865)))))))

(declare-fun d!1611102 () Bool)

(assert (=> d!1611102 e!3127876))

(declare-fun res!2135736 () Bool)

(assert (=> d!1611102 (=> (not res!2135736) (not e!3127876))))

(assert (=> d!1611102 (= res!2135736 (= (content!10251 lt!2071543) ((_ map or) (content!10251 Nil!57865) (content!10251 (Cons!57865 (head!10733 lt!2071008) Nil!57865)))))))

(assert (=> d!1611102 (= lt!2071543 e!3127877)))

(declare-fun c!854536 () Bool)

(assert (=> d!1611102 (= c!854536 ((_ is Nil!57865) Nil!57865))))

(assert (=> d!1611102 (= (++!12641 Nil!57865 (Cons!57865 (head!10733 lt!2071008) Nil!57865)) lt!2071543)))

(declare-fun b!5005605 () Bool)

(assert (=> b!5005605 (= e!3127876 (or (not (= (Cons!57865 (head!10733 lt!2071008) Nil!57865) Nil!57865)) (= lt!2071543 Nil!57865)))))

(assert (= (and d!1611102 c!854536) b!5005602))

(assert (= (and d!1611102 (not c!854536)) b!5005603))

(assert (= (and d!1611102 res!2135736) b!5005604))

(assert (= (and b!5005604 res!2135737) b!5005605))

(declare-fun m!6039750 () Bool)

(assert (=> b!5005603 m!6039750))

(declare-fun m!6039752 () Bool)

(assert (=> b!5005604 m!6039752))

(assert (=> b!5005604 m!6038316))

(declare-fun m!6039754 () Bool)

(assert (=> b!5005604 m!6039754))

(declare-fun m!6039756 () Bool)

(assert (=> d!1611102 m!6039756))

(assert (=> d!1611102 m!6039738))

(declare-fun m!6039758 () Bool)

(assert (=> d!1611102 m!6039758))

(assert (=> b!5004953 d!1611102))

(declare-fun d!1611104 () Bool)

(assert (=> d!1611104 (= (++!12641 (++!12641 Nil!57865 (Cons!57865 lt!2071366 Nil!57865)) lt!2071372) lt!2071008)))

(declare-fun lt!2071546 () Unit!149035)

(declare-fun choose!37025 (List!57989 C!27840 List!57989 List!57989) Unit!149035)

(assert (=> d!1611104 (= lt!2071546 (choose!37025 Nil!57865 lt!2071366 lt!2071372 lt!2071008))))

(assert (=> d!1611104 (= (++!12641 Nil!57865 (Cons!57865 lt!2071366 lt!2071372)) lt!2071008)))

(assert (=> d!1611104 (= (lemmaMoveElementToOtherListKeepsConcatEq!1500 Nil!57865 lt!2071366 lt!2071372 lt!2071008) lt!2071546)))

(declare-fun bs!1186001 () Bool)

(assert (= bs!1186001 d!1611104))

(assert (=> bs!1186001 m!6039024))

(assert (=> bs!1186001 m!6039024))

(assert (=> bs!1186001 m!6039026))

(declare-fun m!6039760 () Bool)

(assert (=> bs!1186001 m!6039760))

(declare-fun m!6039762 () Bool)

(assert (=> bs!1186001 m!6039762))

(assert (=> b!5004953 d!1611104))

(declare-fun b!5005606 () Bool)

(declare-fun e!3127879 () List!57989)

(assert (=> b!5005606 (= e!3127879 (Cons!57865 (head!10733 (getSuffix!3144 lt!2071008 Nil!57865)) Nil!57865))))

(declare-fun b!5005607 () Bool)

(assert (=> b!5005607 (= e!3127879 (Cons!57865 (h!64313 Nil!57865) (++!12641 (t!370335 Nil!57865) (Cons!57865 (head!10733 (getSuffix!3144 lt!2071008 Nil!57865)) Nil!57865))))))

(declare-fun b!5005608 () Bool)

(declare-fun res!2135739 () Bool)

(declare-fun e!3127878 () Bool)

(assert (=> b!5005608 (=> (not res!2135739) (not e!3127878))))

(declare-fun lt!2071547 () List!57989)

(assert (=> b!5005608 (= res!2135739 (= (size!38465 lt!2071547) (+ (size!38465 Nil!57865) (size!38465 (Cons!57865 (head!10733 (getSuffix!3144 lt!2071008 Nil!57865)) Nil!57865)))))))

(declare-fun d!1611106 () Bool)

(assert (=> d!1611106 e!3127878))

(declare-fun res!2135738 () Bool)

(assert (=> d!1611106 (=> (not res!2135738) (not e!3127878))))

(assert (=> d!1611106 (= res!2135738 (= (content!10251 lt!2071547) ((_ map or) (content!10251 Nil!57865) (content!10251 (Cons!57865 (head!10733 (getSuffix!3144 lt!2071008 Nil!57865)) Nil!57865)))))))

(assert (=> d!1611106 (= lt!2071547 e!3127879)))

(declare-fun c!854537 () Bool)

(assert (=> d!1611106 (= c!854537 ((_ is Nil!57865) Nil!57865))))

(assert (=> d!1611106 (= (++!12641 Nil!57865 (Cons!57865 (head!10733 (getSuffix!3144 lt!2071008 Nil!57865)) Nil!57865)) lt!2071547)))

(declare-fun b!5005609 () Bool)

(assert (=> b!5005609 (= e!3127878 (or (not (= (Cons!57865 (head!10733 (getSuffix!3144 lt!2071008 Nil!57865)) Nil!57865) Nil!57865)) (= lt!2071547 Nil!57865)))))

(assert (= (and d!1611106 c!854537) b!5005606))

(assert (= (and d!1611106 (not c!854537)) b!5005607))

(assert (= (and d!1611106 res!2135738) b!5005608))

(assert (= (and b!5005608 res!2135739) b!5005609))

(declare-fun m!6039764 () Bool)

(assert (=> b!5005607 m!6039764))

(declare-fun m!6039766 () Bool)

(assert (=> b!5005608 m!6039766))

(assert (=> b!5005608 m!6038316))

(declare-fun m!6039768 () Bool)

(assert (=> b!5005608 m!6039768))

(declare-fun m!6039770 () Bool)

(assert (=> d!1611106 m!6039770))

(assert (=> d!1611106 m!6039738))

(declare-fun m!6039772 () Bool)

(assert (=> d!1611106 m!6039772))

(assert (=> b!5004953 d!1611106))

(assert (=> b!5004953 d!1611076))

(assert (=> b!5004953 d!1610784))

(declare-fun b!5005610 () Bool)

(declare-fun e!3127881 () List!57989)

(assert (=> b!5005610 (= e!3127881 lt!2071372)))

(declare-fun b!5005611 () Bool)

(assert (=> b!5005611 (= e!3127881 (Cons!57865 (h!64313 (++!12641 Nil!57865 (Cons!57865 lt!2071366 Nil!57865))) (++!12641 (t!370335 (++!12641 Nil!57865 (Cons!57865 lt!2071366 Nil!57865))) lt!2071372)))))

(declare-fun b!5005612 () Bool)

(declare-fun res!2135741 () Bool)

(declare-fun e!3127880 () Bool)

(assert (=> b!5005612 (=> (not res!2135741) (not e!3127880))))

(declare-fun lt!2071548 () List!57989)

(assert (=> b!5005612 (= res!2135741 (= (size!38465 lt!2071548) (+ (size!38465 (++!12641 Nil!57865 (Cons!57865 lt!2071366 Nil!57865))) (size!38465 lt!2071372))))))

(declare-fun d!1611108 () Bool)

(assert (=> d!1611108 e!3127880))

(declare-fun res!2135740 () Bool)

(assert (=> d!1611108 (=> (not res!2135740) (not e!3127880))))

(assert (=> d!1611108 (= res!2135740 (= (content!10251 lt!2071548) ((_ map or) (content!10251 (++!12641 Nil!57865 (Cons!57865 lt!2071366 Nil!57865))) (content!10251 lt!2071372))))))

(assert (=> d!1611108 (= lt!2071548 e!3127881)))

(declare-fun c!854538 () Bool)

(assert (=> d!1611108 (= c!854538 ((_ is Nil!57865) (++!12641 Nil!57865 (Cons!57865 lt!2071366 Nil!57865))))))

(assert (=> d!1611108 (= (++!12641 (++!12641 Nil!57865 (Cons!57865 lt!2071366 Nil!57865)) lt!2071372) lt!2071548)))

(declare-fun b!5005613 () Bool)

(assert (=> b!5005613 (= e!3127880 (or (not (= lt!2071372 Nil!57865)) (= lt!2071548 (++!12641 Nil!57865 (Cons!57865 lt!2071366 Nil!57865)))))))

(assert (= (and d!1611108 c!854538) b!5005610))

(assert (= (and d!1611108 (not c!854538)) b!5005611))

(assert (= (and d!1611108 res!2135740) b!5005612))

(assert (= (and b!5005612 res!2135741) b!5005613))

(declare-fun m!6039774 () Bool)

(assert (=> b!5005611 m!6039774))

(declare-fun m!6039776 () Bool)

(assert (=> b!5005612 m!6039776))

(assert (=> b!5005612 m!6039024))

(declare-fun m!6039778 () Bool)

(assert (=> b!5005612 m!6039778))

(declare-fun m!6039780 () Bool)

(assert (=> b!5005612 m!6039780))

(declare-fun m!6039782 () Bool)

(assert (=> d!1611108 m!6039782))

(assert (=> d!1611108 m!6039024))

(declare-fun m!6039784 () Bool)

(assert (=> d!1611108 m!6039784))

(declare-fun m!6039786 () Bool)

(assert (=> d!1611108 m!6039786))

(assert (=> b!5004953 d!1611108))

(declare-fun d!1611110 () Bool)

(assert (=> d!1611110 (<= (size!38465 Nil!57865) (size!38465 lt!2071008))))

(declare-fun lt!2071551 () Unit!149035)

(declare-fun choose!37027 (List!57989 List!57989) Unit!149035)

(assert (=> d!1611110 (= lt!2071551 (choose!37027 Nil!57865 lt!2071008))))

(assert (=> d!1611110 (isPrefix!5348 Nil!57865 lt!2071008)))

(assert (=> d!1611110 (= (lemmaIsPrefixThenSmallerEqSize!815 Nil!57865 lt!2071008) lt!2071551)))

(declare-fun bs!1186002 () Bool)

(assert (= bs!1186002 d!1611110))

(assert (=> bs!1186002 m!6038316))

(assert (=> bs!1186002 m!6038310))

(declare-fun m!6039788 () Bool)

(assert (=> bs!1186002 m!6039788))

(declare-fun m!6039790 () Bool)

(assert (=> bs!1186002 m!6039790))

(assert (=> b!5004953 d!1611110))

(declare-fun d!1611112 () Bool)

(declare-fun lt!2071554 () List!57989)

(assert (=> d!1611112 (= (++!12641 Nil!57865 lt!2071554) lt!2071008)))

(declare-fun e!3127884 () List!57989)

(assert (=> d!1611112 (= lt!2071554 e!3127884)))

(declare-fun c!854541 () Bool)

(assert (=> d!1611112 (= c!854541 ((_ is Cons!57865) Nil!57865))))

(assert (=> d!1611112 (>= (size!38465 lt!2071008) (size!38465 Nil!57865))))

(assert (=> d!1611112 (= (getSuffix!3144 lt!2071008 Nil!57865) lt!2071554)))

(declare-fun b!5005618 () Bool)

(assert (=> b!5005618 (= e!3127884 (getSuffix!3144 (tail!9866 lt!2071008) (t!370335 Nil!57865)))))

(declare-fun b!5005619 () Bool)

(assert (=> b!5005619 (= e!3127884 lt!2071008)))

(assert (= (and d!1611112 c!854541) b!5005618))

(assert (= (and d!1611112 (not c!854541)) b!5005619))

(declare-fun m!6039792 () Bool)

(assert (=> d!1611112 m!6039792))

(assert (=> d!1611112 m!6038310))

(assert (=> d!1611112 m!6038316))

(assert (=> b!5005618 m!6039012))

(assert (=> b!5005618 m!6039012))

(declare-fun m!6039794 () Bool)

(assert (=> b!5005618 m!6039794))

(assert (=> b!5004953 d!1611112))

(declare-fun d!1611114 () Bool)

(assert (=> d!1611114 (isPrefix!5348 (++!12641 Nil!57865 (Cons!57865 (head!10733 (getSuffix!3144 lt!2071008 Nil!57865)) Nil!57865)) lt!2071008)))

(declare-fun lt!2071557 () Unit!149035)

(declare-fun choose!37028 (List!57989 List!57989) Unit!149035)

(assert (=> d!1611114 (= lt!2071557 (choose!37028 Nil!57865 lt!2071008))))

(assert (=> d!1611114 (isPrefix!5348 Nil!57865 lt!2071008)))

(assert (=> d!1611114 (= (lemmaAddHeadSuffixToPrefixStillPrefix!889 Nil!57865 lt!2071008) lt!2071557)))

(declare-fun bs!1186003 () Bool)

(assert (= bs!1186003 d!1611114))

(assert (=> bs!1186003 m!6039790))

(assert (=> bs!1186003 m!6039014))

(assert (=> bs!1186003 m!6039022))

(declare-fun m!6039796 () Bool)

(assert (=> bs!1186003 m!6039796))

(assert (=> bs!1186003 m!6039014))

(assert (=> bs!1186003 m!6039018))

(assert (=> bs!1186003 m!6039018))

(assert (=> bs!1186003 m!6039020))

(assert (=> b!5004953 d!1611114))

(assert (=> b!5004953 d!1610972))

(declare-fun b!5005623 () Bool)

(declare-fun e!3127886 () List!57989)

(assert (=> b!5005623 (= e!3127886 (++!12641 (list!18626 (left!42305 (c!854185 (_2!34811 lt!2071017)))) (list!18626 (right!42635 (c!854185 (_2!34811 lt!2071017))))))))

(declare-fun b!5005622 () Bool)

(assert (=> b!5005622 (= e!3127886 (list!18627 (xs!18640 (c!854185 (_2!34811 lt!2071017)))))))

(declare-fun b!5005621 () Bool)

(declare-fun e!3127885 () List!57989)

(assert (=> b!5005621 (= e!3127885 e!3127886)))

(declare-fun c!854543 () Bool)

(assert (=> b!5005621 (= c!854543 ((_ is Leaf!25420) (c!854185 (_2!34811 lt!2071017))))))

(declare-fun b!5005620 () Bool)

(assert (=> b!5005620 (= e!3127885 Nil!57865)))

(declare-fun d!1611116 () Bool)

(declare-fun c!854542 () Bool)

(assert (=> d!1611116 (= c!854542 ((_ is Empty!15314) (c!854185 (_2!34811 lt!2071017))))))

(assert (=> d!1611116 (= (list!18626 (c!854185 (_2!34811 lt!2071017))) e!3127885)))

(assert (= (and d!1611116 c!854542) b!5005620))

(assert (= (and d!1611116 (not c!854542)) b!5005621))

(assert (= (and b!5005621 c!854543) b!5005622))

(assert (= (and b!5005621 (not c!854543)) b!5005623))

(declare-fun m!6039798 () Bool)

(assert (=> b!5005623 m!6039798))

(declare-fun m!6039800 () Bool)

(assert (=> b!5005623 m!6039800))

(assert (=> b!5005623 m!6039798))

(assert (=> b!5005623 m!6039800))

(declare-fun m!6039802 () Bool)

(assert (=> b!5005623 m!6039802))

(declare-fun m!6039804 () Bool)

(assert (=> b!5005622 m!6039804))

(assert (=> d!1610646 d!1611116))

(declare-fun d!1611118 () Bool)

(declare-fun res!2135742 () Bool)

(declare-fun e!3127887 () Bool)

(assert (=> d!1611118 (=> (not res!2135742) (not e!3127887))))

(assert (=> d!1611118 (= res!2135742 (<= (size!38465 (list!18627 (xs!18640 (c!854185 input!5597)))) 512))))

(assert (=> d!1611118 (= (inv!76035 (c!854185 input!5597)) e!3127887)))

(declare-fun b!5005624 () Bool)

(declare-fun res!2135743 () Bool)

(assert (=> b!5005624 (=> (not res!2135743) (not e!3127887))))

(assert (=> b!5005624 (= res!2135743 (= (csize!30859 (c!854185 input!5597)) (size!38465 (list!18627 (xs!18640 (c!854185 input!5597))))))))

(declare-fun b!5005625 () Bool)

(assert (=> b!5005625 (= e!3127887 (and (> (csize!30859 (c!854185 input!5597)) 0) (<= (csize!30859 (c!854185 input!5597)) 512)))))

(assert (= (and d!1611118 res!2135742) b!5005624))

(assert (= (and b!5005624 res!2135743) b!5005625))

(assert (=> d!1611118 m!6039246))

(assert (=> d!1611118 m!6039246))

(declare-fun m!6039806 () Bool)

(assert (=> d!1611118 m!6039806))

(assert (=> b!5005624 m!6039246))

(assert (=> b!5005624 m!6039246))

(assert (=> b!5005624 m!6039806))

(assert (=> b!5005032 d!1611118))

(assert (=> b!5005028 d!1610944))

(assert (=> d!1610792 d!1610828))

(assert (=> d!1610792 d!1611112))

(declare-fun b!5005626 () Bool)

(declare-fun e!3127890 () Bool)

(declare-fun e!3127889 () Bool)

(assert (=> b!5005626 (= e!3127890 e!3127889)))

(declare-fun res!2135745 () Bool)

(assert (=> b!5005626 (=> (not res!2135745) (not e!3127889))))

(assert (=> b!5005626 (= res!2135745 (not ((_ is Nil!57865) (++!12641 Nil!57865 lt!2071008))))))

(declare-fun b!5005628 () Bool)

(assert (=> b!5005628 (= e!3127889 (isPrefix!5348 (tail!9866 Nil!57865) (tail!9866 (++!12641 Nil!57865 lt!2071008))))))

(declare-fun b!5005629 () Bool)

(declare-fun e!3127888 () Bool)

(assert (=> b!5005629 (= e!3127888 (>= (size!38465 (++!12641 Nil!57865 lt!2071008)) (size!38465 Nil!57865)))))

(declare-fun b!5005627 () Bool)

(declare-fun res!2135747 () Bool)

(assert (=> b!5005627 (=> (not res!2135747) (not e!3127889))))

(assert (=> b!5005627 (= res!2135747 (= (head!10733 Nil!57865) (head!10733 (++!12641 Nil!57865 lt!2071008))))))

(declare-fun d!1611120 () Bool)

(assert (=> d!1611120 e!3127888))

(declare-fun res!2135746 () Bool)

(assert (=> d!1611120 (=> res!2135746 e!3127888)))

(declare-fun lt!2071558 () Bool)

(assert (=> d!1611120 (= res!2135746 (not lt!2071558))))

(assert (=> d!1611120 (= lt!2071558 e!3127890)))

(declare-fun res!2135744 () Bool)

(assert (=> d!1611120 (=> res!2135744 e!3127890)))

(assert (=> d!1611120 (= res!2135744 ((_ is Nil!57865) Nil!57865))))

(assert (=> d!1611120 (= (isPrefix!5348 Nil!57865 (++!12641 Nil!57865 lt!2071008)) lt!2071558)))

(assert (= (and d!1611120 (not res!2135744)) b!5005626))

(assert (= (and b!5005626 res!2135745) b!5005627))

(assert (= (and b!5005627 res!2135747) b!5005628))

(assert (= (and d!1611120 (not res!2135746)) b!5005629))

(declare-fun m!6039808 () Bool)

(assert (=> b!5005628 m!6039808))

(assert (=> b!5005628 m!6039034))

(declare-fun m!6039810 () Bool)

(assert (=> b!5005628 m!6039810))

(assert (=> b!5005628 m!6039808))

(assert (=> b!5005628 m!6039810))

(declare-fun m!6039812 () Bool)

(assert (=> b!5005628 m!6039812))

(assert (=> b!5005629 m!6039034))

(declare-fun m!6039814 () Bool)

(assert (=> b!5005629 m!6039814))

(assert (=> b!5005629 m!6038316))

(declare-fun m!6039816 () Bool)

(assert (=> b!5005627 m!6039816))

(assert (=> b!5005627 m!6039034))

(declare-fun m!6039818 () Bool)

(assert (=> b!5005627 m!6039818))

(assert (=> d!1610792 d!1611120))

(declare-fun b!5005630 () Bool)

(declare-fun e!3127892 () List!57989)

(assert (=> b!5005630 (= e!3127892 lt!2071008)))

(declare-fun b!5005631 () Bool)

(assert (=> b!5005631 (= e!3127892 (Cons!57865 (h!64313 Nil!57865) (++!12641 (t!370335 Nil!57865) lt!2071008)))))

(declare-fun b!5005632 () Bool)

(declare-fun res!2135749 () Bool)

(declare-fun e!3127891 () Bool)

(assert (=> b!5005632 (=> (not res!2135749) (not e!3127891))))

(declare-fun lt!2071559 () List!57989)

(assert (=> b!5005632 (= res!2135749 (= (size!38465 lt!2071559) (+ (size!38465 Nil!57865) (size!38465 lt!2071008))))))

(declare-fun d!1611122 () Bool)

(assert (=> d!1611122 e!3127891))

(declare-fun res!2135748 () Bool)

(assert (=> d!1611122 (=> (not res!2135748) (not e!3127891))))

(assert (=> d!1611122 (= res!2135748 (= (content!10251 lt!2071559) ((_ map or) (content!10251 Nil!57865) (content!10251 lt!2071008))))))

(assert (=> d!1611122 (= lt!2071559 e!3127892)))

(declare-fun c!854544 () Bool)

(assert (=> d!1611122 (= c!854544 ((_ is Nil!57865) Nil!57865))))

(assert (=> d!1611122 (= (++!12641 Nil!57865 lt!2071008) lt!2071559)))

(declare-fun b!5005633 () Bool)

(assert (=> b!5005633 (= e!3127891 (or (not (= lt!2071008 Nil!57865)) (= lt!2071559 Nil!57865)))))

(assert (= (and d!1611122 c!854544) b!5005630))

(assert (= (and d!1611122 (not c!854544)) b!5005631))

(assert (= (and d!1611122 res!2135748) b!5005632))

(assert (= (and b!5005632 res!2135749) b!5005633))

(declare-fun m!6039820 () Bool)

(assert (=> b!5005631 m!6039820))

(declare-fun m!6039822 () Bool)

(assert (=> b!5005632 m!6039822))

(assert (=> b!5005632 m!6038316))

(assert (=> b!5005632 m!6038310))

(declare-fun m!6039824 () Bool)

(assert (=> d!1611122 m!6039824))

(assert (=> d!1611122 m!6039738))

(assert (=> d!1611122 m!6039136))

(assert (=> d!1610792 d!1611122))

(declare-fun b!5005634 () Bool)

(declare-fun e!3127894 () List!57989)

(assert (=> b!5005634 (= e!3127894 (_2!34812 lt!2071378))))

(declare-fun b!5005635 () Bool)

(assert (=> b!5005635 (= e!3127894 (Cons!57865 (h!64313 (_1!34812 lt!2071378)) (++!12641 (t!370335 (_1!34812 lt!2071378)) (_2!34812 lt!2071378))))))

(declare-fun b!5005636 () Bool)

(declare-fun res!2135751 () Bool)

(declare-fun e!3127893 () Bool)

(assert (=> b!5005636 (=> (not res!2135751) (not e!3127893))))

(declare-fun lt!2071560 () List!57989)

(assert (=> b!5005636 (= res!2135751 (= (size!38465 lt!2071560) (+ (size!38465 (_1!34812 lt!2071378)) (size!38465 (_2!34812 lt!2071378)))))))

(declare-fun d!1611124 () Bool)

(assert (=> d!1611124 e!3127893))

(declare-fun res!2135750 () Bool)

(assert (=> d!1611124 (=> (not res!2135750) (not e!3127893))))

(assert (=> d!1611124 (= res!2135750 (= (content!10251 lt!2071560) ((_ map or) (content!10251 (_1!34812 lt!2071378)) (content!10251 (_2!34812 lt!2071378)))))))

(assert (=> d!1611124 (= lt!2071560 e!3127894)))

(declare-fun c!854545 () Bool)

(assert (=> d!1611124 (= c!854545 ((_ is Nil!57865) (_1!34812 lt!2071378)))))

(assert (=> d!1611124 (= (++!12641 (_1!34812 lt!2071378) (_2!34812 lt!2071378)) lt!2071560)))

(declare-fun b!5005637 () Bool)

(assert (=> b!5005637 (= e!3127893 (or (not (= (_2!34812 lt!2071378) Nil!57865)) (= lt!2071560 (_1!34812 lt!2071378))))))

(assert (= (and d!1611124 c!854545) b!5005634))

(assert (= (and d!1611124 (not c!854545)) b!5005635))

(assert (= (and d!1611124 res!2135750) b!5005636))

(assert (= (and b!5005636 res!2135751) b!5005637))

(declare-fun m!6039826 () Bool)

(assert (=> b!5005635 m!6039826))

(declare-fun m!6039828 () Bool)

(assert (=> b!5005636 m!6039828))

(assert (=> b!5005636 m!6038996))

(declare-fun m!6039830 () Bool)

(assert (=> b!5005636 m!6039830))

(declare-fun m!6039832 () Bool)

(assert (=> d!1611124 m!6039832))

(declare-fun m!6039834 () Bool)

(assert (=> d!1611124 m!6039834))

(declare-fun m!6039836 () Bool)

(assert (=> d!1611124 m!6039836))

(assert (=> d!1610792 d!1611124))

(declare-fun d!1611126 () Bool)

(declare-fun lostCauseFct!296 (Regex!13795) Bool)

(assert (=> d!1611126 (= (lostCause!1188 r!12727) (lostCauseFct!296 r!12727))))

(declare-fun bs!1186004 () Bool)

(assert (= bs!1186004 d!1611126))

(declare-fun m!6039838 () Bool)

(assert (=> bs!1186004 m!6039838))

(assert (=> d!1610792 d!1611126))

(declare-fun d!1611128 () Bool)

(assert (=> d!1611128 (= lt!2071008 lt!2071376)))

(declare-fun lt!2071563 () Unit!149035)

(declare-fun choose!37029 (List!57989 List!57989 List!57989 List!57989 List!57989) Unit!149035)

(assert (=> d!1611128 (= lt!2071563 (choose!37029 Nil!57865 lt!2071008 Nil!57865 lt!2071376 lt!2071008))))

(assert (=> d!1611128 (isPrefix!5348 Nil!57865 lt!2071008)))

(assert (=> d!1611128 (= (lemmaSamePrefixThenSameSuffix!2558 Nil!57865 lt!2071008 Nil!57865 lt!2071376 lt!2071008) lt!2071563)))

(declare-fun bs!1186005 () Bool)

(assert (= bs!1186005 d!1611128))

(declare-fun m!6039840 () Bool)

(assert (=> bs!1186005 m!6039840))

(assert (=> bs!1186005 m!6039790))

(assert (=> d!1610792 d!1611128))

(declare-fun d!1611130 () Bool)

(assert (=> d!1611130 (isPrefix!5348 Nil!57865 (++!12641 Nil!57865 lt!2071008))))

(declare-fun lt!2071564 () Unit!149035)

(assert (=> d!1611130 (= lt!2071564 (choose!37014 Nil!57865 lt!2071008))))

(assert (=> d!1611130 (= (lemmaConcatTwoListThenFirstIsPrefix!3446 Nil!57865 lt!2071008) lt!2071564)))

(declare-fun bs!1186006 () Bool)

(assert (= bs!1186006 d!1611130))

(assert (=> bs!1186006 m!6039034))

(assert (=> bs!1186006 m!6039034))

(assert (=> bs!1186006 m!6039040))

(declare-fun m!6039842 () Bool)

(assert (=> bs!1186006 m!6039842))

(assert (=> d!1610792 d!1611130))

(assert (=> d!1610796 d!1610798))

(assert (=> d!1610796 d!1610768))

(declare-fun d!1611132 () Bool)

(assert (=> d!1611132 (= (matchR!6759 r!12727 lt!2071021) (matchZipper!563 z!4183 lt!2071021))))

(assert (=> d!1611132 true))

(declare-fun _$44!1348 () Unit!149035)

(assert (=> d!1611132 (= (choose!37020 z!4183 lt!2071007 r!12727 lt!2071021) _$44!1348)))

(declare-fun bs!1186007 () Bool)

(assert (= bs!1186007 d!1611132))

(assert (=> bs!1186007 m!6038360))

(assert (=> bs!1186007 m!6038326))

(assert (=> d!1610796 d!1611132))

(assert (=> d!1610796 d!1610828))

(declare-fun d!1611134 () Bool)

(declare-fun c!854548 () Bool)

(assert (=> d!1611134 (= c!854548 ((_ is Nil!57867) lt!2071274))))

(declare-fun e!3127897 () (InoxSet Context!6440))

(assert (=> d!1611134 (= (content!10252 lt!2071274) e!3127897)))

(declare-fun b!5005642 () Bool)

(assert (=> b!5005642 (= e!3127897 ((as const (Array Context!6440 Bool)) false))))

(declare-fun b!5005643 () Bool)

(assert (=> b!5005643 (= e!3127897 ((_ map or) (store ((as const (Array Context!6440 Bool)) false) (h!64315 lt!2071274) true) (content!10252 (t!370337 lt!2071274))))))

(assert (= (and d!1611134 c!854548) b!5005642))

(assert (= (and d!1611134 (not c!854548)) b!5005643))

(declare-fun m!6039844 () Bool)

(assert (=> b!5005643 m!6039844))

(declare-fun m!6039846 () Bool)

(assert (=> b!5005643 m!6039846))

(assert (=> b!5004790 d!1611134))

(declare-fun d!1611136 () Bool)

(declare-fun res!2135756 () Bool)

(declare-fun e!3127902 () Bool)

(assert (=> d!1611136 (=> res!2135756 e!3127902)))

(assert (=> d!1611136 (= res!2135756 ((_ is Nil!57866) (exprs!3720 setElem!28412)))))

(assert (=> d!1611136 (= (forall!13364 (exprs!3720 setElem!28412) lambda!248369) e!3127902)))

(declare-fun b!5005648 () Bool)

(declare-fun e!3127903 () Bool)

(assert (=> b!5005648 (= e!3127902 e!3127903)))

(declare-fun res!2135757 () Bool)

(assert (=> b!5005648 (=> (not res!2135757) (not e!3127903))))

(declare-fun dynLambda!23517 (Int Regex!13795) Bool)

(assert (=> b!5005648 (= res!2135757 (dynLambda!23517 lambda!248369 (h!64314 (exprs!3720 setElem!28412))))))

(declare-fun b!5005649 () Bool)

(assert (=> b!5005649 (= e!3127903 (forall!13364 (t!370336 (exprs!3720 setElem!28412)) lambda!248369))))

(assert (= (and d!1611136 (not res!2135756)) b!5005648))

(assert (= (and b!5005648 res!2135757) b!5005649))

(declare-fun b_lambda!198617 () Bool)

(assert (=> (not b_lambda!198617) (not b!5005648)))

(declare-fun m!6039848 () Bool)

(assert (=> b!5005648 m!6039848))

(declare-fun m!6039850 () Bool)

(assert (=> b!5005649 m!6039850))

(assert (=> d!1610680 d!1611136))

(assert (=> b!5004991 d!1610880))

(declare-fun d!1611138 () Bool)

(declare-fun lt!2071565 () Int)

(assert (=> d!1611138 (>= lt!2071565 0)))

(declare-fun e!3127904 () Int)

(assert (=> d!1611138 (= lt!2071565 e!3127904)))

(declare-fun c!854549 () Bool)

(assert (=> d!1611138 (= c!854549 ((_ is Nil!57865) (_1!34812 lt!2071378)))))

(assert (=> d!1611138 (= (size!38465 (_1!34812 lt!2071378)) lt!2071565)))

(declare-fun b!5005650 () Bool)

(assert (=> b!5005650 (= e!3127904 0)))

(declare-fun b!5005651 () Bool)

(assert (=> b!5005651 (= e!3127904 (+ 1 (size!38465 (t!370335 (_1!34812 lt!2071378)))))))

(assert (= (and d!1611138 c!854549) b!5005650))

(assert (= (and d!1611138 (not c!854549)) b!5005651))

(declare-fun m!6039852 () Bool)

(assert (=> b!5005651 m!6039852))

(assert (=> b!5004947 d!1611138))

(assert (=> b!5004947 d!1610784))

(assert (=> b!5004824 d!1610854))

(assert (=> b!5004994 d!1610930))

(assert (=> b!5004994 d!1610932))

(declare-fun d!1611140 () Bool)

(declare-fun lt!2071566 () Int)

(assert (=> d!1611140 (>= lt!2071566 0)))

(declare-fun e!3127905 () Int)

(assert (=> d!1611140 (= lt!2071566 e!3127905)))

(declare-fun c!854550 () Bool)

(assert (=> d!1611140 (= c!854550 ((_ is Nil!57865) lt!2071013))))

(assert (=> d!1611140 (= (size!38465 lt!2071013) lt!2071566)))

(declare-fun b!5005652 () Bool)

(assert (=> b!5005652 (= e!3127905 0)))

(declare-fun b!5005653 () Bool)

(assert (=> b!5005653 (= e!3127905 (+ 1 (size!38465 (t!370335 lt!2071013))))))

(assert (= (and d!1611140 c!854550) b!5005652))

(assert (= (and d!1611140 (not c!854550)) b!5005653))

(declare-fun m!6039854 () Bool)

(assert (=> b!5005653 m!6039854))

(assert (=> b!5004960 d!1611140))

(assert (=> b!5004960 d!1610804))

(declare-fun d!1611142 () Bool)

(assert (=> d!1611142 (= (nullable!4689 (reg!14124 r!12727)) (nullableFct!1269 (reg!14124 r!12727)))))

(declare-fun bs!1186008 () Bool)

(assert (= bs!1186008 d!1611142))

(declare-fun m!6039856 () Bool)

(assert (=> bs!1186008 m!6039856))

(assert (=> b!5005076 d!1611142))

(declare-fun d!1611144 () Bool)

(declare-fun lt!2071567 () Int)

(assert (=> d!1611144 (>= lt!2071567 0)))

(declare-fun e!3127906 () Int)

(assert (=> d!1611144 (= lt!2071567 e!3127906)))

(declare-fun c!854551 () Bool)

(assert (=> d!1611144 (= c!854551 ((_ is Nil!57865) lt!2071063))))

(assert (=> d!1611144 (= (size!38465 lt!2071063) lt!2071567)))

(declare-fun b!5005654 () Bool)

(assert (=> b!5005654 (= e!3127906 0)))

(declare-fun b!5005655 () Bool)

(assert (=> b!5005655 (= e!3127906 (+ 1 (size!38465 (t!370335 lt!2071063))))))

(assert (= (and d!1611144 c!854551) b!5005654))

(assert (= (and d!1611144 (not c!854551)) b!5005655))

(declare-fun m!6039858 () Bool)

(assert (=> b!5005655 m!6039858))

(assert (=> d!1610628 d!1611144))

(declare-fun b!5005656 () Bool)

(declare-fun e!3127910 () Unit!149035)

(declare-fun Unit!149048 () Unit!149035)

(assert (=> b!5005656 (= e!3127910 Unit!149048)))

(declare-fun lt!2071574 () Unit!149035)

(declare-fun call!349447 () Unit!149035)

(assert (=> b!5005656 (= lt!2071574 call!349447)))

(declare-fun call!349446 () Bool)

(assert (=> b!5005656 call!349446))

(declare-fun lt!2071569 () Unit!149035)

(assert (=> b!5005656 (= lt!2071569 lt!2071574)))

(declare-fun lt!2071580 () Unit!149035)

(declare-fun call!349448 () Unit!149035)

(assert (=> b!5005656 (= lt!2071580 call!349448)))

(assert (=> b!5005656 (= lt!2071008 Nil!57865)))

(declare-fun lt!2071582 () Unit!149035)

(assert (=> b!5005656 (= lt!2071582 lt!2071580)))

(assert (=> b!5005656 false))

(declare-fun b!5005657 () Bool)

(declare-fun Unit!149049 () Unit!149035)

(assert (=> b!5005657 (= e!3127910 Unit!149049)))

(declare-fun b!5005658 () Bool)

(declare-fun e!3127913 () tuple2!63018)

(declare-fun call!349451 () tuple2!63018)

(assert (=> b!5005658 (= e!3127913 call!349451)))

(declare-fun bm!349440 () Bool)

(declare-fun call!349452 () List!57989)

(assert (=> bm!349440 (= call!349452 (tail!9866 lt!2071008))))

(declare-fun b!5005659 () Bool)

(declare-fun c!854552 () Bool)

(declare-fun call!349449 () Bool)

(assert (=> b!5005659 (= c!854552 call!349449)))

(declare-fun lt!2071586 () Unit!149035)

(declare-fun lt!2071592 () Unit!149035)

(assert (=> b!5005659 (= lt!2071586 lt!2071592)))

(assert (=> b!5005659 (= lt!2071008 Nil!57865)))

(assert (=> b!5005659 (= lt!2071592 call!349448)))

(declare-fun lt!2071595 () Unit!149035)

(declare-fun lt!2071568 () Unit!149035)

(assert (=> b!5005659 (= lt!2071595 lt!2071568)))

(assert (=> b!5005659 call!349446))

(assert (=> b!5005659 (= lt!2071568 call!349447)))

(declare-fun e!3127911 () tuple2!63018)

(declare-fun e!3127907 () tuple2!63018)

(assert (=> b!5005659 (= e!3127911 e!3127907)))

(declare-fun b!5005660 () Bool)

(declare-fun e!3127914 () Bool)

(declare-fun lt!2071583 () tuple2!63018)

(assert (=> b!5005660 (= e!3127914 (>= (size!38465 (_1!34812 lt!2071583)) (size!38465 Nil!57865)))))

(declare-fun d!1611146 () Bool)

(declare-fun e!3127912 () Bool)

(assert (=> d!1611146 e!3127912))

(declare-fun res!2135759 () Bool)

(assert (=> d!1611146 (=> (not res!2135759) (not e!3127912))))

(assert (=> d!1611146 (= res!2135759 (= (++!12641 (_1!34812 lt!2071583) (_2!34812 lt!2071583)) lt!2071008))))

(declare-fun e!3127909 () tuple2!63018)

(assert (=> d!1611146 (= lt!2071583 e!3127909)))

(declare-fun c!854554 () Bool)

(assert (=> d!1611146 (= c!854554 (lostCause!1188 r!12727))))

(declare-fun lt!2071588 () Unit!149035)

(declare-fun Unit!149050 () Unit!149035)

(assert (=> d!1611146 (= lt!2071588 Unit!149050)))

(assert (=> d!1611146 (= (getSuffix!3144 lt!2071008 Nil!57865) lt!2071008)))

(declare-fun lt!2071594 () Unit!149035)

(declare-fun lt!2071576 () Unit!149035)

(assert (=> d!1611146 (= lt!2071594 lt!2071576)))

(declare-fun lt!2071581 () List!57989)

(assert (=> d!1611146 (= lt!2071008 lt!2071581)))

(assert (=> d!1611146 (= lt!2071576 (lemmaSamePrefixThenSameSuffix!2558 Nil!57865 lt!2071008 Nil!57865 lt!2071581 lt!2071008))))

(assert (=> d!1611146 (= lt!2071581 (getSuffix!3144 lt!2071008 Nil!57865))))

(declare-fun lt!2071570 () Unit!149035)

(declare-fun lt!2071585 () Unit!149035)

(assert (=> d!1611146 (= lt!2071570 lt!2071585)))

(assert (=> d!1611146 (isPrefix!5348 Nil!57865 (++!12641 Nil!57865 lt!2071008))))

(assert (=> d!1611146 (= lt!2071585 (lemmaConcatTwoListThenFirstIsPrefix!3446 Nil!57865 lt!2071008))))

(assert (=> d!1611146 (validRegex!6092 r!12727)))

(assert (=> d!1611146 (= (findLongestMatchInner!1984 r!12727 Nil!57865 0 lt!2071008 lt!2071008 (sizeTr!399 lt!2071008 0)) lt!2071583)))

(declare-fun b!5005661 () Bool)

(assert (=> b!5005661 (= e!3127907 (tuple2!63019 Nil!57865 Nil!57865))))

(declare-fun bm!349441 () Bool)

(assert (=> bm!349441 (= call!349447 (lemmaIsPrefixRefl!3627 lt!2071008 lt!2071008))))

(declare-fun bm!349442 () Bool)

(assert (=> bm!349442 (= call!349446 (isPrefix!5348 lt!2071008 lt!2071008))))

(declare-fun b!5005662 () Bool)

(assert (=> b!5005662 (= e!3127909 e!3127911)))

(declare-fun c!854555 () Bool)

(assert (=> b!5005662 (= c!854555 (= 0 (sizeTr!399 lt!2071008 0)))))

(declare-fun bm!349443 () Bool)

(declare-fun call!349445 () C!27840)

(assert (=> bm!349443 (= call!349445 (head!10733 lt!2071008))))

(declare-fun b!5005663 () Bool)

(declare-fun e!3127908 () tuple2!63018)

(declare-fun lt!2071578 () tuple2!63018)

(assert (=> b!5005663 (= e!3127908 lt!2071578)))

(declare-fun b!5005664 () Bool)

(assert (=> b!5005664 (= e!3127912 e!3127914)))

(declare-fun res!2135758 () Bool)

(assert (=> b!5005664 (=> res!2135758 e!3127914)))

(assert (=> b!5005664 (= res!2135758 (isEmpty!31333 (_1!34812 lt!2071583)))))

(declare-fun bm!349444 () Bool)

(declare-fun call!349450 () Regex!13795)

(assert (=> bm!349444 (= call!349450 (derivativeStep!3979 r!12727 call!349445))))

(declare-fun b!5005665 () Bool)

(assert (=> b!5005665 (= e!3127909 (tuple2!63019 Nil!57865 lt!2071008))))

(declare-fun b!5005666 () Bool)

(declare-fun c!854557 () Bool)

(assert (=> b!5005666 (= c!854557 call!349449)))

(declare-fun lt!2071593 () Unit!149035)

(declare-fun lt!2071590 () Unit!149035)

(assert (=> b!5005666 (= lt!2071593 lt!2071590)))

(declare-fun lt!2071571 () C!27840)

(declare-fun lt!2071577 () List!57989)

(assert (=> b!5005666 (= (++!12641 (++!12641 Nil!57865 (Cons!57865 lt!2071571 Nil!57865)) lt!2071577) lt!2071008)))

(assert (=> b!5005666 (= lt!2071590 (lemmaMoveElementToOtherListKeepsConcatEq!1500 Nil!57865 lt!2071571 lt!2071577 lt!2071008))))

(assert (=> b!5005666 (= lt!2071577 (tail!9866 lt!2071008))))

(assert (=> b!5005666 (= lt!2071571 (head!10733 lt!2071008))))

(declare-fun lt!2071579 () Unit!149035)

(declare-fun lt!2071572 () Unit!149035)

(assert (=> b!5005666 (= lt!2071579 lt!2071572)))

(assert (=> b!5005666 (isPrefix!5348 (++!12641 Nil!57865 (Cons!57865 (head!10733 (getSuffix!3144 lt!2071008 Nil!57865)) Nil!57865)) lt!2071008)))

(assert (=> b!5005666 (= lt!2071572 (lemmaAddHeadSuffixToPrefixStillPrefix!889 Nil!57865 lt!2071008))))

(declare-fun lt!2071591 () Unit!149035)

(declare-fun lt!2071573 () Unit!149035)

(assert (=> b!5005666 (= lt!2071591 lt!2071573)))

(assert (=> b!5005666 (= lt!2071573 (lemmaAddHeadSuffixToPrefixStillPrefix!889 Nil!57865 lt!2071008))))

(declare-fun lt!2071587 () List!57989)

(assert (=> b!5005666 (= lt!2071587 (++!12641 Nil!57865 (Cons!57865 (head!10733 lt!2071008) Nil!57865)))))

(declare-fun lt!2071575 () Unit!149035)

(assert (=> b!5005666 (= lt!2071575 e!3127910)))

(declare-fun c!854553 () Bool)

(assert (=> b!5005666 (= c!854553 (= (size!38465 Nil!57865) (size!38465 lt!2071008)))))

(declare-fun lt!2071584 () Unit!149035)

(declare-fun lt!2071589 () Unit!149035)

(assert (=> b!5005666 (= lt!2071584 lt!2071589)))

(assert (=> b!5005666 (<= (size!38465 Nil!57865) (size!38465 lt!2071008))))

(assert (=> b!5005666 (= lt!2071589 (lemmaIsPrefixThenSmallerEqSize!815 Nil!57865 lt!2071008))))

(assert (=> b!5005666 (= e!3127911 e!3127913)))

(declare-fun bm!349445 () Bool)

(assert (=> bm!349445 (= call!349449 (nullable!4689 r!12727))))

(declare-fun b!5005667 () Bool)

(assert (=> b!5005667 (= e!3127907 (tuple2!63019 Nil!57865 lt!2071008))))

(declare-fun bm!349446 () Bool)

(assert (=> bm!349446 (= call!349448 (lemmaIsPrefixSameLengthThenSameList!1275 lt!2071008 Nil!57865 lt!2071008))))

(declare-fun b!5005668 () Bool)

(assert (=> b!5005668 (= e!3127908 (tuple2!63019 Nil!57865 lt!2071008))))

(declare-fun bm!349447 () Bool)

(assert (=> bm!349447 (= call!349451 (findLongestMatchInner!1984 call!349450 lt!2071587 (+ 0 1) call!349452 lt!2071008 (sizeTr!399 lt!2071008 0)))))

(declare-fun b!5005669 () Bool)

(assert (=> b!5005669 (= e!3127913 e!3127908)))

(assert (=> b!5005669 (= lt!2071578 call!349451)))

(declare-fun c!854556 () Bool)

(assert (=> b!5005669 (= c!854556 (isEmpty!31333 (_1!34812 lt!2071578)))))

(assert (= (and d!1611146 c!854554) b!5005665))

(assert (= (and d!1611146 (not c!854554)) b!5005662))

(assert (= (and b!5005662 c!854555) b!5005659))

(assert (= (and b!5005662 (not c!854555)) b!5005666))

(assert (= (and b!5005659 c!854552) b!5005661))

(assert (= (and b!5005659 (not c!854552)) b!5005667))

(assert (= (and b!5005666 c!854553) b!5005656))

(assert (= (and b!5005666 (not c!854553)) b!5005657))

(assert (= (and b!5005666 c!854557) b!5005669))

(assert (= (and b!5005666 (not c!854557)) b!5005658))

(assert (= (and b!5005669 c!854556) b!5005668))

(assert (= (and b!5005669 (not c!854556)) b!5005663))

(assert (= (or b!5005669 b!5005658) bm!349443))

(assert (= (or b!5005669 b!5005658) bm!349440))

(assert (= (or b!5005669 b!5005658) bm!349444))

(assert (= (or b!5005669 b!5005658) bm!349447))

(assert (= (or b!5005659 b!5005666) bm!349445))

(assert (= (or b!5005659 b!5005656) bm!349442))

(assert (= (or b!5005659 b!5005656) bm!349446))

(assert (= (or b!5005659 b!5005656) bm!349441))

(assert (= (and d!1611146 res!2135759) b!5005664))

(assert (= (and b!5005664 (not res!2135758)) b!5005660))

(assert (=> bm!349443 m!6038988))

(declare-fun m!6039860 () Bool)

(assert (=> b!5005669 m!6039860))

(assert (=> bm!349442 m!6038992))

(declare-fun m!6039862 () Bool)

(assert (=> b!5005664 m!6039862))

(declare-fun m!6039864 () Bool)

(assert (=> b!5005660 m!6039864))

(assert (=> b!5005660 m!6038316))

(assert (=> bm!349447 m!6038480))

(declare-fun m!6039866 () Bool)

(assert (=> bm!349447 m!6039866))

(assert (=> bm!349441 m!6039000))

(declare-fun m!6039868 () Bool)

(assert (=> bm!349444 m!6039868))

(assert (=> bm!349445 m!6039004))

(assert (=> bm!349446 m!6039006))

(assert (=> b!5005666 m!6039008))

(assert (=> b!5005666 m!6038316))

(assert (=> b!5005666 m!6039010))

(assert (=> b!5005666 m!6039012))

(assert (=> b!5005666 m!6038310))

(assert (=> b!5005666 m!6039014))

(declare-fun m!6039870 () Bool)

(assert (=> b!5005666 m!6039870))

(assert (=> b!5005666 m!6039018))

(assert (=> b!5005666 m!6039020))

(assert (=> b!5005666 m!6039014))

(assert (=> b!5005666 m!6039022))

(assert (=> b!5005666 m!6039018))

(declare-fun m!6039872 () Bool)

(assert (=> b!5005666 m!6039872))

(assert (=> b!5005666 m!6038988))

(assert (=> b!5005666 m!6039872))

(declare-fun m!6039874 () Bool)

(assert (=> b!5005666 m!6039874))

(assert (=> b!5005666 m!6039028))

(assert (=> d!1611146 m!6039030))

(assert (=> d!1611146 m!6039032))

(assert (=> d!1611146 m!6039034))

(assert (=> d!1611146 m!6038386))

(assert (=> d!1611146 m!6039014))

(declare-fun m!6039876 () Bool)

(assert (=> d!1611146 m!6039876))

(declare-fun m!6039878 () Bool)

(assert (=> d!1611146 m!6039878))

(assert (=> d!1611146 m!6039034))

(assert (=> d!1611146 m!6039040))

(assert (=> bm!349440 m!6039012))

(assert (=> d!1610628 d!1611146))

(assert (=> d!1610628 d!1610776))

(declare-fun d!1611148 () Bool)

(assert (=> d!1611148 (= (sizeTr!399 lt!2071063 lt!2071062) (+ (size!38465 lt!2071063) lt!2071062))))

(declare-fun lt!2071598 () Unit!149035)

(declare-fun choose!37030 (List!57989 Int) Unit!149035)

(assert (=> d!1611148 (= lt!2071598 (choose!37030 lt!2071063 lt!2071062))))

(assert (=> d!1611148 (= (lemmaSizeTrEqualsSize!398 lt!2071063 lt!2071062) lt!2071598)))

(declare-fun bs!1186009 () Bool)

(assert (= bs!1186009 d!1611148))

(assert (=> bs!1186009 m!6038472))

(assert (=> bs!1186009 m!6038484))

(declare-fun m!6039880 () Bool)

(assert (=> bs!1186009 m!6039880))

(assert (=> d!1610628 d!1611148))

(declare-fun d!1611150 () Bool)

(declare-fun c!854560 () Bool)

(assert (=> d!1611150 (= c!854560 ((_ is Nil!57865) lt!2071008))))

(declare-fun e!3127917 () Int)

(assert (=> d!1611150 (= (sizeTr!399 lt!2071008 lt!2071069) e!3127917)))

(declare-fun b!5005674 () Bool)

(assert (=> b!5005674 (= e!3127917 lt!2071069)))

(declare-fun b!5005675 () Bool)

(assert (=> b!5005675 (= e!3127917 (sizeTr!399 (t!370335 lt!2071008) (+ lt!2071069 1)))))

(assert (= (and d!1611150 c!854560) b!5005674))

(assert (= (and d!1611150 (not c!854560)) b!5005675))

(declare-fun m!6039882 () Bool)

(assert (=> b!5005675 m!6039882))

(assert (=> d!1610628 d!1611150))

(declare-fun b!5005676 () Bool)

(declare-fun e!3127919 () List!57989)

(assert (=> b!5005676 (= e!3127919 (_2!34812 lt!2071067))))

(declare-fun b!5005677 () Bool)

(assert (=> b!5005677 (= e!3127919 (Cons!57865 (h!64313 (_1!34812 lt!2071067)) (++!12641 (t!370335 (_1!34812 lt!2071067)) (_2!34812 lt!2071067))))))

(declare-fun b!5005678 () Bool)

(declare-fun res!2135761 () Bool)

(declare-fun e!3127918 () Bool)

(assert (=> b!5005678 (=> (not res!2135761) (not e!3127918))))

(declare-fun lt!2071599 () List!57989)

(assert (=> b!5005678 (= res!2135761 (= (size!38465 lt!2071599) (+ (size!38465 (_1!34812 lt!2071067)) (size!38465 (_2!34812 lt!2071067)))))))

(declare-fun d!1611152 () Bool)

(assert (=> d!1611152 e!3127918))

(declare-fun res!2135760 () Bool)

(assert (=> d!1611152 (=> (not res!2135760) (not e!3127918))))

(assert (=> d!1611152 (= res!2135760 (= (content!10251 lt!2071599) ((_ map or) (content!10251 (_1!34812 lt!2071067)) (content!10251 (_2!34812 lt!2071067)))))))

(assert (=> d!1611152 (= lt!2071599 e!3127919)))

(declare-fun c!854561 () Bool)

(assert (=> d!1611152 (= c!854561 ((_ is Nil!57865) (_1!34812 lt!2071067)))))

(assert (=> d!1611152 (= (++!12641 (_1!34812 lt!2071067) (_2!34812 lt!2071067)) lt!2071599)))

(declare-fun b!5005679 () Bool)

(assert (=> b!5005679 (= e!3127918 (or (not (= (_2!34812 lt!2071067) Nil!57865)) (= lt!2071599 (_1!34812 lt!2071067))))))

(assert (= (and d!1611152 c!854561) b!5005676))

(assert (= (and d!1611152 (not c!854561)) b!5005677))

(assert (= (and d!1611152 res!2135760) b!5005678))

(assert (= (and b!5005678 res!2135761) b!5005679))

(declare-fun m!6039884 () Bool)

(assert (=> b!5005677 m!6039884))

(declare-fun m!6039886 () Bool)

(assert (=> b!5005678 m!6039886))

(declare-fun m!6039888 () Bool)

(assert (=> b!5005678 m!6039888))

(declare-fun m!6039890 () Bool)

(assert (=> b!5005678 m!6039890))

(declare-fun m!6039892 () Bool)

(assert (=> d!1611152 m!6039892))

(declare-fun m!6039894 () Bool)

(assert (=> d!1611152 m!6039894))

(declare-fun m!6039896 () Bool)

(assert (=> d!1611152 m!6039896))

(assert (=> d!1610628 d!1611152))

(assert (=> d!1610628 d!1610828))

(declare-fun d!1611154 () Bool)

(declare-fun c!854562 () Bool)

(assert (=> d!1611154 (= c!854562 ((_ is Nil!57865) lt!2071008))))

(declare-fun e!3127920 () Int)

(assert (=> d!1611154 (= (sizeTr!399 lt!2071008 0) e!3127920)))

(declare-fun b!5005680 () Bool)

(assert (=> b!5005680 (= e!3127920 0)))

(declare-fun b!5005681 () Bool)

(assert (=> b!5005681 (= e!3127920 (sizeTr!399 (t!370335 lt!2071008) (+ 0 1)))))

(assert (= (and d!1611154 c!854562) b!5005680))

(assert (= (and d!1611154 (not c!854562)) b!5005681))

(declare-fun m!6039898 () Bool)

(assert (=> b!5005681 m!6039898))

(assert (=> d!1610628 d!1611154))

(declare-fun d!1611156 () Bool)

(declare-fun c!854563 () Bool)

(assert (=> d!1611156 (= c!854563 ((_ is Nil!57865) lt!2071063))))

(declare-fun e!3127921 () Int)

(assert (=> d!1611156 (= (sizeTr!399 lt!2071063 lt!2071062) e!3127921)))

(declare-fun b!5005682 () Bool)

(assert (=> b!5005682 (= e!3127921 lt!2071062)))

(declare-fun b!5005683 () Bool)

(assert (=> b!5005683 (= e!3127921 (sizeTr!399 (t!370335 lt!2071063) (+ lt!2071062 1)))))

(assert (= (and d!1611156 c!854563) b!5005682))

(assert (= (and d!1611156 (not c!854563)) b!5005683))

(declare-fun m!6039900 () Bool)

(assert (=> b!5005683 m!6039900))

(assert (=> d!1610628 d!1611156))

(declare-fun d!1611158 () Bool)

(assert (=> d!1611158 (= (sizeTr!399 lt!2071008 lt!2071069) (+ (size!38465 lt!2071008) lt!2071069))))

(declare-fun lt!2071600 () Unit!149035)

(assert (=> d!1611158 (= lt!2071600 (choose!37030 lt!2071008 lt!2071069))))

(assert (=> d!1611158 (= (lemmaSizeTrEqualsSize!398 lt!2071008 lt!2071069) lt!2071600)))

(declare-fun bs!1186010 () Bool)

(assert (= bs!1186010 d!1611158))

(assert (=> bs!1186010 m!6038466))

(assert (=> bs!1186010 m!6038310))

(declare-fun m!6039902 () Bool)

(assert (=> bs!1186010 m!6039902))

(assert (=> d!1610628 d!1611158))

(declare-fun d!1611160 () Bool)

(declare-fun c!854564 () Bool)

(assert (=> d!1611160 (= c!854564 ((_ is Nil!57865) lt!2071262))))

(declare-fun e!3127922 () (InoxSet C!27840))

(assert (=> d!1611160 (= (content!10251 lt!2071262) e!3127922)))

(declare-fun b!5005684 () Bool)

(assert (=> b!5005684 (= e!3127922 ((as const (Array C!27840 Bool)) false))))

(declare-fun b!5005685 () Bool)

(assert (=> b!5005685 (= e!3127922 ((_ map or) (store ((as const (Array C!27840 Bool)) false) (h!64313 lt!2071262) true) (content!10251 (t!370335 lt!2071262))))))

(assert (= (and d!1611160 c!854564) b!5005684))

(assert (= (and d!1611160 (not c!854564)) b!5005685))

(declare-fun m!6039904 () Bool)

(assert (=> b!5005685 m!6039904))

(declare-fun m!6039906 () Bool)

(assert (=> b!5005685 m!6039906))

(assert (=> d!1610750 d!1611160))

(declare-fun d!1611162 () Bool)

(declare-fun c!854565 () Bool)

(assert (=> d!1611162 (= c!854565 ((_ is Nil!57865) lt!2071025))))

(declare-fun e!3127923 () (InoxSet C!27840))

(assert (=> d!1611162 (= (content!10251 lt!2071025) e!3127923)))

(declare-fun b!5005686 () Bool)

(assert (=> b!5005686 (= e!3127923 ((as const (Array C!27840 Bool)) false))))

(declare-fun b!5005687 () Bool)

(assert (=> b!5005687 (= e!3127923 ((_ map or) (store ((as const (Array C!27840 Bool)) false) (h!64313 lt!2071025) true) (content!10251 (t!370335 lt!2071025))))))

(assert (= (and d!1611162 c!854565) b!5005686))

(assert (= (and d!1611162 (not c!854565)) b!5005687))

(declare-fun m!6039908 () Bool)

(assert (=> b!5005687 m!6039908))

(assert (=> b!5005687 m!6039378))

(assert (=> d!1610750 d!1611162))

(declare-fun b!5005688 () Bool)

(declare-fun e!3127926 () Bool)

(declare-fun e!3127925 () Bool)

(assert (=> b!5005688 (= e!3127926 e!3127925)))

(declare-fun res!2135763 () Bool)

(assert (=> b!5005688 (=> (not res!2135763) (not e!3127925))))

(assert (=> b!5005688 (= res!2135763 (not ((_ is Nil!57865) (tail!9866 lt!2071012))))))

(declare-fun b!5005690 () Bool)

(assert (=> b!5005690 (= e!3127925 (isPrefix!5348 (tail!9866 (tail!9866 lt!2071021)) (tail!9866 (tail!9866 lt!2071012))))))

(declare-fun b!5005691 () Bool)

(declare-fun e!3127924 () Bool)

(assert (=> b!5005691 (= e!3127924 (>= (size!38465 (tail!9866 lt!2071012)) (size!38465 (tail!9866 lt!2071021))))))

(declare-fun b!5005689 () Bool)

(declare-fun res!2135765 () Bool)

(assert (=> b!5005689 (=> (not res!2135765) (not e!3127925))))

(assert (=> b!5005689 (= res!2135765 (= (head!10733 (tail!9866 lt!2071021)) (head!10733 (tail!9866 lt!2071012))))))

(declare-fun d!1611164 () Bool)

(assert (=> d!1611164 e!3127924))

(declare-fun res!2135764 () Bool)

(assert (=> d!1611164 (=> res!2135764 e!3127924)))

(declare-fun lt!2071601 () Bool)

(assert (=> d!1611164 (= res!2135764 (not lt!2071601))))

(assert (=> d!1611164 (= lt!2071601 e!3127926)))

(declare-fun res!2135762 () Bool)

(assert (=> d!1611164 (=> res!2135762 e!3127926)))

(assert (=> d!1611164 (= res!2135762 ((_ is Nil!57865) (tail!9866 lt!2071021)))))

(assert (=> d!1611164 (= (isPrefix!5348 (tail!9866 lt!2071021) (tail!9866 lt!2071012)) lt!2071601)))

(assert (= (and d!1611164 (not res!2135762)) b!5005688))

(assert (= (and b!5005688 res!2135763) b!5005689))

(assert (= (and b!5005689 res!2135765) b!5005690))

(assert (= (and d!1611164 (not res!2135764)) b!5005691))

(assert (=> b!5005690 m!6038896))

(assert (=> b!5005690 m!6039478))

(assert (=> b!5005690 m!6038898))

(declare-fun m!6039910 () Bool)

(assert (=> b!5005690 m!6039910))

(assert (=> b!5005690 m!6039478))

(assert (=> b!5005690 m!6039910))

(declare-fun m!6039912 () Bool)

(assert (=> b!5005690 m!6039912))

(assert (=> b!5005691 m!6038898))

(declare-fun m!6039914 () Bool)

(assert (=> b!5005691 m!6039914))

(assert (=> b!5005691 m!6038896))

(declare-fun m!6039916 () Bool)

(assert (=> b!5005691 m!6039916))

(assert (=> b!5005689 m!6038896))

(assert (=> b!5005689 m!6039474))

(assert (=> b!5005689 m!6038898))

(declare-fun m!6039918 () Bool)

(assert (=> b!5005689 m!6039918))

(assert (=> b!5004805 d!1611164))

(assert (=> b!5004805 d!1610932))

(declare-fun d!1611166 () Bool)

(assert (=> d!1611166 (= (tail!9866 lt!2071012) (t!370335 lt!2071012))))

(assert (=> b!5004805 d!1611166))

(declare-fun d!1611168 () Bool)

(declare-fun lt!2071602 () Int)

(assert (=> d!1611168 (>= lt!2071602 0)))

(declare-fun e!3127927 () Int)

(assert (=> d!1611168 (= lt!2071602 e!3127927)))

(declare-fun c!854566 () Bool)

(assert (=> d!1611168 (= c!854566 ((_ is Nil!57865) lt!2071085))))

(assert (=> d!1611168 (= (size!38465 lt!2071085) lt!2071602)))

(declare-fun b!5005692 () Bool)

(assert (=> b!5005692 (= e!3127927 0)))

(declare-fun b!5005693 () Bool)

(assert (=> b!5005693 (= e!3127927 (+ 1 (size!38465 (t!370335 lt!2071085))))))

(assert (= (and d!1611168 c!854566) b!5005692))

(assert (= (and d!1611168 (not c!854566)) b!5005693))

(declare-fun m!6039920 () Bool)

(assert (=> b!5005693 m!6039920))

(assert (=> b!5004517 d!1611168))

(assert (=> b!5004517 d!1611080))

(declare-fun d!1611170 () Bool)

(declare-fun lt!2071603 () Int)

(assert (=> d!1611170 (>= lt!2071603 0)))

(declare-fun e!3127928 () Int)

(assert (=> d!1611170 (= lt!2071603 e!3127928)))

(declare-fun c!854567 () Bool)

(assert (=> d!1611170 (= c!854567 ((_ is Nil!57865) lt!2071011))))

(assert (=> d!1611170 (= (size!38465 lt!2071011) lt!2071603)))

(declare-fun b!5005694 () Bool)

(assert (=> b!5005694 (= e!3127928 0)))

(declare-fun b!5005695 () Bool)

(assert (=> b!5005695 (= e!3127928 (+ 1 (size!38465 (t!370335 lt!2071011))))))

(assert (= (and d!1611170 c!854567) b!5005694))

(assert (= (and d!1611170 (not c!854567)) b!5005695))

(declare-fun m!6039922 () Bool)

(assert (=> b!5005695 m!6039922))

(assert (=> b!5004517 d!1611170))

(declare-fun e!3127931 () List!57989)

(declare-fun b!5005696 () Bool)

(assert (=> b!5005696 (= e!3127931 (Cons!57865 (h!64313 (t!370335 (drop!2458 lt!2071019 lt!2071014))) (take!654 (t!370335 (t!370335 (drop!2458 lt!2071019 lt!2071014))) (- (- lt!2071018 1) 1))))))

(declare-fun b!5005697 () Bool)

(declare-fun e!3127930 () Bool)

(declare-fun lt!2071604 () List!57989)

(declare-fun e!3127932 () Int)

(assert (=> b!5005697 (= e!3127930 (= (size!38465 lt!2071604) e!3127932))))

(declare-fun c!854568 () Bool)

(assert (=> b!5005697 (= c!854568 (<= (- lt!2071018 1) 0))))

(declare-fun b!5005698 () Bool)

(assert (=> b!5005698 (= e!3127931 Nil!57865)))

(declare-fun b!5005699 () Bool)

(declare-fun e!3127929 () Int)

(assert (=> b!5005699 (= e!3127932 e!3127929)))

(declare-fun c!854569 () Bool)

(assert (=> b!5005699 (= c!854569 (>= (- lt!2071018 1) (size!38465 (t!370335 (drop!2458 lt!2071019 lt!2071014)))))))

(declare-fun d!1611172 () Bool)

(assert (=> d!1611172 e!3127930))

(declare-fun res!2135766 () Bool)

(assert (=> d!1611172 (=> (not res!2135766) (not e!3127930))))

(assert (=> d!1611172 (= res!2135766 (= ((_ map implies) (content!10251 lt!2071604) (content!10251 (t!370335 (drop!2458 lt!2071019 lt!2071014)))) ((as const (InoxSet C!27840)) true)))))

(assert (=> d!1611172 (= lt!2071604 e!3127931)))

(declare-fun c!854570 () Bool)

(assert (=> d!1611172 (= c!854570 (or ((_ is Nil!57865) (t!370335 (drop!2458 lt!2071019 lt!2071014))) (<= (- lt!2071018 1) 0)))))

(assert (=> d!1611172 (= (take!654 (t!370335 (drop!2458 lt!2071019 lt!2071014)) (- lt!2071018 1)) lt!2071604)))

(declare-fun b!5005700 () Bool)

(assert (=> b!5005700 (= e!3127929 (- lt!2071018 1))))

(declare-fun b!5005701 () Bool)

(assert (=> b!5005701 (= e!3127929 (size!38465 (t!370335 (drop!2458 lt!2071019 lt!2071014))))))

(declare-fun b!5005702 () Bool)

(assert (=> b!5005702 (= e!3127932 0)))

(assert (= (and d!1611172 c!854570) b!5005698))

(assert (= (and d!1611172 (not c!854570)) b!5005696))

(assert (= (and d!1611172 res!2135766) b!5005697))

(assert (= (and b!5005697 c!854568) b!5005702))

(assert (= (and b!5005697 (not c!854568)) b!5005699))

(assert (= (and b!5005699 c!854569) b!5005701))

(assert (= (and b!5005699 (not c!854569)) b!5005700))

(declare-fun m!6039924 () Bool)

(assert (=> b!5005697 m!6039924))

(assert (=> b!5005699 m!6039300))

(declare-fun m!6039926 () Bool)

(assert (=> b!5005696 m!6039926))

(assert (=> b!5005701 m!6039300))

(declare-fun m!6039928 () Bool)

(assert (=> d!1611172 m!6039928))

(assert (=> d!1611172 m!6039666))

(assert (=> b!5005009 d!1611172))

(assert (=> bm!349381 d!1610624))

(declare-fun d!1611174 () Bool)

(declare-fun lt!2071605 () Int)

(assert (=> d!1611174 (>= lt!2071605 0)))

(declare-fun e!3127933 () Int)

(assert (=> d!1611174 (= lt!2071605 e!3127933)))

(declare-fun c!854571 () Bool)

(assert (=> d!1611174 (= c!854571 ((_ is Nil!57865) (t!370335 lt!2071008)))))

(assert (=> d!1611174 (= (size!38465 (t!370335 lt!2071008)) lt!2071605)))

(declare-fun b!5005703 () Bool)

(assert (=> b!5005703 (= e!3127933 0)))

(declare-fun b!5005704 () Bool)

(assert (=> b!5005704 (= e!3127933 (+ 1 (size!38465 (t!370335 (t!370335 lt!2071008)))))))

(assert (= (and d!1611174 c!854571) b!5005703))

(assert (= (and d!1611174 (not c!854571)) b!5005704))

(declare-fun m!6039930 () Bool)

(assert (=> b!5005704 m!6039930))

(assert (=> b!5004820 d!1611174))

(assert (=> d!1610798 d!1610858))

(assert (=> d!1610798 d!1610828))

(declare-fun d!1611176 () Bool)

(declare-fun c!854572 () Bool)

(assert (=> d!1611176 (= c!854572 ((_ is Nil!57865) lt!2071275))))

(declare-fun e!3127934 () (InoxSet C!27840))

(assert (=> d!1611176 (= (content!10251 lt!2071275) e!3127934)))

(declare-fun b!5005705 () Bool)

(assert (=> b!5005705 (= e!3127934 ((as const (Array C!27840 Bool)) false))))

(declare-fun b!5005706 () Bool)

(assert (=> b!5005706 (= e!3127934 ((_ map or) (store ((as const (Array C!27840 Bool)) false) (h!64313 lt!2071275) true) (content!10251 (t!370335 lt!2071275))))))

(assert (= (and d!1611176 c!854572) b!5005705))

(assert (= (and d!1611176 (not c!854572)) b!5005706))

(declare-fun m!6039932 () Bool)

(assert (=> b!5005706 m!6039932))

(declare-fun m!6039934 () Bool)

(assert (=> b!5005706 m!6039934))

(assert (=> d!1610764 d!1611176))

(declare-fun d!1611178 () Bool)

(declare-fun c!854573 () Bool)

(assert (=> d!1611178 (= c!854573 ((_ is Nil!57865) (_1!34812 lt!2071026)))))

(declare-fun e!3127935 () (InoxSet C!27840))

(assert (=> d!1611178 (= (content!10251 (_1!34812 lt!2071026)) e!3127935)))

(declare-fun b!5005707 () Bool)

(assert (=> b!5005707 (= e!3127935 ((as const (Array C!27840 Bool)) false))))

(declare-fun b!5005708 () Bool)

(assert (=> b!5005708 (= e!3127935 ((_ map or) (store ((as const (Array C!27840 Bool)) false) (h!64313 (_1!34812 lt!2071026)) true) (content!10251 (t!370335 (_1!34812 lt!2071026)))))))

(assert (= (and d!1611178 c!854573) b!5005707))

(assert (= (and d!1611178 (not c!854573)) b!5005708))

(declare-fun m!6039936 () Bool)

(assert (=> b!5005708 m!6039936))

(assert (=> b!5005708 m!6039424))

(assert (=> d!1610764 d!1611178))

(declare-fun d!1611180 () Bool)

(declare-fun c!854574 () Bool)

(assert (=> d!1611180 (= c!854574 ((_ is Nil!57865) (_2!34812 lt!2071026)))))

(declare-fun e!3127936 () (InoxSet C!27840))

(assert (=> d!1611180 (= (content!10251 (_2!34812 lt!2071026)) e!3127936)))

(declare-fun b!5005709 () Bool)

(assert (=> b!5005709 (= e!3127936 ((as const (Array C!27840 Bool)) false))))

(declare-fun b!5005710 () Bool)

(assert (=> b!5005710 (= e!3127936 ((_ map or) (store ((as const (Array C!27840 Bool)) false) (h!64313 (_2!34812 lt!2071026)) true) (content!10251 (t!370335 (_2!34812 lt!2071026)))))))

(assert (= (and d!1611180 c!854574) b!5005709))

(assert (= (and d!1611180 (not c!854574)) b!5005710))

(declare-fun m!6039938 () Bool)

(assert (=> b!5005710 m!6039938))

(declare-fun m!6039940 () Bool)

(assert (=> b!5005710 m!6039940))

(assert (=> d!1610764 d!1611180))

(assert (=> b!5005014 d!1610900))

(declare-fun d!1611182 () Bool)

(declare-fun lt!2071606 () Int)

(assert (=> d!1611182 (>= lt!2071606 0)))

(declare-fun e!3127937 () Int)

(assert (=> d!1611182 (= lt!2071606 e!3127937)))

(declare-fun c!854575 () Bool)

(assert (=> d!1611182 (= c!854575 ((_ is Nil!57865) lt!2071262))))

(assert (=> d!1611182 (= (size!38465 lt!2071262) lt!2071606)))

(declare-fun b!5005711 () Bool)

(assert (=> b!5005711 (= e!3127937 0)))

(declare-fun b!5005712 () Bool)

(assert (=> b!5005712 (= e!3127937 (+ 1 (size!38465 (t!370335 lt!2071262))))))

(assert (= (and d!1611182 c!854575) b!5005711))

(assert (= (and d!1611182 (not c!854575)) b!5005712))

(declare-fun m!6039942 () Bool)

(assert (=> b!5005712 m!6039942))

(assert (=> b!5004752 d!1611182))

(declare-fun d!1611184 () Bool)

(declare-fun c!854576 () Bool)

(assert (=> d!1611184 (= c!854576 ((_ is Node!15314) (left!42305 (c!854185 input!5597))))))

(declare-fun e!3127938 () Bool)

(assert (=> d!1611184 (= (inv!76029 (left!42305 (c!854185 input!5597))) e!3127938)))

(declare-fun b!5005713 () Bool)

(assert (=> b!5005713 (= e!3127938 (inv!76034 (left!42305 (c!854185 input!5597))))))

(declare-fun b!5005714 () Bool)

(declare-fun e!3127939 () Bool)

(assert (=> b!5005714 (= e!3127938 e!3127939)))

(declare-fun res!2135767 () Bool)

(assert (=> b!5005714 (= res!2135767 (not ((_ is Leaf!25420) (left!42305 (c!854185 input!5597)))))))

(assert (=> b!5005714 (=> res!2135767 e!3127939)))

(declare-fun b!5005715 () Bool)

(assert (=> b!5005715 (= e!3127939 (inv!76035 (left!42305 (c!854185 input!5597))))))

(assert (= (and d!1611184 c!854576) b!5005713))

(assert (= (and d!1611184 (not c!854576)) b!5005714))

(assert (= (and b!5005714 (not res!2135767)) b!5005715))

(declare-fun m!6039944 () Bool)

(assert (=> b!5005713 m!6039944))

(declare-fun m!6039946 () Bool)

(assert (=> b!5005715 m!6039946))

(assert (=> b!5005096 d!1611184))

(declare-fun d!1611186 () Bool)

(declare-fun c!854577 () Bool)

(assert (=> d!1611186 (= c!854577 ((_ is Node!15314) (right!42635 (c!854185 input!5597))))))

(declare-fun e!3127940 () Bool)

(assert (=> d!1611186 (= (inv!76029 (right!42635 (c!854185 input!5597))) e!3127940)))

(declare-fun b!5005716 () Bool)

(assert (=> b!5005716 (= e!3127940 (inv!76034 (right!42635 (c!854185 input!5597))))))

(declare-fun b!5005717 () Bool)

(declare-fun e!3127941 () Bool)

(assert (=> b!5005717 (= e!3127940 e!3127941)))

(declare-fun res!2135768 () Bool)

(assert (=> b!5005717 (= res!2135768 (not ((_ is Leaf!25420) (right!42635 (c!854185 input!5597)))))))

(assert (=> b!5005717 (=> res!2135768 e!3127941)))

(declare-fun b!5005718 () Bool)

(assert (=> b!5005718 (= e!3127941 (inv!76035 (right!42635 (c!854185 input!5597))))))

(assert (= (and d!1611186 c!854577) b!5005716))

(assert (= (and d!1611186 (not c!854577)) b!5005717))

(assert (= (and b!5005717 (not res!2135768)) b!5005718))

(declare-fun m!6039948 () Bool)

(assert (=> b!5005716 m!6039948))

(declare-fun m!6039950 () Bool)

(assert (=> b!5005718 m!6039950))

(assert (=> b!5005096 d!1611186))

(declare-fun b!5005719 () Bool)

(declare-fun e!3127948 () Bool)

(declare-fun e!3127947 () Bool)

(assert (=> b!5005719 (= e!3127948 e!3127947)))

(declare-fun res!2135771 () Bool)

(assert (=> b!5005719 (=> res!2135771 e!3127947)))

(declare-fun call!349453 () Bool)

(assert (=> b!5005719 (= res!2135771 call!349453)))

(declare-fun b!5005720 () Bool)

(declare-fun e!3127942 () Bool)

(declare-fun e!3127946 () Bool)

(assert (=> b!5005720 (= e!3127942 e!3127946)))

(declare-fun c!854580 () Bool)

(assert (=> b!5005720 (= c!854580 ((_ is EmptyLang!13795) (derivativeStep!3979 r!12727 (head!10733 (_1!34812 lt!2071024)))))))

(declare-fun b!5005721 () Bool)

(declare-fun e!3127945 () Bool)

(assert (=> b!5005721 (= e!3127945 (= (head!10733 (tail!9866 (_1!34812 lt!2071024))) (c!854186 (derivativeStep!3979 r!12727 (head!10733 (_1!34812 lt!2071024))))))))

(declare-fun b!5005722 () Bool)

(declare-fun res!2135770 () Bool)

(assert (=> b!5005722 (=> (not res!2135770) (not e!3127945))))

(assert (=> b!5005722 (= res!2135770 (not call!349453))))

(declare-fun d!1611188 () Bool)

(assert (=> d!1611188 e!3127942))

(declare-fun c!854579 () Bool)

(assert (=> d!1611188 (= c!854579 ((_ is EmptyExpr!13795) (derivativeStep!3979 r!12727 (head!10733 (_1!34812 lt!2071024)))))))

(declare-fun lt!2071607 () Bool)

(declare-fun e!3127943 () Bool)

(assert (=> d!1611188 (= lt!2071607 e!3127943)))

(declare-fun c!854578 () Bool)

(assert (=> d!1611188 (= c!854578 (isEmpty!31333 (tail!9866 (_1!34812 lt!2071024))))))

(assert (=> d!1611188 (validRegex!6092 (derivativeStep!3979 r!12727 (head!10733 (_1!34812 lt!2071024))))))

(assert (=> d!1611188 (= (matchR!6759 (derivativeStep!3979 r!12727 (head!10733 (_1!34812 lt!2071024))) (tail!9866 (_1!34812 lt!2071024))) lt!2071607)))

(declare-fun b!5005723 () Bool)

(assert (=> b!5005723 (= e!3127942 (= lt!2071607 call!349453))))

(declare-fun bm!349448 () Bool)

(assert (=> bm!349448 (= call!349453 (isEmpty!31333 (tail!9866 (_1!34812 lt!2071024))))))

(declare-fun b!5005724 () Bool)

(declare-fun res!2135776 () Bool)

(assert (=> b!5005724 (=> (not res!2135776) (not e!3127945))))

(assert (=> b!5005724 (= res!2135776 (isEmpty!31333 (tail!9866 (tail!9866 (_1!34812 lt!2071024)))))))

(declare-fun b!5005725 () Bool)

(declare-fun res!2135769 () Bool)

(declare-fun e!3127944 () Bool)

(assert (=> b!5005725 (=> res!2135769 e!3127944)))

(assert (=> b!5005725 (= res!2135769 (not ((_ is ElementMatch!13795) (derivativeStep!3979 r!12727 (head!10733 (_1!34812 lt!2071024))))))))

(assert (=> b!5005725 (= e!3127946 e!3127944)))

(declare-fun b!5005726 () Bool)

(assert (=> b!5005726 (= e!3127943 (matchR!6759 (derivativeStep!3979 (derivativeStep!3979 r!12727 (head!10733 (_1!34812 lt!2071024))) (head!10733 (tail!9866 (_1!34812 lt!2071024)))) (tail!9866 (tail!9866 (_1!34812 lt!2071024)))))))

(declare-fun b!5005727 () Bool)

(declare-fun res!2135772 () Bool)

(assert (=> b!5005727 (=> res!2135772 e!3127944)))

(assert (=> b!5005727 (= res!2135772 e!3127945)))

(declare-fun res!2135775 () Bool)

(assert (=> b!5005727 (=> (not res!2135775) (not e!3127945))))

(assert (=> b!5005727 (= res!2135775 lt!2071607)))

(declare-fun b!5005728 () Bool)

(assert (=> b!5005728 (= e!3127946 (not lt!2071607))))

(declare-fun b!5005729 () Bool)

(assert (=> b!5005729 (= e!3127944 e!3127948)))

(declare-fun res!2135773 () Bool)

(assert (=> b!5005729 (=> (not res!2135773) (not e!3127948))))

(assert (=> b!5005729 (= res!2135773 (not lt!2071607))))

(declare-fun b!5005730 () Bool)

(assert (=> b!5005730 (= e!3127947 (not (= (head!10733 (tail!9866 (_1!34812 lt!2071024))) (c!854186 (derivativeStep!3979 r!12727 (head!10733 (_1!34812 lt!2071024)))))))))

(declare-fun b!5005731 () Bool)

(assert (=> b!5005731 (= e!3127943 (nullable!4689 (derivativeStep!3979 r!12727 (head!10733 (_1!34812 lt!2071024)))))))

(declare-fun b!5005732 () Bool)

(declare-fun res!2135774 () Bool)

(assert (=> b!5005732 (=> res!2135774 e!3127947)))

(assert (=> b!5005732 (= res!2135774 (not (isEmpty!31333 (tail!9866 (tail!9866 (_1!34812 lt!2071024))))))))

(assert (= (and d!1611188 c!854578) b!5005731))

(assert (= (and d!1611188 (not c!854578)) b!5005726))

(assert (= (and d!1611188 c!854579) b!5005723))

(assert (= (and d!1611188 (not c!854579)) b!5005720))

(assert (= (and b!5005720 c!854580) b!5005728))

(assert (= (and b!5005720 (not c!854580)) b!5005725))

(assert (= (and b!5005725 (not res!2135769)) b!5005727))

(assert (= (and b!5005727 res!2135775) b!5005722))

(assert (= (and b!5005722 res!2135770) b!5005724))

(assert (= (and b!5005724 res!2135776) b!5005721))

(assert (= (and b!5005727 (not res!2135772)) b!5005729))

(assert (= (and b!5005729 res!2135773) b!5005719))

(assert (= (and b!5005719 (not res!2135771)) b!5005732))

(assert (= (and b!5005732 (not res!2135774)) b!5005730))

(assert (= (or b!5005723 b!5005719 b!5005722) bm!349448))

(assert (=> b!5005732 m!6039098))

(declare-fun m!6039952 () Bool)

(assert (=> b!5005732 m!6039952))

(assert (=> b!5005732 m!6039952))

(declare-fun m!6039954 () Bool)

(assert (=> b!5005732 m!6039954))

(assert (=> b!5005721 m!6039098))

(declare-fun m!6039956 () Bool)

(assert (=> b!5005721 m!6039956))

(assert (=> b!5005730 m!6039098))

(assert (=> b!5005730 m!6039956))

(assert (=> b!5005726 m!6039098))

(assert (=> b!5005726 m!6039956))

(assert (=> b!5005726 m!6039104))

(assert (=> b!5005726 m!6039956))

(declare-fun m!6039958 () Bool)

(assert (=> b!5005726 m!6039958))

(assert (=> b!5005726 m!6039098))

(assert (=> b!5005726 m!6039952))

(assert (=> b!5005726 m!6039958))

(assert (=> b!5005726 m!6039952))

(declare-fun m!6039960 () Bool)

(assert (=> b!5005726 m!6039960))

(assert (=> bm!349448 m!6039098))

(assert (=> bm!349448 m!6039100))

(assert (=> b!5005731 m!6039104))

(declare-fun m!6039962 () Bool)

(assert (=> b!5005731 m!6039962))

(assert (=> b!5005724 m!6039098))

(assert (=> b!5005724 m!6039952))

(assert (=> b!5005724 m!6039952))

(assert (=> b!5005724 m!6039954))

(assert (=> d!1611188 m!6039098))

(assert (=> d!1611188 m!6039100))

(assert (=> d!1611188 m!6039104))

(declare-fun m!6039964 () Bool)

(assert (=> d!1611188 m!6039964))

(assert (=> b!5005023 d!1611188))

(declare-fun b!5005733 () Bool)

(declare-fun e!3127953 () Regex!13795)

(declare-fun e!3127950 () Regex!13795)

(assert (=> b!5005733 (= e!3127953 e!3127950)))

(declare-fun c!854583 () Bool)

(assert (=> b!5005733 (= c!854583 ((_ is Star!13795) r!12727))))

(declare-fun b!5005734 () Bool)

(declare-fun e!3127952 () Regex!13795)

(declare-fun e!3127951 () Regex!13795)

(assert (=> b!5005734 (= e!3127952 e!3127951)))

(declare-fun c!854581 () Bool)

(assert (=> b!5005734 (= c!854581 ((_ is ElementMatch!13795) r!12727))))

(declare-fun b!5005735 () Bool)

(declare-fun call!349456 () Regex!13795)

(assert (=> b!5005735 (= e!3127950 (Concat!22588 call!349456 r!12727))))

(declare-fun bm!349449 () Bool)

(declare-fun call!349455 () Regex!13795)

(assert (=> bm!349449 (= call!349455 call!349456)))

(declare-fun b!5005736 () Bool)

(declare-fun e!3127949 () Regex!13795)

(assert (=> b!5005736 (= e!3127949 (Union!13795 (Concat!22588 call!349455 (regTwo!28102 r!12727)) EmptyLang!13795))))

(declare-fun b!5005737 () Bool)

(assert (=> b!5005737 (= e!3127952 EmptyLang!13795)))

(declare-fun b!5005738 () Bool)

(declare-fun c!854585 () Bool)

(assert (=> b!5005738 (= c!854585 ((_ is Union!13795) r!12727))))

(assert (=> b!5005738 (= e!3127951 e!3127953)))

(declare-fun call!349457 () Regex!13795)

(declare-fun bm!349450 () Bool)

(assert (=> bm!349450 (= call!349457 (derivativeStep!3979 (ite c!854585 (regTwo!28103 r!12727) (regOne!28102 r!12727)) (head!10733 (_1!34812 lt!2071024))))))

(declare-fun d!1611192 () Bool)

(declare-fun lt!2071608 () Regex!13795)

(assert (=> d!1611192 (validRegex!6092 lt!2071608)))

(assert (=> d!1611192 (= lt!2071608 e!3127952)))

(declare-fun c!854582 () Bool)

(assert (=> d!1611192 (= c!854582 (or ((_ is EmptyExpr!13795) r!12727) ((_ is EmptyLang!13795) r!12727)))))

(assert (=> d!1611192 (validRegex!6092 r!12727)))

(assert (=> d!1611192 (= (derivativeStep!3979 r!12727 (head!10733 (_1!34812 lt!2071024))) lt!2071608)))

(declare-fun b!5005739 () Bool)

(assert (=> b!5005739 (= e!3127951 (ite (= (head!10733 (_1!34812 lt!2071024)) (c!854186 r!12727)) EmptyExpr!13795 EmptyLang!13795))))

(declare-fun b!5005740 () Bool)

(assert (=> b!5005740 (= e!3127949 (Union!13795 (Concat!22588 call!349457 (regTwo!28102 r!12727)) call!349455))))

(declare-fun bm!349451 () Bool)

(declare-fun c!854584 () Bool)

(declare-fun call!349454 () Regex!13795)

(assert (=> bm!349451 (= call!349454 (derivativeStep!3979 (ite c!854585 (regOne!28103 r!12727) (ite c!854583 (reg!14124 r!12727) (ite c!854584 (regTwo!28102 r!12727) (regOne!28102 r!12727)))) (head!10733 (_1!34812 lt!2071024))))))

(declare-fun b!5005741 () Bool)

(assert (=> b!5005741 (= c!854584 (nullable!4689 (regOne!28102 r!12727)))))

(assert (=> b!5005741 (= e!3127950 e!3127949)))

(declare-fun bm!349452 () Bool)

(assert (=> bm!349452 (= call!349456 call!349454)))

(declare-fun b!5005742 () Bool)

(assert (=> b!5005742 (= e!3127953 (Union!13795 call!349454 call!349457))))

(assert (= (and d!1611192 c!854582) b!5005737))

(assert (= (and d!1611192 (not c!854582)) b!5005734))

(assert (= (and b!5005734 c!854581) b!5005739))

(assert (= (and b!5005734 (not c!854581)) b!5005738))

(assert (= (and b!5005738 c!854585) b!5005742))

(assert (= (and b!5005738 (not c!854585)) b!5005733))

(assert (= (and b!5005733 c!854583) b!5005735))

(assert (= (and b!5005733 (not c!854583)) b!5005741))

(assert (= (and b!5005741 c!854584) b!5005740))

(assert (= (and b!5005741 (not c!854584)) b!5005736))

(assert (= (or b!5005740 b!5005736) bm!349449))

(assert (= (or b!5005735 bm!349449) bm!349452))

(assert (= (or b!5005742 bm!349452) bm!349451))

(assert (= (or b!5005742 b!5005740) bm!349450))

(assert (=> bm!349450 m!6039102))

(declare-fun m!6039966 () Bool)

(assert (=> bm!349450 m!6039966))

(declare-fun m!6039968 () Bool)

(assert (=> d!1611192 m!6039968))

(assert (=> d!1611192 m!6038386))

(assert (=> bm!349451 m!6039102))

(declare-fun m!6039970 () Bool)

(assert (=> bm!349451 m!6039970))

(assert (=> b!5005741 m!6039330))

(assert (=> b!5005023 d!1611192))

(assert (=> b!5005023 d!1610878))

(assert (=> b!5005023 d!1610898))

(assert (=> b!5005046 d!1611070))

(assert (=> b!5005046 d!1610836))

(assert (=> b!5004756 d!1611038))

(assert (=> b!5005027 d!1610878))

(declare-fun b!5005743 () Bool)

(declare-fun e!3127956 () Bool)

(declare-fun e!3127955 () Bool)

(assert (=> b!5005743 (= e!3127956 e!3127955)))

(declare-fun res!2135778 () Bool)

(assert (=> b!5005743 (=> (not res!2135778) (not e!3127955))))

(assert (=> b!5005743 (= res!2135778 (not ((_ is Nil!57865) (tail!9866 lt!2071019))))))

(declare-fun b!5005745 () Bool)

(assert (=> b!5005745 (= e!3127955 (isPrefix!5348 (tail!9866 (tail!9866 (take!654 lt!2071019 lt!2071014))) (tail!9866 (tail!9866 lt!2071019))))))

(declare-fun b!5005746 () Bool)

(declare-fun e!3127954 () Bool)

(assert (=> b!5005746 (= e!3127954 (>= (size!38465 (tail!9866 lt!2071019)) (size!38465 (tail!9866 (take!654 lt!2071019 lt!2071014)))))))

(declare-fun b!5005744 () Bool)

(declare-fun res!2135780 () Bool)

(assert (=> b!5005744 (=> (not res!2135780) (not e!3127955))))

(assert (=> b!5005744 (= res!2135780 (= (head!10733 (tail!9866 (take!654 lt!2071019 lt!2071014))) (head!10733 (tail!9866 lt!2071019))))))

(declare-fun d!1611194 () Bool)

(assert (=> d!1611194 e!3127954))

(declare-fun res!2135779 () Bool)

(assert (=> d!1611194 (=> res!2135779 e!3127954)))

(declare-fun lt!2071609 () Bool)

(assert (=> d!1611194 (= res!2135779 (not lt!2071609))))

(assert (=> d!1611194 (= lt!2071609 e!3127956)))

(declare-fun res!2135777 () Bool)

(assert (=> d!1611194 (=> res!2135777 e!3127956)))

(assert (=> d!1611194 (= res!2135777 ((_ is Nil!57865) (tail!9866 (take!654 lt!2071019 lt!2071014))))))

(assert (=> d!1611194 (= (isPrefix!5348 (tail!9866 (take!654 lt!2071019 lt!2071014)) (tail!9866 lt!2071019)) lt!2071609)))

(assert (= (and d!1611194 (not res!2135777)) b!5005743))

(assert (= (and b!5005743 res!2135778) b!5005744))

(assert (= (and b!5005744 res!2135780) b!5005745))

(assert (= (and d!1611194 (not res!2135779)) b!5005746))

(assert (=> b!5005745 m!6038942))

(declare-fun m!6039972 () Bool)

(assert (=> b!5005745 m!6039972))

(assert (=> b!5005745 m!6038944))

(declare-fun m!6039974 () Bool)

(assert (=> b!5005745 m!6039974))

(assert (=> b!5005745 m!6039972))

(assert (=> b!5005745 m!6039974))

(declare-fun m!6039976 () Bool)

(assert (=> b!5005745 m!6039976))

(assert (=> b!5005746 m!6038944))

(declare-fun m!6039978 () Bool)

(assert (=> b!5005746 m!6039978))

(assert (=> b!5005746 m!6038942))

(declare-fun m!6039980 () Bool)

(assert (=> b!5005746 m!6039980))

(assert (=> b!5005744 m!6038942))

(declare-fun m!6039982 () Bool)

(assert (=> b!5005744 m!6039982))

(assert (=> b!5005744 m!6038944))

(declare-fun m!6039984 () Bool)

(assert (=> b!5005744 m!6039984))

(assert (=> b!5004830 d!1611194))

(declare-fun d!1611198 () Bool)

(assert (=> d!1611198 (= (tail!9866 (take!654 lt!2071019 lt!2071014)) (t!370335 (take!654 lt!2071019 lt!2071014)))))

(assert (=> b!5004830 d!1611198))

(declare-fun d!1611200 () Bool)

(assert (=> d!1611200 (= (tail!9866 lt!2071019) (t!370335 lt!2071019))))

(assert (=> b!5004830 d!1611200))

(declare-fun d!1611202 () Bool)

(declare-fun c!854586 () Bool)

(assert (=> d!1611202 (= c!854586 ((_ is Nil!57865) lt!2071411))))

(declare-fun e!3127960 () (InoxSet C!27840))

(assert (=> d!1611202 (= (content!10251 lt!2071411) e!3127960)))

(declare-fun b!5005751 () Bool)

(assert (=> b!5005751 (= e!3127960 ((as const (Array C!27840 Bool)) false))))

(declare-fun b!5005752 () Bool)

(assert (=> b!5005752 (= e!3127960 ((_ map or) (store ((as const (Array C!27840 Bool)) false) (h!64313 lt!2071411) true) (content!10251 (t!370335 lt!2071411))))))

(assert (= (and d!1611202 c!854586) b!5005751))

(assert (= (and d!1611202 (not c!854586)) b!5005752))

(declare-fun m!6039986 () Bool)

(assert (=> b!5005752 m!6039986))

(declare-fun m!6039988 () Bool)

(assert (=> b!5005752 m!6039988))

(assert (=> d!1610824 d!1611202))

(declare-fun d!1611204 () Bool)

(declare-fun c!854587 () Bool)

(assert (=> d!1611204 (= c!854587 ((_ is Nil!57865) lt!2071008))))

(declare-fun e!3127961 () (InoxSet C!27840))

(assert (=> d!1611204 (= (content!10251 lt!2071008) e!3127961)))

(declare-fun b!5005753 () Bool)

(assert (=> b!5005753 (= e!3127961 ((as const (Array C!27840 Bool)) false))))

(declare-fun b!5005754 () Bool)

(assert (=> b!5005754 (= e!3127961 ((_ map or) (store ((as const (Array C!27840 Bool)) false) (h!64313 lt!2071008) true) (content!10251 (t!370335 lt!2071008))))))

(assert (= (and d!1611204 c!854587) b!5005753))

(assert (= (and d!1611204 (not c!854587)) b!5005754))

(declare-fun m!6039992 () Bool)

(assert (=> b!5005754 m!6039992))

(assert (=> b!5005754 m!6039506))

(assert (=> d!1610824 d!1611204))

(declare-fun d!1611206 () Bool)

(declare-fun lt!2071611 () Int)

(assert (=> d!1611206 (>= lt!2071611 0)))

(declare-fun e!3127962 () Int)

(assert (=> d!1611206 (= lt!2071611 e!3127962)))

(declare-fun c!854588 () Bool)

(assert (=> d!1611206 (= c!854588 ((_ is Nil!57865) lt!2071275))))

(assert (=> d!1611206 (= (size!38465 lt!2071275) lt!2071611)))

(declare-fun b!5005755 () Bool)

(assert (=> b!5005755 (= e!3127962 0)))

(declare-fun b!5005756 () Bool)

(assert (=> b!5005756 (= e!3127962 (+ 1 (size!38465 (t!370335 lt!2071275))))))

(assert (= (and d!1611206 c!854588) b!5005755))

(assert (= (and d!1611206 (not c!854588)) b!5005756))

(declare-fun m!6039998 () Bool)

(assert (=> b!5005756 m!6039998))

(assert (=> b!5004793 d!1611206))

(assert (=> b!5004793 d!1610804))

(declare-fun d!1611208 () Bool)

(declare-fun lt!2071612 () Int)

(assert (=> d!1611208 (>= lt!2071612 0)))

(declare-fun e!3127963 () Int)

(assert (=> d!1611208 (= lt!2071612 e!3127963)))

(declare-fun c!854589 () Bool)

(assert (=> d!1611208 (= c!854589 ((_ is Nil!57865) (_2!34812 lt!2071026)))))

(assert (=> d!1611208 (= (size!38465 (_2!34812 lt!2071026)) lt!2071612)))

(declare-fun b!5005757 () Bool)

(assert (=> b!5005757 (= e!3127963 0)))

(declare-fun b!5005758 () Bool)

(assert (=> b!5005758 (= e!3127963 (+ 1 (size!38465 (t!370335 (_2!34812 lt!2071026)))))))

(assert (= (and d!1611208 c!854589) b!5005757))

(assert (= (and d!1611208 (not c!854589)) b!5005758))

(declare-fun m!6040002 () Bool)

(assert (=> b!5005758 m!6040002))

(assert (=> b!5004793 d!1611208))

(declare-fun d!1611212 () Bool)

(assert (=> d!1611212 (= lt!2071008 Nil!57865)))

(declare-fun lt!2071613 () Unit!149035)

(assert (=> d!1611212 (= lt!2071613 (choose!37021 lt!2071008 Nil!57865 lt!2071008))))

(assert (=> d!1611212 (isPrefix!5348 lt!2071008 lt!2071008)))

(assert (=> d!1611212 (= (lemmaIsPrefixSameLengthThenSameList!1275 lt!2071008 Nil!57865 lt!2071008) lt!2071613)))

(declare-fun bs!1186011 () Bool)

(assert (= bs!1186011 d!1611212))

(declare-fun m!6040004 () Bool)

(assert (=> bs!1186011 m!6040004))

(assert (=> bs!1186011 m!6038992))

(assert (=> bm!349375 d!1611212))

(assert (=> b!5004854 d!1610654))

(declare-fun d!1611214 () Bool)

(assert (=> d!1611214 (= (inv!76036 (xs!18640 (c!854185 totalInput!1012))) (<= (size!38465 (innerList!15402 (xs!18640 (c!854185 totalInput!1012)))) 2147483647))))

(declare-fun bs!1186012 () Bool)

(assert (= bs!1186012 d!1611214))

(declare-fun m!6040006 () Bool)

(assert (=> bs!1186012 m!6040006))

(assert (=> b!5005094 d!1611214))

(declare-fun b!5005760 () Bool)

(declare-fun e!3127964 () Bool)

(declare-fun tp!1403621 () Bool)

(declare-fun tp!1403622 () Bool)

(assert (=> b!5005760 (= e!3127964 (and tp!1403621 tp!1403622))))

(declare-fun b!5005761 () Bool)

(declare-fun tp!1403624 () Bool)

(assert (=> b!5005761 (= e!3127964 tp!1403624)))

(declare-fun b!5005762 () Bool)

(declare-fun tp!1403623 () Bool)

(declare-fun tp!1403625 () Bool)

(assert (=> b!5005762 (= e!3127964 (and tp!1403623 tp!1403625))))

(assert (=> b!5005131 (= tp!1403604 e!3127964)))

(declare-fun b!5005759 () Bool)

(assert (=> b!5005759 (= e!3127964 tp_is_empty!36587)))

(assert (= (and b!5005131 ((_ is ElementMatch!13795) (regOne!28102 (regTwo!28103 r!12727)))) b!5005759))

(assert (= (and b!5005131 ((_ is Concat!22588) (regOne!28102 (regTwo!28103 r!12727)))) b!5005760))

(assert (= (and b!5005131 ((_ is Star!13795) (regOne!28102 (regTwo!28103 r!12727)))) b!5005761))

(assert (= (and b!5005131 ((_ is Union!13795) (regOne!28102 (regTwo!28103 r!12727)))) b!5005762))

(declare-fun b!5005764 () Bool)

(declare-fun e!3127965 () Bool)

(declare-fun tp!1403626 () Bool)

(declare-fun tp!1403627 () Bool)

(assert (=> b!5005764 (= e!3127965 (and tp!1403626 tp!1403627))))

(declare-fun b!5005765 () Bool)

(declare-fun tp!1403629 () Bool)

(assert (=> b!5005765 (= e!3127965 tp!1403629)))

(declare-fun b!5005766 () Bool)

(declare-fun tp!1403628 () Bool)

(declare-fun tp!1403630 () Bool)

(assert (=> b!5005766 (= e!3127965 (and tp!1403628 tp!1403630))))

(assert (=> b!5005131 (= tp!1403605 e!3127965)))

(declare-fun b!5005763 () Bool)

(assert (=> b!5005763 (= e!3127965 tp_is_empty!36587)))

(assert (= (and b!5005131 ((_ is ElementMatch!13795) (regTwo!28102 (regTwo!28103 r!12727)))) b!5005763))

(assert (= (and b!5005131 ((_ is Concat!22588) (regTwo!28102 (regTwo!28103 r!12727)))) b!5005764))

(assert (= (and b!5005131 ((_ is Star!13795) (regTwo!28102 (regTwo!28103 r!12727)))) b!5005765))

(assert (= (and b!5005131 ((_ is Union!13795) (regTwo!28102 (regTwo!28103 r!12727)))) b!5005766))

(declare-fun b!5005768 () Bool)

(declare-fun e!3127966 () Bool)

(declare-fun tp!1403631 () Bool)

(declare-fun tp!1403632 () Bool)

(assert (=> b!5005768 (= e!3127966 (and tp!1403631 tp!1403632))))

(declare-fun b!5005769 () Bool)

(declare-fun tp!1403634 () Bool)

(assert (=> b!5005769 (= e!3127966 tp!1403634)))

(declare-fun b!5005770 () Bool)

(declare-fun tp!1403633 () Bool)

(declare-fun tp!1403635 () Bool)

(assert (=> b!5005770 (= e!3127966 (and tp!1403633 tp!1403635))))

(assert (=> b!5005132 (= tp!1403607 e!3127966)))

(declare-fun b!5005767 () Bool)

(assert (=> b!5005767 (= e!3127966 tp_is_empty!36587)))

(assert (= (and b!5005132 ((_ is ElementMatch!13795) (reg!14124 (regTwo!28103 r!12727)))) b!5005767))

(assert (= (and b!5005132 ((_ is Concat!22588) (reg!14124 (regTwo!28103 r!12727)))) b!5005768))

(assert (= (and b!5005132 ((_ is Star!13795) (reg!14124 (regTwo!28103 r!12727)))) b!5005769))

(assert (= (and b!5005132 ((_ is Union!13795) (reg!14124 (regTwo!28103 r!12727)))) b!5005770))

(declare-fun b!5005772 () Bool)

(declare-fun e!3127967 () Bool)

(declare-fun tp!1403636 () Bool)

(declare-fun tp!1403637 () Bool)

(assert (=> b!5005772 (= e!3127967 (and tp!1403636 tp!1403637))))

(declare-fun b!5005773 () Bool)

(declare-fun tp!1403639 () Bool)

(assert (=> b!5005773 (= e!3127967 tp!1403639)))

(declare-fun b!5005774 () Bool)

(declare-fun tp!1403638 () Bool)

(declare-fun tp!1403640 () Bool)

(assert (=> b!5005774 (= e!3127967 (and tp!1403638 tp!1403640))))

(assert (=> b!5005138 (= tp!1403613 e!3127967)))

(declare-fun b!5005771 () Bool)

(assert (=> b!5005771 (= e!3127967 tp_is_empty!36587)))

(assert (= (and b!5005138 ((_ is ElementMatch!13795) (h!64314 (exprs!3720 setElem!28412)))) b!5005771))

(assert (= (and b!5005138 ((_ is Concat!22588) (h!64314 (exprs!3720 setElem!28412)))) b!5005772))

(assert (= (and b!5005138 ((_ is Star!13795) (h!64314 (exprs!3720 setElem!28412)))) b!5005773))

(assert (= (and b!5005138 ((_ is Union!13795) (h!64314 (exprs!3720 setElem!28412)))) b!5005774))

(declare-fun b!5005775 () Bool)

(declare-fun e!3127968 () Bool)

(declare-fun tp!1403641 () Bool)

(declare-fun tp!1403642 () Bool)

(assert (=> b!5005775 (= e!3127968 (and tp!1403641 tp!1403642))))

(assert (=> b!5005138 (= tp!1403614 e!3127968)))

(assert (= (and b!5005138 ((_ is Cons!57866) (t!370336 (exprs!3720 setElem!28412)))) b!5005775))

(declare-fun b!5005776 () Bool)

(declare-fun e!3127969 () Bool)

(declare-fun tp!1403643 () Bool)

(declare-fun tp!1403644 () Bool)

(assert (=> b!5005776 (= e!3127969 (and tp!1403643 tp!1403644))))

(assert (=> b!5005117 (= tp!1403588 e!3127969)))

(assert (= (and b!5005117 ((_ is Cons!57866) (exprs!3720 setElem!28418))) b!5005776))

(declare-fun b!5005778 () Bool)

(declare-fun e!3127970 () Bool)

(declare-fun tp!1403645 () Bool)

(declare-fun tp!1403646 () Bool)

(assert (=> b!5005778 (= e!3127970 (and tp!1403645 tp!1403646))))

(declare-fun b!5005779 () Bool)

(declare-fun tp!1403648 () Bool)

(assert (=> b!5005779 (= e!3127970 tp!1403648)))

(declare-fun b!5005780 () Bool)

(declare-fun tp!1403647 () Bool)

(declare-fun tp!1403649 () Bool)

(assert (=> b!5005780 (= e!3127970 (and tp!1403647 tp!1403649))))

(assert (=> b!5005125 (= tp!1403596 e!3127970)))

(declare-fun b!5005777 () Bool)

(assert (=> b!5005777 (= e!3127970 tp_is_empty!36587)))

(assert (= (and b!5005125 ((_ is ElementMatch!13795) (regOne!28103 (regTwo!28102 r!12727)))) b!5005777))

(assert (= (and b!5005125 ((_ is Concat!22588) (regOne!28103 (regTwo!28102 r!12727)))) b!5005778))

(assert (= (and b!5005125 ((_ is Star!13795) (regOne!28103 (regTwo!28102 r!12727)))) b!5005779))

(assert (= (and b!5005125 ((_ is Union!13795) (regOne!28103 (regTwo!28102 r!12727)))) b!5005780))

(declare-fun b!5005782 () Bool)

(declare-fun e!3127971 () Bool)

(declare-fun tp!1403650 () Bool)

(declare-fun tp!1403651 () Bool)

(assert (=> b!5005782 (= e!3127971 (and tp!1403650 tp!1403651))))

(declare-fun b!5005783 () Bool)

(declare-fun tp!1403653 () Bool)

(assert (=> b!5005783 (= e!3127971 tp!1403653)))

(declare-fun b!5005784 () Bool)

(declare-fun tp!1403652 () Bool)

(declare-fun tp!1403654 () Bool)

(assert (=> b!5005784 (= e!3127971 (and tp!1403652 tp!1403654))))

(assert (=> b!5005125 (= tp!1403598 e!3127971)))

(declare-fun b!5005781 () Bool)

(assert (=> b!5005781 (= e!3127971 tp_is_empty!36587)))

(assert (= (and b!5005125 ((_ is ElementMatch!13795) (regTwo!28103 (regTwo!28102 r!12727)))) b!5005781))

(assert (= (and b!5005125 ((_ is Concat!22588) (regTwo!28103 (regTwo!28102 r!12727)))) b!5005782))

(assert (= (and b!5005125 ((_ is Star!13795) (regTwo!28103 (regTwo!28102 r!12727)))) b!5005783))

(assert (= (and b!5005125 ((_ is Union!13795) (regTwo!28103 (regTwo!28102 r!12727)))) b!5005784))

(declare-fun b!5005786 () Bool)

(declare-fun e!3127972 () Bool)

(declare-fun tp!1403655 () Bool)

(declare-fun tp!1403656 () Bool)

(assert (=> b!5005786 (= e!3127972 (and tp!1403655 tp!1403656))))

(declare-fun b!5005787 () Bool)

(declare-fun tp!1403658 () Bool)

(assert (=> b!5005787 (= e!3127972 tp!1403658)))

(declare-fun b!5005788 () Bool)

(declare-fun tp!1403657 () Bool)

(declare-fun tp!1403659 () Bool)

(assert (=> b!5005788 (= e!3127972 (and tp!1403657 tp!1403659))))

(assert (=> b!5005123 (= tp!1403594 e!3127972)))

(declare-fun b!5005785 () Bool)

(assert (=> b!5005785 (= e!3127972 tp_is_empty!36587)))

(assert (= (and b!5005123 ((_ is ElementMatch!13795) (regOne!28102 (regTwo!28102 r!12727)))) b!5005785))

(assert (= (and b!5005123 ((_ is Concat!22588) (regOne!28102 (regTwo!28102 r!12727)))) b!5005786))

(assert (= (and b!5005123 ((_ is Star!13795) (regOne!28102 (regTwo!28102 r!12727)))) b!5005787))

(assert (= (and b!5005123 ((_ is Union!13795) (regOne!28102 (regTwo!28102 r!12727)))) b!5005788))

(declare-fun b!5005790 () Bool)

(declare-fun e!3127973 () Bool)

(declare-fun tp!1403660 () Bool)

(declare-fun tp!1403661 () Bool)

(assert (=> b!5005790 (= e!3127973 (and tp!1403660 tp!1403661))))

(declare-fun b!5005791 () Bool)

(declare-fun tp!1403663 () Bool)

(assert (=> b!5005791 (= e!3127973 tp!1403663)))

(declare-fun b!5005792 () Bool)

(declare-fun tp!1403662 () Bool)

(declare-fun tp!1403664 () Bool)

(assert (=> b!5005792 (= e!3127973 (and tp!1403662 tp!1403664))))

(assert (=> b!5005123 (= tp!1403595 e!3127973)))

(declare-fun b!5005789 () Bool)

(assert (=> b!5005789 (= e!3127973 tp_is_empty!36587)))

(assert (= (and b!5005123 ((_ is ElementMatch!13795) (regTwo!28102 (regTwo!28102 r!12727)))) b!5005789))

(assert (= (and b!5005123 ((_ is Concat!22588) (regTwo!28102 (regTwo!28102 r!12727)))) b!5005790))

(assert (= (and b!5005123 ((_ is Star!13795) (regTwo!28102 (regTwo!28102 r!12727)))) b!5005791))

(assert (= (and b!5005123 ((_ is Union!13795) (regTwo!28102 (regTwo!28102 r!12727)))) b!5005792))

(declare-fun condSetEmpty!28419 () Bool)

(assert (=> setNonEmpty!28418 (= condSetEmpty!28419 (= setRest!28418 ((as const (Array Context!6440 Bool)) false)))))

(declare-fun setRes!28419 () Bool)

(assert (=> setNonEmpty!28418 (= tp!1403587 setRes!28419)))

(declare-fun setIsEmpty!28419 () Bool)

(assert (=> setIsEmpty!28419 setRes!28419))

(declare-fun setElem!28419 () Context!6440)

(declare-fun setNonEmpty!28419 () Bool)

(declare-fun e!3127974 () Bool)

(declare-fun tp!1403665 () Bool)

(assert (=> setNonEmpty!28419 (= setRes!28419 (and tp!1403665 (inv!76031 setElem!28419) e!3127974))))

(declare-fun setRest!28419 () (InoxSet Context!6440))

(assert (=> setNonEmpty!28419 (= setRest!28418 ((_ map or) (store ((as const (Array Context!6440 Bool)) false) setElem!28419 true) setRest!28419))))

(declare-fun b!5005793 () Bool)

(declare-fun tp!1403666 () Bool)

(assert (=> b!5005793 (= e!3127974 tp!1403666)))

(assert (= (and setNonEmpty!28418 condSetEmpty!28419) setIsEmpty!28419))

(assert (= (and setNonEmpty!28418 (not condSetEmpty!28419)) setNonEmpty!28419))

(assert (= setNonEmpty!28419 b!5005793))

(declare-fun m!6040008 () Bool)

(assert (=> setNonEmpty!28419 m!6040008))

(declare-fun b!5005799 () Bool)

(declare-fun e!3127977 () Bool)

(declare-fun tp!1403667 () Bool)

(declare-fun tp!1403668 () Bool)

(assert (=> b!5005799 (= e!3127977 (and tp!1403667 tp!1403668))))

(declare-fun b!5005800 () Bool)

(declare-fun tp!1403670 () Bool)

(assert (=> b!5005800 (= e!3127977 tp!1403670)))

(declare-fun b!5005801 () Bool)

(declare-fun tp!1403669 () Bool)

(declare-fun tp!1403671 () Bool)

(assert (=> b!5005801 (= e!3127977 (and tp!1403669 tp!1403671))))

(assert (=> b!5005133 (= tp!1403606 e!3127977)))

(declare-fun b!5005798 () Bool)

(assert (=> b!5005798 (= e!3127977 tp_is_empty!36587)))

(assert (= (and b!5005133 ((_ is ElementMatch!13795) (regOne!28103 (regTwo!28103 r!12727)))) b!5005798))

(assert (= (and b!5005133 ((_ is Concat!22588) (regOne!28103 (regTwo!28103 r!12727)))) b!5005799))

(assert (= (and b!5005133 ((_ is Star!13795) (regOne!28103 (regTwo!28103 r!12727)))) b!5005800))

(assert (= (and b!5005133 ((_ is Union!13795) (regOne!28103 (regTwo!28103 r!12727)))) b!5005801))

(declare-fun b!5005803 () Bool)

(declare-fun e!3127978 () Bool)

(declare-fun tp!1403672 () Bool)

(declare-fun tp!1403673 () Bool)

(assert (=> b!5005803 (= e!3127978 (and tp!1403672 tp!1403673))))

(declare-fun b!5005804 () Bool)

(declare-fun tp!1403675 () Bool)

(assert (=> b!5005804 (= e!3127978 tp!1403675)))

(declare-fun b!5005805 () Bool)

(declare-fun tp!1403674 () Bool)

(declare-fun tp!1403676 () Bool)

(assert (=> b!5005805 (= e!3127978 (and tp!1403674 tp!1403676))))

(assert (=> b!5005133 (= tp!1403608 e!3127978)))

(declare-fun b!5005802 () Bool)

(assert (=> b!5005802 (= e!3127978 tp_is_empty!36587)))

(assert (= (and b!5005133 ((_ is ElementMatch!13795) (regTwo!28103 (regTwo!28103 r!12727)))) b!5005802))

(assert (= (and b!5005133 ((_ is Concat!22588) (regTwo!28103 (regTwo!28103 r!12727)))) b!5005803))

(assert (= (and b!5005133 ((_ is Star!13795) (regTwo!28103 (regTwo!28103 r!12727)))) b!5005804))

(assert (= (and b!5005133 ((_ is Union!13795) (regTwo!28103 (regTwo!28103 r!12727)))) b!5005805))

(declare-fun b!5005807 () Bool)

(declare-fun e!3127979 () Bool)

(declare-fun tp!1403677 () Bool)

(declare-fun tp!1403678 () Bool)

(assert (=> b!5005807 (= e!3127979 (and tp!1403677 tp!1403678))))

(declare-fun b!5005808 () Bool)

(declare-fun tp!1403680 () Bool)

(assert (=> b!5005808 (= e!3127979 tp!1403680)))

(declare-fun b!5005809 () Bool)

(declare-fun tp!1403679 () Bool)

(declare-fun tp!1403681 () Bool)

(assert (=> b!5005809 (= e!3127979 (and tp!1403679 tp!1403681))))

(assert (=> b!5005124 (= tp!1403597 e!3127979)))

(declare-fun b!5005806 () Bool)

(assert (=> b!5005806 (= e!3127979 tp_is_empty!36587)))

(assert (= (and b!5005124 ((_ is ElementMatch!13795) (reg!14124 (regTwo!28102 r!12727)))) b!5005806))

(assert (= (and b!5005124 ((_ is Concat!22588) (reg!14124 (regTwo!28102 r!12727)))) b!5005807))

(assert (= (and b!5005124 ((_ is Star!13795) (reg!14124 (regTwo!28102 r!12727)))) b!5005808))

(assert (= (and b!5005124 ((_ is Union!13795) (reg!14124 (regTwo!28102 r!12727)))) b!5005809))

(declare-fun b!5005811 () Bool)

(declare-fun e!3127980 () Bool)

(declare-fun tp!1403682 () Bool)

(declare-fun tp!1403683 () Bool)

(assert (=> b!5005811 (= e!3127980 (and tp!1403682 tp!1403683))))

(declare-fun b!5005812 () Bool)

(declare-fun tp!1403685 () Bool)

(assert (=> b!5005812 (= e!3127980 tp!1403685)))

(declare-fun b!5005813 () Bool)

(declare-fun tp!1403684 () Bool)

(declare-fun tp!1403686 () Bool)

(assert (=> b!5005813 (= e!3127980 (and tp!1403684 tp!1403686))))

(assert (=> b!5005110 (= tp!1403578 e!3127980)))

(declare-fun b!5005810 () Bool)

(assert (=> b!5005810 (= e!3127980 tp_is_empty!36587)))

(assert (= (and b!5005110 ((_ is ElementMatch!13795) (regOne!28102 (reg!14124 r!12727)))) b!5005810))

(assert (= (and b!5005110 ((_ is Concat!22588) (regOne!28102 (reg!14124 r!12727)))) b!5005811))

(assert (= (and b!5005110 ((_ is Star!13795) (regOne!28102 (reg!14124 r!12727)))) b!5005812))

(assert (= (and b!5005110 ((_ is Union!13795) (regOne!28102 (reg!14124 r!12727)))) b!5005813))

(declare-fun b!5005815 () Bool)

(declare-fun e!3127981 () Bool)

(declare-fun tp!1403687 () Bool)

(declare-fun tp!1403688 () Bool)

(assert (=> b!5005815 (= e!3127981 (and tp!1403687 tp!1403688))))

(declare-fun b!5005816 () Bool)

(declare-fun tp!1403690 () Bool)

(assert (=> b!5005816 (= e!3127981 tp!1403690)))

(declare-fun b!5005817 () Bool)

(declare-fun tp!1403689 () Bool)

(declare-fun tp!1403691 () Bool)

(assert (=> b!5005817 (= e!3127981 (and tp!1403689 tp!1403691))))

(assert (=> b!5005110 (= tp!1403579 e!3127981)))

(declare-fun b!5005814 () Bool)

(assert (=> b!5005814 (= e!3127981 tp_is_empty!36587)))

(assert (= (and b!5005110 ((_ is ElementMatch!13795) (regTwo!28102 (reg!14124 r!12727)))) b!5005814))

(assert (= (and b!5005110 ((_ is Concat!22588) (regTwo!28102 (reg!14124 r!12727)))) b!5005815))

(assert (= (and b!5005110 ((_ is Star!13795) (regTwo!28102 (reg!14124 r!12727)))) b!5005816))

(assert (= (and b!5005110 ((_ is Union!13795) (regTwo!28102 (reg!14124 r!12727)))) b!5005817))

(declare-fun b!5005819 () Bool)

(declare-fun e!3127982 () Bool)

(declare-fun tp!1403692 () Bool)

(declare-fun tp!1403693 () Bool)

(assert (=> b!5005819 (= e!3127982 (and tp!1403692 tp!1403693))))

(declare-fun b!5005820 () Bool)

(declare-fun tp!1403695 () Bool)

(assert (=> b!5005820 (= e!3127982 tp!1403695)))

(declare-fun b!5005821 () Bool)

(declare-fun tp!1403694 () Bool)

(declare-fun tp!1403696 () Bool)

(assert (=> b!5005821 (= e!3127982 (and tp!1403694 tp!1403696))))

(assert (=> b!5005112 (= tp!1403580 e!3127982)))

(declare-fun b!5005818 () Bool)

(assert (=> b!5005818 (= e!3127982 tp_is_empty!36587)))

(assert (= (and b!5005112 ((_ is ElementMatch!13795) (regOne!28103 (reg!14124 r!12727)))) b!5005818))

(assert (= (and b!5005112 ((_ is Concat!22588) (regOne!28103 (reg!14124 r!12727)))) b!5005819))

(assert (= (and b!5005112 ((_ is Star!13795) (regOne!28103 (reg!14124 r!12727)))) b!5005820))

(assert (= (and b!5005112 ((_ is Union!13795) (regOne!28103 (reg!14124 r!12727)))) b!5005821))

(declare-fun b!5005823 () Bool)

(declare-fun e!3127983 () Bool)

(declare-fun tp!1403697 () Bool)

(declare-fun tp!1403698 () Bool)

(assert (=> b!5005823 (= e!3127983 (and tp!1403697 tp!1403698))))

(declare-fun b!5005824 () Bool)

(declare-fun tp!1403700 () Bool)

(assert (=> b!5005824 (= e!3127983 tp!1403700)))

(declare-fun b!5005825 () Bool)

(declare-fun tp!1403699 () Bool)

(declare-fun tp!1403701 () Bool)

(assert (=> b!5005825 (= e!3127983 (and tp!1403699 tp!1403701))))

(assert (=> b!5005112 (= tp!1403582 e!3127983)))

(declare-fun b!5005822 () Bool)

(assert (=> b!5005822 (= e!3127983 tp_is_empty!36587)))

(assert (= (and b!5005112 ((_ is ElementMatch!13795) (regTwo!28103 (reg!14124 r!12727)))) b!5005822))

(assert (= (and b!5005112 ((_ is Concat!22588) (regTwo!28103 (reg!14124 r!12727)))) b!5005823))

(assert (= (and b!5005112 ((_ is Star!13795) (regTwo!28103 (reg!14124 r!12727)))) b!5005824))

(assert (= (and b!5005112 ((_ is Union!13795) (regTwo!28103 (reg!14124 r!12727)))) b!5005825))

(declare-fun b!5005834 () Bool)

(declare-fun e!3127989 () Bool)

(declare-fun tp!1403704 () Bool)

(assert (=> b!5005834 (= e!3127989 (and tp_is_empty!36587 tp!1403704))))

(assert (=> b!5005098 (= tp!1403565 e!3127989)))

(assert (= (and b!5005098 ((_ is Cons!57865) (innerList!15402 (xs!18640 (c!854185 input!5597))))) b!5005834))

(declare-fun b!5005835 () Bool)

(declare-fun e!3127990 () Bool)

(declare-fun tp!1403707 () Bool)

(declare-fun tp!1403706 () Bool)

(assert (=> b!5005835 (= e!3127990 (and (inv!76029 (left!42305 (left!42305 (c!854185 input!5597)))) tp!1403707 (inv!76029 (right!42635 (left!42305 (c!854185 input!5597)))) tp!1403706))))

(declare-fun b!5005837 () Bool)

(declare-fun e!3127991 () Bool)

(declare-fun tp!1403705 () Bool)

(assert (=> b!5005837 (= e!3127991 tp!1403705)))

(declare-fun b!5005836 () Bool)

(assert (=> b!5005836 (= e!3127990 (and (inv!76036 (xs!18640 (left!42305 (c!854185 input!5597)))) e!3127991))))

(assert (=> b!5005096 (= tp!1403567 (and (inv!76029 (left!42305 (c!854185 input!5597))) e!3127990))))

(assert (= (and b!5005096 ((_ is Node!15314) (left!42305 (c!854185 input!5597)))) b!5005835))

(assert (= b!5005836 b!5005837))

(assert (= (and b!5005096 ((_ is Leaf!25420) (left!42305 (c!854185 input!5597)))) b!5005836))

(declare-fun m!6040024 () Bool)

(assert (=> b!5005835 m!6040024))

(declare-fun m!6040028 () Bool)

(assert (=> b!5005835 m!6040028))

(declare-fun m!6040030 () Bool)

(assert (=> b!5005836 m!6040030))

(assert (=> b!5005096 m!6039158))

(declare-fun tp!1403709 () Bool)

(declare-fun e!3127992 () Bool)

(declare-fun tp!1403710 () Bool)

(declare-fun b!5005838 () Bool)

(assert (=> b!5005838 (= e!3127992 (and (inv!76029 (left!42305 (right!42635 (c!854185 input!5597)))) tp!1403710 (inv!76029 (right!42635 (right!42635 (c!854185 input!5597)))) tp!1403709))))

(declare-fun b!5005840 () Bool)

(declare-fun e!3127993 () Bool)

(declare-fun tp!1403708 () Bool)

(assert (=> b!5005840 (= e!3127993 tp!1403708)))

(declare-fun b!5005839 () Bool)

(assert (=> b!5005839 (= e!3127992 (and (inv!76036 (xs!18640 (right!42635 (c!854185 input!5597)))) e!3127993))))

(assert (=> b!5005096 (= tp!1403566 (and (inv!76029 (right!42635 (c!854185 input!5597))) e!3127992))))

(assert (= (and b!5005096 ((_ is Node!15314) (right!42635 (c!854185 input!5597)))) b!5005838))

(assert (= b!5005839 b!5005840))

(assert (= (and b!5005096 ((_ is Leaf!25420) (right!42635 (c!854185 input!5597)))) b!5005839))

(declare-fun m!6040038 () Bool)

(assert (=> b!5005838 m!6040038))

(declare-fun m!6040040 () Bool)

(assert (=> b!5005838 m!6040040))

(declare-fun m!6040042 () Bool)

(assert (=> b!5005839 m!6040042))

(assert (=> b!5005096 m!6039160))

(declare-fun b!5005842 () Bool)

(declare-fun e!3127994 () Bool)

(declare-fun tp!1403711 () Bool)

(declare-fun tp!1403712 () Bool)

(assert (=> b!5005842 (= e!3127994 (and tp!1403711 tp!1403712))))

(declare-fun b!5005843 () Bool)

(declare-fun tp!1403714 () Bool)

(assert (=> b!5005843 (= e!3127994 tp!1403714)))

(declare-fun b!5005844 () Bool)

(declare-fun tp!1403713 () Bool)

(declare-fun tp!1403715 () Bool)

(assert (=> b!5005844 (= e!3127994 (and tp!1403713 tp!1403715))))

(assert (=> b!5005111 (= tp!1403581 e!3127994)))

(declare-fun b!5005841 () Bool)

(assert (=> b!5005841 (= e!3127994 tp_is_empty!36587)))

(assert (= (and b!5005111 ((_ is ElementMatch!13795) (reg!14124 (reg!14124 r!12727)))) b!5005841))

(assert (= (and b!5005111 ((_ is Concat!22588) (reg!14124 (reg!14124 r!12727)))) b!5005842))

(assert (= (and b!5005111 ((_ is Star!13795) (reg!14124 (reg!14124 r!12727)))) b!5005843))

(assert (= (and b!5005111 ((_ is Union!13795) (reg!14124 (reg!14124 r!12727)))) b!5005844))

(declare-fun b!5005846 () Bool)

(declare-fun e!3127995 () Bool)

(declare-fun tp!1403716 () Bool)

(declare-fun tp!1403717 () Bool)

(assert (=> b!5005846 (= e!3127995 (and tp!1403716 tp!1403717))))

(declare-fun b!5005847 () Bool)

(declare-fun tp!1403719 () Bool)

(assert (=> b!5005847 (= e!3127995 tp!1403719)))

(declare-fun b!5005848 () Bool)

(declare-fun tp!1403718 () Bool)

(declare-fun tp!1403720 () Bool)

(assert (=> b!5005848 (= e!3127995 (and tp!1403718 tp!1403720))))

(assert (=> b!5005127 (= tp!1403599 e!3127995)))

(declare-fun b!5005845 () Bool)

(assert (=> b!5005845 (= e!3127995 tp_is_empty!36587)))

(assert (= (and b!5005127 ((_ is ElementMatch!13795) (regOne!28102 (regOne!28103 r!12727)))) b!5005845))

(assert (= (and b!5005127 ((_ is Concat!22588) (regOne!28102 (regOne!28103 r!12727)))) b!5005846))

(assert (= (and b!5005127 ((_ is Star!13795) (regOne!28102 (regOne!28103 r!12727)))) b!5005847))

(assert (= (and b!5005127 ((_ is Union!13795) (regOne!28102 (regOne!28103 r!12727)))) b!5005848))

(declare-fun b!5005850 () Bool)

(declare-fun e!3127996 () Bool)

(declare-fun tp!1403721 () Bool)

(declare-fun tp!1403722 () Bool)

(assert (=> b!5005850 (= e!3127996 (and tp!1403721 tp!1403722))))

(declare-fun b!5005851 () Bool)

(declare-fun tp!1403724 () Bool)

(assert (=> b!5005851 (= e!3127996 tp!1403724)))

(declare-fun b!5005852 () Bool)

(declare-fun tp!1403723 () Bool)

(declare-fun tp!1403725 () Bool)

(assert (=> b!5005852 (= e!3127996 (and tp!1403723 tp!1403725))))

(assert (=> b!5005127 (= tp!1403600 e!3127996)))

(declare-fun b!5005849 () Bool)

(assert (=> b!5005849 (= e!3127996 tp_is_empty!36587)))

(assert (= (and b!5005127 ((_ is ElementMatch!13795) (regTwo!28102 (regOne!28103 r!12727)))) b!5005849))

(assert (= (and b!5005127 ((_ is Concat!22588) (regTwo!28102 (regOne!28103 r!12727)))) b!5005850))

(assert (= (and b!5005127 ((_ is Star!13795) (regTwo!28102 (regOne!28103 r!12727)))) b!5005851))

(assert (= (and b!5005127 ((_ is Union!13795) (regTwo!28102 (regOne!28103 r!12727)))) b!5005852))

(declare-fun b!5005854 () Bool)

(declare-fun e!3127997 () Bool)

(declare-fun tp!1403726 () Bool)

(declare-fun tp!1403727 () Bool)

(assert (=> b!5005854 (= e!3127997 (and tp!1403726 tp!1403727))))

(declare-fun b!5005855 () Bool)

(declare-fun tp!1403729 () Bool)

(assert (=> b!5005855 (= e!3127997 tp!1403729)))

(declare-fun b!5005856 () Bool)

(declare-fun tp!1403728 () Bool)

(declare-fun tp!1403730 () Bool)

(assert (=> b!5005856 (= e!3127997 (and tp!1403728 tp!1403730))))

(assert (=> b!5005129 (= tp!1403601 e!3127997)))

(declare-fun b!5005853 () Bool)

(assert (=> b!5005853 (= e!3127997 tp_is_empty!36587)))

(assert (= (and b!5005129 ((_ is ElementMatch!13795) (regOne!28103 (regOne!28103 r!12727)))) b!5005853))

(assert (= (and b!5005129 ((_ is Concat!22588) (regOne!28103 (regOne!28103 r!12727)))) b!5005854))

(assert (= (and b!5005129 ((_ is Star!13795) (regOne!28103 (regOne!28103 r!12727)))) b!5005855))

(assert (= (and b!5005129 ((_ is Union!13795) (regOne!28103 (regOne!28103 r!12727)))) b!5005856))

(declare-fun b!5005858 () Bool)

(declare-fun e!3127998 () Bool)

(declare-fun tp!1403731 () Bool)

(declare-fun tp!1403732 () Bool)

(assert (=> b!5005858 (= e!3127998 (and tp!1403731 tp!1403732))))

(declare-fun b!5005859 () Bool)

(declare-fun tp!1403734 () Bool)

(assert (=> b!5005859 (= e!3127998 tp!1403734)))

(declare-fun b!5005860 () Bool)

(declare-fun tp!1403733 () Bool)

(declare-fun tp!1403735 () Bool)

(assert (=> b!5005860 (= e!3127998 (and tp!1403733 tp!1403735))))

(assert (=> b!5005129 (= tp!1403603 e!3127998)))

(declare-fun b!5005857 () Bool)

(assert (=> b!5005857 (= e!3127998 tp_is_empty!36587)))

(assert (= (and b!5005129 ((_ is ElementMatch!13795) (regTwo!28103 (regOne!28103 r!12727)))) b!5005857))

(assert (= (and b!5005129 ((_ is Concat!22588) (regTwo!28103 (regOne!28103 r!12727)))) b!5005858))

(assert (= (and b!5005129 ((_ is Star!13795) (regTwo!28103 (regOne!28103 r!12727)))) b!5005859))

(assert (= (and b!5005129 ((_ is Union!13795) (regTwo!28103 (regOne!28103 r!12727)))) b!5005860))

(declare-fun b!5005865 () Bool)

(declare-fun e!3128001 () Bool)

(declare-fun tp!1403736 () Bool)

(declare-fun tp!1403737 () Bool)

(assert (=> b!5005865 (= e!3128001 (and tp!1403736 tp!1403737))))

(declare-fun b!5005866 () Bool)

(declare-fun tp!1403739 () Bool)

(assert (=> b!5005866 (= e!3128001 tp!1403739)))

(declare-fun b!5005867 () Bool)

(declare-fun tp!1403738 () Bool)

(declare-fun tp!1403740 () Bool)

(assert (=> b!5005867 (= e!3128001 (and tp!1403738 tp!1403740))))

(assert (=> b!5005120 (= tp!1403592 e!3128001)))

(declare-fun b!5005864 () Bool)

(assert (=> b!5005864 (= e!3128001 tp_is_empty!36587)))

(assert (= (and b!5005120 ((_ is ElementMatch!13795) (reg!14124 (regOne!28102 r!12727)))) b!5005864))

(assert (= (and b!5005120 ((_ is Concat!22588) (reg!14124 (regOne!28102 r!12727)))) b!5005865))

(assert (= (and b!5005120 ((_ is Star!13795) (reg!14124 (regOne!28102 r!12727)))) b!5005866))

(assert (= (and b!5005120 ((_ is Union!13795) (reg!14124 (regOne!28102 r!12727)))) b!5005867))

(declare-fun b!5005868 () Bool)

(declare-fun tp!1403743 () Bool)

(declare-fun tp!1403742 () Bool)

(declare-fun e!3128002 () Bool)

(assert (=> b!5005868 (= e!3128002 (and (inv!76029 (left!42305 (left!42305 (c!854185 totalInput!1012)))) tp!1403743 (inv!76029 (right!42635 (left!42305 (c!854185 totalInput!1012)))) tp!1403742))))

(declare-fun b!5005870 () Bool)

(declare-fun e!3128003 () Bool)

(declare-fun tp!1403741 () Bool)

(assert (=> b!5005870 (= e!3128003 tp!1403741)))

(declare-fun b!5005869 () Bool)

(assert (=> b!5005869 (= e!3128002 (and (inv!76036 (xs!18640 (left!42305 (c!854185 totalInput!1012)))) e!3128003))))

(assert (=> b!5005093 (= tp!1403564 (and (inv!76029 (left!42305 (c!854185 totalInput!1012))) e!3128002))))

(assert (= (and b!5005093 ((_ is Node!15314) (left!42305 (c!854185 totalInput!1012)))) b!5005868))

(assert (= b!5005869 b!5005870))

(assert (= (and b!5005093 ((_ is Leaf!25420) (left!42305 (c!854185 totalInput!1012)))) b!5005869))

(declare-fun m!6040047 () Bool)

(assert (=> b!5005868 m!6040047))

(declare-fun m!6040050 () Bool)

(assert (=> b!5005868 m!6040050))

(declare-fun m!6040052 () Bool)

(assert (=> b!5005869 m!6040052))

(assert (=> b!5005093 m!6039152))

(declare-fun tp!1403746 () Bool)

(declare-fun b!5005871 () Bool)

(declare-fun tp!1403745 () Bool)

(declare-fun e!3128004 () Bool)

(assert (=> b!5005871 (= e!3128004 (and (inv!76029 (left!42305 (right!42635 (c!854185 totalInput!1012)))) tp!1403746 (inv!76029 (right!42635 (right!42635 (c!854185 totalInput!1012)))) tp!1403745))))

(declare-fun b!5005873 () Bool)

(declare-fun e!3128005 () Bool)

(declare-fun tp!1403744 () Bool)

(assert (=> b!5005873 (= e!3128005 tp!1403744)))

(declare-fun b!5005872 () Bool)

(assert (=> b!5005872 (= e!3128004 (and (inv!76036 (xs!18640 (right!42635 (c!854185 totalInput!1012)))) e!3128005))))

(assert (=> b!5005093 (= tp!1403563 (and (inv!76029 (right!42635 (c!854185 totalInput!1012))) e!3128004))))

(assert (= (and b!5005093 ((_ is Node!15314) (right!42635 (c!854185 totalInput!1012)))) b!5005871))

(assert (= b!5005872 b!5005873))

(assert (= (and b!5005093 ((_ is Leaf!25420) (right!42635 (c!854185 totalInput!1012)))) b!5005872))

(declare-fun m!6040054 () Bool)

(assert (=> b!5005871 m!6040054))

(declare-fun m!6040056 () Bool)

(assert (=> b!5005871 m!6040056))

(declare-fun m!6040058 () Bool)

(assert (=> b!5005872 m!6040058))

(assert (=> b!5005093 m!6039154))

(declare-fun b!5005878 () Bool)

(declare-fun e!3128008 () Bool)

(declare-fun tp!1403747 () Bool)

(declare-fun tp!1403748 () Bool)

(assert (=> b!5005878 (= e!3128008 (and tp!1403747 tp!1403748))))

(declare-fun b!5005879 () Bool)

(declare-fun tp!1403750 () Bool)

(assert (=> b!5005879 (= e!3128008 tp!1403750)))

(declare-fun b!5005880 () Bool)

(declare-fun tp!1403749 () Bool)

(declare-fun tp!1403751 () Bool)

(assert (=> b!5005880 (= e!3128008 (and tp!1403749 tp!1403751))))

(assert (=> b!5005128 (= tp!1403602 e!3128008)))

(declare-fun b!5005877 () Bool)

(assert (=> b!5005877 (= e!3128008 tp_is_empty!36587)))

(assert (= (and b!5005128 ((_ is ElementMatch!13795) (reg!14124 (regOne!28103 r!12727)))) b!5005877))

(assert (= (and b!5005128 ((_ is Concat!22588) (reg!14124 (regOne!28103 r!12727)))) b!5005878))

(assert (= (and b!5005128 ((_ is Star!13795) (reg!14124 (regOne!28103 r!12727)))) b!5005879))

(assert (= (and b!5005128 ((_ is Union!13795) (reg!14124 (regOne!28103 r!12727)))) b!5005880))

(declare-fun b!5005884 () Bool)

(declare-fun e!3128010 () Bool)

(declare-fun tp!1403752 () Bool)

(declare-fun tp!1403753 () Bool)

(assert (=> b!5005884 (= e!3128010 (and tp!1403752 tp!1403753))))

(declare-fun b!5005885 () Bool)

(declare-fun tp!1403755 () Bool)

(assert (=> b!5005885 (= e!3128010 tp!1403755)))

(declare-fun b!5005886 () Bool)

(declare-fun tp!1403754 () Bool)

(declare-fun tp!1403756 () Bool)

(assert (=> b!5005886 (= e!3128010 (and tp!1403754 tp!1403756))))

(assert (=> b!5005119 (= tp!1403589 e!3128010)))

(declare-fun b!5005883 () Bool)

(assert (=> b!5005883 (= e!3128010 tp_is_empty!36587)))

(assert (= (and b!5005119 ((_ is ElementMatch!13795) (regOne!28102 (regOne!28102 r!12727)))) b!5005883))

(assert (= (and b!5005119 ((_ is Concat!22588) (regOne!28102 (regOne!28102 r!12727)))) b!5005884))

(assert (= (and b!5005119 ((_ is Star!13795) (regOne!28102 (regOne!28102 r!12727)))) b!5005885))

(assert (= (and b!5005119 ((_ is Union!13795) (regOne!28102 (regOne!28102 r!12727)))) b!5005886))

(declare-fun b!5005888 () Bool)

(declare-fun e!3128011 () Bool)

(declare-fun tp!1403757 () Bool)

(declare-fun tp!1403758 () Bool)

(assert (=> b!5005888 (= e!3128011 (and tp!1403757 tp!1403758))))

(declare-fun b!5005889 () Bool)

(declare-fun tp!1403760 () Bool)

(assert (=> b!5005889 (= e!3128011 tp!1403760)))

(declare-fun b!5005890 () Bool)

(declare-fun tp!1403759 () Bool)

(declare-fun tp!1403761 () Bool)

(assert (=> b!5005890 (= e!3128011 (and tp!1403759 tp!1403761))))

(assert (=> b!5005119 (= tp!1403590 e!3128011)))

(declare-fun b!5005887 () Bool)

(assert (=> b!5005887 (= e!3128011 tp_is_empty!36587)))

(assert (= (and b!5005119 ((_ is ElementMatch!13795) (regTwo!28102 (regOne!28102 r!12727)))) b!5005887))

(assert (= (and b!5005119 ((_ is Concat!22588) (regTwo!28102 (regOne!28102 r!12727)))) b!5005888))

(assert (= (and b!5005119 ((_ is Star!13795) (regTwo!28102 (regOne!28102 r!12727)))) b!5005889))

(assert (= (and b!5005119 ((_ is Union!13795) (regTwo!28102 (regOne!28102 r!12727)))) b!5005890))

(declare-fun b!5005891 () Bool)

(declare-fun e!3128012 () Bool)

(declare-fun tp!1403762 () Bool)

(assert (=> b!5005891 (= e!3128012 (and tp_is_empty!36587 tp!1403762))))

(assert (=> b!5005095 (= tp!1403562 e!3128012)))

(assert (= (and b!5005095 ((_ is Cons!57865) (innerList!15402 (xs!18640 (c!854185 totalInput!1012))))) b!5005891))

(declare-fun b!5005893 () Bool)

(declare-fun e!3128013 () Bool)

(declare-fun tp!1403763 () Bool)

(declare-fun tp!1403764 () Bool)

(assert (=> b!5005893 (= e!3128013 (and tp!1403763 tp!1403764))))

(declare-fun b!5005894 () Bool)

(declare-fun tp!1403766 () Bool)

(assert (=> b!5005894 (= e!3128013 tp!1403766)))

(declare-fun b!5005895 () Bool)

(declare-fun tp!1403765 () Bool)

(declare-fun tp!1403767 () Bool)

(assert (=> b!5005895 (= e!3128013 (and tp!1403765 tp!1403767))))

(assert (=> b!5005121 (= tp!1403591 e!3128013)))

(declare-fun b!5005892 () Bool)

(assert (=> b!5005892 (= e!3128013 tp_is_empty!36587)))

(assert (= (and b!5005121 ((_ is ElementMatch!13795) (regOne!28103 (regOne!28102 r!12727)))) b!5005892))

(assert (= (and b!5005121 ((_ is Concat!22588) (regOne!28103 (regOne!28102 r!12727)))) b!5005893))

(assert (= (and b!5005121 ((_ is Star!13795) (regOne!28103 (regOne!28102 r!12727)))) b!5005894))

(assert (= (and b!5005121 ((_ is Union!13795) (regOne!28103 (regOne!28102 r!12727)))) b!5005895))

(declare-fun b!5005897 () Bool)

(declare-fun e!3128014 () Bool)

(declare-fun tp!1403768 () Bool)

(declare-fun tp!1403769 () Bool)

(assert (=> b!5005897 (= e!3128014 (and tp!1403768 tp!1403769))))

(declare-fun b!5005898 () Bool)

(declare-fun tp!1403771 () Bool)

(assert (=> b!5005898 (= e!3128014 tp!1403771)))

(declare-fun b!5005899 () Bool)

(declare-fun tp!1403770 () Bool)

(declare-fun tp!1403772 () Bool)

(assert (=> b!5005899 (= e!3128014 (and tp!1403770 tp!1403772))))

(assert (=> b!5005121 (= tp!1403593 e!3128014)))

(declare-fun b!5005896 () Bool)

(assert (=> b!5005896 (= e!3128014 tp_is_empty!36587)))

(assert (= (and b!5005121 ((_ is ElementMatch!13795) (regTwo!28103 (regOne!28102 r!12727)))) b!5005896))

(assert (= (and b!5005121 ((_ is Concat!22588) (regTwo!28103 (regOne!28102 r!12727)))) b!5005897))

(assert (= (and b!5005121 ((_ is Star!13795) (regTwo!28103 (regOne!28102 r!12727)))) b!5005898))

(assert (= (and b!5005121 ((_ is Union!13795) (regTwo!28103 (regOne!28102 r!12727)))) b!5005899))

(declare-fun b_lambda!198619 () Bool)

(assert (= b_lambda!198617 (or d!1610680 b_lambda!198619)))

(declare-fun bs!1186014 () Bool)

(declare-fun d!1611236 () Bool)

(assert (= bs!1186014 (and d!1611236 d!1610680)))

(assert (=> bs!1186014 (= (dynLambda!23517 lambda!248369 (h!64314 (exprs!3720 setElem!28412))) (validRegex!6092 (h!64314 (exprs!3720 setElem!28412))))))

(declare-fun m!6040066 () Bool)

(assert (=> bs!1186014 m!6040066))

(assert (=> b!5005648 d!1611236))

(check-sat (not b!5005466) (not b!5005696) (not bm!349391) (not d!1611188) (not b!5005890) (not b!5005800) (not d!1610884) (not d!1611022) (not b!5005447) (not b!5005788) (not bm!349426) (not b!5005517) (not b!5005460) (not b!5005838) (not b!5005419) (not b!5005507) (not b!5005836) (not d!1610844) (not d!1611152) (not d!1611142) (not d!1611064) (not b!5005855) (not bm!349413) (not b!5005295) (not b!5005701) (not b!5005169) (not d!1611106) (not d!1610846) (not b!5005756) (not b!5005332) (not b!5005761) (not b!5005330) (not b!5005860) (not b!5005653) (not b!5005343) (not b!5005787) (not b!5005293) (not d!1610946) (not b!5005161) (not b!5005504) (not b!5005513) (not b!5005185) (not b!5005842) (not b!5005744) (not d!1611012) (not b!5005329) (not b!5005716) (not d!1611028) (not b!5005327) (not b!5005899) (not b!5005592) (not b!5005571) (not b!5005539) (not b!5005093) (not b!5005704) (not b!5005885) (not bm!349451) (not b!5005527) (not b!5005518) (not b!5005486) (not b!5005345) (not b!5005669) (not d!1611002) (not d!1611132) (not b!5005865) (not b!5005713) (not bm!349436) (not d!1611084) (not d!1611044) (not b!5005775) (not b!5005554) (not b!5005660) (not b!5005348) (not b!5005724) (not b!5005624) (not b!5005812) (not b!5005870) (not b!5005784) (not b!5005666) (not d!1610890) (not b!5005567) (not d!1611098) (not b!5005220) (not b!5005835) (not b!5005595) (not b!5005283) (not b!5005340) (not b!5005439) (not d!1610928) (not bm!349410) (not b!5005599) (not b!5005569) (not b!5005580) (not d!1611056) (not b!5005187) (not b!5005162) (not b!5005521) (not b!5005839) (not b!5005445) (not b!5005499) (not b!5005225) (not bm!349430) (not d!1610888) (not b!5005695) (not b!5005817) (not b!5005898) (not b!5005726) (not b!5005341) (not b!5005230) (not b!5005577) (not b!5005526) (not d!1610948) (not b!5005601) (not b!5005485) (not b!5005496) (not b!5005718) (not bm!349420) (not d!1611146) (not b!5005451) (not b!5005159) (not bm!349418) (not b!5005563) (not b!5005889) (not d!1611000) (not b!5005560) (not d!1610934) (not d!1610960) (not d!1610918) (not b!5005804) (not b!5005895) (not d!1610842) (not d!1611110) (not b!5005843) (not b!5005869) (not d!1610982) (not b!5005791) (not b!5005764) (not b!5005533) (not b!5005498) (not b!5005793) (not b!5005846) (not d!1610976) (not b!5005155) (not b!5005854) (not b!5005627) (not b!5005886) (not d!1611128) (not d!1611172) (not b!5005600) (not b!5005154) (not b!5005179) (not b!5005514) (not b!5005427) (not b!5005556) (not b!5005768) (not d!1610910) (not b!5005497) (not b!5005752) (not b!5005803) (not b!5005413) (not b!5005770) (not b!5005184) (not b!5005837) (not bs!1186014) (not b!5005412) (not d!1611122) (not d!1611192) (not d!1611026) (not b!5005851) (not d!1611104) (not d!1611158) (not b!5005550) (not b!5005501) (not bm!349421) (not b!5005607) (not bm!349432) (not b!5005677) (not b!5005224) (not b!5005823) (not b!5005611) (not b!5005338) (not b!5005618) (not bm!349425) (not b!5005578) (not b!5005209) (not d!1611030) tp_is_empty!36587 (not b!5005879) (not b!5005475) (not b!5005246) (not b!5005773) (not b!5005243) (not b!5005331) (not b!5005528) (not d!1610864) (not b!5005783) (not d!1610970) (not b!5005391) (not d!1610852) (not b!5005509) (not b!5005776) (not b!5005206) (not b!5005414) (not b!5005868) (not b!5005144) (not bm!349435) (not b!5005551) (not b!5005820) (not d!1611054) (not b!5005693) (not b!5005479) (not b!5005426) (not b!5005170) (not b!5005500) (not b!5005524) (not b!5005373) (not b!5005643) (not b!5005631) (not b!5005808) (not setNonEmpty!28419) (not b!5005765) (not d!1610998) (not bm!349448) (not b!5005561) (not b!5005824) (not d!1611124) (not b!5005181) (not d!1610894) (not b!5005252) (not b!5005478) (not b!5005374) (not b!5005687) (not d!1610944) (not b!5005153) (not b!5005174) (not b!5005238) (not bm!349442) (not b!5005446) (not b!5005852) (not b!5005766) (not d!1611088) (not b!5005422) (not b!5005544) (not d!1611108) (not b!5005844) (not d!1611114) (not b!5005840) (not b!5005200) (not b!5005760) (not b!5005411) (not b!5005164) (not d!1611046) (not b!5005495) (not b!5005168) (not d!1610988) (not b!5005559) (not b!5005415) (not d!1611008) (not b!5005537) (not b!5005397) (not d!1610876) (not d!1611094) (not b!5005420) (not b!5005442) (not b!5005428) (not bm!349450) (not b!5005141) (not b!5005871) (not b!5005376) (not b!5005142) (not b!5005410) (not b!5005897) (not b!5005381) (not b!5005708) (not b!5005850) (not bm!349393) (not b!5005480) (not b!5005685) (not d!1610926) (not bm!349407) (not b!5005157) (not b!5005772) (not b!5005371) (not bm!349443) (not bm!349428) (not b!5005612) (not b!5005379) (not b!5005604) (not bm!349444) (not b!5005891) (not b!5005867) (not b_lambda!198619) (not b!5005769) (not b!5005628) (not b!5005573) (not b!5005834) (not b!5005552) (not b!5005754) (not d!1611032) (not b!5005449) (not b!5005248) (not b!5005515) (not b!5005699) (not b!5005710) (not b!5005254) (not b!5005786) (not b!5005186) (not b!5005236) (not d!1611072) (not b!5005675) (not d!1611112) (not b!5005745) (not b!5005807) (not b!5005780) (not b!5005689) (not bm!349431) (not d!1610850) (not bm!349419) (not b!5005579) (not bm!349408) (not b!5005603) (not b!5005455) (not d!1611130) (not b!5005878) (not b!5005388) (not b!5005201) (not b!5005732) (not b!5005629) (not d!1610892) (not b!5005465) (not bm!349404) (not b!5005825) (not b!5005872) (not b!5005774) (not d!1610938) (not b!5005811) (not b!5005880) (not b!5005893) (not d!1611102) (not b!5005222) (not b!5005730) (not b!5005464) (not d!1611014) (not b!5005762) (not b!5005809) (not b!5005608) (not b!5005821) (not b!5005816) (not b!5005458) (not b!5005148) (not b!5005715) (not bm!349392) (not b!5005801) (not b!5005681) (not b!5005655) (not b!5005575) (not b!5005548) (not b!5005596) (not b!5005516) (not b!5005859) (not b!5005183) (not bm!349446) (not b!5005228) (not d!1610874) (not b!5005352) (not b!5005815) (not b!5005706) (not b!5005690) (not b!5005519) (not b!5005369) (not b!5005888) (not b!5005240) (not b!5005429) (not b!5005691) (not b!5005622) (not b!5005356) (not b!5005779) (not bm!349447) (not bm!349438) (not b!5005361) (not b!5005211) (not d!1610862) (not b!5005758) (not bm!349433) (not d!1610956) (not b!5005396) (not b!5005590) (not b!5005203) (not b!5005805) (not bm!349423) (not b!5005664) (not d!1610958) (not b!5005819) (not b!5005746) (not bm!349441) (not b!5005221) (not d!1611126) (not d!1610912) (not b!5005782) (not b!5005623) (not bm!349429) (not b!5005712) (not b!5005635) (not d!1611118) (not b!5005866) (not b!5005848) (not b!5005350) (not b!5005566) (not b!5005382) (not b!5005790) (not b!5005418) (not bm!349411) (not b!5005697) (not b!5005683) (not b!5005253) (not b!5005678) (not b!5005894) (not b!5005856) (not b!5005778) (not b!5005858) (not b!5005140) (not bm!349440) (not d!1610986) (not bm!349437) (not bm!349434) (not d!1611148) (not b!5005546) (not d!1611212) (not bm!349403) (not b!5005884) (not b!5005632) (not b!5005873) (not b!5005799) (not d!1611214) (not b!5005542) (not b!5005731) (not b!5005649) (not bm!349445) (not b!5005813) (not b!5005494) (not b!5005651) (not b!5005324) (not b!5005792) (not b!5005096) (not b!5005847) (not b!5005215) (not b!5005443) (not d!1611018) (not d!1610980) (not b!5005208) (not d!1611040) (not b!5005326) (not b!5005721) (not d!1610968) (not b!5005636) (not b!5005205) (not b!5005493) (not b!5005741) (not b!5005549))
(check-sat)
