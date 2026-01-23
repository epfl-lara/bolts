; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!346240 () Bool)

(assert start!346240)

(declare-fun b!3685688 () Bool)

(declare-fun b_free!97769 () Bool)

(declare-fun b_next!98473 () Bool)

(assert (=> b!3685688 (= b_free!97769 (not b_next!98473))))

(declare-fun tp!1120328 () Bool)

(declare-fun b_and!275451 () Bool)

(assert (=> b!3685688 (= tp!1120328 b_and!275451)))

(declare-fun b_free!97771 () Bool)

(declare-fun b_next!98475 () Bool)

(assert (=> b!3685688 (= b_free!97771 (not b_next!98475))))

(declare-fun tp!1120326 () Bool)

(declare-fun b_and!275453 () Bool)

(assert (=> b!3685688 (= tp!1120326 b_and!275453)))

(declare-fun b!3685681 () Bool)

(declare-fun e!2282389 () Bool)

(declare-fun tp_is_empty!18367 () Bool)

(declare-fun tp!1120329 () Bool)

(assert (=> b!3685681 (= e!2282389 (and tp_is_empty!18367 tp!1120329))))

(declare-fun b!3685683 () Bool)

(declare-fun e!2282397 () Bool)

(declare-datatypes ((List!39102 0))(
  ( (Nil!38978) (Cons!38978 (h!44398 (_ BitVec 16)) (t!301077 List!39102)) )
))
(declare-datatypes ((TokenValue!6113 0))(
  ( (FloatLiteralValue!12226 (text!43236 List!39102)) (TokenValueExt!6112 (__x!24443 Int)) (Broken!30565 (value!188101 List!39102)) (Object!6236) (End!6113) (Def!6113) (Underscore!6113) (Match!6113) (Else!6113) (Error!6113) (Case!6113) (If!6113) (Extends!6113) (Abstract!6113) (Class!6113) (Val!6113) (DelimiterValue!12226 (del!6173 List!39102)) (KeywordValue!6119 (value!188102 List!39102)) (CommentValue!12226 (value!188103 List!39102)) (WhitespaceValue!12226 (value!188104 List!39102)) (IndentationValue!6113 (value!188105 List!39102)) (String!43900) (Int32!6113) (Broken!30566 (value!188106 List!39102)) (Boolean!6114) (Unit!57044) (OperatorValue!6116 (op!6173 List!39102)) (IdentifierValue!12226 (value!188107 List!39102)) (IdentifierValue!12227 (value!188108 List!39102)) (WhitespaceValue!12227 (value!188109 List!39102)) (True!12226) (False!12226) (Broken!30567 (value!188110 List!39102)) (Broken!30568 (value!188111 List!39102)) (True!12227) (RightBrace!6113) (RightBracket!6113) (Colon!6113) (Null!6113) (Comma!6113) (LeftBracket!6113) (False!12227) (LeftBrace!6113) (ImaginaryLiteralValue!6113 (text!43237 List!39102)) (StringLiteralValue!18339 (value!188112 List!39102)) (EOFValue!6113 (value!188113 List!39102)) (IdentValue!6113 (value!188114 List!39102)) (DelimiterValue!12227 (value!188115 List!39102)) (DedentValue!6113 (value!188116 List!39102)) (NewLineValue!6113 (value!188117 List!39102)) (IntegerValue!18339 (value!188118 (_ BitVec 32)) (text!43238 List!39102)) (IntegerValue!18340 (value!188119 Int) (text!43239 List!39102)) (Times!6113) (Or!6113) (Equal!6113) (Minus!6113) (Broken!30569 (value!188120 List!39102)) (And!6113) (Div!6113) (LessEqual!6113) (Mod!6113) (Concat!16755) (Not!6113) (Plus!6113) (SpaceValue!6113 (value!188121 List!39102)) (IntegerValue!18341 (value!188122 Int) (text!43240 List!39102)) (StringLiteralValue!18340 (text!43241 List!39102)) (FloatLiteralValue!12227 (text!43242 List!39102)) (BytesLiteralValue!6113 (value!188123 List!39102)) (CommentValue!12227 (value!188124 List!39102)) (StringLiteralValue!18341 (value!188125 List!39102)) (ErrorTokenValue!6113 (msg!6174 List!39102)) )
))
(declare-datatypes ((C!21470 0))(
  ( (C!21471 (val!12783 Int)) )
))
(declare-datatypes ((List!39103 0))(
  ( (Nil!38979) (Cons!38979 (h!44399 C!21470) (t!301078 List!39103)) )
))
(declare-datatypes ((IArray!23917 0))(
  ( (IArray!23918 (innerList!12016 List!39103)) )
))
(declare-datatypes ((Regex!10642 0))(
  ( (ElementMatch!10642 (c!637509 C!21470)) (Concat!16756 (regOne!21796 Regex!10642) (regTwo!21796 Regex!10642)) (EmptyExpr!10642) (Star!10642 (reg!10971 Regex!10642)) (EmptyLang!10642) (Union!10642 (regOne!21797 Regex!10642) (regTwo!21797 Regex!10642)) )
))
(declare-datatypes ((Conc!11956 0))(
  ( (Node!11956 (left!30404 Conc!11956) (right!30734 Conc!11956) (csize!24142 Int) (cheight!12167 Int)) (Leaf!18509 (xs!15158 IArray!23917) (csize!24143 Int)) (Empty!11956) )
))
(declare-datatypes ((BalanceConc!23526 0))(
  ( (BalanceConc!23527 (c!637510 Conc!11956)) )
))
(declare-datatypes ((String!43901 0))(
  ( (String!43902 (value!188126 String)) )
))
(declare-datatypes ((TokenValueInjection!11654 0))(
  ( (TokenValueInjection!11655 (toValue!8191 Int) (toChars!8050 Int)) )
))
(declare-datatypes ((Rule!11566 0))(
  ( (Rule!11567 (regex!5883 Regex!10642) (tag!6693 String!43901) (isSeparator!5883 Bool) (transformation!5883 TokenValueInjection!11654)) )
))
(declare-datatypes ((Token!11132 0))(
  ( (Token!11133 (value!188127 TokenValue!6113) (rule!8725 Rule!11566) (size!29779 Int) (originalCharacters!6597 List!39103)) )
))
(declare-fun lt!1289825 () Token!11132)

(declare-fun lt!1289827 () Rule!11566)

(assert (=> b!3685683 (= e!2282397 (= (rule!8725 lt!1289825) lt!1289827))))

(declare-fun e!2282396 () Bool)

(declare-datatypes ((List!39104 0))(
  ( (Nil!38980) (Cons!38980 (h!44400 Rule!11566) (t!301079 List!39104)) )
))
(declare-fun rules!3568 () List!39104)

(declare-fun e!2282395 () Bool)

(declare-fun b!3685684 () Bool)

(declare-fun tp!1120330 () Bool)

(declare-fun inv!52446 (String!43901) Bool)

(declare-fun inv!52449 (TokenValueInjection!11654) Bool)

(assert (=> b!3685684 (= e!2282395 (and tp!1120330 (inv!52446 (tag!6693 (h!44400 rules!3568))) (inv!52449 (transformation!5883 (h!44400 rules!3568))) e!2282396))))

(declare-fun b!3685685 () Bool)

(declare-fun res!1497678 () Bool)

(declare-fun e!2282399 () Bool)

(assert (=> b!3685685 (=> (not res!1497678) (not e!2282399))))

(declare-fun isEmpty!23177 (List!39104) Bool)

(assert (=> b!3685685 (= res!1497678 (not (isEmpty!23177 rules!3568)))))

(declare-fun b!3685686 () Bool)

(declare-fun res!1497683 () Bool)

(declare-fun e!2282394 () Bool)

(assert (=> b!3685686 (=> res!1497683 e!2282394)))

(declare-fun lt!1289824 () List!39103)

(declare-datatypes ((LexerInterface!5472 0))(
  ( (LexerInterfaceExt!5469 (__x!24444 Int)) (Lexer!5470) )
))
(declare-fun thiss!25197 () LexerInterface!5472)

(declare-datatypes ((tuple2!38860 0))(
  ( (tuple2!38861 (_1!22564 Token!11132) (_2!22564 List!39103)) )
))
(declare-datatypes ((Option!8377 0))(
  ( (None!8376) (Some!8376 (v!38322 tuple2!38860)) )
))
(declare-fun isEmpty!23178 (Option!8377) Bool)

(declare-fun maxPrefix!3000 (LexerInterface!5472 List!39104 List!39103) Option!8377)

(assert (=> b!3685686 (= res!1497683 (isEmpty!23178 (maxPrefix!3000 thiss!25197 rules!3568 lt!1289824)))))

(declare-fun b!3685687 () Bool)

(declare-fun res!1497682 () Bool)

(assert (=> b!3685687 (=> (not res!1497682) (not e!2282399))))

(declare-fun rulesInvariant!4869 (LexerInterface!5472 List!39104) Bool)

(assert (=> b!3685687 (= res!1497682 (rulesInvariant!4869 thiss!25197 rules!3568))))

(assert (=> b!3685688 (= e!2282396 (and tp!1120328 tp!1120326))))

(declare-fun b!3685682 () Bool)

(declare-fun e!2282391 () Bool)

(assert (=> b!3685682 (= e!2282391 e!2282397)))

(declare-fun res!1497677 () Bool)

(assert (=> b!3685682 (=> (not res!1497677) (not e!2282397))))

(declare-fun lt!1289821 () List!39103)

(declare-fun matchR!5197 (Regex!10642 List!39103) Bool)

(assert (=> b!3685682 (= res!1497677 (matchR!5197 (regex!5883 lt!1289827) lt!1289821))))

(declare-datatypes ((Option!8378 0))(
  ( (None!8377) (Some!8377 (v!38323 Rule!11566)) )
))
(declare-fun lt!1289828 () Option!8378)

(declare-fun get!12920 (Option!8378) Rule!11566)

(assert (=> b!3685682 (= lt!1289827 (get!12920 lt!1289828))))

(declare-fun res!1497680 () Bool)

(assert (=> start!346240 (=> (not res!1497680) (not e!2282399))))

(assert (=> start!346240 (= res!1497680 (is-Lexer!5470 thiss!25197))))

(assert (=> start!346240 e!2282399))

(assert (=> start!346240 true))

(declare-fun e!2282398 () Bool)

(assert (=> start!346240 e!2282398))

(assert (=> start!346240 e!2282389))

(declare-fun e!2282392 () Bool)

(assert (=> start!346240 e!2282392))

(declare-fun b!3685689 () Bool)

(declare-fun e!2282393 () Bool)

(assert (=> b!3685689 (= e!2282399 e!2282393)))

(declare-fun res!1497684 () Bool)

(assert (=> b!3685689 (=> (not res!1497684) (not e!2282393))))

(declare-datatypes ((List!39105 0))(
  ( (Nil!38981) (Cons!38981 (h!44401 Token!11132) (t!301080 List!39105)) )
))
(declare-datatypes ((IArray!23919 0))(
  ( (IArray!23920 (innerList!12017 List!39105)) )
))
(declare-datatypes ((Conc!11957 0))(
  ( (Node!11957 (left!30405 Conc!11957) (right!30735 Conc!11957) (csize!24144 Int) (cheight!12168 Int)) (Leaf!18510 (xs!15159 IArray!23919) (csize!24145 Int)) (Empty!11957) )
))
(declare-datatypes ((BalanceConc!23528 0))(
  ( (BalanceConc!23529 (c!637511 Conc!11957)) )
))
(declare-datatypes ((tuple2!38862 0))(
  ( (tuple2!38863 (_1!22565 BalanceConc!23528) (_2!22565 BalanceConc!23526)) )
))
(declare-fun lt!1289823 () tuple2!38862)

(declare-fun isEmpty!23179 (BalanceConc!23528) Bool)

(assert (=> b!3685689 (= res!1497684 (not (isEmpty!23179 (_1!22565 lt!1289823))))))

(declare-fun input!3129 () List!39103)

