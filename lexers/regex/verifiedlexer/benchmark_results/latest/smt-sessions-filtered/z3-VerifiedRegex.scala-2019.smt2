; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102982 () Bool)

(assert start!102982)

(declare-fun b!1170445 () Bool)

(declare-fun e!750525 () Bool)

(assert (=> b!1170445 (= e!750525 true)))

(declare-fun b!1170444 () Bool)

(declare-fun e!750524 () Bool)

(assert (=> b!1170444 (= e!750524 e!750525)))

(declare-fun b!1170436 () Bool)

(assert (=> b!1170436 e!750524))

(assert (= b!1170444 b!1170445))

(assert (= b!1170436 b!1170444))

(declare-fun b!1170419 () Bool)

(declare-fun e!750505 () Bool)

(declare-fun e!750506 () Bool)

(assert (=> b!1170419 (= e!750505 e!750506)))

(declare-fun res!528656 () Bool)

(assert (=> b!1170419 (=> res!528656 e!750506)))

(declare-datatypes ((List!11602 0))(
  ( (Nil!11578) (Cons!11578 (h!16979 (_ BitVec 16)) (t!110700 List!11602)) )
))
(declare-datatypes ((TokenValue!2085 0))(
  ( (FloatLiteralValue!4170 (text!15040 List!11602)) (TokenValueExt!2084 (__x!7881 Int)) (Broken!10425 (value!65512 List!11602)) (Object!2108) (End!2085) (Def!2085) (Underscore!2085) (Match!2085) (Else!2085) (Error!2085) (Case!2085) (If!2085) (Extends!2085) (Abstract!2085) (Class!2085) (Val!2085) (DelimiterValue!4170 (del!2145 List!11602)) (KeywordValue!2091 (value!65513 List!11602)) (CommentValue!4170 (value!65514 List!11602)) (WhitespaceValue!4170 (value!65515 List!11602)) (IndentationValue!2085 (value!65516 List!11602)) (String!14012) (Int32!2085) (Broken!10426 (value!65517 List!11602)) (Boolean!2086) (Unit!17761) (OperatorValue!2088 (op!2145 List!11602)) (IdentifierValue!4170 (value!65518 List!11602)) (IdentifierValue!4171 (value!65519 List!11602)) (WhitespaceValue!4171 (value!65520 List!11602)) (True!4170) (False!4170) (Broken!10427 (value!65521 List!11602)) (Broken!10428 (value!65522 List!11602)) (True!4171) (RightBrace!2085) (RightBracket!2085) (Colon!2085) (Null!2085) (Comma!2085) (LeftBracket!2085) (False!4171) (LeftBrace!2085) (ImaginaryLiteralValue!2085 (text!15041 List!11602)) (StringLiteralValue!6255 (value!65523 List!11602)) (EOFValue!2085 (value!65524 List!11602)) (IdentValue!2085 (value!65525 List!11602)) (DelimiterValue!4171 (value!65526 List!11602)) (DedentValue!2085 (value!65527 List!11602)) (NewLineValue!2085 (value!65528 List!11602)) (IntegerValue!6255 (value!65529 (_ BitVec 32)) (text!15042 List!11602)) (IntegerValue!6256 (value!65530 Int) (text!15043 List!11602)) (Times!2085) (Or!2085) (Equal!2085) (Minus!2085) (Broken!10429 (value!65531 List!11602)) (And!2085) (Div!2085) (LessEqual!2085) (Mod!2085) (Concat!5374) (Not!2085) (Plus!2085) (SpaceValue!2085 (value!65532 List!11602)) (IntegerValue!6257 (value!65533 Int) (text!15044 List!11602)) (StringLiteralValue!6256 (text!15045 List!11602)) (FloatLiteralValue!4171 (text!15046 List!11602)) (BytesLiteralValue!2085 (value!65534 List!11602)) (CommentValue!4171 (value!65535 List!11602)) (StringLiteralValue!6257 (value!65536 List!11602)) (ErrorTokenValue!2085 (msg!2146 List!11602)) )
))
(declare-datatypes ((C!6896 0))(
  ( (C!6897 (val!3704 Int)) )
))
(declare-datatypes ((Regex!3289 0))(
  ( (ElementMatch!3289 (c!195263 C!6896)) (Concat!5375 (regOne!7090 Regex!3289) (regTwo!7090 Regex!3289)) (EmptyExpr!3289) (Star!3289 (reg!3618 Regex!3289)) (EmptyLang!3289) (Union!3289 (regOne!7091 Regex!3289) (regTwo!7091 Regex!3289)) )
))
(declare-datatypes ((String!14013 0))(
  ( (String!14014 (value!65537 String)) )
))
(declare-datatypes ((List!11603 0))(
  ( (Nil!11579) (Cons!11579 (h!16980 C!6896) (t!110701 List!11603)) )
))
(declare-datatypes ((IArray!7605 0))(
  ( (IArray!7606 (innerList!3860 List!11603)) )
))
(declare-datatypes ((Conc!3800 0))(
  ( (Node!3800 (left!10127 Conc!3800) (right!10457 Conc!3800) (csize!7830 Int) (cheight!4011 Int)) (Leaf!5820 (xs!6505 IArray!7605) (csize!7831 Int)) (Empty!3800) )
))
(declare-datatypes ((BalanceConc!7622 0))(
  ( (BalanceConc!7623 (c!195264 Conc!3800)) )
))
(declare-datatypes ((TokenValueInjection!3870 0))(
  ( (TokenValueInjection!3871 (toValue!3120 Int) (toChars!2979 Int)) )
))
(declare-datatypes ((Rule!3838 0))(
  ( (Rule!3839 (regex!2019 Regex!3289) (tag!2281 String!14013) (isSeparator!2019 Bool) (transformation!2019 TokenValueInjection!3870)) )
))
(declare-datatypes ((Token!3700 0))(
  ( (Token!3701 (value!65538 TokenValue!2085) (rule!3440 Rule!3838) (size!9121 Int) (originalCharacters!2573 List!11603)) )
))
(declare-datatypes ((List!11604 0))(
  ( (Nil!11580) (Cons!11580 (h!16981 Token!3700) (t!110702 List!11604)) )
))
(declare-datatypes ((List!11605 0))(
  ( (Nil!11581) (Cons!11581 (h!16982 Rule!3838) (t!110703 List!11605)) )
))
(declare-datatypes ((IArray!7607 0))(
  ( (IArray!7608 (innerList!3861 List!11604)) )
))
(declare-datatypes ((Conc!3801 0))(
  ( (Node!3801 (left!10128 Conc!3801) (right!10458 Conc!3801) (csize!7832 Int) (cheight!4012 Int)) (Leaf!5821 (xs!6506 IArray!7607) (csize!7833 Int)) (Empty!3801) )
))
(declare-datatypes ((BalanceConc!7624 0))(
  ( (BalanceConc!7625 (c!195265 Conc!3801)) )
))
(declare-datatypes ((PrintableTokens!724 0))(
  ( (PrintableTokens!725 (rules!9630 List!11605) (tokens!1648 BalanceConc!7624)) )
))
(declare-fun thiss!10527 () PrintableTokens!724)

(declare-fun isEmpty!7028 (List!11605) Bool)

(assert (=> b!1170419 (= res!528656 (isEmpty!7028 (rules!9630 thiss!10527)))))

(declare-fun e!750516 () Bool)

(assert (=> b!1170419 e!750516))

(declare-fun res!528662 () Bool)

(assert (=> b!1170419 (=> (not res!528662) (not e!750516))))

(declare-fun lt!401184 () BalanceConc!7624)

(declare-datatypes ((LexerInterface!1714 0))(
  ( (LexerInterfaceExt!1711 (__x!7882 Int)) (Lexer!1712) )
))
(declare-fun separableTokens!150 (LexerInterface!1714 BalanceConc!7624 List!11605) Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!75 (LexerInterface!1714 BalanceConc!7624 Int List!11605) Bool)

(assert (=> b!1170419 (= res!528662 (= (separableTokens!150 Lexer!1712 lt!401184 (rules!9630 thiss!10527)) (tokensListTwoByTwoPredicateSeparable!75 Lexer!1712 lt!401184 0 (rules!9630 thiss!10527))))))

(declare-fun e!750511 () Bool)

(declare-fun b!1170420 () Bool)

(declare-fun e!750510 () Bool)

(declare-fun lt!401185 () List!11604)

(declare-fun rulesProduceEachTokenIndividuallyList!580 (LexerInterface!1714 List!11605 List!11604) Bool)

(assert (=> b!1170420 (= e!750511 (= (rulesProduceEachTokenIndividuallyList!580 Lexer!1712 (rules!9630 thiss!10527) lt!401185) e!750510))))

(declare-fun res!528670 () Bool)

(assert (=> b!1170420 (=> res!528670 e!750510)))

(get-info :version)

(assert (=> b!1170420 (= res!528670 (not ((_ is Cons!11580) lt!401185)))))

(declare-fun b!1170422 () Bool)

(declare-fun e!750503 () Bool)

(declare-fun e!750504 () Bool)

(assert (=> b!1170422 (= e!750503 e!750504)))

(declare-fun res!528657 () Bool)

(assert (=> b!1170422 (=> (not res!528657) (not e!750504))))

(declare-fun lt!401199 () List!11604)

(declare-fun rulesProduceIndividualToken!749 (LexerInterface!1714 List!11605 Token!3700) Bool)

(assert (=> b!1170422 (= res!528657 (rulesProduceIndividualToken!749 Lexer!1712 (rules!9630 thiss!10527) (h!16981 lt!401199)))))

(declare-fun b!1170423 () Bool)

(declare-fun res!528659 () Bool)

(assert (=> b!1170423 (=> (not res!528659) (not e!750511))))

(declare-fun lambda!48153 () Int)

(declare-fun rulesProduceEachTokenIndividually!752 (LexerInterface!1714 List!11605 BalanceConc!7624) Bool)

(declare-fun forall!3059 (BalanceConc!7624 Int) Bool)

(assert (=> b!1170423 (= res!528659 (= (rulesProduceEachTokenIndividually!752 Lexer!1712 (rules!9630 thiss!10527) lt!401184) (forall!3059 lt!401184 lambda!48153)))))

(declare-fun b!1170424 () Bool)

(assert (=> b!1170424 (= e!750504 (rulesProduceEachTokenIndividuallyList!580 Lexer!1712 (rules!9630 thiss!10527) (t!110702 lt!401199)))))

(declare-fun b!1170425 () Bool)

(declare-fun e!750518 () Bool)

(declare-fun e!750514 () Bool)

(assert (=> b!1170425 (= e!750518 e!750514)))

(declare-fun res!528658 () Bool)

(assert (=> b!1170425 (=> (not res!528658) (not e!750514))))

(declare-fun lt!401196 () Token!3700)

(declare-fun lt!401200 () Token!3700)

(declare-fun separableTokensPredicate!136 (LexerInterface!1714 Token!3700 Token!3700 List!11605) Bool)

(assert (=> b!1170425 (= res!528658 (separableTokensPredicate!136 Lexer!1712 lt!401200 lt!401196 (rules!9630 thiss!10527)))))

(declare-fun e!750519 () Bool)

(assert (=> b!1170425 e!750519))

(declare-fun res!528660 () Bool)

(assert (=> b!1170425 (=> (not res!528660) (not e!750519))))

(assert (=> b!1170425 (= res!528660 (rulesProduceIndividualToken!749 Lexer!1712 (rules!9630 thiss!10527) lt!401196))))

(declare-datatypes ((Unit!17762 0))(
  ( (Unit!17763) )
))
(declare-fun lt!401198 () Unit!17762)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!295 (LexerInterface!1714 List!11605 List!11604 Token!3700) Unit!17762)

(assert (=> b!1170425 (= lt!401198 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!295 Lexer!1712 (rules!9630 thiss!10527) lt!401199 lt!401196))))

(declare-fun apply!2509 (BalanceConc!7624 Int) Token!3700)

(assert (=> b!1170425 (= lt!401196 (apply!2509 (tokens!1648 thiss!10527) 1))))

(assert (=> b!1170425 (rulesProduceIndividualToken!749 Lexer!1712 (rules!9630 thiss!10527) lt!401200)))

(declare-fun lt!401186 () Unit!17762)

(assert (=> b!1170425 (= lt!401186 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!295 Lexer!1712 (rules!9630 thiss!10527) lt!401199 lt!401200))))

(assert (=> b!1170425 (= lt!401200 (apply!2509 (tokens!1648 thiss!10527) 0))))

(declare-fun lt!401193 () List!11604)

(declare-fun tail!1692 (List!11604) List!11604)

(declare-fun drop!491 (List!11604 Int) List!11604)

(assert (=> b!1170425 (= (tail!1692 lt!401193) (drop!491 lt!401199 2))))

(declare-fun lt!401191 () Unit!17762)

(declare-fun lemmaDropTail!365 (List!11604 Int) Unit!17762)

(assert (=> b!1170425 (= lt!401191 (lemmaDropTail!365 lt!401199 1))))

(declare-fun lt!401187 () List!11604)

(assert (=> b!1170425 (= (tail!1692 lt!401187) lt!401193)))

(declare-fun lt!401194 () Unit!17762)

(assert (=> b!1170425 (= lt!401194 (lemmaDropTail!365 lt!401199 0))))

(declare-fun head!2108 (List!11604) Token!3700)

(declare-fun apply!2510 (List!11604 Int) Token!3700)

(assert (=> b!1170425 (= (head!2108 lt!401193) (apply!2510 lt!401199 1))))

(assert (=> b!1170425 (= lt!401193 (drop!491 lt!401199 1))))

(declare-fun lt!401190 () Unit!17762)

(declare-fun lemmaDropApply!377 (List!11604 Int) Unit!17762)

(assert (=> b!1170425 (= lt!401190 (lemmaDropApply!377 lt!401199 1))))

(assert (=> b!1170425 (= (head!2108 lt!401187) (apply!2510 lt!401199 0))))

(assert (=> b!1170425 (= lt!401187 (drop!491 lt!401199 0))))

(declare-fun lt!401192 () Unit!17762)

(assert (=> b!1170425 (= lt!401192 (lemmaDropApply!377 lt!401199 0))))

(declare-fun b!1170426 () Bool)

(declare-fun e!750513 () Bool)

(declare-fun tp!334628 () Bool)

(declare-fun inv!15265 (Conc!3801) Bool)

(assert (=> b!1170426 (= e!750513 (and (inv!15265 (c!195265 (tokens!1648 thiss!10527))) tp!334628))))

(declare-fun b!1170427 () Bool)

(declare-fun e!750515 () Bool)

(assert (=> b!1170427 (= e!750510 e!750515)))

(declare-fun res!528663 () Bool)

(assert (=> b!1170427 (=> (not res!528663) (not e!750515))))

(assert (=> b!1170427 (= res!528663 (rulesProduceIndividualToken!749 Lexer!1712 (rules!9630 thiss!10527) (h!16981 lt!401185)))))

(declare-fun b!1170428 () Bool)

(declare-fun lt!401197 () Bool)

(assert (=> b!1170428 (= e!750506 lt!401197)))

(declare-fun b!1170429 () Bool)

(declare-fun size!9122 (BalanceConc!7622) Int)

(declare-fun charsOf!1074 (Token!3700) BalanceConc!7622)

(assert (=> b!1170429 (= e!750519 (> (size!9122 (charsOf!1074 lt!401196)) 0))))

(declare-fun b!1170430 () Bool)

(declare-fun e!750508 () Bool)

(declare-fun e!750507 () Bool)

(assert (=> b!1170430 (= e!750508 e!750507)))

(declare-fun res!528666 () Bool)

(assert (=> b!1170430 (=> (not res!528666) (not e!750507))))

(declare-fun to!267 () Int)

(declare-fun lt!401188 () Int)

(assert (=> b!1170430 (= res!528666 (<= to!267 lt!401188))))

(declare-fun size!9123 (BalanceConc!7624) Int)

(assert (=> b!1170430 (= lt!401188 (size!9123 (tokens!1648 thiss!10527)))))

(declare-fun b!1170431 () Bool)

(declare-fun e!750517 () Bool)

(assert (=> b!1170431 (= e!750507 e!750517)))

(declare-fun res!528668 () Bool)

(assert (=> b!1170431 (=> (not res!528668) (not e!750517))))

(declare-fun rulesInvariant!1588 (LexerInterface!1714 List!11605) Bool)

(assert (=> b!1170431 (= res!528668 (rulesInvariant!1588 Lexer!1712 (rules!9630 thiss!10527)))))

(declare-fun lt!401183 () Unit!17762)

(declare-fun lemmaInvariant!206 (PrintableTokens!724) Unit!17762)

(assert (=> b!1170431 (= lt!401183 (lemmaInvariant!206 thiss!10527))))

(declare-fun b!1170432 () Bool)

(declare-fun res!528671 () Bool)

(assert (=> b!1170432 (=> res!528671 e!750505)))

(assert (=> b!1170432 (= res!528671 (not (forall!3059 lt!401184 lambda!48153)))))

(declare-fun tp!334627 () Bool)

(declare-fun b!1170433 () Bool)

(declare-fun e!750509 () Bool)

(declare-fun inv!15266 (BalanceConc!7624) Bool)

(assert (=> b!1170433 (= e!750509 (and tp!334627 (inv!15266 (tokens!1648 thiss!10527)) e!750513))))

(declare-fun res!528665 () Bool)

(assert (=> start!102982 (=> (not res!528665) (not e!750508))))

(declare-fun from!787 () Int)

