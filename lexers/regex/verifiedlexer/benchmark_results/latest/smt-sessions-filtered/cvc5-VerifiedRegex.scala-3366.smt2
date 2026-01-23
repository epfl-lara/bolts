; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!190622 () Bool)

(assert start!190622)

(declare-fun b!1901149 () Bool)

(declare-fun b_free!53421 () Bool)

(declare-fun b_next!54125 () Bool)

(assert (=> b!1901149 (= b_free!53421 (not b_next!54125))))

(declare-fun tp!542989 () Bool)

(declare-fun b_and!147199 () Bool)

(assert (=> b!1901149 (= tp!542989 b_and!147199)))

(declare-fun b_free!53423 () Bool)

(declare-fun b_next!54127 () Bool)

(assert (=> b!1901149 (= b_free!53423 (not b_next!54127))))

(declare-fun tp!542977 () Bool)

(declare-fun b_and!147201 () Bool)

(assert (=> b!1901149 (= tp!542977 b_and!147201)))

(declare-fun b!1901144 () Bool)

(declare-fun b_free!53425 () Bool)

(declare-fun b_next!54129 () Bool)

(assert (=> b!1901144 (= b_free!53425 (not b_next!54129))))

(declare-fun tp!542981 () Bool)

(declare-fun b_and!147203 () Bool)

(assert (=> b!1901144 (= tp!542981 b_and!147203)))

(declare-fun b_free!53427 () Bool)

(declare-fun b_next!54131 () Bool)

(assert (=> b!1901144 (= b_free!53427 (not b_next!54131))))

(declare-fun tp!542988 () Bool)

(declare-fun b_and!147205 () Bool)

(assert (=> b!1901144 (= tp!542988 b_and!147205)))

(declare-fun b!1901151 () Bool)

(declare-fun b_free!53429 () Bool)

(declare-fun b_next!54133 () Bool)

(assert (=> b!1901151 (= b_free!53429 (not b_next!54133))))

(declare-fun tp!542980 () Bool)

(declare-fun b_and!147207 () Bool)

(assert (=> b!1901151 (= tp!542980 b_and!147207)))

(declare-fun b_free!53431 () Bool)

(declare-fun b_next!54135 () Bool)

(assert (=> b!1901151 (= b_free!53431 (not b_next!54135))))

(declare-fun tp!542982 () Bool)

(declare-fun b_and!147209 () Bool)

(assert (=> b!1901151 (= tp!542982 b_and!147209)))

(declare-fun b!1901127 () Bool)

(declare-fun e!1214257 () Bool)

