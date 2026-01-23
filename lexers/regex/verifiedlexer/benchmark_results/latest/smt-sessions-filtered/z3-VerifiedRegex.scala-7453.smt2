; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!395770 () Bool)

(assert start!395770)

(declare-fun b!4156347 () Bool)

(declare-fun b_free!119371 () Bool)

(declare-fun b_next!120075 () Bool)

(assert (=> b!4156347 (= b_free!119371 (not b_next!120075))))

(declare-fun tp!1267990 () Bool)

(declare-fun b_and!323733 () Bool)

(assert (=> b!4156347 (= tp!1267990 b_and!323733)))

(declare-fun b_free!119373 () Bool)

(declare-fun b_next!120077 () Bool)

(assert (=> b!4156347 (= b_free!119373 (not b_next!120077))))

(declare-fun tp!1267987 () Bool)

(declare-fun b_and!323735 () Bool)

(assert (=> b!4156347 (= tp!1267987 b_and!323735)))

(declare-fun b!4156359 () Bool)

(declare-fun b_free!119375 () Bool)

(declare-fun b_next!120079 () Bool)

(assert (=> b!4156359 (= b_free!119375 (not b_next!120079))))

(declare-fun tp!1267992 () Bool)

(declare-fun b_and!323737 () Bool)

(assert (=> b!4156359 (= tp!1267992 b_and!323737)))

(declare-fun b_free!119377 () Bool)

(declare-fun b_next!120081 () Bool)

(assert (=> b!4156359 (= b_free!119377 (not b_next!120081))))

(declare-fun tp!1267996 () Bool)

(declare-fun b_and!323739 () Bool)

(assert (=> b!4156359 (= tp!1267996 b_and!323739)))

(declare-fun b!4156350 () Bool)

(declare-fun b_free!119379 () Bool)

(declare-fun b_next!120083 () Bool)

(assert (=> b!4156350 (= b_free!119379 (not b_next!120083))))

(declare-fun tp!1267988 () Bool)

(declare-fun b_and!323741 () Bool)

(assert (=> b!4156350 (= tp!1267988 b_and!323741)))

(declare-fun b_free!119381 () Bool)

(declare-fun b_next!120085 () Bool)

(assert (=> b!4156350 (= b_free!119381 (not b_next!120085))))

(declare-fun tp!1267989 () Bool)

(declare-fun b_and!323743 () Bool)

(assert (=> b!4156350 (= tp!1267989 b_and!323743)))

(declare-fun e!2579274 () Bool)

(assert (=> b!4156347 (= e!2579274 (and tp!1267990 tp!1267987))))

(declare-fun res!1702248 () Bool)

(declare-fun e!2579278 () Bool)

(assert (=> start!395770 (=> (not res!1702248) (not e!2579278))))

(declare-datatypes ((LexerInterface!7067 0))(
  ( (LexerInterfaceExt!7064 (__x!27633 Int)) (Lexer!7065) )
))
(declare-fun thiss!26968 () LexerInterface!7067)

(get-info :version)

(assert (=> start!395770 (= res!1702248 ((_ is Lexer!7065) thiss!26968))))

(assert (=> start!395770 e!2579278))

(assert (=> start!395770 true))

(declare-fun e!2579272 () Bool)

(assert (=> start!395770 e!2579272))

(declare-fun e!2579276 () Bool)

(assert (=> start!395770 e!2579276))

(declare-fun e!2579270 () Bool)

(assert (=> start!395770 e!2579270))

(declare-fun b!4156348 () Bool)

(declare-fun tp!1267993 () Bool)

