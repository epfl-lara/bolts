; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!336234 () Bool)

(assert start!336234)

(declare-fun b!3611036 () Bool)

(declare-fun b_free!93745 () Bool)

(declare-fun b_next!94449 () Bool)

(assert (=> b!3611036 (= b_free!93745 (not b_next!94449))))

(declare-fun tp!1103762 () Bool)

(declare-fun b_and!263363 () Bool)

(assert (=> b!3611036 (= tp!1103762 b_and!263363)))

(declare-fun b_free!93747 () Bool)

(declare-fun b_next!94451 () Bool)

(assert (=> b!3611036 (= b_free!93747 (not b_next!94451))))

(declare-fun tp!1103769 () Bool)

(declare-fun b_and!263365 () Bool)

(assert (=> b!3611036 (= tp!1103769 b_and!263365)))

(declare-fun b!3611008 () Bool)

(declare-fun b_free!93749 () Bool)

(declare-fun b_next!94453 () Bool)

(assert (=> b!3611008 (= b_free!93749 (not b_next!94453))))

(declare-fun tp!1103768 () Bool)

(declare-fun b_and!263367 () Bool)

(assert (=> b!3611008 (= tp!1103768 b_and!263367)))

(declare-fun b_free!93751 () Bool)

(declare-fun b_next!94455 () Bool)

(assert (=> b!3611008 (= b_free!93751 (not b_next!94455))))

(declare-fun tp!1103764 () Bool)

(declare-fun b_and!263369 () Bool)

(assert (=> b!3611008 (= tp!1103764 b_and!263369)))

(declare-fun b!3611012 () Bool)

(declare-fun b_free!93753 () Bool)

(declare-fun b_next!94457 () Bool)

(assert (=> b!3611012 (= b_free!93753 (not b_next!94457))))

(declare-fun tp!1103757 () Bool)

(declare-fun b_and!263371 () Bool)

(assert (=> b!3611012 (= tp!1103757 b_and!263371)))

(declare-fun b_free!93755 () Bool)

(declare-fun b_next!94459 () Bool)

(assert (=> b!3611012 (= b_free!93755 (not b_next!94459))))

(declare-fun tp!1103756 () Bool)

(declare-fun b_and!263373 () Bool)

(assert (=> b!3611012 (= tp!1103756 b_and!263373)))

(declare-fun b!3611015 () Bool)

(declare-fun b_free!93757 () Bool)

(declare-fun b_next!94461 () Bool)

(assert (=> b!3611015 (= b_free!93757 (not b_next!94461))))

(declare-fun tp!1103759 () Bool)

(declare-fun b_and!263375 () Bool)

(assert (=> b!3611015 (= tp!1103759 b_and!263375)))

(declare-fun b_free!93759 () Bool)

(declare-fun b_next!94463 () Bool)

(assert (=> b!3611015 (= b_free!93759 (not b_next!94463))))

(declare-fun tp!1103766 () Bool)

(declare-fun b_and!263377 () Bool)

(assert (=> b!3611015 (= tp!1103766 b_and!263377)))

(declare-fun res!1460662 () Bool)

(declare-fun e!2234812 () Bool)

(assert (=> start!336234 (=> (not res!1460662) (not e!2234812))))

(declare-datatypes ((LexerInterface!5227 0))(
  ( (LexerInterfaceExt!5224 (__x!23953 Int)) (Lexer!5225) )
))
(declare-fun thiss!23823 () LexerInterface!5227)

(get-info :version)

(assert (=> start!336234 (= res!1460662 ((_ is Lexer!5225) thiss!23823))))

(assert (=> start!336234 e!2234812))

(declare-fun e!2234794 () Bool)

(assert (=> start!336234 e!2234794))

(declare-fun e!2234789 () Bool)

(assert (=> start!336234 e!2234789))

(assert (=> start!336234 true))

