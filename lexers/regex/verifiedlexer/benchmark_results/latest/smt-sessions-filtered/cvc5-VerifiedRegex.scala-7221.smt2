; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!384586 () Bool)

(assert start!384586)

(declare-fun b!4074052 () Bool)

(declare-fun b_free!113473 () Bool)

(declare-fun b_next!114177 () Bool)

(assert (=> b!4074052 (= b_free!113473 (not b_next!114177))))

(declare-fun tp!1233169 () Bool)

(declare-fun b_and!313147 () Bool)

(assert (=> b!4074052 (= tp!1233169 b_and!313147)))

(declare-fun b_free!113475 () Bool)

(declare-fun b_next!114179 () Bool)

(assert (=> b!4074052 (= b_free!113475 (not b_next!114179))))

(declare-fun tp!1233164 () Bool)

(declare-fun b_and!313149 () Bool)

(assert (=> b!4074052 (= tp!1233164 b_and!313149)))

(declare-fun b!4074040 () Bool)

(declare-fun b_free!113477 () Bool)

(declare-fun b_next!114181 () Bool)

(assert (=> b!4074040 (= b_free!113477 (not b_next!114181))))

(declare-fun tp!1233163 () Bool)

(declare-fun b_and!313151 () Bool)

(assert (=> b!4074040 (= tp!1233163 b_and!313151)))

(declare-fun b_free!113479 () Bool)

(declare-fun b_next!114183 () Bool)

(assert (=> b!4074040 (= b_free!113479 (not b_next!114183))))

(declare-fun tp!1233167 () Bool)

(declare-fun b_and!313153 () Bool)

(assert (=> b!4074040 (= tp!1233167 b_and!313153)))

(declare-fun b!4074033 () Bool)

(declare-fun res!1663756 () Bool)

(declare-fun e!2528599 () Bool)

(assert (=> b!4074033 (=> (not res!1663756) (not e!2528599))))

(declare-datatypes ((C!24022 0))(
  ( (C!24023 (val!14121 Int)) )
))
(declare-datatypes ((Regex!11918 0))(
  ( (ElementMatch!11918 (c!702971 C!24022)) (Concat!19161 (regOne!24348 Regex!11918) (regTwo!24348 Regex!11918)) (EmptyExpr!11918) (Star!11918 (reg!12247 Regex!11918)) (EmptyLang!11918) (Union!11918 (regOne!24349 Regex!11918) (regTwo!24349 Regex!11918)) )
))
(declare-datatypes ((String!49966 0))(
  ( (String!49967 (value!220498 String)) )
))
(declare-datatypes ((List!43698 0))(
  ( (Nil!43574) (Cons!43574 (h!48994 (_ BitVec 16)) (t!337225 List!43698)) )
))
(declare-datatypes ((TokenValue!7243 0))(
  ( (FloatLiteralValue!14486 (text!51146 List!43698)) (TokenValueExt!7242 (__x!26703 Int)) (Broken!36215 (value!220499 List!43698)) (Object!7366) (End!7243) (Def!7243) (Underscore!7243) (Match!7243) (Else!7243) (Error!7243) (Case!7243) (If!7243) (Extends!7243) (Abstract!7243) (Class!7243) (Val!7243) (DelimiterValue!14486 (del!7303 List!43698)) (KeywordValue!7249 (value!220500 List!43698)) (CommentValue!14486 (value!220501 List!43698)) (WhitespaceValue!14486 (value!220502 List!43698)) (IndentationValue!7243 (value!220503 List!43698)) (String!49968) (Int32!7243) (Broken!36216 (value!220504 List!43698)) (Boolean!7244) (Unit!63123) (OperatorValue!7246 (op!7303 List!43698)) (IdentifierValue!14486 (value!220505 List!43698)) (IdentifierValue!14487 (value!220506 List!43698)) (WhitespaceValue!14487 (value!220507 List!43698)) (True!14486) (False!14486) (Broken!36217 (value!220508 List!43698)) (Broken!36218 (value!220509 List!43698)) (True!14487) (RightBrace!7243) (RightBracket!7243) (Colon!7243) (Null!7243) (Comma!7243) (LeftBracket!7243) (False!14487) (LeftBrace!7243) (ImaginaryLiteralValue!7243 (text!51147 List!43698)) (StringLiteralValue!21729 (value!220510 List!43698)) (EOFValue!7243 (value!220511 List!43698)) (IdentValue!7243 (value!220512 List!43698)) (DelimiterValue!14487 (value!220513 List!43698)) (DedentValue!7243 (value!220514 List!43698)) (NewLineValue!7243 (value!220515 List!43698)) (IntegerValue!21729 (value!220516 (_ BitVec 32)) (text!51148 List!43698)) (IntegerValue!21730 (value!220517 Int) (text!51149 List!43698)) (Times!7243) (Or!7243) (Equal!7243) (Minus!7243) (Broken!36219 (value!220518 List!43698)) (And!7243) (Div!7243) (LessEqual!7243) (Mod!7243) (Concat!19162) (Not!7243) (Plus!7243) (SpaceValue!7243 (value!220519 List!43698)) (IntegerValue!21731 (value!220520 Int) (text!51150 List!43698)) (StringLiteralValue!21730 (text!51151 List!43698)) (FloatLiteralValue!14487 (text!51152 List!43698)) (BytesLiteralValue!7243 (value!220521 List!43698)) (CommentValue!14487 (value!220522 List!43698)) (StringLiteralValue!21731 (value!220523 List!43698)) (ErrorTokenValue!7243 (msg!7304 List!43698)) )
))
(declare-datatypes ((List!43699 0))(
  ( (Nil!43575) (Cons!43575 (h!48995 C!24022) (t!337226 List!43699)) )
))
(declare-datatypes ((IArray!26453 0))(
  ( (IArray!26454 (innerList!13284 List!43699)) )
))
(declare-datatypes ((Conc!13224 0))(
  ( (Node!13224 (left!32757 Conc!13224) (right!33087 Conc!13224) (csize!26678 Int) (cheight!13435 Int)) (Leaf!20446 (xs!16530 IArray!26453) (csize!26679 Int)) (Empty!13224) )
))
(declare-datatypes ((BalanceConc!26042 0))(
  ( (BalanceConc!26043 (c!702972 Conc!13224)) )
))
(declare-datatypes ((TokenValueInjection!13914 0))(
  ( (TokenValueInjection!13915 (toValue!9577 Int) (toChars!9436 Int)) )
))
(declare-datatypes ((Rule!13826 0))(
  ( (Rule!13827 (regex!7013 Regex!11918) (tag!7873 String!49966) (isSeparator!7013 Bool) (transformation!7013 TokenValueInjection!13914)) )
))
(declare-datatypes ((List!43700 0))(
  ( (Nil!43576) (Cons!43576 (h!48996 Rule!13826) (t!337227 List!43700)) )
))
(declare-fun rules!3870 () List!43700)

(declare-fun isEmpty!26010 (List!43700) Bool)

(assert (=> b!4074033 (= res!1663756 (not (isEmpty!26010 rules!3870)))))

(declare-fun res!1663747 () Bool)

(assert (=> start!384586 (=> (not res!1663747) (not e!2528599))))

(declare-datatypes ((LexerInterface!6602 0))(
  ( (LexerInterfaceExt!6599 (__x!26704 Int)) (Lexer!6600) )
))
(declare-fun thiss!26199 () LexerInterface!6602)

(assert (=> start!384586 (= res!1663747 (is-Lexer!6600 thiss!26199))))

(assert (=> start!384586 e!2528599))

(assert (=> start!384586 true))

(declare-fun e!2528607 () Bool)

(assert (=> start!384586 e!2528607))

(declare-fun e!2528601 () Bool)

(assert (=> start!384586 e!2528601))

(declare-fun e!2528606 () Bool)

(assert (=> start!384586 e!2528606))

(declare-fun e!2528612 () Bool)

(assert (=> start!384586 e!2528612))

(declare-fun e!2528597 () Bool)

(assert (=> start!384586 e!2528597))

(declare-fun b!4074034 () Bool)

(declare-fun e!2528611 () Bool)

(declare-datatypes ((Token!13152 0))(
  ( (Token!13153 (value!220524 TokenValue!7243) (rule!10117 Rule!13826) (size!32557 Int) (originalCharacters!7607 List!43699)) )
))
(declare-datatypes ((tuple2!42568 0))(
  ( (tuple2!42569 (_1!24418 Token!13152) (_2!24418 List!43699)) )
))
(declare-datatypes ((Option!9421 0))(
  ( (None!9420) (Some!9420 (v!39860 tuple2!42568)) )
))
(declare-fun lt!1458078 () Option!9421)

(declare-fun get!14288 (Option!9421) tuple2!42568)

(assert (=> b!4074034 (= e!2528611 (not (= (rule!10117 (_1!24418 (get!14288 lt!1458078))) (h!48996 rules!3870))))))

(declare-fun tp!1233166 () Bool)

(declare-fun e!2528600 () Bool)

(declare-fun b!4074035 () Bool)

(declare-fun e!2528603 () Bool)

(declare-fun inv!58225 (String!49966) Bool)

(declare-fun inv!58228 (TokenValueInjection!13914) Bool)

(assert (=> b!4074035 (= e!2528603 (and tp!1233166 (inv!58225 (tag!7873 (h!48996 rules!3870))) (inv!58228 (transformation!7013 (h!48996 rules!3870))) e!2528600))))

(declare-fun b!4074036 () Bool)

(declare-fun res!1663752 () Bool)

(assert (=> b!4074036 (=> (not res!1663752) (not e!2528599))))

(declare-fun suffix!1518 () List!43699)

(declare-fun p!2988 () List!43699)

(declare-fun input!3411 () List!43699)

(declare-fun ++!11419 (List!43699 List!43699) List!43699)

(assert (=> b!4074036 (= res!1663752 (= input!3411 (++!11419 p!2988 suffix!1518)))))

(declare-fun b!4074037 () Bool)

(declare-fun tp_is_empty!20839 () Bool)

(declare-fun tp!1233165 () Bool)

(assert (=> b!4074037 (= e!2528607 (and tp_is_empty!20839 tp!1233165))))

(declare-fun b!4074038 () Bool)

(declare-fun tp!1233171 () Bool)

(assert (=> b!4074038 (= e!2528601 (and e!2528603 tp!1233171))))

(declare-fun b!4074039 () Bool)

(declare-fun e!2528608 () Bool)

