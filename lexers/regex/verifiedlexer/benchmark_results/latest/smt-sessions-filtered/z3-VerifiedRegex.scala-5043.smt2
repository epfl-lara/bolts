; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!255610 () Bool)

(assert start!255610)

(declare-fun b!2628354 () Bool)

(declare-fun b_free!73949 () Bool)

(declare-fun b_next!74653 () Bool)

(assert (=> b!2628354 (= b_free!73949 (not b_next!74653))))

(declare-fun tp!833294 () Bool)

(declare-fun b_and!192507 () Bool)

(assert (=> b!2628354 (= tp!833294 b_and!192507)))

(declare-fun b_free!73951 () Bool)

(declare-fun b_next!74655 () Bool)

(assert (=> b!2628354 (= b_free!73951 (not b_next!74655))))

(declare-fun tp!833296 () Bool)

(declare-fun b_and!192509 () Bool)

(assert (=> b!2628354 (= tp!833296 b_and!192509)))

(declare-fun b!2628362 () Bool)

(declare-fun b_free!73953 () Bool)

(declare-fun b_next!74657 () Bool)

(assert (=> b!2628362 (= b_free!73953 (not b_next!74657))))

(declare-fun tp!833301 () Bool)

(declare-fun b_and!192511 () Bool)

(assert (=> b!2628362 (= tp!833301 b_and!192511)))

(declare-fun b_free!73955 () Bool)

(declare-fun b_next!74659 () Bool)

(assert (=> b!2628362 (= b_free!73955 (not b_next!74659))))

(declare-fun tp!833300 () Bool)

(declare-fun b_and!192513 () Bool)

(assert (=> b!2628362 (= tp!833300 b_and!192513)))

(declare-fun bs!475657 () Bool)

(declare-fun b!2628360 () Bool)

(declare-fun b!2628357 () Bool)

(assert (= bs!475657 (and b!2628360 b!2628357)))

(declare-fun lambda!98462 () Int)

(declare-fun lambda!98461 () Int)

(assert (=> bs!475657 (not (= lambda!98462 lambda!98461))))

(declare-fun b!2628378 () Bool)

(declare-fun e!1658198 () Bool)

(assert (=> b!2628378 (= e!1658198 true)))

(declare-fun b!2628377 () Bool)

(declare-fun e!1658197 () Bool)

(assert (=> b!2628377 (= e!1658197 e!1658198)))

(declare-fun b!2628376 () Bool)

(declare-fun e!1658196 () Bool)

(assert (=> b!2628376 (= e!1658196 e!1658197)))

(assert (=> b!2628360 e!1658196))

(assert (= b!2628377 b!2628378))

(assert (= b!2628376 b!2628377))

