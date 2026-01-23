; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58840 () Bool)

(assert start!58840)

(declare-fun b!614939 () Bool)

(declare-fun b_free!17541 () Bool)

(declare-fun b_next!17557 () Bool)

(assert (=> b!614939 (= b_free!17541 (not b_next!17557))))

(declare-fun tp!189904 () Bool)

(declare-fun b_and!60991 () Bool)

(assert (=> b!614939 (= tp!189904 b_and!60991)))

(declare-fun b_free!17543 () Bool)

(declare-fun b_next!17559 () Bool)

(assert (=> b!614939 (= b_free!17543 (not b_next!17559))))

(declare-fun tp!189901 () Bool)

(declare-fun b_and!60993 () Bool)

(assert (=> b!614939 (= tp!189901 b_and!60993)))

(declare-fun b!614936 () Bool)

(declare-fun b_free!17545 () Bool)

(declare-fun b_next!17561 () Bool)

(assert (=> b!614936 (= b_free!17545 (not b_next!17561))))

(declare-fun tp!189902 () Bool)

(declare-fun b_and!60995 () Bool)

(assert (=> b!614936 (= tp!189902 b_and!60995)))

(declare-fun b_free!17547 () Bool)

(declare-fun b_next!17563 () Bool)

(assert (=> b!614936 (= b_free!17547 (not b_next!17563))))

(declare-fun tp!189905 () Bool)

(declare-fun b_and!60997 () Bool)

(assert (=> b!614936 (= tp!189905 b_and!60997)))

(declare-fun b!614896 () Bool)

(declare-datatypes ((Unit!11324 0))(
  ( (Unit!11325) )
))
(declare-fun e!372797 () Unit!11324)

(declare-fun Unit!11326 () Unit!11324)

(assert (=> b!614896 (= e!372797 Unit!11326)))

(declare-fun b!614897 () Bool)

(declare-fun e!372789 () Bool)

(declare-datatypes ((C!4064 0))(
  ( (C!4065 (val!2258 Int)) )
))
(declare-datatypes ((Regex!1571 0))(
  ( (ElementMatch!1571 (c!113591 C!4064)) (Concat!2832 (regOne!3654 Regex!1571) (regTwo!3654 Regex!1571)) (EmptyExpr!1571) (Star!1571 (reg!1900 Regex!1571)) (EmptyLang!1571) (Union!1571 (regOne!3655 Regex!1571) (regTwo!3655 Regex!1571)) )
))
(declare-datatypes ((List!6163 0))(
  ( (Nil!6153) (Cons!6153 (h!11554 (_ BitVec 16)) (t!81354 List!6163)) )
))
(declare-datatypes ((TokenValue!1261 0))(
  ( (FloatLiteralValue!2522 (text!9272 List!6163)) (TokenValueExt!1260 (__x!4420 Int)) (Broken!6305 (value!40095 List!6163)) (Object!1270) (End!1261) (Def!1261) (Underscore!1261) (Match!1261) (Else!1261) (Error!1261) (Case!1261) (If!1261) (Extends!1261) (Abstract!1261) (Class!1261) (Val!1261) (DelimiterValue!2522 (del!1321 List!6163)) (KeywordValue!1267 (value!40096 List!6163)) (CommentValue!2522 (value!40097 List!6163)) (WhitespaceValue!2522 (value!40098 List!6163)) (IndentationValue!1261 (value!40099 List!6163)) (String!8048) (Int32!1261) (Broken!6306 (value!40100 List!6163)) (Boolean!1262) (Unit!11327) (OperatorValue!1264 (op!1321 List!6163)) (IdentifierValue!2522 (value!40101 List!6163)) (IdentifierValue!2523 (value!40102 List!6163)) (WhitespaceValue!2523 (value!40103 List!6163)) (True!2522) (False!2522) (Broken!6307 (value!40104 List!6163)) (Broken!6308 (value!40105 List!6163)) (True!2523) (RightBrace!1261) (RightBracket!1261) (Colon!1261) (Null!1261) (Comma!1261) (LeftBracket!1261) (False!2523) (LeftBrace!1261) (ImaginaryLiteralValue!1261 (text!9273 List!6163)) (StringLiteralValue!3783 (value!40106 List!6163)) (EOFValue!1261 (value!40107 List!6163)) (IdentValue!1261 (value!40108 List!6163)) (DelimiterValue!2523 (value!40109 List!6163)) (DedentValue!1261 (value!40110 List!6163)) (NewLineValue!1261 (value!40111 List!6163)) (IntegerValue!3783 (value!40112 (_ BitVec 32)) (text!9274 List!6163)) (IntegerValue!3784 (value!40113 Int) (text!9275 List!6163)) (Times!1261) (Or!1261) (Equal!1261) (Minus!1261) (Broken!6309 (value!40114 List!6163)) (And!1261) (Div!1261) (LessEqual!1261) (Mod!1261) (Concat!2833) (Not!1261) (Plus!1261) (SpaceValue!1261 (value!40115 List!6163)) (IntegerValue!3785 (value!40116 Int) (text!9276 List!6163)) (StringLiteralValue!3784 (text!9277 List!6163)) (FloatLiteralValue!2523 (text!9278 List!6163)) (BytesLiteralValue!1261 (value!40117 List!6163)) (CommentValue!2523 (value!40118 List!6163)) (StringLiteralValue!3785 (value!40119 List!6163)) (ErrorTokenValue!1261 (msg!1322 List!6163)) )
))
(declare-datatypes ((String!8049 0))(
  ( (String!8050 (value!40120 String)) )
))
(declare-datatypes ((List!6164 0))(
  ( (Nil!6154) (Cons!6154 (h!11555 C!4064) (t!81355 List!6164)) )
))
(declare-datatypes ((IArray!3909 0))(
  ( (IArray!3910 (innerList!2012 List!6164)) )
))
(declare-datatypes ((Conc!1954 0))(
  ( (Node!1954 (left!4921 Conc!1954) (right!5251 Conc!1954) (csize!4138 Int) (cheight!2165 Int)) (Leaf!3080 (xs!4591 IArray!3909) (csize!4139 Int)) (Empty!1954) )
))
(declare-datatypes ((BalanceConc!3916 0))(
  ( (BalanceConc!3917 (c!113592 Conc!1954)) )
))
(declare-datatypes ((TokenValueInjection!2290 0))(
  ( (TokenValueInjection!2291 (toValue!2148 Int) (toChars!2007 Int)) )
))
(declare-datatypes ((Rule!2274 0))(
  ( (Rule!2275 (regex!1237 Regex!1571) (tag!1499 String!8049) (isSeparator!1237 Bool) (transformation!1237 TokenValueInjection!2290)) )
))
(declare-datatypes ((Token!2210 0))(
  ( (Token!2211 (value!40121 TokenValue!1261) (rule!2031 Rule!2274) (size!4837 Int) (originalCharacters!1276 List!6164)) )
))
(declare-fun token!491 () Token!2210)