(assert (=> start!102982 (= res!528665 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!102982 e!750508))

(assert (=> start!102982 true))

(declare-fun inv!15267 (PrintableTokens!724) Bool)

(assert (=> start!102982 (and (inv!15267 thiss!10527) e!750509)))

(declare-fun b!1170421 () Bool)

(assert (=> b!1170421 (= e!750515 (rulesProduceEachTokenIndividuallyList!580 Lexer!1712 (rules!9630 thiss!10527) (t!110702 lt!401185)))))

(declare-fun b!1170434 () Bool)

(assert (=> b!1170434 (= e!750514 (tokensListTwoByTwoPredicateSeparable!75 Lexer!1712 (tokens!1648 thiss!10527) 1 (rules!9630 thiss!10527)))))

(declare-fun b!1170435 () Bool)

(assert (=> b!1170435 (= e!750516 (= (tokensListTwoByTwoPredicateSeparable!75 Lexer!1712 (tokens!1648 thiss!10527) 0 (rules!9630 thiss!10527)) e!750518))))

(declare-fun res!528655 () Bool)

(assert (=> b!1170435 (=> res!528655 e!750518)))

(assert (=> b!1170435 (= res!528655 (>= 0 (- lt!401188 1)))))

(declare-fun e!750512 () Bool)

(assert (=> b!1170436 (= e!750517 (not e!750512))))

(declare-fun res!528669 () Bool)

(assert (=> b!1170436 (=> res!528669 e!750512)))

(assert (=> b!1170436 (= res!528669 (not (forall!3059 (tokens!1648 thiss!10527) lambda!48153)))))

(assert (=> b!1170436 (= lt!401197 e!750503)))

(declare-fun res!528664 () Bool)

(assert (=> b!1170436 (=> res!528664 e!750503)))

(assert (=> b!1170436 (= res!528664 (not ((_ is Cons!11580) lt!401199)))))

(assert (=> b!1170436 (= lt!401197 (rulesProduceEachTokenIndividuallyList!580 Lexer!1712 (rules!9630 thiss!10527) lt!401199))))

(declare-fun list!4268 (BalanceConc!7624) List!11604)

(assert (=> b!1170436 (= lt!401199 (list!4268 (tokens!1648 thiss!10527)))))

(assert (=> b!1170436 (= (rulesProduceEachTokenIndividually!752 Lexer!1712 (rules!9630 thiss!10527) (tokens!1648 thiss!10527)) (forall!3059 (tokens!1648 thiss!10527) lambda!48153))))

(declare-fun b!1170437 () Bool)

(assert (=> b!1170437 (= e!750512 e!750505)))

(declare-fun res!528667 () Bool)

(assert (=> b!1170437 (=> res!528667 e!750505)))

(declare-fun forall!3060 (List!11604 Int) Bool)

(assert (=> b!1170437 (= res!528667 (not (forall!3060 lt!401185 lambda!48153)))))

(assert (=> b!1170437 e!750511))

(declare-fun res!528661 () Bool)

(assert (=> b!1170437 (=> (not res!528661) (not e!750511))))

(assert (=> b!1170437 (= res!528661 (forall!3060 lt!401185 lambda!48153))))

(declare-fun lt!401195 () Unit!17762)

(declare-fun lemmaForallSubseq!157 (List!11604 List!11604 Int) Unit!17762)

(assert (=> b!1170437 (= lt!401195 (lemmaForallSubseq!157 lt!401185 lt!401199 lambda!48153))))

(assert (=> b!1170437 (= lt!401185 (list!4268 lt!401184))))

(declare-fun slice!342 (BalanceConc!7624 Int Int) BalanceConc!7624)

(assert (=> b!1170437 (= lt!401184 (slice!342 (tokens!1648 thiss!10527) from!787 to!267))))

(declare-fun subseq!269 (List!11604 List!11604) Bool)

(declare-fun slice!343 (List!11604 Int Int) List!11604)

(assert (=> b!1170437 (subseq!269 (slice!343 lt!401199 from!787 to!267) lt!401199)))

(declare-fun lt!401189 () Unit!17762)

(declare-fun lemmaSliceSubseq!110 (List!11604 Int Int) Unit!17762)

(assert (=> b!1170437 (= lt!401189 (lemmaSliceSubseq!110 lt!401199 from!787 to!267))))

(assert (= (and start!102982 res!528665) b!1170430))

(assert (= (and b!1170430 res!528666) b!1170431))

(assert (= (and b!1170431 res!528668) b!1170436))

(assert (= (and b!1170436 (not res!528664)) b!1170422))

(assert (= (and b!1170422 res!528657) b!1170424))

(assert (= (and b!1170436 (not res!528669)) b!1170437))

(assert (= (and b!1170437 res!528661) b!1170423))

(assert (= (and b!1170423 res!528659) b!1170420))

(assert (= (and b!1170420 (not res!528670)) b!1170427))

(assert (= (and b!1170427 res!528663) b!1170421))

(assert (= (and b!1170437 (not res!528667)) b!1170432))

(assert (= (and b!1170432 (not res!528671)) b!1170419))

(assert (= (and b!1170419 res!528662) b!1170435))

(assert (= (and b!1170435 (not res!528655)) b!1170425))

(assert (= (and b!1170425 res!528660) b!1170429))

(assert (= (and b!1170425 res!528658) b!1170434))

(assert (= (and b!1170419 (not res!528656)) b!1170428))

(assert (= b!1170433 b!1170426))

(assert (= start!102982 b!1170433))

(declare-fun m!1342997 () Bool)

(assert (=> b!1170427 m!1342997))

(declare-fun m!1342999 () Bool)

(assert (=> b!1170431 m!1342999))

(declare-fun m!1343001 () Bool)

(assert (=> b!1170431 m!1343001))

(declare-fun m!1343003 () Bool)

(assert (=> b!1170419 m!1343003))

(declare-fun m!1343005 () Bool)

(assert (=> b!1170419 m!1343005))

(declare-fun m!1343007 () Bool)

(assert (=> b!1170419 m!1343007))

(declare-fun m!1343009 () Bool)

(assert (=> b!1170434 m!1343009))

(declare-fun m!1343011 () Bool)

(assert (=> b!1170430 m!1343011))

(declare-fun m!1343013 () Bool)

(assert (=> b!1170424 m!1343013))

(declare-fun m!1343015 () Bool)

(assert (=> b!1170420 m!1343015))

(declare-fun m!1343017 () Bool)

(assert (=> b!1170429 m!1343017))

(assert (=> b!1170429 m!1343017))

(declare-fun m!1343019 () Bool)

(assert (=> b!1170429 m!1343019))

(declare-fun m!1343021 () Bool)

(assert (=> start!102982 m!1343021))

(declare-fun m!1343023 () Bool)

(assert (=> b!1170437 m!1343023))

(declare-fun m!1343025 () Bool)

(assert (=> b!1170437 m!1343025))

(declare-fun m!1343027 () Bool)

(assert (=> b!1170437 m!1343027))

(assert (=> b!1170437 m!1343025))

(declare-fun m!1343029 () Bool)

(assert (=> b!1170437 m!1343029))

(declare-fun m!1343031 () Bool)

(assert (=> b!1170437 m!1343031))

(declare-fun m!1343033 () Bool)

(assert (=> b!1170437 m!1343033))

(assert (=> b!1170437 m!1343027))

(declare-fun m!1343035 () Bool)

(assert (=> b!1170437 m!1343035))

(declare-fun m!1343037 () Bool)

(assert (=> b!1170435 m!1343037))

(declare-fun m!1343039 () Bool)

(assert (=> b!1170433 m!1343039))

(declare-fun m!1343041 () Bool)

(assert (=> b!1170426 m!1343041))

(declare-fun m!1343043 () Bool)

(assert (=> b!1170422 m!1343043))

(declare-fun m!1343045 () Bool)

(assert (=> b!1170432 m!1343045))

(declare-fun m!1343047 () Bool)

(assert (=> b!1170436 m!1343047))

(declare-fun m!1343049 () Bool)

(assert (=> b!1170436 m!1343049))

(declare-fun m!1343051 () Bool)

(assert (=> b!1170436 m!1343051))

(declare-fun m!1343053 () Bool)

(assert (=> b!1170436 m!1343053))

(assert (=> b!1170436 m!1343047))

(declare-fun m!1343055 () Bool)

(assert (=> b!1170423 m!1343055))

(assert (=> b!1170423 m!1343045))

(declare-fun m!1343057 () Bool)

(assert (=> b!1170421 m!1343057))

(declare-fun m!1343059 () Bool)

(assert (=> b!1170425 m!1343059))

(declare-fun m!1343061 () Bool)

(assert (=> b!1170425 m!1343061))

(declare-fun m!1343063 () Bool)

(assert (=> b!1170425 m!1343063))

(declare-fun m!1343065 () Bool)

(assert (=> b!1170425 m!1343065))

(declare-fun m!1343067 () Bool)

(assert (=> b!1170425 m!1343067))

(declare-fun m!1343069 () Bool)

(assert (=> b!1170425 m!1343069))

(declare-fun m!1343071 () Bool)

(assert (=> b!1170425 m!1343071))

(declare-fun m!1343073 () Bool)

(assert (=> b!1170425 m!1343073))

(declare-fun m!1343075 () Bool)

(assert (=> b!1170425 m!1343075))

(declare-fun m!1343077 () Bool)

(assert (=> b!1170425 m!1343077))

(declare-fun m!1343079 () Bool)

(assert (=> b!1170425 m!1343079))

(declare-fun m!1343081 () Bool)

(assert (=> b!1170425 m!1343081))

(declare-fun m!1343083 () Bool)

(assert (=> b!1170425 m!1343083))

(declare-fun m!1343085 () Bool)

(assert (=> b!1170425 m!1343085))

(declare-fun m!1343087 () Bool)

(assert (=> b!1170425 m!1343087))

(declare-fun m!1343089 () Bool)

(assert (=> b!1170425 m!1343089))

(declare-fun m!1343091 () Bool)

(assert (=> b!1170425 m!1343091))

(declare-fun m!1343093 () Bool)

(assert (=> b!1170425 m!1343093))

(declare-fun m!1343095 () Bool)

(assert (=> b!1170425 m!1343095))

(declare-fun m!1343097 () Bool)

(assert (=> b!1170425 m!1343097))

(check-sat (not b!1170425) (not b!1170437) (not b!1170420) (not b!1170435) (not b!1170430) (not b!1170444) (not b!1170424) (not b!1170433) (not b!1170427) (not b!1170432) (not b!1170422) (not b!1170445) (not b!1170431) (not b!1170426) (not b!1170419) (not b!1170434) (not b!1170429) (not b!1170421) (not b!1170436) (not start!102982) (not b!1170423))
(check-sat)
(get-model)

(declare-fun b!1170540 () Bool)

(declare-fun res!528749 () Bool)

(declare-fun e!750599 () Bool)

(assert (=> b!1170540 (=> (not res!528749) (not e!750599))))

(declare-fun lt!401312 () List!11604)

(declare-fun lt!401304 () List!11604)

(assert (=> b!1170540 (= res!528749 (subseq!269 lt!401312 lt!401304))))

(declare-fun d!334686 () Bool)

(declare-fun lt!401298 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!110 (LexerInterface!1714 List!11604 List!11605) Bool)

(declare-fun dropList!324 (BalanceConc!7624 Int) List!11604)

(assert (=> d!334686 (= lt!401298 (tokensListTwoByTwoPredicateSeparableList!110 Lexer!1712 (dropList!324 (tokens!1648 thiss!10527) 1) (rules!9630 thiss!10527)))))

(declare-fun lt!401310 () Unit!17762)

(declare-fun lt!401292 () Unit!17762)

(assert (=> d!334686 (= lt!401310 lt!401292)))

(assert (=> d!334686 (rulesProduceEachTokenIndividuallyList!580 Lexer!1712 (rules!9630 thiss!10527) lt!401312)))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!32 (LexerInterface!1714 List!11605 List!11604 List!11604) Unit!17762)

(assert (=> d!334686 (= lt!401292 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!32 Lexer!1712 (rules!9630 thiss!10527) lt!401304 lt!401312))))

(assert (=> d!334686 e!750599))

(declare-fun res!528750 () Bool)

(assert (=> d!334686 (=> (not res!528750) (not e!750599))))

(assert (=> d!334686 (= res!528750 ((_ is Lexer!1712) Lexer!1712))))

(assert (=> d!334686 (= lt!401312 (dropList!324 (tokens!1648 thiss!10527) 1))))

(assert (=> d!334686 (= lt!401304 (list!4268 (tokens!1648 thiss!10527)))))

(declare-fun lt!401318 () Unit!17762)

(declare-fun lt!401315 () Unit!17762)

(assert (=> d!334686 (= lt!401318 lt!401315)))

(declare-fun lt!401288 () List!11604)

(assert (=> d!334686 (subseq!269 (drop!491 lt!401288 1) lt!401288)))

(declare-fun lemmaDropSubSeq!32 (List!11604 Int) Unit!17762)

(assert (=> d!334686 (= lt!401315 (lemmaDropSubSeq!32 lt!401288 1))))

(declare-fun e!750598 () Bool)

(assert (=> d!334686 e!750598))

(declare-fun res!528751 () Bool)

(assert (=> d!334686 (=> (not res!528751) (not e!750598))))

(assert (=> d!334686 (= res!528751 (>= 1 0))))

(assert (=> d!334686 (= lt!401288 (list!4268 (tokens!1648 thiss!10527)))))

(declare-fun e!750601 () Bool)

(assert (=> d!334686 (= lt!401298 e!750601)))

(declare-fun res!528746 () Bool)

(assert (=> d!334686 (=> res!528746 e!750601)))

(assert (=> d!334686 (= res!528746 (not (< 1 (- (size!9123 (tokens!1648 thiss!10527)) 1))))))

(declare-fun e!750600 () Bool)

(assert (=> d!334686 e!750600))

(declare-fun res!528752 () Bool)

(assert (=> d!334686 (=> (not res!528752) (not e!750600))))

(assert (=> d!334686 (= res!528752 (>= 1 0))))

(assert (=> d!334686 (= (tokensListTwoByTwoPredicateSeparable!75 Lexer!1712 (tokens!1648 thiss!10527) 1 (rules!9630 thiss!10527)) lt!401298)))

(declare-fun b!1170541 () Bool)

(declare-fun size!9126 (List!11604) Int)

(assert (=> b!1170541 (= e!750598 (<= 1 (size!9126 lt!401288)))))

(declare-fun b!1170542 () Bool)

(declare-fun res!528748 () Bool)

(assert (=> b!1170542 (=> (not res!528748) (not e!750599))))

(assert (=> b!1170542 (= res!528748 (rulesInvariant!1588 Lexer!1712 (rules!9630 thiss!10527)))))

(declare-fun b!1170543 () Bool)

(assert (=> b!1170543 (= e!750600 (<= 1 (size!9123 (tokens!1648 thiss!10527))))))

(declare-fun b!1170544 () Bool)

(declare-fun e!750602 () Bool)

(assert (=> b!1170544 (= e!750601 e!750602)))

(declare-fun res!528747 () Bool)

(assert (=> b!1170544 (=> (not res!528747) (not e!750602))))

(assert (=> b!1170544 (= res!528747 (separableTokensPredicate!136 Lexer!1712 (apply!2509 (tokens!1648 thiss!10527) 1) (apply!2509 (tokens!1648 thiss!10527) (+ 1 1)) (rules!9630 thiss!10527)))))

(declare-fun lt!401317 () Unit!17762)

(declare-fun Unit!17771 () Unit!17762)

(assert (=> b!1170544 (= lt!401317 Unit!17771)))

(assert (=> b!1170544 (> (size!9122 (charsOf!1074 (apply!2509 (tokens!1648 thiss!10527) (+ 1 1)))) 0)))

(declare-fun lt!401295 () Unit!17762)

(declare-fun Unit!17772 () Unit!17762)

(assert (=> b!1170544 (= lt!401295 Unit!17772)))

(assert (=> b!1170544 (rulesProduceIndividualToken!749 Lexer!1712 (rules!9630 thiss!10527) (apply!2509 (tokens!1648 thiss!10527) (+ 1 1)))))

(declare-fun lt!401296 () Unit!17762)

(declare-fun Unit!17773 () Unit!17762)

(assert (=> b!1170544 (= lt!401296 Unit!17773)))

(assert (=> b!1170544 (rulesProduceIndividualToken!749 Lexer!1712 (rules!9630 thiss!10527) (apply!2509 (tokens!1648 thiss!10527) 1))))

(declare-fun lt!401316 () Unit!17762)

(declare-fun lt!401294 () Unit!17762)

(assert (=> b!1170544 (= lt!401316 lt!401294)))

(declare-fun lt!401313 () Token!3700)

(assert (=> b!1170544 (rulesProduceIndividualToken!749 Lexer!1712 (rules!9630 thiss!10527) lt!401313)))

(declare-fun lt!401307 () List!11604)

(assert (=> b!1170544 (= lt!401294 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!295 Lexer!1712 (rules!9630 thiss!10527) lt!401307 lt!401313))))

(assert (=> b!1170544 (= lt!401313 (apply!2509 (tokens!1648 thiss!10527) (+ 1 1)))))

(assert (=> b!1170544 (= lt!401307 (list!4268 (tokens!1648 thiss!10527)))))

(declare-fun lt!401311 () Unit!17762)

(declare-fun lt!401299 () Unit!17762)

(assert (=> b!1170544 (= lt!401311 lt!401299)))

(declare-fun lt!401302 () Token!3700)

(assert (=> b!1170544 (rulesProduceIndividualToken!749 Lexer!1712 (rules!9630 thiss!10527) lt!401302)))

(declare-fun lt!401293 () List!11604)

(assert (=> b!1170544 (= lt!401299 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!295 Lexer!1712 (rules!9630 thiss!10527) lt!401293 lt!401302))))

(assert (=> b!1170544 (= lt!401302 (apply!2509 (tokens!1648 thiss!10527) 1))))

(assert (=> b!1170544 (= lt!401293 (list!4268 (tokens!1648 thiss!10527)))))

(declare-fun lt!401301 () Unit!17762)

(declare-fun lt!401287 () Unit!17762)

(assert (=> b!1170544 (= lt!401301 lt!401287)))

(declare-fun lt!401308 () List!11604)

(declare-fun lt!401305 () Int)

(assert (=> b!1170544 (= (tail!1692 (drop!491 lt!401308 lt!401305)) (drop!491 lt!401308 (+ lt!401305 1)))))

(assert (=> b!1170544 (= lt!401287 (lemmaDropTail!365 lt!401308 lt!401305))))

(assert (=> b!1170544 (= lt!401305 (+ 1 1))))

(assert (=> b!1170544 (= lt!401308 (list!4268 (tokens!1648 thiss!10527)))))

(declare-fun lt!401291 () Unit!17762)

(declare-fun lt!401314 () Unit!17762)

(assert (=> b!1170544 (= lt!401291 lt!401314)))

(declare-fun lt!401289 () List!11604)

(assert (=> b!1170544 (= (tail!1692 (drop!491 lt!401289 1)) (drop!491 lt!401289 (+ 1 1)))))

(assert (=> b!1170544 (= lt!401314 (lemmaDropTail!365 lt!401289 1))))

(assert (=> b!1170544 (= lt!401289 (list!4268 (tokens!1648 thiss!10527)))))

(declare-fun lt!401300 () Unit!17762)

(declare-fun lt!401303 () Unit!17762)

(assert (=> b!1170544 (= lt!401300 lt!401303)))

(declare-fun lt!401297 () List!11604)

(declare-fun lt!401286 () Int)

(assert (=> b!1170544 (= (head!2108 (drop!491 lt!401297 lt!401286)) (apply!2510 lt!401297 lt!401286))))

(assert (=> b!1170544 (= lt!401303 (lemmaDropApply!377 lt!401297 lt!401286))))

(assert (=> b!1170544 (= lt!401286 (+ 1 1))))

(assert (=> b!1170544 (= lt!401297 (list!4268 (tokens!1648 thiss!10527)))))

(declare-fun lt!401309 () Unit!17762)

(declare-fun lt!401290 () Unit!17762)

(assert (=> b!1170544 (= lt!401309 lt!401290)))

(declare-fun lt!401306 () List!11604)

(assert (=> b!1170544 (= (head!2108 (drop!491 lt!401306 1)) (apply!2510 lt!401306 1))))

(assert (=> b!1170544 (= lt!401290 (lemmaDropApply!377 lt!401306 1))))

(assert (=> b!1170544 (= lt!401306 (list!4268 (tokens!1648 thiss!10527)))))

(declare-fun b!1170545 () Bool)

(assert (=> b!1170545 (= e!750599 (rulesProduceEachTokenIndividuallyList!580 Lexer!1712 (rules!9630 thiss!10527) lt!401304))))

(declare-fun b!1170546 () Bool)

(assert (=> b!1170546 (= e!750602 (tokensListTwoByTwoPredicateSeparable!75 Lexer!1712 (tokens!1648 thiss!10527) (+ 1 1) (rules!9630 thiss!10527)))))

(declare-fun b!1170547 () Bool)

(declare-fun res!528745 () Bool)

(assert (=> b!1170547 (=> (not res!528745) (not e!750599))))

(assert (=> b!1170547 (= res!528745 (not (isEmpty!7028 (rules!9630 thiss!10527))))))

(assert (= (and d!334686 res!528752) b!1170543))

(assert (= (and d!334686 (not res!528746)) b!1170544))

(assert (= (and b!1170544 res!528747) b!1170546))

(assert (= (and d!334686 res!528751) b!1170541))

(assert (= (and d!334686 res!528750) b!1170547))

(assert (= (and b!1170547 res!528745) b!1170542))

(assert (= (and b!1170542 res!528748) b!1170540))

(assert (= (and b!1170540 res!528749) b!1170545))

(assert (=> b!1170542 m!1342999))

(declare-fun m!1343163 () Bool)

(assert (=> b!1170546 m!1343163))

(declare-fun m!1343165 () Bool)

(assert (=> b!1170544 m!1343165))

(declare-fun m!1343167 () Bool)

(assert (=> b!1170544 m!1343167))

(declare-fun m!1343169 () Bool)

(assert (=> b!1170544 m!1343169))

(declare-fun m!1343171 () Bool)

(assert (=> b!1170544 m!1343171))

(assert (=> b!1170544 m!1343069))

(assert (=> b!1170544 m!1343167))

(declare-fun m!1343173 () Bool)

(assert (=> b!1170544 m!1343173))

(declare-fun m!1343175 () Bool)

(assert (=> b!1170544 m!1343175))

(assert (=> b!1170544 m!1343053))

(declare-fun m!1343177 () Bool)

(assert (=> b!1170544 m!1343177))

(assert (=> b!1170544 m!1343167))

(declare-fun m!1343179 () Bool)

(assert (=> b!1170544 m!1343179))

(declare-fun m!1343181 () Bool)

(assert (=> b!1170544 m!1343181))

(declare-fun m!1343183 () Bool)

(assert (=> b!1170544 m!1343183))

(declare-fun m!1343185 () Bool)

(assert (=> b!1170544 m!1343185))

(declare-fun m!1343187 () Bool)

(assert (=> b!1170544 m!1343187))

(assert (=> b!1170544 m!1343169))

(declare-fun m!1343189 () Bool)

(assert (=> b!1170544 m!1343189))

(declare-fun m!1343191 () Bool)

(assert (=> b!1170544 m!1343191))

(assert (=> b!1170544 m!1343069))

(declare-fun m!1343193 () Bool)

(assert (=> b!1170544 m!1343193))

(declare-fun m!1343195 () Bool)

(assert (=> b!1170544 m!1343195))

(assert (=> b!1170544 m!1343069))

(declare-fun m!1343197 () Bool)

(assert (=> b!1170544 m!1343197))

(declare-fun m!1343199 () Bool)

(assert (=> b!1170544 m!1343199))

(assert (=> b!1170544 m!1343185))

(declare-fun m!1343201 () Bool)

(assert (=> b!1170544 m!1343201))

(assert (=> b!1170544 m!1343195))

(declare-fun m!1343203 () Bool)

(assert (=> b!1170544 m!1343203))

(assert (=> b!1170544 m!1343199))

(declare-fun m!1343205 () Bool)

(assert (=> b!1170544 m!1343205))

(assert (=> b!1170544 m!1343167))

(declare-fun m!1343207 () Bool)

(assert (=> b!1170544 m!1343207))

(assert (=> b!1170544 m!1343175))

(declare-fun m!1343209 () Bool)

(assert (=> b!1170544 m!1343209))

(declare-fun m!1343211 () Bool)

(assert (=> b!1170544 m!1343211))

(declare-fun m!1343213 () Bool)

(assert (=> b!1170544 m!1343213))

(declare-fun m!1343215 () Bool)

(assert (=> b!1170544 m!1343215))

(declare-fun m!1343217 () Bool)

(assert (=> b!1170540 m!1343217))

(declare-fun m!1343219 () Bool)

(assert (=> b!1170545 m!1343219))

(assert (=> b!1170543 m!1343011))

