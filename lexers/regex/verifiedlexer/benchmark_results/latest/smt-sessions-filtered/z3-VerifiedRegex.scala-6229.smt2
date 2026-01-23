; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!302622 () Bool)

(assert start!302622)

(declare-fun b!3221497 () Bool)

(declare-fun b_free!85665 () Bool)

(declare-fun b_next!86369 () Bool)

(assert (=> b!3221497 (= b_free!85665 (not b_next!86369))))

(declare-fun tp!1014894 () Bool)

(declare-fun b_and!215367 () Bool)

(assert (=> b!3221497 (= tp!1014894 b_and!215367)))

(declare-fun b_free!85667 () Bool)

(declare-fun b_next!86371 () Bool)

(assert (=> b!3221497 (= b_free!85667 (not b_next!86371))))

(declare-fun tp!1014896 () Bool)

(declare-fun b_and!215369 () Bool)

(assert (=> b!3221497 (= tp!1014896 b_and!215369)))

(declare-fun b!3221490 () Bool)

(declare-fun b_free!85669 () Bool)

(declare-fun b_next!86373 () Bool)

(assert (=> b!3221490 (= b_free!85669 (not b_next!86373))))

(declare-fun tp!1014891 () Bool)

(declare-fun b_and!215371 () Bool)

(assert (=> b!3221490 (= tp!1014891 b_and!215371)))

(declare-fun b_free!85671 () Bool)

(declare-fun b_next!86375 () Bool)

(assert (=> b!3221490 (= b_free!85671 (not b_next!86375))))

(declare-fun tp!1014884 () Bool)

(declare-fun b_and!215373 () Bool)

(assert (=> b!3221490 (= tp!1014884 b_and!215373)))

(declare-fun b!3221467 () Bool)

(declare-fun b_free!85673 () Bool)

(declare-fun b_next!86377 () Bool)

(assert (=> b!3221467 (= b_free!85673 (not b_next!86377))))

(declare-fun tp!1014887 () Bool)

(declare-fun b_and!215375 () Bool)

(assert (=> b!3221467 (= tp!1014887 b_and!215375)))

(declare-fun b_free!85675 () Bool)

(declare-fun b_next!86379 () Bool)

(assert (=> b!3221467 (= b_free!85675 (not b_next!86379))))

(declare-fun tp!1014890 () Bool)

(declare-fun b_and!215377 () Bool)

(assert (=> b!3221467 (= tp!1014890 b_and!215377)))

(declare-fun bs!542611 () Bool)

(declare-fun b!3221486 () Bool)

(declare-fun b!3221493 () Bool)

(assert (= bs!542611 (and b!3221486 b!3221493)))

(declare-fun lambda!117795 () Int)

(declare-fun lambda!117794 () Int)

(assert (=> bs!542611 (not (= lambda!117795 lambda!117794))))

(declare-fun b!3221522 () Bool)

(declare-fun e!2008736 () Bool)

(assert (=> b!3221522 (= e!2008736 true)))

(declare-fun b!3221521 () Bool)

(declare-fun e!2008735 () Bool)

(assert (=> b!3221521 (= e!2008735 e!2008736)))

(declare-fun b!3221520 () Bool)

(declare-fun e!2008734 () Bool)

(assert (=> b!3221520 (= e!2008734 e!2008735)))

(assert (=> b!3221486 e!2008734))

(assert (= b!3221521 b!3221522))

(assert (= b!3221520 b!3221521))

(declare-datatypes ((C!20180 0))(
  ( (C!20181 (val!12138 Int)) )
))
(declare-datatypes ((Regex!9997 0))(
  ( (ElementMatch!9997 (c!541692 C!20180)) (Concat!15465 (regOne!20506 Regex!9997) (regTwo!20506 Regex!9997)) (EmptyExpr!9997) (Star!9997 (reg!10326 Regex!9997)) (EmptyLang!9997) (Union!9997 (regOne!20507 Regex!9997) (regTwo!20507 Regex!9997)) )
))
(declare-datatypes ((List!36362 0))(
  ( (Nil!36238) (Cons!36238 (h!41658 (_ BitVec 16)) (t!240523 List!36362)) )
))
(declare-datatypes ((TokenValue!5468 0))(
  ( (FloatLiteralValue!10936 (text!38721 List!36362)) (TokenValueExt!5467 (__x!23153 Int)) (Broken!27340 (value!169717 List!36362)) (Object!5591) (End!5468) (Def!5468) (Underscore!5468) (Match!5468) (Else!5468) (Error!5468) (Case!5468) (If!5468) (Extends!5468) (Abstract!5468) (Class!5468) (Val!5468) (DelimiterValue!10936 (del!5528 List!36362)) (KeywordValue!5474 (value!169718 List!36362)) (CommentValue!10936 (value!169719 List!36362)) (WhitespaceValue!10936 (value!169720 List!36362)) (IndentationValue!5468 (value!169721 List!36362)) (String!40673) (Int32!5468) (Broken!27341 (value!169722 List!36362)) (Boolean!5469) (Unit!50801) (OperatorValue!5471 (op!5528 List!36362)) (IdentifierValue!10936 (value!169723 List!36362)) (IdentifierValue!10937 (value!169724 List!36362)) (WhitespaceValue!10937 (value!169725 List!36362)) (True!10936) (False!10936) (Broken!27342 (value!169726 List!36362)) (Broken!27343 (value!169727 List!36362)) (True!10937) (RightBrace!5468) (RightBracket!5468) (Colon!5468) (Null!5468) (Comma!5468) (LeftBracket!5468) (False!10937) (LeftBrace!5468) (ImaginaryLiteralValue!5468 (text!38722 List!36362)) (StringLiteralValue!16404 (value!169728 List!36362)) (EOFValue!5468 (value!169729 List!36362)) (IdentValue!5468 (value!169730 List!36362)) (DelimiterValue!10937 (value!169731 List!36362)) (DedentValue!5468 (value!169732 List!36362)) (NewLineValue!5468 (value!169733 List!36362)) (IntegerValue!16404 (value!169734 (_ BitVec 32)) (text!38723 List!36362)) (IntegerValue!16405 (value!169735 Int) (text!38724 List!36362)) (Times!5468) (Or!5468) (Equal!5468) (Minus!5468) (Broken!27344 (value!169736 List!36362)) (And!5468) (Div!5468) (LessEqual!5468) (Mod!5468) (Concat!15466) (Not!5468) (Plus!5468) (SpaceValue!5468 (value!169737 List!36362)) (IntegerValue!16406 (value!169738 Int) (text!38725 List!36362)) (StringLiteralValue!16405 (text!38726 List!36362)) (FloatLiteralValue!10937 (text!38727 List!36362)) (BytesLiteralValue!5468 (value!169739 List!36362)) (CommentValue!10937 (value!169740 List!36362)) (StringLiteralValue!16406 (value!169741 List!36362)) (ErrorTokenValue!5468 (msg!5529 List!36362)) )
))
(declare-datatypes ((List!36363 0))(
  ( (Nil!36239) (Cons!36239 (h!41659 C!20180) (t!240524 List!36363)) )
))
(declare-datatypes ((IArray!21707 0))(
  ( (IArray!21708 (innerList!10911 List!36363)) )
))
(declare-datatypes ((Conc!10851 0))(
  ( (Node!10851 (left!28196 Conc!10851) (right!28526 Conc!10851) (csize!21932 Int) (cheight!11062 Int)) (Leaf!17081 (xs!13969 IArray!21707) (csize!21933 Int)) (Empty!10851) )
))
(declare-datatypes ((BalanceConc!21316 0))(
  ( (BalanceConc!21317 (c!541693 Conc!10851)) )
))
(declare-datatypes ((String!40674 0))(
  ( (String!40675 (value!169742 String)) )
))
(declare-datatypes ((TokenValueInjection!10364 0))(
  ( (TokenValueInjection!10365 (toValue!7334 Int) (toChars!7193 Int)) )
))
(declare-datatypes ((Rule!10276 0))(
  ( (Rule!10277 (regex!5238 Regex!9997) (tag!5770 String!40674) (isSeparator!5238 Bool) (transformation!5238 TokenValueInjection!10364)) )
))
(declare-datatypes ((List!36364 0))(
  ( (Nil!36240) (Cons!36240 (h!41660 Rule!10276) (t!240525 List!36364)) )
))
(declare-fun rules!2135 () List!36364)