(declare-datatypes ((List!30465 0))(
  ( (Nil!30365) (Cons!30365 (h!35785 (_ BitVec 16)) (t!216130 List!30465)) )
))
(declare-datatypes ((C!15660 0))(
  ( (C!15661 (val!9764 Int)) )
))
(declare-datatypes ((TokenValue!4829 0))(
  ( (FloatLiteralValue!9658 (text!34248 List!30465)) (TokenValueExt!4828 (__x!19491 Int)) (Broken!24145 (value!148878 List!30465)) (Object!4928) (End!4829) (Def!4829) (Underscore!4829) (Match!4829) (Else!4829) (Error!4829) (Case!4829) (If!4829) (Extends!4829) (Abstract!4829) (Class!4829) (Val!4829) (DelimiterValue!9658 (del!4889 List!30465)) (KeywordValue!4835 (value!148879 List!30465)) (CommentValue!9658 (value!148880 List!30465)) (WhitespaceValue!9658 (value!148881 List!30465)) (IndentationValue!4829 (value!148882 List!30465)) (String!34028) (Int32!4829) (Broken!24146 (value!148883 List!30465)) (Boolean!4830) (Unit!44406) (OperatorValue!4832 (op!4889 List!30465)) (IdentifierValue!9658 (value!148884 List!30465)) (IdentifierValue!9659 (value!148885 List!30465)) (WhitespaceValue!9659 (value!148886 List!30465)) (True!9658) (False!9658) (Broken!24147 (value!148887 List!30465)) (Broken!24148 (value!148888 List!30465)) (True!9659) (RightBrace!4829) (RightBracket!4829) (Colon!4829) (Null!4829) (Comma!4829) (LeftBracket!4829) (False!9659) (LeftBrace!4829) (ImaginaryLiteralValue!4829 (text!34249 List!30465)) (StringLiteralValue!14487 (value!148889 List!30465)) (EOFValue!4829 (value!148890 List!30465)) (IdentValue!4829 (value!148891 List!30465)) (DelimiterValue!9659 (value!148892 List!30465)) (DedentValue!4829 (value!148893 List!30465)) (NewLineValue!4829 (value!148894 List!30465)) (IntegerValue!14487 (value!148895 (_ BitVec 32)) (text!34250 List!30465)) (IntegerValue!14488 (value!148896 Int) (text!34251 List!30465)) (Times!4829) (Or!4829) (Equal!4829) (Minus!4829) (Broken!24149 (value!148897 List!30465)) (And!4829) (Div!4829) (LessEqual!4829) (Mod!4829) (Concat!12580) (Not!4829) (Plus!4829) (SpaceValue!4829 (value!148898 List!30465)) (IntegerValue!14489 (value!148899 Int) (text!34252 List!30465)) (StringLiteralValue!14488 (text!34253 List!30465)) (FloatLiteralValue!9659 (text!34254 List!30465)) (BytesLiteralValue!4829 (value!148900 List!30465)) (CommentValue!9659 (value!148901 List!30465)) (StringLiteralValue!14489 (value!148902 List!30465)) (ErrorTokenValue!4829 (msg!4890 List!30465)) )
))
(declare-datatypes ((List!30466 0))(
  ( (Nil!30366) (Cons!30366 (h!35786 C!15660) (t!216131 List!30466)) )
))
(declare-datatypes ((IArray!18917 0))(
  ( (IArray!18918 (innerList!9516 List!30466)) )
))
(declare-datatypes ((Conc!9456 0))(
  ( (Node!9456 (left!23419 Conc!9456) (right!23749 Conc!9456) (csize!19142 Int) (cheight!9667 Int)) (Leaf!14500 (xs!12456 IArray!18917) (csize!19143 Int)) (Empty!9456) )
))
(declare-datatypes ((BalanceConc!18526 0))(
  ( (BalanceConc!18527 (c!422772 Conc!9456)) )
))
(declare-datatypes ((TokenValueInjection!9098 0))(
  ( (TokenValueInjection!9099 (toValue!6521 Int) (toChars!6380 Int)) )
))
(declare-datatypes ((Regex!7751 0))(
  ( (ElementMatch!7751 (c!422773 C!15660)) (Concat!12581 (regOne!16014 Regex!7751) (regTwo!16014 Regex!7751)) (EmptyExpr!7751) (Star!7751 (reg!8080 Regex!7751)) (EmptyLang!7751) (Union!7751 (regOne!16015 Regex!7751) (regTwo!16015 Regex!7751)) )
))
(declare-datatypes ((String!34029 0))(
  ( (String!34030 (value!148903 String)) )
))
(declare-datatypes ((Rule!9014 0))(
  ( (Rule!9015 (regex!4607 Regex!7751) (tag!5101 String!34029) (isSeparator!4607 Bool) (transformation!4607 TokenValueInjection!9098)) )
))
(declare-datatypes ((List!30467 0))(
  ( (Nil!30367) (Cons!30367 (h!35787 Rule!9014) (t!216132 List!30467)) )
))
(declare-fun rules!1726 () List!30467)

(get-info :version)

(assert (= (and b!2628360 ((_ is Cons!30367) rules!1726)) b!2628376))

(declare-fun order!16343 () Int)

(declare-fun order!16345 () Int)

(declare-fun dynLambda!12963 (Int Int) Int)

(declare-fun dynLambda!12964 (Int Int) Int)

(assert (=> b!2628378 (< (dynLambda!12963 order!16343 (toValue!6521 (transformation!4607 (h!35787 rules!1726)))) (dynLambda!12964 order!16345 lambda!98462))))