(declare-fun lex!2613 (LexerInterface!5472 List!39104 BalanceConc!23526) tuple2!38862)

(declare-fun seqFromList!4432 (List!39103) BalanceConc!23526)

(assert (=> b!3685689 (= lt!1289823 (lex!2613 thiss!25197 rules!3568 (seqFromList!4432 input!3129)))))

(declare-fun b!3685690 () Bool)

(declare-fun rulesValidInductive!2099 (LexerInterface!5472 List!39104) Bool)

(assert (=> b!3685690 (= e!2282394 (rulesValidInductive!2099 thiss!25197 rules!3568))))

(declare-fun b!3685691 () Bool)

(declare-fun tp!1120325 () Bool)

(assert (=> b!3685691 (= e!2282392 (and tp_is_empty!18367 tp!1120325))))

(declare-fun b!3685692 () Bool)

(assert (=> b!3685692 (= e!2282393 (not e!2282394))))

(declare-fun res!1497679 () Bool)

(assert (=> b!3685692 (=> res!1497679 e!2282394)))

(assert (=> b!3685692 (= res!1497679 (not (matchR!5197 (regex!5883 (rule!8725 lt!1289825)) lt!1289821)))))

(assert (=> b!3685692 e!2282391))

(declare-fun res!1497681 () Bool)

(assert (=> b!3685692 (=> (not res!1497681) (not e!2282391))))

(declare-fun isDefined!6584 (Option!8378) Bool)

(assert (=> b!3685692 (= res!1497681 (isDefined!6584 lt!1289828))))

(declare-fun getRuleFromTag!1471 (LexerInterface!5472 List!39104 String!43901) Option!8378)

(assert (=> b!3685692 (= lt!1289828 (getRuleFromTag!1471 thiss!25197 rules!3568 (tag!6693 (rule!8725 lt!1289825))))))

(declare-datatypes ((Unit!57045 0))(
  ( (Unit!57046) )
))
(declare-fun lt!1289822 () Unit!57045)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1471 (LexerInterface!5472 List!39104 List!39103 Token!11132) Unit!57045)

(assert (=> b!3685692 (= lt!1289822 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1471 thiss!25197 rules!3568 input!3129 lt!1289825))))

(declare-fun isPrefix!3236 (List!39103 List!39103) Bool)

(assert (=> b!3685692 (isPrefix!3236 lt!1289821 lt!1289824)))

(declare-fun suffix!1448 () List!39103)

(declare-fun ++!9702 (List!39103 List!39103) List!39103)

(assert (=> b!3685692 (= lt!1289824 (++!9702 input!3129 suffix!1448))))

(declare-fun lt!1289829 () Unit!57045)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!567 (List!39103 List!39103 List!39103) Unit!57045)

(assert (=> b!3685692 (= lt!1289829 (lemmaPrefixStaysPrefixWhenAddingToSuffix!567 lt!1289821 input!3129 suffix!1448))))

(declare-fun lt!1289830 () tuple2!38860)

(assert (=> b!3685692 (isPrefix!3236 lt!1289821 (++!9702 lt!1289821 (_2!22564 lt!1289830)))))

(declare-fun lt!1289826 () Unit!57045)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2153 (List!39103 List!39103) Unit!57045)

(assert (=> b!3685692 (= lt!1289826 (lemmaConcatTwoListThenFirstIsPrefix!2153 lt!1289821 (_2!22564 lt!1289830)))))

(declare-fun get!12921 (Option!8377) tuple2!38860)

(assert (=> b!3685692 (= lt!1289830 (get!12921 (maxPrefix!3000 thiss!25197 rules!3568 input!3129)))))

(declare-fun list!14530 (BalanceConc!23526) List!39103)

(declare-fun charsOf!3894 (Token!11132) BalanceConc!23526)

(assert (=> b!3685692 (= lt!1289821 (list!14530 (charsOf!3894 lt!1289825)))))

(declare-fun head!7941 (List!39105) Token!11132)

(declare-fun list!14531 (BalanceConc!23528) List!39105)

(assert (=> b!3685692 (= lt!1289825 (head!7941 (list!14531 (_1!22565 lt!1289823))))))

(declare-fun b!3685693 () Bool)

(declare-fun tp!1120327 () Bool)

(assert (=> b!3685693 (= e!2282398 (and e!2282395 tp!1120327))))

(assert (= (and start!346240 res!1497680) b!3685685))

(assert (= (and b!3685685 res!1497678) b!3685687))

(assert (= (and b!3685687 res!1497682) b!3685689))

(assert (= (and b!3685689 res!1497684) b!3685692))

(assert (= (and b!3685692 res!1497681) b!3685682))

(assert (= (and b!3685682 res!1497677) b!3685683))

(assert (= (and b!3685692 (not res!1497679)) b!3685686))

(assert (= (and b!3685686 (not res!1497683)) b!3685690))

(assert (= b!3685684 b!3685688))

(assert (= b!3685693 b!3685684))

(assert (= (and start!346240 (is-Cons!38980 rules!3568)) b!3685693))

(assert (= (and start!346240 (is-Cons!38979 suffix!1448)) b!3685681))

(assert (= (and start!346240 (is-Cons!38979 input!3129)) b!3685691))

(declare-fun m!4197205 () Bool)

(assert (=> b!3685692 m!4197205))

(declare-fun m!4197207 () Bool)

(assert (=> b!3685692 m!4197207))

(declare-fun m!4197209 () Bool)

(assert (=> b!3685692 m!4197209))

(declare-fun m!4197211 () Bool)

(assert (=> b!3685692 m!4197211))

(declare-fun m!4197213 () Bool)

(assert (=> b!3685692 m!4197213))

(declare-fun m!4197215 () Bool)

(assert (=> b!3685692 m!4197215))

(declare-fun m!4197217 () Bool)

(assert (=> b!3685692 m!4197217))

(declare-fun m!4197219 () Bool)

(assert (=> b!3685692 m!4197219))

(declare-fun m!4197221 () Bool)

(assert (=> b!3685692 m!4197221))

(declare-fun m!4197223 () Bool)

(assert (=> b!3685692 m!4197223))

(assert (=> b!3685692 m!4197211))

(declare-fun m!4197225 () Bool)

(assert (=> b!3685692 m!4197225))

(declare-fun m!4197227 () Bool)

(assert (=> b!3685692 m!4197227))

(declare-fun m!4197229 () Bool)

(assert (=> b!3685692 m!4197229))

(assert (=> b!3685692 m!4197225))

(declare-fun m!4197231 () Bool)

(assert (=> b!3685692 m!4197231))

(assert (=> b!3685692 m!4197217))

(assert (=> b!3685692 m!4197223))

(declare-fun m!4197233 () Bool)

(assert (=> b!3685692 m!4197233))

(declare-fun m!4197235 () Bool)

(assert (=> b!3685692 m!4197235))

(declare-fun m!4197237 () Bool)

(assert (=> b!3685689 m!4197237))

(declare-fun m!4197239 () Bool)

(assert (=> b!3685689 m!4197239))

(assert (=> b!3685689 m!4197239))

(declare-fun m!4197241 () Bool)

(assert (=> b!3685689 m!4197241))

(declare-fun m!4197243 () Bool)

(assert (=> b!3685686 m!4197243))

(assert (=> b!3685686 m!4197243))

(declare-fun m!4197245 () Bool)

(assert (=> b!3685686 m!4197245))

(declare-fun m!4197247 () Bool)

(assert (=> b!3685685 m!4197247))

(declare-fun m!4197249 () Bool)

(assert (=> b!3685682 m!4197249))

(declare-fun m!4197251 () Bool)

(assert (=> b!3685682 m!4197251))

(declare-fun m!4197253 () Bool)

(assert (=> b!3685690 m!4197253))

(declare-fun m!4197255 () Bool)

(assert (=> b!3685684 m!4197255))

(declare-fun m!4197257 () Bool)

(assert (=> b!3685684 m!4197257))

(declare-fun m!4197259 () Bool)

(assert (=> b!3685687 m!4197259))

(push 1)

(assert (not b!3685691))

(assert b_and!275453)

(assert (not b!3685682))

(assert tp_is_empty!18367)

(assert (not b!3685689))

(assert (not b_next!98473))

(assert (not b!3685684))

(assert (not b!3685681))

(assert b_and!275451)

(assert (not b!3685692))

(assert (not b!3685687))

(assert (not b!3685685))

(assert (not b_next!98475))

(assert (not b!3685693))

(assert (not b!3685686))

(assert (not b!3685690))

(check-sat)

(pop 1)

(push 1)

(assert b_and!275451)

(assert b_and!275453)

(assert (not b_next!98475))

(assert (not b_next!98473))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1081663 () Bool)

(assert (=> d!1081663 (= (isEmpty!23177 rules!3568) (is-Nil!38980 rules!3568))))

(assert (=> b!3685685 d!1081663))

(declare-fun d!1081665 () Bool)

(assert (=> d!1081665 true))

(declare-fun lt!1289897 () Bool)

(declare-fun lambda!124854 () Int)

(declare-fun forall!8164 (List!39104 Int) Bool)

(assert (=> d!1081665 (= lt!1289897 (forall!8164 rules!3568 lambda!124854))))

(declare-fun e!2282496 () Bool)

(assert (=> d!1081665 (= lt!1289897 e!2282496)))

(declare-fun res!1497797 () Bool)

(assert (=> d!1081665 (=> res!1497797 e!2282496)))

(assert (=> d!1081665 (= res!1497797 (not (is-Cons!38980 rules!3568)))))

(assert (=> d!1081665 (= (rulesValidInductive!2099 thiss!25197 rules!3568) lt!1289897)))

(declare-fun b!3685852 () Bool)

(declare-fun e!2282497 () Bool)

(assert (=> b!3685852 (= e!2282496 e!2282497)))

(declare-fun res!1497798 () Bool)

(assert (=> b!3685852 (=> (not res!1497798) (not e!2282497))))

(declare-fun ruleValid!2123 (LexerInterface!5472 Rule!11566) Bool)

(assert (=> b!3685852 (= res!1497798 (ruleValid!2123 thiss!25197 (h!44400 rules!3568)))))

(declare-fun b!3685853 () Bool)

(assert (=> b!3685853 (= e!2282497 (rulesValidInductive!2099 thiss!25197 (t!301079 rules!3568)))))

(assert (= (and d!1081665 (not res!1497797)) b!3685852))

(assert (= (and b!3685852 res!1497798) b!3685853))

(declare-fun m!4197403 () Bool)

(assert (=> d!1081665 m!4197403))

(declare-fun m!4197405 () Bool)

(assert (=> b!3685852 m!4197405))

(declare-fun m!4197407 () Bool)

(assert (=> b!3685853 m!4197407))

(assert (=> b!3685690 d!1081665))

(declare-fun d!1081689 () Bool)

(assert (=> d!1081689 (= (inv!52446 (tag!6693 (h!44400 rules!3568))) (= (mod (str.len (value!188126 (tag!6693 (h!44400 rules!3568)))) 2) 0))))

(assert (=> b!3685684 d!1081689))

(declare-fun d!1081691 () Bool)

(declare-fun res!1497810 () Bool)

(declare-fun e!2282507 () Bool)

(assert (=> d!1081691 (=> (not res!1497810) (not e!2282507))))

(declare-fun semiInverseModEq!2508 (Int Int) Bool)

(assert (=> d!1081691 (= res!1497810 (semiInverseModEq!2508 (toChars!8050 (transformation!5883 (h!44400 rules!3568))) (toValue!8191 (transformation!5883 (h!44400 rules!3568)))))))

(assert (=> d!1081691 (= (inv!52449 (transformation!5883 (h!44400 rules!3568))) e!2282507)))

(declare-fun b!3685873 () Bool)

(declare-fun equivClasses!2407 (Int Int) Bool)

(assert (=> b!3685873 (= e!2282507 (equivClasses!2407 (toChars!8050 (transformation!5883 (h!44400 rules!3568))) (toValue!8191 (transformation!5883 (h!44400 rules!3568)))))))

(assert (= (and d!1081691 res!1497810) b!3685873))