(declare-fun e!372775 () Bool)

(declare-fun tp!189907 () Bool)

(declare-fun inv!21 (TokenValue!1261) Bool)

(assert (=> b!614897 (= e!372789 (and (inv!21 (value!40121 token!491)) e!372775 tp!189907))))

(declare-fun b!614898 () Bool)

(declare-fun res!267570 () Bool)

(declare-fun e!372801 () Bool)

(assert (=> b!614898 (=> (not res!267570) (not e!372801))))

(declare-fun size!4838 (List!6164) Int)

(assert (=> b!614898 (= res!267570 (= (size!4837 token!491) (size!4838 (originalCharacters!1276 token!491))))))

(declare-fun b!614899 () Bool)

(declare-fun e!372794 () Unit!11324)

(declare-fun Unit!11328 () Unit!11324)

(assert (=> b!614899 (= e!372794 Unit!11328)))

(declare-fun b!614900 () Bool)

(declare-fun res!267585 () Bool)

(declare-fun e!372804 () Bool)

(assert (=> b!614900 (=> (not res!267585) (not e!372804))))

(declare-datatypes ((List!6165 0))(
  ( (Nil!6155) (Cons!6155 (h!11556 Rule!2274) (t!81356 List!6165)) )
))
(declare-fun rules!3103 () List!6165)

(declare-fun isEmpty!4441 (List!6165) Bool)

(assert (=> b!614900 (= res!267585 (not (isEmpty!4441 rules!3103)))))

(declare-fun b!614901 () Bool)

(declare-fun e!372776 () Unit!11324)

(declare-fun e!372803 () Unit!11324)

(assert (=> b!614901 (= e!372776 e!372803)))

(declare-fun lt!264046 () Int)

(declare-datatypes ((tuple2!7014 0))(
  ( (tuple2!7015 (_1!3771 Token!2210) (_2!3771 List!6164)) )
))
(declare-datatypes ((Option!1588 0))(
  ( (None!1587) (Some!1587 (v!16500 tuple2!7014)) )
))
(declare-fun lt!264081 () Option!1588)

(declare-fun getIndex!68 (List!6165 Rule!2274) Int)

(assert (=> b!614901 (= lt!264046 (getIndex!68 rules!3103 (rule!2031 (_1!3771 (v!16500 lt!264081)))))))

(declare-fun lt!264057 () Int)

(assert (=> b!614901 (= lt!264057 (getIndex!68 rules!3103 (rule!2031 token!491)))))

(declare-fun c!113588 () Bool)

(assert (=> b!614901 (= c!113588 (< lt!264046 lt!264057))))

(declare-fun lt!264084 () Unit!11324)

(declare-fun e!372796 () Unit!11324)

(assert (=> b!614901 (= lt!264084 e!372796)))

(declare-fun c!113587 () Bool)

(assert (=> b!614901 (= c!113587 (> lt!264046 lt!264057))))

(declare-fun b!614902 () Bool)

(declare-fun res!267572 () Bool)

(declare-fun e!372781 () Bool)

(assert (=> b!614902 (=> res!267572 e!372781)))

(declare-fun contains!1455 (List!6165 Rule!2274) Bool)

(assert (=> b!614902 (= res!267572 (not (contains!1455 rules!3103 (rule!2031 (_1!3771 (v!16500 lt!264081))))))))

(declare-fun tp!189903 () Bool)

(declare-fun e!372802 () Bool)

(declare-fun e!372777 () Bool)

(declare-fun b!614903 () Bool)

(declare-fun inv!7831 (String!8049) Bool)

(declare-fun inv!7834 (TokenValueInjection!2290) Bool)

(assert (=> b!614903 (= e!372777 (and tp!189903 (inv!7831 (tag!1499 (h!11556 rules!3103))) (inv!7834 (transformation!1237 (h!11556 rules!3103))) e!372802))))

(declare-fun b!614905 () Bool)

(declare-fun e!372787 () Bool)

(declare-fun e!372795 () Bool)

(assert (=> b!614905 (= e!372787 e!372795)))

(declare-fun res!267586 () Bool)

(assert (=> b!614905 (=> (not res!267586) (not e!372795))))

(declare-fun lt!264072 () Option!1588)

(declare-fun isDefined!1399 (Option!1588) Bool)

