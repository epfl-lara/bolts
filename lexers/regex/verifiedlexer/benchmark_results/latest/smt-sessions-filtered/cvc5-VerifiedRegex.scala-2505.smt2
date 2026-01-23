; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!132490 () Bool)

(assert start!132490)

(declare-fun b!1432493 () Bool)

(declare-fun e!914419 () Bool)

(declare-fun e!914410 () Bool)

(assert (=> b!1432493 (= e!914419 (not e!914410))))

(declare-fun res!648466 () Bool)

(assert (=> b!1432493 (=> res!648466 e!914410)))

(declare-datatypes ((C!8022 0))(
  ( (C!8023 (val!4581 Int)) )
))
(declare-datatypes ((List!14934 0))(
  ( (Nil!14868) (Cons!14868 (h!20269 C!8022) (t!127153 List!14934)) )
))
(declare-datatypes ((IArray!10089 0))(
  ( (IArray!10090 (innerList!5102 List!14934)) )
))
(declare-datatypes ((Conc!5042 0))(
  ( (Node!5042 (left!12669 Conc!5042) (right!12999 Conc!5042) (csize!10314 Int) (cheight!5253 Int)) (Leaf!7548 (xs!7775 IArray!10089) (csize!10315 Int)) (Empty!5042) )
))
(declare-datatypes ((BalanceConc!10024 0))(
  ( (BalanceConc!10025 (c!235464 Conc!5042)) )
))
(declare-datatypes ((List!14935 0))(
  ( (Nil!14869) (Cons!14869 (h!20270 (_ BitVec 16)) (t!127154 List!14935)) )
))
(declare-datatypes ((TokenValue!2698 0))(
  ( (FloatLiteralValue!5396 (text!19331 List!14935)) (TokenValueExt!2697 (__x!9194 Int)) (Broken!13490 (value!83951 List!14935)) (Object!2763) (End!2698) (Def!2698) (Underscore!2698) (Match!2698) (Else!2698) (Error!2698) (Case!2698) (If!2698) (Extends!2698) (Abstract!2698) (Class!2698) (Val!2698) (DelimiterValue!5396 (del!2758 List!14935)) (KeywordValue!2704 (value!83952 List!14935)) (CommentValue!5396 (value!83953 List!14935)) (WhitespaceValue!5396 (value!83954 List!14935)) (IndentationValue!2698 (value!83955 List!14935)) (String!17747) (Int32!2698) (Broken!13491 (value!83956 List!14935)) (Boolean!2699) (Unit!22423) (OperatorValue!2701 (op!2758 List!14935)) (IdentifierValue!5396 (value!83957 List!14935)) (IdentifierValue!5397 (value!83958 List!14935)) (WhitespaceValue!5397 (value!83959 List!14935)) (True!5396) (False!5396) (Broken!13492 (value!83960 List!14935)) (Broken!13493 (value!83961 List!14935)) (True!5397) (RightBrace!2698) (RightBracket!2698) (Colon!2698) (Null!2698) (Comma!2698) (LeftBracket!2698) (False!5397) (LeftBrace!2698) (ImaginaryLiteralValue!2698 (text!19332 List!14935)) (StringLiteralValue!8094 (value!83962 List!14935)) (EOFValue!2698 (value!83963 List!14935)) (IdentValue!2698 (value!83964 List!14935)) (DelimiterValue!5397 (value!83965 List!14935)) (DedentValue!2698 (value!83966 List!14935)) (NewLineValue!2698 (value!83967 List!14935)) (IntegerValue!8094 (value!83968 (_ BitVec 32)) (text!19333 List!14935)) (IntegerValue!8095 (value!83969 Int) (text!19334 List!14935)) (Times!2698) (Or!2698) (Equal!2698) (Minus!2698) (Broken!13494 (value!83970 List!14935)) (And!2698) (Div!2698) (LessEqual!2698) (Mod!2698) (Concat!6620) (Not!2698) (Plus!2698) (SpaceValue!2698 (value!83971 List!14935)) (IntegerValue!8096 (value!83972 Int) (text!19335 List!14935)) (StringLiteralValue!8095 (text!19336 List!14935)) (FloatLiteralValue!5397 (text!19337 List!14935)) (BytesLiteralValue!2698 (value!83973 List!14935)) (CommentValue!5397 (value!83974 List!14935)) (StringLiteralValue!8096 (value!83975 List!14935)) (ErrorTokenValue!2698 (msg!2759 List!14935)) )
))
(declare-datatypes ((Regex!3922 0))(
  ( (ElementMatch!3922 (c!235465 C!8022)) (Concat!6621 (regOne!8356 Regex!3922) (regTwo!8356 Regex!3922)) (EmptyExpr!3922) (Star!3922 (reg!4251 Regex!3922)) (EmptyLang!3922) (Union!3922 (regOne!8357 Regex!3922) (regTwo!8357 Regex!3922)) )
))
(declare-datatypes ((TokenValueInjection!5056 0))(
  ( (TokenValueInjection!5057 (toValue!3911 Int) (toChars!3770 Int)) )
))
(declare-datatypes ((String!17748 0))(
  ( (String!17749 (value!83976 String)) )
))
(declare-datatypes ((Rule!5016 0))(
  ( (Rule!5017 (regex!2608 Regex!3922) (tag!2870 String!17748) (isSeparator!2608 Bool) (transformation!2608 TokenValueInjection!5056)) )
))
(declare-datatypes ((Token!4878 0))(
  ( (Token!4879 (value!83977 TokenValue!2698) (rule!4371 Rule!5016) (size!12196 Int) (originalCharacters!3470 List!14934)) )
))
(declare-fun lt!486782 () Token!4878)

(declare-datatypes ((List!14936 0))(
  ( (Nil!14870) (Cons!14870 (h!20271 Token!4878) (t!127155 List!14936)) )
))
(declare-datatypes ((IArray!10091 0))(
  ( (IArray!10092 (innerList!5103 List!14936)) )
))
(declare-datatypes ((Conc!5043 0))(
  ( (Node!5043 (left!12670 Conc!5043) (right!13000 Conc!5043) (csize!10316 Int) (cheight!5254 Int)) (Leaf!7549 (xs!7776 IArray!10091) (csize!10317 Int)) (Empty!5043) )
))
(declare-datatypes ((BalanceConc!10026 0))(
  ( (BalanceConc!10027 (c!235466 Conc!5043)) )
))
(declare-datatypes ((List!14937 0))(
  ( (Nil!14871) (Cons!14871 (h!20272 Rule!5016) (t!127156 List!14937)) )
))
(declare-datatypes ((PrintableTokens!998 0))(
  ( (PrintableTokens!999 (rules!11341 List!14937) (tokens!1957 BalanceConc!10026)) )
))
(declare-fun thiss!10022 () PrintableTokens!998)

(declare-fun lt!486774 () Token!4878)

(declare-datatypes ((LexerInterface!2272 0))(
  ( (LexerInterfaceExt!2269 (__x!9195 Int)) (Lexer!2270) )
))
(declare-fun separableTokensPredicate!507 (LexerInterface!2272 Token!4878 Token!4878 List!14937) Bool)

(assert (=> b!1432493 (= res!648466 (not (separableTokensPredicate!507 Lexer!2270 lt!486774 lt!486782 (rules!11341 thiss!10022))))))

(declare-fun rulesProduceIndividualToken!1205 (LexerInterface!2272 List!14937 Token!4878) Bool)

(assert (=> b!1432493 (rulesProduceIndividualToken!1205 Lexer!2270 (rules!11341 thiss!10022) lt!486782)))

(declare-fun lt!486788 () List!14936)

(declare-datatypes ((Unit!22424 0))(
  ( (Unit!22425) )
))
(declare-fun lt!486785 () Unit!22424)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!390 (LexerInterface!2272 List!14937 List!14936 Token!4878) Unit!22424)

(assert (=> b!1432493 (= lt!486785 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!390 Lexer!2270 (rules!11341 thiss!10022) lt!486788 lt!486782))))

(declare-fun other!32 () PrintableTokens!998)

(declare-fun head!2868 (BalanceConc!10026) Token!4878)

(assert (=> b!1432493 (= lt!486782 (head!2868 (tokens!1957 other!32)))))

(declare-fun list!5905 (BalanceConc!10026) List!14936)

(assert (=> b!1432493 (= lt!486788 (list!5905 (tokens!1957 other!32)))))

(assert (=> b!1432493 (rulesProduceIndividualToken!1205 Lexer!2270 (rules!11341 thiss!10022) lt!486774)))

(declare-fun lt!486789 () List!14936)

(declare-fun lt!486777 () Unit!22424)

(assert (=> b!1432493 (= lt!486777 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!390 Lexer!2270 (rules!11341 thiss!10022) lt!486789 lt!486774))))

(declare-fun last!150 (BalanceConc!10026) Token!4878)

(assert (=> b!1432493 (= lt!486774 (last!150 (tokens!1957 thiss!10022)))))

(assert (=> b!1432493 (= lt!486789 (list!5905 (tokens!1957 thiss!10022)))))

(declare-fun b!1432494 () Bool)

(declare-fun e!914411 () Bool)

(assert (=> b!1432494 (= e!914411 e!914419)))

(declare-fun res!648469 () Bool)

(assert (=> b!1432494 (=> (not res!648469) (not e!914419))))

(declare-fun isEmpty!9218 (BalanceConc!10026) Bool)

(assert (=> b!1432494 (= res!648469 (not (isEmpty!9218 (tokens!1957 other!32))))))

(declare-fun lt!486775 () Unit!22424)

(declare-fun lemmaInvariant!304 (PrintableTokens!998) Unit!22424)

(assert (=> b!1432494 (= lt!486775 (lemmaInvariant!304 thiss!10022))))

(declare-fun lt!486780 () Unit!22424)

(assert (=> b!1432494 (= lt!486780 (lemmaInvariant!304 other!32))))

(declare-fun e!914416 () Bool)

(declare-fun b!1432495 () Bool)

(declare-fun tp!406044 () Bool)

(declare-fun e!914415 () Bool)

(declare-fun inv!19739 (BalanceConc!10026) Bool)

(assert (=> b!1432495 (= e!914415 (and tp!406044 (inv!19739 (tokens!1957 other!32)) e!914416))))

(declare-fun b!1432496 () Bool)

(declare-fun tp!406042 () Bool)

(declare-fun inv!19740 (Conc!5043) Bool)

(assert (=> b!1432496 (= e!914416 (and (inv!19740 (c!235466 (tokens!1957 other!32))) tp!406042))))

(declare-fun b!1432497 () Bool)

(declare-fun e!914414 () Bool)

(declare-datatypes ((Option!2832 0))(
  ( (None!2831) (Some!2831 (v!22309 PrintableTokens!998)) )
))
(declare-fun lt!486779 () Option!2832)

(declare-fun isDefined!2293 (Option!2832) Bool)

(assert (=> b!1432497 (= e!914414 (isDefined!2293 lt!486779))))

(declare-fun b!1432498 () Bool)

(declare-fun res!648467 () Bool)

(assert (=> b!1432498 (=> (not res!648467) (not e!914419))))

(assert (=> b!1432498 (= res!648467 (not (isEmpty!9218 (tokens!1957 thiss!10022))))))

(declare-fun e!914412 () Bool)

(declare-fun b!1432499 () Bool)

(declare-fun tp!406043 () Bool)

(declare-fun e!914417 () Bool)

(assert (=> b!1432499 (= e!914417 (and tp!406043 (inv!19739 (tokens!1957 thiss!10022)) e!914412))))

(declare-fun b!1432500 () Bool)

(declare-fun e!914418 () Bool)

(assert (=> b!1432500 (= e!914410 e!914418)))

(declare-fun res!648472 () Bool)

(assert (=> b!1432500 (=> res!648472 e!914418)))

(declare-fun lt!486781 () BalanceConc!10026)

(declare-fun tokensListTwoByTwoPredicateSeparable!107 (LexerInterface!2272 BalanceConc!10026 Int List!14937) Bool)

(assert (=> b!1432500 (= res!648472 (not (tokensListTwoByTwoPredicateSeparable!107 Lexer!2270 lt!486781 0 (rules!11341 thiss!10022))))))

(declare-fun ++!3967 (BalanceConc!10026 BalanceConc!10026) BalanceConc!10026)

(assert (=> b!1432500 (= lt!486781 (++!3967 (tokens!1957 thiss!10022) (tokens!1957 other!32)))))

(declare-fun e!914413 () Bool)

(assert (=> b!1432500 e!914413))

(declare-fun res!648471 () Bool)

(assert (=> b!1432500 (=> (not res!648471) (not e!914413))))

(declare-fun lt!486784 () List!14936)

(declare-fun rulesProduceEachTokenIndividuallyList!715 (LexerInterface!2272 List!14937 List!14936) Bool)

(assert (=> b!1432500 (= res!648471 (rulesProduceEachTokenIndividuallyList!715 Lexer!2270 (rules!11341 thiss!10022) lt!486784))))

(declare-fun ++!3968 (List!14936 List!14936) List!14936)

(assert (=> b!1432500 (= lt!486784 (++!3968 lt!486789 lt!486788))))

(declare-fun lt!486773 () Unit!22424)

(declare-fun lemmaRulesProduceEachTokenIndividuallyConcat!45 (LexerInterface!2272 List!14937 List!14936 List!14936) Unit!22424)

(assert (=> b!1432500 (= lt!486773 (lemmaRulesProduceEachTokenIndividuallyConcat!45 Lexer!2270 (rules!11341 thiss!10022) lt!486789 lt!486788))))

(declare-fun lt!486786 () Unit!22424)

(declare-fun tokensListTwoByTwoPredicateConcatSeparableTokensList!45 (LexerInterface!2272 List!14936 List!14936 List!14937) Unit!22424)

(assert (=> b!1432500 (= lt!486786 (tokensListTwoByTwoPredicateConcatSeparableTokensList!45 Lexer!2270 lt!486789 lt!486788 (rules!11341 thiss!10022)))))

(declare-fun b!1432501 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!230 (LexerInterface!2272 List!14936 List!14937) Bool)

(assert (=> b!1432501 (= e!914413 (tokensListTwoByTwoPredicateSeparableList!230 Lexer!2270 lt!486784 (rules!11341 thiss!10022)))))

(declare-fun res!648468 () Bool)

(assert (=> start!132490 (=> (not res!648468) (not e!914411))))

(assert (=> start!132490 (= res!648468 (= (rules!11341 thiss!10022) (rules!11341 other!32)))))

(assert (=> start!132490 e!914411))

(declare-fun inv!19741 (PrintableTokens!998) Bool)

(assert (=> start!132490 (and (inv!19741 thiss!10022) e!914417)))

(assert (=> start!132490 (and (inv!19741 other!32) e!914415)))

(declare-fun b!1432502 () Bool)

(declare-fun tp!406041 () Bool)

(assert (=> b!1432502 (= e!914412 (and (inv!19740 (c!235466 (tokens!1957 thiss!10022))) tp!406041))))

(declare-fun b!1432503 () Bool)

(assert (=> b!1432503 (= e!914418 e!914414)))

(declare-fun res!648470 () Bool)

(assert (=> b!1432503 (=> res!648470 e!914414)))

(declare-fun isEmpty!9219 (Option!2832) Bool)

(assert (=> b!1432503 (= res!648470 (isEmpty!9219 lt!486779))))

(declare-fun lt!486776 () PrintableTokens!998)

(assert (=> b!1432503 (= lt!486779 (Some!2831 lt!486776))))

(declare-fun print!1050 (PrintableTokens!998) BalanceConc!10024)

(declare-fun print!1051 (LexerInterface!2272 BalanceConc!10026) BalanceConc!10024)

(assert (=> b!1432503 (= (print!1050 lt!486776) (print!1051 Lexer!2270 lt!486781))))

(declare-fun lt!486787 () Unit!22424)

(declare-fun theoremInvertabilityWhenTokenListSeparable!62 (LexerInterface!2272 List!14937 List!14936) Unit!22424)

(assert (=> b!1432503 (= lt!486787 (theoremInvertabilityWhenTokenListSeparable!62 Lexer!2270 (rules!11341 thiss!10022) (list!5905 lt!486781)))))

(assert (=> b!1432503 (= lt!486776 (PrintableTokens!999 (rules!11341 thiss!10022) lt!486781))))

(assert (=> b!1432503 (= (print!1050 other!32) (print!1051 Lexer!2270 (tokens!1957 other!32)))))

(declare-fun lt!486778 () Unit!22424)

(assert (=> b!1432503 (= lt!486778 (theoremInvertabilityWhenTokenListSeparable!62 Lexer!2270 (rules!11341 other!32) lt!486788))))

(assert (=> b!1432503 (= (print!1050 thiss!10022) (print!1051 Lexer!2270 (tokens!1957 thiss!10022)))))

(declare-fun lt!486783 () Unit!22424)

(assert (=> b!1432503 (= lt!486783 (theoremInvertabilityWhenTokenListSeparable!62 Lexer!2270 (rules!11341 thiss!10022) lt!486789))))

(declare-fun printList!700 (LexerInterface!2272 List!14936) List!14934)

(declare-fun ++!3969 (List!14934 List!14934) List!14934)

(assert (=> b!1432503 (= (printList!700 Lexer!2270 lt!486784) (++!3969 (printList!700 Lexer!2270 lt!486789) (printList!700 Lexer!2270 lt!486788)))))

(declare-fun lt!486790 () Unit!22424)

(declare-fun lemmaPrintConcatSameAsConcatPrint!61 (LexerInterface!2272 List!14936 List!14936) Unit!22424)

(assert (=> b!1432503 (= lt!486790 (lemmaPrintConcatSameAsConcatPrint!61 Lexer!2270 lt!486789 lt!486788))))

(assert (= (and start!132490 res!648468) b!1432494))

(assert (= (and b!1432494 res!648469) b!1432498))

(assert (= (and b!1432498 res!648467) b!1432493))

(assert (= (and b!1432493 (not res!648466)) b!1432500))

(assert (= (and b!1432500 res!648471) b!1432501))

(assert (= (and b!1432500 (not res!648472)) b!1432503))

(assert (= (and b!1432503 (not res!648470)) b!1432497))

(assert (= b!1432499 b!1432502))

(assert (= start!132490 b!1432499))

(assert (= b!1432495 b!1432496))

(assert (= start!132490 b!1432495))

(declare-fun m!1632569 () Bool)

(assert (=> start!132490 m!1632569))

(declare-fun m!1632571 () Bool)

(assert (=> start!132490 m!1632571))

(declare-fun m!1632573 () Bool)

(assert (=> b!1432495 m!1632573))

(declare-fun m!1632575 () Bool)

(assert (=> b!1432494 m!1632575))

(declare-fun m!1632577 () Bool)

(assert (=> b!1432494 m!1632577))

(declare-fun m!1632579 () Bool)

(assert (=> b!1432494 m!1632579))

(declare-fun m!1632581 () Bool)

(assert (=> b!1432499 m!1632581))

(declare-fun m!1632583 () Bool)

(assert (=> b!1432498 m!1632583))

(declare-fun m!1632585 () Bool)

(assert (=> b!1432496 m!1632585))

(declare-fun m!1632587 () Bool)

(assert (=> b!1432501 m!1632587))

(declare-fun m!1632589 () Bool)

(assert (=> b!1432497 m!1632589))

(declare-fun m!1632591 () Bool)

(assert (=> b!1432493 m!1632591))

(declare-fun m!1632593 () Bool)

(assert (=> b!1432493 m!1632593))

(declare-fun m!1632595 () Bool)

(assert (=> b!1432493 m!1632595))

(declare-fun m!1632597 () Bool)

(assert (=> b!1432493 m!1632597))

(declare-fun m!1632599 () Bool)

(assert (=> b!1432493 m!1632599))

(declare-fun m!1632601 () Bool)

(assert (=> b!1432493 m!1632601))

(declare-fun m!1632603 () Bool)

(assert (=> b!1432493 m!1632603))

(declare-fun m!1632605 () Bool)

(assert (=> b!1432493 m!1632605))

(declare-fun m!1632607 () Bool)

(assert (=> b!1432493 m!1632607))

