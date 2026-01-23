; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!169762 () Bool)

(assert start!169762)

(declare-fun b!1728435 () Bool)

(declare-fun b_free!47243 () Bool)

(declare-fun b_next!47947 () Bool)

(assert (=> b!1728435 (= b_free!47243 (not b_next!47947))))

(declare-fun tp!493058 () Bool)

(declare-fun b_and!127115 () Bool)

(assert (=> b!1728435 (= tp!493058 b_and!127115)))

(declare-fun b_free!47245 () Bool)

(declare-fun b_next!47949 () Bool)

(assert (=> b!1728435 (= b_free!47245 (not b_next!47949))))

(declare-fun tp!493055 () Bool)

(declare-fun b_and!127117 () Bool)

(assert (=> b!1728435 (= tp!493055 b_and!127117)))

(declare-fun b!1728460 () Bool)

(declare-fun b_free!47247 () Bool)

(declare-fun b_next!47951 () Bool)

(assert (=> b!1728460 (= b_free!47247 (not b_next!47951))))

(declare-fun tp!493064 () Bool)

(declare-fun b_and!127119 () Bool)

(assert (=> b!1728460 (= tp!493064 b_and!127119)))

(declare-fun b_free!47249 () Bool)

(declare-fun b_next!47953 () Bool)

(assert (=> b!1728460 (= b_free!47249 (not b_next!47953))))

(declare-fun tp!493059 () Bool)

(declare-fun b_and!127121 () Bool)

(assert (=> b!1728460 (= tp!493059 b_and!127121)))

(declare-fun b!1728452 () Bool)

(declare-fun b_free!47251 () Bool)

(declare-fun b_next!47955 () Bool)

(assert (=> b!1728452 (= b_free!47251 (not b_next!47955))))

(declare-fun tp!493062 () Bool)

(declare-fun b_and!127123 () Bool)

(assert (=> b!1728452 (= tp!493062 b_and!127123)))

(declare-fun b_free!47253 () Bool)

(declare-fun b_next!47957 () Bool)

(assert (=> b!1728452 (= b_free!47253 (not b_next!47957))))

(declare-fun tp!493057 () Bool)

(declare-fun b_and!127125 () Bool)

(assert (=> b!1728452 (= tp!493057 b_and!127125)))

(declare-fun b!1728474 () Bool)

(declare-fun e!1105777 () Bool)

(assert (=> b!1728474 (= e!1105777 true)))

(declare-fun b!1728473 () Bool)

(declare-fun e!1105776 () Bool)

(assert (=> b!1728473 (= e!1105776 e!1105777)))

(declare-fun b!1728472 () Bool)

(declare-fun e!1105775 () Bool)

(assert (=> b!1728472 (= e!1105775 e!1105776)))

(declare-fun b!1728449 () Bool)

(assert (=> b!1728449 e!1105775))

(assert (= b!1728473 b!1728474))

(assert (= b!1728472 b!1728473))

(assert (= b!1728449 b!1728472))

(declare-datatypes ((List!19014 0))(
  ( (Nil!18944) (Cons!18944 (h!24345 (_ BitVec 16)) (t!160409 List!19014)) )
))
(declare-datatypes ((TokenValue!3451 0))(
  ( (FloatLiteralValue!6902 (text!24602 List!19014)) (TokenValueExt!3450 (__x!12204 Int)) (Broken!17255 (value!105435 List!19014)) (Object!3520) (End!3451) (Def!3451) (Underscore!3451) (Match!3451) (Else!3451) (Error!3451) (Case!3451) (If!3451) (Extends!3451) (Abstract!3451) (Class!3451) (Val!3451) (DelimiterValue!6902 (del!3511 List!19014)) (KeywordValue!3457 (value!105436 List!19014)) (CommentValue!6902 (value!105437 List!19014)) (WhitespaceValue!6902 (value!105438 List!19014)) (IndentationValue!3451 (value!105439 List!19014)) (String!21586) (Int32!3451) (Broken!17256 (value!105440 List!19014)) (Boolean!3452) (Unit!32796) (OperatorValue!3454 (op!3511 List!19014)) (IdentifierValue!6902 (value!105441 List!19014)) (IdentifierValue!6903 (value!105442 List!19014)) (WhitespaceValue!6903 (value!105443 List!19014)) (True!6902) (False!6902) (Broken!17257 (value!105444 List!19014)) (Broken!17258 (value!105445 List!19014)) (True!6903) (RightBrace!3451) (RightBracket!3451) (Colon!3451) (Null!3451) (Comma!3451) (LeftBracket!3451) (False!6903) (LeftBrace!3451) (ImaginaryLiteralValue!3451 (text!24603 List!19014)) (StringLiteralValue!10353 (value!105446 List!19014)) (EOFValue!3451 (value!105447 List!19014)) (IdentValue!3451 (value!105448 List!19014)) (DelimiterValue!6903 (value!105449 List!19014)) (DedentValue!3451 (value!105450 List!19014)) (NewLineValue!3451 (value!105451 List!19014)) (IntegerValue!10353 (value!105452 (_ BitVec 32)) (text!24604 List!19014)) (IntegerValue!10354 (value!105453 Int) (text!24605 List!19014)) (Times!3451) (Or!3451) (Equal!3451) (Minus!3451) (Broken!17259 (value!105454 List!19014)) (And!3451) (Div!3451) (LessEqual!3451) (Mod!3451) (Concat!8140) (Not!3451) (Plus!3451) (SpaceValue!3451 (value!105455 List!19014)) (IntegerValue!10355 (value!105456 Int) (text!24606 List!19014)) (StringLiteralValue!10354 (text!24607 List!19014)) (FloatLiteralValue!6903 (text!24608 List!19014)) (BytesLiteralValue!3451 (value!105457 List!19014)) (CommentValue!6903 (value!105458 List!19014)) (StringLiteralValue!10355 (value!105459 List!19014)) (ErrorTokenValue!3451 (msg!3512 List!19014)) )
))
(declare-datatypes ((C!9552 0))(
  ( (C!9553 (val!5372 Int)) )
))
(declare-datatypes ((Regex!4689 0))(
  ( (ElementMatch!4689 (c!282490 C!9552)) (Concat!8141 (regOne!9890 Regex!4689) (regTwo!9890 Regex!4689)) (EmptyExpr!4689) (Star!4689 (reg!5018 Regex!4689)) (EmptyLang!4689) (Union!4689 (regOne!9891 Regex!4689) (regTwo!9891 Regex!4689)) )
))
(declare-datatypes ((String!21587 0))(
  ( (String!21588 (value!105460 String)) )
))
(declare-datatypes ((List!19015 0))(
  ( (Nil!18945) (Cons!18945 (h!24346 C!9552) (t!160410 List!19015)) )
))
(declare-datatypes ((IArray!12607 0))(
  ( (IArray!12608 (innerList!6361 List!19015)) )
))
(declare-datatypes ((Conc!6301 0))(
  ( (Node!6301 (left!15127 Conc!6301) (right!15457 Conc!6301) (csize!12832 Int) (cheight!6512 Int)) (Leaf!9202 (xs!9177 IArray!12607) (csize!12833 Int)) (Empty!6301) )
))
(declare-datatypes ((BalanceConc!12546 0))(
  ( (BalanceConc!12547 (c!282491 Conc!6301)) )
))
(declare-datatypes ((TokenValueInjection!6562 0))(
  ( (TokenValueInjection!6563 (toValue!4868 Int) (toChars!4727 Int)) )
))
(declare-datatypes ((Rule!6522 0))(
  ( (Rule!6523 (regex!3361 Regex!4689) (tag!3683 String!21587) (isSeparator!3361 Bool) (transformation!3361 TokenValueInjection!6562)) )
))
(declare-datatypes ((Token!6288 0))(
  ( (Token!6289 (value!105461 TokenValue!3451) (rule!5331 Rule!6522) (size!15052 Int) (originalCharacters!4175 List!19015)) )
))
(declare-datatypes ((tuple2!18626 0))(
  ( (tuple2!18627 (_1!10715 Token!6288) (_2!10715 List!19015)) )
))
(declare-fun lt!662532 () tuple2!18626)