(assert (=> b!614905 (= res!267586 (isDefined!1399 lt!264072))))

(declare-datatypes ((LexerInterface!1123 0))(
  ( (LexerInterfaceExt!1120 (__x!4421 Int)) (Lexer!1121) )
))
(declare-fun thiss!22590 () LexerInterface!1123)

(declare-fun lt!264053 () List!6164)

(declare-fun maxPrefix!821 (LexerInterface!1123 List!6165 List!6164) Option!1588)

(assert (=> b!614905 (= lt!264072 (maxPrefix!821 thiss!22590 rules!3103 lt!264053))))

(declare-fun input!2705 () List!6164)

(declare-fun suffix!1342 () List!6164)

(declare-fun ++!1725 (List!6164 List!6164) List!6164)

(assert (=> b!614905 (= lt!264053 (++!1725 input!2705 suffix!1342))))

(declare-fun lt!264073 () TokenValue!1261)

(declare-fun lt!264055 () tuple2!7014)

(declare-fun lt!264064 () List!6164)

(declare-fun b!614906 () Bool)

(declare-fun e!372780 () Bool)

(declare-fun lt!264079 () Int)

(declare-fun lt!264068 () List!6164)

(assert (=> b!614906 (= e!372780 (and (= (size!4837 (_1!3771 (v!16500 lt!264081))) lt!264079) (= (originalCharacters!1276 (_1!3771 (v!16500 lt!264081))) lt!264068) (= lt!264055 (tuple2!7015 (Token!2211 lt!264073 (rule!2031 (_1!3771 (v!16500 lt!264081))) lt!264079 lt!264068) lt!264064))))))

(declare-fun b!614907 () Bool)

(assert (=> b!614907 (= e!372804 e!372787)))

(declare-fun res!267581 () Bool)

(assert (=> b!614907 (=> (not res!267581) (not e!372787))))

(declare-fun lt!264066 () List!6164)

(assert (=> b!614907 (= res!267581 (= lt!264066 input!2705))))

(declare-fun list!2590 (BalanceConc!3916) List!6164)

(declare-fun charsOf!866 (Token!2210) BalanceConc!3916)

(assert (=> b!614907 (= lt!264066 (list!2590 (charsOf!866 token!491)))))

(declare-fun b!614908 () Bool)

(declare-fun tp!189908 () Bool)

(declare-fun e!372793 () Bool)

(assert (=> b!614908 (= e!372775 (and tp!189908 (inv!7831 (tag!1499 (rule!2031 token!491))) (inv!7834 (transformation!1237 (rule!2031 token!491))) e!372793))))

(declare-fun b!614909 () Bool)

(declare-fun res!267574 () Bool)

(assert (=> b!614909 (=> res!267574 e!372781)))

(assert (=> b!614909 (= res!267574 (not (contains!1455 rules!3103 (rule!2031 token!491))))))

(declare-fun b!614910 () Bool)

(declare-fun e!372778 () Bool)

(assert (=> b!614910 (= e!372778 false)))

(declare-fun b!614911 () Bool)

(declare-fun e!372784 () Bool)

(assert (=> b!614911 e!372784))

(declare-fun res!267577 () Bool)

(assert (=> b!614911 (=> (not res!267577) (not e!372784))))

(declare-fun matchR!674 (Regex!1571 List!6164) Bool)

(assert (=> b!614911 (= res!267577 (not (matchR!674 (regex!1237 (rule!2031 (_1!3771 (v!16500 lt!264081)))) input!2705)))))

(declare-fun lt!264086 () Unit!11324)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!40 (LexerInterface!1123 List!6165 Rule!2274 List!6164 List!6164 Rule!2274) Unit!11324)

(assert (=> b!614911 (= lt!264086 (lemmaMaxPrefNoSmallerRuleMatches!40 thiss!22590 rules!3103 (rule!2031 token!491) input!2705 lt!264053 (rule!2031 (_1!3771 (v!16500 lt!264081)))))))

(declare-fun Unit!11329 () Unit!11324)

(assert (=> b!614911 (= e!372796 Unit!11329)))

(declare-fun b!614912 () Bool)

(declare-fun e!372791 () Bool)

(declare-fun e!372785 () Bool)

(assert (=> b!614912 (= e!372791 e!372785)))

(declare-fun res!267588 () Bool)

(assert (=> b!614912 (=> res!267588 e!372785)))

(declare-fun lt!264050 () Int)

(assert (=> b!614912 (= res!267588 (>= lt!264079 lt!264050))))

(declare-fun b!614913 () Bool)

(declare-fun Unit!11330 () Unit!11324)

(assert (=> b!614913 (= e!372803 Unit!11330)))

(declare-fun b!614914 () Bool)

(declare-fun e!372782 () Bool)

(declare-fun e!372805 () Bool)

(assert (=> b!614914 (= e!372782 e!372805)))

(declare-fun res!267565 () Bool)

(assert (=> b!614914 (=> (not res!267565) (not e!372805))))

(get-info :version)

(assert (=> b!614914 (= res!267565 ((_ is Some!1587) lt!264081))))

(assert (=> b!614914 (= lt!264081 (maxPrefix!821 thiss!22590 rules!3103 input!2705))))

(declare-fun b!614915 () Bool)

(assert (=> b!614915 (= e!372781 (= (getIndex!68 rules!3103 (rule!2031 (_1!3771 (v!16500 lt!264081)))) (getIndex!68 rules!3103 (rule!2031 token!491))))))

(declare-fun lt!264077 () Unit!11324)

(assert (=> b!614915 (= lt!264077 e!372776)))

(declare-fun c!113589 () Bool)

