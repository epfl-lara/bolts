; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50836 () Bool)

(assert start!50836)

(declare-fun b!549796 () Bool)

(declare-fun b_free!15329 () Bool)

(declare-fun b_next!15345 () Bool)

(assert (=> b!549796 (= b_free!15329 (not b_next!15345))))

(declare-fun tp!174092 () Bool)

(declare-fun b_and!53667 () Bool)

(assert (=> b!549796 (= tp!174092 b_and!53667)))

(declare-fun b_free!15331 () Bool)

(declare-fun b_next!15347 () Bool)

(assert (=> b!549796 (= b_free!15331 (not b_next!15347))))

(declare-fun tp!174097 () Bool)

(declare-fun b_and!53669 () Bool)

(assert (=> b!549796 (= tp!174097 b_and!53669)))

(declare-fun b!549833 () Bool)

(declare-fun b_free!15333 () Bool)

(declare-fun b_next!15349 () Bool)

(assert (=> b!549833 (= b_free!15333 (not b_next!15349))))

(declare-fun tp!174098 () Bool)

(declare-fun b_and!53671 () Bool)

(assert (=> b!549833 (= tp!174098 b_and!53671)))

(declare-fun b_free!15335 () Bool)

(declare-fun b_next!15351 () Bool)

(assert (=> b!549833 (= b_free!15335 (not b_next!15351))))

(declare-fun tp!174095 () Bool)

(declare-fun b_and!53673 () Bool)

(assert (=> b!549833 (= tp!174095 b_and!53673)))

(declare-fun e!332469 () Bool)

(declare-datatypes ((C!3648 0))(
  ( (C!3649 (val!2050 Int)) )
))
(declare-datatypes ((Regex!1363 0))(
  ( (ElementMatch!1363 (c!103448 C!3648)) (Concat!2416 (regOne!3238 Regex!1363) (regTwo!3238 Regex!1363)) (EmptyExpr!1363) (Star!1363 (reg!1692 Regex!1363)) (EmptyLang!1363) (Union!1363 (regOne!3239 Regex!1363) (regTwo!3239 Regex!1363)) )
))
(declare-datatypes ((List!5441 0))(
  ( (Nil!5431) (Cons!5431 (h!10832 (_ BitVec 16)) (t!74970 List!5441)) )
))
(declare-datatypes ((TokenValue!1053 0))(
  ( (FloatLiteralValue!2106 (text!7816 List!5441)) (TokenValueExt!1052 (__x!4004 Int)) (Broken!5265 (value!34167 List!5441)) (Object!1062) (End!1053) (Def!1053) (Underscore!1053) (Match!1053) (Else!1053) (Error!1053) (Case!1053) (If!1053) (Extends!1053) (Abstract!1053) (Class!1053) (Val!1053) (DelimiterValue!2106 (del!1113 List!5441)) (KeywordValue!1059 (value!34168 List!5441)) (CommentValue!2106 (value!34169 List!5441)) (WhitespaceValue!2106 (value!34170 List!5441)) (IndentationValue!1053 (value!34171 List!5441)) (String!7008) (Int32!1053) (Broken!5266 (value!34172 List!5441)) (Boolean!1054) (Unit!9611) (OperatorValue!1056 (op!1113 List!5441)) (IdentifierValue!2106 (value!34173 List!5441)) (IdentifierValue!2107 (value!34174 List!5441)) (WhitespaceValue!2107 (value!34175 List!5441)) (True!2106) (False!2106) (Broken!5267 (value!34176 List!5441)) (Broken!5268 (value!34177 List!5441)) (True!2107) (RightBrace!1053) (RightBracket!1053) (Colon!1053) (Null!1053) (Comma!1053) (LeftBracket!1053) (False!2107) (LeftBrace!1053) (ImaginaryLiteralValue!1053 (text!7817 List!5441)) (StringLiteralValue!3159 (value!34178 List!5441)) (EOFValue!1053 (value!34179 List!5441)) (IdentValue!1053 (value!34180 List!5441)) (DelimiterValue!2107 (value!34181 List!5441)) (DedentValue!1053 (value!34182 List!5441)) (NewLineValue!1053 (value!34183 List!5441)) (IntegerValue!3159 (value!34184 (_ BitVec 32)) (text!7818 List!5441)) (IntegerValue!3160 (value!34185 Int) (text!7819 List!5441)) (Times!1053) (Or!1053) (Equal!1053) (Minus!1053) (Broken!5269 (value!34186 List!5441)) (And!1053) (Div!1053) (LessEqual!1053) (Mod!1053) (Concat!2417) (Not!1053) (Plus!1053) (SpaceValue!1053 (value!34187 List!5441)) (IntegerValue!3161 (value!34188 Int) (text!7820 List!5441)) (StringLiteralValue!3160 (text!7821 List!5441)) (FloatLiteralValue!2107 (text!7822 List!5441)) (BytesLiteralValue!1053 (value!34189 List!5441)) (CommentValue!2107 (value!34190 List!5441)) (StringLiteralValue!3161 (value!34191 List!5441)) (ErrorTokenValue!1053 (msg!1114 List!5441)) )
))
(declare-datatypes ((String!7009 0))(
  ( (String!7010 (value!34192 String)) )
))
(declare-datatypes ((List!5442 0))(
  ( (Nil!5432) (Cons!5432 (h!10833 C!3648) (t!74971 List!5442)) )
))
(declare-datatypes ((IArray!3493 0))(
  ( (IArray!3494 (innerList!1804 List!5442)) )
))
(declare-datatypes ((Conc!1746 0))(
  ( (Node!1746 (left!4489 Conc!1746) (right!4819 Conc!1746) (csize!3722 Int) (cheight!1957 Int)) (Leaf!2768 (xs!4383 IArray!3493) (csize!3723 Int)) (Empty!1746) )
))
(declare-datatypes ((BalanceConc!3500 0))(
  ( (BalanceConc!3501 (c!103449 Conc!1746)) )
))
(declare-datatypes ((TokenValueInjection!1874 0))(
  ( (TokenValueInjection!1875 (toValue!1876 Int) (toChars!1735 Int)) )
))
(declare-datatypes ((Rule!1858 0))(
  ( (Rule!1859 (regex!1029 Regex!1363) (tag!1291 String!7009) (isSeparator!1029 Bool) (transformation!1029 TokenValueInjection!1874)) )
))
(declare-datatypes ((Token!1794 0))(
  ( (Token!1795 (value!34193 TokenValue!1053) (rule!1751 Rule!1858) (size!4348 Int) (originalCharacters!1068 List!5442)) )
))
(declare-fun token!491 () Token!1794)

(declare-fun b!549795 () Bool)

(declare-fun e!332460 () Bool)

(declare-fun tp!174093 () Bool)

(declare-fun inv!6810 (String!7009) Bool)

(declare-fun inv!6813 (TokenValueInjection!1874) Bool)

(assert (=> b!549795 (= e!332469 (and tp!174093 (inv!6810 (tag!1291 (rule!1751 token!491))) (inv!6813 (transformation!1029 (rule!1751 token!491))) e!332460))))

(declare-fun e!332462 () Bool)

(assert (=> b!549796 (= e!332462 (and tp!174092 tp!174097))))

(declare-fun b!549797 () Bool)

(declare-datatypes ((Unit!9612 0))(
  ( (Unit!9613) )
))
(declare-fun e!332458 () Unit!9612)

(declare-fun Unit!9614 () Unit!9612)

(assert (=> b!549797 (= e!332458 Unit!9614)))

(declare-fun b!549798 () Bool)

(declare-fun e!332483 () Bool)

(declare-fun e!332454 () Bool)

(assert (=> b!549798 (= e!332483 e!332454)))

(declare-fun res!235505 () Bool)

(assert (=> b!549798 (=> (not res!235505) (not e!332454))))

(declare-datatypes ((tuple2!6456 0))(
  ( (tuple2!6457 (_1!3492 Token!1794) (_2!3492 List!5442)) )
))
(declare-datatypes ((Option!1379 0))(
  ( (None!1378) (Some!1378 (v!16201 tuple2!6456)) )
))
(declare-fun lt!231614 () Option!1379)

(declare-fun isDefined!1191 (Option!1379) Bool)

(assert (=> b!549798 (= res!235505 (isDefined!1191 lt!231614))))

(declare-fun b!549799 () Bool)

(declare-fun lt!231617 () List!5442)

(assert (=> b!549799 (= e!332454 (= lt!231617 (_2!3492 (v!16201 lt!231614))))))

(declare-fun b!549800 () Bool)

(declare-fun e!332472 () Bool)

(assert (=> b!549800 e!332472))

(declare-fun res!235492 () Bool)

(assert (=> b!549800 (=> (not res!235492) (not e!332472))))

(declare-fun input!2705 () List!5442)

(declare-fun matchR!522 (Regex!1363 List!5442) Bool)

(assert (=> b!549800 (= res!235492 (not (matchR!522 (regex!1029 (rule!1751 (_1!3492 (v!16201 lt!231614)))) input!2705)))))

(declare-datatypes ((List!5443 0))(
  ( (Nil!5433) (Cons!5433 (h!10834 Rule!1858) (t!74972 List!5443)) )
))
(declare-fun rules!3103 () List!5443)

(declare-datatypes ((LexerInterface!915 0))(
  ( (LexerInterfaceExt!912 (__x!4005 Int)) (Lexer!913) )
))
(declare-fun thiss!22590 () LexerInterface!915)

(declare-fun lt!231615 () Unit!9612)

(declare-fun lt!231639 () List!5442)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!12 (LexerInterface!915 List!5443 Rule!1858 List!5442 List!5442 Rule!1858) Unit!9612)

(assert (=> b!549800 (= lt!231615 (lemmaMaxPrefNoSmallerRuleMatches!12 thiss!22590 rules!3103 (rule!1751 token!491) input!2705 lt!231639 (rule!1751 (_1!3492 (v!16201 lt!231614)))))))

(declare-fun e!332484 () Unit!9612)

(declare-fun Unit!9615 () Unit!9612)

(assert (=> b!549800 (= e!332484 Unit!9615)))

(declare-fun suffix!1342 () List!5442)

(declare-fun lt!231613 () List!5442)

(declare-fun b!549801 () Bool)

(declare-fun lt!231641 () TokenValue!1053)

(declare-fun lt!231619 () Int)

(declare-fun e!332473 () Bool)

(declare-fun lt!231618 () List!5442)

(assert (=> b!549801 (= e!332473 (and (= (size!4348 token!491) lt!231619) (= (originalCharacters!1068 token!491) lt!231613) (= (tuple2!6457 token!491 suffix!1342) (tuple2!6457 (Token!1795 lt!231641 (rule!1751 token!491) lt!231619 lt!231613) lt!231618))))))

(declare-fun b!549802 () Bool)

(declare-fun res!235490 () Bool)

(declare-fun e!332466 () Bool)

(assert (=> b!549802 (=> (not res!235490) (not e!332466))))

(declare-fun size!4349 (List!5442) Int)

(assert (=> b!549802 (= res!235490 (= (size!4348 (_1!3492 (v!16201 lt!231614))) (size!4349 (originalCharacters!1068 (_1!3492 (v!16201 lt!231614))))))))

(declare-fun b!549803 () Bool)

(declare-fun res!235494 () Bool)

(declare-fun e!332475 () Bool)

(assert (=> b!549803 (=> (not res!235494) (not e!332475))))

(declare-fun rulesInvariant!878 (LexerInterface!915 List!5443) Bool)

(assert (=> b!549803 (= res!235494 (rulesInvariant!878 thiss!22590 rules!3103))))

(declare-fun b!549804 () Bool)

(declare-fun e!332476 () Unit!9612)

(declare-fun Unit!9616 () Unit!9612)

(assert (=> b!549804 (= e!332476 Unit!9616)))

(declare-fun b!549805 () Bool)

(declare-fun e!332455 () Bool)

(assert (=> b!549805 (= e!332455 e!332483)))

(declare-fun res!235499 () Bool)

(assert (=> b!549805 (=> res!235499 e!332483)))

(declare-fun lt!231624 () Int)

(assert (=> b!549805 (= res!235499 (>= lt!231624 lt!231619))))

(declare-fun b!549806 () Bool)

(declare-fun e!332477 () Bool)

(declare-fun e!332459 () Bool)

(assert (=> b!549806 (= e!332477 e!332459)))

(declare-fun res!235483 () Bool)

(assert (=> b!549806 (=> res!235483 e!332459)))

(assert (=> b!549806 (= res!235483 (or (not (= (size!4348 (_1!3492 (v!16201 lt!231614))) (size!4348 token!491))) (not (= (_1!3492 (v!16201 lt!231614)) token!491))))))

(assert (=> b!549806 (= (rule!1751 (_1!3492 (v!16201 lt!231614))) (rule!1751 token!491))))

(declare-fun lt!231622 () Unit!9612)

(declare-fun lemmaSameIndexThenSameElement!4 (List!5443 Rule!1858 Rule!1858) Unit!9612)

(assert (=> b!549806 (= lt!231622 (lemmaSameIndexThenSameElement!4 rules!3103 (rule!1751 (_1!3492 (v!16201 lt!231614))) (rule!1751 token!491)))))

(declare-fun lt!231638 () Unit!9612)

(assert (=> b!549806 (= lt!231638 e!332458)))

(declare-fun c!103446 () Bool)

(assert (=> b!549806 (= c!103446 (not (= (rule!1751 (_1!3492 (v!16201 lt!231614))) (rule!1751 token!491))))))

(declare-fun b!549807 () Bool)

(declare-fun res!235504 () Bool)

(assert (=> b!549807 (=> res!235504 e!332477)))

(declare-fun isEmpty!3920 (List!5442) Bool)

(assert (=> b!549807 (= res!235504 (not (isEmpty!3920 (_2!3492 (v!16201 lt!231614)))))))

(declare-fun b!549808 () Bool)

(declare-fun e!332461 () Bool)

(declare-fun e!332464 () Bool)

(assert (=> b!549808 (= e!332461 e!332464)))

(declare-fun res!235495 () Bool)

(assert (=> b!549808 (=> (not res!235495) (not e!332464))))

(declare-fun lt!231634 () tuple2!6456)

(assert (=> b!549808 (= res!235495 (and (= (_1!3492 lt!231634) token!491) (= (_2!3492 lt!231634) suffix!1342)))))

(declare-fun lt!231650 () Option!1379)

(declare-fun get!2058 (Option!1379) tuple2!6456)

(assert (=> b!549808 (= lt!231634 (get!2058 lt!231650))))

(declare-fun b!549809 () Bool)

(declare-fun e!332456 () Bool)

(declare-fun tp_is_empty!3081 () Bool)

(declare-fun tp!174100 () Bool)

(assert (=> b!549809 (= e!332456 (and tp_is_empty!3081 tp!174100))))

(declare-fun res!235498 () Bool)

(assert (=> start!50836 (=> (not res!235498) (not e!332475))))

(get-info :version)

(assert (=> start!50836 (= res!235498 ((_ is Lexer!913) thiss!22590))))

(assert (=> start!50836 e!332475))

(assert (=> start!50836 e!332456))

(declare-fun e!332457 () Bool)

(assert (=> start!50836 e!332457))

(declare-fun e!332470 () Bool)

(declare-fun inv!6814 (Token!1794) Bool)

(assert (=> start!50836 (and (inv!6814 token!491) e!332470)))

(assert (=> start!50836 true))

(declare-fun e!332479 () Bool)

(assert (=> start!50836 e!332479))

(declare-fun b!549810 () Bool)

(declare-fun res!235487 () Bool)

(assert (=> b!549810 (=> (not res!235487) (not e!332454))))

(assert (=> b!549810 (= res!235487 (= (_1!3492 (get!2058 lt!231614)) (_1!3492 (v!16201 lt!231614))))))

(declare-fun b!549811 () Bool)

(declare-fun e!332471 () Unit!9612)

(declare-fun Unit!9617 () Unit!9612)

(assert (=> b!549811 (= e!332471 Unit!9617)))

(declare-fun b!549812 () Bool)

(declare-fun e!332463 () Bool)

(declare-fun e!332480 () Bool)

(assert (=> b!549812 (= e!332463 (not e!332480))))

(declare-fun res!235501 () Bool)

(assert (=> b!549812 (=> res!235501 e!332480)))

(declare-fun lt!231647 () List!5442)

(declare-fun isPrefix!671 (List!5442 List!5442) Bool)

(assert (=> b!549812 (= res!235501 (not (isPrefix!671 input!2705 lt!231647)))))

(assert (=> b!549812 (isPrefix!671 lt!231613 lt!231647)))

(declare-fun lt!231621 () Unit!9612)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!522 (List!5442 List!5442) Unit!9612)

(assert (=> b!549812 (= lt!231621 (lemmaConcatTwoListThenFirstIsPrefix!522 lt!231613 suffix!1342))))

(assert (=> b!549812 (isPrefix!671 input!2705 lt!231639)))

(declare-fun lt!231642 () Unit!9612)

(assert (=> b!549812 (= lt!231642 (lemmaConcatTwoListThenFirstIsPrefix!522 input!2705 suffix!1342))))

(assert (=> b!549812 e!332466))

(declare-fun res!235488 () Bool)

(assert (=> b!549812 (=> (not res!235488) (not e!332466))))

(declare-fun lt!231635 () TokenValue!1053)

(assert (=> b!549812 (= res!235488 (= (value!34193 (_1!3492 (v!16201 lt!231614))) lt!231635))))

(declare-fun lt!231611 () BalanceConc!3500)

(declare-fun apply!1304 (TokenValueInjection!1874 BalanceConc!3500) TokenValue!1053)

(assert (=> b!549812 (= lt!231635 (apply!1304 (transformation!1029 (rule!1751 (_1!3492 (v!16201 lt!231614)))) lt!231611))))

(declare-fun lt!231648 () List!5442)

(declare-fun seqFromList!1227 (List!5442) BalanceConc!3500)

(assert (=> b!549812 (= lt!231611 (seqFromList!1227 lt!231648))))

(declare-fun lt!231628 () Unit!9612)

(declare-fun lemmaInv!177 (TokenValueInjection!1874) Unit!9612)

(assert (=> b!549812 (= lt!231628 (lemmaInv!177 (transformation!1029 (rule!1751 token!491))))))

(declare-fun lt!231629 () Unit!9612)

(assert (=> b!549812 (= lt!231629 (lemmaInv!177 (transformation!1029 (rule!1751 (_1!3492 (v!16201 lt!231614))))))))

(declare-fun ruleValid!249 (LexerInterface!915 Rule!1858) Bool)

(assert (=> b!549812 (ruleValid!249 thiss!22590 (rule!1751 token!491))))

(declare-fun lt!231620 () Unit!9612)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!108 (LexerInterface!915 Rule!1858 List!5443) Unit!9612)

(assert (=> b!549812 (= lt!231620 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!108 thiss!22590 (rule!1751 token!491) rules!3103))))

(assert (=> b!549812 (ruleValid!249 thiss!22590 (rule!1751 (_1!3492 (v!16201 lt!231614))))))

(declare-fun lt!231637 () Unit!9612)

(assert (=> b!549812 (= lt!231637 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!108 thiss!22590 (rule!1751 (_1!3492 (v!16201 lt!231614))) rules!3103))))

(assert (=> b!549812 (isPrefix!671 input!2705 input!2705)))

(declare-fun lt!231640 () Unit!9612)

(declare-fun lemmaIsPrefixRefl!411 (List!5442 List!5442) Unit!9612)

(assert (=> b!549812 (= lt!231640 (lemmaIsPrefixRefl!411 input!2705 input!2705))))

(assert (=> b!549812 (= (_2!3492 (v!16201 lt!231614)) lt!231617)))

(declare-fun lt!231636 () Unit!9612)

(declare-fun lemmaSamePrefixThenSameSuffix!398 (List!5442 List!5442 List!5442 List!5442 List!5442) Unit!9612)

(assert (=> b!549812 (= lt!231636 (lemmaSamePrefixThenSameSuffix!398 lt!231648 (_2!3492 (v!16201 lt!231614)) lt!231648 lt!231617 input!2705))))

(declare-fun getSuffix!194 (List!5442 List!5442) List!5442)

(assert (=> b!549812 (= lt!231617 (getSuffix!194 input!2705 lt!231648))))

(declare-fun lt!231616 () List!5442)

(assert (=> b!549812 (isPrefix!671 lt!231648 lt!231616)))

(declare-fun ++!1517 (List!5442 List!5442) List!5442)

(assert (=> b!549812 (= lt!231616 (++!1517 lt!231648 (_2!3492 (v!16201 lt!231614))))))

(declare-fun lt!231643 () Unit!9612)

(assert (=> b!549812 (= lt!231643 (lemmaConcatTwoListThenFirstIsPrefix!522 lt!231648 (_2!3492 (v!16201 lt!231614))))))

(declare-fun lt!231609 () Unit!9612)

(declare-fun lemmaCharactersSize!108 (Token!1794) Unit!9612)

(assert (=> b!549812 (= lt!231609 (lemmaCharactersSize!108 token!491))))

(declare-fun lt!231646 () Unit!9612)

(assert (=> b!549812 (= lt!231646 (lemmaCharactersSize!108 (_1!3492 (v!16201 lt!231614))))))

(declare-fun lt!231610 () Unit!9612)

(declare-fun e!332452 () Unit!9612)

(assert (=> b!549812 (= lt!231610 e!332452)))

(declare-fun c!103443 () Bool)

(assert (=> b!549812 (= c!103443 (> lt!231624 lt!231619))))

(assert (=> b!549812 (= lt!231619 (size!4349 lt!231613))))

(assert (=> b!549812 (= lt!231624 (size!4349 lt!231648))))

(declare-fun list!2251 (BalanceConc!3500) List!5442)

(declare-fun charsOf!658 (Token!1794) BalanceConc!3500)

(assert (=> b!549812 (= lt!231648 (list!2251 (charsOf!658 (_1!3492 (v!16201 lt!231614)))))))

(declare-fun lt!231649 () tuple2!6456)

(assert (=> b!549812 (= lt!231614 (Some!1378 lt!231649))))

(assert (=> b!549812 (= lt!231649 (tuple2!6457 (_1!3492 (v!16201 lt!231614)) (_2!3492 (v!16201 lt!231614))))))

(declare-fun lt!231651 () Unit!9612)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!114 (List!5442 List!5442 List!5442 List!5442) Unit!9612)