(declare-datatypes ((List!21482 0))(
  ( (Nil!21400) (Cons!21400 (h!26801 (_ BitVec 16)) (t!176863 List!21482)) )
))
(declare-datatypes ((TokenValue!3943 0))(
  ( (FloatLiteralValue!7886 (text!28046 List!21482)) (TokenValueExt!3942 (__x!13384 Int)) (Broken!19715 (value!120066 List!21482)) (Object!4024) (End!3943) (Def!3943) (Underscore!3943) (Match!3943) (Else!3943) (Error!3943) (Case!3943) (If!3943) (Extends!3943) (Abstract!3943) (Class!3943) (Val!3943) (DelimiterValue!7886 (del!4003 List!21482)) (KeywordValue!3949 (value!120067 List!21482)) (CommentValue!7886 (value!120068 List!21482)) (WhitespaceValue!7886 (value!120069 List!21482)) (IndentationValue!3943 (value!120070 List!21482)) (String!24834) (Int32!3943) (Broken!19716 (value!120071 List!21482)) (Boolean!3944) (Unit!35728) (OperatorValue!3946 (op!4003 List!21482)) (IdentifierValue!7886 (value!120072 List!21482)) (IdentifierValue!7887 (value!120073 List!21482)) (WhitespaceValue!7887 (value!120074 List!21482)) (True!7886) (False!7886) (Broken!19717 (value!120075 List!21482)) (Broken!19718 (value!120076 List!21482)) (True!7887) (RightBrace!3943) (RightBracket!3943) (Colon!3943) (Null!3943) (Comma!3943) (LeftBracket!3943) (False!7887) (LeftBrace!3943) (ImaginaryLiteralValue!3943 (text!28047 List!21482)) (StringLiteralValue!11829 (value!120077 List!21482)) (EOFValue!3943 (value!120078 List!21482)) (IdentValue!3943 (value!120079 List!21482)) (DelimiterValue!7887 (value!120080 List!21482)) (DedentValue!3943 (value!120081 List!21482)) (NewLineValue!3943 (value!120082 List!21482)) (IntegerValue!11829 (value!120083 (_ BitVec 32)) (text!28048 List!21482)) (IntegerValue!11830 (value!120084 Int) (text!28049 List!21482)) (Times!3943) (Or!3943) (Equal!3943) (Minus!3943) (Broken!19719 (value!120085 List!21482)) (And!3943) (Div!3943) (LessEqual!3943) (Mod!3943) (Concat!9175) (Not!3943) (Plus!3943) (SpaceValue!3943 (value!120086 List!21482)) (IntegerValue!11831 (value!120087 Int) (text!28050 List!21482)) (StringLiteralValue!11830 (text!28051 List!21482)) (FloatLiteralValue!7887 (text!28052 List!21482)) (BytesLiteralValue!3943 (value!120088 List!21482)) (CommentValue!7887 (value!120089 List!21482)) (StringLiteralValue!11831 (value!120090 List!21482)) (ErrorTokenValue!3943 (msg!4004 List!21482)) )
))
(declare-datatypes ((String!24835 0))(
  ( (String!24836 (value!120091 String)) )
))
(declare-datatypes ((C!10610 0))(
  ( (C!10611 (val!6257 Int)) )
))
(declare-datatypes ((List!21483 0))(
  ( (Nil!21401) (Cons!21401 (h!26802 C!10610) (t!176864 List!21483)) )
))
(declare-datatypes ((Regex!5232 0))(
  ( (ElementMatch!5232 (c!309758 C!10610)) (Concat!9176 (regOne!10976 Regex!5232) (regTwo!10976 Regex!5232)) (EmptyExpr!5232) (Star!5232 (reg!5561 Regex!5232)) (EmptyLang!5232) (Union!5232 (regOne!10977 Regex!5232) (regTwo!10977 Regex!5232)) )
))
(declare-datatypes ((IArray!14245 0))(
  ( (IArray!14246 (innerList!7180 List!21483)) )
))
(declare-datatypes ((Conc!7120 0))(
  ( (Node!7120 (left!17130 Conc!7120) (right!17460 Conc!7120) (csize!14470 Int) (cheight!7331 Int)) (Leaf!10487 (xs!10014 IArray!14245) (csize!14471 Int)) (Empty!7120) )
))
(declare-datatypes ((BalanceConc!14056 0))(
  ( (BalanceConc!14057 (c!309759 Conc!7120)) )
))
(declare-datatypes ((TokenValueInjection!7470 0))(
  ( (TokenValueInjection!7471 (toValue!5424 Int) (toChars!5283 Int)) )
))
(declare-datatypes ((Rule!7414 0))(
  ( (Rule!7415 (regex!3807 Regex!5232) (tag!4233 String!24835) (isSeparator!3807 Bool) (transformation!3807 TokenValueInjection!7470)) )
))
(declare-datatypes ((Token!7166 0))(
  ( (Token!7167 (value!120092 TokenValue!3943) (rule!6000 Rule!7414) (size!16901 Int) (originalCharacters!4614 List!21483)) )
))
(declare-datatypes ((List!21484 0))(
  ( (Nil!21402) (Cons!21402 (h!26803 Token!7166) (t!176865 List!21484)) )
))
(declare-fun tokens!598 () List!21484)

(declare-fun lt!727041 () Rule!7414)

(assert (=> b!1901127 (= e!1214257 (= (rule!6000 (h!26803 tokens!598)) lt!727041))))

(declare-fun e!1214251 () Bool)

(declare-fun e!1214260 () Bool)

(declare-fun tp!542987 () Bool)

(declare-fun b!1901128 () Bool)

(declare-fun inv!28498 (Token!7166) Bool)

(assert (=> b!1901128 (= e!1214260 (and (inv!28498 (h!26803 tokens!598)) e!1214251 tp!542987))))

(declare-fun res!848836 () Bool)