(declare-fun lambda!69308 () Int)

(declare-fun order!11643 () Int)

(declare-fun order!11645 () Int)

(declare-fun dynLambda!8804 (Int Int) Int)

(declare-fun dynLambda!8805 (Int Int) Int)

(assert (=> b!1728474 (< (dynLambda!8804 order!11643 (toValue!4868 (transformation!3361 (rule!5331 (_1!10715 lt!662532))))) (dynLambda!8805 order!11645 lambda!69308))))

(declare-fun order!11647 () Int)

(declare-fun dynLambda!8806 (Int Int) Int)

(assert (=> b!1728474 (< (dynLambda!8806 order!11647 (toChars!4727 (transformation!3361 (rule!5331 (_1!10715 lt!662532))))) (dynLambda!8805 order!11645 lambda!69308))))

(declare-fun b!1728433 () Bool)

(declare-fun e!1105754 () Bool)

(declare-fun e!1105742 () Bool)

(assert (=> b!1728433 (= e!1105754 e!1105742)))

(declare-fun res!776055 () Bool)

(assert (=> b!1728433 (=> (not res!776055) (not e!1105742))))

(declare-fun lt!662527 () Rule!6522)

(declare-fun matchR!2163 (Regex!4689 List!19015) Bool)

(declare-fun list!7658 (BalanceConc!12546) List!19015)

(declare-fun charsOf!2010 (Token!6288) BalanceConc!12546)

(assert (=> b!1728433 (= res!776055 (matchR!2163 (regex!3361 lt!662527) (list!7658 (charsOf!2010 (_1!10715 lt!662532)))))))

(declare-datatypes ((Option!3746 0))(
  ( (None!3745) (Some!3745 (v!25160 Rule!6522)) )
))
(declare-fun lt!662547 () Option!3746)

(declare-fun get!5644 (Option!3746) Rule!6522)

(assert (=> b!1728433 (= lt!662527 (get!5644 lt!662547))))

(declare-fun e!1105758 () Bool)

(assert (=> b!1728435 (= e!1105758 (and tp!493058 tp!493055))))

(declare-fun b!1728436 () Bool)

(declare-fun e!1105743 () Bool)

(declare-fun e!1105747 () Bool)

(assert (=> b!1728436 (= e!1105743 e!1105747)))

(declare-fun res!776052 () Bool)

(assert (=> b!1728436 (=> res!776052 e!1105747)))

(declare-datatypes ((Option!3747 0))(
  ( (None!3746) (Some!3746 (v!25161 tuple2!18626)) )
))
(declare-fun lt!662542 () Option!3747)

(declare-fun lt!662526 () List!19015)

(assert (=> b!1728436 (= res!776052 (or (not (= lt!662526 (_2!10715 lt!662532))) (not (= lt!662542 (Some!3746 (tuple2!18627 (_1!10715 lt!662532) lt!662526))))))))

(assert (=> b!1728436 (= (_2!10715 lt!662532) lt!662526)))

(declare-fun lt!662537 () List!19015)

(declare-datatypes ((Unit!32797 0))(
  ( (Unit!32798) )
))
(declare-fun lt!662539 () Unit!32797)

(declare-fun lt!662560 () List!19015)

(declare-fun lemmaSamePrefixThenSameSuffix!746 (List!19015 List!19015 List!19015 List!19015 List!19015) Unit!32797)

(assert (=> b!1728436 (= lt!662539 (lemmaSamePrefixThenSameSuffix!746 lt!662537 (_2!10715 lt!662532) lt!662537 lt!662526 lt!662560))))

(declare-fun getSuffix!796 (List!19015 List!19015) List!19015)

(assert (=> b!1728436 (= lt!662526 (getSuffix!796 lt!662560 lt!662537))))

(declare-fun lt!662555 () TokenValue!3451)

(declare-fun lt!662556 () Int)

(assert (=> b!1728436 (= lt!662542 (Some!3746 (tuple2!18627 (Token!6289 lt!662555 (rule!5331 (_1!10715 lt!662532)) lt!662556 lt!662537) (_2!10715 lt!662532))))))

(declare-datatypes ((LexerInterface!2990 0))(
  ( (LexerInterfaceExt!2987 (__x!12205 Int)) (Lexer!2988) )
))
(declare-fun thiss!24550 () LexerInterface!2990)

(declare-fun maxPrefixOneRule!920 (LexerInterface!2990 Rule!6522 List!19015) Option!3747)