(declare-fun m!4197421 () Bool)

(assert (=> d!1081691 m!4197421))

(declare-fun m!4197423 () Bool)

(assert (=> b!3685873 m!4197423))

(assert (=> b!3685684 d!1081691))

(declare-fun d!1081695 () Bool)

(declare-fun lt!1289908 () Bool)

(declare-fun isEmpty!23183 (List!39105) Bool)

(assert (=> d!1081695 (= lt!1289908 (isEmpty!23183 (list!14531 (_1!22565 lt!1289823))))))

(declare-fun isEmpty!23184 (Conc!11957) Bool)

(assert (=> d!1081695 (= lt!1289908 (isEmpty!23184 (c!637511 (_1!22565 lt!1289823))))))

(assert (=> d!1081695 (= (isEmpty!23179 (_1!22565 lt!1289823)) lt!1289908)))

(declare-fun bs!573845 () Bool)

(assert (= bs!573845 d!1081695))

(assert (=> bs!573845 m!4197217))

(assert (=> bs!573845 m!4197217))

(declare-fun m!4197457 () Bool)

(assert (=> bs!573845 m!4197457))

(declare-fun m!4197459 () Bool)

(assert (=> bs!573845 m!4197459))

(assert (=> b!3685689 d!1081695))

(declare-fun b!3685897 () Bool)

(declare-fun e!2282524 () Bool)

(declare-fun e!2282523 () Bool)

(assert (=> b!3685897 (= e!2282524 e!2282523)))

(declare-fun res!1497823 () Bool)

(declare-fun lt!1289923 () tuple2!38862)

(declare-fun size!29781 (BalanceConc!23526) Int)

(assert (=> b!3685897 (= res!1497823 (< (size!29781 (_2!22565 lt!1289923)) (size!29781 (seqFromList!4432 input!3129))))))

(assert (=> b!3685897 (=> (not res!1497823) (not e!2282523))))

(declare-fun d!1081699 () Bool)

(declare-fun e!2282525 () Bool)

(assert (=> d!1081699 e!2282525))

(declare-fun res!1497824 () Bool)

(assert (=> d!1081699 (=> (not res!1497824) (not e!2282525))))

(assert (=> d!1081699 (= res!1497824 e!2282524)))

(declare-fun c!637541 () Bool)

(declare-fun size!29782 (BalanceConc!23528) Int)

(assert (=> d!1081699 (= c!637541 (> (size!29782 (_1!22565 lt!1289923)) 0))))

(declare-fun lexTailRecV2!1133 (LexerInterface!5472 List!39104 BalanceConc!23526 BalanceConc!23526 BalanceConc!23526 BalanceConc!23528) tuple2!38862)

(assert (=> d!1081699 (= lt!1289923 (lexTailRecV2!1133 thiss!25197 rules!3568 (seqFromList!4432 input!3129) (BalanceConc!23527 Empty!11956) (seqFromList!4432 input!3129) (BalanceConc!23529 Empty!11957)))))

(assert (=> d!1081699 (= (lex!2613 thiss!25197 rules!3568 (seqFromList!4432 input!3129)) lt!1289923)))

(declare-fun b!3685898 () Bool)

(assert (=> b!3685898 (= e!2282523 (not (isEmpty!23179 (_1!22565 lt!1289923))))))

(declare-fun b!3685899 () Bool)

(declare-datatypes ((tuple2!38868 0))(
  ( (tuple2!38869 (_1!22568 List!39105) (_2!22568 List!39103)) )
))
(declare-fun lexList!1527 (LexerInterface!5472 List!39104 List!39103) tuple2!38868)

(assert (=> b!3685899 (= e!2282525 (= (list!14530 (_2!22565 lt!1289923)) (_2!22568 (lexList!1527 thiss!25197 rules!3568 (list!14530 (seqFromList!4432 input!3129))))))))

(declare-fun b!3685900 () Bool)

(assert (=> b!3685900 (= e!2282524 (= (_2!22565 lt!1289923) (seqFromList!4432 input!3129)))))

(declare-fun b!3685901 () Bool)

(declare-fun res!1497825 () Bool)

(assert (=> b!3685901 (=> (not res!1497825) (not e!2282525))))

(assert (=> b!3685901 (= res!1497825 (= (list!14531 (_1!22565 lt!1289923)) (_1!22568 (lexList!1527 thiss!25197 rules!3568 (list!14530 (seqFromList!4432 input!3129))))))))

(assert (= (and d!1081699 c!637541) b!3685897))

(assert (= (and d!1081699 (not c!637541)) b!3685900))

(assert (= (and b!3685897 res!1497823) b!3685898))

(assert (= (and d!1081699 res!1497824) b!3685901))

(assert (= (and b!3685901 res!1497825) b!3685899))

(declare-fun m!4197493 () Bool)

(assert (=> d!1081699 m!4197493))

(assert (=> d!1081699 m!4197239))

(assert (=> d!1081699 m!4197239))

(declare-fun m!4197495 () Bool)

(assert (=> d!1081699 m!4197495))

(declare-fun m!4197497 () Bool)

(assert (=> b!3685899 m!4197497))

(assert (=> b!3685899 m!4197239))

(declare-fun m!4197499 () Bool)

(assert (=> b!3685899 m!4197499))

(assert (=> b!3685899 m!4197499))

(declare-fun m!4197501 () Bool)

(assert (=> b!3685899 m!4197501))

(declare-fun m!4197503 () Bool)

(assert (=> b!3685897 m!4197503))

(assert (=> b!3685897 m!4197239))

(declare-fun m!4197505 () Bool)

(assert (=> b!3685897 m!4197505))

(declare-fun m!4197507 () Bool)

(assert (=> b!3685898 m!4197507))

(declare-fun m!4197509 () Bool)

(assert (=> b!3685901 m!4197509))

(assert (=> b!3685901 m!4197239))

(assert (=> b!3685901 m!4197499))

(assert (=> b!3685901 m!4197499))

(assert (=> b!3685901 m!4197501))

(assert (=> b!3685689 d!1081699))

(declare-fun d!1081713 () Bool)

(declare-fun fromListB!2043 (List!39103) BalanceConc!23526)

(assert (=> d!1081713 (= (seqFromList!4432 input!3129) (fromListB!2043 input!3129))))

(declare-fun bs!573850 () Bool)

(assert (= bs!573850 d!1081713))

(declare-fun m!4197511 () Bool)

(assert (=> bs!573850 m!4197511))

(assert (=> b!3685689 d!1081713))

(declare-fun b!3685930 () Bool)

(declare-fun res!1497849 () Bool)

(declare-fun e!2282546 () Bool)

(assert (=> b!3685930 (=> res!1497849 e!2282546)))

(declare-fun isEmpty!23185 (List!39103) Bool)

(declare-fun tail!5702 (List!39103) List!39103)

(assert (=> b!3685930 (= res!1497849 (not (isEmpty!23185 (tail!5702 lt!1289821))))))

(declare-fun b!3685931 () Bool)

(declare-fun e!2282542 () Bool)

(declare-fun e!2282545 () Bool)

(assert (=> b!3685931 (= e!2282542 e!2282545)))

(declare-fun c!637549 () Bool)

(assert (=> b!3685931 (= c!637549 (is-EmptyLang!10642 (regex!5883 lt!1289827)))))

(declare-fun bm!266831 () Bool)

(declare-fun call!266836 () Bool)

(assert (=> bm!266831 (= call!266836 (isEmpty!23185 lt!1289821))))

(declare-fun b!3685932 () Bool)

(declare-fun e!2282543 () Bool)

(declare-fun e!2282541 () Bool)

(assert (=> b!3685932 (= e!2282543 e!2282541)))

(declare-fun res!1497844 () Bool)

(assert (=> b!3685932 (=> (not res!1497844) (not e!2282541))))

(declare-fun lt!1289926 () Bool)

(assert (=> b!3685932 (= res!1497844 (not lt!1289926))))

(declare-fun b!3685933 () Bool)

(declare-fun res!1497845 () Bool)

(declare-fun e!2282540 () Bool)

(assert (=> b!3685933 (=> (not res!1497845) (not e!2282540))))

(assert (=> b!3685933 (= res!1497845 (isEmpty!23185 (tail!5702 lt!1289821)))))

(declare-fun d!1081715 () Bool)

(assert (=> d!1081715 e!2282542))

(declare-fun c!637548 () Bool)

(assert (=> d!1081715 (= c!637548 (is-EmptyExpr!10642 (regex!5883 lt!1289827)))))

(declare-fun e!2282544 () Bool)

(assert (=> d!1081715 (= lt!1289926 e!2282544)))

(declare-fun c!637550 () Bool)

(assert (=> d!1081715 (= c!637550 (isEmpty!23185 lt!1289821))))

(declare-fun validRegex!4868 (Regex!10642) Bool)

(assert (=> d!1081715 (validRegex!4868 (regex!5883 lt!1289827))))

(assert (=> d!1081715 (= (matchR!5197 (regex!5883 lt!1289827) lt!1289821) lt!1289926)))

(declare-fun b!3685934 () Bool)

(declare-fun nullable!3706 (Regex!10642) Bool)

(assert (=> b!3685934 (= e!2282544 (nullable!3706 (regex!5883 lt!1289827)))))

(declare-fun b!3685935 () Bool)

(declare-fun res!1497847 () Bool)

(assert (=> b!3685935 (=> (not res!1497847) (not e!2282540))))

(assert (=> b!3685935 (= res!1497847 (not call!266836))))

(declare-fun b!3685936 () Bool)

(declare-fun res!1497846 () Bool)

(assert (=> b!3685936 (=> res!1497846 e!2282543)))

(assert (=> b!3685936 (= res!1497846 (not (is-ElementMatch!10642 (regex!5883 lt!1289827))))))

(assert (=> b!3685936 (= e!2282545 e!2282543)))

(declare-fun b!3685937 () Bool)

(assert (=> b!3685937 (= e!2282545 (not lt!1289926))))

(declare-fun b!3685938 () Bool)

(assert (=> b!3685938 (= e!2282541 e!2282546)))

(declare-fun res!1497848 () Bool)

(assert (=> b!3685938 (=> res!1497848 e!2282546)))

(assert (=> b!3685938 (= res!1497848 call!266836)))

(declare-fun b!3685939 () Bool)

(declare-fun head!7943 (List!39103) C!21470)

(assert (=> b!3685939 (= e!2282546 (not (= (head!7943 lt!1289821) (c!637509 (regex!5883 lt!1289827)))))))

(declare-fun b!3685940 () Bool)

(assert (=> b!3685940 (= e!2282542 (= lt!1289926 call!266836))))

(declare-fun b!3685941 () Bool)

(assert (=> b!3685941 (= e!2282540 (= (head!7943 lt!1289821) (c!637509 (regex!5883 lt!1289827))))))

(declare-fun b!3685942 () Bool)

(declare-fun res!1497842 () Bool)

(assert (=> b!3685942 (=> res!1497842 e!2282543)))

(assert (=> b!3685942 (= res!1497842 e!2282540)))

(declare-fun res!1497843 () Bool)

(assert (=> b!3685942 (=> (not res!1497843) (not e!2282540))))

(assert (=> b!3685942 (= res!1497843 lt!1289926)))

(declare-fun b!3685943 () Bool)

(declare-fun derivativeStep!3252 (Regex!10642 C!21470) Regex!10642)

(assert (=> b!3685943 (= e!2282544 (matchR!5197 (derivativeStep!3252 (regex!5883 lt!1289827) (head!7943 lt!1289821)) (tail!5702 lt!1289821)))))

(assert (= (and d!1081715 c!637550) b!3685934))

(assert (= (and d!1081715 (not c!637550)) b!3685943))

(assert (= (and d!1081715 c!637548) b!3685940))

(assert (= (and d!1081715 (not c!637548)) b!3685931))

(assert (= (and b!3685931 c!637549) b!3685937))

(assert (= (and b!3685931 (not c!637549)) b!3685936))

(assert (= (and b!3685936 (not res!1497846)) b!3685942))

