; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26942 () Bool)

(assert start!26942)

(declare-fun b!253165 () Bool)

(declare-fun b_free!9385 () Bool)

(declare-fun b_next!9385 () Bool)

(assert (=> b!253165 (= b_free!9385 (not b_next!9385))))

(declare-fun tp!97540 () Bool)

(declare-fun b_and!19229 () Bool)

(assert (=> b!253165 (= tp!97540 b_and!19229)))

(declare-fun b_free!9387 () Bool)

(declare-fun b_next!9387 () Bool)

(assert (=> b!253165 (= b_free!9387 (not b_next!9387))))

(declare-fun tp!97542 () Bool)

(declare-fun b_and!19231 () Bool)

(assert (=> b!253165 (= tp!97542 b_and!19231)))

(declare-fun b!253185 () Bool)

(declare-fun b_free!9389 () Bool)

(declare-fun b_next!9389 () Bool)

(assert (=> b!253185 (= b_free!9389 (not b_next!9389))))

(declare-fun tp!97547 () Bool)

(declare-fun b_and!19233 () Bool)

(assert (=> b!253185 (= tp!97547 b_and!19233)))

(declare-fun b_free!9391 () Bool)

(declare-fun b_next!9391 () Bool)

(assert (=> b!253185 (= b_free!9391 (not b_next!9391))))

(declare-fun tp!97546 () Bool)

(declare-fun b_and!19235 () Bool)

(assert (=> b!253185 (= tp!97546 b_and!19235)))

(declare-fun b!253178 () Bool)

(declare-fun b_free!9393 () Bool)

(declare-fun b_next!9393 () Bool)

(assert (=> b!253178 (= b_free!9393 (not b_next!9393))))

(declare-fun tp!97548 () Bool)

(declare-fun b_and!19237 () Bool)

(assert (=> b!253178 (= tp!97548 b_and!19237)))

(declare-fun b_free!9395 () Bool)

(declare-fun b_next!9395 () Bool)

(assert (=> b!253178 (= b_free!9395 (not b_next!9395))))

(declare-fun tp!97543 () Bool)

(declare-fun b_and!19239 () Bool)

(assert (=> b!253178 (= tp!97543 b_and!19239)))

(declare-fun bs!27408 () Bool)

(declare-fun b!253155 () Bool)

(declare-fun b!253179 () Bool)

(assert (= bs!27408 (and b!253155 b!253179)))

(declare-fun lambda!8414 () Int)

(declare-fun lambda!8413 () Int)

(assert (=> bs!27408 (not (= lambda!8414 lambda!8413))))

(declare-fun b!253196 () Bool)

(declare-fun e!157283 () Bool)

(assert (=> b!253196 (= e!157283 true)))

(declare-fun b!253195 () Bool)

(declare-fun e!157282 () Bool)

(assert (=> b!253195 (= e!157282 e!157283)))

(declare-fun b!253194 () Bool)

(declare-fun e!157281 () Bool)

(assert (=> b!253194 (= e!157281 e!157282)))

(assert (=> b!253155 e!157281))

(assert (= b!253195 b!253196))

(assert (= b!253194 b!253195))

