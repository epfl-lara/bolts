; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!299262 () Bool)

(assert start!299262)

(declare-fun b!3190625 () Bool)

(declare-fun b_free!84385 () Bool)

(declare-fun b_next!85089 () Bool)

(assert (=> b!3190625 (= b_free!84385 (not b_next!85089))))

(declare-fun tp!1008616 () Bool)

(declare-fun b_and!211395 () Bool)

(assert (=> b!3190625 (= tp!1008616 b_and!211395)))

(declare-fun b_free!84387 () Bool)

(declare-fun b_next!85091 () Bool)

(assert (=> b!3190625 (= b_free!84387 (not b_next!85091))))

(declare-fun tp!1008618 () Bool)

(declare-fun b_and!211397 () Bool)

(assert (=> b!3190625 (= tp!1008618 b_and!211397)))

(declare-fun b!3190622 () Bool)

(declare-fun b_free!84389 () Bool)

(declare-fun b_next!85093 () Bool)

(assert (=> b!3190622 (= b_free!84389 (not b_next!85093))))

(declare-fun tp!1008619 () Bool)

(declare-fun b_and!211399 () Bool)

(assert (=> b!3190622 (= tp!1008619 b_and!211399)))

(declare-fun b_free!84391 () Bool)

(declare-fun b_next!85095 () Bool)

(assert (=> b!3190622 (= b_free!84391 (not b_next!85095))))

(declare-fun tp!1008617 () Bool)

(declare-fun b_and!211401 () Bool)

(assert (=> b!3190622 (= tp!1008617 b_and!211401)))

(declare-fun b!3190602 () Bool)

(declare-fun b_free!84393 () Bool)

(declare-fun b_next!85097 () Bool)

(assert (=> b!3190602 (= b_free!84393 (not b_next!85097))))

(declare-fun tp!1008624 () Bool)

(declare-fun b_and!211403 () Bool)

(assert (=> b!3190602 (= tp!1008624 b_and!211403)))

(declare-fun b_free!84395 () Bool)

(declare-fun b_next!85099 () Bool)

(assert (=> b!3190602 (= b_free!84395 (not b_next!85099))))

(declare-fun tp!1008614 () Bool)

(declare-fun b_and!211405 () Bool)

(assert (=> b!3190602 (= tp!1008614 b_and!211405)))

(declare-fun b!3190596 () Bool)

(declare-fun res!1297678 () Bool)

(declare-fun e!1988520 () Bool)

(assert (=> b!3190596 (=> res!1297678 e!1988520)))

(declare-datatypes ((C!20012 0))(
  ( (C!20013 (val!12054 Int)) )
))
(declare-datatypes ((Regex!9913 0))(
  ( (ElementMatch!9913 (c!535792 C!20012)) (Concat!15297 (regOne!20338 Regex!9913) (regTwo!20338 Regex!9913)) (EmptyExpr!9913) (Star!9913 (reg!10242 Regex!9913)) (EmptyLang!9913) (Union!9913 (regOne!20339 Regex!9913) (regTwo!20339 Regex!9913)) )
))
(declare-datatypes ((List!36008 0))(
  ( (Nil!35884) (Cons!35884 (h!41304 (_ BitVec 16)) (t!236159 List!36008)) )
))
(declare-datatypes ((TokenValue!5384 0))(
  ( (FloatLiteralValue!10768 (text!38133 List!36008)) (TokenValueExt!5383 (__x!22985 Int)) (Broken!26920 (value!167323 List!36008)) (Object!5507) (End!5384) (Def!5384) (Underscore!5384) (Match!5384) (Else!5384) (Error!5384) (Case!5384) (If!5384) (Extends!5384) (Abstract!5384) (Class!5384) (Val!5384) (DelimiterValue!10768 (del!5444 List!36008)) (KeywordValue!5390 (value!167324 List!36008)) (CommentValue!10768 (value!167325 List!36008)) (WhitespaceValue!10768 (value!167326 List!36008)) (IndentationValue!5384 (value!167327 List!36008)) (String!40253) (Int32!5384) (Broken!26921 (value!167328 List!36008)) (Boolean!5385) (Unit!50319) (OperatorValue!5387 (op!5444 List!36008)) (IdentifierValue!10768 (value!167329 List!36008)) (IdentifierValue!10769 (value!167330 List!36008)) (WhitespaceValue!10769 (value!167331 List!36008)) (True!10768) (False!10768) (Broken!26922 (value!167332 List!36008)) (Broken!26923 (value!167333 List!36008)) (True!10769) (RightBrace!5384) (RightBracket!5384) (Colon!5384) (Null!5384) (Comma!5384) (LeftBracket!5384) (False!10769) (LeftBrace!5384) (ImaginaryLiteralValue!5384 (text!38134 List!36008)) (StringLiteralValue!16152 (value!167334 List!36008)) (EOFValue!5384 (value!167335 List!36008)) (IdentValue!5384 (value!167336 List!36008)) (DelimiterValue!10769 (value!167337 List!36008)) (DedentValue!5384 (value!167338 List!36008)) (NewLineValue!5384 (value!167339 List!36008)) (IntegerValue!16152 (value!167340 (_ BitVec 32)) (text!38135 List!36008)) (IntegerValue!16153 (value!167341 Int) (text!38136 List!36008)) (Times!5384) (Or!5384) (Equal!5384) (Minus!5384) (Broken!26924 (value!167342 List!36008)) (And!5384) (Div!5384) (LessEqual!5384) (Mod!5384) (Concat!15298) (Not!5384) (Plus!5384) (SpaceValue!5384 (value!167343 List!36008)) (IntegerValue!16154 (value!167344 Int) (text!38137 List!36008)) (StringLiteralValue!16153 (text!38138 List!36008)) (FloatLiteralValue!10769 (text!38139 List!36008)) (BytesLiteralValue!5384 (value!167345 List!36008)) (CommentValue!10769 (value!167346 List!36008)) (StringLiteralValue!16154 (value!167347 List!36008)) (ErrorTokenValue!5384 (msg!5445 List!36008)) )
))
(declare-datatypes ((List!36009 0))(
  ( (Nil!35885) (Cons!35885 (h!41305 C!20012) (t!236160 List!36009)) )
))
(declare-datatypes ((IArray!21371 0))(
  ( (IArray!21372 (innerList!10743 List!36009)) )
))
(declare-datatypes ((Conc!10683 0))(
  ( (Node!10683 (left!27902 Conc!10683) (right!28232 Conc!10683) (csize!21596 Int) (cheight!10894 Int)) (Leaf!16871 (xs!13801 IArray!21371) (csize!21597 Int)) (Empty!10683) )
))
(declare-datatypes ((BalanceConc!20980 0))(
  ( (BalanceConc!20981 (c!535793 Conc!10683)) )
))
(declare-datatypes ((String!40254 0))(
  ( (String!40255 (value!167348 String)) )
))
(declare-datatypes ((TokenValueInjection!10196 0))(
  ( (TokenValueInjection!10197 (toValue!7218 Int) (toChars!7077 Int)) )
))
(declare-datatypes ((Rule!10108 0))(
  ( (Rule!10109 (regex!5154 Regex!9913) (tag!5672 String!40254) (isSeparator!5154 Bool) (transformation!5154 TokenValueInjection!10196)) )
))
(declare-datatypes ((Token!9674 0))(
  ( (Token!9675 (value!167349 TokenValue!5384) (rule!7586 Rule!10108) (size!27064 Int) (originalCharacters!5868 List!36009)) )
))
(declare-fun separatorToken!241 () Token!9674)