(declare-fun m!1632609 () Bool)

(assert (=> b!1432503 m!1632609))

(declare-fun m!1632611 () Bool)

(assert (=> b!1432503 m!1632611))

(declare-fun m!1632613 () Bool)

(assert (=> b!1432503 m!1632613))

(declare-fun m!1632615 () Bool)

(assert (=> b!1432503 m!1632615))

(declare-fun m!1632617 () Bool)

(assert (=> b!1432503 m!1632617))

(declare-fun m!1632619 () Bool)

(assert (=> b!1432503 m!1632619))

(declare-fun m!1632621 () Bool)

(assert (=> b!1432503 m!1632621))

(assert (=> b!1432503 m!1632609))

(declare-fun m!1632623 () Bool)

(assert (=> b!1432503 m!1632623))

(declare-fun m!1632625 () Bool)

(assert (=> b!1432503 m!1632625))

(declare-fun m!1632627 () Bool)

(assert (=> b!1432503 m!1632627))

(declare-fun m!1632629 () Bool)

(assert (=> b!1432503 m!1632629))

(declare-fun m!1632631 () Bool)

(assert (=> b!1432503 m!1632631))

(declare-fun m!1632633 () Bool)

(assert (=> b!1432503 m!1632633))

(assert (=> b!1432503 m!1632625))

(assert (=> b!1432503 m!1632621))

(declare-fun m!1632635 () Bool)

(assert (=> b!1432503 m!1632635))

(declare-fun m!1632637 () Bool)

(assert (=> b!1432503 m!1632637))

(declare-fun m!1632639 () Bool)

(assert (=> b!1432503 m!1632639))

(declare-fun m!1632641 () Bool)

(assert (=> b!1432502 m!1632641))

(declare-fun m!1632643 () Bool)

(assert (=> b!1432500 m!1632643))

(declare-fun m!1632645 () Bool)

(assert (=> b!1432500 m!1632645))

(declare-fun m!1632647 () Bool)

(assert (=> b!1432500 m!1632647))

(declare-fun m!1632649 () Bool)

(assert (=> b!1432500 m!1632649))

(declare-fun m!1632651 () Bool)

(assert (=> b!1432500 m!1632651))

(declare-fun m!1632653 () Bool)

(assert (=> b!1432500 m!1632653))

(push 1)

(assert (not b!1432498))

(assert (not b!1432496))

(assert (not b!1432493))

(assert (not start!132490))

(assert (not b!1432494))

(assert (not b!1432503))

(assert (not b!1432497))

(assert (not b!1432501))

(assert (not b!1432502))

(assert (not b!1432500))

(assert (not b!1432495))

(assert (not b!1432499))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!412228 () Bool)

(declare-fun isBalanced!1496 (Conc!5043) Bool)

(assert (=> d!412228 (= (inv!19739 (tokens!1957 other!32)) (isBalanced!1496 (c!235466 (tokens!1957 other!32))))))

(declare-fun bs!340859 () Bool)

(assert (= bs!340859 d!412228))

(declare-fun m!1632741 () Bool)

(assert (=> bs!340859 m!1632741))

(assert (=> b!1432495 d!412228))

(declare-fun d!412230 () Bool)

(declare-fun c!235473 () Bool)

(assert (=> d!412230 (= c!235473 (is-Node!5043 (c!235466 (tokens!1957 other!32))))))

(declare-fun e!914454 () Bool)

(assert (=> d!412230 (= (inv!19740 (c!235466 (tokens!1957 other!32))) e!914454)))

(declare-fun b!1432543 () Bool)

(declare-fun inv!19745 (Conc!5043) Bool)

(assert (=> b!1432543 (= e!914454 (inv!19745 (c!235466 (tokens!1957 other!32))))))

(declare-fun b!1432544 () Bool)

(declare-fun e!914455 () Bool)

(assert (=> b!1432544 (= e!914454 e!914455)))

(declare-fun res!648500 () Bool)

(assert (=> b!1432544 (= res!648500 (not (is-Leaf!7549 (c!235466 (tokens!1957 other!32)))))))

(assert (=> b!1432544 (=> res!648500 e!914455)))

(declare-fun b!1432545 () Bool)

(declare-fun inv!19746 (Conc!5043) Bool)

(assert (=> b!1432545 (= e!914455 (inv!19746 (c!235466 (tokens!1957 other!32))))))

(assert (= (and d!412230 c!235473) b!1432543))

(assert (= (and d!412230 (not c!235473)) b!1432544))

(assert (= (and b!1432544 (not res!648500)) b!1432545))

(declare-fun m!1632743 () Bool)

(assert (=> b!1432543 m!1632743))

(declare-fun m!1632745 () Bool)

(assert (=> b!1432545 m!1632745))

(assert (=> b!1432496 d!412230))

(declare-fun d!412232 () Bool)

(assert (=> d!412232 (= (isDefined!2293 lt!486779) (not (isEmpty!9219 lt!486779)))))

(declare-fun bs!340860 () Bool)

(assert (= bs!340860 d!412232))

(assert (=> bs!340860 m!1632629))

(assert (=> b!1432497 d!412232))

(declare-fun d!412234 () Bool)

(declare-fun lt!486847 () Bool)

(declare-fun isEmpty!9222 (List!14936) Bool)

(assert (=> d!412234 (= lt!486847 (isEmpty!9222 (list!5905 (tokens!1957 thiss!10022))))))

(declare-fun isEmpty!9223 (Conc!5043) Bool)

(assert (=> d!412234 (= lt!486847 (isEmpty!9223 (c!235466 (tokens!1957 thiss!10022))))))

(assert (=> d!412234 (= (isEmpty!9218 (tokens!1957 thiss!10022)) lt!486847)))

(declare-fun bs!340861 () Bool)

(assert (= bs!340861 d!412234))

(assert (=> bs!340861 m!1632595))

(assert (=> bs!340861 m!1632595))

(declare-fun m!1632747 () Bool)

(assert (=> bs!340861 m!1632747))

(declare-fun m!1632749 () Bool)

(assert (=> bs!340861 m!1632749))

(assert (=> b!1432498 d!412234))

(declare-fun d!412238 () Bool)

(assert (=> d!412238 (= (inv!19739 (tokens!1957 thiss!10022)) (isBalanced!1496 (c!235466 (tokens!1957 thiss!10022))))))

(declare-fun bs!340862 () Bool)

(assert (= bs!340862 d!412238))

(declare-fun m!1632751 () Bool)

(assert (=> bs!340862 m!1632751))

(assert (=> b!1432499 d!412238))

(declare-fun e!914458 () Bool)

(declare-fun b!1432557 () Bool)

(assert (=> b!1432557 (= e!914458 (tokensListTwoByTwoPredicateSeparableList!230 Lexer!2270 (++!3968 lt!486789 lt!486788) (rules!11341 thiss!10022)))))

(declare-fun lt!486857 () Unit!22424)

(declare-fun lt!486859 () Unit!22424)

(assert (=> b!1432557 (= lt!486857 lt!486859)))

(assert (=> b!1432557 (rulesProduceEachTokenIndividuallyList!715 Lexer!2270 (rules!11341 thiss!10022) (++!3968 lt!486789 lt!486788))))

(assert (=> b!1432557 (= lt!486859 (lemmaRulesProduceEachTokenIndividuallyConcat!45 Lexer!2270 (rules!11341 thiss!10022) lt!486789 lt!486788))))

(declare-fun d!412240 () Bool)

(assert (=> d!412240 e!914458))

(declare-fun res!648509 () Bool)

(assert (=> d!412240 (=> (not res!648509) (not e!914458))))

(assert (=> d!412240 (= res!648509 (is-Lexer!2270 Lexer!2270))))

(declare-fun lt!486858 () Unit!22424)

(declare-fun choose!8814 (LexerInterface!2272 List!14936 List!14936 List!14937) Unit!22424)

(assert (=> d!412240 (= lt!486858 (choose!8814 Lexer!2270 lt!486789 lt!486788 (rules!11341 thiss!10022)))))

(declare-fun isEmpty!9224 (List!14937) Bool)

(assert (=> d!412240 (not (isEmpty!9224 (rules!11341 thiss!10022)))))

(assert (=> d!412240 (= (tokensListTwoByTwoPredicateConcatSeparableTokensList!45 Lexer!2270 lt!486789 lt!486788 (rules!11341 thiss!10022)) lt!486858)))

(declare-fun b!1432554 () Bool)

(declare-fun res!648512 () Bool)

(assert (=> b!1432554 (=> (not res!648512) (not e!914458))))

(declare-fun rulesInvariant!2116 (LexerInterface!2272 List!14937) Bool)

(assert (=> b!1432554 (= res!648512 (rulesInvariant!2116 Lexer!2270 (rules!11341 thiss!10022)))))

(declare-fun b!1432556 () Bool)

(declare-fun res!648511 () Bool)

(assert (=> b!1432556 (=> (not res!648511) (not e!914458))))

(assert (=> b!1432556 (= res!648511 (rulesProduceEachTokenIndividuallyList!715 Lexer!2270 (rules!11341 thiss!10022) lt!486788))))

(declare-fun b!1432555 () Bool)

(declare-fun res!648510 () Bool)

(assert (=> b!1432555 (=> (not res!648510) (not e!914458))))

(assert (=> b!1432555 (= res!648510 (rulesProduceEachTokenIndividuallyList!715 Lexer!2270 (rules!11341 thiss!10022) lt!486789))))

(assert (= (and d!412240 res!648509) b!1432554))

(assert (= (and b!1432554 res!648512) b!1432555))

(assert (= (and b!1432555 res!648510) b!1432556))

(assert (= (and b!1432556 res!648511) b!1432557))

(declare-fun m!1632759 () Bool)

(assert (=> b!1432555 m!1632759))

(declare-fun m!1632761 () Bool)

(assert (=> b!1432556 m!1632761))

(declare-fun m!1632763 () Bool)

(assert (=> b!1432554 m!1632763))

(assert (=> b!1432557 m!1632649))

(assert (=> b!1432557 m!1632649))

(declare-fun m!1632765 () Bool)

(assert (=> b!1432557 m!1632765))

(assert (=> b!1432557 m!1632649))

(declare-fun m!1632767 () Bool)

(assert (=> b!1432557 m!1632767))

(assert (=> b!1432557 m!1632647))

(declare-fun m!1632769 () Bool)

(assert (=> d!412240 m!1632769))

(declare-fun m!1632771 () Bool)

(assert (=> d!412240 m!1632771))

(assert (=> b!1432500 d!412240))

(declare-fun d!412246 () Bool)

(assert (=> d!412246 (rulesProduceEachTokenIndividuallyList!715 Lexer!2270 (rules!11341 thiss!10022) (++!3968 lt!486789 lt!486788))))

(declare-fun lt!486862 () Unit!22424)

(declare-fun choose!8815 (LexerInterface!2272 List!14937 List!14936 List!14936) Unit!22424)

(assert (=> d!412246 (= lt!486862 (choose!8815 Lexer!2270 (rules!11341 thiss!10022) lt!486789 lt!486788))))

(assert (=> d!412246 (not (isEmpty!9224 (rules!11341 thiss!10022)))))

(assert (=> d!412246 (= (lemmaRulesProduceEachTokenIndividuallyConcat!45 Lexer!2270 (rules!11341 thiss!10022) lt!486789 lt!486788) lt!486862)))

(declare-fun bs!340865 () Bool)

(assert (= bs!340865 d!412246))

(assert (=> bs!340865 m!1632649))

(assert (=> bs!340865 m!1632649))

(assert (=> bs!340865 m!1632767))

(declare-fun m!1632773 () Bool)

(assert (=> bs!340865 m!1632773))

(assert (=> bs!340865 m!1632771))

(assert (=> b!1432500 d!412246))

(declare-fun b!1432567 () Bool)

(declare-fun res!648523 () Bool)

(declare-fun e!914461 () Bool)

(assert (=> b!1432567 (=> (not res!648523) (not e!914461))))

(declare-fun height!733 (Conc!5043) Int)

(declare-fun ++!3973 (Conc!5043 Conc!5043) Conc!5043)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1432567 (= res!648523 (<= (height!733 (++!3973 (c!235466 (tokens!1957 thiss!10022)) (c!235466 (tokens!1957 other!32)))) (+ (max!0 (height!733 (c!235466 (tokens!1957 thiss!10022))) (height!733 (c!235466 (tokens!1957 other!32)))) 1)))))

(declare-fun d!412248 () Bool)

(assert (=> d!412248 e!914461))

(declare-fun res!648522 () Bool)

(assert (=> d!412248 (=> (not res!648522) (not e!914461))))

(declare-fun appendAssocInst!312 (Conc!5043 Conc!5043) Bool)

(assert (=> d!412248 (= res!648522 (appendAssocInst!312 (c!235466 (tokens!1957 thiss!10022)) (c!235466 (tokens!1957 other!32))))))

(declare-fun lt!486865 () BalanceConc!10026)

(assert (=> d!412248 (= lt!486865 (BalanceConc!10027 (++!3973 (c!235466 (tokens!1957 thiss!10022)) (c!235466 (tokens!1957 other!32)))))))

(assert (=> d!412248 (= (++!3967 (tokens!1957 thiss!10022) (tokens!1957 other!32)) lt!486865)))

(declare-fun b!1432566 () Bool)

(declare-fun res!648524 () Bool)

(assert (=> b!1432566 (=> (not res!648524) (not e!914461))))

(assert (=> b!1432566 (= res!648524 (isBalanced!1496 (++!3973 (c!235466 (tokens!1957 thiss!10022)) (c!235466 (tokens!1957 other!32)))))))

(declare-fun b!1432569 () Bool)

(assert (=> b!1432569 (= e!914461 (= (list!5905 lt!486865) (++!3968 (list!5905 (tokens!1957 thiss!10022)) (list!5905 (tokens!1957 other!32)))))))

(declare-fun b!1432568 () Bool)

(declare-fun res!648521 () Bool)

(assert (=> b!1432568 (=> (not res!648521) (not e!914461))))

(assert (=> b!1432568 (= res!648521 (>= (height!733 (++!3973 (c!235466 (tokens!1957 thiss!10022)) (c!235466 (tokens!1957 other!32)))) (max!0 (height!733 (c!235466 (tokens!1957 thiss!10022))) (height!733 (c!235466 (tokens!1957 other!32))))))))

(assert (= (and d!412248 res!648522) b!1432566))

(assert (= (and b!1432566 res!648524) b!1432567))

(assert (= (and b!1432567 res!648523) b!1432568))

(assert (= (and b!1432568 res!648521) b!1432569))

(declare-fun m!1632775 () Bool)

(assert (=> b!1432567 m!1632775))

(declare-fun m!1632777 () Bool)

(assert (=> b!1432567 m!1632777))

(declare-fun m!1632779 () Bool)

(assert (=> b!1432567 m!1632779))

(assert (=> b!1432567 m!1632777))

(declare-fun m!1632781 () Bool)

(assert (=> b!1432567 m!1632781))

(declare-fun m!1632783 () Bool)

(assert (=> b!1432567 m!1632783))

(assert (=> b!1432567 m!1632775))

(assert (=> b!1432567 m!1632781))

(declare-fun m!1632785 () Bool)

(assert (=> d!412248 m!1632785))

(assert (=> d!412248 m!1632781))

(assert (=> b!1432568 m!1632775))

(assert (=> b!1432568 m!1632777))

(assert (=> b!1432568 m!1632779))

(assert (=> b!1432568 m!1632777))

(assert (=> b!1432568 m!1632781))

(assert (=> b!1432568 m!1632783))

(assert (=> b!1432568 m!1632775))

(assert (=> b!1432568 m!1632781))

(assert (=> b!1432566 m!1632781))

(assert (=> b!1432566 m!1632781))

(declare-fun m!1632787 () Bool)

(assert (=> b!1432566 m!1632787))

(declare-fun m!1632789 () Bool)

(assert (=> b!1432569 m!1632789))

(assert (=> b!1432569 m!1632595))

(assert (=> b!1432569 m!1632605))

(assert (=> b!1432569 m!1632595))

(assert (=> b!1432569 m!1632605))

(declare-fun m!1632791 () Bool)

(assert (=> b!1432569 m!1632791))

(assert (=> b!1432500 d!412248))

(declare-fun d!412250 () Bool)

(declare-fun e!914467 () Bool)

(assert (=> d!412250 e!914467))

(declare-fun res!648529 () Bool)

(assert (=> d!412250 (=> (not res!648529) (not e!914467))))

(declare-fun lt!486868 () List!14936)

(declare-fun content!2190 (List!14936) (Set Token!4878))

(assert (=> d!412250 (= res!648529 (= (content!2190 lt!486868) (set.union (content!2190 lt!486789) (content!2190 lt!486788))))))

(declare-fun e!914466 () List!14936)

(assert (=> d!412250 (= lt!486868 e!914466)))

(declare-fun c!235479 () Bool)

(assert (=> d!412250 (= c!235479 (is-Nil!14870 lt!486789))))

(assert (=> d!412250 (= (++!3968 lt!486789 lt!486788) lt!486868)))

(declare-fun b!1432579 () Bool)

(assert (=> b!1432579 (= e!914466 (Cons!14870 (h!20271 lt!486789) (++!3968 (t!127155 lt!486789) lt!486788)))))

(declare-fun b!1432578 () Bool)

(assert (=> b!1432578 (= e!914466 lt!486788)))

(declare-fun b!1432580 () Bool)

(declare-fun res!648530 () Bool)

(assert (=> b!1432580 (=> (not res!648530) (not e!914467))))

(declare-fun size!12198 (List!14936) Int)

(assert (=> b!1432580 (= res!648530 (= (size!12198 lt!486868) (+ (size!12198 lt!486789) (size!12198 lt!486788))))))

(declare-fun b!1432581 () Bool)

(assert (=> b!1432581 (= e!914467 (or (not (= lt!486788 Nil!14870)) (= lt!486868 lt!486789)))))

(assert (= (and d!412250 c!235479) b!1432578))

(assert (= (and d!412250 (not c!235479)) b!1432579))

(assert (= (and d!412250 res!648529) b!1432580))

(assert (= (and b!1432580 res!648530) b!1432581))

(declare-fun m!1632793 () Bool)

(assert (=> d!412250 m!1632793))

(declare-fun m!1632795 () Bool)

(assert (=> d!412250 m!1632795))

(declare-fun m!1632797 () Bool)

(assert (=> d!412250 m!1632797))

(declare-fun m!1632799 () Bool)

(assert (=> b!1432579 m!1632799))

(declare-fun m!1632801 () Bool)

(assert (=> b!1432580 m!1632801))

(declare-fun m!1632803 () Bool)

(assert (=> b!1432580 m!1632803))

(declare-fun m!1632805 () Bool)

(assert (=> b!1432580 m!1632805))

(assert (=> b!1432500 d!412250))

(declare-fun b!1432642 () Bool)

(declare-fun e!914501 () Bool)

(assert (=> b!1432642 (= e!914501 true)))

(declare-fun b!1432641 () Bool)

(declare-fun e!914500 () Bool)

(assert (=> b!1432641 (= e!914500 e!914501)))

(declare-fun b!1432640 () Bool)

(declare-fun e!914499 () Bool)

(assert (=> b!1432640 (= e!914499 e!914500)))

(declare-fun d!412252 () Bool)

(assert (=> d!412252 e!914499))

(assert (= b!1432641 b!1432642))

(assert (= b!1432640 b!1432641))

(assert (= (and d!412252 (is-Cons!14871 (rules!11341 thiss!10022))) b!1432640))

(declare-fun order!8933 () Int)

(declare-fun lambda!62800 () Int)

(declare-fun order!8931 () Int)

(declare-fun dynLambda!6782 (Int Int) Int)

(declare-fun dynLambda!6783 (Int Int) Int)

(assert (=> b!1432642 (< (dynLambda!6782 order!8931 (toValue!3911 (transformation!2608 (h!20272 (rules!11341 thiss!10022))))) (dynLambda!6783 order!8933 lambda!62800))))

(declare-fun order!8935 () Int)

(declare-fun dynLambda!6784 (Int Int) Int)