(get-info :version)

(assert (= (and b!3221486 ((_ is Cons!36240) rules!2135)) b!3221520))

(declare-fun order!18581 () Int)

(declare-fun order!18583 () Int)

(declare-fun dynLambda!14679 (Int Int) Int)

(declare-fun dynLambda!14680 (Int Int) Int)

(assert (=> b!3221522 (< (dynLambda!14679 order!18581 (toValue!7334 (transformation!5238 (h!41660 rules!2135)))) (dynLambda!14680 order!18583 lambda!117795))))

(declare-fun order!18585 () Int)

(declare-fun dynLambda!14681 (Int Int) Int)

(assert (=> b!3221522 (< (dynLambda!14681 order!18585 (toChars!7193 (transformation!5238 (h!41660 rules!2135)))) (dynLambda!14680 order!18583 lambda!117795))))

(assert (=> b!3221486 true))

(declare-fun e!2008725 () Bool)

(assert (=> b!3221467 (= e!2008725 (and tp!1014887 tp!1014890))))

(declare-fun b!3221468 () Bool)

(declare-fun e!2008709 () Bool)

(declare-fun e!2008718 () Bool)

(assert (=> b!3221468 (= e!2008709 (not e!2008718))))

(declare-fun res!1311597 () Bool)

(assert (=> b!3221468 (=> res!1311597 e!2008718)))

(declare-fun lt!1091516 () List!36363)

(declare-fun lt!1091505 () List!36363)

(assert (=> b!3221468 (= res!1311597 (not (= lt!1091516 lt!1091505)))))

(declare-datatypes ((LexerInterface!4827 0))(
  ( (LexerInterfaceExt!4824 (__x!23154 Int)) (Lexer!4825) )
))
(declare-fun thiss!18206 () LexerInterface!4827)

(declare-datatypes ((Token!9842 0))(
  ( (Token!9843 (value!169743 TokenValue!5468) (rule!7696 Rule!10276) (size!27325 Int) (originalCharacters!5952 List!36363)) )
))
(declare-datatypes ((List!36365 0))(
  ( (Nil!36241) (Cons!36241 (h!41661 Token!9842) (t!240526 List!36365)) )
))
(declare-fun tokens!494 () List!36365)

(declare-fun printList!1377 (LexerInterface!4827 List!36365) List!36363)

(assert (=> b!3221468 (= lt!1091505 (printList!1377 thiss!18206 (Cons!36241 (h!41661 tokens!494) Nil!36241)))))

(declare-fun lt!1091492 () BalanceConc!21316)

(declare-fun list!12903 (BalanceConc!21316) List!36363)

(assert (=> b!3221468 (= lt!1091516 (list!12903 lt!1091492))))

(declare-datatypes ((IArray!21709 0))(
  ( (IArray!21710 (innerList!10912 List!36365)) )
))
(declare-datatypes ((Conc!10852 0))(
  ( (Node!10852 (left!28197 Conc!10852) (right!28527 Conc!10852) (csize!21934 Int) (cheight!11063 Int)) (Leaf!17082 (xs!13970 IArray!21709) (csize!21935 Int)) (Empty!10852) )
))
(declare-datatypes ((BalanceConc!21318 0))(
  ( (BalanceConc!21319 (c!541694 Conc!10852)) )
))
(declare-fun lt!1091486 () BalanceConc!21318)

(declare-fun printTailRec!1324 (LexerInterface!4827 BalanceConc!21318 Int BalanceConc!21316) BalanceConc!21316)

(assert (=> b!3221468 (= lt!1091492 (printTailRec!1324 thiss!18206 lt!1091486 0 (BalanceConc!21317 Empty!10851)))))

(declare-fun print!1892 (LexerInterface!4827 BalanceConc!21318) BalanceConc!21316)

(assert (=> b!3221468 (= lt!1091492 (print!1892 thiss!18206 lt!1091486))))

(declare-fun singletonSeq!2334 (Token!9842) BalanceConc!21318)

(assert (=> b!3221468 (= lt!1091486 (singletonSeq!2334 (h!41661 tokens!494)))))

(declare-fun e!2008699 () Bool)

(declare-fun e!2008727 () Bool)

(declare-fun tp!1014889 () Bool)

(declare-fun b!3221469 () Bool)

(declare-fun inv!49113 (Token!9842) Bool)

(assert (=> b!3221469 (= e!2008727 (and (inv!49113 (h!41661 tokens!494)) e!2008699 tp!1014889))))

(declare-fun b!3221470 () Bool)

(declare-fun res!1311598 () Bool)

(assert (=> b!3221470 (=> (not res!1311598) (not e!2008709))))

(declare-fun rulesProduceEachTokenIndividually!1278 (LexerInterface!4827 List!36364 BalanceConc!21318) Bool)

(declare-fun seqFromList!3547 (List!36365) BalanceConc!21318)

(assert (=> b!3221470 (= res!1311598 (rulesProduceEachTokenIndividually!1278 thiss!18206 rules!2135 (seqFromList!3547 tokens!494)))))

(declare-fun b!3221471 () Bool)

(declare-datatypes ((Unit!50802 0))(
  ( (Unit!50803) )
))
(declare-fun e!2008700 () Unit!50802)

(declare-fun Unit!50804 () Unit!50802)

(assert (=> b!3221471 (= e!2008700 Unit!50804)))

(declare-fun b!3221472 () Bool)

(declare-fun res!1311595 () Bool)

(declare-fun e!2008707 () Bool)

(assert (=> b!3221472 (=> res!1311595 e!2008707)))

(declare-fun rulesProduceIndividualToken!2319 (LexerInterface!4827 List!36364 Token!9842) Bool)

(assert (=> b!3221472 (= res!1311595 (not (rulesProduceIndividualToken!2319 thiss!18206 rules!2135 (h!41661 tokens!494))))))

(declare-fun b!3221473 () Bool)

(declare-fun res!1311609 () Bool)

(assert (=> b!3221473 (=> (not res!1311609) (not e!2008709))))

(declare-fun separatorToken!241 () Token!9842)

(assert (=> b!3221473 (= res!1311609 (isSeparator!5238 (rule!7696 separatorToken!241)))))