(declare-datatypes ((LexerInterface!4743 0))(
  ( (LexerInterfaceExt!4740 (__x!22986 Int)) (Lexer!4741) )
))
(declare-fun thiss!18206 () LexerInterface!4743)

(declare-fun lambda!116705 () Int)

(declare-datatypes ((List!36010 0))(
  ( (Nil!35886) (Cons!35886 (h!41306 Rule!10108) (t!236161 List!36010)) )
))
(declare-fun rules!2135 () List!36010)

(declare-datatypes ((List!36011 0))(
  ( (Nil!35887) (Cons!35887 (h!41307 Token!9674) (t!236162 List!36011)) )
))
(declare-fun isEmpty!20016 (List!36011) Bool)

(declare-fun filter!502 (List!36011 Int) List!36011)

(declare-datatypes ((IArray!21373 0))(
  ( (IArray!21374 (innerList!10744 List!36011)) )
))
(declare-datatypes ((Conc!10684 0))(
  ( (Node!10684 (left!27903 Conc!10684) (right!28233 Conc!10684) (csize!21598 Int) (cheight!10895 Int)) (Leaf!16872 (xs!13802 IArray!21373) (csize!21599 Int)) (Empty!10684) )
))
(declare-datatypes ((BalanceConc!20982 0))(
  ( (BalanceConc!20983 (c!535794 Conc!10684)) )
))
(declare-fun list!12748 (BalanceConc!20982) List!36011)

(declare-datatypes ((tuple2!35280 0))(
  ( (tuple2!35281 (_1!20774 BalanceConc!20982) (_2!20774 BalanceConc!20980)) )
))
(declare-fun lex!2083 (LexerInterface!4743 List!36010 BalanceConc!20980) tuple2!35280)

(declare-fun printWithSeparatorToken!52 (LexerInterface!4743 BalanceConc!20982 Token!9674) BalanceConc!20980)

(assert (=> b!3190596 (= res!1297678 (not (isEmpty!20016 (filter!502 (list!12748 (_1!20774 (lex!2083 thiss!18206 rules!2135 (printWithSeparatorToken!52 thiss!18206 (BalanceConc!20983 Empty!10684) separatorToken!241)))) lambda!116705))))))

(declare-fun b!3190597 () Bool)

(declare-fun e!1988525 () Bool)

(declare-fun tokens!494 () List!36011)

(declare-fun lt!1074514 () Rule!10108)

(assert (=> b!3190597 (= e!1988525 (= (rule!7586 (h!41307 tokens!494)) lt!1074514))))

(declare-fun b!3190598 () Bool)

(declare-fun res!1297668 () Bool)

(declare-fun e!1988543 () Bool)

(assert (=> b!3190598 (=> (not res!1297668) (not e!1988543))))

(declare-fun rulesProduceIndividualToken!2235 (LexerInterface!4743 List!36010 Token!9674) Bool)