(assert (=> b!1170547 m!1343003))

(declare-fun m!1343221 () Bool)

(assert (=> b!1170541 m!1343221))

(assert (=> d!334686 m!1343011))

(assert (=> d!334686 m!1343053))

(declare-fun m!1343223 () Bool)

(assert (=> d!334686 m!1343223))

(declare-fun m!1343225 () Bool)

(assert (=> d!334686 m!1343225))

(declare-fun m!1343227 () Bool)

(assert (=> d!334686 m!1343227))

(declare-fun m!1343229 () Bool)

(assert (=> d!334686 m!1343229))

(declare-fun m!1343231 () Bool)

(assert (=> d!334686 m!1343231))

(assert (=> d!334686 m!1343223))

(declare-fun m!1343233 () Bool)

(assert (=> d!334686 m!1343233))

(assert (=> d!334686 m!1343229))

(declare-fun m!1343235 () Bool)

(assert (=> d!334686 m!1343235))

(assert (=> b!1170434 d!334686))

(declare-fun bs!285603 () Bool)

(declare-fun d!334716 () Bool)

(assert (= bs!285603 (and d!334716 b!1170436)))

(declare-fun lambda!48168 () Int)

(assert (=> bs!285603 (= lambda!48168 lambda!48153)))

(declare-fun b!1170569 () Bool)

(declare-fun e!750622 () Bool)

(assert (=> b!1170569 (= e!750622 true)))

(declare-fun b!1170568 () Bool)

(declare-fun e!750621 () Bool)

(assert (=> b!1170568 (= e!750621 e!750622)))

(declare-fun b!1170567 () Bool)

(declare-fun e!750620 () Bool)

(assert (=> b!1170567 (= e!750620 e!750621)))

(assert (=> d!334716 e!750620))

(assert (= b!1170568 b!1170569))

(assert (= b!1170567 b!1170568))

(assert (= (and d!334716 ((_ is Cons!11581) (rules!9630 thiss!10527))) b!1170567))

(declare-fun order!7115 () Int)

(declare-fun order!7113 () Int)

(declare-fun dynLambda!5111 (Int Int) Int)

(declare-fun dynLambda!5112 (Int Int) Int)

(assert (=> b!1170569 (< (dynLambda!5111 order!7113 (toValue!3120 (transformation!2019 (h!16982 (rules!9630 thiss!10527))))) (dynLambda!5112 order!7115 lambda!48168))))

(declare-fun order!7117 () Int)

(declare-fun dynLambda!5113 (Int Int) Int)

(assert (=> b!1170569 (< (dynLambda!5113 order!7117 (toChars!2979 (transformation!2019 (h!16982 (rules!9630 thiss!10527))))) (dynLambda!5112 order!7115 lambda!48168))))

(assert (=> d!334716 true))

(declare-fun e!750613 () Bool)

(assert (=> d!334716 e!750613))

(declare-fun res!528760 () Bool)

(assert (=> d!334716 (=> (not res!528760) (not e!750613))))

(declare-fun lt!401323 () Bool)

(assert (=> d!334716 (= res!528760 (= lt!401323 (forall!3060 (list!4268 lt!401184) lambda!48168)))))

(assert (=> d!334716 (= lt!401323 (forall!3059 lt!401184 lambda!48168))))

(assert (=> d!334716 (not (isEmpty!7028 (rules!9630 thiss!10527)))))

(assert (=> d!334716 (= (rulesProduceEachTokenIndividually!752 Lexer!1712 (rules!9630 thiss!10527) lt!401184) lt!401323)))

(declare-fun b!1170558 () Bool)

(assert (=> b!1170558 (= e!750613 (= lt!401323 (rulesProduceEachTokenIndividuallyList!580 Lexer!1712 (rules!9630 thiss!10527) (list!4268 lt!401184))))))

(assert (= (and d!334716 res!528760) b!1170558))

(assert (=> d!334716 m!1343023))

(assert (=> d!334716 m!1343023))

(declare-fun m!1343241 () Bool)

(assert (=> d!334716 m!1343241))

(declare-fun m!1343243 () Bool)

(assert (=> d!334716 m!1343243))

(assert (=> d!334716 m!1343003))

(assert (=> b!1170558 m!1343023))

(assert (=> b!1170558 m!1343023))

(declare-fun m!1343245 () Bool)

(assert (=> b!1170558 m!1343245))

(assert (=> b!1170423 d!334716))

(declare-fun d!334720 () Bool)

(declare-fun lt!401326 () Bool)

(assert (=> d!334720 (= lt!401326 (forall!3060 (list!4268 lt!401184) lambda!48153))))

(declare-fun forall!3062 (Conc!3801 Int) Bool)

(assert (=> d!334720 (= lt!401326 (forall!3062 (c!195265 lt!401184) lambda!48153))))

(assert (=> d!334720 (= (forall!3059 lt!401184 lambda!48153) lt!401326)))

(declare-fun bs!285604 () Bool)

(assert (= bs!285604 d!334720))

(assert (=> bs!285604 m!1343023))

(assert (=> bs!285604 m!1343023))

(declare-fun m!1343247 () Bool)

(assert (=> bs!285604 m!1343247))

(declare-fun m!1343249 () Bool)

(assert (=> bs!285604 m!1343249))

(assert (=> b!1170423 d!334720))

(declare-fun d!334722 () Bool)

(declare-fun isBalanced!1071 (Conc!3801) Bool)

(assert (=> d!334722 (= (inv!15266 (tokens!1648 thiss!10527)) (isBalanced!1071 (c!195265 (tokens!1648 thiss!10527))))))

(declare-fun bs!285605 () Bool)

(assert (= bs!285605 d!334722))

(declare-fun m!1343251 () Bool)

(assert (=> bs!285605 m!1343251))

(assert (=> b!1170433 d!334722))

(declare-fun b!1170576 () Bool)

(declare-fun res!528769 () Bool)

(declare-fun e!750626 () Bool)

(assert (=> b!1170576 (=> (not res!528769) (not e!750626))))

(declare-fun lt!401353 () List!11604)

(declare-fun lt!401345 () List!11604)

(assert (=> b!1170576 (= res!528769 (subseq!269 lt!401353 lt!401345))))

(declare-fun d!334724 () Bool)

(declare-fun lt!401339 () Bool)

(assert (=> d!334724 (= lt!401339 (tokensListTwoByTwoPredicateSeparableList!110 Lexer!1712 (dropList!324 (tokens!1648 thiss!10527) 0) (rules!9630 thiss!10527)))))

(declare-fun lt!401351 () Unit!17762)

(declare-fun lt!401333 () Unit!17762)

(assert (=> d!334724 (= lt!401351 lt!401333)))

(assert (=> d!334724 (rulesProduceEachTokenIndividuallyList!580 Lexer!1712 (rules!9630 thiss!10527) lt!401353)))

(assert (=> d!334724 (= lt!401333 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!32 Lexer!1712 (rules!9630 thiss!10527) lt!401345 lt!401353))))

(assert (=> d!334724 e!750626))

(declare-fun res!528770 () Bool)

(assert (=> d!334724 (=> (not res!528770) (not e!750626))))

(assert (=> d!334724 (= res!528770 ((_ is Lexer!1712) Lexer!1712))))

(assert (=> d!334724 (= lt!401353 (dropList!324 (tokens!1648 thiss!10527) 0))))

(assert (=> d!334724 (= lt!401345 (list!4268 (tokens!1648 thiss!10527)))))

(declare-fun lt!401359 () Unit!17762)

(declare-fun lt!401356 () Unit!17762)

(assert (=> d!334724 (= lt!401359 lt!401356)))

(declare-fun lt!401329 () List!11604)

(assert (=> d!334724 (subseq!269 (drop!491 lt!401329 0) lt!401329)))

(assert (=> d!334724 (= lt!401356 (lemmaDropSubSeq!32 lt!401329 0))))

(declare-fun e!750625 () Bool)

(assert (=> d!334724 e!750625))

(declare-fun res!528771 () Bool)

(assert (=> d!334724 (=> (not res!528771) (not e!750625))))

(assert (=> d!334724 (= res!528771 (>= 0 0))))

(assert (=> d!334724 (= lt!401329 (list!4268 (tokens!1648 thiss!10527)))))

(declare-fun e!750628 () Bool)

(assert (=> d!334724 (= lt!401339 e!750628)))

(declare-fun res!528766 () Bool)

(assert (=> d!334724 (=> res!528766 e!750628)))

(assert (=> d!334724 (= res!528766 (not (< 0 (- (size!9123 (tokens!1648 thiss!10527)) 1))))))

(declare-fun e!750627 () Bool)

(assert (=> d!334724 e!750627))

(declare-fun res!528772 () Bool)

(assert (=> d!334724 (=> (not res!528772) (not e!750627))))

(assert (=> d!334724 (= res!528772 (>= 0 0))))

(assert (=> d!334724 (= (tokensListTwoByTwoPredicateSeparable!75 Lexer!1712 (tokens!1648 thiss!10527) 0 (rules!9630 thiss!10527)) lt!401339)))

(declare-fun b!1170577 () Bool)

(assert (=> b!1170577 (= e!750625 (<= 0 (size!9126 lt!401329)))))

(declare-fun b!1170578 () Bool)

(declare-fun res!528768 () Bool)

(assert (=> b!1170578 (=> (not res!528768) (not e!750626))))

(assert (=> b!1170578 (= res!528768 (rulesInvariant!1588 Lexer!1712 (rules!9630 thiss!10527)))))

(declare-fun b!1170579 () Bool)

(assert (=> b!1170579 (= e!750627 (<= 0 (size!9123 (tokens!1648 thiss!10527))))))

(declare-fun b!1170580 () Bool)

(declare-fun e!750629 () Bool)

(assert (=> b!1170580 (= e!750628 e!750629)))

(declare-fun res!528767 () Bool)

(assert (=> b!1170580 (=> (not res!528767) (not e!750629))))

(assert (=> b!1170580 (= res!528767 (separableTokensPredicate!136 Lexer!1712 (apply!2509 (tokens!1648 thiss!10527) 0) (apply!2509 (tokens!1648 thiss!10527) (+ 0 1)) (rules!9630 thiss!10527)))))

(declare-fun lt!401358 () Unit!17762)

(declare-fun Unit!17774 () Unit!17762)

(assert (=> b!1170580 (= lt!401358 Unit!17774)))

(assert (=> b!1170580 (> (size!9122 (charsOf!1074 (apply!2509 (tokens!1648 thiss!10527) (+ 0 1)))) 0)))

(declare-fun lt!401336 () Unit!17762)

(declare-fun Unit!17775 () Unit!17762)

(assert (=> b!1170580 (= lt!401336 Unit!17775)))

(assert (=> b!1170580 (rulesProduceIndividualToken!749 Lexer!1712 (rules!9630 thiss!10527) (apply!2509 (tokens!1648 thiss!10527) (+ 0 1)))))

(declare-fun lt!401337 () Unit!17762)

(declare-fun Unit!17776 () Unit!17762)

(assert (=> b!1170580 (= lt!401337 Unit!17776)))

(assert (=> b!1170580 (rulesProduceIndividualToken!749 Lexer!1712 (rules!9630 thiss!10527) (apply!2509 (tokens!1648 thiss!10527) 0))))

(declare-fun lt!401357 () Unit!17762)

(declare-fun lt!401335 () Unit!17762)

(assert (=> b!1170580 (= lt!401357 lt!401335)))

(declare-fun lt!401354 () Token!3700)

(assert (=> b!1170580 (rulesProduceIndividualToken!749 Lexer!1712 (rules!9630 thiss!10527) lt!401354)))

(declare-fun lt!401348 () List!11604)

(assert (=> b!1170580 (= lt!401335 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!295 Lexer!1712 (rules!9630 thiss!10527) lt!401348 lt!401354))))

(assert (=> b!1170580 (= lt!401354 (apply!2509 (tokens!1648 thiss!10527) (+ 0 1)))))

(assert (=> b!1170580 (= lt!401348 (list!4268 (tokens!1648 thiss!10527)))))

(declare-fun lt!401352 () Unit!17762)

(declare-fun lt!401340 () Unit!17762)

(assert (=> b!1170580 (= lt!401352 lt!401340)))

(declare-fun lt!401343 () Token!3700)

(assert (=> b!1170580 (rulesProduceIndividualToken!749 Lexer!1712 (rules!9630 thiss!10527) lt!401343)))

(declare-fun lt!401334 () List!11604)

(assert (=> b!1170580 (= lt!401340 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!295 Lexer!1712 (rules!9630 thiss!10527) lt!401334 lt!401343))))

(assert (=> b!1170580 (= lt!401343 (apply!2509 (tokens!1648 thiss!10527) 0))))

(assert (=> b!1170580 (= lt!401334 (list!4268 (tokens!1648 thiss!10527)))))

(declare-fun lt!401342 () Unit!17762)

(declare-fun lt!401328 () Unit!17762)

(assert (=> b!1170580 (= lt!401342 lt!401328)))

(declare-fun lt!401349 () List!11604)

(declare-fun lt!401346 () Int)

(assert (=> b!1170580 (= (tail!1692 (drop!491 lt!401349 lt!401346)) (drop!491 lt!401349 (+ lt!401346 1)))))

(assert (=> b!1170580 (= lt!401328 (lemmaDropTail!365 lt!401349 lt!401346))))

(assert (=> b!1170580 (= lt!401346 (+ 0 1))))

(assert (=> b!1170580 (= lt!401349 (list!4268 (tokens!1648 thiss!10527)))))

(declare-fun lt!401332 () Unit!17762)

(declare-fun lt!401355 () Unit!17762)

(assert (=> b!1170580 (= lt!401332 lt!401355)))

(declare-fun lt!401330 () List!11604)

(assert (=> b!1170580 (= (tail!1692 (drop!491 lt!401330 0)) (drop!491 lt!401330 (+ 0 1)))))

(assert (=> b!1170580 (= lt!401355 (lemmaDropTail!365 lt!401330 0))))

(assert (=> b!1170580 (= lt!401330 (list!4268 (tokens!1648 thiss!10527)))))

(declare-fun lt!401341 () Unit!17762)

(declare-fun lt!401344 () Unit!17762)

(assert (=> b!1170580 (= lt!401341 lt!401344)))

(declare-fun lt!401338 () List!11604)

(declare-fun lt!401327 () Int)

(assert (=> b!1170580 (= (head!2108 (drop!491 lt!401338 lt!401327)) (apply!2510 lt!401338 lt!401327))))

(assert (=> b!1170580 (= lt!401344 (lemmaDropApply!377 lt!401338 lt!401327))))

(assert (=> b!1170580 (= lt!401327 (+ 0 1))))

(assert (=> b!1170580 (= lt!401338 (list!4268 (tokens!1648 thiss!10527)))))

(declare-fun lt!401350 () Unit!17762)

(declare-fun lt!401331 () Unit!17762)

(assert (=> b!1170580 (= lt!401350 lt!401331)))

(declare-fun lt!401347 () List!11604)

(assert (=> b!1170580 (= (head!2108 (drop!491 lt!401347 0)) (apply!2510 lt!401347 0))))

(assert (=> b!1170580 (= lt!401331 (lemmaDropApply!377 lt!401347 0))))

(assert (=> b!1170580 (= lt!401347 (list!4268 (tokens!1648 thiss!10527)))))

(declare-fun b!1170581 () Bool)

(assert (=> b!1170581 (= e!750626 (rulesProduceEachTokenIndividuallyList!580 Lexer!1712 (rules!9630 thiss!10527) lt!401345))))

(declare-fun b!1170582 () Bool)

(assert (=> b!1170582 (= e!750629 (tokensListTwoByTwoPredicateSeparable!75 Lexer!1712 (tokens!1648 thiss!10527) (+ 0 1) (rules!9630 thiss!10527)))))

(declare-fun b!1170583 () Bool)

(declare-fun res!528765 () Bool)

(assert (=> b!1170583 (=> (not res!528765) (not e!750626))))

(assert (=> b!1170583 (= res!528765 (not (isEmpty!7028 (rules!9630 thiss!10527))))))

(assert (= (and d!334724 res!528772) b!1170579))

(assert (= (and d!334724 (not res!528766)) b!1170580))

(assert (= (and b!1170580 res!528767) b!1170582))

(assert (= (and d!334724 res!528771) b!1170577))

(assert (= (and d!334724 res!528770) b!1170583))

(assert (= (and b!1170583 res!528765) b!1170578))

(assert (= (and b!1170578 res!528768) b!1170576))

(assert (= (and b!1170576 res!528769) b!1170581))

(assert (=> b!1170578 m!1342999))

(declare-fun m!1343253 () Bool)

(assert (=> b!1170582 m!1343253))

(declare-fun m!1343255 () Bool)

(assert (=> b!1170580 m!1343255))

(declare-fun m!1343257 () Bool)

(assert (=> b!1170580 m!1343257))

(declare-fun m!1343259 () Bool)

(assert (=> b!1170580 m!1343259))

(declare-fun m!1343261 () Bool)

(assert (=> b!1170580 m!1343261))

(assert (=> b!1170580 m!1343081))

(assert (=> b!1170580 m!1343257))

(declare-fun m!1343263 () Bool)

(assert (=> b!1170580 m!1343263))

(declare-fun m!1343265 () Bool)

(assert (=> b!1170580 m!1343265))

(assert (=> b!1170580 m!1343053))

(declare-fun m!1343267 () Bool)

(assert (=> b!1170580 m!1343267))

(assert (=> b!1170580 m!1343257))

(declare-fun m!1343269 () Bool)

(assert (=> b!1170580 m!1343269))

(declare-fun m!1343271 () Bool)

(assert (=> b!1170580 m!1343271))

(declare-fun m!1343273 () Bool)

(assert (=> b!1170580 m!1343273))

(declare-fun m!1343275 () Bool)

(assert (=> b!1170580 m!1343275))

(declare-fun m!1343277 () Bool)

(assert (=> b!1170580 m!1343277))

(assert (=> b!1170580 m!1343259))

(declare-fun m!1343279 () Bool)

(assert (=> b!1170580 m!1343279))

(declare-fun m!1343281 () Bool)

(assert (=> b!1170580 m!1343281))

(assert (=> b!1170580 m!1343081))

(declare-fun m!1343283 () Bool)

(assert (=> b!1170580 m!1343283))

(declare-fun m!1343285 () Bool)

(assert (=> b!1170580 m!1343285))

(assert (=> b!1170580 m!1343081))

(declare-fun m!1343287 () Bool)

(assert (=> b!1170580 m!1343287))

(declare-fun m!1343289 () Bool)

(assert (=> b!1170580 m!1343289))

(assert (=> b!1170580 m!1343275))

(declare-fun m!1343291 () Bool)

(assert (=> b!1170580 m!1343291))

(assert (=> b!1170580 m!1343285))

(declare-fun m!1343293 () Bool)

(assert (=> b!1170580 m!1343293))

(assert (=> b!1170580 m!1343289))

(declare-fun m!1343295 () Bool)

(assert (=> b!1170580 m!1343295))

(assert (=> b!1170580 m!1343257))

(declare-fun m!1343297 () Bool)

(assert (=> b!1170580 m!1343297))

(assert (=> b!1170580 m!1343265))

(declare-fun m!1343299 () Bool)

(assert (=> b!1170580 m!1343299))

(declare-fun m!1343301 () Bool)

(assert (=> b!1170580 m!1343301))

(declare-fun m!1343303 () Bool)

(assert (=> b!1170580 m!1343303))

(declare-fun m!1343305 () Bool)

(assert (=> b!1170580 m!1343305))

(declare-fun m!1343307 () Bool)

(assert (=> b!1170576 m!1343307))

(declare-fun m!1343309 () Bool)

(assert (=> b!1170581 m!1343309))

(assert (=> b!1170579 m!1343011))

(assert (=> b!1170583 m!1343003))

(declare-fun m!1343311 () Bool)

(assert (=> b!1170577 m!1343311))

(assert (=> d!334724 m!1343011))

(assert (=> d!334724 m!1343053))

(declare-fun m!1343313 () Bool)

(assert (=> d!334724 m!1343313))

(declare-fun m!1343315 () Bool)

(assert (=> d!334724 m!1343315))

(declare-fun m!1343317 () Bool)

(assert (=> d!334724 m!1343317))

(declare-fun m!1343319 () Bool)

(assert (=> d!334724 m!1343319))

(declare-fun m!1343321 () Bool)

(assert (=> d!334724 m!1343321))

(assert (=> d!334724 m!1343313))

(declare-fun m!1343323 () Bool)

(assert (=> d!334724 m!1343323))

(assert (=> d!334724 m!1343319))

(declare-fun m!1343327 () Bool)

(assert (=> d!334724 m!1343327))

(assert (=> b!1170435 d!334724))

(declare-fun bs!285611 () Bool)

(declare-fun d!334728 () Bool)

(assert (= bs!285611 (and d!334728 b!1170436)))

(declare-fun lambda!48172 () Int)

(assert (=> bs!285611 (= lambda!48172 lambda!48153)))

(declare-fun bs!285612 () Bool)

(assert (= bs!285612 (and d!334728 d!334716)))

(assert (=> bs!285612 (= lambda!48172 lambda!48168)))

(declare-fun b!1170598 () Bool)

(declare-fun e!750643 () Bool)

(assert (=> b!1170598 (= e!750643 true)))