(declare-fun e!2528598 () Bool)

(assert (=> b!4074039 (= e!2528608 e!2528598)))

(declare-fun res!1663750 () Bool)

(assert (=> b!4074039 (=> res!1663750 e!2528598)))

(declare-fun lt!1458080 () Bool)

(assert (=> b!4074039 (= res!1663750 lt!1458080)))

(assert (=> b!4074039 e!2528611))

(declare-fun res!1663748 () Bool)

(assert (=> b!4074039 (=> res!1663748 e!2528611)))

(assert (=> b!4074039 (= res!1663748 lt!1458080)))

(declare-fun isEmpty!26011 (Option!9421) Bool)

(assert (=> b!4074039 (= lt!1458080 (isEmpty!26011 lt!1458078))))

(declare-fun maxPrefix!3894 (LexerInterface!6602 List!43700 List!43699) Option!9421)

(assert (=> b!4074039 (= lt!1458078 (maxPrefix!3894 thiss!26199 (t!337227 rules!3870) input!3411))))

(declare-datatypes ((Unit!63124 0))(
  ( (Unit!63125) )
))
(declare-fun lt!1458074 () Unit!63124)

(declare-fun lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!7 (LexerInterface!6602 Rule!13826 List!43700 List!43699) Unit!63124)

(assert (=> b!4074039 (= lt!1458074 (lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!7 thiss!26199 (h!48996 rules!3870) (t!337227 rules!3870) input!3411))))

(assert (=> b!4074040 (= e!2528600 (and tp!1233163 tp!1233167))))

(declare-fun b!4074041 () Bool)

(declare-fun res!1663758 () Bool)

(assert (=> b!4074041 (=> (not res!1663758) (not e!2528599))))

(declare-fun isEmpty!26012 (List!43699) Bool)

(assert (=> b!4074041 (= res!1663758 (not (isEmpty!26012 p!2988)))))

(declare-fun b!4074042 () Bool)

(declare-fun res!1663755 () Bool)

(declare-fun e!2528605 () Bool)

(assert (=> b!4074042 (=> res!1663755 e!2528605)))

(declare-fun r!4213 () Rule!13826)

(assert (=> b!4074042 (= res!1663755 (or (not (is-Cons!43576 rules!3870)) (not (= (h!48996 rules!3870) r!4213))))))

(declare-fun b!4074043 () Bool)

(declare-fun tp!1233170 () Bool)

(assert (=> b!4074043 (= e!2528606 (and tp_is_empty!20839 tp!1233170))))

(declare-fun b!4074044 () Bool)

(declare-fun res!1663754 () Bool)

(assert (=> b!4074044 (=> (not res!1663754) (not e!2528599))))

(declare-fun rulesInvariant!5945 (LexerInterface!6602 List!43700) Bool)

(assert (=> b!4074044 (= res!1663754 (rulesInvariant!5945 thiss!26199 rules!3870))))

(declare-fun b!4074045 () Bool)

(declare-fun rulesValidInductive!2574 (LexerInterface!6602 List!43700) Bool)

(assert (=> b!4074045 (= e!2528598 (rulesValidInductive!2574 thiss!26199 (t!337227 rules!3870)))))

(declare-fun b!4074046 () Bool)

(declare-fun res!1663753 () Bool)

(assert (=> b!4074046 (=> (not res!1663753) (not e!2528599))))

(declare-fun contains!8680 (List!43700 Rule!13826) Bool)

(assert (=> b!4074046 (= res!1663753 (contains!8680 rules!3870 r!4213))))

(declare-fun b!4074047 () Bool)

(assert (=> b!4074047 (= e!2528605 e!2528608)))

(declare-fun res!1663757 () Bool)

(assert (=> b!4074047 (=> res!1663757 e!2528608)))

(assert (=> b!4074047 (= res!1663757 (isEmpty!26010 (t!337227 rules!3870)))))

(assert (=> b!4074047 (rulesInvariant!5945 thiss!26199 (t!337227 rules!3870))))

(declare-fun lt!1458076 () Unit!63124)

(declare-fun lemmaInvariantOnRulesThenOnTail!733 (LexerInterface!6602 Rule!13826 List!43700) Unit!63124)

(assert (=> b!4074047 (= lt!1458076 (lemmaInvariantOnRulesThenOnTail!733 thiss!26199 (h!48996 rules!3870) (t!337227 rules!3870)))))

(declare-fun b!4074048 () Bool)

(declare-fun e!2528604 () Bool)

(assert (=> b!4074048 (= e!2528604 (not e!2528605))))

(declare-fun res!1663751 () Bool)

(assert (=> b!4074048 (=> res!1663751 e!2528605)))

(declare-fun matchR!5863 (Regex!11918 List!43699) Bool)

(assert (=> b!4074048 (= res!1663751 (not (matchR!5863 (regex!7013 r!4213) p!2988)))))

(declare-fun ruleValid!2937 (LexerInterface!6602 Rule!13826) Bool)

(assert (=> b!4074048 (ruleValid!2937 thiss!26199 r!4213)))

(declare-fun lt!1458075 () Unit!63124)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2005 (LexerInterface!6602 Rule!13826 List!43700) Unit!63124)

(assert (=> b!4074048 (= lt!1458075 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2005 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4074049 () Bool)

(assert (=> b!4074049 (= e!2528599 e!2528604)))

(declare-fun res!1663749 () Bool)

(assert (=> b!4074049 (=> (not res!1663749) (not e!2528604))))

(declare-fun lt!1458077 () BalanceConc!26042)

(declare-fun apply!10196 (TokenValueInjection!13914 BalanceConc!26042) TokenValue!7243)

(declare-fun size!32558 (List!43699) Int)

(assert (=> b!4074049 (= res!1663749 (= (maxPrefix!3894 thiss!26199 rules!3870 input!3411) (Some!9420 (tuple2!42569 (Token!13153 (apply!10196 (transformation!7013 r!4213) lt!1458077) r!4213 (size!32558 p!2988) p!2988) suffix!1518))))))

(declare-fun lt!1458079 () Unit!63124)

(declare-fun lemmaSemiInverse!1980 (TokenValueInjection!13914 BalanceConc!26042) Unit!63124)

(assert (=> b!4074049 (= lt!1458079 (lemmaSemiInverse!1980 (transformation!7013 r!4213) lt!1458077))))

(declare-fun seqFromList!5230 (List!43699) BalanceConc!26042)

(assert (=> b!4074049 (= lt!1458077 (seqFromList!5230 p!2988))))

(declare-fun tp!1233172 () Bool)

(declare-fun e!2528610 () Bool)

(declare-fun b!4074050 () Bool)

(assert (=> b!4074050 (= e!2528597 (and tp!1233172 (inv!58225 (tag!7873 r!4213)) (inv!58228 (transformation!7013 r!4213)) e!2528610))))

(declare-fun b!4074051 () Bool)

(declare-fun tp!1233168 () Bool)

(assert (=> b!4074051 (= e!2528612 (and tp_is_empty!20839 tp!1233168))))

(assert (=> b!4074052 (= e!2528610 (and tp!1233169 tp!1233164))))

(assert (= (and start!384586 res!1663747) b!4074033))

(assert (= (and b!4074033 res!1663756) b!4074044))

(assert (= (and b!4074044 res!1663754) b!4074046))

(assert (= (and b!4074046 res!1663753) b!4074036))

(assert (= (and b!4074036 res!1663752) b!4074041))

(assert (= (and b!4074041 res!1663758) b!4074049))

(assert (= (and b!4074049 res!1663749) b!4074048))

(assert (= (and b!4074048 (not res!1663751)) b!4074042))

(assert (= (and b!4074042 (not res!1663755)) b!4074047))

(assert (= (and b!4074047 (not res!1663757)) b!4074039))

(assert (= (and b!4074039 (not res!1663748)) b!4074034))

(assert (= (and b!4074039 (not res!1663750)) b!4074045))

(assert (= (and start!384586 (is-Cons!43575 suffix!1518)) b!4074037))

(assert (= b!4074035 b!4074040))

(assert (= b!4074038 b!4074035))

(assert (= (and start!384586 (is-Cons!43576 rules!3870)) b!4074038))

(assert (= (and start!384586 (is-Cons!43575 p!2988)) b!4074043))

(assert (= (and start!384586 (is-Cons!43575 input!3411)) b!4074051))

(assert (= b!4074050 b!4074052))

(assert (= start!384586 b!4074050))

(declare-fun m!4682721 () Bool)

(assert (=> b!4074041 m!4682721))

(declare-fun m!4682723 () Bool)

(assert (=> b!4074046 m!4682723))

(declare-fun m!4682725 () Bool)

(assert (=> b!4074035 m!4682725))

(declare-fun m!4682727 () Bool)

(assert (=> b!4074035 m!4682727))

(declare-fun m!4682729 () Bool)

(assert (=> b!4074049 m!4682729))

(declare-fun m!4682731 () Bool)

(assert (=> b!4074049 m!4682731))

(declare-fun m!4682733 () Bool)

(assert (=> b!4074049 m!4682733))

(declare-fun m!4682735 () Bool)

(assert (=> b!4074049 m!4682735))

(declare-fun m!4682737 () Bool)

(assert (=> b!4074049 m!4682737))

(declare-fun m!4682739 () Bool)

(assert (=> b!4074048 m!4682739))

(declare-fun m!4682741 () Bool)

(assert (=> b!4074048 m!4682741))

(declare-fun m!4682743 () Bool)

(assert (=> b!4074048 m!4682743))

(declare-fun m!4682745 () Bool)

(assert (=> b!4074045 m!4682745))

(declare-fun m!4682747 () Bool)

(assert (=> b!4074034 m!4682747))

(declare-fun m!4682749 () Bool)

(assert (=> b!4074050 m!4682749))

(declare-fun m!4682751 () Bool)

(assert (=> b!4074050 m!4682751))

(declare-fun m!4682753 () Bool)

(assert (=> b!4074047 m!4682753))

(declare-fun m!4682755 () Bool)

(assert (=> b!4074047 m!4682755))

(declare-fun m!4682757 () Bool)

(assert (=> b!4074047 m!4682757))

(declare-fun m!4682759 () Bool)

(assert (=> b!4074044 m!4682759))

(declare-fun m!4682761 () Bool)

(assert (=> b!4074033 m!4682761))

(declare-fun m!4682763 () Bool)

(assert (=> b!4074039 m!4682763))

(declare-fun m!4682765 () Bool)

(assert (=> b!4074039 m!4682765))

(declare-fun m!4682767 () Bool)

(assert (=> b!4074039 m!4682767))

(declare-fun m!4682769 () Bool)

(assert (=> b!4074036 m!4682769))

(push 1)

(assert (not b_next!114179))

(assert (not b!4074049))

(assert (not b!4074050))

(assert (not b!4074033))

(assert b_and!313149)

(assert (not b!4074046))

(assert b_and!313147)

(assert (not b!4074043))

(assert (not b!4074034))

(assert (not b!4074039))

(assert (not b!4074035))

(assert (not b_next!114183))

(assert (not b!4074037))

(assert (not b_next!114181))

(assert (not b!4074051))

(assert b_and!313151)

(assert (not b!4074047))

(assert b_and!313153)

(assert tp_is_empty!20839)

(assert (not b!4074044))

(assert (not b!4074036))

(assert (not b!4074038))

(assert (not b!4074048))

(assert (not b!4074041))

(assert (not b!4074045))

(assert (not b_next!114177))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!114179))

