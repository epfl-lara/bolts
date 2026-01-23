; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58408 () Bool)

(assert start!58408)

(declare-fun b!610672 () Bool)

(declare-fun b_free!17405 () Bool)

(declare-fun b_next!17421 () Bool)

(assert (=> b!610672 (= b_free!17405 (not b_next!17421))))

(declare-fun tp!189141 () Bool)

(declare-fun b_and!60447 () Bool)

(assert (=> b!610672 (= tp!189141 b_and!60447)))

(declare-fun b_free!17407 () Bool)

(declare-fun b_next!17423 () Bool)

(assert (=> b!610672 (= b_free!17407 (not b_next!17423))))

(declare-fun tp!189139 () Bool)

(declare-fun b_and!60449 () Bool)

(assert (=> b!610672 (= tp!189139 b_and!60449)))

(declare-fun b!610655 () Bool)

(declare-fun b_free!17409 () Bool)

(declare-fun b_next!17425 () Bool)

(assert (=> b!610655 (= b_free!17409 (not b_next!17425))))

(declare-fun tp!189140 () Bool)

(declare-fun b_and!60451 () Bool)

(assert (=> b!610655 (= tp!189140 b_and!60451)))

(declare-fun b_free!17411 () Bool)

(declare-fun b_next!17427 () Bool)

(assert (=> b!610655 (= b_free!17411 (not b_next!17427))))

(declare-fun tp!189136 () Bool)

(declare-fun b_and!60453 () Bool)

(assert (=> b!610655 (= tp!189136 b_and!60453)))

(declare-fun b!610640 () Bool)

(declare-fun e!370117 () Bool)

(declare-fun e!370103 () Bool)

(assert (=> b!610640 (= e!370117 e!370103)))

(declare-fun res!265316 () Bool)

(assert (=> b!610640 (=> (not res!265316) (not e!370103))))

(declare-datatypes ((C!4036 0))(
  ( (C!4037 (val!2244 Int)) )
))
(declare-datatypes ((List!6117 0))(
  ( (Nil!6107) (Cons!6107 (h!11508 C!4036) (t!80898 List!6117)) )
))
(declare-fun suffix!1342 () List!6117)

(declare-datatypes ((Regex!1557 0))(
  ( (ElementMatch!1557 (c!112899 C!4036)) (Concat!2804 (regOne!3626 Regex!1557) (regTwo!3626 Regex!1557)) (EmptyExpr!1557) (Star!1557 (reg!1886 Regex!1557)) (EmptyLang!1557) (Union!1557 (regOne!3627 Regex!1557) (regTwo!3627 Regex!1557)) )
))
(declare-datatypes ((List!6118 0))(
  ( (Nil!6108) (Cons!6108 (h!11509 (_ BitVec 16)) (t!80899 List!6118)) )
))
(declare-datatypes ((String!7978 0))(
  ( (String!7979 (value!39696 String)) )
))
(declare-datatypes ((TokenValue!1247 0))(
  ( (FloatLiteralValue!2494 (text!9174 List!6118)) (TokenValueExt!1246 (__x!4392 Int)) (Broken!6235 (value!39697 List!6118)) (Object!1256) (End!1247) (Def!1247) (Underscore!1247) (Match!1247) (Else!1247) (Error!1247) (Case!1247) (If!1247) (Extends!1247) (Abstract!1247) (Class!1247) (Val!1247) (DelimiterValue!2494 (del!1307 List!6118)) (KeywordValue!1253 (value!39698 List!6118)) (CommentValue!2494 (value!39699 List!6118)) (WhitespaceValue!2494 (value!39700 List!6118)) (IndentationValue!1247 (value!39701 List!6118)) (String!7980) (Int32!1247) (Broken!6236 (value!39702 List!6118)) (Boolean!1248) (Unit!11167) (OperatorValue!1250 (op!1307 List!6118)) (IdentifierValue!2494 (value!39703 List!6118)) (IdentifierValue!2495 (value!39704 List!6118)) (WhitespaceValue!2495 (value!39705 List!6118)) (True!2494) (False!2494) (Broken!6237 (value!39706 List!6118)) (Broken!6238 (value!39707 List!6118)) (True!2495) (RightBrace!1247) (RightBracket!1247) (Colon!1247) (Null!1247) (Comma!1247) (LeftBracket!1247) (False!2495) (LeftBrace!1247) (ImaginaryLiteralValue!1247 (text!9175 List!6118)) (StringLiteralValue!3741 (value!39708 List!6118)) (EOFValue!1247 (value!39709 List!6118)) (IdentValue!1247 (value!39710 List!6118)) (DelimiterValue!2495 (value!39711 List!6118)) (DedentValue!1247 (value!39712 List!6118)) (NewLineValue!1247 (value!39713 List!6118)) (IntegerValue!3741 (value!39714 (_ BitVec 32)) (text!9176 List!6118)) (IntegerValue!3742 (value!39715 Int) (text!9177 List!6118)) (Times!1247) (Or!1247) (Equal!1247) (Minus!1247) (Broken!6239 (value!39716 List!6118)) (And!1247) (Div!1247) (LessEqual!1247) (Mod!1247) (Concat!2805) (Not!1247) (Plus!1247) (SpaceValue!1247 (value!39717 List!6118)) (IntegerValue!3743 (value!39718 Int) (text!9178 List!6118)) (StringLiteralValue!3742 (text!9179 List!6118)) (FloatLiteralValue!2495 (text!9180 List!6118)) (BytesLiteralValue!1247 (value!39719 List!6118)) (CommentValue!2495 (value!39720 List!6118)) (StringLiteralValue!3743 (value!39721 List!6118)) (ErrorTokenValue!1247 (msg!1308 List!6118)) )
))
(declare-datatypes ((IArray!3881 0))(
  ( (IArray!3882 (innerList!1998 List!6117)) )
))
(declare-datatypes ((Conc!1940 0))(
  ( (Node!1940 (left!4892 Conc!1940) (right!5222 Conc!1940) (csize!4110 Int) (cheight!2151 Int)) (Leaf!3059 (xs!4577 IArray!3881) (csize!4111 Int)) (Empty!1940) )
))
(declare-datatypes ((BalanceConc!3888 0))(
  ( (BalanceConc!3889 (c!112900 Conc!1940)) )
))
(declare-datatypes ((TokenValueInjection!2262 0))(
  ( (TokenValueInjection!2263 (toValue!2130 Int) (toChars!1989 Int)) )
))
(declare-datatypes ((Rule!2246 0))(
  ( (Rule!2247 (regex!1223 Regex!1557) (tag!1485 String!7978) (isSeparator!1223 Bool) (transformation!1223 TokenValueInjection!2262)) )
))
(declare-datatypes ((Token!2182 0))(
  ( (Token!2183 (value!39722 TokenValue!1247) (rule!2013 Rule!2246) (size!4803 Int) (originalCharacters!1262 List!6117)) )
))
(declare-fun token!491 () Token!2182)

