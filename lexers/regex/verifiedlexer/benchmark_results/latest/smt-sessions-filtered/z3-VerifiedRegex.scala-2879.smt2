; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!168126 () Bool)

(assert start!168126)

(declare-fun b!1717127 () Bool)

(declare-fun b_free!46667 () Bool)

(declare-fun b_next!47371 () Bool)

(assert (=> b!1717127 (= b_free!46667 (not b_next!47371))))

(declare-fun tp!490408 () Bool)

(declare-fun b_and!124811 () Bool)

(assert (=> b!1717127 (= tp!490408 b_and!124811)))

(declare-fun b_free!46669 () Bool)

(declare-fun b_next!47373 () Bool)

(assert (=> b!1717127 (= b_free!46669 (not b_next!47373))))

(declare-fun tp!490409 () Bool)

(declare-fun b_and!124813 () Bool)

(assert (=> b!1717127 (= tp!490409 b_and!124813)))

(declare-fun b!1717125 () Bool)

(declare-fun b_free!46671 () Bool)

(declare-fun b_next!47375 () Bool)

(assert (=> b!1717125 (= b_free!46671 (not b_next!47375))))

(declare-fun tp!490410 () Bool)

(declare-fun b_and!124815 () Bool)

(assert (=> b!1717125 (= tp!490410 b_and!124815)))

(declare-fun b_free!46673 () Bool)

(declare-fun b_next!47377 () Bool)

(assert (=> b!1717125 (= b_free!46673 (not b_next!47377))))

(declare-fun tp!490412 () Bool)

(declare-fun b_and!124817 () Bool)

(assert (=> b!1717125 (= tp!490412 b_and!124817)))

(declare-fun b!1717102 () Bool)

(declare-fun b_free!46675 () Bool)

(declare-fun b_next!47379 () Bool)

(assert (=> b!1717102 (= b_free!46675 (not b_next!47379))))

(declare-fun tp!490402 () Bool)

(declare-fun b_and!124819 () Bool)

(assert (=> b!1717102 (= tp!490402 b_and!124819)))

(declare-fun b_free!46677 () Bool)

(declare-fun b_next!47381 () Bool)

(assert (=> b!1717102 (= b_free!46677 (not b_next!47381))))

(declare-fun tp!490406 () Bool)

(declare-fun b_and!124821 () Bool)

(assert (=> b!1717102 (= tp!490406 b_and!124821)))

(declare-fun b!1717138 () Bool)

(declare-fun e!1098145 () Bool)

(assert (=> b!1717138 (= e!1098145 true)))

(declare-fun b!1717137 () Bool)

(declare-fun e!1098144 () Bool)

(assert (=> b!1717137 (= e!1098144 e!1098145)))

(declare-fun b!1717136 () Bool)

(declare-fun e!1098143 () Bool)

(assert (=> b!1717136 (= e!1098143 e!1098144)))

(declare-fun b!1717113 () Bool)

(assert (=> b!1717113 e!1098143))

(assert (= b!1717137 b!1717138))

(assert (= b!1717136 b!1717137))

(assert (= b!1717113 b!1717136))

(declare-fun order!11355 () Int)

(declare-fun lambda!69008 () Int)