(assert (=> b!1432642 (< (dynLambda!6784 order!8935 (toChars!3770 (transformation!2608 (h!20272 (rules!11341 thiss!10022))))) (dynLambda!6783 order!8933 lambda!62800))))

(assert (=> d!412252 true))

(declare-fun lt!486874 () Bool)

(declare-fun forall!3661 (List!14936 Int) Bool)

(assert (=> d!412252 (= lt!486874 (forall!3661 lt!486784 lambda!62800))))

(declare-fun e!914491 () Bool)

(assert (=> d!412252 (= lt!486874 e!914491)))

(declare-fun res!648571 () Bool)

(assert (=> d!412252 (=> res!648571 e!914491)))

(assert (=> d!412252 (= res!648571 (not (is-Cons!14870 lt!486784)))))

(assert (=> d!412252 (not (isEmpty!9224 (rules!11341 thiss!10022)))))

(assert (=> d!412252 (= (rulesProduceEachTokenIndividuallyList!715 Lexer!2270 (rules!11341 thiss!10022) lt!486784) lt!486874)))

(declare-fun b!1432630 () Bool)

(declare-fun e!914492 () Bool)

(assert (=> b!1432630 (= e!914491 e!914492)))

(declare-fun res!648572 () Bool)

(assert (=> b!1432630 (=> (not res!648572) (not e!914492))))

(assert (=> b!1432630 (= res!648572 (rulesProduceIndividualToken!1205 Lexer!2270 (rules!11341 thiss!10022) (h!20271 lt!486784)))))

(declare-fun b!1432631 () Bool)

(assert (=> b!1432631 (= e!914492 (rulesProduceEachTokenIndividuallyList!715 Lexer!2270 (rules!11341 thiss!10022) (t!127155 lt!486784)))))

(assert (= (and d!412252 (not res!648571)) b!1432630))

(assert (= (and b!1432630 res!648572) b!1432631))

(declare-fun m!1632849 () Bool)

(assert (=> d!412252 m!1632849))

(assert (=> d!412252 m!1632771))

(declare-fun m!1632851 () Bool)

(assert (=> b!1432630 m!1632851))

(declare-fun m!1632853 () Bool)

(assert (=> b!1432631 m!1632853))

(assert (=> b!1432500 d!412252))

(declare-fun b!1432685 () Bool)

(declare-fun e!914531 () Bool)

(declare-fun size!12199 (BalanceConc!10026) Int)

(assert (=> b!1432685 (= e!914531 (<= 0 (size!12199 lt!486781)))))

(declare-fun b!1432686 () Bool)

(declare-fun res!648617 () Bool)

(declare-fun e!914527 () Bool)

(assert (=> b!1432686 (=> (not res!648617) (not e!914527))))

(declare-fun lt!487073 () List!14936)

(declare-fun lt!487045 () List!14936)

(declare-fun subseq!354 (List!14936 List!14936) Bool)

(assert (=> b!1432686 (= res!648617 (subseq!354 lt!487073 lt!487045))))

(declare-fun b!1432687 () Bool)

(declare-fun res!648618 () Bool)

(assert (=> b!1432687 (=> (not res!648618) (not e!914527))))

(assert (=> b!1432687 (= res!648618 (rulesInvariant!2116 Lexer!2270 (rules!11341 thiss!10022)))))

(declare-fun b!1432689 () Bool)

(declare-fun res!648620 () Bool)

(assert (=> b!1432689 (=> (not res!648620) (not e!914527))))

(assert (=> b!1432689 (= res!648620 (not (isEmpty!9224 (rules!11341 thiss!10022))))))

(declare-fun b!1432690 () Bool)

(declare-fun e!914528 () Bool)

(assert (=> b!1432690 (= e!914528 (tokensListTwoByTwoPredicateSeparable!107 Lexer!2270 lt!486781 (+ 0 1) (rules!11341 thiss!10022)))))

(declare-fun b!1432688 () Bool)

(declare-fun e!914529 () Bool)

(declare-fun lt!487069 () List!14936)

(assert (=> b!1432688 (= e!914529 (<= 0 (size!12198 lt!487069)))))

(declare-fun d!412268 () Bool)

(declare-fun lt!487054 () Bool)

(declare-fun dropList!455 (BalanceConc!10026 Int) List!14936)

(assert (=> d!412268 (= lt!487054 (tokensListTwoByTwoPredicateSeparableList!230 Lexer!2270 (dropList!455 lt!486781 0) (rules!11341 thiss!10022)))))

(declare-fun lt!487075 () Unit!22424)

(declare-fun lt!487047 () Unit!22424)

(assert (=> d!412268 (= lt!487075 lt!487047)))

(assert (=> d!412268 (rulesProduceEachTokenIndividuallyList!715 Lexer!2270 (rules!11341 thiss!10022) lt!487073)))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!49 (LexerInterface!2272 List!14937 List!14936 List!14936) Unit!22424)

(assert (=> d!412268 (= lt!487047 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!49 Lexer!2270 (rules!11341 thiss!10022) lt!487045 lt!487073))))

(assert (=> d!412268 e!914527))

(declare-fun res!648616 () Bool)

(assert (=> d!412268 (=> (not res!648616) (not e!914527))))

(assert (=> d!412268 (= res!648616 (is-Lexer!2270 Lexer!2270))))

(assert (=> d!412268 (= lt!487073 (dropList!455 lt!486781 0))))

(assert (=> d!412268 (= lt!487045 (list!5905 lt!486781))))

(declare-fun lt!487053 () Unit!22424)

(declare-fun lt!487057 () Unit!22424)

(assert (=> d!412268 (= lt!487053 lt!487057)))

(declare-fun drop!723 (List!14936 Int) List!14936)

(assert (=> d!412268 (subseq!354 (drop!723 lt!487069 0) lt!487069)))

(declare-fun lemmaDropSubSeq!49 (List!14936 Int) Unit!22424)

(assert (=> d!412268 (= lt!487057 (lemmaDropSubSeq!49 lt!487069 0))))

(assert (=> d!412268 e!914529))

(declare-fun res!648613 () Bool)

(assert (=> d!412268 (=> (not res!648613) (not e!914529))))

(assert (=> d!412268 (= res!648613 (>= 0 0))))

(assert (=> d!412268 (= lt!487069 (list!5905 lt!486781))))

(declare-fun e!914530 () Bool)

(assert (=> d!412268 (= lt!487054 e!914530)))

(declare-fun res!648619 () Bool)

(assert (=> d!412268 (=> res!648619 e!914530)))

(assert (=> d!412268 (= res!648619 (not (< 0 (- (size!12199 lt!486781) 1))))))

(assert (=> d!412268 e!914531))

(declare-fun res!648615 () Bool)

(assert (=> d!412268 (=> (not res!648615) (not e!914531))))

(assert (=> d!412268 (= res!648615 (>= 0 0))))

(assert (=> d!412268 (= (tokensListTwoByTwoPredicateSeparable!107 Lexer!2270 lt!486781 0 (rules!11341 thiss!10022)) lt!487054)))

(declare-fun b!1432691 () Bool)

(assert (=> b!1432691 (= e!914527 (rulesProduceEachTokenIndividuallyList!715 Lexer!2270 (rules!11341 thiss!10022) lt!487045))))

(declare-fun b!1432692 () Bool)

(assert (=> b!1432692 (= e!914530 e!914528)))

(declare-fun res!648614 () Bool)

(assert (=> b!1432692 (=> (not res!648614) (not e!914528))))

(declare-fun apply!3797 (BalanceConc!10026 Int) Token!4878)

(assert (=> b!1432692 (= res!648614 (separableTokensPredicate!507 Lexer!2270 (apply!3797 lt!486781 0) (apply!3797 lt!486781 (+ 0 1)) (rules!11341 thiss!10022)))))

(declare-fun lt!487063 () Unit!22424)

(declare-fun Unit!22429 () Unit!22424)

(assert (=> b!1432692 (= lt!487063 Unit!22429)))

(declare-fun size!12200 (BalanceConc!10024) Int)

(declare-fun charsOf!1508 (Token!4878) BalanceConc!10024)

(assert (=> b!1432692 (> (size!12200 (charsOf!1508 (apply!3797 lt!486781 (+ 0 1)))) 0)))

(declare-fun lt!487074 () Unit!22424)

(declare-fun Unit!22430 () Unit!22424)

(assert (=> b!1432692 (= lt!487074 Unit!22430)))

(assert (=> b!1432692 (rulesProduceIndividualToken!1205 Lexer!2270 (rules!11341 thiss!10022) (apply!3797 lt!486781 (+ 0 1)))))

(declare-fun lt!487049 () Unit!22424)

(declare-fun Unit!22431 () Unit!22424)

(assert (=> b!1432692 (= lt!487049 Unit!22431)))

(assert (=> b!1432692 (rulesProduceIndividualToken!1205 Lexer!2270 (rules!11341 thiss!10022) (apply!3797 lt!486781 0))))

(declare-fun lt!487060 () Unit!22424)

(declare-fun lt!487071 () Unit!22424)

(assert (=> b!1432692 (= lt!487060 lt!487071)))

(declare-fun lt!487068 () Token!4878)

(assert (=> b!1432692 (rulesProduceIndividualToken!1205 Lexer!2270 (rules!11341 thiss!10022) lt!487068)))

(declare-fun lt!487052 () List!14936)

(assert (=> b!1432692 (= lt!487071 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!390 Lexer!2270 (rules!11341 thiss!10022) lt!487052 lt!487068))))

(assert (=> b!1432692 (= lt!487068 (apply!3797 lt!486781 (+ 0 1)))))

(assert (=> b!1432692 (= lt!487052 (list!5905 lt!486781))))

(declare-fun lt!487044 () Unit!22424)

(declare-fun lt!487043 () Unit!22424)

(assert (=> b!1432692 (= lt!487044 lt!487043)))

(declare-fun lt!487058 () Token!4878)

(assert (=> b!1432692 (rulesProduceIndividualToken!1205 Lexer!2270 (rules!11341 thiss!10022) lt!487058)))

(declare-fun lt!487056 () List!14936)

(assert (=> b!1432692 (= lt!487043 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!390 Lexer!2270 (rules!11341 thiss!10022) lt!487056 lt!487058))))

(assert (=> b!1432692 (= lt!487058 (apply!3797 lt!486781 0))))

(assert (=> b!1432692 (= lt!487056 (list!5905 lt!486781))))

(declare-fun lt!487046 () Unit!22424)

(declare-fun lt!487048 () Unit!22424)

(assert (=> b!1432692 (= lt!487046 lt!487048)))

(declare-fun lt!487061 () List!14936)

(declare-fun lt!487065 () Int)

(declare-fun tail!2145 (List!14936) List!14936)

(assert (=> b!1432692 (= (tail!2145 (drop!723 lt!487061 lt!487065)) (drop!723 lt!487061 (+ lt!487065 1)))))

(declare-fun lemmaDropTail!455 (List!14936 Int) Unit!22424)

(assert (=> b!1432692 (= lt!487048 (lemmaDropTail!455 lt!487061 lt!487065))))

(assert (=> b!1432692 (= lt!487065 (+ 0 1))))

(assert (=> b!1432692 (= lt!487061 (list!5905 lt!486781))))

(declare-fun lt!487070 () Unit!22424)

(declare-fun lt!487067 () Unit!22424)

(assert (=> b!1432692 (= lt!487070 lt!487067)))

(declare-fun lt!487064 () List!14936)

(assert (=> b!1432692 (= (tail!2145 (drop!723 lt!487064 0)) (drop!723 lt!487064 (+ 0 1)))))

(assert (=> b!1432692 (= lt!487067 (lemmaDropTail!455 lt!487064 0))))

(assert (=> b!1432692 (= lt!487064 (list!5905 lt!486781))))

(declare-fun lt!487066 () Unit!22424)

(declare-fun lt!487062 () Unit!22424)

(assert (=> b!1432692 (= lt!487066 lt!487062)))

(declare-fun lt!487059 () List!14936)

(declare-fun lt!487072 () Int)

(declare-fun head!2870 (List!14936) Token!4878)

(declare-fun apply!3798 (List!14936 Int) Token!4878)

(assert (=> b!1432692 (= (head!2870 (drop!723 lt!487059 lt!487072)) (apply!3798 lt!487059 lt!487072))))

(declare-fun lemmaDropApply!475 (List!14936 Int) Unit!22424)

(assert (=> b!1432692 (= lt!487062 (lemmaDropApply!475 lt!487059 lt!487072))))

(assert (=> b!1432692 (= lt!487072 (+ 0 1))))

(assert (=> b!1432692 (= lt!487059 (list!5905 lt!486781))))

(declare-fun lt!487050 () Unit!22424)

(declare-fun lt!487055 () Unit!22424)

(assert (=> b!1432692 (= lt!487050 lt!487055)))

(declare-fun lt!487051 () List!14936)

(assert (=> b!1432692 (= (head!2870 (drop!723 lt!487051 0)) (apply!3798 lt!487051 0))))

(assert (=> b!1432692 (= lt!487055 (lemmaDropApply!475 lt!487051 0))))

(assert (=> b!1432692 (= lt!487051 (list!5905 lt!486781))))

(assert (= (and d!412268 res!648615) b!1432685))

(assert (= (and d!412268 (not res!648619)) b!1432692))

(assert (= (and b!1432692 res!648614) b!1432690))

(assert (= (and d!412268 res!648613) b!1432688))

(assert (= (and d!412268 res!648616) b!1432689))

(assert (= (and b!1432689 res!648620) b!1432687))

(assert (= (and b!1432687 res!648618) b!1432686))

(assert (= (and b!1432686 res!648617) b!1432691))

(declare-fun m!1632937 () Bool)

(assert (=> b!1432686 m!1632937))

(declare-fun m!1632939 () Bool)

(assert (=> b!1432685 m!1632939))

(declare-fun m!1632941 () Bool)

(assert (=> b!1432692 m!1632941))

(declare-fun m!1632943 () Bool)

(assert (=> b!1432692 m!1632943))

(declare-fun m!1632945 () Bool)

(assert (=> b!1432692 m!1632945))

(declare-fun m!1632947 () Bool)

(assert (=> b!1432692 m!1632947))

(declare-fun m!1632949 () Bool)

(assert (=> b!1432692 m!1632949))

(declare-fun m!1632951 () Bool)

(assert (=> b!1432692 m!1632951))

(assert (=> b!1432692 m!1632625))

(declare-fun m!1632953 () Bool)

(assert (=> b!1432692 m!1632953))

(declare-fun m!1632955 () Bool)

(assert (=> b!1432692 m!1632955))

(declare-fun m!1632957 () Bool)

(assert (=> b!1432692 m!1632957))

(declare-fun m!1632959 () Bool)

(assert (=> b!1432692 m!1632959))

(declare-fun m!1632961 () Bool)

(assert (=> b!1432692 m!1632961))

(assert (=> b!1432692 m!1632955))

(declare-fun m!1632963 () Bool)

(assert (=> b!1432692 m!1632963))

(declare-fun m!1632965 () Bool)

(assert (=> b!1432692 m!1632965))

(declare-fun m!1632967 () Bool)

(assert (=> b!1432692 m!1632967))

(assert (=> b!1432692 m!1632943))

(assert (=> b!1432692 m!1632945))

(declare-fun m!1632969 () Bool)

(assert (=> b!1432692 m!1632969))

(declare-fun m!1632971 () Bool)

(assert (=> b!1432692 m!1632971))

(declare-fun m!1632973 () Bool)

(assert (=> b!1432692 m!1632973))

(assert (=> b!1432692 m!1632955))

(assert (=> b!1432692 m!1632943))

(declare-fun m!1632975 () Bool)

(assert (=> b!1432692 m!1632975))

(assert (=> b!1432692 m!1632943))

(declare-fun m!1632977 () Bool)

(assert (=> b!1432692 m!1632977))

(declare-fun m!1632979 () Bool)

(assert (=> b!1432692 m!1632979))

(declare-fun m!1632981 () Bool)

(assert (=> b!1432692 m!1632981))

(assert (=> b!1432692 m!1632979))

(declare-fun m!1632983 () Bool)

(assert (=> b!1432692 m!1632983))

(declare-fun m!1632985 () Bool)

(assert (=> b!1432692 m!1632985))

(assert (=> b!1432692 m!1632973))

(declare-fun m!1632987 () Bool)

(assert (=> b!1432692 m!1632987))

(declare-fun m!1632989 () Bool)

(assert (=> b!1432692 m!1632989))

(assert (=> b!1432692 m!1632941))

(declare-fun m!1632991 () Bool)

(assert (=> b!1432692 m!1632991))

(assert (=> b!1432692 m!1632949))

(declare-fun m!1632993 () Bool)

(assert (=> b!1432692 m!1632993))

(assert (=> b!1432689 m!1632771))

(assert (=> b!1432687 m!1632763))

(declare-fun m!1632995 () Bool)

(assert (=> b!1432688 m!1632995))

(declare-fun m!1632997 () Bool)

(assert (=> b!1432691 m!1632997))

(declare-fun m!1632999 () Bool)

(assert (=> b!1432690 m!1632999))

(assert (=> d!412268 m!1632625))

(declare-fun m!1633001 () Bool)

(assert (=> d!412268 m!1633001))

(assert (=> d!412268 m!1632939))

(declare-fun m!1633003 () Bool)

(assert (=> d!412268 m!1633003))

(declare-fun m!1633005 () Bool)

(assert (=> d!412268 m!1633005))

(declare-fun m!1633007 () Bool)

(assert (=> d!412268 m!1633007))

(declare-fun m!1633009 () Bool)

(assert (=> d!412268 m!1633009))

(assert (=> d!412268 m!1633007))

(assert (=> d!412268 m!1633005))

(declare-fun m!1633011 () Bool)

(assert (=> d!412268 m!1633011))

(declare-fun m!1633013 () Bool)

(assert (=> d!412268 m!1633013))

(assert (=> b!1432500 d!412268))

(declare-fun d!412274 () Bool)

(declare-fun res!648637 () Bool)

(declare-fun e!914539 () Bool)

(assert (=> d!412274 (=> res!648637 e!914539)))

(assert (=> d!412274 (= res!648637 (or (not (is-Cons!14870 lt!486784)) (not (is-Cons!14870 (t!127155 lt!486784)))))))

(assert (=> d!412274 (= (tokensListTwoByTwoPredicateSeparableList!230 Lexer!2270 lt!486784 (rules!11341 thiss!10022)) e!914539)))

(declare-fun b!1432709 () Bool)

(declare-fun e!914540 () Bool)

(assert (=> b!1432709 (= e!914539 e!914540)))

(declare-fun res!648638 () Bool)

(assert (=> b!1432709 (=> (not res!648638) (not e!914540))))

(assert (=> b!1432709 (= res!648638 (separableTokensPredicate!507 Lexer!2270 (h!20271 lt!486784) (h!20271 (t!127155 lt!486784)) (rules!11341 thiss!10022)))))

(declare-fun lt!487103 () Unit!22424)

(declare-fun Unit!22432 () Unit!22424)

(assert (=> b!1432709 (= lt!487103 Unit!22432)))

(assert (=> b!1432709 (> (size!12200 (charsOf!1508 (h!20271 (t!127155 lt!486784)))) 0)))

(declare-fun lt!487099 () Unit!22424)

(declare-fun Unit!22433 () Unit!22424)

(assert (=> b!1432709 (= lt!487099 Unit!22433)))

(assert (=> b!1432709 (rulesProduceIndividualToken!1205 Lexer!2270 (rules!11341 thiss!10022) (h!20271 (t!127155 lt!486784)))))

(declare-fun lt!487102 () Unit!22424)

(declare-fun Unit!22434 () Unit!22424)

(assert (=> b!1432709 (= lt!487102 Unit!22434)))

(assert (=> b!1432709 (rulesProduceIndividualToken!1205 Lexer!2270 (rules!11341 thiss!10022) (h!20271 lt!486784))))

(declare-fun lt!487101 () Unit!22424)

(declare-fun lt!487105 () Unit!22424)

(assert (=> b!1432709 (= lt!487101 lt!487105)))