(declare-datatypes ((List!45412 0))(
  ( (Nil!45288) (Cons!45288 (h!50708 (_ BitVec 16)) (t!343443 List!45412)) )
))
(declare-datatypes ((TokenValue!7708 0))(
  ( (FloatLiteralValue!15416 (text!54401 List!45412)) (TokenValueExt!7707 (__x!27634 Int)) (Broken!38540 (value!233610 List!45412)) (Object!7831) (End!7708) (Def!7708) (Underscore!7708) (Match!7708) (Else!7708) (Error!7708) (Case!7708) (If!7708) (Extends!7708) (Abstract!7708) (Class!7708) (Val!7708) (DelimiterValue!15416 (del!7768 List!45412)) (KeywordValue!7714 (value!233611 List!45412)) (CommentValue!15416 (value!233612 List!45412)) (WhitespaceValue!15416 (value!233613 List!45412)) (IndentationValue!7708 (value!233614 List!45412)) (String!52289) (Int32!7708) (Broken!38541 (value!233615 List!45412)) (Boolean!7709) (Unit!64462) (OperatorValue!7711 (op!7768 List!45412)) (IdentifierValue!15416 (value!233616 List!45412)) (IdentifierValue!15417 (value!233617 List!45412)) (WhitespaceValue!15417 (value!233618 List!45412)) (True!15416) (False!15416) (Broken!38542 (value!233619 List!45412)) (Broken!38543 (value!233620 List!45412)) (True!15417) (RightBrace!7708) (RightBracket!7708) (Colon!7708) (Null!7708) (Comma!7708) (LeftBracket!7708) (False!15417) (LeftBrace!7708) (ImaginaryLiteralValue!7708 (text!54402 List!45412)) (StringLiteralValue!23124 (value!233621 List!45412)) (EOFValue!7708 (value!233622 List!45412)) (IdentValue!7708 (value!233623 List!45412)) (DelimiterValue!15417 (value!233624 List!45412)) (DedentValue!7708 (value!233625 List!45412)) (NewLineValue!7708 (value!233626 List!45412)) (IntegerValue!23124 (value!233627 (_ BitVec 32)) (text!54403 List!45412)) (IntegerValue!23125 (value!233628 Int) (text!54404 List!45412)) (Times!7708) (Or!7708) (Equal!7708) (Minus!7708) (Broken!38544 (value!233629 List!45412)) (And!7708) (Div!7708) (LessEqual!7708) (Mod!7708) (Concat!20091) (Not!7708) (Plus!7708) (SpaceValue!7708 (value!233630 List!45412)) (IntegerValue!23126 (value!233631 Int) (text!54405 List!45412)) (StringLiteralValue!23125 (text!54406 List!45412)) (FloatLiteralValue!15417 (text!54407 List!45412)) (BytesLiteralValue!7708 (value!233632 List!45412)) (CommentValue!15417 (value!233633 List!45412)) (StringLiteralValue!23126 (value!233634 List!45412)) (ErrorTokenValue!7708 (msg!7769 List!45412)) )
))
(declare-datatypes ((C!24952 0))(
  ( (C!24953 (val!14586 Int)) )
))
(declare-datatypes ((Regex!12383 0))(
  ( (ElementMatch!12383 (c!711436 C!24952)) (Concat!20092 (regOne!25278 Regex!12383) (regTwo!25278 Regex!12383)) (EmptyExpr!12383) (Star!12383 (reg!12712 Regex!12383)) (EmptyLang!12383) (Union!12383 (regOne!25279 Regex!12383) (regTwo!25279 Regex!12383)) )
))
(declare-datatypes ((List!45413 0))(
  ( (Nil!45289) (Cons!45289 (h!50709 C!24952) (t!343444 List!45413)) )
))
(declare-datatypes ((String!52290 0))(
  ( (String!52291 (value!233635 String)) )
))
(declare-datatypes ((IArray!27383 0))(
  ( (IArray!27384 (innerList!13749 List!45413)) )
))
(declare-datatypes ((Conc!13689 0))(
  ( (Node!13689 (left!33850 Conc!13689) (right!34180 Conc!13689) (csize!27608 Int) (cheight!13900 Int)) (Leaf!21143 (xs!16995 IArray!27383) (csize!27609 Int)) (Empty!13689) )
))
(declare-datatypes ((BalanceConc!26972 0))(
  ( (BalanceConc!26973 (c!711437 Conc!13689)) )
))
(declare-datatypes ((TokenValueInjection!14844 0))(
  ( (TokenValueInjection!14845 (toValue!10142 Int) (toChars!10001 Int)) )
))
(declare-datatypes ((Rule!14756 0))(
  ( (Rule!14757 (regex!7478 Regex!12383) (tag!8342 String!52290) (isSeparator!7478 Bool) (transformation!7478 TokenValueInjection!14844)) )
))
(declare-fun r1!615 () Rule!14756)

(declare-fun inv!59840 (String!52290) Bool)

(declare-fun inv!59842 (TokenValueInjection!14844) Bool)

(assert (=> b!4156348 (= e!2579276 (and tp!1267993 (inv!59840 (tag!8342 r1!615)) (inv!59842 (transformation!7478 r1!615)) e!2579274))))

(declare-fun b!4156349 () Bool)

(declare-fun res!1702250 () Bool)

(assert (=> b!4156349 (=> (not res!1702250) (not e!2579278))))

(declare-datatypes ((List!45414 0))(
  ( (Nil!45290) (Cons!45290 (h!50710 Rule!14756) (t!343445 List!45414)) )
))
(declare-fun rules!4102 () List!45414)

(declare-datatypes ((List!45415 0))(
  ( (Nil!45291) (Cons!45291 (h!50711 String!52290) (t!343446 List!45415)) )
))
(declare-fun noDuplicateTag!3055 (LexerInterface!7067 List!45414 List!45415) Bool)

(declare-fun noDuplicateTag$default$2!60 (LexerInterface!7067) List!45415)

(assert (=> b!4156349 (= res!1702250 (noDuplicateTag!3055 thiss!26968 rules!4102 (noDuplicateTag$default$2!60 thiss!26968)))))

(declare-fun e!2579275 () Bool)

(assert (=> b!4156350 (= e!2579275 (and tp!1267988 tp!1267989))))

(declare-fun b!4156351 () Bool)

(declare-fun e!2579271 () Bool)

(declare-fun tp!1267991 () Bool)

(assert (=> b!4156351 (= e!2579271 (and tp!1267991 (inv!59840 (tag!8342 (h!50710 rules!4102))) (inv!59842 (transformation!7478 (h!50710 rules!4102))) e!2579275))))

(declare-fun e!2579277 () Bool)

(declare-fun b!4156352 () Bool)

(declare-fun lt!1481501 () List!45415)

(declare-fun tail!6633 (List!45414) List!45414)

