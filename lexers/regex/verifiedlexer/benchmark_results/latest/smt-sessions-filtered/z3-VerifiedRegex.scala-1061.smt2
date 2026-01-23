; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53912 () Bool)

(assert start!53912)

(declare-fun b!581812 () Bool)

(declare-fun b_free!16165 () Bool)

(declare-fun b_next!16181 () Bool)

(assert (=> b!581812 (= b_free!16165 (not b_next!16181))))

(declare-fun tp!181604 () Bool)

(declare-fun b_and!57275 () Bool)

(assert (=> b!581812 (= tp!181604 b_and!57275)))

(declare-fun b_free!16167 () Bool)

(declare-fun b_next!16183 () Bool)

(assert (=> b!581812 (= b_free!16167 (not b_next!16183))))

(declare-fun tp!181606 () Bool)

(declare-fun b_and!57277 () Bool)

(assert (=> b!581812 (= tp!181606 b_and!57277)))

(declare-fun b!581782 () Bool)

(declare-fun b_free!16169 () Bool)

(declare-fun b_next!16185 () Bool)

(assert (=> b!581782 (= b_free!16169 (not b_next!16185))))

(declare-fun tp!181602 () Bool)

(declare-fun b_and!57279 () Bool)

(assert (=> b!581782 (= tp!181602 b_and!57279)))

(declare-fun b_free!16171 () Bool)

(declare-fun b_next!16187 () Bool)

(assert (=> b!581782 (= b_free!16171 (not b_next!16187))))

(declare-fun tp!181605 () Bool)

(declare-fun b_and!57281 () Bool)

(assert (=> b!581782 (= tp!181605 b_and!57281)))

(declare-fun b!581770 () Bool)

(declare-fun e!351601 () Bool)

(assert (=> b!581770 (= e!351601 false)))

(declare-fun b!581771 () Bool)

(declare-datatypes ((Unit!10373 0))(
  ( (Unit!10374) )
))
(declare-fun e!351606 () Unit!10373)

(declare-fun Unit!10375 () Unit!10373)

(assert (=> b!581771 (= e!351606 Unit!10375)))

(declare-fun lt!246870 () Unit!10373)

(declare-datatypes ((C!3808 0))(
  ( (C!3809 (val!2130 Int)) )
))
(declare-datatypes ((Regex!1443 0))(
  ( (ElementMatch!1443 (c!108917 C!3808)) (Concat!2576 (regOne!3398 Regex!1443) (regTwo!3398 Regex!1443)) (EmptyExpr!1443) (Star!1443 (reg!1772 Regex!1443)) (EmptyLang!1443) (Union!1443 (regOne!3399 Regex!1443) (regTwo!3399 Regex!1443)) )
))
(declare-datatypes ((List!5714 0))(
  ( (Nil!5704) (Cons!5704 (h!11105 (_ BitVec 16)) (t!78155 List!5714)) )
))
(declare-datatypes ((List!5715 0))(
  ( (Nil!5705) (Cons!5705 (h!11106 C!3808) (t!78156 List!5715)) )
))
(declare-datatypes ((IArray!3653 0))(
  ( (IArray!3654 (innerList!1884 List!5715)) )
))
(declare-datatypes ((Conc!1826 0))(
  ( (Node!1826 (left!4657 Conc!1826) (right!4987 Conc!1826) (csize!3882 Int) (cheight!2037 Int)) (Leaf!2888 (xs!4463 IArray!3653) (csize!3883 Int)) (Empty!1826) )
))
(declare-datatypes ((BalanceConc!3660 0))(
  ( (BalanceConc!3661 (c!108918 Conc!1826)) )
))
(declare-datatypes ((TokenValue!1133 0))(
  ( (FloatLiteralValue!2266 (text!8376 List!5714)) (TokenValueExt!1132 (__x!4164 Int)) (Broken!5665 (value!36447 List!5714)) (Object!1142) (End!1133) (Def!1133) (Underscore!1133) (Match!1133) (Else!1133) (Error!1133) (Case!1133) (If!1133) (Extends!1133) (Abstract!1133) (Class!1133) (Val!1133) (DelimiterValue!2266 (del!1193 List!5714)) (KeywordValue!1139 (value!36448 List!5714)) (CommentValue!2266 (value!36449 List!5714)) (WhitespaceValue!2266 (value!36450 List!5714)) (IndentationValue!1133 (value!36451 List!5714)) (String!7408) (Int32!1133) (Broken!5666 (value!36452 List!5714)) (Boolean!1134) (Unit!10376) (OperatorValue!1136 (op!1193 List!5714)) (IdentifierValue!2266 (value!36453 List!5714)) (IdentifierValue!2267 (value!36454 List!5714)) (WhitespaceValue!2267 (value!36455 List!5714)) (True!2266) (False!2266) (Broken!5667 (value!36456 List!5714)) (Broken!5668 (value!36457 List!5714)) (True!2267) (RightBrace!1133) (RightBracket!1133) (Colon!1133) (Null!1133) (Comma!1133) (LeftBracket!1133) (False!2267) (LeftBrace!1133) (ImaginaryLiteralValue!1133 (text!8377 List!5714)) (StringLiteralValue!3399 (value!36458 List!5714)) (EOFValue!1133 (value!36459 List!5714)) (IdentValue!1133 (value!36460 List!5714)) (DelimiterValue!2267 (value!36461 List!5714)) (DedentValue!1133 (value!36462 List!5714)) (NewLineValue!1133 (value!36463 List!5714)) (IntegerValue!3399 (value!36464 (_ BitVec 32)) (text!8378 List!5714)) (IntegerValue!3400 (value!36465 Int) (text!8379 List!5714)) (Times!1133) (Or!1133) (Equal!1133) (Minus!1133) (Broken!5669 (value!36466 List!5714)) (And!1133) (Div!1133) (LessEqual!1133) (Mod!1133) (Concat!2577) (Not!1133) (Plus!1133) (SpaceValue!1133 (value!36467 List!5714)) (IntegerValue!3401 (value!36468 Int) (text!8380 List!5714)) (StringLiteralValue!3400 (text!8381 List!5714)) (FloatLiteralValue!2267 (text!8382 List!5714)) (BytesLiteralValue!1133 (value!36469 List!5714)) (CommentValue!2267 (value!36470 List!5714)) (StringLiteralValue!3401 (value!36471 List!5714)) (ErrorTokenValue!1133 (msg!1194 List!5714)) )
))
(declare-datatypes ((String!7409 0))(
  ( (String!7410 (value!36472 String)) )
))
(declare-datatypes ((TokenValueInjection!2034 0))(
  ( (TokenValueInjection!2035 (toValue!1976 Int) (toChars!1835 Int)) )
))
(declare-datatypes ((Rule!2018 0))(
  ( (Rule!2019 (regex!1109 Regex!1443) (tag!1371 String!7409) (isSeparator!1109 Bool) (transformation!1109 TokenValueInjection!2034)) )
))
(declare-datatypes ((Token!1954 0))(
  ( (Token!1955 (value!36473 TokenValue!1133) (rule!1865 Rule!2018) (size!4542 Int) (originalCharacters!1148 List!5715)) )
))
(declare-datatypes ((tuple2!6684 0))(
  ( (tuple2!6685 (_1!3606 Token!1954) (_2!3606 List!5715)) )
))
(declare-datatypes ((Option!1460 0))(
  ( (None!1459) (Some!1459 (v!16326 tuple2!6684)) )
))
(declare-fun lt!246871 () Option!1460)