(assert (= (and b!3685942 res!1497843) b!3685935))

(assert (= (and b!3685935 res!1497847) b!3685933))

(assert (= (and b!3685933 res!1497845) b!3685941))

(assert (= (and b!3685942 (not res!1497842)) b!3685932))

(assert (= (and b!3685932 res!1497844) b!3685938))

(assert (= (and b!3685938 (not res!1497848)) b!3685930))

(assert (= (and b!3685930 (not res!1497849)) b!3685939))

(assert (= (or b!3685940 b!3685935 b!3685938) bm!266831))

(declare-fun m!4197513 () Bool)

(assert (=> b!3685941 m!4197513))

(assert (=> b!3685943 m!4197513))

(assert (=> b!3685943 m!4197513))

(declare-fun m!4197515 () Bool)

(assert (=> b!3685943 m!4197515))

(declare-fun m!4197517 () Bool)

(assert (=> b!3685943 m!4197517))

(assert (=> b!3685943 m!4197515))

(assert (=> b!3685943 m!4197517))

(declare-fun m!4197519 () Bool)

(assert (=> b!3685943 m!4197519))

(assert (=> b!3685933 m!4197517))

(assert (=> b!3685933 m!4197517))

(declare-fun m!4197521 () Bool)

(assert (=> b!3685933 m!4197521))

(declare-fun m!4197523 () Bool)

(assert (=> b!3685934 m!4197523))

(assert (=> b!3685930 m!4197517))

(assert (=> b!3685930 m!4197517))

(assert (=> b!3685930 m!4197521))

(declare-fun m!4197525 () Bool)

(assert (=> d!1081715 m!4197525))

(declare-fun m!4197527 () Bool)

(assert (=> d!1081715 m!4197527))

(assert (=> bm!266831 m!4197525))

(assert (=> b!3685939 m!4197513))

(assert (=> b!3685682 d!1081715))

(declare-fun d!1081717 () Bool)

(assert (=> d!1081717 (= (get!12920 lt!1289828) (v!38323 lt!1289828))))

(assert (=> b!3685682 d!1081717))

(declare-fun d!1081719 () Bool)

(declare-fun res!1497852 () Bool)

(declare-fun e!2282549 () Bool)

(assert (=> d!1081719 (=> (not res!1497852) (not e!2282549))))

(declare-fun rulesValid!2265 (LexerInterface!5472 List!39104) Bool)

(assert (=> d!1081719 (= res!1497852 (rulesValid!2265 thiss!25197 rules!3568))))

(assert (=> d!1081719 (= (rulesInvariant!4869 thiss!25197 rules!3568) e!2282549)))

(declare-fun b!3685946 () Bool)

(declare-datatypes ((List!39110 0))(
  ( (Nil!38986) (Cons!38986 (h!44406 String!43901) (t!301091 List!39110)) )
))
(declare-fun noDuplicateTag!2261 (LexerInterface!5472 List!39104 List!39110) Bool)

(assert (=> b!3685946 (= e!2282549 (noDuplicateTag!2261 thiss!25197 rules!3568 Nil!38986))))

(assert (= (and d!1081719 res!1497852) b!3685946))

(declare-fun m!4197529 () Bool)

(assert (=> d!1081719 m!4197529))

(declare-fun m!4197531 () Bool)

(assert (=> b!3685946 m!4197531))

(assert (=> b!3685687 d!1081719))

(declare-fun d!1081721 () Bool)

(declare-fun e!2282559 () Bool)

(assert (=> d!1081721 e!2282559))

(declare-fun res!1497857 () Bool)

(assert (=> d!1081721 (=> res!1497857 e!2282559)))

(declare-fun lt!1289935 () Option!8378)

(declare-fun isEmpty!23186 (Option!8378) Bool)

(assert (=> d!1081721 (= res!1497857 (isEmpty!23186 lt!1289935))))

(declare-fun e!2282558 () Option!8378)

(assert (=> d!1081721 (= lt!1289935 e!2282558)))

(declare-fun c!637555 () Bool)

(assert (=> d!1081721 (= c!637555 (and (is-Cons!38980 rules!3568) (= (tag!6693 (h!44400 rules!3568)) (tag!6693 (rule!8725 lt!1289825)))))))

(assert (=> d!1081721 (rulesInvariant!4869 thiss!25197 rules!3568)))

(assert (=> d!1081721 (= (getRuleFromTag!1471 thiss!25197 rules!3568 (tag!6693 (rule!8725 lt!1289825))) lt!1289935)))

(declare-fun b!3685959 () Bool)

(declare-fun e!2282561 () Option!8378)

(assert (=> b!3685959 (= e!2282561 None!8377)))

(declare-fun b!3685960 () Bool)

(declare-fun e!2282560 () Bool)

(assert (=> b!3685960 (= e!2282559 e!2282560)))

(declare-fun res!1497858 () Bool)

(assert (=> b!3685960 (=> (not res!1497858) (not e!2282560))))

(declare-fun contains!7782 (List!39104 Rule!11566) Bool)

(assert (=> b!3685960 (= res!1497858 (contains!7782 rules!3568 (get!12920 lt!1289935)))))

(declare-fun b!3685961 () Bool)

(assert (=> b!3685961 (= e!2282558 e!2282561)))

(declare-fun c!637556 () Bool)

(assert (=> b!3685961 (= c!637556 (and (is-Cons!38980 rules!3568) (not (= (tag!6693 (h!44400 rules!3568)) (tag!6693 (rule!8725 lt!1289825))))))))

(declare-fun b!3685962 () Bool)

(declare-fun lt!1289933 () Unit!57045)

(declare-fun lt!1289934 () Unit!57045)

(assert (=> b!3685962 (= lt!1289933 lt!1289934)))

(assert (=> b!3685962 (rulesInvariant!4869 thiss!25197 (t!301079 rules!3568))))

(declare-fun lemmaInvariantOnRulesThenOnTail!632 (LexerInterface!5472 Rule!11566 List!39104) Unit!57045)

(assert (=> b!3685962 (= lt!1289934 (lemmaInvariantOnRulesThenOnTail!632 thiss!25197 (h!44400 rules!3568) (t!301079 rules!3568)))))

(assert (=> b!3685962 (= e!2282561 (getRuleFromTag!1471 thiss!25197 (t!301079 rules!3568) (tag!6693 (rule!8725 lt!1289825))))))

(declare-fun b!3685963 () Bool)

(assert (=> b!3685963 (= e!2282560 (= (tag!6693 (get!12920 lt!1289935)) (tag!6693 (rule!8725 lt!1289825))))))

(declare-fun b!3685964 () Bool)

(assert (=> b!3685964 (= e!2282558 (Some!8377 (h!44400 rules!3568)))))

(assert (= (and d!1081721 c!637555) b!3685964))

(assert (= (and d!1081721 (not c!637555)) b!3685961))

(assert (= (and b!3685961 c!637556) b!3685962))

(assert (= (and b!3685961 (not c!637556)) b!3685959))

(assert (= (and d!1081721 (not res!1497857)) b!3685960))

(assert (= (and b!3685960 res!1497858) b!3685963))

(declare-fun m!4197533 () Bool)

(assert (=> d!1081721 m!4197533))

(assert (=> d!1081721 m!4197259))

(declare-fun m!4197535 () Bool)

(assert (=> b!3685960 m!4197535))

(assert (=> b!3685960 m!4197535))

(declare-fun m!4197537 () Bool)

(assert (=> b!3685960 m!4197537))

(declare-fun m!4197539 () Bool)

(assert (=> b!3685962 m!4197539))

(declare-fun m!4197541 () Bool)

(assert (=> b!3685962 m!4197541))

(declare-fun m!4197543 () Bool)

(assert (=> b!3685962 m!4197543))

(assert (=> b!3685963 m!4197535))

(assert (=> b!3685692 d!1081721))

(declare-fun d!1081723 () Bool)

(assert (=> d!1081723 (isPrefix!3236 lt!1289821 (++!9702 input!3129 suffix!1448))))

(declare-fun lt!1289938 () Unit!57045)

(declare-fun choose!22056 (List!39103 List!39103 List!39103) Unit!57045)

(assert (=> d!1081723 (= lt!1289938 (choose!22056 lt!1289821 input!3129 suffix!1448))))

(assert (=> d!1081723 (isPrefix!3236 lt!1289821 input!3129)))

(assert (=> d!1081723 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!567 lt!1289821 input!3129 suffix!1448) lt!1289938)))

(declare-fun bs!573851 () Bool)

(assert (= bs!573851 d!1081723))

(assert (=> bs!573851 m!4197209))

(assert (=> bs!573851 m!4197209))

(declare-fun m!4197545 () Bool)

(assert (=> bs!573851 m!4197545))

(declare-fun m!4197547 () Bool)

(assert (=> bs!573851 m!4197547))

(declare-fun m!4197549 () Bool)

(assert (=> bs!573851 m!4197549))

(assert (=> b!3685692 d!1081723))

(declare-fun d!1081725 () Bool)

(assert (=> d!1081725 (= (get!12921 (maxPrefix!3000 thiss!25197 rules!3568 input!3129)) (v!38322 (maxPrefix!3000 thiss!25197 rules!3568 input!3129)))))

(assert (=> b!3685692 d!1081725))

(declare-fun d!1081727 () Bool)

(declare-fun e!2282570 () Bool)

(assert (=> d!1081727 e!2282570))

(declare-fun res!1497869 () Bool)

(assert (=> d!1081727 (=> res!1497869 e!2282570)))

(declare-fun lt!1289941 () Bool)

(assert (=> d!1081727 (= res!1497869 (not lt!1289941))))

(declare-fun e!2282568 () Bool)

(assert (=> d!1081727 (= lt!1289941 e!2282568)))

(declare-fun res!1497870 () Bool)

(assert (=> d!1081727 (=> res!1497870 e!2282568)))

(assert (=> d!1081727 (= res!1497870 (is-Nil!38979 lt!1289821))))

(assert (=> d!1081727 (= (isPrefix!3236 lt!1289821 lt!1289824) lt!1289941)))

(declare-fun b!3685976 () Bool)

(declare-fun size!29783 (List!39103) Int)

(assert (=> b!3685976 (= e!2282570 (>= (size!29783 lt!1289824) (size!29783 lt!1289821)))))

(declare-fun b!3685975 () Bool)

(declare-fun e!2282569 () Bool)

(assert (=> b!3685975 (= e!2282569 (isPrefix!3236 (tail!5702 lt!1289821) (tail!5702 lt!1289824)))))

(declare-fun b!3685973 () Bool)

(assert (=> b!3685973 (= e!2282568 e!2282569)))

(declare-fun res!1497867 () Bool)

(assert (=> b!3685973 (=> (not res!1497867) (not e!2282569))))

(assert (=> b!3685973 (= res!1497867 (not (is-Nil!38979 lt!1289824)))))

(declare-fun b!3685974 () Bool)

(declare-fun res!1497868 () Bool)

(assert (=> b!3685974 (=> (not res!1497868) (not e!2282569))))

(assert (=> b!3685974 (= res!1497868 (= (head!7943 lt!1289821) (head!7943 lt!1289824)))))

(assert (= (and d!1081727 (not res!1497870)) b!3685973))

(assert (= (and b!3685973 res!1497867) b!3685974))

(assert (= (and b!3685974 res!1497868) b!3685975))

(assert (= (and d!1081727 (not res!1497869)) b!3685976))

(declare-fun m!4197551 () Bool)

(assert (=> b!3685976 m!4197551))

(declare-fun m!4197553 () Bool)

(assert (=> b!3685976 m!4197553))

(assert (=> b!3685975 m!4197517))

(declare-fun m!4197555 () Bool)

(assert (=> b!3685975 m!4197555))

(assert (=> b!3685975 m!4197517))

(assert (=> b!3685975 m!4197555))

(declare-fun m!4197557 () Bool)

(assert (=> b!3685975 m!4197557))

(assert (=> b!3685974 m!4197513))

(declare-fun m!4197559 () Bool)

(assert (=> b!3685974 m!4197559))