(assert (=> b!1728436 (= lt!662542 (maxPrefixOneRule!920 thiss!24550 (rule!5331 (_1!10715 lt!662532)) lt!662560))))

(declare-fun size!15053 (List!19015) Int)

(assert (=> b!1728436 (= lt!662556 (size!15053 lt!662537))))

(declare-fun apply!5166 (TokenValueInjection!6562 BalanceConc!12546) TokenValue!3451)

(declare-fun seqFromList!2335 (List!19015) BalanceConc!12546)

(assert (=> b!1728436 (= lt!662555 (apply!5166 (transformation!3361 (rule!5331 (_1!10715 lt!662532))) (seqFromList!2335 lt!662537)))))

(declare-fun lt!662529 () Unit!32797)

(declare-datatypes ((List!19016 0))(
  ( (Nil!18946) (Cons!18946 (h!24347 Rule!6522) (t!160411 List!19016)) )
))
(declare-fun rules!3447 () List!19016)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!319 (LexerInterface!2990 List!19016 List!19015 List!19015 List!19015 Rule!6522) Unit!32797)

(assert (=> b!1728436 (= lt!662529 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!319 thiss!24550 rules!3447 lt!662537 lt!662560 (_2!10715 lt!662532) (rule!5331 (_1!10715 lt!662532))))))

(declare-fun b!1728437 () Bool)

(declare-fun e!1105765 () Bool)

(declare-fun e!1105768 () Bool)

(assert (=> b!1728437 (= e!1105765 e!1105768)))

(declare-fun res!776053 () Bool)

(assert (=> b!1728437 (=> res!776053 e!1105768)))

(declare-fun isPrefix!1602 (List!19015 List!19015) Bool)

(assert (=> b!1728437 (= res!776053 (not (isPrefix!1602 lt!662537 lt!662560)))))

(declare-fun ++!5186 (List!19015 List!19015) List!19015)

(assert (=> b!1728437 (isPrefix!1602 lt!662537 (++!5186 lt!662537 (_2!10715 lt!662532)))))

(declare-fun lt!662551 () Unit!32797)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1112 (List!19015 List!19015) Unit!32797)

(assert (=> b!1728437 (= lt!662551 (lemmaConcatTwoListThenFirstIsPrefix!1112 lt!662537 (_2!10715 lt!662532)))))

(declare-fun lt!662552 () BalanceConc!12546)

(assert (=> b!1728437 (= lt!662537 (list!7658 lt!662552))))

(assert (=> b!1728437 (= lt!662552 (charsOf!2010 (_1!10715 lt!662532)))))

(assert (=> b!1728437 e!1105754))

(declare-fun res!776047 () Bool)

(assert (=> b!1728437 (=> (not res!776047) (not e!1105754))))

(declare-fun isDefined!3089 (Option!3746) Bool)

(assert (=> b!1728437 (= res!776047 (isDefined!3089 lt!662547))))

(declare-fun getRuleFromTag!411 (LexerInterface!2990 List!19016 String!21587) Option!3746)

(assert (=> b!1728437 (= lt!662547 (getRuleFromTag!411 thiss!24550 rules!3447 (tag!3683 (rule!5331 (_1!10715 lt!662532)))))))

(declare-fun lt!662535 () Unit!32797)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!411 (LexerInterface!2990 List!19016 List!19015 Token!6288) Unit!32797)

(assert (=> b!1728437 (= lt!662535 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!411 thiss!24550 rules!3447 lt!662560 (_1!10715 lt!662532)))))

(declare-fun lt!662548 () Option!3747)

(declare-fun get!5645 (Option!3747) tuple2!18626)

(assert (=> b!1728437 (= lt!662532 (get!5645 lt!662548))))

(declare-fun suffix!1421 () List!19015)

(declare-fun lt!662528 () List!19015)

(declare-fun lt!662541 () Unit!32797)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!514 (LexerInterface!2990 List!19016 List!19015 List!19015) Unit!32797)

(assert (=> b!1728437 (= lt!662541 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!514 thiss!24550 rules!3447 lt!662528 suffix!1421))))

(declare-fun maxPrefix!1544 (LexerInterface!2990 List!19016 List!19015) Option!3747)

(assert (=> b!1728437 (= lt!662548 (maxPrefix!1544 thiss!24550 rules!3447 lt!662560))))

(assert (=> b!1728437 (isPrefix!1602 lt!662528 lt!662560)))

(declare-fun lt!662549 () Unit!32797)

(assert (=> b!1728437 (= lt!662549 (lemmaConcatTwoListThenFirstIsPrefix!1112 lt!662528 suffix!1421))))

(assert (=> b!1728437 (= lt!662560 (++!5186 lt!662528 suffix!1421))))

(declare-fun b!1728438 () Bool)

(declare-fun e!1105760 () Bool)

(assert (=> b!1728438 (= e!1105760 e!1105743)))

(declare-fun res!776042 () Bool)

(assert (=> b!1728438 (=> res!776042 e!1105743)))

(declare-fun lt!662559 () TokenValue!3451)

(declare-fun lt!662553 () Int)

(assert (=> b!1728438 (= res!776042 (not (= lt!662548 (Some!3746 (tuple2!18627 (Token!6289 lt!662559 (rule!5331 (_1!10715 lt!662532)) lt!662553 lt!662537) (_2!10715 lt!662532))))))))

(declare-fun size!15054 (BalanceConc!12546) Int)

(assert (=> b!1728438 (= lt!662553 (size!15054 lt!662552))))

(assert (=> b!1728438 (= lt!662559 (apply!5166 (transformation!3361 (rule!5331 (_1!10715 lt!662532))) lt!662552))))

(declare-fun lt!662550 () Unit!32797)

(declare-fun lemmaCharactersSize!433 (Token!6288) Unit!32797)

(assert (=> b!1728438 (= lt!662550 (lemmaCharactersSize!433 (_1!10715 lt!662532)))))

(declare-fun lt!662540 () Unit!32797)

(declare-fun lemmaEqSameImage!286 (TokenValueInjection!6562 BalanceConc!12546 BalanceConc!12546) Unit!32797)

(assert (=> b!1728438 (= lt!662540 (lemmaEqSameImage!286 (transformation!3361 (rule!5331 (_1!10715 lt!662532))) lt!662552 (seqFromList!2335 (originalCharacters!4175 (_1!10715 lt!662532)))))))