(assert (=> b!4156352 (= e!2579277 (not (noDuplicateTag!3055 thiss!26968 (tail!6633 rules!4102) lt!1481501)))))

(declare-fun b!4156353 () Bool)

(declare-fun e!2579266 () Bool)

(assert (=> b!4156353 (= e!2579278 e!2579266)))

(declare-fun res!1702251 () Bool)

(assert (=> b!4156353 (=> (not res!1702251) (not e!2579266))))

(declare-fun lt!1481502 () Rule!14756)

(assert (=> b!4156353 (= res!1702251 (not (= lt!1481502 r1!615)))))

(declare-fun head!8800 (List!45414) Rule!14756)

(assert (=> b!4156353 (= lt!1481502 (head!8800 rules!4102))))

(declare-fun e!2579267 () Bool)

(declare-fun r2!597 () Rule!14756)

(declare-fun b!4156354 () Bool)

(declare-fun tp!1267995 () Bool)

(assert (=> b!4156354 (= e!2579270 (and tp!1267995 (inv!59840 (tag!8342 r2!597)) (inv!59842 (transformation!7478 r2!597)) e!2579267))))

(declare-fun b!4156355 () Bool)

(declare-fun res!1702249 () Bool)

(assert (=> b!4156355 (=> (not res!1702249) (not e!2579278))))

(declare-fun contains!9187 (List!45414 Rule!14756) Bool)

(assert (=> b!4156355 (= res!1702249 (contains!9187 rules!4102 r1!615))))

(declare-fun b!4156356 () Bool)

(assert (=> b!4156356 (= e!2579266 e!2579277)))

(declare-fun res!1702247 () Bool)

(assert (=> b!4156356 (=> (not res!1702247) (not e!2579277))))

(declare-fun subseq!561 (List!45415 List!45415) Bool)

(assert (=> b!4156356 (= res!1702247 (subseq!561 Nil!45291 lt!1481501))))

(assert (=> b!4156356 (= lt!1481501 (Cons!45291 (tag!8342 lt!1481502) Nil!45291))))

(declare-fun b!4156357 () Bool)

(declare-fun tp!1267994 () Bool)

(assert (=> b!4156357 (= e!2579272 (and e!2579271 tp!1267994))))

(declare-fun b!4156358 () Bool)

(declare-fun res!1702246 () Bool)

(assert (=> b!4156358 (=> (not res!1702246) (not e!2579278))))

(declare-fun getIndex!820 (List!45414 Rule!14756) Int)

(assert (=> b!4156358 (= res!1702246 (< (getIndex!820 rules!4102 r1!615) (getIndex!820 rules!4102 r2!597)))))

(assert (=> b!4156359 (= e!2579267 (and tp!1267992 tp!1267996))))

(declare-fun b!4156360 () Bool)

(declare-fun res!1702245 () Bool)

(assert (=> b!4156360 (=> (not res!1702245) (not e!2579278))))

(assert (=> b!4156360 (= res!1702245 (contains!9187 rules!4102 r2!597))))

(assert (= (and start!395770 res!1702248) b!4156355))

(assert (= (and b!4156355 res!1702249) b!4156360))

(assert (= (and b!4156360 res!1702245) b!4156349))

(assert (= (and b!4156349 res!1702250) b!4156358))

(assert (= (and b!4156358 res!1702246) b!4156353))

(assert (= (and b!4156353 res!1702251) b!4156356))

(assert (= (and b!4156356 res!1702247) b!4156352))

(assert (= b!4156351 b!4156350))

(assert (= b!4156357 b!4156351))

(assert (= (and start!395770 ((_ is Cons!45290) rules!4102)) b!4156357))

(assert (= b!4156348 b!4156347))

(assert (= start!395770 b!4156348))

(assert (= b!4156354 b!4156359))

(assert (= start!395770 b!4156354))

(declare-fun m!4750501 () Bool)

(assert (=> b!4156351 m!4750501))

(declare-fun m!4750503 () Bool)

(assert (=> b!4156351 m!4750503))

(declare-fun m!4750505 () Bool)

(assert (=> b!4156349 m!4750505))

(assert (=> b!4156349 m!4750505))

(declare-fun m!4750507 () Bool)

(assert (=> b!4156349 m!4750507))

(declare-fun m!4750509 () Bool)

(assert (=> b!4156355 m!4750509))

(declare-fun m!4750511 () Bool)

(assert (=> b!4156360 m!4750511))

(declare-fun m!4750513 () Bool)

(assert (=> b!4156356 m!4750513))

(declare-fun m!4750515 () Bool)

(assert (=> b!4156352 m!4750515))

(assert (=> b!4156352 m!4750515))

(declare-fun m!4750517 () Bool)

(assert (=> b!4156352 m!4750517))

(declare-fun m!4750519 () Bool)

(assert (=> b!4156354 m!4750519))

(declare-fun m!4750521 () Bool)

(assert (=> b!4156354 m!4750521))

(declare-fun m!4750523 () Bool)

(assert (=> b!4156358 m!4750523))

(declare-fun m!4750525 () Bool)

(assert (=> b!4156358 m!4750525))

(declare-fun m!4750527 () Bool)

(assert (=> b!4156353 m!4750527))