(declare-datatypes ((tuple2!6978 0))(
  ( (tuple2!6979 (_1!3753 Token!2182) (_2!3753 List!6117)) )
))
(declare-fun lt!261302 () tuple2!6978)

(assert (=> b!610640 (= res!265316 (and (= (_1!3753 lt!261302) token!491) (= (_2!3753 lt!261302) suffix!1342)))))

(declare-datatypes ((Option!1574 0))(
  ( (None!1573) (Some!1573 (v!16482 tuple2!6978)) )
))
(declare-fun lt!261317 () Option!1574)

(declare-fun get!2349 (Option!1574) tuple2!6978)

(assert (=> b!610640 (= lt!261302 (get!2349 lt!261317))))

(declare-fun b!610641 () Bool)

(declare-fun e!370105 () Bool)

(assert (=> b!610641 (= e!370105 false)))

(declare-fun b!610642 () Bool)

(declare-fun e!370111 () Bool)

(assert (=> b!610642 (= e!370111 e!370117)))

(declare-fun res!265315 () Bool)

(assert (=> b!610642 (=> (not res!265315) (not e!370117))))

(declare-fun isDefined!1385 (Option!1574) Bool)

(assert (=> b!610642 (= res!265315 (isDefined!1385 lt!261317))))

(declare-datatypes ((List!6119 0))(
  ( (Nil!6109) (Cons!6109 (h!11510 Rule!2246) (t!80900 List!6119)) )
))
(declare-fun rules!3103 () List!6119)

(declare-fun lt!261293 () List!6117)

(declare-datatypes ((LexerInterface!1109 0))(
  ( (LexerInterfaceExt!1106 (__x!4393 Int)) (Lexer!1107) )
))
(declare-fun thiss!22590 () LexerInterface!1109)

(declare-fun maxPrefix!807 (LexerInterface!1109 List!6119 List!6117) Option!1574)

(assert (=> b!610642 (= lt!261317 (maxPrefix!807 thiss!22590 rules!3103 lt!261293))))

(declare-fun input!2705 () List!6117)

(declare-fun ++!1711 (List!6117 List!6117) List!6117)

(assert (=> b!610642 (= lt!261293 (++!1711 input!2705 suffix!1342))))

(declare-fun b!610643 () Bool)

(declare-fun e!370108 () Bool)

(declare-fun e!370113 () Bool)

(assert (=> b!610643 (= e!370108 e!370113)))

(declare-fun res!265303 () Bool)

(assert (=> b!610643 (=> res!265303 e!370113)))

(declare-fun lt!261305 () Int)

(declare-fun lt!261289 () Int)

(assert (=> b!610643 (= res!265303 (>= lt!261305 lt!261289))))

(declare-fun b!610644 () Bool)

(declare-fun e!370107 () Bool)

(declare-fun tp_is_empty!3469 () Bool)

(declare-fun tp!189137 () Bool)

(assert (=> b!610644 (= e!370107 (and tp_is_empty!3469 tp!189137))))

(declare-fun b!610645 () Bool)

(declare-fun e!370114 () Bool)

(declare-fun tp!189138 () Bool)

(declare-fun e!370115 () Bool)

(declare-fun inv!7768 (String!7978) Bool)

(declare-fun inv!7771 (TokenValueInjection!2262) Bool)

(assert (=> b!610645 (= e!370115 (and tp!189138 (inv!7768 (tag!1485 (rule!2013 token!491))) (inv!7771 (transformation!1223 (rule!2013 token!491))) e!370114))))

(declare-fun b!610646 () Bool)

(declare-fun e!370104 () Bool)

(declare-fun tp!189135 () Bool)