(assert (=> b!3190598 (= res!1297668 (rulesProduceIndividualToken!2235 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun e!1988541 () Bool)

(declare-fun b!3190599 () Bool)

(declare-fun e!1988529 () Bool)

(declare-fun tp!1008622 () Bool)

(declare-fun inv!48733 (String!40254) Bool)

(declare-fun inv!48736 (TokenValueInjection!10196) Bool)

(assert (=> b!3190599 (= e!1988541 (and tp!1008622 (inv!48733 (tag!5672 (rule!7586 separatorToken!241))) (inv!48736 (transformation!5154 (rule!7586 separatorToken!241))) e!1988529))))

(declare-fun b!3190600 () Bool)

(declare-datatypes ((tuple2!35282 0))(
  ( (tuple2!35283 (_1!20775 List!36011) (_2!20775 List!36009)) )
))
(declare-fun e!1988536 () tuple2!35282)

(declare-datatypes ((tuple2!35284 0))(
  ( (tuple2!35285 (_1!20776 Token!9674) (_2!20776 List!36009)) )
))
(declare-datatypes ((Option!7041 0))(
  ( (None!7040) (Some!7040 (v!35540 tuple2!35284)) )
))
(declare-fun lt!1074523 () Option!7041)

(declare-fun lt!1074510 () tuple2!35282)

(assert (=> b!3190600 (= e!1988536 (tuple2!35283 (Cons!35887 (_1!20776 (v!35540 lt!1074523)) (_1!20775 lt!1074510)) (_2!20775 lt!1074510)))))

(declare-fun lexList!1293 (LexerInterface!4743 List!36010 List!36009) tuple2!35282)

(assert (=> b!3190600 (= lt!1074510 (lexList!1293 thiss!18206 rules!2135 (_2!20776 (v!35540 lt!1074523))))))

(declare-fun b!3190601 () Bool)

(declare-fun res!1297664 () Bool)

(assert (=> b!3190601 (=> (not res!1297664) (not e!1988543))))

(assert (=> b!3190601 (= res!1297664 (isSeparator!5154 (rule!7586 separatorToken!241)))))

(declare-fun e!1988526 () Bool)

(assert (=> b!3190602 (= e!1988526 (and tp!1008624 tp!1008614))))

(declare-fun b!3190603 () Bool)

(declare-fun e!1988523 () Bool)

(declare-fun e!1988542 () Bool)

(assert (=> b!3190603 (= e!1988523 e!1988542)))

(declare-fun res!1297662 () Bool)

(assert (=> b!3190603 (=> res!1297662 e!1988542)))

(declare-fun lt!1074505 () Bool)

(assert (=> b!3190603 (= res!1297662 lt!1074505)))

(declare-datatypes ((Unit!50320 0))(
  ( (Unit!50321) )
))
(declare-fun lt!1074498 () Unit!50320)

(declare-fun e!1988534 () Unit!50320)

(assert (=> b!3190603 (= lt!1074498 e!1988534)))

(declare-fun c!535791 () Bool)

(assert (=> b!3190603 (= c!535791 lt!1074505)))

(declare-fun lt!1074500 () C!20012)

(declare-fun contains!6379 (List!36009 C!20012) Bool)

(declare-fun usedCharacters!498 (Regex!9913) List!36009)

(assert (=> b!3190603 (= lt!1074505 (not (contains!6379 (usedCharacters!498 (regex!5154 (rule!7586 separatorToken!241))) lt!1074500)))))

(declare-fun lt!1074519 () List!36009)

(declare-fun head!6989 (List!36009) C!20012)

(assert (=> b!3190603 (= lt!1074500 (head!6989 lt!1074519))))

(declare-fun lt!1074497 () BalanceConc!20980)

(declare-fun lt!1074511 () List!36009)

(declare-fun maxPrefixOneRule!1548 (LexerInterface!4743 Rule!10108 List!36009) Option!7041)

(declare-fun apply!8092 (TokenValueInjection!10196 BalanceConc!20980) TokenValue!5384)

(declare-fun size!27065 (List!36009) Int)

(assert (=> b!3190603 (= (maxPrefixOneRule!1548 thiss!18206 (rule!7586 (h!41307 tokens!494)) lt!1074511) (Some!7040 (tuple2!35285 (Token!9675 (apply!8092 (transformation!5154 (rule!7586 (h!41307 tokens!494))) lt!1074497) (rule!7586 (h!41307 tokens!494)) (size!27065 lt!1074511) lt!1074511) Nil!35885)))))

(declare-fun lt!1074518 () Unit!50320)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!661 (LexerInterface!4743 List!36010 List!36009 List!36009 List!36009 Rule!10108) Unit!50320)

(assert (=> b!3190603 (= lt!1074518 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!661 thiss!18206 rules!2135 lt!1074511 lt!1074511 Nil!35885 (rule!7586 (h!41307 tokens!494))))))

(declare-fun e!1988540 () Bool)

(assert (=> b!3190603 e!1988540))

(declare-fun res!1297675 () Bool)

(assert (=> b!3190603 (=> (not res!1297675) (not e!1988540))))

(declare-datatypes ((Option!7042 0))(
  ( (None!7041) (Some!7041 (v!35541 Rule!10108)) )
))
(declare-fun lt!1074495 () Option!7042)

(declare-fun isDefined!5506 (Option!7042) Bool)

(assert (=> b!3190603 (= res!1297675 (isDefined!5506 lt!1074495))))

(declare-fun getRuleFromTag!883 (LexerInterface!4743 List!36010 String!40254) Option!7042)

(assert (=> b!3190603 (= lt!1074495 (getRuleFromTag!883 thiss!18206 rules!2135 (tag!5672 (rule!7586 separatorToken!241))))))

(declare-fun lt!1074524 () Unit!50320)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!883 (LexerInterface!4743 List!36010 List!36009 Token!9674) Unit!50320)

(assert (=> b!3190603 (= lt!1074524 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!883 thiss!18206 rules!2135 lt!1074519 separatorToken!241))))

(declare-fun e!1988535 () Bool)

(assert (=> b!3190603 e!1988535))

(declare-fun res!1297674 () Bool)

(assert (=> b!3190603 (=> (not res!1297674) (not e!1988535))))