(declare-datatypes ((List!18834 0))(
  ( (Nil!18764) (Cons!18764 (h!24165 (_ BitVec 16)) (t!158933 List!18834)) )
))
(declare-datatypes ((TokenValue!3409 0))(
  ( (FloatLiteralValue!6818 (text!24308 List!18834)) (TokenValueExt!3408 (__x!12120 Int)) (Broken!17045 (value!104238 List!18834)) (Object!3478) (End!3409) (Def!3409) (Underscore!3409) (Match!3409) (Else!3409) (Error!3409) (Case!3409) (If!3409) (Extends!3409) (Abstract!3409) (Class!3409) (Val!3409) (DelimiterValue!6818 (del!3469 List!18834)) (KeywordValue!3415 (value!104239 List!18834)) (CommentValue!6818 (value!104240 List!18834)) (WhitespaceValue!6818 (value!104241 List!18834)) (IndentationValue!3409 (value!104242 List!18834)) (String!21376) (Int32!3409) (Broken!17046 (value!104243 List!18834)) (Boolean!3410) (Unit!32598) (OperatorValue!3412 (op!3469 List!18834)) (IdentifierValue!6818 (value!104244 List!18834)) (IdentifierValue!6819 (value!104245 List!18834)) (WhitespaceValue!6819 (value!104246 List!18834)) (True!6818) (False!6818) (Broken!17047 (value!104247 List!18834)) (Broken!17048 (value!104248 List!18834)) (True!6819) (RightBrace!3409) (RightBracket!3409) (Colon!3409) (Null!3409) (Comma!3409) (LeftBracket!3409) (False!6819) (LeftBrace!3409) (ImaginaryLiteralValue!3409 (text!24309 List!18834)) (StringLiteralValue!10227 (value!104249 List!18834)) (EOFValue!3409 (value!104250 List!18834)) (IdentValue!3409 (value!104251 List!18834)) (DelimiterValue!6819 (value!104252 List!18834)) (DedentValue!3409 (value!104253 List!18834)) (NewLineValue!3409 (value!104254 List!18834)) (IntegerValue!10227 (value!104255 (_ BitVec 32)) (text!24310 List!18834)) (IntegerValue!10228 (value!104256 Int) (text!24311 List!18834)) (Times!3409) (Or!3409) (Equal!3409) (Minus!3409) (Broken!17049 (value!104257 List!18834)) (And!3409) (Div!3409) (LessEqual!3409) (Mod!3409) (Concat!8056) (Not!3409) (Plus!3409) (SpaceValue!3409 (value!104258 List!18834)) (IntegerValue!10229 (value!104259 Int) (text!24312 List!18834)) (StringLiteralValue!10228 (text!24313 List!18834)) (FloatLiteralValue!6819 (text!24314 List!18834)) (BytesLiteralValue!3409 (value!104260 List!18834)) (CommentValue!6819 (value!104261 List!18834)) (StringLiteralValue!10229 (value!104262 List!18834)) (ErrorTokenValue!3409 (msg!3470 List!18834)) )
))
(declare-datatypes ((C!9468 0))(
  ( (C!9469 (val!5330 Int)) )
))
(declare-datatypes ((Regex!4647 0))(
  ( (ElementMatch!4647 (c!281204 C!9468)) (Concat!8057 (regOne!9806 Regex!4647) (regTwo!9806 Regex!4647)) (EmptyExpr!4647) (Star!4647 (reg!4976 Regex!4647)) (EmptyLang!4647) (Union!4647 (regOne!9807 Regex!4647) (regTwo!9807 Regex!4647)) )
))
(declare-datatypes ((String!21377 0))(
  ( (String!21378 (value!104263 String)) )
))
(declare-datatypes ((List!18835 0))(
  ( (Nil!18765) (Cons!18765 (h!24166 C!9468) (t!158934 List!18835)) )
))
(declare-datatypes ((IArray!12487 0))(
  ( (IArray!12488 (innerList!6301 List!18835)) )
))
(declare-datatypes ((Conc!6241 0))(
  ( (Node!6241 (left!14962 Conc!6241) (right!15292 Conc!6241) (csize!12712 Int) (cheight!6452 Int)) (Leaf!9121 (xs!9117 IArray!12487) (csize!12713 Int)) (Empty!6241) )
))
(declare-datatypes ((BalanceConc!12426 0))(
  ( (BalanceConc!12427 (c!281205 Conc!6241)) )
))
(declare-datatypes ((TokenValueInjection!6478 0))(
  ( (TokenValueInjection!6479 (toValue!4826 Int) (toChars!4685 Int)) )
))
(declare-datatypes ((Rule!6438 0))(
  ( (Rule!6439 (regex!3319 Regex!4647) (tag!3623 String!21377) (isSeparator!3319 Bool) (transformation!3319 TokenValueInjection!6478)) )
))
(declare-datatypes ((Token!6204 0))(
  ( (Token!6205 (value!104264 TokenValue!3409) (rule!5259 Rule!6438) (size!14908 Int) (originalCharacters!4133 List!18835)) )
))
(declare-datatypes ((tuple2!18470 0))(
  ( (tuple2!18471 (_1!10637 Token!6204) (_2!10637 List!18835)) )
))
(declare-fun lt!656182 () tuple2!18470)

(declare-fun order!11357 () Int)

(declare-fun dynLambda!8576 (Int Int) Int)

(declare-fun dynLambda!8577 (Int Int) Int)

(assert (=> b!1717138 (< (dynLambda!8576 order!11355 (toValue!4826 (transformation!3319 (rule!5259 (_1!10637 lt!656182))))) (dynLambda!8577 order!11357 lambda!69008))))

(declare-fun order!11359 () Int)

(declare-fun dynLambda!8578 (Int Int) Int)

(assert (=> b!1717138 (< (dynLambda!8578 order!11359 (toChars!4685 (transformation!3319 (rule!5259 (_1!10637 lt!656182))))) (dynLambda!8577 order!11357 lambda!69008))))

(declare-fun b!1717100 () Bool)

(declare-fun e!1098121 () Bool)

(declare-fun e!1098116 () Bool)

(assert (=> b!1717100 (= e!1098121 e!1098116)))

(declare-fun res!770057 () Bool)

(assert (=> b!1717100 (=> res!770057 e!1098116)))

(declare-fun lt!656186 () List!18835)

(declare-fun lt!656180 () BalanceConc!12426)

(declare-fun list!7580 (BalanceConc!12426) List!18835)

(declare-fun dynLambda!8579 (Int TokenValue!3409) BalanceConc!12426)

(declare-fun dynLambda!8580 (Int BalanceConc!12426) TokenValue!3409)

(assert (=> b!1717100 (= res!770057 (not (= (list!7580 (dynLambda!8579 (toChars!4685 (transformation!3319 (rule!5259 (_1!10637 lt!656182)))) (dynLambda!8580 (toValue!4826 (transformation!3319 (rule!5259 (_1!10637 lt!656182)))) lt!656180))) lt!656186)))))

(declare-datatypes ((Unit!32599 0))(
  ( (Unit!32600) )
))
(declare-fun lt!656172 () Unit!32599)

(declare-fun lemmaSemiInverse!465 (TokenValueInjection!6478 BalanceConc!12426) Unit!32599)

(assert (=> b!1717100 (= lt!656172 (lemmaSemiInverse!465 (transformation!3319 (rule!5259 (_1!10637 lt!656182))) lt!656180))))

(declare-fun b!1717101 () Bool)

(declare-fun res!770047 () Bool)

(declare-fun e!1098123 () Bool)

(assert (=> b!1717101 (=> (not res!770047) (not e!1098123))))

(declare-fun lt!656185 () tuple2!18470)

(declare-fun isEmpty!11797 (List!18835) Bool)

(assert (=> b!1717101 (= res!770047 (isEmpty!11797 (_2!10637 lt!656185)))))

(declare-fun e!1098136 () Bool)

(assert (=> b!1717102 (= e!1098136 (and tp!490402 tp!490406))))

(declare-fun b!1717103 () Bool)