(declare-fun order!16347 () Int)

(declare-fun dynLambda!12965 (Int Int) Int)

(assert (=> b!2628378 (< (dynLambda!12965 order!16347 (toChars!6380 (transformation!4607 (h!35787 rules!1726)))) (dynLambda!12964 order!16345 lambda!98462))))

(assert (=> b!2628360 true))

(declare-fun e!1658175 () Bool)

(declare-fun b!2628347 () Bool)

(declare-datatypes ((Token!8684 0))(
  ( (Token!8685 (value!148904 TokenValue!4829) (rule!6989 Rule!9014) (size!23496 Int) (originalCharacters!5373 List!30466)) )
))
(declare-fun separatorToken!156 () Token!8684)

(declare-fun tp!833298 () Bool)

(declare-fun e!1658188 () Bool)

(declare-fun inv!41148 (String!34029) Bool)

(declare-fun inv!41153 (TokenValueInjection!9098) Bool)

(assert (=> b!2628347 (= e!1658188 (and tp!833298 (inv!41148 (tag!5101 (rule!6989 separatorToken!156))) (inv!41153 (transformation!4607 (rule!6989 separatorToken!156))) e!1658175))))

(declare-fun b!2628348 () Bool)

(declare-fun res!1106360 () Bool)

(declare-fun e!1658180 () Bool)

(assert (=> b!2628348 (=> res!1106360 e!1658180)))

(declare-datatypes ((List!30468 0))(
  ( (Nil!30368) (Cons!30368 (h!35788 Token!8684) (t!216133 List!30468)) )
))
(declare-fun lt!924476 () List!30468)

(declare-fun lt!924480 () Token!8684)

(declare-fun contains!5716 (List!30468 Token!8684) Bool)

(assert (=> b!2628348 (= res!1106360 (not (contains!5716 lt!924476 lt!924480)))))

(declare-fun b!2628349 () Bool)

(declare-fun e!1658179 () Bool)

(declare-datatypes ((IArray!18919 0))(
  ( (IArray!18920 (innerList!9517 List!30468)) )
))
(declare-datatypes ((Conc!9457 0))(
  ( (Node!9457 (left!23420 Conc!9457) (right!23750 Conc!9457) (csize!19144 Int) (cheight!9668 Int)) (Leaf!14501 (xs!12457 IArray!18919) (csize!19145 Int)) (Empty!9457) )
))
(declare-datatypes ((BalanceConc!18528 0))(
  ( (BalanceConc!18529 (c!422774 Conc!9457)) )
))
(declare-fun v!6381 () BalanceConc!18528)

(declare-fun tp!833297 () Bool)

(declare-fun inv!41154 (Conc!9457) Bool)

(assert (=> b!2628349 (= e!1658179 (and (inv!41154 (c!422774 v!6381)) tp!833297))))

(declare-fun tp!833295 () Bool)

(declare-fun e!1658177 () Bool)

(declare-fun b!2628350 () Bool)

(declare-fun inv!21 (TokenValue!4829) Bool)

(assert (=> b!2628350 (= e!1658177 (and (inv!21 (value!148904 separatorToken!156)) e!1658188 tp!833295))))

(declare-fun b!2628351 () Bool)

(declare-fun res!1106363 () Bool)

(declare-fun e!1658187 () Bool)

(assert (=> b!2628351 (=> (not res!1106363) (not e!1658187))))

(assert (=> b!2628351 (= res!1106363 (isSeparator!4607 (rule!6989 separatorToken!156)))))

(declare-fun b!2628352 () Bool)

(declare-fun e!1658174 () Bool)

(declare-fun e!1658183 () Bool)

(assert (=> b!2628352 (= e!1658174 e!1658183)))

(declare-fun res!1106361 () Bool)

(assert (=> b!2628352 (=> res!1106361 e!1658183)))

(declare-datatypes ((LexerInterface!4204 0))(
  ( (LexerInterfaceExt!4201 (__x!19492 Int)) (Lexer!4202) )
))
(declare-fun thiss!14197 () LexerInterface!4204)