(assert (=> b!549812 (= lt!231651 (lemmaConcatSameAndSameSizesThenSameLists!114 lt!231613 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!549813 () Bool)

(assert (=> b!549813 (= e!332472 false)))

(declare-fun b!549814 () Bool)

(declare-fun res!235486 () Bool)

(assert (=> b!549814 (=> (not res!235486) (not e!332473))))

(assert (=> b!549814 (= res!235486 (= (size!4348 token!491) (size!4349 (originalCharacters!1068 token!491))))))

(declare-fun b!549815 () Bool)

(declare-fun e!332453 () Bool)

(assert (=> b!549815 (= e!332475 e!332453)))

(declare-fun res!235480 () Bool)

(assert (=> b!549815 (=> (not res!235480) (not e!332453))))

(assert (=> b!549815 (= res!235480 (= lt!231613 input!2705))))

(assert (=> b!549815 (= lt!231613 (list!2251 (charsOf!658 token!491)))))

(declare-fun b!549816 () Bool)

(declare-fun res!235489 () Bool)

(assert (=> b!549816 (=> (not res!235489) (not e!332475))))

(declare-fun isEmpty!3921 (List!5443) Bool)

(assert (=> b!549816 (= res!235489 (not (isEmpty!3921 rules!3103)))))

(declare-fun b!549817 () Bool)

(declare-fun e!332467 () Bool)

(assert (=> b!549817 (= e!332464 e!332467)))

(declare-fun res!235482 () Bool)

(assert (=> b!549817 (=> (not res!235482) (not e!332467))))

(assert (=> b!549817 (= res!235482 ((_ is Some!1378) lt!231614))))

(declare-fun maxPrefix!613 (LexerInterface!915 List!5443 List!5442) Option!1379)

(assert (=> b!549817 (= lt!231614 (maxPrefix!613 thiss!22590 rules!3103 input!2705))))

(declare-fun tp!174099 () Bool)

(declare-fun b!549818 () Bool)

(declare-fun inv!21 (TokenValue!1053) Bool)

(assert (=> b!549818 (= e!332470 (and (inv!21 (value!34193 token!491)) e!332469 tp!174099))))

(declare-fun b!549819 () Bool)

(assert (=> b!549819 (= e!332458 e!332476)))

(declare-fun lt!231608 () Int)

(declare-fun getIndex!30 (List!5443 Rule!1858) Int)

(assert (=> b!549819 (= lt!231608 (getIndex!30 rules!3103 (rule!1751 (_1!3492 (v!16201 lt!231614)))))))

(declare-fun lt!231632 () Int)

(assert (=> b!549819 (= lt!231632 (getIndex!30 rules!3103 (rule!1751 token!491)))))

(declare-fun c!103445 () Bool)

(assert (=> b!549819 (= c!103445 (< lt!231608 lt!231632))))

(declare-fun lt!231630 () Unit!9612)

(assert (=> b!549819 (= lt!231630 e!332484)))

(declare-fun c!103447 () Bool)

(assert (=> b!549819 (= c!103447 (> lt!231608 lt!231632))))

(declare-fun b!549820 () Bool)

(assert (=> b!549820 (= e!332480 e!332477)))

(declare-fun res!235491 () Bool)

(assert (=> b!549820 (=> res!235491 e!332477)))

(assert (=> b!549820 (= res!235491 (or (not (= lt!231624 lt!231619)) (not (= lt!231616 input!2705)) (not (= lt!231616 lt!231613))))))

(declare-fun lt!231623 () Unit!9612)

(declare-fun lt!231633 () BalanceConc!3500)

(declare-fun lemmaSemiInverse!158 (TokenValueInjection!1874 BalanceConc!3500) Unit!9612)

(assert (=> b!549820 (= lt!231623 (lemmaSemiInverse!158 (transformation!1029 (rule!1751 token!491)) lt!231633))))

(declare-fun lt!231645 () Unit!9612)

(assert (=> b!549820 (= lt!231645 (lemmaSemiInverse!158 (transformation!1029 (rule!1751 (_1!3492 (v!16201 lt!231614)))) lt!231611))))

(declare-fun lt!231626 () Unit!9612)

(assert (=> b!549820 (= lt!231626 e!332471)))

(declare-fun c!103444 () Bool)

(assert (=> b!549820 (= c!103444 (< lt!231624 lt!231619))))

(assert (=> b!549820 e!332455))

(declare-fun res!235502 () Bool)

(assert (=> b!549820 (=> (not res!235502) (not e!332455))))

(declare-fun maxPrefixOneRule!328 (LexerInterface!915 Rule!1858 List!5442) Option!1379)

(assert (=> b!549820 (= res!235502 (= (maxPrefixOneRule!328 thiss!22590 (rule!1751 token!491) lt!231639) (Some!1378 (tuple2!6457 (Token!1795 lt!231641 (rule!1751 token!491) lt!231619 lt!231613) suffix!1342))))))

(declare-fun lt!231612 () Unit!9612)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!80 (LexerInterface!915 List!5443 List!5442 List!5442 List!5442 Rule!1858) Unit!9612)

(assert (=> b!549820 (= lt!231612 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!80 thiss!22590 rules!3103 lt!231613 lt!231639 suffix!1342 (rule!1751 token!491)))))

(assert (=> b!549820 (= (maxPrefixOneRule!328 thiss!22590 (rule!1751 (_1!3492 (v!16201 lt!231614))) input!2705) (Some!1378 (tuple2!6457 (Token!1795 lt!231635 (rule!1751 (_1!3492 (v!16201 lt!231614))) lt!231624 lt!231648) (_2!3492 (v!16201 lt!231614)))))))

(declare-fun lt!231631 () Unit!9612)

(assert (=> b!549820 (= lt!231631 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!80 thiss!22590 rules!3103 lt!231648 input!2705 (_2!3492 (v!16201 lt!231614)) (rule!1751 (_1!3492 (v!16201 lt!231614)))))))

(assert (=> b!549820 e!332473))

(declare-fun res!235500 () Bool)

(assert (=> b!549820 (=> (not res!235500) (not e!332473))))

(assert (=> b!549820 (= res!235500 (= (value!34193 token!491) lt!231641))))

(assert (=> b!549820 (= lt!231641 (apply!1304 (transformation!1029 (rule!1751 token!491)) lt!231633))))

(assert (=> b!549820 (= lt!231633 (seqFromList!1227 lt!231613))))

(assert (=> b!549820 (= suffix!1342 lt!231618)))

(declare-fun lt!231607 () Unit!9612)

(assert (=> b!549820 (= lt!231607 (lemmaSamePrefixThenSameSuffix!398 lt!231613 suffix!1342 lt!231613 lt!231618 lt!231639))))

(assert (=> b!549820 (= lt!231618 (getSuffix!194 lt!231639 lt!231613))))

(declare-fun b!549821 () Bool)

(declare-fun e!332465 () Bool)

(assert (=> b!549821 e!332465))

(declare-fun res!235485 () Bool)

(assert (=> b!549821 (=> (not res!235485) (not e!332465))))

(assert (=> b!549821 (= res!235485 (not (matchR!522 (regex!1029 (rule!1751 token!491)) input!2705)))))

(declare-fun lt!231625 () Unit!9612)

(assert (=> b!549821 (= lt!231625 (lemmaMaxPrefNoSmallerRuleMatches!12 thiss!22590 rules!3103 (rule!1751 (_1!3492 (v!16201 lt!231614))) input!2705 input!2705 (rule!1751 token!491)))))

(declare-fun Unit!9618 () Unit!9612)

(assert (=> b!549821 (= e!332476 Unit!9618)))

(declare-fun b!549822 () Bool)

(declare-fun Unit!9619 () Unit!9612)

(assert (=> b!549822 (= e!332452 Unit!9619)))

(declare-fun b!549823 () Bool)

(declare-fun Unit!9620 () Unit!9612)

(assert (=> b!549823 (= e!332452 Unit!9620)))

(assert (=> b!549823 false))

(declare-fun b!549824 () Bool)

(declare-fun e!332482 () Bool)

(assert (=> b!549824 (= e!332482 false)))

(declare-fun b!549825 () Bool)

(declare-fun rulesValidInductive!362 (LexerInterface!915 List!5443) Bool)

(assert (=> b!549825 (= e!332459 (rulesValidInductive!362 thiss!22590 rules!3103))))

(declare-fun b!549826 () Bool)

(declare-fun Unit!9621 () Unit!9612)

(assert (=> b!549826 (= e!332471 Unit!9621)))

(declare-fun lt!231627 () Unit!9612)

(assert (=> b!549826 (= lt!231627 (lemmaSemiInverse!158 (transformation!1029 (rule!1751 (_1!3492 (v!16201 lt!231614)))) lt!231611))))

(declare-fun lt!231644 () Unit!9612)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!34 (LexerInterface!915 List!5443 Rule!1858 List!5442 List!5442 List!5442 Rule!1858) Unit!9612)

(assert (=> b!549826 (= lt!231644 (lemmaMaxPrefixOutputsMaxPrefix!34 thiss!22590 rules!3103 (rule!1751 (_1!3492 (v!16201 lt!231614))) lt!231648 input!2705 input!2705 (rule!1751 token!491)))))

(declare-fun res!235481 () Bool)

(assert (=> b!549826 (= res!235481 (not (matchR!522 (regex!1029 (rule!1751 token!491)) input!2705)))))

(assert (=> b!549826 (=> (not res!235481) (not e!332482))))

(assert (=> b!549826 e!332482))

(declare-fun b!549827 () Bool)

(declare-fun res!235497 () Bool)

(assert (=> b!549827 (=> res!235497 e!332477)))

(declare-fun contains!1271 (List!5443 Rule!1858) Bool)

(assert (=> b!549827 (= res!235497 (not (contains!1271 rules!3103 (rule!1751 (_1!3492 (v!16201 lt!231614))))))))

(declare-fun b!549828 () Bool)

(declare-fun tp!174094 () Bool)

(assert (=> b!549828 (= e!332479 (and tp_is_empty!3081 tp!174094))))

(declare-fun b!549829 () Bool)

(declare-fun res!235503 () Bool)

(assert (=> b!549829 (=> (not res!235503) (not e!332475))))

(assert (=> b!549829 (= res!235503 (not (isEmpty!3920 input!2705)))))

(declare-fun b!549830 () Bool)

(assert (=> b!549830 (= e!332465 false)))

(declare-fun b!549831 () Bool)

(declare-fun res!235506 () Bool)

(assert (=> b!549831 (=> res!235506 e!332477)))

(assert (=> b!549831 (= res!235506 (not (contains!1271 rules!3103 (rule!1751 token!491))))))

(declare-fun b!549832 () Bool)

(assert (=> b!549832 (= e!332467 e!332463)))

(declare-fun res!235493 () Bool)

(assert (=> b!549832 (=> (not res!235493) (not e!332463))))

(assert (=> b!549832 (= res!235493 (= lt!231647 lt!231639))))

(assert (=> b!549832 (= lt!231647 (++!1517 lt!231613 suffix!1342))))

(assert (=> b!549833 (= e!332460 (and tp!174098 tp!174095))))

(declare-fun b!549834 () Bool)

(declare-fun Unit!9622 () Unit!9612)

(assert (=> b!549834 (= e!332484 Unit!9622)))

(declare-fun b!549835 () Bool)

(assert (=> b!549835 (= e!332453 e!332461)))

(declare-fun res!235484 () Bool)

(assert (=> b!549835 (=> (not res!235484) (not e!332461))))

(assert (=> b!549835 (= res!235484 (isDefined!1191 lt!231650))))

(assert (=> b!549835 (= lt!231650 (maxPrefix!613 thiss!22590 rules!3103 lt!231639))))

(assert (=> b!549835 (= lt!231639 (++!1517 input!2705 suffix!1342))))

(declare-fun b!549836 () Bool)

(assert (=> b!549836 (= e!332466 (and (= (size!4348 (_1!3492 (v!16201 lt!231614))) lt!231624) (= (originalCharacters!1068 (_1!3492 (v!16201 lt!231614))) lt!231648) (= lt!231649 (tuple2!6457 (Token!1795 lt!231635 (rule!1751 (_1!3492 (v!16201 lt!231614))) lt!231624 lt!231648) lt!231617))))))

(declare-fun b!549837 () Bool)

(declare-fun res!235496 () Bool)

(assert (=> b!549837 (=> res!235496 e!332477)))

(assert (=> b!549837 (= res!235496 (or (not (= lt!231648 lt!231613)) (not (= (originalCharacters!1068 (_1!3492 (v!16201 lt!231614))) (originalCharacters!1068 token!491)))))))

(declare-fun b!549838 () Bool)

(declare-fun e!332468 () Bool)

(declare-fun tp!174096 () Bool)

(assert (=> b!549838 (= e!332457 (and e!332468 tp!174096))))

(declare-fun b!549839 () Bool)

(declare-fun tp!174091 () Bool)

(assert (=> b!549839 (= e!332468 (and tp!174091 (inv!6810 (tag!1291 (h!10834 rules!3103))) (inv!6813 (transformation!1029 (h!10834 rules!3103))) e!332462))))

(assert (= (and start!50836 res!235498) b!549816))

(assert (= (and b!549816 res!235489) b!549803))

(assert (= (and b!549803 res!235494) b!549829))

(assert (= (and b!549829 res!235503) b!549815))

(assert (= (and b!549815 res!235480) b!549835))

(assert (= (and b!549835 res!235484) b!549808))

(assert (= (and b!549808 res!235495) b!549817))

(assert (= (and b!549817 res!235482) b!549832))

(assert (= (and b!549832 res!235493) b!549812))

(assert (= (and b!549812 c!103443) b!549823))

(assert (= (and b!549812 (not c!103443)) b!549822))

(assert (= (and b!549812 res!235488) b!549802))

(assert (= (and b!549802 res!235490) b!549836))

(assert (= (and b!549812 (not res!235501)) b!549820))

(assert (= (and b!549820 res!235500) b!549814))

(assert (= (and b!549814 res!235486) b!549801))

(assert (= (and b!549820 res!235502) b!549805))

(assert (= (and b!549805 (not res!235499)) b!549798))

(assert (= (and b!549798 res!235505) b!549810))

(assert (= (and b!549810 res!235487) b!549799))

(assert (= (and b!549820 c!103444) b!549826))

(assert (= (and b!549820 (not c!103444)) b!549811))

(assert (= (and b!549826 res!235481) b!549824))

(assert (= (and b!549820 (not res!235491)) b!549807))

(assert (= (and b!549807 (not res!235504)) b!549837))

(assert (= (and b!549837 (not res!235496)) b!549827))

(assert (= (and b!549827 (not res!235497)) b!549831))

(assert (= (and b!549831 (not res!235506)) b!549806))

(assert (= (and b!549806 c!103446) b!549819))

(assert (= (and b!549806 (not c!103446)) b!549797))

(assert (= (and b!549819 c!103445) b!549800))

(assert (= (and b!549819 (not c!103445)) b!549834))

(assert (= (and b!549800 res!235492) b!549813))

(assert (= (and b!549819 c!103447) b!549821))

(assert (= (and b!549819 (not c!103447)) b!549804))

(assert (= (and b!549821 res!235485) b!549830))

(assert (= (and b!549806 (not res!235483)) b!549825))

(assert (= (and start!50836 ((_ is Cons!5432) suffix!1342)) b!549809))

(assert (= b!549839 b!549796))

(assert (= b!549838 b!549839))

(assert (= (and start!50836 ((_ is Cons!5433) rules!3103)) b!549838))

(assert (= b!549795 b!549833))

(assert (= b!549818 b!549795))

(assert (= start!50836 b!549818))

(assert (= (and start!50836 ((_ is Cons!5432) input!2705)) b!549828))

(declare-fun m!799011 () Bool)

(assert (=> b!549820 m!799011))

(declare-fun m!799013 () Bool)

(assert (=> b!549820 m!799013))

(declare-fun m!799015 () Bool)

(assert (=> b!549820 m!799015))

(declare-fun m!799017 () Bool)

(assert (=> b!549820 m!799017))

(declare-fun m!799019 () Bool)

(assert (=> b!549820 m!799019))

(declare-fun m!799021 () Bool)

(assert (=> b!549820 m!799021))

(declare-fun m!799023 () Bool)

(assert (=> b!549820 m!799023))

(declare-fun m!799025 () Bool)

(assert (=> b!549820 m!799025))

(declare-fun m!799027 () Bool)

(assert (=> b!549820 m!799027))

(declare-fun m!799029 () Bool)

(assert (=> b!549820 m!799029))

(declare-fun m!799031 () Bool)

(assert (=> b!549802 m!799031))

(declare-fun m!799033 () Bool)

(assert (=> b!549814 m!799033))

(declare-fun m!799035 () Bool)

(assert (=> b!549816 m!799035))

(declare-fun m!799037 () Bool)

(assert (=> b!549819 m!799037))

(declare-fun m!799039 () Bool)

(assert (=> b!549819 m!799039))

(declare-fun m!799041 () Bool)

(assert (=> b!549832 m!799041))

(declare-fun m!799043 () Bool)

(assert (=> b!549818 m!799043))

(declare-fun m!799045 () Bool)

(assert (=> b!549835 m!799045))

(declare-fun m!799047 () Bool)

(assert (=> b!549835 m!799047))

(declare-fun m!799049 () Bool)

(assert (=> b!549835 m!799049))

(declare-fun m!799051 () Bool)

(assert (=> b!549810 m!799051))

(declare-fun m!799053 () Bool)

(assert (=> b!549829 m!799053))

(declare-fun m!799055 () Bool)

(assert (=> start!50836 m!799055))

(declare-fun m!799057 () Bool)

(assert (=> b!549803 m!799057))

(declare-fun m!799059 () Bool)

(assert (=> b!549817 m!799059))

(declare-fun m!799061 () Bool)

(assert (=> b!549821 m!799061))

(declare-fun m!799063 () Bool)

(assert (=> b!549821 m!799063))

(declare-fun m!799065 () Bool)

(assert (=> b!549839 m!799065))

(declare-fun m!799067 () Bool)

(assert (=> b!549839 m!799067))

(declare-fun m!799069 () Bool)

(assert (=> b!549795 m!799069))

(declare-fun m!799071 () Bool)

(assert (=> b!549795 m!799071))

(declare-fun m!799073 () Bool)

(assert (=> b!549812 m!799073))

(declare-fun m!799075 () Bool)

(assert (=> b!549812 m!799075))

(declare-fun m!799077 () Bool)

(assert (=> b!549812 m!799077))

(declare-fun m!799079 () Bool)

(assert (=> b!549812 m!799079))

(declare-fun m!799081 () Bool)

(assert (=> b!549812 m!799081))

(declare-fun m!799083 () Bool)

(assert (=> b!549812 m!799083))

(declare-fun m!799085 () Bool)

(assert (=> b!549812 m!799085))

(declare-fun m!799087 () Bool)

(assert (=> b!549812 m!799087))

(declare-fun m!799089 () Bool)

(assert (=> b!549812 m!799089))

(declare-fun m!799091 () Bool)

(assert (=> b!549812 m!799091))

(declare-fun m!799093 () Bool)

(assert (=> b!549812 m!799093))

(assert (=> b!549812 m!799079))

(declare-fun m!799095 () Bool)

(assert (=> b!549812 m!799095))

(declare-fun m!799097 () Bool)

(assert (=> b!549812 m!799097))

(declare-fun m!799099 () Bool)

(assert (=> b!549812 m!799099))

(declare-fun m!799101 () Bool)

(assert (=> b!549812 m!799101))

(declare-fun m!799103 () Bool)

(assert (=> b!549812 m!799103))

(declare-fun m!799105 () Bool)

(assert (=> b!549812 m!799105))

(declare-fun m!799107 () Bool)

(assert (=> b!549812 m!799107))

(declare-fun m!799109 () Bool)

(assert (=> b!549812 m!799109))

(declare-fun m!799111 () Bool)

(assert (=> b!549812 m!799111))

(declare-fun m!799113 () Bool)

(assert (=> b!549812 m!799113))

(declare-fun m!799115 () Bool)

(assert (=> b!549812 m!799115))

(declare-fun m!799117 () Bool)

(assert (=> b!549812 m!799117))

(declare-fun m!799119 () Bool)

(assert (=> b!549812 m!799119))

(declare-fun m!799121 () Bool)

(assert (=> b!549812 m!799121))

(declare-fun m!799123 () Bool)

(assert (=> b!549812 m!799123))

(declare-fun m!799125 () Bool)

(assert (=> b!549812 m!799125))

(assert (=> b!549826 m!799023))

(declare-fun m!799127 () Bool)

(assert (=> b!549826 m!799127))

(assert (=> b!549826 m!799061))

(declare-fun m!799129 () Bool)

(assert (=> b!549800 m!799129))

(declare-fun m!799131 () Bool)

(assert (=> b!549800 m!799131))

(declare-fun m!799133 () Bool)

(assert (=> b!549815 m!799133))

(assert (=> b!549815 m!799133))

(declare-fun m!799135 () Bool)

(assert (=> b!549815 m!799135))

(declare-fun m!799137 () Bool)

(assert (=> b!549831 m!799137))

(declare-fun m!799139 () Bool)

(assert (=> b!549798 m!799139))

(declare-fun m!799141 () Bool)

(assert (=> b!549806 m!799141))

(declare-fun m!799143 () Bool)

(assert (=> b!549808 m!799143))

(declare-fun m!799145 () Bool)

(assert (=> b!549807 m!799145))

(declare-fun m!799147 () Bool)

(assert (=> b!549827 m!799147))

(declare-fun m!799149 () Bool)

(assert (=> b!549825 m!799149))

(check-sat (not b_next!15349) (not b!549829) (not b!549815) (not b!549835) b_and!53673 (not b!549809) (not start!50836) (not b_next!15351) (not b!549808) (not b!549825) (not b!549803) (not b!549812) (not b!549806) (not b!549802) b_and!53669 (not b!549828) (not b!549839) (not b!549800) (not b!549817) (not b!549827) (not b!549798) (not b_next!15347) (not b!549818) (not b!549816) (not b!549831) (not b!549838) (not b!549821) (not b!549820) b_and!53667 (not b!549795) (not b!549807) (not b!549810) b_and!53671 (not b!549819) (not b!549832) (not b!549814) (not b!549826) (not b_next!15345) tp_is_empty!3081)
(check-sat (not b_next!15349) b_and!53669 (not b_next!15347) b_and!53673 b_and!53667 (not b_next!15351) b_and!53671 (not b_next!15345))
(get-model)

(declare-fun d!192030 () Bool)

(declare-fun res!235511 () Bool)

(declare-fun e!332487 () Bool)

(assert (=> d!192030 (=> (not res!235511) (not e!332487))))

(declare-fun rulesValid!361 (LexerInterface!915 List!5443) Bool)

(assert (=> d!192030 (= res!235511 (rulesValid!361 thiss!22590 rules!3103))))

(assert (=> d!192030 (= (rulesInvariant!878 thiss!22590 rules!3103) e!332487)))

(declare-fun b!549842 () Bool)

(declare-datatypes ((List!5444 0))(
  ( (Nil!5434) (Cons!5434 (h!10835 String!7009) (t!75045 List!5444)) )
))
(declare-fun noDuplicateTag!361 (LexerInterface!915 List!5443 List!5444) Bool)

(assert (=> b!549842 (= e!332487 (noDuplicateTag!361 thiss!22590 rules!3103 Nil!5434))))

(assert (= (and d!192030 res!235511) b!549842))

(declare-fun m!799151 () Bool)

(assert (=> d!192030 m!799151))

(declare-fun m!799153 () Bool)

(assert (=> b!549842 m!799153))

(assert (=> b!549803 d!192030))

(declare-fun d!192032 () Bool)

(declare-fun res!235517 () Bool)

(declare-fun e!332490 () Bool)

(assert (=> d!192032 (=> (not res!235517) (not e!332490))))

(assert (=> d!192032 (= res!235517 (not (isEmpty!3920 (originalCharacters!1068 token!491))))))

(assert (=> d!192032 (= (inv!6814 token!491) e!332490)))

(declare-fun b!549847 () Bool)

(declare-fun res!235518 () Bool)

(assert (=> b!549847 (=> (not res!235518) (not e!332490))))

(declare-fun dynLambda!3163 (Int TokenValue!1053) BalanceConc!3500)

(assert (=> b!549847 (= res!235518 (= (originalCharacters!1068 token!491) (list!2251 (dynLambda!3163 (toChars!1735 (transformation!1029 (rule!1751 token!491))) (value!34193 token!491)))))))

(declare-fun b!549848 () Bool)

(assert (=> b!549848 (= e!332490 (= (size!4348 token!491) (size!4349 (originalCharacters!1068 token!491))))))

(assert (= (and d!192032 res!235517) b!549847))

(assert (= (and b!549847 res!235518) b!549848))

(declare-fun b_lambda!21135 () Bool)

(assert (=> (not b_lambda!21135) (not b!549847)))

(declare-fun tb!48099 () Bool)

(declare-fun t!74974 () Bool)

(assert (=> (and b!549796 (= (toChars!1735 (transformation!1029 (h!10834 rules!3103))) (toChars!1735 (transformation!1029 (rule!1751 token!491)))) t!74974) tb!48099))

(declare-fun b!549853 () Bool)

(declare-fun e!332493 () Bool)

(declare-fun tp!174103 () Bool)

(declare-fun inv!6817 (Conc!1746) Bool)

(assert (=> b!549853 (= e!332493 (and (inv!6817 (c!103449 (dynLambda!3163 (toChars!1735 (transformation!1029 (rule!1751 token!491))) (value!34193 token!491)))) tp!174103))))

(declare-fun result!53814 () Bool)

(declare-fun inv!6818 (BalanceConc!3500) Bool)

(assert (=> tb!48099 (= result!53814 (and (inv!6818 (dynLambda!3163 (toChars!1735 (transformation!1029 (rule!1751 token!491))) (value!34193 token!491))) e!332493))))

(assert (= tb!48099 b!549853))

(declare-fun m!799155 () Bool)

(assert (=> b!549853 m!799155))

(declare-fun m!799157 () Bool)

(assert (=> tb!48099 m!799157))

(assert (=> b!549847 t!74974))

(declare-fun b_and!53675 () Bool)

(assert (= b_and!53669 (and (=> t!74974 result!53814) b_and!53675)))