(assert (=> b!1432709 (rulesProduceIndividualToken!1205 Lexer!2270 (rules!11341 thiss!10022) (h!20271 (t!127155 lt!486784)))))

(assert (=> b!1432709 (= lt!487105 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!390 Lexer!2270 (rules!11341 thiss!10022) lt!486784 (h!20271 (t!127155 lt!486784))))))

(declare-fun lt!487104 () Unit!22424)

(declare-fun lt!487100 () Unit!22424)

(assert (=> b!1432709 (= lt!487104 lt!487100)))

(assert (=> b!1432709 (rulesProduceIndividualToken!1205 Lexer!2270 (rules!11341 thiss!10022) (h!20271 lt!486784))))

(assert (=> b!1432709 (= lt!487100 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!390 Lexer!2270 (rules!11341 thiss!10022) lt!486784 (h!20271 lt!486784)))))

(declare-fun b!1432710 () Bool)

(assert (=> b!1432710 (= e!914540 (tokensListTwoByTwoPredicateSeparableList!230 Lexer!2270 (Cons!14870 (h!20271 (t!127155 lt!486784)) (t!127155 (t!127155 lt!486784))) (rules!11341 thiss!10022)))))

(assert (= (and d!412274 (not res!648637)) b!1432709))

(assert (= (and b!1432709 res!648638) b!1432710))

(declare-fun m!1633023 () Bool)

(assert (=> b!1432709 m!1633023))

(declare-fun m!1633025 () Bool)

(assert (=> b!1432709 m!1633025))

(declare-fun m!1633027 () Bool)

(assert (=> b!1432709 m!1633027))

(declare-fun m!1633029 () Bool)

(assert (=> b!1432709 m!1633029))

(assert (=> b!1432709 m!1633025))

(declare-fun m!1633031 () Bool)

(assert (=> b!1432709 m!1633031))

(declare-fun m!1633033 () Bool)

(assert (=> b!1432709 m!1633033))

(assert (=> b!1432709 m!1632851))

(declare-fun m!1633035 () Bool)

(assert (=> b!1432710 m!1633035))

(assert (=> b!1432501 d!412274))

(declare-fun d!412278 () Bool)

(declare-fun res!648649 () Bool)

(declare-fun e!914547 () Bool)

(assert (=> d!412278 (=> (not res!648649) (not e!914547))))

(assert (=> d!412278 (= res!648649 (not (isEmpty!9224 (rules!11341 thiss!10022))))))

(assert (=> d!412278 (= (inv!19741 thiss!10022) e!914547)))

(declare-fun b!1432721 () Bool)

(declare-fun res!648650 () Bool)

(assert (=> b!1432721 (=> (not res!648650) (not e!914547))))

(assert (=> b!1432721 (= res!648650 (rulesInvariant!2116 Lexer!2270 (rules!11341 thiss!10022)))))

(declare-fun b!1432722 () Bool)

(declare-fun res!648651 () Bool)

(assert (=> b!1432722 (=> (not res!648651) (not e!914547))))

(declare-fun rulesProduceEachTokenIndividually!834 (LexerInterface!2272 List!14937 BalanceConc!10026) Bool)

(assert (=> b!1432722 (= res!648651 (rulesProduceEachTokenIndividually!834 Lexer!2270 (rules!11341 thiss!10022) (tokens!1957 thiss!10022)))))

(declare-fun b!1432723 () Bool)

(declare-fun separableTokens!218 (LexerInterface!2272 BalanceConc!10026 List!14937) Bool)

(assert (=> b!1432723 (= e!914547 (separableTokens!218 Lexer!2270 (tokens!1957 thiss!10022) (rules!11341 thiss!10022)))))

(assert (= (and d!412278 res!648649) b!1432721))

(assert (= (and b!1432721 res!648650) b!1432722))

(assert (= (and b!1432722 res!648651) b!1432723))

(assert (=> d!412278 m!1632771))

(assert (=> b!1432721 m!1632763))

(declare-fun m!1633037 () Bool)

(assert (=> b!1432722 m!1633037))

(declare-fun m!1633039 () Bool)

(assert (=> b!1432723 m!1633039))

(assert (=> start!132490 d!412278))

(declare-fun d!412280 () Bool)

(declare-fun res!648652 () Bool)

(declare-fun e!914548 () Bool)

(assert (=> d!412280 (=> (not res!648652) (not e!914548))))

(assert (=> d!412280 (= res!648652 (not (isEmpty!9224 (rules!11341 other!32))))))

(assert (=> d!412280 (= (inv!19741 other!32) e!914548)))

(declare-fun b!1432724 () Bool)

(declare-fun res!648653 () Bool)

(assert (=> b!1432724 (=> (not res!648653) (not e!914548))))

(assert (=> b!1432724 (= res!648653 (rulesInvariant!2116 Lexer!2270 (rules!11341 other!32)))))

(declare-fun b!1432725 () Bool)

(declare-fun res!648654 () Bool)

(assert (=> b!1432725 (=> (not res!648654) (not e!914548))))

(assert (=> b!1432725 (= res!648654 (rulesProduceEachTokenIndividually!834 Lexer!2270 (rules!11341 other!32) (tokens!1957 other!32)))))

(declare-fun b!1432726 () Bool)

(assert (=> b!1432726 (= e!914548 (separableTokens!218 Lexer!2270 (tokens!1957 other!32) (rules!11341 other!32)))))

(assert (= (and d!412280 res!648652) b!1432724))

(assert (= (and b!1432724 res!648653) b!1432725))

(assert (= (and b!1432725 res!648654) b!1432726))

(declare-fun m!1633041 () Bool)

(assert (=> d!412280 m!1633041))

(declare-fun m!1633043 () Bool)

(assert (=> b!1432724 m!1633043))

(declare-fun m!1633045 () Bool)

(assert (=> b!1432725 m!1633045))

(declare-fun m!1633047 () Bool)

(assert (=> b!1432726 m!1633047))

(assert (=> start!132490 d!412280))

(declare-fun d!412282 () Bool)

(declare-fun c!235487 () Bool)

(assert (=> d!412282 (= c!235487 (is-Node!5043 (c!235466 (tokens!1957 thiss!10022))))))

(declare-fun e!914549 () Bool)

(assert (=> d!412282 (= (inv!19740 (c!235466 (tokens!1957 thiss!10022))) e!914549)))

(declare-fun b!1432727 () Bool)

(assert (=> b!1432727 (= e!914549 (inv!19745 (c!235466 (tokens!1957 thiss!10022))))))

(declare-fun b!1432728 () Bool)

(declare-fun e!914550 () Bool)

(assert (=> b!1432728 (= e!914549 e!914550)))

(declare-fun res!648655 () Bool)

(assert (=> b!1432728 (= res!648655 (not (is-Leaf!7549 (c!235466 (tokens!1957 thiss!10022)))))))

(assert (=> b!1432728 (=> res!648655 e!914550)))

(declare-fun b!1432729 () Bool)

(assert (=> b!1432729 (= e!914550 (inv!19746 (c!235466 (tokens!1957 thiss!10022))))))

(assert (= (and d!412282 c!235487) b!1432727))

(assert (= (and d!412282 (not c!235487)) b!1432728))

(assert (= (and b!1432728 (not res!648655)) b!1432729))

(declare-fun m!1633049 () Bool)

(assert (=> b!1432727 m!1633049))

(declare-fun m!1633051 () Bool)

(assert (=> b!1432729 m!1633051))

(assert (=> b!1432502 d!412282))

(declare-fun d!412284 () Bool)

(declare-fun c!235490 () Bool)

(assert (=> d!412284 (= c!235490 (is-Cons!14870 lt!486789))))

(declare-fun e!914553 () List!14934)

(assert (=> d!412284 (= (printList!700 Lexer!2270 lt!486789) e!914553)))

(declare-fun b!1432734 () Bool)

(declare-fun list!5907 (BalanceConc!10024) List!14934)

(assert (=> b!1432734 (= e!914553 (++!3969 (list!5907 (charsOf!1508 (h!20271 lt!486789))) (printList!700 Lexer!2270 (t!127155 lt!486789))))))

(declare-fun b!1432735 () Bool)

(assert (=> b!1432735 (= e!914553 Nil!14868)))

(assert (= (and d!412284 c!235490) b!1432734))

(assert (= (and d!412284 (not c!235490)) b!1432735))

(declare-fun m!1633053 () Bool)

(assert (=> b!1432734 m!1633053))

(assert (=> b!1432734 m!1633053))

(declare-fun m!1633055 () Bool)

(assert (=> b!1432734 m!1633055))

(declare-fun m!1633057 () Bool)

(assert (=> b!1432734 m!1633057))

(assert (=> b!1432734 m!1633055))

(assert (=> b!1432734 m!1633057))

(declare-fun m!1633059 () Bool)

(assert (=> b!1432734 m!1633059))

(assert (=> b!1432503 d!412284))

(declare-fun d!412286 () Bool)

(declare-fun list!5908 (Conc!5043) List!14936)

(assert (=> d!412286 (= (list!5905 lt!486781) (list!5908 (c!235466 lt!486781)))))

(declare-fun bs!340867 () Bool)

(assert (= bs!340867 d!412286))

(declare-fun m!1633061 () Bool)

(assert (=> bs!340867 m!1633061))

(assert (=> b!1432503 d!412286))

(declare-fun d!412288 () Bool)

(declare-fun e!914556 () Bool)

(assert (=> d!412288 e!914556))

(declare-fun res!648658 () Bool)

(assert (=> d!412288 (=> (not res!648658) (not e!914556))))

(declare-fun lt!487112 () BalanceConc!10024)

(declare-datatypes ((tuple2!14092 0))(
  ( (tuple2!14093 (_1!7932 BalanceConc!10026) (_2!7932 BalanceConc!10024)) )
))
(declare-fun lex!1037 (LexerInterface!2272 List!14937 BalanceConc!10024) tuple2!14092)

(assert (=> d!412288 (= res!648658 (= (list!5905 (_1!7932 (lex!1037 Lexer!2270 (rules!11341 other!32) lt!487112))) (list!5905 (tokens!1957 other!32))))))

(assert (=> d!412288 (= lt!487112 (print!1051 Lexer!2270 (tokens!1957 other!32)))))

(declare-fun lt!487113 () Unit!22424)

(assert (=> d!412288 (= lt!487113 (theoremInvertabilityWhenTokenListSeparable!62 Lexer!2270 (rules!11341 other!32) (list!5905 (tokens!1957 other!32))))))

(assert (=> d!412288 (= (print!1050 other!32) lt!487112)))

(declare-fun b!1432738 () Bool)

(declare-fun isEmpty!9225 (List!14934) Bool)

(assert (=> b!1432738 (= e!914556 (isEmpty!9225 (list!5907 (_2!7932 (lex!1037 Lexer!2270 (rules!11341 other!32) lt!487112)))))))

(assert (= (and d!412288 res!648658) b!1432738))

(declare-fun m!1633063 () Bool)

(assert (=> d!412288 m!1633063))

(declare-fun m!1633065 () Bool)

(assert (=> d!412288 m!1633065))

(assert (=> d!412288 m!1632605))

(declare-fun m!1633067 () Bool)

(assert (=> d!412288 m!1633067))

(assert (=> d!412288 m!1632631))

(assert (=> d!412288 m!1632605))

(assert (=> b!1432738 m!1633063))

(declare-fun m!1633069 () Bool)

(assert (=> b!1432738 m!1633069))

(assert (=> b!1432738 m!1633069))

(declare-fun m!1633071 () Bool)

(assert (=> b!1432738 m!1633071))

(assert (=> b!1432503 d!412288))

(declare-fun d!412290 () Bool)

(declare-fun c!235491 () Bool)

(assert (=> d!412290 (= c!235491 (is-Cons!14870 lt!486788))))

(declare-fun e!914557 () List!14934)

(assert (=> d!412290 (= (printList!700 Lexer!2270 lt!486788) e!914557)))

(declare-fun b!1432739 () Bool)

(assert (=> b!1432739 (= e!914557 (++!3969 (list!5907 (charsOf!1508 (h!20271 lt!486788))) (printList!700 Lexer!2270 (t!127155 lt!486788))))))

(declare-fun b!1432740 () Bool)

(assert (=> b!1432740 (= e!914557 Nil!14868)))

(assert (= (and d!412290 c!235491) b!1432739))

(assert (= (and d!412290 (not c!235491)) b!1432740))

(declare-fun m!1633073 () Bool)

(assert (=> b!1432739 m!1633073))

(assert (=> b!1432739 m!1633073))

(declare-fun m!1633075 () Bool)

(assert (=> b!1432739 m!1633075))

(declare-fun m!1633077 () Bool)

(assert (=> b!1432739 m!1633077))

(assert (=> b!1432739 m!1633075))

(assert (=> b!1432739 m!1633077))

(declare-fun m!1633079 () Bool)

(assert (=> b!1432739 m!1633079))

(assert (=> b!1432503 d!412290))

(declare-fun d!412292 () Bool)

(assert (=> d!412292 (= (isEmpty!9219 lt!486779) (not (is-Some!2831 lt!486779)))))

(assert (=> b!1432503 d!412292))

(declare-fun d!412294 () Bool)

(declare-fun c!235492 () Bool)

(assert (=> d!412294 (= c!235492 (is-Cons!14870 lt!486784))))

(declare-fun e!914558 () List!14934)

(assert (=> d!412294 (= (printList!700 Lexer!2270 lt!486784) e!914558)))

(declare-fun b!1432741 () Bool)

(assert (=> b!1432741 (= e!914558 (++!3969 (list!5907 (charsOf!1508 (h!20271 lt!486784))) (printList!700 Lexer!2270 (t!127155 lt!486784))))))

(declare-fun b!1432742 () Bool)

(assert (=> b!1432742 (= e!914558 Nil!14868)))

(assert (= (and d!412294 c!235492) b!1432741))

(assert (= (and d!412294 (not c!235492)) b!1432742))

(declare-fun m!1633081 () Bool)

(assert (=> b!1432741 m!1633081))

(assert (=> b!1432741 m!1633081))

(declare-fun m!1633083 () Bool)

(assert (=> b!1432741 m!1633083))

(declare-fun m!1633085 () Bool)

(assert (=> b!1432741 m!1633085))

(assert (=> b!1432741 m!1633083))

(assert (=> b!1432741 m!1633085))

(declare-fun m!1633087 () Bool)

(assert (=> b!1432741 m!1633087))

(assert (=> b!1432503 d!412294))

(declare-fun d!412296 () Bool)

(declare-fun lt!487117 () BalanceConc!10024)

(assert (=> d!412296 (= (list!5907 lt!487117) (printList!700 Lexer!2270 (list!5905 (tokens!1957 thiss!10022))))))

(declare-fun printTailRec!672 (LexerInterface!2272 BalanceConc!10026 Int BalanceConc!10024) BalanceConc!10024)

(assert (=> d!412296 (= lt!487117 (printTailRec!672 Lexer!2270 (tokens!1957 thiss!10022) 0 (BalanceConc!10025 Empty!5042)))))

(assert (=> d!412296 (= (print!1051 Lexer!2270 (tokens!1957 thiss!10022)) lt!487117)))

(declare-fun bs!340868 () Bool)

(assert (= bs!340868 d!412296))

(declare-fun m!1633089 () Bool)

(assert (=> bs!340868 m!1633089))

(assert (=> bs!340868 m!1632595))

(assert (=> bs!340868 m!1632595))

(declare-fun m!1633091 () Bool)

(assert (=> bs!340868 m!1633091))

(declare-fun m!1633093 () Bool)

(assert (=> bs!340868 m!1633093))

(assert (=> b!1432503 d!412296))

(declare-fun d!412298 () Bool)

(assert (=> d!412298 (= (printList!700 Lexer!2270 (++!3968 lt!486789 lt!486788)) (++!3969 (printList!700 Lexer!2270 lt!486789) (printList!700 Lexer!2270 lt!486788)))))

(declare-fun lt!487120 () Unit!22424)

(declare-fun choose!8816 (LexerInterface!2272 List!14936 List!14936) Unit!22424)

(assert (=> d!412298 (= lt!487120 (choose!8816 Lexer!2270 lt!486789 lt!486788))))

(assert (=> d!412298 (= (lemmaPrintConcatSameAsConcatPrint!61 Lexer!2270 lt!486789 lt!486788) lt!487120)))

(declare-fun bs!340869 () Bool)

(assert (= bs!340869 d!412298))

(declare-fun m!1633101 () Bool)

(assert (=> bs!340869 m!1633101))

(assert (=> bs!340869 m!1632649))

(assert (=> bs!340869 m!1632621))

(assert (=> bs!340869 m!1632609))

(assert (=> bs!340869 m!1632623))

(assert (=> bs!340869 m!1632609))

(assert (=> bs!340869 m!1632649))

(declare-fun m!1633103 () Bool)

(assert (=> bs!340869 m!1633103))

(assert (=> bs!340869 m!1632621))

(assert (=> b!1432503 d!412298))

(declare-fun d!412302 () Bool)

(declare-fun e!914570 () Bool)

(assert (=> d!412302 e!914570))

(declare-fun res!648661 () Bool)

(assert (=> d!412302 (=> (not res!648661) (not e!914570))))

(declare-fun lt!487121 () BalanceConc!10024)

(assert (=> d!412302 (= res!648661 (= (list!5905 (_1!7932 (lex!1037 Lexer!2270 (rules!11341 thiss!10022) lt!487121))) (list!5905 (tokens!1957 thiss!10022))))))

(assert (=> d!412302 (= lt!487121 (print!1051 Lexer!2270 (tokens!1957 thiss!10022)))))

(declare-fun lt!487122 () Unit!22424)

(assert (=> d!412302 (= lt!487122 (theoremInvertabilityWhenTokenListSeparable!62 Lexer!2270 (rules!11341 thiss!10022) (list!5905 (tokens!1957 thiss!10022))))))

(assert (=> d!412302 (= (print!1050 thiss!10022) lt!487121)))

(declare-fun b!1432758 () Bool)

(assert (=> b!1432758 (= e!914570 (isEmpty!9225 (list!5907 (_2!7932 (lex!1037 Lexer!2270 (rules!11341 thiss!10022) lt!487121)))))))

(assert (= (and d!412302 res!648661) b!1432758))

(declare-fun m!1633105 () Bool)

(assert (=> d!412302 m!1633105))

(declare-fun m!1633107 () Bool)

(assert (=> d!412302 m!1633107))

(assert (=> d!412302 m!1632595))

(declare-fun m!1633109 () Bool)

(assert (=> d!412302 m!1633109))

(assert (=> d!412302 m!1632615))

(assert (=> d!412302 m!1632595))

(assert (=> b!1432758 m!1633105))

(declare-fun m!1633111 () Bool)

(assert (=> b!1432758 m!1633111))

(assert (=> b!1432758 m!1633111))

(declare-fun m!1633113 () Bool)

(assert (=> b!1432758 m!1633113))

(assert (=> b!1432503 d!412302))

(declare-fun d!412304 () Bool)

(declare-fun lt!487125 () BalanceConc!10024)

(assert (=> d!412304 (= (list!5907 lt!487125) (printList!700 Lexer!2270 (list!5905 (tokens!1957 other!32))))))

(assert (=> d!412304 (= lt!487125 (printTailRec!672 Lexer!2270 (tokens!1957 other!32) 0 (BalanceConc!10025 Empty!5042)))))

(assert (=> d!412304 (= (print!1051 Lexer!2270 (tokens!1957 other!32)) lt!487125)))

(declare-fun bs!340870 () Bool)

(assert (= bs!340870 d!412304))

(declare-fun m!1633115 () Bool)

(assert (=> bs!340870 m!1633115))

(assert (=> bs!340870 m!1632605))

(assert (=> bs!340870 m!1632605))

(declare-fun m!1633117 () Bool)

(assert (=> bs!340870 m!1633117))

(declare-fun m!1633119 () Bool)

(assert (=> bs!340870 m!1633119))

(assert (=> b!1432503 d!412304))

(declare-fun d!412306 () Bool)

(declare-fun e!914575 () Bool)

(assert (=> d!412306 e!914575))