(declare-fun lt!924474 () BalanceConc!18526)

(declare-fun list!11406 (BalanceConc!18526) List!30466)

(declare-fun printList!1144 (LexerInterface!4204 List!30468) List!30466)

(assert (=> b!2628352 (= res!1106361 (not (= (list!11406 lt!924474) (printList!1144 thiss!14197 (Cons!30368 lt!924480 Nil!30368)))))))

(declare-fun lt!924471 () BalanceConc!18528)

(declare-fun printTailRec!1103 (LexerInterface!4204 BalanceConc!18528 Int BalanceConc!18526) BalanceConc!18526)

(assert (=> b!2628352 (= lt!924474 (printTailRec!1103 thiss!14197 lt!924471 0 (BalanceConc!18527 Empty!9456)))))

(declare-fun print!1614 (LexerInterface!4204 BalanceConc!18528) BalanceConc!18526)

(assert (=> b!2628352 (= lt!924474 (print!1614 thiss!14197 lt!924471))))

(declare-fun singletonSeq!2033 (Token!8684) BalanceConc!18528)

(assert (=> b!2628352 (= lt!924471 (singletonSeq!2033 lt!924480))))

(declare-fun b!2628353 () Bool)

(declare-fun res!1106352 () Bool)

(assert (=> b!2628353 (=> (not res!1106352) (not e!1658187))))

(declare-fun rulesProduceIndividualToken!1916 (LexerInterface!4204 List!30467 Token!8684) Bool)