(declare-fun b!3221474 () Bool)

(declare-fun e!2008706 () Bool)

(declare-fun forall!7420 (List!36365 Int) Bool)

(assert (=> b!3221474 (= e!2008706 (forall!7420 (t!240526 tokens!494) lambda!117794))))

(declare-fun b!3221475 () Bool)

(declare-fun res!1311594 () Bool)

(declare-fun e!2008712 () Bool)

(assert (=> b!3221475 (=> res!1311594 e!2008712)))

(declare-datatypes ((tuple2!35666 0))(
  ( (tuple2!35667 (_1!20967 BalanceConc!21318) (_2!20967 BalanceConc!21316)) )
))
(declare-fun lt!1091513 () tuple2!35666)

(declare-fun apply!8243 (BalanceConc!21318 Int) Token!9842)

(assert (=> b!3221475 (= res!1311594 (not (= (apply!8243 (_1!20967 lt!1091513) 0) (h!41661 (t!240526 tokens!494)))))))

(declare-fun b!3221476 () Bool)

(declare-fun e!2008710 () Bool)

(declare-fun e!2008693 () Bool)

(declare-fun tp!1014885 () Bool)

(assert (=> b!3221476 (= e!2008710 (and e!2008693 tp!1014885))))

(declare-fun b!3221477 () Bool)

(declare-fun e!2008697 () Bool)

(declare-fun e!2008692 () Bool)

(assert (=> b!3221477 (= e!2008697 e!2008692)))

(declare-fun res!1311599 () Bool)

(assert (=> b!3221477 (=> (not res!1311599) (not e!2008692))))

(declare-fun lt!1091521 () Rule!10276)

(declare-fun lt!1091520 () List!36363)

(declare-fun matchR!4631 (Regex!9997 List!36363) Bool)

(assert (=> b!3221477 (= res!1311599 (matchR!4631 (regex!5238 lt!1091521) lt!1091520))))

(declare-datatypes ((Option!7181 0))(
  ( (None!7180) (Some!7180 (v!35760 Rule!10276)) )
))
(declare-fun lt!1091502 () Option!7181)

(declare-fun get!11548 (Option!7181) Rule!10276)

(assert (=> b!3221477 (= lt!1091521 (get!11548 lt!1091502))))

(declare-fun b!3221478 () Bool)

(declare-fun e!2008704 () Bool)

(declare-fun lt!1091530 () Rule!10276)

(assert (=> b!3221478 (= e!2008704 (= (rule!7696 (h!41661 (t!240526 tokens!494))) lt!1091530))))

(declare-fun b!3221479 () Bool)

(declare-fun e!2008694 () Bool)

(declare-fun e!2008705 () Bool)

(assert (=> b!3221479 (= e!2008694 e!2008705)))

(declare-fun res!1311611 () Bool)

(assert (=> b!3221479 (=> (not res!1311611) (not e!2008705))))

(declare-fun lt!1091490 () Rule!10276)

(declare-fun lt!1091517 () List!36363)

(assert (=> b!3221479 (= res!1311611 (matchR!4631 (regex!5238 lt!1091490) lt!1091517))))

(declare-fun lt!1091515 () Option!7181)

(assert (=> b!3221479 (= lt!1091490 (get!11548 lt!1091515))))

(declare-fun b!3221480 () Bool)

(declare-fun res!1311615 () Bool)

(assert (=> b!3221480 (=> (not res!1311615) (not e!2008709))))

(declare-fun sepAndNonSepRulesDisjointChars!1432 (List!36364 List!36364) Bool)

(assert (=> b!3221480 (= res!1311615 (sepAndNonSepRulesDisjointChars!1432 rules!2135 rules!2135))))

(declare-fun b!3221481 () Bool)

(assert (=> b!3221481 (= e!2008705 (= (rule!7696 separatorToken!241) lt!1091490))))

(declare-fun b!3221482 () Bool)

(declare-fun e!2008716 () Bool)

(assert (=> b!3221482 (= e!2008716 e!2008704)))

(declare-fun res!1311616 () Bool)

(assert (=> b!3221482 (=> (not res!1311616) (not e!2008704))))

(declare-fun lt!1091531 () List!36363)

(assert (=> b!3221482 (= res!1311616 (matchR!4631 (regex!5238 lt!1091530) lt!1091531))))

(declare-fun lt!1091524 () Option!7181)

(assert (=> b!3221482 (= lt!1091530 (get!11548 lt!1091524))))

(declare-fun b!3221483 () Bool)

(declare-fun e!2008711 () Bool)

(declare-fun e!2008723 () Bool)

(assert (=> b!3221483 (= e!2008711 e!2008723)))

(declare-fun res!1311602 () Bool)

(assert (=> b!3221483 (=> res!1311602 e!2008723)))

(declare-fun lt!1091504 () List!36363)

(declare-fun lt!1091484 () List!36363)

(assert (=> b!3221483 (= res!1311602 (not (= lt!1091504 lt!1091484)))))

(declare-fun lt!1091512 () List!36363)

(declare-fun ++!8712 (List!36363 List!36363) List!36363)

(assert (=> b!3221483 (= lt!1091484 (++!8712 (++!8712 lt!1091520 lt!1091517) lt!1091512))))

(declare-fun b!3221484 () Bool)

(declare-fun res!1311620 () Bool)

(assert (=> b!3221484 (=> (not res!1311620) (not e!2008709))))

(declare-fun isEmpty!20341 (List!36364) Bool)

(assert (=> b!3221484 (= res!1311620 (not (isEmpty!20341 rules!2135)))))

(declare-fun b!3221485 () Bool)

(declare-fun e!2008695 () Unit!50802)

(declare-fun Unit!50805 () Unit!50802)

(assert (=> b!3221485 (= e!2008695 Unit!50805)))

(declare-fun lt!1091509 () C!20180)

(declare-fun lt!1091519 () Unit!50802)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!402 (Regex!9997 List!36363 C!20180) Unit!50802)

(assert (=> b!3221485 (= lt!1091519 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!402 (regex!5238 (rule!7696 separatorToken!241)) lt!1091517 lt!1091509))))

(declare-fun res!1311601 () Bool)

(assert (=> b!3221485 (= res!1311601 (not (matchR!4631 (regex!5238 (rule!7696 separatorToken!241)) lt!1091517)))))

(declare-fun e!2008721 () Bool)

(assert (=> b!3221485 (=> (not res!1311601) (not e!2008721))))

(assert (=> b!3221485 e!2008721))

(declare-fun e!2008708 () Bool)

(assert (=> b!3221486 (= e!2008708 e!2008706)))

(declare-fun res!1311624 () Bool)

(assert (=> b!3221486 (=> res!1311624 e!2008706)))

(assert (=> b!3221486 (= res!1311624 (not (rulesProduceEachTokenIndividually!1278 thiss!18206 rules!2135 (seqFromList!3547 (t!240526 tokens!494)))))))

(declare-fun lt!1091495 () List!36363)

(declare-datatypes ((tuple2!35668 0))(
  ( (tuple2!35669 (_1!20968 Token!9842) (_2!20968 List!36363)) )
))
(declare-datatypes ((Option!7182 0))(
  ( (None!7181) (Some!7181 (v!35761 tuple2!35668)) )
))
(declare-fun maxPrefix!2469 (LexerInterface!4827 List!36364 List!36363) Option!7182)