(declare-fun res!770062 () Bool)

(declare-fun e!1098125 () Bool)

(assert (=> b!1717103 (=> (not res!770062) (not e!1098125))))

(declare-datatypes ((LexerInterface!2948 0))(
  ( (LexerInterfaceExt!2945 (__x!12121 Int)) (Lexer!2946) )
))
(declare-fun thiss!24550 () LexerInterface!2948)

(declare-datatypes ((List!18836 0))(
  ( (Nil!18766) (Cons!18766 (h!24167 Rule!6438) (t!158935 List!18836)) )
))
(declare-fun rules!3447 () List!18836)

(declare-fun rulesInvariant!2617 (LexerInterface!2948 List!18836) Bool)

(assert (=> b!1717103 (= res!770062 (rulesInvariant!2617 thiss!24550 rules!3447))))

(declare-fun e!1098117 () Bool)

(declare-fun token!523 () Token!6204)

(declare-fun tp!490407 () Bool)

(declare-fun b!1717104 () Bool)

(declare-fun inv!24207 (String!21377) Bool)

(declare-fun inv!24212 (TokenValueInjection!6478) Bool)

(assert (=> b!1717104 (= e!1098117 (and tp!490407 (inv!24207 (tag!3623 (rule!5259 token!523))) (inv!24212 (transformation!3319 (rule!5259 token!523))) e!1098136))))

(declare-fun tp!490403 () Bool)

(declare-fun rule!422 () Rule!6438)

(declare-fun e!1098129 () Bool)

(declare-fun e!1098135 () Bool)

(declare-fun b!1717105 () Bool)

(assert (=> b!1717105 (= e!1098135 (and tp!490403 (inv!24207 (tag!3623 rule!422)) (inv!24212 (transformation!3319 rule!422)) e!1098129))))

(declare-fun b!1717106 () Bool)

(declare-fun res!770051 () Bool)

(declare-fun e!1098118 () Bool)

(assert (=> b!1717106 (=> res!770051 e!1098118)))

(declare-fun suffix!1421 () List!18835)

(assert (=> b!1717106 (= res!770051 (isEmpty!11797 suffix!1421))))

(declare-fun b!1717107 () Bool)

(declare-fun e!1098133 () Bool)

(declare-fun tp_is_empty!7537 () Bool)

(declare-fun tp!490411 () Bool)

(assert (=> b!1717107 (= e!1098133 (and tp_is_empty!7537 tp!490411))))

(declare-fun b!1717108 () Bool)

(declare-fun res!770045 () Bool)

(assert (=> b!1717108 (=> res!770045 e!1098116)))

(assert (=> b!1717108 (= res!770045 (not (= lt!656180 (dynLambda!8579 (toChars!4685 (transformation!3319 (rule!5259 (_1!10637 lt!656182)))) (value!104264 (_1!10637 lt!656182))))))))

(declare-fun res!770046 () Bool)

(assert (=> start!168126 (=> (not res!770046) (not e!1098125))))

(get-info :version)

(assert (=> start!168126 (= res!770046 ((_ is Lexer!2946) thiss!24550))))

(assert (=> start!168126 e!1098125))

(assert (=> start!168126 e!1098133))

(assert (=> start!168126 e!1098135))

(assert (=> start!168126 true))

(declare-fun e!1098122 () Bool)

(declare-fun inv!24213 (Token!6204) Bool)

(assert (=> start!168126 (and (inv!24213 token!523) e!1098122)))

(declare-fun e!1098115 () Bool)

(assert (=> start!168126 e!1098115))

(declare-fun b!1717109 () Bool)

(declare-fun res!770054 () Bool)

(declare-fun e!1098131 () Bool)

(assert (=> b!1717109 (=> res!770054 e!1098131)))

(declare-fun matchR!2121 (Regex!4647 List!18835) Bool)

(assert (=> b!1717109 (= res!770054 (not (matchR!2121 (regex!3319 (rule!5259 (_1!10637 lt!656182))) lt!656186)))))

(declare-fun b!1717110 () Bool)

(declare-fun e!1098132 () Bool)

(assert (=> b!1717110 (= e!1098125 e!1098132)))

(declare-fun res!770055 () Bool)

(assert (=> b!1717110 (=> (not res!770055) (not e!1098132))))

(declare-datatypes ((Option!3662 0))(
  ( (None!3661) (Some!3661 (v!25058 tuple2!18470)) )
))
(declare-fun lt!656184 () Option!3662)

(declare-fun isDefined!3005 (Option!3662) Bool)

(assert (=> b!1717110 (= res!770055 (isDefined!3005 lt!656184))))

(declare-fun lt!656178 () List!18835)

(declare-fun maxPrefix!1502 (LexerInterface!2948 List!18836 List!18835) Option!3662)

(assert (=> b!1717110 (= lt!656184 (maxPrefix!1502 thiss!24550 rules!3447 lt!656178))))

(declare-fun charsOf!1968 (Token!6204) BalanceConc!12426)

(assert (=> b!1717110 (= lt!656178 (list!7580 (charsOf!1968 token!523)))))

(declare-fun e!1098130 () Bool)

(declare-fun e!1098119 () Bool)

(declare-fun b!1717111 () Bool)

(declare-fun tp!490401 () Bool)

(assert (=> b!1717111 (= e!1098119 (and tp!490401 (inv!24207 (tag!3623 (h!24167 rules!3447))) (inv!24212 (transformation!3319 (h!24167 rules!3447))) e!1098130))))

(declare-fun b!1717112 () Bool)

(declare-fun tp!490404 () Bool)

(assert (=> b!1717112 (= e!1098115 (and e!1098119 tp!490404))))