(assert (=> b!614915 (= c!113589 (not (= (rule!2031 (_1!3771 (v!16500 lt!264081))) (rule!2031 token!491))))))

(declare-fun b!614916 () Bool)

(declare-fun res!267583 () Bool)

(assert (=> b!614916 (=> (not res!267583) (not e!372780))))

(assert (=> b!614916 (= res!267583 (= (size!4837 (_1!3771 (v!16500 lt!264081))) (size!4838 (originalCharacters!1276 (_1!3771 (v!16500 lt!264081))))))))

(declare-fun b!614917 () Bool)

(declare-fun res!267566 () Bool)

(assert (=> b!614917 (=> res!267566 e!372781)))

(declare-fun isEmpty!4442 (List!6164) Bool)

(assert (=> b!614917 (= res!267566 (not (isEmpty!4442 (_2!3771 (v!16500 lt!264081)))))))

(declare-fun b!614918 () Bool)

(assert (=> b!614918 (= e!372784 false)))

(declare-fun b!614919 () Bool)

(declare-fun res!267567 () Bool)

(assert (=> b!614919 (=> (not res!267567) (not e!372804))))

(declare-fun rulesInvariant!1086 (LexerInterface!1123 List!6165) Bool)

(assert (=> b!614919 (= res!267567 (rulesInvariant!1086 thiss!22590 rules!3103))))

(declare-fun lt!264071 () List!6164)

(declare-fun lt!264061 () TokenValue!1261)

(declare-fun b!614920 () Bool)

(assert (=> b!614920 (= e!372801 (and (= (size!4837 token!491) lt!264050) (= (originalCharacters!1276 token!491) lt!264066) (= (tuple2!7015 token!491 suffix!1342) (tuple2!7015 (Token!2211 lt!264061 (rule!2031 token!491) lt!264050 lt!264066) lt!264071))))))

(declare-fun b!614921 () Bool)

(assert (=> b!614921 e!372778))

(declare-fun res!267587 () Bool)

(assert (=> b!614921 (=> (not res!267587) (not e!372778))))

(assert (=> b!614921 (= res!267587 (not (matchR!674 (regex!1237 (rule!2031 token!491)) input!2705)))))

(declare-fun lt!264056 () Unit!11324)

(assert (=> b!614921 (= lt!264056 (lemmaMaxPrefNoSmallerRuleMatches!40 thiss!22590 rules!3103 (rule!2031 (_1!3771 (v!16500 lt!264081))) input!2705 input!2705 (rule!2031 token!491)))))

(declare-fun Unit!11331 () Unit!11324)

(assert (=> b!614921 (= e!372803 Unit!11331)))

(declare-fun b!614922 () Bool)

(declare-fun res!267571 () Bool)

(declare-fun e!372790 () Bool)

(assert (=> b!614922 (=> (not res!267571) (not e!372790))))

(declare-fun get!2370 (Option!1588) tuple2!7014)

(assert (=> b!614922 (= res!267571 (= (_1!3771 (get!2370 lt!264081)) (_1!3771 (v!16500 lt!264081))))))

(declare-fun b!614923 () Bool)

(assert (=> b!614923 (= e!372790 (= lt!264064 (_2!3771 (v!16500 lt!264081))))))

(declare-fun b!614924 () Bool)

(assert (=> b!614924 (= e!372795 e!372782)))

(declare-fun res!267582 () Bool)

(assert (=> b!614924 (=> (not res!267582) (not e!372782))))

(declare-fun lt!264067 () tuple2!7014)

(assert (=> b!614924 (= res!267582 (and (= (_1!3771 lt!264067) token!491) (= (_2!3771 lt!264067) suffix!1342)))))

(assert (=> b!614924 (= lt!264067 (get!2370 lt!264072))))

(declare-fun b!614925 () Bool)

(declare-fun e!372798 () Bool)

(assert (=> b!614925 (= e!372805 e!372798)))

(declare-fun res!267568 () Bool)

(assert (=> b!614925 (=> (not res!267568) (not e!372798))))

(declare-fun lt!264088 () List!6164)

(assert (=> b!614925 (= res!267568 (= lt!264088 lt!264053))))

(assert (=> b!614925 (= lt!264088 (++!1725 lt!264066 suffix!1342))))

(declare-fun b!614926 () Bool)

(declare-fun e!372774 () Bool)

(declare-fun tp!189899 () Bool)

(assert (=> b!614926 (= e!372774 (and e!372777 tp!189899))))

(declare-fun b!614927 () Bool)

(declare-fun e!372779 () Bool)

(assert (=> b!614927 (= e!372798 (not e!372779))))

(declare-fun res!267578 () Bool)

(assert (=> b!614927 (=> res!267578 e!372779)))

(declare-fun isPrefix!865 (List!6164 List!6164) Bool)

(assert (=> b!614927 (= res!267578 (not (isPrefix!865 input!2705 lt!264088)))))

(assert (=> b!614927 (isPrefix!865 lt!264066 lt!264088)))

(declare-fun lt!264047 () Unit!11324)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!710 (List!6164 List!6164) Unit!11324)

(assert (=> b!614927 (= lt!264047 (lemmaConcatTwoListThenFirstIsPrefix!710 lt!264066 suffix!1342))))

(assert (=> b!614927 (isPrefix!865 input!2705 lt!264053)))

(declare-fun lt!264052 () Unit!11324)

(assert (=> b!614927 (= lt!264052 (lemmaConcatTwoListThenFirstIsPrefix!710 input!2705 suffix!1342))))

(assert (=> b!614927 e!372780))

(declare-fun res!267590 () Bool)

