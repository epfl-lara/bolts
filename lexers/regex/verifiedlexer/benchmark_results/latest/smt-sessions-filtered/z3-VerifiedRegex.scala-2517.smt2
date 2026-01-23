; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133816 () Bool)

(assert start!133816)

(declare-fun res!653502 () Bool)

(declare-fun e!920914 () Bool)

(assert (=> start!133816 (=> (not res!653502) (not e!920914))))

(declare-datatypes ((C!8072 0))(
  ( (C!8073 (val!4606 Int)) )
))
(declare-datatypes ((List!15042 0))(
  ( (Nil!14976) (Cons!14976 (h!20377 C!8072) (t!130031 List!15042)) )
))
(declare-datatypes ((IArray!10189 0))(
  ( (IArray!10190 (innerList!5152 List!15042)) )
))
(declare-datatypes ((Conc!5092 0))(
  ( (Node!5092 (left!12755 Conc!5092) (right!13085 Conc!5092) (csize!10414 Int) (cheight!5303 Int)) (Leaf!7610 (xs!7829 IArray!10189) (csize!10415 Int)) (Empty!5092) )
))
(declare-datatypes ((BalanceConc!10124 0))(
  ( (BalanceConc!10125 (c!237766 Conc!5092)) )
))
(declare-datatypes ((List!15043 0))(
  ( (Nil!14977) (Cons!14977 (h!20378 (_ BitVec 16)) (t!130032 List!15043)) )
))
(declare-datatypes ((TokenValue!2723 0))(
  ( (FloatLiteralValue!5446 (text!19506 List!15043)) (TokenValueExt!2722 (__x!9239 Int)) (Broken!13615 (value!84662 List!15043)) (Object!2788) (End!2723) (Def!2723) (Underscore!2723) (Match!2723) (Else!2723) (Error!2723) (Case!2723) (If!2723) (Extends!2723) (Abstract!2723) (Class!2723) (Val!2723) (DelimiterValue!5446 (del!2783 List!15043)) (KeywordValue!2729 (value!84663 List!15043)) (CommentValue!5446 (value!84664 List!15043)) (WhitespaceValue!5446 (value!84665 List!15043)) (IndentationValue!2723 (value!84666 List!15043)) (String!17870) (Int32!2723) (Broken!13616 (value!84667 List!15043)) (Boolean!2724) (Unit!23544) (OperatorValue!2726 (op!2783 List!15043)) (IdentifierValue!5446 (value!84668 List!15043)) (IdentifierValue!5447 (value!84669 List!15043)) (WhitespaceValue!5447 (value!84670 List!15043)) (True!5446) (False!5446) (Broken!13617 (value!84671 List!15043)) (Broken!13618 (value!84672 List!15043)) (True!5447) (RightBrace!2723) (RightBracket!2723) (Colon!2723) (Null!2723) (Comma!2723) (LeftBracket!2723) (False!5447) (LeftBrace!2723) (ImaginaryLiteralValue!2723 (text!19507 List!15043)) (StringLiteralValue!8169 (value!84673 List!15043)) (EOFValue!2723 (value!84674 List!15043)) (IdentValue!2723 (value!84675 List!15043)) (DelimiterValue!5447 (value!84676 List!15043)) (DedentValue!2723 (value!84677 List!15043)) (NewLineValue!2723 (value!84678 List!15043)) (IntegerValue!8169 (value!84679 (_ BitVec 32)) (text!19508 List!15043)) (IntegerValue!8170 (value!84680 Int) (text!19509 List!15043)) (Times!2723) (Or!2723) (Equal!2723) (Minus!2723) (Broken!13619 (value!84681 List!15043)) (And!2723) (Div!2723) (LessEqual!2723) (Mod!2723) (Concat!6670) (Not!2723) (Plus!2723) (SpaceValue!2723 (value!84682 List!15043)) (IntegerValue!8171 (value!84683 Int) (text!19510 List!15043)) (StringLiteralValue!8170 (text!19511 List!15043)) (FloatLiteralValue!5447 (text!19512 List!15043)) (BytesLiteralValue!2723 (value!84684 List!15043)) (CommentValue!5447 (value!84685 List!15043)) (StringLiteralValue!8171 (value!84686 List!15043)) (ErrorTokenValue!2723 (msg!2784 List!15043)) )
))
(declare-datatypes ((Regex!3947 0))(
  ( (ElementMatch!3947 (c!237767 C!8072)) (Concat!6671 (regOne!8406 Regex!3947) (regTwo!8406 Regex!3947)) (EmptyExpr!3947) (Star!3947 (reg!4276 Regex!3947)) (EmptyLang!3947) (Union!3947 (regOne!8407 Regex!3947) (regTwo!8407 Regex!3947)) )
))
(declare-datatypes ((String!17871 0))(
  ( (String!17872 (value!84687 String)) )
))
(declare-datatypes ((TokenValueInjection!5106 0))(
  ( (TokenValueInjection!5107 (toValue!3940 Int) (toChars!3799 Int)) )
))
(declare-datatypes ((Rule!5066 0))(
  ( (Rule!5067 (regex!2633 Regex!3947) (tag!2897 String!17871) (isSeparator!2633 Bool) (transformation!2633 TokenValueInjection!5106)) )
))
(declare-datatypes ((Token!4928 0))(
  ( (Token!4929 (value!84688 TokenValue!2723) (rule!4404 Rule!5066) (size!12271 Int) (originalCharacters!3495 List!15042)) )
))
(declare-datatypes ((List!15044 0))(
  ( (Nil!14978) (Cons!14978 (h!20379 Token!4928) (t!130033 List!15044)) )
))
(declare-datatypes ((IArray!10191 0))(
  ( (IArray!10192 (innerList!5153 List!15044)) )
))
(declare-datatypes ((Conc!5093 0))(
  ( (Node!5093 (left!12756 Conc!5093) (right!13086 Conc!5093) (csize!10416 Int) (cheight!5304 Int)) (Leaf!7611 (xs!7830 IArray!10191) (csize!10417 Int)) (Empty!5093) )
))
(declare-datatypes ((BalanceConc!10126 0))(
  ( (BalanceConc!10127 (c!237768 Conc!5093)) )
))
(declare-datatypes ((List!15045 0))(
  ( (Nil!14979) (Cons!14979 (h!20380 Rule!5066) (t!130034 List!15045)) )
))
(declare-datatypes ((PrintableTokens!1048 0))(
  ( (PrintableTokens!1049 (rules!11466 List!15045) (tokens!2004 BalanceConc!10126)) )
))
(declare-fun thiss!10022 () PrintableTokens!1048)

(declare-fun other!32 () PrintableTokens!1048)

(assert (=> start!133816 (= res!653502 (= (rules!11466 thiss!10022) (rules!11466 other!32)))))

(assert (=> start!133816 e!920914))

(declare-fun e!920913 () Bool)

(declare-fun inv!19927 (PrintableTokens!1048) Bool)

(assert (=> start!133816 (and (inv!19927 thiss!10022) e!920913)))

(declare-fun e!920912 () Bool)

(assert (=> start!133816 (and (inv!19927 other!32) e!920912)))

(declare-fun b!1443500 () Bool)

(declare-fun e!920911 () Bool)

(declare-fun lt!496054 () List!15044)

(declare-datatypes ((LexerInterface!2292 0))(
  ( (LexerInterfaceExt!2289 (__x!9240 Int)) (Lexer!2290) )
))
(declare-fun tokensListTwoByTwoPredicateSeparableList!239 (LexerInterface!2292 List!15044 List!15045) Bool)

(assert (=> b!1443500 (= e!920911 (tokensListTwoByTwoPredicateSeparableList!239 Lexer!2290 lt!496054 (rules!11466 thiss!10022)))))

(declare-fun e!920909 () Bool)

(declare-fun tp!407532 () Bool)

(declare-fun b!1443501 () Bool)

(declare-fun inv!19928 (BalanceConc!10126) Bool)

(assert (=> b!1443501 (= e!920913 (and tp!407532 (inv!19928 (tokens!2004 thiss!10022)) e!920909))))

(declare-fun b!1443502 () Bool)

(declare-fun e!920910 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!120 (LexerInterface!2292 BalanceConc!10126 Int List!15045) Bool)

(declare-fun ++!4021 (BalanceConc!10126 BalanceConc!10126) BalanceConc!10126)

(assert (=> b!1443502 (= e!920910 (tokensListTwoByTwoPredicateSeparable!120 Lexer!2290 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) 0 (rules!11466 thiss!10022)))))

(assert (=> b!1443502 e!920911))

(declare-fun res!653503 () Bool)

(assert (=> b!1443502 (=> (not res!653503) (not e!920911))))

(declare-fun rulesProduceEachTokenIndividuallyList!728 (LexerInterface!2292 List!15045 List!15044) Bool)

(assert (=> b!1443502 (= res!653503 (rulesProduceEachTokenIndividuallyList!728 Lexer!2290 (rules!11466 thiss!10022) lt!496054))))

(declare-fun lt!496053 () List!15044)

(declare-fun lt!496048 () List!15044)

(declare-fun ++!4022 (List!15044 List!15044) List!15044)

(assert (=> b!1443502 (= lt!496054 (++!4022 lt!496053 lt!496048))))

(declare-datatypes ((Unit!23545 0))(
  ( (Unit!23546) )
))
(declare-fun lt!496050 () Unit!23545)

(declare-fun lemmaRulesProduceEachTokenIndividuallyConcat!52 (LexerInterface!2292 List!15045 List!15044 List!15044) Unit!23545)

(assert (=> b!1443502 (= lt!496050 (lemmaRulesProduceEachTokenIndividuallyConcat!52 Lexer!2290 (rules!11466 thiss!10022) lt!496053 lt!496048))))

(declare-fun lt!496051 () Unit!23545)

(declare-fun tokensListTwoByTwoPredicateConcatSeparableTokensList!52 (LexerInterface!2292 List!15044 List!15044 List!15045) Unit!23545)

(assert (=> b!1443502 (= lt!496051 (tokensListTwoByTwoPredicateConcatSeparableTokensList!52 Lexer!2290 lt!496053 lt!496048 (rules!11466 thiss!10022)))))

(declare-fun b!1443503 () Bool)

(declare-fun e!920916 () Bool)

(assert (=> b!1443503 (= e!920916 (not e!920910))))

(declare-fun res!653504 () Bool)

(assert (=> b!1443503 (=> res!653504 e!920910)))

(declare-fun lt!496052 () Token!4928)

(declare-fun lt!496047 () Token!4928)

(declare-fun separableTokensPredicate!522 (LexerInterface!2292 Token!4928 Token!4928 List!15045) Bool)

(assert (=> b!1443503 (= res!653504 (not (separableTokensPredicate!522 Lexer!2290 lt!496047 lt!496052 (rules!11466 thiss!10022))))))

(declare-fun rulesProduceIndividualToken!1220 (LexerInterface!2292 List!15045 Token!4928) Bool)

(assert (=> b!1443503 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) lt!496052)))

(declare-fun lt!496045 () Unit!23545)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!405 (LexerInterface!2292 List!15045 List!15044 Token!4928) Unit!23545)

(assert (=> b!1443503 (= lt!496045 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!405 Lexer!2290 (rules!11466 thiss!10022) lt!496048 lt!496052))))

(declare-fun head!2921 (BalanceConc!10126) Token!4928)

(assert (=> b!1443503 (= lt!496052 (head!2921 (tokens!2004 other!32)))))

(declare-fun list!5963 (BalanceConc!10126) List!15044)

(assert (=> b!1443503 (= lt!496048 (list!5963 (tokens!2004 other!32)))))

(assert (=> b!1443503 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) lt!496047)))

(declare-fun lt!496044 () Unit!23545)

(assert (=> b!1443503 (= lt!496044 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!405 Lexer!2290 (rules!11466 thiss!10022) lt!496053 lt!496047))))

(declare-fun last!175 (BalanceConc!10126) Token!4928)

(assert (=> b!1443503 (= lt!496047 (last!175 (tokens!2004 thiss!10022)))))

(assert (=> b!1443503 (= lt!496053 (list!5963 (tokens!2004 thiss!10022)))))

(declare-fun b!1443504 () Bool)

(assert (=> b!1443504 (= e!920914 e!920916)))

(declare-fun res!653505 () Bool)

(assert (=> b!1443504 (=> (not res!653505) (not e!920916))))

(declare-fun isEmpty!9319 (BalanceConc!10126) Bool)

(assert (=> b!1443504 (= res!653505 (not (isEmpty!9319 (tokens!2004 other!32))))))

(declare-fun lt!496046 () Unit!23545)

(declare-fun lemmaInvariant!329 (PrintableTokens!1048) Unit!23545)

(assert (=> b!1443504 (= lt!496046 (lemmaInvariant!329 thiss!10022))))

(declare-fun lt!496049 () Unit!23545)

(assert (=> b!1443504 (= lt!496049 (lemmaInvariant!329 other!32))))

(declare-fun tp!407533 () Bool)

(declare-fun b!1443505 () Bool)

(declare-fun e!920915 () Bool)

(assert (=> b!1443505 (= e!920912 (and tp!407533 (inv!19928 (tokens!2004 other!32)) e!920915))))

(declare-fun b!1443506 () Bool)

(declare-fun tp!407531 () Bool)

(declare-fun inv!19929 (Conc!5093) Bool)

(assert (=> b!1443506 (= e!920909 (and (inv!19929 (c!237768 (tokens!2004 thiss!10022))) tp!407531))))

(declare-fun b!1443507 () Bool)

(declare-fun res!653506 () Bool)

(assert (=> b!1443507 (=> (not res!653506) (not e!920916))))

(assert (=> b!1443507 (= res!653506 (not (isEmpty!9319 (tokens!2004 thiss!10022))))))

(declare-fun b!1443508 () Bool)

(declare-fun tp!407534 () Bool)

(assert (=> b!1443508 (= e!920915 (and (inv!19929 (c!237768 (tokens!2004 other!32))) tp!407534))))

(assert (= (and start!133816 res!653502) b!1443504))

(assert (= (and b!1443504 res!653505) b!1443507))

(assert (= (and b!1443507 res!653506) b!1443503))

(assert (= (and b!1443503 (not res!653504)) b!1443502))

(assert (= (and b!1443502 res!653503) b!1443500))

(assert (= b!1443501 b!1443506))

(assert (= start!133816 b!1443501))

(assert (= b!1443505 b!1443508))

(assert (= start!133816 b!1443505))

(declare-fun m!1661551 () Bool)

(assert (=> b!1443503 m!1661551))

(declare-fun m!1661553 () Bool)

(assert (=> b!1443503 m!1661553))

(declare-fun m!1661555 () Bool)

(assert (=> b!1443503 m!1661555))

(declare-fun m!1661557 () Bool)

(assert (=> b!1443503 m!1661557))

(declare-fun m!1661559 () Bool)

(assert (=> b!1443503 m!1661559))

(declare-fun m!1661561 () Bool)

(assert (=> b!1443503 m!1661561))

(declare-fun m!1661563 () Bool)

(assert (=> b!1443503 m!1661563))

(declare-fun m!1661565 () Bool)

(assert (=> b!1443503 m!1661565))

(declare-fun m!1661567 () Bool)

(assert (=> b!1443503 m!1661567))

(declare-fun m!1661569 () Bool)

(assert (=> b!1443500 m!1661569))

(declare-fun m!1661571 () Bool)

(assert (=> b!1443501 m!1661571))

(declare-fun m!1661573 () Bool)

(assert (=> b!1443507 m!1661573))

(declare-fun m!1661575 () Bool)

(assert (=> start!133816 m!1661575))

(declare-fun m!1661577 () Bool)

(assert (=> start!133816 m!1661577))

(declare-fun m!1661579 () Bool)

(assert (=> b!1443505 m!1661579))

(declare-fun m!1661581 () Bool)

(assert (=> b!1443508 m!1661581))

(declare-fun m!1661583 () Bool)

(assert (=> b!1443506 m!1661583))

(declare-fun m!1661585 () Bool)

(assert (=> b!1443504 m!1661585))

(declare-fun m!1661587 () Bool)

(assert (=> b!1443504 m!1661587))

(declare-fun m!1661589 () Bool)

(assert (=> b!1443504 m!1661589))

(declare-fun m!1661591 () Bool)

(assert (=> b!1443502 m!1661591))

(declare-fun m!1661593 () Bool)

(assert (=> b!1443502 m!1661593))

(declare-fun m!1661595 () Bool)

(assert (=> b!1443502 m!1661595))

(declare-fun m!1661597 () Bool)

(assert (=> b!1443502 m!1661597))

(declare-fun m!1661599 () Bool)

(assert (=> b!1443502 m!1661599))

(declare-fun m!1661601 () Bool)

(assert (=> b!1443502 m!1661601))

(assert (=> b!1443502 m!1661591))

(check-sat (not b!1443508) (not b!1443504) (not b!1443502) (not start!133816) (not b!1443507) (not b!1443501) (not b!1443506) (not b!1443503) (not b!1443505) (not b!1443500))
(check-sat)
(get-model)

(declare-fun d!418342 () Bool)

(declare-fun isBalanced!1514 (Conc!5093) Bool)

(assert (=> d!418342 (= (inv!19928 (tokens!2004 other!32)) (isBalanced!1514 (c!237768 (tokens!2004 other!32))))))

(declare-fun bs!341944 () Bool)

(assert (= bs!341944 d!418342))

(declare-fun m!1661609 () Bool)

(assert (=> bs!341944 m!1661609))

(assert (=> b!1443505 d!418342))

(declare-fun d!418344 () Bool)

(declare-fun res!653534 () Bool)

(declare-fun e!920931 () Bool)

(assert (=> d!418344 (=> res!653534 e!920931)))

(get-info :version)

(assert (=> d!418344 (= res!653534 (or (not ((_ is Cons!14978) lt!496054)) (not ((_ is Cons!14978) (t!130033 lt!496054)))))))

(assert (=> d!418344 (= (tokensListTwoByTwoPredicateSeparableList!239 Lexer!2290 lt!496054 (rules!11466 thiss!10022)) e!920931)))

(declare-fun b!1443537 () Bool)

(declare-fun e!920932 () Bool)

(assert (=> b!1443537 (= e!920931 e!920932)))

(declare-fun res!653533 () Bool)

(assert (=> b!1443537 (=> (not res!653533) (not e!920932))))

(assert (=> b!1443537 (= res!653533 (separableTokensPredicate!522 Lexer!2290 (h!20379 lt!496054) (h!20379 (t!130033 lt!496054)) (rules!11466 thiss!10022)))))

(declare-fun lt!496079 () Unit!23545)

(declare-fun Unit!23550 () Unit!23545)

(assert (=> b!1443537 (= lt!496079 Unit!23550)))

(declare-fun size!12275 (BalanceConc!10124) Int)

(declare-fun charsOf!1519 (Token!4928) BalanceConc!10124)

(assert (=> b!1443537 (> (size!12275 (charsOf!1519 (h!20379 (t!130033 lt!496054)))) 0)))

(declare-fun lt!496076 () Unit!23545)

(declare-fun Unit!23551 () Unit!23545)

(assert (=> b!1443537 (= lt!496076 Unit!23551)))

(assert (=> b!1443537 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) (h!20379 (t!130033 lt!496054)))))

(declare-fun lt!496075 () Unit!23545)

(declare-fun Unit!23552 () Unit!23545)

(assert (=> b!1443537 (= lt!496075 Unit!23552)))

(assert (=> b!1443537 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) (h!20379 lt!496054))))

(declare-fun lt!496078 () Unit!23545)

(declare-fun lt!496081 () Unit!23545)

(assert (=> b!1443537 (= lt!496078 lt!496081)))

(assert (=> b!1443537 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) (h!20379 (t!130033 lt!496054)))))

(assert (=> b!1443537 (= lt!496081 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!405 Lexer!2290 (rules!11466 thiss!10022) lt!496054 (h!20379 (t!130033 lt!496054))))))

(declare-fun lt!496080 () Unit!23545)

(declare-fun lt!496077 () Unit!23545)

(assert (=> b!1443537 (= lt!496080 lt!496077)))

(assert (=> b!1443537 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) (h!20379 lt!496054))))

(assert (=> b!1443537 (= lt!496077 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!405 Lexer!2290 (rules!11466 thiss!10022) lt!496054 (h!20379 lt!496054)))))

(declare-fun b!1443538 () Bool)

(assert (=> b!1443538 (= e!920932 (tokensListTwoByTwoPredicateSeparableList!239 Lexer!2290 (Cons!14978 (h!20379 (t!130033 lt!496054)) (t!130033 (t!130033 lt!496054))) (rules!11466 thiss!10022)))))

(assert (= (and d!418344 (not res!653534)) b!1443537))

(assert (= (and b!1443537 res!653533) b!1443538))

(declare-fun m!1661641 () Bool)

(assert (=> b!1443537 m!1661641))

(declare-fun m!1661643 () Bool)

(assert (=> b!1443537 m!1661643))

(declare-fun m!1661645 () Bool)

(assert (=> b!1443537 m!1661645))

(declare-fun m!1661647 () Bool)

(assert (=> b!1443537 m!1661647))

(declare-fun m!1661649 () Bool)

(assert (=> b!1443537 m!1661649))

(declare-fun m!1661651 () Bool)

(assert (=> b!1443537 m!1661651))

(assert (=> b!1443537 m!1661641))

(declare-fun m!1661653 () Bool)

(assert (=> b!1443537 m!1661653))

(declare-fun m!1661655 () Bool)

(assert (=> b!1443538 m!1661655))

(assert (=> b!1443500 d!418344))

(declare-fun d!418352 () Bool)

(declare-fun res!653553 () Bool)

(declare-fun e!920938 () Bool)

(assert (=> d!418352 (=> (not res!653553) (not e!920938))))

(declare-fun isEmpty!9324 (List!15045) Bool)

(assert (=> d!418352 (= res!653553 (not (isEmpty!9324 (rules!11466 thiss!10022))))))

(assert (=> d!418352 (= (inv!19927 thiss!10022) e!920938)))

(declare-fun b!1443557 () Bool)

(declare-fun res!653554 () Bool)

(assert (=> b!1443557 (=> (not res!653554) (not e!920938))))

(declare-fun rulesInvariant!2130 (LexerInterface!2292 List!15045) Bool)

(assert (=> b!1443557 (= res!653554 (rulesInvariant!2130 Lexer!2290 (rules!11466 thiss!10022)))))

(declare-fun b!1443558 () Bool)

(declare-fun res!653555 () Bool)

(assert (=> b!1443558 (=> (not res!653555) (not e!920938))))

(declare-fun rulesProduceEachTokenIndividually!848 (LexerInterface!2292 List!15045 BalanceConc!10126) Bool)

(assert (=> b!1443558 (= res!653555 (rulesProduceEachTokenIndividually!848 Lexer!2290 (rules!11466 thiss!10022) (tokens!2004 thiss!10022)))))

(declare-fun b!1443559 () Bool)

(declare-fun separableTokens!232 (LexerInterface!2292 BalanceConc!10126 List!15045) Bool)

(assert (=> b!1443559 (= e!920938 (separableTokens!232 Lexer!2290 (tokens!2004 thiss!10022) (rules!11466 thiss!10022)))))

(assert (= (and d!418352 res!653553) b!1443557))

(assert (= (and b!1443557 res!653554) b!1443558))

(assert (= (and b!1443558 res!653555) b!1443559))

(declare-fun m!1661679 () Bool)

(assert (=> d!418352 m!1661679))

(declare-fun m!1661681 () Bool)

(assert (=> b!1443557 m!1661681))

(declare-fun m!1661683 () Bool)

(assert (=> b!1443558 m!1661683))

(declare-fun m!1661685 () Bool)

(assert (=> b!1443559 m!1661685))

(assert (=> start!133816 d!418352))

(declare-fun d!418358 () Bool)

(declare-fun res!653556 () Bool)

(declare-fun e!920939 () Bool)

(assert (=> d!418358 (=> (not res!653556) (not e!920939))))

(assert (=> d!418358 (= res!653556 (not (isEmpty!9324 (rules!11466 other!32))))))

(assert (=> d!418358 (= (inv!19927 other!32) e!920939)))

(declare-fun b!1443560 () Bool)

(declare-fun res!653557 () Bool)

(assert (=> b!1443560 (=> (not res!653557) (not e!920939))))

(assert (=> b!1443560 (= res!653557 (rulesInvariant!2130 Lexer!2290 (rules!11466 other!32)))))

(declare-fun b!1443561 () Bool)

(declare-fun res!653558 () Bool)

(assert (=> b!1443561 (=> (not res!653558) (not e!920939))))

(assert (=> b!1443561 (= res!653558 (rulesProduceEachTokenIndividually!848 Lexer!2290 (rules!11466 other!32) (tokens!2004 other!32)))))

(declare-fun b!1443562 () Bool)

(assert (=> b!1443562 (= e!920939 (separableTokens!232 Lexer!2290 (tokens!2004 other!32) (rules!11466 other!32)))))

(assert (= (and d!418358 res!653556) b!1443560))

(assert (= (and b!1443560 res!653557) b!1443561))

(assert (= (and b!1443561 res!653558) b!1443562))

(declare-fun m!1661687 () Bool)

(assert (=> d!418358 m!1661687))

(declare-fun m!1661689 () Bool)

(assert (=> b!1443560 m!1661689))

(declare-fun m!1661691 () Bool)

(assert (=> b!1443561 m!1661691))

(declare-fun m!1661693 () Bool)

(assert (=> b!1443562 m!1661693))

(assert (=> start!133816 d!418358))

(declare-fun d!418360 () Bool)

(declare-fun lt!496090 () Bool)

(declare-fun isEmpty!9325 (List!15044) Bool)

(assert (=> d!418360 (= lt!496090 (isEmpty!9325 (list!5963 (tokens!2004 other!32))))))

(declare-fun isEmpty!9326 (Conc!5093) Bool)

(assert (=> d!418360 (= lt!496090 (isEmpty!9326 (c!237768 (tokens!2004 other!32))))))

(assert (=> d!418360 (= (isEmpty!9319 (tokens!2004 other!32)) lt!496090)))

(declare-fun bs!341946 () Bool)

(assert (= bs!341946 d!418360))

(assert (=> bs!341946 m!1661567))

(assert (=> bs!341946 m!1661567))

(declare-fun m!1661695 () Bool)

(assert (=> bs!341946 m!1661695))

(declare-fun m!1661697 () Bool)

(assert (=> bs!341946 m!1661697))

(assert (=> b!1443504 d!418360))

(declare-fun d!418362 () Bool)

(declare-fun e!920949 () Bool)

(assert (=> d!418362 e!920949))

(declare-fun res!653579 () Bool)

(assert (=> d!418362 (=> (not res!653579) (not e!920949))))

(assert (=> d!418362 (= res!653579 (rulesInvariant!2130 Lexer!2290 (rules!11466 thiss!10022)))))

(declare-fun Unit!23553 () Unit!23545)

(assert (=> d!418362 (= (lemmaInvariant!329 thiss!10022) Unit!23553)))

(declare-fun b!1443583 () Bool)

(declare-fun res!653580 () Bool)

(assert (=> b!1443583 (=> (not res!653580) (not e!920949))))

(assert (=> b!1443583 (= res!653580 (rulesProduceEachTokenIndividually!848 Lexer!2290 (rules!11466 thiss!10022) (tokens!2004 thiss!10022)))))

(declare-fun b!1443584 () Bool)

(assert (=> b!1443584 (= e!920949 (separableTokens!232 Lexer!2290 (tokens!2004 thiss!10022) (rules!11466 thiss!10022)))))

(assert (= (and d!418362 res!653579) b!1443583))

(assert (= (and b!1443583 res!653580) b!1443584))

(assert (=> d!418362 m!1661681))

(assert (=> b!1443583 m!1661683))

(assert (=> b!1443584 m!1661685))

(assert (=> b!1443504 d!418362))

(declare-fun d!418366 () Bool)

(declare-fun e!920950 () Bool)

(assert (=> d!418366 e!920950))

(declare-fun res!653581 () Bool)

(assert (=> d!418366 (=> (not res!653581) (not e!920950))))

(assert (=> d!418366 (= res!653581 (rulesInvariant!2130 Lexer!2290 (rules!11466 other!32)))))

(declare-fun Unit!23554 () Unit!23545)

(assert (=> d!418366 (= (lemmaInvariant!329 other!32) Unit!23554)))

(declare-fun b!1443585 () Bool)

(declare-fun res!653582 () Bool)

(assert (=> b!1443585 (=> (not res!653582) (not e!920950))))

(assert (=> b!1443585 (= res!653582 (rulesProduceEachTokenIndividually!848 Lexer!2290 (rules!11466 other!32) (tokens!2004 other!32)))))

(declare-fun b!1443586 () Bool)

(assert (=> b!1443586 (= e!920950 (separableTokens!232 Lexer!2290 (tokens!2004 other!32) (rules!11466 other!32)))))

(assert (= (and d!418366 res!653581) b!1443585))

(assert (= (and b!1443585 res!653582) b!1443586))

(assert (=> d!418366 m!1661689))

(assert (=> b!1443585 m!1661691))

(assert (=> b!1443586 m!1661693))

(assert (=> b!1443504 d!418366))

(declare-fun d!418368 () Bool)

(declare-fun lt!496107 () Bool)

(declare-fun e!920955 () Bool)

(assert (=> d!418368 (= lt!496107 e!920955)))

(declare-fun res!653589 () Bool)

(assert (=> d!418368 (=> (not res!653589) (not e!920955))))

(declare-datatypes ((tuple2!14150 0))(
  ( (tuple2!14151 (_1!7961 BalanceConc!10126) (_2!7961 BalanceConc!10124)) )
))
(declare-fun lex!1048 (LexerInterface!2292 List!15045 BalanceConc!10124) tuple2!14150)

(declare-fun print!1071 (LexerInterface!2292 BalanceConc!10126) BalanceConc!10124)

(declare-fun singletonSeq!1234 (Token!4928) BalanceConc!10126)

(assert (=> d!418368 (= res!653589 (= (list!5963 (_1!7961 (lex!1048 Lexer!2290 (rules!11466 thiss!10022) (print!1071 Lexer!2290 (singletonSeq!1234 lt!496052))))) (list!5963 (singletonSeq!1234 lt!496052))))))

(declare-fun e!920956 () Bool)

(assert (=> d!418368 (= lt!496107 e!920956)))

(declare-fun res!653591 () Bool)

(assert (=> d!418368 (=> (not res!653591) (not e!920956))))

(declare-fun lt!496106 () tuple2!14150)

(declare-fun size!12276 (BalanceConc!10126) Int)

(assert (=> d!418368 (= res!653591 (= (size!12276 (_1!7961 lt!496106)) 1))))

(assert (=> d!418368 (= lt!496106 (lex!1048 Lexer!2290 (rules!11466 thiss!10022) (print!1071 Lexer!2290 (singletonSeq!1234 lt!496052))))))

(assert (=> d!418368 (not (isEmpty!9324 (rules!11466 thiss!10022)))))

(assert (=> d!418368 (= (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) lt!496052) lt!496107)))

(declare-fun b!1443593 () Bool)

(declare-fun res!653590 () Bool)

(assert (=> b!1443593 (=> (not res!653590) (not e!920956))))

(declare-fun apply!3850 (BalanceConc!10126 Int) Token!4928)

(assert (=> b!1443593 (= res!653590 (= (apply!3850 (_1!7961 lt!496106) 0) lt!496052))))

(declare-fun b!1443594 () Bool)

(declare-fun isEmpty!9327 (BalanceConc!10124) Bool)

(assert (=> b!1443594 (= e!920956 (isEmpty!9327 (_2!7961 lt!496106)))))

(declare-fun b!1443595 () Bool)

(assert (=> b!1443595 (= e!920955 (isEmpty!9327 (_2!7961 (lex!1048 Lexer!2290 (rules!11466 thiss!10022) (print!1071 Lexer!2290 (singletonSeq!1234 lt!496052))))))))

(assert (= (and d!418368 res!653591) b!1443593))

(assert (= (and b!1443593 res!653590) b!1443594))

(assert (= (and d!418368 res!653589) b!1443595))

(declare-fun m!1661707 () Bool)

(assert (=> d!418368 m!1661707))

(declare-fun m!1661709 () Bool)

(assert (=> d!418368 m!1661709))

(declare-fun m!1661711 () Bool)

(assert (=> d!418368 m!1661711))

(assert (=> d!418368 m!1661679))

(declare-fun m!1661713 () Bool)

(assert (=> d!418368 m!1661713))

(declare-fun m!1661715 () Bool)

(assert (=> d!418368 m!1661715))

(assert (=> d!418368 m!1661707))

(assert (=> d!418368 m!1661713))

(declare-fun m!1661717 () Bool)

(assert (=> d!418368 m!1661717))

(assert (=> d!418368 m!1661707))

(declare-fun m!1661719 () Bool)

(assert (=> b!1443593 m!1661719))

(declare-fun m!1661721 () Bool)

(assert (=> b!1443594 m!1661721))

(assert (=> b!1443595 m!1661707))

(assert (=> b!1443595 m!1661707))

(assert (=> b!1443595 m!1661713))

(assert (=> b!1443595 m!1661713))

(assert (=> b!1443595 m!1661715))

(declare-fun m!1661723 () Bool)

(assert (=> b!1443595 m!1661723))

(assert (=> b!1443503 d!418368))

(declare-fun d!418370 () Bool)

(declare-fun list!5965 (Conc!5093) List!15044)

(assert (=> d!418370 (= (list!5963 (tokens!2004 other!32)) (list!5965 (c!237768 (tokens!2004 other!32))))))

(declare-fun bs!341947 () Bool)

(assert (= bs!341947 d!418370))

(declare-fun m!1661725 () Bool)

(assert (=> bs!341947 m!1661725))

(assert (=> b!1443503 d!418370))

(declare-fun d!418372 () Bool)

(declare-fun lt!496110 () Token!4928)

(declare-fun head!2924 (List!15044) Token!4928)

(assert (=> d!418372 (= lt!496110 (head!2924 (list!5963 (tokens!2004 other!32))))))

(declare-fun head!2925 (Conc!5093) Token!4928)

(assert (=> d!418372 (= lt!496110 (head!2925 (c!237768 (tokens!2004 other!32))))))

(assert (=> d!418372 (not (isEmpty!9319 (tokens!2004 other!32)))))

(assert (=> d!418372 (= (head!2921 (tokens!2004 other!32)) lt!496110)))

(declare-fun bs!341948 () Bool)

(assert (= bs!341948 d!418372))

(assert (=> bs!341948 m!1661567))

(assert (=> bs!341948 m!1661567))

(declare-fun m!1661727 () Bool)

(assert (=> bs!341948 m!1661727))

(declare-fun m!1661729 () Bool)

(assert (=> bs!341948 m!1661729))

(assert (=> bs!341948 m!1661585))

(assert (=> b!1443503 d!418372))

(declare-fun d!418374 () Bool)

(declare-fun lt!496113 () Token!4928)

(declare-fun last!178 (List!15044) Token!4928)

(assert (=> d!418374 (= lt!496113 (last!178 (list!5963 (tokens!2004 thiss!10022))))))

(declare-fun last!179 (Conc!5093) Token!4928)

(assert (=> d!418374 (= lt!496113 (last!179 (c!237768 (tokens!2004 thiss!10022))))))

(assert (=> d!418374 (not (isEmpty!9319 (tokens!2004 thiss!10022)))))

(assert (=> d!418374 (= (last!175 (tokens!2004 thiss!10022)) lt!496113)))

(declare-fun bs!341949 () Bool)

(assert (= bs!341949 d!418374))

(assert (=> bs!341949 m!1661555))

(assert (=> bs!341949 m!1661555))

(declare-fun m!1661731 () Bool)

(assert (=> bs!341949 m!1661731))

(declare-fun m!1661733 () Bool)

(assert (=> bs!341949 m!1661733))

(assert (=> bs!341949 m!1661573))

(assert (=> b!1443503 d!418374))

(declare-fun d!418376 () Bool)

(assert (=> d!418376 (= (list!5963 (tokens!2004 thiss!10022)) (list!5965 (c!237768 (tokens!2004 thiss!10022))))))

(declare-fun bs!341950 () Bool)

(assert (= bs!341950 d!418376))

(declare-fun m!1661735 () Bool)

(assert (=> bs!341950 m!1661735))

(assert (=> b!1443503 d!418376))

(declare-fun d!418378 () Bool)

(declare-fun prefixMatchZipperSequence!333 (Regex!3947 BalanceConc!10124) Bool)

(declare-fun rulesRegex!395 (LexerInterface!2292 List!15045) Regex!3947)

(declare-fun ++!4025 (BalanceConc!10124 BalanceConc!10124) BalanceConc!10124)

(declare-fun singletonSeq!1235 (C!8072) BalanceConc!10124)

(declare-fun apply!3851 (BalanceConc!10124 Int) C!8072)

(assert (=> d!418378 (= (separableTokensPredicate!522 Lexer!2290 lt!496047 lt!496052 (rules!11466 thiss!10022)) (not (prefixMatchZipperSequence!333 (rulesRegex!395 Lexer!2290 (rules!11466 thiss!10022)) (++!4025 (charsOf!1519 lt!496047) (singletonSeq!1235 (apply!3851 (charsOf!1519 lt!496052) 0))))))))

(declare-fun bs!341951 () Bool)

(assert (= bs!341951 d!418378))

(declare-fun m!1661737 () Bool)

(assert (=> bs!341951 m!1661737))

(declare-fun m!1661739 () Bool)

(assert (=> bs!341951 m!1661739))

(declare-fun m!1661741 () Bool)

(assert (=> bs!341951 m!1661741))

(declare-fun m!1661743 () Bool)

(assert (=> bs!341951 m!1661743))

(declare-fun m!1661745 () Bool)

(assert (=> bs!341951 m!1661745))

(assert (=> bs!341951 m!1661739))

(declare-fun m!1661747 () Bool)

(assert (=> bs!341951 m!1661747))

(assert (=> bs!341951 m!1661747))

(declare-fun m!1661749 () Bool)

(assert (=> bs!341951 m!1661749))

(assert (=> bs!341951 m!1661743))

(assert (=> bs!341951 m!1661749))

(assert (=> bs!341951 m!1661745))

(assert (=> bs!341951 m!1661737))

(assert (=> b!1443503 d!418378))

(declare-fun d!418380 () Bool)

(declare-fun lt!496115 () Bool)

(declare-fun e!920957 () Bool)

(assert (=> d!418380 (= lt!496115 e!920957)))

(declare-fun res!653592 () Bool)

(assert (=> d!418380 (=> (not res!653592) (not e!920957))))

(assert (=> d!418380 (= res!653592 (= (list!5963 (_1!7961 (lex!1048 Lexer!2290 (rules!11466 thiss!10022) (print!1071 Lexer!2290 (singletonSeq!1234 lt!496047))))) (list!5963 (singletonSeq!1234 lt!496047))))))

(declare-fun e!920958 () Bool)

(assert (=> d!418380 (= lt!496115 e!920958)))

(declare-fun res!653594 () Bool)

(assert (=> d!418380 (=> (not res!653594) (not e!920958))))

(declare-fun lt!496114 () tuple2!14150)

(assert (=> d!418380 (= res!653594 (= (size!12276 (_1!7961 lt!496114)) 1))))

(assert (=> d!418380 (= lt!496114 (lex!1048 Lexer!2290 (rules!11466 thiss!10022) (print!1071 Lexer!2290 (singletonSeq!1234 lt!496047))))))

(assert (=> d!418380 (not (isEmpty!9324 (rules!11466 thiss!10022)))))

(assert (=> d!418380 (= (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) lt!496047) lt!496115)))

(declare-fun b!1443596 () Bool)

(declare-fun res!653593 () Bool)

(assert (=> b!1443596 (=> (not res!653593) (not e!920958))))

(assert (=> b!1443596 (= res!653593 (= (apply!3850 (_1!7961 lt!496114) 0) lt!496047))))

(declare-fun b!1443597 () Bool)

(assert (=> b!1443597 (= e!920958 (isEmpty!9327 (_2!7961 lt!496114)))))

(declare-fun b!1443598 () Bool)

(assert (=> b!1443598 (= e!920957 (isEmpty!9327 (_2!7961 (lex!1048 Lexer!2290 (rules!11466 thiss!10022) (print!1071 Lexer!2290 (singletonSeq!1234 lt!496047))))))))

(assert (= (and d!418380 res!653594) b!1443596))

(assert (= (and b!1443596 res!653593) b!1443597))

(assert (= (and d!418380 res!653592) b!1443598))

(declare-fun m!1661751 () Bool)

(assert (=> d!418380 m!1661751))

(declare-fun m!1661753 () Bool)

(assert (=> d!418380 m!1661753))

(declare-fun m!1661755 () Bool)

(assert (=> d!418380 m!1661755))

(assert (=> d!418380 m!1661679))

(declare-fun m!1661757 () Bool)

(assert (=> d!418380 m!1661757))

(declare-fun m!1661759 () Bool)

(assert (=> d!418380 m!1661759))

(assert (=> d!418380 m!1661751))

(assert (=> d!418380 m!1661757))

(declare-fun m!1661761 () Bool)

(assert (=> d!418380 m!1661761))

(assert (=> d!418380 m!1661751))

(declare-fun m!1661763 () Bool)

(assert (=> b!1443596 m!1661763))

(declare-fun m!1661765 () Bool)

(assert (=> b!1443597 m!1661765))

(assert (=> b!1443598 m!1661751))

(assert (=> b!1443598 m!1661751))

(assert (=> b!1443598 m!1661757))

(assert (=> b!1443598 m!1661757))

(assert (=> b!1443598 m!1661759))

(declare-fun m!1661767 () Bool)

(assert (=> b!1443598 m!1661767))

(assert (=> b!1443503 d!418380))

(declare-fun d!418382 () Bool)

(assert (=> d!418382 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) lt!496052)))

(declare-fun lt!496118 () Unit!23545)

(declare-fun choose!8897 (LexerInterface!2292 List!15045 List!15044 Token!4928) Unit!23545)

(assert (=> d!418382 (= lt!496118 (choose!8897 Lexer!2290 (rules!11466 thiss!10022) lt!496048 lt!496052))))

(assert (=> d!418382 (not (isEmpty!9324 (rules!11466 thiss!10022)))))

(assert (=> d!418382 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!405 Lexer!2290 (rules!11466 thiss!10022) lt!496048 lt!496052) lt!496118)))

(declare-fun bs!341952 () Bool)

(assert (= bs!341952 d!418382))

(assert (=> bs!341952 m!1661561))

(declare-fun m!1661769 () Bool)

(assert (=> bs!341952 m!1661769))

(assert (=> bs!341952 m!1661679))

(assert (=> b!1443503 d!418382))

(declare-fun d!418384 () Bool)

(assert (=> d!418384 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) lt!496047)))

(declare-fun lt!496119 () Unit!23545)

(assert (=> d!418384 (= lt!496119 (choose!8897 Lexer!2290 (rules!11466 thiss!10022) lt!496053 lt!496047))))

(assert (=> d!418384 (not (isEmpty!9324 (rules!11466 thiss!10022)))))

(assert (=> d!418384 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!405 Lexer!2290 (rules!11466 thiss!10022) lt!496053 lt!496047) lt!496119)))

(declare-fun bs!341953 () Bool)

(assert (= bs!341953 d!418384))

(assert (=> bs!341953 m!1661563))

(declare-fun m!1661771 () Bool)

(assert (=> bs!341953 m!1661771))

(assert (=> bs!341953 m!1661679))

(assert (=> b!1443503 d!418384))

(declare-fun d!418386 () Bool)

(declare-fun c!237777 () Bool)

(assert (=> d!418386 (= c!237777 ((_ is Node!5093) (c!237768 (tokens!2004 other!32))))))

(declare-fun e!920963 () Bool)

(assert (=> d!418386 (= (inv!19929 (c!237768 (tokens!2004 other!32))) e!920963)))

(declare-fun b!1443605 () Bool)

(declare-fun inv!19933 (Conc!5093) Bool)

(assert (=> b!1443605 (= e!920963 (inv!19933 (c!237768 (tokens!2004 other!32))))))

(declare-fun b!1443606 () Bool)

(declare-fun e!920964 () Bool)

(assert (=> b!1443606 (= e!920963 e!920964)))

(declare-fun res!653597 () Bool)

(assert (=> b!1443606 (= res!653597 (not ((_ is Leaf!7611) (c!237768 (tokens!2004 other!32)))))))

(assert (=> b!1443606 (=> res!653597 e!920964)))

(declare-fun b!1443607 () Bool)

(declare-fun inv!19934 (Conc!5093) Bool)

(assert (=> b!1443607 (= e!920964 (inv!19934 (c!237768 (tokens!2004 other!32))))))

(assert (= (and d!418386 c!237777) b!1443605))

(assert (= (and d!418386 (not c!237777)) b!1443606))

(assert (= (and b!1443606 (not res!653597)) b!1443607))

(declare-fun m!1661773 () Bool)

(assert (=> b!1443605 m!1661773))

(declare-fun m!1661775 () Bool)

(assert (=> b!1443607 m!1661775))

(assert (=> b!1443508 d!418386))

(declare-fun d!418388 () Bool)

(declare-fun lt!496120 () Bool)

(assert (=> d!418388 (= lt!496120 (isEmpty!9325 (list!5963 (tokens!2004 thiss!10022))))))

(assert (=> d!418388 (= lt!496120 (isEmpty!9326 (c!237768 (tokens!2004 thiss!10022))))))

(assert (=> d!418388 (= (isEmpty!9319 (tokens!2004 thiss!10022)) lt!496120)))

(declare-fun bs!341954 () Bool)

(assert (= bs!341954 d!418388))

(assert (=> bs!341954 m!1661555))

(assert (=> bs!341954 m!1661555))

(declare-fun m!1661777 () Bool)

(assert (=> bs!341954 m!1661777))

(declare-fun m!1661779 () Bool)

(assert (=> bs!341954 m!1661779))

(assert (=> b!1443507 d!418388))

(declare-fun b!1443618 () Bool)

(declare-fun res!653603 () Bool)

(declare-fun e!920970 () Bool)

(assert (=> b!1443618 (=> (not res!653603) (not e!920970))))

(declare-fun lt!496123 () List!15044)

(declare-fun size!12277 (List!15044) Int)

(assert (=> b!1443618 (= res!653603 (= (size!12277 lt!496123) (+ (size!12277 lt!496053) (size!12277 lt!496048))))))

(declare-fun b!1443616 () Bool)

(declare-fun e!920969 () List!15044)

(assert (=> b!1443616 (= e!920969 lt!496048)))

(declare-fun b!1443619 () Bool)

(assert (=> b!1443619 (= e!920970 (or (not (= lt!496048 Nil!14978)) (= lt!496123 lt!496053)))))

(declare-fun d!418390 () Bool)

(assert (=> d!418390 e!920970))

(declare-fun res!653602 () Bool)

(assert (=> d!418390 (=> (not res!653602) (not e!920970))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2215 (List!15044) (InoxSet Token!4928))

(assert (=> d!418390 (= res!653602 (= (content!2215 lt!496123) ((_ map or) (content!2215 lt!496053) (content!2215 lt!496048))))))

(assert (=> d!418390 (= lt!496123 e!920969)))

(declare-fun c!237780 () Bool)

(assert (=> d!418390 (= c!237780 ((_ is Nil!14978) lt!496053))))

(assert (=> d!418390 (= (++!4022 lt!496053 lt!496048) lt!496123)))

(declare-fun b!1443617 () Bool)

(assert (=> b!1443617 (= e!920969 (Cons!14978 (h!20379 lt!496053) (++!4022 (t!130033 lt!496053) lt!496048)))))

(assert (= (and d!418390 c!237780) b!1443616))

(assert (= (and d!418390 (not c!237780)) b!1443617))

(assert (= (and d!418390 res!653602) b!1443618))

(assert (= (and b!1443618 res!653603) b!1443619))

(declare-fun m!1661781 () Bool)

(assert (=> b!1443618 m!1661781))

(declare-fun m!1661783 () Bool)

(assert (=> b!1443618 m!1661783))

(declare-fun m!1661785 () Bool)

(assert (=> b!1443618 m!1661785))

(declare-fun m!1661787 () Bool)

(assert (=> d!418390 m!1661787))

(declare-fun m!1661789 () Bool)

(assert (=> d!418390 m!1661789))

(declare-fun m!1661791 () Bool)

(assert (=> d!418390 m!1661791))

(declare-fun m!1661793 () Bool)

(assert (=> b!1443617 m!1661793))

(assert (=> b!1443502 d!418390))

(declare-fun b!1443693 () Bool)

(declare-fun e!921023 () Bool)

(assert (=> b!1443693 (= e!921023 true)))

(declare-fun b!1443692 () Bool)

(declare-fun e!921022 () Bool)

(assert (=> b!1443692 (= e!921022 e!921023)))

(declare-fun b!1443691 () Bool)

(declare-fun e!921021 () Bool)

(assert (=> b!1443691 (= e!921021 e!921022)))

(declare-fun d!418392 () Bool)

(assert (=> d!418392 e!921021))

(assert (= b!1443692 b!1443693))

(assert (= b!1443691 b!1443692))

(assert (= (and d!418392 ((_ is Cons!14979) (rules!11466 thiss!10022))) b!1443691))

(declare-fun order!9017 () Int)

(declare-fun order!9019 () Int)

(declare-fun lambda!62921 () Int)

(declare-fun dynLambda!6833 (Int Int) Int)

(declare-fun dynLambda!6834 (Int Int) Int)

(assert (=> b!1443693 (< (dynLambda!6833 order!9017 (toValue!3940 (transformation!2633 (h!20380 (rules!11466 thiss!10022))))) (dynLambda!6834 order!9019 lambda!62921))))

(declare-fun order!9021 () Int)

(declare-fun dynLambda!6835 (Int Int) Int)

(assert (=> b!1443693 (< (dynLambda!6835 order!9021 (toChars!3799 (transformation!2633 (h!20380 (rules!11466 thiss!10022))))) (dynLambda!6834 order!9019 lambda!62921))))

(assert (=> d!418392 true))

(declare-fun lt!496232 () Bool)

(declare-fun forall!3684 (List!15044 Int) Bool)

(assert (=> d!418392 (= lt!496232 (forall!3684 lt!496054 lambda!62921))))

(declare-fun e!921013 () Bool)

(assert (=> d!418392 (= lt!496232 e!921013)))

(declare-fun res!653646 () Bool)

(assert (=> d!418392 (=> res!653646 e!921013)))

(assert (=> d!418392 (= res!653646 (not ((_ is Cons!14978) lt!496054)))))

(assert (=> d!418392 (not (isEmpty!9324 (rules!11466 thiss!10022)))))

(assert (=> d!418392 (= (rulesProduceEachTokenIndividuallyList!728 Lexer!2290 (rules!11466 thiss!10022) lt!496054) lt!496232)))

(declare-fun b!1443681 () Bool)

(declare-fun e!921014 () Bool)

(assert (=> b!1443681 (= e!921013 e!921014)))

(declare-fun res!653647 () Bool)

(assert (=> b!1443681 (=> (not res!653647) (not e!921014))))

(assert (=> b!1443681 (= res!653647 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) (h!20379 lt!496054)))))

(declare-fun b!1443682 () Bool)

(assert (=> b!1443682 (= e!921014 (rulesProduceEachTokenIndividuallyList!728 Lexer!2290 (rules!11466 thiss!10022) (t!130033 lt!496054)))))

(assert (= (and d!418392 (not res!653646)) b!1443681))

(assert (= (and b!1443681 res!653647) b!1443682))

(declare-fun m!1661905 () Bool)

(assert (=> d!418392 m!1661905))

(assert (=> d!418392 m!1661679))

(assert (=> b!1443681 m!1661651))

(declare-fun m!1661907 () Bool)

(assert (=> b!1443682 m!1661907))

(assert (=> b!1443502 d!418392))

(declare-fun b!1443719 () Bool)

(declare-fun e!921043 () Bool)

(declare-fun lt!496331 () List!15044)

(assert (=> b!1443719 (= e!921043 (<= 0 (size!12277 lt!496331)))))

(declare-fun b!1443720 () Bool)

(declare-fun res!653676 () Bool)

(declare-fun e!921040 () Bool)

(assert (=> b!1443720 (=> (not res!653676) (not e!921040))))

(assert (=> b!1443720 (= res!653676 (rulesInvariant!2130 Lexer!2290 (rules!11466 thiss!10022)))))

(declare-fun d!418404 () Bool)

(declare-fun lt!496341 () Bool)

(declare-fun dropList!466 (BalanceConc!10126 Int) List!15044)

(assert (=> d!418404 (= lt!496341 (tokensListTwoByTwoPredicateSeparableList!239 Lexer!2290 (dropList!466 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) 0) (rules!11466 thiss!10022)))))

(declare-fun lt!496325 () Unit!23545)

(declare-fun lt!496356 () Unit!23545)

(assert (=> d!418404 (= lt!496325 lt!496356)))

(declare-fun lt!496336 () List!15044)

(assert (=> d!418404 (rulesProduceEachTokenIndividuallyList!728 Lexer!2290 (rules!11466 thiss!10022) lt!496336)))

(declare-fun lt!496330 () List!15044)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!58 (LexerInterface!2292 List!15045 List!15044 List!15044) Unit!23545)

(assert (=> d!418404 (= lt!496356 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!58 Lexer!2290 (rules!11466 thiss!10022) lt!496330 lt!496336))))

(assert (=> d!418404 e!921040))

(declare-fun res!653673 () Bool)

(assert (=> d!418404 (=> (not res!653673) (not e!921040))))

(assert (=> d!418404 (= res!653673 ((_ is Lexer!2290) Lexer!2290))))

(assert (=> d!418404 (= lt!496336 (dropList!466 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) 0))))

(assert (=> d!418404 (= lt!496330 (list!5963 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32))))))

(declare-fun lt!496357 () Unit!23545)

(declare-fun lt!496349 () Unit!23545)

(assert (=> d!418404 (= lt!496357 lt!496349)))

(declare-fun subseq!363 (List!15044 List!15044) Bool)

(declare-fun drop!734 (List!15044 Int) List!15044)

(assert (=> d!418404 (subseq!363 (drop!734 lt!496331 0) lt!496331)))

(declare-fun lemmaDropSubSeq!58 (List!15044 Int) Unit!23545)

(assert (=> d!418404 (= lt!496349 (lemmaDropSubSeq!58 lt!496331 0))))

(assert (=> d!418404 e!921043))

(declare-fun res!653672 () Bool)

(assert (=> d!418404 (=> (not res!653672) (not e!921043))))

(assert (=> d!418404 (= res!653672 (>= 0 0))))

(assert (=> d!418404 (= lt!496331 (list!5963 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32))))))

(declare-fun e!921041 () Bool)

(assert (=> d!418404 (= lt!496341 e!921041)))

(declare-fun res!653675 () Bool)

(assert (=> d!418404 (=> res!653675 e!921041)))

(assert (=> d!418404 (= res!653675 (not (< 0 (- (size!12276 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32))) 1))))))

(declare-fun e!921042 () Bool)

(assert (=> d!418404 e!921042))

(declare-fun res!653677 () Bool)

(assert (=> d!418404 (=> (not res!653677) (not e!921042))))

(assert (=> d!418404 (= res!653677 (>= 0 0))))

(assert (=> d!418404 (= (tokensListTwoByTwoPredicateSeparable!120 Lexer!2290 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) 0 (rules!11466 thiss!10022)) lt!496341)))

(declare-fun b!1443721 () Bool)

(assert (=> b!1443721 (= e!921042 (<= 0 (size!12276 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)))))))

(declare-fun b!1443722 () Bool)

(declare-fun res!653678 () Bool)

(assert (=> b!1443722 (=> (not res!653678) (not e!921040))))

(assert (=> b!1443722 (= res!653678 (not (isEmpty!9324 (rules!11466 thiss!10022))))))

(declare-fun b!1443723 () Bool)

(declare-fun res!653674 () Bool)

(assert (=> b!1443723 (=> (not res!653674) (not e!921040))))

(assert (=> b!1443723 (= res!653674 (subseq!363 lt!496336 lt!496330))))

(declare-fun b!1443724 () Bool)

(declare-fun e!921044 () Bool)

(assert (=> b!1443724 (= e!921041 e!921044)))

(declare-fun res!653671 () Bool)

(assert (=> b!1443724 (=> (not res!653671) (not e!921044))))

(assert (=> b!1443724 (= res!653671 (separableTokensPredicate!522 Lexer!2290 (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) 0) (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1)) (rules!11466 thiss!10022)))))

(declare-fun lt!496345 () Unit!23545)

(declare-fun Unit!23560 () Unit!23545)

(assert (=> b!1443724 (= lt!496345 Unit!23560)))

(assert (=> b!1443724 (> (size!12275 (charsOf!1519 (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1)))) 0)))

(declare-fun lt!496338 () Unit!23545)

(declare-fun Unit!23561 () Unit!23545)

(assert (=> b!1443724 (= lt!496338 Unit!23561)))

(assert (=> b!1443724 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1)))))

(declare-fun lt!496346 () Unit!23545)

(declare-fun Unit!23562 () Unit!23545)

(assert (=> b!1443724 (= lt!496346 Unit!23562)))

(assert (=> b!1443724 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) 0))))

(declare-fun lt!496333 () Unit!23545)

(declare-fun lt!496350 () Unit!23545)

(assert (=> b!1443724 (= lt!496333 lt!496350)))

(declare-fun lt!496351 () Token!4928)

(assert (=> b!1443724 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) lt!496351)))

(declare-fun lt!496352 () List!15044)

(assert (=> b!1443724 (= lt!496350 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!405 Lexer!2290 (rules!11466 thiss!10022) lt!496352 lt!496351))))

(assert (=> b!1443724 (= lt!496351 (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1)))))

(assert (=> b!1443724 (= lt!496352 (list!5963 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32))))))

(declare-fun lt!496332 () Unit!23545)

(declare-fun lt!496339 () Unit!23545)

(assert (=> b!1443724 (= lt!496332 lt!496339)))

(declare-fun lt!496327 () Token!4928)

(assert (=> b!1443724 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) lt!496327)))

(declare-fun lt!496340 () List!15044)

(assert (=> b!1443724 (= lt!496339 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!405 Lexer!2290 (rules!11466 thiss!10022) lt!496340 lt!496327))))

(assert (=> b!1443724 (= lt!496327 (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) 0))))

(assert (=> b!1443724 (= lt!496340 (list!5963 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32))))))

(declare-fun lt!496328 () Unit!23545)

(declare-fun lt!496343 () Unit!23545)

(assert (=> b!1443724 (= lt!496328 lt!496343)))

(declare-fun lt!496354 () List!15044)

(declare-fun lt!496334 () Int)

(declare-fun tail!2160 (List!15044) List!15044)

(assert (=> b!1443724 (= (tail!2160 (drop!734 lt!496354 lt!496334)) (drop!734 lt!496354 (+ lt!496334 1)))))

(declare-fun lemmaDropTail!466 (List!15044 Int) Unit!23545)

(assert (=> b!1443724 (= lt!496343 (lemmaDropTail!466 lt!496354 lt!496334))))

(assert (=> b!1443724 (= lt!496334 (+ 0 1))))

(assert (=> b!1443724 (= lt!496354 (list!5963 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32))))))

(declare-fun lt!496347 () Unit!23545)

(declare-fun lt!496326 () Unit!23545)

(assert (=> b!1443724 (= lt!496347 lt!496326)))

(declare-fun lt!496344 () List!15044)

(assert (=> b!1443724 (= (tail!2160 (drop!734 lt!496344 0)) (drop!734 lt!496344 (+ 0 1)))))

(assert (=> b!1443724 (= lt!496326 (lemmaDropTail!466 lt!496344 0))))

(assert (=> b!1443724 (= lt!496344 (list!5963 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32))))))

(declare-fun lt!496355 () Unit!23545)

(declare-fun lt!496329 () Unit!23545)

(assert (=> b!1443724 (= lt!496355 lt!496329)))

(declare-fun lt!496348 () List!15044)

(declare-fun lt!496353 () Int)

(declare-fun apply!3852 (List!15044 Int) Token!4928)

(assert (=> b!1443724 (= (head!2924 (drop!734 lt!496348 lt!496353)) (apply!3852 lt!496348 lt!496353))))

(declare-fun lemmaDropApply!486 (List!15044 Int) Unit!23545)

(assert (=> b!1443724 (= lt!496329 (lemmaDropApply!486 lt!496348 lt!496353))))

(assert (=> b!1443724 (= lt!496353 (+ 0 1))))

(assert (=> b!1443724 (= lt!496348 (list!5963 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32))))))

(declare-fun lt!496342 () Unit!23545)

(declare-fun lt!496335 () Unit!23545)

(assert (=> b!1443724 (= lt!496342 lt!496335)))

(declare-fun lt!496337 () List!15044)

(assert (=> b!1443724 (= (head!2924 (drop!734 lt!496337 0)) (apply!3852 lt!496337 0))))

(assert (=> b!1443724 (= lt!496335 (lemmaDropApply!486 lt!496337 0))))

(assert (=> b!1443724 (= lt!496337 (list!5963 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32))))))

(declare-fun b!1443725 () Bool)

(assert (=> b!1443725 (= e!921044 (tokensListTwoByTwoPredicateSeparable!120 Lexer!2290 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1) (rules!11466 thiss!10022)))))

(declare-fun b!1443726 () Bool)

(assert (=> b!1443726 (= e!921040 (rulesProduceEachTokenIndividuallyList!728 Lexer!2290 (rules!11466 thiss!10022) lt!496330))))

(assert (= (and d!418404 res!653677) b!1443721))

(assert (= (and d!418404 (not res!653675)) b!1443724))

(assert (= (and b!1443724 res!653671) b!1443725))

(assert (= (and d!418404 res!653672) b!1443719))

(assert (= (and d!418404 res!653673) b!1443722))

(assert (= (and b!1443722 res!653678) b!1443720))

(assert (= (and b!1443720 res!653676) b!1443723))

(assert (= (and b!1443723 res!653674) b!1443726))

(declare-fun m!1661975 () Bool)

(assert (=> b!1443719 m!1661975))

(declare-fun m!1661977 () Bool)

(assert (=> b!1443723 m!1661977))

(assert (=> b!1443722 m!1661679))

(declare-fun m!1661979 () Bool)

(assert (=> d!418404 m!1661979))

(declare-fun m!1661981 () Bool)

(assert (=> d!418404 m!1661981))

(declare-fun m!1661983 () Bool)

(assert (=> d!418404 m!1661983))

(declare-fun m!1661985 () Bool)

(assert (=> d!418404 m!1661985))

(assert (=> d!418404 m!1661591))

(declare-fun m!1661987 () Bool)

(assert (=> d!418404 m!1661987))

(assert (=> d!418404 m!1661591))

(declare-fun m!1661989 () Bool)

(assert (=> d!418404 m!1661989))

(assert (=> d!418404 m!1661591))

(declare-fun m!1661991 () Bool)

(assert (=> d!418404 m!1661991))

(assert (=> d!418404 m!1661979))

(declare-fun m!1661993 () Bool)

(assert (=> d!418404 m!1661993))

(assert (=> d!418404 m!1661987))

(declare-fun m!1661995 () Bool)

(assert (=> d!418404 m!1661995))

(assert (=> b!1443721 m!1661591))

(assert (=> b!1443721 m!1661991))

(assert (=> b!1443720 m!1661681))

(declare-fun m!1661997 () Bool)

(assert (=> b!1443724 m!1661997))

(declare-fun m!1661999 () Bool)

(assert (=> b!1443724 m!1661999))

(declare-fun m!1662001 () Bool)

(assert (=> b!1443724 m!1662001))

(declare-fun m!1662003 () Bool)

(assert (=> b!1443724 m!1662003))

(declare-fun m!1662005 () Bool)

(assert (=> b!1443724 m!1662005))

(declare-fun m!1662007 () Bool)

(assert (=> b!1443724 m!1662007))

(declare-fun m!1662009 () Bool)

(assert (=> b!1443724 m!1662009))

(declare-fun m!1662011 () Bool)

(assert (=> b!1443724 m!1662011))

(declare-fun m!1662013 () Bool)

(assert (=> b!1443724 m!1662013))

(declare-fun m!1662015 () Bool)

(assert (=> b!1443724 m!1662015))

(declare-fun m!1662017 () Bool)

(assert (=> b!1443724 m!1662017))

(assert (=> b!1443724 m!1662007))

(declare-fun m!1662019 () Bool)

(assert (=> b!1443724 m!1662019))

(assert (=> b!1443724 m!1661997))

(declare-fun m!1662021 () Bool)

(assert (=> b!1443724 m!1662021))

(declare-fun m!1662023 () Bool)

(assert (=> b!1443724 m!1662023))

(assert (=> b!1443724 m!1662021))

(assert (=> b!1443724 m!1662011))

(assert (=> b!1443724 m!1661591))

(assert (=> b!1443724 m!1661997))

(assert (=> b!1443724 m!1662017))

(declare-fun m!1662025 () Bool)

(assert (=> b!1443724 m!1662025))

(assert (=> b!1443724 m!1662003))

(declare-fun m!1662027 () Bool)

(assert (=> b!1443724 m!1662027))

(declare-fun m!1662029 () Bool)

(assert (=> b!1443724 m!1662029))

(declare-fun m!1662031 () Bool)

(assert (=> b!1443724 m!1662031))

(declare-fun m!1662033 () Bool)

(assert (=> b!1443724 m!1662033))

(assert (=> b!1443724 m!1661591))

(assert (=> b!1443724 m!1662021))

(declare-fun m!1662035 () Bool)

(assert (=> b!1443724 m!1662035))

(declare-fun m!1662037 () Bool)

(assert (=> b!1443724 m!1662037))

(declare-fun m!1662039 () Bool)

(assert (=> b!1443724 m!1662039))

(declare-fun m!1662041 () Bool)

(assert (=> b!1443724 m!1662041))

(declare-fun m!1662043 () Bool)

(assert (=> b!1443724 m!1662043))

(declare-fun m!1662045 () Bool)

(assert (=> b!1443724 m!1662045))

(assert (=> b!1443724 m!1662021))

(declare-fun m!1662047 () Bool)

(assert (=> b!1443724 m!1662047))

(assert (=> b!1443724 m!1662031))

(declare-fun m!1662049 () Bool)

(assert (=> b!1443724 m!1662049))

(assert (=> b!1443724 m!1661591))

(assert (=> b!1443724 m!1661989))

(assert (=> b!1443725 m!1661591))

(declare-fun m!1662051 () Bool)

(assert (=> b!1443725 m!1662051))

(declare-fun m!1662053 () Bool)

(assert (=> b!1443726 m!1662053))

(assert (=> b!1443502 d!418404))

(declare-fun e!921079 () Bool)

(declare-fun b!1443779 () Bool)

(assert (=> b!1443779 (= e!921079 (tokensListTwoByTwoPredicateSeparableList!239 Lexer!2290 (++!4022 lt!496053 lt!496048) (rules!11466 thiss!10022)))))

(declare-fun lt!496374 () Unit!23545)

(declare-fun lt!496373 () Unit!23545)

(assert (=> b!1443779 (= lt!496374 lt!496373)))

(assert (=> b!1443779 (rulesProduceEachTokenIndividuallyList!728 Lexer!2290 (rules!11466 thiss!10022) (++!4022 lt!496053 lt!496048))))

(assert (=> b!1443779 (= lt!496373 (lemmaRulesProduceEachTokenIndividuallyConcat!52 Lexer!2290 (rules!11466 thiss!10022) lt!496053 lt!496048))))

(declare-fun d!418426 () Bool)

(assert (=> d!418426 e!921079))

(declare-fun res!653701 () Bool)

(assert (=> d!418426 (=> (not res!653701) (not e!921079))))

(assert (=> d!418426 (= res!653701 ((_ is Lexer!2290) Lexer!2290))))

(declare-fun lt!496372 () Unit!23545)

(declare-fun choose!8898 (LexerInterface!2292 List!15044 List!15044 List!15045) Unit!23545)

(assert (=> d!418426 (= lt!496372 (choose!8898 Lexer!2290 lt!496053 lt!496048 (rules!11466 thiss!10022)))))

(assert (=> d!418426 (not (isEmpty!9324 (rules!11466 thiss!10022)))))

(assert (=> d!418426 (= (tokensListTwoByTwoPredicateConcatSeparableTokensList!52 Lexer!2290 lt!496053 lt!496048 (rules!11466 thiss!10022)) lt!496372)))

(declare-fun b!1443777 () Bool)

(declare-fun res!653699 () Bool)

(assert (=> b!1443777 (=> (not res!653699) (not e!921079))))

(assert (=> b!1443777 (= res!653699 (rulesProduceEachTokenIndividuallyList!728 Lexer!2290 (rules!11466 thiss!10022) lt!496053))))

(declare-fun b!1443776 () Bool)

(declare-fun res!653698 () Bool)

(assert (=> b!1443776 (=> (not res!653698) (not e!921079))))

(assert (=> b!1443776 (= res!653698 (rulesInvariant!2130 Lexer!2290 (rules!11466 thiss!10022)))))

(declare-fun b!1443778 () Bool)

(declare-fun res!653700 () Bool)

(assert (=> b!1443778 (=> (not res!653700) (not e!921079))))

(assert (=> b!1443778 (= res!653700 (rulesProduceEachTokenIndividuallyList!728 Lexer!2290 (rules!11466 thiss!10022) lt!496048))))

(assert (= (and d!418426 res!653701) b!1443776))

(assert (= (and b!1443776 res!653698) b!1443777))

(assert (= (and b!1443777 res!653699) b!1443778))

(assert (= (and b!1443778 res!653700) b!1443779))

(assert (=> b!1443779 m!1661601))

(assert (=> b!1443779 m!1661601))

(declare-fun m!1662079 () Bool)

(assert (=> b!1443779 m!1662079))

(assert (=> b!1443779 m!1661601))

(declare-fun m!1662081 () Bool)

(assert (=> b!1443779 m!1662081))

(assert (=> b!1443779 m!1661595))

(declare-fun m!1662083 () Bool)

(assert (=> d!418426 m!1662083))

(assert (=> d!418426 m!1661679))

(declare-fun m!1662085 () Bool)

(assert (=> b!1443778 m!1662085))

(declare-fun m!1662087 () Bool)

(assert (=> b!1443777 m!1662087))

(assert (=> b!1443776 m!1661681))

(assert (=> b!1443502 d!418426))

(declare-fun d!418432 () Bool)

(assert (=> d!418432 (rulesProduceEachTokenIndividuallyList!728 Lexer!2290 (rules!11466 thiss!10022) (++!4022 lt!496053 lt!496048))))

(declare-fun lt!496377 () Unit!23545)

(declare-fun choose!8899 (LexerInterface!2292 List!15045 List!15044 List!15044) Unit!23545)

(assert (=> d!418432 (= lt!496377 (choose!8899 Lexer!2290 (rules!11466 thiss!10022) lt!496053 lt!496048))))

(assert (=> d!418432 (not (isEmpty!9324 (rules!11466 thiss!10022)))))

(assert (=> d!418432 (= (lemmaRulesProduceEachTokenIndividuallyConcat!52 Lexer!2290 (rules!11466 thiss!10022) lt!496053 lt!496048) lt!496377)))

(declare-fun bs!341964 () Bool)

(assert (= bs!341964 d!418432))

(assert (=> bs!341964 m!1661601))

(assert (=> bs!341964 m!1661601))

(assert (=> bs!341964 m!1662081))

(declare-fun m!1662089 () Bool)

(assert (=> bs!341964 m!1662089))

(assert (=> bs!341964 m!1661679))

(assert (=> b!1443502 d!418432))

(declare-fun d!418434 () Bool)

(declare-fun e!921082 () Bool)

(assert (=> d!418434 e!921082))

(declare-fun res!653711 () Bool)

(assert (=> d!418434 (=> (not res!653711) (not e!921082))))

(declare-fun appendAssocInst!323 (Conc!5093 Conc!5093) Bool)

(assert (=> d!418434 (= res!653711 (appendAssocInst!323 (c!237768 (tokens!2004 thiss!10022)) (c!237768 (tokens!2004 other!32))))))

(declare-fun lt!496380 () BalanceConc!10126)

(declare-fun ++!4026 (Conc!5093 Conc!5093) Conc!5093)

(assert (=> d!418434 (= lt!496380 (BalanceConc!10127 (++!4026 (c!237768 (tokens!2004 thiss!10022)) (c!237768 (tokens!2004 other!32)))))))

(assert (=> d!418434 (= (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) lt!496380)))

(declare-fun b!1443788 () Bool)

(declare-fun res!653713 () Bool)

(assert (=> b!1443788 (=> (not res!653713) (not e!921082))))

(assert (=> b!1443788 (= res!653713 (isBalanced!1514 (++!4026 (c!237768 (tokens!2004 thiss!10022)) (c!237768 (tokens!2004 other!32)))))))

(declare-fun b!1443789 () Bool)

(declare-fun res!653710 () Bool)

(assert (=> b!1443789 (=> (not res!653710) (not e!921082))))

(declare-fun height!750 (Conc!5093) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1443789 (= res!653710 (<= (height!750 (++!4026 (c!237768 (tokens!2004 thiss!10022)) (c!237768 (tokens!2004 other!32)))) (+ (max!0 (height!750 (c!237768 (tokens!2004 thiss!10022))) (height!750 (c!237768 (tokens!2004 other!32)))) 1)))))

(declare-fun b!1443791 () Bool)

(assert (=> b!1443791 (= e!921082 (= (list!5963 lt!496380) (++!4022 (list!5963 (tokens!2004 thiss!10022)) (list!5963 (tokens!2004 other!32)))))))

(declare-fun b!1443790 () Bool)

(declare-fun res!653712 () Bool)

(assert (=> b!1443790 (=> (not res!653712) (not e!921082))))

(assert (=> b!1443790 (= res!653712 (>= (height!750 (++!4026 (c!237768 (tokens!2004 thiss!10022)) (c!237768 (tokens!2004 other!32)))) (max!0 (height!750 (c!237768 (tokens!2004 thiss!10022))) (height!750 (c!237768 (tokens!2004 other!32))))))))

(assert (= (and d!418434 res!653711) b!1443788))

(assert (= (and b!1443788 res!653713) b!1443789))

(assert (= (and b!1443789 res!653710) b!1443790))

(assert (= (and b!1443790 res!653712) b!1443791))

(declare-fun m!1662091 () Bool)

(assert (=> b!1443788 m!1662091))

(assert (=> b!1443788 m!1662091))

(declare-fun m!1662093 () Bool)

(assert (=> b!1443788 m!1662093))

(assert (=> b!1443790 m!1662091))

(assert (=> b!1443790 m!1662091))

(declare-fun m!1662095 () Bool)

(assert (=> b!1443790 m!1662095))

(declare-fun m!1662097 () Bool)

(assert (=> b!1443790 m!1662097))

(declare-fun m!1662099 () Bool)

(assert (=> b!1443790 m!1662099))

(declare-fun m!1662101 () Bool)

(assert (=> b!1443790 m!1662101))

(assert (=> b!1443790 m!1662099))

(assert (=> b!1443790 m!1662097))

(declare-fun m!1662103 () Bool)

(assert (=> b!1443791 m!1662103))

(assert (=> b!1443791 m!1661555))

(assert (=> b!1443791 m!1661567))

(assert (=> b!1443791 m!1661555))

(assert (=> b!1443791 m!1661567))

(declare-fun m!1662105 () Bool)

(assert (=> b!1443791 m!1662105))

(declare-fun m!1662107 () Bool)

(assert (=> d!418434 m!1662107))

(assert (=> d!418434 m!1662091))

(assert (=> b!1443789 m!1662091))

(assert (=> b!1443789 m!1662091))

(assert (=> b!1443789 m!1662095))

(assert (=> b!1443789 m!1662097))

(assert (=> b!1443789 m!1662099))

(assert (=> b!1443789 m!1662101))

(assert (=> b!1443789 m!1662099))

(assert (=> b!1443789 m!1662097))

(assert (=> b!1443502 d!418434))

(declare-fun d!418436 () Bool)

(assert (=> d!418436 (= (inv!19928 (tokens!2004 thiss!10022)) (isBalanced!1514 (c!237768 (tokens!2004 thiss!10022))))))

(declare-fun bs!341965 () Bool)

(assert (= bs!341965 d!418436))

(declare-fun m!1662109 () Bool)

(assert (=> bs!341965 m!1662109))

(assert (=> b!1443501 d!418436))

(declare-fun d!418438 () Bool)

(declare-fun c!237788 () Bool)

(assert (=> d!418438 (= c!237788 ((_ is Node!5093) (c!237768 (tokens!2004 thiss!10022))))))

(declare-fun e!921083 () Bool)

(assert (=> d!418438 (= (inv!19929 (c!237768 (tokens!2004 thiss!10022))) e!921083)))

(declare-fun b!1443792 () Bool)

(assert (=> b!1443792 (= e!921083 (inv!19933 (c!237768 (tokens!2004 thiss!10022))))))

(declare-fun b!1443793 () Bool)

(declare-fun e!921084 () Bool)

(assert (=> b!1443793 (= e!921083 e!921084)))

(declare-fun res!653714 () Bool)

(assert (=> b!1443793 (= res!653714 (not ((_ is Leaf!7611) (c!237768 (tokens!2004 thiss!10022)))))))

(assert (=> b!1443793 (=> res!653714 e!921084)))

(declare-fun b!1443794 () Bool)

(assert (=> b!1443794 (= e!921084 (inv!19934 (c!237768 (tokens!2004 thiss!10022))))))

(assert (= (and d!418438 c!237788) b!1443792))

(assert (= (and d!418438 (not c!237788)) b!1443793))

(assert (= (and b!1443793 (not res!653714)) b!1443794))

(declare-fun m!1662111 () Bool)

(assert (=> b!1443792 m!1662111))

(declare-fun m!1662113 () Bool)

(assert (=> b!1443794 m!1662113))

(assert (=> b!1443506 d!418438))

(declare-fun b!1443805 () Bool)

(declare-fun b_free!35759 () Bool)

(declare-fun b_next!36463 () Bool)

(assert (=> b!1443805 (= b_free!35759 (not b_next!36463))))

(declare-fun tp!407571 () Bool)

(declare-fun b_and!97751 () Bool)

(assert (=> b!1443805 (= tp!407571 b_and!97751)))

(declare-fun b_free!35761 () Bool)

(declare-fun b_next!36465 () Bool)

(assert (=> b!1443805 (= b_free!35761 (not b_next!36465))))

(declare-fun tp!407574 () Bool)

(declare-fun b_and!97753 () Bool)

(assert (=> b!1443805 (= tp!407574 b_and!97753)))

(declare-fun e!921096 () Bool)

(assert (=> b!1443805 (= e!921096 (and tp!407571 tp!407574))))

(declare-fun e!921093 () Bool)

(declare-fun b!1443804 () Bool)

(declare-fun tp!407572 () Bool)

(declare-fun inv!19923 (String!17871) Bool)

(declare-fun inv!19936 (TokenValueInjection!5106) Bool)

(assert (=> b!1443804 (= e!921093 (and tp!407572 (inv!19923 (tag!2897 (h!20380 (rules!11466 other!32)))) (inv!19936 (transformation!2633 (h!20380 (rules!11466 other!32)))) e!921096))))

(declare-fun b!1443803 () Bool)

(declare-fun e!921095 () Bool)

(declare-fun tp!407573 () Bool)

(assert (=> b!1443803 (= e!921095 (and e!921093 tp!407573))))

(assert (=> b!1443505 (= tp!407533 e!921095)))

(assert (= b!1443804 b!1443805))

(assert (= b!1443803 b!1443804))

(assert (= (and b!1443505 ((_ is Cons!14979) (rules!11466 other!32))) b!1443803))

(declare-fun m!1662115 () Bool)

(assert (=> b!1443804 m!1662115))

(declare-fun m!1662117 () Bool)

(assert (=> b!1443804 m!1662117))

(declare-fun e!921102 () Bool)

(declare-fun tp!407582 () Bool)

(declare-fun tp!407581 () Bool)

(declare-fun b!1443814 () Bool)

(assert (=> b!1443814 (= e!921102 (and (inv!19929 (left!12756 (c!237768 (tokens!2004 other!32)))) tp!407582 (inv!19929 (right!13086 (c!237768 (tokens!2004 other!32)))) tp!407581))))

(declare-fun b!1443816 () Bool)

(declare-fun e!921101 () Bool)

(declare-fun tp!407583 () Bool)

(assert (=> b!1443816 (= e!921101 tp!407583)))

(declare-fun b!1443815 () Bool)

(declare-fun inv!19937 (IArray!10191) Bool)

(assert (=> b!1443815 (= e!921102 (and (inv!19937 (xs!7830 (c!237768 (tokens!2004 other!32)))) e!921101))))

(assert (=> b!1443508 (= tp!407534 (and (inv!19929 (c!237768 (tokens!2004 other!32))) e!921102))))

(assert (= (and b!1443508 ((_ is Node!5093) (c!237768 (tokens!2004 other!32)))) b!1443814))

(assert (= b!1443815 b!1443816))

(assert (= (and b!1443508 ((_ is Leaf!7611) (c!237768 (tokens!2004 other!32)))) b!1443815))

(declare-fun m!1662119 () Bool)

(assert (=> b!1443814 m!1662119))

(declare-fun m!1662121 () Bool)

(assert (=> b!1443814 m!1662121))

(declare-fun m!1662123 () Bool)

(assert (=> b!1443815 m!1662123))

(assert (=> b!1443508 m!1661581))

(declare-fun b!1443819 () Bool)

(declare-fun b_free!35763 () Bool)

(declare-fun b_next!36467 () Bool)

(assert (=> b!1443819 (= b_free!35763 (not b_next!36467))))

(declare-fun tp!407584 () Bool)

(declare-fun b_and!97755 () Bool)

(assert (=> b!1443819 (= tp!407584 b_and!97755)))

(declare-fun b_free!35765 () Bool)

(declare-fun b_next!36469 () Bool)

(assert (=> b!1443819 (= b_free!35765 (not b_next!36469))))

(declare-fun tp!407587 () Bool)

(declare-fun b_and!97757 () Bool)

(assert (=> b!1443819 (= tp!407587 b_and!97757)))

(declare-fun e!921106 () Bool)

(assert (=> b!1443819 (= e!921106 (and tp!407584 tp!407587))))

(declare-fun tp!407585 () Bool)

(declare-fun e!921103 () Bool)

(declare-fun b!1443818 () Bool)

(assert (=> b!1443818 (= e!921103 (and tp!407585 (inv!19923 (tag!2897 (h!20380 (rules!11466 thiss!10022)))) (inv!19936 (transformation!2633 (h!20380 (rules!11466 thiss!10022)))) e!921106))))

(declare-fun b!1443817 () Bool)

(declare-fun e!921105 () Bool)

(declare-fun tp!407586 () Bool)

(assert (=> b!1443817 (= e!921105 (and e!921103 tp!407586))))

(assert (=> b!1443501 (= tp!407532 e!921105)))

(assert (= b!1443818 b!1443819))

(assert (= b!1443817 b!1443818))

(assert (= (and b!1443501 ((_ is Cons!14979) (rules!11466 thiss!10022))) b!1443817))

(declare-fun m!1662125 () Bool)

(assert (=> b!1443818 m!1662125))

(declare-fun m!1662127 () Bool)

(assert (=> b!1443818 m!1662127))

(declare-fun tp!407589 () Bool)

(declare-fun b!1443820 () Bool)

(declare-fun e!921108 () Bool)

(declare-fun tp!407588 () Bool)

(assert (=> b!1443820 (= e!921108 (and (inv!19929 (left!12756 (c!237768 (tokens!2004 thiss!10022)))) tp!407589 (inv!19929 (right!13086 (c!237768 (tokens!2004 thiss!10022)))) tp!407588))))

(declare-fun b!1443822 () Bool)

(declare-fun e!921107 () Bool)

(declare-fun tp!407590 () Bool)

(assert (=> b!1443822 (= e!921107 tp!407590)))

(declare-fun b!1443821 () Bool)

(assert (=> b!1443821 (= e!921108 (and (inv!19937 (xs!7830 (c!237768 (tokens!2004 thiss!10022)))) e!921107))))

(assert (=> b!1443506 (= tp!407531 (and (inv!19929 (c!237768 (tokens!2004 thiss!10022))) e!921108))))

(assert (= (and b!1443506 ((_ is Node!5093) (c!237768 (tokens!2004 thiss!10022)))) b!1443820))

(assert (= b!1443821 b!1443822))

(assert (= (and b!1443506 ((_ is Leaf!7611) (c!237768 (tokens!2004 thiss!10022)))) b!1443821))

(declare-fun m!1662129 () Bool)

(assert (=> b!1443820 m!1662129))

(declare-fun m!1662131 () Bool)

(assert (=> b!1443820 m!1662131))

(declare-fun m!1662133 () Bool)

(assert (=> b!1443821 m!1662133))

(assert (=> b!1443506 m!1661583))

(check-sat (not b!1443618) (not b_next!36465) (not b!1443560) (not d!418372) (not b!1443776) (not b!1443814) (not b!1443803) (not b!1443725) (not b!1443586) (not b!1443778) b_and!97753 (not d!418362) (not b!1443720) (not d!418384) (not b!1443508) (not d!418380) (not b!1443821) (not b!1443598) (not b!1443817) (not d!418392) (not b!1443789) (not b!1443792) (not d!418382) (not b!1443506) (not b!1443605) (not b!1443558) b_and!97757 (not b!1443585) (not b!1443593) (not b!1443607) (not b!1443721) (not d!418378) (not b!1443561) (not b!1443777) (not d!418388) (not b!1443818) b_and!97751 (not d!418366) (not b!1443723) b_and!97755 (not b!1443682) (not b!1443791) (not b_next!36469) (not b!1443820) (not b_next!36467) (not d!418374) (not b!1443537) (not b!1443617) (not b!1443596) (not d!418404) (not b!1443559) (not b!1443726) (not b!1443557) (not d!418368) (not b!1443719) (not b!1443794) (not b!1443724) (not d!418432) (not b!1443538) (not d!418434) (not d!418376) (not b!1443584) (not b!1443788) (not b!1443681) (not b!1443722) (not d!418360) (not d!418342) (not b!1443815) (not d!418358) (not b!1443583) (not b!1443594) (not d!418370) (not d!418390) (not b!1443790) (not b!1443691) (not b!1443779) (not b!1443822) (not b!1443595) (not d!418352) (not b!1443816) (not b!1443804) (not b!1443562) (not d!418426) (not b!1443597) (not b_next!36463) (not d!418436))
(check-sat (not b_next!36465) b_and!97757 b_and!97751 (not b_next!36467) (not b_next!36463) b_and!97753 b_and!97755 (not b_next!36469))
(get-model)

(declare-fun b!1443850 () Bool)

(declare-fun e!921133 () Bool)

(assert (=> b!1443850 (= e!921133 (subseq!363 (t!130033 lt!496336) (t!130033 lt!496330)))))

(declare-fun b!1443851 () Bool)

(declare-fun e!921134 () Bool)

(assert (=> b!1443851 (= e!921134 (subseq!363 lt!496336 (t!130033 lt!496330)))))

(declare-fun d!418452 () Bool)

(declare-fun res!653740 () Bool)

(declare-fun e!921135 () Bool)

(assert (=> d!418452 (=> res!653740 e!921135)))

(assert (=> d!418452 (= res!653740 ((_ is Nil!14978) lt!496336))))

(assert (=> d!418452 (= (subseq!363 lt!496336 lt!496330) e!921135)))

(declare-fun b!1443849 () Bool)

(declare-fun e!921132 () Bool)

(assert (=> b!1443849 (= e!921132 e!921134)))

(declare-fun res!653737 () Bool)

(assert (=> b!1443849 (=> res!653737 e!921134)))

(assert (=> b!1443849 (= res!653737 e!921133)))

(declare-fun res!653739 () Bool)

(assert (=> b!1443849 (=> (not res!653739) (not e!921133))))

(assert (=> b!1443849 (= res!653739 (= (h!20379 lt!496336) (h!20379 lt!496330)))))

(declare-fun b!1443848 () Bool)

(assert (=> b!1443848 (= e!921135 e!921132)))

(declare-fun res!653738 () Bool)

(assert (=> b!1443848 (=> (not res!653738) (not e!921132))))

(assert (=> b!1443848 (= res!653738 ((_ is Cons!14978) lt!496330))))

(assert (= (and d!418452 (not res!653740)) b!1443848))

(assert (= (and b!1443848 res!653738) b!1443849))

(assert (= (and b!1443849 res!653739) b!1443850))

(assert (= (and b!1443849 (not res!653737)) b!1443851))

(declare-fun m!1662153 () Bool)

(assert (=> b!1443850 m!1662153))

(declare-fun m!1662155 () Bool)

(assert (=> b!1443851 m!1662155))

(assert (=> b!1443723 d!418452))

(declare-fun d!418454 () Bool)

(declare-fun lt!496384 () Int)

(assert (=> d!418454 (= lt!496384 (size!12277 (list!5963 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)))))))

(declare-fun size!12278 (Conc!5093) Int)

(assert (=> d!418454 (= lt!496384 (size!12278 (c!237768 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)))))))

(assert (=> d!418454 (= (size!12276 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32))) lt!496384)))

(declare-fun bs!341967 () Bool)

(assert (= bs!341967 d!418454))

(assert (=> bs!341967 m!1661591))

(assert (=> bs!341967 m!1661989))

(assert (=> bs!341967 m!1661989))

(declare-fun m!1662157 () Bool)

(assert (=> bs!341967 m!1662157))

(declare-fun m!1662159 () Bool)

(assert (=> bs!341967 m!1662159))

(assert (=> b!1443721 d!418454))

(assert (=> b!1443508 d!418386))

(declare-fun d!418456 () Bool)

(declare-fun res!653742 () Bool)

(declare-fun e!921136 () Bool)

(assert (=> d!418456 (=> res!653742 e!921136)))

(assert (=> d!418456 (= res!653742 (or (not ((_ is Cons!14978) (Cons!14978 (h!20379 (t!130033 lt!496054)) (t!130033 (t!130033 lt!496054))))) (not ((_ is Cons!14978) (t!130033 (Cons!14978 (h!20379 (t!130033 lt!496054)) (t!130033 (t!130033 lt!496054))))))))))

(assert (=> d!418456 (= (tokensListTwoByTwoPredicateSeparableList!239 Lexer!2290 (Cons!14978 (h!20379 (t!130033 lt!496054)) (t!130033 (t!130033 lt!496054))) (rules!11466 thiss!10022)) e!921136)))

(declare-fun b!1443852 () Bool)

(declare-fun e!921137 () Bool)

(assert (=> b!1443852 (= e!921136 e!921137)))

(declare-fun res!653741 () Bool)

(assert (=> b!1443852 (=> (not res!653741) (not e!921137))))

(assert (=> b!1443852 (= res!653741 (separableTokensPredicate!522 Lexer!2290 (h!20379 (Cons!14978 (h!20379 (t!130033 lt!496054)) (t!130033 (t!130033 lt!496054)))) (h!20379 (t!130033 (Cons!14978 (h!20379 (t!130033 lt!496054)) (t!130033 (t!130033 lt!496054))))) (rules!11466 thiss!10022)))))

(declare-fun lt!496389 () Unit!23545)

(declare-fun Unit!23563 () Unit!23545)

(assert (=> b!1443852 (= lt!496389 Unit!23563)))

(assert (=> b!1443852 (> (size!12275 (charsOf!1519 (h!20379 (t!130033 (Cons!14978 (h!20379 (t!130033 lt!496054)) (t!130033 (t!130033 lt!496054))))))) 0)))

(declare-fun lt!496386 () Unit!23545)

(declare-fun Unit!23564 () Unit!23545)

(assert (=> b!1443852 (= lt!496386 Unit!23564)))

(assert (=> b!1443852 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) (h!20379 (t!130033 (Cons!14978 (h!20379 (t!130033 lt!496054)) (t!130033 (t!130033 lt!496054))))))))

(declare-fun lt!496385 () Unit!23545)

(declare-fun Unit!23565 () Unit!23545)

(assert (=> b!1443852 (= lt!496385 Unit!23565)))

(assert (=> b!1443852 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) (h!20379 (Cons!14978 (h!20379 (t!130033 lt!496054)) (t!130033 (t!130033 lt!496054)))))))

(declare-fun lt!496388 () Unit!23545)

(declare-fun lt!496391 () Unit!23545)

(assert (=> b!1443852 (= lt!496388 lt!496391)))

(assert (=> b!1443852 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) (h!20379 (t!130033 (Cons!14978 (h!20379 (t!130033 lt!496054)) (t!130033 (t!130033 lt!496054))))))))

(assert (=> b!1443852 (= lt!496391 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!405 Lexer!2290 (rules!11466 thiss!10022) (Cons!14978 (h!20379 (t!130033 lt!496054)) (t!130033 (t!130033 lt!496054))) (h!20379 (t!130033 (Cons!14978 (h!20379 (t!130033 lt!496054)) (t!130033 (t!130033 lt!496054)))))))))

(declare-fun lt!496390 () Unit!23545)

(declare-fun lt!496387 () Unit!23545)

(assert (=> b!1443852 (= lt!496390 lt!496387)))

(assert (=> b!1443852 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) (h!20379 (Cons!14978 (h!20379 (t!130033 lt!496054)) (t!130033 (t!130033 lt!496054)))))))

(assert (=> b!1443852 (= lt!496387 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!405 Lexer!2290 (rules!11466 thiss!10022) (Cons!14978 (h!20379 (t!130033 lt!496054)) (t!130033 (t!130033 lt!496054))) (h!20379 (Cons!14978 (h!20379 (t!130033 lt!496054)) (t!130033 (t!130033 lt!496054))))))))

(declare-fun b!1443853 () Bool)

(assert (=> b!1443853 (= e!921137 (tokensListTwoByTwoPredicateSeparableList!239 Lexer!2290 (Cons!14978 (h!20379 (t!130033 (Cons!14978 (h!20379 (t!130033 lt!496054)) (t!130033 (t!130033 lt!496054))))) (t!130033 (t!130033 (Cons!14978 (h!20379 (t!130033 lt!496054)) (t!130033 (t!130033 lt!496054)))))) (rules!11466 thiss!10022)))))

(assert (= (and d!418456 (not res!653742)) b!1443852))

(assert (= (and b!1443852 res!653741) b!1443853))

(declare-fun m!1662161 () Bool)

(assert (=> b!1443852 m!1662161))

(declare-fun m!1662163 () Bool)

(assert (=> b!1443852 m!1662163))

(declare-fun m!1662165 () Bool)

(assert (=> b!1443852 m!1662165))

(declare-fun m!1662167 () Bool)

(assert (=> b!1443852 m!1662167))

(declare-fun m!1662169 () Bool)

(assert (=> b!1443852 m!1662169))

(declare-fun m!1662171 () Bool)

(assert (=> b!1443852 m!1662171))

(assert (=> b!1443852 m!1662161))

(declare-fun m!1662173 () Bool)

(assert (=> b!1443852 m!1662173))

(declare-fun m!1662175 () Bool)

(assert (=> b!1443853 m!1662175))

(assert (=> b!1443538 d!418456))

(declare-fun d!418458 () Bool)

(declare-fun res!653749 () Bool)

(declare-fun e!921140 () Bool)

(assert (=> d!418458 (=> (not res!653749) (not e!921140))))

(assert (=> d!418458 (= res!653749 (= (csize!10416 (c!237768 (tokens!2004 other!32))) (+ (size!12278 (left!12756 (c!237768 (tokens!2004 other!32)))) (size!12278 (right!13086 (c!237768 (tokens!2004 other!32)))))))))

(assert (=> d!418458 (= (inv!19933 (c!237768 (tokens!2004 other!32))) e!921140)))

(declare-fun b!1443860 () Bool)

(declare-fun res!653750 () Bool)

(assert (=> b!1443860 (=> (not res!653750) (not e!921140))))

(assert (=> b!1443860 (= res!653750 (and (not (= (left!12756 (c!237768 (tokens!2004 other!32))) Empty!5093)) (not (= (right!13086 (c!237768 (tokens!2004 other!32))) Empty!5093))))))

(declare-fun b!1443861 () Bool)

(declare-fun res!653751 () Bool)

(assert (=> b!1443861 (=> (not res!653751) (not e!921140))))

(assert (=> b!1443861 (= res!653751 (= (cheight!5304 (c!237768 (tokens!2004 other!32))) (+ (max!0 (height!750 (left!12756 (c!237768 (tokens!2004 other!32)))) (height!750 (right!13086 (c!237768 (tokens!2004 other!32))))) 1)))))

(declare-fun b!1443862 () Bool)

(assert (=> b!1443862 (= e!921140 (<= 0 (cheight!5304 (c!237768 (tokens!2004 other!32)))))))

(assert (= (and d!418458 res!653749) b!1443860))

(assert (= (and b!1443860 res!653750) b!1443861))

(assert (= (and b!1443861 res!653751) b!1443862))

(declare-fun m!1662177 () Bool)

(assert (=> d!418458 m!1662177))

(declare-fun m!1662179 () Bool)

(assert (=> d!418458 m!1662179))

(declare-fun m!1662181 () Bool)

(assert (=> b!1443861 m!1662181))

(declare-fun m!1662183 () Bool)

(assert (=> b!1443861 m!1662183))

(assert (=> b!1443861 m!1662181))

(assert (=> b!1443861 m!1662183))

(declare-fun m!1662185 () Bool)

(assert (=> b!1443861 m!1662185))

(assert (=> b!1443605 d!418458))

(declare-fun bs!341968 () Bool)

(declare-fun d!418460 () Bool)

(assert (= bs!341968 (and d!418460 d!418392)))

(declare-fun lambda!62923 () Int)

(assert (=> bs!341968 (= lambda!62923 lambda!62921)))

(declare-fun b!1443867 () Bool)

(declare-fun e!921145 () Bool)

(assert (=> b!1443867 (= e!921145 true)))

(declare-fun b!1443866 () Bool)

(declare-fun e!921144 () Bool)

(assert (=> b!1443866 (= e!921144 e!921145)))

(declare-fun b!1443865 () Bool)

(declare-fun e!921143 () Bool)

(assert (=> b!1443865 (= e!921143 e!921144)))

(assert (=> d!418460 e!921143))

(assert (= b!1443866 b!1443867))

(assert (= b!1443865 b!1443866))

(assert (= (and d!418460 ((_ is Cons!14979) (rules!11466 thiss!10022))) b!1443865))

(assert (=> b!1443867 (< (dynLambda!6833 order!9017 (toValue!3940 (transformation!2633 (h!20380 (rules!11466 thiss!10022))))) (dynLambda!6834 order!9019 lambda!62923))))

(assert (=> b!1443867 (< (dynLambda!6835 order!9021 (toChars!3799 (transformation!2633 (h!20380 (rules!11466 thiss!10022))))) (dynLambda!6834 order!9019 lambda!62923))))

(assert (=> d!418460 true))

(declare-fun lt!496392 () Bool)

(assert (=> d!418460 (= lt!496392 (forall!3684 (t!130033 lt!496054) lambda!62923))))

(declare-fun e!921141 () Bool)

(assert (=> d!418460 (= lt!496392 e!921141)))

(declare-fun res!653752 () Bool)

(assert (=> d!418460 (=> res!653752 e!921141)))

(assert (=> d!418460 (= res!653752 (not ((_ is Cons!14978) (t!130033 lt!496054))))))

(assert (=> d!418460 (not (isEmpty!9324 (rules!11466 thiss!10022)))))

(assert (=> d!418460 (= (rulesProduceEachTokenIndividuallyList!728 Lexer!2290 (rules!11466 thiss!10022) (t!130033 lt!496054)) lt!496392)))

(declare-fun b!1443863 () Bool)

(declare-fun e!921142 () Bool)

(assert (=> b!1443863 (= e!921141 e!921142)))

(declare-fun res!653753 () Bool)

(assert (=> b!1443863 (=> (not res!653753) (not e!921142))))

(assert (=> b!1443863 (= res!653753 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) (h!20379 (t!130033 lt!496054))))))

(declare-fun b!1443864 () Bool)

(assert (=> b!1443864 (= e!921142 (rulesProduceEachTokenIndividuallyList!728 Lexer!2290 (rules!11466 thiss!10022) (t!130033 (t!130033 lt!496054))))))

(assert (= (and d!418460 (not res!653752)) b!1443863))

(assert (= (and b!1443863 res!653753) b!1443864))

(declare-fun m!1662187 () Bool)

(assert (=> d!418460 m!1662187))

(assert (=> d!418460 m!1661679))

(assert (=> b!1443863 m!1661647))

(declare-fun m!1662189 () Bool)

(assert (=> b!1443864 m!1662189))

(assert (=> b!1443682 d!418460))

(declare-fun b!1443868 () Bool)

(declare-fun e!921149 () Bool)

(declare-fun lt!496399 () List!15044)

(assert (=> b!1443868 (= e!921149 (<= (+ 0 1) (size!12277 lt!496399)))))

(declare-fun b!1443869 () Bool)

(declare-fun res!653759 () Bool)

(declare-fun e!921146 () Bool)

(assert (=> b!1443869 (=> (not res!653759) (not e!921146))))

(assert (=> b!1443869 (= res!653759 (rulesInvariant!2130 Lexer!2290 (rules!11466 thiss!10022)))))

(declare-fun d!418462 () Bool)

(declare-fun lt!496409 () Bool)

(assert (=> d!418462 (= lt!496409 (tokensListTwoByTwoPredicateSeparableList!239 Lexer!2290 (dropList!466 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1)) (rules!11466 thiss!10022)))))

(declare-fun lt!496393 () Unit!23545)

(declare-fun lt!496424 () Unit!23545)

(assert (=> d!418462 (= lt!496393 lt!496424)))

(declare-fun lt!496404 () List!15044)

(assert (=> d!418462 (rulesProduceEachTokenIndividuallyList!728 Lexer!2290 (rules!11466 thiss!10022) lt!496404)))

(declare-fun lt!496398 () List!15044)

(assert (=> d!418462 (= lt!496424 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!58 Lexer!2290 (rules!11466 thiss!10022) lt!496398 lt!496404))))

(assert (=> d!418462 e!921146))

(declare-fun res!653756 () Bool)

(assert (=> d!418462 (=> (not res!653756) (not e!921146))))

(assert (=> d!418462 (= res!653756 ((_ is Lexer!2290) Lexer!2290))))

(assert (=> d!418462 (= lt!496404 (dropList!466 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1)))))

(assert (=> d!418462 (= lt!496398 (list!5963 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32))))))

(declare-fun lt!496425 () Unit!23545)

(declare-fun lt!496417 () Unit!23545)

(assert (=> d!418462 (= lt!496425 lt!496417)))

(assert (=> d!418462 (subseq!363 (drop!734 lt!496399 (+ 0 1)) lt!496399)))

(assert (=> d!418462 (= lt!496417 (lemmaDropSubSeq!58 lt!496399 (+ 0 1)))))

(assert (=> d!418462 e!921149))

(declare-fun res!653755 () Bool)

(assert (=> d!418462 (=> (not res!653755) (not e!921149))))

(assert (=> d!418462 (= res!653755 (>= (+ 0 1) 0))))

(assert (=> d!418462 (= lt!496399 (list!5963 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32))))))

(declare-fun e!921147 () Bool)

(assert (=> d!418462 (= lt!496409 e!921147)))

(declare-fun res!653758 () Bool)

(assert (=> d!418462 (=> res!653758 e!921147)))

(assert (=> d!418462 (= res!653758 (not (< (+ 0 1) (- (size!12276 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32))) 1))))))

(declare-fun e!921148 () Bool)

(assert (=> d!418462 e!921148))

(declare-fun res!653760 () Bool)

(assert (=> d!418462 (=> (not res!653760) (not e!921148))))

(assert (=> d!418462 (= res!653760 (>= (+ 0 1) 0))))

(assert (=> d!418462 (= (tokensListTwoByTwoPredicateSeparable!120 Lexer!2290 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1) (rules!11466 thiss!10022)) lt!496409)))

(declare-fun b!1443870 () Bool)

(assert (=> b!1443870 (= e!921148 (<= (+ 0 1) (size!12276 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)))))))

(declare-fun b!1443871 () Bool)

(declare-fun res!653761 () Bool)

(assert (=> b!1443871 (=> (not res!653761) (not e!921146))))

(assert (=> b!1443871 (= res!653761 (not (isEmpty!9324 (rules!11466 thiss!10022))))))

(declare-fun b!1443872 () Bool)

(declare-fun res!653757 () Bool)

(assert (=> b!1443872 (=> (not res!653757) (not e!921146))))

(assert (=> b!1443872 (= res!653757 (subseq!363 lt!496404 lt!496398))))

(declare-fun b!1443873 () Bool)

(declare-fun e!921150 () Bool)

(assert (=> b!1443873 (= e!921147 e!921150)))

(declare-fun res!653754 () Bool)

(assert (=> b!1443873 (=> (not res!653754) (not e!921150))))

(assert (=> b!1443873 (= res!653754 (separableTokensPredicate!522 Lexer!2290 (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1)) (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1 1)) (rules!11466 thiss!10022)))))

(declare-fun lt!496413 () Unit!23545)

(declare-fun Unit!23566 () Unit!23545)

(assert (=> b!1443873 (= lt!496413 Unit!23566)))

(assert (=> b!1443873 (> (size!12275 (charsOf!1519 (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1 1)))) 0)))

(declare-fun lt!496406 () Unit!23545)

(declare-fun Unit!23567 () Unit!23545)

(assert (=> b!1443873 (= lt!496406 Unit!23567)))

(assert (=> b!1443873 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1 1)))))

(declare-fun lt!496414 () Unit!23545)

(declare-fun Unit!23568 () Unit!23545)

(assert (=> b!1443873 (= lt!496414 Unit!23568)))

(assert (=> b!1443873 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1)))))

(declare-fun lt!496401 () Unit!23545)

(declare-fun lt!496418 () Unit!23545)

(assert (=> b!1443873 (= lt!496401 lt!496418)))

(declare-fun lt!496419 () Token!4928)

(assert (=> b!1443873 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) lt!496419)))

(declare-fun lt!496420 () List!15044)

(assert (=> b!1443873 (= lt!496418 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!405 Lexer!2290 (rules!11466 thiss!10022) lt!496420 lt!496419))))

(assert (=> b!1443873 (= lt!496419 (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1 1)))))

(assert (=> b!1443873 (= lt!496420 (list!5963 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32))))))

(declare-fun lt!496400 () Unit!23545)

(declare-fun lt!496407 () Unit!23545)

(assert (=> b!1443873 (= lt!496400 lt!496407)))

(declare-fun lt!496395 () Token!4928)

(assert (=> b!1443873 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) lt!496395)))

(declare-fun lt!496408 () List!15044)

(assert (=> b!1443873 (= lt!496407 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!405 Lexer!2290 (rules!11466 thiss!10022) lt!496408 lt!496395))))

(assert (=> b!1443873 (= lt!496395 (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1)))))

(assert (=> b!1443873 (= lt!496408 (list!5963 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32))))))

(declare-fun lt!496396 () Unit!23545)

(declare-fun lt!496411 () Unit!23545)

(assert (=> b!1443873 (= lt!496396 lt!496411)))

(declare-fun lt!496422 () List!15044)

(declare-fun lt!496402 () Int)

(assert (=> b!1443873 (= (tail!2160 (drop!734 lt!496422 lt!496402)) (drop!734 lt!496422 (+ lt!496402 1)))))

(assert (=> b!1443873 (= lt!496411 (lemmaDropTail!466 lt!496422 lt!496402))))

(assert (=> b!1443873 (= lt!496402 (+ 0 1 1))))

(assert (=> b!1443873 (= lt!496422 (list!5963 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32))))))

(declare-fun lt!496415 () Unit!23545)

(declare-fun lt!496394 () Unit!23545)

(assert (=> b!1443873 (= lt!496415 lt!496394)))

(declare-fun lt!496412 () List!15044)

(assert (=> b!1443873 (= (tail!2160 (drop!734 lt!496412 (+ 0 1))) (drop!734 lt!496412 (+ 0 1 1)))))

(assert (=> b!1443873 (= lt!496394 (lemmaDropTail!466 lt!496412 (+ 0 1)))))

(assert (=> b!1443873 (= lt!496412 (list!5963 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32))))))

(declare-fun lt!496423 () Unit!23545)

(declare-fun lt!496397 () Unit!23545)

(assert (=> b!1443873 (= lt!496423 lt!496397)))

(declare-fun lt!496416 () List!15044)

(declare-fun lt!496421 () Int)

(assert (=> b!1443873 (= (head!2924 (drop!734 lt!496416 lt!496421)) (apply!3852 lt!496416 lt!496421))))

(assert (=> b!1443873 (= lt!496397 (lemmaDropApply!486 lt!496416 lt!496421))))

(assert (=> b!1443873 (= lt!496421 (+ 0 1 1))))

(assert (=> b!1443873 (= lt!496416 (list!5963 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32))))))

(declare-fun lt!496410 () Unit!23545)

(declare-fun lt!496403 () Unit!23545)

(assert (=> b!1443873 (= lt!496410 lt!496403)))

(declare-fun lt!496405 () List!15044)

(assert (=> b!1443873 (= (head!2924 (drop!734 lt!496405 (+ 0 1))) (apply!3852 lt!496405 (+ 0 1)))))

(assert (=> b!1443873 (= lt!496403 (lemmaDropApply!486 lt!496405 (+ 0 1)))))

(assert (=> b!1443873 (= lt!496405 (list!5963 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32))))))

(declare-fun b!1443874 () Bool)

(assert (=> b!1443874 (= e!921150 (tokensListTwoByTwoPredicateSeparable!120 Lexer!2290 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1 1) (rules!11466 thiss!10022)))))

(declare-fun b!1443875 () Bool)

(assert (=> b!1443875 (= e!921146 (rulesProduceEachTokenIndividuallyList!728 Lexer!2290 (rules!11466 thiss!10022) lt!496398))))

(assert (= (and d!418462 res!653760) b!1443870))

(assert (= (and d!418462 (not res!653758)) b!1443873))

(assert (= (and b!1443873 res!653754) b!1443874))

(assert (= (and d!418462 res!653755) b!1443868))

(assert (= (and d!418462 res!653756) b!1443871))

(assert (= (and b!1443871 res!653761) b!1443869))

(assert (= (and b!1443869 res!653759) b!1443872))

(assert (= (and b!1443872 res!653757) b!1443875))

(declare-fun m!1662191 () Bool)

(assert (=> b!1443868 m!1662191))

(declare-fun m!1662193 () Bool)

(assert (=> b!1443872 m!1662193))

(assert (=> b!1443871 m!1661679))

(declare-fun m!1662195 () Bool)

(assert (=> d!418462 m!1662195))

(declare-fun m!1662197 () Bool)

(assert (=> d!418462 m!1662197))

(declare-fun m!1662199 () Bool)

(assert (=> d!418462 m!1662199))

(declare-fun m!1662201 () Bool)

(assert (=> d!418462 m!1662201))

(assert (=> d!418462 m!1661591))

(declare-fun m!1662203 () Bool)

(assert (=> d!418462 m!1662203))

(assert (=> d!418462 m!1661591))

(assert (=> d!418462 m!1661989))

(assert (=> d!418462 m!1661591))

(assert (=> d!418462 m!1661991))

(assert (=> d!418462 m!1662195))

(declare-fun m!1662205 () Bool)

(assert (=> d!418462 m!1662205))

(assert (=> d!418462 m!1662203))

(declare-fun m!1662207 () Bool)

(assert (=> d!418462 m!1662207))

(assert (=> b!1443870 m!1661591))

(assert (=> b!1443870 m!1661991))

(assert (=> b!1443869 m!1661681))

(assert (=> b!1443873 m!1662021))

(assert (=> b!1443873 m!1662047))

(declare-fun m!1662209 () Bool)

(assert (=> b!1443873 m!1662209))

(declare-fun m!1662211 () Bool)

(assert (=> b!1443873 m!1662211))

(declare-fun m!1662213 () Bool)

(assert (=> b!1443873 m!1662213))

(declare-fun m!1662215 () Bool)

(assert (=> b!1443873 m!1662215))

(declare-fun m!1662217 () Bool)

(assert (=> b!1443873 m!1662217))

(declare-fun m!1662219 () Bool)

(assert (=> b!1443873 m!1662219))

(declare-fun m!1662221 () Bool)

(assert (=> b!1443873 m!1662221))

(declare-fun m!1662223 () Bool)

(assert (=> b!1443873 m!1662223))

(declare-fun m!1662225 () Bool)

(assert (=> b!1443873 m!1662225))

(assert (=> b!1443873 m!1662215))

(declare-fun m!1662227 () Bool)

(assert (=> b!1443873 m!1662227))

(assert (=> b!1443873 m!1662021))

(declare-fun m!1662229 () Bool)

(assert (=> b!1443873 m!1662229))

(declare-fun m!1662231 () Bool)

(assert (=> b!1443873 m!1662231))

(assert (=> b!1443873 m!1662229))

(assert (=> b!1443873 m!1662219))

(assert (=> b!1443873 m!1661591))

(assert (=> b!1443873 m!1662021))

(assert (=> b!1443873 m!1662225))

(declare-fun m!1662233 () Bool)

(assert (=> b!1443873 m!1662233))

(assert (=> b!1443873 m!1662211))

(declare-fun m!1662235 () Bool)

(assert (=> b!1443873 m!1662235))

(declare-fun m!1662237 () Bool)

(assert (=> b!1443873 m!1662237))

(declare-fun m!1662239 () Bool)

(assert (=> b!1443873 m!1662239))

(declare-fun m!1662241 () Bool)

(assert (=> b!1443873 m!1662241))

(assert (=> b!1443873 m!1661591))

(assert (=> b!1443873 m!1662229))

(declare-fun m!1662243 () Bool)

(assert (=> b!1443873 m!1662243))

(declare-fun m!1662245 () Bool)

(assert (=> b!1443873 m!1662245))

(declare-fun m!1662247 () Bool)

(assert (=> b!1443873 m!1662247))

(declare-fun m!1662249 () Bool)

(assert (=> b!1443873 m!1662249))

(declare-fun m!1662251 () Bool)

(assert (=> b!1443873 m!1662251))

(declare-fun m!1662253 () Bool)

(assert (=> b!1443873 m!1662253))

(assert (=> b!1443873 m!1662229))

(declare-fun m!1662255 () Bool)

(assert (=> b!1443873 m!1662255))

(assert (=> b!1443873 m!1662239))

(declare-fun m!1662257 () Bool)

(assert (=> b!1443873 m!1662257))

(assert (=> b!1443873 m!1661591))

(assert (=> b!1443873 m!1661989))

(assert (=> b!1443874 m!1661591))

(declare-fun m!1662259 () Bool)

(assert (=> b!1443874 m!1662259))

(declare-fun m!1662261 () Bool)

(assert (=> b!1443875 m!1662261))

(assert (=> b!1443725 d!418462))

(declare-fun d!418464 () Bool)

(assert (=> d!418464 (= (separableTokens!232 Lexer!2290 (tokens!2004 other!32) (rules!11466 other!32)) (tokensListTwoByTwoPredicateSeparable!120 Lexer!2290 (tokens!2004 other!32) 0 (rules!11466 other!32)))))

(declare-fun bs!341971 () Bool)

(assert (= bs!341971 d!418464))

(declare-fun m!1662269 () Bool)

(assert (=> bs!341971 m!1662269))

(assert (=> b!1443586 d!418464))

(declare-fun d!418470 () Bool)

(declare-fun lt!496431 () Bool)

(declare-fun isEmpty!9330 (List!15042) Bool)

(declare-fun list!5968 (BalanceConc!10124) List!15042)

(assert (=> d!418470 (= lt!496431 (isEmpty!9330 (list!5968 (_2!7961 lt!496114))))))

(declare-fun isEmpty!9331 (Conc!5092) Bool)

(assert (=> d!418470 (= lt!496431 (isEmpty!9331 (c!237766 (_2!7961 lt!496114))))))

(assert (=> d!418470 (= (isEmpty!9327 (_2!7961 lt!496114)) lt!496431)))

(declare-fun bs!341972 () Bool)

(assert (= bs!341972 d!418470))

(declare-fun m!1662271 () Bool)

(assert (=> bs!341972 m!1662271))

(assert (=> bs!341972 m!1662271))

(declare-fun m!1662273 () Bool)

(assert (=> bs!341972 m!1662273))

(declare-fun m!1662275 () Bool)

(assert (=> bs!341972 m!1662275))

(assert (=> b!1443597 d!418470))

(assert (=> d!418382 d!418368))

(declare-fun d!418472 () Bool)

(assert (=> d!418472 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) lt!496052)))

(assert (=> d!418472 true))

(declare-fun _$77!565 () Unit!23545)

(assert (=> d!418472 (= (choose!8897 Lexer!2290 (rules!11466 thiss!10022) lt!496048 lt!496052) _$77!565)))

(declare-fun bs!341974 () Bool)

(assert (= bs!341974 d!418472))

(assert (=> bs!341974 m!1661561))

(assert (=> d!418382 d!418472))

(declare-fun d!418488 () Bool)

(assert (=> d!418488 (= (isEmpty!9324 (rules!11466 thiss!10022)) ((_ is Nil!14979) (rules!11466 thiss!10022)))))

(assert (=> d!418382 d!418488))

(declare-fun d!418490 () Bool)

(assert (=> d!418490 (= (inv!19937 (xs!7830 (c!237768 (tokens!2004 thiss!10022)))) (<= (size!12277 (innerList!5153 (xs!7830 (c!237768 (tokens!2004 thiss!10022))))) 2147483647))))

(declare-fun bs!341975 () Bool)

(assert (= bs!341975 d!418490))

(declare-fun m!1662337 () Bool)

(assert (=> bs!341975 m!1662337))

(assert (=> b!1443821 d!418490))

(assert (=> b!1443506 d!418438))

(declare-fun d!418492 () Bool)

(declare-fun c!237801 () Bool)

(assert (=> d!418492 (= c!237801 ((_ is Node!5093) (left!12756 (c!237768 (tokens!2004 other!32)))))))

(declare-fun e!921181 () Bool)

(assert (=> d!418492 (= (inv!19929 (left!12756 (c!237768 (tokens!2004 other!32)))) e!921181)))

(declare-fun b!1443930 () Bool)

(assert (=> b!1443930 (= e!921181 (inv!19933 (left!12756 (c!237768 (tokens!2004 other!32)))))))

(declare-fun b!1443931 () Bool)

(declare-fun e!921182 () Bool)

(assert (=> b!1443931 (= e!921181 e!921182)))

(declare-fun res!653798 () Bool)

(assert (=> b!1443931 (= res!653798 (not ((_ is Leaf!7611) (left!12756 (c!237768 (tokens!2004 other!32))))))))

(assert (=> b!1443931 (=> res!653798 e!921182)))

(declare-fun b!1443932 () Bool)

(assert (=> b!1443932 (= e!921182 (inv!19934 (left!12756 (c!237768 (tokens!2004 other!32)))))))

(assert (= (and d!418492 c!237801) b!1443930))

(assert (= (and d!418492 (not c!237801)) b!1443931))

(assert (= (and b!1443931 (not res!653798)) b!1443932))

(declare-fun m!1662339 () Bool)

(assert (=> b!1443930 m!1662339))

(declare-fun m!1662341 () Bool)

(assert (=> b!1443932 m!1662341))

(assert (=> b!1443814 d!418492))

(declare-fun d!418494 () Bool)

(declare-fun c!237802 () Bool)

(assert (=> d!418494 (= c!237802 ((_ is Node!5093) (right!13086 (c!237768 (tokens!2004 other!32)))))))

(declare-fun e!921183 () Bool)

(assert (=> d!418494 (= (inv!19929 (right!13086 (c!237768 (tokens!2004 other!32)))) e!921183)))

(declare-fun b!1443933 () Bool)

(assert (=> b!1443933 (= e!921183 (inv!19933 (right!13086 (c!237768 (tokens!2004 other!32)))))))

(declare-fun b!1443934 () Bool)

(declare-fun e!921184 () Bool)

(assert (=> b!1443934 (= e!921183 e!921184)))

(declare-fun res!653799 () Bool)

(assert (=> b!1443934 (= res!653799 (not ((_ is Leaf!7611) (right!13086 (c!237768 (tokens!2004 other!32))))))))

(assert (=> b!1443934 (=> res!653799 e!921184)))

(declare-fun b!1443935 () Bool)

(assert (=> b!1443935 (= e!921184 (inv!19934 (right!13086 (c!237768 (tokens!2004 other!32)))))))

(assert (= (and d!418494 c!237802) b!1443933))

(assert (= (and d!418494 (not c!237802)) b!1443934))

(assert (= (and b!1443934 (not res!653799)) b!1443935))

(declare-fun m!1662343 () Bool)

(assert (=> b!1443933 m!1662343))

(declare-fun m!1662345 () Bool)

(assert (=> b!1443935 m!1662345))

(assert (=> b!1443814 d!418494))

(declare-fun d!418496 () Bool)

(declare-fun e!921210 () Bool)

(assert (=> d!418496 e!921210))

(declare-fun res!653825 () Bool)

(assert (=> d!418496 (=> (not res!653825) (not e!921210))))

(declare-fun e!921211 () Bool)

(assert (=> d!418496 (= res!653825 e!921211)))

(declare-fun res!653824 () Bool)

(assert (=> d!418496 (=> res!653824 e!921211)))

(assert (=> d!418496 (= res!653824 (not ((_ is Node!5093) (c!237768 (tokens!2004 thiss!10022)))))))

(assert (=> d!418496 (= (appendAssocInst!323 (c!237768 (tokens!2004 thiss!10022)) (c!237768 (tokens!2004 other!32))) true)))

(declare-fun b!1443954 () Bool)

(declare-fun e!921203 () Bool)

(declare-fun appendAssoc!71 (List!15044 List!15044 List!15044) Bool)

(assert (=> b!1443954 (= e!921203 (appendAssoc!71 (list!5965 (left!12756 (c!237768 (tokens!2004 thiss!10022)))) (list!5965 (left!12756 (right!13086 (c!237768 (tokens!2004 thiss!10022))))) (++!4022 (list!5965 (right!13086 (right!13086 (c!237768 (tokens!2004 thiss!10022))))) (list!5965 (c!237768 (tokens!2004 other!32))))))))

(declare-fun b!1443955 () Bool)

(declare-fun e!921208 () Bool)

(assert (=> b!1443955 (= e!921211 e!921208)))

(declare-fun res!653822 () Bool)

(assert (=> b!1443955 (=> (not res!653822) (not e!921208))))

(assert (=> b!1443955 (= res!653822 (appendAssoc!71 (list!5965 (left!12756 (c!237768 (tokens!2004 thiss!10022)))) (list!5965 (right!13086 (c!237768 (tokens!2004 thiss!10022)))) (list!5965 (c!237768 (tokens!2004 other!32)))))))

(declare-fun b!1443956 () Bool)

(declare-fun e!921209 () Bool)

(assert (=> b!1443956 (= e!921209 e!921203)))

(declare-fun res!653819 () Bool)

(assert (=> b!1443956 (=> (not res!653819) (not e!921203))))

(assert (=> b!1443956 (= res!653819 (appendAssoc!71 (list!5965 (left!12756 (right!13086 (c!237768 (tokens!2004 thiss!10022))))) (list!5965 (right!13086 (right!13086 (c!237768 (tokens!2004 thiss!10022))))) (list!5965 (c!237768 (tokens!2004 other!32)))))))

(declare-fun b!1443957 () Bool)

(declare-fun e!921204 () Bool)

(declare-fun e!921207 () Bool)

(assert (=> b!1443957 (= e!921204 e!921207)))

(declare-fun res!653821 () Bool)

(assert (=> b!1443957 (=> (not res!653821) (not e!921207))))

(assert (=> b!1443957 (= res!653821 (appendAssoc!71 (list!5965 (c!237768 (tokens!2004 thiss!10022))) (list!5965 (left!12756 (c!237768 (tokens!2004 other!32)))) (list!5965 (right!13086 (c!237768 (tokens!2004 other!32))))))))

(declare-fun b!1443958 () Bool)

(assert (=> b!1443958 (= e!921208 e!921209)))

(declare-fun res!653826 () Bool)

(assert (=> b!1443958 (=> res!653826 e!921209)))

(assert (=> b!1443958 (= res!653826 (not ((_ is Node!5093) (right!13086 (c!237768 (tokens!2004 thiss!10022))))))))

(declare-fun b!1443959 () Bool)

(assert (=> b!1443959 (= e!921210 e!921204)))

(declare-fun res!653820 () Bool)

(assert (=> b!1443959 (=> res!653820 e!921204)))

(assert (=> b!1443959 (= res!653820 (not ((_ is Node!5093) (c!237768 (tokens!2004 other!32)))))))

(declare-fun b!1443960 () Bool)

(declare-fun e!921205 () Bool)

(assert (=> b!1443960 (= e!921205 (appendAssoc!71 (++!4022 (list!5965 (c!237768 (tokens!2004 thiss!10022))) (list!5965 (left!12756 (left!12756 (c!237768 (tokens!2004 other!32)))))) (list!5965 (right!13086 (left!12756 (c!237768 (tokens!2004 other!32))))) (list!5965 (right!13086 (c!237768 (tokens!2004 other!32))))))))

(declare-fun b!1443961 () Bool)

(declare-fun e!921206 () Bool)

(assert (=> b!1443961 (= e!921206 e!921205)))

(declare-fun res!653823 () Bool)

(assert (=> b!1443961 (=> (not res!653823) (not e!921205))))

(assert (=> b!1443961 (= res!653823 (appendAssoc!71 (list!5965 (c!237768 (tokens!2004 thiss!10022))) (list!5965 (left!12756 (left!12756 (c!237768 (tokens!2004 other!32))))) (list!5965 (right!13086 (left!12756 (c!237768 (tokens!2004 other!32)))))))))

(declare-fun b!1443962 () Bool)

(assert (=> b!1443962 (= e!921207 e!921206)))

(declare-fun res!653818 () Bool)

(assert (=> b!1443962 (=> res!653818 e!921206)))

(assert (=> b!1443962 (= res!653818 (not ((_ is Node!5093) (left!12756 (c!237768 (tokens!2004 other!32))))))))

(assert (= (and d!418496 (not res!653824)) b!1443955))

(assert (= (and b!1443955 res!653822) b!1443958))

(assert (= (and b!1443958 (not res!653826)) b!1443956))

(assert (= (and b!1443956 res!653819) b!1443954))

(assert (= (and d!418496 res!653825) b!1443959))

(assert (= (and b!1443959 (not res!653820)) b!1443957))

(assert (= (and b!1443957 res!653821) b!1443962))

(assert (= (and b!1443962 (not res!653818)) b!1443961))

(assert (= (and b!1443961 res!653823) b!1443960))

(declare-fun m!1662347 () Bool)

(assert (=> b!1443954 m!1662347))

(declare-fun m!1662349 () Bool)

(assert (=> b!1443954 m!1662349))

(declare-fun m!1662351 () Bool)

(assert (=> b!1443954 m!1662351))

(assert (=> b!1443954 m!1662347))

(assert (=> b!1443954 m!1661725))

(declare-fun m!1662353 () Bool)

(assert (=> b!1443954 m!1662353))

(assert (=> b!1443954 m!1661725))

(assert (=> b!1443954 m!1662351))

(assert (=> b!1443954 m!1662349))

(assert (=> b!1443954 m!1662353))

(declare-fun m!1662355 () Bool)

(assert (=> b!1443954 m!1662355))

(assert (=> b!1443957 m!1661735))

(declare-fun m!1662357 () Bool)

(assert (=> b!1443957 m!1662357))

(declare-fun m!1662359 () Bool)

(assert (=> b!1443957 m!1662359))

(assert (=> b!1443957 m!1661735))

(assert (=> b!1443957 m!1662357))

(assert (=> b!1443957 m!1662359))

(declare-fun m!1662361 () Bool)

(assert (=> b!1443957 m!1662361))

(assert (=> b!1443960 m!1662359))

(assert (=> b!1443960 m!1661735))

(assert (=> b!1443960 m!1661735))

(declare-fun m!1662363 () Bool)

(assert (=> b!1443960 m!1662363))

(declare-fun m!1662365 () Bool)

(assert (=> b!1443960 m!1662365))

(assert (=> b!1443960 m!1662363))

(assert (=> b!1443960 m!1662365))

(declare-fun m!1662367 () Bool)

(assert (=> b!1443960 m!1662367))

(assert (=> b!1443960 m!1662359))

(declare-fun m!1662369 () Bool)

(assert (=> b!1443960 m!1662369))

(assert (=> b!1443960 m!1662367))

(assert (=> b!1443955 m!1662351))

(declare-fun m!1662371 () Bool)

(assert (=> b!1443955 m!1662371))

(assert (=> b!1443955 m!1661725))

(assert (=> b!1443955 m!1662351))

(assert (=> b!1443955 m!1662371))

(assert (=> b!1443955 m!1661725))

(declare-fun m!1662373 () Bool)

(assert (=> b!1443955 m!1662373))

(assert (=> b!1443956 m!1662349))

(assert (=> b!1443956 m!1662347))

(assert (=> b!1443956 m!1661725))

(assert (=> b!1443956 m!1662349))

(assert (=> b!1443956 m!1662347))

(assert (=> b!1443956 m!1661725))

(declare-fun m!1662375 () Bool)

(assert (=> b!1443956 m!1662375))

(assert (=> b!1443961 m!1661735))

(assert (=> b!1443961 m!1662363))

(assert (=> b!1443961 m!1662367))

(assert (=> b!1443961 m!1661735))

(assert (=> b!1443961 m!1662363))

(assert (=> b!1443961 m!1662367))

(declare-fun m!1662377 () Bool)

(assert (=> b!1443961 m!1662377))

(assert (=> d!418434 d!418496))

(declare-fun b!1444005 () Bool)

(declare-fun e!921239 () Conc!5093)

(declare-fun call!97705 () Conc!5093)

(assert (=> b!1444005 (= e!921239 call!97705)))

(declare-fun b!1444006 () Bool)

(declare-fun e!921241 () Conc!5093)

(declare-fun call!97699 () Conc!5093)

(assert (=> b!1444006 (= e!921241 call!97699)))

(declare-fun b!1444007 () Bool)

(declare-fun e!921236 () Bool)

(assert (=> b!1444007 (= e!921236 (isBalanced!1514 (c!237768 (tokens!2004 other!32))))))

(declare-fun call!97695 () Int)

(declare-fun c!237819 () Bool)

(declare-fun bm!97687 () Bool)

(assert (=> bm!97687 (= call!97695 (height!750 (ite c!237819 (right!13086 (c!237768 (tokens!2004 thiss!10022))) (left!12756 (c!237768 (tokens!2004 other!32))))))))

(declare-fun bm!97688 () Bool)

(declare-fun call!97703 () Int)

(assert (=> bm!97688 (= call!97703 (height!750 (ite c!237819 (c!237768 (tokens!2004 thiss!10022)) (right!13086 (c!237768 (tokens!2004 other!32))))))))

(declare-fun lt!496454 () Conc!5093)

(declare-fun call!97702 () Int)

(declare-fun bm!97689 () Bool)

(assert (=> bm!97689 (= call!97702 (height!750 (ite c!237819 (left!12756 (c!237768 (tokens!2004 thiss!10022))) lt!496454)))))

(declare-fun b!1444008 () Bool)

(declare-fun c!237826 () Bool)

(assert (=> b!1444008 (= c!237826 (>= call!97702 call!97695))))

(declare-fun e!921240 () Conc!5093)

(assert (=> b!1444008 (= e!921240 e!921241)))

(declare-fun bm!97690 () Bool)

(declare-fun call!97694 () Conc!5093)

(declare-fun call!97698 () Conc!5093)

(assert (=> bm!97690 (= call!97694 call!97698)))

(declare-fun lt!496452 () Conc!5093)

(declare-fun e!921237 () Bool)

(declare-fun b!1444009 () Bool)

(assert (=> b!1444009 (= e!921237 (= (list!5965 lt!496452) (++!4022 (list!5965 (c!237768 (tokens!2004 thiss!10022))) (list!5965 (c!237768 (tokens!2004 other!32))))))))

(declare-fun b!1444010 () Bool)

(declare-fun e!921232 () Conc!5093)

(declare-fun call!97692 () Conc!5093)

(assert (=> b!1444010 (= e!921232 call!97692)))

(declare-fun b!1444011 () Bool)

(declare-fun res!653840 () Bool)

(assert (=> b!1444011 (=> (not res!653840) (not e!921237))))

(assert (=> b!1444011 (= res!653840 (<= (height!750 lt!496452) (+ (max!0 (height!750 (c!237768 (tokens!2004 thiss!10022))) (height!750 (c!237768 (tokens!2004 other!32)))) 1)))))

(declare-fun bm!97691 () Bool)

(declare-fun call!97706 () Conc!5093)

(assert (=> bm!97691 (= call!97706 call!97698)))

(declare-fun b!1444012 () Bool)

(declare-fun e!921233 () Conc!5093)

(assert (=> b!1444012 (= e!921233 e!921240)))

(declare-fun lt!496453 () Int)

(assert (=> b!1444012 (= c!237819 (< lt!496453 (- 1)))))

(declare-fun b!1444013 () Bool)

(declare-fun c!237823 () Bool)

(assert (=> b!1444013 (= c!237823 (>= call!97703 call!97695))))

(declare-fun e!921238 () Conc!5093)

(assert (=> b!1444013 (= e!921240 e!921238)))

(declare-fun bm!97692 () Bool)

(declare-fun call!97704 () Conc!5093)

(declare-fun call!97700 () Conc!5093)

(assert (=> bm!97692 (= call!97704 call!97700)))

(declare-fun b!1444014 () Bool)

(declare-fun res!653837 () Bool)

(assert (=> b!1444014 (=> (not res!653837) (not e!921237))))

(assert (=> b!1444014 (= res!653837 (isBalanced!1514 lt!496452))))

(declare-fun b!1444015 () Bool)

(declare-fun call!97696 () Conc!5093)

(assert (=> b!1444015 (= e!921238 call!97696)))

(declare-fun b!1444016 () Bool)

(declare-fun call!97693 () Conc!5093)

(assert (=> b!1444016 (= e!921233 call!97693)))

(declare-fun bm!97693 () Bool)

(declare-fun call!97707 () Conc!5093)

(assert (=> bm!97693 (= call!97699 call!97707)))

(declare-fun b!1444017 () Bool)

(assert (=> b!1444017 (= e!921232 call!97692)))

(declare-fun b!1444018 () Bool)

(assert (=> b!1444018 (= e!921238 e!921232)))

(assert (=> b!1444018 (= lt!496454 call!97706)))

(declare-fun c!237821 () Bool)

(declare-fun call!97697 () Int)

(assert (=> b!1444018 (= c!237821 (= call!97702 (- call!97697 3)))))

(declare-fun call!97701 () Conc!5093)

(declare-fun c!237822 () Bool)

(declare-fun c!237825 () Bool)

(declare-fun bm!97694 () Bool)

(declare-fun lt!496455 () Conc!5093)

(declare-fun <>!99 (Conc!5093 Conc!5093) Conc!5093)

(assert (=> bm!97694 (= call!97693 (<>!99 (ite c!237825 (c!237768 (tokens!2004 thiss!10022)) (ite c!237819 (ite (or c!237826 c!237822) (left!12756 (c!237768 (tokens!2004 thiss!10022))) call!97704) (ite c!237823 call!97706 (ite c!237821 call!97701 lt!496454)))) (ite c!237825 (c!237768 (tokens!2004 other!32)) (ite c!237819 (ite c!237826 call!97694 (ite c!237822 call!97704 lt!496455)) (ite (or c!237823 c!237821) (right!13086 (c!237768 (tokens!2004 other!32))) call!97701)))))))

(declare-fun bm!97695 () Bool)

(assert (=> bm!97695 (= call!97707 call!97693)))

(declare-fun d!418498 () Bool)

(assert (=> d!418498 e!921237))

(declare-fun res!653841 () Bool)

(assert (=> d!418498 (=> (not res!653841) (not e!921237))))

(assert (=> d!418498 (= res!653841 (appendAssocInst!323 (c!237768 (tokens!2004 thiss!10022)) (c!237768 (tokens!2004 other!32))))))

(declare-fun e!921235 () Conc!5093)

(assert (=> d!418498 (= lt!496452 e!921235)))

(declare-fun c!237820 () Bool)

(assert (=> d!418498 (= c!237820 (= (c!237768 (tokens!2004 thiss!10022)) Empty!5093))))

(assert (=> d!418498 e!921236))

(declare-fun res!653839 () Bool)

(assert (=> d!418498 (=> (not res!653839) (not e!921236))))

(assert (=> d!418498 (= res!653839 (isBalanced!1514 (c!237768 (tokens!2004 thiss!10022))))))

(assert (=> d!418498 (= (++!4026 (c!237768 (tokens!2004 thiss!10022)) (c!237768 (tokens!2004 other!32))) lt!496452)))

(declare-fun b!1444019 () Bool)

(declare-fun e!921234 () Conc!5093)

(assert (=> b!1444019 (= e!921235 e!921234)))

(declare-fun c!237824 () Bool)

(assert (=> b!1444019 (= c!237824 (= (c!237768 (tokens!2004 other!32)) Empty!5093))))

(declare-fun bm!97696 () Bool)

(assert (=> bm!97696 (= call!97696 call!97707)))

(declare-fun bm!97697 () Bool)

(assert (=> bm!97697 (= call!97698 (++!4026 (ite c!237819 (ite c!237826 (right!13086 (c!237768 (tokens!2004 thiss!10022))) (right!13086 (right!13086 (c!237768 (tokens!2004 thiss!10022))))) (c!237768 (tokens!2004 thiss!10022))) (ite c!237819 (c!237768 (tokens!2004 other!32)) (ite c!237823 (left!12756 (c!237768 (tokens!2004 other!32))) (left!12756 (left!12756 (c!237768 (tokens!2004 other!32))))))))))

(declare-fun bm!97698 () Bool)

(assert (=> bm!97698 (= call!97701 call!97700)))

(declare-fun b!1444020 () Bool)

(assert (=> b!1444020 (= e!921241 e!921239)))

(assert (=> b!1444020 (= lt!496455 call!97694)))

(assert (=> b!1444020 (= c!237822 (= call!97697 (- call!97703 3)))))

(declare-fun b!1444021 () Bool)

(declare-fun res!653838 () Bool)

(assert (=> b!1444021 (=> (not res!653838) (not e!921237))))

(assert (=> b!1444021 (= res!653838 (>= (height!750 lt!496452) (max!0 (height!750 (c!237768 (tokens!2004 thiss!10022))) (height!750 (c!237768 (tokens!2004 other!32))))))))

(declare-fun b!1444022 () Bool)

(assert (=> b!1444022 (= e!921239 call!97705)))

(declare-fun bm!97699 () Bool)

(assert (=> bm!97699 (= call!97697 (height!750 (ite c!237819 lt!496455 (c!237768 (tokens!2004 other!32)))))))

(declare-fun b!1444023 () Bool)

(assert (=> b!1444023 (= c!237825 (and (<= (- 1) lt!496453) (<= lt!496453 1)))))

(assert (=> b!1444023 (= lt!496453 (- (height!750 (c!237768 (tokens!2004 other!32))) (height!750 (c!237768 (tokens!2004 thiss!10022)))))))

(assert (=> b!1444023 (= e!921234 e!921233)))

(declare-fun bm!97700 () Bool)

(assert (=> bm!97700 (= call!97692 call!97696)))

(declare-fun bm!97701 () Bool)

(assert (=> bm!97701 (= call!97705 call!97699)))

(declare-fun bm!97702 () Bool)

(assert (=> bm!97702 (= call!97700 (<>!99 (ite c!237819 (ite c!237822 (left!12756 (right!13086 (c!237768 (tokens!2004 thiss!10022)))) (left!12756 (c!237768 (tokens!2004 thiss!10022)))) (ite c!237821 lt!496454 (right!13086 (left!12756 (c!237768 (tokens!2004 other!32)))))) (ite c!237819 (ite c!237822 lt!496455 (left!12756 (right!13086 (c!237768 (tokens!2004 thiss!10022))))) (ite c!237821 (right!13086 (left!12756 (c!237768 (tokens!2004 other!32)))) (right!13086 (c!237768 (tokens!2004 other!32)))))))))

(declare-fun b!1444024 () Bool)

(assert (=> b!1444024 (= e!921234 (c!237768 (tokens!2004 thiss!10022)))))

(declare-fun b!1444025 () Bool)

(assert (=> b!1444025 (= e!921235 (c!237768 (tokens!2004 other!32)))))

(assert (= (and d!418498 res!653839) b!1444007))

(assert (= (and d!418498 c!237820) b!1444025))

(assert (= (and d!418498 (not c!237820)) b!1444019))

(assert (= (and b!1444019 c!237824) b!1444024))

(assert (= (and b!1444019 (not c!237824)) b!1444023))

(assert (= (and b!1444023 c!237825) b!1444016))

(assert (= (and b!1444023 (not c!237825)) b!1444012))

(assert (= (and b!1444012 c!237819) b!1444008))

(assert (= (and b!1444012 (not c!237819)) b!1444013))

(assert (= (and b!1444008 c!237826) b!1444006))

(assert (= (and b!1444008 (not c!237826)) b!1444020))

(assert (= (and b!1444020 c!237822) b!1444022))

(assert (= (and b!1444020 (not c!237822)) b!1444005))

(assert (= (or b!1444022 b!1444005) bm!97692))

(assert (= (or b!1444022 b!1444005) bm!97701))

(assert (= (or b!1444006 b!1444020) bm!97690))

(assert (= (or b!1444006 bm!97701) bm!97693))

(assert (= (and b!1444013 c!237823) b!1444015))

(assert (= (and b!1444013 (not c!237823)) b!1444018))

(assert (= (and b!1444018 c!237821) b!1444010))

(assert (= (and b!1444018 (not c!237821)) b!1444017))

(assert (= (or b!1444010 b!1444017) bm!97698))

(assert (= (or b!1444010 b!1444017) bm!97700))

(assert (= (or b!1444015 b!1444018) bm!97691))

(assert (= (or b!1444015 bm!97700) bm!97696))

(assert (= (or b!1444008 b!1444013) bm!97687))

(assert (= (or bm!97692 bm!97698) bm!97702))

(assert (= (or b!1444008 b!1444018) bm!97689))

(assert (= (or b!1444020 b!1444013) bm!97688))

(assert (= (or bm!97690 bm!97691) bm!97697))

(assert (= (or b!1444020 b!1444018) bm!97699))

(assert (= (or bm!97693 bm!97696) bm!97695))

(assert (= (or b!1444016 bm!97695) bm!97694))

(assert (= (and d!418498 res!653841) b!1444014))

(assert (= (and b!1444014 res!653837) b!1444011))

(assert (= (and b!1444011 res!653840) b!1444021))

(assert (= (and b!1444021 res!653838) b!1444009))

(declare-fun m!1662379 () Bool)

(assert (=> b!1444011 m!1662379))

(assert (=> b!1444011 m!1662097))

(assert (=> b!1444011 m!1662099))

(assert (=> b!1444011 m!1662097))

(assert (=> b!1444011 m!1662099))

(assert (=> b!1444011 m!1662101))

(declare-fun m!1662381 () Bool)

(assert (=> bm!97688 m!1662381))

(declare-fun m!1662383 () Bool)

(assert (=> bm!97687 m!1662383))

(declare-fun m!1662385 () Bool)

(assert (=> bm!97699 m!1662385))

(declare-fun m!1662387 () Bool)

(assert (=> b!1444009 m!1662387))

(assert (=> b!1444009 m!1661735))

(assert (=> b!1444009 m!1661725))

(assert (=> b!1444009 m!1661735))

(assert (=> b!1444009 m!1661725))

(declare-fun m!1662389 () Bool)

(assert (=> b!1444009 m!1662389))

(assert (=> d!418498 m!1662107))

(assert (=> d!418498 m!1662109))

(declare-fun m!1662391 () Bool)

(assert (=> bm!97689 m!1662391))

(assert (=> b!1444023 m!1662099))

(assert (=> b!1444023 m!1662097))

(assert (=> b!1444007 m!1661609))

(assert (=> b!1444021 m!1662379))

(assert (=> b!1444021 m!1662097))

(assert (=> b!1444021 m!1662099))

(assert (=> b!1444021 m!1662097))

(assert (=> b!1444021 m!1662099))

(assert (=> b!1444021 m!1662101))

(declare-fun m!1662393 () Bool)

(assert (=> bm!97694 m!1662393))

(declare-fun m!1662395 () Bool)

(assert (=> b!1444014 m!1662395))

(declare-fun m!1662397 () Bool)

(assert (=> bm!97697 m!1662397))

(declare-fun m!1662399 () Bool)

(assert (=> bm!97702 m!1662399))

(assert (=> d!418434 d!418498))

(declare-fun bs!341988 () Bool)

(declare-fun d!418500 () Bool)

(assert (= bs!341988 (and d!418500 d!418392)))

(declare-fun lambda!62937 () Int)

(assert (=> bs!341988 (= lambda!62937 lambda!62921)))

(declare-fun bs!341989 () Bool)

(assert (= bs!341989 (and d!418500 d!418460)))

(assert (=> bs!341989 (= lambda!62937 lambda!62923)))

(declare-fun b!1444071 () Bool)

(declare-fun e!921274 () Bool)

(assert (=> b!1444071 (= e!921274 true)))

(declare-fun b!1444070 () Bool)

(declare-fun e!921273 () Bool)

(assert (=> b!1444070 (= e!921273 e!921274)))

(declare-fun b!1444069 () Bool)

(declare-fun e!921272 () Bool)

(assert (=> b!1444069 (= e!921272 e!921273)))

(assert (=> d!418500 e!921272))

(assert (= b!1444070 b!1444071))

(assert (= b!1444069 b!1444070))

(assert (= (and d!418500 ((_ is Cons!14979) (rules!11466 thiss!10022))) b!1444069))

(assert (=> b!1444071 (< (dynLambda!6833 order!9017 (toValue!3940 (transformation!2633 (h!20380 (rules!11466 thiss!10022))))) (dynLambda!6834 order!9019 lambda!62937))))

(assert (=> b!1444071 (< (dynLambda!6835 order!9021 (toChars!3799 (transformation!2633 (h!20380 (rules!11466 thiss!10022))))) (dynLambda!6834 order!9019 lambda!62937))))

(assert (=> d!418500 true))

(declare-fun e!921271 () Bool)

(assert (=> d!418500 e!921271))

(declare-fun res!653873 () Bool)

(assert (=> d!418500 (=> (not res!653873) (not e!921271))))

(declare-fun lt!496516 () Bool)

(assert (=> d!418500 (= res!653873 (= lt!496516 (forall!3684 (list!5963 (tokens!2004 thiss!10022)) lambda!62937)))))

(declare-fun forall!3686 (BalanceConc!10126 Int) Bool)

(assert (=> d!418500 (= lt!496516 (forall!3686 (tokens!2004 thiss!10022) lambda!62937))))

(assert (=> d!418500 (not (isEmpty!9324 (rules!11466 thiss!10022)))))

(assert (=> d!418500 (= (rulesProduceEachTokenIndividually!848 Lexer!2290 (rules!11466 thiss!10022) (tokens!2004 thiss!10022)) lt!496516)))

(declare-fun b!1444068 () Bool)

(assert (=> b!1444068 (= e!921271 (= lt!496516 (rulesProduceEachTokenIndividuallyList!728 Lexer!2290 (rules!11466 thiss!10022) (list!5963 (tokens!2004 thiss!10022)))))))

(assert (= (and d!418500 res!653873) b!1444068))

(assert (=> d!418500 m!1661555))

(assert (=> d!418500 m!1661555))

(declare-fun m!1662555 () Bool)

(assert (=> d!418500 m!1662555))

(declare-fun m!1662557 () Bool)

(assert (=> d!418500 m!1662557))

(assert (=> d!418500 m!1661679))

(assert (=> b!1444068 m!1661555))

(assert (=> b!1444068 m!1661555))

(declare-fun m!1662559 () Bool)

(assert (=> b!1444068 m!1662559))

(assert (=> b!1443583 d!418500))

(declare-fun d!418534 () Bool)

(declare-fun res!653877 () Bool)

(declare-fun e!921280 () Bool)

(assert (=> d!418534 (=> (not res!653877) (not e!921280))))

(declare-fun rulesValid!966 (LexerInterface!2292 List!15045) Bool)

(assert (=> d!418534 (= res!653877 (rulesValid!966 Lexer!2290 (rules!11466 thiss!10022)))))

(assert (=> d!418534 (= (rulesInvariant!2130 Lexer!2290 (rules!11466 thiss!10022)) e!921280)))

(declare-fun b!1444077 () Bool)

(declare-datatypes ((List!15049 0))(
  ( (Nil!14983) (Cons!14983 (h!20384 String!17871) (t!130168 List!15049)) )
))
(declare-fun noDuplicateTag!966 (LexerInterface!2292 List!15045 List!15049) Bool)

(assert (=> b!1444077 (= e!921280 (noDuplicateTag!966 Lexer!2290 (rules!11466 thiss!10022) Nil!14983))))

(assert (= (and d!418534 res!653877) b!1444077))

(declare-fun m!1662573 () Bool)

(assert (=> d!418534 m!1662573))

(declare-fun m!1662575 () Bool)

(assert (=> b!1444077 m!1662575))

(assert (=> b!1443776 d!418534))

(declare-fun b!1444093 () Bool)

(declare-fun res!653895 () Bool)

(declare-fun e!921288 () Bool)

(assert (=> b!1444093 (=> (not res!653895) (not e!921288))))

(assert (=> b!1444093 (= res!653895 (isBalanced!1514 (right!13086 (c!237768 (tokens!2004 other!32)))))))

(declare-fun b!1444094 () Bool)

(declare-fun res!653893 () Bool)

(assert (=> b!1444094 (=> (not res!653893) (not e!921288))))

(assert (=> b!1444094 (= res!653893 (not (isEmpty!9326 (left!12756 (c!237768 (tokens!2004 other!32))))))))

(declare-fun b!1444095 () Bool)

(declare-fun e!921289 () Bool)

(assert (=> b!1444095 (= e!921289 e!921288)))

(declare-fun res!653898 () Bool)

(assert (=> b!1444095 (=> (not res!653898) (not e!921288))))

(assert (=> b!1444095 (= res!653898 (<= (- 1) (- (height!750 (left!12756 (c!237768 (tokens!2004 other!32)))) (height!750 (right!13086 (c!237768 (tokens!2004 other!32)))))))))

(declare-fun b!1444096 () Bool)

(declare-fun res!653896 () Bool)

(assert (=> b!1444096 (=> (not res!653896) (not e!921288))))

(assert (=> b!1444096 (= res!653896 (isBalanced!1514 (left!12756 (c!237768 (tokens!2004 other!32)))))))

(declare-fun d!418544 () Bool)

(declare-fun res!653894 () Bool)

(assert (=> d!418544 (=> res!653894 e!921289)))

(assert (=> d!418544 (= res!653894 (not ((_ is Node!5093) (c!237768 (tokens!2004 other!32)))))))

(assert (=> d!418544 (= (isBalanced!1514 (c!237768 (tokens!2004 other!32))) e!921289)))

(declare-fun b!1444097 () Bool)

(assert (=> b!1444097 (= e!921288 (not (isEmpty!9326 (right!13086 (c!237768 (tokens!2004 other!32))))))))

(declare-fun b!1444098 () Bool)

(declare-fun res!653897 () Bool)

(assert (=> b!1444098 (=> (not res!653897) (not e!921288))))

(assert (=> b!1444098 (= res!653897 (<= (- (height!750 (left!12756 (c!237768 (tokens!2004 other!32)))) (height!750 (right!13086 (c!237768 (tokens!2004 other!32))))) 1))))

(assert (= (and d!418544 (not res!653894)) b!1444095))

(assert (= (and b!1444095 res!653898) b!1444098))

(assert (= (and b!1444098 res!653897) b!1444096))

(assert (= (and b!1444096 res!653896) b!1444093))

(assert (= (and b!1444093 res!653895) b!1444094))

(assert (= (and b!1444094 res!653893) b!1444097))

(declare-fun m!1662581 () Bool)

(assert (=> b!1444097 m!1662581))

(assert (=> b!1444095 m!1662181))

(assert (=> b!1444095 m!1662183))

(declare-fun m!1662583 () Bool)

(assert (=> b!1444094 m!1662583))

(declare-fun m!1662585 () Bool)

(assert (=> b!1444096 m!1662585))

(declare-fun m!1662587 () Bool)

(assert (=> b!1444093 m!1662587))

(assert (=> b!1444098 m!1662181))

(assert (=> b!1444098 m!1662183))

(assert (=> d!418342 d!418544))

(declare-fun bs!341990 () Bool)

(declare-fun d!418548 () Bool)

(assert (= bs!341990 (and d!418548 d!418392)))

(declare-fun lambda!62938 () Int)

(assert (=> bs!341990 (= lambda!62938 lambda!62921)))

(declare-fun bs!341991 () Bool)

(assert (= bs!341991 (and d!418548 d!418460)))

(assert (=> bs!341991 (= lambda!62938 lambda!62923)))

(declare-fun bs!341992 () Bool)

(assert (= bs!341992 (and d!418548 d!418500)))

(assert (=> bs!341992 (= lambda!62938 lambda!62937)))

(declare-fun b!1444103 () Bool)

(declare-fun e!921294 () Bool)

(assert (=> b!1444103 (= e!921294 true)))

(declare-fun b!1444102 () Bool)

(declare-fun e!921293 () Bool)

(assert (=> b!1444102 (= e!921293 e!921294)))

(declare-fun b!1444101 () Bool)

(declare-fun e!921292 () Bool)

(assert (=> b!1444101 (= e!921292 e!921293)))

(assert (=> d!418548 e!921292))

(assert (= b!1444102 b!1444103))

(assert (= b!1444101 b!1444102))

(assert (= (and d!418548 ((_ is Cons!14979) (rules!11466 thiss!10022))) b!1444101))

(assert (=> b!1444103 (< (dynLambda!6833 order!9017 (toValue!3940 (transformation!2633 (h!20380 (rules!11466 thiss!10022))))) (dynLambda!6834 order!9019 lambda!62938))))

(assert (=> b!1444103 (< (dynLambda!6835 order!9021 (toChars!3799 (transformation!2633 (h!20380 (rules!11466 thiss!10022))))) (dynLambda!6834 order!9019 lambda!62938))))

(assert (=> d!418548 true))

(declare-fun lt!496519 () Bool)

(assert (=> d!418548 (= lt!496519 (forall!3684 lt!496048 lambda!62938))))

(declare-fun e!921290 () Bool)

(assert (=> d!418548 (= lt!496519 e!921290)))

(declare-fun res!653899 () Bool)

(assert (=> d!418548 (=> res!653899 e!921290)))

(assert (=> d!418548 (= res!653899 (not ((_ is Cons!14978) lt!496048)))))

(assert (=> d!418548 (not (isEmpty!9324 (rules!11466 thiss!10022)))))

(assert (=> d!418548 (= (rulesProduceEachTokenIndividuallyList!728 Lexer!2290 (rules!11466 thiss!10022) lt!496048) lt!496519)))

(declare-fun b!1444099 () Bool)

(declare-fun e!921291 () Bool)

(assert (=> b!1444099 (= e!921290 e!921291)))

(declare-fun res!653900 () Bool)

(assert (=> b!1444099 (=> (not res!653900) (not e!921291))))

(assert (=> b!1444099 (= res!653900 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) (h!20379 lt!496048)))))

(declare-fun b!1444100 () Bool)

(assert (=> b!1444100 (= e!921291 (rulesProduceEachTokenIndividuallyList!728 Lexer!2290 (rules!11466 thiss!10022) (t!130033 lt!496048)))))

(assert (= (and d!418548 (not res!653899)) b!1444099))

(assert (= (and b!1444099 res!653900) b!1444100))

(declare-fun m!1662589 () Bool)

(assert (=> d!418548 m!1662589))

(assert (=> d!418548 m!1661679))

(declare-fun m!1662591 () Bool)

(assert (=> b!1444099 m!1662591))

(declare-fun m!1662593 () Bool)

(assert (=> b!1444100 m!1662593))

(assert (=> b!1443778 d!418548))

(declare-fun d!418550 () Bool)

(declare-fun lt!496522 () Token!4928)

(declare-fun contains!2868 (List!15044 Token!4928) Bool)

(assert (=> d!418550 (contains!2868 (list!5963 (tokens!2004 thiss!10022)) lt!496522)))

(declare-fun e!921297 () Token!4928)

(assert (=> d!418550 (= lt!496522 e!921297)))

(declare-fun c!237832 () Bool)

(assert (=> d!418550 (= c!237832 (and ((_ is Cons!14978) (list!5963 (tokens!2004 thiss!10022))) ((_ is Nil!14978) (t!130033 (list!5963 (tokens!2004 thiss!10022))))))))

(assert (=> d!418550 (not (isEmpty!9325 (list!5963 (tokens!2004 thiss!10022))))))

(assert (=> d!418550 (= (last!178 (list!5963 (tokens!2004 thiss!10022))) lt!496522)))

(declare-fun b!1444108 () Bool)

(assert (=> b!1444108 (= e!921297 (h!20379 (list!5963 (tokens!2004 thiss!10022))))))

(declare-fun b!1444109 () Bool)

(assert (=> b!1444109 (= e!921297 (last!178 (t!130033 (list!5963 (tokens!2004 thiss!10022)))))))

(assert (= (and d!418550 c!237832) b!1444108))

(assert (= (and d!418550 (not c!237832)) b!1444109))

(assert (=> d!418550 m!1661555))

(declare-fun m!1662595 () Bool)

(assert (=> d!418550 m!1662595))

(assert (=> d!418550 m!1661555))

(assert (=> d!418550 m!1661777))

(declare-fun m!1662597 () Bool)

(assert (=> b!1444109 m!1662597))

(assert (=> d!418374 d!418550))

(assert (=> d!418374 d!418376))

(declare-fun b!1444120 () Bool)

(declare-fun e!921307 () Bool)

(declare-fun lt!496535 () List!15044)

(declare-fun lt!496537 () List!15044)

(assert (=> b!1444120 (= e!921307 (= (last!178 (++!4022 lt!496535 lt!496537)) (last!178 lt!496537)))))

(declare-fun b!1444121 () Bool)

(declare-fun res!653908 () Bool)

(assert (=> b!1444121 (= res!653908 (not (isEmpty!9325 lt!496537)))))

(assert (=> b!1444121 (=> (not res!653908) (not e!921307))))

(declare-fun e!921308 () Bool)

(assert (=> b!1444121 (= e!921308 e!921307)))

(declare-fun d!418552 () Bool)

(declare-fun lt!496533 () Token!4928)

(assert (=> d!418552 (= lt!496533 (last!178 (list!5965 (c!237768 (tokens!2004 thiss!10022)))))))

(declare-fun e!921309 () Token!4928)

(assert (=> d!418552 (= lt!496533 e!921309)))

(declare-fun c!237835 () Bool)

(assert (=> d!418552 (= c!237835 ((_ is Leaf!7611) (c!237768 (tokens!2004 thiss!10022))))))

(assert (=> d!418552 (isBalanced!1514 (c!237768 (tokens!2004 thiss!10022)))))

(assert (=> d!418552 (= (last!179 (c!237768 (tokens!2004 thiss!10022))) lt!496533)))

(declare-fun b!1444122 () Bool)

(assert (=> b!1444122 (= e!921309 (last!179 (right!13086 (c!237768 (tokens!2004 thiss!10022)))))))

(assert (=> b!1444122 (= lt!496535 (list!5965 (left!12756 (c!237768 (tokens!2004 thiss!10022)))))))

(assert (=> b!1444122 (= lt!496537 (list!5965 (right!13086 (c!237768 (tokens!2004 thiss!10022)))))))

(declare-fun lt!496536 () Unit!23545)

(declare-fun lemmaLastOfConcatIsLastOfRhs!5 (List!15044 List!15044) Unit!23545)

(assert (=> b!1444122 (= lt!496536 (lemmaLastOfConcatIsLastOfRhs!5 lt!496535 lt!496537))))

(declare-fun res!653909 () Bool)

(assert (=> b!1444122 (= res!653909 (isEmpty!9325 lt!496537))))

(declare-fun e!921306 () Bool)

(assert (=> b!1444122 (=> (not res!653909) (not e!921306))))

(declare-fun res!653907 () Bool)

(assert (=> b!1444122 (= res!653907 e!921306)))

(assert (=> b!1444122 (=> res!653907 e!921308)))

(assert (=> b!1444122 e!921308))

(declare-fun lt!496534 () Unit!23545)

(assert (=> b!1444122 (= lt!496534 lt!496536)))

(declare-fun b!1444123 () Bool)

(declare-fun last!180 (IArray!10191) Token!4928)

(assert (=> b!1444123 (= e!921309 (last!180 (xs!7830 (c!237768 (tokens!2004 thiss!10022)))))))

(declare-fun b!1444124 () Bool)

(assert (=> b!1444124 (= e!921306 (= (last!178 (++!4022 lt!496535 lt!496537)) (last!178 lt!496535)))))

(assert (= (and d!418552 c!237835) b!1444123))

(assert (= (and d!418552 (not c!237835)) b!1444122))

(assert (= (and b!1444122 res!653909) b!1444124))

(assert (= (and b!1444122 (not res!653907)) b!1444121))

(assert (= (and b!1444121 res!653908) b!1444120))

(declare-fun m!1662599 () Bool)

(assert (=> b!1444120 m!1662599))

(assert (=> b!1444120 m!1662599))

(declare-fun m!1662601 () Bool)

(assert (=> b!1444120 m!1662601))

(declare-fun m!1662603 () Bool)

(assert (=> b!1444120 m!1662603))

(assert (=> d!418552 m!1661735))

(assert (=> d!418552 m!1661735))

(declare-fun m!1662605 () Bool)

(assert (=> d!418552 m!1662605))

(assert (=> d!418552 m!1662109))

(assert (=> b!1444124 m!1662599))

(assert (=> b!1444124 m!1662599))

(assert (=> b!1444124 m!1662601))

(declare-fun m!1662607 () Bool)

(assert (=> b!1444124 m!1662607))

(declare-fun m!1662609 () Bool)

(assert (=> b!1444122 m!1662609))

(declare-fun m!1662611 () Bool)

(assert (=> b!1444122 m!1662611))

(assert (=> b!1444122 m!1662371))

(declare-fun m!1662613 () Bool)

(assert (=> b!1444122 m!1662613))

(assert (=> b!1444122 m!1662351))

(declare-fun m!1662615 () Bool)

(assert (=> b!1444123 m!1662615))

(assert (=> b!1444121 m!1662613))

(assert (=> d!418374 d!418552))

(assert (=> d!418374 d!418388))

(declare-fun d!418554 () Bool)

(declare-fun lt!496538 () Bool)

(assert (=> d!418554 (= lt!496538 (isEmpty!9330 (list!5968 (_2!7961 lt!496106))))))

(assert (=> d!418554 (= lt!496538 (isEmpty!9331 (c!237766 (_2!7961 lt!496106))))))

(assert (=> d!418554 (= (isEmpty!9327 (_2!7961 lt!496106)) lt!496538)))

(declare-fun bs!341993 () Bool)

(assert (= bs!341993 d!418554))

(declare-fun m!1662617 () Bool)

(assert (=> bs!341993 m!1662617))

(assert (=> bs!341993 m!1662617))

(declare-fun m!1662619 () Bool)

(assert (=> bs!341993 m!1662619))

(declare-fun m!1662621 () Bool)

(assert (=> bs!341993 m!1662621))

(assert (=> b!1443594 d!418554))

(declare-fun b!1444135 () Bool)

(declare-fun e!921315 () List!15044)

(declare-fun list!5969 (IArray!10191) List!15044)

(assert (=> b!1444135 (= e!921315 (list!5969 (xs!7830 (c!237768 (tokens!2004 other!32)))))))

(declare-fun b!1444136 () Bool)

(assert (=> b!1444136 (= e!921315 (++!4022 (list!5965 (left!12756 (c!237768 (tokens!2004 other!32)))) (list!5965 (right!13086 (c!237768 (tokens!2004 other!32))))))))

(declare-fun b!1444134 () Bool)

(declare-fun e!921314 () List!15044)

(assert (=> b!1444134 (= e!921314 e!921315)))

(declare-fun c!237841 () Bool)

(assert (=> b!1444134 (= c!237841 ((_ is Leaf!7611) (c!237768 (tokens!2004 other!32))))))

(declare-fun d!418556 () Bool)

(declare-fun c!237840 () Bool)

(assert (=> d!418556 (= c!237840 ((_ is Empty!5093) (c!237768 (tokens!2004 other!32))))))

(assert (=> d!418556 (= (list!5965 (c!237768 (tokens!2004 other!32))) e!921314)))

(declare-fun b!1444133 () Bool)

(assert (=> b!1444133 (= e!921314 Nil!14978)))

(assert (= (and d!418556 c!237840) b!1444133))

(assert (= (and d!418556 (not c!237840)) b!1444134))

(assert (= (and b!1444134 c!237841) b!1444135))

(assert (= (and b!1444134 (not c!237841)) b!1444136))

(declare-fun m!1662623 () Bool)

(assert (=> b!1444135 m!1662623))

(assert (=> b!1444136 m!1662357))

(assert (=> b!1444136 m!1662359))

(assert (=> b!1444136 m!1662357))

(assert (=> b!1444136 m!1662359))

(declare-fun m!1662625 () Bool)

(assert (=> b!1444136 m!1662625))

(assert (=> d!418370 d!418556))

(declare-fun d!418558 () Bool)

(declare-fun lt!496541 () Int)

(assert (=> d!418558 (>= lt!496541 0)))

(declare-fun e!921318 () Int)

(assert (=> d!418558 (= lt!496541 e!921318)))

(declare-fun c!237844 () Bool)

(assert (=> d!418558 (= c!237844 ((_ is Nil!14978) lt!496331))))

(assert (=> d!418558 (= (size!12277 lt!496331) lt!496541)))

(declare-fun b!1444141 () Bool)

(assert (=> b!1444141 (= e!921318 0)))

(declare-fun b!1444142 () Bool)

(assert (=> b!1444142 (= e!921318 (+ 1 (size!12277 (t!130033 lt!496331))))))

(assert (= (and d!418558 c!237844) b!1444141))

(assert (= (and d!418558 (not c!237844)) b!1444142))

(declare-fun m!1662627 () Bool)

(assert (=> b!1444142 m!1662627))

(assert (=> b!1443719 d!418558))

(declare-fun d!418560 () Bool)

(assert (=> d!418560 (= (isEmpty!9325 (list!5963 (tokens!2004 thiss!10022))) ((_ is Nil!14978) (list!5963 (tokens!2004 thiss!10022))))))

(assert (=> d!418388 d!418560))

(assert (=> d!418388 d!418376))

(declare-fun d!418562 () Bool)

(declare-fun lt!496544 () Bool)

(assert (=> d!418562 (= lt!496544 (isEmpty!9325 (list!5965 (c!237768 (tokens!2004 thiss!10022)))))))

(assert (=> d!418562 (= lt!496544 (= (size!12278 (c!237768 (tokens!2004 thiss!10022))) 0))))

(assert (=> d!418562 (= (isEmpty!9326 (c!237768 (tokens!2004 thiss!10022))) lt!496544)))

(declare-fun bs!341994 () Bool)

(assert (= bs!341994 d!418562))

(assert (=> bs!341994 m!1661735))

(assert (=> bs!341994 m!1661735))

(declare-fun m!1662629 () Bool)

(assert (=> bs!341994 m!1662629))

(declare-fun m!1662631 () Bool)

(assert (=> bs!341994 m!1662631))

(assert (=> d!418388 d!418562))

(assert (=> d!418362 d!418534))

(assert (=> b!1443562 d!418464))

(declare-fun b!1444143 () Bool)

(declare-fun res!653912 () Bool)

(declare-fun e!921319 () Bool)

(assert (=> b!1444143 (=> (not res!653912) (not e!921319))))

(assert (=> b!1444143 (= res!653912 (isBalanced!1514 (right!13086 (c!237768 (tokens!2004 thiss!10022)))))))

(declare-fun b!1444144 () Bool)

(declare-fun res!653910 () Bool)

(assert (=> b!1444144 (=> (not res!653910) (not e!921319))))

(assert (=> b!1444144 (= res!653910 (not (isEmpty!9326 (left!12756 (c!237768 (tokens!2004 thiss!10022))))))))

(declare-fun b!1444145 () Bool)

(declare-fun e!921320 () Bool)

(assert (=> b!1444145 (= e!921320 e!921319)))

(declare-fun res!653915 () Bool)

(assert (=> b!1444145 (=> (not res!653915) (not e!921319))))

(assert (=> b!1444145 (= res!653915 (<= (- 1) (- (height!750 (left!12756 (c!237768 (tokens!2004 thiss!10022)))) (height!750 (right!13086 (c!237768 (tokens!2004 thiss!10022)))))))))

(declare-fun b!1444146 () Bool)

(declare-fun res!653913 () Bool)

(assert (=> b!1444146 (=> (not res!653913) (not e!921319))))

(assert (=> b!1444146 (= res!653913 (isBalanced!1514 (left!12756 (c!237768 (tokens!2004 thiss!10022)))))))

(declare-fun d!418564 () Bool)

(declare-fun res!653911 () Bool)

(assert (=> d!418564 (=> res!653911 e!921320)))

(assert (=> d!418564 (= res!653911 (not ((_ is Node!5093) (c!237768 (tokens!2004 thiss!10022)))))))

(assert (=> d!418564 (= (isBalanced!1514 (c!237768 (tokens!2004 thiss!10022))) e!921320)))

(declare-fun b!1444147 () Bool)

(assert (=> b!1444147 (= e!921319 (not (isEmpty!9326 (right!13086 (c!237768 (tokens!2004 thiss!10022))))))))

(declare-fun b!1444148 () Bool)

(declare-fun res!653914 () Bool)

(assert (=> b!1444148 (=> (not res!653914) (not e!921319))))

(assert (=> b!1444148 (= res!653914 (<= (- (height!750 (left!12756 (c!237768 (tokens!2004 thiss!10022)))) (height!750 (right!13086 (c!237768 (tokens!2004 thiss!10022))))) 1))))

(assert (= (and d!418564 (not res!653911)) b!1444145))

(assert (= (and b!1444145 res!653915) b!1444148))

(assert (= (and b!1444148 res!653914) b!1444146))

(assert (= (and b!1444146 res!653913) b!1444143))

(assert (= (and b!1444143 res!653912) b!1444144))

(assert (= (and b!1444144 res!653910) b!1444147))

(declare-fun m!1662633 () Bool)

(assert (=> b!1444147 m!1662633))

(declare-fun m!1662635 () Bool)

(assert (=> b!1444145 m!1662635))

(declare-fun m!1662637 () Bool)

(assert (=> b!1444145 m!1662637))

(declare-fun m!1662639 () Bool)

(assert (=> b!1444144 m!1662639))

(declare-fun m!1662641 () Bool)

(assert (=> b!1444146 m!1662641))

(declare-fun m!1662643 () Bool)

(assert (=> b!1444143 m!1662643))

(assert (=> b!1444148 m!1662635))

(assert (=> b!1444148 m!1662637))

(assert (=> d!418436 d!418564))

(assert (=> b!1443790 d!418498))

(declare-fun d!418566 () Bool)

(assert (=> d!418566 (= (max!0 (height!750 (c!237768 (tokens!2004 thiss!10022))) (height!750 (c!237768 (tokens!2004 other!32)))) (ite (< (height!750 (c!237768 (tokens!2004 thiss!10022))) (height!750 (c!237768 (tokens!2004 other!32)))) (height!750 (c!237768 (tokens!2004 other!32))) (height!750 (c!237768 (tokens!2004 thiss!10022)))))))

(assert (=> b!1443790 d!418566))

(declare-fun d!418568 () Bool)

(assert (=> d!418568 (= (height!750 (++!4026 (c!237768 (tokens!2004 thiss!10022)) (c!237768 (tokens!2004 other!32)))) (ite ((_ is Empty!5093) (++!4026 (c!237768 (tokens!2004 thiss!10022)) (c!237768 (tokens!2004 other!32)))) 0 (ite ((_ is Leaf!7611) (++!4026 (c!237768 (tokens!2004 thiss!10022)) (c!237768 (tokens!2004 other!32)))) 1 (cheight!5304 (++!4026 (c!237768 (tokens!2004 thiss!10022)) (c!237768 (tokens!2004 other!32)))))))))

(assert (=> b!1443790 d!418568))

(declare-fun d!418570 () Bool)

(assert (=> d!418570 (= (height!750 (c!237768 (tokens!2004 other!32))) (ite ((_ is Empty!5093) (c!237768 (tokens!2004 other!32))) 0 (ite ((_ is Leaf!7611) (c!237768 (tokens!2004 other!32))) 1 (cheight!5304 (c!237768 (tokens!2004 other!32))))))))

(assert (=> b!1443790 d!418570))

(declare-fun d!418572 () Bool)

(assert (=> d!418572 (= (height!750 (c!237768 (tokens!2004 thiss!10022))) (ite ((_ is Empty!5093) (c!237768 (tokens!2004 thiss!10022))) 0 (ite ((_ is Leaf!7611) (c!237768 (tokens!2004 thiss!10022))) 1 (cheight!5304 (c!237768 (tokens!2004 thiss!10022))))))))

(assert (=> b!1443790 d!418572))

(declare-fun d!418574 () Bool)

(declare-fun lt!496547 () BalanceConc!10124)

(assert (=> d!418574 (= (list!5968 lt!496547) (originalCharacters!3495 lt!496047))))

(declare-fun dynLambda!6838 (Int TokenValue!2723) BalanceConc!10124)

(assert (=> d!418574 (= lt!496547 (dynLambda!6838 (toChars!3799 (transformation!2633 (rule!4404 lt!496047))) (value!84688 lt!496047)))))

(assert (=> d!418574 (= (charsOf!1519 lt!496047) lt!496547)))

(declare-fun b_lambda!45131 () Bool)

(assert (=> (not b_lambda!45131) (not d!418574)))

(declare-fun t!130074 () Bool)

(declare-fun tb!78565 () Bool)

(assert (=> (and b!1443805 (= (toChars!3799 (transformation!2633 (h!20380 (rules!11466 other!32)))) (toChars!3799 (transformation!2633 (rule!4404 lt!496047)))) t!130074) tb!78565))

(declare-fun b!1444153 () Bool)

(declare-fun e!921323 () Bool)

(declare-fun tp!407598 () Bool)

(declare-fun inv!19940 (Conc!5092) Bool)

(assert (=> b!1444153 (= e!921323 (and (inv!19940 (c!237766 (dynLambda!6838 (toChars!3799 (transformation!2633 (rule!4404 lt!496047))) (value!84688 lt!496047)))) tp!407598))))

(declare-fun result!94964 () Bool)

(declare-fun inv!19941 (BalanceConc!10124) Bool)

(assert (=> tb!78565 (= result!94964 (and (inv!19941 (dynLambda!6838 (toChars!3799 (transformation!2633 (rule!4404 lt!496047))) (value!84688 lt!496047))) e!921323))))

(assert (= tb!78565 b!1444153))

(declare-fun m!1662645 () Bool)

(assert (=> b!1444153 m!1662645))

(declare-fun m!1662647 () Bool)

(assert (=> tb!78565 m!1662647))

(assert (=> d!418574 t!130074))

(declare-fun b_and!97771 () Bool)

(assert (= b_and!97753 (and (=> t!130074 result!94964) b_and!97771)))

(declare-fun t!130076 () Bool)

(declare-fun tb!78567 () Bool)

(assert (=> (and b!1443819 (= (toChars!3799 (transformation!2633 (h!20380 (rules!11466 thiss!10022)))) (toChars!3799 (transformation!2633 (rule!4404 lt!496047)))) t!130076) tb!78567))

(declare-fun result!94968 () Bool)

(assert (= result!94968 result!94964))

(assert (=> d!418574 t!130076))

(declare-fun b_and!97773 () Bool)

(assert (= b_and!97757 (and (=> t!130076 result!94968) b_and!97773)))

(declare-fun m!1662649 () Bool)

(assert (=> d!418574 m!1662649))

(declare-fun m!1662651 () Bool)

(assert (=> d!418574 m!1662651))

(assert (=> d!418378 d!418574))

(declare-fun d!418576 () Bool)

(declare-fun lt!496569 () Bool)

(declare-fun prefixMatch!312 (Regex!3947 List!15042) Bool)

(assert (=> d!418576 (= lt!496569 (prefixMatch!312 (rulesRegex!395 Lexer!2290 (rules!11466 thiss!10022)) (list!5968 (++!4025 (charsOf!1519 lt!496047) (singletonSeq!1235 (apply!3851 (charsOf!1519 lt!496052) 0))))))))

(declare-datatypes ((List!15050 0))(
  ( (Nil!14984) (Cons!14984 (h!20385 Regex!3947) (t!130169 List!15050)) )
))
(declare-datatypes ((Context!1234 0))(
  ( (Context!1235 (exprs!1117 List!15050)) )
))
(declare-fun prefixMatchZipperSequence!335 ((InoxSet Context!1234) BalanceConc!10124 Int) Bool)

(declare-fun focus!108 (Regex!3947) (InoxSet Context!1234))

(assert (=> d!418576 (= lt!496569 (prefixMatchZipperSequence!335 (focus!108 (rulesRegex!395 Lexer!2290 (rules!11466 thiss!10022))) (++!4025 (charsOf!1519 lt!496047) (singletonSeq!1235 (apply!3851 (charsOf!1519 lt!496052) 0))) 0))))

(declare-fun lt!496573 () Unit!23545)

(declare-fun lt!496570 () Unit!23545)

(assert (=> d!418576 (= lt!496573 lt!496570)))

(declare-fun lt!496577 () List!15042)

(declare-fun lt!496568 () (InoxSet Context!1234))

(declare-fun prefixMatchZipper!88 ((InoxSet Context!1234) List!15042) Bool)

(assert (=> d!418576 (= (prefixMatch!312 (rulesRegex!395 Lexer!2290 (rules!11466 thiss!10022)) lt!496577) (prefixMatchZipper!88 lt!496568 lt!496577))))

(declare-datatypes ((List!15051 0))(
  ( (Nil!14985) (Cons!14985 (h!20386 Context!1234) (t!130170 List!15051)) )
))
(declare-fun lt!496575 () List!15051)

(declare-fun prefixMatchZipperRegexEquiv!88 ((InoxSet Context!1234) List!15051 Regex!3947 List!15042) Unit!23545)

(assert (=> d!418576 (= lt!496570 (prefixMatchZipperRegexEquiv!88 lt!496568 lt!496575 (rulesRegex!395 Lexer!2290 (rules!11466 thiss!10022)) lt!496577))))

(assert (=> d!418576 (= lt!496577 (list!5968 (++!4025 (charsOf!1519 lt!496047) (singletonSeq!1235 (apply!3851 (charsOf!1519 lt!496052) 0)))))))

(declare-fun toList!772 ((InoxSet Context!1234)) List!15051)

(assert (=> d!418576 (= lt!496575 (toList!772 (focus!108 (rulesRegex!395 Lexer!2290 (rules!11466 thiss!10022)))))))

(assert (=> d!418576 (= lt!496568 (focus!108 (rulesRegex!395 Lexer!2290 (rules!11466 thiss!10022))))))

(declare-fun lt!496576 () Unit!23545)

(declare-fun lt!496574 () Unit!23545)

(assert (=> d!418576 (= lt!496576 lt!496574)))

(declare-fun lt!496572 () (InoxSet Context!1234))

(declare-fun lt!496571 () Int)

(declare-fun dropList!468 (BalanceConc!10124 Int) List!15042)

(assert (=> d!418576 (= (prefixMatchZipper!88 lt!496572 (dropList!468 (++!4025 (charsOf!1519 lt!496047) (singletonSeq!1235 (apply!3851 (charsOf!1519 lt!496052) 0))) lt!496571)) (prefixMatchZipperSequence!335 lt!496572 (++!4025 (charsOf!1519 lt!496047) (singletonSeq!1235 (apply!3851 (charsOf!1519 lt!496052) 0))) lt!496571))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!88 ((InoxSet Context!1234) BalanceConc!10124 Int) Unit!23545)

(assert (=> d!418576 (= lt!496574 (lemmaprefixMatchZipperSequenceEquivalent!88 lt!496572 (++!4025 (charsOf!1519 lt!496047) (singletonSeq!1235 (apply!3851 (charsOf!1519 lt!496052) 0))) lt!496571))))

(assert (=> d!418576 (= lt!496571 0)))

(assert (=> d!418576 (= lt!496572 (focus!108 (rulesRegex!395 Lexer!2290 (rules!11466 thiss!10022))))))

(declare-fun validRegex!1675 (Regex!3947) Bool)

(assert (=> d!418576 (validRegex!1675 (rulesRegex!395 Lexer!2290 (rules!11466 thiss!10022)))))

(assert (=> d!418576 (= (prefixMatchZipperSequence!333 (rulesRegex!395 Lexer!2290 (rules!11466 thiss!10022)) (++!4025 (charsOf!1519 lt!496047) (singletonSeq!1235 (apply!3851 (charsOf!1519 lt!496052) 0)))) lt!496569)))

(declare-fun bs!341995 () Bool)

(assert (= bs!341995 d!418576))

(declare-fun m!1662653 () Bool)

(assert (=> bs!341995 m!1662653))

(declare-fun m!1662655 () Bool)

(assert (=> bs!341995 m!1662655))

(assert (=> bs!341995 m!1661739))

(declare-fun m!1662657 () Bool)

(assert (=> bs!341995 m!1662657))

(assert (=> bs!341995 m!1661737))

(declare-fun m!1662659 () Bool)

(assert (=> bs!341995 m!1662659))

(assert (=> bs!341995 m!1661739))

(declare-fun m!1662661 () Bool)

(assert (=> bs!341995 m!1662661))

(assert (=> bs!341995 m!1661737))

(declare-fun m!1662663 () Bool)

(assert (=> bs!341995 m!1662663))

(declare-fun m!1662665 () Bool)

(assert (=> bs!341995 m!1662665))

(assert (=> bs!341995 m!1661737))

(declare-fun m!1662667 () Bool)

(assert (=> bs!341995 m!1662667))

(assert (=> bs!341995 m!1661739))

(assert (=> bs!341995 m!1662653))

(assert (=> bs!341995 m!1661737))

(declare-fun m!1662669 () Bool)

(assert (=> bs!341995 m!1662669))

(declare-fun m!1662671 () Bool)

(assert (=> bs!341995 m!1662671))

(assert (=> bs!341995 m!1662669))

(declare-fun m!1662673 () Bool)

(assert (=> bs!341995 m!1662673))

(assert (=> bs!341995 m!1661737))

(declare-fun m!1662675 () Bool)

(assert (=> bs!341995 m!1662675))

(assert (=> bs!341995 m!1662669))

(assert (=> bs!341995 m!1661739))

(declare-fun m!1662677 () Bool)

(assert (=> bs!341995 m!1662677))

(assert (=> bs!341995 m!1661739))

(assert (=> bs!341995 m!1662663))

(assert (=> d!418378 d!418576))

(declare-fun b!1444162 () Bool)

(declare-fun res!653925 () Bool)

(declare-fun e!921326 () Bool)

(assert (=> b!1444162 (=> (not res!653925) (not e!921326))))

(declare-fun isBalanced!1516 (Conc!5092) Bool)

(declare-fun ++!4029 (Conc!5092 Conc!5092) Conc!5092)

(assert (=> b!1444162 (= res!653925 (isBalanced!1516 (++!4029 (c!237766 (charsOf!1519 lt!496047)) (c!237766 (singletonSeq!1235 (apply!3851 (charsOf!1519 lt!496052) 0))))))))

(declare-fun b!1444165 () Bool)

(declare-fun lt!496580 () BalanceConc!10124)

(declare-fun ++!4030 (List!15042 List!15042) List!15042)

(assert (=> b!1444165 (= e!921326 (= (list!5968 lt!496580) (++!4030 (list!5968 (charsOf!1519 lt!496047)) (list!5968 (singletonSeq!1235 (apply!3851 (charsOf!1519 lt!496052) 0))))))))

(declare-fun b!1444164 () Bool)

(declare-fun res!653927 () Bool)

(assert (=> b!1444164 (=> (not res!653927) (not e!921326))))

(declare-fun height!752 (Conc!5092) Int)

(assert (=> b!1444164 (= res!653927 (>= (height!752 (++!4029 (c!237766 (charsOf!1519 lt!496047)) (c!237766 (singletonSeq!1235 (apply!3851 (charsOf!1519 lt!496052) 0))))) (max!0 (height!752 (c!237766 (charsOf!1519 lt!496047))) (height!752 (c!237766 (singletonSeq!1235 (apply!3851 (charsOf!1519 lt!496052) 0)))))))))

(declare-fun b!1444163 () Bool)

(declare-fun res!653924 () Bool)

(assert (=> b!1444163 (=> (not res!653924) (not e!921326))))

(assert (=> b!1444163 (= res!653924 (<= (height!752 (++!4029 (c!237766 (charsOf!1519 lt!496047)) (c!237766 (singletonSeq!1235 (apply!3851 (charsOf!1519 lt!496052) 0))))) (+ (max!0 (height!752 (c!237766 (charsOf!1519 lt!496047))) (height!752 (c!237766 (singletonSeq!1235 (apply!3851 (charsOf!1519 lt!496052) 0))))) 1)))))

(declare-fun d!418578 () Bool)

(assert (=> d!418578 e!921326))

(declare-fun res!653926 () Bool)

(assert (=> d!418578 (=> (not res!653926) (not e!921326))))

(declare-fun appendAssocInst!325 (Conc!5092 Conc!5092) Bool)

(assert (=> d!418578 (= res!653926 (appendAssocInst!325 (c!237766 (charsOf!1519 lt!496047)) (c!237766 (singletonSeq!1235 (apply!3851 (charsOf!1519 lt!496052) 0)))))))

(assert (=> d!418578 (= lt!496580 (BalanceConc!10125 (++!4029 (c!237766 (charsOf!1519 lt!496047)) (c!237766 (singletonSeq!1235 (apply!3851 (charsOf!1519 lt!496052) 0))))))))

(assert (=> d!418578 (= (++!4025 (charsOf!1519 lt!496047) (singletonSeq!1235 (apply!3851 (charsOf!1519 lt!496052) 0))) lt!496580)))

(assert (= (and d!418578 res!653926) b!1444162))

(assert (= (and b!1444162 res!653925) b!1444163))

(assert (= (and b!1444163 res!653924) b!1444164))

(assert (= (and b!1444164 res!653927) b!1444165))

(declare-fun m!1662679 () Bool)

(assert (=> d!418578 m!1662679))

(declare-fun m!1662681 () Bool)

(assert (=> d!418578 m!1662681))

(assert (=> b!1444163 m!1662681))

(declare-fun m!1662683 () Bool)

(assert (=> b!1444163 m!1662683))

(declare-fun m!1662685 () Bool)

(assert (=> b!1444163 m!1662685))

(assert (=> b!1444163 m!1662681))

(declare-fun m!1662687 () Bool)

(assert (=> b!1444163 m!1662687))

(assert (=> b!1444163 m!1662685))

(declare-fun m!1662689 () Bool)

(assert (=> b!1444163 m!1662689))

(assert (=> b!1444163 m!1662687))

(assert (=> b!1444164 m!1662681))

(assert (=> b!1444164 m!1662683))

(assert (=> b!1444164 m!1662685))

(assert (=> b!1444164 m!1662681))

(assert (=> b!1444164 m!1662687))

(assert (=> b!1444164 m!1662685))

(assert (=> b!1444164 m!1662689))

(assert (=> b!1444164 m!1662687))

(assert (=> b!1444162 m!1662681))

(assert (=> b!1444162 m!1662681))

(declare-fun m!1662691 () Bool)

(assert (=> b!1444162 m!1662691))

(declare-fun m!1662693 () Bool)

(assert (=> b!1444165 m!1662693))

(assert (=> b!1444165 m!1661743))

(declare-fun m!1662695 () Bool)

(assert (=> b!1444165 m!1662695))

(assert (=> b!1444165 m!1661745))

(declare-fun m!1662697 () Bool)

(assert (=> b!1444165 m!1662697))

(assert (=> b!1444165 m!1662695))

(assert (=> b!1444165 m!1662697))

(declare-fun m!1662699 () Bool)

(assert (=> b!1444165 m!1662699))

(assert (=> d!418378 d!418578))

(declare-fun d!418580 () Bool)

(declare-fun lt!496583 () C!8072)

(declare-fun apply!3856 (List!15042 Int) C!8072)

(assert (=> d!418580 (= lt!496583 (apply!3856 (list!5968 (charsOf!1519 lt!496052)) 0))))

(declare-fun apply!3857 (Conc!5092 Int) C!8072)

(assert (=> d!418580 (= lt!496583 (apply!3857 (c!237766 (charsOf!1519 lt!496052)) 0))))

(declare-fun e!921329 () Bool)

(assert (=> d!418580 e!921329))

(declare-fun res!653930 () Bool)

(assert (=> d!418580 (=> (not res!653930) (not e!921329))))

(assert (=> d!418580 (= res!653930 (<= 0 0))))

(assert (=> d!418580 (= (apply!3851 (charsOf!1519 lt!496052) 0) lt!496583)))

(declare-fun b!1444168 () Bool)

(assert (=> b!1444168 (= e!921329 (< 0 (size!12275 (charsOf!1519 lt!496052))))))

(assert (= (and d!418580 res!653930) b!1444168))

(assert (=> d!418580 m!1661747))

(declare-fun m!1662701 () Bool)

(assert (=> d!418580 m!1662701))

(assert (=> d!418580 m!1662701))

(declare-fun m!1662703 () Bool)

(assert (=> d!418580 m!1662703))

(declare-fun m!1662705 () Bool)

(assert (=> d!418580 m!1662705))

(assert (=> b!1444168 m!1661747))

(declare-fun m!1662707 () Bool)

(assert (=> b!1444168 m!1662707))

(assert (=> d!418378 d!418580))

(declare-fun d!418582 () Bool)

(declare-fun lt!496584 () BalanceConc!10124)

(assert (=> d!418582 (= (list!5968 lt!496584) (originalCharacters!3495 lt!496052))))

(assert (=> d!418582 (= lt!496584 (dynLambda!6838 (toChars!3799 (transformation!2633 (rule!4404 lt!496052))) (value!84688 lt!496052)))))

(assert (=> d!418582 (= (charsOf!1519 lt!496052) lt!496584)))

(declare-fun b_lambda!45133 () Bool)

(assert (=> (not b_lambda!45133) (not d!418582)))

(declare-fun t!130078 () Bool)

(declare-fun tb!78569 () Bool)

(assert (=> (and b!1443805 (= (toChars!3799 (transformation!2633 (h!20380 (rules!11466 other!32)))) (toChars!3799 (transformation!2633 (rule!4404 lt!496052)))) t!130078) tb!78569))

(declare-fun b!1444169 () Bool)

(declare-fun e!921330 () Bool)

(declare-fun tp!407599 () Bool)

(assert (=> b!1444169 (= e!921330 (and (inv!19940 (c!237766 (dynLambda!6838 (toChars!3799 (transformation!2633 (rule!4404 lt!496052))) (value!84688 lt!496052)))) tp!407599))))

(declare-fun result!94970 () Bool)

(assert (=> tb!78569 (= result!94970 (and (inv!19941 (dynLambda!6838 (toChars!3799 (transformation!2633 (rule!4404 lt!496052))) (value!84688 lt!496052))) e!921330))))

(assert (= tb!78569 b!1444169))

(declare-fun m!1662709 () Bool)

(assert (=> b!1444169 m!1662709))

(declare-fun m!1662711 () Bool)

(assert (=> tb!78569 m!1662711))

(assert (=> d!418582 t!130078))

(declare-fun b_and!97775 () Bool)

(assert (= b_and!97771 (and (=> t!130078 result!94970) b_and!97775)))

(declare-fun t!130080 () Bool)

(declare-fun tb!78571 () Bool)

(assert (=> (and b!1443819 (= (toChars!3799 (transformation!2633 (h!20380 (rules!11466 thiss!10022)))) (toChars!3799 (transformation!2633 (rule!4404 lt!496052)))) t!130080) tb!78571))

(declare-fun result!94972 () Bool)

(assert (= result!94972 result!94970))

(assert (=> d!418582 t!130080))

(declare-fun b_and!97777 () Bool)

(assert (= b_and!97773 (and (=> t!130080 result!94972) b_and!97777)))

(declare-fun m!1662715 () Bool)

(assert (=> d!418582 m!1662715))

(declare-fun m!1662717 () Bool)

(assert (=> d!418582 m!1662717))

(assert (=> d!418378 d!418582))

(declare-fun d!418586 () Bool)

(declare-fun lt!496587 () Unit!23545)

(declare-fun lemma!171 (List!15045 LexerInterface!2292 List!15045) Unit!23545)

(assert (=> d!418586 (= lt!496587 (lemma!171 (rules!11466 thiss!10022) Lexer!2290 (rules!11466 thiss!10022)))))

(declare-fun lambda!62941 () Int)

(declare-fun generalisedUnion!179 (List!15050) Regex!3947)

(declare-fun map!3273 (List!15045 Int) List!15050)

(assert (=> d!418586 (= (rulesRegex!395 Lexer!2290 (rules!11466 thiss!10022)) (generalisedUnion!179 (map!3273 (rules!11466 thiss!10022) lambda!62941)))))

(declare-fun bs!341997 () Bool)

(assert (= bs!341997 d!418586))

(declare-fun m!1662719 () Bool)

(assert (=> bs!341997 m!1662719))

(declare-fun m!1662721 () Bool)

(assert (=> bs!341997 m!1662721))

(assert (=> bs!341997 m!1662721))

(declare-fun m!1662723 () Bool)

(assert (=> bs!341997 m!1662723))

(assert (=> d!418378 d!418586))

(declare-fun d!418588 () Bool)

(declare-fun e!921341 () Bool)

(assert (=> d!418588 e!921341))

(declare-fun res!653944 () Bool)

(assert (=> d!418588 (=> (not res!653944) (not e!921341))))

(declare-fun lt!496591 () BalanceConc!10124)

(assert (=> d!418588 (= res!653944 (= (list!5968 lt!496591) (Cons!14976 (apply!3851 (charsOf!1519 lt!496052) 0) Nil!14976)))))

(declare-fun singleton!517 (C!8072) BalanceConc!10124)

(assert (=> d!418588 (= lt!496591 (singleton!517 (apply!3851 (charsOf!1519 lt!496052) 0)))))

(assert (=> d!418588 (= (singletonSeq!1235 (apply!3851 (charsOf!1519 lt!496052) 0)) lt!496591)))

(declare-fun b!1444186 () Bool)

(assert (=> b!1444186 (= e!921341 (isBalanced!1516 (c!237766 lt!496591)))))

(assert (= (and d!418588 res!653944) b!1444186))

(declare-fun m!1662741 () Bool)

(assert (=> d!418588 m!1662741))

(assert (=> d!418588 m!1661749))

(declare-fun m!1662743 () Bool)

(assert (=> d!418588 m!1662743))

(declare-fun m!1662745 () Bool)

(assert (=> b!1444186 m!1662745))

(assert (=> d!418378 d!418588))

(declare-fun d!418594 () Bool)

(assert (=> d!418594 (= (separableTokens!232 Lexer!2290 (tokens!2004 thiss!10022) (rules!11466 thiss!10022)) (tokensListTwoByTwoPredicateSeparable!120 Lexer!2290 (tokens!2004 thiss!10022) 0 (rules!11466 thiss!10022)))))

(declare-fun bs!342002 () Bool)

(assert (= bs!342002 d!418594))

(declare-fun m!1662747 () Bool)

(assert (=> bs!342002 m!1662747))

(assert (=> b!1443559 d!418594))

(assert (=> b!1443557 d!418534))

(declare-fun d!418596 () Bool)

(assert (=> d!418596 (= (list!5963 (singletonSeq!1234 lt!496052)) (list!5965 (c!237768 (singletonSeq!1234 lt!496052))))))

(declare-fun bs!342003 () Bool)

(assert (= bs!342003 d!418596))

(declare-fun m!1662749 () Bool)

(assert (=> bs!342003 m!1662749))

(assert (=> d!418368 d!418596))

(declare-fun b!1444220 () Bool)

(declare-fun e!921372 () Bool)

(declare-fun lt!496608 () tuple2!14150)

(assert (=> b!1444220 (= e!921372 (= (_2!7961 lt!496608) (print!1071 Lexer!2290 (singletonSeq!1234 lt!496052))))))

(declare-fun b!1444221 () Bool)

(declare-fun res!653972 () Bool)

(declare-fun e!921371 () Bool)

(assert (=> b!1444221 (=> (not res!653972) (not e!921371))))

(declare-datatypes ((tuple2!14154 0))(
  ( (tuple2!14155 (_1!7963 List!15044) (_2!7963 List!15042)) )
))
(declare-fun lexList!704 (LexerInterface!2292 List!15045 List!15042) tuple2!14154)

(assert (=> b!1444221 (= res!653972 (= (list!5963 (_1!7961 lt!496608)) (_1!7963 (lexList!704 Lexer!2290 (rules!11466 thiss!10022) (list!5968 (print!1071 Lexer!2290 (singletonSeq!1234 lt!496052)))))))))

(declare-fun b!1444222 () Bool)

(declare-fun e!921370 () Bool)

(assert (=> b!1444222 (= e!921372 e!921370)))

(declare-fun res!653970 () Bool)

(assert (=> b!1444222 (= res!653970 (< (size!12275 (_2!7961 lt!496608)) (size!12275 (print!1071 Lexer!2290 (singletonSeq!1234 lt!496052)))))))

(assert (=> b!1444222 (=> (not res!653970) (not e!921370))))

(declare-fun b!1444223 () Bool)

(assert (=> b!1444223 (= e!921371 (= (list!5968 (_2!7961 lt!496608)) (_2!7963 (lexList!704 Lexer!2290 (rules!11466 thiss!10022) (list!5968 (print!1071 Lexer!2290 (singletonSeq!1234 lt!496052)))))))))

(declare-fun b!1444219 () Bool)

(assert (=> b!1444219 (= e!921370 (not (isEmpty!9319 (_1!7961 lt!496608))))))

(declare-fun d!418598 () Bool)

(assert (=> d!418598 e!921371))

(declare-fun res!653971 () Bool)

(assert (=> d!418598 (=> (not res!653971) (not e!921371))))

(assert (=> d!418598 (= res!653971 e!921372)))

(declare-fun c!237851 () Bool)

(assert (=> d!418598 (= c!237851 (> (size!12276 (_1!7961 lt!496608)) 0))))

(declare-fun lexTailRecV2!459 (LexerInterface!2292 List!15045 BalanceConc!10124 BalanceConc!10124 BalanceConc!10124 BalanceConc!10126) tuple2!14150)

(assert (=> d!418598 (= lt!496608 (lexTailRecV2!459 Lexer!2290 (rules!11466 thiss!10022) (print!1071 Lexer!2290 (singletonSeq!1234 lt!496052)) (BalanceConc!10125 Empty!5092) (print!1071 Lexer!2290 (singletonSeq!1234 lt!496052)) (BalanceConc!10127 Empty!5093)))))

(assert (=> d!418598 (= (lex!1048 Lexer!2290 (rules!11466 thiss!10022) (print!1071 Lexer!2290 (singletonSeq!1234 lt!496052))) lt!496608)))

(assert (= (and d!418598 c!237851) b!1444222))

(assert (= (and d!418598 (not c!237851)) b!1444220))

(assert (= (and b!1444222 res!653970) b!1444219))

(assert (= (and d!418598 res!653971) b!1444221))

(assert (= (and b!1444221 res!653972) b!1444223))

(declare-fun m!1662787 () Bool)

(assert (=> b!1444219 m!1662787))

(declare-fun m!1662789 () Bool)

(assert (=> b!1444221 m!1662789))

(assert (=> b!1444221 m!1661713))

(declare-fun m!1662791 () Bool)

(assert (=> b!1444221 m!1662791))

(assert (=> b!1444221 m!1662791))

(declare-fun m!1662793 () Bool)

(assert (=> b!1444221 m!1662793))

(declare-fun m!1662795 () Bool)

(assert (=> b!1444222 m!1662795))

(assert (=> b!1444222 m!1661713))

(declare-fun m!1662797 () Bool)

(assert (=> b!1444222 m!1662797))

(declare-fun m!1662799 () Bool)

(assert (=> d!418598 m!1662799))

(assert (=> d!418598 m!1661713))

(assert (=> d!418598 m!1661713))

(declare-fun m!1662801 () Bool)

(assert (=> d!418598 m!1662801))

(declare-fun m!1662803 () Bool)

(assert (=> b!1444223 m!1662803))

(assert (=> b!1444223 m!1661713))

(assert (=> b!1444223 m!1662791))

(assert (=> b!1444223 m!1662791))

(assert (=> b!1444223 m!1662793))

(assert (=> d!418368 d!418598))

(declare-fun d!418614 () Bool)

(declare-fun lt!496609 () Int)

(assert (=> d!418614 (= lt!496609 (size!12277 (list!5963 (_1!7961 lt!496106))))))

(assert (=> d!418614 (= lt!496609 (size!12278 (c!237768 (_1!7961 lt!496106))))))

(assert (=> d!418614 (= (size!12276 (_1!7961 lt!496106)) lt!496609)))

(declare-fun bs!342012 () Bool)

(assert (= bs!342012 d!418614))

(declare-fun m!1662805 () Bool)

(assert (=> bs!342012 m!1662805))

(assert (=> bs!342012 m!1662805))

(declare-fun m!1662807 () Bool)

(assert (=> bs!342012 m!1662807))

(declare-fun m!1662809 () Bool)

(assert (=> bs!342012 m!1662809))

(assert (=> d!418368 d!418614))

(declare-fun d!418616 () Bool)

(declare-fun lt!496615 () BalanceConc!10124)

(declare-fun printList!711 (LexerInterface!2292 List!15044) List!15042)

(assert (=> d!418616 (= (list!5968 lt!496615) (printList!711 Lexer!2290 (list!5963 (singletonSeq!1234 lt!496052))))))

(declare-fun printTailRec!683 (LexerInterface!2292 BalanceConc!10126 Int BalanceConc!10124) BalanceConc!10124)

(assert (=> d!418616 (= lt!496615 (printTailRec!683 Lexer!2290 (singletonSeq!1234 lt!496052) 0 (BalanceConc!10125 Empty!5092)))))

(assert (=> d!418616 (= (print!1071 Lexer!2290 (singletonSeq!1234 lt!496052)) lt!496615)))

(declare-fun bs!342014 () Bool)

(assert (= bs!342014 d!418616))

(declare-fun m!1662813 () Bool)

(assert (=> bs!342014 m!1662813))

(assert (=> bs!342014 m!1661707))

(assert (=> bs!342014 m!1661709))

(assert (=> bs!342014 m!1661709))

(declare-fun m!1662815 () Bool)

(assert (=> bs!342014 m!1662815))

(assert (=> bs!342014 m!1661707))

(declare-fun m!1662817 () Bool)

(assert (=> bs!342014 m!1662817))

(assert (=> d!418368 d!418616))

(declare-fun d!418620 () Bool)

(assert (=> d!418620 (= (list!5963 (_1!7961 (lex!1048 Lexer!2290 (rules!11466 thiss!10022) (print!1071 Lexer!2290 (singletonSeq!1234 lt!496052))))) (list!5965 (c!237768 (_1!7961 (lex!1048 Lexer!2290 (rules!11466 thiss!10022) (print!1071 Lexer!2290 (singletonSeq!1234 lt!496052)))))))))

(declare-fun bs!342015 () Bool)

(assert (= bs!342015 d!418620))

(declare-fun m!1662819 () Bool)

(assert (=> bs!342015 m!1662819))

(assert (=> d!418368 d!418620))

(assert (=> d!418368 d!418488))

(declare-fun d!418622 () Bool)

(declare-fun e!921385 () Bool)

(assert (=> d!418622 e!921385))

(declare-fun res!653977 () Bool)

(assert (=> d!418622 (=> (not res!653977) (not e!921385))))

(declare-fun lt!496620 () BalanceConc!10126)

(assert (=> d!418622 (= res!653977 (= (list!5963 lt!496620) (Cons!14978 lt!496052 Nil!14978)))))

(declare-fun singleton!518 (Token!4928) BalanceConc!10126)

(assert (=> d!418622 (= lt!496620 (singleton!518 lt!496052))))

(assert (=> d!418622 (= (singletonSeq!1234 lt!496052) lt!496620)))

(declare-fun b!1444244 () Bool)

(assert (=> b!1444244 (= e!921385 (isBalanced!1514 (c!237768 lt!496620)))))

(assert (= (and d!418622 res!653977) b!1444244))

(declare-fun m!1662821 () Bool)

(assert (=> d!418622 m!1662821))

(declare-fun m!1662823 () Bool)

(assert (=> d!418622 m!1662823))

(declare-fun m!1662825 () Bool)

(assert (=> b!1444244 m!1662825))

(assert (=> d!418368 d!418622))

(declare-fun d!418624 () Bool)

(assert (=> d!418624 (= (head!2924 (list!5963 (tokens!2004 other!32))) (h!20379 (list!5963 (tokens!2004 other!32))))))

(assert (=> d!418372 d!418624))

(assert (=> d!418372 d!418370))

(declare-fun d!418626 () Bool)

(declare-fun lt!496625 () Token!4928)

(assert (=> d!418626 (= lt!496625 (head!2924 (list!5965 (c!237768 (tokens!2004 other!32)))))))

(declare-fun e!921396 () Token!4928)

(assert (=> d!418626 (= lt!496625 e!921396)))

(declare-fun c!237866 () Bool)

(assert (=> d!418626 (= c!237866 ((_ is Leaf!7611) (c!237768 (tokens!2004 other!32))))))

(assert (=> d!418626 (isBalanced!1514 (c!237768 (tokens!2004 other!32)))))

(assert (=> d!418626 (= (head!2925 (c!237768 (tokens!2004 other!32))) lt!496625)))

(declare-fun b!1444263 () Bool)

(declare-fun apply!3859 (IArray!10191 Int) Token!4928)

(assert (=> b!1444263 (= e!921396 (apply!3859 (xs!7830 (c!237768 (tokens!2004 other!32))) 0))))

(declare-fun b!1444264 () Bool)

(assert (=> b!1444264 (= e!921396 (head!2925 (left!12756 (c!237768 (tokens!2004 other!32)))))))

(assert (= (and d!418626 c!237866) b!1444263))

(assert (= (and d!418626 (not c!237866)) b!1444264))

(assert (=> d!418626 m!1661725))

(assert (=> d!418626 m!1661725))

(declare-fun m!1662845 () Bool)

(assert (=> d!418626 m!1662845))

(assert (=> d!418626 m!1661609))

(declare-fun m!1662847 () Bool)

(assert (=> b!1444263 m!1662847))

(declare-fun m!1662849 () Bool)

(assert (=> b!1444264 m!1662849))

(assert (=> d!418372 d!418626))

(assert (=> d!418372 d!418360))

(declare-fun d!418636 () Bool)

(declare-fun res!653990 () Bool)

(declare-fun e!921400 () Bool)

(assert (=> d!418636 (=> (not res!653990) (not e!921400))))

(assert (=> d!418636 (= res!653990 (<= (size!12277 (list!5969 (xs!7830 (c!237768 (tokens!2004 other!32))))) 512))))

(assert (=> d!418636 (= (inv!19934 (c!237768 (tokens!2004 other!32))) e!921400)))

(declare-fun b!1444271 () Bool)

(declare-fun res!653991 () Bool)

(assert (=> b!1444271 (=> (not res!653991) (not e!921400))))

(assert (=> b!1444271 (= res!653991 (= (csize!10417 (c!237768 (tokens!2004 other!32))) (size!12277 (list!5969 (xs!7830 (c!237768 (tokens!2004 other!32)))))))))

(declare-fun b!1444272 () Bool)

(assert (=> b!1444272 (= e!921400 (and (> (csize!10417 (c!237768 (tokens!2004 other!32))) 0) (<= (csize!10417 (c!237768 (tokens!2004 other!32))) 512)))))

(assert (= (and d!418636 res!653990) b!1444271))

(assert (= (and b!1444271 res!653991) b!1444272))

(assert (=> d!418636 m!1662623))

(assert (=> d!418636 m!1662623))

(declare-fun m!1662855 () Bool)

(assert (=> d!418636 m!1662855))

(assert (=> b!1444271 m!1662623))

(assert (=> b!1444271 m!1662623))

(assert (=> b!1444271 m!1662855))

(assert (=> b!1443607 d!418636))

(declare-fun b!1444275 () Bool)

(declare-fun res!653993 () Bool)

(declare-fun e!921402 () Bool)

(assert (=> b!1444275 (=> (not res!653993) (not e!921402))))

(declare-fun lt!496626 () List!15044)

(assert (=> b!1444275 (= res!653993 (= (size!12277 lt!496626) (+ (size!12277 (t!130033 lt!496053)) (size!12277 lt!496048))))))

(declare-fun b!1444273 () Bool)

(declare-fun e!921401 () List!15044)

(assert (=> b!1444273 (= e!921401 lt!496048)))

(declare-fun b!1444276 () Bool)

(assert (=> b!1444276 (= e!921402 (or (not (= lt!496048 Nil!14978)) (= lt!496626 (t!130033 lt!496053))))))

(declare-fun d!418642 () Bool)

(assert (=> d!418642 e!921402))

(declare-fun res!653992 () Bool)

(assert (=> d!418642 (=> (not res!653992) (not e!921402))))

(assert (=> d!418642 (= res!653992 (= (content!2215 lt!496626) ((_ map or) (content!2215 (t!130033 lt!496053)) (content!2215 lt!496048))))))

(assert (=> d!418642 (= lt!496626 e!921401)))

(declare-fun c!237867 () Bool)

(assert (=> d!418642 (= c!237867 ((_ is Nil!14978) (t!130033 lt!496053)))))

(assert (=> d!418642 (= (++!4022 (t!130033 lt!496053) lt!496048) lt!496626)))

(declare-fun b!1444274 () Bool)

(assert (=> b!1444274 (= e!921401 (Cons!14978 (h!20379 (t!130033 lt!496053)) (++!4022 (t!130033 (t!130033 lt!496053)) lt!496048)))))

(assert (= (and d!418642 c!237867) b!1444273))

(assert (= (and d!418642 (not c!237867)) b!1444274))

(assert (= (and d!418642 res!653992) b!1444275))

(assert (= (and b!1444275 res!653993) b!1444276))

(declare-fun m!1662857 () Bool)

(assert (=> b!1444275 m!1662857))

(declare-fun m!1662859 () Bool)

(assert (=> b!1444275 m!1662859))

(assert (=> b!1444275 m!1661785))

(declare-fun m!1662861 () Bool)

(assert (=> d!418642 m!1662861))

(declare-fun m!1662863 () Bool)

(assert (=> d!418642 m!1662863))

(assert (=> d!418642 m!1661791))

(declare-fun m!1662865 () Bool)

(assert (=> b!1444274 m!1662865))

(assert (=> b!1443617 d!418642))

(declare-fun b!1444277 () Bool)

(declare-fun res!653996 () Bool)

(declare-fun e!921403 () Bool)

(assert (=> b!1444277 (=> (not res!653996) (not e!921403))))

(assert (=> b!1444277 (= res!653996 (isBalanced!1514 (right!13086 (++!4026 (c!237768 (tokens!2004 thiss!10022)) (c!237768 (tokens!2004 other!32))))))))

(declare-fun b!1444278 () Bool)

(declare-fun res!653994 () Bool)

(assert (=> b!1444278 (=> (not res!653994) (not e!921403))))

(assert (=> b!1444278 (= res!653994 (not (isEmpty!9326 (left!12756 (++!4026 (c!237768 (tokens!2004 thiss!10022)) (c!237768 (tokens!2004 other!32)))))))))

(declare-fun b!1444279 () Bool)

(declare-fun e!921404 () Bool)

(assert (=> b!1444279 (= e!921404 e!921403)))

(declare-fun res!653999 () Bool)

(assert (=> b!1444279 (=> (not res!653999) (not e!921403))))

(assert (=> b!1444279 (= res!653999 (<= (- 1) (- (height!750 (left!12756 (++!4026 (c!237768 (tokens!2004 thiss!10022)) (c!237768 (tokens!2004 other!32))))) (height!750 (right!13086 (++!4026 (c!237768 (tokens!2004 thiss!10022)) (c!237768 (tokens!2004 other!32))))))))))

(declare-fun b!1444280 () Bool)

(declare-fun res!653997 () Bool)

(assert (=> b!1444280 (=> (not res!653997) (not e!921403))))

(assert (=> b!1444280 (= res!653997 (isBalanced!1514 (left!12756 (++!4026 (c!237768 (tokens!2004 thiss!10022)) (c!237768 (tokens!2004 other!32))))))))

(declare-fun d!418644 () Bool)

(declare-fun res!653995 () Bool)

(assert (=> d!418644 (=> res!653995 e!921404)))

(assert (=> d!418644 (= res!653995 (not ((_ is Node!5093) (++!4026 (c!237768 (tokens!2004 thiss!10022)) (c!237768 (tokens!2004 other!32))))))))

(assert (=> d!418644 (= (isBalanced!1514 (++!4026 (c!237768 (tokens!2004 thiss!10022)) (c!237768 (tokens!2004 other!32)))) e!921404)))

(declare-fun b!1444281 () Bool)

(assert (=> b!1444281 (= e!921403 (not (isEmpty!9326 (right!13086 (++!4026 (c!237768 (tokens!2004 thiss!10022)) (c!237768 (tokens!2004 other!32)))))))))

(declare-fun b!1444282 () Bool)

(declare-fun res!653998 () Bool)

(assert (=> b!1444282 (=> (not res!653998) (not e!921403))))

(assert (=> b!1444282 (= res!653998 (<= (- (height!750 (left!12756 (++!4026 (c!237768 (tokens!2004 thiss!10022)) (c!237768 (tokens!2004 other!32))))) (height!750 (right!13086 (++!4026 (c!237768 (tokens!2004 thiss!10022)) (c!237768 (tokens!2004 other!32)))))) 1))))

(assert (= (and d!418644 (not res!653995)) b!1444279))

(assert (= (and b!1444279 res!653999) b!1444282))

(assert (= (and b!1444282 res!653998) b!1444280))

(assert (= (and b!1444280 res!653997) b!1444277))

(assert (= (and b!1444277 res!653996) b!1444278))

(assert (= (and b!1444278 res!653994) b!1444281))

(declare-fun m!1662867 () Bool)

(assert (=> b!1444281 m!1662867))

(declare-fun m!1662869 () Bool)

(assert (=> b!1444279 m!1662869))

(declare-fun m!1662871 () Bool)

(assert (=> b!1444279 m!1662871))

(declare-fun m!1662873 () Bool)

(assert (=> b!1444278 m!1662873))

(declare-fun m!1662875 () Bool)

(assert (=> b!1444280 m!1662875))

(declare-fun m!1662877 () Bool)

(assert (=> b!1444277 m!1662877))

(assert (=> b!1444282 m!1662869))

(assert (=> b!1444282 m!1662871))

(assert (=> b!1443788 d!418644))

(assert (=> b!1443788 d!418498))

(declare-fun d!418646 () Bool)

(declare-fun res!654000 () Bool)

(declare-fun e!921405 () Bool)

(assert (=> d!418646 (=> (not res!654000) (not e!921405))))

(assert (=> d!418646 (= res!654000 (rulesValid!966 Lexer!2290 (rules!11466 other!32)))))

(assert (=> d!418646 (= (rulesInvariant!2130 Lexer!2290 (rules!11466 other!32)) e!921405)))

(declare-fun b!1444283 () Bool)

(assert (=> b!1444283 (= e!921405 (noDuplicateTag!966 Lexer!2290 (rules!11466 other!32) Nil!14983))))

(assert (= (and d!418646 res!654000) b!1444283))

(declare-fun m!1662879 () Bool)

(assert (=> d!418646 m!1662879))

(declare-fun m!1662881 () Bool)

(assert (=> b!1444283 m!1662881))

(assert (=> b!1443560 d!418646))

(assert (=> b!1443722 d!418488))

(declare-fun d!418648 () Bool)

(assert (=> d!418648 (= (inv!19923 (tag!2897 (h!20380 (rules!11466 other!32)))) (= (mod (str.len (value!84687 (tag!2897 (h!20380 (rules!11466 other!32))))) 2) 0))))

(assert (=> b!1443804 d!418648))

(declare-fun d!418650 () Bool)

(declare-fun res!654003 () Bool)

(declare-fun e!921414 () Bool)

(assert (=> d!418650 (=> (not res!654003) (not e!921414))))

(declare-fun semiInverseModEq!992 (Int Int) Bool)

(assert (=> d!418650 (= res!654003 (semiInverseModEq!992 (toChars!3799 (transformation!2633 (h!20380 (rules!11466 other!32)))) (toValue!3940 (transformation!2633 (h!20380 (rules!11466 other!32))))))))

(assert (=> d!418650 (= (inv!19936 (transformation!2633 (h!20380 (rules!11466 other!32)))) e!921414)))

(declare-fun b!1444298 () Bool)

(declare-fun equivClasses!951 (Int Int) Bool)

(assert (=> b!1444298 (= e!921414 (equivClasses!951 (toChars!3799 (transformation!2633 (h!20380 (rules!11466 other!32)))) (toValue!3940 (transformation!2633 (h!20380 (rules!11466 other!32))))))))

(assert (= (and d!418650 res!654003) b!1444298))

(declare-fun m!1662891 () Bool)

(assert (=> d!418650 m!1662891))

(declare-fun m!1662893 () Bool)

(assert (=> b!1444298 m!1662893))

(assert (=> b!1443804 d!418650))

(declare-fun d!418656 () Bool)

(declare-fun res!654004 () Bool)

(declare-fun e!921416 () Bool)

(assert (=> d!418656 (=> (not res!654004) (not e!921416))))

(assert (=> d!418656 (= res!654004 (<= (size!12277 (list!5969 (xs!7830 (c!237768 (tokens!2004 thiss!10022))))) 512))))

(assert (=> d!418656 (= (inv!19934 (c!237768 (tokens!2004 thiss!10022))) e!921416)))

(declare-fun b!1444301 () Bool)

(declare-fun res!654005 () Bool)

(assert (=> b!1444301 (=> (not res!654005) (not e!921416))))

(assert (=> b!1444301 (= res!654005 (= (csize!10417 (c!237768 (tokens!2004 thiss!10022))) (size!12277 (list!5969 (xs!7830 (c!237768 (tokens!2004 thiss!10022)))))))))

(declare-fun b!1444302 () Bool)

(assert (=> b!1444302 (= e!921416 (and (> (csize!10417 (c!237768 (tokens!2004 thiss!10022))) 0) (<= (csize!10417 (c!237768 (tokens!2004 thiss!10022))) 512)))))

(assert (= (and d!418656 res!654004) b!1444301))

(assert (= (and b!1444301 res!654005) b!1444302))

(declare-fun m!1662897 () Bool)

(assert (=> d!418656 m!1662897))

(assert (=> d!418656 m!1662897))

(declare-fun m!1662901 () Bool)

(assert (=> d!418656 m!1662901))

(assert (=> b!1444301 m!1662897))

(assert (=> b!1444301 m!1662897))

(assert (=> b!1444301 m!1662901))

(assert (=> b!1443794 d!418656))

(declare-fun d!418662 () Bool)

(declare-fun c!237876 () Bool)

(assert (=> d!418662 (= c!237876 ((_ is Node!5093) (left!12756 (c!237768 (tokens!2004 thiss!10022)))))))

(declare-fun e!921418 () Bool)

(assert (=> d!418662 (= (inv!19929 (left!12756 (c!237768 (tokens!2004 thiss!10022)))) e!921418)))

(declare-fun b!1444305 () Bool)

(assert (=> b!1444305 (= e!921418 (inv!19933 (left!12756 (c!237768 (tokens!2004 thiss!10022)))))))

(declare-fun b!1444306 () Bool)

(declare-fun e!921419 () Bool)

(assert (=> b!1444306 (= e!921418 e!921419)))

(declare-fun res!654006 () Bool)

(assert (=> b!1444306 (= res!654006 (not ((_ is Leaf!7611) (left!12756 (c!237768 (tokens!2004 thiss!10022))))))))

(assert (=> b!1444306 (=> res!654006 e!921419)))

(declare-fun b!1444307 () Bool)

(assert (=> b!1444307 (= e!921419 (inv!19934 (left!12756 (c!237768 (tokens!2004 thiss!10022)))))))

(assert (= (and d!418662 c!237876) b!1444305))

(assert (= (and d!418662 (not c!237876)) b!1444306))

(assert (= (and b!1444306 (not res!654006)) b!1444307))

(declare-fun m!1662903 () Bool)

(assert (=> b!1444305 m!1662903))

(declare-fun m!1662905 () Bool)

(assert (=> b!1444307 m!1662905))

(assert (=> b!1443820 d!418662))

(declare-fun d!418664 () Bool)

(declare-fun c!237877 () Bool)

(assert (=> d!418664 (= c!237877 ((_ is Node!5093) (right!13086 (c!237768 (tokens!2004 thiss!10022)))))))

(declare-fun e!921420 () Bool)

(assert (=> d!418664 (= (inv!19929 (right!13086 (c!237768 (tokens!2004 thiss!10022)))) e!921420)))

(declare-fun b!1444308 () Bool)

(assert (=> b!1444308 (= e!921420 (inv!19933 (right!13086 (c!237768 (tokens!2004 thiss!10022)))))))

(declare-fun b!1444309 () Bool)

(declare-fun e!921421 () Bool)

(assert (=> b!1444309 (= e!921420 e!921421)))

(declare-fun res!654007 () Bool)

(assert (=> b!1444309 (= res!654007 (not ((_ is Leaf!7611) (right!13086 (c!237768 (tokens!2004 thiss!10022))))))))

(assert (=> b!1444309 (=> res!654007 e!921421)))

(declare-fun b!1444310 () Bool)

(assert (=> b!1444310 (= e!921421 (inv!19934 (right!13086 (c!237768 (tokens!2004 thiss!10022)))))))

(assert (= (and d!418664 c!237877) b!1444308))

(assert (= (and d!418664 (not c!237877)) b!1444309))

(assert (= (and b!1444309 (not res!654007)) b!1444310))

(declare-fun m!1662907 () Bool)

(assert (=> b!1444308 m!1662907))

(declare-fun m!1662909 () Bool)

(assert (=> b!1444310 m!1662909))

(assert (=> b!1443820 d!418664))

(declare-fun d!418666 () Bool)

(declare-fun res!654009 () Bool)

(declare-fun e!921422 () Bool)

(assert (=> d!418666 (=> res!654009 e!921422)))

(assert (=> d!418666 (= res!654009 (or (not ((_ is Cons!14978) (++!4022 lt!496053 lt!496048))) (not ((_ is Cons!14978) (t!130033 (++!4022 lt!496053 lt!496048))))))))

(assert (=> d!418666 (= (tokensListTwoByTwoPredicateSeparableList!239 Lexer!2290 (++!4022 lt!496053 lt!496048) (rules!11466 thiss!10022)) e!921422)))

(declare-fun b!1444311 () Bool)

(declare-fun e!921423 () Bool)

(assert (=> b!1444311 (= e!921422 e!921423)))

(declare-fun res!654008 () Bool)

(assert (=> b!1444311 (=> (not res!654008) (not e!921423))))

(assert (=> b!1444311 (= res!654008 (separableTokensPredicate!522 Lexer!2290 (h!20379 (++!4022 lt!496053 lt!496048)) (h!20379 (t!130033 (++!4022 lt!496053 lt!496048))) (rules!11466 thiss!10022)))))

(declare-fun lt!496639 () Unit!23545)

(declare-fun Unit!23572 () Unit!23545)

(assert (=> b!1444311 (= lt!496639 Unit!23572)))

(assert (=> b!1444311 (> (size!12275 (charsOf!1519 (h!20379 (t!130033 (++!4022 lt!496053 lt!496048))))) 0)))

(declare-fun lt!496636 () Unit!23545)

(declare-fun Unit!23573 () Unit!23545)

(assert (=> b!1444311 (= lt!496636 Unit!23573)))

(assert (=> b!1444311 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) (h!20379 (t!130033 (++!4022 lt!496053 lt!496048))))))

(declare-fun lt!496635 () Unit!23545)

(declare-fun Unit!23574 () Unit!23545)

(assert (=> b!1444311 (= lt!496635 Unit!23574)))

(assert (=> b!1444311 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) (h!20379 (++!4022 lt!496053 lt!496048)))))

(declare-fun lt!496638 () Unit!23545)

(declare-fun lt!496641 () Unit!23545)

(assert (=> b!1444311 (= lt!496638 lt!496641)))

(assert (=> b!1444311 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) (h!20379 (t!130033 (++!4022 lt!496053 lt!496048))))))

(assert (=> b!1444311 (= lt!496641 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!405 Lexer!2290 (rules!11466 thiss!10022) (++!4022 lt!496053 lt!496048) (h!20379 (t!130033 (++!4022 lt!496053 lt!496048)))))))

(declare-fun lt!496640 () Unit!23545)

(declare-fun lt!496637 () Unit!23545)

(assert (=> b!1444311 (= lt!496640 lt!496637)))

(assert (=> b!1444311 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) (h!20379 (++!4022 lt!496053 lt!496048)))))

(assert (=> b!1444311 (= lt!496637 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!405 Lexer!2290 (rules!11466 thiss!10022) (++!4022 lt!496053 lt!496048) (h!20379 (++!4022 lt!496053 lt!496048))))))

(declare-fun b!1444312 () Bool)

(assert (=> b!1444312 (= e!921423 (tokensListTwoByTwoPredicateSeparableList!239 Lexer!2290 (Cons!14978 (h!20379 (t!130033 (++!4022 lt!496053 lt!496048))) (t!130033 (t!130033 (++!4022 lt!496053 lt!496048)))) (rules!11466 thiss!10022)))))

(assert (= (and d!418666 (not res!654009)) b!1444311))

(assert (= (and b!1444311 res!654008) b!1444312))

(declare-fun m!1662911 () Bool)

(assert (=> b!1444311 m!1662911))

(declare-fun m!1662913 () Bool)

(assert (=> b!1444311 m!1662913))

(assert (=> b!1444311 m!1661601))

(declare-fun m!1662915 () Bool)

(assert (=> b!1444311 m!1662915))

(declare-fun m!1662917 () Bool)

(assert (=> b!1444311 m!1662917))

(assert (=> b!1444311 m!1661601))

(declare-fun m!1662919 () Bool)

(assert (=> b!1444311 m!1662919))

(declare-fun m!1662921 () Bool)

(assert (=> b!1444311 m!1662921))

(assert (=> b!1444311 m!1662911))

(declare-fun m!1662923 () Bool)

(assert (=> b!1444311 m!1662923))

(declare-fun m!1662925 () Bool)

(assert (=> b!1444312 m!1662925))

(assert (=> b!1443779 d!418666))

(assert (=> b!1443779 d!418390))

(declare-fun bs!342017 () Bool)

(declare-fun d!418668 () Bool)

(assert (= bs!342017 (and d!418668 d!418392)))

(declare-fun lambda!62944 () Int)

(assert (=> bs!342017 (= lambda!62944 lambda!62921)))

(declare-fun bs!342018 () Bool)

(assert (= bs!342018 (and d!418668 d!418460)))

(assert (=> bs!342018 (= lambda!62944 lambda!62923)))

(declare-fun bs!342019 () Bool)

(assert (= bs!342019 (and d!418668 d!418500)))

(assert (=> bs!342019 (= lambda!62944 lambda!62937)))

(declare-fun bs!342020 () Bool)

(assert (= bs!342020 (and d!418668 d!418548)))

(assert (=> bs!342020 (= lambda!62944 lambda!62938)))

(declare-fun b!1444317 () Bool)

(declare-fun e!921428 () Bool)

(assert (=> b!1444317 (= e!921428 true)))

(declare-fun b!1444316 () Bool)

(declare-fun e!921427 () Bool)

(assert (=> b!1444316 (= e!921427 e!921428)))

(declare-fun b!1444315 () Bool)

(declare-fun e!921426 () Bool)

(assert (=> b!1444315 (= e!921426 e!921427)))

(assert (=> d!418668 e!921426))

(assert (= b!1444316 b!1444317))

(assert (= b!1444315 b!1444316))

(assert (= (and d!418668 ((_ is Cons!14979) (rules!11466 thiss!10022))) b!1444315))

(assert (=> b!1444317 (< (dynLambda!6833 order!9017 (toValue!3940 (transformation!2633 (h!20380 (rules!11466 thiss!10022))))) (dynLambda!6834 order!9019 lambda!62944))))

(assert (=> b!1444317 (< (dynLambda!6835 order!9021 (toChars!3799 (transformation!2633 (h!20380 (rules!11466 thiss!10022))))) (dynLambda!6834 order!9019 lambda!62944))))

(assert (=> d!418668 true))

(declare-fun lt!496642 () Bool)

(assert (=> d!418668 (= lt!496642 (forall!3684 (++!4022 lt!496053 lt!496048) lambda!62944))))

(declare-fun e!921424 () Bool)

(assert (=> d!418668 (= lt!496642 e!921424)))

(declare-fun res!654010 () Bool)

(assert (=> d!418668 (=> res!654010 e!921424)))

(assert (=> d!418668 (= res!654010 (not ((_ is Cons!14978) (++!4022 lt!496053 lt!496048))))))

(assert (=> d!418668 (not (isEmpty!9324 (rules!11466 thiss!10022)))))

(assert (=> d!418668 (= (rulesProduceEachTokenIndividuallyList!728 Lexer!2290 (rules!11466 thiss!10022) (++!4022 lt!496053 lt!496048)) lt!496642)))

(declare-fun b!1444313 () Bool)

(declare-fun e!921425 () Bool)

(assert (=> b!1444313 (= e!921424 e!921425)))

(declare-fun res!654011 () Bool)

(assert (=> b!1444313 (=> (not res!654011) (not e!921425))))

(assert (=> b!1444313 (= res!654011 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) (h!20379 (++!4022 lt!496053 lt!496048))))))

(declare-fun b!1444314 () Bool)

(assert (=> b!1444314 (= e!921425 (rulesProduceEachTokenIndividuallyList!728 Lexer!2290 (rules!11466 thiss!10022) (t!130033 (++!4022 lt!496053 lt!496048))))))

(assert (= (and d!418668 (not res!654010)) b!1444313))

(assert (= (and b!1444313 res!654011) b!1444314))

(assert (=> d!418668 m!1661601))

(declare-fun m!1662927 () Bool)

(assert (=> d!418668 m!1662927))

(assert (=> d!418668 m!1661679))

(assert (=> b!1444313 m!1662921))

(declare-fun m!1662929 () Bool)

(assert (=> b!1444314 m!1662929))

(assert (=> b!1443779 d!418668))

(assert (=> b!1443779 d!418432))

(declare-fun d!418670 () Bool)

(declare-fun res!654012 () Bool)

(declare-fun e!921429 () Bool)

(assert (=> d!418670 (=> (not res!654012) (not e!921429))))

(assert (=> d!418670 (= res!654012 (= (csize!10416 (c!237768 (tokens!2004 thiss!10022))) (+ (size!12278 (left!12756 (c!237768 (tokens!2004 thiss!10022)))) (size!12278 (right!13086 (c!237768 (tokens!2004 thiss!10022)))))))))

(assert (=> d!418670 (= (inv!19933 (c!237768 (tokens!2004 thiss!10022))) e!921429)))

(declare-fun b!1444318 () Bool)

(declare-fun res!654013 () Bool)

(assert (=> b!1444318 (=> (not res!654013) (not e!921429))))

(assert (=> b!1444318 (= res!654013 (and (not (= (left!12756 (c!237768 (tokens!2004 thiss!10022))) Empty!5093)) (not (= (right!13086 (c!237768 (tokens!2004 thiss!10022))) Empty!5093))))))

(declare-fun b!1444319 () Bool)

(declare-fun res!654014 () Bool)

(assert (=> b!1444319 (=> (not res!654014) (not e!921429))))

(assert (=> b!1444319 (= res!654014 (= (cheight!5304 (c!237768 (tokens!2004 thiss!10022))) (+ (max!0 (height!750 (left!12756 (c!237768 (tokens!2004 thiss!10022)))) (height!750 (right!13086 (c!237768 (tokens!2004 thiss!10022))))) 1)))))

(declare-fun b!1444320 () Bool)

(assert (=> b!1444320 (= e!921429 (<= 0 (cheight!5304 (c!237768 (tokens!2004 thiss!10022)))))))

(assert (= (and d!418670 res!654012) b!1444318))

(assert (= (and b!1444318 res!654013) b!1444319))

(assert (= (and b!1444319 res!654014) b!1444320))

(declare-fun m!1662931 () Bool)

(assert (=> d!418670 m!1662931))

(declare-fun m!1662933 () Bool)

(assert (=> d!418670 m!1662933))

(assert (=> b!1444319 m!1662635))

(assert (=> b!1444319 m!1662637))

(assert (=> b!1444319 m!1662635))

(assert (=> b!1444319 m!1662637))

(declare-fun m!1662935 () Bool)

(assert (=> b!1444319 m!1662935))

(assert (=> b!1443792 d!418670))

(assert (=> d!418366 d!418646))

(declare-fun d!418672 () Bool)

(assert (=> d!418672 (= (inv!19923 (tag!2897 (h!20380 (rules!11466 thiss!10022)))) (= (mod (str.len (value!84687 (tag!2897 (h!20380 (rules!11466 thiss!10022))))) 2) 0))))

(assert (=> b!1443818 d!418672))

(declare-fun d!418674 () Bool)

(declare-fun res!654015 () Bool)

(declare-fun e!921430 () Bool)

(assert (=> d!418674 (=> (not res!654015) (not e!921430))))

(assert (=> d!418674 (= res!654015 (semiInverseModEq!992 (toChars!3799 (transformation!2633 (h!20380 (rules!11466 thiss!10022)))) (toValue!3940 (transformation!2633 (h!20380 (rules!11466 thiss!10022))))))))

(assert (=> d!418674 (= (inv!19936 (transformation!2633 (h!20380 (rules!11466 thiss!10022)))) e!921430)))

(declare-fun b!1444321 () Bool)

(assert (=> b!1444321 (= e!921430 (equivClasses!951 (toChars!3799 (transformation!2633 (h!20380 (rules!11466 thiss!10022)))) (toValue!3940 (transformation!2633 (h!20380 (rules!11466 thiss!10022))))))))

(assert (= (and d!418674 res!654015) b!1444321))

(declare-fun m!1662937 () Bool)

(assert (=> d!418674 m!1662937))

(declare-fun m!1662939 () Bool)

(assert (=> b!1444321 m!1662939))

(assert (=> b!1443818 d!418674))

(declare-fun d!418676 () Bool)

(assert (=> d!418676 (= (isEmpty!9324 (rules!11466 other!32)) ((_ is Nil!14979) (rules!11466 other!32)))))

(assert (=> d!418358 d!418676))

(declare-fun bs!342021 () Bool)

(declare-fun d!418678 () Bool)

(assert (= bs!342021 (and d!418678 d!418500)))

(declare-fun lambda!62945 () Int)

(assert (=> bs!342021 (= (= (rules!11466 other!32) (rules!11466 thiss!10022)) (= lambda!62945 lambda!62937))))

(declare-fun bs!342022 () Bool)

(assert (= bs!342022 (and d!418678 d!418460)))

(assert (=> bs!342022 (= (= (rules!11466 other!32) (rules!11466 thiss!10022)) (= lambda!62945 lambda!62923))))

(declare-fun bs!342023 () Bool)

(assert (= bs!342023 (and d!418678 d!418548)))

(assert (=> bs!342023 (= (= (rules!11466 other!32) (rules!11466 thiss!10022)) (= lambda!62945 lambda!62938))))

(declare-fun bs!342024 () Bool)

(assert (= bs!342024 (and d!418678 d!418392)))

(assert (=> bs!342024 (= (= (rules!11466 other!32) (rules!11466 thiss!10022)) (= lambda!62945 lambda!62921))))

(declare-fun bs!342025 () Bool)

(assert (= bs!342025 (and d!418678 d!418668)))

(assert (=> bs!342025 (= (= (rules!11466 other!32) (rules!11466 thiss!10022)) (= lambda!62945 lambda!62944))))

(declare-fun b!1444325 () Bool)

(declare-fun e!921434 () Bool)

(assert (=> b!1444325 (= e!921434 true)))

(declare-fun b!1444324 () Bool)

(declare-fun e!921433 () Bool)

(assert (=> b!1444324 (= e!921433 e!921434)))

(declare-fun b!1444323 () Bool)

(declare-fun e!921432 () Bool)

(assert (=> b!1444323 (= e!921432 e!921433)))

(assert (=> d!418678 e!921432))

(assert (= b!1444324 b!1444325))

(assert (= b!1444323 b!1444324))

(assert (= (and d!418678 ((_ is Cons!14979) (rules!11466 other!32))) b!1444323))

(assert (=> b!1444325 (< (dynLambda!6833 order!9017 (toValue!3940 (transformation!2633 (h!20380 (rules!11466 other!32))))) (dynLambda!6834 order!9019 lambda!62945))))

(assert (=> b!1444325 (< (dynLambda!6835 order!9021 (toChars!3799 (transformation!2633 (h!20380 (rules!11466 other!32))))) (dynLambda!6834 order!9019 lambda!62945))))

(assert (=> d!418678 true))

(declare-fun e!921431 () Bool)

(assert (=> d!418678 e!921431))

(declare-fun res!654016 () Bool)

(assert (=> d!418678 (=> (not res!654016) (not e!921431))))

(declare-fun lt!496643 () Bool)

(assert (=> d!418678 (= res!654016 (= lt!496643 (forall!3684 (list!5963 (tokens!2004 other!32)) lambda!62945)))))

(assert (=> d!418678 (= lt!496643 (forall!3686 (tokens!2004 other!32) lambda!62945))))

(assert (=> d!418678 (not (isEmpty!9324 (rules!11466 other!32)))))

(assert (=> d!418678 (= (rulesProduceEachTokenIndividually!848 Lexer!2290 (rules!11466 other!32) (tokens!2004 other!32)) lt!496643)))

(declare-fun b!1444322 () Bool)

(assert (=> b!1444322 (= e!921431 (= lt!496643 (rulesProduceEachTokenIndividuallyList!728 Lexer!2290 (rules!11466 other!32) (list!5963 (tokens!2004 other!32)))))))

(assert (= (and d!418678 res!654016) b!1444322))

(assert (=> d!418678 m!1661567))

(assert (=> d!418678 m!1661567))

(declare-fun m!1662941 () Bool)

(assert (=> d!418678 m!1662941))

(declare-fun m!1662943 () Bool)

(assert (=> d!418678 m!1662943))

(assert (=> d!418678 m!1661687))

(assert (=> b!1444322 m!1661567))

(assert (=> b!1444322 m!1661567))

(declare-fun m!1662945 () Bool)

(assert (=> b!1444322 m!1662945))

(assert (=> b!1443585 d!418678))

(declare-fun d!418680 () Bool)

(declare-fun lt!496646 () Token!4928)

(assert (=> d!418680 (= lt!496646 (apply!3852 (list!5963 (_1!7961 lt!496114)) 0))))

(declare-fun apply!3860 (Conc!5093 Int) Token!4928)

(assert (=> d!418680 (= lt!496646 (apply!3860 (c!237768 (_1!7961 lt!496114)) 0))))

(declare-fun e!921437 () Bool)

(assert (=> d!418680 e!921437))

(declare-fun res!654019 () Bool)

(assert (=> d!418680 (=> (not res!654019) (not e!921437))))

(assert (=> d!418680 (= res!654019 (<= 0 0))))

(assert (=> d!418680 (= (apply!3850 (_1!7961 lt!496114) 0) lt!496646)))

(declare-fun b!1444328 () Bool)

(assert (=> b!1444328 (= e!921437 (< 0 (size!12276 (_1!7961 lt!496114))))))

(assert (= (and d!418680 res!654019) b!1444328))

(declare-fun m!1662947 () Bool)

(assert (=> d!418680 m!1662947))

(assert (=> d!418680 m!1662947))

(declare-fun m!1662949 () Bool)

(assert (=> d!418680 m!1662949))

(declare-fun m!1662951 () Bool)

(assert (=> d!418680 m!1662951))

(assert (=> b!1444328 m!1661761))

(assert (=> b!1443596 d!418680))

(declare-fun d!418682 () Bool)

(declare-fun lt!496647 () BalanceConc!10124)

(assert (=> d!418682 (= (list!5968 lt!496647) (originalCharacters!3495 (h!20379 (t!130033 lt!496054))))))

(assert (=> d!418682 (= lt!496647 (dynLambda!6838 (toChars!3799 (transformation!2633 (rule!4404 (h!20379 (t!130033 lt!496054))))) (value!84688 (h!20379 (t!130033 lt!496054)))))))

(assert (=> d!418682 (= (charsOf!1519 (h!20379 (t!130033 lt!496054))) lt!496647)))

(declare-fun b_lambda!45135 () Bool)

(assert (=> (not b_lambda!45135) (not d!418682)))

(declare-fun tb!78573 () Bool)

(declare-fun t!130086 () Bool)

(assert (=> (and b!1443805 (= (toChars!3799 (transformation!2633 (h!20380 (rules!11466 other!32)))) (toChars!3799 (transformation!2633 (rule!4404 (h!20379 (t!130033 lt!496054)))))) t!130086) tb!78573))

(declare-fun b!1444329 () Bool)

(declare-fun e!921438 () Bool)

(declare-fun tp!407600 () Bool)

(assert (=> b!1444329 (= e!921438 (and (inv!19940 (c!237766 (dynLambda!6838 (toChars!3799 (transformation!2633 (rule!4404 (h!20379 (t!130033 lt!496054))))) (value!84688 (h!20379 (t!130033 lt!496054)))))) tp!407600))))

(declare-fun result!94974 () Bool)

(assert (=> tb!78573 (= result!94974 (and (inv!19941 (dynLambda!6838 (toChars!3799 (transformation!2633 (rule!4404 (h!20379 (t!130033 lt!496054))))) (value!84688 (h!20379 (t!130033 lt!496054))))) e!921438))))

(assert (= tb!78573 b!1444329))

(declare-fun m!1662953 () Bool)

(assert (=> b!1444329 m!1662953))

(declare-fun m!1662955 () Bool)

(assert (=> tb!78573 m!1662955))

(assert (=> d!418682 t!130086))

(declare-fun b_and!97779 () Bool)

(assert (= b_and!97775 (and (=> t!130086 result!94974) b_and!97779)))

(declare-fun t!130088 () Bool)

(declare-fun tb!78575 () Bool)

(assert (=> (and b!1443819 (= (toChars!3799 (transformation!2633 (h!20380 (rules!11466 thiss!10022)))) (toChars!3799 (transformation!2633 (rule!4404 (h!20379 (t!130033 lt!496054)))))) t!130088) tb!78575))

(declare-fun result!94976 () Bool)

(assert (= result!94976 result!94974))

(assert (=> d!418682 t!130088))

(declare-fun b_and!97781 () Bool)

(assert (= b_and!97777 (and (=> t!130088 result!94976) b_and!97781)))

(declare-fun m!1662957 () Bool)

(assert (=> d!418682 m!1662957))

(declare-fun m!1662959 () Bool)

(assert (=> d!418682 m!1662959))

(assert (=> b!1443537 d!418682))

(declare-fun d!418684 () Bool)

(declare-fun lt!496649 () Bool)

(declare-fun e!921439 () Bool)

(assert (=> d!418684 (= lt!496649 e!921439)))

(declare-fun res!654020 () Bool)

(assert (=> d!418684 (=> (not res!654020) (not e!921439))))

(assert (=> d!418684 (= res!654020 (= (list!5963 (_1!7961 (lex!1048 Lexer!2290 (rules!11466 thiss!10022) (print!1071 Lexer!2290 (singletonSeq!1234 (h!20379 lt!496054)))))) (list!5963 (singletonSeq!1234 (h!20379 lt!496054)))))))

(declare-fun e!921440 () Bool)

(assert (=> d!418684 (= lt!496649 e!921440)))

(declare-fun res!654022 () Bool)

(assert (=> d!418684 (=> (not res!654022) (not e!921440))))

(declare-fun lt!496648 () tuple2!14150)

(assert (=> d!418684 (= res!654022 (= (size!12276 (_1!7961 lt!496648)) 1))))

(assert (=> d!418684 (= lt!496648 (lex!1048 Lexer!2290 (rules!11466 thiss!10022) (print!1071 Lexer!2290 (singletonSeq!1234 (h!20379 lt!496054)))))))

(assert (=> d!418684 (not (isEmpty!9324 (rules!11466 thiss!10022)))))

(assert (=> d!418684 (= (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) (h!20379 lt!496054)) lt!496649)))

(declare-fun b!1444330 () Bool)

(declare-fun res!654021 () Bool)

(assert (=> b!1444330 (=> (not res!654021) (not e!921440))))

(assert (=> b!1444330 (= res!654021 (= (apply!3850 (_1!7961 lt!496648) 0) (h!20379 lt!496054)))))

(declare-fun b!1444331 () Bool)

(assert (=> b!1444331 (= e!921440 (isEmpty!9327 (_2!7961 lt!496648)))))

(declare-fun b!1444332 () Bool)

(assert (=> b!1444332 (= e!921439 (isEmpty!9327 (_2!7961 (lex!1048 Lexer!2290 (rules!11466 thiss!10022) (print!1071 Lexer!2290 (singletonSeq!1234 (h!20379 lt!496054)))))))))

(assert (= (and d!418684 res!654022) b!1444330))

(assert (= (and b!1444330 res!654021) b!1444331))

(assert (= (and d!418684 res!654020) b!1444332))

(declare-fun m!1662961 () Bool)

(assert (=> d!418684 m!1662961))

(declare-fun m!1662963 () Bool)

(assert (=> d!418684 m!1662963))

(declare-fun m!1662965 () Bool)

(assert (=> d!418684 m!1662965))

(assert (=> d!418684 m!1661679))

(declare-fun m!1662967 () Bool)

(assert (=> d!418684 m!1662967))

(declare-fun m!1662969 () Bool)

(assert (=> d!418684 m!1662969))

(assert (=> d!418684 m!1662961))

(assert (=> d!418684 m!1662967))

(declare-fun m!1662971 () Bool)

(assert (=> d!418684 m!1662971))

(assert (=> d!418684 m!1662961))

(declare-fun m!1662973 () Bool)

(assert (=> b!1444330 m!1662973))

(declare-fun m!1662975 () Bool)

(assert (=> b!1444331 m!1662975))

(assert (=> b!1444332 m!1662961))

(assert (=> b!1444332 m!1662961))

(assert (=> b!1444332 m!1662967))

(assert (=> b!1444332 m!1662967))

(assert (=> b!1444332 m!1662969))

(declare-fun m!1662977 () Bool)

(assert (=> b!1444332 m!1662977))

(assert (=> b!1443537 d!418684))

(declare-fun d!418686 () Bool)

(assert (=> d!418686 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) (h!20379 (t!130033 lt!496054)))))

(declare-fun lt!496650 () Unit!23545)

(assert (=> d!418686 (= lt!496650 (choose!8897 Lexer!2290 (rules!11466 thiss!10022) lt!496054 (h!20379 (t!130033 lt!496054))))))

(assert (=> d!418686 (not (isEmpty!9324 (rules!11466 thiss!10022)))))

(assert (=> d!418686 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!405 Lexer!2290 (rules!11466 thiss!10022) lt!496054 (h!20379 (t!130033 lt!496054))) lt!496650)))

(declare-fun bs!342026 () Bool)

(assert (= bs!342026 d!418686))

(assert (=> bs!342026 m!1661647))

(declare-fun m!1662979 () Bool)

(assert (=> bs!342026 m!1662979))

(assert (=> bs!342026 m!1661679))

(assert (=> b!1443537 d!418686))

(declare-fun d!418688 () Bool)

(assert (=> d!418688 (= (separableTokensPredicate!522 Lexer!2290 (h!20379 lt!496054) (h!20379 (t!130033 lt!496054)) (rules!11466 thiss!10022)) (not (prefixMatchZipperSequence!333 (rulesRegex!395 Lexer!2290 (rules!11466 thiss!10022)) (++!4025 (charsOf!1519 (h!20379 lt!496054)) (singletonSeq!1235 (apply!3851 (charsOf!1519 (h!20379 (t!130033 lt!496054))) 0))))))))

(declare-fun bs!342027 () Bool)

(assert (= bs!342027 d!418688))

(assert (=> bs!342027 m!1661737))

(declare-fun m!1662981 () Bool)

(assert (=> bs!342027 m!1662981))

(declare-fun m!1662983 () Bool)

(assert (=> bs!342027 m!1662983))

(declare-fun m!1662985 () Bool)

(assert (=> bs!342027 m!1662985))

(declare-fun m!1662987 () Bool)

(assert (=> bs!342027 m!1662987))

(assert (=> bs!342027 m!1662981))

(assert (=> bs!342027 m!1661641))

(assert (=> bs!342027 m!1661641))

(declare-fun m!1662989 () Bool)

(assert (=> bs!342027 m!1662989))

(assert (=> bs!342027 m!1662985))

(assert (=> bs!342027 m!1662989))

(assert (=> bs!342027 m!1662987))

(assert (=> bs!342027 m!1661737))

(assert (=> b!1443537 d!418688))

(declare-fun d!418690 () Bool)

(declare-fun lt!496652 () Bool)

(declare-fun e!921441 () Bool)

(assert (=> d!418690 (= lt!496652 e!921441)))

(declare-fun res!654023 () Bool)

(assert (=> d!418690 (=> (not res!654023) (not e!921441))))

(assert (=> d!418690 (= res!654023 (= (list!5963 (_1!7961 (lex!1048 Lexer!2290 (rules!11466 thiss!10022) (print!1071 Lexer!2290 (singletonSeq!1234 (h!20379 (t!130033 lt!496054))))))) (list!5963 (singletonSeq!1234 (h!20379 (t!130033 lt!496054))))))))

(declare-fun e!921442 () Bool)

(assert (=> d!418690 (= lt!496652 e!921442)))

(declare-fun res!654025 () Bool)

(assert (=> d!418690 (=> (not res!654025) (not e!921442))))

(declare-fun lt!496651 () tuple2!14150)

(assert (=> d!418690 (= res!654025 (= (size!12276 (_1!7961 lt!496651)) 1))))

(assert (=> d!418690 (= lt!496651 (lex!1048 Lexer!2290 (rules!11466 thiss!10022) (print!1071 Lexer!2290 (singletonSeq!1234 (h!20379 (t!130033 lt!496054))))))))

(assert (=> d!418690 (not (isEmpty!9324 (rules!11466 thiss!10022)))))

(assert (=> d!418690 (= (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) (h!20379 (t!130033 lt!496054))) lt!496652)))

(declare-fun b!1444333 () Bool)

(declare-fun res!654024 () Bool)

(assert (=> b!1444333 (=> (not res!654024) (not e!921442))))

(assert (=> b!1444333 (= res!654024 (= (apply!3850 (_1!7961 lt!496651) 0) (h!20379 (t!130033 lt!496054))))))

(declare-fun b!1444334 () Bool)

(assert (=> b!1444334 (= e!921442 (isEmpty!9327 (_2!7961 lt!496651)))))

(declare-fun b!1444335 () Bool)

(assert (=> b!1444335 (= e!921441 (isEmpty!9327 (_2!7961 (lex!1048 Lexer!2290 (rules!11466 thiss!10022) (print!1071 Lexer!2290 (singletonSeq!1234 (h!20379 (t!130033 lt!496054))))))))))

(assert (= (and d!418690 res!654025) b!1444333))

(assert (= (and b!1444333 res!654024) b!1444334))

(assert (= (and d!418690 res!654023) b!1444335))

(declare-fun m!1662991 () Bool)

(assert (=> d!418690 m!1662991))

(declare-fun m!1662993 () Bool)

(assert (=> d!418690 m!1662993))

(declare-fun m!1662995 () Bool)

(assert (=> d!418690 m!1662995))

(assert (=> d!418690 m!1661679))

(declare-fun m!1662997 () Bool)

(assert (=> d!418690 m!1662997))

(declare-fun m!1662999 () Bool)

(assert (=> d!418690 m!1662999))

(assert (=> d!418690 m!1662991))

(assert (=> d!418690 m!1662997))

(declare-fun m!1663001 () Bool)

(assert (=> d!418690 m!1663001))

(assert (=> d!418690 m!1662991))

(declare-fun m!1663003 () Bool)

(assert (=> b!1444333 m!1663003))

(declare-fun m!1663005 () Bool)

(assert (=> b!1444334 m!1663005))

(assert (=> b!1444335 m!1662991))

(assert (=> b!1444335 m!1662991))

(assert (=> b!1444335 m!1662997))

(assert (=> b!1444335 m!1662997))

(assert (=> b!1444335 m!1662999))

(declare-fun m!1663007 () Bool)

(assert (=> b!1444335 m!1663007))

(assert (=> b!1443537 d!418690))

(declare-fun d!418692 () Bool)

(assert (=> d!418692 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) (h!20379 lt!496054))))

(declare-fun lt!496653 () Unit!23545)

(assert (=> d!418692 (= lt!496653 (choose!8897 Lexer!2290 (rules!11466 thiss!10022) lt!496054 (h!20379 lt!496054)))))

(assert (=> d!418692 (not (isEmpty!9324 (rules!11466 thiss!10022)))))

(assert (=> d!418692 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!405 Lexer!2290 (rules!11466 thiss!10022) lt!496054 (h!20379 lt!496054)) lt!496653)))

(declare-fun bs!342028 () Bool)

(assert (= bs!342028 d!418692))

(assert (=> bs!342028 m!1661651))

(declare-fun m!1663009 () Bool)

(assert (=> bs!342028 m!1663009))

(assert (=> bs!342028 m!1661679))

(assert (=> b!1443537 d!418692))

(declare-fun d!418694 () Bool)

(declare-fun lt!496656 () Int)

(declare-fun size!12282 (List!15042) Int)

(assert (=> d!418694 (= lt!496656 (size!12282 (list!5968 (charsOf!1519 (h!20379 (t!130033 lt!496054))))))))

(declare-fun size!12283 (Conc!5092) Int)

(assert (=> d!418694 (= lt!496656 (size!12283 (c!237766 (charsOf!1519 (h!20379 (t!130033 lt!496054))))))))

(assert (=> d!418694 (= (size!12275 (charsOf!1519 (h!20379 (t!130033 lt!496054)))) lt!496656)))

(declare-fun bs!342029 () Bool)

(assert (= bs!342029 d!418694))

(assert (=> bs!342029 m!1661641))

(declare-fun m!1663011 () Bool)

(assert (=> bs!342029 m!1663011))

(assert (=> bs!342029 m!1663011))

(declare-fun m!1663013 () Bool)

(assert (=> bs!342029 m!1663013))

(declare-fun m!1663015 () Bool)

(assert (=> bs!342029 m!1663015))

(assert (=> b!1443537 d!418694))

(declare-fun d!418696 () Bool)

(assert (=> d!418696 (= (inv!19937 (xs!7830 (c!237768 (tokens!2004 other!32)))) (<= (size!12277 (innerList!5153 (xs!7830 (c!237768 (tokens!2004 other!32))))) 2147483647))))

(declare-fun bs!342030 () Bool)

(assert (= bs!342030 d!418696))

(declare-fun m!1663017 () Bool)

(assert (=> bs!342030 m!1663017))

(assert (=> b!1443815 d!418696))

(assert (=> b!1443681 d!418684))

(declare-fun d!418698 () Bool)

(declare-fun lt!496657 () Token!4928)

(assert (=> d!418698 (= lt!496657 (apply!3852 (list!5963 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32))) (+ 0 1)))))

(assert (=> d!418698 (= lt!496657 (apply!3860 (c!237768 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32))) (+ 0 1)))))

(declare-fun e!921443 () Bool)

(assert (=> d!418698 e!921443))

(declare-fun res!654026 () Bool)

(assert (=> d!418698 (=> (not res!654026) (not e!921443))))

(assert (=> d!418698 (= res!654026 (<= 0 (+ 0 1)))))

(assert (=> d!418698 (= (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1)) lt!496657)))

(declare-fun b!1444336 () Bool)

(assert (=> b!1444336 (= e!921443 (< (+ 0 1) (size!12276 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)))))))

(assert (= (and d!418698 res!654026) b!1444336))

(assert (=> d!418698 m!1661591))

(assert (=> d!418698 m!1661989))

(assert (=> d!418698 m!1661989))

(declare-fun m!1663019 () Bool)

(assert (=> d!418698 m!1663019))

(declare-fun m!1663021 () Bool)

(assert (=> d!418698 m!1663021))

(assert (=> b!1444336 m!1661591))

(assert (=> b!1444336 m!1661991))

(assert (=> b!1443724 d!418698))

(declare-fun d!418700 () Bool)

(declare-fun lt!496659 () Bool)

(declare-fun e!921444 () Bool)

(assert (=> d!418700 (= lt!496659 e!921444)))

(declare-fun res!654027 () Bool)

(assert (=> d!418700 (=> (not res!654027) (not e!921444))))

(assert (=> d!418700 (= res!654027 (= (list!5963 (_1!7961 (lex!1048 Lexer!2290 (rules!11466 thiss!10022) (print!1071 Lexer!2290 (singletonSeq!1234 lt!496327))))) (list!5963 (singletonSeq!1234 lt!496327))))))

(declare-fun e!921445 () Bool)

(assert (=> d!418700 (= lt!496659 e!921445)))

(declare-fun res!654029 () Bool)

(assert (=> d!418700 (=> (not res!654029) (not e!921445))))

(declare-fun lt!496658 () tuple2!14150)

(assert (=> d!418700 (= res!654029 (= (size!12276 (_1!7961 lt!496658)) 1))))

(assert (=> d!418700 (= lt!496658 (lex!1048 Lexer!2290 (rules!11466 thiss!10022) (print!1071 Lexer!2290 (singletonSeq!1234 lt!496327))))))

(assert (=> d!418700 (not (isEmpty!9324 (rules!11466 thiss!10022)))))

(assert (=> d!418700 (= (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) lt!496327) lt!496659)))

(declare-fun b!1444337 () Bool)

(declare-fun res!654028 () Bool)

(assert (=> b!1444337 (=> (not res!654028) (not e!921445))))

(assert (=> b!1444337 (= res!654028 (= (apply!3850 (_1!7961 lt!496658) 0) lt!496327))))

(declare-fun b!1444338 () Bool)

(assert (=> b!1444338 (= e!921445 (isEmpty!9327 (_2!7961 lt!496658)))))

(declare-fun b!1444339 () Bool)

(assert (=> b!1444339 (= e!921444 (isEmpty!9327 (_2!7961 (lex!1048 Lexer!2290 (rules!11466 thiss!10022) (print!1071 Lexer!2290 (singletonSeq!1234 lt!496327))))))))

(assert (= (and d!418700 res!654029) b!1444337))

(assert (= (and b!1444337 res!654028) b!1444338))

(assert (= (and d!418700 res!654027) b!1444339))

(declare-fun m!1663023 () Bool)

(assert (=> d!418700 m!1663023))

(declare-fun m!1663025 () Bool)

(assert (=> d!418700 m!1663025))

(declare-fun m!1663027 () Bool)

(assert (=> d!418700 m!1663027))

(assert (=> d!418700 m!1661679))

(declare-fun m!1663029 () Bool)

(assert (=> d!418700 m!1663029))

(declare-fun m!1663031 () Bool)

(assert (=> d!418700 m!1663031))

(assert (=> d!418700 m!1663023))

(assert (=> d!418700 m!1663029))

(declare-fun m!1663033 () Bool)

(assert (=> d!418700 m!1663033))

(assert (=> d!418700 m!1663023))

(declare-fun m!1663035 () Bool)

(assert (=> b!1444337 m!1663035))

(declare-fun m!1663037 () Bool)

(assert (=> b!1444338 m!1663037))

(assert (=> b!1444339 m!1663023))

(assert (=> b!1444339 m!1663023))

(assert (=> b!1444339 m!1663029))

(assert (=> b!1444339 m!1663029))

(assert (=> b!1444339 m!1663031))

(declare-fun m!1663039 () Bool)

(assert (=> b!1444339 m!1663039))

(assert (=> b!1443724 d!418700))

(declare-fun d!418702 () Bool)

(assert (=> d!418702 (= (tail!2160 (drop!734 lt!496344 0)) (drop!734 lt!496344 (+ 0 1)))))

(declare-fun lt!496662 () Unit!23545)

(declare-fun choose!8904 (List!15044 Int) Unit!23545)

(assert (=> d!418702 (= lt!496662 (choose!8904 lt!496344 0))))

(declare-fun e!921448 () Bool)

(assert (=> d!418702 e!921448))

(declare-fun res!654032 () Bool)

(assert (=> d!418702 (=> (not res!654032) (not e!921448))))

(assert (=> d!418702 (= res!654032 (>= 0 0))))

(assert (=> d!418702 (= (lemmaDropTail!466 lt!496344 0) lt!496662)))

(declare-fun b!1444342 () Bool)

(assert (=> b!1444342 (= e!921448 (< 0 (size!12277 lt!496344)))))

(assert (= (and d!418702 res!654032) b!1444342))

(assert (=> d!418702 m!1662031))

(assert (=> d!418702 m!1662031))

(assert (=> d!418702 m!1662049))

(assert (=> d!418702 m!1662041))

(declare-fun m!1663041 () Bool)

(assert (=> d!418702 m!1663041))

(declare-fun m!1663043 () Bool)

(assert (=> b!1444342 m!1663043))

(assert (=> b!1443724 d!418702))

(declare-fun d!418704 () Bool)

(declare-fun lt!496665 () Token!4928)

(assert (=> d!418704 (contains!2868 lt!496337 lt!496665)))

(declare-fun e!921453 () Token!4928)

(assert (=> d!418704 (= lt!496665 e!921453)))

(declare-fun c!237880 () Bool)

(assert (=> d!418704 (= c!237880 (= 0 0))))

(declare-fun e!921454 () Bool)

(assert (=> d!418704 e!921454))

(declare-fun res!654035 () Bool)

(assert (=> d!418704 (=> (not res!654035) (not e!921454))))

(assert (=> d!418704 (= res!654035 (<= 0 0))))

(assert (=> d!418704 (= (apply!3852 lt!496337 0) lt!496665)))

(declare-fun b!1444349 () Bool)

(assert (=> b!1444349 (= e!921454 (< 0 (size!12277 lt!496337)))))

(declare-fun b!1444350 () Bool)

(assert (=> b!1444350 (= e!921453 (head!2924 lt!496337))))

(declare-fun b!1444351 () Bool)

(assert (=> b!1444351 (= e!921453 (apply!3852 (tail!2160 lt!496337) (- 0 1)))))

(assert (= (and d!418704 res!654035) b!1444349))

(assert (= (and d!418704 c!237880) b!1444350))

(assert (= (and d!418704 (not c!237880)) b!1444351))

(declare-fun m!1663045 () Bool)

(assert (=> d!418704 m!1663045))

(declare-fun m!1663047 () Bool)

(assert (=> b!1444349 m!1663047))

(declare-fun m!1663049 () Bool)

(assert (=> b!1444350 m!1663049))

(declare-fun m!1663051 () Bool)

(assert (=> b!1444351 m!1663051))

(assert (=> b!1444351 m!1663051))

(declare-fun m!1663053 () Bool)

(assert (=> b!1444351 m!1663053))

(assert (=> b!1443724 d!418704))

(declare-fun d!418706 () Bool)

(assert (=> d!418706 (= (list!5963 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32))) (list!5965 (c!237768 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)))))))

(declare-fun bs!342031 () Bool)

(assert (= bs!342031 d!418706))

(declare-fun m!1663055 () Bool)

(assert (=> bs!342031 m!1663055))

(assert (=> b!1443724 d!418706))

(declare-fun d!418708 () Bool)

(assert (=> d!418708 (= (head!2924 (drop!734 lt!496337 0)) (apply!3852 lt!496337 0))))

(declare-fun lt!496668 () Unit!23545)

(declare-fun choose!8905 (List!15044 Int) Unit!23545)

(assert (=> d!418708 (= lt!496668 (choose!8905 lt!496337 0))))

(declare-fun e!921457 () Bool)

(assert (=> d!418708 e!921457))

(declare-fun res!654038 () Bool)

(assert (=> d!418708 (=> (not res!654038) (not e!921457))))

(assert (=> d!418708 (= res!654038 (>= 0 0))))

(assert (=> d!418708 (= (lemmaDropApply!486 lt!496337 0) lt!496668)))

(declare-fun b!1444354 () Bool)

(assert (=> b!1444354 (= e!921457 (< 0 (size!12277 lt!496337)))))

(assert (= (and d!418708 res!654038) b!1444354))

(assert (=> d!418708 m!1662007))

(assert (=> d!418708 m!1662007))

(assert (=> d!418708 m!1662009))

(assert (=> d!418708 m!1662027))

(declare-fun m!1663057 () Bool)

(assert (=> d!418708 m!1663057))

(assert (=> b!1444354 m!1663047))

(assert (=> b!1443724 d!418708))

(declare-fun d!418710 () Bool)

(assert (=> d!418710 (= (tail!2160 (drop!734 lt!496354 lt!496334)) (t!130033 (drop!734 lt!496354 lt!496334)))))

(assert (=> b!1443724 d!418710))

(declare-fun d!418712 () Bool)

(assert (=> d!418712 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) lt!496327)))

(declare-fun lt!496669 () Unit!23545)

(assert (=> d!418712 (= lt!496669 (choose!8897 Lexer!2290 (rules!11466 thiss!10022) lt!496340 lt!496327))))

(assert (=> d!418712 (not (isEmpty!9324 (rules!11466 thiss!10022)))))

(assert (=> d!418712 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!405 Lexer!2290 (rules!11466 thiss!10022) lt!496340 lt!496327) lt!496669)))

(declare-fun bs!342032 () Bool)

(assert (= bs!342032 d!418712))

(assert (=> bs!342032 m!1662019))

(declare-fun m!1663059 () Bool)

(assert (=> bs!342032 m!1663059))

(assert (=> bs!342032 m!1661679))

(assert (=> b!1443724 d!418712))

(declare-fun d!418714 () Bool)

(assert (=> d!418714 (= (tail!2160 (drop!734 lt!496354 lt!496334)) (drop!734 lt!496354 (+ lt!496334 1)))))

(declare-fun lt!496670 () Unit!23545)

(assert (=> d!418714 (= lt!496670 (choose!8904 lt!496354 lt!496334))))

(declare-fun e!921458 () Bool)

(assert (=> d!418714 e!921458))

(declare-fun res!654039 () Bool)

(assert (=> d!418714 (=> (not res!654039) (not e!921458))))

(assert (=> d!418714 (= res!654039 (>= lt!496334 0))))

(assert (=> d!418714 (= (lemmaDropTail!466 lt!496354 lt!496334) lt!496670)))

(declare-fun b!1444355 () Bool)

(assert (=> b!1444355 (= e!921458 (< lt!496334 (size!12277 lt!496354)))))

(assert (= (and d!418714 res!654039) b!1444355))

(assert (=> d!418714 m!1662003))

(assert (=> d!418714 m!1662003))

(assert (=> d!418714 m!1662005))

(assert (=> d!418714 m!1662043))

(declare-fun m!1663061 () Bool)

(assert (=> d!418714 m!1663061))

(declare-fun m!1663063 () Bool)

(assert (=> b!1444355 m!1663063))

(assert (=> b!1443724 d!418714))

(declare-fun b!1444374 () Bool)

(declare-fun e!921473 () Int)

(assert (=> b!1444374 (= e!921473 0)))

(declare-fun b!1444375 () Bool)

(declare-fun e!921472 () Bool)

(declare-fun lt!496673 () List!15044)

(declare-fun e!921471 () Int)

(assert (=> b!1444375 (= e!921472 (= (size!12277 lt!496673) e!921471))))

(declare-fun c!237890 () Bool)

(assert (=> b!1444375 (= c!237890 (<= lt!496334 0))))

(declare-fun b!1444376 () Bool)

(declare-fun e!921470 () List!15044)

(assert (=> b!1444376 (= e!921470 (drop!734 (t!130033 lt!496354) (- lt!496334 1)))))

(declare-fun bm!97708 () Bool)

(declare-fun call!97713 () Int)

(assert (=> bm!97708 (= call!97713 (size!12277 lt!496354))))

(declare-fun b!1444377 () Bool)

(assert (=> b!1444377 (= e!921471 e!921473)))

(declare-fun c!237891 () Bool)

(assert (=> b!1444377 (= c!237891 (>= lt!496334 call!97713))))

(declare-fun b!1444378 () Bool)

(assert (=> b!1444378 (= e!921470 lt!496354)))

(declare-fun b!1444379 () Bool)

(assert (=> b!1444379 (= e!921473 (- call!97713 lt!496334))))

(declare-fun d!418716 () Bool)

(assert (=> d!418716 e!921472))

(declare-fun res!654042 () Bool)

(assert (=> d!418716 (=> (not res!654042) (not e!921472))))

(assert (=> d!418716 (= res!654042 (= ((_ map implies) (content!2215 lt!496673) (content!2215 lt!496354)) ((as const (InoxSet Token!4928)) true)))))

(declare-fun e!921469 () List!15044)

(assert (=> d!418716 (= lt!496673 e!921469)))

(declare-fun c!237892 () Bool)

(assert (=> d!418716 (= c!237892 ((_ is Nil!14978) lt!496354))))

(assert (=> d!418716 (= (drop!734 lt!496354 lt!496334) lt!496673)))

(declare-fun b!1444380 () Bool)

(assert (=> b!1444380 (= e!921469 Nil!14978)))

(declare-fun b!1444381 () Bool)

(assert (=> b!1444381 (= e!921471 call!97713)))

(declare-fun b!1444382 () Bool)

(assert (=> b!1444382 (= e!921469 e!921470)))

(declare-fun c!237889 () Bool)

(assert (=> b!1444382 (= c!237889 (<= lt!496334 0))))

(assert (= (and d!418716 c!237892) b!1444380))

(assert (= (and d!418716 (not c!237892)) b!1444382))

(assert (= (and b!1444382 c!237889) b!1444378))

(assert (= (and b!1444382 (not c!237889)) b!1444376))

(assert (= (and d!418716 res!654042) b!1444375))

(assert (= (and b!1444375 c!237890) b!1444381))

(assert (= (and b!1444375 (not c!237890)) b!1444377))

(assert (= (and b!1444377 c!237891) b!1444374))

(assert (= (and b!1444377 (not c!237891)) b!1444379))

(assert (= (or b!1444381 b!1444377 b!1444379) bm!97708))

(declare-fun m!1663065 () Bool)

(assert (=> b!1444375 m!1663065))

(declare-fun m!1663067 () Bool)

(assert (=> b!1444376 m!1663067))

(assert (=> bm!97708 m!1663063))

(declare-fun m!1663069 () Bool)

(assert (=> d!418716 m!1663069))

(declare-fun m!1663071 () Bool)

(assert (=> d!418716 m!1663071))

(assert (=> b!1443724 d!418716))

(declare-fun d!418718 () Bool)

(assert (=> d!418718 (= (tail!2160 (drop!734 lt!496344 0)) (t!130033 (drop!734 lt!496344 0)))))

(assert (=> b!1443724 d!418718))

(declare-fun d!418720 () Bool)

(declare-fun lt!496675 () Bool)

(declare-fun e!921474 () Bool)

(assert (=> d!418720 (= lt!496675 e!921474)))

(declare-fun res!654043 () Bool)

(assert (=> d!418720 (=> (not res!654043) (not e!921474))))

(assert (=> d!418720 (= res!654043 (= (list!5963 (_1!7961 (lex!1048 Lexer!2290 (rules!11466 thiss!10022) (print!1071 Lexer!2290 (singletonSeq!1234 (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) 0)))))) (list!5963 (singletonSeq!1234 (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) 0)))))))

(declare-fun e!921475 () Bool)

(assert (=> d!418720 (= lt!496675 e!921475)))

(declare-fun res!654045 () Bool)

(assert (=> d!418720 (=> (not res!654045) (not e!921475))))

(declare-fun lt!496674 () tuple2!14150)

(assert (=> d!418720 (= res!654045 (= (size!12276 (_1!7961 lt!496674)) 1))))

(assert (=> d!418720 (= lt!496674 (lex!1048 Lexer!2290 (rules!11466 thiss!10022) (print!1071 Lexer!2290 (singletonSeq!1234 (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) 0)))))))

(assert (=> d!418720 (not (isEmpty!9324 (rules!11466 thiss!10022)))))

(assert (=> d!418720 (= (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) 0)) lt!496675)))

(declare-fun b!1444383 () Bool)

(declare-fun res!654044 () Bool)

(assert (=> b!1444383 (=> (not res!654044) (not e!921475))))

(assert (=> b!1444383 (= res!654044 (= (apply!3850 (_1!7961 lt!496674) 0) (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) 0)))))

(declare-fun b!1444384 () Bool)

(assert (=> b!1444384 (= e!921475 (isEmpty!9327 (_2!7961 lt!496674)))))

(declare-fun b!1444385 () Bool)

(assert (=> b!1444385 (= e!921474 (isEmpty!9327 (_2!7961 (lex!1048 Lexer!2290 (rules!11466 thiss!10022) (print!1071 Lexer!2290 (singletonSeq!1234 (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) 0)))))))))

(assert (= (and d!418720 res!654045) b!1444383))

(assert (= (and b!1444383 res!654044) b!1444384))

(assert (= (and d!418720 res!654043) b!1444385))

(declare-fun m!1663073 () Bool)

(assert (=> d!418720 m!1663073))

(declare-fun m!1663075 () Bool)

(assert (=> d!418720 m!1663075))

(declare-fun m!1663077 () Bool)

(assert (=> d!418720 m!1663077))

(assert (=> d!418720 m!1661679))

(declare-fun m!1663079 () Bool)

(assert (=> d!418720 m!1663079))

(declare-fun m!1663081 () Bool)

(assert (=> d!418720 m!1663081))

(assert (=> d!418720 m!1663073))

(assert (=> d!418720 m!1663079))

(declare-fun m!1663083 () Bool)

(assert (=> d!418720 m!1663083))

(assert (=> d!418720 m!1661997))

(assert (=> d!418720 m!1663073))

(declare-fun m!1663085 () Bool)

(assert (=> b!1444383 m!1663085))

(declare-fun m!1663087 () Bool)

(assert (=> b!1444384 m!1663087))

(assert (=> b!1444385 m!1661997))

(assert (=> b!1444385 m!1663073))

(assert (=> b!1444385 m!1663073))

(assert (=> b!1444385 m!1663079))

(assert (=> b!1444385 m!1663079))

(assert (=> b!1444385 m!1663081))

(declare-fun m!1663089 () Bool)

(assert (=> b!1444385 m!1663089))

(assert (=> b!1443724 d!418720))

(declare-fun b!1444386 () Bool)

(declare-fun e!921480 () Int)

(assert (=> b!1444386 (= e!921480 0)))

(declare-fun b!1444387 () Bool)

(declare-fun e!921479 () Bool)

(declare-fun lt!496676 () List!15044)

(declare-fun e!921478 () Int)

(assert (=> b!1444387 (= e!921479 (= (size!12277 lt!496676) e!921478))))

(declare-fun c!237894 () Bool)

(assert (=> b!1444387 (= c!237894 (<= (+ 0 1) 0))))

(declare-fun b!1444388 () Bool)

(declare-fun e!921477 () List!15044)

(assert (=> b!1444388 (= e!921477 (drop!734 (t!130033 lt!496344) (- (+ 0 1) 1)))))

(declare-fun bm!97709 () Bool)

(declare-fun call!97714 () Int)

(assert (=> bm!97709 (= call!97714 (size!12277 lt!496344))))

(declare-fun b!1444389 () Bool)

(assert (=> b!1444389 (= e!921478 e!921480)))

(declare-fun c!237895 () Bool)

(assert (=> b!1444389 (= c!237895 (>= (+ 0 1) call!97714))))

(declare-fun b!1444390 () Bool)

(assert (=> b!1444390 (= e!921477 lt!496344)))

(declare-fun b!1444391 () Bool)

(assert (=> b!1444391 (= e!921480 (- call!97714 (+ 0 1)))))

(declare-fun d!418722 () Bool)

(assert (=> d!418722 e!921479))

(declare-fun res!654046 () Bool)

(assert (=> d!418722 (=> (not res!654046) (not e!921479))))

(assert (=> d!418722 (= res!654046 (= ((_ map implies) (content!2215 lt!496676) (content!2215 lt!496344)) ((as const (InoxSet Token!4928)) true)))))

(declare-fun e!921476 () List!15044)

(assert (=> d!418722 (= lt!496676 e!921476)))

(declare-fun c!237896 () Bool)

(assert (=> d!418722 (= c!237896 ((_ is Nil!14978) lt!496344))))

(assert (=> d!418722 (= (drop!734 lt!496344 (+ 0 1)) lt!496676)))

(declare-fun b!1444392 () Bool)

(assert (=> b!1444392 (= e!921476 Nil!14978)))

(declare-fun b!1444393 () Bool)

(assert (=> b!1444393 (= e!921478 call!97714)))

(declare-fun b!1444394 () Bool)

(assert (=> b!1444394 (= e!921476 e!921477)))

(declare-fun c!237893 () Bool)

(assert (=> b!1444394 (= c!237893 (<= (+ 0 1) 0))))

(assert (= (and d!418722 c!237896) b!1444392))

(assert (= (and d!418722 (not c!237896)) b!1444394))

(assert (= (and b!1444394 c!237893) b!1444390))

(assert (= (and b!1444394 (not c!237893)) b!1444388))

(assert (= (and d!418722 res!654046) b!1444387))

(assert (= (and b!1444387 c!237894) b!1444393))

(assert (= (and b!1444387 (not c!237894)) b!1444389))

(assert (= (and b!1444389 c!237895) b!1444386))

(assert (= (and b!1444389 (not c!237895)) b!1444391))

(assert (= (or b!1444393 b!1444389 b!1444391) bm!97709))

(declare-fun m!1663091 () Bool)

(assert (=> b!1444387 m!1663091))

(declare-fun m!1663093 () Bool)

(assert (=> b!1444388 m!1663093))

(assert (=> bm!97709 m!1663043))

(declare-fun m!1663095 () Bool)

(assert (=> d!418722 m!1663095))

(declare-fun m!1663097 () Bool)

(assert (=> d!418722 m!1663097))

(assert (=> b!1443724 d!418722))

(declare-fun d!418724 () Bool)

(assert (=> d!418724 (= (separableTokensPredicate!522 Lexer!2290 (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) 0) (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1)) (rules!11466 thiss!10022)) (not (prefixMatchZipperSequence!333 (rulesRegex!395 Lexer!2290 (rules!11466 thiss!10022)) (++!4025 (charsOf!1519 (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) 0)) (singletonSeq!1235 (apply!3851 (charsOf!1519 (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1))) 0))))))))

(declare-fun bs!342033 () Bool)

(assert (= bs!342033 d!418724))

(assert (=> bs!342033 m!1661737))

(declare-fun m!1663099 () Bool)

(assert (=> bs!342033 m!1663099))

(declare-fun m!1663101 () Bool)

(assert (=> bs!342033 m!1663101))

(declare-fun m!1663103 () Bool)

(assert (=> bs!342033 m!1663103))

(declare-fun m!1663105 () Bool)

(assert (=> bs!342033 m!1663105))

(assert (=> bs!342033 m!1663099))

(assert (=> bs!342033 m!1662021))

(assert (=> bs!342033 m!1662011))

(assert (=> bs!342033 m!1662011))

(declare-fun m!1663107 () Bool)

(assert (=> bs!342033 m!1663107))

(assert (=> bs!342033 m!1661997))

(assert (=> bs!342033 m!1663103))

(assert (=> bs!342033 m!1663107))

(assert (=> bs!342033 m!1663105))

(assert (=> bs!342033 m!1661737))

(assert (=> b!1443724 d!418724))

(declare-fun d!418726 () Bool)

(assert (=> d!418726 (= (head!2924 (drop!734 lt!496337 0)) (h!20379 (drop!734 lt!496337 0)))))

(assert (=> b!1443724 d!418726))

(declare-fun d!418728 () Bool)

(declare-fun lt!496678 () Bool)

(declare-fun e!921481 () Bool)

(assert (=> d!418728 (= lt!496678 e!921481)))

(declare-fun res!654047 () Bool)

(assert (=> d!418728 (=> (not res!654047) (not e!921481))))

(assert (=> d!418728 (= res!654047 (= (list!5963 (_1!7961 (lex!1048 Lexer!2290 (rules!11466 thiss!10022) (print!1071 Lexer!2290 (singletonSeq!1234 lt!496351))))) (list!5963 (singletonSeq!1234 lt!496351))))))

(declare-fun e!921482 () Bool)

(assert (=> d!418728 (= lt!496678 e!921482)))

(declare-fun res!654049 () Bool)

(assert (=> d!418728 (=> (not res!654049) (not e!921482))))

(declare-fun lt!496677 () tuple2!14150)

(assert (=> d!418728 (= res!654049 (= (size!12276 (_1!7961 lt!496677)) 1))))

(assert (=> d!418728 (= lt!496677 (lex!1048 Lexer!2290 (rules!11466 thiss!10022) (print!1071 Lexer!2290 (singletonSeq!1234 lt!496351))))))

(assert (=> d!418728 (not (isEmpty!9324 (rules!11466 thiss!10022)))))

(assert (=> d!418728 (= (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) lt!496351) lt!496678)))

(declare-fun b!1444395 () Bool)

(declare-fun res!654048 () Bool)

(assert (=> b!1444395 (=> (not res!654048) (not e!921482))))

(assert (=> b!1444395 (= res!654048 (= (apply!3850 (_1!7961 lt!496677) 0) lt!496351))))

(declare-fun b!1444396 () Bool)

(assert (=> b!1444396 (= e!921482 (isEmpty!9327 (_2!7961 lt!496677)))))

(declare-fun b!1444397 () Bool)

(assert (=> b!1444397 (= e!921481 (isEmpty!9327 (_2!7961 (lex!1048 Lexer!2290 (rules!11466 thiss!10022) (print!1071 Lexer!2290 (singletonSeq!1234 lt!496351))))))))

(assert (= (and d!418728 res!654049) b!1444395))

(assert (= (and b!1444395 res!654048) b!1444396))

(assert (= (and d!418728 res!654047) b!1444397))

(declare-fun m!1663109 () Bool)

(assert (=> d!418728 m!1663109))

(declare-fun m!1663111 () Bool)

(assert (=> d!418728 m!1663111))

(declare-fun m!1663113 () Bool)

(assert (=> d!418728 m!1663113))

(assert (=> d!418728 m!1661679))

(declare-fun m!1663115 () Bool)

(assert (=> d!418728 m!1663115))

(declare-fun m!1663117 () Bool)

(assert (=> d!418728 m!1663117))

(assert (=> d!418728 m!1663109))

(assert (=> d!418728 m!1663115))

(declare-fun m!1663119 () Bool)

(assert (=> d!418728 m!1663119))

(assert (=> d!418728 m!1663109))

(declare-fun m!1663121 () Bool)

(assert (=> b!1444395 m!1663121))

(declare-fun m!1663123 () Bool)

(assert (=> b!1444396 m!1663123))

(assert (=> b!1444397 m!1663109))

(assert (=> b!1444397 m!1663109))

(assert (=> b!1444397 m!1663115))

(assert (=> b!1444397 m!1663115))

(assert (=> b!1444397 m!1663117))

(declare-fun m!1663125 () Bool)

(assert (=> b!1444397 m!1663125))

(assert (=> b!1443724 d!418728))

(declare-fun b!1444398 () Bool)

(declare-fun e!921487 () Int)

(assert (=> b!1444398 (= e!921487 0)))

(declare-fun b!1444399 () Bool)

(declare-fun e!921486 () Bool)

(declare-fun lt!496679 () List!15044)

(declare-fun e!921485 () Int)

(assert (=> b!1444399 (= e!921486 (= (size!12277 lt!496679) e!921485))))

(declare-fun c!237898 () Bool)

(assert (=> b!1444399 (= c!237898 (<= 0 0))))

(declare-fun b!1444400 () Bool)

(declare-fun e!921484 () List!15044)

(assert (=> b!1444400 (= e!921484 (drop!734 (t!130033 lt!496344) (- 0 1)))))

(declare-fun bm!97710 () Bool)

(declare-fun call!97715 () Int)

(assert (=> bm!97710 (= call!97715 (size!12277 lt!496344))))

(declare-fun b!1444401 () Bool)

(assert (=> b!1444401 (= e!921485 e!921487)))

(declare-fun c!237899 () Bool)

(assert (=> b!1444401 (= c!237899 (>= 0 call!97715))))

(declare-fun b!1444402 () Bool)

(assert (=> b!1444402 (= e!921484 lt!496344)))

(declare-fun b!1444403 () Bool)

(assert (=> b!1444403 (= e!921487 (- call!97715 0))))

(declare-fun d!418730 () Bool)

(assert (=> d!418730 e!921486))

(declare-fun res!654050 () Bool)

(assert (=> d!418730 (=> (not res!654050) (not e!921486))))

(assert (=> d!418730 (= res!654050 (= ((_ map implies) (content!2215 lt!496679) (content!2215 lt!496344)) ((as const (InoxSet Token!4928)) true)))))

(declare-fun e!921483 () List!15044)

(assert (=> d!418730 (= lt!496679 e!921483)))

(declare-fun c!237900 () Bool)

(assert (=> d!418730 (= c!237900 ((_ is Nil!14978) lt!496344))))

(assert (=> d!418730 (= (drop!734 lt!496344 0) lt!496679)))

(declare-fun b!1444404 () Bool)

(assert (=> b!1444404 (= e!921483 Nil!14978)))

(declare-fun b!1444405 () Bool)

(assert (=> b!1444405 (= e!921485 call!97715)))

(declare-fun b!1444406 () Bool)

(assert (=> b!1444406 (= e!921483 e!921484)))

(declare-fun c!237897 () Bool)

(assert (=> b!1444406 (= c!237897 (<= 0 0))))

(assert (= (and d!418730 c!237900) b!1444404))

(assert (= (and d!418730 (not c!237900)) b!1444406))

(assert (= (and b!1444406 c!237897) b!1444402))

(assert (= (and b!1444406 (not c!237897)) b!1444400))

(assert (= (and d!418730 res!654050) b!1444399))

(assert (= (and b!1444399 c!237898) b!1444405))

(assert (= (and b!1444399 (not c!237898)) b!1444401))

(assert (= (and b!1444401 c!237899) b!1444398))

(assert (= (and b!1444401 (not c!237899)) b!1444403))

(assert (= (or b!1444405 b!1444401 b!1444403) bm!97710))

(declare-fun m!1663127 () Bool)

(assert (=> b!1444399 m!1663127))

(declare-fun m!1663129 () Bool)

(assert (=> b!1444400 m!1663129))

(assert (=> bm!97710 m!1663043))

(declare-fun m!1663131 () Bool)

(assert (=> d!418730 m!1663131))

(assert (=> d!418730 m!1663097))

(assert (=> b!1443724 d!418730))

(declare-fun b!1444407 () Bool)

(declare-fun e!921492 () Int)

(assert (=> b!1444407 (= e!921492 0)))

(declare-fun b!1444408 () Bool)

(declare-fun e!921491 () Bool)

(declare-fun lt!496680 () List!15044)

(declare-fun e!921490 () Int)

(assert (=> b!1444408 (= e!921491 (= (size!12277 lt!496680) e!921490))))

(declare-fun c!237902 () Bool)

(assert (=> b!1444408 (= c!237902 (<= 0 0))))

(declare-fun b!1444409 () Bool)

(declare-fun e!921489 () List!15044)

(assert (=> b!1444409 (= e!921489 (drop!734 (t!130033 lt!496337) (- 0 1)))))

(declare-fun bm!97711 () Bool)

(declare-fun call!97716 () Int)

(assert (=> bm!97711 (= call!97716 (size!12277 lt!496337))))

(declare-fun b!1444410 () Bool)

(assert (=> b!1444410 (= e!921490 e!921492)))

(declare-fun c!237903 () Bool)

(assert (=> b!1444410 (= c!237903 (>= 0 call!97716))))

(declare-fun b!1444411 () Bool)

(assert (=> b!1444411 (= e!921489 lt!496337)))

(declare-fun b!1444412 () Bool)

(assert (=> b!1444412 (= e!921492 (- call!97716 0))))

(declare-fun d!418732 () Bool)

(assert (=> d!418732 e!921491))

(declare-fun res!654051 () Bool)

(assert (=> d!418732 (=> (not res!654051) (not e!921491))))

(assert (=> d!418732 (= res!654051 (= ((_ map implies) (content!2215 lt!496680) (content!2215 lt!496337)) ((as const (InoxSet Token!4928)) true)))))

(declare-fun e!921488 () List!15044)

(assert (=> d!418732 (= lt!496680 e!921488)))

(declare-fun c!237904 () Bool)

(assert (=> d!418732 (= c!237904 ((_ is Nil!14978) lt!496337))))

(assert (=> d!418732 (= (drop!734 lt!496337 0) lt!496680)))

(declare-fun b!1444413 () Bool)

(assert (=> b!1444413 (= e!921488 Nil!14978)))

(declare-fun b!1444414 () Bool)

(assert (=> b!1444414 (= e!921490 call!97716)))

(declare-fun b!1444415 () Bool)

(assert (=> b!1444415 (= e!921488 e!921489)))

(declare-fun c!237901 () Bool)

(assert (=> b!1444415 (= c!237901 (<= 0 0))))

(assert (= (and d!418732 c!237904) b!1444413))

(assert (= (and d!418732 (not c!237904)) b!1444415))

(assert (= (and b!1444415 c!237901) b!1444411))

(assert (= (and b!1444415 (not c!237901)) b!1444409))

(assert (= (and d!418732 res!654051) b!1444408))

(assert (= (and b!1444408 c!237902) b!1444414))

(assert (= (and b!1444408 (not c!237902)) b!1444410))

(assert (= (and b!1444410 c!237903) b!1444407))

(assert (= (and b!1444410 (not c!237903)) b!1444412))

(assert (= (or b!1444414 b!1444410 b!1444412) bm!97711))

(declare-fun m!1663133 () Bool)

(assert (=> b!1444408 m!1663133))

(declare-fun m!1663135 () Bool)

(assert (=> b!1444409 m!1663135))

(assert (=> bm!97711 m!1663047))

(declare-fun m!1663137 () Bool)

(assert (=> d!418732 m!1663137))

(declare-fun m!1663139 () Bool)

(assert (=> d!418732 m!1663139))

(assert (=> b!1443724 d!418732))

(declare-fun d!418734 () Bool)

(assert (=> d!418734 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) lt!496351)))

(declare-fun lt!496681 () Unit!23545)

(assert (=> d!418734 (= lt!496681 (choose!8897 Lexer!2290 (rules!11466 thiss!10022) lt!496352 lt!496351))))

(assert (=> d!418734 (not (isEmpty!9324 (rules!11466 thiss!10022)))))

(assert (=> d!418734 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!405 Lexer!2290 (rules!11466 thiss!10022) lt!496352 lt!496351) lt!496681)))

(declare-fun bs!342034 () Bool)

(assert (= bs!342034 d!418734))

(assert (=> bs!342034 m!1662045))

(declare-fun m!1663141 () Bool)

(assert (=> bs!342034 m!1663141))

(assert (=> bs!342034 m!1661679))

(assert (=> b!1443724 d!418734))

(declare-fun d!418736 () Bool)

(declare-fun lt!496682 () Token!4928)

(assert (=> d!418736 (contains!2868 lt!496348 lt!496682)))

(declare-fun e!921493 () Token!4928)

(assert (=> d!418736 (= lt!496682 e!921493)))

(declare-fun c!237905 () Bool)

(assert (=> d!418736 (= c!237905 (= lt!496353 0))))

(declare-fun e!921494 () Bool)

(assert (=> d!418736 e!921494))

(declare-fun res!654052 () Bool)

(assert (=> d!418736 (=> (not res!654052) (not e!921494))))

(assert (=> d!418736 (= res!654052 (<= 0 lt!496353))))

(assert (=> d!418736 (= (apply!3852 lt!496348 lt!496353) lt!496682)))

(declare-fun b!1444416 () Bool)

(assert (=> b!1444416 (= e!921494 (< lt!496353 (size!12277 lt!496348)))))

(declare-fun b!1444417 () Bool)

(assert (=> b!1444417 (= e!921493 (head!2924 lt!496348))))

(declare-fun b!1444418 () Bool)

(assert (=> b!1444418 (= e!921493 (apply!3852 (tail!2160 lt!496348) (- lt!496353 1)))))

(assert (= (and d!418736 res!654052) b!1444416))

(assert (= (and d!418736 c!237905) b!1444417))

(assert (= (and d!418736 (not c!237905)) b!1444418))

(declare-fun m!1663143 () Bool)

(assert (=> d!418736 m!1663143))

(declare-fun m!1663145 () Bool)

(assert (=> b!1444416 m!1663145))

(declare-fun m!1663147 () Bool)

(assert (=> b!1444417 m!1663147))

(declare-fun m!1663149 () Bool)

(assert (=> b!1444418 m!1663149))

(assert (=> b!1444418 m!1663149))

(declare-fun m!1663151 () Bool)

(assert (=> b!1444418 m!1663151))

(assert (=> b!1443724 d!418736))

(declare-fun b!1444419 () Bool)

(declare-fun e!921499 () Int)

(assert (=> b!1444419 (= e!921499 0)))

(declare-fun b!1444420 () Bool)

(declare-fun e!921498 () Bool)

(declare-fun lt!496683 () List!15044)

(declare-fun e!921497 () Int)

(assert (=> b!1444420 (= e!921498 (= (size!12277 lt!496683) e!921497))))

(declare-fun c!237907 () Bool)

(assert (=> b!1444420 (= c!237907 (<= lt!496353 0))))

(declare-fun b!1444421 () Bool)

(declare-fun e!921496 () List!15044)

(assert (=> b!1444421 (= e!921496 (drop!734 (t!130033 lt!496348) (- lt!496353 1)))))

(declare-fun bm!97712 () Bool)

(declare-fun call!97717 () Int)

(assert (=> bm!97712 (= call!97717 (size!12277 lt!496348))))

(declare-fun b!1444422 () Bool)

(assert (=> b!1444422 (= e!921497 e!921499)))

(declare-fun c!237908 () Bool)

(assert (=> b!1444422 (= c!237908 (>= lt!496353 call!97717))))

(declare-fun b!1444423 () Bool)

(assert (=> b!1444423 (= e!921496 lt!496348)))

(declare-fun b!1444424 () Bool)

(assert (=> b!1444424 (= e!921499 (- call!97717 lt!496353))))

(declare-fun d!418738 () Bool)

(assert (=> d!418738 e!921498))

(declare-fun res!654053 () Bool)

(assert (=> d!418738 (=> (not res!654053) (not e!921498))))

(assert (=> d!418738 (= res!654053 (= ((_ map implies) (content!2215 lt!496683) (content!2215 lt!496348)) ((as const (InoxSet Token!4928)) true)))))

(declare-fun e!921495 () List!15044)

(assert (=> d!418738 (= lt!496683 e!921495)))

(declare-fun c!237909 () Bool)

(assert (=> d!418738 (= c!237909 ((_ is Nil!14978) lt!496348))))

(assert (=> d!418738 (= (drop!734 lt!496348 lt!496353) lt!496683)))

(declare-fun b!1444425 () Bool)

(assert (=> b!1444425 (= e!921495 Nil!14978)))

(declare-fun b!1444426 () Bool)

(assert (=> b!1444426 (= e!921497 call!97717)))

(declare-fun b!1444427 () Bool)

(assert (=> b!1444427 (= e!921495 e!921496)))

(declare-fun c!237906 () Bool)

(assert (=> b!1444427 (= c!237906 (<= lt!496353 0))))

(assert (= (and d!418738 c!237909) b!1444425))

(assert (= (and d!418738 (not c!237909)) b!1444427))

(assert (= (and b!1444427 c!237906) b!1444423))

(assert (= (and b!1444427 (not c!237906)) b!1444421))

(assert (= (and d!418738 res!654053) b!1444420))

(assert (= (and b!1444420 c!237907) b!1444426))

(assert (= (and b!1444420 (not c!237907)) b!1444422))

(assert (= (and b!1444422 c!237908) b!1444419))

(assert (= (and b!1444422 (not c!237908)) b!1444424))

(assert (= (or b!1444426 b!1444422 b!1444424) bm!97712))

(declare-fun m!1663153 () Bool)

(assert (=> b!1444420 m!1663153))

(declare-fun m!1663155 () Bool)

(assert (=> b!1444421 m!1663155))

(assert (=> bm!97712 m!1663145))

(declare-fun m!1663157 () Bool)

(assert (=> d!418738 m!1663157))

(declare-fun m!1663159 () Bool)

(assert (=> d!418738 m!1663159))

(assert (=> b!1443724 d!418738))

(declare-fun d!418740 () Bool)

(declare-fun lt!496685 () Bool)

(declare-fun e!921500 () Bool)

(assert (=> d!418740 (= lt!496685 e!921500)))

(declare-fun res!654054 () Bool)

(assert (=> d!418740 (=> (not res!654054) (not e!921500))))

(assert (=> d!418740 (= res!654054 (= (list!5963 (_1!7961 (lex!1048 Lexer!2290 (rules!11466 thiss!10022) (print!1071 Lexer!2290 (singletonSeq!1234 (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1))))))) (list!5963 (singletonSeq!1234 (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1))))))))

(declare-fun e!921501 () Bool)

(assert (=> d!418740 (= lt!496685 e!921501)))

(declare-fun res!654056 () Bool)

(assert (=> d!418740 (=> (not res!654056) (not e!921501))))

(declare-fun lt!496684 () tuple2!14150)

(assert (=> d!418740 (= res!654056 (= (size!12276 (_1!7961 lt!496684)) 1))))

(assert (=> d!418740 (= lt!496684 (lex!1048 Lexer!2290 (rules!11466 thiss!10022) (print!1071 Lexer!2290 (singletonSeq!1234 (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1))))))))

(assert (=> d!418740 (not (isEmpty!9324 (rules!11466 thiss!10022)))))

(assert (=> d!418740 (= (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1))) lt!496685)))

(declare-fun b!1444428 () Bool)

(declare-fun res!654055 () Bool)

(assert (=> b!1444428 (=> (not res!654055) (not e!921501))))

(assert (=> b!1444428 (= res!654055 (= (apply!3850 (_1!7961 lt!496684) 0) (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1))))))

(declare-fun b!1444429 () Bool)

(assert (=> b!1444429 (= e!921501 (isEmpty!9327 (_2!7961 lt!496684)))))

(declare-fun b!1444430 () Bool)

(assert (=> b!1444430 (= e!921500 (isEmpty!9327 (_2!7961 (lex!1048 Lexer!2290 (rules!11466 thiss!10022) (print!1071 Lexer!2290 (singletonSeq!1234 (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1))))))))))

(assert (= (and d!418740 res!654056) b!1444428))

(assert (= (and b!1444428 res!654055) b!1444429))

(assert (= (and d!418740 res!654054) b!1444430))

(declare-fun m!1663161 () Bool)

(assert (=> d!418740 m!1663161))

(declare-fun m!1663163 () Bool)

(assert (=> d!418740 m!1663163))

(declare-fun m!1663165 () Bool)

(assert (=> d!418740 m!1663165))

(assert (=> d!418740 m!1661679))

(declare-fun m!1663167 () Bool)

(assert (=> d!418740 m!1663167))

(declare-fun m!1663169 () Bool)

(assert (=> d!418740 m!1663169))

(assert (=> d!418740 m!1663161))

(assert (=> d!418740 m!1663167))

(declare-fun m!1663171 () Bool)

(assert (=> d!418740 m!1663171))

(assert (=> d!418740 m!1662021))

(assert (=> d!418740 m!1663161))

(declare-fun m!1663173 () Bool)

(assert (=> b!1444428 m!1663173))

(declare-fun m!1663175 () Bool)

(assert (=> b!1444429 m!1663175))

(assert (=> b!1444430 m!1662021))

(assert (=> b!1444430 m!1663161))

(assert (=> b!1444430 m!1663161))

(assert (=> b!1444430 m!1663167))

(assert (=> b!1444430 m!1663167))

(assert (=> b!1444430 m!1663169))

(declare-fun m!1663177 () Bool)

(assert (=> b!1444430 m!1663177))

(assert (=> b!1443724 d!418740))

(declare-fun d!418742 () Bool)

(assert (=> d!418742 (= (head!2924 (drop!734 lt!496348 lt!496353)) (apply!3852 lt!496348 lt!496353))))

(declare-fun lt!496686 () Unit!23545)

(assert (=> d!418742 (= lt!496686 (choose!8905 lt!496348 lt!496353))))

(declare-fun e!921502 () Bool)

(assert (=> d!418742 e!921502))

(declare-fun res!654057 () Bool)

(assert (=> d!418742 (=> (not res!654057) (not e!921502))))

(assert (=> d!418742 (= res!654057 (>= lt!496353 0))))

(assert (=> d!418742 (= (lemmaDropApply!486 lt!496348 lt!496353) lt!496686)))

(declare-fun b!1444431 () Bool)

(assert (=> b!1444431 (= e!921502 (< lt!496353 (size!12277 lt!496348)))))

(assert (= (and d!418742 res!654057) b!1444431))

(assert (=> d!418742 m!1662017))

(assert (=> d!418742 m!1662017))

(assert (=> d!418742 m!1662025))

(assert (=> d!418742 m!1662039))

(declare-fun m!1663179 () Bool)

(assert (=> d!418742 m!1663179))

(assert (=> b!1444431 m!1663145))

(assert (=> b!1443724 d!418742))

(declare-fun d!418744 () Bool)

(assert (=> d!418744 (= (head!2924 (drop!734 lt!496348 lt!496353)) (h!20379 (drop!734 lt!496348 lt!496353)))))

(assert (=> b!1443724 d!418744))

(declare-fun b!1444432 () Bool)

(declare-fun e!921507 () Int)

(assert (=> b!1444432 (= e!921507 0)))

(declare-fun b!1444433 () Bool)

(declare-fun e!921506 () Bool)

(declare-fun lt!496687 () List!15044)

(declare-fun e!921505 () Int)

(assert (=> b!1444433 (= e!921506 (= (size!12277 lt!496687) e!921505))))

(declare-fun c!237911 () Bool)

(assert (=> b!1444433 (= c!237911 (<= (+ lt!496334 1) 0))))

(declare-fun b!1444434 () Bool)

(declare-fun e!921504 () List!15044)

(assert (=> b!1444434 (= e!921504 (drop!734 (t!130033 lt!496354) (- (+ lt!496334 1) 1)))))

(declare-fun bm!97713 () Bool)

(declare-fun call!97718 () Int)

(assert (=> bm!97713 (= call!97718 (size!12277 lt!496354))))

(declare-fun b!1444435 () Bool)

(assert (=> b!1444435 (= e!921505 e!921507)))

(declare-fun c!237912 () Bool)

(assert (=> b!1444435 (= c!237912 (>= (+ lt!496334 1) call!97718))))

(declare-fun b!1444436 () Bool)

(assert (=> b!1444436 (= e!921504 lt!496354)))

(declare-fun b!1444437 () Bool)

(assert (=> b!1444437 (= e!921507 (- call!97718 (+ lt!496334 1)))))

(declare-fun d!418746 () Bool)

(assert (=> d!418746 e!921506))

(declare-fun res!654058 () Bool)

(assert (=> d!418746 (=> (not res!654058) (not e!921506))))

(assert (=> d!418746 (= res!654058 (= ((_ map implies) (content!2215 lt!496687) (content!2215 lt!496354)) ((as const (InoxSet Token!4928)) true)))))

(declare-fun e!921503 () List!15044)

(assert (=> d!418746 (= lt!496687 e!921503)))

(declare-fun c!237913 () Bool)

(assert (=> d!418746 (= c!237913 ((_ is Nil!14978) lt!496354))))

(assert (=> d!418746 (= (drop!734 lt!496354 (+ lt!496334 1)) lt!496687)))

(declare-fun b!1444438 () Bool)

(assert (=> b!1444438 (= e!921503 Nil!14978)))

(declare-fun b!1444439 () Bool)

(assert (=> b!1444439 (= e!921505 call!97718)))

(declare-fun b!1444440 () Bool)

(assert (=> b!1444440 (= e!921503 e!921504)))

(declare-fun c!237910 () Bool)

(assert (=> b!1444440 (= c!237910 (<= (+ lt!496334 1) 0))))

(assert (= (and d!418746 c!237913) b!1444438))

(assert (= (and d!418746 (not c!237913)) b!1444440))

(assert (= (and b!1444440 c!237910) b!1444436))

(assert (= (and b!1444440 (not c!237910)) b!1444434))

(assert (= (and d!418746 res!654058) b!1444433))

(assert (= (and b!1444433 c!237911) b!1444439))

(assert (= (and b!1444433 (not c!237911)) b!1444435))

(assert (= (and b!1444435 c!237912) b!1444432))

(assert (= (and b!1444435 (not c!237912)) b!1444437))

(assert (= (or b!1444439 b!1444435 b!1444437) bm!97713))

(declare-fun m!1663181 () Bool)

(assert (=> b!1444433 m!1663181))

(declare-fun m!1663183 () Bool)

(assert (=> b!1444434 m!1663183))

(assert (=> bm!97713 m!1663063))

(declare-fun m!1663185 () Bool)

(assert (=> d!418746 m!1663185))

(assert (=> d!418746 m!1663071))

(assert (=> b!1443724 d!418746))

(declare-fun d!418748 () Bool)

(declare-fun lt!496688 () Int)

(assert (=> d!418748 (= lt!496688 (size!12282 (list!5968 (charsOf!1519 (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1))))))))

(assert (=> d!418748 (= lt!496688 (size!12283 (c!237766 (charsOf!1519 (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1))))))))

(assert (=> d!418748 (= (size!12275 (charsOf!1519 (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1)))) lt!496688)))

(declare-fun bs!342035 () Bool)

(assert (= bs!342035 d!418748))

(assert (=> bs!342035 m!1662011))

(declare-fun m!1663187 () Bool)

(assert (=> bs!342035 m!1663187))

(assert (=> bs!342035 m!1663187))

(declare-fun m!1663189 () Bool)

(assert (=> bs!342035 m!1663189))

(declare-fun m!1663191 () Bool)

(assert (=> bs!342035 m!1663191))

(assert (=> b!1443724 d!418748))

(declare-fun d!418750 () Bool)

(declare-fun lt!496689 () Token!4928)

(assert (=> d!418750 (= lt!496689 (apply!3852 (list!5963 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32))) 0))))

(assert (=> d!418750 (= lt!496689 (apply!3860 (c!237768 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32))) 0))))

(declare-fun e!921508 () Bool)

(assert (=> d!418750 e!921508))

(declare-fun res!654059 () Bool)

(assert (=> d!418750 (=> (not res!654059) (not e!921508))))

(assert (=> d!418750 (= res!654059 (<= 0 0))))

(assert (=> d!418750 (= (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) 0) lt!496689)))

(declare-fun b!1444441 () Bool)

(assert (=> b!1444441 (= e!921508 (< 0 (size!12276 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)))))))

(assert (= (and d!418750 res!654059) b!1444441))

(assert (=> d!418750 m!1661591))

(assert (=> d!418750 m!1661989))

(assert (=> d!418750 m!1661989))

(declare-fun m!1663193 () Bool)

(assert (=> d!418750 m!1663193))

(declare-fun m!1663195 () Bool)

(assert (=> d!418750 m!1663195))

(assert (=> b!1444441 m!1661591))

(assert (=> b!1444441 m!1661991))

(assert (=> b!1443724 d!418750))

(declare-fun d!418752 () Bool)

(declare-fun lt!496690 () BalanceConc!10124)

(assert (=> d!418752 (= (list!5968 lt!496690) (originalCharacters!3495 (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1))))))

(assert (=> d!418752 (= lt!496690 (dynLambda!6838 (toChars!3799 (transformation!2633 (rule!4404 (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1))))) (value!84688 (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1)))))))

(assert (=> d!418752 (= (charsOf!1519 (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1))) lt!496690)))

(declare-fun b_lambda!45137 () Bool)

(assert (=> (not b_lambda!45137) (not d!418752)))

(declare-fun tb!78577 () Bool)

(declare-fun t!130090 () Bool)

(assert (=> (and b!1443805 (= (toChars!3799 (transformation!2633 (h!20380 (rules!11466 other!32)))) (toChars!3799 (transformation!2633 (rule!4404 (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1)))))) t!130090) tb!78577))

(declare-fun e!921509 () Bool)

(declare-fun tp!407601 () Bool)

(declare-fun b!1444442 () Bool)

(assert (=> b!1444442 (= e!921509 (and (inv!19940 (c!237766 (dynLambda!6838 (toChars!3799 (transformation!2633 (rule!4404 (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1))))) (value!84688 (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1)))))) tp!407601))))

(declare-fun result!94978 () Bool)

(assert (=> tb!78577 (= result!94978 (and (inv!19941 (dynLambda!6838 (toChars!3799 (transformation!2633 (rule!4404 (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1))))) (value!84688 (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1))))) e!921509))))

(assert (= tb!78577 b!1444442))

(declare-fun m!1663197 () Bool)

(assert (=> b!1444442 m!1663197))

(declare-fun m!1663199 () Bool)

(assert (=> tb!78577 m!1663199))

(assert (=> d!418752 t!130090))

(declare-fun b_and!97783 () Bool)

(assert (= b_and!97779 (and (=> t!130090 result!94978) b_and!97783)))

(declare-fun t!130092 () Bool)

(declare-fun tb!78579 () Bool)

(assert (=> (and b!1443819 (= (toChars!3799 (transformation!2633 (h!20380 (rules!11466 thiss!10022)))) (toChars!3799 (transformation!2633 (rule!4404 (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1)))))) t!130092) tb!78579))

(declare-fun result!94980 () Bool)

(assert (= result!94980 result!94978))

(assert (=> d!418752 t!130092))

(declare-fun b_and!97785 () Bool)

(assert (= b_and!97781 (and (=> t!130092 result!94980) b_and!97785)))

(declare-fun m!1663201 () Bool)

(assert (=> d!418752 m!1663201))

(declare-fun m!1663203 () Bool)

(assert (=> d!418752 m!1663203))

(assert (=> b!1443724 d!418752))

(declare-fun d!418754 () Bool)

(declare-fun lt!496691 () Int)

(assert (=> d!418754 (= lt!496691 (size!12277 (list!5963 (_1!7961 lt!496114))))))

(assert (=> d!418754 (= lt!496691 (size!12278 (c!237768 (_1!7961 lt!496114))))))

(assert (=> d!418754 (= (size!12276 (_1!7961 lt!496114)) lt!496691)))

(declare-fun bs!342036 () Bool)

(assert (= bs!342036 d!418754))

(assert (=> bs!342036 m!1662947))

(assert (=> bs!342036 m!1662947))

(declare-fun m!1663205 () Bool)

(assert (=> bs!342036 m!1663205))

(declare-fun m!1663207 () Bool)

(assert (=> bs!342036 m!1663207))

(assert (=> d!418380 d!418754))

(declare-fun d!418756 () Bool)

(declare-fun lt!496692 () BalanceConc!10124)

(assert (=> d!418756 (= (list!5968 lt!496692) (printList!711 Lexer!2290 (list!5963 (singletonSeq!1234 lt!496047))))))

(assert (=> d!418756 (= lt!496692 (printTailRec!683 Lexer!2290 (singletonSeq!1234 lt!496047) 0 (BalanceConc!10125 Empty!5092)))))

(assert (=> d!418756 (= (print!1071 Lexer!2290 (singletonSeq!1234 lt!496047)) lt!496692)))

(declare-fun bs!342037 () Bool)

(assert (= bs!342037 d!418756))

(declare-fun m!1663209 () Bool)

(assert (=> bs!342037 m!1663209))

(assert (=> bs!342037 m!1661751))

(assert (=> bs!342037 m!1661753))

(assert (=> bs!342037 m!1661753))

(declare-fun m!1663211 () Bool)

(assert (=> bs!342037 m!1663211))

(assert (=> bs!342037 m!1661751))

(declare-fun m!1663213 () Bool)

(assert (=> bs!342037 m!1663213))

(assert (=> d!418380 d!418756))

(declare-fun b!1444444 () Bool)

(declare-fun e!921512 () Bool)

(declare-fun lt!496693 () tuple2!14150)

(assert (=> b!1444444 (= e!921512 (= (_2!7961 lt!496693) (print!1071 Lexer!2290 (singletonSeq!1234 lt!496047))))))

(declare-fun b!1444445 () Bool)

(declare-fun res!654062 () Bool)

(declare-fun e!921511 () Bool)

(assert (=> b!1444445 (=> (not res!654062) (not e!921511))))

(assert (=> b!1444445 (= res!654062 (= (list!5963 (_1!7961 lt!496693)) (_1!7963 (lexList!704 Lexer!2290 (rules!11466 thiss!10022) (list!5968 (print!1071 Lexer!2290 (singletonSeq!1234 lt!496047)))))))))

(declare-fun b!1444446 () Bool)

(declare-fun e!921510 () Bool)

(assert (=> b!1444446 (= e!921512 e!921510)))

(declare-fun res!654060 () Bool)

(assert (=> b!1444446 (= res!654060 (< (size!12275 (_2!7961 lt!496693)) (size!12275 (print!1071 Lexer!2290 (singletonSeq!1234 lt!496047)))))))

(assert (=> b!1444446 (=> (not res!654060) (not e!921510))))

(declare-fun b!1444447 () Bool)

(assert (=> b!1444447 (= e!921511 (= (list!5968 (_2!7961 lt!496693)) (_2!7963 (lexList!704 Lexer!2290 (rules!11466 thiss!10022) (list!5968 (print!1071 Lexer!2290 (singletonSeq!1234 lt!496047)))))))))

(declare-fun b!1444443 () Bool)

(assert (=> b!1444443 (= e!921510 (not (isEmpty!9319 (_1!7961 lt!496693))))))

(declare-fun d!418758 () Bool)

(assert (=> d!418758 e!921511))

(declare-fun res!654061 () Bool)

(assert (=> d!418758 (=> (not res!654061) (not e!921511))))

(assert (=> d!418758 (= res!654061 e!921512)))

(declare-fun c!237914 () Bool)

(assert (=> d!418758 (= c!237914 (> (size!12276 (_1!7961 lt!496693)) 0))))

(assert (=> d!418758 (= lt!496693 (lexTailRecV2!459 Lexer!2290 (rules!11466 thiss!10022) (print!1071 Lexer!2290 (singletonSeq!1234 lt!496047)) (BalanceConc!10125 Empty!5092) (print!1071 Lexer!2290 (singletonSeq!1234 lt!496047)) (BalanceConc!10127 Empty!5093)))))

(assert (=> d!418758 (= (lex!1048 Lexer!2290 (rules!11466 thiss!10022) (print!1071 Lexer!2290 (singletonSeq!1234 lt!496047))) lt!496693)))

(assert (= (and d!418758 c!237914) b!1444446))

(assert (= (and d!418758 (not c!237914)) b!1444444))

(assert (= (and b!1444446 res!654060) b!1444443))

(assert (= (and d!418758 res!654061) b!1444445))

(assert (= (and b!1444445 res!654062) b!1444447))

(declare-fun m!1663215 () Bool)

(assert (=> b!1444443 m!1663215))

(declare-fun m!1663217 () Bool)

(assert (=> b!1444445 m!1663217))

(assert (=> b!1444445 m!1661757))

(declare-fun m!1663219 () Bool)

(assert (=> b!1444445 m!1663219))

(assert (=> b!1444445 m!1663219))

(declare-fun m!1663221 () Bool)

(assert (=> b!1444445 m!1663221))

(declare-fun m!1663223 () Bool)

(assert (=> b!1444446 m!1663223))

(assert (=> b!1444446 m!1661757))

(declare-fun m!1663225 () Bool)

(assert (=> b!1444446 m!1663225))

(declare-fun m!1663227 () Bool)

(assert (=> d!418758 m!1663227))

(assert (=> d!418758 m!1661757))

(assert (=> d!418758 m!1661757))

(declare-fun m!1663229 () Bool)

(assert (=> d!418758 m!1663229))

(declare-fun m!1663231 () Bool)

(assert (=> b!1444447 m!1663231))

(assert (=> b!1444447 m!1661757))

(assert (=> b!1444447 m!1663219))

(assert (=> b!1444447 m!1663219))

(assert (=> b!1444447 m!1663221))

(assert (=> d!418380 d!418758))

(declare-fun d!418760 () Bool)

(assert (=> d!418760 (= (list!5963 (singletonSeq!1234 lt!496047)) (list!5965 (c!237768 (singletonSeq!1234 lt!496047))))))

(declare-fun bs!342038 () Bool)

(assert (= bs!342038 d!418760))

(declare-fun m!1663233 () Bool)

(assert (=> bs!342038 m!1663233))

(assert (=> d!418380 d!418760))

(assert (=> d!418380 d!418488))

(declare-fun d!418762 () Bool)

(declare-fun e!921513 () Bool)

(assert (=> d!418762 e!921513))

(declare-fun res!654063 () Bool)

(assert (=> d!418762 (=> (not res!654063) (not e!921513))))

(declare-fun lt!496694 () BalanceConc!10126)

(assert (=> d!418762 (= res!654063 (= (list!5963 lt!496694) (Cons!14978 lt!496047 Nil!14978)))))

(assert (=> d!418762 (= lt!496694 (singleton!518 lt!496047))))

(assert (=> d!418762 (= (singletonSeq!1234 lt!496047) lt!496694)))

(declare-fun b!1444448 () Bool)

(assert (=> b!1444448 (= e!921513 (isBalanced!1514 (c!237768 lt!496694)))))

(assert (= (and d!418762 res!654063) b!1444448))

(declare-fun m!1663235 () Bool)

(assert (=> d!418762 m!1663235))

(declare-fun m!1663237 () Bool)

(assert (=> d!418762 m!1663237))

(declare-fun m!1663239 () Bool)

(assert (=> b!1444448 m!1663239))

(assert (=> d!418380 d!418762))

(declare-fun d!418764 () Bool)

(assert (=> d!418764 (= (list!5963 (_1!7961 (lex!1048 Lexer!2290 (rules!11466 thiss!10022) (print!1071 Lexer!2290 (singletonSeq!1234 lt!496047))))) (list!5965 (c!237768 (_1!7961 (lex!1048 Lexer!2290 (rules!11466 thiss!10022) (print!1071 Lexer!2290 (singletonSeq!1234 lt!496047)))))))))

(declare-fun bs!342039 () Bool)

(assert (= bs!342039 d!418764))

(declare-fun m!1663241 () Bool)

(assert (=> bs!342039 m!1663241))

(assert (=> d!418380 d!418764))

(declare-fun d!418766 () Bool)

(declare-fun c!237917 () Bool)

(assert (=> d!418766 (= c!237917 ((_ is Nil!14978) lt!496123))))

(declare-fun e!921516 () (InoxSet Token!4928))

(assert (=> d!418766 (= (content!2215 lt!496123) e!921516)))

(declare-fun b!1444453 () Bool)

(assert (=> b!1444453 (= e!921516 ((as const (Array Token!4928 Bool)) false))))

(declare-fun b!1444454 () Bool)

(assert (=> b!1444454 (= e!921516 ((_ map or) (store ((as const (Array Token!4928 Bool)) false) (h!20379 lt!496123) true) (content!2215 (t!130033 lt!496123))))))

(assert (= (and d!418766 c!237917) b!1444453))

(assert (= (and d!418766 (not c!237917)) b!1444454))

(declare-fun m!1663243 () Bool)

(assert (=> b!1444454 m!1663243))

(declare-fun m!1663245 () Bool)

(assert (=> b!1444454 m!1663245))

(assert (=> d!418390 d!418766))

(declare-fun d!418768 () Bool)

(declare-fun c!237918 () Bool)

(assert (=> d!418768 (= c!237918 ((_ is Nil!14978) lt!496053))))

(declare-fun e!921517 () (InoxSet Token!4928))

(assert (=> d!418768 (= (content!2215 lt!496053) e!921517)))

(declare-fun b!1444455 () Bool)

(assert (=> b!1444455 (= e!921517 ((as const (Array Token!4928 Bool)) false))))

(declare-fun b!1444456 () Bool)

(assert (=> b!1444456 (= e!921517 ((_ map or) (store ((as const (Array Token!4928 Bool)) false) (h!20379 lt!496053) true) (content!2215 (t!130033 lt!496053))))))

(assert (= (and d!418768 c!237918) b!1444455))

(assert (= (and d!418768 (not c!237918)) b!1444456))

(declare-fun m!1663247 () Bool)

(assert (=> b!1444456 m!1663247))

(assert (=> b!1444456 m!1662863))

(assert (=> d!418390 d!418768))

(declare-fun d!418770 () Bool)

(declare-fun c!237919 () Bool)

(assert (=> d!418770 (= c!237919 ((_ is Nil!14978) lt!496048))))

(declare-fun e!921518 () (InoxSet Token!4928))

(assert (=> d!418770 (= (content!2215 lt!496048) e!921518)))

(declare-fun b!1444457 () Bool)

(assert (=> b!1444457 (= e!921518 ((as const (Array Token!4928 Bool)) false))))

(declare-fun b!1444458 () Bool)

(assert (=> b!1444458 (= e!921518 ((_ map or) (store ((as const (Array Token!4928 Bool)) false) (h!20379 lt!496048) true) (content!2215 (t!130033 lt!496048))))))

(assert (= (and d!418770 c!237919) b!1444457))

(assert (= (and d!418770 (not c!237919)) b!1444458))

(declare-fun m!1663249 () Bool)

(assert (=> b!1444458 m!1663249))

(declare-fun m!1663251 () Bool)

(assert (=> b!1444458 m!1663251))

(assert (=> d!418390 d!418770))

(declare-fun d!418772 () Bool)

(assert (=> d!418772 (= (isEmpty!9325 (list!5963 (tokens!2004 other!32))) ((_ is Nil!14978) (list!5963 (tokens!2004 other!32))))))

(assert (=> d!418360 d!418772))

(assert (=> d!418360 d!418370))

(declare-fun d!418774 () Bool)

(declare-fun lt!496695 () Bool)

(assert (=> d!418774 (= lt!496695 (isEmpty!9325 (list!5965 (c!237768 (tokens!2004 other!32)))))))

(assert (=> d!418774 (= lt!496695 (= (size!12278 (c!237768 (tokens!2004 other!32))) 0))))

(assert (=> d!418774 (= (isEmpty!9326 (c!237768 (tokens!2004 other!32))) lt!496695)))

(declare-fun bs!342040 () Bool)

(assert (= bs!342040 d!418774))

(assert (=> bs!342040 m!1661725))

(assert (=> bs!342040 m!1661725))

(declare-fun m!1663253 () Bool)

(assert (=> bs!342040 m!1663253))

(declare-fun m!1663255 () Bool)

(assert (=> bs!342040 m!1663255))

(assert (=> d!418360 d!418774))

(assert (=> b!1443720 d!418534))

(declare-fun d!418776 () Bool)

(declare-fun lt!496696 () Bool)

(assert (=> d!418776 (= lt!496696 (isEmpty!9330 (list!5968 (_2!7961 (lex!1048 Lexer!2290 (rules!11466 thiss!10022) (print!1071 Lexer!2290 (singletonSeq!1234 lt!496052)))))))))

(assert (=> d!418776 (= lt!496696 (isEmpty!9331 (c!237766 (_2!7961 (lex!1048 Lexer!2290 (rules!11466 thiss!10022) (print!1071 Lexer!2290 (singletonSeq!1234 lt!496052)))))))))

(assert (=> d!418776 (= (isEmpty!9327 (_2!7961 (lex!1048 Lexer!2290 (rules!11466 thiss!10022) (print!1071 Lexer!2290 (singletonSeq!1234 lt!496052))))) lt!496696)))

(declare-fun bs!342041 () Bool)

(assert (= bs!342041 d!418776))

(declare-fun m!1663257 () Bool)

(assert (=> bs!342041 m!1663257))

(assert (=> bs!342041 m!1663257))

(declare-fun m!1663259 () Bool)

(assert (=> bs!342041 m!1663259))

(declare-fun m!1663261 () Bool)

(assert (=> bs!342041 m!1663261))

(assert (=> b!1443595 d!418776))

(assert (=> b!1443595 d!418598))

(assert (=> b!1443595 d!418616))

(assert (=> b!1443595 d!418622))

(declare-fun d!418778 () Bool)

(assert (=> d!418778 (tokensListTwoByTwoPredicateSeparableList!239 Lexer!2290 (++!4022 lt!496053 lt!496048) (rules!11466 thiss!10022))))

(declare-fun lt!496739 () Unit!23545)

(declare-fun lt!496740 () Unit!23545)

(assert (=> d!418778 (= lt!496739 lt!496740)))

(assert (=> d!418778 (rulesProduceEachTokenIndividuallyList!728 Lexer!2290 (rules!11466 thiss!10022) (++!4022 lt!496053 lt!496048))))

(assert (=> d!418778 (= lt!496740 (lemmaRulesProduceEachTokenIndividuallyConcat!52 Lexer!2290 (rules!11466 thiss!10022) lt!496053 lt!496048))))

(assert (=> d!418778 true))

(declare-fun _$81!54 () Unit!23545)

(assert (=> d!418778 (= (choose!8898 Lexer!2290 lt!496053 lt!496048 (rules!11466 thiss!10022)) _$81!54)))

(declare-fun bs!342053 () Bool)

(assert (= bs!342053 d!418778))

(assert (=> bs!342053 m!1661601))

(assert (=> bs!342053 m!1661601))

(assert (=> bs!342053 m!1662079))

(assert (=> bs!342053 m!1661601))

(assert (=> bs!342053 m!1662081))

(assert (=> bs!342053 m!1661595))

(assert (=> d!418426 d!418778))

(assert (=> d!418426 d!418488))

(declare-fun d!418836 () Bool)

(declare-fun lt!496742 () Token!4928)

(assert (=> d!418836 (= lt!496742 (apply!3852 (list!5963 (_1!7961 lt!496106)) 0))))

(assert (=> d!418836 (= lt!496742 (apply!3860 (c!237768 (_1!7961 lt!496106)) 0))))

(declare-fun e!921599 () Bool)

(assert (=> d!418836 e!921599))

(declare-fun res!654109 () Bool)

(assert (=> d!418836 (=> (not res!654109) (not e!921599))))

(assert (=> d!418836 (= res!654109 (<= 0 0))))

(assert (=> d!418836 (= (apply!3850 (_1!7961 lt!496106) 0) lt!496742)))

(declare-fun b!1444599 () Bool)

(assert (=> b!1444599 (= e!921599 (< 0 (size!12276 (_1!7961 lt!496106))))))

(assert (= (and d!418836 res!654109) b!1444599))

(assert (=> d!418836 m!1662805))

(assert (=> d!418836 m!1662805))

(declare-fun m!1663457 () Bool)

(assert (=> d!418836 m!1663457))

(declare-fun m!1663459 () Bool)

(assert (=> d!418836 m!1663459))

(assert (=> b!1444599 m!1661717))

(assert (=> b!1443593 d!418836))

(assert (=> d!418384 d!418380))

(declare-fun d!418842 () Bool)

(assert (=> d!418842 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) lt!496047)))

(assert (=> d!418842 true))

(declare-fun _$77!569 () Unit!23545)

(assert (=> d!418842 (= (choose!8897 Lexer!2290 (rules!11466 thiss!10022) lt!496053 lt!496047) _$77!569)))

(declare-fun bs!342054 () Bool)

(assert (= bs!342054 d!418842))

(assert (=> bs!342054 m!1661563))

(assert (=> d!418384 d!418842))

(assert (=> d!418384 d!418488))

(declare-fun bs!342055 () Bool)

(declare-fun d!418846 () Bool)

(assert (= bs!342055 (and d!418846 d!418500)))

(declare-fun lambda!62947 () Int)

(assert (=> bs!342055 (= lambda!62947 lambda!62937)))

(declare-fun bs!342056 () Bool)

(assert (= bs!342056 (and d!418846 d!418460)))

(assert (=> bs!342056 (= lambda!62947 lambda!62923)))

(declare-fun bs!342057 () Bool)

(assert (= bs!342057 (and d!418846 d!418678)))

(assert (=> bs!342057 (= (= (rules!11466 thiss!10022) (rules!11466 other!32)) (= lambda!62947 lambda!62945))))

(declare-fun bs!342058 () Bool)

(assert (= bs!342058 (and d!418846 d!418548)))

(assert (=> bs!342058 (= lambda!62947 lambda!62938)))

(declare-fun bs!342059 () Bool)

(assert (= bs!342059 (and d!418846 d!418392)))

(assert (=> bs!342059 (= lambda!62947 lambda!62921)))

(declare-fun bs!342060 () Bool)

(assert (= bs!342060 (and d!418846 d!418668)))

(assert (=> bs!342060 (= lambda!62947 lambda!62944)))

(declare-fun b!1444622 () Bool)

(declare-fun e!921614 () Bool)

(assert (=> b!1444622 (= e!921614 true)))

(declare-fun b!1444621 () Bool)

(declare-fun e!921613 () Bool)

(assert (=> b!1444621 (= e!921613 e!921614)))

(declare-fun b!1444620 () Bool)

(declare-fun e!921612 () Bool)

(assert (=> b!1444620 (= e!921612 e!921613)))

(assert (=> d!418846 e!921612))

(assert (= b!1444621 b!1444622))

(assert (= b!1444620 b!1444621))

(assert (= (and d!418846 ((_ is Cons!14979) (rules!11466 thiss!10022))) b!1444620))

(assert (=> b!1444622 (< (dynLambda!6833 order!9017 (toValue!3940 (transformation!2633 (h!20380 (rules!11466 thiss!10022))))) (dynLambda!6834 order!9019 lambda!62947))))

(assert (=> b!1444622 (< (dynLambda!6835 order!9021 (toChars!3799 (transformation!2633 (h!20380 (rules!11466 thiss!10022))))) (dynLambda!6834 order!9019 lambda!62947))))

(assert (=> d!418846 true))

(declare-fun lt!496744 () Bool)

(assert (=> d!418846 (= lt!496744 (forall!3684 lt!496053 lambda!62947))))

(declare-fun e!921608 () Bool)

(assert (=> d!418846 (= lt!496744 e!921608)))

(declare-fun res!654112 () Bool)

(assert (=> d!418846 (=> res!654112 e!921608)))

(assert (=> d!418846 (= res!654112 (not ((_ is Cons!14978) lt!496053)))))

(assert (=> d!418846 (not (isEmpty!9324 (rules!11466 thiss!10022)))))

(assert (=> d!418846 (= (rulesProduceEachTokenIndividuallyList!728 Lexer!2290 (rules!11466 thiss!10022) lt!496053) lt!496744)))

(declare-fun b!1444609 () Bool)

(declare-fun e!921610 () Bool)

(assert (=> b!1444609 (= e!921608 e!921610)))

(declare-fun res!654113 () Bool)

(assert (=> b!1444609 (=> (not res!654113) (not e!921610))))

(assert (=> b!1444609 (= res!654113 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) (h!20379 lt!496053)))))

(declare-fun b!1444611 () Bool)

(assert (=> b!1444611 (= e!921610 (rulesProduceEachTokenIndividuallyList!728 Lexer!2290 (rules!11466 thiss!10022) (t!130033 lt!496053)))))

(assert (= (and d!418846 (not res!654112)) b!1444609))

(assert (= (and b!1444609 res!654113) b!1444611))

(declare-fun m!1663483 () Bool)

(assert (=> d!418846 m!1663483))

(assert (=> d!418846 m!1661679))

(declare-fun m!1663485 () Bool)

(assert (=> b!1444609 m!1663485))

(declare-fun m!1663487 () Bool)

(assert (=> b!1444611 m!1663487))

(assert (=> b!1443777 d!418846))

(assert (=> b!1443584 d!418594))

(assert (=> d!418432 d!418668))

(assert (=> d!418432 d!418390))

(declare-fun d!418854 () Bool)

(assert (=> d!418854 (rulesProduceEachTokenIndividuallyList!728 Lexer!2290 (rules!11466 thiss!10022) (++!4022 lt!496053 lt!496048))))

(assert (=> d!418854 true))

(declare-fun _$79!97 () Unit!23545)

(assert (=> d!418854 (= (choose!8899 Lexer!2290 (rules!11466 thiss!10022) lt!496053 lt!496048) _$79!97)))

(declare-fun bs!342091 () Bool)

(assert (= bs!342091 d!418854))

(assert (=> bs!342091 m!1661601))

(assert (=> bs!342091 m!1661601))

(assert (=> bs!342091 m!1662081))

(assert (=> d!418432 d!418854))

(assert (=> d!418432 d!418488))

(declare-fun d!418940 () Bool)

(assert (=> d!418940 (= (list!5963 lt!496380) (list!5965 (c!237768 lt!496380)))))

(declare-fun bs!342092 () Bool)

(assert (= bs!342092 d!418940))

(declare-fun m!1663801 () Bool)

(assert (=> bs!342092 m!1663801))

(assert (=> b!1443791 d!418940))

(declare-fun b!1444751 () Bool)

(declare-fun res!654200 () Bool)

(declare-fun e!921709 () Bool)

(assert (=> b!1444751 (=> (not res!654200) (not e!921709))))

(declare-fun lt!496832 () List!15044)

(assert (=> b!1444751 (= res!654200 (= (size!12277 lt!496832) (+ (size!12277 (list!5963 (tokens!2004 thiss!10022))) (size!12277 (list!5963 (tokens!2004 other!32))))))))

(declare-fun b!1444749 () Bool)

(declare-fun e!921708 () List!15044)

(assert (=> b!1444749 (= e!921708 (list!5963 (tokens!2004 other!32)))))

(declare-fun b!1444752 () Bool)

(assert (=> b!1444752 (= e!921709 (or (not (= (list!5963 (tokens!2004 other!32)) Nil!14978)) (= lt!496832 (list!5963 (tokens!2004 thiss!10022)))))))

(declare-fun d!418942 () Bool)

(assert (=> d!418942 e!921709))

(declare-fun res!654199 () Bool)

(assert (=> d!418942 (=> (not res!654199) (not e!921709))))

(assert (=> d!418942 (= res!654199 (= (content!2215 lt!496832) ((_ map or) (content!2215 (list!5963 (tokens!2004 thiss!10022))) (content!2215 (list!5963 (tokens!2004 other!32))))))))

(assert (=> d!418942 (= lt!496832 e!921708)))

(declare-fun c!237991 () Bool)

(assert (=> d!418942 (= c!237991 ((_ is Nil!14978) (list!5963 (tokens!2004 thiss!10022))))))

(assert (=> d!418942 (= (++!4022 (list!5963 (tokens!2004 thiss!10022)) (list!5963 (tokens!2004 other!32))) lt!496832)))

(declare-fun b!1444750 () Bool)

(assert (=> b!1444750 (= e!921708 (Cons!14978 (h!20379 (list!5963 (tokens!2004 thiss!10022))) (++!4022 (t!130033 (list!5963 (tokens!2004 thiss!10022))) (list!5963 (tokens!2004 other!32)))))))

(assert (= (and d!418942 c!237991) b!1444749))

(assert (= (and d!418942 (not c!237991)) b!1444750))

(assert (= (and d!418942 res!654199) b!1444751))

(assert (= (and b!1444751 res!654200) b!1444752))

(declare-fun m!1663803 () Bool)

(assert (=> b!1444751 m!1663803))

(assert (=> b!1444751 m!1661555))

(declare-fun m!1663805 () Bool)

(assert (=> b!1444751 m!1663805))

(assert (=> b!1444751 m!1661567))

(declare-fun m!1663807 () Bool)

(assert (=> b!1444751 m!1663807))

(declare-fun m!1663809 () Bool)

(assert (=> d!418942 m!1663809))

(assert (=> d!418942 m!1661555))

(declare-fun m!1663811 () Bool)

(assert (=> d!418942 m!1663811))

(assert (=> d!418942 m!1661567))

(declare-fun m!1663813 () Bool)

(assert (=> d!418942 m!1663813))

(assert (=> b!1444750 m!1661567))

(declare-fun m!1663815 () Bool)

(assert (=> b!1444750 m!1663815))

(assert (=> b!1443791 d!418942))

(assert (=> b!1443791 d!418376))

(assert (=> b!1443791 d!418370))

(assert (=> b!1443789 d!418498))

(assert (=> b!1443789 d!418566))

(assert (=> b!1443789 d!418568))

(assert (=> b!1443789 d!418570))

(assert (=> b!1443789 d!418572))

(declare-fun b!1444755 () Bool)

(declare-fun e!921711 () List!15044)

(assert (=> b!1444755 (= e!921711 (list!5969 (xs!7830 (c!237768 (tokens!2004 thiss!10022)))))))

(declare-fun b!1444756 () Bool)

(assert (=> b!1444756 (= e!921711 (++!4022 (list!5965 (left!12756 (c!237768 (tokens!2004 thiss!10022)))) (list!5965 (right!13086 (c!237768 (tokens!2004 thiss!10022))))))))

(declare-fun b!1444754 () Bool)

(declare-fun e!921710 () List!15044)

(assert (=> b!1444754 (= e!921710 e!921711)))

(declare-fun c!237993 () Bool)

(assert (=> b!1444754 (= c!237993 ((_ is Leaf!7611) (c!237768 (tokens!2004 thiss!10022))))))

(declare-fun d!418944 () Bool)

(declare-fun c!237992 () Bool)

(assert (=> d!418944 (= c!237992 ((_ is Empty!5093) (c!237768 (tokens!2004 thiss!10022))))))

(assert (=> d!418944 (= (list!5965 (c!237768 (tokens!2004 thiss!10022))) e!921710)))

(declare-fun b!1444753 () Bool)

(assert (=> b!1444753 (= e!921710 Nil!14978)))

(assert (= (and d!418944 c!237992) b!1444753))

(assert (= (and d!418944 (not c!237992)) b!1444754))

(assert (= (and b!1444754 c!237993) b!1444755))

(assert (= (and b!1444754 (not c!237993)) b!1444756))

(assert (=> b!1444755 m!1662897))

(assert (=> b!1444756 m!1662351))

(assert (=> b!1444756 m!1662371))

(assert (=> b!1444756 m!1662351))

(assert (=> b!1444756 m!1662371))

(declare-fun m!1663817 () Bool)

(assert (=> b!1444756 m!1663817))

(assert (=> d!418376 d!418944))

(assert (=> b!1443558 d!418500))

(declare-fun d!418946 () Bool)

(assert (=> d!418946 (= (dropList!466 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) 0) (drop!734 (list!5965 (c!237768 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)))) 0))))

(declare-fun bs!342093 () Bool)

(assert (= bs!342093 d!418946))

(assert (=> bs!342093 m!1663055))

(assert (=> bs!342093 m!1663055))

(declare-fun m!1663819 () Bool)

(assert (=> bs!342093 m!1663819))

(assert (=> d!418404 d!418946))

(assert (=> d!418404 d!418706))

(declare-fun b!1444757 () Bool)

(declare-fun e!921716 () Int)

(assert (=> b!1444757 (= e!921716 0)))

(declare-fun b!1444758 () Bool)

(declare-fun e!921715 () Bool)

(declare-fun lt!496833 () List!15044)

(declare-fun e!921714 () Int)

(assert (=> b!1444758 (= e!921715 (= (size!12277 lt!496833) e!921714))))

(declare-fun c!237995 () Bool)

(assert (=> b!1444758 (= c!237995 (<= 0 0))))

(declare-fun b!1444759 () Bool)

(declare-fun e!921713 () List!15044)

(assert (=> b!1444759 (= e!921713 (drop!734 (t!130033 lt!496331) (- 0 1)))))

(declare-fun bm!97768 () Bool)

(declare-fun call!97773 () Int)

(assert (=> bm!97768 (= call!97773 (size!12277 lt!496331))))

(declare-fun b!1444760 () Bool)

(assert (=> b!1444760 (= e!921714 e!921716)))

(declare-fun c!237996 () Bool)

(assert (=> b!1444760 (= c!237996 (>= 0 call!97773))))

(declare-fun b!1444761 () Bool)

(assert (=> b!1444761 (= e!921713 lt!496331)))

(declare-fun b!1444762 () Bool)

(assert (=> b!1444762 (= e!921716 (- call!97773 0))))

(declare-fun d!418948 () Bool)

(assert (=> d!418948 e!921715))

(declare-fun res!654201 () Bool)

(assert (=> d!418948 (=> (not res!654201) (not e!921715))))

(assert (=> d!418948 (= res!654201 (= ((_ map implies) (content!2215 lt!496833) (content!2215 lt!496331)) ((as const (InoxSet Token!4928)) true)))))

(declare-fun e!921712 () List!15044)

(assert (=> d!418948 (= lt!496833 e!921712)))

(declare-fun c!237997 () Bool)

(assert (=> d!418948 (= c!237997 ((_ is Nil!14978) lt!496331))))

(assert (=> d!418948 (= (drop!734 lt!496331 0) lt!496833)))

(declare-fun b!1444763 () Bool)

(assert (=> b!1444763 (= e!921712 Nil!14978)))

(declare-fun b!1444764 () Bool)

(assert (=> b!1444764 (= e!921714 call!97773)))

(declare-fun b!1444765 () Bool)

(assert (=> b!1444765 (= e!921712 e!921713)))

(declare-fun c!237994 () Bool)

(assert (=> b!1444765 (= c!237994 (<= 0 0))))

(assert (= (and d!418948 c!237997) b!1444763))

(assert (= (and d!418948 (not c!237997)) b!1444765))

(assert (= (and b!1444765 c!237994) b!1444761))

(assert (= (and b!1444765 (not c!237994)) b!1444759))

(assert (= (and d!418948 res!654201) b!1444758))

(assert (= (and b!1444758 c!237995) b!1444764))

(assert (= (and b!1444758 (not c!237995)) b!1444760))

(assert (= (and b!1444760 c!237996) b!1444757))

(assert (= (and b!1444760 (not c!237996)) b!1444762))

(assert (= (or b!1444764 b!1444760 b!1444762) bm!97768))

(declare-fun m!1663821 () Bool)

(assert (=> b!1444758 m!1663821))

(declare-fun m!1663823 () Bool)

(assert (=> b!1444759 m!1663823))

(assert (=> bm!97768 m!1661975))

(declare-fun m!1663825 () Bool)

(assert (=> d!418948 m!1663825))

(declare-fun m!1663827 () Bool)

(assert (=> d!418948 m!1663827))

(assert (=> d!418404 d!418948))

(assert (=> d!418404 d!418454))

(declare-fun d!418950 () Bool)

(assert (=> d!418950 (subseq!363 (drop!734 lt!496331 0) lt!496331)))

(declare-fun lt!496836 () Unit!23545)

(declare-fun choose!8906 (List!15044 Int) Unit!23545)

(assert (=> d!418950 (= lt!496836 (choose!8906 lt!496331 0))))

(declare-fun e!921719 () Bool)

(assert (=> d!418950 e!921719))

(declare-fun res!654204 () Bool)

(assert (=> d!418950 (=> (not res!654204) (not e!921719))))

(assert (=> d!418950 (= res!654204 (>= 0 0))))

(assert (=> d!418950 (= (lemmaDropSubSeq!58 lt!496331 0) lt!496836)))

(declare-fun b!1444768 () Bool)

(assert (=> b!1444768 (= e!921719 (<= 0 (size!12277 lt!496331)))))

(assert (= (and d!418950 res!654204) b!1444768))

(assert (=> d!418950 m!1661979))

(assert (=> d!418950 m!1661979))

(assert (=> d!418950 m!1661993))

(declare-fun m!1663829 () Bool)

(assert (=> d!418950 m!1663829))

(assert (=> b!1444768 m!1661975))

(assert (=> d!418404 d!418950))

(declare-fun d!418952 () Bool)

(declare-fun res!654206 () Bool)

(declare-fun e!921720 () Bool)

(assert (=> d!418952 (=> res!654206 e!921720)))

(assert (=> d!418952 (= res!654206 (or (not ((_ is Cons!14978) (dropList!466 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) 0))) (not ((_ is Cons!14978) (t!130033 (dropList!466 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) 0))))))))

(assert (=> d!418952 (= (tokensListTwoByTwoPredicateSeparableList!239 Lexer!2290 (dropList!466 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) 0) (rules!11466 thiss!10022)) e!921720)))

(declare-fun b!1444769 () Bool)

(declare-fun e!921721 () Bool)

(assert (=> b!1444769 (= e!921720 e!921721)))

(declare-fun res!654205 () Bool)

(assert (=> b!1444769 (=> (not res!654205) (not e!921721))))

(assert (=> b!1444769 (= res!654205 (separableTokensPredicate!522 Lexer!2290 (h!20379 (dropList!466 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) 0)) (h!20379 (t!130033 (dropList!466 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) 0))) (rules!11466 thiss!10022)))))

(declare-fun lt!496841 () Unit!23545)

(declare-fun Unit!23581 () Unit!23545)

(assert (=> b!1444769 (= lt!496841 Unit!23581)))

(assert (=> b!1444769 (> (size!12275 (charsOf!1519 (h!20379 (t!130033 (dropList!466 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) 0))))) 0)))

(declare-fun lt!496838 () Unit!23545)

(declare-fun Unit!23582 () Unit!23545)

(assert (=> b!1444769 (= lt!496838 Unit!23582)))

(assert (=> b!1444769 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) (h!20379 (t!130033 (dropList!466 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) 0))))))

(declare-fun lt!496837 () Unit!23545)

(declare-fun Unit!23583 () Unit!23545)

(assert (=> b!1444769 (= lt!496837 Unit!23583)))

(assert (=> b!1444769 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) (h!20379 (dropList!466 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) 0)))))

(declare-fun lt!496840 () Unit!23545)

(declare-fun lt!496843 () Unit!23545)

(assert (=> b!1444769 (= lt!496840 lt!496843)))

(assert (=> b!1444769 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) (h!20379 (t!130033 (dropList!466 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) 0))))))

(assert (=> b!1444769 (= lt!496843 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!405 Lexer!2290 (rules!11466 thiss!10022) (dropList!466 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) 0) (h!20379 (t!130033 (dropList!466 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) 0)))))))

(declare-fun lt!496842 () Unit!23545)

(declare-fun lt!496839 () Unit!23545)

(assert (=> b!1444769 (= lt!496842 lt!496839)))

(assert (=> b!1444769 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) (h!20379 (dropList!466 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) 0)))))

(assert (=> b!1444769 (= lt!496839 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!405 Lexer!2290 (rules!11466 thiss!10022) (dropList!466 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) 0) (h!20379 (dropList!466 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) 0))))))

(declare-fun b!1444770 () Bool)

(assert (=> b!1444770 (= e!921721 (tokensListTwoByTwoPredicateSeparableList!239 Lexer!2290 (Cons!14978 (h!20379 (t!130033 (dropList!466 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) 0))) (t!130033 (t!130033 (dropList!466 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) 0)))) (rules!11466 thiss!10022)))))

(assert (= (and d!418952 (not res!654206)) b!1444769))

(assert (= (and b!1444769 res!654205) b!1444770))

(declare-fun m!1663831 () Bool)

(assert (=> b!1444769 m!1663831))

(declare-fun m!1663833 () Bool)

(assert (=> b!1444769 m!1663833))

(assert (=> b!1444769 m!1661987))

(declare-fun m!1663835 () Bool)

(assert (=> b!1444769 m!1663835))

(declare-fun m!1663837 () Bool)

(assert (=> b!1444769 m!1663837))

(assert (=> b!1444769 m!1661987))

(declare-fun m!1663839 () Bool)

(assert (=> b!1444769 m!1663839))

(declare-fun m!1663841 () Bool)

(assert (=> b!1444769 m!1663841))

(assert (=> b!1444769 m!1663831))

(declare-fun m!1663843 () Bool)

(assert (=> b!1444769 m!1663843))

(declare-fun m!1663845 () Bool)

(assert (=> b!1444770 m!1663845))

(assert (=> d!418404 d!418952))

(declare-fun d!418954 () Bool)

(assert (=> d!418954 (rulesProduceEachTokenIndividuallyList!728 Lexer!2290 (rules!11466 thiss!10022) lt!496336)))

(declare-fun lt!496852 () Unit!23545)

(declare-fun choose!8907 (LexerInterface!2292 List!15045 List!15044 List!15044) Unit!23545)

(assert (=> d!418954 (= lt!496852 (choose!8907 Lexer!2290 (rules!11466 thiss!10022) lt!496330 lt!496336))))

(assert (=> d!418954 (not (isEmpty!9324 (rules!11466 thiss!10022)))))

(assert (=> d!418954 (= (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!58 Lexer!2290 (rules!11466 thiss!10022) lt!496330 lt!496336) lt!496852)))

(declare-fun bs!342096 () Bool)

(assert (= bs!342096 d!418954))

(assert (=> bs!342096 m!1661981))

(declare-fun m!1663895 () Bool)

(assert (=> bs!342096 m!1663895))

(assert (=> bs!342096 m!1661679))

(assert (=> d!418404 d!418954))

(declare-fun b!1444830 () Bool)

(declare-fun e!921770 () Bool)

(assert (=> b!1444830 (= e!921770 (subseq!363 (t!130033 (drop!734 lt!496331 0)) (t!130033 lt!496331)))))

(declare-fun b!1444831 () Bool)

(declare-fun e!921771 () Bool)

(assert (=> b!1444831 (= e!921771 (subseq!363 (drop!734 lt!496331 0) (t!130033 lt!496331)))))

(declare-fun d!418958 () Bool)

(declare-fun res!654210 () Bool)

(declare-fun e!921772 () Bool)

(assert (=> d!418958 (=> res!654210 e!921772)))

(assert (=> d!418958 (= res!654210 ((_ is Nil!14978) (drop!734 lt!496331 0)))))

(assert (=> d!418958 (= (subseq!363 (drop!734 lt!496331 0) lt!496331) e!921772)))

(declare-fun b!1444829 () Bool)

(declare-fun e!921769 () Bool)

(assert (=> b!1444829 (= e!921769 e!921771)))

(declare-fun res!654207 () Bool)

(assert (=> b!1444829 (=> res!654207 e!921771)))

(assert (=> b!1444829 (= res!654207 e!921770)))

(declare-fun res!654209 () Bool)

(assert (=> b!1444829 (=> (not res!654209) (not e!921770))))

(assert (=> b!1444829 (= res!654209 (= (h!20379 (drop!734 lt!496331 0)) (h!20379 lt!496331)))))

(declare-fun b!1444828 () Bool)

(assert (=> b!1444828 (= e!921772 e!921769)))

(declare-fun res!654208 () Bool)

(assert (=> b!1444828 (=> (not res!654208) (not e!921769))))

(assert (=> b!1444828 (= res!654208 ((_ is Cons!14978) lt!496331))))

(assert (= (and d!418958 (not res!654210)) b!1444828))

(assert (= (and b!1444828 res!654208) b!1444829))

(assert (= (and b!1444829 res!654209) b!1444830))

(assert (= (and b!1444829 (not res!654207)) b!1444831))

(declare-fun m!1663897 () Bool)

(assert (=> b!1444830 m!1663897))

(assert (=> b!1444831 m!1661979))

(declare-fun m!1663899 () Bool)

(assert (=> b!1444831 m!1663899))

(assert (=> d!418404 d!418958))

(declare-fun bs!342097 () Bool)

(declare-fun d!418960 () Bool)

(assert (= bs!342097 (and d!418960 d!418500)))

(declare-fun lambda!62950 () Int)

(assert (=> bs!342097 (= lambda!62950 lambda!62937)))

(declare-fun bs!342098 () Bool)

(assert (= bs!342098 (and d!418960 d!418460)))

(assert (=> bs!342098 (= lambda!62950 lambda!62923)))

(declare-fun bs!342099 () Bool)

(assert (= bs!342099 (and d!418960 d!418678)))

(assert (=> bs!342099 (= (= (rules!11466 thiss!10022) (rules!11466 other!32)) (= lambda!62950 lambda!62945))))

(declare-fun bs!342100 () Bool)

(assert (= bs!342100 (and d!418960 d!418548)))

(assert (=> bs!342100 (= lambda!62950 lambda!62938)))

(declare-fun bs!342101 () Bool)

(assert (= bs!342101 (and d!418960 d!418668)))

(assert (=> bs!342101 (= lambda!62950 lambda!62944)))

(declare-fun bs!342102 () Bool)

(assert (= bs!342102 (and d!418960 d!418846)))

(assert (=> bs!342102 (= lambda!62950 lambda!62947)))

(declare-fun bs!342103 () Bool)

(assert (= bs!342103 (and d!418960 d!418392)))

(assert (=> bs!342103 (= lambda!62950 lambda!62921)))

(declare-fun b!1444836 () Bool)

(declare-fun e!921777 () Bool)

(assert (=> b!1444836 (= e!921777 true)))

(declare-fun b!1444835 () Bool)

(declare-fun e!921776 () Bool)

(assert (=> b!1444835 (= e!921776 e!921777)))

(declare-fun b!1444834 () Bool)

(declare-fun e!921775 () Bool)

(assert (=> b!1444834 (= e!921775 e!921776)))

(assert (=> d!418960 e!921775))

(assert (= b!1444835 b!1444836))

(assert (= b!1444834 b!1444835))

(assert (= (and d!418960 ((_ is Cons!14979) (rules!11466 thiss!10022))) b!1444834))

(assert (=> b!1444836 (< (dynLambda!6833 order!9017 (toValue!3940 (transformation!2633 (h!20380 (rules!11466 thiss!10022))))) (dynLambda!6834 order!9019 lambda!62950))))

(assert (=> b!1444836 (< (dynLambda!6835 order!9021 (toChars!3799 (transformation!2633 (h!20380 (rules!11466 thiss!10022))))) (dynLambda!6834 order!9019 lambda!62950))))

(assert (=> d!418960 true))

(declare-fun lt!496853 () Bool)

(assert (=> d!418960 (= lt!496853 (forall!3684 lt!496336 lambda!62950))))

(declare-fun e!921773 () Bool)

(assert (=> d!418960 (= lt!496853 e!921773)))

(declare-fun res!654211 () Bool)

(assert (=> d!418960 (=> res!654211 e!921773)))

(assert (=> d!418960 (= res!654211 (not ((_ is Cons!14978) lt!496336)))))

(assert (=> d!418960 (not (isEmpty!9324 (rules!11466 thiss!10022)))))

(assert (=> d!418960 (= (rulesProduceEachTokenIndividuallyList!728 Lexer!2290 (rules!11466 thiss!10022) lt!496336) lt!496853)))

(declare-fun b!1444832 () Bool)

(declare-fun e!921774 () Bool)

(assert (=> b!1444832 (= e!921773 e!921774)))

(declare-fun res!654212 () Bool)

(assert (=> b!1444832 (=> (not res!654212) (not e!921774))))

(assert (=> b!1444832 (= res!654212 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) (h!20379 lt!496336)))))

(declare-fun b!1444833 () Bool)

(assert (=> b!1444833 (= e!921774 (rulesProduceEachTokenIndividuallyList!728 Lexer!2290 (rules!11466 thiss!10022) (t!130033 lt!496336)))))

(assert (= (and d!418960 (not res!654211)) b!1444832))

(assert (= (and b!1444832 res!654212) b!1444833))

(declare-fun m!1663901 () Bool)

(assert (=> d!418960 m!1663901))

(assert (=> d!418960 m!1661679))

(declare-fun m!1663903 () Bool)

(assert (=> b!1444832 m!1663903))

(declare-fun m!1663905 () Bool)

(assert (=> b!1444833 m!1663905))

(assert (=> d!418404 d!418960))

(declare-fun bs!342104 () Bool)

(declare-fun d!418962 () Bool)

(assert (= bs!342104 (and d!418962 d!418500)))

(declare-fun lambda!62951 () Int)

(assert (=> bs!342104 (= lambda!62951 lambda!62937)))

(declare-fun bs!342105 () Bool)

(assert (= bs!342105 (and d!418962 d!418960)))

(assert (=> bs!342105 (= lambda!62951 lambda!62950)))

(declare-fun bs!342106 () Bool)

(assert (= bs!342106 (and d!418962 d!418460)))

(assert (=> bs!342106 (= lambda!62951 lambda!62923)))

(declare-fun bs!342107 () Bool)

(assert (= bs!342107 (and d!418962 d!418678)))

(assert (=> bs!342107 (= (= (rules!11466 thiss!10022) (rules!11466 other!32)) (= lambda!62951 lambda!62945))))

(declare-fun bs!342108 () Bool)

(assert (= bs!342108 (and d!418962 d!418548)))

(assert (=> bs!342108 (= lambda!62951 lambda!62938)))

(declare-fun bs!342109 () Bool)

(assert (= bs!342109 (and d!418962 d!418668)))

(assert (=> bs!342109 (= lambda!62951 lambda!62944)))

(declare-fun bs!342110 () Bool)

(assert (= bs!342110 (and d!418962 d!418846)))

(assert (=> bs!342110 (= lambda!62951 lambda!62947)))

(declare-fun bs!342111 () Bool)

(assert (= bs!342111 (and d!418962 d!418392)))

(assert (=> bs!342111 (= lambda!62951 lambda!62921)))

(declare-fun b!1444841 () Bool)

(declare-fun e!921782 () Bool)

(assert (=> b!1444841 (= e!921782 true)))

(declare-fun b!1444840 () Bool)

(declare-fun e!921781 () Bool)

(assert (=> b!1444840 (= e!921781 e!921782)))

(declare-fun b!1444839 () Bool)

(declare-fun e!921780 () Bool)

(assert (=> b!1444839 (= e!921780 e!921781)))

(assert (=> d!418962 e!921780))

(assert (= b!1444840 b!1444841))

(assert (= b!1444839 b!1444840))

(assert (= (and d!418962 ((_ is Cons!14979) (rules!11466 thiss!10022))) b!1444839))

(assert (=> b!1444841 (< (dynLambda!6833 order!9017 (toValue!3940 (transformation!2633 (h!20380 (rules!11466 thiss!10022))))) (dynLambda!6834 order!9019 lambda!62951))))

(assert (=> b!1444841 (< (dynLambda!6835 order!9021 (toChars!3799 (transformation!2633 (h!20380 (rules!11466 thiss!10022))))) (dynLambda!6834 order!9019 lambda!62951))))

(assert (=> d!418962 true))

(declare-fun lt!496854 () Bool)

(assert (=> d!418962 (= lt!496854 (forall!3684 lt!496330 lambda!62951))))

(declare-fun e!921778 () Bool)

(assert (=> d!418962 (= lt!496854 e!921778)))

(declare-fun res!654213 () Bool)

(assert (=> d!418962 (=> res!654213 e!921778)))

(assert (=> d!418962 (= res!654213 (not ((_ is Cons!14978) lt!496330)))))

(assert (=> d!418962 (not (isEmpty!9324 (rules!11466 thiss!10022)))))

(assert (=> d!418962 (= (rulesProduceEachTokenIndividuallyList!728 Lexer!2290 (rules!11466 thiss!10022) lt!496330) lt!496854)))

(declare-fun b!1444837 () Bool)

(declare-fun e!921779 () Bool)

(assert (=> b!1444837 (= e!921778 e!921779)))

(declare-fun res!654214 () Bool)

(assert (=> b!1444837 (=> (not res!654214) (not e!921779))))

(assert (=> b!1444837 (= res!654214 (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) (h!20379 lt!496330)))))

(declare-fun b!1444838 () Bool)

(assert (=> b!1444838 (= e!921779 (rulesProduceEachTokenIndividuallyList!728 Lexer!2290 (rules!11466 thiss!10022) (t!130033 lt!496330)))))

(assert (= (and d!418962 (not res!654213)) b!1444837))

(assert (= (and b!1444837 res!654214) b!1444838))

(declare-fun m!1663907 () Bool)

(assert (=> d!418962 m!1663907))

(assert (=> d!418962 m!1661679))

(declare-fun m!1663909 () Bool)

(assert (=> b!1444837 m!1663909))

(declare-fun m!1663911 () Bool)

(assert (=> b!1444838 m!1663911))

(assert (=> b!1443726 d!418962))

(declare-fun d!418964 () Bool)

(declare-fun lt!496855 () Bool)

(assert (=> d!418964 (= lt!496855 (isEmpty!9330 (list!5968 (_2!7961 (lex!1048 Lexer!2290 (rules!11466 thiss!10022) (print!1071 Lexer!2290 (singletonSeq!1234 lt!496047)))))))))

(assert (=> d!418964 (= lt!496855 (isEmpty!9331 (c!237766 (_2!7961 (lex!1048 Lexer!2290 (rules!11466 thiss!10022) (print!1071 Lexer!2290 (singletonSeq!1234 lt!496047)))))))))

(assert (=> d!418964 (= (isEmpty!9327 (_2!7961 (lex!1048 Lexer!2290 (rules!11466 thiss!10022) (print!1071 Lexer!2290 (singletonSeq!1234 lt!496047))))) lt!496855)))

(declare-fun bs!342112 () Bool)

(assert (= bs!342112 d!418964))

(declare-fun m!1663913 () Bool)

(assert (=> bs!342112 m!1663913))

(assert (=> bs!342112 m!1663913))

(declare-fun m!1663915 () Bool)

(assert (=> bs!342112 m!1663915))

(declare-fun m!1663917 () Bool)

(assert (=> bs!342112 m!1663917))

(assert (=> b!1443598 d!418964))

(assert (=> b!1443598 d!418758))

(assert (=> b!1443598 d!418756))

(assert (=> b!1443598 d!418762))

(declare-fun d!418966 () Bool)

(declare-fun lt!496856 () Int)

(assert (=> d!418966 (>= lt!496856 0)))

(declare-fun e!921783 () Int)

(assert (=> d!418966 (= lt!496856 e!921783)))

(declare-fun c!237998 () Bool)

(assert (=> d!418966 (= c!237998 ((_ is Nil!14978) lt!496123))))

(assert (=> d!418966 (= (size!12277 lt!496123) lt!496856)))

(declare-fun b!1444842 () Bool)

(assert (=> b!1444842 (= e!921783 0)))

(declare-fun b!1444843 () Bool)

(assert (=> b!1444843 (= e!921783 (+ 1 (size!12277 (t!130033 lt!496123))))))

(assert (= (and d!418966 c!237998) b!1444842))

(assert (= (and d!418966 (not c!237998)) b!1444843))

(declare-fun m!1663919 () Bool)

(assert (=> b!1444843 m!1663919))

(assert (=> b!1443618 d!418966))

(declare-fun d!418968 () Bool)

(declare-fun lt!496857 () Int)

(assert (=> d!418968 (>= lt!496857 0)))

(declare-fun e!921784 () Int)

(assert (=> d!418968 (= lt!496857 e!921784)))

(declare-fun c!237999 () Bool)

(assert (=> d!418968 (= c!237999 ((_ is Nil!14978) lt!496053))))

(assert (=> d!418968 (= (size!12277 lt!496053) lt!496857)))

(declare-fun b!1444844 () Bool)

(assert (=> b!1444844 (= e!921784 0)))

(declare-fun b!1444845 () Bool)

(assert (=> b!1444845 (= e!921784 (+ 1 (size!12277 (t!130033 lt!496053))))))

(assert (= (and d!418968 c!237999) b!1444844))

(assert (= (and d!418968 (not c!237999)) b!1444845))

(assert (=> b!1444845 m!1662859))

(assert (=> b!1443618 d!418968))

(declare-fun d!418970 () Bool)

(declare-fun lt!496858 () Int)

(assert (=> d!418970 (>= lt!496858 0)))

(declare-fun e!921785 () Int)

(assert (=> d!418970 (= lt!496858 e!921785)))

(declare-fun c!238000 () Bool)

(assert (=> d!418970 (= c!238000 ((_ is Nil!14978) lt!496048))))

(assert (=> d!418970 (= (size!12277 lt!496048) lt!496858)))

(declare-fun b!1444846 () Bool)

(assert (=> b!1444846 (= e!921785 0)))

(declare-fun b!1444847 () Bool)

(assert (=> b!1444847 (= e!921785 (+ 1 (size!12277 (t!130033 lt!496048))))))

(assert (= (and d!418970 c!238000) b!1444846))

(assert (= (and d!418970 (not c!238000)) b!1444847))

(declare-fun m!1663921 () Bool)

(assert (=> b!1444847 m!1663921))

(assert (=> b!1443618 d!418970))

(assert (=> d!418352 d!418488))

(assert (=> b!1443561 d!418678))

(declare-fun d!418972 () Bool)

(declare-fun res!654219 () Bool)

(declare-fun e!921790 () Bool)

(assert (=> d!418972 (=> res!654219 e!921790)))

(assert (=> d!418972 (= res!654219 ((_ is Nil!14978) lt!496054))))

(assert (=> d!418972 (= (forall!3684 lt!496054 lambda!62921) e!921790)))

(declare-fun b!1444852 () Bool)

(declare-fun e!921791 () Bool)

(assert (=> b!1444852 (= e!921790 e!921791)))

(declare-fun res!654220 () Bool)

(assert (=> b!1444852 (=> (not res!654220) (not e!921791))))

(declare-fun dynLambda!6839 (Int Token!4928) Bool)

(assert (=> b!1444852 (= res!654220 (dynLambda!6839 lambda!62921 (h!20379 lt!496054)))))

(declare-fun b!1444853 () Bool)

(assert (=> b!1444853 (= e!921791 (forall!3684 (t!130033 lt!496054) lambda!62921))))

(assert (= (and d!418972 (not res!654219)) b!1444852))

(assert (= (and b!1444852 res!654220) b!1444853))

(declare-fun b_lambda!45143 () Bool)

(assert (=> (not b_lambda!45143) (not b!1444852)))

(declare-fun m!1663923 () Bool)

(assert (=> b!1444852 m!1663923))

(declare-fun m!1663925 () Bool)

(assert (=> b!1444853 m!1663925))

(assert (=> d!418392 d!418972))

(assert (=> d!418392 d!418488))

(declare-fun b!1444864 () Bool)

(declare-fun e!921794 () Bool)

(declare-fun tp_is_empty!6851 () Bool)

(assert (=> b!1444864 (= e!921794 tp_is_empty!6851)))

(declare-fun b!1444866 () Bool)

(declare-fun tp!407673 () Bool)

(assert (=> b!1444866 (= e!921794 tp!407673)))

(declare-fun b!1444867 () Bool)

(declare-fun tp!407675 () Bool)

(declare-fun tp!407676 () Bool)

(assert (=> b!1444867 (= e!921794 (and tp!407675 tp!407676))))

(declare-fun b!1444865 () Bool)

(declare-fun tp!407674 () Bool)

(declare-fun tp!407677 () Bool)

(assert (=> b!1444865 (= e!921794 (and tp!407674 tp!407677))))

(assert (=> b!1443804 (= tp!407572 e!921794)))

(assert (= (and b!1443804 ((_ is ElementMatch!3947) (regex!2633 (h!20380 (rules!11466 other!32))))) b!1444864))

(assert (= (and b!1443804 ((_ is Concat!6671) (regex!2633 (h!20380 (rules!11466 other!32))))) b!1444865))

(assert (= (and b!1443804 ((_ is Star!3947) (regex!2633 (h!20380 (rules!11466 other!32))))) b!1444866))

(assert (= (and b!1443804 ((_ is Union!3947) (regex!2633 (h!20380 (rules!11466 other!32))))) b!1444867))

(declare-fun tp!407678 () Bool)

(declare-fun tp!407679 () Bool)

(declare-fun b!1444868 () Bool)

(declare-fun e!921796 () Bool)

(assert (=> b!1444868 (= e!921796 (and (inv!19929 (left!12756 (left!12756 (c!237768 (tokens!2004 thiss!10022))))) tp!407679 (inv!19929 (right!13086 (left!12756 (c!237768 (tokens!2004 thiss!10022))))) tp!407678))))

(declare-fun b!1444870 () Bool)

(declare-fun e!921795 () Bool)

(declare-fun tp!407680 () Bool)

(assert (=> b!1444870 (= e!921795 tp!407680)))

(declare-fun b!1444869 () Bool)

(assert (=> b!1444869 (= e!921796 (and (inv!19937 (xs!7830 (left!12756 (c!237768 (tokens!2004 thiss!10022))))) e!921795))))

(assert (=> b!1443820 (= tp!407589 (and (inv!19929 (left!12756 (c!237768 (tokens!2004 thiss!10022)))) e!921796))))

(assert (= (and b!1443820 ((_ is Node!5093) (left!12756 (c!237768 (tokens!2004 thiss!10022))))) b!1444868))

(assert (= b!1444869 b!1444870))

(assert (= (and b!1443820 ((_ is Leaf!7611) (left!12756 (c!237768 (tokens!2004 thiss!10022))))) b!1444869))

(declare-fun m!1663927 () Bool)

(assert (=> b!1444868 m!1663927))

(declare-fun m!1663929 () Bool)

(assert (=> b!1444868 m!1663929))

(declare-fun m!1663931 () Bool)

(assert (=> b!1444869 m!1663931))

(assert (=> b!1443820 m!1662129))

(declare-fun tp!407681 () Bool)

(declare-fun tp!407682 () Bool)

(declare-fun e!921798 () Bool)

(declare-fun b!1444871 () Bool)

(assert (=> b!1444871 (= e!921798 (and (inv!19929 (left!12756 (right!13086 (c!237768 (tokens!2004 thiss!10022))))) tp!407682 (inv!19929 (right!13086 (right!13086 (c!237768 (tokens!2004 thiss!10022))))) tp!407681))))

(declare-fun b!1444873 () Bool)

(declare-fun e!921797 () Bool)

(declare-fun tp!407683 () Bool)

(assert (=> b!1444873 (= e!921797 tp!407683)))

(declare-fun b!1444872 () Bool)

(assert (=> b!1444872 (= e!921798 (and (inv!19937 (xs!7830 (right!13086 (c!237768 (tokens!2004 thiss!10022))))) e!921797))))

(assert (=> b!1443820 (= tp!407588 (and (inv!19929 (right!13086 (c!237768 (tokens!2004 thiss!10022)))) e!921798))))

(assert (= (and b!1443820 ((_ is Node!5093) (right!13086 (c!237768 (tokens!2004 thiss!10022))))) b!1444871))

(assert (= b!1444872 b!1444873))

(assert (= (and b!1443820 ((_ is Leaf!7611) (right!13086 (c!237768 (tokens!2004 thiss!10022))))) b!1444872))

(declare-fun m!1663933 () Bool)

(assert (=> b!1444871 m!1663933))

(declare-fun m!1663935 () Bool)

(assert (=> b!1444871 m!1663935))

(declare-fun m!1663937 () Bool)

(assert (=> b!1444872 m!1663937))

(assert (=> b!1443820 m!1662131))

(declare-fun b!1444876 () Bool)

(declare-fun e!921801 () Bool)

(assert (=> b!1444876 (= e!921801 true)))

(declare-fun b!1444875 () Bool)

(declare-fun e!921800 () Bool)

(assert (=> b!1444875 (= e!921800 e!921801)))

(declare-fun b!1444874 () Bool)

(declare-fun e!921799 () Bool)

(assert (=> b!1444874 (= e!921799 e!921800)))

(assert (=> b!1443691 e!921799))

(assert (= b!1444875 b!1444876))

(assert (= b!1444874 b!1444875))

(assert (= (and b!1443691 ((_ is Cons!14979) (t!130034 (rules!11466 thiss!10022)))) b!1444874))

(assert (=> b!1444876 (< (dynLambda!6833 order!9017 (toValue!3940 (transformation!2633 (h!20380 (t!130034 (rules!11466 thiss!10022)))))) (dynLambda!6834 order!9019 lambda!62921))))

(assert (=> b!1444876 (< (dynLambda!6835 order!9021 (toChars!3799 (transformation!2633 (h!20380 (t!130034 (rules!11466 thiss!10022)))))) (dynLambda!6834 order!9019 lambda!62921))))

(declare-fun b!1444879 () Bool)

(declare-fun b_free!35783 () Bool)

(declare-fun b_next!36487 () Bool)

(assert (=> b!1444879 (= b_free!35783 (not b_next!36487))))

(declare-fun tp!407684 () Bool)

(declare-fun b_and!97807 () Bool)

(assert (=> b!1444879 (= tp!407684 b_and!97807)))

(declare-fun b_free!35785 () Bool)

(declare-fun b_next!36489 () Bool)

(assert (=> b!1444879 (= b_free!35785 (not b_next!36489))))

(declare-fun tb!78617 () Bool)

(declare-fun t!130134 () Bool)

(assert (=> (and b!1444879 (= (toChars!3799 (transformation!2633 (h!20380 (t!130034 (rules!11466 other!32))))) (toChars!3799 (transformation!2633 (rule!4404 lt!496047)))) t!130134) tb!78617))

(declare-fun result!95024 () Bool)

(assert (= result!95024 result!94964))

(assert (=> d!418574 t!130134))

(declare-fun t!130136 () Bool)

(declare-fun tb!78619 () Bool)

(assert (=> (and b!1444879 (= (toChars!3799 (transformation!2633 (h!20380 (t!130034 (rules!11466 other!32))))) (toChars!3799 (transformation!2633 (rule!4404 lt!496052)))) t!130136) tb!78619))

(declare-fun result!95026 () Bool)

(assert (= result!95026 result!94970))

(assert (=> d!418582 t!130136))

(declare-fun tb!78621 () Bool)

(declare-fun t!130138 () Bool)

(assert (=> (and b!1444879 (= (toChars!3799 (transformation!2633 (h!20380 (t!130034 (rules!11466 other!32))))) (toChars!3799 (transformation!2633 (rule!4404 (h!20379 (t!130033 lt!496054)))))) t!130138) tb!78621))

(declare-fun result!95028 () Bool)

(assert (= result!95028 result!94974))

(assert (=> d!418682 t!130138))

(declare-fun tb!78623 () Bool)

(declare-fun t!130140 () Bool)

(assert (=> (and b!1444879 (= (toChars!3799 (transformation!2633 (h!20380 (t!130034 (rules!11466 other!32))))) (toChars!3799 (transformation!2633 (rule!4404 (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1)))))) t!130140) tb!78623))

(declare-fun result!95030 () Bool)

(assert (= result!95030 result!94978))

(assert (=> d!418752 t!130140))

(declare-fun tp!407687 () Bool)

(declare-fun b_and!97809 () Bool)

(assert (=> b!1444879 (= tp!407687 (and (=> t!130134 result!95024) (=> t!130136 result!95026) (=> t!130138 result!95028) (=> t!130140 result!95030) b_and!97809))))

(declare-fun e!921805 () Bool)

(assert (=> b!1444879 (= e!921805 (and tp!407684 tp!407687))))

(declare-fun tp!407685 () Bool)

(declare-fun b!1444878 () Bool)

(declare-fun e!921802 () Bool)

(assert (=> b!1444878 (= e!921802 (and tp!407685 (inv!19923 (tag!2897 (h!20380 (t!130034 (rules!11466 other!32))))) (inv!19936 (transformation!2633 (h!20380 (t!130034 (rules!11466 other!32))))) e!921805))))

(declare-fun b!1444877 () Bool)

(declare-fun e!921804 () Bool)

(declare-fun tp!407686 () Bool)

(assert (=> b!1444877 (= e!921804 (and e!921802 tp!407686))))

(assert (=> b!1443803 (= tp!407573 e!921804)))

(assert (= b!1444878 b!1444879))

(assert (= b!1444877 b!1444878))

(assert (= (and b!1443803 ((_ is Cons!14979) (t!130034 (rules!11466 other!32)))) b!1444877))

(declare-fun m!1663939 () Bool)

(assert (=> b!1444878 m!1663939))

(declare-fun m!1663941 () Bool)

(assert (=> b!1444878 m!1663941))

(declare-fun b!1444880 () Bool)

(declare-fun e!921806 () Bool)

(assert (=> b!1444880 (= e!921806 tp_is_empty!6851)))

(declare-fun b!1444882 () Bool)

(declare-fun tp!407688 () Bool)

(assert (=> b!1444882 (= e!921806 tp!407688)))

(declare-fun b!1444883 () Bool)

(declare-fun tp!407690 () Bool)

(declare-fun tp!407691 () Bool)

(assert (=> b!1444883 (= e!921806 (and tp!407690 tp!407691))))

(declare-fun b!1444881 () Bool)

(declare-fun tp!407689 () Bool)

(declare-fun tp!407692 () Bool)

(assert (=> b!1444881 (= e!921806 (and tp!407689 tp!407692))))

(assert (=> b!1443818 (= tp!407585 e!921806)))

(assert (= (and b!1443818 ((_ is ElementMatch!3947) (regex!2633 (h!20380 (rules!11466 thiss!10022))))) b!1444880))

(assert (= (and b!1443818 ((_ is Concat!6671) (regex!2633 (h!20380 (rules!11466 thiss!10022))))) b!1444881))

(assert (= (and b!1443818 ((_ is Star!3947) (regex!2633 (h!20380 (rules!11466 thiss!10022))))) b!1444882))

(assert (= (and b!1443818 ((_ is Union!3947) (regex!2633 (h!20380 (rules!11466 thiss!10022))))) b!1444883))

(declare-fun b!1444897 () Bool)

(declare-fun b_free!35787 () Bool)

(declare-fun b_next!36491 () Bool)

(assert (=> b!1444897 (= b_free!35787 (not b_next!36491))))

(declare-fun tp!407703 () Bool)

(declare-fun b_and!97811 () Bool)

(assert (=> b!1444897 (= tp!407703 b_and!97811)))

(declare-fun b_free!35789 () Bool)

(declare-fun b_next!36493 () Bool)

(assert (=> b!1444897 (= b_free!35789 (not b_next!36493))))

(declare-fun t!130142 () Bool)

(declare-fun tb!78625 () Bool)

(assert (=> (and b!1444897 (= (toChars!3799 (transformation!2633 (rule!4404 (h!20379 (innerList!5153 (xs!7830 (c!237768 (tokens!2004 thiss!10022)))))))) (toChars!3799 (transformation!2633 (rule!4404 lt!496047)))) t!130142) tb!78625))

(declare-fun result!95034 () Bool)

(assert (= result!95034 result!94964))

(assert (=> d!418574 t!130142))

(declare-fun tb!78627 () Bool)

(declare-fun t!130144 () Bool)

(assert (=> (and b!1444897 (= (toChars!3799 (transformation!2633 (rule!4404 (h!20379 (innerList!5153 (xs!7830 (c!237768 (tokens!2004 thiss!10022)))))))) (toChars!3799 (transformation!2633 (rule!4404 lt!496052)))) t!130144) tb!78627))

(declare-fun result!95036 () Bool)

(assert (= result!95036 result!94970))

(assert (=> d!418582 t!130144))

(declare-fun tb!78629 () Bool)

(declare-fun t!130146 () Bool)

(assert (=> (and b!1444897 (= (toChars!3799 (transformation!2633 (rule!4404 (h!20379 (innerList!5153 (xs!7830 (c!237768 (tokens!2004 thiss!10022)))))))) (toChars!3799 (transformation!2633 (rule!4404 (h!20379 (t!130033 lt!496054)))))) t!130146) tb!78629))

(declare-fun result!95038 () Bool)

(assert (= result!95038 result!94974))

(assert (=> d!418682 t!130146))

(declare-fun t!130148 () Bool)

(declare-fun tb!78631 () Bool)

(assert (=> (and b!1444897 (= (toChars!3799 (transformation!2633 (rule!4404 (h!20379 (innerList!5153 (xs!7830 (c!237768 (tokens!2004 thiss!10022)))))))) (toChars!3799 (transformation!2633 (rule!4404 (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1)))))) t!130148) tb!78631))

(declare-fun result!95040 () Bool)

(assert (= result!95040 result!94978))

(assert (=> d!418752 t!130148))

(declare-fun b_and!97813 () Bool)

(declare-fun tp!407707 () Bool)

(assert (=> b!1444897 (= tp!407707 (and (=> t!130142 result!95034) (=> t!130144 result!95036) (=> t!130146 result!95038) (=> t!130148 result!95040) b_and!97813))))

(declare-fun e!921823 () Bool)

(declare-fun e!921822 () Bool)

(declare-fun tp!407706 () Bool)

(declare-fun b!1444894 () Bool)

(declare-fun inv!19942 (Token!4928) Bool)

(assert (=> b!1444894 (= e!921823 (and (inv!19942 (h!20379 (innerList!5153 (xs!7830 (c!237768 (tokens!2004 thiss!10022)))))) e!921822 tp!407706))))

(assert (=> b!1443822 (= tp!407590 e!921823)))

(declare-fun b!1444895 () Bool)

(declare-fun tp!407705 () Bool)

(declare-fun e!921819 () Bool)

(declare-fun inv!21 (TokenValue!2723) Bool)

(assert (=> b!1444895 (= e!921822 (and (inv!21 (value!84688 (h!20379 (innerList!5153 (xs!7830 (c!237768 (tokens!2004 thiss!10022))))))) e!921819 tp!407705))))

(declare-fun b!1444896 () Bool)

(declare-fun tp!407704 () Bool)

(declare-fun e!921820 () Bool)

(assert (=> b!1444896 (= e!921819 (and tp!407704 (inv!19923 (tag!2897 (rule!4404 (h!20379 (innerList!5153 (xs!7830 (c!237768 (tokens!2004 thiss!10022)))))))) (inv!19936 (transformation!2633 (rule!4404 (h!20379 (innerList!5153 (xs!7830 (c!237768 (tokens!2004 thiss!10022)))))))) e!921820))))

(assert (=> b!1444897 (= e!921820 (and tp!407703 tp!407707))))

(assert (= b!1444896 b!1444897))

(assert (= b!1444895 b!1444896))

(assert (= b!1444894 b!1444895))

(assert (= (and b!1443822 ((_ is Cons!14978) (innerList!5153 (xs!7830 (c!237768 (tokens!2004 thiss!10022)))))) b!1444894))

(declare-fun m!1663943 () Bool)

(assert (=> b!1444894 m!1663943))

(declare-fun m!1663945 () Bool)

(assert (=> b!1444895 m!1663945))

(declare-fun m!1663947 () Bool)

(assert (=> b!1444896 m!1663947))

(declare-fun m!1663949 () Bool)

(assert (=> b!1444896 m!1663949))

(declare-fun b!1444898 () Bool)

(declare-fun tp!407709 () Bool)

(declare-fun e!921826 () Bool)

(declare-fun tp!407708 () Bool)

(assert (=> b!1444898 (= e!921826 (and (inv!19929 (left!12756 (left!12756 (c!237768 (tokens!2004 other!32))))) tp!407709 (inv!19929 (right!13086 (left!12756 (c!237768 (tokens!2004 other!32))))) tp!407708))))

(declare-fun b!1444900 () Bool)

(declare-fun e!921825 () Bool)

(declare-fun tp!407710 () Bool)

(assert (=> b!1444900 (= e!921825 tp!407710)))

(declare-fun b!1444899 () Bool)

(assert (=> b!1444899 (= e!921826 (and (inv!19937 (xs!7830 (left!12756 (c!237768 (tokens!2004 other!32))))) e!921825))))

(assert (=> b!1443814 (= tp!407582 (and (inv!19929 (left!12756 (c!237768 (tokens!2004 other!32)))) e!921826))))

(assert (= (and b!1443814 ((_ is Node!5093) (left!12756 (c!237768 (tokens!2004 other!32))))) b!1444898))

(assert (= b!1444899 b!1444900))

(assert (= (and b!1443814 ((_ is Leaf!7611) (left!12756 (c!237768 (tokens!2004 other!32))))) b!1444899))

(declare-fun m!1663951 () Bool)

(assert (=> b!1444898 m!1663951))

(declare-fun m!1663953 () Bool)

(assert (=> b!1444898 m!1663953))

(declare-fun m!1663955 () Bool)

(assert (=> b!1444899 m!1663955))

(assert (=> b!1443814 m!1662119))

(declare-fun tp!407712 () Bool)

(declare-fun e!921828 () Bool)

(declare-fun tp!407711 () Bool)

(declare-fun b!1444901 () Bool)

(assert (=> b!1444901 (= e!921828 (and (inv!19929 (left!12756 (right!13086 (c!237768 (tokens!2004 other!32))))) tp!407712 (inv!19929 (right!13086 (right!13086 (c!237768 (tokens!2004 other!32))))) tp!407711))))

(declare-fun b!1444903 () Bool)

(declare-fun e!921827 () Bool)

(declare-fun tp!407713 () Bool)

(assert (=> b!1444903 (= e!921827 tp!407713)))

(declare-fun b!1444902 () Bool)

(assert (=> b!1444902 (= e!921828 (and (inv!19937 (xs!7830 (right!13086 (c!237768 (tokens!2004 other!32))))) e!921827))))

(assert (=> b!1443814 (= tp!407581 (and (inv!19929 (right!13086 (c!237768 (tokens!2004 other!32)))) e!921828))))

(assert (= (and b!1443814 ((_ is Node!5093) (right!13086 (c!237768 (tokens!2004 other!32))))) b!1444901))

(assert (= b!1444902 b!1444903))

(assert (= (and b!1443814 ((_ is Leaf!7611) (right!13086 (c!237768 (tokens!2004 other!32))))) b!1444902))

(declare-fun m!1663957 () Bool)

(assert (=> b!1444901 m!1663957))

(declare-fun m!1663959 () Bool)

(assert (=> b!1444901 m!1663959))

(declare-fun m!1663961 () Bool)

(assert (=> b!1444902 m!1663961))

(assert (=> b!1443814 m!1662121))

(declare-fun b!1444907 () Bool)

(declare-fun b_free!35791 () Bool)

(declare-fun b_next!36495 () Bool)

(assert (=> b!1444907 (= b_free!35791 (not b_next!36495))))

(declare-fun tp!407714 () Bool)

(declare-fun b_and!97815 () Bool)

(assert (=> b!1444907 (= tp!407714 b_and!97815)))

(declare-fun b_free!35793 () Bool)

(declare-fun b_next!36497 () Bool)

(assert (=> b!1444907 (= b_free!35793 (not b_next!36497))))

(declare-fun tb!78633 () Bool)

(declare-fun t!130150 () Bool)

(assert (=> (and b!1444907 (= (toChars!3799 (transformation!2633 (rule!4404 (h!20379 (innerList!5153 (xs!7830 (c!237768 (tokens!2004 other!32)))))))) (toChars!3799 (transformation!2633 (rule!4404 lt!496047)))) t!130150) tb!78633))

(declare-fun result!95042 () Bool)

(assert (= result!95042 result!94964))

(assert (=> d!418574 t!130150))

(declare-fun t!130152 () Bool)

(declare-fun tb!78635 () Bool)

(assert (=> (and b!1444907 (= (toChars!3799 (transformation!2633 (rule!4404 (h!20379 (innerList!5153 (xs!7830 (c!237768 (tokens!2004 other!32)))))))) (toChars!3799 (transformation!2633 (rule!4404 lt!496052)))) t!130152) tb!78635))

(declare-fun result!95044 () Bool)

(assert (= result!95044 result!94970))

(assert (=> d!418582 t!130152))

(declare-fun tb!78637 () Bool)

(declare-fun t!130154 () Bool)

(assert (=> (and b!1444907 (= (toChars!3799 (transformation!2633 (rule!4404 (h!20379 (innerList!5153 (xs!7830 (c!237768 (tokens!2004 other!32)))))))) (toChars!3799 (transformation!2633 (rule!4404 (h!20379 (t!130033 lt!496054)))))) t!130154) tb!78637))

(declare-fun result!95046 () Bool)

(assert (= result!95046 result!94974))

(assert (=> d!418682 t!130154))

(declare-fun tb!78639 () Bool)

(declare-fun t!130156 () Bool)

(assert (=> (and b!1444907 (= (toChars!3799 (transformation!2633 (rule!4404 (h!20379 (innerList!5153 (xs!7830 (c!237768 (tokens!2004 other!32)))))))) (toChars!3799 (transformation!2633 (rule!4404 (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1)))))) t!130156) tb!78639))

(declare-fun result!95048 () Bool)

(assert (= result!95048 result!94978))

(assert (=> d!418752 t!130156))

(declare-fun tp!407718 () Bool)

(declare-fun b_and!97817 () Bool)

(assert (=> b!1444907 (= tp!407718 (and (=> t!130150 result!95042) (=> t!130152 result!95044) (=> t!130154 result!95046) (=> t!130156 result!95048) b_and!97817))))

(declare-fun e!921832 () Bool)

(declare-fun e!921833 () Bool)

(declare-fun b!1444904 () Bool)

(declare-fun tp!407717 () Bool)

(assert (=> b!1444904 (= e!921833 (and (inv!19942 (h!20379 (innerList!5153 (xs!7830 (c!237768 (tokens!2004 other!32)))))) e!921832 tp!407717))))

(assert (=> b!1443816 (= tp!407583 e!921833)))

(declare-fun b!1444905 () Bool)

(declare-fun tp!407716 () Bool)

(declare-fun e!921829 () Bool)

(assert (=> b!1444905 (= e!921832 (and (inv!21 (value!84688 (h!20379 (innerList!5153 (xs!7830 (c!237768 (tokens!2004 other!32))))))) e!921829 tp!407716))))

(declare-fun e!921830 () Bool)

(declare-fun tp!407715 () Bool)

(declare-fun b!1444906 () Bool)

(assert (=> b!1444906 (= e!921829 (and tp!407715 (inv!19923 (tag!2897 (rule!4404 (h!20379 (innerList!5153 (xs!7830 (c!237768 (tokens!2004 other!32)))))))) (inv!19936 (transformation!2633 (rule!4404 (h!20379 (innerList!5153 (xs!7830 (c!237768 (tokens!2004 other!32)))))))) e!921830))))

(assert (=> b!1444907 (= e!921830 (and tp!407714 tp!407718))))

(assert (= b!1444906 b!1444907))

(assert (= b!1444905 b!1444906))

(assert (= b!1444904 b!1444905))

(assert (= (and b!1443816 ((_ is Cons!14978) (innerList!5153 (xs!7830 (c!237768 (tokens!2004 other!32)))))) b!1444904))

(declare-fun m!1663963 () Bool)

(assert (=> b!1444904 m!1663963))

(declare-fun m!1663965 () Bool)

(assert (=> b!1444905 m!1663965))

(declare-fun m!1663967 () Bool)

(assert (=> b!1444906 m!1663967))

(declare-fun m!1663969 () Bool)

(assert (=> b!1444906 m!1663969))

(declare-fun b!1444910 () Bool)

(declare-fun b_free!35795 () Bool)

(declare-fun b_next!36499 () Bool)

(assert (=> b!1444910 (= b_free!35795 (not b_next!36499))))

(declare-fun tp!407719 () Bool)

(declare-fun b_and!97819 () Bool)

(assert (=> b!1444910 (= tp!407719 b_and!97819)))

(declare-fun b_free!35797 () Bool)

(declare-fun b_next!36501 () Bool)

(assert (=> b!1444910 (= b_free!35797 (not b_next!36501))))

(declare-fun tb!78641 () Bool)

(declare-fun t!130158 () Bool)

(assert (=> (and b!1444910 (= (toChars!3799 (transformation!2633 (h!20380 (t!130034 (rules!11466 thiss!10022))))) (toChars!3799 (transformation!2633 (rule!4404 lt!496047)))) t!130158) tb!78641))

(declare-fun result!95050 () Bool)

(assert (= result!95050 result!94964))

(assert (=> d!418574 t!130158))

(declare-fun tb!78643 () Bool)

(declare-fun t!130160 () Bool)

(assert (=> (and b!1444910 (= (toChars!3799 (transformation!2633 (h!20380 (t!130034 (rules!11466 thiss!10022))))) (toChars!3799 (transformation!2633 (rule!4404 lt!496052)))) t!130160) tb!78643))

(declare-fun result!95052 () Bool)

(assert (= result!95052 result!94970))

(assert (=> d!418582 t!130160))

(declare-fun t!130162 () Bool)

(declare-fun tb!78645 () Bool)

(assert (=> (and b!1444910 (= (toChars!3799 (transformation!2633 (h!20380 (t!130034 (rules!11466 thiss!10022))))) (toChars!3799 (transformation!2633 (rule!4404 (h!20379 (t!130033 lt!496054)))))) t!130162) tb!78645))

(declare-fun result!95054 () Bool)

(assert (= result!95054 result!94974))

(assert (=> d!418682 t!130162))

(declare-fun t!130164 () Bool)

(declare-fun tb!78647 () Bool)

(assert (=> (and b!1444910 (= (toChars!3799 (transformation!2633 (h!20380 (t!130034 (rules!11466 thiss!10022))))) (toChars!3799 (transformation!2633 (rule!4404 (apply!3850 (++!4021 (tokens!2004 thiss!10022) (tokens!2004 other!32)) (+ 0 1)))))) t!130164) tb!78647))

(declare-fun result!95056 () Bool)

(assert (= result!95056 result!94978))

(assert (=> d!418752 t!130164))

(declare-fun b_and!97821 () Bool)

(declare-fun tp!407722 () Bool)

(assert (=> b!1444910 (= tp!407722 (and (=> t!130158 result!95050) (=> t!130160 result!95052) (=> t!130162 result!95054) (=> t!130164 result!95056) b_and!97821))))

(declare-fun e!921838 () Bool)

(assert (=> b!1444910 (= e!921838 (and tp!407719 tp!407722))))

(declare-fun e!921835 () Bool)

(declare-fun tp!407720 () Bool)

(declare-fun b!1444909 () Bool)

(assert (=> b!1444909 (= e!921835 (and tp!407720 (inv!19923 (tag!2897 (h!20380 (t!130034 (rules!11466 thiss!10022))))) (inv!19936 (transformation!2633 (h!20380 (t!130034 (rules!11466 thiss!10022))))) e!921838))))

(declare-fun b!1444908 () Bool)

(declare-fun e!921837 () Bool)

(declare-fun tp!407721 () Bool)

(assert (=> b!1444908 (= e!921837 (and e!921835 tp!407721))))

(assert (=> b!1443817 (= tp!407586 e!921837)))

(assert (= b!1444909 b!1444910))

(assert (= b!1444908 b!1444909))

(assert (= (and b!1443817 ((_ is Cons!14979) (t!130034 (rules!11466 thiss!10022)))) b!1444908))

(declare-fun m!1663971 () Bool)

(assert (=> b!1444909 m!1663971))

(declare-fun m!1663973 () Bool)

(assert (=> b!1444909 m!1663973))

(declare-fun b_lambda!45145 () Bool)

(assert (= b_lambda!45143 (or d!418392 b_lambda!45145)))

(declare-fun bs!342113 () Bool)

(declare-fun d!418974 () Bool)

(assert (= bs!342113 (and d!418974 d!418392)))

(assert (=> bs!342113 (= (dynLambda!6839 lambda!62921 (h!20379 lt!496054)) (rulesProduceIndividualToken!1220 Lexer!2290 (rules!11466 thiss!10022) (h!20379 lt!496054)))))

(assert (=> bs!342113 m!1661651))

(assert (=> b!1444852 d!418974))

(check-sat (not b!1444123) (not b!1444221) (not b!1444147) (not b_next!36495) (not b!1443960) (not b!1444312) (not d!418650) (not b!1444832) (not d!418954) (not d!418762) (not b!1444146) (not b!1443850) (not b!1443955) (not b!1444280) (not b!1444163) (not d!418550) (not d!418656) b_and!97821 (not d!418696) (not d!418642) (not d!418760) (not b!1444101) (not b!1443852) (not b!1444428) (not b!1444219) (not b!1444277) (not d!418940) (not bm!97699) (not b!1444894) (not b!1444308) (not d!418854) (not b!1444869) (not d!418842) (not b!1444311) tp_is_empty!6851 (not b!1444321) (not b!1444274) b_and!97807 (not b_next!36491) (not b!1444866) (not b!1444298) (not b!1444429) (not b!1444021) (not d!418736) (not b!1443932) (not b!1444903) (not b!1444330) (not d!418692) (not b!1444418) (not b!1444069) (not bm!97687) (not d!418562) (not b!1444904) (not d!418774) (not b!1444847) (not b!1444755) (not b!1444278) (not b!1444877) (not b!1444454) (not b!1444375) (not bm!97697) (not b!1444905) (not d!418706) (not b_lambda!45131) (not b!1444599) (not bm!97713) (not tb!78577) (not b!1444099) (not b_lambda!45135) (not b_lambda!45133) (not d!418698) (not d!418622) (not b!1444164) (not d!418778) (not d!418598) (not b!1444867) (not bm!97710) (not d!418534) (not b!1444396) (not b!1443930) (not b_next!36465) (not b!1444077) (not b!1444430) (not b!1444758) (not b!1444334) (not b!1444310) (not d!418746) (not d!418724) (not b!1444222) (not d!418690) (not b!1444620) (not b!1444902) (not bm!97709) (not b!1444909) (not b!1444263) (not b!1443861) (not d!418470) (not bm!97768) (not b!1444853) (not b!1443853) (not b!1444120) (not d!418670) (not b!1444874) (not b!1444331) (not b!1444168) (not b!1444388) (not b!1444901) (not d!418740) (not b!1444186) (not b!1444872) (not bm!97694) (not b!1444609) (not b!1444900) (not b!1444409) (not b!1444830) (not b!1444313) (not b!1444109) (not d!418752) b_and!97751 (not d!418846) (not b!1444095) (not tb!78569) b_and!97755 (not d!418754) (not b!1444416) b_and!97783 b_and!97819 (not b!1444339) (not b!1444301) (not b_next!36469) (not b!1444408) (not b!1444328) (not b_next!36493) (not b!1443820) (not b!1443863) (not d!418636) (not d!418460) (not b!1444315) (not b!1444442) (not b_next!36497) (not d!418454) (not b_next!36467) (not b!1444162) (not b!1444837) (not d!418942) (not d!418674) (not d!418616) (not b_next!36501) (not b!1444899) (not d!418498) (not b!1444094) (not b!1444100) (not d!418948) (not b!1443870) (not d!418722) (not b!1444839) (not d!418758) (not bm!97711) (not b!1444333) (not b!1444068) (not d!418462) (not d!418704) (not d!418716) (not b!1444093) (not b!1444447) (not b!1444142) (not b!1444434) (not d!418472) (not b!1444322) (not b!1444768) (not d!418458) (not bm!97712) (not b!1444329) (not bs!342113) (not tb!78573) (not b!1444882) b_and!97815 (not bm!97689) (not d!418964) (not b!1444342) (not b!1444433) (not d!418500) (not b!1444845) (not b!1444881) (not b!1444611) (not b_lambda!45137) (not b!1444770) (not b!1444009) (not b!1443957) (not d!418490) (not bm!97702) (not b!1444275) (not b!1444349) (not d!418548) (not b!1444281) (not b!1444323) (not b!1444282) (not b!1444750) (not b!1443864) (not b!1443935) (not d!418646) (not b!1443871) (not d!418950) (not d!418678) (not b!1443814) (not d!418748) (not b_next!36487) b_and!97785 (not b!1444420) (not b!1444283) (not d!418714) (not d!418962) (not d!418574) (not d!418728) (not b!1444223) (not d!418836) (not b!1444883) (not d!418554) (not d!418712) (not b!1444135) (not b!1444445) (not d!418682) (not b!1444833) (not d!418582) (not b!1443868) (not d!418626) (not d!418680) (not d!418734) (not b_next!36499) (not bm!97688) (not b!1444011) (not b!1444395) (not b!1444153) (not d!418702) (not b!1444376) (not d!418552) b_and!97811 (not b!1444319) (not d!418708) (not d!418688) (not b!1444769) (not b!1444906) (not b!1444279) (not d!418738) (not b!1444355) (not d!418764) (not b!1444014) (not tb!78565) (not d!418946) (not b!1444271) (not b!1443875) (not b!1444124) (not b!1444384) b_and!97817 (not b!1444338) (not b!1444456) b_and!97813 (not d!418580) (not b!1444898) (not d!418694) (not b!1444834) (not d!418686) b_and!97809 (not b!1444878) (not b!1443961) (not b!1444443) (not b!1443873) (not b!1443865) (not b!1444756) (not d!418756) (not b!1443954) (not d!418576) (not b!1444122) (not b!1444350) (not b!1443869) (not b!1444314) (not d!418776) (not b!1444354) (not d!418586) (not b!1444385) (not b!1444336) (not d!418596) (not b!1444759) (not b!1444007) (not b!1444337) (not b!1444307) (not b!1444148) (not b!1444751) (not b!1444399) (not b!1443874) (not d!418464) (not b!1444458) (not b!1444868) (not b!1444871) (not b!1444244) (not b!1444446) (not b!1443872) (not b!1444870) (not d!418720) (not b!1444421) (not b!1444351) (not d!418684) (not d!418614) (not b!1444136) (not b!1444121) (not b!1443956) (not b!1444831) (not b!1444144) (not b!1444400) (not d!418578) (not b!1444838) (not b!1443933) (not b_next!36463) (not d!418668) (not b!1444843) (not d!418750) (not b!1444383) (not b!1444023) (not b!1444096) (not b!1444305) (not b_lambda!45145) (not b!1444873) (not d!418700) (not b!1444448) (not b!1444097) (not d!418594) (not b!1443851) (not b!1444145) (not b_next!36489) (not b!1444865) (not b!1444895) (not b!1444896) (not bm!97708) (not b!1444335) (not b!1444417) (not b!1444397) (not d!418742) (not b!1444098) (not b!1444387) (not d!418732) (not b!1444332) (not b!1444441) (not d!418730) (not b!1444169) (not d!418588) (not b!1444908) (not d!418960) (not b!1444431) (not b!1444143) (not d!418620) (not b!1444264) (not b!1444165))
(check-sat (not b_next!36495) b_and!97821 (not b_next!36465) b_and!97751 (not b_next!36501) b_and!97815 (not b_next!36499) b_and!97811 b_and!97817 (not b_next!36463) (not b_next!36489) (not b_next!36491) b_and!97807 b_and!97755 b_and!97783 b_and!97819 (not b_next!36469) (not b_next!36493) (not b_next!36467) (not b_next!36497) (not b_next!36487) b_and!97785 b_and!97813 b_and!97809)