(declare-fun lt!1074517 () Option!7042)

(assert (=> b!3190603 (= res!1297674 (isDefined!5506 lt!1074517))))

(assert (=> b!3190603 (= lt!1074517 (getRuleFromTag!883 thiss!18206 rules!2135 (tag!5672 (rule!7586 (h!41307 tokens!494)))))))

(declare-fun lt!1074508 () Unit!50320)

(assert (=> b!3190603 (= lt!1074508 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!883 thiss!18206 rules!2135 lt!1074511 (h!41307 tokens!494)))))

(declare-fun lt!1074506 () Unit!50320)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!804 (LexerInterface!4743 List!36010 List!36011 Token!9674) Unit!50320)

(assert (=> b!3190603 (= lt!1074506 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!804 thiss!18206 rules!2135 tokens!494 (h!41307 tokens!494)))))

(declare-fun isEmpty!20017 (List!36009) Bool)

(declare-fun getSuffix!1370 (List!36009 List!36009) List!36009)

(assert (=> b!3190603 (isEmpty!20017 (getSuffix!1370 lt!1074511 lt!1074511))))

(declare-fun lt!1074496 () Unit!50320)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!48 (List!36009) Unit!50320)

(assert (=> b!3190603 (= lt!1074496 (lemmaGetSuffixOnListWithItSelfIsEmpty!48 lt!1074511))))

(declare-fun b!3190604 () Bool)

(declare-fun lt!1074516 () List!36009)

(assert (=> b!3190604 (= e!1988536 (tuple2!35283 Nil!35887 lt!1074516))))

(assert (=> b!3190604 false))

(declare-fun e!1988531 () Bool)

(declare-fun b!3190605 () Bool)

(declare-fun tp!1008620 () Bool)

(declare-fun inv!21 (TokenValue!5384) Bool)

(assert (=> b!3190605 (= e!1988531 (and (inv!21 (value!167349 separatorToken!241)) e!1988541 tp!1008620))))

(declare-fun b!3190606 () Bool)

(declare-fun tp!1008615 () Bool)

(declare-fun e!1988527 () Bool)

(declare-fun e!1988515 () Bool)

(declare-fun inv!48737 (Token!9674) Bool)

(assert (=> b!3190606 (= e!1988527 (and (inv!48737 (h!41307 tokens!494)) e!1988515 tp!1008615))))

(declare-fun b!3190607 () Bool)

(declare-fun e!1988532 () Bool)

(declare-fun e!1988521 () Bool)

(declare-fun tp!1008621 () Bool)

(assert (=> b!3190607 (= e!1988532 (and e!1988521 tp!1008621))))

(declare-fun b!3190608 () Bool)

(declare-fun res!1297672 () Bool)

(assert (=> b!3190608 (=> (not res!1297672) (not e!1988543))))

(declare-fun forall!7286 (List!36011 Int) Bool)

(assert (=> b!3190608 (= res!1297672 (forall!7286 tokens!494 lambda!116705))))

(declare-fun b!3190609 () Bool)

(declare-fun res!1297659 () Bool)

(declare-fun e!1988522 () Bool)

(assert (=> b!3190609 (=> res!1297659 e!1988522)))

(assert (=> b!3190609 (= res!1297659 (not (rulesProduceIndividualToken!2235 thiss!18206 rules!2135 (h!41307 tokens!494))))))

(declare-fun b!3190610 () Bool)

(declare-fun e!1988517 () Bool)

(assert (=> b!3190610 (= e!1988540 e!1988517)))

(declare-fun res!1297660 () Bool)

(assert (=> b!3190610 (=> (not res!1297660) (not e!1988517))))

(declare-fun lt!1074522 () Rule!10108)

(declare-fun matchR!4571 (Regex!9913 List!36009) Bool)

(assert (=> b!3190610 (= res!1297660 (matchR!4571 (regex!5154 lt!1074522) lt!1074519))))

(declare-fun get!11428 (Option!7042) Rule!10108)

(assert (=> b!3190610 (= lt!1074522 (get!11428 lt!1074495))))

(declare-fun res!1297673 () Bool)

(declare-fun e!1988544 () Bool)

(assert (=> start!299262 (=> (not res!1297673) (not e!1988544))))

(get-info :version)

(assert (=> start!299262 (= res!1297673 ((_ is Lexer!4741) thiss!18206))))

(assert (=> start!299262 e!1988544))

(assert (=> start!299262 true))

(assert (=> start!299262 e!1988532))

(assert (=> start!299262 (and (inv!48737 separatorToken!241) e!1988531)))

(assert (=> start!299262 e!1988527))

(declare-fun e!1988518 () Bool)

(declare-fun b!3190611 () Bool)

(declare-fun tp!1008625 () Bool)

(declare-fun e!1988530 () Bool)

(assert (=> b!3190611 (= e!1988530 (and tp!1008625 (inv!48733 (tag!5672 (rule!7586 (h!41307 tokens!494)))) (inv!48736 (transformation!5154 (rule!7586 (h!41307 tokens!494)))) e!1988518))))

(declare-fun b!3190612 () Bool)

(declare-fun e!1988514 () Bool)

(assert (=> b!3190612 (= e!1988543 (not e!1988514))))

(declare-fun res!1297677 () Bool)

(assert (=> b!3190612 (=> res!1297677 e!1988514)))

(declare-fun lt!1074501 () List!36009)

(declare-fun lt!1074513 () List!36009)

(assert (=> b!3190612 (= res!1297677 (not (= lt!1074501 lt!1074513)))))