(assert (=> b!3221486 (= (maxPrefix!2469 thiss!18206 rules!2135 lt!1091495) (Some!7181 (tuple2!35669 separatorToken!241 lt!1091512)))))

(declare-fun lt!1091526 () Unit!50802)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!162 (LexerInterface!4827 List!36364 Token!9842 Rule!10276 List!36363 Rule!10276) Unit!50802)

(assert (=> b!3221486 (= lt!1091526 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!162 thiss!18206 rules!2135 separatorToken!241 (rule!7696 separatorToken!241) lt!1091512 (rule!7696 (h!41661 (t!240526 tokens!494)))))))

(declare-fun lt!1091500 () List!36363)

(declare-fun lt!1091529 () C!20180)

(declare-fun contains!6497 (List!36363 C!20180) Bool)

(assert (=> b!3221486 (not (contains!6497 lt!1091500 lt!1091529))))

(declare-fun lt!1091488 () Unit!50802)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!146 (LexerInterface!4827 List!36364 List!36364 Rule!10276 Rule!10276 C!20180) Unit!50802)

(assert (=> b!3221486 (= lt!1091488 (lemmaSepRuleNotContainsCharContainedInANonSepRule!146 thiss!18206 rules!2135 rules!2135 (rule!7696 (h!41661 (t!240526 tokens!494))) (rule!7696 separatorToken!241) lt!1091529))))

(declare-fun lt!1091508 () Unit!50802)

(assert (=> b!3221486 (= lt!1091508 e!2008700)))

(declare-fun c!541690 () Bool)

(declare-fun usedCharacters!554 (Regex!9997) List!36363)

(assert (=> b!3221486 (= c!541690 (not (contains!6497 (usedCharacters!554 (regex!5238 (rule!7696 (h!41661 (t!240526 tokens!494))))) lt!1091529)))))

(declare-fun head!7063 (List!36363) C!20180)

(assert (=> b!3221486 (= lt!1091529 (head!7063 lt!1091531))))

(declare-fun maxPrefixOneRule!1606 (LexerInterface!4827 Rule!10276 List!36363) Option!7182)

(declare-fun apply!8244 (TokenValueInjection!10364 BalanceConc!21316) TokenValue!5468)

(declare-fun seqFromList!3548 (List!36363) BalanceConc!21316)

(declare-fun size!27326 (List!36363) Int)

(assert (=> b!3221486 (= (maxPrefixOneRule!1606 thiss!18206 (rule!7696 (h!41661 (t!240526 tokens!494))) lt!1091531) (Some!7181 (tuple2!35669 (Token!9843 (apply!8244 (transformation!5238 (rule!7696 (h!41661 (t!240526 tokens!494)))) (seqFromList!3548 lt!1091531)) (rule!7696 (h!41661 (t!240526 tokens!494))) (size!27326 lt!1091531) lt!1091531) Nil!36239)))))

(declare-fun lt!1091506 () Unit!50802)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!719 (LexerInterface!4827 List!36364 List!36363 List!36363 List!36363 Rule!10276) Unit!50802)

(assert (=> b!3221486 (= lt!1091506 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!719 thiss!18206 rules!2135 lt!1091531 lt!1091531 Nil!36239 (rule!7696 (h!41661 (t!240526 tokens!494)))))))

(assert (=> b!3221486 e!2008716))

(declare-fun res!1311614 () Bool)

(assert (=> b!3221486 (=> (not res!1311614) (not e!2008716))))

(declare-fun isDefined!5576 (Option!7181) Bool)

(assert (=> b!3221486 (= res!1311614 (isDefined!5576 lt!1091524))))

(declare-fun getRuleFromTag!943 (LexerInterface!4827 List!36364 String!40674) Option!7181)

(assert (=> b!3221486 (= lt!1091524 (getRuleFromTag!943 thiss!18206 rules!2135 (tag!5770 (rule!7696 (h!41661 (t!240526 tokens!494))))))))

(declare-fun lt!1091485 () Unit!50802)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!943 (LexerInterface!4827 List!36364 List!36363 Token!9842) Unit!50802)

(assert (=> b!3221486 (= lt!1091485 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!943 thiss!18206 rules!2135 lt!1091531 (h!41661 (t!240526 tokens!494))))))

(declare-fun lt!1091493 () Bool)

(assert (=> b!3221486 lt!1091493))

(declare-fun lt!1091511 () Unit!50802)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!866 (LexerInterface!4827 List!36364 List!36365 Token!9842) Unit!50802)

(assert (=> b!3221486 (= lt!1091511 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!866 thiss!18206 rules!2135 tokens!494 (h!41661 (t!240526 tokens!494))))))

(declare-fun lt!1091510 () List!36363)

(assert (=> b!3221486 (= (maxPrefix!2469 thiss!18206 rules!2135 lt!1091510) (Some!7181 (tuple2!35669 (h!41661 tokens!494) lt!1091495)))))

(declare-fun lt!1091496 () Unit!50802)

(assert (=> b!3221486 (= lt!1091496 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!162 thiss!18206 rules!2135 (h!41661 tokens!494) (rule!7696 (h!41661 tokens!494)) lt!1091495 (rule!7696 separatorToken!241)))))

(assert (=> b!3221486 (not (contains!6497 (usedCharacters!554 (regex!5238 (rule!7696 (h!41661 tokens!494)))) lt!1091509))))

(declare-fun lt!1091501 () Unit!50802)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!162 (LexerInterface!4827 List!36364 List!36364 Rule!10276 Rule!10276 C!20180) Unit!50802)

(assert (=> b!3221486 (= lt!1091501 (lemmaNonSepRuleNotContainsCharContainedInASepRule!162 thiss!18206 rules!2135 rules!2135 (rule!7696 (h!41661 tokens!494)) (rule!7696 separatorToken!241) lt!1091509))))

(declare-fun lt!1091497 () Unit!50802)

(declare-fun forallContained!1209 (List!36365 Int Token!9842) Unit!50802)

(assert (=> b!3221486 (= lt!1091497 (forallContained!1209 tokens!494 lambda!117795 (h!41661 (t!240526 tokens!494))))))

(declare-fun lt!1091525 () Bool)

(assert (=> b!3221486 (= lt!1091493 (not lt!1091525))))

(assert (=> b!3221486 (= lt!1091493 (rulesProduceIndividualToken!2319 thiss!18206 rules!2135 (h!41661 (t!240526 tokens!494))))))

(assert (=> b!3221486 (= lt!1091525 e!2008712)))

(declare-fun res!1311623 () Bool)

(assert (=> b!3221486 (=> res!1311623 e!2008712)))

(declare-fun size!27327 (BalanceConc!21318) Int)

(assert (=> b!3221486 (= res!1311623 (not (= (size!27327 (_1!20967 lt!1091513)) 1)))))

(declare-fun lt!1091532 () BalanceConc!21316)

(declare-fun lex!2157 (LexerInterface!4827 List!36364 BalanceConc!21316) tuple2!35666)

(assert (=> b!3221486 (= lt!1091513 (lex!2157 thiss!18206 rules!2135 lt!1091532))))

(declare-fun lt!1091503 () BalanceConc!21318)