(assert b_and!313153)

(assert b_and!313149)

(assert b_and!313147)

(assert (not b_next!114177))

(assert (not b_next!114183))

(assert (not b_next!114181))

(assert b_and!313151)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1210720 () Bool)

(assert (=> d!1210720 (= (isEmpty!26010 (t!337227 rules!3870)) (is-Nil!43576 (t!337227 rules!3870)))))

(assert (=> b!4074047 d!1210720))

(declare-fun d!1210722 () Bool)

(declare-fun res!1663803 () Bool)

(declare-fun e!2528665 () Bool)

(assert (=> d!1210722 (=> (not res!1663803) (not e!2528665))))

(declare-fun rulesValid!2735 (LexerInterface!6602 List!43700) Bool)

(assert (=> d!1210722 (= res!1663803 (rulesValid!2735 thiss!26199 (t!337227 rules!3870)))))

(assert (=> d!1210722 (= (rulesInvariant!5945 thiss!26199 (t!337227 rules!3870)) e!2528665)))

(declare-fun b!4074117 () Bool)

(declare-datatypes ((List!43704 0))(
  ( (Nil!43580) (Cons!43580 (h!49000 String!49966) (t!337247 List!43704)) )
))
(declare-fun noDuplicateTag!2736 (LexerInterface!6602 List!43700 List!43704) Bool)

(assert (=> b!4074117 (= e!2528665 (noDuplicateTag!2736 thiss!26199 (t!337227 rules!3870) Nil!43580))))

(assert (= (and d!1210722 res!1663803) b!4074117))

(declare-fun m!4682821 () Bool)

(assert (=> d!1210722 m!4682821))

(declare-fun m!4682823 () Bool)

(assert (=> b!4074117 m!4682823))

(assert (=> b!4074047 d!1210722))

(declare-fun d!1210724 () Bool)

(assert (=> d!1210724 (rulesInvariant!5945 thiss!26199 (t!337227 rules!3870))))

(declare-fun lt!1458104 () Unit!63124)

(declare-fun choose!24865 (LexerInterface!6602 Rule!13826 List!43700) Unit!63124)

(assert (=> d!1210724 (= lt!1458104 (choose!24865 thiss!26199 (h!48996 rules!3870) (t!337227 rules!3870)))))

(assert (=> d!1210724 (rulesInvariant!5945 thiss!26199 (Cons!43576 (h!48996 rules!3870) (t!337227 rules!3870)))))

(assert (=> d!1210724 (= (lemmaInvariantOnRulesThenOnTail!733 thiss!26199 (h!48996 rules!3870) (t!337227 rules!3870)) lt!1458104)))

(declare-fun bs!592675 () Bool)

(assert (= bs!592675 d!1210724))

(assert (=> bs!592675 m!4682755))

(declare-fun m!4682833 () Bool)

(assert (=> bs!592675 m!4682833))

(declare-fun m!4682835 () Bool)

(assert (=> bs!592675 m!4682835))

(assert (=> b!4074047 d!1210724))

(declare-fun b!4074129 () Bool)

(declare-fun e!2528673 () List!43699)

(assert (=> b!4074129 (= e!2528673 (Cons!43575 (h!48995 p!2988) (++!11419 (t!337226 p!2988) suffix!1518)))))

(declare-fun b!4074130 () Bool)

(declare-fun res!1663810 () Bool)

(declare-fun e!2528672 () Bool)

(assert (=> b!4074130 (=> (not res!1663810) (not e!2528672))))

(declare-fun lt!1458107 () List!43699)

(assert (=> b!4074130 (= res!1663810 (= (size!32558 lt!1458107) (+ (size!32558 p!2988) (size!32558 suffix!1518))))))

(declare-fun d!1210732 () Bool)

(assert (=> d!1210732 e!2528672))

(declare-fun res!1663811 () Bool)

(assert (=> d!1210732 (=> (not res!1663811) (not e!2528672))))

(declare-fun content!6664 (List!43699) (Set C!24022))

(assert (=> d!1210732 (= res!1663811 (= (content!6664 lt!1458107) (set.union (content!6664 p!2988) (content!6664 suffix!1518))))))

(assert (=> d!1210732 (= lt!1458107 e!2528673)))

(declare-fun c!702978 () Bool)

(assert (=> d!1210732 (= c!702978 (is-Nil!43575 p!2988))))

(assert (=> d!1210732 (= (++!11419 p!2988 suffix!1518) lt!1458107)))

(declare-fun b!4074128 () Bool)

(assert (=> b!4074128 (= e!2528673 suffix!1518)))

(declare-fun b!4074131 () Bool)

(assert (=> b!4074131 (= e!2528672 (or (not (= suffix!1518 Nil!43575)) (= lt!1458107 p!2988)))))

(assert (= (and d!1210732 c!702978) b!4074128))

(assert (= (and d!1210732 (not c!702978)) b!4074129))

(assert (= (and d!1210732 res!1663811) b!4074130))

(assert (= (and b!4074130 res!1663810) b!4074131))

(declare-fun m!4682837 () Bool)

(assert (=> b!4074129 m!4682837))

(declare-fun m!4682839 () Bool)

(assert (=> b!4074130 m!4682839))

(assert (=> b!4074130 m!4682737))

(declare-fun m!4682841 () Bool)

(assert (=> b!4074130 m!4682841))

(declare-fun m!4682843 () Bool)

(assert (=> d!1210732 m!4682843))

(declare-fun m!4682845 () Bool)

(assert (=> d!1210732 m!4682845))

(declare-fun m!4682847 () Bool)

(assert (=> d!1210732 m!4682847))

(assert (=> b!4074036 d!1210732))

(declare-fun d!1210734 () Bool)

(declare-fun lt!1458110 () Bool)

(declare-fun content!6665 (List!43700) (Set Rule!13826))

(assert (=> d!1210734 (= lt!1458110 (set.member r!4213 (content!6665 rules!3870)))))

(declare-fun e!2528678 () Bool)

(assert (=> d!1210734 (= lt!1458110 e!2528678)))

(declare-fun res!1663817 () Bool)

(assert (=> d!1210734 (=> (not res!1663817) (not e!2528678))))

(assert (=> d!1210734 (= res!1663817 (is-Cons!43576 rules!3870))))

(assert (=> d!1210734 (= (contains!8680 rules!3870 r!4213) lt!1458110)))

(declare-fun b!4074136 () Bool)

(declare-fun e!2528679 () Bool)

(assert (=> b!4074136 (= e!2528678 e!2528679)))

(declare-fun res!1663816 () Bool)

(assert (=> b!4074136 (=> res!1663816 e!2528679)))

(assert (=> b!4074136 (= res!1663816 (= (h!48996 rules!3870) r!4213))))

(declare-fun b!4074137 () Bool)

(assert (=> b!4074137 (= e!2528679 (contains!8680 (t!337227 rules!3870) r!4213))))

(assert (= (and d!1210734 res!1663817) b!4074136))

(assert (= (and b!4074136 (not res!1663816)) b!4074137))

(declare-fun m!4682849 () Bool)

(assert (=> d!1210734 m!4682849))

(declare-fun m!4682851 () Bool)

(assert (=> d!1210734 m!4682851))

(declare-fun m!4682853 () Bool)

(assert (=> b!4074137 m!4682853))

(assert (=> b!4074046 d!1210734))

(declare-fun d!1210736 () Bool)

(declare-fun e!2528712 () Bool)

(assert (=> d!1210736 e!2528712))

(declare-fun c!702993 () Bool)

(assert (=> d!1210736 (= c!702993 (is-EmptyExpr!11918 (regex!7013 r!4213)))))

(declare-fun lt!1458115 () Bool)

(declare-fun e!2528713 () Bool)

(assert (=> d!1210736 (= lt!1458115 e!2528713)))

(declare-fun c!702991 () Bool)

(assert (=> d!1210736 (= c!702991 (isEmpty!26012 p!2988))))

(declare-fun validRegex!5393 (Regex!11918) Bool)

(assert (=> d!1210736 (validRegex!5393 (regex!7013 r!4213))))

(assert (=> d!1210736 (= (matchR!5863 (regex!7013 r!4213) p!2988) lt!1458115)))

(declare-fun b!4074194 () Bool)

(declare-fun e!2528714 () Bool)

(declare-fun head!8604 (List!43699) C!24022)

(assert (=> b!4074194 (= e!2528714 (not (= (head!8604 p!2988) (c!702971 (regex!7013 r!4213)))))))

(declare-fun b!4074195 () Bool)

(declare-fun e!2528710 () Bool)

(assert (=> b!4074195 (= e!2528710 e!2528714)))

(declare-fun res!1663853 () Bool)

(assert (=> b!4074195 (=> res!1663853 e!2528714)))

(declare-fun call!288411 () Bool)

(assert (=> b!4074195 (= res!1663853 call!288411)))

(declare-fun b!4074196 () Bool)

(declare-fun e!2528711 () Bool)

(assert (=> b!4074196 (= e!2528711 (= (head!8604 p!2988) (c!702971 (regex!7013 r!4213))))))

(declare-fun b!4074197 () Bool)

(declare-fun res!1663851 () Bool)

(declare-fun e!2528709 () Bool)

(assert (=> b!4074197 (=> res!1663851 e!2528709)))

(assert (=> b!4074197 (= res!1663851 e!2528711)))

(declare-fun res!1663856 () Bool)