(declare-fun printList!1297 (LexerInterface!4743 List!36011) List!36009)

(assert (=> b!3190612 (= lt!1074513 (printList!1297 thiss!18206 (Cons!35887 (h!41307 tokens!494) Nil!35887)))))

(declare-fun lt!1074520 () BalanceConc!20980)

(declare-fun list!12749 (BalanceConc!20980) List!36009)

(assert (=> b!3190612 (= lt!1074501 (list!12749 lt!1074520))))

(declare-fun lt!1074515 () BalanceConc!20982)

(declare-fun printTailRec!1242 (LexerInterface!4743 BalanceConc!20982 Int BalanceConc!20980) BalanceConc!20980)

(assert (=> b!3190612 (= lt!1074520 (printTailRec!1242 thiss!18206 lt!1074515 0 (BalanceConc!20981 Empty!10683)))))

(declare-fun print!1810 (LexerInterface!4743 BalanceConc!20982) BalanceConc!20980)

(assert (=> b!3190612 (= lt!1074520 (print!1810 thiss!18206 lt!1074515))))

(declare-fun singletonSeq!2250 (Token!9674) BalanceConc!20982)

(assert (=> b!3190612 (= lt!1074515 (singletonSeq!2250 (h!41307 tokens!494)))))

(declare-fun tp!1008623 () Bool)

(declare-fun b!3190613 () Bool)

(assert (=> b!3190613 (= e!1988521 (and tp!1008623 (inv!48733 (tag!5672 (h!41306 rules!2135))) (inv!48736 (transformation!5154 (h!41306 rules!2135))) e!1988526))))

(declare-fun b!3190614 () Bool)

(declare-fun res!1297658 () Bool)

(assert (=> b!3190614 (=> (not res!1297658) (not e!1988544))))

(declare-fun rulesInvariant!4140 (LexerInterface!4743 List!36010) Bool)

(assert (=> b!3190614 (= res!1297658 (rulesInvariant!4140 thiss!18206 rules!2135))))

(declare-fun b!3190615 () Bool)

(declare-fun e!1988524 () Bool)

(assert (=> b!3190615 (= e!1988524 false)))

(declare-fun b!3190616 () Bool)

(assert (=> b!3190616 (= e!1988514 e!1988522)))

(declare-fun res!1297670 () Bool)

(assert (=> b!3190616 (=> res!1297670 e!1988522)))

(assert (=> b!3190616 (= res!1297670 (or (not (= lt!1074513 lt!1074511)) (not (= lt!1074501 lt!1074511))))))

(declare-fun charsOf!3176 (Token!9674) BalanceConc!20980)

(assert (=> b!3190616 (= lt!1074511 (list!12749 (charsOf!3176 (h!41307 tokens!494))))))

(declare-fun b!3190617 () Bool)

(declare-fun Unit!50322 () Unit!50320)

(assert (=> b!3190617 (= e!1988534 Unit!50322)))

(declare-fun b!3190618 () Bool)

(declare-fun res!1297665 () Bool)

(assert (=> b!3190618 (=> (not res!1297665) (not e!1988544))))

(declare-fun isEmpty!20018 (List!36010) Bool)

(assert (=> b!3190618 (= res!1297665 (not (isEmpty!20018 rules!2135)))))

(declare-fun b!3190619 () Bool)

(declare-fun e!1988528 () Bool)

(assert (=> b!3190619 (= e!1988528 e!1988523)))

(declare-fun res!1297661 () Bool)

(assert (=> b!3190619 (=> res!1297661 e!1988523)))

(declare-fun lt!1074507 () List!36009)

(assert (=> b!3190619 (= res!1297661 (not (= lt!1074516 lt!1074507)))))

(declare-fun ++!8592 (List!36009 List!36009) List!36009)

(assert (=> b!3190619 (= lt!1074507 (++!8592 lt!1074511 lt!1074519))))

(declare-fun lt!1074509 () BalanceConc!20980)

(assert (=> b!3190619 (= lt!1074516 (list!12749 lt!1074509))))

(assert (=> b!3190619 (= lt!1074519 (list!12749 (charsOf!3176 separatorToken!241)))))

(declare-fun lt!1074502 () BalanceConc!20982)

(assert (=> b!3190619 (= lt!1074509 (printWithSeparatorToken!52 thiss!18206 lt!1074502 separatorToken!241))))

(declare-fun b!3190620 () Bool)

(assert (=> b!3190620 (= e!1988535 e!1988525)))

(declare-fun res!1297657 () Bool)

(assert (=> b!3190620 (=> (not res!1297657) (not e!1988525))))

(assert (=> b!3190620 (= res!1297657 (matchR!4571 (regex!5154 lt!1074514) lt!1074511))))

(assert (=> b!3190620 (= lt!1074514 (get!11428 lt!1074517))))

(declare-fun b!3190621 () Bool)

(declare-fun e!1988516 () Bool)

(assert (=> b!3190621 (= e!1988522 e!1988516)))

(declare-fun res!1297663 () Bool)

(assert (=> b!3190621 (=> res!1297663 e!1988516)))

(declare-fun isEmpty!20019 (BalanceConc!20982) Bool)

(assert (=> b!3190621 (= res!1297663 (isEmpty!20019 (_1!20774 (lex!2083 thiss!18206 rules!2135 lt!1074497))))))

(declare-fun seqFromList!3387 (List!36009) BalanceConc!20980)

(assert (=> b!3190621 (= lt!1074497 (seqFromList!3387 lt!1074511))))

(assert (=> b!3190622 (= e!1988518 (and tp!1008619 tp!1008617))))