(declare-fun lt!246878 () BalanceConc!3660)

(declare-fun lemmaSemiInverse!212 (TokenValueInjection!2034 BalanceConc!3660) Unit!10373)

(assert (=> b!581771 (= lt!246870 (lemmaSemiInverse!212 (transformation!1109 (rule!1865 (_1!3606 (v!16326 lt!246871)))) lt!246878))))

(declare-datatypes ((List!5716 0))(
  ( (Nil!5706) (Cons!5706 (h!11107 Rule!2018) (t!78157 List!5716)) )
))
(declare-fun rules!3103 () List!5716)

(declare-fun token!491 () Token!1954)

(declare-datatypes ((LexerInterface!995 0))(
  ( (LexerInterfaceExt!992 (__x!4165 Int)) (Lexer!993) )
))
(declare-fun thiss!22590 () LexerInterface!995)

(declare-fun input!2705 () List!5715)

(declare-fun lt!246842 () Unit!10373)

(declare-fun lt!246835 () List!5715)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!68 (LexerInterface!995 List!5716 Rule!2018 List!5715 List!5715 List!5715 Rule!2018) Unit!10373)

(assert (=> b!581771 (= lt!246842 (lemmaMaxPrefixOutputsMaxPrefix!68 thiss!22590 rules!3103 (rule!1865 (_1!3606 (v!16326 lt!246871))) lt!246835 input!2705 input!2705 (rule!1865 token!491)))))

(declare-fun res!250461 () Bool)

(declare-fun matchR!590 (Regex!1443 List!5715) Bool)

(assert (=> b!581771 (= res!250461 (not (matchR!590 (regex!1109 (rule!1865 token!491)) input!2705)))))

(declare-fun e!351607 () Bool)

(assert (=> b!581771 (=> (not res!250461) (not e!351607))))

(assert (=> b!581771 e!351607))

(declare-fun b!581772 () Bool)

(declare-fun e!351598 () Unit!10373)

(declare-fun Unit!10377 () Unit!10373)

(assert (=> b!581772 (= e!351598 Unit!10377)))

(assert (=> b!581772 false))

(declare-fun b!581773 () Bool)

(declare-fun e!351611 () Bool)

(declare-fun e!351591 () Bool)

(assert (=> b!581773 (= e!351611 (not e!351591))))

(declare-fun res!250466 () Bool)

(assert (=> b!581773 (=> res!250466 e!351591)))

(declare-fun lt!246849 () List!5715)

(declare-fun isPrefix!743 (List!5715 List!5715) Bool)

(assert (=> b!581773 (= res!250466 (not (isPrefix!743 input!2705 lt!246849)))))

(declare-fun lt!246838 () List!5715)

(assert (=> b!581773 (isPrefix!743 lt!246838 lt!246849)))

(declare-fun lt!246877 () Unit!10373)

(declare-fun suffix!1342 () List!5715)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!590 (List!5715 List!5715) Unit!10373)

(assert (=> b!581773 (= lt!246877 (lemmaConcatTwoListThenFirstIsPrefix!590 lt!246838 suffix!1342))))

(declare-fun lt!246866 () List!5715)

(assert (=> b!581773 (isPrefix!743 input!2705 lt!246866)))

(declare-fun lt!246846 () Unit!10373)

(assert (=> b!581773 (= lt!246846 (lemmaConcatTwoListThenFirstIsPrefix!590 input!2705 suffix!1342))))

(declare-fun e!351595 () Bool)

(assert (=> b!581773 e!351595))

(declare-fun res!250458 () Bool)

(assert (=> b!581773 (=> (not res!250458) (not e!351595))))

(declare-fun lt!246875 () TokenValue!1133)

(assert (=> b!581773 (= res!250458 (= (value!36473 (_1!3606 (v!16326 lt!246871))) lt!246875))))

(declare-fun apply!1374 (TokenValueInjection!2034 BalanceConc!3660) TokenValue!1133)