(assert (=> b!3685692 d!1081727))

(declare-fun d!1081729 () Bool)

(declare-fun e!2282573 () Bool)

(assert (=> d!1081729 e!2282573))

(declare-fun res!1497873 () Bool)

(assert (=> d!1081729 (=> res!1497873 e!2282573)))

(declare-fun lt!1289942 () Bool)

(assert (=> d!1081729 (= res!1497873 (not lt!1289942))))

(declare-fun e!2282571 () Bool)

(assert (=> d!1081729 (= lt!1289942 e!2282571)))

(declare-fun res!1497874 () Bool)

(assert (=> d!1081729 (=> res!1497874 e!2282571)))

(assert (=> d!1081729 (= res!1497874 (is-Nil!38979 lt!1289821))))

(assert (=> d!1081729 (= (isPrefix!3236 lt!1289821 (++!9702 lt!1289821 (_2!22564 lt!1289830))) lt!1289942)))

(declare-fun b!3685980 () Bool)

(assert (=> b!3685980 (= e!2282573 (>= (size!29783 (++!9702 lt!1289821 (_2!22564 lt!1289830))) (size!29783 lt!1289821)))))

(declare-fun b!3685979 () Bool)

(declare-fun e!2282572 () Bool)

(assert (=> b!3685979 (= e!2282572 (isPrefix!3236 (tail!5702 lt!1289821) (tail!5702 (++!9702 lt!1289821 (_2!22564 lt!1289830)))))))

(declare-fun b!3685977 () Bool)

(assert (=> b!3685977 (= e!2282571 e!2282572)))

(declare-fun res!1497871 () Bool)

(assert (=> b!3685977 (=> (not res!1497871) (not e!2282572))))

(assert (=> b!3685977 (= res!1497871 (not (is-Nil!38979 (++!9702 lt!1289821 (_2!22564 lt!1289830)))))))

(declare-fun b!3685978 () Bool)

(declare-fun res!1497872 () Bool)

(assert (=> b!3685978 (=> (not res!1497872) (not e!2282572))))

(assert (=> b!3685978 (= res!1497872 (= (head!7943 lt!1289821) (head!7943 (++!9702 lt!1289821 (_2!22564 lt!1289830)))))))

(assert (= (and d!1081729 (not res!1497874)) b!3685977))

(assert (= (and b!3685977 res!1497871) b!3685978))

(assert (= (and b!3685978 res!1497872) b!3685979))

(assert (= (and d!1081729 (not res!1497873)) b!3685980))

(assert (=> b!3685980 m!4197223))

(declare-fun m!4197561 () Bool)

(assert (=> b!3685980 m!4197561))

(assert (=> b!3685980 m!4197553))

(assert (=> b!3685979 m!4197517))

(assert (=> b!3685979 m!4197223))

(declare-fun m!4197563 () Bool)

(assert (=> b!3685979 m!4197563))

(assert (=> b!3685979 m!4197517))

(assert (=> b!3685979 m!4197563))

(declare-fun m!4197565 () Bool)

(assert (=> b!3685979 m!4197565))

(assert (=> b!3685978 m!4197513))

(assert (=> b!3685978 m!4197223))

(declare-fun m!4197567 () Bool)

(assert (=> b!3685978 m!4197567))

(assert (=> b!3685692 d!1081729))

(declare-fun b!3685981 () Bool)

(declare-fun res!1497882 () Bool)

(declare-fun e!2282580 () Bool)

(assert (=> b!3685981 (=> res!1497882 e!2282580)))

(assert (=> b!3685981 (= res!1497882 (not (isEmpty!23185 (tail!5702 lt!1289821))))))

(declare-fun b!3685982 () Bool)

(declare-fun e!2282576 () Bool)

(declare-fun e!2282579 () Bool)

(assert (=> b!3685982 (= e!2282576 e!2282579)))

(declare-fun c!637558 () Bool)

(assert (=> b!3685982 (= c!637558 (is-EmptyLang!10642 (regex!5883 (rule!8725 lt!1289825))))))

(declare-fun bm!266832 () Bool)

(declare-fun call!266837 () Bool)

(assert (=> bm!266832 (= call!266837 (isEmpty!23185 lt!1289821))))

(declare-fun b!3685983 () Bool)

(declare-fun e!2282577 () Bool)

(declare-fun e!2282575 () Bool)

(assert (=> b!3685983 (= e!2282577 e!2282575)))

(declare-fun res!1497877 () Bool)

(assert (=> b!3685983 (=> (not res!1497877) (not e!2282575))))

(declare-fun lt!1289943 () Bool)

(assert (=> b!3685983 (= res!1497877 (not lt!1289943))))

(declare-fun b!3685984 () Bool)

(declare-fun res!1497878 () Bool)

(declare-fun e!2282574 () Bool)

(assert (=> b!3685984 (=> (not res!1497878) (not e!2282574))))

(assert (=> b!3685984 (= res!1497878 (isEmpty!23185 (tail!5702 lt!1289821)))))

(declare-fun d!1081731 () Bool)

(assert (=> d!1081731 e!2282576))

(declare-fun c!637557 () Bool)

(assert (=> d!1081731 (= c!637557 (is-EmptyExpr!10642 (regex!5883 (rule!8725 lt!1289825))))))

(declare-fun e!2282578 () Bool)

(assert (=> d!1081731 (= lt!1289943 e!2282578)))

(declare-fun c!637559 () Bool)

(assert (=> d!1081731 (= c!637559 (isEmpty!23185 lt!1289821))))

(assert (=> d!1081731 (validRegex!4868 (regex!5883 (rule!8725 lt!1289825)))))

(assert (=> d!1081731 (= (matchR!5197 (regex!5883 (rule!8725 lt!1289825)) lt!1289821) lt!1289943)))

(declare-fun b!3685985 () Bool)

(assert (=> b!3685985 (= e!2282578 (nullable!3706 (regex!5883 (rule!8725 lt!1289825))))))

(declare-fun b!3685986 () Bool)

(declare-fun res!1497880 () Bool)

(assert (=> b!3685986 (=> (not res!1497880) (not e!2282574))))

(assert (=> b!3685986 (= res!1497880 (not call!266837))))

(declare-fun b!3685987 () Bool)

(declare-fun res!1497879 () Bool)

(assert (=> b!3685987 (=> res!1497879 e!2282577)))

(assert (=> b!3685987 (= res!1497879 (not (is-ElementMatch!10642 (regex!5883 (rule!8725 lt!1289825)))))))

(assert (=> b!3685987 (= e!2282579 e!2282577)))

(declare-fun b!3685988 () Bool)

(assert (=> b!3685988 (= e!2282579 (not lt!1289943))))

(declare-fun b!3685989 () Bool)

(assert (=> b!3685989 (= e!2282575 e!2282580)))

(declare-fun res!1497881 () Bool)

(assert (=> b!3685989 (=> res!1497881 e!2282580)))

(assert (=> b!3685989 (= res!1497881 call!266837)))

(declare-fun b!3685990 () Bool)

(assert (=> b!3685990 (= e!2282580 (not (= (head!7943 lt!1289821) (c!637509 (regex!5883 (rule!8725 lt!1289825))))))))

(declare-fun b!3685991 () Bool)

(assert (=> b!3685991 (= e!2282576 (= lt!1289943 call!266837))))

(declare-fun b!3685992 () Bool)

(assert (=> b!3685992 (= e!2282574 (= (head!7943 lt!1289821) (c!637509 (regex!5883 (rule!8725 lt!1289825)))))))

(declare-fun b!3685993 () Bool)

(declare-fun res!1497875 () Bool)

(assert (=> b!3685993 (=> res!1497875 e!2282577)))

(assert (=> b!3685993 (= res!1497875 e!2282574)))

(declare-fun res!1497876 () Bool)

(assert (=> b!3685993 (=> (not res!1497876) (not e!2282574))))

(assert (=> b!3685993 (= res!1497876 lt!1289943)))

(declare-fun b!3685994 () Bool)

(assert (=> b!3685994 (= e!2282578 (matchR!5197 (derivativeStep!3252 (regex!5883 (rule!8725 lt!1289825)) (head!7943 lt!1289821)) (tail!5702 lt!1289821)))))

(assert (= (and d!1081731 c!637559) b!3685985))

(assert (= (and d!1081731 (not c!637559)) b!3685994))

(assert (= (and d!1081731 c!637557) b!3685991))

(assert (= (and d!1081731 (not c!637557)) b!3685982))

(assert (= (and b!3685982 c!637558) b!3685988))

(assert (= (and b!3685982 (not c!637558)) b!3685987))

(assert (= (and b!3685987 (not res!1497879)) b!3685993))

(assert (= (and b!3685993 res!1497876) b!3685986))

(assert (= (and b!3685986 res!1497880) b!3685984))

(assert (= (and b!3685984 res!1497878) b!3685992))

(assert (= (and b!3685993 (not res!1497875)) b!3685983))

(assert (= (and b!3685983 res!1497877) b!3685989))

(assert (= (and b!3685989 (not res!1497881)) b!3685981))

(assert (= (and b!3685981 (not res!1497882)) b!3685990))

(assert (= (or b!3685991 b!3685986 b!3685989) bm!266832))

(assert (=> b!3685992 m!4197513))

(assert (=> b!3685994 m!4197513))

(assert (=> b!3685994 m!4197513))

(declare-fun m!4197569 () Bool)

(assert (=> b!3685994 m!4197569))

(assert (=> b!3685994 m!4197517))

(assert (=> b!3685994 m!4197569))

(assert (=> b!3685994 m!4197517))

(declare-fun m!4197571 () Bool)

(assert (=> b!3685994 m!4197571))

(assert (=> b!3685984 m!4197517))

(assert (=> b!3685984 m!4197517))

(assert (=> b!3685984 m!4197521))

(declare-fun m!4197573 () Bool)

(assert (=> b!3685985 m!4197573))

(assert (=> b!3685981 m!4197517))

(assert (=> b!3685981 m!4197517))

(assert (=> b!3685981 m!4197521))

(assert (=> d!1081731 m!4197525))

(declare-fun m!4197575 () Bool)

(assert (=> d!1081731 m!4197575))

(assert (=> bm!266832 m!4197525))

(assert (=> b!3685990 m!4197513))

(assert (=> b!3685692 d!1081731))

(declare-fun b!3686013 () Bool)

(declare-fun e!2282587 () Bool)

(declare-fun lt!1289954 () Option!8377)

(assert (=> b!3686013 (= e!2282587 (contains!7782 rules!3568 (rule!8725 (_1!22564 (get!12921 lt!1289954)))))))

(declare-fun b!3686014 () Bool)

(declare-fun res!1497901 () Bool)

(assert (=> b!3686014 (=> (not res!1497901) (not e!2282587))))

(assert (=> b!3686014 (= res!1497901 (= (++!9702 (list!14530 (charsOf!3894 (_1!22564 (get!12921 lt!1289954)))) (_2!22564 (get!12921 lt!1289954))) input!3129))))

(declare-fun b!3686015 () Bool)

(declare-fun res!1497897 () Bool)

(assert (=> b!3686015 (=> (not res!1497897) (not e!2282587))))

(assert (=> b!3686015 (= res!1497897 (= (list!14530 (charsOf!3894 (_1!22564 (get!12921 lt!1289954)))) (originalCharacters!6597 (_1!22564 (get!12921 lt!1289954)))))))

(declare-fun d!1081733 () Bool)

(declare-fun e!2282588 () Bool)

(assert (=> d!1081733 e!2282588))

(declare-fun res!1497903 () Bool)

(assert (=> d!1081733 (=> res!1497903 e!2282588)))

(assert (=> d!1081733 (= res!1497903 (isEmpty!23178 lt!1289954))))

(declare-fun e!2282589 () Option!8377)

(assert (=> d!1081733 (= lt!1289954 e!2282589)))

(declare-fun c!637562 () Bool)

(assert (=> d!1081733 (= c!637562 (and (is-Cons!38980 rules!3568) (is-Nil!38980 (t!301079 rules!3568))))))