(declare-datatypes ((List!3697 0))(
  ( (Nil!3687) (Cons!3687 (h!9084 (_ BitVec 16)) (t!35867 List!3697)) )
))
(declare-datatypes ((TokenValue!723 0))(
  ( (FloatLiteralValue!1446 (text!5506 List!3697)) (TokenValueExt!722 (__x!2933 Int)) (Broken!3615 (value!24268 List!3697)) (Object!732) (End!723) (Def!723) (Underscore!723) (Match!723) (Else!723) (Error!723) (Case!723) (If!723) (Extends!723) (Abstract!723) (Class!723) (Val!723) (DelimiterValue!1446 (del!783 List!3697)) (KeywordValue!729 (value!24269 List!3697)) (CommentValue!1446 (value!24270 List!3697)) (WhitespaceValue!1446 (value!24271 List!3697)) (IndentationValue!723 (value!24272 List!3697)) (String!4694) (Int32!723) (Broken!3616 (value!24273 List!3697)) (Boolean!724) (Unit!4537) (OperatorValue!726 (op!783 List!3697)) (IdentifierValue!1446 (value!24274 List!3697)) (IdentifierValue!1447 (value!24275 List!3697)) (WhitespaceValue!1447 (value!24276 List!3697)) (True!1446) (False!1446) (Broken!3617 (value!24277 List!3697)) (Broken!3618 (value!24278 List!3697)) (True!1447) (RightBrace!723) (RightBracket!723) (Colon!723) (Null!723) (Comma!723) (LeftBracket!723) (False!1447) (LeftBrace!723) (ImaginaryLiteralValue!723 (text!5507 List!3697)) (StringLiteralValue!2169 (value!24279 List!3697)) (EOFValue!723 (value!24280 List!3697)) (IdentValue!723 (value!24281 List!3697)) (DelimiterValue!1447 (value!24282 List!3697)) (DedentValue!723 (value!24283 List!3697)) (NewLineValue!723 (value!24284 List!3697)) (IntegerValue!2169 (value!24285 (_ BitVec 32)) (text!5508 List!3697)) (IntegerValue!2170 (value!24286 Int) (text!5509 List!3697)) (Times!723) (Or!723) (Equal!723) (Minus!723) (Broken!3619 (value!24287 List!3697)) (And!723) (Div!723) (LessEqual!723) (Mod!723) (Concat!1648) (Not!723) (Plus!723) (SpaceValue!723 (value!24288 List!3697)) (IntegerValue!2171 (value!24289 Int) (text!5510 List!3697)) (StringLiteralValue!2170 (text!5511 List!3697)) (FloatLiteralValue!1447 (text!5512 List!3697)) (BytesLiteralValue!723 (value!24290 List!3697)) (CommentValue!1447 (value!24291 List!3697)) (StringLiteralValue!2171 (value!24292 List!3697)) (ErrorTokenValue!723 (msg!784 List!3697)) )
))
(declare-datatypes ((C!2772 0))(
  ( (C!2773 (val!1272 Int)) )
))
(declare-datatypes ((List!3698 0))(
  ( (Nil!3688) (Cons!3688 (h!9085 C!2772) (t!35868 List!3698)) )
))
(declare-datatypes ((IArray!2449 0))(
  ( (IArray!2450 (innerList!1282 List!3698)) )
))
(declare-datatypes ((Conc!1224 0))(
  ( (Node!1224 (left!3033 Conc!1224) (right!3363 Conc!1224) (csize!2678 Int) (cheight!1435 Int)) (Leaf!1914 (xs!3819 IArray!2449) (csize!2679 Int)) (Empty!1224) )
))
(declare-datatypes ((BalanceConc!2456 0))(
  ( (BalanceConc!2457 (c!48145 Conc!1224)) )
))
(declare-datatypes ((TokenValueInjection!1218 0))(
  ( (TokenValueInjection!1219 (toValue!1408 Int) (toChars!1267 Int)) )
))
(declare-datatypes ((String!4695 0))(
  ( (String!4696 (value!24293 String)) )
))
(declare-datatypes ((Regex!925 0))(
  ( (ElementMatch!925 (c!48146 C!2772)) (Concat!1649 (regOne!2362 Regex!925) (regTwo!2362 Regex!925)) (EmptyExpr!925) (Star!925 (reg!1254 Regex!925)) (EmptyLang!925) (Union!925 (regOne!2363 Regex!925) (regTwo!2363 Regex!925)) )
))
(declare-datatypes ((Rule!1202 0))(
  ( (Rule!1203 (regex!701 Regex!925) (tag!909 String!4695) (isSeparator!701 Bool) (transformation!701 TokenValueInjection!1218)) )
))
(declare-datatypes ((List!3699 0))(
  ( (Nil!3689) (Cons!3689 (h!9086 Rule!1202) (t!35869 List!3699)) )
))
(declare-fun rules!1920 () List!3699)

(get-info :version)

(assert (= (and b!253155 ((_ is Cons!3689) rules!1920)) b!253194))

(declare-fun order!2755 () Int)

(declare-fun order!2753 () Int)

(declare-fun dynLambda!1823 (Int Int) Int)

(declare-fun dynLambda!1824 (Int Int) Int)

(assert (=> b!253196 (< (dynLambda!1823 order!2753 (toValue!1408 (transformation!701 (h!9086 rules!1920)))) (dynLambda!1824 order!2755 lambda!8414))))

(declare-fun order!2757 () Int)

(declare-fun dynLambda!1825 (Int Int) Int)

(assert (=> b!253196 (< (dynLambda!1825 order!2757 (toChars!1267 (transformation!701 (h!9086 rules!1920)))) (dynLambda!1824 order!2755 lambda!8414))))

(assert (=> b!253155 true))

(declare-fun b!253149 () Bool)

(declare-fun res!117281 () Bool)

(declare-fun e!157260 () Bool)

(assert (=> b!253149 (=> (not res!117281) (not e!157260))))

(declare-fun lt!103723 () List!3698)

(declare-fun lt!103722 () List!3698)

(declare-fun list!1472 (BalanceConc!2456) List!3698)

(declare-fun seqFromList!779 (List!3698) BalanceConc!2456)

(assert (=> b!253149 (= res!117281 (= (list!1472 (seqFromList!779 lt!103723)) lt!103722))))

(declare-fun b!253150 () Bool)

(declare-fun res!117274 () Bool)

(declare-fun e!157271 () Bool)

(assert (=> b!253150 (=> res!117274 e!157271)))

(declare-fun lt!103721 () List!3698)

(declare-datatypes ((LexerInterface!587 0))(
  ( (LexerInterfaceExt!584 (__x!2934 Int)) (Lexer!585) )
))
(declare-fun thiss!17480 () LexerInterface!587)

(declare-datatypes ((Token!1146 0))(
  ( (Token!1147 (value!24294 TokenValue!723) (rule!1282 Rule!1202) (size!2924 Int) (originalCharacters!744 List!3698)) )
))
(declare-datatypes ((List!3700 0))(
  ( (Nil!3690) (Cons!3690 (h!9087 Token!1146) (t!35870 List!3700)) )
))
(declare-datatypes ((IArray!2451 0))(
  ( (IArray!2452 (innerList!1283 List!3700)) )
))
(declare-datatypes ((Conc!1225 0))(
  ( (Node!1225 (left!3034 Conc!1225) (right!3364 Conc!1225) (csize!2680 Int) (cheight!1436 Int)) (Leaf!1915 (xs!3820 IArray!2451) (csize!2681 Int)) (Empty!1225) )
))
(declare-datatypes ((BalanceConc!2458 0))(
  ( (BalanceConc!2459 (c!48147 Conc!1225)) )
))
(declare-fun isEmpty!2295 (BalanceConc!2458) Bool)