(assert (=> b!581773 (= lt!246875 (apply!1374 (transformation!1109 (rule!1865 (_1!3606 (v!16326 lt!246871)))) lt!246878))))

(declare-fun seqFromList!1297 (List!5715) BalanceConc!3660)

(assert (=> b!581773 (= lt!246878 (seqFromList!1297 lt!246835))))

(declare-fun lt!246843 () Unit!10373)

(declare-fun lemmaInv!245 (TokenValueInjection!2034) Unit!10373)

(assert (=> b!581773 (= lt!246843 (lemmaInv!245 (transformation!1109 (rule!1865 token!491))))))

(declare-fun lt!246874 () Unit!10373)

(assert (=> b!581773 (= lt!246874 (lemmaInv!245 (transformation!1109 (rule!1865 (_1!3606 (v!16326 lt!246871))))))))

(declare-fun ruleValid!319 (LexerInterface!995 Rule!2018) Bool)

(assert (=> b!581773 (ruleValid!319 thiss!22590 (rule!1865 token!491))))

(declare-fun lt!246854 () Unit!10373)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!176 (LexerInterface!995 Rule!2018 List!5716) Unit!10373)

(assert (=> b!581773 (= lt!246854 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!176 thiss!22590 (rule!1865 token!491) rules!3103))))

(assert (=> b!581773 (ruleValid!319 thiss!22590 (rule!1865 (_1!3606 (v!16326 lt!246871))))))

(declare-fun lt!246839 () Unit!10373)

(assert (=> b!581773 (= lt!246839 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!176 thiss!22590 (rule!1865 (_1!3606 (v!16326 lt!246871))) rules!3103))))

(assert (=> b!581773 (isPrefix!743 input!2705 input!2705)))

(declare-fun lt!246863 () Unit!10373)

(declare-fun lemmaIsPrefixRefl!481 (List!5715 List!5715) Unit!10373)

(assert (=> b!581773 (= lt!246863 (lemmaIsPrefixRefl!481 input!2705 input!2705))))

(declare-fun lt!246848 () List!5715)

(assert (=> b!581773 (= (_2!3606 (v!16326 lt!246871)) lt!246848)))

(declare-fun lt!246853 () Unit!10373)

(declare-fun lemmaSamePrefixThenSameSuffix!466 (List!5715 List!5715 List!5715 List!5715 List!5715) Unit!10373)

(assert (=> b!581773 (= lt!246853 (lemmaSamePrefixThenSameSuffix!466 lt!246835 (_2!3606 (v!16326 lt!246871)) lt!246835 lt!246848 input!2705))))

(declare-fun getSuffix!262 (List!5715 List!5715) List!5715)

(assert (=> b!581773 (= lt!246848 (getSuffix!262 input!2705 lt!246835))))

(declare-fun lt!246840 () List!5715)

(assert (=> b!581773 (isPrefix!743 lt!246835 lt!246840)))

(declare-fun ++!1597 (List!5715 List!5715) List!5715)

(assert (=> b!581773 (= lt!246840 (++!1597 lt!246835 (_2!3606 (v!16326 lt!246871))))))

(declare-fun lt!246852 () Unit!10373)

(assert (=> b!581773 (= lt!246852 (lemmaConcatTwoListThenFirstIsPrefix!590 lt!246835 (_2!3606 (v!16326 lt!246871))))))

(declare-fun lt!246868 () Unit!10373)

(declare-fun lemmaCharactersSize!176 (Token!1954) Unit!10373)

(assert (=> b!581773 (= lt!246868 (lemmaCharactersSize!176 token!491))))

(declare-fun lt!246834 () Unit!10373)

(assert (=> b!581773 (= lt!246834 (lemmaCharactersSize!176 (_1!3606 (v!16326 lt!246871))))))

(declare-fun lt!246859 () Unit!10373)

(assert (=> b!581773 (= lt!246859 e!351598)))

(declare-fun c!108912 () Bool)

(declare-fun lt!246850 () Int)

(declare-fun lt!246858 () Int)

(assert (=> b!581773 (= c!108912 (> lt!246850 lt!246858))))

(declare-fun size!4543 (List!5715) Int)

(assert (=> b!581773 (= lt!246858 (size!4543 lt!246838))))

(assert (=> b!581773 (= lt!246850 (size!4543 lt!246835))))

(declare-fun list!2375 (BalanceConc!3660) List!5715)

(declare-fun charsOf!738 (Token!1954) BalanceConc!3660)

(assert (=> b!581773 (= lt!246835 (list!2375 (charsOf!738 (_1!3606 (v!16326 lt!246871)))))))

(declare-fun lt!246837 () tuple2!6684)

(assert (=> b!581773 (= lt!246871 (Some!1459 lt!246837))))

(assert (=> b!581773 (= lt!246837 (tuple2!6685 (_1!3606 (v!16326 lt!246871)) (_2!3606 (v!16326 lt!246871))))))

(declare-fun lt!246865 () Unit!10373)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!186 (List!5715 List!5715 List!5715 List!5715) Unit!10373)

(assert (=> b!581773 (= lt!246865 (lemmaConcatSameAndSameSizesThenSameLists!186 lt!246838 suffix!1342 input!2705 suffix!1342))))

(declare-fun res!250474 () Bool)

(declare-fun e!351600 () Bool)

(assert (=> start!53912 (=> (not res!250474) (not e!351600))))

(get-info :version)

(assert (=> start!53912 (= res!250474 ((_ is Lexer!993) thiss!22590))))

(assert (=> start!53912 e!351600))

(declare-fun e!351599 () Bool)

(assert (=> start!53912 e!351599))

(declare-fun e!351604 () Bool)

