; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124634 () Bool)

(assert start!124634)

(declare-fun b!1378289 () Bool)

(declare-fun b_free!33443 () Bool)

(declare-fun b_next!34147 () Bool)

(assert (=> b!1378289 (= b_free!33443 (not b_next!34147))))

(declare-fun tp!394991 () Bool)

(declare-fun b_and!92323 () Bool)

(assert (=> b!1378289 (= tp!394991 b_and!92323)))

(declare-fun b_free!33445 () Bool)

(declare-fun b_next!34149 () Bool)

(assert (=> b!1378289 (= b_free!33445 (not b_next!34149))))

(declare-fun tp!394994 () Bool)

(declare-fun b_and!92325 () Bool)

(assert (=> b!1378289 (= tp!394994 b_and!92325)))

(declare-fun b!1378305 () Bool)

(declare-fun b_free!33447 () Bool)

(declare-fun b_next!34151 () Bool)

(assert (=> b!1378305 (= b_free!33447 (not b_next!34151))))

(declare-fun tp!394993 () Bool)

(declare-fun b_and!92327 () Bool)

(assert (=> b!1378305 (= tp!394993 b_and!92327)))

(declare-fun b_free!33449 () Bool)

(declare-fun b_next!34153 () Bool)

(assert (=> b!1378305 (= b_free!33449 (not b_next!34153))))

(declare-fun tp!394987 () Bool)

(declare-fun b_and!92329 () Bool)

(assert (=> b!1378305 (= tp!394987 b_and!92329)))

(declare-fun b!1378310 () Bool)

(declare-fun b_free!33451 () Bool)

(declare-fun b_next!34155 () Bool)

(assert (=> b!1378310 (= b_free!33451 (not b_next!34155))))

(declare-fun tp!394992 () Bool)

(declare-fun b_and!92331 () Bool)

(assert (=> b!1378310 (= tp!394992 b_and!92331)))

(declare-fun b_free!33453 () Bool)

(declare-fun b_next!34157 () Bool)

(assert (=> b!1378310 (= b_free!33453 (not b_next!34157))))

(declare-fun tp!394988 () Bool)

(declare-fun b_and!92333 () Bool)

(assert (=> b!1378310 (= tp!394988 b_and!92333)))

(declare-fun b!1378329 () Bool)

(assert (=> b!1378329 true))

(assert (=> b!1378329 true))

(declare-fun b!1378337 () Bool)

(assert (=> b!1378337 true))

(declare-fun b!1378290 () Bool)

(assert (=> b!1378290 true))

(declare-fun bs!336344 () Bool)

(declare-fun b!1378322 () Bool)

(assert (= bs!336344 (and b!1378322 b!1378290)))

(declare-fun lambda!59043 () Int)

(declare-fun lambda!59042 () Int)

(assert (=> bs!336344 (not (= lambda!59043 lambda!59042))))

(assert (=> b!1378322 true))

(declare-fun e!880761 () Bool)

(assert (=> b!1378289 (= e!880761 (and tp!394991 tp!394994))))

(declare-fun e!880742 () Bool)

(declare-fun e!880769 () Bool)

(assert (=> b!1378290 (= e!880742 e!880769)))

(declare-fun res!621566 () Bool)

(assert (=> b!1378290 (=> res!621566 e!880769)))

(declare-datatypes ((List!14042 0))(
  ( (Nil!13976) (Cons!13976 (h!19377 (_ BitVec 16)) (t!121855 List!14042)) )
))
(declare-datatypes ((TokenValue!2511 0))(
  ( (FloatLiteralValue!5022 (text!18022 List!14042)) (TokenValueExt!2510 (__x!8851 Int)) (Broken!12555 (value!78605 List!14042)) (Object!2576) (End!2511) (Def!2511) (Underscore!2511) (Match!2511) (Else!2511) (Error!2511) (Case!2511) (If!2511) (Extends!2511) (Abstract!2511) (Class!2511) (Val!2511) (DelimiterValue!5022 (del!2571 List!14042)) (KeywordValue!2517 (value!78606 List!14042)) (CommentValue!5022 (value!78607 List!14042)) (WhitespaceValue!5022 (value!78608 List!14042)) (IndentationValue!2511 (value!78609 List!14042)) (String!16790) (Int32!2511) (Broken!12556 (value!78610 List!14042)) (Boolean!2512) (Unit!20242) (OperatorValue!2514 (op!2571 List!14042)) (IdentifierValue!5022 (value!78611 List!14042)) (IdentifierValue!5023 (value!78612 List!14042)) (WhitespaceValue!5023 (value!78613 List!14042)) (True!5022) (False!5022) (Broken!12557 (value!78614 List!14042)) (Broken!12558 (value!78615 List!14042)) (True!5023) (RightBrace!2511) (RightBracket!2511) (Colon!2511) (Null!2511) (Comma!2511) (LeftBracket!2511) (False!5023) (LeftBrace!2511) (ImaginaryLiteralValue!2511 (text!18023 List!14042)) (StringLiteralValue!7533 (value!78616 List!14042)) (EOFValue!2511 (value!78617 List!14042)) (IdentValue!2511 (value!78618 List!14042)) (DelimiterValue!5023 (value!78619 List!14042)) (DedentValue!2511 (value!78620 List!14042)) (NewLineValue!2511 (value!78621 List!14042)) (IntegerValue!7533 (value!78622 (_ BitVec 32)) (text!18024 List!14042)) (IntegerValue!7534 (value!78623 Int) (text!18025 List!14042)) (Times!2511) (Or!2511) (Equal!2511) (Minus!2511) (Broken!12559 (value!78624 List!14042)) (And!2511) (Div!2511) (LessEqual!2511) (Mod!2511) (Concat!6246) (Not!2511) (Plus!2511) (SpaceValue!2511 (value!78625 List!14042)) (IntegerValue!7535 (value!78626 Int) (text!18026 List!14042)) (StringLiteralValue!7534 (text!18027 List!14042)) (FloatLiteralValue!5023 (text!18028 List!14042)) (BytesLiteralValue!2511 (value!78627 List!14042)) (CommentValue!5023 (value!78628 List!14042)) (StringLiteralValue!7535 (value!78629 List!14042)) (ErrorTokenValue!2511 (msg!2572 List!14042)) )
))
(declare-datatypes ((C!7760 0))(
  ( (C!7761 (val!4440 Int)) )
))
(declare-datatypes ((List!14043 0))(
  ( (Nil!13977) (Cons!13977 (h!19378 C!7760) (t!121856 List!14043)) )
))
(declare-datatypes ((IArray!9213 0))(
  ( (IArray!9214 (innerList!4664 List!14043)) )
))
(declare-datatypes ((Conc!4604 0))(
  ( (Node!4604 (left!11956 Conc!4604) (right!12286 Conc!4604) (csize!9438 Int) (cheight!4815 Int)) (Leaf!7011 (xs!7331 IArray!9213) (csize!9439 Int)) (Empty!4604) )
))
(declare-datatypes ((BalanceConc!9148 0))(
  ( (BalanceConc!9149 (c!226762 Conc!4604)) )
))
(declare-datatypes ((Regex!3735 0))(
  ( (ElementMatch!3735 (c!226763 C!7760)) (Concat!6247 (regOne!7982 Regex!3735) (regTwo!7982 Regex!3735)) (EmptyExpr!3735) (Star!3735 (reg!4064 Regex!3735)) (EmptyLang!3735) (Union!3735 (regOne!7983 Regex!3735) (regTwo!7983 Regex!3735)) )
))
(declare-datatypes ((String!16791 0))(
  ( (String!16792 (value!78630 String)) )
))
(declare-datatypes ((TokenValueInjection!4682 0))(
  ( (TokenValueInjection!4683 (toValue!3696 Int) (toChars!3555 Int)) )
))
(declare-datatypes ((Rule!4642 0))(
  ( (Rule!4643 (regex!2421 Regex!3735) (tag!2683 String!16791) (isSeparator!2421 Bool) (transformation!2421 TokenValueInjection!4682)) )
))
(declare-datatypes ((List!14044 0))(
  ( (Nil!13978) (Cons!13978 (h!19379 Rule!4642) (t!121857 List!14044)) )
))
(declare-fun rules!2550 () List!14044)

