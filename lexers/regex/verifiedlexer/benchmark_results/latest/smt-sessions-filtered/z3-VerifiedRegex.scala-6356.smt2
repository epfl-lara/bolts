; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!328094 () Bool)

(assert start!328094)

(declare-fun b!3529485 () Bool)

(declare-fun b_free!91001 () Bool)

(declare-fun b_next!91705 () Bool)

(assert (=> b!3529485 (= b_free!91001 (not b_next!91705))))

(declare-fun tp!1088303 () Bool)

(declare-fun b_and!251715 () Bool)

(assert (=> b!3529485 (= tp!1088303 b_and!251715)))

(declare-fun b_free!91003 () Bool)

(declare-fun b_next!91707 () Bool)

(assert (=> b!3529485 (= b_free!91003 (not b_next!91707))))

(declare-fun tp!1088313 () Bool)

(declare-fun b_and!251717 () Bool)

(assert (=> b!3529485 (= tp!1088313 b_and!251717)))

(declare-fun b!3529478 () Bool)

(declare-fun b_free!91005 () Bool)

(declare-fun b_next!91709 () Bool)

(assert (=> b!3529478 (= b_free!91005 (not b_next!91709))))

(declare-fun tp!1088311 () Bool)

(declare-fun b_and!251719 () Bool)

(assert (=> b!3529478 (= tp!1088311 b_and!251719)))

(declare-fun b_free!91007 () Bool)

(declare-fun b_next!91711 () Bool)

(assert (=> b!3529478 (= b_free!91007 (not b_next!91711))))

(declare-fun tp!1088306 () Bool)

(declare-fun b_and!251721 () Bool)

(assert (=> b!3529478 (= tp!1088306 b_and!251721)))

(declare-fun b!3529460 () Bool)

(declare-fun b_free!91009 () Bool)

(declare-fun b_next!91713 () Bool)

(assert (=> b!3529460 (= b_free!91009 (not b_next!91713))))

(declare-fun tp!1088314 () Bool)

(declare-fun b_and!251723 () Bool)

(assert (=> b!3529460 (= tp!1088314 b_and!251723)))

(declare-fun b_free!91011 () Bool)

(declare-fun b_next!91715 () Bool)

(assert (=> b!3529460 (= b_free!91011 (not b_next!91715))))

(declare-fun tp!1088305 () Bool)

(declare-fun b_and!251725 () Bool)

(assert (=> b!3529460 (= tp!1088305 b_and!251725)))

(declare-fun bs!565851 () Bool)

(declare-fun b!3529461 () Bool)

(declare-fun b!3529459 () Bool)

(assert (= bs!565851 (and b!3529461 b!3529459)))

(declare-fun lambda!122989 () Int)

(declare-fun lambda!122988 () Int)

(assert (=> bs!565851 (not (= lambda!122989 lambda!122988))))

(declare-fun b!3529512 () Bool)

(declare-fun e!2184996 () Bool)

(assert (=> b!3529512 (= e!2184996 true)))

(declare-fun b!3529511 () Bool)

(declare-fun e!2184995 () Bool)

(assert (=> b!3529511 (= e!2184995 e!2184996)))

(declare-fun b!3529510 () Bool)

(declare-fun e!2184994 () Bool)

(assert (=> b!3529510 (= e!2184994 e!2184995)))

(assert (=> b!3529461 e!2184994))

(assert (= b!3529511 b!3529512))

(assert (= b!3529510 b!3529511))

(declare-datatypes ((C!20688 0))(
  ( (C!20689 (val!12392 Int)) )
))
(declare-datatypes ((Regex!10251 0))(
  ( (ElementMatch!10251 (c!608378 C!20688)) (Concat!15973 (regOne!21014 Regex!10251) (regTwo!21014 Regex!10251)) (EmptyExpr!10251) (Star!10251 (reg!10580 Regex!10251)) (EmptyLang!10251) (Union!10251 (regOne!21015 Regex!10251) (regTwo!21015 Regex!10251)) )
))
(declare-datatypes ((List!37538 0))(
  ( (Nil!37414) (Cons!37414 (h!42834 (_ BitVec 16)) (t!282829 List!37538)) )
))
(declare-datatypes ((TokenValue!5722 0))(
  ( (FloatLiteralValue!11444 (text!40499 List!37538)) (TokenValueExt!5721 (__x!23661 Int)) (Broken!28610 (value!176956 List!37538)) (Object!5845) (End!5722) (Def!5722) (Underscore!5722) (Match!5722) (Else!5722) (Error!5722) (Case!5722) (If!5722) (Extends!5722) (Abstract!5722) (Class!5722) (Val!5722) (DelimiterValue!11444 (del!5782 List!37538)) (KeywordValue!5728 (value!176957 List!37538)) (CommentValue!11444 (value!176958 List!37538)) (WhitespaceValue!11444 (value!176959 List!37538)) (IndentationValue!5722 (value!176960 List!37538)) (String!41943) (Int32!5722) (Broken!28611 (value!176961 List!37538)) (Boolean!5723) (Unit!53123) (OperatorValue!5725 (op!5782 List!37538)) (IdentifierValue!11444 (value!176962 List!37538)) (IdentifierValue!11445 (value!176963 List!37538)) (WhitespaceValue!11445 (value!176964 List!37538)) (True!11444) (False!11444) (Broken!28612 (value!176965 List!37538)) (Broken!28613 (value!176966 List!37538)) (True!11445) (RightBrace!5722) (RightBracket!5722) (Colon!5722) (Null!5722) (Comma!5722) (LeftBracket!5722) (False!11445) (LeftBrace!5722) (ImaginaryLiteralValue!5722 (text!40500 List!37538)) (StringLiteralValue!17166 (value!176967 List!37538)) (EOFValue!5722 (value!176968 List!37538)) (IdentValue!5722 (value!176969 List!37538)) (DelimiterValue!11445 (value!176970 List!37538)) (DedentValue!5722 (value!176971 List!37538)) (NewLineValue!5722 (value!176972 List!37538)) (IntegerValue!17166 (value!176973 (_ BitVec 32)) (text!40501 List!37538)) (IntegerValue!17167 (value!176974 Int) (text!40502 List!37538)) (Times!5722) (Or!5722) (Equal!5722) (Minus!5722) (Broken!28614 (value!176975 List!37538)) (And!5722) (Div!5722) (LessEqual!5722) (Mod!5722) (Concat!15974) (Not!5722) (Plus!5722) (SpaceValue!5722 (value!176976 List!37538)) (IntegerValue!17168 (value!176977 Int) (text!40503 List!37538)) (StringLiteralValue!17167 (text!40504 List!37538)) (FloatLiteralValue!11445 (text!40505 List!37538)) (BytesLiteralValue!5722 (value!176978 List!37538)) (CommentValue!11445 (value!176979 List!37538)) (StringLiteralValue!17168 (value!176980 List!37538)) (ErrorTokenValue!5722 (msg!5783 List!37538)) )
))
(declare-datatypes ((List!37539 0))(
  ( (Nil!37415) (Cons!37415 (h!42835 C!20688) (t!282830 List!37539)) )
))
(declare-datatypes ((IArray!22723 0))(
  ( (IArray!22724 (innerList!11419 List!37539)) )
))
(declare-datatypes ((Conc!11359 0))(
  ( (Node!11359 (left!29239 Conc!11359) (right!29569 Conc!11359) (csize!22948 Int) (cheight!11570 Int)) (Leaf!17716 (xs!14549 IArray!22723) (csize!22949 Int)) (Empty!11359) )
))
(declare-datatypes ((BalanceConc!22332 0))(
  ( (BalanceConc!22333 (c!608379 Conc!11359)) )
))
(declare-datatypes ((String!41944 0))(
  ( (String!41945 (value!176981 String)) )
))
(declare-datatypes ((TokenValueInjection!10872 0))(
  ( (TokenValueInjection!10873 (toValue!7748 Int) (toChars!7607 Int)) )
))
(declare-datatypes ((Rule!10784 0))(
  ( (Rule!10785 (regex!5492 Regex!10251) (tag!6138 String!41944) (isSeparator!5492 Bool) (transformation!5492 TokenValueInjection!10872)) )
))
(declare-datatypes ((List!37540 0))(
  ( (Nil!37416) (Cons!37416 (h!42836 Rule!10784) (t!282831 List!37540)) )
))
(declare-fun rules!2135 () List!37540)

(get-info :version)

(assert (= (and b!3529461 ((_ is Cons!37416) rules!2135)) b!3529510))

(declare-fun order!20191 () Int)

(declare-fun order!20189 () Int)

(declare-fun dynLambda!15980 (Int Int) Int)

(declare-fun dynLambda!15981 (Int Int) Int)

(assert (=> b!3529512 (< (dynLambda!15980 order!20189 (toValue!7748 (transformation!5492 (h!42836 rules!2135)))) (dynLambda!15981 order!20191 lambda!122989))))

(declare-fun order!20193 () Int)

(declare-fun dynLambda!15982 (Int Int) Int)

(assert (=> b!3529512 (< (dynLambda!15982 order!20193 (toChars!7607 (transformation!5492 (h!42836 rules!2135)))) (dynLambda!15981 order!20191 lambda!122989))))

(assert (=> b!3529461 true))

(declare-fun tp!1088310 () Bool)

(declare-fun b!3529458 () Bool)

(declare-fun e!2184956 () Bool)

(declare-fun e!2184960 () Bool)

(declare-fun inv!50652 (String!41944) Bool)

(declare-fun inv!50655 (TokenValueInjection!10872) Bool)

(assert (=> b!3529458 (= e!2184960 (and tp!1088310 (inv!50652 (tag!6138 (h!42836 rules!2135))) (inv!50655 (transformation!5492 (h!42836 rules!2135))) e!2184956))))

(declare-fun res!1424182 () Bool)

(declare-fun e!2184973 () Bool)

(assert (=> b!3529459 (=> (not res!1424182) (not e!2184973))))

(declare-datatypes ((Token!10350 0))(
  ( (Token!10351 (value!176982 TokenValue!5722) (rule!8156 Rule!10784) (size!28485 Int) (originalCharacters!6206 List!37539)) )
))
(declare-datatypes ((List!37541 0))(
  ( (Nil!37417) (Cons!37417 (h!42837 Token!10350) (t!282832 List!37541)) )
))
(declare-fun tokens!494 () List!37541)

(declare-fun forall!8057 (List!37541 Int) Bool)

(assert (=> b!3529459 (= res!1424182 (forall!8057 tokens!494 lambda!122988))))

(declare-fun e!2184967 () Bool)

(assert (=> b!3529460 (= e!2184967 (and tp!1088314 tp!1088305))))

(declare-fun e!2184983 () Bool)

(declare-fun e!2184972 () Bool)

(assert (=> b!3529461 (= e!2184983 e!2184972)))

(declare-fun res!1424194 () Bool)

(assert (=> b!3529461 (=> res!1424194 e!2184972)))

(declare-fun separatorToken!241 () Token!10350)

(declare-fun contains!7041 (List!37540 Rule!10784) Bool)

(assert (=> b!3529461 (= res!1424194 (not (contains!7041 rules!2135 (rule!8156 separatorToken!241))))))

(declare-fun lt!1206915 () List!37539)

(declare-fun lt!1206923 () C!20688)

(declare-fun contains!7042 (List!37539 C!20688) Bool)

(assert (=> b!3529461 (not (contains!7042 lt!1206915 lt!1206923))))

(declare-datatypes ((LexerInterface!5081 0))(
  ( (LexerInterfaceExt!5078 (__x!23662 Int)) (Lexer!5079) )
))
(declare-fun thiss!18206 () LexerInterface!5081)

(declare-datatypes ((Unit!53124 0))(
  ( (Unit!53125) )
))
(declare-fun lt!1206925 () Unit!53124)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!174 (LexerInterface!5081 List!37540 List!37540 Rule!10784 Rule!10784 C!20688) Unit!53124)

(assert (=> b!3529461 (= lt!1206925 (lemmaSepRuleNotContainsCharContainedInANonSepRule!174 thiss!18206 rules!2135 rules!2135 (rule!8156 (h!42837 (t!282832 tokens!494))) (rule!8156 separatorToken!241) lt!1206923))))

(declare-fun lt!1206929 () Unit!53124)

(declare-fun e!2184958 () Unit!53124)

(assert (=> b!3529461 (= lt!1206929 e!2184958)))

(declare-fun c!608376 () Bool)

(declare-fun usedCharacters!726 (Regex!10251) List!37539)

(assert (=> b!3529461 (= c!608376 (not (contains!7042 (usedCharacters!726 (regex!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))) lt!1206923)))))

(declare-fun lt!1206922 () List!37539)

(declare-fun head!7409 (List!37539) C!20688)

(assert (=> b!3529461 (= lt!1206923 (head!7409 lt!1206922))))

(declare-datatypes ((tuple2!37276 0))(
  ( (tuple2!37277 (_1!21772 Token!10350) (_2!21772 List!37539)) )
))
(declare-datatypes ((Option!7647 0))(
  ( (None!7646) (Some!7646 (v!37168 tuple2!37276)) )
))
(declare-fun maxPrefixOneRule!1788 (LexerInterface!5081 Rule!10784 List!37539) Option!7647)

(declare-fun apply!8946 (TokenValueInjection!10872 BalanceConc!22332) TokenValue!5722)

(declare-fun seqFromList!4037 (List!37539) BalanceConc!22332)

(declare-fun size!28486 (List!37539) Int)

(assert (=> b!3529461 (= (maxPrefixOneRule!1788 thiss!18206 (rule!8156 (h!42837 (t!282832 tokens!494))) lt!1206922) (Some!7646 (tuple2!37277 (Token!10351 (apply!8946 (transformation!5492 (rule!8156 (h!42837 (t!282832 tokens!494)))) (seqFromList!4037 lt!1206922)) (rule!8156 (h!42837 (t!282832 tokens!494))) (size!28486 lt!1206922) lt!1206922) Nil!37415)))))

(declare-fun lt!1206932 () Unit!53124)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!881 (LexerInterface!5081 List!37540 List!37539 List!37539 List!37539 Rule!10784) Unit!53124)

(assert (=> b!3529461 (= lt!1206932 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!881 thiss!18206 rules!2135 lt!1206922 lt!1206922 Nil!37415 (rule!8156 (h!42837 (t!282832 tokens!494)))))))

(declare-fun e!2184959 () Bool)

(assert (=> b!3529461 e!2184959))

(declare-fun res!1424196 () Bool)

(assert (=> b!3529461 (=> (not res!1424196) (not e!2184959))))

(declare-datatypes ((Option!7648 0))(
  ( (None!7647) (Some!7647 (v!37169 Rule!10784)) )
))
(declare-fun lt!1206948 () Option!7648)

(declare-fun isDefined!5894 (Option!7648) Bool)

(assert (=> b!3529461 (= res!1424196 (isDefined!5894 lt!1206948))))

(declare-fun getRuleFromTag!1135 (LexerInterface!5081 List!37540 String!41944) Option!7648)

(assert (=> b!3529461 (= lt!1206948 (getRuleFromTag!1135 thiss!18206 rules!2135 (tag!6138 (rule!8156 (h!42837 (t!282832 tokens!494))))))))

(declare-fun lt!1206938 () Unit!53124)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1135 (LexerInterface!5081 List!37540 List!37539 Token!10350) Unit!53124)

(assert (=> b!3529461 (= lt!1206938 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1135 thiss!18206 rules!2135 lt!1206922 (h!42837 (t!282832 tokens!494))))))

(declare-fun lt!1206918 () Bool)

(assert (=> b!3529461 lt!1206918))

(declare-fun lt!1206919 () Unit!53124)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1070 (LexerInterface!5081 List!37540 List!37541 Token!10350) Unit!53124)

(assert (=> b!3529461 (= lt!1206919 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1070 thiss!18206 rules!2135 tokens!494 (h!42837 (t!282832 tokens!494))))))

(declare-fun lt!1206943 () List!37539)

(declare-fun lt!1206940 () List!37539)

(declare-fun maxPrefix!2621 (LexerInterface!5081 List!37540 List!37539) Option!7647)

(assert (=> b!3529461 (= (maxPrefix!2621 thiss!18206 rules!2135 lt!1206943) (Some!7646 (tuple2!37277 (h!42837 tokens!494) lt!1206940)))))

(declare-fun lt!1206937 () Unit!53124)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!248 (LexerInterface!5081 List!37540 Token!10350 Rule!10784 List!37539 Rule!10784) Unit!53124)

(assert (=> b!3529461 (= lt!1206937 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!248 thiss!18206 rules!2135 (h!42837 tokens!494) (rule!8156 (h!42837 tokens!494)) lt!1206940 (rule!8156 separatorToken!241)))))

(declare-fun lt!1206930 () C!20688)

(assert (=> b!3529461 (not (contains!7042 (usedCharacters!726 (regex!5492 (rule!8156 (h!42837 tokens!494)))) lt!1206930))))

(declare-fun lt!1206916 () Unit!53124)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!292 (LexerInterface!5081 List!37540 List!37540 Rule!10784 Rule!10784 C!20688) Unit!53124)

(assert (=> b!3529461 (= lt!1206916 (lemmaNonSepRuleNotContainsCharContainedInASepRule!292 thiss!18206 rules!2135 rules!2135 (rule!8156 (h!42837 tokens!494)) (rule!8156 separatorToken!241) lt!1206930))))

(declare-fun lt!1206960 () Unit!53124)

(declare-fun forallContained!1439 (List!37541 Int Token!10350) Unit!53124)

(assert (=> b!3529461 (= lt!1206960 (forallContained!1439 tokens!494 lambda!122989 (h!42837 (t!282832 tokens!494))))))

(declare-fun lt!1206959 () Bool)

(assert (=> b!3529461 (= lt!1206918 (not lt!1206959))))

(declare-fun rulesProduceIndividualToken!2573 (LexerInterface!5081 List!37540 Token!10350) Bool)

(assert (=> b!3529461 (= lt!1206918 (rulesProduceIndividualToken!2573 thiss!18206 rules!2135 (h!42837 (t!282832 tokens!494))))))

(declare-fun e!2184976 () Bool)

(assert (=> b!3529461 (= lt!1206959 e!2184976)))

(declare-fun res!1424185 () Bool)

(assert (=> b!3529461 (=> res!1424185 e!2184976)))

(declare-datatypes ((IArray!22725 0))(
  ( (IArray!22726 (innerList!11420 List!37541)) )
))
(declare-datatypes ((Conc!11360 0))(
  ( (Node!11360 (left!29240 Conc!11360) (right!29570 Conc!11360) (csize!22950 Int) (cheight!11571 Int)) (Leaf!17717 (xs!14550 IArray!22725) (csize!22951 Int)) (Empty!11360) )
))
(declare-datatypes ((BalanceConc!22334 0))(
  ( (BalanceConc!22335 (c!608380 Conc!11360)) )
))
(declare-datatypes ((tuple2!37278 0))(
  ( (tuple2!37279 (_1!21773 BalanceConc!22334) (_2!21773 BalanceConc!22332)) )
))
(declare-fun lt!1206921 () tuple2!37278)

(declare-fun size!28487 (BalanceConc!22334) Int)

(assert (=> b!3529461 (= res!1424185 (not (= (size!28487 (_1!21773 lt!1206921)) 1)))))

(declare-fun lt!1206939 () BalanceConc!22332)

(declare-fun lex!2407 (LexerInterface!5081 List!37540 BalanceConc!22332) tuple2!37278)

(assert (=> b!3529461 (= lt!1206921 (lex!2407 thiss!18206 rules!2135 lt!1206939))))

(declare-fun lt!1206935 () BalanceConc!22334)

(declare-fun printTailRec!1576 (LexerInterface!5081 BalanceConc!22334 Int BalanceConc!22332) BalanceConc!22332)

(assert (=> b!3529461 (= lt!1206939 (printTailRec!1576 thiss!18206 lt!1206935 0 (BalanceConc!22333 Empty!11359)))))

(declare-fun print!2146 (LexerInterface!5081 BalanceConc!22334) BalanceConc!22332)

(assert (=> b!3529461 (= lt!1206939 (print!2146 thiss!18206 lt!1206935))))

(declare-fun singletonSeq!2588 (Token!10350) BalanceConc!22334)

(assert (=> b!3529461 (= lt!1206935 (singletonSeq!2588 (h!42837 (t!282832 tokens!494))))))

(declare-fun e!2184963 () Bool)

(assert (=> b!3529461 e!2184963))

(declare-fun res!1424175 () Bool)

(assert (=> b!3529461 (=> (not res!1424175) (not e!2184963))))

(declare-fun lt!1206945 () tuple2!37278)

(assert (=> b!3529461 (= res!1424175 (= (size!28487 (_1!21773 lt!1206945)) 1))))

(declare-fun lt!1206952 () BalanceConc!22332)

(assert (=> b!3529461 (= lt!1206945 (lex!2407 thiss!18206 rules!2135 lt!1206952))))

(declare-fun lt!1206949 () BalanceConc!22334)

(assert (=> b!3529461 (= lt!1206952 (printTailRec!1576 thiss!18206 lt!1206949 0 (BalanceConc!22333 Empty!11359)))))

(assert (=> b!3529461 (= lt!1206952 (print!2146 thiss!18206 lt!1206949))))

(assert (=> b!3529461 (= lt!1206949 (singletonSeq!2588 separatorToken!241))))

(declare-fun lt!1206953 () Unit!53124)

(declare-fun e!2184965 () Unit!53124)

(assert (=> b!3529461 (= lt!1206953 e!2184965)))

(declare-fun c!608377 () Bool)

(assert (=> b!3529461 (= c!608377 (not (contains!7042 lt!1206915 lt!1206930)))))

(declare-fun lt!1206934 () List!37539)

(assert (=> b!3529461 (= lt!1206930 (head!7409 lt!1206934))))

(assert (=> b!3529461 (= lt!1206915 (usedCharacters!726 (regex!5492 (rule!8156 separatorToken!241))))))

(declare-fun e!2184981 () Bool)

(assert (=> b!3529461 e!2184981))

(declare-fun res!1424198 () Bool)

(assert (=> b!3529461 (=> (not res!1424198) (not e!2184981))))

(declare-fun lt!1206950 () Option!7648)

(assert (=> b!3529461 (= res!1424198 (isDefined!5894 lt!1206950))))

(assert (=> b!3529461 (= lt!1206950 (getRuleFromTag!1135 thiss!18206 rules!2135 (tag!6138 (rule!8156 separatorToken!241))))))

(declare-fun lt!1206958 () Unit!53124)

(assert (=> b!3529461 (= lt!1206958 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1135 thiss!18206 rules!2135 lt!1206934 separatorToken!241))))

(declare-fun lt!1206917 () List!37539)

(declare-fun lt!1206947 () BalanceConc!22332)

(assert (=> b!3529461 (= (maxPrefixOneRule!1788 thiss!18206 (rule!8156 (h!42837 tokens!494)) lt!1206917) (Some!7646 (tuple2!37277 (Token!10351 (apply!8946 (transformation!5492 (rule!8156 (h!42837 tokens!494))) lt!1206947) (rule!8156 (h!42837 tokens!494)) (size!28486 lt!1206917) lt!1206917) Nil!37415)))))

(declare-fun lt!1206924 () Unit!53124)

(assert (=> b!3529461 (= lt!1206924 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!881 thiss!18206 rules!2135 lt!1206917 lt!1206917 Nil!37415 (rule!8156 (h!42837 tokens!494))))))

(declare-fun e!2184962 () Bool)

(assert (=> b!3529461 e!2184962))

(declare-fun res!1424181 () Bool)

(assert (=> b!3529461 (=> (not res!1424181) (not e!2184962))))

(declare-fun lt!1206946 () Option!7648)

(assert (=> b!3529461 (= res!1424181 (isDefined!5894 lt!1206946))))

(assert (=> b!3529461 (= lt!1206946 (getRuleFromTag!1135 thiss!18206 rules!2135 (tag!6138 (rule!8156 (h!42837 tokens!494)))))))

(declare-fun lt!1206926 () Unit!53124)

(assert (=> b!3529461 (= lt!1206926 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1135 thiss!18206 rules!2135 lt!1206917 (h!42837 tokens!494)))))

(declare-fun lt!1206927 () Unit!53124)

(assert (=> b!3529461 (= lt!1206927 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1070 thiss!18206 rules!2135 tokens!494 (h!42837 tokens!494)))))

(declare-fun b!3529462 () Bool)

(declare-fun isEmpty!21901 (BalanceConc!22332) Bool)

(assert (=> b!3529462 (= e!2184976 (not (isEmpty!21901 (_2!21773 lt!1206921))))))

(declare-fun b!3529463 () Bool)

(declare-fun e!2184980 () Bool)

(assert (=> b!3529463 (= e!2184981 e!2184980)))

(declare-fun res!1424184 () Bool)

(assert (=> b!3529463 (=> (not res!1424184) (not e!2184980))))

(declare-fun lt!1206920 () Rule!10784)

(declare-fun matchR!4835 (Regex!10251 List!37539) Bool)

(assert (=> b!3529463 (= res!1424184 (matchR!4835 (regex!5492 lt!1206920) lt!1206934))))

(declare-fun get!12021 (Option!7648) Rule!10784)

(assert (=> b!3529463 (= lt!1206920 (get!12021 lt!1206950))))

(declare-fun tp!1088309 () Bool)

(declare-fun e!2184955 () Bool)

(declare-fun b!3529464 () Bool)

(assert (=> b!3529464 (= e!2184955 (and tp!1088309 (inv!50652 (tag!6138 (rule!8156 separatorToken!241))) (inv!50655 (transformation!5492 (rule!8156 separatorToken!241))) e!2184967))))

(declare-fun b!3529465 () Bool)

(declare-fun Unit!53126 () Unit!53124)

(assert (=> b!3529465 (= e!2184965 Unit!53126)))

(declare-fun b!3529466 () Bool)

(declare-fun e!2184970 () Bool)

(assert (=> b!3529466 (= e!2184970 false)))

(declare-fun b!3529467 () Bool)

(declare-fun Unit!53127 () Unit!53124)

(assert (=> b!3529467 (= e!2184958 Unit!53127)))

(declare-fun lt!1206931 () Unit!53124)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!550 (Regex!10251 List!37539 C!20688) Unit!53124)

(assert (=> b!3529467 (= lt!1206931 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!550 (regex!5492 (rule!8156 (h!42837 (t!282832 tokens!494)))) lt!1206922 lt!1206923))))

(declare-fun res!1424195 () Bool)

(assert (=> b!3529467 (= res!1424195 (not (matchR!4835 (regex!5492 (rule!8156 (h!42837 (t!282832 tokens!494)))) lt!1206922)))))

(declare-fun e!2184979 () Bool)

(assert (=> b!3529467 (=> (not res!1424195) (not e!2184979))))

(assert (=> b!3529467 e!2184979))

(declare-fun b!3529468 () Bool)

(declare-fun e!2184974 () Bool)

(declare-fun tp!1088312 () Bool)

(assert (=> b!3529468 (= e!2184974 (and e!2184960 tp!1088312))))

(declare-fun b!3529469 () Bool)

(declare-fun e!2184957 () Bool)

(assert (=> b!3529469 (= e!2184962 e!2184957)))

(declare-fun res!1424202 () Bool)

(assert (=> b!3529469 (=> (not res!1424202) (not e!2184957))))

(declare-fun lt!1206942 () Rule!10784)

(assert (=> b!3529469 (= res!1424202 (matchR!4835 (regex!5492 lt!1206942) lt!1206917))))

(assert (=> b!3529469 (= lt!1206942 (get!12021 lt!1206946))))

(declare-fun res!1424200 () Bool)

(assert (=> start!328094 (=> (not res!1424200) (not e!2184973))))

(assert (=> start!328094 (= res!1424200 ((_ is Lexer!5079) thiss!18206))))

(assert (=> start!328094 e!2184973))

(assert (=> start!328094 true))

(assert (=> start!328094 e!2184974))

(declare-fun e!2184985 () Bool)

(assert (=> start!328094 e!2184985))

(declare-fun e!2184987 () Bool)

(declare-fun inv!50656 (Token!10350) Bool)

(assert (=> start!328094 (and (inv!50656 separatorToken!241) e!2184987)))

(declare-fun b!3529470 () Bool)

(assert (=> b!3529470 (= e!2184963 (isEmpty!21901 (_2!21773 lt!1206945)))))

(declare-fun tp!1088307 () Bool)

(declare-fun b!3529471 () Bool)

(declare-fun inv!21 (TokenValue!5722) Bool)

(assert (=> b!3529471 (= e!2184987 (and (inv!21 (value!176982 separatorToken!241)) e!2184955 tp!1088307))))

(declare-fun b!3529472 () Bool)

(assert (=> b!3529472 (= e!2184980 (= (rule!8156 separatorToken!241) lt!1206920))))

(declare-fun b!3529473 () Bool)

(declare-fun e!2184977 () Bool)

(declare-fun e!2184986 () Bool)

(assert (=> b!3529473 (= e!2184977 e!2184986)))

(declare-fun res!1424192 () Bool)

(assert (=> b!3529473 (=> res!1424192 e!2184986)))

(declare-fun lt!1206962 () List!37539)

(declare-fun lt!1206951 () List!37539)

(assert (=> b!3529473 (= res!1424192 (not (= lt!1206962 lt!1206951)))))

(declare-fun lt!1206961 () List!37539)

(declare-fun ++!9281 (List!37539 List!37539) List!37539)

(assert (=> b!3529473 (= lt!1206951 (++!9281 (++!9281 lt!1206917 lt!1206934) lt!1206961))))

(declare-fun b!3529474 () Bool)

(declare-fun res!1424180 () Bool)

(assert (=> b!3529474 (=> res!1424180 e!2184976)))

(declare-fun apply!8947 (BalanceConc!22334 Int) Token!10350)

(assert (=> b!3529474 (= res!1424180 (not (= (apply!8947 (_1!21773 lt!1206921) 0) (h!42837 (t!282832 tokens!494)))))))

(declare-fun b!3529475 () Bool)

(assert (=> b!3529475 (= e!2184957 (= (rule!8156 (h!42837 tokens!494)) lt!1206942))))

(declare-fun b!3529476 () Bool)

(declare-fun res!1424186 () Bool)

(assert (=> b!3529476 (=> (not res!1424186) (not e!2184973))))

(assert (=> b!3529476 (= res!1424186 (isSeparator!5492 (rule!8156 separatorToken!241)))))

(declare-fun b!3529477 () Bool)

(declare-fun res!1424178 () Bool)

(assert (=> b!3529477 (=> (not res!1424178) (not e!2184973))))

(declare-fun rulesInvariant!4478 (LexerInterface!5081 List!37540) Bool)

(assert (=> b!3529477 (= res!1424178 (rulesInvariant!4478 thiss!18206 rules!2135))))

(assert (=> b!3529478 (= e!2184956 (and tp!1088311 tp!1088306))))

(declare-fun b!3529479 () Bool)

(declare-fun res!1424188 () Bool)

(assert (=> b!3529479 (=> (not res!1424188) (not e!2184973))))

(assert (=> b!3529479 (= res!1424188 (and (not ((_ is Nil!37417) tokens!494)) (not ((_ is Nil!37417) (t!282832 tokens!494)))))))

(declare-fun b!3529480 () Bool)

(declare-fun res!1424193 () Bool)

(assert (=> b!3529480 (=> (not res!1424193) (not e!2184973))))

(assert (=> b!3529480 (= res!1424193 (rulesProduceIndividualToken!2573 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3529481 () Bool)

(declare-fun e!2184968 () Bool)

(assert (=> b!3529481 (= e!2184973 (not e!2184968))))

(declare-fun res!1424179 () Bool)

(assert (=> b!3529481 (=> res!1424179 e!2184968)))

(declare-fun lt!1206956 () List!37539)

(declare-fun lt!1206928 () List!37539)

(assert (=> b!3529481 (= res!1424179 (not (= lt!1206956 lt!1206928)))))

(declare-fun printList!1629 (LexerInterface!5081 List!37541) List!37539)

(assert (=> b!3529481 (= lt!1206928 (printList!1629 thiss!18206 (Cons!37417 (h!42837 tokens!494) Nil!37417)))))

(declare-fun lt!1206955 () BalanceConc!22332)

(declare-fun list!13695 (BalanceConc!22332) List!37539)

(assert (=> b!3529481 (= lt!1206956 (list!13695 lt!1206955))))

(declare-fun lt!1206941 () BalanceConc!22334)

(assert (=> b!3529481 (= lt!1206955 (printTailRec!1576 thiss!18206 lt!1206941 0 (BalanceConc!22333 Empty!11359)))))

(assert (=> b!3529481 (= lt!1206955 (print!2146 thiss!18206 lt!1206941))))

(assert (=> b!3529481 (= lt!1206941 (singletonSeq!2588 (h!42837 tokens!494)))))

(declare-fun b!3529482 () Bool)

(declare-fun res!1424174 () Bool)

(assert (=> b!3529482 (=> (not res!1424174) (not e!2184973))))

(declare-fun sepAndNonSepRulesDisjointChars!1686 (List!37540 List!37540) Bool)

(assert (=> b!3529482 (= res!1424174 (sepAndNonSepRulesDisjointChars!1686 rules!2135 rules!2135))))

(declare-fun b!3529483 () Bool)

(declare-fun res!1424176 () Bool)

(declare-fun e!2184954 () Bool)

(assert (=> b!3529483 (=> res!1424176 e!2184954)))

(assert (=> b!3529483 (= res!1424176 (not (rulesProduceIndividualToken!2573 thiss!18206 rules!2135 (h!42837 tokens!494))))))

(declare-fun b!3529484 () Bool)

(declare-fun Unit!53128 () Unit!53124)

(assert (=> b!3529484 (= e!2184958 Unit!53128)))

(declare-fun e!2184978 () Bool)

(assert (=> b!3529485 (= e!2184978 (and tp!1088303 tp!1088313))))

(declare-fun b!3529486 () Bool)

(declare-fun e!2184982 () Bool)

(assert (=> b!3529486 (= e!2184954 e!2184982)))

(declare-fun res!1424173 () Bool)

(assert (=> b!3529486 (=> res!1424173 e!2184982)))

(declare-fun isEmpty!21902 (BalanceConc!22334) Bool)

(assert (=> b!3529486 (= res!1424173 (isEmpty!21902 (_1!21773 (lex!2407 thiss!18206 rules!2135 lt!1206947))))))

(assert (=> b!3529486 (= lt!1206947 (seqFromList!4037 lt!1206917))))

(declare-fun b!3529487 () Bool)

(assert (=> b!3529487 (= e!2184972 (contains!7041 rules!2135 (rule!8156 (h!42837 (t!282832 tokens!494)))))))

(declare-fun b!3529488 () Bool)

(assert (=> b!3529488 (= e!2184979 false)))

(declare-fun e!2184966 () Bool)

(declare-fun tp!1088308 () Bool)

(declare-fun b!3529489 () Bool)

(declare-fun e!2184953 () Bool)

(assert (=> b!3529489 (= e!2184953 (and (inv!21 (value!176982 (h!42837 tokens!494))) e!2184966 tp!1088308))))

(declare-fun b!3529490 () Bool)

(declare-fun e!2184984 () Bool)

(assert (=> b!3529490 (= e!2184984 e!2184977)))

(declare-fun res!1424191 () Bool)

(assert (=> b!3529490 (=> res!1424191 e!2184977)))

(declare-fun printWithSeparatorTokenList!368 (LexerInterface!5081 List!37541 Token!10350) List!37539)

(assert (=> b!3529490 (= res!1424191 (not (= lt!1206961 (++!9281 (++!9281 lt!1206922 lt!1206934) (printWithSeparatorTokenList!368 thiss!18206 (t!282832 (t!282832 tokens!494)) separatorToken!241)))))))

(declare-fun charsOf!3506 (Token!10350) BalanceConc!22332)

(assert (=> b!3529490 (= lt!1206922 (list!13695 (charsOf!3506 (h!42837 (t!282832 tokens!494)))))))

(assert (=> b!3529490 (= lt!1206940 (++!9281 lt!1206934 lt!1206961))))

(assert (=> b!3529490 (= lt!1206934 (list!13695 (charsOf!3506 separatorToken!241)))))

(assert (=> b!3529490 (= lt!1206961 (printWithSeparatorTokenList!368 thiss!18206 (t!282832 tokens!494) separatorToken!241))))

(assert (=> b!3529490 (= lt!1206962 (printWithSeparatorTokenList!368 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3529491 () Bool)

(declare-fun res!1424187 () Bool)

(assert (=> b!3529491 (=> (not res!1424187) (not e!2184963))))

(assert (=> b!3529491 (= res!1424187 (= (apply!8947 (_1!21773 lt!1206945) 0) separatorToken!241))))

(declare-fun b!3529492 () Bool)

(assert (=> b!3529492 (= e!2184982 e!2184984)))

(declare-fun res!1424199 () Bool)

(assert (=> b!3529492 (=> res!1424199 e!2184984)))

(assert (=> b!3529492 (= res!1424199 (or (isSeparator!5492 (rule!8156 (h!42837 tokens!494))) (isSeparator!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))))))

(declare-fun lt!1206933 () Unit!53124)

(assert (=> b!3529492 (= lt!1206933 (forallContained!1439 tokens!494 lambda!122988 (h!42837 (t!282832 tokens!494))))))

(declare-fun lt!1206944 () Unit!53124)

(assert (=> b!3529492 (= lt!1206944 (forallContained!1439 tokens!494 lambda!122988 (h!42837 tokens!494)))))

(declare-fun b!3529493 () Bool)

(declare-fun res!1424190 () Bool)

(assert (=> b!3529493 (=> (not res!1424190) (not e!2184973))))

(declare-fun rulesProduceEachTokenIndividually!1532 (LexerInterface!5081 List!37540 BalanceConc!22334) Bool)

(declare-fun seqFromList!4038 (List!37541) BalanceConc!22334)

(assert (=> b!3529493 (= res!1424190 (rulesProduceEachTokenIndividually!1532 thiss!18206 rules!2135 (seqFromList!4038 tokens!494)))))

(declare-fun b!3529494 () Bool)

(declare-fun Unit!53129 () Unit!53124)

(assert (=> b!3529494 (= e!2184965 Unit!53129)))

(declare-fun lt!1206957 () Unit!53124)

(assert (=> b!3529494 (= lt!1206957 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!550 (regex!5492 (rule!8156 separatorToken!241)) lt!1206934 lt!1206930))))

(declare-fun res!1424201 () Bool)

(assert (=> b!3529494 (= res!1424201 (not (matchR!4835 (regex!5492 (rule!8156 separatorToken!241)) lt!1206934)))))

(assert (=> b!3529494 (=> (not res!1424201) (not e!2184970))))

(assert (=> b!3529494 e!2184970))

(declare-fun tp!1088304 () Bool)

(declare-fun b!3529495 () Bool)

(assert (=> b!3529495 (= e!2184985 (and (inv!50656 (h!42837 tokens!494)) e!2184953 tp!1088304))))

(declare-fun b!3529496 () Bool)

(declare-fun res!1424177 () Bool)

(assert (=> b!3529496 (=> (not res!1424177) (not e!2184973))))

(declare-fun isEmpty!21903 (List!37540) Bool)

(assert (=> b!3529496 (= res!1424177 (not (isEmpty!21903 rules!2135)))))

(declare-fun b!3529497 () Bool)

(declare-fun e!2184971 () Bool)

(declare-fun lt!1206936 () Rule!10784)

(assert (=> b!3529497 (= e!2184971 (= (rule!8156 (h!42837 (t!282832 tokens!494))) lt!1206936))))

(declare-fun b!3529498 () Bool)

(assert (=> b!3529498 (= e!2184959 e!2184971)))

(declare-fun res!1424183 () Bool)

(assert (=> b!3529498 (=> (not res!1424183) (not e!2184971))))

(assert (=> b!3529498 (= res!1424183 (matchR!4835 (regex!5492 lt!1206936) lt!1206922))))

(assert (=> b!3529498 (= lt!1206936 (get!12021 lt!1206948))))

(declare-fun b!3529499 () Bool)

(assert (=> b!3529499 (= e!2184968 e!2184954)))

(declare-fun res!1424189 () Bool)

(assert (=> b!3529499 (=> res!1424189 e!2184954)))

(assert (=> b!3529499 (= res!1424189 (or (not (= lt!1206928 lt!1206917)) (not (= lt!1206956 lt!1206917))))))

(assert (=> b!3529499 (= lt!1206917 (list!13695 (charsOf!3506 (h!42837 tokens!494))))))

(declare-fun b!3529500 () Bool)

(declare-fun tp!1088302 () Bool)

(assert (=> b!3529500 (= e!2184966 (and tp!1088302 (inv!50652 (tag!6138 (rule!8156 (h!42837 tokens!494)))) (inv!50655 (transformation!5492 (rule!8156 (h!42837 tokens!494)))) e!2184978))))

(declare-fun b!3529501 () Bool)

(assert (=> b!3529501 (= e!2184986 e!2184983)))

(declare-fun res!1424197 () Bool)

(assert (=> b!3529501 (=> res!1424197 e!2184983)))

(assert (=> b!3529501 (= res!1424197 (not (= lt!1206962 lt!1206943)))))

(assert (=> b!3529501 (= lt!1206951 lt!1206943)))

(assert (=> b!3529501 (= lt!1206943 (++!9281 lt!1206917 lt!1206940))))

(declare-fun lt!1206954 () Unit!53124)

(declare-fun lemmaConcatAssociativity!2026 (List!37539 List!37539 List!37539) Unit!53124)

(assert (=> b!3529501 (= lt!1206954 (lemmaConcatAssociativity!2026 lt!1206917 lt!1206934 lt!1206961))))

(assert (= (and start!328094 res!1424200) b!3529496))

(assert (= (and b!3529496 res!1424177) b!3529477))

(assert (= (and b!3529477 res!1424178) b!3529493))

(assert (= (and b!3529493 res!1424190) b!3529480))

(assert (= (and b!3529480 res!1424193) b!3529476))

(assert (= (and b!3529476 res!1424186) b!3529459))

(assert (= (and b!3529459 res!1424182) b!3529482))

(assert (= (and b!3529482 res!1424174) b!3529479))

(assert (= (and b!3529479 res!1424188) b!3529481))

(assert (= (and b!3529481 (not res!1424179)) b!3529499))

(assert (= (and b!3529499 (not res!1424189)) b!3529483))

(assert (= (and b!3529483 (not res!1424176)) b!3529486))

(assert (= (and b!3529486 (not res!1424173)) b!3529492))

(assert (= (and b!3529492 (not res!1424199)) b!3529490))

(assert (= (and b!3529490 (not res!1424191)) b!3529473))

(assert (= (and b!3529473 (not res!1424192)) b!3529501))

(assert (= (and b!3529501 (not res!1424197)) b!3529461))

(assert (= (and b!3529461 res!1424181) b!3529469))

(assert (= (and b!3529469 res!1424202) b!3529475))

(assert (= (and b!3529461 res!1424198) b!3529463))

(assert (= (and b!3529463 res!1424184) b!3529472))

(assert (= (and b!3529461 c!608377) b!3529494))

(assert (= (and b!3529461 (not c!608377)) b!3529465))

(assert (= (and b!3529494 res!1424201) b!3529466))

(assert (= (and b!3529461 res!1424175) b!3529491))

(assert (= (and b!3529491 res!1424187) b!3529470))

(assert (= (and b!3529461 (not res!1424185)) b!3529474))

(assert (= (and b!3529474 (not res!1424180)) b!3529462))

(assert (= (and b!3529461 res!1424196) b!3529498))

(assert (= (and b!3529498 res!1424183) b!3529497))

(assert (= (and b!3529461 c!608376) b!3529467))

(assert (= (and b!3529461 (not c!608376)) b!3529484))

(assert (= (and b!3529467 res!1424195) b!3529488))

(assert (= (and b!3529461 (not res!1424194)) b!3529487))

(assert (= b!3529458 b!3529478))

(assert (= b!3529468 b!3529458))

(assert (= (and start!328094 ((_ is Cons!37416) rules!2135)) b!3529468))

(assert (= b!3529500 b!3529485))

(assert (= b!3529489 b!3529500))

(assert (= b!3529495 b!3529489))

(assert (= (and start!328094 ((_ is Cons!37417) tokens!494)) b!3529495))

(assert (= b!3529464 b!3529460))

(assert (= b!3529471 b!3529464))

(assert (= start!328094 b!3529471))

(declare-fun m!3984939 () Bool)

(assert (=> b!3529501 m!3984939))

(declare-fun m!3984941 () Bool)

(assert (=> b!3529501 m!3984941))

(declare-fun m!3984943 () Bool)

(assert (=> b!3529486 m!3984943))

(declare-fun m!3984945 () Bool)

(assert (=> b!3529486 m!3984945))

(declare-fun m!3984947 () Bool)

(assert (=> b!3529486 m!3984947))

(declare-fun m!3984949 () Bool)

(assert (=> b!3529496 m!3984949))

(declare-fun m!3984951 () Bool)

(assert (=> b!3529473 m!3984951))

(assert (=> b!3529473 m!3984951))

(declare-fun m!3984953 () Bool)

(assert (=> b!3529473 m!3984953))

(declare-fun m!3984955 () Bool)

(assert (=> b!3529477 m!3984955))

(declare-fun m!3984957 () Bool)

(assert (=> b!3529461 m!3984957))

(declare-fun m!3984959 () Bool)

(assert (=> b!3529461 m!3984959))

(declare-fun m!3984961 () Bool)

(assert (=> b!3529461 m!3984961))

(declare-fun m!3984963 () Bool)

(assert (=> b!3529461 m!3984963))

(declare-fun m!3984965 () Bool)

(assert (=> b!3529461 m!3984965))

(declare-fun m!3984967 () Bool)

(assert (=> b!3529461 m!3984967))

(declare-fun m!3984969 () Bool)

(assert (=> b!3529461 m!3984969))

(declare-fun m!3984971 () Bool)

(assert (=> b!3529461 m!3984971))

(declare-fun m!3984973 () Bool)

(assert (=> b!3529461 m!3984973))

(declare-fun m!3984975 () Bool)

(assert (=> b!3529461 m!3984975))

(declare-fun m!3984977 () Bool)

(assert (=> b!3529461 m!3984977))

(declare-fun m!3984979 () Bool)

(assert (=> b!3529461 m!3984979))

(declare-fun m!3984981 () Bool)

(assert (=> b!3529461 m!3984981))

(declare-fun m!3984983 () Bool)

(assert (=> b!3529461 m!3984983))

(declare-fun m!3984985 () Bool)

(assert (=> b!3529461 m!3984985))

(declare-fun m!3984987 () Bool)

(assert (=> b!3529461 m!3984987))

(declare-fun m!3984989 () Bool)

(assert (=> b!3529461 m!3984989))

(declare-fun m!3984991 () Bool)

(assert (=> b!3529461 m!3984991))

(declare-fun m!3984993 () Bool)

(assert (=> b!3529461 m!3984993))

(assert (=> b!3529461 m!3984983))

(declare-fun m!3984995 () Bool)

(assert (=> b!3529461 m!3984995))

(declare-fun m!3984997 () Bool)

(assert (=> b!3529461 m!3984997))

(declare-fun m!3984999 () Bool)

(assert (=> b!3529461 m!3984999))

(assert (=> b!3529461 m!3984963))

(declare-fun m!3985001 () Bool)

(assert (=> b!3529461 m!3985001))

(declare-fun m!3985003 () Bool)

(assert (=> b!3529461 m!3985003))

(declare-fun m!3985005 () Bool)

(assert (=> b!3529461 m!3985005))

(declare-fun m!3985007 () Bool)

(assert (=> b!3529461 m!3985007))

(declare-fun m!3985009 () Bool)

(assert (=> b!3529461 m!3985009))

(declare-fun m!3985011 () Bool)

(assert (=> b!3529461 m!3985011))

(declare-fun m!3985013 () Bool)

(assert (=> b!3529461 m!3985013))

(declare-fun m!3985015 () Bool)

(assert (=> b!3529461 m!3985015))

(declare-fun m!3985017 () Bool)

(assert (=> b!3529461 m!3985017))

(declare-fun m!3985019 () Bool)

(assert (=> b!3529461 m!3985019))

(declare-fun m!3985021 () Bool)

(assert (=> b!3529461 m!3985021))

(declare-fun m!3985023 () Bool)

(assert (=> b!3529461 m!3985023))

(declare-fun m!3985025 () Bool)

(assert (=> b!3529461 m!3985025))

(declare-fun m!3985027 () Bool)

(assert (=> b!3529461 m!3985027))

(declare-fun m!3985029 () Bool)

(assert (=> b!3529461 m!3985029))

(assert (=> b!3529461 m!3985003))

(declare-fun m!3985031 () Bool)

(assert (=> b!3529461 m!3985031))

(declare-fun m!3985033 () Bool)

(assert (=> b!3529461 m!3985033))

(declare-fun m!3985035 () Bool)

(assert (=> b!3529461 m!3985035))

(declare-fun m!3985037 () Bool)

(assert (=> b!3529461 m!3985037))

(declare-fun m!3985039 () Bool)

(assert (=> b!3529461 m!3985039))

(declare-fun m!3985041 () Bool)

(assert (=> b!3529461 m!3985041))

(declare-fun m!3985043 () Bool)

(assert (=> b!3529461 m!3985043))

(declare-fun m!3985045 () Bool)

(assert (=> b!3529461 m!3985045))

(declare-fun m!3985047 () Bool)

(assert (=> b!3529461 m!3985047))

(declare-fun m!3985049 () Bool)

(assert (=> b!3529489 m!3985049))

(declare-fun m!3985051 () Bool)

(assert (=> b!3529467 m!3985051))

(declare-fun m!3985053 () Bool)

(assert (=> b!3529467 m!3985053))

(declare-fun m!3985055 () Bool)

(assert (=> b!3529495 m!3985055))

(declare-fun m!3985057 () Bool)

(assert (=> b!3529462 m!3985057))

(declare-fun m!3985059 () Bool)

(assert (=> b!3529500 m!3985059))

(declare-fun m!3985061 () Bool)

(assert (=> b!3529500 m!3985061))

(declare-fun m!3985063 () Bool)

(assert (=> b!3529490 m!3985063))

(declare-fun m!3985065 () Bool)

(assert (=> b!3529490 m!3985065))

(declare-fun m!3985067 () Bool)

(assert (=> b!3529490 m!3985067))

(declare-fun m!3985069 () Bool)

(assert (=> b!3529490 m!3985069))

(declare-fun m!3985071 () Bool)

(assert (=> b!3529490 m!3985071))

(declare-fun m!3985073 () Bool)

(assert (=> b!3529490 m!3985073))

(declare-fun m!3985075 () Bool)

(assert (=> b!3529490 m!3985075))

(assert (=> b!3529490 m!3985073))

(assert (=> b!3529490 m!3985065))

(declare-fun m!3985077 () Bool)

(assert (=> b!3529490 m!3985077))

(assert (=> b!3529490 m!3985071))

(declare-fun m!3985079 () Bool)

(assert (=> b!3529490 m!3985079))

(assert (=> b!3529490 m!3985063))

(declare-fun m!3985081 () Bool)

(assert (=> b!3529490 m!3985081))

(declare-fun m!3985083 () Bool)

(assert (=> b!3529471 m!3985083))

(declare-fun m!3985085 () Bool)

(assert (=> b!3529499 m!3985085))

(assert (=> b!3529499 m!3985085))

(declare-fun m!3985087 () Bool)

(assert (=> b!3529499 m!3985087))

(declare-fun m!3985089 () Bool)

(assert (=> b!3529474 m!3985089))

(declare-fun m!3985091 () Bool)

(assert (=> b!3529487 m!3985091))

(declare-fun m!3985093 () Bool)

(assert (=> b!3529469 m!3985093))

(declare-fun m!3985095 () Bool)

(assert (=> b!3529469 m!3985095))

(declare-fun m!3985097 () Bool)

(assert (=> b!3529463 m!3985097))

(declare-fun m!3985099 () Bool)

(assert (=> b!3529463 m!3985099))

(declare-fun m!3985101 () Bool)

(assert (=> b!3529492 m!3985101))

(declare-fun m!3985103 () Bool)

(assert (=> b!3529492 m!3985103))

(declare-fun m!3985105 () Bool)

(assert (=> b!3529491 m!3985105))

(declare-fun m!3985107 () Bool)

(assert (=> b!3529482 m!3985107))

(declare-fun m!3985109 () Bool)

(assert (=> b!3529498 m!3985109))

(declare-fun m!3985111 () Bool)

(assert (=> b!3529498 m!3985111))

(declare-fun m!3985113 () Bool)

(assert (=> b!3529494 m!3985113))

(declare-fun m!3985115 () Bool)

(assert (=> b!3529494 m!3985115))

(declare-fun m!3985117 () Bool)

(assert (=> b!3529483 m!3985117))

(declare-fun m!3985119 () Bool)

(assert (=> b!3529470 m!3985119))

(declare-fun m!3985121 () Bool)

(assert (=> b!3529480 m!3985121))

(declare-fun m!3985123 () Bool)

(assert (=> b!3529493 m!3985123))

(assert (=> b!3529493 m!3985123))

(declare-fun m!3985125 () Bool)

(assert (=> b!3529493 m!3985125))

(declare-fun m!3985127 () Bool)

(assert (=> b!3529464 m!3985127))

(declare-fun m!3985129 () Bool)

(assert (=> b!3529464 m!3985129))

(declare-fun m!3985131 () Bool)

(assert (=> b!3529458 m!3985131))

(declare-fun m!3985133 () Bool)

(assert (=> b!3529458 m!3985133))

(declare-fun m!3985135 () Bool)

(assert (=> b!3529481 m!3985135))

(declare-fun m!3985137 () Bool)

(assert (=> b!3529481 m!3985137))

(declare-fun m!3985139 () Bool)

(assert (=> b!3529481 m!3985139))

(declare-fun m!3985141 () Bool)

(assert (=> b!3529481 m!3985141))

(declare-fun m!3985143 () Bool)

(assert (=> b!3529481 m!3985143))

(declare-fun m!3985145 () Bool)

(assert (=> start!328094 m!3985145))

(declare-fun m!3985147 () Bool)

(assert (=> b!3529459 m!3985147))

(check-sat (not b!3529483) (not b!3529459) b_and!251717 (not b!3529463) (not start!328094) (not b!3529489) (not b!3529492) b_and!251715 (not b!3529474) (not b!3529499) (not b!3529510) (not b!3529480) (not b!3529462) (not b!3529491) (not b!3529477) (not b!3529469) b_and!251725 (not b_next!91705) (not b!3529458) (not b_next!91713) (not b!3529486) (not b!3529471) b_and!251719 (not b_next!91711) (not b!3529473) (not b!3529467) (not b!3529500) (not b!3529468) (not b!3529470) (not b!3529490) (not b!3529464) (not b!3529494) (not b!3529482) (not b_next!91709) (not b!3529481) (not b!3529498) (not b!3529461) b_and!251721 (not b!3529493) b_and!251723 (not b!3529496) (not b!3529501) (not b!3529495) (not b_next!91715) (not b_next!91707) (not b!3529487))
(check-sat b_and!251717 (not b_next!91713) b_and!251719 (not b_next!91711) (not b_next!91709) b_and!251721 b_and!251723 b_and!251715 (not b_next!91715) (not b_next!91707) b_and!251725 (not b_next!91705))
(get-model)

(declare-fun d!1030219 () Bool)

(declare-fun lt!1207051 () BalanceConc!22332)

(declare-fun printListTailRec!726 (LexerInterface!5081 List!37541 List!37539) List!37539)

(declare-fun dropList!1243 (BalanceConc!22334 Int) List!37541)

(assert (=> d!1030219 (= (list!13695 lt!1207051) (printListTailRec!726 thiss!18206 (dropList!1243 lt!1206941 0) (list!13695 (BalanceConc!22333 Empty!11359))))))

(declare-fun e!2185101 () BalanceConc!22332)

(assert (=> d!1030219 (= lt!1207051 e!2185101)))

(declare-fun c!608420 () Bool)

(assert (=> d!1030219 (= c!608420 (>= 0 (size!28487 lt!1206941)))))

(declare-fun e!2185102 () Bool)

(assert (=> d!1030219 e!2185102))

(declare-fun res!1424320 () Bool)

(assert (=> d!1030219 (=> (not res!1424320) (not e!2185102))))

(assert (=> d!1030219 (= res!1424320 (>= 0 0))))

(assert (=> d!1030219 (= (printTailRec!1576 thiss!18206 lt!1206941 0 (BalanceConc!22333 Empty!11359)) lt!1207051)))

(declare-fun b!3529701 () Bool)

(assert (=> b!3529701 (= e!2185102 (<= 0 (size!28487 lt!1206941)))))

(declare-fun b!3529702 () Bool)

(assert (=> b!3529702 (= e!2185101 (BalanceConc!22333 Empty!11359))))

(declare-fun b!3529703 () Bool)

(declare-fun ++!9283 (BalanceConc!22332 BalanceConc!22332) BalanceConc!22332)

(assert (=> b!3529703 (= e!2185101 (printTailRec!1576 thiss!18206 lt!1206941 (+ 0 1) (++!9283 (BalanceConc!22333 Empty!11359) (charsOf!3506 (apply!8947 lt!1206941 0)))))))

(declare-fun lt!1207052 () List!37541)

(declare-fun list!13697 (BalanceConc!22334) List!37541)

(assert (=> b!3529703 (= lt!1207052 (list!13697 lt!1206941))))

(declare-fun lt!1207050 () Unit!53124)

(declare-fun lemmaDropApply!1201 (List!37541 Int) Unit!53124)

(assert (=> b!3529703 (= lt!1207050 (lemmaDropApply!1201 lt!1207052 0))))

(declare-fun head!7411 (List!37541) Token!10350)

(declare-fun drop!2057 (List!37541 Int) List!37541)

(declare-fun apply!8950 (List!37541 Int) Token!10350)

(assert (=> b!3529703 (= (head!7411 (drop!2057 lt!1207052 0)) (apply!8950 lt!1207052 0))))

(declare-fun lt!1207054 () Unit!53124)

(assert (=> b!3529703 (= lt!1207054 lt!1207050)))

(declare-fun lt!1207055 () List!37541)

(assert (=> b!3529703 (= lt!1207055 (list!13697 lt!1206941))))

(declare-fun lt!1207049 () Unit!53124)

(declare-fun lemmaDropTail!1085 (List!37541 Int) Unit!53124)

(assert (=> b!3529703 (= lt!1207049 (lemmaDropTail!1085 lt!1207055 0))))

(declare-fun tail!5508 (List!37541) List!37541)

(assert (=> b!3529703 (= (tail!5508 (drop!2057 lt!1207055 0)) (drop!2057 lt!1207055 (+ 0 1)))))

(declare-fun lt!1207053 () Unit!53124)

(assert (=> b!3529703 (= lt!1207053 lt!1207049)))

(assert (= (and d!1030219 res!1424320) b!3529701))

(assert (= (and d!1030219 c!608420) b!3529702))

(assert (= (and d!1030219 (not c!608420)) b!3529703))

(declare-fun m!3985347 () Bool)

(assert (=> d!1030219 m!3985347))

(declare-fun m!3985349 () Bool)

(assert (=> d!1030219 m!3985349))

(declare-fun m!3985351 () Bool)

(assert (=> d!1030219 m!3985351))

(assert (=> d!1030219 m!3985349))

(declare-fun m!3985353 () Bool)

(assert (=> d!1030219 m!3985353))

(assert (=> d!1030219 m!3985347))

(declare-fun m!3985355 () Bool)

(assert (=> d!1030219 m!3985355))

(assert (=> b!3529701 m!3985353))

(declare-fun m!3985357 () Bool)

(assert (=> b!3529703 m!3985357))

(declare-fun m!3985359 () Bool)

(assert (=> b!3529703 m!3985359))

(assert (=> b!3529703 m!3985357))

(declare-fun m!3985361 () Bool)

(assert (=> b!3529703 m!3985361))

(declare-fun m!3985363 () Bool)

(assert (=> b!3529703 m!3985363))

(declare-fun m!3985365 () Bool)

(assert (=> b!3529703 m!3985365))

(declare-fun m!3985367 () Bool)

(assert (=> b!3529703 m!3985367))

(declare-fun m!3985369 () Bool)

(assert (=> b!3529703 m!3985369))

(declare-fun m!3985371 () Bool)

(assert (=> b!3529703 m!3985371))

(declare-fun m!3985373 () Bool)

(assert (=> b!3529703 m!3985373))

(declare-fun m!3985375 () Bool)

(assert (=> b!3529703 m!3985375))

(declare-fun m!3985377 () Bool)

(assert (=> b!3529703 m!3985377))

(declare-fun m!3985379 () Bool)

(assert (=> b!3529703 m!3985379))

(assert (=> b!3529703 m!3985367))

(assert (=> b!3529703 m!3985375))

(declare-fun m!3985381 () Bool)

(assert (=> b!3529703 m!3985381))

(assert (=> b!3529703 m!3985361))

(assert (=> b!3529703 m!3985371))

(assert (=> b!3529481 d!1030219))

(declare-fun d!1030227 () Bool)

(declare-fun e!2185105 () Bool)

(assert (=> d!1030227 e!2185105))

(declare-fun res!1424323 () Bool)

(assert (=> d!1030227 (=> (not res!1424323) (not e!2185105))))

(declare-fun lt!1207058 () BalanceConc!22334)

(assert (=> d!1030227 (= res!1424323 (= (list!13697 lt!1207058) (Cons!37417 (h!42837 tokens!494) Nil!37417)))))

(declare-fun singleton!1158 (Token!10350) BalanceConc!22334)

(assert (=> d!1030227 (= lt!1207058 (singleton!1158 (h!42837 tokens!494)))))

(assert (=> d!1030227 (= (singletonSeq!2588 (h!42837 tokens!494)) lt!1207058)))

(declare-fun b!3529706 () Bool)

(declare-fun isBalanced!3467 (Conc!11360) Bool)

(assert (=> b!3529706 (= e!2185105 (isBalanced!3467 (c!608380 lt!1207058)))))

(assert (= (and d!1030227 res!1424323) b!3529706))

(declare-fun m!3985383 () Bool)

(assert (=> d!1030227 m!3985383))

(declare-fun m!3985385 () Bool)

(assert (=> d!1030227 m!3985385))

(declare-fun m!3985387 () Bool)

(assert (=> b!3529706 m!3985387))

(assert (=> b!3529481 d!1030227))

(declare-fun d!1030229 () Bool)

(declare-fun c!608423 () Bool)

(assert (=> d!1030229 (= c!608423 ((_ is Cons!37417) (Cons!37417 (h!42837 tokens!494) Nil!37417)))))

(declare-fun e!2185108 () List!37539)

(assert (=> d!1030229 (= (printList!1629 thiss!18206 (Cons!37417 (h!42837 tokens!494) Nil!37417)) e!2185108)))

(declare-fun b!3529711 () Bool)

(assert (=> b!3529711 (= e!2185108 (++!9281 (list!13695 (charsOf!3506 (h!42837 (Cons!37417 (h!42837 tokens!494) Nil!37417)))) (printList!1629 thiss!18206 (t!282832 (Cons!37417 (h!42837 tokens!494) Nil!37417)))))))

(declare-fun b!3529712 () Bool)

(assert (=> b!3529712 (= e!2185108 Nil!37415)))

(assert (= (and d!1030229 c!608423) b!3529711))

(assert (= (and d!1030229 (not c!608423)) b!3529712))

(declare-fun m!3985389 () Bool)

(assert (=> b!3529711 m!3985389))

(assert (=> b!3529711 m!3985389))

(declare-fun m!3985391 () Bool)

(assert (=> b!3529711 m!3985391))

(declare-fun m!3985393 () Bool)

(assert (=> b!3529711 m!3985393))

(assert (=> b!3529711 m!3985391))

(assert (=> b!3529711 m!3985393))

(declare-fun m!3985395 () Bool)

(assert (=> b!3529711 m!3985395))

(assert (=> b!3529481 d!1030229))

(declare-fun d!1030231 () Bool)

(declare-fun lt!1207063 () BalanceConc!22332)

(assert (=> d!1030231 (= (list!13695 lt!1207063) (printList!1629 thiss!18206 (list!13697 lt!1206941)))))

(assert (=> d!1030231 (= lt!1207063 (printTailRec!1576 thiss!18206 lt!1206941 0 (BalanceConc!22333 Empty!11359)))))

(assert (=> d!1030231 (= (print!2146 thiss!18206 lt!1206941) lt!1207063)))

(declare-fun bs!565855 () Bool)

(assert (= bs!565855 d!1030231))

(declare-fun m!3985397 () Bool)

(assert (=> bs!565855 m!3985397))

(assert (=> bs!565855 m!3985365))

(assert (=> bs!565855 m!3985365))

(declare-fun m!3985399 () Bool)

(assert (=> bs!565855 m!3985399))

(assert (=> bs!565855 m!3985143))

(assert (=> b!3529481 d!1030231))

(declare-fun d!1030233 () Bool)

(declare-fun list!13698 (Conc!11359) List!37539)

(assert (=> d!1030233 (= (list!13695 lt!1206955) (list!13698 (c!608379 lt!1206955)))))

(declare-fun bs!565856 () Bool)

(assert (= bs!565856 d!1030233))

(declare-fun m!3985401 () Bool)

(assert (=> bs!565856 m!3985401))

(assert (=> b!3529481 d!1030233))

(declare-fun d!1030235 () Bool)

(declare-fun lt!1207078 () Bool)

(declare-fun e!2185140 () Bool)

(assert (=> d!1030235 (= lt!1207078 e!2185140)))

(declare-fun res!1424343 () Bool)

(assert (=> d!1030235 (=> (not res!1424343) (not e!2185140))))

(assert (=> d!1030235 (= res!1424343 (= (list!13697 (_1!21773 (lex!2407 thiss!18206 rules!2135 (print!2146 thiss!18206 (singletonSeq!2588 separatorToken!241))))) (list!13697 (singletonSeq!2588 separatorToken!241))))))

(declare-fun e!2185141 () Bool)

(assert (=> d!1030235 (= lt!1207078 e!2185141)))

(declare-fun res!1424344 () Bool)

(assert (=> d!1030235 (=> (not res!1424344) (not e!2185141))))

(declare-fun lt!1207079 () tuple2!37278)

(assert (=> d!1030235 (= res!1424344 (= (size!28487 (_1!21773 lt!1207079)) 1))))

(assert (=> d!1030235 (= lt!1207079 (lex!2407 thiss!18206 rules!2135 (print!2146 thiss!18206 (singletonSeq!2588 separatorToken!241))))))

(assert (=> d!1030235 (not (isEmpty!21903 rules!2135))))

(assert (=> d!1030235 (= (rulesProduceIndividualToken!2573 thiss!18206 rules!2135 separatorToken!241) lt!1207078)))

(declare-fun b!3529763 () Bool)

(declare-fun res!1424342 () Bool)

(assert (=> b!3529763 (=> (not res!1424342) (not e!2185141))))

(assert (=> b!3529763 (= res!1424342 (= (apply!8947 (_1!21773 lt!1207079) 0) separatorToken!241))))

(declare-fun b!3529764 () Bool)

(assert (=> b!3529764 (= e!2185141 (isEmpty!21901 (_2!21773 lt!1207079)))))

(declare-fun b!3529765 () Bool)

(assert (=> b!3529765 (= e!2185140 (isEmpty!21901 (_2!21773 (lex!2407 thiss!18206 rules!2135 (print!2146 thiss!18206 (singletonSeq!2588 separatorToken!241))))))))

(assert (= (and d!1030235 res!1424344) b!3529763))

(assert (= (and b!3529763 res!1424342) b!3529764))

(assert (= (and d!1030235 res!1424343) b!3529765))

(assert (=> d!1030235 m!3984949))

(assert (=> d!1030235 m!3984997))

(declare-fun m!3985451 () Bool)

(assert (=> d!1030235 m!3985451))

(declare-fun m!3985453 () Bool)

(assert (=> d!1030235 m!3985453))

(declare-fun m!3985455 () Bool)

(assert (=> d!1030235 m!3985455))

(declare-fun m!3985457 () Bool)

(assert (=> d!1030235 m!3985457))

(assert (=> d!1030235 m!3984997))

(assert (=> d!1030235 m!3984997))

(assert (=> d!1030235 m!3985453))

(declare-fun m!3985459 () Bool)

(assert (=> d!1030235 m!3985459))

(declare-fun m!3985461 () Bool)

(assert (=> b!3529763 m!3985461))

(declare-fun m!3985463 () Bool)

(assert (=> b!3529764 m!3985463))

(assert (=> b!3529765 m!3984997))

(assert (=> b!3529765 m!3984997))

(assert (=> b!3529765 m!3985453))

(assert (=> b!3529765 m!3985453))

(assert (=> b!3529765 m!3985455))

(declare-fun m!3985465 () Bool)

(assert (=> b!3529765 m!3985465))

(assert (=> b!3529480 d!1030235))

(declare-fun d!1030251 () Bool)

(declare-fun res!1424349 () Bool)

(declare-fun e!2185146 () Bool)

(assert (=> d!1030251 (=> res!1424349 e!2185146)))

(assert (=> d!1030251 (= res!1424349 ((_ is Nil!37417) tokens!494))))

(assert (=> d!1030251 (= (forall!8057 tokens!494 lambda!122988) e!2185146)))

(declare-fun b!3529770 () Bool)

(declare-fun e!2185147 () Bool)

(assert (=> b!3529770 (= e!2185146 e!2185147)))

(declare-fun res!1424350 () Bool)

(assert (=> b!3529770 (=> (not res!1424350) (not e!2185147))))

(declare-fun dynLambda!15986 (Int Token!10350) Bool)

(assert (=> b!3529770 (= res!1424350 (dynLambda!15986 lambda!122988 (h!42837 tokens!494)))))

(declare-fun b!3529771 () Bool)

(assert (=> b!3529771 (= e!2185147 (forall!8057 (t!282832 tokens!494) lambda!122988))))

(assert (= (and d!1030251 (not res!1424349)) b!3529770))

(assert (= (and b!3529770 res!1424350) b!3529771))

(declare-fun b_lambda!103267 () Bool)

(assert (=> (not b_lambda!103267) (not b!3529770)))

(declare-fun m!3985467 () Bool)

(assert (=> b!3529770 m!3985467))

(declare-fun m!3985469 () Bool)

(assert (=> b!3529771 m!3985469))

(assert (=> b!3529459 d!1030251))

(declare-fun d!1030253 () Bool)

(declare-fun res!1424355 () Bool)

(declare-fun e!2185152 () Bool)

(assert (=> d!1030253 (=> res!1424355 e!2185152)))

(assert (=> d!1030253 (= res!1424355 (not ((_ is Cons!37416) rules!2135)))))

(assert (=> d!1030253 (= (sepAndNonSepRulesDisjointChars!1686 rules!2135 rules!2135) e!2185152)))

(declare-fun b!3529776 () Bool)

(declare-fun e!2185153 () Bool)

(assert (=> b!3529776 (= e!2185152 e!2185153)))

(declare-fun res!1424356 () Bool)

(assert (=> b!3529776 (=> (not res!1424356) (not e!2185153))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!756 (Rule!10784 List!37540) Bool)

(assert (=> b!3529776 (= res!1424356 (ruleDisjointCharsFromAllFromOtherType!756 (h!42836 rules!2135) rules!2135))))

(declare-fun b!3529777 () Bool)

(assert (=> b!3529777 (= e!2185153 (sepAndNonSepRulesDisjointChars!1686 rules!2135 (t!282831 rules!2135)))))

(assert (= (and d!1030253 (not res!1424355)) b!3529776))

(assert (= (and b!3529776 res!1424356) b!3529777))

(declare-fun m!3985471 () Bool)

(assert (=> b!3529776 m!3985471))

(declare-fun m!3985473 () Bool)

(assert (=> b!3529777 m!3985473))

(assert (=> b!3529482 d!1030253))

(declare-fun d!1030255 () Bool)

(declare-fun lt!1207080 () Bool)

(declare-fun e!2185154 () Bool)

(assert (=> d!1030255 (= lt!1207080 e!2185154)))

(declare-fun res!1424358 () Bool)

(assert (=> d!1030255 (=> (not res!1424358) (not e!2185154))))

(assert (=> d!1030255 (= res!1424358 (= (list!13697 (_1!21773 (lex!2407 thiss!18206 rules!2135 (print!2146 thiss!18206 (singletonSeq!2588 (h!42837 (t!282832 tokens!494))))))) (list!13697 (singletonSeq!2588 (h!42837 (t!282832 tokens!494))))))))

(declare-fun e!2185155 () Bool)

(assert (=> d!1030255 (= lt!1207080 e!2185155)))

(declare-fun res!1424359 () Bool)

(assert (=> d!1030255 (=> (not res!1424359) (not e!2185155))))

(declare-fun lt!1207081 () tuple2!37278)

(assert (=> d!1030255 (= res!1424359 (= (size!28487 (_1!21773 lt!1207081)) 1))))

(assert (=> d!1030255 (= lt!1207081 (lex!2407 thiss!18206 rules!2135 (print!2146 thiss!18206 (singletonSeq!2588 (h!42837 (t!282832 tokens!494))))))))

(assert (=> d!1030255 (not (isEmpty!21903 rules!2135))))

(assert (=> d!1030255 (= (rulesProduceIndividualToken!2573 thiss!18206 rules!2135 (h!42837 (t!282832 tokens!494))) lt!1207080)))

(declare-fun b!3529778 () Bool)

(declare-fun res!1424357 () Bool)

(assert (=> b!3529778 (=> (not res!1424357) (not e!2185155))))

(assert (=> b!3529778 (= res!1424357 (= (apply!8947 (_1!21773 lt!1207081) 0) (h!42837 (t!282832 tokens!494))))))

(declare-fun b!3529779 () Bool)

(assert (=> b!3529779 (= e!2185155 (isEmpty!21901 (_2!21773 lt!1207081)))))

(declare-fun b!3529780 () Bool)

(assert (=> b!3529780 (= e!2185154 (isEmpty!21901 (_2!21773 (lex!2407 thiss!18206 rules!2135 (print!2146 thiss!18206 (singletonSeq!2588 (h!42837 (t!282832 tokens!494))))))))))

(assert (= (and d!1030255 res!1424359) b!3529778))

(assert (= (and b!3529778 res!1424357) b!3529779))

(assert (= (and d!1030255 res!1424358) b!3529780))

(assert (=> d!1030255 m!3984949))

(assert (=> d!1030255 m!3984969))

(declare-fun m!3985475 () Bool)

(assert (=> d!1030255 m!3985475))

(declare-fun m!3985477 () Bool)

(assert (=> d!1030255 m!3985477))

(declare-fun m!3985479 () Bool)

(assert (=> d!1030255 m!3985479))

(declare-fun m!3985481 () Bool)

(assert (=> d!1030255 m!3985481))

(assert (=> d!1030255 m!3984969))

(assert (=> d!1030255 m!3984969))

(assert (=> d!1030255 m!3985477))

(declare-fun m!3985483 () Bool)

(assert (=> d!1030255 m!3985483))

(declare-fun m!3985485 () Bool)

(assert (=> b!3529778 m!3985485))

(declare-fun m!3985487 () Bool)

(assert (=> b!3529779 m!3985487))

(assert (=> b!3529780 m!3984969))

(assert (=> b!3529780 m!3984969))

(assert (=> b!3529780 m!3985477))

(assert (=> b!3529780 m!3985477))

(assert (=> b!3529780 m!3985479))

(declare-fun m!3985489 () Bool)

(assert (=> b!3529780 m!3985489))

(assert (=> b!3529461 d!1030255))

(declare-fun d!1030257 () Bool)

(declare-fun isEmpty!21908 (Option!7648) Bool)

(assert (=> d!1030257 (= (isDefined!5894 lt!1206946) (not (isEmpty!21908 lt!1206946)))))

(declare-fun bs!565860 () Bool)

(assert (= bs!565860 d!1030257))

(declare-fun m!3985491 () Bool)

(assert (=> bs!565860 m!3985491))

(assert (=> b!3529461 d!1030257))

(declare-fun d!1030259 () Bool)

(declare-fun lt!1207084 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5281 (List!37539) (InoxSet C!20688))

(assert (=> d!1030259 (= lt!1207084 (select (content!5281 lt!1206915) lt!1206923))))

(declare-fun e!2185160 () Bool)

(assert (=> d!1030259 (= lt!1207084 e!2185160)))

(declare-fun res!1424365 () Bool)

(assert (=> d!1030259 (=> (not res!1424365) (not e!2185160))))

(assert (=> d!1030259 (= res!1424365 ((_ is Cons!37415) lt!1206915))))

(assert (=> d!1030259 (= (contains!7042 lt!1206915 lt!1206923) lt!1207084)))

(declare-fun b!3529785 () Bool)

(declare-fun e!2185161 () Bool)

(assert (=> b!3529785 (= e!2185160 e!2185161)))

(declare-fun res!1424364 () Bool)

(assert (=> b!3529785 (=> res!1424364 e!2185161)))

(assert (=> b!3529785 (= res!1424364 (= (h!42835 lt!1206915) lt!1206923))))

(declare-fun b!3529786 () Bool)

(assert (=> b!3529786 (= e!2185161 (contains!7042 (t!282830 lt!1206915) lt!1206923))))

(assert (= (and d!1030259 res!1424365) b!3529785))

(assert (= (and b!3529785 (not res!1424364)) b!3529786))

(declare-fun m!3985493 () Bool)

(assert (=> d!1030259 m!3985493))

(declare-fun m!3985495 () Bool)

(assert (=> d!1030259 m!3985495))

(declare-fun m!3985497 () Bool)

(assert (=> b!3529786 m!3985497))

(assert (=> b!3529461 d!1030259))

(declare-fun d!1030261 () Bool)

(declare-fun e!2185164 () Bool)

(assert (=> d!1030261 e!2185164))

(declare-fun res!1424370 () Bool)

(assert (=> d!1030261 (=> (not res!1424370) (not e!2185164))))

(assert (=> d!1030261 (= res!1424370 (isDefined!5894 (getRuleFromTag!1135 thiss!18206 rules!2135 (tag!6138 (rule!8156 (h!42837 tokens!494))))))))

(declare-fun lt!1207087 () Unit!53124)

(declare-fun choose!20517 (LexerInterface!5081 List!37540 List!37539 Token!10350) Unit!53124)

(assert (=> d!1030261 (= lt!1207087 (choose!20517 thiss!18206 rules!2135 lt!1206917 (h!42837 tokens!494)))))

(assert (=> d!1030261 (rulesInvariant!4478 thiss!18206 rules!2135)))

(assert (=> d!1030261 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1135 thiss!18206 rules!2135 lt!1206917 (h!42837 tokens!494)) lt!1207087)))

(declare-fun b!3529791 () Bool)

(declare-fun res!1424371 () Bool)

(assert (=> b!3529791 (=> (not res!1424371) (not e!2185164))))

(assert (=> b!3529791 (= res!1424371 (matchR!4835 (regex!5492 (get!12021 (getRuleFromTag!1135 thiss!18206 rules!2135 (tag!6138 (rule!8156 (h!42837 tokens!494)))))) (list!13695 (charsOf!3506 (h!42837 tokens!494)))))))

(declare-fun b!3529792 () Bool)

(assert (=> b!3529792 (= e!2185164 (= (rule!8156 (h!42837 tokens!494)) (get!12021 (getRuleFromTag!1135 thiss!18206 rules!2135 (tag!6138 (rule!8156 (h!42837 tokens!494)))))))))

(assert (= (and d!1030261 res!1424370) b!3529791))

(assert (= (and b!3529791 res!1424371) b!3529792))

(assert (=> d!1030261 m!3984991))

(assert (=> d!1030261 m!3984991))

(declare-fun m!3985499 () Bool)

(assert (=> d!1030261 m!3985499))

(declare-fun m!3985501 () Bool)

(assert (=> d!1030261 m!3985501))

(assert (=> d!1030261 m!3984955))

(assert (=> b!3529791 m!3985085))

(assert (=> b!3529791 m!3985087))

(declare-fun m!3985503 () Bool)

(assert (=> b!3529791 m!3985503))

(assert (=> b!3529791 m!3985085))

(assert (=> b!3529791 m!3985087))

(assert (=> b!3529791 m!3984991))

(assert (=> b!3529791 m!3984991))

(declare-fun m!3985505 () Bool)

(assert (=> b!3529791 m!3985505))

(assert (=> b!3529792 m!3984991))

(assert (=> b!3529792 m!3984991))

(assert (=> b!3529792 m!3985505))

(assert (=> b!3529461 d!1030261))

(declare-fun b!3529808 () Bool)

(declare-fun e!2185176 () Option!7648)

(assert (=> b!3529808 (= e!2185176 None!7647)))

(declare-fun b!3529809 () Bool)

(declare-fun lt!1207106 () Unit!53124)

(declare-fun lt!1207104 () Unit!53124)

(assert (=> b!3529809 (= lt!1207106 lt!1207104)))

(assert (=> b!3529809 (rulesInvariant!4478 thiss!18206 (t!282831 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!470 (LexerInterface!5081 Rule!10784 List!37540) Unit!53124)

(assert (=> b!3529809 (= lt!1207104 (lemmaInvariantOnRulesThenOnTail!470 thiss!18206 (h!42836 rules!2135) (t!282831 rules!2135)))))

(assert (=> b!3529809 (= e!2185176 (getRuleFromTag!1135 thiss!18206 (t!282831 rules!2135) (tag!6138 (rule!8156 (h!42837 tokens!494)))))))

(declare-fun d!1030263 () Bool)

(declare-fun e!2185177 () Bool)

(assert (=> d!1030263 e!2185177))

(declare-fun res!1424378 () Bool)

(assert (=> d!1030263 (=> res!1424378 e!2185177)))

(declare-fun lt!1207105 () Option!7648)

(assert (=> d!1030263 (= res!1424378 (isEmpty!21908 lt!1207105))))

(declare-fun e!2185175 () Option!7648)

(assert (=> d!1030263 (= lt!1207105 e!2185175)))

(declare-fun c!608445 () Bool)

(assert (=> d!1030263 (= c!608445 (and ((_ is Cons!37416) rules!2135) (= (tag!6138 (h!42836 rules!2135)) (tag!6138 (rule!8156 (h!42837 tokens!494))))))))

(assert (=> d!1030263 (rulesInvariant!4478 thiss!18206 rules!2135)))

(assert (=> d!1030263 (= (getRuleFromTag!1135 thiss!18206 rules!2135 (tag!6138 (rule!8156 (h!42837 tokens!494)))) lt!1207105)))

(declare-fun b!3529810 () Bool)

(declare-fun e!2185178 () Bool)

(assert (=> b!3529810 (= e!2185177 e!2185178)))

(declare-fun res!1424377 () Bool)

(assert (=> b!3529810 (=> (not res!1424377) (not e!2185178))))

(assert (=> b!3529810 (= res!1424377 (contains!7041 rules!2135 (get!12021 lt!1207105)))))

(declare-fun b!3529811 () Bool)

(assert (=> b!3529811 (= e!2185175 e!2185176)))

(declare-fun c!608444 () Bool)

(assert (=> b!3529811 (= c!608444 (and ((_ is Cons!37416) rules!2135) (not (= (tag!6138 (h!42836 rules!2135)) (tag!6138 (rule!8156 (h!42837 tokens!494)))))))))

(declare-fun b!3529812 () Bool)

(assert (=> b!3529812 (= e!2185178 (= (tag!6138 (get!12021 lt!1207105)) (tag!6138 (rule!8156 (h!42837 tokens!494)))))))

(declare-fun b!3529813 () Bool)

(assert (=> b!3529813 (= e!2185175 (Some!7647 (h!42836 rules!2135)))))

(assert (= (and d!1030263 c!608445) b!3529813))

(assert (= (and d!1030263 (not c!608445)) b!3529811))

(assert (= (and b!3529811 c!608444) b!3529809))

(assert (= (and b!3529811 (not c!608444)) b!3529808))

(assert (= (and d!1030263 (not res!1424378)) b!3529810))

(assert (= (and b!3529810 res!1424377) b!3529812))

(declare-fun m!3985543 () Bool)

(assert (=> b!3529809 m!3985543))

(declare-fun m!3985545 () Bool)

(assert (=> b!3529809 m!3985545))

(declare-fun m!3985547 () Bool)

(assert (=> b!3529809 m!3985547))

(declare-fun m!3985549 () Bool)

(assert (=> d!1030263 m!3985549))

(assert (=> d!1030263 m!3984955))

(declare-fun m!3985551 () Bool)

(assert (=> b!3529810 m!3985551))

(assert (=> b!3529810 m!3985551))

(declare-fun m!3985553 () Bool)

(assert (=> b!3529810 m!3985553))

(assert (=> b!3529812 m!3985551))

(assert (=> b!3529461 d!1030263))

(declare-fun d!1030271 () Bool)

(declare-fun lt!1207107 () BalanceConc!22332)

(assert (=> d!1030271 (= (list!13695 lt!1207107) (printList!1629 thiss!18206 (list!13697 lt!1206935)))))

(assert (=> d!1030271 (= lt!1207107 (printTailRec!1576 thiss!18206 lt!1206935 0 (BalanceConc!22333 Empty!11359)))))

(assert (=> d!1030271 (= (print!2146 thiss!18206 lt!1206935) lt!1207107)))

(declare-fun bs!565862 () Bool)

(assert (= bs!565862 d!1030271))

(declare-fun m!3985555 () Bool)

(assert (=> bs!565862 m!3985555))

(declare-fun m!3985557 () Bool)

(assert (=> bs!565862 m!3985557))

(assert (=> bs!565862 m!3985557))

(declare-fun m!3985559 () Bool)

(assert (=> bs!565862 m!3985559))

(assert (=> bs!565862 m!3984989))

(assert (=> b!3529461 d!1030271))

(declare-fun lt!1207110 () tuple2!37278)

(declare-fun e!2185186 () Bool)

(declare-fun b!3529824 () Bool)

(declare-datatypes ((tuple2!37282 0))(
  ( (tuple2!37283 (_1!21775 List!37541) (_2!21775 List!37539)) )
))
(declare-fun lexList!1486 (LexerInterface!5081 List!37540 List!37539) tuple2!37282)

(assert (=> b!3529824 (= e!2185186 (= (list!13695 (_2!21773 lt!1207110)) (_2!21775 (lexList!1486 thiss!18206 rules!2135 (list!13695 lt!1206952)))))))

(declare-fun b!3529825 () Bool)

(declare-fun e!2185185 () Bool)

(assert (=> b!3529825 (= e!2185185 (not (isEmpty!21902 (_1!21773 lt!1207110))))))

(declare-fun b!3529826 () Bool)

(declare-fun e!2185187 () Bool)

(assert (=> b!3529826 (= e!2185187 e!2185185)))

(declare-fun res!1424386 () Bool)

(declare-fun size!28491 (BalanceConc!22332) Int)

(assert (=> b!3529826 (= res!1424386 (< (size!28491 (_2!21773 lt!1207110)) (size!28491 lt!1206952)))))

(assert (=> b!3529826 (=> (not res!1424386) (not e!2185185))))

(declare-fun d!1030273 () Bool)

(assert (=> d!1030273 e!2185186))

(declare-fun res!1424387 () Bool)

(assert (=> d!1030273 (=> (not res!1424387) (not e!2185186))))

(assert (=> d!1030273 (= res!1424387 e!2185187)))

(declare-fun c!608448 () Bool)

(assert (=> d!1030273 (= c!608448 (> (size!28487 (_1!21773 lt!1207110)) 0))))

(declare-fun lexTailRecV2!1094 (LexerInterface!5081 List!37540 BalanceConc!22332 BalanceConc!22332 BalanceConc!22332 BalanceConc!22334) tuple2!37278)

(assert (=> d!1030273 (= lt!1207110 (lexTailRecV2!1094 thiss!18206 rules!2135 lt!1206952 (BalanceConc!22333 Empty!11359) lt!1206952 (BalanceConc!22335 Empty!11360)))))

(assert (=> d!1030273 (= (lex!2407 thiss!18206 rules!2135 lt!1206952) lt!1207110)))

(declare-fun b!3529827 () Bool)

(assert (=> b!3529827 (= e!2185187 (= (_2!21773 lt!1207110) lt!1206952))))

(declare-fun b!3529828 () Bool)

(declare-fun res!1424385 () Bool)

(assert (=> b!3529828 (=> (not res!1424385) (not e!2185186))))

(assert (=> b!3529828 (= res!1424385 (= (list!13697 (_1!21773 lt!1207110)) (_1!21775 (lexList!1486 thiss!18206 rules!2135 (list!13695 lt!1206952)))))))

(assert (= (and d!1030273 c!608448) b!3529826))

(assert (= (and d!1030273 (not c!608448)) b!3529827))

(assert (= (and b!3529826 res!1424386) b!3529825))

(assert (= (and d!1030273 res!1424387) b!3529828))

(assert (= (and b!3529828 res!1424385) b!3529824))

(declare-fun m!3985561 () Bool)

(assert (=> d!1030273 m!3985561))

(declare-fun m!3985563 () Bool)

(assert (=> d!1030273 m!3985563))

(declare-fun m!3985565 () Bool)

(assert (=> b!3529825 m!3985565))

(declare-fun m!3985567 () Bool)

(assert (=> b!3529824 m!3985567))

(declare-fun m!3985569 () Bool)

(assert (=> b!3529824 m!3985569))

(assert (=> b!3529824 m!3985569))

(declare-fun m!3985571 () Bool)

(assert (=> b!3529824 m!3985571))

(declare-fun m!3985573 () Bool)

(assert (=> b!3529826 m!3985573))

(declare-fun m!3985575 () Bool)

(assert (=> b!3529826 m!3985575))

(declare-fun m!3985577 () Bool)

(assert (=> b!3529828 m!3985577))

(assert (=> b!3529828 m!3985569))

(assert (=> b!3529828 m!3985569))

(assert (=> b!3529828 m!3985571))

(assert (=> b!3529461 d!1030273))

(declare-fun d!1030275 () Bool)

(assert (=> d!1030275 (= (maxPrefix!2621 thiss!18206 rules!2135 (++!9281 (list!13695 (charsOf!3506 (h!42837 tokens!494))) lt!1206940)) (Some!7646 (tuple2!37277 (h!42837 tokens!494) lt!1206940)))))

(declare-fun lt!1207129 () Unit!53124)

(declare-fun choose!20518 (LexerInterface!5081 List!37540 Token!10350 Rule!10784 List!37539 Rule!10784) Unit!53124)

(assert (=> d!1030275 (= lt!1207129 (choose!20518 thiss!18206 rules!2135 (h!42837 tokens!494) (rule!8156 (h!42837 tokens!494)) lt!1206940 (rule!8156 separatorToken!241)))))

(assert (=> d!1030275 (not (isEmpty!21903 rules!2135))))

(assert (=> d!1030275 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!248 thiss!18206 rules!2135 (h!42837 tokens!494) (rule!8156 (h!42837 tokens!494)) lt!1206940 (rule!8156 separatorToken!241)) lt!1207129)))

(declare-fun bs!565866 () Bool)

(assert (= bs!565866 d!1030275))

(declare-fun m!3985615 () Bool)

(assert (=> bs!565866 m!3985615))

(declare-fun m!3985617 () Bool)

(assert (=> bs!565866 m!3985617))

(declare-fun m!3985619 () Bool)

(assert (=> bs!565866 m!3985619))

(assert (=> bs!565866 m!3985085))

(assert (=> bs!565866 m!3985087))

(assert (=> bs!565866 m!3985087))

(assert (=> bs!565866 m!3985615))

(assert (=> bs!565866 m!3984949))

(assert (=> bs!565866 m!3985085))

(assert (=> b!3529461 d!1030275))

(declare-fun d!1030289 () Bool)

(declare-fun e!2185204 () Bool)

(assert (=> d!1030289 e!2185204))

(declare-fun res!1424405 () Bool)

(assert (=> d!1030289 (=> (not res!1424405) (not e!2185204))))

(assert (=> d!1030289 (= res!1424405 (isDefined!5894 (getRuleFromTag!1135 thiss!18206 rules!2135 (tag!6138 (rule!8156 separatorToken!241)))))))

(declare-fun lt!1207130 () Unit!53124)

(assert (=> d!1030289 (= lt!1207130 (choose!20517 thiss!18206 rules!2135 lt!1206934 separatorToken!241))))

(assert (=> d!1030289 (rulesInvariant!4478 thiss!18206 rules!2135)))

(assert (=> d!1030289 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1135 thiss!18206 rules!2135 lt!1206934 separatorToken!241) lt!1207130)))

(declare-fun b!3529850 () Bool)

(declare-fun res!1424406 () Bool)

(assert (=> b!3529850 (=> (not res!1424406) (not e!2185204))))

(assert (=> b!3529850 (= res!1424406 (matchR!4835 (regex!5492 (get!12021 (getRuleFromTag!1135 thiss!18206 rules!2135 (tag!6138 (rule!8156 separatorToken!241))))) (list!13695 (charsOf!3506 separatorToken!241))))))

(declare-fun b!3529851 () Bool)

(assert (=> b!3529851 (= e!2185204 (= (rule!8156 separatorToken!241) (get!12021 (getRuleFromTag!1135 thiss!18206 rules!2135 (tag!6138 (rule!8156 separatorToken!241))))))))

(assert (= (and d!1030289 res!1424405) b!3529850))

(assert (= (and b!3529850 res!1424406) b!3529851))

(assert (=> d!1030289 m!3984967))

(assert (=> d!1030289 m!3984967))

(declare-fun m!3985621 () Bool)

(assert (=> d!1030289 m!3985621))

(declare-fun m!3985623 () Bool)

(assert (=> d!1030289 m!3985623))

(assert (=> d!1030289 m!3984955))

(assert (=> b!3529850 m!3985065))

(assert (=> b!3529850 m!3985077))

(declare-fun m!3985625 () Bool)

(assert (=> b!3529850 m!3985625))

(assert (=> b!3529850 m!3985065))

(assert (=> b!3529850 m!3985077))

(assert (=> b!3529850 m!3984967))

(assert (=> b!3529850 m!3984967))

(declare-fun m!3985627 () Bool)

(assert (=> b!3529850 m!3985627))

(assert (=> b!3529851 m!3984967))

(assert (=> b!3529851 m!3984967))

(assert (=> b!3529851 m!3985627))

(assert (=> b!3529461 d!1030289))

(declare-fun b!3529880 () Bool)

(declare-fun e!2185220 () Bool)

(declare-fun e!2185219 () Bool)

(assert (=> b!3529880 (= e!2185220 e!2185219)))

(declare-fun res!1424425 () Bool)

(assert (=> b!3529880 (=> (not res!1424425) (not e!2185219))))

(declare-fun lt!1207153 () Option!7647)

(declare-fun get!12023 (Option!7647) tuple2!37276)

(assert (=> b!3529880 (= res!1424425 (matchR!4835 (regex!5492 (rule!8156 (h!42837 tokens!494))) (list!13695 (charsOf!3506 (_1!21772 (get!12023 lt!1207153))))))))

(declare-fun b!3529881 () Bool)

(declare-fun e!2185218 () Bool)

(declare-datatypes ((tuple2!37284 0))(
  ( (tuple2!37285 (_1!21776 List!37539) (_2!21776 List!37539)) )
))
(declare-fun findLongestMatchInner!946 (Regex!10251 List!37539 Int List!37539 List!37539 Int) tuple2!37284)

(assert (=> b!3529881 (= e!2185218 (matchR!4835 (regex!5492 (rule!8156 (h!42837 tokens!494))) (_1!21776 (findLongestMatchInner!946 (regex!5492 (rule!8156 (h!42837 tokens!494))) Nil!37415 (size!28486 Nil!37415) lt!1206917 lt!1206917 (size!28486 lt!1206917)))))))

(declare-fun b!3529882 () Bool)

(declare-fun res!1424423 () Bool)

(assert (=> b!3529882 (=> (not res!1424423) (not e!2185219))))

(assert (=> b!3529882 (= res!1424423 (= (++!9281 (list!13695 (charsOf!3506 (_1!21772 (get!12023 lt!1207153)))) (_2!21772 (get!12023 lt!1207153))) lt!1206917))))

(declare-fun b!3529883 () Bool)

(declare-fun res!1424422 () Bool)

(assert (=> b!3529883 (=> (not res!1424422) (not e!2185219))))

(assert (=> b!3529883 (= res!1424422 (< (size!28486 (_2!21772 (get!12023 lt!1207153))) (size!28486 lt!1206917)))))

(declare-fun b!3529884 () Bool)

(declare-fun res!1424426 () Bool)

(assert (=> b!3529884 (=> (not res!1424426) (not e!2185219))))

(assert (=> b!3529884 (= res!1424426 (= (rule!8156 (_1!21772 (get!12023 lt!1207153))) (rule!8156 (h!42837 tokens!494))))))

(declare-fun b!3529885 () Bool)

(declare-fun e!2185217 () Option!7647)

(assert (=> b!3529885 (= e!2185217 None!7646)))

(declare-fun b!3529886 () Bool)

(declare-fun lt!1207150 () tuple2!37284)

(assert (=> b!3529886 (= e!2185217 (Some!7646 (tuple2!37277 (Token!10351 (apply!8946 (transformation!5492 (rule!8156 (h!42837 tokens!494))) (seqFromList!4037 (_1!21776 lt!1207150))) (rule!8156 (h!42837 tokens!494)) (size!28491 (seqFromList!4037 (_1!21776 lt!1207150))) (_1!21776 lt!1207150)) (_2!21776 lt!1207150))))))

(declare-fun lt!1207151 () Unit!53124)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!919 (Regex!10251 List!37539) Unit!53124)

(assert (=> b!3529886 (= lt!1207151 (longestMatchIsAcceptedByMatchOrIsEmpty!919 (regex!5492 (rule!8156 (h!42837 tokens!494))) lt!1206917))))

(declare-fun res!1424421 () Bool)

(declare-fun isEmpty!21909 (List!37539) Bool)

(assert (=> b!3529886 (= res!1424421 (isEmpty!21909 (_1!21776 (findLongestMatchInner!946 (regex!5492 (rule!8156 (h!42837 tokens!494))) Nil!37415 (size!28486 Nil!37415) lt!1206917 lt!1206917 (size!28486 lt!1206917)))))))

(assert (=> b!3529886 (=> res!1424421 e!2185218)))

(assert (=> b!3529886 e!2185218))

(declare-fun lt!1207149 () Unit!53124)

(assert (=> b!3529886 (= lt!1207149 lt!1207151)))

(declare-fun lt!1207152 () Unit!53124)

(declare-fun lemmaSemiInverse!1298 (TokenValueInjection!10872 BalanceConc!22332) Unit!53124)

(assert (=> b!3529886 (= lt!1207152 (lemmaSemiInverse!1298 (transformation!5492 (rule!8156 (h!42837 tokens!494))) (seqFromList!4037 (_1!21776 lt!1207150))))))

(declare-fun d!1030291 () Bool)

(assert (=> d!1030291 e!2185220))

(declare-fun res!1424427 () Bool)

(assert (=> d!1030291 (=> res!1424427 e!2185220)))

(declare-fun isEmpty!21910 (Option!7647) Bool)

(assert (=> d!1030291 (= res!1424427 (isEmpty!21910 lt!1207153))))

(assert (=> d!1030291 (= lt!1207153 e!2185217)))

(declare-fun c!608458 () Bool)

(assert (=> d!1030291 (= c!608458 (isEmpty!21909 (_1!21776 lt!1207150)))))

(declare-fun findLongestMatch!861 (Regex!10251 List!37539) tuple2!37284)

(assert (=> d!1030291 (= lt!1207150 (findLongestMatch!861 (regex!5492 (rule!8156 (h!42837 tokens!494))) lt!1206917))))

(declare-fun ruleValid!1779 (LexerInterface!5081 Rule!10784) Bool)

(assert (=> d!1030291 (ruleValid!1779 thiss!18206 (rule!8156 (h!42837 tokens!494)))))

(assert (=> d!1030291 (= (maxPrefixOneRule!1788 thiss!18206 (rule!8156 (h!42837 tokens!494)) lt!1206917) lt!1207153)))

(declare-fun b!3529887 () Bool)

(declare-fun res!1424424 () Bool)

(assert (=> b!3529887 (=> (not res!1424424) (not e!2185219))))

(assert (=> b!3529887 (= res!1424424 (= (value!176982 (_1!21772 (get!12023 lt!1207153))) (apply!8946 (transformation!5492 (rule!8156 (_1!21772 (get!12023 lt!1207153)))) (seqFromList!4037 (originalCharacters!6206 (_1!21772 (get!12023 lt!1207153)))))))))

(declare-fun b!3529888 () Bool)

(assert (=> b!3529888 (= e!2185219 (= (size!28485 (_1!21772 (get!12023 lt!1207153))) (size!28486 (originalCharacters!6206 (_1!21772 (get!12023 lt!1207153))))))))

(assert (= (and d!1030291 c!608458) b!3529885))

(assert (= (and d!1030291 (not c!608458)) b!3529886))

(assert (= (and b!3529886 (not res!1424421)) b!3529881))

(assert (= (and d!1030291 (not res!1424427)) b!3529880))

(assert (= (and b!3529880 res!1424425) b!3529882))

(assert (= (and b!3529882 res!1424423) b!3529883))

(assert (= (and b!3529883 res!1424422) b!3529884))

(assert (= (and b!3529884 res!1424426) b!3529887))

(assert (= (and b!3529887 res!1424424) b!3529888))

(declare-fun m!3985643 () Bool)

(assert (=> b!3529884 m!3985643))

(declare-fun m!3985645 () Bool)

(assert (=> b!3529881 m!3985645))

(assert (=> b!3529881 m!3985045))

(assert (=> b!3529881 m!3985645))

(assert (=> b!3529881 m!3985045))

(declare-fun m!3985647 () Bool)

(assert (=> b!3529881 m!3985647))

(declare-fun m!3985649 () Bool)

(assert (=> b!3529881 m!3985649))

(assert (=> b!3529888 m!3985643))

(declare-fun m!3985651 () Bool)

(assert (=> b!3529888 m!3985651))

(assert (=> b!3529880 m!3985643))

(declare-fun m!3985653 () Bool)

(assert (=> b!3529880 m!3985653))

(assert (=> b!3529880 m!3985653))

(declare-fun m!3985655 () Bool)

(assert (=> b!3529880 m!3985655))

(assert (=> b!3529880 m!3985655))

(declare-fun m!3985657 () Bool)

(assert (=> b!3529880 m!3985657))

(assert (=> b!3529887 m!3985643))

(declare-fun m!3985659 () Bool)

(assert (=> b!3529887 m!3985659))

(assert (=> b!3529887 m!3985659))

(declare-fun m!3985661 () Bool)

(assert (=> b!3529887 m!3985661))

(assert (=> b!3529882 m!3985643))

(assert (=> b!3529882 m!3985653))

(assert (=> b!3529882 m!3985653))

(assert (=> b!3529882 m!3985655))

(assert (=> b!3529882 m!3985655))

(declare-fun m!3985663 () Bool)

(assert (=> b!3529882 m!3985663))

(declare-fun m!3985665 () Bool)

(assert (=> b!3529886 m!3985665))

(declare-fun m!3985667 () Bool)

(assert (=> b!3529886 m!3985667))

(declare-fun m!3985669 () Bool)

(assert (=> b!3529886 m!3985669))

(assert (=> b!3529886 m!3985645))

(assert (=> b!3529886 m!3985045))

(assert (=> b!3529886 m!3985647))

(assert (=> b!3529886 m!3985045))

(assert (=> b!3529886 m!3985645))

(assert (=> b!3529886 m!3985667))

(declare-fun m!3985671 () Bool)

(assert (=> b!3529886 m!3985671))

(assert (=> b!3529886 m!3985667))

(declare-fun m!3985673 () Bool)

(assert (=> b!3529886 m!3985673))

(declare-fun m!3985675 () Bool)

(assert (=> b!3529886 m!3985675))

(assert (=> b!3529886 m!3985667))

(assert (=> b!3529883 m!3985643))

(declare-fun m!3985677 () Bool)

(assert (=> b!3529883 m!3985677))

(assert (=> b!3529883 m!3985045))

(declare-fun m!3985679 () Bool)

(assert (=> d!1030291 m!3985679))

(declare-fun m!3985681 () Bool)

(assert (=> d!1030291 m!3985681))

(declare-fun m!3985683 () Bool)

(assert (=> d!1030291 m!3985683))

(declare-fun m!3985685 () Bool)

(assert (=> d!1030291 m!3985685))

(assert (=> b!3529461 d!1030291))

(declare-fun d!1030299 () Bool)

(assert (=> d!1030299 (not (contains!7042 (usedCharacters!726 (regex!5492 (rule!8156 separatorToken!241))) lt!1206923))))

(declare-fun lt!1207162 () Unit!53124)

(declare-fun choose!20520 (LexerInterface!5081 List!37540 List!37540 Rule!10784 Rule!10784 C!20688) Unit!53124)

(assert (=> d!1030299 (= lt!1207162 (choose!20520 thiss!18206 rules!2135 rules!2135 (rule!8156 (h!42837 (t!282832 tokens!494))) (rule!8156 separatorToken!241) lt!1206923))))

(assert (=> d!1030299 (rulesInvariant!4478 thiss!18206 rules!2135)))

(assert (=> d!1030299 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!174 thiss!18206 rules!2135 rules!2135 (rule!8156 (h!42837 (t!282832 tokens!494))) (rule!8156 separatorToken!241) lt!1206923) lt!1207162)))

(declare-fun bs!565869 () Bool)

(assert (= bs!565869 d!1030299))

(assert (=> bs!565869 m!3984959))

(assert (=> bs!565869 m!3984959))

(declare-fun m!3985687 () Bool)

(assert (=> bs!565869 m!3985687))

(declare-fun m!3985689 () Bool)

(assert (=> bs!565869 m!3985689))

(assert (=> bs!565869 m!3984955))

(assert (=> b!3529461 d!1030299))

(declare-fun b!3529914 () Bool)

(declare-fun e!2185236 () Bool)

(declare-fun e!2185235 () Bool)

(assert (=> b!3529914 (= e!2185236 e!2185235)))

(declare-fun res!1424453 () Bool)

(assert (=> b!3529914 (=> (not res!1424453) (not e!2185235))))

(declare-fun lt!1207172 () Option!7647)

(assert (=> b!3529914 (= res!1424453 (matchR!4835 (regex!5492 (rule!8156 (h!42837 (t!282832 tokens!494)))) (list!13695 (charsOf!3506 (_1!21772 (get!12023 lt!1207172))))))))

(declare-fun b!3529915 () Bool)

(declare-fun e!2185234 () Bool)

(assert (=> b!3529915 (= e!2185234 (matchR!4835 (regex!5492 (rule!8156 (h!42837 (t!282832 tokens!494)))) (_1!21776 (findLongestMatchInner!946 (regex!5492 (rule!8156 (h!42837 (t!282832 tokens!494)))) Nil!37415 (size!28486 Nil!37415) lt!1206922 lt!1206922 (size!28486 lt!1206922)))))))

(declare-fun b!3529916 () Bool)

(declare-fun res!1424451 () Bool)

(assert (=> b!3529916 (=> (not res!1424451) (not e!2185235))))

(assert (=> b!3529916 (= res!1424451 (= (++!9281 (list!13695 (charsOf!3506 (_1!21772 (get!12023 lt!1207172)))) (_2!21772 (get!12023 lt!1207172))) lt!1206922))))

(declare-fun b!3529917 () Bool)

(declare-fun res!1424450 () Bool)

(assert (=> b!3529917 (=> (not res!1424450) (not e!2185235))))

(assert (=> b!3529917 (= res!1424450 (< (size!28486 (_2!21772 (get!12023 lt!1207172))) (size!28486 lt!1206922)))))

(declare-fun b!3529918 () Bool)

(declare-fun res!1424454 () Bool)

(assert (=> b!3529918 (=> (not res!1424454) (not e!2185235))))

(assert (=> b!3529918 (= res!1424454 (= (rule!8156 (_1!21772 (get!12023 lt!1207172))) (rule!8156 (h!42837 (t!282832 tokens!494)))))))

(declare-fun b!3529919 () Bool)

(declare-fun e!2185233 () Option!7647)

(assert (=> b!3529919 (= e!2185233 None!7646)))

(declare-fun b!3529920 () Bool)

(declare-fun lt!1207169 () tuple2!37284)

(assert (=> b!3529920 (= e!2185233 (Some!7646 (tuple2!37277 (Token!10351 (apply!8946 (transformation!5492 (rule!8156 (h!42837 (t!282832 tokens!494)))) (seqFromList!4037 (_1!21776 lt!1207169))) (rule!8156 (h!42837 (t!282832 tokens!494))) (size!28491 (seqFromList!4037 (_1!21776 lt!1207169))) (_1!21776 lt!1207169)) (_2!21776 lt!1207169))))))

(declare-fun lt!1207170 () Unit!53124)

(assert (=> b!3529920 (= lt!1207170 (longestMatchIsAcceptedByMatchOrIsEmpty!919 (regex!5492 (rule!8156 (h!42837 (t!282832 tokens!494)))) lt!1206922))))

(declare-fun res!1424449 () Bool)

(assert (=> b!3529920 (= res!1424449 (isEmpty!21909 (_1!21776 (findLongestMatchInner!946 (regex!5492 (rule!8156 (h!42837 (t!282832 tokens!494)))) Nil!37415 (size!28486 Nil!37415) lt!1206922 lt!1206922 (size!28486 lt!1206922)))))))

(assert (=> b!3529920 (=> res!1424449 e!2185234)))

(assert (=> b!3529920 e!2185234))

(declare-fun lt!1207168 () Unit!53124)

(assert (=> b!3529920 (= lt!1207168 lt!1207170)))

(declare-fun lt!1207171 () Unit!53124)

(assert (=> b!3529920 (= lt!1207171 (lemmaSemiInverse!1298 (transformation!5492 (rule!8156 (h!42837 (t!282832 tokens!494)))) (seqFromList!4037 (_1!21776 lt!1207169))))))

(declare-fun d!1030301 () Bool)

(assert (=> d!1030301 e!2185236))

(declare-fun res!1424455 () Bool)

(assert (=> d!1030301 (=> res!1424455 e!2185236)))

(assert (=> d!1030301 (= res!1424455 (isEmpty!21910 lt!1207172))))

(assert (=> d!1030301 (= lt!1207172 e!2185233)))

(declare-fun c!608463 () Bool)

(assert (=> d!1030301 (= c!608463 (isEmpty!21909 (_1!21776 lt!1207169)))))

(assert (=> d!1030301 (= lt!1207169 (findLongestMatch!861 (regex!5492 (rule!8156 (h!42837 (t!282832 tokens!494)))) lt!1206922))))

(assert (=> d!1030301 (ruleValid!1779 thiss!18206 (rule!8156 (h!42837 (t!282832 tokens!494))))))

(assert (=> d!1030301 (= (maxPrefixOneRule!1788 thiss!18206 (rule!8156 (h!42837 (t!282832 tokens!494))) lt!1206922) lt!1207172)))

(declare-fun b!3529921 () Bool)

(declare-fun res!1424452 () Bool)

(assert (=> b!3529921 (=> (not res!1424452) (not e!2185235))))

(assert (=> b!3529921 (= res!1424452 (= (value!176982 (_1!21772 (get!12023 lt!1207172))) (apply!8946 (transformation!5492 (rule!8156 (_1!21772 (get!12023 lt!1207172)))) (seqFromList!4037 (originalCharacters!6206 (_1!21772 (get!12023 lt!1207172)))))))))

(declare-fun b!3529922 () Bool)

(assert (=> b!3529922 (= e!2185235 (= (size!28485 (_1!21772 (get!12023 lt!1207172))) (size!28486 (originalCharacters!6206 (_1!21772 (get!12023 lt!1207172))))))))

(assert (= (and d!1030301 c!608463) b!3529919))

(assert (= (and d!1030301 (not c!608463)) b!3529920))

(assert (= (and b!3529920 (not res!1424449)) b!3529915))

(assert (= (and d!1030301 (not res!1424455)) b!3529914))

(assert (= (and b!3529914 res!1424453) b!3529916))

(assert (= (and b!3529916 res!1424451) b!3529917))

(assert (= (and b!3529917 res!1424450) b!3529918))

(assert (= (and b!3529918 res!1424454) b!3529921))

(assert (= (and b!3529921 res!1424452) b!3529922))

(declare-fun m!3985691 () Bool)

(assert (=> b!3529918 m!3985691))

(assert (=> b!3529915 m!3985645))

(assert (=> b!3529915 m!3985031))

(assert (=> b!3529915 m!3985645))

(assert (=> b!3529915 m!3985031))

(declare-fun m!3985695 () Bool)

(assert (=> b!3529915 m!3985695))

(declare-fun m!3985699 () Bool)

(assert (=> b!3529915 m!3985699))

(assert (=> b!3529922 m!3985691))

(declare-fun m!3985703 () Bool)

(assert (=> b!3529922 m!3985703))

(assert (=> b!3529914 m!3985691))

(declare-fun m!3985705 () Bool)

(assert (=> b!3529914 m!3985705))

(assert (=> b!3529914 m!3985705))

(declare-fun m!3985709 () Bool)

(assert (=> b!3529914 m!3985709))

(assert (=> b!3529914 m!3985709))

(declare-fun m!3985717 () Bool)

(assert (=> b!3529914 m!3985717))

(assert (=> b!3529921 m!3985691))

(declare-fun m!3985723 () Bool)

(assert (=> b!3529921 m!3985723))

(assert (=> b!3529921 m!3985723))

(declare-fun m!3985731 () Bool)

(assert (=> b!3529921 m!3985731))

(assert (=> b!3529916 m!3985691))

(assert (=> b!3529916 m!3985705))

(assert (=> b!3529916 m!3985705))

(assert (=> b!3529916 m!3985709))

(assert (=> b!3529916 m!3985709))

(declare-fun m!3985741 () Bool)

(assert (=> b!3529916 m!3985741))

(declare-fun m!3985745 () Bool)

(assert (=> b!3529920 m!3985745))

(declare-fun m!3985747 () Bool)

(assert (=> b!3529920 m!3985747))

(declare-fun m!3985749 () Bool)

(assert (=> b!3529920 m!3985749))

(assert (=> b!3529920 m!3985645))

(assert (=> b!3529920 m!3985031))

(assert (=> b!3529920 m!3985695))

(assert (=> b!3529920 m!3985031))

(assert (=> b!3529920 m!3985645))

(assert (=> b!3529920 m!3985747))

(declare-fun m!3985751 () Bool)

(assert (=> b!3529920 m!3985751))

(assert (=> b!3529920 m!3985747))

(declare-fun m!3985755 () Bool)

(assert (=> b!3529920 m!3985755))

(declare-fun m!3985757 () Bool)

(assert (=> b!3529920 m!3985757))

(assert (=> b!3529920 m!3985747))

(assert (=> b!3529917 m!3985691))

(declare-fun m!3985761 () Bool)

(assert (=> b!3529917 m!3985761))

(assert (=> b!3529917 m!3985031))

(declare-fun m!3985765 () Bool)

(assert (=> d!1030301 m!3985765))

(declare-fun m!3985767 () Bool)

(assert (=> d!1030301 m!3985767))

(declare-fun m!3985769 () Bool)

(assert (=> d!1030301 m!3985769))

(declare-fun m!3985771 () Bool)

(assert (=> d!1030301 m!3985771))

(assert (=> b!3529461 d!1030301))

(declare-fun d!1030303 () Bool)

(declare-fun e!2185237 () Bool)

(assert (=> d!1030303 e!2185237))

(declare-fun res!1424456 () Bool)

(assert (=> d!1030303 (=> (not res!1424456) (not e!2185237))))

(assert (=> d!1030303 (= res!1424456 (isDefined!5894 (getRuleFromTag!1135 thiss!18206 rules!2135 (tag!6138 (rule!8156 (h!42837 (t!282832 tokens!494)))))))))

(declare-fun lt!1207173 () Unit!53124)

(assert (=> d!1030303 (= lt!1207173 (choose!20517 thiss!18206 rules!2135 lt!1206922 (h!42837 (t!282832 tokens!494))))))

(assert (=> d!1030303 (rulesInvariant!4478 thiss!18206 rules!2135)))

(assert (=> d!1030303 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1135 thiss!18206 rules!2135 lt!1206922 (h!42837 (t!282832 tokens!494))) lt!1207173)))

(declare-fun b!3529923 () Bool)

(declare-fun res!1424457 () Bool)

(assert (=> b!3529923 (=> (not res!1424457) (not e!2185237))))

(assert (=> b!3529923 (= res!1424457 (matchR!4835 (regex!5492 (get!12021 (getRuleFromTag!1135 thiss!18206 rules!2135 (tag!6138 (rule!8156 (h!42837 (t!282832 tokens!494))))))) (list!13695 (charsOf!3506 (h!42837 (t!282832 tokens!494))))))))

(declare-fun b!3529924 () Bool)

(assert (=> b!3529924 (= e!2185237 (= (rule!8156 (h!42837 (t!282832 tokens!494))) (get!12021 (getRuleFromTag!1135 thiss!18206 rules!2135 (tag!6138 (rule!8156 (h!42837 (t!282832 tokens!494))))))))))

(assert (= (and d!1030303 res!1424456) b!3529923))

(assert (= (and b!3529923 res!1424457) b!3529924))

(assert (=> d!1030303 m!3985017))

(assert (=> d!1030303 m!3985017))

(declare-fun m!3985783 () Bool)

(assert (=> d!1030303 m!3985783))

(declare-fun m!3985785 () Bool)

(assert (=> d!1030303 m!3985785))

(assert (=> d!1030303 m!3984955))

(assert (=> b!3529923 m!3985063))

(assert (=> b!3529923 m!3985081))

(declare-fun m!3985787 () Bool)

(assert (=> b!3529923 m!3985787))

(assert (=> b!3529923 m!3985063))

(assert (=> b!3529923 m!3985081))

(assert (=> b!3529923 m!3985017))

(assert (=> b!3529923 m!3985017))

(declare-fun m!3985789 () Bool)

(assert (=> b!3529923 m!3985789))

(assert (=> b!3529924 m!3985017))

(assert (=> b!3529924 m!3985017))

(assert (=> b!3529924 m!3985789))

(assert (=> b!3529461 d!1030303))

(declare-fun d!1030309 () Bool)

(declare-fun lt!1207177 () Int)

(declare-fun size!28492 (List!37541) Int)

(assert (=> d!1030309 (= lt!1207177 (size!28492 (list!13697 (_1!21773 lt!1206921))))))

(declare-fun size!28493 (Conc!11360) Int)

(assert (=> d!1030309 (= lt!1207177 (size!28493 (c!608380 (_1!21773 lt!1206921))))))

(assert (=> d!1030309 (= (size!28487 (_1!21773 lt!1206921)) lt!1207177)))

(declare-fun bs!565870 () Bool)

(assert (= bs!565870 d!1030309))

(declare-fun m!3985791 () Bool)

(assert (=> bs!565870 m!3985791))

(assert (=> bs!565870 m!3985791))

(declare-fun m!3985793 () Bool)

(assert (=> bs!565870 m!3985793))

(declare-fun m!3985795 () Bool)

(assert (=> bs!565870 m!3985795))

(assert (=> b!3529461 d!1030309))

(declare-fun d!1030311 () Bool)

(declare-fun fromListB!1856 (List!37539) BalanceConc!22332)

(assert (=> d!1030311 (= (seqFromList!4037 lt!1206922) (fromListB!1856 lt!1206922))))

(declare-fun bs!565871 () Bool)

(assert (= bs!565871 d!1030311))

(declare-fun m!3985797 () Bool)

(assert (=> bs!565871 m!3985797))

(assert (=> b!3529461 d!1030311))

(declare-fun d!1030313 () Bool)

(declare-fun lt!1207178 () Bool)

(assert (=> d!1030313 (= lt!1207178 (select (content!5281 (usedCharacters!726 (regex!5492 (rule!8156 (h!42837 tokens!494))))) lt!1206930))))

(declare-fun e!2185239 () Bool)

(assert (=> d!1030313 (= lt!1207178 e!2185239)))

(declare-fun res!1424460 () Bool)

(assert (=> d!1030313 (=> (not res!1424460) (not e!2185239))))

(assert (=> d!1030313 (= res!1424460 ((_ is Cons!37415) (usedCharacters!726 (regex!5492 (rule!8156 (h!42837 tokens!494))))))))

(assert (=> d!1030313 (= (contains!7042 (usedCharacters!726 (regex!5492 (rule!8156 (h!42837 tokens!494)))) lt!1206930) lt!1207178)))

(declare-fun b!3529926 () Bool)

(declare-fun e!2185240 () Bool)

(assert (=> b!3529926 (= e!2185239 e!2185240)))

(declare-fun res!1424459 () Bool)

(assert (=> b!3529926 (=> res!1424459 e!2185240)))

(assert (=> b!3529926 (= res!1424459 (= (h!42835 (usedCharacters!726 (regex!5492 (rule!8156 (h!42837 tokens!494))))) lt!1206930))))

(declare-fun b!3529927 () Bool)

(assert (=> b!3529927 (= e!2185240 (contains!7042 (t!282830 (usedCharacters!726 (regex!5492 (rule!8156 (h!42837 tokens!494))))) lt!1206930))))

(assert (= (and d!1030313 res!1424460) b!3529926))

(assert (= (and b!3529926 (not res!1424459)) b!3529927))

(assert (=> d!1030313 m!3985003))

(declare-fun m!3985799 () Bool)

(assert (=> d!1030313 m!3985799))

(declare-fun m!3985801 () Bool)

(assert (=> d!1030313 m!3985801))

(declare-fun m!3985803 () Bool)

(assert (=> b!3529927 m!3985803))

(assert (=> b!3529461 d!1030313))

(declare-fun b!3529928 () Bool)

(declare-fun e!2185242 () Bool)

(declare-fun lt!1207179 () tuple2!37278)

(assert (=> b!3529928 (= e!2185242 (= (list!13695 (_2!21773 lt!1207179)) (_2!21775 (lexList!1486 thiss!18206 rules!2135 (list!13695 lt!1206939)))))))

(declare-fun b!3529929 () Bool)

(declare-fun e!2185241 () Bool)

(assert (=> b!3529929 (= e!2185241 (not (isEmpty!21902 (_1!21773 lt!1207179))))))

(declare-fun b!3529930 () Bool)

(declare-fun e!2185243 () Bool)

(assert (=> b!3529930 (= e!2185243 e!2185241)))

(declare-fun res!1424462 () Bool)

(assert (=> b!3529930 (= res!1424462 (< (size!28491 (_2!21773 lt!1207179)) (size!28491 lt!1206939)))))

(assert (=> b!3529930 (=> (not res!1424462) (not e!2185241))))

(declare-fun d!1030315 () Bool)

(assert (=> d!1030315 e!2185242))

(declare-fun res!1424463 () Bool)

(assert (=> d!1030315 (=> (not res!1424463) (not e!2185242))))

(assert (=> d!1030315 (= res!1424463 e!2185243)))

(declare-fun c!608464 () Bool)

(assert (=> d!1030315 (= c!608464 (> (size!28487 (_1!21773 lt!1207179)) 0))))

(assert (=> d!1030315 (= lt!1207179 (lexTailRecV2!1094 thiss!18206 rules!2135 lt!1206939 (BalanceConc!22333 Empty!11359) lt!1206939 (BalanceConc!22335 Empty!11360)))))

(assert (=> d!1030315 (= (lex!2407 thiss!18206 rules!2135 lt!1206939) lt!1207179)))

(declare-fun b!3529931 () Bool)

(assert (=> b!3529931 (= e!2185243 (= (_2!21773 lt!1207179) lt!1206939))))

(declare-fun b!3529932 () Bool)

(declare-fun res!1424461 () Bool)

(assert (=> b!3529932 (=> (not res!1424461) (not e!2185242))))

(assert (=> b!3529932 (= res!1424461 (= (list!13697 (_1!21773 lt!1207179)) (_1!21775 (lexList!1486 thiss!18206 rules!2135 (list!13695 lt!1206939)))))))

(assert (= (and d!1030315 c!608464) b!3529930))

(assert (= (and d!1030315 (not c!608464)) b!3529931))

(assert (= (and b!3529930 res!1424462) b!3529929))

(assert (= (and d!1030315 res!1424463) b!3529932))

(assert (= (and b!3529932 res!1424461) b!3529928))

(declare-fun m!3985805 () Bool)

(assert (=> d!1030315 m!3985805))

(declare-fun m!3985807 () Bool)

(assert (=> d!1030315 m!3985807))

(declare-fun m!3985809 () Bool)

(assert (=> b!3529929 m!3985809))

(declare-fun m!3985811 () Bool)

(assert (=> b!3529928 m!3985811))

(declare-fun m!3985813 () Bool)

(assert (=> b!3529928 m!3985813))

(assert (=> b!3529928 m!3985813))

(declare-fun m!3985815 () Bool)

(assert (=> b!3529928 m!3985815))

(declare-fun m!3985817 () Bool)

(assert (=> b!3529930 m!3985817))

(declare-fun m!3985819 () Bool)

(assert (=> b!3529930 m!3985819))

(declare-fun m!3985821 () Bool)

(assert (=> b!3529932 m!3985821))

(assert (=> b!3529932 m!3985813))

(assert (=> b!3529932 m!3985813))

(assert (=> b!3529932 m!3985815))

(assert (=> b!3529461 d!1030315))

(declare-fun b!3529949 () Bool)

(declare-fun e!2185254 () List!37539)

(declare-fun call!254890 () List!37539)

(assert (=> b!3529949 (= e!2185254 call!254890)))

(declare-fun b!3529950 () Bool)

(declare-fun e!2185252 () List!37539)

(assert (=> b!3529950 (= e!2185252 Nil!37415)))

(declare-fun bm!254885 () Bool)

(declare-fun call!254889 () List!37539)

(assert (=> bm!254885 (= call!254889 call!254890)))

(declare-fun b!3529951 () Bool)

(declare-fun e!2185253 () List!37539)

(declare-fun call!254891 () List!37539)

(assert (=> b!3529951 (= e!2185253 call!254891)))

(declare-fun d!1030317 () Bool)

(declare-fun c!608473 () Bool)

(assert (=> d!1030317 (= c!608473 (or ((_ is EmptyExpr!10251) (regex!5492 (rule!8156 (h!42837 tokens!494)))) ((_ is EmptyLang!10251) (regex!5492 (rule!8156 (h!42837 tokens!494))))))))

(assert (=> d!1030317 (= (usedCharacters!726 (regex!5492 (rule!8156 (h!42837 tokens!494)))) e!2185252)))

(declare-fun c!608474 () Bool)

(declare-fun bm!254884 () Bool)

(declare-fun call!254892 () List!37539)

(assert (=> bm!254884 (= call!254891 (++!9281 (ite c!608474 call!254889 call!254892) (ite c!608474 call!254892 call!254889)))))

(declare-fun b!3529952 () Bool)

(declare-fun e!2185255 () List!37539)

(assert (=> b!3529952 (= e!2185252 e!2185255)))

(declare-fun c!608476 () Bool)

(assert (=> b!3529952 (= c!608476 ((_ is ElementMatch!10251) (regex!5492 (rule!8156 (h!42837 tokens!494)))))))

(declare-fun b!3529953 () Bool)

(assert (=> b!3529953 (= e!2185254 e!2185253)))

(assert (=> b!3529953 (= c!608474 ((_ is Union!10251) (regex!5492 (rule!8156 (h!42837 tokens!494)))))))

(declare-fun b!3529954 () Bool)

(assert (=> b!3529954 (= e!2185255 (Cons!37415 (c!608378 (regex!5492 (rule!8156 (h!42837 tokens!494)))) Nil!37415))))

(declare-fun bm!254886 () Bool)

(declare-fun c!608475 () Bool)

(assert (=> bm!254886 (= call!254890 (usedCharacters!726 (ite c!608475 (reg!10580 (regex!5492 (rule!8156 (h!42837 tokens!494)))) (ite c!608474 (regOne!21015 (regex!5492 (rule!8156 (h!42837 tokens!494)))) (regTwo!21014 (regex!5492 (rule!8156 (h!42837 tokens!494))))))))))

(declare-fun b!3529955 () Bool)

(assert (=> b!3529955 (= e!2185253 call!254891)))

(declare-fun b!3529956 () Bool)

(assert (=> b!3529956 (= c!608475 ((_ is Star!10251) (regex!5492 (rule!8156 (h!42837 tokens!494)))))))

(assert (=> b!3529956 (= e!2185255 e!2185254)))

(declare-fun bm!254887 () Bool)

(assert (=> bm!254887 (= call!254892 (usedCharacters!726 (ite c!608474 (regTwo!21015 (regex!5492 (rule!8156 (h!42837 tokens!494)))) (regOne!21014 (regex!5492 (rule!8156 (h!42837 tokens!494)))))))))

(assert (= (and d!1030317 c!608473) b!3529950))

(assert (= (and d!1030317 (not c!608473)) b!3529952))

(assert (= (and b!3529952 c!608476) b!3529954))

(assert (= (and b!3529952 (not c!608476)) b!3529956))

(assert (= (and b!3529956 c!608475) b!3529949))

(assert (= (and b!3529956 (not c!608475)) b!3529953))

(assert (= (and b!3529953 c!608474) b!3529951))

(assert (= (and b!3529953 (not c!608474)) b!3529955))

(assert (= (or b!3529951 b!3529955) bm!254887))

(assert (= (or b!3529951 b!3529955) bm!254885))

(assert (= (or b!3529951 b!3529955) bm!254884))

(assert (= (or b!3529949 bm!254885) bm!254886))

(declare-fun m!3985823 () Bool)

(assert (=> bm!254884 m!3985823))

(declare-fun m!3985825 () Bool)

(assert (=> bm!254886 m!3985825))

(declare-fun m!3985829 () Bool)

(assert (=> bm!254887 m!3985829))

(assert (=> b!3529461 d!1030317))

(declare-fun d!1030319 () Bool)

(assert (=> d!1030319 (rulesProduceIndividualToken!2573 thiss!18206 rules!2135 (h!42837 tokens!494))))

(declare-fun lt!1207226 () Unit!53124)

(declare-fun choose!20522 (LexerInterface!5081 List!37540 List!37541 Token!10350) Unit!53124)

(assert (=> d!1030319 (= lt!1207226 (choose!20522 thiss!18206 rules!2135 tokens!494 (h!42837 tokens!494)))))

(assert (=> d!1030319 (not (isEmpty!21903 rules!2135))))

(assert (=> d!1030319 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1070 thiss!18206 rules!2135 tokens!494 (h!42837 tokens!494)) lt!1207226)))

(declare-fun bs!565883 () Bool)

(assert (= bs!565883 d!1030319))

(assert (=> bs!565883 m!3985117))

(declare-fun m!3986103 () Bool)

(assert (=> bs!565883 m!3986103))

(assert (=> bs!565883 m!3984949))

(assert (=> b!3529461 d!1030319))

(declare-fun d!1030399 () Bool)

(assert (=> d!1030399 (rulesProduceIndividualToken!2573 thiss!18206 rules!2135 (h!42837 (t!282832 tokens!494)))))

(declare-fun lt!1207227 () Unit!53124)

(assert (=> d!1030399 (= lt!1207227 (choose!20522 thiss!18206 rules!2135 tokens!494 (h!42837 (t!282832 tokens!494))))))

(assert (=> d!1030399 (not (isEmpty!21903 rules!2135))))

(assert (=> d!1030399 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1070 thiss!18206 rules!2135 tokens!494 (h!42837 (t!282832 tokens!494))) lt!1207227)))

(declare-fun bs!565884 () Bool)

(assert (= bs!565884 d!1030399))

(assert (=> bs!565884 m!3984995))

(declare-fun m!3986105 () Bool)

(assert (=> bs!565884 m!3986105))

(assert (=> bs!565884 m!3984949))

(assert (=> b!3529461 d!1030399))

(declare-fun d!1030401 () Bool)

(assert (=> d!1030401 (= (head!7409 lt!1206934) (h!42835 lt!1206934))))

(assert (=> b!3529461 d!1030401))

(declare-fun d!1030403 () Bool)

(declare-fun lt!1207228 () Bool)

(assert (=> d!1030403 (= lt!1207228 (select (content!5281 (usedCharacters!726 (regex!5492 (rule!8156 (h!42837 (t!282832 tokens!494)))))) lt!1206923))))

(declare-fun e!2185311 () Bool)

(assert (=> d!1030403 (= lt!1207228 e!2185311)))

(declare-fun res!1424512 () Bool)

(assert (=> d!1030403 (=> (not res!1424512) (not e!2185311))))

(assert (=> d!1030403 (= res!1424512 ((_ is Cons!37415) (usedCharacters!726 (regex!5492 (rule!8156 (h!42837 (t!282832 tokens!494)))))))))

(assert (=> d!1030403 (= (contains!7042 (usedCharacters!726 (regex!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))) lt!1206923) lt!1207228)))

(declare-fun b!3530047 () Bool)

(declare-fun e!2185312 () Bool)

(assert (=> b!3530047 (= e!2185311 e!2185312)))

(declare-fun res!1424511 () Bool)

(assert (=> b!3530047 (=> res!1424511 e!2185312)))

(assert (=> b!3530047 (= res!1424511 (= (h!42835 (usedCharacters!726 (regex!5492 (rule!8156 (h!42837 (t!282832 tokens!494)))))) lt!1206923))))

(declare-fun b!3530048 () Bool)

(assert (=> b!3530048 (= e!2185312 (contains!7042 (t!282830 (usedCharacters!726 (regex!5492 (rule!8156 (h!42837 (t!282832 tokens!494)))))) lt!1206923))))

(assert (= (and d!1030403 res!1424512) b!3530047))

(assert (= (and b!3530047 (not res!1424511)) b!3530048))

(assert (=> d!1030403 m!3984983))

(declare-fun m!3986107 () Bool)

(assert (=> d!1030403 m!3986107))

(declare-fun m!3986109 () Bool)

(assert (=> d!1030403 m!3986109))

(declare-fun m!3986111 () Bool)

(assert (=> b!3530048 m!3986111))

(assert (=> b!3529461 d!1030403))

(declare-fun d!1030405 () Bool)

(declare-fun e!2185313 () Bool)

(assert (=> d!1030405 e!2185313))

(declare-fun res!1424513 () Bool)

(assert (=> d!1030405 (=> (not res!1424513) (not e!2185313))))

(declare-fun lt!1207229 () BalanceConc!22334)

(assert (=> d!1030405 (= res!1424513 (= (list!13697 lt!1207229) (Cons!37417 separatorToken!241 Nil!37417)))))

(assert (=> d!1030405 (= lt!1207229 (singleton!1158 separatorToken!241))))

(assert (=> d!1030405 (= (singletonSeq!2588 separatorToken!241) lt!1207229)))

(declare-fun b!3530049 () Bool)

(assert (=> b!3530049 (= e!2185313 (isBalanced!3467 (c!608380 lt!1207229)))))

(assert (= (and d!1030405 res!1424513) b!3530049))

(declare-fun m!3986113 () Bool)

(assert (=> d!1030405 m!3986113))

(declare-fun m!3986115 () Bool)

(assert (=> d!1030405 m!3986115))

(declare-fun m!3986117 () Bool)

(assert (=> b!3530049 m!3986117))

(assert (=> b!3529461 d!1030405))

(declare-fun d!1030407 () Bool)

(assert (=> d!1030407 (= (maxPrefixOneRule!1788 thiss!18206 (rule!8156 (h!42837 (t!282832 tokens!494))) lt!1206922) (Some!7646 (tuple2!37277 (Token!10351 (apply!8946 (transformation!5492 (rule!8156 (h!42837 (t!282832 tokens!494)))) (seqFromList!4037 lt!1206922)) (rule!8156 (h!42837 (t!282832 tokens!494))) (size!28486 lt!1206922) lt!1206922) Nil!37415)))))

(declare-fun lt!1207232 () Unit!53124)

(declare-fun choose!20523 (LexerInterface!5081 List!37540 List!37539 List!37539 List!37539 Rule!10784) Unit!53124)

(assert (=> d!1030407 (= lt!1207232 (choose!20523 thiss!18206 rules!2135 lt!1206922 lt!1206922 Nil!37415 (rule!8156 (h!42837 (t!282832 tokens!494)))))))

(assert (=> d!1030407 (not (isEmpty!21903 rules!2135))))

(assert (=> d!1030407 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!881 thiss!18206 rules!2135 lt!1206922 lt!1206922 Nil!37415 (rule!8156 (h!42837 (t!282832 tokens!494)))) lt!1207232)))

(declare-fun bs!565885 () Bool)

(assert (= bs!565885 d!1030407))

(assert (=> bs!565885 m!3984963))

(assert (=> bs!565885 m!3985001))

(assert (=> bs!565885 m!3985025))

(assert (=> bs!565885 m!3985031))

(assert (=> bs!565885 m!3984949))

(declare-fun m!3986119 () Bool)

(assert (=> bs!565885 m!3986119))

(assert (=> bs!565885 m!3984963))

(assert (=> b!3529461 d!1030407))

(declare-fun d!1030409 () Bool)

(declare-fun lt!1207233 () Bool)

(assert (=> d!1030409 (= lt!1207233 (select (content!5281 lt!1206915) lt!1206930))))

(declare-fun e!2185314 () Bool)

(assert (=> d!1030409 (= lt!1207233 e!2185314)))

(declare-fun res!1424515 () Bool)

(assert (=> d!1030409 (=> (not res!1424515) (not e!2185314))))

(assert (=> d!1030409 (= res!1424515 ((_ is Cons!37415) lt!1206915))))

(assert (=> d!1030409 (= (contains!7042 lt!1206915 lt!1206930) lt!1207233)))

(declare-fun b!3530050 () Bool)

(declare-fun e!2185315 () Bool)

(assert (=> b!3530050 (= e!2185314 e!2185315)))

(declare-fun res!1424514 () Bool)

(assert (=> b!3530050 (=> res!1424514 e!2185315)))

(assert (=> b!3530050 (= res!1424514 (= (h!42835 lt!1206915) lt!1206930))))

(declare-fun b!3530051 () Bool)

(assert (=> b!3530051 (= e!2185315 (contains!7042 (t!282830 lt!1206915) lt!1206930))))

(assert (= (and d!1030409 res!1424515) b!3530050))

(assert (= (and b!3530050 (not res!1424514)) b!3530051))

(assert (=> d!1030409 m!3985493))

(declare-fun m!3986121 () Bool)

(assert (=> d!1030409 m!3986121))

(declare-fun m!3986123 () Bool)

(assert (=> b!3530051 m!3986123))

(assert (=> b!3529461 d!1030409))

(declare-fun d!1030411 () Bool)

(declare-fun lt!1207236 () Int)

(assert (=> d!1030411 (>= lt!1207236 0)))

(declare-fun e!2185318 () Int)

(assert (=> d!1030411 (= lt!1207236 e!2185318)))

(declare-fun c!608501 () Bool)

(assert (=> d!1030411 (= c!608501 ((_ is Nil!37415) lt!1206917))))

(assert (=> d!1030411 (= (size!28486 lt!1206917) lt!1207236)))

(declare-fun b!3530056 () Bool)

(assert (=> b!3530056 (= e!2185318 0)))

(declare-fun b!3530057 () Bool)

(assert (=> b!3530057 (= e!2185318 (+ 1 (size!28486 (t!282830 lt!1206917))))))

(assert (= (and d!1030411 c!608501) b!3530056))

(assert (= (and d!1030411 (not c!608501)) b!3530057))

(declare-fun m!3986125 () Bool)

(assert (=> b!3530057 m!3986125))

(assert (=> b!3529461 d!1030411))

(declare-fun b!3530058 () Bool)

(declare-fun e!2185320 () Option!7648)

(assert (=> b!3530058 (= e!2185320 None!7647)))

(declare-fun b!3530059 () Bool)

(declare-fun lt!1207239 () Unit!53124)

(declare-fun lt!1207237 () Unit!53124)

(assert (=> b!3530059 (= lt!1207239 lt!1207237)))

(assert (=> b!3530059 (rulesInvariant!4478 thiss!18206 (t!282831 rules!2135))))

(assert (=> b!3530059 (= lt!1207237 (lemmaInvariantOnRulesThenOnTail!470 thiss!18206 (h!42836 rules!2135) (t!282831 rules!2135)))))

(assert (=> b!3530059 (= e!2185320 (getRuleFromTag!1135 thiss!18206 (t!282831 rules!2135) (tag!6138 (rule!8156 separatorToken!241))))))

(declare-fun d!1030413 () Bool)

(declare-fun e!2185321 () Bool)

(assert (=> d!1030413 e!2185321))

(declare-fun res!1424517 () Bool)

(assert (=> d!1030413 (=> res!1424517 e!2185321)))

(declare-fun lt!1207238 () Option!7648)

(assert (=> d!1030413 (= res!1424517 (isEmpty!21908 lt!1207238))))

(declare-fun e!2185319 () Option!7648)

(assert (=> d!1030413 (= lt!1207238 e!2185319)))

(declare-fun c!608503 () Bool)

(assert (=> d!1030413 (= c!608503 (and ((_ is Cons!37416) rules!2135) (= (tag!6138 (h!42836 rules!2135)) (tag!6138 (rule!8156 separatorToken!241)))))))

(assert (=> d!1030413 (rulesInvariant!4478 thiss!18206 rules!2135)))

(assert (=> d!1030413 (= (getRuleFromTag!1135 thiss!18206 rules!2135 (tag!6138 (rule!8156 separatorToken!241))) lt!1207238)))

(declare-fun b!3530060 () Bool)

(declare-fun e!2185322 () Bool)

(assert (=> b!3530060 (= e!2185321 e!2185322)))

(declare-fun res!1424516 () Bool)

(assert (=> b!3530060 (=> (not res!1424516) (not e!2185322))))

(assert (=> b!3530060 (= res!1424516 (contains!7041 rules!2135 (get!12021 lt!1207238)))))

(declare-fun b!3530061 () Bool)

(assert (=> b!3530061 (= e!2185319 e!2185320)))

(declare-fun c!608502 () Bool)

(assert (=> b!3530061 (= c!608502 (and ((_ is Cons!37416) rules!2135) (not (= (tag!6138 (h!42836 rules!2135)) (tag!6138 (rule!8156 separatorToken!241))))))))

(declare-fun b!3530062 () Bool)

(assert (=> b!3530062 (= e!2185322 (= (tag!6138 (get!12021 lt!1207238)) (tag!6138 (rule!8156 separatorToken!241))))))

(declare-fun b!3530063 () Bool)

(assert (=> b!3530063 (= e!2185319 (Some!7647 (h!42836 rules!2135)))))

(assert (= (and d!1030413 c!608503) b!3530063))

(assert (= (and d!1030413 (not c!608503)) b!3530061))

(assert (= (and b!3530061 c!608502) b!3530059))

(assert (= (and b!3530061 (not c!608502)) b!3530058))

(assert (= (and d!1030413 (not res!1424517)) b!3530060))

(assert (= (and b!3530060 res!1424516) b!3530062))

(assert (=> b!3530059 m!3985543))

(assert (=> b!3530059 m!3985545))

(declare-fun m!3986127 () Bool)

(assert (=> b!3530059 m!3986127))

(declare-fun m!3986129 () Bool)

(assert (=> d!1030413 m!3986129))

(assert (=> d!1030413 m!3984955))

(declare-fun m!3986131 () Bool)

(assert (=> b!3530060 m!3986131))

(assert (=> b!3530060 m!3986131))

(declare-fun m!3986133 () Bool)

(assert (=> b!3530060 m!3986133))

(assert (=> b!3530062 m!3986131))

(assert (=> b!3529461 d!1030413))

(declare-fun d!1030415 () Bool)

(declare-fun lt!1207242 () BalanceConc!22332)

(assert (=> d!1030415 (= (list!13695 lt!1207242) (printListTailRec!726 thiss!18206 (dropList!1243 lt!1206935 0) (list!13695 (BalanceConc!22333 Empty!11359))))))

(declare-fun e!2185323 () BalanceConc!22332)

(assert (=> d!1030415 (= lt!1207242 e!2185323)))

(declare-fun c!608504 () Bool)

(assert (=> d!1030415 (= c!608504 (>= 0 (size!28487 lt!1206935)))))

(declare-fun e!2185324 () Bool)

(assert (=> d!1030415 e!2185324))

(declare-fun res!1424518 () Bool)

(assert (=> d!1030415 (=> (not res!1424518) (not e!2185324))))

(assert (=> d!1030415 (= res!1424518 (>= 0 0))))

(assert (=> d!1030415 (= (printTailRec!1576 thiss!18206 lt!1206935 0 (BalanceConc!22333 Empty!11359)) lt!1207242)))

(declare-fun b!3530064 () Bool)

(assert (=> b!3530064 (= e!2185324 (<= 0 (size!28487 lt!1206935)))))

(declare-fun b!3530065 () Bool)

(assert (=> b!3530065 (= e!2185323 (BalanceConc!22333 Empty!11359))))

(declare-fun b!3530066 () Bool)

(assert (=> b!3530066 (= e!2185323 (printTailRec!1576 thiss!18206 lt!1206935 (+ 0 1) (++!9283 (BalanceConc!22333 Empty!11359) (charsOf!3506 (apply!8947 lt!1206935 0)))))))

(declare-fun lt!1207243 () List!37541)

(assert (=> b!3530066 (= lt!1207243 (list!13697 lt!1206935))))

(declare-fun lt!1207241 () Unit!53124)

(assert (=> b!3530066 (= lt!1207241 (lemmaDropApply!1201 lt!1207243 0))))

(assert (=> b!3530066 (= (head!7411 (drop!2057 lt!1207243 0)) (apply!8950 lt!1207243 0))))

(declare-fun lt!1207245 () Unit!53124)

(assert (=> b!3530066 (= lt!1207245 lt!1207241)))

(declare-fun lt!1207246 () List!37541)

(assert (=> b!3530066 (= lt!1207246 (list!13697 lt!1206935))))

(declare-fun lt!1207240 () Unit!53124)

(assert (=> b!3530066 (= lt!1207240 (lemmaDropTail!1085 lt!1207246 0))))

(assert (=> b!3530066 (= (tail!5508 (drop!2057 lt!1207246 0)) (drop!2057 lt!1207246 (+ 0 1)))))

(declare-fun lt!1207244 () Unit!53124)

(assert (=> b!3530066 (= lt!1207244 lt!1207240)))

(assert (= (and d!1030415 res!1424518) b!3530064))

(assert (= (and d!1030415 c!608504) b!3530065))

(assert (= (and d!1030415 (not c!608504)) b!3530066))

(declare-fun m!3986135 () Bool)

(assert (=> d!1030415 m!3986135))

(assert (=> d!1030415 m!3985349))

(declare-fun m!3986137 () Bool)

(assert (=> d!1030415 m!3986137))

(assert (=> d!1030415 m!3985349))

(declare-fun m!3986139 () Bool)

(assert (=> d!1030415 m!3986139))

(assert (=> d!1030415 m!3986135))

(declare-fun m!3986141 () Bool)

(assert (=> d!1030415 m!3986141))

(assert (=> b!3530064 m!3986139))

(declare-fun m!3986143 () Bool)

(assert (=> b!3530066 m!3986143))

(declare-fun m!3986145 () Bool)

(assert (=> b!3530066 m!3986145))

(assert (=> b!3530066 m!3986143))

(declare-fun m!3986147 () Bool)

(assert (=> b!3530066 m!3986147))

(declare-fun m!3986149 () Bool)

(assert (=> b!3530066 m!3986149))

(assert (=> b!3530066 m!3985557))

(declare-fun m!3986151 () Bool)

(assert (=> b!3530066 m!3986151))

(declare-fun m!3986153 () Bool)

(assert (=> b!3530066 m!3986153))

(declare-fun m!3986155 () Bool)

(assert (=> b!3530066 m!3986155))

(declare-fun m!3986157 () Bool)

(assert (=> b!3530066 m!3986157))

(declare-fun m!3986159 () Bool)

(assert (=> b!3530066 m!3986159))

(declare-fun m!3986161 () Bool)

(assert (=> b!3530066 m!3986161))

(declare-fun m!3986163 () Bool)

(assert (=> b!3530066 m!3986163))

(assert (=> b!3530066 m!3986151))

(assert (=> b!3530066 m!3986159))

(declare-fun m!3986165 () Bool)

(assert (=> b!3530066 m!3986165))

(assert (=> b!3530066 m!3986147))

(assert (=> b!3530066 m!3986155))

(assert (=> b!3529461 d!1030415))

(declare-fun d!1030417 () Bool)

(assert (=> d!1030417 (= (isDefined!5894 lt!1206950) (not (isEmpty!21908 lt!1206950)))))

(declare-fun bs!565886 () Bool)

(assert (= bs!565886 d!1030417))

(declare-fun m!3986167 () Bool)

(assert (=> bs!565886 m!3986167))

(assert (=> b!3529461 d!1030417))

(declare-fun b!3530085 () Bool)

(declare-fun e!2185331 () Bool)

(declare-fun e!2185333 () Bool)

(assert (=> b!3530085 (= e!2185331 e!2185333)))

(declare-fun res!1424537 () Bool)

(assert (=> b!3530085 (=> (not res!1424537) (not e!2185333))))

(declare-fun lt!1207258 () Option!7647)

(declare-fun isDefined!5896 (Option!7647) Bool)

(assert (=> b!3530085 (= res!1424537 (isDefined!5896 lt!1207258))))

(declare-fun bm!254894 () Bool)

(declare-fun call!254899 () Option!7647)

(assert (=> bm!254894 (= call!254899 (maxPrefixOneRule!1788 thiss!18206 (h!42836 rules!2135) lt!1206943))))

(declare-fun b!3530086 () Bool)

(assert (=> b!3530086 (= e!2185333 (contains!7041 rules!2135 (rule!8156 (_1!21772 (get!12023 lt!1207258)))))))

(declare-fun b!3530087 () Bool)

(declare-fun res!1424536 () Bool)

(assert (=> b!3530087 (=> (not res!1424536) (not e!2185333))))

(assert (=> b!3530087 (= res!1424536 (< (size!28486 (_2!21772 (get!12023 lt!1207258))) (size!28486 lt!1206943)))))

(declare-fun d!1030419 () Bool)

(assert (=> d!1030419 e!2185331))

(declare-fun res!1424538 () Bool)

(assert (=> d!1030419 (=> res!1424538 e!2185331)))

(assert (=> d!1030419 (= res!1424538 (isEmpty!21910 lt!1207258))))

(declare-fun e!2185332 () Option!7647)

(assert (=> d!1030419 (= lt!1207258 e!2185332)))

(declare-fun c!608507 () Bool)

(assert (=> d!1030419 (= c!608507 (and ((_ is Cons!37416) rules!2135) ((_ is Nil!37416) (t!282831 rules!2135))))))

(declare-fun lt!1207259 () Unit!53124)

(declare-fun lt!1207260 () Unit!53124)

(assert (=> d!1030419 (= lt!1207259 lt!1207260)))

(declare-fun isPrefix!2882 (List!37539 List!37539) Bool)

(assert (=> d!1030419 (isPrefix!2882 lt!1206943 lt!1206943)))

(declare-fun lemmaIsPrefixRefl!1841 (List!37539 List!37539) Unit!53124)

(assert (=> d!1030419 (= lt!1207260 (lemmaIsPrefixRefl!1841 lt!1206943 lt!1206943))))

(declare-fun rulesValidInductive!1891 (LexerInterface!5081 List!37540) Bool)

(assert (=> d!1030419 (rulesValidInductive!1891 thiss!18206 rules!2135)))

(assert (=> d!1030419 (= (maxPrefix!2621 thiss!18206 rules!2135 lt!1206943) lt!1207258)))

(declare-fun b!3530088 () Bool)

(assert (=> b!3530088 (= e!2185332 call!254899)))

(declare-fun b!3530089 () Bool)

(declare-fun res!1424539 () Bool)

(assert (=> b!3530089 (=> (not res!1424539) (not e!2185333))))

(assert (=> b!3530089 (= res!1424539 (= (++!9281 (list!13695 (charsOf!3506 (_1!21772 (get!12023 lt!1207258)))) (_2!21772 (get!12023 lt!1207258))) lt!1206943))))

(declare-fun b!3530090 () Bool)

(declare-fun res!1424535 () Bool)

(assert (=> b!3530090 (=> (not res!1424535) (not e!2185333))))

(assert (=> b!3530090 (= res!1424535 (matchR!4835 (regex!5492 (rule!8156 (_1!21772 (get!12023 lt!1207258)))) (list!13695 (charsOf!3506 (_1!21772 (get!12023 lt!1207258))))))))

(declare-fun b!3530091 () Bool)

(declare-fun lt!1207261 () Option!7647)

(declare-fun lt!1207257 () Option!7647)

(assert (=> b!3530091 (= e!2185332 (ite (and ((_ is None!7646) lt!1207261) ((_ is None!7646) lt!1207257)) None!7646 (ite ((_ is None!7646) lt!1207257) lt!1207261 (ite ((_ is None!7646) lt!1207261) lt!1207257 (ite (>= (size!28485 (_1!21772 (v!37168 lt!1207261))) (size!28485 (_1!21772 (v!37168 lt!1207257)))) lt!1207261 lt!1207257)))))))

(assert (=> b!3530091 (= lt!1207261 call!254899)))

(assert (=> b!3530091 (= lt!1207257 (maxPrefix!2621 thiss!18206 (t!282831 rules!2135) lt!1206943))))

(declare-fun b!3530092 () Bool)

(declare-fun res!1424533 () Bool)

(assert (=> b!3530092 (=> (not res!1424533) (not e!2185333))))

(assert (=> b!3530092 (= res!1424533 (= (value!176982 (_1!21772 (get!12023 lt!1207258))) (apply!8946 (transformation!5492 (rule!8156 (_1!21772 (get!12023 lt!1207258)))) (seqFromList!4037 (originalCharacters!6206 (_1!21772 (get!12023 lt!1207258)))))))))

(declare-fun b!3530093 () Bool)

(declare-fun res!1424534 () Bool)

(assert (=> b!3530093 (=> (not res!1424534) (not e!2185333))))

(assert (=> b!3530093 (= res!1424534 (= (list!13695 (charsOf!3506 (_1!21772 (get!12023 lt!1207258)))) (originalCharacters!6206 (_1!21772 (get!12023 lt!1207258)))))))

(assert (= (and d!1030419 c!608507) b!3530088))

(assert (= (and d!1030419 (not c!608507)) b!3530091))

(assert (= (or b!3530088 b!3530091) bm!254894))

(assert (= (and d!1030419 (not res!1424538)) b!3530085))

(assert (= (and b!3530085 res!1424537) b!3530093))

(assert (= (and b!3530093 res!1424534) b!3530087))

(assert (= (and b!3530087 res!1424536) b!3530089))

(assert (= (and b!3530089 res!1424539) b!3530092))

(assert (= (and b!3530092 res!1424533) b!3530090))

(assert (= (and b!3530090 res!1424535) b!3530086))

(declare-fun m!3986169 () Bool)

(assert (=> b!3530090 m!3986169))

(declare-fun m!3986171 () Bool)

(assert (=> b!3530090 m!3986171))

(assert (=> b!3530090 m!3986171))

(declare-fun m!3986173 () Bool)

(assert (=> b!3530090 m!3986173))

(assert (=> b!3530090 m!3986173))

(declare-fun m!3986175 () Bool)

(assert (=> b!3530090 m!3986175))

(assert (=> b!3530087 m!3986169))

(declare-fun m!3986177 () Bool)

(assert (=> b!3530087 m!3986177))

(declare-fun m!3986179 () Bool)

(assert (=> b!3530087 m!3986179))

(declare-fun m!3986181 () Bool)

(assert (=> d!1030419 m!3986181))

(declare-fun m!3986183 () Bool)

(assert (=> d!1030419 m!3986183))

(declare-fun m!3986185 () Bool)

(assert (=> d!1030419 m!3986185))

(declare-fun m!3986187 () Bool)

(assert (=> d!1030419 m!3986187))

(declare-fun m!3986189 () Bool)

(assert (=> b!3530085 m!3986189))

(assert (=> b!3530089 m!3986169))

(assert (=> b!3530089 m!3986171))

(assert (=> b!3530089 m!3986171))

(assert (=> b!3530089 m!3986173))

(assert (=> b!3530089 m!3986173))

(declare-fun m!3986191 () Bool)

(assert (=> b!3530089 m!3986191))

(assert (=> b!3530086 m!3986169))

(declare-fun m!3986193 () Bool)

(assert (=> b!3530086 m!3986193))

(assert (=> b!3530092 m!3986169))

(declare-fun m!3986195 () Bool)

(assert (=> b!3530092 m!3986195))

(assert (=> b!3530092 m!3986195))

(declare-fun m!3986197 () Bool)

(assert (=> b!3530092 m!3986197))

(declare-fun m!3986199 () Bool)

(assert (=> b!3530091 m!3986199))

(assert (=> b!3530093 m!3986169))

(assert (=> b!3530093 m!3986171))

(assert (=> b!3530093 m!3986171))

(assert (=> b!3530093 m!3986173))

(declare-fun m!3986201 () Bool)

(assert (=> bm!254894 m!3986201))

(assert (=> b!3529461 d!1030419))

(declare-fun d!1030421 () Bool)

(declare-fun lt!1207264 () Int)

(assert (=> d!1030421 (= lt!1207264 (size!28492 (list!13697 (_1!21773 lt!1206945))))))

(assert (=> d!1030421 (= lt!1207264 (size!28493 (c!608380 (_1!21773 lt!1206945))))))

(assert (=> d!1030421 (= (size!28487 (_1!21773 lt!1206945)) lt!1207264)))

(declare-fun bs!565887 () Bool)

(assert (= bs!565887 d!1030421))

(declare-fun m!3986203 () Bool)

(assert (=> bs!565887 m!3986203))

(assert (=> bs!565887 m!3986203))

(declare-fun m!3986205 () Bool)

(assert (=> bs!565887 m!3986205))

(declare-fun m!3986207 () Bool)

(assert (=> bs!565887 m!3986207))

(assert (=> b!3529461 d!1030421))

(declare-fun d!1030423 () Bool)

(assert (=> d!1030423 (= (maxPrefixOneRule!1788 thiss!18206 (rule!8156 (h!42837 tokens!494)) lt!1206917) (Some!7646 (tuple2!37277 (Token!10351 (apply!8946 (transformation!5492 (rule!8156 (h!42837 tokens!494))) (seqFromList!4037 lt!1206917)) (rule!8156 (h!42837 tokens!494)) (size!28486 lt!1206917) lt!1206917) Nil!37415)))))

(declare-fun lt!1207265 () Unit!53124)

(assert (=> d!1030423 (= lt!1207265 (choose!20523 thiss!18206 rules!2135 lt!1206917 lt!1206917 Nil!37415 (rule!8156 (h!42837 tokens!494))))))

(assert (=> d!1030423 (not (isEmpty!21903 rules!2135))))

(assert (=> d!1030423 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!881 thiss!18206 rules!2135 lt!1206917 lt!1206917 Nil!37415 (rule!8156 (h!42837 tokens!494))) lt!1207265)))

(declare-fun bs!565888 () Bool)

(assert (= bs!565888 d!1030423))

(assert (=> bs!565888 m!3984947))

(declare-fun m!3986209 () Bool)

(assert (=> bs!565888 m!3986209))

(assert (=> bs!565888 m!3985039))

(assert (=> bs!565888 m!3985045))

(assert (=> bs!565888 m!3984949))

(declare-fun m!3986211 () Bool)

(assert (=> bs!565888 m!3986211))

(assert (=> bs!565888 m!3984947))

(assert (=> b!3529461 d!1030423))

(declare-fun b!3530094 () Bool)

(declare-fun e!2185338 () List!37539)

(declare-fun call!254901 () List!37539)

(assert (=> b!3530094 (= e!2185338 call!254901)))

(declare-fun b!3530095 () Bool)

(declare-fun e!2185336 () List!37539)

(assert (=> b!3530095 (= e!2185336 Nil!37415)))

(declare-fun bm!254896 () Bool)

(declare-fun call!254900 () List!37539)

(assert (=> bm!254896 (= call!254900 call!254901)))

(declare-fun b!3530096 () Bool)

(declare-fun e!2185337 () List!37539)

(declare-fun call!254902 () List!37539)

(assert (=> b!3530096 (= e!2185337 call!254902)))

(declare-fun d!1030425 () Bool)

(declare-fun c!608508 () Bool)

(assert (=> d!1030425 (= c!608508 (or ((_ is EmptyExpr!10251) (regex!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))) ((_ is EmptyLang!10251) (regex!5492 (rule!8156 (h!42837 (t!282832 tokens!494)))))))))

(assert (=> d!1030425 (= (usedCharacters!726 (regex!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))) e!2185336)))

(declare-fun call!254903 () List!37539)

(declare-fun bm!254895 () Bool)

(declare-fun c!608509 () Bool)

(assert (=> bm!254895 (= call!254902 (++!9281 (ite c!608509 call!254900 call!254903) (ite c!608509 call!254903 call!254900)))))

(declare-fun b!3530097 () Bool)

(declare-fun e!2185339 () List!37539)

(assert (=> b!3530097 (= e!2185336 e!2185339)))

(declare-fun c!608511 () Bool)

(assert (=> b!3530097 (= c!608511 ((_ is ElementMatch!10251) (regex!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))))))

(declare-fun b!3530098 () Bool)

(assert (=> b!3530098 (= e!2185338 e!2185337)))

(assert (=> b!3530098 (= c!608509 ((_ is Union!10251) (regex!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))))))

(declare-fun b!3530099 () Bool)

(assert (=> b!3530099 (= e!2185339 (Cons!37415 (c!608378 (regex!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))) Nil!37415))))

(declare-fun bm!254897 () Bool)

(declare-fun c!608510 () Bool)

(assert (=> bm!254897 (= call!254901 (usedCharacters!726 (ite c!608510 (reg!10580 (regex!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))) (ite c!608509 (regOne!21015 (regex!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))) (regTwo!21014 (regex!5492 (rule!8156 (h!42837 (t!282832 tokens!494)))))))))))

(declare-fun b!3530100 () Bool)

(assert (=> b!3530100 (= e!2185337 call!254902)))

(declare-fun b!3530101 () Bool)

(assert (=> b!3530101 (= c!608510 ((_ is Star!10251) (regex!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))))))

(assert (=> b!3530101 (= e!2185339 e!2185338)))

(declare-fun bm!254898 () Bool)

(assert (=> bm!254898 (= call!254903 (usedCharacters!726 (ite c!608509 (regTwo!21015 (regex!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))) (regOne!21014 (regex!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))))))))

(assert (= (and d!1030425 c!608508) b!3530095))

(assert (= (and d!1030425 (not c!608508)) b!3530097))

(assert (= (and b!3530097 c!608511) b!3530099))

(assert (= (and b!3530097 (not c!608511)) b!3530101))

(assert (= (and b!3530101 c!608510) b!3530094))

(assert (= (and b!3530101 (not c!608510)) b!3530098))

(assert (= (and b!3530098 c!608509) b!3530096))

(assert (= (and b!3530098 (not c!608509)) b!3530100))

(assert (= (or b!3530096 b!3530100) bm!254898))

(assert (= (or b!3530096 b!3530100) bm!254896))

(assert (= (or b!3530096 b!3530100) bm!254895))

(assert (= (or b!3530094 bm!254896) bm!254897))

(declare-fun m!3986213 () Bool)

(assert (=> bm!254895 m!3986213))

(declare-fun m!3986215 () Bool)

(assert (=> bm!254897 m!3986215))

(declare-fun m!3986217 () Bool)

(assert (=> bm!254898 m!3986217))

(assert (=> b!3529461 d!1030425))

(declare-fun d!1030427 () Bool)

(declare-fun dynLambda!15987 (Int BalanceConc!22332) TokenValue!5722)

(assert (=> d!1030427 (= (apply!8946 (transformation!5492 (rule!8156 (h!42837 tokens!494))) lt!1206947) (dynLambda!15987 (toValue!7748 (transformation!5492 (rule!8156 (h!42837 tokens!494)))) lt!1206947))))

(declare-fun b_lambda!103275 () Bool)

(assert (=> (not b_lambda!103275) (not d!1030427)))

(declare-fun t!282874 () Bool)

(declare-fun tb!197537 () Bool)

(assert (=> (and b!3529485 (= (toValue!7748 (transformation!5492 (rule!8156 (h!42837 tokens!494)))) (toValue!7748 (transformation!5492 (rule!8156 (h!42837 tokens!494))))) t!282874) tb!197537))

(declare-fun result!241990 () Bool)

(assert (=> tb!197537 (= result!241990 (inv!21 (dynLambda!15987 (toValue!7748 (transformation!5492 (rule!8156 (h!42837 tokens!494)))) lt!1206947)))))

(declare-fun m!3986219 () Bool)

(assert (=> tb!197537 m!3986219))

(assert (=> d!1030427 t!282874))

(declare-fun b_and!251763 () Bool)

(assert (= b_and!251715 (and (=> t!282874 result!241990) b_and!251763)))

(declare-fun tb!197539 () Bool)

(declare-fun t!282876 () Bool)

(assert (=> (and b!3529478 (= (toValue!7748 (transformation!5492 (h!42836 rules!2135))) (toValue!7748 (transformation!5492 (rule!8156 (h!42837 tokens!494))))) t!282876) tb!197539))

(declare-fun result!241994 () Bool)

(assert (= result!241994 result!241990))

(assert (=> d!1030427 t!282876))

(declare-fun b_and!251765 () Bool)

(assert (= b_and!251719 (and (=> t!282876 result!241994) b_and!251765)))

(declare-fun tb!197541 () Bool)

(declare-fun t!282878 () Bool)

(assert (=> (and b!3529460 (= (toValue!7748 (transformation!5492 (rule!8156 separatorToken!241))) (toValue!7748 (transformation!5492 (rule!8156 (h!42837 tokens!494))))) t!282878) tb!197541))

(declare-fun result!241996 () Bool)

(assert (= result!241996 result!241990))

(assert (=> d!1030427 t!282878))

(declare-fun b_and!251767 () Bool)

(assert (= b_and!251723 (and (=> t!282878 result!241996) b_and!251767)))

(declare-fun m!3986221 () Bool)

(assert (=> d!1030427 m!3986221))

(assert (=> b!3529461 d!1030427))

(declare-fun d!1030429 () Bool)

(declare-fun lt!1207267 () Int)

(assert (=> d!1030429 (>= lt!1207267 0)))

(declare-fun e!2185344 () Int)

(assert (=> d!1030429 (= lt!1207267 e!2185344)))

(declare-fun c!608512 () Bool)

(assert (=> d!1030429 (= c!608512 ((_ is Nil!37415) lt!1206922))))

(assert (=> d!1030429 (= (size!28486 lt!1206922) lt!1207267)))

(declare-fun b!3530107 () Bool)

(assert (=> b!3530107 (= e!2185344 0)))

(declare-fun b!3530108 () Bool)

(assert (=> b!3530108 (= e!2185344 (+ 1 (size!28486 (t!282830 lt!1206922))))))

(assert (= (and d!1030429 c!608512) b!3530107))

(assert (= (and d!1030429 (not c!608512)) b!3530108))

(declare-fun m!3986223 () Bool)

(assert (=> b!3530108 m!3986223))

(assert (=> b!3529461 d!1030429))

(declare-fun d!1030431 () Bool)

(assert (=> d!1030431 (dynLambda!15986 lambda!122989 (h!42837 (t!282832 tokens!494)))))

(declare-fun lt!1207270 () Unit!53124)

(declare-fun choose!20525 (List!37541 Int Token!10350) Unit!53124)

(assert (=> d!1030431 (= lt!1207270 (choose!20525 tokens!494 lambda!122989 (h!42837 (t!282832 tokens!494))))))

(declare-fun e!2185350 () Bool)

(assert (=> d!1030431 e!2185350))

(declare-fun res!1424545 () Bool)

(assert (=> d!1030431 (=> (not res!1424545) (not e!2185350))))

(assert (=> d!1030431 (= res!1424545 (forall!8057 tokens!494 lambda!122989))))

(assert (=> d!1030431 (= (forallContained!1439 tokens!494 lambda!122989 (h!42837 (t!282832 tokens!494))) lt!1207270)))

(declare-fun b!3530114 () Bool)

(declare-fun contains!7044 (List!37541 Token!10350) Bool)

(assert (=> b!3530114 (= e!2185350 (contains!7044 tokens!494 (h!42837 (t!282832 tokens!494))))))

(assert (= (and d!1030431 res!1424545) b!3530114))

(declare-fun b_lambda!103277 () Bool)

(assert (=> (not b_lambda!103277) (not d!1030431)))

(declare-fun m!3986233 () Bool)

(assert (=> d!1030431 m!3986233))

(declare-fun m!3986235 () Bool)

(assert (=> d!1030431 m!3986235))

(declare-fun m!3986237 () Bool)

(assert (=> d!1030431 m!3986237))

(declare-fun m!3986239 () Bool)

(assert (=> b!3530114 m!3986239))

(assert (=> b!3529461 d!1030431))

(declare-fun d!1030435 () Bool)

(assert (=> d!1030435 (= (head!7409 lt!1206922) (h!42835 lt!1206922))))

(assert (=> b!3529461 d!1030435))

(declare-fun d!1030439 () Bool)

(declare-fun e!2185351 () Bool)

(assert (=> d!1030439 e!2185351))

(declare-fun res!1424546 () Bool)

(assert (=> d!1030439 (=> (not res!1424546) (not e!2185351))))

(declare-fun lt!1207271 () BalanceConc!22334)

(assert (=> d!1030439 (= res!1424546 (= (list!13697 lt!1207271) (Cons!37417 (h!42837 (t!282832 tokens!494)) Nil!37417)))))

(assert (=> d!1030439 (= lt!1207271 (singleton!1158 (h!42837 (t!282832 tokens!494))))))

(assert (=> d!1030439 (= (singletonSeq!2588 (h!42837 (t!282832 tokens!494))) lt!1207271)))

(declare-fun b!3530115 () Bool)

(assert (=> b!3530115 (= e!2185351 (isBalanced!3467 (c!608380 lt!1207271)))))

(assert (= (and d!1030439 res!1424546) b!3530115))

(declare-fun m!3986243 () Bool)

(assert (=> d!1030439 m!3986243))

(declare-fun m!3986245 () Bool)

(assert (=> d!1030439 m!3986245))

(declare-fun m!3986247 () Bool)

(assert (=> b!3530115 m!3986247))

(assert (=> b!3529461 d!1030439))

(declare-fun d!1030441 () Bool)

(declare-fun lt!1207272 () BalanceConc!22332)

(assert (=> d!1030441 (= (list!13695 lt!1207272) (printList!1629 thiss!18206 (list!13697 lt!1206949)))))

(assert (=> d!1030441 (= lt!1207272 (printTailRec!1576 thiss!18206 lt!1206949 0 (BalanceConc!22333 Empty!11359)))))

(assert (=> d!1030441 (= (print!2146 thiss!18206 lt!1206949) lt!1207272)))

(declare-fun bs!565892 () Bool)

(assert (= bs!565892 d!1030441))

(declare-fun m!3986249 () Bool)

(assert (=> bs!565892 m!3986249))

(declare-fun m!3986251 () Bool)

(assert (=> bs!565892 m!3986251))

(assert (=> bs!565892 m!3986251))

(declare-fun m!3986253 () Bool)

(assert (=> bs!565892 m!3986253))

(assert (=> bs!565892 m!3985013))

(assert (=> b!3529461 d!1030441))

(declare-fun d!1030443 () Bool)

(declare-fun lt!1207275 () BalanceConc!22332)

(assert (=> d!1030443 (= (list!13695 lt!1207275) (printListTailRec!726 thiss!18206 (dropList!1243 lt!1206949 0) (list!13695 (BalanceConc!22333 Empty!11359))))))

(declare-fun e!2185356 () BalanceConc!22332)

(assert (=> d!1030443 (= lt!1207275 e!2185356)))

(declare-fun c!608513 () Bool)

(assert (=> d!1030443 (= c!608513 (>= 0 (size!28487 lt!1206949)))))

(declare-fun e!2185357 () Bool)

(assert (=> d!1030443 e!2185357))

(declare-fun res!1424551 () Bool)

(assert (=> d!1030443 (=> (not res!1424551) (not e!2185357))))

(assert (=> d!1030443 (= res!1424551 (>= 0 0))))

(assert (=> d!1030443 (= (printTailRec!1576 thiss!18206 lt!1206949 0 (BalanceConc!22333 Empty!11359)) lt!1207275)))

(declare-fun b!3530120 () Bool)

(assert (=> b!3530120 (= e!2185357 (<= 0 (size!28487 lt!1206949)))))

(declare-fun b!3530121 () Bool)

(assert (=> b!3530121 (= e!2185356 (BalanceConc!22333 Empty!11359))))

(declare-fun b!3530122 () Bool)

(assert (=> b!3530122 (= e!2185356 (printTailRec!1576 thiss!18206 lt!1206949 (+ 0 1) (++!9283 (BalanceConc!22333 Empty!11359) (charsOf!3506 (apply!8947 lt!1206949 0)))))))

(declare-fun lt!1207276 () List!37541)

(assert (=> b!3530122 (= lt!1207276 (list!13697 lt!1206949))))

(declare-fun lt!1207274 () Unit!53124)

(assert (=> b!3530122 (= lt!1207274 (lemmaDropApply!1201 lt!1207276 0))))

(assert (=> b!3530122 (= (head!7411 (drop!2057 lt!1207276 0)) (apply!8950 lt!1207276 0))))

(declare-fun lt!1207278 () Unit!53124)

(assert (=> b!3530122 (= lt!1207278 lt!1207274)))

(declare-fun lt!1207279 () List!37541)

(assert (=> b!3530122 (= lt!1207279 (list!13697 lt!1206949))))

(declare-fun lt!1207273 () Unit!53124)

(assert (=> b!3530122 (= lt!1207273 (lemmaDropTail!1085 lt!1207279 0))))

(assert (=> b!3530122 (= (tail!5508 (drop!2057 lt!1207279 0)) (drop!2057 lt!1207279 (+ 0 1)))))

(declare-fun lt!1207277 () Unit!53124)

(assert (=> b!3530122 (= lt!1207277 lt!1207273)))

(assert (= (and d!1030443 res!1424551) b!3530120))

(assert (= (and d!1030443 c!608513) b!3530121))

(assert (= (and d!1030443 (not c!608513)) b!3530122))

(declare-fun m!3986255 () Bool)

(assert (=> d!1030443 m!3986255))

(assert (=> d!1030443 m!3985349))

(declare-fun m!3986257 () Bool)

(assert (=> d!1030443 m!3986257))

(assert (=> d!1030443 m!3985349))

(declare-fun m!3986259 () Bool)

(assert (=> d!1030443 m!3986259))

(assert (=> d!1030443 m!3986255))

(declare-fun m!3986261 () Bool)

(assert (=> d!1030443 m!3986261))

(assert (=> b!3530120 m!3986259))

(declare-fun m!3986263 () Bool)

(assert (=> b!3530122 m!3986263))

(declare-fun m!3986265 () Bool)

(assert (=> b!3530122 m!3986265))

(assert (=> b!3530122 m!3986263))

(declare-fun m!3986267 () Bool)

(assert (=> b!3530122 m!3986267))

(declare-fun m!3986269 () Bool)

(assert (=> b!3530122 m!3986269))

(assert (=> b!3530122 m!3986251))

(declare-fun m!3986271 () Bool)

(assert (=> b!3530122 m!3986271))

(declare-fun m!3986273 () Bool)

(assert (=> b!3530122 m!3986273))

(declare-fun m!3986275 () Bool)

(assert (=> b!3530122 m!3986275))

(declare-fun m!3986277 () Bool)

(assert (=> b!3530122 m!3986277))

(declare-fun m!3986279 () Bool)

(assert (=> b!3530122 m!3986279))

(declare-fun m!3986281 () Bool)

(assert (=> b!3530122 m!3986281))

(declare-fun m!3986283 () Bool)

(assert (=> b!3530122 m!3986283))

(assert (=> b!3530122 m!3986271))

(assert (=> b!3530122 m!3986279))

(declare-fun m!3986287 () Bool)

(assert (=> b!3530122 m!3986287))

(assert (=> b!3530122 m!3986267))

(assert (=> b!3530122 m!3986275))

(assert (=> b!3529461 d!1030443))

(declare-fun d!1030447 () Bool)

(assert (=> d!1030447 (not (contains!7042 (usedCharacters!726 (regex!5492 (rule!8156 (h!42837 tokens!494)))) lt!1206930))))

(declare-fun lt!1207284 () Unit!53124)

(declare-fun choose!20526 (LexerInterface!5081 List!37540 List!37540 Rule!10784 Rule!10784 C!20688) Unit!53124)

(assert (=> d!1030447 (= lt!1207284 (choose!20526 thiss!18206 rules!2135 rules!2135 (rule!8156 (h!42837 tokens!494)) (rule!8156 separatorToken!241) lt!1206930))))

(assert (=> d!1030447 (rulesInvariant!4478 thiss!18206 rules!2135)))

(assert (=> d!1030447 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!292 thiss!18206 rules!2135 rules!2135 (rule!8156 (h!42837 tokens!494)) (rule!8156 separatorToken!241) lt!1206930) lt!1207284)))

(declare-fun bs!565893 () Bool)

(assert (= bs!565893 d!1030447))

(assert (=> bs!565893 m!3985003))

(assert (=> bs!565893 m!3985003))

(assert (=> bs!565893 m!3985005))

(declare-fun m!3986307 () Bool)

(assert (=> bs!565893 m!3986307))

(assert (=> bs!565893 m!3984955))

(assert (=> b!3529461 d!1030447))

(declare-fun d!1030455 () Bool)

(declare-fun lt!1207292 () Bool)

(declare-fun content!5283 (List!37540) (InoxSet Rule!10784))

(assert (=> d!1030455 (= lt!1207292 (select (content!5283 rules!2135) (rule!8156 separatorToken!241)))))

(declare-fun e!2185383 () Bool)

(assert (=> d!1030455 (= lt!1207292 e!2185383)))

(declare-fun res!1424579 () Bool)

(assert (=> d!1030455 (=> (not res!1424579) (not e!2185383))))

(assert (=> d!1030455 (= res!1424579 ((_ is Cons!37416) rules!2135))))

(assert (=> d!1030455 (= (contains!7041 rules!2135 (rule!8156 separatorToken!241)) lt!1207292)))

(declare-fun b!3530159 () Bool)

(declare-fun e!2185384 () Bool)

(assert (=> b!3530159 (= e!2185383 e!2185384)))

(declare-fun res!1424578 () Bool)

(assert (=> b!3530159 (=> res!1424578 e!2185384)))

(assert (=> b!3530159 (= res!1424578 (= (h!42836 rules!2135) (rule!8156 separatorToken!241)))))

(declare-fun b!3530160 () Bool)

(assert (=> b!3530160 (= e!2185384 (contains!7041 (t!282831 rules!2135) (rule!8156 separatorToken!241)))))

(assert (= (and d!1030455 res!1424579) b!3530159))

(assert (= (and b!3530159 (not res!1424578)) b!3530160))

(declare-fun m!3986331 () Bool)

(assert (=> d!1030455 m!3986331))

(declare-fun m!3986333 () Bool)

(assert (=> d!1030455 m!3986333))

(declare-fun m!3986335 () Bool)

(assert (=> b!3530160 m!3986335))

(assert (=> b!3529461 d!1030455))

(declare-fun b!3530161 () Bool)

(declare-fun e!2185387 () List!37539)

(declare-fun call!254906 () List!37539)

(assert (=> b!3530161 (= e!2185387 call!254906)))

(declare-fun b!3530162 () Bool)

(declare-fun e!2185385 () List!37539)

(assert (=> b!3530162 (= e!2185385 Nil!37415)))

(declare-fun bm!254901 () Bool)

(declare-fun call!254905 () List!37539)

(assert (=> bm!254901 (= call!254905 call!254906)))

(declare-fun b!3530163 () Bool)

(declare-fun e!2185386 () List!37539)

(declare-fun call!254907 () List!37539)

(assert (=> b!3530163 (= e!2185386 call!254907)))

(declare-fun d!1030469 () Bool)

(declare-fun c!608520 () Bool)

(assert (=> d!1030469 (= c!608520 (or ((_ is EmptyExpr!10251) (regex!5492 (rule!8156 separatorToken!241))) ((_ is EmptyLang!10251) (regex!5492 (rule!8156 separatorToken!241)))))))

(assert (=> d!1030469 (= (usedCharacters!726 (regex!5492 (rule!8156 separatorToken!241))) e!2185385)))

(declare-fun call!254908 () List!37539)

(declare-fun c!608521 () Bool)

(declare-fun bm!254900 () Bool)

(assert (=> bm!254900 (= call!254907 (++!9281 (ite c!608521 call!254905 call!254908) (ite c!608521 call!254908 call!254905)))))

(declare-fun b!3530164 () Bool)

(declare-fun e!2185388 () List!37539)

(assert (=> b!3530164 (= e!2185385 e!2185388)))

(declare-fun c!608523 () Bool)

(assert (=> b!3530164 (= c!608523 ((_ is ElementMatch!10251) (regex!5492 (rule!8156 separatorToken!241))))))

(declare-fun b!3530165 () Bool)

(assert (=> b!3530165 (= e!2185387 e!2185386)))

(assert (=> b!3530165 (= c!608521 ((_ is Union!10251) (regex!5492 (rule!8156 separatorToken!241))))))

(declare-fun b!3530166 () Bool)

(assert (=> b!3530166 (= e!2185388 (Cons!37415 (c!608378 (regex!5492 (rule!8156 separatorToken!241))) Nil!37415))))

(declare-fun bm!254902 () Bool)

(declare-fun c!608522 () Bool)

(assert (=> bm!254902 (= call!254906 (usedCharacters!726 (ite c!608522 (reg!10580 (regex!5492 (rule!8156 separatorToken!241))) (ite c!608521 (regOne!21015 (regex!5492 (rule!8156 separatorToken!241))) (regTwo!21014 (regex!5492 (rule!8156 separatorToken!241)))))))))

(declare-fun b!3530167 () Bool)

(assert (=> b!3530167 (= e!2185386 call!254907)))

(declare-fun b!3530168 () Bool)

(assert (=> b!3530168 (= c!608522 ((_ is Star!10251) (regex!5492 (rule!8156 separatorToken!241))))))

(assert (=> b!3530168 (= e!2185388 e!2185387)))

(declare-fun bm!254903 () Bool)

(assert (=> bm!254903 (= call!254908 (usedCharacters!726 (ite c!608521 (regTwo!21015 (regex!5492 (rule!8156 separatorToken!241))) (regOne!21014 (regex!5492 (rule!8156 separatorToken!241))))))))

(assert (= (and d!1030469 c!608520) b!3530162))

(assert (= (and d!1030469 (not c!608520)) b!3530164))

(assert (= (and b!3530164 c!608523) b!3530166))

(assert (= (and b!3530164 (not c!608523)) b!3530168))

(assert (= (and b!3530168 c!608522) b!3530161))

(assert (= (and b!3530168 (not c!608522)) b!3530165))

(assert (= (and b!3530165 c!608521) b!3530163))

(assert (= (and b!3530165 (not c!608521)) b!3530167))

(assert (= (or b!3530163 b!3530167) bm!254903))

(assert (= (or b!3530163 b!3530167) bm!254901))

(assert (= (or b!3530163 b!3530167) bm!254900))

(assert (= (or b!3530161 bm!254901) bm!254902))

(declare-fun m!3986339 () Bool)

(assert (=> bm!254900 m!3986339))

(declare-fun m!3986341 () Bool)

(assert (=> bm!254902 m!3986341))

(declare-fun m!3986345 () Bool)

(assert (=> bm!254903 m!3986345))

(assert (=> b!3529461 d!1030469))

(declare-fun d!1030471 () Bool)

(assert (=> d!1030471 (= (apply!8946 (transformation!5492 (rule!8156 (h!42837 (t!282832 tokens!494)))) (seqFromList!4037 lt!1206922)) (dynLambda!15987 (toValue!7748 (transformation!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))) (seqFromList!4037 lt!1206922)))))

(declare-fun b_lambda!103287 () Bool)

(assert (=> (not b_lambda!103287) (not d!1030471)))

(declare-fun t!282880 () Bool)

(declare-fun tb!197543 () Bool)

(assert (=> (and b!3529485 (= (toValue!7748 (transformation!5492 (rule!8156 (h!42837 tokens!494)))) (toValue!7748 (transformation!5492 (rule!8156 (h!42837 (t!282832 tokens!494)))))) t!282880) tb!197543))

(declare-fun result!241998 () Bool)

(assert (=> tb!197543 (= result!241998 (inv!21 (dynLambda!15987 (toValue!7748 (transformation!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))) (seqFromList!4037 lt!1206922))))))

(declare-fun m!3986351 () Bool)

(assert (=> tb!197543 m!3986351))

(assert (=> d!1030471 t!282880))

(declare-fun b_and!251775 () Bool)

(assert (= b_and!251763 (and (=> t!282880 result!241998) b_and!251775)))

(declare-fun t!282882 () Bool)

(declare-fun tb!197545 () Bool)

(assert (=> (and b!3529478 (= (toValue!7748 (transformation!5492 (h!42836 rules!2135))) (toValue!7748 (transformation!5492 (rule!8156 (h!42837 (t!282832 tokens!494)))))) t!282882) tb!197545))

(declare-fun result!242000 () Bool)

(assert (= result!242000 result!241998))

(assert (=> d!1030471 t!282882))

(declare-fun b_and!251777 () Bool)

(assert (= b_and!251765 (and (=> t!282882 result!242000) b_and!251777)))

(declare-fun t!282884 () Bool)

(declare-fun tb!197547 () Bool)

(assert (=> (and b!3529460 (= (toValue!7748 (transformation!5492 (rule!8156 separatorToken!241))) (toValue!7748 (transformation!5492 (rule!8156 (h!42837 (t!282832 tokens!494)))))) t!282884) tb!197547))

(declare-fun result!242002 () Bool)

(assert (= result!242002 result!241998))

(assert (=> d!1030471 t!282884))

(declare-fun b_and!251779 () Bool)

(assert (= b_and!251767 (and (=> t!282884 result!242002) b_and!251779)))

(assert (=> d!1030471 m!3984963))

(declare-fun m!3986359 () Bool)

(assert (=> d!1030471 m!3986359))

(assert (=> b!3529461 d!1030471))

(declare-fun b!3530172 () Bool)

(declare-fun e!2185393 () Option!7648)

(assert (=> b!3530172 (= e!2185393 None!7647)))

(declare-fun b!3530173 () Bool)

(declare-fun lt!1207297 () Unit!53124)

(declare-fun lt!1207295 () Unit!53124)

(assert (=> b!3530173 (= lt!1207297 lt!1207295)))

(assert (=> b!3530173 (rulesInvariant!4478 thiss!18206 (t!282831 rules!2135))))

(assert (=> b!3530173 (= lt!1207295 (lemmaInvariantOnRulesThenOnTail!470 thiss!18206 (h!42836 rules!2135) (t!282831 rules!2135)))))

(assert (=> b!3530173 (= e!2185393 (getRuleFromTag!1135 thiss!18206 (t!282831 rules!2135) (tag!6138 (rule!8156 (h!42837 (t!282832 tokens!494))))))))

(declare-fun d!1030477 () Bool)

(declare-fun e!2185394 () Bool)

(assert (=> d!1030477 e!2185394))

(declare-fun res!1424584 () Bool)

(assert (=> d!1030477 (=> res!1424584 e!2185394)))

(declare-fun lt!1207296 () Option!7648)

(assert (=> d!1030477 (= res!1424584 (isEmpty!21908 lt!1207296))))

(declare-fun e!2185392 () Option!7648)

(assert (=> d!1030477 (= lt!1207296 e!2185392)))

(declare-fun c!608525 () Bool)

(assert (=> d!1030477 (= c!608525 (and ((_ is Cons!37416) rules!2135) (= (tag!6138 (h!42836 rules!2135)) (tag!6138 (rule!8156 (h!42837 (t!282832 tokens!494)))))))))

(assert (=> d!1030477 (rulesInvariant!4478 thiss!18206 rules!2135)))

(assert (=> d!1030477 (= (getRuleFromTag!1135 thiss!18206 rules!2135 (tag!6138 (rule!8156 (h!42837 (t!282832 tokens!494))))) lt!1207296)))

(declare-fun b!3530174 () Bool)

(declare-fun e!2185395 () Bool)

(assert (=> b!3530174 (= e!2185394 e!2185395)))

(declare-fun res!1424583 () Bool)

(assert (=> b!3530174 (=> (not res!1424583) (not e!2185395))))

(assert (=> b!3530174 (= res!1424583 (contains!7041 rules!2135 (get!12021 lt!1207296)))))

(declare-fun b!3530175 () Bool)

(assert (=> b!3530175 (= e!2185392 e!2185393)))

(declare-fun c!608524 () Bool)

(assert (=> b!3530175 (= c!608524 (and ((_ is Cons!37416) rules!2135) (not (= (tag!6138 (h!42836 rules!2135)) (tag!6138 (rule!8156 (h!42837 (t!282832 tokens!494))))))))))

(declare-fun b!3530176 () Bool)

(assert (=> b!3530176 (= e!2185395 (= (tag!6138 (get!12021 lt!1207296)) (tag!6138 (rule!8156 (h!42837 (t!282832 tokens!494))))))))

(declare-fun b!3530177 () Bool)

(assert (=> b!3530177 (= e!2185392 (Some!7647 (h!42836 rules!2135)))))

(assert (= (and d!1030477 c!608525) b!3530177))

(assert (= (and d!1030477 (not c!608525)) b!3530175))

(assert (= (and b!3530175 c!608524) b!3530173))

(assert (= (and b!3530175 (not c!608524)) b!3530172))

(assert (= (and d!1030477 (not res!1424584)) b!3530174))

(assert (= (and b!3530174 res!1424583) b!3530176))

(assert (=> b!3530173 m!3985543))

(assert (=> b!3530173 m!3985545))

(declare-fun m!3986375 () Bool)

(assert (=> b!3530173 m!3986375))

(declare-fun m!3986377 () Bool)

(assert (=> d!1030477 m!3986377))

(assert (=> d!1030477 m!3984955))

(declare-fun m!3986379 () Bool)

(assert (=> b!3530174 m!3986379))

(assert (=> b!3530174 m!3986379))

(declare-fun m!3986381 () Bool)

(assert (=> b!3530174 m!3986381))

(assert (=> b!3530176 m!3986379))

(assert (=> b!3529461 d!1030477))

(declare-fun d!1030485 () Bool)

(assert (=> d!1030485 (= (isDefined!5894 lt!1206948) (not (isEmpty!21908 lt!1206948)))))

(declare-fun bs!565896 () Bool)

(assert (= bs!565896 d!1030485))

(declare-fun m!3986383 () Bool)

(assert (=> bs!565896 m!3986383))

(assert (=> b!3529461 d!1030485))

(declare-fun d!1030487 () Bool)

(declare-fun lt!1207307 () Bool)

(assert (=> d!1030487 (= lt!1207307 (isEmpty!21909 (list!13695 (_2!21773 lt!1206921))))))

(declare-fun isEmpty!21913 (Conc!11359) Bool)

(assert (=> d!1030487 (= lt!1207307 (isEmpty!21913 (c!608379 (_2!21773 lt!1206921))))))

(assert (=> d!1030487 (= (isEmpty!21901 (_2!21773 lt!1206921)) lt!1207307)))

(declare-fun bs!565897 () Bool)

(assert (= bs!565897 d!1030487))

(declare-fun m!3986425 () Bool)

(assert (=> bs!565897 m!3986425))

(assert (=> bs!565897 m!3986425))

(declare-fun m!3986429 () Bool)

(assert (=> bs!565897 m!3986429))

(declare-fun m!3986431 () Bool)

(assert (=> bs!565897 m!3986431))

(assert (=> b!3529462 d!1030487))

(declare-fun d!1030495 () Bool)

(declare-fun lt!1207309 () Bool)

(declare-fun e!2185402 () Bool)

(assert (=> d!1030495 (= lt!1207309 e!2185402)))

(declare-fun res!1424589 () Bool)

(assert (=> d!1030495 (=> (not res!1424589) (not e!2185402))))

(assert (=> d!1030495 (= res!1424589 (= (list!13697 (_1!21773 (lex!2407 thiss!18206 rules!2135 (print!2146 thiss!18206 (singletonSeq!2588 (h!42837 tokens!494)))))) (list!13697 (singletonSeq!2588 (h!42837 tokens!494)))))))

(declare-fun e!2185403 () Bool)

(assert (=> d!1030495 (= lt!1207309 e!2185403)))

(declare-fun res!1424590 () Bool)

(assert (=> d!1030495 (=> (not res!1424590) (not e!2185403))))

(declare-fun lt!1207310 () tuple2!37278)

(assert (=> d!1030495 (= res!1424590 (= (size!28487 (_1!21773 lt!1207310)) 1))))

(assert (=> d!1030495 (= lt!1207310 (lex!2407 thiss!18206 rules!2135 (print!2146 thiss!18206 (singletonSeq!2588 (h!42837 tokens!494)))))))

(assert (=> d!1030495 (not (isEmpty!21903 rules!2135))))

(assert (=> d!1030495 (= (rulesProduceIndividualToken!2573 thiss!18206 rules!2135 (h!42837 tokens!494)) lt!1207309)))

(declare-fun b!3530187 () Bool)

(declare-fun res!1424588 () Bool)

(assert (=> b!3530187 (=> (not res!1424588) (not e!2185403))))

(assert (=> b!3530187 (= res!1424588 (= (apply!8947 (_1!21773 lt!1207310) 0) (h!42837 tokens!494)))))

(declare-fun b!3530188 () Bool)

(assert (=> b!3530188 (= e!2185403 (isEmpty!21901 (_2!21773 lt!1207310)))))

(declare-fun b!3530189 () Bool)

(assert (=> b!3530189 (= e!2185402 (isEmpty!21901 (_2!21773 (lex!2407 thiss!18206 rules!2135 (print!2146 thiss!18206 (singletonSeq!2588 (h!42837 tokens!494)))))))))

(assert (= (and d!1030495 res!1424590) b!3530187))

(assert (= (and b!3530187 res!1424588) b!3530188))

(assert (= (and d!1030495 res!1424589) b!3530189))

(assert (=> d!1030495 m!3984949))

(assert (=> d!1030495 m!3985137))

(declare-fun m!3986443 () Bool)

(assert (=> d!1030495 m!3986443))

(declare-fun m!3986445 () Bool)

(assert (=> d!1030495 m!3986445))

(declare-fun m!3986447 () Bool)

(assert (=> d!1030495 m!3986447))

(declare-fun m!3986449 () Bool)

(assert (=> d!1030495 m!3986449))

(assert (=> d!1030495 m!3985137))

(assert (=> d!1030495 m!3985137))

(assert (=> d!1030495 m!3986445))

(declare-fun m!3986451 () Bool)

(assert (=> d!1030495 m!3986451))

(declare-fun m!3986453 () Bool)

(assert (=> b!3530187 m!3986453))

(declare-fun m!3986455 () Bool)

(assert (=> b!3530188 m!3986455))

(assert (=> b!3530189 m!3985137))

(assert (=> b!3530189 m!3985137))

(assert (=> b!3530189 m!3986445))

(assert (=> b!3530189 m!3986445))

(assert (=> b!3530189 m!3986447))

(declare-fun m!3986457 () Bool)

(assert (=> b!3530189 m!3986457))

(assert (=> b!3529483 d!1030495))

(declare-fun b!3530269 () Bool)

(declare-fun res!1424621 () Bool)

(declare-fun e!2185468 () Bool)

(assert (=> b!3530269 (=> (not res!1424621) (not e!2185468))))

(declare-fun tail!5509 (List!37539) List!37539)

(assert (=> b!3530269 (= res!1424621 (isEmpty!21909 (tail!5509 lt!1206934)))))

(declare-fun b!3530270 () Bool)

(declare-fun e!2185464 () Bool)

(declare-fun derivativeStep!3079 (Regex!10251 C!20688) Regex!10251)

(assert (=> b!3530270 (= e!2185464 (matchR!4835 (derivativeStep!3079 (regex!5492 lt!1206920) (head!7409 lt!1206934)) (tail!5509 lt!1206934)))))

(declare-fun bm!254907 () Bool)

(declare-fun call!254912 () Bool)

(assert (=> bm!254907 (= call!254912 (isEmpty!21909 lt!1206934))))

(declare-fun b!3530271 () Bool)

(declare-fun e!2185466 () Bool)

(declare-fun e!2185465 () Bool)

(assert (=> b!3530271 (= e!2185466 e!2185465)))

(declare-fun c!608541 () Bool)

(assert (=> b!3530271 (= c!608541 ((_ is EmptyLang!10251) (regex!5492 lt!1206920)))))

(declare-fun b!3530272 () Bool)

(declare-fun res!1424619 () Bool)

(declare-fun e!2185463 () Bool)

(assert (=> b!3530272 (=> res!1424619 e!2185463)))

(assert (=> b!3530272 (= res!1424619 e!2185468)))

(declare-fun res!1424617 () Bool)

(assert (=> b!3530272 (=> (not res!1424617) (not e!2185468))))

(declare-fun lt!1207315 () Bool)

(assert (=> b!3530272 (= res!1424617 lt!1207315)))

(declare-fun b!3530273 () Bool)

(declare-fun res!1424618 () Bool)

(assert (=> b!3530273 (=> res!1424618 e!2185463)))

(assert (=> b!3530273 (= res!1424618 (not ((_ is ElementMatch!10251) (regex!5492 lt!1206920))))))

(assert (=> b!3530273 (= e!2185465 e!2185463)))

(declare-fun b!3530274 () Bool)

(assert (=> b!3530274 (= e!2185466 (= lt!1207315 call!254912))))

(declare-fun b!3530275 () Bool)

(declare-fun res!1424623 () Bool)

(assert (=> b!3530275 (=> (not res!1424623) (not e!2185468))))

(assert (=> b!3530275 (= res!1424623 (not call!254912))))

(declare-fun b!3530276 () Bool)

(declare-fun nullable!3526 (Regex!10251) Bool)

(assert (=> b!3530276 (= e!2185464 (nullable!3526 (regex!5492 lt!1206920)))))

(declare-fun d!1030501 () Bool)

(assert (=> d!1030501 e!2185466))

(declare-fun c!608543 () Bool)

(assert (=> d!1030501 (= c!608543 ((_ is EmptyExpr!10251) (regex!5492 lt!1206920)))))

(assert (=> d!1030501 (= lt!1207315 e!2185464)))

(declare-fun c!608542 () Bool)

(assert (=> d!1030501 (= c!608542 (isEmpty!21909 lt!1206934))))

(declare-fun validRegex!4682 (Regex!10251) Bool)

(assert (=> d!1030501 (validRegex!4682 (regex!5492 lt!1206920))))

(assert (=> d!1030501 (= (matchR!4835 (regex!5492 lt!1206920) lt!1206934) lt!1207315)))

(declare-fun b!3530277 () Bool)

(assert (=> b!3530277 (= e!2185465 (not lt!1207315))))

(declare-fun b!3530278 () Bool)

(declare-fun e!2185467 () Bool)

(assert (=> b!3530278 (= e!2185463 e!2185467)))

(declare-fun res!1424616 () Bool)

(assert (=> b!3530278 (=> (not res!1424616) (not e!2185467))))

(assert (=> b!3530278 (= res!1424616 (not lt!1207315))))

(declare-fun b!3530279 () Bool)

(declare-fun e!2185462 () Bool)

(assert (=> b!3530279 (= e!2185467 e!2185462)))

(declare-fun res!1424620 () Bool)

(assert (=> b!3530279 (=> res!1424620 e!2185462)))

(assert (=> b!3530279 (= res!1424620 call!254912)))

(declare-fun b!3530280 () Bool)

(assert (=> b!3530280 (= e!2185462 (not (= (head!7409 lt!1206934) (c!608378 (regex!5492 lt!1206920)))))))

(declare-fun b!3530281 () Bool)

(assert (=> b!3530281 (= e!2185468 (= (head!7409 lt!1206934) (c!608378 (regex!5492 lt!1206920))))))

(declare-fun b!3530282 () Bool)

(declare-fun res!1424622 () Bool)

(assert (=> b!3530282 (=> res!1424622 e!2185462)))

(assert (=> b!3530282 (= res!1424622 (not (isEmpty!21909 (tail!5509 lt!1206934))))))

(assert (= (and d!1030501 c!608542) b!3530276))

(assert (= (and d!1030501 (not c!608542)) b!3530270))

(assert (= (and d!1030501 c!608543) b!3530274))

(assert (= (and d!1030501 (not c!608543)) b!3530271))

(assert (= (and b!3530271 c!608541) b!3530277))

(assert (= (and b!3530271 (not c!608541)) b!3530273))

(assert (= (and b!3530273 (not res!1424618)) b!3530272))

(assert (= (and b!3530272 res!1424617) b!3530275))

(assert (= (and b!3530275 res!1424623) b!3530269))

(assert (= (and b!3530269 res!1424621) b!3530281))

(assert (= (and b!3530272 (not res!1424619)) b!3530278))

(assert (= (and b!3530278 res!1424616) b!3530279))

(assert (= (and b!3530279 (not res!1424620)) b!3530282))

(assert (= (and b!3530282 (not res!1424622)) b!3530280))

(assert (= (or b!3530274 b!3530275 b!3530279) bm!254907))

(declare-fun m!3986487 () Bool)

(assert (=> b!3530276 m!3986487))

(assert (=> b!3530270 m!3985007))

(assert (=> b!3530270 m!3985007))

(declare-fun m!3986489 () Bool)

(assert (=> b!3530270 m!3986489))

(declare-fun m!3986491 () Bool)

(assert (=> b!3530270 m!3986491))

(assert (=> b!3530270 m!3986489))

(assert (=> b!3530270 m!3986491))

(declare-fun m!3986493 () Bool)

(assert (=> b!3530270 m!3986493))

(assert (=> b!3530282 m!3986491))

(assert (=> b!3530282 m!3986491))

(declare-fun m!3986495 () Bool)

(assert (=> b!3530282 m!3986495))

(assert (=> b!3530281 m!3985007))

(assert (=> b!3530280 m!3985007))

(assert (=> b!3530269 m!3986491))

(assert (=> b!3530269 m!3986491))

(assert (=> b!3530269 m!3986495))

(declare-fun m!3986497 () Bool)

(assert (=> bm!254907 m!3986497))

(assert (=> d!1030501 m!3986497))

(declare-fun m!3986499 () Bool)

(assert (=> d!1030501 m!3986499))

(assert (=> b!3529463 d!1030501))

(declare-fun d!1030507 () Bool)

(assert (=> d!1030507 (= (get!12021 lt!1206950) (v!37169 lt!1206950))))

(assert (=> b!3529463 d!1030507))

(declare-fun lt!1207318 () Bool)

(declare-fun d!1030509 () Bool)

(declare-fun isEmpty!21914 (List!37541) Bool)

(assert (=> d!1030509 (= lt!1207318 (isEmpty!21914 (list!13697 (_1!21773 (lex!2407 thiss!18206 rules!2135 lt!1206947)))))))

(declare-fun isEmpty!21915 (Conc!11360) Bool)

(assert (=> d!1030509 (= lt!1207318 (isEmpty!21915 (c!608380 (_1!21773 (lex!2407 thiss!18206 rules!2135 lt!1206947)))))))

(assert (=> d!1030509 (= (isEmpty!21902 (_1!21773 (lex!2407 thiss!18206 rules!2135 lt!1206947))) lt!1207318)))

(declare-fun bs!565903 () Bool)

(assert (= bs!565903 d!1030509))

(declare-fun m!3986501 () Bool)

(assert (=> bs!565903 m!3986501))

(assert (=> bs!565903 m!3986501))

(declare-fun m!3986503 () Bool)

(assert (=> bs!565903 m!3986503))

(declare-fun m!3986505 () Bool)

(assert (=> bs!565903 m!3986505))

(assert (=> b!3529486 d!1030509))

(declare-fun b!3530309 () Bool)

(declare-fun e!2185479 () Bool)

(declare-fun lt!1207319 () tuple2!37278)

(assert (=> b!3530309 (= e!2185479 (= (list!13695 (_2!21773 lt!1207319)) (_2!21775 (lexList!1486 thiss!18206 rules!2135 (list!13695 lt!1206947)))))))

(declare-fun b!3530310 () Bool)

(declare-fun e!2185478 () Bool)

(assert (=> b!3530310 (= e!2185478 (not (isEmpty!21902 (_1!21773 lt!1207319))))))

(declare-fun b!3530311 () Bool)

(declare-fun e!2185480 () Bool)

(assert (=> b!3530311 (= e!2185480 e!2185478)))

(declare-fun res!1424625 () Bool)

(assert (=> b!3530311 (= res!1424625 (< (size!28491 (_2!21773 lt!1207319)) (size!28491 lt!1206947)))))

(assert (=> b!3530311 (=> (not res!1424625) (not e!2185478))))

(declare-fun d!1030517 () Bool)

(assert (=> d!1030517 e!2185479))

(declare-fun res!1424626 () Bool)

(assert (=> d!1030517 (=> (not res!1424626) (not e!2185479))))

(assert (=> d!1030517 (= res!1424626 e!2185480)))

(declare-fun c!608544 () Bool)

(assert (=> d!1030517 (= c!608544 (> (size!28487 (_1!21773 lt!1207319)) 0))))

(assert (=> d!1030517 (= lt!1207319 (lexTailRecV2!1094 thiss!18206 rules!2135 lt!1206947 (BalanceConc!22333 Empty!11359) lt!1206947 (BalanceConc!22335 Empty!11360)))))

(assert (=> d!1030517 (= (lex!2407 thiss!18206 rules!2135 lt!1206947) lt!1207319)))

(declare-fun b!3530312 () Bool)

(assert (=> b!3530312 (= e!2185480 (= (_2!21773 lt!1207319) lt!1206947))))

(declare-fun b!3530313 () Bool)

(declare-fun res!1424624 () Bool)

(assert (=> b!3530313 (=> (not res!1424624) (not e!2185479))))

(assert (=> b!3530313 (= res!1424624 (= (list!13697 (_1!21773 lt!1207319)) (_1!21775 (lexList!1486 thiss!18206 rules!2135 (list!13695 lt!1206947)))))))

(assert (= (and d!1030517 c!608544) b!3530311))

(assert (= (and d!1030517 (not c!608544)) b!3530312))

(assert (= (and b!3530311 res!1424625) b!3530310))

(assert (= (and d!1030517 res!1424626) b!3530313))

(assert (= (and b!3530313 res!1424624) b!3530309))

(declare-fun m!3986507 () Bool)

(assert (=> d!1030517 m!3986507))

(declare-fun m!3986509 () Bool)

(assert (=> d!1030517 m!3986509))

(declare-fun m!3986511 () Bool)

(assert (=> b!3530310 m!3986511))

(declare-fun m!3986513 () Bool)

(assert (=> b!3530309 m!3986513))

(declare-fun m!3986515 () Bool)

(assert (=> b!3530309 m!3986515))

(assert (=> b!3530309 m!3986515))

(declare-fun m!3986517 () Bool)

(assert (=> b!3530309 m!3986517))

(declare-fun m!3986519 () Bool)

(assert (=> b!3530311 m!3986519))

(declare-fun m!3986521 () Bool)

(assert (=> b!3530311 m!3986521))

(declare-fun m!3986523 () Bool)

(assert (=> b!3530313 m!3986523))

(assert (=> b!3530313 m!3986515))

(assert (=> b!3530313 m!3986515))

(assert (=> b!3530313 m!3986517))

(assert (=> b!3529486 d!1030517))

(declare-fun d!1030519 () Bool)

(assert (=> d!1030519 (= (seqFromList!4037 lt!1206917) (fromListB!1856 lt!1206917))))

(declare-fun bs!565904 () Bool)

(assert (= bs!565904 d!1030519))

(declare-fun m!3986525 () Bool)

(assert (=> bs!565904 m!3986525))

(assert (=> b!3529486 d!1030519))

(declare-fun d!1030521 () Bool)

(declare-fun res!1424631 () Bool)

(declare-fun e!2185483 () Bool)

(assert (=> d!1030521 (=> (not res!1424631) (not e!2185483))))

(assert (=> d!1030521 (= res!1424631 (not (isEmpty!21909 (originalCharacters!6206 separatorToken!241))))))

(assert (=> d!1030521 (= (inv!50656 separatorToken!241) e!2185483)))

(declare-fun b!3530318 () Bool)

(declare-fun res!1424632 () Bool)

(assert (=> b!3530318 (=> (not res!1424632) (not e!2185483))))

(declare-fun dynLambda!15988 (Int TokenValue!5722) BalanceConc!22332)

(assert (=> b!3530318 (= res!1424632 (= (originalCharacters!6206 separatorToken!241) (list!13695 (dynLambda!15988 (toChars!7607 (transformation!5492 (rule!8156 separatorToken!241))) (value!176982 separatorToken!241)))))))

(declare-fun b!3530319 () Bool)

(assert (=> b!3530319 (= e!2185483 (= (size!28485 separatorToken!241) (size!28486 (originalCharacters!6206 separatorToken!241))))))

(assert (= (and d!1030521 res!1424631) b!3530318))

(assert (= (and b!3530318 res!1424632) b!3530319))

(declare-fun b_lambda!103311 () Bool)

(assert (=> (not b_lambda!103311) (not b!3530318)))

(declare-fun tb!197569 () Bool)

(declare-fun t!282906 () Bool)

(assert (=> (and b!3529485 (= (toChars!7607 (transformation!5492 (rule!8156 (h!42837 tokens!494)))) (toChars!7607 (transformation!5492 (rule!8156 separatorToken!241)))) t!282906) tb!197569))

(declare-fun b!3530324 () Bool)

(declare-fun e!2185486 () Bool)

(declare-fun tp!1088378 () Bool)

(declare-fun inv!50659 (Conc!11359) Bool)

(assert (=> b!3530324 (= e!2185486 (and (inv!50659 (c!608379 (dynLambda!15988 (toChars!7607 (transformation!5492 (rule!8156 separatorToken!241))) (value!176982 separatorToken!241)))) tp!1088378))))

(declare-fun result!242032 () Bool)

(declare-fun inv!50660 (BalanceConc!22332) Bool)

(assert (=> tb!197569 (= result!242032 (and (inv!50660 (dynLambda!15988 (toChars!7607 (transformation!5492 (rule!8156 separatorToken!241))) (value!176982 separatorToken!241))) e!2185486))))

(assert (= tb!197569 b!3530324))

(declare-fun m!3986527 () Bool)

(assert (=> b!3530324 m!3986527))

(declare-fun m!3986529 () Bool)

(assert (=> tb!197569 m!3986529))

(assert (=> b!3530318 t!282906))

(declare-fun b_and!251789 () Bool)

(assert (= b_and!251717 (and (=> t!282906 result!242032) b_and!251789)))

(declare-fun t!282908 () Bool)

(declare-fun tb!197571 () Bool)

(assert (=> (and b!3529478 (= (toChars!7607 (transformation!5492 (h!42836 rules!2135))) (toChars!7607 (transformation!5492 (rule!8156 separatorToken!241)))) t!282908) tb!197571))

(declare-fun result!242036 () Bool)

(assert (= result!242036 result!242032))

(assert (=> b!3530318 t!282908))

(declare-fun b_and!251791 () Bool)

(assert (= b_and!251721 (and (=> t!282908 result!242036) b_and!251791)))

(declare-fun t!282910 () Bool)

(declare-fun tb!197573 () Bool)

(assert (=> (and b!3529460 (= (toChars!7607 (transformation!5492 (rule!8156 separatorToken!241))) (toChars!7607 (transformation!5492 (rule!8156 separatorToken!241)))) t!282910) tb!197573))

(declare-fun result!242038 () Bool)

(assert (= result!242038 result!242032))

(assert (=> b!3530318 t!282910))

(declare-fun b_and!251793 () Bool)

(assert (= b_and!251725 (and (=> t!282910 result!242038) b_and!251793)))

(declare-fun m!3986531 () Bool)

(assert (=> d!1030521 m!3986531))

(declare-fun m!3986533 () Bool)

(assert (=> b!3530318 m!3986533))

(assert (=> b!3530318 m!3986533))

(declare-fun m!3986535 () Bool)

(assert (=> b!3530318 m!3986535))

(declare-fun m!3986537 () Bool)

(assert (=> b!3530319 m!3986537))

(assert (=> start!328094 d!1030521))

(declare-fun d!1030523 () Bool)

(assert (=> d!1030523 (= (inv!50652 (tag!6138 (rule!8156 separatorToken!241))) (= (mod (str.len (value!176981 (tag!6138 (rule!8156 separatorToken!241)))) 2) 0))))

(assert (=> b!3529464 d!1030523))

(declare-fun d!1030525 () Bool)

(declare-fun res!1424635 () Bool)

(declare-fun e!2185489 () Bool)

(assert (=> d!1030525 (=> (not res!1424635) (not e!2185489))))

(declare-fun semiInverseModEq!2321 (Int Int) Bool)

(assert (=> d!1030525 (= res!1424635 (semiInverseModEq!2321 (toChars!7607 (transformation!5492 (rule!8156 separatorToken!241))) (toValue!7748 (transformation!5492 (rule!8156 separatorToken!241)))))))

(assert (=> d!1030525 (= (inv!50655 (transformation!5492 (rule!8156 separatorToken!241))) e!2185489)))

(declare-fun b!3530327 () Bool)

(declare-fun equivClasses!2220 (Int Int) Bool)

(assert (=> b!3530327 (= e!2185489 (equivClasses!2220 (toChars!7607 (transformation!5492 (rule!8156 separatorToken!241))) (toValue!7748 (transformation!5492 (rule!8156 separatorToken!241)))))))

(assert (= (and d!1030525 res!1424635) b!3530327))

(declare-fun m!3986539 () Bool)

(assert (=> d!1030525 m!3986539))

(declare-fun m!3986541 () Bool)

(assert (=> b!3530327 m!3986541))

(assert (=> b!3529464 d!1030525))

(declare-fun d!1030527 () Bool)

(declare-fun lt!1207320 () Bool)

(assert (=> d!1030527 (= lt!1207320 (select (content!5283 rules!2135) (rule!8156 (h!42837 (t!282832 tokens!494)))))))

(declare-fun e!2185490 () Bool)

(assert (=> d!1030527 (= lt!1207320 e!2185490)))

(declare-fun res!1424637 () Bool)

(assert (=> d!1030527 (=> (not res!1424637) (not e!2185490))))

(assert (=> d!1030527 (= res!1424637 ((_ is Cons!37416) rules!2135))))

(assert (=> d!1030527 (= (contains!7041 rules!2135 (rule!8156 (h!42837 (t!282832 tokens!494)))) lt!1207320)))

(declare-fun b!3530328 () Bool)

(declare-fun e!2185491 () Bool)

(assert (=> b!3530328 (= e!2185490 e!2185491)))

(declare-fun res!1424636 () Bool)

(assert (=> b!3530328 (=> res!1424636 e!2185491)))

(assert (=> b!3530328 (= res!1424636 (= (h!42836 rules!2135) (rule!8156 (h!42837 (t!282832 tokens!494)))))))

(declare-fun b!3530329 () Bool)

(assert (=> b!3530329 (= e!2185491 (contains!7041 (t!282831 rules!2135) (rule!8156 (h!42837 (t!282832 tokens!494)))))))

(assert (= (and d!1030527 res!1424637) b!3530328))

(assert (= (and b!3530328 (not res!1424636)) b!3530329))

(assert (=> d!1030527 m!3986331))

(declare-fun m!3986543 () Bool)

(assert (=> d!1030527 m!3986543))

(declare-fun m!3986545 () Bool)

(assert (=> b!3530329 m!3986545))

(assert (=> b!3529487 d!1030527))

(declare-fun b!3530340 () Bool)

(declare-fun e!2185499 () Bool)

(declare-fun inv!17 (TokenValue!5722) Bool)

(assert (=> b!3530340 (= e!2185499 (inv!17 (value!176982 (h!42837 tokens!494))))))

(declare-fun d!1030529 () Bool)

(declare-fun c!608549 () Bool)

(assert (=> d!1030529 (= c!608549 ((_ is IntegerValue!17166) (value!176982 (h!42837 tokens!494))))))

(declare-fun e!2185498 () Bool)

(assert (=> d!1030529 (= (inv!21 (value!176982 (h!42837 tokens!494))) e!2185498)))

(declare-fun b!3530341 () Bool)

(assert (=> b!3530341 (= e!2185498 e!2185499)))

(declare-fun c!608550 () Bool)

(assert (=> b!3530341 (= c!608550 ((_ is IntegerValue!17167) (value!176982 (h!42837 tokens!494))))))

(declare-fun b!3530342 () Bool)

(declare-fun res!1424640 () Bool)

(declare-fun e!2185500 () Bool)

(assert (=> b!3530342 (=> res!1424640 e!2185500)))

(assert (=> b!3530342 (= res!1424640 (not ((_ is IntegerValue!17168) (value!176982 (h!42837 tokens!494)))))))

(assert (=> b!3530342 (= e!2185499 e!2185500)))

(declare-fun b!3530343 () Bool)

(declare-fun inv!16 (TokenValue!5722) Bool)

(assert (=> b!3530343 (= e!2185498 (inv!16 (value!176982 (h!42837 tokens!494))))))

(declare-fun b!3530344 () Bool)

(declare-fun inv!15 (TokenValue!5722) Bool)

(assert (=> b!3530344 (= e!2185500 (inv!15 (value!176982 (h!42837 tokens!494))))))

(assert (= (and d!1030529 c!608549) b!3530343))

(assert (= (and d!1030529 (not c!608549)) b!3530341))

(assert (= (and b!3530341 c!608550) b!3530340))

(assert (= (and b!3530341 (not c!608550)) b!3530342))

(assert (= (and b!3530342 (not res!1424640)) b!3530344))

(declare-fun m!3986547 () Bool)

(assert (=> b!3530340 m!3986547))

(declare-fun m!3986549 () Bool)

(assert (=> b!3530343 m!3986549))

(declare-fun m!3986551 () Bool)

(assert (=> b!3530344 m!3986551))

(assert (=> b!3529489 d!1030529))

(declare-fun d!1030531 () Bool)

(assert (=> d!1030531 (not (matchR!4835 (regex!5492 (rule!8156 (h!42837 (t!282832 tokens!494)))) lt!1206922))))

(declare-fun lt!1207323 () Unit!53124)

(declare-fun choose!20528 (Regex!10251 List!37539 C!20688) Unit!53124)

(assert (=> d!1030531 (= lt!1207323 (choose!20528 (regex!5492 (rule!8156 (h!42837 (t!282832 tokens!494)))) lt!1206922 lt!1206923))))

(assert (=> d!1030531 (validRegex!4682 (regex!5492 (rule!8156 (h!42837 (t!282832 tokens!494)))))))

(assert (=> d!1030531 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!550 (regex!5492 (rule!8156 (h!42837 (t!282832 tokens!494)))) lt!1206922 lt!1206923) lt!1207323)))

(declare-fun bs!565905 () Bool)

(assert (= bs!565905 d!1030531))

(assert (=> bs!565905 m!3985053))

(declare-fun m!3986553 () Bool)

(assert (=> bs!565905 m!3986553))

(declare-fun m!3986555 () Bool)

(assert (=> bs!565905 m!3986555))

(assert (=> b!3529467 d!1030531))

(declare-fun b!3530345 () Bool)

(declare-fun res!1424646 () Bool)

(declare-fun e!2185507 () Bool)

(assert (=> b!3530345 (=> (not res!1424646) (not e!2185507))))

(assert (=> b!3530345 (= res!1424646 (isEmpty!21909 (tail!5509 lt!1206922)))))

(declare-fun b!3530346 () Bool)

(declare-fun e!2185503 () Bool)

(assert (=> b!3530346 (= e!2185503 (matchR!4835 (derivativeStep!3079 (regex!5492 (rule!8156 (h!42837 (t!282832 tokens!494)))) (head!7409 lt!1206922)) (tail!5509 lt!1206922)))))

(declare-fun bm!254908 () Bool)

(declare-fun call!254913 () Bool)

(assert (=> bm!254908 (= call!254913 (isEmpty!21909 lt!1206922))))

(declare-fun b!3530347 () Bool)

(declare-fun e!2185505 () Bool)

(declare-fun e!2185504 () Bool)

(assert (=> b!3530347 (= e!2185505 e!2185504)))

(declare-fun c!608552 () Bool)

(assert (=> b!3530347 (= c!608552 ((_ is EmptyLang!10251) (regex!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))))))

(declare-fun b!3530348 () Bool)

(declare-fun res!1424644 () Bool)

(declare-fun e!2185502 () Bool)

(assert (=> b!3530348 (=> res!1424644 e!2185502)))

(assert (=> b!3530348 (= res!1424644 e!2185507)))

(declare-fun res!1424642 () Bool)

(assert (=> b!3530348 (=> (not res!1424642) (not e!2185507))))

(declare-fun lt!1207324 () Bool)

(assert (=> b!3530348 (= res!1424642 lt!1207324)))

(declare-fun b!3530349 () Bool)

(declare-fun res!1424643 () Bool)

(assert (=> b!3530349 (=> res!1424643 e!2185502)))

(assert (=> b!3530349 (= res!1424643 (not ((_ is ElementMatch!10251) (regex!5492 (rule!8156 (h!42837 (t!282832 tokens!494)))))))))

(assert (=> b!3530349 (= e!2185504 e!2185502)))

(declare-fun b!3530350 () Bool)

(assert (=> b!3530350 (= e!2185505 (= lt!1207324 call!254913))))

(declare-fun b!3530351 () Bool)

(declare-fun res!1424648 () Bool)

(assert (=> b!3530351 (=> (not res!1424648) (not e!2185507))))

(assert (=> b!3530351 (= res!1424648 (not call!254913))))

(declare-fun b!3530352 () Bool)

(assert (=> b!3530352 (= e!2185503 (nullable!3526 (regex!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))))))

(declare-fun d!1030533 () Bool)

(assert (=> d!1030533 e!2185505))

(declare-fun c!608554 () Bool)

(assert (=> d!1030533 (= c!608554 ((_ is EmptyExpr!10251) (regex!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))))))

(assert (=> d!1030533 (= lt!1207324 e!2185503)))

(declare-fun c!608553 () Bool)

(assert (=> d!1030533 (= c!608553 (isEmpty!21909 lt!1206922))))

(assert (=> d!1030533 (validRegex!4682 (regex!5492 (rule!8156 (h!42837 (t!282832 tokens!494)))))))

(assert (=> d!1030533 (= (matchR!4835 (regex!5492 (rule!8156 (h!42837 (t!282832 tokens!494)))) lt!1206922) lt!1207324)))

(declare-fun b!3530353 () Bool)

(assert (=> b!3530353 (= e!2185504 (not lt!1207324))))

(declare-fun b!3530354 () Bool)

(declare-fun e!2185506 () Bool)

(assert (=> b!3530354 (= e!2185502 e!2185506)))

(declare-fun res!1424641 () Bool)

(assert (=> b!3530354 (=> (not res!1424641) (not e!2185506))))

(assert (=> b!3530354 (= res!1424641 (not lt!1207324))))

(declare-fun b!3530355 () Bool)

(declare-fun e!2185501 () Bool)

(assert (=> b!3530355 (= e!2185506 e!2185501)))

(declare-fun res!1424645 () Bool)

(assert (=> b!3530355 (=> res!1424645 e!2185501)))

(assert (=> b!3530355 (= res!1424645 call!254913)))

(declare-fun b!3530356 () Bool)

(assert (=> b!3530356 (= e!2185501 (not (= (head!7409 lt!1206922) (c!608378 (regex!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))))))))

(declare-fun b!3530357 () Bool)

(assert (=> b!3530357 (= e!2185507 (= (head!7409 lt!1206922) (c!608378 (regex!5492 (rule!8156 (h!42837 (t!282832 tokens!494)))))))))

(declare-fun b!3530358 () Bool)

(declare-fun res!1424647 () Bool)

(assert (=> b!3530358 (=> res!1424647 e!2185501)))

(assert (=> b!3530358 (= res!1424647 (not (isEmpty!21909 (tail!5509 lt!1206922))))))

(assert (= (and d!1030533 c!608553) b!3530352))

(assert (= (and d!1030533 (not c!608553)) b!3530346))

(assert (= (and d!1030533 c!608554) b!3530350))

(assert (= (and d!1030533 (not c!608554)) b!3530347))

(assert (= (and b!3530347 c!608552) b!3530353))

(assert (= (and b!3530347 (not c!608552)) b!3530349))

(assert (= (and b!3530349 (not res!1424643)) b!3530348))

(assert (= (and b!3530348 res!1424642) b!3530351))

(assert (= (and b!3530351 res!1424648) b!3530345))

(assert (= (and b!3530345 res!1424646) b!3530357))

(assert (= (and b!3530348 (not res!1424644)) b!3530354))

(assert (= (and b!3530354 res!1424641) b!3530355))

(assert (= (and b!3530355 (not res!1424645)) b!3530358))

(assert (= (and b!3530358 (not res!1424647)) b!3530356))

(assert (= (or b!3530350 b!3530351 b!3530355) bm!254908))

(declare-fun m!3986557 () Bool)

(assert (=> b!3530352 m!3986557))

(assert (=> b!3530346 m!3984981))

(assert (=> b!3530346 m!3984981))

(declare-fun m!3986559 () Bool)

(assert (=> b!3530346 m!3986559))

(declare-fun m!3986561 () Bool)

(assert (=> b!3530346 m!3986561))

(assert (=> b!3530346 m!3986559))

(assert (=> b!3530346 m!3986561))

(declare-fun m!3986563 () Bool)

(assert (=> b!3530346 m!3986563))

(assert (=> b!3530358 m!3986561))

(assert (=> b!3530358 m!3986561))

(declare-fun m!3986565 () Bool)

(assert (=> b!3530358 m!3986565))

(assert (=> b!3530357 m!3984981))

(assert (=> b!3530356 m!3984981))

(assert (=> b!3530345 m!3986561))

(assert (=> b!3530345 m!3986561))

(assert (=> b!3530345 m!3986565))

(declare-fun m!3986567 () Bool)

(assert (=> bm!254908 m!3986567))

(assert (=> d!1030533 m!3986567))

(assert (=> d!1030533 m!3986555))

(assert (=> b!3529467 d!1030533))

(declare-fun d!1030535 () Bool)

(declare-fun c!608557 () Bool)

(assert (=> d!1030535 (= c!608557 ((_ is Cons!37417) tokens!494))))

(declare-fun e!2185510 () List!37539)

(assert (=> d!1030535 (= (printWithSeparatorTokenList!368 thiss!18206 tokens!494 separatorToken!241) e!2185510)))

(declare-fun b!3530363 () Bool)

(assert (=> b!3530363 (= e!2185510 (++!9281 (++!9281 (list!13695 (charsOf!3506 (h!42837 tokens!494))) (list!13695 (charsOf!3506 separatorToken!241))) (printWithSeparatorTokenList!368 thiss!18206 (t!282832 tokens!494) separatorToken!241)))))

(declare-fun b!3530364 () Bool)

(assert (=> b!3530364 (= e!2185510 Nil!37415)))

(assert (= (and d!1030535 c!608557) b!3530363))

(assert (= (and d!1030535 (not c!608557)) b!3530364))

(assert (=> b!3530363 m!3985065))

(assert (=> b!3530363 m!3985069))

(declare-fun m!3986569 () Bool)

(assert (=> b!3530363 m!3986569))

(assert (=> b!3530363 m!3985069))

(declare-fun m!3986571 () Bool)

(assert (=> b!3530363 m!3986571))

(assert (=> b!3530363 m!3985085))

(assert (=> b!3530363 m!3985085))

(assert (=> b!3530363 m!3985087))

(assert (=> b!3530363 m!3985065))

(assert (=> b!3530363 m!3985077))

(assert (=> b!3530363 m!3985087))

(assert (=> b!3530363 m!3985077))

(assert (=> b!3530363 m!3986569))

(assert (=> b!3529490 d!1030535))

(declare-fun b!3530373 () Bool)

(declare-fun e!2185515 () List!37539)

(assert (=> b!3530373 (= e!2185515 (printWithSeparatorTokenList!368 thiss!18206 (t!282832 (t!282832 tokens!494)) separatorToken!241))))

(declare-fun b!3530375 () Bool)

(declare-fun res!1424653 () Bool)

(declare-fun e!2185516 () Bool)

(assert (=> b!3530375 (=> (not res!1424653) (not e!2185516))))

(declare-fun lt!1207327 () List!37539)

(assert (=> b!3530375 (= res!1424653 (= (size!28486 lt!1207327) (+ (size!28486 (++!9281 lt!1206922 lt!1206934)) (size!28486 (printWithSeparatorTokenList!368 thiss!18206 (t!282832 (t!282832 tokens!494)) separatorToken!241)))))))

(declare-fun b!3530376 () Bool)

(assert (=> b!3530376 (= e!2185516 (or (not (= (printWithSeparatorTokenList!368 thiss!18206 (t!282832 (t!282832 tokens!494)) separatorToken!241) Nil!37415)) (= lt!1207327 (++!9281 lt!1206922 lt!1206934))))))

(declare-fun d!1030537 () Bool)

(assert (=> d!1030537 e!2185516))

(declare-fun res!1424654 () Bool)

(assert (=> d!1030537 (=> (not res!1424654) (not e!2185516))))

(assert (=> d!1030537 (= res!1424654 (= (content!5281 lt!1207327) ((_ map or) (content!5281 (++!9281 lt!1206922 lt!1206934)) (content!5281 (printWithSeparatorTokenList!368 thiss!18206 (t!282832 (t!282832 tokens!494)) separatorToken!241)))))))

(assert (=> d!1030537 (= lt!1207327 e!2185515)))

(declare-fun c!608560 () Bool)

(assert (=> d!1030537 (= c!608560 ((_ is Nil!37415) (++!9281 lt!1206922 lt!1206934)))))

(assert (=> d!1030537 (= (++!9281 (++!9281 lt!1206922 lt!1206934) (printWithSeparatorTokenList!368 thiss!18206 (t!282832 (t!282832 tokens!494)) separatorToken!241)) lt!1207327)))

(declare-fun b!3530374 () Bool)

(assert (=> b!3530374 (= e!2185515 (Cons!37415 (h!42835 (++!9281 lt!1206922 lt!1206934)) (++!9281 (t!282830 (++!9281 lt!1206922 lt!1206934)) (printWithSeparatorTokenList!368 thiss!18206 (t!282832 (t!282832 tokens!494)) separatorToken!241))))))

(assert (= (and d!1030537 c!608560) b!3530373))

(assert (= (and d!1030537 (not c!608560)) b!3530374))

(assert (= (and d!1030537 res!1424654) b!3530375))

(assert (= (and b!3530375 res!1424653) b!3530376))

(declare-fun m!3986573 () Bool)

(assert (=> b!3530375 m!3986573))

(assert (=> b!3530375 m!3985071))

(declare-fun m!3986575 () Bool)

(assert (=> b!3530375 m!3986575))

(assert (=> b!3530375 m!3985073))

(declare-fun m!3986577 () Bool)

(assert (=> b!3530375 m!3986577))

(declare-fun m!3986579 () Bool)

(assert (=> d!1030537 m!3986579))

(assert (=> d!1030537 m!3985071))

(declare-fun m!3986581 () Bool)

(assert (=> d!1030537 m!3986581))

(assert (=> d!1030537 m!3985073))

(declare-fun m!3986583 () Bool)

(assert (=> d!1030537 m!3986583))

(assert (=> b!3530374 m!3985073))

(declare-fun m!3986585 () Bool)

(assert (=> b!3530374 m!3986585))

(assert (=> b!3529490 d!1030537))

(declare-fun d!1030539 () Bool)

(declare-fun lt!1207330 () BalanceConc!22332)

(assert (=> d!1030539 (= (list!13695 lt!1207330) (originalCharacters!6206 separatorToken!241))))

(assert (=> d!1030539 (= lt!1207330 (dynLambda!15988 (toChars!7607 (transformation!5492 (rule!8156 separatorToken!241))) (value!176982 separatorToken!241)))))

(assert (=> d!1030539 (= (charsOf!3506 separatorToken!241) lt!1207330)))

(declare-fun b_lambda!103313 () Bool)

(assert (=> (not b_lambda!103313) (not d!1030539)))

(assert (=> d!1030539 t!282906))

(declare-fun b_and!251795 () Bool)

(assert (= b_and!251789 (and (=> t!282906 result!242032) b_and!251795)))

(assert (=> d!1030539 t!282908))

(declare-fun b_and!251797 () Bool)

(assert (= b_and!251791 (and (=> t!282908 result!242036) b_and!251797)))

(assert (=> d!1030539 t!282910))

(declare-fun b_and!251799 () Bool)

(assert (= b_and!251793 (and (=> t!282910 result!242038) b_and!251799)))

(declare-fun m!3986587 () Bool)

(assert (=> d!1030539 m!3986587))

(assert (=> d!1030539 m!3986533))

(assert (=> b!3529490 d!1030539))

(declare-fun d!1030541 () Bool)

(assert (=> d!1030541 (= (list!13695 (charsOf!3506 (h!42837 (t!282832 tokens!494)))) (list!13698 (c!608379 (charsOf!3506 (h!42837 (t!282832 tokens!494))))))))

(declare-fun bs!565906 () Bool)

(assert (= bs!565906 d!1030541))

(declare-fun m!3986589 () Bool)

(assert (=> bs!565906 m!3986589))

(assert (=> b!3529490 d!1030541))

(declare-fun b!3530377 () Bool)

(declare-fun e!2185517 () List!37539)

(assert (=> b!3530377 (= e!2185517 lt!1206934)))

(declare-fun b!3530379 () Bool)

(declare-fun res!1424655 () Bool)

(declare-fun e!2185518 () Bool)

(assert (=> b!3530379 (=> (not res!1424655) (not e!2185518))))

(declare-fun lt!1207331 () List!37539)

(assert (=> b!3530379 (= res!1424655 (= (size!28486 lt!1207331) (+ (size!28486 lt!1206922) (size!28486 lt!1206934))))))

(declare-fun b!3530380 () Bool)

(assert (=> b!3530380 (= e!2185518 (or (not (= lt!1206934 Nil!37415)) (= lt!1207331 lt!1206922)))))

(declare-fun d!1030543 () Bool)

(assert (=> d!1030543 e!2185518))

(declare-fun res!1424656 () Bool)

(assert (=> d!1030543 (=> (not res!1424656) (not e!2185518))))

(assert (=> d!1030543 (= res!1424656 (= (content!5281 lt!1207331) ((_ map or) (content!5281 lt!1206922) (content!5281 lt!1206934))))))

(assert (=> d!1030543 (= lt!1207331 e!2185517)))

(declare-fun c!608561 () Bool)

(assert (=> d!1030543 (= c!608561 ((_ is Nil!37415) lt!1206922))))

(assert (=> d!1030543 (= (++!9281 lt!1206922 lt!1206934) lt!1207331)))

(declare-fun b!3530378 () Bool)

(assert (=> b!3530378 (= e!2185517 (Cons!37415 (h!42835 lt!1206922) (++!9281 (t!282830 lt!1206922) lt!1206934)))))

(assert (= (and d!1030543 c!608561) b!3530377))

(assert (= (and d!1030543 (not c!608561)) b!3530378))

(assert (= (and d!1030543 res!1424656) b!3530379))

(assert (= (and b!3530379 res!1424655) b!3530380))

(declare-fun m!3986591 () Bool)

(assert (=> b!3530379 m!3986591))

(assert (=> b!3530379 m!3985031))

(declare-fun m!3986593 () Bool)

(assert (=> b!3530379 m!3986593))

(declare-fun m!3986595 () Bool)

(assert (=> d!1030543 m!3986595))

(declare-fun m!3986597 () Bool)

(assert (=> d!1030543 m!3986597))

(declare-fun m!3986599 () Bool)

(assert (=> d!1030543 m!3986599))

(declare-fun m!3986601 () Bool)

(assert (=> b!3530378 m!3986601))

(assert (=> b!3529490 d!1030543))

(declare-fun b!3530381 () Bool)

(declare-fun e!2185519 () List!37539)

(assert (=> b!3530381 (= e!2185519 lt!1206961)))

(declare-fun b!3530383 () Bool)

(declare-fun res!1424657 () Bool)

(declare-fun e!2185520 () Bool)

(assert (=> b!3530383 (=> (not res!1424657) (not e!2185520))))

(declare-fun lt!1207332 () List!37539)

(assert (=> b!3530383 (= res!1424657 (= (size!28486 lt!1207332) (+ (size!28486 lt!1206934) (size!28486 lt!1206961))))))

(declare-fun b!3530384 () Bool)

(assert (=> b!3530384 (= e!2185520 (or (not (= lt!1206961 Nil!37415)) (= lt!1207332 lt!1206934)))))

(declare-fun d!1030545 () Bool)

(assert (=> d!1030545 e!2185520))

(declare-fun res!1424658 () Bool)

(assert (=> d!1030545 (=> (not res!1424658) (not e!2185520))))

(assert (=> d!1030545 (= res!1424658 (= (content!5281 lt!1207332) ((_ map or) (content!5281 lt!1206934) (content!5281 lt!1206961))))))

(assert (=> d!1030545 (= lt!1207332 e!2185519)))

(declare-fun c!608562 () Bool)

(assert (=> d!1030545 (= c!608562 ((_ is Nil!37415) lt!1206934))))

(assert (=> d!1030545 (= (++!9281 lt!1206934 lt!1206961) lt!1207332)))

(declare-fun b!3530382 () Bool)

(assert (=> b!3530382 (= e!2185519 (Cons!37415 (h!42835 lt!1206934) (++!9281 (t!282830 lt!1206934) lt!1206961)))))

(assert (= (and d!1030545 c!608562) b!3530381))

(assert (= (and d!1030545 (not c!608562)) b!3530382))

(assert (= (and d!1030545 res!1424658) b!3530383))

(assert (= (and b!3530383 res!1424657) b!3530384))

(declare-fun m!3986603 () Bool)

(assert (=> b!3530383 m!3986603))

(assert (=> b!3530383 m!3986593))

(declare-fun m!3986605 () Bool)

(assert (=> b!3530383 m!3986605))

(declare-fun m!3986607 () Bool)

(assert (=> d!1030545 m!3986607))

(assert (=> d!1030545 m!3986599))

(declare-fun m!3986609 () Bool)

(assert (=> d!1030545 m!3986609))

(declare-fun m!3986611 () Bool)

(assert (=> b!3530382 m!3986611))

(assert (=> b!3529490 d!1030545))

(declare-fun d!1030547 () Bool)

(declare-fun c!608563 () Bool)

(assert (=> d!1030547 (= c!608563 ((_ is Cons!37417) (t!282832 (t!282832 tokens!494))))))

(declare-fun e!2185521 () List!37539)

(assert (=> d!1030547 (= (printWithSeparatorTokenList!368 thiss!18206 (t!282832 (t!282832 tokens!494)) separatorToken!241) e!2185521)))

(declare-fun b!3530385 () Bool)

(assert (=> b!3530385 (= e!2185521 (++!9281 (++!9281 (list!13695 (charsOf!3506 (h!42837 (t!282832 (t!282832 tokens!494))))) (list!13695 (charsOf!3506 separatorToken!241))) (printWithSeparatorTokenList!368 thiss!18206 (t!282832 (t!282832 (t!282832 tokens!494))) separatorToken!241)))))

(declare-fun b!3530386 () Bool)

(assert (=> b!3530386 (= e!2185521 Nil!37415)))

(assert (= (and d!1030547 c!608563) b!3530385))

(assert (= (and d!1030547 (not c!608563)) b!3530386))

(assert (=> b!3530385 m!3985065))

(declare-fun m!3986613 () Bool)

(assert (=> b!3530385 m!3986613))

(declare-fun m!3986615 () Bool)

(assert (=> b!3530385 m!3986615))

(assert (=> b!3530385 m!3986613))

(declare-fun m!3986617 () Bool)

(assert (=> b!3530385 m!3986617))

(declare-fun m!3986619 () Bool)

(assert (=> b!3530385 m!3986619))

(assert (=> b!3530385 m!3986619))

(declare-fun m!3986621 () Bool)

(assert (=> b!3530385 m!3986621))

(assert (=> b!3530385 m!3985065))

(assert (=> b!3530385 m!3985077))

(assert (=> b!3530385 m!3986621))

(assert (=> b!3530385 m!3985077))

(assert (=> b!3530385 m!3986615))

(assert (=> b!3529490 d!1030547))

(declare-fun d!1030549 () Bool)

(declare-fun c!608564 () Bool)

(assert (=> d!1030549 (= c!608564 ((_ is Cons!37417) (t!282832 tokens!494)))))

(declare-fun e!2185522 () List!37539)

(assert (=> d!1030549 (= (printWithSeparatorTokenList!368 thiss!18206 (t!282832 tokens!494) separatorToken!241) e!2185522)))

(declare-fun b!3530387 () Bool)

(assert (=> b!3530387 (= e!2185522 (++!9281 (++!9281 (list!13695 (charsOf!3506 (h!42837 (t!282832 tokens!494)))) (list!13695 (charsOf!3506 separatorToken!241))) (printWithSeparatorTokenList!368 thiss!18206 (t!282832 (t!282832 tokens!494)) separatorToken!241)))))

(declare-fun b!3530388 () Bool)

(assert (=> b!3530388 (= e!2185522 Nil!37415)))

(assert (= (and d!1030549 c!608564) b!3530387))

(assert (= (and d!1030549 (not c!608564)) b!3530388))

(assert (=> b!3530387 m!3985065))

(assert (=> b!3530387 m!3985073))

(declare-fun m!3986623 () Bool)

(assert (=> b!3530387 m!3986623))

(assert (=> b!3530387 m!3985073))

(declare-fun m!3986625 () Bool)

(assert (=> b!3530387 m!3986625))

(assert (=> b!3530387 m!3985063))

(assert (=> b!3530387 m!3985063))

(assert (=> b!3530387 m!3985081))

(assert (=> b!3530387 m!3985065))

(assert (=> b!3530387 m!3985077))

(assert (=> b!3530387 m!3985081))

(assert (=> b!3530387 m!3985077))

(assert (=> b!3530387 m!3986623))

(assert (=> b!3529490 d!1030549))

(declare-fun d!1030551 () Bool)

(assert (=> d!1030551 (= (list!13695 (charsOf!3506 separatorToken!241)) (list!13698 (c!608379 (charsOf!3506 separatorToken!241))))))

(declare-fun bs!565907 () Bool)

(assert (= bs!565907 d!1030551))

(declare-fun m!3986627 () Bool)

(assert (=> bs!565907 m!3986627))

(assert (=> b!3529490 d!1030551))

(declare-fun d!1030553 () Bool)

(declare-fun lt!1207333 () BalanceConc!22332)

(assert (=> d!1030553 (= (list!13695 lt!1207333) (originalCharacters!6206 (h!42837 (t!282832 tokens!494))))))

(assert (=> d!1030553 (= lt!1207333 (dynLambda!15988 (toChars!7607 (transformation!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))) (value!176982 (h!42837 (t!282832 tokens!494)))))))

(assert (=> d!1030553 (= (charsOf!3506 (h!42837 (t!282832 tokens!494))) lt!1207333)))

(declare-fun b_lambda!103315 () Bool)

(assert (=> (not b_lambda!103315) (not d!1030553)))

(declare-fun t!282912 () Bool)

(declare-fun tb!197575 () Bool)

(assert (=> (and b!3529485 (= (toChars!7607 (transformation!5492 (rule!8156 (h!42837 tokens!494)))) (toChars!7607 (transformation!5492 (rule!8156 (h!42837 (t!282832 tokens!494)))))) t!282912) tb!197575))

(declare-fun b!3530389 () Bool)

(declare-fun e!2185523 () Bool)

(declare-fun tp!1088379 () Bool)

(assert (=> b!3530389 (= e!2185523 (and (inv!50659 (c!608379 (dynLambda!15988 (toChars!7607 (transformation!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))) (value!176982 (h!42837 (t!282832 tokens!494)))))) tp!1088379))))

(declare-fun result!242040 () Bool)

(assert (=> tb!197575 (= result!242040 (and (inv!50660 (dynLambda!15988 (toChars!7607 (transformation!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))) (value!176982 (h!42837 (t!282832 tokens!494))))) e!2185523))))

(assert (= tb!197575 b!3530389))

(declare-fun m!3986629 () Bool)

(assert (=> b!3530389 m!3986629))

(declare-fun m!3986631 () Bool)

(assert (=> tb!197575 m!3986631))

(assert (=> d!1030553 t!282912))

(declare-fun b_and!251801 () Bool)

(assert (= b_and!251795 (and (=> t!282912 result!242040) b_and!251801)))

(declare-fun tb!197577 () Bool)

(declare-fun t!282914 () Bool)

(assert (=> (and b!3529478 (= (toChars!7607 (transformation!5492 (h!42836 rules!2135))) (toChars!7607 (transformation!5492 (rule!8156 (h!42837 (t!282832 tokens!494)))))) t!282914) tb!197577))

(declare-fun result!242042 () Bool)

(assert (= result!242042 result!242040))

(assert (=> d!1030553 t!282914))

(declare-fun b_and!251803 () Bool)

(assert (= b_and!251797 (and (=> t!282914 result!242042) b_and!251803)))

(declare-fun t!282916 () Bool)

(declare-fun tb!197579 () Bool)

(assert (=> (and b!3529460 (= (toChars!7607 (transformation!5492 (rule!8156 separatorToken!241))) (toChars!7607 (transformation!5492 (rule!8156 (h!42837 (t!282832 tokens!494)))))) t!282916) tb!197579))

(declare-fun result!242044 () Bool)

(assert (= result!242044 result!242040))

(assert (=> d!1030553 t!282916))

(declare-fun b_and!251805 () Bool)

(assert (= b_and!251799 (and (=> t!282916 result!242044) b_and!251805)))

(declare-fun m!3986633 () Bool)

(assert (=> d!1030553 m!3986633))

(declare-fun m!3986635 () Bool)

(assert (=> d!1030553 m!3986635))

(assert (=> b!3529490 d!1030553))

(declare-fun b!3530390 () Bool)

(declare-fun res!1424664 () Bool)

(declare-fun e!2185530 () Bool)

(assert (=> b!3530390 (=> (not res!1424664) (not e!2185530))))

(assert (=> b!3530390 (= res!1424664 (isEmpty!21909 (tail!5509 lt!1206917)))))

(declare-fun b!3530391 () Bool)

(declare-fun e!2185526 () Bool)

(assert (=> b!3530391 (= e!2185526 (matchR!4835 (derivativeStep!3079 (regex!5492 lt!1206942) (head!7409 lt!1206917)) (tail!5509 lt!1206917)))))

(declare-fun bm!254909 () Bool)

(declare-fun call!254914 () Bool)

(assert (=> bm!254909 (= call!254914 (isEmpty!21909 lt!1206917))))

(declare-fun b!3530392 () Bool)

(declare-fun e!2185528 () Bool)

(declare-fun e!2185527 () Bool)

(assert (=> b!3530392 (= e!2185528 e!2185527)))

(declare-fun c!608565 () Bool)

(assert (=> b!3530392 (= c!608565 ((_ is EmptyLang!10251) (regex!5492 lt!1206942)))))

(declare-fun b!3530393 () Bool)

(declare-fun res!1424662 () Bool)

(declare-fun e!2185525 () Bool)

(assert (=> b!3530393 (=> res!1424662 e!2185525)))

(assert (=> b!3530393 (= res!1424662 e!2185530)))

(declare-fun res!1424660 () Bool)

(assert (=> b!3530393 (=> (not res!1424660) (not e!2185530))))

(declare-fun lt!1207334 () Bool)

(assert (=> b!3530393 (= res!1424660 lt!1207334)))

(declare-fun b!3530394 () Bool)

(declare-fun res!1424661 () Bool)

(assert (=> b!3530394 (=> res!1424661 e!2185525)))

(assert (=> b!3530394 (= res!1424661 (not ((_ is ElementMatch!10251) (regex!5492 lt!1206942))))))

(assert (=> b!3530394 (= e!2185527 e!2185525)))

(declare-fun b!3530395 () Bool)

(assert (=> b!3530395 (= e!2185528 (= lt!1207334 call!254914))))

(declare-fun b!3530396 () Bool)

(declare-fun res!1424666 () Bool)

(assert (=> b!3530396 (=> (not res!1424666) (not e!2185530))))

(assert (=> b!3530396 (= res!1424666 (not call!254914))))

(declare-fun b!3530397 () Bool)

(assert (=> b!3530397 (= e!2185526 (nullable!3526 (regex!5492 lt!1206942)))))

(declare-fun d!1030555 () Bool)

(assert (=> d!1030555 e!2185528))

(declare-fun c!608567 () Bool)

(assert (=> d!1030555 (= c!608567 ((_ is EmptyExpr!10251) (regex!5492 lt!1206942)))))

(assert (=> d!1030555 (= lt!1207334 e!2185526)))

(declare-fun c!608566 () Bool)

(assert (=> d!1030555 (= c!608566 (isEmpty!21909 lt!1206917))))

(assert (=> d!1030555 (validRegex!4682 (regex!5492 lt!1206942))))

(assert (=> d!1030555 (= (matchR!4835 (regex!5492 lt!1206942) lt!1206917) lt!1207334)))

(declare-fun b!3530398 () Bool)

(assert (=> b!3530398 (= e!2185527 (not lt!1207334))))

(declare-fun b!3530399 () Bool)

(declare-fun e!2185529 () Bool)

(assert (=> b!3530399 (= e!2185525 e!2185529)))

(declare-fun res!1424659 () Bool)

(assert (=> b!3530399 (=> (not res!1424659) (not e!2185529))))

(assert (=> b!3530399 (= res!1424659 (not lt!1207334))))

(declare-fun b!3530400 () Bool)

(declare-fun e!2185524 () Bool)

(assert (=> b!3530400 (= e!2185529 e!2185524)))

(declare-fun res!1424663 () Bool)

(assert (=> b!3530400 (=> res!1424663 e!2185524)))

(assert (=> b!3530400 (= res!1424663 call!254914)))

(declare-fun b!3530401 () Bool)

(assert (=> b!3530401 (= e!2185524 (not (= (head!7409 lt!1206917) (c!608378 (regex!5492 lt!1206942)))))))

(declare-fun b!3530402 () Bool)

(assert (=> b!3530402 (= e!2185530 (= (head!7409 lt!1206917) (c!608378 (regex!5492 lt!1206942))))))

(declare-fun b!3530403 () Bool)

(declare-fun res!1424665 () Bool)

(assert (=> b!3530403 (=> res!1424665 e!2185524)))

(assert (=> b!3530403 (= res!1424665 (not (isEmpty!21909 (tail!5509 lt!1206917))))))

(assert (= (and d!1030555 c!608566) b!3530397))

(assert (= (and d!1030555 (not c!608566)) b!3530391))

(assert (= (and d!1030555 c!608567) b!3530395))

(assert (= (and d!1030555 (not c!608567)) b!3530392))

(assert (= (and b!3530392 c!608565) b!3530398))

(assert (= (and b!3530392 (not c!608565)) b!3530394))

(assert (= (and b!3530394 (not res!1424661)) b!3530393))

(assert (= (and b!3530393 res!1424660) b!3530396))

(assert (= (and b!3530396 res!1424666) b!3530390))

(assert (= (and b!3530390 res!1424664) b!3530402))

(assert (= (and b!3530393 (not res!1424662)) b!3530399))

(assert (= (and b!3530399 res!1424659) b!3530400))

(assert (= (and b!3530400 (not res!1424663)) b!3530403))

(assert (= (and b!3530403 (not res!1424665)) b!3530401))

(assert (= (or b!3530395 b!3530396 b!3530400) bm!254909))

(declare-fun m!3986637 () Bool)

(assert (=> b!3530397 m!3986637))

(declare-fun m!3986639 () Bool)

(assert (=> b!3530391 m!3986639))

(assert (=> b!3530391 m!3986639))

(declare-fun m!3986641 () Bool)

(assert (=> b!3530391 m!3986641))

(declare-fun m!3986643 () Bool)

(assert (=> b!3530391 m!3986643))

(assert (=> b!3530391 m!3986641))

(assert (=> b!3530391 m!3986643))

(declare-fun m!3986645 () Bool)

(assert (=> b!3530391 m!3986645))

(assert (=> b!3530403 m!3986643))

(assert (=> b!3530403 m!3986643))

(declare-fun m!3986647 () Bool)

(assert (=> b!3530403 m!3986647))

(assert (=> b!3530402 m!3986639))

(assert (=> b!3530401 m!3986639))

(assert (=> b!3530390 m!3986643))

(assert (=> b!3530390 m!3986643))

(assert (=> b!3530390 m!3986647))

(declare-fun m!3986649 () Bool)

(assert (=> bm!254909 m!3986649))

(assert (=> d!1030555 m!3986649))

(declare-fun m!3986651 () Bool)

(assert (=> d!1030555 m!3986651))

(assert (=> b!3529469 d!1030555))

(declare-fun d!1030557 () Bool)

(assert (=> d!1030557 (= (get!12021 lt!1206946) (v!37169 lt!1206946))))

(assert (=> b!3529469 d!1030557))

(declare-fun d!1030559 () Bool)

(declare-fun lt!1207335 () Bool)

(assert (=> d!1030559 (= lt!1207335 (isEmpty!21909 (list!13695 (_2!21773 lt!1206945))))))

(assert (=> d!1030559 (= lt!1207335 (isEmpty!21913 (c!608379 (_2!21773 lt!1206945))))))

(assert (=> d!1030559 (= (isEmpty!21901 (_2!21773 lt!1206945)) lt!1207335)))

(declare-fun bs!565908 () Bool)

(assert (= bs!565908 d!1030559))

(declare-fun m!3986653 () Bool)

(assert (=> bs!565908 m!3986653))

(assert (=> bs!565908 m!3986653))

(declare-fun m!3986655 () Bool)

(assert (=> bs!565908 m!3986655))

(declare-fun m!3986657 () Bool)

(assert (=> bs!565908 m!3986657))

(assert (=> b!3529470 d!1030559))

(declare-fun d!1030561 () Bool)

(declare-fun lt!1207338 () Token!10350)

(assert (=> d!1030561 (= lt!1207338 (apply!8950 (list!13697 (_1!21773 lt!1206945)) 0))))

(declare-fun apply!8951 (Conc!11360 Int) Token!10350)

(assert (=> d!1030561 (= lt!1207338 (apply!8951 (c!608380 (_1!21773 lt!1206945)) 0))))

(declare-fun e!2185533 () Bool)

(assert (=> d!1030561 e!2185533))

(declare-fun res!1424669 () Bool)

(assert (=> d!1030561 (=> (not res!1424669) (not e!2185533))))

(assert (=> d!1030561 (= res!1424669 (<= 0 0))))

(assert (=> d!1030561 (= (apply!8947 (_1!21773 lt!1206945) 0) lt!1207338)))

(declare-fun b!3530406 () Bool)

(assert (=> b!3530406 (= e!2185533 (< 0 (size!28487 (_1!21773 lt!1206945))))))

(assert (= (and d!1030561 res!1424669) b!3530406))

(assert (=> d!1030561 m!3986203))

(assert (=> d!1030561 m!3986203))

(declare-fun m!3986659 () Bool)

(assert (=> d!1030561 m!3986659))

(declare-fun m!3986661 () Bool)

(assert (=> d!1030561 m!3986661))

(assert (=> b!3530406 m!3985029))

(assert (=> b!3529491 d!1030561))

(declare-fun bs!565909 () Bool)

(declare-fun d!1030563 () Bool)

(assert (= bs!565909 (and d!1030563 b!3529459)))

(declare-fun lambda!122999 () Int)

(assert (=> bs!565909 (not (= lambda!122999 lambda!122988))))

(declare-fun bs!565910 () Bool)

(assert (= bs!565910 (and d!1030563 b!3529461)))

(assert (=> bs!565910 (= lambda!122999 lambda!122989)))

(declare-fun b!3530412 () Bool)

(declare-fun e!2185539 () Bool)

(assert (=> b!3530412 (= e!2185539 true)))

(declare-fun b!3530411 () Bool)

(declare-fun e!2185538 () Bool)

(assert (=> b!3530411 (= e!2185538 e!2185539)))

(declare-fun b!3530410 () Bool)

(declare-fun e!2185537 () Bool)

(assert (=> b!3530410 (= e!2185537 e!2185538)))

(assert (=> d!1030563 e!2185537))

(assert (= b!3530411 b!3530412))

(assert (= b!3530410 b!3530411))

(assert (= (and d!1030563 ((_ is Cons!37416) rules!2135)) b!3530410))

(assert (=> b!3530412 (< (dynLambda!15980 order!20189 (toValue!7748 (transformation!5492 (h!42836 rules!2135)))) (dynLambda!15981 order!20191 lambda!122999))))

(assert (=> b!3530412 (< (dynLambda!15982 order!20193 (toChars!7607 (transformation!5492 (h!42836 rules!2135)))) (dynLambda!15981 order!20191 lambda!122999))))

(assert (=> d!1030563 true))

(declare-fun e!2185536 () Bool)

(assert (=> d!1030563 e!2185536))

(declare-fun res!1424672 () Bool)

(assert (=> d!1030563 (=> (not res!1424672) (not e!2185536))))

(declare-fun lt!1207341 () Bool)

(assert (=> d!1030563 (= res!1424672 (= lt!1207341 (forall!8057 (list!13697 (seqFromList!4038 tokens!494)) lambda!122999)))))

(declare-fun forall!8059 (BalanceConc!22334 Int) Bool)

(assert (=> d!1030563 (= lt!1207341 (forall!8059 (seqFromList!4038 tokens!494) lambda!122999))))

(assert (=> d!1030563 (not (isEmpty!21903 rules!2135))))

(assert (=> d!1030563 (= (rulesProduceEachTokenIndividually!1532 thiss!18206 rules!2135 (seqFromList!4038 tokens!494)) lt!1207341)))

(declare-fun b!3530409 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1893 (LexerInterface!5081 List!37540 List!37541) Bool)

(assert (=> b!3530409 (= e!2185536 (= lt!1207341 (rulesProduceEachTokenIndividuallyList!1893 thiss!18206 rules!2135 (list!13697 (seqFromList!4038 tokens!494)))))))

(assert (= (and d!1030563 res!1424672) b!3530409))

(assert (=> d!1030563 m!3985123))

(declare-fun m!3986663 () Bool)

(assert (=> d!1030563 m!3986663))

(assert (=> d!1030563 m!3986663))

(declare-fun m!3986665 () Bool)

(assert (=> d!1030563 m!3986665))

(assert (=> d!1030563 m!3985123))

(declare-fun m!3986667 () Bool)

(assert (=> d!1030563 m!3986667))

(assert (=> d!1030563 m!3984949))

(assert (=> b!3530409 m!3985123))

(assert (=> b!3530409 m!3986663))

(assert (=> b!3530409 m!3986663))

(declare-fun m!3986669 () Bool)

(assert (=> b!3530409 m!3986669))

(assert (=> b!3529493 d!1030563))

(declare-fun d!1030565 () Bool)

(declare-fun fromListB!1859 (List!37541) BalanceConc!22334)

(assert (=> d!1030565 (= (seqFromList!4038 tokens!494) (fromListB!1859 tokens!494))))

(declare-fun bs!565911 () Bool)

(assert (= bs!565911 d!1030565))

(declare-fun m!3986671 () Bool)

(assert (=> bs!565911 m!3986671))

(assert (=> b!3529493 d!1030565))

(declare-fun d!1030567 () Bool)

(assert (=> d!1030567 (dynLambda!15986 lambda!122988 (h!42837 (t!282832 tokens!494)))))

(declare-fun lt!1207342 () Unit!53124)

(assert (=> d!1030567 (= lt!1207342 (choose!20525 tokens!494 lambda!122988 (h!42837 (t!282832 tokens!494))))))

(declare-fun e!2185540 () Bool)

(assert (=> d!1030567 e!2185540))

(declare-fun res!1424673 () Bool)

(assert (=> d!1030567 (=> (not res!1424673) (not e!2185540))))

(assert (=> d!1030567 (= res!1424673 (forall!8057 tokens!494 lambda!122988))))

(assert (=> d!1030567 (= (forallContained!1439 tokens!494 lambda!122988 (h!42837 (t!282832 tokens!494))) lt!1207342)))

(declare-fun b!3530413 () Bool)

(assert (=> b!3530413 (= e!2185540 (contains!7044 tokens!494 (h!42837 (t!282832 tokens!494))))))

(assert (= (and d!1030567 res!1424673) b!3530413))

(declare-fun b_lambda!103317 () Bool)

(assert (=> (not b_lambda!103317) (not d!1030567)))

(declare-fun m!3986673 () Bool)

(assert (=> d!1030567 m!3986673))

(declare-fun m!3986675 () Bool)

(assert (=> d!1030567 m!3986675))

(assert (=> d!1030567 m!3985147))

(assert (=> b!3530413 m!3986239))

(assert (=> b!3529492 d!1030567))

(declare-fun d!1030569 () Bool)

(assert (=> d!1030569 (dynLambda!15986 lambda!122988 (h!42837 tokens!494))))

(declare-fun lt!1207343 () Unit!53124)

(assert (=> d!1030569 (= lt!1207343 (choose!20525 tokens!494 lambda!122988 (h!42837 tokens!494)))))

(declare-fun e!2185541 () Bool)

(assert (=> d!1030569 e!2185541))

(declare-fun res!1424674 () Bool)

(assert (=> d!1030569 (=> (not res!1424674) (not e!2185541))))

(assert (=> d!1030569 (= res!1424674 (forall!8057 tokens!494 lambda!122988))))

(assert (=> d!1030569 (= (forallContained!1439 tokens!494 lambda!122988 (h!42837 tokens!494)) lt!1207343)))

(declare-fun b!3530414 () Bool)

(assert (=> b!3530414 (= e!2185541 (contains!7044 tokens!494 (h!42837 tokens!494)))))

(assert (= (and d!1030569 res!1424674) b!3530414))

(declare-fun b_lambda!103319 () Bool)

(assert (=> (not b_lambda!103319) (not d!1030569)))

(assert (=> d!1030569 m!3985467))

(declare-fun m!3986677 () Bool)

(assert (=> d!1030569 m!3986677))

(assert (=> d!1030569 m!3985147))

(declare-fun m!3986679 () Bool)

(assert (=> b!3530414 m!3986679))

(assert (=> b!3529492 d!1030569))

(declare-fun b!3530415 () Bool)

(declare-fun e!2185543 () Bool)

(assert (=> b!3530415 (= e!2185543 (inv!17 (value!176982 separatorToken!241)))))

(declare-fun d!1030571 () Bool)

(declare-fun c!608568 () Bool)

(assert (=> d!1030571 (= c!608568 ((_ is IntegerValue!17166) (value!176982 separatorToken!241)))))

(declare-fun e!2185542 () Bool)

(assert (=> d!1030571 (= (inv!21 (value!176982 separatorToken!241)) e!2185542)))

(declare-fun b!3530416 () Bool)

(assert (=> b!3530416 (= e!2185542 e!2185543)))

(declare-fun c!608569 () Bool)

(assert (=> b!3530416 (= c!608569 ((_ is IntegerValue!17167) (value!176982 separatorToken!241)))))

(declare-fun b!3530417 () Bool)

(declare-fun res!1424675 () Bool)

(declare-fun e!2185544 () Bool)

(assert (=> b!3530417 (=> res!1424675 e!2185544)))

(assert (=> b!3530417 (= res!1424675 (not ((_ is IntegerValue!17168) (value!176982 separatorToken!241))))))

(assert (=> b!3530417 (= e!2185543 e!2185544)))

(declare-fun b!3530418 () Bool)

(assert (=> b!3530418 (= e!2185542 (inv!16 (value!176982 separatorToken!241)))))

(declare-fun b!3530419 () Bool)

(assert (=> b!3530419 (= e!2185544 (inv!15 (value!176982 separatorToken!241)))))

(assert (= (and d!1030571 c!608568) b!3530418))

(assert (= (and d!1030571 (not c!608568)) b!3530416))

(assert (= (and b!3530416 c!608569) b!3530415))

(assert (= (and b!3530416 (not c!608569)) b!3530417))

(assert (= (and b!3530417 (not res!1424675)) b!3530419))

(declare-fun m!3986681 () Bool)

(assert (=> b!3530415 m!3986681))

(declare-fun m!3986683 () Bool)

(assert (=> b!3530418 m!3986683))

(declare-fun m!3986685 () Bool)

(assert (=> b!3530419 m!3986685))

(assert (=> b!3529471 d!1030571))

(declare-fun d!1030573 () Bool)

(assert (=> d!1030573 (not (matchR!4835 (regex!5492 (rule!8156 separatorToken!241)) lt!1206934))))

(declare-fun lt!1207344 () Unit!53124)

(assert (=> d!1030573 (= lt!1207344 (choose!20528 (regex!5492 (rule!8156 separatorToken!241)) lt!1206934 lt!1206930))))

(assert (=> d!1030573 (validRegex!4682 (regex!5492 (rule!8156 separatorToken!241)))))

(assert (=> d!1030573 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!550 (regex!5492 (rule!8156 separatorToken!241)) lt!1206934 lt!1206930) lt!1207344)))

(declare-fun bs!565912 () Bool)

(assert (= bs!565912 d!1030573))

(assert (=> bs!565912 m!3985115))

(declare-fun m!3986687 () Bool)

(assert (=> bs!565912 m!3986687))

(declare-fun m!3986689 () Bool)

(assert (=> bs!565912 m!3986689))

(assert (=> b!3529494 d!1030573))

(declare-fun b!3530420 () Bool)

(declare-fun res!1424681 () Bool)

(declare-fun e!2185551 () Bool)

(assert (=> b!3530420 (=> (not res!1424681) (not e!2185551))))

(assert (=> b!3530420 (= res!1424681 (isEmpty!21909 (tail!5509 lt!1206934)))))

(declare-fun b!3530421 () Bool)

(declare-fun e!2185547 () Bool)

(assert (=> b!3530421 (= e!2185547 (matchR!4835 (derivativeStep!3079 (regex!5492 (rule!8156 separatorToken!241)) (head!7409 lt!1206934)) (tail!5509 lt!1206934)))))

(declare-fun bm!254910 () Bool)

(declare-fun call!254915 () Bool)

(assert (=> bm!254910 (= call!254915 (isEmpty!21909 lt!1206934))))

(declare-fun b!3530422 () Bool)

(declare-fun e!2185549 () Bool)

(declare-fun e!2185548 () Bool)

(assert (=> b!3530422 (= e!2185549 e!2185548)))

(declare-fun c!608570 () Bool)

(assert (=> b!3530422 (= c!608570 ((_ is EmptyLang!10251) (regex!5492 (rule!8156 separatorToken!241))))))

(declare-fun b!3530423 () Bool)

(declare-fun res!1424679 () Bool)

(declare-fun e!2185546 () Bool)

(assert (=> b!3530423 (=> res!1424679 e!2185546)))

(assert (=> b!3530423 (= res!1424679 e!2185551)))

(declare-fun res!1424677 () Bool)

(assert (=> b!3530423 (=> (not res!1424677) (not e!2185551))))

(declare-fun lt!1207345 () Bool)

(assert (=> b!3530423 (= res!1424677 lt!1207345)))

(declare-fun b!3530424 () Bool)

(declare-fun res!1424678 () Bool)

(assert (=> b!3530424 (=> res!1424678 e!2185546)))

(assert (=> b!3530424 (= res!1424678 (not ((_ is ElementMatch!10251) (regex!5492 (rule!8156 separatorToken!241)))))))

(assert (=> b!3530424 (= e!2185548 e!2185546)))

(declare-fun b!3530425 () Bool)

(assert (=> b!3530425 (= e!2185549 (= lt!1207345 call!254915))))

(declare-fun b!3530426 () Bool)

(declare-fun res!1424683 () Bool)

(assert (=> b!3530426 (=> (not res!1424683) (not e!2185551))))

(assert (=> b!3530426 (= res!1424683 (not call!254915))))

(declare-fun b!3530427 () Bool)

(assert (=> b!3530427 (= e!2185547 (nullable!3526 (regex!5492 (rule!8156 separatorToken!241))))))

(declare-fun d!1030575 () Bool)

(assert (=> d!1030575 e!2185549))

(declare-fun c!608572 () Bool)

(assert (=> d!1030575 (= c!608572 ((_ is EmptyExpr!10251) (regex!5492 (rule!8156 separatorToken!241))))))

(assert (=> d!1030575 (= lt!1207345 e!2185547)))

(declare-fun c!608571 () Bool)

(assert (=> d!1030575 (= c!608571 (isEmpty!21909 lt!1206934))))

(assert (=> d!1030575 (validRegex!4682 (regex!5492 (rule!8156 separatorToken!241)))))

(assert (=> d!1030575 (= (matchR!4835 (regex!5492 (rule!8156 separatorToken!241)) lt!1206934) lt!1207345)))

(declare-fun b!3530428 () Bool)

(assert (=> b!3530428 (= e!2185548 (not lt!1207345))))

(declare-fun b!3530429 () Bool)

(declare-fun e!2185550 () Bool)

(assert (=> b!3530429 (= e!2185546 e!2185550)))

(declare-fun res!1424676 () Bool)

(assert (=> b!3530429 (=> (not res!1424676) (not e!2185550))))

(assert (=> b!3530429 (= res!1424676 (not lt!1207345))))

(declare-fun b!3530430 () Bool)

(declare-fun e!2185545 () Bool)

(assert (=> b!3530430 (= e!2185550 e!2185545)))

(declare-fun res!1424680 () Bool)

(assert (=> b!3530430 (=> res!1424680 e!2185545)))

(assert (=> b!3530430 (= res!1424680 call!254915)))

(declare-fun b!3530431 () Bool)

(assert (=> b!3530431 (= e!2185545 (not (= (head!7409 lt!1206934) (c!608378 (regex!5492 (rule!8156 separatorToken!241))))))))

(declare-fun b!3530432 () Bool)

(assert (=> b!3530432 (= e!2185551 (= (head!7409 lt!1206934) (c!608378 (regex!5492 (rule!8156 separatorToken!241)))))))

(declare-fun b!3530433 () Bool)

(declare-fun res!1424682 () Bool)

(assert (=> b!3530433 (=> res!1424682 e!2185545)))

(assert (=> b!3530433 (= res!1424682 (not (isEmpty!21909 (tail!5509 lt!1206934))))))

(assert (= (and d!1030575 c!608571) b!3530427))

(assert (= (and d!1030575 (not c!608571)) b!3530421))

(assert (= (and d!1030575 c!608572) b!3530425))

(assert (= (and d!1030575 (not c!608572)) b!3530422))

(assert (= (and b!3530422 c!608570) b!3530428))

(assert (= (and b!3530422 (not c!608570)) b!3530424))

(assert (= (and b!3530424 (not res!1424678)) b!3530423))

(assert (= (and b!3530423 res!1424677) b!3530426))

(assert (= (and b!3530426 res!1424683) b!3530420))

(assert (= (and b!3530420 res!1424681) b!3530432))

(assert (= (and b!3530423 (not res!1424679)) b!3530429))

(assert (= (and b!3530429 res!1424676) b!3530430))

(assert (= (and b!3530430 (not res!1424680)) b!3530433))

(assert (= (and b!3530433 (not res!1424682)) b!3530431))

(assert (= (or b!3530425 b!3530426 b!3530430) bm!254910))

(declare-fun m!3986691 () Bool)

(assert (=> b!3530427 m!3986691))

(assert (=> b!3530421 m!3985007))

(assert (=> b!3530421 m!3985007))

(declare-fun m!3986693 () Bool)

(assert (=> b!3530421 m!3986693))

(assert (=> b!3530421 m!3986491))

(assert (=> b!3530421 m!3986693))

(assert (=> b!3530421 m!3986491))

(declare-fun m!3986695 () Bool)

(assert (=> b!3530421 m!3986695))

(assert (=> b!3530433 m!3986491))

(assert (=> b!3530433 m!3986491))

(assert (=> b!3530433 m!3986495))

(assert (=> b!3530432 m!3985007))

(assert (=> b!3530431 m!3985007))

(assert (=> b!3530420 m!3986491))

(assert (=> b!3530420 m!3986491))

(assert (=> b!3530420 m!3986495))

(assert (=> bm!254910 m!3986497))

(assert (=> d!1030575 m!3986497))

(assert (=> d!1030575 m!3986689))

(assert (=> b!3529494 d!1030575))

(declare-fun b!3530434 () Bool)

(declare-fun e!2185552 () List!37539)

(assert (=> b!3530434 (= e!2185552 lt!1206961)))

(declare-fun b!3530436 () Bool)

(declare-fun res!1424684 () Bool)

(declare-fun e!2185553 () Bool)

(assert (=> b!3530436 (=> (not res!1424684) (not e!2185553))))

(declare-fun lt!1207346 () List!37539)

(assert (=> b!3530436 (= res!1424684 (= (size!28486 lt!1207346) (+ (size!28486 (++!9281 lt!1206917 lt!1206934)) (size!28486 lt!1206961))))))

(declare-fun b!3530437 () Bool)

(assert (=> b!3530437 (= e!2185553 (or (not (= lt!1206961 Nil!37415)) (= lt!1207346 (++!9281 lt!1206917 lt!1206934))))))

(declare-fun d!1030577 () Bool)

(assert (=> d!1030577 e!2185553))

(declare-fun res!1424685 () Bool)

(assert (=> d!1030577 (=> (not res!1424685) (not e!2185553))))

(assert (=> d!1030577 (= res!1424685 (= (content!5281 lt!1207346) ((_ map or) (content!5281 (++!9281 lt!1206917 lt!1206934)) (content!5281 lt!1206961))))))

(assert (=> d!1030577 (= lt!1207346 e!2185552)))

(declare-fun c!608573 () Bool)

(assert (=> d!1030577 (= c!608573 ((_ is Nil!37415) (++!9281 lt!1206917 lt!1206934)))))

(assert (=> d!1030577 (= (++!9281 (++!9281 lt!1206917 lt!1206934) lt!1206961) lt!1207346)))

(declare-fun b!3530435 () Bool)

(assert (=> b!3530435 (= e!2185552 (Cons!37415 (h!42835 (++!9281 lt!1206917 lt!1206934)) (++!9281 (t!282830 (++!9281 lt!1206917 lt!1206934)) lt!1206961)))))

(assert (= (and d!1030577 c!608573) b!3530434))

(assert (= (and d!1030577 (not c!608573)) b!3530435))

(assert (= (and d!1030577 res!1424685) b!3530436))

(assert (= (and b!3530436 res!1424684) b!3530437))

(declare-fun m!3986697 () Bool)

(assert (=> b!3530436 m!3986697))

(assert (=> b!3530436 m!3984951))

(declare-fun m!3986699 () Bool)

(assert (=> b!3530436 m!3986699))

(assert (=> b!3530436 m!3986605))

(declare-fun m!3986701 () Bool)

(assert (=> d!1030577 m!3986701))

(assert (=> d!1030577 m!3984951))

(declare-fun m!3986703 () Bool)

(assert (=> d!1030577 m!3986703))

(assert (=> d!1030577 m!3986609))

(declare-fun m!3986705 () Bool)

(assert (=> b!3530435 m!3986705))

(assert (=> b!3529473 d!1030577))

(declare-fun b!3530438 () Bool)

(declare-fun e!2185554 () List!37539)

(assert (=> b!3530438 (= e!2185554 lt!1206934)))

(declare-fun b!3530440 () Bool)

(declare-fun res!1424686 () Bool)

(declare-fun e!2185555 () Bool)

(assert (=> b!3530440 (=> (not res!1424686) (not e!2185555))))

(declare-fun lt!1207347 () List!37539)

(assert (=> b!3530440 (= res!1424686 (= (size!28486 lt!1207347) (+ (size!28486 lt!1206917) (size!28486 lt!1206934))))))

(declare-fun b!3530441 () Bool)

(assert (=> b!3530441 (= e!2185555 (or (not (= lt!1206934 Nil!37415)) (= lt!1207347 lt!1206917)))))

(declare-fun d!1030579 () Bool)

(assert (=> d!1030579 e!2185555))

(declare-fun res!1424687 () Bool)

(assert (=> d!1030579 (=> (not res!1424687) (not e!2185555))))

(assert (=> d!1030579 (= res!1424687 (= (content!5281 lt!1207347) ((_ map or) (content!5281 lt!1206917) (content!5281 lt!1206934))))))

(assert (=> d!1030579 (= lt!1207347 e!2185554)))

(declare-fun c!608574 () Bool)

(assert (=> d!1030579 (= c!608574 ((_ is Nil!37415) lt!1206917))))

(assert (=> d!1030579 (= (++!9281 lt!1206917 lt!1206934) lt!1207347)))

(declare-fun b!3530439 () Bool)

(assert (=> b!3530439 (= e!2185554 (Cons!37415 (h!42835 lt!1206917) (++!9281 (t!282830 lt!1206917) lt!1206934)))))

(assert (= (and d!1030579 c!608574) b!3530438))

(assert (= (and d!1030579 (not c!608574)) b!3530439))

(assert (= (and d!1030579 res!1424687) b!3530440))

(assert (= (and b!3530440 res!1424686) b!3530441))

(declare-fun m!3986707 () Bool)

(assert (=> b!3530440 m!3986707))

(assert (=> b!3530440 m!3985045))

(assert (=> b!3530440 m!3986593))

(declare-fun m!3986709 () Bool)

(assert (=> d!1030579 m!3986709))

(declare-fun m!3986711 () Bool)

(assert (=> d!1030579 m!3986711))

(assert (=> d!1030579 m!3986599))

(declare-fun m!3986713 () Bool)

(assert (=> b!3530439 m!3986713))

(assert (=> b!3529473 d!1030579))

(declare-fun d!1030581 () Bool)

(declare-fun lt!1207348 () Token!10350)

(assert (=> d!1030581 (= lt!1207348 (apply!8950 (list!13697 (_1!21773 lt!1206921)) 0))))

(assert (=> d!1030581 (= lt!1207348 (apply!8951 (c!608380 (_1!21773 lt!1206921)) 0))))

(declare-fun e!2185556 () Bool)

(assert (=> d!1030581 e!2185556))

(declare-fun res!1424688 () Bool)

(assert (=> d!1030581 (=> (not res!1424688) (not e!2185556))))

(assert (=> d!1030581 (= res!1424688 (<= 0 0))))

(assert (=> d!1030581 (= (apply!8947 (_1!21773 lt!1206921) 0) lt!1207348)))

(declare-fun b!3530442 () Bool)

(assert (=> b!3530442 (= e!2185556 (< 0 (size!28487 (_1!21773 lt!1206921))))))

(assert (= (and d!1030581 res!1424688) b!3530442))

(assert (=> d!1030581 m!3985791))

(assert (=> d!1030581 m!3985791))

(declare-fun m!3986715 () Bool)

(assert (=> d!1030581 m!3986715))

(declare-fun m!3986717 () Bool)

(assert (=> d!1030581 m!3986717))

(assert (=> b!3530442 m!3984987))

(assert (=> b!3529474 d!1030581))

(declare-fun d!1030583 () Bool)

(declare-fun res!1424689 () Bool)

(declare-fun e!2185557 () Bool)

(assert (=> d!1030583 (=> (not res!1424689) (not e!2185557))))

(assert (=> d!1030583 (= res!1424689 (not (isEmpty!21909 (originalCharacters!6206 (h!42837 tokens!494)))))))

(assert (=> d!1030583 (= (inv!50656 (h!42837 tokens!494)) e!2185557)))

(declare-fun b!3530443 () Bool)

(declare-fun res!1424690 () Bool)

(assert (=> b!3530443 (=> (not res!1424690) (not e!2185557))))

(assert (=> b!3530443 (= res!1424690 (= (originalCharacters!6206 (h!42837 tokens!494)) (list!13695 (dynLambda!15988 (toChars!7607 (transformation!5492 (rule!8156 (h!42837 tokens!494)))) (value!176982 (h!42837 tokens!494))))))))

(declare-fun b!3530444 () Bool)

(assert (=> b!3530444 (= e!2185557 (= (size!28485 (h!42837 tokens!494)) (size!28486 (originalCharacters!6206 (h!42837 tokens!494)))))))

(assert (= (and d!1030583 res!1424689) b!3530443))

(assert (= (and b!3530443 res!1424690) b!3530444))

(declare-fun b_lambda!103321 () Bool)

(assert (=> (not b_lambda!103321) (not b!3530443)))

(declare-fun t!282922 () Bool)

(declare-fun tb!197581 () Bool)

(assert (=> (and b!3529485 (= (toChars!7607 (transformation!5492 (rule!8156 (h!42837 tokens!494)))) (toChars!7607 (transformation!5492 (rule!8156 (h!42837 tokens!494))))) t!282922) tb!197581))

(declare-fun b!3530445 () Bool)

(declare-fun e!2185558 () Bool)

(declare-fun tp!1088380 () Bool)

(assert (=> b!3530445 (= e!2185558 (and (inv!50659 (c!608379 (dynLambda!15988 (toChars!7607 (transformation!5492 (rule!8156 (h!42837 tokens!494)))) (value!176982 (h!42837 tokens!494))))) tp!1088380))))

(declare-fun result!242046 () Bool)

(assert (=> tb!197581 (= result!242046 (and (inv!50660 (dynLambda!15988 (toChars!7607 (transformation!5492 (rule!8156 (h!42837 tokens!494)))) (value!176982 (h!42837 tokens!494)))) e!2185558))))

(assert (= tb!197581 b!3530445))

(declare-fun m!3986719 () Bool)

(assert (=> b!3530445 m!3986719))

(declare-fun m!3986721 () Bool)

(assert (=> tb!197581 m!3986721))

(assert (=> b!3530443 t!282922))

(declare-fun b_and!251807 () Bool)

(assert (= b_and!251801 (and (=> t!282922 result!242046) b_and!251807)))

(declare-fun t!282924 () Bool)

(declare-fun tb!197583 () Bool)

(assert (=> (and b!3529478 (= (toChars!7607 (transformation!5492 (h!42836 rules!2135))) (toChars!7607 (transformation!5492 (rule!8156 (h!42837 tokens!494))))) t!282924) tb!197583))

(declare-fun result!242048 () Bool)

(assert (= result!242048 result!242046))

(assert (=> b!3530443 t!282924))

(declare-fun b_and!251809 () Bool)

(assert (= b_and!251803 (and (=> t!282924 result!242048) b_and!251809)))

(declare-fun tb!197585 () Bool)

(declare-fun t!282926 () Bool)

(assert (=> (and b!3529460 (= (toChars!7607 (transformation!5492 (rule!8156 separatorToken!241))) (toChars!7607 (transformation!5492 (rule!8156 (h!42837 tokens!494))))) t!282926) tb!197585))

(declare-fun result!242050 () Bool)

(assert (= result!242050 result!242046))

(assert (=> b!3530443 t!282926))

(declare-fun b_and!251811 () Bool)

(assert (= b_and!251805 (and (=> t!282926 result!242050) b_and!251811)))

(declare-fun m!3986723 () Bool)

(assert (=> d!1030583 m!3986723))

(declare-fun m!3986725 () Bool)

(assert (=> b!3530443 m!3986725))

(assert (=> b!3530443 m!3986725))

(declare-fun m!3986727 () Bool)

(assert (=> b!3530443 m!3986727))

(declare-fun m!3986729 () Bool)

(assert (=> b!3530444 m!3986729))

(assert (=> b!3529495 d!1030583))

(declare-fun d!1030585 () Bool)

(assert (=> d!1030585 (= (isEmpty!21903 rules!2135) ((_ is Nil!37416) rules!2135))))

(assert (=> b!3529496 d!1030585))

(declare-fun b!3530446 () Bool)

(declare-fun res!1424696 () Bool)

(declare-fun e!2185565 () Bool)

(assert (=> b!3530446 (=> (not res!1424696) (not e!2185565))))

(assert (=> b!3530446 (= res!1424696 (isEmpty!21909 (tail!5509 lt!1206922)))))

(declare-fun b!3530447 () Bool)

(declare-fun e!2185561 () Bool)

(assert (=> b!3530447 (= e!2185561 (matchR!4835 (derivativeStep!3079 (regex!5492 lt!1206936) (head!7409 lt!1206922)) (tail!5509 lt!1206922)))))

(declare-fun bm!254911 () Bool)

(declare-fun call!254916 () Bool)

(assert (=> bm!254911 (= call!254916 (isEmpty!21909 lt!1206922))))

(declare-fun b!3530448 () Bool)

(declare-fun e!2185563 () Bool)

(declare-fun e!2185562 () Bool)

(assert (=> b!3530448 (= e!2185563 e!2185562)))

(declare-fun c!608575 () Bool)

(assert (=> b!3530448 (= c!608575 ((_ is EmptyLang!10251) (regex!5492 lt!1206936)))))

(declare-fun b!3530449 () Bool)

(declare-fun res!1424694 () Bool)

(declare-fun e!2185560 () Bool)

(assert (=> b!3530449 (=> res!1424694 e!2185560)))

(assert (=> b!3530449 (= res!1424694 e!2185565)))

(declare-fun res!1424692 () Bool)

(assert (=> b!3530449 (=> (not res!1424692) (not e!2185565))))

(declare-fun lt!1207349 () Bool)

(assert (=> b!3530449 (= res!1424692 lt!1207349)))

(declare-fun b!3530450 () Bool)

(declare-fun res!1424693 () Bool)

(assert (=> b!3530450 (=> res!1424693 e!2185560)))

(assert (=> b!3530450 (= res!1424693 (not ((_ is ElementMatch!10251) (regex!5492 lt!1206936))))))

(assert (=> b!3530450 (= e!2185562 e!2185560)))

(declare-fun b!3530451 () Bool)

(assert (=> b!3530451 (= e!2185563 (= lt!1207349 call!254916))))

(declare-fun b!3530452 () Bool)

(declare-fun res!1424698 () Bool)

(assert (=> b!3530452 (=> (not res!1424698) (not e!2185565))))

(assert (=> b!3530452 (= res!1424698 (not call!254916))))

(declare-fun b!3530453 () Bool)

(assert (=> b!3530453 (= e!2185561 (nullable!3526 (regex!5492 lt!1206936)))))

(declare-fun d!1030587 () Bool)

(assert (=> d!1030587 e!2185563))

(declare-fun c!608577 () Bool)

(assert (=> d!1030587 (= c!608577 ((_ is EmptyExpr!10251) (regex!5492 lt!1206936)))))

(assert (=> d!1030587 (= lt!1207349 e!2185561)))

(declare-fun c!608576 () Bool)

(assert (=> d!1030587 (= c!608576 (isEmpty!21909 lt!1206922))))

(assert (=> d!1030587 (validRegex!4682 (regex!5492 lt!1206936))))

(assert (=> d!1030587 (= (matchR!4835 (regex!5492 lt!1206936) lt!1206922) lt!1207349)))

(declare-fun b!3530454 () Bool)

(assert (=> b!3530454 (= e!2185562 (not lt!1207349))))

(declare-fun b!3530455 () Bool)

(declare-fun e!2185564 () Bool)

(assert (=> b!3530455 (= e!2185560 e!2185564)))

(declare-fun res!1424691 () Bool)

(assert (=> b!3530455 (=> (not res!1424691) (not e!2185564))))

(assert (=> b!3530455 (= res!1424691 (not lt!1207349))))

(declare-fun b!3530456 () Bool)

(declare-fun e!2185559 () Bool)

(assert (=> b!3530456 (= e!2185564 e!2185559)))

(declare-fun res!1424695 () Bool)

(assert (=> b!3530456 (=> res!1424695 e!2185559)))

(assert (=> b!3530456 (= res!1424695 call!254916)))

(declare-fun b!3530457 () Bool)

(assert (=> b!3530457 (= e!2185559 (not (= (head!7409 lt!1206922) (c!608378 (regex!5492 lt!1206936)))))))

(declare-fun b!3530458 () Bool)

(assert (=> b!3530458 (= e!2185565 (= (head!7409 lt!1206922) (c!608378 (regex!5492 lt!1206936))))))

(declare-fun b!3530459 () Bool)

(declare-fun res!1424697 () Bool)

(assert (=> b!3530459 (=> res!1424697 e!2185559)))

(assert (=> b!3530459 (= res!1424697 (not (isEmpty!21909 (tail!5509 lt!1206922))))))

(assert (= (and d!1030587 c!608576) b!3530453))

(assert (= (and d!1030587 (not c!608576)) b!3530447))

(assert (= (and d!1030587 c!608577) b!3530451))

(assert (= (and d!1030587 (not c!608577)) b!3530448))

(assert (= (and b!3530448 c!608575) b!3530454))

(assert (= (and b!3530448 (not c!608575)) b!3530450))

(assert (= (and b!3530450 (not res!1424693)) b!3530449))

(assert (= (and b!3530449 res!1424692) b!3530452))

(assert (= (and b!3530452 res!1424698) b!3530446))

(assert (= (and b!3530446 res!1424696) b!3530458))

(assert (= (and b!3530449 (not res!1424694)) b!3530455))

(assert (= (and b!3530455 res!1424691) b!3530456))

(assert (= (and b!3530456 (not res!1424695)) b!3530459))

(assert (= (and b!3530459 (not res!1424697)) b!3530457))

(assert (= (or b!3530451 b!3530452 b!3530456) bm!254911))

(declare-fun m!3986731 () Bool)

(assert (=> b!3530453 m!3986731))

(assert (=> b!3530447 m!3984981))

(assert (=> b!3530447 m!3984981))

(declare-fun m!3986733 () Bool)

(assert (=> b!3530447 m!3986733))

(assert (=> b!3530447 m!3986561))

(assert (=> b!3530447 m!3986733))

(assert (=> b!3530447 m!3986561))

(declare-fun m!3986735 () Bool)

(assert (=> b!3530447 m!3986735))

(assert (=> b!3530459 m!3986561))

(assert (=> b!3530459 m!3986561))

(assert (=> b!3530459 m!3986565))

(assert (=> b!3530458 m!3984981))

(assert (=> b!3530457 m!3984981))

(assert (=> b!3530446 m!3986561))

(assert (=> b!3530446 m!3986561))

(assert (=> b!3530446 m!3986565))

(assert (=> bm!254911 m!3986567))

(assert (=> d!1030587 m!3986567))

(declare-fun m!3986737 () Bool)

(assert (=> d!1030587 m!3986737))

(assert (=> b!3529498 d!1030587))

(declare-fun d!1030589 () Bool)

(assert (=> d!1030589 (= (get!12021 lt!1206948) (v!37169 lt!1206948))))

(assert (=> b!3529498 d!1030589))

(declare-fun d!1030591 () Bool)

(declare-fun res!1424701 () Bool)

(declare-fun e!2185568 () Bool)

(assert (=> d!1030591 (=> (not res!1424701) (not e!2185568))))

(declare-fun rulesValid!2081 (LexerInterface!5081 List!37540) Bool)

(assert (=> d!1030591 (= res!1424701 (rulesValid!2081 thiss!18206 rules!2135))))

(assert (=> d!1030591 (= (rulesInvariant!4478 thiss!18206 rules!2135) e!2185568)))

(declare-fun b!3530462 () Bool)

(declare-datatypes ((List!37543 0))(
  ( (Nil!37419) (Cons!37419 (h!42839 String!41944) (t!282948 List!37543)) )
))
(declare-fun noDuplicateTag!2077 (LexerInterface!5081 List!37540 List!37543) Bool)

(assert (=> b!3530462 (= e!2185568 (noDuplicateTag!2077 thiss!18206 rules!2135 Nil!37419))))

(assert (= (and d!1030591 res!1424701) b!3530462))

(declare-fun m!3986739 () Bool)

(assert (=> d!1030591 m!3986739))

(declare-fun m!3986741 () Bool)

(assert (=> b!3530462 m!3986741))

(assert (=> b!3529477 d!1030591))

(declare-fun d!1030593 () Bool)

(assert (=> d!1030593 (= (list!13695 (charsOf!3506 (h!42837 tokens!494))) (list!13698 (c!608379 (charsOf!3506 (h!42837 tokens!494)))))))

(declare-fun bs!565913 () Bool)

(assert (= bs!565913 d!1030593))

(declare-fun m!3986743 () Bool)

(assert (=> bs!565913 m!3986743))

(assert (=> b!3529499 d!1030593))

(declare-fun d!1030595 () Bool)

(declare-fun lt!1207350 () BalanceConc!22332)

(assert (=> d!1030595 (= (list!13695 lt!1207350) (originalCharacters!6206 (h!42837 tokens!494)))))

(assert (=> d!1030595 (= lt!1207350 (dynLambda!15988 (toChars!7607 (transformation!5492 (rule!8156 (h!42837 tokens!494)))) (value!176982 (h!42837 tokens!494))))))

(assert (=> d!1030595 (= (charsOf!3506 (h!42837 tokens!494)) lt!1207350)))

(declare-fun b_lambda!103323 () Bool)

(assert (=> (not b_lambda!103323) (not d!1030595)))

(assert (=> d!1030595 t!282922))

(declare-fun b_and!251813 () Bool)

(assert (= b_and!251807 (and (=> t!282922 result!242046) b_and!251813)))

(assert (=> d!1030595 t!282924))

(declare-fun b_and!251815 () Bool)

(assert (= b_and!251809 (and (=> t!282924 result!242048) b_and!251815)))

(assert (=> d!1030595 t!282926))

(declare-fun b_and!251817 () Bool)

(assert (= b_and!251811 (and (=> t!282926 result!242050) b_and!251817)))

(declare-fun m!3986745 () Bool)

(assert (=> d!1030595 m!3986745))

(assert (=> d!1030595 m!3986725))

(assert (=> b!3529499 d!1030595))

(declare-fun d!1030597 () Bool)

(assert (=> d!1030597 (= (inv!50652 (tag!6138 (h!42836 rules!2135))) (= (mod (str.len (value!176981 (tag!6138 (h!42836 rules!2135)))) 2) 0))))

(assert (=> b!3529458 d!1030597))

(declare-fun d!1030599 () Bool)

(declare-fun res!1424702 () Bool)

(declare-fun e!2185569 () Bool)

(assert (=> d!1030599 (=> (not res!1424702) (not e!2185569))))

(assert (=> d!1030599 (= res!1424702 (semiInverseModEq!2321 (toChars!7607 (transformation!5492 (h!42836 rules!2135))) (toValue!7748 (transformation!5492 (h!42836 rules!2135)))))))

(assert (=> d!1030599 (= (inv!50655 (transformation!5492 (h!42836 rules!2135))) e!2185569)))

(declare-fun b!3530463 () Bool)

(assert (=> b!3530463 (= e!2185569 (equivClasses!2220 (toChars!7607 (transformation!5492 (h!42836 rules!2135))) (toValue!7748 (transformation!5492 (h!42836 rules!2135)))))))

(assert (= (and d!1030599 res!1424702) b!3530463))

(declare-fun m!3986747 () Bool)

(assert (=> d!1030599 m!3986747))

(declare-fun m!3986749 () Bool)

(assert (=> b!3530463 m!3986749))

(assert (=> b!3529458 d!1030599))

(declare-fun b!3530464 () Bool)

(declare-fun e!2185570 () List!37539)

(assert (=> b!3530464 (= e!2185570 lt!1206940)))

(declare-fun b!3530466 () Bool)

(declare-fun res!1424703 () Bool)

(declare-fun e!2185571 () Bool)

(assert (=> b!3530466 (=> (not res!1424703) (not e!2185571))))

(declare-fun lt!1207351 () List!37539)

(assert (=> b!3530466 (= res!1424703 (= (size!28486 lt!1207351) (+ (size!28486 lt!1206917) (size!28486 lt!1206940))))))

(declare-fun b!3530467 () Bool)

(assert (=> b!3530467 (= e!2185571 (or (not (= lt!1206940 Nil!37415)) (= lt!1207351 lt!1206917)))))

(declare-fun d!1030601 () Bool)

(assert (=> d!1030601 e!2185571))

(declare-fun res!1424704 () Bool)

(assert (=> d!1030601 (=> (not res!1424704) (not e!2185571))))

(assert (=> d!1030601 (= res!1424704 (= (content!5281 lt!1207351) ((_ map or) (content!5281 lt!1206917) (content!5281 lt!1206940))))))

(assert (=> d!1030601 (= lt!1207351 e!2185570)))

(declare-fun c!608578 () Bool)

(assert (=> d!1030601 (= c!608578 ((_ is Nil!37415) lt!1206917))))

(assert (=> d!1030601 (= (++!9281 lt!1206917 lt!1206940) lt!1207351)))

(declare-fun b!3530465 () Bool)

(assert (=> b!3530465 (= e!2185570 (Cons!37415 (h!42835 lt!1206917) (++!9281 (t!282830 lt!1206917) lt!1206940)))))

(assert (= (and d!1030601 c!608578) b!3530464))

(assert (= (and d!1030601 (not c!608578)) b!3530465))

(assert (= (and d!1030601 res!1424704) b!3530466))

(assert (= (and b!3530466 res!1424703) b!3530467))

(declare-fun m!3986751 () Bool)

(assert (=> b!3530466 m!3986751))

(assert (=> b!3530466 m!3985045))

(declare-fun m!3986753 () Bool)

(assert (=> b!3530466 m!3986753))

(declare-fun m!3986755 () Bool)

(assert (=> d!1030601 m!3986755))

(assert (=> d!1030601 m!3986711))

(declare-fun m!3986757 () Bool)

(assert (=> d!1030601 m!3986757))

(declare-fun m!3986759 () Bool)

(assert (=> b!3530465 m!3986759))

(assert (=> b!3529501 d!1030601))

(declare-fun d!1030603 () Bool)

(assert (=> d!1030603 (= (++!9281 (++!9281 lt!1206917 lt!1206934) lt!1206961) (++!9281 lt!1206917 (++!9281 lt!1206934 lt!1206961)))))

(declare-fun lt!1207354 () Unit!53124)

(declare-fun choose!20529 (List!37539 List!37539 List!37539) Unit!53124)

(assert (=> d!1030603 (= lt!1207354 (choose!20529 lt!1206917 lt!1206934 lt!1206961))))

(assert (=> d!1030603 (= (lemmaConcatAssociativity!2026 lt!1206917 lt!1206934 lt!1206961) lt!1207354)))

(declare-fun bs!565914 () Bool)

(assert (= bs!565914 d!1030603))

(assert (=> bs!565914 m!3984951))

(assert (=> bs!565914 m!3985079))

(declare-fun m!3986761 () Bool)

(assert (=> bs!565914 m!3986761))

(assert (=> bs!565914 m!3985079))

(declare-fun m!3986763 () Bool)

(assert (=> bs!565914 m!3986763))

(assert (=> bs!565914 m!3984951))

(assert (=> bs!565914 m!3984953))

(assert (=> b!3529501 d!1030603))

(declare-fun d!1030605 () Bool)

(assert (=> d!1030605 (= (inv!50652 (tag!6138 (rule!8156 (h!42837 tokens!494)))) (= (mod (str.len (value!176981 (tag!6138 (rule!8156 (h!42837 tokens!494))))) 2) 0))))

(assert (=> b!3529500 d!1030605))

(declare-fun d!1030607 () Bool)

(declare-fun res!1424705 () Bool)

(declare-fun e!2185572 () Bool)

(assert (=> d!1030607 (=> (not res!1424705) (not e!2185572))))

(assert (=> d!1030607 (= res!1424705 (semiInverseModEq!2321 (toChars!7607 (transformation!5492 (rule!8156 (h!42837 tokens!494)))) (toValue!7748 (transformation!5492 (rule!8156 (h!42837 tokens!494))))))))

(assert (=> d!1030607 (= (inv!50655 (transformation!5492 (rule!8156 (h!42837 tokens!494)))) e!2185572)))

(declare-fun b!3530468 () Bool)

(assert (=> b!3530468 (= e!2185572 (equivClasses!2220 (toChars!7607 (transformation!5492 (rule!8156 (h!42837 tokens!494)))) (toValue!7748 (transformation!5492 (rule!8156 (h!42837 tokens!494))))))))

(assert (= (and d!1030607 res!1424705) b!3530468))

(declare-fun m!3986765 () Bool)

(assert (=> d!1030607 m!3986765))

(declare-fun m!3986767 () Bool)

(assert (=> b!3530468 m!3986767))

(assert (=> b!3529500 d!1030607))

(declare-fun b!3530471 () Bool)

(declare-fun e!2185575 () Bool)

(assert (=> b!3530471 (= e!2185575 true)))

(declare-fun b!3530470 () Bool)

(declare-fun e!2185574 () Bool)

(assert (=> b!3530470 (= e!2185574 e!2185575)))

(declare-fun b!3530469 () Bool)

(declare-fun e!2185573 () Bool)

(assert (=> b!3530469 (= e!2185573 e!2185574)))

(assert (=> b!3529510 e!2185573))

(assert (= b!3530470 b!3530471))

(assert (= b!3530469 b!3530470))

(assert (= (and b!3529510 ((_ is Cons!37416) (t!282831 rules!2135))) b!3530469))

(assert (=> b!3530471 (< (dynLambda!15980 order!20189 (toValue!7748 (transformation!5492 (h!42836 (t!282831 rules!2135))))) (dynLambda!15981 order!20191 lambda!122989))))

(assert (=> b!3530471 (< (dynLambda!15982 order!20193 (toChars!7607 (transformation!5492 (h!42836 (t!282831 rules!2135))))) (dynLambda!15981 order!20191 lambda!122989))))

(declare-fun b!3530476 () Bool)

(declare-fun e!2185578 () Bool)

(declare-fun tp_is_empty!17633 () Bool)

(declare-fun tp!1088383 () Bool)

(assert (=> b!3530476 (= e!2185578 (and tp_is_empty!17633 tp!1088383))))

(assert (=> b!3529471 (= tp!1088307 e!2185578)))

(assert (= (and b!3529471 ((_ is Cons!37415) (originalCharacters!6206 separatorToken!241))) b!3530476))

(declare-fun b!3530490 () Bool)

(declare-fun b_free!91021 () Bool)

(declare-fun b_next!91725 () Bool)

(assert (=> b!3530490 (= b_free!91021 (not b_next!91725))))

(declare-fun t!282928 () Bool)

(declare-fun tb!197587 () Bool)

(assert (=> (and b!3530490 (= (toValue!7748 (transformation!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))) (toValue!7748 (transformation!5492 (rule!8156 (h!42837 tokens!494))))) t!282928) tb!197587))

(declare-fun result!242056 () Bool)

(assert (= result!242056 result!241990))

(assert (=> d!1030427 t!282928))

(declare-fun t!282930 () Bool)

(declare-fun tb!197589 () Bool)

(assert (=> (and b!3530490 (= (toValue!7748 (transformation!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))) (toValue!7748 (transformation!5492 (rule!8156 (h!42837 (t!282832 tokens!494)))))) t!282930) tb!197589))

(declare-fun result!242058 () Bool)

(assert (= result!242058 result!241998))

(assert (=> d!1030471 t!282930))

(declare-fun tp!1088398 () Bool)

(declare-fun b_and!251819 () Bool)

(assert (=> b!3530490 (= tp!1088398 (and (=> t!282928 result!242056) (=> t!282930 result!242058) b_and!251819))))

(declare-fun b_free!91023 () Bool)

(declare-fun b_next!91727 () Bool)

(assert (=> b!3530490 (= b_free!91023 (not b_next!91727))))

(declare-fun t!282932 () Bool)

(declare-fun tb!197591 () Bool)

(assert (=> (and b!3530490 (= (toChars!7607 (transformation!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))) (toChars!7607 (transformation!5492 (rule!8156 (h!42837 tokens!494))))) t!282932) tb!197591))

(declare-fun result!242060 () Bool)

(assert (= result!242060 result!242046))

(assert (=> b!3530443 t!282932))

(declare-fun t!282934 () Bool)

(declare-fun tb!197593 () Bool)

(assert (=> (and b!3530490 (= (toChars!7607 (transformation!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))) (toChars!7607 (transformation!5492 (rule!8156 (h!42837 (t!282832 tokens!494)))))) t!282934) tb!197593))

(declare-fun result!242062 () Bool)

(assert (= result!242062 result!242040))

(assert (=> d!1030553 t!282934))

(assert (=> d!1030595 t!282932))

(declare-fun t!282936 () Bool)

(declare-fun tb!197595 () Bool)

(assert (=> (and b!3530490 (= (toChars!7607 (transformation!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))) (toChars!7607 (transformation!5492 (rule!8156 separatorToken!241)))) t!282936) tb!197595))

(declare-fun result!242064 () Bool)

(assert (= result!242064 result!242032))

(assert (=> b!3530318 t!282936))

(assert (=> d!1030539 t!282936))

(declare-fun tp!1088394 () Bool)

(declare-fun b_and!251821 () Bool)

(assert (=> b!3530490 (= tp!1088394 (and (=> t!282932 result!242060) (=> t!282936 result!242064) (=> t!282934 result!242062) b_and!251821))))

(declare-fun tp!1088396 () Bool)

(declare-fun e!2185592 () Bool)

(declare-fun b!3530488 () Bool)

(declare-fun e!2185594 () Bool)

(assert (=> b!3530488 (= e!2185594 (and (inv!21 (value!176982 (h!42837 (t!282832 tokens!494)))) e!2185592 tp!1088396))))

(declare-fun b!3530489 () Bool)

(declare-fun tp!1088395 () Bool)

(declare-fun e!2185593 () Bool)

(assert (=> b!3530489 (= e!2185592 (and tp!1088395 (inv!50652 (tag!6138 (rule!8156 (h!42837 (t!282832 tokens!494))))) (inv!50655 (transformation!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))) e!2185593))))

(assert (=> b!3530490 (= e!2185593 (and tp!1088398 tp!1088394))))

(declare-fun b!3530487 () Bool)

(declare-fun tp!1088397 () Bool)

(declare-fun e!2185591 () Bool)

(assert (=> b!3530487 (= e!2185591 (and (inv!50656 (h!42837 (t!282832 tokens!494))) e!2185594 tp!1088397))))

(assert (=> b!3529495 (= tp!1088304 e!2185591)))

(assert (= b!3530489 b!3530490))

(assert (= b!3530488 b!3530489))

(assert (= b!3530487 b!3530488))

(assert (= (and b!3529495 ((_ is Cons!37417) (t!282832 tokens!494))) b!3530487))

(declare-fun m!3986769 () Bool)

(assert (=> b!3530488 m!3986769))

(declare-fun m!3986771 () Bool)

(assert (=> b!3530489 m!3986771))

(declare-fun m!3986773 () Bool)

(assert (=> b!3530489 m!3986773))

(declare-fun m!3986775 () Bool)

(assert (=> b!3530487 m!3986775))

(declare-fun b!3530503 () Bool)

(declare-fun e!2185599 () Bool)

(declare-fun tp!1088413 () Bool)

(assert (=> b!3530503 (= e!2185599 tp!1088413)))

(assert (=> b!3529464 (= tp!1088309 e!2185599)))

(declare-fun b!3530502 () Bool)

(declare-fun tp!1088409 () Bool)

(declare-fun tp!1088412 () Bool)

(assert (=> b!3530502 (= e!2185599 (and tp!1088409 tp!1088412))))

(declare-fun b!3530501 () Bool)

(assert (=> b!3530501 (= e!2185599 tp_is_empty!17633)))

(declare-fun b!3530504 () Bool)

(declare-fun tp!1088411 () Bool)

(declare-fun tp!1088410 () Bool)

(assert (=> b!3530504 (= e!2185599 (and tp!1088411 tp!1088410))))

(assert (= (and b!3529464 ((_ is ElementMatch!10251) (regex!5492 (rule!8156 separatorToken!241)))) b!3530501))

(assert (= (and b!3529464 ((_ is Concat!15973) (regex!5492 (rule!8156 separatorToken!241)))) b!3530502))

(assert (= (and b!3529464 ((_ is Star!10251) (regex!5492 (rule!8156 separatorToken!241)))) b!3530503))

(assert (= (and b!3529464 ((_ is Union!10251) (regex!5492 (rule!8156 separatorToken!241)))) b!3530504))

(declare-fun b!3530505 () Bool)

(declare-fun e!2185600 () Bool)

(declare-fun tp!1088414 () Bool)

(assert (=> b!3530505 (= e!2185600 (and tp_is_empty!17633 tp!1088414))))

(assert (=> b!3529489 (= tp!1088308 e!2185600)))

(assert (= (and b!3529489 ((_ is Cons!37415) (originalCharacters!6206 (h!42837 tokens!494)))) b!3530505))

(declare-fun b!3530508 () Bool)

(declare-fun e!2185601 () Bool)

(declare-fun tp!1088419 () Bool)

(assert (=> b!3530508 (= e!2185601 tp!1088419)))

(assert (=> b!3529458 (= tp!1088310 e!2185601)))

(declare-fun b!3530507 () Bool)

(declare-fun tp!1088415 () Bool)

(declare-fun tp!1088418 () Bool)

(assert (=> b!3530507 (= e!2185601 (and tp!1088415 tp!1088418))))

(declare-fun b!3530506 () Bool)

(assert (=> b!3530506 (= e!2185601 tp_is_empty!17633)))

(declare-fun b!3530509 () Bool)

(declare-fun tp!1088417 () Bool)

(declare-fun tp!1088416 () Bool)

(assert (=> b!3530509 (= e!2185601 (and tp!1088417 tp!1088416))))

(assert (= (and b!3529458 ((_ is ElementMatch!10251) (regex!5492 (h!42836 rules!2135)))) b!3530506))

(assert (= (and b!3529458 ((_ is Concat!15973) (regex!5492 (h!42836 rules!2135)))) b!3530507))

(assert (= (and b!3529458 ((_ is Star!10251) (regex!5492 (h!42836 rules!2135)))) b!3530508))

(assert (= (and b!3529458 ((_ is Union!10251) (regex!5492 (h!42836 rules!2135)))) b!3530509))

(declare-fun b!3530512 () Bool)

(declare-fun e!2185602 () Bool)

(declare-fun tp!1088424 () Bool)

(assert (=> b!3530512 (= e!2185602 tp!1088424)))

(assert (=> b!3529500 (= tp!1088302 e!2185602)))

(declare-fun b!3530511 () Bool)

(declare-fun tp!1088420 () Bool)

(declare-fun tp!1088423 () Bool)

(assert (=> b!3530511 (= e!2185602 (and tp!1088420 tp!1088423))))

(declare-fun b!3530510 () Bool)

(assert (=> b!3530510 (= e!2185602 tp_is_empty!17633)))

(declare-fun b!3530513 () Bool)

(declare-fun tp!1088422 () Bool)

(declare-fun tp!1088421 () Bool)

(assert (=> b!3530513 (= e!2185602 (and tp!1088422 tp!1088421))))

(assert (= (and b!3529500 ((_ is ElementMatch!10251) (regex!5492 (rule!8156 (h!42837 tokens!494))))) b!3530510))

(assert (= (and b!3529500 ((_ is Concat!15973) (regex!5492 (rule!8156 (h!42837 tokens!494))))) b!3530511))

(assert (= (and b!3529500 ((_ is Star!10251) (regex!5492 (rule!8156 (h!42837 tokens!494))))) b!3530512))

(assert (= (and b!3529500 ((_ is Union!10251) (regex!5492 (rule!8156 (h!42837 tokens!494))))) b!3530513))

(declare-fun b!3530524 () Bool)

(declare-fun b_free!91025 () Bool)

(declare-fun b_next!91729 () Bool)

(assert (=> b!3530524 (= b_free!91025 (not b_next!91729))))

(declare-fun tb!197597 () Bool)

(declare-fun t!282938 () Bool)

(assert (=> (and b!3530524 (= (toValue!7748 (transformation!5492 (h!42836 (t!282831 rules!2135)))) (toValue!7748 (transformation!5492 (rule!8156 (h!42837 tokens!494))))) t!282938) tb!197597))

(declare-fun result!242070 () Bool)

(assert (= result!242070 result!241990))

(assert (=> d!1030427 t!282938))

(declare-fun tb!197599 () Bool)

(declare-fun t!282940 () Bool)

(assert (=> (and b!3530524 (= (toValue!7748 (transformation!5492 (h!42836 (t!282831 rules!2135)))) (toValue!7748 (transformation!5492 (rule!8156 (h!42837 (t!282832 tokens!494)))))) t!282940) tb!197599))

(declare-fun result!242072 () Bool)

(assert (= result!242072 result!241998))

(assert (=> d!1030471 t!282940))

(declare-fun b_and!251823 () Bool)

(declare-fun tp!1088436 () Bool)

(assert (=> b!3530524 (= tp!1088436 (and (=> t!282938 result!242070) (=> t!282940 result!242072) b_and!251823))))

(declare-fun b_free!91027 () Bool)

(declare-fun b_next!91731 () Bool)

(assert (=> b!3530524 (= b_free!91027 (not b_next!91731))))

(declare-fun t!282942 () Bool)

(declare-fun tb!197601 () Bool)

(assert (=> (and b!3530524 (= (toChars!7607 (transformation!5492 (h!42836 (t!282831 rules!2135)))) (toChars!7607 (transformation!5492 (rule!8156 (h!42837 tokens!494))))) t!282942) tb!197601))

(declare-fun result!242074 () Bool)

(assert (= result!242074 result!242046))

(assert (=> b!3530443 t!282942))

(declare-fun t!282944 () Bool)

(declare-fun tb!197603 () Bool)

(assert (=> (and b!3530524 (= (toChars!7607 (transformation!5492 (h!42836 (t!282831 rules!2135)))) (toChars!7607 (transformation!5492 (rule!8156 (h!42837 (t!282832 tokens!494)))))) t!282944) tb!197603))

(declare-fun result!242076 () Bool)

(assert (= result!242076 result!242040))

(assert (=> d!1030553 t!282944))

(assert (=> d!1030595 t!282942))

(declare-fun t!282946 () Bool)

(declare-fun tb!197605 () Bool)

(assert (=> (and b!3530524 (= (toChars!7607 (transformation!5492 (h!42836 (t!282831 rules!2135)))) (toChars!7607 (transformation!5492 (rule!8156 separatorToken!241)))) t!282946) tb!197605))

(declare-fun result!242078 () Bool)

(assert (= result!242078 result!242032))

(assert (=> b!3530318 t!282946))

(assert (=> d!1030539 t!282946))

(declare-fun tp!1088434 () Bool)

(declare-fun b_and!251825 () Bool)

(assert (=> b!3530524 (= tp!1088434 (and (=> t!282942 result!242074) (=> t!282944 result!242076) (=> t!282946 result!242078) b_and!251825))))

(declare-fun e!2185613 () Bool)

(assert (=> b!3530524 (= e!2185613 (and tp!1088436 tp!1088434))))

(declare-fun tp!1088433 () Bool)

(declare-fun b!3530523 () Bool)

(declare-fun e!2185612 () Bool)

(assert (=> b!3530523 (= e!2185612 (and tp!1088433 (inv!50652 (tag!6138 (h!42836 (t!282831 rules!2135)))) (inv!50655 (transformation!5492 (h!42836 (t!282831 rules!2135)))) e!2185613))))

(declare-fun b!3530522 () Bool)

(declare-fun e!2185611 () Bool)

(declare-fun tp!1088435 () Bool)

(assert (=> b!3530522 (= e!2185611 (and e!2185612 tp!1088435))))

(assert (=> b!3529468 (= tp!1088312 e!2185611)))

(assert (= b!3530523 b!3530524))

(assert (= b!3530522 b!3530523))

(assert (= (and b!3529468 ((_ is Cons!37416) (t!282831 rules!2135))) b!3530522))

(declare-fun m!3986777 () Bool)

(assert (=> b!3530523 m!3986777))

(declare-fun m!3986779 () Bool)

(assert (=> b!3530523 m!3986779))

(declare-fun b_lambda!103325 () Bool)

(assert (= b_lambda!103317 (or b!3529459 b_lambda!103325)))

(declare-fun bs!565915 () Bool)

(declare-fun d!1030609 () Bool)

(assert (= bs!565915 (and d!1030609 b!3529459)))

(assert (=> bs!565915 (= (dynLambda!15986 lambda!122988 (h!42837 (t!282832 tokens!494))) (not (isSeparator!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))))))

(assert (=> d!1030567 d!1030609))

(declare-fun b_lambda!103327 () Bool)

(assert (= b_lambda!103313 (or (and b!3529478 b_free!91007 (= (toChars!7607 (transformation!5492 (h!42836 rules!2135))) (toChars!7607 (transformation!5492 (rule!8156 separatorToken!241))))) (and b!3530524 b_free!91027 (= (toChars!7607 (transformation!5492 (h!42836 (t!282831 rules!2135)))) (toChars!7607 (transformation!5492 (rule!8156 separatorToken!241))))) (and b!3529460 b_free!91011) (and b!3530490 b_free!91023 (= (toChars!7607 (transformation!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))) (toChars!7607 (transformation!5492 (rule!8156 separatorToken!241))))) (and b!3529485 b_free!91003 (= (toChars!7607 (transformation!5492 (rule!8156 (h!42837 tokens!494)))) (toChars!7607 (transformation!5492 (rule!8156 separatorToken!241))))) b_lambda!103327)))

(declare-fun b_lambda!103329 () Bool)

(assert (= b_lambda!103277 (or b!3529461 b_lambda!103329)))

(declare-fun bs!565916 () Bool)

(declare-fun d!1030611 () Bool)

(assert (= bs!565916 (and d!1030611 b!3529461)))

(assert (=> bs!565916 (= (dynLambda!15986 lambda!122989 (h!42837 (t!282832 tokens!494))) (rulesProduceIndividualToken!2573 thiss!18206 rules!2135 (h!42837 (t!282832 tokens!494))))))

(assert (=> bs!565916 m!3984995))

(assert (=> d!1030431 d!1030611))

(declare-fun b_lambda!103331 () Bool)

(assert (= b_lambda!103321 (or (and b!3529460 b_free!91011 (= (toChars!7607 (transformation!5492 (rule!8156 separatorToken!241))) (toChars!7607 (transformation!5492 (rule!8156 (h!42837 tokens!494)))))) (and b!3529478 b_free!91007 (= (toChars!7607 (transformation!5492 (h!42836 rules!2135))) (toChars!7607 (transformation!5492 (rule!8156 (h!42837 tokens!494)))))) (and b!3530524 b_free!91027 (= (toChars!7607 (transformation!5492 (h!42836 (t!282831 rules!2135)))) (toChars!7607 (transformation!5492 (rule!8156 (h!42837 tokens!494)))))) (and b!3530490 b_free!91023 (= (toChars!7607 (transformation!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))) (toChars!7607 (transformation!5492 (rule!8156 (h!42837 tokens!494)))))) (and b!3529485 b_free!91003) b_lambda!103331)))

(declare-fun b_lambda!103333 () Bool)

(assert (= b_lambda!103319 (or b!3529459 b_lambda!103333)))

(declare-fun bs!565917 () Bool)

(declare-fun d!1030613 () Bool)

(assert (= bs!565917 (and d!1030613 b!3529459)))

(assert (=> bs!565917 (= (dynLambda!15986 lambda!122988 (h!42837 tokens!494)) (not (isSeparator!5492 (rule!8156 (h!42837 tokens!494)))))))

(assert (=> d!1030569 d!1030613))

(declare-fun b_lambda!103335 () Bool)

(assert (= b_lambda!103311 (or (and b!3529478 b_free!91007 (= (toChars!7607 (transformation!5492 (h!42836 rules!2135))) (toChars!7607 (transformation!5492 (rule!8156 separatorToken!241))))) (and b!3530524 b_free!91027 (= (toChars!7607 (transformation!5492 (h!42836 (t!282831 rules!2135)))) (toChars!7607 (transformation!5492 (rule!8156 separatorToken!241))))) (and b!3529460 b_free!91011) (and b!3530490 b_free!91023 (= (toChars!7607 (transformation!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))) (toChars!7607 (transformation!5492 (rule!8156 separatorToken!241))))) (and b!3529485 b_free!91003 (= (toChars!7607 (transformation!5492 (rule!8156 (h!42837 tokens!494)))) (toChars!7607 (transformation!5492 (rule!8156 separatorToken!241))))) b_lambda!103335)))

(declare-fun b_lambda!103337 () Bool)

(assert (= b_lambda!103267 (or b!3529459 b_lambda!103337)))

(assert (=> b!3529770 d!1030613))

(declare-fun b_lambda!103339 () Bool)

(assert (= b_lambda!103287 (or (and b!3529478 b_free!91005 (= (toValue!7748 (transformation!5492 (h!42836 rules!2135))) (toValue!7748 (transformation!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))))) (and b!3530490 b_free!91021) (and b!3530524 b_free!91025 (= (toValue!7748 (transformation!5492 (h!42836 (t!282831 rules!2135)))) (toValue!7748 (transformation!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))))) (and b!3529485 b_free!91001 (= (toValue!7748 (transformation!5492 (rule!8156 (h!42837 tokens!494)))) (toValue!7748 (transformation!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))))) (and b!3529460 b_free!91009 (= (toValue!7748 (transformation!5492 (rule!8156 separatorToken!241))) (toValue!7748 (transformation!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))))) b_lambda!103339)))

(declare-fun b_lambda!103341 () Bool)

(assert (= b_lambda!103323 (or (and b!3529460 b_free!91011 (= (toChars!7607 (transformation!5492 (rule!8156 separatorToken!241))) (toChars!7607 (transformation!5492 (rule!8156 (h!42837 tokens!494)))))) (and b!3529478 b_free!91007 (= (toChars!7607 (transformation!5492 (h!42836 rules!2135))) (toChars!7607 (transformation!5492 (rule!8156 (h!42837 tokens!494)))))) (and b!3530524 b_free!91027 (= (toChars!7607 (transformation!5492 (h!42836 (t!282831 rules!2135)))) (toChars!7607 (transformation!5492 (rule!8156 (h!42837 tokens!494)))))) (and b!3530490 b_free!91023 (= (toChars!7607 (transformation!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))) (toChars!7607 (transformation!5492 (rule!8156 (h!42837 tokens!494)))))) (and b!3529485 b_free!91003) b_lambda!103341)))

(declare-fun b_lambda!103343 () Bool)

(assert (= b_lambda!103315 (or (and b!3529478 b_free!91007 (= (toChars!7607 (transformation!5492 (h!42836 rules!2135))) (toChars!7607 (transformation!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))))) (and b!3530490 b_free!91023) (and b!3529485 b_free!91003 (= (toChars!7607 (transformation!5492 (rule!8156 (h!42837 tokens!494)))) (toChars!7607 (transformation!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))))) (and b!3530524 b_free!91027 (= (toChars!7607 (transformation!5492 (h!42836 (t!282831 rules!2135)))) (toChars!7607 (transformation!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))))) (and b!3529460 b_free!91011 (= (toChars!7607 (transformation!5492 (rule!8156 separatorToken!241))) (toChars!7607 (transformation!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))))) b_lambda!103343)))

(declare-fun b_lambda!103345 () Bool)

(assert (= b_lambda!103275 (or (and b!3530524 b_free!91025 (= (toValue!7748 (transformation!5492 (h!42836 (t!282831 rules!2135)))) (toValue!7748 (transformation!5492 (rule!8156 (h!42837 tokens!494)))))) (and b!3530490 b_free!91021 (= (toValue!7748 (transformation!5492 (rule!8156 (h!42837 (t!282832 tokens!494))))) (toValue!7748 (transformation!5492 (rule!8156 (h!42837 tokens!494)))))) (and b!3529478 b_free!91005 (= (toValue!7748 (transformation!5492 (h!42836 rules!2135))) (toValue!7748 (transformation!5492 (rule!8156 (h!42837 tokens!494)))))) (and b!3529485 b_free!91001) (and b!3529460 b_free!91009 (= (toValue!7748 (transformation!5492 (rule!8156 separatorToken!241))) (toValue!7748 (transformation!5492 (rule!8156 (h!42837 tokens!494)))))) b_lambda!103345)))

(check-sat (not d!1030259) (not b!3530344) (not b!3530093) (not b!3530383) (not b_lambda!103341) (not b!3530324) b_and!251777 (not bs!565916) (not b!3529825) (not d!1030421) (not b!3530453) (not b!3530085) (not b_next!91731) (not b!3530340) (not b!3529882) (not b!3529851) (not b!3530503) (not b!3530445) (not d!1030603) (not b!3530469) (not b!3530476) (not b!3530089) (not d!1030273) (not b!3529929) (not b!3529763) (not d!1030521) (not b_lambda!103345) (not d!1030235) (not d!1030565) (not d!1030569) (not b!3529765) b_and!251775 (not d!1030595) (not d!1030447) (not b!3530431) (not b!3530511) (not b!3530523) (not b!3530379) (not d!1030417) (not b!3530188) (not d!1030299) (not bm!254887) (not b!3529928) (not d!1030263) (not b!3529809) (not d!1030441) (not b!3530435) (not b!3530060) (not d!1030403) (not b!3530310) (not b!3529786) (not b!3530329) (not b!3530421) (not b!3530346) (not b!3530504) (not d!1030579) (not b!3530505) (not d!1030545) (not b!3530463) (not b!3530427) (not b!3530403) (not b!3529884) (not b!3530269) (not b!3529812) (not d!1030567) (not d!1030257) (not d!1030561) (not b!3529916) (not d!1030501) (not b_lambda!103325) (not b!3529922) (not d!1030559) (not b!3529777) (not b!3529932) (not d!1030227) (not b!3530413) (not d!1030541) (not d!1030423) (not d!1030519) (not b!3529771) (not b!3530487) (not d!1030291) (not d!1030555) (not tb!197575) (not b!3530457) (not b_next!91705) (not d!1030407) (not b!3530374) (not bm!254910) (not b_next!91713) (not b!3529917) (not b!3530357) (not b!3530459) (not b!3530442) (not b!3529886) (not b!3530389) (not b!3530327) b_and!251823 (not b!3530415) (not b!3530115) (not b!3530311) (not b!3530343) (not b_lambda!103337) (not b!3530318) (not d!1030405) (not b!3530509) (not bm!254897) (not b!3530458) (not d!1030301) b_and!251815 (not b!3530092) (not b!3529915) (not b!3530436) (not d!1030563) (not b!3530313) (not b!3530401) (not b_lambda!103331) (not b!3529880) (not b!3530108) (not b!3530378) (not b!3530466) (not d!1030399) (not b!3529881) (not tb!197569) (not b!3530280) (not b_next!91711) (not d!1030233) (not d!1030289) (not bm!254907) (not b!3530512) (not b!3529810) (not b!3529776) (not tb!197537) (not b!3530462) (not b_lambda!103339) (not b!3529923) (not d!1030525) (not b!3530409) (not b!3530062) (not d!1030261) (not b!3530090) (not b!3530382) (not b!3529888) (not bm!254895) (not b!3529779) (not bm!254902) (not d!1030591) (not b!3530489) (not bm!254900) (not d!1030575) (not b_next!91725) (not b!3530122) (not d!1030573) (not b!3530433) (not b_lambda!103335) (not d!1030495) (not b!3530358) (not b!3530390) (not b!3529701) (not b!3530189) (not b!3529792) (not b!3530319) (not b!3530447) (not d!1030539) (not b!3530419) (not d!1030477) (not d!1030577) (not b!3530059) (not b!3529780) (not b_lambda!103329) b_and!251779 (not b_next!91709) (not d!1030485) (not b!3530410) (not b!3530391) (not b!3530064) (not b!3530173) (not d!1030303) (not b!3530049) b_and!251825 (not b!3530502) (not b!3529883) (not d!1030509) (not b!3530282) (not d!1030601) (not b!3530507) (not b!3530057) (not b!3529824) (not b_lambda!103343) (not b!3530406) (not d!1030553) (not b!3530309) (not bm!254909) (not b!3530432) (not d!1030255) (not b!3530443) (not d!1030527) (not b!3529924) (not d!1030443) (not d!1030599) (not bm!254894) (not b!3530276) (not b!3529703) (not b!3530091) (not d!1030551) (not b!3530468) (not b!3529920) (not b!3529850) (not b_next!91729) b_and!251821 (not b!3530051) (not b!3529887) (not b!3530187) (not d!1030231) (not b!3530444) (not b!3530446) (not bm!254898) (not b!3530385) (not bm!254911) (not b!3530087) (not d!1030543) (not b!3529778) (not b!3529791) (not d!1030313) (not b!3530420) (not d!1030413) (not b!3530066) (not d!1030583) (not d!1030531) (not d!1030537) (not b!3530418) (not b!3529826) (not d!1030431) (not b!3530363) (not d!1030319) b_and!251813 b_and!251819 (not b!3530270) (not b!3530522) (not b!3529764) (not b!3529711) (not b_lambda!103327) (not b!3529828) (not b!3530048) (not d!1030593) tp_is_empty!17633 (not d!1030533) (not bm!254903) (not d!1030219) (not b_next!91715) (not b!3530281) (not b!3530440) (not bm!254886) (not b!3529914) (not d!1030311) (not d!1030581) (not b!3529930) (not d!1030587) (not d!1030517) (not d!1030419) (not b!3530375) (not d!1030315) (not d!1030487) (not b!3530402) (not d!1030271) (not b!3530120) (not b!3530488) (not b!3530352) (not b!3530345) (not b!3530086) (not b!3530114) (not bm!254908) (not d!1030309) (not b!3530397) (not d!1030439) (not b!3530414) (not d!1030275) (not b_next!91707) (not b!3530508) (not b!3529918) (not b!3529921) (not b_next!91727) (not b!3530387) (not b!3530176) (not b!3529706) (not b!3530356) (not d!1030455) (not tb!197581) (not tb!197543) (not b!3530465) (not bm!254884) (not b!3530513) (not b!3530174) (not d!1030415) (not b!3529927) (not b!3530439) (not d!1030607) (not d!1030409) (not b!3530160) (not b_lambda!103333) b_and!251817)
(check-sat b_and!251777 (not b_next!91731) b_and!251775 (not b_next!91705) b_and!251815 (not b_next!91711) (not b_next!91725) b_and!251825 (not b_next!91715) (not b_next!91707) (not b_next!91727) b_and!251817 (not b_next!91713) b_and!251823 b_and!251779 (not b_next!91709) (not b_next!91729) b_and!251821 b_and!251813 b_and!251819)