(declare-fun lt!1289955 () Unit!57045)

(declare-fun lt!1289957 () Unit!57045)

(assert (=> d!1081733 (= lt!1289955 lt!1289957)))

(assert (=> d!1081733 (isPrefix!3236 input!3129 input!3129)))

(declare-fun lemmaIsPrefixRefl!2027 (List!39103 List!39103) Unit!57045)

(assert (=> d!1081733 (= lt!1289957 (lemmaIsPrefixRefl!2027 input!3129 input!3129))))

(assert (=> d!1081733 (rulesValidInductive!2099 thiss!25197 rules!3568)))

(assert (=> d!1081733 (= (maxPrefix!3000 thiss!25197 rules!3568 input!3129) lt!1289954)))

(declare-fun b!3686016 () Bool)

(assert (=> b!3686016 (= e!2282588 e!2282587)))

(declare-fun res!1497900 () Bool)

(assert (=> b!3686016 (=> (not res!1497900) (not e!2282587))))

(declare-fun isDefined!6586 (Option!8377) Bool)

(assert (=> b!3686016 (= res!1497900 (isDefined!6586 lt!1289954))))

(declare-fun b!3686017 () Bool)

(declare-fun res!1497899 () Bool)

(assert (=> b!3686017 (=> (not res!1497899) (not e!2282587))))

(assert (=> b!3686017 (= res!1497899 (matchR!5197 (regex!5883 (rule!8725 (_1!22564 (get!12921 lt!1289954)))) (list!14530 (charsOf!3894 (_1!22564 (get!12921 lt!1289954))))))))

(declare-fun bm!266835 () Bool)

(declare-fun call!266840 () Option!8377)

(declare-fun maxPrefixOneRule!2122 (LexerInterface!5472 Rule!11566 List!39103) Option!8377)

(assert (=> bm!266835 (= call!266840 (maxPrefixOneRule!2122 thiss!25197 (h!44400 rules!3568) input!3129))))

(declare-fun b!3686018 () Bool)

(assert (=> b!3686018 (= e!2282589 call!266840)))

(declare-fun b!3686019 () Bool)

(declare-fun res!1497902 () Bool)

(assert (=> b!3686019 (=> (not res!1497902) (not e!2282587))))

(assert (=> b!3686019 (= res!1497902 (< (size!29783 (_2!22564 (get!12921 lt!1289954))) (size!29783 input!3129)))))

(declare-fun b!3686020 () Bool)

(declare-fun lt!1289956 () Option!8377)

(declare-fun lt!1289958 () Option!8377)

(assert (=> b!3686020 (= e!2282589 (ite (and (is-None!8376 lt!1289956) (is-None!8376 lt!1289958)) None!8376 (ite (is-None!8376 lt!1289958) lt!1289956 (ite (is-None!8376 lt!1289956) lt!1289958 (ite (>= (size!29779 (_1!22564 (v!38322 lt!1289956))) (size!29779 (_1!22564 (v!38322 lt!1289958)))) lt!1289956 lt!1289958)))))))

(assert (=> b!3686020 (= lt!1289956 call!266840)))

(assert (=> b!3686020 (= lt!1289958 (maxPrefix!3000 thiss!25197 (t!301079 rules!3568) input!3129))))

(declare-fun b!3686021 () Bool)

(declare-fun res!1497898 () Bool)

(assert (=> b!3686021 (=> (not res!1497898) (not e!2282587))))

(declare-fun apply!9359 (TokenValueInjection!11654 BalanceConc!23526) TokenValue!6113)

(assert (=> b!3686021 (= res!1497898 (= (value!188127 (_1!22564 (get!12921 lt!1289954))) (apply!9359 (transformation!5883 (rule!8725 (_1!22564 (get!12921 lt!1289954)))) (seqFromList!4432 (originalCharacters!6597 (_1!22564 (get!12921 lt!1289954)))))))))

(assert (= (and d!1081733 c!637562) b!3686018))

(assert (= (and d!1081733 (not c!637562)) b!3686020))

(assert (= (or b!3686018 b!3686020) bm!266835))

(assert (= (and d!1081733 (not res!1497903)) b!3686016))

(assert (= (and b!3686016 res!1497900) b!3686015))

(assert (= (and b!3686015 res!1497897) b!3686019))

(assert (= (and b!3686019 res!1497902) b!3686014))

(assert (= (and b!3686014 res!1497901) b!3686021))

(assert (= (and b!3686021 res!1497898) b!3686017))

(assert (= (and b!3686017 res!1497899) b!3686013))

(declare-fun m!4197577 () Bool)

(assert (=> b!3686013 m!4197577))

(declare-fun m!4197579 () Bool)

(assert (=> b!3686013 m!4197579))

(declare-fun m!4197581 () Bool)

(assert (=> b!3686020 m!4197581))

(declare-fun m!4197583 () Bool)

(assert (=> bm!266835 m!4197583))

(assert (=> b!3686021 m!4197577))

(declare-fun m!4197585 () Bool)

(assert (=> b!3686021 m!4197585))

(assert (=> b!3686021 m!4197585))

(declare-fun m!4197587 () Bool)

(assert (=> b!3686021 m!4197587))

(assert (=> b!3686015 m!4197577))

(declare-fun m!4197589 () Bool)

(assert (=> b!3686015 m!4197589))

(assert (=> b!3686015 m!4197589))

(declare-fun m!4197591 () Bool)

(assert (=> b!3686015 m!4197591))

(assert (=> b!3686017 m!4197577))

(assert (=> b!3686017 m!4197589))

(assert (=> b!3686017 m!4197589))

(assert (=> b!3686017 m!4197591))

(assert (=> b!3686017 m!4197591))

(declare-fun m!4197593 () Bool)

(assert (=> b!3686017 m!4197593))

(declare-fun m!4197595 () Bool)

(assert (=> b!3686016 m!4197595))

(declare-fun m!4197597 () Bool)

(assert (=> d!1081733 m!4197597))

(declare-fun m!4197599 () Bool)

(assert (=> d!1081733 m!4197599))

(declare-fun m!4197601 () Bool)

(assert (=> d!1081733 m!4197601))

(assert (=> d!1081733 m!4197253))

(assert (=> b!3686019 m!4197577))

(declare-fun m!4197603 () Bool)

(assert (=> b!3686019 m!4197603))

(declare-fun m!4197605 () Bool)

(assert (=> b!3686019 m!4197605))

(assert (=> b!3686014 m!4197577))

(assert (=> b!3686014 m!4197589))

(assert (=> b!3686014 m!4197589))

(assert (=> b!3686014 m!4197591))

(assert (=> b!3686014 m!4197591))

(declare-fun m!4197607 () Bool)

(assert (=> b!3686014 m!4197607))

(assert (=> b!3685692 d!1081733))

(declare-fun d!1081735 () Bool)

(assert (=> d!1081735 (= (head!7941 (list!14531 (_1!22565 lt!1289823))) (h!44401 (list!14531 (_1!22565 lt!1289823))))))

(assert (=> b!3685692 d!1081735))

(declare-fun d!1081737 () Bool)

(declare-fun e!2282592 () Bool)

(assert (=> d!1081737 e!2282592))

(declare-fun res!1497908 () Bool)

(assert (=> d!1081737 (=> (not res!1497908) (not e!2282592))))

(assert (=> d!1081737 (= res!1497908 (isDefined!6584 (getRuleFromTag!1471 thiss!25197 rules!3568 (tag!6693 (rule!8725 lt!1289825)))))))

(declare-fun lt!1289961 () Unit!57045)

(declare-fun choose!22057 (LexerInterface!5472 List!39104 List!39103 Token!11132) Unit!57045)

(assert (=> d!1081737 (= lt!1289961 (choose!22057 thiss!25197 rules!3568 input!3129 lt!1289825))))

(assert (=> d!1081737 (rulesInvariant!4869 thiss!25197 rules!3568)))

(assert (=> d!1081737 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1471 thiss!25197 rules!3568 input!3129 lt!1289825) lt!1289961)))

(declare-fun b!3686026 () Bool)

(declare-fun res!1497909 () Bool)

(assert (=> b!3686026 (=> (not res!1497909) (not e!2282592))))

(assert (=> b!3686026 (= res!1497909 (matchR!5197 (regex!5883 (get!12920 (getRuleFromTag!1471 thiss!25197 rules!3568 (tag!6693 (rule!8725 lt!1289825))))) (list!14530 (charsOf!3894 lt!1289825))))))

(declare-fun b!3686027 () Bool)

(assert (=> b!3686027 (= e!2282592 (= (rule!8725 lt!1289825) (get!12920 (getRuleFromTag!1471 thiss!25197 rules!3568 (tag!6693 (rule!8725 lt!1289825))))))))

(assert (= (and d!1081737 res!1497908) b!3686026))

(assert (= (and b!3686026 res!1497909) b!3686027))

(assert (=> d!1081737 m!4197235))

(assert (=> d!1081737 m!4197235))

(declare-fun m!4197609 () Bool)

(assert (=> d!1081737 m!4197609))

(declare-fun m!4197611 () Bool)

(assert (=> d!1081737 m!4197611))

(assert (=> d!1081737 m!4197259))

(assert (=> b!3686026 m!4197225))

(assert (=> b!3686026 m!4197231))

(assert (=> b!3686026 m!4197235))

(assert (=> b!3686026 m!4197235))

(declare-fun m!4197613 () Bool)

(assert (=> b!3686026 m!4197613))

(assert (=> b!3686026 m!4197231))

(declare-fun m!4197615 () Bool)

(assert (=> b!3686026 m!4197615))

(assert (=> b!3686026 m!4197225))

(assert (=> b!3686027 m!4197235))

(assert (=> b!3686027 m!4197235))

(assert (=> b!3686027 m!4197613))

(assert (=> b!3685692 d!1081737))

(declare-fun lt!1289964 () List!39103)

(declare-fun b!3686039 () Bool)

(declare-fun e!2282597 () Bool)

(assert (=> b!3686039 (= e!2282597 (or (not (= suffix!1448 Nil!38979)) (= lt!1289964 input!3129)))))

(declare-fun b!3686037 () Bool)

(declare-fun e!2282598 () List!39103)

(assert (=> b!3686037 (= e!2282598 (Cons!38979 (h!44399 input!3129) (++!9702 (t!301078 input!3129) suffix!1448)))))

(declare-fun d!1081739 () Bool)

(assert (=> d!1081739 e!2282597))

(declare-fun res!1497915 () Bool)

(assert (=> d!1081739 (=> (not res!1497915) (not e!2282597))))

(declare-fun content!5644 (List!39103) (Set C!21470))

(assert (=> d!1081739 (= res!1497915 (= (content!5644 lt!1289964) (set.union (content!5644 input!3129) (content!5644 suffix!1448))))))

(assert (=> d!1081739 (= lt!1289964 e!2282598)))

(declare-fun c!637565 () Bool)

(assert (=> d!1081739 (= c!637565 (is-Nil!38979 input!3129))))

(assert (=> d!1081739 (= (++!9702 input!3129 suffix!1448) lt!1289964)))

(declare-fun b!3686038 () Bool)

(declare-fun res!1497914 () Bool)

(assert (=> b!3686038 (=> (not res!1497914) (not e!2282597))))

(assert (=> b!3686038 (= res!1497914 (= (size!29783 lt!1289964) (+ (size!29783 input!3129) (size!29783 suffix!1448))))))

(declare-fun b!3686036 () Bool)

(assert (=> b!3686036 (= e!2282598 suffix!1448)))

(assert (= (and d!1081739 c!637565) b!3686036))

(assert (= (and d!1081739 (not c!637565)) b!3686037))

(assert (= (and d!1081739 res!1497915) b!3686038))

(assert (= (and b!3686038 res!1497914) b!3686039))

(declare-fun m!4197617 () Bool)

(assert (=> b!3686037 m!4197617))

(declare-fun m!4197619 () Bool)

(assert (=> d!1081739 m!4197619))

(declare-fun m!4197621 () Bool)

(assert (=> d!1081739 m!4197621))