(assert (=> b!2628353 (= res!1106352 (rulesProduceIndividualToken!1916 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun e!1658189 () Bool)

(assert (=> b!2628354 (= e!1658189 (and tp!833294 tp!833296))))

(declare-fun res!1106357 () Bool)

(declare-fun e!1658178 () Bool)

(assert (=> start!255610 (=> (not res!1106357) (not e!1658178))))

(declare-fun from!862 () Int)

(assert (=> start!255610 (= res!1106357 (and ((_ is Lexer!4202) thiss!14197) (>= from!862 0)))))

(assert (=> start!255610 e!1658178))

(assert (=> start!255610 true))

(declare-fun e!1658176 () Bool)

(assert (=> start!255610 e!1658176))

(declare-fun inv!41155 (Token!8684) Bool)

(assert (=> start!255610 (and (inv!41155 separatorToken!156) e!1658177)))

(declare-fun inv!41156 (BalanceConc!18528) Bool)

(assert (=> start!255610 (and (inv!41156 v!6381) e!1658179)))

(declare-fun b!2628355 () Bool)

(declare-fun res!1106359 () Bool)

(assert (=> b!2628355 (=> (not res!1106359) (not e!1658187))))

(declare-fun isEmpty!17340 (List!30467) Bool)

(assert (=> b!2628355 (= res!1106359 (not (isEmpty!17340 rules!1726)))))

(declare-fun b!2628356 () Bool)

(declare-fun res!1106362 () Bool)

(assert (=> b!2628356 (=> (not res!1106362) (not e!1658187))))

(declare-fun rulesProduceEachTokenIndividually!1024 (LexerInterface!4204 List!30467 BalanceConc!18528) Bool)

(assert (=> b!2628356 (= res!1106362 (rulesProduceEachTokenIndividually!1024 thiss!14197 rules!1726 v!6381))))

(declare-fun res!1106354 () Bool)

(assert (=> b!2628357 (=> (not res!1106354) (not e!1658187))))

(declare-fun forall!6339 (BalanceConc!18528 Int) Bool)

(assert (=> b!2628357 (= res!1106354 (forall!6339 v!6381 lambda!98461))))

(declare-fun b!2628358 () Bool)

(declare-fun res!1106356 () Bool)

(assert (=> b!2628358 (=> (not res!1106356) (not e!1658187))))

(declare-fun rulesInvariant!3704 (LexerInterface!4204 List!30467) Bool)

(assert (=> b!2628358 (= res!1106356 (rulesInvariant!3704 thiss!14197 rules!1726))))

(declare-fun b!2628359 () Bool)

(declare-fun e!1658184 () Bool)

(declare-fun tp!833302 () Bool)

(assert (=> b!2628359 (= e!1658176 (and e!1658184 tp!833302))))

(assert (=> b!2628360 (= e!1658180 e!1658174)))

(declare-fun res!1106350 () Bool)

(assert (=> b!2628360 (=> res!1106350 e!1658174)))

(declare-fun lt!924473 () Bool)

(declare-datatypes ((tuple2!29908 0))(
  ( (tuple2!29909 (_1!17496 Token!8684) (_2!17496 BalanceConc!18526)) )
))
(declare-datatypes ((Option!5998 0))(
  ( (None!5997) (Some!5997 (v!32384 tuple2!29908)) )
))
(declare-fun lt!924472 () Option!5998)

(assert (=> b!2628360 (= res!1106350 (or (and (not lt!924473) (= (_1!17496 (v!32384 lt!924472)) lt!924480)) (and (not lt!924473) (not (= (_1!17496 (v!32384 lt!924472)) lt!924480))) (not ((_ is None!5997) lt!924472))))))

(assert (=> b!2628360 (= lt!924473 (not ((_ is Some!5997) lt!924472)))))

(declare-fun maxPrefixZipperSequence!934 (LexerInterface!4204 List!30467 BalanceConc!18526) Option!5998)

(declare-fun ++!7393 (BalanceConc!18526 BalanceConc!18526) BalanceConc!18526)

(declare-fun charsOf!2898 (Token!8684) BalanceConc!18526)

(declare-fun printWithSeparatorTokenWhenNeededRec!482 (LexerInterface!4204 List!30467 BalanceConc!18528 Token!8684 Int) BalanceConc!18526)

(assert (=> b!2628360 (= lt!924472 (maxPrefixZipperSequence!934 thiss!14197 rules!1726 (++!7393 (charsOf!2898 lt!924480) (printWithSeparatorTokenWhenNeededRec!482 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))

(declare-datatypes ((Unit!44407 0))(
  ( (Unit!44408) )
))
(declare-fun lt!924478 () Unit!44407)

(declare-fun forallContained!963 (List!30468 Int Token!8684) Unit!44407)

(assert (=> b!2628360 (= lt!924478 (forallContained!963 lt!924476 lambda!98462 lt!924480))))

(declare-fun b!2628361 () Bool)

(declare-fun e!1658185 () Bool)

(assert (=> b!2628361 (= e!1658187 e!1658185)))

(declare-fun res!1106355 () Bool)

(assert (=> b!2628361 (=> (not res!1106355) (not e!1658185))))

(declare-fun lt!924477 () Int)

(assert (=> b!2628361 (= res!1106355 (< from!862 lt!924477))))

(declare-fun lt!924470 () Unit!44407)

(declare-fun lemmaContentSubsetPreservesForall!276 (List!30468 List!30468 Int) Unit!44407)

(declare-fun dropList!910 (BalanceConc!18528 Int) List!30468)

(assert (=> b!2628361 (= lt!924470 (lemmaContentSubsetPreservesForall!276 lt!924476 (dropList!910 v!6381 from!862) lambda!98461))))

(declare-fun list!11407 (BalanceConc!18528) List!30468)

(assert (=> b!2628361 (= lt!924476 (list!11407 v!6381))))

(assert (=> b!2628362 (= e!1658175 (and tp!833301 tp!833300))))

(declare-fun b!2628363 () Bool)

(assert (=> b!2628363 (= e!1658183 (<= 0 from!862))))

(declare-fun tp!833299 () Bool)

(declare-fun b!2628364 () Bool)

(assert (=> b!2628364 (= e!1658184 (and tp!833299 (inv!41148 (tag!5101 (h!35787 rules!1726))) (inv!41153 (transformation!4607 (h!35787 rules!1726))) e!1658189))))

(declare-fun b!2628365 () Bool)

(declare-fun res!1106358 () Bool)

(assert (=> b!2628365 (=> (not res!1106358) (not e!1658187))))

(declare-fun sepAndNonSepRulesDisjointChars!1180 (List!30467 List!30467) Bool)

(assert (=> b!2628365 (= res!1106358 (sepAndNonSepRulesDisjointChars!1180 rules!1726 rules!1726))))

(declare-fun b!2628366 () Bool)

(assert (=> b!2628366 (= e!1658185 (not e!1658180))))

(declare-fun res!1106351 () Bool)

(assert (=> b!2628366 (=> res!1106351 e!1658180)))

(declare-fun contains!5717 (BalanceConc!18528 Token!8684) Bool)

(assert (=> b!2628366 (= res!1106351 (not (contains!5717 v!6381 lt!924480)))))

(declare-fun apply!7196 (BalanceConc!18528 Int) Token!8684)

(assert (=> b!2628366 (= lt!924480 (apply!7196 v!6381 from!862))))

(declare-fun lt!924481 () List!30468)

(declare-fun tail!4244 (List!30468) List!30468)

(declare-fun drop!1603 (List!30468 Int) List!30468)

(assert (=> b!2628366 (= (tail!4244 lt!924481) (drop!1603 lt!924476 (+ 1 from!862)))))

(declare-fun lt!924475 () Unit!44407)

(declare-fun lemmaDropTail!792 (List!30468 Int) Unit!44407)

(assert (=> b!2628366 (= lt!924475 (lemmaDropTail!792 lt!924476 from!862))))

(declare-fun head!6006 (List!30468) Token!8684)

(declare-fun apply!7197 (List!30468 Int) Token!8684)

(assert (=> b!2628366 (= (head!6006 lt!924481) (apply!7197 lt!924476 from!862))))

(assert (=> b!2628366 (= lt!924481 (drop!1603 lt!924476 from!862))))

(declare-fun lt!924479 () Unit!44407)

(declare-fun lemmaDropApply!818 (List!30468 Int) Unit!44407)

(assert (=> b!2628366 (= lt!924479 (lemmaDropApply!818 lt!924476 from!862))))

(declare-fun b!2628367 () Bool)

(assert (=> b!2628367 (= e!1658178 e!1658187)))

(declare-fun res!1106353 () Bool)

(assert (=> b!2628367 (=> (not res!1106353) (not e!1658187))))

(assert (=> b!2628367 (= res!1106353 (<= from!862 lt!924477))))

(declare-fun size!23497 (BalanceConc!18528) Int)

(assert (=> b!2628367 (= lt!924477 (size!23497 v!6381))))

(assert (= (and start!255610 res!1106357) b!2628367))

(assert (= (and b!2628367 res!1106353) b!2628355))

(assert (= (and b!2628355 res!1106359) b!2628358))

(assert (= (and b!2628358 res!1106356) b!2628356))

(assert (= (and b!2628356 res!1106362) b!2628353))

(assert (= (and b!2628353 res!1106352) b!2628351))

(assert (= (and b!2628351 res!1106363) b!2628357))

(assert (= (and b!2628357 res!1106354) b!2628365))

(assert (= (and b!2628365 res!1106358) b!2628361))

(assert (= (and b!2628361 res!1106355) b!2628366))

(assert (= (and b!2628366 (not res!1106351)) b!2628348))

(assert (= (and b!2628348 (not res!1106360)) b!2628360))

(assert (= (and b!2628360 (not res!1106350)) b!2628352))

(assert (= (and b!2628352 (not res!1106361)) b!2628363))

(assert (= b!2628364 b!2628354))

(assert (= b!2628359 b!2628364))

(assert (= (and start!255610 ((_ is Cons!30367) rules!1726)) b!2628359))

(assert (= b!2628347 b!2628362))

(assert (= b!2628350 b!2628347))

(assert (= start!255610 b!2628350))

(assert (= start!255610 b!2628349))

(declare-fun m!2971425 () Bool)

(assert (=> b!2628352 m!2971425))

(declare-fun m!2971427 () Bool)

(assert (=> b!2628352 m!2971427))

(declare-fun m!2971429 () Bool)

(assert (=> b!2628352 m!2971429))

(declare-fun m!2971431 () Bool)

(assert (=> b!2628352 m!2971431))

(declare-fun m!2971433 () Bool)

(assert (=> b!2628352 m!2971433))

(declare-fun m!2971435 () Bool)

(assert (=> b!2628364 m!2971435))

(declare-fun m!2971437 () Bool)

(assert (=> b!2628364 m!2971437))

(declare-fun m!2971439 () Bool)

(assert (=> b!2628355 m!2971439))

(declare-fun m!2971441 () Bool)

(assert (=> b!2628350 m!2971441))

(declare-fun m!2971443 () Bool)

(assert (=> b!2628366 m!2971443))

(declare-fun m!2971445 () Bool)

(assert (=> b!2628366 m!2971445))

(declare-fun m!2971447 () Bool)

(assert (=> b!2628366 m!2971447))

(declare-fun m!2971449 () Bool)

(assert (=> b!2628366 m!2971449))

(declare-fun m!2971451 () Bool)

(assert (=> b!2628366 m!2971451))

(declare-fun m!2971453 () Bool)

(assert (=> b!2628366 m!2971453))

(declare-fun m!2971455 () Bool)

(assert (=> b!2628366 m!2971455))

(declare-fun m!2971457 () Bool)

(assert (=> b!2628366 m!2971457))

(declare-fun m!2971459 () Bool)

(assert (=> b!2628366 m!2971459))

(declare-fun m!2971461 () Bool)

(assert (=> b!2628357 m!2971461))

(declare-fun m!2971463 () Bool)

(assert (=> b!2628347 m!2971463))

(declare-fun m!2971465 () Bool)

(assert (=> b!2628347 m!2971465))

(declare-fun m!2971467 () Bool)

(assert (=> b!2628356 m!2971467))

(declare-fun m!2971469 () Bool)

(assert (=> b!2628361 m!2971469))

(assert (=> b!2628361 m!2971469))

(declare-fun m!2971471 () Bool)

(assert (=> b!2628361 m!2971471))

(declare-fun m!2971473 () Bool)

(assert (=> b!2628361 m!2971473))

(declare-fun m!2971475 () Bool)

(assert (=> b!2628348 m!2971475))

(declare-fun m!2971477 () Bool)

(assert (=> start!255610 m!2971477))

(declare-fun m!2971479 () Bool)

(assert (=> start!255610 m!2971479))

(declare-fun m!2971481 () Bool)

(assert (=> b!2628358 m!2971481))

(declare-fun m!2971483 () Bool)

(assert (=> b!2628367 m!2971483))

(declare-fun m!2971485 () Bool)

(assert (=> b!2628360 m!2971485))

(declare-fun m!2971487 () Bool)

(assert (=> b!2628360 m!2971487))

(declare-fun m!2971489 () Bool)

(assert (=> b!2628360 m!2971489))

(declare-fun m!2971491 () Bool)

(assert (=> b!2628360 m!2971491))

(assert (=> b!2628360 m!2971485))

(declare-fun m!2971493 () Bool)

(assert (=> b!2628360 m!2971493))

(assert (=> b!2628360 m!2971489))

(assert (=> b!2628360 m!2971493))

(declare-fun m!2971495 () Bool)

(assert (=> b!2628349 m!2971495))

(declare-fun m!2971497 () Bool)

(assert (=> b!2628365 m!2971497))

(declare-fun m!2971499 () Bool)

(assert (=> b!2628353 m!2971499))

(check-sat (not b_next!74657) (not b!2628348) (not b!2628347) b_and!192511 (not b!2628358) (not start!255610) (not b!2628376) (not b!2628352) (not b!2628349) (not b_next!74659) b_and!192513 (not b!2628366) (not b_next!74653) b_and!192507 (not b!2628353) (not b!2628360) (not b!2628356) b_and!192509 (not b!2628359) (not b!2628365) (not b!2628350) (not b!2628367) (not b!2628357) (not b!2628355) (not b!2628361) (not b_next!74655) (not b!2628364))
(check-sat b_and!192509 (not b_next!74657) b_and!192511 (not b_next!74655) (not b_next!74659) b_and!192513 (not b_next!74653) b_and!192507)