(declare-fun b!1170597 () Bool)

(declare-fun e!750642 () Bool)

(assert (=> b!1170597 (= e!750642 e!750643)))

(declare-fun b!1170596 () Bool)

(declare-fun e!750641 () Bool)

(assert (=> b!1170596 (= e!750641 e!750642)))

(assert (=> d!334728 e!750641))

(assert (= b!1170597 b!1170598))

(assert (= b!1170596 b!1170597))

(assert (= (and d!334728 ((_ is Cons!11581) (rules!9630 thiss!10527))) b!1170596))

(assert (=> b!1170598 (< (dynLambda!5111 order!7113 (toValue!3120 (transformation!2019 (h!16982 (rules!9630 thiss!10527))))) (dynLambda!5112 order!7115 lambda!48172))))

(assert (=> b!1170598 (< (dynLambda!5113 order!7117 (toChars!2979 (transformation!2019 (h!16982 (rules!9630 thiss!10527))))) (dynLambda!5112 order!7115 lambda!48172))))

(assert (=> d!334728 true))

(declare-fun lt!401363 () Bool)

(assert (=> d!334728 (= lt!401363 (forall!3060 (t!110702 lt!401199) lambda!48172))))

(declare-fun e!750640 () Bool)

(assert (=> d!334728 (= lt!401363 e!750640)))

(declare-fun res!528781 () Bool)

(assert (=> d!334728 (=> res!528781 e!750640)))

(assert (=> d!334728 (= res!528781 (not ((_ is Cons!11580) (t!110702 lt!401199))))))

(assert (=> d!334728 (not (isEmpty!7028 (rules!9630 thiss!10527)))))

(assert (=> d!334728 (= (rulesProduceEachTokenIndividuallyList!580 Lexer!1712 (rules!9630 thiss!10527) (t!110702 lt!401199)) lt!401363)))

(declare-fun b!1170594 () Bool)

(declare-fun e!750639 () Bool)

(assert (=> b!1170594 (= e!750640 e!750639)))

(declare-fun res!528780 () Bool)

(assert (=> b!1170594 (=> (not res!528780) (not e!750639))))

(assert (=> b!1170594 (= res!528780 (rulesProduceIndividualToken!749 Lexer!1712 (rules!9630 thiss!10527) (h!16981 (t!110702 lt!401199))))))

(declare-fun b!1170595 () Bool)

(assert (=> b!1170595 (= e!750639 (rulesProduceEachTokenIndividuallyList!580 Lexer!1712 (rules!9630 thiss!10527) (t!110702 (t!110702 lt!401199))))))

(assert (= (and d!334728 (not res!528781)) b!1170594))

(assert (= (and b!1170594 res!528780) b!1170595))

(declare-fun m!1343333 () Bool)

(assert (=> d!334728 m!1343333))

(assert (=> d!334728 m!1343003))

(declare-fun m!1343335 () Bool)

(assert (=> b!1170594 m!1343335))

(declare-fun m!1343337 () Bool)

(assert (=> b!1170595 m!1343337))

(assert (=> b!1170424 d!334728))

(declare-fun d!334732 () Bool)

(declare-fun res!528784 () Bool)

(declare-fun e!750646 () Bool)

(assert (=> d!334732 (=> (not res!528784) (not e!750646))))

(declare-fun rulesValid!711 (LexerInterface!1714 List!11605) Bool)

(assert (=> d!334732 (= res!528784 (rulesValid!711 Lexer!1712 (rules!9630 thiss!10527)))))

(assert (=> d!334732 (= (rulesInvariant!1588 Lexer!1712 (rules!9630 thiss!10527)) e!750646)))

(declare-fun b!1170601 () Bool)

(declare-datatypes ((List!11607 0))(
  ( (Nil!11583) (Cons!11583 (h!16984 String!14013) (t!110725 List!11607)) )
))
(declare-fun noDuplicateTag!711 (LexerInterface!1714 List!11605 List!11607) Bool)

(assert (=> b!1170601 (= e!750646 (noDuplicateTag!711 Lexer!1712 (rules!9630 thiss!10527) Nil!11583))))

(assert (= (and d!334732 res!528784) b!1170601))

(declare-fun m!1343339 () Bool)

(assert (=> d!334732 m!1343339))

(declare-fun m!1343341 () Bool)

(assert (=> b!1170601 m!1343341))

(assert (=> b!1170431 d!334732))

(declare-fun d!334734 () Bool)

(declare-fun e!750675 () Bool)

(assert (=> d!334734 e!750675))

(declare-fun res!528824 () Bool)

(assert (=> d!334734 (=> (not res!528824) (not e!750675))))

(assert (=> d!334734 (= res!528824 (rulesInvariant!1588 Lexer!1712 (rules!9630 thiss!10527)))))

(declare-fun Unit!17777 () Unit!17762)

(assert (=> d!334734 (= (lemmaInvariant!206 thiss!10527) Unit!17777)))

(declare-fun b!1170647 () Bool)

(declare-fun res!528825 () Bool)

(assert (=> b!1170647 (=> (not res!528825) (not e!750675))))

(assert (=> b!1170647 (= res!528825 (rulesProduceEachTokenIndividually!752 Lexer!1712 (rules!9630 thiss!10527) (tokens!1648 thiss!10527)))))

(declare-fun b!1170648 () Bool)

(assert (=> b!1170648 (= e!750675 (separableTokens!150 Lexer!1712 (tokens!1648 thiss!10527) (rules!9630 thiss!10527)))))

(assert (= (and d!334734 res!528824) b!1170647))

(assert (= (and b!1170647 res!528825) b!1170648))

(assert (=> d!334734 m!1342999))

(assert (=> b!1170647 m!1343051))

(declare-fun m!1343503 () Bool)

(assert (=> b!1170648 m!1343503))

(assert (=> b!1170431 d!334734))

(declare-fun bs!285614 () Bool)

(declare-fun d!334746 () Bool)

(assert (= bs!285614 (and d!334746 b!1170436)))

(declare-fun lambda!48173 () Int)

(assert (=> bs!285614 (= lambda!48173 lambda!48153)))

(declare-fun bs!285615 () Bool)

(assert (= bs!285615 (and d!334746 d!334716)))

(assert (=> bs!285615 (= lambda!48173 lambda!48168)))

(declare-fun bs!285616 () Bool)

(assert (= bs!285616 (and d!334746 d!334728)))

(assert (=> bs!285616 (= lambda!48173 lambda!48172)))

(declare-fun b!1170653 () Bool)

(declare-fun e!750680 () Bool)

(assert (=> b!1170653 (= e!750680 true)))

(declare-fun b!1170652 () Bool)

(declare-fun e!750679 () Bool)

(assert (=> b!1170652 (= e!750679 e!750680)))

(declare-fun b!1170651 () Bool)

(declare-fun e!750678 () Bool)

(assert (=> b!1170651 (= e!750678 e!750679)))

(assert (=> d!334746 e!750678))

(assert (= b!1170652 b!1170653))

(assert (= b!1170651 b!1170652))

(assert (= (and d!334746 ((_ is Cons!11581) (rules!9630 thiss!10527))) b!1170651))

(assert (=> b!1170653 (< (dynLambda!5111 order!7113 (toValue!3120 (transformation!2019 (h!16982 (rules!9630 thiss!10527))))) (dynLambda!5112 order!7115 lambda!48173))))

(assert (=> b!1170653 (< (dynLambda!5113 order!7117 (toChars!2979 (transformation!2019 (h!16982 (rules!9630 thiss!10527))))) (dynLambda!5112 order!7115 lambda!48173))))

(assert (=> d!334746 true))

(declare-fun lt!401502 () Bool)

(assert (=> d!334746 (= lt!401502 (forall!3060 lt!401185 lambda!48173))))

(declare-fun e!750677 () Bool)

(assert (=> d!334746 (= lt!401502 e!750677)))

(declare-fun res!528827 () Bool)

(assert (=> d!334746 (=> res!528827 e!750677)))

(assert (=> d!334746 (= res!528827 (not ((_ is Cons!11580) lt!401185)))))

(assert (=> d!334746 (not (isEmpty!7028 (rules!9630 thiss!10527)))))

(assert (=> d!334746 (= (rulesProduceEachTokenIndividuallyList!580 Lexer!1712 (rules!9630 thiss!10527) lt!401185) lt!401502)))

(declare-fun b!1170649 () Bool)

(declare-fun e!750676 () Bool)

(assert (=> b!1170649 (= e!750677 e!750676)))

(declare-fun res!528826 () Bool)

(assert (=> b!1170649 (=> (not res!528826) (not e!750676))))

(assert (=> b!1170649 (= res!528826 (rulesProduceIndividualToken!749 Lexer!1712 (rules!9630 thiss!10527) (h!16981 lt!401185)))))

(declare-fun b!1170650 () Bool)

(assert (=> b!1170650 (= e!750676 (rulesProduceEachTokenIndividuallyList!580 Lexer!1712 (rules!9630 thiss!10527) (t!110702 lt!401185)))))

(assert (= (and d!334746 (not res!528827)) b!1170649))

(assert (= (and b!1170649 res!528826) b!1170650))

(declare-fun m!1343505 () Bool)

(assert (=> d!334746 m!1343505))

(assert (=> d!334746 m!1343003))

(assert (=> b!1170649 m!1342997))

(assert (=> b!1170650 m!1343057))

(assert (=> b!1170420 d!334746))

(declare-fun d!334748 () Bool)

(declare-fun lt!401511 () Bool)

(declare-fun e!750701 () Bool)

(assert (=> d!334748 (= lt!401511 e!750701)))

(declare-fun res!528838 () Bool)

(assert (=> d!334748 (=> (not res!528838) (not e!750701))))

(declare-datatypes ((tuple2!12044 0))(
  ( (tuple2!12045 (_1!6869 BalanceConc!7624) (_2!6869 BalanceConc!7622)) )
))
(declare-fun lex!712 (LexerInterface!1714 List!11605 BalanceConc!7622) tuple2!12044)

(declare-fun print!649 (LexerInterface!1714 BalanceConc!7624) BalanceConc!7622)

(declare-fun singletonSeq!679 (Token!3700) BalanceConc!7624)

(assert (=> d!334748 (= res!528838 (= (list!4268 (_1!6869 (lex!712 Lexer!1712 (rules!9630 thiss!10527) (print!649 Lexer!1712 (singletonSeq!679 (h!16981 lt!401199)))))) (list!4268 (singletonSeq!679 (h!16981 lt!401199)))))))

(declare-fun e!750700 () Bool)

(assert (=> d!334748 (= lt!401511 e!750700)))

(declare-fun res!528839 () Bool)

(assert (=> d!334748 (=> (not res!528839) (not e!750700))))

(declare-fun lt!401510 () tuple2!12044)

(assert (=> d!334748 (= res!528839 (= (size!9123 (_1!6869 lt!401510)) 1))))

(assert (=> d!334748 (= lt!401510 (lex!712 Lexer!1712 (rules!9630 thiss!10527) (print!649 Lexer!1712 (singletonSeq!679 (h!16981 lt!401199)))))))

(assert (=> d!334748 (not (isEmpty!7028 (rules!9630 thiss!10527)))))

(assert (=> d!334748 (= (rulesProduceIndividualToken!749 Lexer!1712 (rules!9630 thiss!10527) (h!16981 lt!401199)) lt!401511)))

(declare-fun b!1170687 () Bool)

(declare-fun res!528837 () Bool)

(assert (=> b!1170687 (=> (not res!528837) (not e!750700))))

(assert (=> b!1170687 (= res!528837 (= (apply!2509 (_1!6869 lt!401510) 0) (h!16981 lt!401199)))))

(declare-fun b!1170688 () Bool)

(declare-fun isEmpty!7030 (BalanceConc!7622) Bool)

(assert (=> b!1170688 (= e!750700 (isEmpty!7030 (_2!6869 lt!401510)))))

(declare-fun b!1170689 () Bool)

(assert (=> b!1170689 (= e!750701 (isEmpty!7030 (_2!6869 (lex!712 Lexer!1712 (rules!9630 thiss!10527) (print!649 Lexer!1712 (singletonSeq!679 (h!16981 lt!401199)))))))))

(assert (= (and d!334748 res!528839) b!1170687))

(assert (= (and b!1170687 res!528837) b!1170688))

(assert (= (and d!334748 res!528838) b!1170689))

(declare-fun m!1343515 () Bool)

(assert (=> d!334748 m!1343515))

(declare-fun m!1343517 () Bool)

(assert (=> d!334748 m!1343517))

(declare-fun m!1343519 () Bool)

(assert (=> d!334748 m!1343519))

(assert (=> d!334748 m!1343515))

(declare-fun m!1343521 () Bool)

(assert (=> d!334748 m!1343521))

(assert (=> d!334748 m!1343521))

(declare-fun m!1343523 () Bool)

(assert (=> d!334748 m!1343523))

(assert (=> d!334748 m!1343515))

(assert (=> d!334748 m!1343003))

(declare-fun m!1343525 () Bool)

(assert (=> d!334748 m!1343525))

(declare-fun m!1343527 () Bool)

(assert (=> b!1170687 m!1343527))

(declare-fun m!1343529 () Bool)

(assert (=> b!1170688 m!1343529))

(assert (=> b!1170689 m!1343515))

(assert (=> b!1170689 m!1343515))

(assert (=> b!1170689 m!1343521))

(assert (=> b!1170689 m!1343521))

(assert (=> b!1170689 m!1343523))

(declare-fun m!1343531 () Bool)

(assert (=> b!1170689 m!1343531))

(assert (=> b!1170422 d!334748))

(assert (=> b!1170432 d!334720))

(declare-fun d!334752 () Bool)

(declare-fun res!528862 () Bool)

(declare-fun e!750722 () Bool)

(assert (=> d!334752 (=> (not res!528862) (not e!750722))))

(assert (=> d!334752 (= res!528862 (not (isEmpty!7028 (rules!9630 thiss!10527))))))

(assert (=> d!334752 (= (inv!15267 thiss!10527) e!750722)))

(declare-fun b!1170720 () Bool)

(declare-fun res!528863 () Bool)

(assert (=> b!1170720 (=> (not res!528863) (not e!750722))))

(assert (=> b!1170720 (= res!528863 (rulesInvariant!1588 Lexer!1712 (rules!9630 thiss!10527)))))

(declare-fun b!1170721 () Bool)

(declare-fun res!528864 () Bool)

(assert (=> b!1170721 (=> (not res!528864) (not e!750722))))

(assert (=> b!1170721 (= res!528864 (rulesProduceEachTokenIndividually!752 Lexer!1712 (rules!9630 thiss!10527) (tokens!1648 thiss!10527)))))

(declare-fun b!1170722 () Bool)

(assert (=> b!1170722 (= e!750722 (separableTokens!150 Lexer!1712 (tokens!1648 thiss!10527) (rules!9630 thiss!10527)))))

(assert (= (and d!334752 res!528862) b!1170720))

(assert (= (and b!1170720 res!528863) b!1170721))

(assert (= (and b!1170721 res!528864) b!1170722))

(assert (=> d!334752 m!1343003))

(assert (=> b!1170720 m!1342999))

(assert (=> b!1170721 m!1343051))

(assert (=> b!1170722 m!1343503))

(assert (=> start!102982 d!334752))

(declare-fun bs!285619 () Bool)

(declare-fun d!334770 () Bool)

(assert (= bs!285619 (and d!334770 b!1170436)))

(declare-fun lambda!48174 () Int)

(assert (=> bs!285619 (= lambda!48174 lambda!48153)))

(declare-fun bs!285620 () Bool)

(assert (= bs!285620 (and d!334770 d!334716)))

(assert (=> bs!285620 (= lambda!48174 lambda!48168)))

(declare-fun bs!285621 () Bool)

(assert (= bs!285621 (and d!334770 d!334728)))

(assert (=> bs!285621 (= lambda!48174 lambda!48172)))

(declare-fun bs!285622 () Bool)

(assert (= bs!285622 (and d!334770 d!334746)))

(assert (=> bs!285622 (= lambda!48174 lambda!48173)))

(declare-fun b!1170727 () Bool)

(declare-fun e!750727 () Bool)

(assert (=> b!1170727 (= e!750727 true)))

(declare-fun b!1170726 () Bool)

(declare-fun e!750726 () Bool)

(assert (=> b!1170726 (= e!750726 e!750727)))

(declare-fun b!1170725 () Bool)

(declare-fun e!750725 () Bool)

(assert (=> b!1170725 (= e!750725 e!750726)))

(assert (=> d!334770 e!750725))

(assert (= b!1170726 b!1170727))

(assert (= b!1170725 b!1170726))

(assert (= (and d!334770 ((_ is Cons!11581) (rules!9630 thiss!10527))) b!1170725))

(assert (=> b!1170727 (< (dynLambda!5111 order!7113 (toValue!3120 (transformation!2019 (h!16982 (rules!9630 thiss!10527))))) (dynLambda!5112 order!7115 lambda!48174))))

(assert (=> b!1170727 (< (dynLambda!5113 order!7117 (toChars!2979 (transformation!2019 (h!16982 (rules!9630 thiss!10527))))) (dynLambda!5112 order!7115 lambda!48174))))

(assert (=> d!334770 true))

(declare-fun lt!401530 () Bool)

(assert (=> d!334770 (= lt!401530 (forall!3060 (t!110702 lt!401185) lambda!48174))))

(declare-fun e!750724 () Bool)

(assert (=> d!334770 (= lt!401530 e!750724)))

(declare-fun res!528866 () Bool)

(assert (=> d!334770 (=> res!528866 e!750724)))

(assert (=> d!334770 (= res!528866 (not ((_ is Cons!11580) (t!110702 lt!401185))))))

(assert (=> d!334770 (not (isEmpty!7028 (rules!9630 thiss!10527)))))

(assert (=> d!334770 (= (rulesProduceEachTokenIndividuallyList!580 Lexer!1712 (rules!9630 thiss!10527) (t!110702 lt!401185)) lt!401530)))

(declare-fun b!1170723 () Bool)

(declare-fun e!750723 () Bool)

(assert (=> b!1170723 (= e!750724 e!750723)))

(declare-fun res!528865 () Bool)

(assert (=> b!1170723 (=> (not res!528865) (not e!750723))))

(assert (=> b!1170723 (= res!528865 (rulesProduceIndividualToken!749 Lexer!1712 (rules!9630 thiss!10527) (h!16981 (t!110702 lt!401185))))))

(declare-fun b!1170724 () Bool)

(assert (=> b!1170724 (= e!750723 (rulesProduceEachTokenIndividuallyList!580 Lexer!1712 (rules!9630 thiss!10527) (t!110702 (t!110702 lt!401185))))))

(assert (= (and d!334770 (not res!528866)) b!1170723))

(assert (= (and b!1170723 res!528865) b!1170724))

(declare-fun m!1343557 () Bool)

(assert (=> d!334770 m!1343557))

(assert (=> d!334770 m!1343003))

(declare-fun m!1343559 () Bool)

(assert (=> b!1170723 m!1343559))

(declare-fun m!1343561 () Bool)

(assert (=> b!1170724 m!1343561))

(assert (=> b!1170421 d!334770))

(declare-fun d!334772 () Bool)

(declare-fun lt!401536 () Int)

(assert (=> d!334772 (= lt!401536 (size!9126 (list!4268 (tokens!1648 thiss!10527))))))

(declare-fun size!9127 (Conc!3801) Int)

(assert (=> d!334772 (= lt!401536 (size!9127 (c!195265 (tokens!1648 thiss!10527))))))

(assert (=> d!334772 (= (size!9123 (tokens!1648 thiss!10527)) lt!401536)))

(declare-fun bs!285623 () Bool)

(assert (= bs!285623 d!334772))

(assert (=> bs!285623 m!1343053))

(assert (=> bs!285623 m!1343053))

(declare-fun m!1343585 () Bool)

(assert (=> bs!285623 m!1343585))

(declare-fun m!1343587 () Bool)

(assert (=> bs!285623 m!1343587))

(assert (=> b!1170430 d!334772))

(declare-fun d!334778 () Bool)

(assert (=> d!334778 (= (isEmpty!7028 (rules!9630 thiss!10527)) ((_ is Nil!11581) (rules!9630 thiss!10527)))))

(assert (=> b!1170419 d!334778))

(declare-fun d!334782 () Bool)

(assert (=> d!334782 (= (separableTokens!150 Lexer!1712 lt!401184 (rules!9630 thiss!10527)) (tokensListTwoByTwoPredicateSeparable!75 Lexer!1712 lt!401184 0 (rules!9630 thiss!10527)))))

(declare-fun bs!285625 () Bool)

(assert (= bs!285625 d!334782))

(assert (=> bs!285625 m!1343007))

(assert (=> b!1170419 d!334782))

(declare-fun b!1170749 () Bool)

(declare-fun res!528882 () Bool)

(declare-fun e!750743 () Bool)

(assert (=> b!1170749 (=> (not res!528882) (not e!750743))))

(declare-fun lt!401569 () List!11604)

(declare-fun lt!401561 () List!11604)

(assert (=> b!1170749 (= res!528882 (subseq!269 lt!401569 lt!401561))))

(declare-fun d!334798 () Bool)

(declare-fun lt!401555 () Bool)