(declare-datatypes ((List!38127 0))(
  ( (Nil!38003) (Cons!38003 (h!43423 (_ BitVec 16)) (t!293418 List!38127)) )
))
(declare-datatypes ((TokenValue!5868 0))(
  ( (FloatLiteralValue!11736 (text!41521 List!38127)) (TokenValueExt!5867 (__x!23954 Int)) (Broken!29340 (value!181117 List!38127)) (Object!5991) (End!5868) (Def!5868) (Underscore!5868) (Match!5868) (Else!5868) (Error!5868) (Case!5868) (If!5868) (Extends!5868) (Abstract!5868) (Class!5868) (Val!5868) (DelimiterValue!11736 (del!5928 List!38127)) (KeywordValue!5874 (value!181118 List!38127)) (CommentValue!11736 (value!181119 List!38127)) (WhitespaceValue!11736 (value!181120 List!38127)) (IndentationValue!5868 (value!181121 List!38127)) (String!42673) (Int32!5868) (Broken!29341 (value!181122 List!38127)) (Boolean!5869) (Unit!54189) (OperatorValue!5871 (op!5928 List!38127)) (IdentifierValue!11736 (value!181123 List!38127)) (IdentifierValue!11737 (value!181124 List!38127)) (WhitespaceValue!11737 (value!181125 List!38127)) (True!11736) (False!11736) (Broken!29342 (value!181126 List!38127)) (Broken!29343 (value!181127 List!38127)) (True!11737) (RightBrace!5868) (RightBracket!5868) (Colon!5868) (Null!5868) (Comma!5868) (LeftBracket!5868) (False!11737) (LeftBrace!5868) (ImaginaryLiteralValue!5868 (text!41522 List!38127)) (StringLiteralValue!17604 (value!181128 List!38127)) (EOFValue!5868 (value!181129 List!38127)) (IdentValue!5868 (value!181130 List!38127)) (DelimiterValue!11737 (value!181131 List!38127)) (DedentValue!5868 (value!181132 List!38127)) (NewLineValue!5868 (value!181133 List!38127)) (IntegerValue!17604 (value!181134 (_ BitVec 32)) (text!41523 List!38127)) (IntegerValue!17605 (value!181135 Int) (text!41524 List!38127)) (Times!5868) (Or!5868) (Equal!5868) (Minus!5868) (Broken!29344 (value!181136 List!38127)) (And!5868) (Div!5868) (LessEqual!5868) (Mod!5868) (Concat!16265) (Not!5868) (Plus!5868) (SpaceValue!5868 (value!181137 List!38127)) (IntegerValue!17606 (value!181138 Int) (text!41525 List!38127)) (StringLiteralValue!17605 (text!41526 List!38127)) (FloatLiteralValue!11737 (text!41527 List!38127)) (BytesLiteralValue!5868 (value!181139 List!38127)) (CommentValue!11737 (value!181140 List!38127)) (StringLiteralValue!17606 (value!181141 List!38127)) (ErrorTokenValue!5868 (msg!5929 List!38127)) )
))
(declare-datatypes ((C!20980 0))(
  ( (C!20981 (val!12538 Int)) )
))
(declare-datatypes ((Regex!10397 0))(
  ( (ElementMatch!10397 (c!624730 C!20980)) (Concat!16266 (regOne!21306 Regex!10397) (regTwo!21306 Regex!10397)) (EmptyExpr!10397) (Star!10397 (reg!10726 Regex!10397)) (EmptyLang!10397) (Union!10397 (regOne!21307 Regex!10397) (regTwo!21307 Regex!10397)) )
))
(declare-datatypes ((String!42674 0))(
  ( (String!42675 (value!181142 String)) )
))
(declare-datatypes ((List!38128 0))(
  ( (Nil!38004) (Cons!38004 (h!43424 C!20980) (t!293419 List!38128)) )
))
(declare-datatypes ((IArray!23167 0))(
  ( (IArray!23168 (innerList!11641 List!38128)) )
))
(declare-datatypes ((Conc!11581 0))(
  ( (Node!11581 (left!29694 Conc!11581) (right!30024 Conc!11581) (csize!23392 Int) (cheight!11792 Int)) (Leaf!18011 (xs!14783 IArray!23167) (csize!23393 Int)) (Empty!11581) )
))
(declare-datatypes ((BalanceConc!22776 0))(
  ( (BalanceConc!22777 (c!624731 Conc!11581)) )
))
(declare-datatypes ((TokenValueInjection!11164 0))(
  ( (TokenValueInjection!11165 (toValue!7922 Int) (toChars!7781 Int)) )
))
(declare-datatypes ((Rule!11076 0))(
  ( (Rule!11077 (regex!5638 Regex!10397) (tag!6346 String!42674) (isSeparator!5638 Bool) (transformation!5638 TokenValueInjection!11164)) )
))
(declare-datatypes ((Token!10642 0))(
  ( (Token!10643 (value!181143 TokenValue!5868) (rule!8390 Rule!11076) (size!28973 Int) (originalCharacters!6352 List!38128)) )
))
(declare-fun token!511 () Token!10642)

(declare-fun e!2234806 () Bool)

(declare-fun inv!51378 (Token!10642) Bool)

(assert (=> start!336234 (and (inv!51378 token!511) e!2234806)))

(declare-fun e!2234807 () Bool)

(assert (=> start!336234 e!2234807))

(declare-fun e!2234785 () Bool)

(assert (=> start!336234 e!2234785))

(declare-fun bm!261019 () Bool)

(declare-fun call!261025 () List!38128)

(declare-datatypes ((tuple2!37900 0))(
  ( (tuple2!37901 (_1!22084 Token!10642) (_2!22084 List!38128)) )
))
(declare-fun lt!1243241 () tuple2!37900)

(declare-fun usedCharacters!852 (Regex!10397) List!38128)

(assert (=> bm!261019 (= call!261025 (usedCharacters!852 (regex!5638 (rule!8390 (_1!22084 lt!1243241)))))))

(declare-fun b!3611007 () Bool)

(assert (=> b!3611007 false))

(declare-datatypes ((Unit!54190 0))(
  ( (Unit!54191) )
))
(declare-fun lt!1243226 () Unit!54190)

(declare-fun call!261026 () Unit!54190)

(assert (=> b!3611007 (= lt!1243226 call!261026)))

(declare-fun call!261024 () Bool)

(assert (=> b!3611007 (not call!261024)))

(declare-datatypes ((List!38129 0))(
  ( (Nil!38005) (Cons!38005 (h!43425 Rule!11076) (t!293420 List!38129)) )
))
(declare-fun rules!3307 () List!38129)

(declare-fun lt!1243236 () C!20980)

(declare-fun rule!403 () Rule!11076)

(declare-fun lt!1243230 () Unit!54190)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!344 (LexerInterface!5227 List!38129 List!38129 Rule!11076 Rule!11076 C!20980) Unit!54190)

(assert (=> b!3611007 (= lt!1243230 (lemmaNonSepRuleNotContainsCharContainedInASepRule!344 thiss!23823 rules!3307 rules!3307 (rule!8390 (_1!22084 lt!1243241)) rule!403 lt!1243236))))

(declare-fun e!2234783 () Unit!54190)

(declare-fun Unit!54192 () Unit!54190)

(assert (=> b!3611007 (= e!2234783 Unit!54192)))

(declare-fun e!2234811 () Bool)

(assert (=> b!3611008 (= e!2234811 (and tp!1103768 tp!1103764))))

(declare-fun e!2234784 () Bool)

(declare-fun b!3611009 () Bool)

(declare-fun tp!1103761 () Bool)

(declare-fun inv!51375 (String!42674) Bool)

(declare-fun inv!51379 (TokenValueInjection!11164) Bool)

(assert (=> b!3611009 (= e!2234807 (and tp!1103761 (inv!51375 (tag!6346 rule!403)) (inv!51379 (transformation!5638 rule!403)) e!2234784))))

(declare-fun b!3611010 () Bool)

(declare-fun e!2234791 () Bool)

(declare-fun e!2234803 () Bool)