(assert (=> b!4074197 (=> (not res!1663856) (not e!2528711))))

(assert (=> b!4074197 (= res!1663856 lt!1458115)))

(declare-fun b!4074198 () Bool)

(declare-fun nullable!4193 (Regex!11918) Bool)

(assert (=> b!4074198 (= e!2528713 (nullable!4193 (regex!7013 r!4213)))))

(declare-fun b!4074199 () Bool)

(assert (=> b!4074199 (= e!2528712 (= lt!1458115 call!288411))))

(declare-fun b!4074200 () Bool)

(declare-fun res!1663852 () Bool)

(assert (=> b!4074200 (=> (not res!1663852) (not e!2528711))))

(assert (=> b!4074200 (= res!1663852 (not call!288411))))

(declare-fun bm!288406 () Bool)

(assert (=> bm!288406 (= call!288411 (isEmpty!26012 p!2988))))

(declare-fun b!4074201 () Bool)

(declare-fun e!2528708 () Bool)

(assert (=> b!4074201 (= e!2528708 (not lt!1458115))))

(declare-fun b!4074202 () Bool)

(declare-fun derivativeStep!3594 (Regex!11918 C!24022) Regex!11918)

(declare-fun tail!6338 (List!43699) List!43699)

(assert (=> b!4074202 (= e!2528713 (matchR!5863 (derivativeStep!3594 (regex!7013 r!4213) (head!8604 p!2988)) (tail!6338 p!2988)))))

(declare-fun b!4074203 () Bool)

(declare-fun res!1663854 () Bool)

(assert (=> b!4074203 (=> res!1663854 e!2528714)))

(assert (=> b!4074203 (= res!1663854 (not (isEmpty!26012 (tail!6338 p!2988))))))

(declare-fun b!4074204 () Bool)

(assert (=> b!4074204 (= e!2528712 e!2528708)))

(declare-fun c!702992 () Bool)

(assert (=> b!4074204 (= c!702992 (is-EmptyLang!11918 (regex!7013 r!4213)))))

(declare-fun b!4074205 () Bool)

(declare-fun res!1663857 () Bool)

(assert (=> b!4074205 (=> res!1663857 e!2528709)))

(assert (=> b!4074205 (= res!1663857 (not (is-ElementMatch!11918 (regex!7013 r!4213))))))

(assert (=> b!4074205 (= e!2528708 e!2528709)))

(declare-fun b!4074206 () Bool)

(declare-fun res!1663850 () Bool)

(assert (=> b!4074206 (=> (not res!1663850) (not e!2528711))))

(assert (=> b!4074206 (= res!1663850 (isEmpty!26012 (tail!6338 p!2988)))))

(declare-fun b!4074207 () Bool)

(assert (=> b!4074207 (= e!2528709 e!2528710)))

(declare-fun res!1663855 () Bool)

(assert (=> b!4074207 (=> (not res!1663855) (not e!2528710))))

(assert (=> b!4074207 (= res!1663855 (not lt!1458115))))

(assert (= (and d!1210736 c!702991) b!4074198))

(assert (= (and d!1210736 (not c!702991)) b!4074202))

(assert (= (and d!1210736 c!702993) b!4074199))

(assert (= (and d!1210736 (not c!702993)) b!4074204))

(assert (= (and b!4074204 c!702992) b!4074201))

(assert (= (and b!4074204 (not c!702992)) b!4074205))

(assert (= (and b!4074205 (not res!1663857)) b!4074197))

(assert (= (and b!4074197 res!1663856) b!4074200))

(assert (= (and b!4074200 res!1663852) b!4074206))

(assert (= (and b!4074206 res!1663850) b!4074196))

(assert (= (and b!4074197 (not res!1663851)) b!4074207))

(assert (= (and b!4074207 res!1663855) b!4074195))

(assert (= (and b!4074195 (not res!1663853)) b!4074203))

(assert (= (and b!4074203 (not res!1663854)) b!4074194))

(assert (= (or b!4074199 b!4074195 b!4074200) bm!288406))

(assert (=> d!1210736 m!4682721))

(declare-fun m!4682855 () Bool)

(assert (=> d!1210736 m!4682855))

(assert (=> bm!288406 m!4682721))

(declare-fun m!4682857 () Bool)

(assert (=> b!4074198 m!4682857))

(declare-fun m!4682859 () Bool)

(assert (=> b!4074203 m!4682859))

(assert (=> b!4074203 m!4682859))

(declare-fun m!4682861 () Bool)

(assert (=> b!4074203 m!4682861))

(declare-fun m!4682863 () Bool)

(assert (=> b!4074202 m!4682863))

(assert (=> b!4074202 m!4682863))

(declare-fun m!4682865 () Bool)

(assert (=> b!4074202 m!4682865))

(assert (=> b!4074202 m!4682859))

(assert (=> b!4074202 m!4682865))

(assert (=> b!4074202 m!4682859))

(declare-fun m!4682867 () Bool)

(assert (=> b!4074202 m!4682867))

(assert (=> b!4074196 m!4682863))

(assert (=> b!4074206 m!4682859))

(assert (=> b!4074206 m!4682859))

(assert (=> b!4074206 m!4682861))

(assert (=> b!4074194 m!4682863))

(assert (=> b!4074048 d!1210736))

(declare-fun d!1210738 () Bool)

(declare-fun res!1663862 () Bool)

(declare-fun e!2528717 () Bool)

(assert (=> d!1210738 (=> (not res!1663862) (not e!2528717))))

(assert (=> d!1210738 (= res!1663862 (validRegex!5393 (regex!7013 r!4213)))))

(assert (=> d!1210738 (= (ruleValid!2937 thiss!26199 r!4213) e!2528717)))

(declare-fun b!4074212 () Bool)

(declare-fun res!1663863 () Bool)

(assert (=> b!4074212 (=> (not res!1663863) (not e!2528717))))

(assert (=> b!4074212 (= res!1663863 (not (nullable!4193 (regex!7013 r!4213))))))

(declare-fun b!4074213 () Bool)

(assert (=> b!4074213 (= e!2528717 (not (= (tag!7873 r!4213) (String!49967 ""))))))

(assert (= (and d!1210738 res!1663862) b!4074212))

(assert (= (and b!4074212 res!1663863) b!4074213))

(assert (=> d!1210738 m!4682855))

(assert (=> b!4074212 m!4682857))

(assert (=> b!4074048 d!1210738))

(declare-fun d!1210740 () Bool)

(assert (=> d!1210740 (ruleValid!2937 thiss!26199 r!4213)))

(declare-fun lt!1458118 () Unit!63124)

(declare-fun choose!24866 (LexerInterface!6602 Rule!13826 List!43700) Unit!63124)

(assert (=> d!1210740 (= lt!1458118 (choose!24866 thiss!26199 r!4213 rules!3870))))

(assert (=> d!1210740 (contains!8680 rules!3870 r!4213)))

(assert (=> d!1210740 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2005 thiss!26199 r!4213 rules!3870) lt!1458118)))

(declare-fun bs!592676 () Bool)

(assert (= bs!592676 d!1210740))

(assert (=> bs!592676 m!4682741))

(declare-fun m!4682869 () Bool)

(assert (=> bs!592676 m!4682869))

(assert (=> bs!592676 m!4682723))

(assert (=> b!4074048 d!1210740))

(declare-fun d!1210742 () Bool)

(assert (=> d!1210742 (= (isEmpty!26011 lt!1458078) (not (is-Some!9420 lt!1458078)))))

(assert (=> b!4074039 d!1210742))

(declare-fun b!4074255 () Bool)

(declare-fun e!2528739 () Option!9421)

(declare-fun lt!1458142 () Option!9421)

(declare-fun lt!1458136 () Option!9421)

(assert (=> b!4074255 (= e!2528739 (ite (and (is-None!9420 lt!1458142) (is-None!9420 lt!1458136)) None!9420 (ite (is-None!9420 lt!1458136) lt!1458142 (ite (is-None!9420 lt!1458142) lt!1458136 (ite (>= (size!32557 (_1!24418 (v!39860 lt!1458142))) (size!32557 (_1!24418 (v!39860 lt!1458136)))) lt!1458142 lt!1458136)))))))

(declare-fun call!288415 () Option!9421)

(assert (=> b!4074255 (= lt!1458142 call!288415)))

(assert (=> b!4074255 (= lt!1458136 (maxPrefix!3894 thiss!26199 (t!337227 (t!337227 rules!3870)) input!3411))))

(declare-fun b!4074256 () Bool)

(declare-fun res!1663896 () Bool)

(declare-fun e!2528738 () Bool)

(assert (=> b!4074256 (=> (not res!1663896) (not e!2528738))))

(declare-fun lt!1458137 () Option!9421)

(declare-fun list!16223 (BalanceConc!26042) List!43699)

(declare-fun charsOf!4809 (Token!13152) BalanceConc!26042)

(assert (=> b!4074256 (= res!1663896 (= (list!16223 (charsOf!4809 (_1!24418 (get!14288 lt!1458137)))) (originalCharacters!7607 (_1!24418 (get!14288 lt!1458137)))))))

(declare-fun b!4074257 () Bool)

(assert (=> b!4074257 (= e!2528738 (contains!8680 (t!337227 rules!3870) (rule!10117 (_1!24418 (get!14288 lt!1458137)))))))

(declare-fun bm!288410 () Bool)

(declare-fun maxPrefixOneRule!2894 (LexerInterface!6602 Rule!13826 List!43699) Option!9421)

(assert (=> bm!288410 (= call!288415 (maxPrefixOneRule!2894 thiss!26199 (h!48996 (t!337227 rules!3870)) input!3411))))

(declare-fun b!4074258 () Bool)

(declare-fun res!1663901 () Bool)

(assert (=> b!4074258 (=> (not res!1663901) (not e!2528738))))

(assert (=> b!4074258 (= res!1663901 (= (value!220524 (_1!24418 (get!14288 lt!1458137))) (apply!10196 (transformation!7013 (rule!10117 (_1!24418 (get!14288 lt!1458137)))) (seqFromList!5230 (originalCharacters!7607 (_1!24418 (get!14288 lt!1458137)))))))))

(declare-fun b!4074259 () Bool)

(declare-fun res!1663895 () Bool)

(assert (=> b!4074259 (=> (not res!1663895) (not e!2528738))))

(assert (=> b!4074259 (= res!1663895 (< (size!32558 (_2!24418 (get!14288 lt!1458137))) (size!32558 input!3411)))))