(declare-fun b!1728439 () Bool)

(declare-fun res!776050 () Bool)

(declare-fun e!1105767 () Bool)

(assert (=> b!1728439 (=> res!776050 e!1105767)))

(declare-fun isEmpty!11917 (List!19015) Bool)

(assert (=> b!1728439 (= res!776050 (isEmpty!11917 suffix!1421))))

(declare-fun b!1728440 () Bool)

(declare-fun e!1105756 () Bool)

(assert (=> b!1728440 (= e!1105756 (not e!1105767))))

(declare-fun res!776048 () Bool)

(assert (=> b!1728440 (=> res!776048 e!1105767)))

(declare-fun rule!422 () Rule!6522)

(assert (=> b!1728440 (= res!776048 (not (matchR!2163 (regex!3361 rule!422) lt!662528)))))

(declare-fun ruleValid!860 (LexerInterface!2990 Rule!6522) Bool)

(assert (=> b!1728440 (ruleValid!860 thiss!24550 rule!422)))

(declare-fun lt!662531 () Unit!32797)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!384 (LexerInterface!2990 Rule!6522 List!19016) Unit!32797)

(assert (=> b!1728440 (= lt!662531 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!384 thiss!24550 rule!422 rules!3447))))

(declare-fun tp!493056 () Bool)

(declare-fun e!1105764 () Bool)

(declare-fun b!1728441 () Bool)

(declare-fun inv!24490 (String!21587) Bool)

(declare-fun inv!24495 (TokenValueInjection!6562) Bool)

(assert (=> b!1728441 (= e!1105764 (and tp!493056 (inv!24490 (tag!3683 rule!422)) (inv!24495 (transformation!3361 rule!422)) e!1105758))))

(declare-fun b!1728442 () Bool)

(declare-fun res!776046 () Bool)

(assert (=> b!1728442 (=> (not res!776046) (not e!1105756))))

(declare-fun lt!662538 () tuple2!18626)

(assert (=> b!1728442 (= res!776046 (isEmpty!11917 (_2!10715 lt!662538)))))

(declare-fun b!1728443 () Bool)

(assert (=> b!1728443 (= e!1105767 e!1105765)))

(declare-fun res!776038 () Bool)

(assert (=> b!1728443 (=> res!776038 e!1105765)))

(declare-fun lt!662546 () Regex!4689)

(declare-fun prefixMatch!574 (Regex!4689 List!19015) Bool)

(declare-fun head!3926 (List!19015) C!9552)

(assert (=> b!1728443 (= res!776038 (prefixMatch!574 lt!662546 (++!5186 lt!662528 (Cons!18945 (head!3926 suffix!1421) Nil!18945))))))

(declare-fun rulesRegex!719 (LexerInterface!2990 List!19016) Regex!4689)

(assert (=> b!1728443 (= lt!662546 (rulesRegex!719 thiss!24550 rules!3447))))

(declare-fun b!1728444 () Bool)

(declare-fun e!1105763 () Bool)

(declare-fun e!1105753 () Bool)

(assert (=> b!1728444 (= e!1105763 e!1105753)))

(declare-fun res!776049 () Bool)

(assert (=> b!1728444 (=> (not res!776049) (not e!1105753))))

(declare-fun lt!662533 () Option!3747)

(declare-fun isDefined!3090 (Option!3747) Bool)

(assert (=> b!1728444 (= res!776049 (isDefined!3090 lt!662533))))

(assert (=> b!1728444 (= lt!662533 (maxPrefix!1544 thiss!24550 rules!3447 lt!662528))))

(declare-fun lt!662544 () BalanceConc!12546)

(assert (=> b!1728444 (= lt!662528 (list!7658 lt!662544))))

(declare-fun token!523 () Token!6288)

(assert (=> b!1728444 (= lt!662544 (charsOf!2010 token!523))))

(declare-fun b!1728445 () Bool)

(assert (=> b!1728445 (= e!1105742 (= (rule!5331 (_1!10715 lt!662532)) lt!662527))))

(declare-fun b!1728446 () Bool)

(declare-fun e!1105749 () Bool)

(assert (=> b!1728446 (= e!1105749 true)))

(declare-fun lt!662536 () Int)

(assert (=> b!1728446 (= lt!662536 (size!15053 lt!662560))))

(declare-fun lt!662557 () Int)

(assert (=> b!1728446 (= lt!662557 (size!15053 lt!662528))))

(declare-fun b!1728447 () Bool)

(assert (=> b!1728447 (= e!1105753 e!1105756)))

(declare-fun res!776041 () Bool)

(assert (=> b!1728447 (=> (not res!776041) (not e!1105756))))

(assert (=> b!1728447 (= res!776041 (= (_1!10715 lt!662538) token!523))))

(assert (=> b!1728447 (= lt!662538 (get!5645 lt!662533))))

(declare-fun tp!493061 () Bool)

(declare-fun b!1728448 () Bool)

(declare-fun e!1105757 () Bool)

(declare-fun e!1105762 () Bool)

(assert (=> b!1728448 (= e!1105757 (and tp!493061 (inv!24490 (tag!3683 (rule!5331 token!523))) (inv!24495 (transformation!3361 (rule!5331 token!523))) e!1105762))))

(declare-fun e!1105746 () Bool)

(assert (=> b!1728449 (= e!1105768 e!1105746)))

(declare-fun res!776057 () Bool)

(assert (=> b!1728449 (=> res!776057 e!1105746)))

(declare-fun Forall!736 (Int) Bool)

(assert (=> b!1728449 (= res!776057 (not (Forall!736 lambda!69308)))))

(declare-fun lt!662534 () Unit!32797)

(declare-fun lemmaInv!568 (TokenValueInjection!6562) Unit!32797)

(assert (=> b!1728449 (= lt!662534 (lemmaInv!568 (transformation!3361 (rule!5331 (_1!10715 lt!662532)))))))

(declare-fun b!1728450 () Bool)

(declare-fun res!776044 () Bool)

(assert (=> b!1728450 (=> res!776044 e!1105760)))

(declare-fun dynLambda!8807 (Int TokenValue!3451) BalanceConc!12546)