(declare-datatypes ((tuple2!4138 0))(
  ( (tuple2!4139 (_1!2285 BalanceConc!2458) (_2!2285 BalanceConc!2456)) )
))
(declare-fun lex!387 (LexerInterface!587 List!3699 BalanceConc!2456) tuple2!4138)

(assert (=> b!253150 (= res!117274 (isEmpty!2295 (_1!2285 (lex!387 thiss!17480 rules!1920 (seqFromList!779 lt!103721)))))))

(declare-fun b!253151 () Bool)

(declare-fun res!117265 () Bool)

(declare-fun e!157270 () Bool)

(assert (=> b!253151 (=> (not res!117265) (not e!157270))))

(declare-fun separatorToken!170 () Token!1146)

(assert (=> b!253151 (= res!117265 (isSeparator!701 (rule!1282 separatorToken!170)))))

(declare-fun b!253152 () Bool)

(declare-fun res!117286 () Bool)

(assert (=> b!253152 (=> res!117286 e!157271)))

(declare-fun tokens!465 () List!3700)

(declare-fun rulesProduceIndividualToken!336 (LexerInterface!587 List!3699 Token!1146) Bool)

(assert (=> b!253152 (= res!117286 (not (rulesProduceIndividualToken!336 thiss!17480 rules!1920 (h!9087 tokens!465))))))

(declare-fun b!253153 () Bool)

(declare-fun e!157255 () Bool)

(declare-datatypes ((tuple2!4140 0))(
  ( (tuple2!4141 (_1!2286 Token!1146) (_2!2286 List!3698)) )
))
(declare-datatypes ((Option!766 0))(
  ( (None!765) (Some!765 (v!14576 tuple2!4140)) )
))
(declare-fun lt!103736 () Option!766)

(declare-fun get!1216 (Option!766) tuple2!4140)

(declare-fun head!868 (List!3700) Token!1146)

(assert (=> b!253153 (= e!157255 (= (_1!2286 (get!1216 lt!103736)) (head!868 tokens!465)))))

(declare-fun b!253154 () Bool)

(declare-fun lt!103743 () List!3698)

(declare-fun e!157273 () Bool)

(declare-fun ++!950 (List!3698 List!3698) List!3698)

(assert (=> b!253154 (= e!157273 (not (= lt!103723 (++!950 lt!103721 lt!103743))))))

(declare-fun e!157263 () Bool)

(assert (=> b!253155 (= e!157271 e!157263)))

(declare-fun res!117285 () Bool)

(assert (=> b!253155 (=> res!117285 e!157263)))

(declare-datatypes ((tuple2!4142 0))(
  ( (tuple2!4143 (_1!2287 Token!1146) (_2!2287 BalanceConc!2456)) )
))
(declare-datatypes ((Option!767 0))(
  ( (None!766) (Some!766 (v!14577 tuple2!4142)) )
))
(declare-fun isDefined!617 (Option!767) Bool)

(declare-fun maxPrefixZipperSequence!280 (LexerInterface!587 List!3699 BalanceConc!2456) Option!767)

(assert (=> b!253155 (= res!117285 (not (isDefined!617 (maxPrefixZipperSequence!280 thiss!17480 rules!1920 (seqFromList!779 (originalCharacters!744 (h!9087 tokens!465)))))))))

(declare-datatypes ((Unit!4538 0))(
  ( (Unit!4539) )
))
(declare-fun lt!103725 () Unit!4538)

(declare-fun forallContained!268 (List!3700 Int Token!1146) Unit!4538)

(assert (=> b!253155 (= lt!103725 (forallContained!268 tokens!465 lambda!8414 (h!9087 tokens!465)))))

(assert (=> b!253155 (= lt!103721 (originalCharacters!744 (h!9087 tokens!465)))))

(declare-fun b!253156 () Bool)

(declare-fun e!157257 () Bool)

(declare-fun e!157256 () Bool)

(assert (=> b!253156 (= e!157257 e!157256)))

(declare-fun res!117268 () Bool)

(assert (=> b!253156 (=> res!117268 e!157256)))

(assert (=> b!253156 (= res!117268 e!157273)))

(declare-fun res!117287 () Bool)

(assert (=> b!253156 (=> (not res!117287) (not e!157273))))

(declare-fun lt!103739 () Bool)

(assert (=> b!253156 (= res!117287 (not lt!103739))))

(declare-fun lt!103735 () List!3698)

(assert (=> b!253156 (= lt!103739 (= lt!103723 lt!103735))))

(declare-fun b!253157 () Bool)

(assert (=> b!253157 (= e!157256 e!157271)))

(declare-fun res!117276 () Bool)

(assert (=> b!253157 (=> res!117276 e!157271)))

(declare-fun lt!103741 () List!3698)

(declare-fun lt!103745 () List!3698)