(declare-fun exists!500 (List!14044 Int) Bool)

(assert (=> b!1378290 (= res!621566 (not (exists!500 rules!2550 lambda!59042)))))

(assert (=> b!1378290 (exists!500 rules!2550 lambda!59042)))

(declare-datatypes ((Unit!20243 0))(
  ( (Unit!20244) )
))
(declare-fun lt!458434 () Unit!20243)

(declare-fun lambda!59040 () Int)

(declare-fun lt!458436 () Regex!3735)

(declare-fun lemmaMapContains!140 (List!14044 Int Regex!3735) Unit!20243)

(assert (=> b!1378290 (= lt!458434 (lemmaMapContains!140 rules!2550 lambda!59040 lt!458436))))

(declare-fun b!1378291 () Bool)

(declare-fun res!621596 () Bool)

(declare-fun e!880752 () Bool)

(assert (=> b!1378291 (=> res!621596 e!880752)))

(declare-datatypes ((Token!4504 0))(
  ( (Token!4505 (value!78631 TokenValue!2511) (rule!4180 Rule!4642) (size!11451 Int) (originalCharacters!3283 List!14043)) )
))
(declare-datatypes ((List!14045 0))(
  ( (Nil!13979) (Cons!13979 (h!19380 Token!4504) (t!121858 List!14045)) )
))
(declare-datatypes ((IArray!9215 0))(
  ( (IArray!9216 (innerList!4665 List!14045)) )
))
(declare-datatypes ((Conc!4605 0))(
  ( (Node!4605 (left!11957 Conc!4605) (right!12287 Conc!4605) (csize!9440 Int) (cheight!4816 Int)) (Leaf!7012 (xs!7332 IArray!9215) (csize!9441 Int)) (Empty!4605) )
))
(declare-datatypes ((BalanceConc!9150 0))(
  ( (BalanceConc!9151 (c!226764 Conc!4605)) )
))
(declare-datatypes ((tuple2!13598 0))(
  ( (tuple2!13599 (_1!7685 BalanceConc!9150) (_2!7685 BalanceConc!9148)) )
))
(declare-fun lt!458428 () tuple2!13598)

(declare-fun isEmpty!8430 (BalanceConc!9148) Bool)

(assert (=> b!1378291 (= res!621596 (not (isEmpty!8430 (_2!7685 lt!458428))))))

(declare-fun b!1378292 () Bool)

(declare-fun e!880745 () Bool)

(declare-fun e!880747 () Bool)

(assert (=> b!1378292 (= e!880745 e!880747)))

(declare-fun res!621595 () Bool)

(assert (=> b!1378292 (=> res!621595 e!880747)))

(declare-fun lt!458432 () Bool)

(assert (=> b!1378292 (= res!621595 lt!458432)))

(declare-fun lt!458425 () Unit!20243)

(declare-fun e!880756 () Unit!20243)

(assert (=> b!1378292 (= lt!458425 e!880756)))

(declare-fun c!226761 () Bool)

(assert (=> b!1378292 (= c!226761 lt!458432)))

(declare-fun t2!34 () Token!4504)

(declare-fun lt!458421 () C!7760)

(declare-fun contains!2651 (List!14043 C!7760) Bool)

(declare-fun usedCharacters!240 (Regex!3735) List!14043)

(assert (=> b!1378292 (= lt!458432 (not (contains!2651 (usedCharacters!240 (regex!2421 (rule!4180 t2!34))) lt!458421)))))

(declare-fun b!1378293 () Bool)

(declare-fun res!621569 () Bool)

(declare-fun e!880746 () Bool)

(assert (=> b!1378293 (=> res!621569 e!880746)))