(assert (=> b!1717113 (= e!1098131 e!1098121)))

(declare-fun res!770059 () Bool)

(assert (=> b!1717113 (=> res!770059 e!1098121)))

(declare-fun Forall!694 (Int) Bool)

(assert (=> b!1717113 (= res!770059 (not (Forall!694 lambda!69008)))))

(declare-fun lt!656188 () Unit!32599)

(declare-fun lemmaInv!526 (TokenValueInjection!6478) Unit!32599)

(assert (=> b!1717113 (= lt!656188 (lemmaInv!526 (transformation!3319 (rule!5259 (_1!10637 lt!656182)))))))

(declare-fun b!1717114 () Bool)

(declare-fun res!770060 () Bool)

(assert (=> b!1717114 (=> (not res!770060) (not e!1098125))))

(declare-fun isEmpty!11798 (List!18836) Bool)

(assert (=> b!1717114 (= res!770060 (not (isEmpty!11798 rules!3447)))))

(declare-fun b!1717115 () Bool)

(assert (=> b!1717115 (= e!1098118 e!1098131)))

(declare-fun res!770052 () Bool)

(assert (=> b!1717115 (=> res!770052 e!1098131)))

(declare-fun lt!656183 () List!18835)

(declare-fun isPrefix!1560 (List!18835 List!18835) Bool)

(assert (=> b!1717115 (= res!770052 (not (isPrefix!1560 lt!656186 lt!656183)))))

(declare-fun ++!5144 (List!18835 List!18835) List!18835)

(assert (=> b!1717115 (isPrefix!1560 lt!656186 (++!5144 lt!656186 (_2!10637 lt!656182)))))

(declare-fun lt!656177 () Unit!32599)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1070 (List!18835 List!18835) Unit!32599)

(assert (=> b!1717115 (= lt!656177 (lemmaConcatTwoListThenFirstIsPrefix!1070 lt!656186 (_2!10637 lt!656182)))))

(assert (=> b!1717115 (= lt!656186 (list!7580 lt!656180))))

(assert (=> b!1717115 (= lt!656180 (charsOf!1968 (_1!10637 lt!656182)))))

(declare-fun e!1098128 () Bool)

(assert (=> b!1717115 e!1098128))

(declare-fun res!770048 () Bool)

(assert (=> b!1717115 (=> (not res!770048) (not e!1098128))))

(declare-datatypes ((Option!3663 0))(
  ( (None!3662) (Some!3662 (v!25059 Rule!6438)) )
))
(declare-fun lt!656190 () Option!3663)

(declare-fun isDefined!3006 (Option!3663) Bool)

(assert (=> b!1717115 (= res!770048 (isDefined!3006 lt!656190))))

(declare-fun getRuleFromTag!369 (LexerInterface!2948 List!18836 String!21377) Option!3663)

(assert (=> b!1717115 (= lt!656190 (getRuleFromTag!369 thiss!24550 rules!3447 (tag!3623 (rule!5259 (_1!10637 lt!656182)))))))

(declare-fun lt!656175 () Unit!32599)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!369 (LexerInterface!2948 List!18836 List!18835 Token!6204) Unit!32599)

(assert (=> b!1717115 (= lt!656175 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!369 thiss!24550 rules!3447 lt!656183 (_1!10637 lt!656182)))))

(declare-fun lt!656170 () Option!3662)

(declare-fun get!5539 (Option!3662) tuple2!18470)

(assert (=> b!1717115 (= lt!656182 (get!5539 lt!656170))))

(declare-fun lt!656187 () Unit!32599)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!472 (LexerInterface!2948 List!18836 List!18835 List!18835) Unit!32599)

(assert (=> b!1717115 (= lt!656187 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!472 thiss!24550 rules!3447 lt!656178 suffix!1421))))

(assert (=> b!1717115 (= lt!656170 (maxPrefix!1502 thiss!24550 rules!3447 lt!656183))))

(assert (=> b!1717115 (isPrefix!1560 lt!656178 lt!656183)))

(declare-fun lt!656189 () Unit!32599)

(assert (=> b!1717115 (= lt!656189 (lemmaConcatTwoListThenFirstIsPrefix!1070 lt!656178 suffix!1421))))

(assert (=> b!1717115 (= lt!656183 (++!5144 lt!656178 suffix!1421))))

(declare-fun b!1717116 () Bool)

(declare-fun e!1098127 () Bool)

(assert (=> b!1717116 (= e!1098116 e!1098127)))

(declare-fun res!770050 () Bool)

(assert (=> b!1717116 (=> res!770050 e!1098127)))

(declare-fun apply!5124 (TokenValueInjection!6478 BalanceConc!12426) TokenValue!3409)

(declare-fun size!14909 (BalanceConc!12426) Int)

(assert (=> b!1717116 (= res!770050 (not (= lt!656170 (Some!3661 (tuple2!18471 (Token!6205 (apply!5124 (transformation!3319 (rule!5259 (_1!10637 lt!656182))) lt!656180) (rule!5259 (_1!10637 lt!656182)) (size!14909 lt!656180) lt!656186) (_2!10637 lt!656182))))))))

(declare-fun lt!656173 () Unit!32599)

(declare-fun lemmaCharactersSize!391 (Token!6204) Unit!32599)

(assert (=> b!1717116 (= lt!656173 (lemmaCharactersSize!391 (_1!10637 lt!656182)))))

(declare-fun lt!656176 () Unit!32599)

(declare-fun lemmaEqSameImage!244 (TokenValueInjection!6478 BalanceConc!12426 BalanceConc!12426) Unit!32599)