(declare-fun m!4750529 () Bool)

(assert (=> b!4156348 m!4750529))

(declare-fun m!4750531 () Bool)

(assert (=> b!4156348 m!4750531))

(check-sat (not b_next!120077) (not b!4156358) (not b!4156355) (not b!4156348) (not b!4156353) (not b!4156354) b_and!323739 (not b!4156356) b_and!323743 (not b_next!120085) b_and!323737 b_and!323733 (not b_next!120083) (not b!4156360) (not b!4156349) b_and!323735 (not b_next!120075) (not b_next!120079) (not b!4156357) b_and!323741 (not b_next!120081) (not b!4156352) (not b!4156351))
(check-sat (not b_next!120077) (not b_next!120083) (not b_next!120079) b_and!323739 b_and!323743 (not b_next!120085) b_and!323737 b_and!323733 b_and!323735 (not b_next!120075) b_and!323741 (not b_next!120081))
(get-model)

(declare-fun b!4156374 () Bool)

(declare-fun e!2579287 () Int)

(assert (=> b!4156374 (= e!2579287 (- 1))))

(declare-fun b!4156373 () Bool)

(assert (=> b!4156373 (= e!2579287 (+ 1 (getIndex!820 (t!343445 rules!4102) r1!615)))))

(declare-fun d!1229018 () Bool)

(declare-fun lt!1481505 () Int)

(assert (=> d!1229018 (>= lt!1481505 0)))

(declare-fun e!2579286 () Int)

(assert (=> d!1229018 (= lt!1481505 e!2579286)))

(declare-fun c!711443 () Bool)

(assert (=> d!1229018 (= c!711443 (and ((_ is Cons!45290) rules!4102) (= (h!50710 rules!4102) r1!615)))))

(assert (=> d!1229018 (contains!9187 rules!4102 r1!615)))

(assert (=> d!1229018 (= (getIndex!820 rules!4102 r1!615) lt!1481505)))

(declare-fun b!4156371 () Bool)

(assert (=> b!4156371 (= e!2579286 0)))

(declare-fun b!4156372 () Bool)

(assert (=> b!4156372 (= e!2579286 e!2579287)))

(declare-fun c!711442 () Bool)

(assert (=> b!4156372 (= c!711442 (and ((_ is Cons!45290) rules!4102) (not (= (h!50710 rules!4102) r1!615))))))

(assert (= (and d!1229018 c!711443) b!4156371))

(assert (= (and d!1229018 (not c!711443)) b!4156372))

(assert (= (and b!4156372 c!711442) b!4156373))

(assert (= (and b!4156372 (not c!711442)) b!4156374))

(declare-fun m!4750533 () Bool)

(assert (=> b!4156373 m!4750533))

(assert (=> d!1229018 m!4750509))

(assert (=> b!4156358 d!1229018))

(declare-fun b!4156378 () Bool)

(declare-fun e!2579289 () Int)

(assert (=> b!4156378 (= e!2579289 (- 1))))

(declare-fun b!4156377 () Bool)

(assert (=> b!4156377 (= e!2579289 (+ 1 (getIndex!820 (t!343445 rules!4102) r2!597)))))

(declare-fun d!1229024 () Bool)

(declare-fun lt!1481506 () Int)

(assert (=> d!1229024 (>= lt!1481506 0)))

(declare-fun e!2579288 () Int)

(assert (=> d!1229024 (= lt!1481506 e!2579288)))

(declare-fun c!711445 () Bool)

(assert (=> d!1229024 (= c!711445 (and ((_ is Cons!45290) rules!4102) (= (h!50710 rules!4102) r2!597)))))

(assert (=> d!1229024 (contains!9187 rules!4102 r2!597)))

(assert (=> d!1229024 (= (getIndex!820 rules!4102 r2!597) lt!1481506)))

(declare-fun b!4156375 () Bool)

(assert (=> b!4156375 (= e!2579288 0)))

(declare-fun b!4156376 () Bool)

(assert (=> b!4156376 (= e!2579288 e!2579289)))

(declare-fun c!711444 () Bool)

(assert (=> b!4156376 (= c!711444 (and ((_ is Cons!45290) rules!4102) (not (= (h!50710 rules!4102) r2!597))))))

(assert (= (and d!1229024 c!711445) b!4156375))

(assert (= (and d!1229024 (not c!711445)) b!4156376))

(assert (= (and b!4156376 c!711444) b!4156377))

(assert (= (and b!4156376 (not c!711444)) b!4156378))

(declare-fun m!4750539 () Bool)

(assert (=> b!4156377 m!4750539))

(assert (=> d!1229024 m!4750511))

(assert (=> b!4156358 d!1229024))

(declare-fun d!1229028 () Bool)

(declare-fun res!1702270 () Bool)

(declare-fun e!2579300 () Bool)

(assert (=> d!1229028 (=> res!1702270 e!2579300)))

(assert (=> d!1229028 (= res!1702270 ((_ is Nil!45290) (tail!6633 rules!4102)))))

(assert (=> d!1229028 (= (noDuplicateTag!3055 thiss!26968 (tail!6633 rules!4102) lt!1481501) e!2579300)))

(declare-fun b!4156392 () Bool)