(declare-fun b!3190623 () Bool)

(assert (=> b!3190623 (= e!1988517 (= (rule!7586 separatorToken!241) lt!1074522))))

(declare-fun b!3190624 () Bool)

(assert (=> b!3190624 (= e!1988516 e!1988528)))

(declare-fun res!1297671 () Bool)

(assert (=> b!3190624 (=> res!1297671 e!1988528)))

(assert (=> b!3190624 (= res!1297671 (isSeparator!5154 (rule!7586 (h!41307 tokens!494))))))

(declare-fun lt!1074521 () Unit!50320)

(declare-fun forallContained!1137 (List!36011 Int Token!9674) Unit!50320)

(assert (=> b!3190624 (= lt!1074521 (forallContained!1137 tokens!494 lambda!116705 (h!41307 tokens!494)))))

(assert (=> b!3190625 (= e!1988529 (and tp!1008616 tp!1008618))))

(declare-fun b!3190626 () Bool)

(declare-fun Unit!50323 () Unit!50320)

(assert (=> b!3190626 (= e!1988534 Unit!50323)))

(declare-fun lt!1074503 () Unit!50320)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!352 (Regex!9913 List!36009 C!20012) Unit!50320)

(assert (=> b!3190626 (= lt!1074503 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!352 (regex!5154 (rule!7586 separatorToken!241)) lt!1074519 lt!1074500))))

(declare-fun res!1297669 () Bool)

(assert (=> b!3190626 (= res!1297669 (not (matchR!4571 (regex!5154 (rule!7586 separatorToken!241)) lt!1074519)))))

(assert (=> b!3190626 (=> (not res!1297669) (not e!1988524))))

(assert (=> b!3190626 e!1988524))

(declare-fun b!3190627 () Bool)

(assert (=> b!3190627 (= e!1988542 e!1988520)))

(declare-fun res!1297667 () Bool)

(assert (=> b!3190627 (=> res!1297667 e!1988520)))

(assert (=> b!3190627 (= res!1297667 (not (= e!1988536 (lexList!1293 thiss!18206 rules!2135 lt!1074516))))))

(declare-fun c!535790 () Bool)

(assert (=> b!3190627 (= c!535790 ((_ is Some!7040) lt!1074523))))

(declare-fun maxPrefix!2421 (LexerInterface!4743 List!36010 List!36009) Option!7041)

(assert (=> b!3190627 (= lt!1074523 (maxPrefix!2421 thiss!18206 rules!2135 lt!1074516))))

(assert (=> b!3190627 (= (maxPrefix!2421 thiss!18206 rules!2135 lt!1074507) (Some!7040 (tuple2!35285 (h!41307 tokens!494) lt!1074519)))))

(declare-fun lt!1074512 () Unit!50320)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!132 (LexerInterface!4743 List!36010 Token!9674 Rule!10108 List!36009 Rule!10108) Unit!50320)

(assert (=> b!3190627 (= lt!1074512 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!132 thiss!18206 rules!2135 (h!41307 tokens!494) (rule!7586 (h!41307 tokens!494)) lt!1074519 (rule!7586 separatorToken!241)))))

(assert (=> b!3190627 (not (contains!6379 (usedCharacters!498 (regex!5154 (rule!7586 (h!41307 tokens!494)))) lt!1074500))))

(declare-fun lt!1074499 () Unit!50320)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!130 (LexerInterface!4743 List!36010 List!36010 Rule!10108 Rule!10108 C!20012) Unit!50320)

(assert (=> b!3190627 (= lt!1074499 (lemmaNonSepRuleNotContainsCharContainedInASepRule!130 thiss!18206 rules!2135 rules!2135 (rule!7586 (h!41307 tokens!494)) (rule!7586 separatorToken!241) lt!1074500))))

(declare-fun b!3190628 () Bool)

(assert (=> b!3190628 (= e!1988544 e!1988543)))

(declare-fun res!1297676 () Bool)

(assert (=> b!3190628 (=> (not res!1297676) (not e!1988543))))

(declare-fun rulesProduceEachTokenIndividually!1194 (LexerInterface!4743 List!36010 BalanceConc!20982) Bool)

(assert (=> b!3190628 (= res!1297676 (rulesProduceEachTokenIndividually!1194 thiss!18206 rules!2135 lt!1074502))))

(declare-fun seqFromList!3388 (List!36011) BalanceConc!20982)

(assert (=> b!3190628 (= lt!1074502 (seqFromList!3388 tokens!494))))

(declare-fun b!3190629 () Bool)

(declare-fun res!1297666 () Bool)

(assert (=> b!3190629 (=> (not res!1297666) (not e!1988543))))

(assert (=> b!3190629 (= res!1297666 (and (not ((_ is Nil!35887) tokens!494)) ((_ is Nil!35887) (t!236162 tokens!494))))))

(declare-fun tp!1008626 () Bool)

(declare-fun b!3190630 () Bool)

(assert (=> b!3190630 (= e!1988515 (and (inv!21 (value!167349 (h!41307 tokens!494))) e!1988530 tp!1008626))))

(declare-fun b!3190631 () Bool)

(assert (=> b!3190631 (= e!1988520 true)))

(declare-fun lt!1074504 () List!36011)

(declare-fun printWithSeparatorTokenList!104 (LexerInterface!4743 List!36011 Token!9674) List!36009)

(assert (=> b!3190631 (= lt!1074504 (filter!502 (_1!20775 (lexList!1293 thiss!18206 rules!2135 (printWithSeparatorTokenList!104 thiss!18206 Nil!35887 separatorToken!241))) lambda!116705))))