(assert (=> start!53912 e!351604))

(declare-fun e!351605 () Bool)

(declare-fun inv!7190 (Token!1954) Bool)

(assert (=> start!53912 (and (inv!7190 token!491) e!351605)))

(assert (=> start!53912 true))

(declare-fun e!351609 () Bool)

(assert (=> start!53912 e!351609))

(declare-fun b!581774 () Bool)

(declare-fun res!250459 () Bool)

(assert (=> b!581774 (=> (not res!250459) (not e!351600))))

(declare-fun isEmpty!4119 (List!5715) Bool)

(assert (=> b!581774 (= res!250459 (not (isEmpty!4119 input!2705)))))

(declare-fun b!581775 () Bool)

(declare-fun e!351592 () Bool)

(assert (=> b!581775 e!351592))

(declare-fun res!250475 () Bool)

(assert (=> b!581775 (=> (not res!250475) (not e!351592))))

(assert (=> b!581775 (= res!250475 (not (matchR!590 (regex!1109 (rule!1865 token!491)) input!2705)))))

(declare-fun lt!246861 () Unit!10373)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!24 (LexerInterface!995 List!5716 Rule!2018 List!5715 List!5715 Rule!2018) Unit!10373)

(assert (=> b!581775 (= lt!246861 (lemmaMaxPrefNoSmallerRuleMatches!24 thiss!22590 rules!3103 (rule!1865 (_1!3606 (v!16326 lt!246871))) input!2705 input!2705 (rule!1865 token!491)))))

(declare-fun e!351584 () Unit!10373)

(declare-fun Unit!10378 () Unit!10373)

(assert (=> b!581775 (= e!351584 Unit!10378)))

(declare-fun b!581776 () Bool)

(declare-fun e!351596 () Unit!10373)

(declare-fun Unit!10379 () Unit!10373)

(assert (=> b!581776 (= e!351596 Unit!10379)))

(declare-fun b!581777 () Bool)

(assert (=> b!581777 (= e!351595 (and (= (size!4542 (_1!3606 (v!16326 lt!246871))) lt!246850) (= (originalCharacters!1148 (_1!3606 (v!16326 lt!246871))) lt!246835) (= lt!246837 (tuple2!6685 (Token!1955 lt!246875 (rule!1865 (_1!3606 (v!16326 lt!246871))) lt!246850 lt!246835) lt!246848))))))

(declare-fun b!581778 () Bool)

(assert (=> b!581778 (= e!351596 e!351584)))

(declare-fun lt!246845 () Int)

(declare-fun getIndex!48 (List!5716 Rule!2018) Int)

(assert (=> b!581778 (= lt!246845 (getIndex!48 rules!3103 (rule!1865 (_1!3606 (v!16326 lt!246871)))))))

(declare-fun lt!246869 () Int)

(assert (=> b!581778 (= lt!246869 (getIndex!48 rules!3103 (rule!1865 token!491)))))

(declare-fun c!108913 () Bool)

(assert (=> b!581778 (= c!108913 (< lt!246845 lt!246869))))

(declare-fun lt!246862 () Unit!10373)

(declare-fun e!351608 () Unit!10373)

(assert (=> b!581778 (= lt!246862 e!351608)))

(declare-fun c!108916 () Bool)

(assert (=> b!581778 (= c!108916 (> lt!246845 lt!246869))))

(declare-fun b!581779 () Bool)

(declare-fun res!250471 () Bool)

(declare-fun e!351594 () Bool)

(assert (=> b!581779 (=> res!250471 e!351594)))

(declare-fun contains!1343 (List!5716 Rule!2018) Bool)

(assert (=> b!581779 (= res!250471 (not (contains!1343 rules!3103 (rule!1865 token!491))))))

(declare-fun b!581780 () Bool)

(declare-fun res!250462 () Bool)

(assert (=> b!581780 (=> (not res!250462) (not e!351600))))

(declare-fun isEmpty!4120 (List!5716) Bool)

(assert (=> b!581780 (= res!250462 (not (isEmpty!4120 rules!3103)))))

(declare-fun b!581781 () Bool)

(declare-fun Unit!10380 () Unit!10373)

(assert (=> b!581781 (= e!351606 Unit!10380)))

(declare-fun e!351586 () Bool)

(assert (=> b!581782 (= e!351586 (and tp!181602 tp!181605))))

(declare-fun b!581783 () Bool)

(declare-fun Unit!10381 () Unit!10373)

(assert (=> b!581783 (= e!351584 Unit!10381)))

(declare-fun e!351610 () Bool)

(declare-fun tp!181607 () Bool)

(declare-fun b!581784 () Bool)

(declare-fun inv!7187 (String!7409) Bool)

(declare-fun inv!7191 (TokenValueInjection!2034) Bool)

(assert (=> b!581784 (= e!351610 (and tp!181607 (inv!7187 (tag!1371 (rule!1865 token!491))) (inv!7191 (transformation!1109 (rule!1865 token!491))) e!351586))))

(declare-fun b!581785 () Bool)

(declare-fun res!250463 () Bool)

(declare-fun e!351582 () Bool)

(assert (=> b!581785 (=> (not res!250463) (not e!351582))))

(declare-fun get!2178 (Option!1460) tuple2!6684)

(assert (=> b!581785 (= res!250463 (= (_1!3606 (get!2178 lt!246871)) (_1!3606 (v!16326 lt!246871))))))

(declare-fun b!581786 () Bool)

(declare-fun tp_is_empty!3241 () Bool)

(declare-fun tp!181608 () Bool)

(assert (=> b!581786 (= e!351609 (and tp_is_empty!3241 tp!181608))))

(declare-fun b!581787 () Bool)

(assert (=> b!581787 (= e!351592 false)))