(declare-fun t!74976 () Bool)

(declare-fun tb!48101 () Bool)

(assert (=> (and b!549833 (= (toChars!1735 (transformation!1029 (rule!1751 token!491))) (toChars!1735 (transformation!1029 (rule!1751 token!491)))) t!74976) tb!48101))

(declare-fun result!53818 () Bool)

(assert (= result!53818 result!53814))

(assert (=> b!549847 t!74976))

(declare-fun b_and!53677 () Bool)

(assert (= b_and!53673 (and (=> t!74976 result!53818) b_and!53677)))

(declare-fun m!799159 () Bool)

(assert (=> d!192032 m!799159))

(declare-fun m!799161 () Bool)

(assert (=> b!549847 m!799161))

(assert (=> b!549847 m!799161))

(declare-fun m!799163 () Bool)

(assert (=> b!549847 m!799163))

(assert (=> b!549848 m!799033))

(assert (=> start!50836 d!192032))

(declare-fun b!550015 () Bool)

(declare-fun e!332579 () Bool)

(assert (=> b!550015 (= e!332579 true)))

(declare-fun d!192034 () Bool)

(assert (=> d!192034 e!332579))

(assert (= d!192034 b!550015))

(declare-fun order!4499 () Int)

(declare-fun order!4501 () Int)

(declare-fun lambda!15512 () Int)

(declare-fun dynLambda!3164 (Int Int) Int)

(declare-fun dynLambda!3165 (Int Int) Int)

(assert (=> b!550015 (< (dynLambda!3164 order!4499 (toValue!1876 (transformation!1029 (rule!1751 (_1!3492 (v!16201 lt!231614)))))) (dynLambda!3165 order!4501 lambda!15512))))

(declare-fun order!4503 () Int)

(declare-fun dynLambda!3166 (Int Int) Int)

(assert (=> b!550015 (< (dynLambda!3166 order!4503 (toChars!1735 (transformation!1029 (rule!1751 (_1!3492 (v!16201 lt!231614)))))) (dynLambda!3165 order!4501 lambda!15512))))

(declare-fun dynLambda!3167 (Int BalanceConc!3500) TokenValue!1053)

(assert (=> d!192034 (= (list!2251 (dynLambda!3163 (toChars!1735 (transformation!1029 (rule!1751 (_1!3492 (v!16201 lt!231614))))) (dynLambda!3167 (toValue!1876 (transformation!1029 (rule!1751 (_1!3492 (v!16201 lt!231614))))) lt!231611))) (list!2251 lt!231611))))

(declare-fun lt!231700 () Unit!9612)

(declare-fun ForallOf!91 (Int BalanceConc!3500) Unit!9612)

(assert (=> d!192034 (= lt!231700 (ForallOf!91 lambda!15512 lt!231611))))

(assert (=> d!192034 (= (lemmaSemiInverse!158 (transformation!1029 (rule!1751 (_1!3492 (v!16201 lt!231614)))) lt!231611) lt!231700)))

(declare-fun b_lambda!21141 () Bool)

(assert (=> (not b_lambda!21141) (not d!192034)))

(declare-fun t!74982 () Bool)

(declare-fun tb!48107 () Bool)

(assert (=> (and b!549796 (= (toChars!1735 (transformation!1029 (h!10834 rules!3103))) (toChars!1735 (transformation!1029 (rule!1751 (_1!3492 (v!16201 lt!231614)))))) t!74982) tb!48107))

(declare-fun b!550016 () Bool)

(declare-fun tp!174107 () Bool)

(declare-fun e!332580 () Bool)

(assert (=> b!550016 (= e!332580 (and (inv!6817 (c!103449 (dynLambda!3163 (toChars!1735 (transformation!1029 (rule!1751 (_1!3492 (v!16201 lt!231614))))) (dynLambda!3167 (toValue!1876 (transformation!1029 (rule!1751 (_1!3492 (v!16201 lt!231614))))) lt!231611)))) tp!174107))))

(declare-fun result!53826 () Bool)

(assert (=> tb!48107 (= result!53826 (and (inv!6818 (dynLambda!3163 (toChars!1735 (transformation!1029 (rule!1751 (_1!3492 (v!16201 lt!231614))))) (dynLambda!3167 (toValue!1876 (transformation!1029 (rule!1751 (_1!3492 (v!16201 lt!231614))))) lt!231611))) e!332580))))

(assert (= tb!48107 b!550016))

(declare-fun m!799281 () Bool)

(assert (=> b!550016 m!799281))

(declare-fun m!799283 () Bool)

(assert (=> tb!48107 m!799283))

(assert (=> d!192034 t!74982))

(declare-fun b_and!53687 () Bool)

(assert (= b_and!53675 (and (=> t!74982 result!53826) b_and!53687)))

(declare-fun t!74984 () Bool)

(declare-fun tb!48109 () Bool)

(assert (=> (and b!549833 (= (toChars!1735 (transformation!1029 (rule!1751 token!491))) (toChars!1735 (transformation!1029 (rule!1751 (_1!3492 (v!16201 lt!231614)))))) t!74984) tb!48109))

(declare-fun result!53828 () Bool)

(assert (= result!53828 result!53826))

(assert (=> d!192034 t!74984))

(declare-fun b_and!53689 () Bool)

(assert (= b_and!53677 (and (=> t!74984 result!53828) b_and!53689)))

(declare-fun b_lambda!21143 () Bool)

(assert (=> (not b_lambda!21143) (not d!192034)))

(declare-fun t!74986 () Bool)

(declare-fun tb!48111 () Bool)

(assert (=> (and b!549796 (= (toValue!1876 (transformation!1029 (h!10834 rules!3103))) (toValue!1876 (transformation!1029 (rule!1751 (_1!3492 (v!16201 lt!231614)))))) t!74986) tb!48111))

(declare-fun result!53830 () Bool)

(assert (=> tb!48111 (= result!53830 (inv!21 (dynLambda!3167 (toValue!1876 (transformation!1029 (rule!1751 (_1!3492 (v!16201 lt!231614))))) lt!231611)))))

(declare-fun m!799285 () Bool)

(assert (=> tb!48111 m!799285))

(assert (=> d!192034 t!74986))

(declare-fun b_and!53691 () Bool)

(assert (= b_and!53667 (and (=> t!74986 result!53830) b_and!53691)))

(declare-fun t!74988 () Bool)

(declare-fun tb!48113 () Bool)

(assert (=> (and b!549833 (= (toValue!1876 (transformation!1029 (rule!1751 token!491))) (toValue!1876 (transformation!1029 (rule!1751 (_1!3492 (v!16201 lt!231614)))))) t!74988) tb!48113))

(declare-fun result!53834 () Bool)

(assert (= result!53834 result!53830))

(assert (=> d!192034 t!74988))

(declare-fun b_and!53693 () Bool)

(assert (= b_and!53671 (and (=> t!74988 result!53834) b_and!53693)))

(declare-fun m!799287 () Bool)

(assert (=> d!192034 m!799287))

(declare-fun m!799289 () Bool)

(assert (=> d!192034 m!799289))

(assert (=> d!192034 m!799287))

(declare-fun m!799291 () Bool)

(assert (=> d!192034 m!799291))

(declare-fun m!799293 () Bool)

(assert (=> d!192034 m!799293))

(assert (=> d!192034 m!799289))

(declare-fun m!799295 () Bool)

(assert (=> d!192034 m!799295))

(assert (=> b!549826 d!192034))

(declare-fun d!192088 () Bool)

(assert (=> d!192088 (not (matchR!522 (regex!1029 (rule!1751 token!491)) input!2705))))

(declare-fun lt!231703 () Unit!9612)

(declare-fun choose!3907 (LexerInterface!915 List!5443 Rule!1858 List!5442 List!5442 List!5442 Rule!1858) Unit!9612)

(assert (=> d!192088 (= lt!231703 (choose!3907 thiss!22590 rules!3103 (rule!1751 (_1!3492 (v!16201 lt!231614))) lt!231648 input!2705 input!2705 (rule!1751 token!491)))))

(assert (=> d!192088 (isPrefix!671 lt!231648 input!2705)))

(assert (=> d!192088 (= (lemmaMaxPrefixOutputsMaxPrefix!34 thiss!22590 rules!3103 (rule!1751 (_1!3492 (v!16201 lt!231614))) lt!231648 input!2705 input!2705 (rule!1751 token!491)) lt!231703)))

(declare-fun bs!67805 () Bool)

(assert (= bs!67805 d!192088))

(assert (=> bs!67805 m!799061))

(declare-fun m!799297 () Bool)

(assert (=> bs!67805 m!799297))

(declare-fun m!799299 () Bool)

(assert (=> bs!67805 m!799299))

(assert (=> b!549826 d!192088))

(declare-fun b!550055 () Bool)

(declare-fun res!235620 () Bool)

(declare-fun e!332609 () Bool)

(assert (=> b!550055 (=> res!235620 e!332609)))

(declare-fun tail!725 (List!5442) List!5442)

(assert (=> b!550055 (= res!235620 (not (isEmpty!3920 (tail!725 input!2705))))))

(declare-fun b!550056 () Bool)

(declare-fun e!332610 () Bool)

(declare-fun derivativeStep!275 (Regex!1363 C!3648) Regex!1363)

(declare-fun head!1196 (List!5442) C!3648)

(assert (=> b!550056 (= e!332610 (matchR!522 (derivativeStep!275 (regex!1029 (rule!1751 token!491)) (head!1196 input!2705)) (tail!725 input!2705)))))

(declare-fun b!550057 () Bool)

(declare-fun e!332606 () Bool)

(declare-fun lt!231710 () Bool)

(declare-fun call!38411 () Bool)

(assert (=> b!550057 (= e!332606 (= lt!231710 call!38411))))

(declare-fun b!550058 () Bool)

(declare-fun nullable!359 (Regex!1363) Bool)

(assert (=> b!550058 (= e!332610 (nullable!359 (regex!1029 (rule!1751 token!491))))))

(declare-fun bm!38406 () Bool)

(assert (=> bm!38406 (= call!38411 (isEmpty!3920 input!2705))))

(declare-fun b!550060 () Bool)

(declare-fun e!332611 () Bool)

(declare-fun e!332608 () Bool)

(assert (=> b!550060 (= e!332611 e!332608)))

(declare-fun res!235622 () Bool)

(assert (=> b!550060 (=> (not res!235622) (not e!332608))))

(assert (=> b!550060 (= res!235622 (not lt!231710))))

(declare-fun b!550061 () Bool)

(declare-fun e!332605 () Bool)

(assert (=> b!550061 (= e!332605 (= (head!1196 input!2705) (c!103448 (regex!1029 (rule!1751 token!491)))))))

(declare-fun b!550062 () Bool)

(assert (=> b!550062 (= e!332608 e!332609)))

(declare-fun res!235623 () Bool)

(assert (=> b!550062 (=> res!235623 e!332609)))

(assert (=> b!550062 (= res!235623 call!38411)))

(declare-fun b!550063 () Bool)

(declare-fun res!235616 () Bool)

(assert (=> b!550063 (=> (not res!235616) (not e!332605))))

(assert (=> b!550063 (= res!235616 (isEmpty!3920 (tail!725 input!2705)))))

(declare-fun b!550064 () Bool)

(assert (=> b!550064 (= e!332609 (not (= (head!1196 input!2705) (c!103448 (regex!1029 (rule!1751 token!491))))))))

(declare-fun b!550059 () Bool)

(declare-fun res!235619 () Bool)

(assert (=> b!550059 (=> (not res!235619) (not e!332605))))

(assert (=> b!550059 (= res!235619 (not call!38411))))

(declare-fun d!192090 () Bool)

(assert (=> d!192090 e!332606))

(declare-fun c!103495 () Bool)

(assert (=> d!192090 (= c!103495 ((_ is EmptyExpr!1363) (regex!1029 (rule!1751 token!491))))))

(assert (=> d!192090 (= lt!231710 e!332610)))

(declare-fun c!103496 () Bool)

(assert (=> d!192090 (= c!103496 (isEmpty!3920 input!2705))))

(declare-fun validRegex!454 (Regex!1363) Bool)

(assert (=> d!192090 (validRegex!454 (regex!1029 (rule!1751 token!491)))))

(assert (=> d!192090 (= (matchR!522 (regex!1029 (rule!1751 token!491)) input!2705) lt!231710)))

(declare-fun b!550065 () Bool)

(declare-fun e!332607 () Bool)

(assert (=> b!550065 (= e!332607 (not lt!231710))))

(declare-fun b!550066 () Bool)

(declare-fun res!235618 () Bool)

(assert (=> b!550066 (=> res!235618 e!332611)))

(assert (=> b!550066 (= res!235618 (not ((_ is ElementMatch!1363) (regex!1029 (rule!1751 token!491)))))))

(assert (=> b!550066 (= e!332607 e!332611)))

(declare-fun b!550067 () Bool)

(declare-fun res!235621 () Bool)

(assert (=> b!550067 (=> res!235621 e!332611)))

(assert (=> b!550067 (= res!235621 e!332605)))

(declare-fun res!235617 () Bool)

(assert (=> b!550067 (=> (not res!235617) (not e!332605))))

(assert (=> b!550067 (= res!235617 lt!231710)))

(declare-fun b!550068 () Bool)

(assert (=> b!550068 (= e!332606 e!332607)))

(declare-fun c!103494 () Bool)

(assert (=> b!550068 (= c!103494 ((_ is EmptyLang!1363) (regex!1029 (rule!1751 token!491))))))

(assert (= (and d!192090 c!103496) b!550058))

(assert (= (and d!192090 (not c!103496)) b!550056))

(assert (= (and d!192090 c!103495) b!550057))

(assert (= (and d!192090 (not c!103495)) b!550068))

(assert (= (and b!550068 c!103494) b!550065))

(assert (= (and b!550068 (not c!103494)) b!550066))

(assert (= (and b!550066 (not res!235618)) b!550067))

(assert (= (and b!550067 res!235617) b!550059))

(assert (= (and b!550059 res!235619) b!550063))

(assert (= (and b!550063 res!235616) b!550061))

(assert (= (and b!550067 (not res!235621)) b!550060))

(assert (= (and b!550060 res!235622) b!550062))

(assert (= (and b!550062 (not res!235623)) b!550055))

(assert (= (and b!550055 (not res!235620)) b!550064))

(assert (= (or b!550057 b!550059 b!550062) bm!38406))

(declare-fun m!799321 () Bool)

(assert (=> b!550063 m!799321))

(assert (=> b!550063 m!799321))

(declare-fun m!799323 () Bool)

(assert (=> b!550063 m!799323))

(assert (=> b!550055 m!799321))

(assert (=> b!550055 m!799321))

(assert (=> b!550055 m!799323))

(declare-fun m!799325 () Bool)

(assert (=> b!550064 m!799325))

(assert (=> b!550061 m!799325))

(assert (=> b!550056 m!799325))

(assert (=> b!550056 m!799325))

(declare-fun m!799327 () Bool)

(assert (=> b!550056 m!799327))

(assert (=> b!550056 m!799321))

(assert (=> b!550056 m!799327))

(assert (=> b!550056 m!799321))

(declare-fun m!799329 () Bool)

(assert (=> b!550056 m!799329))

(assert (=> bm!38406 m!799053))

(assert (=> d!192090 m!799053))

(declare-fun m!799331 () Bool)

(assert (=> d!192090 m!799331))

(declare-fun m!799333 () Bool)

(assert (=> b!550058 m!799333))

(assert (=> b!549826 d!192090))

(declare-fun d!192096 () Bool)

(assert (=> d!192096 true))

(declare-fun lt!231713 () Bool)

(declare-fun lambda!15518 () Int)

(declare-fun forall!1525 (List!5443 Int) Bool)

(assert (=> d!192096 (= lt!231713 (forall!1525 rules!3103 lambda!15518))))

(declare-fun e!332616 () Bool)

(assert (=> d!192096 (= lt!231713 e!332616)))

(declare-fun res!235629 () Bool)

(assert (=> d!192096 (=> res!235629 e!332616)))

(assert (=> d!192096 (= res!235629 (not ((_ is Cons!5433) rules!3103)))))

(assert (=> d!192096 (= (rulesValidInductive!362 thiss!22590 rules!3103) lt!231713)))

(declare-fun b!550073 () Bool)

(declare-fun e!332617 () Bool)

(assert (=> b!550073 (= e!332616 e!332617)))

(declare-fun res!235628 () Bool)

(assert (=> b!550073 (=> (not res!235628) (not e!332617))))

(assert (=> b!550073 (= res!235628 (ruleValid!249 thiss!22590 (h!10834 rules!3103)))))

(declare-fun b!550074 () Bool)

(assert (=> b!550074 (= e!332617 (rulesValidInductive!362 thiss!22590 (t!74972 rules!3103)))))

(assert (= (and d!192096 (not res!235629)) b!550073))

(assert (= (and b!550073 res!235628) b!550074))

(declare-fun m!799335 () Bool)

(assert (=> d!192096 m!799335))

(declare-fun m!799337 () Bool)

(assert (=> b!550073 m!799337))

(declare-fun m!799339 () Bool)

(assert (=> b!550074 m!799339))

(assert (=> b!549825 d!192096))

(declare-fun d!192098 () Bool)

(declare-fun lt!231716 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!949 (List!5443) (InoxSet Rule!1858))

(assert (=> d!192098 (= lt!231716 (select (content!949 rules!3103) (rule!1751 (_1!3492 (v!16201 lt!231614)))))))

(declare-fun e!332622 () Bool)

(assert (=> d!192098 (= lt!231716 e!332622)))

(declare-fun res!235634 () Bool)

(assert (=> d!192098 (=> (not res!235634) (not e!332622))))

(assert (=> d!192098 (= res!235634 ((_ is Cons!5433) rules!3103))))

(assert (=> d!192098 (= (contains!1271 rules!3103 (rule!1751 (_1!3492 (v!16201 lt!231614)))) lt!231716)))

(declare-fun b!550081 () Bool)

(declare-fun e!332623 () Bool)

(assert (=> b!550081 (= e!332622 e!332623)))

(declare-fun res!235635 () Bool)

(assert (=> b!550081 (=> res!235635 e!332623)))

(assert (=> b!550081 (= res!235635 (= (h!10834 rules!3103) (rule!1751 (_1!3492 (v!16201 lt!231614)))))))

(declare-fun b!550082 () Bool)

(assert (=> b!550082 (= e!332623 (contains!1271 (t!74972 rules!3103) (rule!1751 (_1!3492 (v!16201 lt!231614)))))))

(assert (= (and d!192098 res!235634) b!550081))

(assert (= (and b!550081 (not res!235635)) b!550082))

(declare-fun m!799341 () Bool)

(assert (=> d!192098 m!799341))

(declare-fun m!799343 () Bool)

(assert (=> d!192098 m!799343))

(declare-fun m!799345 () Bool)

(assert (=> b!550082 m!799345))

(assert (=> b!549827 d!192098))

(declare-fun d!192100 () Bool)

(assert (=> d!192100 (= (rule!1751 (_1!3492 (v!16201 lt!231614))) (rule!1751 token!491))))

(declare-fun lt!231719 () Unit!9612)

(declare-fun choose!3908 (List!5443 Rule!1858 Rule!1858) Unit!9612)

(assert (=> d!192100 (= lt!231719 (choose!3908 rules!3103 (rule!1751 (_1!3492 (v!16201 lt!231614))) (rule!1751 token!491)))))

(assert (=> d!192100 (contains!1271 rules!3103 (rule!1751 (_1!3492 (v!16201 lt!231614))))))

(assert (=> d!192100 (= (lemmaSameIndexThenSameElement!4 rules!3103 (rule!1751 (_1!3492 (v!16201 lt!231614))) (rule!1751 token!491)) lt!231719)))

(declare-fun bs!67807 () Bool)

(assert (= bs!67807 d!192100))

(declare-fun m!799347 () Bool)

(assert (=> bs!67807 m!799347))

(assert (=> bs!67807 m!799147))

(assert (=> b!549806 d!192100))

(declare-fun d!192102 () Bool)

(assert (=> d!192102 (= (isEmpty!3920 (_2!3492 (v!16201 lt!231614))) ((_ is Nil!5432) (_2!3492 (v!16201 lt!231614))))))

(assert (=> b!549807 d!192102))

(declare-fun d!192104 () Bool)

(assert (=> d!192104 (= (isEmpty!3920 input!2705) ((_ is Nil!5432) input!2705))))

(assert (=> b!549829 d!192104))

(declare-fun d!192106 () Bool)

(assert (=> d!192106 (= (get!2058 lt!231650) (v!16201 lt!231650))))

(assert (=> b!549808 d!192106))

(declare-fun d!192108 () Bool)

(declare-fun lt!231720 () Bool)

(assert (=> d!192108 (= lt!231720 (select (content!949 rules!3103) (rule!1751 token!491)))))

(declare-fun e!332624 () Bool)

(assert (=> d!192108 (= lt!231720 e!332624)))

(declare-fun res!235636 () Bool)

(assert (=> d!192108 (=> (not res!235636) (not e!332624))))

(assert (=> d!192108 (= res!235636 ((_ is Cons!5433) rules!3103))))

(assert (=> d!192108 (= (contains!1271 rules!3103 (rule!1751 token!491)) lt!231720)))

(declare-fun b!550083 () Bool)

(declare-fun e!332625 () Bool)

(assert (=> b!550083 (= e!332624 e!332625)))

(declare-fun res!235637 () Bool)

(assert (=> b!550083 (=> res!235637 e!332625)))

(assert (=> b!550083 (= res!235637 (= (h!10834 rules!3103) (rule!1751 token!491)))))

(declare-fun b!550084 () Bool)

(assert (=> b!550084 (= e!332625 (contains!1271 (t!74972 rules!3103) (rule!1751 token!491)))))

(assert (= (and d!192108 res!235636) b!550083))

(assert (= (and b!550083 (not res!235637)) b!550084))

(assert (=> d!192108 m!799341))

(declare-fun m!799349 () Bool)

(assert (=> d!192108 m!799349))

(declare-fun m!799351 () Bool)

(assert (=> b!550084 m!799351))

(assert (=> b!549831 d!192108))

(declare-fun d!192110 () Bool)

(assert (=> d!192110 (= (get!2058 lt!231614) (v!16201 lt!231614))))

(assert (=> b!549810 d!192110))

(declare-fun b!550095 () Bool)

(declare-fun res!235643 () Bool)

(declare-fun e!332630 () Bool)

(assert (=> b!550095 (=> (not res!235643) (not e!332630))))

(declare-fun lt!231723 () List!5442)

(assert (=> b!550095 (= res!235643 (= (size!4349 lt!231723) (+ (size!4349 lt!231613) (size!4349 suffix!1342))))))

(declare-fun d!192112 () Bool)

(assert (=> d!192112 e!332630))

(declare-fun res!235642 () Bool)

(assert (=> d!192112 (=> (not res!235642) (not e!332630))))

(declare-fun content!950 (List!5442) (InoxSet C!3648))

(assert (=> d!192112 (= res!235642 (= (content!950 lt!231723) ((_ map or) (content!950 lt!231613) (content!950 suffix!1342))))))

(declare-fun e!332631 () List!5442)

(assert (=> d!192112 (= lt!231723 e!332631)))

(declare-fun c!103499 () Bool)

(assert (=> d!192112 (= c!103499 ((_ is Nil!5432) lt!231613))))

(assert (=> d!192112 (= (++!1517 lt!231613 suffix!1342) lt!231723)))

(declare-fun b!550093 () Bool)

(assert (=> b!550093 (= e!332631 suffix!1342)))

(declare-fun b!550096 () Bool)

(assert (=> b!550096 (= e!332630 (or (not (= suffix!1342 Nil!5432)) (= lt!231723 lt!231613)))))

(declare-fun b!550094 () Bool)

(assert (=> b!550094 (= e!332631 (Cons!5432 (h!10833 lt!231613) (++!1517 (t!74971 lt!231613) suffix!1342)))))

(assert (= (and d!192112 c!103499) b!550093))

(assert (= (and d!192112 (not c!103499)) b!550094))

(assert (= (and d!192112 res!235642) b!550095))

(assert (= (and b!550095 res!235643) b!550096))

(declare-fun m!799353 () Bool)

(assert (=> b!550095 m!799353))

(assert (=> b!550095 m!799093))