(assert (=> b!3611010 (= e!2234791 e!2234803)))

(declare-fun res!1460658 () Bool)

(assert (=> b!3611010 (=> res!1460658 e!2234803)))

(declare-fun lt!1243212 () Int)

(declare-fun lt!1243211 () BalanceConc!22776)

(declare-fun size!28974 (BalanceConc!22776) Int)

(assert (=> b!3611010 (= res!1460658 (<= lt!1243212 (size!28974 lt!1243211)))))

(declare-fun lt!1243218 () Unit!54190)

(declare-fun e!2234802 () Unit!54190)

(assert (=> b!3611010 (= lt!1243218 e!2234802)))

(declare-fun c!624729 () Bool)

(assert (=> b!3611010 (= c!624729 (isSeparator!5638 rule!403))))

(declare-fun lt!1243234 () Unit!54190)

(declare-fun e!2234805 () Unit!54190)

(assert (=> b!3611010 (= lt!1243234 e!2234805)))

(declare-fun c!624728 () Bool)

(declare-fun lt!1243231 () List!38128)

(declare-fun contains!7339 (List!38128 C!20980) Bool)

(assert (=> b!3611010 (= c!624728 (not (contains!7339 lt!1243231 lt!1243236)))))

(declare-fun lt!1243204 () List!38128)

(declare-fun head!7598 (List!38128) C!20980)

(assert (=> b!3611010 (= lt!1243236 (head!7598 lt!1243204))))

(declare-fun b!3611011 () Bool)

(assert (=> b!3611011 false))

(declare-fun lt!1243217 () Unit!54190)

(assert (=> b!3611011 (= lt!1243217 call!261026)))

(assert (=> b!3611011 (not call!261024)))

(declare-fun lt!1243215 () Unit!54190)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!226 (LexerInterface!5227 List!38129 List!38129 Rule!11076 Rule!11076 C!20980) Unit!54190)

(assert (=> b!3611011 (= lt!1243215 (lemmaSepRuleNotContainsCharContainedInANonSepRule!226 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8390 (_1!22084 lt!1243241)) lt!1243236))))

(declare-fun e!2234799 () Unit!54190)

(declare-fun Unit!54193 () Unit!54190)

(assert (=> b!3611011 (= e!2234799 Unit!54193)))

(declare-fun e!2234787 () Bool)

(assert (=> b!3611012 (= e!2234787 (and tp!1103757 tp!1103756))))

(declare-fun b!3611013 () Bool)

(declare-fun res!1460680 () Bool)

(assert (=> b!3611013 (=> (not res!1460680) (not e!2234812))))

(declare-fun anOtherTypeRule!33 () Rule!11076)

(assert (=> b!3611013 (= res!1460680 (not (= (isSeparator!5638 anOtherTypeRule!33) (isSeparator!5638 rule!403))))))

(declare-fun tp!1103758 () Bool)

(declare-fun b!3611014 () Bool)

(declare-fun e!2234786 () Bool)

(declare-fun e!2234782 () Bool)

(assert (=> b!3611014 (= e!2234786 (and tp!1103758 (inv!51375 (tag!6346 (h!43425 rules!3307))) (inv!51379 (transformation!5638 (h!43425 rules!3307))) e!2234782))))

(assert (=> b!3611015 (= e!2234784 (and tp!1103759 tp!1103766))))

(declare-fun b!3611016 () Bool)

(declare-fun e!2234788 () Bool)

(declare-fun lt!1243213 () Rule!11076)

(assert (=> b!3611016 (= e!2234788 (= (rule!8390 (_1!22084 lt!1243241)) lt!1243213))))

(declare-fun tp!1103767 () Bool)

(declare-fun b!3611017 () Bool)

(assert (=> b!3611017 (= e!2234785 (and tp!1103767 (inv!51375 (tag!6346 anOtherTypeRule!33)) (inv!51379 (transformation!5638 anOtherTypeRule!33)) e!2234787))))

(declare-fun b!3611018 () Bool)

(declare-fun res!1460679 () Bool)

(declare-fun e!2234810 () Bool)

(assert (=> b!3611018 (=> res!1460679 e!2234810)))

(declare-fun suffix!1395 () List!38128)

(declare-fun isEmpty!22442 (List!38128) Bool)

(assert (=> b!3611018 (= res!1460679 (isEmpty!22442 suffix!1395))))

(declare-fun b!3611019 () Bool)

(declare-fun e!2234796 () Bool)

(assert (=> b!3611019 (= e!2234812 e!2234796)))

(declare-fun res!1460677 () Bool)

(assert (=> b!3611019 (=> (not res!1460677) (not e!2234796))))

(declare-datatypes ((Option!7906 0))(
  ( (None!7905) (Some!7905 (v!37651 tuple2!37900)) )
))
(declare-fun lt!1243206 () Option!7906)

(declare-fun isDefined!6138 (Option!7906) Bool)

(assert (=> b!3611019 (= res!1460677 (isDefined!6138 lt!1243206))))

(declare-fun lt!1243209 () List!38128)

(declare-fun maxPrefix!2761 (LexerInterface!5227 List!38129 List!38128) Option!7906)

(assert (=> b!3611019 (= lt!1243206 (maxPrefix!2761 thiss!23823 rules!3307 lt!1243209))))

(declare-fun list!14018 (BalanceConc!22776) List!38128)

(assert (=> b!3611019 (= lt!1243209 (list!14018 lt!1243211))))

(declare-fun charsOf!3652 (Token!10642) BalanceConc!22776)

(assert (=> b!3611019 (= lt!1243211 (charsOf!3652 token!511))))

(declare-fun b!3611020 () Bool)

(declare-fun e!2234800 () Bool)

(assert (=> b!3611020 (= e!2234796 e!2234800)))

(declare-fun res!1460667 () Bool)

(assert (=> b!3611020 (=> (not res!1460667) (not e!2234800))))

(declare-fun lt!1243237 () tuple2!37900)