(declare-fun b!3190632 () Bool)

(declare-fun res!1297679 () Bool)

(assert (=> b!3190632 (=> (not res!1297679) (not e!1988543))))

(declare-fun sepAndNonSepRulesDisjointChars!1348 (List!36010 List!36010) Bool)

(assert (=> b!3190632 (= res!1297679 (sepAndNonSepRulesDisjointChars!1348 rules!2135 rules!2135))))

(assert (= (and start!299262 res!1297673) b!3190618))

(assert (= (and b!3190618 res!1297665) b!3190614))

(assert (= (and b!3190614 res!1297658) b!3190628))

(assert (= (and b!3190628 res!1297676) b!3190598))

(assert (= (and b!3190598 res!1297668) b!3190601))

(assert (= (and b!3190601 res!1297664) b!3190608))

(assert (= (and b!3190608 res!1297672) b!3190632))

(assert (= (and b!3190632 res!1297679) b!3190629))

(assert (= (and b!3190629 res!1297666) b!3190612))

(assert (= (and b!3190612 (not res!1297677)) b!3190616))

(assert (= (and b!3190616 (not res!1297670)) b!3190609))

(assert (= (and b!3190609 (not res!1297659)) b!3190621))

(assert (= (and b!3190621 (not res!1297663)) b!3190624))

(assert (= (and b!3190624 (not res!1297671)) b!3190619))

(assert (= (and b!3190619 (not res!1297661)) b!3190603))

(assert (= (and b!3190603 res!1297674) b!3190620))

(assert (= (and b!3190620 res!1297657) b!3190597))

(assert (= (and b!3190603 res!1297675) b!3190610))

(assert (= (and b!3190610 res!1297660) b!3190623))

(assert (= (and b!3190603 c!535791) b!3190626))

(assert (= (and b!3190603 (not c!535791)) b!3190617))

(assert (= (and b!3190626 res!1297669) b!3190615))

(assert (= (and b!3190603 (not res!1297662)) b!3190627))

(assert (= (and b!3190627 c!535790) b!3190600))

(assert (= (and b!3190627 (not c!535790)) b!3190604))

(assert (= (and b!3190627 (not res!1297667)) b!3190596))

(assert (= (and b!3190596 (not res!1297678)) b!3190631))

(assert (= b!3190613 b!3190602))

(assert (= b!3190607 b!3190613))

(assert (= (and start!299262 ((_ is Cons!35886) rules!2135)) b!3190607))

(assert (= b!3190599 b!3190625))

(assert (= b!3190605 b!3190599))

(assert (= start!299262 b!3190605))

(assert (= b!3190611 b!3190622))

(assert (= b!3190630 b!3190611))

(assert (= b!3190606 b!3190630))

(assert (= (and start!299262 ((_ is Cons!35887) tokens!494)) b!3190606))

(declare-fun m!3449665 () Bool)

(assert (=> b!3190631 m!3449665))

(assert (=> b!3190631 m!3449665))

(declare-fun m!3449667 () Bool)

(assert (=> b!3190631 m!3449667))

(declare-fun m!3449669 () Bool)

(assert (=> b!3190631 m!3449669))

(declare-fun m!3449671 () Bool)

(assert (=> b!3190596 m!3449671))

(assert (=> b!3190596 m!3449671))

(declare-fun m!3449673 () Bool)

(assert (=> b!3190596 m!3449673))

(declare-fun m!3449675 () Bool)

(assert (=> b!3190596 m!3449675))

(declare-fun m!3449677 () Bool)

(assert (=> b!3190596 m!3449677))

(declare-fun m!3449679 () Bool)

(assert (=> b!3190596 m!3449679))

(assert (=> b!3190596 m!3449675))

(assert (=> b!3190596 m!3449679))

(declare-fun m!3449681 () Bool)

(assert (=> b!3190600 m!3449681))

(declare-fun m!3449683 () Bool)

(assert (=> b!3190614 m!3449683))

(declare-fun m!3449685 () Bool)

(assert (=> b!3190628 m!3449685))

(declare-fun m!3449687 () Bool)

(assert (=> b!3190628 m!3449687))

(declare-fun m!3449689 () Bool)

(assert (=> b!3190603 m!3449689))

(assert (=> b!3190603 m!3449689))

(declare-fun m!3449691 () Bool)

(assert (=> b!3190603 m!3449691))

(declare-fun m!3449693 () Bool)

(assert (=> b!3190603 m!3449693))

(declare-fun m!3449695 () Bool)

(assert (=> b!3190603 m!3449695))

(declare-fun m!3449697 () Bool)

(assert (=> b!3190603 m!3449697))

(declare-fun m!3449699 () Bool)

(assert (=> b!3190603 m!3449699))

(declare-fun m!3449701 () Bool)

(assert (=> b!3190603 m!3449701))

(declare-fun m!3449703 () Bool)

(assert (=> b!3190603 m!3449703))

(declare-fun m!3449705 () Bool)

(assert (=> b!3190603 m!3449705))

(declare-fun m!3449707 () Bool)

(assert (=> b!3190603 m!3449707))

(declare-fun m!3449709 () Bool)

(assert (=> b!3190603 m!3449709))

(declare-fun m!3449711 () Bool)

(assert (=> b!3190603 m!3449711))

(declare-fun m!3449713 () Bool)

(assert (=> b!3190603 m!3449713))

(declare-fun m!3449715 () Bool)

(assert (=> b!3190603 m!3449715))

(assert (=> b!3190603 m!3449711))

