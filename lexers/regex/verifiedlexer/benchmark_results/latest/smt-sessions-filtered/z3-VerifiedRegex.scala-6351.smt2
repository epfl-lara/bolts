; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!327530 () Bool)

(assert start!327530)

(declare-fun b!3525016 () Bool)

(declare-fun b_free!90833 () Bool)

(declare-fun b_next!91537 () Bool)

(assert (=> b!3525016 (= b_free!90833 (not b_next!91537))))

(declare-fun tp!1087550 () Bool)

(declare-fun b_and!251295 () Bool)

(assert (=> b!3525016 (= tp!1087550 b_and!251295)))

(declare-fun b_free!90835 () Bool)

(declare-fun b_next!91539 () Bool)

(assert (=> b!3525016 (= b_free!90835 (not b_next!91539))))

(declare-fun tp!1087552 () Bool)

(declare-fun b_and!251297 () Bool)

(assert (=> b!3525016 (= tp!1087552 b_and!251297)))

(declare-fun b!3525023 () Bool)

(declare-fun b_free!90837 () Bool)

(declare-fun b_next!91541 () Bool)

(assert (=> b!3525023 (= b_free!90837 (not b_next!91541))))

(declare-fun tp!1087553 () Bool)

(declare-fun b_and!251299 () Bool)

(assert (=> b!3525023 (= tp!1087553 b_and!251299)))

(declare-fun b_free!90839 () Bool)

(declare-fun b_next!91543 () Bool)

(assert (=> b!3525023 (= b_free!90839 (not b_next!91543))))

(declare-fun tp!1087547 () Bool)

(declare-fun b_and!251301 () Bool)

(assert (=> b!3525023 (= tp!1087547 b_and!251301)))

(declare-fun b!3525010 () Bool)

(declare-fun b_free!90841 () Bool)

(declare-fun b_next!91545 () Bool)

(assert (=> b!3525010 (= b_free!90841 (not b_next!91545))))

(declare-fun tp!1087555 () Bool)

(declare-fun b_and!251303 () Bool)

(assert (=> b!3525010 (= tp!1087555 b_and!251303)))

(declare-fun b_free!90843 () Bool)

(declare-fun b_next!91547 () Bool)

(assert (=> b!3525010 (= b_free!90843 (not b_next!91547))))

(declare-fun tp!1087549 () Bool)

(declare-fun b_and!251305 () Bool)

(assert (=> b!3525010 (= tp!1087549 b_and!251305)))

(declare-fun bs!565637 () Bool)

(declare-fun b!3525005 () Bool)

(declare-fun b!3525032 () Bool)

(assert (= bs!565637 (and b!3525005 b!3525032)))

(declare-fun lambda!122859 () Int)

(declare-fun lambda!122858 () Int)

(assert (=> bs!565637 (not (= lambda!122859 lambda!122858))))

(declare-fun b!3525054 () Bool)

(declare-fun e!2182000 () Bool)

(assert (=> b!3525054 (= e!2182000 true)))

(declare-fun b!3525053 () Bool)

(declare-fun e!2181999 () Bool)

(assert (=> b!3525053 (= e!2181999 e!2182000)))

(declare-fun b!3525052 () Bool)

(declare-fun e!2181998 () Bool)

(assert (=> b!3525052 (= e!2181998 e!2181999)))

(assert (=> b!3525005 e!2181998))

(assert (= b!3525053 b!3525054))

(assert (= b!3525052 b!3525053))

(declare-datatypes ((C!20668 0))(
  ( (C!20669 (val!12382 Int)) )
))
(declare-datatypes ((Regex!10241 0))(
  ( (ElementMatch!10241 (c!607688 C!20668)) (Concat!15953 (regOne!20994 Regex!10241) (regTwo!20994 Regex!10241)) (EmptyExpr!10241) (Star!10241 (reg!10570 Regex!10241)) (EmptyLang!10241) (Union!10241 (regOne!20995 Regex!10241) (regTwo!20995 Regex!10241)) )
))
(declare-datatypes ((List!37492 0))(
  ( (Nil!37368) (Cons!37368 (h!42788 (_ BitVec 16)) (t!282381 List!37492)) )
))
(declare-datatypes ((TokenValue!5712 0))(
  ( (FloatLiteralValue!11424 (text!40429 List!37492)) (TokenValueExt!5711 (__x!23641 Int)) (Broken!28560 (value!176671 List!37492)) (Object!5835) (End!5712) (Def!5712) (Underscore!5712) (Match!5712) (Else!5712) (Error!5712) (Case!5712) (If!5712) (Extends!5712) (Abstract!5712) (Class!5712) (Val!5712) (DelimiterValue!11424 (del!5772 List!37492)) (KeywordValue!5718 (value!176672 List!37492)) (CommentValue!11424 (value!176673 List!37492)) (WhitespaceValue!11424 (value!176674 List!37492)) (IndentationValue!5712 (value!176675 List!37492)) (String!41893) (Int32!5712) (Broken!28561 (value!176676 List!37492)) (Boolean!5713) (Unit!53053) (OperatorValue!5715 (op!5772 List!37492)) (IdentifierValue!11424 (value!176677 List!37492)) (IdentifierValue!11425 (value!176678 List!37492)) (WhitespaceValue!11425 (value!176679 List!37492)) (True!11424) (False!11424) (Broken!28562 (value!176680 List!37492)) (Broken!28563 (value!176681 List!37492)) (True!11425) (RightBrace!5712) (RightBracket!5712) (Colon!5712) (Null!5712) (Comma!5712) (LeftBracket!5712) (False!11425) (LeftBrace!5712) (ImaginaryLiteralValue!5712 (text!40430 List!37492)) (StringLiteralValue!17136 (value!176682 List!37492)) (EOFValue!5712 (value!176683 List!37492)) (IdentValue!5712 (value!176684 List!37492)) (DelimiterValue!11425 (value!176685 List!37492)) (DedentValue!5712 (value!176686 List!37492)) (NewLineValue!5712 (value!176687 List!37492)) (IntegerValue!17136 (value!176688 (_ BitVec 32)) (text!40431 List!37492)) (IntegerValue!17137 (value!176689 Int) (text!40432 List!37492)) (Times!5712) (Or!5712) (Equal!5712) (Minus!5712) (Broken!28564 (value!176690 List!37492)) (And!5712) (Div!5712) (LessEqual!5712) (Mod!5712) (Concat!15954) (Not!5712) (Plus!5712) (SpaceValue!5712 (value!176691 List!37492)) (IntegerValue!17138 (value!176692 Int) (text!40433 List!37492)) (StringLiteralValue!17137 (text!40434 List!37492)) (FloatLiteralValue!11425 (text!40435 List!37492)) (BytesLiteralValue!5712 (value!176693 List!37492)) (CommentValue!11425 (value!176694 List!37492)) (StringLiteralValue!17138 (value!176695 List!37492)) (ErrorTokenValue!5712 (msg!5773 List!37492)) )
))
(declare-datatypes ((List!37493 0))(
  ( (Nil!37369) (Cons!37369 (h!42789 C!20668) (t!282382 List!37493)) )
))
(declare-datatypes ((IArray!22683 0))(
  ( (IArray!22684 (innerList!11399 List!37493)) )
))
(declare-datatypes ((Conc!11339 0))(
  ( (Node!11339 (left!29194 Conc!11339) (right!29524 Conc!11339) (csize!22908 Int) (cheight!11550 Int)) (Leaf!17691 (xs!14529 IArray!22683) (csize!22909 Int)) (Empty!11339) )
))
(declare-datatypes ((BalanceConc!22292 0))(
  ( (BalanceConc!22293 (c!607689 Conc!11339)) )
))
(declare-datatypes ((String!41894 0))(
  ( (String!41895 (value!176696 String)) )
))
(declare-datatypes ((TokenValueInjection!10852 0))(
  ( (TokenValueInjection!10853 (toValue!7738 Int) (toChars!7597 Int)) )
))
(declare-datatypes ((Rule!10764 0))(
  ( (Rule!10765 (regex!5482 Regex!10241) (tag!6122 String!41894) (isSeparator!5482 Bool) (transformation!5482 TokenValueInjection!10852)) )
))
(declare-datatypes ((List!37494 0))(
  ( (Nil!37370) (Cons!37370 (h!42790 Rule!10764) (t!282383 List!37494)) )
))
(declare-fun rules!2135 () List!37494)

(get-info :version)

(assert (= (and b!3525005 ((_ is Cons!37370) rules!2135)) b!3525052))

(declare-fun order!20129 () Int)

(declare-fun order!20131 () Int)

(declare-fun dynLambda!15932 (Int Int) Int)

(declare-fun dynLambda!15933 (Int Int) Int)

(assert (=> b!3525054 (< (dynLambda!15932 order!20129 (toValue!7738 (transformation!5482 (h!42790 rules!2135)))) (dynLambda!15933 order!20131 lambda!122859))))

(declare-fun order!20133 () Int)

(declare-fun dynLambda!15934 (Int Int) Int)

(assert (=> b!3525054 (< (dynLambda!15934 order!20133 (toChars!7597 (transformation!5482 (h!42790 rules!2135)))) (dynLambda!15933 order!20131 lambda!122859))))

(assert (=> b!3525005 true))

(declare-fun b!3525001 () Bool)

(declare-fun e!2181969 () Bool)

(assert (=> b!3525001 (= e!2181969 false)))

(declare-fun b!3525002 () Bool)

(declare-fun e!2181970 () Bool)

(declare-fun e!2181959 () Bool)

(assert (=> b!3525002 (= e!2181970 (not e!2181959))))

(declare-fun res!1421795 () Bool)

(assert (=> b!3525002 (=> res!1421795 e!2181959)))

(declare-fun lt!1204373 () List!37493)

(declare-fun lt!1204360 () List!37493)

(assert (=> b!3525002 (= res!1421795 (not (= lt!1204373 lt!1204360)))))

(declare-datatypes ((LexerInterface!5071 0))(
  ( (LexerInterfaceExt!5068 (__x!23642 Int)) (Lexer!5069) )
))
(declare-fun thiss!18206 () LexerInterface!5071)

(declare-datatypes ((Token!10330 0))(
  ( (Token!10331 (value!176697 TokenValue!5712) (rule!8134 Rule!10764) (size!28437 Int) (originalCharacters!6196 List!37493)) )
))
(declare-datatypes ((List!37495 0))(
  ( (Nil!37371) (Cons!37371 (h!42791 Token!10330) (t!282384 List!37495)) )
))
(declare-fun tokens!494 () List!37495)

(declare-fun printList!1619 (LexerInterface!5071 List!37495) List!37493)

(assert (=> b!3525002 (= lt!1204360 (printList!1619 thiss!18206 (Cons!37371 (h!42791 tokens!494) Nil!37371)))))

(declare-fun lt!1204364 () BalanceConc!22292)

(declare-fun list!13673 (BalanceConc!22292) List!37493)

(assert (=> b!3525002 (= lt!1204373 (list!13673 lt!1204364))))

(declare-datatypes ((IArray!22685 0))(
  ( (IArray!22686 (innerList!11400 List!37495)) )
))
(declare-datatypes ((Conc!11340 0))(
  ( (Node!11340 (left!29195 Conc!11340) (right!29525 Conc!11340) (csize!22910 Int) (cheight!11551 Int)) (Leaf!17692 (xs!14530 IArray!22685) (csize!22911 Int)) (Empty!11340) )
))
(declare-datatypes ((BalanceConc!22294 0))(
  ( (BalanceConc!22295 (c!607690 Conc!11340)) )
))
(declare-fun lt!1204359 () BalanceConc!22294)

(declare-fun printTailRec!1566 (LexerInterface!5071 BalanceConc!22294 Int BalanceConc!22292) BalanceConc!22292)

(assert (=> b!3525002 (= lt!1204364 (printTailRec!1566 thiss!18206 lt!1204359 0 (BalanceConc!22293 Empty!11339)))))

(declare-fun print!2136 (LexerInterface!5071 BalanceConc!22294) BalanceConc!22292)

(assert (=> b!3525002 (= lt!1204364 (print!2136 thiss!18206 lt!1204359))))

(declare-fun singletonSeq!2578 (Token!10330) BalanceConc!22294)

(assert (=> b!3525002 (= lt!1204359 (singletonSeq!2578 (h!42791 tokens!494)))))

(declare-fun b!3525003 () Bool)

(declare-fun e!2181968 () Bool)

(declare-fun e!2181971 () Bool)

(assert (=> b!3525003 (= e!2181968 e!2181971)))

(declare-fun res!1421803 () Bool)

(assert (=> b!3525003 (=> (not res!1421803) (not e!2181971))))

(declare-fun lt!1204371 () Rule!10764)

(declare-fun lt!1204340 () List!37493)

(declare-fun matchR!4825 (Regex!10241 List!37493) Bool)

(assert (=> b!3525003 (= res!1421803 (matchR!4825 (regex!5482 lt!1204371) lt!1204340))))

(declare-datatypes ((Option!7627 0))(
  ( (None!7626) (Some!7626 (v!37124 Rule!10764)) )
))
(declare-fun lt!1204362 () Option!7627)

(declare-fun get!12000 (Option!7627) Rule!10764)

(assert (=> b!3525003 (= lt!1204371 (get!12000 lt!1204362))))

(declare-fun b!3525004 () Bool)

(declare-datatypes ((Unit!53054 0))(
  ( (Unit!53055) )
))
(declare-fun e!2181974 () Unit!53054)

(declare-fun Unit!53056 () Unit!53054)

(assert (=> b!3525004 (= e!2181974 Unit!53056)))

(declare-fun lt!1204339 () List!37493)

(declare-fun lt!1204341 () Unit!53054)

(declare-fun lt!1204384 () C!20668)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!540 (Regex!10241 List!37493 C!20668) Unit!53054)

(assert (=> b!3525004 (= lt!1204341 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!540 (regex!5482 (rule!8134 (h!42791 (t!282384 tokens!494)))) lt!1204339 lt!1204384))))

(declare-fun res!1421810 () Bool)

(assert (=> b!3525004 (= res!1421810 (not (matchR!4825 (regex!5482 (rule!8134 (h!42791 (t!282384 tokens!494)))) lt!1204339)))))

(assert (=> b!3525004 (=> (not res!1421810) (not e!2181969))))

(assert (=> b!3525004 e!2181969))

(declare-fun e!2181961 () Bool)

(declare-fun separatorToken!241 () Token!10330)

(declare-fun contains!7017 (List!37494 Rule!10764) Bool)

(assert (=> b!3525005 (= e!2181961 (contains!7017 rules!2135 (rule!8134 separatorToken!241)))))

(declare-fun lt!1204346 () Unit!53054)

(assert (=> b!3525005 (= lt!1204346 e!2181974)))

(declare-fun c!607687 () Bool)

(declare-fun contains!7018 (List!37493 C!20668) Bool)

(declare-fun usedCharacters!716 (Regex!10241) List!37493)

(assert (=> b!3525005 (= c!607687 (not (contains!7018 (usedCharacters!716 (regex!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))) lt!1204384)))))

(declare-fun head!7393 (List!37493) C!20668)

(assert (=> b!3525005 (= lt!1204384 (head!7393 lt!1204339))))

(declare-datatypes ((tuple2!37212 0))(
  ( (tuple2!37213 (_1!21740 Token!10330) (_2!21740 List!37493)) )
))
(declare-datatypes ((Option!7628 0))(
  ( (None!7627) (Some!7627 (v!37125 tuple2!37212)) )
))
(declare-fun maxPrefixOneRule!1778 (LexerInterface!5071 Rule!10764 List!37493) Option!7628)

(declare-fun apply!8914 (TokenValueInjection!10852 BalanceConc!22292) TokenValue!5712)

(declare-fun seqFromList!4017 (List!37493) BalanceConc!22292)

(declare-fun size!28438 (List!37493) Int)

(assert (=> b!3525005 (= (maxPrefixOneRule!1778 thiss!18206 (rule!8134 (h!42791 (t!282384 tokens!494))) lt!1204339) (Some!7627 (tuple2!37213 (Token!10331 (apply!8914 (transformation!5482 (rule!8134 (h!42791 (t!282384 tokens!494)))) (seqFromList!4017 lt!1204339)) (rule!8134 (h!42791 (t!282384 tokens!494))) (size!28438 lt!1204339) lt!1204339) Nil!37369)))))

(declare-fun lt!1204351 () Unit!53054)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!871 (LexerInterface!5071 List!37494 List!37493 List!37493 List!37493 Rule!10764) Unit!53054)

(assert (=> b!3525005 (= lt!1204351 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!871 thiss!18206 rules!2135 lt!1204339 lt!1204339 Nil!37369 (rule!8134 (h!42791 (t!282384 tokens!494)))))))

(declare-fun e!2181972 () Bool)

(assert (=> b!3525005 e!2181972))

(declare-fun res!1421793 () Bool)

(assert (=> b!3525005 (=> (not res!1421793) (not e!2181972))))

(declare-fun lt!1204356 () Option!7627)

(declare-fun isDefined!5878 (Option!7627) Bool)

(assert (=> b!3525005 (= res!1421793 (isDefined!5878 lt!1204356))))

(declare-fun getRuleFromTag!1125 (LexerInterface!5071 List!37494 String!41894) Option!7627)

(assert (=> b!3525005 (= lt!1204356 (getRuleFromTag!1125 thiss!18206 rules!2135 (tag!6122 (rule!8134 (h!42791 (t!282384 tokens!494))))))))

(declare-fun lt!1204376 () Unit!53054)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1125 (LexerInterface!5071 List!37494 List!37493 Token!10330) Unit!53054)

(assert (=> b!3525005 (= lt!1204376 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1125 thiss!18206 rules!2135 lt!1204339 (h!42791 (t!282384 tokens!494))))))

(declare-fun lt!1204366 () Bool)

(assert (=> b!3525005 lt!1204366))

(declare-fun lt!1204363 () Unit!53054)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1060 (LexerInterface!5071 List!37494 List!37495 Token!10330) Unit!53054)

(assert (=> b!3525005 (= lt!1204363 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1060 thiss!18206 rules!2135 tokens!494 (h!42791 (t!282384 tokens!494))))))

(declare-fun lt!1204374 () List!37493)

(declare-fun lt!1204344 () List!37493)

(declare-fun maxPrefix!2611 (LexerInterface!5071 List!37494 List!37493) Option!7628)

(assert (=> b!3525005 (= (maxPrefix!2611 thiss!18206 rules!2135 lt!1204374) (Some!7627 (tuple2!37213 (h!42791 tokens!494) lt!1204344)))))

(declare-fun lt!1204375 () Unit!53054)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!238 (LexerInterface!5071 List!37494 Token!10330 Rule!10764 List!37493 Rule!10764) Unit!53054)

(assert (=> b!3525005 (= lt!1204375 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!238 thiss!18206 rules!2135 (h!42791 tokens!494) (rule!8134 (h!42791 tokens!494)) lt!1204344 (rule!8134 separatorToken!241)))))

(declare-fun lt!1204357 () C!20668)

(assert (=> b!3525005 (not (contains!7018 (usedCharacters!716 (regex!5482 (rule!8134 (h!42791 tokens!494)))) lt!1204357))))

(declare-fun lt!1204348 () Unit!53054)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!282 (LexerInterface!5071 List!37494 List!37494 Rule!10764 Rule!10764 C!20668) Unit!53054)

(assert (=> b!3525005 (= lt!1204348 (lemmaNonSepRuleNotContainsCharContainedInASepRule!282 thiss!18206 rules!2135 rules!2135 (rule!8134 (h!42791 tokens!494)) (rule!8134 separatorToken!241) lt!1204357))))

(declare-fun lt!1204365 () Unit!53054)

(declare-fun forallContained!1429 (List!37495 Int Token!10330) Unit!53054)

(assert (=> b!3525005 (= lt!1204365 (forallContained!1429 tokens!494 lambda!122859 (h!42791 (t!282384 tokens!494))))))

(declare-fun lt!1204367 () Bool)

(assert (=> b!3525005 (= lt!1204366 (not lt!1204367))))

(declare-fun rulesProduceIndividualToken!2563 (LexerInterface!5071 List!37494 Token!10330) Bool)

(assert (=> b!3525005 (= lt!1204366 (rulesProduceIndividualToken!2563 thiss!18206 rules!2135 (h!42791 (t!282384 tokens!494))))))

(declare-fun e!2181987 () Bool)

(assert (=> b!3525005 (= lt!1204367 e!2181987)))

(declare-fun res!1421812 () Bool)

(assert (=> b!3525005 (=> res!1421812 e!2181987)))

(declare-datatypes ((tuple2!37214 0))(
  ( (tuple2!37215 (_1!21741 BalanceConc!22294) (_2!21741 BalanceConc!22292)) )
))
(declare-fun lt!1204347 () tuple2!37214)

(declare-fun size!28439 (BalanceConc!22294) Int)

(assert (=> b!3525005 (= res!1421812 (not (= (size!28439 (_1!21741 lt!1204347)) 1)))))

(declare-fun lt!1204383 () BalanceConc!22292)

(declare-fun lex!2397 (LexerInterface!5071 List!37494 BalanceConc!22292) tuple2!37214)

(assert (=> b!3525005 (= lt!1204347 (lex!2397 thiss!18206 rules!2135 lt!1204383))))

(declare-fun lt!1204345 () BalanceConc!22294)

(assert (=> b!3525005 (= lt!1204383 (printTailRec!1566 thiss!18206 lt!1204345 0 (BalanceConc!22293 Empty!11339)))))

(assert (=> b!3525005 (= lt!1204383 (print!2136 thiss!18206 lt!1204345))))

(assert (=> b!3525005 (= lt!1204345 (singletonSeq!2578 (h!42791 (t!282384 tokens!494))))))

(declare-fun e!2181982 () Bool)

(assert (=> b!3525005 e!2181982))

(declare-fun res!1421806 () Bool)

(assert (=> b!3525005 (=> (not res!1421806) (not e!2181982))))

(declare-fun lt!1204370 () tuple2!37214)

(assert (=> b!3525005 (= res!1421806 (= (size!28439 (_1!21741 lt!1204370)) 1))))

(declare-fun lt!1204369 () BalanceConc!22292)

(assert (=> b!3525005 (= lt!1204370 (lex!2397 thiss!18206 rules!2135 lt!1204369))))

(declare-fun lt!1204382 () BalanceConc!22294)

(assert (=> b!3525005 (= lt!1204369 (printTailRec!1566 thiss!18206 lt!1204382 0 (BalanceConc!22293 Empty!11339)))))

(assert (=> b!3525005 (= lt!1204369 (print!2136 thiss!18206 lt!1204382))))

(assert (=> b!3525005 (= lt!1204382 (singletonSeq!2578 separatorToken!241))))

(declare-fun lt!1204342 () Unit!53054)

(declare-fun e!2181966 () Unit!53054)

(assert (=> b!3525005 (= lt!1204342 e!2181966)))

(declare-fun c!607686 () Bool)

(assert (=> b!3525005 (= c!607686 (not (contains!7018 (usedCharacters!716 (regex!5482 (rule!8134 separatorToken!241))) lt!1204357)))))

(assert (=> b!3525005 (= lt!1204357 (head!7393 lt!1204340))))

(assert (=> b!3525005 e!2181968))

(declare-fun res!1421809 () Bool)

(assert (=> b!3525005 (=> (not res!1421809) (not e!2181968))))

(assert (=> b!3525005 (= res!1421809 (isDefined!5878 lt!1204362))))

(assert (=> b!3525005 (= lt!1204362 (getRuleFromTag!1125 thiss!18206 rules!2135 (tag!6122 (rule!8134 separatorToken!241))))))

(declare-fun lt!1204350 () Unit!53054)

(assert (=> b!3525005 (= lt!1204350 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1125 thiss!18206 rules!2135 lt!1204340 separatorToken!241))))

(declare-fun lt!1204378 () List!37493)

(declare-fun lt!1204381 () BalanceConc!22292)

(assert (=> b!3525005 (= (maxPrefixOneRule!1778 thiss!18206 (rule!8134 (h!42791 tokens!494)) lt!1204378) (Some!7627 (tuple2!37213 (Token!10331 (apply!8914 (transformation!5482 (rule!8134 (h!42791 tokens!494))) lt!1204381) (rule!8134 (h!42791 tokens!494)) (size!28438 lt!1204378) lt!1204378) Nil!37369)))))

(declare-fun lt!1204380 () Unit!53054)

(assert (=> b!3525005 (= lt!1204380 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!871 thiss!18206 rules!2135 lt!1204378 lt!1204378 Nil!37369 (rule!8134 (h!42791 tokens!494))))))

(declare-fun e!2181981 () Bool)

(assert (=> b!3525005 e!2181981))

(declare-fun res!1421811 () Bool)

(assert (=> b!3525005 (=> (not res!1421811) (not e!2181981))))

(declare-fun lt!1204355 () Option!7627)

(assert (=> b!3525005 (= res!1421811 (isDefined!5878 lt!1204355))))

(assert (=> b!3525005 (= lt!1204355 (getRuleFromTag!1125 thiss!18206 rules!2135 (tag!6122 (rule!8134 (h!42791 tokens!494)))))))

(declare-fun lt!1204368 () Unit!53054)

(assert (=> b!3525005 (= lt!1204368 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1125 thiss!18206 rules!2135 lt!1204378 (h!42791 tokens!494)))))

(declare-fun lt!1204372 () Unit!53054)

(assert (=> b!3525005 (= lt!1204372 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1060 thiss!18206 rules!2135 tokens!494 (h!42791 tokens!494)))))

(declare-fun b!3525006 () Bool)

(declare-fun e!2181983 () Bool)

(declare-fun e!2181973 () Bool)

(assert (=> b!3525006 (= e!2181983 e!2181973)))

(declare-fun res!1421798 () Bool)

(assert (=> b!3525006 (=> res!1421798 e!2181973)))

(assert (=> b!3525006 (= res!1421798 (or (isSeparator!5482 (rule!8134 (h!42791 tokens!494))) (isSeparator!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))))))

(declare-fun lt!1204352 () Unit!53054)

(assert (=> b!3525006 (= lt!1204352 (forallContained!1429 tokens!494 lambda!122858 (h!42791 (t!282384 tokens!494))))))

(declare-fun lt!1204361 () Unit!53054)

(assert (=> b!3525006 (= lt!1204361 (forallContained!1429 tokens!494 lambda!122858 (h!42791 tokens!494)))))

(declare-fun b!3525007 () Bool)

(declare-fun res!1421800 () Bool)

(assert (=> b!3525007 (=> (not res!1421800) (not e!2181970))))

(assert (=> b!3525007 (= res!1421800 (rulesProduceIndividualToken!2563 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3525008 () Bool)

(declare-fun Unit!53057 () Unit!53054)

(assert (=> b!3525008 (= e!2181974 Unit!53057)))

(declare-fun tp!1087557 () Bool)

(declare-fun e!2181980 () Bool)

(declare-fun e!2181976 () Bool)

(declare-fun b!3525009 () Bool)

(declare-fun inv!50605 (String!41894) Bool)

(declare-fun inv!50608 (TokenValueInjection!10852) Bool)

(assert (=> b!3525009 (= e!2181976 (and tp!1087557 (inv!50605 (tag!6122 (rule!8134 separatorToken!241))) (inv!50608 (transformation!5482 (rule!8134 separatorToken!241))) e!2181980))))

(assert (=> b!3525010 (= e!2181980 (and tp!1087555 tp!1087549))))

(declare-fun b!3525011 () Bool)

(declare-fun e!2181965 () Bool)

(assert (=> b!3525011 (= e!2181981 e!2181965)))

(declare-fun res!1421790 () Bool)

(assert (=> b!3525011 (=> (not res!1421790) (not e!2181965))))

(declare-fun lt!1204354 () Rule!10764)

(assert (=> b!3525011 (= res!1421790 (matchR!4825 (regex!5482 lt!1204354) lt!1204378))))

(assert (=> b!3525011 (= lt!1204354 (get!12000 lt!1204355))))

(declare-fun e!2181957 () Bool)

(declare-fun tp!1087546 () Bool)

(declare-fun b!3525012 () Bool)

(declare-fun inv!21 (TokenValue!5712) Bool)

(assert (=> b!3525012 (= e!2181957 (and (inv!21 (value!176697 separatorToken!241)) e!2181976 tp!1087546))))

(declare-fun e!2181958 () Bool)

(declare-fun tp!1087558 () Bool)

(declare-fun b!3525013 () Bool)

(declare-fun e!2181985 () Bool)

(assert (=> b!3525013 (= e!2181985 (and tp!1087558 (inv!50605 (tag!6122 (h!42790 rules!2135))) (inv!50608 (transformation!5482 (h!42790 rules!2135))) e!2181958))))

(declare-fun b!3525014 () Bool)

(declare-fun res!1421813 () Bool)

(assert (=> b!3525014 (=> res!1421813 e!2181987)))

(declare-fun apply!8915 (BalanceConc!22294 Int) Token!10330)

(assert (=> b!3525014 (= res!1421813 (not (= (apply!8915 (_1!21741 lt!1204347) 0) (h!42791 (t!282384 tokens!494)))))))

(declare-fun b!3525015 () Bool)

(declare-fun e!2181960 () Bool)

(declare-fun e!2181991 () Bool)

(assert (=> b!3525015 (= e!2181960 e!2181991)))

(declare-fun res!1421814 () Bool)

(assert (=> b!3525015 (=> res!1421814 e!2181991)))

(declare-fun lt!1204349 () List!37493)

(declare-fun lt!1204377 () List!37493)

(assert (=> b!3525015 (= res!1421814 (not (= lt!1204349 lt!1204377)))))

(declare-fun lt!1204343 () List!37493)

(declare-fun ++!9265 (List!37493 List!37493) List!37493)

(assert (=> b!3525015 (= lt!1204377 (++!9265 (++!9265 lt!1204378 lt!1204340) lt!1204343))))

(assert (=> b!3525016 (= e!2181958 (and tp!1087550 tp!1087552))))

(declare-fun b!3525017 () Bool)

(declare-fun e!2181964 () Bool)

(declare-fun tp!1087551 () Bool)

(assert (=> b!3525017 (= e!2181964 (and e!2181985 tp!1087551))))

(declare-fun b!3525018 () Bool)

(declare-fun e!2181979 () Bool)

(assert (=> b!3525018 (= e!2181979 e!2181983)))

(declare-fun res!1421792 () Bool)

(assert (=> b!3525018 (=> res!1421792 e!2181983)))

(declare-fun isEmpty!21835 (BalanceConc!22294) Bool)

(assert (=> b!3525018 (= res!1421792 (isEmpty!21835 (_1!21741 (lex!2397 thiss!18206 rules!2135 lt!1204381))))))

(assert (=> b!3525018 (= lt!1204381 (seqFromList!4017 lt!1204378))))

(declare-fun b!3525019 () Bool)

(declare-fun res!1421796 () Bool)

(assert (=> b!3525019 (=> (not res!1421796) (not e!2181970))))

(declare-fun isEmpty!21836 (List!37494) Bool)

(assert (=> b!3525019 (= res!1421796 (not (isEmpty!21836 rules!2135)))))

(declare-fun b!3525020 () Bool)

(declare-fun res!1421816 () Bool)

(assert (=> b!3525020 (=> (not res!1421816) (not e!2181970))))

(declare-fun rulesProduceEachTokenIndividually!1522 (LexerInterface!5071 List!37494 BalanceConc!22294) Bool)

(declare-fun seqFromList!4018 (List!37495) BalanceConc!22294)

(assert (=> b!3525020 (= res!1421816 (rulesProduceEachTokenIndividually!1522 thiss!18206 rules!2135 (seqFromList!4018 tokens!494)))))

(declare-fun b!3525021 () Bool)

(declare-fun isEmpty!21837 (BalanceConc!22292) Bool)

(assert (=> b!3525021 (= e!2181982 (isEmpty!21837 (_2!21741 lt!1204370)))))

(declare-fun b!3525022 () Bool)

(assert (=> b!3525022 (= e!2181971 (= (rule!8134 separatorToken!241) lt!1204371))))

(declare-fun e!2181967 () Bool)

(assert (=> b!3525023 (= e!2181967 (and tp!1087553 tp!1087547))))

(declare-fun b!3525024 () Bool)

(declare-fun Unit!53058 () Unit!53054)

(assert (=> b!3525024 (= e!2181966 Unit!53058)))

(declare-fun lt!1204379 () Unit!53054)

(assert (=> b!3525024 (= lt!1204379 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!540 (regex!5482 (rule!8134 separatorToken!241)) lt!1204340 lt!1204357))))

(declare-fun res!1421802 () Bool)

(assert (=> b!3525024 (= res!1421802 (not (matchR!4825 (regex!5482 (rule!8134 separatorToken!241)) lt!1204340)))))

(declare-fun e!2181990 () Bool)

(assert (=> b!3525024 (=> (not res!1421802) (not e!2181990))))

(assert (=> b!3525024 e!2181990))

(declare-fun b!3525025 () Bool)

(declare-fun e!2181989 () Bool)

(declare-fun lt!1204358 () Rule!10764)

(assert (=> b!3525025 (= e!2181989 (= (rule!8134 (h!42791 (t!282384 tokens!494))) lt!1204358))))

(declare-fun e!2181984 () Bool)

(declare-fun e!2181962 () Bool)

(declare-fun tp!1087548 () Bool)

(declare-fun b!3525026 () Bool)

(assert (=> b!3525026 (= e!2181984 (and (inv!21 (value!176697 (h!42791 tokens!494))) e!2181962 tp!1087548))))

(declare-fun b!3525027 () Bool)

(declare-fun res!1421791 () Bool)

(assert (=> b!3525027 (=> (not res!1421791) (not e!2181970))))

(declare-fun rulesInvariant!4468 (LexerInterface!5071 List!37494) Bool)

(assert (=> b!3525027 (= res!1421791 (rulesInvariant!4468 thiss!18206 rules!2135))))

(declare-fun b!3525028 () Bool)

(declare-fun res!1421797 () Bool)

(assert (=> b!3525028 (=> (not res!1421797) (not e!2181970))))

(declare-fun sepAndNonSepRulesDisjointChars!1676 (List!37494 List!37494) Bool)

(assert (=> b!3525028 (= res!1421797 (sepAndNonSepRulesDisjointChars!1676 rules!2135 rules!2135))))

(declare-fun b!3525029 () Bool)

(declare-fun res!1421789 () Bool)

(assert (=> b!3525029 (=> res!1421789 e!2181979)))

(assert (=> b!3525029 (= res!1421789 (not (rulesProduceIndividualToken!2563 thiss!18206 rules!2135 (h!42791 tokens!494))))))

(declare-fun b!3525030 () Bool)

(assert (=> b!3525030 (= e!2181987 (not (isEmpty!21837 (_2!21741 lt!1204347))))))

(declare-fun b!3525031 () Bool)

(declare-fun tp!1087554 () Bool)

(assert (=> b!3525031 (= e!2181962 (and tp!1087554 (inv!50605 (tag!6122 (rule!8134 (h!42791 tokens!494)))) (inv!50608 (transformation!5482 (rule!8134 (h!42791 tokens!494)))) e!2181967))))

(declare-fun res!1421808 () Bool)

(assert (=> b!3525032 (=> (not res!1421808) (not e!2181970))))

(declare-fun forall!8041 (List!37495 Int) Bool)

(assert (=> b!3525032 (= res!1421808 (forall!8041 tokens!494 lambda!122858))))

(declare-fun b!3525033 () Bool)

(assert (=> b!3525033 (= e!2181972 e!2181989)))

(declare-fun res!1421804 () Bool)

(assert (=> b!3525033 (=> (not res!1421804) (not e!2181989))))

(assert (=> b!3525033 (= res!1421804 (matchR!4825 (regex!5482 lt!1204358) lt!1204339))))

(assert (=> b!3525033 (= lt!1204358 (get!12000 lt!1204356))))

(declare-fun b!3525034 () Bool)

(declare-fun res!1421788 () Bool)

(assert (=> b!3525034 (=> (not res!1421788) (not e!2181970))))

(assert (=> b!3525034 (= res!1421788 (isSeparator!5482 (rule!8134 separatorToken!241)))))

(declare-fun res!1421794 () Bool)

(assert (=> start!327530 (=> (not res!1421794) (not e!2181970))))

(assert (=> start!327530 (= res!1421794 ((_ is Lexer!5069) thiss!18206))))

(assert (=> start!327530 e!2181970))

(assert (=> start!327530 true))

(assert (=> start!327530 e!2181964))

(declare-fun e!2181986 () Bool)

(assert (=> start!327530 e!2181986))

(declare-fun inv!50609 (Token!10330) Bool)

(assert (=> start!327530 (and (inv!50609 separatorToken!241) e!2181957)))

(declare-fun b!3525035 () Bool)

(declare-fun Unit!53059 () Unit!53054)

(assert (=> b!3525035 (= e!2181966 Unit!53059)))

(declare-fun b!3525036 () Bool)

(assert (=> b!3525036 (= e!2181973 e!2181960)))

(declare-fun res!1421801 () Bool)

(assert (=> b!3525036 (=> res!1421801 e!2181960)))

(declare-fun printWithSeparatorTokenList!358 (LexerInterface!5071 List!37495 Token!10330) List!37493)

(assert (=> b!3525036 (= res!1421801 (not (= lt!1204343 (++!9265 (++!9265 lt!1204339 lt!1204340) (printWithSeparatorTokenList!358 thiss!18206 (t!282384 (t!282384 tokens!494)) separatorToken!241)))))))

(declare-fun charsOf!3496 (Token!10330) BalanceConc!22292)

(assert (=> b!3525036 (= lt!1204339 (list!13673 (charsOf!3496 (h!42791 (t!282384 tokens!494)))))))

(assert (=> b!3525036 (= lt!1204344 (++!9265 lt!1204340 lt!1204343))))

(assert (=> b!3525036 (= lt!1204340 (list!13673 (charsOf!3496 separatorToken!241)))))

(assert (=> b!3525036 (= lt!1204343 (printWithSeparatorTokenList!358 thiss!18206 (t!282384 tokens!494) separatorToken!241))))

(assert (=> b!3525036 (= lt!1204349 (printWithSeparatorTokenList!358 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3525037 () Bool)

(assert (=> b!3525037 (= e!2181991 e!2181961)))

(declare-fun res!1421815 () Bool)

(assert (=> b!3525037 (=> res!1421815 e!2181961)))

(assert (=> b!3525037 (= res!1421815 (not (= lt!1204349 lt!1204374)))))

(assert (=> b!3525037 (= lt!1204377 lt!1204374)))

(assert (=> b!3525037 (= lt!1204374 (++!9265 lt!1204378 lt!1204344))))

(declare-fun lt!1204353 () Unit!53054)

(declare-fun lemmaConcatAssociativity!2016 (List!37493 List!37493 List!37493) Unit!53054)

(assert (=> b!3525037 (= lt!1204353 (lemmaConcatAssociativity!2016 lt!1204378 lt!1204340 lt!1204343))))

(declare-fun b!3525038 () Bool)

(assert (=> b!3525038 (= e!2181990 false)))

(declare-fun b!3525039 () Bool)

(assert (=> b!3525039 (= e!2181965 (= (rule!8134 (h!42791 tokens!494)) lt!1204354))))

(declare-fun b!3525040 () Bool)

(declare-fun res!1421799 () Bool)

(assert (=> b!3525040 (=> (not res!1421799) (not e!2181982))))

(assert (=> b!3525040 (= res!1421799 (= (apply!8915 (_1!21741 lt!1204370) 0) separatorToken!241))))

(declare-fun b!3525041 () Bool)

(declare-fun tp!1087556 () Bool)

(assert (=> b!3525041 (= e!2181986 (and (inv!50609 (h!42791 tokens!494)) e!2181984 tp!1087556))))

(declare-fun b!3525042 () Bool)

(assert (=> b!3525042 (= e!2181959 e!2181979)))

(declare-fun res!1421805 () Bool)

(assert (=> b!3525042 (=> res!1421805 e!2181979)))

(assert (=> b!3525042 (= res!1421805 (or (not (= lt!1204360 lt!1204378)) (not (= lt!1204373 lt!1204378))))))

(assert (=> b!3525042 (= lt!1204378 (list!13673 (charsOf!3496 (h!42791 tokens!494))))))

(declare-fun b!3525043 () Bool)

(declare-fun res!1421807 () Bool)

(assert (=> b!3525043 (=> (not res!1421807) (not e!2181970))))

(assert (=> b!3525043 (= res!1421807 (and (not ((_ is Nil!37371) tokens!494)) (not ((_ is Nil!37371) (t!282384 tokens!494)))))))

(assert (= (and start!327530 res!1421794) b!3525019))

(assert (= (and b!3525019 res!1421796) b!3525027))

(assert (= (and b!3525027 res!1421791) b!3525020))

(assert (= (and b!3525020 res!1421816) b!3525007))

(assert (= (and b!3525007 res!1421800) b!3525034))

(assert (= (and b!3525034 res!1421788) b!3525032))

(assert (= (and b!3525032 res!1421808) b!3525028))

(assert (= (and b!3525028 res!1421797) b!3525043))

(assert (= (and b!3525043 res!1421807) b!3525002))

(assert (= (and b!3525002 (not res!1421795)) b!3525042))

(assert (= (and b!3525042 (not res!1421805)) b!3525029))

(assert (= (and b!3525029 (not res!1421789)) b!3525018))

(assert (= (and b!3525018 (not res!1421792)) b!3525006))

(assert (= (and b!3525006 (not res!1421798)) b!3525036))

(assert (= (and b!3525036 (not res!1421801)) b!3525015))

(assert (= (and b!3525015 (not res!1421814)) b!3525037))

(assert (= (and b!3525037 (not res!1421815)) b!3525005))

(assert (= (and b!3525005 res!1421811) b!3525011))

(assert (= (and b!3525011 res!1421790) b!3525039))

(assert (= (and b!3525005 res!1421809) b!3525003))

(assert (= (and b!3525003 res!1421803) b!3525022))

(assert (= (and b!3525005 c!607686) b!3525024))

(assert (= (and b!3525005 (not c!607686)) b!3525035))

(assert (= (and b!3525024 res!1421802) b!3525038))

(assert (= (and b!3525005 res!1421806) b!3525040))

(assert (= (and b!3525040 res!1421799) b!3525021))

(assert (= (and b!3525005 (not res!1421812)) b!3525014))

(assert (= (and b!3525014 (not res!1421813)) b!3525030))

(assert (= (and b!3525005 res!1421793) b!3525033))

(assert (= (and b!3525033 res!1421804) b!3525025))

(assert (= (and b!3525005 c!607687) b!3525004))

(assert (= (and b!3525005 (not c!607687)) b!3525008))

(assert (= (and b!3525004 res!1421810) b!3525001))

(assert (= b!3525013 b!3525016))

(assert (= b!3525017 b!3525013))

(assert (= (and start!327530 ((_ is Cons!37370) rules!2135)) b!3525017))

(assert (= b!3525031 b!3525023))

(assert (= b!3525026 b!3525031))

(assert (= b!3525041 b!3525026))

(assert (= (and start!327530 ((_ is Cons!37371) tokens!494)) b!3525041))

(assert (= b!3525009 b!3525010))

(assert (= b!3525012 b!3525009))

(assert (= start!327530 b!3525012))

(declare-fun m!3978025 () Bool)

(assert (=> b!3525003 m!3978025))

(declare-fun m!3978027 () Bool)

(assert (=> b!3525003 m!3978027))

(declare-fun m!3978029 () Bool)

(assert (=> b!3525030 m!3978029))

(declare-fun m!3978031 () Bool)

(assert (=> b!3525033 m!3978031))

(declare-fun m!3978033 () Bool)

(assert (=> b!3525033 m!3978033))

(declare-fun m!3978035 () Bool)

(assert (=> b!3525040 m!3978035))

(declare-fun m!3978037 () Bool)

(assert (=> b!3525011 m!3978037))

(declare-fun m!3978039 () Bool)

(assert (=> b!3525011 m!3978039))

(declare-fun m!3978041 () Bool)

(assert (=> b!3525013 m!3978041))

(declare-fun m!3978043 () Bool)

(assert (=> b!3525013 m!3978043))

(declare-fun m!3978045 () Bool)

(assert (=> b!3525028 m!3978045))

(declare-fun m!3978047 () Bool)

(assert (=> b!3525009 m!3978047))

(declare-fun m!3978049 () Bool)

(assert (=> b!3525009 m!3978049))

(declare-fun m!3978051 () Bool)

(assert (=> b!3525036 m!3978051))

(declare-fun m!3978053 () Bool)

(assert (=> b!3525036 m!3978053))

(declare-fun m!3978055 () Bool)

(assert (=> b!3525036 m!3978055))

(assert (=> b!3525036 m!3978051))

(declare-fun m!3978057 () Bool)

(assert (=> b!3525036 m!3978057))

(declare-fun m!3978059 () Bool)

(assert (=> b!3525036 m!3978059))

(declare-fun m!3978061 () Bool)

(assert (=> b!3525036 m!3978061))

(declare-fun m!3978063 () Bool)

(assert (=> b!3525036 m!3978063))

(declare-fun m!3978065 () Bool)

(assert (=> b!3525036 m!3978065))

(assert (=> b!3525036 m!3978061))

(assert (=> b!3525036 m!3978053))

(declare-fun m!3978067 () Bool)

(assert (=> b!3525036 m!3978067))

(assert (=> b!3525036 m!3978059))

(declare-fun m!3978069 () Bool)

(assert (=> b!3525036 m!3978069))

(declare-fun m!3978071 () Bool)

(assert (=> b!3525021 m!3978071))

(declare-fun m!3978073 () Bool)

(assert (=> b!3525020 m!3978073))

(assert (=> b!3525020 m!3978073))

(declare-fun m!3978075 () Bool)

(assert (=> b!3525020 m!3978075))

(declare-fun m!3978077 () Bool)

(assert (=> b!3525014 m!3978077))

(declare-fun m!3978079 () Bool)

(assert (=> b!3525006 m!3978079))

(declare-fun m!3978081 () Bool)

(assert (=> b!3525006 m!3978081))

(declare-fun m!3978083 () Bool)

(assert (=> b!3525041 m!3978083))

(declare-fun m!3978085 () Bool)

(assert (=> b!3525004 m!3978085))

(declare-fun m!3978087 () Bool)

(assert (=> b!3525004 m!3978087))

(declare-fun m!3978089 () Bool)

(assert (=> b!3525015 m!3978089))

(assert (=> b!3525015 m!3978089))

(declare-fun m!3978091 () Bool)

(assert (=> b!3525015 m!3978091))

(declare-fun m!3978093 () Bool)

(assert (=> b!3525026 m!3978093))

(declare-fun m!3978095 () Bool)

(assert (=> start!327530 m!3978095))

(declare-fun m!3978097 () Bool)

(assert (=> b!3525018 m!3978097))

(declare-fun m!3978099 () Bool)

(assert (=> b!3525018 m!3978099))

(declare-fun m!3978101 () Bool)

(assert (=> b!3525018 m!3978101))

(declare-fun m!3978103 () Bool)

(assert (=> b!3525037 m!3978103))

(declare-fun m!3978105 () Bool)

(assert (=> b!3525037 m!3978105))

(declare-fun m!3978107 () Bool)

(assert (=> b!3525024 m!3978107))

(declare-fun m!3978109 () Bool)

(assert (=> b!3525024 m!3978109))

(declare-fun m!3978111 () Bool)

(assert (=> b!3525032 m!3978111))

(declare-fun m!3978113 () Bool)

(assert (=> b!3525019 m!3978113))

(declare-fun m!3978115 () Bool)

(assert (=> b!3525031 m!3978115))

(declare-fun m!3978117 () Bool)

(assert (=> b!3525031 m!3978117))

(declare-fun m!3978119 () Bool)

(assert (=> b!3525005 m!3978119))

(declare-fun m!3978121 () Bool)

(assert (=> b!3525005 m!3978121))

(declare-fun m!3978123 () Bool)

(assert (=> b!3525005 m!3978123))

(declare-fun m!3978125 () Bool)

(assert (=> b!3525005 m!3978125))

(declare-fun m!3978127 () Bool)

(assert (=> b!3525005 m!3978127))

(declare-fun m!3978129 () Bool)

(assert (=> b!3525005 m!3978129))

(declare-fun m!3978131 () Bool)

(assert (=> b!3525005 m!3978131))

(declare-fun m!3978133 () Bool)

(assert (=> b!3525005 m!3978133))

(declare-fun m!3978135 () Bool)

(assert (=> b!3525005 m!3978135))

(declare-fun m!3978137 () Bool)

(assert (=> b!3525005 m!3978137))

(declare-fun m!3978139 () Bool)

(assert (=> b!3525005 m!3978139))

(declare-fun m!3978141 () Bool)

(assert (=> b!3525005 m!3978141))

(declare-fun m!3978143 () Bool)

(assert (=> b!3525005 m!3978143))

(declare-fun m!3978145 () Bool)

(assert (=> b!3525005 m!3978145))

(declare-fun m!3978147 () Bool)

(assert (=> b!3525005 m!3978147))

(declare-fun m!3978149 () Bool)

(assert (=> b!3525005 m!3978149))

(declare-fun m!3978151 () Bool)

(assert (=> b!3525005 m!3978151))

(assert (=> b!3525005 m!3978129))

(declare-fun m!3978153 () Bool)

(assert (=> b!3525005 m!3978153))

(declare-fun m!3978155 () Bool)

(assert (=> b!3525005 m!3978155))

(declare-fun m!3978157 () Bool)

(assert (=> b!3525005 m!3978157))

(declare-fun m!3978159 () Bool)

(assert (=> b!3525005 m!3978159))

(declare-fun m!3978161 () Bool)

(assert (=> b!3525005 m!3978161))

(assert (=> b!3525005 m!3978135))

(declare-fun m!3978163 () Bool)

(assert (=> b!3525005 m!3978163))

(declare-fun m!3978165 () Bool)

(assert (=> b!3525005 m!3978165))

(declare-fun m!3978167 () Bool)

(assert (=> b!3525005 m!3978167))

(declare-fun m!3978169 () Bool)

(assert (=> b!3525005 m!3978169))

(declare-fun m!3978171 () Bool)

(assert (=> b!3525005 m!3978171))

(declare-fun m!3978173 () Bool)

(assert (=> b!3525005 m!3978173))

(declare-fun m!3978175 () Bool)

(assert (=> b!3525005 m!3978175))

(declare-fun m!3978177 () Bool)

(assert (=> b!3525005 m!3978177))

(declare-fun m!3978179 () Bool)

(assert (=> b!3525005 m!3978179))

(declare-fun m!3978181 () Bool)

(assert (=> b!3525005 m!3978181))

(assert (=> b!3525005 m!3978161))

(declare-fun m!3978183 () Bool)

(assert (=> b!3525005 m!3978183))

(declare-fun m!3978185 () Bool)

(assert (=> b!3525005 m!3978185))

(declare-fun m!3978187 () Bool)

(assert (=> b!3525005 m!3978187))

(declare-fun m!3978189 () Bool)

(assert (=> b!3525005 m!3978189))

(declare-fun m!3978191 () Bool)

(assert (=> b!3525005 m!3978191))

(declare-fun m!3978193 () Bool)

(assert (=> b!3525005 m!3978193))

(declare-fun m!3978195 () Bool)

(assert (=> b!3525005 m!3978195))

(declare-fun m!3978197 () Bool)

(assert (=> b!3525005 m!3978197))

(declare-fun m!3978199 () Bool)

(assert (=> b!3525005 m!3978199))

(declare-fun m!3978201 () Bool)

(assert (=> b!3525005 m!3978201))

(declare-fun m!3978203 () Bool)

(assert (=> b!3525005 m!3978203))

(assert (=> b!3525005 m!3978151))

(declare-fun m!3978205 () Bool)

(assert (=> b!3525005 m!3978205))

(declare-fun m!3978207 () Bool)

(assert (=> b!3525002 m!3978207))

(declare-fun m!3978209 () Bool)

(assert (=> b!3525002 m!3978209))

(declare-fun m!3978211 () Bool)

(assert (=> b!3525002 m!3978211))

(declare-fun m!3978213 () Bool)

(assert (=> b!3525002 m!3978213))

(declare-fun m!3978215 () Bool)

(assert (=> b!3525002 m!3978215))

(declare-fun m!3978217 () Bool)

(assert (=> b!3525012 m!3978217))

(declare-fun m!3978219 () Bool)

(assert (=> b!3525042 m!3978219))

(assert (=> b!3525042 m!3978219))

(declare-fun m!3978221 () Bool)

(assert (=> b!3525042 m!3978221))

(declare-fun m!3978223 () Bool)

(assert (=> b!3525027 m!3978223))

(declare-fun m!3978225 () Bool)

(assert (=> b!3525007 m!3978225))

(declare-fun m!3978227 () Bool)

(assert (=> b!3525029 m!3978227))

(check-sat (not b!3525024) b_and!251301 (not b!3525018) (not b!3525030) (not b!3525011) (not b!3525019) (not b!3525033) (not b!3525017) (not b!3525021) (not b!3525014) (not b!3525042) (not b!3525026) (not b!3525005) (not b_next!91539) (not b!3525037) (not b!3525052) (not b!3525031) (not b!3525040) (not b!3525004) b_and!251297 b_and!251295 (not b!3525013) (not b!3525041) b_and!251303 b_and!251305 (not b!3525032) (not b_next!91541) (not b!3525020) (not b!3525006) (not b!3525003) (not b!3525009) (not b_next!91537) (not b!3525029) (not b!3525007) (not b!3525015) (not b_next!91543) (not b!3525027) (not b_next!91547) b_and!251299 (not b!3525036) (not start!327530) (not b!3525002) (not b!3525028) (not b_next!91545) (not b!3525012))
(check-sat (not b_next!91539) b_and!251301 (not b_next!91537) (not b_next!91543) (not b_next!91545) b_and!251297 b_and!251295 b_and!251303 b_and!251305 (not b_next!91541) (not b_next!91547) b_and!251299)
(get-model)

(declare-fun b!3525144 () Bool)

(declare-fun e!2182053 () Bool)

(assert (=> b!3525144 (= e!2182053 (not (= (head!7393 lt!1204339) (c!607688 (regex!5482 lt!1204358)))))))

(declare-fun bm!254676 () Bool)

(declare-fun call!254681 () Bool)

(declare-fun isEmpty!21839 (List!37493) Bool)

(assert (=> bm!254676 (= call!254681 (isEmpty!21839 lt!1204339))))

(declare-fun b!3525145 () Bool)

(declare-fun e!2182051 () Bool)

(declare-fun nullable!3520 (Regex!10241) Bool)

(assert (=> b!3525145 (= e!2182051 (nullable!3520 (regex!5482 lt!1204358)))))

(declare-fun b!3525146 () Bool)

(declare-fun e!2182052 () Bool)

(declare-fun lt!1204422 () Bool)

(assert (=> b!3525146 (= e!2182052 (= lt!1204422 call!254681))))

(declare-fun b!3525147 () Bool)

(declare-fun derivativeStep!3073 (Regex!10241 C!20668) Regex!10241)

(declare-fun tail!5496 (List!37493) List!37493)

(assert (=> b!3525147 (= e!2182051 (matchR!4825 (derivativeStep!3073 (regex!5482 lt!1204358) (head!7393 lt!1204339)) (tail!5496 lt!1204339)))))

(declare-fun b!3525148 () Bool)

(declare-fun res!1421878 () Bool)

(declare-fun e!2182047 () Bool)

(assert (=> b!3525148 (=> (not res!1421878) (not e!2182047))))

(assert (=> b!3525148 (= res!1421878 (isEmpty!21839 (tail!5496 lt!1204339)))))

(declare-fun b!3525149 () Bool)

(declare-fun res!1421879 () Bool)

(declare-fun e!2182049 () Bool)

(assert (=> b!3525149 (=> res!1421879 e!2182049)))

(assert (=> b!3525149 (= res!1421879 (not ((_ is ElementMatch!10241) (regex!5482 lt!1204358))))))

(declare-fun e!2182048 () Bool)

(assert (=> b!3525149 (= e!2182048 e!2182049)))

(declare-fun b!3525150 () Bool)

(declare-fun res!1421881 () Bool)

(assert (=> b!3525150 (=> (not res!1421881) (not e!2182047))))

(assert (=> b!3525150 (= res!1421881 (not call!254681))))

(declare-fun b!3525151 () Bool)

(declare-fun e!2182050 () Bool)

(assert (=> b!3525151 (= e!2182049 e!2182050)))

(declare-fun res!1421880 () Bool)

(assert (=> b!3525151 (=> (not res!1421880) (not e!2182050))))

(assert (=> b!3525151 (= res!1421880 (not lt!1204422))))

(declare-fun b!3525152 () Bool)

(assert (=> b!3525152 (= e!2182050 e!2182053)))

(declare-fun res!1421877 () Bool)

(assert (=> b!3525152 (=> res!1421877 e!2182053)))

(assert (=> b!3525152 (= res!1421877 call!254681)))

(declare-fun d!1028918 () Bool)

(assert (=> d!1028918 e!2182052))

(declare-fun c!607713 () Bool)

(assert (=> d!1028918 (= c!607713 ((_ is EmptyExpr!10241) (regex!5482 lt!1204358)))))

(assert (=> d!1028918 (= lt!1204422 e!2182051)))

(declare-fun c!607714 () Bool)

(assert (=> d!1028918 (= c!607714 (isEmpty!21839 lt!1204339))))

(declare-fun validRegex!4676 (Regex!10241) Bool)

(assert (=> d!1028918 (validRegex!4676 (regex!5482 lt!1204358))))

(assert (=> d!1028918 (= (matchR!4825 (regex!5482 lt!1204358) lt!1204339) lt!1204422)))

(declare-fun b!3525143 () Bool)

(assert (=> b!3525143 (= e!2182052 e!2182048)))

(declare-fun c!607712 () Bool)

(assert (=> b!3525143 (= c!607712 ((_ is EmptyLang!10241) (regex!5482 lt!1204358)))))

(declare-fun b!3525153 () Bool)

(assert (=> b!3525153 (= e!2182047 (= (head!7393 lt!1204339) (c!607688 (regex!5482 lt!1204358))))))

(declare-fun b!3525154 () Bool)

(declare-fun res!1421874 () Bool)

(assert (=> b!3525154 (=> res!1421874 e!2182049)))

(assert (=> b!3525154 (= res!1421874 e!2182047)))

(declare-fun res!1421876 () Bool)

(assert (=> b!3525154 (=> (not res!1421876) (not e!2182047))))

(assert (=> b!3525154 (= res!1421876 lt!1204422)))

(declare-fun b!3525155 () Bool)

(assert (=> b!3525155 (= e!2182048 (not lt!1204422))))

(declare-fun b!3525156 () Bool)

(declare-fun res!1421875 () Bool)

(assert (=> b!3525156 (=> res!1421875 e!2182053)))

(assert (=> b!3525156 (= res!1421875 (not (isEmpty!21839 (tail!5496 lt!1204339))))))

(assert (= (and d!1028918 c!607714) b!3525145))

(assert (= (and d!1028918 (not c!607714)) b!3525147))

(assert (= (and d!1028918 c!607713) b!3525146))

(assert (= (and d!1028918 (not c!607713)) b!3525143))

(assert (= (and b!3525143 c!607712) b!3525155))

(assert (= (and b!3525143 (not c!607712)) b!3525149))

(assert (= (and b!3525149 (not res!1421879)) b!3525154))

(assert (= (and b!3525154 res!1421876) b!3525150))

(assert (= (and b!3525150 res!1421881) b!3525148))

(assert (= (and b!3525148 res!1421878) b!3525153))

(assert (= (and b!3525154 (not res!1421874)) b!3525151))

(assert (= (and b!3525151 res!1421880) b!3525152))

(assert (= (and b!3525152 (not res!1421877)) b!3525156))

(assert (= (and b!3525156 (not res!1421875)) b!3525144))

(assert (= (or b!3525146 b!3525150 b!3525152) bm!254676))

(declare-fun m!3978301 () Bool)

(assert (=> b!3525145 m!3978301))

(assert (=> b!3525144 m!3978195))

(declare-fun m!3978303 () Bool)

(assert (=> b!3525148 m!3978303))

(assert (=> b!3525148 m!3978303))

(declare-fun m!3978305 () Bool)

(assert (=> b!3525148 m!3978305))

(declare-fun m!3978307 () Bool)

(assert (=> d!1028918 m!3978307))

(declare-fun m!3978309 () Bool)

(assert (=> d!1028918 m!3978309))

(assert (=> bm!254676 m!3978307))

(assert (=> b!3525156 m!3978303))

(assert (=> b!3525156 m!3978303))

(assert (=> b!3525156 m!3978305))

(assert (=> b!3525147 m!3978195))

(assert (=> b!3525147 m!3978195))

(declare-fun m!3978311 () Bool)

(assert (=> b!3525147 m!3978311))

(assert (=> b!3525147 m!3978303))

(assert (=> b!3525147 m!3978311))

(assert (=> b!3525147 m!3978303))

(declare-fun m!3978313 () Bool)

(assert (=> b!3525147 m!3978313))

(assert (=> b!3525153 m!3978195))

(assert (=> b!3525033 d!1028918))

(declare-fun d!1028924 () Bool)

(assert (=> d!1028924 (= (get!12000 lt!1204356) (v!37124 lt!1204356))))

(assert (=> b!3525033 d!1028924))

(declare-fun b!3525172 () Bool)

(declare-fun e!2182067 () Bool)

(assert (=> b!3525172 (= e!2182067 (not (= (head!7393 lt!1204378) (c!607688 (regex!5482 lt!1204354)))))))

(declare-fun bm!254678 () Bool)

(declare-fun call!254683 () Bool)

(assert (=> bm!254678 (= call!254683 (isEmpty!21839 lt!1204378))))

(declare-fun b!3525173 () Bool)

(declare-fun e!2182065 () Bool)

(assert (=> b!3525173 (= e!2182065 (nullable!3520 (regex!5482 lt!1204354)))))

(declare-fun b!3525174 () Bool)

(declare-fun e!2182066 () Bool)

(declare-fun lt!1204424 () Bool)

(assert (=> b!3525174 (= e!2182066 (= lt!1204424 call!254683))))

(declare-fun b!3525175 () Bool)

(assert (=> b!3525175 (= e!2182065 (matchR!4825 (derivativeStep!3073 (regex!5482 lt!1204354) (head!7393 lt!1204378)) (tail!5496 lt!1204378)))))

(declare-fun b!3525176 () Bool)

(declare-fun res!1421894 () Bool)

(declare-fun e!2182061 () Bool)

(assert (=> b!3525176 (=> (not res!1421894) (not e!2182061))))

(assert (=> b!3525176 (= res!1421894 (isEmpty!21839 (tail!5496 lt!1204378)))))

(declare-fun b!3525177 () Bool)

(declare-fun res!1421895 () Bool)

(declare-fun e!2182063 () Bool)

(assert (=> b!3525177 (=> res!1421895 e!2182063)))

(assert (=> b!3525177 (= res!1421895 (not ((_ is ElementMatch!10241) (regex!5482 lt!1204354))))))

(declare-fun e!2182062 () Bool)

(assert (=> b!3525177 (= e!2182062 e!2182063)))

(declare-fun b!3525178 () Bool)

(declare-fun res!1421897 () Bool)

(assert (=> b!3525178 (=> (not res!1421897) (not e!2182061))))

(assert (=> b!3525178 (= res!1421897 (not call!254683))))

(declare-fun b!3525179 () Bool)

(declare-fun e!2182064 () Bool)

(assert (=> b!3525179 (= e!2182063 e!2182064)))

(declare-fun res!1421896 () Bool)

(assert (=> b!3525179 (=> (not res!1421896) (not e!2182064))))

(assert (=> b!3525179 (= res!1421896 (not lt!1204424))))

(declare-fun b!3525180 () Bool)

(assert (=> b!3525180 (= e!2182064 e!2182067)))

(declare-fun res!1421893 () Bool)

(assert (=> b!3525180 (=> res!1421893 e!2182067)))

(assert (=> b!3525180 (= res!1421893 call!254683)))

(declare-fun d!1028926 () Bool)

(assert (=> d!1028926 e!2182066))

(declare-fun c!607719 () Bool)

(assert (=> d!1028926 (= c!607719 ((_ is EmptyExpr!10241) (regex!5482 lt!1204354)))))

(assert (=> d!1028926 (= lt!1204424 e!2182065)))

(declare-fun c!607720 () Bool)

(assert (=> d!1028926 (= c!607720 (isEmpty!21839 lt!1204378))))

(assert (=> d!1028926 (validRegex!4676 (regex!5482 lt!1204354))))

(assert (=> d!1028926 (= (matchR!4825 (regex!5482 lt!1204354) lt!1204378) lt!1204424)))

(declare-fun b!3525171 () Bool)

(assert (=> b!3525171 (= e!2182066 e!2182062)))

(declare-fun c!607718 () Bool)

(assert (=> b!3525171 (= c!607718 ((_ is EmptyLang!10241) (regex!5482 lt!1204354)))))

(declare-fun b!3525181 () Bool)

(assert (=> b!3525181 (= e!2182061 (= (head!7393 lt!1204378) (c!607688 (regex!5482 lt!1204354))))))

(declare-fun b!3525182 () Bool)

(declare-fun res!1421890 () Bool)

(assert (=> b!3525182 (=> res!1421890 e!2182063)))

(assert (=> b!3525182 (= res!1421890 e!2182061)))

(declare-fun res!1421892 () Bool)

(assert (=> b!3525182 (=> (not res!1421892) (not e!2182061))))

(assert (=> b!3525182 (= res!1421892 lt!1204424)))

(declare-fun b!3525183 () Bool)

(assert (=> b!3525183 (= e!2182062 (not lt!1204424))))

(declare-fun b!3525184 () Bool)

(declare-fun res!1421891 () Bool)

(assert (=> b!3525184 (=> res!1421891 e!2182067)))

(assert (=> b!3525184 (= res!1421891 (not (isEmpty!21839 (tail!5496 lt!1204378))))))

(assert (= (and d!1028926 c!607720) b!3525173))

(assert (= (and d!1028926 (not c!607720)) b!3525175))

(assert (= (and d!1028926 c!607719) b!3525174))

(assert (= (and d!1028926 (not c!607719)) b!3525171))

(assert (= (and b!3525171 c!607718) b!3525183))

(assert (= (and b!3525171 (not c!607718)) b!3525177))

(assert (= (and b!3525177 (not res!1421895)) b!3525182))

(assert (= (and b!3525182 res!1421892) b!3525178))

(assert (= (and b!3525178 res!1421897) b!3525176))

(assert (= (and b!3525176 res!1421894) b!3525181))

(assert (= (and b!3525182 (not res!1421890)) b!3525179))

(assert (= (and b!3525179 res!1421896) b!3525180))

(assert (= (and b!3525180 (not res!1421893)) b!3525184))

(assert (= (and b!3525184 (not res!1421891)) b!3525172))

(assert (= (or b!3525174 b!3525178 b!3525180) bm!254678))

(declare-fun m!3978331 () Bool)

(assert (=> b!3525173 m!3978331))

(declare-fun m!3978333 () Bool)

(assert (=> b!3525172 m!3978333))

(declare-fun m!3978335 () Bool)

(assert (=> b!3525176 m!3978335))

(assert (=> b!3525176 m!3978335))

(declare-fun m!3978337 () Bool)

(assert (=> b!3525176 m!3978337))

(declare-fun m!3978339 () Bool)

(assert (=> d!1028926 m!3978339))

(declare-fun m!3978341 () Bool)

(assert (=> d!1028926 m!3978341))

(assert (=> bm!254678 m!3978339))

(assert (=> b!3525184 m!3978335))

(assert (=> b!3525184 m!3978335))

(assert (=> b!3525184 m!3978337))

(assert (=> b!3525175 m!3978333))

(assert (=> b!3525175 m!3978333))

(declare-fun m!3978343 () Bool)

(assert (=> b!3525175 m!3978343))

(assert (=> b!3525175 m!3978335))

(assert (=> b!3525175 m!3978343))

(assert (=> b!3525175 m!3978335))

(declare-fun m!3978351 () Bool)

(assert (=> b!3525175 m!3978351))

(assert (=> b!3525181 m!3978333))

(assert (=> b!3525011 d!1028926))

(declare-fun d!1028932 () Bool)

(assert (=> d!1028932 (= (get!12000 lt!1204355) (v!37124 lt!1204355))))

(assert (=> b!3525011 d!1028932))

(declare-fun d!1028934 () Bool)

(declare-fun res!1421910 () Bool)

(declare-fun e!2182082 () Bool)

(assert (=> d!1028934 (=> res!1421910 e!2182082)))

(assert (=> d!1028934 (= res!1421910 ((_ is Nil!37371) tokens!494))))

(assert (=> d!1028934 (= (forall!8041 tokens!494 lambda!122858) e!2182082)))

(declare-fun b!3525208 () Bool)

(declare-fun e!2182083 () Bool)

(assert (=> b!3525208 (= e!2182082 e!2182083)))

(declare-fun res!1421911 () Bool)

(assert (=> b!3525208 (=> (not res!1421911) (not e!2182083))))

(declare-fun dynLambda!15937 (Int Token!10330) Bool)

(assert (=> b!3525208 (= res!1421911 (dynLambda!15937 lambda!122858 (h!42791 tokens!494)))))

(declare-fun b!3525209 () Bool)

(assert (=> b!3525209 (= e!2182083 (forall!8041 (t!282384 tokens!494) lambda!122858))))

(assert (= (and d!1028934 (not res!1421910)) b!3525208))

(assert (= (and b!3525208 res!1421911) b!3525209))

(declare-fun b_lambda!102997 () Bool)

(assert (=> (not b_lambda!102997) (not b!3525208)))

(declare-fun m!3978371 () Bool)

(assert (=> b!3525208 m!3978371))

(declare-fun m!3978373 () Bool)

(assert (=> b!3525209 m!3978373))

(assert (=> b!3525032 d!1028934))

(declare-fun d!1028946 () Bool)

(assert (=> d!1028946 (= (inv!50605 (tag!6122 (rule!8134 (h!42791 tokens!494)))) (= (mod (str.len (value!176696 (tag!6122 (rule!8134 (h!42791 tokens!494))))) 2) 0))))

(assert (=> b!3525031 d!1028946))

(declare-fun d!1028950 () Bool)

(declare-fun res!1421917 () Bool)

(declare-fun e!2182089 () Bool)

(assert (=> d!1028950 (=> (not res!1421917) (not e!2182089))))

(declare-fun semiInverseModEq!2315 (Int Int) Bool)

(assert (=> d!1028950 (= res!1421917 (semiInverseModEq!2315 (toChars!7597 (transformation!5482 (rule!8134 (h!42791 tokens!494)))) (toValue!7738 (transformation!5482 (rule!8134 (h!42791 tokens!494))))))))

(assert (=> d!1028950 (= (inv!50608 (transformation!5482 (rule!8134 (h!42791 tokens!494)))) e!2182089)))

(declare-fun b!3525215 () Bool)

(declare-fun equivClasses!2214 (Int Int) Bool)

(assert (=> b!3525215 (= e!2182089 (equivClasses!2214 (toChars!7597 (transformation!5482 (rule!8134 (h!42791 tokens!494)))) (toValue!7738 (transformation!5482 (rule!8134 (h!42791 tokens!494))))))))

(assert (= (and d!1028950 res!1421917) b!3525215))

(declare-fun m!3978379 () Bool)

(assert (=> d!1028950 m!3978379))

(declare-fun m!3978381 () Bool)

(assert (=> b!3525215 m!3978381))

(assert (=> b!3525031 d!1028950))

(declare-fun d!1028954 () Bool)

(assert (=> d!1028954 (= (inv!50605 (tag!6122 (rule!8134 separatorToken!241))) (= (mod (str.len (value!176696 (tag!6122 (rule!8134 separatorToken!241)))) 2) 0))))

(assert (=> b!3525009 d!1028954))

(declare-fun d!1028956 () Bool)

(declare-fun res!1421918 () Bool)

(declare-fun e!2182090 () Bool)

(assert (=> d!1028956 (=> (not res!1421918) (not e!2182090))))

(assert (=> d!1028956 (= res!1421918 (semiInverseModEq!2315 (toChars!7597 (transformation!5482 (rule!8134 separatorToken!241))) (toValue!7738 (transformation!5482 (rule!8134 separatorToken!241)))))))

(assert (=> d!1028956 (= (inv!50608 (transformation!5482 (rule!8134 separatorToken!241))) e!2182090)))

(declare-fun b!3525216 () Bool)

(assert (=> b!3525216 (= e!2182090 (equivClasses!2214 (toChars!7597 (transformation!5482 (rule!8134 separatorToken!241))) (toValue!7738 (transformation!5482 (rule!8134 separatorToken!241)))))))

(assert (= (and d!1028956 res!1421918) b!3525216))

(declare-fun m!3978383 () Bool)

(assert (=> d!1028956 m!3978383))

(declare-fun m!3978385 () Bool)

(assert (=> b!3525216 m!3978385))

(assert (=> b!3525009 d!1028956))

(declare-fun d!1028958 () Bool)

(declare-fun lt!1204431 () Bool)

(assert (=> d!1028958 (= lt!1204431 (isEmpty!21839 (list!13673 (_2!21741 lt!1204347))))))

(declare-fun isEmpty!21842 (Conc!11339) Bool)

(assert (=> d!1028958 (= lt!1204431 (isEmpty!21842 (c!607689 (_2!21741 lt!1204347))))))

(assert (=> d!1028958 (= (isEmpty!21837 (_2!21741 lt!1204347)) lt!1204431)))

(declare-fun bs!565642 () Bool)

(assert (= bs!565642 d!1028958))

(declare-fun m!3978387 () Bool)

(assert (=> bs!565642 m!3978387))

(assert (=> bs!565642 m!3978387))

(declare-fun m!3978389 () Bool)

(assert (=> bs!565642 m!3978389))

(declare-fun m!3978391 () Bool)

(assert (=> bs!565642 m!3978391))

(assert (=> b!3525030 d!1028958))

(declare-fun d!1028960 () Bool)

(declare-fun lt!1204442 () Bool)

(declare-fun e!2182112 () Bool)

(assert (=> d!1028960 (= lt!1204442 e!2182112)))

(declare-fun res!1421941 () Bool)

(assert (=> d!1028960 (=> (not res!1421941) (not e!2182112))))

(declare-fun list!13676 (BalanceConc!22294) List!37495)

(assert (=> d!1028960 (= res!1421941 (= (list!13676 (_1!21741 (lex!2397 thiss!18206 rules!2135 (print!2136 thiss!18206 (singletonSeq!2578 (h!42791 tokens!494)))))) (list!13676 (singletonSeq!2578 (h!42791 tokens!494)))))))

(declare-fun e!2182111 () Bool)

(assert (=> d!1028960 (= lt!1204442 e!2182111)))

(declare-fun res!1421940 () Bool)

(assert (=> d!1028960 (=> (not res!1421940) (not e!2182111))))

(declare-fun lt!1204443 () tuple2!37214)

(assert (=> d!1028960 (= res!1421940 (= (size!28439 (_1!21741 lt!1204443)) 1))))

(assert (=> d!1028960 (= lt!1204443 (lex!2397 thiss!18206 rules!2135 (print!2136 thiss!18206 (singletonSeq!2578 (h!42791 tokens!494)))))))

(assert (=> d!1028960 (not (isEmpty!21836 rules!2135))))

(assert (=> d!1028960 (= (rulesProduceIndividualToken!2563 thiss!18206 rules!2135 (h!42791 tokens!494)) lt!1204442)))

(declare-fun b!3525242 () Bool)

(declare-fun res!1421942 () Bool)

(assert (=> b!3525242 (=> (not res!1421942) (not e!2182111))))

(assert (=> b!3525242 (= res!1421942 (= (apply!8915 (_1!21741 lt!1204443) 0) (h!42791 tokens!494)))))

(declare-fun b!3525243 () Bool)

(assert (=> b!3525243 (= e!2182111 (isEmpty!21837 (_2!21741 lt!1204443)))))

(declare-fun b!3525244 () Bool)

(assert (=> b!3525244 (= e!2182112 (isEmpty!21837 (_2!21741 (lex!2397 thiss!18206 rules!2135 (print!2136 thiss!18206 (singletonSeq!2578 (h!42791 tokens!494)))))))))

(assert (= (and d!1028960 res!1421940) b!3525242))

(assert (= (and b!3525242 res!1421942) b!3525243))

(assert (= (and d!1028960 res!1421941) b!3525244))

(declare-fun m!3978425 () Bool)

(assert (=> d!1028960 m!3978425))

(assert (=> d!1028960 m!3978209))

(declare-fun m!3978427 () Bool)

(assert (=> d!1028960 m!3978427))

(assert (=> d!1028960 m!3978113))

(assert (=> d!1028960 m!3978209))

(declare-fun m!3978429 () Bool)

(assert (=> d!1028960 m!3978429))

(assert (=> d!1028960 m!3978427))

(declare-fun m!3978431 () Bool)

(assert (=> d!1028960 m!3978431))

(assert (=> d!1028960 m!3978209))

(declare-fun m!3978433 () Bool)

(assert (=> d!1028960 m!3978433))

(declare-fun m!3978435 () Bool)

(assert (=> b!3525242 m!3978435))

(declare-fun m!3978437 () Bool)

(assert (=> b!3525243 m!3978437))

(assert (=> b!3525244 m!3978209))

(assert (=> b!3525244 m!3978209))

(assert (=> b!3525244 m!3978427))

(assert (=> b!3525244 m!3978427))

(assert (=> b!3525244 m!3978431))

(declare-fun m!3978439 () Bool)

(assert (=> b!3525244 m!3978439))

(assert (=> b!3525029 d!1028960))

(declare-fun d!1028972 () Bool)

(declare-fun lt!1204444 () Bool)

(declare-fun e!2182114 () Bool)

(assert (=> d!1028972 (= lt!1204444 e!2182114)))

(declare-fun res!1421944 () Bool)

(assert (=> d!1028972 (=> (not res!1421944) (not e!2182114))))

(assert (=> d!1028972 (= res!1421944 (= (list!13676 (_1!21741 (lex!2397 thiss!18206 rules!2135 (print!2136 thiss!18206 (singletonSeq!2578 separatorToken!241))))) (list!13676 (singletonSeq!2578 separatorToken!241))))))

(declare-fun e!2182113 () Bool)

(assert (=> d!1028972 (= lt!1204444 e!2182113)))

(declare-fun res!1421943 () Bool)

(assert (=> d!1028972 (=> (not res!1421943) (not e!2182113))))

(declare-fun lt!1204445 () tuple2!37214)

(assert (=> d!1028972 (= res!1421943 (= (size!28439 (_1!21741 lt!1204445)) 1))))

(assert (=> d!1028972 (= lt!1204445 (lex!2397 thiss!18206 rules!2135 (print!2136 thiss!18206 (singletonSeq!2578 separatorToken!241))))))

(assert (=> d!1028972 (not (isEmpty!21836 rules!2135))))

(assert (=> d!1028972 (= (rulesProduceIndividualToken!2563 thiss!18206 rules!2135 separatorToken!241) lt!1204444)))

(declare-fun b!3525245 () Bool)

(declare-fun res!1421945 () Bool)

(assert (=> b!3525245 (=> (not res!1421945) (not e!2182113))))

(assert (=> b!3525245 (= res!1421945 (= (apply!8915 (_1!21741 lt!1204445) 0) separatorToken!241))))

(declare-fun b!3525246 () Bool)

(assert (=> b!3525246 (= e!2182113 (isEmpty!21837 (_2!21741 lt!1204445)))))

(declare-fun b!3525247 () Bool)

(assert (=> b!3525247 (= e!2182114 (isEmpty!21837 (_2!21741 (lex!2397 thiss!18206 rules!2135 (print!2136 thiss!18206 (singletonSeq!2578 separatorToken!241))))))))

(assert (= (and d!1028972 res!1421943) b!3525245))

(assert (= (and b!3525245 res!1421945) b!3525246))

(assert (= (and d!1028972 res!1421944) b!3525247))

(declare-fun m!3978441 () Bool)

(assert (=> d!1028972 m!3978441))

(assert (=> d!1028972 m!3978159))

(declare-fun m!3978443 () Bool)

(assert (=> d!1028972 m!3978443))

(assert (=> d!1028972 m!3978113))

(assert (=> d!1028972 m!3978159))

(declare-fun m!3978445 () Bool)

(assert (=> d!1028972 m!3978445))

(assert (=> d!1028972 m!3978443))

(declare-fun m!3978447 () Bool)

(assert (=> d!1028972 m!3978447))

(assert (=> d!1028972 m!3978159))

(declare-fun m!3978449 () Bool)

(assert (=> d!1028972 m!3978449))

(declare-fun m!3978451 () Bool)

(assert (=> b!3525245 m!3978451))

(declare-fun m!3978453 () Bool)

(assert (=> b!3525246 m!3978453))

(assert (=> b!3525247 m!3978159))

(assert (=> b!3525247 m!3978159))

(assert (=> b!3525247 m!3978443))

(assert (=> b!3525247 m!3978443))

(assert (=> b!3525247 m!3978447))

(declare-fun m!3978455 () Bool)

(assert (=> b!3525247 m!3978455))

(assert (=> b!3525007 d!1028972))

(declare-fun d!1028974 () Bool)

(declare-fun res!1421950 () Bool)

(declare-fun e!2182119 () Bool)

(assert (=> d!1028974 (=> res!1421950 e!2182119)))

(assert (=> d!1028974 (= res!1421950 (not ((_ is Cons!37370) rules!2135)))))

(assert (=> d!1028974 (= (sepAndNonSepRulesDisjointChars!1676 rules!2135 rules!2135) e!2182119)))

(declare-fun b!3525252 () Bool)

(declare-fun e!2182120 () Bool)

(assert (=> b!3525252 (= e!2182119 e!2182120)))

(declare-fun res!1421951 () Bool)

(assert (=> b!3525252 (=> (not res!1421951) (not e!2182120))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!750 (Rule!10764 List!37494) Bool)

(assert (=> b!3525252 (= res!1421951 (ruleDisjointCharsFromAllFromOtherType!750 (h!42790 rules!2135) rules!2135))))

(declare-fun b!3525253 () Bool)

(assert (=> b!3525253 (= e!2182120 (sepAndNonSepRulesDisjointChars!1676 rules!2135 (t!282383 rules!2135)))))

(assert (= (and d!1028974 (not res!1421950)) b!3525252))

(assert (= (and b!3525252 res!1421951) b!3525253))

(declare-fun m!3978457 () Bool)

(assert (=> b!3525252 m!3978457))

(declare-fun m!3978459 () Bool)

(assert (=> b!3525253 m!3978459))

(assert (=> b!3525028 d!1028974))

(declare-fun d!1028976 () Bool)

(assert (=> d!1028976 (dynLambda!15937 lambda!122858 (h!42791 (t!282384 tokens!494)))))

(declare-fun lt!1204448 () Unit!53054)

(declare-fun choose!20464 (List!37495 Int Token!10330) Unit!53054)

(assert (=> d!1028976 (= lt!1204448 (choose!20464 tokens!494 lambda!122858 (h!42791 (t!282384 tokens!494))))))

(declare-fun e!2182123 () Bool)

(assert (=> d!1028976 e!2182123))

(declare-fun res!1421954 () Bool)

(assert (=> d!1028976 (=> (not res!1421954) (not e!2182123))))

(assert (=> d!1028976 (= res!1421954 (forall!8041 tokens!494 lambda!122858))))

(assert (=> d!1028976 (= (forallContained!1429 tokens!494 lambda!122858 (h!42791 (t!282384 tokens!494))) lt!1204448)))

(declare-fun b!3525256 () Bool)

(declare-fun contains!7019 (List!37495 Token!10330) Bool)

(assert (=> b!3525256 (= e!2182123 (contains!7019 tokens!494 (h!42791 (t!282384 tokens!494))))))

(assert (= (and d!1028976 res!1421954) b!3525256))

(declare-fun b_lambda!103003 () Bool)

(assert (=> (not b_lambda!103003) (not d!1028976)))

(declare-fun m!3978461 () Bool)

(assert (=> d!1028976 m!3978461))

(declare-fun m!3978463 () Bool)

(assert (=> d!1028976 m!3978463))

(assert (=> d!1028976 m!3978111))

(declare-fun m!3978465 () Bool)

(assert (=> b!3525256 m!3978465))

(assert (=> b!3525006 d!1028976))

(declare-fun d!1028978 () Bool)

(assert (=> d!1028978 (dynLambda!15937 lambda!122858 (h!42791 tokens!494))))

(declare-fun lt!1204449 () Unit!53054)

(assert (=> d!1028978 (= lt!1204449 (choose!20464 tokens!494 lambda!122858 (h!42791 tokens!494)))))

(declare-fun e!2182124 () Bool)

(assert (=> d!1028978 e!2182124))

(declare-fun res!1421955 () Bool)

(assert (=> d!1028978 (=> (not res!1421955) (not e!2182124))))

(assert (=> d!1028978 (= res!1421955 (forall!8041 tokens!494 lambda!122858))))

(assert (=> d!1028978 (= (forallContained!1429 tokens!494 lambda!122858 (h!42791 tokens!494)) lt!1204449)))

(declare-fun b!3525257 () Bool)

(assert (=> b!3525257 (= e!2182124 (contains!7019 tokens!494 (h!42791 tokens!494)))))

(assert (= (and d!1028978 res!1421955) b!3525257))

(declare-fun b_lambda!103005 () Bool)

(assert (=> (not b_lambda!103005) (not d!1028978)))

(assert (=> d!1028978 m!3978371))

(declare-fun m!3978467 () Bool)

(assert (=> d!1028978 m!3978467))

(assert (=> d!1028978 m!3978111))

(declare-fun m!3978469 () Bool)

(assert (=> b!3525257 m!3978469))

(assert (=> b!3525006 d!1028978))

(declare-fun d!1028980 () Bool)

(declare-fun res!1421958 () Bool)

(declare-fun e!2182127 () Bool)

(assert (=> d!1028980 (=> (not res!1421958) (not e!2182127))))

(declare-fun rulesValid!2074 (LexerInterface!5071 List!37494) Bool)

(assert (=> d!1028980 (= res!1421958 (rulesValid!2074 thiss!18206 rules!2135))))

(assert (=> d!1028980 (= (rulesInvariant!4468 thiss!18206 rules!2135) e!2182127)))

(declare-fun b!3525260 () Bool)

(declare-datatypes ((List!37496 0))(
  ( (Nil!37372) (Cons!37372 (h!42792 String!41894) (t!282499 List!37496)) )
))
(declare-fun noDuplicateTag!2070 (LexerInterface!5071 List!37494 List!37496) Bool)

(assert (=> b!3525260 (= e!2182127 (noDuplicateTag!2070 thiss!18206 rules!2135 Nil!37372))))

(assert (= (and d!1028980 res!1421958) b!3525260))

(declare-fun m!3978471 () Bool)

(assert (=> d!1028980 m!3978471))

(declare-fun m!3978473 () Bool)

(assert (=> b!3525260 m!3978473))

(assert (=> b!3525027 d!1028980))

(declare-fun d!1028982 () Bool)

(declare-fun dynLambda!15939 (Int BalanceConc!22292) TokenValue!5712)

(assert (=> d!1028982 (= (apply!8914 (transformation!5482 (rule!8134 (h!42791 tokens!494))) lt!1204381) (dynLambda!15939 (toValue!7738 (transformation!5482 (rule!8134 (h!42791 tokens!494)))) lt!1204381))))

(declare-fun b_lambda!103007 () Bool)

(assert (=> (not b_lambda!103007) (not d!1028982)))

(declare-fun tb!197219 () Bool)

(declare-fun t!282404 () Bool)

(assert (=> (and b!3525016 (= (toValue!7738 (transformation!5482 (h!42790 rules!2135))) (toValue!7738 (transformation!5482 (rule!8134 (h!42791 tokens!494))))) t!282404) tb!197219))

(declare-fun result!241598 () Bool)

(assert (=> tb!197219 (= result!241598 (inv!21 (dynLambda!15939 (toValue!7738 (transformation!5482 (rule!8134 (h!42791 tokens!494)))) lt!1204381)))))

(declare-fun m!3978475 () Bool)

(assert (=> tb!197219 m!3978475))

(assert (=> d!1028982 t!282404))

(declare-fun b_and!251319 () Bool)

(assert (= b_and!251295 (and (=> t!282404 result!241598) b_and!251319)))

(declare-fun t!282406 () Bool)

(declare-fun tb!197221 () Bool)

(assert (=> (and b!3525023 (= (toValue!7738 (transformation!5482 (rule!8134 (h!42791 tokens!494)))) (toValue!7738 (transformation!5482 (rule!8134 (h!42791 tokens!494))))) t!282406) tb!197221))

(declare-fun result!241602 () Bool)

(assert (= result!241602 result!241598))

(assert (=> d!1028982 t!282406))

(declare-fun b_and!251321 () Bool)

(assert (= b_and!251299 (and (=> t!282406 result!241602) b_and!251321)))

(declare-fun tb!197223 () Bool)

(declare-fun t!282408 () Bool)

(assert (=> (and b!3525010 (= (toValue!7738 (transformation!5482 (rule!8134 separatorToken!241))) (toValue!7738 (transformation!5482 (rule!8134 (h!42791 tokens!494))))) t!282408) tb!197223))

(declare-fun result!241604 () Bool)

(assert (= result!241604 result!241598))

(assert (=> d!1028982 t!282408))

(declare-fun b_and!251323 () Bool)

(assert (= b_and!251303 (and (=> t!282408 result!241604) b_and!251323)))

(declare-fun m!3978477 () Bool)

(assert (=> d!1028982 m!3978477))

(assert (=> b!3525005 d!1028982))

(declare-fun d!1028984 () Bool)

(assert (=> d!1028984 (= (head!7393 lt!1204340) (h!42789 lt!1204340))))

(assert (=> b!3525005 d!1028984))

(declare-fun b!3525312 () Bool)

(declare-fun e!2182163 () Bool)

(declare-fun lt!1204468 () tuple2!37214)

(declare-datatypes ((tuple2!37218 0))(
  ( (tuple2!37219 (_1!21743 List!37495) (_2!21743 List!37493)) )
))
(declare-fun lexList!1480 (LexerInterface!5071 List!37494 List!37493) tuple2!37218)

(assert (=> b!3525312 (= e!2182163 (= (list!13673 (_2!21741 lt!1204468)) (_2!21743 (lexList!1480 thiss!18206 rules!2135 (list!13673 lt!1204383)))))))

(declare-fun b!3525313 () Bool)

(declare-fun e!2182162 () Bool)

(assert (=> b!3525313 (= e!2182162 (not (isEmpty!21835 (_1!21741 lt!1204468))))))

(declare-fun d!1028986 () Bool)

(assert (=> d!1028986 e!2182163))

(declare-fun res!1421988 () Bool)

(assert (=> d!1028986 (=> (not res!1421988) (not e!2182163))))

(declare-fun e!2182161 () Bool)

(assert (=> d!1028986 (= res!1421988 e!2182161)))

(declare-fun c!607735 () Bool)

(assert (=> d!1028986 (= c!607735 (> (size!28439 (_1!21741 lt!1204468)) 0))))

(declare-fun lexTailRecV2!1088 (LexerInterface!5071 List!37494 BalanceConc!22292 BalanceConc!22292 BalanceConc!22292 BalanceConc!22294) tuple2!37214)

(assert (=> d!1028986 (= lt!1204468 (lexTailRecV2!1088 thiss!18206 rules!2135 lt!1204383 (BalanceConc!22293 Empty!11339) lt!1204383 (BalanceConc!22295 Empty!11340)))))

(assert (=> d!1028986 (= (lex!2397 thiss!18206 rules!2135 lt!1204383) lt!1204468)))

(declare-fun b!3525314 () Bool)

(declare-fun res!1421987 () Bool)

(assert (=> b!3525314 (=> (not res!1421987) (not e!2182163))))

(assert (=> b!3525314 (= res!1421987 (= (list!13676 (_1!21741 lt!1204468)) (_1!21743 (lexList!1480 thiss!18206 rules!2135 (list!13673 lt!1204383)))))))

(declare-fun b!3525315 () Bool)

(assert (=> b!3525315 (= e!2182161 (= (_2!21741 lt!1204468) lt!1204383))))

(declare-fun b!3525316 () Bool)

(assert (=> b!3525316 (= e!2182161 e!2182162)))

(declare-fun res!1421986 () Bool)

(declare-fun size!28443 (BalanceConc!22292) Int)

(assert (=> b!3525316 (= res!1421986 (< (size!28443 (_2!21741 lt!1204468)) (size!28443 lt!1204383)))))

(assert (=> b!3525316 (=> (not res!1421986) (not e!2182162))))

(assert (= (and d!1028986 c!607735) b!3525316))

(assert (= (and d!1028986 (not c!607735)) b!3525315))

(assert (= (and b!3525316 res!1421986) b!3525313))

(assert (= (and d!1028986 res!1421988) b!3525314))

(assert (= (and b!3525314 res!1421987) b!3525312))

(declare-fun m!3978529 () Bool)

(assert (=> b!3525316 m!3978529))

(declare-fun m!3978533 () Bool)

(assert (=> b!3525316 m!3978533))

(declare-fun m!3978535 () Bool)

(assert (=> b!3525314 m!3978535))

(declare-fun m!3978537 () Bool)

(assert (=> b!3525314 m!3978537))

(assert (=> b!3525314 m!3978537))

(declare-fun m!3978539 () Bool)

(assert (=> b!3525314 m!3978539))

(declare-fun m!3978541 () Bool)

(assert (=> d!1028986 m!3978541))

(declare-fun m!3978543 () Bool)

(assert (=> d!1028986 m!3978543))

(declare-fun m!3978545 () Bool)

(assert (=> b!3525312 m!3978545))

(assert (=> b!3525312 m!3978537))

(assert (=> b!3525312 m!3978537))

(assert (=> b!3525312 m!3978539))

(declare-fun m!3978547 () Bool)

(assert (=> b!3525313 m!3978547))

(assert (=> b!3525005 d!1028986))

(declare-fun b!3525336 () Bool)

(declare-fun e!2182180 () Option!7627)

(assert (=> b!3525336 (= e!2182180 (Some!7626 (h!42790 rules!2135)))))

(declare-fun b!3525337 () Bool)

(declare-fun e!2182181 () Bool)

(declare-fun e!2182178 () Bool)

(assert (=> b!3525337 (= e!2182181 e!2182178)))

(declare-fun res!1421999 () Bool)

(assert (=> b!3525337 (=> (not res!1421999) (not e!2182178))))

(declare-fun lt!1204481 () Option!7627)

(assert (=> b!3525337 (= res!1421999 (contains!7017 rules!2135 (get!12000 lt!1204481)))))

(declare-fun b!3525338 () Bool)

(declare-fun lt!1204482 () Unit!53054)

(declare-fun lt!1204483 () Unit!53054)

(assert (=> b!3525338 (= lt!1204482 lt!1204483)))

(assert (=> b!3525338 (rulesInvariant!4468 thiss!18206 (t!282383 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!464 (LexerInterface!5071 Rule!10764 List!37494) Unit!53054)

(assert (=> b!3525338 (= lt!1204483 (lemmaInvariantOnRulesThenOnTail!464 thiss!18206 (h!42790 rules!2135) (t!282383 rules!2135)))))

(declare-fun e!2182179 () Option!7627)

(assert (=> b!3525338 (= e!2182179 (getRuleFromTag!1125 thiss!18206 (t!282383 rules!2135) (tag!6122 (rule!8134 separatorToken!241))))))

(declare-fun b!3525339 () Bool)

(assert (=> b!3525339 (= e!2182180 e!2182179)))

(declare-fun c!607740 () Bool)

(assert (=> b!3525339 (= c!607740 (and ((_ is Cons!37370) rules!2135) (not (= (tag!6122 (h!42790 rules!2135)) (tag!6122 (rule!8134 separatorToken!241))))))))

(declare-fun d!1029000 () Bool)

(assert (=> d!1029000 e!2182181))

(declare-fun res!1421998 () Bool)

(assert (=> d!1029000 (=> res!1421998 e!2182181)))

(declare-fun isEmpty!21844 (Option!7627) Bool)

(assert (=> d!1029000 (= res!1421998 (isEmpty!21844 lt!1204481))))

(assert (=> d!1029000 (= lt!1204481 e!2182180)))

(declare-fun c!607741 () Bool)

(assert (=> d!1029000 (= c!607741 (and ((_ is Cons!37370) rules!2135) (= (tag!6122 (h!42790 rules!2135)) (tag!6122 (rule!8134 separatorToken!241)))))))

(assert (=> d!1029000 (rulesInvariant!4468 thiss!18206 rules!2135)))

(assert (=> d!1029000 (= (getRuleFromTag!1125 thiss!18206 rules!2135 (tag!6122 (rule!8134 separatorToken!241))) lt!1204481)))

(declare-fun b!3525340 () Bool)

(assert (=> b!3525340 (= e!2182178 (= (tag!6122 (get!12000 lt!1204481)) (tag!6122 (rule!8134 separatorToken!241))))))

(declare-fun b!3525341 () Bool)

(assert (=> b!3525341 (= e!2182179 None!7626)))

(assert (= (and d!1029000 c!607741) b!3525336))

(assert (= (and d!1029000 (not c!607741)) b!3525339))

(assert (= (and b!3525339 c!607740) b!3525338))

(assert (= (and b!3525339 (not c!607740)) b!3525341))

(assert (= (and d!1029000 (not res!1421998)) b!3525337))

(assert (= (and b!3525337 res!1421999) b!3525340))

(declare-fun m!3978575 () Bool)

(assert (=> b!3525337 m!3978575))

(assert (=> b!3525337 m!3978575))

(declare-fun m!3978577 () Bool)

(assert (=> b!3525337 m!3978577))

(declare-fun m!3978579 () Bool)

(assert (=> b!3525338 m!3978579))

(declare-fun m!3978581 () Bool)

(assert (=> b!3525338 m!3978581))

(declare-fun m!3978583 () Bool)

(assert (=> b!3525338 m!3978583))

(declare-fun m!3978585 () Bool)

(assert (=> d!1029000 m!3978585))

(assert (=> d!1029000 m!3978223))

(assert (=> b!3525340 m!3978575))

(assert (=> b!3525005 d!1029000))

(declare-fun d!1029010 () Bool)

(declare-fun lt!1204486 () BalanceConc!22292)

(assert (=> d!1029010 (= (list!13673 lt!1204486) (printList!1619 thiss!18206 (list!13676 lt!1204345)))))

(assert (=> d!1029010 (= lt!1204486 (printTailRec!1566 thiss!18206 lt!1204345 0 (BalanceConc!22293 Empty!11339)))))

(assert (=> d!1029010 (= (print!2136 thiss!18206 lt!1204345) lt!1204486)))

(declare-fun bs!565650 () Bool)

(assert (= bs!565650 d!1029010))

(declare-fun m!3978587 () Bool)

(assert (=> bs!565650 m!3978587))

(declare-fun m!3978589 () Bool)

(assert (=> bs!565650 m!3978589))

(assert (=> bs!565650 m!3978589))

(declare-fun m!3978591 () Bool)

(assert (=> bs!565650 m!3978591))

(assert (=> bs!565650 m!3978125))

(assert (=> b!3525005 d!1029010))

(declare-fun b!3525358 () Bool)

(declare-fun e!2182191 () List!37493)

(assert (=> b!3525358 (= e!2182191 (Cons!37369 (c!607688 (regex!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))) Nil!37369))))

(declare-fun d!1029012 () Bool)

(declare-fun c!607751 () Bool)

(assert (=> d!1029012 (= c!607751 (or ((_ is EmptyExpr!10241) (regex!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))) ((_ is EmptyLang!10241) (regex!5482 (rule!8134 (h!42791 (t!282384 tokens!494)))))))))

(declare-fun e!2182192 () List!37493)

(assert (=> d!1029012 (= (usedCharacters!716 (regex!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))) e!2182192)))

(declare-fun b!3525359 () Bool)

(declare-fun c!607750 () Bool)

(assert (=> b!3525359 (= c!607750 ((_ is Star!10241) (regex!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))))))

(declare-fun e!2182193 () List!37493)

(assert (=> b!3525359 (= e!2182191 e!2182193)))

(declare-fun b!3525360 () Bool)

(declare-fun e!2182190 () List!37493)

(declare-fun call!254694 () List!37493)

(assert (=> b!3525360 (= e!2182190 call!254694)))

(declare-fun bm!254688 () Bool)

(declare-fun call!254693 () List!37493)

(declare-fun call!254695 () List!37493)

(assert (=> bm!254688 (= call!254693 call!254695)))

(declare-fun bm!254689 () Bool)

(declare-fun call!254696 () List!37493)

(declare-fun c!607753 () Bool)

(assert (=> bm!254689 (= call!254696 (usedCharacters!716 (ite c!607753 (regTwo!20995 (regex!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))) (regOne!20994 (regex!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))))))))

(declare-fun b!3525361 () Bool)

(assert (=> b!3525361 (= e!2182192 Nil!37369)))

(declare-fun b!3525362 () Bool)

(assert (=> b!3525362 (= e!2182190 call!254694)))

(declare-fun bm!254690 () Bool)

(assert (=> bm!254690 (= call!254694 (++!9265 (ite c!607753 call!254693 call!254696) (ite c!607753 call!254696 call!254693)))))

(declare-fun b!3525363 () Bool)

(assert (=> b!3525363 (= e!2182192 e!2182191)))

(declare-fun c!607752 () Bool)

(assert (=> b!3525363 (= c!607752 ((_ is ElementMatch!10241) (regex!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))))))

(declare-fun b!3525364 () Bool)

(assert (=> b!3525364 (= e!2182193 e!2182190)))

(assert (=> b!3525364 (= c!607753 ((_ is Union!10241) (regex!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))))))

(declare-fun b!3525365 () Bool)

(assert (=> b!3525365 (= e!2182193 call!254695)))

(declare-fun bm!254691 () Bool)

(assert (=> bm!254691 (= call!254695 (usedCharacters!716 (ite c!607750 (reg!10570 (regex!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))) (ite c!607753 (regOne!20995 (regex!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))) (regTwo!20994 (regex!5482 (rule!8134 (h!42791 (t!282384 tokens!494)))))))))))

(assert (= (and d!1029012 c!607751) b!3525361))

(assert (= (and d!1029012 (not c!607751)) b!3525363))

(assert (= (and b!3525363 c!607752) b!3525358))

(assert (= (and b!3525363 (not c!607752)) b!3525359))

(assert (= (and b!3525359 c!607750) b!3525365))

(assert (= (and b!3525359 (not c!607750)) b!3525364))

(assert (= (and b!3525364 c!607753) b!3525360))

(assert (= (and b!3525364 (not c!607753)) b!3525362))

(assert (= (or b!3525360 b!3525362) bm!254689))

(assert (= (or b!3525360 b!3525362) bm!254688))

(assert (= (or b!3525360 b!3525362) bm!254690))

(assert (= (or b!3525365 bm!254688) bm!254691))

(declare-fun m!3978593 () Bool)

(assert (=> bm!254689 m!3978593))

(declare-fun m!3978595 () Bool)

(assert (=> bm!254690 m!3978595))

(declare-fun m!3978597 () Bool)

(assert (=> bm!254691 m!3978597))

(assert (=> b!3525005 d!1029012))

(declare-fun d!1029014 () Bool)

(declare-fun lt!1204523 () BalanceConc!22292)

(declare-fun printListTailRec!720 (LexerInterface!5071 List!37495 List!37493) List!37493)

(declare-fun dropList!1237 (BalanceConc!22294 Int) List!37495)

(assert (=> d!1029014 (= (list!13673 lt!1204523) (printListTailRec!720 thiss!18206 (dropList!1237 lt!1204345 0) (list!13673 (BalanceConc!22293 Empty!11339))))))

(declare-fun e!2182226 () BalanceConc!22292)

(assert (=> d!1029014 (= lt!1204523 e!2182226)))

(declare-fun c!607771 () Bool)

(assert (=> d!1029014 (= c!607771 (>= 0 (size!28439 lt!1204345)))))

(declare-fun e!2182227 () Bool)

(assert (=> d!1029014 e!2182227))

(declare-fun res!1422029 () Bool)

(assert (=> d!1029014 (=> (not res!1422029) (not e!2182227))))

(assert (=> d!1029014 (= res!1422029 (>= 0 0))))

(assert (=> d!1029014 (= (printTailRec!1566 thiss!18206 lt!1204345 0 (BalanceConc!22293 Empty!11339)) lt!1204523)))

(declare-fun b!3525429 () Bool)

(assert (=> b!3525429 (= e!2182227 (<= 0 (size!28439 lt!1204345)))))

(declare-fun b!3525430 () Bool)

(assert (=> b!3525430 (= e!2182226 (BalanceConc!22293 Empty!11339))))

(declare-fun b!3525431 () Bool)

(declare-fun ++!9267 (BalanceConc!22292 BalanceConc!22292) BalanceConc!22292)

(assert (=> b!3525431 (= e!2182226 (printTailRec!1566 thiss!18206 lt!1204345 (+ 0 1) (++!9267 (BalanceConc!22293 Empty!11339) (charsOf!3496 (apply!8915 lt!1204345 0)))))))

(declare-fun lt!1204525 () List!37495)

(assert (=> b!3525431 (= lt!1204525 (list!13676 lt!1204345))))

(declare-fun lt!1204521 () Unit!53054)

(declare-fun lemmaDropApply!1195 (List!37495 Int) Unit!53054)

(assert (=> b!3525431 (= lt!1204521 (lemmaDropApply!1195 lt!1204525 0))))

(declare-fun head!7395 (List!37495) Token!10330)

(declare-fun drop!2051 (List!37495 Int) List!37495)

(declare-fun apply!8917 (List!37495 Int) Token!10330)

(assert (=> b!3525431 (= (head!7395 (drop!2051 lt!1204525 0)) (apply!8917 lt!1204525 0))))

(declare-fun lt!1204524 () Unit!53054)

(assert (=> b!3525431 (= lt!1204524 lt!1204521)))

(declare-fun lt!1204520 () List!37495)

(assert (=> b!3525431 (= lt!1204520 (list!13676 lt!1204345))))

(declare-fun lt!1204519 () Unit!53054)

(declare-fun lemmaDropTail!1079 (List!37495 Int) Unit!53054)

(assert (=> b!3525431 (= lt!1204519 (lemmaDropTail!1079 lt!1204520 0))))

(declare-fun tail!5497 (List!37495) List!37495)

(assert (=> b!3525431 (= (tail!5497 (drop!2051 lt!1204520 0)) (drop!2051 lt!1204520 (+ 0 1)))))

(declare-fun lt!1204522 () Unit!53054)

(assert (=> b!3525431 (= lt!1204522 lt!1204519)))

(assert (= (and d!1029014 res!1422029) b!3525429))

(assert (= (and d!1029014 c!607771) b!3525430))

(assert (= (and d!1029014 (not c!607771)) b!3525431))

(declare-fun m!3978651 () Bool)

(assert (=> d!1029014 m!3978651))

(assert (=> d!1029014 m!3978651))

(declare-fun m!3978653 () Bool)

(assert (=> d!1029014 m!3978653))

(declare-fun m!3978655 () Bool)

(assert (=> d!1029014 m!3978655))

(declare-fun m!3978657 () Bool)

(assert (=> d!1029014 m!3978657))

(declare-fun m!3978659 () Bool)

(assert (=> d!1029014 m!3978659))

(assert (=> d!1029014 m!3978653))

(assert (=> b!3525429 m!3978659))

(assert (=> b!3525431 m!3978589))

(declare-fun m!3978661 () Bool)

(assert (=> b!3525431 m!3978661))

(declare-fun m!3978663 () Bool)

(assert (=> b!3525431 m!3978663))

(declare-fun m!3978665 () Bool)

(assert (=> b!3525431 m!3978665))

(declare-fun m!3978667 () Bool)

(assert (=> b!3525431 m!3978667))

(declare-fun m!3978669 () Bool)

(assert (=> b!3525431 m!3978669))

(assert (=> b!3525431 m!3978663))

(assert (=> b!3525431 m!3978667))

(declare-fun m!3978671 () Bool)

(assert (=> b!3525431 m!3978671))

(declare-fun m!3978673 () Bool)

(assert (=> b!3525431 m!3978673))

(declare-fun m!3978675 () Bool)

(assert (=> b!3525431 m!3978675))

(assert (=> b!3525431 m!3978665))

(declare-fun m!3978677 () Bool)

(assert (=> b!3525431 m!3978677))

(declare-fun m!3978679 () Bool)

(assert (=> b!3525431 m!3978679))

(assert (=> b!3525431 m!3978661))

(declare-fun m!3978681 () Bool)

(assert (=> b!3525431 m!3978681))

(declare-fun m!3978683 () Bool)

(assert (=> b!3525431 m!3978683))

(assert (=> b!3525431 m!3978669))

(assert (=> b!3525005 d!1029014))

(declare-fun d!1029026 () Bool)

(declare-fun fromListB!1846 (List!37493) BalanceConc!22292)

(assert (=> d!1029026 (= (seqFromList!4017 lt!1204339) (fromListB!1846 lt!1204339))))

(declare-fun bs!565652 () Bool)

(assert (= bs!565652 d!1029026))

(declare-fun m!3978685 () Bool)

(assert (=> bs!565652 m!3978685))

(assert (=> b!3525005 d!1029026))

(declare-fun d!1029028 () Bool)

(declare-fun lt!1204530 () BalanceConc!22292)

(assert (=> d!1029028 (= (list!13673 lt!1204530) (printListTailRec!720 thiss!18206 (dropList!1237 lt!1204382 0) (list!13673 (BalanceConc!22293 Empty!11339))))))

(declare-fun e!2182228 () BalanceConc!22292)

(assert (=> d!1029028 (= lt!1204530 e!2182228)))

(declare-fun c!607772 () Bool)

(assert (=> d!1029028 (= c!607772 (>= 0 (size!28439 lt!1204382)))))

(declare-fun e!2182229 () Bool)

(assert (=> d!1029028 e!2182229))

(declare-fun res!1422030 () Bool)

(assert (=> d!1029028 (=> (not res!1422030) (not e!2182229))))

(assert (=> d!1029028 (= res!1422030 (>= 0 0))))

(assert (=> d!1029028 (= (printTailRec!1566 thiss!18206 lt!1204382 0 (BalanceConc!22293 Empty!11339)) lt!1204530)))

(declare-fun b!3525432 () Bool)

(assert (=> b!3525432 (= e!2182229 (<= 0 (size!28439 lt!1204382)))))

(declare-fun b!3525433 () Bool)

(assert (=> b!3525433 (= e!2182228 (BalanceConc!22293 Empty!11339))))

(declare-fun b!3525434 () Bool)

(assert (=> b!3525434 (= e!2182228 (printTailRec!1566 thiss!18206 lt!1204382 (+ 0 1) (++!9267 (BalanceConc!22293 Empty!11339) (charsOf!3496 (apply!8915 lt!1204382 0)))))))

(declare-fun lt!1204532 () List!37495)

(assert (=> b!3525434 (= lt!1204532 (list!13676 lt!1204382))))

(declare-fun lt!1204528 () Unit!53054)

(assert (=> b!3525434 (= lt!1204528 (lemmaDropApply!1195 lt!1204532 0))))

(assert (=> b!3525434 (= (head!7395 (drop!2051 lt!1204532 0)) (apply!8917 lt!1204532 0))))

(declare-fun lt!1204531 () Unit!53054)

(assert (=> b!3525434 (= lt!1204531 lt!1204528)))

(declare-fun lt!1204527 () List!37495)

(assert (=> b!3525434 (= lt!1204527 (list!13676 lt!1204382))))

(declare-fun lt!1204526 () Unit!53054)

(assert (=> b!3525434 (= lt!1204526 (lemmaDropTail!1079 lt!1204527 0))))

(assert (=> b!3525434 (= (tail!5497 (drop!2051 lt!1204527 0)) (drop!2051 lt!1204527 (+ 0 1)))))

(declare-fun lt!1204529 () Unit!53054)

(assert (=> b!3525434 (= lt!1204529 lt!1204526)))

(assert (= (and d!1029028 res!1422030) b!3525432))

(assert (= (and d!1029028 c!607772) b!3525433))

(assert (= (and d!1029028 (not c!607772)) b!3525434))

(declare-fun m!3978687 () Bool)

(assert (=> d!1029028 m!3978687))

(assert (=> d!1029028 m!3978687))

(assert (=> d!1029028 m!3978653))

(declare-fun m!3978689 () Bool)

(assert (=> d!1029028 m!3978689))

(declare-fun m!3978691 () Bool)

(assert (=> d!1029028 m!3978691))

(declare-fun m!3978693 () Bool)

(assert (=> d!1029028 m!3978693))

(assert (=> d!1029028 m!3978653))

(assert (=> b!3525432 m!3978693))

(declare-fun m!3978695 () Bool)

(assert (=> b!3525434 m!3978695))

(declare-fun m!3978697 () Bool)

(assert (=> b!3525434 m!3978697))

(declare-fun m!3978699 () Bool)

(assert (=> b!3525434 m!3978699))

(declare-fun m!3978701 () Bool)

(assert (=> b!3525434 m!3978701))

(declare-fun m!3978703 () Bool)

(assert (=> b!3525434 m!3978703))

(declare-fun m!3978705 () Bool)

(assert (=> b!3525434 m!3978705))

(assert (=> b!3525434 m!3978699))

(assert (=> b!3525434 m!3978703))

(declare-fun m!3978707 () Bool)

(assert (=> b!3525434 m!3978707))

(declare-fun m!3978709 () Bool)

(assert (=> b!3525434 m!3978709))

(declare-fun m!3978711 () Bool)

(assert (=> b!3525434 m!3978711))

(assert (=> b!3525434 m!3978701))

(declare-fun m!3978713 () Bool)

(assert (=> b!3525434 m!3978713))

(declare-fun m!3978715 () Bool)

(assert (=> b!3525434 m!3978715))

(assert (=> b!3525434 m!3978697))

(declare-fun m!3978717 () Bool)

(assert (=> b!3525434 m!3978717))

(declare-fun m!3978719 () Bool)

(assert (=> b!3525434 m!3978719))

(assert (=> b!3525434 m!3978705))

(assert (=> b!3525005 d!1029028))

(declare-fun d!1029030 () Bool)

(assert (=> d!1029030 (= (isDefined!5878 lt!1204355) (not (isEmpty!21844 lt!1204355)))))

(declare-fun bs!565653 () Bool)

(assert (= bs!565653 d!1029030))

(declare-fun m!3978721 () Bool)

(assert (=> bs!565653 m!3978721))

(assert (=> b!3525005 d!1029030))

(declare-fun d!1029032 () Bool)

(assert (=> d!1029032 (= (isDefined!5878 lt!1204356) (not (isEmpty!21844 lt!1204356)))))

(declare-fun bs!565654 () Bool)

(assert (= bs!565654 d!1029032))

(declare-fun m!3978723 () Bool)

(assert (=> bs!565654 m!3978723))

(assert (=> b!3525005 d!1029032))

(declare-fun d!1029034 () Bool)

(assert (=> d!1029034 (= (head!7393 lt!1204339) (h!42789 lt!1204339))))

(assert (=> b!3525005 d!1029034))

(declare-fun b!3525435 () Bool)

(declare-fun e!2182231 () List!37493)

(assert (=> b!3525435 (= e!2182231 (Cons!37369 (c!607688 (regex!5482 (rule!8134 (h!42791 tokens!494)))) Nil!37369))))

(declare-fun d!1029036 () Bool)

(declare-fun c!607774 () Bool)

(assert (=> d!1029036 (= c!607774 (or ((_ is EmptyExpr!10241) (regex!5482 (rule!8134 (h!42791 tokens!494)))) ((_ is EmptyLang!10241) (regex!5482 (rule!8134 (h!42791 tokens!494))))))))

(declare-fun e!2182232 () List!37493)

(assert (=> d!1029036 (= (usedCharacters!716 (regex!5482 (rule!8134 (h!42791 tokens!494)))) e!2182232)))

(declare-fun b!3525436 () Bool)

(declare-fun c!607773 () Bool)

(assert (=> b!3525436 (= c!607773 ((_ is Star!10241) (regex!5482 (rule!8134 (h!42791 tokens!494)))))))

(declare-fun e!2182233 () List!37493)

(assert (=> b!3525436 (= e!2182231 e!2182233)))

(declare-fun b!3525437 () Bool)

(declare-fun e!2182230 () List!37493)

(declare-fun call!254713 () List!37493)

(assert (=> b!3525437 (= e!2182230 call!254713)))

(declare-fun bm!254707 () Bool)

(declare-fun call!254712 () List!37493)

(declare-fun call!254714 () List!37493)

(assert (=> bm!254707 (= call!254712 call!254714)))

(declare-fun bm!254708 () Bool)

(declare-fun call!254715 () List!37493)

(declare-fun c!607776 () Bool)

(assert (=> bm!254708 (= call!254715 (usedCharacters!716 (ite c!607776 (regTwo!20995 (regex!5482 (rule!8134 (h!42791 tokens!494)))) (regOne!20994 (regex!5482 (rule!8134 (h!42791 tokens!494)))))))))

(declare-fun b!3525438 () Bool)

(assert (=> b!3525438 (= e!2182232 Nil!37369)))

(declare-fun b!3525439 () Bool)

(assert (=> b!3525439 (= e!2182230 call!254713)))

(declare-fun bm!254709 () Bool)

(assert (=> bm!254709 (= call!254713 (++!9265 (ite c!607776 call!254712 call!254715) (ite c!607776 call!254715 call!254712)))))

(declare-fun b!3525440 () Bool)

(assert (=> b!3525440 (= e!2182232 e!2182231)))

(declare-fun c!607775 () Bool)

(assert (=> b!3525440 (= c!607775 ((_ is ElementMatch!10241) (regex!5482 (rule!8134 (h!42791 tokens!494)))))))

(declare-fun b!3525441 () Bool)

(assert (=> b!3525441 (= e!2182233 e!2182230)))

(assert (=> b!3525441 (= c!607776 ((_ is Union!10241) (regex!5482 (rule!8134 (h!42791 tokens!494)))))))

(declare-fun b!3525442 () Bool)

(assert (=> b!3525442 (= e!2182233 call!254714)))

(declare-fun bm!254710 () Bool)

(assert (=> bm!254710 (= call!254714 (usedCharacters!716 (ite c!607773 (reg!10570 (regex!5482 (rule!8134 (h!42791 tokens!494)))) (ite c!607776 (regOne!20995 (regex!5482 (rule!8134 (h!42791 tokens!494)))) (regTwo!20994 (regex!5482 (rule!8134 (h!42791 tokens!494))))))))))

(assert (= (and d!1029036 c!607774) b!3525438))

(assert (= (and d!1029036 (not c!607774)) b!3525440))

(assert (= (and b!3525440 c!607775) b!3525435))

(assert (= (and b!3525440 (not c!607775)) b!3525436))

(assert (= (and b!3525436 c!607773) b!3525442))

(assert (= (and b!3525436 (not c!607773)) b!3525441))

(assert (= (and b!3525441 c!607776) b!3525437))

(assert (= (and b!3525441 (not c!607776)) b!3525439))

(assert (= (or b!3525437 b!3525439) bm!254708))

(assert (= (or b!3525437 b!3525439) bm!254707))

(assert (= (or b!3525437 b!3525439) bm!254709))

(assert (= (or b!3525442 bm!254707) bm!254710))

(declare-fun m!3978725 () Bool)

(assert (=> bm!254708 m!3978725))

(declare-fun m!3978727 () Bool)

(assert (=> bm!254709 m!3978727))

(declare-fun m!3978729 () Bool)

(assert (=> bm!254710 m!3978729))

(assert (=> b!3525005 d!1029036))

(declare-fun d!1029038 () Bool)

(declare-fun e!2182236 () Bool)

(assert (=> d!1029038 e!2182236))

(declare-fun res!1422035 () Bool)

(assert (=> d!1029038 (=> (not res!1422035) (not e!2182236))))

(assert (=> d!1029038 (= res!1422035 (isDefined!5878 (getRuleFromTag!1125 thiss!18206 rules!2135 (tag!6122 (rule!8134 (h!42791 (t!282384 tokens!494)))))))))

(declare-fun lt!1204535 () Unit!53054)

(declare-fun choose!20466 (LexerInterface!5071 List!37494 List!37493 Token!10330) Unit!53054)

(assert (=> d!1029038 (= lt!1204535 (choose!20466 thiss!18206 rules!2135 lt!1204339 (h!42791 (t!282384 tokens!494))))))

(assert (=> d!1029038 (rulesInvariant!4468 thiss!18206 rules!2135)))

(assert (=> d!1029038 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1125 thiss!18206 rules!2135 lt!1204339 (h!42791 (t!282384 tokens!494))) lt!1204535)))

(declare-fun b!3525447 () Bool)

(declare-fun res!1422036 () Bool)

(assert (=> b!3525447 (=> (not res!1422036) (not e!2182236))))

(assert (=> b!3525447 (= res!1422036 (matchR!4825 (regex!5482 (get!12000 (getRuleFromTag!1125 thiss!18206 rules!2135 (tag!6122 (rule!8134 (h!42791 (t!282384 tokens!494))))))) (list!13673 (charsOf!3496 (h!42791 (t!282384 tokens!494))))))))

(declare-fun b!3525448 () Bool)

(assert (=> b!3525448 (= e!2182236 (= (rule!8134 (h!42791 (t!282384 tokens!494))) (get!12000 (getRuleFromTag!1125 thiss!18206 rules!2135 (tag!6122 (rule!8134 (h!42791 (t!282384 tokens!494))))))))))

(assert (= (and d!1029038 res!1422035) b!3525447))

(assert (= (and b!3525447 res!1422036) b!3525448))

(assert (=> d!1029038 m!3978185))

(assert (=> d!1029038 m!3978185))

(declare-fun m!3978731 () Bool)

(assert (=> d!1029038 m!3978731))

(declare-fun m!3978733 () Bool)

(assert (=> d!1029038 m!3978733))

(assert (=> d!1029038 m!3978223))

(assert (=> b!3525447 m!3978051))

(assert (=> b!3525447 m!3978185))

(declare-fun m!3978735 () Bool)

(assert (=> b!3525447 m!3978735))

(assert (=> b!3525447 m!3978185))

(assert (=> b!3525447 m!3978051))

(assert (=> b!3525447 m!3978057))

(assert (=> b!3525447 m!3978057))

(declare-fun m!3978737 () Bool)

(assert (=> b!3525447 m!3978737))

(assert (=> b!3525448 m!3978185))

(assert (=> b!3525448 m!3978185))

(assert (=> b!3525448 m!3978735))

(assert (=> b!3525005 d!1029038))

(declare-fun d!1029040 () Bool)

(assert (=> d!1029040 (rulesProduceIndividualToken!2563 thiss!18206 rules!2135 (h!42791 tokens!494))))

(declare-fun lt!1204544 () Unit!53054)

(declare-fun choose!20467 (LexerInterface!5071 List!37494 List!37495 Token!10330) Unit!53054)

(assert (=> d!1029040 (= lt!1204544 (choose!20467 thiss!18206 rules!2135 tokens!494 (h!42791 tokens!494)))))

(assert (=> d!1029040 (not (isEmpty!21836 rules!2135))))

(assert (=> d!1029040 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1060 thiss!18206 rules!2135 tokens!494 (h!42791 tokens!494)) lt!1204544)))

(declare-fun bs!565657 () Bool)

(assert (= bs!565657 d!1029040))

(assert (=> bs!565657 m!3978227))

(declare-fun m!3978759 () Bool)

(assert (=> bs!565657 m!3978759))

(assert (=> bs!565657 m!3978113))

(assert (=> b!3525005 d!1029040))

(declare-fun d!1029052 () Bool)

(assert (=> d!1029052 (= (maxPrefix!2611 thiss!18206 rules!2135 (++!9265 (list!13673 (charsOf!3496 (h!42791 tokens!494))) lt!1204344)) (Some!7627 (tuple2!37213 (h!42791 tokens!494) lt!1204344)))))

(declare-fun lt!1204547 () Unit!53054)

(declare-fun choose!20468 (LexerInterface!5071 List!37494 Token!10330 Rule!10764 List!37493 Rule!10764) Unit!53054)

(assert (=> d!1029052 (= lt!1204547 (choose!20468 thiss!18206 rules!2135 (h!42791 tokens!494) (rule!8134 (h!42791 tokens!494)) lt!1204344 (rule!8134 separatorToken!241)))))

(assert (=> d!1029052 (not (isEmpty!21836 rules!2135))))

(assert (=> d!1029052 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!238 thiss!18206 rules!2135 (h!42791 tokens!494) (rule!8134 (h!42791 tokens!494)) lt!1204344 (rule!8134 separatorToken!241)) lt!1204547)))

(declare-fun bs!565658 () Bool)

(assert (= bs!565658 d!1029052))

(assert (=> bs!565658 m!3978113))

(declare-fun m!3978761 () Bool)

(assert (=> bs!565658 m!3978761))

(declare-fun m!3978763 () Bool)

(assert (=> bs!565658 m!3978763))

(assert (=> bs!565658 m!3978221))

(assert (=> bs!565658 m!3978761))

(assert (=> bs!565658 m!3978219))

(assert (=> bs!565658 m!3978219))

(assert (=> bs!565658 m!3978221))

(declare-fun m!3978765 () Bool)

(assert (=> bs!565658 m!3978765))

(assert (=> b!3525005 d!1029052))

(declare-fun d!1029054 () Bool)

(declare-fun lt!1204548 () BalanceConc!22292)

(assert (=> d!1029054 (= (list!13673 lt!1204548) (printList!1619 thiss!18206 (list!13676 lt!1204382)))))

(assert (=> d!1029054 (= lt!1204548 (printTailRec!1566 thiss!18206 lt!1204382 0 (BalanceConc!22293 Empty!11339)))))

(assert (=> d!1029054 (= (print!2136 thiss!18206 lt!1204382) lt!1204548)))

(declare-fun bs!565659 () Bool)

(assert (= bs!565659 d!1029054))

(declare-fun m!3978767 () Bool)

(assert (=> bs!565659 m!3978767))

(assert (=> bs!565659 m!3978695))

(assert (=> bs!565659 m!3978695))

(declare-fun m!3978769 () Bool)

(assert (=> bs!565659 m!3978769))

(assert (=> bs!565659 m!3978187))

(assert (=> b!3525005 d!1029054))

(declare-fun d!1029056 () Bool)

(assert (=> d!1029056 (= (maxPrefixOneRule!1778 thiss!18206 (rule!8134 (h!42791 tokens!494)) lt!1204378) (Some!7627 (tuple2!37213 (Token!10331 (apply!8914 (transformation!5482 (rule!8134 (h!42791 tokens!494))) (seqFromList!4017 lt!1204378)) (rule!8134 (h!42791 tokens!494)) (size!28438 lt!1204378) lt!1204378) Nil!37369)))))

(declare-fun lt!1204551 () Unit!53054)

(declare-fun choose!20469 (LexerInterface!5071 List!37494 List!37493 List!37493 List!37493 Rule!10764) Unit!53054)

(assert (=> d!1029056 (= lt!1204551 (choose!20469 thiss!18206 rules!2135 lt!1204378 lt!1204378 Nil!37369 (rule!8134 (h!42791 tokens!494))))))

(assert (=> d!1029056 (not (isEmpty!21836 rules!2135))))

(assert (=> d!1029056 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!871 thiss!18206 rules!2135 lt!1204378 lt!1204378 Nil!37369 (rule!8134 (h!42791 tokens!494))) lt!1204551)))

(declare-fun bs!565660 () Bool)

(assert (= bs!565660 d!1029056))

(assert (=> bs!565660 m!3978155))

(assert (=> bs!565660 m!3978113))

(declare-fun m!3978771 () Bool)

(assert (=> bs!565660 m!3978771))

(assert (=> bs!565660 m!3978101))

(assert (=> bs!565660 m!3978101))

(declare-fun m!3978773 () Bool)

(assert (=> bs!565660 m!3978773))

(assert (=> bs!565660 m!3978121))

(assert (=> b!3525005 d!1029056))

(declare-fun d!1029058 () Bool)

(declare-fun lt!1204552 () Bool)

(declare-fun e!2182242 () Bool)

(assert (=> d!1029058 (= lt!1204552 e!2182242)))

(declare-fun res!1422042 () Bool)

(assert (=> d!1029058 (=> (not res!1422042) (not e!2182242))))

(assert (=> d!1029058 (= res!1422042 (= (list!13676 (_1!21741 (lex!2397 thiss!18206 rules!2135 (print!2136 thiss!18206 (singletonSeq!2578 (h!42791 (t!282384 tokens!494))))))) (list!13676 (singletonSeq!2578 (h!42791 (t!282384 tokens!494))))))))

(declare-fun e!2182241 () Bool)

(assert (=> d!1029058 (= lt!1204552 e!2182241)))

(declare-fun res!1422041 () Bool)

(assert (=> d!1029058 (=> (not res!1422041) (not e!2182241))))

(declare-fun lt!1204553 () tuple2!37214)

(assert (=> d!1029058 (= res!1422041 (= (size!28439 (_1!21741 lt!1204553)) 1))))

(assert (=> d!1029058 (= lt!1204553 (lex!2397 thiss!18206 rules!2135 (print!2136 thiss!18206 (singletonSeq!2578 (h!42791 (t!282384 tokens!494))))))))

(assert (=> d!1029058 (not (isEmpty!21836 rules!2135))))

(assert (=> d!1029058 (= (rulesProduceIndividualToken!2563 thiss!18206 rules!2135 (h!42791 (t!282384 tokens!494))) lt!1204552)))

(declare-fun b!3525453 () Bool)

(declare-fun res!1422043 () Bool)

(assert (=> b!3525453 (=> (not res!1422043) (not e!2182241))))

(assert (=> b!3525453 (= res!1422043 (= (apply!8915 (_1!21741 lt!1204553) 0) (h!42791 (t!282384 tokens!494))))))

(declare-fun b!3525454 () Bool)

(assert (=> b!3525454 (= e!2182241 (isEmpty!21837 (_2!21741 lt!1204553)))))

(declare-fun b!3525455 () Bool)

(assert (=> b!3525455 (= e!2182242 (isEmpty!21837 (_2!21741 (lex!2397 thiss!18206 rules!2135 (print!2136 thiss!18206 (singletonSeq!2578 (h!42791 (t!282384 tokens!494))))))))))

(assert (= (and d!1029058 res!1422041) b!3525453))

(assert (= (and b!3525453 res!1422043) b!3525454))

(assert (= (and d!1029058 res!1422042) b!3525455))

(declare-fun m!3978775 () Bool)

(assert (=> d!1029058 m!3978775))

(assert (=> d!1029058 m!3978133))

(declare-fun m!3978777 () Bool)

(assert (=> d!1029058 m!3978777))

(assert (=> d!1029058 m!3978113))

(assert (=> d!1029058 m!3978133))

(declare-fun m!3978779 () Bool)

(assert (=> d!1029058 m!3978779))

(assert (=> d!1029058 m!3978777))

(declare-fun m!3978781 () Bool)

(assert (=> d!1029058 m!3978781))

(assert (=> d!1029058 m!3978133))

(declare-fun m!3978783 () Bool)

(assert (=> d!1029058 m!3978783))

(declare-fun m!3978785 () Bool)

(assert (=> b!3525453 m!3978785))

(declare-fun m!3978787 () Bool)

(assert (=> b!3525454 m!3978787))

(assert (=> b!3525455 m!3978133))

(assert (=> b!3525455 m!3978133))

(assert (=> b!3525455 m!3978777))

(assert (=> b!3525455 m!3978777))

(assert (=> b!3525455 m!3978781))

(declare-fun m!3978789 () Bool)

(assert (=> b!3525455 m!3978789))

(assert (=> b!3525005 d!1029058))

(declare-fun d!1029060 () Bool)

(assert (=> d!1029060 (rulesProduceIndividualToken!2563 thiss!18206 rules!2135 (h!42791 (t!282384 tokens!494)))))

(declare-fun lt!1204554 () Unit!53054)

(assert (=> d!1029060 (= lt!1204554 (choose!20467 thiss!18206 rules!2135 tokens!494 (h!42791 (t!282384 tokens!494))))))

(assert (=> d!1029060 (not (isEmpty!21836 rules!2135))))

(assert (=> d!1029060 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1060 thiss!18206 rules!2135 tokens!494 (h!42791 (t!282384 tokens!494))) lt!1204554)))

(declare-fun bs!565661 () Bool)

(assert (= bs!565661 d!1029060))

(assert (=> bs!565661 m!3978167))

(declare-fun m!3978791 () Bool)

(assert (=> bs!565661 m!3978791))

(assert (=> bs!565661 m!3978113))

(assert (=> b!3525005 d!1029060))

(declare-fun b!3525481 () Bool)

(declare-fun res!1422069 () Bool)

(declare-fun e!2182253 () Bool)

(assert (=> b!3525481 (=> (not res!1422069) (not e!2182253))))

(declare-fun lt!1204573 () Option!7628)

(declare-fun get!12002 (Option!7628) tuple2!37212)

(assert (=> b!3525481 (= res!1422069 (< (size!28438 (_2!21740 (get!12002 lt!1204573))) (size!28438 lt!1204374)))))

(declare-fun b!3525482 () Bool)

(declare-fun res!1422068 () Bool)

(assert (=> b!3525482 (=> (not res!1422068) (not e!2182253))))

(assert (=> b!3525482 (= res!1422068 (matchR!4825 (regex!5482 (rule!8134 (_1!21740 (get!12002 lt!1204573)))) (list!13673 (charsOf!3496 (_1!21740 (get!12002 lt!1204573))))))))

(declare-fun b!3525483 () Bool)

(declare-fun res!1422067 () Bool)

(assert (=> b!3525483 (=> (not res!1422067) (not e!2182253))))

(assert (=> b!3525483 (= res!1422067 (= (list!13673 (charsOf!3496 (_1!21740 (get!12002 lt!1204573)))) (originalCharacters!6196 (_1!21740 (get!12002 lt!1204573)))))))

(declare-fun b!3525480 () Bool)

(declare-fun res!1422066 () Bool)

(assert (=> b!3525480 (=> (not res!1422066) (not e!2182253))))

(assert (=> b!3525480 (= res!1422066 (= (value!176697 (_1!21740 (get!12002 lt!1204573))) (apply!8914 (transformation!5482 (rule!8134 (_1!21740 (get!12002 lt!1204573)))) (seqFromList!4017 (originalCharacters!6196 (_1!21740 (get!12002 lt!1204573)))))))))

(declare-fun d!1029062 () Bool)

(declare-fun e!2182255 () Bool)

(assert (=> d!1029062 e!2182255))

(declare-fun res!1422064 () Bool)

(assert (=> d!1029062 (=> res!1422064 e!2182255)))

(declare-fun isEmpty!21846 (Option!7628) Bool)

(assert (=> d!1029062 (= res!1422064 (isEmpty!21846 lt!1204573))))

(declare-fun e!2182254 () Option!7628)

(assert (=> d!1029062 (= lt!1204573 e!2182254)))

(declare-fun c!607779 () Bool)

(assert (=> d!1029062 (= c!607779 (and ((_ is Cons!37370) rules!2135) ((_ is Nil!37370) (t!282383 rules!2135))))))

(declare-fun lt!1204569 () Unit!53054)

(declare-fun lt!1204572 () Unit!53054)

(assert (=> d!1029062 (= lt!1204569 lt!1204572)))

(declare-fun isPrefix!2876 (List!37493 List!37493) Bool)

(assert (=> d!1029062 (isPrefix!2876 lt!1204374 lt!1204374)))

(declare-fun lemmaIsPrefixRefl!1835 (List!37493 List!37493) Unit!53054)

(assert (=> d!1029062 (= lt!1204572 (lemmaIsPrefixRefl!1835 lt!1204374 lt!1204374))))

(declare-fun rulesValidInductive!1885 (LexerInterface!5071 List!37494) Bool)

(assert (=> d!1029062 (rulesValidInductive!1885 thiss!18206 rules!2135)))

(assert (=> d!1029062 (= (maxPrefix!2611 thiss!18206 rules!2135 lt!1204374) lt!1204573)))

(declare-fun b!3525484 () Bool)

(declare-fun call!254718 () Option!7628)

(assert (=> b!3525484 (= e!2182254 call!254718)))

(declare-fun b!3525485 () Bool)

(declare-fun lt!1204570 () Option!7628)

(declare-fun lt!1204571 () Option!7628)

(assert (=> b!3525485 (= e!2182254 (ite (and ((_ is None!7627) lt!1204570) ((_ is None!7627) lt!1204571)) None!7627 (ite ((_ is None!7627) lt!1204571) lt!1204570 (ite ((_ is None!7627) lt!1204570) lt!1204571 (ite (>= (size!28437 (_1!21740 (v!37125 lt!1204570))) (size!28437 (_1!21740 (v!37125 lt!1204571)))) lt!1204570 lt!1204571)))))))

(assert (=> b!3525485 (= lt!1204570 call!254718)))

(assert (=> b!3525485 (= lt!1204571 (maxPrefix!2611 thiss!18206 (t!282383 rules!2135) lt!1204374))))

(declare-fun b!3525486 () Bool)

(assert (=> b!3525486 (= e!2182255 e!2182253)))

(declare-fun res!1422070 () Bool)

(assert (=> b!3525486 (=> (not res!1422070) (not e!2182253))))

(declare-fun isDefined!5880 (Option!7628) Bool)

(assert (=> b!3525486 (= res!1422070 (isDefined!5880 lt!1204573))))

(declare-fun b!3525487 () Bool)

(declare-fun res!1422065 () Bool)

(assert (=> b!3525487 (=> (not res!1422065) (not e!2182253))))

(assert (=> b!3525487 (= res!1422065 (= (++!9265 (list!13673 (charsOf!3496 (_1!21740 (get!12002 lt!1204573)))) (_2!21740 (get!12002 lt!1204573))) lt!1204374))))

(declare-fun b!3525488 () Bool)

(assert (=> b!3525488 (= e!2182253 (contains!7017 rules!2135 (rule!8134 (_1!21740 (get!12002 lt!1204573)))))))

(declare-fun bm!254713 () Bool)

(assert (=> bm!254713 (= call!254718 (maxPrefixOneRule!1778 thiss!18206 (h!42790 rules!2135) lt!1204374))))

(assert (= (and d!1029062 c!607779) b!3525484))

(assert (= (and d!1029062 (not c!607779)) b!3525485))

(assert (= (or b!3525484 b!3525485) bm!254713))

(assert (= (and d!1029062 (not res!1422064)) b!3525486))

(assert (= (and b!3525486 res!1422070) b!3525483))

(assert (= (and b!3525483 res!1422067) b!3525481))

(assert (= (and b!3525481 res!1422069) b!3525487))

(assert (= (and b!3525487 res!1422065) b!3525480))

(assert (= (and b!3525480 res!1422066) b!3525482))

(assert (= (and b!3525482 res!1422068) b!3525488))

(declare-fun m!3978809 () Bool)

(assert (=> b!3525488 m!3978809))

(declare-fun m!3978811 () Bool)

(assert (=> b!3525488 m!3978811))

(declare-fun m!3978813 () Bool)

(assert (=> b!3525485 m!3978813))

(assert (=> b!3525482 m!3978809))

(declare-fun m!3978815 () Bool)

(assert (=> b!3525482 m!3978815))

(assert (=> b!3525482 m!3978815))

(declare-fun m!3978817 () Bool)

(assert (=> b!3525482 m!3978817))

(assert (=> b!3525482 m!3978817))

(declare-fun m!3978819 () Bool)

(assert (=> b!3525482 m!3978819))

(declare-fun m!3978821 () Bool)

(assert (=> b!3525486 m!3978821))

(assert (=> b!3525487 m!3978809))

(assert (=> b!3525487 m!3978815))

(assert (=> b!3525487 m!3978815))

(assert (=> b!3525487 m!3978817))

(assert (=> b!3525487 m!3978817))

(declare-fun m!3978823 () Bool)

(assert (=> b!3525487 m!3978823))

(assert (=> b!3525481 m!3978809))

(declare-fun m!3978825 () Bool)

(assert (=> b!3525481 m!3978825))

(declare-fun m!3978827 () Bool)

(assert (=> b!3525481 m!3978827))

(declare-fun m!3978829 () Bool)

(assert (=> bm!254713 m!3978829))

(declare-fun m!3978831 () Bool)

(assert (=> d!1029062 m!3978831))

(declare-fun m!3978833 () Bool)

(assert (=> d!1029062 m!3978833))

(declare-fun m!3978835 () Bool)

(assert (=> d!1029062 m!3978835))

(declare-fun m!3978837 () Bool)

(assert (=> d!1029062 m!3978837))

(assert (=> b!3525483 m!3978809))

(assert (=> b!3525483 m!3978815))

(assert (=> b!3525483 m!3978815))

(assert (=> b!3525483 m!3978817))

(assert (=> b!3525480 m!3978809))

(declare-fun m!3978839 () Bool)

(assert (=> b!3525480 m!3978839))

(assert (=> b!3525480 m!3978839))

(declare-fun m!3978841 () Bool)

(assert (=> b!3525480 m!3978841))

(assert (=> b!3525005 d!1029062))

(declare-fun d!1029066 () Bool)

(assert (=> d!1029066 (= (maxPrefixOneRule!1778 thiss!18206 (rule!8134 (h!42791 (t!282384 tokens!494))) lt!1204339) (Some!7627 (tuple2!37213 (Token!10331 (apply!8914 (transformation!5482 (rule!8134 (h!42791 (t!282384 tokens!494)))) (seqFromList!4017 lt!1204339)) (rule!8134 (h!42791 (t!282384 tokens!494))) (size!28438 lt!1204339) lt!1204339) Nil!37369)))))

(declare-fun lt!1204578 () Unit!53054)

(assert (=> d!1029066 (= lt!1204578 (choose!20469 thiss!18206 rules!2135 lt!1204339 lt!1204339 Nil!37369 (rule!8134 (h!42791 (t!282384 tokens!494)))))))

(assert (=> d!1029066 (not (isEmpty!21836 rules!2135))))

(assert (=> d!1029066 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!871 thiss!18206 rules!2135 lt!1204339 lt!1204339 Nil!37369 (rule!8134 (h!42791 (t!282384 tokens!494)))) lt!1204578)))

(declare-fun bs!565662 () Bool)

(assert (= bs!565662 d!1029066))

(assert (=> bs!565662 m!3978137))

(assert (=> bs!565662 m!3978113))

(declare-fun m!3978845 () Bool)

(assert (=> bs!565662 m!3978845))

(assert (=> bs!565662 m!3978151))

(assert (=> bs!565662 m!3978151))

(assert (=> bs!565662 m!3978205))

(assert (=> bs!565662 m!3978173))

(assert (=> b!3525005 d!1029066))

(declare-fun d!1029070 () Bool)

(assert (=> d!1029070 (= (isDefined!5878 lt!1204362) (not (isEmpty!21844 lt!1204362)))))

(declare-fun bs!565663 () Bool)

(assert (= bs!565663 d!1029070))

(declare-fun m!3978847 () Bool)

(assert (=> bs!565663 m!3978847))

(assert (=> b!3525005 d!1029070))

(declare-fun b!3525503 () Bool)

(declare-fun e!2182266 () Option!7627)

(assert (=> b!3525503 (= e!2182266 (Some!7626 (h!42790 rules!2135)))))

(declare-fun b!3525504 () Bool)

(declare-fun e!2182267 () Bool)

(declare-fun e!2182264 () Bool)

(assert (=> b!3525504 (= e!2182267 e!2182264)))

(declare-fun res!1422078 () Bool)

(assert (=> b!3525504 (=> (not res!1422078) (not e!2182264))))

(declare-fun lt!1204581 () Option!7627)

(assert (=> b!3525504 (= res!1422078 (contains!7017 rules!2135 (get!12000 lt!1204581)))))

(declare-fun b!3525505 () Bool)

(declare-fun lt!1204582 () Unit!53054)

(declare-fun lt!1204583 () Unit!53054)

(assert (=> b!3525505 (= lt!1204582 lt!1204583)))

(assert (=> b!3525505 (rulesInvariant!4468 thiss!18206 (t!282383 rules!2135))))

(assert (=> b!3525505 (= lt!1204583 (lemmaInvariantOnRulesThenOnTail!464 thiss!18206 (h!42790 rules!2135) (t!282383 rules!2135)))))

(declare-fun e!2182265 () Option!7627)

(assert (=> b!3525505 (= e!2182265 (getRuleFromTag!1125 thiss!18206 (t!282383 rules!2135) (tag!6122 (rule!8134 (h!42791 tokens!494)))))))

(declare-fun b!3525506 () Bool)

(assert (=> b!3525506 (= e!2182266 e!2182265)))

(declare-fun c!607784 () Bool)

(assert (=> b!3525506 (= c!607784 (and ((_ is Cons!37370) rules!2135) (not (= (tag!6122 (h!42790 rules!2135)) (tag!6122 (rule!8134 (h!42791 tokens!494)))))))))

(declare-fun d!1029072 () Bool)

(assert (=> d!1029072 e!2182267))

(declare-fun res!1422077 () Bool)

(assert (=> d!1029072 (=> res!1422077 e!2182267)))

(assert (=> d!1029072 (= res!1422077 (isEmpty!21844 lt!1204581))))

(assert (=> d!1029072 (= lt!1204581 e!2182266)))

(declare-fun c!607785 () Bool)

(assert (=> d!1029072 (= c!607785 (and ((_ is Cons!37370) rules!2135) (= (tag!6122 (h!42790 rules!2135)) (tag!6122 (rule!8134 (h!42791 tokens!494))))))))

(assert (=> d!1029072 (rulesInvariant!4468 thiss!18206 rules!2135)))

(assert (=> d!1029072 (= (getRuleFromTag!1125 thiss!18206 rules!2135 (tag!6122 (rule!8134 (h!42791 tokens!494)))) lt!1204581)))

(declare-fun b!3525507 () Bool)

(assert (=> b!3525507 (= e!2182264 (= (tag!6122 (get!12000 lt!1204581)) (tag!6122 (rule!8134 (h!42791 tokens!494)))))))

(declare-fun b!3525508 () Bool)

(assert (=> b!3525508 (= e!2182265 None!7626)))

(assert (= (and d!1029072 c!607785) b!3525503))

(assert (= (and d!1029072 (not c!607785)) b!3525506))

(assert (= (and b!3525506 c!607784) b!3525505))

(assert (= (and b!3525506 (not c!607784)) b!3525508))

(assert (= (and d!1029072 (not res!1422077)) b!3525504))

(assert (= (and b!3525504 res!1422078) b!3525507))

(declare-fun m!3978855 () Bool)

(assert (=> b!3525504 m!3978855))

(assert (=> b!3525504 m!3978855))

(declare-fun m!3978861 () Bool)

(assert (=> b!3525504 m!3978861))

(assert (=> b!3525505 m!3978579))

(assert (=> b!3525505 m!3978581))

(declare-fun m!3978869 () Bool)

(assert (=> b!3525505 m!3978869))

(declare-fun m!3978873 () Bool)

(assert (=> d!1029072 m!3978873))

(assert (=> d!1029072 m!3978223))

(assert (=> b!3525507 m!3978855))

(assert (=> b!3525005 d!1029072))

(declare-fun d!1029076 () Bool)

(declare-fun e!2182268 () Bool)

(assert (=> d!1029076 e!2182268))

(declare-fun res!1422079 () Bool)

(assert (=> d!1029076 (=> (not res!1422079) (not e!2182268))))

(assert (=> d!1029076 (= res!1422079 (isDefined!5878 (getRuleFromTag!1125 thiss!18206 rules!2135 (tag!6122 (rule!8134 (h!42791 tokens!494))))))))

(declare-fun lt!1204584 () Unit!53054)

(assert (=> d!1029076 (= lt!1204584 (choose!20466 thiss!18206 rules!2135 lt!1204378 (h!42791 tokens!494)))))

(assert (=> d!1029076 (rulesInvariant!4468 thiss!18206 rules!2135)))

(assert (=> d!1029076 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1125 thiss!18206 rules!2135 lt!1204378 (h!42791 tokens!494)) lt!1204584)))

(declare-fun b!3525509 () Bool)

(declare-fun res!1422080 () Bool)

(assert (=> b!3525509 (=> (not res!1422080) (not e!2182268))))

(assert (=> b!3525509 (= res!1422080 (matchR!4825 (regex!5482 (get!12000 (getRuleFromTag!1125 thiss!18206 rules!2135 (tag!6122 (rule!8134 (h!42791 tokens!494)))))) (list!13673 (charsOf!3496 (h!42791 tokens!494)))))))

(declare-fun b!3525510 () Bool)

(assert (=> b!3525510 (= e!2182268 (= (rule!8134 (h!42791 tokens!494)) (get!12000 (getRuleFromTag!1125 thiss!18206 rules!2135 (tag!6122 (rule!8134 (h!42791 tokens!494)))))))))

(assert (= (and d!1029076 res!1422079) b!3525509))

(assert (= (and b!3525509 res!1422080) b!3525510))

(assert (=> d!1029076 m!3978153))

(assert (=> d!1029076 m!3978153))

(declare-fun m!3978877 () Bool)

(assert (=> d!1029076 m!3978877))

(declare-fun m!3978879 () Bool)

(assert (=> d!1029076 m!3978879))

(assert (=> d!1029076 m!3978223))

(assert (=> b!3525509 m!3978219))

(assert (=> b!3525509 m!3978153))

(declare-fun m!3978881 () Bool)

(assert (=> b!3525509 m!3978881))

(assert (=> b!3525509 m!3978153))

(assert (=> b!3525509 m!3978219))

(assert (=> b!3525509 m!3978221))

(assert (=> b!3525509 m!3978221))

(declare-fun m!3978883 () Bool)

(assert (=> b!3525509 m!3978883))

(assert (=> b!3525510 m!3978153))

(assert (=> b!3525510 m!3978153))

(assert (=> b!3525510 m!3978881))

(assert (=> b!3525005 d!1029076))

(declare-fun d!1029080 () Bool)

(declare-fun lt!1204594 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5269 (List!37493) (InoxSet C!20668))

(assert (=> d!1029080 (= lt!1204594 (select (content!5269 (usedCharacters!716 (regex!5482 (rule!8134 separatorToken!241)))) lt!1204357))))

(declare-fun e!2182281 () Bool)

(assert (=> d!1029080 (= lt!1204594 e!2182281)))

(declare-fun res!1422091 () Bool)

(assert (=> d!1029080 (=> (not res!1422091) (not e!2182281))))

(assert (=> d!1029080 (= res!1422091 ((_ is Cons!37369) (usedCharacters!716 (regex!5482 (rule!8134 separatorToken!241)))))))

(assert (=> d!1029080 (= (contains!7018 (usedCharacters!716 (regex!5482 (rule!8134 separatorToken!241))) lt!1204357) lt!1204594)))

(declare-fun b!3525524 () Bool)

(declare-fun e!2182280 () Bool)

(assert (=> b!3525524 (= e!2182281 e!2182280)))

(declare-fun res!1422090 () Bool)

(assert (=> b!3525524 (=> res!1422090 e!2182280)))

(assert (=> b!3525524 (= res!1422090 (= (h!42789 (usedCharacters!716 (regex!5482 (rule!8134 separatorToken!241)))) lt!1204357))))

(declare-fun b!3525525 () Bool)

(assert (=> b!3525525 (= e!2182280 (contains!7018 (t!282382 (usedCharacters!716 (regex!5482 (rule!8134 separatorToken!241)))) lt!1204357))))

(assert (= (and d!1029080 res!1422091) b!3525524))

(assert (= (and b!3525524 (not res!1422090)) b!3525525))

(assert (=> d!1029080 m!3978129))

(declare-fun m!3978893 () Bool)

(assert (=> d!1029080 m!3978893))

(declare-fun m!3978895 () Bool)

(assert (=> d!1029080 m!3978895))

(declare-fun m!3978897 () Bool)

(assert (=> b!3525525 m!3978897))

(assert (=> b!3525005 d!1029080))

(declare-fun d!1029084 () Bool)

(declare-fun e!2182284 () Bool)

(assert (=> d!1029084 e!2182284))

(declare-fun res!1422094 () Bool)

(assert (=> d!1029084 (=> (not res!1422094) (not e!2182284))))

(declare-fun lt!1204597 () BalanceConc!22294)

(assert (=> d!1029084 (= res!1422094 (= (list!13676 lt!1204597) (Cons!37371 separatorToken!241 Nil!37371)))))

(declare-fun singleton!1152 (Token!10330) BalanceConc!22294)

(assert (=> d!1029084 (= lt!1204597 (singleton!1152 separatorToken!241))))

(assert (=> d!1029084 (= (singletonSeq!2578 separatorToken!241) lt!1204597)))

(declare-fun b!3525528 () Bool)

(declare-fun isBalanced!3461 (Conc!11340) Bool)

(assert (=> b!3525528 (= e!2182284 (isBalanced!3461 (c!607690 lt!1204597)))))

(assert (= (and d!1029084 res!1422094) b!3525528))

(declare-fun m!3978907 () Bool)

(assert (=> d!1029084 m!3978907))

(declare-fun m!3978909 () Bool)

(assert (=> d!1029084 m!3978909))

(declare-fun m!3978911 () Bool)

(assert (=> b!3525528 m!3978911))

(assert (=> b!3525005 d!1029084))

(declare-fun d!1029088 () Bool)

(declare-fun lt!1204598 () Bool)

(assert (=> d!1029088 (= lt!1204598 (select (content!5269 (usedCharacters!716 (regex!5482 (rule!8134 (h!42791 tokens!494))))) lt!1204357))))

(declare-fun e!2182286 () Bool)

(assert (=> d!1029088 (= lt!1204598 e!2182286)))

(declare-fun res!1422096 () Bool)

(assert (=> d!1029088 (=> (not res!1422096) (not e!2182286))))

(assert (=> d!1029088 (= res!1422096 ((_ is Cons!37369) (usedCharacters!716 (regex!5482 (rule!8134 (h!42791 tokens!494))))))))

(assert (=> d!1029088 (= (contains!7018 (usedCharacters!716 (regex!5482 (rule!8134 (h!42791 tokens!494)))) lt!1204357) lt!1204598)))

(declare-fun b!3525529 () Bool)

(declare-fun e!2182285 () Bool)

(assert (=> b!3525529 (= e!2182286 e!2182285)))

(declare-fun res!1422095 () Bool)

(assert (=> b!3525529 (=> res!1422095 e!2182285)))

(assert (=> b!3525529 (= res!1422095 (= (h!42789 (usedCharacters!716 (regex!5482 (rule!8134 (h!42791 tokens!494))))) lt!1204357))))

(declare-fun b!3525530 () Bool)

(assert (=> b!3525530 (= e!2182285 (contains!7018 (t!282382 (usedCharacters!716 (regex!5482 (rule!8134 (h!42791 tokens!494))))) lt!1204357))))

(assert (= (and d!1029088 res!1422096) b!3525529))

(assert (= (and b!3525529 (not res!1422095)) b!3525530))

(assert (=> d!1029088 m!3978135))

(declare-fun m!3978913 () Bool)

(assert (=> d!1029088 m!3978913))

(declare-fun m!3978915 () Bool)

(assert (=> d!1029088 m!3978915))

(declare-fun m!3978917 () Bool)

(assert (=> b!3525530 m!3978917))

(assert (=> b!3525005 d!1029088))

(declare-fun d!1029090 () Bool)

(declare-fun lt!1204599 () Bool)

(assert (=> d!1029090 (= lt!1204599 (select (content!5269 (usedCharacters!716 (regex!5482 (rule!8134 (h!42791 (t!282384 tokens!494)))))) lt!1204384))))

(declare-fun e!2182288 () Bool)

(assert (=> d!1029090 (= lt!1204599 e!2182288)))

(declare-fun res!1422098 () Bool)

(assert (=> d!1029090 (=> (not res!1422098) (not e!2182288))))

(assert (=> d!1029090 (= res!1422098 ((_ is Cons!37369) (usedCharacters!716 (regex!5482 (rule!8134 (h!42791 (t!282384 tokens!494)))))))))

(assert (=> d!1029090 (= (contains!7018 (usedCharacters!716 (regex!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))) lt!1204384) lt!1204599)))

(declare-fun b!3525531 () Bool)

(declare-fun e!2182287 () Bool)

(assert (=> b!3525531 (= e!2182288 e!2182287)))

(declare-fun res!1422097 () Bool)

(assert (=> b!3525531 (=> res!1422097 e!2182287)))

(assert (=> b!3525531 (= res!1422097 (= (h!42789 (usedCharacters!716 (regex!5482 (rule!8134 (h!42791 (t!282384 tokens!494)))))) lt!1204384))))

(declare-fun b!3525532 () Bool)

(assert (=> b!3525532 (= e!2182287 (contains!7018 (t!282382 (usedCharacters!716 (regex!5482 (rule!8134 (h!42791 (t!282384 tokens!494)))))) lt!1204384))))

(assert (= (and d!1029090 res!1422098) b!3525531))

(assert (= (and b!3525531 (not res!1422097)) b!3525532))

(assert (=> d!1029090 m!3978161))

(declare-fun m!3978919 () Bool)

(assert (=> d!1029090 m!3978919))

(declare-fun m!3978921 () Bool)

(assert (=> d!1029090 m!3978921))

(declare-fun m!3978923 () Bool)

(assert (=> b!3525532 m!3978923))

(assert (=> b!3525005 d!1029090))

(declare-fun b!3525551 () Bool)

(declare-fun res!1422117 () Bool)

(declare-fun e!2182297 () Bool)

(assert (=> b!3525551 (=> (not res!1422117) (not e!2182297))))

(declare-fun lt!1204615 () Option!7628)

(assert (=> b!3525551 (= res!1422117 (= (rule!8134 (_1!21740 (get!12002 lt!1204615))) (rule!8134 (h!42791 (t!282384 tokens!494)))))))

(declare-fun b!3525552 () Bool)

(declare-fun res!1422113 () Bool)

(assert (=> b!3525552 (=> (not res!1422113) (not e!2182297))))

(assert (=> b!3525552 (= res!1422113 (= (++!9265 (list!13673 (charsOf!3496 (_1!21740 (get!12002 lt!1204615)))) (_2!21740 (get!12002 lt!1204615))) lt!1204339))))

(declare-fun b!3525553 () Bool)

(declare-fun e!2182300 () Bool)

(assert (=> b!3525553 (= e!2182300 e!2182297)))

(declare-fun res!1422114 () Bool)

(assert (=> b!3525553 (=> (not res!1422114) (not e!2182297))))

(assert (=> b!3525553 (= res!1422114 (matchR!4825 (regex!5482 (rule!8134 (h!42791 (t!282384 tokens!494)))) (list!13673 (charsOf!3496 (_1!21740 (get!12002 lt!1204615))))))))

(declare-fun b!3525554 () Bool)

(declare-fun e!2182298 () Bool)

(declare-datatypes ((tuple2!37222 0))(
  ( (tuple2!37223 (_1!21745 List!37493) (_2!21745 List!37493)) )
))
(declare-fun findLongestMatchInner!941 (Regex!10241 List!37493 Int List!37493 List!37493 Int) tuple2!37222)

(assert (=> b!3525554 (= e!2182298 (matchR!4825 (regex!5482 (rule!8134 (h!42791 (t!282384 tokens!494)))) (_1!21745 (findLongestMatchInner!941 (regex!5482 (rule!8134 (h!42791 (t!282384 tokens!494)))) Nil!37369 (size!28438 Nil!37369) lt!1204339 lt!1204339 (size!28438 lt!1204339)))))))

(declare-fun b!3525555 () Bool)

(declare-fun res!1422116 () Bool)

(assert (=> b!3525555 (=> (not res!1422116) (not e!2182297))))

(assert (=> b!3525555 (= res!1422116 (< (size!28438 (_2!21740 (get!12002 lt!1204615))) (size!28438 lt!1204339)))))

(declare-fun b!3525556 () Bool)

(declare-fun e!2182299 () Option!7628)

(declare-fun lt!1204619 () tuple2!37222)

(assert (=> b!3525556 (= e!2182299 (Some!7627 (tuple2!37213 (Token!10331 (apply!8914 (transformation!5482 (rule!8134 (h!42791 (t!282384 tokens!494)))) (seqFromList!4017 (_1!21745 lt!1204619))) (rule!8134 (h!42791 (t!282384 tokens!494))) (size!28443 (seqFromList!4017 (_1!21745 lt!1204619))) (_1!21745 lt!1204619)) (_2!21745 lt!1204619))))))

(declare-fun lt!1204617 () Unit!53054)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!914 (Regex!10241 List!37493) Unit!53054)

(assert (=> b!3525556 (= lt!1204617 (longestMatchIsAcceptedByMatchOrIsEmpty!914 (regex!5482 (rule!8134 (h!42791 (t!282384 tokens!494)))) lt!1204339))))

(declare-fun res!1422119 () Bool)

(assert (=> b!3525556 (= res!1422119 (isEmpty!21839 (_1!21745 (findLongestMatchInner!941 (regex!5482 (rule!8134 (h!42791 (t!282384 tokens!494)))) Nil!37369 (size!28438 Nil!37369) lt!1204339 lt!1204339 (size!28438 lt!1204339)))))))

(assert (=> b!3525556 (=> res!1422119 e!2182298)))

(assert (=> b!3525556 e!2182298))

(declare-fun lt!1204618 () Unit!53054)

(assert (=> b!3525556 (= lt!1204618 lt!1204617)))

(declare-fun lt!1204616 () Unit!53054)

(declare-fun lemmaSemiInverse!1293 (TokenValueInjection!10852 BalanceConc!22292) Unit!53054)

(assert (=> b!3525556 (= lt!1204616 (lemmaSemiInverse!1293 (transformation!5482 (rule!8134 (h!42791 (t!282384 tokens!494)))) (seqFromList!4017 (_1!21745 lt!1204619))))))

(declare-fun b!3525557 () Bool)

(assert (=> b!3525557 (= e!2182297 (= (size!28437 (_1!21740 (get!12002 lt!1204615))) (size!28438 (originalCharacters!6196 (_1!21740 (get!12002 lt!1204615))))))))

(declare-fun d!1029092 () Bool)

(assert (=> d!1029092 e!2182300))

(declare-fun res!1422115 () Bool)

(assert (=> d!1029092 (=> res!1422115 e!2182300)))

(assert (=> d!1029092 (= res!1422115 (isEmpty!21846 lt!1204615))))

(assert (=> d!1029092 (= lt!1204615 e!2182299)))

(declare-fun c!607790 () Bool)

(assert (=> d!1029092 (= c!607790 (isEmpty!21839 (_1!21745 lt!1204619)))))

(declare-fun findLongestMatch!856 (Regex!10241 List!37493) tuple2!37222)

(assert (=> d!1029092 (= lt!1204619 (findLongestMatch!856 (regex!5482 (rule!8134 (h!42791 (t!282384 tokens!494)))) lt!1204339))))

(declare-fun ruleValid!1774 (LexerInterface!5071 Rule!10764) Bool)

(assert (=> d!1029092 (ruleValid!1774 thiss!18206 (rule!8134 (h!42791 (t!282384 tokens!494))))))

(assert (=> d!1029092 (= (maxPrefixOneRule!1778 thiss!18206 (rule!8134 (h!42791 (t!282384 tokens!494))) lt!1204339) lt!1204615)))

(declare-fun b!3525558 () Bool)

(declare-fun res!1422118 () Bool)

(assert (=> b!3525558 (=> (not res!1422118) (not e!2182297))))

(assert (=> b!3525558 (= res!1422118 (= (value!176697 (_1!21740 (get!12002 lt!1204615))) (apply!8914 (transformation!5482 (rule!8134 (_1!21740 (get!12002 lt!1204615)))) (seqFromList!4017 (originalCharacters!6196 (_1!21740 (get!12002 lt!1204615)))))))))

(declare-fun b!3525559 () Bool)

(assert (=> b!3525559 (= e!2182299 None!7627)))

(assert (= (and d!1029092 c!607790) b!3525559))

(assert (= (and d!1029092 (not c!607790)) b!3525556))

(assert (= (and b!3525556 (not res!1422119)) b!3525554))

(assert (= (and d!1029092 (not res!1422115)) b!3525553))

(assert (= (and b!3525553 res!1422114) b!3525552))

(assert (= (and b!3525552 res!1422113) b!3525555))

(assert (= (and b!3525555 res!1422116) b!3525551))

(assert (= (and b!3525551 res!1422117) b!3525558))

(assert (= (and b!3525558 res!1422118) b!3525557))

(declare-fun m!3978939 () Bool)

(assert (=> b!3525554 m!3978939))

(assert (=> b!3525554 m!3978173))

(assert (=> b!3525554 m!3978939))

(assert (=> b!3525554 m!3978173))

(declare-fun m!3978941 () Bool)

(assert (=> b!3525554 m!3978941))

(declare-fun m!3978943 () Bool)

(assert (=> b!3525554 m!3978943))

(declare-fun m!3978945 () Bool)

(assert (=> d!1029092 m!3978945))

(declare-fun m!3978947 () Bool)

(assert (=> d!1029092 m!3978947))

(declare-fun m!3978949 () Bool)

(assert (=> d!1029092 m!3978949))

(declare-fun m!3978951 () Bool)

(assert (=> d!1029092 m!3978951))

(declare-fun m!3978953 () Bool)

(assert (=> b!3525552 m!3978953))

(declare-fun m!3978955 () Bool)

(assert (=> b!3525552 m!3978955))

(assert (=> b!3525552 m!3978955))

(declare-fun m!3978957 () Bool)

(assert (=> b!3525552 m!3978957))

(assert (=> b!3525552 m!3978957))

(declare-fun m!3978959 () Bool)

(assert (=> b!3525552 m!3978959))

(assert (=> b!3525555 m!3978953))

(declare-fun m!3978961 () Bool)

(assert (=> b!3525555 m!3978961))

(assert (=> b!3525555 m!3978173))

(declare-fun m!3978963 () Bool)

(assert (=> b!3525556 m!3978963))

(declare-fun m!3978965 () Bool)

(assert (=> b!3525556 m!3978965))

(assert (=> b!3525556 m!3978963))

(declare-fun m!3978967 () Bool)

(assert (=> b!3525556 m!3978967))

(assert (=> b!3525556 m!3978963))

(declare-fun m!3978969 () Bool)

(assert (=> b!3525556 m!3978969))

(declare-fun m!3978971 () Bool)

(assert (=> b!3525556 m!3978971))

(assert (=> b!3525556 m!3978173))

(assert (=> b!3525556 m!3978939))

(assert (=> b!3525556 m!3978963))

(declare-fun m!3978973 () Bool)

(assert (=> b!3525556 m!3978973))

(assert (=> b!3525556 m!3978939))

(assert (=> b!3525556 m!3978173))

(assert (=> b!3525556 m!3978941))

(assert (=> b!3525551 m!3978953))

(assert (=> b!3525558 m!3978953))

(declare-fun m!3978975 () Bool)

(assert (=> b!3525558 m!3978975))

(assert (=> b!3525558 m!3978975))

(declare-fun m!3978977 () Bool)

(assert (=> b!3525558 m!3978977))

(assert (=> b!3525557 m!3978953))

(declare-fun m!3978979 () Bool)

(assert (=> b!3525557 m!3978979))

(assert (=> b!3525553 m!3978953))

(assert (=> b!3525553 m!3978955))

(assert (=> b!3525553 m!3978955))

(assert (=> b!3525553 m!3978957))

(assert (=> b!3525553 m!3978957))

(declare-fun m!3978981 () Bool)

(assert (=> b!3525553 m!3978981))

(assert (=> b!3525005 d!1029092))

(declare-fun d!1029102 () Bool)

(assert (=> d!1029102 (dynLambda!15937 lambda!122859 (h!42791 (t!282384 tokens!494)))))

(declare-fun lt!1204630 () Unit!53054)

(assert (=> d!1029102 (= lt!1204630 (choose!20464 tokens!494 lambda!122859 (h!42791 (t!282384 tokens!494))))))

(declare-fun e!2182309 () Bool)

(assert (=> d!1029102 e!2182309))

(declare-fun res!1422130 () Bool)

(assert (=> d!1029102 (=> (not res!1422130) (not e!2182309))))

(assert (=> d!1029102 (= res!1422130 (forall!8041 tokens!494 lambda!122859))))

(assert (=> d!1029102 (= (forallContained!1429 tokens!494 lambda!122859 (h!42791 (t!282384 tokens!494))) lt!1204630)))

(declare-fun b!3525572 () Bool)

(assert (=> b!3525572 (= e!2182309 (contains!7019 tokens!494 (h!42791 (t!282384 tokens!494))))))

(assert (= (and d!1029102 res!1422130) b!3525572))

(declare-fun b_lambda!103015 () Bool)

(assert (=> (not b_lambda!103015) (not d!1029102)))

(declare-fun m!3978983 () Bool)

(assert (=> d!1029102 m!3978983))

(declare-fun m!3978985 () Bool)

(assert (=> d!1029102 m!3978985))

(declare-fun m!3978987 () Bool)

(assert (=> d!1029102 m!3978987))

(assert (=> b!3525572 m!3978465))

(assert (=> b!3525005 d!1029102))

(declare-fun d!1029104 () Bool)

(declare-fun e!2182310 () Bool)

(assert (=> d!1029104 e!2182310))

(declare-fun res!1422135 () Bool)

(assert (=> d!1029104 (=> (not res!1422135) (not e!2182310))))

(declare-fun lt!1204631 () BalanceConc!22294)

(assert (=> d!1029104 (= res!1422135 (= (list!13676 lt!1204631) (Cons!37371 (h!42791 (t!282384 tokens!494)) Nil!37371)))))

(assert (=> d!1029104 (= lt!1204631 (singleton!1152 (h!42791 (t!282384 tokens!494))))))

(assert (=> d!1029104 (= (singletonSeq!2578 (h!42791 (t!282384 tokens!494))) lt!1204631)))

(declare-fun b!3525579 () Bool)

(assert (=> b!3525579 (= e!2182310 (isBalanced!3461 (c!607690 lt!1204631)))))

(assert (= (and d!1029104 res!1422135) b!3525579))

(declare-fun m!3978989 () Bool)

(assert (=> d!1029104 m!3978989))

(declare-fun m!3978991 () Bool)

(assert (=> d!1029104 m!3978991))

(declare-fun m!3978993 () Bool)

(assert (=> b!3525579 m!3978993))

(assert (=> b!3525005 d!1029104))

(declare-fun b!3525580 () Bool)

(declare-fun res!1422140 () Bool)

(declare-fun e!2182311 () Bool)

(assert (=> b!3525580 (=> (not res!1422140) (not e!2182311))))

(declare-fun lt!1204632 () Option!7628)

(assert (=> b!3525580 (= res!1422140 (= (rule!8134 (_1!21740 (get!12002 lt!1204632))) (rule!8134 (h!42791 tokens!494))))))

(declare-fun b!3525581 () Bool)

(declare-fun res!1422136 () Bool)

(assert (=> b!3525581 (=> (not res!1422136) (not e!2182311))))

(assert (=> b!3525581 (= res!1422136 (= (++!9265 (list!13673 (charsOf!3496 (_1!21740 (get!12002 lt!1204632)))) (_2!21740 (get!12002 lt!1204632))) lt!1204378))))

(declare-fun b!3525582 () Bool)

(declare-fun e!2182314 () Bool)

(assert (=> b!3525582 (= e!2182314 e!2182311)))

(declare-fun res!1422137 () Bool)

(assert (=> b!3525582 (=> (not res!1422137) (not e!2182311))))

(assert (=> b!3525582 (= res!1422137 (matchR!4825 (regex!5482 (rule!8134 (h!42791 tokens!494))) (list!13673 (charsOf!3496 (_1!21740 (get!12002 lt!1204632))))))))

(declare-fun b!3525583 () Bool)

(declare-fun e!2182312 () Bool)

(assert (=> b!3525583 (= e!2182312 (matchR!4825 (regex!5482 (rule!8134 (h!42791 tokens!494))) (_1!21745 (findLongestMatchInner!941 (regex!5482 (rule!8134 (h!42791 tokens!494))) Nil!37369 (size!28438 Nil!37369) lt!1204378 lt!1204378 (size!28438 lt!1204378)))))))

(declare-fun b!3525584 () Bool)

(declare-fun res!1422139 () Bool)

(assert (=> b!3525584 (=> (not res!1422139) (not e!2182311))))

(assert (=> b!3525584 (= res!1422139 (< (size!28438 (_2!21740 (get!12002 lt!1204632))) (size!28438 lt!1204378)))))

(declare-fun b!3525585 () Bool)

(declare-fun e!2182313 () Option!7628)

(declare-fun lt!1204636 () tuple2!37222)

(assert (=> b!3525585 (= e!2182313 (Some!7627 (tuple2!37213 (Token!10331 (apply!8914 (transformation!5482 (rule!8134 (h!42791 tokens!494))) (seqFromList!4017 (_1!21745 lt!1204636))) (rule!8134 (h!42791 tokens!494)) (size!28443 (seqFromList!4017 (_1!21745 lt!1204636))) (_1!21745 lt!1204636)) (_2!21745 lt!1204636))))))

(declare-fun lt!1204634 () Unit!53054)

(assert (=> b!3525585 (= lt!1204634 (longestMatchIsAcceptedByMatchOrIsEmpty!914 (regex!5482 (rule!8134 (h!42791 tokens!494))) lt!1204378))))

(declare-fun res!1422142 () Bool)

(assert (=> b!3525585 (= res!1422142 (isEmpty!21839 (_1!21745 (findLongestMatchInner!941 (regex!5482 (rule!8134 (h!42791 tokens!494))) Nil!37369 (size!28438 Nil!37369) lt!1204378 lt!1204378 (size!28438 lt!1204378)))))))

(assert (=> b!3525585 (=> res!1422142 e!2182312)))

(assert (=> b!3525585 e!2182312))

(declare-fun lt!1204635 () Unit!53054)

(assert (=> b!3525585 (= lt!1204635 lt!1204634)))

(declare-fun lt!1204633 () Unit!53054)

(assert (=> b!3525585 (= lt!1204633 (lemmaSemiInverse!1293 (transformation!5482 (rule!8134 (h!42791 tokens!494))) (seqFromList!4017 (_1!21745 lt!1204636))))))

(declare-fun b!3525586 () Bool)

(assert (=> b!3525586 (= e!2182311 (= (size!28437 (_1!21740 (get!12002 lt!1204632))) (size!28438 (originalCharacters!6196 (_1!21740 (get!12002 lt!1204632))))))))

(declare-fun d!1029106 () Bool)

(assert (=> d!1029106 e!2182314))

(declare-fun res!1422138 () Bool)

(assert (=> d!1029106 (=> res!1422138 e!2182314)))

(assert (=> d!1029106 (= res!1422138 (isEmpty!21846 lt!1204632))))

(assert (=> d!1029106 (= lt!1204632 e!2182313)))

(declare-fun c!607793 () Bool)

(assert (=> d!1029106 (= c!607793 (isEmpty!21839 (_1!21745 lt!1204636)))))

(assert (=> d!1029106 (= lt!1204636 (findLongestMatch!856 (regex!5482 (rule!8134 (h!42791 tokens!494))) lt!1204378))))

(assert (=> d!1029106 (ruleValid!1774 thiss!18206 (rule!8134 (h!42791 tokens!494)))))

(assert (=> d!1029106 (= (maxPrefixOneRule!1778 thiss!18206 (rule!8134 (h!42791 tokens!494)) lt!1204378) lt!1204632)))

(declare-fun b!3525587 () Bool)

(declare-fun res!1422141 () Bool)

(assert (=> b!3525587 (=> (not res!1422141) (not e!2182311))))

(assert (=> b!3525587 (= res!1422141 (= (value!176697 (_1!21740 (get!12002 lt!1204632))) (apply!8914 (transformation!5482 (rule!8134 (_1!21740 (get!12002 lt!1204632)))) (seqFromList!4017 (originalCharacters!6196 (_1!21740 (get!12002 lt!1204632)))))))))

(declare-fun b!3525588 () Bool)

(assert (=> b!3525588 (= e!2182313 None!7627)))

(assert (= (and d!1029106 c!607793) b!3525588))

(assert (= (and d!1029106 (not c!607793)) b!3525585))

(assert (= (and b!3525585 (not res!1422142)) b!3525583))

(assert (= (and d!1029106 (not res!1422138)) b!3525582))

(assert (= (and b!3525582 res!1422137) b!3525581))

(assert (= (and b!3525581 res!1422136) b!3525584))

(assert (= (and b!3525584 res!1422139) b!3525580))

(assert (= (and b!3525580 res!1422140) b!3525587))

(assert (= (and b!3525587 res!1422141) b!3525586))

(assert (=> b!3525583 m!3978939))

(assert (=> b!3525583 m!3978121))

(assert (=> b!3525583 m!3978939))

(assert (=> b!3525583 m!3978121))

(declare-fun m!3978995 () Bool)

(assert (=> b!3525583 m!3978995))

(declare-fun m!3978997 () Bool)

(assert (=> b!3525583 m!3978997))

(declare-fun m!3978999 () Bool)

(assert (=> d!1029106 m!3978999))

(declare-fun m!3979001 () Bool)

(assert (=> d!1029106 m!3979001))

(declare-fun m!3979003 () Bool)

(assert (=> d!1029106 m!3979003))

(declare-fun m!3979005 () Bool)

(assert (=> d!1029106 m!3979005))

(declare-fun m!3979007 () Bool)

(assert (=> b!3525581 m!3979007))

(declare-fun m!3979009 () Bool)

(assert (=> b!3525581 m!3979009))

(assert (=> b!3525581 m!3979009))

(declare-fun m!3979011 () Bool)

(assert (=> b!3525581 m!3979011))

(assert (=> b!3525581 m!3979011))

(declare-fun m!3979013 () Bool)

(assert (=> b!3525581 m!3979013))

(assert (=> b!3525584 m!3979007))

(declare-fun m!3979015 () Bool)

(assert (=> b!3525584 m!3979015))

(assert (=> b!3525584 m!3978121))

(declare-fun m!3979017 () Bool)

(assert (=> b!3525585 m!3979017))

(declare-fun m!3979019 () Bool)

(assert (=> b!3525585 m!3979019))

(assert (=> b!3525585 m!3979017))

(declare-fun m!3979021 () Bool)

(assert (=> b!3525585 m!3979021))

(assert (=> b!3525585 m!3979017))

(declare-fun m!3979023 () Bool)

(assert (=> b!3525585 m!3979023))

(declare-fun m!3979025 () Bool)

(assert (=> b!3525585 m!3979025))

(assert (=> b!3525585 m!3978121))

(assert (=> b!3525585 m!3978939))

(assert (=> b!3525585 m!3979017))

(declare-fun m!3979027 () Bool)

(assert (=> b!3525585 m!3979027))

(assert (=> b!3525585 m!3978939))

(assert (=> b!3525585 m!3978121))

(assert (=> b!3525585 m!3978995))

(assert (=> b!3525580 m!3979007))

(assert (=> b!3525587 m!3979007))

(declare-fun m!3979029 () Bool)

(assert (=> b!3525587 m!3979029))

(assert (=> b!3525587 m!3979029))

(declare-fun m!3979031 () Bool)

(assert (=> b!3525587 m!3979031))

(assert (=> b!3525586 m!3979007))

(declare-fun m!3979033 () Bool)

(assert (=> b!3525586 m!3979033))

(assert (=> b!3525582 m!3979007))

(assert (=> b!3525582 m!3979009))

(assert (=> b!3525582 m!3979009))

(assert (=> b!3525582 m!3979011))

(assert (=> b!3525582 m!3979011))

(declare-fun m!3979035 () Bool)

(assert (=> b!3525582 m!3979035))

(assert (=> b!3525005 d!1029106))

(declare-fun d!1029108 () Bool)

(declare-fun lt!1204639 () Int)

(assert (=> d!1029108 (>= lt!1204639 0)))

(declare-fun e!2182317 () Int)

(assert (=> d!1029108 (= lt!1204639 e!2182317)))

(declare-fun c!607796 () Bool)

(assert (=> d!1029108 (= c!607796 ((_ is Nil!37369) lt!1204339))))

(assert (=> d!1029108 (= (size!28438 lt!1204339) lt!1204639)))

(declare-fun b!3525593 () Bool)

(assert (=> b!3525593 (= e!2182317 0)))

(declare-fun b!3525594 () Bool)

(assert (=> b!3525594 (= e!2182317 (+ 1 (size!28438 (t!282382 lt!1204339))))))

(assert (= (and d!1029108 c!607796) b!3525593))

(assert (= (and d!1029108 (not c!607796)) b!3525594))

(declare-fun m!3979037 () Bool)

(assert (=> b!3525594 m!3979037))

(assert (=> b!3525005 d!1029108))

(declare-fun d!1029110 () Bool)

(assert (=> d!1029110 (not (contains!7018 (usedCharacters!716 (regex!5482 (rule!8134 (h!42791 tokens!494)))) lt!1204357))))

(declare-fun lt!1204647 () Unit!53054)

(declare-fun choose!20474 (LexerInterface!5071 List!37494 List!37494 Rule!10764 Rule!10764 C!20668) Unit!53054)

(assert (=> d!1029110 (= lt!1204647 (choose!20474 thiss!18206 rules!2135 rules!2135 (rule!8134 (h!42791 tokens!494)) (rule!8134 separatorToken!241) lt!1204357))))

(assert (=> d!1029110 (rulesInvariant!4468 thiss!18206 rules!2135)))

(assert (=> d!1029110 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!282 thiss!18206 rules!2135 rules!2135 (rule!8134 (h!42791 tokens!494)) (rule!8134 separatorToken!241) lt!1204357) lt!1204647)))

(declare-fun bs!565669 () Bool)

(assert (= bs!565669 d!1029110))

(assert (=> bs!565669 m!3978135))

(assert (=> bs!565669 m!3978135))

(assert (=> bs!565669 m!3978163))

(declare-fun m!3979083 () Bool)

(assert (=> bs!565669 m!3979083))

(assert (=> bs!565669 m!3978223))

(assert (=> b!3525005 d!1029110))

(declare-fun d!1029114 () Bool)

(declare-fun lt!1204650 () Bool)

(declare-fun content!5271 (List!37494) (InoxSet Rule!10764))

(assert (=> d!1029114 (= lt!1204650 (select (content!5271 rules!2135) (rule!8134 separatorToken!241)))))

(declare-fun e!2182331 () Bool)

(assert (=> d!1029114 (= lt!1204650 e!2182331)))

(declare-fun res!1422155 () Bool)

(assert (=> d!1029114 (=> (not res!1422155) (not e!2182331))))

(assert (=> d!1029114 (= res!1422155 ((_ is Cons!37370) rules!2135))))

(assert (=> d!1029114 (= (contains!7017 rules!2135 (rule!8134 separatorToken!241)) lt!1204650)))

(declare-fun b!3525616 () Bool)

(declare-fun e!2182330 () Bool)

(assert (=> b!3525616 (= e!2182331 e!2182330)))

(declare-fun res!1422154 () Bool)

(assert (=> b!3525616 (=> res!1422154 e!2182330)))

(assert (=> b!3525616 (= res!1422154 (= (h!42790 rules!2135) (rule!8134 separatorToken!241)))))

(declare-fun b!3525617 () Bool)

(assert (=> b!3525617 (= e!2182330 (contains!7017 (t!282383 rules!2135) (rule!8134 separatorToken!241)))))

(assert (= (and d!1029114 res!1422155) b!3525616))

(assert (= (and b!3525616 (not res!1422154)) b!3525617))

(declare-fun m!3979091 () Bool)

(assert (=> d!1029114 m!3979091))

(declare-fun m!3979093 () Bool)

(assert (=> d!1029114 m!3979093))

(declare-fun m!3979095 () Bool)

(assert (=> b!3525617 m!3979095))

(assert (=> b!3525005 d!1029114))

(declare-fun d!1029118 () Bool)

(declare-fun lt!1204656 () Int)

(declare-fun size!28444 (List!37495) Int)

(assert (=> d!1029118 (= lt!1204656 (size!28444 (list!13676 (_1!21741 lt!1204347))))))

(declare-fun size!28445 (Conc!11340) Int)

(assert (=> d!1029118 (= lt!1204656 (size!28445 (c!607690 (_1!21741 lt!1204347))))))

(assert (=> d!1029118 (= (size!28439 (_1!21741 lt!1204347)) lt!1204656)))

(declare-fun bs!565671 () Bool)

(assert (= bs!565671 d!1029118))

(declare-fun m!3979097 () Bool)

(assert (=> bs!565671 m!3979097))

(assert (=> bs!565671 m!3979097))

(declare-fun m!3979101 () Bool)

(assert (=> bs!565671 m!3979101))

(declare-fun m!3979103 () Bool)

(assert (=> bs!565671 m!3979103))

(assert (=> b!3525005 d!1029118))

(declare-fun b!3525619 () Bool)

(declare-fun e!2182334 () List!37493)

(assert (=> b!3525619 (= e!2182334 (Cons!37369 (c!607688 (regex!5482 (rule!8134 separatorToken!241))) Nil!37369))))

(declare-fun d!1029122 () Bool)

(declare-fun c!607805 () Bool)

(assert (=> d!1029122 (= c!607805 (or ((_ is EmptyExpr!10241) (regex!5482 (rule!8134 separatorToken!241))) ((_ is EmptyLang!10241) (regex!5482 (rule!8134 separatorToken!241)))))))

(declare-fun e!2182335 () List!37493)

(assert (=> d!1029122 (= (usedCharacters!716 (regex!5482 (rule!8134 separatorToken!241))) e!2182335)))

(declare-fun b!3525620 () Bool)

(declare-fun c!607804 () Bool)

(assert (=> b!3525620 (= c!607804 ((_ is Star!10241) (regex!5482 (rule!8134 separatorToken!241))))))

(declare-fun e!2182336 () List!37493)

(assert (=> b!3525620 (= e!2182334 e!2182336)))

(declare-fun b!3525621 () Bool)

(declare-fun e!2182333 () List!37493)

(declare-fun call!254724 () List!37493)

(assert (=> b!3525621 (= e!2182333 call!254724)))

(declare-fun bm!254718 () Bool)

(declare-fun call!254723 () List!37493)

(declare-fun call!254725 () List!37493)

(assert (=> bm!254718 (= call!254723 call!254725)))

(declare-fun bm!254719 () Bool)

(declare-fun call!254726 () List!37493)

(declare-fun c!607807 () Bool)

(assert (=> bm!254719 (= call!254726 (usedCharacters!716 (ite c!607807 (regTwo!20995 (regex!5482 (rule!8134 separatorToken!241))) (regOne!20994 (regex!5482 (rule!8134 separatorToken!241))))))))

(declare-fun b!3525622 () Bool)

(assert (=> b!3525622 (= e!2182335 Nil!37369)))

(declare-fun b!3525623 () Bool)

(assert (=> b!3525623 (= e!2182333 call!254724)))

(declare-fun bm!254720 () Bool)

(assert (=> bm!254720 (= call!254724 (++!9265 (ite c!607807 call!254723 call!254726) (ite c!607807 call!254726 call!254723)))))

(declare-fun b!3525624 () Bool)

(assert (=> b!3525624 (= e!2182335 e!2182334)))

(declare-fun c!607806 () Bool)

(assert (=> b!3525624 (= c!607806 ((_ is ElementMatch!10241) (regex!5482 (rule!8134 separatorToken!241))))))

(declare-fun b!3525625 () Bool)

(assert (=> b!3525625 (= e!2182336 e!2182333)))

(assert (=> b!3525625 (= c!607807 ((_ is Union!10241) (regex!5482 (rule!8134 separatorToken!241))))))

(declare-fun b!3525626 () Bool)

(assert (=> b!3525626 (= e!2182336 call!254725)))

(declare-fun bm!254721 () Bool)

(assert (=> bm!254721 (= call!254725 (usedCharacters!716 (ite c!607804 (reg!10570 (regex!5482 (rule!8134 separatorToken!241))) (ite c!607807 (regOne!20995 (regex!5482 (rule!8134 separatorToken!241))) (regTwo!20994 (regex!5482 (rule!8134 separatorToken!241)))))))))

(assert (= (and d!1029122 c!607805) b!3525622))

(assert (= (and d!1029122 (not c!607805)) b!3525624))

(assert (= (and b!3525624 c!607806) b!3525619))

(assert (= (and b!3525624 (not c!607806)) b!3525620))

(assert (= (and b!3525620 c!607804) b!3525626))

(assert (= (and b!3525620 (not c!607804)) b!3525625))

(assert (= (and b!3525625 c!607807) b!3525621))

(assert (= (and b!3525625 (not c!607807)) b!3525623))

(assert (= (or b!3525621 b!3525623) bm!254719))

(assert (= (or b!3525621 b!3525623) bm!254718))

(assert (= (or b!3525621 b!3525623) bm!254720))

(assert (= (or b!3525626 bm!254718) bm!254721))

(declare-fun m!3979111 () Bool)

(assert (=> bm!254719 m!3979111))

(declare-fun m!3979113 () Bool)

(assert (=> bm!254720 m!3979113))

(declare-fun m!3979115 () Bool)

(assert (=> bm!254721 m!3979115))

(assert (=> b!3525005 d!1029122))

(declare-fun d!1029126 () Bool)

(declare-fun lt!1204665 () Int)

(assert (=> d!1029126 (= lt!1204665 (size!28444 (list!13676 (_1!21741 lt!1204370))))))

(assert (=> d!1029126 (= lt!1204665 (size!28445 (c!607690 (_1!21741 lt!1204370))))))

(assert (=> d!1029126 (= (size!28439 (_1!21741 lt!1204370)) lt!1204665)))

(declare-fun bs!565672 () Bool)

(assert (= bs!565672 d!1029126))

(declare-fun m!3979117 () Bool)

(assert (=> bs!565672 m!3979117))

(assert (=> bs!565672 m!3979117))

(declare-fun m!3979119 () Bool)

(assert (=> bs!565672 m!3979119))

(declare-fun m!3979121 () Bool)

(assert (=> bs!565672 m!3979121))

(assert (=> b!3525005 d!1029126))

(declare-fun e!2182341 () Bool)

(declare-fun lt!1204666 () tuple2!37214)

(declare-fun b!3525630 () Bool)

(assert (=> b!3525630 (= e!2182341 (= (list!13673 (_2!21741 lt!1204666)) (_2!21743 (lexList!1480 thiss!18206 rules!2135 (list!13673 lt!1204369)))))))

(declare-fun b!3525631 () Bool)

(declare-fun e!2182340 () Bool)

(assert (=> b!3525631 (= e!2182340 (not (isEmpty!21835 (_1!21741 lt!1204666))))))

(declare-fun d!1029128 () Bool)

(assert (=> d!1029128 e!2182341))

(declare-fun res!1422160 () Bool)

(assert (=> d!1029128 (=> (not res!1422160) (not e!2182341))))

(declare-fun e!2182339 () Bool)

(assert (=> d!1029128 (= res!1422160 e!2182339)))

(declare-fun c!607809 () Bool)

(assert (=> d!1029128 (= c!607809 (> (size!28439 (_1!21741 lt!1204666)) 0))))

(assert (=> d!1029128 (= lt!1204666 (lexTailRecV2!1088 thiss!18206 rules!2135 lt!1204369 (BalanceConc!22293 Empty!11339) lt!1204369 (BalanceConc!22295 Empty!11340)))))

(assert (=> d!1029128 (= (lex!2397 thiss!18206 rules!2135 lt!1204369) lt!1204666)))

(declare-fun b!3525632 () Bool)

(declare-fun res!1422159 () Bool)

(assert (=> b!3525632 (=> (not res!1422159) (not e!2182341))))

(assert (=> b!3525632 (= res!1422159 (= (list!13676 (_1!21741 lt!1204666)) (_1!21743 (lexList!1480 thiss!18206 rules!2135 (list!13673 lt!1204369)))))))

(declare-fun b!3525633 () Bool)

(assert (=> b!3525633 (= e!2182339 (= (_2!21741 lt!1204666) lt!1204369))))

(declare-fun b!3525634 () Bool)

(assert (=> b!3525634 (= e!2182339 e!2182340)))

(declare-fun res!1422158 () Bool)

(assert (=> b!3525634 (= res!1422158 (< (size!28443 (_2!21741 lt!1204666)) (size!28443 lt!1204369)))))

(assert (=> b!3525634 (=> (not res!1422158) (not e!2182340))))

(assert (= (and d!1029128 c!607809) b!3525634))

(assert (= (and d!1029128 (not c!607809)) b!3525633))

(assert (= (and b!3525634 res!1422158) b!3525631))

(assert (= (and d!1029128 res!1422160) b!3525632))

(assert (= (and b!3525632 res!1422159) b!3525630))

(declare-fun m!3979145 () Bool)

(assert (=> b!3525634 m!3979145))

(declare-fun m!3979149 () Bool)

(assert (=> b!3525634 m!3979149))

(declare-fun m!3979151 () Bool)

(assert (=> b!3525632 m!3979151))

(declare-fun m!3979153 () Bool)

(assert (=> b!3525632 m!3979153))

(assert (=> b!3525632 m!3979153))

(declare-fun m!3979155 () Bool)

(assert (=> b!3525632 m!3979155))

(declare-fun m!3979159 () Bool)

(assert (=> d!1029128 m!3979159))

(declare-fun m!3979163 () Bool)

(assert (=> d!1029128 m!3979163))

(declare-fun m!3979167 () Bool)

(assert (=> b!3525630 m!3979167))

(assert (=> b!3525630 m!3979153))

(assert (=> b!3525630 m!3979153))

(assert (=> b!3525630 m!3979155))

(declare-fun m!3979171 () Bool)

(assert (=> b!3525631 m!3979171))

(assert (=> b!3525005 d!1029128))

(declare-fun d!1029132 () Bool)

(declare-fun e!2182342 () Bool)

(assert (=> d!1029132 e!2182342))

(declare-fun res!1422161 () Bool)

(assert (=> d!1029132 (=> (not res!1422161) (not e!2182342))))

(assert (=> d!1029132 (= res!1422161 (isDefined!5878 (getRuleFromTag!1125 thiss!18206 rules!2135 (tag!6122 (rule!8134 separatorToken!241)))))))

(declare-fun lt!1204667 () Unit!53054)

(assert (=> d!1029132 (= lt!1204667 (choose!20466 thiss!18206 rules!2135 lt!1204340 separatorToken!241))))

(assert (=> d!1029132 (rulesInvariant!4468 thiss!18206 rules!2135)))

(assert (=> d!1029132 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1125 thiss!18206 rules!2135 lt!1204340 separatorToken!241) lt!1204667)))

(declare-fun b!3525635 () Bool)

(declare-fun res!1422162 () Bool)

(assert (=> b!3525635 (=> (not res!1422162) (not e!2182342))))

(assert (=> b!3525635 (= res!1422162 (matchR!4825 (regex!5482 (get!12000 (getRuleFromTag!1125 thiss!18206 rules!2135 (tag!6122 (rule!8134 separatorToken!241))))) (list!13673 (charsOf!3496 separatorToken!241))))))

(declare-fun b!3525636 () Bool)

(assert (=> b!3525636 (= e!2182342 (= (rule!8134 separatorToken!241) (get!12000 (getRuleFromTag!1125 thiss!18206 rules!2135 (tag!6122 (rule!8134 separatorToken!241))))))))

(assert (= (and d!1029132 res!1422161) b!3525635))

(assert (= (and b!3525635 res!1422162) b!3525636))

(assert (=> d!1029132 m!3978193))

(assert (=> d!1029132 m!3978193))

(declare-fun m!3979175 () Bool)

(assert (=> d!1029132 m!3979175))

(declare-fun m!3979177 () Bool)

(assert (=> d!1029132 m!3979177))

(assert (=> d!1029132 m!3978223))

(assert (=> b!3525635 m!3978053))

(assert (=> b!3525635 m!3978193))

(declare-fun m!3979179 () Bool)

(assert (=> b!3525635 m!3979179))

(assert (=> b!3525635 m!3978193))

(assert (=> b!3525635 m!3978053))

(assert (=> b!3525635 m!3978067))

(assert (=> b!3525635 m!3978067))

(declare-fun m!3979181 () Bool)

(assert (=> b!3525635 m!3979181))

(assert (=> b!3525636 m!3978193))

(assert (=> b!3525636 m!3978193))

(assert (=> b!3525636 m!3979179))

(assert (=> b!3525005 d!1029132))

(declare-fun d!1029136 () Bool)

(assert (=> d!1029136 (= (apply!8914 (transformation!5482 (rule!8134 (h!42791 (t!282384 tokens!494)))) (seqFromList!4017 lt!1204339)) (dynLambda!15939 (toValue!7738 (transformation!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))) (seqFromList!4017 lt!1204339)))))

(declare-fun b_lambda!103017 () Bool)

(assert (=> (not b_lambda!103017) (not d!1029136)))

(declare-fun t!282426 () Bool)

(declare-fun tb!197237 () Bool)

(assert (=> (and b!3525016 (= (toValue!7738 (transformation!5482 (h!42790 rules!2135))) (toValue!7738 (transformation!5482 (rule!8134 (h!42791 (t!282384 tokens!494)))))) t!282426) tb!197237))

(declare-fun result!241620 () Bool)

(assert (=> tb!197237 (= result!241620 (inv!21 (dynLambda!15939 (toValue!7738 (transformation!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))) (seqFromList!4017 lt!1204339))))))

(declare-fun m!3979183 () Bool)

(assert (=> tb!197237 m!3979183))

(assert (=> d!1029136 t!282426))

(declare-fun b_and!251337 () Bool)

(assert (= b_and!251319 (and (=> t!282426 result!241620) b_and!251337)))

(declare-fun t!282428 () Bool)

(declare-fun tb!197239 () Bool)

(assert (=> (and b!3525023 (= (toValue!7738 (transformation!5482 (rule!8134 (h!42791 tokens!494)))) (toValue!7738 (transformation!5482 (rule!8134 (h!42791 (t!282384 tokens!494)))))) t!282428) tb!197239))

(declare-fun result!241622 () Bool)

(assert (= result!241622 result!241620))

(assert (=> d!1029136 t!282428))

(declare-fun b_and!251339 () Bool)

(assert (= b_and!251321 (and (=> t!282428 result!241622) b_and!251339)))

(declare-fun tb!197241 () Bool)

(declare-fun t!282430 () Bool)

(assert (=> (and b!3525010 (= (toValue!7738 (transformation!5482 (rule!8134 separatorToken!241))) (toValue!7738 (transformation!5482 (rule!8134 (h!42791 (t!282384 tokens!494)))))) t!282430) tb!197241))

(declare-fun result!241624 () Bool)

(assert (= result!241624 result!241620))

(assert (=> d!1029136 t!282430))

(declare-fun b_and!251341 () Bool)

(assert (= b_and!251323 (and (=> t!282430 result!241624) b_and!251341)))

(assert (=> d!1029136 m!3978151))

(declare-fun m!3979185 () Bool)

(assert (=> d!1029136 m!3979185))

(assert (=> b!3525005 d!1029136))

(declare-fun d!1029138 () Bool)

(declare-fun lt!1204668 () Int)

(assert (=> d!1029138 (>= lt!1204668 0)))

(declare-fun e!2182344 () Int)

(assert (=> d!1029138 (= lt!1204668 e!2182344)))

(declare-fun c!607810 () Bool)

(assert (=> d!1029138 (= c!607810 ((_ is Nil!37369) lt!1204378))))

(assert (=> d!1029138 (= (size!28438 lt!1204378) lt!1204668)))

(declare-fun b!3525637 () Bool)

(assert (=> b!3525637 (= e!2182344 0)))

(declare-fun b!3525638 () Bool)

(assert (=> b!3525638 (= e!2182344 (+ 1 (size!28438 (t!282382 lt!1204378))))))

(assert (= (and d!1029138 c!607810) b!3525637))

(assert (= (and d!1029138 (not c!607810)) b!3525638))

(declare-fun m!3979187 () Bool)

(assert (=> b!3525638 m!3979187))

(assert (=> b!3525005 d!1029138))

(declare-fun b!3525639 () Bool)

(declare-fun e!2182347 () Option!7627)

(assert (=> b!3525639 (= e!2182347 (Some!7626 (h!42790 rules!2135)))))

(declare-fun b!3525640 () Bool)

(declare-fun e!2182348 () Bool)

(declare-fun e!2182345 () Bool)

(assert (=> b!3525640 (= e!2182348 e!2182345)))

(declare-fun res!1422164 () Bool)

(assert (=> b!3525640 (=> (not res!1422164) (not e!2182345))))

(declare-fun lt!1204669 () Option!7627)

(assert (=> b!3525640 (= res!1422164 (contains!7017 rules!2135 (get!12000 lt!1204669)))))

(declare-fun b!3525641 () Bool)

(declare-fun lt!1204670 () Unit!53054)

(declare-fun lt!1204671 () Unit!53054)

(assert (=> b!3525641 (= lt!1204670 lt!1204671)))

(assert (=> b!3525641 (rulesInvariant!4468 thiss!18206 (t!282383 rules!2135))))

(assert (=> b!3525641 (= lt!1204671 (lemmaInvariantOnRulesThenOnTail!464 thiss!18206 (h!42790 rules!2135) (t!282383 rules!2135)))))

(declare-fun e!2182346 () Option!7627)

(assert (=> b!3525641 (= e!2182346 (getRuleFromTag!1125 thiss!18206 (t!282383 rules!2135) (tag!6122 (rule!8134 (h!42791 (t!282384 tokens!494))))))))

(declare-fun b!3525642 () Bool)

(assert (=> b!3525642 (= e!2182347 e!2182346)))

(declare-fun c!607811 () Bool)

(assert (=> b!3525642 (= c!607811 (and ((_ is Cons!37370) rules!2135) (not (= (tag!6122 (h!42790 rules!2135)) (tag!6122 (rule!8134 (h!42791 (t!282384 tokens!494))))))))))

(declare-fun d!1029140 () Bool)

(assert (=> d!1029140 e!2182348))

(declare-fun res!1422163 () Bool)

(assert (=> d!1029140 (=> res!1422163 e!2182348)))

(assert (=> d!1029140 (= res!1422163 (isEmpty!21844 lt!1204669))))

(assert (=> d!1029140 (= lt!1204669 e!2182347)))

(declare-fun c!607812 () Bool)

(assert (=> d!1029140 (= c!607812 (and ((_ is Cons!37370) rules!2135) (= (tag!6122 (h!42790 rules!2135)) (tag!6122 (rule!8134 (h!42791 (t!282384 tokens!494)))))))))

(assert (=> d!1029140 (rulesInvariant!4468 thiss!18206 rules!2135)))

(assert (=> d!1029140 (= (getRuleFromTag!1125 thiss!18206 rules!2135 (tag!6122 (rule!8134 (h!42791 (t!282384 tokens!494))))) lt!1204669)))

(declare-fun b!3525643 () Bool)

(assert (=> b!3525643 (= e!2182345 (= (tag!6122 (get!12000 lt!1204669)) (tag!6122 (rule!8134 (h!42791 (t!282384 tokens!494))))))))

(declare-fun b!3525644 () Bool)

(assert (=> b!3525644 (= e!2182346 None!7626)))

(assert (= (and d!1029140 c!607812) b!3525639))

(assert (= (and d!1029140 (not c!607812)) b!3525642))

(assert (= (and b!3525642 c!607811) b!3525641))

(assert (= (and b!3525642 (not c!607811)) b!3525644))

(assert (= (and d!1029140 (not res!1422163)) b!3525640))

(assert (= (and b!3525640 res!1422164) b!3525643))

(declare-fun m!3979189 () Bool)

(assert (=> b!3525640 m!3979189))

(assert (=> b!3525640 m!3979189))

(declare-fun m!3979191 () Bool)

(assert (=> b!3525640 m!3979191))

(assert (=> b!3525641 m!3978579))

(assert (=> b!3525641 m!3978581))

(declare-fun m!3979193 () Bool)

(assert (=> b!3525641 m!3979193))

(declare-fun m!3979195 () Bool)

(assert (=> d!1029140 m!3979195))

(assert (=> d!1029140 m!3978223))

(assert (=> b!3525643 m!3979189))

(assert (=> b!3525005 d!1029140))

(declare-fun b!3525655 () Bool)

(declare-fun e!2182357 () Bool)

(declare-fun inv!17 (TokenValue!5712) Bool)

(assert (=> b!3525655 (= e!2182357 (inv!17 (value!176697 (h!42791 tokens!494))))))

(declare-fun b!3525656 () Bool)

(declare-fun e!2182355 () Bool)

(assert (=> b!3525656 (= e!2182355 e!2182357)))

(declare-fun c!607818 () Bool)

(assert (=> b!3525656 (= c!607818 ((_ is IntegerValue!17137) (value!176697 (h!42791 tokens!494))))))

(declare-fun d!1029142 () Bool)

(declare-fun c!607817 () Bool)

(assert (=> d!1029142 (= c!607817 ((_ is IntegerValue!17136) (value!176697 (h!42791 tokens!494))))))

(assert (=> d!1029142 (= (inv!21 (value!176697 (h!42791 tokens!494))) e!2182355)))

(declare-fun b!3525657 () Bool)

(declare-fun inv!16 (TokenValue!5712) Bool)

(assert (=> b!3525657 (= e!2182355 (inv!16 (value!176697 (h!42791 tokens!494))))))

(declare-fun b!3525658 () Bool)

(declare-fun res!1422167 () Bool)

(declare-fun e!2182356 () Bool)

(assert (=> b!3525658 (=> res!1422167 e!2182356)))

(assert (=> b!3525658 (= res!1422167 (not ((_ is IntegerValue!17138) (value!176697 (h!42791 tokens!494)))))))

(assert (=> b!3525658 (= e!2182357 e!2182356)))

(declare-fun b!3525659 () Bool)

(declare-fun inv!15 (TokenValue!5712) Bool)

(assert (=> b!3525659 (= e!2182356 (inv!15 (value!176697 (h!42791 tokens!494))))))

(assert (= (and d!1029142 c!607817) b!3525657))

(assert (= (and d!1029142 (not c!607817)) b!3525656))

(assert (= (and b!3525656 c!607818) b!3525655))

(assert (= (and b!3525656 (not c!607818)) b!3525658))

(assert (= (and b!3525658 (not res!1422167)) b!3525659))

(declare-fun m!3979197 () Bool)

(assert (=> b!3525655 m!3979197))

(declare-fun m!3979199 () Bool)

(assert (=> b!3525657 m!3979199))

(declare-fun m!3979201 () Bool)

(assert (=> b!3525659 m!3979201))

(assert (=> b!3525026 d!1029142))

(declare-fun d!1029144 () Bool)

(assert (=> d!1029144 (not (matchR!4825 (regex!5482 (rule!8134 (h!42791 (t!282384 tokens!494)))) lt!1204339))))

(declare-fun lt!1204674 () Unit!53054)

(declare-fun choose!20475 (Regex!10241 List!37493 C!20668) Unit!53054)

(assert (=> d!1029144 (= lt!1204674 (choose!20475 (regex!5482 (rule!8134 (h!42791 (t!282384 tokens!494)))) lt!1204339 lt!1204384))))

(assert (=> d!1029144 (validRegex!4676 (regex!5482 (rule!8134 (h!42791 (t!282384 tokens!494)))))))

(assert (=> d!1029144 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!540 (regex!5482 (rule!8134 (h!42791 (t!282384 tokens!494)))) lt!1204339 lt!1204384) lt!1204674)))

(declare-fun bs!565674 () Bool)

(assert (= bs!565674 d!1029144))

(assert (=> bs!565674 m!3978087))

(declare-fun m!3979203 () Bool)

(assert (=> bs!565674 m!3979203))

(declare-fun m!3979205 () Bool)

(assert (=> bs!565674 m!3979205))

(assert (=> b!3525004 d!1029144))

(declare-fun b!3525661 () Bool)

(declare-fun e!2182364 () Bool)

(assert (=> b!3525661 (= e!2182364 (not (= (head!7393 lt!1204339) (c!607688 (regex!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))))))))

(declare-fun bm!254722 () Bool)

(declare-fun call!254727 () Bool)

(assert (=> bm!254722 (= call!254727 (isEmpty!21839 lt!1204339))))

(declare-fun b!3525662 () Bool)

(declare-fun e!2182362 () Bool)

(assert (=> b!3525662 (= e!2182362 (nullable!3520 (regex!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))))))

(declare-fun b!3525663 () Bool)

(declare-fun e!2182363 () Bool)

(declare-fun lt!1204675 () Bool)

(assert (=> b!3525663 (= e!2182363 (= lt!1204675 call!254727))))

(declare-fun b!3525664 () Bool)

(assert (=> b!3525664 (= e!2182362 (matchR!4825 (derivativeStep!3073 (regex!5482 (rule!8134 (h!42791 (t!282384 tokens!494)))) (head!7393 lt!1204339)) (tail!5496 lt!1204339)))))

(declare-fun b!3525665 () Bool)

(declare-fun res!1422172 () Bool)

(declare-fun e!2182358 () Bool)

(assert (=> b!3525665 (=> (not res!1422172) (not e!2182358))))

(assert (=> b!3525665 (= res!1422172 (isEmpty!21839 (tail!5496 lt!1204339)))))

(declare-fun b!3525666 () Bool)

(declare-fun res!1422173 () Bool)

(declare-fun e!2182360 () Bool)

(assert (=> b!3525666 (=> res!1422173 e!2182360)))

(assert (=> b!3525666 (= res!1422173 (not ((_ is ElementMatch!10241) (regex!5482 (rule!8134 (h!42791 (t!282384 tokens!494)))))))))

(declare-fun e!2182359 () Bool)

(assert (=> b!3525666 (= e!2182359 e!2182360)))

(declare-fun b!3525667 () Bool)

(declare-fun res!1422175 () Bool)

(assert (=> b!3525667 (=> (not res!1422175) (not e!2182358))))

(assert (=> b!3525667 (= res!1422175 (not call!254727))))

(declare-fun b!3525668 () Bool)

(declare-fun e!2182361 () Bool)

(assert (=> b!3525668 (= e!2182360 e!2182361)))

(declare-fun res!1422174 () Bool)

(assert (=> b!3525668 (=> (not res!1422174) (not e!2182361))))

(assert (=> b!3525668 (= res!1422174 (not lt!1204675))))

(declare-fun b!3525669 () Bool)

(assert (=> b!3525669 (= e!2182361 e!2182364)))

(declare-fun res!1422171 () Bool)

(assert (=> b!3525669 (=> res!1422171 e!2182364)))

(assert (=> b!3525669 (= res!1422171 call!254727)))

(declare-fun d!1029146 () Bool)

(assert (=> d!1029146 e!2182363))

(declare-fun c!607821 () Bool)

(assert (=> d!1029146 (= c!607821 ((_ is EmptyExpr!10241) (regex!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))))))

(assert (=> d!1029146 (= lt!1204675 e!2182362)))

(declare-fun c!607822 () Bool)

(assert (=> d!1029146 (= c!607822 (isEmpty!21839 lt!1204339))))

(assert (=> d!1029146 (validRegex!4676 (regex!5482 (rule!8134 (h!42791 (t!282384 tokens!494)))))))

(assert (=> d!1029146 (= (matchR!4825 (regex!5482 (rule!8134 (h!42791 (t!282384 tokens!494)))) lt!1204339) lt!1204675)))

(declare-fun b!3525660 () Bool)

(assert (=> b!3525660 (= e!2182363 e!2182359)))

(declare-fun c!607820 () Bool)

(assert (=> b!3525660 (= c!607820 ((_ is EmptyLang!10241) (regex!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))))))

(declare-fun b!3525670 () Bool)

(assert (=> b!3525670 (= e!2182358 (= (head!7393 lt!1204339) (c!607688 (regex!5482 (rule!8134 (h!42791 (t!282384 tokens!494)))))))))

(declare-fun b!3525671 () Bool)

(declare-fun res!1422168 () Bool)

(assert (=> b!3525671 (=> res!1422168 e!2182360)))

(assert (=> b!3525671 (= res!1422168 e!2182358)))

(declare-fun res!1422170 () Bool)

(assert (=> b!3525671 (=> (not res!1422170) (not e!2182358))))

(assert (=> b!3525671 (= res!1422170 lt!1204675)))

(declare-fun b!3525672 () Bool)

(assert (=> b!3525672 (= e!2182359 (not lt!1204675))))

(declare-fun b!3525673 () Bool)

(declare-fun res!1422169 () Bool)

(assert (=> b!3525673 (=> res!1422169 e!2182364)))

(assert (=> b!3525673 (= res!1422169 (not (isEmpty!21839 (tail!5496 lt!1204339))))))

(assert (= (and d!1029146 c!607822) b!3525662))

(assert (= (and d!1029146 (not c!607822)) b!3525664))

(assert (= (and d!1029146 c!607821) b!3525663))

(assert (= (and d!1029146 (not c!607821)) b!3525660))

(assert (= (and b!3525660 c!607820) b!3525672))

(assert (= (and b!3525660 (not c!607820)) b!3525666))

(assert (= (and b!3525666 (not res!1422173)) b!3525671))

(assert (= (and b!3525671 res!1422170) b!3525667))

(assert (= (and b!3525667 res!1422175) b!3525665))

(assert (= (and b!3525665 res!1422172) b!3525670))

(assert (= (and b!3525671 (not res!1422168)) b!3525668))

(assert (= (and b!3525668 res!1422174) b!3525669))

(assert (= (and b!3525669 (not res!1422171)) b!3525673))

(assert (= (and b!3525673 (not res!1422169)) b!3525661))

(assert (= (or b!3525663 b!3525667 b!3525669) bm!254722))

(declare-fun m!3979207 () Bool)

(assert (=> b!3525662 m!3979207))

(assert (=> b!3525661 m!3978195))

(assert (=> b!3525665 m!3978303))

(assert (=> b!3525665 m!3978303))

(assert (=> b!3525665 m!3978305))

(assert (=> d!1029146 m!3978307))

(assert (=> d!1029146 m!3979205))

(assert (=> bm!254722 m!3978307))

(assert (=> b!3525673 m!3978303))

(assert (=> b!3525673 m!3978303))

(assert (=> b!3525673 m!3978305))

(assert (=> b!3525664 m!3978195))

(assert (=> b!3525664 m!3978195))

(declare-fun m!3979209 () Bool)

(assert (=> b!3525664 m!3979209))

(assert (=> b!3525664 m!3978303))

(assert (=> b!3525664 m!3979209))

(assert (=> b!3525664 m!3978303))

(declare-fun m!3979211 () Bool)

(assert (=> b!3525664 m!3979211))

(assert (=> b!3525670 m!3978195))

(assert (=> b!3525004 d!1029146))

(declare-fun b!3525675 () Bool)

(declare-fun e!2182371 () Bool)

(assert (=> b!3525675 (= e!2182371 (not (= (head!7393 lt!1204340) (c!607688 (regex!5482 lt!1204371)))))))

(declare-fun bm!254723 () Bool)

(declare-fun call!254728 () Bool)

(assert (=> bm!254723 (= call!254728 (isEmpty!21839 lt!1204340))))

(declare-fun b!3525676 () Bool)

(declare-fun e!2182369 () Bool)

(assert (=> b!3525676 (= e!2182369 (nullable!3520 (regex!5482 lt!1204371)))))

(declare-fun b!3525677 () Bool)

(declare-fun e!2182370 () Bool)

(declare-fun lt!1204676 () Bool)

(assert (=> b!3525677 (= e!2182370 (= lt!1204676 call!254728))))

(declare-fun b!3525678 () Bool)

(assert (=> b!3525678 (= e!2182369 (matchR!4825 (derivativeStep!3073 (regex!5482 lt!1204371) (head!7393 lt!1204340)) (tail!5496 lt!1204340)))))

(declare-fun b!3525679 () Bool)

(declare-fun res!1422180 () Bool)

(declare-fun e!2182365 () Bool)

(assert (=> b!3525679 (=> (not res!1422180) (not e!2182365))))

(assert (=> b!3525679 (= res!1422180 (isEmpty!21839 (tail!5496 lt!1204340)))))

(declare-fun b!3525680 () Bool)

(declare-fun res!1422181 () Bool)

(declare-fun e!2182367 () Bool)

(assert (=> b!3525680 (=> res!1422181 e!2182367)))

(assert (=> b!3525680 (= res!1422181 (not ((_ is ElementMatch!10241) (regex!5482 lt!1204371))))))

(declare-fun e!2182366 () Bool)

(assert (=> b!3525680 (= e!2182366 e!2182367)))

(declare-fun b!3525681 () Bool)

(declare-fun res!1422183 () Bool)

(assert (=> b!3525681 (=> (not res!1422183) (not e!2182365))))

(assert (=> b!3525681 (= res!1422183 (not call!254728))))

(declare-fun b!3525682 () Bool)

(declare-fun e!2182368 () Bool)

(assert (=> b!3525682 (= e!2182367 e!2182368)))

(declare-fun res!1422182 () Bool)

(assert (=> b!3525682 (=> (not res!1422182) (not e!2182368))))

(assert (=> b!3525682 (= res!1422182 (not lt!1204676))))

(declare-fun b!3525683 () Bool)

(assert (=> b!3525683 (= e!2182368 e!2182371)))

(declare-fun res!1422179 () Bool)

(assert (=> b!3525683 (=> res!1422179 e!2182371)))

(assert (=> b!3525683 (= res!1422179 call!254728)))

(declare-fun d!1029148 () Bool)

(assert (=> d!1029148 e!2182370))

(declare-fun c!607824 () Bool)

(assert (=> d!1029148 (= c!607824 ((_ is EmptyExpr!10241) (regex!5482 lt!1204371)))))

(assert (=> d!1029148 (= lt!1204676 e!2182369)))

(declare-fun c!607825 () Bool)

(assert (=> d!1029148 (= c!607825 (isEmpty!21839 lt!1204340))))

(assert (=> d!1029148 (validRegex!4676 (regex!5482 lt!1204371))))

(assert (=> d!1029148 (= (matchR!4825 (regex!5482 lt!1204371) lt!1204340) lt!1204676)))

(declare-fun b!3525674 () Bool)

(assert (=> b!3525674 (= e!2182370 e!2182366)))

(declare-fun c!607823 () Bool)

(assert (=> b!3525674 (= c!607823 ((_ is EmptyLang!10241) (regex!5482 lt!1204371)))))

(declare-fun b!3525684 () Bool)

(assert (=> b!3525684 (= e!2182365 (= (head!7393 lt!1204340) (c!607688 (regex!5482 lt!1204371))))))

(declare-fun b!3525685 () Bool)

(declare-fun res!1422176 () Bool)

(assert (=> b!3525685 (=> res!1422176 e!2182367)))

(assert (=> b!3525685 (= res!1422176 e!2182365)))

(declare-fun res!1422178 () Bool)

(assert (=> b!3525685 (=> (not res!1422178) (not e!2182365))))

(assert (=> b!3525685 (= res!1422178 lt!1204676)))

(declare-fun b!3525686 () Bool)

(assert (=> b!3525686 (= e!2182366 (not lt!1204676))))

(declare-fun b!3525687 () Bool)

(declare-fun res!1422177 () Bool)

(assert (=> b!3525687 (=> res!1422177 e!2182371)))

(assert (=> b!3525687 (= res!1422177 (not (isEmpty!21839 (tail!5496 lt!1204340))))))

(assert (= (and d!1029148 c!607825) b!3525676))

(assert (= (and d!1029148 (not c!607825)) b!3525678))

(assert (= (and d!1029148 c!607824) b!3525677))

(assert (= (and d!1029148 (not c!607824)) b!3525674))

(assert (= (and b!3525674 c!607823) b!3525686))

(assert (= (and b!3525674 (not c!607823)) b!3525680))

(assert (= (and b!3525680 (not res!1422181)) b!3525685))

(assert (= (and b!3525685 res!1422178) b!3525681))

(assert (= (and b!3525681 res!1422183) b!3525679))

(assert (= (and b!3525679 res!1422180) b!3525684))

(assert (= (and b!3525685 (not res!1422176)) b!3525682))

(assert (= (and b!3525682 res!1422182) b!3525683))

(assert (= (and b!3525683 (not res!1422179)) b!3525687))

(assert (= (and b!3525687 (not res!1422177)) b!3525675))

(assert (= (or b!3525677 b!3525681 b!3525683) bm!254723))

(declare-fun m!3979213 () Bool)

(assert (=> b!3525676 m!3979213))

(assert (=> b!3525675 m!3978197))

(declare-fun m!3979215 () Bool)

(assert (=> b!3525679 m!3979215))

(assert (=> b!3525679 m!3979215))

(declare-fun m!3979217 () Bool)

(assert (=> b!3525679 m!3979217))

(declare-fun m!3979219 () Bool)

(assert (=> d!1029148 m!3979219))

(declare-fun m!3979221 () Bool)

(assert (=> d!1029148 m!3979221))

(assert (=> bm!254723 m!3979219))

(assert (=> b!3525687 m!3979215))

(assert (=> b!3525687 m!3979215))

(assert (=> b!3525687 m!3979217))

(assert (=> b!3525678 m!3978197))

(assert (=> b!3525678 m!3978197))

(declare-fun m!3979223 () Bool)

(assert (=> b!3525678 m!3979223))

(assert (=> b!3525678 m!3979215))

(assert (=> b!3525678 m!3979223))

(assert (=> b!3525678 m!3979215))

(declare-fun m!3979225 () Bool)

(assert (=> b!3525678 m!3979225))

(assert (=> b!3525684 m!3978197))

(assert (=> b!3525003 d!1029148))

(declare-fun d!1029150 () Bool)

(assert (=> d!1029150 (= (get!12000 lt!1204362) (v!37124 lt!1204362))))

(assert (=> b!3525003 d!1029150))

(declare-fun d!1029152 () Bool)

(assert (=> d!1029152 (not (matchR!4825 (regex!5482 (rule!8134 separatorToken!241)) lt!1204340))))

(declare-fun lt!1204677 () Unit!53054)

(assert (=> d!1029152 (= lt!1204677 (choose!20475 (regex!5482 (rule!8134 separatorToken!241)) lt!1204340 lt!1204357))))

(assert (=> d!1029152 (validRegex!4676 (regex!5482 (rule!8134 separatorToken!241)))))

(assert (=> d!1029152 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!540 (regex!5482 (rule!8134 separatorToken!241)) lt!1204340 lt!1204357) lt!1204677)))

(declare-fun bs!565675 () Bool)

(assert (= bs!565675 d!1029152))

(assert (=> bs!565675 m!3978109))

(declare-fun m!3979227 () Bool)

(assert (=> bs!565675 m!3979227))

(declare-fun m!3979229 () Bool)

(assert (=> bs!565675 m!3979229))

(assert (=> b!3525024 d!1029152))

(declare-fun b!3525689 () Bool)

(declare-fun e!2182378 () Bool)

(assert (=> b!3525689 (= e!2182378 (not (= (head!7393 lt!1204340) (c!607688 (regex!5482 (rule!8134 separatorToken!241))))))))

(declare-fun bm!254724 () Bool)

(declare-fun call!254729 () Bool)

(assert (=> bm!254724 (= call!254729 (isEmpty!21839 lt!1204340))))

(declare-fun b!3525690 () Bool)

(declare-fun e!2182376 () Bool)

(assert (=> b!3525690 (= e!2182376 (nullable!3520 (regex!5482 (rule!8134 separatorToken!241))))))

(declare-fun b!3525691 () Bool)

(declare-fun e!2182377 () Bool)

(declare-fun lt!1204678 () Bool)

(assert (=> b!3525691 (= e!2182377 (= lt!1204678 call!254729))))

(declare-fun b!3525692 () Bool)

(assert (=> b!3525692 (= e!2182376 (matchR!4825 (derivativeStep!3073 (regex!5482 (rule!8134 separatorToken!241)) (head!7393 lt!1204340)) (tail!5496 lt!1204340)))))

(declare-fun b!3525693 () Bool)

(declare-fun res!1422188 () Bool)

(declare-fun e!2182372 () Bool)

(assert (=> b!3525693 (=> (not res!1422188) (not e!2182372))))

(assert (=> b!3525693 (= res!1422188 (isEmpty!21839 (tail!5496 lt!1204340)))))

(declare-fun b!3525694 () Bool)

(declare-fun res!1422189 () Bool)

(declare-fun e!2182374 () Bool)

(assert (=> b!3525694 (=> res!1422189 e!2182374)))

(assert (=> b!3525694 (= res!1422189 (not ((_ is ElementMatch!10241) (regex!5482 (rule!8134 separatorToken!241)))))))

(declare-fun e!2182373 () Bool)

(assert (=> b!3525694 (= e!2182373 e!2182374)))

(declare-fun b!3525695 () Bool)

(declare-fun res!1422191 () Bool)

(assert (=> b!3525695 (=> (not res!1422191) (not e!2182372))))

(assert (=> b!3525695 (= res!1422191 (not call!254729))))

(declare-fun b!3525696 () Bool)

(declare-fun e!2182375 () Bool)

(assert (=> b!3525696 (= e!2182374 e!2182375)))

(declare-fun res!1422190 () Bool)

(assert (=> b!3525696 (=> (not res!1422190) (not e!2182375))))

(assert (=> b!3525696 (= res!1422190 (not lt!1204678))))

(declare-fun b!3525697 () Bool)

(assert (=> b!3525697 (= e!2182375 e!2182378)))

(declare-fun res!1422187 () Bool)

(assert (=> b!3525697 (=> res!1422187 e!2182378)))

(assert (=> b!3525697 (= res!1422187 call!254729)))

(declare-fun d!1029154 () Bool)

(assert (=> d!1029154 e!2182377))

(declare-fun c!607827 () Bool)

(assert (=> d!1029154 (= c!607827 ((_ is EmptyExpr!10241) (regex!5482 (rule!8134 separatorToken!241))))))

(assert (=> d!1029154 (= lt!1204678 e!2182376)))

(declare-fun c!607828 () Bool)

(assert (=> d!1029154 (= c!607828 (isEmpty!21839 lt!1204340))))

(assert (=> d!1029154 (validRegex!4676 (regex!5482 (rule!8134 separatorToken!241)))))

(assert (=> d!1029154 (= (matchR!4825 (regex!5482 (rule!8134 separatorToken!241)) lt!1204340) lt!1204678)))

(declare-fun b!3525688 () Bool)

(assert (=> b!3525688 (= e!2182377 e!2182373)))

(declare-fun c!607826 () Bool)

(assert (=> b!3525688 (= c!607826 ((_ is EmptyLang!10241) (regex!5482 (rule!8134 separatorToken!241))))))

(declare-fun b!3525698 () Bool)

(assert (=> b!3525698 (= e!2182372 (= (head!7393 lt!1204340) (c!607688 (regex!5482 (rule!8134 separatorToken!241)))))))

(declare-fun b!3525699 () Bool)

(declare-fun res!1422184 () Bool)

(assert (=> b!3525699 (=> res!1422184 e!2182374)))

(assert (=> b!3525699 (= res!1422184 e!2182372)))

(declare-fun res!1422186 () Bool)

(assert (=> b!3525699 (=> (not res!1422186) (not e!2182372))))

(assert (=> b!3525699 (= res!1422186 lt!1204678)))

(declare-fun b!3525700 () Bool)

(assert (=> b!3525700 (= e!2182373 (not lt!1204678))))

(declare-fun b!3525701 () Bool)

(declare-fun res!1422185 () Bool)

(assert (=> b!3525701 (=> res!1422185 e!2182378)))

(assert (=> b!3525701 (= res!1422185 (not (isEmpty!21839 (tail!5496 lt!1204340))))))

(assert (= (and d!1029154 c!607828) b!3525690))

(assert (= (and d!1029154 (not c!607828)) b!3525692))

(assert (= (and d!1029154 c!607827) b!3525691))

(assert (= (and d!1029154 (not c!607827)) b!3525688))

(assert (= (and b!3525688 c!607826) b!3525700))

(assert (= (and b!3525688 (not c!607826)) b!3525694))

(assert (= (and b!3525694 (not res!1422189)) b!3525699))

(assert (= (and b!3525699 res!1422186) b!3525695))

(assert (= (and b!3525695 res!1422191) b!3525693))

(assert (= (and b!3525693 res!1422188) b!3525698))

(assert (= (and b!3525699 (not res!1422184)) b!3525696))

(assert (= (and b!3525696 res!1422190) b!3525697))

(assert (= (and b!3525697 (not res!1422187)) b!3525701))

(assert (= (and b!3525701 (not res!1422185)) b!3525689))

(assert (= (or b!3525691 b!3525695 b!3525697) bm!254724))

(declare-fun m!3979231 () Bool)

(assert (=> b!3525690 m!3979231))

(assert (=> b!3525689 m!3978197))

(assert (=> b!3525693 m!3979215))

(assert (=> b!3525693 m!3979215))

(assert (=> b!3525693 m!3979217))

(assert (=> d!1029154 m!3979219))

(assert (=> d!1029154 m!3979229))

(assert (=> bm!254724 m!3979219))

(assert (=> b!3525701 m!3979215))

(assert (=> b!3525701 m!3979215))

(assert (=> b!3525701 m!3979217))

(assert (=> b!3525692 m!3978197))

(assert (=> b!3525692 m!3978197))

(declare-fun m!3979233 () Bool)

(assert (=> b!3525692 m!3979233))

(assert (=> b!3525692 m!3979215))

(assert (=> b!3525692 m!3979233))

(assert (=> b!3525692 m!3979215))

(declare-fun m!3979235 () Bool)

(assert (=> b!3525692 m!3979235))

(assert (=> b!3525698 m!3978197))

(assert (=> b!3525024 d!1029154))

(declare-fun d!1029156 () Bool)

(declare-fun lt!1204686 () BalanceConc!22292)

(assert (=> d!1029156 (= (list!13673 lt!1204686) (printListTailRec!720 thiss!18206 (dropList!1237 lt!1204359 0) (list!13673 (BalanceConc!22293 Empty!11339))))))

(declare-fun e!2182379 () BalanceConc!22292)

(assert (=> d!1029156 (= lt!1204686 e!2182379)))

(declare-fun c!607829 () Bool)

(assert (=> d!1029156 (= c!607829 (>= 0 (size!28439 lt!1204359)))))

(declare-fun e!2182380 () Bool)

(assert (=> d!1029156 e!2182380))

(declare-fun res!1422192 () Bool)

(assert (=> d!1029156 (=> (not res!1422192) (not e!2182380))))

(assert (=> d!1029156 (= res!1422192 (>= 0 0))))

(assert (=> d!1029156 (= (printTailRec!1566 thiss!18206 lt!1204359 0 (BalanceConc!22293 Empty!11339)) lt!1204686)))

(declare-fun b!3525702 () Bool)

(assert (=> b!3525702 (= e!2182380 (<= 0 (size!28439 lt!1204359)))))

(declare-fun b!3525703 () Bool)

(assert (=> b!3525703 (= e!2182379 (BalanceConc!22293 Empty!11339))))

(declare-fun b!3525704 () Bool)

(assert (=> b!3525704 (= e!2182379 (printTailRec!1566 thiss!18206 lt!1204359 (+ 0 1) (++!9267 (BalanceConc!22293 Empty!11339) (charsOf!3496 (apply!8915 lt!1204359 0)))))))

(declare-fun lt!1204688 () List!37495)

(assert (=> b!3525704 (= lt!1204688 (list!13676 lt!1204359))))

(declare-fun lt!1204684 () Unit!53054)

(assert (=> b!3525704 (= lt!1204684 (lemmaDropApply!1195 lt!1204688 0))))

(assert (=> b!3525704 (= (head!7395 (drop!2051 lt!1204688 0)) (apply!8917 lt!1204688 0))))

(declare-fun lt!1204687 () Unit!53054)

(assert (=> b!3525704 (= lt!1204687 lt!1204684)))

(declare-fun lt!1204683 () List!37495)

(assert (=> b!3525704 (= lt!1204683 (list!13676 lt!1204359))))

(declare-fun lt!1204682 () Unit!53054)

(assert (=> b!3525704 (= lt!1204682 (lemmaDropTail!1079 lt!1204683 0))))

(assert (=> b!3525704 (= (tail!5497 (drop!2051 lt!1204683 0)) (drop!2051 lt!1204683 (+ 0 1)))))

(declare-fun lt!1204685 () Unit!53054)

(assert (=> b!3525704 (= lt!1204685 lt!1204682)))

(assert (= (and d!1029156 res!1422192) b!3525702))

(assert (= (and d!1029156 c!607829) b!3525703))

(assert (= (and d!1029156 (not c!607829)) b!3525704))

(declare-fun m!3979245 () Bool)

(assert (=> d!1029156 m!3979245))

(assert (=> d!1029156 m!3979245))

(assert (=> d!1029156 m!3978653))

(declare-fun m!3979247 () Bool)

(assert (=> d!1029156 m!3979247))

(declare-fun m!3979249 () Bool)

(assert (=> d!1029156 m!3979249))

(declare-fun m!3979251 () Bool)

(assert (=> d!1029156 m!3979251))

(assert (=> d!1029156 m!3978653))

(assert (=> b!3525702 m!3979251))

(declare-fun m!3979253 () Bool)

(assert (=> b!3525704 m!3979253))

(declare-fun m!3979255 () Bool)

(assert (=> b!3525704 m!3979255))

(declare-fun m!3979257 () Bool)

(assert (=> b!3525704 m!3979257))

(declare-fun m!3979259 () Bool)

(assert (=> b!3525704 m!3979259))

(declare-fun m!3979261 () Bool)

(assert (=> b!3525704 m!3979261))

(declare-fun m!3979263 () Bool)

(assert (=> b!3525704 m!3979263))

(assert (=> b!3525704 m!3979257))

(assert (=> b!3525704 m!3979261))

(declare-fun m!3979265 () Bool)

(assert (=> b!3525704 m!3979265))

(declare-fun m!3979267 () Bool)

(assert (=> b!3525704 m!3979267))

(declare-fun m!3979269 () Bool)

(assert (=> b!3525704 m!3979269))

(assert (=> b!3525704 m!3979259))

(declare-fun m!3979271 () Bool)

(assert (=> b!3525704 m!3979271))

(declare-fun m!3979273 () Bool)

(assert (=> b!3525704 m!3979273))

(assert (=> b!3525704 m!3979255))

(declare-fun m!3979275 () Bool)

(assert (=> b!3525704 m!3979275))

(declare-fun m!3979277 () Bool)

(assert (=> b!3525704 m!3979277))

(assert (=> b!3525704 m!3979263))

(assert (=> b!3525002 d!1029156))

(declare-fun d!1029162 () Bool)

(declare-fun lt!1204690 () BalanceConc!22292)

(assert (=> d!1029162 (= (list!13673 lt!1204690) (printList!1619 thiss!18206 (list!13676 lt!1204359)))))

(assert (=> d!1029162 (= lt!1204690 (printTailRec!1566 thiss!18206 lt!1204359 0 (BalanceConc!22293 Empty!11339)))))

(assert (=> d!1029162 (= (print!2136 thiss!18206 lt!1204359) lt!1204690)))

(declare-fun bs!565677 () Bool)

(assert (= bs!565677 d!1029162))

(declare-fun m!3979279 () Bool)

(assert (=> bs!565677 m!3979279))

(assert (=> bs!565677 m!3979253))

(assert (=> bs!565677 m!3979253))

(declare-fun m!3979281 () Bool)

(assert (=> bs!565677 m!3979281))

(assert (=> bs!565677 m!3978213))

(assert (=> b!3525002 d!1029162))

(declare-fun d!1029164 () Bool)

(declare-fun list!13677 (Conc!11339) List!37493)

(assert (=> d!1029164 (= (list!13673 lt!1204364) (list!13677 (c!607689 lt!1204364)))))

(declare-fun bs!565678 () Bool)

(assert (= bs!565678 d!1029164))

(declare-fun m!3979283 () Bool)

(assert (=> bs!565678 m!3979283))

(assert (=> b!3525002 d!1029164))

(declare-fun d!1029166 () Bool)

(declare-fun e!2182386 () Bool)

(assert (=> d!1029166 e!2182386))

(declare-fun res!1422197 () Bool)

(assert (=> d!1029166 (=> (not res!1422197) (not e!2182386))))

(declare-fun lt!1204693 () BalanceConc!22294)

(assert (=> d!1029166 (= res!1422197 (= (list!13676 lt!1204693) (Cons!37371 (h!42791 tokens!494) Nil!37371)))))

(assert (=> d!1029166 (= lt!1204693 (singleton!1152 (h!42791 tokens!494)))))

(assert (=> d!1029166 (= (singletonSeq!2578 (h!42791 tokens!494)) lt!1204693)))

(declare-fun b!3525711 () Bool)

(assert (=> b!3525711 (= e!2182386 (isBalanced!3461 (c!607690 lt!1204693)))))

(assert (= (and d!1029166 res!1422197) b!3525711))

(declare-fun m!3979285 () Bool)

(assert (=> d!1029166 m!3979285))

(declare-fun m!3979287 () Bool)

(assert (=> d!1029166 m!3979287))

(declare-fun m!3979289 () Bool)

(assert (=> b!3525711 m!3979289))

(assert (=> b!3525002 d!1029166))

(declare-fun d!1029168 () Bool)

(declare-fun c!607838 () Bool)

(assert (=> d!1029168 (= c!607838 ((_ is Cons!37371) (Cons!37371 (h!42791 tokens!494) Nil!37371)))))

(declare-fun e!2182399 () List!37493)

(assert (=> d!1029168 (= (printList!1619 thiss!18206 (Cons!37371 (h!42791 tokens!494) Nil!37371)) e!2182399)))

(declare-fun b!3525735 () Bool)

(assert (=> b!3525735 (= e!2182399 (++!9265 (list!13673 (charsOf!3496 (h!42791 (Cons!37371 (h!42791 tokens!494) Nil!37371)))) (printList!1619 thiss!18206 (t!282384 (Cons!37371 (h!42791 tokens!494) Nil!37371)))))))

(declare-fun b!3525736 () Bool)

(assert (=> b!3525736 (= e!2182399 Nil!37369)))

(assert (= (and d!1029168 c!607838) b!3525735))

(assert (= (and d!1029168 (not c!607838)) b!3525736))

(declare-fun m!3979303 () Bool)

(assert (=> b!3525735 m!3979303))

(assert (=> b!3525735 m!3979303))

(declare-fun m!3979305 () Bool)

(assert (=> b!3525735 m!3979305))

(declare-fun m!3979307 () Bool)

(assert (=> b!3525735 m!3979307))

(assert (=> b!3525735 m!3979305))

(assert (=> b!3525735 m!3979307))

(declare-fun m!3979309 () Bool)

(assert (=> b!3525735 m!3979309))

(assert (=> b!3525002 d!1029168))

(declare-fun d!1029174 () Bool)

(declare-fun res!1422213 () Bool)

(declare-fun e!2182406 () Bool)

(assert (=> d!1029174 (=> (not res!1422213) (not e!2182406))))

(assert (=> d!1029174 (= res!1422213 (not (isEmpty!21839 (originalCharacters!6196 separatorToken!241))))))

(assert (=> d!1029174 (= (inv!50609 separatorToken!241) e!2182406)))

(declare-fun b!3525747 () Bool)

(declare-fun res!1422214 () Bool)

(assert (=> b!3525747 (=> (not res!1422214) (not e!2182406))))

(declare-fun dynLambda!15940 (Int TokenValue!5712) BalanceConc!22292)

(assert (=> b!3525747 (= res!1422214 (= (originalCharacters!6196 separatorToken!241) (list!13673 (dynLambda!15940 (toChars!7597 (transformation!5482 (rule!8134 separatorToken!241))) (value!176697 separatorToken!241)))))))

(declare-fun b!3525748 () Bool)

(assert (=> b!3525748 (= e!2182406 (= (size!28437 separatorToken!241) (size!28438 (originalCharacters!6196 separatorToken!241))))))

(assert (= (and d!1029174 res!1422213) b!3525747))

(assert (= (and b!3525747 res!1422214) b!3525748))

(declare-fun b_lambda!103019 () Bool)

(assert (=> (not b_lambda!103019) (not b!3525747)))

(declare-fun tb!197243 () Bool)

(declare-fun t!282432 () Bool)

(assert (=> (and b!3525016 (= (toChars!7597 (transformation!5482 (h!42790 rules!2135))) (toChars!7597 (transformation!5482 (rule!8134 separatorToken!241)))) t!282432) tb!197243))

(declare-fun b!3525758 () Bool)

(declare-fun e!2182412 () Bool)

(declare-fun tp!1087565 () Bool)

(declare-fun inv!50612 (Conc!11339) Bool)

(assert (=> b!3525758 (= e!2182412 (and (inv!50612 (c!607689 (dynLambda!15940 (toChars!7597 (transformation!5482 (rule!8134 separatorToken!241))) (value!176697 separatorToken!241)))) tp!1087565))))

(declare-fun result!241626 () Bool)

(declare-fun inv!50613 (BalanceConc!22292) Bool)

(assert (=> tb!197243 (= result!241626 (and (inv!50613 (dynLambda!15940 (toChars!7597 (transformation!5482 (rule!8134 separatorToken!241))) (value!176697 separatorToken!241))) e!2182412))))

(assert (= tb!197243 b!3525758))

(declare-fun m!3979381 () Bool)

(assert (=> b!3525758 m!3979381))

(declare-fun m!3979383 () Bool)

(assert (=> tb!197243 m!3979383))

(assert (=> b!3525747 t!282432))

(declare-fun b_and!251343 () Bool)

(assert (= b_and!251297 (and (=> t!282432 result!241626) b_and!251343)))

(declare-fun t!282434 () Bool)

(declare-fun tb!197245 () Bool)

(assert (=> (and b!3525023 (= (toChars!7597 (transformation!5482 (rule!8134 (h!42791 tokens!494)))) (toChars!7597 (transformation!5482 (rule!8134 separatorToken!241)))) t!282434) tb!197245))

(declare-fun result!241630 () Bool)

(assert (= result!241630 result!241626))

(assert (=> b!3525747 t!282434))

(declare-fun b_and!251345 () Bool)

(assert (= b_and!251301 (and (=> t!282434 result!241630) b_and!251345)))

(declare-fun t!282436 () Bool)

(declare-fun tb!197247 () Bool)

(assert (=> (and b!3525010 (= (toChars!7597 (transformation!5482 (rule!8134 separatorToken!241))) (toChars!7597 (transformation!5482 (rule!8134 separatorToken!241)))) t!282436) tb!197247))

(declare-fun result!241632 () Bool)

(assert (= result!241632 result!241626))

(assert (=> b!3525747 t!282436))

(declare-fun b_and!251347 () Bool)

(assert (= b_and!251305 (and (=> t!282436 result!241632) b_and!251347)))

(declare-fun m!3979385 () Bool)

(assert (=> d!1029174 m!3979385))

(declare-fun m!3979387 () Bool)

(assert (=> b!3525747 m!3979387))

(assert (=> b!3525747 m!3979387))

(declare-fun m!3979389 () Bool)

(assert (=> b!3525747 m!3979389))

(declare-fun m!3979391 () Bool)

(assert (=> b!3525748 m!3979391))

(assert (=> start!327530 d!1029174))

(declare-fun d!1029186 () Bool)

(declare-fun lt!1204711 () Bool)

(assert (=> d!1029186 (= lt!1204711 (isEmpty!21839 (list!13673 (_2!21741 lt!1204370))))))

(assert (=> d!1029186 (= lt!1204711 (isEmpty!21842 (c!607689 (_2!21741 lt!1204370))))))

(assert (=> d!1029186 (= (isEmpty!21837 (_2!21741 lt!1204370)) lt!1204711)))

(declare-fun bs!565680 () Bool)

(assert (= bs!565680 d!1029186))

(declare-fun m!3979393 () Bool)

(assert (=> bs!565680 m!3979393))

(assert (=> bs!565680 m!3979393))

(declare-fun m!3979395 () Bool)

(assert (=> bs!565680 m!3979395))

(declare-fun m!3979397 () Bool)

(assert (=> bs!565680 m!3979397))

(assert (=> b!3525021 d!1029186))

(declare-fun d!1029188 () Bool)

(assert (=> d!1029188 (= (list!13673 (charsOf!3496 (h!42791 tokens!494))) (list!13677 (c!607689 (charsOf!3496 (h!42791 tokens!494)))))))

(declare-fun bs!565681 () Bool)

(assert (= bs!565681 d!1029188))

(declare-fun m!3979407 () Bool)

(assert (=> bs!565681 m!3979407))

(assert (=> b!3525042 d!1029188))

(declare-fun d!1029190 () Bool)

(declare-fun lt!1204716 () BalanceConc!22292)

(assert (=> d!1029190 (= (list!13673 lt!1204716) (originalCharacters!6196 (h!42791 tokens!494)))))

(assert (=> d!1029190 (= lt!1204716 (dynLambda!15940 (toChars!7597 (transformation!5482 (rule!8134 (h!42791 tokens!494)))) (value!176697 (h!42791 tokens!494))))))

(assert (=> d!1029190 (= (charsOf!3496 (h!42791 tokens!494)) lt!1204716)))

(declare-fun b_lambda!103021 () Bool)

(assert (=> (not b_lambda!103021) (not d!1029190)))

(declare-fun tb!197249 () Bool)

(declare-fun t!282438 () Bool)

(assert (=> (and b!3525016 (= (toChars!7597 (transformation!5482 (h!42790 rules!2135))) (toChars!7597 (transformation!5482 (rule!8134 (h!42791 tokens!494))))) t!282438) tb!197249))

(declare-fun b!3525771 () Bool)

(declare-fun e!2182420 () Bool)

(declare-fun tp!1087566 () Bool)

(assert (=> b!3525771 (= e!2182420 (and (inv!50612 (c!607689 (dynLambda!15940 (toChars!7597 (transformation!5482 (rule!8134 (h!42791 tokens!494)))) (value!176697 (h!42791 tokens!494))))) tp!1087566))))

(declare-fun result!241634 () Bool)

(assert (=> tb!197249 (= result!241634 (and (inv!50613 (dynLambda!15940 (toChars!7597 (transformation!5482 (rule!8134 (h!42791 tokens!494)))) (value!176697 (h!42791 tokens!494)))) e!2182420))))

(assert (= tb!197249 b!3525771))

(declare-fun m!3979461 () Bool)

(assert (=> b!3525771 m!3979461))

(declare-fun m!3979463 () Bool)

(assert (=> tb!197249 m!3979463))

(assert (=> d!1029190 t!282438))

(declare-fun b_and!251349 () Bool)

(assert (= b_and!251343 (and (=> t!282438 result!241634) b_and!251349)))

(declare-fun t!282440 () Bool)

(declare-fun tb!197251 () Bool)

(assert (=> (and b!3525023 (= (toChars!7597 (transformation!5482 (rule!8134 (h!42791 tokens!494)))) (toChars!7597 (transformation!5482 (rule!8134 (h!42791 tokens!494))))) t!282440) tb!197251))

(declare-fun result!241636 () Bool)

(assert (= result!241636 result!241634))

(assert (=> d!1029190 t!282440))

(declare-fun b_and!251351 () Bool)

(assert (= b_and!251345 (and (=> t!282440 result!241636) b_and!251351)))

(declare-fun t!282442 () Bool)

(declare-fun tb!197253 () Bool)

(assert (=> (and b!3525010 (= (toChars!7597 (transformation!5482 (rule!8134 separatorToken!241))) (toChars!7597 (transformation!5482 (rule!8134 (h!42791 tokens!494))))) t!282442) tb!197253))

(declare-fun result!241638 () Bool)

(assert (= result!241638 result!241634))

(assert (=> d!1029190 t!282442))

(declare-fun b_and!251353 () Bool)

(assert (= b_and!251347 (and (=> t!282442 result!241638) b_and!251353)))

(declare-fun m!3979465 () Bool)

(assert (=> d!1029190 m!3979465))

(declare-fun m!3979467 () Bool)

(assert (=> d!1029190 m!3979467))

(assert (=> b!3525042 d!1029190))

(declare-fun bs!565691 () Bool)

(declare-fun d!1029202 () Bool)

(assert (= bs!565691 (and d!1029202 b!3525032)))

(declare-fun lambda!122869 () Int)

(assert (=> bs!565691 (not (= lambda!122869 lambda!122858))))

(declare-fun bs!565692 () Bool)

(assert (= bs!565692 (and d!1029202 b!3525005)))

(assert (=> bs!565692 (= lambda!122869 lambda!122859)))

(declare-fun b!3525942 () Bool)

(declare-fun e!2182534 () Bool)

(assert (=> b!3525942 (= e!2182534 true)))

(declare-fun b!3525941 () Bool)

(declare-fun e!2182533 () Bool)

(assert (=> b!3525941 (= e!2182533 e!2182534)))

(declare-fun b!3525940 () Bool)

(declare-fun e!2182532 () Bool)

(assert (=> b!3525940 (= e!2182532 e!2182533)))

(assert (=> d!1029202 e!2182532))

(assert (= b!3525941 b!3525942))

(assert (= b!3525940 b!3525941))

(assert (= (and d!1029202 ((_ is Cons!37370) rules!2135)) b!3525940))

(assert (=> b!3525942 (< (dynLambda!15932 order!20129 (toValue!7738 (transformation!5482 (h!42790 rules!2135)))) (dynLambda!15933 order!20131 lambda!122869))))

(assert (=> b!3525942 (< (dynLambda!15934 order!20133 (toChars!7597 (transformation!5482 (h!42790 rules!2135)))) (dynLambda!15933 order!20131 lambda!122869))))

(assert (=> d!1029202 true))

(declare-fun e!2182531 () Bool)

(assert (=> d!1029202 e!2182531))

(declare-fun res!1422284 () Bool)

(assert (=> d!1029202 (=> (not res!1422284) (not e!2182531))))

(declare-fun lt!1204745 () Bool)

(assert (=> d!1029202 (= res!1422284 (= lt!1204745 (forall!8041 (list!13676 (seqFromList!4018 tokens!494)) lambda!122869)))))

(declare-fun forall!8043 (BalanceConc!22294 Int) Bool)

(assert (=> d!1029202 (= lt!1204745 (forall!8043 (seqFromList!4018 tokens!494) lambda!122869))))

(assert (=> d!1029202 (not (isEmpty!21836 rules!2135))))

(assert (=> d!1029202 (= (rulesProduceEachTokenIndividually!1522 thiss!18206 rules!2135 (seqFromList!4018 tokens!494)) lt!1204745)))

(declare-fun b!3525939 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1887 (LexerInterface!5071 List!37494 List!37495) Bool)

(assert (=> b!3525939 (= e!2182531 (= lt!1204745 (rulesProduceEachTokenIndividuallyList!1887 thiss!18206 rules!2135 (list!13676 (seqFromList!4018 tokens!494)))))))

(assert (= (and d!1029202 res!1422284) b!3525939))

(assert (=> d!1029202 m!3978073))

(declare-fun m!3979665 () Bool)

(assert (=> d!1029202 m!3979665))

(assert (=> d!1029202 m!3979665))

(declare-fun m!3979667 () Bool)

(assert (=> d!1029202 m!3979667))

(assert (=> d!1029202 m!3978073))

(declare-fun m!3979669 () Bool)

(assert (=> d!1029202 m!3979669))

(assert (=> d!1029202 m!3978113))

(assert (=> b!3525939 m!3978073))

(assert (=> b!3525939 m!3979665))

(assert (=> b!3525939 m!3979665))

(declare-fun m!3979671 () Bool)

(assert (=> b!3525939 m!3979671))

(assert (=> b!3525020 d!1029202))

(declare-fun d!1029270 () Bool)

(declare-fun fromListB!1847 (List!37495) BalanceConc!22294)

(assert (=> d!1029270 (= (seqFromList!4018 tokens!494) (fromListB!1847 tokens!494))))

(declare-fun bs!565693 () Bool)

(assert (= bs!565693 d!1029270))

(declare-fun m!3979673 () Bool)

(assert (=> bs!565693 m!3979673))

(assert (=> b!3525020 d!1029270))

(declare-fun d!1029272 () Bool)

(declare-fun res!1422285 () Bool)

(declare-fun e!2182535 () Bool)

(assert (=> d!1029272 (=> (not res!1422285) (not e!2182535))))

(assert (=> d!1029272 (= res!1422285 (not (isEmpty!21839 (originalCharacters!6196 (h!42791 tokens!494)))))))

(assert (=> d!1029272 (= (inv!50609 (h!42791 tokens!494)) e!2182535)))

(declare-fun b!3525943 () Bool)

(declare-fun res!1422286 () Bool)

(assert (=> b!3525943 (=> (not res!1422286) (not e!2182535))))

(assert (=> b!3525943 (= res!1422286 (= (originalCharacters!6196 (h!42791 tokens!494)) (list!13673 (dynLambda!15940 (toChars!7597 (transformation!5482 (rule!8134 (h!42791 tokens!494)))) (value!176697 (h!42791 tokens!494))))))))

(declare-fun b!3525944 () Bool)

(assert (=> b!3525944 (= e!2182535 (= (size!28437 (h!42791 tokens!494)) (size!28438 (originalCharacters!6196 (h!42791 tokens!494)))))))

(assert (= (and d!1029272 res!1422285) b!3525943))

(assert (= (and b!3525943 res!1422286) b!3525944))

(declare-fun b_lambda!103055 () Bool)

(assert (=> (not b_lambda!103055) (not b!3525943)))

(assert (=> b!3525943 t!282438))

(declare-fun b_and!251381 () Bool)

(assert (= b_and!251349 (and (=> t!282438 result!241634) b_and!251381)))

(assert (=> b!3525943 t!282440))

(declare-fun b_and!251383 () Bool)

(assert (= b_and!251351 (and (=> t!282440 result!241636) b_and!251383)))

(assert (=> b!3525943 t!282442))

(declare-fun b_and!251385 () Bool)

(assert (= b_and!251353 (and (=> t!282442 result!241638) b_and!251385)))

(declare-fun m!3979675 () Bool)

(assert (=> d!1029272 m!3979675))

(assert (=> b!3525943 m!3979467))

(assert (=> b!3525943 m!3979467))

(declare-fun m!3979677 () Bool)

(assert (=> b!3525943 m!3979677))

(declare-fun m!3979679 () Bool)

(assert (=> b!3525944 m!3979679))

(assert (=> b!3525041 d!1029272))

(declare-fun d!1029274 () Bool)

(assert (=> d!1029274 (= (isEmpty!21836 rules!2135) ((_ is Nil!37370) rules!2135))))

(assert (=> b!3525019 d!1029274))

(declare-fun d!1029276 () Bool)

(declare-fun lt!1204748 () Token!10330)

(assert (=> d!1029276 (= lt!1204748 (apply!8917 (list!13676 (_1!21741 lt!1204370)) 0))))

(declare-fun apply!8919 (Conc!11340 Int) Token!10330)

(assert (=> d!1029276 (= lt!1204748 (apply!8919 (c!607690 (_1!21741 lt!1204370)) 0))))

(declare-fun e!2182538 () Bool)

(assert (=> d!1029276 e!2182538))

(declare-fun res!1422289 () Bool)

(assert (=> d!1029276 (=> (not res!1422289) (not e!2182538))))

(assert (=> d!1029276 (= res!1422289 (<= 0 0))))

(assert (=> d!1029276 (= (apply!8915 (_1!21741 lt!1204370) 0) lt!1204748)))

(declare-fun b!3525947 () Bool)

(assert (=> b!3525947 (= e!2182538 (< 0 (size!28439 (_1!21741 lt!1204370))))))

(assert (= (and d!1029276 res!1422289) b!3525947))

(assert (=> d!1029276 m!3979117))

(assert (=> d!1029276 m!3979117))

(declare-fun m!3979681 () Bool)

(assert (=> d!1029276 m!3979681))

(declare-fun m!3979683 () Bool)

(assert (=> d!1029276 m!3979683))

(assert (=> b!3525947 m!3978139))

(assert (=> b!3525040 d!1029276))

(declare-fun lt!1204751 () Bool)

(declare-fun d!1029278 () Bool)

(declare-fun isEmpty!21848 (List!37495) Bool)

(assert (=> d!1029278 (= lt!1204751 (isEmpty!21848 (list!13676 (_1!21741 (lex!2397 thiss!18206 rules!2135 lt!1204381)))))))

(declare-fun isEmpty!21849 (Conc!11340) Bool)

(assert (=> d!1029278 (= lt!1204751 (isEmpty!21849 (c!607690 (_1!21741 (lex!2397 thiss!18206 rules!2135 lt!1204381)))))))

(assert (=> d!1029278 (= (isEmpty!21835 (_1!21741 (lex!2397 thiss!18206 rules!2135 lt!1204381))) lt!1204751)))

(declare-fun bs!565694 () Bool)

(assert (= bs!565694 d!1029278))

(declare-fun m!3979685 () Bool)

(assert (=> bs!565694 m!3979685))

(assert (=> bs!565694 m!3979685))

(declare-fun m!3979687 () Bool)

(assert (=> bs!565694 m!3979687))

(declare-fun m!3979689 () Bool)

(assert (=> bs!565694 m!3979689))

(assert (=> b!3525018 d!1029278))

(declare-fun e!2182541 () Bool)

(declare-fun lt!1204752 () tuple2!37214)

(declare-fun b!3525948 () Bool)

(assert (=> b!3525948 (= e!2182541 (= (list!13673 (_2!21741 lt!1204752)) (_2!21743 (lexList!1480 thiss!18206 rules!2135 (list!13673 lt!1204381)))))))

(declare-fun b!3525949 () Bool)

(declare-fun e!2182540 () Bool)

(assert (=> b!3525949 (= e!2182540 (not (isEmpty!21835 (_1!21741 lt!1204752))))))

(declare-fun d!1029280 () Bool)

(assert (=> d!1029280 e!2182541))

(declare-fun res!1422292 () Bool)

(assert (=> d!1029280 (=> (not res!1422292) (not e!2182541))))

(declare-fun e!2182539 () Bool)

(assert (=> d!1029280 (= res!1422292 e!2182539)))

(declare-fun c!607871 () Bool)

(assert (=> d!1029280 (= c!607871 (> (size!28439 (_1!21741 lt!1204752)) 0))))

(assert (=> d!1029280 (= lt!1204752 (lexTailRecV2!1088 thiss!18206 rules!2135 lt!1204381 (BalanceConc!22293 Empty!11339) lt!1204381 (BalanceConc!22295 Empty!11340)))))

(assert (=> d!1029280 (= (lex!2397 thiss!18206 rules!2135 lt!1204381) lt!1204752)))

(declare-fun b!3525950 () Bool)

(declare-fun res!1422291 () Bool)

(assert (=> b!3525950 (=> (not res!1422291) (not e!2182541))))

(assert (=> b!3525950 (= res!1422291 (= (list!13676 (_1!21741 lt!1204752)) (_1!21743 (lexList!1480 thiss!18206 rules!2135 (list!13673 lt!1204381)))))))

(declare-fun b!3525951 () Bool)

(assert (=> b!3525951 (= e!2182539 (= (_2!21741 lt!1204752) lt!1204381))))

(declare-fun b!3525952 () Bool)

(assert (=> b!3525952 (= e!2182539 e!2182540)))

(declare-fun res!1422290 () Bool)

(assert (=> b!3525952 (= res!1422290 (< (size!28443 (_2!21741 lt!1204752)) (size!28443 lt!1204381)))))

(assert (=> b!3525952 (=> (not res!1422290) (not e!2182540))))

(assert (= (and d!1029280 c!607871) b!3525952))

(assert (= (and d!1029280 (not c!607871)) b!3525951))

(assert (= (and b!3525952 res!1422290) b!3525949))

(assert (= (and d!1029280 res!1422292) b!3525950))

(assert (= (and b!3525950 res!1422291) b!3525948))

(declare-fun m!3979691 () Bool)

(assert (=> b!3525952 m!3979691))

(declare-fun m!3979693 () Bool)

(assert (=> b!3525952 m!3979693))

(declare-fun m!3979695 () Bool)

(assert (=> b!3525950 m!3979695))

(declare-fun m!3979697 () Bool)

(assert (=> b!3525950 m!3979697))

(assert (=> b!3525950 m!3979697))

(declare-fun m!3979699 () Bool)

(assert (=> b!3525950 m!3979699))

(declare-fun m!3979701 () Bool)

(assert (=> d!1029280 m!3979701))

(declare-fun m!3979703 () Bool)

(assert (=> d!1029280 m!3979703))

(declare-fun m!3979705 () Bool)

(assert (=> b!3525948 m!3979705))

(assert (=> b!3525948 m!3979697))

(assert (=> b!3525948 m!3979697))

(assert (=> b!3525948 m!3979699))

(declare-fun m!3979707 () Bool)

(assert (=> b!3525949 m!3979707))

(assert (=> b!3525018 d!1029280))

(declare-fun d!1029282 () Bool)

(assert (=> d!1029282 (= (seqFromList!4017 lt!1204378) (fromListB!1846 lt!1204378))))

(declare-fun bs!565695 () Bool)

(assert (= bs!565695 d!1029282))

(declare-fun m!3979709 () Bool)

(assert (=> bs!565695 m!3979709))

(assert (=> b!3525018 d!1029282))

(declare-fun b!3525962 () Bool)

(declare-fun e!2182546 () List!37493)

(assert (=> b!3525962 (= e!2182546 (Cons!37369 (h!42789 lt!1204378) (++!9265 (t!282382 lt!1204378) lt!1204344)))))

(declare-fun e!2182547 () Bool)

(declare-fun lt!1204755 () List!37493)

(declare-fun b!3525964 () Bool)

(assert (=> b!3525964 (= e!2182547 (or (not (= lt!1204344 Nil!37369)) (= lt!1204755 lt!1204378)))))

(declare-fun d!1029284 () Bool)

(assert (=> d!1029284 e!2182547))

(declare-fun res!1422298 () Bool)

(assert (=> d!1029284 (=> (not res!1422298) (not e!2182547))))

(assert (=> d!1029284 (= res!1422298 (= (content!5269 lt!1204755) ((_ map or) (content!5269 lt!1204378) (content!5269 lt!1204344))))))

(assert (=> d!1029284 (= lt!1204755 e!2182546)))

(declare-fun c!607874 () Bool)

(assert (=> d!1029284 (= c!607874 ((_ is Nil!37369) lt!1204378))))

(assert (=> d!1029284 (= (++!9265 lt!1204378 lt!1204344) lt!1204755)))

(declare-fun b!3525961 () Bool)

(assert (=> b!3525961 (= e!2182546 lt!1204344)))

(declare-fun b!3525963 () Bool)

(declare-fun res!1422297 () Bool)

(assert (=> b!3525963 (=> (not res!1422297) (not e!2182547))))

(assert (=> b!3525963 (= res!1422297 (= (size!28438 lt!1204755) (+ (size!28438 lt!1204378) (size!28438 lt!1204344))))))

(assert (= (and d!1029284 c!607874) b!3525961))

(assert (= (and d!1029284 (not c!607874)) b!3525962))

(assert (= (and d!1029284 res!1422298) b!3525963))

(assert (= (and b!3525963 res!1422297) b!3525964))

(declare-fun m!3979711 () Bool)

(assert (=> b!3525962 m!3979711))

(declare-fun m!3979713 () Bool)

(assert (=> d!1029284 m!3979713))

(declare-fun m!3979715 () Bool)

(assert (=> d!1029284 m!3979715))

(declare-fun m!3979717 () Bool)

(assert (=> d!1029284 m!3979717))

(declare-fun m!3979719 () Bool)

(assert (=> b!3525963 m!3979719))

(assert (=> b!3525963 m!3978121))

(declare-fun m!3979721 () Bool)

(assert (=> b!3525963 m!3979721))

(assert (=> b!3525037 d!1029284))

(declare-fun d!1029286 () Bool)

(assert (=> d!1029286 (= (++!9265 (++!9265 lt!1204378 lt!1204340) lt!1204343) (++!9265 lt!1204378 (++!9265 lt!1204340 lt!1204343)))))

(declare-fun lt!1204758 () Unit!53054)

(declare-fun choose!20477 (List!37493 List!37493 List!37493) Unit!53054)

(assert (=> d!1029286 (= lt!1204758 (choose!20477 lt!1204378 lt!1204340 lt!1204343))))

(assert (=> d!1029286 (= (lemmaConcatAssociativity!2016 lt!1204378 lt!1204340 lt!1204343) lt!1204758)))

(declare-fun bs!565696 () Bool)

(assert (= bs!565696 d!1029286))

(assert (=> bs!565696 m!3978065))

(declare-fun m!3979723 () Bool)

(assert (=> bs!565696 m!3979723))

(assert (=> bs!565696 m!3978089))

(assert (=> bs!565696 m!3978091))

(assert (=> bs!565696 m!3978089))

(declare-fun m!3979725 () Bool)

(assert (=> bs!565696 m!3979725))

(assert (=> bs!565696 m!3978065))

(assert (=> b!3525037 d!1029286))

(declare-fun e!2182548 () List!37493)

(declare-fun b!3525966 () Bool)

(assert (=> b!3525966 (= e!2182548 (Cons!37369 (h!42789 (++!9265 lt!1204378 lt!1204340)) (++!9265 (t!282382 (++!9265 lt!1204378 lt!1204340)) lt!1204343)))))

(declare-fun b!3525968 () Bool)

(declare-fun e!2182549 () Bool)

(declare-fun lt!1204759 () List!37493)

(assert (=> b!3525968 (= e!2182549 (or (not (= lt!1204343 Nil!37369)) (= lt!1204759 (++!9265 lt!1204378 lt!1204340))))))

(declare-fun d!1029288 () Bool)

(assert (=> d!1029288 e!2182549))

(declare-fun res!1422300 () Bool)

(assert (=> d!1029288 (=> (not res!1422300) (not e!2182549))))

(assert (=> d!1029288 (= res!1422300 (= (content!5269 lt!1204759) ((_ map or) (content!5269 (++!9265 lt!1204378 lt!1204340)) (content!5269 lt!1204343))))))

(assert (=> d!1029288 (= lt!1204759 e!2182548)))

(declare-fun c!607875 () Bool)

(assert (=> d!1029288 (= c!607875 ((_ is Nil!37369) (++!9265 lt!1204378 lt!1204340)))))

(assert (=> d!1029288 (= (++!9265 (++!9265 lt!1204378 lt!1204340) lt!1204343) lt!1204759)))

(declare-fun b!3525965 () Bool)

(assert (=> b!3525965 (= e!2182548 lt!1204343)))

(declare-fun b!3525967 () Bool)

(declare-fun res!1422299 () Bool)

(assert (=> b!3525967 (=> (not res!1422299) (not e!2182549))))

(assert (=> b!3525967 (= res!1422299 (= (size!28438 lt!1204759) (+ (size!28438 (++!9265 lt!1204378 lt!1204340)) (size!28438 lt!1204343))))))

(assert (= (and d!1029288 c!607875) b!3525965))

(assert (= (and d!1029288 (not c!607875)) b!3525966))

(assert (= (and d!1029288 res!1422300) b!3525967))

(assert (= (and b!3525967 res!1422299) b!3525968))

(declare-fun m!3979727 () Bool)

(assert (=> b!3525966 m!3979727))

(declare-fun m!3979729 () Bool)

(assert (=> d!1029288 m!3979729))

(assert (=> d!1029288 m!3978089))

(declare-fun m!3979731 () Bool)

(assert (=> d!1029288 m!3979731))

(declare-fun m!3979733 () Bool)

(assert (=> d!1029288 m!3979733))

(declare-fun m!3979735 () Bool)

(assert (=> b!3525967 m!3979735))

(assert (=> b!3525967 m!3978089))

(declare-fun m!3979737 () Bool)

(assert (=> b!3525967 m!3979737))

(declare-fun m!3979739 () Bool)

(assert (=> b!3525967 m!3979739))

(assert (=> b!3525015 d!1029288))

(declare-fun b!3525970 () Bool)

(declare-fun e!2182550 () List!37493)

(assert (=> b!3525970 (= e!2182550 (Cons!37369 (h!42789 lt!1204378) (++!9265 (t!282382 lt!1204378) lt!1204340)))))

(declare-fun lt!1204760 () List!37493)

(declare-fun e!2182551 () Bool)

(declare-fun b!3525972 () Bool)

(assert (=> b!3525972 (= e!2182551 (or (not (= lt!1204340 Nil!37369)) (= lt!1204760 lt!1204378)))))

(declare-fun d!1029290 () Bool)

(assert (=> d!1029290 e!2182551))

(declare-fun res!1422302 () Bool)

(assert (=> d!1029290 (=> (not res!1422302) (not e!2182551))))

(assert (=> d!1029290 (= res!1422302 (= (content!5269 lt!1204760) ((_ map or) (content!5269 lt!1204378) (content!5269 lt!1204340))))))

(assert (=> d!1029290 (= lt!1204760 e!2182550)))

(declare-fun c!607876 () Bool)

(assert (=> d!1029290 (= c!607876 ((_ is Nil!37369) lt!1204378))))

(assert (=> d!1029290 (= (++!9265 lt!1204378 lt!1204340) lt!1204760)))

(declare-fun b!3525969 () Bool)

(assert (=> b!3525969 (= e!2182550 lt!1204340)))

(declare-fun b!3525971 () Bool)

(declare-fun res!1422301 () Bool)

(assert (=> b!3525971 (=> (not res!1422301) (not e!2182551))))

(assert (=> b!3525971 (= res!1422301 (= (size!28438 lt!1204760) (+ (size!28438 lt!1204378) (size!28438 lt!1204340))))))

(assert (= (and d!1029290 c!607876) b!3525969))

(assert (= (and d!1029290 (not c!607876)) b!3525970))

(assert (= (and d!1029290 res!1422302) b!3525971))

(assert (= (and b!3525971 res!1422301) b!3525972))

(declare-fun m!3979741 () Bool)

(assert (=> b!3525970 m!3979741))

(declare-fun m!3979743 () Bool)

(assert (=> d!1029290 m!3979743))

(assert (=> d!1029290 m!3979715))

(declare-fun m!3979745 () Bool)

(assert (=> d!1029290 m!3979745))

(declare-fun m!3979747 () Bool)

(assert (=> b!3525971 m!3979747))

(assert (=> b!3525971 m!3978121))

(declare-fun m!3979749 () Bool)

(assert (=> b!3525971 m!3979749))

(assert (=> b!3525015 d!1029290))

(declare-fun d!1029292 () Bool)

(declare-fun c!607879 () Bool)

(assert (=> d!1029292 (= c!607879 ((_ is Cons!37371) tokens!494))))

(declare-fun e!2182554 () List!37493)

(assert (=> d!1029292 (= (printWithSeparatorTokenList!358 thiss!18206 tokens!494 separatorToken!241) e!2182554)))

(declare-fun b!3525977 () Bool)

(assert (=> b!3525977 (= e!2182554 (++!9265 (++!9265 (list!13673 (charsOf!3496 (h!42791 tokens!494))) (list!13673 (charsOf!3496 separatorToken!241))) (printWithSeparatorTokenList!358 thiss!18206 (t!282384 tokens!494) separatorToken!241)))))

(declare-fun b!3525978 () Bool)

(assert (=> b!3525978 (= e!2182554 Nil!37369)))

(assert (= (and d!1029292 c!607879) b!3525977))

(assert (= (and d!1029292 (not c!607879)) b!3525978))

(assert (=> b!3525977 m!3978219))

(assert (=> b!3525977 m!3978221))

(assert (=> b!3525977 m!3978221))

(assert (=> b!3525977 m!3978067))

(declare-fun m!3979751 () Bool)

(assert (=> b!3525977 m!3979751))

(assert (=> b!3525977 m!3978053))

(assert (=> b!3525977 m!3978219))

(assert (=> b!3525977 m!3978069))

(assert (=> b!3525977 m!3979751))

(assert (=> b!3525977 m!3978069))

(declare-fun m!3979753 () Bool)

(assert (=> b!3525977 m!3979753))

(assert (=> b!3525977 m!3978053))

(assert (=> b!3525977 m!3978067))

(assert (=> b!3525036 d!1029292))

(declare-fun e!2182555 () List!37493)

(declare-fun b!3525980 () Bool)

(assert (=> b!3525980 (= e!2182555 (Cons!37369 (h!42789 (++!9265 lt!1204339 lt!1204340)) (++!9265 (t!282382 (++!9265 lt!1204339 lt!1204340)) (printWithSeparatorTokenList!358 thiss!18206 (t!282384 (t!282384 tokens!494)) separatorToken!241))))))

(declare-fun e!2182556 () Bool)

(declare-fun b!3525982 () Bool)

(declare-fun lt!1204761 () List!37493)

(assert (=> b!3525982 (= e!2182556 (or (not (= (printWithSeparatorTokenList!358 thiss!18206 (t!282384 (t!282384 tokens!494)) separatorToken!241) Nil!37369)) (= lt!1204761 (++!9265 lt!1204339 lt!1204340))))))

(declare-fun d!1029294 () Bool)

(assert (=> d!1029294 e!2182556))

(declare-fun res!1422304 () Bool)

(assert (=> d!1029294 (=> (not res!1422304) (not e!2182556))))

(assert (=> d!1029294 (= res!1422304 (= (content!5269 lt!1204761) ((_ map or) (content!5269 (++!9265 lt!1204339 lt!1204340)) (content!5269 (printWithSeparatorTokenList!358 thiss!18206 (t!282384 (t!282384 tokens!494)) separatorToken!241)))))))

(assert (=> d!1029294 (= lt!1204761 e!2182555)))

(declare-fun c!607880 () Bool)

(assert (=> d!1029294 (= c!607880 ((_ is Nil!37369) (++!9265 lt!1204339 lt!1204340)))))

(assert (=> d!1029294 (= (++!9265 (++!9265 lt!1204339 lt!1204340) (printWithSeparatorTokenList!358 thiss!18206 (t!282384 (t!282384 tokens!494)) separatorToken!241)) lt!1204761)))

(declare-fun b!3525979 () Bool)

(assert (=> b!3525979 (= e!2182555 (printWithSeparatorTokenList!358 thiss!18206 (t!282384 (t!282384 tokens!494)) separatorToken!241))))

(declare-fun b!3525981 () Bool)

(declare-fun res!1422303 () Bool)

(assert (=> b!3525981 (=> (not res!1422303) (not e!2182556))))

(assert (=> b!3525981 (= res!1422303 (= (size!28438 lt!1204761) (+ (size!28438 (++!9265 lt!1204339 lt!1204340)) (size!28438 (printWithSeparatorTokenList!358 thiss!18206 (t!282384 (t!282384 tokens!494)) separatorToken!241)))))))

(assert (= (and d!1029294 c!607880) b!3525979))

(assert (= (and d!1029294 (not c!607880)) b!3525980))

(assert (= (and d!1029294 res!1422304) b!3525981))

(assert (= (and b!3525981 res!1422303) b!3525982))

(assert (=> b!3525980 m!3978061))

(declare-fun m!3979755 () Bool)

(assert (=> b!3525980 m!3979755))

(declare-fun m!3979757 () Bool)

(assert (=> d!1029294 m!3979757))

(assert (=> d!1029294 m!3978059))

(declare-fun m!3979759 () Bool)

(assert (=> d!1029294 m!3979759))

(assert (=> d!1029294 m!3978061))

(declare-fun m!3979761 () Bool)

(assert (=> d!1029294 m!3979761))

(declare-fun m!3979763 () Bool)

(assert (=> b!3525981 m!3979763))

(assert (=> b!3525981 m!3978059))

(declare-fun m!3979765 () Bool)

(assert (=> b!3525981 m!3979765))

(assert (=> b!3525981 m!3978061))

(declare-fun m!3979767 () Bool)

(assert (=> b!3525981 m!3979767))

(assert (=> b!3525036 d!1029294))

(declare-fun b!3525984 () Bool)

(declare-fun e!2182557 () List!37493)

(assert (=> b!3525984 (= e!2182557 (Cons!37369 (h!42789 lt!1204340) (++!9265 (t!282382 lt!1204340) lt!1204343)))))

(declare-fun e!2182558 () Bool)

(declare-fun b!3525986 () Bool)

(declare-fun lt!1204762 () List!37493)

(assert (=> b!3525986 (= e!2182558 (or (not (= lt!1204343 Nil!37369)) (= lt!1204762 lt!1204340)))))

(declare-fun d!1029296 () Bool)

(assert (=> d!1029296 e!2182558))

(declare-fun res!1422306 () Bool)

(assert (=> d!1029296 (=> (not res!1422306) (not e!2182558))))

(assert (=> d!1029296 (= res!1422306 (= (content!5269 lt!1204762) ((_ map or) (content!5269 lt!1204340) (content!5269 lt!1204343))))))

(assert (=> d!1029296 (= lt!1204762 e!2182557)))

(declare-fun c!607881 () Bool)

(assert (=> d!1029296 (= c!607881 ((_ is Nil!37369) lt!1204340))))

(assert (=> d!1029296 (= (++!9265 lt!1204340 lt!1204343) lt!1204762)))

(declare-fun b!3525983 () Bool)

(assert (=> b!3525983 (= e!2182557 lt!1204343)))

(declare-fun b!3525985 () Bool)

(declare-fun res!1422305 () Bool)

(assert (=> b!3525985 (=> (not res!1422305) (not e!2182558))))

(assert (=> b!3525985 (= res!1422305 (= (size!28438 lt!1204762) (+ (size!28438 lt!1204340) (size!28438 lt!1204343))))))

(assert (= (and d!1029296 c!607881) b!3525983))

(assert (= (and d!1029296 (not c!607881)) b!3525984))

(assert (= (and d!1029296 res!1422306) b!3525985))

(assert (= (and b!3525985 res!1422305) b!3525986))

(declare-fun m!3979769 () Bool)

(assert (=> b!3525984 m!3979769))

(declare-fun m!3979771 () Bool)

(assert (=> d!1029296 m!3979771))

(assert (=> d!1029296 m!3979745))

(assert (=> d!1029296 m!3979733))

(declare-fun m!3979773 () Bool)

(assert (=> b!3525985 m!3979773))

(assert (=> b!3525985 m!3979749))

(assert (=> b!3525985 m!3979739))

(assert (=> b!3525036 d!1029296))

(declare-fun b!3525988 () Bool)

(declare-fun e!2182559 () List!37493)

(assert (=> b!3525988 (= e!2182559 (Cons!37369 (h!42789 lt!1204339) (++!9265 (t!282382 lt!1204339) lt!1204340)))))

(declare-fun lt!1204763 () List!37493)

(declare-fun e!2182560 () Bool)

(declare-fun b!3525990 () Bool)

(assert (=> b!3525990 (= e!2182560 (or (not (= lt!1204340 Nil!37369)) (= lt!1204763 lt!1204339)))))

(declare-fun d!1029298 () Bool)

(assert (=> d!1029298 e!2182560))

(declare-fun res!1422308 () Bool)

(assert (=> d!1029298 (=> (not res!1422308) (not e!2182560))))

(assert (=> d!1029298 (= res!1422308 (= (content!5269 lt!1204763) ((_ map or) (content!5269 lt!1204339) (content!5269 lt!1204340))))))

(assert (=> d!1029298 (= lt!1204763 e!2182559)))

(declare-fun c!607882 () Bool)

(assert (=> d!1029298 (= c!607882 ((_ is Nil!37369) lt!1204339))))

(assert (=> d!1029298 (= (++!9265 lt!1204339 lt!1204340) lt!1204763)))

(declare-fun b!3525987 () Bool)

(assert (=> b!3525987 (= e!2182559 lt!1204340)))

(declare-fun b!3525989 () Bool)

(declare-fun res!1422307 () Bool)

(assert (=> b!3525989 (=> (not res!1422307) (not e!2182560))))

(assert (=> b!3525989 (= res!1422307 (= (size!28438 lt!1204763) (+ (size!28438 lt!1204339) (size!28438 lt!1204340))))))

(assert (= (and d!1029298 c!607882) b!3525987))

(assert (= (and d!1029298 (not c!607882)) b!3525988))

(assert (= (and d!1029298 res!1422308) b!3525989))

(assert (= (and b!3525989 res!1422307) b!3525990))

(declare-fun m!3979775 () Bool)

(assert (=> b!3525988 m!3979775))

(declare-fun m!3979777 () Bool)

(assert (=> d!1029298 m!3979777))

(declare-fun m!3979779 () Bool)

(assert (=> d!1029298 m!3979779))

(assert (=> d!1029298 m!3979745))

(declare-fun m!3979781 () Bool)

(assert (=> b!3525989 m!3979781))

(assert (=> b!3525989 m!3978173))

(assert (=> b!3525989 m!3979749))

(assert (=> b!3525036 d!1029298))

(declare-fun d!1029300 () Bool)

(declare-fun lt!1204764 () BalanceConc!22292)

(assert (=> d!1029300 (= (list!13673 lt!1204764) (originalCharacters!6196 separatorToken!241))))

(assert (=> d!1029300 (= lt!1204764 (dynLambda!15940 (toChars!7597 (transformation!5482 (rule!8134 separatorToken!241))) (value!176697 separatorToken!241)))))

(assert (=> d!1029300 (= (charsOf!3496 separatorToken!241) lt!1204764)))

(declare-fun b_lambda!103057 () Bool)

(assert (=> (not b_lambda!103057) (not d!1029300)))

(assert (=> d!1029300 t!282432))

(declare-fun b_and!251387 () Bool)

(assert (= b_and!251381 (and (=> t!282432 result!241626) b_and!251387)))

(assert (=> d!1029300 t!282434))

(declare-fun b_and!251389 () Bool)

(assert (= b_and!251383 (and (=> t!282434 result!241630) b_and!251389)))

(assert (=> d!1029300 t!282436))

(declare-fun b_and!251391 () Bool)

(assert (= b_and!251385 (and (=> t!282436 result!241632) b_and!251391)))

(declare-fun m!3979783 () Bool)

(assert (=> d!1029300 m!3979783))

(assert (=> d!1029300 m!3979387))

(assert (=> b!3525036 d!1029300))

(declare-fun d!1029302 () Bool)

(assert (=> d!1029302 (= (list!13673 (charsOf!3496 (h!42791 (t!282384 tokens!494)))) (list!13677 (c!607689 (charsOf!3496 (h!42791 (t!282384 tokens!494))))))))

(declare-fun bs!565697 () Bool)

(assert (= bs!565697 d!1029302))

(declare-fun m!3979785 () Bool)

(assert (=> bs!565697 m!3979785))

(assert (=> b!3525036 d!1029302))

(declare-fun d!1029304 () Bool)

(declare-fun c!607883 () Bool)

(assert (=> d!1029304 (= c!607883 ((_ is Cons!37371) (t!282384 (t!282384 tokens!494))))))

(declare-fun e!2182561 () List!37493)

(assert (=> d!1029304 (= (printWithSeparatorTokenList!358 thiss!18206 (t!282384 (t!282384 tokens!494)) separatorToken!241) e!2182561)))

(declare-fun b!3525991 () Bool)

(assert (=> b!3525991 (= e!2182561 (++!9265 (++!9265 (list!13673 (charsOf!3496 (h!42791 (t!282384 (t!282384 tokens!494))))) (list!13673 (charsOf!3496 separatorToken!241))) (printWithSeparatorTokenList!358 thiss!18206 (t!282384 (t!282384 (t!282384 tokens!494))) separatorToken!241)))))

(declare-fun b!3525992 () Bool)

(assert (=> b!3525992 (= e!2182561 Nil!37369)))

(assert (= (and d!1029304 c!607883) b!3525991))

(assert (= (and d!1029304 (not c!607883)) b!3525992))

(declare-fun m!3979787 () Bool)

(assert (=> b!3525991 m!3979787))

(declare-fun m!3979789 () Bool)

(assert (=> b!3525991 m!3979789))

(assert (=> b!3525991 m!3979789))

(assert (=> b!3525991 m!3978067))

(declare-fun m!3979791 () Bool)

(assert (=> b!3525991 m!3979791))

(assert (=> b!3525991 m!3978053))

(assert (=> b!3525991 m!3979787))

(declare-fun m!3979793 () Bool)

(assert (=> b!3525991 m!3979793))

(assert (=> b!3525991 m!3979791))

(assert (=> b!3525991 m!3979793))

(declare-fun m!3979795 () Bool)

(assert (=> b!3525991 m!3979795))

(assert (=> b!3525991 m!3978053))

(assert (=> b!3525991 m!3978067))

(assert (=> b!3525036 d!1029304))

(declare-fun d!1029306 () Bool)

(declare-fun c!607884 () Bool)

(assert (=> d!1029306 (= c!607884 ((_ is Cons!37371) (t!282384 tokens!494)))))

(declare-fun e!2182562 () List!37493)

(assert (=> d!1029306 (= (printWithSeparatorTokenList!358 thiss!18206 (t!282384 tokens!494) separatorToken!241) e!2182562)))

(declare-fun b!3525993 () Bool)

(assert (=> b!3525993 (= e!2182562 (++!9265 (++!9265 (list!13673 (charsOf!3496 (h!42791 (t!282384 tokens!494)))) (list!13673 (charsOf!3496 separatorToken!241))) (printWithSeparatorTokenList!358 thiss!18206 (t!282384 (t!282384 tokens!494)) separatorToken!241)))))

(declare-fun b!3525994 () Bool)

(assert (=> b!3525994 (= e!2182562 Nil!37369)))

(assert (= (and d!1029306 c!607884) b!3525993))

(assert (= (and d!1029306 (not c!607884)) b!3525994))

(assert (=> b!3525993 m!3978051))

(assert (=> b!3525993 m!3978057))

(assert (=> b!3525993 m!3978057))

(assert (=> b!3525993 m!3978067))

(declare-fun m!3979797 () Bool)

(assert (=> b!3525993 m!3979797))

(assert (=> b!3525993 m!3978053))

(assert (=> b!3525993 m!3978051))

(assert (=> b!3525993 m!3978061))

(assert (=> b!3525993 m!3979797))

(assert (=> b!3525993 m!3978061))

(declare-fun m!3979799 () Bool)

(assert (=> b!3525993 m!3979799))

(assert (=> b!3525993 m!3978053))

(assert (=> b!3525993 m!3978067))

(assert (=> b!3525036 d!1029306))

(declare-fun d!1029308 () Bool)

(assert (=> d!1029308 (= (list!13673 (charsOf!3496 separatorToken!241)) (list!13677 (c!607689 (charsOf!3496 separatorToken!241))))))

(declare-fun bs!565698 () Bool)

(assert (= bs!565698 d!1029308))

(declare-fun m!3979801 () Bool)

(assert (=> bs!565698 m!3979801))

(assert (=> b!3525036 d!1029308))

(declare-fun d!1029310 () Bool)

(declare-fun lt!1204765 () BalanceConc!22292)

(assert (=> d!1029310 (= (list!13673 lt!1204765) (originalCharacters!6196 (h!42791 (t!282384 tokens!494))))))

(assert (=> d!1029310 (= lt!1204765 (dynLambda!15940 (toChars!7597 (transformation!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))) (value!176697 (h!42791 (t!282384 tokens!494)))))))

(assert (=> d!1029310 (= (charsOf!3496 (h!42791 (t!282384 tokens!494))) lt!1204765)))

(declare-fun b_lambda!103059 () Bool)

(assert (=> (not b_lambda!103059) (not d!1029310)))

(declare-fun t!282474 () Bool)

(declare-fun tb!197281 () Bool)

(assert (=> (and b!3525016 (= (toChars!7597 (transformation!5482 (h!42790 rules!2135))) (toChars!7597 (transformation!5482 (rule!8134 (h!42791 (t!282384 tokens!494)))))) t!282474) tb!197281))

(declare-fun b!3525995 () Bool)

(declare-fun e!2182563 () Bool)

(declare-fun tp!1087624 () Bool)

(assert (=> b!3525995 (= e!2182563 (and (inv!50612 (c!607689 (dynLambda!15940 (toChars!7597 (transformation!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))) (value!176697 (h!42791 (t!282384 tokens!494)))))) tp!1087624))))

(declare-fun result!241674 () Bool)

(assert (=> tb!197281 (= result!241674 (and (inv!50613 (dynLambda!15940 (toChars!7597 (transformation!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))) (value!176697 (h!42791 (t!282384 tokens!494))))) e!2182563))))

(assert (= tb!197281 b!3525995))

(declare-fun m!3979803 () Bool)

(assert (=> b!3525995 m!3979803))

(declare-fun m!3979805 () Bool)

(assert (=> tb!197281 m!3979805))

(assert (=> d!1029310 t!282474))

(declare-fun b_and!251393 () Bool)

(assert (= b_and!251387 (and (=> t!282474 result!241674) b_and!251393)))

(declare-fun t!282476 () Bool)

(declare-fun tb!197283 () Bool)

(assert (=> (and b!3525023 (= (toChars!7597 (transformation!5482 (rule!8134 (h!42791 tokens!494)))) (toChars!7597 (transformation!5482 (rule!8134 (h!42791 (t!282384 tokens!494)))))) t!282476) tb!197283))

(declare-fun result!241676 () Bool)

(assert (= result!241676 result!241674))

(assert (=> d!1029310 t!282476))

(declare-fun b_and!251395 () Bool)

(assert (= b_and!251389 (and (=> t!282476 result!241676) b_and!251395)))

(declare-fun tb!197285 () Bool)

(declare-fun t!282478 () Bool)

(assert (=> (and b!3525010 (= (toChars!7597 (transformation!5482 (rule!8134 separatorToken!241))) (toChars!7597 (transformation!5482 (rule!8134 (h!42791 (t!282384 tokens!494)))))) t!282478) tb!197285))

(declare-fun result!241678 () Bool)

(assert (= result!241678 result!241674))

(assert (=> d!1029310 t!282478))

(declare-fun b_and!251397 () Bool)

(assert (= b_and!251391 (and (=> t!282478 result!241678) b_and!251397)))

(declare-fun m!3979807 () Bool)

(assert (=> d!1029310 m!3979807))

(declare-fun m!3979809 () Bool)

(assert (=> d!1029310 m!3979809))

(assert (=> b!3525036 d!1029310))

(declare-fun d!1029312 () Bool)

(declare-fun lt!1204766 () Token!10330)

(assert (=> d!1029312 (= lt!1204766 (apply!8917 (list!13676 (_1!21741 lt!1204347)) 0))))

(assert (=> d!1029312 (= lt!1204766 (apply!8919 (c!607690 (_1!21741 lt!1204347)) 0))))

(declare-fun e!2182564 () Bool)

(assert (=> d!1029312 e!2182564))

(declare-fun res!1422309 () Bool)

(assert (=> d!1029312 (=> (not res!1422309) (not e!2182564))))

(assert (=> d!1029312 (= res!1422309 (<= 0 0))))

(assert (=> d!1029312 (= (apply!8915 (_1!21741 lt!1204347) 0) lt!1204766)))

(declare-fun b!3525996 () Bool)

(assert (=> b!3525996 (= e!2182564 (< 0 (size!28439 (_1!21741 lt!1204347))))))

(assert (= (and d!1029312 res!1422309) b!3525996))

(assert (=> d!1029312 m!3979097))

(assert (=> d!1029312 m!3979097))

(declare-fun m!3979811 () Bool)

(assert (=> d!1029312 m!3979811))

(declare-fun m!3979813 () Bool)

(assert (=> d!1029312 m!3979813))

(assert (=> b!3525996 m!3978157))

(assert (=> b!3525014 d!1029312))

(declare-fun d!1029314 () Bool)

(assert (=> d!1029314 (= (inv!50605 (tag!6122 (h!42790 rules!2135))) (= (mod (str.len (value!176696 (tag!6122 (h!42790 rules!2135)))) 2) 0))))

(assert (=> b!3525013 d!1029314))

(declare-fun d!1029316 () Bool)

(declare-fun res!1422310 () Bool)

(declare-fun e!2182565 () Bool)

(assert (=> d!1029316 (=> (not res!1422310) (not e!2182565))))

(assert (=> d!1029316 (= res!1422310 (semiInverseModEq!2315 (toChars!7597 (transformation!5482 (h!42790 rules!2135))) (toValue!7738 (transformation!5482 (h!42790 rules!2135)))))))

(assert (=> d!1029316 (= (inv!50608 (transformation!5482 (h!42790 rules!2135))) e!2182565)))

(declare-fun b!3525997 () Bool)

(assert (=> b!3525997 (= e!2182565 (equivClasses!2214 (toChars!7597 (transformation!5482 (h!42790 rules!2135))) (toValue!7738 (transformation!5482 (h!42790 rules!2135)))))))

(assert (= (and d!1029316 res!1422310) b!3525997))

(declare-fun m!3979815 () Bool)

(assert (=> d!1029316 m!3979815))

(declare-fun m!3979817 () Bool)

(assert (=> b!3525997 m!3979817))

(assert (=> b!3525013 d!1029316))

(declare-fun b!3525998 () Bool)

(declare-fun e!2182568 () Bool)

(assert (=> b!3525998 (= e!2182568 (inv!17 (value!176697 separatorToken!241)))))

(declare-fun b!3525999 () Bool)

(declare-fun e!2182566 () Bool)

(assert (=> b!3525999 (= e!2182566 e!2182568)))

(declare-fun c!607886 () Bool)

(assert (=> b!3525999 (= c!607886 ((_ is IntegerValue!17137) (value!176697 separatorToken!241)))))

(declare-fun d!1029318 () Bool)

(declare-fun c!607885 () Bool)

(assert (=> d!1029318 (= c!607885 ((_ is IntegerValue!17136) (value!176697 separatorToken!241)))))

(assert (=> d!1029318 (= (inv!21 (value!176697 separatorToken!241)) e!2182566)))

(declare-fun b!3526000 () Bool)

(assert (=> b!3526000 (= e!2182566 (inv!16 (value!176697 separatorToken!241)))))

(declare-fun b!3526001 () Bool)

(declare-fun res!1422311 () Bool)

(declare-fun e!2182567 () Bool)

(assert (=> b!3526001 (=> res!1422311 e!2182567)))

(assert (=> b!3526001 (= res!1422311 (not ((_ is IntegerValue!17138) (value!176697 separatorToken!241))))))

(assert (=> b!3526001 (= e!2182568 e!2182567)))

(declare-fun b!3526002 () Bool)

(assert (=> b!3526002 (= e!2182567 (inv!15 (value!176697 separatorToken!241)))))

(assert (= (and d!1029318 c!607885) b!3526000))

(assert (= (and d!1029318 (not c!607885)) b!3525999))

(assert (= (and b!3525999 c!607886) b!3525998))

(assert (= (and b!3525999 (not c!607886)) b!3526001))

(assert (= (and b!3526001 (not res!1422311)) b!3526002))

(declare-fun m!3979819 () Bool)

(assert (=> b!3525998 m!3979819))

(declare-fun m!3979821 () Bool)

(assert (=> b!3526000 m!3979821))

(declare-fun m!3979823 () Bool)

(assert (=> b!3526002 m!3979823))

(assert (=> b!3525012 d!1029318))

(declare-fun b!3526016 () Bool)

(declare-fun e!2182571 () Bool)

(declare-fun tp!1087639 () Bool)

(declare-fun tp!1087636 () Bool)

(assert (=> b!3526016 (= e!2182571 (and tp!1087639 tp!1087636))))

(declare-fun b!3526013 () Bool)

(declare-fun tp_is_empty!17621 () Bool)

(assert (=> b!3526013 (= e!2182571 tp_is_empty!17621)))

(assert (=> b!3525031 (= tp!1087554 e!2182571)))

(declare-fun b!3526015 () Bool)

(declare-fun tp!1087635 () Bool)

(assert (=> b!3526015 (= e!2182571 tp!1087635)))

(declare-fun b!3526014 () Bool)

(declare-fun tp!1087638 () Bool)

(declare-fun tp!1087637 () Bool)

(assert (=> b!3526014 (= e!2182571 (and tp!1087638 tp!1087637))))

(assert (= (and b!3525031 ((_ is ElementMatch!10241) (regex!5482 (rule!8134 (h!42791 tokens!494))))) b!3526013))

(assert (= (and b!3525031 ((_ is Concat!15953) (regex!5482 (rule!8134 (h!42791 tokens!494))))) b!3526014))

(assert (= (and b!3525031 ((_ is Star!10241) (regex!5482 (rule!8134 (h!42791 tokens!494))))) b!3526015))

(assert (= (and b!3525031 ((_ is Union!10241) (regex!5482 (rule!8134 (h!42791 tokens!494))))) b!3526016))

(declare-fun b!3526030 () Bool)

(declare-fun b_free!90853 () Bool)

(declare-fun b_next!91557 () Bool)

(assert (=> b!3526030 (= b_free!90853 (not b_next!91557))))

(declare-fun t!282480 () Bool)

(declare-fun tb!197287 () Bool)

(assert (=> (and b!3526030 (= (toValue!7738 (transformation!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))) (toValue!7738 (transformation!5482 (rule!8134 (h!42791 tokens!494))))) t!282480) tb!197287))

(declare-fun result!241684 () Bool)

(assert (= result!241684 result!241598))

(assert (=> d!1028982 t!282480))

(declare-fun t!282482 () Bool)

(declare-fun tb!197289 () Bool)

(assert (=> (and b!3526030 (= (toValue!7738 (transformation!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))) (toValue!7738 (transformation!5482 (rule!8134 (h!42791 (t!282384 tokens!494)))))) t!282482) tb!197289))

(declare-fun result!241686 () Bool)

(assert (= result!241686 result!241620))

(assert (=> d!1029136 t!282482))

(declare-fun tp!1087652 () Bool)

(declare-fun b_and!251399 () Bool)

(assert (=> b!3526030 (= tp!1087652 (and (=> t!282480 result!241684) (=> t!282482 result!241686) b_and!251399))))

(declare-fun b_free!90855 () Bool)

(declare-fun b_next!91559 () Bool)

(assert (=> b!3526030 (= b_free!90855 (not b_next!91559))))

(declare-fun t!282484 () Bool)

(declare-fun tb!197291 () Bool)

(assert (=> (and b!3526030 (= (toChars!7597 (transformation!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))) (toChars!7597 (transformation!5482 (rule!8134 (h!42791 (t!282384 tokens!494)))))) t!282484) tb!197291))

(declare-fun result!241688 () Bool)

(assert (= result!241688 result!241674))

(assert (=> d!1029310 t!282484))

(declare-fun t!282486 () Bool)

(declare-fun tb!197293 () Bool)

(assert (=> (and b!3526030 (= (toChars!7597 (transformation!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))) (toChars!7597 (transformation!5482 (rule!8134 separatorToken!241)))) t!282486) tb!197293))

(declare-fun result!241690 () Bool)

(assert (= result!241690 result!241626))

(assert (=> d!1029300 t!282486))

(assert (=> b!3525747 t!282486))

(declare-fun t!282488 () Bool)

(declare-fun tb!197295 () Bool)

(assert (=> (and b!3526030 (= (toChars!7597 (transformation!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))) (toChars!7597 (transformation!5482 (rule!8134 (h!42791 tokens!494))))) t!282488) tb!197295))

(declare-fun result!241692 () Bool)

(assert (= result!241692 result!241634))

(assert (=> d!1029190 t!282488))

(assert (=> b!3525943 t!282488))

(declare-fun b_and!251401 () Bool)

(declare-fun tp!1087654 () Bool)

(assert (=> b!3526030 (= tp!1087654 (and (=> t!282488 result!241692) (=> t!282486 result!241690) (=> t!282484 result!241688) b_and!251401))))

(declare-fun e!2182585 () Bool)

(assert (=> b!3526030 (= e!2182585 (and tp!1087652 tp!1087654))))

(declare-fun e!2182589 () Bool)

(assert (=> b!3525041 (= tp!1087556 e!2182589)))

(declare-fun tp!1087650 () Bool)

(declare-fun e!2182586 () Bool)

(declare-fun b!3526029 () Bool)

(assert (=> b!3526029 (= e!2182586 (and tp!1087650 (inv!50605 (tag!6122 (rule!8134 (h!42791 (t!282384 tokens!494))))) (inv!50608 (transformation!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))) e!2182585))))

(declare-fun b!3526027 () Bool)

(declare-fun tp!1087653 () Bool)

(declare-fun e!2182587 () Bool)

(assert (=> b!3526027 (= e!2182589 (and (inv!50609 (h!42791 (t!282384 tokens!494))) e!2182587 tp!1087653))))

(declare-fun b!3526028 () Bool)

(declare-fun tp!1087651 () Bool)

(assert (=> b!3526028 (= e!2182587 (and (inv!21 (value!176697 (h!42791 (t!282384 tokens!494)))) e!2182586 tp!1087651))))

(assert (= b!3526029 b!3526030))

(assert (= b!3526028 b!3526029))

(assert (= b!3526027 b!3526028))

(assert (= (and b!3525041 ((_ is Cons!37371) (t!282384 tokens!494))) b!3526027))

(declare-fun m!3979825 () Bool)

(assert (=> b!3526029 m!3979825))

(declare-fun m!3979827 () Bool)

(assert (=> b!3526029 m!3979827))

(declare-fun m!3979829 () Bool)

(assert (=> b!3526027 m!3979829))

(declare-fun m!3979831 () Bool)

(assert (=> b!3526028 m!3979831))

(declare-fun b!3526034 () Bool)

(declare-fun e!2182590 () Bool)

(declare-fun tp!1087659 () Bool)

(declare-fun tp!1087656 () Bool)

(assert (=> b!3526034 (= e!2182590 (and tp!1087659 tp!1087656))))

(declare-fun b!3526031 () Bool)

(assert (=> b!3526031 (= e!2182590 tp_is_empty!17621)))

(assert (=> b!3525009 (= tp!1087557 e!2182590)))

(declare-fun b!3526033 () Bool)

(declare-fun tp!1087655 () Bool)

(assert (=> b!3526033 (= e!2182590 tp!1087655)))

(declare-fun b!3526032 () Bool)

(declare-fun tp!1087658 () Bool)

(declare-fun tp!1087657 () Bool)

(assert (=> b!3526032 (= e!2182590 (and tp!1087658 tp!1087657))))

(assert (= (and b!3525009 ((_ is ElementMatch!10241) (regex!5482 (rule!8134 separatorToken!241)))) b!3526031))

(assert (= (and b!3525009 ((_ is Concat!15953) (regex!5482 (rule!8134 separatorToken!241)))) b!3526032))

(assert (= (and b!3525009 ((_ is Star!10241) (regex!5482 (rule!8134 separatorToken!241)))) b!3526033))

(assert (= (and b!3525009 ((_ is Union!10241) (regex!5482 (rule!8134 separatorToken!241)))) b!3526034))

(declare-fun b!3526045 () Bool)

(declare-fun b_free!90857 () Bool)

(declare-fun b_next!91561 () Bool)

(assert (=> b!3526045 (= b_free!90857 (not b_next!91561))))

(declare-fun tb!197297 () Bool)

(declare-fun t!282490 () Bool)

(assert (=> (and b!3526045 (= (toValue!7738 (transformation!5482 (h!42790 (t!282383 rules!2135)))) (toValue!7738 (transformation!5482 (rule!8134 (h!42791 tokens!494))))) t!282490) tb!197297))

(declare-fun result!241696 () Bool)

(assert (= result!241696 result!241598))

(assert (=> d!1028982 t!282490))

(declare-fun tb!197299 () Bool)

(declare-fun t!282492 () Bool)

(assert (=> (and b!3526045 (= (toValue!7738 (transformation!5482 (h!42790 (t!282383 rules!2135)))) (toValue!7738 (transformation!5482 (rule!8134 (h!42791 (t!282384 tokens!494)))))) t!282492) tb!197299))

(declare-fun result!241698 () Bool)

(assert (= result!241698 result!241620))

(assert (=> d!1029136 t!282492))

(declare-fun b_and!251403 () Bool)

(declare-fun tp!1087668 () Bool)

(assert (=> b!3526045 (= tp!1087668 (and (=> t!282490 result!241696) (=> t!282492 result!241698) b_and!251403))))

(declare-fun b_free!90859 () Bool)

(declare-fun b_next!91563 () Bool)

(assert (=> b!3526045 (= b_free!90859 (not b_next!91563))))

(declare-fun t!282494 () Bool)

(declare-fun tb!197301 () Bool)

(assert (=> (and b!3526045 (= (toChars!7597 (transformation!5482 (h!42790 (t!282383 rules!2135)))) (toChars!7597 (transformation!5482 (rule!8134 (h!42791 (t!282384 tokens!494)))))) t!282494) tb!197301))

(declare-fun result!241700 () Bool)

(assert (= result!241700 result!241674))

(assert (=> d!1029310 t!282494))

(declare-fun t!282496 () Bool)

(declare-fun tb!197303 () Bool)

(assert (=> (and b!3526045 (= (toChars!7597 (transformation!5482 (h!42790 (t!282383 rules!2135)))) (toChars!7597 (transformation!5482 (rule!8134 separatorToken!241)))) t!282496) tb!197303))

(declare-fun result!241702 () Bool)

(assert (= result!241702 result!241626))

(assert (=> d!1029300 t!282496))

(assert (=> b!3525747 t!282496))

(declare-fun tb!197305 () Bool)

(declare-fun t!282498 () Bool)

(assert (=> (and b!3526045 (= (toChars!7597 (transformation!5482 (h!42790 (t!282383 rules!2135)))) (toChars!7597 (transformation!5482 (rule!8134 (h!42791 tokens!494))))) t!282498) tb!197305))

(declare-fun result!241704 () Bool)

(assert (= result!241704 result!241634))

(assert (=> d!1029190 t!282498))

(assert (=> b!3525943 t!282498))

(declare-fun b_and!251405 () Bool)

(declare-fun tp!1087669 () Bool)

(assert (=> b!3526045 (= tp!1087669 (and (=> t!282494 result!241700) (=> t!282498 result!241704) (=> t!282496 result!241702) b_and!251405))))

(declare-fun e!2182600 () Bool)

(assert (=> b!3526045 (= e!2182600 (and tp!1087668 tp!1087669))))

(declare-fun e!2182601 () Bool)

(declare-fun b!3526044 () Bool)

(declare-fun tp!1087671 () Bool)

(assert (=> b!3526044 (= e!2182601 (and tp!1087671 (inv!50605 (tag!6122 (h!42790 (t!282383 rules!2135)))) (inv!50608 (transformation!5482 (h!42790 (t!282383 rules!2135)))) e!2182600))))

(declare-fun b!3526043 () Bool)

(declare-fun e!2182602 () Bool)

(declare-fun tp!1087670 () Bool)

(assert (=> b!3526043 (= e!2182602 (and e!2182601 tp!1087670))))

(assert (=> b!3525017 (= tp!1087551 e!2182602)))

(assert (= b!3526044 b!3526045))

(assert (= b!3526043 b!3526044))

(assert (= (and b!3525017 ((_ is Cons!37370) (t!282383 rules!2135))) b!3526043))

(declare-fun m!3979833 () Bool)

(assert (=> b!3526044 m!3979833))

(declare-fun m!3979835 () Bool)

(assert (=> b!3526044 m!3979835))

(declare-fun b!3526050 () Bool)

(declare-fun e!2182605 () Bool)

(declare-fun tp!1087674 () Bool)

(assert (=> b!3526050 (= e!2182605 (and tp_is_empty!17621 tp!1087674))))

(assert (=> b!3525026 (= tp!1087548 e!2182605)))

(assert (= (and b!3525026 ((_ is Cons!37369) (originalCharacters!6196 (h!42791 tokens!494)))) b!3526050))

(declare-fun b!3526054 () Bool)

(declare-fun e!2182606 () Bool)

(declare-fun tp!1087679 () Bool)

(declare-fun tp!1087676 () Bool)

(assert (=> b!3526054 (= e!2182606 (and tp!1087679 tp!1087676))))

(declare-fun b!3526051 () Bool)

(assert (=> b!3526051 (= e!2182606 tp_is_empty!17621)))

(assert (=> b!3525013 (= tp!1087558 e!2182606)))

(declare-fun b!3526053 () Bool)

(declare-fun tp!1087675 () Bool)

(assert (=> b!3526053 (= e!2182606 tp!1087675)))

(declare-fun b!3526052 () Bool)

(declare-fun tp!1087678 () Bool)

(declare-fun tp!1087677 () Bool)

(assert (=> b!3526052 (= e!2182606 (and tp!1087678 tp!1087677))))

(assert (= (and b!3525013 ((_ is ElementMatch!10241) (regex!5482 (h!42790 rules!2135)))) b!3526051))

(assert (= (and b!3525013 ((_ is Concat!15953) (regex!5482 (h!42790 rules!2135)))) b!3526052))

(assert (= (and b!3525013 ((_ is Star!10241) (regex!5482 (h!42790 rules!2135)))) b!3526053))

(assert (= (and b!3525013 ((_ is Union!10241) (regex!5482 (h!42790 rules!2135)))) b!3526054))

(declare-fun b!3526057 () Bool)

(declare-fun e!2182609 () Bool)

(assert (=> b!3526057 (= e!2182609 true)))

(declare-fun b!3526056 () Bool)

(declare-fun e!2182608 () Bool)

(assert (=> b!3526056 (= e!2182608 e!2182609)))

(declare-fun b!3526055 () Bool)

(declare-fun e!2182607 () Bool)

(assert (=> b!3526055 (= e!2182607 e!2182608)))

(assert (=> b!3525052 e!2182607))

(assert (= b!3526056 b!3526057))

(assert (= b!3526055 b!3526056))

(assert (= (and b!3525052 ((_ is Cons!37370) (t!282383 rules!2135))) b!3526055))

(assert (=> b!3526057 (< (dynLambda!15932 order!20129 (toValue!7738 (transformation!5482 (h!42790 (t!282383 rules!2135))))) (dynLambda!15933 order!20131 lambda!122859))))

(assert (=> b!3526057 (< (dynLambda!15934 order!20133 (toChars!7597 (transformation!5482 (h!42790 (t!282383 rules!2135))))) (dynLambda!15933 order!20131 lambda!122859))))

(declare-fun b!3526058 () Bool)

(declare-fun e!2182610 () Bool)

(declare-fun tp!1087680 () Bool)

(assert (=> b!3526058 (= e!2182610 (and tp_is_empty!17621 tp!1087680))))

(assert (=> b!3525012 (= tp!1087546 e!2182610)))

(assert (= (and b!3525012 ((_ is Cons!37369) (originalCharacters!6196 separatorToken!241))) b!3526058))

(declare-fun b_lambda!103061 () Bool)

(assert (= b_lambda!103017 (or (and b!3526030 b_free!90853) (and b!3526045 b_free!90857 (= (toValue!7738 (transformation!5482 (h!42790 (t!282383 rules!2135)))) (toValue!7738 (transformation!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))))) (and b!3525023 b_free!90837 (= (toValue!7738 (transformation!5482 (rule!8134 (h!42791 tokens!494)))) (toValue!7738 (transformation!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))))) (and b!3525010 b_free!90841 (= (toValue!7738 (transformation!5482 (rule!8134 separatorToken!241))) (toValue!7738 (transformation!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))))) (and b!3525016 b_free!90833 (= (toValue!7738 (transformation!5482 (h!42790 rules!2135))) (toValue!7738 (transformation!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))))) b_lambda!103061)))

(declare-fun b_lambda!103063 () Bool)

(assert (= b_lambda!103055 (or (and b!3525016 b_free!90835 (= (toChars!7597 (transformation!5482 (h!42790 rules!2135))) (toChars!7597 (transformation!5482 (rule!8134 (h!42791 tokens!494)))))) (and b!3526045 b_free!90859 (= (toChars!7597 (transformation!5482 (h!42790 (t!282383 rules!2135)))) (toChars!7597 (transformation!5482 (rule!8134 (h!42791 tokens!494)))))) (and b!3525010 b_free!90843 (= (toChars!7597 (transformation!5482 (rule!8134 separatorToken!241))) (toChars!7597 (transformation!5482 (rule!8134 (h!42791 tokens!494)))))) (and b!3526030 b_free!90855 (= (toChars!7597 (transformation!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))) (toChars!7597 (transformation!5482 (rule!8134 (h!42791 tokens!494)))))) (and b!3525023 b_free!90839) b_lambda!103063)))

(declare-fun b_lambda!103065 () Bool)

(assert (= b_lambda!103021 (or (and b!3525016 b_free!90835 (= (toChars!7597 (transformation!5482 (h!42790 rules!2135))) (toChars!7597 (transformation!5482 (rule!8134 (h!42791 tokens!494)))))) (and b!3526045 b_free!90859 (= (toChars!7597 (transformation!5482 (h!42790 (t!282383 rules!2135)))) (toChars!7597 (transformation!5482 (rule!8134 (h!42791 tokens!494)))))) (and b!3525010 b_free!90843 (= (toChars!7597 (transformation!5482 (rule!8134 separatorToken!241))) (toChars!7597 (transformation!5482 (rule!8134 (h!42791 tokens!494)))))) (and b!3526030 b_free!90855 (= (toChars!7597 (transformation!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))) (toChars!7597 (transformation!5482 (rule!8134 (h!42791 tokens!494)))))) (and b!3525023 b_free!90839) b_lambda!103065)))

(declare-fun b_lambda!103067 () Bool)

(assert (= b_lambda!103059 (or (and b!3525023 b_free!90839 (= (toChars!7597 (transformation!5482 (rule!8134 (h!42791 tokens!494)))) (toChars!7597 (transformation!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))))) (and b!3525016 b_free!90835 (= (toChars!7597 (transformation!5482 (h!42790 rules!2135))) (toChars!7597 (transformation!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))))) (and b!3525010 b_free!90843 (= (toChars!7597 (transformation!5482 (rule!8134 separatorToken!241))) (toChars!7597 (transformation!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))))) (and b!3526045 b_free!90859 (= (toChars!7597 (transformation!5482 (h!42790 (t!282383 rules!2135)))) (toChars!7597 (transformation!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))))) (and b!3526030 b_free!90855) b_lambda!103067)))

(declare-fun b_lambda!103069 () Bool)

(assert (= b_lambda!102997 (or b!3525032 b_lambda!103069)))

(declare-fun bs!565699 () Bool)

(declare-fun d!1029320 () Bool)

(assert (= bs!565699 (and d!1029320 b!3525032)))

(assert (=> bs!565699 (= (dynLambda!15937 lambda!122858 (h!42791 tokens!494)) (not (isSeparator!5482 (rule!8134 (h!42791 tokens!494)))))))

(assert (=> b!3525208 d!1029320))

(declare-fun b_lambda!103071 () Bool)

(assert (= b_lambda!103003 (or b!3525032 b_lambda!103071)))

(declare-fun bs!565700 () Bool)

(declare-fun d!1029322 () Bool)

(assert (= bs!565700 (and d!1029322 b!3525032)))

(assert (=> bs!565700 (= (dynLambda!15937 lambda!122858 (h!42791 (t!282384 tokens!494))) (not (isSeparator!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))))))

(assert (=> d!1028976 d!1029322))

(declare-fun b_lambda!103073 () Bool)

(assert (= b_lambda!103005 (or b!3525032 b_lambda!103073)))

(assert (=> d!1028978 d!1029320))

(declare-fun b_lambda!103075 () Bool)

(assert (= b_lambda!103015 (or b!3525005 b_lambda!103075)))

(declare-fun bs!565701 () Bool)

(declare-fun d!1029324 () Bool)

(assert (= bs!565701 (and d!1029324 b!3525005)))

(assert (=> bs!565701 (= (dynLambda!15937 lambda!122859 (h!42791 (t!282384 tokens!494))) (rulesProduceIndividualToken!2563 thiss!18206 rules!2135 (h!42791 (t!282384 tokens!494))))))

(assert (=> bs!565701 m!3978167))

(assert (=> d!1029102 d!1029324))

(declare-fun b_lambda!103077 () Bool)

(assert (= b_lambda!103019 (or (and b!3525016 b_free!90835 (= (toChars!7597 (transformation!5482 (h!42790 rules!2135))) (toChars!7597 (transformation!5482 (rule!8134 separatorToken!241))))) (and b!3525010 b_free!90843) (and b!3526030 b_free!90855 (= (toChars!7597 (transformation!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))) (toChars!7597 (transformation!5482 (rule!8134 separatorToken!241))))) (and b!3526045 b_free!90859 (= (toChars!7597 (transformation!5482 (h!42790 (t!282383 rules!2135)))) (toChars!7597 (transformation!5482 (rule!8134 separatorToken!241))))) (and b!3525023 b_free!90839 (= (toChars!7597 (transformation!5482 (rule!8134 (h!42791 tokens!494)))) (toChars!7597 (transformation!5482 (rule!8134 separatorToken!241))))) b_lambda!103077)))

(declare-fun b_lambda!103079 () Bool)

(assert (= b_lambda!103057 (or (and b!3525016 b_free!90835 (= (toChars!7597 (transformation!5482 (h!42790 rules!2135))) (toChars!7597 (transformation!5482 (rule!8134 separatorToken!241))))) (and b!3525010 b_free!90843) (and b!3526030 b_free!90855 (= (toChars!7597 (transformation!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))) (toChars!7597 (transformation!5482 (rule!8134 separatorToken!241))))) (and b!3526045 b_free!90859 (= (toChars!7597 (transformation!5482 (h!42790 (t!282383 rules!2135)))) (toChars!7597 (transformation!5482 (rule!8134 separatorToken!241))))) (and b!3525023 b_free!90839 (= (toChars!7597 (transformation!5482 (rule!8134 (h!42791 tokens!494)))) (toChars!7597 (transformation!5482 (rule!8134 separatorToken!241))))) b_lambda!103079)))

(declare-fun b_lambda!103081 () Bool)

(assert (= b_lambda!103007 (or (and b!3526030 b_free!90853 (= (toValue!7738 (transformation!5482 (rule!8134 (h!42791 (t!282384 tokens!494))))) (toValue!7738 (transformation!5482 (rule!8134 (h!42791 tokens!494)))))) (and b!3525010 b_free!90841 (= (toValue!7738 (transformation!5482 (rule!8134 separatorToken!241))) (toValue!7738 (transformation!5482 (rule!8134 (h!42791 tokens!494)))))) (and b!3526045 b_free!90857 (= (toValue!7738 (transformation!5482 (h!42790 (t!282383 rules!2135)))) (toValue!7738 (transformation!5482 (rule!8134 (h!42791 tokens!494)))))) (and b!3525023 b_free!90837) (and b!3525016 b_free!90833 (= (toValue!7738 (transformation!5482 (h!42790 rules!2135))) (toValue!7738 (transformation!5482 (rule!8134 (h!42791 tokens!494)))))) b_lambda!103081)))

(check-sat b_and!251339 (not b!3525711) (not d!1029132) (not b!3525505) (not bm!254713) (not d!1029106) (not bm!254691) (not b!3526000) (not b!3525480) (not b_lambda!103079) (not b!3525735) (not b!3525144) (not b!3525554) (not bm!254689) (not b!3525257) (not d!1028956) (not b!3525173) (not b_lambda!103065) b_and!251341 (not d!1029104) (not b!3525556) (not b_lambda!103077) (not b!3525997) b_and!251401 (not b_lambda!103075) (not b!3526034) (not b!3525988) (not d!1029312) (not b!3525580) (not b_next!91539) (not d!1029146) (not d!1029166) (not b!3525448) (not b!3525525) (not d!1029052) (not d!1029144) (not d!1029070) (not b!3525147) (not b!3525313) (not b!3525981) (not tb!197281) (not d!1029088) (not d!1029040) (not b!3525636) (not b!3525673) (not b!3526015) (not b!3525429) (not b_lambda!103073) (not b!3525453) (not b!3525940) (not d!1029284) (not d!1029128) (not b!3525617) (not b!3525643) (not b!3525553) (not b!3525698) (not d!1029110) (not b!3525690) (not b!3525594) (not d!1029080) (not b!3525939) (not d!1029276) (not d!1029092) (not b!3525977) (not b!3525689) (not d!1029028) (not b!3525967) (not d!1029188) (not b_next!91561) (not bm!254724) (not b!3525507) (not b_next!91557) (not b!3525148) (not b!3525665) (not b!3525748) (not b!3525944) (not bm!254723) (not b!3525687) (not b!3525455) (not d!1029316) (not b!3525555) (not b!3525481) (not b!3525952) (not b!3525962) (not b!3526028) (not b!3525431) (not b_next!91559) (not d!1029286) (not b!3525991) (not bm!254690) (not bm!254709) (not b!3525657) (not b!3525579) (not d!1029072) (not b!3525970) (not d!1029010) (not b!3525253) (not b!3525509) (not b!3525989) (not d!1029278) (not b!3526055) (not d!1029054) (not b!3525246) b_and!251403 (not d!1029118) (not d!1029164) (not d!1029174) (not bm!254720) (not bm!254676) (not b_lambda!103071) (not d!1029062) (not b!3525487) (not d!1029270) (not b!3525486) (not d!1029186) (not b!3525758) (not d!1029300) b_and!251393 (not b!3525948) (not b!3525485) (not b!3525488) (not b!3525216) (not b!3525993) (not d!1029000) (not b_next!91541) (not b!3525156) (not d!1028976) (not d!1029038) (not b!3525242) (not b!3525635) (not d!1029140) (not b!3525679) (not d!1028960) (not d!1029202) (not b!3525312) (not b!3525641) (not b!3525678) (not b!3525504) (not d!1028950) (not b!3525340) (not b!3526016) (not d!1028978) (not d!1028980) (not d!1029026) (not d!1029156) (not d!1029114) (not b!3525338) (not b!3526044) (not b_lambda!103069) (not d!1029308) (not d!1029126) (not d!1029290) (not b!3525454) (not b!3525247) (not b!3525586) (not b!3525256) (not b!3525963) (not b!3525145) (not d!1028918) (not b!3525209) (not d!1029060) (not b_next!91537) (not d!1029310) (not b!3526033) (not b!3525153) (not d!1028986) (not b_lambda!103067) (not d!1029076) (not d!1029154) (not bm!254678) (not b!3525337) (not b!3526043) (not b!3525971) (not b!3525215) (not b_next!91543) (not b!3526053) (not b!3525175) (not b!3525316) (not tb!197237) (not b!3526027) (not b!3525701) (not b!3525632) (not b!3525314) (not d!1029058) b_and!251399 (not b!3525998) (not b!3525676) (not d!1029282) (not b!3525528) (not b!3525582) (not b!3525985) (not b!3525664) (not b!3526054) (not b!3525244) (not b!3525771) (not d!1029090) (not b!3525434) (not b_lambda!103063) (not b!3525630) (not b!3525585) tp_is_empty!17621 (not b!3526052) (not b!3525980) (not b!3525581) (not d!1029162) (not b!3525245) (not b!3525661) (not b!3525747) (not d!1029288) (not b!3525558) (not b_lambda!103061) (not d!1028926) (not d!1029014) (not d!1029056) (not b_next!91547) (not tb!197243) (not b!3525557) (not b!3525530) (not d!1029302) (not d!1029298) (not b_next!91563) (not d!1029272) (not b!3526002) (not d!1029030) (not b!3525631) (not b!3525551) (not b!3525483) (not bm!254710) (not b!3525950) (not b!3525583) (not b!3525181) (not b!3525692) (not d!1029294) (not b!3525655) (not b!3526050) (not d!1029190) (not b!3525943) (not b!3525172) (not b!3525995) (not b!3525684) (not b_lambda!103081) (not b!3526029) (not b!3525702) (not d!1029032) (not bm!254721) (not tb!197219) (not bm!254708) (not d!1029148) (not b!3526058) (not b!3526014) (not b!3525966) (not b!3525638) (not b!3525584) (not bm!254722) (not b!3525184) (not b!3525659) (not b!3525252) b_and!251405 (not b!3525260) (not tb!197249) b_and!251397 (not bs!565701) (not b_next!91545) (not d!1029102) (not b!3525634) (not b!3525432) (not b!3525949) (not b!3525447) (not b!3525640) (not b!3525996) (not b!3525587) (not b!3525693) (not d!1028958) (not d!1029066) (not b!3525947) (not b!3525572) (not b!3525662) (not b!3525243) (not b!3525984) (not b!3525482) b_and!251337 b_and!251395 (not d!1029152) (not d!1029296) (not b!3525552) (not b!3525510) (not b!3525176) (not b!3525675) (not b!3526032) (not d!1028972) (not bm!254719) (not b!3525704) (not b!3525532) (not d!1029280) (not d!1029084) (not b!3525670))
(check-sat b_and!251339 (not b_next!91561) (not b_next!91557) (not b_next!91559) b_and!251403 (not b_next!91537) (not b_next!91543) b_and!251399 (not b_next!91547) (not b_next!91563) b_and!251341 (not b_next!91539) b_and!251401 b_and!251393 (not b_next!91541) b_and!251405 b_and!251397 (not b_next!91545) b_and!251337 b_and!251395)