(declare-fun m!4197623 () Bool)

(assert (=> d!1081739 m!4197623))

(declare-fun m!4197625 () Bool)

(assert (=> b!3686038 m!4197625))

(assert (=> b!3686038 m!4197605))

(declare-fun m!4197627 () Bool)

(assert (=> b!3686038 m!4197627))

(assert (=> b!3685692 d!1081739))

(declare-fun d!1081741 () Bool)

(assert (=> d!1081741 (= (isDefined!6584 lt!1289828) (not (isEmpty!23186 lt!1289828)))))

(declare-fun bs!573852 () Bool)

(assert (= bs!573852 d!1081741))

(declare-fun m!4197629 () Bool)

(assert (=> bs!573852 m!4197629))

(assert (=> b!3685692 d!1081741))

(declare-fun d!1081743 () Bool)

(assert (=> d!1081743 (isPrefix!3236 lt!1289821 (++!9702 lt!1289821 (_2!22564 lt!1289830)))))

(declare-fun lt!1289967 () Unit!57045)

(declare-fun choose!22058 (List!39103 List!39103) Unit!57045)

(assert (=> d!1081743 (= lt!1289967 (choose!22058 lt!1289821 (_2!22564 lt!1289830)))))

(assert (=> d!1081743 (= (lemmaConcatTwoListThenFirstIsPrefix!2153 lt!1289821 (_2!22564 lt!1289830)) lt!1289967)))

(declare-fun bs!573853 () Bool)

(assert (= bs!573853 d!1081743))

(assert (=> bs!573853 m!4197223))

(assert (=> bs!573853 m!4197223))

(assert (=> bs!573853 m!4197233))

(declare-fun m!4197631 () Bool)

(assert (=> bs!573853 m!4197631))

(assert (=> b!3685692 d!1081743))

(declare-fun d!1081745 () Bool)

(declare-fun lt!1289970 () BalanceConc!23526)

(assert (=> d!1081745 (= (list!14530 lt!1289970) (originalCharacters!6597 lt!1289825))))

(declare-fun dynLambda!17074 (Int TokenValue!6113) BalanceConc!23526)

(assert (=> d!1081745 (= lt!1289970 (dynLambda!17074 (toChars!8050 (transformation!5883 (rule!8725 lt!1289825))) (value!188127 lt!1289825)))))

(assert (=> d!1081745 (= (charsOf!3894 lt!1289825) lt!1289970)))

(declare-fun b_lambda!109445 () Bool)

(assert (=> (not b_lambda!109445) (not d!1081745)))

(declare-fun tb!213715 () Bool)

(declare-fun t!301088 () Bool)

(assert (=> (and b!3685688 (= (toChars!8050 (transformation!5883 (h!44400 rules!3568))) (toChars!8050 (transformation!5883 (rule!8725 lt!1289825)))) t!301088) tb!213715))

(declare-fun b!3686044 () Bool)

(declare-fun e!2282601 () Bool)

(declare-fun tp!1120354 () Bool)

(declare-fun inv!52451 (Conc!11956) Bool)

(assert (=> b!3686044 (= e!2282601 (and (inv!52451 (c!637510 (dynLambda!17074 (toChars!8050 (transformation!5883 (rule!8725 lt!1289825))) (value!188127 lt!1289825)))) tp!1120354))))

(declare-fun result!260090 () Bool)

(declare-fun inv!52452 (BalanceConc!23526) Bool)

(assert (=> tb!213715 (= result!260090 (and (inv!52452 (dynLambda!17074 (toChars!8050 (transformation!5883 (rule!8725 lt!1289825))) (value!188127 lt!1289825))) e!2282601))))

(assert (= tb!213715 b!3686044))

(declare-fun m!4197633 () Bool)

(assert (=> b!3686044 m!4197633))

(declare-fun m!4197635 () Bool)

(assert (=> tb!213715 m!4197635))

(assert (=> d!1081745 t!301088))

(declare-fun b_and!275461 () Bool)

(assert (= b_and!275453 (and (=> t!301088 result!260090) b_and!275461)))

(declare-fun m!4197637 () Bool)

(assert (=> d!1081745 m!4197637))

(declare-fun m!4197639 () Bool)

(assert (=> d!1081745 m!4197639))

(assert (=> b!3685692 d!1081745))

(declare-fun d!1081747 () Bool)

(declare-fun list!14534 (Conc!11957) List!39105)

(assert (=> d!1081747 (= (list!14531 (_1!22565 lt!1289823)) (list!14534 (c!637511 (_1!22565 lt!1289823))))))

(declare-fun bs!573854 () Bool)

(assert (= bs!573854 d!1081747))

(declare-fun m!4197641 () Bool)

(assert (=> bs!573854 m!4197641))

(assert (=> b!3685692 d!1081747))

(declare-fun b!3686048 () Bool)

(declare-fun lt!1289971 () List!39103)

(declare-fun e!2282602 () Bool)

(assert (=> b!3686048 (= e!2282602 (or (not (= (_2!22564 lt!1289830) Nil!38979)) (= lt!1289971 lt!1289821)))))

(declare-fun b!3686046 () Bool)

(declare-fun e!2282603 () List!39103)

(assert (=> b!3686046 (= e!2282603 (Cons!38979 (h!44399 lt!1289821) (++!9702 (t!301078 lt!1289821) (_2!22564 lt!1289830))))))

(declare-fun d!1081749 () Bool)

(assert (=> d!1081749 e!2282602))

(declare-fun res!1497917 () Bool)

(assert (=> d!1081749 (=> (not res!1497917) (not e!2282602))))

(assert (=> d!1081749 (= res!1497917 (= (content!5644 lt!1289971) (set.union (content!5644 lt!1289821) (content!5644 (_2!22564 lt!1289830)))))))

(assert (=> d!1081749 (= lt!1289971 e!2282603)))

(declare-fun c!637566 () Bool)

(assert (=> d!1081749 (= c!637566 (is-Nil!38979 lt!1289821))))

(assert (=> d!1081749 (= (++!9702 lt!1289821 (_2!22564 lt!1289830)) lt!1289971)))

(declare-fun b!3686047 () Bool)

(declare-fun res!1497916 () Bool)

(assert (=> b!3686047 (=> (not res!1497916) (not e!2282602))))

(assert (=> b!3686047 (= res!1497916 (= (size!29783 lt!1289971) (+ (size!29783 lt!1289821) (size!29783 (_2!22564 lt!1289830)))))))

(declare-fun b!3686045 () Bool)

(assert (=> b!3686045 (= e!2282603 (_2!22564 lt!1289830))))

(assert (= (and d!1081749 c!637566) b!3686045))

(assert (= (and d!1081749 (not c!637566)) b!3686046))

(assert (= (and d!1081749 res!1497917) b!3686047))

(assert (= (and b!3686047 res!1497916) b!3686048))

(declare-fun m!4197643 () Bool)

(assert (=> b!3686046 m!4197643))

(declare-fun m!4197645 () Bool)

(assert (=> d!1081749 m!4197645))

(declare-fun m!4197647 () Bool)

(assert (=> d!1081749 m!4197647))

(declare-fun m!4197649 () Bool)

(assert (=> d!1081749 m!4197649))

(declare-fun m!4197651 () Bool)

(assert (=> b!3686047 m!4197651))

(assert (=> b!3686047 m!4197553))

(declare-fun m!4197653 () Bool)

(assert (=> b!3686047 m!4197653))

(assert (=> b!3685692 d!1081749))

(declare-fun d!1081751 () Bool)

(declare-fun list!14535 (Conc!11956) List!39103)

(assert (=> d!1081751 (= (list!14530 (charsOf!3894 lt!1289825)) (list!14535 (c!637510 (charsOf!3894 lt!1289825))))))

(declare-fun bs!573855 () Bool)

(assert (= bs!573855 d!1081751))

(declare-fun m!4197655 () Bool)

(assert (=> bs!573855 m!4197655))

(assert (=> b!3685692 d!1081751))

(declare-fun d!1081753 () Bool)

(assert (=> d!1081753 (= (isEmpty!23178 (maxPrefix!3000 thiss!25197 rules!3568 lt!1289824)) (not (is-Some!8376 (maxPrefix!3000 thiss!25197 rules!3568 lt!1289824))))))

(assert (=> b!3685686 d!1081753))

(declare-fun b!3686049 () Bool)

(declare-fun e!2282604 () Bool)

(declare-fun lt!1289972 () Option!8377)

(assert (=> b!3686049 (= e!2282604 (contains!7782 rules!3568 (rule!8725 (_1!22564 (get!12921 lt!1289972)))))))

(declare-fun b!3686050 () Bool)

(declare-fun res!1497922 () Bool)

(assert (=> b!3686050 (=> (not res!1497922) (not e!2282604))))

(assert (=> b!3686050 (= res!1497922 (= (++!9702 (list!14530 (charsOf!3894 (_1!22564 (get!12921 lt!1289972)))) (_2!22564 (get!12921 lt!1289972))) lt!1289824))))

(declare-fun b!3686051 () Bool)

(declare-fun res!1497918 () Bool)

(assert (=> b!3686051 (=> (not res!1497918) (not e!2282604))))

(assert (=> b!3686051 (= res!1497918 (= (list!14530 (charsOf!3894 (_1!22564 (get!12921 lt!1289972)))) (originalCharacters!6597 (_1!22564 (get!12921 lt!1289972)))))))

(declare-fun d!1081755 () Bool)

(declare-fun e!2282605 () Bool)

(assert (=> d!1081755 e!2282605))

(declare-fun res!1497924 () Bool)

(assert (=> d!1081755 (=> res!1497924 e!2282605)))

(assert (=> d!1081755 (= res!1497924 (isEmpty!23178 lt!1289972))))

(declare-fun e!2282606 () Option!8377)

(assert (=> d!1081755 (= lt!1289972 e!2282606)))

(declare-fun c!637567 () Bool)

(assert (=> d!1081755 (= c!637567 (and (is-Cons!38980 rules!3568) (is-Nil!38980 (t!301079 rules!3568))))))

(declare-fun lt!1289973 () Unit!57045)

(declare-fun lt!1289975 () Unit!57045)

(assert (=> d!1081755 (= lt!1289973 lt!1289975)))

(assert (=> d!1081755 (isPrefix!3236 lt!1289824 lt!1289824)))

(assert (=> d!1081755 (= lt!1289975 (lemmaIsPrefixRefl!2027 lt!1289824 lt!1289824))))

(assert (=> d!1081755 (rulesValidInductive!2099 thiss!25197 rules!3568)))

(assert (=> d!1081755 (= (maxPrefix!3000 thiss!25197 rules!3568 lt!1289824) lt!1289972)))

(declare-fun b!3686052 () Bool)

(assert (=> b!3686052 (= e!2282605 e!2282604)))

(declare-fun res!1497921 () Bool)

(assert (=> b!3686052 (=> (not res!1497921) (not e!2282604))))

(assert (=> b!3686052 (= res!1497921 (isDefined!6586 lt!1289972))))

(declare-fun b!3686053 () Bool)

(declare-fun res!1497920 () Bool)

(assert (=> b!3686053 (=> (not res!1497920) (not e!2282604))))

(assert (=> b!3686053 (= res!1497920 (matchR!5197 (regex!5883 (rule!8725 (_1!22564 (get!12921 lt!1289972)))) (list!14530 (charsOf!3894 (_1!22564 (get!12921 lt!1289972))))))))

(declare-fun bm!266836 () Bool)

(declare-fun call!266841 () Option!8377)

(assert (=> bm!266836 (= call!266841 (maxPrefixOneRule!2122 thiss!25197 (h!44400 rules!3568) lt!1289824))))

(declare-fun b!3686054 () Bool)

(assert (=> b!3686054 (= e!2282606 call!266841)))

(declare-fun b!3686055 () Bool)

(declare-fun res!1497923 () Bool)

(assert (=> b!3686055 (=> (not res!1497923) (not e!2282604))))

(assert (=> b!3686055 (= res!1497923 (< (size!29783 (_2!22564 (get!12921 lt!1289972))) (size!29783 lt!1289824)))))