(assert (=> b!3611020 (= res!1460667 (= (_1!22084 lt!1243237) token!511))))

(declare-fun get!12335 (Option!7906) tuple2!37900)

(assert (=> b!3611020 (= lt!1243237 (get!12335 lt!1243206))))

(declare-fun b!3611021 () Bool)

(declare-fun res!1460671 () Bool)

(assert (=> b!3611021 (=> (not res!1460671) (not e!2234800))))

(assert (=> b!3611021 (= res!1460671 (= (rule!8390 token!511) rule!403))))

(declare-fun b!3611022 () Bool)

(declare-fun e!2234808 () Bool)

(assert (=> b!3611022 (= e!2234808 true)))

(declare-fun lt!1243205 () C!20980)

(assert (=> b!3611022 (not (contains!7339 (usedCharacters!852 (regex!5638 (rule!8390 (_1!22084 lt!1243241)))) lt!1243205))))

(declare-fun lt!1243221 () Unit!54190)

(assert (=> b!3611022 (= lt!1243221 (lemmaNonSepRuleNotContainsCharContainedInASepRule!344 thiss!23823 rules!3307 rules!3307 (rule!8390 (_1!22084 lt!1243241)) anOtherTypeRule!33 lt!1243205))))

(declare-fun b!3611023 () Bool)

(declare-fun res!1460666 () Bool)

(declare-fun e!2234798 () Bool)

(assert (=> b!3611023 (=> res!1460666 e!2234798)))

(declare-fun matchR!4966 (Regex!10397 List!38128) Bool)

(assert (=> b!3611023 (= res!1460666 (not (matchR!4966 (regex!5638 (rule!8390 (_1!22084 lt!1243241))) lt!1243204)))))

(declare-fun b!3611024 () Bool)

(declare-fun tp!1103760 () Bool)

(assert (=> b!3611024 (= e!2234794 (and e!2234786 tp!1103760))))

(declare-fun b!3611025 () Bool)

(declare-fun e!2234793 () Bool)

(assert (=> b!3611025 (= e!2234793 e!2234791)))

(declare-fun res!1460669 () Bool)

(assert (=> b!3611025 (=> res!1460669 e!2234791)))

(declare-fun lt!1243232 () Option!7906)

(declare-fun lt!1243220 () List!38128)

(assert (=> b!3611025 (= res!1460669 (or (not (= lt!1243220 (_2!22084 lt!1243241))) (not (= lt!1243232 (Some!7905 (tuple2!37901 (_1!22084 lt!1243241) lt!1243220))))))))

(assert (=> b!3611025 (= (_2!22084 lt!1243241) lt!1243220)))

(declare-fun lt!1243223 () List!38128)

(declare-fun lt!1243207 () Unit!54190)

(declare-fun lemmaSamePrefixThenSameSuffix!1356 (List!38128 List!38128 List!38128 List!38128 List!38128) Unit!54190)

(assert (=> b!3611025 (= lt!1243207 (lemmaSamePrefixThenSameSuffix!1356 lt!1243204 (_2!22084 lt!1243241) lt!1243204 lt!1243220 lt!1243223))))

(declare-fun getSuffix!1576 (List!38128 List!38128) List!38128)

(assert (=> b!3611025 (= lt!1243220 (getSuffix!1576 lt!1243223 lt!1243204))))

(declare-fun lt!1243227 () TokenValue!5868)

(declare-fun lt!1243233 () Int)

(assert (=> b!3611025 (= lt!1243232 (Some!7905 (tuple2!37901 (Token!10643 lt!1243227 (rule!8390 (_1!22084 lt!1243241)) lt!1243233 lt!1243204) (_2!22084 lt!1243241))))))

(declare-fun maxPrefixOneRule!1905 (LexerInterface!5227 Rule!11076 List!38128) Option!7906)

(assert (=> b!3611025 (= lt!1243232 (maxPrefixOneRule!1905 thiss!23823 (rule!8390 (_1!22084 lt!1243241)) lt!1243223))))

(declare-fun size!28975 (List!38128) Int)

(assert (=> b!3611025 (= lt!1243233 (size!28975 lt!1243204))))

(declare-fun apply!9144 (TokenValueInjection!11164 BalanceConc!22776) TokenValue!5868)

(declare-fun seqFromList!4191 (List!38128) BalanceConc!22776)

(assert (=> b!3611025 (= lt!1243227 (apply!9144 (transformation!5638 (rule!8390 (_1!22084 lt!1243241))) (seqFromList!4191 lt!1243204)))))

(declare-fun lt!1243208 () Unit!54190)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!977 (LexerInterface!5227 List!38129 List!38128 List!38128 List!38128 Rule!11076) Unit!54190)

(assert (=> b!3611025 (= lt!1243208 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!977 thiss!23823 rules!3307 lt!1243204 lt!1243223 (_2!22084 lt!1243241) (rule!8390 (_1!22084 lt!1243241))))))

(declare-fun b!3611026 () Bool)

(declare-fun tp_is_empty!17877 () Bool)

(declare-fun tp!1103765 () Bool)

(assert (=> b!3611026 (= e!2234789 (and tp_is_empty!17877 tp!1103765))))

(declare-fun b!3611027 () Bool)

(declare-fun Unit!54194 () Unit!54190)

(assert (=> b!3611027 (= e!2234805 Unit!54194)))

(declare-fun lt!1243224 () Unit!54190)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!622 (Regex!10397 List!38128 C!20980) Unit!54190)

(assert (=> b!3611027 (= lt!1243224 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!622 (regex!5638 rule!403) lt!1243209 lt!1243236))))

(assert (=> b!3611027 false))

(declare-fun b!3611028 () Bool)

(declare-fun e!2234797 () Bool)

(assert (=> b!3611028 (= e!2234797 e!2234798)))

(declare-fun res!1460676 () Bool)

(assert (=> b!3611028 (=> res!1460676 e!2234798)))

(declare-fun isPrefix!3001 (List!38128 List!38128) Bool)