(assert (=> b!610646 (= e!370104 (and tp_is_empty!3469 tp!189135))))

(declare-fun e!370116 () Bool)

(declare-fun lt!261301 () List!6117)

(declare-fun b!610647 () Bool)

(declare-fun lt!261304 () List!6117)

(declare-fun lt!261308 () TokenValue!1247)

(assert (=> b!610647 (= e!370116 (and (= (size!4803 token!491) lt!261289) (= (originalCharacters!1262 token!491) lt!261301) (= (tuple2!6979 token!491 suffix!1342) (tuple2!6979 (Token!2183 lt!261308 (rule!2013 token!491) lt!261289 lt!261301) lt!261304))))))

(declare-fun b!610648 () Bool)

(declare-datatypes ((Unit!11168 0))(
  ( (Unit!11169) )
))
(declare-fun e!370123 () Unit!11168)

(declare-fun Unit!11170 () Unit!11168)

(assert (=> b!610648 (= e!370123 Unit!11170)))

(declare-fun b!610649 () Bool)

(declare-fun res!265305 () Bool)

(declare-fun e!370118 () Bool)

(assert (=> b!610649 (=> res!265305 e!370118)))

(declare-fun lt!261300 () Option!1574)

(declare-fun lt!261283 () List!6117)

(assert (=> b!610649 (= res!265305 (or (not (= lt!261283 lt!261301)) (not (= (originalCharacters!1262 (_1!3753 (v!16482 lt!261300))) (originalCharacters!1262 token!491)))))))

(declare-fun res!265300 () Bool)

(declare-fun e!370100 () Bool)

(assert (=> start!58408 (=> (not res!265300) (not e!370100))))

(get-info :version)

(assert (=> start!58408 (= res!265300 ((_ is Lexer!1107) thiss!22590))))

(assert (=> start!58408 e!370100))

(assert (=> start!58408 e!370104))

(declare-fun e!370101 () Bool)

(assert (=> start!58408 e!370101))

(declare-fun e!370122 () Bool)

(declare-fun inv!7772 (Token!2182) Bool)

(assert (=> start!58408 (and (inv!7772 token!491) e!370122)))

(assert (=> start!58408 true))

(assert (=> start!58408 e!370107))

(declare-fun b!610650 () Bool)

(declare-fun res!265291 () Bool)

(declare-fun e!370121 () Bool)

(assert (=> b!610650 (=> (not res!265291) (not e!370121))))

(declare-fun size!4804 (List!6117) Int)

(assert (=> b!610650 (= res!265291 (= (size!4803 (_1!3753 (v!16482 lt!261300))) (size!4804 (originalCharacters!1262 (_1!3753 (v!16482 lt!261300))))))))

(declare-fun b!610651 () Bool)

(declare-fun res!265317 () Bool)

(assert (=> b!610651 (=> (not res!265317) (not e!370100))))

(declare-fun rulesInvariant!1072 (LexerInterface!1109 List!6119) Bool)

(assert (=> b!610651 (= res!265317 (rulesInvariant!1072 thiss!22590 rules!3103))))

(declare-fun tp!189144 () Bool)

(declare-fun b!610652 () Bool)

(declare-fun inv!21 (TokenValue!1247) Bool)

(assert (=> b!610652 (= e!370122 (and (inv!21 (value!39722 token!491)) e!370115 tp!189144))))

(declare-fun b!610653 () Bool)

(declare-fun res!265311 () Bool)

(assert (=> b!610653 (=> res!265311 e!370118)))

(declare-fun contains!1439 (List!6119 Rule!2246) Bool)

(assert (=> b!610653 (= res!265311 (not (contains!1439 rules!3103 (rule!2013 (_1!3753 (v!16482 lt!261300))))))))

(declare-fun b!610654 () Bool)

(declare-fun res!265304 () Bool)

(assert (=> b!610654 (=> res!265304 e!370118)))

(assert (=> b!610654 (= res!265304 (not (contains!1439 rules!3103 (rule!2013 token!491))))))

(assert (=> b!610655 (= e!370114 (and tp!189140 tp!189136))))

(declare-fun b!610656 () Bool)

(declare-fun e!370098 () Bool)

(declare-fun e!370102 () Bool)

(assert (=> b!610656 (= e!370098 e!370102)))

(declare-fun res!265310 () Bool)

(assert (=> b!610656 (=> (not res!265310) (not e!370102))))

(declare-fun lt!261294 () List!6117)

(assert (=> b!610656 (= res!265310 (= lt!261294 lt!261293))))

(assert (=> b!610656 (= lt!261294 (++!1711 lt!261301 suffix!1342))))

(declare-fun b!610657 () Bool)

(declare-fun e!370112 () Bool)

(assert (=> b!610657 (= e!370112 e!370118)))

(declare-fun res!265301 () Bool)

(assert (=> b!610657 (=> res!265301 e!370118)))

(declare-fun lt!261313 () List!6117)

(assert (=> b!610657 (= res!265301 (or (not (= lt!261305 lt!261289)) (not (= lt!261313 input!2705)) (not (= lt!261313 lt!261301))))))

(declare-fun lt!261303 () Unit!11168)

(declare-fun lt!261291 () BalanceConc!3888)

(declare-fun lemmaSemiInverse!253 (TokenValueInjection!2262 BalanceConc!3888) Unit!11168)