(declare-fun m!799355 () Bool)

(assert (=> b!550095 m!799355))

(declare-fun m!799357 () Bool)

(assert (=> d!192112 m!799357))

(declare-fun m!799359 () Bool)

(assert (=> d!192112 m!799359))

(declare-fun m!799361 () Bool)

(assert (=> d!192112 m!799361))

(declare-fun m!799363 () Bool)

(assert (=> b!550094 m!799363))

(assert (=> b!549832 d!192112))

(declare-fun d!192114 () Bool)

(declare-fun fromListB!532 (List!5442) BalanceConc!3500)

(assert (=> d!192114 (= (seqFromList!1227 lt!231648) (fromListB!532 lt!231648))))

(declare-fun bs!67808 () Bool)

(assert (= bs!67808 d!192114))

(declare-fun m!799365 () Bool)

(assert (=> bs!67808 m!799365))

(assert (=> b!549812 d!192114))

(declare-fun d!192116 () Bool)

(assert (=> d!192116 (= (apply!1304 (transformation!1029 (rule!1751 (_1!3492 (v!16201 lt!231614)))) lt!231611) (dynLambda!3167 (toValue!1876 (transformation!1029 (rule!1751 (_1!3492 (v!16201 lt!231614))))) lt!231611))))

(declare-fun b_lambda!21149 () Bool)

(assert (=> (not b_lambda!21149) (not d!192116)))

(assert (=> d!192116 t!74986))

(declare-fun b_and!53703 () Bool)

(assert (= b_and!53691 (and (=> t!74986 result!53830) b_and!53703)))

(assert (=> d!192116 t!74988))

(declare-fun b_and!53705 () Bool)

(assert (= b_and!53693 (and (=> t!74988 result!53834) b_and!53705)))

(assert (=> d!192116 m!799287))

(assert (=> b!549812 d!192116))

(declare-fun b!550105 () Bool)

(declare-fun e!332638 () Bool)

(declare-fun e!332639 () Bool)

(assert (=> b!550105 (= e!332638 e!332639)))

(declare-fun res!235654 () Bool)

(assert (=> b!550105 (=> (not res!235654) (not e!332639))))

(assert (=> b!550105 (= res!235654 (not ((_ is Nil!5432) lt!231639)))))

(declare-fun b!550108 () Bool)

(declare-fun e!332640 () Bool)

(assert (=> b!550108 (= e!332640 (>= (size!4349 lt!231639) (size!4349 input!2705)))))

(declare-fun b!550106 () Bool)

(declare-fun res!235653 () Bool)

(assert (=> b!550106 (=> (not res!235653) (not e!332639))))

(assert (=> b!550106 (= res!235653 (= (head!1196 input!2705) (head!1196 lt!231639)))))

(declare-fun b!550107 () Bool)

(assert (=> b!550107 (= e!332639 (isPrefix!671 (tail!725 input!2705) (tail!725 lt!231639)))))

(declare-fun d!192118 () Bool)

(assert (=> d!192118 e!332640))

(declare-fun res!235655 () Bool)

(assert (=> d!192118 (=> res!235655 e!332640)))

(declare-fun lt!231726 () Bool)

(assert (=> d!192118 (= res!235655 (not lt!231726))))

(assert (=> d!192118 (= lt!231726 e!332638)))

(declare-fun res!235652 () Bool)

(assert (=> d!192118 (=> res!235652 e!332638)))

(assert (=> d!192118 (= res!235652 ((_ is Nil!5432) input!2705))))

(assert (=> d!192118 (= (isPrefix!671 input!2705 lt!231639) lt!231726)))

(assert (= (and d!192118 (not res!235652)) b!550105))

(assert (= (and b!550105 res!235654) b!550106))

(assert (= (and b!550106 res!235653) b!550107))

(assert (= (and d!192118 (not res!235655)) b!550108))

(declare-fun m!799367 () Bool)

(assert (=> b!550108 m!799367))

(declare-fun m!799369 () Bool)

(assert (=> b!550108 m!799369))

(assert (=> b!550106 m!799325))

(declare-fun m!799371 () Bool)

(assert (=> b!550106 m!799371))

(assert (=> b!550107 m!799321))

(declare-fun m!799373 () Bool)

(assert (=> b!550107 m!799373))

(assert (=> b!550107 m!799321))

(assert (=> b!550107 m!799373))

(declare-fun m!799375 () Bool)

(assert (=> b!550107 m!799375))

(assert (=> b!549812 d!192118))

(declare-fun b!550109 () Bool)

(declare-fun e!332641 () Bool)

(declare-fun e!332642 () Bool)

(assert (=> b!550109 (= e!332641 e!332642)))

(declare-fun res!235658 () Bool)

(assert (=> b!550109 (=> (not res!235658) (not e!332642))))

(assert (=> b!550109 (= res!235658 (not ((_ is Nil!5432) lt!231647)))))

(declare-fun b!550112 () Bool)

(declare-fun e!332643 () Bool)

(assert (=> b!550112 (= e!332643 (>= (size!4349 lt!231647) (size!4349 input!2705)))))

(declare-fun b!550110 () Bool)

(declare-fun res!235657 () Bool)

(assert (=> b!550110 (=> (not res!235657) (not e!332642))))

(assert (=> b!550110 (= res!235657 (= (head!1196 input!2705) (head!1196 lt!231647)))))

(declare-fun b!550111 () Bool)

(assert (=> b!550111 (= e!332642 (isPrefix!671 (tail!725 input!2705) (tail!725 lt!231647)))))

(declare-fun d!192120 () Bool)

(assert (=> d!192120 e!332643))

(declare-fun res!235659 () Bool)

(assert (=> d!192120 (=> res!235659 e!332643)))

(declare-fun lt!231727 () Bool)

(assert (=> d!192120 (= res!235659 (not lt!231727))))

(assert (=> d!192120 (= lt!231727 e!332641)))

(declare-fun res!235656 () Bool)

(assert (=> d!192120 (=> res!235656 e!332641)))

(assert (=> d!192120 (= res!235656 ((_ is Nil!5432) input!2705))))

(assert (=> d!192120 (= (isPrefix!671 input!2705 lt!231647) lt!231727)))

(assert (= (and d!192120 (not res!235656)) b!550109))

(assert (= (and b!550109 res!235658) b!550110))

(assert (= (and b!550110 res!235657) b!550111))

(assert (= (and d!192120 (not res!235659)) b!550112))

(declare-fun m!799377 () Bool)

(assert (=> b!550112 m!799377))

(assert (=> b!550112 m!799369))

(assert (=> b!550110 m!799325))

(declare-fun m!799379 () Bool)

(assert (=> b!550110 m!799379))

(assert (=> b!550111 m!799321))

(declare-fun m!799381 () Bool)

(assert (=> b!550111 m!799381))

(assert (=> b!550111 m!799321))

(assert (=> b!550111 m!799381))

(declare-fun m!799383 () Bool)

(assert (=> b!550111 m!799383))

(assert (=> b!549812 d!192120))

(declare-fun d!192122 () Bool)

(declare-fun lt!231730 () Int)

(assert (=> d!192122 (>= lt!231730 0)))

(declare-fun e!332646 () Int)

(assert (=> d!192122 (= lt!231730 e!332646)))

(declare-fun c!103502 () Bool)

(assert (=> d!192122 (= c!103502 ((_ is Nil!5432) lt!231648))))

(assert (=> d!192122 (= (size!4349 lt!231648) lt!231730)))

(declare-fun b!550117 () Bool)

(assert (=> b!550117 (= e!332646 0)))

(declare-fun b!550118 () Bool)

(assert (=> b!550118 (= e!332646 (+ 1 (size!4349 (t!74971 lt!231648))))))

(assert (= (and d!192122 c!103502) b!550117))

(assert (= (and d!192122 (not c!103502)) b!550118))

(declare-fun m!799385 () Bool)

(assert (=> b!550118 m!799385))

(assert (=> b!549812 d!192122))

(declare-fun b!550119 () Bool)

(declare-fun e!332647 () Bool)

(declare-fun e!332648 () Bool)

(assert (=> b!550119 (= e!332647 e!332648)))

(declare-fun res!235662 () Bool)

(assert (=> b!550119 (=> (not res!235662) (not e!332648))))

(assert (=> b!550119 (= res!235662 (not ((_ is Nil!5432) input!2705)))))

(declare-fun b!550122 () Bool)

(declare-fun e!332649 () Bool)

(assert (=> b!550122 (= e!332649 (>= (size!4349 input!2705) (size!4349 input!2705)))))

(declare-fun b!550120 () Bool)

(declare-fun res!235661 () Bool)

(assert (=> b!550120 (=> (not res!235661) (not e!332648))))

(assert (=> b!550120 (= res!235661 (= (head!1196 input!2705) (head!1196 input!2705)))))

(declare-fun b!550121 () Bool)

(assert (=> b!550121 (= e!332648 (isPrefix!671 (tail!725 input!2705) (tail!725 input!2705)))))

(declare-fun d!192124 () Bool)

(assert (=> d!192124 e!332649))

(declare-fun res!235663 () Bool)

(assert (=> d!192124 (=> res!235663 e!332649)))

(declare-fun lt!231731 () Bool)

(assert (=> d!192124 (= res!235663 (not lt!231731))))

(assert (=> d!192124 (= lt!231731 e!332647)))

(declare-fun res!235660 () Bool)

(assert (=> d!192124 (=> res!235660 e!332647)))

(assert (=> d!192124 (= res!235660 ((_ is Nil!5432) input!2705))))

(assert (=> d!192124 (= (isPrefix!671 input!2705 input!2705) lt!231731)))

(assert (= (and d!192124 (not res!235660)) b!550119))

(assert (= (and b!550119 res!235662) b!550120))

(assert (= (and b!550120 res!235661) b!550121))

(assert (= (and d!192124 (not res!235663)) b!550122))

(assert (=> b!550122 m!799369))

(assert (=> b!550122 m!799369))

(assert (=> b!550120 m!799325))

(assert (=> b!550120 m!799325))

(assert (=> b!550121 m!799321))

(assert (=> b!550121 m!799321))

(assert (=> b!550121 m!799321))

(assert (=> b!550121 m!799321))

(declare-fun m!799387 () Bool)

(assert (=> b!550121 m!799387))

(assert (=> b!549812 d!192124))

(declare-fun d!192126 () Bool)

(declare-fun res!235668 () Bool)

(declare-fun e!332652 () Bool)

(assert (=> d!192126 (=> (not res!235668) (not e!332652))))

(assert (=> d!192126 (= res!235668 (validRegex!454 (regex!1029 (rule!1751 (_1!3492 (v!16201 lt!231614))))))))

(assert (=> d!192126 (= (ruleValid!249 thiss!22590 (rule!1751 (_1!3492 (v!16201 lt!231614)))) e!332652)))

(declare-fun b!550127 () Bool)

(declare-fun res!235669 () Bool)

(assert (=> b!550127 (=> (not res!235669) (not e!332652))))

(assert (=> b!550127 (= res!235669 (not (nullable!359 (regex!1029 (rule!1751 (_1!3492 (v!16201 lt!231614)))))))))

(declare-fun b!550128 () Bool)

(assert (=> b!550128 (= e!332652 (not (= (tag!1291 (rule!1751 (_1!3492 (v!16201 lt!231614)))) (String!7010 ""))))))

(assert (= (and d!192126 res!235668) b!550127))

(assert (= (and b!550127 res!235669) b!550128))

(declare-fun m!799389 () Bool)

(assert (=> d!192126 m!799389))

(declare-fun m!799391 () Bool)

(assert (=> b!550127 m!799391))

(assert (=> b!549812 d!192126))

(declare-fun d!192128 () Bool)

(assert (=> d!192128 (isPrefix!671 lt!231648 (++!1517 lt!231648 (_2!3492 (v!16201 lt!231614))))))

(declare-fun lt!231734 () Unit!9612)

(declare-fun choose!3910 (List!5442 List!5442) Unit!9612)

(assert (=> d!192128 (= lt!231734 (choose!3910 lt!231648 (_2!3492 (v!16201 lt!231614))))))

(assert (=> d!192128 (= (lemmaConcatTwoListThenFirstIsPrefix!522 lt!231648 (_2!3492 (v!16201 lt!231614))) lt!231734)))

(declare-fun bs!67809 () Bool)

(assert (= bs!67809 d!192128))

(assert (=> bs!67809 m!799111))

(assert (=> bs!67809 m!799111))

(declare-fun m!799393 () Bool)

(assert (=> bs!67809 m!799393))

(declare-fun m!799395 () Bool)

(assert (=> bs!67809 m!799395))

(assert (=> b!549812 d!192128))

(declare-fun d!192130 () Bool)

(assert (=> d!192130 (isPrefix!671 input!2705 input!2705)))

(declare-fun lt!231737 () Unit!9612)

(declare-fun choose!3911 (List!5442 List!5442) Unit!9612)

(assert (=> d!192130 (= lt!231737 (choose!3911 input!2705 input!2705))))

(assert (=> d!192130 (= (lemmaIsPrefixRefl!411 input!2705 input!2705) lt!231737)))

(declare-fun bs!67810 () Bool)

(assert (= bs!67810 d!192130))

(assert (=> bs!67810 m!799097))

(declare-fun m!799397 () Bool)

(assert (=> bs!67810 m!799397))

(assert (=> b!549812 d!192130))

(declare-fun d!192132 () Bool)

(assert (=> d!192132 (= (size!4348 (_1!3492 (v!16201 lt!231614))) (size!4349 (originalCharacters!1068 (_1!3492 (v!16201 lt!231614)))))))

(declare-fun Unit!9623 () Unit!9612)

(assert (=> d!192132 (= (lemmaCharactersSize!108 (_1!3492 (v!16201 lt!231614))) Unit!9623)))

(declare-fun bs!67811 () Bool)

(assert (= bs!67811 d!192132))

(assert (=> bs!67811 m!799031))

(assert (=> b!549812 d!192132))

(declare-fun d!192134 () Bool)

(declare-fun e!332655 () Bool)

(assert (=> d!192134 e!332655))

(declare-fun res!235672 () Bool)

(assert (=> d!192134 (=> (not res!235672) (not e!332655))))

(declare-fun semiInverseModEq!397 (Int Int) Bool)

(assert (=> d!192134 (= res!235672 (semiInverseModEq!397 (toChars!1735 (transformation!1029 (rule!1751 token!491))) (toValue!1876 (transformation!1029 (rule!1751 token!491)))))))

(declare-fun Unit!9624 () Unit!9612)

(assert (=> d!192134 (= (lemmaInv!177 (transformation!1029 (rule!1751 token!491))) Unit!9624)))

(declare-fun b!550131 () Bool)

(declare-fun equivClasses!380 (Int Int) Bool)

(assert (=> b!550131 (= e!332655 (equivClasses!380 (toChars!1735 (transformation!1029 (rule!1751 token!491))) (toValue!1876 (transformation!1029 (rule!1751 token!491)))))))

(assert (= (and d!192134 res!235672) b!550131))

(declare-fun m!799399 () Bool)

(assert (=> d!192134 m!799399))

(declare-fun m!799401 () Bool)

(assert (=> b!550131 m!799401))

(assert (=> b!549812 d!192134))

(declare-fun d!192136 () Bool)

(declare-fun lt!231740 () List!5442)

(assert (=> d!192136 (= (++!1517 lt!231648 lt!231740) input!2705)))

(declare-fun e!332658 () List!5442)

(assert (=> d!192136 (= lt!231740 e!332658)))

(declare-fun c!103505 () Bool)

(assert (=> d!192136 (= c!103505 ((_ is Cons!5432) lt!231648))))

(assert (=> d!192136 (>= (size!4349 input!2705) (size!4349 lt!231648))))

(assert (=> d!192136 (= (getSuffix!194 input!2705 lt!231648) lt!231740)))

(declare-fun b!550136 () Bool)

(assert (=> b!550136 (= e!332658 (getSuffix!194 (tail!725 input!2705) (t!74971 lt!231648)))))

(declare-fun b!550137 () Bool)

(assert (=> b!550137 (= e!332658 input!2705)))

(assert (= (and d!192136 c!103505) b!550136))

(assert (= (and d!192136 (not c!103505)) b!550137))

(declare-fun m!799403 () Bool)

(assert (=> d!192136 m!799403))

(assert (=> d!192136 m!799369))

(assert (=> d!192136 m!799125))

(assert (=> b!550136 m!799321))

(assert (=> b!550136 m!799321))

(declare-fun m!799405 () Bool)

(assert (=> b!550136 m!799405))

(assert (=> b!549812 d!192136))

(declare-fun d!192138 () Bool)

(declare-fun lt!231741 () Int)

(assert (=> d!192138 (>= lt!231741 0)))

(declare-fun e!332659 () Int)

(assert (=> d!192138 (= lt!231741 e!332659)))

(declare-fun c!103506 () Bool)

(assert (=> d!192138 (= c!103506 ((_ is Nil!5432) lt!231613))))

(assert (=> d!192138 (= (size!4349 lt!231613) lt!231741)))

(declare-fun b!550138 () Bool)

(assert (=> b!550138 (= e!332659 0)))

(declare-fun b!550139 () Bool)

(assert (=> b!550139 (= e!332659 (+ 1 (size!4349 (t!74971 lt!231613))))))

(assert (= (and d!192138 c!103506) b!550138))

(assert (= (and d!192138 (not c!103506)) b!550139))

(declare-fun m!799407 () Bool)

(assert (=> b!550139 m!799407))

(assert (=> b!549812 d!192138))

(declare-fun d!192140 () Bool)