(declare-fun res!648666 () Bool)

(assert (=> d!412306 (=> (not res!648666) (not e!914575))))

(declare-fun lt!487126 () BalanceConc!10024)

(assert (=> d!412306 (= res!648666 (= (list!5905 (_1!7932 (lex!1037 Lexer!2270 (rules!11341 lt!486776) lt!487126))) (list!5905 (tokens!1957 lt!486776))))))

(assert (=> d!412306 (= lt!487126 (print!1051 Lexer!2270 (tokens!1957 lt!486776)))))

(declare-fun lt!487127 () Unit!22424)

(assert (=> d!412306 (= lt!487127 (theoremInvertabilityWhenTokenListSeparable!62 Lexer!2270 (rules!11341 lt!486776) (list!5905 (tokens!1957 lt!486776))))))

(assert (=> d!412306 (= (print!1050 lt!486776) lt!487126)))

(declare-fun b!1432767 () Bool)

(assert (=> b!1432767 (= e!914575 (isEmpty!9225 (list!5907 (_2!7932 (lex!1037 Lexer!2270 (rules!11341 lt!486776) lt!487126)))))))

(assert (= (and d!412306 res!648666) b!1432767))

(declare-fun m!1633121 () Bool)

(assert (=> d!412306 m!1633121))

(declare-fun m!1633123 () Bool)

(assert (=> d!412306 m!1633123))

(declare-fun m!1633125 () Bool)

(assert (=> d!412306 m!1633125))

(declare-fun m!1633127 () Bool)

(assert (=> d!412306 m!1633127))

(declare-fun m!1633129 () Bool)

(assert (=> d!412306 m!1633129))

(assert (=> d!412306 m!1633125))

(assert (=> b!1432767 m!1633121))

(declare-fun m!1633131 () Bool)

(assert (=> b!1432767 m!1633131))

(assert (=> b!1432767 m!1633131))

(declare-fun m!1633133 () Bool)

(assert (=> b!1432767 m!1633133))

(assert (=> b!1432503 d!412306))

(declare-fun d!412308 () Bool)

(declare-fun lt!487128 () BalanceConc!10024)

(assert (=> d!412308 (= (list!5907 lt!487128) (printList!700 Lexer!2270 (list!5905 lt!486781)))))

(assert (=> d!412308 (= lt!487128 (printTailRec!672 Lexer!2270 lt!486781 0 (BalanceConc!10025 Empty!5042)))))

(assert (=> d!412308 (= (print!1051 Lexer!2270 lt!486781) lt!487128)))

(declare-fun bs!340871 () Bool)

(assert (= bs!340871 d!412308))

(declare-fun m!1633135 () Bool)

(assert (=> bs!340871 m!1633135))

(assert (=> bs!340871 m!1632625))

(assert (=> bs!340871 m!1632625))

(declare-fun m!1633137 () Bool)

(assert (=> bs!340871 m!1633137))

(declare-fun m!1633139 () Bool)

(assert (=> bs!340871 m!1633139))

(assert (=> b!1432503 d!412308))

(declare-fun b!1432780 () Bool)

(declare-fun e!914582 () List!14934)

(assert (=> b!1432780 (= e!914582 (printList!700 Lexer!2270 lt!486788))))

(declare-fun d!412310 () Bool)

(declare-fun e!914583 () Bool)

(assert (=> d!412310 e!914583))

(declare-fun res!648674 () Bool)

(assert (=> d!412310 (=> (not res!648674) (not e!914583))))

(declare-fun lt!487132 () List!14934)

(declare-fun content!2191 (List!14934) (Set C!8022))

(assert (=> d!412310 (= res!648674 (= (content!2191 lt!487132) (set.union (content!2191 (printList!700 Lexer!2270 lt!486789)) (content!2191 (printList!700 Lexer!2270 lt!486788)))))))

(assert (=> d!412310 (= lt!487132 e!914582)))

(declare-fun c!235498 () Bool)

(assert (=> d!412310 (= c!235498 (is-Nil!14868 (printList!700 Lexer!2270 lt!486789)))))

(assert (=> d!412310 (= (++!3969 (printList!700 Lexer!2270 lt!486789) (printList!700 Lexer!2270 lt!486788)) lt!487132)))

(declare-fun b!1432783 () Bool)

(assert (=> b!1432783 (= e!914583 (or (not (= (printList!700 Lexer!2270 lt!486788) Nil!14868)) (= lt!487132 (printList!700 Lexer!2270 lt!486789))))))

(declare-fun b!1432782 () Bool)

(declare-fun res!648673 () Bool)

(assert (=> b!1432782 (=> (not res!648673) (not e!914583))))

(declare-fun size!12201 (List!14934) Int)

(assert (=> b!1432782 (= res!648673 (= (size!12201 lt!487132) (+ (size!12201 (printList!700 Lexer!2270 lt!486789)) (size!12201 (printList!700 Lexer!2270 lt!486788)))))))

(declare-fun b!1432781 () Bool)

(assert (=> b!1432781 (= e!914582 (Cons!14868 (h!20269 (printList!700 Lexer!2270 lt!486789)) (++!3969 (t!127153 (printList!700 Lexer!2270 lt!486789)) (printList!700 Lexer!2270 lt!486788))))))

(assert (= (and d!412310 c!235498) b!1432780))

(assert (= (and d!412310 (not c!235498)) b!1432781))

(assert (= (and d!412310 res!648674) b!1432782))

(assert (= (and b!1432782 res!648673) b!1432783))

(declare-fun m!1633159 () Bool)

(assert (=> d!412310 m!1633159))

(assert (=> d!412310 m!1632621))

(declare-fun m!1633161 () Bool)

(assert (=> d!412310 m!1633161))

(assert (=> d!412310 m!1632609))

(declare-fun m!1633163 () Bool)

(assert (=> d!412310 m!1633163))

(declare-fun m!1633165 () Bool)

(assert (=> b!1432782 m!1633165))

(assert (=> b!1432782 m!1632621))

(declare-fun m!1633167 () Bool)

(assert (=> b!1432782 m!1633167))

(assert (=> b!1432782 m!1632609))

(declare-fun m!1633169 () Bool)

(assert (=> b!1432782 m!1633169))

(assert (=> b!1432781 m!1632609))

(declare-fun m!1633171 () Bool)

(assert (=> b!1432781 m!1633171))

(assert (=> b!1432503 d!412310))

(declare-fun d!412318 () Bool)

(declare-fun e!914597 () Bool)

(assert (=> d!412318 e!914597))

(declare-fun res!648689 () Bool)

(assert (=> d!412318 (=> (not res!648689) (not e!914597))))

(declare-fun seqFromList!1689 (List!14936) BalanceConc!10026)

(assert (=> d!412318 (= res!648689 (= (list!5905 (_1!7932 (lex!1037 Lexer!2270 (rules!11341 thiss!10022) (print!1051 Lexer!2270 (seqFromList!1689 (list!5905 lt!486781)))))) (list!5905 lt!486781)))))

(declare-fun lt!487210 () Unit!22424)

(declare-fun e!914596 () Unit!22424)

(assert (=> d!412318 (= lt!487210 e!914596)))

(declare-fun c!235501 () Bool)

(assert (=> d!412318 (= c!235501 (or (is-Nil!14870 (list!5905 lt!486781)) (is-Nil!14870 (t!127155 (list!5905 lt!486781)))))))

(assert (=> d!412318 (not (isEmpty!9224 (rules!11341 thiss!10022)))))

(assert (=> d!412318 (= (theoremInvertabilityWhenTokenListSeparable!62 Lexer!2270 (rules!11341 thiss!10022) (list!5905 lt!486781)) lt!487210)))

(declare-fun b!1432802 () Bool)

(declare-fun Unit!22435 () Unit!22424)

(assert (=> b!1432802 (= e!914596 Unit!22435)))

(declare-fun b!1432803 () Bool)

(declare-fun Unit!22436 () Unit!22424)

(assert (=> b!1432803 (= e!914596 Unit!22436)))

(declare-fun lt!487220 () BalanceConc!10024)

(assert (=> b!1432803 (= lt!487220 (print!1051 Lexer!2270 (seqFromList!1689 (list!5905 lt!486781))))))

(declare-fun lt!487211 () BalanceConc!10024)

(assert (=> b!1432803 (= lt!487211 (print!1051 Lexer!2270 (seqFromList!1689 (t!127155 (list!5905 lt!486781)))))))

(declare-fun lt!487208 () tuple2!14092)

(assert (=> b!1432803 (= lt!487208 (lex!1037 Lexer!2270 (rules!11341 thiss!10022) lt!487211))))

(declare-fun lt!487203 () List!14934)

(assert (=> b!1432803 (= lt!487203 (list!5907 (charsOf!1508 (h!20271 (list!5905 lt!486781)))))))

(declare-fun lt!487226 () List!14934)

(assert (=> b!1432803 (= lt!487226 (list!5907 lt!487211))))

(declare-fun lt!487217 () Unit!22424)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!751 (List!14934 List!14934) Unit!22424)

(assert (=> b!1432803 (= lt!487217 (lemmaConcatTwoListThenFirstIsPrefix!751 lt!487203 lt!487226))))

(declare-fun isPrefix!1186 (List!14934 List!14934) Bool)

(assert (=> b!1432803 (isPrefix!1186 lt!487203 (++!3969 lt!487203 lt!487226))))

(declare-fun lt!487209 () Unit!22424)

(assert (=> b!1432803 (= lt!487209 lt!487217)))

(declare-fun lt!487216 () Unit!22424)

(assert (=> b!1432803 (= lt!487216 (theoremInvertabilityWhenTokenListSeparable!62 Lexer!2270 (rules!11341 thiss!10022) (t!127155 (list!5905 lt!486781))))))

(declare-fun lt!487221 () Unit!22424)

(declare-fun seqFromListBHdTlConstructive!80 (Token!4878 List!14936 BalanceConc!10026) Unit!22424)

(assert (=> b!1432803 (= lt!487221 (seqFromListBHdTlConstructive!80 (h!20271 (t!127155 (list!5905 lt!486781))) (t!127155 (t!127155 (list!5905 lt!486781))) (_1!7932 lt!487208)))))

(declare-fun prepend!400 (BalanceConc!10026 Token!4878) BalanceConc!10026)

(assert (=> b!1432803 (= (list!5905 (_1!7932 lt!487208)) (list!5905 (prepend!400 (seqFromList!1689 (t!127155 (t!127155 (list!5905 lt!486781)))) (h!20271 (t!127155 (list!5905 lt!486781))))))))

(declare-fun lt!487222 () Unit!22424)

(assert (=> b!1432803 (= lt!487222 lt!487221)))

(declare-datatypes ((tuple2!14094 0))(
  ( (tuple2!14095 (_1!7933 Token!4878) (_2!7933 List!14934)) )
))
(declare-datatypes ((Option!2834 0))(
  ( (None!2833) (Some!2833 (v!22319 tuple2!14094)) )
))
(declare-fun lt!487213 () Option!2834)

(declare-fun maxPrefix!1176 (LexerInterface!2272 List!14937 List!14934) Option!2834)

(assert (=> b!1432803 (= lt!487213 (maxPrefix!1176 Lexer!2270 (rules!11341 thiss!10022) (list!5907 lt!487220)))))

(declare-fun singletonSeq!1212 (Token!4878) BalanceConc!10026)

(assert (=> b!1432803 (= (print!1051 Lexer!2270 (singletonSeq!1212 (h!20271 (list!5905 lt!486781)))) (printTailRec!672 Lexer!2270 (singletonSeq!1212 (h!20271 (list!5905 lt!486781))) 0 (BalanceConc!10025 Empty!5042)))))

(declare-fun lt!487224 () Unit!22424)

(declare-fun Unit!22437 () Unit!22424)

(assert (=> b!1432803 (= lt!487224 Unit!22437)))

(declare-fun lt!487205 () Unit!22424)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!224 (LexerInterface!2272 List!14937 List!14934 List!14934) Unit!22424)

(assert (=> b!1432803 (= lt!487205 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!224 Lexer!2270 (rules!11341 thiss!10022) (list!5907 (charsOf!1508 (h!20271 (list!5905 lt!486781)))) (list!5907 lt!487211)))))

(assert (=> b!1432803 (= (list!5907 (charsOf!1508 (h!20271 (list!5905 lt!486781)))) (originalCharacters!3470 (h!20271 (list!5905 lt!486781))))))

(declare-fun lt!487225 () Unit!22424)

(declare-fun Unit!22438 () Unit!22424)

(assert (=> b!1432803 (= lt!487225 Unit!22438)))

(declare-fun singletonSeq!1213 (C!8022) BalanceConc!10024)

(declare-fun apply!3799 (BalanceConc!10024 Int) C!8022)

(declare-fun head!2871 (List!14934) C!8022)

(assert (=> b!1432803 (= (list!5907 (singletonSeq!1213 (apply!3799 (charsOf!1508 (h!20271 (t!127155 (list!5905 lt!486781)))) 0))) (Cons!14868 (head!2871 (originalCharacters!3470 (h!20271 (t!127155 (list!5905 lt!486781))))) Nil!14868))))

(declare-fun lt!487223 () Unit!22424)

(declare-fun Unit!22439 () Unit!22424)

(assert (=> b!1432803 (= lt!487223 Unit!22439)))

(assert (=> b!1432803 (= (list!5907 (singletonSeq!1213 (apply!3799 (charsOf!1508 (h!20271 (t!127155 (list!5905 lt!486781)))) 0))) (Cons!14868 (head!2871 (list!5907 lt!487211)) Nil!14868))))

(declare-fun lt!487219 () Unit!22424)

(declare-fun Unit!22440 () Unit!22424)

(assert (=> b!1432803 (= lt!487219 Unit!22440)))

(declare-fun head!2872 (BalanceConc!10024) C!8022)

(assert (=> b!1432803 (= (list!5907 (singletonSeq!1213 (apply!3799 (charsOf!1508 (h!20271 (t!127155 (list!5905 lt!486781)))) 0))) (Cons!14868 (head!2872 lt!487211) Nil!14868))))

(declare-fun lt!487218 () Unit!22424)

(declare-fun Unit!22441 () Unit!22424)

(assert (=> b!1432803 (= lt!487218 Unit!22441)))

(declare-fun isDefined!2295 (Option!2834) Bool)

(assert (=> b!1432803 (isDefined!2295 (maxPrefix!1176 Lexer!2270 (rules!11341 thiss!10022) (originalCharacters!3470 (h!20271 (list!5905 lt!486781)))))))

(declare-fun lt!487207 () Unit!22424)

(declare-fun Unit!22442 () Unit!22424)

(assert (=> b!1432803 (= lt!487207 Unit!22442)))

(assert (=> b!1432803 (isDefined!2295 (maxPrefix!1176 Lexer!2270 (rules!11341 thiss!10022) (list!5907 (charsOf!1508 (h!20271 (list!5905 lt!486781))))))))

(declare-fun lt!487214 () Unit!22424)

(declare-fun Unit!22443 () Unit!22424)

(assert (=> b!1432803 (= lt!487214 Unit!22443)))

(declare-fun lt!487212 () Unit!22424)

(declare-fun Unit!22444 () Unit!22424)

(assert (=> b!1432803 (= lt!487212 Unit!22444)))

(declare-fun get!4547 (Option!2834) tuple2!14094)

(assert (=> b!1432803 (= (_1!7933 (get!4547 (maxPrefix!1176 Lexer!2270 (rules!11341 thiss!10022) (list!5907 (charsOf!1508 (h!20271 (list!5905 lt!486781))))))) (h!20271 (list!5905 lt!486781)))))

(declare-fun lt!487228 () Unit!22424)

(declare-fun Unit!22445 () Unit!22424)

(assert (=> b!1432803 (= lt!487228 Unit!22445)))

(assert (=> b!1432803 (isEmpty!9225 (_2!7933 (get!4547 (maxPrefix!1176 Lexer!2270 (rules!11341 thiss!10022) (list!5907 (charsOf!1508 (h!20271 (list!5905 lt!486781))))))))))

(declare-fun lt!487204 () Unit!22424)

(declare-fun Unit!22446 () Unit!22424)

(assert (=> b!1432803 (= lt!487204 Unit!22446)))

(declare-fun matchR!1812 (Regex!3922 List!14934) Bool)

(assert (=> b!1432803 (matchR!1812 (regex!2608 (rule!4371 (h!20271 (list!5905 lt!486781)))) (list!5907 (charsOf!1508 (h!20271 (list!5905 lt!486781)))))))

(declare-fun lt!487206 () Unit!22424)

(declare-fun Unit!22447 () Unit!22424)

(assert (=> b!1432803 (= lt!487206 Unit!22447)))

(assert (=> b!1432803 (= (rule!4371 (h!20271 (list!5905 lt!486781))) (rule!4371 (h!20271 (list!5905 lt!486781))))))

(declare-fun lt!487227 () Unit!22424)

(declare-fun Unit!22448 () Unit!22424)

(assert (=> b!1432803 (= lt!487227 Unit!22448)))

(declare-fun lt!487215 () Unit!22424)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!22 (LexerInterface!2272 List!14937 Token!4878 Rule!5016 List!14934) Unit!22424)

(assert (=> b!1432803 (= lt!487215 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!22 Lexer!2270 (rules!11341 thiss!10022) (h!20271 (list!5905 lt!486781)) (rule!4371 (h!20271 (list!5905 lt!486781))) (list!5907 lt!487211)))))

(declare-fun b!1432804 () Bool)

(declare-fun isEmpty!9226 (BalanceConc!10024) Bool)

(assert (=> b!1432804 (= e!914597 (isEmpty!9226 (_2!7932 (lex!1037 Lexer!2270 (rules!11341 thiss!10022) (print!1051 Lexer!2270 (seqFromList!1689 (list!5905 lt!486781)))))))))

(assert (= (and d!412318 c!235501) b!1432802))

(assert (= (and d!412318 (not c!235501)) b!1432803))

(assert (= (and d!412318 res!648689) b!1432804))

(declare-fun m!1633237 () Bool)

(assert (=> d!412318 m!1633237))

(declare-fun m!1633239 () Bool)

(assert (=> d!412318 m!1633239))

(assert (=> d!412318 m!1632771))

(assert (=> d!412318 m!1632625))

(assert (=> d!412318 m!1633237))

(assert (=> d!412318 m!1633239))

(declare-fun m!1633241 () Bool)

(assert (=> d!412318 m!1633241))

(declare-fun m!1633243 () Bool)

(assert (=> d!412318 m!1633243))

(declare-fun m!1633245 () Bool)

(assert (=> b!1432803 m!1633245))

(declare-fun m!1633247 () Bool)

(assert (=> b!1432803 m!1633247))

(declare-fun m!1633249 () Bool)

(assert (=> b!1432803 m!1633249))

(declare-fun m!1633251 () Bool)

(assert (=> b!1432803 m!1633251))

(assert (=> b!1432803 m!1633237))

(assert (=> b!1432803 m!1633239))

(declare-fun m!1633253 () Bool)

(assert (=> b!1432803 m!1633253))

(declare-fun m!1633255 () Bool)

(assert (=> b!1432803 m!1633255))

(declare-fun m!1633257 () Bool)

(assert (=> b!1432803 m!1633257))

(declare-fun m!1633259 () Bool)

(assert (=> b!1432803 m!1633259))

(declare-fun m!1633261 () Bool)

(assert (=> b!1432803 m!1633261))

(assert (=> b!1432803 m!1632625))

(assert (=> b!1432803 m!1633237))

(declare-fun m!1633263 () Bool)

(assert (=> b!1432803 m!1633263))

(declare-fun m!1633265 () Bool)

(assert (=> b!1432803 m!1633265))

(declare-fun m!1633267 () Bool)

(assert (=> b!1432803 m!1633267))

(declare-fun m!1633269 () Bool)

(assert (=> b!1432803 m!1633269))

(declare-fun m!1633271 () Bool)

(assert (=> b!1432803 m!1633271))

(declare-fun m!1633273 () Bool)

(assert (=> b!1432803 m!1633273))

(declare-fun m!1633275 () Bool)