(declare-fun b!581788 () Bool)

(declare-fun tp!181610 () Bool)

(declare-fun inv!21 (TokenValue!1133) Bool)

(assert (=> b!581788 (= e!351605 (and (inv!21 (value!36473 token!491)) e!351610 tp!181610))))

(declare-fun b!581789 () Bool)

(declare-fun tp!181609 () Bool)

(assert (=> b!581789 (= e!351599 (and tp_is_empty!3241 tp!181609))))

(declare-fun b!581790 () Bool)

(declare-fun e!351588 () Bool)

(declare-fun e!351612 () Bool)

(assert (=> b!581790 (= e!351588 e!351612)))

(declare-fun res!250472 () Bool)

(assert (=> b!581790 (=> res!250472 e!351612)))

(assert (=> b!581790 (= res!250472 (>= lt!246850 lt!246858))))

(declare-fun b!581791 () Bool)

(assert (=> b!581791 (= e!351582 (= lt!246848 (_2!3606 (v!16326 lt!246871))))))

(declare-fun b!581792 () Bool)

(declare-fun res!250453 () Bool)

(declare-fun e!351597 () Bool)

(assert (=> b!581792 (=> (not res!250453) (not e!351597))))

(assert (=> b!581792 (= res!250453 (= (size!4542 token!491) (size!4543 (originalCharacters!1148 token!491))))))

(declare-fun b!581793 () Bool)

(declare-fun res!250456 () Bool)

(assert (=> b!581793 (=> res!250456 e!351594)))

(assert (=> b!581793 (= res!250456 (or (not (= lt!246835 lt!246838)) (not (= (originalCharacters!1148 (_1!3606 (v!16326 lt!246871))) (originalCharacters!1148 token!491)))))))

(declare-fun b!581794 () Bool)

(assert (=> b!581794 (= e!351612 e!351582)))

(declare-fun res!250451 () Bool)

(assert (=> b!581794 (=> (not res!250451) (not e!351582))))

(declare-fun isDefined!1271 (Option!1460) Bool)

(assert (=> b!581794 (= res!250451 (isDefined!1271 lt!246871))))

(declare-fun b!581795 () Bool)

(declare-fun res!250476 () Bool)

(assert (=> b!581795 (=> (not res!250476) (not e!351595))))

(assert (=> b!581795 (= res!250476 (= (size!4542 (_1!3606 (v!16326 lt!246871))) (size!4543 (originalCharacters!1148 (_1!3606 (v!16326 lt!246871))))))))

(declare-fun b!581796 () Bool)

(declare-fun e!351585 () Bool)

(declare-fun tp!181603 () Bool)

(assert (=> b!581796 (= e!351604 (and e!351585 tp!181603))))

(declare-fun b!581797 () Bool)

(declare-fun Unit!10382 () Unit!10373)

(assert (=> b!581797 (= e!351598 Unit!10382)))

(declare-fun b!581798 () Bool)

(declare-fun e!351587 () Bool)

(declare-fun e!351603 () Bool)

(assert (=> b!581798 (= e!351587 e!351603)))

(declare-fun res!250465 () Bool)

(assert (=> b!581798 (=> (not res!250465) (not e!351603))))

(declare-fun lt!246867 () tuple2!6684)

(assert (=> b!581798 (= res!250465 (and (= (_1!3606 lt!246867) token!491) (= (_2!3606 lt!246867) suffix!1342)))))

(declare-fun lt!246847 () Option!1460)

(assert (=> b!581798 (= lt!246867 (get!2178 lt!246847))))

(declare-fun b!581799 () Bool)

(declare-fun e!351613 () Bool)

(assert (=> b!581799 (= e!351613 e!351587)))

(declare-fun res!250469 () Bool)

(assert (=> b!581799 (=> (not res!250469) (not e!351587))))

(assert (=> b!581799 (= res!250469 (isDefined!1271 lt!246847))))

(declare-fun maxPrefix!693 (LexerInterface!995 List!5716 List!5715) Option!1460)

(assert (=> b!581799 (= lt!246847 (maxPrefix!693 thiss!22590 rules!3103 lt!246866))))

(assert (=> b!581799 (= lt!246866 (++!1597 input!2705 suffix!1342))))

(declare-fun b!581800 () Bool)

(declare-fun e!351590 () Bool)

(assert (=> b!581800 (= e!351603 e!351590)))

(declare-fun res!250460 () Bool)

(assert (=> b!581800 (=> (not res!250460) (not e!351590))))

(assert (=> b!581800 (= res!250460 ((_ is Some!1459) lt!246871))))

(assert (=> b!581800 (= lt!246871 (maxPrefix!693 thiss!22590 rules!3103 input!2705))))

(declare-fun b!581801 () Bool)

(declare-fun lt!246872 () List!5715)

(declare-fun lt!246864 () TokenValue!1133)

(assert (=> b!581801 (= e!351597 (and (= (size!4542 token!491) lt!246858) (= (originalCharacters!1148 token!491) lt!246838) (= (tuple2!6685 token!491 suffix!1342) (tuple2!6685 (Token!1955 lt!246864 (rule!1865 token!491) lt!246858 lt!246838) lt!246872))))))

(declare-fun b!581802 () Bool)

(declare-fun res!250473 () Bool)

(assert (=> b!581802 (=> (not res!250473) (not e!351600))))

(declare-fun rulesInvariant!958 (LexerInterface!995 List!5716) Bool)

(assert (=> b!581802 (= res!250473 (rulesInvariant!958 thiss!22590 rules!3103))))

(declare-fun b!581803 () Bool)

(assert (=> b!581803 (= e!351600 e!351613)))

(declare-fun res!250468 () Bool)