(assert (=> b!614927 (=> (not res!267590) (not e!372780))))

(assert (=> b!614927 (= res!267590 (= (value!40121 (_1!3771 (v!16500 lt!264081))) lt!264073))))

(declare-fun lt!264049 () BalanceConc!3916)

(declare-fun apply!1490 (TokenValueInjection!2290 BalanceConc!3916) TokenValue!1261)

(assert (=> b!614927 (= lt!264073 (apply!1490 (transformation!1237 (rule!2031 (_1!3771 (v!16500 lt!264081)))) lt!264049))))

(declare-fun seqFromList!1413 (List!6164) BalanceConc!3916)

(assert (=> b!614927 (= lt!264049 (seqFromList!1413 lt!264068))))

(declare-fun lt!264080 () Unit!11324)

(declare-fun lemmaInv!345 (TokenValueInjection!2290) Unit!11324)

(assert (=> b!614927 (= lt!264080 (lemmaInv!345 (transformation!1237 (rule!2031 token!491))))))

(declare-fun lt!264069 () Unit!11324)

(assert (=> b!614927 (= lt!264069 (lemmaInv!345 (transformation!1237 (rule!2031 (_1!3771 (v!16500 lt!264081))))))))

(declare-fun ruleValid!435 (LexerInterface!1123 Rule!2274) Bool)

(assert (=> b!614927 (ruleValid!435 thiss!22590 (rule!2031 token!491))))

(declare-fun lt!264062 () Unit!11324)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!282 (LexerInterface!1123 Rule!2274 List!6165) Unit!11324)

(assert (=> b!614927 (= lt!264062 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!282 thiss!22590 (rule!2031 token!491) rules!3103))))

(assert (=> b!614927 (ruleValid!435 thiss!22590 (rule!2031 (_1!3771 (v!16500 lt!264081))))))

(declare-fun lt!264087 () Unit!11324)

(assert (=> b!614927 (= lt!264087 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!282 thiss!22590 (rule!2031 (_1!3771 (v!16500 lt!264081))) rules!3103))))

(assert (=> b!614927 (isPrefix!865 input!2705 input!2705)))

(declare-fun lt!264045 () Unit!11324)

(declare-fun lemmaIsPrefixRefl!601 (List!6164 List!6164) Unit!11324)

(assert (=> b!614927 (= lt!264045 (lemmaIsPrefixRefl!601 input!2705 input!2705))))

(assert (=> b!614927 (= (_2!3771 (v!16500 lt!264081)) lt!264064)))

(declare-fun lt!264059 () Unit!11324)

(declare-fun lemmaSamePrefixThenSameSuffix!578 (List!6164 List!6164 List!6164 List!6164 List!6164) Unit!11324)

(assert (=> b!614927 (= lt!264059 (lemmaSamePrefixThenSameSuffix!578 lt!264068 (_2!3771 (v!16500 lt!264081)) lt!264068 lt!264064 input!2705))))

(declare-fun getSuffix!382 (List!6164 List!6164) List!6164)

(assert (=> b!614927 (= lt!264064 (getSuffix!382 input!2705 lt!264068))))

(declare-fun lt!264085 () List!6164)

(assert (=> b!614927 (isPrefix!865 lt!264068 lt!264085)))

(assert (=> b!614927 (= lt!264085 (++!1725 lt!264068 (_2!3771 (v!16500 lt!264081))))))

(declare-fun lt!264082 () Unit!11324)

(assert (=> b!614927 (= lt!264082 (lemmaConcatTwoListThenFirstIsPrefix!710 lt!264068 (_2!3771 (v!16500 lt!264081))))))

(declare-fun lt!264048 () Unit!11324)

(declare-fun lemmaCharactersSize!296 (Token!2210) Unit!11324)

(assert (=> b!614927 (= lt!264048 (lemmaCharactersSize!296 token!491))))

(declare-fun lt!264054 () Unit!11324)

(assert (=> b!614927 (= lt!264054 (lemmaCharactersSize!296 (_1!3771 (v!16500 lt!264081))))))

(declare-fun lt!264060 () Unit!11324)

(assert (=> b!614927 (= lt!264060 e!372797)))

(declare-fun c!113586 () Bool)

(assert (=> b!614927 (= c!113586 (> lt!264079 lt!264050))))

(assert (=> b!614927 (= lt!264050 (size!4838 lt!264066))))

(assert (=> b!614927 (= lt!264079 (size!4838 lt!264068))))

(assert (=> b!614927 (= lt!264068 (list!2590 (charsOf!866 (_1!3771 (v!16500 lt!264081)))))))

(assert (=> b!614927 (= lt!264081 (Some!1587 lt!264055))))

(assert (=> b!614927 (= lt!264055 (tuple2!7015 (_1!3771 (v!16500 lt!264081)) (_2!3771 (v!16500 lt!264081))))))

(declare-fun lt!264075 () Unit!11324)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!310 (List!6164 List!6164 List!6164 List!6164) Unit!11324)