(declare-fun e!2579301 () Bool)

(assert (=> b!4156392 (= e!2579300 e!2579301)))

(declare-fun res!1702271 () Bool)

(assert (=> b!4156392 (=> (not res!1702271) (not e!2579301))))

(declare-fun contains!9188 (List!45415 String!52290) Bool)

(assert (=> b!4156392 (= res!1702271 (not (contains!9188 lt!1481501 (tag!8342 (h!50710 (tail!6633 rules!4102))))))))

(declare-fun b!4156393 () Bool)

(assert (=> b!4156393 (= e!2579301 (noDuplicateTag!3055 thiss!26968 (t!343445 (tail!6633 rules!4102)) (Cons!45291 (tag!8342 (h!50710 (tail!6633 rules!4102))) lt!1481501)))))

(assert (= (and d!1229028 (not res!1702270)) b!4156392))

(assert (= (and b!4156392 res!1702271) b!4156393))

(declare-fun m!4750541 () Bool)

(assert (=> b!4156392 m!4750541))

(declare-fun m!4750543 () Bool)

(assert (=> b!4156393 m!4750543))

(assert (=> b!4156352 d!1229028))

(declare-fun d!1229030 () Bool)

(assert (=> d!1229030 (= (tail!6633 rules!4102) (t!343445 rules!4102))))

(assert (=> b!4156352 d!1229030))

(declare-fun d!1229032 () Bool)

(assert (=> d!1229032 (= (inv!59840 (tag!8342 (h!50710 rules!4102))) (= (mod (str.len (value!233635 (tag!8342 (h!50710 rules!4102)))) 2) 0))))

(assert (=> b!4156351 d!1229032))

(declare-fun d!1229034 () Bool)

(declare-fun res!1702282 () Bool)

(declare-fun e!2579316 () Bool)

(assert (=> d!1229034 (=> (not res!1702282) (not e!2579316))))

(declare-fun semiInverseModEq!3243 (Int Int) Bool)

(assert (=> d!1229034 (= res!1702282 (semiInverseModEq!3243 (toChars!10001 (transformation!7478 (h!50710 rules!4102))) (toValue!10142 (transformation!7478 (h!50710 rules!4102)))))))

(assert (=> d!1229034 (= (inv!59842 (transformation!7478 (h!50710 rules!4102))) e!2579316)))

(declare-fun b!4156412 () Bool)

(declare-fun equivClasses!3142 (Int Int) Bool)

(assert (=> b!4156412 (= e!2579316 (equivClasses!3142 (toChars!10001 (transformation!7478 (h!50710 rules!4102))) (toValue!10142 (transformation!7478 (h!50710 rules!4102)))))))

(assert (= (and d!1229034 res!1702282) b!4156412))

(declare-fun m!4750549 () Bool)

(assert (=> d!1229034 m!4750549))

(declare-fun m!4750551 () Bool)

(assert (=> b!4156412 m!4750551))

(assert (=> b!4156351 d!1229034))

(declare-fun b!4156426 () Bool)

(declare-fun e!2579331 () Bool)

(declare-fun e!2579332 () Bool)

(assert (=> b!4156426 (= e!2579331 e!2579332)))

(declare-fun res!1702297 () Bool)

(assert (=> b!4156426 (=> res!1702297 e!2579332)))

(declare-fun e!2579330 () Bool)

(assert (=> b!4156426 (= res!1702297 e!2579330)))

(declare-fun res!1702295 () Bool)

(assert (=> b!4156426 (=> (not res!1702295) (not e!2579330))))

(assert (=> b!4156426 (= res!1702295 (= (h!50711 Nil!45291) (h!50711 lt!1481501)))))

(declare-fun b!4156425 () Bool)

(declare-fun e!2579329 () Bool)

(assert (=> b!4156425 (= e!2579329 e!2579331)))

(declare-fun res!1702296 () Bool)

(assert (=> b!4156425 (=> (not res!1702296) (not e!2579331))))

(assert (=> b!4156425 (= res!1702296 ((_ is Cons!45291) lt!1481501))))

(declare-fun b!4156428 () Bool)

(assert (=> b!4156428 (= e!2579332 (subseq!561 Nil!45291 (t!343446 lt!1481501)))))

(declare-fun d!1229040 () Bool)

(declare-fun res!1702298 () Bool)

(assert (=> d!1229040 (=> res!1702298 e!2579329)))

(assert (=> d!1229040 (= res!1702298 ((_ is Nil!45291) Nil!45291))))

(assert (=> d!1229040 (= (subseq!561 Nil!45291 lt!1481501) e!2579329)))

(declare-fun b!4156427 () Bool)

(assert (=> b!4156427 (= e!2579330 (subseq!561 (t!343446 Nil!45291) (t!343446 lt!1481501)))))

(assert (= (and d!1229040 (not res!1702298)) b!4156425))

(assert (= (and b!4156425 res!1702296) b!4156426))

(assert (= (and b!4156426 res!1702295) b!4156427))

(assert (= (and b!4156426 (not res!1702297)) b!4156428))

(declare-fun m!4750557 () Bool)

(assert (=> b!4156428 m!4750557))

(declare-fun m!4750559 () Bool)