(assert (=> b!581803 (=> (not res!250468) (not e!351613))))

(assert (=> b!581803 (= res!250468 (= lt!246838 input!2705))))

(assert (=> b!581803 (= lt!246838 (list!2375 (charsOf!738 token!491)))))

(declare-fun b!581804 () Bool)

(assert (=> b!581804 (= e!351590 e!351611)))

(declare-fun res!250470 () Bool)

(assert (=> b!581804 (=> (not res!250470) (not e!351611))))

(assert (=> b!581804 (= res!250470 (= lt!246849 lt!246866))))

(assert (=> b!581804 (= lt!246849 (++!1597 lt!246838 suffix!1342))))

(declare-fun b!581805 () Bool)

(assert (=> b!581805 (= e!351594 (or (not (= (size!4542 (_1!3606 (v!16326 lt!246871))) (size!4542 token!491))) (= (_1!3606 (v!16326 lt!246871)) token!491)))))

(assert (=> b!581805 (= (rule!1865 (_1!3606 (v!16326 lt!246871))) (rule!1865 token!491))))

(declare-fun lt!246844 () Unit!10373)

(declare-fun lemmaSameIndexThenSameElement!14 (List!5716 Rule!2018 Rule!2018) Unit!10373)

(assert (=> b!581805 (= lt!246844 (lemmaSameIndexThenSameElement!14 rules!3103 (rule!1865 (_1!3606 (v!16326 lt!246871))) (rule!1865 token!491)))))

(declare-fun lt!246856 () Unit!10373)

(assert (=> b!581805 (= lt!246856 e!351596)))

(declare-fun c!108914 () Bool)

(assert (=> b!581805 (= c!108914 (not (= (rule!1865 (_1!3606 (v!16326 lt!246871))) (rule!1865 token!491))))))

(declare-fun b!581806 () Bool)

(assert (=> b!581806 (= e!351591 e!351594)))

(declare-fun res!250457 () Bool)

(assert (=> b!581806 (=> res!250457 e!351594)))

(assert (=> b!581806 (= res!250457 (or (not (= lt!246850 lt!246858)) (not (= lt!246840 input!2705)) (not (= lt!246840 lt!246838))))))

(declare-fun lt!246855 () Unit!10373)

(declare-fun lt!246876 () BalanceConc!3660)

(assert (=> b!581806 (= lt!246855 (lemmaSemiInverse!212 (transformation!1109 (rule!1865 token!491)) lt!246876))))

(declare-fun lt!246841 () Unit!10373)

(assert (=> b!581806 (= lt!246841 (lemmaSemiInverse!212 (transformation!1109 (rule!1865 (_1!3606 (v!16326 lt!246871)))) lt!246878))))

(declare-fun lt!246851 () Unit!10373)

(assert (=> b!581806 (= lt!246851 e!351606)))

(declare-fun c!108915 () Bool)

(assert (=> b!581806 (= c!108915 (< lt!246850 lt!246858))))

(assert (=> b!581806 e!351588))

(declare-fun res!250455 () Bool)

(assert (=> b!581806 (=> (not res!250455) (not e!351588))))

(declare-fun maxPrefixOneRule!394 (LexerInterface!995 Rule!2018 List!5715) Option!1460)

(assert (=> b!581806 (= res!250455 (= (maxPrefixOneRule!394 thiss!22590 (rule!1865 token!491) lt!246866) (Some!1459 (tuple2!6685 (Token!1955 lt!246864 (rule!1865 token!491) lt!246858 lt!246838) suffix!1342))))))

(declare-fun lt!246836 () Unit!10373)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!144 (LexerInterface!995 List!5716 List!5715 List!5715 List!5715 Rule!2018) Unit!10373)

(assert (=> b!581806 (= lt!246836 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!144 thiss!22590 rules!3103 lt!246838 lt!246866 suffix!1342 (rule!1865 token!491)))))

(assert (=> b!581806 (= (maxPrefixOneRule!394 thiss!22590 (rule!1865 (_1!3606 (v!16326 lt!246871))) input!2705) (Some!1459 (tuple2!6685 (Token!1955 lt!246875 (rule!1865 (_1!3606 (v!16326 lt!246871))) lt!246850 lt!246835) (_2!3606 (v!16326 lt!246871)))))))

(declare-fun lt!246857 () Unit!10373)

(assert (=> b!581806 (= lt!246857 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!144 thiss!22590 rules!3103 lt!246835 input!2705 (_2!3606 (v!16326 lt!246871)) (rule!1865 (_1!3606 (v!16326 lt!246871)))))))

(assert (=> b!581806 e!351597))

(declare-fun res!250464 () Bool)

(assert (=> b!581806 (=> (not res!250464) (not e!351597))))

(assert (=> b!581806 (= res!250464 (= (value!36473 token!491) lt!246864))))

(assert (=> b!581806 (= lt!246864 (apply!1374 (transformation!1109 (rule!1865 token!491)) lt!246876))))

(assert (=> b!581806 (= lt!246876 (seqFromList!1297 lt!246838))))

(assert (=> b!581806 (= suffix!1342 lt!246872)))

(declare-fun lt!246860 () Unit!10373)

(assert (=> b!581806 (= lt!246860 (lemmaSamePrefixThenSameSuffix!466 lt!246838 suffix!1342 lt!246838 lt!246872 lt!246866))))

(assert (=> b!581806 (= lt!246872 (getSuffix!262 lt!246866 lt!246838))))

(declare-fun b!581807 () Bool)

(declare-fun Unit!10383 () Unit!10373)

(assert (=> b!581807 (= e!351608 Unit!10383)))

(declare-fun b!581808 () Bool)

(assert (=> b!581808 e!351601))

(declare-fun res!250452 () Bool)