(assert (=> b!3221486 (= lt!1091532 (printTailRec!1324 thiss!18206 lt!1091503 0 (BalanceConc!21317 Empty!10851)))))

(assert (=> b!3221486 (= lt!1091532 (print!1892 thiss!18206 lt!1091503))))

(assert (=> b!3221486 (= lt!1091503 (singletonSeq!2334 (h!41661 (t!240526 tokens!494))))))

(declare-fun e!2008726 () Bool)

(assert (=> b!3221486 e!2008726))

(declare-fun res!1311622 () Bool)

(assert (=> b!3221486 (=> (not res!1311622) (not e!2008726))))

(declare-fun lt!1091489 () tuple2!35666)

(assert (=> b!3221486 (= res!1311622 (= (size!27327 (_1!20967 lt!1091489)) 1))))

(declare-fun lt!1091498 () BalanceConc!21316)

(assert (=> b!3221486 (= lt!1091489 (lex!2157 thiss!18206 rules!2135 lt!1091498))))

(declare-fun lt!1091487 () BalanceConc!21318)

(assert (=> b!3221486 (= lt!1091498 (printTailRec!1324 thiss!18206 lt!1091487 0 (BalanceConc!21317 Empty!10851)))))

(assert (=> b!3221486 (= lt!1091498 (print!1892 thiss!18206 lt!1091487))))

(assert (=> b!3221486 (= lt!1091487 (singletonSeq!2334 separatorToken!241))))

(declare-fun lt!1091494 () Unit!50802)

(assert (=> b!3221486 (= lt!1091494 e!2008695)))

(declare-fun c!541691 () Bool)

(assert (=> b!3221486 (= c!541691 (not (contains!6497 lt!1091500 lt!1091509)))))

(assert (=> b!3221486 (= lt!1091509 (head!7063 lt!1091517))))

(assert (=> b!3221486 (= lt!1091500 (usedCharacters!554 (regex!5238 (rule!7696 separatorToken!241))))))

(assert (=> b!3221486 e!2008694))

(declare-fun res!1311605 () Bool)

(assert (=> b!3221486 (=> (not res!1311605) (not e!2008694))))

(assert (=> b!3221486 (= res!1311605 (isDefined!5576 lt!1091515))))

(assert (=> b!3221486 (= lt!1091515 (getRuleFromTag!943 thiss!18206 rules!2135 (tag!5770 (rule!7696 separatorToken!241))))))

(declare-fun lt!1091499 () Unit!50802)

(assert (=> b!3221486 (= lt!1091499 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!943 thiss!18206 rules!2135 lt!1091517 separatorToken!241))))

(declare-fun lt!1091518 () BalanceConc!21316)

(assert (=> b!3221486 (= (maxPrefixOneRule!1606 thiss!18206 (rule!7696 (h!41661 tokens!494)) lt!1091520) (Some!7181 (tuple2!35669 (Token!9843 (apply!8244 (transformation!5238 (rule!7696 (h!41661 tokens!494))) lt!1091518) (rule!7696 (h!41661 tokens!494)) (size!27326 lt!1091520) lt!1091520) Nil!36239)))))

(declare-fun lt!1091522 () Unit!50802)

(assert (=> b!3221486 (= lt!1091522 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!719 thiss!18206 rules!2135 lt!1091520 lt!1091520 Nil!36239 (rule!7696 (h!41661 tokens!494))))))

(assert (=> b!3221486 e!2008697))

(declare-fun res!1311608 () Bool)

(assert (=> b!3221486 (=> (not res!1311608) (not e!2008697))))

(assert (=> b!3221486 (= res!1311608 (isDefined!5576 lt!1091502))))

(assert (=> b!3221486 (= lt!1091502 (getRuleFromTag!943 thiss!18206 rules!2135 (tag!5770 (rule!7696 (h!41661 tokens!494)))))))

(declare-fun lt!1091523 () Unit!50802)

(assert (=> b!3221486 (= lt!1091523 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!943 thiss!18206 rules!2135 lt!1091520 (h!41661 tokens!494)))))

(declare-fun lt!1091491 () Unit!50802)

(assert (=> b!3221486 (= lt!1091491 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!866 thiss!18206 rules!2135 tokens!494 (h!41661 tokens!494)))))

(declare-fun b!3221487 () Bool)

(declare-fun isEmpty!20342 (BalanceConc!21316) Bool)

(assert (=> b!3221487 (= e!2008726 (isEmpty!20342 (_2!20967 lt!1091489)))))

(declare-fun b!3221488 () Bool)

(declare-fun res!1311596 () Bool)

(assert (=> b!3221488 (=> (not res!1311596) (not e!2008726))))

(assert (=> b!3221488 (= res!1311596 (= (apply!8243 (_1!20967 lt!1091489) 0) separatorToken!241))))

(declare-fun b!3221489 () Bool)

(declare-fun res!1311612 () Bool)

(assert (=> b!3221489 (=> (not res!1311612) (not e!2008709))))