(assert (=> d!334798 (= lt!401555 (tokensListTwoByTwoPredicateSeparableList!110 Lexer!1712 (dropList!324 lt!401184 0) (rules!9630 thiss!10527)))))

(declare-fun lt!401567 () Unit!17762)

(declare-fun lt!401549 () Unit!17762)

(assert (=> d!334798 (= lt!401567 lt!401549)))

(assert (=> d!334798 (rulesProduceEachTokenIndividuallyList!580 Lexer!1712 (rules!9630 thiss!10527) lt!401569)))

(assert (=> d!334798 (= lt!401549 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!32 Lexer!1712 (rules!9630 thiss!10527) lt!401561 lt!401569))))

(assert (=> d!334798 e!750743))

(declare-fun res!528883 () Bool)

(assert (=> d!334798 (=> (not res!528883) (not e!750743))))

(assert (=> d!334798 (= res!528883 ((_ is Lexer!1712) Lexer!1712))))

(assert (=> d!334798 (= lt!401569 (dropList!324 lt!401184 0))))

(assert (=> d!334798 (= lt!401561 (list!4268 lt!401184))))

(declare-fun lt!401575 () Unit!17762)

(declare-fun lt!401572 () Unit!17762)

(assert (=> d!334798 (= lt!401575 lt!401572)))

(declare-fun lt!401545 () List!11604)

(assert (=> d!334798 (subseq!269 (drop!491 lt!401545 0) lt!401545)))

(assert (=> d!334798 (= lt!401572 (lemmaDropSubSeq!32 lt!401545 0))))

(declare-fun e!750742 () Bool)

(assert (=> d!334798 e!750742))

(declare-fun res!528884 () Bool)

(assert (=> d!334798 (=> (not res!528884) (not e!750742))))

(assert (=> d!334798 (= res!528884 (>= 0 0))))

(assert (=> d!334798 (= lt!401545 (list!4268 lt!401184))))

(declare-fun e!750745 () Bool)

(assert (=> d!334798 (= lt!401555 e!750745)))

(declare-fun res!528879 () Bool)

(assert (=> d!334798 (=> res!528879 e!750745)))

(assert (=> d!334798 (= res!528879 (not (< 0 (- (size!9123 lt!401184) 1))))))

(declare-fun e!750744 () Bool)

(assert (=> d!334798 e!750744))

(declare-fun res!528885 () Bool)

(assert (=> d!334798 (=> (not res!528885) (not e!750744))))

(assert (=> d!334798 (= res!528885 (>= 0 0))))

(assert (=> d!334798 (= (tokensListTwoByTwoPredicateSeparable!75 Lexer!1712 lt!401184 0 (rules!9630 thiss!10527)) lt!401555)))

(declare-fun b!1170750 () Bool)

(assert (=> b!1170750 (= e!750742 (<= 0 (size!9126 lt!401545)))))

(declare-fun b!1170751 () Bool)

(declare-fun res!528881 () Bool)

(assert (=> b!1170751 (=> (not res!528881) (not e!750743))))

(assert (=> b!1170751 (= res!528881 (rulesInvariant!1588 Lexer!1712 (rules!9630 thiss!10527)))))

(declare-fun b!1170752 () Bool)

(assert (=> b!1170752 (= e!750744 (<= 0 (size!9123 lt!401184)))))

(declare-fun b!1170753 () Bool)

(declare-fun e!750746 () Bool)

(assert (=> b!1170753 (= e!750745 e!750746)))

(declare-fun res!528880 () Bool)

(assert (=> b!1170753 (=> (not res!528880) (not e!750746))))

(assert (=> b!1170753 (= res!528880 (separableTokensPredicate!136 Lexer!1712 (apply!2509 lt!401184 0) (apply!2509 lt!401184 (+ 0 1)) (rules!9630 thiss!10527)))))

(declare-fun lt!401574 () Unit!17762)

(declare-fun Unit!17778 () Unit!17762)

(assert (=> b!1170753 (= lt!401574 Unit!17778)))

(assert (=> b!1170753 (> (size!9122 (charsOf!1074 (apply!2509 lt!401184 (+ 0 1)))) 0)))

(declare-fun lt!401552 () Unit!17762)

(declare-fun Unit!17780 () Unit!17762)

(assert (=> b!1170753 (= lt!401552 Unit!17780)))

(assert (=> b!1170753 (rulesProduceIndividualToken!749 Lexer!1712 (rules!9630 thiss!10527) (apply!2509 lt!401184 (+ 0 1)))))

(declare-fun lt!401553 () Unit!17762)

(declare-fun Unit!17781 () Unit!17762)

(assert (=> b!1170753 (= lt!401553 Unit!17781)))

(assert (=> b!1170753 (rulesProduceIndividualToken!749 Lexer!1712 (rules!9630 thiss!10527) (apply!2509 lt!401184 0))))

(declare-fun lt!401573 () Unit!17762)

(declare-fun lt!401551 () Unit!17762)

(assert (=> b!1170753 (= lt!401573 lt!401551)))

(declare-fun lt!401570 () Token!3700)

(assert (=> b!1170753 (rulesProduceIndividualToken!749 Lexer!1712 (rules!9630 thiss!10527) lt!401570)))

(declare-fun lt!401564 () List!11604)

(assert (=> b!1170753 (= lt!401551 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!295 Lexer!1712 (rules!9630 thiss!10527) lt!401564 lt!401570))))

(assert (=> b!1170753 (= lt!401570 (apply!2509 lt!401184 (+ 0 1)))))

(assert (=> b!1170753 (= lt!401564 (list!4268 lt!401184))))

(declare-fun lt!401568 () Unit!17762)

(declare-fun lt!401556 () Unit!17762)

(assert (=> b!1170753 (= lt!401568 lt!401556)))

(declare-fun lt!401559 () Token!3700)

(assert (=> b!1170753 (rulesProduceIndividualToken!749 Lexer!1712 (rules!9630 thiss!10527) lt!401559)))

(declare-fun lt!401550 () List!11604)

(assert (=> b!1170753 (= lt!401556 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!295 Lexer!1712 (rules!9630 thiss!10527) lt!401550 lt!401559))))

(assert (=> b!1170753 (= lt!401559 (apply!2509 lt!401184 0))))

(assert (=> b!1170753 (= lt!401550 (list!4268 lt!401184))))

(declare-fun lt!401558 () Unit!17762)

(declare-fun lt!401544 () Unit!17762)

(assert (=> b!1170753 (= lt!401558 lt!401544)))

(declare-fun lt!401565 () List!11604)

(declare-fun lt!401562 () Int)

(assert (=> b!1170753 (= (tail!1692 (drop!491 lt!401565 lt!401562)) (drop!491 lt!401565 (+ lt!401562 1)))))

(assert (=> b!1170753 (= lt!401544 (lemmaDropTail!365 lt!401565 lt!401562))))

(assert (=> b!1170753 (= lt!401562 (+ 0 1))))

(assert (=> b!1170753 (= lt!401565 (list!4268 lt!401184))))

(declare-fun lt!401548 () Unit!17762)

(declare-fun lt!401571 () Unit!17762)

(assert (=> b!1170753 (= lt!401548 lt!401571)))

(declare-fun lt!401546 () List!11604)

(assert (=> b!1170753 (= (tail!1692 (drop!491 lt!401546 0)) (drop!491 lt!401546 (+ 0 1)))))

(assert (=> b!1170753 (= lt!401571 (lemmaDropTail!365 lt!401546 0))))

(assert (=> b!1170753 (= lt!401546 (list!4268 lt!401184))))

(declare-fun lt!401557 () Unit!17762)

(declare-fun lt!401560 () Unit!17762)

(assert (=> b!1170753 (= lt!401557 lt!401560)))

(declare-fun lt!401554 () List!11604)

(declare-fun lt!401543 () Int)

(assert (=> b!1170753 (= (head!2108 (drop!491 lt!401554 lt!401543)) (apply!2510 lt!401554 lt!401543))))

(assert (=> b!1170753 (= lt!401560 (lemmaDropApply!377 lt!401554 lt!401543))))

(assert (=> b!1170753 (= lt!401543 (+ 0 1))))

(assert (=> b!1170753 (= lt!401554 (list!4268 lt!401184))))

(declare-fun lt!401566 () Unit!17762)

(declare-fun lt!401547 () Unit!17762)

(assert (=> b!1170753 (= lt!401566 lt!401547)))

(declare-fun lt!401563 () List!11604)

(assert (=> b!1170753 (= (head!2108 (drop!491 lt!401563 0)) (apply!2510 lt!401563 0))))

(assert (=> b!1170753 (= lt!401547 (lemmaDropApply!377 lt!401563 0))))

(assert (=> b!1170753 (= lt!401563 (list!4268 lt!401184))))

(declare-fun b!1170754 () Bool)

(assert (=> b!1170754 (= e!750743 (rulesProduceEachTokenIndividuallyList!580 Lexer!1712 (rules!9630 thiss!10527) lt!401561))))

(declare-fun b!1170755 () Bool)

(assert (=> b!1170755 (= e!750746 (tokensListTwoByTwoPredicateSeparable!75 Lexer!1712 lt!401184 (+ 0 1) (rules!9630 thiss!10527)))))

(declare-fun b!1170756 () Bool)

(declare-fun res!528878 () Bool)

(assert (=> b!1170756 (=> (not res!528878) (not e!750743))))

(assert (=> b!1170756 (= res!528878 (not (isEmpty!7028 (rules!9630 thiss!10527))))))

(assert (= (and d!334798 res!528885) b!1170752))

(assert (= (and d!334798 (not res!528879)) b!1170753))

(assert (= (and b!1170753 res!528880) b!1170755))

(assert (= (and d!334798 res!528884) b!1170750))

(assert (= (and d!334798 res!528883) b!1170756))

(assert (= (and b!1170756 res!528878) b!1170751))

(assert (= (and b!1170751 res!528881) b!1170749))

(assert (= (and b!1170749 res!528882) b!1170754))

(assert (=> b!1170751 m!1342999))

(declare-fun m!1343639 () Bool)

(assert (=> b!1170755 m!1343639))

(declare-fun m!1343641 () Bool)

(assert (=> b!1170753 m!1343641))

(declare-fun m!1343643 () Bool)

(assert (=> b!1170753 m!1343643))

(declare-fun m!1343645 () Bool)

(assert (=> b!1170753 m!1343645))

(declare-fun m!1343647 () Bool)

(assert (=> b!1170753 m!1343647))

(declare-fun m!1343649 () Bool)

(assert (=> b!1170753 m!1343649))

(assert (=> b!1170753 m!1343643))

(declare-fun m!1343651 () Bool)

(assert (=> b!1170753 m!1343651))

(declare-fun m!1343653 () Bool)

(assert (=> b!1170753 m!1343653))

(assert (=> b!1170753 m!1343023))

(declare-fun m!1343655 () Bool)

(assert (=> b!1170753 m!1343655))

(assert (=> b!1170753 m!1343643))

(declare-fun m!1343657 () Bool)

(assert (=> b!1170753 m!1343657))

(declare-fun m!1343659 () Bool)

(assert (=> b!1170753 m!1343659))

(declare-fun m!1343661 () Bool)

(assert (=> b!1170753 m!1343661))

(declare-fun m!1343663 () Bool)

(assert (=> b!1170753 m!1343663))

(declare-fun m!1343665 () Bool)

(assert (=> b!1170753 m!1343665))

(assert (=> b!1170753 m!1343645))

(declare-fun m!1343667 () Bool)

(assert (=> b!1170753 m!1343667))

(declare-fun m!1343669 () Bool)

(assert (=> b!1170753 m!1343669))

(assert (=> b!1170753 m!1343649))

(declare-fun m!1343671 () Bool)

(assert (=> b!1170753 m!1343671))

(declare-fun m!1343673 () Bool)

(assert (=> b!1170753 m!1343673))

(assert (=> b!1170753 m!1343649))

(declare-fun m!1343675 () Bool)

(assert (=> b!1170753 m!1343675))

(declare-fun m!1343677 () Bool)

(assert (=> b!1170753 m!1343677))

(assert (=> b!1170753 m!1343663))

(declare-fun m!1343679 () Bool)

(assert (=> b!1170753 m!1343679))

(assert (=> b!1170753 m!1343673))

(declare-fun m!1343681 () Bool)

(assert (=> b!1170753 m!1343681))

(assert (=> b!1170753 m!1343677))

(declare-fun m!1343683 () Bool)

(assert (=> b!1170753 m!1343683))

(assert (=> b!1170753 m!1343643))

(declare-fun m!1343685 () Bool)

(assert (=> b!1170753 m!1343685))

(assert (=> b!1170753 m!1343653))

(declare-fun m!1343687 () Bool)

(assert (=> b!1170753 m!1343687))

(declare-fun m!1343689 () Bool)

(assert (=> b!1170753 m!1343689))

(declare-fun m!1343691 () Bool)

(assert (=> b!1170753 m!1343691))

(declare-fun m!1343693 () Bool)

(assert (=> b!1170753 m!1343693))

(declare-fun m!1343695 () Bool)

(assert (=> b!1170749 m!1343695))

(declare-fun m!1343697 () Bool)

(assert (=> b!1170754 m!1343697))

(declare-fun m!1343699 () Bool)

(assert (=> b!1170752 m!1343699))

(assert (=> b!1170756 m!1343003))

(declare-fun m!1343701 () Bool)

(assert (=> b!1170750 m!1343701))

(assert (=> d!334798 m!1343699))

(assert (=> d!334798 m!1343023))

(declare-fun m!1343703 () Bool)

(assert (=> d!334798 m!1343703))

(declare-fun m!1343705 () Bool)

(assert (=> d!334798 m!1343705))

(declare-fun m!1343707 () Bool)

(assert (=> d!334798 m!1343707))

(declare-fun m!1343709 () Bool)

(assert (=> d!334798 m!1343709))

(declare-fun m!1343711 () Bool)

(assert (=> d!334798 m!1343711))

(assert (=> d!334798 m!1343703))

(declare-fun m!1343713 () Bool)

(assert (=> d!334798 m!1343713))

(assert (=> d!334798 m!1343709))

(declare-fun m!1343715 () Bool)

(assert (=> d!334798 m!1343715))

(assert (=> b!1170419 d!334798))

(declare-fun d!334800 () Bool)

(declare-fun lt!401578 () Int)

(declare-fun size!9128 (List!11603) Int)

(declare-fun list!4270 (BalanceConc!7622) List!11603)

(assert (=> d!334800 (= lt!401578 (size!9128 (list!4270 (charsOf!1074 lt!401196))))))

(declare-fun size!9129 (Conc!3800) Int)

(assert (=> d!334800 (= lt!401578 (size!9129 (c!195264 (charsOf!1074 lt!401196))))))

(assert (=> d!334800 (= (size!9122 (charsOf!1074 lt!401196)) lt!401578)))

(declare-fun bs!285626 () Bool)

(assert (= bs!285626 d!334800))

(assert (=> bs!285626 m!1343017))

(declare-fun m!1343717 () Bool)

(assert (=> bs!285626 m!1343717))

(assert (=> bs!285626 m!1343717))

(declare-fun m!1343719 () Bool)

(assert (=> bs!285626 m!1343719))

(declare-fun m!1343721 () Bool)

(assert (=> bs!285626 m!1343721))

(assert (=> b!1170429 d!334800))

(declare-fun d!334802 () Bool)

(declare-fun lt!401581 () BalanceConc!7622)

(assert (=> d!334802 (= (list!4270 lt!401581) (originalCharacters!2573 lt!401196))))

(declare-fun dynLambda!5114 (Int TokenValue!2085) BalanceConc!7622)

(assert (=> d!334802 (= lt!401581 (dynLambda!5114 (toChars!2979 (transformation!2019 (rule!3440 lt!401196))) (value!65538 lt!401196)))))

(assert (=> d!334802 (= (charsOf!1074 lt!401196) lt!401581)))

(declare-fun b_lambda!34973 () Bool)

(assert (=> (not b_lambda!34973) (not d!334802)))

(declare-fun bs!285627 () Bool)

(assert (= bs!285627 d!334802))

(declare-fun m!1343723 () Bool)

(assert (=> bs!285627 m!1343723))

(declare-fun m!1343725 () Bool)

(assert (=> bs!285627 m!1343725))

(assert (=> b!1170429 d!334802))

(declare-fun d!334804 () Bool)

(declare-fun c!195296 () Bool)

(assert (=> d!334804 (= c!195296 ((_ is Node!3801) (c!195265 (tokens!1648 thiss!10527))))))

(declare-fun e!750751 () Bool)

(assert (=> d!334804 (= (inv!15265 (c!195265 (tokens!1648 thiss!10527))) e!750751)))

(declare-fun b!1170763 () Bool)

(declare-fun inv!15270 (Conc!3801) Bool)

(assert (=> b!1170763 (= e!750751 (inv!15270 (c!195265 (tokens!1648 thiss!10527))))))

(declare-fun b!1170764 () Bool)

(declare-fun e!750752 () Bool)

(assert (=> b!1170764 (= e!750751 e!750752)))

(declare-fun res!528888 () Bool)

(assert (=> b!1170764 (= res!528888 (not ((_ is Leaf!5821) (c!195265 (tokens!1648 thiss!10527)))))))

(assert (=> b!1170764 (=> res!528888 e!750752)))

(declare-fun b!1170765 () Bool)

(declare-fun inv!15271 (Conc!3801) Bool)

(assert (=> b!1170765 (= e!750752 (inv!15271 (c!195265 (tokens!1648 thiss!10527))))))

(assert (= (and d!334804 c!195296) b!1170763))

(assert (= (and d!334804 (not c!195296)) b!1170764))

(assert (= (and b!1170764 (not res!528888)) b!1170765))

(declare-fun m!1343727 () Bool)

(assert (=> b!1170763 m!1343727))

(declare-fun m!1343729 () Bool)

(assert (=> b!1170765 m!1343729))

(assert (=> b!1170426 d!334804))

(declare-fun bs!285628 () Bool)

(declare-fun d!334806 () Bool)

(assert (= bs!285628 (and d!334806 d!334770)))

(declare-fun lambda!48175 () Int)

(assert (=> bs!285628 (= lambda!48175 lambda!48174)))

(declare-fun bs!285629 () Bool)

(assert (= bs!285629 (and d!334806 b!1170436)))

(assert (=> bs!285629 (= lambda!48175 lambda!48153)))

(declare-fun bs!285630 () Bool)

(assert (= bs!285630 (and d!334806 d!334716)))

(assert (=> bs!285630 (= lambda!48175 lambda!48168)))

(declare-fun bs!285631 () Bool)

(assert (= bs!285631 (and d!334806 d!334746)))

(assert (=> bs!285631 (= lambda!48175 lambda!48173)))

(declare-fun bs!285632 () Bool)

(assert (= bs!285632 (and d!334806 d!334728)))

(assert (=> bs!285632 (= lambda!48175 lambda!48172)))

(declare-fun b!1170769 () Bool)

(declare-fun e!750756 () Bool)

(assert (=> b!1170769 (= e!750756 true)))

(declare-fun b!1170768 () Bool)

(declare-fun e!750755 () Bool)

(assert (=> b!1170768 (= e!750755 e!750756)))

(declare-fun b!1170767 () Bool)

(declare-fun e!750754 () Bool)

(assert (=> b!1170767 (= e!750754 e!750755)))

(assert (=> d!334806 e!750754))

(assert (= b!1170768 b!1170769))

(assert (= b!1170767 b!1170768))

(assert (= (and d!334806 ((_ is Cons!11581) (rules!9630 thiss!10527))) b!1170767))

(assert (=> b!1170769 (< (dynLambda!5111 order!7113 (toValue!3120 (transformation!2019 (h!16982 (rules!9630 thiss!10527))))) (dynLambda!5112 order!7115 lambda!48175))))

(assert (=> b!1170769 (< (dynLambda!5113 order!7117 (toChars!2979 (transformation!2019 (h!16982 (rules!9630 thiss!10527))))) (dynLambda!5112 order!7115 lambda!48175))))

(assert (=> d!334806 true))

(declare-fun e!750753 () Bool)

(assert (=> d!334806 e!750753))

(declare-fun res!528889 () Bool)

(assert (=> d!334806 (=> (not res!528889) (not e!750753))))

(declare-fun lt!401582 () Bool)

(assert (=> d!334806 (= res!528889 (= lt!401582 (forall!3060 (list!4268 (tokens!1648 thiss!10527)) lambda!48175)))))

(assert (=> d!334806 (= lt!401582 (forall!3059 (tokens!1648 thiss!10527) lambda!48175))))

(assert (=> d!334806 (not (isEmpty!7028 (rules!9630 thiss!10527)))))

(assert (=> d!334806 (= (rulesProduceEachTokenIndividually!752 Lexer!1712 (rules!9630 thiss!10527) (tokens!1648 thiss!10527)) lt!401582)))

(declare-fun b!1170766 () Bool)

(assert (=> b!1170766 (= e!750753 (= lt!401582 (rulesProduceEachTokenIndividuallyList!580 Lexer!1712 (rules!9630 thiss!10527) (list!4268 (tokens!1648 thiss!10527)))))))

(assert (= (and d!334806 res!528889) b!1170766))

(assert (=> d!334806 m!1343053))

(assert (=> d!334806 m!1343053))

(declare-fun m!1343731 () Bool)