(assert (=> b!581808 (=> (not res!250452) (not e!351601))))

(assert (=> b!581808 (= res!250452 (not (matchR!590 (regex!1109 (rule!1865 (_1!3606 (v!16326 lt!246871)))) input!2705)))))

(declare-fun lt!246873 () Unit!10373)

(assert (=> b!581808 (= lt!246873 (lemmaMaxPrefNoSmallerRuleMatches!24 thiss!22590 rules!3103 (rule!1865 token!491) input!2705 lt!246866 (rule!1865 (_1!3606 (v!16326 lt!246871)))))))

(declare-fun Unit!10384 () Unit!10373)

(assert (=> b!581808 (= e!351608 Unit!10384)))

(declare-fun b!581809 () Bool)

(declare-fun res!250454 () Bool)

(assert (=> b!581809 (=> res!250454 e!351594)))

(assert (=> b!581809 (= res!250454 (not (contains!1343 rules!3103 (rule!1865 (_1!3606 (v!16326 lt!246871))))))))

(declare-fun b!581810 () Bool)

(assert (=> b!581810 (= e!351607 false)))

(declare-fun b!581811 () Bool)

(declare-fun res!250467 () Bool)

(assert (=> b!581811 (=> res!250467 e!351594)))

(assert (=> b!581811 (= res!250467 (not (isEmpty!4119 (_2!3606 (v!16326 lt!246871)))))))

(declare-fun e!351589 () Bool)

(assert (=> b!581812 (= e!351589 (and tp!181604 tp!181606))))

(declare-fun tp!181601 () Bool)

(declare-fun b!581813 () Bool)

(assert (=> b!581813 (= e!351585 (and tp!181601 (inv!7187 (tag!1371 (h!11107 rules!3103))) (inv!7191 (transformation!1109 (h!11107 rules!3103))) e!351589))))

(assert (= (and start!53912 res!250474) b!581780))

(assert (= (and b!581780 res!250462) b!581802))

(assert (= (and b!581802 res!250473) b!581774))

(assert (= (and b!581774 res!250459) b!581803))

(assert (= (and b!581803 res!250468) b!581799))

(assert (= (and b!581799 res!250469) b!581798))

(assert (= (and b!581798 res!250465) b!581800))

(assert (= (and b!581800 res!250460) b!581804))

(assert (= (and b!581804 res!250470) b!581773))

(assert (= (and b!581773 c!108912) b!581772))

(assert (= (and b!581773 (not c!108912)) b!581797))

(assert (= (and b!581773 res!250458) b!581795))

(assert (= (and b!581795 res!250476) b!581777))

(assert (= (and b!581773 (not res!250466)) b!581806))

(assert (= (and b!581806 res!250464) b!581792))

(assert (= (and b!581792 res!250453) b!581801))

(assert (= (and b!581806 res!250455) b!581790))

(assert (= (and b!581790 (not res!250472)) b!581794))

(assert (= (and b!581794 res!250451) b!581785))

(assert (= (and b!581785 res!250463) b!581791))

(assert (= (and b!581806 c!108915) b!581771))

(assert (= (and b!581806 (not c!108915)) b!581781))

(assert (= (and b!581771 res!250461) b!581810))

(assert (= (and b!581806 (not res!250457)) b!581811))

(assert (= (and b!581811 (not res!250467)) b!581793))

(assert (= (and b!581793 (not res!250456)) b!581809))

(assert (= (and b!581809 (not res!250454)) b!581779))

(assert (= (and b!581779 (not res!250471)) b!581805))

(assert (= (and b!581805 c!108914) b!581778))

(assert (= (and b!581805 (not c!108914)) b!581776))

(assert (= (and b!581778 c!108913) b!581808))

(assert (= (and b!581778 (not c!108913)) b!581807))

(assert (= (and b!581808 res!250452) b!581770))

(assert (= (and b!581778 c!108916) b!581775))

(assert (= (and b!581778 (not c!108916)) b!581783))

(assert (= (and b!581775 res!250475) b!581787))

(assert (= (and start!53912 ((_ is Cons!5705) suffix!1342)) b!581789))

(assert (= b!581813 b!581812))

(assert (= b!581796 b!581813))

(assert (= (and start!53912 ((_ is Cons!5706) rules!3103)) b!581796))

(assert (= b!581784 b!581782))

(assert (= b!581788 b!581784))

(assert (= start!53912 b!581788))

(assert (= (and start!53912 ((_ is Cons!5705) input!2705)) b!581786))

(declare-fun m!841055 () Bool)

(assert (=> b!581800 m!841055))

(declare-fun m!841057 () Bool)

(assert (=> b!581788 m!841057))

(declare-fun m!841059 () Bool)

(assert (=> b!581778 m!841059))

(declare-fun m!841061 () Bool)

(assert (=> b!581778 m!841061))

(declare-fun m!841063 () Bool)

(assert (=> b!581809 m!841063))

(declare-fun m!841065 () Bool)

(assert (=> b!581798 m!841065))

(declare-fun m!841067 () Bool)

(assert (=> b!581779 m!841067))

(declare-fun m!841069 () Bool)

(assert (=> b!581784 m!841069))

(declare-fun m!841071 () Bool)

(assert (=> b!581784 m!841071))

(declare-fun m!841073 () Bool)

(assert (=> b!581771 m!841073))

(declare-fun m!841075 () Bool)

(assert (=> b!581771 m!841075))

(declare-fun m!841077 () Bool)

(assert (=> b!581771 m!841077))

(declare-fun m!841079 () Bool)

(assert (=> b!581794 m!841079))

(declare-fun m!841081 () Bool)

(assert (=> b!581780 m!841081))

(declare-fun m!841083 () Bool)