(assert (=> b!1728450 (= res!776044 (not (= lt!662552 (dynLambda!8807 (toChars!4727 (transformation!3361 (rule!5331 (_1!10715 lt!662532)))) (value!105461 (_1!10715 lt!662532))))))))

(declare-fun b!1728451 () Bool)

(declare-fun e!1105745 () Bool)

(declare-fun tp!493053 () Bool)

(declare-fun inv!21 (TokenValue!3451) Bool)

(assert (=> b!1728451 (= e!1105745 (and (inv!21 (value!105461 token!523)) e!1105757 tp!493053))))

(declare-fun e!1105750 () Bool)

(declare-fun tp!493060 () Bool)

(declare-fun b!1728434 () Bool)

(declare-fun e!1105748 () Bool)

(assert (=> b!1728434 (= e!1105750 (and tp!493060 (inv!24490 (tag!3683 (h!24347 rules!3447))) (inv!24495 (transformation!3361 (h!24347 rules!3447))) e!1105748))))

(declare-fun res!776051 () Bool)

(assert (=> start!169762 (=> (not res!776051) (not e!1105763))))

(get-info :version)

(assert (=> start!169762 (= res!776051 ((_ is Lexer!2988) thiss!24550))))

(assert (=> start!169762 e!1105763))

(declare-fun e!1105761 () Bool)

(assert (=> start!169762 e!1105761))

(assert (=> start!169762 e!1105764))

(assert (=> start!169762 true))

(declare-fun inv!24496 (Token!6288) Bool)

(assert (=> start!169762 (and (inv!24496 token!523) e!1105745)))

(declare-fun e!1105751 () Bool)

(assert (=> start!169762 e!1105751))

(assert (=> b!1728452 (= e!1105762 (and tp!493062 tp!493057))))

(declare-fun b!1728453 () Bool)

(declare-fun res!776039 () Bool)

(assert (=> b!1728453 (=> (not res!776039) (not e!1105763))))

(declare-fun rulesInvariant!2659 (LexerInterface!2990 List!19016) Bool)

(assert (=> b!1728453 (= res!776039 (rulesInvariant!2659 thiss!24550 rules!3447))))

(declare-fun b!1728454 () Bool)

(declare-fun e!1105759 () Bool)

(assert (=> b!1728454 (= e!1105747 e!1105759)))

(declare-fun res!776037 () Bool)

(assert (=> b!1728454 (=> res!776037 e!1105759)))

(assert (=> b!1728454 (= res!776037 (<= lt!662553 (size!15054 lt!662544)))))

(assert (=> b!1728454 (matchR!2163 lt!662546 lt!662528)))

(declare-fun lt!662554 () Unit!32797)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!110 (LexerInterface!2990 List!19016 List!19015 Token!6288 Rule!6522 List!19015) Unit!32797)

(assert (=> b!1728454 (= lt!662554 (lemmaMaxPrefixThenMatchesRulesRegex!110 thiss!24550 rules!3447 lt!662528 token!523 rule!422 Nil!18945))))

(declare-fun b!1728455 () Bool)

(assert (=> b!1728455 (= e!1105759 e!1105749)))

(declare-fun res!776058 () Bool)

(assert (=> b!1728455 (=> res!776058 e!1105749)))

(declare-fun lt!662558 () List!19015)

(assert (=> b!1728455 (= res!776058 (not (= lt!662558 suffix!1421)))))

(assert (=> b!1728455 (= suffix!1421 lt!662558)))

(declare-fun lt!662543 () Unit!32797)

(assert (=> b!1728455 (= lt!662543 (lemmaSamePrefixThenSameSuffix!746 lt!662528 suffix!1421 lt!662528 lt!662558 lt!662560))))

(assert (=> b!1728455 (= lt!662558 (getSuffix!796 lt!662560 lt!662528))))

(assert (=> b!1728455 (matchR!2163 lt!662546 lt!662537)))

(declare-fun lt!662530 () Unit!32797)

(assert (=> b!1728455 (= lt!662530 (lemmaMaxPrefixThenMatchesRulesRegex!110 thiss!24550 rules!3447 lt!662560 (_1!10715 lt!662532) (rule!5331 (_1!10715 lt!662532)) (_2!10715 lt!662532)))))

(declare-fun b!1728456 () Bool)

(declare-fun res!776045 () Bool)

(assert (=> b!1728456 (=> (not res!776045) (not e!1105763))))

(declare-fun contains!3383 (List!19016 Rule!6522) Bool)

(assert (=> b!1728456 (= res!776045 (contains!3383 rules!3447 rule!422))))

(declare-fun b!1728457 () Bool)

(declare-fun res!776054 () Bool)

(assert (=> b!1728457 (=> (not res!776054) (not e!1105756))))

(assert (=> b!1728457 (= res!776054 (= (rule!5331 token!523) rule!422))))

(declare-fun b!1728458 () Bool)

(declare-fun tp_is_empty!7621 () Bool)

(declare-fun tp!493063 () Bool)

(assert (=> b!1728458 (= e!1105761 (and tp_is_empty!7621 tp!493063))))

(declare-fun b!1728459 () Bool)

(declare-fun res!776040 () Bool)

(assert (=> b!1728459 (=> (not res!776040) (not e!1105763))))

(declare-fun isEmpty!11918 (List!19016) Bool)

(assert (=> b!1728459 (= res!776040 (not (isEmpty!11918 rules!3447)))))

(assert (=> b!1728460 (= e!1105748 (and tp!493064 tp!493059))))

(declare-fun b!1728461 () Bool)

(declare-fun tp!493054 () Bool)

(assert (=> b!1728461 (= e!1105751 (and e!1105750 tp!493054))))

(declare-fun b!1728462 () Bool)

(declare-fun res!776043 () Bool)

(assert (=> b!1728462 (=> res!776043 e!1105768)))

(assert (=> b!1728462 (= res!776043 (not (matchR!2163 (regex!3361 (rule!5331 (_1!10715 lt!662532))) lt!662537)))))

(declare-fun b!1728463 () Bool)

(assert (=> b!1728463 (= e!1105746 e!1105760)))

(declare-fun res!776056 () Bool)

(assert (=> b!1728463 (=> res!776056 e!1105760)))

(declare-fun dynLambda!8808 (Int BalanceConc!12546) TokenValue!3451)