(assert (=> b!3611028 (= res!1460676 (not (isPrefix!3001 lt!1243204 lt!1243223)))))

(declare-fun ++!9454 (List!38128 List!38128) List!38128)

(assert (=> b!3611028 (isPrefix!3001 lt!1243204 (++!9454 lt!1243204 (_2!22084 lt!1243241)))))

(declare-fun lt!1243225 () Unit!54190)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1922 (List!38128 List!38128) Unit!54190)

(assert (=> b!3611028 (= lt!1243225 (lemmaConcatTwoListThenFirstIsPrefix!1922 lt!1243204 (_2!22084 lt!1243241)))))

(declare-fun lt!1243239 () BalanceConc!22776)

(assert (=> b!3611028 (= lt!1243204 (list!14018 lt!1243239))))

(assert (=> b!3611028 (= lt!1243239 (charsOf!3652 (_1!22084 lt!1243241)))))

(declare-fun e!2234801 () Bool)

(assert (=> b!3611028 e!2234801))

(declare-fun res!1460665 () Bool)

(assert (=> b!3611028 (=> (not res!1460665) (not e!2234801))))

(declare-datatypes ((Option!7907 0))(
  ( (None!7906) (Some!7906 (v!37652 Rule!11076)) )
))
(declare-fun lt!1243222 () Option!7907)

(declare-fun isDefined!6139 (Option!7907) Bool)

(assert (=> b!3611028 (= res!1460665 (isDefined!6139 lt!1243222))))

(declare-fun getRuleFromTag!1244 (LexerInterface!5227 List!38129 String!42674) Option!7907)

(assert (=> b!3611028 (= lt!1243222 (getRuleFromTag!1244 thiss!23823 rules!3307 (tag!6346 (rule!8390 (_1!22084 lt!1243241)))))))

(declare-fun lt!1243235 () Unit!54190)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1244 (LexerInterface!5227 List!38129 List!38128 Token!10642) Unit!54190)

(assert (=> b!3611028 (= lt!1243235 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1244 thiss!23823 rules!3307 lt!1243223 (_1!22084 lt!1243241)))))

(declare-fun lt!1243214 () Option!7906)

(assert (=> b!3611028 (= lt!1243241 (get!12335 lt!1243214))))

(declare-fun lt!1243210 () Unit!54190)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!907 (LexerInterface!5227 List!38129 List!38128 List!38128) Unit!54190)

(assert (=> b!3611028 (= lt!1243210 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!907 thiss!23823 rules!3307 lt!1243209 suffix!1395))))

(assert (=> b!3611028 (= lt!1243214 (maxPrefix!2761 thiss!23823 rules!3307 lt!1243223))))

(assert (=> b!3611028 (isPrefix!3001 lt!1243209 lt!1243223)))

(declare-fun lt!1243240 () Unit!54190)

(assert (=> b!3611028 (= lt!1243240 (lemmaConcatTwoListThenFirstIsPrefix!1922 lt!1243209 suffix!1395))))

(assert (=> b!3611028 (= lt!1243223 (++!9454 lt!1243209 suffix!1395))))

(declare-fun b!3611029 () Bool)

(assert (=> b!3611029 (= e!2234800 (not e!2234810))))

(declare-fun res!1460668 () Bool)

(assert (=> b!3611029 (=> res!1460668 e!2234810)))

(assert (=> b!3611029 (= res!1460668 (not (matchR!4966 (regex!5638 rule!403) lt!1243209)))))

(declare-fun ruleValid!1903 (LexerInterface!5227 Rule!11076) Bool)

(assert (=> b!3611029 (ruleValid!1903 thiss!23823 rule!403)))

(declare-fun lt!1243242 () Unit!54190)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1058 (LexerInterface!5227 Rule!11076 List!38129) Unit!54190)

(assert (=> b!3611029 (= lt!1243242 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1058 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3611030 () Bool)

(assert (=> b!3611030 (= e!2234802 e!2234799)))

(declare-fun c!624727 () Bool)

(assert (=> b!3611030 (= c!624727 (isSeparator!5638 (rule!8390 (_1!22084 lt!1243241))))))

(declare-fun b!3611031 () Bool)

(assert (=> b!3611031 (= e!2234810 e!2234797)))

(declare-fun res!1460673 () Bool)

(assert (=> b!3611031 (=> res!1460673 e!2234797)))

(assert (=> b!3611031 (= res!1460673 (contains!7339 lt!1243231 lt!1243205))))

(assert (=> b!3611031 (= lt!1243205 (head!7598 suffix!1395))))

(assert (=> b!3611031 (= lt!1243231 (usedCharacters!852 (regex!5638 rule!403)))))

(declare-fun b!3611032 () Bool)

(declare-fun res!1460659 () Bool)

(assert (=> b!3611032 (=> res!1460659 e!2234797)))

(declare-fun sepAndNonSepRulesDisjointChars!1808 (List!38129 List!38129) Bool)

(assert (=> b!3611032 (= res!1460659 (not (sepAndNonSepRulesDisjointChars!1808 rules!3307 rules!3307)))))

(declare-fun b!3611033 () Bool)

(assert (=> b!3611033 (= e!2234803 e!2234808)))

(declare-fun res!1460678 () Bool)

(assert (=> b!3611033 (=> res!1460678 e!2234808)))

(assert (=> b!3611033 (= res!1460678 (isSeparator!5638 rule!403))))

(assert (=> b!3611033 (contains!7339 lt!1243204 lt!1243205)))

(declare-fun lt!1243216 () Unit!54190)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!16 (List!38128 List!38128 List!38128 List!38128) Unit!54190)

(assert (=> b!3611033 (= lt!1243216 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!16 lt!1243209 suffix!1395 lt!1243204 lt!1243223))))

(declare-fun b!3611034 () Bool)

(declare-fun res!1460675 () Bool)

(assert (=> b!3611034 (=> (not res!1460675) (not e!2234812))))