(declare-fun b!4074260 () Bool)

(assert (=> b!4074260 (= e!2528739 call!288415)))

(declare-fun b!4074262 () Bool)

(declare-fun e!2528737 () Bool)

(assert (=> b!4074262 (= e!2528737 e!2528738)))

(declare-fun res!1663897 () Bool)

(assert (=> b!4074262 (=> (not res!1663897) (not e!2528738))))

(declare-fun isDefined!7145 (Option!9421) Bool)

(assert (=> b!4074262 (= res!1663897 (isDefined!7145 lt!1458137))))

(declare-fun b!4074263 () Bool)

(declare-fun res!1663900 () Bool)

(assert (=> b!4074263 (=> (not res!1663900) (not e!2528738))))

(assert (=> b!4074263 (= res!1663900 (= (++!11419 (list!16223 (charsOf!4809 (_1!24418 (get!14288 lt!1458137)))) (_2!24418 (get!14288 lt!1458137))) input!3411))))

(declare-fun d!1210744 () Bool)

(assert (=> d!1210744 e!2528737))

(declare-fun res!1663898 () Bool)

(assert (=> d!1210744 (=> res!1663898 e!2528737)))

(assert (=> d!1210744 (= res!1663898 (isEmpty!26011 lt!1458137))))

(assert (=> d!1210744 (= lt!1458137 e!2528739)))

(declare-fun c!702999 () Bool)

(assert (=> d!1210744 (= c!702999 (and (is-Cons!43576 (t!337227 rules!3870)) (is-Nil!43576 (t!337227 (t!337227 rules!3870)))))))

(declare-fun lt!1458140 () Unit!63124)

(declare-fun lt!1458141 () Unit!63124)

(assert (=> d!1210744 (= lt!1458140 lt!1458141)))

(declare-fun isPrefix!4096 (List!43699 List!43699) Bool)

(assert (=> d!1210744 (isPrefix!4096 input!3411 input!3411)))

(declare-fun lemmaIsPrefixRefl!2647 (List!43699 List!43699) Unit!63124)

(assert (=> d!1210744 (= lt!1458141 (lemmaIsPrefixRefl!2647 input!3411 input!3411))))

(assert (=> d!1210744 (rulesValidInductive!2574 thiss!26199 (t!337227 rules!3870))))

(assert (=> d!1210744 (= (maxPrefix!3894 thiss!26199 (t!337227 rules!3870) input!3411) lt!1458137)))

(declare-fun b!4074261 () Bool)

(declare-fun res!1663899 () Bool)

(assert (=> b!4074261 (=> (not res!1663899) (not e!2528738))))

(assert (=> b!4074261 (= res!1663899 (matchR!5863 (regex!7013 (rule!10117 (_1!24418 (get!14288 lt!1458137)))) (list!16223 (charsOf!4809 (_1!24418 (get!14288 lt!1458137))))))))

(assert (= (and d!1210744 c!702999) b!4074260))

(assert (= (and d!1210744 (not c!702999)) b!4074255))

(assert (= (or b!4074260 b!4074255) bm!288410))

(assert (= (and d!1210744 (not res!1663898)) b!4074262))

(assert (= (and b!4074262 res!1663897) b!4074256))

(assert (= (and b!4074256 res!1663896) b!4074259))

(assert (= (and b!4074259 res!1663895) b!4074263))

(assert (= (and b!4074263 res!1663900) b!4074258))

(assert (= (and b!4074258 res!1663901) b!4074261))

(assert (= (and b!4074261 res!1663899) b!4074257))

(declare-fun m!4682895 () Bool)

(assert (=> b!4074263 m!4682895))

(declare-fun m!4682897 () Bool)

(assert (=> b!4074263 m!4682897))

(assert (=> b!4074263 m!4682897))

(declare-fun m!4682899 () Bool)

(assert (=> b!4074263 m!4682899))

(assert (=> b!4074263 m!4682899))

(declare-fun m!4682901 () Bool)

(assert (=> b!4074263 m!4682901))

(declare-fun m!4682903 () Bool)

(assert (=> b!4074262 m!4682903))

(declare-fun m!4682905 () Bool)

(assert (=> b!4074255 m!4682905))

(assert (=> b!4074257 m!4682895))

(declare-fun m!4682907 () Bool)

(assert (=> b!4074257 m!4682907))

(assert (=> b!4074258 m!4682895))

(declare-fun m!4682909 () Bool)

(assert (=> b!4074258 m!4682909))

(assert (=> b!4074258 m!4682909))

(declare-fun m!4682911 () Bool)

(assert (=> b!4074258 m!4682911))

(assert (=> b!4074261 m!4682895))

(assert (=> b!4074261 m!4682897))

(assert (=> b!4074261 m!4682897))

(assert (=> b!4074261 m!4682899))

(assert (=> b!4074261 m!4682899))

(declare-fun m!4682913 () Bool)

(assert (=> b!4074261 m!4682913))

(declare-fun m!4682915 () Bool)

(assert (=> bm!288410 m!4682915))

(assert (=> b!4074259 m!4682895))

(declare-fun m!4682917 () Bool)

(assert (=> b!4074259 m!4682917))

(declare-fun m!4682919 () Bool)

(assert (=> b!4074259 m!4682919))

(declare-fun m!4682921 () Bool)

(assert (=> d!1210744 m!4682921))

(declare-fun m!4682923 () Bool)

(assert (=> d!1210744 m!4682923))

(declare-fun m!4682925 () Bool)

(assert (=> d!1210744 m!4682925))

(assert (=> d!1210744 m!4682745))

(assert (=> b!4074256 m!4682895))

(assert (=> b!4074256 m!4682897))

(assert (=> b!4074256 m!4682897))

(assert (=> b!4074256 m!4682899))

(assert (=> b!4074039 d!1210744))

(declare-fun d!1210758 () Bool)

(declare-fun e!2528751 () Bool)

(assert (=> d!1210758 e!2528751))

(declare-fun res!1663910 () Bool)

(assert (=> d!1210758 (=> res!1663910 e!2528751)))

(assert (=> d!1210758 (= res!1663910 (isEmpty!26011 (maxPrefix!3894 thiss!26199 (t!337227 rules!3870) input!3411)))))

(declare-fun lt!1458146 () Unit!63124)

(declare-fun choose!24867 (LexerInterface!6602 Rule!13826 List!43700 List!43699) Unit!63124)

(assert (=> d!1210758 (= lt!1458146 (choose!24867 thiss!26199 (h!48996 rules!3870) (t!337227 rules!3870) input!3411))))

(assert (=> d!1210758 (not (isEmpty!26010 (t!337227 rules!3870)))))

(assert (=> d!1210758 (= (lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!7 thiss!26199 (h!48996 rules!3870) (t!337227 rules!3870) input!3411) lt!1458146)))

(declare-fun b!4074274 () Bool)

(assert (=> b!4074274 (= e!2528751 (not (= (rule!10117 (_1!24418 (get!14288 (maxPrefix!3894 thiss!26199 (t!337227 rules!3870) input!3411)))) (h!48996 rules!3870))))))

(assert (= (and d!1210758 (not res!1663910)) b!4074274))

(assert (=> d!1210758 m!4682765))

(assert (=> d!1210758 m!4682765))

(declare-fun m!4682937 () Bool)

(assert (=> d!1210758 m!4682937))

(declare-fun m!4682939 () Bool)

(assert (=> d!1210758 m!4682939))

(assert (=> d!1210758 m!4682753))

(assert (=> b!4074274 m!4682765))

(assert (=> b!4074274 m!4682765))

(declare-fun m!4682941 () Bool)

(assert (=> b!4074274 m!4682941))

(assert (=> b!4074039 d!1210758))

(declare-fun d!1210764 () Bool)

(declare-fun dynLambda!18507 (Int BalanceConc!26042) TokenValue!7243)

(assert (=> d!1210764 (= (apply!10196 (transformation!7013 r!4213) lt!1458077) (dynLambda!18507 (toValue!9577 (transformation!7013 r!4213)) lt!1458077))))

(declare-fun b_lambda!119025 () Bool)

(assert (=> (not b_lambda!119025) (not d!1210764)))

(declare-fun t!337236 () Bool)

(declare-fun tb!244757 () Bool)

(assert (=> (and b!4074052 (= (toValue!9577 (transformation!7013 r!4213)) (toValue!9577 (transformation!7013 r!4213))) t!337236) tb!244757))

(declare-fun result!296744 () Bool)

(declare-fun inv!21 (TokenValue!7243) Bool)

(assert (=> tb!244757 (= result!296744 (inv!21 (dynLambda!18507 (toValue!9577 (transformation!7013 r!4213)) lt!1458077)))))

(declare-fun m!4682943 () Bool)

(assert (=> tb!244757 m!4682943))

(assert (=> d!1210764 t!337236))

(declare-fun b_and!313167 () Bool)

(assert (= b_and!313147 (and (=> t!337236 result!296744) b_and!313167)))

(declare-fun tb!244759 () Bool)

(declare-fun t!337238 () Bool)

(assert (=> (and b!4074040 (= (toValue!9577 (transformation!7013 (h!48996 rules!3870))) (toValue!9577 (transformation!7013 r!4213))) t!337238) tb!244759))

(declare-fun result!296748 () Bool)

(assert (= result!296748 result!296744))

(assert (=> d!1210764 t!337238))

(declare-fun b_and!313169 () Bool)

(assert (= b_and!313151 (and (=> t!337238 result!296748) b_and!313169)))

(declare-fun m!4682945 () Bool)

(assert (=> d!1210764 m!4682945))

(assert (=> b!4074049 d!1210764))

(declare-fun b!4074277 () Bool)

(declare-fun e!2528757 () Option!9421)

(declare-fun lt!1458151 () Option!9421)

(declare-fun lt!1458147 () Option!9421)

(assert (=> b!4074277 (= e!2528757 (ite (and (is-None!9420 lt!1458151) (is-None!9420 lt!1458147)) None!9420 (ite (is-None!9420 lt!1458147) lt!1458151 (ite (is-None!9420 lt!1458151) lt!1458147 (ite (>= (size!32557 (_1!24418 (v!39860 lt!1458151))) (size!32557 (_1!24418 (v!39860 lt!1458147)))) lt!1458151 lt!1458147)))))))

(declare-fun call!288416 () Option!9421)

