; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!181578 () Bool)

(assert start!181578)

(declare-fun b!1830095 () Bool)

(declare-fun b_free!51163 () Bool)

(declare-fun b_next!51867 () Bool)

(assert (=> b!1830095 (= b_free!51163 (not b_next!51867))))

(declare-fun tp!517850 () Bool)

(declare-fun b_and!142393 () Bool)

(assert (=> b!1830095 (= tp!517850 b_and!142393)))

(declare-fun b_free!51165 () Bool)

(declare-fun b_next!51869 () Bool)

(assert (=> b!1830095 (= b_free!51165 (not b_next!51869))))

(declare-fun tp!517846 () Bool)

(declare-fun b_and!142395 () Bool)

(assert (=> b!1830095 (= tp!517846 b_and!142395)))

(declare-fun b!1830100 () Bool)

(declare-fun b_free!51167 () Bool)

(declare-fun b_next!51871 () Bool)

(assert (=> b!1830100 (= b_free!51167 (not b_next!51871))))

(declare-fun tp!517843 () Bool)

(declare-fun b_and!142397 () Bool)

(assert (=> b!1830100 (= tp!517843 b_and!142397)))

(declare-fun b_free!51169 () Bool)

(declare-fun b_next!51873 () Bool)

(assert (=> b!1830100 (= b_free!51169 (not b_next!51873))))

(declare-fun tp!517834 () Bool)

(declare-fun b_and!142399 () Bool)

(assert (=> b!1830100 (= tp!517834 b_and!142399)))

(declare-fun b!1830099 () Bool)

(declare-fun b_free!51171 () Bool)

(declare-fun b_next!51875 () Bool)

(assert (=> b!1830099 (= b_free!51171 (not b_next!51875))))

(declare-fun tp!517837 () Bool)

(declare-fun b_and!142401 () Bool)

(assert (=> b!1830099 (= tp!517837 b_and!142401)))

(declare-fun b_free!51173 () Bool)

(declare-fun b_next!51877 () Bool)

(assert (=> b!1830099 (= b_free!51173 (not b_next!51877))))

(declare-fun tp!517847 () Bool)

(declare-fun b_and!142403 () Bool)

(assert (=> b!1830099 (= tp!517847 b_and!142403)))

(declare-fun b!1830109 () Bool)

(declare-fun b_free!51175 () Bool)

(declare-fun b_next!51879 () Bool)

(assert (=> b!1830109 (= b_free!51175 (not b_next!51879))))

(declare-fun tp!517840 () Bool)

(declare-fun b_and!142405 () Bool)

(assert (=> b!1830109 (= tp!517840 b_and!142405)))

(declare-fun b_free!51177 () Bool)

(declare-fun b_next!51881 () Bool)

(assert (=> b!1830109 (= b_free!51177 (not b_next!51881))))

(declare-fun tp!517836 () Bool)

(declare-fun b_and!142407 () Bool)

(assert (=> b!1830109 (= tp!517836 b_and!142407)))

(declare-fun b!1830092 () Bool)

(declare-fun res!823061 () Bool)

(declare-fun e!1169859 () Bool)

(assert (=> b!1830092 (=> (not res!823061) (not e!1169859))))

(declare-datatypes ((LexerInterface!3268 0))(
  ( (LexerInterfaceExt!3265 (__x!12760 Int)) (Lexer!3266) )
))
(declare-fun thiss!28318 () LexerInterface!3268)

(declare-datatypes ((C!10108 0))(
  ( (C!10109 (val!5650 Int)) )
))
(declare-datatypes ((Regex!4967 0))(
  ( (ElementMatch!4967 (c!298402 C!10108)) (Concat!8696 (regOne!10446 Regex!4967) (regTwo!10446 Regex!4967)) (EmptyExpr!4967) (Star!4967 (reg!5296 Regex!4967)) (EmptyLang!4967) (Union!4967 (regOne!10447 Regex!4967) (regTwo!10447 Regex!4967)) )
))
(declare-datatypes ((List!20203 0))(
  ( (Nil!20133) (Cons!20133 (h!25534 (_ BitVec 16)) (t!170568 List!20203)) )
))
(declare-datatypes ((TokenValue!3729 0))(
  ( (FloatLiteralValue!7458 (text!26548 List!20203)) (TokenValueExt!3728 (__x!12761 Int)) (Broken!18645 (value!113352 List!20203)) (Object!3798) (End!3729) (Def!3729) (Underscore!3729) (Match!3729) (Else!3729) (Error!3729) (Case!3729) (If!3729) (Extends!3729) (Abstract!3729) (Class!3729) (Val!3729) (DelimiterValue!7458 (del!3789 List!20203)) (KeywordValue!3735 (value!113353 List!20203)) (CommentValue!7458 (value!113354 List!20203)) (WhitespaceValue!7458 (value!113355 List!20203)) (IndentationValue!3729 (value!113356 List!20203)) (String!22976) (Int32!3729) (Broken!18646 (value!113357 List!20203)) (Boolean!3730) (Unit!34796) (OperatorValue!3732 (op!3789 List!20203)) (IdentifierValue!7458 (value!113358 List!20203)) (IdentifierValue!7459 (value!113359 List!20203)) (WhitespaceValue!7459 (value!113360 List!20203)) (True!7458) (False!7458) (Broken!18647 (value!113361 List!20203)) (Broken!18648 (value!113362 List!20203)) (True!7459) (RightBrace!3729) (RightBracket!3729) (Colon!3729) (Null!3729) (Comma!3729) (LeftBracket!3729) (False!7459) (LeftBrace!3729) (ImaginaryLiteralValue!3729 (text!26549 List!20203)) (StringLiteralValue!11187 (value!113363 List!20203)) (EOFValue!3729 (value!113364 List!20203)) (IdentValue!3729 (value!113365 List!20203)) (DelimiterValue!7459 (value!113366 List!20203)) (DedentValue!3729 (value!113367 List!20203)) (NewLineValue!3729 (value!113368 List!20203)) (IntegerValue!11187 (value!113369 (_ BitVec 32)) (text!26550 List!20203)) (IntegerValue!11188 (value!113370 Int) (text!26551 List!20203)) (Times!3729) (Or!3729) (Equal!3729) (Minus!3729) (Broken!18649 (value!113371 List!20203)) (And!3729) (Div!3729) (LessEqual!3729) (Mod!3729) (Concat!8697) (Not!3729) (Plus!3729) (SpaceValue!3729 (value!113372 List!20203)) (IntegerValue!11189 (value!113373 Int) (text!26552 List!20203)) (StringLiteralValue!11188 (text!26553 List!20203)) (FloatLiteralValue!7459 (text!26554 List!20203)) (BytesLiteralValue!3729 (value!113374 List!20203)) (CommentValue!7459 (value!113375 List!20203)) (StringLiteralValue!11189 (value!113376 List!20203)) (ErrorTokenValue!3729 (msg!3790 List!20203)) )
))
(declare-datatypes ((List!20204 0))(
  ( (Nil!20134) (Cons!20134 (h!25535 C!10108) (t!170569 List!20204)) )
))
(declare-datatypes ((IArray!13347 0))(
  ( (IArray!13348 (innerList!6731 List!20204)) )
))
(declare-datatypes ((Conc!6671 0))(
  ( (Node!6671 (left!16092 Conc!6671) (right!16422 Conc!6671) (csize!13572 Int) (cheight!6882 Int)) (Leaf!9711 (xs!9547 IArray!13347) (csize!13573 Int)) (Empty!6671) )
))
(declare-datatypes ((BalanceConc!13286 0))(
  ( (BalanceConc!13287 (c!298403 Conc!6671)) )
))
(declare-datatypes ((TokenValueInjection!7118 0))(
  ( (TokenValueInjection!7119 (toValue!5182 Int) (toChars!5041 Int)) )
))
(declare-datatypes ((String!22977 0))(
  ( (String!22978 (value!113377 String)) )
))
(declare-datatypes ((Rule!7078 0))(
  ( (Rule!7079 (regex!3639 Regex!4967) (tag!4053 String!22977) (isSeparator!3639 Bool) (transformation!3639 TokenValueInjection!7118)) )
))
(declare-datatypes ((List!20205 0))(
  ( (Nil!20135) (Cons!20135 (h!25536 Rule!7078) (t!170570 List!20205)) )
))
(declare-fun rules!4610 () List!20205)

(declare-fun rulesInvariant!2937 (LexerInterface!3268 List!20205) Bool)

(assert (=> b!1830092 (= res!823061 (rulesInvariant!2937 thiss!28318 rules!4610))))

(declare-fun tp!517844 () Bool)

(declare-fun b!1830093 () Bool)

(declare-fun e!1169864 () Bool)

(declare-fun e!1169848 () Bool)

(declare-fun inv!26189 (String!22977) Bool)

(declare-fun inv!26192 (TokenValueInjection!7118) Bool)

(assert (=> b!1830093 (= e!1169848 (and tp!517844 (inv!26189 (tag!4053 (h!25536 rules!4610))) (inv!26192 (transformation!3639 (h!25536 rules!4610))) e!1169864))))

(declare-fun b!1830094 () Bool)

(declare-fun res!823067 () Bool)

(declare-fun e!1169860 () Bool)

(assert (=> b!1830094 (=> res!823067 e!1169860)))

(declare-fun rs!808 () List!20205)

(declare-fun rule!580 () Rule!7078)

(get-info :version)

(assert (=> b!1830094 (= res!823067 (or (not ((_ is Cons!20135) rs!808)) (= (h!25536 rs!808) rule!580)))))

(declare-fun e!1169850 () Bool)

(assert (=> b!1830095 (= e!1169850 (and tp!517850 tp!517846))))

(declare-fun b!1830096 () Bool)

(declare-fun res!823064 () Bool)

(assert (=> b!1830096 (=> (not res!823064) (not e!1169859))))

(declare-fun contains!3713 (List!20205 Rule!7078) Bool)

(assert (=> b!1830096 (= res!823064 (contains!3713 rules!4610 rule!580))))

(declare-fun b!1830097 () Bool)

(declare-fun e!1169847 () Bool)

(declare-fun e!1169853 () Bool)

(declare-fun tp!517848 () Bool)

(assert (=> b!1830097 (= e!1169847 (and e!1169853 tp!517848))))

(declare-fun b!1830098 () Bool)

(declare-fun res!823075 () Bool)

(assert (=> b!1830098 (=> res!823075 e!1169860)))

(declare-datatypes ((Token!6832 0))(
  ( (Token!6833 (value!113378 TokenValue!3729) (rule!5807 Rule!7078) (size!15959 Int) (originalCharacters!4447 List!20204)) )
))
(declare-datatypes ((tuple2!19594 0))(
  ( (tuple2!19595 (_1!11199 Token!6832) (_2!11199 List!20204)) )
))
(declare-datatypes ((Option!4219 0))(
  ( (None!4218) (Some!4218 (v!25789 tuple2!19594)) )
))
(declare-fun lt!710686 () Option!4219)

(declare-fun input!3681 () List!20204)

(declare-fun maxPrefix!1816 (LexerInterface!3268 List!20205 List!20204) Option!4219)

(assert (=> b!1830098 (= res!823075 (not (= (maxPrefix!1816 thiss!28318 rules!4610 input!3681) lt!710686)))))

(declare-fun e!1169862 () Bool)

(assert (=> b!1830099 (= e!1169862 (and tp!517837 tp!517847))))

(declare-fun e!1169843 () Bool)

(assert (=> b!1830100 (= e!1169843 (and tp!517843 tp!517834))))

(declare-fun b!1830101 () Bool)

(declare-fun e!1169842 () Bool)

(declare-fun tp_is_empty!8169 () Bool)

(declare-fun tp!517849 () Bool)

(assert (=> b!1830101 (= e!1169842 (and tp_is_empty!8169 tp!517849))))

(declare-fun b!1830102 () Bool)

(declare-fun token!567 () Token!6832)

(declare-fun tp!517842 () Bool)

(declare-fun e!1169851 () Bool)

(assert (=> b!1830102 (= e!1169851 (and tp!517842 (inv!26189 (tag!4053 (rule!5807 token!567))) (inv!26192 (transformation!3639 (rule!5807 token!567))) e!1169850))))

(declare-fun b!1830103 () Bool)

(declare-fun res!823071 () Bool)

(assert (=> b!1830103 (=> (not res!823071) (not e!1169859))))

(assert (=> b!1830103 (= res!823071 (= (rule!5807 token!567) rule!580))))

(declare-fun res!823065 () Bool)

(assert (=> start!181578 (=> (not res!823065) (not e!1169859))))

(assert (=> start!181578 (= res!823065 ((_ is Lexer!3266) thiss!28318))))

(assert (=> start!181578 e!1169859))

(declare-fun e!1169861 () Bool)

(assert (=> start!181578 e!1169861))

(declare-fun e!1169855 () Bool)

(declare-fun inv!26193 (Token!6832) Bool)

(assert (=> start!181578 (and (inv!26193 token!567) e!1169855)))

(assert (=> start!181578 true))

(declare-fun e!1169849 () Bool)

(assert (=> start!181578 e!1169849))

(assert (=> start!181578 e!1169842))

(declare-fun e!1169854 () Bool)

(assert (=> start!181578 e!1169854))

(assert (=> start!181578 e!1169847))

(declare-fun b!1830104 () Bool)

(declare-fun res!823077 () Bool)

(assert (=> b!1830104 (=> res!823077 e!1169860)))

(assert (=> b!1830104 (= res!823077 (not (contains!3713 rs!808 rule!580)))))

(declare-fun b!1830105 () Bool)

(declare-fun tp!517838 () Bool)

(assert (=> b!1830105 (= e!1169849 (and tp_is_empty!8169 tp!517838))))

(declare-fun b!1830106 () Bool)

(declare-fun e!1169845 () Bool)

(assert (=> b!1830106 (= e!1169859 (not e!1169845))))

(declare-fun res!823078 () Bool)

(assert (=> b!1830106 (=> res!823078 e!1169845)))

(declare-fun lt!710682 () Option!4219)

(assert (=> b!1830106 (= res!823078 (not (= lt!710682 lt!710686)))))

(declare-fun suffix!1698 () List!20204)

(assert (=> b!1830106 (= lt!710686 (Some!4218 (tuple2!19595 token!567 suffix!1698)))))

(declare-fun lt!710684 () TokenValue!3729)

(declare-fun lt!710679 () List!20204)

(declare-fun lt!710677 () Int)

(assert (=> b!1830106 (= lt!710682 (Some!4218 (tuple2!19595 (Token!6833 lt!710684 rule!580 lt!710677 lt!710679) suffix!1698)))))

(declare-fun maxPrefixOneRule!1177 (LexerInterface!3268 Rule!7078 List!20204) Option!4219)

(assert (=> b!1830106 (= lt!710682 (maxPrefixOneRule!1177 thiss!28318 rule!580 input!3681))))

(declare-fun size!15960 (List!20204) Int)

(assert (=> b!1830106 (= lt!710677 (size!15960 lt!710679))))

(declare-fun apply!5427 (TokenValueInjection!7118 BalanceConc!13286) TokenValue!3729)

(declare-fun seqFromList!2596 (List!20204) BalanceConc!13286)

(assert (=> b!1830106 (= lt!710684 (apply!5427 (transformation!3639 rule!580) (seqFromList!2596 lt!710679)))))

(declare-datatypes ((Unit!34797 0))(
  ( (Unit!34798) )
))
(declare-fun lt!710685 () Unit!34797)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!547 (LexerInterface!3268 List!20205 List!20204 List!20204 List!20204 Rule!7078) Unit!34797)

(assert (=> b!1830106 (= lt!710685 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!547 thiss!28318 rules!4610 lt!710679 input!3681 suffix!1698 rule!580))))

(declare-fun list!8179 (BalanceConc!13286) List!20204)

(declare-fun charsOf!2282 (Token!6832) BalanceConc!13286)

(assert (=> b!1830106 (= lt!710679 (list!8179 (charsOf!2282 token!567)))))

(declare-fun b!1830107 () Bool)

(declare-fun res!823062 () Bool)

(assert (=> b!1830107 (=> (not res!823062) (not e!1169859))))

(declare-fun isEmpty!12705 (List!20205) Bool)

(assert (=> b!1830107 (= res!823062 (not (isEmpty!12705 rules!4610)))))

(declare-fun b!1830108 () Bool)

(declare-fun e!1169844 () Bool)

(declare-fun rulesValid!1386 (LexerInterface!3268 List!20205) Bool)

(assert (=> b!1830108 (= e!1169844 (rulesValid!1386 thiss!28318 (t!170570 rs!808)))))

(assert (=> b!1830109 (= e!1169864 (and tp!517840 tp!517836))))

(declare-fun b!1830110 () Bool)

(declare-fun res!823074 () Bool)

(assert (=> b!1830110 (=> res!823074 e!1169844)))

(declare-fun lt!710687 () Regex!4967)

(declare-fun lambda!71874 () Int)

(declare-datatypes ((List!20206 0))(
  ( (Nil!20136) (Cons!20136 (h!25537 Regex!4967) (t!170571 List!20206)) )
))
(declare-fun generalisedUnion!482 (List!20206) Regex!4967)

(declare-fun map!4177 (List!20205 Int) List!20206)

(assert (=> b!1830110 (= res!823074 (not (= lt!710687 (generalisedUnion!482 (map!4177 rules!4610 lambda!71874)))))))

(declare-fun b!1830111 () Bool)

(declare-fun e!1169846 () Bool)

(declare-fun lt!710680 () List!20204)

(declare-fun matchR!2430 (Regex!4967 List!20204) Bool)

(assert (=> b!1830111 (= e!1169846 (not (not (matchR!2430 (regex!3639 rule!580) lt!710680))))))

(declare-fun ruleValid!1129 (LexerInterface!3268 Rule!7078) Bool)

(assert (=> b!1830111 (ruleValid!1129 thiss!28318 rule!580)))

(declare-fun lt!710681 () Unit!34797)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!648 (LexerInterface!3268 Rule!7078 List!20205) Unit!34797)

(assert (=> b!1830111 (= lt!710681 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!648 thiss!28318 rule!580 rules!4610))))

(declare-fun b!1830112 () Bool)

(assert (=> b!1830112 (= e!1169860 e!1169844)))

(declare-fun res!823076 () Bool)

(assert (=> b!1830112 (=> res!823076 e!1169844)))

(assert (=> b!1830112 (= res!823076 (not (matchR!2430 (regex!3639 rule!580) lt!710679)))))

(assert (=> b!1830112 (ruleValid!1129 thiss!28318 rule!580)))

(declare-fun lt!710688 () Unit!34797)

(assert (=> b!1830112 (= lt!710688 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!648 thiss!28318 rule!580 rules!4610))))

(declare-fun b!1830113 () Bool)

(declare-fun res!823069 () Bool)

(assert (=> b!1830113 (=> (not res!823069) (not e!1169859))))

(assert (=> b!1830113 (= res!823069 (= (maxPrefix!1816 thiss!28318 rules!4610 input!3681) (Some!4218 (tuple2!19595 token!567 suffix!1698))))))

(declare-fun b!1830114 () Bool)

(assert (=> b!1830114 (= e!1169845 e!1169860)))

(declare-fun res!823073 () Bool)

(assert (=> b!1830114 (=> res!823073 e!1169860)))

(declare-fun lt!710678 () List!20206)

(assert (=> b!1830114 (= res!823073 (not (= lt!710687 (generalisedUnion!482 lt!710678))))))

(declare-fun rulesRegex!959 (LexerInterface!3268 List!20205) Regex!4967)

(assert (=> b!1830114 (= lt!710687 (rulesRegex!959 thiss!28318 rules!4610))))

(assert (=> b!1830114 (= lt!710678 (map!4177 rules!4610 lambda!71874))))

(declare-fun lt!710683 () Unit!34797)

(declare-fun lemma!530 (List!20204 Rule!7078 List!20205 List!20204 LexerInterface!3268 Token!6832 List!20205) Unit!34797)

(assert (=> b!1830114 (= lt!710683 (lemma!530 input!3681 rule!580 rules!4610 suffix!1698 thiss!28318 token!567 rules!4610))))

(declare-fun b!1830115 () Bool)

(declare-fun res!823068 () Bool)

(assert (=> b!1830115 (=> res!823068 e!1169860)))

(declare-fun ++!5463 (List!20204 List!20204) List!20204)

(assert (=> b!1830115 (= res!823068 (not (= input!3681 (++!5463 lt!710679 suffix!1698))))))

(declare-fun b!1830116 () Bool)

(declare-fun tp!517845 () Bool)

(assert (=> b!1830116 (= e!1169853 (and tp!517845 (inv!26189 (tag!4053 (h!25536 rs!808))) (inv!26192 (transformation!3639 (h!25536 rs!808))) e!1169862))))

(declare-fun b!1830117 () Bool)

(declare-fun res!823066 () Bool)

(assert (=> b!1830117 (=> res!823066 e!1169860)))

(assert (=> b!1830117 (= res!823066 (not (rulesValid!1386 thiss!28318 rs!808)))))

(declare-fun tp!517839 () Bool)

(declare-fun b!1830118 () Bool)

(declare-fun inv!21 (TokenValue!3729) Bool)

(assert (=> b!1830118 (= e!1169855 (and (inv!21 (value!113378 token!567)) e!1169851 tp!517839))))

(declare-fun b!1830119 () Bool)

(declare-fun tp!517841 () Bool)

(assert (=> b!1830119 (= e!1169854 (and e!1169848 tp!517841))))

(declare-fun b!1830120 () Bool)

(declare-fun res!823070 () Bool)

(assert (=> b!1830120 (=> res!823070 e!1169845)))

(assert (=> b!1830120 (= res!823070 (not (matchR!2430 (regex!3639 rule!580) lt!710679)))))

(declare-fun b!1830121 () Bool)

(declare-fun res!823063 () Bool)

(assert (=> b!1830121 (=> (not res!823063) (not e!1169859))))

(assert (=> b!1830121 (= res!823063 e!1169846)))

(declare-fun res!823072 () Bool)

(assert (=> b!1830121 (=> (not res!823072) (not e!1169846))))

(assert (=> b!1830121 (= res!823072 (= input!3681 (++!5463 lt!710680 suffix!1698)))))

(assert (=> b!1830121 (= lt!710680 (list!8179 (charsOf!2282 token!567)))))

(declare-fun tp!517835 () Bool)

(declare-fun b!1830122 () Bool)

(assert (=> b!1830122 (= e!1169861 (and tp!517835 (inv!26189 (tag!4053 rule!580)) (inv!26192 (transformation!3639 rule!580)) e!1169843))))

(assert (= (and start!181578 res!823065) b!1830107))

(assert (= (and b!1830107 res!823062) b!1830092))

(assert (= (and b!1830092 res!823061) b!1830096))

(assert (= (and b!1830096 res!823064) b!1830113))

(assert (= (and b!1830113 res!823069) b!1830103))

(assert (= (and b!1830103 res!823071) b!1830121))

(assert (= (and b!1830121 res!823072) b!1830111))

(assert (= (and b!1830121 res!823063) b!1830106))

(assert (= (and b!1830106 (not res!823078)) b!1830120))

(assert (= (and b!1830120 (not res!823070)) b!1830114))

(assert (= (and b!1830114 (not res!823073)) b!1830117))

(assert (= (and b!1830117 (not res!823066)) b!1830104))

(assert (= (and b!1830104 (not res!823077)) b!1830094))

(assert (= (and b!1830094 (not res!823067)) b!1830098))

(assert (= (and b!1830098 (not res!823075)) b!1830115))

(assert (= (and b!1830115 (not res!823068)) b!1830112))

(assert (= (and b!1830112 (not res!823076)) b!1830110))

(assert (= (and b!1830110 (not res!823074)) b!1830108))

(assert (= b!1830122 b!1830100))

(assert (= start!181578 b!1830122))

(assert (= b!1830102 b!1830095))

(assert (= b!1830118 b!1830102))

(assert (= start!181578 b!1830118))

(assert (= (and start!181578 ((_ is Cons!20134) suffix!1698)) b!1830105))

(assert (= (and start!181578 ((_ is Cons!20134) input!3681)) b!1830101))

(assert (= b!1830093 b!1830109))

(assert (= b!1830119 b!1830093))

(assert (= (and start!181578 ((_ is Cons!20135) rules!4610)) b!1830119))

(assert (= b!1830116 b!1830099))

(assert (= b!1830097 b!1830116))

(assert (= (and start!181578 ((_ is Cons!20135) rs!808)) b!1830097))

(declare-fun m!2257787 () Bool)

(assert (=> b!1830112 m!2257787))

(declare-fun m!2257789 () Bool)

(assert (=> b!1830112 m!2257789))

(declare-fun m!2257791 () Bool)

(assert (=> b!1830112 m!2257791))

(declare-fun m!2257793 () Bool)

(assert (=> b!1830098 m!2257793))

(assert (=> b!1830120 m!2257787))

(declare-fun m!2257795 () Bool)

(assert (=> b!1830104 m!2257795))

(declare-fun m!2257797 () Bool)

(assert (=> b!1830110 m!2257797))

(assert (=> b!1830110 m!2257797))

(declare-fun m!2257799 () Bool)

(assert (=> b!1830110 m!2257799))

(declare-fun m!2257801 () Bool)

(assert (=> b!1830118 m!2257801))

(declare-fun m!2257803 () Bool)

(assert (=> start!181578 m!2257803))

(declare-fun m!2257805 () Bool)

(assert (=> b!1830102 m!2257805))

(declare-fun m!2257807 () Bool)

(assert (=> b!1830102 m!2257807))

(declare-fun m!2257809 () Bool)

(assert (=> b!1830107 m!2257809))

(declare-fun m!2257811 () Bool)

(assert (=> b!1830122 m!2257811))

(declare-fun m!2257813 () Bool)

(assert (=> b!1830122 m!2257813))

(assert (=> b!1830113 m!2257793))

(declare-fun m!2257815 () Bool)

(assert (=> b!1830093 m!2257815))

(declare-fun m!2257817 () Bool)

(assert (=> b!1830093 m!2257817))

(declare-fun m!2257819 () Bool)

(assert (=> b!1830114 m!2257819))

(declare-fun m!2257821 () Bool)

(assert (=> b!1830114 m!2257821))

(assert (=> b!1830114 m!2257797))

(declare-fun m!2257823 () Bool)

(assert (=> b!1830114 m!2257823))

(declare-fun m!2257825 () Bool)

(assert (=> b!1830096 m!2257825))

(declare-fun m!2257827 () Bool)

(assert (=> b!1830092 m!2257827))

(declare-fun m!2257829 () Bool)

(assert (=> b!1830115 m!2257829))

(declare-fun m!2257831 () Bool)

(assert (=> b!1830111 m!2257831))

(assert (=> b!1830111 m!2257789))

(assert (=> b!1830111 m!2257791))

(declare-fun m!2257833 () Bool)

(assert (=> b!1830117 m!2257833))

(declare-fun m!2257835 () Bool)

(assert (=> b!1830116 m!2257835))

(declare-fun m!2257837 () Bool)

(assert (=> b!1830116 m!2257837))

(declare-fun m!2257839 () Bool)

(assert (=> b!1830106 m!2257839))

(declare-fun m!2257841 () Bool)

(assert (=> b!1830106 m!2257841))

(declare-fun m!2257843 () Bool)

(assert (=> b!1830106 m!2257843))

(declare-fun m!2257845 () Bool)

(assert (=> b!1830106 m!2257845))

(assert (=> b!1830106 m!2257843))

(declare-fun m!2257847 () Bool)

(assert (=> b!1830106 m!2257847))

(declare-fun m!2257849 () Bool)

(assert (=> b!1830106 m!2257849))

(assert (=> b!1830106 m!2257839))

(declare-fun m!2257851 () Bool)

(assert (=> b!1830106 m!2257851))

(declare-fun m!2257853 () Bool)

(assert (=> b!1830121 m!2257853))

(assert (=> b!1830121 m!2257843))

(assert (=> b!1830121 m!2257843))

(assert (=> b!1830121 m!2257845))

(declare-fun m!2257855 () Bool)

(assert (=> b!1830108 m!2257855))

(check-sat (not b!1830106) (not b!1830114) b_and!142403 (not b!1830122) (not b_next!51881) (not b_next!51871) (not b!1830096) (not b!1830110) (not b!1830105) (not b!1830102) (not b!1830101) b_and!142395 (not b!1830116) (not b!1830118) (not b!1830117) (not b!1830119) (not start!181578) (not b_next!51873) (not b_next!51877) b_and!142407 (not b!1830111) (not b!1830097) b_and!142405 tp_is_empty!8169 b_and!142397 (not b!1830121) (not b!1830113) (not b_next!51875) (not b_next!51879) (not b!1830092) (not b_next!51869) b_and!142399 (not b!1830112) (not b!1830104) (not b!1830108) b_and!142393 (not b_next!51867) (not b!1830120) (not b!1830098) (not b!1830093) (not b!1830107) b_and!142401 (not b!1830115))
(check-sat b_and!142395 b_and!142403 (not b_next!51873) b_and!142405 b_and!142397 (not b_next!51881) (not b_next!51871) (not b_next!51875) b_and!142399 b_and!142401 (not b_next!51877) b_and!142407 (not b_next!51879) (not b_next!51869) b_and!142393 (not b_next!51867))
(get-model)

(declare-fun b!1830151 () Bool)

(declare-fun e!1169881 () Bool)

(declare-fun lt!710693 () Bool)

(declare-fun call!114637 () Bool)

(assert (=> b!1830151 (= e!1169881 (= lt!710693 call!114637))))

(declare-fun b!1830152 () Bool)

(declare-fun res!823105 () Bool)

(declare-fun e!1169880 () Bool)

(assert (=> b!1830152 (=> res!823105 e!1169880)))

(assert (=> b!1830152 (= res!823105 (not ((_ is ElementMatch!4967) (regex!3639 rule!580))))))

(declare-fun e!1169879 () Bool)

(assert (=> b!1830152 (= e!1169879 e!1169880)))

(declare-fun b!1830153 () Bool)

(declare-fun e!1169884 () Bool)

(declare-fun derivativeStep!1306 (Regex!4967 C!10108) Regex!4967)

(declare-fun head!4273 (List!20204) C!10108)

(declare-fun tail!2732 (List!20204) List!20204)

(assert (=> b!1830153 (= e!1169884 (matchR!2430 (derivativeStep!1306 (regex!3639 rule!580) (head!4273 lt!710680)) (tail!2732 lt!710680)))))

(declare-fun b!1830154 () Bool)

(declare-fun res!823103 () Bool)

(assert (=> b!1830154 (=> res!823103 e!1169880)))

(declare-fun e!1169883 () Bool)

(assert (=> b!1830154 (= res!823103 e!1169883)))

(declare-fun res!823109 () Bool)

(assert (=> b!1830154 (=> (not res!823109) (not e!1169883))))

(assert (=> b!1830154 (= res!823109 lt!710693)))

(declare-fun b!1830155 () Bool)

(declare-fun e!1169882 () Bool)

(declare-fun e!1169885 () Bool)

(assert (=> b!1830155 (= e!1169882 e!1169885)))

(declare-fun res!823108 () Bool)

(assert (=> b!1830155 (=> res!823108 e!1169885)))

(assert (=> b!1830155 (= res!823108 call!114637)))

(declare-fun b!1830156 () Bool)

(declare-fun res!823106 () Bool)

(assert (=> b!1830156 (=> res!823106 e!1169885)))

(declare-fun isEmpty!12706 (List!20204) Bool)

(assert (=> b!1830156 (= res!823106 (not (isEmpty!12706 (tail!2732 lt!710680))))))

(declare-fun b!1830157 () Bool)

(declare-fun nullable!1542 (Regex!4967) Bool)

(assert (=> b!1830157 (= e!1169884 (nullable!1542 (regex!3639 rule!580)))))

(declare-fun d!559472 () Bool)

(assert (=> d!559472 e!1169881))

(declare-fun c!298410 () Bool)

(assert (=> d!559472 (= c!298410 ((_ is EmptyExpr!4967) (regex!3639 rule!580)))))

(assert (=> d!559472 (= lt!710693 e!1169884)))

(declare-fun c!298411 () Bool)

(assert (=> d!559472 (= c!298411 (isEmpty!12706 lt!710680))))

(declare-fun validRegex!2024 (Regex!4967) Bool)

(assert (=> d!559472 (validRegex!2024 (regex!3639 rule!580))))

(assert (=> d!559472 (= (matchR!2430 (regex!3639 rule!580) lt!710680) lt!710693)))

(declare-fun b!1830158 () Bool)

(assert (=> b!1830158 (= e!1169883 (= (head!4273 lt!710680) (c!298402 (regex!3639 rule!580))))))

(declare-fun bm!114632 () Bool)

(assert (=> bm!114632 (= call!114637 (isEmpty!12706 lt!710680))))

(declare-fun b!1830159 () Bool)

(assert (=> b!1830159 (= e!1169880 e!1169882)))

(declare-fun res!823107 () Bool)

(assert (=> b!1830159 (=> (not res!823107) (not e!1169882))))

(assert (=> b!1830159 (= res!823107 (not lt!710693))))

(declare-fun b!1830160 () Bool)

(declare-fun res!823110 () Bool)

(assert (=> b!1830160 (=> (not res!823110) (not e!1169883))))

(assert (=> b!1830160 (= res!823110 (isEmpty!12706 (tail!2732 lt!710680)))))

(declare-fun b!1830161 () Bool)

(assert (=> b!1830161 (= e!1169881 e!1169879)))

(declare-fun c!298412 () Bool)

(assert (=> b!1830161 (= c!298412 ((_ is EmptyLang!4967) (regex!3639 rule!580)))))

(declare-fun b!1830162 () Bool)

(assert (=> b!1830162 (= e!1169885 (not (= (head!4273 lt!710680) (c!298402 (regex!3639 rule!580)))))))

(declare-fun b!1830163 () Bool)

(declare-fun res!823104 () Bool)

(assert (=> b!1830163 (=> (not res!823104) (not e!1169883))))

(assert (=> b!1830163 (= res!823104 (not call!114637))))

(declare-fun b!1830164 () Bool)

(assert (=> b!1830164 (= e!1169879 (not lt!710693))))

(assert (= (and d!559472 c!298411) b!1830157))

(assert (= (and d!559472 (not c!298411)) b!1830153))

(assert (= (and d!559472 c!298410) b!1830151))

(assert (= (and d!559472 (not c!298410)) b!1830161))

(assert (= (and b!1830161 c!298412) b!1830164))

(assert (= (and b!1830161 (not c!298412)) b!1830152))

(assert (= (and b!1830152 (not res!823105)) b!1830154))

(assert (= (and b!1830154 res!823109) b!1830163))

(assert (= (and b!1830163 res!823104) b!1830160))

(assert (= (and b!1830160 res!823110) b!1830158))

(assert (= (and b!1830154 (not res!823103)) b!1830159))

(assert (= (and b!1830159 res!823107) b!1830155))

(assert (= (and b!1830155 (not res!823108)) b!1830156))

(assert (= (and b!1830156 (not res!823106)) b!1830162))

(assert (= (or b!1830151 b!1830155 b!1830163) bm!114632))

(declare-fun m!2257857 () Bool)

(assert (=> bm!114632 m!2257857))

(declare-fun m!2257859 () Bool)

(assert (=> b!1830158 m!2257859))

(declare-fun m!2257861 () Bool)

(assert (=> b!1830157 m!2257861))

(declare-fun m!2257863 () Bool)

(assert (=> b!1830160 m!2257863))

(assert (=> b!1830160 m!2257863))

(declare-fun m!2257865 () Bool)

(assert (=> b!1830160 m!2257865))

(assert (=> d!559472 m!2257857))

(declare-fun m!2257867 () Bool)

(assert (=> d!559472 m!2257867))

(assert (=> b!1830153 m!2257859))

(assert (=> b!1830153 m!2257859))

(declare-fun m!2257869 () Bool)

(assert (=> b!1830153 m!2257869))

(assert (=> b!1830153 m!2257863))

(assert (=> b!1830153 m!2257869))

(assert (=> b!1830153 m!2257863))

(declare-fun m!2257871 () Bool)

(assert (=> b!1830153 m!2257871))

(assert (=> b!1830156 m!2257863))

(assert (=> b!1830156 m!2257863))

(assert (=> b!1830156 m!2257865))

(assert (=> b!1830162 m!2257859))

(assert (=> b!1830111 d!559472))

(declare-fun d!559474 () Bool)

(declare-fun res!823115 () Bool)

(declare-fun e!1169888 () Bool)

(assert (=> d!559474 (=> (not res!823115) (not e!1169888))))

(assert (=> d!559474 (= res!823115 (validRegex!2024 (regex!3639 rule!580)))))

(assert (=> d!559474 (= (ruleValid!1129 thiss!28318 rule!580) e!1169888)))

(declare-fun b!1830169 () Bool)

(declare-fun res!823116 () Bool)

(assert (=> b!1830169 (=> (not res!823116) (not e!1169888))))

(assert (=> b!1830169 (= res!823116 (not (nullable!1542 (regex!3639 rule!580))))))

(declare-fun b!1830170 () Bool)

(assert (=> b!1830170 (= e!1169888 (not (= (tag!4053 rule!580) (String!22978 ""))))))

(assert (= (and d!559474 res!823115) b!1830169))

(assert (= (and b!1830169 res!823116) b!1830170))

(assert (=> d!559474 m!2257867))

(assert (=> b!1830169 m!2257861))

(assert (=> b!1830111 d!559474))

(declare-fun d!559476 () Bool)

(assert (=> d!559476 (ruleValid!1129 thiss!28318 rule!580)))

(declare-fun lt!710696 () Unit!34797)

(declare-fun choose!11525 (LexerInterface!3268 Rule!7078 List!20205) Unit!34797)

(assert (=> d!559476 (= lt!710696 (choose!11525 thiss!28318 rule!580 rules!4610))))

(assert (=> d!559476 (contains!3713 rules!4610 rule!580)))

(assert (=> d!559476 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!648 thiss!28318 rule!580 rules!4610) lt!710696)))

(declare-fun bs!407768 () Bool)

(assert (= bs!407768 d!559476))

(assert (=> bs!407768 m!2257789))

(declare-fun m!2257873 () Bool)

(assert (=> bs!407768 m!2257873))

(assert (=> bs!407768 m!2257825))

(assert (=> b!1830111 d!559476))

(declare-fun d!559478 () Bool)

(assert (=> d!559478 (= (inv!26189 (tag!4053 rule!580)) (= (mod (str.len (value!113377 (tag!4053 rule!580))) 2) 0))))

(assert (=> b!1830122 d!559478))

(declare-fun d!559480 () Bool)

(declare-fun res!823119 () Bool)

(declare-fun e!1169891 () Bool)

(assert (=> d!559480 (=> (not res!823119) (not e!1169891))))

(declare-fun semiInverseModEq!1460 (Int Int) Bool)

(assert (=> d!559480 (= res!823119 (semiInverseModEq!1460 (toChars!5041 (transformation!3639 rule!580)) (toValue!5182 (transformation!3639 rule!580))))))

(assert (=> d!559480 (= (inv!26192 (transformation!3639 rule!580)) e!1169891)))

(declare-fun b!1830173 () Bool)

(declare-fun equivClasses!1401 (Int Int) Bool)

(assert (=> b!1830173 (= e!1169891 (equivClasses!1401 (toChars!5041 (transformation!3639 rule!580)) (toValue!5182 (transformation!3639 rule!580))))))

(assert (= (and d!559480 res!823119) b!1830173))

(declare-fun m!2257875 () Bool)

(assert (=> d!559480 m!2257875))

(declare-fun m!2257877 () Bool)

(assert (=> b!1830173 m!2257877))

(assert (=> b!1830122 d!559480))

(declare-fun b!1830174 () Bool)

(declare-fun e!1169894 () Bool)

(declare-fun lt!710697 () Bool)

(declare-fun call!114638 () Bool)

(assert (=> b!1830174 (= e!1169894 (= lt!710697 call!114638))))

(declare-fun b!1830175 () Bool)

(declare-fun res!823122 () Bool)

(declare-fun e!1169893 () Bool)

(assert (=> b!1830175 (=> res!823122 e!1169893)))

(assert (=> b!1830175 (= res!823122 (not ((_ is ElementMatch!4967) (regex!3639 rule!580))))))

(declare-fun e!1169892 () Bool)

(assert (=> b!1830175 (= e!1169892 e!1169893)))

(declare-fun b!1830176 () Bool)

(declare-fun e!1169897 () Bool)

(assert (=> b!1830176 (= e!1169897 (matchR!2430 (derivativeStep!1306 (regex!3639 rule!580) (head!4273 lt!710679)) (tail!2732 lt!710679)))))

(declare-fun b!1830177 () Bool)

(declare-fun res!823120 () Bool)

(assert (=> b!1830177 (=> res!823120 e!1169893)))

(declare-fun e!1169896 () Bool)

(assert (=> b!1830177 (= res!823120 e!1169896)))

(declare-fun res!823126 () Bool)

(assert (=> b!1830177 (=> (not res!823126) (not e!1169896))))

(assert (=> b!1830177 (= res!823126 lt!710697)))

(declare-fun b!1830178 () Bool)

(declare-fun e!1169895 () Bool)

(declare-fun e!1169898 () Bool)

(assert (=> b!1830178 (= e!1169895 e!1169898)))

(declare-fun res!823125 () Bool)

(assert (=> b!1830178 (=> res!823125 e!1169898)))

(assert (=> b!1830178 (= res!823125 call!114638)))

(declare-fun b!1830179 () Bool)

(declare-fun res!823123 () Bool)

(assert (=> b!1830179 (=> res!823123 e!1169898)))

(assert (=> b!1830179 (= res!823123 (not (isEmpty!12706 (tail!2732 lt!710679))))))

(declare-fun b!1830180 () Bool)

(assert (=> b!1830180 (= e!1169897 (nullable!1542 (regex!3639 rule!580)))))

(declare-fun d!559482 () Bool)

(assert (=> d!559482 e!1169894))

(declare-fun c!298413 () Bool)

(assert (=> d!559482 (= c!298413 ((_ is EmptyExpr!4967) (regex!3639 rule!580)))))

(assert (=> d!559482 (= lt!710697 e!1169897)))

(declare-fun c!298414 () Bool)

(assert (=> d!559482 (= c!298414 (isEmpty!12706 lt!710679))))

(assert (=> d!559482 (validRegex!2024 (regex!3639 rule!580))))

(assert (=> d!559482 (= (matchR!2430 (regex!3639 rule!580) lt!710679) lt!710697)))

(declare-fun b!1830181 () Bool)

(assert (=> b!1830181 (= e!1169896 (= (head!4273 lt!710679) (c!298402 (regex!3639 rule!580))))))

(declare-fun bm!114633 () Bool)

(assert (=> bm!114633 (= call!114638 (isEmpty!12706 lt!710679))))

(declare-fun b!1830182 () Bool)

(assert (=> b!1830182 (= e!1169893 e!1169895)))

(declare-fun res!823124 () Bool)

(assert (=> b!1830182 (=> (not res!823124) (not e!1169895))))

(assert (=> b!1830182 (= res!823124 (not lt!710697))))

(declare-fun b!1830183 () Bool)

(declare-fun res!823127 () Bool)

(assert (=> b!1830183 (=> (not res!823127) (not e!1169896))))

(assert (=> b!1830183 (= res!823127 (isEmpty!12706 (tail!2732 lt!710679)))))

(declare-fun b!1830184 () Bool)

(assert (=> b!1830184 (= e!1169894 e!1169892)))

(declare-fun c!298415 () Bool)

(assert (=> b!1830184 (= c!298415 ((_ is EmptyLang!4967) (regex!3639 rule!580)))))

(declare-fun b!1830185 () Bool)

(assert (=> b!1830185 (= e!1169898 (not (= (head!4273 lt!710679) (c!298402 (regex!3639 rule!580)))))))

(declare-fun b!1830186 () Bool)

(declare-fun res!823121 () Bool)

(assert (=> b!1830186 (=> (not res!823121) (not e!1169896))))

(assert (=> b!1830186 (= res!823121 (not call!114638))))

(declare-fun b!1830187 () Bool)

(assert (=> b!1830187 (= e!1169892 (not lt!710697))))

(assert (= (and d!559482 c!298414) b!1830180))

(assert (= (and d!559482 (not c!298414)) b!1830176))

(assert (= (and d!559482 c!298413) b!1830174))

(assert (= (and d!559482 (not c!298413)) b!1830184))

(assert (= (and b!1830184 c!298415) b!1830187))

(assert (= (and b!1830184 (not c!298415)) b!1830175))

(assert (= (and b!1830175 (not res!823122)) b!1830177))

(assert (= (and b!1830177 res!823126) b!1830186))

(assert (= (and b!1830186 res!823121) b!1830183))

(assert (= (and b!1830183 res!823127) b!1830181))

(assert (= (and b!1830177 (not res!823120)) b!1830182))

(assert (= (and b!1830182 res!823124) b!1830178))

(assert (= (and b!1830178 (not res!823125)) b!1830179))

(assert (= (and b!1830179 (not res!823123)) b!1830185))

(assert (= (or b!1830174 b!1830178 b!1830186) bm!114633))

(declare-fun m!2257879 () Bool)

(assert (=> bm!114633 m!2257879))

(declare-fun m!2257881 () Bool)

(assert (=> b!1830181 m!2257881))

(assert (=> b!1830180 m!2257861))

(declare-fun m!2257883 () Bool)

(assert (=> b!1830183 m!2257883))

(assert (=> b!1830183 m!2257883))

(declare-fun m!2257885 () Bool)

(assert (=> b!1830183 m!2257885))

(assert (=> d!559482 m!2257879))

(assert (=> d!559482 m!2257867))

(assert (=> b!1830176 m!2257881))

(assert (=> b!1830176 m!2257881))

(declare-fun m!2257887 () Bool)

(assert (=> b!1830176 m!2257887))

(assert (=> b!1830176 m!2257883))

(assert (=> b!1830176 m!2257887))

(assert (=> b!1830176 m!2257883))

(declare-fun m!2257889 () Bool)

(assert (=> b!1830176 m!2257889))

(assert (=> b!1830179 m!2257883))

(assert (=> b!1830179 m!2257883))

(assert (=> b!1830179 m!2257885))

(assert (=> b!1830185 m!2257881))

(assert (=> b!1830112 d!559482))

(assert (=> b!1830112 d!559474))

(assert (=> b!1830112 d!559476))

(declare-fun d!559484 () Bool)

(declare-fun e!1169915 () Bool)

(assert (=> d!559484 e!1169915))

(declare-fun res!823136 () Bool)

(assert (=> d!559484 (=> (not res!823136) (not e!1169915))))

(declare-fun lt!710701 () Regex!4967)

(assert (=> d!559484 (= res!823136 (validRegex!2024 lt!710701))))

(declare-fun e!1169917 () Regex!4967)

(assert (=> d!559484 (= lt!710701 e!1169917)))

(declare-fun c!298424 () Bool)

(declare-fun e!1169914 () Bool)

(assert (=> d!559484 (= c!298424 e!1169914)))

(declare-fun res!823135 () Bool)

(assert (=> d!559484 (=> (not res!823135) (not e!1169914))))

(assert (=> d!559484 (= res!823135 ((_ is Cons!20136) (map!4177 rules!4610 lambda!71874)))))

(declare-fun lambda!71882 () Int)

(declare-fun forall!4332 (List!20206 Int) Bool)

(assert (=> d!559484 (forall!4332 (map!4177 rules!4610 lambda!71874) lambda!71882)))

(assert (=> d!559484 (= (generalisedUnion!482 (map!4177 rules!4610 lambda!71874)) lt!710701)))

(declare-fun b!1830213 () Bool)

(declare-fun e!1169919 () Regex!4967)

(assert (=> b!1830213 (= e!1169917 e!1169919)))

(declare-fun c!298427 () Bool)

(assert (=> b!1830213 (= c!298427 ((_ is Cons!20136) (map!4177 rules!4610 lambda!71874)))))

(declare-fun b!1830214 () Bool)

(declare-fun isEmpty!12709 (List!20206) Bool)

(assert (=> b!1830214 (= e!1169914 (isEmpty!12709 (t!170571 (map!4177 rules!4610 lambda!71874))))))

(declare-fun b!1830215 () Bool)

(assert (=> b!1830215 (= e!1169917 (h!25537 (map!4177 rules!4610 lambda!71874)))))

(declare-fun e!1169918 () Bool)

(declare-fun b!1830216 () Bool)

(declare-fun head!4276 (List!20206) Regex!4967)

(assert (=> b!1830216 (= e!1169918 (= lt!710701 (head!4276 (map!4177 rules!4610 lambda!71874))))))

(declare-fun b!1830217 () Bool)

(assert (=> b!1830217 (= e!1169919 (Union!4967 (h!25537 (map!4177 rules!4610 lambda!71874)) (generalisedUnion!482 (t!170571 (map!4177 rules!4610 lambda!71874)))))))

(declare-fun b!1830218 () Bool)

(declare-fun isUnion!125 (Regex!4967) Bool)

(assert (=> b!1830218 (= e!1169918 (isUnion!125 lt!710701))))

(declare-fun b!1830219 () Bool)

(assert (=> b!1830219 (= e!1169919 EmptyLang!4967)))

(declare-fun b!1830220 () Bool)

(declare-fun e!1169916 () Bool)

(assert (=> b!1830220 (= e!1169915 e!1169916)))

(declare-fun c!298426 () Bool)

(assert (=> b!1830220 (= c!298426 (isEmpty!12709 (map!4177 rules!4610 lambda!71874)))))

(declare-fun b!1830221 () Bool)

(declare-fun isEmptyLang!125 (Regex!4967) Bool)

(assert (=> b!1830221 (= e!1169916 (isEmptyLang!125 lt!710701))))

(declare-fun b!1830222 () Bool)

(assert (=> b!1830222 (= e!1169916 e!1169918)))

(declare-fun c!298425 () Bool)

(declare-fun tail!2735 (List!20206) List!20206)

(assert (=> b!1830222 (= c!298425 (isEmpty!12709 (tail!2735 (map!4177 rules!4610 lambda!71874))))))

(assert (= (and d!559484 res!823135) b!1830214))

(assert (= (and d!559484 c!298424) b!1830215))

(assert (= (and d!559484 (not c!298424)) b!1830213))

(assert (= (and b!1830213 c!298427) b!1830217))

(assert (= (and b!1830213 (not c!298427)) b!1830219))

(assert (= (and d!559484 res!823136) b!1830220))

(assert (= (and b!1830220 c!298426) b!1830221))

(assert (= (and b!1830220 (not c!298426)) b!1830222))

(assert (= (and b!1830222 c!298425) b!1830216))

(assert (= (and b!1830222 (not c!298425)) b!1830218))

(declare-fun m!2257899 () Bool)

(assert (=> b!1830218 m!2257899))

(declare-fun m!2257901 () Bool)

(assert (=> b!1830214 m!2257901))

(assert (=> b!1830216 m!2257797))

(declare-fun m!2257903 () Bool)

(assert (=> b!1830216 m!2257903))

(declare-fun m!2257905 () Bool)

(assert (=> d!559484 m!2257905))

(assert (=> d!559484 m!2257797))

(declare-fun m!2257907 () Bool)

(assert (=> d!559484 m!2257907))

(declare-fun m!2257909 () Bool)

(assert (=> b!1830217 m!2257909))

(assert (=> b!1830222 m!2257797))

(declare-fun m!2257911 () Bool)

(assert (=> b!1830222 m!2257911))

(assert (=> b!1830222 m!2257911))

(declare-fun m!2257913 () Bool)

(assert (=> b!1830222 m!2257913))

(declare-fun m!2257915 () Bool)

(assert (=> b!1830221 m!2257915))

(assert (=> b!1830220 m!2257797))

(declare-fun m!2257917 () Bool)

(assert (=> b!1830220 m!2257917))

(assert (=> b!1830110 d!559484))

(declare-fun d!559492 () Bool)

(declare-fun lt!710707 () List!20206)

(declare-fun size!15963 (List!20206) Int)

(declare-fun size!15964 (List!20205) Int)

(assert (=> d!559492 (= (size!15963 lt!710707) (size!15964 rules!4610))))

(declare-fun e!1169940 () List!20206)

(assert (=> d!559492 (= lt!710707 e!1169940)))

(declare-fun c!298442 () Bool)

(assert (=> d!559492 (= c!298442 ((_ is Nil!20135) rules!4610))))

(assert (=> d!559492 (= (map!4177 rules!4610 lambda!71874) lt!710707)))

(declare-fun b!1830257 () Bool)

(assert (=> b!1830257 (= e!1169940 Nil!20136)))

(declare-fun b!1830258 () Bool)

(declare-fun $colon$colon!458 (List!20206 Regex!4967) List!20206)

(declare-fun dynLambda!10001 (Int Rule!7078) Regex!4967)

(assert (=> b!1830258 (= e!1169940 ($colon$colon!458 (map!4177 (t!170570 rules!4610) lambda!71874) (dynLambda!10001 lambda!71874 (h!25536 rules!4610))))))

(assert (= (and d!559492 c!298442) b!1830257))

(assert (= (and d!559492 (not c!298442)) b!1830258))

(declare-fun b_lambda!60489 () Bool)

(assert (=> (not b_lambda!60489) (not b!1830258)))

(declare-fun m!2257939 () Bool)

(assert (=> d!559492 m!2257939))

(declare-fun m!2257941 () Bool)

(assert (=> d!559492 m!2257941))

(declare-fun m!2257943 () Bool)

(assert (=> b!1830258 m!2257943))

(declare-fun m!2257945 () Bool)

(assert (=> b!1830258 m!2257945))

(assert (=> b!1830258 m!2257943))

(assert (=> b!1830258 m!2257945))

(declare-fun m!2257947 () Bool)

(assert (=> b!1830258 m!2257947))

(assert (=> b!1830110 d!559492))

(declare-fun b!1830268 () Bool)

(declare-fun e!1169945 () List!20204)

(assert (=> b!1830268 (= e!1169945 (Cons!20134 (h!25535 lt!710680) (++!5463 (t!170569 lt!710680) suffix!1698)))))

(declare-fun d!559496 () Bool)

(declare-fun e!1169946 () Bool)

(assert (=> d!559496 e!1169946))

(declare-fun res!823148 () Bool)

(assert (=> d!559496 (=> (not res!823148) (not e!1169946))))

(declare-fun lt!710713 () List!20204)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2978 (List!20204) (InoxSet C!10108))

(assert (=> d!559496 (= res!823148 (= (content!2978 lt!710713) ((_ map or) (content!2978 lt!710680) (content!2978 suffix!1698))))))

(assert (=> d!559496 (= lt!710713 e!1169945)))

(declare-fun c!298445 () Bool)

(assert (=> d!559496 (= c!298445 ((_ is Nil!20134) lt!710680))))

(assert (=> d!559496 (= (++!5463 lt!710680 suffix!1698) lt!710713)))

(declare-fun b!1830269 () Bool)

(declare-fun res!823147 () Bool)

(assert (=> b!1830269 (=> (not res!823147) (not e!1169946))))

(assert (=> b!1830269 (= res!823147 (= (size!15960 lt!710713) (+ (size!15960 lt!710680) (size!15960 suffix!1698))))))

(declare-fun b!1830267 () Bool)

(assert (=> b!1830267 (= e!1169945 suffix!1698)))

(declare-fun b!1830270 () Bool)

(assert (=> b!1830270 (= e!1169946 (or (not (= suffix!1698 Nil!20134)) (= lt!710713 lt!710680)))))

(assert (= (and d!559496 c!298445) b!1830267))

(assert (= (and d!559496 (not c!298445)) b!1830268))

(assert (= (and d!559496 res!823148) b!1830269))

(assert (= (and b!1830269 res!823147) b!1830270))

(declare-fun m!2257955 () Bool)

(assert (=> b!1830268 m!2257955))

(declare-fun m!2257957 () Bool)

(assert (=> d!559496 m!2257957))

(declare-fun m!2257959 () Bool)

(assert (=> d!559496 m!2257959))

(declare-fun m!2257961 () Bool)

(assert (=> d!559496 m!2257961))

(declare-fun m!2257963 () Bool)

(assert (=> b!1830269 m!2257963))

(declare-fun m!2257965 () Bool)

(assert (=> b!1830269 m!2257965))

(declare-fun m!2257967 () Bool)

(assert (=> b!1830269 m!2257967))

(assert (=> b!1830121 d!559496))

(declare-fun d!559500 () Bool)

(declare-fun list!8180 (Conc!6671) List!20204)

(assert (=> d!559500 (= (list!8179 (charsOf!2282 token!567)) (list!8180 (c!298403 (charsOf!2282 token!567))))))

(declare-fun bs!407772 () Bool)

(assert (= bs!407772 d!559500))

(declare-fun m!2257969 () Bool)

(assert (=> bs!407772 m!2257969))

(assert (=> b!1830121 d!559500))

(declare-fun d!559502 () Bool)

(declare-fun lt!710719 () BalanceConc!13286)

(assert (=> d!559502 (= (list!8179 lt!710719) (originalCharacters!4447 token!567))))

(declare-fun dynLambda!10003 (Int TokenValue!3729) BalanceConc!13286)

(assert (=> d!559502 (= lt!710719 (dynLambda!10003 (toChars!5041 (transformation!3639 (rule!5807 token!567))) (value!113378 token!567)))))

(assert (=> d!559502 (= (charsOf!2282 token!567) lt!710719)))

(declare-fun b_lambda!60493 () Bool)

(assert (=> (not b_lambda!60493) (not d!559502)))

(declare-fun t!170573 () Bool)

(declare-fun tb!111753 () Bool)

(assert (=> (and b!1830095 (= (toChars!5041 (transformation!3639 (rule!5807 token!567))) (toChars!5041 (transformation!3639 (rule!5807 token!567)))) t!170573) tb!111753))

(declare-fun b!1830281 () Bool)

(declare-fun e!1169952 () Bool)

(declare-fun tp!517853 () Bool)

(declare-fun inv!26196 (Conc!6671) Bool)

(assert (=> b!1830281 (= e!1169952 (and (inv!26196 (c!298403 (dynLambda!10003 (toChars!5041 (transformation!3639 (rule!5807 token!567))) (value!113378 token!567)))) tp!517853))))

(declare-fun result!134408 () Bool)

(declare-fun inv!26197 (BalanceConc!13286) Bool)

(assert (=> tb!111753 (= result!134408 (and (inv!26197 (dynLambda!10003 (toChars!5041 (transformation!3639 (rule!5807 token!567))) (value!113378 token!567))) e!1169952))))

(assert (= tb!111753 b!1830281))

(declare-fun m!2257981 () Bool)

(assert (=> b!1830281 m!2257981))

(declare-fun m!2257983 () Bool)

(assert (=> tb!111753 m!2257983))

(assert (=> d!559502 t!170573))

(declare-fun b_and!142409 () Bool)

(assert (= b_and!142395 (and (=> t!170573 result!134408) b_and!142409)))

(declare-fun tb!111755 () Bool)

(declare-fun t!170575 () Bool)

(assert (=> (and b!1830100 (= (toChars!5041 (transformation!3639 rule!580)) (toChars!5041 (transformation!3639 (rule!5807 token!567)))) t!170575) tb!111755))

(declare-fun result!134412 () Bool)

(assert (= result!134412 result!134408))

(assert (=> d!559502 t!170575))

(declare-fun b_and!142411 () Bool)

(assert (= b_and!142399 (and (=> t!170575 result!134412) b_and!142411)))

(declare-fun tb!111757 () Bool)

(declare-fun t!170577 () Bool)

(assert (=> (and b!1830099 (= (toChars!5041 (transformation!3639 (h!25536 rs!808))) (toChars!5041 (transformation!3639 (rule!5807 token!567)))) t!170577) tb!111757))

(declare-fun result!134414 () Bool)

(assert (= result!134414 result!134408))

(assert (=> d!559502 t!170577))

(declare-fun b_and!142413 () Bool)

(assert (= b_and!142403 (and (=> t!170577 result!134414) b_and!142413)))

(declare-fun tb!111759 () Bool)

(declare-fun t!170579 () Bool)

(assert (=> (and b!1830109 (= (toChars!5041 (transformation!3639 (h!25536 rules!4610))) (toChars!5041 (transformation!3639 (rule!5807 token!567)))) t!170579) tb!111759))

(declare-fun result!134416 () Bool)

(assert (= result!134416 result!134408))

(assert (=> d!559502 t!170579))

(declare-fun b_and!142415 () Bool)

(assert (= b_and!142407 (and (=> t!170579 result!134416) b_and!142415)))

(declare-fun m!2257985 () Bool)

(assert (=> d!559502 m!2257985))

(declare-fun m!2257987 () Bool)

(assert (=> d!559502 m!2257987))

(assert (=> b!1830121 d!559502))

(declare-fun b!1830348 () Bool)

(declare-fun res!823191 () Bool)

(declare-fun e!1169983 () Bool)

(assert (=> b!1830348 (=> (not res!823191) (not e!1169983))))

(declare-fun lt!710749 () Option!4219)

(declare-fun get!6215 (Option!4219) tuple2!19594)

(assert (=> b!1830348 (= res!823191 (= (value!113378 (_1!11199 (get!6215 lt!710749))) (apply!5427 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710749)))) (seqFromList!2596 (originalCharacters!4447 (_1!11199 (get!6215 lt!710749)))))))))

(declare-fun b!1830349 () Bool)

(declare-fun e!1169985 () Option!4219)

(declare-fun call!114644 () Option!4219)

(assert (=> b!1830349 (= e!1169985 call!114644)))

(declare-fun b!1830350 () Bool)

(declare-fun res!823192 () Bool)

(assert (=> b!1830350 (=> (not res!823192) (not e!1169983))))

(assert (=> b!1830350 (= res!823192 (= (++!5463 (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!710749)))) (_2!11199 (get!6215 lt!710749))) input!3681))))

(declare-fun b!1830351 () Bool)

(declare-fun lt!710752 () Option!4219)

(declare-fun lt!710751 () Option!4219)

(assert (=> b!1830351 (= e!1169985 (ite (and ((_ is None!4218) lt!710752) ((_ is None!4218) lt!710751)) None!4218 (ite ((_ is None!4218) lt!710751) lt!710752 (ite ((_ is None!4218) lt!710752) lt!710751 (ite (>= (size!15959 (_1!11199 (v!25789 lt!710752))) (size!15959 (_1!11199 (v!25789 lt!710751)))) lt!710752 lt!710751)))))))

(assert (=> b!1830351 (= lt!710752 call!114644)))

(assert (=> b!1830351 (= lt!710751 (maxPrefix!1816 thiss!28318 (t!170570 rules!4610) input!3681))))

(declare-fun b!1830352 () Bool)

(assert (=> b!1830352 (= e!1169983 (contains!3713 rules!4610 (rule!5807 (_1!11199 (get!6215 lt!710749)))))))

(declare-fun b!1830353 () Bool)

(declare-fun e!1169984 () Bool)

(assert (=> b!1830353 (= e!1169984 e!1169983)))

(declare-fun res!823188 () Bool)

(assert (=> b!1830353 (=> (not res!823188) (not e!1169983))))

(declare-fun isDefined!3521 (Option!4219) Bool)

(assert (=> b!1830353 (= res!823188 (isDefined!3521 lt!710749))))

(declare-fun b!1830354 () Bool)

(declare-fun res!823193 () Bool)

(assert (=> b!1830354 (=> (not res!823193) (not e!1169983))))

(assert (=> b!1830354 (= res!823193 (matchR!2430 (regex!3639 (rule!5807 (_1!11199 (get!6215 lt!710749)))) (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!710749))))))))

(declare-fun d!559506 () Bool)

(assert (=> d!559506 e!1169984))

(declare-fun res!823190 () Bool)

(assert (=> d!559506 (=> res!823190 e!1169984)))

(declare-fun isEmpty!12710 (Option!4219) Bool)

(assert (=> d!559506 (= res!823190 (isEmpty!12710 lt!710749))))

(assert (=> d!559506 (= lt!710749 e!1169985)))

(declare-fun c!298463 () Bool)

(assert (=> d!559506 (= c!298463 (and ((_ is Cons!20135) rules!4610) ((_ is Nil!20135) (t!170570 rules!4610))))))

(declare-fun lt!710750 () Unit!34797)

(declare-fun lt!710748 () Unit!34797)

(assert (=> d!559506 (= lt!710750 lt!710748)))

(declare-fun isPrefix!1834 (List!20204 List!20204) Bool)

(assert (=> d!559506 (isPrefix!1834 input!3681 input!3681)))

(declare-fun lemmaIsPrefixRefl!1211 (List!20204 List!20204) Unit!34797)

(assert (=> d!559506 (= lt!710748 (lemmaIsPrefixRefl!1211 input!3681 input!3681))))

(declare-fun rulesValidInductive!1254 (LexerInterface!3268 List!20205) Bool)

(assert (=> d!559506 (rulesValidInductive!1254 thiss!28318 rules!4610)))

(assert (=> d!559506 (= (maxPrefix!1816 thiss!28318 rules!4610 input!3681) lt!710749)))

(declare-fun bm!114639 () Bool)

(assert (=> bm!114639 (= call!114644 (maxPrefixOneRule!1177 thiss!28318 (h!25536 rules!4610) input!3681))))

(declare-fun b!1830355 () Bool)

(declare-fun res!823189 () Bool)

(assert (=> b!1830355 (=> (not res!823189) (not e!1169983))))

(assert (=> b!1830355 (= res!823189 (= (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!710749)))) (originalCharacters!4447 (_1!11199 (get!6215 lt!710749)))))))

(declare-fun b!1830356 () Bool)

(declare-fun res!823187 () Bool)

(assert (=> b!1830356 (=> (not res!823187) (not e!1169983))))

(assert (=> b!1830356 (= res!823187 (< (size!15960 (_2!11199 (get!6215 lt!710749))) (size!15960 input!3681)))))

(assert (= (and d!559506 c!298463) b!1830349))

(assert (= (and d!559506 (not c!298463)) b!1830351))

(assert (= (or b!1830349 b!1830351) bm!114639))

(assert (= (and d!559506 (not res!823190)) b!1830353))

(assert (= (and b!1830353 res!823188) b!1830355))

(assert (= (and b!1830355 res!823189) b!1830356))

(assert (= (and b!1830356 res!823187) b!1830350))

(assert (= (and b!1830350 res!823192) b!1830348))

(assert (= (and b!1830348 res!823191) b!1830354))

(assert (= (and b!1830354 res!823193) b!1830352))

(declare-fun m!2258021 () Bool)

(assert (=> d!559506 m!2258021))

(declare-fun m!2258023 () Bool)

(assert (=> d!559506 m!2258023))

(declare-fun m!2258025 () Bool)

(assert (=> d!559506 m!2258025))

(declare-fun m!2258027 () Bool)

(assert (=> d!559506 m!2258027))

(declare-fun m!2258029 () Bool)

(assert (=> b!1830353 m!2258029))

(declare-fun m!2258031 () Bool)

(assert (=> bm!114639 m!2258031))

(declare-fun m!2258033 () Bool)

(assert (=> b!1830350 m!2258033))

(declare-fun m!2258035 () Bool)

(assert (=> b!1830350 m!2258035))

(assert (=> b!1830350 m!2258035))

(declare-fun m!2258037 () Bool)

(assert (=> b!1830350 m!2258037))

(assert (=> b!1830350 m!2258037))

(declare-fun m!2258039 () Bool)

(assert (=> b!1830350 m!2258039))

(assert (=> b!1830356 m!2258033))

(declare-fun m!2258041 () Bool)

(assert (=> b!1830356 m!2258041))

(declare-fun m!2258043 () Bool)

(assert (=> b!1830356 m!2258043))

(assert (=> b!1830352 m!2258033))

(declare-fun m!2258045 () Bool)

(assert (=> b!1830352 m!2258045))

(declare-fun m!2258047 () Bool)

(assert (=> b!1830351 m!2258047))

(assert (=> b!1830348 m!2258033))

(declare-fun m!2258049 () Bool)

(assert (=> b!1830348 m!2258049))

(assert (=> b!1830348 m!2258049))

(declare-fun m!2258051 () Bool)

(assert (=> b!1830348 m!2258051))

(assert (=> b!1830355 m!2258033))

(assert (=> b!1830355 m!2258035))

(assert (=> b!1830355 m!2258035))

(assert (=> b!1830355 m!2258037))

(assert (=> b!1830354 m!2258033))

(assert (=> b!1830354 m!2258035))

(assert (=> b!1830354 m!2258035))

(assert (=> b!1830354 m!2258037))

(assert (=> b!1830354 m!2258037))

(declare-fun m!2258055 () Bool)

(assert (=> b!1830354 m!2258055))

(assert (=> b!1830098 d!559506))

(assert (=> b!1830120 d!559482))

(declare-fun d!559516 () Bool)

(assert (=> d!559516 (= (isEmpty!12705 rules!4610) ((_ is Nil!20135) rules!4610))))

(assert (=> b!1830107 d!559516))

(declare-fun b!1830381 () Bool)

(declare-fun e!1170003 () Bool)

(declare-fun inv!17 (TokenValue!3729) Bool)

(assert (=> b!1830381 (= e!1170003 (inv!17 (value!113378 token!567)))))

(declare-fun b!1830382 () Bool)

(declare-fun e!1170001 () Bool)

(declare-fun inv!16 (TokenValue!3729) Bool)

(assert (=> b!1830382 (= e!1170001 (inv!16 (value!113378 token!567)))))

(declare-fun d!559522 () Bool)

(declare-fun c!298469 () Bool)

(assert (=> d!559522 (= c!298469 ((_ is IntegerValue!11187) (value!113378 token!567)))))

(assert (=> d!559522 (= (inv!21 (value!113378 token!567)) e!1170001)))

(declare-fun b!1830383 () Bool)

(declare-fun res!823206 () Bool)

(declare-fun e!1170002 () Bool)

(assert (=> b!1830383 (=> res!823206 e!1170002)))

(assert (=> b!1830383 (= res!823206 (not ((_ is IntegerValue!11189) (value!113378 token!567))))))

(assert (=> b!1830383 (= e!1170003 e!1170002)))

(declare-fun b!1830384 () Bool)

(assert (=> b!1830384 (= e!1170001 e!1170003)))

(declare-fun c!298468 () Bool)

(assert (=> b!1830384 (= c!298468 ((_ is IntegerValue!11188) (value!113378 token!567)))))

(declare-fun b!1830385 () Bool)

(declare-fun inv!15 (TokenValue!3729) Bool)

(assert (=> b!1830385 (= e!1170002 (inv!15 (value!113378 token!567)))))

(assert (= (and d!559522 c!298469) b!1830382))

(assert (= (and d!559522 (not c!298469)) b!1830384))

(assert (= (and b!1830384 c!298468) b!1830381))

(assert (= (and b!1830384 (not c!298468)) b!1830383))

(assert (= (and b!1830383 (not res!823206)) b!1830385))

(declare-fun m!2258061 () Bool)

(assert (=> b!1830381 m!2258061))

(declare-fun m!2258063 () Bool)

(assert (=> b!1830382 m!2258063))

(declare-fun m!2258065 () Bool)

(assert (=> b!1830385 m!2258065))

(assert (=> b!1830118 d!559522))

(declare-fun d!559524 () Bool)

(assert (=> d!559524 true))

(declare-fun lt!710757 () Bool)

(assert (=> d!559524 (= lt!710757 (rulesValidInductive!1254 thiss!28318 (t!170570 rs!808)))))

(declare-fun lambda!71895 () Int)

(declare-fun forall!4333 (List!20205 Int) Bool)

(assert (=> d!559524 (= lt!710757 (forall!4333 (t!170570 rs!808) lambda!71895))))

(assert (=> d!559524 (= (rulesValid!1386 thiss!28318 (t!170570 rs!808)) lt!710757)))

(declare-fun bs!407776 () Bool)

(assert (= bs!407776 d!559524))

(declare-fun m!2258079 () Bool)

(assert (=> bs!407776 m!2258079))

(declare-fun m!2258081 () Bool)

(assert (=> bs!407776 m!2258081))

(assert (=> b!1830108 d!559524))

(assert (=> b!1830106 d!559500))

(declare-fun b!1830486 () Bool)

(declare-fun e!1170056 () Option!4219)

(declare-datatypes ((tuple2!19596 0))(
  ( (tuple2!19597 (_1!11200 List!20204) (_2!11200 List!20204)) )
))
(declare-fun lt!710796 () tuple2!19596)

(declare-fun size!15965 (BalanceConc!13286) Int)

(assert (=> b!1830486 (= e!1170056 (Some!4218 (tuple2!19595 (Token!6833 (apply!5427 (transformation!3639 rule!580) (seqFromList!2596 (_1!11200 lt!710796))) rule!580 (size!15965 (seqFromList!2596 (_1!11200 lt!710796))) (_1!11200 lt!710796)) (_2!11200 lt!710796))))))

(declare-fun lt!710797 () Unit!34797)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!498 (Regex!4967 List!20204) Unit!34797)

(assert (=> b!1830486 (= lt!710797 (longestMatchIsAcceptedByMatchOrIsEmpty!498 (regex!3639 rule!580) input!3681))))

(declare-fun res!823271 () Bool)

(declare-fun findLongestMatchInner!514 (Regex!4967 List!20204 Int List!20204 List!20204 Int) tuple2!19596)

(assert (=> b!1830486 (= res!823271 (isEmpty!12706 (_1!11200 (findLongestMatchInner!514 (regex!3639 rule!580) Nil!20134 (size!15960 Nil!20134) input!3681 input!3681 (size!15960 input!3681)))))))

(declare-fun e!1170057 () Bool)

(assert (=> b!1830486 (=> res!823271 e!1170057)))

(assert (=> b!1830486 e!1170057))

(declare-fun lt!710799 () Unit!34797)

(assert (=> b!1830486 (= lt!710799 lt!710797)))

(declare-fun lt!710798 () Unit!34797)

(declare-fun lemmaSemiInverse!728 (TokenValueInjection!7118 BalanceConc!13286) Unit!34797)

(assert (=> b!1830486 (= lt!710798 (lemmaSemiInverse!728 (transformation!3639 rule!580) (seqFromList!2596 (_1!11200 lt!710796))))))

(declare-fun b!1830488 () Bool)

(declare-fun e!1170058 () Bool)

(declare-fun lt!710795 () Option!4219)

(assert (=> b!1830488 (= e!1170058 (= (size!15959 (_1!11199 (get!6215 lt!710795))) (size!15960 (originalCharacters!4447 (_1!11199 (get!6215 lt!710795))))))))

(declare-fun b!1830489 () Bool)

(assert (=> b!1830489 (= e!1170056 None!4218)))

(declare-fun b!1830490 () Bool)

(assert (=> b!1830490 (= e!1170057 (matchR!2430 (regex!3639 rule!580) (_1!11200 (findLongestMatchInner!514 (regex!3639 rule!580) Nil!20134 (size!15960 Nil!20134) input!3681 input!3681 (size!15960 input!3681)))))))

(declare-fun b!1830491 () Bool)

(declare-fun res!823273 () Bool)

(assert (=> b!1830491 (=> (not res!823273) (not e!1170058))))

(assert (=> b!1830491 (= res!823273 (< (size!15960 (_2!11199 (get!6215 lt!710795))) (size!15960 input!3681)))))

(declare-fun b!1830492 () Bool)

(declare-fun res!823272 () Bool)

(assert (=> b!1830492 (=> (not res!823272) (not e!1170058))))

(assert (=> b!1830492 (= res!823272 (= (rule!5807 (_1!11199 (get!6215 lt!710795))) rule!580))))

(declare-fun b!1830493 () Bool)

(declare-fun res!823274 () Bool)

(assert (=> b!1830493 (=> (not res!823274) (not e!1170058))))

(assert (=> b!1830493 (= res!823274 (= (value!113378 (_1!11199 (get!6215 lt!710795))) (apply!5427 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710795)))) (seqFromList!2596 (originalCharacters!4447 (_1!11199 (get!6215 lt!710795)))))))))

(declare-fun b!1830494 () Bool)

(declare-fun e!1170055 () Bool)

(assert (=> b!1830494 (= e!1170055 e!1170058)))

(declare-fun res!823268 () Bool)

(assert (=> b!1830494 (=> (not res!823268) (not e!1170058))))

(assert (=> b!1830494 (= res!823268 (matchR!2430 (regex!3639 rule!580) (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!710795))))))))

(declare-fun d!559528 () Bool)

(assert (=> d!559528 e!1170055))

(declare-fun res!823270 () Bool)

(assert (=> d!559528 (=> res!823270 e!1170055)))

(assert (=> d!559528 (= res!823270 (isEmpty!12710 lt!710795))))

(assert (=> d!559528 (= lt!710795 e!1170056)))

(declare-fun c!298488 () Bool)

(assert (=> d!559528 (= c!298488 (isEmpty!12706 (_1!11200 lt!710796)))))

(declare-fun findLongestMatch!441 (Regex!4967 List!20204) tuple2!19596)

(assert (=> d!559528 (= lt!710796 (findLongestMatch!441 (regex!3639 rule!580) input!3681))))

(assert (=> d!559528 (ruleValid!1129 thiss!28318 rule!580)))

(assert (=> d!559528 (= (maxPrefixOneRule!1177 thiss!28318 rule!580 input!3681) lt!710795)))

(declare-fun b!1830487 () Bool)

(declare-fun res!823269 () Bool)

(assert (=> b!1830487 (=> (not res!823269) (not e!1170058))))

(assert (=> b!1830487 (= res!823269 (= (++!5463 (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!710795)))) (_2!11199 (get!6215 lt!710795))) input!3681))))

(assert (= (and d!559528 c!298488) b!1830489))

(assert (= (and d!559528 (not c!298488)) b!1830486))

(assert (= (and b!1830486 (not res!823271)) b!1830490))

(assert (= (and d!559528 (not res!823270)) b!1830494))

(assert (= (and b!1830494 res!823268) b!1830487))

(assert (= (and b!1830487 res!823269) b!1830491))

(assert (= (and b!1830491 res!823273) b!1830492))

(assert (= (and b!1830492 res!823272) b!1830493))

(assert (= (and b!1830493 res!823274) b!1830488))

(declare-fun m!2258179 () Bool)

(assert (=> b!1830492 m!2258179))

(assert (=> b!1830491 m!2258179))

(declare-fun m!2258181 () Bool)

(assert (=> b!1830491 m!2258181))

(assert (=> b!1830491 m!2258043))

(assert (=> b!1830494 m!2258179))

(declare-fun m!2258183 () Bool)

(assert (=> b!1830494 m!2258183))

(assert (=> b!1830494 m!2258183))

(declare-fun m!2258185 () Bool)

(assert (=> b!1830494 m!2258185))

(assert (=> b!1830494 m!2258185))

(declare-fun m!2258187 () Bool)

(assert (=> b!1830494 m!2258187))

(declare-fun m!2258189 () Bool)

(assert (=> d!559528 m!2258189))

(declare-fun m!2258191 () Bool)

(assert (=> d!559528 m!2258191))

(declare-fun m!2258193 () Bool)

(assert (=> d!559528 m!2258193))

(assert (=> d!559528 m!2257789))

(assert (=> b!1830488 m!2258179))

(declare-fun m!2258195 () Bool)

(assert (=> b!1830488 m!2258195))

(assert (=> b!1830493 m!2258179))

(declare-fun m!2258197 () Bool)

(assert (=> b!1830493 m!2258197))

(assert (=> b!1830493 m!2258197))

(declare-fun m!2258199 () Bool)

(assert (=> b!1830493 m!2258199))

(assert (=> b!1830486 m!2258043))

(declare-fun m!2258201 () Bool)

(assert (=> b!1830486 m!2258201))

(declare-fun m!2258203 () Bool)

(assert (=> b!1830486 m!2258203))

(declare-fun m!2258205 () Bool)

(assert (=> b!1830486 m!2258205))

(declare-fun m!2258207 () Bool)

(assert (=> b!1830486 m!2258207))

(declare-fun m!2258209 () Bool)

(assert (=> b!1830486 m!2258209))

(assert (=> b!1830486 m!2258201))

(assert (=> b!1830486 m!2258043))

(declare-fun m!2258211 () Bool)

(assert (=> b!1830486 m!2258211))

(assert (=> b!1830486 m!2258207))

(declare-fun m!2258213 () Bool)

(assert (=> b!1830486 m!2258213))

(assert (=> b!1830486 m!2258207))

(declare-fun m!2258217 () Bool)

(assert (=> b!1830486 m!2258217))

(assert (=> b!1830486 m!2258207))

(assert (=> b!1830487 m!2258179))

(assert (=> b!1830487 m!2258183))

(assert (=> b!1830487 m!2258183))

(assert (=> b!1830487 m!2258185))

(assert (=> b!1830487 m!2258185))

(declare-fun m!2258229 () Bool)

(assert (=> b!1830487 m!2258229))

(assert (=> b!1830490 m!2258201))

(assert (=> b!1830490 m!2258043))

(assert (=> b!1830490 m!2258201))

(assert (=> b!1830490 m!2258043))

(assert (=> b!1830490 m!2258211))

(declare-fun m!2258231 () Bool)

(assert (=> b!1830490 m!2258231))

(assert (=> b!1830106 d!559528))

(declare-fun d!559556 () Bool)

(declare-fun fromListB!1185 (List!20204) BalanceConc!13286)

(assert (=> d!559556 (= (seqFromList!2596 lt!710679) (fromListB!1185 lt!710679))))

(declare-fun bs!407783 () Bool)

(assert (= bs!407783 d!559556))

(declare-fun m!2258245 () Bool)

(assert (=> bs!407783 m!2258245))

(assert (=> b!1830106 d!559556))

(declare-fun d!559562 () Bool)

(declare-fun dynLambda!10004 (Int BalanceConc!13286) TokenValue!3729)

(assert (=> d!559562 (= (apply!5427 (transformation!3639 rule!580) (seqFromList!2596 lt!710679)) (dynLambda!10004 (toValue!5182 (transformation!3639 rule!580)) (seqFromList!2596 lt!710679)))))

(declare-fun b_lambda!60499 () Bool)

(assert (=> (not b_lambda!60499) (not d!559562)))

(declare-fun tb!111769 () Bool)

(declare-fun t!170589 () Bool)

(assert (=> (and b!1830095 (= (toValue!5182 (transformation!3639 (rule!5807 token!567))) (toValue!5182 (transformation!3639 rule!580))) t!170589) tb!111769))

(declare-fun result!134428 () Bool)

(assert (=> tb!111769 (= result!134428 (inv!21 (dynLambda!10004 (toValue!5182 (transformation!3639 rule!580)) (seqFromList!2596 lt!710679))))))

(declare-fun m!2258249 () Bool)

(assert (=> tb!111769 m!2258249))

(assert (=> d!559562 t!170589))

(declare-fun b_and!142433 () Bool)

(assert (= b_and!142393 (and (=> t!170589 result!134428) b_and!142433)))

(declare-fun t!170591 () Bool)

(declare-fun tb!111771 () Bool)

(assert (=> (and b!1830100 (= (toValue!5182 (transformation!3639 rule!580)) (toValue!5182 (transformation!3639 rule!580))) t!170591) tb!111771))

(declare-fun result!134432 () Bool)

(assert (= result!134432 result!134428))

(assert (=> d!559562 t!170591))

(declare-fun b_and!142435 () Bool)

(assert (= b_and!142397 (and (=> t!170591 result!134432) b_and!142435)))

(declare-fun tb!111773 () Bool)

(declare-fun t!170593 () Bool)

(assert (=> (and b!1830099 (= (toValue!5182 (transformation!3639 (h!25536 rs!808))) (toValue!5182 (transformation!3639 rule!580))) t!170593) tb!111773))

(declare-fun result!134434 () Bool)

(assert (= result!134434 result!134428))

(assert (=> d!559562 t!170593))

(declare-fun b_and!142437 () Bool)

(assert (= b_and!142401 (and (=> t!170593 result!134434) b_and!142437)))

(declare-fun t!170595 () Bool)

(declare-fun tb!111775 () Bool)

(assert (=> (and b!1830109 (= (toValue!5182 (transformation!3639 (h!25536 rules!4610))) (toValue!5182 (transformation!3639 rule!580))) t!170595) tb!111775))

(declare-fun result!134436 () Bool)

(assert (= result!134436 result!134428))

(assert (=> d!559562 t!170595))

(declare-fun b_and!142439 () Bool)

(assert (= b_and!142405 (and (=> t!170595 result!134436) b_and!142439)))

(assert (=> d!559562 m!2257839))

(declare-fun m!2258251 () Bool)

(assert (=> d!559562 m!2258251))

(assert (=> b!1830106 d!559562))

(assert (=> b!1830106 d!559502))

(declare-fun d!559566 () Bool)

(assert (=> d!559566 (= (maxPrefixOneRule!1177 thiss!28318 rule!580 input!3681) (Some!4218 (tuple2!19595 (Token!6833 (apply!5427 (transformation!3639 rule!580) (seqFromList!2596 lt!710679)) rule!580 (size!15960 lt!710679) lt!710679) suffix!1698)))))

(declare-fun lt!710805 () Unit!34797)

(declare-fun choose!11527 (LexerInterface!3268 List!20205 List!20204 List!20204 List!20204 Rule!7078) Unit!34797)

(assert (=> d!559566 (= lt!710805 (choose!11527 thiss!28318 rules!4610 lt!710679 input!3681 suffix!1698 rule!580))))

(assert (=> d!559566 (not (isEmpty!12705 rules!4610))))

(assert (=> d!559566 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!547 thiss!28318 rules!4610 lt!710679 input!3681 suffix!1698 rule!580) lt!710805)))

(declare-fun bs!407785 () Bool)

(assert (= bs!407785 d!559566))

(assert (=> bs!407785 m!2257839))

(assert (=> bs!407785 m!2257841))

(assert (=> bs!407785 m!2257839))

(declare-fun m!2258253 () Bool)

(assert (=> bs!407785 m!2258253))

(assert (=> bs!407785 m!2257849))

(assert (=> bs!407785 m!2257847))

(assert (=> bs!407785 m!2257809))

(assert (=> b!1830106 d!559566))

(declare-fun d!559568 () Bool)

(declare-fun lt!710808 () Int)

(assert (=> d!559568 (>= lt!710808 0)))

(declare-fun e!1170073 () Int)

(assert (=> d!559568 (= lt!710808 e!1170073)))

(declare-fun c!298495 () Bool)

(assert (=> d!559568 (= c!298495 ((_ is Nil!20134) lt!710679))))

(assert (=> d!559568 (= (size!15960 lt!710679) lt!710808)))

(declare-fun b!1830519 () Bool)

(assert (=> b!1830519 (= e!1170073 0)))

(declare-fun b!1830520 () Bool)

(assert (=> b!1830520 (= e!1170073 (+ 1 (size!15960 (t!170569 lt!710679))))))

(assert (= (and d!559568 c!298495) b!1830519))

(assert (= (and d!559568 (not c!298495)) b!1830520))

(declare-fun m!2258255 () Bool)

(assert (=> b!1830520 m!2258255))

(assert (=> b!1830106 d!559568))

(declare-fun bs!407786 () Bool)

(declare-fun d!559570 () Bool)

(assert (= bs!407786 (and d!559570 d!559524)))

(declare-fun lambda!71898 () Int)

(assert (=> bs!407786 (= lambda!71898 lambda!71895)))

(assert (=> d!559570 true))

(declare-fun lt!710809 () Bool)

(assert (=> d!559570 (= lt!710809 (rulesValidInductive!1254 thiss!28318 rs!808))))

(assert (=> d!559570 (= lt!710809 (forall!4333 rs!808 lambda!71898))))

(assert (=> d!559570 (= (rulesValid!1386 thiss!28318 rs!808) lt!710809)))

(declare-fun bs!407787 () Bool)

(assert (= bs!407787 d!559570))

(declare-fun m!2258257 () Bool)

(assert (=> bs!407787 m!2258257))

(declare-fun m!2258259 () Bool)

(assert (=> bs!407787 m!2258259))

(assert (=> b!1830117 d!559570))

(declare-fun d!559572 () Bool)

(declare-fun lt!710812 () Bool)

(declare-fun content!2981 (List!20205) (InoxSet Rule!7078))

(assert (=> d!559572 (= lt!710812 (select (content!2981 rules!4610) rule!580))))

(declare-fun e!1170078 () Bool)

(assert (=> d!559572 (= lt!710812 e!1170078)))

(declare-fun res!823289 () Bool)

(assert (=> d!559572 (=> (not res!823289) (not e!1170078))))

(assert (=> d!559572 (= res!823289 ((_ is Cons!20135) rules!4610))))

(assert (=> d!559572 (= (contains!3713 rules!4610 rule!580) lt!710812)))

(declare-fun b!1830525 () Bool)

(declare-fun e!1170079 () Bool)

(assert (=> b!1830525 (= e!1170078 e!1170079)))

(declare-fun res!823290 () Bool)

(assert (=> b!1830525 (=> res!823290 e!1170079)))

(assert (=> b!1830525 (= res!823290 (= (h!25536 rules!4610) rule!580))))

(declare-fun b!1830526 () Bool)

(assert (=> b!1830526 (= e!1170079 (contains!3713 (t!170570 rules!4610) rule!580))))

(assert (= (and d!559572 res!823289) b!1830525))

(assert (= (and b!1830525 (not res!823290)) b!1830526))

(declare-fun m!2258261 () Bool)

(assert (=> d!559572 m!2258261))

(declare-fun m!2258263 () Bool)

(assert (=> d!559572 m!2258263))

(declare-fun m!2258265 () Bool)

(assert (=> b!1830526 m!2258265))

(assert (=> b!1830096 d!559572))

(declare-fun b!1830528 () Bool)

(declare-fun e!1170080 () List!20204)

(assert (=> b!1830528 (= e!1170080 (Cons!20134 (h!25535 lt!710679) (++!5463 (t!170569 lt!710679) suffix!1698)))))

(declare-fun d!559574 () Bool)

(declare-fun e!1170081 () Bool)

(assert (=> d!559574 e!1170081))

(declare-fun res!823292 () Bool)

(assert (=> d!559574 (=> (not res!823292) (not e!1170081))))

(declare-fun lt!710813 () List!20204)

(assert (=> d!559574 (= res!823292 (= (content!2978 lt!710813) ((_ map or) (content!2978 lt!710679) (content!2978 suffix!1698))))))

(assert (=> d!559574 (= lt!710813 e!1170080)))

(declare-fun c!298496 () Bool)

(assert (=> d!559574 (= c!298496 ((_ is Nil!20134) lt!710679))))

(assert (=> d!559574 (= (++!5463 lt!710679 suffix!1698) lt!710813)))

(declare-fun b!1830529 () Bool)

(declare-fun res!823291 () Bool)

(assert (=> b!1830529 (=> (not res!823291) (not e!1170081))))

(assert (=> b!1830529 (= res!823291 (= (size!15960 lt!710813) (+ (size!15960 lt!710679) (size!15960 suffix!1698))))))

(declare-fun b!1830527 () Bool)

(assert (=> b!1830527 (= e!1170080 suffix!1698)))

(declare-fun b!1830530 () Bool)

(assert (=> b!1830530 (= e!1170081 (or (not (= suffix!1698 Nil!20134)) (= lt!710813 lt!710679)))))

(assert (= (and d!559574 c!298496) b!1830527))

(assert (= (and d!559574 (not c!298496)) b!1830528))

(assert (= (and d!559574 res!823292) b!1830529))

(assert (= (and b!1830529 res!823291) b!1830530))

(declare-fun m!2258267 () Bool)

(assert (=> b!1830528 m!2258267))

(declare-fun m!2258269 () Bool)

(assert (=> d!559574 m!2258269))

(declare-fun m!2258271 () Bool)

(assert (=> d!559574 m!2258271))

(assert (=> d!559574 m!2257961))

(declare-fun m!2258273 () Bool)

(assert (=> b!1830529 m!2258273))

(assert (=> b!1830529 m!2257849))

(assert (=> b!1830529 m!2257967))

(assert (=> b!1830115 d!559574))

(declare-fun d!559576 () Bool)

(assert (=> d!559576 (= (inv!26189 (tag!4053 (h!25536 rs!808))) (= (mod (str.len (value!113377 (tag!4053 (h!25536 rs!808)))) 2) 0))))

(assert (=> b!1830116 d!559576))

(declare-fun d!559578 () Bool)

(declare-fun res!823293 () Bool)

(declare-fun e!1170082 () Bool)

(assert (=> d!559578 (=> (not res!823293) (not e!1170082))))

(assert (=> d!559578 (= res!823293 (semiInverseModEq!1460 (toChars!5041 (transformation!3639 (h!25536 rs!808))) (toValue!5182 (transformation!3639 (h!25536 rs!808)))))))

(assert (=> d!559578 (= (inv!26192 (transformation!3639 (h!25536 rs!808))) e!1170082)))

(declare-fun b!1830531 () Bool)

(assert (=> b!1830531 (= e!1170082 (equivClasses!1401 (toChars!5041 (transformation!3639 (h!25536 rs!808))) (toValue!5182 (transformation!3639 (h!25536 rs!808)))))))

(assert (= (and d!559578 res!823293) b!1830531))

(declare-fun m!2258275 () Bool)

(assert (=> d!559578 m!2258275))

(declare-fun m!2258277 () Bool)

(assert (=> b!1830531 m!2258277))

(assert (=> b!1830116 d!559578))

(declare-fun bs!407788 () Bool)

(declare-fun d!559580 () Bool)

(assert (= bs!407788 (and d!559580 d!559484)))

(declare-fun lambda!71899 () Int)

(assert (=> bs!407788 (= lambda!71899 lambda!71882)))

(declare-fun e!1170084 () Bool)

(assert (=> d!559580 e!1170084))

(declare-fun res!823295 () Bool)

(assert (=> d!559580 (=> (not res!823295) (not e!1170084))))

(declare-fun lt!710814 () Regex!4967)

(assert (=> d!559580 (= res!823295 (validRegex!2024 lt!710814))))

(declare-fun e!1170086 () Regex!4967)

(assert (=> d!559580 (= lt!710814 e!1170086)))

(declare-fun c!298497 () Bool)

(declare-fun e!1170083 () Bool)

(assert (=> d!559580 (= c!298497 e!1170083)))

(declare-fun res!823294 () Bool)

(assert (=> d!559580 (=> (not res!823294) (not e!1170083))))

(assert (=> d!559580 (= res!823294 ((_ is Cons!20136) lt!710678))))

(assert (=> d!559580 (forall!4332 lt!710678 lambda!71899)))

(assert (=> d!559580 (= (generalisedUnion!482 lt!710678) lt!710814)))

(declare-fun b!1830532 () Bool)

(declare-fun e!1170088 () Regex!4967)

(assert (=> b!1830532 (= e!1170086 e!1170088)))

(declare-fun c!298500 () Bool)

(assert (=> b!1830532 (= c!298500 ((_ is Cons!20136) lt!710678))))

(declare-fun b!1830533 () Bool)

(assert (=> b!1830533 (= e!1170083 (isEmpty!12709 (t!170571 lt!710678)))))

(declare-fun b!1830534 () Bool)

(assert (=> b!1830534 (= e!1170086 (h!25537 lt!710678))))

(declare-fun b!1830535 () Bool)

(declare-fun e!1170087 () Bool)

(assert (=> b!1830535 (= e!1170087 (= lt!710814 (head!4276 lt!710678)))))

(declare-fun b!1830536 () Bool)

(assert (=> b!1830536 (= e!1170088 (Union!4967 (h!25537 lt!710678) (generalisedUnion!482 (t!170571 lt!710678))))))

(declare-fun b!1830537 () Bool)

(assert (=> b!1830537 (= e!1170087 (isUnion!125 lt!710814))))

(declare-fun b!1830538 () Bool)

(assert (=> b!1830538 (= e!1170088 EmptyLang!4967)))

(declare-fun b!1830539 () Bool)

(declare-fun e!1170085 () Bool)

(assert (=> b!1830539 (= e!1170084 e!1170085)))

(declare-fun c!298499 () Bool)

(assert (=> b!1830539 (= c!298499 (isEmpty!12709 lt!710678))))

(declare-fun b!1830540 () Bool)

(assert (=> b!1830540 (= e!1170085 (isEmptyLang!125 lt!710814))))

(declare-fun b!1830541 () Bool)

(assert (=> b!1830541 (= e!1170085 e!1170087)))

(declare-fun c!298498 () Bool)

(assert (=> b!1830541 (= c!298498 (isEmpty!12709 (tail!2735 lt!710678)))))

(assert (= (and d!559580 res!823294) b!1830533))

(assert (= (and d!559580 c!298497) b!1830534))

(assert (= (and d!559580 (not c!298497)) b!1830532))

(assert (= (and b!1830532 c!298500) b!1830536))

(assert (= (and b!1830532 (not c!298500)) b!1830538))

(assert (= (and d!559580 res!823295) b!1830539))

(assert (= (and b!1830539 c!298499) b!1830540))

(assert (= (and b!1830539 (not c!298499)) b!1830541))

(assert (= (and b!1830541 c!298498) b!1830535))

(assert (= (and b!1830541 (not c!298498)) b!1830537))

(declare-fun m!2258279 () Bool)

(assert (=> b!1830537 m!2258279))

(declare-fun m!2258281 () Bool)

(assert (=> b!1830533 m!2258281))

(declare-fun m!2258283 () Bool)

(assert (=> b!1830535 m!2258283))

(declare-fun m!2258285 () Bool)

(assert (=> d!559580 m!2258285))

(declare-fun m!2258287 () Bool)

(assert (=> d!559580 m!2258287))

(declare-fun m!2258289 () Bool)

(assert (=> b!1830536 m!2258289))

(declare-fun m!2258291 () Bool)

(assert (=> b!1830541 m!2258291))

(assert (=> b!1830541 m!2258291))

(declare-fun m!2258293 () Bool)

(assert (=> b!1830541 m!2258293))

(declare-fun m!2258295 () Bool)

(assert (=> b!1830540 m!2258295))

(declare-fun m!2258297 () Bool)

(assert (=> b!1830539 m!2258297))

(assert (=> b!1830114 d!559580))

(declare-fun bs!407789 () Bool)

(declare-fun d!559582 () Bool)

(assert (= bs!407789 (and d!559582 b!1830114)))

(declare-fun lambda!71902 () Int)

(assert (=> bs!407789 (= lambda!71902 lambda!71874)))

(declare-fun lt!710817 () Unit!34797)

(declare-fun lemma!532 (List!20205 LexerInterface!3268 List!20205) Unit!34797)

(assert (=> d!559582 (= lt!710817 (lemma!532 rules!4610 thiss!28318 rules!4610))))

(assert (=> d!559582 (= (rulesRegex!959 thiss!28318 rules!4610) (generalisedUnion!482 (map!4177 rules!4610 lambda!71902)))))

(declare-fun bs!407790 () Bool)

(assert (= bs!407790 d!559582))

(declare-fun m!2258299 () Bool)

(assert (=> bs!407790 m!2258299))

(declare-fun m!2258301 () Bool)

(assert (=> bs!407790 m!2258301))

(assert (=> bs!407790 m!2258301))

(declare-fun m!2258303 () Bool)

(assert (=> bs!407790 m!2258303))

(assert (=> b!1830114 d!559582))

(assert (=> b!1830114 d!559492))

(declare-fun bs!407791 () Bool)

(declare-fun d!559584 () Bool)

(assert (= bs!407791 (and d!559584 b!1830114)))

(declare-fun lambda!71907 () Int)

(assert (=> bs!407791 (= lambda!71907 lambda!71874)))

(declare-fun bs!407792 () Bool)

(assert (= bs!407792 (and d!559584 d!559582)))

(assert (=> bs!407792 (= lambda!71907 lambda!71902)))

(declare-fun bs!407793 () Bool)

(assert (= bs!407793 (and d!559584 d!559484)))

(declare-fun lambda!71908 () Int)

(assert (=> bs!407793 (= lambda!71908 lambda!71882)))

(declare-fun bs!407794 () Bool)

(assert (= bs!407794 (and d!559584 d!559580)))

(assert (=> bs!407794 (= lambda!71908 lambda!71899)))

(assert (=> d!559584 (forall!4332 (map!4177 rules!4610 lambda!71907) lambda!71908)))

(declare-fun lt!710838 () Unit!34797)

(declare-fun e!1170099 () Unit!34797)

(assert (=> d!559584 (= lt!710838 e!1170099)))

(declare-fun c!298505 () Bool)

(assert (=> d!559584 (= c!298505 ((_ is Nil!20135) rules!4610))))

(assert (=> d!559584 (rulesValid!1386 thiss!28318 rules!4610)))

(declare-fun lt!710839 () Unit!34797)

(declare-fun lt!710841 () Unit!34797)

(assert (=> d!559584 (= lt!710839 lt!710841)))

(declare-fun lt!710842 () List!20204)

(assert (=> d!559584 (= (maxPrefixOneRule!1177 thiss!28318 rule!580 input!3681) (Some!4218 (tuple2!19595 (Token!6833 (apply!5427 (transformation!3639 rule!580) (seqFromList!2596 lt!710842)) rule!580 (size!15960 lt!710842) lt!710842) suffix!1698)))))

(assert (=> d!559584 (= lt!710841 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!547 thiss!28318 rules!4610 lt!710842 input!3681 suffix!1698 rule!580))))

(assert (=> d!559584 (= lt!710842 (list!8179 (charsOf!2282 token!567)))))

(assert (=> d!559584 (= (lemma!530 input!3681 rule!580 rules!4610 suffix!1698 thiss!28318 token!567 rules!4610) lt!710838)))

(declare-fun b!1830564 () Bool)

(declare-fun Unit!34801 () Unit!34797)

(assert (=> b!1830564 (= e!1170099 Unit!34801)))

(declare-fun b!1830565 () Bool)

(declare-fun Unit!34802 () Unit!34797)

(assert (=> b!1830565 (= e!1170099 Unit!34802)))

(declare-fun lt!710840 () Unit!34797)

(assert (=> b!1830565 (= lt!710840 (lemma!530 input!3681 rule!580 rules!4610 suffix!1698 thiss!28318 token!567 (t!170570 rules!4610)))))

(assert (= (and d!559584 c!298505) b!1830564))

(assert (= (and d!559584 (not c!298505)) b!1830565))

(declare-fun m!2258305 () Bool)

(assert (=> d!559584 m!2258305))

(declare-fun m!2258307 () Bool)

(assert (=> d!559584 m!2258307))

(assert (=> d!559584 m!2258307))

(declare-fun m!2258309 () Bool)

(assert (=> d!559584 m!2258309))

(declare-fun m!2258311 () Bool)

(assert (=> d!559584 m!2258311))

(declare-fun m!2258313 () Bool)

(assert (=> d!559584 m!2258313))

(assert (=> d!559584 m!2257847))

(assert (=> d!559584 m!2258311))

(declare-fun m!2258315 () Bool)

(assert (=> d!559584 m!2258315))

(assert (=> d!559584 m!2257843))

(declare-fun m!2258317 () Bool)

(assert (=> d!559584 m!2258317))

(assert (=> d!559584 m!2257843))

(assert (=> d!559584 m!2257845))

(declare-fun m!2258319 () Bool)

(assert (=> b!1830565 m!2258319))

(assert (=> b!1830114 d!559584))

(declare-fun d!559586 () Bool)

(assert (=> d!559586 (= (inv!26189 (tag!4053 (h!25536 rules!4610))) (= (mod (str.len (value!113377 (tag!4053 (h!25536 rules!4610)))) 2) 0))))

(assert (=> b!1830093 d!559586))

(declare-fun d!559588 () Bool)

(declare-fun res!823310 () Bool)

(declare-fun e!1170100 () Bool)

(assert (=> d!559588 (=> (not res!823310) (not e!1170100))))

(assert (=> d!559588 (= res!823310 (semiInverseModEq!1460 (toChars!5041 (transformation!3639 (h!25536 rules!4610))) (toValue!5182 (transformation!3639 (h!25536 rules!4610)))))))

(assert (=> d!559588 (= (inv!26192 (transformation!3639 (h!25536 rules!4610))) e!1170100)))

(declare-fun b!1830566 () Bool)

(assert (=> b!1830566 (= e!1170100 (equivClasses!1401 (toChars!5041 (transformation!3639 (h!25536 rules!4610))) (toValue!5182 (transformation!3639 (h!25536 rules!4610)))))))

(assert (= (and d!559588 res!823310) b!1830566))

(declare-fun m!2258321 () Bool)

(assert (=> d!559588 m!2258321))

(declare-fun m!2258323 () Bool)

(assert (=> b!1830566 m!2258323))

(assert (=> b!1830093 d!559588))

(declare-fun d!559590 () Bool)

(declare-fun lt!710843 () Bool)

(assert (=> d!559590 (= lt!710843 (select (content!2981 rs!808) rule!580))))

(declare-fun e!1170101 () Bool)

(assert (=> d!559590 (= lt!710843 e!1170101)))

(declare-fun res!823311 () Bool)

(assert (=> d!559590 (=> (not res!823311) (not e!1170101))))

(assert (=> d!559590 (= res!823311 ((_ is Cons!20135) rs!808))))

(assert (=> d!559590 (= (contains!3713 rs!808 rule!580) lt!710843)))

(declare-fun b!1830567 () Bool)

(declare-fun e!1170102 () Bool)

(assert (=> b!1830567 (= e!1170101 e!1170102)))

(declare-fun res!823312 () Bool)

(assert (=> b!1830567 (=> res!823312 e!1170102)))

(assert (=> b!1830567 (= res!823312 (= (h!25536 rs!808) rule!580))))

(declare-fun b!1830568 () Bool)

(assert (=> b!1830568 (= e!1170102 (contains!3713 (t!170570 rs!808) rule!580))))

(assert (= (and d!559590 res!823311) b!1830567))

(assert (= (and b!1830567 (not res!823312)) b!1830568))

(declare-fun m!2258325 () Bool)

(assert (=> d!559590 m!2258325))

(declare-fun m!2258327 () Bool)

(assert (=> d!559590 m!2258327))

(declare-fun m!2258329 () Bool)

(assert (=> b!1830568 m!2258329))

(assert (=> b!1830104 d!559590))

(declare-fun d!559592 () Bool)

(assert (=> d!559592 (= (inv!26189 (tag!4053 (rule!5807 token!567))) (= (mod (str.len (value!113377 (tag!4053 (rule!5807 token!567)))) 2) 0))))

(assert (=> b!1830102 d!559592))

(declare-fun d!559594 () Bool)

(declare-fun res!823313 () Bool)

(declare-fun e!1170103 () Bool)

(assert (=> d!559594 (=> (not res!823313) (not e!1170103))))

(assert (=> d!559594 (= res!823313 (semiInverseModEq!1460 (toChars!5041 (transformation!3639 (rule!5807 token!567))) (toValue!5182 (transformation!3639 (rule!5807 token!567)))))))

(assert (=> d!559594 (= (inv!26192 (transformation!3639 (rule!5807 token!567))) e!1170103)))

(declare-fun b!1830569 () Bool)

(assert (=> b!1830569 (= e!1170103 (equivClasses!1401 (toChars!5041 (transformation!3639 (rule!5807 token!567))) (toValue!5182 (transformation!3639 (rule!5807 token!567)))))))

(assert (= (and d!559594 res!823313) b!1830569))

(declare-fun m!2258331 () Bool)

(assert (=> d!559594 m!2258331))

(declare-fun m!2258333 () Bool)

(assert (=> b!1830569 m!2258333))

(assert (=> b!1830102 d!559594))

(assert (=> b!1830113 d!559506))

(declare-fun d!559596 () Bool)

(declare-fun res!823325 () Bool)

(declare-fun e!1170109 () Bool)

(assert (=> d!559596 (=> (not res!823325) (not e!1170109))))

(assert (=> d!559596 (= res!823325 (not (isEmpty!12706 (originalCharacters!4447 token!567))))))

(assert (=> d!559596 (= (inv!26193 token!567) e!1170109)))

(declare-fun b!1830574 () Bool)

(declare-fun res!823326 () Bool)

(assert (=> b!1830574 (=> (not res!823326) (not e!1170109))))

(assert (=> b!1830574 (= res!823326 (= (originalCharacters!4447 token!567) (list!8179 (dynLambda!10003 (toChars!5041 (transformation!3639 (rule!5807 token!567))) (value!113378 token!567)))))))

(declare-fun b!1830575 () Bool)

(assert (=> b!1830575 (= e!1170109 (= (size!15959 token!567) (size!15960 (originalCharacters!4447 token!567))))))

(assert (= (and d!559596 res!823325) b!1830574))

(assert (= (and b!1830574 res!823326) b!1830575))

(declare-fun b_lambda!60501 () Bool)

(assert (=> (not b_lambda!60501) (not b!1830574)))

(assert (=> b!1830574 t!170573))

(declare-fun b_and!142441 () Bool)

(assert (= b_and!142409 (and (=> t!170573 result!134408) b_and!142441)))

(assert (=> b!1830574 t!170575))

(declare-fun b_and!142443 () Bool)

(assert (= b_and!142411 (and (=> t!170575 result!134412) b_and!142443)))

(assert (=> b!1830574 t!170577))

(declare-fun b_and!142445 () Bool)

(assert (= b_and!142413 (and (=> t!170577 result!134414) b_and!142445)))

(assert (=> b!1830574 t!170579))

(declare-fun b_and!142447 () Bool)

(assert (= b_and!142415 (and (=> t!170579 result!134416) b_and!142447)))

(declare-fun m!2258335 () Bool)

(assert (=> d!559596 m!2258335))

(assert (=> b!1830574 m!2257987))

(assert (=> b!1830574 m!2257987))

(declare-fun m!2258337 () Bool)

(assert (=> b!1830574 m!2258337))

(declare-fun m!2258339 () Bool)

(assert (=> b!1830575 m!2258339))

(assert (=> start!181578 d!559596))

(declare-fun d!559598 () Bool)

(declare-fun res!823329 () Bool)

(declare-fun e!1170113 () Bool)

(assert (=> d!559598 (=> (not res!823329) (not e!1170113))))

(assert (=> d!559598 (= res!823329 (rulesValid!1386 thiss!28318 rules!4610))))

(assert (=> d!559598 (= (rulesInvariant!2937 thiss!28318 rules!4610) e!1170113)))

(declare-fun b!1830587 () Bool)

(declare-datatypes ((List!20208 0))(
  ( (Nil!20138) (Cons!20138 (h!25539 String!22977) (t!170621 List!20208)) )
))
(declare-fun noDuplicateTag!1384 (LexerInterface!3268 List!20205 List!20208) Bool)

(assert (=> b!1830587 (= e!1170113 (noDuplicateTag!1384 thiss!28318 rules!4610 Nil!20138))))

(assert (= (and d!559598 res!823329) b!1830587))

(assert (=> d!559598 m!2258313))

(declare-fun m!2258371 () Bool)

(assert (=> b!1830587 m!2258371))

(assert (=> b!1830092 d!559598))

(declare-fun b!1830601 () Bool)

(declare-fun e!1170116 () Bool)

(declare-fun tp!517871 () Bool)

(declare-fun tp!517868 () Bool)

(assert (=> b!1830601 (= e!1170116 (and tp!517871 tp!517868))))

(declare-fun b!1830598 () Bool)

(assert (=> b!1830598 (= e!1170116 tp_is_empty!8169)))

(declare-fun b!1830599 () Bool)

(declare-fun tp!517870 () Bool)

(declare-fun tp!517867 () Bool)

(assert (=> b!1830599 (= e!1170116 (and tp!517870 tp!517867))))

(assert (=> b!1830122 (= tp!517835 e!1170116)))

(declare-fun b!1830600 () Bool)

(declare-fun tp!517869 () Bool)

(assert (=> b!1830600 (= e!1170116 tp!517869)))

(assert (= (and b!1830122 ((_ is ElementMatch!4967) (regex!3639 rule!580))) b!1830598))

(assert (= (and b!1830122 ((_ is Concat!8696) (regex!3639 rule!580))) b!1830599))

(assert (= (and b!1830122 ((_ is Star!4967) (regex!3639 rule!580))) b!1830600))

(assert (= (and b!1830122 ((_ is Union!4967) (regex!3639 rule!580))) b!1830601))

(declare-fun b!1830610 () Bool)

(declare-fun e!1170121 () Bool)

(declare-fun tp!517874 () Bool)

(assert (=> b!1830610 (= e!1170121 (and tp_is_empty!8169 tp!517874))))

(assert (=> b!1830101 (= tp!517849 e!1170121)))

(assert (= (and b!1830101 ((_ is Cons!20134) (t!170569 input!3681))) b!1830610))

(declare-fun b!1830611 () Bool)

(declare-fun e!1170122 () Bool)

(declare-fun tp!517875 () Bool)

(assert (=> b!1830611 (= e!1170122 (and tp_is_empty!8169 tp!517875))))

(assert (=> b!1830105 (= tp!517838 e!1170122)))

(assert (= (and b!1830105 ((_ is Cons!20134) (t!170569 suffix!1698))) b!1830611))

(declare-fun b!1830615 () Bool)

(declare-fun e!1170123 () Bool)

(declare-fun tp!517880 () Bool)

(declare-fun tp!517877 () Bool)

(assert (=> b!1830615 (= e!1170123 (and tp!517880 tp!517877))))

(declare-fun b!1830612 () Bool)

(assert (=> b!1830612 (= e!1170123 tp_is_empty!8169)))

(declare-fun b!1830613 () Bool)

(declare-fun tp!517879 () Bool)

(declare-fun tp!517876 () Bool)

(assert (=> b!1830613 (= e!1170123 (and tp!517879 tp!517876))))

(assert (=> b!1830116 (= tp!517845 e!1170123)))

(declare-fun b!1830614 () Bool)

(declare-fun tp!517878 () Bool)

(assert (=> b!1830614 (= e!1170123 tp!517878)))

(assert (= (and b!1830116 ((_ is ElementMatch!4967) (regex!3639 (h!25536 rs!808)))) b!1830612))

(assert (= (and b!1830116 ((_ is Concat!8696) (regex!3639 (h!25536 rs!808)))) b!1830613))

(assert (= (and b!1830116 ((_ is Star!4967) (regex!3639 (h!25536 rs!808)))) b!1830614))

(assert (= (and b!1830116 ((_ is Union!4967) (regex!3639 (h!25536 rs!808)))) b!1830615))

(declare-fun b!1830628 () Bool)

(declare-fun b_free!51179 () Bool)

(declare-fun b_next!51883 () Bool)

(assert (=> b!1830628 (= b_free!51179 (not b_next!51883))))

(declare-fun t!170597 () Bool)

(declare-fun tb!111777 () Bool)

(assert (=> (and b!1830628 (= (toValue!5182 (transformation!3639 (h!25536 (t!170570 rules!4610)))) (toValue!5182 (transformation!3639 rule!580))) t!170597) tb!111777))

(declare-fun result!134444 () Bool)

(assert (= result!134444 result!134428))

(assert (=> d!559562 t!170597))

(declare-fun b_and!142449 () Bool)

(declare-fun tp!517892 () Bool)

(assert (=> b!1830628 (= tp!517892 (and (=> t!170597 result!134444) b_and!142449))))

(declare-fun b_free!51181 () Bool)

(declare-fun b_next!51885 () Bool)

(assert (=> b!1830628 (= b_free!51181 (not b_next!51885))))

(declare-fun tb!111779 () Bool)

(declare-fun t!170599 () Bool)

(assert (=> (and b!1830628 (= (toChars!5041 (transformation!3639 (h!25536 (t!170570 rules!4610)))) (toChars!5041 (transformation!3639 (rule!5807 token!567)))) t!170599) tb!111779))

(declare-fun result!134446 () Bool)

(assert (= result!134446 result!134408))

(assert (=> d!559502 t!170599))

(assert (=> b!1830574 t!170599))

(declare-fun tp!517891 () Bool)

(declare-fun b_and!142451 () Bool)

(assert (=> b!1830628 (= tp!517891 (and (=> t!170599 result!134446) b_and!142451))))

(declare-fun e!1170136 () Bool)

(assert (=> b!1830628 (= e!1170136 (and tp!517892 tp!517891))))

(declare-fun e!1170135 () Bool)

(declare-fun b!1830627 () Bool)

(declare-fun tp!517889 () Bool)

(assert (=> b!1830627 (= e!1170135 (and tp!517889 (inv!26189 (tag!4053 (h!25536 (t!170570 rules!4610)))) (inv!26192 (transformation!3639 (h!25536 (t!170570 rules!4610)))) e!1170136))))

(declare-fun b!1830626 () Bool)

(declare-fun e!1170134 () Bool)

(declare-fun tp!517890 () Bool)

(assert (=> b!1830626 (= e!1170134 (and e!1170135 tp!517890))))

(assert (=> b!1830119 (= tp!517841 e!1170134)))

(assert (= b!1830627 b!1830628))

(assert (= b!1830626 b!1830627))

(assert (= (and b!1830119 ((_ is Cons!20135) (t!170570 rules!4610))) b!1830626))

(declare-fun m!2258387 () Bool)

(assert (=> b!1830627 m!2258387))

(declare-fun m!2258389 () Bool)

(assert (=> b!1830627 m!2258389))

(declare-fun b!1830632 () Bool)

(declare-fun e!1170137 () Bool)

(declare-fun tp!517897 () Bool)

(declare-fun tp!517894 () Bool)

(assert (=> b!1830632 (= e!1170137 (and tp!517897 tp!517894))))

(declare-fun b!1830629 () Bool)

(assert (=> b!1830629 (= e!1170137 tp_is_empty!8169)))

(declare-fun b!1830630 () Bool)

(declare-fun tp!517896 () Bool)

(declare-fun tp!517893 () Bool)

(assert (=> b!1830630 (= e!1170137 (and tp!517896 tp!517893))))

(assert (=> b!1830093 (= tp!517844 e!1170137)))

(declare-fun b!1830631 () Bool)

(declare-fun tp!517895 () Bool)

(assert (=> b!1830631 (= e!1170137 tp!517895)))

(assert (= (and b!1830093 ((_ is ElementMatch!4967) (regex!3639 (h!25536 rules!4610)))) b!1830629))

(assert (= (and b!1830093 ((_ is Concat!8696) (regex!3639 (h!25536 rules!4610)))) b!1830630))

(assert (= (and b!1830093 ((_ is Star!4967) (regex!3639 (h!25536 rules!4610)))) b!1830631))

(assert (= (and b!1830093 ((_ is Union!4967) (regex!3639 (h!25536 rules!4610)))) b!1830632))

(declare-fun b!1830633 () Bool)

(declare-fun e!1170138 () Bool)

(declare-fun tp!517898 () Bool)

(assert (=> b!1830633 (= e!1170138 (and tp_is_empty!8169 tp!517898))))

(assert (=> b!1830118 (= tp!517839 e!1170138)))

(assert (= (and b!1830118 ((_ is Cons!20134) (originalCharacters!4447 token!567))) b!1830633))

(declare-fun b!1830637 () Bool)

(declare-fun e!1170139 () Bool)

(declare-fun tp!517903 () Bool)

(declare-fun tp!517900 () Bool)

(assert (=> b!1830637 (= e!1170139 (and tp!517903 tp!517900))))

(declare-fun b!1830634 () Bool)

(assert (=> b!1830634 (= e!1170139 tp_is_empty!8169)))

(declare-fun b!1830635 () Bool)

(declare-fun tp!517902 () Bool)

(declare-fun tp!517899 () Bool)

(assert (=> b!1830635 (= e!1170139 (and tp!517902 tp!517899))))

(assert (=> b!1830102 (= tp!517842 e!1170139)))

(declare-fun b!1830636 () Bool)

(declare-fun tp!517901 () Bool)

(assert (=> b!1830636 (= e!1170139 tp!517901)))

(assert (= (and b!1830102 ((_ is ElementMatch!4967) (regex!3639 (rule!5807 token!567)))) b!1830634))

(assert (= (and b!1830102 ((_ is Concat!8696) (regex!3639 (rule!5807 token!567)))) b!1830635))

(assert (= (and b!1830102 ((_ is Star!4967) (regex!3639 (rule!5807 token!567)))) b!1830636))

(assert (= (and b!1830102 ((_ is Union!4967) (regex!3639 (rule!5807 token!567)))) b!1830637))

(declare-fun b!1830640 () Bool)

(declare-fun b_free!51183 () Bool)

(declare-fun b_next!51887 () Bool)

(assert (=> b!1830640 (= b_free!51183 (not b_next!51887))))

(declare-fun tb!111781 () Bool)

(declare-fun t!170601 () Bool)

(assert (=> (and b!1830640 (= (toValue!5182 (transformation!3639 (h!25536 (t!170570 rs!808)))) (toValue!5182 (transformation!3639 rule!580))) t!170601) tb!111781))

(declare-fun result!134448 () Bool)

(assert (= result!134448 result!134428))

(assert (=> d!559562 t!170601))

(declare-fun tp!517907 () Bool)

(declare-fun b_and!142453 () Bool)

(assert (=> b!1830640 (= tp!517907 (and (=> t!170601 result!134448) b_and!142453))))

(declare-fun b_free!51185 () Bool)

(declare-fun b_next!51889 () Bool)

(assert (=> b!1830640 (= b_free!51185 (not b_next!51889))))

(declare-fun t!170603 () Bool)

(declare-fun tb!111783 () Bool)

(assert (=> (and b!1830640 (= (toChars!5041 (transformation!3639 (h!25536 (t!170570 rs!808)))) (toChars!5041 (transformation!3639 (rule!5807 token!567)))) t!170603) tb!111783))

(declare-fun result!134450 () Bool)

(assert (= result!134450 result!134408))

(assert (=> d!559502 t!170603))

(assert (=> b!1830574 t!170603))

(declare-fun tp!517906 () Bool)

(declare-fun b_and!142455 () Bool)

(assert (=> b!1830640 (= tp!517906 (and (=> t!170603 result!134450) b_and!142455))))

(declare-fun e!1170143 () Bool)

(assert (=> b!1830640 (= e!1170143 (and tp!517907 tp!517906))))

(declare-fun e!1170142 () Bool)

(declare-fun tp!517904 () Bool)

(declare-fun b!1830639 () Bool)

(assert (=> b!1830639 (= e!1170142 (and tp!517904 (inv!26189 (tag!4053 (h!25536 (t!170570 rs!808)))) (inv!26192 (transformation!3639 (h!25536 (t!170570 rs!808)))) e!1170143))))

(declare-fun b!1830638 () Bool)

(declare-fun e!1170141 () Bool)

(declare-fun tp!517905 () Bool)

(assert (=> b!1830638 (= e!1170141 (and e!1170142 tp!517905))))

(assert (=> b!1830097 (= tp!517848 e!1170141)))

(assert (= b!1830639 b!1830640))

(assert (= b!1830638 b!1830639))

(assert (= (and b!1830097 ((_ is Cons!20135) (t!170570 rs!808))) b!1830638))

(declare-fun m!2258391 () Bool)

(assert (=> b!1830639 m!2258391))

(declare-fun m!2258393 () Bool)

(assert (=> b!1830639 m!2258393))

(declare-fun b_lambda!60503 () Bool)

(assert (= b_lambda!60501 (or (and b!1830100 b_free!51169 (= (toChars!5041 (transformation!3639 rule!580)) (toChars!5041 (transformation!3639 (rule!5807 token!567))))) (and b!1830099 b_free!51173 (= (toChars!5041 (transformation!3639 (h!25536 rs!808))) (toChars!5041 (transformation!3639 (rule!5807 token!567))))) (and b!1830640 b_free!51185 (= (toChars!5041 (transformation!3639 (h!25536 (t!170570 rs!808)))) (toChars!5041 (transformation!3639 (rule!5807 token!567))))) (and b!1830628 b_free!51181 (= (toChars!5041 (transformation!3639 (h!25536 (t!170570 rules!4610)))) (toChars!5041 (transformation!3639 (rule!5807 token!567))))) (and b!1830109 b_free!51177 (= (toChars!5041 (transformation!3639 (h!25536 rules!4610))) (toChars!5041 (transformation!3639 (rule!5807 token!567))))) (and b!1830095 b_free!51165) b_lambda!60503)))

(declare-fun b_lambda!60505 () Bool)

(assert (= b_lambda!60489 (or b!1830114 b_lambda!60505)))

(declare-fun bs!407795 () Bool)

(declare-fun d!559604 () Bool)

(assert (= bs!407795 (and d!559604 b!1830114)))

(assert (=> bs!407795 (= (dynLambda!10001 lambda!71874 (h!25536 rules!4610)) (regex!3639 (h!25536 rules!4610)))))

(assert (=> b!1830258 d!559604))

(declare-fun b_lambda!60507 () Bool)

(assert (= b_lambda!60499 (or (and b!1830095 b_free!51163 (= (toValue!5182 (transformation!3639 (rule!5807 token!567))) (toValue!5182 (transformation!3639 rule!580)))) (and b!1830628 b_free!51179 (= (toValue!5182 (transformation!3639 (h!25536 (t!170570 rules!4610)))) (toValue!5182 (transformation!3639 rule!580)))) (and b!1830100 b_free!51167) (and b!1830640 b_free!51183 (= (toValue!5182 (transformation!3639 (h!25536 (t!170570 rs!808)))) (toValue!5182 (transformation!3639 rule!580)))) (and b!1830109 b_free!51175 (= (toValue!5182 (transformation!3639 (h!25536 rules!4610))) (toValue!5182 (transformation!3639 rule!580)))) (and b!1830099 b_free!51171 (= (toValue!5182 (transformation!3639 (h!25536 rs!808))) (toValue!5182 (transformation!3639 rule!580)))) b_lambda!60507)))

(declare-fun b_lambda!60509 () Bool)

(assert (= b_lambda!60493 (or (and b!1830100 b_free!51169 (= (toChars!5041 (transformation!3639 rule!580)) (toChars!5041 (transformation!3639 (rule!5807 token!567))))) (and b!1830099 b_free!51173 (= (toChars!5041 (transformation!3639 (h!25536 rs!808))) (toChars!5041 (transformation!3639 (rule!5807 token!567))))) (and b!1830640 b_free!51185 (= (toChars!5041 (transformation!3639 (h!25536 (t!170570 rs!808)))) (toChars!5041 (transformation!3639 (rule!5807 token!567))))) (and b!1830628 b_free!51181 (= (toChars!5041 (transformation!3639 (h!25536 (t!170570 rules!4610)))) (toChars!5041 (transformation!3639 (rule!5807 token!567))))) (and b!1830109 b_free!51177 (= (toChars!5041 (transformation!3639 (h!25536 rules!4610))) (toChars!5041 (transformation!3639 (rule!5807 token!567))))) (and b!1830095 b_free!51165) b_lambda!60509)))

(check-sat (not d!559598) (not b!1830639) (not b_next!51887) (not b!1830160) (not b!1830613) (not d!559594) b_and!142449 (not b!1830636) (not b!1830486) (not d!559570) (not b!1830492) (not d!559484) (not d!559524) (not d!559588) (not b!1830350) (not b!1830615) (not d!559472) (not b!1830356) (not b!1830611) (not b!1830493) (not b!1830385) (not bm!114632) (not d!559578) b_and!142435 (not d!559596) (not b!1830185) (not b!1830169) (not b!1830176) (not b!1830218) (not b!1830566) (not b!1830353) (not b!1830348) (not b_lambda!60509) (not d!559590) (not b_next!51885) (not bm!114633) (not b!1830490) (not b!1830354) (not d!559506) b_and!142445 (not b_next!51889) (not b!1830632) (not b_lambda!60507) (not d!559566) (not b!1830179) (not b!1830533) (not d!559476) (not b!1830222) (not b!1830281) b_and!142453 (not b!1830626) (not d!559482) (not b!1830599) (not d!559480) (not b_next!51873) (not b!1830536) (not b!1830217) (not b_next!51877) (not b!1830565) b_and!142447 (not b!1830574) (not b!1830158) (not b!1830526) (not b!1830491) (not b!1830180) b_and!142455 (not b!1830630) b_and!142443 tp_is_empty!8169 (not b!1830568) (not b!1830162) b_and!142437 (not b!1830153) (not tb!111769) (not d!559574) (not b!1830382) (not b!1830535) (not b!1830638) (not b_lambda!60503) (not b!1830627) (not b!1830635) (not d!559492) (not b_next!51881) (not b!1830488) (not b!1830614) (not b!1830351) (not b!1830216) (not b!1830528) b_and!142433 (not b!1830352) (not bm!114639) (not b!1830173) (not b!1830494) (not b_next!51871) (not tb!111753) (not b!1830157) (not b!1830181) (not b!1830258) (not b_next!51875) (not b!1830610) (not b!1830268) (not b!1830529) (not b_next!51879) (not d!559502) (not b!1830156) (not b!1830575) (not b_next!51869) (not d!559584) (not d!559474) (not d!559556) (not b!1830539) (not d!559496) (not b!1830221) (not b!1830183) b_and!142441 (not b!1830637) (not b!1830631) (not b!1830633) (not d!559500) (not d!559528) (not b!1830540) (not d!559582) (not d!559572) (not d!559580) (not b_lambda!60505) b_and!142439 (not b!1830381) (not b!1830569) (not b!1830587) (not b!1830537) (not b!1830355) (not b!1830520) (not b!1830600) (not b!1830214) (not b!1830601) b_and!142451 (not b!1830220) (not b_next!51867) (not b!1830541) (not b_next!51883) (not b!1830531) (not b!1830487) (not b!1830269))
(check-sat b_and!142449 b_and!142435 (not b_next!51885) b_and!142445 (not b_next!51889) b_and!142453 (not b_next!51873) (not b_next!51877) (not b_next!51887) (not b_next!51881) (not b_next!51875) b_and!142441 b_and!142439 (not b_next!51883) b_and!142447 b_and!142455 b_and!142443 b_and!142437 b_and!142433 (not b_next!51871) (not b_next!51879) (not b_next!51869) b_and!142451 (not b_next!51867))
(get-model)

(declare-fun d!559624 () Bool)

(declare-fun c!298532 () Bool)

(assert (=> d!559624 (= c!298532 ((_ is Nil!20134) lt!710813))))

(declare-fun e!1170207 () (InoxSet C!10108))

(assert (=> d!559624 (= (content!2978 lt!710813) e!1170207)))

(declare-fun b!1830745 () Bool)

(assert (=> b!1830745 (= e!1170207 ((as const (Array C!10108 Bool)) false))))

(declare-fun b!1830746 () Bool)

(assert (=> b!1830746 (= e!1170207 ((_ map or) (store ((as const (Array C!10108 Bool)) false) (h!25535 lt!710813) true) (content!2978 (t!170569 lt!710813))))))

(assert (= (and d!559624 c!298532) b!1830745))

(assert (= (and d!559624 (not c!298532)) b!1830746))

(declare-fun m!2258479 () Bool)

(assert (=> b!1830746 m!2258479))

(declare-fun m!2258483 () Bool)

(assert (=> b!1830746 m!2258483))

(assert (=> d!559574 d!559624))

(declare-fun d!559630 () Bool)

(declare-fun c!298534 () Bool)

(assert (=> d!559630 (= c!298534 ((_ is Nil!20134) lt!710679))))

(declare-fun e!1170209 () (InoxSet C!10108))

(assert (=> d!559630 (= (content!2978 lt!710679) e!1170209)))

(declare-fun b!1830749 () Bool)

(assert (=> b!1830749 (= e!1170209 ((as const (Array C!10108 Bool)) false))))

(declare-fun b!1830750 () Bool)

(assert (=> b!1830750 (= e!1170209 ((_ map or) (store ((as const (Array C!10108 Bool)) false) (h!25535 lt!710679) true) (content!2978 (t!170569 lt!710679))))))

(assert (= (and d!559630 c!298534) b!1830749))

(assert (= (and d!559630 (not c!298534)) b!1830750))

(declare-fun m!2258485 () Bool)

(assert (=> b!1830750 m!2258485))

(declare-fun m!2258487 () Bool)

(assert (=> b!1830750 m!2258487))

(assert (=> d!559574 d!559630))

(declare-fun d!559632 () Bool)

(declare-fun c!298535 () Bool)

(assert (=> d!559632 (= c!298535 ((_ is Nil!20134) suffix!1698))))

(declare-fun e!1170210 () (InoxSet C!10108))

(assert (=> d!559632 (= (content!2978 suffix!1698) e!1170210)))

(declare-fun b!1830751 () Bool)

(assert (=> b!1830751 (= e!1170210 ((as const (Array C!10108 Bool)) false))))

(declare-fun b!1830752 () Bool)

(assert (=> b!1830752 (= e!1170210 ((_ map or) (store ((as const (Array C!10108 Bool)) false) (h!25535 suffix!1698) true) (content!2978 (t!170569 suffix!1698))))))

(assert (= (and d!559632 c!298535) b!1830751))

(assert (= (and d!559632 (not c!298535)) b!1830752))

(declare-fun m!2258489 () Bool)

(assert (=> b!1830752 m!2258489))

(declare-fun m!2258491 () Bool)

(assert (=> b!1830752 m!2258491))

(assert (=> d!559574 d!559632))

(declare-fun d!559634 () Bool)

(assert (=> d!559634 true))

(declare-fun lambda!71914 () Int)

(declare-fun order!13027 () Int)

(declare-fun order!13029 () Int)

(declare-fun dynLambda!10010 (Int Int) Int)

(declare-fun dynLambda!10011 (Int Int) Int)

(assert (=> d!559634 (< (dynLambda!10010 order!13027 (toValue!5182 (transformation!3639 (rule!5807 token!567)))) (dynLambda!10011 order!13029 lambda!71914))))

(declare-fun Forall2!572 (Int) Bool)

(assert (=> d!559634 (= (equivClasses!1401 (toChars!5041 (transformation!3639 (rule!5807 token!567))) (toValue!5182 (transformation!3639 (rule!5807 token!567)))) (Forall2!572 lambda!71914))))

(declare-fun bs!407800 () Bool)

(assert (= bs!407800 d!559634))

(declare-fun m!2258499 () Bool)

(assert (=> bs!407800 m!2258499))

(assert (=> b!1830569 d!559634))

(declare-fun d!559640 () Bool)

(assert (=> d!559640 (= (isEmpty!12709 (map!4177 rules!4610 lambda!71874)) ((_ is Nil!20136) (map!4177 rules!4610 lambda!71874)))))

(assert (=> b!1830220 d!559640))

(declare-fun bs!407801 () Bool)

(declare-fun d!559642 () Bool)

(assert (= bs!407801 (and d!559642 d!559634)))

(declare-fun lambda!71915 () Int)

(assert (=> bs!407801 (= (= (toValue!5182 (transformation!3639 rule!580)) (toValue!5182 (transformation!3639 (rule!5807 token!567)))) (= lambda!71915 lambda!71914))))

(assert (=> d!559642 true))

(assert (=> d!559642 (< (dynLambda!10010 order!13027 (toValue!5182 (transformation!3639 rule!580))) (dynLambda!10011 order!13029 lambda!71915))))

(assert (=> d!559642 (= (equivClasses!1401 (toChars!5041 (transformation!3639 rule!580)) (toValue!5182 (transformation!3639 rule!580))) (Forall2!572 lambda!71915))))

(declare-fun bs!407802 () Bool)

(assert (= bs!407802 d!559642))

(declare-fun m!2258501 () Bool)

(assert (=> bs!407802 m!2258501))

(assert (=> b!1830173 d!559642))

(declare-fun d!559644 () Bool)

(assert (=> d!559644 (= (list!8179 (dynLambda!10003 (toChars!5041 (transformation!3639 (rule!5807 token!567))) (value!113378 token!567))) (list!8180 (c!298403 (dynLambda!10003 (toChars!5041 (transformation!3639 (rule!5807 token!567))) (value!113378 token!567)))))))

(declare-fun bs!407803 () Bool)

(assert (= bs!407803 d!559644))

(declare-fun m!2258503 () Bool)

(assert (=> bs!407803 m!2258503))

(assert (=> b!1830574 d!559644))

(declare-fun b!1830757 () Bool)

(declare-fun e!1170215 () Bool)

(declare-fun lt!710947 () Bool)

(declare-fun call!114673 () Bool)

(assert (=> b!1830757 (= e!1170215 (= lt!710947 call!114673))))

(declare-fun b!1830758 () Bool)

(declare-fun res!823341 () Bool)

(declare-fun e!1170214 () Bool)

(assert (=> b!1830758 (=> res!823341 e!1170214)))

(assert (=> b!1830758 (= res!823341 (not ((_ is ElementMatch!4967) (regex!3639 (rule!5807 (_1!11199 (get!6215 lt!710749)))))))))

(declare-fun e!1170213 () Bool)

(assert (=> b!1830758 (= e!1170213 e!1170214)))

(declare-fun b!1830759 () Bool)

(declare-fun e!1170218 () Bool)

(assert (=> b!1830759 (= e!1170218 (matchR!2430 (derivativeStep!1306 (regex!3639 (rule!5807 (_1!11199 (get!6215 lt!710749)))) (head!4273 (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!710749)))))) (tail!2732 (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!710749)))))))))

(declare-fun b!1830760 () Bool)

(declare-fun res!823339 () Bool)

(assert (=> b!1830760 (=> res!823339 e!1170214)))

(declare-fun e!1170217 () Bool)

(assert (=> b!1830760 (= res!823339 e!1170217)))

(declare-fun res!823345 () Bool)

(assert (=> b!1830760 (=> (not res!823345) (not e!1170217))))

(assert (=> b!1830760 (= res!823345 lt!710947)))

(declare-fun b!1830761 () Bool)

(declare-fun e!1170216 () Bool)

(declare-fun e!1170219 () Bool)

(assert (=> b!1830761 (= e!1170216 e!1170219)))

(declare-fun res!823344 () Bool)

(assert (=> b!1830761 (=> res!823344 e!1170219)))

(assert (=> b!1830761 (= res!823344 call!114673)))

(declare-fun b!1830762 () Bool)

(declare-fun res!823342 () Bool)

(assert (=> b!1830762 (=> res!823342 e!1170219)))

(assert (=> b!1830762 (= res!823342 (not (isEmpty!12706 (tail!2732 (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!710749))))))))))

(declare-fun b!1830763 () Bool)

(assert (=> b!1830763 (= e!1170218 (nullable!1542 (regex!3639 (rule!5807 (_1!11199 (get!6215 lt!710749))))))))

(declare-fun d!559646 () Bool)

(assert (=> d!559646 e!1170215))

(declare-fun c!298536 () Bool)

(assert (=> d!559646 (= c!298536 ((_ is EmptyExpr!4967) (regex!3639 (rule!5807 (_1!11199 (get!6215 lt!710749))))))))

(assert (=> d!559646 (= lt!710947 e!1170218)))

(declare-fun c!298537 () Bool)

(assert (=> d!559646 (= c!298537 (isEmpty!12706 (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!710749))))))))

(assert (=> d!559646 (validRegex!2024 (regex!3639 (rule!5807 (_1!11199 (get!6215 lt!710749)))))))

(assert (=> d!559646 (= (matchR!2430 (regex!3639 (rule!5807 (_1!11199 (get!6215 lt!710749)))) (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!710749))))) lt!710947)))

(declare-fun b!1830764 () Bool)

(assert (=> b!1830764 (= e!1170217 (= (head!4273 (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!710749))))) (c!298402 (regex!3639 (rule!5807 (_1!11199 (get!6215 lt!710749)))))))))

(declare-fun bm!114668 () Bool)

(assert (=> bm!114668 (= call!114673 (isEmpty!12706 (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!710749))))))))

(declare-fun b!1830765 () Bool)

(assert (=> b!1830765 (= e!1170214 e!1170216)))

(declare-fun res!823343 () Bool)

(assert (=> b!1830765 (=> (not res!823343) (not e!1170216))))

(assert (=> b!1830765 (= res!823343 (not lt!710947))))

(declare-fun b!1830766 () Bool)

(declare-fun res!823346 () Bool)

(assert (=> b!1830766 (=> (not res!823346) (not e!1170217))))

(assert (=> b!1830766 (= res!823346 (isEmpty!12706 (tail!2732 (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!710749)))))))))

(declare-fun b!1830767 () Bool)

(assert (=> b!1830767 (= e!1170215 e!1170213)))

(declare-fun c!298538 () Bool)

(assert (=> b!1830767 (= c!298538 ((_ is EmptyLang!4967) (regex!3639 (rule!5807 (_1!11199 (get!6215 lt!710749))))))))

(declare-fun b!1830768 () Bool)

(assert (=> b!1830768 (= e!1170219 (not (= (head!4273 (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!710749))))) (c!298402 (regex!3639 (rule!5807 (_1!11199 (get!6215 lt!710749))))))))))

(declare-fun b!1830769 () Bool)

(declare-fun res!823340 () Bool)

(assert (=> b!1830769 (=> (not res!823340) (not e!1170217))))

(assert (=> b!1830769 (= res!823340 (not call!114673))))

(declare-fun b!1830770 () Bool)

(assert (=> b!1830770 (= e!1170213 (not lt!710947))))

(assert (= (and d!559646 c!298537) b!1830763))

(assert (= (and d!559646 (not c!298537)) b!1830759))

(assert (= (and d!559646 c!298536) b!1830757))

(assert (= (and d!559646 (not c!298536)) b!1830767))

(assert (= (and b!1830767 c!298538) b!1830770))

(assert (= (and b!1830767 (not c!298538)) b!1830758))

(assert (= (and b!1830758 (not res!823341)) b!1830760))

(assert (= (and b!1830760 res!823345) b!1830769))

(assert (= (and b!1830769 res!823340) b!1830766))

(assert (= (and b!1830766 res!823346) b!1830764))

(assert (= (and b!1830760 (not res!823339)) b!1830765))

(assert (= (and b!1830765 res!823343) b!1830761))

(assert (= (and b!1830761 (not res!823344)) b!1830762))

(assert (= (and b!1830762 (not res!823342)) b!1830768))

(assert (= (or b!1830757 b!1830761 b!1830769) bm!114668))

(assert (=> bm!114668 m!2258037))

(declare-fun m!2258505 () Bool)

(assert (=> bm!114668 m!2258505))

(assert (=> b!1830764 m!2258037))

(declare-fun m!2258507 () Bool)

(assert (=> b!1830764 m!2258507))

(declare-fun m!2258509 () Bool)

(assert (=> b!1830763 m!2258509))

(assert (=> b!1830766 m!2258037))

(declare-fun m!2258511 () Bool)

(assert (=> b!1830766 m!2258511))

(assert (=> b!1830766 m!2258511))

(declare-fun m!2258513 () Bool)

(assert (=> b!1830766 m!2258513))

(assert (=> d!559646 m!2258037))

(assert (=> d!559646 m!2258505))

(declare-fun m!2258515 () Bool)

(assert (=> d!559646 m!2258515))

(assert (=> b!1830759 m!2258037))

(assert (=> b!1830759 m!2258507))

(assert (=> b!1830759 m!2258507))

(declare-fun m!2258517 () Bool)

(assert (=> b!1830759 m!2258517))

(assert (=> b!1830759 m!2258037))

(assert (=> b!1830759 m!2258511))

(assert (=> b!1830759 m!2258517))

(assert (=> b!1830759 m!2258511))

(declare-fun m!2258519 () Bool)

(assert (=> b!1830759 m!2258519))

(assert (=> b!1830762 m!2258037))

(assert (=> b!1830762 m!2258511))

(assert (=> b!1830762 m!2258511))

(assert (=> b!1830762 m!2258513))

(assert (=> b!1830768 m!2258037))

(assert (=> b!1830768 m!2258507))

(assert (=> b!1830354 d!559646))

(declare-fun d!559648 () Bool)

(assert (=> d!559648 (= (get!6215 lt!710749) (v!25789 lt!710749))))

(assert (=> b!1830354 d!559648))

(declare-fun d!559650 () Bool)

(assert (=> d!559650 (= (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!710749)))) (list!8180 (c!298403 (charsOf!2282 (_1!11199 (get!6215 lt!710749))))))))

(declare-fun bs!407804 () Bool)

(assert (= bs!407804 d!559650))

(declare-fun m!2258521 () Bool)

(assert (=> bs!407804 m!2258521))

(assert (=> b!1830354 d!559650))

(declare-fun d!559652 () Bool)

(declare-fun lt!710950 () BalanceConc!13286)

(assert (=> d!559652 (= (list!8179 lt!710950) (originalCharacters!4447 (_1!11199 (get!6215 lt!710749))))))

(assert (=> d!559652 (= lt!710950 (dynLambda!10003 (toChars!5041 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710749))))) (value!113378 (_1!11199 (get!6215 lt!710749)))))))

(assert (=> d!559652 (= (charsOf!2282 (_1!11199 (get!6215 lt!710749))) lt!710950)))

(declare-fun b_lambda!60527 () Bool)

(assert (=> (not b_lambda!60527) (not d!559652)))

(declare-fun t!170647 () Bool)

(declare-fun tb!111825 () Bool)

(assert (=> (and b!1830628 (= (toChars!5041 (transformation!3639 (h!25536 (t!170570 rules!4610)))) (toChars!5041 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710749)))))) t!170647) tb!111825))

(declare-fun b!1830773 () Bool)

(declare-fun e!1170222 () Bool)

(declare-fun tp!517960 () Bool)

(assert (=> b!1830773 (= e!1170222 (and (inv!26196 (c!298403 (dynLambda!10003 (toChars!5041 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710749))))) (value!113378 (_1!11199 (get!6215 lt!710749)))))) tp!517960))))

(declare-fun result!134500 () Bool)

(assert (=> tb!111825 (= result!134500 (and (inv!26197 (dynLambda!10003 (toChars!5041 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710749))))) (value!113378 (_1!11199 (get!6215 lt!710749))))) e!1170222))))

(assert (= tb!111825 b!1830773))

(declare-fun m!2258523 () Bool)

(assert (=> b!1830773 m!2258523))

(declare-fun m!2258525 () Bool)

(assert (=> tb!111825 m!2258525))

(assert (=> d!559652 t!170647))

(declare-fun b_and!142509 () Bool)

(assert (= b_and!142451 (and (=> t!170647 result!134500) b_and!142509)))

(declare-fun tb!111827 () Bool)

(declare-fun t!170649 () Bool)

(assert (=> (and b!1830100 (= (toChars!5041 (transformation!3639 rule!580)) (toChars!5041 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710749)))))) t!170649) tb!111827))

(declare-fun result!134502 () Bool)

(assert (= result!134502 result!134500))

(assert (=> d!559652 t!170649))

(declare-fun b_and!142511 () Bool)

(assert (= b_and!142443 (and (=> t!170649 result!134502) b_and!142511)))

(declare-fun tb!111829 () Bool)

(declare-fun t!170651 () Bool)

(assert (=> (and b!1830109 (= (toChars!5041 (transformation!3639 (h!25536 rules!4610))) (toChars!5041 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710749)))))) t!170651) tb!111829))

(declare-fun result!134504 () Bool)

(assert (= result!134504 result!134500))

(assert (=> d!559652 t!170651))

(declare-fun b_and!142513 () Bool)

(assert (= b_and!142447 (and (=> t!170651 result!134504) b_and!142513)))

(declare-fun t!170653 () Bool)

(declare-fun tb!111831 () Bool)

(assert (=> (and b!1830640 (= (toChars!5041 (transformation!3639 (h!25536 (t!170570 rs!808)))) (toChars!5041 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710749)))))) t!170653) tb!111831))

(declare-fun result!134506 () Bool)

(assert (= result!134506 result!134500))

(assert (=> d!559652 t!170653))

(declare-fun b_and!142515 () Bool)

(assert (= b_and!142455 (and (=> t!170653 result!134506) b_and!142515)))

(declare-fun t!170655 () Bool)

(declare-fun tb!111833 () Bool)

(assert (=> (and b!1830095 (= (toChars!5041 (transformation!3639 (rule!5807 token!567))) (toChars!5041 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710749)))))) t!170655) tb!111833))

(declare-fun result!134508 () Bool)

(assert (= result!134508 result!134500))

(assert (=> d!559652 t!170655))

(declare-fun b_and!142517 () Bool)

(assert (= b_and!142441 (and (=> t!170655 result!134508) b_and!142517)))

(declare-fun tb!111835 () Bool)

(declare-fun t!170657 () Bool)

(assert (=> (and b!1830099 (= (toChars!5041 (transformation!3639 (h!25536 rs!808))) (toChars!5041 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710749)))))) t!170657) tb!111835))

(declare-fun result!134510 () Bool)

(assert (= result!134510 result!134500))

(assert (=> d!559652 t!170657))

(declare-fun b_and!142519 () Bool)

(assert (= b_and!142445 (and (=> t!170657 result!134510) b_and!142519)))

(declare-fun m!2258529 () Bool)

(assert (=> d!559652 m!2258529))

(declare-fun m!2258531 () Bool)

(assert (=> d!559652 m!2258531))

(assert (=> b!1830354 d!559652))

(declare-fun d!559654 () Bool)

(assert (=> d!559654 (= (head!4276 (map!4177 rules!4610 lambda!71874)) (h!25537 (map!4177 rules!4610 lambda!71874)))))

(assert (=> b!1830216 d!559654))

(declare-fun d!559658 () Bool)

(assert (=> d!559658 true))

(declare-fun order!13031 () Int)

(declare-fun lambda!71918 () Int)

(declare-fun order!13033 () Int)

(declare-fun dynLambda!10013 (Int Int) Int)

(declare-fun dynLambda!10014 (Int Int) Int)

(assert (=> d!559658 (< (dynLambda!10013 order!13031 (toChars!5041 (transformation!3639 (h!25536 rules!4610)))) (dynLambda!10014 order!13033 lambda!71918))))

(assert (=> d!559658 true))

(assert (=> d!559658 (< (dynLambda!10010 order!13027 (toValue!5182 (transformation!3639 (h!25536 rules!4610)))) (dynLambda!10014 order!13033 lambda!71918))))

(declare-fun Forall!933 (Int) Bool)

(assert (=> d!559658 (= (semiInverseModEq!1460 (toChars!5041 (transformation!3639 (h!25536 rules!4610))) (toValue!5182 (transformation!3639 (h!25536 rules!4610)))) (Forall!933 lambda!71918))))

(declare-fun bs!407805 () Bool)

(assert (= bs!407805 d!559658))

(declare-fun m!2258533 () Bool)

(assert (=> bs!407805 m!2258533))

(assert (=> d!559588 d!559658))

(declare-fun d!559664 () Bool)

(declare-fun lt!710952 () Bool)

(assert (=> d!559664 (= lt!710952 (select (content!2981 (t!170570 rules!4610)) rule!580))))

(declare-fun e!1170238 () Bool)

(assert (=> d!559664 (= lt!710952 e!1170238)))

(declare-fun res!823360 () Bool)

(assert (=> d!559664 (=> (not res!823360) (not e!1170238))))

(assert (=> d!559664 (= res!823360 ((_ is Cons!20135) (t!170570 rules!4610)))))

(assert (=> d!559664 (= (contains!3713 (t!170570 rules!4610) rule!580) lt!710952)))

(declare-fun b!1830797 () Bool)

(declare-fun e!1170239 () Bool)

(assert (=> b!1830797 (= e!1170238 e!1170239)))

(declare-fun res!823361 () Bool)

(assert (=> b!1830797 (=> res!823361 e!1170239)))

(assert (=> b!1830797 (= res!823361 (= (h!25536 (t!170570 rules!4610)) rule!580))))

(declare-fun b!1830798 () Bool)

(assert (=> b!1830798 (= e!1170239 (contains!3713 (t!170570 (t!170570 rules!4610)) rule!580))))

(assert (= (and d!559664 res!823360) b!1830797))

(assert (= (and b!1830797 (not res!823361)) b!1830798))

(declare-fun m!2258535 () Bool)

(assert (=> d!559664 m!2258535))

(declare-fun m!2258537 () Bool)

(assert (=> d!559664 m!2258537))

(declare-fun m!2258539 () Bool)

(assert (=> b!1830798 m!2258539))

(assert (=> b!1830526 d!559664))

(declare-fun d!559666 () Bool)

(declare-fun c!298545 () Bool)

(assert (=> d!559666 (= c!298545 ((_ is Nil!20135) rules!4610))))

(declare-fun e!1170242 () (InoxSet Rule!7078))

(assert (=> d!559666 (= (content!2981 rules!4610) e!1170242)))

(declare-fun b!1830803 () Bool)

(assert (=> b!1830803 (= e!1170242 ((as const (Array Rule!7078 Bool)) false))))

(declare-fun b!1830804 () Bool)

(assert (=> b!1830804 (= e!1170242 ((_ map or) (store ((as const (Array Rule!7078 Bool)) false) (h!25536 rules!4610) true) (content!2981 (t!170570 rules!4610))))))

(assert (= (and d!559666 c!298545) b!1830803))

(assert (= (and d!559666 (not c!298545)) b!1830804))

(declare-fun m!2258541 () Bool)

(assert (=> b!1830804 m!2258541))

(assert (=> b!1830804 m!2258535))

(assert (=> d!559572 d!559666))

(declare-fun d!559668 () Bool)

(assert (=> d!559668 (= (get!6215 lt!710795) (v!25789 lt!710795))))

(assert (=> b!1830493 d!559668))

(declare-fun d!559670 () Bool)

(assert (=> d!559670 (= (apply!5427 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710795)))) (seqFromList!2596 (originalCharacters!4447 (_1!11199 (get!6215 lt!710795))))) (dynLambda!10004 (toValue!5182 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710795))))) (seqFromList!2596 (originalCharacters!4447 (_1!11199 (get!6215 lt!710795))))))))

(declare-fun b_lambda!60529 () Bool)

(assert (=> (not b_lambda!60529) (not d!559670)))

(declare-fun tb!111837 () Bool)

(declare-fun t!170659 () Bool)

(assert (=> (and b!1830099 (= (toValue!5182 (transformation!3639 (h!25536 rs!808))) (toValue!5182 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710795)))))) t!170659) tb!111837))

(declare-fun result!134512 () Bool)

(assert (=> tb!111837 (= result!134512 (inv!21 (dynLambda!10004 (toValue!5182 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710795))))) (seqFromList!2596 (originalCharacters!4447 (_1!11199 (get!6215 lt!710795)))))))))

(declare-fun m!2258543 () Bool)

(assert (=> tb!111837 m!2258543))

(assert (=> d!559670 t!170659))

(declare-fun b_and!142521 () Bool)

(assert (= b_and!142437 (and (=> t!170659 result!134512) b_and!142521)))

(declare-fun t!170661 () Bool)

(declare-fun tb!111839 () Bool)

(assert (=> (and b!1830628 (= (toValue!5182 (transformation!3639 (h!25536 (t!170570 rules!4610)))) (toValue!5182 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710795)))))) t!170661) tb!111839))

(declare-fun result!134514 () Bool)

(assert (= result!134514 result!134512))

(assert (=> d!559670 t!170661))

(declare-fun b_and!142523 () Bool)

(assert (= b_and!142449 (and (=> t!170661 result!134514) b_and!142523)))

(declare-fun t!170663 () Bool)

(declare-fun tb!111841 () Bool)

(assert (=> (and b!1830100 (= (toValue!5182 (transformation!3639 rule!580)) (toValue!5182 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710795)))))) t!170663) tb!111841))

(declare-fun result!134516 () Bool)

(assert (= result!134516 result!134512))

(assert (=> d!559670 t!170663))

(declare-fun b_and!142525 () Bool)

(assert (= b_and!142435 (and (=> t!170663 result!134516) b_and!142525)))

(declare-fun t!170665 () Bool)

(declare-fun tb!111843 () Bool)

(assert (=> (and b!1830109 (= (toValue!5182 (transformation!3639 (h!25536 rules!4610))) (toValue!5182 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710795)))))) t!170665) tb!111843))

(declare-fun result!134518 () Bool)

(assert (= result!134518 result!134512))

(assert (=> d!559670 t!170665))

(declare-fun b_and!142527 () Bool)

(assert (= b_and!142439 (and (=> t!170665 result!134518) b_and!142527)))

(declare-fun t!170667 () Bool)

(declare-fun tb!111845 () Bool)

(assert (=> (and b!1830640 (= (toValue!5182 (transformation!3639 (h!25536 (t!170570 rs!808)))) (toValue!5182 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710795)))))) t!170667) tb!111845))

(declare-fun result!134520 () Bool)

(assert (= result!134520 result!134512))

(assert (=> d!559670 t!170667))

(declare-fun b_and!142529 () Bool)

(assert (= b_and!142453 (and (=> t!170667 result!134520) b_and!142529)))

(declare-fun t!170669 () Bool)

(declare-fun tb!111847 () Bool)

(assert (=> (and b!1830095 (= (toValue!5182 (transformation!3639 (rule!5807 token!567))) (toValue!5182 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710795)))))) t!170669) tb!111847))

(declare-fun result!134522 () Bool)

(assert (= result!134522 result!134512))

(assert (=> d!559670 t!170669))

(declare-fun b_and!142531 () Bool)

(assert (= b_and!142433 (and (=> t!170669 result!134522) b_and!142531)))

(assert (=> d!559670 m!2258197))

(declare-fun m!2258551 () Bool)

(assert (=> d!559670 m!2258551))

(assert (=> b!1830493 d!559670))

(declare-fun d!559674 () Bool)

(assert (=> d!559674 (= (seqFromList!2596 (originalCharacters!4447 (_1!11199 (get!6215 lt!710795)))) (fromListB!1185 (originalCharacters!4447 (_1!11199 (get!6215 lt!710795)))))))

(declare-fun bs!407806 () Bool)

(assert (= bs!407806 d!559674))

(declare-fun m!2258553 () Bool)

(assert (=> bs!407806 m!2258553))

(assert (=> b!1830493 d!559674))

(declare-fun d!559676 () Bool)

(declare-fun lt!710953 () Int)

(assert (=> d!559676 (>= lt!710953 0)))

(declare-fun e!1170253 () Int)

(assert (=> d!559676 (= lt!710953 e!1170253)))

(declare-fun c!298548 () Bool)

(assert (=> d!559676 (= c!298548 ((_ is Nil!20134) lt!710813))))

(assert (=> d!559676 (= (size!15960 lt!710813) lt!710953)))

(declare-fun b!1830816 () Bool)

(assert (=> b!1830816 (= e!1170253 0)))

(declare-fun b!1830817 () Bool)

(assert (=> b!1830817 (= e!1170253 (+ 1 (size!15960 (t!170569 lt!710813))))))

(assert (= (and d!559676 c!298548) b!1830816))

(assert (= (and d!559676 (not c!298548)) b!1830817))

(declare-fun m!2258555 () Bool)

(assert (=> b!1830817 m!2258555))

(assert (=> b!1830529 d!559676))

(assert (=> b!1830529 d!559568))

(declare-fun d!559678 () Bool)

(declare-fun lt!710954 () Int)

(assert (=> d!559678 (>= lt!710954 0)))

(declare-fun e!1170256 () Int)

(assert (=> d!559678 (= lt!710954 e!1170256)))

(declare-fun c!298549 () Bool)

(assert (=> d!559678 (= c!298549 ((_ is Nil!20134) suffix!1698))))

(assert (=> d!559678 (= (size!15960 suffix!1698) lt!710954)))

(declare-fun b!1830820 () Bool)

(assert (=> b!1830820 (= e!1170256 0)))

(declare-fun b!1830821 () Bool)

(assert (=> b!1830821 (= e!1170256 (+ 1 (size!15960 (t!170569 suffix!1698))))))

(assert (= (and d!559678 c!298549) b!1830820))

(assert (= (and d!559678 (not c!298549)) b!1830821))

(declare-fun m!2258557 () Bool)

(assert (=> b!1830821 m!2258557))

(assert (=> b!1830529 d!559678))

(declare-fun d!559680 () Bool)

(assert (=> d!559680 (= (head!4273 lt!710680) (h!25535 lt!710680))))

(assert (=> b!1830162 d!559680))

(declare-fun b!1830863 () Bool)

(declare-fun res!823398 () Bool)

(declare-fun e!1170289 () Bool)

(assert (=> b!1830863 (=> res!823398 e!1170289)))

(assert (=> b!1830863 (= res!823398 (not ((_ is Concat!8696) lt!710701)))))

(declare-fun e!1170285 () Bool)

(assert (=> b!1830863 (= e!1170285 e!1170289)))

(declare-fun b!1830864 () Bool)

(declare-fun e!1170290 () Bool)

(declare-fun e!1170287 () Bool)

(assert (=> b!1830864 (= e!1170290 e!1170287)))

(declare-fun res!823399 () Bool)

(assert (=> b!1830864 (= res!823399 (not (nullable!1542 (reg!5296 lt!710701))))))

(assert (=> b!1830864 (=> (not res!823399) (not e!1170287))))

(declare-fun b!1830865 () Bool)

(declare-fun e!1170288 () Bool)

(declare-fun call!114690 () Bool)

(assert (=> b!1830865 (= e!1170288 call!114690)))

(declare-fun bm!114685 () Bool)

(declare-fun call!114692 () Bool)

(declare-fun c!298559 () Bool)

(assert (=> bm!114685 (= call!114692 (validRegex!2024 (ite c!298559 (regTwo!10447 lt!710701) (regOne!10446 lt!710701))))))

(declare-fun b!1830866 () Bool)

(assert (=> b!1830866 (= e!1170290 e!1170285)))

(assert (=> b!1830866 (= c!298559 ((_ is Union!4967) lt!710701))))

(declare-fun b!1830867 () Bool)

(declare-fun call!114691 () Bool)

(assert (=> b!1830867 (= e!1170287 call!114691)))

(declare-fun b!1830868 () Bool)

(declare-fun e!1170291 () Bool)

(assert (=> b!1830868 (= e!1170291 call!114692)))

(declare-fun b!1830869 () Bool)

(declare-fun res!823396 () Bool)

(assert (=> b!1830869 (=> (not res!823396) (not e!1170291))))

(assert (=> b!1830869 (= res!823396 call!114690)))

(assert (=> b!1830869 (= e!1170285 e!1170291)))

(declare-fun d!559682 () Bool)

(declare-fun res!823397 () Bool)

(declare-fun e!1170286 () Bool)

(assert (=> d!559682 (=> res!823397 e!1170286)))

(assert (=> d!559682 (= res!823397 ((_ is ElementMatch!4967) lt!710701))))

(assert (=> d!559682 (= (validRegex!2024 lt!710701) e!1170286)))

(declare-fun bm!114686 () Bool)

(assert (=> bm!114686 (= call!114690 call!114691)))

(declare-fun b!1830870 () Bool)

(assert (=> b!1830870 (= e!1170286 e!1170290)))

(declare-fun c!298558 () Bool)

(assert (=> b!1830870 (= c!298558 ((_ is Star!4967) lt!710701))))

(declare-fun bm!114687 () Bool)

(assert (=> bm!114687 (= call!114691 (validRegex!2024 (ite c!298558 (reg!5296 lt!710701) (ite c!298559 (regOne!10447 lt!710701) (regTwo!10446 lt!710701)))))))

(declare-fun b!1830871 () Bool)

(assert (=> b!1830871 (= e!1170289 e!1170288)))

(declare-fun res!823395 () Bool)

(assert (=> b!1830871 (=> (not res!823395) (not e!1170288))))

(assert (=> b!1830871 (= res!823395 call!114692)))

(assert (= (and d!559682 (not res!823397)) b!1830870))

(assert (= (and b!1830870 c!298558) b!1830864))

(assert (= (and b!1830870 (not c!298558)) b!1830866))

(assert (= (and b!1830864 res!823399) b!1830867))

(assert (= (and b!1830866 c!298559) b!1830869))

(assert (= (and b!1830866 (not c!298559)) b!1830863))

(assert (= (and b!1830869 res!823396) b!1830868))

(assert (= (and b!1830863 (not res!823398)) b!1830871))

(assert (= (and b!1830871 res!823395) b!1830865))

(assert (= (or b!1830868 b!1830871) bm!114685))

(assert (= (or b!1830869 b!1830865) bm!114686))

(assert (= (or b!1830867 bm!114686) bm!114687))

(declare-fun m!2258603 () Bool)

(assert (=> b!1830864 m!2258603))

(declare-fun m!2258605 () Bool)

(assert (=> bm!114685 m!2258605))

(declare-fun m!2258607 () Bool)

(assert (=> bm!114687 m!2258607))

(assert (=> d!559484 d!559682))

(declare-fun d!559704 () Bool)

(declare-fun res!823404 () Bool)

(declare-fun e!1170296 () Bool)

(assert (=> d!559704 (=> res!823404 e!1170296)))

(assert (=> d!559704 (= res!823404 ((_ is Nil!20136) (map!4177 rules!4610 lambda!71874)))))

(assert (=> d!559704 (= (forall!4332 (map!4177 rules!4610 lambda!71874) lambda!71882) e!1170296)))

(declare-fun b!1830876 () Bool)

(declare-fun e!1170297 () Bool)

(assert (=> b!1830876 (= e!1170296 e!1170297)))

(declare-fun res!823405 () Bool)

(assert (=> b!1830876 (=> (not res!823405) (not e!1170297))))

(declare-fun dynLambda!10015 (Int Regex!4967) Bool)

(assert (=> b!1830876 (= res!823405 (dynLambda!10015 lambda!71882 (h!25537 (map!4177 rules!4610 lambda!71874))))))

(declare-fun b!1830877 () Bool)

(assert (=> b!1830877 (= e!1170297 (forall!4332 (t!170571 (map!4177 rules!4610 lambda!71874)) lambda!71882))))

(assert (= (and d!559704 (not res!823404)) b!1830876))

(assert (= (and b!1830876 res!823405) b!1830877))

(declare-fun b_lambda!60535 () Bool)

(assert (=> (not b_lambda!60535) (not b!1830876)))

(declare-fun m!2258611 () Bool)

(assert (=> b!1830876 m!2258611))

(declare-fun m!2258613 () Bool)

(assert (=> b!1830877 m!2258613))

(assert (=> d!559484 d!559704))

(declare-fun d!559710 () Bool)

(assert (=> d!559710 (= (head!4273 lt!710679) (h!25535 lt!710679))))

(assert (=> b!1830181 d!559710))

(declare-fun b!1830879 () Bool)

(declare-fun e!1170298 () List!20204)

(assert (=> b!1830879 (= e!1170298 (Cons!20134 (h!25535 (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!710749))))) (++!5463 (t!170569 (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!710749))))) (_2!11199 (get!6215 lt!710749)))))))

(declare-fun d!559712 () Bool)

(declare-fun e!1170299 () Bool)

(assert (=> d!559712 e!1170299))

(declare-fun res!823407 () Bool)

(assert (=> d!559712 (=> (not res!823407) (not e!1170299))))

(declare-fun lt!710960 () List!20204)

(assert (=> d!559712 (= res!823407 (= (content!2978 lt!710960) ((_ map or) (content!2978 (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!710749))))) (content!2978 (_2!11199 (get!6215 lt!710749))))))))

(assert (=> d!559712 (= lt!710960 e!1170298)))

(declare-fun c!298560 () Bool)

(assert (=> d!559712 (= c!298560 ((_ is Nil!20134) (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!710749))))))))

(assert (=> d!559712 (= (++!5463 (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!710749)))) (_2!11199 (get!6215 lt!710749))) lt!710960)))

(declare-fun b!1830880 () Bool)

(declare-fun res!823406 () Bool)

(assert (=> b!1830880 (=> (not res!823406) (not e!1170299))))

(assert (=> b!1830880 (= res!823406 (= (size!15960 lt!710960) (+ (size!15960 (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!710749))))) (size!15960 (_2!11199 (get!6215 lt!710749))))))))

(declare-fun b!1830878 () Bool)

(assert (=> b!1830878 (= e!1170298 (_2!11199 (get!6215 lt!710749)))))

(declare-fun b!1830881 () Bool)

(assert (=> b!1830881 (= e!1170299 (or (not (= (_2!11199 (get!6215 lt!710749)) Nil!20134)) (= lt!710960 (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!710749)))))))))

(assert (= (and d!559712 c!298560) b!1830878))

(assert (= (and d!559712 (not c!298560)) b!1830879))

(assert (= (and d!559712 res!823407) b!1830880))

(assert (= (and b!1830880 res!823406) b!1830881))

(declare-fun m!2258615 () Bool)

(assert (=> b!1830879 m!2258615))

(declare-fun m!2258617 () Bool)

(assert (=> d!559712 m!2258617))

(assert (=> d!559712 m!2258037))

(declare-fun m!2258619 () Bool)

(assert (=> d!559712 m!2258619))

(declare-fun m!2258621 () Bool)

(assert (=> d!559712 m!2258621))

(declare-fun m!2258623 () Bool)

(assert (=> b!1830880 m!2258623))

(assert (=> b!1830880 m!2258037))

(declare-fun m!2258625 () Bool)

(assert (=> b!1830880 m!2258625))

(assert (=> b!1830880 m!2258041))

(assert (=> b!1830350 d!559712))

(assert (=> b!1830350 d!559650))

(assert (=> b!1830350 d!559652))

(assert (=> b!1830350 d!559648))

(declare-fun bs!407811 () Bool)

(declare-fun d!559714 () Bool)

(assert (= bs!407811 (and d!559714 d!559658)))

(declare-fun lambda!71920 () Int)

(assert (=> bs!407811 (= (and (= (toChars!5041 (transformation!3639 rule!580)) (toChars!5041 (transformation!3639 (h!25536 rules!4610)))) (= (toValue!5182 (transformation!3639 rule!580)) (toValue!5182 (transformation!3639 (h!25536 rules!4610))))) (= lambda!71920 lambda!71918))))

(assert (=> d!559714 true))

(assert (=> d!559714 (< (dynLambda!10013 order!13031 (toChars!5041 (transformation!3639 rule!580))) (dynLambda!10014 order!13033 lambda!71920))))

(assert (=> d!559714 true))

(assert (=> d!559714 (< (dynLambda!10010 order!13027 (toValue!5182 (transformation!3639 rule!580))) (dynLambda!10014 order!13033 lambda!71920))))

(assert (=> d!559714 (= (semiInverseModEq!1460 (toChars!5041 (transformation!3639 rule!580)) (toValue!5182 (transformation!3639 rule!580))) (Forall!933 lambda!71920))))

(declare-fun bs!407812 () Bool)

(assert (= bs!407812 d!559714))

(declare-fun m!2258627 () Bool)

(assert (=> bs!407812 m!2258627))

(assert (=> d!559480 d!559714))

(declare-fun d!559716 () Bool)

(assert (=> d!559716 (= (isEmpty!12710 lt!710749) (not ((_ is Some!4218) lt!710749)))))

(assert (=> d!559506 d!559716))

(declare-fun b!1830909 () Bool)

(declare-fun e!1170321 () Bool)

(assert (=> b!1830909 (= e!1170321 (>= (size!15960 input!3681) (size!15960 input!3681)))))

(declare-fun d!559718 () Bool)

(assert (=> d!559718 e!1170321))

(declare-fun res!823435 () Bool)

(assert (=> d!559718 (=> res!823435 e!1170321)))

(declare-fun lt!710971 () Bool)

(assert (=> d!559718 (= res!823435 (not lt!710971))))

(declare-fun e!1170319 () Bool)

(assert (=> d!559718 (= lt!710971 e!1170319)))

(declare-fun res!823434 () Bool)

(assert (=> d!559718 (=> res!823434 e!1170319)))

(assert (=> d!559718 (= res!823434 ((_ is Nil!20134) input!3681))))

(assert (=> d!559718 (= (isPrefix!1834 input!3681 input!3681) lt!710971)))

(declare-fun b!1830906 () Bool)

(declare-fun e!1170320 () Bool)

(assert (=> b!1830906 (= e!1170319 e!1170320)))

(declare-fun res!823432 () Bool)

(assert (=> b!1830906 (=> (not res!823432) (not e!1170320))))

(assert (=> b!1830906 (= res!823432 (not ((_ is Nil!20134) input!3681)))))

(declare-fun b!1830907 () Bool)

(declare-fun res!823433 () Bool)

(assert (=> b!1830907 (=> (not res!823433) (not e!1170320))))

(assert (=> b!1830907 (= res!823433 (= (head!4273 input!3681) (head!4273 input!3681)))))

(declare-fun b!1830908 () Bool)

(assert (=> b!1830908 (= e!1170320 (isPrefix!1834 (tail!2732 input!3681) (tail!2732 input!3681)))))

(assert (= (and d!559718 (not res!823434)) b!1830906))

(assert (= (and b!1830906 res!823432) b!1830907))

(assert (= (and b!1830907 res!823433) b!1830908))

(assert (= (and d!559718 (not res!823435)) b!1830909))

(assert (=> b!1830909 m!2258043))

(assert (=> b!1830909 m!2258043))

(declare-fun m!2258633 () Bool)

(assert (=> b!1830907 m!2258633))

(assert (=> b!1830907 m!2258633))

(declare-fun m!2258635 () Bool)

(assert (=> b!1830908 m!2258635))

(assert (=> b!1830908 m!2258635))

(assert (=> b!1830908 m!2258635))

(assert (=> b!1830908 m!2258635))

(declare-fun m!2258637 () Bool)

(assert (=> b!1830908 m!2258637))

(assert (=> d!559506 d!559718))

(declare-fun d!559724 () Bool)

(assert (=> d!559724 (isPrefix!1834 input!3681 input!3681)))

(declare-fun lt!710975 () Unit!34797)

(declare-fun choose!11531 (List!20204 List!20204) Unit!34797)

(assert (=> d!559724 (= lt!710975 (choose!11531 input!3681 input!3681))))

(assert (=> d!559724 (= (lemmaIsPrefixRefl!1211 input!3681 input!3681) lt!710975)))

(declare-fun bs!407816 () Bool)

(assert (= bs!407816 d!559724))

(assert (=> bs!407816 m!2258023))

(declare-fun m!2258639 () Bool)

(assert (=> bs!407816 m!2258639))

(assert (=> d!559506 d!559724))

(declare-fun bs!407819 () Bool)

(declare-fun d!559726 () Bool)

(assert (= bs!407819 (and d!559726 d!559524)))

(declare-fun lambda!71928 () Int)

(assert (=> bs!407819 (= lambda!71928 lambda!71895)))

(declare-fun bs!407820 () Bool)

(assert (= bs!407820 (and d!559726 d!559570)))

(assert (=> bs!407820 (= lambda!71928 lambda!71898)))

(assert (=> d!559726 true))

(declare-fun lt!710978 () Bool)

(assert (=> d!559726 (= lt!710978 (forall!4333 rules!4610 lambda!71928))))

(declare-fun e!1170330 () Bool)

(assert (=> d!559726 (= lt!710978 e!1170330)))

(declare-fun res!823445 () Bool)

(assert (=> d!559726 (=> res!823445 e!1170330)))

(assert (=> d!559726 (= res!823445 (not ((_ is Cons!20135) rules!4610)))))

(assert (=> d!559726 (= (rulesValidInductive!1254 thiss!28318 rules!4610) lt!710978)))

(declare-fun b!1830918 () Bool)

(declare-fun e!1170331 () Bool)

(assert (=> b!1830918 (= e!1170330 e!1170331)))

(declare-fun res!823444 () Bool)

(assert (=> b!1830918 (=> (not res!823444) (not e!1170331))))

(assert (=> b!1830918 (= res!823444 (ruleValid!1129 thiss!28318 (h!25536 rules!4610)))))

(declare-fun b!1830919 () Bool)

(assert (=> b!1830919 (= e!1170331 (rulesValidInductive!1254 thiss!28318 (t!170570 rules!4610)))))

(assert (= (and d!559726 (not res!823445)) b!1830918))

(assert (= (and b!1830918 res!823444) b!1830919))

(declare-fun m!2258649 () Bool)

(assert (=> d!559726 m!2258649))

(declare-fun m!2258651 () Bool)

(assert (=> b!1830918 m!2258651))

(declare-fun m!2258653 () Bool)

(assert (=> b!1830919 m!2258653))

(assert (=> d!559506 d!559726))

(declare-fun d!559732 () Bool)

(declare-fun nullableFct!342 (Regex!4967) Bool)

(assert (=> d!559732 (= (nullable!1542 (regex!3639 rule!580)) (nullableFct!342 (regex!3639 rule!580)))))

(declare-fun bs!407822 () Bool)

(assert (= bs!407822 d!559732))

(declare-fun m!2258657 () Bool)

(assert (=> bs!407822 m!2258657))

(assert (=> b!1830169 d!559732))

(declare-fun d!559736 () Bool)

(assert (=> d!559736 (= ($colon$colon!458 (map!4177 (t!170570 rules!4610) lambda!71874) (dynLambda!10001 lambda!71874 (h!25536 rules!4610))) (Cons!20136 (dynLambda!10001 lambda!71874 (h!25536 rules!4610)) (map!4177 (t!170570 rules!4610) lambda!71874)))))

(assert (=> b!1830258 d!559736))

(declare-fun d!559744 () Bool)

(declare-fun lt!710982 () List!20206)

(assert (=> d!559744 (= (size!15963 lt!710982) (size!15964 (t!170570 rules!4610)))))

(declare-fun e!1170335 () List!20206)

(assert (=> d!559744 (= lt!710982 e!1170335)))

(declare-fun c!298564 () Bool)

(assert (=> d!559744 (= c!298564 ((_ is Nil!20135) (t!170570 rules!4610)))))

(assert (=> d!559744 (= (map!4177 (t!170570 rules!4610) lambda!71874) lt!710982)))

(declare-fun b!1830928 () Bool)

(assert (=> b!1830928 (= e!1170335 Nil!20136)))

(declare-fun b!1830929 () Bool)

(assert (=> b!1830929 (= e!1170335 ($colon$colon!458 (map!4177 (t!170570 (t!170570 rules!4610)) lambda!71874) (dynLambda!10001 lambda!71874 (h!25536 (t!170570 rules!4610)))))))

(assert (= (and d!559744 c!298564) b!1830928))

(assert (= (and d!559744 (not c!298564)) b!1830929))

(declare-fun b_lambda!60537 () Bool)

(assert (=> (not b_lambda!60537) (not b!1830929)))

(declare-fun m!2258665 () Bool)

(assert (=> d!559744 m!2258665))

(declare-fun m!2258667 () Bool)

(assert (=> d!559744 m!2258667))

(declare-fun m!2258669 () Bool)

(assert (=> b!1830929 m!2258669))

(declare-fun m!2258671 () Bool)

(assert (=> b!1830929 m!2258671))

(assert (=> b!1830929 m!2258669))

(assert (=> b!1830929 m!2258671))

(declare-fun m!2258673 () Bool)

(assert (=> b!1830929 m!2258673))

(assert (=> b!1830258 d!559744))

(declare-fun d!559746 () Bool)

(assert (=> d!559746 (= (isEmpty!12706 lt!710680) ((_ is Nil!20134) lt!710680))))

(assert (=> bm!114632 d!559746))

(declare-fun bs!407823 () Bool)

(declare-fun d!559748 () Bool)

(assert (= bs!407823 (and d!559748 d!559524)))

(declare-fun lambda!71930 () Int)

(assert (=> bs!407823 (= lambda!71930 lambda!71895)))

(declare-fun bs!407824 () Bool)

(assert (= bs!407824 (and d!559748 d!559570)))

(assert (=> bs!407824 (= lambda!71930 lambda!71898)))

(declare-fun bs!407825 () Bool)

(assert (= bs!407825 (and d!559748 d!559726)))

(assert (=> bs!407825 (= lambda!71930 lambda!71928)))

(assert (=> d!559748 true))

(declare-fun lt!710983 () Bool)

(assert (=> d!559748 (= lt!710983 (rulesValidInductive!1254 thiss!28318 rules!4610))))

(assert (=> d!559748 (= lt!710983 (forall!4333 rules!4610 lambda!71930))))

(assert (=> d!559748 (= (rulesValid!1386 thiss!28318 rules!4610) lt!710983)))

(declare-fun bs!407826 () Bool)

(assert (= bs!407826 d!559748))

(assert (=> bs!407826 m!2258027))

(declare-fun m!2258679 () Bool)

(assert (=> bs!407826 m!2258679))

(assert (=> d!559598 d!559748))

(declare-fun d!559752 () Bool)

(declare-fun charsToBigInt!0 (List!20203 Int) Int)

(assert (=> d!559752 (= (inv!15 (value!113378 token!567)) (= (charsToBigInt!0 (text!26552 (value!113378 token!567)) 0) (value!113373 (value!113378 token!567))))))

(declare-fun bs!407828 () Bool)

(assert (= bs!407828 d!559752))

(declare-fun m!2258705 () Bool)

(assert (=> bs!407828 m!2258705))

(assert (=> b!1830385 d!559752))

(declare-fun d!559762 () Bool)

(declare-fun charsToBigInt!1 (List!20203) Int)

(assert (=> d!559762 (= (inv!17 (value!113378 token!567)) (= (charsToBigInt!1 (text!26551 (value!113378 token!567))) (value!113370 (value!113378 token!567))))))

(declare-fun bs!407829 () Bool)

(assert (= bs!407829 d!559762))

(declare-fun m!2258711 () Bool)

(assert (=> bs!407829 m!2258711))

(assert (=> b!1830381 d!559762))

(declare-fun d!559768 () Bool)

(declare-fun c!298571 () Bool)

(assert (=> d!559768 (= c!298571 ((_ is Nil!20135) rs!808))))

(declare-fun e!1170344 () (InoxSet Rule!7078))

(assert (=> d!559768 (= (content!2981 rs!808) e!1170344)))

(declare-fun b!1830945 () Bool)

(assert (=> b!1830945 (= e!1170344 ((as const (Array Rule!7078 Bool)) false))))

(declare-fun b!1830946 () Bool)

(assert (=> b!1830946 (= e!1170344 ((_ map or) (store ((as const (Array Rule!7078 Bool)) false) (h!25536 rs!808) true) (content!2981 (t!170570 rs!808))))))

(assert (= (and d!559768 c!298571) b!1830945))

(assert (= (and d!559768 (not c!298571)) b!1830946))

(declare-fun m!2258713 () Bool)

(assert (=> b!1830946 m!2258713))

(declare-fun m!2258715 () Bool)

(assert (=> b!1830946 m!2258715))

(assert (=> d!559590 d!559768))

(declare-fun b!1830949 () Bool)

(declare-fun e!1170348 () Bool)

(declare-fun lt!710987 () Bool)

(declare-fun call!114693 () Bool)

(assert (=> b!1830949 (= e!1170348 (= lt!710987 call!114693))))

(declare-fun b!1830950 () Bool)

(declare-fun res!823450 () Bool)

(declare-fun e!1170347 () Bool)

(assert (=> b!1830950 (=> res!823450 e!1170347)))

(assert (=> b!1830950 (= res!823450 (not ((_ is ElementMatch!4967) (derivativeStep!1306 (regex!3639 rule!580) (head!4273 lt!710680)))))))

(declare-fun e!1170346 () Bool)

(assert (=> b!1830950 (= e!1170346 e!1170347)))

(declare-fun b!1830951 () Bool)

(declare-fun e!1170351 () Bool)

(assert (=> b!1830951 (= e!1170351 (matchR!2430 (derivativeStep!1306 (derivativeStep!1306 (regex!3639 rule!580) (head!4273 lt!710680)) (head!4273 (tail!2732 lt!710680))) (tail!2732 (tail!2732 lt!710680))))))

(declare-fun b!1830952 () Bool)

(declare-fun res!823448 () Bool)

(assert (=> b!1830952 (=> res!823448 e!1170347)))

(declare-fun e!1170350 () Bool)

(assert (=> b!1830952 (= res!823448 e!1170350)))

(declare-fun res!823454 () Bool)

(assert (=> b!1830952 (=> (not res!823454) (not e!1170350))))

(assert (=> b!1830952 (= res!823454 lt!710987)))

(declare-fun b!1830953 () Bool)

(declare-fun e!1170349 () Bool)

(declare-fun e!1170352 () Bool)

(assert (=> b!1830953 (= e!1170349 e!1170352)))

(declare-fun res!823453 () Bool)

(assert (=> b!1830953 (=> res!823453 e!1170352)))

(assert (=> b!1830953 (= res!823453 call!114693)))

(declare-fun b!1830954 () Bool)

(declare-fun res!823451 () Bool)

(assert (=> b!1830954 (=> res!823451 e!1170352)))

(assert (=> b!1830954 (= res!823451 (not (isEmpty!12706 (tail!2732 (tail!2732 lt!710680)))))))

(declare-fun b!1830955 () Bool)

(assert (=> b!1830955 (= e!1170351 (nullable!1542 (derivativeStep!1306 (regex!3639 rule!580) (head!4273 lt!710680))))))

(declare-fun d!559772 () Bool)

(assert (=> d!559772 e!1170348))

(declare-fun c!298573 () Bool)

(assert (=> d!559772 (= c!298573 ((_ is EmptyExpr!4967) (derivativeStep!1306 (regex!3639 rule!580) (head!4273 lt!710680))))))

(assert (=> d!559772 (= lt!710987 e!1170351)))

(declare-fun c!298574 () Bool)

(assert (=> d!559772 (= c!298574 (isEmpty!12706 (tail!2732 lt!710680)))))

(assert (=> d!559772 (validRegex!2024 (derivativeStep!1306 (regex!3639 rule!580) (head!4273 lt!710680)))))

(assert (=> d!559772 (= (matchR!2430 (derivativeStep!1306 (regex!3639 rule!580) (head!4273 lt!710680)) (tail!2732 lt!710680)) lt!710987)))

(declare-fun b!1830956 () Bool)

(assert (=> b!1830956 (= e!1170350 (= (head!4273 (tail!2732 lt!710680)) (c!298402 (derivativeStep!1306 (regex!3639 rule!580) (head!4273 lt!710680)))))))

(declare-fun bm!114688 () Bool)

(assert (=> bm!114688 (= call!114693 (isEmpty!12706 (tail!2732 lt!710680)))))

(declare-fun b!1830957 () Bool)

(assert (=> b!1830957 (= e!1170347 e!1170349)))

(declare-fun res!823452 () Bool)

(assert (=> b!1830957 (=> (not res!823452) (not e!1170349))))

(assert (=> b!1830957 (= res!823452 (not lt!710987))))

(declare-fun b!1830958 () Bool)

(declare-fun res!823455 () Bool)

(assert (=> b!1830958 (=> (not res!823455) (not e!1170350))))

(assert (=> b!1830958 (= res!823455 (isEmpty!12706 (tail!2732 (tail!2732 lt!710680))))))

(declare-fun b!1830959 () Bool)

(assert (=> b!1830959 (= e!1170348 e!1170346)))

(declare-fun c!298575 () Bool)

(assert (=> b!1830959 (= c!298575 ((_ is EmptyLang!4967) (derivativeStep!1306 (regex!3639 rule!580) (head!4273 lt!710680))))))

(declare-fun b!1830960 () Bool)

(assert (=> b!1830960 (= e!1170352 (not (= (head!4273 (tail!2732 lt!710680)) (c!298402 (derivativeStep!1306 (regex!3639 rule!580) (head!4273 lt!710680))))))))

(declare-fun b!1830961 () Bool)

(declare-fun res!823449 () Bool)

(assert (=> b!1830961 (=> (not res!823449) (not e!1170350))))

(assert (=> b!1830961 (= res!823449 (not call!114693))))

(declare-fun b!1830962 () Bool)

(assert (=> b!1830962 (= e!1170346 (not lt!710987))))

(assert (= (and d!559772 c!298574) b!1830955))

(assert (= (and d!559772 (not c!298574)) b!1830951))

(assert (= (and d!559772 c!298573) b!1830949))

(assert (= (and d!559772 (not c!298573)) b!1830959))

(assert (= (and b!1830959 c!298575) b!1830962))

(assert (= (and b!1830959 (not c!298575)) b!1830950))

(assert (= (and b!1830950 (not res!823450)) b!1830952))

(assert (= (and b!1830952 res!823454) b!1830961))

(assert (= (and b!1830961 res!823449) b!1830958))

(assert (= (and b!1830958 res!823455) b!1830956))

(assert (= (and b!1830952 (not res!823448)) b!1830957))

(assert (= (and b!1830957 res!823452) b!1830953))

(assert (= (and b!1830953 (not res!823453)) b!1830954))

(assert (= (and b!1830954 (not res!823451)) b!1830960))

(assert (= (or b!1830949 b!1830953 b!1830961) bm!114688))

(assert (=> bm!114688 m!2257863))

(assert (=> bm!114688 m!2257865))

(assert (=> b!1830956 m!2257863))

(declare-fun m!2258719 () Bool)

(assert (=> b!1830956 m!2258719))

(assert (=> b!1830955 m!2257869))

(declare-fun m!2258721 () Bool)

(assert (=> b!1830955 m!2258721))

(assert (=> b!1830958 m!2257863))

(declare-fun m!2258723 () Bool)

(assert (=> b!1830958 m!2258723))

(assert (=> b!1830958 m!2258723))

(declare-fun m!2258725 () Bool)

(assert (=> b!1830958 m!2258725))

(assert (=> d!559772 m!2257863))

(assert (=> d!559772 m!2257865))

(assert (=> d!559772 m!2257869))

(declare-fun m!2258727 () Bool)

(assert (=> d!559772 m!2258727))

(assert (=> b!1830951 m!2257863))

(assert (=> b!1830951 m!2258719))

(assert (=> b!1830951 m!2257869))

(assert (=> b!1830951 m!2258719))

(declare-fun m!2258729 () Bool)

(assert (=> b!1830951 m!2258729))

(assert (=> b!1830951 m!2257863))

(assert (=> b!1830951 m!2258723))

(assert (=> b!1830951 m!2258729))

(assert (=> b!1830951 m!2258723))

(declare-fun m!2258731 () Bool)

(assert (=> b!1830951 m!2258731))

(assert (=> b!1830954 m!2257863))

(assert (=> b!1830954 m!2258723))

(assert (=> b!1830954 m!2258723))

(assert (=> b!1830954 m!2258725))

(assert (=> b!1830960 m!2257863))

(assert (=> b!1830960 m!2258719))

(assert (=> b!1830153 d!559772))

(declare-fun c!298595 () Bool)

(declare-fun call!114703 () Regex!4967)

(declare-fun c!298599 () Bool)

(declare-fun bm!114697 () Bool)

(assert (=> bm!114697 (= call!114703 (derivativeStep!1306 (ite c!298599 (regOne!10447 (regex!3639 rule!580)) (ite c!298595 (regTwo!10446 (regex!3639 rule!580)) (regOne!10446 (regex!3639 rule!580)))) (head!4273 lt!710680)))))

(declare-fun c!298598 () Bool)

(declare-fun bm!114698 () Bool)

(declare-fun call!114705 () Regex!4967)

(assert (=> bm!114698 (= call!114705 (derivativeStep!1306 (ite c!298599 (regTwo!10447 (regex!3639 rule!580)) (ite c!298598 (reg!5296 (regex!3639 rule!580)) (regOne!10446 (regex!3639 rule!580)))) (head!4273 lt!710680)))))

(declare-fun d!559776 () Bool)

(declare-fun lt!710993 () Regex!4967)

(assert (=> d!559776 (validRegex!2024 lt!710993)))

(declare-fun e!1170376 () Regex!4967)

(assert (=> d!559776 (= lt!710993 e!1170376)))

(declare-fun c!298596 () Bool)

(assert (=> d!559776 (= c!298596 (or ((_ is EmptyExpr!4967) (regex!3639 rule!580)) ((_ is EmptyLang!4967) (regex!3639 rule!580))))))

(assert (=> d!559776 (validRegex!2024 (regex!3639 rule!580))))

(assert (=> d!559776 (= (derivativeStep!1306 (regex!3639 rule!580) (head!4273 lt!710680)) lt!710993)))

(declare-fun bm!114699 () Bool)

(declare-fun call!114704 () Regex!4967)

(assert (=> bm!114699 (= call!114704 call!114705)))

(declare-fun b!1831007 () Bool)

(declare-fun e!1170374 () Regex!4967)

(assert (=> b!1831007 (= e!1170374 (ite (= (head!4273 lt!710680) (c!298402 (regex!3639 rule!580))) EmptyExpr!4967 EmptyLang!4967))))

(declare-fun b!1831008 () Bool)

(assert (=> b!1831008 (= c!298595 (nullable!1542 (regOne!10446 (regex!3639 rule!580))))))

(declare-fun e!1170375 () Regex!4967)

(declare-fun e!1170373 () Regex!4967)

(assert (=> b!1831008 (= e!1170375 e!1170373)))

(declare-fun b!1831009 () Bool)

(assert (=> b!1831009 (= e!1170376 e!1170374)))

(declare-fun c!298597 () Bool)

(assert (=> b!1831009 (= c!298597 ((_ is ElementMatch!4967) (regex!3639 rule!580)))))

(declare-fun b!1831010 () Bool)

(declare-fun call!114702 () Regex!4967)

(assert (=> b!1831010 (= e!1170373 (Union!4967 (Concat!8696 call!114702 (regTwo!10446 (regex!3639 rule!580))) EmptyLang!4967))))

(declare-fun b!1831011 () Bool)

(assert (=> b!1831011 (= c!298599 ((_ is Union!4967) (regex!3639 rule!580)))))

(declare-fun e!1170377 () Regex!4967)

(assert (=> b!1831011 (= e!1170374 e!1170377)))

(declare-fun b!1831012 () Bool)

(assert (=> b!1831012 (= e!1170377 (Union!4967 call!114703 call!114705))))

(declare-fun b!1831013 () Bool)

(assert (=> b!1831013 (= e!1170375 (Concat!8696 call!114704 (regex!3639 rule!580)))))

(declare-fun bm!114700 () Bool)

(assert (=> bm!114700 (= call!114702 call!114703)))

(declare-fun b!1831014 () Bool)

(assert (=> b!1831014 (= e!1170376 EmptyLang!4967)))

(declare-fun b!1831015 () Bool)

(assert (=> b!1831015 (= e!1170373 (Union!4967 (Concat!8696 call!114704 (regTwo!10446 (regex!3639 rule!580))) call!114702))))

(declare-fun b!1831016 () Bool)

(assert (=> b!1831016 (= e!1170377 e!1170375)))

(assert (=> b!1831016 (= c!298598 ((_ is Star!4967) (regex!3639 rule!580)))))

(assert (= (and d!559776 c!298596) b!1831014))

(assert (= (and d!559776 (not c!298596)) b!1831009))

(assert (= (and b!1831009 c!298597) b!1831007))

(assert (= (and b!1831009 (not c!298597)) b!1831011))

(assert (= (and b!1831011 c!298599) b!1831012))

(assert (= (and b!1831011 (not c!298599)) b!1831016))

(assert (= (and b!1831016 c!298598) b!1831013))

(assert (= (and b!1831016 (not c!298598)) b!1831008))

(assert (= (and b!1831008 c!298595) b!1831015))

(assert (= (and b!1831008 (not c!298595)) b!1831010))

(assert (= (or b!1831015 b!1831010) bm!114700))

(assert (= (or b!1831013 b!1831015) bm!114699))

(assert (= (or b!1831012 bm!114699) bm!114698))

(assert (= (or b!1831012 bm!114700) bm!114697))

(assert (=> bm!114697 m!2257859))

(declare-fun m!2258761 () Bool)

(assert (=> bm!114697 m!2258761))

(assert (=> bm!114698 m!2257859))

(declare-fun m!2258763 () Bool)

(assert (=> bm!114698 m!2258763))

(declare-fun m!2258765 () Bool)

(assert (=> d!559776 m!2258765))

(assert (=> d!559776 m!2257867))

(declare-fun m!2258767 () Bool)

(assert (=> b!1831008 m!2258767))

(assert (=> b!1830153 d!559776))

(assert (=> b!1830153 d!559680))

(declare-fun d!559794 () Bool)

(assert (=> d!559794 (= (tail!2732 lt!710680) (t!170569 lt!710680))))

(assert (=> b!1830153 d!559794))

(declare-fun bs!407834 () Bool)

(declare-fun d!559796 () Bool)

(assert (= bs!407834 (and d!559796 d!559524)))

(declare-fun lambda!71934 () Int)

(assert (=> bs!407834 (= lambda!71934 lambda!71895)))

(declare-fun bs!407835 () Bool)

(assert (= bs!407835 (and d!559796 d!559570)))

(assert (=> bs!407835 (= lambda!71934 lambda!71898)))

(declare-fun bs!407836 () Bool)

(assert (= bs!407836 (and d!559796 d!559726)))

(assert (=> bs!407836 (= lambda!71934 lambda!71928)))

(declare-fun bs!407837 () Bool)

(assert (= bs!407837 (and d!559796 d!559748)))

(assert (=> bs!407837 (= lambda!71934 lambda!71930)))

(assert (=> d!559796 true))

(declare-fun lt!710997 () Bool)

(assert (=> d!559796 (= lt!710997 (forall!4333 rs!808 lambda!71934))))

(declare-fun e!1170379 () Bool)

(assert (=> d!559796 (= lt!710997 e!1170379)))

(declare-fun res!823459 () Bool)

(assert (=> d!559796 (=> res!823459 e!1170379)))

(assert (=> d!559796 (= res!823459 (not ((_ is Cons!20135) rs!808)))))

(assert (=> d!559796 (= (rulesValidInductive!1254 thiss!28318 rs!808) lt!710997)))

(declare-fun b!1831023 () Bool)

(declare-fun e!1170381 () Bool)

(assert (=> b!1831023 (= e!1170379 e!1170381)))

(declare-fun res!823458 () Bool)

(assert (=> b!1831023 (=> (not res!823458) (not e!1170381))))

(assert (=> b!1831023 (= res!823458 (ruleValid!1129 thiss!28318 (h!25536 rs!808)))))

(declare-fun b!1831024 () Bool)

(assert (=> b!1831024 (= e!1170381 (rulesValidInductive!1254 thiss!28318 (t!170570 rs!808)))))

(assert (= (and d!559796 (not res!823459)) b!1831023))

(assert (= (and b!1831023 res!823458) b!1831024))

(declare-fun m!2258769 () Bool)

(assert (=> d!559796 m!2258769))

(declare-fun m!2258771 () Bool)

(assert (=> b!1831023 m!2258771))

(assert (=> b!1831024 m!2258079))

(assert (=> d!559570 d!559796))

(declare-fun d!559798 () Bool)

(declare-fun res!823466 () Bool)

(declare-fun e!1170396 () Bool)

(assert (=> d!559798 (=> res!823466 e!1170396)))

(assert (=> d!559798 (= res!823466 ((_ is Nil!20135) rs!808))))

(assert (=> d!559798 (= (forall!4333 rs!808 lambda!71898) e!1170396)))

(declare-fun b!1831045 () Bool)

(declare-fun e!1170397 () Bool)

(assert (=> b!1831045 (= e!1170396 e!1170397)))

(declare-fun res!823467 () Bool)

(assert (=> b!1831045 (=> (not res!823467) (not e!1170397))))

(declare-fun dynLambda!10017 (Int Rule!7078) Bool)

(assert (=> b!1831045 (= res!823467 (dynLambda!10017 lambda!71898 (h!25536 rs!808)))))

(declare-fun b!1831046 () Bool)

(assert (=> b!1831046 (= e!1170397 (forall!4333 (t!170570 rs!808) lambda!71898))))

(assert (= (and d!559798 (not res!823466)) b!1831045))

(assert (= (and b!1831045 res!823467) b!1831046))

(declare-fun b_lambda!60541 () Bool)

(assert (=> (not b_lambda!60541) (not b!1831045)))

(declare-fun m!2258781 () Bool)

(assert (=> b!1831045 m!2258781))

(declare-fun m!2258783 () Bool)

(assert (=> b!1831046 m!2258783))

(assert (=> d!559570 d!559798))

(declare-fun d!559810 () Bool)

(declare-fun lt!711002 () Int)

(assert (=> d!559810 (>= lt!711002 0)))

(declare-fun e!1170398 () Int)

(assert (=> d!559810 (= lt!711002 e!1170398)))

(declare-fun c!298610 () Bool)

(assert (=> d!559810 (= c!298610 ((_ is Nil!20134) (t!170569 lt!710679)))))

(assert (=> d!559810 (= (size!15960 (t!170569 lt!710679)) lt!711002)))

(declare-fun b!1831047 () Bool)

(assert (=> b!1831047 (= e!1170398 0)))

(declare-fun b!1831048 () Bool)

(assert (=> b!1831048 (= e!1170398 (+ 1 (size!15960 (t!170569 (t!170569 lt!710679)))))))

(assert (= (and d!559810 c!298610) b!1831047))

(assert (= (and d!559810 (not c!298610)) b!1831048))

(declare-fun m!2258785 () Bool)

(assert (=> b!1831048 m!2258785))

(assert (=> b!1830520 d!559810))

(declare-fun bs!407842 () Bool)

(declare-fun d!559812 () Bool)

(assert (= bs!407842 (and d!559812 d!559726)))

(declare-fun lambda!71936 () Int)

(assert (=> bs!407842 (= lambda!71936 lambda!71928)))

(declare-fun bs!407843 () Bool)

(assert (= bs!407843 (and d!559812 d!559524)))

(assert (=> bs!407843 (= lambda!71936 lambda!71895)))

(declare-fun bs!407844 () Bool)

(assert (= bs!407844 (and d!559812 d!559748)))

(assert (=> bs!407844 (= lambda!71936 lambda!71930)))

(declare-fun bs!407845 () Bool)

(assert (= bs!407845 (and d!559812 d!559570)))

(assert (=> bs!407845 (= lambda!71936 lambda!71898)))

(declare-fun bs!407846 () Bool)

(assert (= bs!407846 (and d!559812 d!559796)))

(assert (=> bs!407846 (= lambda!71936 lambda!71934)))

(assert (=> d!559812 true))

(declare-fun lt!711003 () Bool)

(assert (=> d!559812 (= lt!711003 (forall!4333 (t!170570 rs!808) lambda!71936))))

(declare-fun e!1170399 () Bool)

(assert (=> d!559812 (= lt!711003 e!1170399)))

(declare-fun res!823469 () Bool)

(assert (=> d!559812 (=> res!823469 e!1170399)))

(assert (=> d!559812 (= res!823469 (not ((_ is Cons!20135) (t!170570 rs!808))))))

(assert (=> d!559812 (= (rulesValidInductive!1254 thiss!28318 (t!170570 rs!808)) lt!711003)))

(declare-fun b!1831049 () Bool)

(declare-fun e!1170400 () Bool)

(assert (=> b!1831049 (= e!1170399 e!1170400)))

(declare-fun res!823468 () Bool)

(assert (=> b!1831049 (=> (not res!823468) (not e!1170400))))

(assert (=> b!1831049 (= res!823468 (ruleValid!1129 thiss!28318 (h!25536 (t!170570 rs!808))))))

(declare-fun b!1831050 () Bool)

(assert (=> b!1831050 (= e!1170400 (rulesValidInductive!1254 thiss!28318 (t!170570 (t!170570 rs!808))))))

(assert (= (and d!559812 (not res!823469)) b!1831049))

(assert (= (and b!1831049 res!823468) b!1831050))

(declare-fun m!2258805 () Bool)

(assert (=> d!559812 m!2258805))

(declare-fun m!2258807 () Bool)

(assert (=> b!1831049 m!2258807))

(declare-fun m!2258809 () Bool)

(assert (=> b!1831050 m!2258809))

(assert (=> d!559524 d!559812))

(declare-fun d!559816 () Bool)

(declare-fun res!823470 () Bool)

(declare-fun e!1170401 () Bool)

(assert (=> d!559816 (=> res!823470 e!1170401)))

(assert (=> d!559816 (= res!823470 ((_ is Nil!20135) (t!170570 rs!808)))))

(assert (=> d!559816 (= (forall!4333 (t!170570 rs!808) lambda!71895) e!1170401)))

(declare-fun b!1831051 () Bool)

(declare-fun e!1170402 () Bool)

(assert (=> b!1831051 (= e!1170401 e!1170402)))

(declare-fun res!823471 () Bool)

(assert (=> b!1831051 (=> (not res!823471) (not e!1170402))))

(assert (=> b!1831051 (= res!823471 (dynLambda!10017 lambda!71895 (h!25536 (t!170570 rs!808))))))

(declare-fun b!1831052 () Bool)

(assert (=> b!1831052 (= e!1170402 (forall!4333 (t!170570 (t!170570 rs!808)) lambda!71895))))

(assert (= (and d!559816 (not res!823470)) b!1831051))

(assert (= (and b!1831051 res!823471) b!1831052))

(declare-fun b_lambda!60543 () Bool)

(assert (=> (not b_lambda!60543) (not b!1831051)))

(declare-fun m!2258811 () Bool)

(assert (=> b!1831051 m!2258811))

(declare-fun m!2258813 () Bool)

(assert (=> b!1831052 m!2258813))

(assert (=> d!559524 d!559816))

(declare-fun d!559818 () Bool)

(declare-fun c!298611 () Bool)

(assert (=> d!559818 (= c!298611 ((_ is Nil!20134) lt!710713))))

(declare-fun e!1170403 () (InoxSet C!10108))

(assert (=> d!559818 (= (content!2978 lt!710713) e!1170403)))

(declare-fun b!1831053 () Bool)

(assert (=> b!1831053 (= e!1170403 ((as const (Array C!10108 Bool)) false))))

(declare-fun b!1831054 () Bool)

(assert (=> b!1831054 (= e!1170403 ((_ map or) (store ((as const (Array C!10108 Bool)) false) (h!25535 lt!710713) true) (content!2978 (t!170569 lt!710713))))))

(assert (= (and d!559818 c!298611) b!1831053))

(assert (= (and d!559818 (not c!298611)) b!1831054))

(declare-fun m!2258815 () Bool)

(assert (=> b!1831054 m!2258815))

(declare-fun m!2258817 () Bool)

(assert (=> b!1831054 m!2258817))

(assert (=> d!559496 d!559818))

(declare-fun d!559820 () Bool)

(declare-fun c!298612 () Bool)

(assert (=> d!559820 (= c!298612 ((_ is Nil!20134) lt!710680))))

(declare-fun e!1170404 () (InoxSet C!10108))

(assert (=> d!559820 (= (content!2978 lt!710680) e!1170404)))

(declare-fun b!1831055 () Bool)

(assert (=> b!1831055 (= e!1170404 ((as const (Array C!10108 Bool)) false))))

(declare-fun b!1831056 () Bool)

(assert (=> b!1831056 (= e!1170404 ((_ map or) (store ((as const (Array C!10108 Bool)) false) (h!25535 lt!710680) true) (content!2978 (t!170569 lt!710680))))))

(assert (= (and d!559820 c!298612) b!1831055))

(assert (= (and d!559820 (not c!298612)) b!1831056))

(declare-fun m!2258819 () Bool)

(assert (=> b!1831056 m!2258819))

(declare-fun m!2258821 () Bool)

(assert (=> b!1831056 m!2258821))

(assert (=> d!559496 d!559820))

(assert (=> d!559496 d!559632))

(assert (=> d!559584 d!559528))

(declare-fun d!559822 () Bool)

(declare-fun res!823472 () Bool)

(declare-fun e!1170405 () Bool)

(assert (=> d!559822 (=> res!823472 e!1170405)))

(assert (=> d!559822 (= res!823472 ((_ is Nil!20136) (map!4177 rules!4610 lambda!71907)))))

(assert (=> d!559822 (= (forall!4332 (map!4177 rules!4610 lambda!71907) lambda!71908) e!1170405)))

(declare-fun b!1831057 () Bool)

(declare-fun e!1170406 () Bool)

(assert (=> b!1831057 (= e!1170405 e!1170406)))

(declare-fun res!823473 () Bool)

(assert (=> b!1831057 (=> (not res!823473) (not e!1170406))))

(assert (=> b!1831057 (= res!823473 (dynLambda!10015 lambda!71908 (h!25537 (map!4177 rules!4610 lambda!71907))))))

(declare-fun b!1831058 () Bool)

(assert (=> b!1831058 (= e!1170406 (forall!4332 (t!170571 (map!4177 rules!4610 lambda!71907)) lambda!71908))))

(assert (= (and d!559822 (not res!823472)) b!1831057))

(assert (= (and b!1831057 res!823473) b!1831058))

(declare-fun b_lambda!60545 () Bool)

(assert (=> (not b_lambda!60545) (not b!1831057)))

(declare-fun m!2258823 () Bool)

(assert (=> b!1831057 m!2258823))

(declare-fun m!2258825 () Bool)

(assert (=> b!1831058 m!2258825))

(assert (=> d!559584 d!559822))

(declare-fun d!559824 () Bool)

(declare-fun lt!711004 () Int)

(assert (=> d!559824 (>= lt!711004 0)))

(declare-fun e!1170411 () Int)

(assert (=> d!559824 (= lt!711004 e!1170411)))

(declare-fun c!298613 () Bool)

(assert (=> d!559824 (= c!298613 ((_ is Nil!20134) lt!710842))))

(assert (=> d!559824 (= (size!15960 lt!710842) lt!711004)))

(declare-fun b!1831063 () Bool)

(assert (=> b!1831063 (= e!1170411 0)))

(declare-fun b!1831064 () Bool)

(assert (=> b!1831064 (= e!1170411 (+ 1 (size!15960 (t!170569 lt!710842))))))

(assert (= (and d!559824 c!298613) b!1831063))

(assert (= (and d!559824 (not c!298613)) b!1831064))

(declare-fun m!2258827 () Bool)

(assert (=> b!1831064 m!2258827))

(assert (=> d!559584 d!559824))

(declare-fun d!559826 () Bool)

(declare-fun lt!711005 () List!20206)

(assert (=> d!559826 (= (size!15963 lt!711005) (size!15964 rules!4610))))

(declare-fun e!1170412 () List!20206)

(assert (=> d!559826 (= lt!711005 e!1170412)))

(declare-fun c!298614 () Bool)

(assert (=> d!559826 (= c!298614 ((_ is Nil!20135) rules!4610))))

(assert (=> d!559826 (= (map!4177 rules!4610 lambda!71907) lt!711005)))

(declare-fun b!1831065 () Bool)

(assert (=> b!1831065 (= e!1170412 Nil!20136)))

(declare-fun b!1831066 () Bool)

(assert (=> b!1831066 (= e!1170412 ($colon$colon!458 (map!4177 (t!170570 rules!4610) lambda!71907) (dynLambda!10001 lambda!71907 (h!25536 rules!4610))))))

(assert (= (and d!559826 c!298614) b!1831065))

(assert (= (and d!559826 (not c!298614)) b!1831066))

(declare-fun b_lambda!60547 () Bool)

(assert (=> (not b_lambda!60547) (not b!1831066)))

(declare-fun m!2258829 () Bool)

(assert (=> d!559826 m!2258829))

(assert (=> d!559826 m!2257941))

(declare-fun m!2258831 () Bool)

(assert (=> b!1831066 m!2258831))

(declare-fun m!2258833 () Bool)

(assert (=> b!1831066 m!2258833))

(assert (=> b!1831066 m!2258831))

(assert (=> b!1831066 m!2258833))

(declare-fun m!2258835 () Bool)

(assert (=> b!1831066 m!2258835))

(assert (=> d!559584 d!559826))

(declare-fun d!559828 () Bool)

(assert (=> d!559828 (= (maxPrefixOneRule!1177 thiss!28318 rule!580 input!3681) (Some!4218 (tuple2!19595 (Token!6833 (apply!5427 (transformation!3639 rule!580) (seqFromList!2596 lt!710842)) rule!580 (size!15960 lt!710842) lt!710842) suffix!1698)))))

(declare-fun lt!711006 () Unit!34797)

(assert (=> d!559828 (= lt!711006 (choose!11527 thiss!28318 rules!4610 lt!710842 input!3681 suffix!1698 rule!580))))

(assert (=> d!559828 (not (isEmpty!12705 rules!4610))))

(assert (=> d!559828 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!547 thiss!28318 rules!4610 lt!710842 input!3681 suffix!1698 rule!580) lt!711006)))

(declare-fun bs!407847 () Bool)

(assert (= bs!407847 d!559828))

(assert (=> bs!407847 m!2258307))

(assert (=> bs!407847 m!2258309))

(assert (=> bs!407847 m!2258307))

(declare-fun m!2258837 () Bool)

(assert (=> bs!407847 m!2258837))

(assert (=> bs!407847 m!2258317))

(assert (=> bs!407847 m!2257847))

(assert (=> bs!407847 m!2257809))

(assert (=> d!559584 d!559828))

(assert (=> d!559584 d!559502))

(assert (=> d!559584 d!559500))

(declare-fun d!559832 () Bool)

(assert (=> d!559832 (= (apply!5427 (transformation!3639 rule!580) (seqFromList!2596 lt!710842)) (dynLambda!10004 (toValue!5182 (transformation!3639 rule!580)) (seqFromList!2596 lt!710842)))))

(declare-fun b_lambda!60549 () Bool)

(assert (=> (not b_lambda!60549) (not d!559832)))

(declare-fun tb!111873 () Bool)

(declare-fun t!170697 () Bool)

(assert (=> (and b!1830099 (= (toValue!5182 (transformation!3639 (h!25536 rs!808))) (toValue!5182 (transformation!3639 rule!580))) t!170697) tb!111873))

(declare-fun result!134548 () Bool)

(assert (=> tb!111873 (= result!134548 (inv!21 (dynLambda!10004 (toValue!5182 (transformation!3639 rule!580)) (seqFromList!2596 lt!710842))))))

(declare-fun m!2258843 () Bool)

(assert (=> tb!111873 m!2258843))

(assert (=> d!559832 t!170697))

(declare-fun b_and!142557 () Bool)

(assert (= b_and!142521 (and (=> t!170697 result!134548) b_and!142557)))

(declare-fun t!170699 () Bool)

(declare-fun tb!111875 () Bool)

(assert (=> (and b!1830628 (= (toValue!5182 (transformation!3639 (h!25536 (t!170570 rules!4610)))) (toValue!5182 (transformation!3639 rule!580))) t!170699) tb!111875))

(declare-fun result!134550 () Bool)

(assert (= result!134550 result!134548))

(assert (=> d!559832 t!170699))

(declare-fun b_and!142559 () Bool)

(assert (= b_and!142523 (and (=> t!170699 result!134550) b_and!142559)))

(declare-fun tb!111877 () Bool)

(declare-fun t!170701 () Bool)

(assert (=> (and b!1830640 (= (toValue!5182 (transformation!3639 (h!25536 (t!170570 rs!808)))) (toValue!5182 (transformation!3639 rule!580))) t!170701) tb!111877))

(declare-fun result!134552 () Bool)

(assert (= result!134552 result!134548))

(assert (=> d!559832 t!170701))

(declare-fun b_and!142561 () Bool)

(assert (= b_and!142529 (and (=> t!170701 result!134552) b_and!142561)))

(declare-fun t!170703 () Bool)

(declare-fun tb!111879 () Bool)

(assert (=> (and b!1830100 (= (toValue!5182 (transformation!3639 rule!580)) (toValue!5182 (transformation!3639 rule!580))) t!170703) tb!111879))

(declare-fun result!134554 () Bool)

(assert (= result!134554 result!134548))

(assert (=> d!559832 t!170703))

(declare-fun b_and!142563 () Bool)

(assert (= b_and!142525 (and (=> t!170703 result!134554) b_and!142563)))

(declare-fun tb!111881 () Bool)

(declare-fun t!170706 () Bool)

(assert (=> (and b!1830095 (= (toValue!5182 (transformation!3639 (rule!5807 token!567))) (toValue!5182 (transformation!3639 rule!580))) t!170706) tb!111881))

(declare-fun result!134556 () Bool)

(assert (= result!134556 result!134548))

(assert (=> d!559832 t!170706))

(declare-fun b_and!142565 () Bool)

(assert (= b_and!142531 (and (=> t!170706 result!134556) b_and!142565)))

(declare-fun t!170708 () Bool)

(declare-fun tb!111883 () Bool)

(assert (=> (and b!1830109 (= (toValue!5182 (transformation!3639 (h!25536 rules!4610))) (toValue!5182 (transformation!3639 rule!580))) t!170708) tb!111883))

(declare-fun result!134558 () Bool)

(assert (= result!134558 result!134548))

(assert (=> d!559832 t!170708))

(declare-fun b_and!142567 () Bool)

(assert (= b_and!142527 (and (=> t!170708 result!134558) b_and!142567)))

(assert (=> d!559832 m!2258307))

(declare-fun m!2258847 () Bool)

(assert (=> d!559832 m!2258847))

(assert (=> d!559584 d!559832))

(assert (=> d!559584 d!559748))

(declare-fun d!559840 () Bool)

(assert (=> d!559840 (= (seqFromList!2596 lt!710842) (fromListB!1185 lt!710842))))

(declare-fun bs!407849 () Bool)

(assert (= bs!407849 d!559840))

(declare-fun m!2258849 () Bool)

(assert (=> bs!407849 m!2258849))

(assert (=> d!559584 d!559840))

(declare-fun bs!407850 () Bool)

(declare-fun d!559842 () Bool)

(assert (= bs!407850 (and d!559842 d!559634)))

(declare-fun lambda!71937 () Int)

(assert (=> bs!407850 (= (= (toValue!5182 (transformation!3639 (h!25536 rules!4610))) (toValue!5182 (transformation!3639 (rule!5807 token!567)))) (= lambda!71937 lambda!71914))))

(declare-fun bs!407851 () Bool)

(assert (= bs!407851 (and d!559842 d!559642)))

(assert (=> bs!407851 (= (= (toValue!5182 (transformation!3639 (h!25536 rules!4610))) (toValue!5182 (transformation!3639 rule!580))) (= lambda!71937 lambda!71915))))

(assert (=> d!559842 true))

(assert (=> d!559842 (< (dynLambda!10010 order!13027 (toValue!5182 (transformation!3639 (h!25536 rules!4610)))) (dynLambda!10011 order!13029 lambda!71937))))

(assert (=> d!559842 (= (equivClasses!1401 (toChars!5041 (transformation!3639 (h!25536 rules!4610))) (toValue!5182 (transformation!3639 (h!25536 rules!4610)))) (Forall2!572 lambda!71937))))

(declare-fun bs!407852 () Bool)

(assert (= bs!407852 d!559842))

(declare-fun m!2258859 () Bool)

(assert (=> bs!407852 m!2258859))

(assert (=> b!1830566 d!559842))

(declare-fun d!559848 () Bool)

(declare-fun lt!711009 () Int)

(assert (=> d!559848 (>= lt!711009 0)))

(declare-fun e!1170419 () Int)

(assert (=> d!559848 (= lt!711009 e!1170419)))

(declare-fun c!298616 () Bool)

(assert (=> d!559848 (= c!298616 ((_ is Nil!20134) (_2!11199 (get!6215 lt!710749))))))

(assert (=> d!559848 (= (size!15960 (_2!11199 (get!6215 lt!710749))) lt!711009)))

(declare-fun b!1831073 () Bool)

(assert (=> b!1831073 (= e!1170419 0)))

(declare-fun b!1831074 () Bool)

(assert (=> b!1831074 (= e!1170419 (+ 1 (size!15960 (t!170569 (_2!11199 (get!6215 lt!710749))))))))

(assert (= (and d!559848 c!298616) b!1831073))

(assert (= (and d!559848 (not c!298616)) b!1831074))

(declare-fun m!2258861 () Bool)

(assert (=> b!1831074 m!2258861))

(assert (=> b!1830356 d!559848))

(assert (=> b!1830356 d!559648))

(declare-fun d!559850 () Bool)

(declare-fun lt!711010 () Int)

(assert (=> d!559850 (>= lt!711010 0)))

(declare-fun e!1170420 () Int)

(assert (=> d!559850 (= lt!711010 e!1170420)))

(declare-fun c!298617 () Bool)

(assert (=> d!559850 (= c!298617 ((_ is Nil!20134) input!3681))))

(assert (=> d!559850 (= (size!15960 input!3681) lt!711010)))

(declare-fun b!1831075 () Bool)

(assert (=> b!1831075 (= e!1170420 0)))

(declare-fun b!1831076 () Bool)

(assert (=> b!1831076 (= e!1170420 (+ 1 (size!15960 (t!170569 input!3681))))))

(assert (= (and d!559850 c!298617) b!1831075))

(assert (= (and d!559850 (not c!298617)) b!1831076))

(declare-fun m!2258863 () Bool)

(assert (=> b!1831076 m!2258863))

(assert (=> b!1830356 d!559850))

(declare-fun d!559852 () Bool)

(assert (=> d!559852 (= (inv!26189 (tag!4053 (h!25536 (t!170570 rules!4610)))) (= (mod (str.len (value!113377 (tag!4053 (h!25536 (t!170570 rules!4610))))) 2) 0))))

(assert (=> b!1830627 d!559852))

(declare-fun d!559854 () Bool)

(declare-fun res!823482 () Bool)

(declare-fun e!1170421 () Bool)

(assert (=> d!559854 (=> (not res!823482) (not e!1170421))))

(assert (=> d!559854 (= res!823482 (semiInverseModEq!1460 (toChars!5041 (transformation!3639 (h!25536 (t!170570 rules!4610)))) (toValue!5182 (transformation!3639 (h!25536 (t!170570 rules!4610))))))))

(assert (=> d!559854 (= (inv!26192 (transformation!3639 (h!25536 (t!170570 rules!4610)))) e!1170421)))

(declare-fun b!1831077 () Bool)

(assert (=> b!1831077 (= e!1170421 (equivClasses!1401 (toChars!5041 (transformation!3639 (h!25536 (t!170570 rules!4610)))) (toValue!5182 (transformation!3639 (h!25536 (t!170570 rules!4610))))))))

(assert (= (and d!559854 res!823482) b!1831077))

(declare-fun m!2258865 () Bool)

(assert (=> d!559854 m!2258865))

(declare-fun m!2258869 () Bool)

(assert (=> b!1831077 m!2258869))

(assert (=> b!1830627 d!559854))

(declare-fun d!559856 () Bool)

(assert (=> d!559856 (= (isDefined!3521 lt!710749) (not (isEmpty!12710 lt!710749)))))

(declare-fun bs!407857 () Bool)

(assert (= bs!407857 d!559856))

(assert (=> bs!407857 m!2258021))

(assert (=> b!1830353 d!559856))

(declare-fun d!559860 () Bool)

(declare-fun lt!711011 () Int)

(assert (=> d!559860 (>= lt!711011 0)))

(declare-fun e!1170422 () Int)

(assert (=> d!559860 (= lt!711011 e!1170422)))

(declare-fun c!298618 () Bool)

(assert (=> d!559860 (= c!298618 ((_ is Nil!20134) lt!710713))))

(assert (=> d!559860 (= (size!15960 lt!710713) lt!711011)))

(declare-fun b!1831078 () Bool)

(assert (=> b!1831078 (= e!1170422 0)))

(declare-fun b!1831079 () Bool)

(assert (=> b!1831079 (= e!1170422 (+ 1 (size!15960 (t!170569 lt!710713))))))

(assert (= (and d!559860 c!298618) b!1831078))

(assert (= (and d!559860 (not c!298618)) b!1831079))

(declare-fun m!2258873 () Bool)

(assert (=> b!1831079 m!2258873))

(assert (=> b!1830269 d!559860))

(declare-fun d!559862 () Bool)

(declare-fun lt!711012 () Int)

(assert (=> d!559862 (>= lt!711012 0)))

(declare-fun e!1170427 () Int)

(assert (=> d!559862 (= lt!711012 e!1170427)))

(declare-fun c!298619 () Bool)

(assert (=> d!559862 (= c!298619 ((_ is Nil!20134) lt!710680))))

(assert (=> d!559862 (= (size!15960 lt!710680) lt!711012)))

(declare-fun b!1831082 () Bool)

(assert (=> b!1831082 (= e!1170427 0)))

(declare-fun b!1831083 () Bool)

(assert (=> b!1831083 (= e!1170427 (+ 1 (size!15960 (t!170569 lt!710680))))))

(assert (= (and d!559862 c!298619) b!1831082))

(assert (= (and d!559862 (not c!298619)) b!1831083))

(declare-fun m!2258875 () Bool)

(assert (=> b!1831083 m!2258875))

(assert (=> b!1830269 d!559862))

(assert (=> b!1830269 d!559678))

(assert (=> b!1830492 d!559668))

(declare-fun bs!407858 () Bool)

(declare-fun d!559864 () Bool)

(assert (= bs!407858 (and d!559864 b!1830114)))

(declare-fun lambda!71939 () Int)

(assert (=> bs!407858 (= lambda!71939 lambda!71874)))

(declare-fun bs!407859 () Bool)

(assert (= bs!407859 (and d!559864 d!559582)))

(assert (=> bs!407859 (= lambda!71939 lambda!71902)))

(declare-fun bs!407860 () Bool)

(assert (= bs!407860 (and d!559864 d!559584)))

(assert (=> bs!407860 (= lambda!71939 lambda!71907)))

(declare-fun bs!407861 () Bool)

(assert (= bs!407861 (and d!559864 d!559484)))

(declare-fun lambda!71940 () Int)

(assert (=> bs!407861 (= lambda!71940 lambda!71882)))

(declare-fun bs!407862 () Bool)

(assert (= bs!407862 (and d!559864 d!559580)))

(assert (=> bs!407862 (= lambda!71940 lambda!71899)))

(assert (=> bs!407860 (= lambda!71940 lambda!71908)))

(assert (=> d!559864 (forall!4332 (map!4177 (t!170570 rules!4610) lambda!71939) lambda!71940)))

(declare-fun lt!711013 () Unit!34797)

(declare-fun e!1170428 () Unit!34797)

(assert (=> d!559864 (= lt!711013 e!1170428)))

(declare-fun c!298620 () Bool)

(assert (=> d!559864 (= c!298620 ((_ is Nil!20135) (t!170570 rules!4610)))))

(assert (=> d!559864 (rulesValid!1386 thiss!28318 (t!170570 rules!4610))))

(declare-fun lt!711014 () Unit!34797)

(declare-fun lt!711016 () Unit!34797)

(assert (=> d!559864 (= lt!711014 lt!711016)))

(declare-fun lt!711017 () List!20204)

(assert (=> d!559864 (= (maxPrefixOneRule!1177 thiss!28318 rule!580 input!3681) (Some!4218 (tuple2!19595 (Token!6833 (apply!5427 (transformation!3639 rule!580) (seqFromList!2596 lt!711017)) rule!580 (size!15960 lt!711017) lt!711017) suffix!1698)))))

(assert (=> d!559864 (= lt!711016 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!547 thiss!28318 rules!4610 lt!711017 input!3681 suffix!1698 rule!580))))

(assert (=> d!559864 (= lt!711017 (list!8179 (charsOf!2282 token!567)))))

(assert (=> d!559864 (= (lemma!530 input!3681 rule!580 rules!4610 suffix!1698 thiss!28318 token!567 (t!170570 rules!4610)) lt!711013)))

(declare-fun b!1831086 () Bool)

(declare-fun Unit!34806 () Unit!34797)

(assert (=> b!1831086 (= e!1170428 Unit!34806)))

(declare-fun b!1831087 () Bool)

(declare-fun Unit!34807 () Unit!34797)

(assert (=> b!1831087 (= e!1170428 Unit!34807)))

(declare-fun lt!711015 () Unit!34797)

(assert (=> b!1831087 (= lt!711015 (lemma!530 input!3681 rule!580 rules!4610 suffix!1698 thiss!28318 token!567 (t!170570 (t!170570 rules!4610))))))

(assert (= (and d!559864 c!298620) b!1831086))

(assert (= (and d!559864 (not c!298620)) b!1831087))

(declare-fun m!2258883 () Bool)

(assert (=> d!559864 m!2258883))

(declare-fun m!2258885 () Bool)

(assert (=> d!559864 m!2258885))

(assert (=> d!559864 m!2258885))

(declare-fun m!2258887 () Bool)

(assert (=> d!559864 m!2258887))

(declare-fun m!2258889 () Bool)

(assert (=> d!559864 m!2258889))

(declare-fun m!2258891 () Bool)

(assert (=> d!559864 m!2258891))

(assert (=> d!559864 m!2257847))

(assert (=> d!559864 m!2258889))

(declare-fun m!2258893 () Bool)

(assert (=> d!559864 m!2258893))

(assert (=> d!559864 m!2257843))

(declare-fun m!2258895 () Bool)

(assert (=> d!559864 m!2258895))

(assert (=> d!559864 m!2257843))

(assert (=> d!559864 m!2257845))

(declare-fun m!2258897 () Bool)

(assert (=> b!1831087 m!2258897))

(assert (=> b!1830565 d!559864))

(declare-fun d!559870 () Bool)

(assert (=> d!559870 (= (isEmpty!12706 (tail!2732 lt!710679)) ((_ is Nil!20134) (tail!2732 lt!710679)))))

(assert (=> b!1830183 d!559870))

(declare-fun d!559872 () Bool)

(assert (=> d!559872 (= (tail!2732 lt!710679) (t!170569 lt!710679))))

(assert (=> b!1830183 d!559872))

(declare-fun d!559874 () Bool)

(assert (=> d!559874 (= (isEmpty!12709 (tail!2735 lt!710678)) ((_ is Nil!20136) (tail!2735 lt!710678)))))

(assert (=> b!1830541 d!559874))

(declare-fun d!559878 () Bool)

(assert (=> d!559878 (= (tail!2735 lt!710678) (t!170571 lt!710678))))

(assert (=> b!1830541 d!559878))

(declare-fun d!559880 () Bool)

(assert (=> d!559880 (= (isUnion!125 lt!710814) ((_ is Union!4967) lt!710814))))

(assert (=> b!1830537 d!559880))

(assert (=> d!559476 d!559474))

(declare-fun d!559890 () Bool)

(assert (=> d!559890 (ruleValid!1129 thiss!28318 rule!580)))

(assert (=> d!559890 true))

(declare-fun _$65!986 () Unit!34797)

(assert (=> d!559890 (= (choose!11525 thiss!28318 rule!580 rules!4610) _$65!986)))

(declare-fun bs!407865 () Bool)

(assert (= bs!407865 d!559890))

(assert (=> bs!407865 m!2257789))

(assert (=> d!559476 d!559890))

(assert (=> d!559476 d!559572))

(declare-fun b!1831105 () Bool)

(declare-fun res!823499 () Bool)

(declare-fun e!1170445 () Bool)

(assert (=> b!1831105 (=> res!823499 e!1170445)))

(assert (=> b!1831105 (= res!823499 (not ((_ is Concat!8696) (regex!3639 rule!580))))))

(declare-fun e!1170441 () Bool)

(assert (=> b!1831105 (= e!1170441 e!1170445)))

(declare-fun b!1831106 () Bool)

(declare-fun e!1170446 () Bool)

(declare-fun e!1170443 () Bool)

(assert (=> b!1831106 (= e!1170446 e!1170443)))

(declare-fun res!823500 () Bool)

(assert (=> b!1831106 (= res!823500 (not (nullable!1542 (reg!5296 (regex!3639 rule!580)))))))

(assert (=> b!1831106 (=> (not res!823500) (not e!1170443))))

(declare-fun b!1831107 () Bool)

(declare-fun e!1170444 () Bool)

(declare-fun call!114709 () Bool)

(assert (=> b!1831107 (= e!1170444 call!114709)))

(declare-fun bm!114704 () Bool)

(declare-fun call!114711 () Bool)

(declare-fun c!298626 () Bool)

(assert (=> bm!114704 (= call!114711 (validRegex!2024 (ite c!298626 (regTwo!10447 (regex!3639 rule!580)) (regOne!10446 (regex!3639 rule!580)))))))

(declare-fun b!1831108 () Bool)

(assert (=> b!1831108 (= e!1170446 e!1170441)))

(assert (=> b!1831108 (= c!298626 ((_ is Union!4967) (regex!3639 rule!580)))))

(declare-fun b!1831109 () Bool)

(declare-fun call!114710 () Bool)

(assert (=> b!1831109 (= e!1170443 call!114710)))

(declare-fun b!1831110 () Bool)

(declare-fun e!1170447 () Bool)

(assert (=> b!1831110 (= e!1170447 call!114711)))

(declare-fun b!1831111 () Bool)

(declare-fun res!823497 () Bool)

(assert (=> b!1831111 (=> (not res!823497) (not e!1170447))))

(assert (=> b!1831111 (= res!823497 call!114709)))

(assert (=> b!1831111 (= e!1170441 e!1170447)))

(declare-fun d!559896 () Bool)

(declare-fun res!823498 () Bool)

(declare-fun e!1170442 () Bool)

(assert (=> d!559896 (=> res!823498 e!1170442)))

(assert (=> d!559896 (= res!823498 ((_ is ElementMatch!4967) (regex!3639 rule!580)))))

(assert (=> d!559896 (= (validRegex!2024 (regex!3639 rule!580)) e!1170442)))

(declare-fun bm!114705 () Bool)

(assert (=> bm!114705 (= call!114709 call!114710)))

(declare-fun b!1831112 () Bool)

(assert (=> b!1831112 (= e!1170442 e!1170446)))

(declare-fun c!298625 () Bool)

(assert (=> b!1831112 (= c!298625 ((_ is Star!4967) (regex!3639 rule!580)))))

(declare-fun bm!114706 () Bool)

(assert (=> bm!114706 (= call!114710 (validRegex!2024 (ite c!298625 (reg!5296 (regex!3639 rule!580)) (ite c!298626 (regOne!10447 (regex!3639 rule!580)) (regTwo!10446 (regex!3639 rule!580))))))))

(declare-fun b!1831113 () Bool)

(assert (=> b!1831113 (= e!1170445 e!1170444)))

(declare-fun res!823496 () Bool)

(assert (=> b!1831113 (=> (not res!823496) (not e!1170444))))

(assert (=> b!1831113 (= res!823496 call!114711)))

(assert (= (and d!559896 (not res!823498)) b!1831112))

(assert (= (and b!1831112 c!298625) b!1831106))

(assert (= (and b!1831112 (not c!298625)) b!1831108))

(assert (= (and b!1831106 res!823500) b!1831109))

(assert (= (and b!1831108 c!298626) b!1831111))

(assert (= (and b!1831108 (not c!298626)) b!1831105))

(assert (= (and b!1831111 res!823497) b!1831110))

(assert (= (and b!1831105 (not res!823499)) b!1831113))

(assert (= (and b!1831113 res!823496) b!1831107))

(assert (= (or b!1831110 b!1831113) bm!114704))

(assert (= (or b!1831111 b!1831107) bm!114705))

(assert (= (or b!1831109 bm!114705) bm!114706))

(declare-fun m!2258917 () Bool)

(assert (=> b!1831106 m!2258917))

(declare-fun m!2258919 () Bool)

(assert (=> bm!114704 m!2258919))

(declare-fun m!2258921 () Bool)

(assert (=> bm!114706 m!2258921))

(assert (=> d!559474 d!559896))

(declare-fun d!559904 () Bool)

(declare-fun lt!711020 () Bool)

(assert (=> d!559904 (= lt!711020 (select (content!2981 (t!170570 rs!808)) rule!580))))

(declare-fun e!1170448 () Bool)

(assert (=> d!559904 (= lt!711020 e!1170448)))

(declare-fun res!823501 () Bool)

(assert (=> d!559904 (=> (not res!823501) (not e!1170448))))

(assert (=> d!559904 (= res!823501 ((_ is Cons!20135) (t!170570 rs!808)))))

(assert (=> d!559904 (= (contains!3713 (t!170570 rs!808) rule!580) lt!711020)))

(declare-fun b!1831114 () Bool)

(declare-fun e!1170449 () Bool)

(assert (=> b!1831114 (= e!1170448 e!1170449)))

(declare-fun res!823502 () Bool)

(assert (=> b!1831114 (=> res!823502 e!1170449)))

(assert (=> b!1831114 (= res!823502 (= (h!25536 (t!170570 rs!808)) rule!580))))

(declare-fun b!1831115 () Bool)

(assert (=> b!1831115 (= e!1170449 (contains!3713 (t!170570 (t!170570 rs!808)) rule!580))))

(assert (= (and d!559904 res!823501) b!1831114))

(assert (= (and b!1831114 (not res!823502)) b!1831115))

(assert (=> d!559904 m!2258715))

(declare-fun m!2258923 () Bool)

(assert (=> d!559904 m!2258923))

(declare-fun m!2258925 () Bool)

(assert (=> b!1831115 m!2258925))

(assert (=> b!1830568 d!559904))

(assert (=> b!1830180 d!559732))

(declare-fun b!1831117 () Bool)

(declare-fun e!1170450 () List!20204)

(assert (=> b!1831117 (= e!1170450 (Cons!20134 (h!25535 (t!170569 lt!710679)) (++!5463 (t!170569 (t!170569 lt!710679)) suffix!1698)))))

(declare-fun d!559906 () Bool)

(declare-fun e!1170451 () Bool)

(assert (=> d!559906 e!1170451))

(declare-fun res!823504 () Bool)

(assert (=> d!559906 (=> (not res!823504) (not e!1170451))))

(declare-fun lt!711021 () List!20204)

(assert (=> d!559906 (= res!823504 (= (content!2978 lt!711021) ((_ map or) (content!2978 (t!170569 lt!710679)) (content!2978 suffix!1698))))))

(assert (=> d!559906 (= lt!711021 e!1170450)))

(declare-fun c!298627 () Bool)

(assert (=> d!559906 (= c!298627 ((_ is Nil!20134) (t!170569 lt!710679)))))

(assert (=> d!559906 (= (++!5463 (t!170569 lt!710679) suffix!1698) lt!711021)))

(declare-fun b!1831118 () Bool)

(declare-fun res!823503 () Bool)

(assert (=> b!1831118 (=> (not res!823503) (not e!1170451))))

(assert (=> b!1831118 (= res!823503 (= (size!15960 lt!711021) (+ (size!15960 (t!170569 lt!710679)) (size!15960 suffix!1698))))))

(declare-fun b!1831116 () Bool)

(assert (=> b!1831116 (= e!1170450 suffix!1698)))

(declare-fun b!1831119 () Bool)

(assert (=> b!1831119 (= e!1170451 (or (not (= suffix!1698 Nil!20134)) (= lt!711021 (t!170569 lt!710679))))))

(assert (= (and d!559906 c!298627) b!1831116))

(assert (= (and d!559906 (not c!298627)) b!1831117))

(assert (= (and d!559906 res!823504) b!1831118))

(assert (= (and b!1831118 res!823503) b!1831119))

(declare-fun m!2258927 () Bool)

(assert (=> b!1831117 m!2258927))

(declare-fun m!2258929 () Bool)

(assert (=> d!559906 m!2258929))

(assert (=> d!559906 m!2258487))

(assert (=> d!559906 m!2257961))

(declare-fun m!2258931 () Bool)

(assert (=> b!1831118 m!2258931))

(assert (=> b!1831118 m!2258255))

(assert (=> b!1831118 m!2257967))

(assert (=> b!1830528 d!559906))

(assert (=> b!1830158 d!559680))

(declare-fun bs!407869 () Bool)

(declare-fun d!559908 () Bool)

(assert (= bs!407869 (and d!559908 d!559634)))

(declare-fun lambda!71943 () Int)

(assert (=> bs!407869 (= (= (toValue!5182 (transformation!3639 (h!25536 rs!808))) (toValue!5182 (transformation!3639 (rule!5807 token!567)))) (= lambda!71943 lambda!71914))))

(declare-fun bs!407870 () Bool)

(assert (= bs!407870 (and d!559908 d!559642)))

(assert (=> bs!407870 (= (= (toValue!5182 (transformation!3639 (h!25536 rs!808))) (toValue!5182 (transformation!3639 rule!580))) (= lambda!71943 lambda!71915))))

(declare-fun bs!407871 () Bool)

(assert (= bs!407871 (and d!559908 d!559842)))

(assert (=> bs!407871 (= (= (toValue!5182 (transformation!3639 (h!25536 rs!808))) (toValue!5182 (transformation!3639 (h!25536 rules!4610)))) (= lambda!71943 lambda!71937))))

(assert (=> d!559908 true))

(assert (=> d!559908 (< (dynLambda!10010 order!13027 (toValue!5182 (transformation!3639 (h!25536 rs!808)))) (dynLambda!10011 order!13029 lambda!71943))))

(assert (=> d!559908 (= (equivClasses!1401 (toChars!5041 (transformation!3639 (h!25536 rs!808))) (toValue!5182 (transformation!3639 (h!25536 rs!808)))) (Forall2!572 lambda!71943))))

(declare-fun bs!407872 () Bool)

(assert (= bs!407872 d!559908))

(declare-fun m!2258933 () Bool)

(assert (=> bs!407872 m!2258933))

(assert (=> b!1830531 d!559908))

(declare-fun d!559910 () Bool)

(declare-fun lt!711024 () Int)

(assert (=> d!559910 (>= lt!711024 0)))

(declare-fun e!1170454 () Int)

(assert (=> d!559910 (= lt!711024 e!1170454)))

(declare-fun c!298630 () Bool)

(assert (=> d!559910 (= c!298630 ((_ is Nil!20136) lt!710707))))

(assert (=> d!559910 (= (size!15963 lt!710707) lt!711024)))

(declare-fun b!1831124 () Bool)

(assert (=> b!1831124 (= e!1170454 0)))

(declare-fun b!1831125 () Bool)

(assert (=> b!1831125 (= e!1170454 (+ 1 (size!15963 (t!170571 lt!710707))))))

(assert (= (and d!559910 c!298630) b!1831124))

(assert (= (and d!559910 (not c!298630)) b!1831125))

(declare-fun m!2258935 () Bool)

(assert (=> b!1831125 m!2258935))

(assert (=> d!559492 d!559910))

(declare-fun d!559912 () Bool)

(declare-fun lt!711027 () Int)

(assert (=> d!559912 (>= lt!711027 0)))

(declare-fun e!1170457 () Int)

(assert (=> d!559912 (= lt!711027 e!1170457)))

(declare-fun c!298633 () Bool)

(assert (=> d!559912 (= c!298633 ((_ is Nil!20135) rules!4610))))

(assert (=> d!559912 (= (size!15964 rules!4610) lt!711027)))

(declare-fun b!1831130 () Bool)

(assert (=> b!1831130 (= e!1170457 0)))

(declare-fun b!1831131 () Bool)

(assert (=> b!1831131 (= e!1170457 (+ 1 (size!15964 (t!170570 rules!4610))))))

(assert (= (and d!559912 c!298633) b!1831130))

(assert (= (and d!559912 (not c!298633)) b!1831131))

(assert (=> b!1831131 m!2258667))

(assert (=> d!559492 d!559912))

(assert (=> b!1830488 d!559668))

(declare-fun d!559914 () Bool)

(declare-fun lt!711028 () Int)

(assert (=> d!559914 (>= lt!711028 0)))

(declare-fun e!1170458 () Int)

(assert (=> d!559914 (= lt!711028 e!1170458)))

(declare-fun c!298634 () Bool)

(assert (=> d!559914 (= c!298634 ((_ is Nil!20134) (originalCharacters!4447 (_1!11199 (get!6215 lt!710795)))))))

(assert (=> d!559914 (= (size!15960 (originalCharacters!4447 (_1!11199 (get!6215 lt!710795)))) lt!711028)))

(declare-fun b!1831132 () Bool)

(assert (=> b!1831132 (= e!1170458 0)))

(declare-fun b!1831133 () Bool)

(assert (=> b!1831133 (= e!1170458 (+ 1 (size!15960 (t!170569 (originalCharacters!4447 (_1!11199 (get!6215 lt!710795)))))))))

(assert (= (and d!559914 c!298634) b!1831132))

(assert (= (and d!559914 (not c!298634)) b!1831133))

(declare-fun m!2258937 () Bool)

(assert (=> b!1831133 m!2258937))

(assert (=> b!1830488 d!559914))

(declare-fun b!1831134 () Bool)

(declare-fun e!1170461 () Bool)

(declare-fun lt!711029 () Bool)

(declare-fun call!114712 () Bool)

(assert (=> b!1831134 (= e!1170461 (= lt!711029 call!114712))))

(declare-fun b!1831135 () Bool)

(declare-fun res!823507 () Bool)

(declare-fun e!1170460 () Bool)

(assert (=> b!1831135 (=> res!823507 e!1170460)))

(assert (=> b!1831135 (= res!823507 (not ((_ is ElementMatch!4967) (derivativeStep!1306 (regex!3639 rule!580) (head!4273 lt!710679)))))))

(declare-fun e!1170459 () Bool)

(assert (=> b!1831135 (= e!1170459 e!1170460)))

(declare-fun b!1831136 () Bool)

(declare-fun e!1170464 () Bool)

(assert (=> b!1831136 (= e!1170464 (matchR!2430 (derivativeStep!1306 (derivativeStep!1306 (regex!3639 rule!580) (head!4273 lt!710679)) (head!4273 (tail!2732 lt!710679))) (tail!2732 (tail!2732 lt!710679))))))

(declare-fun b!1831137 () Bool)

(declare-fun res!823505 () Bool)

(assert (=> b!1831137 (=> res!823505 e!1170460)))

(declare-fun e!1170463 () Bool)

(assert (=> b!1831137 (= res!823505 e!1170463)))

(declare-fun res!823511 () Bool)

(assert (=> b!1831137 (=> (not res!823511) (not e!1170463))))

(assert (=> b!1831137 (= res!823511 lt!711029)))

(declare-fun b!1831138 () Bool)

(declare-fun e!1170462 () Bool)

(declare-fun e!1170465 () Bool)

(assert (=> b!1831138 (= e!1170462 e!1170465)))

(declare-fun res!823510 () Bool)

(assert (=> b!1831138 (=> res!823510 e!1170465)))

(assert (=> b!1831138 (= res!823510 call!114712)))

(declare-fun b!1831139 () Bool)

(declare-fun res!823508 () Bool)

(assert (=> b!1831139 (=> res!823508 e!1170465)))

(assert (=> b!1831139 (= res!823508 (not (isEmpty!12706 (tail!2732 (tail!2732 lt!710679)))))))

(declare-fun b!1831140 () Bool)

(assert (=> b!1831140 (= e!1170464 (nullable!1542 (derivativeStep!1306 (regex!3639 rule!580) (head!4273 lt!710679))))))

(declare-fun d!559916 () Bool)

(assert (=> d!559916 e!1170461))

(declare-fun c!298635 () Bool)

(assert (=> d!559916 (= c!298635 ((_ is EmptyExpr!4967) (derivativeStep!1306 (regex!3639 rule!580) (head!4273 lt!710679))))))

(assert (=> d!559916 (= lt!711029 e!1170464)))

(declare-fun c!298636 () Bool)

(assert (=> d!559916 (= c!298636 (isEmpty!12706 (tail!2732 lt!710679)))))

(assert (=> d!559916 (validRegex!2024 (derivativeStep!1306 (regex!3639 rule!580) (head!4273 lt!710679)))))

(assert (=> d!559916 (= (matchR!2430 (derivativeStep!1306 (regex!3639 rule!580) (head!4273 lt!710679)) (tail!2732 lt!710679)) lt!711029)))

(declare-fun b!1831141 () Bool)

(assert (=> b!1831141 (= e!1170463 (= (head!4273 (tail!2732 lt!710679)) (c!298402 (derivativeStep!1306 (regex!3639 rule!580) (head!4273 lt!710679)))))))

(declare-fun bm!114707 () Bool)

(assert (=> bm!114707 (= call!114712 (isEmpty!12706 (tail!2732 lt!710679)))))

(declare-fun b!1831142 () Bool)

(assert (=> b!1831142 (= e!1170460 e!1170462)))

(declare-fun res!823509 () Bool)

(assert (=> b!1831142 (=> (not res!823509) (not e!1170462))))

(assert (=> b!1831142 (= res!823509 (not lt!711029))))

(declare-fun b!1831143 () Bool)

(declare-fun res!823512 () Bool)

(assert (=> b!1831143 (=> (not res!823512) (not e!1170463))))

(assert (=> b!1831143 (= res!823512 (isEmpty!12706 (tail!2732 (tail!2732 lt!710679))))))

(declare-fun b!1831144 () Bool)

(assert (=> b!1831144 (= e!1170461 e!1170459)))

(declare-fun c!298637 () Bool)

(assert (=> b!1831144 (= c!298637 ((_ is EmptyLang!4967) (derivativeStep!1306 (regex!3639 rule!580) (head!4273 lt!710679))))))

(declare-fun b!1831145 () Bool)

(assert (=> b!1831145 (= e!1170465 (not (= (head!4273 (tail!2732 lt!710679)) (c!298402 (derivativeStep!1306 (regex!3639 rule!580) (head!4273 lt!710679))))))))

(declare-fun b!1831146 () Bool)

(declare-fun res!823506 () Bool)

(assert (=> b!1831146 (=> (not res!823506) (not e!1170463))))

(assert (=> b!1831146 (= res!823506 (not call!114712))))

(declare-fun b!1831147 () Bool)

(assert (=> b!1831147 (= e!1170459 (not lt!711029))))

(assert (= (and d!559916 c!298636) b!1831140))

(assert (= (and d!559916 (not c!298636)) b!1831136))

(assert (= (and d!559916 c!298635) b!1831134))

(assert (= (and d!559916 (not c!298635)) b!1831144))

(assert (= (and b!1831144 c!298637) b!1831147))

(assert (= (and b!1831144 (not c!298637)) b!1831135))

(assert (= (and b!1831135 (not res!823507)) b!1831137))

(assert (= (and b!1831137 res!823511) b!1831146))

(assert (= (and b!1831146 res!823506) b!1831143))

(assert (= (and b!1831143 res!823512) b!1831141))

(assert (= (and b!1831137 (not res!823505)) b!1831142))

(assert (= (and b!1831142 res!823509) b!1831138))

(assert (= (and b!1831138 (not res!823510)) b!1831139))

(assert (= (and b!1831139 (not res!823508)) b!1831145))

(assert (= (or b!1831134 b!1831138 b!1831146) bm!114707))

(assert (=> bm!114707 m!2257883))

(assert (=> bm!114707 m!2257885))

(assert (=> b!1831141 m!2257883))

(declare-fun m!2258939 () Bool)

(assert (=> b!1831141 m!2258939))

(assert (=> b!1831140 m!2257887))

(declare-fun m!2258941 () Bool)

(assert (=> b!1831140 m!2258941))

(assert (=> b!1831143 m!2257883))

(declare-fun m!2258943 () Bool)

(assert (=> b!1831143 m!2258943))

(assert (=> b!1831143 m!2258943))

(declare-fun m!2258945 () Bool)

(assert (=> b!1831143 m!2258945))

(assert (=> d!559916 m!2257883))

(assert (=> d!559916 m!2257885))

(assert (=> d!559916 m!2257887))

(declare-fun m!2258947 () Bool)

(assert (=> d!559916 m!2258947))

(assert (=> b!1831136 m!2257883))

(assert (=> b!1831136 m!2258939))

(assert (=> b!1831136 m!2257887))

(assert (=> b!1831136 m!2258939))

(declare-fun m!2258949 () Bool)

(assert (=> b!1831136 m!2258949))

(assert (=> b!1831136 m!2257883))

(assert (=> b!1831136 m!2258943))

(assert (=> b!1831136 m!2258949))

(assert (=> b!1831136 m!2258943))

(declare-fun m!2258951 () Bool)

(assert (=> b!1831136 m!2258951))

(assert (=> b!1831139 m!2257883))

(assert (=> b!1831139 m!2258943))

(assert (=> b!1831139 m!2258943))

(assert (=> b!1831139 m!2258945))

(assert (=> b!1831145 m!2257883))

(assert (=> b!1831145 m!2258939))

(assert (=> b!1830176 d!559916))

(declare-fun c!298638 () Bool)

(declare-fun c!298642 () Bool)

(declare-fun call!114714 () Regex!4967)

(declare-fun bm!114708 () Bool)

(assert (=> bm!114708 (= call!114714 (derivativeStep!1306 (ite c!298642 (regOne!10447 (regex!3639 rule!580)) (ite c!298638 (regTwo!10446 (regex!3639 rule!580)) (regOne!10446 (regex!3639 rule!580)))) (head!4273 lt!710679)))))

(declare-fun bm!114709 () Bool)

(declare-fun c!298641 () Bool)

(declare-fun call!114716 () Regex!4967)

(assert (=> bm!114709 (= call!114716 (derivativeStep!1306 (ite c!298642 (regTwo!10447 (regex!3639 rule!580)) (ite c!298641 (reg!5296 (regex!3639 rule!580)) (regOne!10446 (regex!3639 rule!580)))) (head!4273 lt!710679)))))

(declare-fun d!559918 () Bool)

(declare-fun lt!711030 () Regex!4967)

(assert (=> d!559918 (validRegex!2024 lt!711030)))

(declare-fun e!1170469 () Regex!4967)

(assert (=> d!559918 (= lt!711030 e!1170469)))

(declare-fun c!298639 () Bool)

(assert (=> d!559918 (= c!298639 (or ((_ is EmptyExpr!4967) (regex!3639 rule!580)) ((_ is EmptyLang!4967) (regex!3639 rule!580))))))

(assert (=> d!559918 (validRegex!2024 (regex!3639 rule!580))))

(assert (=> d!559918 (= (derivativeStep!1306 (regex!3639 rule!580) (head!4273 lt!710679)) lt!711030)))

(declare-fun bm!114710 () Bool)

(declare-fun call!114715 () Regex!4967)

(assert (=> bm!114710 (= call!114715 call!114716)))

(declare-fun b!1831148 () Bool)

(declare-fun e!1170467 () Regex!4967)

(assert (=> b!1831148 (= e!1170467 (ite (= (head!4273 lt!710679) (c!298402 (regex!3639 rule!580))) EmptyExpr!4967 EmptyLang!4967))))

(declare-fun b!1831149 () Bool)

(assert (=> b!1831149 (= c!298638 (nullable!1542 (regOne!10446 (regex!3639 rule!580))))))

(declare-fun e!1170468 () Regex!4967)

(declare-fun e!1170466 () Regex!4967)

(assert (=> b!1831149 (= e!1170468 e!1170466)))

(declare-fun b!1831150 () Bool)

(assert (=> b!1831150 (= e!1170469 e!1170467)))

(declare-fun c!298640 () Bool)

(assert (=> b!1831150 (= c!298640 ((_ is ElementMatch!4967) (regex!3639 rule!580)))))

(declare-fun b!1831151 () Bool)

(declare-fun call!114713 () Regex!4967)

(assert (=> b!1831151 (= e!1170466 (Union!4967 (Concat!8696 call!114713 (regTwo!10446 (regex!3639 rule!580))) EmptyLang!4967))))

(declare-fun b!1831152 () Bool)

(assert (=> b!1831152 (= c!298642 ((_ is Union!4967) (regex!3639 rule!580)))))

(declare-fun e!1170470 () Regex!4967)

(assert (=> b!1831152 (= e!1170467 e!1170470)))

(declare-fun b!1831153 () Bool)

(assert (=> b!1831153 (= e!1170470 (Union!4967 call!114714 call!114716))))

(declare-fun b!1831154 () Bool)

(assert (=> b!1831154 (= e!1170468 (Concat!8696 call!114715 (regex!3639 rule!580)))))

(declare-fun bm!114711 () Bool)

(assert (=> bm!114711 (= call!114713 call!114714)))

(declare-fun b!1831155 () Bool)

(assert (=> b!1831155 (= e!1170469 EmptyLang!4967)))

(declare-fun b!1831156 () Bool)

(assert (=> b!1831156 (= e!1170466 (Union!4967 (Concat!8696 call!114715 (regTwo!10446 (regex!3639 rule!580))) call!114713))))

(declare-fun b!1831157 () Bool)

(assert (=> b!1831157 (= e!1170470 e!1170468)))

(assert (=> b!1831157 (= c!298641 ((_ is Star!4967) (regex!3639 rule!580)))))

(assert (= (and d!559918 c!298639) b!1831155))

(assert (= (and d!559918 (not c!298639)) b!1831150))

(assert (= (and b!1831150 c!298640) b!1831148))

(assert (= (and b!1831150 (not c!298640)) b!1831152))

(assert (= (and b!1831152 c!298642) b!1831153))

(assert (= (and b!1831152 (not c!298642)) b!1831157))

(assert (= (and b!1831157 c!298641) b!1831154))

(assert (= (and b!1831157 (not c!298641)) b!1831149))

(assert (= (and b!1831149 c!298638) b!1831156))

(assert (= (and b!1831149 (not c!298638)) b!1831151))

(assert (= (or b!1831156 b!1831151) bm!114711))

(assert (= (or b!1831154 b!1831156) bm!114710))

(assert (= (or b!1831153 bm!114710) bm!114709))

(assert (= (or b!1831153 bm!114711) bm!114708))

(assert (=> bm!114708 m!2257881))

(declare-fun m!2258953 () Bool)

(assert (=> bm!114708 m!2258953))

(assert (=> bm!114709 m!2257881))

(declare-fun m!2258955 () Bool)

(assert (=> bm!114709 m!2258955))

(declare-fun m!2258957 () Bool)

(assert (=> d!559918 m!2258957))

(assert (=> d!559918 m!2257867))

(assert (=> b!1831149 m!2258767))

(assert (=> b!1830176 d!559918))

(assert (=> b!1830176 d!559710))

(assert (=> b!1830176 d!559872))

(declare-fun d!559920 () Bool)

(assert (=> d!559920 (= (isEmpty!12709 (t!170571 lt!710678)) ((_ is Nil!20136) (t!170571 lt!710678)))))

(assert (=> b!1830533 d!559920))

(declare-fun d!559922 () Bool)

(assert (=> d!559922 (= (isEmpty!12709 (tail!2735 (map!4177 rules!4610 lambda!71874))) ((_ is Nil!20136) (tail!2735 (map!4177 rules!4610 lambda!71874))))))

(assert (=> b!1830222 d!559922))

(declare-fun d!559924 () Bool)

(assert (=> d!559924 (= (tail!2735 (map!4177 rules!4610 lambda!71874)) (t!170571 (map!4177 rules!4610 lambda!71874)))))

(assert (=> b!1830222 d!559924))

(declare-fun d!559926 () Bool)

(declare-fun res!823517 () Bool)

(declare-fun e!1170475 () Bool)

(assert (=> d!559926 (=> res!823517 e!1170475)))

(assert (=> d!559926 (= res!823517 ((_ is Nil!20135) rules!4610))))

(assert (=> d!559926 (= (noDuplicateTag!1384 thiss!28318 rules!4610 Nil!20138) e!1170475)))

(declare-fun b!1831162 () Bool)

(declare-fun e!1170476 () Bool)

(assert (=> b!1831162 (= e!1170475 e!1170476)))

(declare-fun res!823518 () Bool)

(assert (=> b!1831162 (=> (not res!823518) (not e!1170476))))

(declare-fun contains!3715 (List!20208 String!22977) Bool)

(assert (=> b!1831162 (= res!823518 (not (contains!3715 Nil!20138 (tag!4053 (h!25536 rules!4610)))))))

(declare-fun b!1831163 () Bool)

(assert (=> b!1831163 (= e!1170476 (noDuplicateTag!1384 thiss!28318 (t!170570 rules!4610) (Cons!20138 (tag!4053 (h!25536 rules!4610)) Nil!20138)))))

(assert (= (and d!559926 (not res!823517)) b!1831162))

(assert (= (and b!1831162 res!823518) b!1831163))

(declare-fun m!2258971 () Bool)

(assert (=> b!1831162 m!2258971))

(declare-fun m!2258977 () Bool)

(assert (=> b!1831163 m!2258977))

(assert (=> b!1830587 d!559926))

(declare-fun d!559930 () Bool)

(declare-fun e!1170491 () Bool)

(assert (=> d!559930 e!1170491))

(declare-fun res!823535 () Bool)

(assert (=> d!559930 (=> (not res!823535) (not e!1170491))))

(declare-fun lt!711062 () BalanceConc!13286)

(assert (=> d!559930 (= res!823535 (= (list!8179 lt!711062) lt!710679))))

(declare-fun fromList!453 (List!20204) Conc!6671)

(assert (=> d!559930 (= lt!711062 (BalanceConc!13287 (fromList!453 lt!710679)))))

(assert (=> d!559930 (= (fromListB!1185 lt!710679) lt!711062)))

(declare-fun b!1831186 () Bool)

(declare-fun isBalanced!2068 (Conc!6671) Bool)

(assert (=> b!1831186 (= e!1170491 (isBalanced!2068 (fromList!453 lt!710679)))))

(assert (= (and d!559930 res!823535) b!1831186))

(declare-fun m!2258993 () Bool)

(assert (=> d!559930 m!2258993))

(declare-fun m!2258995 () Bool)

(assert (=> d!559930 m!2258995))

(assert (=> b!1831186 m!2258995))

(assert (=> b!1831186 m!2258995))

(declare-fun m!2258999 () Bool)

(assert (=> b!1831186 m!2258999))

(assert (=> d!559556 d!559930))

(declare-fun d!559936 () Bool)

(declare-fun lt!711063 () Int)

(assert (=> d!559936 (>= lt!711063 0)))

(declare-fun e!1170492 () Int)

(assert (=> d!559936 (= lt!711063 e!1170492)))

(declare-fun c!298647 () Bool)

(assert (=> d!559936 (= c!298647 ((_ is Nil!20134) (originalCharacters!4447 token!567)))))

(assert (=> d!559936 (= (size!15960 (originalCharacters!4447 token!567)) lt!711063)))

(declare-fun b!1831187 () Bool)

(assert (=> b!1831187 (= e!1170492 0)))

(declare-fun b!1831188 () Bool)

(assert (=> b!1831188 (= e!1170492 (+ 1 (size!15960 (t!170569 (originalCharacters!4447 token!567)))))))

(assert (= (and d!559936 c!298647) b!1831187))

(assert (= (and d!559936 (not c!298647)) b!1831188))

(declare-fun m!2259009 () Bool)

(assert (=> b!1831188 m!2259009))

(assert (=> b!1830575 d!559936))

(declare-fun d!559938 () Bool)

(assert (=> d!559938 (= (inv!26189 (tag!4053 (h!25536 (t!170570 rs!808)))) (= (mod (str.len (value!113377 (tag!4053 (h!25536 (t!170570 rs!808))))) 2) 0))))

(assert (=> b!1830639 d!559938))

(declare-fun d!559940 () Bool)

(declare-fun res!823536 () Bool)

(declare-fun e!1170493 () Bool)

(assert (=> d!559940 (=> (not res!823536) (not e!1170493))))

(assert (=> d!559940 (= res!823536 (semiInverseModEq!1460 (toChars!5041 (transformation!3639 (h!25536 (t!170570 rs!808)))) (toValue!5182 (transformation!3639 (h!25536 (t!170570 rs!808))))))))

(assert (=> d!559940 (= (inv!26192 (transformation!3639 (h!25536 (t!170570 rs!808)))) e!1170493)))

(declare-fun b!1831189 () Bool)

(assert (=> b!1831189 (= e!1170493 (equivClasses!1401 (toChars!5041 (transformation!3639 (h!25536 (t!170570 rs!808)))) (toValue!5182 (transformation!3639 (h!25536 (t!170570 rs!808))))))))

(assert (= (and d!559940 res!823536) b!1831189))

(declare-fun m!2259021 () Bool)

(assert (=> d!559940 m!2259021))

(declare-fun m!2259023 () Bool)

(assert (=> b!1831189 m!2259023))

(assert (=> b!1830639 d!559940))

(assert (=> b!1830355 d!559650))

(assert (=> b!1830355 d!559652))

(assert (=> b!1830355 d!559648))

(declare-fun d!559942 () Bool)

(assert (=> d!559942 (= (isUnion!125 lt!710701) ((_ is Union!4967) lt!710701))))

(assert (=> b!1830218 d!559942))

(declare-fun d!559944 () Bool)

(assert (=> d!559944 (= (inv!26197 (dynLambda!10003 (toChars!5041 (transformation!3639 (rule!5807 token!567))) (value!113378 token!567))) (isBalanced!2068 (c!298403 (dynLambda!10003 (toChars!5041 (transformation!3639 (rule!5807 token!567))) (value!113378 token!567)))))))

(declare-fun bs!407874 () Bool)

(assert (= bs!407874 d!559944))

(declare-fun m!2259031 () Bool)

(assert (=> bs!407874 m!2259031))

(assert (=> tb!111753 d!559944))

(declare-fun d!559948 () Bool)

(assert (=> d!559948 (= (isEmpty!12709 (t!170571 (map!4177 rules!4610 lambda!71874))) ((_ is Nil!20136) (t!170571 (map!4177 rules!4610 lambda!71874))))))

(assert (=> b!1830214 d!559948))

(declare-fun bs!407876 () Bool)

(declare-fun d!559950 () Bool)

(assert (= bs!407876 (and d!559950 b!1830114)))

(declare-fun lambda!71948 () Int)

(assert (=> bs!407876 (= lambda!71948 lambda!71874)))

(declare-fun bs!407877 () Bool)

(assert (= bs!407877 (and d!559950 d!559582)))

(assert (=> bs!407877 (= lambda!71948 lambda!71902)))

(declare-fun bs!407878 () Bool)

(assert (= bs!407878 (and d!559950 d!559584)))

(assert (=> bs!407878 (= lambda!71948 lambda!71907)))

(declare-fun bs!407879 () Bool)

(assert (= bs!407879 (and d!559950 d!559864)))

(assert (=> bs!407879 (= lambda!71948 lambda!71939)))

(declare-fun bs!407880 () Bool)

(assert (= bs!407880 (and d!559950 d!559484)))

(declare-fun lambda!71949 () Int)

(assert (=> bs!407880 (= lambda!71949 lambda!71882)))

(declare-fun bs!407881 () Bool)

(assert (= bs!407881 (and d!559950 d!559580)))

(assert (=> bs!407881 (= lambda!71949 lambda!71899)))

(assert (=> bs!407878 (= lambda!71949 lambda!71908)))

(assert (=> bs!407879 (= lambda!71949 lambda!71940)))

(assert (=> d!559950 (forall!4332 (map!4177 rules!4610 lambda!71948) lambda!71949)))

(declare-fun lt!711074 () Unit!34797)

(declare-fun e!1170507 () Unit!34797)

(assert (=> d!559950 (= lt!711074 e!1170507)))

(declare-fun c!298654 () Bool)

(assert (=> d!559950 (= c!298654 ((_ is Nil!20135) rules!4610))))

(assert (=> d!559950 (rulesValidInductive!1254 thiss!28318 rules!4610)))

(assert (=> d!559950 (= (lemma!532 rules!4610 thiss!28318 rules!4610) lt!711074)))

(declare-fun b!1831217 () Bool)

(declare-fun Unit!34810 () Unit!34797)

(assert (=> b!1831217 (= e!1170507 Unit!34810)))

(declare-fun b!1831218 () Bool)

(declare-fun Unit!34811 () Unit!34797)

(assert (=> b!1831218 (= e!1170507 Unit!34811)))

(declare-fun lt!711075 () Unit!34797)

(assert (=> b!1831218 (= lt!711075 (lemma!532 rules!4610 thiss!28318 (t!170570 rules!4610)))))

(assert (= (and d!559950 c!298654) b!1831217))

(assert (= (and d!559950 (not c!298654)) b!1831218))

(declare-fun m!2259077 () Bool)

(assert (=> d!559950 m!2259077))

(assert (=> d!559950 m!2259077))

(declare-fun m!2259083 () Bool)

(assert (=> d!559950 m!2259083))

(assert (=> d!559950 m!2258027))

(declare-fun m!2259087 () Bool)

(assert (=> b!1831218 m!2259087))

(assert (=> d!559582 d!559950))

(declare-fun bs!407882 () Bool)

(declare-fun d!559958 () Bool)

(assert (= bs!407882 (and d!559958 d!559864)))

(declare-fun lambda!71950 () Int)

(assert (=> bs!407882 (= lambda!71950 lambda!71940)))

(declare-fun bs!407883 () Bool)

(assert (= bs!407883 (and d!559958 d!559484)))

(assert (=> bs!407883 (= lambda!71950 lambda!71882)))

(declare-fun bs!407884 () Bool)

(assert (= bs!407884 (and d!559958 d!559580)))

(assert (=> bs!407884 (= lambda!71950 lambda!71899)))

(declare-fun bs!407885 () Bool)

(assert (= bs!407885 (and d!559958 d!559950)))

(assert (=> bs!407885 (= lambda!71950 lambda!71949)))

(declare-fun bs!407886 () Bool)

(assert (= bs!407886 (and d!559958 d!559584)))

(assert (=> bs!407886 (= lambda!71950 lambda!71908)))

(declare-fun e!1170509 () Bool)

(assert (=> d!559958 e!1170509))

(declare-fun res!823553 () Bool)

(assert (=> d!559958 (=> (not res!823553) (not e!1170509))))

(declare-fun lt!711076 () Regex!4967)

(assert (=> d!559958 (= res!823553 (validRegex!2024 lt!711076))))

(declare-fun e!1170511 () Regex!4967)

(assert (=> d!559958 (= lt!711076 e!1170511)))

(declare-fun c!298655 () Bool)

(declare-fun e!1170508 () Bool)

(assert (=> d!559958 (= c!298655 e!1170508)))

(declare-fun res!823552 () Bool)

(assert (=> d!559958 (=> (not res!823552) (not e!1170508))))

(assert (=> d!559958 (= res!823552 ((_ is Cons!20136) (map!4177 rules!4610 lambda!71902)))))

(assert (=> d!559958 (forall!4332 (map!4177 rules!4610 lambda!71902) lambda!71950)))

(assert (=> d!559958 (= (generalisedUnion!482 (map!4177 rules!4610 lambda!71902)) lt!711076)))

(declare-fun b!1831219 () Bool)

(declare-fun e!1170513 () Regex!4967)

(assert (=> b!1831219 (= e!1170511 e!1170513)))

(declare-fun c!298658 () Bool)

(assert (=> b!1831219 (= c!298658 ((_ is Cons!20136) (map!4177 rules!4610 lambda!71902)))))

(declare-fun b!1831220 () Bool)

(assert (=> b!1831220 (= e!1170508 (isEmpty!12709 (t!170571 (map!4177 rules!4610 lambda!71902))))))

(declare-fun b!1831221 () Bool)

(assert (=> b!1831221 (= e!1170511 (h!25537 (map!4177 rules!4610 lambda!71902)))))

(declare-fun b!1831222 () Bool)

(declare-fun e!1170512 () Bool)

(assert (=> b!1831222 (= e!1170512 (= lt!711076 (head!4276 (map!4177 rules!4610 lambda!71902))))))

(declare-fun b!1831223 () Bool)

(assert (=> b!1831223 (= e!1170513 (Union!4967 (h!25537 (map!4177 rules!4610 lambda!71902)) (generalisedUnion!482 (t!170571 (map!4177 rules!4610 lambda!71902)))))))

(declare-fun b!1831224 () Bool)

(assert (=> b!1831224 (= e!1170512 (isUnion!125 lt!711076))))

(declare-fun b!1831225 () Bool)

(assert (=> b!1831225 (= e!1170513 EmptyLang!4967)))

(declare-fun b!1831226 () Bool)

(declare-fun e!1170510 () Bool)

(assert (=> b!1831226 (= e!1170509 e!1170510)))

(declare-fun c!298657 () Bool)

(assert (=> b!1831226 (= c!298657 (isEmpty!12709 (map!4177 rules!4610 lambda!71902)))))

(declare-fun b!1831227 () Bool)

(assert (=> b!1831227 (= e!1170510 (isEmptyLang!125 lt!711076))))

(declare-fun b!1831228 () Bool)

(assert (=> b!1831228 (= e!1170510 e!1170512)))

(declare-fun c!298656 () Bool)

(assert (=> b!1831228 (= c!298656 (isEmpty!12709 (tail!2735 (map!4177 rules!4610 lambda!71902))))))

(assert (= (and d!559958 res!823552) b!1831220))

(assert (= (and d!559958 c!298655) b!1831221))

(assert (= (and d!559958 (not c!298655)) b!1831219))

(assert (= (and b!1831219 c!298658) b!1831223))

(assert (= (and b!1831219 (not c!298658)) b!1831225))

(assert (= (and d!559958 res!823553) b!1831226))

(assert (= (and b!1831226 c!298657) b!1831227))

(assert (= (and b!1831226 (not c!298657)) b!1831228))

(assert (= (and b!1831228 c!298656) b!1831222))

(assert (= (and b!1831228 (not c!298656)) b!1831224))

(declare-fun m!2259095 () Bool)

(assert (=> b!1831224 m!2259095))

(declare-fun m!2259097 () Bool)

(assert (=> b!1831220 m!2259097))

(assert (=> b!1831222 m!2258301))

(declare-fun m!2259099 () Bool)

(assert (=> b!1831222 m!2259099))

(declare-fun m!2259101 () Bool)

(assert (=> d!559958 m!2259101))

(assert (=> d!559958 m!2258301))

(declare-fun m!2259103 () Bool)

(assert (=> d!559958 m!2259103))

(declare-fun m!2259105 () Bool)

(assert (=> b!1831223 m!2259105))

(assert (=> b!1831228 m!2258301))

(declare-fun m!2259107 () Bool)

(assert (=> b!1831228 m!2259107))

(assert (=> b!1831228 m!2259107))

(declare-fun m!2259109 () Bool)

(assert (=> b!1831228 m!2259109))

(declare-fun m!2259111 () Bool)

(assert (=> b!1831227 m!2259111))

(assert (=> b!1831226 m!2258301))

(declare-fun m!2259113 () Bool)

(assert (=> b!1831226 m!2259113))

(assert (=> d!559582 d!559958))

(declare-fun d!559972 () Bool)

(declare-fun lt!711077 () List!20206)

(assert (=> d!559972 (= (size!15963 lt!711077) (size!15964 rules!4610))))

(declare-fun e!1170515 () List!20206)

(assert (=> d!559972 (= lt!711077 e!1170515)))

(declare-fun c!298659 () Bool)

(assert (=> d!559972 (= c!298659 ((_ is Nil!20135) rules!4610))))

(assert (=> d!559972 (= (map!4177 rules!4610 lambda!71902) lt!711077)))

(declare-fun b!1831230 () Bool)

(assert (=> b!1831230 (= e!1170515 Nil!20136)))

(declare-fun b!1831231 () Bool)

(assert (=> b!1831231 (= e!1170515 ($colon$colon!458 (map!4177 (t!170570 rules!4610) lambda!71902) (dynLambda!10001 lambda!71902 (h!25536 rules!4610))))))

(assert (= (and d!559972 c!298659) b!1831230))

(assert (= (and d!559972 (not c!298659)) b!1831231))

(declare-fun b_lambda!60557 () Bool)

(assert (=> (not b_lambda!60557) (not b!1831231)))

(declare-fun m!2259115 () Bool)

(assert (=> d!559972 m!2259115))

(assert (=> d!559972 m!2257941))

(declare-fun m!2259117 () Bool)

(assert (=> b!1831231 m!2259117))

(declare-fun m!2259119 () Bool)

(assert (=> b!1831231 m!2259119))

(assert (=> b!1831231 m!2259117))

(assert (=> b!1831231 m!2259119))

(declare-fun m!2259121 () Bool)

(assert (=> b!1831231 m!2259121))

(assert (=> d!559582 d!559972))

(declare-fun d!559974 () Bool)

(declare-fun c!298662 () Bool)

(assert (=> d!559974 (= c!298662 ((_ is Node!6671) (c!298403 (dynLambda!10003 (toChars!5041 (transformation!3639 (rule!5807 token!567))) (value!113378 token!567)))))))

(declare-fun e!1170520 () Bool)

(assert (=> d!559974 (= (inv!26196 (c!298403 (dynLambda!10003 (toChars!5041 (transformation!3639 (rule!5807 token!567))) (value!113378 token!567)))) e!1170520)))

(declare-fun b!1831238 () Bool)

(declare-fun inv!26198 (Conc!6671) Bool)

(assert (=> b!1831238 (= e!1170520 (inv!26198 (c!298403 (dynLambda!10003 (toChars!5041 (transformation!3639 (rule!5807 token!567))) (value!113378 token!567)))))))

(declare-fun b!1831239 () Bool)

(declare-fun e!1170521 () Bool)

(assert (=> b!1831239 (= e!1170520 e!1170521)))

(declare-fun res!823557 () Bool)

(assert (=> b!1831239 (= res!823557 (not ((_ is Leaf!9711) (c!298403 (dynLambda!10003 (toChars!5041 (transformation!3639 (rule!5807 token!567))) (value!113378 token!567))))))))

(assert (=> b!1831239 (=> res!823557 e!1170521)))

(declare-fun b!1831240 () Bool)

(declare-fun inv!26199 (Conc!6671) Bool)

(assert (=> b!1831240 (= e!1170521 (inv!26199 (c!298403 (dynLambda!10003 (toChars!5041 (transformation!3639 (rule!5807 token!567))) (value!113378 token!567)))))))

(assert (= (and d!559974 c!298662) b!1831238))

(assert (= (and d!559974 (not c!298662)) b!1831239))

(assert (= (and b!1831239 (not res!823557)) b!1831240))

(declare-fun m!2259123 () Bool)

(assert (=> b!1831238 m!2259123))

(declare-fun m!2259125 () Bool)

(assert (=> b!1831240 m!2259125))

(assert (=> b!1830281 d!559974))

(assert (=> d!559472 d!559746))

(assert (=> d!559472 d!559896))

(declare-fun d!559976 () Bool)

(declare-fun lt!711078 () Bool)

(assert (=> d!559976 (= lt!711078 (select (content!2981 rules!4610) (rule!5807 (_1!11199 (get!6215 lt!710749)))))))

(declare-fun e!1170522 () Bool)

(assert (=> d!559976 (= lt!711078 e!1170522)))

(declare-fun res!823558 () Bool)

(assert (=> d!559976 (=> (not res!823558) (not e!1170522))))

(assert (=> d!559976 (= res!823558 ((_ is Cons!20135) rules!4610))))

(assert (=> d!559976 (= (contains!3713 rules!4610 (rule!5807 (_1!11199 (get!6215 lt!710749)))) lt!711078)))

(declare-fun b!1831241 () Bool)

(declare-fun e!1170523 () Bool)

(assert (=> b!1831241 (= e!1170522 e!1170523)))

(declare-fun res!823559 () Bool)

(assert (=> b!1831241 (=> res!823559 e!1170523)))

(assert (=> b!1831241 (= res!823559 (= (h!25536 rules!4610) (rule!5807 (_1!11199 (get!6215 lt!710749)))))))

(declare-fun b!1831242 () Bool)

(assert (=> b!1831242 (= e!1170523 (contains!3713 (t!170570 rules!4610) (rule!5807 (_1!11199 (get!6215 lt!710749)))))))

(assert (= (and d!559976 res!823558) b!1831241))

(assert (= (and b!1831241 (not res!823559)) b!1831242))

(assert (=> d!559976 m!2258261))

(declare-fun m!2259127 () Bool)

(assert (=> d!559976 m!2259127))

(declare-fun m!2259129 () Bool)

(assert (=> b!1831242 m!2259129))

(assert (=> b!1830352 d!559976))

(assert (=> b!1830352 d!559648))

(declare-fun d!559978 () Bool)

(assert (=> d!559978 (= (isEmptyLang!125 lt!710814) ((_ is EmptyLang!4967) lt!710814))))

(assert (=> b!1830540 d!559978))

(declare-fun d!559980 () Bool)

(assert (=> d!559980 (= (isEmpty!12706 (tail!2732 lt!710680)) ((_ is Nil!20134) (tail!2732 lt!710680)))))

(assert (=> b!1830160 d!559980))

(assert (=> b!1830160 d!559794))

(assert (=> b!1830348 d!559648))

(declare-fun d!559982 () Bool)

(assert (=> d!559982 (= (apply!5427 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710749)))) (seqFromList!2596 (originalCharacters!4447 (_1!11199 (get!6215 lt!710749))))) (dynLambda!10004 (toValue!5182 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710749))))) (seqFromList!2596 (originalCharacters!4447 (_1!11199 (get!6215 lt!710749))))))))

(declare-fun b_lambda!60559 () Bool)

(assert (=> (not b_lambda!60559) (not d!559982)))

(declare-fun tb!111885 () Bool)

(declare-fun t!170710 () Bool)

(assert (=> (and b!1830109 (= (toValue!5182 (transformation!3639 (h!25536 rules!4610))) (toValue!5182 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710749)))))) t!170710) tb!111885))

(declare-fun result!134560 () Bool)

(assert (=> tb!111885 (= result!134560 (inv!21 (dynLambda!10004 (toValue!5182 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710749))))) (seqFromList!2596 (originalCharacters!4447 (_1!11199 (get!6215 lt!710749)))))))))

(declare-fun m!2259131 () Bool)

(assert (=> tb!111885 m!2259131))

(assert (=> d!559982 t!170710))

(declare-fun b_and!142569 () Bool)

(assert (= b_and!142567 (and (=> t!170710 result!134560) b_and!142569)))

(declare-fun tb!111887 () Bool)

(declare-fun t!170712 () Bool)

(assert (=> (and b!1830100 (= (toValue!5182 (transformation!3639 rule!580)) (toValue!5182 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710749)))))) t!170712) tb!111887))

(declare-fun result!134562 () Bool)

(assert (= result!134562 result!134560))

(assert (=> d!559982 t!170712))

(declare-fun b_and!142571 () Bool)

(assert (= b_and!142563 (and (=> t!170712 result!134562) b_and!142571)))

(declare-fun tb!111889 () Bool)

(declare-fun t!170714 () Bool)

(assert (=> (and b!1830640 (= (toValue!5182 (transformation!3639 (h!25536 (t!170570 rs!808)))) (toValue!5182 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710749)))))) t!170714) tb!111889))

(declare-fun result!134564 () Bool)

(assert (= result!134564 result!134560))

(assert (=> d!559982 t!170714))

(declare-fun b_and!142573 () Bool)

(assert (= b_and!142561 (and (=> t!170714 result!134564) b_and!142573)))

(declare-fun tb!111891 () Bool)

(declare-fun t!170716 () Bool)

(assert (=> (and b!1830099 (= (toValue!5182 (transformation!3639 (h!25536 rs!808))) (toValue!5182 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710749)))))) t!170716) tb!111891))

(declare-fun result!134566 () Bool)

(assert (= result!134566 result!134560))

(assert (=> d!559982 t!170716))

(declare-fun b_and!142575 () Bool)

(assert (= b_and!142557 (and (=> t!170716 result!134566) b_and!142575)))

(declare-fun t!170718 () Bool)

(declare-fun tb!111893 () Bool)

(assert (=> (and b!1830095 (= (toValue!5182 (transformation!3639 (rule!5807 token!567))) (toValue!5182 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710749)))))) t!170718) tb!111893))

(declare-fun result!134568 () Bool)

(assert (= result!134568 result!134560))

(assert (=> d!559982 t!170718))

(declare-fun b_and!142577 () Bool)

(assert (= b_and!142565 (and (=> t!170718 result!134568) b_and!142577)))

(declare-fun t!170720 () Bool)

(declare-fun tb!111895 () Bool)

(assert (=> (and b!1830628 (= (toValue!5182 (transformation!3639 (h!25536 (t!170570 rules!4610)))) (toValue!5182 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710749)))))) t!170720) tb!111895))

(declare-fun result!134570 () Bool)

(assert (= result!134570 result!134560))

(assert (=> d!559982 t!170720))

(declare-fun b_and!142579 () Bool)

(assert (= b_and!142559 (and (=> t!170720 result!134570) b_and!142579)))

(assert (=> d!559982 m!2258049))

(declare-fun m!2259133 () Bool)

(assert (=> d!559982 m!2259133))

(assert (=> b!1830348 d!559982))

(declare-fun d!559984 () Bool)

(assert (=> d!559984 (= (seqFromList!2596 (originalCharacters!4447 (_1!11199 (get!6215 lt!710749)))) (fromListB!1185 (originalCharacters!4447 (_1!11199 (get!6215 lt!710749)))))))

(declare-fun bs!407888 () Bool)

(assert (= bs!407888 d!559984))

(declare-fun m!2259135 () Bool)

(assert (=> bs!407888 m!2259135))

(assert (=> b!1830348 d!559984))

(declare-fun bs!407889 () Bool)

(declare-fun d!559986 () Bool)

(assert (= bs!407889 (and d!559986 d!559864)))

(declare-fun lambda!71951 () Int)

(assert (=> bs!407889 (= lambda!71951 lambda!71940)))

(declare-fun bs!407890 () Bool)

(assert (= bs!407890 (and d!559986 d!559484)))

(assert (=> bs!407890 (= lambda!71951 lambda!71882)))

(declare-fun bs!407891 () Bool)

(assert (= bs!407891 (and d!559986 d!559580)))

(assert (=> bs!407891 (= lambda!71951 lambda!71899)))

(declare-fun bs!407892 () Bool)

(assert (= bs!407892 (and d!559986 d!559958)))

(assert (=> bs!407892 (= lambda!71951 lambda!71950)))

(declare-fun bs!407893 () Bool)

(assert (= bs!407893 (and d!559986 d!559950)))

(assert (=> bs!407893 (= lambda!71951 lambda!71949)))

(declare-fun bs!407894 () Bool)

(assert (= bs!407894 (and d!559986 d!559584)))

(assert (=> bs!407894 (= lambda!71951 lambda!71908)))

(declare-fun e!1170526 () Bool)

(assert (=> d!559986 e!1170526))

(declare-fun res!823561 () Bool)

(assert (=> d!559986 (=> (not res!823561) (not e!1170526))))

(declare-fun lt!711079 () Regex!4967)

(assert (=> d!559986 (= res!823561 (validRegex!2024 lt!711079))))

(declare-fun e!1170528 () Regex!4967)

(assert (=> d!559986 (= lt!711079 e!1170528)))

(declare-fun c!298663 () Bool)

(declare-fun e!1170525 () Bool)

(assert (=> d!559986 (= c!298663 e!1170525)))

(declare-fun res!823560 () Bool)

(assert (=> d!559986 (=> (not res!823560) (not e!1170525))))

(assert (=> d!559986 (= res!823560 ((_ is Cons!20136) (t!170571 lt!710678)))))

(assert (=> d!559986 (forall!4332 (t!170571 lt!710678) lambda!71951)))

(assert (=> d!559986 (= (generalisedUnion!482 (t!170571 lt!710678)) lt!711079)))

(declare-fun b!1831243 () Bool)

(declare-fun e!1170530 () Regex!4967)

(assert (=> b!1831243 (= e!1170528 e!1170530)))

(declare-fun c!298666 () Bool)

(assert (=> b!1831243 (= c!298666 ((_ is Cons!20136) (t!170571 lt!710678)))))

(declare-fun b!1831244 () Bool)

(assert (=> b!1831244 (= e!1170525 (isEmpty!12709 (t!170571 (t!170571 lt!710678))))))

(declare-fun b!1831245 () Bool)

(assert (=> b!1831245 (= e!1170528 (h!25537 (t!170571 lt!710678)))))

(declare-fun b!1831246 () Bool)

(declare-fun e!1170529 () Bool)

(assert (=> b!1831246 (= e!1170529 (= lt!711079 (head!4276 (t!170571 lt!710678))))))

(declare-fun b!1831247 () Bool)

(assert (=> b!1831247 (= e!1170530 (Union!4967 (h!25537 (t!170571 lt!710678)) (generalisedUnion!482 (t!170571 (t!170571 lt!710678)))))))

(declare-fun b!1831248 () Bool)

(assert (=> b!1831248 (= e!1170529 (isUnion!125 lt!711079))))

(declare-fun b!1831249 () Bool)

(assert (=> b!1831249 (= e!1170530 EmptyLang!4967)))

(declare-fun b!1831250 () Bool)

(declare-fun e!1170527 () Bool)

(assert (=> b!1831250 (= e!1170526 e!1170527)))

(declare-fun c!298665 () Bool)

(assert (=> b!1831250 (= c!298665 (isEmpty!12709 (t!170571 lt!710678)))))

(declare-fun b!1831251 () Bool)

(assert (=> b!1831251 (= e!1170527 (isEmptyLang!125 lt!711079))))

(declare-fun b!1831252 () Bool)

(assert (=> b!1831252 (= e!1170527 e!1170529)))

(declare-fun c!298664 () Bool)

(assert (=> b!1831252 (= c!298664 (isEmpty!12709 (tail!2735 (t!170571 lt!710678))))))

(assert (= (and d!559986 res!823560) b!1831244))

(assert (= (and d!559986 c!298663) b!1831245))

(assert (= (and d!559986 (not c!298663)) b!1831243))

(assert (= (and b!1831243 c!298666) b!1831247))

(assert (= (and b!1831243 (not c!298666)) b!1831249))

(assert (= (and d!559986 res!823561) b!1831250))

(assert (= (and b!1831250 c!298665) b!1831251))

(assert (= (and b!1831250 (not c!298665)) b!1831252))

(assert (= (and b!1831252 c!298664) b!1831246))

(assert (= (and b!1831252 (not c!298664)) b!1831248))

(declare-fun m!2259137 () Bool)

(assert (=> b!1831248 m!2259137))

(declare-fun m!2259139 () Bool)

(assert (=> b!1831244 m!2259139))

(declare-fun m!2259141 () Bool)

(assert (=> b!1831246 m!2259141))

(declare-fun m!2259143 () Bool)

(assert (=> d!559986 m!2259143))

(declare-fun m!2259145 () Bool)

(assert (=> d!559986 m!2259145))

(declare-fun m!2259147 () Bool)

(assert (=> b!1831247 m!2259147))

(declare-fun m!2259149 () Bool)

(assert (=> b!1831252 m!2259149))

(assert (=> b!1831252 m!2259149))

(declare-fun m!2259151 () Bool)

(assert (=> b!1831252 m!2259151))

(declare-fun m!2259153 () Bool)

(assert (=> b!1831251 m!2259153))

(assert (=> b!1831250 m!2258281))

(assert (=> b!1830536 d!559986))

(assert (=> b!1830179 d!559870))

(assert (=> b!1830179 d!559872))

(declare-fun b!1831254 () Bool)

(declare-fun e!1170531 () List!20204)

(assert (=> b!1831254 (= e!1170531 (Cons!20134 (h!25535 (t!170569 lt!710680)) (++!5463 (t!170569 (t!170569 lt!710680)) suffix!1698)))))

(declare-fun d!559988 () Bool)

(declare-fun e!1170532 () Bool)

(assert (=> d!559988 e!1170532))

(declare-fun res!823563 () Bool)

(assert (=> d!559988 (=> (not res!823563) (not e!1170532))))

(declare-fun lt!711080 () List!20204)

(assert (=> d!559988 (= res!823563 (= (content!2978 lt!711080) ((_ map or) (content!2978 (t!170569 lt!710680)) (content!2978 suffix!1698))))))

(assert (=> d!559988 (= lt!711080 e!1170531)))

(declare-fun c!298667 () Bool)

(assert (=> d!559988 (= c!298667 ((_ is Nil!20134) (t!170569 lt!710680)))))

(assert (=> d!559988 (= (++!5463 (t!170569 lt!710680) suffix!1698) lt!711080)))

(declare-fun b!1831255 () Bool)

(declare-fun res!823562 () Bool)

(assert (=> b!1831255 (=> (not res!823562) (not e!1170532))))

(assert (=> b!1831255 (= res!823562 (= (size!15960 lt!711080) (+ (size!15960 (t!170569 lt!710680)) (size!15960 suffix!1698))))))

(declare-fun b!1831253 () Bool)

(assert (=> b!1831253 (= e!1170531 suffix!1698)))

(declare-fun b!1831256 () Bool)

(assert (=> b!1831256 (= e!1170532 (or (not (= suffix!1698 Nil!20134)) (= lt!711080 (t!170569 lt!710680))))))

(assert (= (and d!559988 c!298667) b!1831253))

(assert (= (and d!559988 (not c!298667)) b!1831254))

(assert (= (and d!559988 res!823563) b!1831255))

(assert (= (and b!1831255 res!823562) b!1831256))

(declare-fun m!2259155 () Bool)

(assert (=> b!1831254 m!2259155))

(declare-fun m!2259157 () Bool)

(assert (=> d!559988 m!2259157))

(assert (=> d!559988 m!2258821))

(assert (=> d!559988 m!2257961))

(declare-fun m!2259159 () Bool)

(assert (=> b!1831255 m!2259159))

(assert (=> b!1831255 m!2258875))

(assert (=> b!1831255 m!2257967))

(assert (=> b!1830268 d!559988))

(declare-fun d!559990 () Bool)

(declare-fun lt!711081 () Int)

(assert (=> d!559990 (>= lt!711081 0)))

(declare-fun e!1170533 () Int)

(assert (=> d!559990 (= lt!711081 e!1170533)))

(declare-fun c!298668 () Bool)

(assert (=> d!559990 (= c!298668 ((_ is Nil!20134) (_2!11199 (get!6215 lt!710795))))))

(assert (=> d!559990 (= (size!15960 (_2!11199 (get!6215 lt!710795))) lt!711081)))

(declare-fun b!1831257 () Bool)

(assert (=> b!1831257 (= e!1170533 0)))

(declare-fun b!1831258 () Bool)

(assert (=> b!1831258 (= e!1170533 (+ 1 (size!15960 (t!170569 (_2!11199 (get!6215 lt!710795))))))))

(assert (= (and d!559990 c!298668) b!1831257))

(assert (= (and d!559990 (not c!298668)) b!1831258))

(declare-fun m!2259161 () Bool)

(assert (=> b!1831258 m!2259161))

(assert (=> b!1830491 d!559990))

(assert (=> b!1830491 d!559668))

(assert (=> b!1830491 d!559850))

(assert (=> d!559566 d!559528))

(declare-fun d!559994 () Bool)

(assert (=> d!559994 (= (maxPrefixOneRule!1177 thiss!28318 rule!580 input!3681) (Some!4218 (tuple2!19595 (Token!6833 (apply!5427 (transformation!3639 rule!580) (seqFromList!2596 lt!710679)) rule!580 (size!15960 lt!710679) lt!710679) suffix!1698)))))

(assert (=> d!559994 true))

(declare-fun _$59!311 () Unit!34797)

(assert (=> d!559994 (= (choose!11527 thiss!28318 rules!4610 lt!710679 input!3681 suffix!1698 rule!580) _$59!311)))

(declare-fun bs!407912 () Bool)

(assert (= bs!407912 d!559994))

(assert (=> bs!407912 m!2257847))

(assert (=> bs!407912 m!2257839))

(assert (=> bs!407912 m!2257839))

(assert (=> bs!407912 m!2257841))

(assert (=> bs!407912 m!2257849))

(assert (=> d!559566 d!559994))

(assert (=> d!559566 d!559556))

(assert (=> d!559566 d!559568))

(assert (=> d!559566 d!559516))

(assert (=> d!559566 d!559562))

(declare-fun b!1831276 () Bool)

(declare-fun e!1170546 () List!20204)

(assert (=> b!1831276 (= e!1170546 (Cons!20134 (h!25535 (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!710795))))) (++!5463 (t!170569 (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!710795))))) (_2!11199 (get!6215 lt!710795)))))))

(declare-fun d!560030 () Bool)

(declare-fun e!1170547 () Bool)

(assert (=> d!560030 e!1170547))

(declare-fun res!823569 () Bool)

(assert (=> d!560030 (=> (not res!823569) (not e!1170547))))

(declare-fun lt!711091 () List!20204)

(assert (=> d!560030 (= res!823569 (= (content!2978 lt!711091) ((_ map or) (content!2978 (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!710795))))) (content!2978 (_2!11199 (get!6215 lt!710795))))))))

(assert (=> d!560030 (= lt!711091 e!1170546)))

(declare-fun c!298675 () Bool)

(assert (=> d!560030 (= c!298675 ((_ is Nil!20134) (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!710795))))))))

(assert (=> d!560030 (= (++!5463 (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!710795)))) (_2!11199 (get!6215 lt!710795))) lt!711091)))

(declare-fun b!1831277 () Bool)

(declare-fun res!823568 () Bool)

(assert (=> b!1831277 (=> (not res!823568) (not e!1170547))))

(assert (=> b!1831277 (= res!823568 (= (size!15960 lt!711091) (+ (size!15960 (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!710795))))) (size!15960 (_2!11199 (get!6215 lt!710795))))))))

(declare-fun b!1831275 () Bool)

(assert (=> b!1831275 (= e!1170546 (_2!11199 (get!6215 lt!710795)))))

(declare-fun b!1831278 () Bool)

(assert (=> b!1831278 (= e!1170547 (or (not (= (_2!11199 (get!6215 lt!710795)) Nil!20134)) (= lt!711091 (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!710795)))))))))

(assert (= (and d!560030 c!298675) b!1831275))

(assert (= (and d!560030 (not c!298675)) b!1831276))

(assert (= (and d!560030 res!823569) b!1831277))

(assert (= (and b!1831277 res!823568) b!1831278))

(declare-fun m!2259225 () Bool)

(assert (=> b!1831276 m!2259225))

(declare-fun m!2259227 () Bool)

(assert (=> d!560030 m!2259227))

(assert (=> d!560030 m!2258185))

(declare-fun m!2259229 () Bool)

(assert (=> d!560030 m!2259229))

(declare-fun m!2259231 () Bool)

(assert (=> d!560030 m!2259231))

(declare-fun m!2259233 () Bool)

(assert (=> b!1831277 m!2259233))

(assert (=> b!1831277 m!2258185))

(declare-fun m!2259235 () Bool)

(assert (=> b!1831277 m!2259235))

(assert (=> b!1831277 m!2258181))

(assert (=> b!1830487 d!560030))

(declare-fun d!560034 () Bool)

(assert (=> d!560034 (= (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!710795)))) (list!8180 (c!298403 (charsOf!2282 (_1!11199 (get!6215 lt!710795))))))))

(declare-fun bs!407917 () Bool)

(assert (= bs!407917 d!560034))

(declare-fun m!2259237 () Bool)

(assert (=> bs!407917 m!2259237))

(assert (=> b!1830487 d!560034))

(declare-fun d!560036 () Bool)

(declare-fun lt!711092 () BalanceConc!13286)

(assert (=> d!560036 (= (list!8179 lt!711092) (originalCharacters!4447 (_1!11199 (get!6215 lt!710795))))))

(assert (=> d!560036 (= lt!711092 (dynLambda!10003 (toChars!5041 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710795))))) (value!113378 (_1!11199 (get!6215 lt!710795)))))))

(assert (=> d!560036 (= (charsOf!2282 (_1!11199 (get!6215 lt!710795))) lt!711092)))

(declare-fun b_lambda!60569 () Bool)

(assert (=> (not b_lambda!60569) (not d!560036)))

(declare-fun t!170746 () Bool)

(declare-fun tb!111921 () Bool)

(assert (=> (and b!1830100 (= (toChars!5041 (transformation!3639 rule!580)) (toChars!5041 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710795)))))) t!170746) tb!111921))

(declare-fun b!1831279 () Bool)

(declare-fun e!1170548 () Bool)

(declare-fun tp!517963 () Bool)

(assert (=> b!1831279 (= e!1170548 (and (inv!26196 (c!298403 (dynLambda!10003 (toChars!5041 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710795))))) (value!113378 (_1!11199 (get!6215 lt!710795)))))) tp!517963))))

(declare-fun result!134596 () Bool)

(assert (=> tb!111921 (= result!134596 (and (inv!26197 (dynLambda!10003 (toChars!5041 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710795))))) (value!113378 (_1!11199 (get!6215 lt!710795))))) e!1170548))))

(assert (= tb!111921 b!1831279))

(declare-fun m!2259239 () Bool)

(assert (=> b!1831279 m!2259239))

(declare-fun m!2259241 () Bool)

(assert (=> tb!111921 m!2259241))

(assert (=> d!560036 t!170746))

(declare-fun b_and!142605 () Bool)

(assert (= b_and!142511 (and (=> t!170746 result!134596) b_and!142605)))

(declare-fun t!170748 () Bool)

(declare-fun tb!111923 () Bool)

(assert (=> (and b!1830628 (= (toChars!5041 (transformation!3639 (h!25536 (t!170570 rules!4610)))) (toChars!5041 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710795)))))) t!170748) tb!111923))

(declare-fun result!134598 () Bool)

(assert (= result!134598 result!134596))

(assert (=> d!560036 t!170748))

(declare-fun b_and!142607 () Bool)

(assert (= b_and!142509 (and (=> t!170748 result!134598) b_and!142607)))

(declare-fun tb!111925 () Bool)

(declare-fun t!170750 () Bool)

(assert (=> (and b!1830640 (= (toChars!5041 (transformation!3639 (h!25536 (t!170570 rs!808)))) (toChars!5041 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710795)))))) t!170750) tb!111925))

(declare-fun result!134600 () Bool)

(assert (= result!134600 result!134596))

(assert (=> d!560036 t!170750))

(declare-fun b_and!142609 () Bool)

(assert (= b_and!142515 (and (=> t!170750 result!134600) b_and!142609)))

(declare-fun tb!111927 () Bool)

(declare-fun t!170752 () Bool)

(assert (=> (and b!1830109 (= (toChars!5041 (transformation!3639 (h!25536 rules!4610))) (toChars!5041 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710795)))))) t!170752) tb!111927))

(declare-fun result!134602 () Bool)

(assert (= result!134602 result!134596))

(assert (=> d!560036 t!170752))

(declare-fun b_and!142611 () Bool)

(assert (= b_and!142513 (and (=> t!170752 result!134602) b_and!142611)))

(declare-fun tb!111929 () Bool)

(declare-fun t!170754 () Bool)

(assert (=> (and b!1830095 (= (toChars!5041 (transformation!3639 (rule!5807 token!567))) (toChars!5041 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710795)))))) t!170754) tb!111929))

(declare-fun result!134604 () Bool)

(assert (= result!134604 result!134596))

(assert (=> d!560036 t!170754))

(declare-fun b_and!142613 () Bool)

(assert (= b_and!142517 (and (=> t!170754 result!134604) b_and!142613)))

(declare-fun tb!111931 () Bool)

(declare-fun t!170756 () Bool)

(assert (=> (and b!1830099 (= (toChars!5041 (transformation!3639 (h!25536 rs!808))) (toChars!5041 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710795)))))) t!170756) tb!111931))

(declare-fun result!134606 () Bool)

(assert (= result!134606 result!134596))

(assert (=> d!560036 t!170756))

(declare-fun b_and!142615 () Bool)

(assert (= b_and!142519 (and (=> t!170756 result!134606) b_and!142615)))

(declare-fun m!2259243 () Bool)

(assert (=> d!560036 m!2259243))

(declare-fun m!2259245 () Bool)

(assert (=> d!560036 m!2259245))

(assert (=> b!1830487 d!560036))

(assert (=> b!1830487 d!559668))

(assert (=> b!1830157 d!559732))

(declare-fun d!560038 () Bool)

(assert (=> d!560038 (= (isEmpty!12710 lt!710795) (not ((_ is Some!4218) lt!710795)))))

(assert (=> d!559528 d!560038))

(declare-fun d!560040 () Bool)

(assert (=> d!560040 (= (isEmpty!12706 (_1!11200 lt!710796)) ((_ is Nil!20134) (_1!11200 lt!710796)))))

(assert (=> d!559528 d!560040))

(declare-fun d!560042 () Bool)

(declare-fun lt!711119 () tuple2!19596)

(assert (=> d!560042 (= (++!5463 (_1!11200 lt!711119) (_2!11200 lt!711119)) input!3681)))

(declare-fun sizeTr!70 (List!20204 Int) Int)

(assert (=> d!560042 (= lt!711119 (findLongestMatchInner!514 (regex!3639 rule!580) Nil!20134 0 input!3681 input!3681 (sizeTr!70 input!3681 0)))))

(declare-fun lt!711120 () Unit!34797)

(declare-fun lt!711123 () Unit!34797)

(assert (=> d!560042 (= lt!711120 lt!711123)))

(declare-fun lt!711118 () List!20204)

(declare-fun lt!711117 () Int)

(assert (=> d!560042 (= (sizeTr!70 lt!711118 lt!711117) (+ (size!15960 lt!711118) lt!711117))))

(declare-fun lemmaSizeTrEqualsSize!70 (List!20204 Int) Unit!34797)

(assert (=> d!560042 (= lt!711123 (lemmaSizeTrEqualsSize!70 lt!711118 lt!711117))))

(assert (=> d!560042 (= lt!711117 0)))

(assert (=> d!560042 (= lt!711118 Nil!20134)))

(declare-fun lt!711122 () Unit!34797)

(declare-fun lt!711116 () Unit!34797)

(assert (=> d!560042 (= lt!711122 lt!711116)))

(declare-fun lt!711121 () Int)

(assert (=> d!560042 (= (sizeTr!70 input!3681 lt!711121) (+ (size!15960 input!3681) lt!711121))))

(assert (=> d!560042 (= lt!711116 (lemmaSizeTrEqualsSize!70 input!3681 lt!711121))))

(assert (=> d!560042 (= lt!711121 0)))

(assert (=> d!560042 (validRegex!2024 (regex!3639 rule!580))))

(assert (=> d!560042 (= (findLongestMatch!441 (regex!3639 rule!580) input!3681) lt!711119)))

(declare-fun bs!407918 () Bool)

(assert (= bs!407918 d!560042))

(assert (=> bs!407918 m!2257867))

(declare-fun m!2259271 () Bool)

(assert (=> bs!407918 m!2259271))

(declare-fun m!2259273 () Bool)

(assert (=> bs!407918 m!2259273))

(declare-fun m!2259275 () Bool)

(assert (=> bs!407918 m!2259275))

(declare-fun m!2259277 () Bool)

(assert (=> bs!407918 m!2259277))

(assert (=> bs!407918 m!2258043))

(declare-fun m!2259279 () Bool)

(assert (=> bs!407918 m!2259279))

(declare-fun m!2259281 () Bool)

(assert (=> bs!407918 m!2259281))

(assert (=> bs!407918 m!2259275))

(declare-fun m!2259283 () Bool)

(assert (=> bs!407918 m!2259283))

(declare-fun m!2259285 () Bool)

(assert (=> bs!407918 m!2259285))

(assert (=> d!559528 d!560042))

(assert (=> d!559528 d!559474))

(declare-fun b!1831319 () Bool)

(declare-fun e!1170573 () Bool)

(assert (=> b!1831319 (= e!1170573 (inv!17 (dynLambda!10004 (toValue!5182 (transformation!3639 rule!580)) (seqFromList!2596 lt!710679))))))

(declare-fun b!1831320 () Bool)

(declare-fun e!1170571 () Bool)

(assert (=> b!1831320 (= e!1170571 (inv!16 (dynLambda!10004 (toValue!5182 (transformation!3639 rule!580)) (seqFromList!2596 lt!710679))))))

(declare-fun d!560050 () Bool)

(declare-fun c!298691 () Bool)

(assert (=> d!560050 (= c!298691 ((_ is IntegerValue!11187) (dynLambda!10004 (toValue!5182 (transformation!3639 rule!580)) (seqFromList!2596 lt!710679))))))

(assert (=> d!560050 (= (inv!21 (dynLambda!10004 (toValue!5182 (transformation!3639 rule!580)) (seqFromList!2596 lt!710679))) e!1170571)))

(declare-fun b!1831321 () Bool)

(declare-fun res!823583 () Bool)

(declare-fun e!1170572 () Bool)

(assert (=> b!1831321 (=> res!823583 e!1170572)))

(assert (=> b!1831321 (= res!823583 (not ((_ is IntegerValue!11189) (dynLambda!10004 (toValue!5182 (transformation!3639 rule!580)) (seqFromList!2596 lt!710679)))))))

(assert (=> b!1831321 (= e!1170573 e!1170572)))

(declare-fun b!1831322 () Bool)

(assert (=> b!1831322 (= e!1170571 e!1170573)))

(declare-fun c!298690 () Bool)

(assert (=> b!1831322 (= c!298690 ((_ is IntegerValue!11188) (dynLambda!10004 (toValue!5182 (transformation!3639 rule!580)) (seqFromList!2596 lt!710679))))))

(declare-fun b!1831323 () Bool)

(assert (=> b!1831323 (= e!1170572 (inv!15 (dynLambda!10004 (toValue!5182 (transformation!3639 rule!580)) (seqFromList!2596 lt!710679))))))

(assert (= (and d!560050 c!298691) b!1831320))

(assert (= (and d!560050 (not c!298691)) b!1831322))

(assert (= (and b!1831322 c!298690) b!1831319))

(assert (= (and b!1831322 (not c!298690)) b!1831321))

(assert (= (and b!1831321 (not res!823583)) b!1831323))

(declare-fun m!2259287 () Bool)

(assert (=> b!1831319 m!2259287))

(declare-fun m!2259289 () Bool)

(assert (=> b!1831320 m!2259289))

(declare-fun m!2259291 () Bool)

(assert (=> b!1831323 m!2259291))

(assert (=> tb!111769 d!560050))

(declare-fun bs!407919 () Bool)

(declare-fun d!560052 () Bool)

(assert (= bs!407919 (and d!560052 d!559658)))

(declare-fun lambda!71957 () Int)

(assert (=> bs!407919 (= (and (= (toChars!5041 (transformation!3639 (h!25536 rs!808))) (toChars!5041 (transformation!3639 (h!25536 rules!4610)))) (= (toValue!5182 (transformation!3639 (h!25536 rs!808))) (toValue!5182 (transformation!3639 (h!25536 rules!4610))))) (= lambda!71957 lambda!71918))))

(declare-fun bs!407920 () Bool)

(assert (= bs!407920 (and d!560052 d!559714)))

(assert (=> bs!407920 (= (and (= (toChars!5041 (transformation!3639 (h!25536 rs!808))) (toChars!5041 (transformation!3639 rule!580))) (= (toValue!5182 (transformation!3639 (h!25536 rs!808))) (toValue!5182 (transformation!3639 rule!580)))) (= lambda!71957 lambda!71920))))

(assert (=> d!560052 true))

(assert (=> d!560052 (< (dynLambda!10013 order!13031 (toChars!5041 (transformation!3639 (h!25536 rs!808)))) (dynLambda!10014 order!13033 lambda!71957))))

(assert (=> d!560052 true))

(assert (=> d!560052 (< (dynLambda!10010 order!13027 (toValue!5182 (transformation!3639 (h!25536 rs!808)))) (dynLambda!10014 order!13033 lambda!71957))))

(assert (=> d!560052 (= (semiInverseModEq!1460 (toChars!5041 (transformation!3639 (h!25536 rs!808))) (toValue!5182 (transformation!3639 (h!25536 rs!808)))) (Forall!933 lambda!71957))))

(declare-fun bs!407921 () Bool)

(assert (= bs!407921 d!560052))

(declare-fun m!2259293 () Bool)

(assert (=> bs!407921 m!2259293))

(assert (=> d!559578 d!560052))

(declare-fun b!1831349 () Bool)

(declare-fun e!1170586 () List!20204)

(declare-fun e!1170587 () List!20204)

(assert (=> b!1831349 (= e!1170586 e!1170587)))

(declare-fun c!298705 () Bool)

(assert (=> b!1831349 (= c!298705 ((_ is Leaf!9711) (c!298403 (charsOf!2282 token!567))))))

(declare-fun b!1831348 () Bool)

(assert (=> b!1831348 (= e!1170586 Nil!20134)))

(declare-fun d!560054 () Bool)

(declare-fun c!298704 () Bool)

(assert (=> d!560054 (= c!298704 ((_ is Empty!6671) (c!298403 (charsOf!2282 token!567))))))

(assert (=> d!560054 (= (list!8180 (c!298403 (charsOf!2282 token!567))) e!1170586)))

(declare-fun b!1831351 () Bool)

(assert (=> b!1831351 (= e!1170587 (++!5463 (list!8180 (left!16092 (c!298403 (charsOf!2282 token!567)))) (list!8180 (right!16422 (c!298403 (charsOf!2282 token!567))))))))

(declare-fun b!1831350 () Bool)

(declare-fun list!8183 (IArray!13347) List!20204)

(assert (=> b!1831350 (= e!1170587 (list!8183 (xs!9547 (c!298403 (charsOf!2282 token!567)))))))

(assert (= (and d!560054 c!298704) b!1831348))

(assert (= (and d!560054 (not c!298704)) b!1831349))

(assert (= (and b!1831349 c!298705) b!1831350))

(assert (= (and b!1831349 (not c!298705)) b!1831351))

(declare-fun m!2259311 () Bool)

(assert (=> b!1831351 m!2259311))

(declare-fun m!2259313 () Bool)

(assert (=> b!1831351 m!2259313))

(assert (=> b!1831351 m!2259311))

(assert (=> b!1831351 m!2259313))

(declare-fun m!2259315 () Bool)

(assert (=> b!1831351 m!2259315))

(declare-fun m!2259317 () Bool)

(assert (=> b!1831350 m!2259317))

(assert (=> d!559500 d!560054))

(declare-fun d!560066 () Bool)

(assert (=> d!560066 (= (isEmptyLang!125 lt!710701) ((_ is EmptyLang!4967) lt!710701))))

(assert (=> b!1830221 d!560066))

(declare-fun bs!407922 () Bool)

(declare-fun d!560068 () Bool)

(assert (= bs!407922 (and d!560068 d!559658)))

(declare-fun lambda!71958 () Int)

(assert (=> bs!407922 (= (and (= (toChars!5041 (transformation!3639 (rule!5807 token!567))) (toChars!5041 (transformation!3639 (h!25536 rules!4610)))) (= (toValue!5182 (transformation!3639 (rule!5807 token!567))) (toValue!5182 (transformation!3639 (h!25536 rules!4610))))) (= lambda!71958 lambda!71918))))

(declare-fun bs!407923 () Bool)

(assert (= bs!407923 (and d!560068 d!559714)))

(assert (=> bs!407923 (= (and (= (toChars!5041 (transformation!3639 (rule!5807 token!567))) (toChars!5041 (transformation!3639 rule!580))) (= (toValue!5182 (transformation!3639 (rule!5807 token!567))) (toValue!5182 (transformation!3639 rule!580)))) (= lambda!71958 lambda!71920))))

(declare-fun bs!407924 () Bool)

(assert (= bs!407924 (and d!560068 d!560052)))

(assert (=> bs!407924 (= (and (= (toChars!5041 (transformation!3639 (rule!5807 token!567))) (toChars!5041 (transformation!3639 (h!25536 rs!808)))) (= (toValue!5182 (transformation!3639 (rule!5807 token!567))) (toValue!5182 (transformation!3639 (h!25536 rs!808))))) (= lambda!71958 lambda!71957))))

(assert (=> d!560068 true))

(assert (=> d!560068 (< (dynLambda!10013 order!13031 (toChars!5041 (transformation!3639 (rule!5807 token!567)))) (dynLambda!10014 order!13033 lambda!71958))))

(assert (=> d!560068 true))

(assert (=> d!560068 (< (dynLambda!10010 order!13027 (toValue!5182 (transformation!3639 (rule!5807 token!567)))) (dynLambda!10014 order!13033 lambda!71958))))

(assert (=> d!560068 (= (semiInverseModEq!1460 (toChars!5041 (transformation!3639 (rule!5807 token!567))) (toValue!5182 (transformation!3639 (rule!5807 token!567)))) (Forall!933 lambda!71958))))

(declare-fun bs!407925 () Bool)

(assert (= bs!407925 d!560068))

(declare-fun m!2259319 () Bool)

(assert (=> bs!407925 m!2259319))

(assert (=> d!559594 d!560068))

(declare-fun bs!407926 () Bool)

(declare-fun d!560070 () Bool)

(assert (= bs!407926 (and d!560070 d!559864)))

(declare-fun lambda!71959 () Int)

(assert (=> bs!407926 (= lambda!71959 lambda!71940)))

(declare-fun bs!407927 () Bool)

(assert (= bs!407927 (and d!560070 d!559484)))

(assert (=> bs!407927 (= lambda!71959 lambda!71882)))

(declare-fun bs!407928 () Bool)

(assert (= bs!407928 (and d!560070 d!559986)))

(assert (=> bs!407928 (= lambda!71959 lambda!71951)))

(declare-fun bs!407929 () Bool)

(assert (= bs!407929 (and d!560070 d!559580)))

(assert (=> bs!407929 (= lambda!71959 lambda!71899)))

(declare-fun bs!407930 () Bool)

(assert (= bs!407930 (and d!560070 d!559958)))

(assert (=> bs!407930 (= lambda!71959 lambda!71950)))

(declare-fun bs!407931 () Bool)

(assert (= bs!407931 (and d!560070 d!559950)))

(assert (=> bs!407931 (= lambda!71959 lambda!71949)))

(declare-fun bs!407932 () Bool)

(assert (= bs!407932 (and d!560070 d!559584)))

(assert (=> bs!407932 (= lambda!71959 lambda!71908)))

(declare-fun e!1170589 () Bool)

(assert (=> d!560070 e!1170589))

(declare-fun res!823585 () Bool)

(assert (=> d!560070 (=> (not res!823585) (not e!1170589))))

(declare-fun lt!711126 () Regex!4967)

(assert (=> d!560070 (= res!823585 (validRegex!2024 lt!711126))))

(declare-fun e!1170591 () Regex!4967)

(assert (=> d!560070 (= lt!711126 e!1170591)))

(declare-fun c!298706 () Bool)

(declare-fun e!1170588 () Bool)

(assert (=> d!560070 (= c!298706 e!1170588)))

(declare-fun res!823584 () Bool)

(assert (=> d!560070 (=> (not res!823584) (not e!1170588))))

(assert (=> d!560070 (= res!823584 ((_ is Cons!20136) (t!170571 (map!4177 rules!4610 lambda!71874))))))

(assert (=> d!560070 (forall!4332 (t!170571 (map!4177 rules!4610 lambda!71874)) lambda!71959)))

(assert (=> d!560070 (= (generalisedUnion!482 (t!170571 (map!4177 rules!4610 lambda!71874))) lt!711126)))

(declare-fun b!1831352 () Bool)

(declare-fun e!1170593 () Regex!4967)

(assert (=> b!1831352 (= e!1170591 e!1170593)))

(declare-fun c!298709 () Bool)

(assert (=> b!1831352 (= c!298709 ((_ is Cons!20136) (t!170571 (map!4177 rules!4610 lambda!71874))))))

(declare-fun b!1831353 () Bool)

(assert (=> b!1831353 (= e!1170588 (isEmpty!12709 (t!170571 (t!170571 (map!4177 rules!4610 lambda!71874)))))))

(declare-fun b!1831354 () Bool)

(assert (=> b!1831354 (= e!1170591 (h!25537 (t!170571 (map!4177 rules!4610 lambda!71874))))))

(declare-fun b!1831355 () Bool)

(declare-fun e!1170592 () Bool)

(assert (=> b!1831355 (= e!1170592 (= lt!711126 (head!4276 (t!170571 (map!4177 rules!4610 lambda!71874)))))))

(declare-fun b!1831356 () Bool)

(assert (=> b!1831356 (= e!1170593 (Union!4967 (h!25537 (t!170571 (map!4177 rules!4610 lambda!71874))) (generalisedUnion!482 (t!170571 (t!170571 (map!4177 rules!4610 lambda!71874))))))))

(declare-fun b!1831357 () Bool)

(assert (=> b!1831357 (= e!1170592 (isUnion!125 lt!711126))))

(declare-fun b!1831358 () Bool)

(assert (=> b!1831358 (= e!1170593 EmptyLang!4967)))

(declare-fun b!1831359 () Bool)

(declare-fun e!1170590 () Bool)

(assert (=> b!1831359 (= e!1170589 e!1170590)))

(declare-fun c!298708 () Bool)

(assert (=> b!1831359 (= c!298708 (isEmpty!12709 (t!170571 (map!4177 rules!4610 lambda!71874))))))

(declare-fun b!1831360 () Bool)

(assert (=> b!1831360 (= e!1170590 (isEmptyLang!125 lt!711126))))

(declare-fun b!1831361 () Bool)

(assert (=> b!1831361 (= e!1170590 e!1170592)))

(declare-fun c!298707 () Bool)

(assert (=> b!1831361 (= c!298707 (isEmpty!12709 (tail!2735 (t!170571 (map!4177 rules!4610 lambda!71874)))))))

(assert (= (and d!560070 res!823584) b!1831353))

(assert (= (and d!560070 c!298706) b!1831354))

(assert (= (and d!560070 (not c!298706)) b!1831352))

(assert (= (and b!1831352 c!298709) b!1831356))

(assert (= (and b!1831352 (not c!298709)) b!1831358))

(assert (= (and d!560070 res!823585) b!1831359))

(assert (= (and b!1831359 c!298708) b!1831360))

(assert (= (and b!1831359 (not c!298708)) b!1831361))

(assert (= (and b!1831361 c!298707) b!1831355))

(assert (= (and b!1831361 (not c!298707)) b!1831357))

(declare-fun m!2259321 () Bool)

(assert (=> b!1831357 m!2259321))

(declare-fun m!2259323 () Bool)

(assert (=> b!1831353 m!2259323))

(declare-fun m!2259329 () Bool)

(assert (=> b!1831355 m!2259329))

(declare-fun m!2259331 () Bool)

(assert (=> d!560070 m!2259331))

(declare-fun m!2259333 () Bool)

(assert (=> d!560070 m!2259333))

(declare-fun m!2259335 () Bool)

(assert (=> b!1831356 m!2259335))

(declare-fun m!2259337 () Bool)

(assert (=> b!1831361 m!2259337))

(assert (=> b!1831361 m!2259337))

(declare-fun m!2259339 () Bool)

(assert (=> b!1831361 m!2259339))

(declare-fun m!2259341 () Bool)

(assert (=> b!1831360 m!2259341))

(assert (=> b!1831359 m!2257901))

(assert (=> b!1830217 d!560070))

(assert (=> b!1830185 d!559710))

(declare-fun b!1831371 () Bool)

(declare-fun e!1170601 () Option!4219)

(declare-fun lt!711128 () tuple2!19596)

(assert (=> b!1831371 (= e!1170601 (Some!4218 (tuple2!19595 (Token!6833 (apply!5427 (transformation!3639 (h!25536 rules!4610)) (seqFromList!2596 (_1!11200 lt!711128))) (h!25536 rules!4610) (size!15965 (seqFromList!2596 (_1!11200 lt!711128))) (_1!11200 lt!711128)) (_2!11200 lt!711128))))))

(declare-fun lt!711129 () Unit!34797)

(assert (=> b!1831371 (= lt!711129 (longestMatchIsAcceptedByMatchOrIsEmpty!498 (regex!3639 (h!25536 rules!4610)) input!3681))))

(declare-fun res!823592 () Bool)

(assert (=> b!1831371 (= res!823592 (isEmpty!12706 (_1!11200 (findLongestMatchInner!514 (regex!3639 (h!25536 rules!4610)) Nil!20134 (size!15960 Nil!20134) input!3681 input!3681 (size!15960 input!3681)))))))

(declare-fun e!1170602 () Bool)

(assert (=> b!1831371 (=> res!823592 e!1170602)))

(assert (=> b!1831371 e!1170602))

(declare-fun lt!711131 () Unit!34797)

(assert (=> b!1831371 (= lt!711131 lt!711129)))

(declare-fun lt!711130 () Unit!34797)

(assert (=> b!1831371 (= lt!711130 (lemmaSemiInverse!728 (transformation!3639 (h!25536 rules!4610)) (seqFromList!2596 (_1!11200 lt!711128))))))

(declare-fun b!1831373 () Bool)

(declare-fun e!1170603 () Bool)

(declare-fun lt!711127 () Option!4219)

(assert (=> b!1831373 (= e!1170603 (= (size!15959 (_1!11199 (get!6215 lt!711127))) (size!15960 (originalCharacters!4447 (_1!11199 (get!6215 lt!711127))))))))

(declare-fun b!1831374 () Bool)

(assert (=> b!1831374 (= e!1170601 None!4218)))

(declare-fun b!1831375 () Bool)

(assert (=> b!1831375 (= e!1170602 (matchR!2430 (regex!3639 (h!25536 rules!4610)) (_1!11200 (findLongestMatchInner!514 (regex!3639 (h!25536 rules!4610)) Nil!20134 (size!15960 Nil!20134) input!3681 input!3681 (size!15960 input!3681)))))))

(declare-fun b!1831376 () Bool)

(declare-fun res!823594 () Bool)

(assert (=> b!1831376 (=> (not res!823594) (not e!1170603))))

(assert (=> b!1831376 (= res!823594 (< (size!15960 (_2!11199 (get!6215 lt!711127))) (size!15960 input!3681)))))

(declare-fun b!1831377 () Bool)

(declare-fun res!823593 () Bool)

(assert (=> b!1831377 (=> (not res!823593) (not e!1170603))))

(assert (=> b!1831377 (= res!823593 (= (rule!5807 (_1!11199 (get!6215 lt!711127))) (h!25536 rules!4610)))))

(declare-fun b!1831378 () Bool)

(declare-fun res!823595 () Bool)

(assert (=> b!1831378 (=> (not res!823595) (not e!1170603))))

(assert (=> b!1831378 (= res!823595 (= (value!113378 (_1!11199 (get!6215 lt!711127))) (apply!5427 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!711127)))) (seqFromList!2596 (originalCharacters!4447 (_1!11199 (get!6215 lt!711127)))))))))

(declare-fun b!1831379 () Bool)

(declare-fun e!1170600 () Bool)

(assert (=> b!1831379 (= e!1170600 e!1170603)))

(declare-fun res!823589 () Bool)

(assert (=> b!1831379 (=> (not res!823589) (not e!1170603))))

(assert (=> b!1831379 (= res!823589 (matchR!2430 (regex!3639 (h!25536 rules!4610)) (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!711127))))))))

(declare-fun d!560074 () Bool)

(assert (=> d!560074 e!1170600))

(declare-fun res!823591 () Bool)

(assert (=> d!560074 (=> res!823591 e!1170600)))

(assert (=> d!560074 (= res!823591 (isEmpty!12710 lt!711127))))

(assert (=> d!560074 (= lt!711127 e!1170601)))

(declare-fun c!298713 () Bool)

(assert (=> d!560074 (= c!298713 (isEmpty!12706 (_1!11200 lt!711128)))))

(assert (=> d!560074 (= lt!711128 (findLongestMatch!441 (regex!3639 (h!25536 rules!4610)) input!3681))))

(assert (=> d!560074 (ruleValid!1129 thiss!28318 (h!25536 rules!4610))))

(assert (=> d!560074 (= (maxPrefixOneRule!1177 thiss!28318 (h!25536 rules!4610) input!3681) lt!711127)))

(declare-fun b!1831372 () Bool)

(declare-fun res!823590 () Bool)

(assert (=> b!1831372 (=> (not res!823590) (not e!1170603))))

(assert (=> b!1831372 (= res!823590 (= (++!5463 (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!711127)))) (_2!11199 (get!6215 lt!711127))) input!3681))))

(assert (= (and d!560074 c!298713) b!1831374))

(assert (= (and d!560074 (not c!298713)) b!1831371))

(assert (= (and b!1831371 (not res!823592)) b!1831375))

(assert (= (and d!560074 (not res!823591)) b!1831379))

(assert (= (and b!1831379 res!823589) b!1831372))

(assert (= (and b!1831372 res!823590) b!1831376))

(assert (= (and b!1831376 res!823594) b!1831377))

(assert (= (and b!1831377 res!823593) b!1831378))

(assert (= (and b!1831378 res!823595) b!1831373))

(declare-fun m!2259347 () Bool)

(assert (=> b!1831377 m!2259347))

(assert (=> b!1831376 m!2259347))

(declare-fun m!2259349 () Bool)

(assert (=> b!1831376 m!2259349))

(assert (=> b!1831376 m!2258043))

(assert (=> b!1831379 m!2259347))

(declare-fun m!2259351 () Bool)

(assert (=> b!1831379 m!2259351))

(assert (=> b!1831379 m!2259351))

(declare-fun m!2259353 () Bool)

(assert (=> b!1831379 m!2259353))

(assert (=> b!1831379 m!2259353))

(declare-fun m!2259355 () Bool)

(assert (=> b!1831379 m!2259355))

(declare-fun m!2259357 () Bool)

(assert (=> d!560074 m!2259357))

(declare-fun m!2259359 () Bool)

(assert (=> d!560074 m!2259359))

(declare-fun m!2259361 () Bool)

(assert (=> d!560074 m!2259361))

(assert (=> d!560074 m!2258651))

(assert (=> b!1831373 m!2259347))

(declare-fun m!2259363 () Bool)

(assert (=> b!1831373 m!2259363))

(assert (=> b!1831378 m!2259347))

(declare-fun m!2259365 () Bool)

(assert (=> b!1831378 m!2259365))

(assert (=> b!1831378 m!2259365))

(declare-fun m!2259367 () Bool)

(assert (=> b!1831378 m!2259367))

(assert (=> b!1831371 m!2258043))

(assert (=> b!1831371 m!2258201))

(declare-fun m!2259371 () Bool)

(assert (=> b!1831371 m!2259371))

(declare-fun m!2259377 () Bool)

(assert (=> b!1831371 m!2259377))

(declare-fun m!2259381 () Bool)

(assert (=> b!1831371 m!2259381))

(declare-fun m!2259385 () Bool)

(assert (=> b!1831371 m!2259385))

(assert (=> b!1831371 m!2258201))

(assert (=> b!1831371 m!2258043))

(declare-fun m!2259387 () Bool)

(assert (=> b!1831371 m!2259387))

(assert (=> b!1831371 m!2259381))

(declare-fun m!2259391 () Bool)

(assert (=> b!1831371 m!2259391))

(assert (=> b!1831371 m!2259381))

(declare-fun m!2259393 () Bool)

(assert (=> b!1831371 m!2259393))

(assert (=> b!1831371 m!2259381))

(assert (=> b!1831372 m!2259347))

(assert (=> b!1831372 m!2259351))

(assert (=> b!1831372 m!2259351))

(assert (=> b!1831372 m!2259353))

(assert (=> b!1831372 m!2259353))

(declare-fun m!2259397 () Bool)

(assert (=> b!1831372 m!2259397))

(assert (=> b!1831375 m!2258201))

(assert (=> b!1831375 m!2258043))

(assert (=> b!1831375 m!2258201))

(assert (=> b!1831375 m!2258043))

(assert (=> b!1831375 m!2259387))

(declare-fun m!2259399 () Bool)

(assert (=> b!1831375 m!2259399))

(assert (=> bm!114639 d!560074))

(declare-fun b!1831410 () Bool)

(declare-fun res!823607 () Bool)

(declare-fun e!1170623 () Bool)

(assert (=> b!1831410 (=> res!823607 e!1170623)))

(assert (=> b!1831410 (= res!823607 (not ((_ is Concat!8696) lt!710814)))))

(declare-fun e!1170619 () Bool)

(assert (=> b!1831410 (= e!1170619 e!1170623)))

(declare-fun b!1831411 () Bool)

(declare-fun e!1170624 () Bool)

(declare-fun e!1170621 () Bool)

(assert (=> b!1831411 (= e!1170624 e!1170621)))

(declare-fun res!823608 () Bool)

(assert (=> b!1831411 (= res!823608 (not (nullable!1542 (reg!5296 lt!710814))))))

(assert (=> b!1831411 (=> (not res!823608) (not e!1170621))))

(declare-fun b!1831412 () Bool)

(declare-fun e!1170622 () Bool)

(declare-fun call!114740 () Bool)

(assert (=> b!1831412 (= e!1170622 call!114740)))

(declare-fun bm!114735 () Bool)

(declare-fun call!114742 () Bool)

(declare-fun c!298726 () Bool)

(assert (=> bm!114735 (= call!114742 (validRegex!2024 (ite c!298726 (regTwo!10447 lt!710814) (regOne!10446 lt!710814))))))

(declare-fun b!1831413 () Bool)

(assert (=> b!1831413 (= e!1170624 e!1170619)))

(assert (=> b!1831413 (= c!298726 ((_ is Union!4967) lt!710814))))

(declare-fun b!1831414 () Bool)

(declare-fun call!114741 () Bool)

(assert (=> b!1831414 (= e!1170621 call!114741)))

(declare-fun b!1831415 () Bool)

(declare-fun e!1170625 () Bool)

(assert (=> b!1831415 (= e!1170625 call!114742)))

(declare-fun b!1831416 () Bool)

(declare-fun res!823605 () Bool)

(assert (=> b!1831416 (=> (not res!823605) (not e!1170625))))

(assert (=> b!1831416 (= res!823605 call!114740)))

(assert (=> b!1831416 (= e!1170619 e!1170625)))

(declare-fun d!560084 () Bool)

(declare-fun res!823606 () Bool)

(declare-fun e!1170620 () Bool)

(assert (=> d!560084 (=> res!823606 e!1170620)))

(assert (=> d!560084 (= res!823606 ((_ is ElementMatch!4967) lt!710814))))

(assert (=> d!560084 (= (validRegex!2024 lt!710814) e!1170620)))

(declare-fun bm!114736 () Bool)

(assert (=> bm!114736 (= call!114740 call!114741)))

(declare-fun b!1831417 () Bool)

(assert (=> b!1831417 (= e!1170620 e!1170624)))

(declare-fun c!298725 () Bool)

(assert (=> b!1831417 (= c!298725 ((_ is Star!4967) lt!710814))))

(declare-fun bm!114737 () Bool)

(assert (=> bm!114737 (= call!114741 (validRegex!2024 (ite c!298725 (reg!5296 lt!710814) (ite c!298726 (regOne!10447 lt!710814) (regTwo!10446 lt!710814)))))))

(declare-fun b!1831418 () Bool)

(assert (=> b!1831418 (= e!1170623 e!1170622)))

(declare-fun res!823604 () Bool)

(assert (=> b!1831418 (=> (not res!823604) (not e!1170622))))

(assert (=> b!1831418 (= res!823604 call!114742)))

(assert (= (and d!560084 (not res!823606)) b!1831417))

(assert (= (and b!1831417 c!298725) b!1831411))

(assert (= (and b!1831417 (not c!298725)) b!1831413))

(assert (= (and b!1831411 res!823608) b!1831414))

(assert (= (and b!1831413 c!298726) b!1831416))

(assert (= (and b!1831413 (not c!298726)) b!1831410))

(assert (= (and b!1831416 res!823605) b!1831415))

(assert (= (and b!1831410 (not res!823607)) b!1831418))

(assert (= (and b!1831418 res!823604) b!1831412))

(assert (= (or b!1831415 b!1831418) bm!114735))

(assert (= (or b!1831416 b!1831412) bm!114736))

(assert (= (or b!1831414 bm!114736) bm!114737))

(declare-fun m!2259407 () Bool)

(assert (=> b!1831411 m!2259407))

(declare-fun m!2259409 () Bool)

(assert (=> bm!114735 m!2259409))

(declare-fun m!2259411 () Bool)

(assert (=> bm!114737 m!2259411))

(assert (=> d!559580 d!560084))

(declare-fun d!560088 () Bool)

(declare-fun res!823609 () Bool)

(declare-fun e!1170626 () Bool)

(assert (=> d!560088 (=> res!823609 e!1170626)))

(assert (=> d!560088 (= res!823609 ((_ is Nil!20136) lt!710678))))

(assert (=> d!560088 (= (forall!4332 lt!710678 lambda!71899) e!1170626)))

(declare-fun b!1831419 () Bool)

(declare-fun e!1170627 () Bool)

(assert (=> b!1831419 (= e!1170626 e!1170627)))

(declare-fun res!823610 () Bool)

(assert (=> b!1831419 (=> (not res!823610) (not e!1170627))))

(assert (=> b!1831419 (= res!823610 (dynLambda!10015 lambda!71899 (h!25537 lt!710678)))))

(declare-fun b!1831420 () Bool)

(assert (=> b!1831420 (= e!1170627 (forall!4332 (t!170571 lt!710678) lambda!71899))))

(assert (= (and d!560088 (not res!823609)) b!1831419))

(assert (= (and b!1831419 res!823610) b!1831420))

(declare-fun b_lambda!60571 () Bool)

(assert (=> (not b_lambda!60571) (not b!1831419)))

(declare-fun m!2259413 () Bool)

(assert (=> b!1831419 m!2259413))

(declare-fun m!2259415 () Bool)

(assert (=> b!1831420 m!2259415))

(assert (=> d!559580 d!560088))

(declare-fun b!1831421 () Bool)

(declare-fun res!823615 () Bool)

(declare-fun e!1170628 () Bool)

(assert (=> b!1831421 (=> (not res!823615) (not e!1170628))))

(declare-fun lt!711135 () Option!4219)

(assert (=> b!1831421 (= res!823615 (= (value!113378 (_1!11199 (get!6215 lt!711135))) (apply!5427 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!711135)))) (seqFromList!2596 (originalCharacters!4447 (_1!11199 (get!6215 lt!711135)))))))))

(declare-fun b!1831422 () Bool)

(declare-fun e!1170630 () Option!4219)

(declare-fun call!114743 () Option!4219)

(assert (=> b!1831422 (= e!1170630 call!114743)))

(declare-fun b!1831423 () Bool)

(declare-fun res!823616 () Bool)

(assert (=> b!1831423 (=> (not res!823616) (not e!1170628))))

(assert (=> b!1831423 (= res!823616 (= (++!5463 (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!711135)))) (_2!11199 (get!6215 lt!711135))) input!3681))))

(declare-fun b!1831424 () Bool)

(declare-fun lt!711138 () Option!4219)

(declare-fun lt!711137 () Option!4219)

(assert (=> b!1831424 (= e!1170630 (ite (and ((_ is None!4218) lt!711138) ((_ is None!4218) lt!711137)) None!4218 (ite ((_ is None!4218) lt!711137) lt!711138 (ite ((_ is None!4218) lt!711138) lt!711137 (ite (>= (size!15959 (_1!11199 (v!25789 lt!711138))) (size!15959 (_1!11199 (v!25789 lt!711137)))) lt!711138 lt!711137)))))))

(assert (=> b!1831424 (= lt!711138 call!114743)))

(assert (=> b!1831424 (= lt!711137 (maxPrefix!1816 thiss!28318 (t!170570 (t!170570 rules!4610)) input!3681))))

(declare-fun b!1831425 () Bool)

(assert (=> b!1831425 (= e!1170628 (contains!3713 (t!170570 rules!4610) (rule!5807 (_1!11199 (get!6215 lt!711135)))))))

(declare-fun b!1831426 () Bool)

(declare-fun e!1170629 () Bool)

(assert (=> b!1831426 (= e!1170629 e!1170628)))

(declare-fun res!823612 () Bool)

(assert (=> b!1831426 (=> (not res!823612) (not e!1170628))))

(assert (=> b!1831426 (= res!823612 (isDefined!3521 lt!711135))))

(declare-fun b!1831427 () Bool)

(declare-fun res!823617 () Bool)

(assert (=> b!1831427 (=> (not res!823617) (not e!1170628))))

(assert (=> b!1831427 (= res!823617 (matchR!2430 (regex!3639 (rule!5807 (_1!11199 (get!6215 lt!711135)))) (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!711135))))))))

(declare-fun d!560090 () Bool)

(assert (=> d!560090 e!1170629))

(declare-fun res!823614 () Bool)

(assert (=> d!560090 (=> res!823614 e!1170629)))

(assert (=> d!560090 (= res!823614 (isEmpty!12710 lt!711135))))

(assert (=> d!560090 (= lt!711135 e!1170630)))

(declare-fun c!298727 () Bool)

(assert (=> d!560090 (= c!298727 (and ((_ is Cons!20135) (t!170570 rules!4610)) ((_ is Nil!20135) (t!170570 (t!170570 rules!4610)))))))

(declare-fun lt!711136 () Unit!34797)

(declare-fun lt!711134 () Unit!34797)

(assert (=> d!560090 (= lt!711136 lt!711134)))

(assert (=> d!560090 (isPrefix!1834 input!3681 input!3681)))

(assert (=> d!560090 (= lt!711134 (lemmaIsPrefixRefl!1211 input!3681 input!3681))))

(assert (=> d!560090 (rulesValidInductive!1254 thiss!28318 (t!170570 rules!4610))))

(assert (=> d!560090 (= (maxPrefix!1816 thiss!28318 (t!170570 rules!4610) input!3681) lt!711135)))

(declare-fun bm!114738 () Bool)

(assert (=> bm!114738 (= call!114743 (maxPrefixOneRule!1177 thiss!28318 (h!25536 (t!170570 rules!4610)) input!3681))))

(declare-fun b!1831428 () Bool)

(declare-fun res!823613 () Bool)

(assert (=> b!1831428 (=> (not res!823613) (not e!1170628))))

(assert (=> b!1831428 (= res!823613 (= (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!711135)))) (originalCharacters!4447 (_1!11199 (get!6215 lt!711135)))))))

(declare-fun b!1831429 () Bool)

(declare-fun res!823611 () Bool)

(assert (=> b!1831429 (=> (not res!823611) (not e!1170628))))

(assert (=> b!1831429 (= res!823611 (< (size!15960 (_2!11199 (get!6215 lt!711135))) (size!15960 input!3681)))))

(assert (= (and d!560090 c!298727) b!1831422))

(assert (= (and d!560090 (not c!298727)) b!1831424))

(assert (= (or b!1831422 b!1831424) bm!114738))

(assert (= (and d!560090 (not res!823614)) b!1831426))

(assert (= (and b!1831426 res!823612) b!1831428))

(assert (= (and b!1831428 res!823613) b!1831429))

(assert (= (and b!1831429 res!823611) b!1831423))

(assert (= (and b!1831423 res!823616) b!1831421))

(assert (= (and b!1831421 res!823615) b!1831427))

(assert (= (and b!1831427 res!823617) b!1831425))

(declare-fun m!2259425 () Bool)

(assert (=> d!560090 m!2259425))

(assert (=> d!560090 m!2258023))

(assert (=> d!560090 m!2258025))

(assert (=> d!560090 m!2258653))

(declare-fun m!2259429 () Bool)

(assert (=> b!1831426 m!2259429))

(declare-fun m!2259431 () Bool)

(assert (=> bm!114738 m!2259431))

(declare-fun m!2259433 () Bool)

(assert (=> b!1831423 m!2259433))

(declare-fun m!2259435 () Bool)

(assert (=> b!1831423 m!2259435))

(assert (=> b!1831423 m!2259435))

(declare-fun m!2259437 () Bool)

(assert (=> b!1831423 m!2259437))

(assert (=> b!1831423 m!2259437))

(declare-fun m!2259439 () Bool)

(assert (=> b!1831423 m!2259439))

(assert (=> b!1831429 m!2259433))

(declare-fun m!2259441 () Bool)

(assert (=> b!1831429 m!2259441))

(assert (=> b!1831429 m!2258043))

(assert (=> b!1831425 m!2259433))

(declare-fun m!2259445 () Bool)

(assert (=> b!1831425 m!2259445))

(declare-fun m!2259449 () Bool)

(assert (=> b!1831424 m!2259449))

(assert (=> b!1831421 m!2259433))

(declare-fun m!2259451 () Bool)

(assert (=> b!1831421 m!2259451))

(assert (=> b!1831421 m!2259451))

(declare-fun m!2259453 () Bool)

(assert (=> b!1831421 m!2259453))

(assert (=> b!1831428 m!2259433))

(assert (=> b!1831428 m!2259435))

(assert (=> b!1831428 m!2259435))

(assert (=> b!1831428 m!2259437))

(assert (=> b!1831427 m!2259433))

(assert (=> b!1831427 m!2259435))

(assert (=> b!1831427 m!2259435))

(assert (=> b!1831427 m!2259437))

(assert (=> b!1831427 m!2259437))

(declare-fun m!2259457 () Bool)

(assert (=> b!1831427 m!2259457))

(assert (=> b!1830351 d!560090))

(declare-fun d!560102 () Bool)

(assert (=> d!560102 (= (isEmpty!12709 lt!710678) ((_ is Nil!20136) lt!710678))))

(assert (=> b!1830539 d!560102))

(declare-fun b!1831438 () Bool)

(declare-fun e!1170640 () Bool)

(declare-fun lt!711141 () Bool)

(declare-fun call!114744 () Bool)

(assert (=> b!1831438 (= e!1170640 (= lt!711141 call!114744))))

(declare-fun b!1831439 () Bool)

(declare-fun res!823626 () Bool)

(declare-fun e!1170639 () Bool)

(assert (=> b!1831439 (=> res!823626 e!1170639)))

(assert (=> b!1831439 (= res!823626 (not ((_ is ElementMatch!4967) (regex!3639 rule!580))))))

(declare-fun e!1170638 () Bool)

(assert (=> b!1831439 (= e!1170638 e!1170639)))

(declare-fun b!1831440 () Bool)

(declare-fun e!1170643 () Bool)

(assert (=> b!1831440 (= e!1170643 (matchR!2430 (derivativeStep!1306 (regex!3639 rule!580) (head!4273 (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!710795)))))) (tail!2732 (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!710795)))))))))

(declare-fun b!1831441 () Bool)

(declare-fun res!823624 () Bool)

(assert (=> b!1831441 (=> res!823624 e!1170639)))

(declare-fun e!1170642 () Bool)

(assert (=> b!1831441 (= res!823624 e!1170642)))

(declare-fun res!823630 () Bool)

(assert (=> b!1831441 (=> (not res!823630) (not e!1170642))))

(assert (=> b!1831441 (= res!823630 lt!711141)))

(declare-fun b!1831442 () Bool)

(declare-fun e!1170641 () Bool)

(declare-fun e!1170644 () Bool)

(assert (=> b!1831442 (= e!1170641 e!1170644)))

(declare-fun res!823629 () Bool)

(assert (=> b!1831442 (=> res!823629 e!1170644)))

(assert (=> b!1831442 (= res!823629 call!114744)))

(declare-fun b!1831443 () Bool)

(declare-fun res!823627 () Bool)

(assert (=> b!1831443 (=> res!823627 e!1170644)))

(assert (=> b!1831443 (= res!823627 (not (isEmpty!12706 (tail!2732 (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!710795))))))))))

(declare-fun b!1831444 () Bool)

(assert (=> b!1831444 (= e!1170643 (nullable!1542 (regex!3639 rule!580)))))

(declare-fun d!560104 () Bool)

(assert (=> d!560104 e!1170640))

(declare-fun c!298729 () Bool)

(assert (=> d!560104 (= c!298729 ((_ is EmptyExpr!4967) (regex!3639 rule!580)))))

(assert (=> d!560104 (= lt!711141 e!1170643)))

(declare-fun c!298730 () Bool)

(assert (=> d!560104 (= c!298730 (isEmpty!12706 (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!710795))))))))

(assert (=> d!560104 (validRegex!2024 (regex!3639 rule!580))))

(assert (=> d!560104 (= (matchR!2430 (regex!3639 rule!580) (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!710795))))) lt!711141)))

(declare-fun b!1831445 () Bool)

(assert (=> b!1831445 (= e!1170642 (= (head!4273 (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!710795))))) (c!298402 (regex!3639 rule!580))))))

(declare-fun bm!114739 () Bool)

(assert (=> bm!114739 (= call!114744 (isEmpty!12706 (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!710795))))))))

(declare-fun b!1831446 () Bool)

(assert (=> b!1831446 (= e!1170639 e!1170641)))

(declare-fun res!823628 () Bool)

(assert (=> b!1831446 (=> (not res!823628) (not e!1170641))))

(assert (=> b!1831446 (= res!823628 (not lt!711141))))

(declare-fun b!1831447 () Bool)

(declare-fun res!823631 () Bool)

(assert (=> b!1831447 (=> (not res!823631) (not e!1170642))))

(assert (=> b!1831447 (= res!823631 (isEmpty!12706 (tail!2732 (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!710795)))))))))

(declare-fun b!1831448 () Bool)

(assert (=> b!1831448 (= e!1170640 e!1170638)))

(declare-fun c!298731 () Bool)

(assert (=> b!1831448 (= c!298731 ((_ is EmptyLang!4967) (regex!3639 rule!580)))))

(declare-fun b!1831449 () Bool)

(assert (=> b!1831449 (= e!1170644 (not (= (head!4273 (list!8179 (charsOf!2282 (_1!11199 (get!6215 lt!710795))))) (c!298402 (regex!3639 rule!580)))))))

(declare-fun b!1831450 () Bool)

(declare-fun res!823625 () Bool)

(assert (=> b!1831450 (=> (not res!823625) (not e!1170642))))

(assert (=> b!1831450 (= res!823625 (not call!114744))))

(declare-fun b!1831451 () Bool)

(assert (=> b!1831451 (= e!1170638 (not lt!711141))))

(assert (= (and d!560104 c!298730) b!1831444))

(assert (= (and d!560104 (not c!298730)) b!1831440))

(assert (= (and d!560104 c!298729) b!1831438))

(assert (= (and d!560104 (not c!298729)) b!1831448))

(assert (= (and b!1831448 c!298731) b!1831451))

(assert (= (and b!1831448 (not c!298731)) b!1831439))

(assert (= (and b!1831439 (not res!823626)) b!1831441))

(assert (= (and b!1831441 res!823630) b!1831450))

(assert (= (and b!1831450 res!823625) b!1831447))

(assert (= (and b!1831447 res!823631) b!1831445))

(assert (= (and b!1831441 (not res!823624)) b!1831446))

(assert (= (and b!1831446 res!823628) b!1831442))

(assert (= (and b!1831442 (not res!823629)) b!1831443))

(assert (= (and b!1831443 (not res!823627)) b!1831449))

(assert (= (or b!1831438 b!1831442 b!1831450) bm!114739))

(assert (=> bm!114739 m!2258185))

(declare-fun m!2259459 () Bool)

(assert (=> bm!114739 m!2259459))

(assert (=> b!1831445 m!2258185))

(declare-fun m!2259461 () Bool)

(assert (=> b!1831445 m!2259461))

(assert (=> b!1831444 m!2257861))

(assert (=> b!1831447 m!2258185))

(declare-fun m!2259463 () Bool)

(assert (=> b!1831447 m!2259463))

(assert (=> b!1831447 m!2259463))

(declare-fun m!2259465 () Bool)

(assert (=> b!1831447 m!2259465))

(assert (=> d!560104 m!2258185))

(assert (=> d!560104 m!2259459))

(assert (=> d!560104 m!2257867))

(assert (=> b!1831440 m!2258185))

(assert (=> b!1831440 m!2259461))

(assert (=> b!1831440 m!2259461))

(declare-fun m!2259467 () Bool)

(assert (=> b!1831440 m!2259467))

(assert (=> b!1831440 m!2258185))

(assert (=> b!1831440 m!2259463))

(assert (=> b!1831440 m!2259467))

(assert (=> b!1831440 m!2259463))

(declare-fun m!2259469 () Bool)

(assert (=> b!1831440 m!2259469))

(assert (=> b!1831443 m!2258185))

(assert (=> b!1831443 m!2259463))

(assert (=> b!1831443 m!2259463))

(assert (=> b!1831443 m!2259465))

(assert (=> b!1831449 m!2258185))

(assert (=> b!1831449 m!2259461))

(assert (=> b!1830494 d!560104))

(assert (=> b!1830494 d!560034))

(assert (=> b!1830494 d!560036))

(assert (=> b!1830494 d!559668))

(declare-fun d!560106 () Bool)

(assert (=> d!560106 (= (isEmpty!12706 lt!710679) ((_ is Nil!20134) lt!710679))))

(assert (=> bm!114633 d!560106))

(declare-fun d!560108 () Bool)

(assert (=> d!560108 (= (list!8179 lt!710719) (list!8180 (c!298403 lt!710719)))))

(declare-fun bs!407939 () Bool)

(assert (= bs!407939 d!560108))

(declare-fun m!2259471 () Bool)

(assert (=> bs!407939 m!2259471))

(assert (=> d!559502 d!560108))

(declare-fun b!1831452 () Bool)

(declare-fun e!1170647 () Bool)

(declare-fun lt!711142 () Bool)

(declare-fun call!114745 () Bool)

(assert (=> b!1831452 (= e!1170647 (= lt!711142 call!114745))))

(declare-fun b!1831453 () Bool)

(declare-fun res!823634 () Bool)

(declare-fun e!1170646 () Bool)

(assert (=> b!1831453 (=> res!823634 e!1170646)))

(assert (=> b!1831453 (= res!823634 (not ((_ is ElementMatch!4967) (regex!3639 rule!580))))))

(declare-fun e!1170645 () Bool)

(assert (=> b!1831453 (= e!1170645 e!1170646)))

(declare-fun b!1831454 () Bool)

(declare-fun e!1170650 () Bool)

(assert (=> b!1831454 (= e!1170650 (matchR!2430 (derivativeStep!1306 (regex!3639 rule!580) (head!4273 (_1!11200 (findLongestMatchInner!514 (regex!3639 rule!580) Nil!20134 (size!15960 Nil!20134) input!3681 input!3681 (size!15960 input!3681))))) (tail!2732 (_1!11200 (findLongestMatchInner!514 (regex!3639 rule!580) Nil!20134 (size!15960 Nil!20134) input!3681 input!3681 (size!15960 input!3681))))))))

(declare-fun b!1831455 () Bool)

(declare-fun res!823632 () Bool)

(assert (=> b!1831455 (=> res!823632 e!1170646)))

(declare-fun e!1170649 () Bool)

(assert (=> b!1831455 (= res!823632 e!1170649)))

(declare-fun res!823638 () Bool)

(assert (=> b!1831455 (=> (not res!823638) (not e!1170649))))

(assert (=> b!1831455 (= res!823638 lt!711142)))

(declare-fun b!1831456 () Bool)

(declare-fun e!1170648 () Bool)

(declare-fun e!1170651 () Bool)

(assert (=> b!1831456 (= e!1170648 e!1170651)))

(declare-fun res!823637 () Bool)

(assert (=> b!1831456 (=> res!823637 e!1170651)))

(assert (=> b!1831456 (= res!823637 call!114745)))

(declare-fun b!1831457 () Bool)

(declare-fun res!823635 () Bool)

(assert (=> b!1831457 (=> res!823635 e!1170651)))

(assert (=> b!1831457 (= res!823635 (not (isEmpty!12706 (tail!2732 (_1!11200 (findLongestMatchInner!514 (regex!3639 rule!580) Nil!20134 (size!15960 Nil!20134) input!3681 input!3681 (size!15960 input!3681)))))))))

(declare-fun b!1831458 () Bool)

(assert (=> b!1831458 (= e!1170650 (nullable!1542 (regex!3639 rule!580)))))

(declare-fun d!560110 () Bool)

(assert (=> d!560110 e!1170647))

(declare-fun c!298732 () Bool)

(assert (=> d!560110 (= c!298732 ((_ is EmptyExpr!4967) (regex!3639 rule!580)))))

(assert (=> d!560110 (= lt!711142 e!1170650)))

(declare-fun c!298733 () Bool)

(assert (=> d!560110 (= c!298733 (isEmpty!12706 (_1!11200 (findLongestMatchInner!514 (regex!3639 rule!580) Nil!20134 (size!15960 Nil!20134) input!3681 input!3681 (size!15960 input!3681)))))))

(assert (=> d!560110 (validRegex!2024 (regex!3639 rule!580))))

(assert (=> d!560110 (= (matchR!2430 (regex!3639 rule!580) (_1!11200 (findLongestMatchInner!514 (regex!3639 rule!580) Nil!20134 (size!15960 Nil!20134) input!3681 input!3681 (size!15960 input!3681)))) lt!711142)))

(declare-fun b!1831459 () Bool)

(assert (=> b!1831459 (= e!1170649 (= (head!4273 (_1!11200 (findLongestMatchInner!514 (regex!3639 rule!580) Nil!20134 (size!15960 Nil!20134) input!3681 input!3681 (size!15960 input!3681)))) (c!298402 (regex!3639 rule!580))))))

(declare-fun bm!114740 () Bool)

(assert (=> bm!114740 (= call!114745 (isEmpty!12706 (_1!11200 (findLongestMatchInner!514 (regex!3639 rule!580) Nil!20134 (size!15960 Nil!20134) input!3681 input!3681 (size!15960 input!3681)))))))

(declare-fun b!1831460 () Bool)

(assert (=> b!1831460 (= e!1170646 e!1170648)))

(declare-fun res!823636 () Bool)

(assert (=> b!1831460 (=> (not res!823636) (not e!1170648))))

(assert (=> b!1831460 (= res!823636 (not lt!711142))))

(declare-fun b!1831461 () Bool)

(declare-fun res!823639 () Bool)

(assert (=> b!1831461 (=> (not res!823639) (not e!1170649))))

(assert (=> b!1831461 (= res!823639 (isEmpty!12706 (tail!2732 (_1!11200 (findLongestMatchInner!514 (regex!3639 rule!580) Nil!20134 (size!15960 Nil!20134) input!3681 input!3681 (size!15960 input!3681))))))))

(declare-fun b!1831462 () Bool)

(assert (=> b!1831462 (= e!1170647 e!1170645)))

(declare-fun c!298734 () Bool)

(assert (=> b!1831462 (= c!298734 ((_ is EmptyLang!4967) (regex!3639 rule!580)))))

(declare-fun b!1831463 () Bool)

(assert (=> b!1831463 (= e!1170651 (not (= (head!4273 (_1!11200 (findLongestMatchInner!514 (regex!3639 rule!580) Nil!20134 (size!15960 Nil!20134) input!3681 input!3681 (size!15960 input!3681)))) (c!298402 (regex!3639 rule!580)))))))

(declare-fun b!1831464 () Bool)

(declare-fun res!823633 () Bool)

(assert (=> b!1831464 (=> (not res!823633) (not e!1170649))))

(assert (=> b!1831464 (= res!823633 (not call!114745))))

(declare-fun b!1831465 () Bool)

(assert (=> b!1831465 (= e!1170645 (not lt!711142))))

(assert (= (and d!560110 c!298733) b!1831458))

(assert (= (and d!560110 (not c!298733)) b!1831454))

(assert (= (and d!560110 c!298732) b!1831452))

(assert (= (and d!560110 (not c!298732)) b!1831462))

(assert (= (and b!1831462 c!298734) b!1831465))

(assert (= (and b!1831462 (not c!298734)) b!1831453))

(assert (= (and b!1831453 (not res!823634)) b!1831455))

(assert (= (and b!1831455 res!823638) b!1831464))

(assert (= (and b!1831464 res!823633) b!1831461))

(assert (= (and b!1831461 res!823639) b!1831459))

(assert (= (and b!1831455 (not res!823632)) b!1831460))

(assert (= (and b!1831460 res!823636) b!1831456))

(assert (= (and b!1831456 (not res!823637)) b!1831457))

(assert (= (and b!1831457 (not res!823635)) b!1831463))

(assert (= (or b!1831452 b!1831456 b!1831464) bm!114740))

(assert (=> bm!114740 m!2258205))

(declare-fun m!2259473 () Bool)

(assert (=> b!1831459 m!2259473))

(assert (=> b!1831458 m!2257861))

(declare-fun m!2259475 () Bool)

(assert (=> b!1831461 m!2259475))

(assert (=> b!1831461 m!2259475))

(declare-fun m!2259477 () Bool)

(assert (=> b!1831461 m!2259477))

(assert (=> d!560110 m!2258205))

(assert (=> d!560110 m!2257867))

(assert (=> b!1831454 m!2259473))

(assert (=> b!1831454 m!2259473))

(declare-fun m!2259479 () Bool)

(assert (=> b!1831454 m!2259479))

(assert (=> b!1831454 m!2259475))

(assert (=> b!1831454 m!2259479))

(assert (=> b!1831454 m!2259475))

(declare-fun m!2259481 () Bool)

(assert (=> b!1831454 m!2259481))

(assert (=> b!1831457 m!2259475))

(assert (=> b!1831457 m!2259475))

(assert (=> b!1831457 m!2259477))

(assert (=> b!1831463 m!2259473))

(assert (=> b!1830490 d!560110))

(declare-fun b!1831644 () Bool)

(declare-fun e!1170734 () tuple2!19596)

(declare-fun lt!711225 () tuple2!19596)

(assert (=> b!1831644 (= e!1170734 lt!711225)))

(declare-fun bm!114758 () Bool)

(declare-fun call!114765 () Bool)

(assert (=> bm!114758 (= call!114765 (nullable!1542 (regex!3639 rule!580)))))

(declare-fun b!1831645 () Bool)

(declare-fun c!298767 () Bool)

(assert (=> b!1831645 (= c!298767 call!114765)))

(declare-fun lt!711227 () Unit!34797)

(declare-fun lt!711236 () Unit!34797)

(assert (=> b!1831645 (= lt!711227 lt!711236)))

(declare-fun lt!711229 () C!10108)

(declare-fun lt!711221 () List!20204)

(assert (=> b!1831645 (= (++!5463 (++!5463 Nil!20134 (Cons!20134 lt!711229 Nil!20134)) lt!711221) input!3681)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!467 (List!20204 C!10108 List!20204 List!20204) Unit!34797)

(assert (=> b!1831645 (= lt!711236 (lemmaMoveElementToOtherListKeepsConcatEq!467 Nil!20134 lt!711229 lt!711221 input!3681))))

(assert (=> b!1831645 (= lt!711221 (tail!2732 input!3681))))

(assert (=> b!1831645 (= lt!711229 (head!4273 input!3681))))

(declare-fun lt!711211 () Unit!34797)

(declare-fun lt!711215 () Unit!34797)

(assert (=> b!1831645 (= lt!711211 lt!711215)))

(declare-fun getSuffix!970 (List!20204 List!20204) List!20204)

(assert (=> b!1831645 (isPrefix!1834 (++!5463 Nil!20134 (Cons!20134 (head!4273 (getSuffix!970 input!3681 Nil!20134)) Nil!20134)) input!3681)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!339 (List!20204 List!20204) Unit!34797)

(assert (=> b!1831645 (= lt!711215 (lemmaAddHeadSuffixToPrefixStillPrefix!339 Nil!20134 input!3681))))

(declare-fun lt!711233 () Unit!34797)

(declare-fun lt!711222 () Unit!34797)

(assert (=> b!1831645 (= lt!711233 lt!711222)))

(assert (=> b!1831645 (= lt!711222 (lemmaAddHeadSuffixToPrefixStillPrefix!339 Nil!20134 input!3681))))

(declare-fun lt!711231 () List!20204)

(assert (=> b!1831645 (= lt!711231 (++!5463 Nil!20134 (Cons!20134 (head!4273 input!3681) Nil!20134)))))

(declare-fun lt!711230 () Unit!34797)

(declare-fun e!1170738 () Unit!34797)

(assert (=> b!1831645 (= lt!711230 e!1170738)))

(declare-fun c!298762 () Bool)

(assert (=> b!1831645 (= c!298762 (= (size!15960 Nil!20134) (size!15960 input!3681)))))

(declare-fun lt!711218 () Unit!34797)

(declare-fun lt!711213 () Unit!34797)

(assert (=> b!1831645 (= lt!711218 lt!711213)))

(assert (=> b!1831645 (<= (size!15960 Nil!20134) (size!15960 input!3681))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!142 (List!20204 List!20204) Unit!34797)

(assert (=> b!1831645 (= lt!711213 (lemmaIsPrefixThenSmallerEqSize!142 Nil!20134 input!3681))))

(declare-fun e!1170735 () tuple2!19596)

(declare-fun e!1170737 () tuple2!19596)

(assert (=> b!1831645 (= e!1170735 e!1170737)))

(declare-fun b!1831646 () Bool)

(declare-fun Unit!34814 () Unit!34797)

(assert (=> b!1831646 (= e!1170738 Unit!34814)))

(declare-fun lt!711228 () Unit!34797)

(declare-fun call!114763 () Unit!34797)

(assert (=> b!1831646 (= lt!711228 call!114763)))

(declare-fun call!114767 () Bool)

(assert (=> b!1831646 call!114767))

(declare-fun lt!711212 () Unit!34797)

(assert (=> b!1831646 (= lt!711212 lt!711228)))

(declare-fun lt!711234 () Unit!34797)

(declare-fun call!114766 () Unit!34797)

(assert (=> b!1831646 (= lt!711234 call!114766)))

(assert (=> b!1831646 (= input!3681 Nil!20134)))

(declare-fun lt!711223 () Unit!34797)

(assert (=> b!1831646 (= lt!711223 lt!711234)))

(assert (=> b!1831646 false))

(declare-fun bm!114759 () Bool)

(declare-fun call!114764 () List!20204)

(assert (=> bm!114759 (= call!114764 (tail!2732 input!3681))))

(declare-fun bm!114760 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!299 (List!20204 List!20204 List!20204) Unit!34797)

(assert (=> bm!114760 (= call!114766 (lemmaIsPrefixSameLengthThenSameList!299 input!3681 Nil!20134 input!3681))))

(declare-fun b!1831648 () Bool)

(assert (=> b!1831648 (= e!1170737 e!1170734)))

(declare-fun call!114770 () tuple2!19596)

(assert (=> b!1831648 (= lt!711225 call!114770)))

(declare-fun c!298765 () Bool)

(assert (=> b!1831648 (= c!298765 (isEmpty!12706 (_1!11200 lt!711225)))))

(declare-fun b!1831649 () Bool)

(assert (=> b!1831649 (= e!1170737 call!114770)))

(declare-fun b!1831650 () Bool)

(declare-fun e!1170731 () tuple2!19596)

(assert (=> b!1831650 (= e!1170731 (tuple2!19597 Nil!20134 Nil!20134))))

(declare-fun call!114768 () Regex!4967)

(declare-fun bm!114761 () Bool)

(assert (=> bm!114761 (= call!114770 (findLongestMatchInner!514 call!114768 lt!711231 (+ (size!15960 Nil!20134) 1) call!114764 input!3681 (size!15960 input!3681)))))

(declare-fun bm!114762 () Bool)

(declare-fun call!114769 () C!10108)

(assert (=> bm!114762 (= call!114768 (derivativeStep!1306 (regex!3639 rule!580) call!114769))))

(declare-fun bm!114763 () Bool)

(assert (=> bm!114763 (= call!114769 (head!4273 input!3681))))

(declare-fun b!1831651 () Bool)

(declare-fun Unit!34815 () Unit!34797)

(assert (=> b!1831651 (= e!1170738 Unit!34815)))

(declare-fun b!1831652 () Bool)

(declare-fun e!1170736 () Bool)

(declare-fun lt!711210 () tuple2!19596)

(assert (=> b!1831652 (= e!1170736 (>= (size!15960 (_1!11200 lt!711210)) (size!15960 Nil!20134)))))

(declare-fun b!1831653 () Bool)

(assert (=> b!1831653 (= e!1170731 (tuple2!19597 Nil!20134 input!3681))))

(declare-fun bm!114764 () Bool)

(assert (=> bm!114764 (= call!114763 (lemmaIsPrefixRefl!1211 input!3681 input!3681))))

(declare-fun b!1831654 () Bool)

(declare-fun c!298766 () Bool)

(assert (=> b!1831654 (= c!298766 call!114765)))

(declare-fun lt!711226 () Unit!34797)

(declare-fun lt!711209 () Unit!34797)

(assert (=> b!1831654 (= lt!711226 lt!711209)))

(assert (=> b!1831654 (= input!3681 Nil!20134)))

(assert (=> b!1831654 (= lt!711209 call!114766)))

(declare-fun lt!711224 () Unit!34797)

(declare-fun lt!711217 () Unit!34797)

(assert (=> b!1831654 (= lt!711224 lt!711217)))

(assert (=> b!1831654 call!114767))

(assert (=> b!1831654 (= lt!711217 call!114763)))

(assert (=> b!1831654 (= e!1170735 e!1170731)))

(declare-fun b!1831655 () Bool)

(declare-fun e!1170733 () Bool)

(assert (=> b!1831655 (= e!1170733 e!1170736)))

(declare-fun res!823657 () Bool)

(assert (=> b!1831655 (=> res!823657 e!1170736)))

(assert (=> b!1831655 (= res!823657 (isEmpty!12706 (_1!11200 lt!711210)))))

(declare-fun bm!114765 () Bool)

(assert (=> bm!114765 (= call!114767 (isPrefix!1834 input!3681 input!3681))))

(declare-fun b!1831647 () Bool)

(declare-fun e!1170732 () tuple2!19596)

(assert (=> b!1831647 (= e!1170732 e!1170735)))

(declare-fun c!298763 () Bool)

(assert (=> b!1831647 (= c!298763 (= (size!15960 Nil!20134) (size!15960 input!3681)))))

(declare-fun d!560112 () Bool)

(assert (=> d!560112 e!1170733))

(declare-fun res!823656 () Bool)

(assert (=> d!560112 (=> (not res!823656) (not e!1170733))))

(assert (=> d!560112 (= res!823656 (= (++!5463 (_1!11200 lt!711210) (_2!11200 lt!711210)) input!3681))))

(assert (=> d!560112 (= lt!711210 e!1170732)))

(declare-fun c!298764 () Bool)

(declare-fun lostCause!621 (Regex!4967) Bool)

(assert (=> d!560112 (= c!298764 (lostCause!621 (regex!3639 rule!580)))))

(declare-fun lt!711220 () Unit!34797)

(declare-fun Unit!34816 () Unit!34797)

(assert (=> d!560112 (= lt!711220 Unit!34816)))

(assert (=> d!560112 (= (getSuffix!970 input!3681 Nil!20134) input!3681)))

(declare-fun lt!711214 () Unit!34797)

(declare-fun lt!711219 () Unit!34797)

(assert (=> d!560112 (= lt!711214 lt!711219)))

(declare-fun lt!711232 () List!20204)

(assert (=> d!560112 (= input!3681 lt!711232)))

(declare-fun lemmaSamePrefixThenSameSuffix!914 (List!20204 List!20204 List!20204 List!20204 List!20204) Unit!34797)

(assert (=> d!560112 (= lt!711219 (lemmaSamePrefixThenSameSuffix!914 Nil!20134 input!3681 Nil!20134 lt!711232 input!3681))))

(assert (=> d!560112 (= lt!711232 (getSuffix!970 input!3681 Nil!20134))))

(declare-fun lt!711235 () Unit!34797)

(declare-fun lt!711216 () Unit!34797)

(assert (=> d!560112 (= lt!711235 lt!711216)))

(assert (=> d!560112 (isPrefix!1834 Nil!20134 (++!5463 Nil!20134 input!3681))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1312 (List!20204 List!20204) Unit!34797)

(assert (=> d!560112 (= lt!711216 (lemmaConcatTwoListThenFirstIsPrefix!1312 Nil!20134 input!3681))))

(assert (=> d!560112 (validRegex!2024 (regex!3639 rule!580))))

(assert (=> d!560112 (= (findLongestMatchInner!514 (regex!3639 rule!580) Nil!20134 (size!15960 Nil!20134) input!3681 input!3681 (size!15960 input!3681)) lt!711210)))

(declare-fun b!1831656 () Bool)

(assert (=> b!1831656 (= e!1170734 (tuple2!19597 Nil!20134 input!3681))))

(declare-fun b!1831657 () Bool)

(assert (=> b!1831657 (= e!1170732 (tuple2!19597 Nil!20134 input!3681))))

(assert (= (and d!560112 c!298764) b!1831657))

(assert (= (and d!560112 (not c!298764)) b!1831647))

(assert (= (and b!1831647 c!298763) b!1831654))

(assert (= (and b!1831647 (not c!298763)) b!1831645))

(assert (= (and b!1831654 c!298766) b!1831650))

(assert (= (and b!1831654 (not c!298766)) b!1831653))

(assert (= (and b!1831645 c!298762) b!1831646))

(assert (= (and b!1831645 (not c!298762)) b!1831651))

(assert (= (and b!1831645 c!298767) b!1831648))

(assert (= (and b!1831645 (not c!298767)) b!1831649))

(assert (= (and b!1831648 c!298765) b!1831656))

(assert (= (and b!1831648 (not c!298765)) b!1831644))

(assert (= (or b!1831648 b!1831649) bm!114759))

(assert (= (or b!1831648 b!1831649) bm!114763))

(assert (= (or b!1831648 b!1831649) bm!114762))

(assert (= (or b!1831648 b!1831649) bm!114761))

(assert (= (or b!1831654 b!1831646) bm!114764))

(assert (= (or b!1831654 b!1831646) bm!114760))

(assert (= (or b!1831654 b!1831645) bm!114758))

(assert (= (or b!1831654 b!1831646) bm!114765))

(assert (= (and d!560112 res!823656) b!1831655))

(assert (= (and b!1831655 (not res!823657)) b!1831652))

(assert (=> bm!114758 m!2257861))

(assert (=> bm!114759 m!2258635))

(declare-fun m!2259573 () Bool)

(assert (=> b!1831652 m!2259573))

(assert (=> b!1831652 m!2258201))

(declare-fun m!2259575 () Bool)

(assert (=> b!1831648 m!2259575))

(declare-fun m!2259577 () Bool)

(assert (=> d!560112 m!2259577))

(declare-fun m!2259579 () Bool)

(assert (=> d!560112 m!2259579))

(declare-fun m!2259581 () Bool)

(assert (=> d!560112 m!2259581))

(declare-fun m!2259583 () Bool)

(assert (=> d!560112 m!2259583))

(declare-fun m!2259585 () Bool)

(assert (=> d!560112 m!2259585))

(assert (=> d!560112 m!2257867))

(assert (=> d!560112 m!2259583))

(declare-fun m!2259587 () Bool)

(assert (=> d!560112 m!2259587))

(declare-fun m!2259589 () Bool)

(assert (=> d!560112 m!2259589))

(declare-fun m!2259591 () Bool)

(assert (=> bm!114760 m!2259591))

(assert (=> bm!114764 m!2258025))

(assert (=> bm!114761 m!2258043))

(declare-fun m!2259593 () Bool)

(assert (=> bm!114761 m!2259593))

(assert (=> b!1831645 m!2258043))

(assert (=> b!1831645 m!2258201))

(declare-fun m!2259595 () Bool)

(assert (=> b!1831645 m!2259595))

(declare-fun m!2259597 () Bool)

(assert (=> b!1831645 m!2259597))

(assert (=> b!1831645 m!2258633))

(declare-fun m!2259599 () Bool)

(assert (=> b!1831645 m!2259599))

(declare-fun m!2259601 () Bool)

(assert (=> b!1831645 m!2259601))

(declare-fun m!2259603 () Bool)

(assert (=> b!1831645 m!2259603))

(declare-fun m!2259605 () Bool)

(assert (=> b!1831645 m!2259605))

(assert (=> b!1831645 m!2259587))

(assert (=> b!1831645 m!2259587))

(declare-fun m!2259607 () Bool)

(assert (=> b!1831645 m!2259607))

(assert (=> b!1831645 m!2258635))

(assert (=> b!1831645 m!2259599))

(declare-fun m!2259609 () Bool)

(assert (=> b!1831645 m!2259609))

(declare-fun m!2259611 () Bool)

(assert (=> b!1831645 m!2259611))

(assert (=> b!1831645 m!2259603))

(declare-fun m!2259613 () Bool)

(assert (=> b!1831655 m!2259613))

(assert (=> bm!114763 m!2258633))

(assert (=> bm!114765 m!2258023))

(declare-fun m!2259615 () Bool)

(assert (=> bm!114762 m!2259615))

(assert (=> b!1830490 d!560112))

(declare-fun d!560146 () Bool)

(declare-fun lt!711237 () Int)

(assert (=> d!560146 (>= lt!711237 0)))

(declare-fun e!1170739 () Int)

(assert (=> d!560146 (= lt!711237 e!1170739)))

(declare-fun c!298768 () Bool)

(assert (=> d!560146 (= c!298768 ((_ is Nil!20134) Nil!20134))))

(assert (=> d!560146 (= (size!15960 Nil!20134) lt!711237)))

(declare-fun b!1831658 () Bool)

(assert (=> b!1831658 (= e!1170739 0)))

(declare-fun b!1831659 () Bool)

(assert (=> b!1831659 (= e!1170739 (+ 1 (size!15960 (t!170569 Nil!20134))))))

(assert (= (and d!560146 c!298768) b!1831658))

(assert (= (and d!560146 (not c!298768)) b!1831659))

(declare-fun m!2259617 () Bool)

(assert (=> b!1831659 m!2259617))

(assert (=> b!1830490 d!560146))

(assert (=> b!1830490 d!559850))

(declare-fun d!560148 () Bool)

(assert (=> d!560148 (= (isEmpty!12706 (originalCharacters!4447 token!567)) ((_ is Nil!20134) (originalCharacters!4447 token!567)))))

(assert (=> d!559596 d!560148))

(declare-fun d!560150 () Bool)

(assert (=> d!560150 (= (head!4276 lt!710678) (h!25537 lt!710678))))

(assert (=> b!1830535 d!560150))

(assert (=> b!1830156 d!559980))

(assert (=> b!1830156 d!559794))

(assert (=> b!1830486 d!560112))

(assert (=> b!1830486 d!560146))

(declare-fun d!560152 () Bool)

(assert (=> d!560152 (= (isEmpty!12706 (_1!11200 (findLongestMatchInner!514 (regex!3639 rule!580) Nil!20134 (size!15960 Nil!20134) input!3681 input!3681 (size!15960 input!3681)))) ((_ is Nil!20134) (_1!11200 (findLongestMatchInner!514 (regex!3639 rule!580) Nil!20134 (size!15960 Nil!20134) input!3681 input!3681 (size!15960 input!3681)))))))

(assert (=> b!1830486 d!560152))

(declare-fun bs!407975 () Bool)

(declare-fun d!560154 () Bool)

(assert (= bs!407975 (and d!560154 d!559658)))

(declare-fun lambda!71972 () Int)

(assert (=> bs!407975 (= (and (= (toChars!5041 (transformation!3639 rule!580)) (toChars!5041 (transformation!3639 (h!25536 rules!4610)))) (= (toValue!5182 (transformation!3639 rule!580)) (toValue!5182 (transformation!3639 (h!25536 rules!4610))))) (= lambda!71972 lambda!71918))))

(declare-fun bs!407976 () Bool)

(assert (= bs!407976 (and d!560154 d!559714)))

(assert (=> bs!407976 (= lambda!71972 lambda!71920)))

(declare-fun bs!407977 () Bool)

(assert (= bs!407977 (and d!560154 d!560052)))

(assert (=> bs!407977 (= (and (= (toChars!5041 (transformation!3639 rule!580)) (toChars!5041 (transformation!3639 (h!25536 rs!808)))) (= (toValue!5182 (transformation!3639 rule!580)) (toValue!5182 (transformation!3639 (h!25536 rs!808))))) (= lambda!71972 lambda!71957))))

(declare-fun bs!407978 () Bool)

(assert (= bs!407978 (and d!560154 d!560068)))

(assert (=> bs!407978 (= (and (= (toChars!5041 (transformation!3639 rule!580)) (toChars!5041 (transformation!3639 (rule!5807 token!567)))) (= (toValue!5182 (transformation!3639 rule!580)) (toValue!5182 (transformation!3639 (rule!5807 token!567))))) (= lambda!71972 lambda!71958))))

(declare-fun b!1831664 () Bool)

(declare-fun e!1170742 () Bool)

(assert (=> b!1831664 (= e!1170742 true)))

(assert (=> d!560154 e!1170742))

(assert (= d!560154 b!1831664))

(assert (=> b!1831664 (< (dynLambda!10010 order!13027 (toValue!5182 (transformation!3639 rule!580))) (dynLambda!10014 order!13033 lambda!71972))))

(assert (=> b!1831664 (< (dynLambda!10013 order!13031 (toChars!5041 (transformation!3639 rule!580))) (dynLambda!10014 order!13033 lambda!71972))))

(assert (=> d!560154 (= (list!8179 (dynLambda!10003 (toChars!5041 (transformation!3639 rule!580)) (dynLambda!10004 (toValue!5182 (transformation!3639 rule!580)) (seqFromList!2596 (_1!11200 lt!710796))))) (list!8179 (seqFromList!2596 (_1!11200 lt!710796))))))

(declare-fun lt!711240 () Unit!34797)

(declare-fun ForallOf!365 (Int BalanceConc!13286) Unit!34797)

(assert (=> d!560154 (= lt!711240 (ForallOf!365 lambda!71972 (seqFromList!2596 (_1!11200 lt!710796))))))

(assert (=> d!560154 (= (lemmaSemiInverse!728 (transformation!3639 rule!580) (seqFromList!2596 (_1!11200 lt!710796))) lt!711240)))

(declare-fun b_lambda!60603 () Bool)

(assert (=> (not b_lambda!60603) (not d!560154)))

(declare-fun t!170807 () Bool)

(declare-fun tb!111981 () Bool)

(assert (=> (and b!1830640 (= (toChars!5041 (transformation!3639 (h!25536 (t!170570 rs!808)))) (toChars!5041 (transformation!3639 rule!580))) t!170807) tb!111981))

(declare-fun tp!518094 () Bool)

(declare-fun e!1170743 () Bool)

(declare-fun b!1831665 () Bool)

(assert (=> b!1831665 (= e!1170743 (and (inv!26196 (c!298403 (dynLambda!10003 (toChars!5041 (transformation!3639 rule!580)) (dynLambda!10004 (toValue!5182 (transformation!3639 rule!580)) (seqFromList!2596 (_1!11200 lt!710796)))))) tp!518094))))

(declare-fun result!134658 () Bool)

(assert (=> tb!111981 (= result!134658 (and (inv!26197 (dynLambda!10003 (toChars!5041 (transformation!3639 rule!580)) (dynLambda!10004 (toValue!5182 (transformation!3639 rule!580)) (seqFromList!2596 (_1!11200 lt!710796))))) e!1170743))))

(assert (= tb!111981 b!1831665))

(declare-fun m!2259619 () Bool)

(assert (=> b!1831665 m!2259619))

(declare-fun m!2259621 () Bool)

(assert (=> tb!111981 m!2259621))

(assert (=> d!560154 t!170807))

(declare-fun b_and!142637 () Bool)

(assert (= b_and!142609 (and (=> t!170807 result!134658) b_and!142637)))

(declare-fun t!170809 () Bool)

(declare-fun tb!111983 () Bool)

(assert (=> (and b!1830628 (= (toChars!5041 (transformation!3639 (h!25536 (t!170570 rules!4610)))) (toChars!5041 (transformation!3639 rule!580))) t!170809) tb!111983))

(declare-fun result!134660 () Bool)

(assert (= result!134660 result!134658))

(assert (=> d!560154 t!170809))

(declare-fun b_and!142639 () Bool)

(assert (= b_and!142607 (and (=> t!170809 result!134660) b_and!142639)))

(declare-fun t!170811 () Bool)

(declare-fun tb!111985 () Bool)

(assert (=> (and b!1830109 (= (toChars!5041 (transformation!3639 (h!25536 rules!4610))) (toChars!5041 (transformation!3639 rule!580))) t!170811) tb!111985))

(declare-fun result!134662 () Bool)

(assert (= result!134662 result!134658))

(assert (=> d!560154 t!170811))

(declare-fun b_and!142641 () Bool)

(assert (= b_and!142611 (and (=> t!170811 result!134662) b_and!142641)))

(declare-fun t!170813 () Bool)

(declare-fun tb!111987 () Bool)

(assert (=> (and b!1830095 (= (toChars!5041 (transformation!3639 (rule!5807 token!567))) (toChars!5041 (transformation!3639 rule!580))) t!170813) tb!111987))

(declare-fun result!134664 () Bool)

(assert (= result!134664 result!134658))

(assert (=> d!560154 t!170813))

(declare-fun b_and!142643 () Bool)

(assert (= b_and!142613 (and (=> t!170813 result!134664) b_and!142643)))

(declare-fun t!170815 () Bool)

(declare-fun tb!111989 () Bool)

(assert (=> (and b!1830100 (= (toChars!5041 (transformation!3639 rule!580)) (toChars!5041 (transformation!3639 rule!580))) t!170815) tb!111989))

(declare-fun result!134666 () Bool)

(assert (= result!134666 result!134658))

(assert (=> d!560154 t!170815))

(declare-fun b_and!142645 () Bool)

(assert (= b_and!142605 (and (=> t!170815 result!134666) b_and!142645)))

(declare-fun tb!111991 () Bool)

(declare-fun t!170817 () Bool)

(assert (=> (and b!1830099 (= (toChars!5041 (transformation!3639 (h!25536 rs!808))) (toChars!5041 (transformation!3639 rule!580))) t!170817) tb!111991))

(declare-fun result!134668 () Bool)

(assert (= result!134668 result!134658))

(assert (=> d!560154 t!170817))

(declare-fun b_and!142647 () Bool)

(assert (= b_and!142615 (and (=> t!170817 result!134668) b_and!142647)))

(declare-fun b_lambda!60605 () Bool)

(assert (=> (not b_lambda!60605) (not d!560154)))

(declare-fun tb!111993 () Bool)

(declare-fun t!170819 () Bool)

(assert (=> (and b!1830640 (= (toValue!5182 (transformation!3639 (h!25536 (t!170570 rs!808)))) (toValue!5182 (transformation!3639 rule!580))) t!170819) tb!111993))

(declare-fun result!134670 () Bool)

(assert (=> tb!111993 (= result!134670 (inv!21 (dynLambda!10004 (toValue!5182 (transformation!3639 rule!580)) (seqFromList!2596 (_1!11200 lt!710796)))))))

(declare-fun m!2259623 () Bool)

(assert (=> tb!111993 m!2259623))

(assert (=> d!560154 t!170819))

(declare-fun b_and!142649 () Bool)

(assert (= b_and!142573 (and (=> t!170819 result!134670) b_and!142649)))

(declare-fun tb!111995 () Bool)

(declare-fun t!170821 () Bool)

(assert (=> (and b!1830628 (= (toValue!5182 (transformation!3639 (h!25536 (t!170570 rules!4610)))) (toValue!5182 (transformation!3639 rule!580))) t!170821) tb!111995))

(declare-fun result!134672 () Bool)

(assert (= result!134672 result!134670))

(assert (=> d!560154 t!170821))

(declare-fun b_and!142651 () Bool)

(assert (= b_and!142579 (and (=> t!170821 result!134672) b_and!142651)))

(declare-fun t!170823 () Bool)

(declare-fun tb!111997 () Bool)

(assert (=> (and b!1830109 (= (toValue!5182 (transformation!3639 (h!25536 rules!4610))) (toValue!5182 (transformation!3639 rule!580))) t!170823) tb!111997))

(declare-fun result!134674 () Bool)

(assert (= result!134674 result!134670))

(assert (=> d!560154 t!170823))

(declare-fun b_and!142653 () Bool)

(assert (= b_and!142569 (and (=> t!170823 result!134674) b_and!142653)))

(declare-fun t!170825 () Bool)

(declare-fun tb!111999 () Bool)

(assert (=> (and b!1830099 (= (toValue!5182 (transformation!3639 (h!25536 rs!808))) (toValue!5182 (transformation!3639 rule!580))) t!170825) tb!111999))

(declare-fun result!134676 () Bool)

(assert (= result!134676 result!134670))

(assert (=> d!560154 t!170825))

(declare-fun b_and!142655 () Bool)

(assert (= b_and!142575 (and (=> t!170825 result!134676) b_and!142655)))

(declare-fun t!170827 () Bool)

(declare-fun tb!112001 () Bool)

(assert (=> (and b!1830100 (= (toValue!5182 (transformation!3639 rule!580)) (toValue!5182 (transformation!3639 rule!580))) t!170827) tb!112001))

(declare-fun result!134678 () Bool)

(assert (= result!134678 result!134670))

(assert (=> d!560154 t!170827))

(declare-fun b_and!142657 () Bool)

(assert (= b_and!142571 (and (=> t!170827 result!134678) b_and!142657)))

(declare-fun t!170829 () Bool)

(declare-fun tb!112003 () Bool)

(assert (=> (and b!1830095 (= (toValue!5182 (transformation!3639 (rule!5807 token!567))) (toValue!5182 (transformation!3639 rule!580))) t!170829) tb!112003))

(declare-fun result!134680 () Bool)

(assert (= result!134680 result!134670))

(assert (=> d!560154 t!170829))

(declare-fun b_and!142659 () Bool)

(assert (= b_and!142577 (and (=> t!170829 result!134680) b_and!142659)))

(assert (=> d!560154 m!2258207))

(declare-fun m!2259625 () Bool)

(assert (=> d!560154 m!2259625))

(assert (=> d!560154 m!2258207))

(declare-fun m!2259627 () Bool)

(assert (=> d!560154 m!2259627))

(assert (=> d!560154 m!2259625))

(declare-fun m!2259629 () Bool)

(assert (=> d!560154 m!2259629))

(assert (=> d!560154 m!2259629))

(declare-fun m!2259631 () Bool)

(assert (=> d!560154 m!2259631))

(assert (=> d!560154 m!2258207))

(declare-fun m!2259633 () Bool)

(assert (=> d!560154 m!2259633))

(assert (=> b!1830486 d!560154))

(assert (=> b!1830486 d!559850))

(declare-fun d!560156 () Bool)

(assert (=> d!560156 (= (seqFromList!2596 (_1!11200 lt!710796)) (fromListB!1185 (_1!11200 lt!710796)))))

(declare-fun bs!407979 () Bool)

(assert (= bs!407979 d!560156))

(declare-fun m!2259635 () Bool)

(assert (=> bs!407979 m!2259635))

(assert (=> b!1830486 d!560156))

(declare-fun d!560158 () Bool)

(declare-fun lt!711243 () Int)

(assert (=> d!560158 (= lt!711243 (size!15960 (list!8179 (seqFromList!2596 (_1!11200 lt!710796)))))))

(declare-fun size!15968 (Conc!6671) Int)

(assert (=> d!560158 (= lt!711243 (size!15968 (c!298403 (seqFromList!2596 (_1!11200 lt!710796)))))))

(assert (=> d!560158 (= (size!15965 (seqFromList!2596 (_1!11200 lt!710796))) lt!711243)))

(declare-fun bs!407980 () Bool)

(assert (= bs!407980 d!560158))

(assert (=> bs!407980 m!2258207))

(assert (=> bs!407980 m!2259633))

(assert (=> bs!407980 m!2259633))

(declare-fun m!2259637 () Bool)

(assert (=> bs!407980 m!2259637))

(declare-fun m!2259639 () Bool)

(assert (=> bs!407980 m!2259639))

(assert (=> b!1830486 d!560158))

(declare-fun d!560160 () Bool)

(assert (=> d!560160 (= (apply!5427 (transformation!3639 rule!580) (seqFromList!2596 (_1!11200 lt!710796))) (dynLambda!10004 (toValue!5182 (transformation!3639 rule!580)) (seqFromList!2596 (_1!11200 lt!710796))))))

(declare-fun b_lambda!60607 () Bool)

(assert (=> (not b_lambda!60607) (not d!560160)))

(assert (=> d!560160 t!170819))

(declare-fun b_and!142661 () Bool)

(assert (= b_and!142649 (and (=> t!170819 result!134670) b_and!142661)))

(assert (=> d!560160 t!170825))

(declare-fun b_and!142663 () Bool)

(assert (= b_and!142655 (and (=> t!170825 result!134676) b_and!142663)))

(assert (=> d!560160 t!170829))

(declare-fun b_and!142665 () Bool)

(assert (= b_and!142659 (and (=> t!170829 result!134680) b_and!142665)))

(assert (=> d!560160 t!170827))

(declare-fun b_and!142667 () Bool)

(assert (= b_and!142657 (and (=> t!170827 result!134678) b_and!142667)))

(assert (=> d!560160 t!170823))

(declare-fun b_and!142669 () Bool)

(assert (= b_and!142653 (and (=> t!170823 result!134674) b_and!142669)))

(assert (=> d!560160 t!170821))

(declare-fun b_and!142671 () Bool)

(assert (= b_and!142651 (and (=> t!170821 result!134672) b_and!142671)))

(assert (=> d!560160 m!2258207))

(assert (=> d!560160 m!2259625))

(assert (=> b!1830486 d!560160))

(declare-fun d!560162 () Bool)

(declare-fun e!1170747 () Bool)

(assert (=> d!560162 e!1170747))

(declare-fun res!823660 () Bool)

(assert (=> d!560162 (=> res!823660 e!1170747)))

(assert (=> d!560162 (= res!823660 (isEmpty!12706 (_1!11200 (findLongestMatchInner!514 (regex!3639 rule!580) Nil!20134 (size!15960 Nil!20134) input!3681 input!3681 (size!15960 input!3681)))))))

(declare-fun lt!711246 () Unit!34797)

(declare-fun choose!11532 (Regex!4967 List!20204) Unit!34797)

(assert (=> d!560162 (= lt!711246 (choose!11532 (regex!3639 rule!580) input!3681))))

(assert (=> d!560162 (validRegex!2024 (regex!3639 rule!580))))

(assert (=> d!560162 (= (longestMatchIsAcceptedByMatchOrIsEmpty!498 (regex!3639 rule!580) input!3681) lt!711246)))

(declare-fun b!1831668 () Bool)

(assert (=> b!1831668 (= e!1170747 (matchR!2430 (regex!3639 rule!580) (_1!11200 (findLongestMatchInner!514 (regex!3639 rule!580) Nil!20134 (size!15960 Nil!20134) input!3681 input!3681 (size!15960 input!3681)))))))

(assert (= (and d!560162 (not res!823660)) b!1831668))

(declare-fun m!2259641 () Bool)

(assert (=> d!560162 m!2259641))

(assert (=> d!560162 m!2258201))

(assert (=> d!560162 m!2258205))

(assert (=> d!560162 m!2258201))

(assert (=> d!560162 m!2258043))

(assert (=> d!560162 m!2258211))

(assert (=> d!560162 m!2257867))

(assert (=> d!560162 m!2258043))

(assert (=> b!1831668 m!2258201))

(assert (=> b!1831668 m!2258043))

(assert (=> b!1831668 m!2258201))

(assert (=> b!1831668 m!2258043))

(assert (=> b!1831668 m!2258211))

(assert (=> b!1831668 m!2258231))

(assert (=> b!1830486 d!560162))

(declare-fun d!560164 () Bool)

(declare-fun charsToInt!0 (List!20203) (_ BitVec 32))

(assert (=> d!560164 (= (inv!16 (value!113378 token!567)) (= (charsToInt!0 (text!26550 (value!113378 token!567))) (value!113369 (value!113378 token!567))))))

(declare-fun bs!407981 () Bool)

(assert (= bs!407981 d!560164))

(declare-fun m!2259643 () Bool)

(assert (=> bs!407981 m!2259643))

(assert (=> b!1830382 d!560164))

(assert (=> d!559482 d!560106))

(assert (=> d!559482 d!559896))

(declare-fun b!1831669 () Bool)

(declare-fun e!1170748 () Bool)

(declare-fun tp!518095 () Bool)

(assert (=> b!1831669 (= e!1170748 (and tp_is_empty!8169 tp!518095))))

(assert (=> b!1830610 (= tp!517874 e!1170748)))

(assert (= (and b!1830610 ((_ is Cons!20134) (t!170569 (t!170569 input!3681)))) b!1831669))

(declare-fun b!1831673 () Bool)

(declare-fun e!1170749 () Bool)

(declare-fun tp!518100 () Bool)

(declare-fun tp!518097 () Bool)

(assert (=> b!1831673 (= e!1170749 (and tp!518100 tp!518097))))

(declare-fun b!1831670 () Bool)

(assert (=> b!1831670 (= e!1170749 tp_is_empty!8169)))

(declare-fun b!1831671 () Bool)

(declare-fun tp!518099 () Bool)

(declare-fun tp!518096 () Bool)

(assert (=> b!1831671 (= e!1170749 (and tp!518099 tp!518096))))

(assert (=> b!1830613 (= tp!517879 e!1170749)))

(declare-fun b!1831672 () Bool)

(declare-fun tp!518098 () Bool)

(assert (=> b!1831672 (= e!1170749 tp!518098)))

(assert (= (and b!1830613 ((_ is ElementMatch!4967) (regOne!10446 (regex!3639 (h!25536 rs!808))))) b!1831670))

(assert (= (and b!1830613 ((_ is Concat!8696) (regOne!10446 (regex!3639 (h!25536 rs!808))))) b!1831671))

(assert (= (and b!1830613 ((_ is Star!4967) (regOne!10446 (regex!3639 (h!25536 rs!808))))) b!1831672))

(assert (= (and b!1830613 ((_ is Union!4967) (regOne!10446 (regex!3639 (h!25536 rs!808))))) b!1831673))

(declare-fun b!1831677 () Bool)

(declare-fun e!1170750 () Bool)

(declare-fun tp!518105 () Bool)

(declare-fun tp!518102 () Bool)

(assert (=> b!1831677 (= e!1170750 (and tp!518105 tp!518102))))

(declare-fun b!1831674 () Bool)

(assert (=> b!1831674 (= e!1170750 tp_is_empty!8169)))

(declare-fun b!1831675 () Bool)

(declare-fun tp!518104 () Bool)

(declare-fun tp!518101 () Bool)

(assert (=> b!1831675 (= e!1170750 (and tp!518104 tp!518101))))

(assert (=> b!1830613 (= tp!517876 e!1170750)))

(declare-fun b!1831676 () Bool)

(declare-fun tp!518103 () Bool)

(assert (=> b!1831676 (= e!1170750 tp!518103)))

(assert (= (and b!1830613 ((_ is ElementMatch!4967) (regTwo!10446 (regex!3639 (h!25536 rs!808))))) b!1831674))

(assert (= (and b!1830613 ((_ is Concat!8696) (regTwo!10446 (regex!3639 (h!25536 rs!808))))) b!1831675))

(assert (= (and b!1830613 ((_ is Star!4967) (regTwo!10446 (regex!3639 (h!25536 rs!808))))) b!1831676))

(assert (= (and b!1830613 ((_ is Union!4967) (regTwo!10446 (regex!3639 (h!25536 rs!808))))) b!1831677))

(declare-fun tp!518113 () Bool)

(declare-fun tp!518114 () Bool)

(declare-fun e!1170756 () Bool)

(declare-fun b!1831686 () Bool)

(assert (=> b!1831686 (= e!1170756 (and (inv!26196 (left!16092 (c!298403 (dynLambda!10003 (toChars!5041 (transformation!3639 (rule!5807 token!567))) (value!113378 token!567))))) tp!518114 (inv!26196 (right!16422 (c!298403 (dynLambda!10003 (toChars!5041 (transformation!3639 (rule!5807 token!567))) (value!113378 token!567))))) tp!518113))))

(declare-fun b!1831688 () Bool)

(declare-fun e!1170755 () Bool)

(declare-fun tp!518112 () Bool)

(assert (=> b!1831688 (= e!1170755 tp!518112)))

(declare-fun b!1831687 () Bool)

(declare-fun inv!26203 (IArray!13347) Bool)

(assert (=> b!1831687 (= e!1170756 (and (inv!26203 (xs!9547 (c!298403 (dynLambda!10003 (toChars!5041 (transformation!3639 (rule!5807 token!567))) (value!113378 token!567))))) e!1170755))))

(assert (=> b!1830281 (= tp!517853 (and (inv!26196 (c!298403 (dynLambda!10003 (toChars!5041 (transformation!3639 (rule!5807 token!567))) (value!113378 token!567)))) e!1170756))))

(assert (= (and b!1830281 ((_ is Node!6671) (c!298403 (dynLambda!10003 (toChars!5041 (transformation!3639 (rule!5807 token!567))) (value!113378 token!567))))) b!1831686))

(assert (= b!1831687 b!1831688))

(assert (= (and b!1830281 ((_ is Leaf!9711) (c!298403 (dynLambda!10003 (toChars!5041 (transformation!3639 (rule!5807 token!567))) (value!113378 token!567))))) b!1831687))

(declare-fun m!2259645 () Bool)

(assert (=> b!1831686 m!2259645))

(declare-fun m!2259647 () Bool)

(assert (=> b!1831686 m!2259647))

(declare-fun m!2259649 () Bool)

(assert (=> b!1831687 m!2259649))

(assert (=> b!1830281 m!2257981))

(declare-fun b!1831692 () Bool)

(declare-fun e!1170757 () Bool)

(declare-fun tp!518119 () Bool)

(declare-fun tp!518116 () Bool)

(assert (=> b!1831692 (= e!1170757 (and tp!518119 tp!518116))))

(declare-fun b!1831689 () Bool)

(assert (=> b!1831689 (= e!1170757 tp_is_empty!8169)))

(declare-fun b!1831690 () Bool)

(declare-fun tp!518118 () Bool)

(declare-fun tp!518115 () Bool)

(assert (=> b!1831690 (= e!1170757 (and tp!518118 tp!518115))))

(assert (=> b!1830614 (= tp!517878 e!1170757)))

(declare-fun b!1831691 () Bool)

(declare-fun tp!518117 () Bool)

(assert (=> b!1831691 (= e!1170757 tp!518117)))

(assert (= (and b!1830614 ((_ is ElementMatch!4967) (reg!5296 (regex!3639 (h!25536 rs!808))))) b!1831689))

(assert (= (and b!1830614 ((_ is Concat!8696) (reg!5296 (regex!3639 (h!25536 rs!808))))) b!1831690))

(assert (= (and b!1830614 ((_ is Star!4967) (reg!5296 (regex!3639 (h!25536 rs!808))))) b!1831691))

(assert (= (and b!1830614 ((_ is Union!4967) (reg!5296 (regex!3639 (h!25536 rs!808))))) b!1831692))

(declare-fun b!1831696 () Bool)

(declare-fun e!1170758 () Bool)

(declare-fun tp!518124 () Bool)

(declare-fun tp!518121 () Bool)

(assert (=> b!1831696 (= e!1170758 (and tp!518124 tp!518121))))

(declare-fun b!1831693 () Bool)

(assert (=> b!1831693 (= e!1170758 tp_is_empty!8169)))

(declare-fun b!1831694 () Bool)

(declare-fun tp!518123 () Bool)

(declare-fun tp!518120 () Bool)

(assert (=> b!1831694 (= e!1170758 (and tp!518123 tp!518120))))

(assert (=> b!1830630 (= tp!517896 e!1170758)))

(declare-fun b!1831695 () Bool)

(declare-fun tp!518122 () Bool)

(assert (=> b!1831695 (= e!1170758 tp!518122)))

(assert (= (and b!1830630 ((_ is ElementMatch!4967) (regOne!10446 (regex!3639 (h!25536 rules!4610))))) b!1831693))

(assert (= (and b!1830630 ((_ is Concat!8696) (regOne!10446 (regex!3639 (h!25536 rules!4610))))) b!1831694))

(assert (= (and b!1830630 ((_ is Star!4967) (regOne!10446 (regex!3639 (h!25536 rules!4610))))) b!1831695))

(assert (= (and b!1830630 ((_ is Union!4967) (regOne!10446 (regex!3639 (h!25536 rules!4610))))) b!1831696))

(declare-fun b!1831700 () Bool)

(declare-fun e!1170759 () Bool)

(declare-fun tp!518129 () Bool)

(declare-fun tp!518126 () Bool)

(assert (=> b!1831700 (= e!1170759 (and tp!518129 tp!518126))))

(declare-fun b!1831697 () Bool)

(assert (=> b!1831697 (= e!1170759 tp_is_empty!8169)))

(declare-fun b!1831698 () Bool)

(declare-fun tp!518128 () Bool)

(declare-fun tp!518125 () Bool)

(assert (=> b!1831698 (= e!1170759 (and tp!518128 tp!518125))))

(assert (=> b!1830630 (= tp!517893 e!1170759)))

(declare-fun b!1831699 () Bool)

(declare-fun tp!518127 () Bool)

(assert (=> b!1831699 (= e!1170759 tp!518127)))

(assert (= (and b!1830630 ((_ is ElementMatch!4967) (regTwo!10446 (regex!3639 (h!25536 rules!4610))))) b!1831697))

(assert (= (and b!1830630 ((_ is Concat!8696) (regTwo!10446 (regex!3639 (h!25536 rules!4610))))) b!1831698))

(assert (= (and b!1830630 ((_ is Star!4967) (regTwo!10446 (regex!3639 (h!25536 rules!4610))))) b!1831699))

(assert (= (and b!1830630 ((_ is Union!4967) (regTwo!10446 (regex!3639 (h!25536 rules!4610))))) b!1831700))

(declare-fun b!1831704 () Bool)

(declare-fun e!1170760 () Bool)

(declare-fun tp!518134 () Bool)

(declare-fun tp!518131 () Bool)

(assert (=> b!1831704 (= e!1170760 (and tp!518134 tp!518131))))

(declare-fun b!1831701 () Bool)

(assert (=> b!1831701 (= e!1170760 tp_is_empty!8169)))

(declare-fun b!1831702 () Bool)

(declare-fun tp!518133 () Bool)

(declare-fun tp!518130 () Bool)

(assert (=> b!1831702 (= e!1170760 (and tp!518133 tp!518130))))

(assert (=> b!1830639 (= tp!517904 e!1170760)))

(declare-fun b!1831703 () Bool)

(declare-fun tp!518132 () Bool)

(assert (=> b!1831703 (= e!1170760 tp!518132)))

(assert (= (and b!1830639 ((_ is ElementMatch!4967) (regex!3639 (h!25536 (t!170570 rs!808))))) b!1831701))

(assert (= (and b!1830639 ((_ is Concat!8696) (regex!3639 (h!25536 (t!170570 rs!808))))) b!1831702))

(assert (= (and b!1830639 ((_ is Star!4967) (regex!3639 (h!25536 (t!170570 rs!808))))) b!1831703))

(assert (= (and b!1830639 ((_ is Union!4967) (regex!3639 (h!25536 (t!170570 rs!808))))) b!1831704))

(declare-fun b!1831707 () Bool)

(declare-fun b_free!51203 () Bool)

(declare-fun b_next!51907 () Bool)

(assert (=> b!1831707 (= b_free!51203 (not b_next!51907))))

(declare-fun tb!112005 () Bool)

(declare-fun t!170831 () Bool)

(assert (=> (and b!1831707 (= (toValue!5182 (transformation!3639 (h!25536 (t!170570 (t!170570 rules!4610))))) (toValue!5182 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710795)))))) t!170831) tb!112005))

(declare-fun result!134684 () Bool)

(assert (= result!134684 result!134512))

(assert (=> d!559670 t!170831))

(declare-fun tb!112007 () Bool)

(declare-fun t!170833 () Bool)

(assert (=> (and b!1831707 (= (toValue!5182 (transformation!3639 (h!25536 (t!170570 (t!170570 rules!4610))))) (toValue!5182 (transformation!3639 rule!580))) t!170833) tb!112007))

(declare-fun result!134686 () Bool)

(assert (= result!134686 result!134548))

(assert (=> d!559832 t!170833))

(declare-fun t!170835 () Bool)

(declare-fun tb!112009 () Bool)

(assert (=> (and b!1831707 (= (toValue!5182 (transformation!3639 (h!25536 (t!170570 (t!170570 rules!4610))))) (toValue!5182 (transformation!3639 rule!580))) t!170835) tb!112009))

(declare-fun result!134688 () Bool)

(assert (= result!134688 result!134670))

(assert (=> d!560154 t!170835))

(declare-fun tb!112011 () Bool)

(declare-fun t!170837 () Bool)

(assert (=> (and b!1831707 (= (toValue!5182 (transformation!3639 (h!25536 (t!170570 (t!170570 rules!4610))))) (toValue!5182 (transformation!3639 rule!580))) t!170837) tb!112011))

(declare-fun result!134690 () Bool)

(assert (= result!134690 result!134428))

(assert (=> d!559562 t!170837))

(assert (=> d!560160 t!170835))

(declare-fun tb!112013 () Bool)

(declare-fun t!170839 () Bool)

(assert (=> (and b!1831707 (= (toValue!5182 (transformation!3639 (h!25536 (t!170570 (t!170570 rules!4610))))) (toValue!5182 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710749)))))) t!170839) tb!112013))

(declare-fun result!134692 () Bool)

(assert (= result!134692 result!134560))

(assert (=> d!559982 t!170839))

(declare-fun tp!518138 () Bool)

(declare-fun b_and!142673 () Bool)

(assert (=> b!1831707 (= tp!518138 (and (=> t!170831 result!134684) (=> t!170833 result!134686) (=> t!170837 result!134690) (=> t!170835 result!134688) (=> t!170839 result!134692) b_and!142673))))

(declare-fun b_free!51205 () Bool)

(declare-fun b_next!51909 () Bool)

(assert (=> b!1831707 (= b_free!51205 (not b_next!51909))))

(declare-fun tb!112015 () Bool)

(declare-fun t!170841 () Bool)

(assert (=> (and b!1831707 (= (toChars!5041 (transformation!3639 (h!25536 (t!170570 (t!170570 rules!4610))))) (toChars!5041 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710749)))))) t!170841) tb!112015))

(declare-fun result!134694 () Bool)

(assert (= result!134694 result!134500))

(assert (=> d!559652 t!170841))

(declare-fun tb!112017 () Bool)

(declare-fun t!170843 () Bool)

(assert (=> (and b!1831707 (= (toChars!5041 (transformation!3639 (h!25536 (t!170570 (t!170570 rules!4610))))) (toChars!5041 (transformation!3639 rule!580))) t!170843) tb!112017))

(declare-fun result!134696 () Bool)

(assert (= result!134696 result!134658))

(assert (=> d!560154 t!170843))

(declare-fun t!170845 () Bool)

(declare-fun tb!112019 () Bool)

(assert (=> (and b!1831707 (= (toChars!5041 (transformation!3639 (h!25536 (t!170570 (t!170570 rules!4610))))) (toChars!5041 (transformation!3639 (rule!5807 token!567)))) t!170845) tb!112019))

(declare-fun result!134698 () Bool)

(assert (= result!134698 result!134408))

(assert (=> d!559502 t!170845))

(declare-fun tb!112021 () Bool)

(declare-fun t!170847 () Bool)

(assert (=> (and b!1831707 (= (toChars!5041 (transformation!3639 (h!25536 (t!170570 (t!170570 rules!4610))))) (toChars!5041 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710795)))))) t!170847) tb!112021))

(declare-fun result!134700 () Bool)

(assert (= result!134700 result!134596))

(assert (=> d!560036 t!170847))

(assert (=> b!1830574 t!170845))

(declare-fun tp!518137 () Bool)

(declare-fun b_and!142675 () Bool)

(assert (=> b!1831707 (= tp!518137 (and (=> t!170845 result!134698) (=> t!170847 result!134700) (=> t!170841 result!134694) (=> t!170843 result!134696) b_and!142675))))

(declare-fun e!1170764 () Bool)

(assert (=> b!1831707 (= e!1170764 (and tp!518138 tp!518137))))

(declare-fun e!1170763 () Bool)

(declare-fun b!1831706 () Bool)

(declare-fun tp!518135 () Bool)

(assert (=> b!1831706 (= e!1170763 (and tp!518135 (inv!26189 (tag!4053 (h!25536 (t!170570 (t!170570 rules!4610))))) (inv!26192 (transformation!3639 (h!25536 (t!170570 (t!170570 rules!4610))))) e!1170764))))

(declare-fun b!1831705 () Bool)

(declare-fun e!1170762 () Bool)

(declare-fun tp!518136 () Bool)

(assert (=> b!1831705 (= e!1170762 (and e!1170763 tp!518136))))

(assert (=> b!1830626 (= tp!517890 e!1170762)))

(assert (= b!1831706 b!1831707))

(assert (= b!1831705 b!1831706))

(assert (= (and b!1830626 ((_ is Cons!20135) (t!170570 (t!170570 rules!4610)))) b!1831705))

(declare-fun m!2259651 () Bool)

(assert (=> b!1831706 m!2259651))

(declare-fun m!2259653 () Bool)

(assert (=> b!1831706 m!2259653))

(declare-fun b!1831711 () Bool)

(declare-fun e!1170765 () Bool)

(declare-fun tp!518143 () Bool)

(declare-fun tp!518140 () Bool)

(assert (=> b!1831711 (= e!1170765 (and tp!518143 tp!518140))))

(declare-fun b!1831708 () Bool)

(assert (=> b!1831708 (= e!1170765 tp_is_empty!8169)))

(declare-fun b!1831709 () Bool)

(declare-fun tp!518142 () Bool)

(declare-fun tp!518139 () Bool)

(assert (=> b!1831709 (= e!1170765 (and tp!518142 tp!518139))))

(assert (=> b!1830637 (= tp!517903 e!1170765)))

(declare-fun b!1831710 () Bool)

(declare-fun tp!518141 () Bool)

(assert (=> b!1831710 (= e!1170765 tp!518141)))

(assert (= (and b!1830637 ((_ is ElementMatch!4967) (regOne!10447 (regex!3639 (rule!5807 token!567))))) b!1831708))

(assert (= (and b!1830637 ((_ is Concat!8696) (regOne!10447 (regex!3639 (rule!5807 token!567))))) b!1831709))

(assert (= (and b!1830637 ((_ is Star!4967) (regOne!10447 (regex!3639 (rule!5807 token!567))))) b!1831710))

(assert (= (and b!1830637 ((_ is Union!4967) (regOne!10447 (regex!3639 (rule!5807 token!567))))) b!1831711))

(declare-fun b!1831715 () Bool)

(declare-fun e!1170766 () Bool)

(declare-fun tp!518148 () Bool)

(declare-fun tp!518145 () Bool)

(assert (=> b!1831715 (= e!1170766 (and tp!518148 tp!518145))))

(declare-fun b!1831712 () Bool)

(assert (=> b!1831712 (= e!1170766 tp_is_empty!8169)))

(declare-fun b!1831713 () Bool)

(declare-fun tp!518147 () Bool)

(declare-fun tp!518144 () Bool)

(assert (=> b!1831713 (= e!1170766 (and tp!518147 tp!518144))))

(assert (=> b!1830637 (= tp!517900 e!1170766)))

(declare-fun b!1831714 () Bool)

(declare-fun tp!518146 () Bool)

(assert (=> b!1831714 (= e!1170766 tp!518146)))

(assert (= (and b!1830637 ((_ is ElementMatch!4967) (regTwo!10447 (regex!3639 (rule!5807 token!567))))) b!1831712))

(assert (= (and b!1830637 ((_ is Concat!8696) (regTwo!10447 (regex!3639 (rule!5807 token!567))))) b!1831713))

(assert (= (and b!1830637 ((_ is Star!4967) (regTwo!10447 (regex!3639 (rule!5807 token!567))))) b!1831714))

(assert (= (and b!1830637 ((_ is Union!4967) (regTwo!10447 (regex!3639 (rule!5807 token!567))))) b!1831715))

(declare-fun b!1831716 () Bool)

(declare-fun e!1170767 () Bool)

(declare-fun tp!518149 () Bool)

(assert (=> b!1831716 (= e!1170767 (and tp_is_empty!8169 tp!518149))))

(assert (=> b!1830633 (= tp!517898 e!1170767)))

(assert (= (and b!1830633 ((_ is Cons!20134) (t!170569 (originalCharacters!4447 token!567)))) b!1831716))

(declare-fun b!1831720 () Bool)

(declare-fun e!1170768 () Bool)

(declare-fun tp!518154 () Bool)

(declare-fun tp!518151 () Bool)

(assert (=> b!1831720 (= e!1170768 (and tp!518154 tp!518151))))

(declare-fun b!1831717 () Bool)

(assert (=> b!1831717 (= e!1170768 tp_is_empty!8169)))

(declare-fun b!1831718 () Bool)

(declare-fun tp!518153 () Bool)

(declare-fun tp!518150 () Bool)

(assert (=> b!1831718 (= e!1170768 (and tp!518153 tp!518150))))

(assert (=> b!1830627 (= tp!517889 e!1170768)))

(declare-fun b!1831719 () Bool)

(declare-fun tp!518152 () Bool)

(assert (=> b!1831719 (= e!1170768 tp!518152)))

(assert (= (and b!1830627 ((_ is ElementMatch!4967) (regex!3639 (h!25536 (t!170570 rules!4610))))) b!1831717))

(assert (= (and b!1830627 ((_ is Concat!8696) (regex!3639 (h!25536 (t!170570 rules!4610))))) b!1831718))

(assert (= (and b!1830627 ((_ is Star!4967) (regex!3639 (h!25536 (t!170570 rules!4610))))) b!1831719))

(assert (= (and b!1830627 ((_ is Union!4967) (regex!3639 (h!25536 (t!170570 rules!4610))))) b!1831720))

(declare-fun b!1831724 () Bool)

(declare-fun e!1170769 () Bool)

(declare-fun tp!518159 () Bool)

(declare-fun tp!518156 () Bool)

(assert (=> b!1831724 (= e!1170769 (and tp!518159 tp!518156))))

(declare-fun b!1831721 () Bool)

(assert (=> b!1831721 (= e!1170769 tp_is_empty!8169)))

(declare-fun b!1831722 () Bool)

(declare-fun tp!518158 () Bool)

(declare-fun tp!518155 () Bool)

(assert (=> b!1831722 (= e!1170769 (and tp!518158 tp!518155))))

(assert (=> b!1830600 (= tp!517869 e!1170769)))

(declare-fun b!1831723 () Bool)

(declare-fun tp!518157 () Bool)

(assert (=> b!1831723 (= e!1170769 tp!518157)))

(assert (= (and b!1830600 ((_ is ElementMatch!4967) (reg!5296 (regex!3639 rule!580)))) b!1831721))

(assert (= (and b!1830600 ((_ is Concat!8696) (reg!5296 (regex!3639 rule!580)))) b!1831722))

(assert (= (and b!1830600 ((_ is Star!4967) (reg!5296 (regex!3639 rule!580)))) b!1831723))

(assert (= (and b!1830600 ((_ is Union!4967) (reg!5296 (regex!3639 rule!580)))) b!1831724))

(declare-fun b!1831725 () Bool)

(declare-fun e!1170770 () Bool)

(declare-fun tp!518160 () Bool)

(assert (=> b!1831725 (= e!1170770 (and tp_is_empty!8169 tp!518160))))

(assert (=> b!1830611 (= tp!517875 e!1170770)))

(assert (= (and b!1830611 ((_ is Cons!20134) (t!170569 (t!170569 suffix!1698)))) b!1831725))

(declare-fun b!1831729 () Bool)

(declare-fun e!1170771 () Bool)

(declare-fun tp!518165 () Bool)

(declare-fun tp!518162 () Bool)

(assert (=> b!1831729 (= e!1170771 (and tp!518165 tp!518162))))

(declare-fun b!1831726 () Bool)

(assert (=> b!1831726 (= e!1170771 tp_is_empty!8169)))

(declare-fun b!1831727 () Bool)

(declare-fun tp!518164 () Bool)

(declare-fun tp!518161 () Bool)

(assert (=> b!1831727 (= e!1170771 (and tp!518164 tp!518161))))

(assert (=> b!1830631 (= tp!517895 e!1170771)))

(declare-fun b!1831728 () Bool)

(declare-fun tp!518163 () Bool)

(assert (=> b!1831728 (= e!1170771 tp!518163)))

(assert (= (and b!1830631 ((_ is ElementMatch!4967) (reg!5296 (regex!3639 (h!25536 rules!4610))))) b!1831726))

(assert (= (and b!1830631 ((_ is Concat!8696) (reg!5296 (regex!3639 (h!25536 rules!4610))))) b!1831727))

(assert (= (and b!1830631 ((_ is Star!4967) (reg!5296 (regex!3639 (h!25536 rules!4610))))) b!1831728))

(assert (= (and b!1830631 ((_ is Union!4967) (reg!5296 (regex!3639 (h!25536 rules!4610))))) b!1831729))

(declare-fun b!1831733 () Bool)

(declare-fun e!1170772 () Bool)

(declare-fun tp!518170 () Bool)

(declare-fun tp!518167 () Bool)

(assert (=> b!1831733 (= e!1170772 (and tp!518170 tp!518167))))

(declare-fun b!1831730 () Bool)

(assert (=> b!1831730 (= e!1170772 tp_is_empty!8169)))

(declare-fun b!1831731 () Bool)

(declare-fun tp!518169 () Bool)

(declare-fun tp!518166 () Bool)

(assert (=> b!1831731 (= e!1170772 (and tp!518169 tp!518166))))

(assert (=> b!1830599 (= tp!517870 e!1170772)))

(declare-fun b!1831732 () Bool)

(declare-fun tp!518168 () Bool)

(assert (=> b!1831732 (= e!1170772 tp!518168)))

(assert (= (and b!1830599 ((_ is ElementMatch!4967) (regOne!10446 (regex!3639 rule!580)))) b!1831730))

(assert (= (and b!1830599 ((_ is Concat!8696) (regOne!10446 (regex!3639 rule!580)))) b!1831731))

(assert (= (and b!1830599 ((_ is Star!4967) (regOne!10446 (regex!3639 rule!580)))) b!1831732))

(assert (= (and b!1830599 ((_ is Union!4967) (regOne!10446 (regex!3639 rule!580)))) b!1831733))

(declare-fun b!1831737 () Bool)

(declare-fun e!1170773 () Bool)

(declare-fun tp!518175 () Bool)

(declare-fun tp!518172 () Bool)

(assert (=> b!1831737 (= e!1170773 (and tp!518175 tp!518172))))

(declare-fun b!1831734 () Bool)

(assert (=> b!1831734 (= e!1170773 tp_is_empty!8169)))

(declare-fun b!1831735 () Bool)

(declare-fun tp!518174 () Bool)

(declare-fun tp!518171 () Bool)

(assert (=> b!1831735 (= e!1170773 (and tp!518174 tp!518171))))

(assert (=> b!1830599 (= tp!517867 e!1170773)))

(declare-fun b!1831736 () Bool)

(declare-fun tp!518173 () Bool)

(assert (=> b!1831736 (= e!1170773 tp!518173)))

(assert (= (and b!1830599 ((_ is ElementMatch!4967) (regTwo!10446 (regex!3639 rule!580)))) b!1831734))

(assert (= (and b!1830599 ((_ is Concat!8696) (regTwo!10446 (regex!3639 rule!580)))) b!1831735))

(assert (= (and b!1830599 ((_ is Star!4967) (regTwo!10446 (regex!3639 rule!580)))) b!1831736))

(assert (= (and b!1830599 ((_ is Union!4967) (regTwo!10446 (regex!3639 rule!580)))) b!1831737))

(declare-fun b!1831741 () Bool)

(declare-fun e!1170774 () Bool)

(declare-fun tp!518180 () Bool)

(declare-fun tp!518177 () Bool)

(assert (=> b!1831741 (= e!1170774 (and tp!518180 tp!518177))))

(declare-fun b!1831738 () Bool)

(assert (=> b!1831738 (= e!1170774 tp_is_empty!8169)))

(declare-fun b!1831739 () Bool)

(declare-fun tp!518179 () Bool)

(declare-fun tp!518176 () Bool)

(assert (=> b!1831739 (= e!1170774 (and tp!518179 tp!518176))))

(assert (=> b!1830632 (= tp!517897 e!1170774)))

(declare-fun b!1831740 () Bool)

(declare-fun tp!518178 () Bool)

(assert (=> b!1831740 (= e!1170774 tp!518178)))

(assert (= (and b!1830632 ((_ is ElementMatch!4967) (regOne!10447 (regex!3639 (h!25536 rules!4610))))) b!1831738))

(assert (= (and b!1830632 ((_ is Concat!8696) (regOne!10447 (regex!3639 (h!25536 rules!4610))))) b!1831739))

(assert (= (and b!1830632 ((_ is Star!4967) (regOne!10447 (regex!3639 (h!25536 rules!4610))))) b!1831740))

(assert (= (and b!1830632 ((_ is Union!4967) (regOne!10447 (regex!3639 (h!25536 rules!4610))))) b!1831741))

(declare-fun b!1831745 () Bool)

(declare-fun e!1170775 () Bool)

(declare-fun tp!518185 () Bool)

(declare-fun tp!518182 () Bool)

(assert (=> b!1831745 (= e!1170775 (and tp!518185 tp!518182))))

(declare-fun b!1831742 () Bool)

(assert (=> b!1831742 (= e!1170775 tp_is_empty!8169)))

(declare-fun b!1831743 () Bool)

(declare-fun tp!518184 () Bool)

(declare-fun tp!518181 () Bool)

(assert (=> b!1831743 (= e!1170775 (and tp!518184 tp!518181))))

(assert (=> b!1830632 (= tp!517894 e!1170775)))

(declare-fun b!1831744 () Bool)

(declare-fun tp!518183 () Bool)

(assert (=> b!1831744 (= e!1170775 tp!518183)))

(assert (= (and b!1830632 ((_ is ElementMatch!4967) (regTwo!10447 (regex!3639 (h!25536 rules!4610))))) b!1831742))

(assert (= (and b!1830632 ((_ is Concat!8696) (regTwo!10447 (regex!3639 (h!25536 rules!4610))))) b!1831743))

(assert (= (and b!1830632 ((_ is Star!4967) (regTwo!10447 (regex!3639 (h!25536 rules!4610))))) b!1831744))

(assert (= (and b!1830632 ((_ is Union!4967) (regTwo!10447 (regex!3639 (h!25536 rules!4610))))) b!1831745))

(declare-fun b!1831749 () Bool)

(declare-fun e!1170776 () Bool)

(declare-fun tp!518190 () Bool)

(declare-fun tp!518187 () Bool)

(assert (=> b!1831749 (= e!1170776 (and tp!518190 tp!518187))))

(declare-fun b!1831746 () Bool)

(assert (=> b!1831746 (= e!1170776 tp_is_empty!8169)))

(declare-fun b!1831747 () Bool)

(declare-fun tp!518189 () Bool)

(declare-fun tp!518186 () Bool)

(assert (=> b!1831747 (= e!1170776 (and tp!518189 tp!518186))))

(assert (=> b!1830615 (= tp!517880 e!1170776)))

(declare-fun b!1831748 () Bool)

(declare-fun tp!518188 () Bool)

(assert (=> b!1831748 (= e!1170776 tp!518188)))

(assert (= (and b!1830615 ((_ is ElementMatch!4967) (regOne!10447 (regex!3639 (h!25536 rs!808))))) b!1831746))

(assert (= (and b!1830615 ((_ is Concat!8696) (regOne!10447 (regex!3639 (h!25536 rs!808))))) b!1831747))

(assert (= (and b!1830615 ((_ is Star!4967) (regOne!10447 (regex!3639 (h!25536 rs!808))))) b!1831748))

(assert (= (and b!1830615 ((_ is Union!4967) (regOne!10447 (regex!3639 (h!25536 rs!808))))) b!1831749))

(declare-fun b!1831753 () Bool)

(declare-fun e!1170777 () Bool)

(declare-fun tp!518195 () Bool)

(declare-fun tp!518192 () Bool)

(assert (=> b!1831753 (= e!1170777 (and tp!518195 tp!518192))))

(declare-fun b!1831750 () Bool)

(assert (=> b!1831750 (= e!1170777 tp_is_empty!8169)))

(declare-fun b!1831751 () Bool)

(declare-fun tp!518194 () Bool)

(declare-fun tp!518191 () Bool)

(assert (=> b!1831751 (= e!1170777 (and tp!518194 tp!518191))))

(assert (=> b!1830615 (= tp!517877 e!1170777)))

(declare-fun b!1831752 () Bool)

(declare-fun tp!518193 () Bool)

(assert (=> b!1831752 (= e!1170777 tp!518193)))

(assert (= (and b!1830615 ((_ is ElementMatch!4967) (regTwo!10447 (regex!3639 (h!25536 rs!808))))) b!1831750))

(assert (= (and b!1830615 ((_ is Concat!8696) (regTwo!10447 (regex!3639 (h!25536 rs!808))))) b!1831751))

(assert (= (and b!1830615 ((_ is Star!4967) (regTwo!10447 (regex!3639 (h!25536 rs!808))))) b!1831752))

(assert (= (and b!1830615 ((_ is Union!4967) (regTwo!10447 (regex!3639 (h!25536 rs!808))))) b!1831753))

(declare-fun b!1831757 () Bool)

(declare-fun e!1170778 () Bool)

(declare-fun tp!518200 () Bool)

(declare-fun tp!518197 () Bool)

(assert (=> b!1831757 (= e!1170778 (and tp!518200 tp!518197))))

(declare-fun b!1831754 () Bool)

(assert (=> b!1831754 (= e!1170778 tp_is_empty!8169)))

(declare-fun b!1831755 () Bool)

(declare-fun tp!518199 () Bool)

(declare-fun tp!518196 () Bool)

(assert (=> b!1831755 (= e!1170778 (and tp!518199 tp!518196))))

(assert (=> b!1830601 (= tp!517871 e!1170778)))

(declare-fun b!1831756 () Bool)

(declare-fun tp!518198 () Bool)

(assert (=> b!1831756 (= e!1170778 tp!518198)))

(assert (= (and b!1830601 ((_ is ElementMatch!4967) (regOne!10447 (regex!3639 rule!580)))) b!1831754))

(assert (= (and b!1830601 ((_ is Concat!8696) (regOne!10447 (regex!3639 rule!580)))) b!1831755))

(assert (= (and b!1830601 ((_ is Star!4967) (regOne!10447 (regex!3639 rule!580)))) b!1831756))

(assert (= (and b!1830601 ((_ is Union!4967) (regOne!10447 (regex!3639 rule!580)))) b!1831757))

(declare-fun b!1831761 () Bool)

(declare-fun e!1170779 () Bool)

(declare-fun tp!518205 () Bool)

(declare-fun tp!518202 () Bool)

(assert (=> b!1831761 (= e!1170779 (and tp!518205 tp!518202))))

(declare-fun b!1831758 () Bool)

(assert (=> b!1831758 (= e!1170779 tp_is_empty!8169)))

(declare-fun b!1831759 () Bool)

(declare-fun tp!518204 () Bool)

(declare-fun tp!518201 () Bool)

(assert (=> b!1831759 (= e!1170779 (and tp!518204 tp!518201))))

(assert (=> b!1830601 (= tp!517868 e!1170779)))

(declare-fun b!1831760 () Bool)

(declare-fun tp!518203 () Bool)

(assert (=> b!1831760 (= e!1170779 tp!518203)))

(assert (= (and b!1830601 ((_ is ElementMatch!4967) (regTwo!10447 (regex!3639 rule!580)))) b!1831758))

(assert (= (and b!1830601 ((_ is Concat!8696) (regTwo!10447 (regex!3639 rule!580)))) b!1831759))

(assert (= (and b!1830601 ((_ is Star!4967) (regTwo!10447 (regex!3639 rule!580)))) b!1831760))

(assert (= (and b!1830601 ((_ is Union!4967) (regTwo!10447 (regex!3639 rule!580)))) b!1831761))

(declare-fun b!1831764 () Bool)

(declare-fun b_free!51207 () Bool)

(declare-fun b_next!51911 () Bool)

(assert (=> b!1831764 (= b_free!51207 (not b_next!51911))))

(declare-fun t!170849 () Bool)

(declare-fun tb!112023 () Bool)

(assert (=> (and b!1831764 (= (toValue!5182 (transformation!3639 (h!25536 (t!170570 (t!170570 rs!808))))) (toValue!5182 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710795)))))) t!170849) tb!112023))

(declare-fun result!134702 () Bool)

(assert (= result!134702 result!134512))

(assert (=> d!559670 t!170849))

(declare-fun t!170851 () Bool)

(declare-fun tb!112025 () Bool)

(assert (=> (and b!1831764 (= (toValue!5182 (transformation!3639 (h!25536 (t!170570 (t!170570 rs!808))))) (toValue!5182 (transformation!3639 rule!580))) t!170851) tb!112025))

(declare-fun result!134704 () Bool)

(assert (= result!134704 result!134548))

(assert (=> d!559832 t!170851))

(declare-fun t!170853 () Bool)

(declare-fun tb!112027 () Bool)

(assert (=> (and b!1831764 (= (toValue!5182 (transformation!3639 (h!25536 (t!170570 (t!170570 rs!808))))) (toValue!5182 (transformation!3639 rule!580))) t!170853) tb!112027))

(declare-fun result!134706 () Bool)

(assert (= result!134706 result!134670))

(assert (=> d!560154 t!170853))

(declare-fun t!170855 () Bool)

(declare-fun tb!112029 () Bool)

(assert (=> (and b!1831764 (= (toValue!5182 (transformation!3639 (h!25536 (t!170570 (t!170570 rs!808))))) (toValue!5182 (transformation!3639 rule!580))) t!170855) tb!112029))

(declare-fun result!134708 () Bool)

(assert (= result!134708 result!134428))

(assert (=> d!559562 t!170855))

(assert (=> d!560160 t!170853))

(declare-fun tb!112031 () Bool)

(declare-fun t!170857 () Bool)

(assert (=> (and b!1831764 (= (toValue!5182 (transformation!3639 (h!25536 (t!170570 (t!170570 rs!808))))) (toValue!5182 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710749)))))) t!170857) tb!112031))

(declare-fun result!134710 () Bool)

(assert (= result!134710 result!134560))

(assert (=> d!559982 t!170857))

(declare-fun tp!518209 () Bool)

(declare-fun b_and!142677 () Bool)

(assert (=> b!1831764 (= tp!518209 (and (=> t!170853 result!134706) (=> t!170851 result!134704) (=> t!170849 result!134702) (=> t!170857 result!134710) (=> t!170855 result!134708) b_and!142677))))

(declare-fun b_free!51209 () Bool)

(declare-fun b_next!51913 () Bool)

(assert (=> b!1831764 (= b_free!51209 (not b_next!51913))))

(declare-fun tb!112033 () Bool)

(declare-fun t!170859 () Bool)

(assert (=> (and b!1831764 (= (toChars!5041 (transformation!3639 (h!25536 (t!170570 (t!170570 rs!808))))) (toChars!5041 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710749)))))) t!170859) tb!112033))

(declare-fun result!134712 () Bool)

(assert (= result!134712 result!134500))

(assert (=> d!559652 t!170859))

(declare-fun t!170861 () Bool)

(declare-fun tb!112035 () Bool)

(assert (=> (and b!1831764 (= (toChars!5041 (transformation!3639 (h!25536 (t!170570 (t!170570 rs!808))))) (toChars!5041 (transformation!3639 rule!580))) t!170861) tb!112035))

(declare-fun result!134714 () Bool)

(assert (= result!134714 result!134658))

(assert (=> d!560154 t!170861))

(declare-fun t!170863 () Bool)

(declare-fun tb!112037 () Bool)

(assert (=> (and b!1831764 (= (toChars!5041 (transformation!3639 (h!25536 (t!170570 (t!170570 rs!808))))) (toChars!5041 (transformation!3639 (rule!5807 token!567)))) t!170863) tb!112037))

(declare-fun result!134716 () Bool)

(assert (= result!134716 result!134408))

(assert (=> d!559502 t!170863))

(declare-fun t!170865 () Bool)

(declare-fun tb!112039 () Bool)

(assert (=> (and b!1831764 (= (toChars!5041 (transformation!3639 (h!25536 (t!170570 (t!170570 rs!808))))) (toChars!5041 (transformation!3639 (rule!5807 (_1!11199 (get!6215 lt!710795)))))) t!170865) tb!112039))

(declare-fun result!134718 () Bool)

(assert (= result!134718 result!134596))

(assert (=> d!560036 t!170865))

(assert (=> b!1830574 t!170863))

(declare-fun tp!518208 () Bool)

(declare-fun b_and!142679 () Bool)

(assert (=> b!1831764 (= tp!518208 (and (=> t!170863 result!134716) (=> t!170859 result!134712) (=> t!170865 result!134718) (=> t!170861 result!134714) b_and!142679))))

(declare-fun e!1170783 () Bool)

(assert (=> b!1831764 (= e!1170783 (and tp!518209 tp!518208))))

(declare-fun e!1170782 () Bool)

(declare-fun b!1831763 () Bool)

(declare-fun tp!518206 () Bool)

(assert (=> b!1831763 (= e!1170782 (and tp!518206 (inv!26189 (tag!4053 (h!25536 (t!170570 (t!170570 rs!808))))) (inv!26192 (transformation!3639 (h!25536 (t!170570 (t!170570 rs!808))))) e!1170783))))

(declare-fun b!1831762 () Bool)

(declare-fun e!1170781 () Bool)

(declare-fun tp!518207 () Bool)

(assert (=> b!1831762 (= e!1170781 (and e!1170782 tp!518207))))

(assert (=> b!1830638 (= tp!517905 e!1170781)))

(assert (= b!1831763 b!1831764))

(assert (= b!1831762 b!1831763))

(assert (= (and b!1830638 ((_ is Cons!20135) (t!170570 (t!170570 rs!808)))) b!1831762))

(declare-fun m!2259655 () Bool)

(assert (=> b!1831763 m!2259655))

(declare-fun m!2259657 () Bool)

(assert (=> b!1831763 m!2259657))

(declare-fun b!1831768 () Bool)

(declare-fun e!1170784 () Bool)

(declare-fun tp!518214 () Bool)

(declare-fun tp!518211 () Bool)

(assert (=> b!1831768 (= e!1170784 (and tp!518214 tp!518211))))

(declare-fun b!1831765 () Bool)

(assert (=> b!1831765 (= e!1170784 tp_is_empty!8169)))

(declare-fun b!1831766 () Bool)

(declare-fun tp!518213 () Bool)

(declare-fun tp!518210 () Bool)

(assert (=> b!1831766 (= e!1170784 (and tp!518213 tp!518210))))

(assert (=> b!1830635 (= tp!517902 e!1170784)))

(declare-fun b!1831767 () Bool)

(declare-fun tp!518212 () Bool)

(assert (=> b!1831767 (= e!1170784 tp!518212)))

(assert (= (and b!1830635 ((_ is ElementMatch!4967) (regOne!10446 (regex!3639 (rule!5807 token!567))))) b!1831765))

(assert (= (and b!1830635 ((_ is Concat!8696) (regOne!10446 (regex!3639 (rule!5807 token!567))))) b!1831766))

(assert (= (and b!1830635 ((_ is Star!4967) (regOne!10446 (regex!3639 (rule!5807 token!567))))) b!1831767))

(assert (= (and b!1830635 ((_ is Union!4967) (regOne!10446 (regex!3639 (rule!5807 token!567))))) b!1831768))

(declare-fun b!1831772 () Bool)

(declare-fun e!1170785 () Bool)

(declare-fun tp!518219 () Bool)

(declare-fun tp!518216 () Bool)

(assert (=> b!1831772 (= e!1170785 (and tp!518219 tp!518216))))

(declare-fun b!1831769 () Bool)

(assert (=> b!1831769 (= e!1170785 tp_is_empty!8169)))

(declare-fun b!1831770 () Bool)

(declare-fun tp!518218 () Bool)

(declare-fun tp!518215 () Bool)

(assert (=> b!1831770 (= e!1170785 (and tp!518218 tp!518215))))

(assert (=> b!1830635 (= tp!517899 e!1170785)))

(declare-fun b!1831771 () Bool)

(declare-fun tp!518217 () Bool)

(assert (=> b!1831771 (= e!1170785 tp!518217)))

(assert (= (and b!1830635 ((_ is ElementMatch!4967) (regTwo!10446 (regex!3639 (rule!5807 token!567))))) b!1831769))

(assert (= (and b!1830635 ((_ is Concat!8696) (regTwo!10446 (regex!3639 (rule!5807 token!567))))) b!1831770))

(assert (= (and b!1830635 ((_ is Star!4967) (regTwo!10446 (regex!3639 (rule!5807 token!567))))) b!1831771))

(assert (= (and b!1830635 ((_ is Union!4967) (regTwo!10446 (regex!3639 (rule!5807 token!567))))) b!1831772))

(declare-fun b!1831776 () Bool)

(declare-fun e!1170786 () Bool)

(declare-fun tp!518224 () Bool)

(declare-fun tp!518221 () Bool)

(assert (=> b!1831776 (= e!1170786 (and tp!518224 tp!518221))))

(declare-fun b!1831773 () Bool)

(assert (=> b!1831773 (= e!1170786 tp_is_empty!8169)))

(declare-fun b!1831774 () Bool)

(declare-fun tp!518223 () Bool)

(declare-fun tp!518220 () Bool)

(assert (=> b!1831774 (= e!1170786 (and tp!518223 tp!518220))))

(assert (=> b!1830636 (= tp!517901 e!1170786)))

(declare-fun b!1831775 () Bool)

(declare-fun tp!518222 () Bool)

(assert (=> b!1831775 (= e!1170786 tp!518222)))

(assert (= (and b!1830636 ((_ is ElementMatch!4967) (reg!5296 (regex!3639 (rule!5807 token!567))))) b!1831773))

(assert (= (and b!1830636 ((_ is Concat!8696) (reg!5296 (regex!3639 (rule!5807 token!567))))) b!1831774))

(assert (= (and b!1830636 ((_ is Star!4967) (reg!5296 (regex!3639 (rule!5807 token!567))))) b!1831775))

(assert (= (and b!1830636 ((_ is Union!4967) (reg!5296 (regex!3639 (rule!5807 token!567))))) b!1831776))

(declare-fun b_lambda!60609 () Bool)

(assert (= b_lambda!60603 (or (and b!1830628 b_free!51181 (= (toChars!5041 (transformation!3639 (h!25536 (t!170570 rules!4610)))) (toChars!5041 (transformation!3639 rule!580)))) (and b!1830100 b_free!51169) (and b!1830095 b_free!51165 (= (toChars!5041 (transformation!3639 (rule!5807 token!567))) (toChars!5041 (transformation!3639 rule!580)))) (and b!1831707 b_free!51205 (= (toChars!5041 (transformation!3639 (h!25536 (t!170570 (t!170570 rules!4610))))) (toChars!5041 (transformation!3639 rule!580)))) (and b!1830109 b_free!51177 (= (toChars!5041 (transformation!3639 (h!25536 rules!4610))) (toChars!5041 (transformation!3639 rule!580)))) (and b!1831764 b_free!51209 (= (toChars!5041 (transformation!3639 (h!25536 (t!170570 (t!170570 rs!808))))) (toChars!5041 (transformation!3639 rule!580)))) (and b!1830640 b_free!51185 (= (toChars!5041 (transformation!3639 (h!25536 (t!170570 rs!808)))) (toChars!5041 (transformation!3639 rule!580)))) (and b!1830099 b_free!51173 (= (toChars!5041 (transformation!3639 (h!25536 rs!808))) (toChars!5041 (transformation!3639 rule!580)))) b_lambda!60609)))

(declare-fun b_lambda!60611 () Bool)

(assert (= b_lambda!60549 (or (and b!1831707 b_free!51203 (= (toValue!5182 (transformation!3639 (h!25536 (t!170570 (t!170570 rules!4610))))) (toValue!5182 (transformation!3639 rule!580)))) (and b!1830095 b_free!51163 (= (toValue!5182 (transformation!3639 (rule!5807 token!567))) (toValue!5182 (transformation!3639 rule!580)))) (and b!1830628 b_free!51179 (= (toValue!5182 (transformation!3639 (h!25536 (t!170570 rules!4610)))) (toValue!5182 (transformation!3639 rule!580)))) (and b!1830100 b_free!51167) (and b!1830640 b_free!51183 (= (toValue!5182 (transformation!3639 (h!25536 (t!170570 rs!808)))) (toValue!5182 (transformation!3639 rule!580)))) (and b!1830109 b_free!51175 (= (toValue!5182 (transformation!3639 (h!25536 rules!4610))) (toValue!5182 (transformation!3639 rule!580)))) (and b!1830099 b_free!51171 (= (toValue!5182 (transformation!3639 (h!25536 rs!808))) (toValue!5182 (transformation!3639 rule!580)))) (and b!1831764 b_free!51207 (= (toValue!5182 (transformation!3639 (h!25536 (t!170570 (t!170570 rs!808))))) (toValue!5182 (transformation!3639 rule!580)))) b_lambda!60611)))

(declare-fun b_lambda!60613 () Bool)

(assert (= b_lambda!60605 (or (and b!1831707 b_free!51203 (= (toValue!5182 (transformation!3639 (h!25536 (t!170570 (t!170570 rules!4610))))) (toValue!5182 (transformation!3639 rule!580)))) (and b!1830095 b_free!51163 (= (toValue!5182 (transformation!3639 (rule!5807 token!567))) (toValue!5182 (transformation!3639 rule!580)))) (and b!1830628 b_free!51179 (= (toValue!5182 (transformation!3639 (h!25536 (t!170570 rules!4610)))) (toValue!5182 (transformation!3639 rule!580)))) (and b!1830100 b_free!51167) (and b!1830640 b_free!51183 (= (toValue!5182 (transformation!3639 (h!25536 (t!170570 rs!808)))) (toValue!5182 (transformation!3639 rule!580)))) (and b!1830109 b_free!51175 (= (toValue!5182 (transformation!3639 (h!25536 rules!4610))) (toValue!5182 (transformation!3639 rule!580)))) (and b!1830099 b_free!51171 (= (toValue!5182 (transformation!3639 (h!25536 rs!808))) (toValue!5182 (transformation!3639 rule!580)))) (and b!1831764 b_free!51207 (= (toValue!5182 (transformation!3639 (h!25536 (t!170570 (t!170570 rs!808))))) (toValue!5182 (transformation!3639 rule!580)))) b_lambda!60613)))

(declare-fun b_lambda!60615 () Bool)

(assert (= b_lambda!60547 (or d!559584 b_lambda!60615)))

(declare-fun bs!407982 () Bool)

(declare-fun d!560166 () Bool)

(assert (= bs!407982 (and d!560166 d!559584)))

(assert (=> bs!407982 (= (dynLambda!10001 lambda!71907 (h!25536 rules!4610)) (regex!3639 (h!25536 rules!4610)))))

(assert (=> b!1831066 d!560166))

(declare-fun b_lambda!60617 () Bool)

(assert (= b_lambda!60545 (or d!559584 b_lambda!60617)))

(declare-fun bs!407983 () Bool)

(declare-fun d!560168 () Bool)

(assert (= bs!407983 (and d!560168 d!559584)))

(assert (=> bs!407983 (= (dynLambda!10015 lambda!71908 (h!25537 (map!4177 rules!4610 lambda!71907))) (validRegex!2024 (h!25537 (map!4177 rules!4610 lambda!71907))))))

(declare-fun m!2259659 () Bool)

(assert (=> bs!407983 m!2259659))

(assert (=> b!1831057 d!560168))

(declare-fun b_lambda!60619 () Bool)

(assert (= b_lambda!60571 (or d!559580 b_lambda!60619)))

(declare-fun bs!407984 () Bool)

(declare-fun d!560170 () Bool)

(assert (= bs!407984 (and d!560170 d!559580)))

(assert (=> bs!407984 (= (dynLambda!10015 lambda!71899 (h!25537 lt!710678)) (validRegex!2024 (h!25537 lt!710678)))))

(declare-fun m!2259661 () Bool)

(assert (=> bs!407984 m!2259661))

(assert (=> b!1831419 d!560170))

(declare-fun b_lambda!60621 () Bool)

(assert (= b_lambda!60535 (or d!559484 b_lambda!60621)))

(declare-fun bs!407985 () Bool)

(declare-fun d!560172 () Bool)

(assert (= bs!407985 (and d!560172 d!559484)))

(assert (=> bs!407985 (= (dynLambda!10015 lambda!71882 (h!25537 (map!4177 rules!4610 lambda!71874))) (validRegex!2024 (h!25537 (map!4177 rules!4610 lambda!71874))))))

(declare-fun m!2259663 () Bool)

(assert (=> bs!407985 m!2259663))

(assert (=> b!1830876 d!560172))

(declare-fun b_lambda!60623 () Bool)

(assert (= b_lambda!60541 (or d!559570 b_lambda!60623)))

(declare-fun bs!407986 () Bool)

(declare-fun d!560174 () Bool)

(assert (= bs!407986 (and d!560174 d!559570)))

(assert (=> bs!407986 (= (dynLambda!10017 lambda!71898 (h!25536 rs!808)) (ruleValid!1129 thiss!28318 (h!25536 rs!808)))))

(assert (=> bs!407986 m!2258771))

(assert (=> b!1831045 d!560174))

(declare-fun b_lambda!60625 () Bool)

(assert (= b_lambda!60607 (or (and b!1831707 b_free!51203 (= (toValue!5182 (transformation!3639 (h!25536 (t!170570 (t!170570 rules!4610))))) (toValue!5182 (transformation!3639 rule!580)))) (and b!1830095 b_free!51163 (= (toValue!5182 (transformation!3639 (rule!5807 token!567))) (toValue!5182 (transformation!3639 rule!580)))) (and b!1830628 b_free!51179 (= (toValue!5182 (transformation!3639 (h!25536 (t!170570 rules!4610)))) (toValue!5182 (transformation!3639 rule!580)))) (and b!1830100 b_free!51167) (and b!1830640 b_free!51183 (= (toValue!5182 (transformation!3639 (h!25536 (t!170570 rs!808)))) (toValue!5182 (transformation!3639 rule!580)))) (and b!1830109 b_free!51175 (= (toValue!5182 (transformation!3639 (h!25536 rules!4610))) (toValue!5182 (transformation!3639 rule!580)))) (and b!1830099 b_free!51171 (= (toValue!5182 (transformation!3639 (h!25536 rs!808))) (toValue!5182 (transformation!3639 rule!580)))) (and b!1831764 b_free!51207 (= (toValue!5182 (transformation!3639 (h!25536 (t!170570 (t!170570 rs!808))))) (toValue!5182 (transformation!3639 rule!580)))) b_lambda!60625)))

(declare-fun b_lambda!60627 () Bool)

(assert (= b_lambda!60543 (or d!559524 b_lambda!60627)))

(declare-fun bs!407987 () Bool)

(declare-fun d!560176 () Bool)

(assert (= bs!407987 (and d!560176 d!559524)))

(assert (=> bs!407987 (= (dynLambda!10017 lambda!71895 (h!25536 (t!170570 rs!808))) (ruleValid!1129 thiss!28318 (h!25536 (t!170570 rs!808))))))

(assert (=> bs!407987 m!2258807))

(assert (=> b!1831051 d!560176))

(declare-fun b_lambda!60629 () Bool)

(assert (= b_lambda!60537 (or b!1830114 b_lambda!60629)))

(declare-fun bs!407988 () Bool)

(declare-fun d!560178 () Bool)

(assert (= bs!407988 (and d!560178 b!1830114)))

(assert (=> bs!407988 (= (dynLambda!10001 lambda!71874 (h!25536 (t!170570 rules!4610))) (regex!3639 (h!25536 (t!170570 rules!4610))))))

(assert (=> b!1830929 d!560178))

(declare-fun b_lambda!60631 () Bool)

(assert (= b_lambda!60557 (or d!559582 b_lambda!60631)))

(declare-fun bs!407989 () Bool)

(declare-fun d!560180 () Bool)

(assert (= bs!407989 (and d!560180 d!559582)))

(assert (=> bs!407989 (= (dynLambda!10001 lambda!71902 (h!25536 rules!4610)) (regex!3639 (h!25536 rules!4610)))))

(assert (=> b!1831231 d!560180))

(check-sat (not tb!111921) (not b!1831725) (not b!1831755) (not b!1831748) (not b_lambda!60623) (not b!1830919) (not b!1831459) (not b!1831694) b_and!142667 (not bm!114706) (not b_lambda!60621) (not b!1831444) (not d!560068) (not b!1831724) (not b!1831675) (not b!1830918) (not b!1831248) (not d!560162) (not b!1831463) (not b!1831024) (not tb!111885) (not b!1831704) (not b!1831323) (not b!1831458) (not bm!114668) (not b!1831709) (not b!1831706) (not tb!111981) (not b!1831751) b_and!142661 (not b!1831696) (not b!1831718) (not d!559986) (not bm!114740) (not b!1831715) (not b!1830880) (not b_lambda!60527) (not d!559796) (not b!1831360) (not b!1830773) (not b!1831054) (not b!1830955) (not b!1831143) (not bm!114697) (not bm!114707) (not b!1831355) (not b_lambda!60559) (not b!1831117) (not b!1831353) (not b!1831744) (not d!559650) (not b!1831255) (not b!1831163) (not b!1831115) (not d!559856) (not d!559644) (not b!1831443) (not bs!407983) (not b!1830766) (not b!1831222) (not d!559904) (not b!1831077) (not b_lambda!60509) (not b!1831079) (not bm!114758) (not b!1831427) (not b_lambda!60615) (not b!1831720) (not b_lambda!60529) (not b!1831046) (not b!1831008) (not b!1831767) (not b_next!51885) (not b!1831228) (not b!1831373) (not d!559762) (not b!1831258) (not b!1831242) (not b!1831220) (not b_lambda!60613) (not d!559744) (not b!1831775) (not bm!114685) (not b!1831652) (not b!1831695) (not d!559930) (not d!560030) (not b_next!51889) (not b!1830752) (not b!1831727) (not b!1831690) (not b_lambda!60507) (not bs!407986) (not b_lambda!60619) (not b!1830281) (not b!1831728) (not d!559642) (not d!559812) (not tb!111993) (not b!1831218) (not d!560154) (not b!1831732) (not b!1831250) (not b_lambda!60629) (not b_next!51873) (not d!560070) (not d!559748) (not b!1831226) (not b!1831700) (not b!1831066) (not b!1830960) (not tb!111837) (not b!1831359) (not b!1831740) b_and!142637 (not b!1830954) (not b!1831770) (not b!1830958) (not b!1831189) (not d!559752) (not b!1831254) (not b!1831375) (not b!1831457) (not d!560158) (not b!1831056) (not b!1831357) (not b_next!51877) (not b!1831753) b_and!142645 (not b!1831676) (not b!1831251) (not d!559842) (not b!1831710) (not d!559994) b_and!142669 (not b!1830762) (not b!1831136) (not b!1831106) (not b!1831759) (not b_lambda!60611) (not b!1831731) (not b!1831757) (not b!1831729) (not bm!114708) (not b!1831423) (not b!1831768) (not b!1831743) (not b_lambda!60625) (not b!1831247) (not b!1831320) (not b!1831162) (not d!560108) (not b!1831424) (not b_lambda!60631) (not b!1831761) (not d!560052) (not b!1830956) b_and!142647 (not d!559726) (not d!559776) (not b_next!51907) (not b!1831023) (not b!1831705) (not bm!114762) (not b_next!51887) (not b!1831131) (not bm!114761) tp_is_empty!8169 (not b!1831141) (not bm!114765) (not bm!114698) (not b!1830817) (not b!1831687) (not b!1831377) (not b!1831227) (not d!559828) (not b!1831772) (not d!560104) (not b!1831749) (not b!1831279) (not b!1831125) (not b!1831713) (not b_lambda!60503) (not d!559890) (not b!1830877) b_and!142679 (not d!559714) (not b!1831659) (not d!559976) (not b!1831276) (not b!1831149) (not b!1831050) (not b!1831722) (not b!1831668) (not d!559944) (not b_next!51881) (not b!1831133) (not bs!407985) (not b!1831048) (not b!1831426) (not d!559988) (not b!1831776) (not d!559918) (not b!1831671) (not b!1831719) (not d!559674) b_and!142675 (not bm!114764) (not b!1831445) (not b!1831714) (not bm!114704) (not b!1831449) (not b!1830908) (not b!1831145) (not b!1831052) (not b!1831741) (not b!1831699) (not b!1830879) (not b_next!51871) (not b!1830951) (not b!1831238) (not b!1831378) (not b_next!51911) (not d!560164) (not b!1831428) (not b!1830768) (not bm!114738) (not b!1830750) (not b!1831350) (not b!1831440) (not b_next!51875) (not b!1831361) (not b!1831739) (not d!560034) (not d!559646) (not d!559908) b_and!142671 (not d!559958) (not b!1831688) (not b!1831672) (not b!1831648) (not d!559634) (not b!1830946) (not bm!114739) (not b!1831723) (not b!1831118) (not b!1831752) (not b_next!51879) (not b!1831711) (not d!560042) (not d!559940) (not b!1831737) (not d!559972) (not b!1831756) (not bs!407987) (not b!1831087) (not d!559712) (not b!1831188) (not b!1831277) (not b!1831766) (not b_next!51869) (not b!1831074) (not b!1831223) (not b!1831240) b_and!142677 (not b!1831420) (not b!1831736) (not d!559826) (not b!1831319) (not bm!114688) (not b_lambda!60609) (not b!1831702) (not b!1830746) (not d!559840) b_and!142663 (not b!1831186) (not bm!114760) (not b!1831252) (not bm!114763) (not b!1830764) (not d!560156) (not d!559854) (not b!1831735) (not b!1831677) (not b!1831760) (not b!1831351) (not d!559732) (not d!559984) (not d!559658) (not b!1831655) (not b!1830821) (not b!1830907) (not d!560112) (not d!560036) (not b_lambda!60569) (not b!1831461) (not b_lambda!60627) (not b_next!51909) (not b!1830929) (not b!1831771) (not b!1830804) (not bm!114737) (not b!1831231) (not d!560110) (not b!1831411) (not b!1831692) (not b!1831049) (not b!1831376) (not b!1831429) (not b!1831246) (not b!1830763) (not b_lambda!60505) (not bm!114687) (not b!1830864) (not b!1831763) (not b!1831703) b_and!142673 (not b!1831716) (not d!559652) (not b!1831083) (not b!1831224) (not b!1831425) (not b!1831673) (not b!1831733) (not d!559772) (not b!1831244) (not b!1831747) (not b!1831645) (not b!1831665) (not b!1831762) (not b!1831064) (not b!1831372) b_and!142665 (not b!1831669) (not b!1830759) (not bm!114709) (not b!1831371) (not bm!114735) (not b!1831421) (not b!1831058) (not b!1831686) (not b!1831745) (not bm!114759) (not b!1831139) (not d!559916) (not b!1830798) (not b_next!51913) (not d!560090) (not b_next!51867) (not b!1831379) (not d!559864) (not b!1831447) (not b_lambda!60617) (not d!560074) (not b_next!51883) (not b!1831691) (not d!559906) b_and!142641 (not b!1831140) (not bs!407984) (not b!1831076) (not b!1831356) (not d!559950) b_and!142639 (not b!1831454) (not b!1831698) (not d!559664) b_and!142643 (not b!1831774) (not tb!111825) (not b!1830909) (not tb!111873) (not d!559724))
(check-sat b_and!142667 b_and!142661 (not b_next!51885) (not b_next!51889) (not b_next!51873) b_and!142679 (not b_next!51881) b_and!142675 (not b_next!51875) b_and!142671 b_and!142677 b_and!142663 (not b_next!51909) b_and!142673 b_and!142665 b_and!142637 (not b_next!51877) b_and!142645 b_and!142669 b_and!142647 (not b_next!51907) (not b_next!51887) (not b_next!51911) (not b_next!51871) (not b_next!51879) (not b_next!51869) (not b_next!51913) (not b_next!51867) (not b_next!51883) b_and!142641 b_and!142639 b_and!142643)