(assert (=> d!334806 m!1343731))

(declare-fun m!1343733 () Bool)

(assert (=> d!334806 m!1343733))

(assert (=> d!334806 m!1343003))

(assert (=> b!1170766 m!1343053))

(assert (=> b!1170766 m!1343053))

(declare-fun m!1343735 () Bool)

(assert (=> b!1170766 m!1343735))

(assert (=> b!1170436 d!334806))

(declare-fun bs!285633 () Bool)

(declare-fun d!334808 () Bool)

(assert (= bs!285633 (and d!334808 d!334770)))

(declare-fun lambda!48176 () Int)

(assert (=> bs!285633 (= lambda!48176 lambda!48174)))

(declare-fun bs!285634 () Bool)

(assert (= bs!285634 (and d!334808 b!1170436)))

(assert (=> bs!285634 (= lambda!48176 lambda!48153)))

(declare-fun bs!285635 () Bool)

(assert (= bs!285635 (and d!334808 d!334806)))

(assert (=> bs!285635 (= lambda!48176 lambda!48175)))

(declare-fun bs!285636 () Bool)

(assert (= bs!285636 (and d!334808 d!334716)))

(assert (=> bs!285636 (= lambda!48176 lambda!48168)))

(declare-fun bs!285637 () Bool)

(assert (= bs!285637 (and d!334808 d!334746)))

(assert (=> bs!285637 (= lambda!48176 lambda!48173)))

(declare-fun bs!285638 () Bool)

(assert (= bs!285638 (and d!334808 d!334728)))

(assert (=> bs!285638 (= lambda!48176 lambda!48172)))

(declare-fun b!1170774 () Bool)

(declare-fun e!750761 () Bool)

(assert (=> b!1170774 (= e!750761 true)))

(declare-fun b!1170773 () Bool)

(declare-fun e!750760 () Bool)

(assert (=> b!1170773 (= e!750760 e!750761)))

(declare-fun b!1170772 () Bool)

(declare-fun e!750759 () Bool)

(assert (=> b!1170772 (= e!750759 e!750760)))

(assert (=> d!334808 e!750759))

(assert (= b!1170773 b!1170774))

(assert (= b!1170772 b!1170773))

(assert (= (and d!334808 ((_ is Cons!11581) (rules!9630 thiss!10527))) b!1170772))

(assert (=> b!1170774 (< (dynLambda!5111 order!7113 (toValue!3120 (transformation!2019 (h!16982 (rules!9630 thiss!10527))))) (dynLambda!5112 order!7115 lambda!48176))))

(assert (=> b!1170774 (< (dynLambda!5113 order!7117 (toChars!2979 (transformation!2019 (h!16982 (rules!9630 thiss!10527))))) (dynLambda!5112 order!7115 lambda!48176))))

(assert (=> d!334808 true))

(declare-fun lt!401583 () Bool)

(assert (=> d!334808 (= lt!401583 (forall!3060 lt!401199 lambda!48176))))

(declare-fun e!750758 () Bool)

(assert (=> d!334808 (= lt!401583 e!750758)))

(declare-fun res!528891 () Bool)

(assert (=> d!334808 (=> res!528891 e!750758)))

(assert (=> d!334808 (= res!528891 (not ((_ is Cons!11580) lt!401199)))))

(assert (=> d!334808 (not (isEmpty!7028 (rules!9630 thiss!10527)))))

(assert (=> d!334808 (= (rulesProduceEachTokenIndividuallyList!580 Lexer!1712 (rules!9630 thiss!10527) lt!401199) lt!401583)))

(declare-fun b!1170770 () Bool)

(declare-fun e!750757 () Bool)

(assert (=> b!1170770 (= e!750758 e!750757)))

(declare-fun res!528890 () Bool)

(assert (=> b!1170770 (=> (not res!528890) (not e!750757))))

(assert (=> b!1170770 (= res!528890 (rulesProduceIndividualToken!749 Lexer!1712 (rules!9630 thiss!10527) (h!16981 lt!401199)))))

(declare-fun b!1170771 () Bool)

(assert (=> b!1170771 (= e!750757 (rulesProduceEachTokenIndividuallyList!580 Lexer!1712 (rules!9630 thiss!10527) (t!110702 lt!401199)))))

(assert (= (and d!334808 (not res!528891)) b!1170770))

(assert (= (and b!1170770 res!528890) b!1170771))

(declare-fun m!1343737 () Bool)

(assert (=> d!334808 m!1343737))

(assert (=> d!334808 m!1343003))

(assert (=> b!1170770 m!1343043))

(assert (=> b!1170771 m!1343013))

(assert (=> b!1170436 d!334808))

(declare-fun d!334810 () Bool)

(declare-fun list!4271 (Conc!3801) List!11604)

(assert (=> d!334810 (= (list!4268 (tokens!1648 thiss!10527)) (list!4271 (c!195265 (tokens!1648 thiss!10527))))))

(declare-fun bs!285639 () Bool)

(assert (= bs!285639 d!334810))

(declare-fun m!1343739 () Bool)

(assert (=> bs!285639 m!1343739))

(assert (=> b!1170436 d!334810))

(declare-fun d!334812 () Bool)

(declare-fun lt!401584 () Bool)

(assert (=> d!334812 (= lt!401584 (forall!3060 (list!4268 (tokens!1648 thiss!10527)) lambda!48153))))

(assert (=> d!334812 (= lt!401584 (forall!3062 (c!195265 (tokens!1648 thiss!10527)) lambda!48153))))

(assert (=> d!334812 (= (forall!3059 (tokens!1648 thiss!10527) lambda!48153) lt!401584)))

(declare-fun bs!285640 () Bool)

(assert (= bs!285640 d!334812))

(assert (=> bs!285640 m!1343053))

(assert (=> bs!285640 m!1343053))

(declare-fun m!1343741 () Bool)

(assert (=> bs!285640 m!1343741))

(declare-fun m!1343743 () Bool)

(assert (=> bs!285640 m!1343743))

(assert (=> b!1170436 d!334812))

(declare-fun b!1170793 () Bool)

(declare-fun e!750772 () List!11604)

(assert (=> b!1170793 (= e!750772 Nil!11580)))

(declare-fun b!1170794 () Bool)

(declare-fun e!750776 () List!11604)

(assert (=> b!1170794 (= e!750776 (drop!491 (t!110702 lt!401199) (- 0 1)))))

(declare-fun bm!82277 () Bool)

(declare-fun call!82282 () Int)

(assert (=> bm!82277 (= call!82282 (size!9126 lt!401199))))

(declare-fun b!1170795 () Bool)

(declare-fun e!750773 () Int)

(declare-fun e!750774 () Int)

(assert (=> b!1170795 (= e!750773 e!750774)))

(declare-fun c!195305 () Bool)

(assert (=> b!1170795 (= c!195305 (>= 0 call!82282))))

(declare-fun b!1170796 () Bool)

(assert (=> b!1170796 (= e!750772 e!750776)))

(declare-fun c!195308 () Bool)

(assert (=> b!1170796 (= c!195308 (<= 0 0))))

(declare-fun b!1170797 () Bool)

(assert (=> b!1170797 (= e!750773 call!82282)))

(declare-fun b!1170798 () Bool)

(assert (=> b!1170798 (= e!750774 (- call!82282 0))))

(declare-fun d!334814 () Bool)

(declare-fun e!750775 () Bool)

(assert (=> d!334814 e!750775))

(declare-fun res!528894 () Bool)

(assert (=> d!334814 (=> (not res!528894) (not e!750775))))

(declare-fun lt!401587 () List!11604)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1612 (List!11604) (InoxSet Token!3700))

(assert (=> d!334814 (= res!528894 (= ((_ map implies) (content!1612 lt!401587) (content!1612 lt!401199)) ((as const (InoxSet Token!3700)) true)))))

(assert (=> d!334814 (= lt!401587 e!750772)))

(declare-fun c!195307 () Bool)

(assert (=> d!334814 (= c!195307 ((_ is Nil!11580) lt!401199))))

(assert (=> d!334814 (= (drop!491 lt!401199 0) lt!401587)))

(declare-fun b!1170799 () Bool)

(assert (=> b!1170799 (= e!750774 0)))

(declare-fun b!1170800 () Bool)

(assert (=> b!1170800 (= e!750775 (= (size!9126 lt!401587) e!750773))))

(declare-fun c!195306 () Bool)

(assert (=> b!1170800 (= c!195306 (<= 0 0))))

(declare-fun b!1170801 () Bool)

(assert (=> b!1170801 (= e!750776 lt!401199)))

(assert (= (and d!334814 c!195307) b!1170793))

(assert (= (and d!334814 (not c!195307)) b!1170796))

(assert (= (and b!1170796 c!195308) b!1170801))

(assert (= (and b!1170796 (not c!195308)) b!1170794))

(assert (= (and d!334814 res!528894) b!1170800))

(assert (= (and b!1170800 c!195306) b!1170797))

(assert (= (and b!1170800 (not c!195306)) b!1170795))

(assert (= (and b!1170795 c!195305) b!1170799))

(assert (= (and b!1170795 (not c!195305)) b!1170798))

(assert (= (or b!1170797 b!1170795 b!1170798) bm!82277))

(declare-fun m!1343745 () Bool)

(assert (=> b!1170794 m!1343745))

(declare-fun m!1343747 () Bool)

(assert (=> bm!82277 m!1343747))

(declare-fun m!1343749 () Bool)

(assert (=> d!334814 m!1343749))

(declare-fun m!1343751 () Bool)

(assert (=> d!334814 m!1343751))

(declare-fun m!1343753 () Bool)

(assert (=> b!1170800 m!1343753))

(assert (=> b!1170425 d!334814))

(declare-fun d!334816 () Bool)

(assert (=> d!334816 (= (tail!1692 (drop!491 lt!401199 0)) (drop!491 lt!401199 (+ 0 1)))))

(declare-fun lt!401623 () Unit!17762)

(declare-fun choose!7555 (List!11604 Int) Unit!17762)

(assert (=> d!334816 (= lt!401623 (choose!7555 lt!401199 0))))

(declare-fun e!750784 () Bool)

(assert (=> d!334816 e!750784))

(declare-fun res!528905 () Bool)

(assert (=> d!334816 (=> (not res!528905) (not e!750784))))

(assert (=> d!334816 (= res!528905 (>= 0 0))))

(assert (=> d!334816 (= (lemmaDropTail!365 lt!401199 0) lt!401623)))

(declare-fun b!1170812 () Bool)

(assert (=> b!1170812 (= e!750784 (< 0 (size!9126 lt!401199)))))

(assert (= (and d!334816 res!528905) b!1170812))

(assert (=> d!334816 m!1343067))

(assert (=> d!334816 m!1343067))

(declare-fun m!1343757 () Bool)

(assert (=> d!334816 m!1343757))

(declare-fun m!1343763 () Bool)

(assert (=> d!334816 m!1343763))

(declare-fun m!1343765 () Bool)

(assert (=> d!334816 m!1343765))

(assert (=> b!1170812 m!1343747))

(assert (=> b!1170425 d!334816))

(declare-fun d!334820 () Bool)

(assert (=> d!334820 (= (tail!1692 lt!401193) (t!110702 lt!401193))))

(assert (=> b!1170425 d!334820))

(declare-fun b!1170813 () Bool)

(declare-fun e!750785 () List!11604)

(assert (=> b!1170813 (= e!750785 Nil!11580)))

(declare-fun b!1170814 () Bool)

(declare-fun e!750789 () List!11604)

(assert (=> b!1170814 (= e!750789 (drop!491 (t!110702 lt!401199) (- 1 1)))))

(declare-fun bm!82278 () Bool)

(declare-fun call!82283 () Int)

(assert (=> bm!82278 (= call!82283 (size!9126 lt!401199))))

(declare-fun b!1170815 () Bool)

(declare-fun e!750786 () Int)

(declare-fun e!750787 () Int)

(assert (=> b!1170815 (= e!750786 e!750787)))

(declare-fun c!195309 () Bool)

(assert (=> b!1170815 (= c!195309 (>= 1 call!82283))))

(declare-fun b!1170816 () Bool)

(assert (=> b!1170816 (= e!750785 e!750789)))

(declare-fun c!195312 () Bool)

(assert (=> b!1170816 (= c!195312 (<= 1 0))))

(declare-fun b!1170817 () Bool)

(assert (=> b!1170817 (= e!750786 call!82283)))

(declare-fun b!1170818 () Bool)

(assert (=> b!1170818 (= e!750787 (- call!82283 1))))

(declare-fun d!334822 () Bool)

(declare-fun e!750788 () Bool)

(assert (=> d!334822 e!750788))

(declare-fun res!528906 () Bool)

(assert (=> d!334822 (=> (not res!528906) (not e!750788))))

(declare-fun lt!401624 () List!11604)

(assert (=> d!334822 (= res!528906 (= ((_ map implies) (content!1612 lt!401624) (content!1612 lt!401199)) ((as const (InoxSet Token!3700)) true)))))

(assert (=> d!334822 (= lt!401624 e!750785)))

(declare-fun c!195311 () Bool)

(assert (=> d!334822 (= c!195311 ((_ is Nil!11580) lt!401199))))

(assert (=> d!334822 (= (drop!491 lt!401199 1) lt!401624)))

(declare-fun b!1170819 () Bool)

(assert (=> b!1170819 (= e!750787 0)))

(declare-fun b!1170820 () Bool)

(assert (=> b!1170820 (= e!750788 (= (size!9126 lt!401624) e!750786))))

(declare-fun c!195310 () Bool)

(assert (=> b!1170820 (= c!195310 (<= 1 0))))

(declare-fun b!1170821 () Bool)

(assert (=> b!1170821 (= e!750789 lt!401199)))

(assert (= (and d!334822 c!195311) b!1170813))

(assert (= (and d!334822 (not c!195311)) b!1170816))

(assert (= (and b!1170816 c!195312) b!1170821))

(assert (= (and b!1170816 (not c!195312)) b!1170814))

(assert (= (and d!334822 res!528906) b!1170820))

(assert (= (and b!1170820 c!195310) b!1170817))

(assert (= (and b!1170820 (not c!195310)) b!1170815))

(assert (= (and b!1170815 c!195309) b!1170819))

(assert (= (and b!1170815 (not c!195309)) b!1170818))

(assert (= (or b!1170817 b!1170815 b!1170818) bm!82278))

(declare-fun m!1343833 () Bool)

(assert (=> b!1170814 m!1343833))

(assert (=> bm!82278 m!1343747))

(declare-fun m!1343839 () Bool)

(assert (=> d!334822 m!1343839))

(assert (=> d!334822 m!1343751))

(declare-fun m!1343841 () Bool)

(assert (=> b!1170820 m!1343841))

(assert (=> b!1170425 d!334822))

(declare-fun d!334824 () Bool)

(assert (=> d!334824 (rulesProduceIndividualToken!749 Lexer!1712 (rules!9630 thiss!10527) lt!401196)))

(declare-fun lt!401638 () Unit!17762)

(declare-fun choose!7556 (LexerInterface!1714 List!11605 List!11604 Token!3700) Unit!17762)

(assert (=> d!334824 (= lt!401638 (choose!7556 Lexer!1712 (rules!9630 thiss!10527) lt!401199 lt!401196))))

(assert (=> d!334824 (not (isEmpty!7028 (rules!9630 thiss!10527)))))

(assert (=> d!334824 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!295 Lexer!1712 (rules!9630 thiss!10527) lt!401199 lt!401196) lt!401638)))

(declare-fun bs!285651 () Bool)

(assert (= bs!285651 d!334824))

(assert (=> bs!285651 m!1343077))

(declare-fun m!1343911 () Bool)

(assert (=> bs!285651 m!1343911))

(assert (=> bs!285651 m!1343003))

(assert (=> b!1170425 d!334824))

(declare-fun d!334838 () Bool)

(assert (=> d!334838 (rulesProduceIndividualToken!749 Lexer!1712 (rules!9630 thiss!10527) lt!401200)))

(declare-fun lt!401639 () Unit!17762)

(assert (=> d!334838 (= lt!401639 (choose!7556 Lexer!1712 (rules!9630 thiss!10527) lt!401199 lt!401200))))

(assert (=> d!334838 (not (isEmpty!7028 (rules!9630 thiss!10527)))))

(assert (=> d!334838 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!295 Lexer!1712 (rules!9630 thiss!10527) lt!401199 lt!401200) lt!401639)))

(declare-fun bs!285652 () Bool)

(assert (= bs!285652 d!334838))

(assert (=> bs!285652 m!1343085))

(declare-fun m!1343913 () Bool)

(assert (=> bs!285652 m!1343913))

(assert (=> bs!285652 m!1343003))

(assert (=> b!1170425 d!334838))

(declare-fun d!334840 () Bool)

(assert (=> d!334840 (= (head!2108 (drop!491 lt!401199 1)) (apply!2510 lt!401199 1))))

(declare-fun lt!401642 () Unit!17762)

(declare-fun choose!7557 (List!11604 Int) Unit!17762)

(assert (=> d!334840 (= lt!401642 (choose!7557 lt!401199 1))))

(declare-fun e!750831 () Bool)

(assert (=> d!334840 e!750831))

(declare-fun res!528917 () Bool)

(assert (=> d!334840 (=> (not res!528917) (not e!750831))))

(assert (=> d!334840 (= res!528917 (>= 1 0))))

(assert (=> d!334840 (= (lemmaDropApply!377 lt!401199 1) lt!401642)))

(declare-fun b!1170876 () Bool)

(assert (=> b!1170876 (= e!750831 (< 1 (size!9126 lt!401199)))))

(assert (= (and d!334840 res!528917) b!1170876))

(assert (=> d!334840 m!1343097))

(assert (=> d!334840 m!1343097))

(declare-fun m!1343915 () Bool)

(assert (=> d!334840 m!1343915))

(assert (=> d!334840 m!1343061))

(declare-fun m!1343917 () Bool)

(assert (=> d!334840 m!1343917))

(assert (=> b!1170876 m!1343747))

(assert (=> b!1170425 d!334840))

(declare-fun d!334842 () Bool)

(declare-fun prefixMatchZipperSequence!97 (Regex!3289 BalanceConc!7622) Bool)

(declare-fun rulesRegex!70 (LexerInterface!1714 List!11605) Regex!3289)

(declare-fun ++!2992 (BalanceConc!7622 BalanceConc!7622) BalanceConc!7622)

(declare-fun singletonSeq!681 (C!6896) BalanceConc!7622)

(declare-fun apply!2513 (BalanceConc!7622 Int) C!6896)

(assert (=> d!334842 (= (separableTokensPredicate!136 Lexer!1712 lt!401200 lt!401196 (rules!9630 thiss!10527)) (not (prefixMatchZipperSequence!97 (rulesRegex!70 Lexer!1712 (rules!9630 thiss!10527)) (++!2992 (charsOf!1074 lt!401200) (singletonSeq!681 (apply!2513 (charsOf!1074 lt!401196) 0))))))))

(declare-fun bs!285653 () Bool)

(assert (= bs!285653 d!334842))

(declare-fun m!1343919 () Bool)

(assert (=> bs!285653 m!1343919))

(declare-fun m!1343921 () Bool)

(assert (=> bs!285653 m!1343921))

(declare-fun m!1343923 () Bool)

(assert (=> bs!285653 m!1343923))

(declare-fun m!1343925 () Bool)

(assert (=> bs!285653 m!1343925))

(assert (=> bs!285653 m!1343017))

(assert (=> bs!285653 m!1343921))

(assert (=> bs!285653 m!1343919))

(assert (=> bs!285653 m!1343923))

(declare-fun m!1343927 () Bool)

(assert (=> bs!285653 m!1343927))

(assert (=> bs!285653 m!1343017))

(assert (=> bs!285653 m!1343925))

(assert (=> bs!285653 m!1343927))

(declare-fun m!1343929 () Bool)

(assert (=> bs!285653 m!1343929))

(assert (=> b!1170425 d!334842))

(declare-fun b!1170877 () Bool)

(declare-fun e!750832 () List!11604)

(assert (=> b!1170877 (= e!750832 Nil!11580)))

(declare-fun b!1170878 () Bool)

(declare-fun e!750836 () List!11604)

(assert (=> b!1170878 (= e!750836 (drop!491 (t!110702 lt!401199) (- 2 1)))))

(declare-fun bm!82279 () Bool)

(declare-fun call!82284 () Int)

(assert (=> bm!82279 (= call!82284 (size!9126 lt!401199))))

(declare-fun b!1170879 () Bool)

(declare-fun e!750833 () Int)

(declare-fun e!750834 () Int)

(assert (=> b!1170879 (= e!750833 e!750834)))

(declare-fun c!195313 () Bool)

(assert (=> b!1170879 (= c!195313 (>= 2 call!82284))))

(declare-fun b!1170880 () Bool)

(assert (=> b!1170880 (= e!750832 e!750836)))

(declare-fun c!195316 () Bool)

(assert (=> b!1170880 (= c!195316 (<= 2 0))))

(declare-fun b!1170881 () Bool)

(assert (=> b!1170881 (= e!750833 call!82284)))

(declare-fun b!1170882 () Bool)

(assert (=> b!1170882 (= e!750834 (- call!82284 2))))

(declare-fun d!334844 () Bool)

(declare-fun e!750835 () Bool)

(assert (=> d!334844 e!750835))