(assert (=> b!4074277 (= lt!1458151 call!288416)))

(assert (=> b!4074277 (= lt!1458147 (maxPrefix!3894 thiss!26199 (t!337227 rules!3870) input!3411))))

(declare-fun b!4074278 () Bool)

(declare-fun res!1663912 () Bool)

(declare-fun e!2528756 () Bool)

(assert (=> b!4074278 (=> (not res!1663912) (not e!2528756))))

(declare-fun lt!1458148 () Option!9421)

(assert (=> b!4074278 (= res!1663912 (= (list!16223 (charsOf!4809 (_1!24418 (get!14288 lt!1458148)))) (originalCharacters!7607 (_1!24418 (get!14288 lt!1458148)))))))

(declare-fun b!4074279 () Bool)

(assert (=> b!4074279 (= e!2528756 (contains!8680 rules!3870 (rule!10117 (_1!24418 (get!14288 lt!1458148)))))))

(declare-fun bm!288411 () Bool)

(assert (=> bm!288411 (= call!288416 (maxPrefixOneRule!2894 thiss!26199 (h!48996 rules!3870) input!3411))))

(declare-fun b!4074280 () Bool)

(declare-fun res!1663917 () Bool)

(assert (=> b!4074280 (=> (not res!1663917) (not e!2528756))))

(assert (=> b!4074280 (= res!1663917 (= (value!220524 (_1!24418 (get!14288 lt!1458148))) (apply!10196 (transformation!7013 (rule!10117 (_1!24418 (get!14288 lt!1458148)))) (seqFromList!5230 (originalCharacters!7607 (_1!24418 (get!14288 lt!1458148)))))))))

(declare-fun b!4074281 () Bool)

(declare-fun res!1663911 () Bool)

(assert (=> b!4074281 (=> (not res!1663911) (not e!2528756))))

(assert (=> b!4074281 (= res!1663911 (< (size!32558 (_2!24418 (get!14288 lt!1458148))) (size!32558 input!3411)))))

(declare-fun b!4074282 () Bool)

(assert (=> b!4074282 (= e!2528757 call!288416)))

(declare-fun b!4074284 () Bool)

(declare-fun e!2528755 () Bool)

(assert (=> b!4074284 (= e!2528755 e!2528756)))

(declare-fun res!1663913 () Bool)

(assert (=> b!4074284 (=> (not res!1663913) (not e!2528756))))

(assert (=> b!4074284 (= res!1663913 (isDefined!7145 lt!1458148))))

(declare-fun b!4074285 () Bool)

(declare-fun res!1663916 () Bool)

(assert (=> b!4074285 (=> (not res!1663916) (not e!2528756))))

(assert (=> b!4074285 (= res!1663916 (= (++!11419 (list!16223 (charsOf!4809 (_1!24418 (get!14288 lt!1458148)))) (_2!24418 (get!14288 lt!1458148))) input!3411))))

(declare-fun d!1210766 () Bool)

(assert (=> d!1210766 e!2528755))

(declare-fun res!1663914 () Bool)

(assert (=> d!1210766 (=> res!1663914 e!2528755)))

(assert (=> d!1210766 (= res!1663914 (isEmpty!26011 lt!1458148))))

(assert (=> d!1210766 (= lt!1458148 e!2528757)))

(declare-fun c!703000 () Bool)

(assert (=> d!1210766 (= c!703000 (and (is-Cons!43576 rules!3870) (is-Nil!43576 (t!337227 rules!3870))))))

(declare-fun lt!1458149 () Unit!63124)

(declare-fun lt!1458150 () Unit!63124)

(assert (=> d!1210766 (= lt!1458149 lt!1458150)))

(assert (=> d!1210766 (isPrefix!4096 input!3411 input!3411)))

(assert (=> d!1210766 (= lt!1458150 (lemmaIsPrefixRefl!2647 input!3411 input!3411))))

(assert (=> d!1210766 (rulesValidInductive!2574 thiss!26199 rules!3870)))

(assert (=> d!1210766 (= (maxPrefix!3894 thiss!26199 rules!3870 input!3411) lt!1458148)))

(declare-fun b!4074283 () Bool)

(declare-fun res!1663915 () Bool)

(assert (=> b!4074283 (=> (not res!1663915) (not e!2528756))))

(assert (=> b!4074283 (= res!1663915 (matchR!5863 (regex!7013 (rule!10117 (_1!24418 (get!14288 lt!1458148)))) (list!16223 (charsOf!4809 (_1!24418 (get!14288 lt!1458148))))))))

(assert (= (and d!1210766 c!703000) b!4074282))

(assert (= (and d!1210766 (not c!703000)) b!4074277))

(assert (= (or b!4074282 b!4074277) bm!288411))

(assert (= (and d!1210766 (not res!1663914)) b!4074284))

(assert (= (and b!4074284 res!1663913) b!4074278))

(assert (= (and b!4074278 res!1663912) b!4074281))

(assert (= (and b!4074281 res!1663911) b!4074285))

(assert (= (and b!4074285 res!1663916) b!4074280))

(assert (= (and b!4074280 res!1663917) b!4074283))

(assert (= (and b!4074283 res!1663915) b!4074279))

(declare-fun m!4682947 () Bool)

(assert (=> b!4074285 m!4682947))

(declare-fun m!4682949 () Bool)

(assert (=> b!4074285 m!4682949))

(assert (=> b!4074285 m!4682949))

(declare-fun m!4682951 () Bool)

(assert (=> b!4074285 m!4682951))

(assert (=> b!4074285 m!4682951))

(declare-fun m!4682953 () Bool)

(assert (=> b!4074285 m!4682953))

(declare-fun m!4682955 () Bool)

(assert (=> b!4074284 m!4682955))

(assert (=> b!4074277 m!4682765))

(assert (=> b!4074279 m!4682947))

(declare-fun m!4682957 () Bool)

(assert (=> b!4074279 m!4682957))

(assert (=> b!4074280 m!4682947))

(declare-fun m!4682959 () Bool)

(assert (=> b!4074280 m!4682959))

(assert (=> b!4074280 m!4682959))

(declare-fun m!4682961 () Bool)

(assert (=> b!4074280 m!4682961))

(assert (=> b!4074283 m!4682947))

(assert (=> b!4074283 m!4682949))

(assert (=> b!4074283 m!4682949))

(assert (=> b!4074283 m!4682951))

(assert (=> b!4074283 m!4682951))

(declare-fun m!4682963 () Bool)

(assert (=> b!4074283 m!4682963))

(declare-fun m!4682965 () Bool)

(assert (=> bm!288411 m!4682965))

(assert (=> b!4074281 m!4682947))

(declare-fun m!4682967 () Bool)

(assert (=> b!4074281 m!4682967))

(assert (=> b!4074281 m!4682919))

(declare-fun m!4682969 () Bool)

(assert (=> d!1210766 m!4682969))

(assert (=> d!1210766 m!4682923))

(assert (=> d!1210766 m!4682925))

(declare-fun m!4682971 () Bool)

(assert (=> d!1210766 m!4682971))

(assert (=> b!4074278 m!4682947))

(assert (=> b!4074278 m!4682949))

(assert (=> b!4074278 m!4682949))

(assert (=> b!4074278 m!4682951))

(assert (=> b!4074049 d!1210766))

(declare-fun d!1210768 () Bool)

(declare-fun fromListB!2387 (List!43699) BalanceConc!26042)

(assert (=> d!1210768 (= (seqFromList!5230 p!2988) (fromListB!2387 p!2988))))

(declare-fun bs!592679 () Bool)

(assert (= bs!592679 d!1210768))

(declare-fun m!4682973 () Bool)

(assert (=> bs!592679 m!4682973))

(assert (=> b!4074049 d!1210768))

(declare-fun b!4074323 () Bool)

(declare-fun e!2528772 () Bool)

(assert (=> b!4074323 (= e!2528772 true)))

(declare-fun d!1210770 () Bool)

(assert (=> d!1210770 e!2528772))

(assert (= d!1210770 b!4074323))

(declare-fun order!22761 () Int)

(declare-fun order!22759 () Int)

(declare-fun lambda!127654 () Int)

(declare-fun dynLambda!18508 (Int Int) Int)

(declare-fun dynLambda!18509 (Int Int) Int)

(assert (=> b!4074323 (< (dynLambda!18508 order!22759 (toValue!9577 (transformation!7013 r!4213))) (dynLambda!18509 order!22761 lambda!127654))))

(declare-fun order!22763 () Int)

(declare-fun dynLambda!18510 (Int Int) Int)

(assert (=> b!4074323 (< (dynLambda!18510 order!22763 (toChars!9436 (transformation!7013 r!4213))) (dynLambda!18509 order!22761 lambda!127654))))

(declare-fun dynLambda!18511 (Int TokenValue!7243) BalanceConc!26042)

(assert (=> d!1210770 (= (list!16223 (dynLambda!18511 (toChars!9436 (transformation!7013 r!4213)) (dynLambda!18507 (toValue!9577 (transformation!7013 r!4213)) lt!1458077))) (list!16223 lt!1458077))))

(declare-fun lt!1458174 () Unit!63124)

(declare-fun ForallOf!840 (Int BalanceConc!26042) Unit!63124)

(assert (=> d!1210770 (= lt!1458174 (ForallOf!840 lambda!127654 lt!1458077))))

(assert (=> d!1210770 (= (lemmaSemiInverse!1980 (transformation!7013 r!4213) lt!1458077) lt!1458174)))

(declare-fun b_lambda!119027 () Bool)

(assert (=> (not b_lambda!119027) (not d!1210770)))

(declare-fun t!337240 () Bool)

(declare-fun tb!244761 () Bool)

(assert (=> (and b!4074052 (= (toChars!9436 (transformation!7013 r!4213)) (toChars!9436 (transformation!7013 r!4213))) t!337240) tb!244761))

(declare-fun b!4074328 () Bool)

(declare-fun e!2528775 () Bool)

(declare-fun tp!1233205 () Bool)

(declare-fun inv!58230 (Conc!13224) Bool)

(assert (=> b!4074328 (= e!2528775 (and (inv!58230 (c!702972 (dynLambda!18511 (toChars!9436 (transformation!7013 r!4213)) (dynLambda!18507 (toValue!9577 (transformation!7013 r!4213)) lt!1458077)))) tp!1233205))))

(declare-fun result!296750 () Bool)

(declare-fun inv!58231 (BalanceConc!26042) Bool)