(declare-fun e!1214253 () Bool)

(assert (=> start!190622 (=> (not res!848836) (not e!1214253))))

(declare-datatypes ((LexerInterface!3420 0))(
  ( (LexerInterfaceExt!3417 (__x!13385 Int)) (Lexer!3418) )
))
(declare-fun thiss!23328 () LexerInterface!3420)

(assert (=> start!190622 (= res!848836 (is-Lexer!3418 thiss!23328))))

(assert (=> start!190622 e!1214253))

(assert (=> start!190622 true))

(declare-fun e!1214264 () Bool)

(assert (=> start!190622 e!1214264))

(assert (=> start!190622 e!1214260))

(declare-fun separatorToken!354 () Token!7166)

(declare-fun e!1214261 () Bool)

(assert (=> start!190622 (and (inv!28498 separatorToken!354) e!1214261)))

(declare-fun b!1901129 () Bool)

(declare-fun res!848825 () Bool)

(assert (=> b!1901129 (=> (not res!848825) (not e!1214253))))

(declare-datatypes ((List!21485 0))(
  ( (Nil!21403) (Cons!21403 (h!26804 Rule!7414) (t!176866 List!21485)) )
))
(declare-fun rules!3198 () List!21485)

(declare-fun rulesProduceEachTokenIndividuallyList!1151 (LexerInterface!3420 List!21485 List!21484) Bool)