(assert (=> b!3221489 (= res!1311612 (rulesProduceIndividualToken!2319 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun e!2008701 () Bool)

(assert (=> b!3221490 (= e!2008701 (and tp!1014891 tp!1014884))))

(declare-fun b!3221491 () Bool)

(assert (=> b!3221491 (= e!2008723 e!2008708)))

(declare-fun res!1311618 () Bool)

(assert (=> b!3221491 (=> res!1311618 e!2008708)))

(assert (=> b!3221491 (= res!1311618 (not (= lt!1091504 lt!1091510)))))

(assert (=> b!3221491 (= lt!1091484 lt!1091510)))

(assert (=> b!3221491 (= lt!1091510 (++!8712 lt!1091520 lt!1091495))))

(declare-fun lt!1091527 () Unit!50802)

(declare-fun lemmaConcatAssociativity!1766 (List!36363 List!36363 List!36363) Unit!50802)

(assert (=> b!3221491 (= lt!1091527 (lemmaConcatAssociativity!1766 lt!1091520 lt!1091517 lt!1091512))))

(declare-fun res!1311603 () Bool)

(assert (=> start!302622 (=> (not res!1311603) (not e!2008709))))

(assert (=> start!302622 (= res!1311603 ((_ is Lexer!4825) thiss!18206))))

(assert (=> start!302622 e!2008709))

(assert (=> start!302622 true))

(assert (=> start!302622 e!2008710))

(assert (=> start!302622 e!2008727))

(declare-fun e!2008702 () Bool)

(assert (=> start!302622 (and (inv!49113 separatorToken!241) e!2008702)))

(declare-fun b!3221492 () Bool)

(assert (=> b!3221492 (= e!2008718 e!2008707)))

(declare-fun res!1311606 () Bool)

(assert (=> b!3221492 (=> res!1311606 e!2008707)))

(assert (=> b!3221492 (= res!1311606 (or (not (= lt!1091505 lt!1091520)) (not (= lt!1091516 lt!1091520))))))

(declare-fun charsOf!3254 (Token!9842) BalanceConc!21316)

(assert (=> b!3221492 (= lt!1091520 (list!12903 (charsOf!3254 (h!41661 tokens!494))))))

(declare-fun res!1311613 () Bool)

(assert (=> b!3221493 (=> (not res!1311613) (not e!2008709))))

(assert (=> b!3221493 (= res!1311613 (forall!7420 tokens!494 lambda!117794))))

(declare-fun b!3221494 () Bool)

(declare-fun tp!1014893 () Bool)

(declare-fun inv!49110 (String!40674) Bool)

(declare-fun inv!49114 (TokenValueInjection!10364) Bool)

(assert (=> b!3221494 (= e!2008693 (and tp!1014893 (inv!49110 (tag!5770 (h!41660 rules!2135))) (inv!49114 (transformation!5238 (h!41660 rules!2135))) e!2008701))))

(declare-fun e!2008696 () Bool)

(declare-fun e!2008703 () Bool)

(declare-fun b!3221495 () Bool)

(declare-fun tp!1014886 () Bool)

(assert (=> b!3221495 (= e!2008703 (and tp!1014886 (inv!49110 (tag!5770 (rule!7696 (h!41661 tokens!494)))) (inv!49114 (transformation!5238 (rule!7696 (h!41661 tokens!494)))) e!2008696))))

(declare-fun b!3221496 () Bool)

(declare-fun res!1311600 () Bool)

(assert (=> b!3221496 (=> (not res!1311600) (not e!2008709))))

(assert (=> b!3221496 (= res!1311600 (and (not ((_ is Nil!36241) tokens!494)) (not ((_ is Nil!36241) (t!240526 tokens!494)))))))

(assert (=> b!3221497 (= e!2008696 (and tp!1014894 tp!1014896))))

(declare-fun b!3221498 () Bool)

(declare-fun Unit!50806 () Unit!50802)

(assert (=> b!3221498 (= e!2008700 Unit!50806)))

(declare-fun lt!1091507 () Unit!50802)

(assert (=> b!3221498 (= lt!1091507 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!402 (regex!5238 (rule!7696 (h!41661 (t!240526 tokens!494)))) lt!1091531 lt!1091529))))

(declare-fun res!1311607 () Bool)

(assert (=> b!3221498 (= res!1311607 (not (matchR!4631 (regex!5238 (rule!7696 (h!41661 (t!240526 tokens!494)))) lt!1091531)))))

(declare-fun e!2008717 () Bool)

(assert (=> b!3221498 (=> (not res!1311607) (not e!2008717))))

(assert (=> b!3221498 e!2008717))

(declare-fun tp!1014895 () Bool)

(declare-fun b!3221499 () Bool)

(declare-fun e!2008720 () Bool)

(declare-fun inv!21 (TokenValue!5468) Bool)

(assert (=> b!3221499 (= e!2008702 (and (inv!21 (value!169743 separatorToken!241)) e!2008720 tp!1014895))))

(declare-fun b!3221500 () Bool)

(declare-fun e!2008698 () Bool)

(declare-fun e!2008724 () Bool)

(assert (=> b!3221500 (= e!2008698 e!2008724)))

(declare-fun res!1311604 () Bool)

(assert (=> b!3221500 (=> res!1311604 e!2008724)))

(assert (=> b!3221500 (= res!1311604 (or (isSeparator!5238 (rule!7696 (h!41661 tokens!494))) (isSeparator!5238 (rule!7696 (h!41661 (t!240526 tokens!494))))))))

(declare-fun lt!1091528 () Unit!50802)

(assert (=> b!3221500 (= lt!1091528 (forallContained!1209 tokens!494 lambda!117794 (h!41661 (t!240526 tokens!494))))))

(declare-fun lt!1091514 () Unit!50802)

(assert (=> b!3221500 (= lt!1091514 (forallContained!1209 tokens!494 lambda!117794 (h!41661 tokens!494)))))

(declare-fun b!3221501 () Bool)

(assert (=> b!3221501 (= e!2008692 (= (rule!7696 (h!41661 tokens!494)) lt!1091521))))

(declare-fun b!3221502 () Bool)

(assert (=> b!3221502 (= e!2008721 false)))

(declare-fun b!3221503 () Bool)

(declare-fun tp!1014892 () Bool)

(assert (=> b!3221503 (= e!2008699 (and (inv!21 (value!169743 (h!41661 tokens!494))) e!2008703 tp!1014892))))

(declare-fun b!3221504 () Bool)

(declare-fun res!1311621 () Bool)

(assert (=> b!3221504 (=> (not res!1311621) (not e!2008709))))

(declare-fun rulesInvariant!4224 (LexerInterface!4827 List!36364) Bool)

(assert (=> b!3221504 (= res!1311621 (rulesInvariant!4224 thiss!18206 rules!2135))))

(declare-fun b!3221505 () Bool)

(declare-fun Unit!50807 () Unit!50802)

(assert (=> b!3221505 (= e!2008695 Unit!50807)))

(declare-fun b!3221506 () Bool)

(assert (=> b!3221506 (= e!2008724 e!2008711)))

(declare-fun res!1311617 () Bool)

(assert (=> b!3221506 (=> res!1311617 e!2008711)))

(declare-fun printWithSeparatorTokenList!172 (LexerInterface!4827 List!36365 Token!9842) List!36363)

(assert (=> b!3221506 (= res!1311617 (not (= lt!1091512 (++!8712 (++!8712 lt!1091531 lt!1091517) (printWithSeparatorTokenList!172 thiss!18206 (t!240526 (t!240526 tokens!494)) separatorToken!241)))))))

(assert (=> b!3221506 (= lt!1091531 (list!12903 (charsOf!3254 (h!41661 (t!240526 tokens!494)))))))

(assert (=> b!3221506 (= lt!1091495 (++!8712 lt!1091517 lt!1091512))))

(assert (=> b!3221506 (= lt!1091517 (list!12903 (charsOf!3254 separatorToken!241)))))

(assert (=> b!3221506 (= lt!1091512 (printWithSeparatorTokenList!172 thiss!18206 (t!240526 tokens!494) separatorToken!241))))

(assert (=> b!3221506 (= lt!1091504 (printWithSeparatorTokenList!172 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3221507 () Bool)

(declare-fun tp!1014888 () Bool)

(assert (=> b!3221507 (= e!2008720 (and tp!1014888 (inv!49110 (tag!5770 (rule!7696 separatorToken!241))) (inv!49114 (transformation!5238 (rule!7696 separatorToken!241))) e!2008725))))

(declare-fun b!3221508 () Bool)

(declare-fun res!1311610 () Bool)

(assert (=> b!3221508 (=> res!1311610 e!2008706)))

(assert (=> b!3221508 (= res!1311610 (not (forall!7420 (t!240526 tokens!494) lambda!117794)))))

(declare-fun b!3221509 () Bool)

(assert (=> b!3221509 (= e!2008717 false)))

(declare-fun b!3221510 () Bool)

(assert (=> b!3221510 (= e!2008707 e!2008698)))

(declare-fun res!1311619 () Bool)

(assert (=> b!3221510 (=> res!1311619 e!2008698)))

(declare-fun isEmpty!20343 (BalanceConc!21318) Bool)

(assert (=> b!3221510 (= res!1311619 (isEmpty!20343 (_1!20967 (lex!2157 thiss!18206 rules!2135 lt!1091518))))))

(assert (=> b!3221510 (= lt!1091518 (seqFromList!3548 lt!1091520))))

(declare-fun b!3221511 () Bool)

(assert (=> b!3221511 (= e!2008712 (not (isEmpty!20342 (_2!20967 lt!1091513))))))

(assert (= (and start!302622 res!1311603) b!3221484))

(assert (= (and b!3221484 res!1311620) b!3221504))

(assert (= (and b!3221504 res!1311621) b!3221470))

(assert (= (and b!3221470 res!1311598) b!3221489))

(assert (= (and b!3221489 res!1311612) b!3221473))

(assert (= (and b!3221473 res!1311609) b!3221493))

(assert (= (and b!3221493 res!1311613) b!3221480))

(assert (= (and b!3221480 res!1311615) b!3221496))

(assert (= (and b!3221496 res!1311600) b!3221468))

(assert (= (and b!3221468 (not res!1311597)) b!3221492))

(assert (= (and b!3221492 (not res!1311606)) b!3221472))

(assert (= (and b!3221472 (not res!1311595)) b!3221510))

(assert (= (and b!3221510 (not res!1311619)) b!3221500))

(assert (= (and b!3221500 (not res!1311604)) b!3221506))

(assert (= (and b!3221506 (not res!1311617)) b!3221483))

(assert (= (and b!3221483 (not res!1311602)) b!3221491))

(assert (= (and b!3221491 (not res!1311618)) b!3221486))

(assert (= (and b!3221486 res!1311608) b!3221477))

(assert (= (and b!3221477 res!1311599) b!3221501))

(assert (= (and b!3221486 res!1311605) b!3221479))

(assert (= (and b!3221479 res!1311611) b!3221481))

(assert (= (and b!3221486 c!541691) b!3221485))

(assert (= (and b!3221486 (not c!541691)) b!3221505))

(assert (= (and b!3221485 res!1311601) b!3221502))

(assert (= (and b!3221486 res!1311622) b!3221488))

(assert (= (and b!3221488 res!1311596) b!3221487))

(assert (= (and b!3221486 (not res!1311623)) b!3221475))

(assert (= (and b!3221475 (not res!1311594)) b!3221511))

(assert (= (and b!3221486 res!1311614) b!3221482))

(assert (= (and b!3221482 res!1311616) b!3221478))

(assert (= (and b!3221486 c!541690) b!3221498))

(assert (= (and b!3221486 (not c!541690)) b!3221471))

(assert (= (and b!3221498 res!1311607) b!3221509))

(assert (= (and b!3221486 (not res!1311624)) b!3221508))

(assert (= (and b!3221508 (not res!1311610)) b!3221474))

(assert (= b!3221494 b!3221490))

(assert (= b!3221476 b!3221494))

(assert (= (and start!302622 ((_ is Cons!36240) rules!2135)) b!3221476))

(assert (= b!3221495 b!3221497))

(assert (= b!3221503 b!3221495))

(assert (= b!3221469 b!3221503))

(assert (= (and start!302622 ((_ is Cons!36241) tokens!494)) b!3221469))

(assert (= b!3221507 b!3221467))

(assert (= b!3221499 b!3221507))

(assert (= start!302622 b!3221499))

(declare-fun m!3498335 () Bool)

(assert (=> b!3221503 m!3498335))

(declare-fun m!3498337 () Bool)

(assert (=> start!302622 m!3498337))

(declare-fun m!3498339 () Bool)

(assert (=> b!3221488 m!3498339))

(declare-fun m!3498341 () Bool)

(assert (=> b!3221480 m!3498341))

(declare-fun m!3498343 () Bool)

(assert (=> b!3221470 m!3498343))

(assert (=> b!3221470 m!3498343))

(declare-fun m!3498345 () Bool)

(assert (=> b!3221470 m!3498345))

(declare-fun m!3498347 () Bool)

(assert (=> b!3221487 m!3498347))

(declare-fun m!3498349 () Bool)

(assert (=> b!3221484 m!3498349))

(declare-fun m!3498351 () Bool)

(assert (=> b!3221472 m!3498351))

(declare-fun m!3498353 () Bool)

(assert (=> b!3221483 m!3498353))

(assert (=> b!3221483 m!3498353))

(declare-fun m!3498355 () Bool)

(assert (=> b!3221483 m!3498355))

(declare-fun m!3498357 () Bool)

(assert (=> b!3221499 m!3498357))

(declare-fun m!3498359 () Bool)

(assert (=> b!3221510 m!3498359))

(declare-fun m!3498361 () Bool)

(assert (=> b!3221510 m!3498361))

(declare-fun m!3498363 () Bool)

(assert (=> b!3221510 m!3498363))

(declare-fun m!3498365 () Bool)

(assert (=> b!3221479 m!3498365))

(declare-fun m!3498367 () Bool)

(assert (=> b!3221479 m!3498367))

(declare-fun m!3498369 () Bool)

(assert (=> b!3221511 m!3498369))

(declare-fun m!3498371 () Bool)

(assert (=> b!3221508 m!3498371))

(declare-fun m!3498373 () Bool)

(assert (=> b!3221506 m!3498373))

(declare-fun m!3498375 () Bool)

(assert (=> b!3221506 m!3498375))

(declare-fun m!3498377 () Bool)

(assert (=> b!3221506 m!3498377))

(declare-fun m!3498379 () Bool)

(assert (=> b!3221506 m!3498379))

(assert (=> b!3221506 m!3498373))

(declare-fun m!3498381 () Bool)

(assert (=> b!3221506 m!3498381))

(declare-fun m!3498383 () Bool)

(assert (=> b!3221506 m!3498383))

(declare-fun m!3498385 () Bool)

(assert (=> b!3221506 m!3498385))

(declare-fun m!3498387 () Bool)

(assert (=> b!3221506 m!3498387))

(assert (=> b!3221506 m!3498375))

(declare-fun m!3498389 () Bool)

(assert (=> b!3221506 m!3498389))

(assert (=> b!3221506 m!3498385))

(assert (=> b!3221506 m!3498387))

(declare-fun m!3498391 () Bool)

(assert (=> b!3221506 m!3498391))

(declare-fun m!3498393 () Bool)

(assert (=> b!3221469 m!3498393))

(declare-fun m!3498395 () Bool)

(assert (=> b!3221477 m!3498395))

(declare-fun m!3498397 () Bool)

(assert (=> b!3221477 m!3498397))

(declare-fun m!3498399 () Bool)

(assert (=> b!3221491 m!3498399))

(declare-fun m!3498401 () Bool)

(assert (=> b!3221491 m!3498401))

(declare-fun m!3498403 () Bool)

(assert (=> b!3221494 m!3498403))

(declare-fun m!3498405 () Bool)

(assert (=> b!3221494 m!3498405))

(declare-fun m!3498407 () Bool)

(assert (=> b!3221475 m!3498407))

(assert (=> b!3221474 m!3498371))

(declare-fun m!3498409 () Bool)

(assert (=> b!3221504 m!3498409))

(declare-fun m!3498411 () Bool)

(assert (=> b!3221495 m!3498411))

(declare-fun m!3498413 () Bool)

(assert (=> b!3221495 m!3498413))

(declare-fun m!3498415 () Bool)

(assert (=> b!3221498 m!3498415))

(declare-fun m!3498417 () Bool)

(assert (=> b!3221498 m!3498417))

(declare-fun m!3498419 () Bool)

(assert (=> b!3221492 m!3498419))

(assert (=> b!3221492 m!3498419))

(declare-fun m!3498421 () Bool)

(assert (=> b!3221492 m!3498421))

(declare-fun m!3498423 () Bool)

(assert (=> b!3221485 m!3498423))

(declare-fun m!3498425 () Bool)

(assert (=> b!3221485 m!3498425))

(declare-fun m!3498427 () Bool)

(assert (=> b!3221486 m!3498427))

(declare-fun m!3498429 () Bool)

(assert (=> b!3221486 m!3498429))

(declare-fun m!3498431 () Bool)

(assert (=> b!3221486 m!3498431))

(declare-fun m!3498433 () Bool)

(assert (=> b!3221486 m!3498433))

(declare-fun m!3498435 () Bool)

(assert (=> b!3221486 m!3498435))

(declare-fun m!3498437 () Bool)

(assert (=> b!3221486 m!3498437))

(declare-fun m!3498439 () Bool)

(assert (=> b!3221486 m!3498439))

(declare-fun m!3498441 () Bool)

(assert (=> b!3221486 m!3498441))

(declare-fun m!3498443 () Bool)

(assert (=> b!3221486 m!3498443))

(assert (=> b!3221486 m!3498439))

(declare-fun m!3498445 () Bool)

(assert (=> b!3221486 m!3498445))

(declare-fun m!3498447 () Bool)

(assert (=> b!3221486 m!3498447))

(declare-fun m!3498449 () Bool)

(assert (=> b!3221486 m!3498449))

(declare-fun m!3498451 () Bool)

(assert (=> b!3221486 m!3498451))

(declare-fun m!3498453 () Bool)

(assert (=> b!3221486 m!3498453))

(assert (=> b!3221486 m!3498449))

(declare-fun m!3498455 () Bool)

(assert (=> b!3221486 m!3498455))

(declare-fun m!3498457 () Bool)

(assert (=> b!3221486 m!3498457))

(declare-fun m!3498459 () Bool)

(assert (=> b!3221486 m!3498459))

(declare-fun m!3498461 () Bool)

(assert (=> b!3221486 m!3498461))

(declare-fun m!3498463 () Bool)

(assert (=> b!3221486 m!3498463))

(declare-fun m!3498465 () Bool)

(assert (=> b!3221486 m!3498465))

(declare-fun m!3498467 () Bool)

(assert (=> b!3221486 m!3498467))

(declare-fun m!3498469 () Bool)

(assert (=> b!3221486 m!3498469))

(declare-fun m!3498471 () Bool)

(assert (=> b!3221486 m!3498471))

(declare-fun m!3498473 () Bool)

(assert (=> b!3221486 m!3498473))

(declare-fun m!3498475 () Bool)

(assert (=> b!3221486 m!3498475))

(declare-fun m!3498477 () Bool)

(assert (=> b!3221486 m!3498477))

(declare-fun m!3498479 () Bool)

(assert (=> b!3221486 m!3498479))

(declare-fun m!3498481 () Bool)

(assert (=> b!3221486 m!3498481))

(assert (=> b!3221486 m!3498475))

(declare-fun m!3498483 () Bool)

(assert (=> b!3221486 m!3498483))

(declare-fun m!3498485 () Bool)

(assert (=> b!3221486 m!3498485))

(declare-fun m!3498487 () Bool)

(assert (=> b!3221486 m!3498487))

(declare-fun m!3498489 () Bool)

(assert (=> b!3221486 m!3498489))

(declare-fun m!3498491 () Bool)

(assert (=> b!3221486 m!3498491))

(declare-fun m!3498493 () Bool)

(assert (=> b!3221486 m!3498493))

(declare-fun m!3498495 () Bool)

(assert (=> b!3221486 m!3498495))

(declare-fun m!3498497 () Bool)

(assert (=> b!3221486 m!3498497))

(declare-fun m!3498499 () Bool)

(assert (=> b!3221486 m!3498499))

(declare-fun m!3498501 () Bool)

(assert (=> b!3221486 m!3498501))

(declare-fun m!3498503 () Bool)

(assert (=> b!3221486 m!3498503))

(declare-fun m!3498505 () Bool)

(assert (=> b!3221486 m!3498505))

(declare-fun m!3498507 () Bool)

(assert (=> b!3221486 m!3498507))

(declare-fun m!3498509 () Bool)

(assert (=> b!3221486 m!3498509))

(declare-fun m!3498511 () Bool)

(assert (=> b!3221486 m!3498511))

(declare-fun m!3498513 () Bool)

(assert (=> b!3221486 m!3498513))

(declare-fun m!3498515 () Bool)

(assert (=> b!3221486 m!3498515))

(declare-fun m!3498517 () Bool)

(assert (=> b!3221486 m!3498517))

(declare-fun m!3498519 () Bool)

(assert (=> b!3221486 m!3498519))

(assert (=> b!3221486 m!3498505))

(declare-fun m!3498521 () Bool)

(assert (=> b!3221486 m!3498521))

(declare-fun m!3498523 () Bool)

(assert (=> b!3221486 m!3498523))

(declare-fun m!3498525 () Bool)

(assert (=> b!3221468 m!3498525))

(declare-fun m!3498527 () Bool)

(assert (=> b!3221468 m!3498527))

(declare-fun m!3498529 () Bool)

(assert (=> b!3221468 m!3498529))

(declare-fun m!3498531 () Bool)

(assert (=> b!3221468 m!3498531))

(declare-fun m!3498533 () Bool)

(assert (=> b!3221468 m!3498533))

(declare-fun m!3498535 () Bool)

(assert (=> b!3221500 m!3498535))

(declare-fun m!3498537 () Bool)

(assert (=> b!3221500 m!3498537))

(declare-fun m!3498539 () Bool)

(assert (=> b!3221507 m!3498539))

(declare-fun m!3498541 () Bool)

(assert (=> b!3221507 m!3498541))

(declare-fun m!3498543 () Bool)

(assert (=> b!3221482 m!3498543))

(declare-fun m!3498545 () Bool)

(assert (=> b!3221482 m!3498545))

(declare-fun m!3498547 () Bool)

(assert (=> b!3221493 m!3498547))

(declare-fun m!3498549 () Bool)

(assert (=> b!3221489 m!3498549))

(check-sat (not b_next!86369) (not b_next!86375) (not b!3221484) (not b!3221508) (not b_next!86377) (not b!3221486) (not b!3221506) (not b!3221493) (not b!3221503) (not b!3221476) (not b!3221482) (not b!3221474) (not b!3221485) (not b!3221483) (not b!3221499) (not b!3221492) (not b!3221468) (not b!3221498) (not b!3221491) b_and!215371 (not b_next!86379) (not b!3221472) (not b!3221469) b_and!215367 (not b!3221495) (not b!3221489) (not b!3221470) b_and!215375 (not b!3221520) (not start!302622) (not b!3221477) (not b!3221494) (not b!3221507) b_and!215373 (not b!3221500) (not b!3221475) (not b_next!86371) (not b!3221504) (not b!3221487) (not b!3221511) (not b!3221480) b_and!215377 (not b!3221510) (not b!3221479) (not b!3221488) (not b_next!86373) b_and!215369)
(check-sat b_and!215367 (not b_next!86369) (not b_next!86375) b_and!215375 (not b_next!86377) b_and!215373 (not b_next!86371) b_and!215377 b_and!215371 (not b_next!86379) (not b_next!86373) b_and!215369)