(declare-datatypes ((LexerInterface!2116 0))(
  ( (LexerInterfaceExt!2113 (__x!8852 Int)) (Lexer!2114) )
))
(declare-fun thiss!19762 () LexerInterface!2116)

(declare-fun lt!458414 () List!14045)

(declare-fun lt!458442 () BalanceConc!9148)

(declare-datatypes ((tuple2!13600 0))(
  ( (tuple2!13601 (_1!7686 List!14045) (_2!7686 List!14043)) )
))
(declare-fun lexList!634 (LexerInterface!2116 List!14044 List!14043) tuple2!13600)

(declare-fun list!5398 (BalanceConc!9148) List!14043)

(assert (=> b!1378293 (= res!621569 (not (= (lexList!634 thiss!19762 rules!2550 (list!5398 lt!458442)) (tuple2!13601 lt!458414 Nil!13977))))))

(declare-fun b!1378294 () Bool)

(assert (=> b!1378294 (= e!880752 e!880746)))

(declare-fun res!621587 () Bool)

(assert (=> b!1378294 (=> res!621587 e!880746)))

(declare-fun lt!458423 () tuple2!13598)

(declare-fun list!5399 (BalanceConc!9150) List!14045)

(assert (=> b!1378294 (= res!621587 (not (= (list!5399 (_1!7685 lt!458423)) lt!458414)))))

(assert (=> b!1378294 (= lt!458414 (Cons!13979 t2!34 Nil!13979))))

(declare-fun lex!943 (LexerInterface!2116 List!14044 BalanceConc!9148) tuple2!13598)

(assert (=> b!1378294 (= lt!458423 (lex!943 thiss!19762 rules!2550 lt!458442))))

(declare-fun print!882 (LexerInterface!2116 BalanceConc!9150) BalanceConc!9148)

(declare-fun singletonSeq!1056 (Token!4504) BalanceConc!9150)

(assert (=> b!1378294 (= lt!458442 (print!882 thiss!19762 (singletonSeq!1056 t2!34)))))

(declare-fun b!1378295 () Bool)

(declare-fun res!621594 () Bool)

(declare-fun e!880749 () Bool)

(assert (=> b!1378295 (=> (not res!621594) (not e!880749))))

(declare-fun t1!34 () Token!4504)

(declare-fun separableTokensPredicate!399 (LexerInterface!2116 Token!4504 Token!4504 List!14044) Bool)