(assert (=> tb!244761 (= result!296750 (and (inv!58231 (dynLambda!18511 (toChars!9436 (transformation!7013 r!4213)) (dynLambda!18507 (toValue!9577 (transformation!7013 r!4213)) lt!1458077))) e!2528775))))

(assert (= tb!244761 b!4074328))

(declare-fun m!4683011 () Bool)

(assert (=> b!4074328 m!4683011))

(declare-fun m!4683013 () Bool)

(assert (=> tb!244761 m!4683013))

(assert (=> d!1210770 t!337240))

(declare-fun b_and!313171 () Bool)

(assert (= b_and!313149 (and (=> t!337240 result!296750) b_and!313171)))

(declare-fun t!337242 () Bool)

(declare-fun tb!244763 () Bool)

(assert (=> (and b!4074040 (= (toChars!9436 (transformation!7013 (h!48996 rules!3870))) (toChars!9436 (transformation!7013 r!4213))) t!337242) tb!244763))

(declare-fun result!296754 () Bool)

(assert (= result!296754 result!296750))

(assert (=> d!1210770 t!337242))

(declare-fun b_and!313173 () Bool)

(assert (= b_and!313153 (and (=> t!337242 result!296754) b_and!313173)))

(declare-fun b_lambda!119029 () Bool)

(assert (=> (not b_lambda!119029) (not d!1210770)))

(assert (=> d!1210770 t!337236))

(declare-fun b_and!313175 () Bool)

(assert (= b_and!313167 (and (=> t!337236 result!296744) b_and!313175)))

(assert (=> d!1210770 t!337238))

(declare-fun b_and!313177 () Bool)

(assert (= b_and!313169 (and (=> t!337238 result!296748) b_and!313177)))

(declare-fun m!4683015 () Bool)

(assert (=> d!1210770 m!4683015))

(declare-fun m!4683017 () Bool)

(assert (=> d!1210770 m!4683017))

(declare-fun m!4683019 () Bool)

(assert (=> d!1210770 m!4683019))

(assert (=> d!1210770 m!4682945))

(declare-fun m!4683021 () Bool)

(assert (=> d!1210770 m!4683021))

(assert (=> d!1210770 m!4682945))

(assert (=> d!1210770 m!4683017))

(assert (=> b!4074049 d!1210770))

(declare-fun d!1210778 () Bool)

(declare-fun lt!1458177 () Int)

(assert (=> d!1210778 (>= lt!1458177 0)))

(declare-fun e!2528778 () Int)

(assert (=> d!1210778 (= lt!1458177 e!2528778)))

(declare-fun c!703011 () Bool)

(assert (=> d!1210778 (= c!703011 (is-Nil!43575 p!2988))))

(assert (=> d!1210778 (= (size!32558 p!2988) lt!1458177)))

(declare-fun b!4074333 () Bool)

(assert (=> b!4074333 (= e!2528778 0)))

(declare-fun b!4074334 () Bool)

(assert (=> b!4074334 (= e!2528778 (+ 1 (size!32558 (t!337226 p!2988))))))

(assert (= (and d!1210778 c!703011) b!4074333))

(assert (= (and d!1210778 (not c!703011)) b!4074334))

(declare-fun m!4683023 () Bool)

(assert (=> b!4074334 m!4683023))

(assert (=> b!4074049 d!1210778))

(declare-fun d!1210780 () Bool)

(assert (=> d!1210780 (= (inv!58225 (tag!7873 r!4213)) (= (mod (str.len (value!220498 (tag!7873 r!4213))) 2) 0))))

(assert (=> b!4074050 d!1210780))

(declare-fun d!1210782 () Bool)

(declare-fun res!1663941 () Bool)

(declare-fun e!2528781 () Bool)

(assert (=> d!1210782 (=> (not res!1663941) (not e!2528781))))

(declare-fun semiInverseModEq!3002 (Int Int) Bool)

(assert (=> d!1210782 (= res!1663941 (semiInverseModEq!3002 (toChars!9436 (transformation!7013 r!4213)) (toValue!9577 (transformation!7013 r!4213))))))

(assert (=> d!1210782 (= (inv!58228 (transformation!7013 r!4213)) e!2528781)))

(declare-fun b!4074337 () Bool)

(declare-fun equivClasses!2901 (Int Int) Bool)

(assert (=> b!4074337 (= e!2528781 (equivClasses!2901 (toChars!9436 (transformation!7013 r!4213)) (toValue!9577 (transformation!7013 r!4213))))))

(assert (= (and d!1210782 res!1663941) b!4074337))

(declare-fun m!4683025 () Bool)

(assert (=> d!1210782 m!4683025))

(declare-fun m!4683027 () Bool)

(assert (=> b!4074337 m!4683027))

(assert (=> b!4074050 d!1210782))

(declare-fun d!1210784 () Bool)

(assert (=> d!1210784 (= (isEmpty!26012 p!2988) (is-Nil!43575 p!2988))))

(assert (=> b!4074041 d!1210784))

(declare-fun d!1210786 () Bool)

(declare-fun res!1663942 () Bool)

(declare-fun e!2528782 () Bool)

(assert (=> d!1210786 (=> (not res!1663942) (not e!2528782))))

(assert (=> d!1210786 (= res!1663942 (rulesValid!2735 thiss!26199 rules!3870))))

(assert (=> d!1210786 (= (rulesInvariant!5945 thiss!26199 rules!3870) e!2528782)))

(declare-fun b!4074338 () Bool)

(assert (=> b!4074338 (= e!2528782 (noDuplicateTag!2736 thiss!26199 rules!3870 Nil!43580))))

(assert (= (and d!1210786 res!1663942) b!4074338))

(declare-fun m!4683029 () Bool)

(assert (=> d!1210786 m!4683029))

(declare-fun m!4683031 () Bool)

(assert (=> b!4074338 m!4683031))

(assert (=> b!4074044 d!1210786))

(declare-fun d!1210788 () Bool)

(assert (=> d!1210788 (= (isEmpty!26010 rules!3870) (is-Nil!43576 rules!3870))))

(assert (=> b!4074033 d!1210788))

(declare-fun d!1210790 () Bool)

(assert (=> d!1210790 (= (inv!58225 (tag!7873 (h!48996 rules!3870))) (= (mod (str.len (value!220498 (tag!7873 (h!48996 rules!3870)))) 2) 0))))

(assert (=> b!4074035 d!1210790))

(declare-fun d!1210792 () Bool)

(declare-fun res!1663943 () Bool)

(declare-fun e!2528783 () Bool)

(assert (=> d!1210792 (=> (not res!1663943) (not e!2528783))))

(assert (=> d!1210792 (= res!1663943 (semiInverseModEq!3002 (toChars!9436 (transformation!7013 (h!48996 rules!3870))) (toValue!9577 (transformation!7013 (h!48996 rules!3870)))))))

(assert (=> d!1210792 (= (inv!58228 (transformation!7013 (h!48996 rules!3870))) e!2528783)))

(declare-fun b!4074339 () Bool)

(assert (=> b!4074339 (= e!2528783 (equivClasses!2901 (toChars!9436 (transformation!7013 (h!48996 rules!3870))) (toValue!9577 (transformation!7013 (h!48996 rules!3870)))))))

(assert (= (and d!1210792 res!1663943) b!4074339))

(declare-fun m!4683033 () Bool)

(assert (=> d!1210792 m!4683033))

(declare-fun m!4683035 () Bool)

(assert (=> b!4074339 m!4683035))

(assert (=> b!4074035 d!1210792))

(declare-fun d!1210794 () Bool)

(assert (=> d!1210794 true))

(declare-fun lt!1458180 () Bool)

(declare-fun lambda!127657 () Int)

(declare-fun forall!8393 (List!43700 Int) Bool)

(assert (=> d!1210794 (= lt!1458180 (forall!8393 (t!337227 rules!3870) lambda!127657))))

(declare-fun e!2528789 () Bool)

(assert (=> d!1210794 (= lt!1458180 e!2528789)))

(declare-fun res!1663949 () Bool)

(assert (=> d!1210794 (=> res!1663949 e!2528789)))

(assert (=> d!1210794 (= res!1663949 (not (is-Cons!43576 (t!337227 rules!3870))))))

(assert (=> d!1210794 (= (rulesValidInductive!2574 thiss!26199 (t!337227 rules!3870)) lt!1458180)))

(declare-fun b!4074344 () Bool)

(declare-fun e!2528788 () Bool)

(assert (=> b!4074344 (= e!2528789 e!2528788)))

(declare-fun res!1663948 () Bool)

(assert (=> b!4074344 (=> (not res!1663948) (not e!2528788))))

(assert (=> b!4074344 (= res!1663948 (ruleValid!2937 thiss!26199 (h!48996 (t!337227 rules!3870))))))

(declare-fun b!4074345 () Bool)

(assert (=> b!4074345 (= e!2528788 (rulesValidInductive!2574 thiss!26199 (t!337227 (t!337227 rules!3870))))))

(assert (= (and d!1210794 (not res!1663949)) b!4074344))

(assert (= (and b!4074344 res!1663948) b!4074345))

(declare-fun m!4683037 () Bool)

(assert (=> d!1210794 m!4683037))

(declare-fun m!4683039 () Bool)

(assert (=> b!4074344 m!4683039))

(declare-fun m!4683041 () Bool)

(assert (=> b!4074345 m!4683041))

(assert (=> b!4074045 d!1210794))

(declare-fun d!1210796 () Bool)

(assert (=> d!1210796 (= (get!14288 lt!1458078) (v!39860 lt!1458078))))

(assert (=> b!4074034 d!1210796))

(declare-fun b!4074352 () Bool)

(declare-fun e!2528792 () Bool)

(declare-fun tp!1233208 () Bool)

(assert (=> b!4074352 (= e!2528792 (and tp_is_empty!20839 tp!1233208))))

(assert (=> b!4074043 (= tp!1233170 e!2528792)))

(assert (= (and b!4074043 (is-Cons!43575 (t!337226 p!2988))) b!4074352))

(declare-fun b!4074353 () Bool)

(declare-fun e!2528793 () Bool)

(declare-fun tp!1233209 () Bool)

(assert (=> b!4074353 (= e!2528793 (and tp_is_empty!20839 tp!1233209))))

(assert (=> b!4074037 (= tp!1233165 e!2528793)))

(assert (= (and b!4074037 (is-Cons!43575 (t!337226 suffix!1518))) b!4074353))