(assert (=> b!1432803 m!1633275))

(declare-fun m!1633277 () Bool)

(assert (=> b!1432803 m!1633277))

(declare-fun m!1633279 () Bool)

(assert (=> b!1432803 m!1633279))

(declare-fun m!1633281 () Bool)

(assert (=> b!1432803 m!1633281))

(declare-fun m!1633283 () Bool)

(assert (=> b!1432803 m!1633283))

(assert (=> b!1432803 m!1633275))

(declare-fun m!1633285 () Bool)

(assert (=> b!1432803 m!1633285))

(assert (=> b!1432803 m!1633283))

(declare-fun m!1633287 () Bool)

(assert (=> b!1432803 m!1633287))

(declare-fun m!1633289 () Bool)

(assert (=> b!1432803 m!1633289))

(declare-fun m!1633291 () Bool)

(assert (=> b!1432803 m!1633291))

(assert (=> b!1432803 m!1633267))

(declare-fun m!1633293 () Bool)

(assert (=> b!1432803 m!1633293))

(declare-fun m!1633295 () Bool)

(assert (=> b!1432803 m!1633295))

(declare-fun m!1633297 () Bool)

(assert (=> b!1432803 m!1633297))

(assert (=> b!1432803 m!1633297))

(declare-fun m!1633299 () Bool)

(assert (=> b!1432803 m!1633299))

(declare-fun m!1633301 () Bool)

(assert (=> b!1432803 m!1633301))

(declare-fun m!1633303 () Bool)

(assert (=> b!1432803 m!1633303))

(declare-fun m!1633305 () Bool)

(assert (=> b!1432803 m!1633305))

(assert (=> b!1432803 m!1633253))

(assert (=> b!1432803 m!1633297))

(declare-fun m!1633307 () Bool)

(assert (=> b!1432803 m!1633307))

(assert (=> b!1432803 m!1633277))

(declare-fun m!1633309 () Bool)

(assert (=> b!1432803 m!1633309))

(assert (=> b!1432803 m!1633257))

(assert (=> b!1432803 m!1633253))

(assert (=> b!1432803 m!1633249))

(assert (=> b!1432803 m!1633303))

(assert (=> b!1432803 m!1633297))

(declare-fun m!1633311 () Bool)

(assert (=> b!1432803 m!1633311))

(assert (=> b!1432803 m!1633285))

(assert (=> b!1432803 m!1633253))

(assert (=> b!1432803 m!1633271))

(assert (=> b!1432803 m!1633265))

(assert (=> b!1432803 m!1633249))

(declare-fun m!1633313 () Bool)

(assert (=> b!1432803 m!1633313))

(assert (=> b!1432803 m!1633245))

(assert (=> b!1432803 m!1633283))

(declare-fun m!1633315 () Bool)

(assert (=> b!1432803 m!1633315))

(assert (=> b!1432803 m!1633279))

(assert (=> b!1432804 m!1632625))

(assert (=> b!1432804 m!1633237))

(assert (=> b!1432804 m!1633237))

(assert (=> b!1432804 m!1633239))

(assert (=> b!1432804 m!1633239))

(assert (=> b!1432804 m!1633241))

(declare-fun m!1633317 () Bool)

(assert (=> b!1432804 m!1633317))

(assert (=> b!1432503 d!412318))

(declare-fun d!412338 () Bool)

(declare-fun e!914599 () Bool)

(assert (=> d!412338 e!914599))

(declare-fun res!648690 () Bool)

(assert (=> d!412338 (=> (not res!648690) (not e!914599))))

(assert (=> d!412338 (= res!648690 (= (list!5905 (_1!7932 (lex!1037 Lexer!2270 (rules!11341 thiss!10022) (print!1051 Lexer!2270 (seqFromList!1689 lt!486789))))) lt!486789))))

(declare-fun lt!487236 () Unit!22424)

(declare-fun e!914598 () Unit!22424)

(assert (=> d!412338 (= lt!487236 e!914598)))

(declare-fun c!235502 () Bool)

(assert (=> d!412338 (= c!235502 (or (is-Nil!14870 lt!486789) (is-Nil!14870 (t!127155 lt!486789))))))

(assert (=> d!412338 (not (isEmpty!9224 (rules!11341 thiss!10022)))))

(assert (=> d!412338 (= (theoremInvertabilityWhenTokenListSeparable!62 Lexer!2270 (rules!11341 thiss!10022) lt!486789) lt!487236)))

(declare-fun b!1432805 () Bool)

(declare-fun Unit!22451 () Unit!22424)

(assert (=> b!1432805 (= e!914598 Unit!22451)))

(declare-fun b!1432806 () Bool)

(declare-fun Unit!22452 () Unit!22424)

(assert (=> b!1432806 (= e!914598 Unit!22452)))

(declare-fun lt!487246 () BalanceConc!10024)

(assert (=> b!1432806 (= lt!487246 (print!1051 Lexer!2270 (seqFromList!1689 lt!486789)))))

(declare-fun lt!487237 () BalanceConc!10024)

(assert (=> b!1432806 (= lt!487237 (print!1051 Lexer!2270 (seqFromList!1689 (t!127155 lt!486789))))))

(declare-fun lt!487234 () tuple2!14092)

(assert (=> b!1432806 (= lt!487234 (lex!1037 Lexer!2270 (rules!11341 thiss!10022) lt!487237))))

(declare-fun lt!487229 () List!14934)

(assert (=> b!1432806 (= lt!487229 (list!5907 (charsOf!1508 (h!20271 lt!486789))))))

(declare-fun lt!487252 () List!14934)

(assert (=> b!1432806 (= lt!487252 (list!5907 lt!487237))))

(declare-fun lt!487243 () Unit!22424)

(assert (=> b!1432806 (= lt!487243 (lemmaConcatTwoListThenFirstIsPrefix!751 lt!487229 lt!487252))))

(assert (=> b!1432806 (isPrefix!1186 lt!487229 (++!3969 lt!487229 lt!487252))))

(declare-fun lt!487235 () Unit!22424)

(assert (=> b!1432806 (= lt!487235 lt!487243)))

(declare-fun lt!487242 () Unit!22424)

(assert (=> b!1432806 (= lt!487242 (theoremInvertabilityWhenTokenListSeparable!62 Lexer!2270 (rules!11341 thiss!10022) (t!127155 lt!486789)))))

(declare-fun lt!487247 () Unit!22424)

(assert (=> b!1432806 (= lt!487247 (seqFromListBHdTlConstructive!80 (h!20271 (t!127155 lt!486789)) (t!127155 (t!127155 lt!486789)) (_1!7932 lt!487234)))))

(assert (=> b!1432806 (= (list!5905 (_1!7932 lt!487234)) (list!5905 (prepend!400 (seqFromList!1689 (t!127155 (t!127155 lt!486789))) (h!20271 (t!127155 lt!486789)))))))

(declare-fun lt!487248 () Unit!22424)

(assert (=> b!1432806 (= lt!487248 lt!487247)))

(declare-fun lt!487239 () Option!2834)

(assert (=> b!1432806 (= lt!487239 (maxPrefix!1176 Lexer!2270 (rules!11341 thiss!10022) (list!5907 lt!487246)))))

(assert (=> b!1432806 (= (print!1051 Lexer!2270 (singletonSeq!1212 (h!20271 lt!486789))) (printTailRec!672 Lexer!2270 (singletonSeq!1212 (h!20271 lt!486789)) 0 (BalanceConc!10025 Empty!5042)))))

(declare-fun lt!487250 () Unit!22424)

(declare-fun Unit!22453 () Unit!22424)

(assert (=> b!1432806 (= lt!487250 Unit!22453)))

(declare-fun lt!487231 () Unit!22424)

(assert (=> b!1432806 (= lt!487231 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!224 Lexer!2270 (rules!11341 thiss!10022) (list!5907 (charsOf!1508 (h!20271 lt!486789))) (list!5907 lt!487237)))))

(assert (=> b!1432806 (= (list!5907 (charsOf!1508 (h!20271 lt!486789))) (originalCharacters!3470 (h!20271 lt!486789)))))

(declare-fun lt!487251 () Unit!22424)

(declare-fun Unit!22454 () Unit!22424)

(assert (=> b!1432806 (= lt!487251 Unit!22454)))

(assert (=> b!1432806 (= (list!5907 (singletonSeq!1213 (apply!3799 (charsOf!1508 (h!20271 (t!127155 lt!486789))) 0))) (Cons!14868 (head!2871 (originalCharacters!3470 (h!20271 (t!127155 lt!486789)))) Nil!14868))))

(declare-fun lt!487249 () Unit!22424)

(declare-fun Unit!22455 () Unit!22424)

(assert (=> b!1432806 (= lt!487249 Unit!22455)))

(assert (=> b!1432806 (= (list!5907 (singletonSeq!1213 (apply!3799 (charsOf!1508 (h!20271 (t!127155 lt!486789))) 0))) (Cons!14868 (head!2871 (list!5907 lt!487237)) Nil!14868))))

(declare-fun lt!487245 () Unit!22424)

(declare-fun Unit!22456 () Unit!22424)

(assert (=> b!1432806 (= lt!487245 Unit!22456)))

(assert (=> b!1432806 (= (list!5907 (singletonSeq!1213 (apply!3799 (charsOf!1508 (h!20271 (t!127155 lt!486789))) 0))) (Cons!14868 (head!2872 lt!487237) Nil!14868))))

(declare-fun lt!487244 () Unit!22424)

(declare-fun Unit!22457 () Unit!22424)

(assert (=> b!1432806 (= lt!487244 Unit!22457)))

(assert (=> b!1432806 (isDefined!2295 (maxPrefix!1176 Lexer!2270 (rules!11341 thiss!10022) (originalCharacters!3470 (h!20271 lt!486789))))))

(declare-fun lt!487233 () Unit!22424)

(declare-fun Unit!22458 () Unit!22424)

(assert (=> b!1432806 (= lt!487233 Unit!22458)))

(assert (=> b!1432806 (isDefined!2295 (maxPrefix!1176 Lexer!2270 (rules!11341 thiss!10022) (list!5907 (charsOf!1508 (h!20271 lt!486789)))))))

(declare-fun lt!487240 () Unit!22424)

(declare-fun Unit!22459 () Unit!22424)

(assert (=> b!1432806 (= lt!487240 Unit!22459)))

(declare-fun lt!487238 () Unit!22424)

(declare-fun Unit!22460 () Unit!22424)

(assert (=> b!1432806 (= lt!487238 Unit!22460)))

(assert (=> b!1432806 (= (_1!7933 (get!4547 (maxPrefix!1176 Lexer!2270 (rules!11341 thiss!10022) (list!5907 (charsOf!1508 (h!20271 lt!486789)))))) (h!20271 lt!486789))))

(declare-fun lt!487254 () Unit!22424)

(declare-fun Unit!22461 () Unit!22424)

(assert (=> b!1432806 (= lt!487254 Unit!22461)))

(assert (=> b!1432806 (isEmpty!9225 (_2!7933 (get!4547 (maxPrefix!1176 Lexer!2270 (rules!11341 thiss!10022) (list!5907 (charsOf!1508 (h!20271 lt!486789)))))))))

(declare-fun lt!487230 () Unit!22424)

(declare-fun Unit!22462 () Unit!22424)

(assert (=> b!1432806 (= lt!487230 Unit!22462)))

(assert (=> b!1432806 (matchR!1812 (regex!2608 (rule!4371 (h!20271 lt!486789))) (list!5907 (charsOf!1508 (h!20271 lt!486789))))))

(declare-fun lt!487232 () Unit!22424)

(declare-fun Unit!22463 () Unit!22424)

(assert (=> b!1432806 (= lt!487232 Unit!22463)))

(assert (=> b!1432806 (= (rule!4371 (h!20271 lt!486789)) (rule!4371 (h!20271 lt!486789)))))

(declare-fun lt!487253 () Unit!22424)

(declare-fun Unit!22464 () Unit!22424)

(assert (=> b!1432806 (= lt!487253 Unit!22464)))

(declare-fun lt!487241 () Unit!22424)

(assert (=> b!1432806 (= lt!487241 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!22 Lexer!2270 (rules!11341 thiss!10022) (h!20271 lt!486789) (rule!4371 (h!20271 lt!486789)) (list!5907 lt!487237)))))

(declare-fun b!1432807 () Bool)

(assert (=> b!1432807 (= e!914599 (isEmpty!9226 (_2!7932 (lex!1037 Lexer!2270 (rules!11341 thiss!10022) (print!1051 Lexer!2270 (seqFromList!1689 lt!486789))))))))

(assert (= (and d!412338 c!235502) b!1432805))

(assert (= (and d!412338 (not c!235502)) b!1432806))

(assert (= (and d!412338 res!648690) b!1432807))

(declare-fun m!1633319 () Bool)

(assert (=> d!412338 m!1633319))

(declare-fun m!1633321 () Bool)

(assert (=> d!412338 m!1633321))

(assert (=> d!412338 m!1632771))

(assert (=> d!412338 m!1633319))

(assert (=> d!412338 m!1633321))

(declare-fun m!1633323 () Bool)

(assert (=> d!412338 m!1633323))

(declare-fun m!1633325 () Bool)

(assert (=> d!412338 m!1633325))

(declare-fun m!1633327 () Bool)

(assert (=> b!1432806 m!1633327))

(declare-fun m!1633329 () Bool)

(assert (=> b!1432806 m!1633329))

(declare-fun m!1633331 () Bool)

(assert (=> b!1432806 m!1633331))

(declare-fun m!1633333 () Bool)

(assert (=> b!1432806 m!1633333))

(assert (=> b!1432806 m!1633319))

(assert (=> b!1432806 m!1633321))

(assert (=> b!1432806 m!1633055))

(declare-fun m!1633335 () Bool)

(assert (=> b!1432806 m!1633335))

(declare-fun m!1633337 () Bool)

(assert (=> b!1432806 m!1633337))

(declare-fun m!1633339 () Bool)

(assert (=> b!1432806 m!1633339))

(declare-fun m!1633341 () Bool)

(assert (=> b!1432806 m!1633341))

(assert (=> b!1432806 m!1633319))

(declare-fun m!1633343 () Bool)

(assert (=> b!1432806 m!1633343))

(declare-fun m!1633345 () Bool)

(assert (=> b!1432806 m!1633345))

(declare-fun m!1633347 () Bool)

(assert (=> b!1432806 m!1633347))

(declare-fun m!1633349 () Bool)

(assert (=> b!1432806 m!1633349))

(declare-fun m!1633351 () Bool)

(assert (=> b!1432806 m!1633351))

(declare-fun m!1633353 () Bool)

(assert (=> b!1432806 m!1633353))

(declare-fun m!1633355 () Bool)

(assert (=> b!1432806 m!1633355))

(declare-fun m!1633357 () Bool)

(assert (=> b!1432806 m!1633357))

(declare-fun m!1633359 () Bool)

(assert (=> b!1432806 m!1633359))

(declare-fun m!1633361 () Bool)

(assert (=> b!1432806 m!1633361))

(declare-fun m!1633363 () Bool)

(assert (=> b!1432806 m!1633363))

(assert (=> b!1432806 m!1633355))

(assert (=> b!1432806 m!1633053))

(assert (=> b!1432806 m!1633363))

(declare-fun m!1633365 () Bool)

(assert (=> b!1432806 m!1633365))

(declare-fun m!1633367 () Bool)

(assert (=> b!1432806 m!1633367))

(declare-fun m!1633369 () Bool)

(assert (=> b!1432806 m!1633369))

(assert (=> b!1432806 m!1633347))

(declare-fun m!1633371 () Bool)

(assert (=> b!1432806 m!1633371))

(declare-fun m!1633373 () Bool)

(assert (=> b!1432806 m!1633373))

(declare-fun m!1633375 () Bool)

(assert (=> b!1432806 m!1633375))

(assert (=> b!1432806 m!1633375))

(declare-fun m!1633377 () Bool)

(assert (=> b!1432806 m!1633377))

(declare-fun m!1633379 () Bool)

(assert (=> b!1432806 m!1633379))

(declare-fun m!1633381 () Bool)

(assert (=> b!1432806 m!1633381))

(declare-fun m!1633383 () Bool)

(assert (=> b!1432806 m!1633383))

(assert (=> b!1432806 m!1633055))

(assert (=> b!1432806 m!1633375))

(declare-fun m!1633385 () Bool)

(assert (=> b!1432806 m!1633385))

(assert (=> b!1432806 m!1633357))

(declare-fun m!1633387 () Bool)

(assert (=> b!1432806 m!1633387))

(assert (=> b!1432806 m!1633337))

(assert (=> b!1432806 m!1633055))

(assert (=> b!1432806 m!1633331))

(assert (=> b!1432806 m!1633381))

(assert (=> b!1432806 m!1633375))

(declare-fun m!1633389 () Bool)

(assert (=> b!1432806 m!1633389))

(assert (=> b!1432806 m!1633053))

(assert (=> b!1432806 m!1633055))

(assert (=> b!1432806 m!1633351))

(assert (=> b!1432806 m!1633345))

(assert (=> b!1432806 m!1633331))

(declare-fun m!1633391 () Bool)

(assert (=> b!1432806 m!1633391))

(assert (=> b!1432806 m!1633327))

(assert (=> b!1432806 m!1633363))

(declare-fun m!1633393 () Bool)

(assert (=> b!1432806 m!1633393))

(assert (=> b!1432806 m!1633359))

(assert (=> b!1432807 m!1633319))

(assert (=> b!1432807 m!1633319))

(assert (=> b!1432807 m!1633321))

(assert (=> b!1432807 m!1633321))

(assert (=> b!1432807 m!1633323))

(declare-fun m!1633395 () Bool)

(assert (=> b!1432807 m!1633395))

(assert (=> b!1432503 d!412338))

(declare-fun d!412340 () Bool)

(declare-fun e!914601 () Bool)

(assert (=> d!412340 e!914601))

(declare-fun res!648691 () Bool)

(assert (=> d!412340 (=> (not res!648691) (not e!914601))))

(assert (=> d!412340 (= res!648691 (= (list!5905 (_1!7932 (lex!1037 Lexer!2270 (rules!11341 other!32) (print!1051 Lexer!2270 (seqFromList!1689 lt!486788))))) lt!486788))))

(declare-fun lt!487262 () Unit!22424)

(declare-fun e!914600 () Unit!22424)

(assert (=> d!412340 (= lt!487262 e!914600)))

(declare-fun c!235503 () Bool)

(assert (=> d!412340 (= c!235503 (or (is-Nil!14870 lt!486788) (is-Nil!14870 (t!127155 lt!486788))))))

(assert (=> d!412340 (not (isEmpty!9224 (rules!11341 other!32)))))

(assert (=> d!412340 (= (theoremInvertabilityWhenTokenListSeparable!62 Lexer!2270 (rules!11341 other!32) lt!486788) lt!487262)))

(declare-fun b!1432808 () Bool)

(declare-fun Unit!22465 () Unit!22424)

(assert (=> b!1432808 (= e!914600 Unit!22465)))

(declare-fun b!1432809 () Bool)

(declare-fun Unit!22466 () Unit!22424)

(assert (=> b!1432809 (= e!914600 Unit!22466)))

(declare-fun lt!487272 () BalanceConc!10024)

(assert (=> b!1432809 (= lt!487272 (print!1051 Lexer!2270 (seqFromList!1689 lt!486788)))))

(declare-fun lt!487263 () BalanceConc!10024)

(assert (=> b!1432809 (= lt!487263 (print!1051 Lexer!2270 (seqFromList!1689 (t!127155 lt!486788))))))

(declare-fun lt!487260 () tuple2!14092)

(assert (=> b!1432809 (= lt!487260 (lex!1037 Lexer!2270 (rules!11341 other!32) lt!487263))))

(declare-fun lt!487255 () List!14934)

(assert (=> b!1432809 (= lt!487255 (list!5907 (charsOf!1508 (h!20271 lt!486788))))))

(declare-fun lt!487278 () List!14934)

(assert (=> b!1432809 (= lt!487278 (list!5907 lt!487263))))

(declare-fun lt!487269 () Unit!22424)