(assert (=> b!1378295 (= res!621594 (not (separableTokensPredicate!399 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1378296 () Bool)

(declare-fun res!621581 () Bool)

(declare-fun e!880755 () Bool)

(assert (=> b!1378296 (=> (not res!621581) (not e!880755))))

(declare-fun rulesInvariant!1986 (LexerInterface!2116 List!14044) Bool)

(assert (=> b!1378296 (= res!621581 (rulesInvariant!1986 thiss!19762 rules!2550))))

(declare-fun b!1378297 () Bool)

(declare-fun e!880764 () Bool)

(assert (=> b!1378297 (= e!880746 e!880764)))

(declare-fun res!621563 () Bool)

(assert (=> b!1378297 (=> res!621563 e!880764)))

(declare-fun lt!458430 () List!14043)

(declare-datatypes ((tuple2!13602 0))(
  ( (tuple2!13603 (_1!7687 Token!4504) (_2!7687 List!14043)) )
))
(declare-datatypes ((Option!2688 0))(
  ( (None!2687) (Some!2687 (v!21517 tuple2!13602)) )
))
(declare-fun maxPrefix!1098 (LexerInterface!2116 List!14044 List!14043) Option!2688)

(assert (=> b!1378297 (= res!621563 (not (= (maxPrefix!1098 thiss!19762 rules!2550 lt!458430) (Some!2687 (tuple2!13603 t2!34 Nil!13977)))))))

(declare-fun lt!458429 () BalanceConc!9148)

(assert (=> b!1378297 (= lt!458430 (list!5398 lt!458429))))

(declare-fun b!1378298 () Bool)

(declare-fun res!621588 () Bool)

(assert (=> b!1378298 (=> res!621588 e!880746)))

(assert (=> b!1378298 (= res!621588 (not (isEmpty!8430 (_2!7685 lt!458423))))))

(declare-fun b!1378299 () Bool)

(declare-fun Unit!20245 () Unit!20243)

(assert (=> b!1378299 (= e!880756 Unit!20245)))

(declare-fun lt!458438 () Unit!20243)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!180 (Regex!3735 List!14043 C!7760) Unit!20243)

(declare-fun head!2495 (List!14043) C!7760)

(assert (=> b!1378299 (= lt!458438 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!180 (regex!2421 (rule!4180 t2!34)) lt!458430 (head!2495 lt!458430)))))

(assert (=> b!1378299 false))

(declare-fun b!1378300 () Bool)

(declare-fun e!880770 () Bool)

(declare-fun e!880767 () Bool)

(assert (=> b!1378300 (= e!880770 e!880767)))

(declare-fun res!621597 () Bool)

(assert (=> b!1378300 (=> res!621597 e!880767)))

(declare-fun lt!458418 () List!14043)

(declare-fun lt!458422 () C!7760)

(assert (=> b!1378300 (= res!621597 (not (contains!2651 lt!458418 lt!458422)))))

(declare-fun lt!458420 () BalanceConc!9148)

(declare-fun apply!3451 (BalanceConc!9148 Int) C!7760)

(assert (=> b!1378300 (= lt!458422 (apply!3451 lt!458420 0))))

(declare-fun b!1378302 () Bool)

(declare-fun res!621579 () Bool)

(assert (=> b!1378302 (=> (not res!621579) (not e!880755))))

(declare-fun rulesProduceIndividualToken!1085 (LexerInterface!2116 List!14044 Token!4504) Bool)

(assert (=> b!1378302 (= res!621579 (rulesProduceIndividualToken!1085 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1378303 () Bool)

(declare-fun res!621584 () Bool)

(assert (=> b!1378303 (=> (not res!621584) (not e!880749))))

(declare-fun sepAndNonSepRulesDisjointChars!794 (List!14044 List!14044) Bool)

(assert (=> b!1378303 (= res!621584 (sepAndNonSepRulesDisjointChars!794 rules!2550 rules!2550))))

(declare-fun e!880757 () Bool)

(declare-fun b!1378301 () Bool)

(declare-fun e!880759 () Bool)

(declare-fun tp!394986 () Bool)

(declare-fun inv!18317 (String!16791) Bool)

(declare-fun inv!18320 (TokenValueInjection!4682) Bool)

(assert (=> b!1378301 (= e!880759 (and tp!394986 (inv!18317 (tag!2683 (rule!4180 t1!34))) (inv!18320 (transformation!2421 (rule!4180 t1!34))) e!880757))))

(declare-fun res!621586 () Bool)

(assert (=> start!124634 (=> (not res!621586) (not e!880755))))

(get-info :version)

(assert (=> start!124634 (= res!621586 ((_ is Lexer!2114) thiss!19762))))

(assert (=> start!124634 e!880755))

(assert (=> start!124634 true))

(declare-fun e!880744 () Bool)

(assert (=> start!124634 e!880744))

(declare-fun e!880766 () Bool)

(declare-fun inv!18321 (Token!4504) Bool)

(assert (=> start!124634 (and (inv!18321 t1!34) e!880766)))

(declare-fun e!880758 () Bool)

(assert (=> start!124634 (and (inv!18321 t2!34) e!880758)))

(declare-fun b!1378304 () Bool)

(declare-fun Unit!20246 () Unit!20243)

(assert (=> b!1378304 (= e!880756 Unit!20246)))

(declare-fun e!880772 () Bool)

(assert (=> b!1378305 (= e!880772 (and tp!394993 tp!394987))))

(declare-fun b!1378306 () Bool)

(declare-fun tp!394990 () Bool)

(declare-fun e!880765 () Bool)

(declare-fun inv!21 (TokenValue!2511) Bool)

(assert (=> b!1378306 (= e!880758 (and (inv!21 (value!78631 t2!34)) e!880765 tp!394990))))

(declare-fun b!1378307 () Bool)

(declare-fun res!621591 () Bool)

(declare-fun e!880763 () Bool)

(assert (=> b!1378307 (=> res!621591 e!880763)))

(declare-fun matchR!1728 (Regex!3735 List!14043) Bool)

(assert (=> b!1378307 (= res!621591 (not (matchR!1728 (regex!2421 (rule!4180 t2!34)) lt!458430)))))

(declare-fun b!1378308 () Bool)

(declare-fun res!621592 () Bool)

(assert (=> b!1378308 (=> res!621592 e!880752)))

(declare-fun contains!2652 (List!14044 Rule!4642) Bool)

(assert (=> b!1378308 (= res!621592 (not (contains!2652 rules!2550 (rule!4180 t1!34))))))

(declare-fun b!1378309 () Bool)

(declare-fun e!880754 () Unit!20243)

(declare-fun Unit!20247 () Unit!20243)

(assert (=> b!1378309 (= e!880754 Unit!20247)))

(declare-fun lt!458435 () Unit!20243)

(declare-fun lt!458412 () List!14043)

(assert (=> b!1378309 (= lt!458435 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!180 (regex!2421 (rule!4180 t1!34)) lt!458412 (head!2495 lt!458412)))))

(assert (=> b!1378309 false))

(assert (=> b!1378310 (= e!880757 (and tp!394992 tp!394988))))

(declare-fun b!1378311 () Bool)

(declare-fun res!621575 () Bool)

(assert (=> b!1378311 (=> res!621575 e!880764)))

(declare-fun lt!458413 () Rule!4642)

(assert (=> b!1378311 (= res!621575 (not (contains!2652 rules!2550 lt!458413)))))

(declare-fun b!1378312 () Bool)

(declare-fun e!880768 () Bool)

(assert (=> b!1378312 (= e!880768 e!880770)))

(declare-fun res!621564 () Bool)

(assert (=> b!1378312 (=> res!621564 e!880770)))

(declare-fun lt!458417 () List!14043)

(declare-fun ++!3618 (List!14043 List!14043) List!14043)

(declare-fun getSuffix!583 (List!14043 List!14043) List!14043)

(assert (=> b!1378312 (= res!621564 (not (= lt!458417 (++!3618 lt!458418 (getSuffix!583 lt!458417 lt!458418)))))))

(declare-fun lambda!59039 () Int)

(declare-fun pickWitness!190 (Int) List!14043)

(assert (=> b!1378312 (= lt!458417 (pickWitness!190 lambda!59039))))

(declare-fun b!1378313 () Bool)

(declare-fun res!621578 () Bool)

(assert (=> b!1378313 (=> res!621578 e!880752)))

(assert (=> b!1378313 (= res!621578 (not (= (maxPrefix!1098 thiss!19762 rules!2550 lt!458412) (Some!2687 (tuple2!13603 t1!34 Nil!13977)))))))

(declare-fun b!1378314 () Bool)

(declare-fun Unit!20248 () Unit!20243)

(assert (=> b!1378314 (= e!880754 Unit!20248)))

(declare-fun b!1378315 () Bool)

(assert (=> b!1378315 (= e!880755 e!880749)))

(declare-fun res!621580 () Bool)

(assert (=> b!1378315 (=> (not res!621580) (not e!880749))))

(declare-fun size!11452 (BalanceConc!9148) Int)

(assert (=> b!1378315 (= res!621580 (> (size!11452 lt!458429) 0))))

(declare-fun charsOf!1393 (Token!4504) BalanceConc!9148)

(assert (=> b!1378315 (= lt!458429 (charsOf!1393 t2!34))))

(declare-fun b!1378316 () Bool)

(declare-fun res!621573 () Bool)

(assert (=> b!1378316 (=> res!621573 e!880767)))

(assert (=> b!1378316 (= res!621573 (not (contains!2651 lt!458417 lt!458422)))))

(declare-fun b!1378317 () Bool)

(declare-fun res!621585 () Bool)

(assert (=> b!1378317 (=> res!621585 e!880764)))

(assert (=> b!1378317 (= res!621585 (not (contains!2652 rules!2550 (rule!4180 t2!34))))))

(declare-fun b!1378318 () Bool)

(assert (=> b!1378318 (= e!880769 e!880752)))

(declare-fun res!621590 () Bool)

(assert (=> b!1378318 (=> res!621590 e!880752)))

(declare-fun lt!458433 () List!14045)

(assert (=> b!1378318 (= res!621590 (not (= (list!5399 (_1!7685 lt!458428)) lt!458433)))))

(assert (=> b!1378318 (= lt!458433 (Cons!13979 t1!34 Nil!13979))))

(declare-fun lt!458441 () BalanceConc!9148)

(assert (=> b!1378318 (= lt!458428 (lex!943 thiss!19762 rules!2550 lt!458441))))

(assert (=> b!1378318 (= lt!458441 (print!882 thiss!19762 (singletonSeq!1056 t1!34)))))

(declare-fun getWitness!388 (List!14044 Int) Rule!4642)

(assert (=> b!1378318 (= lt!458413 (getWitness!388 rules!2550 lambda!59042))))

(declare-fun tp!394985 () Bool)

(declare-fun b!1378319 () Bool)

(assert (=> b!1378319 (= e!880765 (and tp!394985 (inv!18317 (tag!2683 (rule!4180 t2!34))) (inv!18320 (transformation!2421 (rule!4180 t2!34))) e!880761))))

(declare-fun b!1378320 () Bool)

(declare-fun res!621565 () Bool)

(assert (=> b!1378320 (=> (not res!621565) (not e!880755))))

(declare-fun isEmpty!8431 (List!14044) Bool)

(assert (=> b!1378320 (= res!621565 (not (isEmpty!8431 rules!2550)))))

(declare-fun b!1378321 () Bool)

(declare-fun res!621582 () Bool)

(assert (=> b!1378321 (=> res!621582 e!880767)))

(assert (=> b!1378321 (= res!621582 (not (contains!2651 lt!458417 lt!458421)))))

(assert (=> b!1378322 (= e!880764 e!880763)))

(declare-fun res!621593 () Bool)

(assert (=> b!1378322 (=> res!621593 e!880763)))

(assert (=> b!1378322 (= res!621593 (not (matchR!1728 (regex!2421 (rule!4180 t1!34)) lt!458412)))))

(declare-fun lt!458437 () Unit!20243)

(declare-fun forallContained!624 (List!14044 Int Rule!4642) Unit!20243)

(assert (=> b!1378322 (= lt!458437 (forallContained!624 rules!2550 lambda!59043 (rule!4180 t2!34)))))

(declare-fun lt!458427 () Unit!20243)

(assert (=> b!1378322 (= lt!458427 (forallContained!624 rules!2550 lambda!59043 (rule!4180 t1!34)))))

(declare-fun lt!458439 () Unit!20243)

(assert (=> b!1378322 (= lt!458439 (forallContained!624 rules!2550 lambda!59043 lt!458413))))

(declare-fun b!1378323 () Bool)

(declare-fun e!880750 () Bool)

(assert (=> b!1378323 (= e!880750 e!880742)))

(declare-fun res!621562 () Bool)

(assert (=> b!1378323 (=> res!621562 e!880742)))

(declare-datatypes ((List!14046 0))(
  ( (Nil!13980) (Cons!13980 (h!19381 Regex!3735) (t!121859 List!14046)) )
))
(declare-fun contains!2653 (List!14046 Regex!3735) Bool)

(declare-fun map!3092 (List!14044 Int) List!14046)

(assert (=> b!1378323 (= res!621562 (not (contains!2653 (map!3092 rules!2550 lambda!59040) lt!458436)))))

(declare-fun lambda!59041 () Int)

(declare-fun getWitness!389 (List!14046 Int) Regex!3735)

(assert (=> b!1378323 (= lt!458436 (getWitness!389 (map!3092 rules!2550 lambda!59040) lambda!59041))))

(declare-fun b!1378324 () Bool)

(declare-fun res!621570 () Bool)

(assert (=> b!1378324 (=> res!621570 e!880767)))

(declare-fun lt!458419 () Regex!3735)

(assert (=> b!1378324 (= res!621570 (not (matchR!1728 lt!458419 lt!458417)))))

(declare-fun b!1378325 () Bool)

(declare-fun res!621572 () Bool)

(assert (=> b!1378325 (=> (not res!621572) (not e!880755))))

(assert (=> b!1378325 (= res!621572 (rulesProduceIndividualToken!1085 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1378326 () Bool)

(declare-fun e!880762 () Bool)

(assert (=> b!1378326 (= e!880749 e!880762)))

(declare-fun res!621567 () Bool)

(assert (=> b!1378326 (=> (not res!621567) (not e!880762))))

(declare-fun prefixMatch!244 (Regex!3735 List!14043) Bool)

(assert (=> b!1378326 (= res!621567 (prefixMatch!244 lt!458419 lt!458418))))

(declare-fun rulesRegex!304 (LexerInterface!2116 List!14044) Regex!3735)

(assert (=> b!1378326 (= lt!458419 (rulesRegex!304 thiss!19762 rules!2550))))

(assert (=> b!1378326 (= lt!458418 (++!3618 lt!458412 (Cons!13977 lt!458421 Nil!13977)))))

(assert (=> b!1378326 (= lt!458421 (apply!3451 lt!458429 0))))

(assert (=> b!1378326 (= lt!458412 (list!5398 lt!458420))))

(assert (=> b!1378326 (= lt!458420 (charsOf!1393 t1!34))))

(declare-fun b!1378327 () Bool)

(declare-fun e!880751 () Bool)

(assert (=> b!1378327 (= e!880751 true)))

(assert (=> b!1378327 (not (contains!2651 (usedCharacters!240 (regex!2421 lt!458413)) lt!458421))))

(declare-fun lt!458426 () Unit!20243)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!14 (LexerInterface!2116 List!14044 List!14044 Rule!4642 Rule!4642 C!7760) Unit!20243)

(assert (=> b!1378327 (= lt!458426 (lemmaNonSepRuleNotContainsCharContainedInASepRule!14 thiss!19762 rules!2550 rules!2550 lt!458413 (rule!4180 t2!34) lt!458421))))

(declare-fun e!880741 () Bool)

(declare-fun b!1378328 () Bool)

(declare-fun tp!394996 () Bool)

(assert (=> b!1378328 (= e!880741 (and tp!394996 (inv!18317 (tag!2683 (h!19379 rules!2550))) (inv!18320 (transformation!2421 (h!19379 rules!2550))) e!880772))))

(assert (=> b!1378329 (= e!880762 (not e!880768))))

(declare-fun res!621574 () Bool)

(assert (=> b!1378329 (=> res!621574 e!880768)))

(declare-fun Exists!887 (Int) Bool)

(assert (=> b!1378329 (= res!621574 (not (Exists!887 lambda!59039)))))

(assert (=> b!1378329 (Exists!887 lambda!59039)))

(declare-fun lt!458415 () Unit!20243)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!205 (Regex!3735 List!14043) Unit!20243)

(assert (=> b!1378329 (= lt!458415 (lemmaPrefixMatchThenExistsStringThatMatches!205 lt!458419 lt!458418))))

(declare-fun b!1378330 () Bool)

(assert (=> b!1378330 (= e!880763 e!880745)))

(declare-fun res!621583 () Bool)

(assert (=> b!1378330 (=> res!621583 e!880745)))

(declare-fun lt!458424 () Bool)

(assert (=> b!1378330 (= res!621583 lt!458424)))

(declare-fun lt!458440 () Unit!20243)

(assert (=> b!1378330 (= lt!458440 e!880754)))

(declare-fun c!226760 () Bool)

(assert (=> b!1378330 (= c!226760 lt!458424)))

(assert (=> b!1378330 (= lt!458424 (not (contains!2651 (usedCharacters!240 (regex!2421 (rule!4180 t1!34))) lt!458422)))))

(declare-fun b!1378331 () Bool)

(declare-fun res!621576 () Bool)

(assert (=> b!1378331 (=> res!621576 e!880767)))

(assert (=> b!1378331 (= res!621576 (not (contains!2651 lt!458418 lt!458421)))))

(declare-fun b!1378332 () Bool)

(declare-fun res!621577 () Bool)

(assert (=> b!1378332 (=> res!621577 e!880752)))

(assert (=> b!1378332 (= res!621577 (not (= (lexList!634 thiss!19762 rules!2550 (list!5398 lt!458441)) (tuple2!13601 lt!458433 Nil!13977))))))

(declare-fun b!1378333 () Bool)

(declare-fun tp!394989 () Bool)

(assert (=> b!1378333 (= e!880744 (and e!880741 tp!394989))))

(declare-fun b!1378334 () Bool)

(assert (=> b!1378334 (= e!880747 e!880751)))

(declare-fun res!621568 () Bool)

(assert (=> b!1378334 (=> res!621568 e!880751)))

(assert (=> b!1378334 (= res!621568 (or (isSeparator!2421 lt!458413) (isSeparator!2421 (rule!4180 t1!34))))))

(assert (=> b!1378334 (= (regex!2421 lt!458413) lt!458436)))

(declare-fun tp!394995 () Bool)

(declare-fun b!1378335 () Bool)

(assert (=> b!1378335 (= e!880766 (and (inv!21 (value!78631 t1!34)) e!880759 tp!394995))))

(declare-fun b!1378336 () Bool)

(declare-fun res!621571 () Bool)

(assert (=> b!1378336 (=> (not res!621571) (not e!880755))))

(assert (=> b!1378336 (= res!621571 (not (= (isSeparator!2421 (rule!4180 t1!34)) (isSeparator!2421 (rule!4180 t2!34)))))))

(assert (=> b!1378337 (= e!880767 e!880750)))

(declare-fun res!621589 () Bool)

(assert (=> b!1378337 (=> res!621589 e!880750)))

(declare-fun exists!501 (List!14046 Int) Bool)

(assert (=> b!1378337 (= res!621589 (not (exists!501 (map!3092 rules!2550 lambda!59040) lambda!59041)))))

(declare-fun lt!458416 () List!14046)

(assert (=> b!1378337 (exists!501 lt!458416 lambda!59041)))

(declare-fun lt!458431 () Unit!20243)

(declare-fun matchRGenUnionSpec!152 (Regex!3735 List!14046 List!14043) Unit!20243)

(assert (=> b!1378337 (= lt!458431 (matchRGenUnionSpec!152 lt!458419 lt!458416 lt!458417))))

(assert (=> b!1378337 (= lt!458416 (map!3092 rules!2550 lambda!59040))))

(assert (= (and start!124634 res!621586) b!1378320))

(assert (= (and b!1378320 res!621565) b!1378296))

(assert (= (and b!1378296 res!621581) b!1378325))

(assert (= (and b!1378325 res!621572) b!1378302))

(assert (= (and b!1378302 res!621579) b!1378336))

(assert (= (and b!1378336 res!621571) b!1378315))

(assert (= (and b!1378315 res!621580) b!1378303))

(assert (= (and b!1378303 res!621584) b!1378295))

(assert (= (and b!1378295 res!621594) b!1378326))

(assert (= (and b!1378326 res!621567) b!1378329))

(assert (= (and b!1378329 (not res!621574)) b!1378312))

(assert (= (and b!1378312 (not res!621564)) b!1378300))

(assert (= (and b!1378300 (not res!621597)) b!1378316))

(assert (= (and b!1378316 (not res!621573)) b!1378331))

(assert (= (and b!1378331 (not res!621576)) b!1378321))

(assert (= (and b!1378321 (not res!621582)) b!1378324))

(assert (= (and b!1378324 (not res!621570)) b!1378337))

(assert (= (and b!1378337 (not res!621589)) b!1378323))

(assert (= (and b!1378323 (not res!621562)) b!1378290))

(assert (= (and b!1378290 (not res!621566)) b!1378318))

(assert (= (and b!1378318 (not res!621590)) b!1378291))

(assert (= (and b!1378291 (not res!621596)) b!1378332))

(assert (= (and b!1378332 (not res!621577)) b!1378313))

(assert (= (and b!1378313 (not res!621578)) b!1378308))

(assert (= (and b!1378308 (not res!621592)) b!1378294))

(assert (= (and b!1378294 (not res!621587)) b!1378298))

(assert (= (and b!1378298 (not res!621588)) b!1378293))

(assert (= (and b!1378293 (not res!621569)) b!1378297))

(assert (= (and b!1378297 (not res!621563)) b!1378317))

(assert (= (and b!1378317 (not res!621585)) b!1378311))

(assert (= (and b!1378311 (not res!621575)) b!1378322))

(assert (= (and b!1378322 (not res!621593)) b!1378307))

(assert (= (and b!1378307 (not res!621591)) b!1378330))

(assert (= (and b!1378330 c!226760) b!1378309))

(assert (= (and b!1378330 (not c!226760)) b!1378314))

(assert (= (and b!1378330 (not res!621583)) b!1378292))

(assert (= (and b!1378292 c!226761) b!1378299))

(assert (= (and b!1378292 (not c!226761)) b!1378304))

(assert (= (and b!1378292 (not res!621595)) b!1378334))

(assert (= (and b!1378334 (not res!621568)) b!1378327))

(assert (= b!1378328 b!1378305))

(assert (= b!1378333 b!1378328))

(assert (= (and start!124634 ((_ is Cons!13978) rules!2550)) b!1378333))

(assert (= b!1378301 b!1378310))

(assert (= b!1378335 b!1378301))

(assert (= start!124634 b!1378335))

(assert (= b!1378319 b!1378289))

(assert (= b!1378306 b!1378319))

(assert (= start!124634 b!1378306))

(declare-fun m!1550775 () Bool)

(assert (=> b!1378337 m!1550775))

(declare-fun m!1550777 () Bool)

(assert (=> b!1378337 m!1550777))

(declare-fun m!1550779 () Bool)

(assert (=> b!1378337 m!1550779))

(assert (=> b!1378337 m!1550779))

(declare-fun m!1550781 () Bool)

(assert (=> b!1378337 m!1550781))

(assert (=> b!1378337 m!1550779))

(declare-fun m!1550783 () Bool)

(assert (=> b!1378316 m!1550783))

(assert (=> b!1378323 m!1550779))

(assert (=> b!1378323 m!1550779))

(declare-fun m!1550785 () Bool)

(assert (=> b!1378323 m!1550785))

(assert (=> b!1378323 m!1550779))

(assert (=> b!1378323 m!1550779))

(declare-fun m!1550787 () Bool)

(assert (=> b!1378323 m!1550787))

(declare-fun m!1550789 () Bool)

(assert (=> b!1378329 m!1550789))

(assert (=> b!1378329 m!1550789))

(declare-fun m!1550791 () Bool)

(assert (=> b!1378329 m!1550791))

(declare-fun m!1550793 () Bool)

(assert (=> b!1378331 m!1550793))

(declare-fun m!1550795 () Bool)

(assert (=> b!1378306 m!1550795))

(declare-fun m!1550797 () Bool)

(assert (=> b!1378318 m!1550797))

(declare-fun m!1550799 () Bool)

(assert (=> b!1378318 m!1550799))

(declare-fun m!1550801 () Bool)

(assert (=> b!1378318 m!1550801))

(assert (=> b!1378318 m!1550799))

(declare-fun m!1550803 () Bool)

(assert (=> b!1378318 m!1550803))

(declare-fun m!1550805 () Bool)

(assert (=> b!1378318 m!1550805))

(declare-fun m!1550807 () Bool)

(assert (=> b!1378319 m!1550807))

(declare-fun m!1550809 () Bool)

(assert (=> b!1378319 m!1550809))

(declare-fun m!1550811 () Bool)

(assert (=> b!1378293 m!1550811))

(assert (=> b!1378293 m!1550811))

(declare-fun m!1550813 () Bool)

(assert (=> b!1378293 m!1550813))

(declare-fun m!1550815 () Bool)

(assert (=> b!1378320 m!1550815))

(declare-fun m!1550817 () Bool)

(assert (=> b!1378298 m!1550817))

(declare-fun m!1550819 () Bool)

(assert (=> b!1378308 m!1550819))

(declare-fun m!1550821 () Bool)

(assert (=> b!1378297 m!1550821))

(declare-fun m!1550823 () Bool)

(assert (=> b!1378297 m!1550823))

(declare-fun m!1550825 () Bool)

(assert (=> b!1378299 m!1550825))

(assert (=> b!1378299 m!1550825))

(declare-fun m!1550827 () Bool)

(assert (=> b!1378299 m!1550827))

(declare-fun m!1550829 () Bool)

(assert (=> b!1378330 m!1550829))

(assert (=> b!1378330 m!1550829))

(declare-fun m!1550831 () Bool)

(assert (=> b!1378330 m!1550831))

(declare-fun m!1550833 () Bool)

(assert (=> b!1378294 m!1550833))

(declare-fun m!1550835 () Bool)

(assert (=> b!1378294 m!1550835))

(declare-fun m!1550837 () Bool)

(assert (=> b!1378294 m!1550837))

(assert (=> b!1378294 m!1550837))

(declare-fun m!1550839 () Bool)

(assert (=> b!1378294 m!1550839))

(declare-fun m!1550841 () Bool)

(assert (=> b!1378315 m!1550841))

(declare-fun m!1550843 () Bool)

(assert (=> b!1378315 m!1550843))

(declare-fun m!1550845 () Bool)

(assert (=> b!1378291 m!1550845))

(declare-fun m!1550847 () Bool)

(assert (=> b!1378309 m!1550847))

(assert (=> b!1378309 m!1550847))

(declare-fun m!1550849 () Bool)

(assert (=> b!1378309 m!1550849))

(declare-fun m!1550851 () Bool)

(assert (=> b!1378324 m!1550851))

(declare-fun m!1550853 () Bool)

(assert (=> b!1378335 m!1550853))

(declare-fun m!1550855 () Bool)

(assert (=> b!1378317 m!1550855))

(declare-fun m!1550857 () Bool)

(assert (=> b!1378311 m!1550857))

(declare-fun m!1550859 () Bool)

(assert (=> b!1378328 m!1550859))

(declare-fun m!1550861 () Bool)

(assert (=> b!1378328 m!1550861))

(declare-fun m!1550863 () Bool)

(assert (=> b!1378307 m!1550863))

(declare-fun m!1550865 () Bool)

(assert (=> b!1378321 m!1550865))

(declare-fun m!1550867 () Bool)

(assert (=> b!1378301 m!1550867))

(declare-fun m!1550869 () Bool)

(assert (=> b!1378301 m!1550869))

(declare-fun m!1550871 () Bool)

(assert (=> b!1378326 m!1550871))

(declare-fun m!1550873 () Bool)

(assert (=> b!1378326 m!1550873))

(declare-fun m!1550875 () Bool)

(assert (=> b!1378326 m!1550875))

(declare-fun m!1550877 () Bool)

(assert (=> b!1378326 m!1550877))

(declare-fun m!1550879 () Bool)

(assert (=> b!1378326 m!1550879))

(declare-fun m!1550881 () Bool)

(assert (=> b!1378326 m!1550881))

(declare-fun m!1550883 () Bool)

(assert (=> b!1378302 m!1550883))

(declare-fun m!1550885 () Bool)

(assert (=> b!1378292 m!1550885))

(assert (=> b!1378292 m!1550885))

(declare-fun m!1550887 () Bool)

(assert (=> b!1378292 m!1550887))

(declare-fun m!1550889 () Bool)

(assert (=> b!1378322 m!1550889))

(declare-fun m!1550891 () Bool)

(assert (=> b!1378322 m!1550891))

(declare-fun m!1550893 () Bool)

(assert (=> b!1378322 m!1550893))

(declare-fun m!1550895 () Bool)

(assert (=> b!1378322 m!1550895))

(declare-fun m!1550897 () Bool)

(assert (=> b!1378303 m!1550897))

(declare-fun m!1550899 () Bool)

(assert (=> b!1378300 m!1550899))

(declare-fun m!1550901 () Bool)

(assert (=> b!1378300 m!1550901))

(declare-fun m!1550903 () Bool)

(assert (=> b!1378290 m!1550903))

(assert (=> b!1378290 m!1550903))

(declare-fun m!1550905 () Bool)

(assert (=> b!1378290 m!1550905))

(declare-fun m!1550907 () Bool)

(assert (=> b!1378312 m!1550907))

(assert (=> b!1378312 m!1550907))

(declare-fun m!1550909 () Bool)

(assert (=> b!1378312 m!1550909))

(declare-fun m!1550911 () Bool)

(assert (=> b!1378312 m!1550911))

(declare-fun m!1550913 () Bool)

(assert (=> start!124634 m!1550913))

(declare-fun m!1550915 () Bool)

(assert (=> start!124634 m!1550915))

(declare-fun m!1550917 () Bool)

(assert (=> b!1378325 m!1550917))

(declare-fun m!1550919 () Bool)

(assert (=> b!1378296 m!1550919))

(declare-fun m!1550921 () Bool)

(assert (=> b!1378332 m!1550921))

(assert (=> b!1378332 m!1550921))

(declare-fun m!1550923 () Bool)

(assert (=> b!1378332 m!1550923))

(declare-fun m!1550925 () Bool)

(assert (=> b!1378327 m!1550925))

(assert (=> b!1378327 m!1550925))

(declare-fun m!1550927 () Bool)

(assert (=> b!1378327 m!1550927))

(declare-fun m!1550929 () Bool)

(assert (=> b!1378327 m!1550929))

(declare-fun m!1550931 () Bool)

(assert (=> b!1378295 m!1550931))

(declare-fun m!1550933 () Bool)

(assert (=> b!1378313 m!1550933))

(check-sat (not b!1378308) (not b!1378335) (not b_next!34155) (not b!1378318) (not b!1378301) (not b!1378316) b_and!92333 (not b_next!34153) (not b!1378315) b_and!92331 (not b!1378296) b_and!92325 (not b!1378300) (not b!1378312) (not b_next!34151) (not b!1378313) (not b!1378311) (not b!1378295) (not b!1378302) (not b!1378317) (not b!1378309) b_and!92323 (not b!1378333) (not b!1378325) (not b!1378330) (not b!1378323) (not b!1378293) (not b!1378306) (not b!1378307) (not b!1378324) (not b!1378299) (not b!1378327) (not start!124634) (not b_next!34147) (not b!1378319) (not b!1378322) (not b!1378328) (not b!1378298) (not b!1378297) (not b!1378331) (not b!1378294) (not b!1378321) (not b!1378292) (not b_next!34157) (not b_next!34149) (not b!1378303) (not b!1378329) b_and!92329 b_and!92327 (not b!1378290) (not b!1378320) (not b!1378332) (not b!1378326) (not b!1378291) (not b!1378337))
(check-sat (not b_next!34151) b_and!92323 (not b_next!34147) (not b_next!34155) b_and!92333 (not b_next!34153) (not b_next!34157) b_and!92331 b_and!92325 (not b_next!34149) b_and!92329 b_and!92327)