(assert (=> b!614927 (= lt!264075 (lemmaConcatSameAndSameSizesThenSameLists!310 lt!264066 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!614928 () Bool)

(declare-fun Unit!11332 () Unit!11324)

(assert (=> b!614928 (= e!372794 Unit!11332)))

(declare-fun lt!264058 () Unit!11324)

(declare-fun lemmaSemiInverse!267 (TokenValueInjection!2290 BalanceConc!3916) Unit!11324)

(assert (=> b!614928 (= lt!264058 (lemmaSemiInverse!267 (transformation!1237 (rule!2031 (_1!3771 (v!16500 lt!264081)))) lt!264049))))

(declare-fun lt!264078 () Unit!11324)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!90 (LexerInterface!1123 List!6165 Rule!2274 List!6164 List!6164 List!6164 Rule!2274) Unit!11324)

(assert (=> b!614928 (= lt!264078 (lemmaMaxPrefixOutputsMaxPrefix!90 thiss!22590 rules!3103 (rule!2031 (_1!3771 (v!16500 lt!264081))) lt!264068 input!2705 input!2705 (rule!2031 token!491)))))

(declare-fun res!267584 () Bool)

(assert (=> b!614928 (= res!267584 (not (matchR!674 (regex!1237 (rule!2031 token!491)) input!2705)))))

(declare-fun e!372783 () Bool)

(assert (=> b!614928 (=> (not res!267584) (not e!372783))))

(assert (=> b!614928 e!372783))

(declare-fun b!614929 () Bool)

(declare-fun Unit!11333 () Unit!11324)

(assert (=> b!614929 (= e!372796 Unit!11333)))

(declare-fun b!614930 () Bool)

(declare-fun Unit!11334 () Unit!11324)

(assert (=> b!614930 (= e!372797 Unit!11334)))

(assert (=> b!614930 false))

(declare-fun b!614931 () Bool)

(declare-fun res!267580 () Bool)

(assert (=> b!614931 (=> (not res!267580) (not e!372804))))

(assert (=> b!614931 (= res!267580 (not (isEmpty!4442 input!2705)))))

(declare-fun b!614932 () Bool)

(assert (=> b!614932 (= e!372783 false)))

(declare-fun b!614933 () Bool)

(assert (=> b!614933 (= e!372779 e!372781)))

(declare-fun res!267576 () Bool)

(assert (=> b!614933 (=> res!267576 e!372781)))

(assert (=> b!614933 (= res!267576 (or (not (= lt!264079 lt!264050)) (not (= lt!264085 input!2705)) (not (= lt!264085 lt!264066))))))

(declare-fun lt!264051 () Unit!11324)

(declare-fun lt!264083 () BalanceConc!3916)

(assert (=> b!614933 (= lt!264051 (lemmaSemiInverse!267 (transformation!1237 (rule!2031 token!491)) lt!264083))))

(declare-fun lt!264063 () Unit!11324)

(assert (=> b!614933 (= lt!264063 (lemmaSemiInverse!267 (transformation!1237 (rule!2031 (_1!3771 (v!16500 lt!264081)))) lt!264049))))

(declare-fun lt!264074 () Unit!11324)

(assert (=> b!614933 (= lt!264074 e!372794)))

(declare-fun c!113590 () Bool)

(assert (=> b!614933 (= c!113590 (< lt!264079 lt!264050))))

(assert (=> b!614933 e!372791))

(declare-fun res!267575 () Bool)

(assert (=> b!614933 (=> (not res!267575) (not e!372791))))

(declare-fun maxPrefixOneRule!484 (LexerInterface!1123 Rule!2274 List!6164) Option!1588)

(assert (=> b!614933 (= res!267575 (= (maxPrefixOneRule!484 thiss!22590 (rule!2031 token!491) lt!264053) (Some!1587 (tuple2!7015 (Token!2211 lt!264061 (rule!2031 token!491) lt!264050 lt!264066) suffix!1342))))))

(declare-fun lt!264070 () Unit!11324)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!190 (LexerInterface!1123 List!6165 List!6164 List!6164 List!6164 Rule!2274) Unit!11324)

(assert (=> b!614933 (= lt!264070 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!190 thiss!22590 rules!3103 lt!264066 lt!264053 suffix!1342 (rule!2031 token!491)))))

(assert (=> b!614933 (= (maxPrefixOneRule!484 thiss!22590 (rule!2031 (_1!3771 (v!16500 lt!264081))) input!2705) (Some!1587 (tuple2!7015 (Token!2211 lt!264073 (rule!2031 (_1!3771 (v!16500 lt!264081))) lt!264079 lt!264068) (_2!3771 (v!16500 lt!264081)))))))

(declare-fun lt!264076 () Unit!11324)

(assert (=> b!614933 (= lt!264076 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!190 thiss!22590 rules!3103 lt!264068 input!2705 (_2!3771 (v!16500 lt!264081)) (rule!2031 (_1!3771 (v!16500 lt!264081)))))))

(assert (=> b!614933 e!372801))

(declare-fun res!267569 () Bool)

(assert (=> b!614933 (=> (not res!267569) (not e!372801))))

(assert (=> b!614933 (= res!267569 (= (value!40121 token!491) lt!264061))))

(assert (=> b!614933 (= lt!264061 (apply!1490 (transformation!1237 (rule!2031 token!491)) lt!264083))))

(assert (=> b!614933 (= lt!264083 (seqFromList!1413 lt!264066))))

(assert (=> b!614933 (= suffix!1342 lt!264071)))

(declare-fun lt!264065 () Unit!11324)

(assert (=> b!614933 (= lt!264065 (lemmaSamePrefixThenSameSuffix!578 lt!264066 suffix!1342 lt!264066 lt!264071 lt!264053))))

(assert (=> b!614933 (= lt!264071 (getSuffix!382 lt!264053 lt!264066))))

(declare-fun b!614934 () Bool)

(declare-fun res!267573 () Bool)

(assert (=> b!614934 (=> res!267573 e!372781)))

(assert (=> b!614934 (= res!267573 (or (not (= lt!264068 lt!264066)) (not (= (originalCharacters!1276 (_1!3771 (v!16500 lt!264081))) (originalCharacters!1276 token!491)))))))

(declare-fun b!614935 () Bool)