(assert (=> b!253157 (= res!117276 (or (not (= lt!103741 lt!103745)) (not (= lt!103745 lt!103721)) (not (= lt!103741 lt!103721))))))

(declare-fun printList!271 (LexerInterface!587 List!3700) List!3698)

(assert (=> b!253157 (= lt!103745 (printList!271 thiss!17480 (Cons!3690 (h!9087 tokens!465) Nil!3690)))))

(declare-fun lt!103728 () BalanceConc!2456)

(assert (=> b!253157 (= lt!103741 (list!1472 lt!103728))))

(declare-fun lt!103726 () BalanceConc!2458)

(declare-fun printTailRec!281 (LexerInterface!587 BalanceConc!2458 Int BalanceConc!2456) BalanceConc!2456)

(assert (=> b!253157 (= lt!103728 (printTailRec!281 thiss!17480 lt!103726 0 (BalanceConc!2457 Empty!1224)))))

(declare-fun print!318 (LexerInterface!587 BalanceConc!2458) BalanceConc!2456)

(assert (=> b!253157 (= lt!103728 (print!318 thiss!17480 lt!103726))))

(declare-fun singletonSeq!253 (Token!1146) BalanceConc!2458)

(assert (=> b!253157 (= lt!103726 (singletonSeq!253 (h!9087 tokens!465)))))

(declare-fun b!253158 () Bool)

(declare-fun e!157252 () Bool)

(assert (=> b!253158 (= e!157263 e!157252)))

(declare-fun res!117263 () Bool)

(assert (=> b!253158 (=> res!117263 e!157252)))

(assert (=> b!253158 (= res!117263 lt!103739)))

(declare-fun e!157272 () Bool)

(assert (=> b!253158 e!157272))

(declare-fun res!117275 () Bool)

(assert (=> b!253158 (=> (not res!117275) (not e!157272))))

(declare-fun lt!103740 () tuple2!4140)

(assert (=> b!253158 (= res!117275 (= (_1!2286 lt!103740) (h!9087 tokens!465)))))

(declare-fun lt!103734 () Option!766)

(assert (=> b!253158 (= lt!103740 (get!1216 lt!103734))))

(declare-fun isDefined!618 (Option!766) Bool)

(assert (=> b!253158 (isDefined!618 lt!103734)))

(declare-fun maxPrefix!317 (LexerInterface!587 List!3699 List!3698) Option!766)

(assert (=> b!253158 (= lt!103734 (maxPrefix!317 thiss!17480 rules!1920 lt!103721))))

(declare-fun e!157251 () Bool)

(declare-fun tp!97539 () Bool)

(declare-fun b!253159 () Bool)

(declare-fun e!157265 () Bool)

(declare-fun inv!21 (TokenValue!723) Bool)

(assert (=> b!253159 (= e!157251 (and (inv!21 (value!24294 (h!9087 tokens!465))) e!157265 tp!97539))))

(declare-fun e!157274 () Bool)

(declare-fun tp!97550 () Bool)

(declare-fun b!253160 () Bool)

(declare-fun e!157246 () Bool)

(declare-fun inv!4544 (String!4695) Bool)

(declare-fun inv!4547 (TokenValueInjection!1218) Bool)

(assert (=> b!253160 (= e!157274 (and tp!97550 (inv!4544 (tag!909 (h!9086 rules!1920))) (inv!4547 (transformation!701 (h!9086 rules!1920))) e!157246))))

(declare-fun b!253161 () Bool)

(declare-fun res!117283 () Bool)

(declare-fun e!157250 () Bool)

(assert (=> b!253161 (=> res!117283 e!157250)))

(declare-fun lt!103746 () tuple2!4140)

(assert (=> b!253161 (= res!117283 (not (= (++!950 lt!103721 (_2!2286 lt!103746)) lt!103723)))))

(declare-fun b!253162 () Bool)

(declare-fun e!157264 () Bool)

(declare-fun tp!97544 () Bool)

(assert (=> b!253162 (= e!157264 (and e!157274 tp!97544))))

(declare-fun b!253163 () Bool)

(declare-fun res!117278 () Bool)

(assert (=> b!253163 (=> (not res!117278) (not e!157272))))

(declare-fun isEmpty!2296 (List!3698) Bool)

(assert (=> b!253163 (= res!117278 (isEmpty!2296 (_2!2286 lt!103740)))))

(declare-fun b!253164 () Bool)

(declare-fun res!117267 () Bool)

(declare-fun e!157253 () Bool)

(assert (=> b!253164 (=> (not res!117267) (not e!157253))))

(declare-fun rulesInvariant!553 (LexerInterface!587 List!3699) Bool)

(assert (=> b!253164 (= res!117267 (rulesInvariant!553 thiss!17480 rules!1920))))

(assert (=> b!253165 (= e!157246 (and tp!97540 tp!97542))))

(declare-fun b!253166 () Bool)

(assert (=> b!253166 (= e!157270 e!157260)))

(declare-fun res!117266 () Bool)

(assert (=> b!253166 (=> (not res!117266) (not e!157260))))

(assert (=> b!253166 (= res!117266 (= lt!103723 lt!103722))))

(declare-fun lt!103733 () BalanceConc!2458)