(assert (=> b!610657 (= lt!261303 (lemmaSemiInverse!253 (transformation!1223 (rule!2013 token!491)) lt!261291))))

(declare-fun lt!261282 () Unit!11168)

(declare-fun lt!261311 () BalanceConc!3888)

(assert (=> b!610657 (= lt!261282 (lemmaSemiInverse!253 (transformation!1223 (rule!2013 (_1!3753 (v!16482 lt!261300)))) lt!261311))))

(declare-fun lt!261290 () Unit!11168)

(declare-fun e!370106 () Unit!11168)

(assert (=> b!610657 (= lt!261290 e!370106)))

(declare-fun c!112898 () Bool)

(assert (=> b!610657 (= c!112898 (< lt!261305 lt!261289))))

(assert (=> b!610657 e!370108))

(declare-fun res!265293 () Bool)

(assert (=> b!610657 (=> (not res!265293) (not e!370108))))

(declare-fun maxPrefixOneRule!470 (LexerInterface!1109 Rule!2246 List!6117) Option!1574)

(assert (=> b!610657 (= res!265293 (= (maxPrefixOneRule!470 thiss!22590 (rule!2013 token!491) lt!261293) (Some!1573 (tuple2!6979 (Token!2183 lt!261308 (rule!2013 token!491) lt!261289 lt!261301) suffix!1342))))))

(declare-fun lt!261318 () Unit!11168)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!176 (LexerInterface!1109 List!6119 List!6117 List!6117 List!6117 Rule!2246) Unit!11168)

(assert (=> b!610657 (= lt!261318 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!176 thiss!22590 rules!3103 lt!261301 lt!261293 suffix!1342 (rule!2013 token!491)))))

(declare-fun lt!261287 () TokenValue!1247)

(assert (=> b!610657 (= (maxPrefixOneRule!470 thiss!22590 (rule!2013 (_1!3753 (v!16482 lt!261300))) input!2705) (Some!1573 (tuple2!6979 (Token!2183 lt!261287 (rule!2013 (_1!3753 (v!16482 lt!261300))) lt!261305 lt!261283) (_2!3753 (v!16482 lt!261300)))))))

(declare-fun lt!261296 () Unit!11168)

(assert (=> b!610657 (= lt!261296 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!176 thiss!22590 rules!3103 lt!261283 input!2705 (_2!3753 (v!16482 lt!261300)) (rule!2013 (_1!3753 (v!16482 lt!261300)))))))

(assert (=> b!610657 e!370116))

(declare-fun res!265299 () Bool)

(assert (=> b!610657 (=> (not res!265299) (not e!370116))))

(assert (=> b!610657 (= res!265299 (= (value!39722 token!491) lt!261308))))

(declare-fun apply!1476 (TokenValueInjection!2262 BalanceConc!3888) TokenValue!1247)

(assert (=> b!610657 (= lt!261308 (apply!1476 (transformation!1223 (rule!2013 token!491)) lt!261291))))

(declare-fun seqFromList!1399 (List!6117) BalanceConc!3888)

(assert (=> b!610657 (= lt!261291 (seqFromList!1399 lt!261301))))

(assert (=> b!610657 (= suffix!1342 lt!261304)))

(declare-fun lt!261319 () Unit!11168)

(declare-fun lemmaSamePrefixThenSameSuffix!564 (List!6117 List!6117 List!6117 List!6117 List!6117) Unit!11168)

(assert (=> b!610657 (= lt!261319 (lemmaSamePrefixThenSameSuffix!564 lt!261301 suffix!1342 lt!261301 lt!261304 lt!261293))))

(declare-fun getSuffix!368 (List!6117 List!6117) List!6117)

(assert (=> b!610657 (= lt!261304 (getSuffix!368 lt!261293 lt!261301))))

(declare-fun b!610658 () Bool)

(declare-fun tp!189143 () Bool)

(declare-fun e!370099 () Bool)

(declare-fun e!370110 () Bool)

(assert (=> b!610658 (= e!370099 (and tp!189143 (inv!7768 (tag!1485 (h!11510 rules!3103))) (inv!7771 (transformation!1223 (h!11510 rules!3103))) e!370110))))

(declare-fun b!610659 () Bool)

(declare-fun tp!189142 () Bool)

(assert (=> b!610659 (= e!370101 (and e!370099 tp!189142))))

(declare-fun b!610660 () Bool)

(declare-fun Unit!11171 () Unit!11168)

(assert (=> b!610660 (= e!370106 Unit!11171)))

(declare-fun lt!261292 () Unit!11168)

(assert (=> b!610660 (= lt!261292 (lemmaSemiInverse!253 (transformation!1223 (rule!2013 (_1!3753 (v!16482 lt!261300)))) lt!261311))))

(declare-fun lt!261297 () Unit!11168)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!76 (LexerInterface!1109 List!6119 Rule!2246 List!6117 List!6117 List!6117 Rule!2246) Unit!11168)

(assert (=> b!610660 (= lt!261297 (lemmaMaxPrefixOutputsMaxPrefix!76 thiss!22590 rules!3103 (rule!2013 (_1!3753 (v!16482 lt!261300))) lt!261283 input!2705 input!2705 (rule!2013 token!491)))))

(declare-fun res!265308 () Bool)

(declare-fun matchR!660 (Regex!1557 List!6117) Bool)