(declare-fun seqFromList!2293 (List!18835) BalanceConc!12426)

(assert (=> b!1717116 (= lt!656176 (lemmaEqSameImage!244 (transformation!3319 (rule!5259 (_1!10637 lt!656182))) lt!656180 (seqFromList!2293 (originalCharacters!4133 (_1!10637 lt!656182)))))))

(declare-fun b!1717117 () Bool)

(declare-fun e!1098114 () Bool)

(assert (=> b!1717117 (= e!1098128 e!1098114)))

(declare-fun res!770044 () Bool)

(assert (=> b!1717117 (=> (not res!770044) (not e!1098114))))

(declare-fun lt!656174 () Rule!6438)

(assert (=> b!1717117 (= res!770044 (matchR!2121 (regex!3319 lt!656174) (list!7580 (charsOf!1968 (_1!10637 lt!656182)))))))

(declare-fun get!5540 (Option!3663) Rule!6438)

(assert (=> b!1717117 (= lt!656174 (get!5540 lt!656190))))

(declare-fun b!1717118 () Bool)

(declare-fun res!770061 () Bool)

(assert (=> b!1717118 (=> res!770061 e!1098118)))

(declare-fun prefixMatch!532 (Regex!4647 List!18835) Bool)

(declare-fun rulesRegex!677 (LexerInterface!2948 List!18836) Regex!4647)

(declare-fun head!3866 (List!18835) C!9468)

(assert (=> b!1717118 (= res!770061 (prefixMatch!532 (rulesRegex!677 thiss!24550 rules!3447) (++!5144 lt!656178 (Cons!18765 (head!3866 suffix!1421) Nil!18765))))))

(declare-fun b!1717119 () Bool)

(assert (=> b!1717119 (= e!1098123 (not e!1098118))))

(declare-fun res!770049 () Bool)

(assert (=> b!1717119 (=> res!770049 e!1098118)))

(assert (=> b!1717119 (= res!770049 (not (matchR!2121 (regex!3319 rule!422) lt!656178)))))

(declare-fun ruleValid!818 (LexerInterface!2948 Rule!6438) Bool)

(assert (=> b!1717119 (ruleValid!818 thiss!24550 rule!422)))

(declare-fun lt!656181 () Unit!32599)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!342 (LexerInterface!2948 Rule!6438 List!18836) Unit!32599)

(assert (=> b!1717119 (= lt!656181 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!342 thiss!24550 rule!422 rules!3447))))

(declare-fun tp!490405 () Bool)

(declare-fun b!1717120 () Bool)

(declare-fun inv!21 (TokenValue!3409) Bool)

(assert (=> b!1717120 (= e!1098122 (and (inv!21 (value!104264 token!523)) e!1098117 tp!490405))))

(declare-fun b!1717121 () Bool)

(assert (=> b!1717121 (= e!1098127 true)))

(declare-fun lt!656179 () Int)

(declare-fun size!14910 (List!18835) Int)

(assert (=> b!1717121 (= lt!656179 (size!14910 lt!656183))))

(declare-fun maxPrefixOneRule!878 (LexerInterface!2948 Rule!6438 List!18835) Option!3662)

(assert (=> b!1717121 (= (maxPrefixOneRule!878 thiss!24550 (rule!5259 (_1!10637 lt!656182)) lt!656183) (Some!3661 (tuple2!18471 (Token!6205 (apply!5124 (transformation!3319 (rule!5259 (_1!10637 lt!656182))) (seqFromList!2293 lt!656186)) (rule!5259 (_1!10637 lt!656182)) (size!14910 lt!656186) lt!656186) (_2!10637 lt!656182))))))

(declare-fun lt!656171 () Unit!32599)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!277 (LexerInterface!2948 List!18836 List!18835 List!18835 List!18835 Rule!6438) Unit!32599)

(assert (=> b!1717121 (= lt!656171 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!277 thiss!24550 rules!3447 lt!656186 lt!656183 (_2!10637 lt!656182) (rule!5259 (_1!10637 lt!656182))))))

(declare-fun b!1717122 () Bool)

(assert (=> b!1717122 (= e!1098114 (= (rule!5259 (_1!10637 lt!656182)) lt!656174))))

(declare-fun b!1717123 () Bool)

(assert (=> b!1717123 (= e!1098132 e!1098123)))

(declare-fun res!770053 () Bool)

(assert (=> b!1717123 (=> (not res!770053) (not e!1098123))))

(assert (=> b!1717123 (= res!770053 (= (_1!10637 lt!656185) token!523))))

(assert (=> b!1717123 (= lt!656185 (get!5539 lt!656184))))

(declare-fun b!1717124 () Bool)

(declare-fun res!770056 () Bool)

(assert (=> b!1717124 (=> (not res!770056) (not e!1098125))))

(declare-fun contains!3341 (List!18836 Rule!6438) Bool)

(assert (=> b!1717124 (= res!770056 (contains!3341 rules!3447 rule!422))))

(assert (=> b!1717125 (= e!1098129 (and tp!490410 tp!490412))))

(declare-fun b!1717126 () Bool)

(declare-fun res!770058 () Bool)

(assert (=> b!1717126 (=> (not res!770058) (not e!1098123))))

(assert (=> b!1717126 (= res!770058 (= (rule!5259 token!523) rule!422))))

(assert (=> b!1717127 (= e!1098130 (and tp!490408 tp!490409))))

(assert (= (and start!168126 res!770046) b!1717114))

(assert (= (and b!1717114 res!770060) b!1717103))

(assert (= (and b!1717103 res!770062) b!1717124))

(assert (= (and b!1717124 res!770056) b!1717110))