(assert (=> b!614935 (= e!372785 e!372790)))

(declare-fun res!267589 () Bool)

(assert (=> b!614935 (=> (not res!267589) (not e!372790))))

(assert (=> b!614935 (= res!267589 (isDefined!1399 lt!264081))))

(assert (=> b!614936 (= e!372793 (and tp!189902 tp!189905))))

(declare-fun b!614937 () Bool)

(declare-fun e!372799 () Bool)

(declare-fun tp_is_empty!3497 () Bool)

(declare-fun tp!189900 () Bool)

(assert (=> b!614937 (= e!372799 (and tp_is_empty!3497 tp!189900))))

(declare-fun res!267579 () Bool)

(assert (=> start!58840 (=> (not res!267579) (not e!372804))))

(assert (=> start!58840 (= res!267579 ((_ is Lexer!1121) thiss!22590))))

(assert (=> start!58840 e!372804))

(assert (=> start!58840 e!372799))

(assert (=> start!58840 e!372774))

(declare-fun inv!7835 (Token!2210) Bool)

(assert (=> start!58840 (and (inv!7835 token!491) e!372789)))

(assert (=> start!58840 true))

(declare-fun e!372786 () Bool)

(assert (=> start!58840 e!372786))

(declare-fun b!614904 () Bool)

(declare-fun Unit!11335 () Unit!11324)

(assert (=> b!614904 (= e!372776 Unit!11335)))

(declare-fun b!614938 () Bool)

(declare-fun tp!189906 () Bool)

(assert (=> b!614938 (= e!372786 (and tp_is_empty!3497 tp!189906))))

(assert (=> b!614939 (= e!372802 (and tp!189904 tp!189901))))

(assert (= (and start!58840 res!267579) b!614900))

(assert (= (and b!614900 res!267585) b!614919))

(assert (= (and b!614919 res!267567) b!614931))

(assert (= (and b!614931 res!267580) b!614907))

(assert (= (and b!614907 res!267581) b!614905))

(assert (= (and b!614905 res!267586) b!614924))

(assert (= (and b!614924 res!267582) b!614914))

(assert (= (and b!614914 res!267565) b!614925))

(assert (= (and b!614925 res!267568) b!614927))

(assert (= (and b!614927 c!113586) b!614930))

(assert (= (and b!614927 (not c!113586)) b!614896))

(assert (= (and b!614927 res!267590) b!614916))

(assert (= (and b!614916 res!267583) b!614906))

(assert (= (and b!614927 (not res!267578)) b!614933))

(assert (= (and b!614933 res!267569) b!614898))

(assert (= (and b!614898 res!267570) b!614920))

(assert (= (and b!614933 res!267575) b!614912))

(assert (= (and b!614912 (not res!267588)) b!614935))

(assert (= (and b!614935 res!267589) b!614922))

(assert (= (and b!614922 res!267571) b!614923))

(assert (= (and b!614933 c!113590) b!614928))

(assert (= (and b!614933 (not c!113590)) b!614899))

(assert (= (and b!614928 res!267584) b!614932))

(assert (= (and b!614933 (not res!267576)) b!614917))

(assert (= (and b!614917 (not res!267566)) b!614934))

(assert (= (and b!614934 (not res!267573)) b!614902))

(assert (= (and b!614902 (not res!267572)) b!614909))

(assert (= (and b!614909 (not res!267574)) b!614915))

(assert (= (and b!614915 c!113589) b!614901))

(assert (= (and b!614915 (not c!113589)) b!614904))

(assert (= (and b!614901 c!113588) b!614911))

(assert (= (and b!614901 (not c!113588)) b!614929))

(assert (= (and b!614911 res!267577) b!614918))

(assert (= (and b!614901 c!113587) b!614921))

(assert (= (and b!614901 (not c!113587)) b!614913))

(assert (= (and b!614921 res!267587) b!614910))

(assert (= (and start!58840 ((_ is Cons!6154) suffix!1342)) b!614937))

(assert (= b!614903 b!614939))

(assert (= b!614926 b!614903))

(assert (= (and start!58840 ((_ is Cons!6155) rules!3103)) b!614926))

(assert (= b!614908 b!614936))

(assert (= b!614897 b!614908))

(assert (= start!58840 b!614897))

(assert (= (and start!58840 ((_ is Cons!6154) input!2705)) b!614938))

(declare-fun m!883705 () Bool)

(assert (=> b!614917 m!883705))

(declare-fun m!883707 () Bool)

(assert (=> b!614924 m!883707))

(declare-fun m!883709 () Bool)

(assert (=> b!614922 m!883709))

(declare-fun m!883711 () Bool)

(assert (=> b!614897 m!883711))

(declare-fun m!883713 () Bool)

(assert (=> b!614902 m!883713))

(declare-fun m!883715 () Bool)

(assert (=> b!614916 m!883715))

(declare-fun m!883717 () Bool)

(assert (=> b!614919 m!883717))

(declare-fun m!883719 () Bool)

(assert (=> b!614933 m!883719))

(declare-fun m!883721 () Bool)

(assert (=> b!614933 m!883721))

(declare-fun m!883723 () Bool)

(assert (=> b!614933 m!883723))

(declare-fun m!883725 () Bool)

(assert (=> b!614933 m!883725))

(declare-fun m!883727 () Bool)

(assert (=> b!614933 m!883727))

(declare-fun m!883729 () Bool)

(assert (=> b!614933 m!883729))

(declare-fun m!883731 () Bool)

(assert (=> b!614933 m!883731))

(declare-fun m!883733 () Bool)

(assert (=> b!614933 m!883733))

(declare-fun m!883735 () Bool)