(assert (=> b!1728463 (= res!776056 (not (= (list!7658 (dynLambda!8807 (toChars!4727 (transformation!3361 (rule!5331 (_1!10715 lt!662532)))) (dynLambda!8808 (toValue!4868 (transformation!3361 (rule!5331 (_1!10715 lt!662532)))) lt!662552))) lt!662537)))))

(declare-fun lt!662545 () Unit!32797)

(declare-fun lemmaSemiInverse!507 (TokenValueInjection!6562 BalanceConc!12546) Unit!32797)

(assert (=> b!1728463 (= lt!662545 (lemmaSemiInverse!507 (transformation!3361 (rule!5331 (_1!10715 lt!662532))) lt!662552))))

(assert (= (and start!169762 res!776051) b!1728459))

(assert (= (and b!1728459 res!776040) b!1728453))

(assert (= (and b!1728453 res!776039) b!1728456))

(assert (= (and b!1728456 res!776045) b!1728444))

(assert (= (and b!1728444 res!776049) b!1728447))

(assert (= (and b!1728447 res!776041) b!1728442))

(assert (= (and b!1728442 res!776046) b!1728457))

(assert (= (and b!1728457 res!776054) b!1728440))

(assert (= (and b!1728440 (not res!776048)) b!1728439))

(assert (= (and b!1728439 (not res!776050)) b!1728443))

(assert (= (and b!1728443 (not res!776038)) b!1728437))

(assert (= (and b!1728437 res!776047) b!1728433))

(assert (= (and b!1728433 res!776055) b!1728445))

(assert (= (and b!1728437 (not res!776053)) b!1728462))

(assert (= (and b!1728462 (not res!776043)) b!1728449))

(assert (= (and b!1728449 (not res!776057)) b!1728463))

(assert (= (and b!1728463 (not res!776056)) b!1728450))

(assert (= (and b!1728450 (not res!776044)) b!1728438))

(assert (= (and b!1728438 (not res!776042)) b!1728436))

(assert (= (and b!1728436 (not res!776052)) b!1728454))

(assert (= (and b!1728454 (not res!776037)) b!1728455))

(assert (= (and b!1728455 (not res!776058)) b!1728446))

(assert (= (and start!169762 ((_ is Cons!18945) suffix!1421)) b!1728458))

(assert (= b!1728441 b!1728435))

(assert (= start!169762 b!1728441))

(assert (= b!1728448 b!1728452))

(assert (= b!1728451 b!1728448))

(assert (= start!169762 b!1728451))

(assert (= b!1728434 b!1728460))

(assert (= b!1728461 b!1728434))

(assert (= (and start!169762 ((_ is Cons!18946) rules!3447)) b!1728461))

(declare-fun b_lambda!55059 () Bool)

(assert (=> (not b_lambda!55059) (not b!1728450)))

(declare-fun tb!102813 () Bool)

(declare-fun t!160392 () Bool)

(assert (=> (and b!1728435 (= (toChars!4727 (transformation!3361 rule!422)) (toChars!4727 (transformation!3361 (rule!5331 (_1!10715 lt!662532))))) t!160392) tb!102813))

(declare-fun b!1728479 () Bool)

(declare-fun e!1105780 () Bool)

(declare-fun tp!493067 () Bool)

(declare-fun inv!24497 (Conc!6301) Bool)

(assert (=> b!1728479 (= e!1105780 (and (inv!24497 (c!282491 (dynLambda!8807 (toChars!4727 (transformation!3361 (rule!5331 (_1!10715 lt!662532)))) (value!105461 (_1!10715 lt!662532))))) tp!493067))))

(declare-fun result!123608 () Bool)

(declare-fun inv!24498 (BalanceConc!12546) Bool)

(assert (=> tb!102813 (= result!123608 (and (inv!24498 (dynLambda!8807 (toChars!4727 (transformation!3361 (rule!5331 (_1!10715 lt!662532)))) (value!105461 (_1!10715 lt!662532)))) e!1105780))))

(assert (= tb!102813 b!1728479))

(declare-fun m!2135835 () Bool)

(assert (=> b!1728479 m!2135835))

(declare-fun m!2135837 () Bool)

(assert (=> tb!102813 m!2135837))

(assert (=> b!1728450 t!160392))

(declare-fun b_and!127127 () Bool)

(assert (= b_and!127117 (and (=> t!160392 result!123608) b_and!127127)))

(declare-fun t!160394 () Bool)

(declare-fun tb!102815 () Bool)

(assert (=> (and b!1728460 (= (toChars!4727 (transformation!3361 (h!24347 rules!3447))) (toChars!4727 (transformation!3361 (rule!5331 (_1!10715 lt!662532))))) t!160394) tb!102815))

(declare-fun result!123612 () Bool)

(assert (= result!123612 result!123608))

(assert (=> b!1728450 t!160394))

(declare-fun b_and!127129 () Bool)

(assert (= b_and!127121 (and (=> t!160394 result!123612) b_and!127129)))

(declare-fun tb!102817 () Bool)

(declare-fun t!160396 () Bool)

(assert (=> (and b!1728452 (= (toChars!4727 (transformation!3361 (rule!5331 token!523))) (toChars!4727 (transformation!3361 (rule!5331 (_1!10715 lt!662532))))) t!160396) tb!102817))

(declare-fun result!123614 () Bool)

(assert (= result!123614 result!123608))

(assert (=> b!1728450 t!160396))

(declare-fun b_and!127131 () Bool)

(assert (= b_and!127125 (and (=> t!160396 result!123614) b_and!127131)))

(declare-fun b_lambda!55061 () Bool)

(assert (=> (not b_lambda!55061) (not b!1728463)))

(declare-fun tb!102819 () Bool)

(declare-fun t!160398 () Bool)

(assert (=> (and b!1728435 (= (toChars!4727 (transformation!3361 rule!422)) (toChars!4727 (transformation!3361 (rule!5331 (_1!10715 lt!662532))))) t!160398) tb!102819))

(declare-fun tp!493068 () Bool)

(declare-fun b!1728480 () Bool)

(declare-fun e!1105781 () Bool)

(assert (=> b!1728480 (= e!1105781 (and (inv!24497 (c!282491 (dynLambda!8807 (toChars!4727 (transformation!3361 (rule!5331 (_1!10715 lt!662532)))) (dynLambda!8808 (toValue!4868 (transformation!3361 (rule!5331 (_1!10715 lt!662532)))) lt!662552)))) tp!493068))))