(assert (=> d!192140 (and (= lt!231613 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!231752 () Unit!9612)

(declare-fun choose!3912 (List!5442 List!5442 List!5442 List!5442) Unit!9612)

(assert (=> d!192140 (= lt!231752 (choose!3912 lt!231613 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!192140 (= (++!1517 lt!231613 suffix!1342) (++!1517 input!2705 suffix!1342))))

(assert (=> d!192140 (= (lemmaConcatSameAndSameSizesThenSameLists!114 lt!231613 suffix!1342 input!2705 suffix!1342) lt!231752)))

(declare-fun bs!67812 () Bool)

(assert (= bs!67812 d!192140))

(declare-fun m!799409 () Bool)

(assert (=> bs!67812 m!799409))

(assert (=> bs!67812 m!799041))

(assert (=> bs!67812 m!799049))

(assert (=> b!549812 d!192140))

(declare-fun d!192142 () Bool)

(assert (=> d!192142 (ruleValid!249 thiss!22590 (rule!1751 (_1!3492 (v!16201 lt!231614))))))

(declare-fun lt!231757 () Unit!9612)

(declare-fun choose!3913 (LexerInterface!915 Rule!1858 List!5443) Unit!9612)

(assert (=> d!192142 (= lt!231757 (choose!3913 thiss!22590 (rule!1751 (_1!3492 (v!16201 lt!231614))) rules!3103))))

(assert (=> d!192142 (contains!1271 rules!3103 (rule!1751 (_1!3492 (v!16201 lt!231614))))))

(assert (=> d!192142 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!108 thiss!22590 (rule!1751 (_1!3492 (v!16201 lt!231614))) rules!3103) lt!231757)))

(declare-fun bs!67813 () Bool)

(assert (= bs!67813 d!192142))

(assert (=> bs!67813 m!799105))

(declare-fun m!799411 () Bool)

(assert (=> bs!67813 m!799411))

(assert (=> bs!67813 m!799147))

(assert (=> b!549812 d!192142))

(declare-fun b!550160 () Bool)

(declare-fun res!235688 () Bool)

(declare-fun e!332668 () Bool)

(assert (=> b!550160 (=> (not res!235688) (not e!332668))))

(declare-fun lt!231758 () List!5442)

(assert (=> b!550160 (= res!235688 (= (size!4349 lt!231758) (+ (size!4349 lt!231648) (size!4349 (_2!3492 (v!16201 lt!231614))))))))

(declare-fun d!192144 () Bool)

(assert (=> d!192144 e!332668))

(declare-fun res!235687 () Bool)

(assert (=> d!192144 (=> (not res!235687) (not e!332668))))

(assert (=> d!192144 (= res!235687 (= (content!950 lt!231758) ((_ map or) (content!950 lt!231648) (content!950 (_2!3492 (v!16201 lt!231614))))))))

(declare-fun e!332669 () List!5442)

(assert (=> d!192144 (= lt!231758 e!332669)))

(declare-fun c!103509 () Bool)

(assert (=> d!192144 (= c!103509 ((_ is Nil!5432) lt!231648))))

(assert (=> d!192144 (= (++!1517 lt!231648 (_2!3492 (v!16201 lt!231614))) lt!231758)))

(declare-fun b!550158 () Bool)

(assert (=> b!550158 (= e!332669 (_2!3492 (v!16201 lt!231614)))))

(declare-fun b!550161 () Bool)

(assert (=> b!550161 (= e!332668 (or (not (= (_2!3492 (v!16201 lt!231614)) Nil!5432)) (= lt!231758 lt!231648)))))

(declare-fun b!550159 () Bool)

(assert (=> b!550159 (= e!332669 (Cons!5432 (h!10833 lt!231648) (++!1517 (t!74971 lt!231648) (_2!3492 (v!16201 lt!231614)))))))

(assert (= (and d!192144 c!103509) b!550158))

(assert (= (and d!192144 (not c!103509)) b!550159))

(assert (= (and d!192144 res!235687) b!550160))

(assert (= (and b!550160 res!235688) b!550161))

(declare-fun m!799413 () Bool)

(assert (=> b!550160 m!799413))

(assert (=> b!550160 m!799125))

(declare-fun m!799415 () Bool)

(assert (=> b!550160 m!799415))

(declare-fun m!799417 () Bool)

(assert (=> d!192144 m!799417))

(declare-fun m!799419 () Bool)

(assert (=> d!192144 m!799419))

(declare-fun m!799421 () Bool)

(assert (=> d!192144 m!799421))

(declare-fun m!799423 () Bool)

(assert (=> b!550159 m!799423))

(assert (=> b!549812 d!192144))

(declare-fun d!192146 () Bool)

(assert (=> d!192146 (= (_2!3492 (v!16201 lt!231614)) lt!231617)))

(declare-fun lt!231761 () Unit!9612)

(declare-fun choose!3915 (List!5442 List!5442 List!5442 List!5442 List!5442) Unit!9612)

(assert (=> d!192146 (= lt!231761 (choose!3915 lt!231648 (_2!3492 (v!16201 lt!231614)) lt!231648 lt!231617 input!2705))))

(assert (=> d!192146 (isPrefix!671 lt!231648 input!2705)))

(assert (=> d!192146 (= (lemmaSamePrefixThenSameSuffix!398 lt!231648 (_2!3492 (v!16201 lt!231614)) lt!231648 lt!231617 input!2705) lt!231761)))

(declare-fun bs!67814 () Bool)

(assert (= bs!67814 d!192146))

(declare-fun m!799425 () Bool)

(assert (=> bs!67814 m!799425))

(assert (=> bs!67814 m!799299))

(assert (=> b!549812 d!192146))

(declare-fun d!192148 () Bool)

(declare-fun list!2253 (Conc!1746) List!5442)

(assert (=> d!192148 (= (list!2251 (charsOf!658 (_1!3492 (v!16201 lt!231614)))) (list!2253 (c!103449 (charsOf!658 (_1!3492 (v!16201 lt!231614))))))))

(declare-fun bs!67815 () Bool)

(assert (= bs!67815 d!192148))

(declare-fun m!799427 () Bool)

(assert (=> bs!67815 m!799427))

(assert (=> b!549812 d!192148))

(declare-fun d!192150 () Bool)

(assert (=> d!192150 (ruleValid!249 thiss!22590 (rule!1751 token!491))))

(declare-fun lt!231762 () Unit!9612)

(assert (=> d!192150 (= lt!231762 (choose!3913 thiss!22590 (rule!1751 token!491) rules!3103))))

(assert (=> d!192150 (contains!1271 rules!3103 (rule!1751 token!491))))

(assert (=> d!192150 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!108 thiss!22590 (rule!1751 token!491) rules!3103) lt!231762)))

(declare-fun bs!67816 () Bool)

(assert (= bs!67816 d!192150))

(assert (=> bs!67816 m!799077))

(declare-fun m!799429 () Bool)

(assert (=> bs!67816 m!799429))

(assert (=> bs!67816 m!799137))

(assert (=> b!549812 d!192150))

(declare-fun d!192152 () Bool)

(assert (=> d!192152 (isPrefix!671 input!2705 (++!1517 input!2705 suffix!1342))))

(declare-fun lt!231763 () Unit!9612)

(assert (=> d!192152 (= lt!231763 (choose!3910 input!2705 suffix!1342))))

(assert (=> d!192152 (= (lemmaConcatTwoListThenFirstIsPrefix!522 input!2705 suffix!1342) lt!231763)))

(declare-fun bs!67817 () Bool)

(assert (= bs!67817 d!192152))

(assert (=> bs!67817 m!799049))

(assert (=> bs!67817 m!799049))

(declare-fun m!799431 () Bool)

(assert (=> bs!67817 m!799431))

(declare-fun m!799433 () Bool)

(assert (=> bs!67817 m!799433))

(assert (=> b!549812 d!192152))

(declare-fun d!192154 () Bool)

(assert (=> d!192154 (isPrefix!671 lt!231613 (++!1517 lt!231613 suffix!1342))))

(declare-fun lt!231764 () Unit!9612)

(assert (=> d!192154 (= lt!231764 (choose!3910 lt!231613 suffix!1342))))

(assert (=> d!192154 (= (lemmaConcatTwoListThenFirstIsPrefix!522 lt!231613 suffix!1342) lt!231764)))

(declare-fun bs!67818 () Bool)

(assert (= bs!67818 d!192154))

(assert (=> bs!67818 m!799041))

(assert (=> bs!67818 m!799041))

(declare-fun m!799435 () Bool)

(assert (=> bs!67818 m!799435))

(declare-fun m!799437 () Bool)

(assert (=> bs!67818 m!799437))

(assert (=> b!549812 d!192154))

(declare-fun d!192156 () Bool)

(declare-fun res!235689 () Bool)

(declare-fun e!332670 () Bool)

(assert (=> d!192156 (=> (not res!235689) (not e!332670))))

(assert (=> d!192156 (= res!235689 (validRegex!454 (regex!1029 (rule!1751 token!491))))))

(assert (=> d!192156 (= (ruleValid!249 thiss!22590 (rule!1751 token!491)) e!332670)))

(declare-fun b!550162 () Bool)

(declare-fun res!235690 () Bool)

(assert (=> b!550162 (=> (not res!235690) (not e!332670))))

(assert (=> b!550162 (= res!235690 (not (nullable!359 (regex!1029 (rule!1751 token!491)))))))

(declare-fun b!550163 () Bool)

(assert (=> b!550163 (= e!332670 (not (= (tag!1291 (rule!1751 token!491)) (String!7010 ""))))))

(assert (= (and d!192156 res!235689) b!550162))

(assert (= (and b!550162 res!235690) b!550163))

(assert (=> d!192156 m!799331))

(assert (=> b!550162 m!799333))

(assert (=> b!549812 d!192156))

(declare-fun b!550173 () Bool)

(declare-fun e!332675 () Bool)

(declare-fun e!332676 () Bool)

(assert (=> b!550173 (= e!332675 e!332676)))

(declare-fun res!235700 () Bool)

(assert (=> b!550173 (=> (not res!235700) (not e!332676))))

(assert (=> b!550173 (= res!235700 (not ((_ is Nil!5432) lt!231647)))))

(declare-fun b!550176 () Bool)

(declare-fun e!332677 () Bool)

(assert (=> b!550176 (= e!332677 (>= (size!4349 lt!231647) (size!4349 lt!231613)))))

(declare-fun b!550174 () Bool)

(declare-fun res!235699 () Bool)

(assert (=> b!550174 (=> (not res!235699) (not e!332676))))

(assert (=> b!550174 (= res!235699 (= (head!1196 lt!231613) (head!1196 lt!231647)))))

(declare-fun b!550175 () Bool)

(assert (=> b!550175 (= e!332676 (isPrefix!671 (tail!725 lt!231613) (tail!725 lt!231647)))))

(declare-fun d!192158 () Bool)

(assert (=> d!192158 e!332677))

(declare-fun res!235701 () Bool)

(assert (=> d!192158 (=> res!235701 e!332677)))

(declare-fun lt!231770 () Bool)

(assert (=> d!192158 (= res!235701 (not lt!231770))))

(assert (=> d!192158 (= lt!231770 e!332675)))

(declare-fun res!235698 () Bool)

(assert (=> d!192158 (=> res!235698 e!332675)))

(assert (=> d!192158 (= res!235698 ((_ is Nil!5432) lt!231613))))

(assert (=> d!192158 (= (isPrefix!671 lt!231613 lt!231647) lt!231770)))

(assert (= (and d!192158 (not res!235698)) b!550173))

(assert (= (and b!550173 res!235700) b!550174))

(assert (= (and b!550174 res!235699) b!550175))

(assert (= (and d!192158 (not res!235701)) b!550176))

(assert (=> b!550176 m!799377))

(assert (=> b!550176 m!799093))

(declare-fun m!799439 () Bool)

(assert (=> b!550174 m!799439))

(assert (=> b!550174 m!799379))

(declare-fun m!799441 () Bool)

(assert (=> b!550175 m!799441))

(assert (=> b!550175 m!799381))

(assert (=> b!550175 m!799441))

(assert (=> b!550175 m!799381))

(declare-fun m!799443 () Bool)

(assert (=> b!550175 m!799443))

(assert (=> b!549812 d!192158))

(declare-fun d!192160 () Bool)

(declare-fun lt!231773 () BalanceConc!3500)

(assert (=> d!192160 (= (list!2251 lt!231773) (originalCharacters!1068 (_1!3492 (v!16201 lt!231614))))))

(assert (=> d!192160 (= lt!231773 (dynLambda!3163 (toChars!1735 (transformation!1029 (rule!1751 (_1!3492 (v!16201 lt!231614))))) (value!34193 (_1!3492 (v!16201 lt!231614)))))))

(assert (=> d!192160 (= (charsOf!658 (_1!3492 (v!16201 lt!231614))) lt!231773)))

(declare-fun b_lambda!21151 () Bool)

(assert (=> (not b_lambda!21151) (not d!192160)))

(declare-fun t!74998 () Bool)

(declare-fun tb!48123 () Bool)

(assert (=> (and b!549796 (= (toChars!1735 (transformation!1029 (h!10834 rules!3103))) (toChars!1735 (transformation!1029 (rule!1751 (_1!3492 (v!16201 lt!231614)))))) t!74998) tb!48123))

(declare-fun b!550177 () Bool)

(declare-fun e!332678 () Bool)

(declare-fun tp!174109 () Bool)

(assert (=> b!550177 (= e!332678 (and (inv!6817 (c!103449 (dynLambda!3163 (toChars!1735 (transformation!1029 (rule!1751 (_1!3492 (v!16201 lt!231614))))) (value!34193 (_1!3492 (v!16201 lt!231614)))))) tp!174109))))

(declare-fun result!53846 () Bool)

(assert (=> tb!48123 (= result!53846 (and (inv!6818 (dynLambda!3163 (toChars!1735 (transformation!1029 (rule!1751 (_1!3492 (v!16201 lt!231614))))) (value!34193 (_1!3492 (v!16201 lt!231614))))) e!332678))))

(assert (= tb!48123 b!550177))

(declare-fun m!799471 () Bool)

(assert (=> b!550177 m!799471))

(declare-fun m!799473 () Bool)

(assert (=> tb!48123 m!799473))

(assert (=> d!192160 t!74998))

(declare-fun b_and!53707 () Bool)

(assert (= b_and!53687 (and (=> t!74998 result!53846) b_and!53707)))

(declare-fun tb!48125 () Bool)

(declare-fun t!75000 () Bool)

(assert (=> (and b!549833 (= (toChars!1735 (transformation!1029 (rule!1751 token!491))) (toChars!1735 (transformation!1029 (rule!1751 (_1!3492 (v!16201 lt!231614)))))) t!75000) tb!48125))

(declare-fun result!53848 () Bool)

(assert (= result!53848 result!53846))

(assert (=> d!192160 t!75000))

(declare-fun b_and!53709 () Bool)

(assert (= b_and!53689 (and (=> t!75000 result!53848) b_and!53709)))

(declare-fun m!799477 () Bool)

(assert (=> d!192160 m!799477))

(declare-fun m!799479 () Bool)

(assert (=> d!192160 m!799479))

(assert (=> b!549812 d!192160))

(declare-fun d!192162 () Bool)

(declare-fun e!332679 () Bool)

(assert (=> d!192162 e!332679))

(declare-fun res!235702 () Bool)

(assert (=> d!192162 (=> (not res!235702) (not e!332679))))

(assert (=> d!192162 (= res!235702 (semiInverseModEq!397 (toChars!1735 (transformation!1029 (rule!1751 (_1!3492 (v!16201 lt!231614))))) (toValue!1876 (transformation!1029 (rule!1751 (_1!3492 (v!16201 lt!231614)))))))))

(declare-fun Unit!9625 () Unit!9612)

(assert (=> d!192162 (= (lemmaInv!177 (transformation!1029 (rule!1751 (_1!3492 (v!16201 lt!231614))))) Unit!9625)))

(declare-fun b!550178 () Bool)

(assert (=> b!550178 (= e!332679 (equivClasses!380 (toChars!1735 (transformation!1029 (rule!1751 (_1!3492 (v!16201 lt!231614))))) (toValue!1876 (transformation!1029 (rule!1751 (_1!3492 (v!16201 lt!231614)))))))))

(assert (= (and d!192162 res!235702) b!550178))

(declare-fun m!799489 () Bool)

(assert (=> d!192162 m!799489))

(declare-fun m!799493 () Bool)

(assert (=> b!550178 m!799493))

(assert (=> b!549812 d!192162))

(declare-fun d!192164 () Bool)

(assert (=> d!192164 (= (size!4348 token!491) (size!4349 (originalCharacters!1068 token!491)))))

(declare-fun Unit!9626 () Unit!9612)

(assert (=> d!192164 (= (lemmaCharactersSize!108 token!491) Unit!9626)))

(declare-fun bs!67819 () Bool)

(assert (= bs!67819 d!192164))

(assert (=> bs!67819 m!799033))

(assert (=> b!549812 d!192164))

(declare-fun b!550179 () Bool)

(declare-fun e!332680 () Bool)

(declare-fun e!332681 () Bool)

(assert (=> b!550179 (= e!332680 e!332681)))

(declare-fun res!235705 () Bool)

(assert (=> b!550179 (=> (not res!235705) (not e!332681))))

(assert (=> b!550179 (= res!235705 (not ((_ is Nil!5432) lt!231616)))))

(declare-fun b!550182 () Bool)

(declare-fun e!332682 () Bool)

(assert (=> b!550182 (= e!332682 (>= (size!4349 lt!231616) (size!4349 lt!231648)))))

(declare-fun b!550180 () Bool)

(declare-fun res!235704 () Bool)

(assert (=> b!550180 (=> (not res!235704) (not e!332681))))

(assert (=> b!550180 (= res!235704 (= (head!1196 lt!231648) (head!1196 lt!231616)))))

(declare-fun b!550181 () Bool)

(assert (=> b!550181 (= e!332681 (isPrefix!671 (tail!725 lt!231648) (tail!725 lt!231616)))))

(declare-fun d!192166 () Bool)

(assert (=> d!192166 e!332682))

(declare-fun res!235706 () Bool)

(assert (=> d!192166 (=> res!235706 e!332682)))

(declare-fun lt!231774 () Bool)

(assert (=> d!192166 (= res!235706 (not lt!231774))))

(assert (=> d!192166 (= lt!231774 e!332680)))

(declare-fun res!235703 () Bool)

(assert (=> d!192166 (=> res!235703 e!332680)))

(assert (=> d!192166 (= res!235703 ((_ is Nil!5432) lt!231648))))

(assert (=> d!192166 (= (isPrefix!671 lt!231648 lt!231616) lt!231774)))

(assert (= (and d!192166 (not res!235703)) b!550179))

(assert (= (and b!550179 res!235705) b!550180))

(assert (= (and b!550180 res!235704) b!550181))

(assert (= (and d!192166 (not res!235706)) b!550182))

(declare-fun m!799499 () Bool)

(assert (=> b!550182 m!799499))

(assert (=> b!550182 m!799125))

(declare-fun m!799501 () Bool)

(assert (=> b!550180 m!799501))

(declare-fun m!799503 () Bool)

(assert (=> b!550180 m!799503))

(declare-fun m!799505 () Bool)

(assert (=> b!550181 m!799505))

(declare-fun m!799507 () Bool)

(assert (=> b!550181 m!799507))

(assert (=> b!550181 m!799505))

(assert (=> b!550181 m!799507))

(declare-fun m!799509 () Bool)

(assert (=> b!550181 m!799509))

(assert (=> b!549812 d!192166))

(declare-fun d!192170 () Bool)

(declare-fun isEmpty!3923 (Option!1379) Bool)

(assert (=> d!192170 (= (isDefined!1191 lt!231650) (not (isEmpty!3923 lt!231650)))))

(declare-fun bs!67820 () Bool)

(assert (= bs!67820 d!192170))

(declare-fun m!799511 () Bool)

(assert (=> bs!67820 m!799511))

(assert (=> b!549835 d!192170))

(declare-fun b!550222 () Bool)

(declare-fun e!332704 () Option!1379)

(declare-fun call!38414 () Option!1379)

(assert (=> b!550222 (= e!332704 call!38414)))

(declare-fun b!550223 () Bool)

(declare-fun e!332705 () Bool)

(declare-fun lt!231806 () Option!1379)

(assert (=> b!550223 (= e!332705 (contains!1271 rules!3103 (rule!1751 (_1!3492 (get!2058 lt!231806)))))))

(declare-fun b!550224 () Bool)

(declare-fun res!235733 () Bool)

(assert (=> b!550224 (=> (not res!235733) (not e!332705))))

(assert (=> b!550224 (= res!235733 (= (list!2251 (charsOf!658 (_1!3492 (get!2058 lt!231806)))) (originalCharacters!1068 (_1!3492 (get!2058 lt!231806)))))))

(declare-fun b!550225 () Bool)

(declare-fun res!235734 () Bool)

(assert (=> b!550225 (=> (not res!235734) (not e!332705))))

(assert (=> b!550225 (= res!235734 (matchR!522 (regex!1029 (rule!1751 (_1!3492 (get!2058 lt!231806)))) (list!2251 (charsOf!658 (_1!3492 (get!2058 lt!231806))))))))

(declare-fun b!550226 () Bool)

(declare-fun lt!231804 () Option!1379)

(declare-fun lt!231807 () Option!1379)

(assert (=> b!550226 (= e!332704 (ite (and ((_ is None!1378) lt!231804) ((_ is None!1378) lt!231807)) None!1378 (ite ((_ is None!1378) lt!231807) lt!231804 (ite ((_ is None!1378) lt!231804) lt!231807 (ite (>= (size!4348 (_1!3492 (v!16201 lt!231804))) (size!4348 (_1!3492 (v!16201 lt!231807)))) lt!231804 lt!231807)))))))

(assert (=> b!550226 (= lt!231804 call!38414)))

(assert (=> b!550226 (= lt!231807 (maxPrefix!613 thiss!22590 (t!74972 rules!3103) lt!231639))))

(declare-fun d!192172 () Bool)

(declare-fun e!332703 () Bool)

(assert (=> d!192172 e!332703))

(declare-fun res!235736 () Bool)

(assert (=> d!192172 (=> res!235736 e!332703)))

(assert (=> d!192172 (= res!235736 (isEmpty!3923 lt!231806))))

(assert (=> d!192172 (= lt!231806 e!332704)))

(declare-fun c!103517 () Bool)

(assert (=> d!192172 (= c!103517 (and ((_ is Cons!5433) rules!3103) ((_ is Nil!5433) (t!74972 rules!3103))))))

(declare-fun lt!231805 () Unit!9612)

(declare-fun lt!231803 () Unit!9612)

(assert (=> d!192172 (= lt!231805 lt!231803)))

(assert (=> d!192172 (isPrefix!671 lt!231639 lt!231639)))

(assert (=> d!192172 (= lt!231803 (lemmaIsPrefixRefl!411 lt!231639 lt!231639))))

(assert (=> d!192172 (rulesValidInductive!362 thiss!22590 rules!3103)))

(assert (=> d!192172 (= (maxPrefix!613 thiss!22590 rules!3103 lt!231639) lt!231806)))

(declare-fun b!550227 () Bool)

(assert (=> b!550227 (= e!332703 e!332705)))

(declare-fun res!235737 () Bool)

(assert (=> b!550227 (=> (not res!235737) (not e!332705))))

(assert (=> b!550227 (= res!235737 (isDefined!1191 lt!231806))))

(declare-fun b!550228 () Bool)

(declare-fun res!235735 () Bool)

(assert (=> b!550228 (=> (not res!235735) (not e!332705))))

(assert (=> b!550228 (= res!235735 (= (++!1517 (list!2251 (charsOf!658 (_1!3492 (get!2058 lt!231806)))) (_2!3492 (get!2058 lt!231806))) lt!231639))))

(declare-fun b!550229 () Bool)

(declare-fun res!235732 () Bool)

(assert (=> b!550229 (=> (not res!235732) (not e!332705))))

(assert (=> b!550229 (= res!235732 (= (value!34193 (_1!3492 (get!2058 lt!231806))) (apply!1304 (transformation!1029 (rule!1751 (_1!3492 (get!2058 lt!231806)))) (seqFromList!1227 (originalCharacters!1068 (_1!3492 (get!2058 lt!231806)))))))))

(declare-fun b!550230 () Bool)

(declare-fun res!235738 () Bool)

(assert (=> b!550230 (=> (not res!235738) (not e!332705))))

(assert (=> b!550230 (= res!235738 (< (size!4349 (_2!3492 (get!2058 lt!231806))) (size!4349 lt!231639)))))

(declare-fun bm!38409 () Bool)

(assert (=> bm!38409 (= call!38414 (maxPrefixOneRule!328 thiss!22590 (h!10834 rules!3103) lt!231639))))

(assert (= (and d!192172 c!103517) b!550222))

(assert (= (and d!192172 (not c!103517)) b!550226))

(assert (= (or b!550222 b!550226) bm!38409))

(assert (= (and d!192172 (not res!235736)) b!550227))

(assert (= (and b!550227 res!235737) b!550224))

(assert (= (and b!550224 res!235733) b!550230))

(assert (= (and b!550230 res!235738) b!550228))

(assert (= (and b!550228 res!235735) b!550229))

(assert (= (and b!550229 res!235732) b!550225))

(assert (= (and b!550225 res!235734) b!550223))

(declare-fun m!799595 () Bool)

(assert (=> d!192172 m!799595))

(declare-fun m!799599 () Bool)

(assert (=> d!192172 m!799599))

(declare-fun m!799601 () Bool)

(assert (=> d!192172 m!799601))

(assert (=> d!192172 m!799149))

(declare-fun m!799603 () Bool)

(assert (=> b!550225 m!799603))

(declare-fun m!799605 () Bool)

(assert (=> b!550225 m!799605))

(assert (=> b!550225 m!799605))

(declare-fun m!799607 () Bool)

(assert (=> b!550225 m!799607))

(assert (=> b!550225 m!799607))

(declare-fun m!799609 () Bool)

(assert (=> b!550225 m!799609))

(assert (=> b!550224 m!799603))

(assert (=> b!550224 m!799605))

(assert (=> b!550224 m!799605))

(assert (=> b!550224 m!799607))

(assert (=> b!550229 m!799603))

(declare-fun m!799611 () Bool)

(assert (=> b!550229 m!799611))

(assert (=> b!550229 m!799611))

(declare-fun m!799613 () Bool)

(assert (=> b!550229 m!799613))

(assert (=> b!550228 m!799603))

(assert (=> b!550228 m!799605))

(assert (=> b!550228 m!799605))

(assert (=> b!550228 m!799607))

(assert (=> b!550228 m!799607))

(declare-fun m!799615 () Bool)

(assert (=> b!550228 m!799615))

(declare-fun m!799617 () Bool)

(assert (=> b!550226 m!799617))

(assert (=> b!550223 m!799603))

(declare-fun m!799619 () Bool)

(assert (=> b!550223 m!799619))

(assert (=> b!550230 m!799603))

(declare-fun m!799621 () Bool)

(assert (=> b!550230 m!799621))

(assert (=> b!550230 m!799367))

(declare-fun m!799623 () Bool)

(assert (=> b!550227 m!799623))

(declare-fun m!799625 () Bool)

(assert (=> bm!38409 m!799625))

(assert (=> b!549835 d!192172))

(declare-fun b!550237 () Bool)

(declare-fun res!235742 () Bool)

(declare-fun e!332708 () Bool)

(assert (=> b!550237 (=> (not res!235742) (not e!332708))))

(declare-fun lt!231809 () List!5442)

(assert (=> b!550237 (= res!235742 (= (size!4349 lt!231809) (+ (size!4349 input!2705) (size!4349 suffix!1342))))))

(declare-fun d!192194 () Bool)

(assert (=> d!192194 e!332708))

(declare-fun res!235741 () Bool)

(assert (=> d!192194 (=> (not res!235741) (not e!332708))))

(assert (=> d!192194 (= res!235741 (= (content!950 lt!231809) ((_ map or) (content!950 input!2705) (content!950 suffix!1342))))))

(declare-fun e!332709 () List!5442)

(assert (=> d!192194 (= lt!231809 e!332709)))

(declare-fun c!103518 () Bool)

(assert (=> d!192194 (= c!103518 ((_ is Nil!5432) input!2705))))

(assert (=> d!192194 (= (++!1517 input!2705 suffix!1342) lt!231809)))

(declare-fun b!550235 () Bool)

(assert (=> b!550235 (= e!332709 suffix!1342)))

(declare-fun b!550238 () Bool)

(assert (=> b!550238 (= e!332708 (or (not (= suffix!1342 Nil!5432)) (= lt!231809 input!2705)))))

(declare-fun b!550236 () Bool)

(assert (=> b!550236 (= e!332709 (Cons!5432 (h!10833 input!2705) (++!1517 (t!74971 input!2705) suffix!1342)))))

(assert (= (and d!192194 c!103518) b!550235))

(assert (= (and d!192194 (not c!103518)) b!550236))

(assert (= (and d!192194 res!235741) b!550237))

(assert (= (and b!550237 res!235742) b!550238))

(declare-fun m!799627 () Bool)

(assert (=> b!550237 m!799627))

(assert (=> b!550237 m!799369))

(assert (=> b!550237 m!799355))

(declare-fun m!799629 () Bool)

(assert (=> d!192194 m!799629))

(declare-fun m!799631 () Bool)

(assert (=> d!192194 m!799631))

(assert (=> d!192194 m!799361))

(declare-fun m!799633 () Bool)

(assert (=> b!550236 m!799633))

(assert (=> b!549835 d!192194))

(declare-fun d!192196 () Bool)

(declare-fun lt!231810 () Int)

(assert (=> d!192196 (>= lt!231810 0)))

(declare-fun e!332712 () Int)

(assert (=> d!192196 (= lt!231810 e!332712)))

(declare-fun c!103519 () Bool)

(assert (=> d!192196 (= c!103519 ((_ is Nil!5432) (originalCharacters!1068 token!491)))))

(assert (=> d!192196 (= (size!4349 (originalCharacters!1068 token!491)) lt!231810)))

(declare-fun b!550241 () Bool)

(assert (=> b!550241 (= e!332712 0)))

(declare-fun b!550242 () Bool)

(assert (=> b!550242 (= e!332712 (+ 1 (size!4349 (t!74971 (originalCharacters!1068 token!491)))))))

(assert (= (and d!192196 c!103519) b!550241))

(assert (= (and d!192196 (not c!103519)) b!550242))

(declare-fun m!799635 () Bool)

(assert (=> b!550242 m!799635))

(assert (=> b!549814 d!192196))

(declare-fun d!192198 () Bool)

(assert (=> d!192198 (= (list!2251 (charsOf!658 token!491)) (list!2253 (c!103449 (charsOf!658 token!491))))))

(declare-fun bs!67826 () Bool)

(assert (= bs!67826 d!192198))

(declare-fun m!799637 () Bool)

(assert (=> bs!67826 m!799637))

(assert (=> b!549815 d!192198))

(declare-fun d!192200 () Bool)

(declare-fun lt!231811 () BalanceConc!3500)

(assert (=> d!192200 (= (list!2251 lt!231811) (originalCharacters!1068 token!491))))

(assert (=> d!192200 (= lt!231811 (dynLambda!3163 (toChars!1735 (transformation!1029 (rule!1751 token!491))) (value!34193 token!491)))))

(assert (=> d!192200 (= (charsOf!658 token!491) lt!231811)))

(declare-fun b_lambda!21159 () Bool)

(assert (=> (not b_lambda!21159) (not d!192200)))

(assert (=> d!192200 t!74974))

(declare-fun b_and!53723 () Bool)

(assert (= b_and!53707 (and (=> t!74974 result!53814) b_and!53723)))

(assert (=> d!192200 t!74976))

(declare-fun b_and!53725 () Bool)

(assert (= b_and!53709 (and (=> t!74976 result!53818) b_and!53725)))

(declare-fun m!799643 () Bool)

(assert (=> d!192200 m!799643))

(assert (=> d!192200 m!799161))

(assert (=> b!549815 d!192200))

(declare-fun d!192204 () Bool)

(assert (=> d!192204 (= (inv!6810 (tag!1291 (rule!1751 token!491))) (= (mod (str.len (value!34192 (tag!1291 (rule!1751 token!491)))) 2) 0))))

(assert (=> b!549795 d!192204))

(declare-fun d!192208 () Bool)

(declare-fun res!235755 () Bool)

(declare-fun e!332719 () Bool)

(assert (=> d!192208 (=> (not res!235755) (not e!332719))))

(assert (=> d!192208 (= res!235755 (semiInverseModEq!397 (toChars!1735 (transformation!1029 (rule!1751 token!491))) (toValue!1876 (transformation!1029 (rule!1751 token!491)))))))

(assert (=> d!192208 (= (inv!6813 (transformation!1029 (rule!1751 token!491))) e!332719)))

(declare-fun b!550255 () Bool)

(assert (=> b!550255 (= e!332719 (equivClasses!380 (toChars!1735 (transformation!1029 (rule!1751 token!491))) (toValue!1876 (transformation!1029 (rule!1751 token!491)))))))

(assert (= (and d!192208 res!235755) b!550255))

(assert (=> d!192208 m!799399))

(assert (=> b!550255 m!799401))

(assert (=> b!549795 d!192208))

(declare-fun d!192210 () Bool)

(assert (=> d!192210 (= (isEmpty!3921 rules!3103) ((_ is Nil!5433) rules!3103))))

(assert (=> b!549816 d!192210))

(declare-fun d!192214 () Bool)

(assert (=> d!192214 (= (inv!6810 (tag!1291 (h!10834 rules!3103))) (= (mod (str.len (value!34192 (tag!1291 (h!10834 rules!3103)))) 2) 0))))

(assert (=> b!549839 d!192214))

(declare-fun d!192216 () Bool)

(declare-fun res!235758 () Bool)

(declare-fun e!332722 () Bool)

(assert (=> d!192216 (=> (not res!235758) (not e!332722))))

(assert (=> d!192216 (= res!235758 (semiInverseModEq!397 (toChars!1735 (transformation!1029 (h!10834 rules!3103))) (toValue!1876 (transformation!1029 (h!10834 rules!3103)))))))

(assert (=> d!192216 (= (inv!6813 (transformation!1029 (h!10834 rules!3103))) e!332722)))

(declare-fun b!550260 () Bool)

(assert (=> b!550260 (= e!332722 (equivClasses!380 (toChars!1735 (transformation!1029 (h!10834 rules!3103))) (toValue!1876 (transformation!1029 (h!10834 rules!3103)))))))

(assert (= (and d!192216 res!235758) b!550260))

(declare-fun m!799685 () Bool)

(assert (=> d!192216 m!799685))

(declare-fun m!799687 () Bool)

(assert (=> b!550260 m!799687))

(assert (=> b!549839 d!192216))

(declare-fun b!550281 () Bool)

(declare-fun e!332738 () Bool)

(declare-fun e!332737 () Bool)

(assert (=> b!550281 (= e!332738 e!332737)))

(declare-fun c!103528 () Bool)

(assert (=> b!550281 (= c!103528 ((_ is IntegerValue!3160) (value!34193 token!491)))))

(declare-fun b!550282 () Bool)

(declare-fun res!235769 () Bool)

(declare-fun e!332736 () Bool)

(assert (=> b!550282 (=> res!235769 e!332736)))

(assert (=> b!550282 (= res!235769 (not ((_ is IntegerValue!3161) (value!34193 token!491))))))

(assert (=> b!550282 (= e!332737 e!332736)))

(declare-fun b!550283 () Bool)

(declare-fun inv!15 (TokenValue!1053) Bool)

(assert (=> b!550283 (= e!332736 (inv!15 (value!34193 token!491)))))

(declare-fun b!550284 () Bool)

(declare-fun inv!17 (TokenValue!1053) Bool)

(assert (=> b!550284 (= e!332737 (inv!17 (value!34193 token!491)))))

(declare-fun b!550285 () Bool)

(declare-fun inv!16 (TokenValue!1053) Bool)

(assert (=> b!550285 (= e!332738 (inv!16 (value!34193 token!491)))))

(declare-fun d!192220 () Bool)

(declare-fun c!103527 () Bool)

(assert (=> d!192220 (= c!103527 ((_ is IntegerValue!3159) (value!34193 token!491)))))

(assert (=> d!192220 (= (inv!21 (value!34193 token!491)) e!332738)))

(assert (= (and d!192220 c!103527) b!550285))

(assert (= (and d!192220 (not c!103527)) b!550281))

(assert (= (and b!550281 c!103528) b!550284))

(assert (= (and b!550281 (not c!103528)) b!550282))

(assert (= (and b!550282 (not res!235769)) b!550283))

(declare-fun m!799691 () Bool)

(assert (=> b!550283 m!799691))

(declare-fun m!799693 () Bool)

(assert (=> b!550284 m!799693))

(declare-fun m!799695 () Bool)

(assert (=> b!550285 m!799695))

(assert (=> b!549818 d!192220))

(declare-fun b!550286 () Bool)

(declare-fun e!332740 () Option!1379)

(declare-fun call!38416 () Option!1379)

(assert (=> b!550286 (= e!332740 call!38416)))

(declare-fun b!550287 () Bool)

(declare-fun e!332741 () Bool)

(declare-fun lt!231824 () Option!1379)

(assert (=> b!550287 (= e!332741 (contains!1271 rules!3103 (rule!1751 (_1!3492 (get!2058 lt!231824)))))))

(declare-fun b!550288 () Bool)

(declare-fun res!235771 () Bool)

(assert (=> b!550288 (=> (not res!235771) (not e!332741))))

(assert (=> b!550288 (= res!235771 (= (list!2251 (charsOf!658 (_1!3492 (get!2058 lt!231824)))) (originalCharacters!1068 (_1!3492 (get!2058 lt!231824)))))))

(declare-fun b!550289 () Bool)

(declare-fun res!235772 () Bool)

(assert (=> b!550289 (=> (not res!235772) (not e!332741))))

(assert (=> b!550289 (= res!235772 (matchR!522 (regex!1029 (rule!1751 (_1!3492 (get!2058 lt!231824)))) (list!2251 (charsOf!658 (_1!3492 (get!2058 lt!231824))))))))

(declare-fun b!550290 () Bool)

(declare-fun lt!231822 () Option!1379)

(declare-fun lt!231825 () Option!1379)

(assert (=> b!550290 (= e!332740 (ite (and ((_ is None!1378) lt!231822) ((_ is None!1378) lt!231825)) None!1378 (ite ((_ is None!1378) lt!231825) lt!231822 (ite ((_ is None!1378) lt!231822) lt!231825 (ite (>= (size!4348 (_1!3492 (v!16201 lt!231822))) (size!4348 (_1!3492 (v!16201 lt!231825)))) lt!231822 lt!231825)))))))

(assert (=> b!550290 (= lt!231822 call!38416)))

(assert (=> b!550290 (= lt!231825 (maxPrefix!613 thiss!22590 (t!74972 rules!3103) input!2705))))

(declare-fun d!192226 () Bool)

(declare-fun e!332739 () Bool)

(assert (=> d!192226 e!332739))

(declare-fun res!235774 () Bool)

(assert (=> d!192226 (=> res!235774 e!332739)))

(assert (=> d!192226 (= res!235774 (isEmpty!3923 lt!231824))))

(assert (=> d!192226 (= lt!231824 e!332740)))

(declare-fun c!103529 () Bool)

(assert (=> d!192226 (= c!103529 (and ((_ is Cons!5433) rules!3103) ((_ is Nil!5433) (t!74972 rules!3103))))))

(declare-fun lt!231823 () Unit!9612)

(declare-fun lt!231821 () Unit!9612)

(assert (=> d!192226 (= lt!231823 lt!231821)))

(assert (=> d!192226 (isPrefix!671 input!2705 input!2705)))

(assert (=> d!192226 (= lt!231821 (lemmaIsPrefixRefl!411 input!2705 input!2705))))

(assert (=> d!192226 (rulesValidInductive!362 thiss!22590 rules!3103)))

(assert (=> d!192226 (= (maxPrefix!613 thiss!22590 rules!3103 input!2705) lt!231824)))

(declare-fun b!550291 () Bool)

(assert (=> b!550291 (= e!332739 e!332741)))

(declare-fun res!235775 () Bool)

(assert (=> b!550291 (=> (not res!235775) (not e!332741))))

(assert (=> b!550291 (= res!235775 (isDefined!1191 lt!231824))))

(declare-fun b!550292 () Bool)

(declare-fun res!235773 () Bool)

(assert (=> b!550292 (=> (not res!235773) (not e!332741))))

(assert (=> b!550292 (= res!235773 (= (++!1517 (list!2251 (charsOf!658 (_1!3492 (get!2058 lt!231824)))) (_2!3492 (get!2058 lt!231824))) input!2705))))

(declare-fun b!550293 () Bool)

(declare-fun res!235770 () Bool)

(assert (=> b!550293 (=> (not res!235770) (not e!332741))))

(assert (=> b!550293 (= res!235770 (= (value!34193 (_1!3492 (get!2058 lt!231824))) (apply!1304 (transformation!1029 (rule!1751 (_1!3492 (get!2058 lt!231824)))) (seqFromList!1227 (originalCharacters!1068 (_1!3492 (get!2058 lt!231824)))))))))

(declare-fun b!550294 () Bool)

(declare-fun res!235776 () Bool)

(assert (=> b!550294 (=> (not res!235776) (not e!332741))))

(assert (=> b!550294 (= res!235776 (< (size!4349 (_2!3492 (get!2058 lt!231824))) (size!4349 input!2705)))))

(declare-fun bm!38411 () Bool)

(assert (=> bm!38411 (= call!38416 (maxPrefixOneRule!328 thiss!22590 (h!10834 rules!3103) input!2705))))

(assert (= (and d!192226 c!103529) b!550286))

(assert (= (and d!192226 (not c!103529)) b!550290))

(assert (= (or b!550286 b!550290) bm!38411))

(assert (= (and d!192226 (not res!235774)) b!550291))

(assert (= (and b!550291 res!235775) b!550288))

(assert (= (and b!550288 res!235771) b!550294))

(assert (= (and b!550294 res!235776) b!550292))

(assert (= (and b!550292 res!235773) b!550293))

(assert (= (and b!550293 res!235770) b!550289))

(assert (= (and b!550289 res!235772) b!550287))

(declare-fun m!799701 () Bool)

(assert (=> d!192226 m!799701))

(assert (=> d!192226 m!799097))

(assert (=> d!192226 m!799117))

(assert (=> d!192226 m!799149))

(declare-fun m!799703 () Bool)

(assert (=> b!550289 m!799703))

(declare-fun m!799705 () Bool)

(assert (=> b!550289 m!799705))

(assert (=> b!550289 m!799705))

(declare-fun m!799707 () Bool)

(assert (=> b!550289 m!799707))

(assert (=> b!550289 m!799707))

(declare-fun m!799709 () Bool)

(assert (=> b!550289 m!799709))

(assert (=> b!550288 m!799703))

(assert (=> b!550288 m!799705))

(assert (=> b!550288 m!799705))

(assert (=> b!550288 m!799707))

(assert (=> b!550293 m!799703))

(declare-fun m!799715 () Bool)

(assert (=> b!550293 m!799715))

(assert (=> b!550293 m!799715))

(declare-fun m!799721 () Bool)

(assert (=> b!550293 m!799721))

(assert (=> b!550292 m!799703))

(assert (=> b!550292 m!799705))

(assert (=> b!550292 m!799705))

(assert (=> b!550292 m!799707))

(assert (=> b!550292 m!799707))

(declare-fun m!799723 () Bool)

(assert (=> b!550292 m!799723))

(declare-fun m!799725 () Bool)

(assert (=> b!550290 m!799725))

(assert (=> b!550287 m!799703))

(declare-fun m!799727 () Bool)

(assert (=> b!550287 m!799727))

(assert (=> b!550294 m!799703))

(declare-fun m!799729 () Bool)

(assert (=> b!550294 m!799729))

(assert (=> b!550294 m!799369))

(declare-fun m!799733 () Bool)

(assert (=> b!550291 m!799733))

(declare-fun m!799739 () Bool)

(assert (=> bm!38411 m!799739))

(assert (=> b!549817 d!192226))

(declare-fun b!550317 () Bool)

(declare-fun e!332757 () Int)

(assert (=> b!550317 (= e!332757 (- 1))))

(declare-fun b!550314 () Bool)

(declare-fun e!332756 () Int)

(assert (=> b!550314 (= e!332756 0)))

(declare-fun d!192232 () Bool)

(declare-fun lt!231835 () Int)

(assert (=> d!192232 (>= lt!231835 0)))

(assert (=> d!192232 (= lt!231835 e!332756)))

(declare-fun c!103534 () Bool)

(assert (=> d!192232 (= c!103534 (and ((_ is Cons!5433) rules!3103) (= (h!10834 rules!3103) (rule!1751 (_1!3492 (v!16201 lt!231614))))))))

(assert (=> d!192232 (contains!1271 rules!3103 (rule!1751 (_1!3492 (v!16201 lt!231614))))))

(assert (=> d!192232 (= (getIndex!30 rules!3103 (rule!1751 (_1!3492 (v!16201 lt!231614)))) lt!231835)))

(declare-fun b!550315 () Bool)

(assert (=> b!550315 (= e!332756 e!332757)))

(declare-fun c!103535 () Bool)

(assert (=> b!550315 (= c!103535 (and ((_ is Cons!5433) rules!3103) (not (= (h!10834 rules!3103) (rule!1751 (_1!3492 (v!16201 lt!231614)))))))))

(declare-fun b!550316 () Bool)

(assert (=> b!550316 (= e!332757 (+ 1 (getIndex!30 (t!74972 rules!3103) (rule!1751 (_1!3492 (v!16201 lt!231614))))))))

(assert (= (and d!192232 c!103534) b!550314))

(assert (= (and d!192232 (not c!103534)) b!550315))

(assert (= (and b!550315 c!103535) b!550316))

(assert (= (and b!550315 (not c!103535)) b!550317))

(assert (=> d!192232 m!799147))

(declare-fun m!799751 () Bool)

(assert (=> b!550316 m!799751))

(assert (=> b!549819 d!192232))

(declare-fun b!550322 () Bool)

(declare-fun e!332760 () Int)

(assert (=> b!550322 (= e!332760 (- 1))))

(declare-fun b!550319 () Bool)

(declare-fun e!332759 () Int)

(assert (=> b!550319 (= e!332759 0)))

(declare-fun d!192240 () Bool)

(declare-fun lt!231836 () Int)

(assert (=> d!192240 (>= lt!231836 0)))

(assert (=> d!192240 (= lt!231836 e!332759)))

(declare-fun c!103536 () Bool)

(assert (=> d!192240 (= c!103536 (and ((_ is Cons!5433) rules!3103) (= (h!10834 rules!3103) (rule!1751 token!491))))))

(assert (=> d!192240 (contains!1271 rules!3103 (rule!1751 token!491))))

(assert (=> d!192240 (= (getIndex!30 rules!3103 (rule!1751 token!491)) lt!231836)))

(declare-fun b!550320 () Bool)

(assert (=> b!550320 (= e!332759 e!332760)))

(declare-fun c!103537 () Bool)

(assert (=> b!550320 (= c!103537 (and ((_ is Cons!5433) rules!3103) (not (= (h!10834 rules!3103) (rule!1751 token!491)))))))

(declare-fun b!550321 () Bool)

(assert (=> b!550321 (= e!332760 (+ 1 (getIndex!30 (t!74972 rules!3103) (rule!1751 token!491))))))

(assert (= (and d!192240 c!103536) b!550319))

(assert (= (and d!192240 (not c!103536)) b!550320))

(assert (= (and b!550320 c!103537) b!550321))

(assert (= (and b!550320 (not c!103537)) b!550322))

(assert (=> d!192240 m!799137))

(declare-fun m!799753 () Bool)

(assert (=> b!550321 m!799753))

(assert (=> b!549819 d!192240))

(declare-fun d!192244 () Bool)

(assert (=> d!192244 (= (isDefined!1191 lt!231614) (not (isEmpty!3923 lt!231614)))))

(declare-fun bs!67830 () Bool)

(assert (= bs!67830 d!192244))

(declare-fun m!799755 () Bool)

(assert (=> bs!67830 m!799755))

(assert (=> b!549798 d!192244))

(declare-fun d!192246 () Bool)

(assert (=> d!192246 (= (maxPrefixOneRule!328 thiss!22590 (rule!1751 token!491) lt!231639) (Some!1378 (tuple2!6457 (Token!1795 (apply!1304 (transformation!1029 (rule!1751 token!491)) (seqFromList!1227 lt!231613)) (rule!1751 token!491) (size!4349 lt!231613) lt!231613) suffix!1342)))))

(declare-fun lt!231855 () Unit!9612)

(declare-fun choose!3920 (LexerInterface!915 List!5443 List!5442 List!5442 List!5442 Rule!1858) Unit!9612)

(assert (=> d!192246 (= lt!231855 (choose!3920 thiss!22590 rules!3103 lt!231613 lt!231639 suffix!1342 (rule!1751 token!491)))))

(assert (=> d!192246 (not (isEmpty!3921 rules!3103))))

(assert (=> d!192246 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!80 thiss!22590 rules!3103 lt!231613 lt!231639 suffix!1342 (rule!1751 token!491)) lt!231855)))