(declare-fun b!4074364 () Bool)

(declare-fun b_free!113489 () Bool)

(declare-fun b_next!114193 () Bool)

(assert (=> b!4074364 (= b_free!113489 (not b_next!114193))))

(declare-fun t!337244 () Bool)

(declare-fun tb!244765 () Bool)

(assert (=> (and b!4074364 (= (toValue!9577 (transformation!7013 (h!48996 (t!337227 rules!3870)))) (toValue!9577 (transformation!7013 r!4213))) t!337244) tb!244765))

(declare-fun result!296760 () Bool)

(assert (= result!296760 result!296744))

(assert (=> d!1210764 t!337244))

(assert (=> d!1210770 t!337244))

(declare-fun b_and!313179 () Bool)

(declare-fun tp!1233220 () Bool)

(assert (=> b!4074364 (= tp!1233220 (and (=> t!337244 result!296760) b_and!313179))))

(declare-fun b_free!113491 () Bool)

(declare-fun b_next!114195 () Bool)

(assert (=> b!4074364 (= b_free!113491 (not b_next!114195))))

(declare-fun tb!244767 () Bool)

(declare-fun t!337246 () Bool)

(assert (=> (and b!4074364 (= (toChars!9436 (transformation!7013 (h!48996 (t!337227 rules!3870)))) (toChars!9436 (transformation!7013 r!4213))) t!337246) tb!244767))

(declare-fun result!296762 () Bool)

(assert (= result!296762 result!296750))

(assert (=> d!1210770 t!337246))

(declare-fun tp!1233219 () Bool)

(declare-fun b_and!313181 () Bool)

(assert (=> b!4074364 (= tp!1233219 (and (=> t!337246 result!296762) b_and!313181))))

(declare-fun e!2528802 () Bool)

(assert (=> b!4074364 (= e!2528802 (and tp!1233220 tp!1233219))))

(declare-fun tp!1233218 () Bool)

(declare-fun e!2528803 () Bool)

(declare-fun b!4074363 () Bool)

(assert (=> b!4074363 (= e!2528803 (and tp!1233218 (inv!58225 (tag!7873 (h!48996 (t!337227 rules!3870)))) (inv!58228 (transformation!7013 (h!48996 (t!337227 rules!3870)))) e!2528802))))

(declare-fun b!4074362 () Bool)

(declare-fun e!2528805 () Bool)

(declare-fun tp!1233221 () Bool)

(assert (=> b!4074362 (= e!2528805 (and e!2528803 tp!1233221))))

(assert (=> b!4074038 (= tp!1233171 e!2528805)))

(assert (= b!4074363 b!4074364))

(assert (= b!4074362 b!4074363))

(assert (= (and b!4074038 (is-Cons!43576 (t!337227 rules!3870))) b!4074362))

(declare-fun m!4683043 () Bool)

(assert (=> b!4074363 m!4683043))

(declare-fun m!4683045 () Bool)

(assert (=> b!4074363 m!4683045))

(declare-fun b!4074376 () Bool)

(declare-fun e!2528808 () Bool)

(declare-fun tp!1233235 () Bool)

(declare-fun tp!1233233 () Bool)

(assert (=> b!4074376 (= e!2528808 (and tp!1233235 tp!1233233))))

(assert (=> b!4074035 (= tp!1233166 e!2528808)))

(declare-fun b!4074378 () Bool)

(declare-fun tp!1233234 () Bool)

(declare-fun tp!1233232 () Bool)

(assert (=> b!4074378 (= e!2528808 (and tp!1233234 tp!1233232))))

(declare-fun b!4074377 () Bool)

(declare-fun tp!1233236 () Bool)

(assert (=> b!4074377 (= e!2528808 tp!1233236)))

(declare-fun b!4074375 () Bool)

(assert (=> b!4074375 (= e!2528808 tp_is_empty!20839)))

(assert (= (and b!4074035 (is-ElementMatch!11918 (regex!7013 (h!48996 rules!3870)))) b!4074375))

(assert (= (and b!4074035 (is-Concat!19161 (regex!7013 (h!48996 rules!3870)))) b!4074376))

(assert (= (and b!4074035 (is-Star!11918 (regex!7013 (h!48996 rules!3870)))) b!4074377))

(assert (= (and b!4074035 (is-Union!11918 (regex!7013 (h!48996 rules!3870)))) b!4074378))

(declare-fun b!4074379 () Bool)

(declare-fun e!2528809 () Bool)

(declare-fun tp!1233237 () Bool)

(assert (=> b!4074379 (= e!2528809 (and tp_is_empty!20839 tp!1233237))))

(assert (=> b!4074051 (= tp!1233168 e!2528809)))

(assert (= (and b!4074051 (is-Cons!43575 (t!337226 input!3411))) b!4074379))

(declare-fun b!4074381 () Bool)

(declare-fun e!2528810 () Bool)

(declare-fun tp!1233241 () Bool)

(declare-fun tp!1233239 () Bool)

(assert (=> b!4074381 (= e!2528810 (and tp!1233241 tp!1233239))))

(assert (=> b!4074050 (= tp!1233172 e!2528810)))

(declare-fun b!4074383 () Bool)

(declare-fun tp!1233240 () Bool)

(declare-fun tp!1233238 () Bool)

(assert (=> b!4074383 (= e!2528810 (and tp!1233240 tp!1233238))))

(declare-fun b!4074382 () Bool)

(declare-fun tp!1233242 () Bool)

(assert (=> b!4074382 (= e!2528810 tp!1233242)))

(declare-fun b!4074380 () Bool)

(assert (=> b!4074380 (= e!2528810 tp_is_empty!20839)))

(assert (= (and b!4074050 (is-ElementMatch!11918 (regex!7013 r!4213))) b!4074380))

(assert (= (and b!4074050 (is-Concat!19161 (regex!7013 r!4213))) b!4074381))

(assert (= (and b!4074050 (is-Star!11918 (regex!7013 r!4213))) b!4074382))

(assert (= (and b!4074050 (is-Union!11918 (regex!7013 r!4213))) b!4074383))

(declare-fun b_lambda!119031 () Bool)

(assert (= b_lambda!119029 (or (and b!4074052 b_free!113473) (and b!4074040 b_free!113477 (= (toValue!9577 (transformation!7013 (h!48996 rules!3870))) (toValue!9577 (transformation!7013 r!4213)))) (and b!4074364 b_free!113489 (= (toValue!9577 (transformation!7013 (h!48996 (t!337227 rules!3870)))) (toValue!9577 (transformation!7013 r!4213)))) b_lambda!119031)))

(declare-fun b_lambda!119033 () Bool)

(assert (= b_lambda!119027 (or (and b!4074052 b_free!113475) (and b!4074040 b_free!113479 (= (toChars!9436 (transformation!7013 (h!48996 rules!3870))) (toChars!9436 (transformation!7013 r!4213)))) (and b!4074364 b_free!113491 (= (toChars!9436 (transformation!7013 (h!48996 (t!337227 rules!3870)))) (toChars!9436 (transformation!7013 r!4213)))) b_lambda!119033)))

(declare-fun b_lambda!119035 () Bool)

(assert (= b_lambda!119025 (or (and b!4074052 b_free!113473) (and b!4074040 b_free!113477 (= (toValue!9577 (transformation!7013 (h!48996 rules!3870))) (toValue!9577 (transformation!7013 r!4213)))) (and b!4074364 b_free!113489 (= (toValue!9577 (transformation!7013 (h!48996 (t!337227 rules!3870)))) (toValue!9577 (transformation!7013 r!4213)))) b_lambda!119035)))

(push 1)

(assert (not b_lambda!119031))

(assert (not b!4074337))

(assert (not b!4074352))

(assert (not tb!244761))

(assert (not d!1210724))

(assert (not d!1210782))

(assert (not b_next!114179))

(assert (not b!4074277))

(assert (not b!4074274))

(assert (not d!1210768))

(assert (not b!4074256))

(assert (not b!4074376))

(assert (not d!1210794))

(assert (not b_next!114183))

(assert (not b_next!114181))

(assert (not b!4074284))

(assert b_and!313171)

(assert (not d!1210734))

(assert (not b!4074137))

(assert (not tb!244757))

(assert (not b!4074381))

(assert (not d!1210740))

(assert tp_is_empty!20839)

(assert (not b!4074328))

(assert (not d!1210738))

(assert (not b!4074382))

(assert (not b!4074379))

(assert (not b!4074258))

(assert b_and!313175)

(assert (not bm!288410))

(assert (not b!4074280))

(assert (not b!4074212))

(assert b_and!313177)

(assert (not b!4074206))

(assert (not b!4074353))

(assert (not b!4074362))

(assert (not b!4074202))

(assert (not b!4074130))

(assert b_and!313173)

(assert b_and!313179)

(assert (not b!4074203))

(assert (not d!1210766))

(assert (not bm!288406))

(assert (not d!1210792))

(assert (not b!4074283))

(assert (not d!1210732))

(assert (not b!4074279))

(assert (not b!4074194))

(assert (not b_lambda!119033))

(assert (not b!4074344))

(assert (not b!4074377))

(assert (not d!1210744))

(assert (not b!4074281))

(assert (not b!4074334))

(assert (not d!1210758))

(assert (not d!1210786))

(assert (not d!1210736))

(assert b_and!313181)

(assert (not b!4074378))

(assert (not b_next!114195))

(assert (not b!4074345))

(assert (not d!1210722))

(assert (not b!4074263))

(assert (not b!4074261))

(assert (not b!4074278))

(assert (not b!4074259))

(assert (not b!4074383))

(assert (not b_lambda!119035))

(assert (not b!4074257))

(assert (not d!1210770))

(assert (not b!4074117))

(assert (not bm!288411))

(assert (not b!4074262))

(assert (not b_next!114193))

(assert (not b_next!114177))

(assert (not b!4074196))

(assert (not b!4074129))

(assert (not b!4074255))

(assert (not b!4074338))

(assert (not b!4074363))

(assert (not b!4074339))

(assert (not b!4074285))

(assert (not b!4074198))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!114179))

(assert b_and!313171)

(assert b_and!313175)

(assert b_and!313177)

(assert (not b_next!114183))

(assert (not b_next!114181))

(assert b_and!313179)

(assert b_and!313173)

(assert b_and!313181)

(assert (not b_next!114195))

(assert (not b_next!114193))

(assert (not b_next!114177))

(check-sat)

(pop 1)