(declare-fun result!123616 () Bool)

(assert (=> tb!102819 (= result!123616 (and (inv!24498 (dynLambda!8807 (toChars!4727 (transformation!3361 (rule!5331 (_1!10715 lt!662532)))) (dynLambda!8808 (toValue!4868 (transformation!3361 (rule!5331 (_1!10715 lt!662532)))) lt!662552))) e!1105781))))

(assert (= tb!102819 b!1728480))

(declare-fun m!2135839 () Bool)

(assert (=> b!1728480 m!2135839))

(declare-fun m!2135841 () Bool)

(assert (=> tb!102819 m!2135841))

(assert (=> b!1728463 t!160398))

(declare-fun b_and!127133 () Bool)

(assert (= b_and!127127 (and (=> t!160398 result!123616) b_and!127133)))

(declare-fun t!160400 () Bool)

(declare-fun tb!102821 () Bool)

(assert (=> (and b!1728460 (= (toChars!4727 (transformation!3361 (h!24347 rules!3447))) (toChars!4727 (transformation!3361 (rule!5331 (_1!10715 lt!662532))))) t!160400) tb!102821))

(declare-fun result!123618 () Bool)

(assert (= result!123618 result!123616))

(assert (=> b!1728463 t!160400))

(declare-fun b_and!127135 () Bool)

(assert (= b_and!127129 (and (=> t!160400 result!123618) b_and!127135)))

(declare-fun t!160402 () Bool)

(declare-fun tb!102823 () Bool)

(assert (=> (and b!1728452 (= (toChars!4727 (transformation!3361 (rule!5331 token!523))) (toChars!4727 (transformation!3361 (rule!5331 (_1!10715 lt!662532))))) t!160402) tb!102823))

(declare-fun result!123620 () Bool)

(assert (= result!123620 result!123616))

(assert (=> b!1728463 t!160402))

(declare-fun b_and!127137 () Bool)

(assert (= b_and!127131 (and (=> t!160402 result!123620) b_and!127137)))

(declare-fun b_lambda!55063 () Bool)

(assert (=> (not b_lambda!55063) (not b!1728463)))

(declare-fun tb!102825 () Bool)

(declare-fun t!160404 () Bool)

(assert (=> (and b!1728435 (= (toValue!4868 (transformation!3361 rule!422)) (toValue!4868 (transformation!3361 (rule!5331 (_1!10715 lt!662532))))) t!160404) tb!102825))

(declare-fun result!123622 () Bool)

(assert (=> tb!102825 (= result!123622 (inv!21 (dynLambda!8808 (toValue!4868 (transformation!3361 (rule!5331 (_1!10715 lt!662532)))) lt!662552)))))

(declare-fun m!2135843 () Bool)

(assert (=> tb!102825 m!2135843))

(assert (=> b!1728463 t!160404))

(declare-fun b_and!127139 () Bool)

(assert (= b_and!127115 (and (=> t!160404 result!123622) b_and!127139)))

(declare-fun tb!102827 () Bool)

(declare-fun t!160406 () Bool)

(assert (=> (and b!1728460 (= (toValue!4868 (transformation!3361 (h!24347 rules!3447))) (toValue!4868 (transformation!3361 (rule!5331 (_1!10715 lt!662532))))) t!160406) tb!102827))

(declare-fun result!123626 () Bool)

(assert (= result!123626 result!123622))

(assert (=> b!1728463 t!160406))

(declare-fun b_and!127141 () Bool)

(assert (= b_and!127119 (and (=> t!160406 result!123626) b_and!127141)))

(declare-fun tb!102829 () Bool)

(declare-fun t!160408 () Bool)

(assert (=> (and b!1728452 (= (toValue!4868 (transformation!3361 (rule!5331 token!523))) (toValue!4868 (transformation!3361 (rule!5331 (_1!10715 lt!662532))))) t!160408) tb!102829))

(declare-fun result!123628 () Bool)

(assert (= result!123628 result!123622))

(assert (=> b!1728463 t!160408))

(declare-fun b_and!127143 () Bool)

(assert (= b_and!127123 (and (=> t!160408 result!123628) b_and!127143)))

(declare-fun m!2135845 () Bool)

(assert (=> b!1728443 m!2135845))

(declare-fun m!2135847 () Bool)

(assert (=> b!1728443 m!2135847))

(assert (=> b!1728443 m!2135847))

(declare-fun m!2135849 () Bool)

(assert (=> b!1728443 m!2135849))

(declare-fun m!2135851 () Bool)

(assert (=> b!1728443 m!2135851))

(declare-fun m!2135853 () Bool)

(assert (=> b!1728447 m!2135853))

(declare-fun m!2135855 () Bool)

(assert (=> b!1728446 m!2135855))

(declare-fun m!2135857 () Bool)

(assert (=> b!1728446 m!2135857))

(declare-fun m!2135859 () Bool)

(assert (=> b!1728451 m!2135859))

(declare-fun m!2135861 () Bool)

(assert (=> b!1728462 m!2135861))

(declare-fun m!2135863 () Bool)

(assert (=> b!1728456 m!2135863))

(declare-fun m!2135865 () Bool)

(assert (=> b!1728433 m!2135865))

(assert (=> b!1728433 m!2135865))

(declare-fun m!2135867 () Bool)

(assert (=> b!1728433 m!2135867))

(assert (=> b!1728433 m!2135867))

(declare-fun m!2135869 () Bool)

(assert (=> b!1728433 m!2135869))

(declare-fun m!2135871 () Bool)

(assert (=> b!1728433 m!2135871))

(declare-fun m!2135873 () Bool)

(assert (=> b!1728455 m!2135873))

(declare-fun m!2135875 () Bool)

(assert (=> b!1728455 m!2135875))

(declare-fun m!2135877 () Bool)

(assert (=> b!1728455 m!2135877))

(declare-fun m!2135879 () Bool)

(assert (=> b!1728455 m!2135879))

(declare-fun m!2135881 () Bool)

(assert (=> b!1728459 m!2135881))

(declare-fun m!2135883 () Bool)

(assert (=> b!1728444 m!2135883))

(declare-fun m!2135885 () Bool)