(declare-fun bs!67839 () Bool)

(assert (= bs!67839 d!192246))

(assert (=> bs!67839 m!799093))

(assert (=> bs!67839 m!799019))

(declare-fun m!799807 () Bool)

(assert (=> bs!67839 m!799807))

(declare-fun m!799809 () Bool)

(assert (=> bs!67839 m!799809))

(assert (=> bs!67839 m!799021))

(assert (=> bs!67839 m!799019))

(assert (=> bs!67839 m!799035))

(assert (=> b!549820 d!192246))

(declare-fun d!192276 () Bool)

(assert (=> d!192276 (= (maxPrefixOneRule!328 thiss!22590 (rule!1751 (_1!3492 (v!16201 lt!231614))) input!2705) (Some!1378 (tuple2!6457 (Token!1795 (apply!1304 (transformation!1029 (rule!1751 (_1!3492 (v!16201 lt!231614)))) (seqFromList!1227 lt!231648)) (rule!1751 (_1!3492 (v!16201 lt!231614))) (size!4349 lt!231648) lt!231648) (_2!3492 (v!16201 lt!231614)))))))

(declare-fun lt!231857 () Unit!9612)

(assert (=> d!192276 (= lt!231857 (choose!3920 thiss!22590 rules!3103 lt!231648 input!2705 (_2!3492 (v!16201 lt!231614)) (rule!1751 (_1!3492 (v!16201 lt!231614)))))))

(assert (=> d!192276 (not (isEmpty!3921 rules!3103))))

(assert (=> d!192276 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!80 thiss!22590 rules!3103 lt!231648 input!2705 (_2!3492 (v!16201 lt!231614)) (rule!1751 (_1!3492 (v!16201 lt!231614)))) lt!231857)))

(declare-fun bs!67841 () Bool)

(assert (= bs!67841 d!192276))

(assert (=> bs!67841 m!799125))

(assert (=> bs!67841 m!799073))

(declare-fun m!799813 () Bool)

(assert (=> bs!67841 m!799813))

(declare-fun m!799815 () Bool)

(assert (=> bs!67841 m!799815))

(assert (=> bs!67841 m!799017))

(assert (=> bs!67841 m!799073))

(assert (=> bs!67841 m!799035))

(assert (=> b!549820 d!192276))

(declare-fun d!192282 () Bool)

(assert (=> d!192282 (= (seqFromList!1227 lt!231613) (fromListB!532 lt!231613))))

(declare-fun bs!67842 () Bool)

(assert (= bs!67842 d!192282))

(declare-fun m!799821 () Bool)

(assert (=> bs!67842 m!799821))

(assert (=> b!549820 d!192282))

(declare-fun b!550406 () Bool)

(declare-fun e!332810 () Bool)

(declare-datatypes ((tuple2!6460 0))(
  ( (tuple2!6461 (_1!3494 List!5442) (_2!3494 List!5442)) )
))
(declare-fun findLongestMatchInner!143 (Regex!1363 List!5442 Int List!5442 List!5442 Int) tuple2!6460)

(assert (=> b!550406 (= e!332810 (matchR!522 (regex!1029 (rule!1751 token!491)) (_1!3494 (findLongestMatchInner!143 (regex!1029 (rule!1751 token!491)) Nil!5432 (size!4349 Nil!5432) lt!231639 lt!231639 (size!4349 lt!231639)))))))

(declare-fun b!550407 () Bool)

(declare-fun e!332809 () Option!1379)

(declare-fun lt!231872 () tuple2!6460)

(declare-fun size!4351 (BalanceConc!3500) Int)

(assert (=> b!550407 (= e!332809 (Some!1378 (tuple2!6457 (Token!1795 (apply!1304 (transformation!1029 (rule!1751 token!491)) (seqFromList!1227 (_1!3494 lt!231872))) (rule!1751 token!491) (size!4351 (seqFromList!1227 (_1!3494 lt!231872))) (_1!3494 lt!231872)) (_2!3494 lt!231872))))))

(declare-fun lt!231870 () Unit!9612)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!127 (Regex!1363 List!5442) Unit!9612)

(assert (=> b!550407 (= lt!231870 (longestMatchIsAcceptedByMatchOrIsEmpty!127 (regex!1029 (rule!1751 token!491)) lt!231639))))

(declare-fun res!235827 () Bool)

(assert (=> b!550407 (= res!235827 (isEmpty!3920 (_1!3494 (findLongestMatchInner!143 (regex!1029 (rule!1751 token!491)) Nil!5432 (size!4349 Nil!5432) lt!231639 lt!231639 (size!4349 lt!231639)))))))

(assert (=> b!550407 (=> res!235827 e!332810)))

(assert (=> b!550407 e!332810))

(declare-fun lt!231873 () Unit!9612)

(assert (=> b!550407 (= lt!231873 lt!231870)))

(declare-fun lt!231869 () Unit!9612)

(assert (=> b!550407 (= lt!231869 (lemmaSemiInverse!158 (transformation!1029 (rule!1751 token!491)) (seqFromList!1227 (_1!3494 lt!231872))))))

(declare-fun b!550408 () Bool)

(declare-fun e!332811 () Bool)

(declare-fun e!332808 () Bool)

(assert (=> b!550408 (= e!332811 e!332808)))

(declare-fun res!235826 () Bool)

(assert (=> b!550408 (=> (not res!235826) (not e!332808))))

(declare-fun lt!231871 () Option!1379)

(assert (=> b!550408 (= res!235826 (matchR!522 (regex!1029 (rule!1751 token!491)) (list!2251 (charsOf!658 (_1!3492 (get!2058 lt!231871))))))))

(declare-fun d!192286 () Bool)

(assert (=> d!192286 e!332811))

(declare-fun res!235825 () Bool)

(assert (=> d!192286 (=> res!235825 e!332811)))

(assert (=> d!192286 (= res!235825 (isEmpty!3923 lt!231871))))

(assert (=> d!192286 (= lt!231871 e!332809)))

(declare-fun c!103543 () Bool)