(assert (=> b!4156427 m!4750559))

(assert (=> b!4156356 d!1229040))

(declare-fun d!1229046 () Bool)

(declare-fun lt!1481516 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7010 (List!45414) (InoxSet Rule!14756))

(assert (=> d!1229046 (= lt!1481516 (select (content!7010 rules!4102) r1!615))))

(declare-fun e!2579344 () Bool)

(assert (=> d!1229046 (= lt!1481516 e!2579344)))

(declare-fun res!1702310 () Bool)

(assert (=> d!1229046 (=> (not res!1702310) (not e!2579344))))

(assert (=> d!1229046 (= res!1702310 ((_ is Cons!45290) rules!4102))))

(assert (=> d!1229046 (= (contains!9187 rules!4102 r1!615) lt!1481516)))

(declare-fun b!4156440 () Bool)

(declare-fun e!2579345 () Bool)

(assert (=> b!4156440 (= e!2579344 e!2579345)))

(declare-fun res!1702311 () Bool)

(assert (=> b!4156440 (=> res!1702311 e!2579345)))

(assert (=> b!4156440 (= res!1702311 (= (h!50710 rules!4102) r1!615))))

(declare-fun b!4156441 () Bool)

(assert (=> b!4156441 (= e!2579345 (contains!9187 (t!343445 rules!4102) r1!615))))

(assert (= (and d!1229046 res!1702310) b!4156440))

(assert (= (and b!4156440 (not res!1702311)) b!4156441))

(declare-fun m!4750571 () Bool)

(assert (=> d!1229046 m!4750571))

(declare-fun m!4750573 () Bool)

(assert (=> d!1229046 m!4750573))

(declare-fun m!4750575 () Bool)

(assert (=> b!4156441 m!4750575))

(assert (=> b!4156355 d!1229046))

(declare-fun d!1229054 () Bool)

(declare-fun res!1702316 () Bool)

(declare-fun e!2579350 () Bool)

(assert (=> d!1229054 (=> res!1702316 e!2579350)))

(assert (=> d!1229054 (= res!1702316 ((_ is Nil!45290) rules!4102))))

(assert (=> d!1229054 (= (noDuplicateTag!3055 thiss!26968 rules!4102 (noDuplicateTag$default$2!60 thiss!26968)) e!2579350)))

(declare-fun b!4156446 () Bool)

(declare-fun e!2579351 () Bool)

(assert (=> b!4156446 (= e!2579350 e!2579351)))

(declare-fun res!1702317 () Bool)

(assert (=> b!4156446 (=> (not res!1702317) (not e!2579351))))

(assert (=> b!4156446 (= res!1702317 (not (contains!9188 (noDuplicateTag$default$2!60 thiss!26968) (tag!8342 (h!50710 rules!4102)))))))

(declare-fun b!4156447 () Bool)

(assert (=> b!4156447 (= e!2579351 (noDuplicateTag!3055 thiss!26968 (t!343445 rules!4102) (Cons!45291 (tag!8342 (h!50710 rules!4102)) (noDuplicateTag$default$2!60 thiss!26968))))))

(assert (= (and d!1229054 (not res!1702316)) b!4156446))

(assert (= (and b!4156446 res!1702317) b!4156447))

(assert (=> b!4156446 m!4750505))

(declare-fun m!4750577 () Bool)

(assert (=> b!4156446 m!4750577))

(declare-fun m!4750579 () Bool)

(assert (=> b!4156447 m!4750579))

(assert (=> b!4156349 d!1229054))

(declare-fun d!1229056 () Bool)

(assert (=> d!1229056 (= (noDuplicateTag$default$2!60 thiss!26968) Nil!45291)))

(assert (=> b!4156349 d!1229056))

(declare-fun d!1229058 () Bool)

(declare-fun lt!1481517 () Bool)

(assert (=> d!1229058 (= lt!1481517 (select (content!7010 rules!4102) r2!597))))

(declare-fun e!2579354 () Bool)

(assert (=> d!1229058 (= lt!1481517 e!2579354)))

(declare-fun res!1702320 () Bool)

(assert (=> d!1229058 (=> (not res!1702320) (not e!2579354))))

(assert (=> d!1229058 (= res!1702320 ((_ is Cons!45290) rules!4102))))

(assert (=> d!1229058 (= (contains!9187 rules!4102 r2!597) lt!1481517)))

(declare-fun b!4156450 () Bool)

(declare-fun e!2579355 () Bool)

(assert (=> b!4156450 (= e!2579354 e!2579355)))

(declare-fun res!1702321 () Bool)

(assert (=> b!4156450 (=> res!1702321 e!2579355)))

(assert (=> b!4156450 (= res!1702321 (= (h!50710 rules!4102) r2!597))))

(declare-fun b!4156451 () Bool)

(assert (=> b!4156451 (= e!2579355 (contains!9187 (t!343445 rules!4102) r2!597))))

(assert (= (and d!1229058 res!1702320) b!4156450))

(assert (= (and b!4156450 (not res!1702321)) b!4156451))

(assert (=> d!1229058 m!4750571))

(declare-fun m!4750581 () Bool)

(assert (=> d!1229058 m!4750581))

(declare-fun m!4750583 () Bool)