(assert (= (and b!1717110 res!770055) b!1717123))

(assert (= (and b!1717123 res!770053) b!1717101))

(assert (= (and b!1717101 res!770047) b!1717126))

(assert (= (and b!1717126 res!770058) b!1717119))

(assert (= (and b!1717119 (not res!770049)) b!1717106))

(assert (= (and b!1717106 (not res!770051)) b!1717118))

(assert (= (and b!1717118 (not res!770061)) b!1717115))

(assert (= (and b!1717115 res!770048) b!1717117))

(assert (= (and b!1717117 res!770044) b!1717122))

(assert (= (and b!1717115 (not res!770052)) b!1717109))

(assert (= (and b!1717109 (not res!770054)) b!1717113))

(assert (= (and b!1717113 (not res!770059)) b!1717100))

(assert (= (and b!1717100 (not res!770057)) b!1717108))

(assert (= (and b!1717108 (not res!770045)) b!1717116))

(assert (= (and b!1717116 (not res!770050)) b!1717121))

(assert (= (and start!168126 ((_ is Cons!18765) suffix!1421)) b!1717107))

(assert (= b!1717105 b!1717125))

(assert (= start!168126 b!1717105))

(assert (= b!1717104 b!1717102))

(assert (= b!1717120 b!1717104))

(assert (= start!168126 b!1717120))

(assert (= b!1717111 b!1717127))

(assert (= b!1717112 b!1717111))

(assert (= (and start!168126 ((_ is Cons!18766) rules!3447)) b!1717112))

(declare-fun b_lambda!54303 () Bool)

(assert (=> (not b_lambda!54303) (not b!1717100)))

(declare-fun t!158916 () Bool)

(declare-fun tb!101517 () Bool)

(assert (=> (and b!1717127 (= (toChars!4685 (transformation!3319 (h!24167 rules!3447))) (toChars!4685 (transformation!3319 (rule!5259 (_1!10637 lt!656182))))) t!158916) tb!101517))

(declare-fun e!1098148 () Bool)

(declare-fun b!1717143 () Bool)

(declare-fun tp!490415 () Bool)

(declare-fun inv!24214 (Conc!6241) Bool)

(assert (=> b!1717143 (= e!1098148 (and (inv!24214 (c!281205 (dynLambda!8579 (toChars!4685 (transformation!3319 (rule!5259 (_1!10637 lt!656182)))) (dynLambda!8580 (toValue!4826 (transformation!3319 (rule!5259 (_1!10637 lt!656182)))) lt!656180)))) tp!490415))))

(declare-fun result!122000 () Bool)

(declare-fun inv!24215 (BalanceConc!12426) Bool)

(assert (=> tb!101517 (= result!122000 (and (inv!24215 (dynLambda!8579 (toChars!4685 (transformation!3319 (rule!5259 (_1!10637 lt!656182)))) (dynLambda!8580 (toValue!4826 (transformation!3319 (rule!5259 (_1!10637 lt!656182)))) lt!656180))) e!1098148))))

(assert (= tb!101517 b!1717143))

(declare-fun m!2121695 () Bool)

(assert (=> b!1717143 m!2121695))

(declare-fun m!2121697 () Bool)

(assert (=> tb!101517 m!2121697))

(assert (=> b!1717100 t!158916))

(declare-fun b_and!124823 () Bool)

(assert (= b_and!124813 (and (=> t!158916 result!122000) b_and!124823)))

(declare-fun t!158918 () Bool)

(declare-fun tb!101519 () Bool)

(assert (=> (and b!1717125 (= (toChars!4685 (transformation!3319 rule!422)) (toChars!4685 (transformation!3319 (rule!5259 (_1!10637 lt!656182))))) t!158918) tb!101519))

(declare-fun result!122004 () Bool)

(assert (= result!122004 result!122000))

(assert (=> b!1717100 t!158918))

(declare-fun b_and!124825 () Bool)

(assert (= b_and!124817 (and (=> t!158918 result!122004) b_and!124825)))

(declare-fun tb!101521 () Bool)

(declare-fun t!158920 () Bool)

(assert (=> (and b!1717102 (= (toChars!4685 (transformation!3319 (rule!5259 token!523))) (toChars!4685 (transformation!3319 (rule!5259 (_1!10637 lt!656182))))) t!158920) tb!101521))

(declare-fun result!122006 () Bool)

(assert (= result!122006 result!122000))

(assert (=> b!1717100 t!158920))

(declare-fun b_and!124827 () Bool)

(assert (= b_and!124821 (and (=> t!158920 result!122006) b_and!124827)))

(declare-fun b_lambda!54305 () Bool)

(assert (=> (not b_lambda!54305) (not b!1717100)))

(declare-fun t!158922 () Bool)

(declare-fun tb!101523 () Bool)

(assert (=> (and b!1717127 (= (toValue!4826 (transformation!3319 (h!24167 rules!3447))) (toValue!4826 (transformation!3319 (rule!5259 (_1!10637 lt!656182))))) t!158922) tb!101523))

(declare-fun result!122008 () Bool)

(assert (=> tb!101523 (= result!122008 (inv!21 (dynLambda!8580 (toValue!4826 (transformation!3319 (rule!5259 (_1!10637 lt!656182)))) lt!656180)))))

(declare-fun m!2121699 () Bool)

(assert (=> tb!101523 m!2121699))

(assert (=> b!1717100 t!158922))

(declare-fun b_and!124829 () Bool)

(assert (= b_and!124811 (and (=> t!158922 result!122008) b_and!124829)))

(declare-fun tb!101525 () Bool)

(declare-fun t!158924 () Bool)