(assert (=> b!614933 m!883735))

(declare-fun m!883737 () Bool)

(assert (=> b!614933 m!883737))

(declare-fun m!883739 () Bool)

(assert (=> b!614900 m!883739))

(assert (=> b!614928 m!883733))

(declare-fun m!883741 () Bool)

(assert (=> b!614928 m!883741))

(declare-fun m!883743 () Bool)

(assert (=> b!614928 m!883743))

(declare-fun m!883745 () Bool)

(assert (=> b!614931 m!883745))

(declare-fun m!883747 () Bool)

(assert (=> b!614925 m!883747))

(declare-fun m!883749 () Bool)

(assert (=> b!614915 m!883749))

(declare-fun m!883751 () Bool)

(assert (=> b!614915 m!883751))

(assert (=> b!614901 m!883749))

(assert (=> b!614901 m!883751))

(declare-fun m!883753 () Bool)

(assert (=> b!614908 m!883753))

(declare-fun m!883755 () Bool)

(assert (=> b!614908 m!883755))

(declare-fun m!883757 () Bool)

(assert (=> b!614905 m!883757))

(declare-fun m!883759 () Bool)

(assert (=> b!614905 m!883759))

(declare-fun m!883761 () Bool)

(assert (=> b!614905 m!883761))

(declare-fun m!883763 () Bool)

(assert (=> b!614927 m!883763))

(declare-fun m!883765 () Bool)

(assert (=> b!614927 m!883765))

(declare-fun m!883767 () Bool)

(assert (=> b!614927 m!883767))

(declare-fun m!883769 () Bool)

(assert (=> b!614927 m!883769))

(declare-fun m!883771 () Bool)

(assert (=> b!614927 m!883771))

(declare-fun m!883773 () Bool)

(assert (=> b!614927 m!883773))

(declare-fun m!883775 () Bool)

(assert (=> b!614927 m!883775))

(declare-fun m!883777 () Bool)

(assert (=> b!614927 m!883777))

(declare-fun m!883779 () Bool)

(assert (=> b!614927 m!883779))

(declare-fun m!883781 () Bool)

(assert (=> b!614927 m!883781))

(declare-fun m!883783 () Bool)

(assert (=> b!614927 m!883783))

(declare-fun m!883785 () Bool)

(assert (=> b!614927 m!883785))

(declare-fun m!883787 () Bool)

(assert (=> b!614927 m!883787))

(declare-fun m!883789 () Bool)

(assert (=> b!614927 m!883789))

(declare-fun m!883791 () Bool)

(assert (=> b!614927 m!883791))

(declare-fun m!883793 () Bool)

(assert (=> b!614927 m!883793))

(declare-fun m!883795 () Bool)

(assert (=> b!614927 m!883795))

(declare-fun m!883797 () Bool)

(assert (=> b!614927 m!883797))

(assert (=> b!614927 m!883781))

(declare-fun m!883799 () Bool)

(assert (=> b!614927 m!883799))

(declare-fun m!883801 () Bool)

(assert (=> b!614927 m!883801))

(declare-fun m!883803 () Bool)

(assert (=> b!614927 m!883803))

(declare-fun m!883805 () Bool)

(assert (=> b!614927 m!883805))

(declare-fun m!883807 () Bool)

(assert (=> b!614927 m!883807))

(declare-fun m!883809 () Bool)

(assert (=> b!614927 m!883809))

(declare-fun m!883811 () Bool)

(assert (=> b!614927 m!883811))

(declare-fun m!883813 () Bool)

(assert (=> b!614927 m!883813))

(declare-fun m!883815 () Bool)

(assert (=> b!614927 m!883815))

(declare-fun m!883817 () Bool)

(assert (=> b!614914 m!883817))

(declare-fun m!883819 () Bool)

(assert (=> b!614935 m!883819))

(declare-fun m!883821 () Bool)

(assert (=> b!614903 m!883821))

(declare-fun m!883823 () Bool)

(assert (=> b!614903 m!883823))

(declare-fun m!883825 () Bool)

(assert (=> b!614911 m!883825))

(declare-fun m!883827 () Bool)

(assert (=> b!614911 m!883827))

(declare-fun m!883829 () Bool)

(assert (=> b!614909 m!883829))

(declare-fun m!883831 () Bool)

(assert (=> b!614907 m!883831))

(assert (=> b!614907 m!883831))

(declare-fun m!883833 () Bool)

(assert (=> b!614907 m!883833))

(declare-fun m!883835 () Bool)

(assert (=> b!614898 m!883835))

(declare-fun m!883837 () Bool)

(assert (=> start!58840 m!883837))

(assert (=> b!614921 m!883743))

(declare-fun m!883839 () Bool)

(assert (=> b!614921 m!883839))

(check-sat (not b!614897) tp_is_empty!3497 (not b!614917) (not b!614901) (not b_next!17559) (not b!614935) (not b!614905) (not b!614903) b_and!60993 (not b!614922) (not b!614926) (not b!614937) (not b!614933) b_and!60995 (not start!58840) (not b_next!17561) (not b!614919) (not b!614916) (not b!614914) (not b!614938) (not b!614902) (not b!614907) b_and!60997 (not b!614898) (not b!614909) b_and!60991 (not b!614908) (not b!614915) (not b_next!17557) (not b!614921) (not b!614925) (not b!614924) (not b!614928) (not b!614927) (not b_next!17563) (not b!614931) (not b!614900) (not b!614911))
(check-sat (not b_next!17561) (not b_next!17559) b_and!60997 b_and!60991 (not b_next!17557) b_and!60993 (not b_next!17563) b_and!60995)