(assert (=> b!1432809 (= lt!487269 (lemmaConcatTwoListThenFirstIsPrefix!751 lt!487255 lt!487278))))

(assert (=> b!1432809 (isPrefix!1186 lt!487255 (++!3969 lt!487255 lt!487278))))

(declare-fun lt!487261 () Unit!22424)

(assert (=> b!1432809 (= lt!487261 lt!487269)))

(declare-fun lt!487268 () Unit!22424)

(assert (=> b!1432809 (= lt!487268 (theoremInvertabilityWhenTokenListSeparable!62 Lexer!2270 (rules!11341 other!32) (t!127155 lt!486788)))))

(declare-fun lt!487273 () Unit!22424)

(assert (=> b!1432809 (= lt!487273 (seqFromListBHdTlConstructive!80 (h!20271 (t!127155 lt!486788)) (t!127155 (t!127155 lt!486788)) (_1!7932 lt!487260)))))

(assert (=> b!1432809 (= (list!5905 (_1!7932 lt!487260)) (list!5905 (prepend!400 (seqFromList!1689 (t!127155 (t!127155 lt!486788))) (h!20271 (t!127155 lt!486788)))))))

(declare-fun lt!487274 () Unit!22424)

(assert (=> b!1432809 (= lt!487274 lt!487273)))

(declare-fun lt!487265 () Option!2834)

(assert (=> b!1432809 (= lt!487265 (maxPrefix!1176 Lexer!2270 (rules!11341 other!32) (list!5907 lt!487272)))))

(assert (=> b!1432809 (= (print!1051 Lexer!2270 (singletonSeq!1212 (h!20271 lt!486788))) (printTailRec!672 Lexer!2270 (singletonSeq!1212 (h!20271 lt!486788)) 0 (BalanceConc!10025 Empty!5042)))))

(declare-fun lt!487276 () Unit!22424)

(declare-fun Unit!22468 () Unit!22424)

(assert (=> b!1432809 (= lt!487276 Unit!22468)))

(declare-fun lt!487257 () Unit!22424)

(assert (=> b!1432809 (= lt!487257 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!224 Lexer!2270 (rules!11341 other!32) (list!5907 (charsOf!1508 (h!20271 lt!486788))) (list!5907 lt!487263)))))

(assert (=> b!1432809 (= (list!5907 (charsOf!1508 (h!20271 lt!486788))) (originalCharacters!3470 (h!20271 lt!486788)))))

(declare-fun lt!487277 () Unit!22424)

(declare-fun Unit!22471 () Unit!22424)

(assert (=> b!1432809 (= lt!487277 Unit!22471)))

(assert (=> b!1432809 (= (list!5907 (singletonSeq!1213 (apply!3799 (charsOf!1508 (h!20271 (t!127155 lt!486788))) 0))) (Cons!14868 (head!2871 (originalCharacters!3470 (h!20271 (t!127155 lt!486788)))) Nil!14868))))

(declare-fun lt!487275 () Unit!22424)

(declare-fun Unit!22472 () Unit!22424)

(assert (=> b!1432809 (= lt!487275 Unit!22472)))

(assert (=> b!1432809 (= (list!5907 (singletonSeq!1213 (apply!3799 (charsOf!1508 (h!20271 (t!127155 lt!486788))) 0))) (Cons!14868 (head!2871 (list!5907 lt!487263)) Nil!14868))))

(declare-fun lt!487271 () Unit!22424)

(declare-fun Unit!22473 () Unit!22424)

(assert (=> b!1432809 (= lt!487271 Unit!22473)))

(assert (=> b!1432809 (= (list!5907 (singletonSeq!1213 (apply!3799 (charsOf!1508 (h!20271 (t!127155 lt!486788))) 0))) (Cons!14868 (head!2872 lt!487263) Nil!14868))))

(declare-fun lt!487270 () Unit!22424)

(declare-fun Unit!22474 () Unit!22424)

(assert (=> b!1432809 (= lt!487270 Unit!22474)))

(assert (=> b!1432809 (isDefined!2295 (maxPrefix!1176 Lexer!2270 (rules!11341 other!32) (originalCharacters!3470 (h!20271 lt!486788))))))

(declare-fun lt!487259 () Unit!22424)

(declare-fun Unit!22475 () Unit!22424)

(assert (=> b!1432809 (= lt!487259 Unit!22475)))

(assert (=> b!1432809 (isDefined!2295 (maxPrefix!1176 Lexer!2270 (rules!11341 other!32) (list!5907 (charsOf!1508 (h!20271 lt!486788)))))))

(declare-fun lt!487266 () Unit!22424)

(declare-fun Unit!22476 () Unit!22424)

(assert (=> b!1432809 (= lt!487266 Unit!22476)))

(declare-fun lt!487264 () Unit!22424)

(declare-fun Unit!22477 () Unit!22424)

(assert (=> b!1432809 (= lt!487264 Unit!22477)))

(assert (=> b!1432809 (= (_1!7933 (get!4547 (maxPrefix!1176 Lexer!2270 (rules!11341 other!32) (list!5907 (charsOf!1508 (h!20271 lt!486788)))))) (h!20271 lt!486788))))

(declare-fun lt!487280 () Unit!22424)

(declare-fun Unit!22478 () Unit!22424)

(assert (=> b!1432809 (= lt!487280 Unit!22478)))

(assert (=> b!1432809 (isEmpty!9225 (_2!7933 (get!4547 (maxPrefix!1176 Lexer!2270 (rules!11341 other!32) (list!5907 (charsOf!1508 (h!20271 lt!486788)))))))))

(declare-fun lt!487256 () Unit!22424)

(declare-fun Unit!22479 () Unit!22424)

(assert (=> b!1432809 (= lt!487256 Unit!22479)))

(assert (=> b!1432809 (matchR!1812 (regex!2608 (rule!4371 (h!20271 lt!486788))) (list!5907 (charsOf!1508 (h!20271 lt!486788))))))

(declare-fun lt!487258 () Unit!22424)

(declare-fun Unit!22480 () Unit!22424)

(assert (=> b!1432809 (= lt!487258 Unit!22480)))

(assert (=> b!1432809 (= (rule!4371 (h!20271 lt!486788)) (rule!4371 (h!20271 lt!486788)))))

(declare-fun lt!487279 () Unit!22424)

(declare-fun Unit!22481 () Unit!22424)

(assert (=> b!1432809 (= lt!487279 Unit!22481)))

(declare-fun lt!487267 () Unit!22424)

(assert (=> b!1432809 (= lt!487267 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!22 Lexer!2270 (rules!11341 other!32) (h!20271 lt!486788) (rule!4371 (h!20271 lt!486788)) (list!5907 lt!487263)))))

(declare-fun b!1432810 () Bool)

(assert (=> b!1432810 (= e!914601 (isEmpty!9226 (_2!7932 (lex!1037 Lexer!2270 (rules!11341 other!32) (print!1051 Lexer!2270 (seqFromList!1689 lt!486788))))))))

(assert (= (and d!412340 c!235503) b!1432808))

(assert (= (and d!412340 (not c!235503)) b!1432809))

(assert (= (and d!412340 res!648691) b!1432810))

(declare-fun m!1633397 () Bool)

(assert (=> d!412340 m!1633397))

(declare-fun m!1633399 () Bool)

(assert (=> d!412340 m!1633399))

(assert (=> d!412340 m!1633041))

(assert (=> d!412340 m!1633397))

(assert (=> d!412340 m!1633399))

(declare-fun m!1633401 () Bool)

(assert (=> d!412340 m!1633401))

(declare-fun m!1633403 () Bool)

(assert (=> d!412340 m!1633403))

(declare-fun m!1633405 () Bool)

(assert (=> b!1432809 m!1633405))

(declare-fun m!1633407 () Bool)

(assert (=> b!1432809 m!1633407))

(declare-fun m!1633409 () Bool)

(assert (=> b!1432809 m!1633409))

(declare-fun m!1633411 () Bool)

(assert (=> b!1432809 m!1633411))

(assert (=> b!1432809 m!1633397))

(assert (=> b!1432809 m!1633399))

(assert (=> b!1432809 m!1633075))

(declare-fun m!1633413 () Bool)

(assert (=> b!1432809 m!1633413))

(declare-fun m!1633415 () Bool)

(assert (=> b!1432809 m!1633415))

(declare-fun m!1633417 () Bool)

(assert (=> b!1432809 m!1633417))

(declare-fun m!1633419 () Bool)

(assert (=> b!1432809 m!1633419))

(assert (=> b!1432809 m!1633397))

(declare-fun m!1633421 () Bool)

(assert (=> b!1432809 m!1633421))

(declare-fun m!1633423 () Bool)

(assert (=> b!1432809 m!1633423))

(declare-fun m!1633425 () Bool)

(assert (=> b!1432809 m!1633425))

(declare-fun m!1633427 () Bool)

(assert (=> b!1432809 m!1633427))

(declare-fun m!1633429 () Bool)

(assert (=> b!1432809 m!1633429))

(declare-fun m!1633431 () Bool)

(assert (=> b!1432809 m!1633431))

(declare-fun m!1633433 () Bool)

(assert (=> b!1432809 m!1633433))

(declare-fun m!1633435 () Bool)

(assert (=> b!1432809 m!1633435))

(declare-fun m!1633437 () Bool)

(assert (=> b!1432809 m!1633437))

(declare-fun m!1633439 () Bool)

(assert (=> b!1432809 m!1633439))

(declare-fun m!1633441 () Bool)

(assert (=> b!1432809 m!1633441))

(assert (=> b!1432809 m!1633433))

(assert (=> b!1432809 m!1633073))

(assert (=> b!1432809 m!1633441))

(declare-fun m!1633443 () Bool)

(assert (=> b!1432809 m!1633443))

(declare-fun m!1633445 () Bool)

(assert (=> b!1432809 m!1633445))

(declare-fun m!1633447 () Bool)

(assert (=> b!1432809 m!1633447))

(assert (=> b!1432809 m!1633425))

(declare-fun m!1633449 () Bool)

(assert (=> b!1432809 m!1633449))

(declare-fun m!1633451 () Bool)

(assert (=> b!1432809 m!1633451))

(declare-fun m!1633453 () Bool)

(assert (=> b!1432809 m!1633453))

(assert (=> b!1432809 m!1633453))

(declare-fun m!1633455 () Bool)

(assert (=> b!1432809 m!1633455))

(declare-fun m!1633457 () Bool)

(assert (=> b!1432809 m!1633457))

(declare-fun m!1633459 () Bool)

(assert (=> b!1432809 m!1633459))

(declare-fun m!1633461 () Bool)

(assert (=> b!1432809 m!1633461))

(assert (=> b!1432809 m!1633075))

(assert (=> b!1432809 m!1633453))

(declare-fun m!1633463 () Bool)

(assert (=> b!1432809 m!1633463))

(assert (=> b!1432809 m!1633435))

(declare-fun m!1633465 () Bool)

(assert (=> b!1432809 m!1633465))

(assert (=> b!1432809 m!1633415))

(assert (=> b!1432809 m!1633075))

(assert (=> b!1432809 m!1633409))

(assert (=> b!1432809 m!1633459))

(assert (=> b!1432809 m!1633453))

(declare-fun m!1633467 () Bool)

(assert (=> b!1432809 m!1633467))

(assert (=> b!1432809 m!1633073))

(assert (=> b!1432809 m!1633075))

(assert (=> b!1432809 m!1633429))

(assert (=> b!1432809 m!1633423))

(assert (=> b!1432809 m!1633409))

(declare-fun m!1633469 () Bool)

(assert (=> b!1432809 m!1633469))

(assert (=> b!1432809 m!1633405))

(assert (=> b!1432809 m!1633441))

(declare-fun m!1633471 () Bool)

(assert (=> b!1432809 m!1633471))

(assert (=> b!1432809 m!1633437))

(assert (=> b!1432810 m!1633397))

(assert (=> b!1432810 m!1633397))

(assert (=> b!1432810 m!1633399))

(assert (=> b!1432810 m!1633399))

(assert (=> b!1432810 m!1633401))

(declare-fun m!1633473 () Bool)

(assert (=> b!1432810 m!1633473))

(assert (=> b!1432503 d!412340))

(declare-fun d!412342 () Bool)

(declare-fun lt!487283 () Token!4878)

(assert (=> d!412342 (= lt!487283 (head!2870 (list!5905 (tokens!1957 other!32))))))

(declare-fun head!2874 (Conc!5043) Token!4878)

(assert (=> d!412342 (= lt!487283 (head!2874 (c!235466 (tokens!1957 other!32))))))

(assert (=> d!412342 (not (isEmpty!9218 (tokens!1957 other!32)))))

(assert (=> d!412342 (= (head!2868 (tokens!1957 other!32)) lt!487283)))

(declare-fun bs!340881 () Bool)

(assert (= bs!340881 d!412342))

(assert (=> bs!340881 m!1632605))

(assert (=> bs!340881 m!1632605))

(declare-fun m!1633475 () Bool)

(assert (=> bs!340881 m!1633475))

(declare-fun m!1633477 () Bool)

(assert (=> bs!340881 m!1633477))

(assert (=> bs!340881 m!1632575))

(assert (=> b!1432493 d!412342))

(declare-fun d!412344 () Bool)

(assert (=> d!412344 (= (list!5905 (tokens!1957 thiss!10022)) (list!5908 (c!235466 (tokens!1957 thiss!10022))))))

(declare-fun bs!340882 () Bool)

(assert (= bs!340882 d!412344))

(declare-fun m!1633479 () Bool)

(assert (=> bs!340882 m!1633479))

(assert (=> b!1432493 d!412344))

(declare-fun d!412346 () Bool)

(declare-fun lt!487309 () Bool)

(declare-fun e!914612 () Bool)

(assert (=> d!412346 (= lt!487309 e!914612)))

(declare-fun res!648705 () Bool)

(assert (=> d!412346 (=> (not res!648705) (not e!914612))))

(assert (=> d!412346 (= res!648705 (= (list!5905 (_1!7932 (lex!1037 Lexer!2270 (rules!11341 thiss!10022) (print!1051 Lexer!2270 (singletonSeq!1212 lt!486782))))) (list!5905 (singletonSeq!1212 lt!486782))))))

(declare-fun e!914613 () Bool)

(assert (=> d!412346 (= lt!487309 e!914613)))

(declare-fun res!648704 () Bool)

(assert (=> d!412346 (=> (not res!648704) (not e!914613))))

(declare-fun lt!487310 () tuple2!14092)

(assert (=> d!412346 (= res!648704 (= (size!12199 (_1!7932 lt!487310)) 1))))

(assert (=> d!412346 (= lt!487310 (lex!1037 Lexer!2270 (rules!11341 thiss!10022) (print!1051 Lexer!2270 (singletonSeq!1212 lt!486782))))))

(assert (=> d!412346 (not (isEmpty!9224 (rules!11341 thiss!10022)))))

(assert (=> d!412346 (= (rulesProduceIndividualToken!1205 Lexer!2270 (rules!11341 thiss!10022) lt!486782) lt!487309)))

(declare-fun b!1432823 () Bool)

(declare-fun res!648706 () Bool)

(assert (=> b!1432823 (=> (not res!648706) (not e!914613))))

(assert (=> b!1432823 (= res!648706 (= (apply!3797 (_1!7932 lt!487310) 0) lt!486782))))

(declare-fun b!1432824 () Bool)

(assert (=> b!1432824 (= e!914613 (isEmpty!9226 (_2!7932 lt!487310)))))

(declare-fun b!1432825 () Bool)

(assert (=> b!1432825 (= e!914612 (isEmpty!9226 (_2!7932 (lex!1037 Lexer!2270 (rules!11341 thiss!10022) (print!1051 Lexer!2270 (singletonSeq!1212 lt!486782))))))))

(assert (= (and d!412346 res!648704) b!1432823))

(assert (= (and b!1432823 res!648706) b!1432824))

(assert (= (and d!412346 res!648705) b!1432825))

(declare-fun m!1633495 () Bool)

(assert (=> d!412346 m!1633495))

(declare-fun m!1633497 () Bool)

(assert (=> d!412346 m!1633497))

(declare-fun m!1633499 () Bool)

(assert (=> d!412346 m!1633499))

(declare-fun m!1633501 () Bool)

(assert (=> d!412346 m!1633501))

(assert (=> d!412346 m!1633495))

(assert (=> d!412346 m!1633499))

(assert (=> d!412346 m!1633495))

(declare-fun m!1633503 () Bool)

(assert (=> d!412346 m!1633503))

(declare-fun m!1633505 () Bool)

(assert (=> d!412346 m!1633505))

(assert (=> d!412346 m!1632771))

(declare-fun m!1633507 () Bool)

(assert (=> b!1432823 m!1633507))

(declare-fun m!1633509 () Bool)

(assert (=> b!1432824 m!1633509))

(assert (=> b!1432825 m!1633495))

(assert (=> b!1432825 m!1633495))

(assert (=> b!1432825 m!1633499))

(assert (=> b!1432825 m!1633499))

(assert (=> b!1432825 m!1633501))

(declare-fun m!1633511 () Bool)

(assert (=> b!1432825 m!1633511))

(assert (=> b!1432493 d!412346))

(declare-fun d!412350 () Bool)

(declare-fun lt!487311 () Bool)

(declare-fun e!914614 () Bool)

(assert (=> d!412350 (= lt!487311 e!914614)))

(declare-fun res!648708 () Bool)

(assert (=> d!412350 (=> (not res!648708) (not e!914614))))

(assert (=> d!412350 (= res!648708 (= (list!5905 (_1!7932 (lex!1037 Lexer!2270 (rules!11341 thiss!10022) (print!1051 Lexer!2270 (singletonSeq!1212 lt!486774))))) (list!5905 (singletonSeq!1212 lt!486774))))))

(declare-fun e!914615 () Bool)

(assert (=> d!412350 (= lt!487311 e!914615)))

(declare-fun res!648707 () Bool)

(assert (=> d!412350 (=> (not res!648707) (not e!914615))))

(declare-fun lt!487312 () tuple2!14092)

(assert (=> d!412350 (= res!648707 (= (size!12199 (_1!7932 lt!487312)) 1))))

(assert (=> d!412350 (= lt!487312 (lex!1037 Lexer!2270 (rules!11341 thiss!10022) (print!1051 Lexer!2270 (singletonSeq!1212 lt!486774))))))

(assert (=> d!412350 (not (isEmpty!9224 (rules!11341 thiss!10022)))))

(assert (=> d!412350 (= (rulesProduceIndividualToken!1205 Lexer!2270 (rules!11341 thiss!10022) lt!486774) lt!487311)))

(declare-fun b!1432826 () Bool)

(declare-fun res!648709 () Bool)

(assert (=> b!1432826 (=> (not res!648709) (not e!914615))))

(assert (=> b!1432826 (= res!648709 (= (apply!3797 (_1!7932 lt!487312) 0) lt!486774))))

(declare-fun b!1432827 () Bool)

(assert (=> b!1432827 (= e!914615 (isEmpty!9226 (_2!7932 lt!487312)))))

(declare-fun b!1432828 () Bool)

(assert (=> b!1432828 (= e!914614 (isEmpty!9226 (_2!7932 (lex!1037 Lexer!2270 (rules!11341 thiss!10022) (print!1051 Lexer!2270 (singletonSeq!1212 lt!486774))))))))

(assert (= (and d!412350 res!648707) b!1432826))

(assert (= (and b!1432826 res!648709) b!1432827))

(assert (= (and d!412350 res!648708) b!1432828))

(declare-fun m!1633513 () Bool)

(assert (=> d!412350 m!1633513))

(declare-fun m!1633515 () Bool)

(assert (=> d!412350 m!1633515))

(declare-fun m!1633517 () Bool)

(assert (=> d!412350 m!1633517))

(declare-fun m!1633519 () Bool)

(assert (=> d!412350 m!1633519))

(assert (=> d!412350 m!1633513))

(assert (=> d!412350 m!1633517))

(assert (=> d!412350 m!1633513))

(declare-fun m!1633521 () Bool)

(assert (=> d!412350 m!1633521))

(declare-fun m!1633523 () Bool)