(assert (=> b!4156451 m!4750583))

(assert (=> b!4156360 d!1229058))

(declare-fun d!1229060 () Bool)

(assert (=> d!1229060 (= (inv!59840 (tag!8342 r2!597)) (= (mod (str.len (value!233635 (tag!8342 r2!597))) 2) 0))))

(assert (=> b!4156354 d!1229060))

(declare-fun d!1229062 () Bool)

(declare-fun res!1702322 () Bool)

(declare-fun e!2579356 () Bool)

(assert (=> d!1229062 (=> (not res!1702322) (not e!2579356))))

(assert (=> d!1229062 (= res!1702322 (semiInverseModEq!3243 (toChars!10001 (transformation!7478 r2!597)) (toValue!10142 (transformation!7478 r2!597))))))

(assert (=> d!1229062 (= (inv!59842 (transformation!7478 r2!597)) e!2579356)))

(declare-fun b!4156452 () Bool)

(assert (=> b!4156452 (= e!2579356 (equivClasses!3142 (toChars!10001 (transformation!7478 r2!597)) (toValue!10142 (transformation!7478 r2!597))))))

(assert (= (and d!1229062 res!1702322) b!4156452))

(declare-fun m!4750589 () Bool)

(assert (=> d!1229062 m!4750589))

(declare-fun m!4750591 () Bool)

(assert (=> b!4156452 m!4750591))

(assert (=> b!4156354 d!1229062))

(declare-fun d!1229066 () Bool)

(assert (=> d!1229066 (= (head!8800 rules!4102) (h!50710 rules!4102))))

(assert (=> b!4156353 d!1229066))

(declare-fun d!1229074 () Bool)

(assert (=> d!1229074 (= (inv!59840 (tag!8342 r1!615)) (= (mod (str.len (value!233635 (tag!8342 r1!615))) 2) 0))))

(assert (=> b!4156348 d!1229074))

(declare-fun d!1229076 () Bool)

(declare-fun res!1702326 () Bool)

(declare-fun e!2579360 () Bool)

(assert (=> d!1229076 (=> (not res!1702326) (not e!2579360))))

(assert (=> d!1229076 (= res!1702326 (semiInverseModEq!3243 (toChars!10001 (transformation!7478 r1!615)) (toValue!10142 (transformation!7478 r1!615))))))

(assert (=> d!1229076 (= (inv!59842 (transformation!7478 r1!615)) e!2579360)))

(declare-fun b!4156456 () Bool)

(assert (=> b!4156456 (= e!2579360 (equivClasses!3142 (toChars!10001 (transformation!7478 r1!615)) (toValue!10142 (transformation!7478 r1!615))))))

(assert (= (and d!1229076 res!1702326) b!4156456))

(declare-fun m!4750597 () Bool)

(assert (=> d!1229076 m!4750597))

(declare-fun m!4750601 () Bool)

(assert (=> b!4156456 m!4750601))

(assert (=> b!4156348 d!1229076))

(declare-fun b!4156479 () Bool)

(declare-fun b_free!119383 () Bool)

(declare-fun b_next!120087 () Bool)

(assert (=> b!4156479 (= b_free!119383 (not b_next!120087))))

(declare-fun tp!1268016 () Bool)

(declare-fun b_and!323745 () Bool)

(assert (=> b!4156479 (= tp!1268016 b_and!323745)))

(declare-fun b_free!119385 () Bool)

(declare-fun b_next!120089 () Bool)

(assert (=> b!4156479 (= b_free!119385 (not b_next!120089))))

(declare-fun tp!1268015 () Bool)

(declare-fun b_and!323747 () Bool)

(assert (=> b!4156479 (= tp!1268015 b_and!323747)))

(declare-fun e!2579373 () Bool)

(assert (=> b!4156479 (= e!2579373 (and tp!1268016 tp!1268015))))

(declare-fun b!4156478 () Bool)

(declare-fun tp!1268017 () Bool)

(declare-fun e!2579374 () Bool)

(assert (=> b!4156478 (= e!2579374 (and tp!1268017 (inv!59840 (tag!8342 (h!50710 (t!343445 rules!4102)))) (inv!59842 (transformation!7478 (h!50710 (t!343445 rules!4102)))) e!2579373))))

(declare-fun b!4156477 () Bool)

(declare-fun e!2579375 () Bool)

(declare-fun tp!1268018 () Bool)

(assert (=> b!4156477 (= e!2579375 (and e!2579374 tp!1268018))))

(assert (=> b!4156357 (= tp!1267994 e!2579375)))

(assert (= b!4156478 b!4156479))

(assert (= b!4156477 b!4156478))

(assert (= (and b!4156357 ((_ is Cons!45290) (t!343445 rules!4102))) b!4156477))

(declare-fun m!4750609 () Bool)

(assert (=> b!4156478 m!4750609))

(declare-fun m!4750611 () Bool)

(assert (=> b!4156478 m!4750611))

(declare-fun b!4156502 () Bool)

(declare-fun e!2579388 () Bool)

(declare-fun tp_is_empty!21653 () Bool)

(assert (=> b!4156502 (= e!2579388 tp_is_empty!21653)))

(declare-fun b!4156504 () Bool)