(declare-fun res!528918 () Bool)

(assert (=> d!334844 (=> (not res!528918) (not e!750835))))

(declare-fun lt!401643 () List!11604)

(assert (=> d!334844 (= res!528918 (= ((_ map implies) (content!1612 lt!401643) (content!1612 lt!401199)) ((as const (InoxSet Token!3700)) true)))))

(assert (=> d!334844 (= lt!401643 e!750832)))

(declare-fun c!195315 () Bool)

(assert (=> d!334844 (= c!195315 ((_ is Nil!11580) lt!401199))))

(assert (=> d!334844 (= (drop!491 lt!401199 2) lt!401643)))

(declare-fun b!1170883 () Bool)

(assert (=> b!1170883 (= e!750834 0)))

(declare-fun b!1170884 () Bool)

(assert (=> b!1170884 (= e!750835 (= (size!9126 lt!401643) e!750833))))

(declare-fun c!195314 () Bool)

(assert (=> b!1170884 (= c!195314 (<= 2 0))))

(declare-fun b!1170885 () Bool)

(assert (=> b!1170885 (= e!750836 lt!401199)))

(assert (= (and d!334844 c!195315) b!1170877))

(assert (= (and d!334844 (not c!195315)) b!1170880))

(assert (= (and b!1170880 c!195316) b!1170885))

(assert (= (and b!1170880 (not c!195316)) b!1170878))

(assert (= (and d!334844 res!528918) b!1170884))

(assert (= (and b!1170884 c!195314) b!1170881))

(assert (= (and b!1170884 (not c!195314)) b!1170879))

(assert (= (and b!1170879 c!195313) b!1170883))

(assert (= (and b!1170879 (not c!195313)) b!1170882))

(assert (= (or b!1170881 b!1170879 b!1170882) bm!82279))

(declare-fun m!1343931 () Bool)

(assert (=> b!1170878 m!1343931))

(assert (=> bm!82279 m!1343747))

(declare-fun m!1343933 () Bool)

(assert (=> d!334844 m!1343933))

(assert (=> d!334844 m!1343751))

(declare-fun m!1343935 () Bool)

(assert (=> b!1170884 m!1343935))

(assert (=> b!1170425 d!334844))

(declare-fun d!334846 () Bool)

(assert (=> d!334846 (= (head!2108 (drop!491 lt!401199 0)) (apply!2510 lt!401199 0))))

(declare-fun lt!401644 () Unit!17762)

(assert (=> d!334846 (= lt!401644 (choose!7557 lt!401199 0))))

(declare-fun e!750837 () Bool)

(assert (=> d!334846 e!750837))

(declare-fun res!528919 () Bool)

(assert (=> d!334846 (=> (not res!528919) (not e!750837))))

(assert (=> d!334846 (= res!528919 (>= 0 0))))

(assert (=> d!334846 (= (lemmaDropApply!377 lt!401199 0) lt!401644)))

(declare-fun b!1170886 () Bool)

(assert (=> b!1170886 (= e!750837 (< 0 (size!9126 lt!401199)))))

(assert (= (and d!334846 res!528919) b!1170886))

(assert (=> d!334846 m!1343067))

(assert (=> d!334846 m!1343067))

(declare-fun m!1343937 () Bool)

(assert (=> d!334846 m!1343937))

(assert (=> d!334846 m!1343095))

(declare-fun m!1343939 () Bool)

(assert (=> d!334846 m!1343939))

(assert (=> b!1170886 m!1343747))

(assert (=> b!1170425 d!334846))

(declare-fun d!334848 () Bool)

(declare-fun lt!401646 () Bool)

(declare-fun e!750839 () Bool)

(assert (=> d!334848 (= lt!401646 e!750839)))

(declare-fun res!528921 () Bool)

(assert (=> d!334848 (=> (not res!528921) (not e!750839))))

(assert (=> d!334848 (= res!528921 (= (list!4268 (_1!6869 (lex!712 Lexer!1712 (rules!9630 thiss!10527) (print!649 Lexer!1712 (singletonSeq!679 lt!401200))))) (list!4268 (singletonSeq!679 lt!401200))))))

(declare-fun e!750838 () Bool)

(assert (=> d!334848 (= lt!401646 e!750838)))

(declare-fun res!528922 () Bool)

(assert (=> d!334848 (=> (not res!528922) (not e!750838))))

(declare-fun lt!401645 () tuple2!12044)

(assert (=> d!334848 (= res!528922 (= (size!9123 (_1!6869 lt!401645)) 1))))

(assert (=> d!334848 (= lt!401645 (lex!712 Lexer!1712 (rules!9630 thiss!10527) (print!649 Lexer!1712 (singletonSeq!679 lt!401200))))))

(assert (=> d!334848 (not (isEmpty!7028 (rules!9630 thiss!10527)))))

(assert (=> d!334848 (= (rulesProduceIndividualToken!749 Lexer!1712 (rules!9630 thiss!10527) lt!401200) lt!401646)))

(declare-fun b!1170887 () Bool)

(declare-fun res!528920 () Bool)

(assert (=> b!1170887 (=> (not res!528920) (not e!750838))))

(assert (=> b!1170887 (= res!528920 (= (apply!2509 (_1!6869 lt!401645) 0) lt!401200))))

(declare-fun b!1170888 () Bool)

(assert (=> b!1170888 (= e!750838 (isEmpty!7030 (_2!6869 lt!401645)))))

(declare-fun b!1170889 () Bool)

(assert (=> b!1170889 (= e!750839 (isEmpty!7030 (_2!6869 (lex!712 Lexer!1712 (rules!9630 thiss!10527) (print!649 Lexer!1712 (singletonSeq!679 lt!401200))))))))

(assert (= (and d!334848 res!528922) b!1170887))

(assert (= (and b!1170887 res!528920) b!1170888))

(assert (= (and d!334848 res!528921) b!1170889))

(declare-fun m!1343941 () Bool)

(assert (=> d!334848 m!1343941))

(declare-fun m!1343943 () Bool)

(assert (=> d!334848 m!1343943))

(declare-fun m!1343945 () Bool)

(assert (=> d!334848 m!1343945))

(assert (=> d!334848 m!1343941))

(declare-fun m!1343947 () Bool)

(assert (=> d!334848 m!1343947))

(assert (=> d!334848 m!1343947))

(declare-fun m!1343949 () Bool)

(assert (=> d!334848 m!1343949))

(assert (=> d!334848 m!1343941))

(assert (=> d!334848 m!1343003))

(declare-fun m!1343951 () Bool)

(assert (=> d!334848 m!1343951))

(declare-fun m!1343953 () Bool)

(assert (=> b!1170887 m!1343953))

(declare-fun m!1343955 () Bool)

(assert (=> b!1170888 m!1343955))

(assert (=> b!1170889 m!1343941))

(assert (=> b!1170889 m!1343941))

(assert (=> b!1170889 m!1343947))

(assert (=> b!1170889 m!1343947))

(assert (=> b!1170889 m!1343949))

(declare-fun m!1343957 () Bool)

(assert (=> b!1170889 m!1343957))

(assert (=> b!1170425 d!334848))

(declare-fun d!334850 () Bool)

(assert (=> d!334850 (= (tail!1692 lt!401187) (t!110702 lt!401187))))

(assert (=> b!1170425 d!334850))

(declare-fun d!334852 () Bool)

(assert (=> d!334852 (= (head!2108 lt!401193) (h!16981 lt!401193))))

(assert (=> b!1170425 d!334852))

(declare-fun d!334854 () Bool)

(declare-fun lt!401649 () Token!3700)

(assert (=> d!334854 (= lt!401649 (apply!2510 (list!4268 (tokens!1648 thiss!10527)) 0))))

(declare-fun apply!2514 (Conc!3801 Int) Token!3700)

(assert (=> d!334854 (= lt!401649 (apply!2514 (c!195265 (tokens!1648 thiss!10527)) 0))))

(declare-fun e!750842 () Bool)

(assert (=> d!334854 e!750842))

(declare-fun res!528925 () Bool)

(assert (=> d!334854 (=> (not res!528925) (not e!750842))))

(assert (=> d!334854 (= res!528925 (<= 0 0))))

(assert (=> d!334854 (= (apply!2509 (tokens!1648 thiss!10527) 0) lt!401649)))

(declare-fun b!1170892 () Bool)

(assert (=> b!1170892 (= e!750842 (< 0 (size!9123 (tokens!1648 thiss!10527))))))

(assert (= (and d!334854 res!528925) b!1170892))

(assert (=> d!334854 m!1343053))

(assert (=> d!334854 m!1343053))

(declare-fun m!1343959 () Bool)

(assert (=> d!334854 m!1343959))

(declare-fun m!1343961 () Bool)

(assert (=> d!334854 m!1343961))

(assert (=> b!1170892 m!1343011))

(assert (=> b!1170425 d!334854))

(declare-fun d!334856 () Bool)

(declare-fun lt!401652 () Token!3700)

(declare-fun contains!2000 (List!11604 Token!3700) Bool)

(assert (=> d!334856 (contains!2000 lt!401199 lt!401652)))

(declare-fun e!750848 () Token!3700)

(assert (=> d!334856 (= lt!401652 e!750848)))

(declare-fun c!195319 () Bool)

(assert (=> d!334856 (= c!195319 (= 1 0))))

(declare-fun e!750847 () Bool)

(assert (=> d!334856 e!750847))

(declare-fun res!528928 () Bool)

(assert (=> d!334856 (=> (not res!528928) (not e!750847))))

(assert (=> d!334856 (= res!528928 (<= 0 1))))

(assert (=> d!334856 (= (apply!2510 lt!401199 1) lt!401652)))

(declare-fun b!1170899 () Bool)

(assert (=> b!1170899 (= e!750847 (< 1 (size!9126 lt!401199)))))

(declare-fun b!1170900 () Bool)

(assert (=> b!1170900 (= e!750848 (head!2108 lt!401199))))

(declare-fun b!1170901 () Bool)

(assert (=> b!1170901 (= e!750848 (apply!2510 (tail!1692 lt!401199) (- 1 1)))))

(assert (= (and d!334856 res!528928) b!1170899))

(assert (= (and d!334856 c!195319) b!1170900))

(assert (= (and d!334856 (not c!195319)) b!1170901))

(declare-fun m!1343963 () Bool)

(assert (=> d!334856 m!1343963))

(assert (=> b!1170899 m!1343747))

(declare-fun m!1343965 () Bool)

(assert (=> b!1170900 m!1343965))

(declare-fun m!1343967 () Bool)

(assert (=> b!1170901 m!1343967))

(assert (=> b!1170901 m!1343967))

(declare-fun m!1343969 () Bool)

(assert (=> b!1170901 m!1343969))

(assert (=> b!1170425 d!334856))

(declare-fun d!334858 () Bool)

(assert (=> d!334858 (= (head!2108 lt!401187) (h!16981 lt!401187))))

(assert (=> b!1170425 d!334858))

(declare-fun d!334860 () Bool)

(assert (=> d!334860 (= (tail!1692 (drop!491 lt!401199 1)) (drop!491 lt!401199 (+ 1 1)))))

(declare-fun lt!401653 () Unit!17762)

(assert (=> d!334860 (= lt!401653 (choose!7555 lt!401199 1))))

(declare-fun e!750849 () Bool)

(assert (=> d!334860 e!750849))

(declare-fun res!528929 () Bool)

(assert (=> d!334860 (=> (not res!528929) (not e!750849))))

(assert (=> d!334860 (= res!528929 (>= 1 0))))

(assert (=> d!334860 (= (lemmaDropTail!365 lt!401199 1) lt!401653)))

(declare-fun b!1170902 () Bool)

(assert (=> b!1170902 (= e!750849 (< 1 (size!9126 lt!401199)))))

(assert (= (and d!334860 res!528929) b!1170902))

(assert (=> d!334860 m!1343097))

(assert (=> d!334860 m!1343097))

(declare-fun m!1343971 () Bool)

(assert (=> d!334860 m!1343971))

(declare-fun m!1343973 () Bool)

(assert (=> d!334860 m!1343973))

(declare-fun m!1343975 () Bool)

(assert (=> d!334860 m!1343975))

(assert (=> b!1170902 m!1343747))

(assert (=> b!1170425 d!334860))

(declare-fun d!334862 () Bool)

(declare-fun lt!401655 () Bool)

(declare-fun e!750851 () Bool)

(assert (=> d!334862 (= lt!401655 e!750851)))

(declare-fun res!528931 () Bool)

(assert (=> d!334862 (=> (not res!528931) (not e!750851))))

(assert (=> d!334862 (= res!528931 (= (list!4268 (_1!6869 (lex!712 Lexer!1712 (rules!9630 thiss!10527) (print!649 Lexer!1712 (singletonSeq!679 lt!401196))))) (list!4268 (singletonSeq!679 lt!401196))))))

(declare-fun e!750850 () Bool)

(assert (=> d!334862 (= lt!401655 e!750850)))

(declare-fun res!528932 () Bool)

(assert (=> d!334862 (=> (not res!528932) (not e!750850))))

(declare-fun lt!401654 () tuple2!12044)

(assert (=> d!334862 (= res!528932 (= (size!9123 (_1!6869 lt!401654)) 1))))

(assert (=> d!334862 (= lt!401654 (lex!712 Lexer!1712 (rules!9630 thiss!10527) (print!649 Lexer!1712 (singletonSeq!679 lt!401196))))))

(assert (=> d!334862 (not (isEmpty!7028 (rules!9630 thiss!10527)))))

(assert (=> d!334862 (= (rulesProduceIndividualToken!749 Lexer!1712 (rules!9630 thiss!10527) lt!401196) lt!401655)))

(declare-fun b!1170903 () Bool)

(declare-fun res!528930 () Bool)

(assert (=> b!1170903 (=> (not res!528930) (not e!750850))))

(assert (=> b!1170903 (= res!528930 (= (apply!2509 (_1!6869 lt!401654) 0) lt!401196))))

(declare-fun b!1170904 () Bool)

(assert (=> b!1170904 (= e!750850 (isEmpty!7030 (_2!6869 lt!401654)))))

(declare-fun b!1170905 () Bool)

(assert (=> b!1170905 (= e!750851 (isEmpty!7030 (_2!6869 (lex!712 Lexer!1712 (rules!9630 thiss!10527) (print!649 Lexer!1712 (singletonSeq!679 lt!401196))))))))

(assert (= (and d!334862 res!528932) b!1170903))

(assert (= (and b!1170903 res!528930) b!1170904))

(assert (= (and d!334862 res!528931) b!1170905))

(declare-fun m!1343977 () Bool)

(assert (=> d!334862 m!1343977))

(declare-fun m!1343979 () Bool)

(assert (=> d!334862 m!1343979))

(declare-fun m!1343981 () Bool)

(assert (=> d!334862 m!1343981))

(assert (=> d!334862 m!1343977))

(declare-fun m!1343983 () Bool)

(assert (=> d!334862 m!1343983))

(assert (=> d!334862 m!1343983))

(declare-fun m!1343985 () Bool)

(assert (=> d!334862 m!1343985))

(assert (=> d!334862 m!1343977))

(assert (=> d!334862 m!1343003))

(declare-fun m!1343987 () Bool)

(assert (=> d!334862 m!1343987))

(declare-fun m!1343989 () Bool)

(assert (=> b!1170903 m!1343989))

(declare-fun m!1343991 () Bool)

(assert (=> b!1170904 m!1343991))

(assert (=> b!1170905 m!1343977))

(assert (=> b!1170905 m!1343977))

(assert (=> b!1170905 m!1343983))

(assert (=> b!1170905 m!1343983))

(assert (=> b!1170905 m!1343985))

(declare-fun m!1343993 () Bool)

(assert (=> b!1170905 m!1343993))

(assert (=> b!1170425 d!334862))

(declare-fun d!334864 () Bool)

(declare-fun lt!401656 () Token!3700)

(assert (=> d!334864 (contains!2000 lt!401199 lt!401656)))

(declare-fun e!750853 () Token!3700)

(assert (=> d!334864 (= lt!401656 e!750853)))

(declare-fun c!195320 () Bool)

(assert (=> d!334864 (= c!195320 (= 0 0))))

(declare-fun e!750852 () Bool)

(assert (=> d!334864 e!750852))

(declare-fun res!528933 () Bool)

(assert (=> d!334864 (=> (not res!528933) (not e!750852))))

(assert (=> d!334864 (= res!528933 (<= 0 0))))

(assert (=> d!334864 (= (apply!2510 lt!401199 0) lt!401656)))

(declare-fun b!1170906 () Bool)

(assert (=> b!1170906 (= e!750852 (< 0 (size!9126 lt!401199)))))

(declare-fun b!1170907 () Bool)

(assert (=> b!1170907 (= e!750853 (head!2108 lt!401199))))

(declare-fun b!1170908 () Bool)

(assert (=> b!1170908 (= e!750853 (apply!2510 (tail!1692 lt!401199) (- 0 1)))))

(assert (= (and d!334864 res!528933) b!1170906))

(assert (= (and d!334864 c!195320) b!1170907))

(assert (= (and d!334864 (not c!195320)) b!1170908))

(declare-fun m!1343995 () Bool)

(assert (=> d!334864 m!1343995))

(assert (=> b!1170906 m!1343747))

(assert (=> b!1170907 m!1343965))

(assert (=> b!1170908 m!1343967))

(assert (=> b!1170908 m!1343967))

(declare-fun m!1343997 () Bool)

(assert (=> b!1170908 m!1343997))

(assert (=> b!1170425 d!334864))

(declare-fun d!334866 () Bool)

(declare-fun lt!401657 () Token!3700)

(assert (=> d!334866 (= lt!401657 (apply!2510 (list!4268 (tokens!1648 thiss!10527)) 1))))

(assert (=> d!334866 (= lt!401657 (apply!2514 (c!195265 (tokens!1648 thiss!10527)) 1))))

(declare-fun e!750854 () Bool)

(assert (=> d!334866 e!750854))

(declare-fun res!528934 () Bool)

(assert (=> d!334866 (=> (not res!528934) (not e!750854))))

(assert (=> d!334866 (= res!528934 (<= 0 1))))

(assert (=> d!334866 (= (apply!2509 (tokens!1648 thiss!10527) 1) lt!401657)))

(declare-fun b!1170909 () Bool)

(assert (=> b!1170909 (= e!750854 (< 1 (size!9123 (tokens!1648 thiss!10527))))))

(assert (= (and d!334866 res!528934) b!1170909))

(assert (=> d!334866 m!1343053))

(assert (=> d!334866 m!1343053))

(declare-fun m!1343999 () Bool)

(assert (=> d!334866 m!1343999))

(declare-fun m!1344001 () Bool)

(assert (=> d!334866 m!1344001))

(assert (=> b!1170909 m!1343011))

(assert (=> b!1170425 d!334866))

(declare-fun d!334868 () Bool)

(declare-fun lt!401659 () Bool)

(declare-fun e!750856 () Bool)

(assert (=> d!334868 (= lt!401659 e!750856)))

(declare-fun res!528936 () Bool)

(assert (=> d!334868 (=> (not res!528936) (not e!750856))))

(assert (=> d!334868 (= res!528936 (= (list!4268 (_1!6869 (lex!712 Lexer!1712 (rules!9630 thiss!10527) (print!649 Lexer!1712 (singletonSeq!679 (h!16981 lt!401185)))))) (list!4268 (singletonSeq!679 (h!16981 lt!401185)))))))

(declare-fun e!750855 () Bool)

(assert (=> d!334868 (= lt!401659 e!750855)))

(declare-fun res!528937 () Bool)

(assert (=> d!334868 (=> (not res!528937) (not e!750855))))

(declare-fun lt!401658 () tuple2!12044)

(assert (=> d!334868 (= res!528937 (= (size!9123 (_1!6869 lt!401658)) 1))))

(assert (=> d!334868 (= lt!401658 (lex!712 Lexer!1712 (rules!9630 thiss!10527) (print!649 Lexer!1712 (singletonSeq!679 (h!16981 lt!401185)))))))

(assert (=> d!334868 (not (isEmpty!7028 (rules!9630 thiss!10527)))))

(assert (=> d!334868 (= (rulesProduceIndividualToken!749 Lexer!1712 (rules!9630 thiss!10527) (h!16981 lt!401185)) lt!401659)))

(declare-fun b!1170910 () Bool)

(declare-fun res!528935 () Bool)

(assert (=> b!1170910 (=> (not res!528935) (not e!750855))))

(assert (=> b!1170910 (= res!528935 (= (apply!2509 (_1!6869 lt!401658) 0) (h!16981 lt!401185)))))

(declare-fun b!1170911 () Bool)

(assert (=> b!1170911 (= e!750855 (isEmpty!7030 (_2!6869 lt!401658)))))

(declare-fun b!1170912 () Bool)

(assert (=> b!1170912 (= e!750856 (isEmpty!7030 (_2!6869 (lex!712 Lexer!1712 (rules!9630 thiss!10527) (print!649 Lexer!1712 (singletonSeq!679 (h!16981 lt!401185)))))))))

(assert (= (and d!334868 res!528937) b!1170910))

(assert (= (and b!1170910 res!528935) b!1170911))

(assert (= (and d!334868 res!528936) b!1170912))

(declare-fun m!1344003 () Bool)

(assert (=> d!334868 m!1344003))