(declare-fun m!3449717 () Bool)

(assert (=> b!3190603 m!3449717))

(declare-fun m!3449719 () Bool)

(assert (=> b!3190603 m!3449719))

(declare-fun m!3449721 () Bool)

(assert (=> b!3190603 m!3449721))

(declare-fun m!3449723 () Bool)

(assert (=> b!3190626 m!3449723))

(declare-fun m!3449725 () Bool)

(assert (=> b!3190626 m!3449725))

(declare-fun m!3449727 () Bool)

(assert (=> b!3190598 m!3449727))

(declare-fun m!3449729 () Bool)

(assert (=> start!299262 m!3449729))

(declare-fun m!3449731 () Bool)

(assert (=> b!3190618 m!3449731))

(declare-fun m!3449733 () Bool)

(assert (=> b!3190621 m!3449733))

(declare-fun m!3449735 () Bool)

(assert (=> b!3190621 m!3449735))

(declare-fun m!3449737 () Bool)

(assert (=> b!3190621 m!3449737))

(declare-fun m!3449739 () Bool)

(assert (=> b!3190612 m!3449739))

(declare-fun m!3449741 () Bool)

(assert (=> b!3190612 m!3449741))

(declare-fun m!3449743 () Bool)

(assert (=> b!3190612 m!3449743))

(declare-fun m!3449745 () Bool)

(assert (=> b!3190612 m!3449745))

(declare-fun m!3449747 () Bool)

(assert (=> b!3190612 m!3449747))

(declare-fun m!3449749 () Bool)

(assert (=> b!3190624 m!3449749))

(declare-fun m!3449751 () Bool)

(assert (=> b!3190599 m!3449751))

(declare-fun m!3449753 () Bool)

(assert (=> b!3190599 m!3449753))

(declare-fun m!3449755 () Bool)

(assert (=> b!3190610 m!3449755))

(declare-fun m!3449757 () Bool)

(assert (=> b!3190610 m!3449757))

(declare-fun m!3449759 () Bool)

(assert (=> b!3190608 m!3449759))

(declare-fun m!3449761 () Bool)

(assert (=> b!3190620 m!3449761))

(declare-fun m!3449763 () Bool)

(assert (=> b!3190620 m!3449763))

(declare-fun m!3449765 () Bool)

(assert (=> b!3190613 m!3449765))

(declare-fun m!3449767 () Bool)

(assert (=> b!3190613 m!3449767))

(declare-fun m!3449769 () Bool)

(assert (=> b!3190605 m!3449769))

(declare-fun m!3449771 () Bool)

(assert (=> b!3190627 m!3449771))

(declare-fun m!3449773 () Bool)

(assert (=> b!3190627 m!3449773))

(declare-fun m!3449775 () Bool)

(assert (=> b!3190627 m!3449775))

(declare-fun m!3449777 () Bool)

(assert (=> b!3190627 m!3449777))

(declare-fun m!3449779 () Bool)

(assert (=> b!3190627 m!3449779))

(declare-fun m!3449781 () Bool)

(assert (=> b!3190627 m!3449781))

(assert (=> b!3190627 m!3449773))

(declare-fun m!3449783 () Bool)

(assert (=> b!3190627 m!3449783))

(declare-fun m!3449785 () Bool)

(assert (=> b!3190611 m!3449785))

(declare-fun m!3449787 () Bool)

(assert (=> b!3190611 m!3449787))

(declare-fun m!3449789 () Bool)

(assert (=> b!3190630 m!3449789))

(declare-fun m!3449791 () Bool)

(assert (=> b!3190632 m!3449791))

(declare-fun m!3449793 () Bool)

(assert (=> b!3190606 m!3449793))

(declare-fun m!3449795 () Bool)

(assert (=> b!3190619 m!3449795))

(declare-fun m!3449797 () Bool)

(assert (=> b!3190619 m!3449797))

(declare-fun m!3449799 () Bool)

(assert (=> b!3190619 m!3449799))

(assert (=> b!3190619 m!3449795))

(declare-fun m!3449801 () Bool)

(assert (=> b!3190619 m!3449801))

(declare-fun m!3449803 () Bool)

(assert (=> b!3190619 m!3449803))

(declare-fun m!3449805 () Bool)

(assert (=> b!3190609 m!3449805))

(declare-fun m!3449807 () Bool)

(assert (=> b!3190616 m!3449807))

(assert (=> b!3190616 m!3449807))

(declare-fun m!3449809 () Bool)

(assert (=> b!3190616 m!3449809))

(check-sat b_and!211395 (not b!3190618) (not b!3190600) b_and!211403 (not b!3190627) (not b!3190613) (not b!3190606) b_and!211401 (not b!3190630) (not b!3190626) (not b!3190596) (not b!3190609) (not b!3190611) (not b!3190620) (not b!3190610) (not b_next!85099) (not b_next!85091) (not b!3190612) (not b!3190605) b_and!211399 (not b!3190619) (not b_next!85089) (not b!3190603) (not b!3190599) (not b!3190628) (not b!3190632) (not b!3190614) (not b!3190598) (not b!3190607) (not b_next!85095) b_and!211397 (not b!3190616) (not b!3190621) (not b!3190631) (not b!3190624) (not b!3190608) (not start!299262) (not b_next!85097) b_and!211405 (not b_next!85093))
(check-sat b_and!211395 (not b_next!85099) (not b_next!85091) b_and!211399 (not b_next!85089) b_and!211403 b_and!211401 (not b_next!85095) b_and!211397 (not b_next!85097) b_and!211405 (not b_next!85093))