(assert (=> b!610660 (= res!265308 (not (matchR!660 (regex!1223 (rule!2013 token!491)) input!2705)))))

(assert (=> b!610660 (=> (not res!265308) (not e!370105))))

(assert (=> b!610660 e!370105))

(declare-fun lt!261284 () List!6117)

(declare-fun lt!261298 () tuple2!6978)

(declare-fun b!610661 () Bool)

(assert (=> b!610661 (= e!370121 (and (= (size!4803 (_1!3753 (v!16482 lt!261300))) lt!261305) (= (originalCharacters!1262 (_1!3753 (v!16482 lt!261300))) lt!261283) (= lt!261298 (tuple2!6979 (Token!2183 lt!261287 (rule!2013 (_1!3753 (v!16482 lt!261300))) lt!261305 lt!261283) lt!261284))))))

(declare-fun b!610662 () Bool)

(assert (=> b!610662 (= e!370102 (not e!370112))))

(declare-fun res!265292 () Bool)

(assert (=> b!610662 (=> res!265292 e!370112)))

(declare-fun isPrefix!851 (List!6117 List!6117) Bool)

(assert (=> b!610662 (= res!265292 (not (isPrefix!851 input!2705 lt!261294)))))

(assert (=> b!610662 (isPrefix!851 lt!261301 lt!261294)))

(declare-fun lt!261315 () Unit!11168)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!696 (List!6117 List!6117) Unit!11168)

(assert (=> b!610662 (= lt!261315 (lemmaConcatTwoListThenFirstIsPrefix!696 lt!261301 suffix!1342))))

(assert (=> b!610662 (isPrefix!851 input!2705 lt!261293)))

(declare-fun lt!261299 () Unit!11168)

(assert (=> b!610662 (= lt!261299 (lemmaConcatTwoListThenFirstIsPrefix!696 input!2705 suffix!1342))))

(assert (=> b!610662 e!370121))

(declare-fun res!265309 () Bool)

(assert (=> b!610662 (=> (not res!265309) (not e!370121))))

(assert (=> b!610662 (= res!265309 (= (value!39722 (_1!3753 (v!16482 lt!261300))) lt!261287))))

(assert (=> b!610662 (= lt!261287 (apply!1476 (transformation!1223 (rule!2013 (_1!3753 (v!16482 lt!261300)))) lt!261311))))

(assert (=> b!610662 (= lt!261311 (seqFromList!1399 lt!261283))))

(declare-fun lt!261312 () Unit!11168)

(declare-fun lemmaInv!331 (TokenValueInjection!2262) Unit!11168)

(assert (=> b!610662 (= lt!261312 (lemmaInv!331 (transformation!1223 (rule!2013 token!491))))))

(declare-fun lt!261310 () Unit!11168)

(assert (=> b!610662 (= lt!261310 (lemmaInv!331 (transformation!1223 (rule!2013 (_1!3753 (v!16482 lt!261300))))))))

(declare-fun ruleValid!421 (LexerInterface!1109 Rule!2246) Bool)

(assert (=> b!610662 (ruleValid!421 thiss!22590 (rule!2013 token!491))))

(declare-fun lt!261285 () Unit!11168)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!268 (LexerInterface!1109 Rule!2246 List!6119) Unit!11168)

(assert (=> b!610662 (= lt!261285 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!268 thiss!22590 (rule!2013 token!491) rules!3103))))

(assert (=> b!610662 (ruleValid!421 thiss!22590 (rule!2013 (_1!3753 (v!16482 lt!261300))))))

(declare-fun lt!261320 () Unit!11168)

(assert (=> b!610662 (= lt!261320 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!268 thiss!22590 (rule!2013 (_1!3753 (v!16482 lt!261300))) rules!3103))))

(assert (=> b!610662 (isPrefix!851 input!2705 input!2705)))

(declare-fun lt!261314 () Unit!11168)

(declare-fun lemmaIsPrefixRefl!587 (List!6117 List!6117) Unit!11168)

(assert (=> b!610662 (= lt!261314 (lemmaIsPrefixRefl!587 input!2705 input!2705))))

(assert (=> b!610662 (= (_2!3753 (v!16482 lt!261300)) lt!261284)))

(declare-fun lt!261306 () Unit!11168)

(assert (=> b!610662 (= lt!261306 (lemmaSamePrefixThenSameSuffix!564 lt!261283 (_2!3753 (v!16482 lt!261300)) lt!261283 lt!261284 input!2705))))

(assert (=> b!610662 (= lt!261284 (getSuffix!368 input!2705 lt!261283))))

(assert (=> b!610662 (isPrefix!851 lt!261283 lt!261313)))

(assert (=> b!610662 (= lt!261313 (++!1711 lt!261283 (_2!3753 (v!16482 lt!261300))))))

(declare-fun lt!261295 () Unit!11168)

(assert (=> b!610662 (= lt!261295 (lemmaConcatTwoListThenFirstIsPrefix!696 lt!261283 (_2!3753 (v!16482 lt!261300))))))

(declare-fun lt!261286 () Unit!11168)

(declare-fun lemmaCharactersSize!282 (Token!2182) Unit!11168)

(assert (=> b!610662 (= lt!261286 (lemmaCharactersSize!282 token!491))))

(declare-fun lt!261288 () Unit!11168)