(declare-fun isEmpty!22443 (List!38129) Bool)

(assert (=> b!3611034 (= res!1460675 (not (isEmpty!22443 rules!3307)))))

(declare-fun b!3611035 () Bool)

(declare-fun res!1460670 () Bool)

(assert (=> b!3611035 (=> (not res!1460670) (not e!2234812))))

(declare-fun rulesInvariant!4624 (LexerInterface!5227 List!38129) Bool)

(assert (=> b!3611035 (= res!1460670 (rulesInvariant!4624 thiss!23823 rules!3307))))

(assert (=> b!3611036 (= e!2234782 (and tp!1103762 tp!1103769))))

(declare-fun bm!261020 () Bool)

(assert (=> bm!261020 (= call!261024 (contains!7339 call!261025 lt!1243236))))

(declare-fun b!3611037 () Bool)

(declare-fun Unit!54195 () Unit!54190)

(assert (=> b!3611037 (= e!2234799 Unit!54195)))

(declare-fun b!3611038 () Bool)

(declare-fun res!1460660 () Bool)

(assert (=> b!3611038 (=> (not res!1460660) (not e!2234800))))

(assert (=> b!3611038 (= res!1460660 (isEmpty!22442 (_2!22084 lt!1243237)))))

(declare-fun b!3611039 () Bool)

(declare-fun tp!1103763 () Bool)

(declare-fun e!2234795 () Bool)

(declare-fun inv!21 (TokenValue!5868) Bool)

(assert (=> b!3611039 (= e!2234806 (and (inv!21 (value!181143 token!511)) e!2234795 tp!1103763))))

(declare-fun b!3611040 () Bool)

(declare-fun res!1460664 () Bool)

(assert (=> b!3611040 (=> res!1460664 e!2234797)))

(assert (=> b!3611040 (= res!1460664 (not (contains!7339 (usedCharacters!852 (regex!5638 anOtherTypeRule!33)) lt!1243205)))))

(declare-fun b!3611041 () Bool)

(declare-fun Unit!54196 () Unit!54190)

(assert (=> b!3611041 (= e!2234805 Unit!54196)))

(declare-fun b!3611042 () Bool)

(declare-fun res!1460674 () Bool)

(assert (=> b!3611042 (=> (not res!1460674) (not e!2234812))))

(declare-fun contains!7340 (List!38129 Rule!11076) Bool)