(assert (=> (and b!1717125 (= (toValue!4826 (transformation!3319 rule!422)) (toValue!4826 (transformation!3319 (rule!5259 (_1!10637 lt!656182))))) t!158924) tb!101525))

(declare-fun result!122012 () Bool)

(assert (= result!122012 result!122008))

(assert (=> b!1717100 t!158924))

(declare-fun b_and!124831 () Bool)

(assert (= b_and!124815 (and (=> t!158924 result!122012) b_and!124831)))

(declare-fun tb!101527 () Bool)

(declare-fun t!158926 () Bool)

(assert (=> (and b!1717102 (= (toValue!4826 (transformation!3319 (rule!5259 token!523))) (toValue!4826 (transformation!3319 (rule!5259 (_1!10637 lt!656182))))) t!158926) tb!101527))

(declare-fun result!122014 () Bool)

(assert (= result!122014 result!122008))

(assert (=> b!1717100 t!158926))

(declare-fun b_and!124833 () Bool)

(assert (= b_and!124819 (and (=> t!158926 result!122014) b_and!124833)))

(declare-fun b_lambda!54307 () Bool)

(assert (=> (not b_lambda!54307) (not b!1717108)))

(declare-fun t!158928 () Bool)

(declare-fun tb!101529 () Bool)

(assert (=> (and b!1717127 (= (toChars!4685 (transformation!3319 (h!24167 rules!3447))) (toChars!4685 (transformation!3319 (rule!5259 (_1!10637 lt!656182))))) t!158928) tb!101529))

(declare-fun b!1717146 () Bool)

(declare-fun e!1098152 () Bool)

(declare-fun tp!490416 () Bool)

(assert (=> b!1717146 (= e!1098152 (and (inv!24214 (c!281205 (dynLambda!8579 (toChars!4685 (transformation!3319 (rule!5259 (_1!10637 lt!656182)))) (value!104264 (_1!10637 lt!656182))))) tp!490416))))

(declare-fun result!122016 () Bool)

(assert (=> tb!101529 (= result!122016 (and (inv!24215 (dynLambda!8579 (toChars!4685 (transformation!3319 (rule!5259 (_1!10637 lt!656182)))) (value!104264 (_1!10637 lt!656182)))) e!1098152))))

(assert (= tb!101529 b!1717146))

(declare-fun m!2121701 () Bool)

(assert (=> b!1717146 m!2121701))

(declare-fun m!2121703 () Bool)

(assert (=> tb!101529 m!2121703))

(assert (=> b!1717108 t!158928))

(declare-fun b_and!124835 () Bool)

(assert (= b_and!124823 (and (=> t!158928 result!122016) b_and!124835)))

(declare-fun tb!101531 () Bool)

(declare-fun t!158930 () Bool)

(assert (=> (and b!1717125 (= (toChars!4685 (transformation!3319 rule!422)) (toChars!4685 (transformation!3319 (rule!5259 (_1!10637 lt!656182))))) t!158930) tb!101531))

(declare-fun result!122018 () Bool)

(assert (= result!122018 result!122016))

(assert (=> b!1717108 t!158930))

(declare-fun b_and!124837 () Bool)

(assert (= b_and!124825 (and (=> t!158930 result!122018) b_and!124837)))

(declare-fun t!158932 () Bool)

(declare-fun tb!101533 () Bool)

(assert (=> (and b!1717102 (= (toChars!4685 (transformation!3319 (rule!5259 token!523))) (toChars!4685 (transformation!3319 (rule!5259 (_1!10637 lt!656182))))) t!158932) tb!101533))

(declare-fun result!122020 () Bool)

(assert (= result!122020 result!122016))

(assert (=> b!1717108 t!158932))

(declare-fun b_and!124839 () Bool)

(assert (= b_and!124827 (and (=> t!158932 result!122020) b_and!124839)))

(declare-fun m!2121705 () Bool)

(assert (=> b!1717101 m!2121705))

(declare-fun m!2121707 () Bool)

(assert (=> b!1717103 m!2121707))

(declare-fun m!2121709 () Bool)

(assert (=> b!1717106 m!2121709))

(declare-fun m!2121711 () Bool)

(assert (=> b!1717120 m!2121711))

(declare-fun m!2121713 () Bool)

(assert (=> b!1717124 m!2121713))

(declare-fun m!2121715 () Bool)

(assert (=> b!1717115 m!2121715))

(declare-fun m!2121717 () Bool)

(assert (=> b!1717115 m!2121717))

(declare-fun m!2121719 () Bool)

(assert (=> b!1717115 m!2121719))

(declare-fun m!2121721 () Bool)

(assert (=> b!1717115 m!2121721))

(declare-fun m!2121723 () Bool)

(assert (=> b!1717115 m!2121723))

(declare-fun m!2121725 () Bool)

(assert (=> b!1717115 m!2121725))

(declare-fun m!2121727 () Bool)

(assert (=> b!1717115 m!2121727))

(declare-fun m!2121729 () Bool)

(assert (=> b!1717115 m!2121729))

(declare-fun m!2121731 () Bool)

(assert (=> b!1717115 m!2121731))

(declare-fun m!2121733 () Bool)

(assert (=> b!1717115 m!2121733))

(declare-fun m!2121735 () Bool)

(assert (=> b!1717115 m!2121735))

(declare-fun m!2121737 () Bool)

(assert (=> b!1717115 m!2121737))

(declare-fun m!2121739 () Bool)

(assert (=> b!1717115 m!2121739))

(assert (=> b!1717115 m!2121729))

(declare-fun m!2121741 () Bool)

(assert (=> b!1717115 m!2121741))