(assert (=> b!581813 m!841083))

(declare-fun m!841085 () Bool)

(assert (=> b!581813 m!841085))

(declare-fun m!841087 () Bool)

(assert (=> b!581795 m!841087))

(declare-fun m!841089 () Bool)

(assert (=> b!581792 m!841089))

(declare-fun m!841091 () Bool)

(assert (=> b!581785 m!841091))

(declare-fun m!841093 () Bool)

(assert (=> b!581808 m!841093))

(declare-fun m!841095 () Bool)

(assert (=> b!581808 m!841095))

(declare-fun m!841097 () Bool)

(assert (=> b!581805 m!841097))

(declare-fun m!841099 () Bool)

(assert (=> b!581774 m!841099))

(declare-fun m!841101 () Bool)

(assert (=> b!581802 m!841101))

(declare-fun m!841103 () Bool)

(assert (=> b!581811 m!841103))

(declare-fun m!841105 () Bool)

(assert (=> b!581799 m!841105))

(declare-fun m!841107 () Bool)

(assert (=> b!581799 m!841107))

(declare-fun m!841109 () Bool)

(assert (=> b!581799 m!841109))

(assert (=> b!581806 m!841073))

(declare-fun m!841111 () Bool)

(assert (=> b!581806 m!841111))

(declare-fun m!841113 () Bool)

(assert (=> b!581806 m!841113))

(declare-fun m!841115 () Bool)

(assert (=> b!581806 m!841115))

(declare-fun m!841117 () Bool)

(assert (=> b!581806 m!841117))

(declare-fun m!841119 () Bool)

(assert (=> b!581806 m!841119))

(declare-fun m!841121 () Bool)

(assert (=> b!581806 m!841121))

(declare-fun m!841123 () Bool)

(assert (=> b!581806 m!841123))

(declare-fun m!841125 () Bool)

(assert (=> b!581806 m!841125))

(declare-fun m!841127 () Bool)

(assert (=> b!581806 m!841127))

(declare-fun m!841129 () Bool)

(assert (=> b!581773 m!841129))

(declare-fun m!841131 () Bool)

(assert (=> b!581773 m!841131))

(declare-fun m!841133 () Bool)

(assert (=> b!581773 m!841133))

(declare-fun m!841135 () Bool)

(assert (=> b!581773 m!841135))

(declare-fun m!841137 () Bool)

(assert (=> b!581773 m!841137))

(declare-fun m!841139 () Bool)

(assert (=> b!581773 m!841139))

(declare-fun m!841141 () Bool)

(assert (=> b!581773 m!841141))

(assert (=> b!581773 m!841137))

(declare-fun m!841143 () Bool)

(assert (=> b!581773 m!841143))

(declare-fun m!841145 () Bool)

(assert (=> b!581773 m!841145))

(declare-fun m!841147 () Bool)

(assert (=> b!581773 m!841147))

(declare-fun m!841149 () Bool)

(assert (=> b!581773 m!841149))

(declare-fun m!841151 () Bool)

(assert (=> b!581773 m!841151))

(declare-fun m!841153 () Bool)

(assert (=> b!581773 m!841153))

(declare-fun m!841155 () Bool)

(assert (=> b!581773 m!841155))

(declare-fun m!841157 () Bool)

(assert (=> b!581773 m!841157))

(declare-fun m!841159 () Bool)

(assert (=> b!581773 m!841159))

(declare-fun m!841161 () Bool)

(assert (=> b!581773 m!841161))

(declare-fun m!841163 () Bool)

(assert (=> b!581773 m!841163))

(declare-fun m!841165 () Bool)

(assert (=> b!581773 m!841165))

(declare-fun m!841167 () Bool)

(assert (=> b!581773 m!841167))

(declare-fun m!841169 () Bool)

(assert (=> b!581773 m!841169))

(declare-fun m!841171 () Bool)

(assert (=> b!581773 m!841171))

(declare-fun m!841173 () Bool)

(assert (=> b!581773 m!841173))

(declare-fun m!841175 () Bool)

(assert (=> b!581773 m!841175))

(declare-fun m!841177 () Bool)

(assert (=> b!581773 m!841177))

(declare-fun m!841179 () Bool)

(assert (=> b!581773 m!841179))

(declare-fun m!841181 () Bool)

(assert (=> b!581773 m!841181))

(assert (=> b!581775 m!841077))

(declare-fun m!841183 () Bool)

(assert (=> b!581775 m!841183))

(declare-fun m!841185 () Bool)

(assert (=> start!53912 m!841185))

(declare-fun m!841187 () Bool)

(assert (=> b!581803 m!841187))

(assert (=> b!581803 m!841187))

(declare-fun m!841189 () Bool)

(assert (=> b!581803 m!841189))

(declare-fun m!841191 () Bool)

(assert (=> b!581804 m!841191))

(check-sat (not b!581808) (not b!581795) b_and!57275 (not b!581775) (not b!581786) (not b!581813) (not b!581771) (not b!581802) (not b_next!16181) (not b!581779) (not b!581805) (not b_next!16187) (not b!581796) (not b!581789) (not b!581780) (not b!581792) b_and!57277 (not b!581806) tp_is_empty!3241 (not start!53912) (not b_next!16185) b_and!57281 (not b!581804) (not b!581794) (not b_next!16183) (not b!581773) (not b!581774) (not b!581784) (not b!581809) (not b!581788) (not b!581800) (not b!581799) (not b!581798) b_and!57279 (not b!581811) (not b!581785) (not b!581803) (not b!581778))
(check-sat (not b_next!16187) b_and!57275 b_and!57277 (not b_next!16183) (not b_next!16181) b_and!57279 (not b_next!16185) b_and!57281)