(assert (=> d!412350 m!1633523))

(assert (=> d!412350 m!1632771))

(declare-fun m!1633525 () Bool)

(assert (=> b!1432826 m!1633525))

(declare-fun m!1633527 () Bool)

(assert (=> b!1432827 m!1633527))

(assert (=> b!1432828 m!1633513))

(assert (=> b!1432828 m!1633513))

(assert (=> b!1432828 m!1633517))

(assert (=> b!1432828 m!1633517))

(assert (=> b!1432828 m!1633519))

(declare-fun m!1633529 () Bool)

(assert (=> b!1432828 m!1633529))

(assert (=> b!1432493 d!412350))

(declare-fun d!412352 () Bool)

(assert (=> d!412352 (= (list!5905 (tokens!1957 other!32)) (list!5908 (c!235466 (tokens!1957 other!32))))))

(declare-fun bs!340883 () Bool)

(assert (= bs!340883 d!412352))

(declare-fun m!1633531 () Bool)

(assert (=> bs!340883 m!1633531))

(assert (=> b!1432493 d!412352))

(declare-fun d!412354 () Bool)

(assert (=> d!412354 (rulesProduceIndividualToken!1205 Lexer!2270 (rules!11341 thiss!10022) lt!486782)))

(declare-fun lt!487315 () Unit!22424)

(declare-fun choose!8819 (LexerInterface!2272 List!14937 List!14936 Token!4878) Unit!22424)

(assert (=> d!412354 (= lt!487315 (choose!8819 Lexer!2270 (rules!11341 thiss!10022) lt!486788 lt!486782))))

(assert (=> d!412354 (not (isEmpty!9224 (rules!11341 thiss!10022)))))

(assert (=> d!412354 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!390 Lexer!2270 (rules!11341 thiss!10022) lt!486788 lt!486782) lt!487315)))

(declare-fun bs!340884 () Bool)

(assert (= bs!340884 d!412354))

(assert (=> bs!340884 m!1632607))

(declare-fun m!1633533 () Bool)

(assert (=> bs!340884 m!1633533))

(assert (=> bs!340884 m!1632771))

(assert (=> b!1432493 d!412354))

(declare-fun d!412356 () Bool)

(assert (=> d!412356 (rulesProduceIndividualToken!1205 Lexer!2270 (rules!11341 thiss!10022) lt!486774)))

(declare-fun lt!487316 () Unit!22424)

(assert (=> d!412356 (= lt!487316 (choose!8819 Lexer!2270 (rules!11341 thiss!10022) lt!486789 lt!486774))))

(assert (=> d!412356 (not (isEmpty!9224 (rules!11341 thiss!10022)))))

(assert (=> d!412356 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!390 Lexer!2270 (rules!11341 thiss!10022) lt!486789 lt!486774) lt!487316)))

(declare-fun bs!340885 () Bool)

(assert (= bs!340885 d!412356))

(assert (=> bs!340885 m!1632601))

(declare-fun m!1633535 () Bool)

(assert (=> bs!340885 m!1633535))

(assert (=> bs!340885 m!1632771))

(assert (=> b!1432493 d!412356))

(declare-fun d!412358 () Bool)

(declare-fun prefixMatchZipperSequence!326 (Regex!3922 BalanceConc!10024) Bool)

(declare-fun rulesRegex!384 (LexerInterface!2272 List!14937) Regex!3922)

(declare-fun ++!3975 (BalanceConc!10024 BalanceConc!10024) BalanceConc!10024)

(assert (=> d!412358 (= (separableTokensPredicate!507 Lexer!2270 lt!486774 lt!486782 (rules!11341 thiss!10022)) (not (prefixMatchZipperSequence!326 (rulesRegex!384 Lexer!2270 (rules!11341 thiss!10022)) (++!3975 (charsOf!1508 lt!486774) (singletonSeq!1213 (apply!3799 (charsOf!1508 lt!486782) 0))))))))

(declare-fun bs!340886 () Bool)

(assert (= bs!340886 d!412358))

(declare-fun m!1633537 () Bool)

(assert (=> bs!340886 m!1633537))

(declare-fun m!1633539 () Bool)

(assert (=> bs!340886 m!1633539))

(declare-fun m!1633541 () Bool)

(assert (=> bs!340886 m!1633541))

(declare-fun m!1633543 () Bool)

(assert (=> bs!340886 m!1633543))

(declare-fun m!1633545 () Bool)

(assert (=> bs!340886 m!1633545))

(declare-fun m!1633547 () Bool)

(assert (=> bs!340886 m!1633547))

(declare-fun m!1633549 () Bool)

(assert (=> bs!340886 m!1633549))

(assert (=> bs!340886 m!1633545))

(assert (=> bs!340886 m!1633539))

(assert (=> bs!340886 m!1633549))

(assert (=> bs!340886 m!1633537))

(assert (=> bs!340886 m!1633547))

(assert (=> bs!340886 m!1633541))

(assert (=> b!1432493 d!412358))

(declare-fun d!412360 () Bool)

(declare-fun lt!487319 () Token!4878)

(declare-fun last!154 (List!14936) Token!4878)

(assert (=> d!412360 (= lt!487319 (last!154 (list!5905 (tokens!1957 thiss!10022))))))

(declare-fun last!155 (Conc!5043) Token!4878)

(assert (=> d!412360 (= lt!487319 (last!155 (c!235466 (tokens!1957 thiss!10022))))))

(assert (=> d!412360 (not (isEmpty!9218 (tokens!1957 thiss!10022)))))

(assert (=> d!412360 (= (last!150 (tokens!1957 thiss!10022)) lt!487319)))

(declare-fun bs!340887 () Bool)

(assert (= bs!340887 d!412360))

(assert (=> bs!340887 m!1632595))

(assert (=> bs!340887 m!1632595))

(declare-fun m!1633551 () Bool)

(assert (=> bs!340887 m!1633551))

(declare-fun m!1633553 () Bool)

(assert (=> bs!340887 m!1633553))

(assert (=> bs!340887 m!1632583))

(assert (=> b!1432493 d!412360))

(declare-fun d!412362 () Bool)

(declare-fun lt!487320 () Bool)

(assert (=> d!412362 (= lt!487320 (isEmpty!9222 (list!5905 (tokens!1957 other!32))))))

(assert (=> d!412362 (= lt!487320 (isEmpty!9223 (c!235466 (tokens!1957 other!32))))))

(assert (=> d!412362 (= (isEmpty!9218 (tokens!1957 other!32)) lt!487320)))

(declare-fun bs!340888 () Bool)

(assert (= bs!340888 d!412362))

(assert (=> bs!340888 m!1632605))

(assert (=> bs!340888 m!1632605))

(declare-fun m!1633555 () Bool)

(assert (=> bs!340888 m!1633555))

(declare-fun m!1633557 () Bool)

(assert (=> bs!340888 m!1633557))

(assert (=> b!1432494 d!412362))

(declare-fun d!412364 () Bool)

(declare-fun e!914630 () Bool)

(assert (=> d!412364 e!914630))

(declare-fun res!648718 () Bool)

(assert (=> d!412364 (=> (not res!648718) (not e!914630))))

(assert (=> d!412364 (= res!648718 (rulesInvariant!2116 Lexer!2270 (rules!11341 thiss!10022)))))

(declare-fun Unit!22482 () Unit!22424)

(assert (=> d!412364 (= (lemmaInvariant!304 thiss!10022) Unit!22482)))

(declare-fun b!1432853 () Bool)

(declare-fun res!648719 () Bool)

(assert (=> b!1432853 (=> (not res!648719) (not e!914630))))

(assert (=> b!1432853 (= res!648719 (rulesProduceEachTokenIndividually!834 Lexer!2270 (rules!11341 thiss!10022) (tokens!1957 thiss!10022)))))

(declare-fun b!1432854 () Bool)

(assert (=> b!1432854 (= e!914630 (separableTokens!218 Lexer!2270 (tokens!1957 thiss!10022) (rules!11341 thiss!10022)))))

(assert (= (and d!412364 res!648718) b!1432853))

(assert (= (and b!1432853 res!648719) b!1432854))

(assert (=> d!412364 m!1632763))

(assert (=> b!1432853 m!1633037))

(assert (=> b!1432854 m!1633039))

(assert (=> b!1432494 d!412364))

(declare-fun d!412374 () Bool)

(declare-fun e!914631 () Bool)

(assert (=> d!412374 e!914631))

(declare-fun res!648720 () Bool)

(assert (=> d!412374 (=> (not res!648720) (not e!914631))))

(assert (=> d!412374 (= res!648720 (rulesInvariant!2116 Lexer!2270 (rules!11341 other!32)))))

(declare-fun Unit!22483 () Unit!22424)

(assert (=> d!412374 (= (lemmaInvariant!304 other!32) Unit!22483)))

(declare-fun b!1432855 () Bool)

(declare-fun res!648721 () Bool)

(assert (=> b!1432855 (=> (not res!648721) (not e!914631))))

(assert (=> b!1432855 (= res!648721 (rulesProduceEachTokenIndividually!834 Lexer!2270 (rules!11341 other!32) (tokens!1957 other!32)))))

(declare-fun b!1432856 () Bool)

(assert (=> b!1432856 (= e!914631 (separableTokens!218 Lexer!2270 (tokens!1957 other!32) (rules!11341 other!32)))))

(assert (= (and d!412374 res!648720) b!1432855))

(assert (= (and b!1432855 res!648721) b!1432856))

(assert (=> d!412374 m!1633043))

(assert (=> b!1432855 m!1633045))

(assert (=> b!1432856 m!1633047))

(assert (=> b!1432494 d!412374))

(declare-fun b!1432867 () Bool)

(declare-fun b_free!35487 () Bool)

(declare-fun b_next!36191 () Bool)

(assert (=> b!1432867 (= b_free!35487 (not b_next!36191))))

(declare-fun tp!406067 () Bool)

(declare-fun b_and!96415 () Bool)

(assert (=> b!1432867 (= tp!406067 b_and!96415)))

(declare-fun b_free!35489 () Bool)

(declare-fun b_next!36193 () Bool)

(assert (=> b!1432867 (= b_free!35489 (not b_next!36193))))

(declare-fun tp!406066 () Bool)

(declare-fun b_and!96417 () Bool)

(assert (=> b!1432867 (= tp!406066 b_and!96417)))

(declare-fun e!914640 () Bool)

(assert (=> b!1432867 (= e!914640 (and tp!406067 tp!406066))))

(declare-fun b!1432866 () Bool)

(declare-fun tp!406068 () Bool)

(declare-fun e!914643 () Bool)

(declare-fun inv!19736 (String!17748) Bool)

(declare-fun inv!19749 (TokenValueInjection!5056) Bool)

(assert (=> b!1432866 (= e!914643 (and tp!406068 (inv!19736 (tag!2870 (h!20272 (rules!11341 other!32)))) (inv!19749 (transformation!2608 (h!20272 (rules!11341 other!32)))) e!914640))))

(declare-fun b!1432865 () Bool)

(declare-fun e!914641 () Bool)

(declare-fun tp!406065 () Bool)

(assert (=> b!1432865 (= e!914641 (and e!914643 tp!406065))))

(assert (=> b!1432495 (= tp!406044 e!914641)))

(assert (= b!1432866 b!1432867))

(assert (= b!1432865 b!1432866))

(assert (= (and b!1432495 (is-Cons!14871 (rules!11341 other!32))) b!1432865))

(declare-fun m!1633739 () Bool)

(assert (=> b!1432866 m!1633739))

(declare-fun m!1633741 () Bool)

(assert (=> b!1432866 m!1633741))

(declare-fun tp!406075 () Bool)

(declare-fun e!914649 () Bool)

(declare-fun tp!406076 () Bool)

(declare-fun b!1432876 () Bool)

(assert (=> b!1432876 (= e!914649 (and (inv!19740 (left!12670 (c!235466 (tokens!1957 other!32)))) tp!406075 (inv!19740 (right!13000 (c!235466 (tokens!1957 other!32)))) tp!406076))))

(declare-fun b!1432878 () Bool)

(declare-fun e!914648 () Bool)

(declare-fun tp!406077 () Bool)

(assert (=> b!1432878 (= e!914648 tp!406077)))

(declare-fun b!1432877 () Bool)

(declare-fun inv!19750 (IArray!10091) Bool)

(assert (=> b!1432877 (= e!914649 (and (inv!19750 (xs!7776 (c!235466 (tokens!1957 other!32)))) e!914648))))

(assert (=> b!1432496 (= tp!406042 (and (inv!19740 (c!235466 (tokens!1957 other!32))) e!914649))))

(assert (= (and b!1432496 (is-Node!5043 (c!235466 (tokens!1957 other!32)))) b!1432876))

(assert (= b!1432877 b!1432878))

(assert (= (and b!1432496 (is-Leaf!7549 (c!235466 (tokens!1957 other!32)))) b!1432877))

(declare-fun m!1633743 () Bool)

(assert (=> b!1432876 m!1633743))

(declare-fun m!1633745 () Bool)

(assert (=> b!1432876 m!1633745))

(declare-fun m!1633747 () Bool)

(assert (=> b!1432877 m!1633747))

(assert (=> b!1432496 m!1632585))

(declare-fun b!1432879 () Bool)

(declare-fun tp!406079 () Bool)

(declare-fun tp!406078 () Bool)

(declare-fun e!914651 () Bool)

(assert (=> b!1432879 (= e!914651 (and (inv!19740 (left!12670 (c!235466 (tokens!1957 thiss!10022)))) tp!406078 (inv!19740 (right!13000 (c!235466 (tokens!1957 thiss!10022)))) tp!406079))))

(declare-fun b!1432881 () Bool)

(declare-fun e!914650 () Bool)

(declare-fun tp!406080 () Bool)

(assert (=> b!1432881 (= e!914650 tp!406080)))

(declare-fun b!1432880 () Bool)

(assert (=> b!1432880 (= e!914651 (and (inv!19750 (xs!7776 (c!235466 (tokens!1957 thiss!10022)))) e!914650))))

(assert (=> b!1432502 (= tp!406041 (and (inv!19740 (c!235466 (tokens!1957 thiss!10022))) e!914651))))

(assert (= (and b!1432502 (is-Node!5043 (c!235466 (tokens!1957 thiss!10022)))) b!1432879))

(assert (= b!1432880 b!1432881))

(assert (= (and b!1432502 (is-Leaf!7549 (c!235466 (tokens!1957 thiss!10022)))) b!1432880))

(declare-fun m!1633749 () Bool)

(assert (=> b!1432879 m!1633749))

(declare-fun m!1633751 () Bool)

(assert (=> b!1432879 m!1633751))

(declare-fun m!1633753 () Bool)

(assert (=> b!1432880 m!1633753))

(assert (=> b!1432502 m!1632641))

(declare-fun b!1432884 () Bool)

(declare-fun b_free!35491 () Bool)

(declare-fun b_next!36195 () Bool)

(assert (=> b!1432884 (= b_free!35491 (not b_next!36195))))

(declare-fun tp!406083 () Bool)

(declare-fun b_and!96419 () Bool)

(assert (=> b!1432884 (= tp!406083 b_and!96419)))

(declare-fun b_free!35493 () Bool)

(declare-fun b_next!36197 () Bool)

(assert (=> b!1432884 (= b_free!35493 (not b_next!36197))))

(declare-fun tp!406082 () Bool)

(declare-fun b_and!96421 () Bool)

(assert (=> b!1432884 (= tp!406082 b_and!96421)))

(declare-fun e!914652 () Bool)

(assert (=> b!1432884 (= e!914652 (and tp!406083 tp!406082))))

(declare-fun tp!406084 () Bool)

(declare-fun e!914655 () Bool)

(declare-fun b!1432883 () Bool)

(assert (=> b!1432883 (= e!914655 (and tp!406084 (inv!19736 (tag!2870 (h!20272 (rules!11341 thiss!10022)))) (inv!19749 (transformation!2608 (h!20272 (rules!11341 thiss!10022)))) e!914652))))

(declare-fun b!1432882 () Bool)

(declare-fun e!914653 () Bool)

(declare-fun tp!406081 () Bool)

(assert (=> b!1432882 (= e!914653 (and e!914655 tp!406081))))

(assert (=> b!1432499 (= tp!406043 e!914653)))

(assert (= b!1432883 b!1432884))

(assert (= b!1432882 b!1432883))

(assert (= (and b!1432499 (is-Cons!14871 (rules!11341 thiss!10022))) b!1432882))

(declare-fun m!1633755 () Bool)

(assert (=> b!1432883 m!1633755))

(declare-fun m!1633757 () Bool)

(assert (=> b!1432883 m!1633757))

(push 1)

(assert (not b!1432879))

(assert (not b!1432825))

(assert (not b!1432883))

(assert (not b_next!36197))

(assert (not b!1432579))

(assert (not b!1432543))

(assert (not b!1432557))

(assert (not d!412234))

(assert (not d!412248))

(assert (not b!1432729))

(assert (not b!1432545))

(assert (not b!1432807))

(assert (not d!412278))

(assert (not b!1432758))

(assert (not b!1432854))

(assert (not d!412304))

(assert (not b_next!36195))

(assert (not b!1432878))

(assert (not d!412340))

(assert (not b!1432866))

(assert (not b!1432721))

(assert (not b!1432569))

(assert (not b!1432689))

(assert (not b!1432738))

(assert (not d!412250))

(assert (not b!1432723))

(assert b_and!96417)

(assert (not b!1432882))

(assert (not b!1432691))

(assert (not d!412298))

(assert (not b!1432804))

(assert (not b!1432826))

(assert (not d!412288))

(assert b_and!96419)

(assert (not b!1432827))

(assert (not b!1432781))

(assert (not d!412358))

(assert (not d!412346))

(assert (not b!1432496))

(assert (not b!1432685))

(assert (not b!1432555))

(assert (not d!412356))

(assert (not b!1432726))

(assert (not b!1432810))

(assert (not b!1432855))

(assert (not b!1432782))

(assert (not d!412318))

(assert (not b!1432630))

(assert (not b!1432865))

(assert (not b!1432739))

(assert (not d!412352))

(assert b_and!96421)

(assert (not b_next!36193))

(assert (not b!1432877))

(assert (not d!412342))

(assert (not b!1432809))

(assert (not d!412240))

(assert (not b!1432692))

(assert (not b!1432687))

(assert (not d!412238))

(assert (not d!412310))

(assert (not b!1432554))

(assert (not d!412354))

(assert (not d!412296))

(assert (not d!412286))

(assert (not d!412364))

(assert (not b!1432709))

(assert (not b!1432853))

(assert (not b!1432725))

(assert (not b!1432724))

(assert (not d!412306))

(assert (not b!1432688))

(assert b_and!96415)

(assert (not d!412302))

(assert (not b!1432876))

(assert (not b!1432823))

(assert (not d!412338))

(assert (not b!1432567))

(assert (not d!412360))

(assert (not b!1432568))

(assert (not b!1432710))

(assert (not b!1432640))

(assert (not b!1432880))

(assert (not b!1432881))

(assert (not b!1432566))

(assert (not b!1432803))

(assert (not b!1432722))

(assert (not b!1432824))

(assert (not b!1432686))

(assert (not d!412362))

(assert (not d!412344))

(assert (not b!1432806))

(assert (not d!412252))

(assert (not d!412374))

(assert (not d!412228))

(assert (not b_next!36191))

(assert (not b!1432727))

(assert (not b!1432741))

(assert (not d!412280))

(assert (not d!412232))

(assert (not b!1432502))

(assert (not d!412246))

(assert (not d!412350))

(assert (not b!1432734))

(assert (not b!1432856))

(assert (not b!1432580))

(assert (not b!1432767))

(assert (not d!412268))

(assert (not b!1432690))

(assert (not b!1432828))

(assert (not b!1432631))

(assert (not b!1432556))

(assert (not d!412308))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!36195))

(assert b_and!96417)

(assert b_and!96419)

(assert b_and!96415)

(assert (not b_next!36197))

(assert (not b_next!36191))

(assert b_and!96421)

(assert (not b_next!36193))

(check-sat)

(pop 1)