(assert (=> d!192286 (= c!103543 (isEmpty!3920 (_1!3494 lt!231872)))))

(declare-fun findLongestMatch!122 (Regex!1363 List!5442) tuple2!6460)

(assert (=> d!192286 (= lt!231872 (findLongestMatch!122 (regex!1029 (rule!1751 token!491)) lt!231639))))

(assert (=> d!192286 (ruleValid!249 thiss!22590 (rule!1751 token!491))))

(assert (=> d!192286 (= (maxPrefixOneRule!328 thiss!22590 (rule!1751 token!491) lt!231639) lt!231871)))

(declare-fun b!550409 () Bool)

(declare-fun res!235830 () Bool)

(assert (=> b!550409 (=> (not res!235830) (not e!332808))))

(assert (=> b!550409 (= res!235830 (= (value!34193 (_1!3492 (get!2058 lt!231871))) (apply!1304 (transformation!1029 (rule!1751 (_1!3492 (get!2058 lt!231871)))) (seqFromList!1227 (originalCharacters!1068 (_1!3492 (get!2058 lt!231871)))))))))

(declare-fun b!550410 () Bool)

(declare-fun res!235828 () Bool)

(assert (=> b!550410 (=> (not res!235828) (not e!332808))))

(assert (=> b!550410 (= res!235828 (= (++!1517 (list!2251 (charsOf!658 (_1!3492 (get!2058 lt!231871)))) (_2!3492 (get!2058 lt!231871))) lt!231639))))

(declare-fun b!550411 () Bool)

(declare-fun res!235829 () Bool)

(assert (=> b!550411 (=> (not res!235829) (not e!332808))))

(assert (=> b!550411 (= res!235829 (< (size!4349 (_2!3492 (get!2058 lt!231871))) (size!4349 lt!231639)))))

(declare-fun b!550412 () Bool)

(assert (=> b!550412 (= e!332809 None!1378)))

(declare-fun b!550413 () Bool)

(declare-fun res!235831 () Bool)

(assert (=> b!550413 (=> (not res!235831) (not e!332808))))

(assert (=> b!550413 (= res!235831 (= (rule!1751 (_1!3492 (get!2058 lt!231871))) (rule!1751 token!491)))))

(declare-fun b!550414 () Bool)

(assert (=> b!550414 (= e!332808 (= (size!4348 (_1!3492 (get!2058 lt!231871))) (size!4349 (originalCharacters!1068 (_1!3492 (get!2058 lt!231871))))))))

(assert (= (and d!192286 c!103543) b!550412))

(assert (= (and d!192286 (not c!103543)) b!550407))

(assert (= (and b!550407 (not res!235827)) b!550406))

(assert (= (and d!192286 (not res!235825)) b!550408))

(assert (= (and b!550408 res!235826) b!550410))

(assert (= (and b!550410 res!235828) b!550411))

(assert (= (and b!550411 res!235829) b!550413))

(assert (= (and b!550413 res!235831) b!550409))

(assert (= (and b!550409 res!235830) b!550414))

(declare-fun m!799831 () Bool)

(assert (=> b!550411 m!799831))

(declare-fun m!799833 () Bool)

(assert (=> b!550411 m!799833))

(assert (=> b!550411 m!799367))

(declare-fun m!799835 () Bool)

(assert (=> d!192286 m!799835))

(declare-fun m!799837 () Bool)

(assert (=> d!192286 m!799837))

(declare-fun m!799839 () Bool)

(assert (=> d!192286 m!799839))

(assert (=> d!192286 m!799077))

(declare-fun m!799841 () Bool)

(assert (=> b!550406 m!799841))

(assert (=> b!550406 m!799367))

(assert (=> b!550406 m!799841))

(assert (=> b!550406 m!799367))

(declare-fun m!799843 () Bool)

(assert (=> b!550406 m!799843))

(declare-fun m!799845 () Bool)

(assert (=> b!550406 m!799845))

(assert (=> b!550410 m!799831))

(declare-fun m!799847 () Bool)

(assert (=> b!550410 m!799847))

(assert (=> b!550410 m!799847))

(declare-fun m!799849 () Bool)

(assert (=> b!550410 m!799849))

(assert (=> b!550410 m!799849))

(declare-fun m!799851 () Bool)

(assert (=> b!550410 m!799851))

(assert (=> b!550414 m!799831))

(declare-fun m!799853 () Bool)

(assert (=> b!550414 m!799853))

(declare-fun m!799855 () Bool)

(assert (=> b!550407 m!799855))

(assert (=> b!550407 m!799367))

(assert (=> b!550407 m!799841))

(declare-fun m!799857 () Bool)

(assert (=> b!550407 m!799857))

(assert (=> b!550407 m!799855))

(declare-fun m!799859 () Bool)

(assert (=> b!550407 m!799859))

(declare-fun m!799861 () Bool)

(assert (=> b!550407 m!799861))

(assert (=> b!550407 m!799841))

(assert (=> b!550407 m!799367))

(assert (=> b!550407 m!799843))

(assert (=> b!550407 m!799855))

(declare-fun m!799863 () Bool)

(assert (=> b!550407 m!799863))

(assert (=> b!550407 m!799855))

(declare-fun m!799865 () Bool)

(assert (=> b!550407 m!799865))

(assert (=> b!550409 m!799831))

(declare-fun m!799867 () Bool)

(assert (=> b!550409 m!799867))

(assert (=> b!550409 m!799867))

(declare-fun m!799869 () Bool)

(assert (=> b!550409 m!799869))

(assert (=> b!550408 m!799831))

(assert (=> b!550408 m!799847))

(assert (=> b!550408 m!799847))

(assert (=> b!550408 m!799849))

(assert (=> b!550408 m!799849))

(declare-fun m!799871 () Bool)

(assert (=> b!550408 m!799871))

(assert (=> b!550413 m!799831))

(assert (=> b!549820 d!192286))

(declare-fun d!192292 () Bool)

(assert (=> d!192292 (= (apply!1304 (transformation!1029 (rule!1751 token!491)) lt!231633) (dynLambda!3167 (toValue!1876 (transformation!1029 (rule!1751 token!491))) lt!231633))))

(declare-fun b_lambda!21175 () Bool)

(assert (=> (not b_lambda!21175) (not d!192292)))

(declare-fun tb!48151 () Bool)

(declare-fun t!75026 () Bool)

(assert (=> (and b!549796 (= (toValue!1876 (transformation!1029 (h!10834 rules!3103))) (toValue!1876 (transformation!1029 (rule!1751 token!491)))) t!75026) tb!48151))

(declare-fun result!53880 () Bool)

(assert (=> tb!48151 (= result!53880 (inv!21 (dynLambda!3167 (toValue!1876 (transformation!1029 (rule!1751 token!491))) lt!231633)))))

(declare-fun m!799873 () Bool)

(assert (=> tb!48151 m!799873))

(assert (=> d!192292 t!75026))

(declare-fun b_and!53739 () Bool)

(assert (= b_and!53703 (and (=> t!75026 result!53880) b_and!53739)))

(declare-fun t!75028 () Bool)

(declare-fun tb!48153 () Bool)

(assert (=> (and b!549833 (= (toValue!1876 (transformation!1029 (rule!1751 token!491))) (toValue!1876 (transformation!1029 (rule!1751 token!491)))) t!75028) tb!48153))

(declare-fun result!53882 () Bool)

(assert (= result!53882 result!53880))

(assert (=> d!192292 t!75028))

(declare-fun b_and!53741 () Bool)

(assert (= b_and!53705 (and (=> t!75028 result!53882) b_and!53741)))

(declare-fun m!799875 () Bool)

(assert (=> d!192292 m!799875))

(assert (=> b!549820 d!192292))

(declare-fun d!192294 () Bool)

(assert (=> d!192294 (= suffix!1342 lt!231618)))

(declare-fun lt!231874 () Unit!9612)

(assert (=> d!192294 (= lt!231874 (choose!3915 lt!231613 suffix!1342 lt!231613 lt!231618 lt!231639))))

(assert (=> d!192294 (isPrefix!671 lt!231613 lt!231639)))

(assert (=> d!192294 (= (lemmaSamePrefixThenSameSuffix!398 lt!231613 suffix!1342 lt!231613 lt!231618 lt!231639) lt!231874)))

(declare-fun bs!67844 () Bool)

(assert (= bs!67844 d!192294))

(declare-fun m!799877 () Bool)

(assert (=> bs!67844 m!799877))

(declare-fun m!799879 () Bool)

(assert (=> bs!67844 m!799879))

(assert (=> b!549820 d!192294))

(declare-fun bs!67845 () Bool)

(declare-fun d!192296 () Bool)

(assert (= bs!67845 (and d!192296 d!192034)))

(declare-fun lambda!15523 () Int)

(assert (=> bs!67845 (= (and (= (toChars!1735 (transformation!1029 (rule!1751 token!491))) (toChars!1735 (transformation!1029 (rule!1751 (_1!3492 (v!16201 lt!231614)))))) (= (toValue!1876 (transformation!1029 (rule!1751 token!491))) (toValue!1876 (transformation!1029 (rule!1751 (_1!3492 (v!16201 lt!231614))))))) (= lambda!15523 lambda!15512))))

(declare-fun b!550415 () Bool)

(declare-fun e!332813 () Bool)

(assert (=> b!550415 (= e!332813 true)))

(assert (=> d!192296 e!332813))

(assert (= d!192296 b!550415))

(assert (=> b!550415 (< (dynLambda!3164 order!4499 (toValue!1876 (transformation!1029 (rule!1751 token!491)))) (dynLambda!3165 order!4501 lambda!15523))))

(assert (=> b!550415 (< (dynLambda!3166 order!4503 (toChars!1735 (transformation!1029 (rule!1751 token!491)))) (dynLambda!3165 order!4501 lambda!15523))))

(assert (=> d!192296 (= (list!2251 (dynLambda!3163 (toChars!1735 (transformation!1029 (rule!1751 token!491))) (dynLambda!3167 (toValue!1876 (transformation!1029 (rule!1751 token!491))) lt!231633))) (list!2251 lt!231633))))

(declare-fun lt!231875 () Unit!9612)

(assert (=> d!192296 (= lt!231875 (ForallOf!91 lambda!15523 lt!231633))))

(assert (=> d!192296 (= (lemmaSemiInverse!158 (transformation!1029 (rule!1751 token!491)) lt!231633) lt!231875)))

(declare-fun b_lambda!21177 () Bool)

(assert (=> (not b_lambda!21177) (not d!192296)))

(declare-fun tb!48155 () Bool)

(declare-fun t!75030 () Bool)

(assert (=> (and b!549796 (= (toChars!1735 (transformation!1029 (h!10834 rules!3103))) (toChars!1735 (transformation!1029 (rule!1751 token!491)))) t!75030) tb!48155))

(declare-fun b!550416 () Bool)

(declare-fun tp!174149 () Bool)

(declare-fun e!332814 () Bool)

(assert (=> b!550416 (= e!332814 (and (inv!6817 (c!103449 (dynLambda!3163 (toChars!1735 (transformation!1029 (rule!1751 token!491))) (dynLambda!3167 (toValue!1876 (transformation!1029 (rule!1751 token!491))) lt!231633)))) tp!174149))))

(declare-fun result!53884 () Bool)

(assert (=> tb!48155 (= result!53884 (and (inv!6818 (dynLambda!3163 (toChars!1735 (transformation!1029 (rule!1751 token!491))) (dynLambda!3167 (toValue!1876 (transformation!1029 (rule!1751 token!491))) lt!231633))) e!332814))))

(assert (= tb!48155 b!550416))

(declare-fun m!799881 () Bool)

(assert (=> b!550416 m!799881))

(declare-fun m!799883 () Bool)

(assert (=> tb!48155 m!799883))

(assert (=> d!192296 t!75030))

(declare-fun b_and!53743 () Bool)

(assert (= b_and!53723 (and (=> t!75030 result!53884) b_and!53743)))

(declare-fun t!75032 () Bool)

(declare-fun tb!48157 () Bool)

(assert (=> (and b!549833 (= (toChars!1735 (transformation!1029 (rule!1751 token!491))) (toChars!1735 (transformation!1029 (rule!1751 token!491)))) t!75032) tb!48157))

(declare-fun result!53886 () Bool)

(assert (= result!53886 result!53884))

(assert (=> d!192296 t!75032))

(declare-fun b_and!53745 () Bool)

(assert (= b_and!53725 (and (=> t!75032 result!53886) b_and!53745)))

(declare-fun b_lambda!21179 () Bool)

(assert (=> (not b_lambda!21179) (not d!192296)))

(assert (=> d!192296 t!75026))

(declare-fun b_and!53747 () Bool)

(assert (= b_and!53739 (and (=> t!75026 result!53880) b_and!53747)))

(assert (=> d!192296 t!75028))

(declare-fun b_and!53749 () Bool)

(assert (= b_and!53741 (and (=> t!75028 result!53882) b_and!53749)))

(assert (=> d!192296 m!799875))

(declare-fun m!799885 () Bool)

(assert (=> d!192296 m!799885))

(assert (=> d!192296 m!799875))

(declare-fun m!799887 () Bool)

(assert (=> d!192296 m!799887))

(declare-fun m!799889 () Bool)

(assert (=> d!192296 m!799889))

(assert (=> d!192296 m!799885))

(declare-fun m!799891 () Bool)

(assert (=> d!192296 m!799891))

(assert (=> b!549820 d!192296))

(assert (=> b!549820 d!192034))

(declare-fun b!550417 () Bool)

(declare-fun e!332817 () Bool)

(assert (=> b!550417 (= e!332817 (matchR!522 (regex!1029 (rule!1751 (_1!3492 (v!16201 lt!231614)))) (_1!3494 (findLongestMatchInner!143 (regex!1029 (rule!1751 (_1!3492 (v!16201 lt!231614)))) Nil!5432 (size!4349 Nil!5432) input!2705 input!2705 (size!4349 input!2705)))))))

(declare-fun b!550418 () Bool)

(declare-fun e!332816 () Option!1379)

(declare-fun lt!231879 () tuple2!6460)

(assert (=> b!550418 (= e!332816 (Some!1378 (tuple2!6457 (Token!1795 (apply!1304 (transformation!1029 (rule!1751 (_1!3492 (v!16201 lt!231614)))) (seqFromList!1227 (_1!3494 lt!231879))) (rule!1751 (_1!3492 (v!16201 lt!231614))) (size!4351 (seqFromList!1227 (_1!3494 lt!231879))) (_1!3494 lt!231879)) (_2!3494 lt!231879))))))

(declare-fun lt!231877 () Unit!9612)

(assert (=> b!550418 (= lt!231877 (longestMatchIsAcceptedByMatchOrIsEmpty!127 (regex!1029 (rule!1751 (_1!3492 (v!16201 lt!231614)))) input!2705))))

(declare-fun res!235834 () Bool)

(assert (=> b!550418 (= res!235834 (isEmpty!3920 (_1!3494 (findLongestMatchInner!143 (regex!1029 (rule!1751 (_1!3492 (v!16201 lt!231614)))) Nil!5432 (size!4349 Nil!5432) input!2705 input!2705 (size!4349 input!2705)))))))

(assert (=> b!550418 (=> res!235834 e!332817)))

(assert (=> b!550418 e!332817))

(declare-fun lt!231880 () Unit!9612)

(assert (=> b!550418 (= lt!231880 lt!231877)))

(declare-fun lt!231876 () Unit!9612)

(assert (=> b!550418 (= lt!231876 (lemmaSemiInverse!158 (transformation!1029 (rule!1751 (_1!3492 (v!16201 lt!231614)))) (seqFromList!1227 (_1!3494 lt!231879))))))

(declare-fun b!550419 () Bool)

(declare-fun e!332818 () Bool)

(declare-fun e!332815 () Bool)

(assert (=> b!550419 (= e!332818 e!332815)))

(declare-fun res!235833 () Bool)

(assert (=> b!550419 (=> (not res!235833) (not e!332815))))

(declare-fun lt!231878 () Option!1379)

(assert (=> b!550419 (= res!235833 (matchR!522 (regex!1029 (rule!1751 (_1!3492 (v!16201 lt!231614)))) (list!2251 (charsOf!658 (_1!3492 (get!2058 lt!231878))))))))

(declare-fun d!192298 () Bool)

(assert (=> d!192298 e!332818))

(declare-fun res!235832 () Bool)

(assert (=> d!192298 (=> res!235832 e!332818)))

(assert (=> d!192298 (= res!235832 (isEmpty!3923 lt!231878))))

(assert (=> d!192298 (= lt!231878 e!332816)))

(declare-fun c!103544 () Bool)

(assert (=> d!192298 (= c!103544 (isEmpty!3920 (_1!3494 lt!231879)))))

(assert (=> d!192298 (= lt!231879 (findLongestMatch!122 (regex!1029 (rule!1751 (_1!3492 (v!16201 lt!231614)))) input!2705))))

(assert (=> d!192298 (ruleValid!249 thiss!22590 (rule!1751 (_1!3492 (v!16201 lt!231614))))))

(assert (=> d!192298 (= (maxPrefixOneRule!328 thiss!22590 (rule!1751 (_1!3492 (v!16201 lt!231614))) input!2705) lt!231878)))

(declare-fun b!550420 () Bool)

(declare-fun res!235837 () Bool)

(assert (=> b!550420 (=> (not res!235837) (not e!332815))))

(assert (=> b!550420 (= res!235837 (= (value!34193 (_1!3492 (get!2058 lt!231878))) (apply!1304 (transformation!1029 (rule!1751 (_1!3492 (get!2058 lt!231878)))) (seqFromList!1227 (originalCharacters!1068 (_1!3492 (get!2058 lt!231878)))))))))

(declare-fun b!550421 () Bool)

(declare-fun res!235835 () Bool)

(assert (=> b!550421 (=> (not res!235835) (not e!332815))))

(assert (=> b!550421 (= res!235835 (= (++!1517 (list!2251 (charsOf!658 (_1!3492 (get!2058 lt!231878)))) (_2!3492 (get!2058 lt!231878))) input!2705))))

(declare-fun b!550422 () Bool)

(declare-fun res!235836 () Bool)

(assert (=> b!550422 (=> (not res!235836) (not e!332815))))

(assert (=> b!550422 (= res!235836 (< (size!4349 (_2!3492 (get!2058 lt!231878))) (size!4349 input!2705)))))

(declare-fun b!550423 () Bool)

(assert (=> b!550423 (= e!332816 None!1378)))

(declare-fun b!550424 () Bool)

(declare-fun res!235838 () Bool)

(assert (=> b!550424 (=> (not res!235838) (not e!332815))))

(assert (=> b!550424 (= res!235838 (= (rule!1751 (_1!3492 (get!2058 lt!231878))) (rule!1751 (_1!3492 (v!16201 lt!231614)))))))

(declare-fun b!550425 () Bool)

(assert (=> b!550425 (= e!332815 (= (size!4348 (_1!3492 (get!2058 lt!231878))) (size!4349 (originalCharacters!1068 (_1!3492 (get!2058 lt!231878))))))))

(assert (= (and d!192298 c!103544) b!550423))

(assert (= (and d!192298 (not c!103544)) b!550418))

(assert (= (and b!550418 (not res!235834)) b!550417))

(assert (= (and d!192298 (not res!235832)) b!550419))

(assert (= (and b!550419 res!235833) b!550421))

(assert (= (and b!550421 res!235835) b!550422))

(assert (= (and b!550422 res!235836) b!550424))

(assert (= (and b!550424 res!235838) b!550420))

(assert (= (and b!550420 res!235837) b!550425))

(declare-fun m!799893 () Bool)

(assert (=> b!550422 m!799893))

(declare-fun m!799895 () Bool)

(assert (=> b!550422 m!799895))

(assert (=> b!550422 m!799369))

(declare-fun m!799897 () Bool)

(assert (=> d!192298 m!799897))

(declare-fun m!799899 () Bool)

(assert (=> d!192298 m!799899))

(declare-fun m!799901 () Bool)

(assert (=> d!192298 m!799901))

(assert (=> d!192298 m!799105))

(assert (=> b!550417 m!799841))

(assert (=> b!550417 m!799369))

(assert (=> b!550417 m!799841))

(assert (=> b!550417 m!799369))

(declare-fun m!799903 () Bool)

(assert (=> b!550417 m!799903))

(declare-fun m!799905 () Bool)

(assert (=> b!550417 m!799905))

(assert (=> b!550421 m!799893))

(declare-fun m!799907 () Bool)

(assert (=> b!550421 m!799907))

(assert (=> b!550421 m!799907))

(declare-fun m!799909 () Bool)

(assert (=> b!550421 m!799909))

(assert (=> b!550421 m!799909))

(declare-fun m!799911 () Bool)

(assert (=> b!550421 m!799911))

(assert (=> b!550425 m!799893))

(declare-fun m!799913 () Bool)

(assert (=> b!550425 m!799913))

(declare-fun m!799915 () Bool)

(assert (=> b!550418 m!799915))

(assert (=> b!550418 m!799369))

(assert (=> b!550418 m!799841))

(declare-fun m!799917 () Bool)

(assert (=> b!550418 m!799917))

(assert (=> b!550418 m!799915))

(declare-fun m!799919 () Bool)

(assert (=> b!550418 m!799919))

(declare-fun m!799921 () Bool)

(assert (=> b!550418 m!799921))

(assert (=> b!550418 m!799841))

(assert (=> b!550418 m!799369))

(assert (=> b!550418 m!799903))

(assert (=> b!550418 m!799915))

(declare-fun m!799923 () Bool)

(assert (=> b!550418 m!799923))

(assert (=> b!550418 m!799915))

(declare-fun m!799925 () Bool)

(assert (=> b!550418 m!799925))

(assert (=> b!550420 m!799893))

(declare-fun m!799927 () Bool)

(assert (=> b!550420 m!799927))

(assert (=> b!550420 m!799927))

(declare-fun m!799929 () Bool)

(assert (=> b!550420 m!799929))

(assert (=> b!550419 m!799893))

(assert (=> b!550419 m!799907))

(assert (=> b!550419 m!799907))

(assert (=> b!550419 m!799909))

(assert (=> b!550419 m!799909))

(declare-fun m!799931 () Bool)

(assert (=> b!550419 m!799931))

(assert (=> b!550424 m!799893))

(assert (=> b!549820 d!192298))

(declare-fun d!192300 () Bool)

(declare-fun lt!231881 () List!5442)

(assert (=> d!192300 (= (++!1517 lt!231613 lt!231881) lt!231639)))

(declare-fun e!332819 () List!5442)

(assert (=> d!192300 (= lt!231881 e!332819)))

(declare-fun c!103545 () Bool)

(assert (=> d!192300 (= c!103545 ((_ is Cons!5432) lt!231613))))

(assert (=> d!192300 (>= (size!4349 lt!231639) (size!4349 lt!231613))))

(assert (=> d!192300 (= (getSuffix!194 lt!231639 lt!231613) lt!231881)))

(declare-fun b!550426 () Bool)

(assert (=> b!550426 (= e!332819 (getSuffix!194 (tail!725 lt!231639) (t!74971 lt!231613)))))

(declare-fun b!550427 () Bool)

(assert (=> b!550427 (= e!332819 lt!231639)))

(assert (= (and d!192300 c!103545) b!550426))

(assert (= (and d!192300 (not c!103545)) b!550427))

(declare-fun m!799933 () Bool)

(assert (=> d!192300 m!799933))

(assert (=> d!192300 m!799367))

(assert (=> d!192300 m!799093))

(assert (=> b!550426 m!799373))

(assert (=> b!550426 m!799373))

(declare-fun m!799935 () Bool)

(assert (=> b!550426 m!799935))

(assert (=> b!549820 d!192300))

(assert (=> b!549821 d!192090))

(declare-fun d!192302 () Bool)

(assert (=> d!192302 (not (matchR!522 (regex!1029 (rule!1751 token!491)) input!2705))))

(declare-fun lt!231884 () Unit!9612)

(declare-fun choose!3922 (LexerInterface!915 List!5443 Rule!1858 List!5442 List!5442 Rule!1858) Unit!9612)

(assert (=> d!192302 (= lt!231884 (choose!3922 thiss!22590 rules!3103 (rule!1751 (_1!3492 (v!16201 lt!231614))) input!2705 input!2705 (rule!1751 token!491)))))

(assert (=> d!192302 (isPrefix!671 input!2705 input!2705)))