(assert (=> b!1901129 (= res!848825 (rulesProduceEachTokenIndividuallyList!1151 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1901130 () Bool)

(declare-fun res!848827 () Bool)

(assert (=> b!1901130 (=> (not res!848827) (not e!1214253))))

(declare-fun lambda!74302 () Int)

(declare-fun forall!4489 (List!21484 Int) Bool)

(assert (=> b!1901130 (= res!848827 (forall!4489 tokens!598 lambda!74302))))

(declare-fun b!1901131 () Bool)

(declare-fun res!848831 () Bool)

(assert (=> b!1901131 (=> (not res!848831) (not e!1214253))))

(assert (=> b!1901131 (= res!848831 (isSeparator!3807 (rule!6000 separatorToken!354)))))

(declare-fun b!1901132 () Bool)

(declare-fun res!848826 () Bool)

(assert (=> b!1901132 (=> (not res!848826) (not e!1214253))))

(declare-fun rulesProduceIndividualToken!1592 (LexerInterface!3420 List!21485 Token!7166) Bool)

(assert (=> b!1901132 (= res!848826 (rulesProduceIndividualToken!1592 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1901133 () Bool)

(declare-fun e!1214247 () Bool)

(assert (=> b!1901133 (= e!1214247 e!1214257)))

(declare-fun res!848835 () Bool)

(assert (=> b!1901133 (=> (not res!848835) (not e!1214257))))

(declare-fun lt!727046 () List!21483)

(declare-fun matchR!2518 (Regex!5232 List!21483) Bool)

(assert (=> b!1901133 (= res!848835 (matchR!2518 (regex!3807 lt!727041) lt!727046))))

(declare-datatypes ((Option!4319 0))(
  ( (None!4318) (Some!4318 (v!26347 Rule!7414)) )
))
(declare-fun lt!727047 () Option!4319)

(declare-fun get!6630 (Option!4319) Rule!7414)

(assert (=> b!1901133 (= lt!727041 (get!6630 lt!727047))))

(declare-fun b!1901134 () Bool)

(declare-fun e!1214245 () Bool)

(declare-fun e!1214254 () Bool)

(assert (=> b!1901134 (= e!1214245 e!1214254)))

(declare-fun res!848832 () Bool)

(assert (=> b!1901134 (=> (not res!848832) (not e!1214254))))

(declare-fun lt!727044 () Rule!7414)

(declare-fun lt!727051 () List!21483)

(assert (=> b!1901134 (= res!848832 (matchR!2518 (regex!3807 lt!727044) lt!727051))))

(declare-fun lt!727052 () Option!4319)

(assert (=> b!1901134 (= lt!727044 (get!6630 lt!727052))))

(declare-fun b!1901135 () Bool)

(declare-fun res!848833 () Bool)

(assert (=> b!1901135 (=> (not res!848833) (not e!1214253))))

(declare-fun sepAndNonSepRulesDisjointChars!905 (List!21485 List!21485) Bool)

(assert (=> b!1901135 (= res!848833 (sepAndNonSepRulesDisjointChars!905 rules!3198 rules!3198))))

(declare-fun b!1901136 () Bool)

(declare-fun res!848830 () Bool)

(assert (=> b!1901136 (=> (not res!848830) (not e!1214253))))

(assert (=> b!1901136 (= res!848830 (is-Cons!21402 tokens!598))))

(declare-fun b!1901137 () Bool)

(declare-fun e!1214256 () Bool)

(assert (=> b!1901137 (= e!1214253 (not e!1214256))))

(declare-fun res!848828 () Bool)

(assert (=> b!1901137 (=> res!848828 e!1214256)))

(declare-datatypes ((tuple2!20154 0))(
  ( (tuple2!20155 (_1!11546 Token!7166) (_2!11546 List!21483)) )
))
(declare-datatypes ((Option!4320 0))(
  ( (None!4319) (Some!4319 (v!26348 tuple2!20154)) )
))
(declare-fun lt!727043 () Option!4320)

(assert (=> b!1901137 (= res!848828 (or (not (is-Some!4319 lt!727043)) (not (= (_1!11546 (v!26348 lt!727043)) (h!26803 tokens!598)))))))

(declare-fun maxPrefix!1866 (LexerInterface!3420 List!21485 List!21483) Option!4320)

(declare-fun ++!5750 (List!21483 List!21483) List!21483)

(declare-fun printWithSeparatorTokenWhenNeededList!463 (LexerInterface!3420 List!21485 List!21484 Token!7166) List!21483)

(assert (=> b!1901137 (= lt!727043 (maxPrefix!1866 thiss!23328 rules!3198 (++!5750 lt!727046 (printWithSeparatorTokenWhenNeededList!463 thiss!23328 rules!3198 (t!176865 tokens!598) separatorToken!354))))))

(assert (=> b!1901137 e!1214247))

(declare-fun res!848838 () Bool)

(assert (=> b!1901137 (=> (not res!848838) (not e!1214247))))

(declare-fun isDefined!3617 (Option!4319) Bool)

(assert (=> b!1901137 (= res!848838 (isDefined!3617 lt!727047))))

(declare-fun getRuleFromTag!650 (LexerInterface!3420 List!21485 String!24835) Option!4319)

(assert (=> b!1901137 (= lt!727047 (getRuleFromTag!650 thiss!23328 rules!3198 (tag!4233 (rule!6000 (h!26803 tokens!598)))))))

(declare-datatypes ((Unit!35729 0))(
  ( (Unit!35730) )
))
(declare-fun lt!727050 () Unit!35729)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!650 (LexerInterface!3420 List!21485 List!21483 Token!7166) Unit!35729)

(assert (=> b!1901137 (= lt!727050 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!650 thiss!23328 rules!3198 lt!727046 (h!26803 tokens!598)))))

(declare-fun e!1214252 () Bool)

(assert (=> b!1901137 e!1214252))

(declare-fun res!848829 () Bool)

(assert (=> b!1901137 (=> (not res!848829) (not e!1214252))))

(declare-fun lt!727040 () Option!4320)

(declare-fun isDefined!3618 (Option!4320) Bool)

(assert (=> b!1901137 (= res!848829 (isDefined!3618 lt!727040))))

(assert (=> b!1901137 (= lt!727040 (maxPrefix!1866 thiss!23328 rules!3198 lt!727046))))

(declare-fun lt!727048 () BalanceConc!14056)

(declare-fun list!8699 (BalanceConc!14056) List!21483)

(assert (=> b!1901137 (= lt!727046 (list!8699 lt!727048))))

(assert (=> b!1901137 e!1214245))

(declare-fun res!848837 () Bool)

(assert (=> b!1901137 (=> (not res!848837) (not e!1214245))))

(assert (=> b!1901137 (= res!848837 (isDefined!3617 lt!727052))))

(assert (=> b!1901137 (= lt!727052 (getRuleFromTag!650 thiss!23328 rules!3198 (tag!4233 (rule!6000 separatorToken!354))))))

(declare-fun lt!727039 () Unit!35729)

(assert (=> b!1901137 (= lt!727039 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!650 thiss!23328 rules!3198 lt!727051 separatorToken!354))))

(declare-fun charsOf!2363 (Token!7166) BalanceConc!14056)

(assert (=> b!1901137 (= lt!727051 (list!8699 (charsOf!2363 separatorToken!354)))))

(declare-fun lt!727042 () Unit!35729)

(declare-fun lemmaEqSameImage!515 (TokenValueInjection!7470 BalanceConc!14056 BalanceConc!14056) Unit!35729)

(declare-fun seqFromList!2679 (List!21483) BalanceConc!14056)

(assert (=> b!1901137 (= lt!727042 (lemmaEqSameImage!515 (transformation!3807 (rule!6000 (h!26803 tokens!598))) lt!727048 (seqFromList!2679 (originalCharacters!4614 (h!26803 tokens!598)))))))

(declare-fun lt!727045 () Unit!35729)

(declare-fun lemmaSemiInverse!786 (TokenValueInjection!7470 BalanceConc!14056) Unit!35729)

(assert (=> b!1901137 (= lt!727045 (lemmaSemiInverse!786 (transformation!3807 (rule!6000 (h!26803 tokens!598))) lt!727048))))

(assert (=> b!1901137 (= lt!727048 (charsOf!2363 (h!26803 tokens!598)))))

(declare-fun b!1901138 () Bool)

(declare-fun res!848824 () Bool)

(assert (=> b!1901138 (=> res!848824 e!1214256)))

(declare-fun isEmpty!13129 (List!21484) Bool)

(assert (=> b!1901138 (= res!848824 (isEmpty!13129 tokens!598))))

(declare-fun b!1901139 () Bool)

(declare-fun e!1214250 () Bool)

(declare-fun tp!542985 () Bool)

(assert (=> b!1901139 (= e!1214264 (and e!1214250 tp!542985))))

(declare-fun tp!542978 () Bool)

(declare-fun e!1214255 () Bool)

(declare-fun b!1901140 () Bool)

(declare-fun inv!21 (TokenValue!3943) Bool)

(assert (=> b!1901140 (= e!1214251 (and (inv!21 (value!120092 (h!26803 tokens!598))) e!1214255 tp!542978))))

(declare-fun b!1901141 () Bool)

(declare-fun res!848823 () Bool)

(assert (=> b!1901141 (=> (not res!848823) (not e!1214253))))

(declare-fun rulesInvariant!3027 (LexerInterface!3420 List!21485) Bool)

(assert (=> b!1901141 (= res!848823 (rulesInvariant!3027 thiss!23328 rules!3198))))

(declare-fun b!1901142 () Bool)

(declare-fun res!848834 () Bool)

(assert (=> b!1901142 (=> (not res!848834) (not e!1214253))))

(declare-fun isEmpty!13130 (List!21485) Bool)

(assert (=> b!1901142 (= res!848834 (not (isEmpty!13130 rules!3198)))))

(declare-fun tp!542983 () Bool)

(declare-fun e!1214263 () Bool)

(declare-fun b!1901143 () Bool)

(declare-fun inv!28495 (String!24835) Bool)

(declare-fun inv!28499 (TokenValueInjection!7470) Bool)

(assert (=> b!1901143 (= e!1214255 (and tp!542983 (inv!28495 (tag!4233 (rule!6000 (h!26803 tokens!598)))) (inv!28499 (transformation!3807 (rule!6000 (h!26803 tokens!598)))) e!1214263))))

(assert (=> b!1901144 (= e!1214263 (and tp!542981 tp!542988))))

(declare-fun tp!542979 () Bool)

(declare-fun e!1214258 () Bool)

(declare-fun e!1214259 () Bool)

(declare-fun b!1901145 () Bool)

(assert (=> b!1901145 (= e!1214258 (and tp!542979 (inv!28495 (tag!4233 (rule!6000 separatorToken!354))) (inv!28499 (transformation!3807 (rule!6000 separatorToken!354))) e!1214259))))

(declare-fun b!1901146 () Bool)

(assert (=> b!1901146 (= e!1214254 (= (rule!6000 separatorToken!354) lt!727044))))

(declare-fun b!1901147 () Bool)

(declare-fun get!6631 (Option!4320) tuple2!20154)

(assert (=> b!1901147 (= e!1214252 (= (_1!11546 (get!6631 lt!727040)) (h!26803 tokens!598)))))

(declare-fun b!1901148 () Bool)

(declare-fun tp!542984 () Bool)

(assert (=> b!1901148 (= e!1214261 (and (inv!21 (value!120092 separatorToken!354)) e!1214258 tp!542984))))

(assert (=> b!1901149 (= e!1214259 (and tp!542989 tp!542977))))

(declare-fun b!1901150 () Bool)

(assert (=> b!1901150 (= e!1214256 true)))

(declare-fun lt!727049 () Option!4320)

(assert (=> b!1901150 (= lt!727049 (maxPrefix!1866 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!463 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(declare-fun e!1214246 () Bool)

(assert (=> b!1901151 (= e!1214246 (and tp!542980 tp!542982))))

(declare-fun b!1901152 () Bool)

(declare-fun tp!542986 () Bool)

(assert (=> b!1901152 (= e!1214250 (and tp!542986 (inv!28495 (tag!4233 (h!26804 rules!3198))) (inv!28499 (transformation!3807 (h!26804 rules!3198))) e!1214246))))

(assert (= (and start!190622 res!848836) b!1901142))

(assert (= (and b!1901142 res!848834) b!1901141))

(assert (= (and b!1901141 res!848823) b!1901129))

(assert (= (and b!1901129 res!848825) b!1901132))

(assert (= (and b!1901132 res!848826) b!1901131))

(assert (= (and b!1901131 res!848831) b!1901130))

(assert (= (and b!1901130 res!848827) b!1901135))

(assert (= (and b!1901135 res!848833) b!1901136))

(assert (= (and b!1901136 res!848830) b!1901137))

(assert (= (and b!1901137 res!848837) b!1901134))

(assert (= (and b!1901134 res!848832) b!1901146))

(assert (= (and b!1901137 res!848829) b!1901147))

(assert (= (and b!1901137 res!848838) b!1901133))

(assert (= (and b!1901133 res!848835) b!1901127))

(assert (= (and b!1901137 (not res!848828)) b!1901138))

(assert (= (and b!1901138 (not res!848824)) b!1901150))

(assert (= b!1901152 b!1901151))

(assert (= b!1901139 b!1901152))

(assert (= (and start!190622 (is-Cons!21403 rules!3198)) b!1901139))

(assert (= b!1901143 b!1901144))

(assert (= b!1901140 b!1901143))

(assert (= b!1901128 b!1901140))

(assert (= (and start!190622 (is-Cons!21402 tokens!598)) b!1901128))

(assert (= b!1901145 b!1901149))

(assert (= b!1901148 b!1901145))

(assert (= start!190622 b!1901148))

(declare-fun m!2332267 () Bool)

(assert (=> b!1901141 m!2332267))

(declare-fun m!2332269 () Bool)

(assert (=> b!1901138 m!2332269))

(declare-fun m!2332271 () Bool)

(assert (=> b!1901128 m!2332271))

(declare-fun m!2332273 () Bool)

(assert (=> b!1901150 m!2332273))

(assert (=> b!1901150 m!2332273))

(declare-fun m!2332275 () Bool)

(assert (=> b!1901150 m!2332275))

(declare-fun m!2332277 () Bool)

(assert (=> b!1901129 m!2332277))

(declare-fun m!2332279 () Bool)

(assert (=> b!1901134 m!2332279))

(declare-fun m!2332281 () Bool)

(assert (=> b!1901134 m!2332281))

(declare-fun m!2332283 () Bool)

(assert (=> b!1901142 m!2332283))

(declare-fun m!2332285 () Bool)

(assert (=> b!1901152 m!2332285))

(declare-fun m!2332287 () Bool)

(assert (=> b!1901152 m!2332287))

(declare-fun m!2332289 () Bool)

(assert (=> b!1901143 m!2332289))

(declare-fun m!2332291 () Bool)

(assert (=> b!1901143 m!2332291))

(declare-fun m!2332293 () Bool)

(assert (=> b!1901137 m!2332293))

(declare-fun m!2332295 () Bool)

(assert (=> b!1901137 m!2332295))

(declare-fun m!2332297 () Bool)

(assert (=> b!1901137 m!2332297))

(declare-fun m!2332299 () Bool)

(assert (=> b!1901137 m!2332299))

(declare-fun m!2332301 () Bool)

(assert (=> b!1901137 m!2332301))

(declare-fun m!2332303 () Bool)

(assert (=> b!1901137 m!2332303))

(declare-fun m!2332305 () Bool)

(assert (=> b!1901137 m!2332305))

(declare-fun m!2332307 () Bool)

(assert (=> b!1901137 m!2332307))

(assert (=> b!1901137 m!2332305))

(assert (=> b!1901137 m!2332299))

(declare-fun m!2332309 () Bool)

(assert (=> b!1901137 m!2332309))

(declare-fun m!2332311 () Bool)

(assert (=> b!1901137 m!2332311))

(declare-fun m!2332313 () Bool)

(assert (=> b!1901137 m!2332313))

(assert (=> b!1901137 m!2332309))

(declare-fun m!2332315 () Bool)

(assert (=> b!1901137 m!2332315))

(declare-fun m!2332317 () Bool)

(assert (=> b!1901137 m!2332317))

(assert (=> b!1901137 m!2332295))

(declare-fun m!2332319 () Bool)

(assert (=> b!1901137 m!2332319))

(declare-fun m!2332321 () Bool)

(assert (=> b!1901137 m!2332321))

(declare-fun m!2332323 () Bool)

(assert (=> b!1901137 m!2332323))

(declare-fun m!2332325 () Bool)

(assert (=> b!1901137 m!2332325))

(declare-fun m!2332327 () Bool)

(assert (=> b!1901137 m!2332327))

(declare-fun m!2332329 () Bool)

(assert (=> b!1901133 m!2332329))

(declare-fun m!2332331 () Bool)

(assert (=> b!1901133 m!2332331))

(declare-fun m!2332333 () Bool)

(assert (=> b!1901145 m!2332333))

(declare-fun m!2332335 () Bool)

(assert (=> b!1901145 m!2332335))

(declare-fun m!2332337 () Bool)

(assert (=> b!1901132 m!2332337))

(declare-fun m!2332339 () Bool)

(assert (=> b!1901148 m!2332339))

(declare-fun m!2332341 () Bool)

(assert (=> b!1901147 m!2332341))

(declare-fun m!2332343 () Bool)

(assert (=> b!1901130 m!2332343))

(declare-fun m!2332345 () Bool)

(assert (=> b!1901140 m!2332345))

(declare-fun m!2332347 () Bool)

(assert (=> b!1901135 m!2332347))

(declare-fun m!2332349 () Bool)

(assert (=> start!190622 m!2332349))

(push 1)

(assert b_and!147201)

(assert (not b!1901140))

(assert (not b!1901143))

(assert (not b!1901150))

(assert (not b!1901134))

(assert b_and!147203)

(assert (not b!1901138))

(assert (not b!1901139))

(assert (not b!1901133))

(assert (not b_next!54125))

(assert (not b_next!54131))

(assert (not b!1901141))

(assert b_and!147199)

(assert (not b!1901147))

(assert (not start!190622))

(assert (not b!1901137))

(assert (not b_next!54135))

(assert b_and!147205)

(assert (not b!1901129))

(assert (not b_next!54127))

(assert (not b!1901132))

(assert (not b!1901152))

(assert (not b_next!54133))

(assert (not b!1901145))

(assert (not b!1901142))

(assert b_and!147207)

(assert (not b!1901128))

(assert (not b!1901130))

(assert (not b_next!54129))

(assert (not b!1901148))

(assert b_and!147209)

(assert (not b!1901135))

(check-sat)

(pop 1)

(push 1)

(assert b_and!147201)

(assert (not b_next!54127))

(assert b_and!147203)

(assert (not b_next!54125))

(assert (not b_next!54133))

(assert (not b_next!54131))

(assert b_and!147207)

(assert (not b_next!54129))

(assert b_and!147199)

(assert b_and!147209)

(assert (not b_next!54135))

(assert b_and!147205)

(check-sat)

(pop 1)