(declare-fun m!2121743 () Bool)

(assert (=> b!1717115 m!2121743))

(declare-fun m!2121745 () Bool)

(assert (=> start!168126 m!2121745))

(declare-fun m!2121747 () Bool)

(assert (=> b!1717109 m!2121747))

(declare-fun m!2121749 () Bool)

(assert (=> b!1717111 m!2121749))

(declare-fun m!2121751 () Bool)

(assert (=> b!1717111 m!2121751))

(declare-fun m!2121753 () Bool)

(assert (=> b!1717108 m!2121753))

(declare-fun m!2121755 () Bool)

(assert (=> b!1717121 m!2121755))

(declare-fun m!2121757 () Bool)

(assert (=> b!1717121 m!2121757))

(declare-fun m!2121759 () Bool)

(assert (=> b!1717121 m!2121759))

(declare-fun m!2121761 () Bool)

(assert (=> b!1717121 m!2121761))

(declare-fun m!2121763 () Bool)

(assert (=> b!1717121 m!2121763))

(assert (=> b!1717121 m!2121757))

(declare-fun m!2121765 () Bool)

(assert (=> b!1717121 m!2121765))

(declare-fun m!2121767 () Bool)

(assert (=> b!1717110 m!2121767))

(declare-fun m!2121769 () Bool)

(assert (=> b!1717110 m!2121769))

(declare-fun m!2121771 () Bool)

(assert (=> b!1717110 m!2121771))

(assert (=> b!1717110 m!2121771))

(declare-fun m!2121773 () Bool)

(assert (=> b!1717110 m!2121773))

(declare-fun m!2121775 () Bool)

(assert (=> b!1717116 m!2121775))

(declare-fun m!2121777 () Bool)

(assert (=> b!1717116 m!2121777))

(declare-fun m!2121779 () Bool)

(assert (=> b!1717116 m!2121779))

(declare-fun m!2121781 () Bool)

(assert (=> b!1717116 m!2121781))

(assert (=> b!1717116 m!2121777))

(declare-fun m!2121783 () Bool)

(assert (=> b!1717116 m!2121783))

(declare-fun m!2121785 () Bool)

(assert (=> b!1717105 m!2121785))

(declare-fun m!2121787 () Bool)

(assert (=> b!1717105 m!2121787))

(declare-fun m!2121789 () Bool)

(assert (=> b!1717119 m!2121789))

(declare-fun m!2121791 () Bool)

(assert (=> b!1717119 m!2121791))

(declare-fun m!2121793 () Bool)

(assert (=> b!1717119 m!2121793))

(declare-fun m!2121795 () Bool)

(assert (=> b!1717104 m!2121795))

(declare-fun m!2121797 () Bool)

(assert (=> b!1717104 m!2121797))

(declare-fun m!2121799 () Bool)

(assert (=> b!1717114 m!2121799))

(declare-fun m!2121801 () Bool)

(assert (=> b!1717118 m!2121801))

(declare-fun m!2121803 () Bool)

(assert (=> b!1717118 m!2121803))

(declare-fun m!2121805 () Bool)

(assert (=> b!1717118 m!2121805))

(assert (=> b!1717118 m!2121801))

(assert (=> b!1717118 m!2121805))

(declare-fun m!2121807 () Bool)

(assert (=> b!1717118 m!2121807))

(declare-fun m!2121809 () Bool)

(assert (=> b!1717123 m!2121809))

(declare-fun m!2121811 () Bool)

(assert (=> b!1717113 m!2121811))

(declare-fun m!2121813 () Bool)

(assert (=> b!1717113 m!2121813))

(assert (=> b!1717117 m!2121741))

(assert (=> b!1717117 m!2121741))

(declare-fun m!2121815 () Bool)

(assert (=> b!1717117 m!2121815))

(assert (=> b!1717117 m!2121815))

(declare-fun m!2121817 () Bool)

(assert (=> b!1717117 m!2121817))

(declare-fun m!2121819 () Bool)

(assert (=> b!1717117 m!2121819))

(declare-fun m!2121821 () Bool)

(assert (=> b!1717100 m!2121821))

(assert (=> b!1717100 m!2121821))

(declare-fun m!2121823 () Bool)

(assert (=> b!1717100 m!2121823))

(assert (=> b!1717100 m!2121823))

(declare-fun m!2121825 () Bool)

(assert (=> b!1717100 m!2121825))

(declare-fun m!2121827 () Bool)

(assert (=> b!1717100 m!2121827))

(check-sat (not b!1717113) b_and!124837 (not b!1717106) (not b!1717118) b_and!124833 (not b_next!47373) (not b!1717107) (not b!1717119) b_and!124839 (not b!1717104) b_and!124829 (not b!1717121) b_and!124835 (not b!1717143) (not b!1717116) (not b!1717105) tp_is_empty!7537 (not b_next!47375) (not b!1717120) (not tb!101517) (not b!1717109) (not b!1717112) (not b_next!47379) (not b!1717111) (not b_lambda!54305) (not b!1717103) (not b_next!47377) (not b!1717123) (not b!1717115) (not b!1717101) (not b_lambda!54307) (not tb!101523) (not b!1717117) (not b!1717110) (not tb!101529) (not start!168126) (not b_next!47381) (not b!1717114) (not b_lambda!54303) (not b_next!47371) (not b!1717100) (not b!1717124) (not b!1717146) b_and!124831)
(check-sat b_and!124837 (not b_next!47379) (not b_next!47377) b_and!124833 (not b_next!47373) (not b_next!47381) (not b_next!47371) b_and!124839 b_and!124829 b_and!124831 b_and!124835 (not b_next!47375))