(assert (=> b!3611042 (= res!1460674 (contains!7340 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3611043 () Bool)

(assert (=> b!3611043 (= e!2234802 e!2234783)))

(declare-fun c!624726 () Bool)

(assert (=> b!3611043 (= c!624726 (not (isSeparator!5638 (rule!8390 (_1!22084 lt!1243241)))))))

(declare-fun b!3611044 () Bool)

(declare-fun Unit!54197 () Unit!54190)

(assert (=> b!3611044 (= e!2234783 Unit!54197)))

(declare-fun bm!261021 () Bool)

(assert (=> bm!261021 (= call!261026 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!622 (regex!5638 (rule!8390 (_1!22084 lt!1243241))) lt!1243204 lt!1243236))))

(declare-fun b!3611045 () Bool)

(declare-fun tp!1103770 () Bool)

(assert (=> b!3611045 (= e!2234795 (and tp!1103770 (inv!51375 (tag!6346 (rule!8390 token!511))) (inv!51379 (transformation!5638 (rule!8390 token!511))) e!2234811))))

(declare-fun b!3611046 () Bool)

(assert (=> b!3611046 (= e!2234798 e!2234793)))

(declare-fun res!1460672 () Bool)

(assert (=> b!3611046 (=> res!1460672 e!2234793)))

(declare-fun lt!1243229 () TokenValue!5868)

(assert (=> b!3611046 (= res!1460672 (not (= lt!1243214 (Some!7905 (tuple2!37901 (Token!10643 lt!1243229 (rule!8390 (_1!22084 lt!1243241)) lt!1243212 lt!1243204) (_2!22084 lt!1243241))))))))

(assert (=> b!3611046 (= lt!1243212 (size!28974 lt!1243239))))

(assert (=> b!3611046 (= lt!1243229 (apply!9144 (transformation!5638 (rule!8390 (_1!22084 lt!1243241))) lt!1243239))))

(declare-fun lt!1243238 () Unit!54190)

(declare-fun lemmaCharactersSize!691 (Token!10642) Unit!54190)

(assert (=> b!3611046 (= lt!1243238 (lemmaCharactersSize!691 (_1!22084 lt!1243241)))))

(declare-fun lt!1243219 () Unit!54190)

(declare-fun lemmaEqSameImage!829 (TokenValueInjection!11164 BalanceConc!22776 BalanceConc!22776) Unit!54190)

(assert (=> b!3611046 (= lt!1243219 (lemmaEqSameImage!829 (transformation!5638 (rule!8390 (_1!22084 lt!1243241))) lt!1243239 (seqFromList!4191 (originalCharacters!6352 (_1!22084 lt!1243241)))))))

(declare-fun lt!1243228 () Unit!54190)

(declare-fun lemmaSemiInverse!1395 (TokenValueInjection!11164 BalanceConc!22776) Unit!54190)

(assert (=> b!3611046 (= lt!1243228 (lemmaSemiInverse!1395 (transformation!5638 (rule!8390 (_1!22084 lt!1243241))) lt!1243239))))

(declare-fun b!3611047 () Bool)

(declare-fun res!1460661 () Bool)

(assert (=> b!3611047 (=> (not res!1460661) (not e!2234812))))

(assert (=> b!3611047 (= res!1460661 (contains!7340 rules!3307 rule!403))))

(declare-fun b!3611048 () Bool)

(assert (=> b!3611048 (= e!2234801 e!2234788)))

(declare-fun res!1460663 () Bool)

(assert (=> b!3611048 (=> (not res!1460663) (not e!2234788))))

(assert (=> b!3611048 (= res!1460663 (matchR!4966 (regex!5638 lt!1243213) (list!14018 (charsOf!3652 (_1!22084 lt!1243241)))))))

(declare-fun get!12336 (Option!7907) Rule!11076)

(assert (=> b!3611048 (= lt!1243213 (get!12336 lt!1243222))))

(assert (= (and start!336234 res!1460662) b!3611034))

(assert (= (and b!3611034 res!1460675) b!3611035))

(assert (= (and b!3611035 res!1460670) b!3611047))

(assert (= (and b!3611047 res!1460661) b!3611042))

(assert (= (and b!3611042 res!1460674) b!3611013))

(assert (= (and b!3611013 res!1460680) b!3611019))

(assert (= (and b!3611019 res!1460677) b!3611020))

(assert (= (and b!3611020 res!1460667) b!3611038))

(assert (= (and b!3611038 res!1460660) b!3611021))

(assert (= (and b!3611021 res!1460671) b!3611029))

(assert (= (and b!3611029 (not res!1460668)) b!3611018))

(assert (= (and b!3611018 (not res!1460679)) b!3611031))

(assert (= (and b!3611031 (not res!1460673)) b!3611040))

(assert (= (and b!3611040 (not res!1460664)) b!3611032))

(assert (= (and b!3611032 (not res!1460659)) b!3611028))

(assert (= (and b!3611028 res!1460665) b!3611048))

(assert (= (and b!3611048 res!1460663) b!3611016))

(assert (= (and b!3611028 (not res!1460676)) b!3611023))

(assert (= (and b!3611023 (not res!1460666)) b!3611046))

(assert (= (and b!3611046 (not res!1460672)) b!3611025))

(assert (= (and b!3611025 (not res!1460669)) b!3611010))

(assert (= (and b!3611010 c!624728) b!3611027))

(assert (= (and b!3611010 (not c!624728)) b!3611041))

(assert (= (and b!3611010 c!624729) b!3611043))

(assert (= (and b!3611010 (not c!624729)) b!3611030))

(assert (= (and b!3611043 c!624726) b!3611007))

(assert (= (and b!3611043 (not c!624726)) b!3611044))

(assert (= (and b!3611030 c!624727) b!3611011))

(assert (= (and b!3611030 (not c!624727)) b!3611037))

(assert (= (or b!3611007 b!3611011) bm!261021))

(assert (= (or b!3611007 b!3611011) bm!261019))

(assert (= (or b!3611007 b!3611011) bm!261020))

(assert (= (and b!3611010 (not res!1460658)) b!3611033))

(assert (= (and b!3611033 (not res!1460678)) b!3611022))

(assert (= b!3611014 b!3611036))

(assert (= b!3611024 b!3611014))

(assert (= (and start!336234 ((_ is Cons!38005) rules!3307)) b!3611024))

(assert (= (and start!336234 ((_ is Cons!38004) suffix!1395)) b!3611026))

(assert (= b!3611045 b!3611008))

(assert (= b!3611039 b!3611045))

(assert (= start!336234 b!3611039))

(assert (= b!3611009 b!3611015))

(assert (= start!336234 b!3611009))

(assert (= b!3611017 b!3611012))

(assert (= start!336234 b!3611017))

(declare-fun m!4108731 () Bool)

(assert (=> b!3611048 m!4108731))

(assert (=> b!3611048 m!4108731))

(declare-fun m!4108733 () Bool)

(assert (=> b!3611048 m!4108733))

(assert (=> b!3611048 m!4108733))

(declare-fun m!4108735 () Bool)

(assert (=> b!3611048 m!4108735))

(declare-fun m!4108737 () Bool)

(assert (=> b!3611048 m!4108737))

(declare-fun m!4108739 () Bool)

(assert (=> b!3611027 m!4108739))

(declare-fun m!4108741 () Bool)

(assert (=> b!3611009 m!4108741))

(declare-fun m!4108743 () Bool)

(assert (=> b!3611009 m!4108743))

(declare-fun m!4108745 () Bool)

(assert (=> b!3611025 m!4108745))

(declare-fun m!4108747 () Bool)

(assert (=> b!3611025 m!4108747))

(assert (=> b!3611025 m!4108745))

(declare-fun m!4108749 () Bool)

(assert (=> b!3611025 m!4108749))

(declare-fun m!4108751 () Bool)

(assert (=> b!3611025 m!4108751))

(declare-fun m!4108753 () Bool)

(assert (=> b!3611025 m!4108753))

(declare-fun m!4108755 () Bool)

(assert (=> b!3611025 m!4108755))

(declare-fun m!4108757 () Bool)

(assert (=> b!3611025 m!4108757))

(declare-fun m!4108759 () Bool)

(assert (=> b!3611017 m!4108759))

(declare-fun m!4108761 () Bool)

(assert (=> b!3611017 m!4108761))

(declare-fun m!4108763 () Bool)

(assert (=> b!3611018 m!4108763))

(declare-fun m!4108765 () Bool)

(assert (=> b!3611022 m!4108765))

(assert (=> b!3611022 m!4108765))

(declare-fun m!4108767 () Bool)

(assert (=> b!3611022 m!4108767))

(declare-fun m!4108769 () Bool)

(assert (=> b!3611022 m!4108769))

(declare-fun m!4108771 () Bool)

(assert (=> b!3611031 m!4108771))

(declare-fun m!4108773 () Bool)

(assert (=> b!3611031 m!4108773))

(declare-fun m!4108775 () Bool)

(assert (=> b!3611031 m!4108775))

(declare-fun m!4108777 () Bool)

(assert (=> b!3611019 m!4108777))

(declare-fun m!4108779 () Bool)

(assert (=> b!3611019 m!4108779))

(declare-fun m!4108781 () Bool)

(assert (=> b!3611019 m!4108781))

(declare-fun m!4108783 () Bool)

(assert (=> b!3611019 m!4108783))

(declare-fun m!4108785 () Bool)

(assert (=> b!3611011 m!4108785))

(declare-fun m!4108787 () Bool)

(assert (=> b!3611047 m!4108787))

(declare-fun m!4108789 () Bool)

(assert (=> start!336234 m!4108789))

(declare-fun m!4108791 () Bool)

(assert (=> b!3611046 m!4108791))

(declare-fun m!4108793 () Bool)

(assert (=> b!3611046 m!4108793))

(declare-fun m!4108795 () Bool)

(assert (=> b!3611046 m!4108795))

(declare-fun m!4108797 () Bool)

(assert (=> b!3611046 m!4108797))

(declare-fun m!4108799 () Bool)

(assert (=> b!3611046 m!4108799))

(declare-fun m!4108801 () Bool)

(assert (=> b!3611046 m!4108801))

(assert (=> b!3611046 m!4108799))

(declare-fun m!4108803 () Bool)

(assert (=> b!3611007 m!4108803))

(declare-fun m!4108805 () Bool)

(assert (=> b!3611020 m!4108805))

(declare-fun m!4108807 () Bool)

(assert (=> b!3611023 m!4108807))

(assert (=> bm!261019 m!4108765))

(declare-fun m!4108809 () Bool)

(assert (=> b!3611029 m!4108809))

(declare-fun m!4108811 () Bool)

(assert (=> b!3611029 m!4108811))

(declare-fun m!4108813 () Bool)

(assert (=> b!3611029 m!4108813))

(declare-fun m!4108815 () Bool)

(assert (=> b!3611042 m!4108815))

(declare-fun m!4108817 () Bool)

(assert (=> bm!261021 m!4108817))

(declare-fun m!4108819 () Bool)

(assert (=> b!3611039 m!4108819))

(declare-fun m!4108821 () Bool)

(assert (=> b!3611010 m!4108821))

(declare-fun m!4108823 () Bool)

(assert (=> b!3611010 m!4108823))

(declare-fun m!4108825 () Bool)

(assert (=> b!3611010 m!4108825))

(declare-fun m!4108827 () Bool)

(assert (=> b!3611032 m!4108827))

(declare-fun m!4108829 () Bool)

(assert (=> b!3611028 m!4108829))

(declare-fun m!4108831 () Bool)

(assert (=> b!3611028 m!4108831))

(declare-fun m!4108833 () Bool)

(assert (=> b!3611028 m!4108833))

(declare-fun m!4108835 () Bool)

(assert (=> b!3611028 m!4108835))

(declare-fun m!4108837 () Bool)

(assert (=> b!3611028 m!4108837))

(declare-fun m!4108839 () Bool)

(assert (=> b!3611028 m!4108839))

(declare-fun m!4108841 () Bool)

(assert (=> b!3611028 m!4108841))

(declare-fun m!4108843 () Bool)

(assert (=> b!3611028 m!4108843))

(assert (=> b!3611028 m!4108833))

(declare-fun m!4108845 () Bool)

(assert (=> b!3611028 m!4108845))

(declare-fun m!4108847 () Bool)

(assert (=> b!3611028 m!4108847))

(declare-fun m!4108849 () Bool)

(assert (=> b!3611028 m!4108849))

(declare-fun m!4108851 () Bool)

(assert (=> b!3611028 m!4108851))

(assert (=> b!3611028 m!4108731))

(declare-fun m!4108853 () Bool)

(assert (=> b!3611028 m!4108853))

(declare-fun m!4108855 () Bool)

(assert (=> b!3611028 m!4108855))

(declare-fun m!4108857 () Bool)

(assert (=> b!3611038 m!4108857))

(declare-fun m!4108859 () Bool)

(assert (=> b!3611033 m!4108859))

(declare-fun m!4108861 () Bool)

(assert (=> b!3611033 m!4108861))

(declare-fun m!4108863 () Bool)

(assert (=> b!3611035 m!4108863))

(declare-fun m!4108865 () Bool)

(assert (=> bm!261020 m!4108865))

(declare-fun m!4108867 () Bool)

(assert (=> b!3611034 m!4108867))

(declare-fun m!4108869 () Bool)

(assert (=> b!3611040 m!4108869))

(assert (=> b!3611040 m!4108869))

(declare-fun m!4108871 () Bool)

(assert (=> b!3611040 m!4108871))

(declare-fun m!4108873 () Bool)

(assert (=> b!3611014 m!4108873))

(declare-fun m!4108875 () Bool)

(assert (=> b!3611014 m!4108875))

(declare-fun m!4108877 () Bool)

(assert (=> b!3611045 m!4108877))

(declare-fun m!4108879 () Bool)

(assert (=> b!3611045 m!4108879))

(check-sat (not b!3611032) (not b!3611025) (not b!3611014) (not b!3611018) tp_is_empty!17877 (not b!3611026) (not b!3611038) (not b_next!94449) (not b!3611034) (not b!3611047) (not start!336234) (not b!3611017) (not b_next!94451) (not b!3611031) (not b!3611024) (not b!3611010) (not b_next!94453) b_and!263363 (not bm!261020) (not b!3611022) (not b!3611007) (not b_next!94457) (not b!3611033) (not b_next!94459) (not b!3611048) (not b!3611019) (not b!3611020) (not b!3611040) b_and!263365 (not b!3611028) (not b!3611023) (not b!3611029) (not b!3611045) b_and!263377 (not b!3611039) (not bm!261021) (not b_next!94461) (not b!3611046) (not bm!261019) (not b_next!94463) (not b!3611042) (not b!3611027) (not b!3611035) b_and!263373 b_and!263371 (not b!3611011) (not b_next!94455) b_and!263369 b_and!263375 (not b!3611009) b_and!263367)
(check-sat (not b_next!94451) b_and!263365 b_and!263377 (not b_next!94449) (not b_next!94461) (not b_next!94463) (not b_next!94453) b_and!263363 (not b_next!94457) (not b_next!94459) b_and!263373 b_and!263371 (not b_next!94455) b_and!263369 b_and!263375 b_and!263367)