(assert (=> b!610662 (= lt!261288 (lemmaCharactersSize!282 (_1!3753 (v!16482 lt!261300))))))

(declare-fun lt!261307 () Unit!11168)

(assert (=> b!610662 (= lt!261307 e!370123)))

(declare-fun c!112897 () Bool)

(assert (=> b!610662 (= c!112897 (> lt!261305 lt!261289))))

(assert (=> b!610662 (= lt!261289 (size!4804 lt!261301))))

(assert (=> b!610662 (= lt!261305 (size!4804 lt!261283))))

(declare-fun list!2570 (BalanceConc!3888) List!6117)

(declare-fun charsOf!852 (Token!2182) BalanceConc!3888)

(assert (=> b!610662 (= lt!261283 (list!2570 (charsOf!852 (_1!3753 (v!16482 lt!261300)))))))

(assert (=> b!610662 (= lt!261300 (Some!1573 lt!261298))))

(assert (=> b!610662 (= lt!261298 (tuple2!6979 (_1!3753 (v!16482 lt!261300)) (_2!3753 (v!16482 lt!261300))))))

(declare-fun lt!261316 () Unit!11168)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!296 (List!6117 List!6117 List!6117 List!6117) Unit!11168)

(assert (=> b!610662 (= lt!261316 (lemmaConcatSameAndSameSizesThenSameLists!296 lt!261301 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!610663 () Bool)

(declare-fun res!265318 () Bool)

(assert (=> b!610663 (=> res!265318 e!370118)))

(declare-fun getIndex!54 (List!6119 Rule!2246) Int)

(assert (=> b!610663 (= res!265318 (>= (getIndex!54 rules!3103 (rule!2013 (_1!3753 (v!16482 lt!261300)))) (getIndex!54 rules!3103 (rule!2013 token!491))))))

(declare-fun b!610664 () Bool)

(declare-fun e!370120 () Bool)

(assert (=> b!610664 (= e!370120 (= lt!261284 (_2!3753 (v!16482 lt!261300))))))

(declare-fun b!610665 () Bool)

(declare-fun res!265307 () Bool)

(assert (=> b!610665 (=> res!265307 e!370118)))

(assert (=> b!610665 (= res!265307 (not (= lt!261317 (Some!1573 (tuple2!6979 token!491 suffix!1342)))))))

(declare-fun b!610666 () Bool)

(declare-fun res!265296 () Bool)

(assert (=> b!610666 (=> (not res!265296) (not e!370100))))

(declare-fun isEmpty!4409 (List!6117) Bool)

(assert (=> b!610666 (= res!265296 (not (isEmpty!4409 input!2705)))))

(declare-fun b!610667 () Bool)

(declare-fun res!265312 () Bool)

(assert (=> b!610667 (=> (not res!265312) (not e!370120))))

(assert (=> b!610667 (= res!265312 (= (_1!3753 (get!2349 lt!261300)) (_1!3753 (v!16482 lt!261300))))))

(declare-fun b!610668 () Bool)

(assert (=> b!610668 (= e!370113 e!370120)))

(declare-fun res!265314 () Bool)

(assert (=> b!610668 (=> (not res!265314) (not e!370120))))

(assert (=> b!610668 (= res!265314 (isDefined!1385 lt!261300))))

(declare-fun b!610669 () Bool)

(assert (=> b!610669 (= e!370103 e!370098)))

(declare-fun res!265313 () Bool)

(assert (=> b!610669 (=> (not res!265313) (not e!370098))))

(assert (=> b!610669 (= res!265313 ((_ is Some!1573) lt!261300))))

(assert (=> b!610669 (= lt!261300 (maxPrefix!807 thiss!22590 rules!3103 input!2705))))

(declare-fun b!610670 () Bool)

(declare-fun res!265302 () Bool)

(assert (=> b!610670 (=> res!265302 e!370118)))

(assert (=> b!610670 (= res!265302 (not (isEmpty!4409 (_2!3753 (v!16482 lt!261300)))))))

(declare-fun b!610671 () Bool)

(assert (=> b!610671 (= e!370100 e!370111)))

(declare-fun res!265297 () Bool)

(assert (=> b!610671 (=> (not res!265297) (not e!370111))))

(assert (=> b!610671 (= res!265297 (= lt!261301 input!2705))))

(assert (=> b!610671 (= lt!261301 (list!2570 (charsOf!852 token!491)))))

(assert (=> b!610672 (= e!370110 (and tp!189141 tp!189139))))

(declare-fun b!610673 () Bool)

(assert (=> b!610673 (= e!370118 true)))

(declare-fun lt!261309 () Bool)

(assert (=> b!610673 (= lt!261309 (matchR!660 (regex!1223 (rule!2013 token!491)) input!2705))))

(declare-fun b!610674 () Bool)

(declare-fun Unit!11172 () Unit!11168)

(assert (=> b!610674 (= e!370106 Unit!11172)))

(declare-fun b!610675 () Bool)

(declare-fun res!265294 () Bool)

(assert (=> b!610675 (=> (not res!265294) (not e!370100))))

(declare-fun isEmpty!4410 (List!6119) Bool)

(assert (=> b!610675 (= res!265294 (not (isEmpty!4410 rules!3103)))))

(declare-fun b!610676 () Bool)

(declare-fun res!265295 () Bool)

(assert (=> b!610676 (=> res!265295 e!370118)))

(assert (=> b!610676 (= res!265295 (= (rule!2013 (_1!3753 (v!16482 lt!261300))) (rule!2013 token!491)))))

(declare-fun b!610677 () Bool)

(declare-fun res!265298 () Bool)

(assert (=> b!610677 (=> (not res!265298) (not e!370116))))

(assert (=> b!610677 (= res!265298 (= (size!4803 token!491) (size!4804 (originalCharacters!1262 token!491))))))

(declare-fun b!610678 () Bool)

(declare-fun res!265306 () Bool)

(assert (=> b!610678 (=> res!265306 e!370118)))

(assert (=> b!610678 (= res!265306 (not (= lt!261317 (Some!1573 (tuple2!6979 (Token!2183 (apply!1476 (transformation!1223 (rule!2013 token!491)) (seqFromList!1399 input!2705)) (rule!2013 token!491) (size!4804 input!2705) input!2705) (getSuffix!368 lt!261293 input!2705))))))))

(declare-fun b!610679 () Bool)

(declare-fun Unit!11173 () Unit!11168)

(assert (=> b!610679 (= e!370123 Unit!11173)))

(assert (=> b!610679 false))

(assert (= (and start!58408 res!265300) b!610675))

(assert (= (and b!610675 res!265294) b!610651))

(assert (= (and b!610651 res!265317) b!610666))

(assert (= (and b!610666 res!265296) b!610671))

(assert (= (and b!610671 res!265297) b!610642))

(assert (= (and b!610642 res!265315) b!610640))

(assert (= (and b!610640 res!265316) b!610669))

(assert (= (and b!610669 res!265313) b!610656))

(assert (= (and b!610656 res!265310) b!610662))

(assert (= (and b!610662 c!112897) b!610679))

(assert (= (and b!610662 (not c!112897)) b!610648))

(assert (= (and b!610662 res!265309) b!610650))

(assert (= (and b!610650 res!265291) b!610661))

(assert (= (and b!610662 (not res!265292)) b!610657))

(assert (= (and b!610657 res!265299) b!610677))

(assert (= (and b!610677 res!265298) b!610647))

(assert (= (and b!610657 res!265293) b!610643))

(assert (= (and b!610643 (not res!265303)) b!610668))

(assert (= (and b!610668 res!265314) b!610667))

(assert (= (and b!610667 res!265312) b!610664))

(assert (= (and b!610657 c!112898) b!610660))

(assert (= (and b!610657 (not c!112898)) b!610674))

(assert (= (and b!610660 res!265308) b!610641))

(assert (= (and b!610657 (not res!265301)) b!610670))

(assert (= (and b!610670 (not res!265302)) b!610649))

(assert (= (and b!610649 (not res!265305)) b!610653))

(assert (= (and b!610653 (not res!265311)) b!610654))

(assert (= (and b!610654 (not res!265304)) b!610676))

(assert (= (and b!610676 (not res!265295)) b!610663))

(assert (= (and b!610663 (not res!265318)) b!610665))

(assert (= (and b!610665 (not res!265307)) b!610678))

(assert (= (and b!610678 (not res!265306)) b!610673))

(assert (= (and start!58408 ((_ is Cons!6107) suffix!1342)) b!610646))

(assert (= b!610658 b!610672))

(assert (= b!610659 b!610658))

(assert (= (and start!58408 ((_ is Cons!6109) rules!3103)) b!610659))

(assert (= b!610645 b!610655))

(assert (= b!610652 b!610645))

(assert (= start!58408 b!610652))

(assert (= (and start!58408 ((_ is Cons!6107) input!2705)) b!610644))

(declare-fun m!878279 () Bool)

(assert (=> b!610657 m!878279))

(declare-fun m!878281 () Bool)

(assert (=> b!610657 m!878281))

(declare-fun m!878283 () Bool)

(assert (=> b!610657 m!878283))

(declare-fun m!878285 () Bool)

(assert (=> b!610657 m!878285))

(declare-fun m!878287 () Bool)

(assert (=> b!610657 m!878287))

(declare-fun m!878289 () Bool)

(assert (=> b!610657 m!878289))

(declare-fun m!878291 () Bool)

(assert (=> b!610657 m!878291))

(declare-fun m!878293 () Bool)

(assert (=> b!610657 m!878293))

(declare-fun m!878295 () Bool)

(assert (=> b!610657 m!878295))

(declare-fun m!878297 () Bool)

(assert (=> b!610657 m!878297))

(declare-fun m!878299 () Bool)

(assert (=> start!58408 m!878299))

(declare-fun m!878301 () Bool)

(assert (=> b!610650 m!878301))

(declare-fun m!878303 () Bool)

(assert (=> b!610678 m!878303))

(assert (=> b!610678 m!878303))

(declare-fun m!878305 () Bool)

(assert (=> b!610678 m!878305))

(declare-fun m!878307 () Bool)

(assert (=> b!610678 m!878307))

(declare-fun m!878309 () Bool)

(assert (=> b!610678 m!878309))

(declare-fun m!878311 () Bool)

(assert (=> b!610642 m!878311))

(declare-fun m!878313 () Bool)

(assert (=> b!610642 m!878313))

(declare-fun m!878315 () Bool)

(assert (=> b!610642 m!878315))

(declare-fun m!878317 () Bool)

(assert (=> b!610653 m!878317))

(declare-fun m!878319 () Bool)

(assert (=> b!610651 m!878319))

(declare-fun m!878321 () Bool)

(assert (=> b!610654 m!878321))

(declare-fun m!878323 () Bool)

(assert (=> b!610656 m!878323))

(declare-fun m!878325 () Bool)

(assert (=> b!610669 m!878325))

(declare-fun m!878327 () Bool)

(assert (=> b!610666 m!878327))

(assert (=> b!610660 m!878283))

(declare-fun m!878329 () Bool)

(assert (=> b!610660 m!878329))

(declare-fun m!878331 () Bool)

(assert (=> b!610660 m!878331))

(declare-fun m!878333 () Bool)

(assert (=> b!610670 m!878333))

(declare-fun m!878335 () Bool)

(assert (=> b!610677 m!878335))

(declare-fun m!878337 () Bool)

(assert (=> b!610667 m!878337))

(declare-fun m!878339 () Bool)

(assert (=> b!610671 m!878339))

(assert (=> b!610671 m!878339))

(declare-fun m!878341 () Bool)

(assert (=> b!610671 m!878341))

(declare-fun m!878343 () Bool)

(assert (=> b!610658 m!878343))

(declare-fun m!878345 () Bool)

(assert (=> b!610658 m!878345))

(declare-fun m!878347 () Bool)

(assert (=> b!610645 m!878347))

(declare-fun m!878349 () Bool)

(assert (=> b!610645 m!878349))

(assert (=> b!610673 m!878331))

(declare-fun m!878351 () Bool)

(assert (=> b!610675 m!878351))

(declare-fun m!878353 () Bool)

(assert (=> b!610668 m!878353))

(declare-fun m!878355 () Bool)

(assert (=> b!610652 m!878355))

(declare-fun m!878357 () Bool)

(assert (=> b!610662 m!878357))

(declare-fun m!878359 () Bool)

(assert (=> b!610662 m!878359))

(declare-fun m!878361 () Bool)

(assert (=> b!610662 m!878361))

(declare-fun m!878363 () Bool)

(assert (=> b!610662 m!878363))

(declare-fun m!878365 () Bool)

(assert (=> b!610662 m!878365))

(declare-fun m!878367 () Bool)

(assert (=> b!610662 m!878367))

(declare-fun m!878369 () Bool)

(assert (=> b!610662 m!878369))

(declare-fun m!878371 () Bool)

(assert (=> b!610662 m!878371))

(declare-fun m!878373 () Bool)

(assert (=> b!610662 m!878373))

(declare-fun m!878375 () Bool)

(assert (=> b!610662 m!878375))

(declare-fun m!878377 () Bool)

(assert (=> b!610662 m!878377))

(declare-fun m!878379 () Bool)

(assert (=> b!610662 m!878379))

(declare-fun m!878381 () Bool)

(assert (=> b!610662 m!878381))

(declare-fun m!878383 () Bool)

(assert (=> b!610662 m!878383))

(declare-fun m!878385 () Bool)

(assert (=> b!610662 m!878385))

(declare-fun m!878387 () Bool)

(assert (=> b!610662 m!878387))

(declare-fun m!878389 () Bool)

(assert (=> b!610662 m!878389))

(declare-fun m!878391 () Bool)

(assert (=> b!610662 m!878391))

(declare-fun m!878393 () Bool)

(assert (=> b!610662 m!878393))

(declare-fun m!878395 () Bool)

(assert (=> b!610662 m!878395))

(declare-fun m!878397 () Bool)

(assert (=> b!610662 m!878397))

(declare-fun m!878399 () Bool)

(assert (=> b!610662 m!878399))

(declare-fun m!878401 () Bool)

(assert (=> b!610662 m!878401))

(declare-fun m!878403 () Bool)

(assert (=> b!610662 m!878403))

(declare-fun m!878405 () Bool)

(assert (=> b!610662 m!878405))

(declare-fun m!878407 () Bool)

(assert (=> b!610662 m!878407))

(assert (=> b!610662 m!878405))

(declare-fun m!878409 () Bool)

(assert (=> b!610662 m!878409))

(declare-fun m!878411 () Bool)

(assert (=> b!610663 m!878411))

(declare-fun m!878413 () Bool)

(assert (=> b!610663 m!878413))

(declare-fun m!878415 () Bool)

(assert (=> b!610640 m!878415))

(check-sat (not start!58408) (not b!610671) (not b!610678) (not b!610640) (not b!610645) (not b!610652) tp_is_empty!3469 (not b!610668) (not b!610650) (not b!610646) b_and!60453 (not b!610662) b_and!60449 (not b!610644) (not b_next!17427) (not b!610670) (not b!610658) (not b!610656) (not b!610654) (not b_next!17425) (not b!610642) (not b!610675) (not b!610663) (not b!610666) b_and!60447 (not b!610673) (not b!610677) (not b!610659) (not b_next!17423) b_and!60451 (not b!610669) (not b!610653) (not b!610660) (not b!610651) (not b!610667) (not b!610657) (not b_next!17421))
(check-sat b_and!60453 b_and!60449 (not b_next!17427) (not b_next!17425) b_and!60447 (not b_next!17423) b_and!60451 (not b_next!17421))