(assert (=> d!192302 (= (lemmaMaxPrefNoSmallerRuleMatches!12 thiss!22590 rules!3103 (rule!1751 (_1!3492 (v!16201 lt!231614))) input!2705 input!2705 (rule!1751 token!491)) lt!231884)))

(declare-fun bs!67846 () Bool)

(assert (= bs!67846 d!192302))

(assert (=> bs!67846 m!799061))

(declare-fun m!799937 () Bool)

(assert (=> bs!67846 m!799937))

(assert (=> bs!67846 m!799097))

(assert (=> b!549821 d!192302))

(declare-fun b!550428 () Bool)

(declare-fun res!235843 () Bool)

(declare-fun e!332824 () Bool)

(assert (=> b!550428 (=> res!235843 e!332824)))

(assert (=> b!550428 (= res!235843 (not (isEmpty!3920 (tail!725 input!2705))))))

(declare-fun b!550429 () Bool)

(declare-fun e!332825 () Bool)

(assert (=> b!550429 (= e!332825 (matchR!522 (derivativeStep!275 (regex!1029 (rule!1751 (_1!3492 (v!16201 lt!231614)))) (head!1196 input!2705)) (tail!725 input!2705)))))

(declare-fun b!550430 () Bool)

(declare-fun e!332821 () Bool)

(declare-fun lt!231885 () Bool)

(declare-fun call!38417 () Bool)

(assert (=> b!550430 (= e!332821 (= lt!231885 call!38417))))

(declare-fun b!550431 () Bool)

(assert (=> b!550431 (= e!332825 (nullable!359 (regex!1029 (rule!1751 (_1!3492 (v!16201 lt!231614))))))))

(declare-fun bm!38412 () Bool)

(assert (=> bm!38412 (= call!38417 (isEmpty!3920 input!2705))))

(declare-fun b!550433 () Bool)

(declare-fun e!332826 () Bool)

(declare-fun e!332823 () Bool)

(assert (=> b!550433 (= e!332826 e!332823)))

(declare-fun res!235845 () Bool)

(assert (=> b!550433 (=> (not res!235845) (not e!332823))))

(assert (=> b!550433 (= res!235845 (not lt!231885))))

(declare-fun b!550434 () Bool)

(declare-fun e!332820 () Bool)

(assert (=> b!550434 (= e!332820 (= (head!1196 input!2705) (c!103448 (regex!1029 (rule!1751 (_1!3492 (v!16201 lt!231614)))))))))

(declare-fun b!550435 () Bool)

(assert (=> b!550435 (= e!332823 e!332824)))

(declare-fun res!235846 () Bool)

(assert (=> b!550435 (=> res!235846 e!332824)))

(assert (=> b!550435 (= res!235846 call!38417)))

(declare-fun b!550436 () Bool)

(declare-fun res!235839 () Bool)

(assert (=> b!550436 (=> (not res!235839) (not e!332820))))

(assert (=> b!550436 (= res!235839 (isEmpty!3920 (tail!725 input!2705)))))

(declare-fun b!550437 () Bool)

(assert (=> b!550437 (= e!332824 (not (= (head!1196 input!2705) (c!103448 (regex!1029 (rule!1751 (_1!3492 (v!16201 lt!231614))))))))))

(declare-fun b!550432 () Bool)

(declare-fun res!235842 () Bool)

(assert (=> b!550432 (=> (not res!235842) (not e!332820))))

(assert (=> b!550432 (= res!235842 (not call!38417))))

(declare-fun d!192304 () Bool)

(assert (=> d!192304 e!332821))

(declare-fun c!103547 () Bool)

(assert (=> d!192304 (= c!103547 ((_ is EmptyExpr!1363) (regex!1029 (rule!1751 (_1!3492 (v!16201 lt!231614))))))))

(assert (=> d!192304 (= lt!231885 e!332825)))

(declare-fun c!103548 () Bool)

(assert (=> d!192304 (= c!103548 (isEmpty!3920 input!2705))))

(assert (=> d!192304 (validRegex!454 (regex!1029 (rule!1751 (_1!3492 (v!16201 lt!231614)))))))

(assert (=> d!192304 (= (matchR!522 (regex!1029 (rule!1751 (_1!3492 (v!16201 lt!231614)))) input!2705) lt!231885)))

(declare-fun b!550438 () Bool)

(declare-fun e!332822 () Bool)

(assert (=> b!550438 (= e!332822 (not lt!231885))))

(declare-fun b!550439 () Bool)

(declare-fun res!235841 () Bool)

(assert (=> b!550439 (=> res!235841 e!332826)))

(assert (=> b!550439 (= res!235841 (not ((_ is ElementMatch!1363) (regex!1029 (rule!1751 (_1!3492 (v!16201 lt!231614)))))))))

(assert (=> b!550439 (= e!332822 e!332826)))

(declare-fun b!550440 () Bool)

(declare-fun res!235844 () Bool)

(assert (=> b!550440 (=> res!235844 e!332826)))

(assert (=> b!550440 (= res!235844 e!332820)))

(declare-fun res!235840 () Bool)

(assert (=> b!550440 (=> (not res!235840) (not e!332820))))

(assert (=> b!550440 (= res!235840 lt!231885)))

(declare-fun b!550441 () Bool)

(assert (=> b!550441 (= e!332821 e!332822)))

(declare-fun c!103546 () Bool)

(assert (=> b!550441 (= c!103546 ((_ is EmptyLang!1363) (regex!1029 (rule!1751 (_1!3492 (v!16201 lt!231614))))))))

(assert (= (and d!192304 c!103548) b!550431))

(assert (= (and d!192304 (not c!103548)) b!550429))

(assert (= (and d!192304 c!103547) b!550430))

(assert (= (and d!192304 (not c!103547)) b!550441))

(assert (= (and b!550441 c!103546) b!550438))

(assert (= (and b!550441 (not c!103546)) b!550439))

(assert (= (and b!550439 (not res!235841)) b!550440))

(assert (= (and b!550440 res!235840) b!550432))

(assert (= (and b!550432 res!235842) b!550436))

(assert (= (and b!550436 res!235839) b!550434))

(assert (= (and b!550440 (not res!235844)) b!550433))

(assert (= (and b!550433 res!235845) b!550435))

(assert (= (and b!550435 (not res!235846)) b!550428))

(assert (= (and b!550428 (not res!235843)) b!550437))

(assert (= (or b!550430 b!550432 b!550435) bm!38412))

(assert (=> b!550436 m!799321))

(assert (=> b!550436 m!799321))

(assert (=> b!550436 m!799323))

(assert (=> b!550428 m!799321))

(assert (=> b!550428 m!799321))

(assert (=> b!550428 m!799323))

(assert (=> b!550437 m!799325))

(assert (=> b!550434 m!799325))

(assert (=> b!550429 m!799325))

(assert (=> b!550429 m!799325))

(declare-fun m!799939 () Bool)

(assert (=> b!550429 m!799939))

(assert (=> b!550429 m!799321))

(assert (=> b!550429 m!799939))

(assert (=> b!550429 m!799321))

(declare-fun m!799941 () Bool)

(assert (=> b!550429 m!799941))

(assert (=> bm!38412 m!799053))

(assert (=> d!192304 m!799053))

(assert (=> d!192304 m!799389))

(assert (=> b!550431 m!799391))

(assert (=> b!549800 d!192304))

(declare-fun d!192306 () Bool)

(assert (=> d!192306 (not (matchR!522 (regex!1029 (rule!1751 (_1!3492 (v!16201 lt!231614)))) input!2705))))

(declare-fun lt!231886 () Unit!9612)

(assert (=> d!192306 (= lt!231886 (choose!3922 thiss!22590 rules!3103 (rule!1751 token!491) input!2705 lt!231639 (rule!1751 (_1!3492 (v!16201 lt!231614)))))))

(assert (=> d!192306 (isPrefix!671 input!2705 lt!231639)))

(assert (=> d!192306 (= (lemmaMaxPrefNoSmallerRuleMatches!12 thiss!22590 rules!3103 (rule!1751 token!491) input!2705 lt!231639 (rule!1751 (_1!3492 (v!16201 lt!231614)))) lt!231886)))

(declare-fun bs!67847 () Bool)

(assert (= bs!67847 d!192306))

(assert (=> bs!67847 m!799129))

(declare-fun m!799943 () Bool)

(assert (=> bs!67847 m!799943))

(assert (=> bs!67847 m!799085))

(assert (=> b!549800 d!192306))

(declare-fun d!192308 () Bool)

(declare-fun lt!231887 () Int)

(assert (=> d!192308 (>= lt!231887 0)))

(declare-fun e!332827 () Int)

(assert (=> d!192308 (= lt!231887 e!332827)))

(declare-fun c!103549 () Bool)

(assert (=> d!192308 (= c!103549 ((_ is Nil!5432) (originalCharacters!1068 (_1!3492 (v!16201 lt!231614)))))))

(assert (=> d!192308 (= (size!4349 (originalCharacters!1068 (_1!3492 (v!16201 lt!231614)))) lt!231887)))

(declare-fun b!550442 () Bool)

(assert (=> b!550442 (= e!332827 0)))

(declare-fun b!550443 () Bool)

(assert (=> b!550443 (= e!332827 (+ 1 (size!4349 (t!74971 (originalCharacters!1068 (_1!3492 (v!16201 lt!231614)))))))))

(assert (= (and d!192308 c!103549) b!550442))

(assert (= (and d!192308 (not c!103549)) b!550443))

(declare-fun m!799945 () Bool)

(assert (=> b!550443 m!799945))

(assert (=> b!549802 d!192308))

(declare-fun b!550448 () Bool)

(declare-fun e!332830 () Bool)

(declare-fun tp!174152 () Bool)

(assert (=> b!550448 (= e!332830 (and tp_is_empty!3081 tp!174152))))

(assert (=> b!549809 (= tp!174100 e!332830)))

(assert (= (and b!549809 ((_ is Cons!5432) (t!74971 suffix!1342))) b!550448))

(declare-fun b!550461 () Bool)

(declare-fun e!332833 () Bool)

(declare-fun tp!174165 () Bool)

(assert (=> b!550461 (= e!332833 tp!174165)))

(declare-fun b!550462 () Bool)

(declare-fun tp!174167 () Bool)

(declare-fun tp!174163 () Bool)

(assert (=> b!550462 (= e!332833 (and tp!174167 tp!174163))))

(assert (=> b!549795 (= tp!174093 e!332833)))

(declare-fun b!550460 () Bool)

(declare-fun tp!174164 () Bool)

(declare-fun tp!174166 () Bool)

(assert (=> b!550460 (= e!332833 (and tp!174164 tp!174166))))

(declare-fun b!550459 () Bool)

(assert (=> b!550459 (= e!332833 tp_is_empty!3081)))

(assert (= (and b!549795 ((_ is ElementMatch!1363) (regex!1029 (rule!1751 token!491)))) b!550459))

(assert (= (and b!549795 ((_ is Concat!2416) (regex!1029 (rule!1751 token!491)))) b!550460))

(assert (= (and b!549795 ((_ is Star!1363) (regex!1029 (rule!1751 token!491)))) b!550461))

(assert (= (and b!549795 ((_ is Union!1363) (regex!1029 (rule!1751 token!491)))) b!550462))

(declare-fun b!550473 () Bool)

(declare-fun b_free!15341 () Bool)

(declare-fun b_next!15357 () Bool)

(assert (=> b!550473 (= b_free!15341 (not b_next!15357))))

(declare-fun tb!48159 () Bool)

(declare-fun t!75034 () Bool)

(assert (=> (and b!550473 (= (toValue!1876 (transformation!1029 (h!10834 (t!74972 rules!3103)))) (toValue!1876 (transformation!1029 (rule!1751 (_1!3492 (v!16201 lt!231614)))))) t!75034) tb!48159))

(declare-fun result!53894 () Bool)

(assert (= result!53894 result!53830))

(assert (=> d!192034 t!75034))

(assert (=> d!192116 t!75034))

(declare-fun tb!48161 () Bool)

(declare-fun t!75036 () Bool)

(assert (=> (and b!550473 (= (toValue!1876 (transformation!1029 (h!10834 (t!74972 rules!3103)))) (toValue!1876 (transformation!1029 (rule!1751 token!491)))) t!75036) tb!48161))

(declare-fun result!53896 () Bool)

(assert (= result!53896 result!53880))

(assert (=> d!192292 t!75036))

(assert (=> d!192296 t!75036))

(declare-fun tp!174178 () Bool)

(declare-fun b_and!53751 () Bool)

(assert (=> b!550473 (= tp!174178 (and (=> t!75034 result!53894) (=> t!75036 result!53896) b_and!53751))))

(declare-fun b_free!15343 () Bool)

(declare-fun b_next!15359 () Bool)

(assert (=> b!550473 (= b_free!15343 (not b_next!15359))))

(declare-fun tb!48163 () Bool)

(declare-fun t!75038 () Bool)

(assert (=> (and b!550473 (= (toChars!1735 (transformation!1029 (h!10834 (t!74972 rules!3103)))) (toChars!1735 (transformation!1029 (rule!1751 (_1!3492 (v!16201 lt!231614)))))) t!75038) tb!48163))

(declare-fun result!53898 () Bool)

(assert (= result!53898 result!53826))

(assert (=> d!192034 t!75038))

(declare-fun tb!48165 () Bool)

(declare-fun t!75040 () Bool)

(assert (=> (and b!550473 (= (toChars!1735 (transformation!1029 (h!10834 (t!74972 rules!3103)))) (toChars!1735 (transformation!1029 (rule!1751 token!491)))) t!75040) tb!48165))

(declare-fun result!53900 () Bool)

(assert (= result!53900 result!53814))

(assert (=> d!192200 t!75040))

(assert (=> b!549847 t!75040))

(declare-fun tb!48167 () Bool)

(declare-fun t!75042 () Bool)

(assert (=> (and b!550473 (= (toChars!1735 (transformation!1029 (h!10834 (t!74972 rules!3103)))) (toChars!1735 (transformation!1029 (rule!1751 (_1!3492 (v!16201 lt!231614)))))) t!75042) tb!48167))

(declare-fun result!53902 () Bool)

(assert (= result!53902 result!53846))

(assert (=> d!192160 t!75042))

(declare-fun tb!48169 () Bool)

(declare-fun t!75044 () Bool)

(assert (=> (and b!550473 (= (toChars!1735 (transformation!1029 (h!10834 (t!74972 rules!3103)))) (toChars!1735 (transformation!1029 (rule!1751 token!491)))) t!75044) tb!48169))

(declare-fun result!53904 () Bool)

(assert (= result!53904 result!53884))

(assert (=> d!192296 t!75044))

(declare-fun tp!174179 () Bool)

(declare-fun b_and!53753 () Bool)

(assert (=> b!550473 (= tp!174179 (and (=> t!75044 result!53904) (=> t!75042 result!53902) (=> t!75038 result!53898) (=> t!75040 result!53900) b_and!53753))))

(declare-fun e!332845 () Bool)

(assert (=> b!550473 (= e!332845 (and tp!174178 tp!174179))))

(declare-fun tp!174176 () Bool)

(declare-fun b!550472 () Bool)

(declare-fun e!332844 () Bool)

(assert (=> b!550472 (= e!332844 (and tp!174176 (inv!6810 (tag!1291 (h!10834 (t!74972 rules!3103)))) (inv!6813 (transformation!1029 (h!10834 (t!74972 rules!3103)))) e!332845))))

(declare-fun b!550471 () Bool)

(declare-fun e!332843 () Bool)

(declare-fun tp!174177 () Bool)

(assert (=> b!550471 (= e!332843 (and e!332844 tp!174177))))

(assert (=> b!549838 (= tp!174096 e!332843)))

(assert (= b!550472 b!550473))

(assert (= b!550471 b!550472))

(assert (= (and b!549838 ((_ is Cons!5433) (t!74972 rules!3103))) b!550471))

(declare-fun m!799947 () Bool)

(assert (=> b!550472 m!799947))

(declare-fun m!799949 () Bool)

(assert (=> b!550472 m!799949))

(declare-fun b!550476 () Bool)

(declare-fun e!332846 () Bool)

(declare-fun tp!174182 () Bool)

(assert (=> b!550476 (= e!332846 tp!174182)))

(declare-fun b!550477 () Bool)

(declare-fun tp!174184 () Bool)

(declare-fun tp!174180 () Bool)

(assert (=> b!550477 (= e!332846 (and tp!174184 tp!174180))))

(assert (=> b!549839 (= tp!174091 e!332846)))

(declare-fun b!550475 () Bool)

(declare-fun tp!174181 () Bool)

(declare-fun tp!174183 () Bool)

(assert (=> b!550475 (= e!332846 (and tp!174181 tp!174183))))

(declare-fun b!550474 () Bool)

(assert (=> b!550474 (= e!332846 tp_is_empty!3081)))

(assert (= (and b!549839 ((_ is ElementMatch!1363) (regex!1029 (h!10834 rules!3103)))) b!550474))

(assert (= (and b!549839 ((_ is Concat!2416) (regex!1029 (h!10834 rules!3103)))) b!550475))

(assert (= (and b!549839 ((_ is Star!1363) (regex!1029 (h!10834 rules!3103)))) b!550476))

(assert (= (and b!549839 ((_ is Union!1363) (regex!1029 (h!10834 rules!3103)))) b!550477))

(declare-fun b!550478 () Bool)

(declare-fun e!332847 () Bool)

(declare-fun tp!174185 () Bool)

(assert (=> b!550478 (= e!332847 (and tp_is_empty!3081 tp!174185))))

(assert (=> b!549818 (= tp!174099 e!332847)))

(assert (= (and b!549818 ((_ is Cons!5432) (originalCharacters!1068 token!491))) b!550478))

(declare-fun b!550479 () Bool)

(declare-fun e!332848 () Bool)

(declare-fun tp!174186 () Bool)

(assert (=> b!550479 (= e!332848 (and tp_is_empty!3081 tp!174186))))

(assert (=> b!549828 (= tp!174094 e!332848)))

(assert (= (and b!549828 ((_ is Cons!5432) (t!74971 input!2705))) b!550479))

(declare-fun b_lambda!21181 () Bool)

(assert (= b_lambda!21175 (or (and b!549796 b_free!15329 (= (toValue!1876 (transformation!1029 (h!10834 rules!3103))) (toValue!1876 (transformation!1029 (rule!1751 token!491))))) (and b!549833 b_free!15333) (and b!550473 b_free!15341 (= (toValue!1876 (transformation!1029 (h!10834 (t!74972 rules!3103)))) (toValue!1876 (transformation!1029 (rule!1751 token!491))))) b_lambda!21181)))

(declare-fun b_lambda!21183 () Bool)

(assert (= b_lambda!21159 (or (and b!549796 b_free!15331 (= (toChars!1735 (transformation!1029 (h!10834 rules!3103))) (toChars!1735 (transformation!1029 (rule!1751 token!491))))) (and b!549833 b_free!15335) (and b!550473 b_free!15343 (= (toChars!1735 (transformation!1029 (h!10834 (t!74972 rules!3103)))) (toChars!1735 (transformation!1029 (rule!1751 token!491))))) b_lambda!21183)))

(declare-fun b_lambda!21185 () Bool)

(assert (= b_lambda!21135 (or (and b!549796 b_free!15331 (= (toChars!1735 (transformation!1029 (h!10834 rules!3103))) (toChars!1735 (transformation!1029 (rule!1751 token!491))))) (and b!549833 b_free!15335) (and b!550473 b_free!15343 (= (toChars!1735 (transformation!1029 (h!10834 (t!74972 rules!3103)))) (toChars!1735 (transformation!1029 (rule!1751 token!491))))) b_lambda!21185)))

(declare-fun b_lambda!21187 () Bool)

(assert (= b_lambda!21179 (or (and b!549796 b_free!15329 (= (toValue!1876 (transformation!1029 (h!10834 rules!3103))) (toValue!1876 (transformation!1029 (rule!1751 token!491))))) (and b!549833 b_free!15333) (and b!550473 b_free!15341 (= (toValue!1876 (transformation!1029 (h!10834 (t!74972 rules!3103)))) (toValue!1876 (transformation!1029 (rule!1751 token!491))))) b_lambda!21187)))

(declare-fun b_lambda!21189 () Bool)

(assert (= b_lambda!21177 (or (and b!549796 b_free!15331 (= (toChars!1735 (transformation!1029 (h!10834 rules!3103))) (toChars!1735 (transformation!1029 (rule!1751 token!491))))) (and b!549833 b_free!15335) (and b!550473 b_free!15343 (= (toChars!1735 (transformation!1029 (h!10834 (t!74972 rules!3103)))) (toChars!1735 (transformation!1029 (rule!1751 token!491))))) b_lambda!21189)))

(check-sat (not b!550409) (not tb!48111) (not b_next!15349) (not b!550420) (not b!550180) (not b!550226) (not d!192246) (not b!550422) (not tb!48151) (not bm!38409) (not b!550108) (not tb!48099) (not d!192286) (not b!549842) (not d!192160) (not bm!38412) (not b!550182) (not b!550471) (not d!192282) (not b!550410) (not b!550242) (not d!192276) (not d!192108) (not d!192200) (not b!550061) b_and!53749 (not b!550418) (not b!550417) (not d!192294) (not d!192296) (not b_lambda!21151) (not bm!38411) (not d!192304) (not b!550082) (not b!550416) (not d!192156) (not b!550460) (not b!550461) (not b!550237) (not b!550230) (not b!550177) (not d!192150) (not b!550178) (not b!550321) (not d!192140) (not b!550136) (not d!192306) (not d!192132) (not d!192034) (not b!550228) (not b!550407) (not d!192114) (not b!550293) (not b!550425) (not b!550174) (not b!550106) (not tb!48107) (not b!550448) b_and!53743 (not b_next!15347) (not d!192232) (not b_lambda!21187) (not b!550316) b_and!53753 (not d!192126) (not b!550288) (not b_next!15357) (not b!550073) (not d!192164) (not b!550120) (not d!192136) (not b!550095) (not b!550294) (not b!550160) (not d!192298) (not b!550434) (not b!550063) (not b!550475) (not d!192090) (not b!550121) (not b_lambda!21149) (not d!192144) (not b!550084) (not b!550236) (not d!192030) (not d!192152) (not b!550408) (not d!192154) (not b!550431) (not b!550287) (not b!550426) (not b!549847) (not b!550058) (not b!550424) (not d!192088) (not b!550260) (not d!192162) (not d!192148) (not b!550224) (not b!550284) (not b!550292) (not b_lambda!21143) (not d!192216) (not b!550110) (not b!550437) (not b!550429) (not b!549853) (not b!550283) (not b!550159) (not d!192300) (not b!550462) (not b!550290) (not d!192100) (not d!192208) (not b!550255) (not b!550436) (not d!192240) (not d!192244) (not d!192134) (not b!550478) (not b!550162) (not b!550428) b_and!53747 (not b!550131) (not d!192128) (not b_next!15351) (not b!550094) (not b!550175) (not b!550139) b_and!53745 (not b!549848) (not b!550291) (not d!192096) (not b!550225) (not b!550472) (not b!550285) (not b!550016) (not tb!48123) (not b!550112) (not d!192198) (not b!550181) (not b!550229) (not b!550055) (not d!192194) (not b_next!15359) (not d!192098) (not b_lambda!21141) (not d!192172) b_and!53751 (not b_lambda!21181) (not d!192170) (not d!192142) (not tb!48155) (not bm!38406) (not b!550127) (not b!550122) (not b!550223) (not d!192032) (not b!550421) (not d!192302) (not b!550227) (not b!550056) (not b!550064) (not b_lambda!21185) (not b!550419) (not b!550107) (not d!192226) (not b_lambda!21189) (not b!550074) (not b!550413) (not b!550414) (not d!192146) (not d!192112) (not b!550443) (not b!550406) (not b!550411) (not b_next!15345) tp_is_empty!3081 (not b!550479) (not b!550118) (not d!192130) (not b_lambda!21183) (not b!550176) (not b!550477) (not b!550476) (not b!550111) (not b!550289))
(check-sat (not b_next!15349) b_and!53749 b_and!53753 (not b_next!15357) b_and!53747 (not b_next!15351) b_and!53745 (not b_next!15345) b_and!53743 (not b_next!15347) b_and!53751 (not b_next!15359))