(declare-fun printWithSeparatorTokenWhenNeededRec!270 (LexerInterface!587 List!3699 BalanceConc!2458 Token!1146 Int) BalanceConc!2456)

(assert (=> b!253166 (= lt!103722 (list!1472 (printWithSeparatorTokenWhenNeededRec!270 thiss!17480 rules!1920 lt!103733 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!280 (LexerInterface!587 List!3699 List!3700 Token!1146) List!3698)

(assert (=> b!253166 (= lt!103723 (printWithSeparatorTokenWhenNeededList!280 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun res!117279 () Bool)

(assert (=> start!26942 (=> (not res!117279) (not e!157253))))

(assert (=> start!26942 (= res!117279 ((_ is Lexer!585) thiss!17480))))

(assert (=> start!26942 e!157253))

(assert (=> start!26942 true))

(assert (=> start!26942 e!157264))

(declare-fun e!157262 () Bool)

(declare-fun inv!4548 (Token!1146) Bool)

(assert (=> start!26942 (and (inv!4548 separatorToken!170) e!157262)))

(declare-fun e!157266 () Bool)

(assert (=> start!26942 e!157266))

(declare-fun e!157259 () Bool)

(declare-fun b!253167 () Bool)

(declare-fun e!157249 () Bool)

(declare-fun tp!97549 () Bool)

(assert (=> b!253167 (= e!157259 (and tp!97549 (inv!4544 (tag!909 (rule!1282 separatorToken!170))) (inv!4547 (transformation!701 (rule!1282 separatorToken!170))) e!157249))))

(declare-fun b!253168 () Bool)

(assert (=> b!253168 (= e!157252 e!157250)))

(declare-fun res!117273 () Bool)

(assert (=> b!253168 (=> res!117273 e!157250)))

(declare-fun isPrefix!385 (List!3698 List!3698) Bool)

(assert (=> b!253168 (= res!117273 (not (isPrefix!385 lt!103721 lt!103723)))))

(assert (=> b!253168 (= lt!103746 (get!1216 (maxPrefix!317 thiss!17480 rules!1920 lt!103723)))))

(declare-fun lt!103729 () List!3698)

(assert (=> b!253168 (isPrefix!385 lt!103721 lt!103729)))

(assert (=> b!253168 (= lt!103729 (++!950 lt!103721 lt!103743))))

(declare-fun lt!103724 () Unit!4538)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!280 (List!3698 List!3698) Unit!4538)

(assert (=> b!253168 (= lt!103724 (lemmaConcatTwoListThenFirstIsPrefix!280 lt!103721 lt!103743))))

(declare-fun lt!103744 () BalanceConc!2456)

(declare-fun filter!83 (List!3700 Int) List!3700)

(declare-fun list!1473 (BalanceConc!2458) List!3700)

(assert (=> b!253168 (= (filter!83 (list!1473 (_1!2285 (lex!387 thiss!17480 rules!1920 lt!103744))) lambda!8413) (t!35870 tokens!465))))

(declare-fun lt!103737 () Unit!4538)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!74 (LexerInterface!587 List!3699 List!3700 Token!1146) Unit!4538)

(assert (=> b!253168 (= lt!103737 (theoremInvertabilityFromTokensSepTokenWhenNeeded!74 thiss!17480 rules!1920 (t!35870 tokens!465) separatorToken!170))))

(declare-fun e!157247 () Bool)

(assert (=> b!253168 e!157247))

(declare-fun res!117282 () Bool)

(assert (=> b!253168 (=> res!117282 e!157247)))

(declare-fun isEmpty!2297 (List!3700) Bool)

(assert (=> b!253168 (= res!117282 (isEmpty!2297 tokens!465))))

(declare-fun lt!103730 () Unit!4538)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!156 (LexerInterface!587 List!3699 List!3700 Token!1146) Unit!4538)

(assert (=> b!253168 (= lt!103730 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!156 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!253169 () Bool)

(declare-fun res!117272 () Bool)

(assert (=> b!253169 (=> (not res!117272) (not e!157253))))

(declare-fun isEmpty!2298 (List!3699) Bool)

(assert (=> b!253169 (= res!117272 (not (isEmpty!2298 rules!1920)))))

(declare-fun b!253170 () Bool)

(declare-fun e!157267 () Bool)

(declare-fun tp!97551 () Bool)

(assert (=> b!253170 (= e!157265 (and tp!97551 (inv!4544 (tag!909 (rule!1282 (h!9087 tokens!465)))) (inv!4547 (transformation!701 (rule!1282 (h!9087 tokens!465)))) e!157267))))

(declare-fun b!253171 () Bool)

(declare-fun res!117270 () Bool)

(assert (=> b!253171 (=> (not res!117270) (not e!157270))))

(declare-fun sepAndNonSepRulesDisjointChars!290 (List!3699 List!3699) Bool)

(assert (=> b!253171 (= res!117270 (sepAndNonSepRulesDisjointChars!290 rules!1920 rules!1920))))

(declare-fun b!253172 () Bool)

(declare-fun e!157258 () Bool)

(assert (=> b!253172 (= e!157258 true)))

(declare-fun lt!103720 () Bool)

(declare-fun forall!874 (BalanceConc!2458 Int) Bool)

(assert (=> b!253172 (= lt!103720 (forall!874 lt!103733 lambda!8413))))

(declare-fun b!253173 () Bool)

(assert (=> b!253173 (= e!157250 e!157258)))

(declare-fun res!117262 () Bool)

(assert (=> b!253173 (=> res!117262 e!157258)))

(declare-fun size!2925 (BalanceConc!2458) Int)

(assert (=> b!253173 (= res!117262 (> 0 (size!2925 lt!103733)))))

(assert (=> b!253173 (= lt!103743 (_2!2286 lt!103746))))

(declare-fun lt!103727 () Unit!4538)

(declare-fun lemmaSamePrefixThenSameSuffix!200 (List!3698 List!3698 List!3698 List!3698 List!3698) Unit!4538)

(assert (=> b!253173 (= lt!103727 (lemmaSamePrefixThenSameSuffix!200 lt!103721 lt!103743 lt!103721 (_2!2286 lt!103746) lt!103723))))

(declare-fun tp!97541 () Bool)

(declare-fun b!253174 () Bool)

(assert (=> b!253174 (= e!157262 (and (inv!21 (value!24294 separatorToken!170)) e!157259 tp!97541))))

(declare-fun b!253175 () Bool)

(assert (=> b!253175 (= e!157260 (not e!157257))))

(declare-fun res!117277 () Bool)

(assert (=> b!253175 (=> res!117277 e!157257)))

(assert (=> b!253175 (= res!117277 (not (= lt!103743 (list!1472 lt!103744))))))

(declare-fun seqFromList!780 (List!3700) BalanceConc!2458)

(assert (=> b!253175 (= lt!103744 (printWithSeparatorTokenWhenNeededRec!270 thiss!17480 rules!1920 (seqFromList!780 (t!35870 tokens!465)) separatorToken!170 0))))

(declare-fun lt!103742 () List!3698)

(assert (=> b!253175 (= lt!103742 lt!103735)))

(declare-fun lt!103738 () List!3698)

(assert (=> b!253175 (= lt!103735 (++!950 lt!103721 lt!103738))))

(declare-fun lt!103732 () List!3698)

(assert (=> b!253175 (= lt!103742 (++!950 (++!950 lt!103721 lt!103732) lt!103743))))

(declare-fun lt!103731 () Unit!4538)

(declare-fun lemmaConcatAssociativity!408 (List!3698 List!3698 List!3698) Unit!4538)

(assert (=> b!253175 (= lt!103731 (lemmaConcatAssociativity!408 lt!103721 lt!103732 lt!103743))))

(declare-fun charsOf!356 (Token!1146) BalanceConc!2456)

(assert (=> b!253175 (= lt!103721 (list!1472 (charsOf!356 (h!9087 tokens!465))))))

(assert (=> b!253175 (= lt!103738 (++!950 lt!103732 lt!103743))))

(assert (=> b!253175 (= lt!103743 (printWithSeparatorTokenWhenNeededList!280 thiss!17480 rules!1920 (t!35870 tokens!465) separatorToken!170))))

(assert (=> b!253175 (= lt!103732 (list!1472 (charsOf!356 separatorToken!170)))))

(declare-fun tp!97545 () Bool)

(declare-fun b!253176 () Bool)

(assert (=> b!253176 (= e!157266 (and (inv!4548 (h!9087 tokens!465)) e!157251 tp!97545))))

(declare-fun b!253177 () Bool)

(declare-fun res!117271 () Bool)

(assert (=> b!253177 (=> res!117271 e!157250)))

(assert (=> b!253177 (= res!117271 (not (= lt!103729 lt!103723)))))

(assert (=> b!253178 (= e!157249 (and tp!97548 tp!97543))))

(declare-fun res!117288 () Bool)

(assert (=> b!253179 (=> (not res!117288) (not e!157270))))

(declare-fun forall!875 (List!3700 Int) Bool)

(assert (=> b!253179 (= res!117288 (forall!875 tokens!465 lambda!8413))))

(declare-fun b!253180 () Bool)

(declare-fun res!117284 () Bool)

(assert (=> b!253180 (=> (not res!117284) (not e!157270))))

(assert (=> b!253180 (= res!117284 (rulesProduceIndividualToken!336 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!253181 () Bool)

(declare-fun matchR!263 (Regex!925 List!3698) Bool)

(assert (=> b!253181 (= e!157272 (matchR!263 (regex!701 (rule!1282 (h!9087 tokens!465))) lt!103721))))

(declare-fun b!253182 () Bool)

(assert (=> b!253182 (= e!157253 e!157270)))

(declare-fun res!117280 () Bool)

(assert (=> b!253182 (=> (not res!117280) (not e!157270))))

(declare-fun rulesProduceEachTokenIndividually!379 (LexerInterface!587 List!3699 BalanceConc!2458) Bool)

(assert (=> b!253182 (= res!117280 (rulesProduceEachTokenIndividually!379 thiss!17480 rules!1920 lt!103733))))

(assert (=> b!253182 (= lt!103733 (seqFromList!780 tokens!465))))

(declare-fun b!253183 () Bool)

(declare-fun res!117264 () Bool)

(assert (=> b!253183 (=> (not res!117264) (not e!157270))))

(assert (=> b!253183 (= res!117264 ((_ is Cons!3690) tokens!465))))

(declare-fun b!253184 () Bool)

(assert (=> b!253184 (= e!157247 e!157255)))

(declare-fun res!117269 () Bool)

(assert (=> b!253184 (=> (not res!117269) (not e!157255))))

(assert (=> b!253184 (= res!117269 (isDefined!618 lt!103736))))

(assert (=> b!253184 (= lt!103736 (maxPrefix!317 thiss!17480 rules!1920 lt!103723))))

(assert (=> b!253185 (= e!157267 (and tp!97547 tp!97546))))

(assert (= (and start!26942 res!117279) b!253169))

(assert (= (and b!253169 res!117272) b!253164))

(assert (= (and b!253164 res!117267) b!253182))

(assert (= (and b!253182 res!117280) b!253180))

(assert (= (and b!253180 res!117284) b!253151))

(assert (= (and b!253151 res!117265) b!253179))

(assert (= (and b!253179 res!117288) b!253171))

(assert (= (and b!253171 res!117270) b!253183))

(assert (= (and b!253183 res!117264) b!253166))

(assert (= (and b!253166 res!117266) b!253149))

(assert (= (and b!253149 res!117281) b!253175))

(assert (= (and b!253175 (not res!117277)) b!253156))

(assert (= (and b!253156 res!117287) b!253154))

(assert (= (and b!253156 (not res!117268)) b!253157))

(assert (= (and b!253157 (not res!117276)) b!253152))

(assert (= (and b!253152 (not res!117286)) b!253150))

(assert (= (and b!253150 (not res!117274)) b!253155))

(assert (= (and b!253155 (not res!117285)) b!253158))

(assert (= (and b!253158 res!117275) b!253163))

(assert (= (and b!253163 res!117278) b!253181))

(assert (= (and b!253158 (not res!117263)) b!253168))

(assert (= (and b!253168 (not res!117282)) b!253184))

(assert (= (and b!253184 res!117269) b!253153))

(assert (= (and b!253168 (not res!117273)) b!253177))

(assert (= (and b!253177 (not res!117271)) b!253161))

(assert (= (and b!253161 (not res!117283)) b!253173))

(assert (= (and b!253173 (not res!117262)) b!253172))

(assert (= b!253160 b!253165))

(assert (= b!253162 b!253160))

(assert (= (and start!26942 ((_ is Cons!3689) rules!1920)) b!253162))

(assert (= b!253167 b!253178))

(assert (= b!253174 b!253167))

(assert (= start!26942 b!253174))

(assert (= b!253170 b!253185))

(assert (= b!253159 b!253170))

(assert (= b!253176 b!253159))

(assert (= (and start!26942 ((_ is Cons!3690) tokens!465)) b!253176))

(declare-fun m!312667 () Bool)

(assert (=> b!253152 m!312667))

(declare-fun m!312669 () Bool)

(assert (=> b!253155 m!312669))

(assert (=> b!253155 m!312669))

(declare-fun m!312671 () Bool)

(assert (=> b!253155 m!312671))

(assert (=> b!253155 m!312671))

(declare-fun m!312673 () Bool)

(assert (=> b!253155 m!312673))

(declare-fun m!312675 () Bool)

(assert (=> b!253155 m!312675))

(declare-fun m!312677 () Bool)

(assert (=> b!253173 m!312677))

(declare-fun m!312679 () Bool)

(assert (=> b!253173 m!312679))

(declare-fun m!312681 () Bool)

(assert (=> b!253164 m!312681))

(declare-fun m!312683 () Bool)

(assert (=> b!253174 m!312683))

(declare-fun m!312685 () Bool)

(assert (=> b!253180 m!312685))

(declare-fun m!312687 () Bool)

(assert (=> b!253157 m!312687))

(declare-fun m!312689 () Bool)

(assert (=> b!253157 m!312689))

(declare-fun m!312691 () Bool)

(assert (=> b!253157 m!312691))

(declare-fun m!312693 () Bool)

(assert (=> b!253157 m!312693))

(declare-fun m!312695 () Bool)

(assert (=> b!253157 m!312695))

(declare-fun m!312697 () Bool)

(assert (=> b!253170 m!312697))

(declare-fun m!312699 () Bool)

(assert (=> b!253170 m!312699))

(declare-fun m!312701 () Bool)

(assert (=> b!253163 m!312701))

(declare-fun m!312703 () Bool)

(assert (=> b!253171 m!312703))

(declare-fun m!312705 () Bool)

(assert (=> b!253172 m!312705))

(declare-fun m!312707 () Bool)

(assert (=> b!253160 m!312707))

(declare-fun m!312709 () Bool)

(assert (=> b!253160 m!312709))

(declare-fun m!312711 () Bool)

(assert (=> b!253154 m!312711))

(declare-fun m!312713 () Bool)

(assert (=> b!253158 m!312713))

(declare-fun m!312715 () Bool)

(assert (=> b!253158 m!312715))

(declare-fun m!312717 () Bool)

(assert (=> b!253158 m!312717))

(declare-fun m!312719 () Bool)

(assert (=> b!253184 m!312719))

(declare-fun m!312721 () Bool)

(assert (=> b!253184 m!312721))

(declare-fun m!312723 () Bool)

(assert (=> b!253167 m!312723))

(declare-fun m!312725 () Bool)

(assert (=> b!253167 m!312725))

(declare-fun m!312727 () Bool)

(assert (=> b!253149 m!312727))

(assert (=> b!253149 m!312727))

(declare-fun m!312729 () Bool)

(assert (=> b!253149 m!312729))

(declare-fun m!312731 () Bool)

(assert (=> b!253168 m!312731))

(declare-fun m!312733 () Bool)

(assert (=> b!253168 m!312733))

(declare-fun m!312735 () Bool)

(assert (=> b!253168 m!312735))

(assert (=> b!253168 m!312721))

(declare-fun m!312737 () Bool)

(assert (=> b!253168 m!312737))

(assert (=> b!253168 m!312711))

(declare-fun m!312739 () Bool)

(assert (=> b!253168 m!312739))

(declare-fun m!312741 () Bool)

(assert (=> b!253168 m!312741))

(declare-fun m!312743 () Bool)

(assert (=> b!253168 m!312743))

(declare-fun m!312745 () Bool)

(assert (=> b!253168 m!312745))

(declare-fun m!312747 () Bool)

(assert (=> b!253168 m!312747))

(assert (=> b!253168 m!312733))

(declare-fun m!312749 () Bool)

(assert (=> b!253168 m!312749))

(assert (=> b!253168 m!312721))

(declare-fun m!312751 () Bool)

(assert (=> b!253176 m!312751))

(declare-fun m!312753 () Bool)

(assert (=> b!253179 m!312753))

(declare-fun m!312755 () Bool)

(assert (=> b!253159 m!312755))

(declare-fun m!312757 () Bool)

(assert (=> start!26942 m!312757))

(declare-fun m!312759 () Bool)

(assert (=> b!253169 m!312759))

(declare-fun m!312761 () Bool)

(assert (=> b!253153 m!312761))

(declare-fun m!312763 () Bool)

(assert (=> b!253153 m!312763))

(declare-fun m!312765 () Bool)

(assert (=> b!253166 m!312765))

(assert (=> b!253166 m!312765))

(declare-fun m!312767 () Bool)

(assert (=> b!253166 m!312767))

(declare-fun m!312769 () Bool)

(assert (=> b!253166 m!312769))

(declare-fun m!312771 () Bool)

(assert (=> b!253175 m!312771))

(declare-fun m!312773 () Bool)

(assert (=> b!253175 m!312773))

(declare-fun m!312775 () Bool)

(assert (=> b!253175 m!312775))

(declare-fun m!312777 () Bool)

(assert (=> b!253175 m!312777))

(declare-fun m!312779 () Bool)

(assert (=> b!253175 m!312779))

(declare-fun m!312781 () Bool)

(assert (=> b!253175 m!312781))

(assert (=> b!253175 m!312779))

(assert (=> b!253175 m!312777))

(declare-fun m!312783 () Bool)

(assert (=> b!253175 m!312783))

(declare-fun m!312785 () Bool)

(assert (=> b!253175 m!312785))

(declare-fun m!312787 () Bool)

(assert (=> b!253175 m!312787))

(declare-fun m!312789 () Bool)

(assert (=> b!253175 m!312789))

(assert (=> b!253175 m!312773))

(declare-fun m!312791 () Bool)

(assert (=> b!253175 m!312791))

(declare-fun m!312793 () Bool)

(assert (=> b!253175 m!312793))

(declare-fun m!312795 () Bool)

(assert (=> b!253175 m!312795))

(assert (=> b!253175 m!312787))

(declare-fun m!312797 () Bool)

(assert (=> b!253181 m!312797))

(declare-fun m!312799 () Bool)

(assert (=> b!253161 m!312799))

(declare-fun m!312801 () Bool)

(assert (=> b!253150 m!312801))

(assert (=> b!253150 m!312801))

(declare-fun m!312803 () Bool)

(assert (=> b!253150 m!312803))

(declare-fun m!312805 () Bool)

(assert (=> b!253150 m!312805))

(declare-fun m!312807 () Bool)

(assert (=> b!253182 m!312807))

(declare-fun m!312809 () Bool)

(assert (=> b!253182 m!312809))

(check-sat (not b!253159) b_and!19239 (not b!253179) (not b!253163) b_and!19233 (not b_next!9387) (not b!253155) (not b!253182) (not b!253161) b_and!19235 (not b_next!9393) (not b!253167) (not b!253184) (not b!253158) (not b!253162) (not b_next!9391) (not b!253181) (not b!253176) (not b!253153) (not b!253166) (not b!253194) (not b!253160) (not b!253169) b_and!19237 (not start!26942) (not b!253154) (not b!253168) (not b!253180) (not b!253175) (not b!253150) b_and!19231 (not b!253149) (not b!253172) (not b!253152) (not b!253171) (not b_next!9385) (not b_next!9389) (not b!253173) (not b!253170) (not b!253174) b_and!19229 (not b!253157) (not b_next!9395) (not b!253164))
(check-sat (not b_next!9391) b_and!19239 b_and!19237 b_and!19233 b_and!19231 (not b_next!9387) b_and!19235 (not b_next!9393) b_and!19229 (not b_next!9395) (not b_next!9385) (not b_next!9389))