(assert (=> b!1728444 m!2135885))

(declare-fun m!2135887 () Bool)

(assert (=> b!1728444 m!2135887))

(declare-fun m!2135889 () Bool)

(assert (=> b!1728444 m!2135889))

(declare-fun m!2135891 () Bool)

(assert (=> b!1728463 m!2135891))

(assert (=> b!1728463 m!2135891))

(declare-fun m!2135893 () Bool)

(assert (=> b!1728463 m!2135893))

(assert (=> b!1728463 m!2135893))

(declare-fun m!2135895 () Bool)

(assert (=> b!1728463 m!2135895))

(declare-fun m!2135897 () Bool)

(assert (=> b!1728463 m!2135897))

(declare-fun m!2135899 () Bool)

(assert (=> b!1728437 m!2135899))

(declare-fun m!2135901 () Bool)

(assert (=> b!1728437 m!2135901))

(declare-fun m!2135903 () Bool)

(assert (=> b!1728437 m!2135903))

(declare-fun m!2135905 () Bool)

(assert (=> b!1728437 m!2135905))

(declare-fun m!2135907 () Bool)

(assert (=> b!1728437 m!2135907))

(declare-fun m!2135909 () Bool)

(assert (=> b!1728437 m!2135909))

(declare-fun m!2135911 () Bool)

(assert (=> b!1728437 m!2135911))

(declare-fun m!2135913 () Bool)

(assert (=> b!1728437 m!2135913))

(declare-fun m!2135915 () Bool)

(assert (=> b!1728437 m!2135915))

(declare-fun m!2135917 () Bool)

(assert (=> b!1728437 m!2135917))

(declare-fun m!2135919 () Bool)

(assert (=> b!1728437 m!2135919))

(assert (=> b!1728437 m!2135865))

(declare-fun m!2135921 () Bool)

(assert (=> b!1728437 m!2135921))

(declare-fun m!2135923 () Bool)

(assert (=> b!1728437 m!2135923))

(assert (=> b!1728437 m!2135905))

(declare-fun m!2135925 () Bool)

(assert (=> b!1728437 m!2135925))

(declare-fun m!2135927 () Bool)

(assert (=> b!1728449 m!2135927))

(declare-fun m!2135929 () Bool)

(assert (=> b!1728449 m!2135929))

(declare-fun m!2135931 () Bool)

(assert (=> start!169762 m!2135931))

(declare-fun m!2135933 () Bool)

(assert (=> b!1728440 m!2135933))

(declare-fun m!2135935 () Bool)

(assert (=> b!1728440 m!2135935))

(declare-fun m!2135937 () Bool)

(assert (=> b!1728440 m!2135937))

(declare-fun m!2135939 () Bool)

(assert (=> b!1728442 m!2135939))

(declare-fun m!2135941 () Bool)

(assert (=> b!1728450 m!2135941))

(declare-fun m!2135943 () Bool)

(assert (=> b!1728434 m!2135943))

(declare-fun m!2135945 () Bool)

(assert (=> b!1728434 m!2135945))

(declare-fun m!2135947 () Bool)

(assert (=> b!1728454 m!2135947))

(declare-fun m!2135949 () Bool)

(assert (=> b!1728454 m!2135949))

(declare-fun m!2135951 () Bool)

(assert (=> b!1728454 m!2135951))

(declare-fun m!2135953 () Bool)

(assert (=> b!1728439 m!2135953))

(declare-fun m!2135955 () Bool)

(assert (=> b!1728438 m!2135955))

(assert (=> b!1728438 m!2135955))

(declare-fun m!2135957 () Bool)

(assert (=> b!1728438 m!2135957))

(declare-fun m!2135959 () Bool)

(assert (=> b!1728438 m!2135959))

(declare-fun m!2135961 () Bool)

(assert (=> b!1728438 m!2135961))

(declare-fun m!2135963 () Bool)

(assert (=> b!1728438 m!2135963))

(declare-fun m!2135965 () Bool)

(assert (=> b!1728436 m!2135965))

(declare-fun m!2135967 () Bool)

(assert (=> b!1728436 m!2135967))

(declare-fun m!2135969 () Bool)

(assert (=> b!1728436 m!2135969))

(declare-fun m!2135971 () Bool)

(assert (=> b!1728436 m!2135971))

(assert (=> b!1728436 m!2135967))

(declare-fun m!2135973 () Bool)

(assert (=> b!1728436 m!2135973))

(declare-fun m!2135975 () Bool)

(assert (=> b!1728436 m!2135975))

(declare-fun m!2135977 () Bool)

(assert (=> b!1728436 m!2135977))

(declare-fun m!2135979 () Bool)

(assert (=> b!1728453 m!2135979))

(declare-fun m!2135981 () Bool)

(assert (=> b!1728441 m!2135981))

(declare-fun m!2135983 () Bool)

(assert (=> b!1728441 m!2135983))

(declare-fun m!2135985 () Bool)

(assert (=> b!1728448 m!2135985))

(declare-fun m!2135987 () Bool)

(assert (=> b!1728448 m!2135987))

(check-sat (not b!1728453) (not b!1728454) (not b_next!47949) (not b!1728480) (not b!1728436) (not b_lambda!55059) (not b!1728455) (not b_next!47953) (not tb!102825) tp_is_empty!7621 (not b!1728440) (not b!1728463) b_and!127137 (not start!169762) (not b!1728458) (not b!1728451) (not b!1728446) b_and!127135 (not b!1728448) (not b_next!47957) (not b!1728433) (not b!1728437) (not tb!102819) (not b!1728442) b_and!127139 (not b_next!47947) (not b!1728438) (not b!1728461) (not b_next!47955) (not b!1728447) (not b!1728449) (not tb!102813) (not b!1728456) (not b!1728462) (not b!1728434) (not b_lambda!55061) b_and!127141 (not b_lambda!55063) (not b!1728444) (not b!1728443) (not b!1728441) (not b!1728479) (not b!1728459) b_and!127143 (not b!1728439) b_and!127133 (not b_next!47951))
(check-sat (not b_next!47953) (not b_next!47949) b_and!127137 b_and!127135 (not b_next!47957) (not b_next!47955) b_and!127141 b_and!127139 (not b_next!47947) b_and!127143 b_and!127133 (not b_next!47951))