(declare-fun tp!1268044 () Bool)

(assert (=> b!4156504 (= e!2579388 tp!1268044)))

(declare-fun b!4156505 () Bool)

(declare-fun tp!1268045 () Bool)

(declare-fun tp!1268046 () Bool)

(assert (=> b!4156505 (= e!2579388 (and tp!1268045 tp!1268046))))

(assert (=> b!4156351 (= tp!1267991 e!2579388)))

(declare-fun b!4156503 () Bool)

(declare-fun tp!1268042 () Bool)

(declare-fun tp!1268043 () Bool)

(assert (=> b!4156503 (= e!2579388 (and tp!1268042 tp!1268043))))

(assert (= (and b!4156351 ((_ is ElementMatch!12383) (regex!7478 (h!50710 rules!4102)))) b!4156502))

(assert (= (and b!4156351 ((_ is Concat!20092) (regex!7478 (h!50710 rules!4102)))) b!4156503))

(assert (= (and b!4156351 ((_ is Star!12383) (regex!7478 (h!50710 rules!4102)))) b!4156504))

(assert (= (and b!4156351 ((_ is Union!12383) (regex!7478 (h!50710 rules!4102)))) b!4156505))

(declare-fun b!4156506 () Bool)

(declare-fun e!2579389 () Bool)

(assert (=> b!4156506 (= e!2579389 tp_is_empty!21653)))

(declare-fun b!4156508 () Bool)

(declare-fun tp!1268049 () Bool)

(assert (=> b!4156508 (= e!2579389 tp!1268049)))

(declare-fun b!4156509 () Bool)

(declare-fun tp!1268050 () Bool)

(declare-fun tp!1268051 () Bool)

(assert (=> b!4156509 (= e!2579389 (and tp!1268050 tp!1268051))))

(assert (=> b!4156354 (= tp!1267995 e!2579389)))

(declare-fun b!4156507 () Bool)

(declare-fun tp!1268047 () Bool)

(declare-fun tp!1268048 () Bool)

(assert (=> b!4156507 (= e!2579389 (and tp!1268047 tp!1268048))))

(assert (= (and b!4156354 ((_ is ElementMatch!12383) (regex!7478 r2!597))) b!4156506))

(assert (= (and b!4156354 ((_ is Concat!20092) (regex!7478 r2!597))) b!4156507))

(assert (= (and b!4156354 ((_ is Star!12383) (regex!7478 r2!597))) b!4156508))

(assert (= (and b!4156354 ((_ is Union!12383) (regex!7478 r2!597))) b!4156509))

(declare-fun b!4156510 () Bool)

(declare-fun e!2579390 () Bool)

(assert (=> b!4156510 (= e!2579390 tp_is_empty!21653)))

(declare-fun b!4156512 () Bool)

(declare-fun tp!1268054 () Bool)

(assert (=> b!4156512 (= e!2579390 tp!1268054)))

(declare-fun b!4156513 () Bool)

(declare-fun tp!1268055 () Bool)

(declare-fun tp!1268056 () Bool)

(assert (=> b!4156513 (= e!2579390 (and tp!1268055 tp!1268056))))

(assert (=> b!4156348 (= tp!1267993 e!2579390)))

(declare-fun b!4156511 () Bool)

(declare-fun tp!1268052 () Bool)

(declare-fun tp!1268053 () Bool)

(assert (=> b!4156511 (= e!2579390 (and tp!1268052 tp!1268053))))

(assert (= (and b!4156348 ((_ is ElementMatch!12383) (regex!7478 r1!615))) b!4156510))

(assert (= (and b!4156348 ((_ is Concat!20092) (regex!7478 r1!615))) b!4156511))

(assert (= (and b!4156348 ((_ is Star!12383) (regex!7478 r1!615))) b!4156512))

(assert (= (and b!4156348 ((_ is Union!12383) (regex!7478 r1!615))) b!4156513))

(check-sat (not b_next!120089) (not b!4156512) (not d!1229058) (not b!4156503) (not b!4156412) b_and!323745 tp_is_empty!21653 (not b!4156427) (not b!4156511) (not b!4156447) (not b!4156513) (not b!4156505) (not b!4156373) (not b_next!120077) b_and!323743 (not b_next!120085) (not b_next!120087) (not b!4156393) b_and!323733 (not d!1229034) b_and!323737 (not b_next!120083) (not b!4156377) b_and!323747 b_and!323735 (not b_next!120075) (not b!4156452) (not b!4156477) (not b!4156451) (not d!1229046) (not b!4156478) (not b!4156446) (not d!1229024) (not b_next!120079) (not b!4156504) (not d!1229062) (not d!1229076) (not b!4156441) (not b!4156392) (not b!4156428) b_and!323741 (not b_next!120081) (not b!4156508) (not b!4156456) (not d!1229018) (not b!4156509) (not b!4156507) b_and!323739)
(check-sat (not b_next!120077) (not b_next!120089) (not b_next!120087) (not b_next!120083) b_and!323745 (not b_next!120079) b_and!323739 b_and!323743 (not b_next!120085) b_and!323737 b_and!323733 b_and!323747 b_and!323735 (not b_next!120075) b_and!323741 (not b_next!120081))