(declare-fun m!1344005 () Bool)

(assert (=> d!334868 m!1344005))

(declare-fun m!1344007 () Bool)

(assert (=> d!334868 m!1344007))

(assert (=> d!334868 m!1344003))

(declare-fun m!1344009 () Bool)

(assert (=> d!334868 m!1344009))

(assert (=> d!334868 m!1344009))

(declare-fun m!1344011 () Bool)

(assert (=> d!334868 m!1344011))

(assert (=> d!334868 m!1344003))

(assert (=> d!334868 m!1343003))

(declare-fun m!1344013 () Bool)

(assert (=> d!334868 m!1344013))

(declare-fun m!1344015 () Bool)

(assert (=> b!1170910 m!1344015))

(declare-fun m!1344017 () Bool)

(assert (=> b!1170911 m!1344017))

(assert (=> b!1170912 m!1344003))

(assert (=> b!1170912 m!1344003))

(assert (=> b!1170912 m!1344009))

(assert (=> b!1170912 m!1344009))

(assert (=> b!1170912 m!1344011))

(declare-fun m!1344019 () Bool)

(assert (=> b!1170912 m!1344019))

(assert (=> b!1170427 d!334868))

(declare-fun b!1170923 () Bool)

(declare-fun e!750865 () Bool)

(assert (=> b!1170923 (= e!750865 (subseq!269 (t!110702 (slice!343 lt!401199 from!787 to!267)) (t!110702 lt!401199)))))

(declare-fun b!1170922 () Bool)

(declare-fun e!750868 () Bool)

(declare-fun e!750867 () Bool)

(assert (=> b!1170922 (= e!750868 e!750867)))

(declare-fun res!528949 () Bool)

(assert (=> b!1170922 (=> res!528949 e!750867)))

(assert (=> b!1170922 (= res!528949 e!750865)))

(declare-fun res!528946 () Bool)

(assert (=> b!1170922 (=> (not res!528946) (not e!750865))))

(assert (=> b!1170922 (= res!528946 (= (h!16981 (slice!343 lt!401199 from!787 to!267)) (h!16981 lt!401199)))))

(declare-fun b!1170921 () Bool)

(declare-fun e!750866 () Bool)

(assert (=> b!1170921 (= e!750866 e!750868)))

(declare-fun res!528948 () Bool)

(assert (=> b!1170921 (=> (not res!528948) (not e!750868))))

(assert (=> b!1170921 (= res!528948 ((_ is Cons!11580) lt!401199))))

(declare-fun d!334870 () Bool)

(declare-fun res!528947 () Bool)

(assert (=> d!334870 (=> res!528947 e!750866)))

(assert (=> d!334870 (= res!528947 ((_ is Nil!11580) (slice!343 lt!401199 from!787 to!267)))))

(assert (=> d!334870 (= (subseq!269 (slice!343 lt!401199 from!787 to!267) lt!401199) e!750866)))

(declare-fun b!1170924 () Bool)

(assert (=> b!1170924 (= e!750867 (subseq!269 (slice!343 lt!401199 from!787 to!267) (t!110702 lt!401199)))))

(assert (= (and d!334870 (not res!528947)) b!1170921))

(assert (= (and b!1170921 res!528948) b!1170922))

(assert (= (and b!1170922 res!528946) b!1170923))

(assert (= (and b!1170922 (not res!528949)) b!1170924))

(declare-fun m!1344021 () Bool)

(assert (=> b!1170923 m!1344021))

(assert (=> b!1170924 m!1343025))

(declare-fun m!1344023 () Bool)

(assert (=> b!1170924 m!1344023))

(assert (=> b!1170437 d!334870))

(declare-fun d!334872 () Bool)

(assert (=> d!334872 (subseq!269 (slice!343 lt!401199 from!787 to!267) lt!401199)))

(declare-fun lt!401662 () Unit!17762)

(declare-fun choose!7558 (List!11604 Int Int) Unit!17762)

(assert (=> d!334872 (= lt!401662 (choose!7558 lt!401199 from!787 to!267))))

(declare-fun e!750871 () Bool)

(assert (=> d!334872 e!750871))

(declare-fun res!528952 () Bool)

(assert (=> d!334872 (=> (not res!528952) (not e!750871))))

(assert (=> d!334872 (= res!528952 (and (>= from!787 0) (>= to!267 from!787)))))

(assert (=> d!334872 (= (lemmaSliceSubseq!110 lt!401199 from!787 to!267) lt!401662)))

(declare-fun b!1170927 () Bool)

(assert (=> b!1170927 (= e!750871 (<= to!267 (size!9126 lt!401199)))))

(assert (= (and d!334872 res!528952) b!1170927))

(assert (=> d!334872 m!1343025))

(assert (=> d!334872 m!1343025))

(assert (=> d!334872 m!1343029))

(declare-fun m!1344025 () Bool)

(assert (=> d!334872 m!1344025))

(assert (=> b!1170927 m!1343747))

(assert (=> b!1170437 d!334872))

(declare-fun d!334874 () Bool)

(assert (=> d!334874 (forall!3060 lt!401185 lambda!48153)))

(declare-fun lt!401665 () Unit!17762)

(declare-fun choose!7559 (List!11604 List!11604 Int) Unit!17762)

(assert (=> d!334874 (= lt!401665 (choose!7559 lt!401185 lt!401199 lambda!48153))))

(assert (=> d!334874 (forall!3060 lt!401199 lambda!48153)))

(assert (=> d!334874 (= (lemmaForallSubseq!157 lt!401185 lt!401199 lambda!48153) lt!401665)))

(declare-fun bs!285654 () Bool)

(assert (= bs!285654 d!334874))

(assert (=> bs!285654 m!1343027))

(declare-fun m!1344027 () Bool)

(assert (=> bs!285654 m!1344027))

(declare-fun m!1344029 () Bool)

(assert (=> bs!285654 m!1344029))

(assert (=> b!1170437 d!334874))

(declare-fun d!334876 () Bool)

(declare-fun e!750877 () Bool)

(assert (=> d!334876 e!750877))

(declare-fun res!528960 () Bool)

(assert (=> d!334876 (=> (not res!528960) (not e!750877))))

(declare-fun slice!345 (Conc!3801 Int Int) Conc!3801)

(assert (=> d!334876 (= res!528960 (isBalanced!1071 (slice!345 (c!195265 (tokens!1648 thiss!10527)) from!787 to!267)))))

(declare-fun lt!401668 () BalanceConc!7624)

(assert (=> d!334876 (= lt!401668 (BalanceConc!7625 (slice!345 (c!195265 (tokens!1648 thiss!10527)) from!787 to!267)))))

(declare-fun e!750876 () Bool)

(assert (=> d!334876 e!750876))

(declare-fun res!528959 () Bool)

(assert (=> d!334876 (=> (not res!528959) (not e!750876))))

(assert (=> d!334876 (= res!528959 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> d!334876 (= (slice!342 (tokens!1648 thiss!10527) from!787 to!267) lt!401668)))

(declare-fun b!1170934 () Bool)

(declare-fun res!528961 () Bool)

(assert (=> b!1170934 (=> (not res!528961) (not e!750876))))

(assert (=> b!1170934 (= res!528961 (<= to!267 (size!9123 (tokens!1648 thiss!10527))))))

(declare-fun b!1170935 () Bool)

(assert (=> b!1170935 (= e!750876 (isBalanced!1071 (c!195265 (tokens!1648 thiss!10527))))))

(declare-fun b!1170936 () Bool)

(assert (=> b!1170936 (= e!750877 (= (list!4268 lt!401668) (slice!343 (list!4268 (tokens!1648 thiss!10527)) from!787 to!267)))))

(assert (= (and d!334876 res!528959) b!1170934))

(assert (= (and b!1170934 res!528961) b!1170935))

(assert (= (and d!334876 res!528960) b!1170936))

(declare-fun m!1344031 () Bool)

(assert (=> d!334876 m!1344031))

(assert (=> d!334876 m!1344031))

(declare-fun m!1344033 () Bool)

(assert (=> d!334876 m!1344033))

(assert (=> b!1170934 m!1343011))

(assert (=> b!1170935 m!1343251))

(declare-fun m!1344035 () Bool)

(assert (=> b!1170936 m!1344035))

(assert (=> b!1170936 m!1343053))

(assert (=> b!1170936 m!1343053))

(declare-fun m!1344037 () Bool)

(assert (=> b!1170936 m!1344037))

(assert (=> b!1170437 d!334876))

(declare-fun d!334878 () Bool)

(declare-fun take!79 (List!11604 Int) List!11604)

(assert (=> d!334878 (= (slice!343 lt!401199 from!787 to!267) (take!79 (drop!491 lt!401199 from!787) (- to!267 from!787)))))

(declare-fun bs!285655 () Bool)

(assert (= bs!285655 d!334878))

(declare-fun m!1344039 () Bool)

(assert (=> bs!285655 m!1344039))

(assert (=> bs!285655 m!1344039))

(declare-fun m!1344041 () Bool)

(assert (=> bs!285655 m!1344041))

(assert (=> b!1170437 d!334878))

(declare-fun d!334880 () Bool)

(declare-fun res!528966 () Bool)

(declare-fun e!750882 () Bool)

(assert (=> d!334880 (=> res!528966 e!750882)))

(assert (=> d!334880 (= res!528966 ((_ is Nil!11580) lt!401185))))

(assert (=> d!334880 (= (forall!3060 lt!401185 lambda!48153) e!750882)))

(declare-fun b!1170941 () Bool)

(declare-fun e!750883 () Bool)

(assert (=> b!1170941 (= e!750882 e!750883)))

(declare-fun res!528967 () Bool)

(assert (=> b!1170941 (=> (not res!528967) (not e!750883))))

(declare-fun dynLambda!5116 (Int Token!3700) Bool)

(assert (=> b!1170941 (= res!528967 (dynLambda!5116 lambda!48153 (h!16981 lt!401185)))))

(declare-fun b!1170942 () Bool)

(assert (=> b!1170942 (= e!750883 (forall!3060 (t!110702 lt!401185) lambda!48153))))

(assert (= (and d!334880 (not res!528966)) b!1170941))

(assert (= (and b!1170941 res!528967) b!1170942))

(declare-fun b_lambda!34979 () Bool)

(assert (=> (not b_lambda!34979) (not b!1170941)))

(declare-fun m!1344043 () Bool)

(assert (=> b!1170941 m!1344043))

(declare-fun m!1344045 () Bool)

(assert (=> b!1170942 m!1344045))

(assert (=> b!1170437 d!334880))

(declare-fun d!334882 () Bool)

(assert (=> d!334882 (= (list!4268 lt!401184) (list!4271 (c!195265 lt!401184)))))

(declare-fun bs!285656 () Bool)

(assert (= bs!285656 d!334882))

(declare-fun m!1344047 () Bool)

(assert (=> bs!285656 m!1344047))

(assert (=> b!1170437 d!334882))

(declare-fun b!1170951 () Bool)

(declare-fun e!750888 () Bool)

(assert (=> b!1170951 (= e!750888 true)))

(declare-fun b!1170953 () Bool)

(declare-fun e!750889 () Bool)

(assert (=> b!1170953 (= e!750889 true)))

(declare-fun b!1170952 () Bool)

(assert (=> b!1170952 (= e!750888 e!750889)))

(assert (=> b!1170445 e!750888))

(assert (= (and b!1170445 ((_ is Node!3801) (c!195265 (tokens!1648 thiss!10527)))) b!1170951))

(assert (= b!1170952 b!1170953))

(assert (= (and b!1170445 ((_ is Leaf!5821) (c!195265 (tokens!1648 thiss!10527)))) b!1170952))

(declare-fun b!1170964 () Bool)

(declare-fun b_free!27849 () Bool)

(declare-fun b_next!28553 () Bool)

(assert (=> b!1170964 (= b_free!27849 (not b_next!28553))))

(declare-fun tp!334664 () Bool)

(declare-fun b_and!80749 () Bool)

(assert (=> b!1170964 (= tp!334664 b_and!80749)))

(declare-fun b_free!27851 () Bool)

(declare-fun b_next!28555 () Bool)

(assert (=> b!1170964 (= b_free!27851 (not b_next!28555))))

(declare-fun t!110724 () Bool)

(declare-fun tb!65939 () Bool)

(assert (=> (and b!1170964 (= (toChars!2979 (transformation!2019 (h!16982 (rules!9630 thiss!10527)))) (toChars!2979 (transformation!2019 (rule!3440 lt!401196)))) t!110724) tb!65939))

(declare-fun b!1170969 () Bool)

(declare-fun e!750904 () Bool)

(declare-fun tp!334667 () Bool)

(declare-fun inv!15276 (Conc!3800) Bool)

(assert (=> b!1170969 (= e!750904 (and (inv!15276 (c!195264 (dynLambda!5114 (toChars!2979 (transformation!2019 (rule!3440 lt!401196))) (value!65538 lt!401196)))) tp!334667))))

(declare-fun result!78960 () Bool)

(declare-fun inv!15277 (BalanceConc!7622) Bool)

(assert (=> tb!65939 (= result!78960 (and (inv!15277 (dynLambda!5114 (toChars!2979 (transformation!2019 (rule!3440 lt!401196))) (value!65538 lt!401196))) e!750904))))

(assert (= tb!65939 b!1170969))

(declare-fun m!1344049 () Bool)

(assert (=> b!1170969 m!1344049))

(declare-fun m!1344051 () Bool)

(assert (=> tb!65939 m!1344051))

(assert (=> d!334802 t!110724))

(declare-fun b_and!80751 () Bool)

(declare-fun tp!334661 () Bool)

(assert (=> b!1170964 (= tp!334661 (and (=> t!110724 result!78960) b_and!80751))))

(declare-fun e!750901 () Bool)

(assert (=> b!1170964 (= e!750901 (and tp!334664 tp!334661))))

(declare-fun tp!334663 () Bool)

(declare-fun b!1170963 () Bool)

(declare-fun e!750898 () Bool)

(declare-fun inv!15261 (String!14013) Bool)

(declare-fun inv!15278 (TokenValueInjection!3870) Bool)

(assert (=> b!1170963 (= e!750898 (and tp!334663 (inv!15261 (tag!2281 (h!16982 (rules!9630 thiss!10527)))) (inv!15278 (transformation!2019 (h!16982 (rules!9630 thiss!10527)))) e!750901))))

(declare-fun b!1170962 () Bool)

(declare-fun e!750900 () Bool)

(declare-fun tp!334662 () Bool)

(assert (=> b!1170962 (= e!750900 (and e!750898 tp!334662))))

(assert (=> b!1170433 (= tp!334627 e!750900)))

(assert (= b!1170963 b!1170964))

(assert (= b!1170962 b!1170963))

(assert (= (and b!1170433 ((_ is Cons!11581) (rules!9630 thiss!10527))) b!1170962))

(declare-fun m!1344053 () Bool)

(assert (=> b!1170963 m!1344053))

(declare-fun m!1344055 () Bool)

(assert (=> b!1170963 m!1344055))

(declare-fun e!750910 () Bool)

(declare-fun tp!334676 () Bool)

(declare-fun tp!334674 () Bool)

(declare-fun b!1170978 () Bool)

(assert (=> b!1170978 (= e!750910 (and (inv!15265 (left!10128 (c!195265 (tokens!1648 thiss!10527)))) tp!334676 (inv!15265 (right!10458 (c!195265 (tokens!1648 thiss!10527)))) tp!334674))))

(declare-fun b!1170980 () Bool)

(declare-fun e!750909 () Bool)

(declare-fun tp!334675 () Bool)

(assert (=> b!1170980 (= e!750909 tp!334675)))

(declare-fun b!1170979 () Bool)

(declare-fun inv!15279 (IArray!7607) Bool)

(assert (=> b!1170979 (= e!750910 (and (inv!15279 (xs!6506 (c!195265 (tokens!1648 thiss!10527)))) e!750909))))

(assert (=> b!1170426 (= tp!334628 (and (inv!15265 (c!195265 (tokens!1648 thiss!10527))) e!750910))))

(assert (= (and b!1170426 ((_ is Node!3801) (c!195265 (tokens!1648 thiss!10527)))) b!1170978))

(assert (= b!1170979 b!1170980))

(assert (= (and b!1170426 ((_ is Leaf!5821) (c!195265 (tokens!1648 thiss!10527)))) b!1170979))

(declare-fun m!1344057 () Bool)

(assert (=> b!1170978 m!1344057))

(declare-fun m!1344059 () Bool)

(assert (=> b!1170978 m!1344059))

(declare-fun m!1344061 () Bool)

(assert (=> b!1170979 m!1344061))

(assert (=> b!1170426 m!1343041))

(declare-fun b!1170983 () Bool)

(declare-fun e!750913 () Bool)

(assert (=> b!1170983 (= e!750913 true)))

(declare-fun b!1170982 () Bool)

(declare-fun e!750912 () Bool)

(assert (=> b!1170982 (= e!750912 e!750913)))

(declare-fun b!1170981 () Bool)

(declare-fun e!750911 () Bool)

(assert (=> b!1170981 (= e!750911 e!750912)))

(assert (=> b!1170444 e!750911))

(assert (= b!1170982 b!1170983))

(assert (= b!1170981 b!1170982))

(assert (= (and b!1170444 ((_ is Cons!11581) (rules!9630 thiss!10527))) b!1170981))

(assert (=> b!1170983 (< (dynLambda!5111 order!7113 (toValue!3120 (transformation!2019 (h!16982 (rules!9630 thiss!10527))))) (dynLambda!5112 order!7115 lambda!48153))))

(assert (=> b!1170983 (< (dynLambda!5113 order!7117 (toChars!2979 (transformation!2019 (h!16982 (rules!9630 thiss!10527))))) (dynLambda!5112 order!7115 lambda!48153))))

(declare-fun b_lambda!34981 () Bool)

(assert (= b_lambda!34979 (or b!1170436 b_lambda!34981)))

(declare-fun bs!285657 () Bool)

(declare-fun d!334884 () Bool)

(assert (= bs!285657 (and d!334884 b!1170436)))

(assert (=> bs!285657 (= (dynLambda!5116 lambda!48153 (h!16981 lt!401185)) (rulesProduceIndividualToken!749 Lexer!1712 (rules!9630 thiss!10527) (h!16981 lt!401185)))))

(assert (=> bs!285657 m!1342997))

(assert (=> b!1170941 d!334884))

(check-sat (not b!1170951) (not b!1170752) (not d!334814) (not b!1170884) (not d!334746) (not d!334816) (not d!334798) (not b!1170763) (not b!1170580) (not b!1170756) (not b!1170911) (not d!334842) (not b!1170547) (not d!334810) (not b!1170576) (not b!1170751) (not b!1170579) (not d!334864) (not d!334686) (not b!1170936) (not d!334862) (not b!1170963) (not d!334770) (not tb!65939) (not bm!82278) (not d!334782) (not d!334748) (not d!334872) (not d!334728) (not b!1170909) (not b!1170887) (not b!1170766) (not b!1170906) (not d!334800) (not b!1170541) (not b!1170542) (not d!334824) (not bm!82277) (not b!1170899) (not b!1170901) (not d!334752) (not b!1170794) (not d!334734) (not b!1170889) (not b!1170722) (not b!1170767) (not b!1170770) (not b_lambda!34973) (not d!334866) (not d!334868) (not bs!285657) (not b_lambda!34981) (not b!1170577) (not d!334854) (not b!1170765) (not b!1170721) (not b!1170687) (not b!1170689) (not b!1170800) (not d!334812) (not b!1170750) (not b!1170904) (not b!1170649) (not b!1170583) (not b!1170912) (not d!334846) b_and!80749 (not d!334848) (not b!1170772) (not b!1170910) (not b!1170905) (not b!1170979) (not d!334856) (not b!1170942) (not b!1170749) (not b!1170886) (not b_next!28553) (not bm!82279) (not d!334874) (not d!334840) (not d!334806) (not d!334716) (not b!1170812) (not b!1170651) (not b!1170902) (not b!1170543) (not b!1170578) (not b!1170426) (not b!1170908) (not d!334732) (not b!1170647) (not d!334876) (not b!1170888) (not b!1170596) (not d!334808) (not b!1170820) (not b!1170892) (not b!1170900) (not b!1170980) (not d!334844) b_and!80751 (not b!1170927) (not b!1170567) (not b!1170582) (not d!334878) (not d!334882) (not b!1170546) (not b!1170935) (not d!334860) (not b!1170878) (not b!1170755) (not b!1170650) (not b!1170723) (not b!1170953) (not b!1170544) (not b!1170934) (not b!1170594) (not d!334722) (not b!1170924) (not d!334772) (not b!1170724) (not d!334724) (not b!1170978) (not b!1170725) (not d!334802) (not b!1170969) (not b!1170981) (not b!1170753) (not b!1170545) (not b!1170903) (not b!1170771) (not b!1170540) (not b!1170688) (not b!1170720) (not b!1170754) (not d!334720) (not b!1170814) (not d!334838) (not b!1170876) (not b!1170962) (not d!334822) (not b!1170595) (not b!1170601) (not b!1170648) (not b!1170558) (not b!1170923) (not b!1170907) (not b!1170581) (not b_next!28555))
(check-sat b_and!80749 b_and!80751 (not b_next!28553) (not b_next!28555))