(declare-fun b!3686056 () Bool)

(declare-fun lt!1289974 () Option!8377)

(declare-fun lt!1289976 () Option!8377)

(assert (=> b!3686056 (= e!2282606 (ite (and (is-None!8376 lt!1289974) (is-None!8376 lt!1289976)) None!8376 (ite (is-None!8376 lt!1289976) lt!1289974 (ite (is-None!8376 lt!1289974) lt!1289976 (ite (>= (size!29779 (_1!22564 (v!38322 lt!1289974))) (size!29779 (_1!22564 (v!38322 lt!1289976)))) lt!1289974 lt!1289976)))))))

(assert (=> b!3686056 (= lt!1289974 call!266841)))

(assert (=> b!3686056 (= lt!1289976 (maxPrefix!3000 thiss!25197 (t!301079 rules!3568) lt!1289824))))

(declare-fun b!3686057 () Bool)

(declare-fun res!1497919 () Bool)

(assert (=> b!3686057 (=> (not res!1497919) (not e!2282604))))

(assert (=> b!3686057 (= res!1497919 (= (value!188127 (_1!22564 (get!12921 lt!1289972))) (apply!9359 (transformation!5883 (rule!8725 (_1!22564 (get!12921 lt!1289972)))) (seqFromList!4432 (originalCharacters!6597 (_1!22564 (get!12921 lt!1289972)))))))))

(assert (= (and d!1081755 c!637567) b!3686054))

(assert (= (and d!1081755 (not c!637567)) b!3686056))

(assert (= (or b!3686054 b!3686056) bm!266836))

(assert (= (and d!1081755 (not res!1497924)) b!3686052))

(assert (= (and b!3686052 res!1497921) b!3686051))

(assert (= (and b!3686051 res!1497918) b!3686055))

(assert (= (and b!3686055 res!1497923) b!3686050))

(assert (= (and b!3686050 res!1497922) b!3686057))

(assert (= (and b!3686057 res!1497919) b!3686053))

(assert (= (and b!3686053 res!1497920) b!3686049))

(declare-fun m!4197657 () Bool)

(assert (=> b!3686049 m!4197657))

(declare-fun m!4197659 () Bool)

(assert (=> b!3686049 m!4197659))

(declare-fun m!4197661 () Bool)

(assert (=> b!3686056 m!4197661))

(declare-fun m!4197663 () Bool)

(assert (=> bm!266836 m!4197663))

(assert (=> b!3686057 m!4197657))

(declare-fun m!4197665 () Bool)

(assert (=> b!3686057 m!4197665))

(assert (=> b!3686057 m!4197665))

(declare-fun m!4197667 () Bool)

(assert (=> b!3686057 m!4197667))

(assert (=> b!3686051 m!4197657))

(declare-fun m!4197669 () Bool)

(assert (=> b!3686051 m!4197669))

(assert (=> b!3686051 m!4197669))

(declare-fun m!4197671 () Bool)

(assert (=> b!3686051 m!4197671))

(assert (=> b!3686053 m!4197657))

(assert (=> b!3686053 m!4197669))

(assert (=> b!3686053 m!4197669))

(assert (=> b!3686053 m!4197671))

(assert (=> b!3686053 m!4197671))

(declare-fun m!4197673 () Bool)

(assert (=> b!3686053 m!4197673))

(declare-fun m!4197675 () Bool)

(assert (=> b!3686052 m!4197675))

(declare-fun m!4197677 () Bool)

(assert (=> d!1081755 m!4197677))

(declare-fun m!4197679 () Bool)

(assert (=> d!1081755 m!4197679))

(declare-fun m!4197681 () Bool)

(assert (=> d!1081755 m!4197681))

(assert (=> d!1081755 m!4197253))

(assert (=> b!3686055 m!4197657))

(declare-fun m!4197683 () Bool)

(assert (=> b!3686055 m!4197683))

(assert (=> b!3686055 m!4197551))

(assert (=> b!3686050 m!4197657))

(assert (=> b!3686050 m!4197669))

(assert (=> b!3686050 m!4197669))

(assert (=> b!3686050 m!4197671))

(assert (=> b!3686050 m!4197671))

(declare-fun m!4197685 () Bool)

(assert (=> b!3686050 m!4197685))

(assert (=> b!3685686 d!1081755))

(declare-fun b!3686070 () Bool)

(declare-fun e!2282609 () Bool)

(declare-fun tp!1120368 () Bool)

(assert (=> b!3686070 (= e!2282609 tp!1120368)))

(declare-fun b!3686071 () Bool)

(declare-fun tp!1120369 () Bool)

(declare-fun tp!1120366 () Bool)

(assert (=> b!3686071 (= e!2282609 (and tp!1120369 tp!1120366))))

(declare-fun b!3686069 () Bool)

(declare-fun tp!1120367 () Bool)

(declare-fun tp!1120365 () Bool)

(assert (=> b!3686069 (= e!2282609 (and tp!1120367 tp!1120365))))

(assert (=> b!3685684 (= tp!1120330 e!2282609)))

(declare-fun b!3686068 () Bool)

(assert (=> b!3686068 (= e!2282609 tp_is_empty!18367)))

(assert (= (and b!3685684 (is-ElementMatch!10642 (regex!5883 (h!44400 rules!3568)))) b!3686068))

(assert (= (and b!3685684 (is-Concat!16756 (regex!5883 (h!44400 rules!3568)))) b!3686069))

(assert (= (and b!3685684 (is-Star!10642 (regex!5883 (h!44400 rules!3568)))) b!3686070))

(assert (= (and b!3685684 (is-Union!10642 (regex!5883 (h!44400 rules!3568)))) b!3686071))

(declare-fun b!3686082 () Bool)

(declare-fun b_free!97777 () Bool)

(declare-fun b_next!98481 () Bool)

(assert (=> b!3686082 (= b_free!97777 (not b_next!98481))))

(declare-fun tp!1120381 () Bool)

(declare-fun b_and!275463 () Bool)

(assert (=> b!3686082 (= tp!1120381 b_and!275463)))

(declare-fun b_free!97779 () Bool)

(declare-fun b_next!98483 () Bool)

(assert (=> b!3686082 (= b_free!97779 (not b_next!98483))))

(declare-fun tb!213717 () Bool)

(declare-fun t!301090 () Bool)

(assert (=> (and b!3686082 (= (toChars!8050 (transformation!5883 (h!44400 (t!301079 rules!3568)))) (toChars!8050 (transformation!5883 (rule!8725 lt!1289825)))) t!301090) tb!213717))

(declare-fun result!260098 () Bool)

(assert (= result!260098 result!260090))

(assert (=> d!1081745 t!301090))

(declare-fun tp!1120380 () Bool)

(declare-fun b_and!275465 () Bool)

(assert (=> b!3686082 (= tp!1120380 (and (=> t!301090 result!260098) b_and!275465))))

(declare-fun e!2282619 () Bool)

(assert (=> b!3686082 (= e!2282619 (and tp!1120381 tp!1120380))))

(declare-fun b!3686081 () Bool)

(declare-fun e!2282621 () Bool)

(declare-fun tp!1120378 () Bool)

(assert (=> b!3686081 (= e!2282621 (and tp!1120378 (inv!52446 (tag!6693 (h!44400 (t!301079 rules!3568)))) (inv!52449 (transformation!5883 (h!44400 (t!301079 rules!3568)))) e!2282619))))

(declare-fun b!3686080 () Bool)

(declare-fun e!2282618 () Bool)

(declare-fun tp!1120379 () Bool)

(assert (=> b!3686080 (= e!2282618 (and e!2282621 tp!1120379))))

(assert (=> b!3685693 (= tp!1120327 e!2282618)))

(assert (= b!3686081 b!3686082))

(assert (= b!3686080 b!3686081))

(assert (= (and b!3685693 (is-Cons!38980 (t!301079 rules!3568))) b!3686080))

(declare-fun m!4197687 () Bool)

(assert (=> b!3686081 m!4197687))

(declare-fun m!4197689 () Bool)

(assert (=> b!3686081 m!4197689))

(declare-fun b!3686087 () Bool)

(declare-fun e!2282624 () Bool)

(declare-fun tp!1120384 () Bool)

(assert (=> b!3686087 (= e!2282624 (and tp_is_empty!18367 tp!1120384))))

(assert (=> b!3685681 (= tp!1120329 e!2282624)))

(assert (= (and b!3685681 (is-Cons!38979 (t!301078 suffix!1448))) b!3686087))

(declare-fun b!3686088 () Bool)

(declare-fun e!2282625 () Bool)

(declare-fun tp!1120385 () Bool)

(assert (=> b!3686088 (= e!2282625 (and tp_is_empty!18367 tp!1120385))))

(assert (=> b!3685691 (= tp!1120325 e!2282625)))

(assert (= (and b!3685691 (is-Cons!38979 (t!301078 input!3129))) b!3686088))

(push 1)

(assert (not b!3686021))

(assert (not bm!266836))

(assert (not b!3686044))

(assert (not b!3685941))

(assert (not b!3686053))

(assert (not b!3685981))

(assert (not b!3686013))

(assert (not b!3685994))

(assert (not bm!266831))

(assert b_and!275451)

(assert (not d!1081721))

(assert (not b!3686037))

(assert (not b!3686019))

(assert (not d!1081737))

(assert (not b!3685974))

(assert (not b!3685963))

(assert (not b!3686080))

(assert (not d!1081739))

(assert (not b!3685873))

(assert (not b!3685978))

(assert (not b!3685976))

(assert (not d!1081743))

(assert (not d!1081747))

(assert (not tb!213715))

(assert (not b!3686069))

(assert (not b!3686050))

(assert (not b!3686070))

(assert (not b_next!98481))

(assert (not d!1081751))

(assert (not b!3685962))

(assert (not b!3685985))

(assert (not d!1081665))

(assert (not b!3685852))

(assert (not b!3686051))

(assert (not b_next!98483))

(assert (not b!3685980))

(assert (not b!3685901))

(assert (not b!3686087))

(assert (not b!3686056))

(assert (not b!3686015))

(assert (not d!1081715))

(assert (not b!3685853))

(assert (not b!3685960))

(assert (not b!3686016))

(assert (not b!3686017))

(assert (not b!3685943))

(assert (not d!1081755))

(assert (not b!3685899))

(assert (not b_lambda!109445))

(assert (not b!3685946))

(assert b_and!275463)

(assert (not b!3686081))

(assert (not d!1081733))

(assert (not b!3686055))

(assert (not bm!266832))

(assert (not b!3686057))

(assert (not d!1081691))

(assert (not b!3685933))

(assert (not b!3685939))

(assert (not d!1081741))

(assert (not b!3686088))

(assert (not b!3686038))

(assert b_and!275465)

(assert (not b!3685934))

(assert (not b!3686020))

(assert (not b!3686052))

(assert b_and!275461)

(assert (not b!3686047))

(assert (not d!1081749))

(assert (not d!1081695))

(assert (not b!3686071))

(assert (not b!3685990))

(assert tp_is_empty!18367)

(assert (not b!3686014))

(assert (not b!3685992))

(assert (not d!1081723))

(assert (not b!3686046))

(assert (not d!1081699))

(assert (not d!1081719))

(assert (not b!3685897))

(assert (not b!3685984))

(assert (not b_next!98473))

(assert (not b!3685898))

(assert (not b!3686049))

(assert (not b!3686027))

(assert (not b_next!98475))

(assert (not b!3685979))

(assert (not d!1081713))

(assert (not d!1081731))

(assert (not bm!266835))

(assert (not d!1081745))

(assert (not b!3685930))

(assert (not b!3686026))

(assert (not b!3685975))

(check-sat)

(pop 1)

(push 1)

(assert b_and!275451)

(assert (not b_next!98481))

(assert (not b_next!98483))

(assert b_and!275463)

(assert b_and!275465)

(assert b_and!275461)

(assert (not b_next!98473))

(assert (not b_next!98475))

(check-sat)

(pop 1)

