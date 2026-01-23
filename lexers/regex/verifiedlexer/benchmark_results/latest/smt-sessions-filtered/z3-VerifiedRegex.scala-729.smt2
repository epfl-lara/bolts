; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33086 () Bool)

(assert start!33086)

(declare-fun b!307440 () Bool)

(declare-fun b_free!11017 () Bool)

(declare-fun b_next!11017 () Bool)

(assert (=> b!307440 (= b_free!11017 (not b_next!11017))))

(declare-fun tp!108965 () Bool)

(declare-fun b_and!25965 () Bool)

(assert (=> b!307440 (= tp!108965 b_and!25965)))

(declare-fun b_free!11019 () Bool)

(declare-fun b_next!11019 () Bool)

(assert (=> b!307440 (= b_free!11019 (not b_next!11019))))

(declare-fun tp!108958 () Bool)

(declare-fun b_and!25967 () Bool)

(assert (=> b!307440 (= tp!108958 b_and!25967)))

(declare-fun b!307444 () Bool)

(declare-fun b_free!11021 () Bool)

(declare-fun b_next!11021 () Bool)

(assert (=> b!307444 (= b_free!11021 (not b_next!11021))))

(declare-fun tp!108957 () Bool)

(declare-fun b_and!25969 () Bool)

(assert (=> b!307444 (= tp!108957 b_and!25969)))

(declare-fun b_free!11023 () Bool)

(declare-fun b_next!11023 () Bool)

(assert (=> b!307444 (= b_free!11023 (not b_next!11023))))

(declare-fun tp!108967 () Bool)

(declare-fun b_and!25971 () Bool)

(assert (=> b!307444 (= tp!108967 b_and!25971)))

(declare-fun b!307455 () Bool)

(declare-fun b_free!11025 () Bool)

(declare-fun b_next!11025 () Bool)

(assert (=> b!307455 (= b_free!11025 (not b_next!11025))))

(declare-fun tp!108964 () Bool)

(declare-fun b_and!25973 () Bool)

(assert (=> b!307455 (= tp!108964 b_and!25973)))

(declare-fun b_free!11027 () Bool)

(declare-fun b_next!11027 () Bool)

(assert (=> b!307455 (= b_free!11027 (not b_next!11027))))

(declare-fun tp!108959 () Bool)

(declare-fun b_and!25975 () Bool)

(assert (=> b!307455 (= tp!108959 b_and!25975)))

(declare-fun bs!35510 () Bool)

(declare-fun b!307468 () Bool)

(declare-fun b!307466 () Bool)

(assert (= bs!35510 (and b!307468 b!307466)))

(declare-fun lambda!10492 () Int)

(declare-fun lambda!10491 () Int)

(assert (=> bs!35510 (not (= lambda!10492 lambda!10491))))

(declare-fun b!307484 () Bool)

(declare-fun e!191250 () Bool)

(assert (=> b!307484 (= e!191250 true)))

(declare-fun b!307483 () Bool)

(declare-fun e!191249 () Bool)

(assert (=> b!307483 (= e!191249 e!191250)))

(declare-fun b!307482 () Bool)

(declare-fun e!191248 () Bool)

(assert (=> b!307482 (= e!191248 e!191249)))

(assert (=> b!307468 e!191248))

(assert (= b!307483 b!307484))

(assert (= b!307482 b!307483))

(declare-datatypes ((List!4070 0))(
  ( (Nil!4060) (Cons!4060 (h!9457 (_ BitVec 16)) (t!43302 List!4070)) )
))
(declare-datatypes ((TokenValue!803 0))(
  ( (FloatLiteralValue!1606 (text!6066 List!4070)) (TokenValueExt!802 (__x!3093 Int)) (Broken!4015 (value!26548 List!4070)) (Object!812) (End!803) (Def!803) (Underscore!803) (Match!803) (Else!803) (Error!803) (Case!803) (If!803) (Extends!803) (Abstract!803) (Class!803) (Val!803) (DelimiterValue!1606 (del!863 List!4070)) (KeywordValue!809 (value!26549 List!4070)) (CommentValue!1606 (value!26550 List!4070)) (WhitespaceValue!1606 (value!26551 List!4070)) (IndentationValue!803 (value!26552 List!4070)) (String!5094) (Int32!803) (Broken!4016 (value!26553 List!4070)) (Boolean!804) (Unit!5689) (OperatorValue!806 (op!863 List!4070)) (IdentifierValue!1606 (value!26554 List!4070)) (IdentifierValue!1607 (value!26555 List!4070)) (WhitespaceValue!1607 (value!26556 List!4070)) (True!1606) (False!1606) (Broken!4017 (value!26557 List!4070)) (Broken!4018 (value!26558 List!4070)) (True!1607) (RightBrace!803) (RightBracket!803) (Colon!803) (Null!803) (Comma!803) (LeftBracket!803) (False!1607) (LeftBrace!803) (ImaginaryLiteralValue!803 (text!6067 List!4070)) (StringLiteralValue!2409 (value!26559 List!4070)) (EOFValue!803 (value!26560 List!4070)) (IdentValue!803 (value!26561 List!4070)) (DelimiterValue!1607 (value!26562 List!4070)) (DedentValue!803 (value!26563 List!4070)) (NewLineValue!803 (value!26564 List!4070)) (IntegerValue!2409 (value!26565 (_ BitVec 32)) (text!6068 List!4070)) (IntegerValue!2410 (value!26566 Int) (text!6069 List!4070)) (Times!803) (Or!803) (Equal!803) (Minus!803) (Broken!4019 (value!26567 List!4070)) (And!803) (Div!803) (LessEqual!803) (Mod!803) (Concat!1808) (Not!803) (Plus!803) (SpaceValue!803 (value!26568 List!4070)) (IntegerValue!2411 (value!26569 Int) (text!6070 List!4070)) (StringLiteralValue!2410 (text!6071 List!4070)) (FloatLiteralValue!1607 (text!6072 List!4070)) (BytesLiteralValue!803 (value!26570 List!4070)) (CommentValue!1607 (value!26571 List!4070)) (StringLiteralValue!2411 (value!26572 List!4070)) (ErrorTokenValue!803 (msg!864 List!4070)) )
))
(declare-datatypes ((C!2932 0))(
  ( (C!2933 (val!1352 Int)) )
))
(declare-datatypes ((List!4071 0))(
  ( (Nil!4061) (Cons!4061 (h!9458 C!2932) (t!43303 List!4071)) )
))
(declare-datatypes ((IArray!2769 0))(
  ( (IArray!2770 (innerList!1442 List!4071)) )
))
(declare-datatypes ((Conc!1384 0))(
  ( (Node!1384 (left!3377 Conc!1384) (right!3707 Conc!1384) (csize!2998 Int) (cheight!1595 Int)) (Leaf!2114 (xs!3987 IArray!2769) (csize!2999 Int)) (Empty!1384) )
))
(declare-datatypes ((BalanceConc!2776 0))(
  ( (BalanceConc!2777 (c!58276 Conc!1384)) )
))
(declare-datatypes ((TokenValueInjection!1378 0))(
  ( (TokenValueInjection!1379 (toValue!1540 Int) (toChars!1399 Int)) )
))
(declare-datatypes ((String!5095 0))(
  ( (String!5096 (value!26573 String)) )
))
(declare-datatypes ((Regex!1005 0))(
  ( (ElementMatch!1005 (c!58277 C!2932)) (Concat!1809 (regOne!2522 Regex!1005) (regTwo!2522 Regex!1005)) (EmptyExpr!1005) (Star!1005 (reg!1334 Regex!1005)) (EmptyLang!1005) (Union!1005 (regOne!2523 Regex!1005) (regTwo!2523 Regex!1005)) )
))
(declare-datatypes ((Rule!1362 0))(
  ( (Rule!1363 (regex!781 Regex!1005) (tag!999 String!5095) (isSeparator!781 Bool) (transformation!781 TokenValueInjection!1378)) )
))
(declare-datatypes ((List!4072 0))(
  ( (Nil!4062) (Cons!4062 (h!9459 Rule!1362) (t!43304 List!4072)) )
))
(declare-fun rules!1920 () List!4072)

(get-info :version)

(assert (= (and b!307468 ((_ is Cons!4062) rules!1920)) b!307482))

(declare-fun order!3297 () Int)

(declare-fun order!3299 () Int)

(declare-fun dynLambda!2219 (Int Int) Int)

(declare-fun dynLambda!2220 (Int Int) Int)

(assert (=> b!307484 (< (dynLambda!2219 order!3297 (toValue!1540 (transformation!781 (h!9459 rules!1920)))) (dynLambda!2220 order!3299 lambda!10492))))

(declare-fun order!3301 () Int)

(declare-fun dynLambda!2221 (Int Int) Int)

(assert (=> b!307484 (< (dynLambda!2221 order!3301 (toChars!1399 (transformation!781 (h!9459 rules!1920)))) (dynLambda!2220 order!3299 lambda!10492))))

(assert (=> b!307468 true))

(declare-fun b!307439 () Bool)

(declare-fun e!191226 () Bool)

(declare-fun e!191228 () Bool)

(assert (=> b!307439 (= e!191226 e!191228)))

(declare-fun res!139797 () Bool)

(assert (=> b!307439 (=> (not res!139797) (not e!191228))))

(declare-datatypes ((Token!1306 0))(
  ( (Token!1307 (value!26574 TokenValue!803) (rule!1394 Rule!1362) (size!3243 Int) (originalCharacters!824 List!4071)) )
))
(declare-datatypes ((tuple2!4690 0))(
  ( (tuple2!4691 (_1!2561 Token!1306) (_2!2561 List!4071)) )
))
(declare-datatypes ((Option!928 0))(
  ( (None!927) (Some!927 (v!14932 tuple2!4690)) )
))
(declare-fun lt!131146 () Option!928)

(declare-fun isDefined!767 (Option!928) Bool)

(assert (=> b!307439 (= res!139797 (isDefined!767 lt!131146))))

(declare-fun lt!131156 () List!4071)

(declare-datatypes ((LexerInterface!667 0))(
  ( (LexerInterfaceExt!664 (__x!3094 Int)) (Lexer!665) )
))
(declare-fun thiss!17480 () LexerInterface!667)

(declare-fun maxPrefix!383 (LexerInterface!667 List!4072 List!4071) Option!928)

(assert (=> b!307439 (= lt!131146 (maxPrefix!383 thiss!17480 rules!1920 lt!131156))))

(declare-fun e!191221 () Bool)

(assert (=> b!307440 (= e!191221 (and tp!108965 tp!108958))))

(declare-fun e!191220 () Bool)

(declare-fun separatorToken!170 () Token!1306)

(declare-fun tp!108962 () Bool)

(declare-fun e!191217 () Bool)

(declare-fun b!307441 () Bool)

(declare-fun inv!21 (TokenValue!803) Bool)

(assert (=> b!307441 (= e!191217 (and (inv!21 (value!26574 separatorToken!170)) e!191220 tp!108962))))

(declare-fun b!307442 () Bool)

(declare-fun e!191235 () Bool)

(declare-fun e!191229 () Bool)

(assert (=> b!307442 (= e!191235 e!191229)))

(declare-fun res!139807 () Bool)

(assert (=> b!307442 (=> (not res!139807) (not e!191229))))

(declare-datatypes ((List!4073 0))(
  ( (Nil!4063) (Cons!4063 (h!9460 Token!1306) (t!43305 List!4073)) )
))
(declare-datatypes ((IArray!2771 0))(
  ( (IArray!2772 (innerList!1443 List!4073)) )
))
(declare-datatypes ((Conc!1385 0))(
  ( (Node!1385 (left!3378 Conc!1385) (right!3708 Conc!1385) (csize!3000 Int) (cheight!1596 Int)) (Leaf!2115 (xs!3988 IArray!2771) (csize!3001 Int)) (Empty!1385) )
))
(declare-datatypes ((BalanceConc!2778 0))(
  ( (BalanceConc!2779 (c!58278 Conc!1385)) )
))
(declare-fun lt!131159 () BalanceConc!2778)

(declare-fun rulesProduceEachTokenIndividually!459 (LexerInterface!667 List!4072 BalanceConc!2778) Bool)

(assert (=> b!307442 (= res!139807 (rulesProduceEachTokenIndividually!459 thiss!17480 rules!1920 lt!131159))))

(declare-fun tokens!465 () List!4073)

(declare-fun seqFromList!927 (List!4073) BalanceConc!2778)

(assert (=> b!307442 (= lt!131159 (seqFromList!927 tokens!465))))

(declare-fun b!307443 () Bool)

(declare-fun get!1388 (Option!928) tuple2!4690)

(declare-fun head!966 (List!4073) Token!1306)

(assert (=> b!307443 (= e!191228 (= (_1!2561 (get!1388 lt!131146)) (head!966 tokens!465)))))

(declare-fun e!191231 () Bool)

(assert (=> b!307444 (= e!191231 (and tp!108957 tp!108967))))

(declare-fun b!307445 () Bool)

(declare-fun res!139801 () Bool)

(declare-fun e!191238 () Bool)

(assert (=> b!307445 (=> (not res!139801) (not e!191238))))

(declare-fun lt!131167 () tuple2!4690)

(declare-fun isEmpty!2775 (List!4071) Bool)

(assert (=> b!307445 (= res!139801 (isEmpty!2775 (_2!2561 lt!131167)))))

(declare-fun b!307446 () Bool)

(declare-fun res!139799 () Bool)

(declare-fun e!191214 () Bool)

(assert (=> b!307446 (=> res!139799 e!191214)))

(declare-fun rulesProduceIndividualToken!416 (LexerInterface!667 List!4072 Token!1306) Bool)

(assert (=> b!307446 (= res!139799 (not (rulesProduceIndividualToken!416 thiss!17480 rules!1920 (h!9460 tokens!465))))))

(declare-fun e!191234 () Bool)

(declare-fun e!191233 () Bool)

(declare-fun tp!108960 () Bool)

(declare-fun b!307447 () Bool)

(assert (=> b!307447 (= e!191233 (and (inv!21 (value!26574 (h!9460 tokens!465))) e!191234 tp!108960))))

(declare-fun b!307448 () Bool)

(declare-fun res!139788 () Bool)

(assert (=> b!307448 (=> (not res!139788) (not e!191235))))

(declare-fun isEmpty!2776 (List!4072) Bool)

(assert (=> b!307448 (= res!139788 (not (isEmpty!2776 rules!1920)))))

(declare-fun lt!131151 () List!4071)

(declare-fun b!307449 () Bool)

(declare-fun lt!131150 () List!4071)

(declare-fun e!191241 () Bool)

(declare-fun ++!1102 (List!4071 List!4071) List!4071)

(assert (=> b!307449 (= e!191241 (not (= lt!131156 (++!1102 lt!131150 lt!131151))))))

(declare-fun b!307450 () Bool)

(declare-fun e!191224 () Bool)

(declare-fun e!191218 () Bool)

(assert (=> b!307450 (= e!191224 (not e!191218))))

(declare-fun res!139790 () Bool)

(assert (=> b!307450 (=> res!139790 e!191218)))

(declare-fun list!1713 (BalanceConc!2776) List!4071)

(declare-fun printWithSeparatorTokenWhenNeededRec!340 (LexerInterface!667 List!4072 BalanceConc!2778 Token!1306 Int) BalanceConc!2776)

(assert (=> b!307450 (= res!139790 (not (= lt!131151 (list!1713 (printWithSeparatorTokenWhenNeededRec!340 thiss!17480 rules!1920 (seqFromList!927 (t!43305 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!131163 () List!4071)

(declare-fun lt!131162 () List!4071)

(assert (=> b!307450 (= lt!131163 lt!131162)))

(declare-fun lt!131170 () List!4071)

(assert (=> b!307450 (= lt!131162 (++!1102 lt!131150 lt!131170))))

(declare-fun lt!131164 () List!4071)

(assert (=> b!307450 (= lt!131163 (++!1102 (++!1102 lt!131150 lt!131164) lt!131151))))

(declare-datatypes ((Unit!5690 0))(
  ( (Unit!5691) )
))
(declare-fun lt!131168 () Unit!5690)

(declare-fun lemmaConcatAssociativity!488 (List!4071 List!4071 List!4071) Unit!5690)

(assert (=> b!307450 (= lt!131168 (lemmaConcatAssociativity!488 lt!131150 lt!131164 lt!131151))))

(declare-fun charsOf!424 (Token!1306) BalanceConc!2776)

(assert (=> b!307450 (= lt!131150 (list!1713 (charsOf!424 (h!9460 tokens!465))))))

(assert (=> b!307450 (= lt!131170 (++!1102 lt!131164 lt!131151))))

(declare-fun printWithSeparatorTokenWhenNeededList!348 (LexerInterface!667 List!4072 List!4073 Token!1306) List!4071)

(assert (=> b!307450 (= lt!131151 (printWithSeparatorTokenWhenNeededList!348 thiss!17480 rules!1920 (t!43305 tokens!465) separatorToken!170))))

(assert (=> b!307450 (= lt!131164 (list!1713 (charsOf!424 separatorToken!170)))))

(declare-fun b!307451 () Bool)

(declare-fun res!139785 () Bool)

(assert (=> b!307451 (=> (not res!139785) (not e!191229))))

(declare-fun sepAndNonSepRulesDisjointChars!370 (List!4072 List!4072) Bool)

(assert (=> b!307451 (= res!139785 (sepAndNonSepRulesDisjointChars!370 rules!1920 rules!1920))))

(declare-fun b!307453 () Bool)

(declare-fun matchR!323 (Regex!1005 List!4071) Bool)

(assert (=> b!307453 (= e!191238 (matchR!323 (regex!781 (rule!1394 (h!9460 tokens!465))) lt!131150))))

(declare-fun tp!108966 () Bool)

(declare-fun e!191223 () Bool)

(declare-fun b!307454 () Bool)

(declare-fun inv!5012 (String!5095) Bool)

(declare-fun inv!5015 (TokenValueInjection!1378) Bool)

(assert (=> b!307454 (= e!191223 (and tp!108966 (inv!5012 (tag!999 (h!9459 rules!1920))) (inv!5015 (transformation!781 (h!9459 rules!1920))) e!191231))))

(declare-fun e!191227 () Bool)

(assert (=> b!307455 (= e!191227 (and tp!108964 tp!108959))))

(declare-fun b!307456 () Bool)

(declare-fun res!139786 () Bool)

(assert (=> b!307456 (=> res!139786 e!191214)))

(declare-fun isEmpty!2777 (BalanceConc!2778) Bool)

(declare-datatypes ((tuple2!4692 0))(
  ( (tuple2!4693 (_1!2562 BalanceConc!2778) (_2!2562 BalanceConc!2776)) )
))
(declare-fun lex!459 (LexerInterface!667 List!4072 BalanceConc!2776) tuple2!4692)

(declare-fun seqFromList!928 (List!4071) BalanceConc!2776)

(assert (=> b!307456 (= res!139786 (isEmpty!2777 (_1!2562 (lex!459 thiss!17480 rules!1920 (seqFromList!928 lt!131150)))))))

(declare-fun b!307457 () Bool)

(declare-fun tp!108961 () Bool)

(assert (=> b!307457 (= e!191220 (and tp!108961 (inv!5012 (tag!999 (rule!1394 separatorToken!170))) (inv!5015 (transformation!781 (rule!1394 separatorToken!170))) e!191221))))

(declare-fun b!307458 () Bool)

(declare-fun e!191216 () Bool)

(declare-fun e!191222 () Bool)

(assert (=> b!307458 (= e!191216 e!191222)))

(declare-fun res!139803 () Bool)

(assert (=> b!307458 (=> res!139803 e!191222)))

(declare-fun lt!131153 () Bool)

(assert (=> b!307458 (= res!139803 (not lt!131153))))

(assert (=> b!307458 e!191238))

(declare-fun res!139802 () Bool)

(assert (=> b!307458 (=> (not res!139802) (not e!191238))))

(assert (=> b!307458 (= res!139802 (= (_1!2561 lt!131167) (h!9460 tokens!465)))))

(declare-fun lt!131148 () Option!928)

(assert (=> b!307458 (= lt!131167 (get!1388 lt!131148))))

(assert (=> b!307458 (isDefined!767 lt!131148)))

(assert (=> b!307458 (= lt!131148 (maxPrefix!383 thiss!17480 rules!1920 lt!131150))))

(declare-fun b!307459 () Bool)

(declare-fun res!139800 () Bool)

(assert (=> b!307459 (=> (not res!139800) (not e!191229))))

(assert (=> b!307459 (= res!139800 (isSeparator!781 (rule!1394 separatorToken!170)))))

(declare-fun b!307460 () Bool)

(declare-fun e!191230 () Bool)

(assert (=> b!307460 (= e!191218 e!191230)))

(declare-fun res!139805 () Bool)

(assert (=> b!307460 (=> res!139805 e!191230)))

(assert (=> b!307460 (= res!139805 e!191241)))

(declare-fun res!139791 () Bool)

(assert (=> b!307460 (=> (not res!139791) (not e!191241))))

(assert (=> b!307460 (= res!139791 (not lt!131153))))

(assert (=> b!307460 (= lt!131153 (= lt!131156 lt!131162))))

(declare-fun b!307461 () Bool)

(declare-fun res!139804 () Bool)

(assert (=> b!307461 (=> (not res!139804) (not e!191229))))

(assert (=> b!307461 (= res!139804 ((_ is Cons!4063) tokens!465))))

(declare-fun tp!108963 () Bool)

(declare-fun e!191225 () Bool)

(declare-fun b!307462 () Bool)

(declare-fun inv!5016 (Token!1306) Bool)

(assert (=> b!307462 (= e!191225 (and (inv!5016 (h!9460 tokens!465)) e!191233 tp!108963))))

(declare-fun b!307463 () Bool)

(declare-fun res!139806 () Bool)

(assert (=> b!307463 (=> (not res!139806) (not e!191229))))

(assert (=> b!307463 (= res!139806 (rulesProduceIndividualToken!416 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!307464 () Bool)

(declare-fun e!191232 () Unit!5690)

(declare-fun Unit!5692 () Unit!5690)

(assert (=> b!307464 (= e!191232 Unit!5692)))

(assert (=> b!307464 false))

(declare-fun b!307465 () Bool)

(declare-fun e!191219 () Bool)

(declare-fun tp!108969 () Bool)

(assert (=> b!307465 (= e!191219 (and e!191223 tp!108969))))

(declare-fun res!139794 () Bool)

(assert (=> b!307466 (=> (not res!139794) (not e!191229))))

(declare-fun forall!1072 (List!4073 Int) Bool)

(assert (=> b!307466 (= res!139794 (forall!1072 tokens!465 lambda!10491))))

(declare-fun b!307467 () Bool)

(declare-fun res!139798 () Bool)

(assert (=> b!307467 (=> (not res!139798) (not e!191224))))

(declare-fun lt!131149 () List!4071)

(assert (=> b!307467 (= res!139798 (= (list!1713 (seqFromList!928 lt!131156)) lt!131149))))

(assert (=> b!307468 (= e!191214 e!191216)))

(declare-fun res!139789 () Bool)

(assert (=> b!307468 (=> res!139789 e!191216)))

(declare-datatypes ((tuple2!4694 0))(
  ( (tuple2!4695 (_1!2563 Token!1306) (_2!2563 BalanceConc!2776)) )
))
(declare-datatypes ((Option!929 0))(
  ( (None!928) (Some!928 (v!14933 tuple2!4694)) )
))
(declare-fun isDefined!768 (Option!929) Bool)

(declare-fun maxPrefixZipperSequence!346 (LexerInterface!667 List!4072 BalanceConc!2776) Option!929)

(assert (=> b!307468 (= res!139789 (not (isDefined!768 (maxPrefixZipperSequence!346 thiss!17480 rules!1920 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465)))))))))

(declare-fun lt!131169 () Unit!5690)

(declare-fun forallContained!334 (List!4073 Int Token!1306) Unit!5690)

(assert (=> b!307468 (= lt!131169 (forallContained!334 tokens!465 lambda!10492 (h!9460 tokens!465)))))

(assert (=> b!307468 (= lt!131150 (originalCharacters!824 (h!9460 tokens!465)))))

(declare-fun b!307469 () Bool)

(declare-fun res!139793 () Bool)

(assert (=> b!307469 (=> (not res!139793) (not e!191235))))

(declare-fun rulesInvariant!633 (LexerInterface!667 List!4072) Bool)

(assert (=> b!307469 (= res!139793 (rulesInvariant!633 thiss!17480 rules!1920))))

(declare-fun b!307470 () Bool)

(assert (=> b!307470 (= e!191230 e!191214)))

(declare-fun res!139792 () Bool)

(assert (=> b!307470 (=> res!139792 e!191214)))

(declare-fun lt!131158 () List!4071)

(declare-fun lt!131160 () List!4071)

(assert (=> b!307470 (= res!139792 (or (not (= lt!131158 lt!131160)) (not (= lt!131160 lt!131150)) (not (= lt!131158 lt!131150))))))

(declare-fun printList!341 (LexerInterface!667 List!4073) List!4071)

(assert (=> b!307470 (= lt!131160 (printList!341 thiss!17480 (Cons!4063 (h!9460 tokens!465) Nil!4063)))))

(declare-fun lt!131165 () BalanceConc!2776)

(assert (=> b!307470 (= lt!131158 (list!1713 lt!131165))))

(declare-fun lt!131157 () BalanceConc!2778)

(declare-fun printTailRec!353 (LexerInterface!667 BalanceConc!2778 Int BalanceConc!2776) BalanceConc!2776)

(assert (=> b!307470 (= lt!131165 (printTailRec!353 thiss!17480 lt!131157 0 (BalanceConc!2777 Empty!1384)))))

(declare-fun print!392 (LexerInterface!667 BalanceConc!2778) BalanceConc!2776)

(assert (=> b!307470 (= lt!131165 (print!392 thiss!17480 lt!131157))))

(declare-fun singletonSeq!327 (Token!1306) BalanceConc!2778)

(assert (=> b!307470 (= lt!131157 (singletonSeq!327 (h!9460 tokens!465)))))

(declare-fun b!307471 () Bool)

(declare-fun contains!803 (List!4073 Token!1306) Bool)

(assert (=> b!307471 (= e!191222 (contains!803 tokens!465 (head!966 (t!43305 tokens!465))))))

(declare-fun lt!131166 () Unit!5690)

(assert (=> b!307471 (= lt!131166 e!191232)))

(declare-fun c!58275 () Bool)

(declare-fun isEmpty!2778 (List!4073) Bool)

(assert (=> b!307471 (= c!58275 (isEmpty!2778 (t!43305 tokens!465)))))

(declare-fun lt!131154 () Option!928)

(assert (=> b!307471 (= lt!131154 (maxPrefix!383 thiss!17480 rules!1920 lt!131170))))

(declare-fun lt!131152 () tuple2!4690)

(assert (=> b!307471 (= lt!131170 (_2!2561 lt!131152))))

(declare-fun lt!131161 () Unit!5690)

(declare-fun lemmaSamePrefixThenSameSuffix!226 (List!4071 List!4071 List!4071 List!4071 List!4071) Unit!5690)

(assert (=> b!307471 (= lt!131161 (lemmaSamePrefixThenSameSuffix!226 lt!131150 lt!131170 lt!131150 (_2!2561 lt!131152) lt!131156))))

(assert (=> b!307471 (= lt!131152 (get!1388 (maxPrefix!383 thiss!17480 rules!1920 lt!131156)))))

(declare-fun isPrefix!441 (List!4071 List!4071) Bool)

(assert (=> b!307471 (isPrefix!441 lt!131150 lt!131162)))

(declare-fun lt!131155 () Unit!5690)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!332 (List!4071 List!4071) Unit!5690)

(assert (=> b!307471 (= lt!131155 (lemmaConcatTwoListThenFirstIsPrefix!332 lt!131150 lt!131170))))

(assert (=> b!307471 e!191226))

(declare-fun res!139795 () Bool)

(assert (=> b!307471 (=> res!139795 e!191226)))

(assert (=> b!307471 (= res!139795 (isEmpty!2778 tokens!465))))

(declare-fun lt!131147 () Unit!5690)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!188 (LexerInterface!667 List!4072 List!4073 Token!1306) Unit!5690)

(assert (=> b!307471 (= lt!131147 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!188 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun tp!108968 () Bool)

(declare-fun b!307452 () Bool)

(assert (=> b!307452 (= e!191234 (and tp!108968 (inv!5012 (tag!999 (rule!1394 (h!9460 tokens!465)))) (inv!5015 (transformation!781 (rule!1394 (h!9460 tokens!465)))) e!191227))))

(declare-fun res!139796 () Bool)

(assert (=> start!33086 (=> (not res!139796) (not e!191235))))

(assert (=> start!33086 (= res!139796 ((_ is Lexer!665) thiss!17480))))

(assert (=> start!33086 e!191235))

(assert (=> start!33086 true))

(assert (=> start!33086 e!191219))

(assert (=> start!33086 (and (inv!5016 separatorToken!170) e!191217)))

(assert (=> start!33086 e!191225))

(declare-fun b!307472 () Bool)

(declare-fun Unit!5693 () Unit!5690)

(assert (=> b!307472 (= e!191232 Unit!5693)))

(declare-fun b!307473 () Bool)

(assert (=> b!307473 (= e!191229 e!191224)))

(declare-fun res!139787 () Bool)

(assert (=> b!307473 (=> (not res!139787) (not e!191224))))

(assert (=> b!307473 (= res!139787 (= lt!131156 lt!131149))))

(assert (=> b!307473 (= lt!131149 (list!1713 (printWithSeparatorTokenWhenNeededRec!340 thiss!17480 rules!1920 lt!131159 separatorToken!170 0)))))

(assert (=> b!307473 (= lt!131156 (printWithSeparatorTokenWhenNeededList!348 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (= (and start!33086 res!139796) b!307448))

(assert (= (and b!307448 res!139788) b!307469))

(assert (= (and b!307469 res!139793) b!307442))

(assert (= (and b!307442 res!139807) b!307463))

(assert (= (and b!307463 res!139806) b!307459))

(assert (= (and b!307459 res!139800) b!307466))

(assert (= (and b!307466 res!139794) b!307451))

(assert (= (and b!307451 res!139785) b!307461))

(assert (= (and b!307461 res!139804) b!307473))

(assert (= (and b!307473 res!139787) b!307467))

(assert (= (and b!307467 res!139798) b!307450))

(assert (= (and b!307450 (not res!139790)) b!307460))

(assert (= (and b!307460 res!139791) b!307449))

(assert (= (and b!307460 (not res!139805)) b!307470))

(assert (= (and b!307470 (not res!139792)) b!307446))

(assert (= (and b!307446 (not res!139799)) b!307456))

(assert (= (and b!307456 (not res!139786)) b!307468))

(assert (= (and b!307468 (not res!139789)) b!307458))

(assert (= (and b!307458 res!139802) b!307445))

(assert (= (and b!307445 res!139801) b!307453))

(assert (= (and b!307458 (not res!139803)) b!307471))

(assert (= (and b!307471 (not res!139795)) b!307439))

(assert (= (and b!307439 res!139797) b!307443))

(assert (= (and b!307471 c!58275) b!307464))

(assert (= (and b!307471 (not c!58275)) b!307472))

(assert (= b!307454 b!307444))

(assert (= b!307465 b!307454))

(assert (= (and start!33086 ((_ is Cons!4062) rules!1920)) b!307465))

(assert (= b!307457 b!307440))

(assert (= b!307441 b!307457))

(assert (= start!33086 b!307441))

(assert (= b!307452 b!307455))

(assert (= b!307447 b!307452))

(assert (= b!307462 b!307447))

(assert (= (and start!33086 ((_ is Cons!4063) tokens!465)) b!307462))

(declare-fun m!410219 () Bool)

(assert (=> b!307473 m!410219))

(assert (=> b!307473 m!410219))

(declare-fun m!410221 () Bool)

(assert (=> b!307473 m!410221))

(declare-fun m!410223 () Bool)

(assert (=> b!307473 m!410223))

(declare-fun m!410225 () Bool)

(assert (=> b!307447 m!410225))

(declare-fun m!410227 () Bool)

(assert (=> b!307452 m!410227))

(declare-fun m!410229 () Bool)

(assert (=> b!307452 m!410229))

(declare-fun m!410231 () Bool)

(assert (=> b!307466 m!410231))

(declare-fun m!410233 () Bool)

(assert (=> b!307445 m!410233))

(declare-fun m!410235 () Bool)

(assert (=> b!307456 m!410235))

(assert (=> b!307456 m!410235))

(declare-fun m!410237 () Bool)

(assert (=> b!307456 m!410237))

(declare-fun m!410239 () Bool)

(assert (=> b!307456 m!410239))

(declare-fun m!410241 () Bool)

(assert (=> start!33086 m!410241))

(declare-fun m!410243 () Bool)

(assert (=> b!307469 m!410243))

(declare-fun m!410245 () Bool)

(assert (=> b!307467 m!410245))

(assert (=> b!307467 m!410245))

(declare-fun m!410247 () Bool)

(assert (=> b!307467 m!410247))

(declare-fun m!410249 () Bool)

(assert (=> b!307454 m!410249))

(declare-fun m!410251 () Bool)

(assert (=> b!307454 m!410251))

(declare-fun m!410253 () Bool)

(assert (=> b!307470 m!410253))

(declare-fun m!410255 () Bool)

(assert (=> b!307470 m!410255))

(declare-fun m!410257 () Bool)

(assert (=> b!307470 m!410257))

(declare-fun m!410259 () Bool)

(assert (=> b!307470 m!410259))

(declare-fun m!410261 () Bool)

(assert (=> b!307470 m!410261))

(declare-fun m!410263 () Bool)

(assert (=> b!307449 m!410263))

(declare-fun m!410265 () Bool)

(assert (=> b!307462 m!410265))

(declare-fun m!410267 () Bool)

(assert (=> b!307458 m!410267))

(declare-fun m!410269 () Bool)

(assert (=> b!307458 m!410269))

(declare-fun m!410271 () Bool)

(assert (=> b!307458 m!410271))

(declare-fun m!410273 () Bool)

(assert (=> b!307442 m!410273))

(declare-fun m!410275 () Bool)

(assert (=> b!307442 m!410275))

(declare-fun m!410277 () Bool)

(assert (=> b!307450 m!410277))

(declare-fun m!410279 () Bool)

(assert (=> b!307450 m!410279))

(declare-fun m!410281 () Bool)

(assert (=> b!307450 m!410281))

(assert (=> b!307450 m!410279))

(declare-fun m!410283 () Bool)

(assert (=> b!307450 m!410283))

(declare-fun m!410285 () Bool)

(assert (=> b!307450 m!410285))

(declare-fun m!410287 () Bool)

(assert (=> b!307450 m!410287))

(assert (=> b!307450 m!410285))

(declare-fun m!410289 () Bool)

(assert (=> b!307450 m!410289))

(assert (=> b!307450 m!410277))

(declare-fun m!410291 () Bool)

(assert (=> b!307450 m!410291))

(declare-fun m!410293 () Bool)

(assert (=> b!307450 m!410293))

(declare-fun m!410295 () Bool)

(assert (=> b!307450 m!410295))

(declare-fun m!410297 () Bool)

(assert (=> b!307450 m!410297))

(assert (=> b!307450 m!410293))

(declare-fun m!410299 () Bool)

(assert (=> b!307450 m!410299))

(assert (=> b!307450 m!410291))

(declare-fun m!410301 () Bool)

(assert (=> b!307450 m!410301))

(declare-fun m!410303 () Bool)

(assert (=> b!307471 m!410303))

(declare-fun m!410305 () Bool)

(assert (=> b!307471 m!410305))

(declare-fun m!410307 () Bool)

(assert (=> b!307471 m!410307))

(declare-fun m!410309 () Bool)

(assert (=> b!307471 m!410309))

(declare-fun m!410311 () Bool)

(assert (=> b!307471 m!410311))

(declare-fun m!410313 () Bool)

(assert (=> b!307471 m!410313))

(declare-fun m!410315 () Bool)

(assert (=> b!307471 m!410315))

(declare-fun m!410317 () Bool)

(assert (=> b!307471 m!410317))

(declare-fun m!410319 () Bool)

(assert (=> b!307471 m!410319))

(declare-fun m!410321 () Bool)

(assert (=> b!307471 m!410321))

(assert (=> b!307471 m!410313))

(declare-fun m!410323 () Bool)

(assert (=> b!307471 m!410323))

(assert (=> b!307471 m!410317))

(declare-fun m!410325 () Bool)

(assert (=> b!307453 m!410325))

(declare-fun m!410327 () Bool)

(assert (=> b!307448 m!410327))

(declare-fun m!410329 () Bool)

(assert (=> b!307457 m!410329))

(declare-fun m!410331 () Bool)

(assert (=> b!307457 m!410331))

(declare-fun m!410333 () Bool)

(assert (=> b!307439 m!410333))

(assert (=> b!307439 m!410317))

(declare-fun m!410335 () Bool)

(assert (=> b!307443 m!410335))

(declare-fun m!410337 () Bool)

(assert (=> b!307443 m!410337))

(declare-fun m!410339 () Bool)

(assert (=> b!307441 m!410339))

(declare-fun m!410341 () Bool)

(assert (=> b!307446 m!410341))

(declare-fun m!410343 () Bool)

(assert (=> b!307463 m!410343))

(declare-fun m!410345 () Bool)

(assert (=> b!307451 m!410345))

(declare-fun m!410347 () Bool)

(assert (=> b!307468 m!410347))

(assert (=> b!307468 m!410347))

(declare-fun m!410349 () Bool)

(assert (=> b!307468 m!410349))

(assert (=> b!307468 m!410349))

(declare-fun m!410351 () Bool)

(assert (=> b!307468 m!410351))

(declare-fun m!410353 () Bool)

(assert (=> b!307468 m!410353))

(check-sat b_and!25969 (not b_next!11021) (not b!307469) (not b!307465) (not b!307482) (not b!307467) (not b!307447) (not b!307449) b_and!25975 (not b!307457) (not b_next!11025) (not b!307458) (not b!307452) (not b!307442) (not b!307439) (not b!307468) (not b!307454) (not b!307471) (not b_next!11027) (not b!307456) (not b!307453) (not b!307441) (not b!307462) (not b!307463) (not b!307448) (not b!307450) (not b_next!11023) (not b!307451) b_and!25965 (not b!307443) b_and!25973 (not b!307473) (not b!307445) (not b!307466) (not b!307446) (not b_next!11019) b_and!25971 b_and!25967 (not start!33086) (not b_next!11017) (not b!307470))
(check-sat (not b_next!11025) b_and!25969 (not b_next!11021) (not b_next!11027) (not b_next!11023) b_and!25965 b_and!25975 b_and!25973 (not b_next!11017) (not b_next!11019) b_and!25971 b_and!25967)
(get-model)

(declare-fun d!93892 () Bool)

(assert (=> d!93892 (= (get!1388 lt!131148) (v!14932 lt!131148))))

(assert (=> b!307458 d!93892))

(declare-fun d!93894 () Bool)

(declare-fun isEmpty!2779 (Option!928) Bool)

(assert (=> d!93894 (= (isDefined!767 lt!131148) (not (isEmpty!2779 lt!131148)))))

(declare-fun bs!35511 () Bool)

(assert (= bs!35511 d!93894))

(declare-fun m!410355 () Bool)

(assert (=> bs!35511 m!410355))

(assert (=> b!307458 d!93894))

(declare-fun b!307546 () Bool)

(declare-fun res!139860 () Bool)

(declare-fun e!191287 () Bool)

(assert (=> b!307546 (=> (not res!139860) (not e!191287))))

(declare-fun lt!131185 () Option!928)

(assert (=> b!307546 (= res!139860 (matchR!323 (regex!781 (rule!1394 (_1!2561 (get!1388 lt!131185)))) (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131185))))))))

(declare-fun b!307547 () Bool)

(declare-fun contains!804 (List!4072 Rule!1362) Bool)

(assert (=> b!307547 (= e!191287 (contains!804 rules!1920 (rule!1394 (_1!2561 (get!1388 lt!131185)))))))

(declare-fun b!307548 () Bool)

(declare-fun res!139858 () Bool)

(assert (=> b!307548 (=> (not res!139858) (not e!191287))))

(assert (=> b!307548 (= res!139858 (= (++!1102 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131185)))) (_2!2561 (get!1388 lt!131185))) lt!131150))))

(declare-fun d!93896 () Bool)

(declare-fun e!191289 () Bool)

(assert (=> d!93896 e!191289))

(declare-fun res!139859 () Bool)

(assert (=> d!93896 (=> res!139859 e!191289)))

(assert (=> d!93896 (= res!139859 (isEmpty!2779 lt!131185))))

(declare-fun e!191288 () Option!928)

(assert (=> d!93896 (= lt!131185 e!191288)))

(declare-fun c!58287 () Bool)

(assert (=> d!93896 (= c!58287 (and ((_ is Cons!4062) rules!1920) ((_ is Nil!4062) (t!43304 rules!1920))))))

(declare-fun lt!131188 () Unit!5690)

(declare-fun lt!131187 () Unit!5690)

(assert (=> d!93896 (= lt!131188 lt!131187)))

(assert (=> d!93896 (isPrefix!441 lt!131150 lt!131150)))

(declare-fun lemmaIsPrefixRefl!238 (List!4071 List!4071) Unit!5690)

(assert (=> d!93896 (= lt!131187 (lemmaIsPrefixRefl!238 lt!131150 lt!131150))))

(declare-fun rulesValidInductive!233 (LexerInterface!667 List!4072) Bool)

(assert (=> d!93896 (rulesValidInductive!233 thiss!17480 rules!1920)))

(assert (=> d!93896 (= (maxPrefix!383 thiss!17480 rules!1920 lt!131150) lt!131185)))

(declare-fun call!17831 () Option!928)

(declare-fun bm!17826 () Bool)

(declare-fun maxPrefixOneRule!172 (LexerInterface!667 Rule!1362 List!4071) Option!928)

(assert (=> bm!17826 (= call!17831 (maxPrefixOneRule!172 thiss!17480 (h!9459 rules!1920) lt!131150))))

(declare-fun b!307549 () Bool)

(declare-fun res!139855 () Bool)

(assert (=> b!307549 (=> (not res!139855) (not e!191287))))

(declare-fun size!3246 (List!4071) Int)

(assert (=> b!307549 (= res!139855 (< (size!3246 (_2!2561 (get!1388 lt!131185))) (size!3246 lt!131150)))))

(declare-fun b!307550 () Bool)

(assert (=> b!307550 (= e!191288 call!17831)))

(declare-fun b!307551 () Bool)

(assert (=> b!307551 (= e!191289 e!191287)))

(declare-fun res!139857 () Bool)

(assert (=> b!307551 (=> (not res!139857) (not e!191287))))

(assert (=> b!307551 (= res!139857 (isDefined!767 lt!131185))))

(declare-fun b!307552 () Bool)

(declare-fun res!139856 () Bool)

(assert (=> b!307552 (=> (not res!139856) (not e!191287))))

(declare-fun apply!891 (TokenValueInjection!1378 BalanceConc!2776) TokenValue!803)

(assert (=> b!307552 (= res!139856 (= (value!26574 (_1!2561 (get!1388 lt!131185))) (apply!891 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131185)))) (seqFromList!928 (originalCharacters!824 (_1!2561 (get!1388 lt!131185)))))))))

(declare-fun b!307553 () Bool)

(declare-fun res!139861 () Bool)

(assert (=> b!307553 (=> (not res!139861) (not e!191287))))

(assert (=> b!307553 (= res!139861 (= (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131185)))) (originalCharacters!824 (_1!2561 (get!1388 lt!131185)))))))

(declare-fun b!307554 () Bool)

(declare-fun lt!131186 () Option!928)

(declare-fun lt!131184 () Option!928)

(assert (=> b!307554 (= e!191288 (ite (and ((_ is None!927) lt!131186) ((_ is None!927) lt!131184)) None!927 (ite ((_ is None!927) lt!131184) lt!131186 (ite ((_ is None!927) lt!131186) lt!131184 (ite (>= (size!3243 (_1!2561 (v!14932 lt!131186))) (size!3243 (_1!2561 (v!14932 lt!131184)))) lt!131186 lt!131184)))))))

(assert (=> b!307554 (= lt!131186 call!17831)))

(assert (=> b!307554 (= lt!131184 (maxPrefix!383 thiss!17480 (t!43304 rules!1920) lt!131150))))

(assert (= (and d!93896 c!58287) b!307550))

(assert (= (and d!93896 (not c!58287)) b!307554))

(assert (= (or b!307550 b!307554) bm!17826))

(assert (= (and d!93896 (not res!139859)) b!307551))

(assert (= (and b!307551 res!139857) b!307553))

(assert (= (and b!307553 res!139861) b!307549))

(assert (= (and b!307549 res!139855) b!307548))

(assert (= (and b!307548 res!139858) b!307552))

(assert (= (and b!307552 res!139856) b!307546))

(assert (= (and b!307546 res!139860) b!307547))

(declare-fun m!410395 () Bool)

(assert (=> b!307554 m!410395))

(declare-fun m!410397 () Bool)

(assert (=> b!307548 m!410397))

(declare-fun m!410399 () Bool)

(assert (=> b!307548 m!410399))

(assert (=> b!307548 m!410399))

(declare-fun m!410401 () Bool)

(assert (=> b!307548 m!410401))

(assert (=> b!307548 m!410401))

(declare-fun m!410403 () Bool)

(assert (=> b!307548 m!410403))

(assert (=> b!307553 m!410397))

(assert (=> b!307553 m!410399))

(assert (=> b!307553 m!410399))

(assert (=> b!307553 m!410401))

(assert (=> b!307552 m!410397))

(declare-fun m!410405 () Bool)

(assert (=> b!307552 m!410405))

(assert (=> b!307552 m!410405))

(declare-fun m!410407 () Bool)

(assert (=> b!307552 m!410407))

(assert (=> b!307546 m!410397))

(assert (=> b!307546 m!410399))

(assert (=> b!307546 m!410399))

(assert (=> b!307546 m!410401))

(assert (=> b!307546 m!410401))

(declare-fun m!410409 () Bool)

(assert (=> b!307546 m!410409))

(declare-fun m!410411 () Bool)

(assert (=> bm!17826 m!410411))

(assert (=> b!307547 m!410397))

(declare-fun m!410413 () Bool)

(assert (=> b!307547 m!410413))

(declare-fun m!410415 () Bool)

(assert (=> d!93896 m!410415))

(declare-fun m!410417 () Bool)

(assert (=> d!93896 m!410417))

(declare-fun m!410419 () Bool)

(assert (=> d!93896 m!410419))

(declare-fun m!410421 () Bool)

(assert (=> d!93896 m!410421))

(assert (=> b!307549 m!410397))

(declare-fun m!410423 () Bool)

(assert (=> b!307549 m!410423))

(declare-fun m!410425 () Bool)

(assert (=> b!307549 m!410425))

(declare-fun m!410427 () Bool)

(assert (=> b!307551 m!410427))

(assert (=> b!307458 d!93896))

(declare-fun d!93914 () Bool)

(assert (=> d!93914 (= (isDefined!767 lt!131146) (not (isEmpty!2779 lt!131146)))))

(declare-fun bs!35516 () Bool)

(assert (= bs!35516 d!93914))

(declare-fun m!410429 () Bool)

(assert (=> bs!35516 m!410429))

(assert (=> b!307439 d!93914))

(declare-fun b!307555 () Bool)

(declare-fun res!139867 () Bool)

(declare-fun e!191290 () Bool)

(assert (=> b!307555 (=> (not res!139867) (not e!191290))))

(declare-fun lt!131190 () Option!928)

(assert (=> b!307555 (= res!139867 (matchR!323 (regex!781 (rule!1394 (_1!2561 (get!1388 lt!131190)))) (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131190))))))))

(declare-fun b!307556 () Bool)

(assert (=> b!307556 (= e!191290 (contains!804 rules!1920 (rule!1394 (_1!2561 (get!1388 lt!131190)))))))

(declare-fun b!307557 () Bool)

(declare-fun res!139865 () Bool)

(assert (=> b!307557 (=> (not res!139865) (not e!191290))))

(assert (=> b!307557 (= res!139865 (= (++!1102 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131190)))) (_2!2561 (get!1388 lt!131190))) lt!131156))))

(declare-fun d!93916 () Bool)

(declare-fun e!191292 () Bool)

(assert (=> d!93916 e!191292))

(declare-fun res!139866 () Bool)

(assert (=> d!93916 (=> res!139866 e!191292)))

(assert (=> d!93916 (= res!139866 (isEmpty!2779 lt!131190))))

(declare-fun e!191291 () Option!928)

(assert (=> d!93916 (= lt!131190 e!191291)))

(declare-fun c!58288 () Bool)

(assert (=> d!93916 (= c!58288 (and ((_ is Cons!4062) rules!1920) ((_ is Nil!4062) (t!43304 rules!1920))))))

(declare-fun lt!131193 () Unit!5690)

(declare-fun lt!131192 () Unit!5690)

(assert (=> d!93916 (= lt!131193 lt!131192)))

(assert (=> d!93916 (isPrefix!441 lt!131156 lt!131156)))

(assert (=> d!93916 (= lt!131192 (lemmaIsPrefixRefl!238 lt!131156 lt!131156))))

(assert (=> d!93916 (rulesValidInductive!233 thiss!17480 rules!1920)))

(assert (=> d!93916 (= (maxPrefix!383 thiss!17480 rules!1920 lt!131156) lt!131190)))

(declare-fun bm!17827 () Bool)

(declare-fun call!17832 () Option!928)

(assert (=> bm!17827 (= call!17832 (maxPrefixOneRule!172 thiss!17480 (h!9459 rules!1920) lt!131156))))

(declare-fun b!307558 () Bool)

(declare-fun res!139862 () Bool)

(assert (=> b!307558 (=> (not res!139862) (not e!191290))))

(assert (=> b!307558 (= res!139862 (< (size!3246 (_2!2561 (get!1388 lt!131190))) (size!3246 lt!131156)))))

(declare-fun b!307559 () Bool)

(assert (=> b!307559 (= e!191291 call!17832)))

(declare-fun b!307560 () Bool)

(assert (=> b!307560 (= e!191292 e!191290)))

(declare-fun res!139864 () Bool)

(assert (=> b!307560 (=> (not res!139864) (not e!191290))))

(assert (=> b!307560 (= res!139864 (isDefined!767 lt!131190))))

(declare-fun b!307561 () Bool)

(declare-fun res!139863 () Bool)

(assert (=> b!307561 (=> (not res!139863) (not e!191290))))

(assert (=> b!307561 (= res!139863 (= (value!26574 (_1!2561 (get!1388 lt!131190))) (apply!891 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131190)))) (seqFromList!928 (originalCharacters!824 (_1!2561 (get!1388 lt!131190)))))))))

(declare-fun b!307562 () Bool)

(declare-fun res!139868 () Bool)

(assert (=> b!307562 (=> (not res!139868) (not e!191290))))

(assert (=> b!307562 (= res!139868 (= (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131190)))) (originalCharacters!824 (_1!2561 (get!1388 lt!131190)))))))

(declare-fun b!307563 () Bool)

(declare-fun lt!131191 () Option!928)

(declare-fun lt!131189 () Option!928)

(assert (=> b!307563 (= e!191291 (ite (and ((_ is None!927) lt!131191) ((_ is None!927) lt!131189)) None!927 (ite ((_ is None!927) lt!131189) lt!131191 (ite ((_ is None!927) lt!131191) lt!131189 (ite (>= (size!3243 (_1!2561 (v!14932 lt!131191))) (size!3243 (_1!2561 (v!14932 lt!131189)))) lt!131191 lt!131189)))))))

(assert (=> b!307563 (= lt!131191 call!17832)))

(assert (=> b!307563 (= lt!131189 (maxPrefix!383 thiss!17480 (t!43304 rules!1920) lt!131156))))

(assert (= (and d!93916 c!58288) b!307559))

(assert (= (and d!93916 (not c!58288)) b!307563))

(assert (= (or b!307559 b!307563) bm!17827))

(assert (= (and d!93916 (not res!139866)) b!307560))

(assert (= (and b!307560 res!139864) b!307562))

(assert (= (and b!307562 res!139868) b!307558))

(assert (= (and b!307558 res!139862) b!307557))

(assert (= (and b!307557 res!139865) b!307561))

(assert (= (and b!307561 res!139863) b!307555))

(assert (= (and b!307555 res!139867) b!307556))

(declare-fun m!410431 () Bool)

(assert (=> b!307563 m!410431))

(declare-fun m!410433 () Bool)

(assert (=> b!307557 m!410433))

(declare-fun m!410435 () Bool)

(assert (=> b!307557 m!410435))

(assert (=> b!307557 m!410435))

(declare-fun m!410437 () Bool)

(assert (=> b!307557 m!410437))

(assert (=> b!307557 m!410437))

(declare-fun m!410439 () Bool)

(assert (=> b!307557 m!410439))

(assert (=> b!307562 m!410433))

(assert (=> b!307562 m!410435))

(assert (=> b!307562 m!410435))

(assert (=> b!307562 m!410437))

(assert (=> b!307561 m!410433))

(declare-fun m!410441 () Bool)

(assert (=> b!307561 m!410441))

(assert (=> b!307561 m!410441))

(declare-fun m!410443 () Bool)

(assert (=> b!307561 m!410443))

(assert (=> b!307555 m!410433))

(assert (=> b!307555 m!410435))

(assert (=> b!307555 m!410435))

(assert (=> b!307555 m!410437))

(assert (=> b!307555 m!410437))

(declare-fun m!410445 () Bool)

(assert (=> b!307555 m!410445))

(declare-fun m!410447 () Bool)

(assert (=> bm!17827 m!410447))

(assert (=> b!307556 m!410433))

(declare-fun m!410449 () Bool)

(assert (=> b!307556 m!410449))

(declare-fun m!410451 () Bool)

(assert (=> d!93916 m!410451))

(declare-fun m!410453 () Bool)

(assert (=> d!93916 m!410453))

(declare-fun m!410455 () Bool)

(assert (=> d!93916 m!410455))

(assert (=> d!93916 m!410421))

(assert (=> b!307558 m!410433))

(declare-fun m!410457 () Bool)

(assert (=> b!307558 m!410457))

(declare-fun m!410459 () Bool)

(assert (=> b!307558 m!410459))

(declare-fun m!410461 () Bool)

(assert (=> b!307560 m!410461))

(assert (=> b!307439 d!93916))

(declare-fun d!93918 () Bool)

(declare-fun c!58293 () Bool)

(assert (=> d!93918 (= c!58293 ((_ is IntegerValue!2409) (value!26574 separatorToken!170)))))

(declare-fun e!191299 () Bool)

(assert (=> d!93918 (= (inv!21 (value!26574 separatorToken!170)) e!191299)))

(declare-fun b!307574 () Bool)

(declare-fun inv!16 (TokenValue!803) Bool)

(assert (=> b!307574 (= e!191299 (inv!16 (value!26574 separatorToken!170)))))

(declare-fun b!307575 () Bool)

(declare-fun e!191300 () Bool)

(declare-fun inv!15 (TokenValue!803) Bool)

(assert (=> b!307575 (= e!191300 (inv!15 (value!26574 separatorToken!170)))))

(declare-fun b!307576 () Bool)

(declare-fun e!191301 () Bool)

(declare-fun inv!17 (TokenValue!803) Bool)

(assert (=> b!307576 (= e!191301 (inv!17 (value!26574 separatorToken!170)))))

(declare-fun b!307577 () Bool)

(assert (=> b!307577 (= e!191299 e!191301)))

(declare-fun c!58294 () Bool)

(assert (=> b!307577 (= c!58294 ((_ is IntegerValue!2410) (value!26574 separatorToken!170)))))

(declare-fun b!307578 () Bool)

(declare-fun res!139871 () Bool)

(assert (=> b!307578 (=> res!139871 e!191300)))

(assert (=> b!307578 (= res!139871 (not ((_ is IntegerValue!2411) (value!26574 separatorToken!170))))))

(assert (=> b!307578 (= e!191301 e!191300)))

(assert (= (and d!93918 c!58293) b!307574))

(assert (= (and d!93918 (not c!58293)) b!307577))

(assert (= (and b!307577 c!58294) b!307576))

(assert (= (and b!307577 (not c!58294)) b!307578))

(assert (= (and b!307578 (not res!139871)) b!307575))

(declare-fun m!410463 () Bool)

(assert (=> b!307574 m!410463))

(declare-fun m!410465 () Bool)

(assert (=> b!307575 m!410465))

(declare-fun m!410467 () Bool)

(assert (=> b!307576 m!410467))

(assert (=> b!307441 d!93918))

(declare-fun d!93920 () Bool)

(declare-fun res!139876 () Bool)

(declare-fun e!191304 () Bool)

(assert (=> d!93920 (=> (not res!139876) (not e!191304))))

(assert (=> d!93920 (= res!139876 (not (isEmpty!2775 (originalCharacters!824 (h!9460 tokens!465)))))))

(assert (=> d!93920 (= (inv!5016 (h!9460 tokens!465)) e!191304)))

(declare-fun b!307583 () Bool)

(declare-fun res!139877 () Bool)

(assert (=> b!307583 (=> (not res!139877) (not e!191304))))

(declare-fun dynLambda!2224 (Int TokenValue!803) BalanceConc!2776)

(assert (=> b!307583 (= res!139877 (= (originalCharacters!824 (h!9460 tokens!465)) (list!1713 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (value!26574 (h!9460 tokens!465))))))))

(declare-fun b!307584 () Bool)

(assert (=> b!307584 (= e!191304 (= (size!3243 (h!9460 tokens!465)) (size!3246 (originalCharacters!824 (h!9460 tokens!465)))))))

(assert (= (and d!93920 res!139876) b!307583))

(assert (= (and b!307583 res!139877) b!307584))

(declare-fun b_lambda!10669 () Bool)

(assert (=> (not b_lambda!10669) (not b!307583)))

(declare-fun tb!19351 () Bool)

(declare-fun t!43317 () Bool)

(assert (=> (and b!307440 (= (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465))))) t!43317) tb!19351))

(declare-fun b!307589 () Bool)

(declare-fun e!191307 () Bool)

(declare-fun tp!108975 () Bool)

(declare-fun inv!5019 (Conc!1384) Bool)

(assert (=> b!307589 (= e!191307 (and (inv!5019 (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (value!26574 (h!9460 tokens!465))))) tp!108975))))

(declare-fun result!23336 () Bool)

(declare-fun inv!5020 (BalanceConc!2776) Bool)

(assert (=> tb!19351 (= result!23336 (and (inv!5020 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (value!26574 (h!9460 tokens!465)))) e!191307))))

(assert (= tb!19351 b!307589))

(declare-fun m!410469 () Bool)

(assert (=> b!307589 m!410469))

(declare-fun m!410471 () Bool)

(assert (=> tb!19351 m!410471))

(assert (=> b!307583 t!43317))

(declare-fun b_and!25983 () Bool)

(assert (= b_and!25967 (and (=> t!43317 result!23336) b_and!25983)))

(declare-fun tb!19353 () Bool)

(declare-fun t!43319 () Bool)

(assert (=> (and b!307444 (= (toChars!1399 (transformation!781 (h!9459 rules!1920))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465))))) t!43319) tb!19353))

(declare-fun result!23340 () Bool)

(assert (= result!23340 result!23336))

(assert (=> b!307583 t!43319))

(declare-fun b_and!25985 () Bool)

(assert (= b_and!25971 (and (=> t!43319 result!23340) b_and!25985)))

(declare-fun t!43321 () Bool)

(declare-fun tb!19355 () Bool)

(assert (=> (and b!307455 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465))))) t!43321) tb!19355))

(declare-fun result!23342 () Bool)

(assert (= result!23342 result!23336))

(assert (=> b!307583 t!43321))

(declare-fun b_and!25987 () Bool)

(assert (= b_and!25975 (and (=> t!43321 result!23342) b_and!25987)))

(declare-fun m!410473 () Bool)

(assert (=> d!93920 m!410473))

(declare-fun m!410475 () Bool)

(assert (=> b!307583 m!410475))

(assert (=> b!307583 m!410475))

(declare-fun m!410477 () Bool)

(assert (=> b!307583 m!410477))

(declare-fun m!410479 () Bool)

(assert (=> b!307584 m!410479))

(assert (=> b!307462 d!93920))

(declare-fun bs!35524 () Bool)

(declare-fun d!93922 () Bool)

(assert (= bs!35524 (and d!93922 b!307466)))

(declare-fun lambda!10508 () Int)

(assert (=> bs!35524 (not (= lambda!10508 lambda!10491))))

(declare-fun bs!35525 () Bool)

(assert (= bs!35525 (and d!93922 b!307468)))

(assert (=> bs!35525 (= lambda!10508 lambda!10492)))

(declare-fun b!307631 () Bool)

(declare-fun e!191337 () Bool)

(assert (=> b!307631 (= e!191337 true)))

(declare-fun b!307630 () Bool)

(declare-fun e!191336 () Bool)

(assert (=> b!307630 (= e!191336 e!191337)))

(declare-fun b!307629 () Bool)

(declare-fun e!191335 () Bool)

(assert (=> b!307629 (= e!191335 e!191336)))

(assert (=> d!93922 e!191335))

(assert (= b!307630 b!307631))

(assert (= b!307629 b!307630))

(assert (= (and d!93922 ((_ is Cons!4062) rules!1920)) b!307629))

(assert (=> b!307631 (< (dynLambda!2219 order!3297 (toValue!1540 (transformation!781 (h!9459 rules!1920)))) (dynLambda!2220 order!3299 lambda!10508))))

(assert (=> b!307631 (< (dynLambda!2221 order!3301 (toChars!1399 (transformation!781 (h!9459 rules!1920)))) (dynLambda!2220 order!3299 lambda!10508))))

(assert (=> d!93922 true))

(declare-fun e!191334 () Bool)

(assert (=> d!93922 e!191334))

(declare-fun res!139889 () Bool)

(assert (=> d!93922 (=> (not res!139889) (not e!191334))))

(declare-fun lt!131238 () Bool)

(declare-fun list!1716 (BalanceConc!2778) List!4073)

(assert (=> d!93922 (= res!139889 (= lt!131238 (forall!1072 (list!1716 lt!131159) lambda!10508)))))

(declare-fun forall!1074 (BalanceConc!2778 Int) Bool)

(assert (=> d!93922 (= lt!131238 (forall!1074 lt!131159 lambda!10508))))

(assert (=> d!93922 (not (isEmpty!2776 rules!1920))))

(assert (=> d!93922 (= (rulesProduceEachTokenIndividually!459 thiss!17480 rules!1920 lt!131159) lt!131238)))

(declare-fun b!307628 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!267 (LexerInterface!667 List!4072 List!4073) Bool)

(assert (=> b!307628 (= e!191334 (= lt!131238 (rulesProduceEachTokenIndividuallyList!267 thiss!17480 rules!1920 (list!1716 lt!131159))))))

(assert (= (and d!93922 res!139889) b!307628))

(declare-fun m!410539 () Bool)

(assert (=> d!93922 m!410539))

(assert (=> d!93922 m!410539))

(declare-fun m!410541 () Bool)

(assert (=> d!93922 m!410541))

(declare-fun m!410543 () Bool)

(assert (=> d!93922 m!410543))

(assert (=> d!93922 m!410327))

(assert (=> b!307628 m!410539))

(assert (=> b!307628 m!410539))

(declare-fun m!410545 () Bool)

(assert (=> b!307628 m!410545))

(assert (=> b!307442 d!93922))

(declare-fun d!93926 () Bool)

(declare-fun fromListB!386 (List!4073) BalanceConc!2778)

(assert (=> d!93926 (= (seqFromList!927 tokens!465) (fromListB!386 tokens!465))))

(declare-fun bs!35526 () Bool)

(assert (= bs!35526 d!93926))

(declare-fun m!410547 () Bool)

(assert (=> bs!35526 m!410547))

(assert (=> b!307442 d!93926))

(declare-fun d!93928 () Bool)

(declare-fun lt!131244 () Bool)

(declare-fun e!191342 () Bool)

(assert (=> d!93928 (= lt!131244 e!191342)))

(declare-fun res!139898 () Bool)

(assert (=> d!93928 (=> (not res!139898) (not e!191342))))

(assert (=> d!93928 (= res!139898 (= (list!1716 (_1!2562 (lex!459 thiss!17480 rules!1920 (print!392 thiss!17480 (singletonSeq!327 separatorToken!170))))) (list!1716 (singletonSeq!327 separatorToken!170))))))

(declare-fun e!191343 () Bool)

(assert (=> d!93928 (= lt!131244 e!191343)))

(declare-fun res!139896 () Bool)

(assert (=> d!93928 (=> (not res!139896) (not e!191343))))

(declare-fun lt!131243 () tuple2!4692)

(declare-fun size!3247 (BalanceConc!2778) Int)

(assert (=> d!93928 (= res!139896 (= (size!3247 (_1!2562 lt!131243)) 1))))

(assert (=> d!93928 (= lt!131243 (lex!459 thiss!17480 rules!1920 (print!392 thiss!17480 (singletonSeq!327 separatorToken!170))))))

(assert (=> d!93928 (not (isEmpty!2776 rules!1920))))

(assert (=> d!93928 (= (rulesProduceIndividualToken!416 thiss!17480 rules!1920 separatorToken!170) lt!131244)))

(declare-fun b!307638 () Bool)

(declare-fun res!139897 () Bool)

(assert (=> b!307638 (=> (not res!139897) (not e!191343))))

(declare-fun apply!892 (BalanceConc!2778 Int) Token!1306)

(assert (=> b!307638 (= res!139897 (= (apply!892 (_1!2562 lt!131243) 0) separatorToken!170))))

(declare-fun b!307639 () Bool)

(declare-fun isEmpty!2782 (BalanceConc!2776) Bool)

(assert (=> b!307639 (= e!191343 (isEmpty!2782 (_2!2562 lt!131243)))))

(declare-fun b!307640 () Bool)

(assert (=> b!307640 (= e!191342 (isEmpty!2782 (_2!2562 (lex!459 thiss!17480 rules!1920 (print!392 thiss!17480 (singletonSeq!327 separatorToken!170))))))))

(assert (= (and d!93928 res!139896) b!307638))

(assert (= (and b!307638 res!139897) b!307639))

(assert (= (and d!93928 res!139898) b!307640))

(assert (=> d!93928 m!410327))

(declare-fun m!410549 () Bool)

(assert (=> d!93928 m!410549))

(declare-fun m!410551 () Bool)

(assert (=> d!93928 m!410551))

(declare-fun m!410553 () Bool)

(assert (=> d!93928 m!410553))

(declare-fun m!410555 () Bool)

(assert (=> d!93928 m!410555))

(declare-fun m!410557 () Bool)

(assert (=> d!93928 m!410557))

(assert (=> d!93928 m!410555))

(declare-fun m!410559 () Bool)

(assert (=> d!93928 m!410559))

(assert (=> d!93928 m!410555))

(assert (=> d!93928 m!410549))

(declare-fun m!410561 () Bool)

(assert (=> b!307638 m!410561))

(declare-fun m!410563 () Bool)

(assert (=> b!307639 m!410563))

(assert (=> b!307640 m!410555))

(assert (=> b!307640 m!410555))

(assert (=> b!307640 m!410549))

(assert (=> b!307640 m!410549))

(assert (=> b!307640 m!410551))

(declare-fun m!410565 () Bool)

(assert (=> b!307640 m!410565))

(assert (=> b!307463 d!93928))

(declare-fun d!93930 () Bool)

(declare-fun res!139899 () Bool)

(declare-fun e!191344 () Bool)

(assert (=> d!93930 (=> (not res!139899) (not e!191344))))

(assert (=> d!93930 (= res!139899 (not (isEmpty!2775 (originalCharacters!824 separatorToken!170))))))

(assert (=> d!93930 (= (inv!5016 separatorToken!170) e!191344)))

(declare-fun b!307641 () Bool)

(declare-fun res!139900 () Bool)

(assert (=> b!307641 (=> (not res!139900) (not e!191344))))

(assert (=> b!307641 (= res!139900 (= (originalCharacters!824 separatorToken!170) (list!1713 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (value!26574 separatorToken!170)))))))

(declare-fun b!307642 () Bool)

(assert (=> b!307642 (= e!191344 (= (size!3243 separatorToken!170) (size!3246 (originalCharacters!824 separatorToken!170))))))

(assert (= (and d!93930 res!139899) b!307641))

(assert (= (and b!307641 res!139900) b!307642))

(declare-fun b_lambda!10671 () Bool)

(assert (=> (not b_lambda!10671) (not b!307641)))

(declare-fun t!43332 () Bool)

(declare-fun tb!19357 () Bool)

(assert (=> (and b!307440 (= (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (toChars!1399 (transformation!781 (rule!1394 separatorToken!170)))) t!43332) tb!19357))

(declare-fun b!307643 () Bool)

(declare-fun e!191345 () Bool)

(declare-fun tp!108976 () Bool)

(assert (=> b!307643 (= e!191345 (and (inv!5019 (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (value!26574 separatorToken!170)))) tp!108976))))

(declare-fun result!23344 () Bool)

(assert (=> tb!19357 (= result!23344 (and (inv!5020 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (value!26574 separatorToken!170))) e!191345))))

(assert (= tb!19357 b!307643))

(declare-fun m!410567 () Bool)

(assert (=> b!307643 m!410567))

(declare-fun m!410569 () Bool)

(assert (=> tb!19357 m!410569))

(assert (=> b!307641 t!43332))

(declare-fun b_and!25989 () Bool)

(assert (= b_and!25983 (and (=> t!43332 result!23344) b_and!25989)))

(declare-fun t!43334 () Bool)

(declare-fun tb!19359 () Bool)

(assert (=> (and b!307444 (= (toChars!1399 (transformation!781 (h!9459 rules!1920))) (toChars!1399 (transformation!781 (rule!1394 separatorToken!170)))) t!43334) tb!19359))

(declare-fun result!23346 () Bool)

(assert (= result!23346 result!23344))

(assert (=> b!307641 t!43334))

(declare-fun b_and!25991 () Bool)

(assert (= b_and!25985 (and (=> t!43334 result!23346) b_and!25991)))

(declare-fun t!43336 () Bool)

(declare-fun tb!19361 () Bool)

(assert (=> (and b!307455 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (toChars!1399 (transformation!781 (rule!1394 separatorToken!170)))) t!43336) tb!19361))

(declare-fun result!23348 () Bool)

(assert (= result!23348 result!23344))

(assert (=> b!307641 t!43336))

(declare-fun b_and!25993 () Bool)

(assert (= b_and!25987 (and (=> t!43336 result!23348) b_and!25993)))

(declare-fun m!410571 () Bool)

(assert (=> d!93930 m!410571))

(declare-fun m!410573 () Bool)

(assert (=> b!307641 m!410573))

(assert (=> b!307641 m!410573))

(declare-fun m!410575 () Bool)

(assert (=> b!307641 m!410575))

(declare-fun m!410577 () Bool)

(assert (=> b!307642 m!410577))

(assert (=> start!33086 d!93930))

(declare-fun d!93932 () Bool)

(assert (=> d!93932 (= (get!1388 lt!131146) (v!14932 lt!131146))))

(assert (=> b!307443 d!93932))

(declare-fun d!93934 () Bool)

(assert (=> d!93934 (= (head!966 tokens!465) (h!9460 tokens!465))))

(assert (=> b!307443 d!93934))

(declare-fun d!93936 () Bool)

(assert (=> d!93936 (= (isEmpty!2775 (_2!2561 lt!131167)) ((_ is Nil!4061) (_2!2561 lt!131167)))))

(assert (=> b!307445 d!93936))

(declare-fun d!93938 () Bool)

(declare-fun res!139905 () Bool)

(declare-fun e!191350 () Bool)

(assert (=> d!93938 (=> res!139905 e!191350)))

(assert (=> d!93938 (= res!139905 ((_ is Nil!4063) tokens!465))))

(assert (=> d!93938 (= (forall!1072 tokens!465 lambda!10491) e!191350)))

(declare-fun b!307648 () Bool)

(declare-fun e!191351 () Bool)

(assert (=> b!307648 (= e!191350 e!191351)))

(declare-fun res!139906 () Bool)

(assert (=> b!307648 (=> (not res!139906) (not e!191351))))

(declare-fun dynLambda!2225 (Int Token!1306) Bool)

(assert (=> b!307648 (= res!139906 (dynLambda!2225 lambda!10491 (h!9460 tokens!465)))))

(declare-fun b!307649 () Bool)

(assert (=> b!307649 (= e!191351 (forall!1072 (t!43305 tokens!465) lambda!10491))))

(assert (= (and d!93938 (not res!139905)) b!307648))

(assert (= (and b!307648 res!139906) b!307649))

(declare-fun b_lambda!10673 () Bool)

(assert (=> (not b_lambda!10673) (not b!307648)))

(declare-fun m!410579 () Bool)

(assert (=> b!307648 m!410579))

(declare-fun m!410581 () Bool)

(assert (=> b!307649 m!410581))

(assert (=> b!307466 d!93938))

(declare-fun d!93940 () Bool)

(declare-fun lt!131246 () Bool)

(declare-fun e!191352 () Bool)

(assert (=> d!93940 (= lt!131246 e!191352)))

(declare-fun res!139909 () Bool)

(assert (=> d!93940 (=> (not res!139909) (not e!191352))))

(assert (=> d!93940 (= res!139909 (= (list!1716 (_1!2562 (lex!459 thiss!17480 rules!1920 (print!392 thiss!17480 (singletonSeq!327 (h!9460 tokens!465)))))) (list!1716 (singletonSeq!327 (h!9460 tokens!465)))))))

(declare-fun e!191353 () Bool)

(assert (=> d!93940 (= lt!131246 e!191353)))

(declare-fun res!139907 () Bool)

(assert (=> d!93940 (=> (not res!139907) (not e!191353))))

(declare-fun lt!131245 () tuple2!4692)

(assert (=> d!93940 (= res!139907 (= (size!3247 (_1!2562 lt!131245)) 1))))

(assert (=> d!93940 (= lt!131245 (lex!459 thiss!17480 rules!1920 (print!392 thiss!17480 (singletonSeq!327 (h!9460 tokens!465)))))))

(assert (=> d!93940 (not (isEmpty!2776 rules!1920))))

(assert (=> d!93940 (= (rulesProduceIndividualToken!416 thiss!17480 rules!1920 (h!9460 tokens!465)) lt!131246)))

(declare-fun b!307650 () Bool)

(declare-fun res!139908 () Bool)

(assert (=> b!307650 (=> (not res!139908) (not e!191353))))

(assert (=> b!307650 (= res!139908 (= (apply!892 (_1!2562 lt!131245) 0) (h!9460 tokens!465)))))

(declare-fun b!307651 () Bool)

(assert (=> b!307651 (= e!191353 (isEmpty!2782 (_2!2562 lt!131245)))))

(declare-fun b!307652 () Bool)

(assert (=> b!307652 (= e!191352 (isEmpty!2782 (_2!2562 (lex!459 thiss!17480 rules!1920 (print!392 thiss!17480 (singletonSeq!327 (h!9460 tokens!465)))))))))

(assert (= (and d!93940 res!139907) b!307650))

(assert (= (and b!307650 res!139908) b!307651))

(assert (= (and d!93940 res!139909) b!307652))

(assert (=> d!93940 m!410327))

(declare-fun m!410583 () Bool)

(assert (=> d!93940 m!410583))

(declare-fun m!410585 () Bool)

(assert (=> d!93940 m!410585))

(declare-fun m!410587 () Bool)

(assert (=> d!93940 m!410587))

(assert (=> d!93940 m!410261))

(declare-fun m!410589 () Bool)

(assert (=> d!93940 m!410589))

(assert (=> d!93940 m!410261))

(declare-fun m!410591 () Bool)

(assert (=> d!93940 m!410591))

(assert (=> d!93940 m!410261))

(assert (=> d!93940 m!410583))

(declare-fun m!410593 () Bool)

(assert (=> b!307650 m!410593))

(declare-fun m!410595 () Bool)

(assert (=> b!307651 m!410595))

(assert (=> b!307652 m!410261))

(assert (=> b!307652 m!410261))

(assert (=> b!307652 m!410583))

(assert (=> b!307652 m!410583))

(assert (=> b!307652 m!410585))

(declare-fun m!410597 () Bool)

(assert (=> b!307652 m!410597))

(assert (=> b!307446 d!93940))

(declare-fun d!93942 () Bool)

(declare-fun list!1717 (Conc!1384) List!4071)

(assert (=> d!93942 (= (list!1713 (seqFromList!928 lt!131156)) (list!1717 (c!58276 (seqFromList!928 lt!131156))))))

(declare-fun bs!35527 () Bool)

(assert (= bs!35527 d!93942))

(declare-fun m!410599 () Bool)

(assert (=> bs!35527 m!410599))

(assert (=> b!307467 d!93942))

(declare-fun d!93944 () Bool)

(declare-fun fromListB!387 (List!4071) BalanceConc!2776)

(assert (=> d!93944 (= (seqFromList!928 lt!131156) (fromListB!387 lt!131156))))

(declare-fun bs!35528 () Bool)

(assert (= bs!35528 d!93944))

(declare-fun m!410601 () Bool)

(assert (=> bs!35528 m!410601))

(assert (=> b!307467 d!93944))

(declare-fun d!93946 () Bool)

(declare-fun res!139912 () Bool)

(declare-fun e!191362 () Bool)

(assert (=> d!93946 (=> (not res!139912) (not e!191362))))

(declare-fun rulesValid!258 (LexerInterface!667 List!4072) Bool)

(assert (=> d!93946 (= res!139912 (rulesValid!258 thiss!17480 rules!1920))))

(assert (=> d!93946 (= (rulesInvariant!633 thiss!17480 rules!1920) e!191362)))

(declare-fun b!307667 () Bool)

(declare-datatypes ((List!4075 0))(
  ( (Nil!4065) (Cons!4065 (h!9462 String!5095) (t!43371 List!4075)) )
))
(declare-fun noDuplicateTag!258 (LexerInterface!667 List!4072 List!4075) Bool)

(assert (=> b!307667 (= e!191362 (noDuplicateTag!258 thiss!17480 rules!1920 Nil!4065))))

(assert (= (and d!93946 res!139912) b!307667))

(declare-fun m!410603 () Bool)

(assert (=> d!93946 m!410603))

(declare-fun m!410605 () Bool)

(assert (=> b!307667 m!410605))

(assert (=> b!307469 d!93946))

(declare-fun d!93948 () Bool)

(declare-fun c!58313 () Bool)

(assert (=> d!93948 (= c!58313 ((_ is IntegerValue!2409) (value!26574 (h!9460 tokens!465))))))

(declare-fun e!191363 () Bool)

(assert (=> d!93948 (= (inv!21 (value!26574 (h!9460 tokens!465))) e!191363)))

(declare-fun b!307668 () Bool)

(assert (=> b!307668 (= e!191363 (inv!16 (value!26574 (h!9460 tokens!465))))))

(declare-fun b!307669 () Bool)

(declare-fun e!191364 () Bool)

(assert (=> b!307669 (= e!191364 (inv!15 (value!26574 (h!9460 tokens!465))))))

(declare-fun b!307670 () Bool)

(declare-fun e!191365 () Bool)

(assert (=> b!307670 (= e!191365 (inv!17 (value!26574 (h!9460 tokens!465))))))

(declare-fun b!307671 () Bool)

(assert (=> b!307671 (= e!191363 e!191365)))

(declare-fun c!58314 () Bool)

(assert (=> b!307671 (= c!58314 ((_ is IntegerValue!2410) (value!26574 (h!9460 tokens!465))))))

(declare-fun b!307672 () Bool)

(declare-fun res!139913 () Bool)

(assert (=> b!307672 (=> res!139913 e!191364)))

(assert (=> b!307672 (= res!139913 (not ((_ is IntegerValue!2411) (value!26574 (h!9460 tokens!465)))))))

(assert (=> b!307672 (= e!191365 e!191364)))

(assert (= (and d!93948 c!58313) b!307668))

(assert (= (and d!93948 (not c!58313)) b!307671))

(assert (= (and b!307671 c!58314) b!307670))

(assert (= (and b!307671 (not c!58314)) b!307672))

(assert (= (and b!307672 (not res!139913)) b!307669))

(declare-fun m!410607 () Bool)

(assert (=> b!307668 m!410607))

(declare-fun m!410609 () Bool)

(assert (=> b!307669 m!410609))

(declare-fun m!410611 () Bool)

(assert (=> b!307670 m!410611))

(assert (=> b!307447 d!93948))

(declare-fun d!93950 () Bool)

(declare-fun isEmpty!2784 (Option!929) Bool)

(assert (=> d!93950 (= (isDefined!768 (maxPrefixZipperSequence!346 thiss!17480 rules!1920 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465))))) (not (isEmpty!2784 (maxPrefixZipperSequence!346 thiss!17480 rules!1920 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465)))))))))

(declare-fun bs!35529 () Bool)

(assert (= bs!35529 d!93950))

(assert (=> bs!35529 m!410349))

(declare-fun m!410613 () Bool)

(assert (=> bs!35529 m!410613))

(assert (=> b!307468 d!93950))

(declare-fun b!307716 () Bool)

(declare-fun e!191397 () Bool)

(declare-fun e!191396 () Bool)

(assert (=> b!307716 (= e!191397 e!191396)))

(declare-fun res!139931 () Bool)

(assert (=> b!307716 (=> res!139931 e!191396)))

(declare-fun lt!131283 () Option!929)

(assert (=> b!307716 (= res!139931 (not (isDefined!768 lt!131283)))))

(declare-fun b!307717 () Bool)

(declare-fun e!191395 () Bool)

(declare-fun e!191398 () Bool)

(assert (=> b!307717 (= e!191395 e!191398)))

(declare-fun res!139936 () Bool)

(assert (=> b!307717 (=> (not res!139936) (not e!191398))))

(declare-fun get!1390 (Option!929) tuple2!4694)

(declare-fun maxPrefixZipper!143 (LexerInterface!667 List!4072 List!4071) Option!928)

(assert (=> b!307717 (= res!139936 (= (_1!2563 (get!1390 lt!131283)) (_1!2561 (get!1388 (maxPrefixZipper!143 thiss!17480 rules!1920 (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465)))))))))))

(declare-fun b!307718 () Bool)

(declare-fun e!191399 () Bool)

(assert (=> b!307718 (= e!191396 e!191399)))

(declare-fun res!139934 () Bool)

(assert (=> b!307718 (=> (not res!139934) (not e!191399))))

(assert (=> b!307718 (= res!139934 (= (_1!2563 (get!1390 lt!131283)) (_1!2561 (get!1388 (maxPrefix!383 thiss!17480 rules!1920 (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465)))))))))))

(declare-fun d!93952 () Bool)

(assert (=> d!93952 e!191397))

(declare-fun res!139933 () Bool)

(assert (=> d!93952 (=> (not res!139933) (not e!191397))))

(assert (=> d!93952 (= res!139933 (= (isDefined!768 lt!131283) (isDefined!767 (maxPrefixZipper!143 thiss!17480 rules!1920 (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465))))))))))

(declare-fun e!191400 () Option!929)

(assert (=> d!93952 (= lt!131283 e!191400)))

(declare-fun c!58326 () Bool)

(assert (=> d!93952 (= c!58326 (and ((_ is Cons!4062) rules!1920) ((_ is Nil!4062) (t!43304 rules!1920))))))

(declare-fun lt!131285 () Unit!5690)

(declare-fun lt!131279 () Unit!5690)

(assert (=> d!93952 (= lt!131285 lt!131279)))

(declare-fun lt!131284 () List!4071)

(declare-fun lt!131282 () List!4071)

(assert (=> d!93952 (isPrefix!441 lt!131284 lt!131282)))

(assert (=> d!93952 (= lt!131279 (lemmaIsPrefixRefl!238 lt!131284 lt!131282))))

(assert (=> d!93952 (= lt!131282 (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465)))))))

(assert (=> d!93952 (= lt!131284 (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465)))))))

(assert (=> d!93952 (rulesValidInductive!233 thiss!17480 rules!1920)))

(assert (=> d!93952 (= (maxPrefixZipperSequence!346 thiss!17480 rules!1920 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465)))) lt!131283)))

(declare-fun b!307719 () Bool)

(assert (=> b!307719 (= e!191399 (= (list!1713 (_2!2563 (get!1390 lt!131283))) (_2!2561 (get!1388 (maxPrefix!383 thiss!17480 rules!1920 (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465)))))))))))

(declare-fun bm!17860 () Bool)

(declare-fun call!17865 () Option!929)

(declare-fun maxPrefixOneRuleZipperSequence!144 (LexerInterface!667 Rule!1362 BalanceConc!2776) Option!929)

(assert (=> bm!17860 (= call!17865 (maxPrefixOneRuleZipperSequence!144 thiss!17480 (h!9459 rules!1920) (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465)))))))

(declare-fun b!307720 () Bool)

(declare-fun res!139935 () Bool)

(assert (=> b!307720 (=> (not res!139935) (not e!191397))))

(assert (=> b!307720 (= res!139935 e!191395)))

(declare-fun res!139932 () Bool)

(assert (=> b!307720 (=> res!139932 e!191395)))

(assert (=> b!307720 (= res!139932 (not (isDefined!768 lt!131283)))))

(declare-fun b!307721 () Bool)

(assert (=> b!307721 (= e!191398 (= (list!1713 (_2!2563 (get!1390 lt!131283))) (_2!2561 (get!1388 (maxPrefixZipper!143 thiss!17480 rules!1920 (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465)))))))))))

(declare-fun b!307722 () Bool)

(assert (=> b!307722 (= e!191400 call!17865)))

(declare-fun b!307723 () Bool)

(declare-fun lt!131280 () Option!929)

(declare-fun lt!131281 () Option!929)

(assert (=> b!307723 (= e!191400 (ite (and ((_ is None!928) lt!131280) ((_ is None!928) lt!131281)) None!928 (ite ((_ is None!928) lt!131281) lt!131280 (ite ((_ is None!928) lt!131280) lt!131281 (ite (>= (size!3243 (_1!2563 (v!14933 lt!131280))) (size!3243 (_1!2563 (v!14933 lt!131281)))) lt!131280 lt!131281)))))))

(assert (=> b!307723 (= lt!131280 call!17865)))

(assert (=> b!307723 (= lt!131281 (maxPrefixZipperSequence!346 thiss!17480 (t!43304 rules!1920) (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465)))))))

(assert (= (and d!93952 c!58326) b!307722))

(assert (= (and d!93952 (not c!58326)) b!307723))

(assert (= (or b!307722 b!307723) bm!17860))

(assert (= (and d!93952 res!139933) b!307720))

(assert (= (and b!307720 (not res!139932)) b!307717))

(assert (= (and b!307717 res!139936) b!307721))

(assert (= (and b!307720 res!139935) b!307716))

(assert (= (and b!307716 (not res!139931)) b!307718))

(assert (= (and b!307718 res!139934) b!307719))

(declare-fun m!410651 () Bool)

(assert (=> b!307717 m!410651))

(assert (=> b!307717 m!410347))

(declare-fun m!410653 () Bool)

(assert (=> b!307717 m!410653))

(assert (=> b!307717 m!410653))

(declare-fun m!410655 () Bool)

(assert (=> b!307717 m!410655))

(assert (=> b!307717 m!410655))

(declare-fun m!410657 () Bool)

(assert (=> b!307717 m!410657))

(assert (=> b!307721 m!410655))

(assert (=> b!307721 m!410657))

(assert (=> b!307721 m!410653))

(assert (=> b!307721 m!410655))

(assert (=> b!307721 m!410651))

(declare-fun m!410659 () Bool)

(assert (=> b!307721 m!410659))

(assert (=> b!307721 m!410347))

(assert (=> b!307721 m!410653))

(assert (=> bm!17860 m!410347))

(declare-fun m!410661 () Bool)

(assert (=> bm!17860 m!410661))

(assert (=> b!307723 m!410347))

(declare-fun m!410663 () Bool)

(assert (=> b!307723 m!410663))

(declare-fun m!410665 () Bool)

(assert (=> b!307716 m!410665))

(assert (=> b!307720 m!410665))

(assert (=> b!307719 m!410653))

(declare-fun m!410667 () Bool)

(assert (=> b!307719 m!410667))

(assert (=> b!307719 m!410651))

(assert (=> b!307719 m!410659))

(assert (=> b!307719 m!410347))

(assert (=> b!307719 m!410653))

(assert (=> b!307719 m!410667))

(declare-fun m!410669 () Bool)

(assert (=> b!307719 m!410669))

(declare-fun m!410671 () Bool)

(assert (=> d!93952 m!410671))

(assert (=> d!93952 m!410665))

(assert (=> d!93952 m!410655))

(declare-fun m!410673 () Bool)

(assert (=> d!93952 m!410673))

(assert (=> d!93952 m!410653))

(assert (=> d!93952 m!410655))

(assert (=> d!93952 m!410421))

(declare-fun m!410675 () Bool)

(assert (=> d!93952 m!410675))

(assert (=> d!93952 m!410347))

(assert (=> d!93952 m!410653))

(assert (=> b!307718 m!410651))

(assert (=> b!307718 m!410347))

(assert (=> b!307718 m!410653))

(assert (=> b!307718 m!410653))

(assert (=> b!307718 m!410667))

(assert (=> b!307718 m!410667))

(assert (=> b!307718 m!410669))

(assert (=> b!307468 d!93952))

(declare-fun d!93962 () Bool)

(assert (=> d!93962 (= (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465))) (fromListB!387 (originalCharacters!824 (h!9460 tokens!465))))))

(declare-fun bs!35535 () Bool)

(assert (= bs!35535 d!93962))

(declare-fun m!410677 () Bool)

(assert (=> bs!35535 m!410677))

(assert (=> b!307468 d!93962))

(declare-fun d!93964 () Bool)

(assert (=> d!93964 (dynLambda!2225 lambda!10492 (h!9460 tokens!465))))

(declare-fun lt!131288 () Unit!5690)

(declare-fun choose!2691 (List!4073 Int Token!1306) Unit!5690)

(assert (=> d!93964 (= lt!131288 (choose!2691 tokens!465 lambda!10492 (h!9460 tokens!465)))))

(declare-fun e!191403 () Bool)

(assert (=> d!93964 e!191403))

(declare-fun res!139939 () Bool)

(assert (=> d!93964 (=> (not res!139939) (not e!191403))))

(assert (=> d!93964 (= res!139939 (forall!1072 tokens!465 lambda!10492))))

(assert (=> d!93964 (= (forallContained!334 tokens!465 lambda!10492 (h!9460 tokens!465)) lt!131288)))

(declare-fun b!307726 () Bool)

(assert (=> b!307726 (= e!191403 (contains!803 tokens!465 (h!9460 tokens!465)))))

(assert (= (and d!93964 res!139939) b!307726))

(declare-fun b_lambda!10677 () Bool)

(assert (=> (not b_lambda!10677) (not d!93964)))

(declare-fun m!410679 () Bool)

(assert (=> d!93964 m!410679))

(declare-fun m!410681 () Bool)

(assert (=> d!93964 m!410681))

(declare-fun m!410683 () Bool)

(assert (=> d!93964 m!410683))

(declare-fun m!410685 () Bool)

(assert (=> b!307726 m!410685))

(assert (=> b!307468 d!93964))

(declare-fun lt!131291 () List!4071)

(declare-fun e!191409 () Bool)

(declare-fun b!307738 () Bool)

(assert (=> b!307738 (= e!191409 (or (not (= lt!131151 Nil!4061)) (= lt!131291 lt!131150)))))

(declare-fun d!93966 () Bool)

(assert (=> d!93966 e!191409))

(declare-fun res!139944 () Bool)

(assert (=> d!93966 (=> (not res!139944) (not e!191409))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!606 (List!4071) (InoxSet C!2932))

(assert (=> d!93966 (= res!139944 (= (content!606 lt!131291) ((_ map or) (content!606 lt!131150) (content!606 lt!131151))))))

(declare-fun e!191408 () List!4071)

(assert (=> d!93966 (= lt!131291 e!191408)))

(declare-fun c!58329 () Bool)

(assert (=> d!93966 (= c!58329 ((_ is Nil!4061) lt!131150))))

(assert (=> d!93966 (= (++!1102 lt!131150 lt!131151) lt!131291)))

(declare-fun b!307737 () Bool)

(declare-fun res!139945 () Bool)

(assert (=> b!307737 (=> (not res!139945) (not e!191409))))

(assert (=> b!307737 (= res!139945 (= (size!3246 lt!131291) (+ (size!3246 lt!131150) (size!3246 lt!131151))))))

(declare-fun b!307736 () Bool)

(assert (=> b!307736 (= e!191408 (Cons!4061 (h!9458 lt!131150) (++!1102 (t!43303 lt!131150) lt!131151)))))

(declare-fun b!307735 () Bool)

(assert (=> b!307735 (= e!191408 lt!131151)))

(assert (= (and d!93966 c!58329) b!307735))

(assert (= (and d!93966 (not c!58329)) b!307736))

(assert (= (and d!93966 res!139944) b!307737))

(assert (= (and b!307737 res!139945) b!307738))

(declare-fun m!410687 () Bool)

(assert (=> d!93966 m!410687))

(declare-fun m!410689 () Bool)

(assert (=> d!93966 m!410689))

(declare-fun m!410691 () Bool)

(assert (=> d!93966 m!410691))

(declare-fun m!410693 () Bool)

(assert (=> b!307737 m!410693))

(assert (=> b!307737 m!410425))

(declare-fun m!410695 () Bool)

(assert (=> b!307737 m!410695))

(declare-fun m!410697 () Bool)

(assert (=> b!307736 m!410697))

(assert (=> b!307449 d!93966))

(declare-fun d!93968 () Bool)

(assert (=> d!93968 (= (list!1713 lt!131165) (list!1717 (c!58276 lt!131165)))))

(declare-fun bs!35536 () Bool)

(assert (= bs!35536 d!93968))

(declare-fun m!410699 () Bool)

(assert (=> bs!35536 m!410699))

(assert (=> b!307470 d!93968))

(declare-fun d!93970 () Bool)

(declare-fun lt!131317 () BalanceConc!2776)

(declare-fun printListTailRec!161 (LexerInterface!667 List!4073 List!4071) List!4071)

(declare-fun dropList!196 (BalanceConc!2778 Int) List!4073)

(assert (=> d!93970 (= (list!1713 lt!131317) (printListTailRec!161 thiss!17480 (dropList!196 lt!131157 0) (list!1713 (BalanceConc!2777 Empty!1384))))))

(declare-fun e!191420 () BalanceConc!2776)

(assert (=> d!93970 (= lt!131317 e!191420)))

(declare-fun c!58332 () Bool)

(assert (=> d!93970 (= c!58332 (>= 0 (size!3247 lt!131157)))))

(declare-fun e!191421 () Bool)

(assert (=> d!93970 e!191421))

(declare-fun res!139957 () Bool)

(assert (=> d!93970 (=> (not res!139957) (not e!191421))))

(assert (=> d!93970 (= res!139957 (>= 0 0))))

(assert (=> d!93970 (= (printTailRec!353 thiss!17480 lt!131157 0 (BalanceConc!2777 Empty!1384)) lt!131317)))

(declare-fun b!307754 () Bool)

(assert (=> b!307754 (= e!191421 (<= 0 (size!3247 lt!131157)))))

(declare-fun b!307755 () Bool)

(assert (=> b!307755 (= e!191420 (BalanceConc!2777 Empty!1384))))

(declare-fun b!307756 () Bool)

(declare-fun ++!1104 (BalanceConc!2776 BalanceConc!2776) BalanceConc!2776)

(assert (=> b!307756 (= e!191420 (printTailRec!353 thiss!17480 lt!131157 (+ 0 1) (++!1104 (BalanceConc!2777 Empty!1384) (charsOf!424 (apply!892 lt!131157 0)))))))

(declare-fun lt!131314 () List!4073)

(assert (=> b!307756 (= lt!131314 (list!1716 lt!131157))))

(declare-fun lt!131315 () Unit!5690)

(declare-fun lemmaDropApply!236 (List!4073 Int) Unit!5690)

(assert (=> b!307756 (= lt!131315 (lemmaDropApply!236 lt!131314 0))))

(declare-fun drop!251 (List!4073 Int) List!4073)

(declare-fun apply!894 (List!4073 Int) Token!1306)

(assert (=> b!307756 (= (head!966 (drop!251 lt!131314 0)) (apply!894 lt!131314 0))))

(declare-fun lt!131318 () Unit!5690)

(assert (=> b!307756 (= lt!131318 lt!131315)))

(declare-fun lt!131313 () List!4073)

(assert (=> b!307756 (= lt!131313 (list!1716 lt!131157))))

(declare-fun lt!131312 () Unit!5690)

(declare-fun lemmaDropTail!228 (List!4073 Int) Unit!5690)

(assert (=> b!307756 (= lt!131312 (lemmaDropTail!228 lt!131313 0))))

(declare-fun tail!541 (List!4073) List!4073)

(assert (=> b!307756 (= (tail!541 (drop!251 lt!131313 0)) (drop!251 lt!131313 (+ 0 1)))))

(declare-fun lt!131316 () Unit!5690)

(assert (=> b!307756 (= lt!131316 lt!131312)))

(assert (= (and d!93970 res!139957) b!307754))

(assert (= (and d!93970 c!58332) b!307755))

(assert (= (and d!93970 (not c!58332)) b!307756))

(declare-fun m!410717 () Bool)

(assert (=> d!93970 m!410717))

(declare-fun m!410719 () Bool)

(assert (=> d!93970 m!410719))

(declare-fun m!410721 () Bool)

(assert (=> d!93970 m!410721))

(declare-fun m!410723 () Bool)

(assert (=> d!93970 m!410723))

(assert (=> d!93970 m!410719))

(assert (=> d!93970 m!410717))

(declare-fun m!410725 () Bool)

(assert (=> d!93970 m!410725))

(assert (=> b!307754 m!410721))

(declare-fun m!410727 () Bool)

(assert (=> b!307756 m!410727))

(declare-fun m!410729 () Bool)

(assert (=> b!307756 m!410729))

(declare-fun m!410731 () Bool)

(assert (=> b!307756 m!410731))

(declare-fun m!410733 () Bool)

(assert (=> b!307756 m!410733))

(declare-fun m!410735 () Bool)

(assert (=> b!307756 m!410735))

(declare-fun m!410737 () Bool)

(assert (=> b!307756 m!410737))

(assert (=> b!307756 m!410735))

(declare-fun m!410739 () Bool)

(assert (=> b!307756 m!410739))

(declare-fun m!410741 () Bool)

(assert (=> b!307756 m!410741))

(assert (=> b!307756 m!410731))

(declare-fun m!410743 () Bool)

(assert (=> b!307756 m!410743))

(assert (=> b!307756 m!410739))

(assert (=> b!307756 m!410727))

(declare-fun m!410745 () Bool)

(assert (=> b!307756 m!410745))

(declare-fun m!410747 () Bool)

(assert (=> b!307756 m!410747))

(declare-fun m!410749 () Bool)

(assert (=> b!307756 m!410749))

(assert (=> b!307756 m!410741))

(declare-fun m!410751 () Bool)

(assert (=> b!307756 m!410751))

(assert (=> b!307470 d!93970))

(declare-fun d!93976 () Bool)

(declare-fun lt!131321 () BalanceConc!2776)

(assert (=> d!93976 (= (list!1713 lt!131321) (printList!341 thiss!17480 (list!1716 lt!131157)))))

(assert (=> d!93976 (= lt!131321 (printTailRec!353 thiss!17480 lt!131157 0 (BalanceConc!2777 Empty!1384)))))

(assert (=> d!93976 (= (print!392 thiss!17480 lt!131157) lt!131321)))

(declare-fun bs!35538 () Bool)

(assert (= bs!35538 d!93976))

(declare-fun m!410753 () Bool)

(assert (=> bs!35538 m!410753))

(assert (=> bs!35538 m!410737))

(assert (=> bs!35538 m!410737))

(declare-fun m!410755 () Bool)

(assert (=> bs!35538 m!410755))

(assert (=> bs!35538 m!410259))

(assert (=> b!307470 d!93976))

(declare-fun d!93978 () Bool)

(declare-fun e!191424 () Bool)

(assert (=> d!93978 e!191424))

(declare-fun res!139960 () Bool)

(assert (=> d!93978 (=> (not res!139960) (not e!191424))))

(declare-fun lt!131324 () BalanceConc!2778)

(assert (=> d!93978 (= res!139960 (= (list!1716 lt!131324) (Cons!4063 (h!9460 tokens!465) Nil!4063)))))

(declare-fun singleton!146 (Token!1306) BalanceConc!2778)

(assert (=> d!93978 (= lt!131324 (singleton!146 (h!9460 tokens!465)))))

(assert (=> d!93978 (= (singletonSeq!327 (h!9460 tokens!465)) lt!131324)))

(declare-fun b!307759 () Bool)

(declare-fun isBalanced!395 (Conc!1385) Bool)

(assert (=> b!307759 (= e!191424 (isBalanced!395 (c!58278 lt!131324)))))

(assert (= (and d!93978 res!139960) b!307759))

(declare-fun m!410757 () Bool)

(assert (=> d!93978 m!410757))

(declare-fun m!410759 () Bool)

(assert (=> d!93978 m!410759))

(declare-fun m!410761 () Bool)

(assert (=> b!307759 m!410761))

(assert (=> b!307470 d!93978))

(declare-fun d!93980 () Bool)

(declare-fun c!58335 () Bool)

(assert (=> d!93980 (= c!58335 ((_ is Cons!4063) (Cons!4063 (h!9460 tokens!465) Nil!4063)))))

(declare-fun e!191427 () List!4071)

(assert (=> d!93980 (= (printList!341 thiss!17480 (Cons!4063 (h!9460 tokens!465) Nil!4063)) e!191427)))

(declare-fun b!307764 () Bool)

(assert (=> b!307764 (= e!191427 (++!1102 (list!1713 (charsOf!424 (h!9460 (Cons!4063 (h!9460 tokens!465) Nil!4063)))) (printList!341 thiss!17480 (t!43305 (Cons!4063 (h!9460 tokens!465) Nil!4063)))))))

(declare-fun b!307765 () Bool)

(assert (=> b!307765 (= e!191427 Nil!4061)))

(assert (= (and d!93980 c!58335) b!307764))

(assert (= (and d!93980 (not c!58335)) b!307765))

(declare-fun m!410763 () Bool)

(assert (=> b!307764 m!410763))

(assert (=> b!307764 m!410763))

(declare-fun m!410765 () Bool)

(assert (=> b!307764 m!410765))

(declare-fun m!410767 () Bool)

(assert (=> b!307764 m!410767))

(assert (=> b!307764 m!410765))

(assert (=> b!307764 m!410767))

(declare-fun m!410769 () Bool)

(assert (=> b!307764 m!410769))

(assert (=> b!307470 d!93980))

(declare-fun d!93982 () Bool)

(assert (=> d!93982 (= (isEmpty!2776 rules!1920) ((_ is Nil!4062) rules!1920))))

(assert (=> b!307448 d!93982))

(declare-fun e!191429 () Bool)

(declare-fun lt!131325 () List!4071)

(declare-fun b!307769 () Bool)

(assert (=> b!307769 (= e!191429 (or (not (= lt!131151 Nil!4061)) (= lt!131325 (++!1102 lt!131150 lt!131164))))))

(declare-fun d!93984 () Bool)

(assert (=> d!93984 e!191429))

(declare-fun res!139961 () Bool)

(assert (=> d!93984 (=> (not res!139961) (not e!191429))))

(assert (=> d!93984 (= res!139961 (= (content!606 lt!131325) ((_ map or) (content!606 (++!1102 lt!131150 lt!131164)) (content!606 lt!131151))))))

(declare-fun e!191428 () List!4071)

(assert (=> d!93984 (= lt!131325 e!191428)))

(declare-fun c!58336 () Bool)

(assert (=> d!93984 (= c!58336 ((_ is Nil!4061) (++!1102 lt!131150 lt!131164)))))

(assert (=> d!93984 (= (++!1102 (++!1102 lt!131150 lt!131164) lt!131151) lt!131325)))

(declare-fun b!307768 () Bool)

(declare-fun res!139962 () Bool)

(assert (=> b!307768 (=> (not res!139962) (not e!191429))))

(assert (=> b!307768 (= res!139962 (= (size!3246 lt!131325) (+ (size!3246 (++!1102 lt!131150 lt!131164)) (size!3246 lt!131151))))))

(declare-fun b!307767 () Bool)

(assert (=> b!307767 (= e!191428 (Cons!4061 (h!9458 (++!1102 lt!131150 lt!131164)) (++!1102 (t!43303 (++!1102 lt!131150 lt!131164)) lt!131151)))))

(declare-fun b!307766 () Bool)

(assert (=> b!307766 (= e!191428 lt!131151)))

(assert (= (and d!93984 c!58336) b!307766))

(assert (= (and d!93984 (not c!58336)) b!307767))

(assert (= (and d!93984 res!139961) b!307768))

(assert (= (and b!307768 res!139962) b!307769))

(declare-fun m!410771 () Bool)

(assert (=> d!93984 m!410771))

(assert (=> d!93984 m!410279))

(declare-fun m!410773 () Bool)

(assert (=> d!93984 m!410773))

(assert (=> d!93984 m!410691))

(declare-fun m!410775 () Bool)

(assert (=> b!307768 m!410775))

(assert (=> b!307768 m!410279))

(declare-fun m!410777 () Bool)

(assert (=> b!307768 m!410777))

(assert (=> b!307768 m!410695))

(declare-fun m!410779 () Bool)

(assert (=> b!307767 m!410779))

(assert (=> b!307450 d!93984))

(declare-fun d!93986 () Bool)

(assert (=> d!93986 (= (seqFromList!927 (t!43305 tokens!465)) (fromListB!386 (t!43305 tokens!465)))))

(declare-fun bs!35539 () Bool)

(assert (= bs!35539 d!93986))

(declare-fun m!410781 () Bool)

(assert (=> bs!35539 m!410781))

(assert (=> b!307450 d!93986))

(declare-fun d!93988 () Bool)

(assert (=> d!93988 (= (list!1713 (charsOf!424 separatorToken!170)) (list!1717 (c!58276 (charsOf!424 separatorToken!170))))))

(declare-fun bs!35540 () Bool)

(assert (= bs!35540 d!93988))

(declare-fun m!410783 () Bool)

(assert (=> bs!35540 m!410783))

(assert (=> b!307450 d!93988))

(declare-fun e!191431 () Bool)

(declare-fun lt!131326 () List!4071)

(declare-fun b!307773 () Bool)

(assert (=> b!307773 (= e!191431 (or (not (= lt!131151 Nil!4061)) (= lt!131326 lt!131164)))))

(declare-fun d!93990 () Bool)

(assert (=> d!93990 e!191431))

(declare-fun res!139963 () Bool)

(assert (=> d!93990 (=> (not res!139963) (not e!191431))))

(assert (=> d!93990 (= res!139963 (= (content!606 lt!131326) ((_ map or) (content!606 lt!131164) (content!606 lt!131151))))))

(declare-fun e!191430 () List!4071)

(assert (=> d!93990 (= lt!131326 e!191430)))

(declare-fun c!58337 () Bool)

(assert (=> d!93990 (= c!58337 ((_ is Nil!4061) lt!131164))))

(assert (=> d!93990 (= (++!1102 lt!131164 lt!131151) lt!131326)))

(declare-fun b!307772 () Bool)

(declare-fun res!139964 () Bool)

(assert (=> b!307772 (=> (not res!139964) (not e!191431))))

(assert (=> b!307772 (= res!139964 (= (size!3246 lt!131326) (+ (size!3246 lt!131164) (size!3246 lt!131151))))))

(declare-fun b!307771 () Bool)

(assert (=> b!307771 (= e!191430 (Cons!4061 (h!9458 lt!131164) (++!1102 (t!43303 lt!131164) lt!131151)))))

(declare-fun b!307770 () Bool)

(assert (=> b!307770 (= e!191430 lt!131151)))

(assert (= (and d!93990 c!58337) b!307770))

(assert (= (and d!93990 (not c!58337)) b!307771))

(assert (= (and d!93990 res!139963) b!307772))

(assert (= (and b!307772 res!139964) b!307773))

(declare-fun m!410785 () Bool)

(assert (=> d!93990 m!410785))

(declare-fun m!410787 () Bool)

(assert (=> d!93990 m!410787))

(assert (=> d!93990 m!410691))

(declare-fun m!410789 () Bool)

(assert (=> b!307772 m!410789))

(declare-fun m!410791 () Bool)

(assert (=> b!307772 m!410791))

(assert (=> b!307772 m!410695))

(declare-fun m!410793 () Bool)

(assert (=> b!307771 m!410793))

(assert (=> b!307450 d!93990))

(declare-fun bs!35545 () Bool)

(declare-fun b!307890 () Bool)

(assert (= bs!35545 (and b!307890 b!307466)))

(declare-fun lambda!10514 () Int)

(assert (=> bs!35545 (not (= lambda!10514 lambda!10491))))

(declare-fun bs!35546 () Bool)

(assert (= bs!35546 (and b!307890 b!307468)))

(assert (=> bs!35546 (= lambda!10514 lambda!10492)))

(declare-fun bs!35547 () Bool)

(assert (= bs!35547 (and b!307890 d!93922)))

(assert (=> bs!35547 (= lambda!10514 lambda!10508)))

(declare-fun b!307902 () Bool)

(declare-fun e!191500 () Bool)

(assert (=> b!307902 (= e!191500 true)))

(declare-fun b!307901 () Bool)

(declare-fun e!191499 () Bool)

(assert (=> b!307901 (= e!191499 e!191500)))

(declare-fun b!307900 () Bool)

(declare-fun e!191498 () Bool)

(assert (=> b!307900 (= e!191498 e!191499)))

(assert (=> b!307890 e!191498))

(assert (= b!307901 b!307902))

(assert (= b!307900 b!307901))

(assert (= (and b!307890 ((_ is Cons!4062) rules!1920)) b!307900))

(assert (=> b!307902 (< (dynLambda!2219 order!3297 (toValue!1540 (transformation!781 (h!9459 rules!1920)))) (dynLambda!2220 order!3299 lambda!10514))))

(assert (=> b!307902 (< (dynLambda!2221 order!3301 (toChars!1399 (transformation!781 (h!9459 rules!1920)))) (dynLambda!2220 order!3299 lambda!10514))))

(assert (=> b!307890 true))

(declare-fun e!191495 () List!4071)

(declare-fun e!191497 () List!4071)

(assert (=> b!307890 (= e!191495 e!191497)))

(declare-fun lt!131386 () Unit!5690)

(assert (=> b!307890 (= lt!131386 (forallContained!334 (t!43305 tokens!465) lambda!10514 (h!9460 (t!43305 tokens!465))))))

(declare-fun lt!131385 () List!4071)

(assert (=> b!307890 (= lt!131385 (printWithSeparatorTokenWhenNeededList!348 thiss!17480 rules!1920 (t!43305 (t!43305 tokens!465)) separatorToken!170))))

(declare-fun lt!131388 () Option!928)

(assert (=> b!307890 (= lt!131388 (maxPrefix!383 thiss!17480 rules!1920 (++!1102 (list!1713 (charsOf!424 (h!9460 (t!43305 tokens!465)))) lt!131385)))))

(declare-fun c!58366 () Bool)

(assert (=> b!307890 (= c!58366 (and ((_ is Some!927) lt!131388) (= (_1!2561 (v!14932 lt!131388)) (h!9460 (t!43305 tokens!465)))))))

(declare-fun bm!17880 () Bool)

(declare-fun call!17889 () BalanceConc!2776)

(assert (=> bm!17880 (= call!17889 (charsOf!424 (h!9460 (t!43305 tokens!465))))))

(declare-fun bm!17881 () Bool)

(declare-fun c!58363 () Bool)

(assert (=> bm!17881 (= c!58363 c!58366)))

(declare-fun call!17888 () List!4071)

(declare-fun e!191493 () List!4071)

(declare-fun call!17887 () List!4071)

(assert (=> bm!17881 (= call!17887 (++!1102 e!191493 (ite c!58366 lt!131385 call!17888)))))

(declare-fun bm!17882 () Bool)

(declare-fun call!17886 () BalanceConc!2776)

(assert (=> bm!17882 (= call!17886 call!17889)))

(declare-fun bm!17883 () Bool)

(declare-fun e!191494 () BalanceConc!2776)

(declare-fun call!17885 () List!4071)

(assert (=> bm!17883 (= call!17885 (list!1713 (ite c!58366 call!17889 e!191494)))))

(declare-fun b!307891 () Bool)

(assert (=> b!307891 (= e!191493 (list!1713 call!17886))))

(declare-fun b!307892 () Bool)

(declare-fun e!191496 () List!4071)

(assert (=> b!307892 (= e!191496 (++!1102 call!17887 lt!131385))))

(declare-fun bm!17884 () Bool)

(assert (=> bm!17884 (= call!17888 call!17885)))

(declare-fun c!58367 () Bool)

(declare-fun c!58364 () Bool)

(assert (=> bm!17884 (= c!58367 c!58364)))

(declare-fun b!307893 () Bool)

(assert (=> b!307893 (= e!191496 Nil!4061)))

(assert (=> b!307893 (= (print!392 thiss!17480 (singletonSeq!327 (h!9460 (t!43305 tokens!465)))) (printTailRec!353 thiss!17480 (singletonSeq!327 (h!9460 (t!43305 tokens!465))) 0 (BalanceConc!2777 Empty!1384)))))

(declare-fun lt!131389 () Unit!5690)

(declare-fun Unit!5700 () Unit!5690)

(assert (=> b!307893 (= lt!131389 Unit!5700)))

(declare-fun lt!131387 () Unit!5690)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!144 (LexerInterface!667 List!4072 List!4071 List!4071) Unit!5690)

(assert (=> b!307893 (= lt!131387 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!144 thiss!17480 rules!1920 call!17888 lt!131385))))

(assert (=> b!307893 false))

(declare-fun lt!131384 () Unit!5690)

(declare-fun Unit!5701 () Unit!5690)

(assert (=> b!307893 (= lt!131384 Unit!5701)))

(declare-fun b!307894 () Bool)

(assert (=> b!307894 (= e!191494 call!17886)))

(declare-fun b!307895 () Bool)

(assert (=> b!307895 (= e!191497 call!17887)))

(declare-fun b!307896 () Bool)

(assert (=> b!307896 (= c!58364 (and ((_ is Some!927) lt!131388) (not (= (_1!2561 (v!14932 lt!131388)) (h!9460 (t!43305 tokens!465))))))))

(assert (=> b!307896 (= e!191497 e!191496)))

(declare-fun b!307897 () Bool)

(assert (=> b!307897 (= e!191494 (charsOf!424 separatorToken!170))))

(declare-fun b!307898 () Bool)

(assert (=> b!307898 (= e!191495 Nil!4061)))

(declare-fun d!93992 () Bool)

(declare-fun c!58365 () Bool)

(assert (=> d!93992 (= c!58365 ((_ is Cons!4063) (t!43305 tokens!465)))))

(assert (=> d!93992 (= (printWithSeparatorTokenWhenNeededList!348 thiss!17480 rules!1920 (t!43305 tokens!465) separatorToken!170) e!191495)))

(declare-fun b!307899 () Bool)

(assert (=> b!307899 (= e!191493 call!17885)))

(assert (= (and d!93992 c!58365) b!307890))

(assert (= (and d!93992 (not c!58365)) b!307898))

(assert (= (and b!307890 c!58366) b!307895))

(assert (= (and b!307890 (not c!58366)) b!307896))

(assert (= (and b!307896 c!58364) b!307892))

(assert (= (and b!307896 (not c!58364)) b!307893))

(assert (= (or b!307892 b!307893) bm!17882))

(assert (= (or b!307892 b!307893) bm!17884))

(assert (= (and bm!17884 c!58367) b!307897))

(assert (= (and bm!17884 (not c!58367)) b!307894))

(assert (= (or b!307895 bm!17882) bm!17880))

(assert (= (or b!307895 bm!17884) bm!17883))

(assert (= (or b!307895 b!307892) bm!17881))

(assert (= (and bm!17881 c!58363) b!307899))

(assert (= (and bm!17881 (not c!58363)) b!307891))

(declare-fun m!410891 () Bool)

(assert (=> bm!17880 m!410891))

(declare-fun m!410893 () Bool)

(assert (=> b!307891 m!410893))

(assert (=> b!307890 m!410891))

(assert (=> b!307890 m!410891))

(declare-fun m!410895 () Bool)

(assert (=> b!307890 m!410895))

(declare-fun m!410897 () Bool)

(assert (=> b!307890 m!410897))

(assert (=> b!307890 m!410895))

(declare-fun m!410899 () Bool)

(assert (=> b!307890 m!410899))

(declare-fun m!410901 () Bool)

(assert (=> b!307890 m!410901))

(assert (=> b!307890 m!410899))

(declare-fun m!410903 () Bool)

(assert (=> b!307890 m!410903))

(declare-fun m!410905 () Bool)

(assert (=> b!307893 m!410905))

(assert (=> b!307893 m!410905))

(declare-fun m!410907 () Bool)

(assert (=> b!307893 m!410907))

(assert (=> b!307893 m!410905))

(declare-fun m!410909 () Bool)

(assert (=> b!307893 m!410909))

(declare-fun m!410911 () Bool)

(assert (=> b!307893 m!410911))

(declare-fun m!410913 () Bool)

(assert (=> bm!17881 m!410913))

(declare-fun m!410915 () Bool)

(assert (=> b!307892 m!410915))

(declare-fun m!410917 () Bool)

(assert (=> bm!17883 m!410917))

(assert (=> b!307897 m!410285))

(assert (=> b!307450 d!93992))

(declare-fun bs!35565 () Bool)

(declare-fun d!94010 () Bool)

(assert (= bs!35565 (and d!94010 b!307466)))

(declare-fun lambda!10521 () Int)

(assert (=> bs!35565 (= lambda!10521 lambda!10491)))

(declare-fun bs!35567 () Bool)

(assert (= bs!35567 (and d!94010 b!307468)))

(assert (=> bs!35567 (not (= lambda!10521 lambda!10492))))

(declare-fun bs!35570 () Bool)

(assert (= bs!35570 (and d!94010 d!93922)))

(assert (=> bs!35570 (not (= lambda!10521 lambda!10508))))

(declare-fun bs!35572 () Bool)

(assert (= bs!35572 (and d!94010 b!307890)))

(assert (=> bs!35572 (not (= lambda!10521 lambda!10514))))

(declare-fun bs!35575 () Bool)

(declare-fun b!308013 () Bool)

(assert (= bs!35575 (and b!308013 d!93922)))

(declare-fun lambda!10522 () Int)

(assert (=> bs!35575 (= lambda!10522 lambda!10508)))

(declare-fun bs!35577 () Bool)

(assert (= bs!35577 (and b!308013 d!94010)))

(assert (=> bs!35577 (not (= lambda!10522 lambda!10521))))

(declare-fun bs!35579 () Bool)

(assert (= bs!35579 (and b!308013 b!307890)))

(assert (=> bs!35579 (= lambda!10522 lambda!10514)))

(declare-fun bs!35581 () Bool)

(assert (= bs!35581 (and b!308013 b!307468)))

(assert (=> bs!35581 (= lambda!10522 lambda!10492)))

(declare-fun bs!35583 () Bool)

(assert (= bs!35583 (and b!308013 b!307466)))

(assert (=> bs!35583 (not (= lambda!10522 lambda!10491))))

(declare-fun b!308019 () Bool)

(declare-fun e!191573 () Bool)

(assert (=> b!308019 (= e!191573 true)))

(declare-fun b!308018 () Bool)

(declare-fun e!191572 () Bool)

(assert (=> b!308018 (= e!191572 e!191573)))

(declare-fun b!308017 () Bool)

(declare-fun e!191571 () Bool)

(assert (=> b!308017 (= e!191571 e!191572)))

(assert (=> b!308013 e!191571))

(assert (= b!308018 b!308019))

(assert (= b!308017 b!308018))

(assert (= (and b!308013 ((_ is Cons!4062) rules!1920)) b!308017))

(assert (=> b!308019 (< (dynLambda!2219 order!3297 (toValue!1540 (transformation!781 (h!9459 rules!1920)))) (dynLambda!2220 order!3299 lambda!10522))))

(assert (=> b!308019 (< (dynLambda!2221 order!3301 (toChars!1399 (transformation!781 (h!9459 rules!1920)))) (dynLambda!2220 order!3299 lambda!10522))))

(assert (=> b!308013 true))

(declare-fun call!17914 () Token!1306)

(declare-fun call!17912 () BalanceConc!2776)

(declare-fun c!58402 () Bool)

(declare-fun bm!17905 () Bool)

(assert (=> bm!17905 (= call!17912 (charsOf!424 (ite c!58402 separatorToken!170 call!17914)))))

(declare-fun bm!17906 () Bool)

(declare-fun call!17911 () Token!1306)

(assert (=> bm!17906 (= call!17914 call!17911)))

(declare-fun lt!131482 () BalanceConc!2776)

(assert (=> d!94010 (= (list!1713 lt!131482) (printWithSeparatorTokenWhenNeededList!348 thiss!17480 rules!1920 (dropList!196 (seqFromList!927 (t!43305 tokens!465)) 0) separatorToken!170))))

(declare-fun e!191567 () BalanceConc!2776)

(assert (=> d!94010 (= lt!131482 e!191567)))

(declare-fun c!58401 () Bool)

(assert (=> d!94010 (= c!58401 (>= 0 (size!3247 (seqFromList!927 (t!43305 tokens!465)))))))

(declare-fun lt!131489 () Unit!5690)

(declare-fun lemmaContentSubsetPreservesForall!140 (List!4073 List!4073 Int) Unit!5690)

(assert (=> d!94010 (= lt!131489 (lemmaContentSubsetPreservesForall!140 (list!1716 (seqFromList!927 (t!43305 tokens!465))) (dropList!196 (seqFromList!927 (t!43305 tokens!465)) 0) lambda!10521))))

(declare-fun e!191565 () Bool)

(assert (=> d!94010 e!191565))

(declare-fun res!140070 () Bool)

(assert (=> d!94010 (=> (not res!140070) (not e!191565))))

(assert (=> d!94010 (= res!140070 (>= 0 0))))

(assert (=> d!94010 (= (printWithSeparatorTokenWhenNeededRec!340 thiss!17480 rules!1920 (seqFromList!927 (t!43305 tokens!465)) separatorToken!170 0) lt!131482)))

(declare-fun bm!17907 () Bool)

(assert (=> bm!17907 (= call!17911 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0))))

(declare-fun b!308008 () Bool)

(assert (=> b!308008 (= e!191565 (<= 0 (size!3247 (seqFromList!927 (t!43305 tokens!465)))))))

(declare-fun b!308009 () Bool)

(declare-fun e!191570 () BalanceConc!2776)

(declare-fun call!17913 () BalanceConc!2776)

(declare-fun lt!131492 () BalanceConc!2776)

(assert (=> b!308009 (= e!191570 (++!1104 call!17913 lt!131492))))

(declare-fun b!308010 () Bool)

(declare-fun e!191568 () Bool)

(declare-fun lt!131483 () Option!929)

(assert (=> b!308010 (= e!191568 (= (_1!2563 (v!14933 lt!131483)) (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0)))))

(declare-fun b!308011 () Bool)

(assert (=> b!308011 (= e!191567 (BalanceConc!2777 Empty!1384))))

(declare-fun call!17910 () BalanceConc!2776)

(declare-fun c!58400 () Bool)

(declare-fun bm!17908 () Bool)

(assert (=> bm!17908 (= call!17910 (charsOf!424 (ite c!58400 call!17911 call!17914)))))

(declare-fun b!308012 () Bool)

(declare-fun e!191569 () Bool)

(assert (=> b!308012 (= e!191569 (not (= (_1!2563 (v!14933 lt!131483)) call!17911)))))

(declare-fun e!191566 () BalanceConc!2776)

(assert (=> b!308013 (= e!191567 e!191566)))

(declare-fun lt!131487 () List!4073)

(assert (=> b!308013 (= lt!131487 (list!1716 (seqFromList!927 (t!43305 tokens!465))))))

(declare-fun lt!131484 () Unit!5690)

(assert (=> b!308013 (= lt!131484 (lemmaDropApply!236 lt!131487 0))))

(assert (=> b!308013 (= (head!966 (drop!251 lt!131487 0)) (apply!894 lt!131487 0))))

(declare-fun lt!131486 () Unit!5690)

(assert (=> b!308013 (= lt!131486 lt!131484)))

(declare-fun lt!131488 () List!4073)

(assert (=> b!308013 (= lt!131488 (list!1716 (seqFromList!927 (t!43305 tokens!465))))))

(declare-fun lt!131494 () Unit!5690)

(assert (=> b!308013 (= lt!131494 (lemmaDropTail!228 lt!131488 0))))

(assert (=> b!308013 (= (tail!541 (drop!251 lt!131488 0)) (drop!251 lt!131488 (+ 0 1)))))

(declare-fun lt!131493 () Unit!5690)

(assert (=> b!308013 (= lt!131493 lt!131494)))

(declare-fun lt!131491 () Unit!5690)

(assert (=> b!308013 (= lt!131491 (forallContained!334 (list!1716 (seqFromList!927 (t!43305 tokens!465))) lambda!10522 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0)))))

(assert (=> b!308013 (= lt!131492 (printWithSeparatorTokenWhenNeededRec!340 thiss!17480 rules!1920 (seqFromList!927 (t!43305 tokens!465)) separatorToken!170 (+ 0 1)))))

(assert (=> b!308013 (= lt!131483 (maxPrefixZipperSequence!346 thiss!17480 rules!1920 (++!1104 (charsOf!424 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0)) lt!131492)))))

(declare-fun res!140071 () Bool)

(assert (=> b!308013 (= res!140071 ((_ is Some!928) lt!131483))))

(assert (=> b!308013 (=> (not res!140071) (not e!191568))))

(assert (=> b!308013 (= c!58400 e!191568)))

(declare-fun b!308014 () Bool)

(assert (=> b!308014 (= e!191566 call!17913)))

(declare-fun bm!17909 () Bool)

(assert (=> bm!17909 (= call!17913 (++!1104 call!17910 (ite c!58400 lt!131492 call!17912)))))

(declare-fun b!308015 () Bool)

(assert (=> b!308015 (= e!191570 (BalanceConc!2777 Empty!1384))))

(assert (=> b!308015 (= (print!392 thiss!17480 (singletonSeq!327 call!17914)) (printTailRec!353 thiss!17480 (singletonSeq!327 call!17914) 0 (BalanceConc!2777 Empty!1384)))))

(declare-fun lt!131485 () Unit!5690)

(declare-fun Unit!5702 () Unit!5690)

(assert (=> b!308015 (= lt!131485 Unit!5702)))

(declare-fun lt!131490 () Unit!5690)

(assert (=> b!308015 (= lt!131490 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!144 thiss!17480 rules!1920 (list!1713 call!17912) (list!1713 lt!131492)))))

(assert (=> b!308015 false))

(declare-fun lt!131481 () Unit!5690)

(declare-fun Unit!5703 () Unit!5690)

(assert (=> b!308015 (= lt!131481 Unit!5703)))

(declare-fun b!308016 () Bool)

(assert (=> b!308016 (= c!58402 e!191569)))

(declare-fun res!140069 () Bool)

(assert (=> b!308016 (=> (not res!140069) (not e!191569))))

(assert (=> b!308016 (= res!140069 ((_ is Some!928) lt!131483))))

(assert (=> b!308016 (= e!191566 e!191570)))

(assert (= (and d!94010 res!140070) b!308008))

(assert (= (and d!94010 c!58401) b!308011))

(assert (= (and d!94010 (not c!58401)) b!308013))

(assert (= (and b!308013 res!140071) b!308010))

(assert (= (and b!308013 c!58400) b!308014))

(assert (= (and b!308013 (not c!58400)) b!308016))

(assert (= (and b!308016 res!140069) b!308012))

(assert (= (and b!308016 c!58402) b!308009))

(assert (= (and b!308016 (not c!58402)) b!308015))

(assert (= (or b!308009 b!308015) bm!17906))

(assert (= (or b!308009 b!308015) bm!17905))

(assert (= (or b!308014 bm!17906 b!308012) bm!17907))

(assert (= (or b!308014 b!308009) bm!17908))

(assert (= (or b!308014 b!308009) bm!17909))

(declare-fun m!411095 () Bool)

(assert (=> b!308013 m!411095))

(declare-fun m!411097 () Bool)

(assert (=> b!308013 m!411097))

(declare-fun m!411099 () Bool)

(assert (=> b!308013 m!411099))

(declare-fun m!411101 () Bool)

(assert (=> b!308013 m!411101))

(declare-fun m!411103 () Bool)

(assert (=> b!308013 m!411103))

(declare-fun m!411105 () Bool)

(assert (=> b!308013 m!411105))

(assert (=> b!308013 m!411097))

(assert (=> b!308013 m!411101))

(assert (=> b!308013 m!410277))

(assert (=> b!308013 m!411097))

(assert (=> b!308013 m!411103))

(declare-fun m!411115 () Bool)

(assert (=> b!308013 m!411115))

(declare-fun m!411119 () Bool)

(assert (=> b!308013 m!411119))

(declare-fun m!411123 () Bool)

(assert (=> b!308013 m!411123))

(assert (=> b!308013 m!411105))

(declare-fun m!411125 () Bool)

(assert (=> b!308013 m!411125))

(declare-fun m!411129 () Bool)

(assert (=> b!308013 m!411129))

(declare-fun m!411133 () Bool)

(assert (=> b!308013 m!411133))

(assert (=> b!308013 m!410277))

(declare-fun m!411139 () Bool)

(assert (=> b!308013 m!411139))

(assert (=> b!308013 m!411129))

(declare-fun m!411145 () Bool)

(assert (=> b!308013 m!411145))

(declare-fun m!411147 () Bool)

(assert (=> b!308013 m!411147))

(assert (=> b!308013 m!410277))

(assert (=> b!308013 m!411095))

(assert (=> bm!17907 m!410277))

(assert (=> bm!17907 m!411097))

(declare-fun m!411153 () Bool)

(assert (=> b!308015 m!411153))

(declare-fun m!411157 () Bool)

(assert (=> b!308015 m!411157))

(assert (=> b!308015 m!411153))

(declare-fun m!411159 () Bool)

(assert (=> b!308015 m!411159))

(assert (=> b!308015 m!411153))

(declare-fun m!411163 () Bool)

(assert (=> b!308015 m!411163))

(declare-fun m!411165 () Bool)

(assert (=> b!308015 m!411165))

(declare-fun m!411167 () Bool)

(assert (=> b!308015 m!411167))

(assert (=> b!308015 m!411165))

(assert (=> b!308015 m!411163))

(declare-fun m!411171 () Bool)

(assert (=> b!308009 m!411171))

(declare-fun m!411175 () Bool)

(assert (=> bm!17905 m!411175))

(assert (=> d!94010 m!411095))

(declare-fun m!411181 () Bool)

(assert (=> d!94010 m!411181))

(declare-fun m!411185 () Bool)

(assert (=> d!94010 m!411185))

(assert (=> d!94010 m!410277))

(assert (=> d!94010 m!411181))

(assert (=> d!94010 m!410277))

(declare-fun m!411191 () Bool)

(assert (=> d!94010 m!411191))

(assert (=> d!94010 m!411181))

(declare-fun m!411195 () Bool)

(assert (=> d!94010 m!411195))

(declare-fun m!411197 () Bool)

(assert (=> d!94010 m!411197))

(assert (=> d!94010 m!410277))

(assert (=> d!94010 m!411095))

(declare-fun m!411203 () Bool)

(assert (=> bm!17908 m!411203))

(assert (=> b!308008 m!410277))

(assert (=> b!308008 m!411191))

(assert (=> b!308010 m!410277))

(assert (=> b!308010 m!411097))

(declare-fun m!411207 () Bool)

(assert (=> bm!17909 m!411207))

(assert (=> b!307450 d!94010))

(declare-fun d!94058 () Bool)

(declare-fun lt!131502 () BalanceConc!2776)

(assert (=> d!94058 (= (list!1713 lt!131502) (originalCharacters!824 separatorToken!170))))

(assert (=> d!94058 (= lt!131502 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (value!26574 separatorToken!170)))))

(assert (=> d!94058 (= (charsOf!424 separatorToken!170) lt!131502)))

(declare-fun b_lambda!10685 () Bool)

(assert (=> (not b_lambda!10685) (not d!94058)))

(assert (=> d!94058 t!43332))

(declare-fun b_and!26013 () Bool)

(assert (= b_and!25989 (and (=> t!43332 result!23344) b_and!26013)))

(assert (=> d!94058 t!43334))

(declare-fun b_and!26015 () Bool)

(assert (= b_and!25991 (and (=> t!43334 result!23346) b_and!26015)))

(assert (=> d!94058 t!43336))

(declare-fun b_and!26017 () Bool)

(assert (= b_and!25993 (and (=> t!43336 result!23348) b_and!26017)))

(declare-fun m!411227 () Bool)

(assert (=> d!94058 m!411227))

(assert (=> d!94058 m!410573))

(assert (=> b!307450 d!94058))

(declare-fun lt!131503 () List!4071)

(declare-fun e!191581 () Bool)

(declare-fun b!308035 () Bool)

(assert (=> b!308035 (= e!191581 (or (not (= lt!131170 Nil!4061)) (= lt!131503 lt!131150)))))

(declare-fun d!94062 () Bool)

(assert (=> d!94062 e!191581))

(declare-fun res!140079 () Bool)

(assert (=> d!94062 (=> (not res!140079) (not e!191581))))

(assert (=> d!94062 (= res!140079 (= (content!606 lt!131503) ((_ map or) (content!606 lt!131150) (content!606 lt!131170))))))

(declare-fun e!191580 () List!4071)

(assert (=> d!94062 (= lt!131503 e!191580)))

(declare-fun c!58404 () Bool)

(assert (=> d!94062 (= c!58404 ((_ is Nil!4061) lt!131150))))

(assert (=> d!94062 (= (++!1102 lt!131150 lt!131170) lt!131503)))

(declare-fun b!308034 () Bool)

(declare-fun res!140080 () Bool)

(assert (=> b!308034 (=> (not res!140080) (not e!191581))))

(assert (=> b!308034 (= res!140080 (= (size!3246 lt!131503) (+ (size!3246 lt!131150) (size!3246 lt!131170))))))

(declare-fun b!308033 () Bool)

(assert (=> b!308033 (= e!191580 (Cons!4061 (h!9458 lt!131150) (++!1102 (t!43303 lt!131150) lt!131170)))))

(declare-fun b!308032 () Bool)

(assert (=> b!308032 (= e!191580 lt!131170)))

(assert (= (and d!94062 c!58404) b!308032))

(assert (= (and d!94062 (not c!58404)) b!308033))

(assert (= (and d!94062 res!140079) b!308034))

(assert (= (and b!308034 res!140080) b!308035))

(declare-fun m!411245 () Bool)

(assert (=> d!94062 m!411245))

(assert (=> d!94062 m!410689))

(declare-fun m!411247 () Bool)

(assert (=> d!94062 m!411247))

(declare-fun m!411249 () Bool)

(assert (=> b!308034 m!411249))

(assert (=> b!308034 m!410425))

(declare-fun m!411253 () Bool)

(assert (=> b!308034 m!411253))

(declare-fun m!411255 () Bool)

(assert (=> b!308033 m!411255))

(assert (=> b!307450 d!94062))

(declare-fun d!94066 () Bool)

(declare-fun lt!131504 () BalanceConc!2776)

(assert (=> d!94066 (= (list!1713 lt!131504) (originalCharacters!824 (h!9460 tokens!465)))))

(assert (=> d!94066 (= lt!131504 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (value!26574 (h!9460 tokens!465))))))

(assert (=> d!94066 (= (charsOf!424 (h!9460 tokens!465)) lt!131504)))

(declare-fun b_lambda!10687 () Bool)

(assert (=> (not b_lambda!10687) (not d!94066)))

(assert (=> d!94066 t!43317))

(declare-fun b_and!26019 () Bool)

(assert (= b_and!26013 (and (=> t!43317 result!23336) b_and!26019)))

(assert (=> d!94066 t!43319))

(declare-fun b_and!26021 () Bool)

(assert (= b_and!26015 (and (=> t!43319 result!23340) b_and!26021)))

(assert (=> d!94066 t!43321))

(declare-fun b_and!26023 () Bool)

(assert (= b_and!26017 (and (=> t!43321 result!23342) b_and!26023)))

(declare-fun m!411257 () Bool)

(assert (=> d!94066 m!411257))

(assert (=> d!94066 m!410475))

(assert (=> b!307450 d!94066))

(declare-fun d!94068 () Bool)

(assert (=> d!94068 (= (list!1713 (printWithSeparatorTokenWhenNeededRec!340 thiss!17480 rules!1920 (seqFromList!927 (t!43305 tokens!465)) separatorToken!170 0)) (list!1717 (c!58276 (printWithSeparatorTokenWhenNeededRec!340 thiss!17480 rules!1920 (seqFromList!927 (t!43305 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!35587 () Bool)

(assert (= bs!35587 d!94068))

(declare-fun m!411259 () Bool)

(assert (=> bs!35587 m!411259))

(assert (=> b!307450 d!94068))

(declare-fun d!94070 () Bool)

(assert (=> d!94070 (= (++!1102 (++!1102 lt!131150 lt!131164) lt!131151) (++!1102 lt!131150 (++!1102 lt!131164 lt!131151)))))

(declare-fun lt!131509 () Unit!5690)

(declare-fun choose!2693 (List!4071 List!4071 List!4071) Unit!5690)

(assert (=> d!94070 (= lt!131509 (choose!2693 lt!131150 lt!131164 lt!131151))))

(assert (=> d!94070 (= (lemmaConcatAssociativity!488 lt!131150 lt!131164 lt!131151) lt!131509)))

(declare-fun bs!35588 () Bool)

(assert (= bs!35588 d!94070))

(assert (=> bs!35588 m!410289))

(declare-fun m!411261 () Bool)

(assert (=> bs!35588 m!411261))

(assert (=> bs!35588 m!410279))

(assert (=> bs!35588 m!410283))

(assert (=> bs!35588 m!410279))

(assert (=> bs!35588 m!410289))

(declare-fun m!411265 () Bool)

(assert (=> bs!35588 m!411265))

(assert (=> b!307450 d!94070))

(declare-fun d!94072 () Bool)

(assert (=> d!94072 (= (list!1713 (charsOf!424 (h!9460 tokens!465))) (list!1717 (c!58276 (charsOf!424 (h!9460 tokens!465)))))))

(declare-fun bs!35589 () Bool)

(assert (= bs!35589 d!94072))

(declare-fun m!411269 () Bool)

(assert (=> bs!35589 m!411269))

(assert (=> b!307450 d!94072))

(declare-fun lt!131511 () List!4071)

(declare-fun e!191589 () Bool)

(declare-fun b!308045 () Bool)

(assert (=> b!308045 (= e!191589 (or (not (= lt!131164 Nil!4061)) (= lt!131511 lt!131150)))))

(declare-fun d!94074 () Bool)

(assert (=> d!94074 e!191589))

(declare-fun res!140087 () Bool)

(assert (=> d!94074 (=> (not res!140087) (not e!191589))))

(assert (=> d!94074 (= res!140087 (= (content!606 lt!131511) ((_ map or) (content!606 lt!131150) (content!606 lt!131164))))))

(declare-fun e!191588 () List!4071)

(assert (=> d!94074 (= lt!131511 e!191588)))

(declare-fun c!58405 () Bool)

(assert (=> d!94074 (= c!58405 ((_ is Nil!4061) lt!131150))))

(assert (=> d!94074 (= (++!1102 lt!131150 lt!131164) lt!131511)))

(declare-fun b!308044 () Bool)

(declare-fun res!140088 () Bool)

(assert (=> b!308044 (=> (not res!140088) (not e!191589))))

(assert (=> b!308044 (= res!140088 (= (size!3246 lt!131511) (+ (size!3246 lt!131150) (size!3246 lt!131164))))))

(declare-fun b!308043 () Bool)

(assert (=> b!308043 (= e!191588 (Cons!4061 (h!9458 lt!131150) (++!1102 (t!43303 lt!131150) lt!131164)))))

(declare-fun b!308042 () Bool)

(assert (=> b!308042 (= e!191588 lt!131164)))

(assert (= (and d!94074 c!58405) b!308042))

(assert (= (and d!94074 (not c!58405)) b!308043))

(assert (= (and d!94074 res!140087) b!308044))

(assert (= (and b!308044 res!140088) b!308045))

(declare-fun m!411273 () Bool)

(assert (=> d!94074 m!411273))

(assert (=> d!94074 m!410689))

(assert (=> d!94074 m!410787))

(declare-fun m!411275 () Bool)

(assert (=> b!308044 m!411275))

(assert (=> b!308044 m!410425))

(assert (=> b!308044 m!410791))

(declare-fun m!411277 () Bool)

(assert (=> b!308043 m!411277))

(assert (=> b!307450 d!94074))

(declare-fun d!94078 () Bool)

(assert (=> d!94078 (isPrefix!441 lt!131150 (++!1102 lt!131150 lt!131170))))

(declare-fun lt!131516 () Unit!5690)

(declare-fun choose!2694 (List!4071 List!4071) Unit!5690)

(assert (=> d!94078 (= lt!131516 (choose!2694 lt!131150 lt!131170))))

(assert (=> d!94078 (= (lemmaConcatTwoListThenFirstIsPrefix!332 lt!131150 lt!131170) lt!131516)))

(declare-fun bs!35590 () Bool)

(assert (= bs!35590 d!94078))

(assert (=> bs!35590 m!410297))

(assert (=> bs!35590 m!410297))

(declare-fun m!411279 () Bool)

(assert (=> bs!35590 m!411279))

(declare-fun m!411281 () Bool)

(assert (=> bs!35590 m!411281))

(assert (=> b!307471 d!94078))

(declare-fun d!94084 () Bool)

(declare-fun lt!131523 () Bool)

(declare-fun content!608 (List!4073) (InoxSet Token!1306))

(assert (=> d!94084 (= lt!131523 (select (content!608 tokens!465) (head!966 (t!43305 tokens!465))))))

(declare-fun e!191595 () Bool)

(assert (=> d!94084 (= lt!131523 e!191595)))

(declare-fun res!140094 () Bool)

(assert (=> d!94084 (=> (not res!140094) (not e!191595))))

(assert (=> d!94084 (= res!140094 ((_ is Cons!4063) tokens!465))))

(assert (=> d!94084 (= (contains!803 tokens!465 (head!966 (t!43305 tokens!465))) lt!131523)))

(declare-fun b!308050 () Bool)

(declare-fun e!191594 () Bool)

(assert (=> b!308050 (= e!191595 e!191594)))

(declare-fun res!140093 () Bool)

(assert (=> b!308050 (=> res!140093 e!191594)))

(assert (=> b!308050 (= res!140093 (= (h!9460 tokens!465) (head!966 (t!43305 tokens!465))))))

(declare-fun b!308051 () Bool)

(assert (=> b!308051 (= e!191594 (contains!803 (t!43305 tokens!465) (head!966 (t!43305 tokens!465))))))

(assert (= (and d!94084 res!140094) b!308050))

(assert (= (and b!308050 (not res!140093)) b!308051))

(declare-fun m!411291 () Bool)

(assert (=> d!94084 m!411291))

(assert (=> d!94084 m!410313))

(declare-fun m!411293 () Bool)

(assert (=> d!94084 m!411293))

(assert (=> b!308051 m!410313))

(declare-fun m!411295 () Bool)

(assert (=> b!308051 m!411295))

(assert (=> b!307471 d!94084))

(declare-fun d!94092 () Bool)

(assert (=> d!94092 (= lt!131170 (_2!2561 lt!131152))))

(declare-fun lt!131528 () Unit!5690)

(declare-fun choose!2695 (List!4071 List!4071 List!4071 List!4071 List!4071) Unit!5690)

(assert (=> d!94092 (= lt!131528 (choose!2695 lt!131150 lt!131170 lt!131150 (_2!2561 lt!131152) lt!131156))))

(assert (=> d!94092 (isPrefix!441 lt!131150 lt!131156)))

(assert (=> d!94092 (= (lemmaSamePrefixThenSameSuffix!226 lt!131150 lt!131170 lt!131150 (_2!2561 lt!131152) lt!131156) lt!131528)))

(declare-fun bs!35593 () Bool)

(assert (= bs!35593 d!94092))

(declare-fun m!411297 () Bool)

(assert (=> bs!35593 m!411297))

(declare-fun m!411299 () Bool)

(assert (=> bs!35593 m!411299))

(assert (=> b!307471 d!94092))

(declare-fun d!94094 () Bool)

(assert (=> d!94094 (= (isEmpty!2778 (t!43305 tokens!465)) ((_ is Nil!4063) (t!43305 tokens!465)))))

(assert (=> b!307471 d!94094))

(declare-fun b!308060 () Bool)

(declare-fun res!140108 () Bool)

(declare-fun e!191602 () Bool)

(assert (=> b!308060 (=> (not res!140108) (not e!191602))))

(declare-fun lt!131530 () Option!928)

(assert (=> b!308060 (= res!140108 (matchR!323 (regex!781 (rule!1394 (_1!2561 (get!1388 lt!131530)))) (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131530))))))))

(declare-fun b!308061 () Bool)

(assert (=> b!308061 (= e!191602 (contains!804 rules!1920 (rule!1394 (_1!2561 (get!1388 lt!131530)))))))

(declare-fun b!308062 () Bool)

(declare-fun res!140106 () Bool)

(assert (=> b!308062 (=> (not res!140106) (not e!191602))))

(assert (=> b!308062 (= res!140106 (= (++!1102 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131530)))) (_2!2561 (get!1388 lt!131530))) lt!131170))))

(declare-fun d!94096 () Bool)

(declare-fun e!191604 () Bool)

(assert (=> d!94096 e!191604))

(declare-fun res!140107 () Bool)

(assert (=> d!94096 (=> res!140107 e!191604)))

(assert (=> d!94096 (= res!140107 (isEmpty!2779 lt!131530))))

(declare-fun e!191603 () Option!928)

(assert (=> d!94096 (= lt!131530 e!191603)))

(declare-fun c!58406 () Bool)

(assert (=> d!94096 (= c!58406 (and ((_ is Cons!4062) rules!1920) ((_ is Nil!4062) (t!43304 rules!1920))))))

(declare-fun lt!131533 () Unit!5690)

(declare-fun lt!131532 () Unit!5690)

(assert (=> d!94096 (= lt!131533 lt!131532)))

(assert (=> d!94096 (isPrefix!441 lt!131170 lt!131170)))

(assert (=> d!94096 (= lt!131532 (lemmaIsPrefixRefl!238 lt!131170 lt!131170))))

(assert (=> d!94096 (rulesValidInductive!233 thiss!17480 rules!1920)))

(assert (=> d!94096 (= (maxPrefix!383 thiss!17480 rules!1920 lt!131170) lt!131530)))

(declare-fun bm!17911 () Bool)

(declare-fun call!17916 () Option!928)

(assert (=> bm!17911 (= call!17916 (maxPrefixOneRule!172 thiss!17480 (h!9459 rules!1920) lt!131170))))

(declare-fun b!308063 () Bool)

(declare-fun res!140103 () Bool)

(assert (=> b!308063 (=> (not res!140103) (not e!191602))))

(assert (=> b!308063 (= res!140103 (< (size!3246 (_2!2561 (get!1388 lt!131530))) (size!3246 lt!131170)))))

(declare-fun b!308064 () Bool)

(assert (=> b!308064 (= e!191603 call!17916)))

(declare-fun b!308065 () Bool)

(assert (=> b!308065 (= e!191604 e!191602)))

(declare-fun res!140105 () Bool)

(assert (=> b!308065 (=> (not res!140105) (not e!191602))))

(assert (=> b!308065 (= res!140105 (isDefined!767 lt!131530))))

(declare-fun b!308066 () Bool)

(declare-fun res!140104 () Bool)

(assert (=> b!308066 (=> (not res!140104) (not e!191602))))

(assert (=> b!308066 (= res!140104 (= (value!26574 (_1!2561 (get!1388 lt!131530))) (apply!891 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131530)))) (seqFromList!928 (originalCharacters!824 (_1!2561 (get!1388 lt!131530)))))))))

(declare-fun b!308067 () Bool)

(declare-fun res!140109 () Bool)

(assert (=> b!308067 (=> (not res!140109) (not e!191602))))

(assert (=> b!308067 (= res!140109 (= (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131530)))) (originalCharacters!824 (_1!2561 (get!1388 lt!131530)))))))

(declare-fun b!308068 () Bool)

(declare-fun lt!131531 () Option!928)

(declare-fun lt!131529 () Option!928)

(assert (=> b!308068 (= e!191603 (ite (and ((_ is None!927) lt!131531) ((_ is None!927) lt!131529)) None!927 (ite ((_ is None!927) lt!131529) lt!131531 (ite ((_ is None!927) lt!131531) lt!131529 (ite (>= (size!3243 (_1!2561 (v!14932 lt!131531))) (size!3243 (_1!2561 (v!14932 lt!131529)))) lt!131531 lt!131529)))))))

(assert (=> b!308068 (= lt!131531 call!17916)))

(assert (=> b!308068 (= lt!131529 (maxPrefix!383 thiss!17480 (t!43304 rules!1920) lt!131170))))

(assert (= (and d!94096 c!58406) b!308064))

(assert (= (and d!94096 (not c!58406)) b!308068))

(assert (= (or b!308064 b!308068) bm!17911))

(assert (= (and d!94096 (not res!140107)) b!308065))

(assert (= (and b!308065 res!140105) b!308067))

(assert (= (and b!308067 res!140109) b!308063))

(assert (= (and b!308063 res!140103) b!308062))

(assert (= (and b!308062 res!140106) b!308066))

(assert (= (and b!308066 res!140104) b!308060))

(assert (= (and b!308060 res!140108) b!308061))

(declare-fun m!411309 () Bool)

(assert (=> b!308068 m!411309))

(declare-fun m!411311 () Bool)

(assert (=> b!308062 m!411311))

(declare-fun m!411313 () Bool)

(assert (=> b!308062 m!411313))

(assert (=> b!308062 m!411313))

(declare-fun m!411315 () Bool)

(assert (=> b!308062 m!411315))

(assert (=> b!308062 m!411315))

(declare-fun m!411317 () Bool)

(assert (=> b!308062 m!411317))

(assert (=> b!308067 m!411311))

(assert (=> b!308067 m!411313))

(assert (=> b!308067 m!411313))

(assert (=> b!308067 m!411315))

(assert (=> b!308066 m!411311))

(declare-fun m!411319 () Bool)

(assert (=> b!308066 m!411319))

(assert (=> b!308066 m!411319))

(declare-fun m!411321 () Bool)

(assert (=> b!308066 m!411321))

(assert (=> b!308060 m!411311))

(assert (=> b!308060 m!411313))

(assert (=> b!308060 m!411313))

(assert (=> b!308060 m!411315))

(assert (=> b!308060 m!411315))

(declare-fun m!411323 () Bool)

(assert (=> b!308060 m!411323))

(declare-fun m!411325 () Bool)

(assert (=> bm!17911 m!411325))

(assert (=> b!308061 m!411311))

(declare-fun m!411327 () Bool)

(assert (=> b!308061 m!411327))

(declare-fun m!411329 () Bool)

(assert (=> d!94096 m!411329))

(declare-fun m!411331 () Bool)

(assert (=> d!94096 m!411331))

(declare-fun m!411333 () Bool)

(assert (=> d!94096 m!411333))

(assert (=> d!94096 m!410421))

(assert (=> b!308063 m!411311))

(declare-fun m!411335 () Bool)

(assert (=> b!308063 m!411335))

(assert (=> b!308063 m!411253))

(declare-fun m!411337 () Bool)

(assert (=> b!308065 m!411337))

(assert (=> b!307471 d!94096))

(declare-fun b!308083 () Bool)

(declare-fun e!191614 () Bool)

(declare-fun tail!542 (List!4071) List!4071)

(assert (=> b!308083 (= e!191614 (isPrefix!441 (tail!542 lt!131150) (tail!542 lt!131162)))))

(declare-fun b!308081 () Bool)

(declare-fun e!191616 () Bool)

(assert (=> b!308081 (= e!191616 e!191614)))

(declare-fun res!140124 () Bool)

(assert (=> b!308081 (=> (not res!140124) (not e!191614))))

(assert (=> b!308081 (= res!140124 (not ((_ is Nil!4061) lt!131162)))))

(declare-fun b!308084 () Bool)

(declare-fun e!191615 () Bool)

(assert (=> b!308084 (= e!191615 (>= (size!3246 lt!131162) (size!3246 lt!131150)))))

(declare-fun d!94102 () Bool)

(assert (=> d!94102 e!191615))

(declare-fun res!140122 () Bool)

(assert (=> d!94102 (=> res!140122 e!191615)))

(declare-fun lt!131537 () Bool)

(assert (=> d!94102 (= res!140122 (not lt!131537))))

(assert (=> d!94102 (= lt!131537 e!191616)))

(declare-fun res!140123 () Bool)

(assert (=> d!94102 (=> res!140123 e!191616)))

(assert (=> d!94102 (= res!140123 ((_ is Nil!4061) lt!131150))))

(assert (=> d!94102 (= (isPrefix!441 lt!131150 lt!131162) lt!131537)))

(declare-fun b!308082 () Bool)

(declare-fun res!140125 () Bool)

(assert (=> b!308082 (=> (not res!140125) (not e!191614))))

(declare-fun head!968 (List!4071) C!2932)

(assert (=> b!308082 (= res!140125 (= (head!968 lt!131150) (head!968 lt!131162)))))

(assert (= (and d!94102 (not res!140123)) b!308081))

(assert (= (and b!308081 res!140124) b!308082))

(assert (= (and b!308082 res!140125) b!308083))

(assert (= (and d!94102 (not res!140122)) b!308084))

(declare-fun m!411339 () Bool)

(assert (=> b!308083 m!411339))

(declare-fun m!411341 () Bool)

(assert (=> b!308083 m!411341))

(assert (=> b!308083 m!411339))

(assert (=> b!308083 m!411341))

(declare-fun m!411343 () Bool)

(assert (=> b!308083 m!411343))

(declare-fun m!411345 () Bool)

(assert (=> b!308084 m!411345))

(assert (=> b!308084 m!410425))

(declare-fun m!411347 () Bool)

(assert (=> b!308082 m!411347))

(declare-fun m!411349 () Bool)

(assert (=> b!308082 m!411349))

(assert (=> b!307471 d!94102))

(declare-fun d!94104 () Bool)

(assert (=> d!94104 (= (isEmpty!2778 tokens!465) ((_ is Nil!4063) tokens!465))))

(assert (=> b!307471 d!94104))

(declare-fun d!94106 () Bool)

(assert (=> d!94106 (= (get!1388 (maxPrefix!383 thiss!17480 rules!1920 lt!131156)) (v!14932 (maxPrefix!383 thiss!17480 rules!1920 lt!131156)))))

(assert (=> b!307471 d!94106))

(declare-fun d!94108 () Bool)

(assert (=> d!94108 (= (head!966 (t!43305 tokens!465)) (h!9460 (t!43305 tokens!465)))))

(assert (=> b!307471 d!94108))

(declare-fun d!94110 () Bool)

(declare-fun e!191634 () Bool)

(assert (=> d!94110 e!191634))

(declare-fun res!140148 () Bool)

(assert (=> d!94110 (=> res!140148 e!191634)))

(assert (=> d!94110 (= res!140148 (isEmpty!2778 tokens!465))))

(declare-fun lt!131550 () Unit!5690)

(declare-fun choose!2699 (LexerInterface!667 List!4072 List!4073 Token!1306) Unit!5690)

(assert (=> d!94110 (= lt!131550 (choose!2699 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!94110 (not (isEmpty!2776 rules!1920))))

(assert (=> d!94110 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!188 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!131550)))

(declare-fun b!308108 () Bool)

(declare-fun e!191633 () Bool)

(assert (=> b!308108 (= e!191634 e!191633)))

(declare-fun res!140147 () Bool)

(assert (=> b!308108 (=> (not res!140147) (not e!191633))))

(assert (=> b!308108 (= res!140147 (isDefined!767 (maxPrefix!383 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!348 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!308109 () Bool)

(assert (=> b!308109 (= e!191633 (= (_1!2561 (get!1388 (maxPrefix!383 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!348 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!966 tokens!465)))))

(assert (= (and d!94110 (not res!140148)) b!308108))

(assert (= (and b!308108 res!140147) b!308109))

(assert (=> d!94110 m!410303))

(declare-fun m!411417 () Bool)

(assert (=> d!94110 m!411417))

(assert (=> d!94110 m!410327))

(assert (=> b!308108 m!410223))

(assert (=> b!308108 m!410223))

(declare-fun m!411421 () Bool)

(assert (=> b!308108 m!411421))

(assert (=> b!308108 m!411421))

(declare-fun m!411423 () Bool)

(assert (=> b!308108 m!411423))

(assert (=> b!308109 m!410223))

(assert (=> b!308109 m!410223))

(assert (=> b!308109 m!411421))

(assert (=> b!308109 m!411421))

(declare-fun m!411425 () Bool)

(assert (=> b!308109 m!411425))

(assert (=> b!308109 m!410337))

(assert (=> b!307471 d!94110))

(assert (=> b!307471 d!93916))

(declare-fun d!94132 () Bool)

(assert (=> d!94132 (= (list!1713 (printWithSeparatorTokenWhenNeededRec!340 thiss!17480 rules!1920 lt!131159 separatorToken!170 0)) (list!1717 (c!58276 (printWithSeparatorTokenWhenNeededRec!340 thiss!17480 rules!1920 lt!131159 separatorToken!170 0))))))

(declare-fun bs!35595 () Bool)

(assert (= bs!35595 d!94132))

(declare-fun m!411427 () Bool)

(assert (=> bs!35595 m!411427))

(assert (=> b!307473 d!94132))

(declare-fun bs!35596 () Bool)

(declare-fun d!94136 () Bool)

(assert (= bs!35596 (and d!94136 d!93922)))

(declare-fun lambda!10524 () Int)

(assert (=> bs!35596 (not (= lambda!10524 lambda!10508))))

(declare-fun bs!35597 () Bool)

(assert (= bs!35597 (and d!94136 b!307890)))

(assert (=> bs!35597 (not (= lambda!10524 lambda!10514))))

(declare-fun bs!35598 () Bool)

(assert (= bs!35598 (and d!94136 b!307468)))

(assert (=> bs!35598 (not (= lambda!10524 lambda!10492))))

(declare-fun bs!35599 () Bool)

(assert (= bs!35599 (and d!94136 b!307466)))

(assert (=> bs!35599 (= lambda!10524 lambda!10491)))

(declare-fun bs!35600 () Bool)

(assert (= bs!35600 (and d!94136 b!308013)))

(assert (=> bs!35600 (not (= lambda!10524 lambda!10522))))

(declare-fun bs!35601 () Bool)

(assert (= bs!35601 (and d!94136 d!94010)))

(assert (=> bs!35601 (= lambda!10524 lambda!10521)))

(declare-fun bs!35602 () Bool)

(declare-fun b!308119 () Bool)

(assert (= bs!35602 (and b!308119 d!93922)))

(declare-fun lambda!10525 () Int)

(assert (=> bs!35602 (= lambda!10525 lambda!10508)))

(declare-fun bs!35603 () Bool)

(assert (= bs!35603 (and b!308119 b!307890)))

(assert (=> bs!35603 (= lambda!10525 lambda!10514)))

(declare-fun bs!35604 () Bool)

(assert (= bs!35604 (and b!308119 d!94136)))

(assert (=> bs!35604 (not (= lambda!10525 lambda!10524))))

(declare-fun bs!35605 () Bool)

(assert (= bs!35605 (and b!308119 b!307468)))

(assert (=> bs!35605 (= lambda!10525 lambda!10492)))

(declare-fun bs!35606 () Bool)

(assert (= bs!35606 (and b!308119 b!307466)))

(assert (=> bs!35606 (not (= lambda!10525 lambda!10491))))

(declare-fun bs!35607 () Bool)

(assert (= bs!35607 (and b!308119 b!308013)))

(assert (=> bs!35607 (= lambda!10525 lambda!10522)))

(declare-fun bs!35608 () Bool)

(assert (= bs!35608 (and b!308119 d!94010)))

(assert (=> bs!35608 (not (= lambda!10525 lambda!10521))))

(declare-fun b!308129 () Bool)

(declare-fun e!191649 () Bool)

(assert (=> b!308129 (= e!191649 true)))

(declare-fun b!308128 () Bool)

(declare-fun e!191648 () Bool)

(assert (=> b!308128 (= e!191648 e!191649)))

(declare-fun b!308127 () Bool)

(declare-fun e!191647 () Bool)

(assert (=> b!308127 (= e!191647 e!191648)))

(assert (=> b!308119 e!191647))

(assert (= b!308128 b!308129))

(assert (= b!308127 b!308128))

(assert (= (and b!308119 ((_ is Cons!4062) rules!1920)) b!308127))

(assert (=> b!308129 (< (dynLambda!2219 order!3297 (toValue!1540 (transformation!781 (h!9459 rules!1920)))) (dynLambda!2220 order!3299 lambda!10525))))

(assert (=> b!308129 (< (dynLambda!2221 order!3301 (toChars!1399 (transformation!781 (h!9459 rules!1920)))) (dynLambda!2220 order!3299 lambda!10525))))

(assert (=> b!308119 true))

(declare-fun c!58411 () Bool)

(declare-fun call!17920 () BalanceConc!2776)

(declare-fun bm!17913 () Bool)

(declare-fun call!17922 () Token!1306)

(assert (=> bm!17913 (= call!17920 (charsOf!424 (ite c!58411 separatorToken!170 call!17922)))))

(declare-fun bm!17914 () Bool)

(declare-fun call!17919 () Token!1306)

(assert (=> bm!17914 (= call!17922 call!17919)))

(declare-fun lt!131553 () BalanceConc!2776)

(assert (=> d!94136 (= (list!1713 lt!131553) (printWithSeparatorTokenWhenNeededList!348 thiss!17480 rules!1920 (dropList!196 lt!131159 0) separatorToken!170))))

(declare-fun e!191639 () BalanceConc!2776)

(assert (=> d!94136 (= lt!131553 e!191639)))

(declare-fun c!58410 () Bool)

(assert (=> d!94136 (= c!58410 (>= 0 (size!3247 lt!131159)))))

(declare-fun lt!131560 () Unit!5690)

(assert (=> d!94136 (= lt!131560 (lemmaContentSubsetPreservesForall!140 (list!1716 lt!131159) (dropList!196 lt!131159 0) lambda!10524))))

(declare-fun e!191637 () Bool)

(assert (=> d!94136 e!191637))

(declare-fun res!140152 () Bool)

(assert (=> d!94136 (=> (not res!140152) (not e!191637))))

(assert (=> d!94136 (= res!140152 (>= 0 0))))

(assert (=> d!94136 (= (printWithSeparatorTokenWhenNeededRec!340 thiss!17480 rules!1920 lt!131159 separatorToken!170 0) lt!131553)))

(declare-fun bm!17915 () Bool)

(assert (=> bm!17915 (= call!17919 (apply!892 lt!131159 0))))

(declare-fun b!308114 () Bool)

(assert (=> b!308114 (= e!191637 (<= 0 (size!3247 lt!131159)))))

(declare-fun b!308115 () Bool)

(declare-fun e!191642 () BalanceConc!2776)

(declare-fun call!17921 () BalanceConc!2776)

(declare-fun lt!131563 () BalanceConc!2776)

(assert (=> b!308115 (= e!191642 (++!1104 call!17921 lt!131563))))

(declare-fun b!308116 () Bool)

(declare-fun e!191640 () Bool)

(declare-fun lt!131554 () Option!929)

(assert (=> b!308116 (= e!191640 (= (_1!2563 (v!14933 lt!131554)) (apply!892 lt!131159 0)))))

(declare-fun b!308117 () Bool)

(assert (=> b!308117 (= e!191639 (BalanceConc!2777 Empty!1384))))

(declare-fun bm!17916 () Bool)

(declare-fun call!17918 () BalanceConc!2776)

(declare-fun c!58409 () Bool)

(assert (=> bm!17916 (= call!17918 (charsOf!424 (ite c!58409 call!17919 call!17922)))))

(declare-fun b!308118 () Bool)

(declare-fun e!191641 () Bool)

(assert (=> b!308118 (= e!191641 (not (= (_1!2563 (v!14933 lt!131554)) call!17919)))))

(declare-fun e!191638 () BalanceConc!2776)

(assert (=> b!308119 (= e!191639 e!191638)))

(declare-fun lt!131558 () List!4073)

(assert (=> b!308119 (= lt!131558 (list!1716 lt!131159))))

(declare-fun lt!131555 () Unit!5690)

(assert (=> b!308119 (= lt!131555 (lemmaDropApply!236 lt!131558 0))))

(assert (=> b!308119 (= (head!966 (drop!251 lt!131558 0)) (apply!894 lt!131558 0))))

(declare-fun lt!131557 () Unit!5690)

(assert (=> b!308119 (= lt!131557 lt!131555)))

(declare-fun lt!131559 () List!4073)

(assert (=> b!308119 (= lt!131559 (list!1716 lt!131159))))

(declare-fun lt!131565 () Unit!5690)

(assert (=> b!308119 (= lt!131565 (lemmaDropTail!228 lt!131559 0))))

(assert (=> b!308119 (= (tail!541 (drop!251 lt!131559 0)) (drop!251 lt!131559 (+ 0 1)))))

(declare-fun lt!131564 () Unit!5690)

(assert (=> b!308119 (= lt!131564 lt!131565)))

(declare-fun lt!131562 () Unit!5690)

(assert (=> b!308119 (= lt!131562 (forallContained!334 (list!1716 lt!131159) lambda!10525 (apply!892 lt!131159 0)))))

(assert (=> b!308119 (= lt!131563 (printWithSeparatorTokenWhenNeededRec!340 thiss!17480 rules!1920 lt!131159 separatorToken!170 (+ 0 1)))))

(assert (=> b!308119 (= lt!131554 (maxPrefixZipperSequence!346 thiss!17480 rules!1920 (++!1104 (charsOf!424 (apply!892 lt!131159 0)) lt!131563)))))

(declare-fun res!140153 () Bool)

(assert (=> b!308119 (= res!140153 ((_ is Some!928) lt!131554))))

(assert (=> b!308119 (=> (not res!140153) (not e!191640))))

(assert (=> b!308119 (= c!58409 e!191640)))

(declare-fun b!308120 () Bool)

(assert (=> b!308120 (= e!191638 call!17921)))

(declare-fun bm!17917 () Bool)

(assert (=> bm!17917 (= call!17921 (++!1104 call!17918 (ite c!58409 lt!131563 call!17920)))))

(declare-fun b!308121 () Bool)

(assert (=> b!308121 (= e!191642 (BalanceConc!2777 Empty!1384))))

(assert (=> b!308121 (= (print!392 thiss!17480 (singletonSeq!327 call!17922)) (printTailRec!353 thiss!17480 (singletonSeq!327 call!17922) 0 (BalanceConc!2777 Empty!1384)))))

(declare-fun lt!131556 () Unit!5690)

(declare-fun Unit!5706 () Unit!5690)

(assert (=> b!308121 (= lt!131556 Unit!5706)))

(declare-fun lt!131561 () Unit!5690)

(assert (=> b!308121 (= lt!131561 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!144 thiss!17480 rules!1920 (list!1713 call!17920) (list!1713 lt!131563)))))

(assert (=> b!308121 false))

(declare-fun lt!131552 () Unit!5690)

(declare-fun Unit!5707 () Unit!5690)

(assert (=> b!308121 (= lt!131552 Unit!5707)))

(declare-fun b!308122 () Bool)

(assert (=> b!308122 (= c!58411 e!191641)))

(declare-fun res!140151 () Bool)

(assert (=> b!308122 (=> (not res!140151) (not e!191641))))

(assert (=> b!308122 (= res!140151 ((_ is Some!928) lt!131554))))

(assert (=> b!308122 (= e!191638 e!191642)))

(assert (= (and d!94136 res!140152) b!308114))

(assert (= (and d!94136 c!58410) b!308117))

(assert (= (and d!94136 (not c!58410)) b!308119))

(assert (= (and b!308119 res!140153) b!308116))

(assert (= (and b!308119 c!58409) b!308120))

(assert (= (and b!308119 (not c!58409)) b!308122))

(assert (= (and b!308122 res!140151) b!308118))

(assert (= (and b!308122 c!58411) b!308115))

(assert (= (and b!308122 (not c!58411)) b!308121))

(assert (= (or b!308115 b!308121) bm!17914))

(assert (= (or b!308115 b!308121) bm!17913))

(assert (= (or b!308120 bm!17914 b!308118) bm!17915))

(assert (= (or b!308120 b!308115) bm!17916))

(assert (= (or b!308120 b!308115) bm!17917))

(assert (=> b!308119 m!410539))

(declare-fun m!411433 () Bool)

(assert (=> b!308119 m!411433))

(declare-fun m!411435 () Bool)

(assert (=> b!308119 m!411435))

(declare-fun m!411437 () Bool)

(assert (=> b!308119 m!411437))

(declare-fun m!411439 () Bool)

(assert (=> b!308119 m!411439))

(declare-fun m!411441 () Bool)

(assert (=> b!308119 m!411441))

(assert (=> b!308119 m!411433))

(assert (=> b!308119 m!411437))

(assert (=> b!308119 m!411433))

(assert (=> b!308119 m!411439))

(declare-fun m!411443 () Bool)

(assert (=> b!308119 m!411443))

(declare-fun m!411445 () Bool)

(assert (=> b!308119 m!411445))

(declare-fun m!411447 () Bool)

(assert (=> b!308119 m!411447))

(assert (=> b!308119 m!411441))

(declare-fun m!411449 () Bool)

(assert (=> b!308119 m!411449))

(declare-fun m!411451 () Bool)

(assert (=> b!308119 m!411451))

(declare-fun m!411453 () Bool)

(assert (=> b!308119 m!411453))

(declare-fun m!411455 () Bool)

(assert (=> b!308119 m!411455))

(assert (=> b!308119 m!411451))

(declare-fun m!411457 () Bool)

(assert (=> b!308119 m!411457))

(declare-fun m!411459 () Bool)

(assert (=> b!308119 m!411459))

(assert (=> b!308119 m!410539))

(assert (=> bm!17915 m!411433))

(declare-fun m!411461 () Bool)

(assert (=> b!308121 m!411461))

(declare-fun m!411463 () Bool)

(assert (=> b!308121 m!411463))

(assert (=> b!308121 m!411461))

(declare-fun m!411465 () Bool)

(assert (=> b!308121 m!411465))

(assert (=> b!308121 m!411461))

(declare-fun m!411467 () Bool)

(assert (=> b!308121 m!411467))

(declare-fun m!411469 () Bool)

(assert (=> b!308121 m!411469))

(declare-fun m!411471 () Bool)

(assert (=> b!308121 m!411471))

(assert (=> b!308121 m!411469))

(assert (=> b!308121 m!411467))

(declare-fun m!411473 () Bool)

(assert (=> b!308115 m!411473))

(declare-fun m!411475 () Bool)

(assert (=> bm!17913 m!411475))

(assert (=> d!94136 m!410539))

(declare-fun m!411477 () Bool)

(assert (=> d!94136 m!411477))

(declare-fun m!411479 () Bool)

(assert (=> d!94136 m!411479))

(assert (=> d!94136 m!411477))

(declare-fun m!411481 () Bool)

(assert (=> d!94136 m!411481))

(assert (=> d!94136 m!411477))

(declare-fun m!411483 () Bool)

(assert (=> d!94136 m!411483))

(declare-fun m!411485 () Bool)

(assert (=> d!94136 m!411485))

(assert (=> d!94136 m!410539))

(declare-fun m!411487 () Bool)

(assert (=> bm!17916 m!411487))

(assert (=> b!308114 m!411481))

(assert (=> b!308116 m!411433))

(declare-fun m!411489 () Bool)

(assert (=> bm!17917 m!411489))

(assert (=> b!307473 d!94136))

(declare-fun bs!35609 () Bool)

(declare-fun b!308157 () Bool)

(assert (= bs!35609 (and b!308157 b!307890)))

(declare-fun lambda!10526 () Int)

(assert (=> bs!35609 (= lambda!10526 lambda!10514)))

(declare-fun bs!35610 () Bool)

(assert (= bs!35610 (and b!308157 d!94136)))

(assert (=> bs!35610 (not (= lambda!10526 lambda!10524))))

(declare-fun bs!35611 () Bool)

(assert (= bs!35611 (and b!308157 b!307468)))

(assert (=> bs!35611 (= lambda!10526 lambda!10492)))

(declare-fun bs!35612 () Bool)

(assert (= bs!35612 (and b!308157 b!307466)))

(assert (=> bs!35612 (not (= lambda!10526 lambda!10491))))

(declare-fun bs!35613 () Bool)

(assert (= bs!35613 (and b!308157 d!93922)))

(assert (=> bs!35613 (= lambda!10526 lambda!10508)))

(declare-fun bs!35614 () Bool)

(assert (= bs!35614 (and b!308157 b!308119)))

(assert (=> bs!35614 (= lambda!10526 lambda!10525)))

(declare-fun bs!35615 () Bool)

(assert (= bs!35615 (and b!308157 b!308013)))

(assert (=> bs!35615 (= lambda!10526 lambda!10522)))

(declare-fun bs!35616 () Bool)

(assert (= bs!35616 (and b!308157 d!94010)))

(assert (=> bs!35616 (not (= lambda!10526 lambda!10521))))

(declare-fun b!308171 () Bool)

(declare-fun e!191677 () Bool)

(assert (=> b!308171 (= e!191677 true)))

(declare-fun b!308170 () Bool)

(declare-fun e!191676 () Bool)

(assert (=> b!308170 (= e!191676 e!191677)))

(declare-fun b!308169 () Bool)

(declare-fun e!191675 () Bool)

(assert (=> b!308169 (= e!191675 e!191676)))

(assert (=> b!308157 e!191675))

(assert (= b!308170 b!308171))

(assert (= b!308169 b!308170))

(assert (= (and b!308157 ((_ is Cons!4062) rules!1920)) b!308169))

(assert (=> b!308171 (< (dynLambda!2219 order!3297 (toValue!1540 (transformation!781 (h!9459 rules!1920)))) (dynLambda!2220 order!3299 lambda!10526))))

(assert (=> b!308171 (< (dynLambda!2221 order!3301 (toChars!1399 (transformation!781 (h!9459 rules!1920)))) (dynLambda!2220 order!3299 lambda!10526))))

(assert (=> b!308157 true))

(declare-fun e!191670 () List!4071)

(declare-fun e!191672 () List!4071)

(assert (=> b!308157 (= e!191670 e!191672)))

(declare-fun lt!131568 () Unit!5690)

(assert (=> b!308157 (= lt!131568 (forallContained!334 tokens!465 lambda!10526 (h!9460 tokens!465)))))

(declare-fun lt!131567 () List!4071)

(assert (=> b!308157 (= lt!131567 (printWithSeparatorTokenWhenNeededList!348 thiss!17480 rules!1920 (t!43305 tokens!465) separatorToken!170))))

(declare-fun lt!131570 () Option!928)

(assert (=> b!308157 (= lt!131570 (maxPrefix!383 thiss!17480 rules!1920 (++!1102 (list!1713 (charsOf!424 (h!9460 tokens!465))) lt!131567)))))

(declare-fun c!58415 () Bool)

(assert (=> b!308157 (= c!58415 (and ((_ is Some!927) lt!131570) (= (_1!2561 (v!14932 lt!131570)) (h!9460 tokens!465))))))

(declare-fun bm!17918 () Bool)

(declare-fun call!17927 () BalanceConc!2776)

(assert (=> bm!17918 (= call!17927 (charsOf!424 (h!9460 tokens!465)))))

(declare-fun bm!17919 () Bool)

(declare-fun c!58412 () Bool)

(assert (=> bm!17919 (= c!58412 c!58415)))

(declare-fun call!17926 () List!4071)

(declare-fun e!191666 () List!4071)

(declare-fun call!17925 () List!4071)

(assert (=> bm!17919 (= call!17925 (++!1102 e!191666 (ite c!58415 lt!131567 call!17926)))))

(declare-fun bm!17920 () Bool)

(declare-fun call!17924 () BalanceConc!2776)

(assert (=> bm!17920 (= call!17924 call!17927)))

(declare-fun bm!17921 () Bool)

(declare-fun e!191667 () BalanceConc!2776)

(declare-fun call!17923 () List!4071)

(assert (=> bm!17921 (= call!17923 (list!1713 (ite c!58415 call!17927 e!191667)))))

(declare-fun b!308158 () Bool)

(assert (=> b!308158 (= e!191666 (list!1713 call!17924))))

(declare-fun b!308159 () Bool)

(declare-fun e!191671 () List!4071)

(assert (=> b!308159 (= e!191671 (++!1102 call!17925 lt!131567))))

(declare-fun bm!17922 () Bool)

(assert (=> bm!17922 (= call!17926 call!17923)))

(declare-fun c!58416 () Bool)

(declare-fun c!58413 () Bool)

(assert (=> bm!17922 (= c!58416 c!58413)))

(declare-fun b!308160 () Bool)

(assert (=> b!308160 (= e!191671 Nil!4061)))

(assert (=> b!308160 (= (print!392 thiss!17480 (singletonSeq!327 (h!9460 tokens!465))) (printTailRec!353 thiss!17480 (singletonSeq!327 (h!9460 tokens!465)) 0 (BalanceConc!2777 Empty!1384)))))

(declare-fun lt!131571 () Unit!5690)

(declare-fun Unit!5708 () Unit!5690)

(assert (=> b!308160 (= lt!131571 Unit!5708)))

(declare-fun lt!131569 () Unit!5690)

(assert (=> b!308160 (= lt!131569 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!144 thiss!17480 rules!1920 call!17926 lt!131567))))

(assert (=> b!308160 false))

(declare-fun lt!131566 () Unit!5690)

(declare-fun Unit!5709 () Unit!5690)

(assert (=> b!308160 (= lt!131566 Unit!5709)))

(declare-fun b!308161 () Bool)

(assert (=> b!308161 (= e!191667 call!17924)))

(declare-fun b!308162 () Bool)

(assert (=> b!308162 (= e!191672 call!17925)))

(declare-fun b!308163 () Bool)

(assert (=> b!308163 (= c!58413 (and ((_ is Some!927) lt!131570) (not (= (_1!2561 (v!14932 lt!131570)) (h!9460 tokens!465)))))))

(assert (=> b!308163 (= e!191672 e!191671)))

(declare-fun b!308164 () Bool)

(assert (=> b!308164 (= e!191667 (charsOf!424 separatorToken!170))))

(declare-fun b!308165 () Bool)

(assert (=> b!308165 (= e!191670 Nil!4061)))

(declare-fun d!94138 () Bool)

(declare-fun c!58414 () Bool)

(assert (=> d!94138 (= c!58414 ((_ is Cons!4063) tokens!465))))

(assert (=> d!94138 (= (printWithSeparatorTokenWhenNeededList!348 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!191670)))

(declare-fun b!308166 () Bool)

(assert (=> b!308166 (= e!191666 call!17923)))

(assert (= (and d!94138 c!58414) b!308157))

(assert (= (and d!94138 (not c!58414)) b!308165))

(assert (= (and b!308157 c!58415) b!308162))

(assert (= (and b!308157 (not c!58415)) b!308163))

(assert (= (and b!308163 c!58413) b!308159))

(assert (= (and b!308163 (not c!58413)) b!308160))

(assert (= (or b!308159 b!308160) bm!17920))

(assert (= (or b!308159 b!308160) bm!17922))

(assert (= (and bm!17922 c!58416) b!308164))

(assert (= (and bm!17922 (not c!58416)) b!308161))

(assert (= (or b!308162 bm!17920) bm!17918))

(assert (= (or b!308162 bm!17922) bm!17921))

(assert (= (or b!308162 b!308159) bm!17919))

(assert (= (and bm!17919 c!58412) b!308166))

(assert (= (and bm!17919 (not c!58412)) b!308158))

(assert (=> bm!17918 m!410293))

(declare-fun m!411499 () Bool)

(assert (=> b!308158 m!411499))

(assert (=> b!308157 m!410293))

(assert (=> b!308157 m!410293))

(assert (=> b!308157 m!410299))

(declare-fun m!411501 () Bool)

(assert (=> b!308157 m!411501))

(assert (=> b!308157 m!410299))

(declare-fun m!411503 () Bool)

(assert (=> b!308157 m!411503))

(assert (=> b!308157 m!410281))

(assert (=> b!308157 m!411503))

(declare-fun m!411505 () Bool)

(assert (=> b!308157 m!411505))

(assert (=> b!308160 m!410261))

(assert (=> b!308160 m!410261))

(assert (=> b!308160 m!410583))

(assert (=> b!308160 m!410261))

(declare-fun m!411507 () Bool)

(assert (=> b!308160 m!411507))

(declare-fun m!411509 () Bool)

(assert (=> b!308160 m!411509))

(declare-fun m!411511 () Bool)

(assert (=> bm!17919 m!411511))

(declare-fun m!411513 () Bool)

(assert (=> b!308159 m!411513))

(declare-fun m!411515 () Bool)

(assert (=> bm!17921 m!411515))

(assert (=> b!308164 m!410285))

(assert (=> b!307473 d!94138))

(declare-fun d!94140 () Bool)

(declare-fun res!140164 () Bool)

(declare-fun e!191706 () Bool)

(assert (=> d!94140 (=> res!140164 e!191706)))

(assert (=> d!94140 (= res!140164 (not ((_ is Cons!4062) rules!1920)))))

(assert (=> d!94140 (= (sepAndNonSepRulesDisjointChars!370 rules!1920 rules!1920) e!191706)))

(declare-fun b!308205 () Bool)

(declare-fun e!191707 () Bool)

(assert (=> b!308205 (= e!191706 e!191707)))

(declare-fun res!140165 () Bool)

(assert (=> b!308205 (=> (not res!140165) (not e!191707))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!151 (Rule!1362 List!4072) Bool)

(assert (=> b!308205 (= res!140165 (ruleDisjointCharsFromAllFromOtherType!151 (h!9459 rules!1920) rules!1920))))

(declare-fun b!308206 () Bool)

(assert (=> b!308206 (= e!191707 (sepAndNonSepRulesDisjointChars!370 rules!1920 (t!43304 rules!1920)))))

(assert (= (and d!94140 (not res!140164)) b!308205))

(assert (= (and b!308205 res!140165) b!308206))

(declare-fun m!411521 () Bool)

(assert (=> b!308205 m!411521))

(declare-fun m!411523 () Bool)

(assert (=> b!308206 m!411523))

(assert (=> b!307451 d!94140))

(declare-fun b!308235 () Bool)

(declare-fun res!140187 () Bool)

(declare-fun e!191724 () Bool)

(assert (=> b!308235 (=> (not res!140187) (not e!191724))))

(declare-fun call!17930 () Bool)

(assert (=> b!308235 (= res!140187 (not call!17930))))

(declare-fun b!308236 () Bool)

(declare-fun e!191726 () Bool)

(declare-fun nullable!196 (Regex!1005) Bool)

(assert (=> b!308236 (= e!191726 (nullable!196 (regex!781 (rule!1394 (h!9460 tokens!465)))))))

(declare-fun bm!17925 () Bool)

(assert (=> bm!17925 (= call!17930 (isEmpty!2775 lt!131150))))

(declare-fun b!308237 () Bool)

(declare-fun e!191725 () Bool)

(declare-fun e!191728 () Bool)

(assert (=> b!308237 (= e!191725 e!191728)))

(declare-fun res!140189 () Bool)

(assert (=> b!308237 (=> res!140189 e!191728)))

(assert (=> b!308237 (= res!140189 call!17930)))

(declare-fun b!308238 () Bool)

(assert (=> b!308238 (= e!191724 (= (head!968 lt!131150) (c!58277 (regex!781 (rule!1394 (h!9460 tokens!465))))))))

(declare-fun b!308239 () Bool)

(declare-fun res!140186 () Bool)

(assert (=> b!308239 (=> res!140186 e!191728)))

(assert (=> b!308239 (= res!140186 (not (isEmpty!2775 (tail!542 lt!131150))))))

(declare-fun b!308240 () Bool)

(assert (=> b!308240 (= e!191728 (not (= (head!968 lt!131150) (c!58277 (regex!781 (rule!1394 (h!9460 tokens!465)))))))))

(declare-fun b!308241 () Bool)

(declare-fun res!140185 () Bool)

(declare-fun e!191727 () Bool)

(assert (=> b!308241 (=> res!140185 e!191727)))

(assert (=> b!308241 (= res!140185 e!191724)))

(declare-fun res!140182 () Bool)

(assert (=> b!308241 (=> (not res!140182) (not e!191724))))

(declare-fun lt!131574 () Bool)

(assert (=> b!308241 (= res!140182 lt!131574)))

(declare-fun b!308242 () Bool)

(declare-fun derivativeStep!162 (Regex!1005 C!2932) Regex!1005)

(assert (=> b!308242 (= e!191726 (matchR!323 (derivativeStep!162 (regex!781 (rule!1394 (h!9460 tokens!465))) (head!968 lt!131150)) (tail!542 lt!131150)))))

(declare-fun b!308243 () Bool)

(assert (=> b!308243 (= e!191727 e!191725)))

(declare-fun res!140183 () Bool)

(assert (=> b!308243 (=> (not res!140183) (not e!191725))))

(assert (=> b!308243 (= res!140183 (not lt!131574))))

(declare-fun b!308245 () Bool)

(declare-fun e!191722 () Bool)

(assert (=> b!308245 (= e!191722 (not lt!131574))))

(declare-fun b!308246 () Bool)

(declare-fun e!191723 () Bool)

(assert (=> b!308246 (= e!191723 (= lt!131574 call!17930))))

(declare-fun b!308247 () Bool)

(assert (=> b!308247 (= e!191723 e!191722)))

(declare-fun c!58425 () Bool)

(assert (=> b!308247 (= c!58425 ((_ is EmptyLang!1005) (regex!781 (rule!1394 (h!9460 tokens!465)))))))

(declare-fun b!308248 () Bool)

(declare-fun res!140188 () Bool)

(assert (=> b!308248 (=> (not res!140188) (not e!191724))))

(assert (=> b!308248 (= res!140188 (isEmpty!2775 (tail!542 lt!131150)))))

(declare-fun b!308244 () Bool)

(declare-fun res!140184 () Bool)

(assert (=> b!308244 (=> res!140184 e!191727)))

(assert (=> b!308244 (= res!140184 (not ((_ is ElementMatch!1005) (regex!781 (rule!1394 (h!9460 tokens!465))))))))

(assert (=> b!308244 (= e!191722 e!191727)))

(declare-fun d!94144 () Bool)

(assert (=> d!94144 e!191723))

(declare-fun c!58423 () Bool)

(assert (=> d!94144 (= c!58423 ((_ is EmptyExpr!1005) (regex!781 (rule!1394 (h!9460 tokens!465)))))))

(assert (=> d!94144 (= lt!131574 e!191726)))

(declare-fun c!58424 () Bool)

(assert (=> d!94144 (= c!58424 (isEmpty!2775 lt!131150))))

(declare-fun validRegex!271 (Regex!1005) Bool)

(assert (=> d!94144 (validRegex!271 (regex!781 (rule!1394 (h!9460 tokens!465))))))

(assert (=> d!94144 (= (matchR!323 (regex!781 (rule!1394 (h!9460 tokens!465))) lt!131150) lt!131574)))

(assert (= (and d!94144 c!58424) b!308236))

(assert (= (and d!94144 (not c!58424)) b!308242))

(assert (= (and d!94144 c!58423) b!308246))

(assert (= (and d!94144 (not c!58423)) b!308247))

(assert (= (and b!308247 c!58425) b!308245))

(assert (= (and b!308247 (not c!58425)) b!308244))

(assert (= (and b!308244 (not res!140184)) b!308241))

(assert (= (and b!308241 res!140182) b!308235))

(assert (= (and b!308235 res!140187) b!308248))

(assert (= (and b!308248 res!140188) b!308238))

(assert (= (and b!308241 (not res!140185)) b!308243))

(assert (= (and b!308243 res!140183) b!308237))

(assert (= (and b!308237 (not res!140189)) b!308239))

(assert (= (and b!308239 (not res!140186)) b!308240))

(assert (= (or b!308246 b!308235 b!308237) bm!17925))

(assert (=> b!308240 m!411347))

(declare-fun m!411525 () Bool)

(assert (=> d!94144 m!411525))

(declare-fun m!411527 () Bool)

(assert (=> d!94144 m!411527))

(assert (=> b!308238 m!411347))

(assert (=> b!308242 m!411347))

(assert (=> b!308242 m!411347))

(declare-fun m!411529 () Bool)

(assert (=> b!308242 m!411529))

(assert (=> b!308242 m!411339))

(assert (=> b!308242 m!411529))

(assert (=> b!308242 m!411339))

(declare-fun m!411531 () Bool)

(assert (=> b!308242 m!411531))

(declare-fun m!411533 () Bool)

(assert (=> b!308236 m!411533))

(assert (=> b!308248 m!411339))

(assert (=> b!308248 m!411339))

(declare-fun m!411535 () Bool)

(assert (=> b!308248 m!411535))

(assert (=> b!308239 m!411339))

(assert (=> b!308239 m!411339))

(assert (=> b!308239 m!411535))

(assert (=> bm!17925 m!411525))

(assert (=> b!307453 d!94144))

(declare-fun d!94148 () Bool)

(assert (=> d!94148 (= (inv!5012 (tag!999 (rule!1394 (h!9460 tokens!465)))) (= (mod (str.len (value!26573 (tag!999 (rule!1394 (h!9460 tokens!465))))) 2) 0))))

(assert (=> b!307452 d!94148))

(declare-fun d!94150 () Bool)

(declare-fun res!140192 () Bool)

(declare-fun e!191731 () Bool)

(assert (=> d!94150 (=> (not res!140192) (not e!191731))))

(declare-fun semiInverseModEq!293 (Int Int) Bool)

(assert (=> d!94150 (= res!140192 (semiInverseModEq!293 (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (toValue!1540 (transformation!781 (rule!1394 (h!9460 tokens!465))))))))

(assert (=> d!94150 (= (inv!5015 (transformation!781 (rule!1394 (h!9460 tokens!465)))) e!191731)))

(declare-fun b!308251 () Bool)

(declare-fun equivClasses!276 (Int Int) Bool)

(assert (=> b!308251 (= e!191731 (equivClasses!276 (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (toValue!1540 (transformation!781 (rule!1394 (h!9460 tokens!465))))))))

(assert (= (and d!94150 res!140192) b!308251))

(declare-fun m!411537 () Bool)

(assert (=> d!94150 m!411537))

(declare-fun m!411539 () Bool)

(assert (=> b!308251 m!411539))

(assert (=> b!307452 d!94150))

(declare-fun d!94152 () Bool)

(assert (=> d!94152 (= (inv!5012 (tag!999 (h!9459 rules!1920))) (= (mod (str.len (value!26573 (tag!999 (h!9459 rules!1920)))) 2) 0))))

(assert (=> b!307454 d!94152))

(declare-fun d!94154 () Bool)

(declare-fun res!140193 () Bool)

(declare-fun e!191732 () Bool)

(assert (=> d!94154 (=> (not res!140193) (not e!191732))))

(assert (=> d!94154 (= res!140193 (semiInverseModEq!293 (toChars!1399 (transformation!781 (h!9459 rules!1920))) (toValue!1540 (transformation!781 (h!9459 rules!1920)))))))

(assert (=> d!94154 (= (inv!5015 (transformation!781 (h!9459 rules!1920))) e!191732)))

(declare-fun b!308252 () Bool)

(assert (=> b!308252 (= e!191732 (equivClasses!276 (toChars!1399 (transformation!781 (h!9459 rules!1920))) (toValue!1540 (transformation!781 (h!9459 rules!1920)))))))

(assert (= (and d!94154 res!140193) b!308252))

(declare-fun m!411541 () Bool)

(assert (=> d!94154 m!411541))

(declare-fun m!411543 () Bool)

(assert (=> b!308252 m!411543))

(assert (=> b!307454 d!94154))

(declare-fun d!94156 () Bool)

(assert (=> d!94156 (= (inv!5012 (tag!999 (rule!1394 separatorToken!170))) (= (mod (str.len (value!26573 (tag!999 (rule!1394 separatorToken!170)))) 2) 0))))

(assert (=> b!307457 d!94156))

(declare-fun d!94158 () Bool)

(declare-fun res!140194 () Bool)

(declare-fun e!191733 () Bool)

(assert (=> d!94158 (=> (not res!140194) (not e!191733))))

(assert (=> d!94158 (= res!140194 (semiInverseModEq!293 (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (toValue!1540 (transformation!781 (rule!1394 separatorToken!170)))))))

(assert (=> d!94158 (= (inv!5015 (transformation!781 (rule!1394 separatorToken!170))) e!191733)))

(declare-fun b!308253 () Bool)

(assert (=> b!308253 (= e!191733 (equivClasses!276 (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (toValue!1540 (transformation!781 (rule!1394 separatorToken!170)))))))

(assert (= (and d!94158 res!140194) b!308253))

(declare-fun m!411545 () Bool)

(assert (=> d!94158 m!411545))

(declare-fun m!411547 () Bool)

(assert (=> b!308253 m!411547))

(assert (=> b!307457 d!94158))

(declare-fun d!94160 () Bool)

(declare-fun lt!131577 () Bool)

(assert (=> d!94160 (= lt!131577 (isEmpty!2778 (list!1716 (_1!2562 (lex!459 thiss!17480 rules!1920 (seqFromList!928 lt!131150))))))))

(declare-fun isEmpty!2786 (Conc!1385) Bool)

(assert (=> d!94160 (= lt!131577 (isEmpty!2786 (c!58278 (_1!2562 (lex!459 thiss!17480 rules!1920 (seqFromList!928 lt!131150))))))))

(assert (=> d!94160 (= (isEmpty!2777 (_1!2562 (lex!459 thiss!17480 rules!1920 (seqFromList!928 lt!131150)))) lt!131577)))

(declare-fun bs!35619 () Bool)

(assert (= bs!35619 d!94160))

(declare-fun m!411549 () Bool)

(assert (=> bs!35619 m!411549))

(assert (=> bs!35619 m!411549))

(declare-fun m!411551 () Bool)

(assert (=> bs!35619 m!411551))

(declare-fun m!411553 () Bool)

(assert (=> bs!35619 m!411553))

(assert (=> b!307456 d!94160))

(declare-fun e!191741 () Bool)

(declare-fun b!308264 () Bool)

(declare-fun lt!131580 () tuple2!4692)

(declare-datatypes ((tuple2!4698 0))(
  ( (tuple2!4699 (_1!2565 List!4073) (_2!2565 List!4071)) )
))
(declare-fun lexList!241 (LexerInterface!667 List!4072 List!4071) tuple2!4698)

(assert (=> b!308264 (= e!191741 (= (list!1713 (_2!2562 lt!131580)) (_2!2565 (lexList!241 thiss!17480 rules!1920 (list!1713 (seqFromList!928 lt!131150))))))))

(declare-fun d!94162 () Bool)

(assert (=> d!94162 e!191741))

(declare-fun res!140201 () Bool)

(assert (=> d!94162 (=> (not res!140201) (not e!191741))))

(declare-fun e!191740 () Bool)

(assert (=> d!94162 (= res!140201 e!191740)))

(declare-fun c!58428 () Bool)

(assert (=> d!94162 (= c!58428 (> (size!3247 (_1!2562 lt!131580)) 0))))

(declare-fun lexTailRecV2!208 (LexerInterface!667 List!4072 BalanceConc!2776 BalanceConc!2776 BalanceConc!2776 BalanceConc!2778) tuple2!4692)

(assert (=> d!94162 (= lt!131580 (lexTailRecV2!208 thiss!17480 rules!1920 (seqFromList!928 lt!131150) (BalanceConc!2777 Empty!1384) (seqFromList!928 lt!131150) (BalanceConc!2779 Empty!1385)))))

(assert (=> d!94162 (= (lex!459 thiss!17480 rules!1920 (seqFromList!928 lt!131150)) lt!131580)))

(declare-fun b!308265 () Bool)

(declare-fun res!140202 () Bool)

(assert (=> b!308265 (=> (not res!140202) (not e!191741))))

(assert (=> b!308265 (= res!140202 (= (list!1716 (_1!2562 lt!131580)) (_1!2565 (lexList!241 thiss!17480 rules!1920 (list!1713 (seqFromList!928 lt!131150))))))))

(declare-fun b!308266 () Bool)

(declare-fun e!191742 () Bool)

(assert (=> b!308266 (= e!191742 (not (isEmpty!2777 (_1!2562 lt!131580))))))

(declare-fun b!308267 () Bool)

(assert (=> b!308267 (= e!191740 e!191742)))

(declare-fun res!140203 () Bool)

(declare-fun size!3249 (BalanceConc!2776) Int)

(assert (=> b!308267 (= res!140203 (< (size!3249 (_2!2562 lt!131580)) (size!3249 (seqFromList!928 lt!131150))))))

(assert (=> b!308267 (=> (not res!140203) (not e!191742))))

(declare-fun b!308268 () Bool)

(assert (=> b!308268 (= e!191740 (= (_2!2562 lt!131580) (seqFromList!928 lt!131150)))))

(assert (= (and d!94162 c!58428) b!308267))

(assert (= (and d!94162 (not c!58428)) b!308268))

(assert (= (and b!308267 res!140203) b!308266))

(assert (= (and d!94162 res!140201) b!308265))

(assert (= (and b!308265 res!140202) b!308264))

(declare-fun m!411555 () Bool)

(assert (=> d!94162 m!411555))

(assert (=> d!94162 m!410235))

(assert (=> d!94162 m!410235))

(declare-fun m!411557 () Bool)

(assert (=> d!94162 m!411557))

(declare-fun m!411559 () Bool)

(assert (=> b!308266 m!411559))

(declare-fun m!411561 () Bool)

(assert (=> b!308265 m!411561))

(assert (=> b!308265 m!410235))

(declare-fun m!411563 () Bool)

(assert (=> b!308265 m!411563))

(assert (=> b!308265 m!411563))

(declare-fun m!411565 () Bool)

(assert (=> b!308265 m!411565))

(declare-fun m!411567 () Bool)

(assert (=> b!308264 m!411567))

(assert (=> b!308264 m!410235))

(assert (=> b!308264 m!411563))

(assert (=> b!308264 m!411563))

(assert (=> b!308264 m!411565))

(declare-fun m!411569 () Bool)

(assert (=> b!308267 m!411569))

(assert (=> b!308267 m!410235))

(declare-fun m!411571 () Bool)

(assert (=> b!308267 m!411571))

(assert (=> b!307456 d!94162))

(declare-fun d!94164 () Bool)

(assert (=> d!94164 (= (seqFromList!928 lt!131150) (fromListB!387 lt!131150))))

(declare-fun bs!35620 () Bool)

(assert (= bs!35620 d!94164))

(declare-fun m!411573 () Bool)

(assert (=> bs!35620 m!411573))

(assert (=> b!307456 d!94164))

(declare-fun b!308273 () Bool)

(declare-fun e!191745 () Bool)

(declare-fun tp_is_empty!1883 () Bool)

(declare-fun tp!109036 () Bool)

(assert (=> b!308273 (= e!191745 (and tp_is_empty!1883 tp!109036))))

(assert (=> b!307447 (= tp!108960 e!191745)))

(assert (= (and b!307447 ((_ is Cons!4061) (originalCharacters!824 (h!9460 tokens!465)))) b!308273))

(declare-fun b!308274 () Bool)

(declare-fun e!191746 () Bool)

(declare-fun tp!109037 () Bool)

(assert (=> b!308274 (= e!191746 (and tp_is_empty!1883 tp!109037))))

(assert (=> b!307441 (= tp!108962 e!191746)))

(assert (= (and b!307441 ((_ is Cons!4061) (originalCharacters!824 separatorToken!170))) b!308274))

(declare-fun b!308288 () Bool)

(declare-fun b_free!11037 () Bool)

(declare-fun b_next!11037 () Bool)

(assert (=> b!308288 (= b_free!11037 (not b_next!11037))))

(declare-fun tp!109049 () Bool)

(declare-fun b_and!26033 () Bool)

(assert (=> b!308288 (= tp!109049 b_and!26033)))

(declare-fun b_free!11039 () Bool)

(declare-fun b_next!11039 () Bool)

(assert (=> b!308288 (= b_free!11039 (not b_next!11039))))

(declare-fun t!43363 () Bool)

(declare-fun tb!19377 () Bool)

(assert (=> (and b!308288 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465))))) t!43363) tb!19377))

(declare-fun result!23376 () Bool)

(assert (= result!23376 result!23336))

(assert (=> b!307583 t!43363))

(declare-fun t!43365 () Bool)

(declare-fun tb!19379 () Bool)

(assert (=> (and b!308288 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))) (toChars!1399 (transformation!781 (rule!1394 separatorToken!170)))) t!43365) tb!19379))

(declare-fun result!23378 () Bool)

(assert (= result!23378 result!23344))

(assert (=> b!307641 t!43365))

(assert (=> d!94058 t!43365))

(assert (=> d!94066 t!43363))

(declare-fun tp!109051 () Bool)

(declare-fun b_and!26035 () Bool)

(assert (=> b!308288 (= tp!109051 (and (=> t!43363 result!23376) (=> t!43365 result!23378) b_and!26035))))

(declare-fun tp!109048 () Bool)

(declare-fun b!308285 () Bool)

(declare-fun e!191760 () Bool)

(declare-fun e!191761 () Bool)

(assert (=> b!308285 (= e!191760 (and (inv!5016 (h!9460 (t!43305 tokens!465))) e!191761 tp!109048))))

(declare-fun e!191762 () Bool)

(declare-fun b!308287 () Bool)

(declare-fun tp!109052 () Bool)

(declare-fun e!191764 () Bool)

(assert (=> b!308287 (= e!191762 (and tp!109052 (inv!5012 (tag!999 (rule!1394 (h!9460 (t!43305 tokens!465))))) (inv!5015 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))) e!191764))))

(declare-fun b!308286 () Bool)

(declare-fun tp!109050 () Bool)

(assert (=> b!308286 (= e!191761 (and (inv!21 (value!26574 (h!9460 (t!43305 tokens!465)))) e!191762 tp!109050))))

(assert (=> b!307462 (= tp!108963 e!191760)))

(assert (=> b!308288 (= e!191764 (and tp!109049 tp!109051))))

(assert (= b!308287 b!308288))

(assert (= b!308286 b!308287))

(assert (= b!308285 b!308286))

(assert (= (and b!307462 ((_ is Cons!4063) (t!43305 tokens!465))) b!308285))

(declare-fun m!411575 () Bool)

(assert (=> b!308285 m!411575))

(declare-fun m!411577 () Bool)

(assert (=> b!308287 m!411577))

(declare-fun m!411579 () Bool)

(assert (=> b!308287 m!411579))

(declare-fun m!411581 () Bool)

(assert (=> b!308286 m!411581))

(declare-fun b!308291 () Bool)

(declare-fun e!191767 () Bool)

(assert (=> b!308291 (= e!191767 true)))

(declare-fun b!308290 () Bool)

(declare-fun e!191766 () Bool)

(assert (=> b!308290 (= e!191766 e!191767)))

(declare-fun b!308289 () Bool)

(declare-fun e!191765 () Bool)

(assert (=> b!308289 (= e!191765 e!191766)))

(assert (=> b!307482 e!191765))

(assert (= b!308290 b!308291))

(assert (= b!308289 b!308290))

(assert (= (and b!307482 ((_ is Cons!4062) (t!43304 rules!1920))) b!308289))

(assert (=> b!308291 (< (dynLambda!2219 order!3297 (toValue!1540 (transformation!781 (h!9459 (t!43304 rules!1920))))) (dynLambda!2220 order!3299 lambda!10492))))

(assert (=> b!308291 (< (dynLambda!2221 order!3301 (toChars!1399 (transformation!781 (h!9459 (t!43304 rules!1920))))) (dynLambda!2220 order!3299 lambda!10492))))

(declare-fun b!308304 () Bool)

(declare-fun e!191770 () Bool)

(declare-fun tp!109065 () Bool)

(assert (=> b!308304 (= e!191770 tp!109065)))

(declare-fun b!308302 () Bool)

(assert (=> b!308302 (= e!191770 tp_is_empty!1883)))

(assert (=> b!307452 (= tp!108968 e!191770)))

(declare-fun b!308305 () Bool)

(declare-fun tp!109066 () Bool)

(declare-fun tp!109064 () Bool)

(assert (=> b!308305 (= e!191770 (and tp!109066 tp!109064))))

(declare-fun b!308303 () Bool)

(declare-fun tp!109063 () Bool)

(declare-fun tp!109067 () Bool)

(assert (=> b!308303 (= e!191770 (and tp!109063 tp!109067))))

(assert (= (and b!307452 ((_ is ElementMatch!1005) (regex!781 (rule!1394 (h!9460 tokens!465))))) b!308302))

(assert (= (and b!307452 ((_ is Concat!1809) (regex!781 (rule!1394 (h!9460 tokens!465))))) b!308303))

(assert (= (and b!307452 ((_ is Star!1005) (regex!781 (rule!1394 (h!9460 tokens!465))))) b!308304))

(assert (= (and b!307452 ((_ is Union!1005) (regex!781 (rule!1394 (h!9460 tokens!465))))) b!308305))

(declare-fun b!308316 () Bool)

(declare-fun b_free!11041 () Bool)

(declare-fun b_next!11041 () Bool)

(assert (=> b!308316 (= b_free!11041 (not b_next!11041))))

(declare-fun tp!109076 () Bool)

(declare-fun b_and!26037 () Bool)

(assert (=> b!308316 (= tp!109076 b_and!26037)))

(declare-fun b_free!11043 () Bool)

(declare-fun b_next!11043 () Bool)

(assert (=> b!308316 (= b_free!11043 (not b_next!11043))))

(declare-fun t!43367 () Bool)

(declare-fun tb!19381 () Bool)

(assert (=> (and b!308316 (= (toChars!1399 (transformation!781 (h!9459 (t!43304 rules!1920)))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465))))) t!43367) tb!19381))

(declare-fun result!23384 () Bool)

(assert (= result!23384 result!23336))

(assert (=> b!307583 t!43367))

(declare-fun t!43369 () Bool)

(declare-fun tb!19383 () Bool)

(assert (=> (and b!308316 (= (toChars!1399 (transformation!781 (h!9459 (t!43304 rules!1920)))) (toChars!1399 (transformation!781 (rule!1394 separatorToken!170)))) t!43369) tb!19383))

(declare-fun result!23386 () Bool)

(assert (= result!23386 result!23344))

(assert (=> b!307641 t!43369))

(assert (=> d!94058 t!43369))

(assert (=> d!94066 t!43367))

(declare-fun b_and!26039 () Bool)

(declare-fun tp!109079 () Bool)

(assert (=> b!308316 (= tp!109079 (and (=> t!43367 result!23384) (=> t!43369 result!23386) b_and!26039))))

(declare-fun e!191780 () Bool)

(assert (=> b!308316 (= e!191780 (and tp!109076 tp!109079))))

(declare-fun b!308315 () Bool)

(declare-fun e!191779 () Bool)

(declare-fun tp!109077 () Bool)

(assert (=> b!308315 (= e!191779 (and tp!109077 (inv!5012 (tag!999 (h!9459 (t!43304 rules!1920)))) (inv!5015 (transformation!781 (h!9459 (t!43304 rules!1920)))) e!191780))))

(declare-fun b!308314 () Bool)

(declare-fun e!191781 () Bool)

(declare-fun tp!109078 () Bool)

(assert (=> b!308314 (= e!191781 (and e!191779 tp!109078))))

(assert (=> b!307465 (= tp!108969 e!191781)))

(assert (= b!308315 b!308316))

(assert (= b!308314 b!308315))

(assert (= (and b!307465 ((_ is Cons!4062) (t!43304 rules!1920))) b!308314))

(declare-fun m!411583 () Bool)

(assert (=> b!308315 m!411583))

(declare-fun m!411585 () Bool)

(assert (=> b!308315 m!411585))

(declare-fun b!308319 () Bool)

(declare-fun e!191783 () Bool)

(declare-fun tp!109082 () Bool)

(assert (=> b!308319 (= e!191783 tp!109082)))

(declare-fun b!308317 () Bool)

(assert (=> b!308317 (= e!191783 tp_is_empty!1883)))

(assert (=> b!307454 (= tp!108966 e!191783)))

(declare-fun b!308320 () Bool)

(declare-fun tp!109083 () Bool)

(declare-fun tp!109081 () Bool)

(assert (=> b!308320 (= e!191783 (and tp!109083 tp!109081))))

(declare-fun b!308318 () Bool)

(declare-fun tp!109080 () Bool)

(declare-fun tp!109084 () Bool)

(assert (=> b!308318 (= e!191783 (and tp!109080 tp!109084))))

(assert (= (and b!307454 ((_ is ElementMatch!1005) (regex!781 (h!9459 rules!1920)))) b!308317))

(assert (= (and b!307454 ((_ is Concat!1809) (regex!781 (h!9459 rules!1920)))) b!308318))

(assert (= (and b!307454 ((_ is Star!1005) (regex!781 (h!9459 rules!1920)))) b!308319))

(assert (= (and b!307454 ((_ is Union!1005) (regex!781 (h!9459 rules!1920)))) b!308320))

(declare-fun b!308323 () Bool)

(declare-fun e!191784 () Bool)

(declare-fun tp!109087 () Bool)

(assert (=> b!308323 (= e!191784 tp!109087)))

(declare-fun b!308321 () Bool)

(assert (=> b!308321 (= e!191784 tp_is_empty!1883)))

(assert (=> b!307457 (= tp!108961 e!191784)))

(declare-fun b!308324 () Bool)

(declare-fun tp!109088 () Bool)

(declare-fun tp!109086 () Bool)

(assert (=> b!308324 (= e!191784 (and tp!109088 tp!109086))))

(declare-fun b!308322 () Bool)

(declare-fun tp!109085 () Bool)

(declare-fun tp!109089 () Bool)

(assert (=> b!308322 (= e!191784 (and tp!109085 tp!109089))))

(assert (= (and b!307457 ((_ is ElementMatch!1005) (regex!781 (rule!1394 separatorToken!170)))) b!308321))

(assert (= (and b!307457 ((_ is Concat!1809) (regex!781 (rule!1394 separatorToken!170)))) b!308322))

(assert (= (and b!307457 ((_ is Star!1005) (regex!781 (rule!1394 separatorToken!170)))) b!308323))

(assert (= (and b!307457 ((_ is Union!1005) (regex!781 (rule!1394 separatorToken!170)))) b!308324))

(declare-fun b_lambda!10703 () Bool)

(assert (= b_lambda!10671 (or (and b!307455 b_free!11027 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))))) (and b!307440 b_free!11019) (and b!308316 b_free!11043 (= (toChars!1399 (transformation!781 (h!9459 (t!43304 rules!1920)))) (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))))) (and b!307444 b_free!11023 (= (toChars!1399 (transformation!781 (h!9459 rules!1920))) (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))))) (and b!308288 b_free!11039 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))) (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))))) b_lambda!10703)))

(declare-fun b_lambda!10705 () Bool)

(assert (= b_lambda!10687 (or (and b!307455 b_free!11027) (and b!308288 b_free!11039 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))))) (and b!307440 b_free!11019 (= (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))))) (and b!308316 b_free!11043 (= (toChars!1399 (transformation!781 (h!9459 (t!43304 rules!1920)))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))))) (and b!307444 b_free!11023 (= (toChars!1399 (transformation!781 (h!9459 rules!1920))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))))) b_lambda!10705)))

(declare-fun b_lambda!10707 () Bool)

(assert (= b_lambda!10673 (or b!307466 b_lambda!10707)))

(declare-fun bs!35621 () Bool)

(declare-fun d!94166 () Bool)

(assert (= bs!35621 (and d!94166 b!307466)))

(assert (=> bs!35621 (= (dynLambda!2225 lambda!10491 (h!9460 tokens!465)) (not (isSeparator!781 (rule!1394 (h!9460 tokens!465)))))))

(assert (=> b!307648 d!94166))

(declare-fun b_lambda!10709 () Bool)

(assert (= b_lambda!10677 (or b!307468 b_lambda!10709)))

(declare-fun bs!35622 () Bool)

(declare-fun d!94168 () Bool)

(assert (= bs!35622 (and d!94168 b!307468)))

(assert (=> bs!35622 (= (dynLambda!2225 lambda!10492 (h!9460 tokens!465)) (rulesProduceIndividualToken!416 thiss!17480 rules!1920 (h!9460 tokens!465)))))

(assert (=> bs!35622 m!410341))

(assert (=> d!93964 d!94168))

(declare-fun b_lambda!10711 () Bool)

(assert (= b_lambda!10669 (or (and b!307455 b_free!11027) (and b!308288 b_free!11039 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))))) (and b!307440 b_free!11019 (= (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))))) (and b!308316 b_free!11043 (= (toChars!1399 (transformation!781 (h!9459 (t!43304 rules!1920)))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))))) (and b!307444 b_free!11023 (= (toChars!1399 (transformation!781 (h!9459 rules!1920))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))))) b_lambda!10711)))

(declare-fun b_lambda!10713 () Bool)

(assert (= b_lambda!10685 (or (and b!307455 b_free!11027 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))))) (and b!307440 b_free!11019) (and b!308316 b_free!11043 (= (toChars!1399 (transformation!781 (h!9459 (t!43304 rules!1920)))) (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))))) (and b!307444 b_free!11023 (= (toChars!1399 (transformation!781 (h!9459 rules!1920))) (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))))) (and b!308288 b_free!11039 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))) (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))))) b_lambda!10713)))

(check-sat (not b_next!11027) (not b_next!11025) (not b!307900) (not b!308109) (not b!307552) (not b!308160) (not tb!19351) (not d!93946) (not b!308067) (not d!93988) (not b!308264) (not b!308251) (not b!308267) (not b!308066) (not b!308287) (not b!307576) (not d!94150) (not b!307726) (not b!308314) b_and!26023 b_and!25969 (not b!308273) (not b!307667) (not d!93952) (not d!93928) (not d!93922) (not b!307723) (not bm!17826) (not b!308286) (not b_next!11021) (not b!308084) (not b!307736) (not d!93930) (not d!94158) (not b!308017) (not b!307553) (not b!307650) (not b_lambda!10709) (not d!93940) (not bm!17905) b_and!26021 (not d!93968) (not b!307583) (not b!308315) (not d!93970) (not b!307720) (not d!93920) tp_is_empty!1883 (not b_lambda!10707) (not b!308034) (not d!94084) (not d!94144) (not bm!17925) (not b!307716) (not d!93990) (not b_lambda!10713) (not bm!17921) (not b!307547) (not b!307561) (not d!94062) (not b!308242) (not b!307771) (not b!307562) (not b!308044) (not b!308121) (not d!93896) (not bm!17827) (not b!307640) (not b_next!11037) (not d!93962) (not b!308285) (not b!308051) (not b!308322) (not b!308323) b_and!26039 (not d!94110) (not b!308320) (not b!308033) (not b_lambda!10703) (not b!307557) (not bm!17911) (not d!94096) (not b!308169) (not d!94164) (not b!308082) (not b!308060) (not d!93978) (not d!94132) (not b_next!11023) (not d!93964) (not b!307548) (not b!307629) (not bm!17907) (not b!307670) (not bs!35622) (not d!93944) (not b!308013) (not b!307668) (not b!308010) (not b!308068) b_and!26035 (not d!94058) (not b!307754) (not d!93976) (not b!307897) b_and!26033 (not b!307652) (not b!308119) (not b!307891) (not b!307638) (not d!93986) (not b!308206) (not b!307556) (not b!308289) (not d!94068) (not b!308253) (not b!307649) (not d!93950) (not b!307558) (not d!94136) (not b!308158) (not d!94066) (not b!307584) (not bm!17881) (not b!307563) (not b!307759) (not b!307718) (not b!307669) (not b!308205) b_and!25965 (not b!308114) (not b!308015) (not d!93914) (not d!94162) (not b!307768) (not b!307893) (not b!307560) (not d!94074) (not b!307554) (not b!307890) (not bm!17919) (not b!307756) (not b!308240) (not b!308248) (not d!94160) (not b!307892) (not b!308236) (not d!93916) (not bm!17860) (not b!308318) (not b!307767) (not b!308157) (not b!308305) (not b!307549) (not b_next!11041) (not b_lambda!10705) (not b!308304) (not b!307546) (not d!94092) (not b!308164) (not b!308238) (not b!308008) (not b!307643) (not b!308159) (not b!307575) (not d!94154) (not b!308274) (not d!94072) (not b!308115) (not b_next!11043) (not b!308319) (not bm!17916) (not b!308108) (not d!94070) (not d!93942) (not b!307641) (not b!308063) (not b!308116) (not b!308083) (not b_next!11039) (not b!308266) (not b!308009) (not b!308043) (not b!308324) (not b!308303) (not bm!17909) (not b!308065) (not b!307651) (not d!93966) (not b!307639) (not b!307772) (not b!307574) (not d!93926) (not d!94078) (not d!93984) (not b!307551) (not b!307737) (not b!307764) b_and!25973 (not bm!17880) (not b!307642) (not b!307589) (not b!308127) (not tb!19357) (not bm!17913) (not b_lambda!10711) (not bm!17917) (not bm!17918) (not d!93894) (not b!308062) (not b_next!11019) (not b!307717) (not bm!17908) (not b!308239) (not b!307628) (not b!307721) (not b!308265) (not bm!17915) b_and!26037 (not b!308061) (not d!94010) (not bm!17883) (not b!307719) (not b!307555) b_and!26019 (not b_next!11017) (not b!308252))
(check-sat (not b_next!11025) (not b_next!11021) b_and!26021 (not b_next!11027) (not b_next!11023) b_and!26035 b_and!26033 b_and!25965 (not b_next!11041) (not b_next!11043) (not b_next!11039) b_and!25973 (not b_next!11019) b_and!26023 b_and!25969 b_and!26039 (not b_next!11037) b_and!26019 b_and!26037 (not b_next!11017))
(get-model)

(declare-fun bs!35638 () Bool)

(declare-fun d!94270 () Bool)

(assert (= bs!35638 (and d!94270 b!307890)))

(declare-fun lambda!10532 () Int)

(assert (=> bs!35638 (= lambda!10532 lambda!10514)))

(declare-fun bs!35639 () Bool)

(assert (= bs!35639 (and d!94270 d!94136)))

(assert (=> bs!35639 (not (= lambda!10532 lambda!10524))))

(declare-fun bs!35640 () Bool)

(assert (= bs!35640 (and d!94270 b!308157)))

(assert (=> bs!35640 (= lambda!10532 lambda!10526)))

(declare-fun bs!35641 () Bool)

(assert (= bs!35641 (and d!94270 b!307468)))

(assert (=> bs!35641 (= lambda!10532 lambda!10492)))

(declare-fun bs!35642 () Bool)

(assert (= bs!35642 (and d!94270 b!307466)))

(assert (=> bs!35642 (not (= lambda!10532 lambda!10491))))

(declare-fun bs!35643 () Bool)

(assert (= bs!35643 (and d!94270 d!93922)))

(assert (=> bs!35643 (= lambda!10532 lambda!10508)))

(declare-fun bs!35644 () Bool)

(assert (= bs!35644 (and d!94270 b!308119)))

(assert (=> bs!35644 (= lambda!10532 lambda!10525)))

(declare-fun bs!35645 () Bool)

(assert (= bs!35645 (and d!94270 b!308013)))

(assert (=> bs!35645 (= lambda!10532 lambda!10522)))

(declare-fun bs!35646 () Bool)

(assert (= bs!35646 (and d!94270 d!94010)))

(assert (=> bs!35646 (not (= lambda!10532 lambda!10521))))

(declare-fun b!308537 () Bool)

(declare-fun e!191918 () Bool)

(assert (=> b!308537 (= e!191918 true)))

(declare-fun b!308536 () Bool)

(declare-fun e!191917 () Bool)

(assert (=> b!308536 (= e!191917 e!191918)))

(declare-fun b!308535 () Bool)

(declare-fun e!191916 () Bool)

(assert (=> b!308535 (= e!191916 e!191917)))

(assert (=> d!94270 e!191916))

(assert (= b!308536 b!308537))

(assert (= b!308535 b!308536))

(assert (= (and d!94270 ((_ is Cons!4062) rules!1920)) b!308535))

(assert (=> b!308537 (< (dynLambda!2219 order!3297 (toValue!1540 (transformation!781 (h!9459 rules!1920)))) (dynLambda!2220 order!3299 lambda!10532))))

(assert (=> b!308537 (< (dynLambda!2221 order!3301 (toChars!1399 (transformation!781 (h!9459 rules!1920)))) (dynLambda!2220 order!3299 lambda!10532))))

(assert (=> d!94270 true))

(declare-fun lt!131689 () Bool)

(assert (=> d!94270 (= lt!131689 (forall!1072 (list!1716 lt!131159) lambda!10532))))

(declare-fun e!191915 () Bool)

(assert (=> d!94270 (= lt!131689 e!191915)))

(declare-fun res!140329 () Bool)

(assert (=> d!94270 (=> res!140329 e!191915)))

(assert (=> d!94270 (= res!140329 (not ((_ is Cons!4063) (list!1716 lt!131159))))))

(assert (=> d!94270 (not (isEmpty!2776 rules!1920))))

(assert (=> d!94270 (= (rulesProduceEachTokenIndividuallyList!267 thiss!17480 rules!1920 (list!1716 lt!131159)) lt!131689)))

(declare-fun b!308533 () Bool)

(declare-fun e!191914 () Bool)

(assert (=> b!308533 (= e!191915 e!191914)))

(declare-fun res!140328 () Bool)

(assert (=> b!308533 (=> (not res!140328) (not e!191914))))

(assert (=> b!308533 (= res!140328 (rulesProduceIndividualToken!416 thiss!17480 rules!1920 (h!9460 (list!1716 lt!131159))))))

(declare-fun b!308534 () Bool)

(assert (=> b!308534 (= e!191914 (rulesProduceEachTokenIndividuallyList!267 thiss!17480 rules!1920 (t!43305 (list!1716 lt!131159))))))

(assert (= (and d!94270 (not res!140329)) b!308533))

(assert (= (and b!308533 res!140328) b!308534))

(assert (=> d!94270 m!410539))

(declare-fun m!411889 () Bool)

(assert (=> d!94270 m!411889))

(assert (=> d!94270 m!410327))

(declare-fun m!411891 () Bool)

(assert (=> b!308533 m!411891))

(declare-fun m!411893 () Bool)

(assert (=> b!308534 m!411893))

(assert (=> b!307628 d!94270))

(declare-fun d!94276 () Bool)

(declare-fun list!1719 (Conc!1385) List!4073)

(assert (=> d!94276 (= (list!1716 lt!131159) (list!1719 (c!58278 lt!131159)))))

(declare-fun bs!35647 () Bool)

(assert (= bs!35647 d!94276))

(declare-fun m!411895 () Bool)

(assert (=> bs!35647 m!411895))

(assert (=> b!307628 d!94276))

(declare-fun b!308540 () Bool)

(declare-fun e!191919 () Bool)

(assert (=> b!308540 (= e!191919 (isPrefix!441 (tail!542 (tail!542 lt!131150)) (tail!542 (tail!542 lt!131162))))))

(declare-fun b!308538 () Bool)

(declare-fun e!191921 () Bool)

(assert (=> b!308538 (= e!191921 e!191919)))

(declare-fun res!140332 () Bool)

(assert (=> b!308538 (=> (not res!140332) (not e!191919))))

(assert (=> b!308538 (= res!140332 (not ((_ is Nil!4061) (tail!542 lt!131162))))))

(declare-fun b!308541 () Bool)

(declare-fun e!191920 () Bool)

(assert (=> b!308541 (= e!191920 (>= (size!3246 (tail!542 lt!131162)) (size!3246 (tail!542 lt!131150))))))

(declare-fun d!94278 () Bool)

(assert (=> d!94278 e!191920))

(declare-fun res!140330 () Bool)

(assert (=> d!94278 (=> res!140330 e!191920)))

(declare-fun lt!131692 () Bool)

(assert (=> d!94278 (= res!140330 (not lt!131692))))

(assert (=> d!94278 (= lt!131692 e!191921)))

(declare-fun res!140331 () Bool)

(assert (=> d!94278 (=> res!140331 e!191921)))

(assert (=> d!94278 (= res!140331 ((_ is Nil!4061) (tail!542 lt!131150)))))

(assert (=> d!94278 (= (isPrefix!441 (tail!542 lt!131150) (tail!542 lt!131162)) lt!131692)))

(declare-fun b!308539 () Bool)

(declare-fun res!140333 () Bool)

(assert (=> b!308539 (=> (not res!140333) (not e!191919))))

(assert (=> b!308539 (= res!140333 (= (head!968 (tail!542 lt!131150)) (head!968 (tail!542 lt!131162))))))

(assert (= (and d!94278 (not res!140331)) b!308538))

(assert (= (and b!308538 res!140332) b!308539))

(assert (= (and b!308539 res!140333) b!308540))

(assert (= (and d!94278 (not res!140330)) b!308541))

(assert (=> b!308540 m!411339))

(declare-fun m!411897 () Bool)

(assert (=> b!308540 m!411897))

(assert (=> b!308540 m!411341))

(declare-fun m!411899 () Bool)

(assert (=> b!308540 m!411899))

(assert (=> b!308540 m!411897))

(assert (=> b!308540 m!411899))

(declare-fun m!411901 () Bool)

(assert (=> b!308540 m!411901))

(assert (=> b!308541 m!411341))

(declare-fun m!411903 () Bool)

(assert (=> b!308541 m!411903))

(assert (=> b!308541 m!411339))

(declare-fun m!411905 () Bool)

(assert (=> b!308541 m!411905))

(assert (=> b!308539 m!411339))

(declare-fun m!411907 () Bool)

(assert (=> b!308539 m!411907))

(assert (=> b!308539 m!411341))

(declare-fun m!411909 () Bool)

(assert (=> b!308539 m!411909))

(assert (=> b!308083 d!94278))

(declare-fun d!94280 () Bool)

(assert (=> d!94280 (= (tail!542 lt!131150) (t!43303 lt!131150))))

(assert (=> b!308083 d!94280))

(declare-fun d!94282 () Bool)

(assert (=> d!94282 (= (tail!542 lt!131162) (t!43303 lt!131162))))

(assert (=> b!308083 d!94282))

(assert (=> d!93940 d!93978))

(declare-fun d!94284 () Bool)

(declare-fun lt!131695 () Int)

(declare-fun size!3253 (List!4073) Int)

(assert (=> d!94284 (= lt!131695 (size!3253 (list!1716 (_1!2562 lt!131245))))))

(declare-fun size!3254 (Conc!1385) Int)

(assert (=> d!94284 (= lt!131695 (size!3254 (c!58278 (_1!2562 lt!131245))))))

(assert (=> d!94284 (= (size!3247 (_1!2562 lt!131245)) lt!131695)))

(declare-fun bs!35648 () Bool)

(assert (= bs!35648 d!94284))

(declare-fun m!411911 () Bool)

(assert (=> bs!35648 m!411911))

(assert (=> bs!35648 m!411911))

(declare-fun m!411913 () Bool)

(assert (=> bs!35648 m!411913))

(declare-fun m!411915 () Bool)

(assert (=> bs!35648 m!411915))

(assert (=> d!93940 d!94284))

(declare-fun d!94286 () Bool)

(assert (=> d!94286 (= (list!1716 (singletonSeq!327 (h!9460 tokens!465))) (list!1719 (c!58278 (singletonSeq!327 (h!9460 tokens!465)))))))

(declare-fun bs!35649 () Bool)

(assert (= bs!35649 d!94286))

(declare-fun m!411917 () Bool)

(assert (=> bs!35649 m!411917))

(assert (=> d!93940 d!94286))

(declare-fun b!308554 () Bool)

(declare-fun lt!131697 () tuple2!4692)

(declare-fun e!191926 () Bool)

(assert (=> b!308554 (= e!191926 (= (list!1713 (_2!2562 lt!131697)) (_2!2565 (lexList!241 thiss!17480 rules!1920 (list!1713 (print!392 thiss!17480 (singletonSeq!327 (h!9460 tokens!465))))))))))

(declare-fun d!94288 () Bool)

(assert (=> d!94288 e!191926))

(declare-fun res!140346 () Bool)

(assert (=> d!94288 (=> (not res!140346) (not e!191926))))

(declare-fun e!191925 () Bool)

(assert (=> d!94288 (= res!140346 e!191925)))

(declare-fun c!58480 () Bool)

(assert (=> d!94288 (= c!58480 (> (size!3247 (_1!2562 lt!131697)) 0))))

(assert (=> d!94288 (= lt!131697 (lexTailRecV2!208 thiss!17480 rules!1920 (print!392 thiss!17480 (singletonSeq!327 (h!9460 tokens!465))) (BalanceConc!2777 Empty!1384) (print!392 thiss!17480 (singletonSeq!327 (h!9460 tokens!465))) (BalanceConc!2779 Empty!1385)))))

(assert (=> d!94288 (= (lex!459 thiss!17480 rules!1920 (print!392 thiss!17480 (singletonSeq!327 (h!9460 tokens!465)))) lt!131697)))

(declare-fun b!308555 () Bool)

(declare-fun res!140347 () Bool)

(assert (=> b!308555 (=> (not res!140347) (not e!191926))))

(assert (=> b!308555 (= res!140347 (= (list!1716 (_1!2562 lt!131697)) (_1!2565 (lexList!241 thiss!17480 rules!1920 (list!1713 (print!392 thiss!17480 (singletonSeq!327 (h!9460 tokens!465))))))))))

(declare-fun b!308556 () Bool)

(declare-fun e!191927 () Bool)

(assert (=> b!308556 (= e!191927 (not (isEmpty!2777 (_1!2562 lt!131697))))))

(declare-fun b!308557 () Bool)

(assert (=> b!308557 (= e!191925 e!191927)))

(declare-fun res!140348 () Bool)

(assert (=> b!308557 (= res!140348 (< (size!3249 (_2!2562 lt!131697)) (size!3249 (print!392 thiss!17480 (singletonSeq!327 (h!9460 tokens!465))))))))

(assert (=> b!308557 (=> (not res!140348) (not e!191927))))

(declare-fun b!308558 () Bool)

(assert (=> b!308558 (= e!191925 (= (_2!2562 lt!131697) (print!392 thiss!17480 (singletonSeq!327 (h!9460 tokens!465)))))))

(assert (= (and d!94288 c!58480) b!308557))

(assert (= (and d!94288 (not c!58480)) b!308558))

(assert (= (and b!308557 res!140348) b!308556))

(assert (= (and d!94288 res!140346) b!308555))

(assert (= (and b!308555 res!140347) b!308554))

(declare-fun m!411937 () Bool)

(assert (=> d!94288 m!411937))

(assert (=> d!94288 m!410583))

(assert (=> d!94288 m!410583))

(declare-fun m!411941 () Bool)

(assert (=> d!94288 m!411941))

(declare-fun m!411943 () Bool)

(assert (=> b!308556 m!411943))

(declare-fun m!411945 () Bool)

(assert (=> b!308555 m!411945))

(assert (=> b!308555 m!410583))

(declare-fun m!411947 () Bool)

(assert (=> b!308555 m!411947))

(assert (=> b!308555 m!411947))

(declare-fun m!411949 () Bool)

(assert (=> b!308555 m!411949))

(declare-fun m!411951 () Bool)

(assert (=> b!308554 m!411951))

(assert (=> b!308554 m!410583))

(assert (=> b!308554 m!411947))

(assert (=> b!308554 m!411947))

(assert (=> b!308554 m!411949))

(declare-fun m!411953 () Bool)

(assert (=> b!308557 m!411953))

(assert (=> b!308557 m!410583))

(declare-fun m!411955 () Bool)

(assert (=> b!308557 m!411955))

(assert (=> d!93940 d!94288))

(declare-fun d!94294 () Bool)

(assert (=> d!94294 (= (list!1716 (_1!2562 (lex!459 thiss!17480 rules!1920 (print!392 thiss!17480 (singletonSeq!327 (h!9460 tokens!465)))))) (list!1719 (c!58278 (_1!2562 (lex!459 thiss!17480 rules!1920 (print!392 thiss!17480 (singletonSeq!327 (h!9460 tokens!465))))))))))

(declare-fun bs!35651 () Bool)

(assert (= bs!35651 d!94294))

(declare-fun m!411959 () Bool)

(assert (=> bs!35651 m!411959))

(assert (=> d!93940 d!94294))

(assert (=> d!93940 d!93982))

(declare-fun d!94298 () Bool)

(declare-fun lt!131698 () BalanceConc!2776)

(assert (=> d!94298 (= (list!1713 lt!131698) (printList!341 thiss!17480 (list!1716 (singletonSeq!327 (h!9460 tokens!465)))))))

(assert (=> d!94298 (= lt!131698 (printTailRec!353 thiss!17480 (singletonSeq!327 (h!9460 tokens!465)) 0 (BalanceConc!2777 Empty!1384)))))

(assert (=> d!94298 (= (print!392 thiss!17480 (singletonSeq!327 (h!9460 tokens!465))) lt!131698)))

(declare-fun bs!35652 () Bool)

(assert (= bs!35652 d!94298))

(declare-fun m!411961 () Bool)

(assert (=> bs!35652 m!411961))

(assert (=> bs!35652 m!410261))

(assert (=> bs!35652 m!410589))

(assert (=> bs!35652 m!410589))

(declare-fun m!411963 () Bool)

(assert (=> bs!35652 m!411963))

(assert (=> bs!35652 m!410261))

(assert (=> bs!35652 m!411507))

(assert (=> d!93940 d!94298))

(declare-fun b!308582 () Bool)

(declare-fun res!140365 () Bool)

(declare-fun e!191933 () Bool)

(assert (=> b!308582 (=> (not res!140365) (not e!191933))))

(declare-fun height!179 (Conc!1384) Int)

(declare-fun ++!1106 (Conc!1384 Conc!1384) Conc!1384)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!308582 (= res!140365 (>= (height!179 (++!1106 (c!58276 call!17918) (c!58276 (ite c!58409 lt!131563 call!17920)))) (max!0 (height!179 (c!58276 call!17918)) (height!179 (c!58276 (ite c!58409 lt!131563 call!17920))))))))

(declare-fun b!308583 () Bool)

(declare-fun lt!131706 () BalanceConc!2776)

(assert (=> b!308583 (= e!191933 (= (list!1713 lt!131706) (++!1102 (list!1713 call!17918) (list!1713 (ite c!58409 lt!131563 call!17920)))))))

(declare-fun b!308581 () Bool)

(declare-fun res!140366 () Bool)

(assert (=> b!308581 (=> (not res!140366) (not e!191933))))

(assert (=> b!308581 (= res!140366 (<= (height!179 (++!1106 (c!58276 call!17918) (c!58276 (ite c!58409 lt!131563 call!17920)))) (+ (max!0 (height!179 (c!58276 call!17918)) (height!179 (c!58276 (ite c!58409 lt!131563 call!17920)))) 1)))))

(declare-fun b!308580 () Bool)

(declare-fun res!140364 () Bool)

(assert (=> b!308580 (=> (not res!140364) (not e!191933))))

(declare-fun isBalanced!397 (Conc!1384) Bool)

(assert (=> b!308580 (= res!140364 (isBalanced!397 (++!1106 (c!58276 call!17918) (c!58276 (ite c!58409 lt!131563 call!17920)))))))

(declare-fun d!94300 () Bool)

(assert (=> d!94300 e!191933))

(declare-fun res!140367 () Bool)

(assert (=> d!94300 (=> (not res!140367) (not e!191933))))

(declare-fun appendAssocInst!75 (Conc!1384 Conc!1384) Bool)

(assert (=> d!94300 (= res!140367 (appendAssocInst!75 (c!58276 call!17918) (c!58276 (ite c!58409 lt!131563 call!17920))))))

(assert (=> d!94300 (= lt!131706 (BalanceConc!2777 (++!1106 (c!58276 call!17918) (c!58276 (ite c!58409 lt!131563 call!17920)))))))

(assert (=> d!94300 (= (++!1104 call!17918 (ite c!58409 lt!131563 call!17920)) lt!131706)))

(assert (= (and d!94300 res!140367) b!308580))

(assert (= (and b!308580 res!140364) b!308581))

(assert (= (and b!308581 res!140366) b!308582))

(assert (= (and b!308582 res!140365) b!308583))

(declare-fun m!412005 () Bool)

(assert (=> b!308583 m!412005))

(declare-fun m!412007 () Bool)

(assert (=> b!308583 m!412007))

(declare-fun m!412009 () Bool)

(assert (=> b!308583 m!412009))

(assert (=> b!308583 m!412007))

(assert (=> b!308583 m!412009))

(declare-fun m!412011 () Bool)

(assert (=> b!308583 m!412011))

(declare-fun m!412013 () Bool)

(assert (=> b!308580 m!412013))

(assert (=> b!308580 m!412013))

(declare-fun m!412015 () Bool)

(assert (=> b!308580 m!412015))

(declare-fun m!412017 () Bool)

(assert (=> b!308581 m!412017))

(declare-fun m!412019 () Bool)

(assert (=> b!308581 m!412019))

(assert (=> b!308581 m!412013))

(declare-fun m!412021 () Bool)

(assert (=> b!308581 m!412021))

(assert (=> b!308581 m!412013))

(assert (=> b!308581 m!412017))

(assert (=> b!308581 m!412019))

(declare-fun m!412023 () Bool)

(assert (=> b!308581 m!412023))

(declare-fun m!412025 () Bool)

(assert (=> d!94300 m!412025))

(assert (=> d!94300 m!412013))

(assert (=> b!308582 m!412017))

(assert (=> b!308582 m!412019))

(assert (=> b!308582 m!412013))

(assert (=> b!308582 m!412021))

(assert (=> b!308582 m!412013))

(assert (=> b!308582 m!412017))

(assert (=> b!308582 m!412019))

(assert (=> b!308582 m!412023))

(assert (=> bm!17917 d!94300))

(assert (=> d!94110 d!94104))

(declare-fun d!94318 () Bool)

(declare-fun e!191983 () Bool)

(assert (=> d!94318 e!191983))

(declare-fun res!140409 () Bool)

(assert (=> d!94318 (=> res!140409 e!191983)))

(assert (=> d!94318 (= res!140409 (isEmpty!2778 tokens!465))))

(assert (=> d!94318 true))

(declare-fun _$48!602 () Unit!5690)

(assert (=> d!94318 (= (choose!2699 thiss!17480 rules!1920 tokens!465 separatorToken!170) _$48!602)))

(declare-fun b!308666 () Bool)

(declare-fun e!191984 () Bool)

(assert (=> b!308666 (= e!191983 e!191984)))

(declare-fun res!140410 () Bool)

(assert (=> b!308666 (=> (not res!140410) (not e!191984))))

(assert (=> b!308666 (= res!140410 (isDefined!767 (maxPrefix!383 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!348 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!308667 () Bool)

(assert (=> b!308667 (= e!191984 (= (_1!2561 (get!1388 (maxPrefix!383 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!348 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!966 tokens!465)))))

(assert (= (and d!94318 (not res!140409)) b!308666))

(assert (= (and b!308666 res!140410) b!308667))

(assert (=> d!94318 m!410303))

(assert (=> b!308666 m!410223))

(assert (=> b!308666 m!410223))

(assert (=> b!308666 m!411421))

(assert (=> b!308666 m!411421))

(assert (=> b!308666 m!411423))

(assert (=> b!308667 m!410223))

(assert (=> b!308667 m!410223))

(assert (=> b!308667 m!411421))

(assert (=> b!308667 m!411421))

(assert (=> b!308667 m!411425))

(assert (=> b!308667 m!410337))

(assert (=> d!94110 d!94318))

(assert (=> d!94110 d!93982))

(declare-fun d!94388 () Bool)

(declare-fun c!58508 () Bool)

(assert (=> d!94388 (= c!58508 ((_ is Nil!4063) tokens!465))))

(declare-fun e!191989 () (InoxSet Token!1306))

(assert (=> d!94388 (= (content!608 tokens!465) e!191989)))

(declare-fun b!308676 () Bool)

(assert (=> b!308676 (= e!191989 ((as const (Array Token!1306 Bool)) false))))

(declare-fun b!308677 () Bool)

(assert (=> b!308677 (= e!191989 ((_ map or) (store ((as const (Array Token!1306 Bool)) false) (h!9460 tokens!465) true) (content!608 (t!43305 tokens!465))))))

(assert (= (and d!94388 c!58508) b!308676))

(assert (= (and d!94388 (not c!58508)) b!308677))

(declare-fun m!412203 () Bool)

(assert (=> b!308677 m!412203))

(declare-fun m!412205 () Bool)

(assert (=> b!308677 m!412205))

(assert (=> d!94084 d!94388))

(declare-fun d!94390 () Bool)

(declare-fun c!58509 () Bool)

(assert (=> d!94390 (= c!58509 ((_ is IntegerValue!2409) (value!26574 (h!9460 (t!43305 tokens!465)))))))

(declare-fun e!191990 () Bool)

(assert (=> d!94390 (= (inv!21 (value!26574 (h!9460 (t!43305 tokens!465)))) e!191990)))

(declare-fun b!308678 () Bool)

(assert (=> b!308678 (= e!191990 (inv!16 (value!26574 (h!9460 (t!43305 tokens!465)))))))

(declare-fun b!308679 () Bool)

(declare-fun e!191991 () Bool)

(assert (=> b!308679 (= e!191991 (inv!15 (value!26574 (h!9460 (t!43305 tokens!465)))))))

(declare-fun b!308680 () Bool)

(declare-fun e!191992 () Bool)

(assert (=> b!308680 (= e!191992 (inv!17 (value!26574 (h!9460 (t!43305 tokens!465)))))))

(declare-fun b!308681 () Bool)

(assert (=> b!308681 (= e!191990 e!191992)))

(declare-fun c!58510 () Bool)

(assert (=> b!308681 (= c!58510 ((_ is IntegerValue!2410) (value!26574 (h!9460 (t!43305 tokens!465)))))))

(declare-fun b!308682 () Bool)

(declare-fun res!140411 () Bool)

(assert (=> b!308682 (=> res!140411 e!191991)))

(assert (=> b!308682 (= res!140411 (not ((_ is IntegerValue!2411) (value!26574 (h!9460 (t!43305 tokens!465))))))))

(assert (=> b!308682 (= e!191992 e!191991)))

(assert (= (and d!94390 c!58509) b!308678))

(assert (= (and d!94390 (not c!58509)) b!308681))

(assert (= (and b!308681 c!58510) b!308680))

(assert (= (and b!308681 (not c!58510)) b!308682))

(assert (= (and b!308682 (not res!140411)) b!308679))

(declare-fun m!412207 () Bool)

(assert (=> b!308678 m!412207))

(declare-fun m!412209 () Bool)

(assert (=> b!308679 m!412209))

(declare-fun m!412211 () Bool)

(assert (=> b!308680 m!412211))

(assert (=> b!308286 d!94390))

(declare-fun d!94392 () Bool)

(assert (=> d!94392 (= (get!1390 lt!131283) (v!14933 lt!131283))))

(assert (=> b!307718 d!94392))

(declare-fun d!94394 () Bool)

(assert (=> d!94394 (= (get!1388 (maxPrefix!383 thiss!17480 rules!1920 (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465)))))) (v!14932 (maxPrefix!383 thiss!17480 rules!1920 (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465)))))))))

(assert (=> b!307718 d!94394))

(declare-fun b!308685 () Bool)

(declare-fun res!140417 () Bool)

(declare-fun e!191994 () Bool)

(assert (=> b!308685 (=> (not res!140417) (not e!191994))))

(declare-fun lt!131774 () Option!928)

(assert (=> b!308685 (= res!140417 (matchR!323 (regex!781 (rule!1394 (_1!2561 (get!1388 lt!131774)))) (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131774))))))))

(declare-fun b!308686 () Bool)

(assert (=> b!308686 (= e!191994 (contains!804 rules!1920 (rule!1394 (_1!2561 (get!1388 lt!131774)))))))

(declare-fun b!308687 () Bool)

(declare-fun res!140415 () Bool)

(assert (=> b!308687 (=> (not res!140415) (not e!191994))))

(assert (=> b!308687 (= res!140415 (= (++!1102 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131774)))) (_2!2561 (get!1388 lt!131774))) (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465))))))))

(declare-fun d!94396 () Bool)

(declare-fun e!191996 () Bool)

(assert (=> d!94396 e!191996))

(declare-fun res!140416 () Bool)

(assert (=> d!94396 (=> res!140416 e!191996)))

(assert (=> d!94396 (= res!140416 (isEmpty!2779 lt!131774))))

(declare-fun e!191995 () Option!928)

(assert (=> d!94396 (= lt!131774 e!191995)))

(declare-fun c!58512 () Bool)

(assert (=> d!94396 (= c!58512 (and ((_ is Cons!4062) rules!1920) ((_ is Nil!4062) (t!43304 rules!1920))))))

(declare-fun lt!131777 () Unit!5690)

(declare-fun lt!131776 () Unit!5690)

(assert (=> d!94396 (= lt!131777 lt!131776)))

(assert (=> d!94396 (isPrefix!441 (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465)))) (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465)))))))

(assert (=> d!94396 (= lt!131776 (lemmaIsPrefixRefl!238 (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465)))) (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465))))))))

(assert (=> d!94396 (rulesValidInductive!233 thiss!17480 rules!1920)))

(assert (=> d!94396 (= (maxPrefix!383 thiss!17480 rules!1920 (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465))))) lt!131774)))

(declare-fun bm!17957 () Bool)

(declare-fun call!17962 () Option!928)

(assert (=> bm!17957 (= call!17962 (maxPrefixOneRule!172 thiss!17480 (h!9459 rules!1920) (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465))))))))

(declare-fun b!308688 () Bool)

(declare-fun res!140412 () Bool)

(assert (=> b!308688 (=> (not res!140412) (not e!191994))))

(assert (=> b!308688 (= res!140412 (< (size!3246 (_2!2561 (get!1388 lt!131774))) (size!3246 (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465)))))))))

(declare-fun b!308689 () Bool)

(assert (=> b!308689 (= e!191995 call!17962)))

(declare-fun b!308690 () Bool)

(assert (=> b!308690 (= e!191996 e!191994)))

(declare-fun res!140414 () Bool)

(assert (=> b!308690 (=> (not res!140414) (not e!191994))))

(assert (=> b!308690 (= res!140414 (isDefined!767 lt!131774))))

(declare-fun b!308691 () Bool)

(declare-fun res!140413 () Bool)

(assert (=> b!308691 (=> (not res!140413) (not e!191994))))

(assert (=> b!308691 (= res!140413 (= (value!26574 (_1!2561 (get!1388 lt!131774))) (apply!891 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131774)))) (seqFromList!928 (originalCharacters!824 (_1!2561 (get!1388 lt!131774)))))))))

(declare-fun b!308692 () Bool)

(declare-fun res!140418 () Bool)

(assert (=> b!308692 (=> (not res!140418) (not e!191994))))

(assert (=> b!308692 (= res!140418 (= (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131774)))) (originalCharacters!824 (_1!2561 (get!1388 lt!131774)))))))

(declare-fun b!308693 () Bool)

(declare-fun lt!131775 () Option!928)

(declare-fun lt!131773 () Option!928)

(assert (=> b!308693 (= e!191995 (ite (and ((_ is None!927) lt!131775) ((_ is None!927) lt!131773)) None!927 (ite ((_ is None!927) lt!131773) lt!131775 (ite ((_ is None!927) lt!131775) lt!131773 (ite (>= (size!3243 (_1!2561 (v!14932 lt!131775))) (size!3243 (_1!2561 (v!14932 lt!131773)))) lt!131775 lt!131773)))))))

(assert (=> b!308693 (= lt!131775 call!17962)))

(assert (=> b!308693 (= lt!131773 (maxPrefix!383 thiss!17480 (t!43304 rules!1920) (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465))))))))

(assert (= (and d!94396 c!58512) b!308689))

(assert (= (and d!94396 (not c!58512)) b!308693))

(assert (= (or b!308689 b!308693) bm!17957))

(assert (= (and d!94396 (not res!140416)) b!308690))

(assert (= (and b!308690 res!140414) b!308692))

(assert (= (and b!308692 res!140418) b!308688))

(assert (= (and b!308688 res!140412) b!308687))

(assert (= (and b!308687 res!140415) b!308691))

(assert (= (and b!308691 res!140413) b!308685))

(assert (= (and b!308685 res!140417) b!308686))

(assert (=> b!308693 m!410653))

(declare-fun m!412243 () Bool)

(assert (=> b!308693 m!412243))

(declare-fun m!412247 () Bool)

(assert (=> b!308687 m!412247))

(declare-fun m!412251 () Bool)

(assert (=> b!308687 m!412251))

(assert (=> b!308687 m!412251))

(declare-fun m!412255 () Bool)

(assert (=> b!308687 m!412255))

(assert (=> b!308687 m!412255))

(declare-fun m!412257 () Bool)

(assert (=> b!308687 m!412257))

(assert (=> b!308692 m!412247))

(assert (=> b!308692 m!412251))

(assert (=> b!308692 m!412251))

(assert (=> b!308692 m!412255))

(assert (=> b!308691 m!412247))

(declare-fun m!412259 () Bool)

(assert (=> b!308691 m!412259))

(assert (=> b!308691 m!412259))

(declare-fun m!412261 () Bool)

(assert (=> b!308691 m!412261))

(assert (=> b!308685 m!412247))

(assert (=> b!308685 m!412251))

(assert (=> b!308685 m!412251))

(assert (=> b!308685 m!412255))

(assert (=> b!308685 m!412255))

(declare-fun m!412263 () Bool)

(assert (=> b!308685 m!412263))

(assert (=> bm!17957 m!410653))

(declare-fun m!412265 () Bool)

(assert (=> bm!17957 m!412265))

(assert (=> b!308686 m!412247))

(declare-fun m!412267 () Bool)

(assert (=> b!308686 m!412267))

(declare-fun m!412269 () Bool)

(assert (=> d!94396 m!412269))

(assert (=> d!94396 m!410653))

(assert (=> d!94396 m!410653))

(declare-fun m!412271 () Bool)

(assert (=> d!94396 m!412271))

(assert (=> d!94396 m!410653))

(assert (=> d!94396 m!410653))

(declare-fun m!412273 () Bool)

(assert (=> d!94396 m!412273))

(assert (=> d!94396 m!410421))

(assert (=> b!308688 m!412247))

(declare-fun m!412275 () Bool)

(assert (=> b!308688 m!412275))

(assert (=> b!308688 m!410653))

(declare-fun m!412277 () Bool)

(assert (=> b!308688 m!412277))

(declare-fun m!412279 () Bool)

(assert (=> b!308690 m!412279))

(assert (=> b!307718 d!94396))

(declare-fun d!94408 () Bool)

(assert (=> d!94408 (= (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465)))) (list!1717 (c!58276 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465))))))))

(declare-fun bs!35685 () Bool)

(assert (= bs!35685 d!94408))

(declare-fun m!412283 () Bool)

(assert (=> bs!35685 m!412283))

(assert (=> b!307718 d!94408))

(declare-fun d!94410 () Bool)

(assert (=> d!94410 (= (head!966 (drop!251 lt!131487 0)) (apply!894 lt!131487 0))))

(declare-fun lt!131784 () Unit!5690)

(declare-fun choose!2702 (List!4073 Int) Unit!5690)

(assert (=> d!94410 (= lt!131784 (choose!2702 lt!131487 0))))

(declare-fun e!192008 () Bool)

(assert (=> d!94410 e!192008))

(declare-fun res!140430 () Bool)

(assert (=> d!94410 (=> (not res!140430) (not e!192008))))

(assert (=> d!94410 (= res!140430 (>= 0 0))))

(assert (=> d!94410 (= (lemmaDropApply!236 lt!131487 0) lt!131784)))

(declare-fun b!308705 () Bool)

(assert (=> b!308705 (= e!192008 (< 0 (size!3253 lt!131487)))))

(assert (= (and d!94410 res!140430) b!308705))

(assert (=> d!94410 m!411105))

(assert (=> d!94410 m!411105))

(assert (=> d!94410 m!411125))

(assert (=> d!94410 m!411123))

(declare-fun m!412295 () Bool)

(assert (=> d!94410 m!412295))

(declare-fun m!412297 () Bool)

(assert (=> b!308705 m!412297))

(assert (=> b!308013 d!94410))

(declare-fun b!308708 () Bool)

(declare-fun e!192013 () Bool)

(declare-fun e!192012 () Bool)

(assert (=> b!308708 (= e!192013 e!192012)))

(declare-fun res!140432 () Bool)

(assert (=> b!308708 (=> res!140432 e!192012)))

(declare-fun lt!131790 () Option!929)

(assert (=> b!308708 (= res!140432 (not (isDefined!768 lt!131790)))))

(declare-fun b!308709 () Bool)

(declare-fun e!192011 () Bool)

(declare-fun e!192014 () Bool)

(assert (=> b!308709 (= e!192011 e!192014)))

(declare-fun res!140438 () Bool)

(assert (=> b!308709 (=> (not res!140438) (not e!192014))))

(assert (=> b!308709 (= res!140438 (= (_1!2563 (get!1390 lt!131790)) (_1!2561 (get!1388 (maxPrefixZipper!143 thiss!17480 rules!1920 (list!1713 (++!1104 (charsOf!424 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0)) lt!131492)))))))))

(declare-fun b!308710 () Bool)

(declare-fun e!192015 () Bool)

(assert (=> b!308710 (= e!192012 e!192015)))

(declare-fun res!140436 () Bool)

(assert (=> b!308710 (=> (not res!140436) (not e!192015))))

(assert (=> b!308710 (= res!140436 (= (_1!2563 (get!1390 lt!131790)) (_1!2561 (get!1388 (maxPrefix!383 thiss!17480 rules!1920 (list!1713 (++!1104 (charsOf!424 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0)) lt!131492)))))))))

(declare-fun d!94418 () Bool)

(assert (=> d!94418 e!192013))

(declare-fun res!140435 () Bool)

(assert (=> d!94418 (=> (not res!140435) (not e!192013))))

(assert (=> d!94418 (= res!140435 (= (isDefined!768 lt!131790) (isDefined!767 (maxPrefixZipper!143 thiss!17480 rules!1920 (list!1713 (++!1104 (charsOf!424 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0)) lt!131492))))))))

(declare-fun e!192016 () Option!929)

(assert (=> d!94418 (= lt!131790 e!192016)))

(declare-fun c!58513 () Bool)

(assert (=> d!94418 (= c!58513 (and ((_ is Cons!4062) rules!1920) ((_ is Nil!4062) (t!43304 rules!1920))))))

(declare-fun lt!131792 () Unit!5690)

(declare-fun lt!131786 () Unit!5690)

(assert (=> d!94418 (= lt!131792 lt!131786)))

(declare-fun lt!131791 () List!4071)

(declare-fun lt!131789 () List!4071)

(assert (=> d!94418 (isPrefix!441 lt!131791 lt!131789)))

(assert (=> d!94418 (= lt!131786 (lemmaIsPrefixRefl!238 lt!131791 lt!131789))))

(assert (=> d!94418 (= lt!131789 (list!1713 (++!1104 (charsOf!424 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0)) lt!131492)))))

(assert (=> d!94418 (= lt!131791 (list!1713 (++!1104 (charsOf!424 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0)) lt!131492)))))

(assert (=> d!94418 (rulesValidInductive!233 thiss!17480 rules!1920)))

(assert (=> d!94418 (= (maxPrefixZipperSequence!346 thiss!17480 rules!1920 (++!1104 (charsOf!424 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0)) lt!131492)) lt!131790)))

(declare-fun b!308711 () Bool)

(assert (=> b!308711 (= e!192015 (= (list!1713 (_2!2563 (get!1390 lt!131790))) (_2!2561 (get!1388 (maxPrefix!383 thiss!17480 rules!1920 (list!1713 (++!1104 (charsOf!424 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0)) lt!131492)))))))))

(declare-fun call!17963 () Option!929)

(declare-fun bm!17958 () Bool)

(assert (=> bm!17958 (= call!17963 (maxPrefixOneRuleZipperSequence!144 thiss!17480 (h!9459 rules!1920) (++!1104 (charsOf!424 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0)) lt!131492)))))

(declare-fun b!308712 () Bool)

(declare-fun res!140437 () Bool)

(assert (=> b!308712 (=> (not res!140437) (not e!192013))))

(assert (=> b!308712 (= res!140437 e!192011)))

(declare-fun res!140434 () Bool)

(assert (=> b!308712 (=> res!140434 e!192011)))

(assert (=> b!308712 (= res!140434 (not (isDefined!768 lt!131790)))))

(declare-fun b!308713 () Bool)

(assert (=> b!308713 (= e!192014 (= (list!1713 (_2!2563 (get!1390 lt!131790))) (_2!2561 (get!1388 (maxPrefixZipper!143 thiss!17480 rules!1920 (list!1713 (++!1104 (charsOf!424 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0)) lt!131492)))))))))

(declare-fun b!308714 () Bool)

(assert (=> b!308714 (= e!192016 call!17963)))

(declare-fun b!308715 () Bool)

(declare-fun lt!131787 () Option!929)

(declare-fun lt!131788 () Option!929)

(assert (=> b!308715 (= e!192016 (ite (and ((_ is None!928) lt!131787) ((_ is None!928) lt!131788)) None!928 (ite ((_ is None!928) lt!131788) lt!131787 (ite ((_ is None!928) lt!131787) lt!131788 (ite (>= (size!3243 (_1!2563 (v!14933 lt!131787))) (size!3243 (_1!2563 (v!14933 lt!131788)))) lt!131787 lt!131788)))))))

(assert (=> b!308715 (= lt!131787 call!17963)))

(assert (=> b!308715 (= lt!131788 (maxPrefixZipperSequence!346 thiss!17480 (t!43304 rules!1920) (++!1104 (charsOf!424 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0)) lt!131492)))))

(assert (= (and d!94418 c!58513) b!308714))

(assert (= (and d!94418 (not c!58513)) b!308715))

(assert (= (or b!308714 b!308715) bm!17958))

(assert (= (and d!94418 res!140435) b!308712))

(assert (= (and b!308712 (not res!140434)) b!308709))

(assert (= (and b!308709 res!140438) b!308713))

(assert (= (and b!308712 res!140437) b!308708))

(assert (= (and b!308708 (not res!140432)) b!308710))

(assert (= (and b!308710 res!140436) b!308711))

(declare-fun m!412327 () Bool)

(assert (=> b!308709 m!412327))

(assert (=> b!308709 m!411103))

(declare-fun m!412329 () Bool)

(assert (=> b!308709 m!412329))

(assert (=> b!308709 m!412329))

(declare-fun m!412331 () Bool)

(assert (=> b!308709 m!412331))

(assert (=> b!308709 m!412331))

(declare-fun m!412333 () Bool)

(assert (=> b!308709 m!412333))

(assert (=> b!308713 m!412331))

(assert (=> b!308713 m!412333))

(assert (=> b!308713 m!412329))

(assert (=> b!308713 m!412331))

(assert (=> b!308713 m!412327))

(declare-fun m!412335 () Bool)

(assert (=> b!308713 m!412335))

(assert (=> b!308713 m!411103))

(assert (=> b!308713 m!412329))

(assert (=> bm!17958 m!411103))

(declare-fun m!412337 () Bool)

(assert (=> bm!17958 m!412337))

(assert (=> b!308715 m!411103))

(declare-fun m!412339 () Bool)

(assert (=> b!308715 m!412339))

(declare-fun m!412341 () Bool)

(assert (=> b!308708 m!412341))

(assert (=> b!308712 m!412341))

(assert (=> b!308711 m!412329))

(declare-fun m!412343 () Bool)

(assert (=> b!308711 m!412343))

(assert (=> b!308711 m!412327))

(assert (=> b!308711 m!412335))

(assert (=> b!308711 m!411103))

(assert (=> b!308711 m!412329))

(assert (=> b!308711 m!412343))

(declare-fun m!412345 () Bool)

(assert (=> b!308711 m!412345))

(declare-fun m!412347 () Bool)

(assert (=> d!94418 m!412347))

(assert (=> d!94418 m!412341))

(assert (=> d!94418 m!412331))

(declare-fun m!412351 () Bool)

(assert (=> d!94418 m!412351))

(assert (=> d!94418 m!412329))

(assert (=> d!94418 m!412331))

(assert (=> d!94418 m!410421))

(declare-fun m!412353 () Bool)

(assert (=> d!94418 m!412353))

(assert (=> d!94418 m!411103))

(assert (=> d!94418 m!412329))

(assert (=> b!308710 m!412327))

(assert (=> b!308710 m!411103))

(assert (=> b!308710 m!412329))

(assert (=> b!308710 m!412329))

(assert (=> b!308710 m!412343))

(assert (=> b!308710 m!412343))

(assert (=> b!308710 m!412345))

(assert (=> b!308013 d!94418))

(declare-fun b!308724 () Bool)

(declare-fun res!140444 () Bool)

(declare-fun e!192019 () Bool)

(assert (=> b!308724 (=> (not res!140444) (not e!192019))))

(assert (=> b!308724 (= res!140444 (>= (height!179 (++!1106 (c!58276 (charsOf!424 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0))) (c!58276 lt!131492))) (max!0 (height!179 (c!58276 (charsOf!424 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0)))) (height!179 (c!58276 lt!131492)))))))

(declare-fun b!308725 () Bool)

(declare-fun lt!131795 () BalanceConc!2776)

(assert (=> b!308725 (= e!192019 (= (list!1713 lt!131795) (++!1102 (list!1713 (charsOf!424 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0))) (list!1713 lt!131492))))))

(declare-fun b!308723 () Bool)

(declare-fun res!140445 () Bool)

(assert (=> b!308723 (=> (not res!140445) (not e!192019))))

(assert (=> b!308723 (= res!140445 (<= (height!179 (++!1106 (c!58276 (charsOf!424 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0))) (c!58276 lt!131492))) (+ (max!0 (height!179 (c!58276 (charsOf!424 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0)))) (height!179 (c!58276 lt!131492))) 1)))))

(declare-fun b!308722 () Bool)

(declare-fun res!140443 () Bool)

(assert (=> b!308722 (=> (not res!140443) (not e!192019))))

(assert (=> b!308722 (= res!140443 (isBalanced!397 (++!1106 (c!58276 (charsOf!424 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0))) (c!58276 lt!131492))))))

(declare-fun d!94430 () Bool)

(assert (=> d!94430 e!192019))

(declare-fun res!140446 () Bool)

(assert (=> d!94430 (=> (not res!140446) (not e!192019))))

(assert (=> d!94430 (= res!140446 (appendAssocInst!75 (c!58276 (charsOf!424 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0))) (c!58276 lt!131492)))))

(assert (=> d!94430 (= lt!131795 (BalanceConc!2777 (++!1106 (c!58276 (charsOf!424 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0))) (c!58276 lt!131492))))))

(assert (=> d!94430 (= (++!1104 (charsOf!424 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0)) lt!131492) lt!131795)))

(assert (= (and d!94430 res!140446) b!308722))

(assert (= (and b!308722 res!140443) b!308723))

(assert (= (and b!308723 res!140445) b!308724))

(assert (= (and b!308724 res!140444) b!308725))

(declare-fun m!412367 () Bool)

(assert (=> b!308725 m!412367))

(assert (=> b!308725 m!411101))

(declare-fun m!412369 () Bool)

(assert (=> b!308725 m!412369))

(assert (=> b!308725 m!411165))

(assert (=> b!308725 m!412369))

(assert (=> b!308725 m!411165))

(declare-fun m!412371 () Bool)

(assert (=> b!308725 m!412371))

(declare-fun m!412373 () Bool)

(assert (=> b!308722 m!412373))

(assert (=> b!308722 m!412373))

(declare-fun m!412375 () Bool)

(assert (=> b!308722 m!412375))

(declare-fun m!412377 () Bool)

(assert (=> b!308723 m!412377))

(declare-fun m!412379 () Bool)

(assert (=> b!308723 m!412379))

(assert (=> b!308723 m!412373))

(declare-fun m!412381 () Bool)

(assert (=> b!308723 m!412381))

(assert (=> b!308723 m!412373))

(assert (=> b!308723 m!412377))

(assert (=> b!308723 m!412379))

(declare-fun m!412383 () Bool)

(assert (=> b!308723 m!412383))

(declare-fun m!412385 () Bool)

(assert (=> d!94430 m!412385))

(assert (=> d!94430 m!412373))

(assert (=> b!308724 m!412377))

(assert (=> b!308724 m!412379))

(assert (=> b!308724 m!412373))

(assert (=> b!308724 m!412381))

(assert (=> b!308724 m!412373))

(assert (=> b!308724 m!412377))

(assert (=> b!308724 m!412379))

(assert (=> b!308724 m!412383))

(assert (=> b!308013 d!94430))

(declare-fun d!94438 () Bool)

(assert (=> d!94438 (= (head!966 (drop!251 lt!131487 0)) (h!9460 (drop!251 lt!131487 0)))))

(assert (=> b!308013 d!94438))

(declare-fun d!94440 () Bool)

(assert (=> d!94440 (= (tail!541 (drop!251 lt!131488 0)) (drop!251 lt!131488 (+ 0 1)))))

(declare-fun lt!131802 () Unit!5690)

(declare-fun choose!2703 (List!4073 Int) Unit!5690)

(assert (=> d!94440 (= lt!131802 (choose!2703 lt!131488 0))))

(declare-fun e!192035 () Bool)

(assert (=> d!94440 e!192035))

(declare-fun res!140454 () Bool)

(assert (=> d!94440 (=> (not res!140454) (not e!192035))))

(assert (=> d!94440 (= res!140454 (>= 0 0))))

(assert (=> d!94440 (= (lemmaDropTail!228 lt!131488 0) lt!131802)))

(declare-fun b!308751 () Bool)

(assert (=> b!308751 (= e!192035 (< 0 (size!3253 lt!131488)))))

(assert (= (and d!94440 res!140454) b!308751))

(assert (=> d!94440 m!411129))

(assert (=> d!94440 m!411129))

(assert (=> d!94440 m!411145))

(assert (=> d!94440 m!411133))

(declare-fun m!412411 () Bool)

(assert (=> d!94440 m!412411))

(declare-fun m!412413 () Bool)

(assert (=> b!308751 m!412413))

(assert (=> b!308013 d!94440))

(declare-fun b!308788 () Bool)

(declare-fun e!192054 () List!4073)

(assert (=> b!308788 (= e!192054 (drop!251 (t!43305 lt!131487) (- 0 1)))))

(declare-fun d!94452 () Bool)

(declare-fun e!192055 () Bool)

(assert (=> d!94452 e!192055))

(declare-fun res!140468 () Bool)

(assert (=> d!94452 (=> (not res!140468) (not e!192055))))

(declare-fun lt!131814 () List!4073)

(assert (=> d!94452 (= res!140468 (= ((_ map implies) (content!608 lt!131814) (content!608 lt!131487)) ((as const (InoxSet Token!1306)) true)))))

(declare-fun e!192057 () List!4073)

(assert (=> d!94452 (= lt!131814 e!192057)))

(declare-fun c!58538 () Bool)

(assert (=> d!94452 (= c!58538 ((_ is Nil!4063) lt!131487))))

(assert (=> d!94452 (= (drop!251 lt!131487 0) lt!131814)))

(declare-fun b!308789 () Bool)

(declare-fun e!192056 () Int)

(declare-fun call!17967 () Int)

(assert (=> b!308789 (= e!192056 call!17967)))

(declare-fun b!308790 () Bool)

(assert (=> b!308790 (= e!192057 Nil!4063)))

(declare-fun b!308791 () Bool)

(assert (=> b!308791 (= e!192057 e!192054)))

(declare-fun c!58536 () Bool)

(assert (=> b!308791 (= c!58536 (<= 0 0))))

(declare-fun b!308792 () Bool)

(declare-fun e!192058 () Int)

(assert (=> b!308792 (= e!192056 e!192058)))

(declare-fun c!58537 () Bool)

(assert (=> b!308792 (= c!58537 (>= 0 call!17967))))

(declare-fun b!308793 () Bool)

(assert (=> b!308793 (= e!192055 (= (size!3253 lt!131814) e!192056))))

(declare-fun c!58535 () Bool)

(assert (=> b!308793 (= c!58535 (<= 0 0))))

(declare-fun b!308794 () Bool)

(assert (=> b!308794 (= e!192054 lt!131487)))

(declare-fun bm!17962 () Bool)

(assert (=> bm!17962 (= call!17967 (size!3253 lt!131487))))

(declare-fun b!308795 () Bool)

(assert (=> b!308795 (= e!192058 0)))

(declare-fun b!308796 () Bool)

(assert (=> b!308796 (= e!192058 (- call!17967 0))))

(assert (= (and d!94452 c!58538) b!308790))

(assert (= (and d!94452 (not c!58538)) b!308791))

(assert (= (and b!308791 c!58536) b!308794))

(assert (= (and b!308791 (not c!58536)) b!308788))

(assert (= (and d!94452 res!140468) b!308793))

(assert (= (and b!308793 c!58535) b!308789))

(assert (= (and b!308793 (not c!58535)) b!308792))

(assert (= (and b!308792 c!58537) b!308795))

(assert (= (and b!308792 (not c!58537)) b!308796))

(assert (= (or b!308789 b!308792 b!308796) bm!17962))

(declare-fun m!412483 () Bool)

(assert (=> b!308788 m!412483))

(declare-fun m!412485 () Bool)

(assert (=> d!94452 m!412485))

(declare-fun m!412488 () Bool)

(assert (=> d!94452 m!412488))

(declare-fun m!412491 () Bool)

(assert (=> b!308793 m!412491))

(assert (=> bm!17962 m!412297))

(assert (=> b!308013 d!94452))

(declare-fun b!308800 () Bool)

(declare-fun e!192060 () List!4073)

(assert (=> b!308800 (= e!192060 (drop!251 (t!43305 lt!131488) (- 0 1)))))

(declare-fun d!94468 () Bool)

(declare-fun e!192062 () Bool)

(assert (=> d!94468 e!192062))

(declare-fun res!140469 () Bool)

(assert (=> d!94468 (=> (not res!140469) (not e!192062))))

(declare-fun lt!131815 () List!4073)

(assert (=> d!94468 (= res!140469 (= ((_ map implies) (content!608 lt!131815) (content!608 lt!131488)) ((as const (InoxSet Token!1306)) true)))))

(declare-fun e!192064 () List!4073)

(assert (=> d!94468 (= lt!131815 e!192064)))

(declare-fun c!58543 () Bool)

(assert (=> d!94468 (= c!58543 ((_ is Nil!4063) lt!131488))))

(assert (=> d!94468 (= (drop!251 lt!131488 0) lt!131815)))

(declare-fun b!308801 () Bool)

(declare-fun e!192063 () Int)

(declare-fun call!17968 () Int)

(assert (=> b!308801 (= e!192063 call!17968)))

(declare-fun b!308802 () Bool)

(assert (=> b!308802 (= e!192064 Nil!4063)))

(declare-fun b!308803 () Bool)

(assert (=> b!308803 (= e!192064 e!192060)))

(declare-fun c!58541 () Bool)

(assert (=> b!308803 (= c!58541 (<= 0 0))))

(declare-fun b!308804 () Bool)

(declare-fun e!192065 () Int)

(assert (=> b!308804 (= e!192063 e!192065)))

(declare-fun c!58542 () Bool)

(assert (=> b!308804 (= c!58542 (>= 0 call!17968))))

(declare-fun b!308805 () Bool)

(assert (=> b!308805 (= e!192062 (= (size!3253 lt!131815) e!192063))))

(declare-fun c!58539 () Bool)

(assert (=> b!308805 (= c!58539 (<= 0 0))))

(declare-fun b!308806 () Bool)

(assert (=> b!308806 (= e!192060 lt!131488)))

(declare-fun bm!17963 () Bool)

(assert (=> bm!17963 (= call!17968 (size!3253 lt!131488))))

(declare-fun b!308807 () Bool)

(assert (=> b!308807 (= e!192065 0)))

(declare-fun b!308808 () Bool)

(assert (=> b!308808 (= e!192065 (- call!17968 0))))

(assert (= (and d!94468 c!58543) b!308802))

(assert (= (and d!94468 (not c!58543)) b!308803))

(assert (= (and b!308803 c!58541) b!308806))

(assert (= (and b!308803 (not c!58541)) b!308800))

(assert (= (and d!94468 res!140469) b!308805))

(assert (= (and b!308805 c!58539) b!308801))

(assert (= (and b!308805 (not c!58539)) b!308804))

(assert (= (and b!308804 c!58542) b!308807))

(assert (= (and b!308804 (not c!58542)) b!308808))

(assert (= (or b!308801 b!308804 b!308808) bm!17963))

(declare-fun m!412503 () Bool)

(assert (=> b!308800 m!412503))

(declare-fun m!412505 () Bool)

(assert (=> d!94468 m!412505))

(declare-fun m!412507 () Bool)

(assert (=> d!94468 m!412507))

(declare-fun m!412509 () Bool)

(assert (=> b!308805 m!412509))

(assert (=> bm!17963 m!412413))

(assert (=> b!308013 d!94468))

(declare-fun d!94474 () Bool)

(assert (=> d!94474 (= (list!1716 (seqFromList!927 (t!43305 tokens!465))) (list!1719 (c!58278 (seqFromList!927 (t!43305 tokens!465)))))))

(declare-fun bs!35694 () Bool)

(assert (= bs!35694 d!94474))

(declare-fun m!412511 () Bool)

(assert (=> bs!35694 m!412511))

(assert (=> b!308013 d!94474))

(declare-fun d!94476 () Bool)

(assert (=> d!94476 (= (tail!541 (drop!251 lt!131488 0)) (t!43305 (drop!251 lt!131488 0)))))

(assert (=> b!308013 d!94476))

(declare-fun d!94480 () Bool)

(assert (=> d!94480 (dynLambda!2225 lambda!10522 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0))))

(declare-fun lt!131817 () Unit!5690)

(assert (=> d!94480 (= lt!131817 (choose!2691 (list!1716 (seqFromList!927 (t!43305 tokens!465))) lambda!10522 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0)))))

(declare-fun e!192068 () Bool)

(assert (=> d!94480 e!192068))

(declare-fun res!140470 () Bool)

(assert (=> d!94480 (=> (not res!140470) (not e!192068))))

(assert (=> d!94480 (= res!140470 (forall!1072 (list!1716 (seqFromList!927 (t!43305 tokens!465))) lambda!10522))))

(assert (=> d!94480 (= (forallContained!334 (list!1716 (seqFromList!927 (t!43305 tokens!465))) lambda!10522 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0)) lt!131817)))

(declare-fun b!308813 () Bool)

(assert (=> b!308813 (= e!192068 (contains!803 (list!1716 (seqFromList!927 (t!43305 tokens!465))) (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0)))))

(assert (= (and d!94480 res!140470) b!308813))

(declare-fun b_lambda!10735 () Bool)

(assert (=> (not b_lambda!10735) (not d!94480)))

(assert (=> d!94480 m!411097))

(declare-fun m!412527 () Bool)

(assert (=> d!94480 m!412527))

(assert (=> d!94480 m!411095))

(assert (=> d!94480 m!411097))

(declare-fun m!412529 () Bool)

(assert (=> d!94480 m!412529))

(assert (=> d!94480 m!411095))

(declare-fun m!412531 () Bool)

(assert (=> d!94480 m!412531))

(assert (=> b!308813 m!411095))

(assert (=> b!308813 m!411097))

(declare-fun m!412533 () Bool)

(assert (=> b!308813 m!412533))

(assert (=> b!308013 d!94480))

(declare-fun d!94484 () Bool)

(declare-fun lt!131826 () Token!1306)

(assert (=> d!94484 (contains!803 lt!131487 lt!131826)))

(declare-fun e!192085 () Token!1306)

(assert (=> d!94484 (= lt!131826 e!192085)))

(declare-fun c!58554 () Bool)

(assert (=> d!94484 (= c!58554 (= 0 0))))

(declare-fun e!192084 () Bool)

(assert (=> d!94484 e!192084))

(declare-fun res!140479 () Bool)

(assert (=> d!94484 (=> (not res!140479) (not e!192084))))

(assert (=> d!94484 (= res!140479 (<= 0 0))))

(assert (=> d!94484 (= (apply!894 lt!131487 0) lt!131826)))

(declare-fun b!308839 () Bool)

(assert (=> b!308839 (= e!192084 (< 0 (size!3253 lt!131487)))))

(declare-fun b!308840 () Bool)

(assert (=> b!308840 (= e!192085 (head!966 lt!131487))))

(declare-fun b!308841 () Bool)

(assert (=> b!308841 (= e!192085 (apply!894 (tail!541 lt!131487) (- 0 1)))))

(assert (= (and d!94484 res!140479) b!308839))

(assert (= (and d!94484 c!58554) b!308840))

(assert (= (and d!94484 (not c!58554)) b!308841))

(declare-fun m!412601 () Bool)

(assert (=> d!94484 m!412601))

(assert (=> b!308839 m!412297))

(declare-fun m!412603 () Bool)

(assert (=> b!308840 m!412603))

(declare-fun m!412605 () Bool)

(assert (=> b!308841 m!412605))

(assert (=> b!308841 m!412605))

(declare-fun m!412607 () Bool)

(assert (=> b!308841 m!412607))

(assert (=> b!308013 d!94484))

(declare-fun bs!35697 () Bool)

(declare-fun d!94504 () Bool)

(assert (= bs!35697 (and d!94504 d!94270)))

(declare-fun lambda!10542 () Int)

(assert (=> bs!35697 (not (= lambda!10542 lambda!10532))))

(declare-fun bs!35698 () Bool)

(assert (= bs!35698 (and d!94504 b!307890)))

(assert (=> bs!35698 (not (= lambda!10542 lambda!10514))))

(declare-fun bs!35699 () Bool)

(assert (= bs!35699 (and d!94504 d!94136)))

(assert (=> bs!35699 (= lambda!10542 lambda!10524)))

(declare-fun bs!35700 () Bool)

(assert (= bs!35700 (and d!94504 b!308157)))

(assert (=> bs!35700 (not (= lambda!10542 lambda!10526))))

(declare-fun bs!35701 () Bool)

(assert (= bs!35701 (and d!94504 b!307468)))

(assert (=> bs!35701 (not (= lambda!10542 lambda!10492))))

(declare-fun bs!35702 () Bool)

(assert (= bs!35702 (and d!94504 b!307466)))

(assert (=> bs!35702 (= lambda!10542 lambda!10491)))

(declare-fun bs!35703 () Bool)

(assert (= bs!35703 (and d!94504 d!93922)))

(assert (=> bs!35703 (not (= lambda!10542 lambda!10508))))

(declare-fun bs!35704 () Bool)

(assert (= bs!35704 (and d!94504 b!308119)))

(assert (=> bs!35704 (not (= lambda!10542 lambda!10525))))

(declare-fun bs!35705 () Bool)

(assert (= bs!35705 (and d!94504 b!308013)))

(assert (=> bs!35705 (not (= lambda!10542 lambda!10522))))

(declare-fun bs!35706 () Bool)

(assert (= bs!35706 (and d!94504 d!94010)))

(assert (=> bs!35706 (= lambda!10542 lambda!10521)))

(declare-fun bs!35708 () Bool)

(declare-fun b!308847 () Bool)

(assert (= bs!35708 (and b!308847 d!94270)))

(declare-fun lambda!10543 () Int)

(assert (=> bs!35708 (= lambda!10543 lambda!10532)))

(declare-fun bs!35709 () Bool)

(assert (= bs!35709 (and b!308847 d!94504)))

(assert (=> bs!35709 (not (= lambda!10543 lambda!10542))))

(declare-fun bs!35710 () Bool)

(assert (= bs!35710 (and b!308847 b!307890)))

(assert (=> bs!35710 (= lambda!10543 lambda!10514)))

(declare-fun bs!35711 () Bool)

(assert (= bs!35711 (and b!308847 d!94136)))

(assert (=> bs!35711 (not (= lambda!10543 lambda!10524))))

(declare-fun bs!35712 () Bool)

(assert (= bs!35712 (and b!308847 b!308157)))

(assert (=> bs!35712 (= lambda!10543 lambda!10526)))

(declare-fun bs!35713 () Bool)

(assert (= bs!35713 (and b!308847 b!307468)))

(assert (=> bs!35713 (= lambda!10543 lambda!10492)))

(declare-fun bs!35714 () Bool)

(assert (= bs!35714 (and b!308847 b!307466)))

(assert (=> bs!35714 (not (= lambda!10543 lambda!10491))))

(declare-fun bs!35715 () Bool)

(assert (= bs!35715 (and b!308847 d!93922)))

(assert (=> bs!35715 (= lambda!10543 lambda!10508)))

(declare-fun bs!35716 () Bool)

(assert (= bs!35716 (and b!308847 b!308119)))

(assert (=> bs!35716 (= lambda!10543 lambda!10525)))

(declare-fun bs!35717 () Bool)

(assert (= bs!35717 (and b!308847 b!308013)))

(assert (=> bs!35717 (= lambda!10543 lambda!10522)))

(declare-fun bs!35718 () Bool)

(assert (= bs!35718 (and b!308847 d!94010)))

(assert (=> bs!35718 (not (= lambda!10543 lambda!10521))))

(declare-fun b!308859 () Bool)

(declare-fun e!192097 () Bool)

(assert (=> b!308859 (= e!192097 true)))

(declare-fun b!308858 () Bool)

(declare-fun e!192096 () Bool)

(assert (=> b!308858 (= e!192096 e!192097)))

(declare-fun b!308857 () Bool)

(declare-fun e!192095 () Bool)

(assert (=> b!308857 (= e!192095 e!192096)))

(assert (=> b!308847 e!192095))

(assert (= b!308858 b!308859))

(assert (= b!308857 b!308858))

(assert (= (and b!308847 ((_ is Cons!4062) rules!1920)) b!308857))

(assert (=> b!308859 (< (dynLambda!2219 order!3297 (toValue!1540 (transformation!781 (h!9459 rules!1920)))) (dynLambda!2220 order!3299 lambda!10543))))

(assert (=> b!308859 (< (dynLambda!2221 order!3301 (toChars!1399 (transformation!781 (h!9459 rules!1920)))) (dynLambda!2220 order!3299 lambda!10543))))

(assert (=> b!308847 true))

(declare-fun c!58557 () Bool)

(declare-fun call!17973 () Token!1306)

(declare-fun call!17971 () BalanceConc!2776)

(declare-fun bm!17964 () Bool)

(assert (=> bm!17964 (= call!17971 (charsOf!424 (ite c!58557 separatorToken!170 call!17973)))))

(declare-fun bm!17965 () Bool)

(declare-fun call!17970 () Token!1306)

(assert (=> bm!17965 (= call!17973 call!17970)))

(declare-fun lt!131828 () BalanceConc!2776)

(assert (=> d!94504 (= (list!1713 lt!131828) (printWithSeparatorTokenWhenNeededList!348 thiss!17480 rules!1920 (dropList!196 (seqFromList!927 (t!43305 tokens!465)) (+ 0 1)) separatorToken!170))))

(declare-fun e!192088 () BalanceConc!2776)

(assert (=> d!94504 (= lt!131828 e!192088)))

(declare-fun c!58556 () Bool)

(assert (=> d!94504 (= c!58556 (>= (+ 0 1) (size!3247 (seqFromList!927 (t!43305 tokens!465)))))))

(declare-fun lt!131835 () Unit!5690)

(assert (=> d!94504 (= lt!131835 (lemmaContentSubsetPreservesForall!140 (list!1716 (seqFromList!927 (t!43305 tokens!465))) (dropList!196 (seqFromList!927 (t!43305 tokens!465)) (+ 0 1)) lambda!10542))))

(declare-fun e!192086 () Bool)

(assert (=> d!94504 e!192086))

(declare-fun res!140481 () Bool)

(assert (=> d!94504 (=> (not res!140481) (not e!192086))))

(assert (=> d!94504 (= res!140481 (>= (+ 0 1) 0))))

(assert (=> d!94504 (= (printWithSeparatorTokenWhenNeededRec!340 thiss!17480 rules!1920 (seqFromList!927 (t!43305 tokens!465)) separatorToken!170 (+ 0 1)) lt!131828)))

(declare-fun bm!17966 () Bool)

(assert (=> bm!17966 (= call!17970 (apply!892 (seqFromList!927 (t!43305 tokens!465)) (+ 0 1)))))

(declare-fun b!308842 () Bool)

(assert (=> b!308842 (= e!192086 (<= (+ 0 1) (size!3247 (seqFromList!927 (t!43305 tokens!465)))))))

(declare-fun b!308843 () Bool)

(declare-fun e!192091 () BalanceConc!2776)

(declare-fun call!17972 () BalanceConc!2776)

(declare-fun lt!131838 () BalanceConc!2776)

(assert (=> b!308843 (= e!192091 (++!1104 call!17972 lt!131838))))

(declare-fun b!308844 () Bool)

(declare-fun e!192089 () Bool)

(declare-fun lt!131829 () Option!929)

(assert (=> b!308844 (= e!192089 (= (_1!2563 (v!14933 lt!131829)) (apply!892 (seqFromList!927 (t!43305 tokens!465)) (+ 0 1))))))

(declare-fun b!308845 () Bool)

(assert (=> b!308845 (= e!192088 (BalanceConc!2777 Empty!1384))))

(declare-fun call!17969 () BalanceConc!2776)

(declare-fun bm!17967 () Bool)

(declare-fun c!58555 () Bool)

(assert (=> bm!17967 (= call!17969 (charsOf!424 (ite c!58555 call!17970 call!17973)))))

(declare-fun b!308846 () Bool)

(declare-fun e!192090 () Bool)

(assert (=> b!308846 (= e!192090 (not (= (_1!2563 (v!14933 lt!131829)) call!17970)))))

(declare-fun e!192087 () BalanceConc!2776)

(assert (=> b!308847 (= e!192088 e!192087)))

(declare-fun lt!131833 () List!4073)

(assert (=> b!308847 (= lt!131833 (list!1716 (seqFromList!927 (t!43305 tokens!465))))))

(declare-fun lt!131830 () Unit!5690)

(assert (=> b!308847 (= lt!131830 (lemmaDropApply!236 lt!131833 (+ 0 1)))))

(assert (=> b!308847 (= (head!966 (drop!251 lt!131833 (+ 0 1))) (apply!894 lt!131833 (+ 0 1)))))

(declare-fun lt!131832 () Unit!5690)

(assert (=> b!308847 (= lt!131832 lt!131830)))

(declare-fun lt!131834 () List!4073)

(assert (=> b!308847 (= lt!131834 (list!1716 (seqFromList!927 (t!43305 tokens!465))))))

(declare-fun lt!131840 () Unit!5690)

(assert (=> b!308847 (= lt!131840 (lemmaDropTail!228 lt!131834 (+ 0 1)))))

(assert (=> b!308847 (= (tail!541 (drop!251 lt!131834 (+ 0 1))) (drop!251 lt!131834 (+ 0 1 1)))))

(declare-fun lt!131839 () Unit!5690)

(assert (=> b!308847 (= lt!131839 lt!131840)))

(declare-fun lt!131837 () Unit!5690)

(assert (=> b!308847 (= lt!131837 (forallContained!334 (list!1716 (seqFromList!927 (t!43305 tokens!465))) lambda!10543 (apply!892 (seqFromList!927 (t!43305 tokens!465)) (+ 0 1))))))

(assert (=> b!308847 (= lt!131838 (printWithSeparatorTokenWhenNeededRec!340 thiss!17480 rules!1920 (seqFromList!927 (t!43305 tokens!465)) separatorToken!170 (+ 0 1 1)))))

(assert (=> b!308847 (= lt!131829 (maxPrefixZipperSequence!346 thiss!17480 rules!1920 (++!1104 (charsOf!424 (apply!892 (seqFromList!927 (t!43305 tokens!465)) (+ 0 1))) lt!131838)))))

(declare-fun res!140482 () Bool)

(assert (=> b!308847 (= res!140482 ((_ is Some!928) lt!131829))))

(assert (=> b!308847 (=> (not res!140482) (not e!192089))))

(assert (=> b!308847 (= c!58555 e!192089)))

(declare-fun b!308848 () Bool)

(assert (=> b!308848 (= e!192087 call!17972)))

(declare-fun bm!17968 () Bool)

(assert (=> bm!17968 (= call!17972 (++!1104 call!17969 (ite c!58555 lt!131838 call!17971)))))

(declare-fun b!308849 () Bool)

(assert (=> b!308849 (= e!192091 (BalanceConc!2777 Empty!1384))))

(assert (=> b!308849 (= (print!392 thiss!17480 (singletonSeq!327 call!17973)) (printTailRec!353 thiss!17480 (singletonSeq!327 call!17973) 0 (BalanceConc!2777 Empty!1384)))))

(declare-fun lt!131831 () Unit!5690)

(declare-fun Unit!5714 () Unit!5690)

(assert (=> b!308849 (= lt!131831 Unit!5714)))

(declare-fun lt!131836 () Unit!5690)

(assert (=> b!308849 (= lt!131836 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!144 thiss!17480 rules!1920 (list!1713 call!17971) (list!1713 lt!131838)))))

(assert (=> b!308849 false))

(declare-fun lt!131827 () Unit!5690)

(declare-fun Unit!5715 () Unit!5690)

(assert (=> b!308849 (= lt!131827 Unit!5715)))

(declare-fun b!308850 () Bool)

(assert (=> b!308850 (= c!58557 e!192090)))

(declare-fun res!140480 () Bool)

(assert (=> b!308850 (=> (not res!140480) (not e!192090))))

(assert (=> b!308850 (= res!140480 ((_ is Some!928) lt!131829))))

(assert (=> b!308850 (= e!192087 e!192091)))

(assert (= (and d!94504 res!140481) b!308842))

(assert (= (and d!94504 c!58556) b!308845))

(assert (= (and d!94504 (not c!58556)) b!308847))

(assert (= (and b!308847 res!140482) b!308844))

(assert (= (and b!308847 c!58555) b!308848))

(assert (= (and b!308847 (not c!58555)) b!308850))

(assert (= (and b!308850 res!140480) b!308846))

(assert (= (and b!308850 c!58557) b!308843))

(assert (= (and b!308850 (not c!58557)) b!308849))

(assert (= (or b!308843 b!308849) bm!17965))

(assert (= (or b!308843 b!308849) bm!17964))

(assert (= (or b!308848 bm!17965 b!308846) bm!17966))

(assert (= (or b!308848 b!308843) bm!17967))

(assert (= (or b!308848 b!308843) bm!17968))

(assert (=> b!308847 m!411095))

(declare-fun m!412615 () Bool)

(assert (=> b!308847 m!412615))

(declare-fun m!412617 () Bool)

(assert (=> b!308847 m!412617))

(declare-fun m!412619 () Bool)

(assert (=> b!308847 m!412619))

(declare-fun m!412621 () Bool)

(assert (=> b!308847 m!412621))

(declare-fun m!412623 () Bool)

(assert (=> b!308847 m!412623))

(assert (=> b!308847 m!412615))

(assert (=> b!308847 m!412619))

(assert (=> b!308847 m!410277))

(assert (=> b!308847 m!412615))

(assert (=> b!308847 m!412621))

(declare-fun m!412625 () Bool)

(assert (=> b!308847 m!412625))

(declare-fun m!412627 () Bool)

(assert (=> b!308847 m!412627))

(declare-fun m!412629 () Bool)

(assert (=> b!308847 m!412629))

(assert (=> b!308847 m!412623))

(declare-fun m!412631 () Bool)

(assert (=> b!308847 m!412631))

(declare-fun m!412633 () Bool)

(assert (=> b!308847 m!412633))

(declare-fun m!412635 () Bool)

(assert (=> b!308847 m!412635))

(assert (=> b!308847 m!410277))

(declare-fun m!412639 () Bool)

(assert (=> b!308847 m!412639))

(assert (=> b!308847 m!412633))

(declare-fun m!412645 () Bool)

(assert (=> b!308847 m!412645))

(declare-fun m!412647 () Bool)

(assert (=> b!308847 m!412647))

(assert (=> b!308847 m!410277))

(assert (=> b!308847 m!411095))

(assert (=> bm!17966 m!410277))

(assert (=> bm!17966 m!412615))

(declare-fun m!412649 () Bool)

(assert (=> b!308849 m!412649))

(declare-fun m!412651 () Bool)

(assert (=> b!308849 m!412651))

(assert (=> b!308849 m!412649))

(declare-fun m!412653 () Bool)

(assert (=> b!308849 m!412653))

(assert (=> b!308849 m!412649))

(declare-fun m!412655 () Bool)

(assert (=> b!308849 m!412655))

(declare-fun m!412657 () Bool)

(assert (=> b!308849 m!412657))

(declare-fun m!412659 () Bool)

(assert (=> b!308849 m!412659))

(assert (=> b!308849 m!412657))

(assert (=> b!308849 m!412655))

(declare-fun m!412661 () Bool)

(assert (=> b!308843 m!412661))

(declare-fun m!412663 () Bool)

(assert (=> bm!17964 m!412663))

(assert (=> d!94504 m!411095))

(declare-fun m!412665 () Bool)

(assert (=> d!94504 m!412665))

(declare-fun m!412667 () Bool)

(assert (=> d!94504 m!412667))

(assert (=> d!94504 m!410277))

(assert (=> d!94504 m!412665))

(assert (=> d!94504 m!410277))

(assert (=> d!94504 m!411191))

(assert (=> d!94504 m!412665))

(declare-fun m!412669 () Bool)

(assert (=> d!94504 m!412669))

(declare-fun m!412671 () Bool)

(assert (=> d!94504 m!412671))

(assert (=> d!94504 m!410277))

(assert (=> d!94504 m!411095))

(declare-fun m!412673 () Bool)

(assert (=> bm!17967 m!412673))

(assert (=> b!308842 m!410277))

(assert (=> b!308842 m!411191))

(assert (=> b!308844 m!410277))

(assert (=> b!308844 m!412615))

(declare-fun m!412675 () Bool)

(assert (=> bm!17968 m!412675))

(assert (=> b!308013 d!94504))

(declare-fun d!94512 () Bool)

(declare-fun lt!131846 () Token!1306)

(assert (=> d!94512 (= lt!131846 (apply!894 (list!1716 (seqFromList!927 (t!43305 tokens!465))) 0))))

(declare-fun apply!896 (Conc!1385 Int) Token!1306)

(assert (=> d!94512 (= lt!131846 (apply!896 (c!58278 (seqFromList!927 (t!43305 tokens!465))) 0))))

(declare-fun e!192103 () Bool)

(assert (=> d!94512 e!192103))

(declare-fun res!140488 () Bool)

(assert (=> d!94512 (=> (not res!140488) (not e!192103))))

(assert (=> d!94512 (= res!140488 (<= 0 0))))

(assert (=> d!94512 (= (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0) lt!131846)))

(declare-fun b!308865 () Bool)

(assert (=> b!308865 (= e!192103 (< 0 (size!3247 (seqFromList!927 (t!43305 tokens!465)))))))

(assert (= (and d!94512 res!140488) b!308865))

(assert (=> d!94512 m!410277))

(assert (=> d!94512 m!411095))

(assert (=> d!94512 m!411095))

(declare-fun m!412677 () Bool)

(assert (=> d!94512 m!412677))

(declare-fun m!412679 () Bool)

(assert (=> d!94512 m!412679))

(assert (=> b!308865 m!410277))

(assert (=> b!308865 m!411191))

(assert (=> b!308013 d!94512))

(declare-fun b!308866 () Bool)

(declare-fun e!192104 () List!4073)

(assert (=> b!308866 (= e!192104 (drop!251 (t!43305 lt!131488) (- (+ 0 1) 1)))))

(declare-fun d!94514 () Bool)

(declare-fun e!192105 () Bool)

(assert (=> d!94514 e!192105))

(declare-fun res!140489 () Bool)

(assert (=> d!94514 (=> (not res!140489) (not e!192105))))

(declare-fun lt!131847 () List!4073)

(assert (=> d!94514 (= res!140489 (= ((_ map implies) (content!608 lt!131847) (content!608 lt!131488)) ((as const (InoxSet Token!1306)) true)))))

(declare-fun e!192107 () List!4073)

(assert (=> d!94514 (= lt!131847 e!192107)))

(declare-fun c!58564 () Bool)

(assert (=> d!94514 (= c!58564 ((_ is Nil!4063) lt!131488))))

(assert (=> d!94514 (= (drop!251 lt!131488 (+ 0 1)) lt!131847)))

(declare-fun b!308867 () Bool)

(declare-fun e!192106 () Int)

(declare-fun call!17974 () Int)

(assert (=> b!308867 (= e!192106 call!17974)))

(declare-fun b!308868 () Bool)

(assert (=> b!308868 (= e!192107 Nil!4063)))

(declare-fun b!308869 () Bool)

(assert (=> b!308869 (= e!192107 e!192104)))

(declare-fun c!58562 () Bool)

(assert (=> b!308869 (= c!58562 (<= (+ 0 1) 0))))

(declare-fun b!308870 () Bool)

(declare-fun e!192108 () Int)

(assert (=> b!308870 (= e!192106 e!192108)))

(declare-fun c!58563 () Bool)

(assert (=> b!308870 (= c!58563 (>= (+ 0 1) call!17974))))

(declare-fun b!308871 () Bool)

(assert (=> b!308871 (= e!192105 (= (size!3253 lt!131847) e!192106))))

(declare-fun c!58561 () Bool)

(assert (=> b!308871 (= c!58561 (<= (+ 0 1) 0))))

(declare-fun b!308872 () Bool)

(assert (=> b!308872 (= e!192104 lt!131488)))

(declare-fun bm!17969 () Bool)

(assert (=> bm!17969 (= call!17974 (size!3253 lt!131488))))

(declare-fun b!308873 () Bool)

(assert (=> b!308873 (= e!192108 0)))

(declare-fun b!308874 () Bool)

(assert (=> b!308874 (= e!192108 (- call!17974 (+ 0 1)))))

(assert (= (and d!94514 c!58564) b!308868))

(assert (= (and d!94514 (not c!58564)) b!308869))

(assert (= (and b!308869 c!58562) b!308872))

(assert (= (and b!308869 (not c!58562)) b!308866))

(assert (= (and d!94514 res!140489) b!308871))

(assert (= (and b!308871 c!58561) b!308867))

(assert (= (and b!308871 (not c!58561)) b!308870))

(assert (= (and b!308870 c!58563) b!308873))

(assert (= (and b!308870 (not c!58563)) b!308874))

(assert (= (or b!308867 b!308870 b!308874) bm!17969))

(declare-fun m!412681 () Bool)

(assert (=> b!308866 m!412681))

(declare-fun m!412683 () Bool)

(assert (=> d!94514 m!412683))

(assert (=> d!94514 m!412507))

(declare-fun m!412685 () Bool)

(assert (=> b!308871 m!412685))

(assert (=> bm!17969 m!412413))

(assert (=> b!308013 d!94514))

(declare-fun d!94516 () Bool)

(declare-fun lt!131848 () BalanceConc!2776)

(assert (=> d!94516 (= (list!1713 lt!131848) (originalCharacters!824 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0)))))

(assert (=> d!94516 (= lt!131848 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0)))) (value!26574 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0))))))

(assert (=> d!94516 (= (charsOf!424 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0)) lt!131848)))

(declare-fun b_lambda!10739 () Bool)

(assert (=> (not b_lambda!10739) (not d!94516)))

(declare-fun t!43449 () Bool)

(declare-fun tb!19455 () Bool)

(assert (=> (and b!308288 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))) (toChars!1399 (transformation!781 (rule!1394 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0))))) t!43449) tb!19455))

(declare-fun b!308875 () Bool)

(declare-fun e!192109 () Bool)

(declare-fun tp!109095 () Bool)

(assert (=> b!308875 (= e!192109 (and (inv!5019 (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0)))) (value!26574 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0))))) tp!109095))))

(declare-fun result!23460 () Bool)

(assert (=> tb!19455 (= result!23460 (and (inv!5020 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0)))) (value!26574 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0)))) e!192109))))

(assert (= tb!19455 b!308875))

(declare-fun m!412687 () Bool)

(assert (=> b!308875 m!412687))

(declare-fun m!412689 () Bool)

(assert (=> tb!19455 m!412689))

(assert (=> d!94516 t!43449))

(declare-fun b_and!26111 () Bool)

(assert (= b_and!26035 (and (=> t!43449 result!23460) b_and!26111)))

(declare-fun tb!19457 () Bool)

(declare-fun t!43451 () Bool)

(assert (=> (and b!307440 (= (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (toChars!1399 (transformation!781 (rule!1394 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0))))) t!43451) tb!19457))

(declare-fun result!23462 () Bool)

(assert (= result!23462 result!23460))

(assert (=> d!94516 t!43451))

(declare-fun b_and!26113 () Bool)

(assert (= b_and!26019 (and (=> t!43451 result!23462) b_and!26113)))

(declare-fun t!43453 () Bool)

(declare-fun tb!19459 () Bool)

(assert (=> (and b!307455 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (toChars!1399 (transformation!781 (rule!1394 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0))))) t!43453) tb!19459))

(declare-fun result!23464 () Bool)

(assert (= result!23464 result!23460))

(assert (=> d!94516 t!43453))

(declare-fun b_and!26115 () Bool)

(assert (= b_and!26023 (and (=> t!43453 result!23464) b_and!26115)))

(declare-fun tb!19461 () Bool)

(declare-fun t!43455 () Bool)

(assert (=> (and b!307444 (= (toChars!1399 (transformation!781 (h!9459 rules!1920))) (toChars!1399 (transformation!781 (rule!1394 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0))))) t!43455) tb!19461))

(declare-fun result!23466 () Bool)

(assert (= result!23466 result!23460))

(assert (=> d!94516 t!43455))

(declare-fun b_and!26117 () Bool)

(assert (= b_and!26021 (and (=> t!43455 result!23466) b_and!26117)))

(declare-fun t!43457 () Bool)

(declare-fun tb!19463 () Bool)

(assert (=> (and b!308316 (= (toChars!1399 (transformation!781 (h!9459 (t!43304 rules!1920)))) (toChars!1399 (transformation!781 (rule!1394 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0))))) t!43457) tb!19463))

(declare-fun result!23468 () Bool)

(assert (= result!23468 result!23460))

(assert (=> d!94516 t!43457))

(declare-fun b_and!26119 () Bool)

(assert (= b_and!26039 (and (=> t!43457 result!23468) b_and!26119)))

(declare-fun m!412691 () Bool)

(assert (=> d!94516 m!412691))

(declare-fun m!412693 () Bool)

(assert (=> d!94516 m!412693))

(assert (=> b!308013 d!94516))

(declare-fun d!94518 () Bool)

(assert (=> d!94518 true))

(declare-fun order!3307 () Int)

(declare-fun lambda!10546 () Int)

(declare-fun dynLambda!2229 (Int Int) Int)

(assert (=> d!94518 (< (dynLambda!2219 order!3297 (toValue!1540 (transformation!781 (h!9459 rules!1920)))) (dynLambda!2229 order!3307 lambda!10546))))

(declare-fun Forall2!160 (Int) Bool)

(assert (=> d!94518 (= (equivClasses!276 (toChars!1399 (transformation!781 (h!9459 rules!1920))) (toValue!1540 (transformation!781 (h!9459 rules!1920)))) (Forall2!160 lambda!10546))))

(declare-fun bs!35719 () Bool)

(assert (= bs!35719 d!94518))

(declare-fun m!412695 () Bool)

(assert (=> bs!35719 m!412695))

(assert (=> b!308252 d!94518))

(declare-fun d!94520 () Bool)

(assert (=> d!94520 (= (isDefined!767 (maxPrefix!383 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!348 thiss!17480 rules!1920 tokens!465 separatorToken!170))) (not (isEmpty!2779 (maxPrefix!383 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!348 thiss!17480 rules!1920 tokens!465 separatorToken!170)))))))

(declare-fun bs!35720 () Bool)

(assert (= bs!35720 d!94520))

(assert (=> bs!35720 m!411421))

(declare-fun m!412697 () Bool)

(assert (=> bs!35720 m!412697))

(assert (=> b!308108 d!94520))

(declare-fun b!308880 () Bool)

(declare-fun res!140497 () Bool)

(declare-fun e!192112 () Bool)

(assert (=> b!308880 (=> (not res!140497) (not e!192112))))

(declare-fun lt!131850 () Option!928)

(assert (=> b!308880 (= res!140497 (matchR!323 (regex!781 (rule!1394 (_1!2561 (get!1388 lt!131850)))) (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131850))))))))

(declare-fun b!308881 () Bool)

(assert (=> b!308881 (= e!192112 (contains!804 rules!1920 (rule!1394 (_1!2561 (get!1388 lt!131850)))))))

(declare-fun b!308882 () Bool)

(declare-fun res!140495 () Bool)

(assert (=> b!308882 (=> (not res!140495) (not e!192112))))

(assert (=> b!308882 (= res!140495 (= (++!1102 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131850)))) (_2!2561 (get!1388 lt!131850))) (printWithSeparatorTokenWhenNeededList!348 thiss!17480 rules!1920 tokens!465 separatorToken!170)))))

(declare-fun d!94522 () Bool)

(declare-fun e!192114 () Bool)

(assert (=> d!94522 e!192114))

(declare-fun res!140496 () Bool)

(assert (=> d!94522 (=> res!140496 e!192114)))

(assert (=> d!94522 (= res!140496 (isEmpty!2779 lt!131850))))

(declare-fun e!192113 () Option!928)

(assert (=> d!94522 (= lt!131850 e!192113)))

(declare-fun c!58565 () Bool)

(assert (=> d!94522 (= c!58565 (and ((_ is Cons!4062) rules!1920) ((_ is Nil!4062) (t!43304 rules!1920))))))

(declare-fun lt!131853 () Unit!5690)

(declare-fun lt!131852 () Unit!5690)

(assert (=> d!94522 (= lt!131853 lt!131852)))

(assert (=> d!94522 (isPrefix!441 (printWithSeparatorTokenWhenNeededList!348 thiss!17480 rules!1920 tokens!465 separatorToken!170) (printWithSeparatorTokenWhenNeededList!348 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!94522 (= lt!131852 (lemmaIsPrefixRefl!238 (printWithSeparatorTokenWhenNeededList!348 thiss!17480 rules!1920 tokens!465 separatorToken!170) (printWithSeparatorTokenWhenNeededList!348 thiss!17480 rules!1920 tokens!465 separatorToken!170)))))

(assert (=> d!94522 (rulesValidInductive!233 thiss!17480 rules!1920)))

(assert (=> d!94522 (= (maxPrefix!383 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!348 thiss!17480 rules!1920 tokens!465 separatorToken!170)) lt!131850)))

(declare-fun bm!17970 () Bool)

(declare-fun call!17975 () Option!928)

(assert (=> bm!17970 (= call!17975 (maxPrefixOneRule!172 thiss!17480 (h!9459 rules!1920) (printWithSeparatorTokenWhenNeededList!348 thiss!17480 rules!1920 tokens!465 separatorToken!170)))))

(declare-fun b!308883 () Bool)

(declare-fun res!140492 () Bool)

(assert (=> b!308883 (=> (not res!140492) (not e!192112))))

(assert (=> b!308883 (= res!140492 (< (size!3246 (_2!2561 (get!1388 lt!131850))) (size!3246 (printWithSeparatorTokenWhenNeededList!348 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!308884 () Bool)

(assert (=> b!308884 (= e!192113 call!17975)))

(declare-fun b!308885 () Bool)

(assert (=> b!308885 (= e!192114 e!192112)))

(declare-fun res!140494 () Bool)

(assert (=> b!308885 (=> (not res!140494) (not e!192112))))

(assert (=> b!308885 (= res!140494 (isDefined!767 lt!131850))))

(declare-fun b!308886 () Bool)

(declare-fun res!140493 () Bool)

(assert (=> b!308886 (=> (not res!140493) (not e!192112))))

(assert (=> b!308886 (= res!140493 (= (value!26574 (_1!2561 (get!1388 lt!131850))) (apply!891 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131850)))) (seqFromList!928 (originalCharacters!824 (_1!2561 (get!1388 lt!131850)))))))))

(declare-fun b!308887 () Bool)

(declare-fun res!140498 () Bool)

(assert (=> b!308887 (=> (not res!140498) (not e!192112))))

(assert (=> b!308887 (= res!140498 (= (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131850)))) (originalCharacters!824 (_1!2561 (get!1388 lt!131850)))))))

(declare-fun b!308888 () Bool)

(declare-fun lt!131851 () Option!928)

(declare-fun lt!131849 () Option!928)

(assert (=> b!308888 (= e!192113 (ite (and ((_ is None!927) lt!131851) ((_ is None!927) lt!131849)) None!927 (ite ((_ is None!927) lt!131849) lt!131851 (ite ((_ is None!927) lt!131851) lt!131849 (ite (>= (size!3243 (_1!2561 (v!14932 lt!131851))) (size!3243 (_1!2561 (v!14932 lt!131849)))) lt!131851 lt!131849)))))))

(assert (=> b!308888 (= lt!131851 call!17975)))

(assert (=> b!308888 (= lt!131849 (maxPrefix!383 thiss!17480 (t!43304 rules!1920) (printWithSeparatorTokenWhenNeededList!348 thiss!17480 rules!1920 tokens!465 separatorToken!170)))))

(assert (= (and d!94522 c!58565) b!308884))

(assert (= (and d!94522 (not c!58565)) b!308888))

(assert (= (or b!308884 b!308888) bm!17970))

(assert (= (and d!94522 (not res!140496)) b!308885))

(assert (= (and b!308885 res!140494) b!308887))

(assert (= (and b!308887 res!140498) b!308883))

(assert (= (and b!308883 res!140492) b!308882))

(assert (= (and b!308882 res!140495) b!308886))

(assert (= (and b!308886 res!140493) b!308880))

(assert (= (and b!308880 res!140497) b!308881))

(assert (=> b!308888 m!410223))

(declare-fun m!412699 () Bool)

(assert (=> b!308888 m!412699))

(declare-fun m!412701 () Bool)

(assert (=> b!308882 m!412701))

(declare-fun m!412703 () Bool)

(assert (=> b!308882 m!412703))

(assert (=> b!308882 m!412703))

(declare-fun m!412705 () Bool)

(assert (=> b!308882 m!412705))

(assert (=> b!308882 m!412705))

(declare-fun m!412707 () Bool)

(assert (=> b!308882 m!412707))

(assert (=> b!308887 m!412701))

(assert (=> b!308887 m!412703))

(assert (=> b!308887 m!412703))

(assert (=> b!308887 m!412705))

(assert (=> b!308886 m!412701))

(declare-fun m!412709 () Bool)

(assert (=> b!308886 m!412709))

(assert (=> b!308886 m!412709))

(declare-fun m!412711 () Bool)

(assert (=> b!308886 m!412711))

(assert (=> b!308880 m!412701))

(assert (=> b!308880 m!412703))

(assert (=> b!308880 m!412703))

(assert (=> b!308880 m!412705))

(assert (=> b!308880 m!412705))

(declare-fun m!412713 () Bool)

(assert (=> b!308880 m!412713))

(assert (=> bm!17970 m!410223))

(declare-fun m!412715 () Bool)

(assert (=> bm!17970 m!412715))

(assert (=> b!308881 m!412701))

(declare-fun m!412717 () Bool)

(assert (=> b!308881 m!412717))

(declare-fun m!412719 () Bool)

(assert (=> d!94522 m!412719))

(assert (=> d!94522 m!410223))

(assert (=> d!94522 m!410223))

(declare-fun m!412721 () Bool)

(assert (=> d!94522 m!412721))

(assert (=> d!94522 m!410223))

(assert (=> d!94522 m!410223))

(declare-fun m!412723 () Bool)

(assert (=> d!94522 m!412723))

(assert (=> d!94522 m!410421))

(assert (=> b!308883 m!412701))

(declare-fun m!412725 () Bool)

(assert (=> b!308883 m!412725))

(assert (=> b!308883 m!410223))

(declare-fun m!412727 () Bool)

(assert (=> b!308883 m!412727))

(declare-fun m!412729 () Bool)

(assert (=> b!308885 m!412729))

(assert (=> b!308108 d!94522))

(assert (=> b!308108 d!94138))

(declare-fun d!94524 () Bool)

(declare-fun e!192117 () Bool)

(assert (=> d!94524 e!192117))

(declare-fun res!140501 () Bool)

(assert (=> d!94524 (=> (not res!140501) (not e!192117))))

(declare-fun lt!131856 () BalanceConc!2776)

(assert (=> d!94524 (= res!140501 (= (list!1713 lt!131856) lt!131156))))

(declare-fun fromList!200 (List!4071) Conc!1384)

(assert (=> d!94524 (= lt!131856 (BalanceConc!2777 (fromList!200 lt!131156)))))

(assert (=> d!94524 (= (fromListB!387 lt!131156) lt!131856)))

(declare-fun b!308891 () Bool)

(assert (=> b!308891 (= e!192117 (isBalanced!397 (fromList!200 lt!131156)))))

(assert (= (and d!94524 res!140501) b!308891))

(declare-fun m!412731 () Bool)

(assert (=> d!94524 m!412731))

(declare-fun m!412733 () Bool)

(assert (=> d!94524 m!412733))

(assert (=> b!308891 m!412733))

(assert (=> b!308891 m!412733))

(declare-fun m!412735 () Bool)

(assert (=> b!308891 m!412735))

(assert (=> d!93944 d!94524))

(declare-fun b!308901 () Bool)

(declare-fun e!192122 () List!4071)

(declare-fun e!192123 () List!4071)

(assert (=> b!308901 (= e!192122 e!192123)))

(declare-fun c!58572 () Bool)

(assert (=> b!308901 (= c!58572 ((_ is Leaf!2114) (c!58276 (charsOf!424 separatorToken!170))))))

(declare-fun b!308902 () Bool)

(declare-fun list!1721 (IArray!2769) List!4071)

(assert (=> b!308902 (= e!192123 (list!1721 (xs!3987 (c!58276 (charsOf!424 separatorToken!170)))))))

(declare-fun b!308903 () Bool)

(assert (=> b!308903 (= e!192123 (++!1102 (list!1717 (left!3377 (c!58276 (charsOf!424 separatorToken!170)))) (list!1717 (right!3707 (c!58276 (charsOf!424 separatorToken!170))))))))

(declare-fun d!94526 () Bool)

(declare-fun c!58571 () Bool)

(assert (=> d!94526 (= c!58571 ((_ is Empty!1384) (c!58276 (charsOf!424 separatorToken!170))))))

(assert (=> d!94526 (= (list!1717 (c!58276 (charsOf!424 separatorToken!170))) e!192122)))

(declare-fun b!308900 () Bool)

(assert (=> b!308900 (= e!192122 Nil!4061)))

(assert (= (and d!94526 c!58571) b!308900))

(assert (= (and d!94526 (not c!58571)) b!308901))

(assert (= (and b!308901 c!58572) b!308902))

(assert (= (and b!308901 (not c!58572)) b!308903))

(declare-fun m!412737 () Bool)

(assert (=> b!308902 m!412737))

(declare-fun m!412739 () Bool)

(assert (=> b!308903 m!412739))

(declare-fun m!412741 () Bool)

(assert (=> b!308903 m!412741))

(assert (=> b!308903 m!412739))

(assert (=> b!308903 m!412741))

(declare-fun m!412743 () Bool)

(assert (=> b!308903 m!412743))

(assert (=> d!93988 d!94526))

(declare-fun d!94528 () Bool)

(declare-fun lt!131857 () BalanceConc!2776)

(assert (=> d!94528 (= (list!1713 lt!131857) (originalCharacters!824 (ite c!58409 call!17919 call!17922)))))

(assert (=> d!94528 (= lt!131857 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (ite c!58409 call!17919 call!17922)))) (value!26574 (ite c!58409 call!17919 call!17922))))))

(assert (=> d!94528 (= (charsOf!424 (ite c!58409 call!17919 call!17922)) lt!131857)))

(declare-fun b_lambda!10741 () Bool)

(assert (=> (not b_lambda!10741) (not d!94528)))

(declare-fun tb!19465 () Bool)

(declare-fun t!43460 () Bool)

(assert (=> (and b!307455 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (toChars!1399 (transformation!781 (rule!1394 (ite c!58409 call!17919 call!17922))))) t!43460) tb!19465))

(declare-fun e!192124 () Bool)

(declare-fun tp!109096 () Bool)

(declare-fun b!308904 () Bool)

(assert (=> b!308904 (= e!192124 (and (inv!5019 (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (ite c!58409 call!17919 call!17922)))) (value!26574 (ite c!58409 call!17919 call!17922))))) tp!109096))))

(declare-fun result!23470 () Bool)

(assert (=> tb!19465 (= result!23470 (and (inv!5020 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (ite c!58409 call!17919 call!17922)))) (value!26574 (ite c!58409 call!17919 call!17922)))) e!192124))))

(assert (= tb!19465 b!308904))

(declare-fun m!412745 () Bool)

(assert (=> b!308904 m!412745))

(declare-fun m!412747 () Bool)

(assert (=> tb!19465 m!412747))

(assert (=> d!94528 t!43460))

(declare-fun b_and!26121 () Bool)

(assert (= b_and!26115 (and (=> t!43460 result!23470) b_and!26121)))

(declare-fun tb!19467 () Bool)

(declare-fun t!43462 () Bool)

(assert (=> (and b!307440 (= (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (toChars!1399 (transformation!781 (rule!1394 (ite c!58409 call!17919 call!17922))))) t!43462) tb!19467))

(declare-fun result!23472 () Bool)

(assert (= result!23472 result!23470))

(assert (=> d!94528 t!43462))

(declare-fun b_and!26123 () Bool)

(assert (= b_and!26113 (and (=> t!43462 result!23472) b_and!26123)))

(declare-fun t!43464 () Bool)

(declare-fun tb!19469 () Bool)

(assert (=> (and b!308288 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))) (toChars!1399 (transformation!781 (rule!1394 (ite c!58409 call!17919 call!17922))))) t!43464) tb!19469))

(declare-fun result!23474 () Bool)

(assert (= result!23474 result!23470))

(assert (=> d!94528 t!43464))

(declare-fun b_and!26125 () Bool)

(assert (= b_and!26111 (and (=> t!43464 result!23474) b_and!26125)))

(declare-fun t!43466 () Bool)

(declare-fun tb!19471 () Bool)

(assert (=> (and b!308316 (= (toChars!1399 (transformation!781 (h!9459 (t!43304 rules!1920)))) (toChars!1399 (transformation!781 (rule!1394 (ite c!58409 call!17919 call!17922))))) t!43466) tb!19471))

(declare-fun result!23476 () Bool)

(assert (= result!23476 result!23470))

(assert (=> d!94528 t!43466))

(declare-fun b_and!26127 () Bool)

(assert (= b_and!26119 (and (=> t!43466 result!23476) b_and!26127)))

(declare-fun tb!19473 () Bool)

(declare-fun t!43468 () Bool)

(assert (=> (and b!307444 (= (toChars!1399 (transformation!781 (h!9459 rules!1920))) (toChars!1399 (transformation!781 (rule!1394 (ite c!58409 call!17919 call!17922))))) t!43468) tb!19473))

(declare-fun result!23478 () Bool)

(assert (= result!23478 result!23470))

(assert (=> d!94528 t!43468))

(declare-fun b_and!26129 () Bool)

(assert (= b_and!26117 (and (=> t!43468 result!23478) b_and!26129)))

(declare-fun m!412749 () Bool)

(assert (=> d!94528 m!412749))

(declare-fun m!412751 () Bool)

(assert (=> d!94528 m!412751))

(assert (=> bm!17916 d!94528))

(declare-fun d!94530 () Bool)

(declare-fun charsToBigInt!1 (List!4070) Int)

(assert (=> d!94530 (= (inv!17 (value!26574 separatorToken!170)) (= (charsToBigInt!1 (text!6069 (value!26574 separatorToken!170))) (value!26566 (value!26574 separatorToken!170))))))

(declare-fun bs!35721 () Bool)

(assert (= bs!35721 d!94530))

(declare-fun m!412753 () Bool)

(assert (=> bs!35721 m!412753))

(assert (=> b!307576 d!94530))

(declare-fun d!94532 () Bool)

(declare-fun lt!131919 () Option!928)

(assert (=> d!94532 (= lt!131919 (maxPrefix!383 thiss!17480 rules!1920 (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465))))))))

(declare-fun e!192164 () Option!928)

(assert (=> d!94532 (= lt!131919 e!192164)))

(declare-fun c!58584 () Bool)

(assert (=> d!94532 (= c!58584 (and ((_ is Cons!4062) rules!1920) ((_ is Nil!4062) (t!43304 rules!1920))))))

(declare-fun lt!131916 () Unit!5690)

(declare-fun lt!131915 () Unit!5690)

(assert (=> d!94532 (= lt!131916 lt!131915)))

(assert (=> d!94532 (isPrefix!441 (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465)))) (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465)))))))

(assert (=> d!94532 (= lt!131915 (lemmaIsPrefixRefl!238 (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465)))) (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465))))))))

(assert (=> d!94532 (rulesValidInductive!233 thiss!17480 rules!1920)))

(assert (=> d!94532 (= (maxPrefixZipper!143 thiss!17480 rules!1920 (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465))))) lt!131919)))

(declare-fun call!17980 () Option!928)

(declare-fun bm!17975 () Bool)

(declare-fun maxPrefixOneRuleZipper!44 (LexerInterface!667 Rule!1362 List!4071) Option!928)

(assert (=> bm!17975 (= call!17980 (maxPrefixOneRuleZipper!44 thiss!17480 (h!9459 rules!1920) (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465))))))))

(declare-fun b!308974 () Bool)

(assert (=> b!308974 (= e!192164 call!17980)))

(declare-fun b!308975 () Bool)

(declare-fun lt!131917 () Option!928)

(declare-fun lt!131918 () Option!928)

(assert (=> b!308975 (= e!192164 (ite (and ((_ is None!927) lt!131917) ((_ is None!927) lt!131918)) None!927 (ite ((_ is None!927) lt!131918) lt!131917 (ite ((_ is None!927) lt!131917) lt!131918 (ite (>= (size!3243 (_1!2561 (v!14932 lt!131917))) (size!3243 (_1!2561 (v!14932 lt!131918)))) lt!131917 lt!131918)))))))

(assert (=> b!308975 (= lt!131917 call!17980)))

(assert (=> b!308975 (= lt!131918 (maxPrefixZipper!143 thiss!17480 (t!43304 rules!1920) (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465))))))))

(assert (= (and d!94532 c!58584) b!308974))

(assert (= (and d!94532 (not c!58584)) b!308975))

(assert (= (or b!308974 b!308975) bm!17975))

(assert (=> d!94532 m!410653))

(assert (=> d!94532 m!410667))

(assert (=> d!94532 m!410653))

(assert (=> d!94532 m!410653))

(assert (=> d!94532 m!412271))

(assert (=> d!94532 m!410653))

(assert (=> d!94532 m!410653))

(assert (=> d!94532 m!412273))

(assert (=> d!94532 m!410421))

(assert (=> bm!17975 m!410653))

(declare-fun m!412935 () Bool)

(assert (=> bm!17975 m!412935))

(assert (=> b!308975 m!410653))

(declare-fun m!412939 () Bool)

(assert (=> b!308975 m!412939))

(assert (=> b!307721 d!94532))

(declare-fun d!94556 () Bool)

(assert (=> d!94556 (= (list!1713 (_2!2563 (get!1390 lt!131283))) (list!1717 (c!58276 (_2!2563 (get!1390 lt!131283)))))))

(declare-fun bs!35730 () Bool)

(assert (= bs!35730 d!94556))

(declare-fun m!412943 () Bool)

(assert (=> bs!35730 m!412943))

(assert (=> b!307721 d!94556))

(declare-fun d!94560 () Bool)

(assert (=> d!94560 (= (get!1388 (maxPrefixZipper!143 thiss!17480 rules!1920 (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465)))))) (v!14932 (maxPrefixZipper!143 thiss!17480 rules!1920 (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465)))))))))

(assert (=> b!307721 d!94560))

(assert (=> b!307721 d!94392))

(assert (=> b!307721 d!94408))

(declare-fun d!94562 () Bool)

(assert (=> d!94562 true))

(declare-fun lambda!10555 () Int)

(declare-fun order!3309 () Int)

(declare-fun dynLambda!2230 (Int Int) Int)

(assert (=> d!94562 (< (dynLambda!2221 order!3301 (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465))))) (dynLambda!2230 order!3309 lambda!10555))))

(assert (=> d!94562 true))

(assert (=> d!94562 (< (dynLambda!2219 order!3297 (toValue!1540 (transformation!781 (rule!1394 (h!9460 tokens!465))))) (dynLambda!2230 order!3309 lambda!10555))))

(declare-fun Forall!184 (Int) Bool)

(assert (=> d!94562 (= (semiInverseModEq!293 (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (toValue!1540 (transformation!781 (rule!1394 (h!9460 tokens!465))))) (Forall!184 lambda!10555))))

(declare-fun bs!35733 () Bool)

(assert (= bs!35733 d!94562))

(declare-fun m!412979 () Bool)

(assert (=> bs!35733 m!412979))

(assert (=> d!94150 d!94562))

(assert (=> b!308010 d!94512))

(declare-fun lt!131924 () List!4071)

(declare-fun b!309000 () Bool)

(declare-fun e!192175 () Bool)

(assert (=> b!309000 (= e!192175 (or (not (= (ite c!58366 lt!131385 call!17888) Nil!4061)) (= lt!131924 e!191493)))))

(declare-fun d!94574 () Bool)

(assert (=> d!94574 e!192175))

(declare-fun res!140549 () Bool)

(assert (=> d!94574 (=> (not res!140549) (not e!192175))))

(assert (=> d!94574 (= res!140549 (= (content!606 lt!131924) ((_ map or) (content!606 e!191493) (content!606 (ite c!58366 lt!131385 call!17888)))))))

(declare-fun e!192174 () List!4071)

(assert (=> d!94574 (= lt!131924 e!192174)))

(declare-fun c!58589 () Bool)

(assert (=> d!94574 (= c!58589 ((_ is Nil!4061) e!191493))))

(assert (=> d!94574 (= (++!1102 e!191493 (ite c!58366 lt!131385 call!17888)) lt!131924)))

(declare-fun b!308999 () Bool)

(declare-fun res!140550 () Bool)

(assert (=> b!308999 (=> (not res!140550) (not e!192175))))

(assert (=> b!308999 (= res!140550 (= (size!3246 lt!131924) (+ (size!3246 e!191493) (size!3246 (ite c!58366 lt!131385 call!17888)))))))

(declare-fun b!308998 () Bool)

(assert (=> b!308998 (= e!192174 (Cons!4061 (h!9458 e!191493) (++!1102 (t!43303 e!191493) (ite c!58366 lt!131385 call!17888))))))

(declare-fun b!308997 () Bool)

(assert (=> b!308997 (= e!192174 (ite c!58366 lt!131385 call!17888))))

(assert (= (and d!94574 c!58589) b!308997))

(assert (= (and d!94574 (not c!58589)) b!308998))

(assert (= (and d!94574 res!140549) b!308999))

(assert (= (and b!308999 res!140550) b!309000))

(declare-fun m!412981 () Bool)

(assert (=> d!94574 m!412981))

(declare-fun m!412983 () Bool)

(assert (=> d!94574 m!412983))

(declare-fun m!412985 () Bool)

(assert (=> d!94574 m!412985))

(declare-fun m!412987 () Bool)

(assert (=> b!308999 m!412987))

(declare-fun m!412989 () Bool)

(assert (=> b!308999 m!412989))

(declare-fun m!412991 () Bool)

(assert (=> b!308999 m!412991))

(declare-fun m!412993 () Bool)

(assert (=> b!308998 m!412993))

(assert (=> bm!17881 d!94574))

(declare-fun d!94576 () Bool)

(assert (=> d!94576 (= (list!1713 call!17924) (list!1717 (c!58276 call!17924)))))

(declare-fun bs!35734 () Bool)

(assert (= bs!35734 d!94576))

(declare-fun m!412995 () Bool)

(assert (=> bs!35734 m!412995))

(assert (=> b!308158 d!94576))

(declare-fun b!309002 () Bool)

(declare-fun e!192176 () List!4071)

(declare-fun e!192177 () List!4071)

(assert (=> b!309002 (= e!192176 e!192177)))

(declare-fun c!58591 () Bool)

(assert (=> b!309002 (= c!58591 ((_ is Leaf!2114) (c!58276 (printWithSeparatorTokenWhenNeededRec!340 thiss!17480 rules!1920 lt!131159 separatorToken!170 0))))))

(declare-fun b!309003 () Bool)

(assert (=> b!309003 (= e!192177 (list!1721 (xs!3987 (c!58276 (printWithSeparatorTokenWhenNeededRec!340 thiss!17480 rules!1920 lt!131159 separatorToken!170 0)))))))

(declare-fun b!309004 () Bool)

(assert (=> b!309004 (= e!192177 (++!1102 (list!1717 (left!3377 (c!58276 (printWithSeparatorTokenWhenNeededRec!340 thiss!17480 rules!1920 lt!131159 separatorToken!170 0)))) (list!1717 (right!3707 (c!58276 (printWithSeparatorTokenWhenNeededRec!340 thiss!17480 rules!1920 lt!131159 separatorToken!170 0))))))))

(declare-fun c!58590 () Bool)

(declare-fun d!94578 () Bool)

(assert (=> d!94578 (= c!58590 ((_ is Empty!1384) (c!58276 (printWithSeparatorTokenWhenNeededRec!340 thiss!17480 rules!1920 lt!131159 separatorToken!170 0))))))

(assert (=> d!94578 (= (list!1717 (c!58276 (printWithSeparatorTokenWhenNeededRec!340 thiss!17480 rules!1920 lt!131159 separatorToken!170 0))) e!192176)))

(declare-fun b!309001 () Bool)

(assert (=> b!309001 (= e!192176 Nil!4061)))

(assert (= (and d!94578 c!58590) b!309001))

(assert (= (and d!94578 (not c!58590)) b!309002))

(assert (= (and b!309002 c!58591) b!309003))

(assert (= (and b!309002 (not c!58591)) b!309004))

(declare-fun m!412997 () Bool)

(assert (=> b!309003 m!412997))

(declare-fun m!412999 () Bool)

(assert (=> b!309004 m!412999))

(declare-fun m!413001 () Bool)

(assert (=> b!309004 m!413001))

(assert (=> b!309004 m!412999))

(assert (=> b!309004 m!413001))

(declare-fun m!413003 () Bool)

(assert (=> b!309004 m!413003))

(assert (=> d!94132 d!94578))

(declare-fun d!94580 () Bool)

(declare-fun c!58596 () Bool)

(assert (=> d!94580 (= c!58596 ((_ is Nil!4061) lt!131511))))

(declare-fun e!192186 () (InoxSet C!2932))

(assert (=> d!94580 (= (content!606 lt!131511) e!192186)))

(declare-fun b!309017 () Bool)

(assert (=> b!309017 (= e!192186 ((as const (Array C!2932 Bool)) false))))

(declare-fun b!309018 () Bool)

(assert (=> b!309018 (= e!192186 ((_ map or) (store ((as const (Array C!2932 Bool)) false) (h!9458 lt!131511) true) (content!606 (t!43303 lt!131511))))))

(assert (= (and d!94580 c!58596) b!309017))

(assert (= (and d!94580 (not c!58596)) b!309018))

(declare-fun m!413005 () Bool)

(assert (=> b!309018 m!413005))

(declare-fun m!413007 () Bool)

(assert (=> b!309018 m!413007))

(assert (=> d!94074 d!94580))

(declare-fun d!94582 () Bool)

(declare-fun c!58597 () Bool)

(assert (=> d!94582 (= c!58597 ((_ is Nil!4061) lt!131150))))

(declare-fun e!192187 () (InoxSet C!2932))

(assert (=> d!94582 (= (content!606 lt!131150) e!192187)))

(declare-fun b!309019 () Bool)

(assert (=> b!309019 (= e!192187 ((as const (Array C!2932 Bool)) false))))

(declare-fun b!309020 () Bool)

(assert (=> b!309020 (= e!192187 ((_ map or) (store ((as const (Array C!2932 Bool)) false) (h!9458 lt!131150) true) (content!606 (t!43303 lt!131150))))))

(assert (= (and d!94582 c!58597) b!309019))

(assert (= (and d!94582 (not c!58597)) b!309020))

(declare-fun m!413009 () Bool)

(assert (=> b!309020 m!413009))

(declare-fun m!413011 () Bool)

(assert (=> b!309020 m!413011))

(assert (=> d!94074 d!94582))

(declare-fun d!94584 () Bool)

(declare-fun c!58598 () Bool)

(assert (=> d!94584 (= c!58598 ((_ is Nil!4061) lt!131164))))

(declare-fun e!192188 () (InoxSet C!2932))

(assert (=> d!94584 (= (content!606 lt!131164) e!192188)))

(declare-fun b!309021 () Bool)

(assert (=> b!309021 (= e!192188 ((as const (Array C!2932 Bool)) false))))

(declare-fun b!309022 () Bool)

(assert (=> b!309022 (= e!192188 ((_ map or) (store ((as const (Array C!2932 Bool)) false) (h!9458 lt!131164) true) (content!606 (t!43303 lt!131164))))))

(assert (= (and d!94584 c!58598) b!309021))

(assert (= (and d!94584 (not c!58598)) b!309022))

(declare-fun m!413013 () Bool)

(assert (=> b!309022 m!413013))

(declare-fun m!413015 () Bool)

(assert (=> b!309022 m!413015))

(assert (=> d!94074 d!94584))

(declare-fun d!94586 () Bool)

(declare-fun lt!131925 () Token!1306)

(assert (=> d!94586 (= lt!131925 (apply!894 (list!1716 (_1!2562 lt!131245)) 0))))

(assert (=> d!94586 (= lt!131925 (apply!896 (c!58278 (_1!2562 lt!131245)) 0))))

(declare-fun e!192189 () Bool)

(assert (=> d!94586 e!192189))

(declare-fun res!140555 () Bool)

(assert (=> d!94586 (=> (not res!140555) (not e!192189))))

(assert (=> d!94586 (= res!140555 (<= 0 0))))

(assert (=> d!94586 (= (apply!892 (_1!2562 lt!131245) 0) lt!131925)))

(declare-fun b!309023 () Bool)

(assert (=> b!309023 (= e!192189 (< 0 (size!3247 (_1!2562 lt!131245))))))

(assert (= (and d!94586 res!140555) b!309023))

(assert (=> d!94586 m!411911))

(assert (=> d!94586 m!411911))

(declare-fun m!413017 () Bool)

(assert (=> d!94586 m!413017))

(declare-fun m!413019 () Bool)

(assert (=> d!94586 m!413019))

(assert (=> b!309023 m!410587))

(assert (=> b!307650 d!94586))

(declare-fun d!94588 () Bool)

(declare-fun lt!131926 () Int)

(assert (=> d!94588 (= lt!131926 (size!3253 (list!1716 lt!131159)))))

(assert (=> d!94588 (= lt!131926 (size!3254 (c!58278 lt!131159)))))

(assert (=> d!94588 (= (size!3247 lt!131159) lt!131926)))

(declare-fun bs!35735 () Bool)

(assert (= bs!35735 d!94588))

(assert (=> bs!35735 m!410539))

(assert (=> bs!35735 m!410539))

(declare-fun m!413021 () Bool)

(assert (=> bs!35735 m!413021))

(declare-fun m!413023 () Bool)

(assert (=> bs!35735 m!413023))

(assert (=> b!308114 d!94588))

(declare-fun d!94590 () Bool)

(assert (=> d!94590 (= (list!1713 lt!131502) (list!1717 (c!58276 lt!131502)))))

(declare-fun bs!35736 () Bool)

(assert (= bs!35736 d!94590))

(declare-fun m!413025 () Bool)

(assert (=> bs!35736 m!413025))

(assert (=> d!94058 d!94590))

(declare-fun d!94592 () Bool)

(declare-fun lt!131927 () Token!1306)

(assert (=> d!94592 (= lt!131927 (apply!894 (list!1716 lt!131159) 0))))

(assert (=> d!94592 (= lt!131927 (apply!896 (c!58278 lt!131159) 0))))

(declare-fun e!192190 () Bool)

(assert (=> d!94592 e!192190))

(declare-fun res!140556 () Bool)

(assert (=> d!94592 (=> (not res!140556) (not e!192190))))

(assert (=> d!94592 (= res!140556 (<= 0 0))))

(assert (=> d!94592 (= (apply!892 lt!131159 0) lt!131927)))

(declare-fun b!309024 () Bool)

(assert (=> b!309024 (= e!192190 (< 0 (size!3247 lt!131159)))))

(assert (= (and d!94592 res!140556) b!309024))

(assert (=> d!94592 m!410539))

(assert (=> d!94592 m!410539))

(declare-fun m!413027 () Bool)

(assert (=> d!94592 m!413027))

(declare-fun m!413029 () Bool)

(assert (=> d!94592 m!413029))

(assert (=> b!309024 m!411481))

(assert (=> bm!17915 d!94592))

(declare-fun b!309185 () Bool)

(declare-fun e!192290 () Bool)

(declare-datatypes ((tuple2!4702 0))(
  ( (tuple2!4703 (_1!2567 List!4071) (_2!2567 List!4071)) )
))
(declare-fun findLongestMatchInner!86 (Regex!1005 List!4071 Int List!4071 List!4071 Int) tuple2!4702)

(assert (=> b!309185 (= e!192290 (matchR!323 (regex!781 (h!9459 rules!1920)) (_1!2567 (findLongestMatchInner!86 (regex!781 (h!9459 rules!1920)) Nil!4061 (size!3246 Nil!4061) lt!131150 lt!131150 (size!3246 lt!131150)))))))

(declare-fun b!309186 () Bool)

(declare-fun e!192289 () Option!928)

(declare-fun lt!132018 () tuple2!4702)

(assert (=> b!309186 (= e!192289 (Some!927 (tuple2!4691 (Token!1307 (apply!891 (transformation!781 (h!9459 rules!1920)) (seqFromList!928 (_1!2567 lt!132018))) (h!9459 rules!1920) (size!3249 (seqFromList!928 (_1!2567 lt!132018))) (_1!2567 lt!132018)) (_2!2567 lt!132018))))))

(declare-fun lt!132016 () Unit!5690)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!70 (Regex!1005 List!4071) Unit!5690)

(assert (=> b!309186 (= lt!132016 (longestMatchIsAcceptedByMatchOrIsEmpty!70 (regex!781 (h!9459 rules!1920)) lt!131150))))

(declare-fun res!140630 () Bool)

(assert (=> b!309186 (= res!140630 (isEmpty!2775 (_1!2567 (findLongestMatchInner!86 (regex!781 (h!9459 rules!1920)) Nil!4061 (size!3246 Nil!4061) lt!131150 lt!131150 (size!3246 lt!131150)))))))

(assert (=> b!309186 (=> res!140630 e!192290)))

(assert (=> b!309186 e!192290))

(declare-fun lt!132013 () Unit!5690)

(assert (=> b!309186 (= lt!132013 lt!132016)))

(declare-fun lt!132015 () Unit!5690)

(declare-fun lemmaSemiInverse!64 (TokenValueInjection!1378 BalanceConc!2776) Unit!5690)

(assert (=> b!309186 (= lt!132015 (lemmaSemiInverse!64 (transformation!781 (h!9459 rules!1920)) (seqFromList!928 (_1!2567 lt!132018))))))

(declare-fun b!309187 () Bool)

(declare-fun e!192288 () Bool)

(declare-fun lt!132017 () Option!928)

(assert (=> b!309187 (= e!192288 (= (size!3243 (_1!2561 (get!1388 lt!132017))) (size!3246 (originalCharacters!824 (_1!2561 (get!1388 lt!132017))))))))

(declare-fun b!309188 () Bool)

(declare-fun res!140631 () Bool)

(assert (=> b!309188 (=> (not res!140631) (not e!192288))))

(assert (=> b!309188 (= res!140631 (= (++!1102 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!132017)))) (_2!2561 (get!1388 lt!132017))) lt!131150))))

(declare-fun b!309190 () Bool)

(declare-fun res!140628 () Bool)

(assert (=> b!309190 (=> (not res!140628) (not e!192288))))

(assert (=> b!309190 (= res!140628 (= (value!26574 (_1!2561 (get!1388 lt!132017))) (apply!891 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!132017)))) (seqFromList!928 (originalCharacters!824 (_1!2561 (get!1388 lt!132017)))))))))

(declare-fun b!309191 () Bool)

(assert (=> b!309191 (= e!192289 None!927)))

(declare-fun b!309192 () Bool)

(declare-fun res!140626 () Bool)

(assert (=> b!309192 (=> (not res!140626) (not e!192288))))

(assert (=> b!309192 (= res!140626 (= (rule!1394 (_1!2561 (get!1388 lt!132017))) (h!9459 rules!1920)))))

(declare-fun b!309193 () Bool)

(declare-fun e!192291 () Bool)

(assert (=> b!309193 (= e!192291 e!192288)))

(declare-fun res!140629 () Bool)

(assert (=> b!309193 (=> (not res!140629) (not e!192288))))

(assert (=> b!309193 (= res!140629 (matchR!323 (regex!781 (h!9459 rules!1920)) (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!132017))))))))

(declare-fun b!309189 () Bool)

(declare-fun res!140625 () Bool)

(assert (=> b!309189 (=> (not res!140625) (not e!192288))))

(assert (=> b!309189 (= res!140625 (< (size!3246 (_2!2561 (get!1388 lt!132017))) (size!3246 lt!131150)))))

(declare-fun d!94594 () Bool)

(assert (=> d!94594 e!192291))

(declare-fun res!140627 () Bool)

(assert (=> d!94594 (=> res!140627 e!192291)))

(assert (=> d!94594 (= res!140627 (isEmpty!2779 lt!132017))))

(assert (=> d!94594 (= lt!132017 e!192289)))

(declare-fun c!58641 () Bool)

(assert (=> d!94594 (= c!58641 (isEmpty!2775 (_1!2567 lt!132018)))))

(declare-fun findLongestMatch!66 (Regex!1005 List!4071) tuple2!4702)

(assert (=> d!94594 (= lt!132018 (findLongestMatch!66 (regex!781 (h!9459 rules!1920)) lt!131150))))

(declare-fun ruleValid!100 (LexerInterface!667 Rule!1362) Bool)

(assert (=> d!94594 (ruleValid!100 thiss!17480 (h!9459 rules!1920))))

(assert (=> d!94594 (= (maxPrefixOneRule!172 thiss!17480 (h!9459 rules!1920) lt!131150) lt!132017)))

(assert (= (and d!94594 c!58641) b!309191))

(assert (= (and d!94594 (not c!58641)) b!309186))

(assert (= (and b!309186 (not res!140630)) b!309185))

(assert (= (and d!94594 (not res!140627)) b!309193))

(assert (= (and b!309193 res!140629) b!309188))

(assert (= (and b!309188 res!140631) b!309189))

(assert (= (and b!309189 res!140625) b!309192))

(assert (= (and b!309192 res!140626) b!309190))

(assert (= (and b!309190 res!140628) b!309187))

(declare-fun m!413355 () Bool)

(assert (=> b!309187 m!413355))

(declare-fun m!413359 () Bool)

(assert (=> b!309187 m!413359))

(declare-fun m!413361 () Bool)

(assert (=> b!309186 m!413361))

(assert (=> b!309186 m!413361))

(assert (=> b!309186 m!410425))

(declare-fun m!413365 () Bool)

(assert (=> b!309186 m!413365))

(assert (=> b!309186 m!410425))

(declare-fun m!413371 () Bool)

(assert (=> b!309186 m!413371))

(declare-fun m!413377 () Bool)

(assert (=> b!309186 m!413377))

(declare-fun m!413379 () Bool)

(assert (=> b!309186 m!413379))

(assert (=> b!309186 m!413377))

(declare-fun m!413383 () Bool)

(assert (=> b!309186 m!413383))

(assert (=> b!309186 m!413377))

(declare-fun m!413387 () Bool)

(assert (=> b!309186 m!413387))

(assert (=> b!309186 m!413377))

(declare-fun m!413393 () Bool)

(assert (=> b!309186 m!413393))

(assert (=> b!309188 m!413355))

(declare-fun m!413397 () Bool)

(assert (=> b!309188 m!413397))

(assert (=> b!309188 m!413397))

(declare-fun m!413401 () Bool)

(assert (=> b!309188 m!413401))

(assert (=> b!309188 m!413401))

(declare-fun m!413403 () Bool)

(assert (=> b!309188 m!413403))

(assert (=> b!309192 m!413355))

(declare-fun m!413407 () Bool)

(assert (=> d!94594 m!413407))

(declare-fun m!413410 () Bool)

(assert (=> d!94594 m!413410))

(declare-fun m!413413 () Bool)

(assert (=> d!94594 m!413413))

(declare-fun m!413415 () Bool)

(assert (=> d!94594 m!413415))

(assert (=> b!309185 m!413361))

(assert (=> b!309185 m!410425))

(assert (=> b!309185 m!413361))

(assert (=> b!309185 m!410425))

(assert (=> b!309185 m!413365))

(declare-fun m!413419 () Bool)

(assert (=> b!309185 m!413419))

(assert (=> b!309193 m!413355))

(assert (=> b!309193 m!413397))

(assert (=> b!309193 m!413397))

(assert (=> b!309193 m!413401))

(assert (=> b!309193 m!413401))

(declare-fun m!413423 () Bool)

(assert (=> b!309193 m!413423))

(assert (=> b!309190 m!413355))

(declare-fun m!413425 () Bool)

(assert (=> b!309190 m!413425))

(assert (=> b!309190 m!413425))

(declare-fun m!413427 () Bool)

(assert (=> b!309190 m!413427))

(assert (=> b!309189 m!413355))

(declare-fun m!413429 () Bool)

(assert (=> b!309189 m!413429))

(assert (=> b!309189 m!410425))

(assert (=> bm!17826 d!94594))

(declare-fun d!94668 () Bool)

(declare-fun lt!132026 () BalanceConc!2776)

(assert (=> d!94668 (= (list!1713 lt!132026) (originalCharacters!824 (ite c!58402 separatorToken!170 call!17914)))))

(assert (=> d!94668 (= lt!132026 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (ite c!58402 separatorToken!170 call!17914)))) (value!26574 (ite c!58402 separatorToken!170 call!17914))))))

(assert (=> d!94668 (= (charsOf!424 (ite c!58402 separatorToken!170 call!17914)) lt!132026)))

(declare-fun b_lambda!10753 () Bool)

(assert (=> (not b_lambda!10753) (not d!94668)))

(declare-fun tb!19505 () Bool)

(declare-fun t!43500 () Bool)

(assert (=> (and b!308288 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))) (toChars!1399 (transformation!781 (rule!1394 (ite c!58402 separatorToken!170 call!17914))))) t!43500) tb!19505))

(declare-fun e!192294 () Bool)

(declare-fun tp!109100 () Bool)

(declare-fun b!309197 () Bool)

(assert (=> b!309197 (= e!192294 (and (inv!5019 (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (ite c!58402 separatorToken!170 call!17914)))) (value!26574 (ite c!58402 separatorToken!170 call!17914))))) tp!109100))))

(declare-fun result!23510 () Bool)

(assert (=> tb!19505 (= result!23510 (and (inv!5020 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (ite c!58402 separatorToken!170 call!17914)))) (value!26574 (ite c!58402 separatorToken!170 call!17914)))) e!192294))))

(assert (= tb!19505 b!309197))

(declare-fun m!413435 () Bool)

(assert (=> b!309197 m!413435))

(declare-fun m!413439 () Bool)

(assert (=> tb!19505 m!413439))

(assert (=> d!94668 t!43500))

(declare-fun b_and!26161 () Bool)

(assert (= b_and!26125 (and (=> t!43500 result!23510) b_and!26161)))

(declare-fun tb!19507 () Bool)

(declare-fun t!43502 () Bool)

(assert (=> (and b!307444 (= (toChars!1399 (transformation!781 (h!9459 rules!1920))) (toChars!1399 (transformation!781 (rule!1394 (ite c!58402 separatorToken!170 call!17914))))) t!43502) tb!19507))

(declare-fun result!23512 () Bool)

(assert (= result!23512 result!23510))

(assert (=> d!94668 t!43502))

(declare-fun b_and!26163 () Bool)

(assert (= b_and!26129 (and (=> t!43502 result!23512) b_and!26163)))

(declare-fun t!43504 () Bool)

(declare-fun tb!19509 () Bool)

(assert (=> (and b!307440 (= (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (toChars!1399 (transformation!781 (rule!1394 (ite c!58402 separatorToken!170 call!17914))))) t!43504) tb!19509))

(declare-fun result!23514 () Bool)

(assert (= result!23514 result!23510))

(assert (=> d!94668 t!43504))

(declare-fun b_and!26165 () Bool)

(assert (= b_and!26123 (and (=> t!43504 result!23514) b_and!26165)))

(declare-fun t!43506 () Bool)

(declare-fun tb!19511 () Bool)

(assert (=> (and b!308316 (= (toChars!1399 (transformation!781 (h!9459 (t!43304 rules!1920)))) (toChars!1399 (transformation!781 (rule!1394 (ite c!58402 separatorToken!170 call!17914))))) t!43506) tb!19511))

(declare-fun result!23516 () Bool)

(assert (= result!23516 result!23510))

(assert (=> d!94668 t!43506))

(declare-fun b_and!26167 () Bool)

(assert (= b_and!26127 (and (=> t!43506 result!23516) b_and!26167)))

(declare-fun tb!19513 () Bool)

(declare-fun t!43508 () Bool)

(assert (=> (and b!307455 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (toChars!1399 (transformation!781 (rule!1394 (ite c!58402 separatorToken!170 call!17914))))) t!43508) tb!19513))

(declare-fun result!23518 () Bool)

(assert (= result!23518 result!23510))

(assert (=> d!94668 t!43508))

(declare-fun b_and!26169 () Bool)

(assert (= b_and!26121 (and (=> t!43508 result!23518) b_and!26169)))

(declare-fun m!413465 () Bool)

(assert (=> d!94668 m!413465))

(declare-fun m!413469 () Bool)

(assert (=> d!94668 m!413469))

(assert (=> bm!17905 d!94668))

(declare-fun d!94670 () Bool)

(assert (=> d!94670 (= (isEmpty!2779 lt!131146) (not ((_ is Some!927) lt!131146)))))

(assert (=> d!93914 d!94670))

(declare-fun bs!35779 () Bool)

(declare-fun d!94674 () Bool)

(assert (= bs!35779 (and d!94674 d!94518)))

(declare-fun lambda!10559 () Int)

(assert (=> bs!35779 (= (= (toValue!1540 (transformation!781 (rule!1394 separatorToken!170))) (toValue!1540 (transformation!781 (h!9459 rules!1920)))) (= lambda!10559 lambda!10546))))

(assert (=> d!94674 true))

(assert (=> d!94674 (< (dynLambda!2219 order!3297 (toValue!1540 (transformation!781 (rule!1394 separatorToken!170)))) (dynLambda!2229 order!3307 lambda!10559))))

(assert (=> d!94674 (= (equivClasses!276 (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (toValue!1540 (transformation!781 (rule!1394 separatorToken!170)))) (Forall2!160 lambda!10559))))

(declare-fun bs!35780 () Bool)

(assert (= bs!35780 d!94674))

(declare-fun m!413473 () Bool)

(assert (=> bs!35780 m!413473))

(assert (=> b!308253 d!94674))

(declare-fun d!94676 () Bool)

(declare-fun c!58646 () Bool)

(assert (=> d!94676 (= c!58646 ((_ is Node!1384) (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (value!26574 (h!9460 tokens!465))))))))

(declare-fun e!192302 () Bool)

(assert (=> d!94676 (= (inv!5019 (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (value!26574 (h!9460 tokens!465))))) e!192302)))

(declare-fun b!309207 () Bool)

(declare-fun inv!5023 (Conc!1384) Bool)

(assert (=> b!309207 (= e!192302 (inv!5023 (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (value!26574 (h!9460 tokens!465))))))))

(declare-fun b!309208 () Bool)

(declare-fun e!192303 () Bool)

(assert (=> b!309208 (= e!192302 e!192303)))

(declare-fun res!140636 () Bool)

(assert (=> b!309208 (= res!140636 (not ((_ is Leaf!2114) (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (value!26574 (h!9460 tokens!465)))))))))

(assert (=> b!309208 (=> res!140636 e!192303)))

(declare-fun b!309209 () Bool)

(declare-fun inv!5024 (Conc!1384) Bool)

(assert (=> b!309209 (= e!192303 (inv!5024 (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (value!26574 (h!9460 tokens!465))))))))

(assert (= (and d!94676 c!58646) b!309207))

(assert (= (and d!94676 (not c!58646)) b!309208))

(assert (= (and b!309208 (not res!140636)) b!309209))

(declare-fun m!413489 () Bool)

(assert (=> b!309207 m!413489))

(declare-fun m!413491 () Bool)

(assert (=> b!309209 m!413491))

(assert (=> b!307589 d!94676))

(declare-fun d!94688 () Bool)

(assert (=> d!94688 (= (isEmpty!2775 lt!131150) ((_ is Nil!4061) lt!131150))))

(assert (=> d!94144 d!94688))

(declare-fun bm!18002 () Bool)

(declare-fun call!18008 () Bool)

(declare-fun call!18007 () Bool)

(assert (=> bm!18002 (= call!18008 call!18007)))

(declare-fun b!309236 () Bool)

(declare-fun res!140651 () Bool)

(declare-fun e!192324 () Bool)

(assert (=> b!309236 (=> res!140651 e!192324)))

(assert (=> b!309236 (= res!140651 (not ((_ is Concat!1809) (regex!781 (rule!1394 (h!9460 tokens!465))))))))

(declare-fun e!192327 () Bool)

(assert (=> b!309236 (= e!192327 e!192324)))

(declare-fun b!309237 () Bool)

(declare-fun e!192326 () Bool)

(declare-fun e!192325 () Bool)

(assert (=> b!309237 (= e!192326 e!192325)))

(declare-fun res!140653 () Bool)

(assert (=> b!309237 (= res!140653 (not (nullable!196 (reg!1334 (regex!781 (rule!1394 (h!9460 tokens!465)))))))))

(assert (=> b!309237 (=> (not res!140653) (not e!192325))))

(declare-fun b!309238 () Bool)

(declare-fun e!192328 () Bool)

(assert (=> b!309238 (= e!192324 e!192328)))

(declare-fun res!140655 () Bool)

(assert (=> b!309238 (=> (not res!140655) (not e!192328))))

(assert (=> b!309238 (= res!140655 call!18008)))

(declare-fun b!309239 () Bool)

(declare-fun res!140652 () Bool)

(declare-fun e!192323 () Bool)

(assert (=> b!309239 (=> (not res!140652) (not e!192323))))

(declare-fun call!18009 () Bool)

(assert (=> b!309239 (= res!140652 call!18009)))

(assert (=> b!309239 (= e!192327 e!192323)))

(declare-fun b!309240 () Bool)

(assert (=> b!309240 (= e!192325 call!18007)))

(declare-fun d!94690 () Bool)

(declare-fun res!140654 () Bool)

(declare-fun e!192329 () Bool)

(assert (=> d!94690 (=> res!140654 e!192329)))

(assert (=> d!94690 (= res!140654 ((_ is ElementMatch!1005) (regex!781 (rule!1394 (h!9460 tokens!465)))))))

(assert (=> d!94690 (= (validRegex!271 (regex!781 (rule!1394 (h!9460 tokens!465)))) e!192329)))

(declare-fun bm!18003 () Bool)

(declare-fun c!58653 () Bool)

(assert (=> bm!18003 (= call!18009 (validRegex!271 (ite c!58653 (regOne!2523 (regex!781 (rule!1394 (h!9460 tokens!465)))) (regTwo!2522 (regex!781 (rule!1394 (h!9460 tokens!465)))))))))

(declare-fun b!309241 () Bool)

(assert (=> b!309241 (= e!192329 e!192326)))

(declare-fun c!58654 () Bool)

(assert (=> b!309241 (= c!58654 ((_ is Star!1005) (regex!781 (rule!1394 (h!9460 tokens!465)))))))

(declare-fun b!309242 () Bool)

(assert (=> b!309242 (= e!192326 e!192327)))

(assert (=> b!309242 (= c!58653 ((_ is Union!1005) (regex!781 (rule!1394 (h!9460 tokens!465)))))))

(declare-fun b!309243 () Bool)

(assert (=> b!309243 (= e!192328 call!18009)))

(declare-fun bm!18004 () Bool)

(assert (=> bm!18004 (= call!18007 (validRegex!271 (ite c!58654 (reg!1334 (regex!781 (rule!1394 (h!9460 tokens!465)))) (ite c!58653 (regTwo!2523 (regex!781 (rule!1394 (h!9460 tokens!465)))) (regOne!2522 (regex!781 (rule!1394 (h!9460 tokens!465))))))))))

(declare-fun b!309244 () Bool)

(assert (=> b!309244 (= e!192323 call!18008)))

(assert (= (and d!94690 (not res!140654)) b!309241))

(assert (= (and b!309241 c!58654) b!309237))

(assert (= (and b!309241 (not c!58654)) b!309242))

(assert (= (and b!309237 res!140653) b!309240))

(assert (= (and b!309242 c!58653) b!309239))

(assert (= (and b!309242 (not c!58653)) b!309236))

(assert (= (and b!309239 res!140652) b!309244))

(assert (= (and b!309236 (not res!140651)) b!309238))

(assert (= (and b!309238 res!140655) b!309243))

(assert (= (or b!309239 b!309243) bm!18003))

(assert (= (or b!309244 b!309238) bm!18002))

(assert (= (or b!309240 bm!18002) bm!18004))

(declare-fun m!413587 () Bool)

(assert (=> b!309237 m!413587))

(declare-fun m!413593 () Bool)

(assert (=> bm!18003 m!413593))

(declare-fun m!413597 () Bool)

(assert (=> bm!18004 m!413597))

(assert (=> d!94144 d!94690))

(declare-fun d!94702 () Bool)

(assert (=> d!94702 (dynLambda!2225 lambda!10526 (h!9460 tokens!465))))

(declare-fun lt!132058 () Unit!5690)

(assert (=> d!94702 (= lt!132058 (choose!2691 tokens!465 lambda!10526 (h!9460 tokens!465)))))

(declare-fun e!192330 () Bool)

(assert (=> d!94702 e!192330))

(declare-fun res!140656 () Bool)

(assert (=> d!94702 (=> (not res!140656) (not e!192330))))

(assert (=> d!94702 (= res!140656 (forall!1072 tokens!465 lambda!10526))))

(assert (=> d!94702 (= (forallContained!334 tokens!465 lambda!10526 (h!9460 tokens!465)) lt!132058)))

(declare-fun b!309245 () Bool)

(assert (=> b!309245 (= e!192330 (contains!803 tokens!465 (h!9460 tokens!465)))))

(assert (= (and d!94702 res!140656) b!309245))

(declare-fun b_lambda!10757 () Bool)

(assert (=> (not b_lambda!10757) (not d!94702)))

(declare-fun m!413599 () Bool)

(assert (=> d!94702 m!413599))

(declare-fun m!413601 () Bool)

(assert (=> d!94702 m!413601))

(declare-fun m!413603 () Bool)

(assert (=> d!94702 m!413603))

(assert (=> b!309245 m!410685))

(assert (=> b!308157 d!94702))

(declare-fun b!309246 () Bool)

(declare-fun res!140662 () Bool)

(declare-fun e!192331 () Bool)

(assert (=> b!309246 (=> (not res!140662) (not e!192331))))

(declare-fun lt!132060 () Option!928)

(assert (=> b!309246 (= res!140662 (matchR!323 (regex!781 (rule!1394 (_1!2561 (get!1388 lt!132060)))) (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!132060))))))))

(declare-fun b!309247 () Bool)

(assert (=> b!309247 (= e!192331 (contains!804 rules!1920 (rule!1394 (_1!2561 (get!1388 lt!132060)))))))

(declare-fun b!309248 () Bool)

(declare-fun res!140660 () Bool)

(assert (=> b!309248 (=> (not res!140660) (not e!192331))))

(assert (=> b!309248 (= res!140660 (= (++!1102 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!132060)))) (_2!2561 (get!1388 lt!132060))) (++!1102 (list!1713 (charsOf!424 (h!9460 tokens!465))) lt!131567)))))

(declare-fun d!94704 () Bool)

(declare-fun e!192333 () Bool)

(assert (=> d!94704 e!192333))

(declare-fun res!140661 () Bool)

(assert (=> d!94704 (=> res!140661 e!192333)))

(assert (=> d!94704 (= res!140661 (isEmpty!2779 lt!132060))))

(declare-fun e!192332 () Option!928)

(assert (=> d!94704 (= lt!132060 e!192332)))

(declare-fun c!58655 () Bool)

(assert (=> d!94704 (= c!58655 (and ((_ is Cons!4062) rules!1920) ((_ is Nil!4062) (t!43304 rules!1920))))))

(declare-fun lt!132063 () Unit!5690)

(declare-fun lt!132062 () Unit!5690)

(assert (=> d!94704 (= lt!132063 lt!132062)))

(assert (=> d!94704 (isPrefix!441 (++!1102 (list!1713 (charsOf!424 (h!9460 tokens!465))) lt!131567) (++!1102 (list!1713 (charsOf!424 (h!9460 tokens!465))) lt!131567))))

(assert (=> d!94704 (= lt!132062 (lemmaIsPrefixRefl!238 (++!1102 (list!1713 (charsOf!424 (h!9460 tokens!465))) lt!131567) (++!1102 (list!1713 (charsOf!424 (h!9460 tokens!465))) lt!131567)))))

(assert (=> d!94704 (rulesValidInductive!233 thiss!17480 rules!1920)))

(assert (=> d!94704 (= (maxPrefix!383 thiss!17480 rules!1920 (++!1102 (list!1713 (charsOf!424 (h!9460 tokens!465))) lt!131567)) lt!132060)))

(declare-fun call!18010 () Option!928)

(declare-fun bm!18005 () Bool)

(assert (=> bm!18005 (= call!18010 (maxPrefixOneRule!172 thiss!17480 (h!9459 rules!1920) (++!1102 (list!1713 (charsOf!424 (h!9460 tokens!465))) lt!131567)))))

(declare-fun b!309249 () Bool)

(declare-fun res!140657 () Bool)

(assert (=> b!309249 (=> (not res!140657) (not e!192331))))

(assert (=> b!309249 (= res!140657 (< (size!3246 (_2!2561 (get!1388 lt!132060))) (size!3246 (++!1102 (list!1713 (charsOf!424 (h!9460 tokens!465))) lt!131567))))))

(declare-fun b!309250 () Bool)

(assert (=> b!309250 (= e!192332 call!18010)))

(declare-fun b!309251 () Bool)

(assert (=> b!309251 (= e!192333 e!192331)))

(declare-fun res!140659 () Bool)

(assert (=> b!309251 (=> (not res!140659) (not e!192331))))

(assert (=> b!309251 (= res!140659 (isDefined!767 lt!132060))))

(declare-fun b!309252 () Bool)

(declare-fun res!140658 () Bool)

(assert (=> b!309252 (=> (not res!140658) (not e!192331))))

(assert (=> b!309252 (= res!140658 (= (value!26574 (_1!2561 (get!1388 lt!132060))) (apply!891 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!132060)))) (seqFromList!928 (originalCharacters!824 (_1!2561 (get!1388 lt!132060)))))))))

(declare-fun b!309253 () Bool)

(declare-fun res!140663 () Bool)

(assert (=> b!309253 (=> (not res!140663) (not e!192331))))

(assert (=> b!309253 (= res!140663 (= (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!132060)))) (originalCharacters!824 (_1!2561 (get!1388 lt!132060)))))))

(declare-fun b!309254 () Bool)

(declare-fun lt!132061 () Option!928)

(declare-fun lt!132059 () Option!928)

(assert (=> b!309254 (= e!192332 (ite (and ((_ is None!927) lt!132061) ((_ is None!927) lt!132059)) None!927 (ite ((_ is None!927) lt!132059) lt!132061 (ite ((_ is None!927) lt!132061) lt!132059 (ite (>= (size!3243 (_1!2561 (v!14932 lt!132061))) (size!3243 (_1!2561 (v!14932 lt!132059)))) lt!132061 lt!132059)))))))

(assert (=> b!309254 (= lt!132061 call!18010)))

(assert (=> b!309254 (= lt!132059 (maxPrefix!383 thiss!17480 (t!43304 rules!1920) (++!1102 (list!1713 (charsOf!424 (h!9460 tokens!465))) lt!131567)))))

(assert (= (and d!94704 c!58655) b!309250))

(assert (= (and d!94704 (not c!58655)) b!309254))

(assert (= (or b!309250 b!309254) bm!18005))

(assert (= (and d!94704 (not res!140661)) b!309251))

(assert (= (and b!309251 res!140659) b!309253))

(assert (= (and b!309253 res!140663) b!309249))

(assert (= (and b!309249 res!140657) b!309248))

(assert (= (and b!309248 res!140660) b!309252))

(assert (= (and b!309252 res!140658) b!309246))

(assert (= (and b!309246 res!140662) b!309247))

(assert (=> b!309254 m!411503))

(declare-fun m!413617 () Bool)

(assert (=> b!309254 m!413617))

(declare-fun m!413619 () Bool)

(assert (=> b!309248 m!413619))

(declare-fun m!413621 () Bool)

(assert (=> b!309248 m!413621))

(assert (=> b!309248 m!413621))

(declare-fun m!413623 () Bool)

(assert (=> b!309248 m!413623))

(assert (=> b!309248 m!413623))

(declare-fun m!413625 () Bool)

(assert (=> b!309248 m!413625))

(assert (=> b!309253 m!413619))

(assert (=> b!309253 m!413621))

(assert (=> b!309253 m!413621))

(assert (=> b!309253 m!413623))

(assert (=> b!309252 m!413619))

(declare-fun m!413627 () Bool)

(assert (=> b!309252 m!413627))

(assert (=> b!309252 m!413627))

(declare-fun m!413629 () Bool)

(assert (=> b!309252 m!413629))

(assert (=> b!309246 m!413619))

(assert (=> b!309246 m!413621))

(assert (=> b!309246 m!413621))

(assert (=> b!309246 m!413623))

(assert (=> b!309246 m!413623))

(declare-fun m!413631 () Bool)

(assert (=> b!309246 m!413631))

(assert (=> bm!18005 m!411503))

(declare-fun m!413633 () Bool)

(assert (=> bm!18005 m!413633))

(assert (=> b!309247 m!413619))

(declare-fun m!413635 () Bool)

(assert (=> b!309247 m!413635))

(declare-fun m!413637 () Bool)

(assert (=> d!94704 m!413637))

(assert (=> d!94704 m!411503))

(assert (=> d!94704 m!411503))

(declare-fun m!413639 () Bool)

(assert (=> d!94704 m!413639))

(assert (=> d!94704 m!411503))

(assert (=> d!94704 m!411503))

(declare-fun m!413641 () Bool)

(assert (=> d!94704 m!413641))

(assert (=> d!94704 m!410421))

(assert (=> b!309249 m!413619))

(declare-fun m!413643 () Bool)

(assert (=> b!309249 m!413643))

(assert (=> b!309249 m!411503))

(declare-fun m!413645 () Bool)

(assert (=> b!309249 m!413645))

(declare-fun m!413647 () Bool)

(assert (=> b!309251 m!413647))

(assert (=> b!308157 d!94704))

(assert (=> b!308157 d!93992))

(assert (=> b!308157 d!94072))

(assert (=> b!308157 d!94066))

(declare-fun e!192337 () Bool)

(declare-fun b!309262 () Bool)

(declare-fun lt!132064 () List!4071)

(assert (=> b!309262 (= e!192337 (or (not (= lt!131567 Nil!4061)) (= lt!132064 (list!1713 (charsOf!424 (h!9460 tokens!465))))))))

(declare-fun d!94716 () Bool)

(assert (=> d!94716 e!192337))

(declare-fun res!140664 () Bool)

(assert (=> d!94716 (=> (not res!140664) (not e!192337))))

(assert (=> d!94716 (= res!140664 (= (content!606 lt!132064) ((_ map or) (content!606 (list!1713 (charsOf!424 (h!9460 tokens!465)))) (content!606 lt!131567))))))

(declare-fun e!192336 () List!4071)

(assert (=> d!94716 (= lt!132064 e!192336)))

(declare-fun c!58658 () Bool)

(assert (=> d!94716 (= c!58658 ((_ is Nil!4061) (list!1713 (charsOf!424 (h!9460 tokens!465)))))))

(assert (=> d!94716 (= (++!1102 (list!1713 (charsOf!424 (h!9460 tokens!465))) lt!131567) lt!132064)))

(declare-fun b!309261 () Bool)

(declare-fun res!140665 () Bool)

(assert (=> b!309261 (=> (not res!140665) (not e!192337))))

(assert (=> b!309261 (= res!140665 (= (size!3246 lt!132064) (+ (size!3246 (list!1713 (charsOf!424 (h!9460 tokens!465)))) (size!3246 lt!131567))))))

(declare-fun b!309260 () Bool)

(assert (=> b!309260 (= e!192336 (Cons!4061 (h!9458 (list!1713 (charsOf!424 (h!9460 tokens!465)))) (++!1102 (t!43303 (list!1713 (charsOf!424 (h!9460 tokens!465)))) lt!131567)))))

(declare-fun b!309259 () Bool)

(assert (=> b!309259 (= e!192336 lt!131567)))

(assert (= (and d!94716 c!58658) b!309259))

(assert (= (and d!94716 (not c!58658)) b!309260))

(assert (= (and d!94716 res!140664) b!309261))

(assert (= (and b!309261 res!140665) b!309262))

(declare-fun m!413649 () Bool)

(assert (=> d!94716 m!413649))

(assert (=> d!94716 m!410299))

(declare-fun m!413651 () Bool)

(assert (=> d!94716 m!413651))

(declare-fun m!413653 () Bool)

(assert (=> d!94716 m!413653))

(declare-fun m!413655 () Bool)

(assert (=> b!309261 m!413655))

(assert (=> b!309261 m!410299))

(declare-fun m!413657 () Bool)

(assert (=> b!309261 m!413657))

(declare-fun m!413659 () Bool)

(assert (=> b!309261 m!413659))

(declare-fun m!413661 () Bool)

(assert (=> b!309260 m!413661))

(assert (=> b!308157 d!94716))

(declare-fun d!94718 () Bool)

(declare-fun res!140666 () Bool)

(declare-fun e!192338 () Bool)

(assert (=> d!94718 (=> res!140666 e!192338)))

(assert (=> d!94718 (= res!140666 ((_ is Nil!4063) (t!43305 tokens!465)))))

(assert (=> d!94718 (= (forall!1072 (t!43305 tokens!465) lambda!10491) e!192338)))

(declare-fun b!309263 () Bool)

(declare-fun e!192339 () Bool)

(assert (=> b!309263 (= e!192338 e!192339)))

(declare-fun res!140667 () Bool)

(assert (=> b!309263 (=> (not res!140667) (not e!192339))))

(assert (=> b!309263 (= res!140667 (dynLambda!2225 lambda!10491 (h!9460 (t!43305 tokens!465))))))

(declare-fun b!309264 () Bool)

(assert (=> b!309264 (= e!192339 (forall!1072 (t!43305 (t!43305 tokens!465)) lambda!10491))))

(assert (= (and d!94718 (not res!140666)) b!309263))

(assert (= (and b!309263 res!140667) b!309264))

(declare-fun b_lambda!10759 () Bool)

(assert (=> (not b_lambda!10759) (not b!309263)))

(declare-fun m!413663 () Bool)

(assert (=> b!309263 m!413663))

(declare-fun m!413665 () Bool)

(assert (=> b!309264 m!413665))

(assert (=> b!307649 d!94718))

(declare-fun d!94720 () Bool)

(declare-fun e!192340 () Bool)

(assert (=> d!94720 e!192340))

(declare-fun res!140668 () Bool)

(assert (=> d!94720 (=> (not res!140668) (not e!192340))))

(declare-fun lt!132065 () BalanceConc!2776)

(assert (=> d!94720 (= res!140668 (= (list!1713 lt!132065) (originalCharacters!824 (h!9460 tokens!465))))))

(assert (=> d!94720 (= lt!132065 (BalanceConc!2777 (fromList!200 (originalCharacters!824 (h!9460 tokens!465)))))))

(assert (=> d!94720 (= (fromListB!387 (originalCharacters!824 (h!9460 tokens!465))) lt!132065)))

(declare-fun b!309265 () Bool)

(assert (=> b!309265 (= e!192340 (isBalanced!397 (fromList!200 (originalCharacters!824 (h!9460 tokens!465)))))))

(assert (= (and d!94720 res!140668) b!309265))

(declare-fun m!413667 () Bool)

(assert (=> d!94720 m!413667))

(declare-fun m!413669 () Bool)

(assert (=> d!94720 m!413669))

(assert (=> b!309265 m!413669))

(assert (=> b!309265 m!413669))

(declare-fun m!413671 () Bool)

(assert (=> b!309265 m!413671))

(assert (=> d!93962 d!94720))

(declare-fun d!94722 () Bool)

(assert (=> d!94722 (= (get!1388 lt!131185) (v!14932 lt!131185))))

(assert (=> b!307552 d!94722))

(declare-fun d!94724 () Bool)

(declare-fun dynLambda!2231 (Int BalanceConc!2776) TokenValue!803)

(assert (=> d!94724 (= (apply!891 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131185)))) (seqFromList!928 (originalCharacters!824 (_1!2561 (get!1388 lt!131185))))) (dynLambda!2231 (toValue!1540 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131185))))) (seqFromList!928 (originalCharacters!824 (_1!2561 (get!1388 lt!131185))))))))

(declare-fun b_lambda!10761 () Bool)

(assert (=> (not b_lambda!10761) (not d!94724)))

(declare-fun tb!19525 () Bool)

(declare-fun t!43520 () Bool)

(assert (=> (and b!308288 (= (toValue!1540 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))) (toValue!1540 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131185)))))) t!43520) tb!19525))

(declare-fun result!23530 () Bool)

(assert (=> tb!19525 (= result!23530 (inv!21 (dynLambda!2231 (toValue!1540 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131185))))) (seqFromList!928 (originalCharacters!824 (_1!2561 (get!1388 lt!131185)))))))))

(declare-fun m!413673 () Bool)

(assert (=> tb!19525 m!413673))

(assert (=> d!94724 t!43520))

(declare-fun b_and!26181 () Bool)

(assert (= b_and!26033 (and (=> t!43520 result!23530) b_and!26181)))

(declare-fun tb!19527 () Bool)

(declare-fun t!43522 () Bool)

(assert (=> (and b!307440 (= (toValue!1540 (transformation!781 (rule!1394 separatorToken!170))) (toValue!1540 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131185)))))) t!43522) tb!19527))

(declare-fun result!23534 () Bool)

(assert (= result!23534 result!23530))

(assert (=> d!94724 t!43522))

(declare-fun b_and!26183 () Bool)

(assert (= b_and!25965 (and (=> t!43522 result!23534) b_and!26183)))

(declare-fun tb!19529 () Bool)

(declare-fun t!43524 () Bool)

(assert (=> (and b!307455 (= (toValue!1540 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (toValue!1540 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131185)))))) t!43524) tb!19529))

(declare-fun result!23536 () Bool)

(assert (= result!23536 result!23530))

(assert (=> d!94724 t!43524))

(declare-fun b_and!26185 () Bool)

(assert (= b_and!25973 (and (=> t!43524 result!23536) b_and!26185)))

(declare-fun tb!19531 () Bool)

(declare-fun t!43526 () Bool)

(assert (=> (and b!307444 (= (toValue!1540 (transformation!781 (h!9459 rules!1920))) (toValue!1540 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131185)))))) t!43526) tb!19531))

(declare-fun result!23538 () Bool)

(assert (= result!23538 result!23530))

(assert (=> d!94724 t!43526))

(declare-fun b_and!26187 () Bool)

(assert (= b_and!25969 (and (=> t!43526 result!23538) b_and!26187)))

(declare-fun tb!19533 () Bool)

(declare-fun t!43528 () Bool)

(assert (=> (and b!308316 (= (toValue!1540 (transformation!781 (h!9459 (t!43304 rules!1920)))) (toValue!1540 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131185)))))) t!43528) tb!19533))

(declare-fun result!23540 () Bool)

(assert (= result!23540 result!23530))

(assert (=> d!94724 t!43528))

(declare-fun b_and!26189 () Bool)

(assert (= b_and!26037 (and (=> t!43528 result!23540) b_and!26189)))

(assert (=> d!94724 m!410405))

(declare-fun m!413675 () Bool)

(assert (=> d!94724 m!413675))

(assert (=> b!307552 d!94724))

(declare-fun d!94726 () Bool)

(assert (=> d!94726 (= (seqFromList!928 (originalCharacters!824 (_1!2561 (get!1388 lt!131185)))) (fromListB!387 (originalCharacters!824 (_1!2561 (get!1388 lt!131185)))))))

(declare-fun bs!35790 () Bool)

(assert (= bs!35790 d!94726))

(declare-fun m!413677 () Bool)

(assert (=> bs!35790 m!413677))

(assert (=> b!307552 d!94726))

(declare-fun b!309271 () Bool)

(declare-fun e!192345 () Bool)

(declare-fun lt!132066 () List!4071)

(assert (=> b!309271 (= e!192345 (or (not (= (_2!2561 (get!1388 lt!131190)) Nil!4061)) (= lt!132066 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131190)))))))))

(declare-fun d!94728 () Bool)

(assert (=> d!94728 e!192345))

(declare-fun res!140669 () Bool)

(assert (=> d!94728 (=> (not res!140669) (not e!192345))))

(assert (=> d!94728 (= res!140669 (= (content!606 lt!132066) ((_ map or) (content!606 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131190))))) (content!606 (_2!2561 (get!1388 lt!131190))))))))

(declare-fun e!192344 () List!4071)

(assert (=> d!94728 (= lt!132066 e!192344)))

(declare-fun c!58659 () Bool)

(assert (=> d!94728 (= c!58659 ((_ is Nil!4061) (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131190))))))))

(assert (=> d!94728 (= (++!1102 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131190)))) (_2!2561 (get!1388 lt!131190))) lt!132066)))

(declare-fun b!309270 () Bool)

(declare-fun res!140670 () Bool)

(assert (=> b!309270 (=> (not res!140670) (not e!192345))))

(assert (=> b!309270 (= res!140670 (= (size!3246 lt!132066) (+ (size!3246 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131190))))) (size!3246 (_2!2561 (get!1388 lt!131190))))))))

(declare-fun b!309269 () Bool)

(assert (=> b!309269 (= e!192344 (Cons!4061 (h!9458 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131190))))) (++!1102 (t!43303 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131190))))) (_2!2561 (get!1388 lt!131190)))))))

(declare-fun b!309268 () Bool)

(assert (=> b!309268 (= e!192344 (_2!2561 (get!1388 lt!131190)))))

(assert (= (and d!94728 c!58659) b!309268))

(assert (= (and d!94728 (not c!58659)) b!309269))

(assert (= (and d!94728 res!140669) b!309270))

(assert (= (and b!309270 res!140670) b!309271))

(declare-fun m!413679 () Bool)

(assert (=> d!94728 m!413679))

(assert (=> d!94728 m!410437))

(declare-fun m!413681 () Bool)

(assert (=> d!94728 m!413681))

(declare-fun m!413683 () Bool)

(assert (=> d!94728 m!413683))

(declare-fun m!413685 () Bool)

(assert (=> b!309270 m!413685))

(assert (=> b!309270 m!410437))

(declare-fun m!413687 () Bool)

(assert (=> b!309270 m!413687))

(assert (=> b!309270 m!410457))

(declare-fun m!413689 () Bool)

(assert (=> b!309269 m!413689))

(assert (=> b!307557 d!94728))

(declare-fun d!94730 () Bool)

(assert (=> d!94730 (= (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131190)))) (list!1717 (c!58276 (charsOf!424 (_1!2561 (get!1388 lt!131190))))))))

(declare-fun bs!35791 () Bool)

(assert (= bs!35791 d!94730))

(declare-fun m!413691 () Bool)

(assert (=> bs!35791 m!413691))

(assert (=> b!307557 d!94730))

(declare-fun d!94732 () Bool)

(declare-fun lt!132067 () BalanceConc!2776)

(assert (=> d!94732 (= (list!1713 lt!132067) (originalCharacters!824 (_1!2561 (get!1388 lt!131190))))))

(assert (=> d!94732 (= lt!132067 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131190))))) (value!26574 (_1!2561 (get!1388 lt!131190)))))))

(assert (=> d!94732 (= (charsOf!424 (_1!2561 (get!1388 lt!131190))) lt!132067)))

(declare-fun b_lambda!10763 () Bool)

(assert (=> (not b_lambda!10763) (not d!94732)))

(declare-fun tb!19535 () Bool)

(declare-fun t!43530 () Bool)

(assert (=> (and b!307444 (= (toChars!1399 (transformation!781 (h!9459 rules!1920))) (toChars!1399 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131190)))))) t!43530) tb!19535))

(declare-fun b!309272 () Bool)

(declare-fun e!192346 () Bool)

(declare-fun tp!109101 () Bool)

(assert (=> b!309272 (= e!192346 (and (inv!5019 (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131190))))) (value!26574 (_1!2561 (get!1388 lt!131190)))))) tp!109101))))

(declare-fun result!23542 () Bool)

(assert (=> tb!19535 (= result!23542 (and (inv!5020 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131190))))) (value!26574 (_1!2561 (get!1388 lt!131190))))) e!192346))))

(assert (= tb!19535 b!309272))

(declare-fun m!413693 () Bool)

(assert (=> b!309272 m!413693))

(declare-fun m!413695 () Bool)

(assert (=> tb!19535 m!413695))

(assert (=> d!94732 t!43530))

(declare-fun b_and!26191 () Bool)

(assert (= b_and!26163 (and (=> t!43530 result!23542) b_and!26191)))

(declare-fun t!43532 () Bool)

(declare-fun tb!19537 () Bool)

(assert (=> (and b!308288 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))) (toChars!1399 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131190)))))) t!43532) tb!19537))

(declare-fun result!23544 () Bool)

(assert (= result!23544 result!23542))

(assert (=> d!94732 t!43532))

(declare-fun b_and!26193 () Bool)

(assert (= b_and!26161 (and (=> t!43532 result!23544) b_and!26193)))

(declare-fun tb!19539 () Bool)

(declare-fun t!43534 () Bool)

(assert (=> (and b!307440 (= (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (toChars!1399 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131190)))))) t!43534) tb!19539))

(declare-fun result!23546 () Bool)

(assert (= result!23546 result!23542))

(assert (=> d!94732 t!43534))

(declare-fun b_and!26195 () Bool)

(assert (= b_and!26165 (and (=> t!43534 result!23546) b_and!26195)))

(declare-fun t!43536 () Bool)

(declare-fun tb!19541 () Bool)

(assert (=> (and b!307455 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (toChars!1399 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131190)))))) t!43536) tb!19541))

(declare-fun result!23548 () Bool)

(assert (= result!23548 result!23542))

(assert (=> d!94732 t!43536))

(declare-fun b_and!26197 () Bool)

(assert (= b_and!26169 (and (=> t!43536 result!23548) b_and!26197)))

(declare-fun tb!19543 () Bool)

(declare-fun t!43538 () Bool)

(assert (=> (and b!308316 (= (toChars!1399 (transformation!781 (h!9459 (t!43304 rules!1920)))) (toChars!1399 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131190)))))) t!43538) tb!19543))

(declare-fun result!23550 () Bool)

(assert (= result!23550 result!23542))

(assert (=> d!94732 t!43538))

(declare-fun b_and!26199 () Bool)

(assert (= b_and!26167 (and (=> t!43538 result!23550) b_and!26199)))

(declare-fun m!413697 () Bool)

(assert (=> d!94732 m!413697))

(declare-fun m!413699 () Bool)

(assert (=> d!94732 m!413699))

(assert (=> b!307557 d!94732))

(declare-fun d!94734 () Bool)

(assert (=> d!94734 (= (get!1388 lt!131190) (v!14932 lt!131190))))

(assert (=> b!307557 d!94734))

(declare-fun d!94736 () Bool)

(declare-fun charsToInt!0 (List!4070) (_ BitVec 32))

(assert (=> d!94736 (= (inv!16 (value!26574 (h!9460 tokens!465))) (= (charsToInt!0 (text!6068 (value!26574 (h!9460 tokens!465)))) (value!26565 (value!26574 (h!9460 tokens!465)))))))

(declare-fun bs!35792 () Bool)

(assert (= bs!35792 d!94736))

(declare-fun m!413701 () Bool)

(assert (=> bs!35792 m!413701))

(assert (=> b!307668 d!94736))

(declare-fun d!94738 () Bool)

(assert (=> d!94738 (= (isDefined!767 lt!131530) (not (isEmpty!2779 lt!131530)))))

(declare-fun bs!35793 () Bool)

(assert (= bs!35793 d!94738))

(assert (=> bs!35793 m!411329))

(assert (=> b!308065 d!94738))

(assert (=> d!94070 d!93984))

(assert (=> d!94070 d!93990))

(declare-fun d!94740 () Bool)

(assert (=> d!94740 (= (++!1102 (++!1102 lt!131150 lt!131164) lt!131151) (++!1102 lt!131150 (++!1102 lt!131164 lt!131151)))))

(assert (=> d!94740 true))

(declare-fun _$52!787 () Unit!5690)

(assert (=> d!94740 (= (choose!2693 lt!131150 lt!131164 lt!131151) _$52!787)))

(declare-fun bs!35794 () Bool)

(assert (= bs!35794 d!94740))

(assert (=> bs!35794 m!410279))

(assert (=> bs!35794 m!410279))

(assert (=> bs!35794 m!410283))

(assert (=> bs!35794 m!410289))

(assert (=> bs!35794 m!410289))

(assert (=> bs!35794 m!411261))

(assert (=> d!94070 d!94740))

(declare-fun e!192348 () Bool)

(declare-fun lt!132068 () List!4071)

(declare-fun b!309276 () Bool)

(assert (=> b!309276 (= e!192348 (or (not (= (++!1102 lt!131164 lt!131151) Nil!4061)) (= lt!132068 lt!131150)))))

(declare-fun d!94742 () Bool)

(assert (=> d!94742 e!192348))

(declare-fun res!140671 () Bool)

(assert (=> d!94742 (=> (not res!140671) (not e!192348))))

(assert (=> d!94742 (= res!140671 (= (content!606 lt!132068) ((_ map or) (content!606 lt!131150) (content!606 (++!1102 lt!131164 lt!131151)))))))

(declare-fun e!192347 () List!4071)

(assert (=> d!94742 (= lt!132068 e!192347)))

(declare-fun c!58660 () Bool)

(assert (=> d!94742 (= c!58660 ((_ is Nil!4061) lt!131150))))

(assert (=> d!94742 (= (++!1102 lt!131150 (++!1102 lt!131164 lt!131151)) lt!132068)))

(declare-fun b!309275 () Bool)

(declare-fun res!140672 () Bool)

(assert (=> b!309275 (=> (not res!140672) (not e!192348))))

(assert (=> b!309275 (= res!140672 (= (size!3246 lt!132068) (+ (size!3246 lt!131150) (size!3246 (++!1102 lt!131164 lt!131151)))))))

(declare-fun b!309274 () Bool)

(assert (=> b!309274 (= e!192347 (Cons!4061 (h!9458 lt!131150) (++!1102 (t!43303 lt!131150) (++!1102 lt!131164 lt!131151))))))

(declare-fun b!309273 () Bool)

(assert (=> b!309273 (= e!192347 (++!1102 lt!131164 lt!131151))))

(assert (= (and d!94742 c!58660) b!309273))

(assert (= (and d!94742 (not c!58660)) b!309274))

(assert (= (and d!94742 res!140671) b!309275))

(assert (= (and b!309275 res!140672) b!309276))

(declare-fun m!413703 () Bool)

(assert (=> d!94742 m!413703))

(assert (=> d!94742 m!410689))

(assert (=> d!94742 m!410289))

(declare-fun m!413705 () Bool)

(assert (=> d!94742 m!413705))

(declare-fun m!413707 () Bool)

(assert (=> b!309275 m!413707))

(assert (=> b!309275 m!410425))

(assert (=> b!309275 m!410289))

(declare-fun m!413709 () Bool)

(assert (=> b!309275 m!413709))

(assert (=> b!309274 m!410289))

(declare-fun m!413711 () Bool)

(assert (=> b!309274 m!413711))

(assert (=> d!94070 d!94742))

(assert (=> d!94070 d!94074))

(declare-fun d!94744 () Bool)

(assert (=> d!94744 (= (inv!5020 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (value!26574 (h!9460 tokens!465)))) (isBalanced!397 (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (value!26574 (h!9460 tokens!465))))))))

(declare-fun bs!35795 () Bool)

(assert (= bs!35795 d!94744))

(declare-fun m!413713 () Bool)

(assert (=> bs!35795 m!413713))

(assert (=> tb!19351 d!94744))

(declare-fun e!192350 () Bool)

(declare-fun b!309280 () Bool)

(declare-fun lt!132069 () List!4071)

(assert (=> b!309280 (= e!192350 (or (not (= lt!131151 Nil!4061)) (= lt!132069 (t!43303 lt!131164))))))

(declare-fun d!94746 () Bool)

(assert (=> d!94746 e!192350))

(declare-fun res!140673 () Bool)

(assert (=> d!94746 (=> (not res!140673) (not e!192350))))

(assert (=> d!94746 (= res!140673 (= (content!606 lt!132069) ((_ map or) (content!606 (t!43303 lt!131164)) (content!606 lt!131151))))))

(declare-fun e!192349 () List!4071)

(assert (=> d!94746 (= lt!132069 e!192349)))

(declare-fun c!58661 () Bool)

(assert (=> d!94746 (= c!58661 ((_ is Nil!4061) (t!43303 lt!131164)))))

(assert (=> d!94746 (= (++!1102 (t!43303 lt!131164) lt!131151) lt!132069)))

(declare-fun b!309279 () Bool)

(declare-fun res!140674 () Bool)

(assert (=> b!309279 (=> (not res!140674) (not e!192350))))

(assert (=> b!309279 (= res!140674 (= (size!3246 lt!132069) (+ (size!3246 (t!43303 lt!131164)) (size!3246 lt!131151))))))

(declare-fun b!309278 () Bool)

(assert (=> b!309278 (= e!192349 (Cons!4061 (h!9458 (t!43303 lt!131164)) (++!1102 (t!43303 (t!43303 lt!131164)) lt!131151)))))

(declare-fun b!309277 () Bool)

(assert (=> b!309277 (= e!192349 lt!131151)))

(assert (= (and d!94746 c!58661) b!309277))

(assert (= (and d!94746 (not c!58661)) b!309278))

(assert (= (and d!94746 res!140673) b!309279))

(assert (= (and b!309279 res!140674) b!309280))

(declare-fun m!413715 () Bool)

(assert (=> d!94746 m!413715))

(assert (=> d!94746 m!413015))

(assert (=> d!94746 m!410691))

(declare-fun m!413717 () Bool)

(assert (=> b!309279 m!413717))

(declare-fun m!413719 () Bool)

(assert (=> b!309279 m!413719))

(assert (=> b!309279 m!410695))

(declare-fun m!413721 () Bool)

(assert (=> b!309278 m!413721))

(assert (=> b!307771 d!94746))

(declare-fun b!309282 () Bool)

(declare-fun e!192351 () List!4071)

(declare-fun e!192352 () List!4071)

(assert (=> b!309282 (= e!192351 e!192352)))

(declare-fun c!58663 () Bool)

(assert (=> b!309282 (= c!58663 ((_ is Leaf!2114) (c!58276 (charsOf!424 (h!9460 tokens!465)))))))

(declare-fun b!309283 () Bool)

(assert (=> b!309283 (= e!192352 (list!1721 (xs!3987 (c!58276 (charsOf!424 (h!9460 tokens!465))))))))

(declare-fun b!309284 () Bool)

(assert (=> b!309284 (= e!192352 (++!1102 (list!1717 (left!3377 (c!58276 (charsOf!424 (h!9460 tokens!465))))) (list!1717 (right!3707 (c!58276 (charsOf!424 (h!9460 tokens!465)))))))))

(declare-fun d!94748 () Bool)

(declare-fun c!58662 () Bool)

(assert (=> d!94748 (= c!58662 ((_ is Empty!1384) (c!58276 (charsOf!424 (h!9460 tokens!465)))))))

(assert (=> d!94748 (= (list!1717 (c!58276 (charsOf!424 (h!9460 tokens!465)))) e!192351)))

(declare-fun b!309281 () Bool)

(assert (=> b!309281 (= e!192351 Nil!4061)))

(assert (= (and d!94748 c!58662) b!309281))

(assert (= (and d!94748 (not c!58662)) b!309282))

(assert (= (and b!309282 c!58663) b!309283))

(assert (= (and b!309282 (not c!58663)) b!309284))

(declare-fun m!413723 () Bool)

(assert (=> b!309283 m!413723))

(declare-fun m!413725 () Bool)

(assert (=> b!309284 m!413725))

(declare-fun m!413727 () Bool)

(assert (=> b!309284 m!413727))

(assert (=> b!309284 m!413725))

(assert (=> b!309284 m!413727))

(declare-fun m!413729 () Bool)

(assert (=> b!309284 m!413729))

(assert (=> d!94072 d!94748))

(declare-fun d!94750 () Bool)

(declare-fun lt!132072 () Int)

(assert (=> d!94750 (>= lt!132072 0)))

(declare-fun e!192355 () Int)

(assert (=> d!94750 (= lt!132072 e!192355)))

(declare-fun c!58666 () Bool)

(assert (=> d!94750 (= c!58666 ((_ is Nil!4061) lt!131291))))

(assert (=> d!94750 (= (size!3246 lt!131291) lt!132072)))

(declare-fun b!309289 () Bool)

(assert (=> b!309289 (= e!192355 0)))

(declare-fun b!309290 () Bool)

(assert (=> b!309290 (= e!192355 (+ 1 (size!3246 (t!43303 lt!131291))))))

(assert (= (and d!94750 c!58666) b!309289))

(assert (= (and d!94750 (not c!58666)) b!309290))

(declare-fun m!413731 () Bool)

(assert (=> b!309290 m!413731))

(assert (=> b!307737 d!94750))

(declare-fun d!94752 () Bool)

(declare-fun lt!132073 () Int)

(assert (=> d!94752 (>= lt!132073 0)))

(declare-fun e!192356 () Int)

(assert (=> d!94752 (= lt!132073 e!192356)))

(declare-fun c!58667 () Bool)

(assert (=> d!94752 (= c!58667 ((_ is Nil!4061) lt!131150))))

(assert (=> d!94752 (= (size!3246 lt!131150) lt!132073)))

(declare-fun b!309291 () Bool)

(assert (=> b!309291 (= e!192356 0)))

(declare-fun b!309292 () Bool)

(assert (=> b!309292 (= e!192356 (+ 1 (size!3246 (t!43303 lt!131150))))))

(assert (= (and d!94752 c!58667) b!309291))

(assert (= (and d!94752 (not c!58667)) b!309292))

(declare-fun m!413733 () Bool)

(assert (=> b!309292 m!413733))

(assert (=> b!307737 d!94752))

(declare-fun d!94754 () Bool)

(declare-fun lt!132074 () Int)

(assert (=> d!94754 (>= lt!132074 0)))

(declare-fun e!192357 () Int)

(assert (=> d!94754 (= lt!132074 e!192357)))

(declare-fun c!58668 () Bool)

(assert (=> d!94754 (= c!58668 ((_ is Nil!4061) lt!131151))))

(assert (=> d!94754 (= (size!3246 lt!131151) lt!132074)))

(declare-fun b!309293 () Bool)

(assert (=> b!309293 (= e!192357 0)))

(declare-fun b!309294 () Bool)

(assert (=> b!309294 (= e!192357 (+ 1 (size!3246 (t!43303 lt!131151))))))

(assert (= (and d!94754 c!58668) b!309293))

(assert (= (and d!94754 (not c!58668)) b!309294))

(declare-fun m!413735 () Bool)

(assert (=> b!309294 m!413735))

(assert (=> b!307737 d!94754))

(declare-fun d!94756 () Bool)

(declare-fun lt!132075 () Bool)

(assert (=> d!94756 (= lt!132075 (select (content!608 (t!43305 tokens!465)) (head!966 (t!43305 tokens!465))))))

(declare-fun e!192359 () Bool)

(assert (=> d!94756 (= lt!132075 e!192359)))

(declare-fun res!140676 () Bool)

(assert (=> d!94756 (=> (not res!140676) (not e!192359))))

(assert (=> d!94756 (= res!140676 ((_ is Cons!4063) (t!43305 tokens!465)))))

(assert (=> d!94756 (= (contains!803 (t!43305 tokens!465) (head!966 (t!43305 tokens!465))) lt!132075)))

(declare-fun b!309295 () Bool)

(declare-fun e!192358 () Bool)

(assert (=> b!309295 (= e!192359 e!192358)))

(declare-fun res!140675 () Bool)

(assert (=> b!309295 (=> res!140675 e!192358)))

(assert (=> b!309295 (= res!140675 (= (h!9460 (t!43305 tokens!465)) (head!966 (t!43305 tokens!465))))))

(declare-fun b!309296 () Bool)

(assert (=> b!309296 (= e!192358 (contains!803 (t!43305 (t!43305 tokens!465)) (head!966 (t!43305 tokens!465))))))

(assert (= (and d!94756 res!140676) b!309295))

(assert (= (and b!309295 (not res!140675)) b!309296))

(assert (=> d!94756 m!412205))

(assert (=> d!94756 m!410313))

(declare-fun m!413737 () Bool)

(assert (=> d!94756 m!413737))

(assert (=> b!309296 m!410313))

(declare-fun m!413739 () Bool)

(assert (=> b!309296 m!413739))

(assert (=> b!308051 d!94756))

(declare-fun d!94758 () Bool)

(assert (=> d!94758 (= (isDefined!767 lt!131190) (not (isEmpty!2779 lt!131190)))))

(declare-fun bs!35796 () Bool)

(assert (= bs!35796 d!94758))

(assert (=> bs!35796 m!410451))

(assert (=> b!307560 d!94758))

(declare-fun b!309300 () Bool)

(declare-fun e!192361 () Bool)

(declare-fun lt!132076 () List!4071)

(assert (=> b!309300 (= e!192361 (or (not (= (_2!2561 (get!1388 lt!131530)) Nil!4061)) (= lt!132076 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131530)))))))))

(declare-fun d!94760 () Bool)

(assert (=> d!94760 e!192361))

(declare-fun res!140677 () Bool)

(assert (=> d!94760 (=> (not res!140677) (not e!192361))))

(assert (=> d!94760 (= res!140677 (= (content!606 lt!132076) ((_ map or) (content!606 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131530))))) (content!606 (_2!2561 (get!1388 lt!131530))))))))

(declare-fun e!192360 () List!4071)

(assert (=> d!94760 (= lt!132076 e!192360)))

(declare-fun c!58669 () Bool)

(assert (=> d!94760 (= c!58669 ((_ is Nil!4061) (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131530))))))))

(assert (=> d!94760 (= (++!1102 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131530)))) (_2!2561 (get!1388 lt!131530))) lt!132076)))

(declare-fun b!309299 () Bool)

(declare-fun res!140678 () Bool)

(assert (=> b!309299 (=> (not res!140678) (not e!192361))))

(assert (=> b!309299 (= res!140678 (= (size!3246 lt!132076) (+ (size!3246 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131530))))) (size!3246 (_2!2561 (get!1388 lt!131530))))))))

(declare-fun b!309298 () Bool)

(assert (=> b!309298 (= e!192360 (Cons!4061 (h!9458 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131530))))) (++!1102 (t!43303 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131530))))) (_2!2561 (get!1388 lt!131530)))))))

(declare-fun b!309297 () Bool)

(assert (=> b!309297 (= e!192360 (_2!2561 (get!1388 lt!131530)))))

(assert (= (and d!94760 c!58669) b!309297))

(assert (= (and d!94760 (not c!58669)) b!309298))

(assert (= (and d!94760 res!140677) b!309299))

(assert (= (and b!309299 res!140678) b!309300))

(declare-fun m!413741 () Bool)

(assert (=> d!94760 m!413741))

(assert (=> d!94760 m!411315))

(declare-fun m!413743 () Bool)

(assert (=> d!94760 m!413743))

(declare-fun m!413745 () Bool)

(assert (=> d!94760 m!413745))

(declare-fun m!413747 () Bool)

(assert (=> b!309299 m!413747))

(assert (=> b!309299 m!411315))

(declare-fun m!413749 () Bool)

(assert (=> b!309299 m!413749))

(assert (=> b!309299 m!411335))

(declare-fun m!413751 () Bool)

(assert (=> b!309298 m!413751))

(assert (=> b!308062 d!94760))

(declare-fun d!94762 () Bool)

(assert (=> d!94762 (= (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131530)))) (list!1717 (c!58276 (charsOf!424 (_1!2561 (get!1388 lt!131530))))))))

(declare-fun bs!35797 () Bool)

(assert (= bs!35797 d!94762))

(declare-fun m!413753 () Bool)

(assert (=> bs!35797 m!413753))

(assert (=> b!308062 d!94762))

(declare-fun d!94764 () Bool)

(declare-fun lt!132077 () BalanceConc!2776)

(assert (=> d!94764 (= (list!1713 lt!132077) (originalCharacters!824 (_1!2561 (get!1388 lt!131530))))))

(assert (=> d!94764 (= lt!132077 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131530))))) (value!26574 (_1!2561 (get!1388 lt!131530)))))))

(assert (=> d!94764 (= (charsOf!424 (_1!2561 (get!1388 lt!131530))) lt!132077)))

(declare-fun b_lambda!10765 () Bool)

(assert (=> (not b_lambda!10765) (not d!94764)))

(declare-fun tb!19545 () Bool)

(declare-fun t!43540 () Bool)

(assert (=> (and b!307444 (= (toChars!1399 (transformation!781 (h!9459 rules!1920))) (toChars!1399 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131530)))))) t!43540) tb!19545))

(declare-fun b!309301 () Bool)

(declare-fun e!192362 () Bool)

(declare-fun tp!109102 () Bool)

(assert (=> b!309301 (= e!192362 (and (inv!5019 (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131530))))) (value!26574 (_1!2561 (get!1388 lt!131530)))))) tp!109102))))

(declare-fun result!23552 () Bool)

(assert (=> tb!19545 (= result!23552 (and (inv!5020 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131530))))) (value!26574 (_1!2561 (get!1388 lt!131530))))) e!192362))))

(assert (= tb!19545 b!309301))

(declare-fun m!413755 () Bool)

(assert (=> b!309301 m!413755))

(declare-fun m!413757 () Bool)

(assert (=> tb!19545 m!413757))

(assert (=> d!94764 t!43540))

(declare-fun b_and!26201 () Bool)

(assert (= b_and!26191 (and (=> t!43540 result!23552) b_and!26201)))

(declare-fun t!43542 () Bool)

(declare-fun tb!19547 () Bool)

(assert (=> (and b!308316 (= (toChars!1399 (transformation!781 (h!9459 (t!43304 rules!1920)))) (toChars!1399 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131530)))))) t!43542) tb!19547))

(declare-fun result!23554 () Bool)

(assert (= result!23554 result!23552))

(assert (=> d!94764 t!43542))

(declare-fun b_and!26203 () Bool)

(assert (= b_and!26199 (and (=> t!43542 result!23554) b_and!26203)))

(declare-fun tb!19549 () Bool)

(declare-fun t!43544 () Bool)

(assert (=> (and b!307455 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (toChars!1399 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131530)))))) t!43544) tb!19549))

(declare-fun result!23556 () Bool)

(assert (= result!23556 result!23552))

(assert (=> d!94764 t!43544))

(declare-fun b_and!26205 () Bool)

(assert (= b_and!26197 (and (=> t!43544 result!23556) b_and!26205)))

(declare-fun tb!19551 () Bool)

(declare-fun t!43546 () Bool)

(assert (=> (and b!307440 (= (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (toChars!1399 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131530)))))) t!43546) tb!19551))

(declare-fun result!23558 () Bool)

(assert (= result!23558 result!23552))

(assert (=> d!94764 t!43546))

(declare-fun b_and!26207 () Bool)

(assert (= b_and!26195 (and (=> t!43546 result!23558) b_and!26207)))

(declare-fun t!43548 () Bool)

(declare-fun tb!19553 () Bool)

(assert (=> (and b!308288 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))) (toChars!1399 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131530)))))) t!43548) tb!19553))

(declare-fun result!23560 () Bool)

(assert (= result!23560 result!23552))

(assert (=> d!94764 t!43548))

(declare-fun b_and!26209 () Bool)

(assert (= b_and!26193 (and (=> t!43548 result!23560) b_and!26209)))

(declare-fun m!413759 () Bool)

(assert (=> d!94764 m!413759))

(declare-fun m!413761 () Bool)

(assert (=> d!94764 m!413761))

(assert (=> b!308062 d!94764))

(declare-fun d!94766 () Bool)

(assert (=> d!94766 (= (get!1388 lt!131530) (v!14932 lt!131530))))

(assert (=> b!308062 d!94766))

(declare-fun d!94768 () Bool)

(assert (=> d!94768 (= (isEmpty!2784 (maxPrefixZipperSequence!346 thiss!17480 rules!1920 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465))))) (not ((_ is Some!928) (maxPrefixZipperSequence!346 thiss!17480 rules!1920 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465)))))))))

(assert (=> d!93950 d!94768))

(declare-fun d!94770 () Bool)

(declare-fun lt!132078 () Int)

(assert (=> d!94770 (>= lt!132078 0)))

(declare-fun e!192363 () Int)

(assert (=> d!94770 (= lt!132078 e!192363)))

(declare-fun c!58670 () Bool)

(assert (=> d!94770 (= c!58670 ((_ is Nil!4061) lt!131162))))

(assert (=> d!94770 (= (size!3246 lt!131162) lt!132078)))

(declare-fun b!309302 () Bool)

(assert (=> b!309302 (= e!192363 0)))

(declare-fun b!309303 () Bool)

(assert (=> b!309303 (= e!192363 (+ 1 (size!3246 (t!43303 lt!131162))))))

(assert (= (and d!94770 c!58670) b!309302))

(assert (= (and d!94770 (not c!58670)) b!309303))

(declare-fun m!413763 () Bool)

(assert (=> b!309303 m!413763))

(assert (=> b!308084 d!94770))

(assert (=> b!308084 d!94752))

(declare-fun b!309328 () Bool)

(declare-fun e!192376 () Unit!5690)

(declare-fun Unit!5716 () Unit!5690)

(assert (=> b!309328 (= e!192376 Unit!5716)))

(declare-fun lt!132159 () List!4071)

(assert (=> b!309328 (= lt!132159 (++!1102 (list!1713 call!17920) (list!1713 lt!131563)))))

(declare-fun lt!132163 () Unit!5690)

(declare-fun lt!132168 () Token!1306)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!68 (LexerInterface!667 Rule!1362 List!4072 List!4071) Unit!5690)

(assert (=> b!309328 (= lt!132163 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!68 thiss!17480 (rule!1394 lt!132168) rules!1920 lt!132159))))

(assert (=> b!309328 (isEmpty!2779 (maxPrefixOneRule!172 thiss!17480 (rule!1394 lt!132168) lt!132159))))

(declare-fun lt!132171 () Unit!5690)

(assert (=> b!309328 (= lt!132171 lt!132163)))

(declare-fun lt!132166 () List!4071)

(assert (=> b!309328 (= lt!132166 (list!1713 (charsOf!424 lt!132168)))))

(declare-fun lt!132169 () Unit!5690)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!68 (LexerInterface!667 Rule!1362 List!4071 List!4071) Unit!5690)

(assert (=> b!309328 (= lt!132169 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!68 thiss!17480 (rule!1394 lt!132168) lt!132166 (++!1102 (list!1713 call!17920) (list!1713 lt!131563))))))

(assert (=> b!309328 (not (matchR!323 (regex!781 (rule!1394 lt!132168)) lt!132166))))

(declare-fun lt!132167 () Unit!5690)

(assert (=> b!309328 (= lt!132167 lt!132169)))

(assert (=> b!309328 false))

(declare-fun e!192377 () Bool)

(declare-fun b!309327 () Bool)

(declare-datatypes ((Option!931 0))(
  ( (None!930) (Some!930 (v!14945 Rule!1362)) )
))
(declare-fun get!1392 (Option!931) Rule!1362)

(declare-fun getRuleFromTag!144 (LexerInterface!667 List!4072 String!5095) Option!931)

(assert (=> b!309327 (= e!192377 (= (rule!1394 lt!132168) (get!1392 (getRuleFromTag!144 thiss!17480 rules!1920 (tag!999 (rule!1394 lt!132168))))))))

(declare-fun b!309326 () Bool)

(declare-fun res!140687 () Bool)

(assert (=> b!309326 (=> (not res!140687) (not e!192377))))

(assert (=> b!309326 (= res!140687 (matchR!323 (regex!781 (get!1392 (getRuleFromTag!144 thiss!17480 rules!1920 (tag!999 (rule!1394 lt!132168))))) (list!1713 (charsOf!424 lt!132168))))))

(declare-fun d!94772 () Bool)

(assert (=> d!94772 (isDefined!767 (maxPrefix!383 thiss!17480 rules!1920 (++!1102 (list!1713 call!17920) (list!1713 lt!131563))))))

(declare-fun lt!132160 () Unit!5690)

(assert (=> d!94772 (= lt!132160 e!192376)))

(declare-fun c!58678 () Bool)

(assert (=> d!94772 (= c!58678 (isEmpty!2779 (maxPrefix!383 thiss!17480 rules!1920 (++!1102 (list!1713 call!17920) (list!1713 lt!131563)))))))

(declare-fun lt!132170 () Unit!5690)

(declare-fun lt!132157 () Unit!5690)

(assert (=> d!94772 (= lt!132170 lt!132157)))

(assert (=> d!94772 e!192377))

(declare-fun res!140688 () Bool)

(assert (=> d!94772 (=> (not res!140688) (not e!192377))))

(declare-fun isDefined!770 (Option!931) Bool)

(assert (=> d!94772 (= res!140688 (isDefined!770 (getRuleFromTag!144 thiss!17480 rules!1920 (tag!999 (rule!1394 lt!132168)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!144 (LexerInterface!667 List!4072 List!4071 Token!1306) Unit!5690)

(assert (=> d!94772 (= lt!132157 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!144 thiss!17480 rules!1920 (list!1713 call!17920) lt!132168))))

(declare-fun lt!132161 () Unit!5690)

(declare-fun lt!132156 () Unit!5690)

(assert (=> d!94772 (= lt!132161 lt!132156)))

(declare-fun lt!132162 () List!4071)

(assert (=> d!94772 (isPrefix!441 lt!132162 (++!1102 (list!1713 call!17920) (list!1713 lt!131563)))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!68 (List!4071 List!4071 List!4071) Unit!5690)

(assert (=> d!94772 (= lt!132156 (lemmaPrefixStaysPrefixWhenAddingToSuffix!68 lt!132162 (list!1713 call!17920) (list!1713 lt!131563)))))

(assert (=> d!94772 (= lt!132162 (list!1713 (charsOf!424 lt!132168)))))

(declare-fun lt!132155 () Unit!5690)

(declare-fun lt!132158 () Unit!5690)

(assert (=> d!94772 (= lt!132155 lt!132158)))

(declare-fun lt!132165 () List!4071)

(declare-fun lt!132164 () List!4071)

(assert (=> d!94772 (isPrefix!441 lt!132165 (++!1102 lt!132165 lt!132164))))

(assert (=> d!94772 (= lt!132158 (lemmaConcatTwoListThenFirstIsPrefix!332 lt!132165 lt!132164))))

(assert (=> d!94772 (= lt!132164 (_2!2561 (get!1388 (maxPrefix!383 thiss!17480 rules!1920 (list!1713 call!17920)))))))

(assert (=> d!94772 (= lt!132165 (list!1713 (charsOf!424 lt!132168)))))

(assert (=> d!94772 (= lt!132168 (head!966 (list!1716 (_1!2562 (lex!459 thiss!17480 rules!1920 (seqFromList!928 (list!1713 call!17920)))))))))

(assert (=> d!94772 (not (isEmpty!2776 rules!1920))))

(assert (=> d!94772 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!144 thiss!17480 rules!1920 (list!1713 call!17920) (list!1713 lt!131563)) lt!132160)))

(declare-fun b!309329 () Bool)

(declare-fun Unit!5717 () Unit!5690)

(assert (=> b!309329 (= e!192376 Unit!5717)))

(assert (= (and d!94772 res!140688) b!309326))

(assert (= (and b!309326 res!140687) b!309327))

(assert (= (and d!94772 c!58678) b!309328))

(assert (= (and d!94772 (not c!58678)) b!309329))

(assert (=> b!309328 m!411467))

(assert (=> b!309328 m!411469))

(declare-fun m!413873 () Bool)

(assert (=> b!309328 m!413873))

(declare-fun m!413875 () Bool)

(assert (=> b!309328 m!413875))

(declare-fun m!413877 () Bool)

(assert (=> b!309328 m!413877))

(assert (=> b!309328 m!413875))

(declare-fun m!413879 () Bool)

(assert (=> b!309328 m!413879))

(assert (=> b!309328 m!413873))

(declare-fun m!413881 () Bool)

(assert (=> b!309328 m!413881))

(declare-fun m!413883 () Bool)

(assert (=> b!309328 m!413883))

(declare-fun m!413885 () Bool)

(assert (=> b!309328 m!413885))

(declare-fun m!413887 () Bool)

(assert (=> b!309328 m!413887))

(assert (=> b!309328 m!413885))

(declare-fun m!413889 () Bool)

(assert (=> b!309327 m!413889))

(assert (=> b!309327 m!413889))

(declare-fun m!413891 () Bool)

(assert (=> b!309327 m!413891))

(assert (=> b!309326 m!413879))

(declare-fun m!413893 () Bool)

(assert (=> b!309326 m!413893))

(assert (=> b!309326 m!413875))

(assert (=> b!309326 m!413875))

(assert (=> b!309326 m!413879))

(assert (=> b!309326 m!413889))

(assert (=> b!309326 m!413889))

(assert (=> b!309326 m!413891))

(declare-fun m!413895 () Bool)

(assert (=> d!94772 m!413895))

(declare-fun m!413897 () Bool)

(assert (=> d!94772 m!413897))

(assert (=> d!94772 m!411467))

(assert (=> d!94772 m!411469))

(assert (=> d!94772 m!413873))

(assert (=> d!94772 m!411467))

(declare-fun m!413899 () Bool)

(assert (=> d!94772 m!413899))

(declare-fun m!413901 () Bool)

(assert (=> d!94772 m!413901))

(declare-fun m!413903 () Bool)

(assert (=> d!94772 m!413903))

(declare-fun m!413905 () Bool)

(assert (=> d!94772 m!413905))

(declare-fun m!413907 () Bool)

(assert (=> d!94772 m!413907))

(assert (=> d!94772 m!413905))

(declare-fun m!413909 () Bool)

(assert (=> d!94772 m!413909))

(assert (=> d!94772 m!413875))

(assert (=> d!94772 m!410327))

(assert (=> d!94772 m!413895))

(declare-fun m!413911 () Bool)

(assert (=> d!94772 m!413911))

(assert (=> d!94772 m!411467))

(assert (=> d!94772 m!411469))

(declare-fun m!413913 () Bool)

(assert (=> d!94772 m!413913))

(assert (=> d!94772 m!413875))

(assert (=> d!94772 m!413879))

(assert (=> d!94772 m!413889))

(declare-fun m!413915 () Bool)

(assert (=> d!94772 m!413915))

(assert (=> d!94772 m!413915))

(declare-fun m!413917 () Bool)

(assert (=> d!94772 m!413917))

(assert (=> d!94772 m!413873))

(assert (=> d!94772 m!413905))

(assert (=> d!94772 m!411467))

(assert (=> d!94772 m!413901))

(assert (=> d!94772 m!413899))

(declare-fun m!413919 () Bool)

(assert (=> d!94772 m!413919))

(assert (=> d!94772 m!413873))

(declare-fun m!413921 () Bool)

(assert (=> d!94772 m!413921))

(assert (=> d!94772 m!411467))

(declare-fun m!413923 () Bool)

(assert (=> d!94772 m!413923))

(assert (=> d!94772 m!413889))

(declare-fun m!413925 () Bool)

(assert (=> d!94772 m!413925))

(assert (=> b!308121 d!94772))

(declare-fun d!94790 () Bool)

(assert (=> d!94790 (= (list!1713 lt!131563) (list!1717 (c!58276 lt!131563)))))

(declare-fun bs!35802 () Bool)

(assert (= bs!35802 d!94790))

(declare-fun m!413927 () Bool)

(assert (=> bs!35802 m!413927))

(assert (=> b!308121 d!94790))

(declare-fun d!94792 () Bool)

(declare-fun lt!132172 () BalanceConc!2776)

(assert (=> d!94792 (= (list!1713 lt!132172) (printList!341 thiss!17480 (list!1716 (singletonSeq!327 call!17922))))))

(assert (=> d!94792 (= lt!132172 (printTailRec!353 thiss!17480 (singletonSeq!327 call!17922) 0 (BalanceConc!2777 Empty!1384)))))

(assert (=> d!94792 (= (print!392 thiss!17480 (singletonSeq!327 call!17922)) lt!132172)))

(declare-fun bs!35803 () Bool)

(assert (= bs!35803 d!94792))

(declare-fun m!413929 () Bool)

(assert (=> bs!35803 m!413929))

(assert (=> bs!35803 m!411461))

(declare-fun m!413931 () Bool)

(assert (=> bs!35803 m!413931))

(assert (=> bs!35803 m!413931))

(declare-fun m!413933 () Bool)

(assert (=> bs!35803 m!413933))

(assert (=> bs!35803 m!411461))

(assert (=> bs!35803 m!411463))

(assert (=> b!308121 d!94792))

(declare-fun d!94794 () Bool)

(assert (=> d!94794 (= (list!1713 call!17920) (list!1717 (c!58276 call!17920)))))

(declare-fun bs!35804 () Bool)

(assert (= bs!35804 d!94794))

(declare-fun m!413935 () Bool)

(assert (=> bs!35804 m!413935))

(assert (=> b!308121 d!94794))

(declare-fun d!94796 () Bool)

(declare-fun e!192378 () Bool)

(assert (=> d!94796 e!192378))

(declare-fun res!140689 () Bool)

(assert (=> d!94796 (=> (not res!140689) (not e!192378))))

(declare-fun lt!132173 () BalanceConc!2778)

(assert (=> d!94796 (= res!140689 (= (list!1716 lt!132173) (Cons!4063 call!17922 Nil!4063)))))

(assert (=> d!94796 (= lt!132173 (singleton!146 call!17922))))

(assert (=> d!94796 (= (singletonSeq!327 call!17922) lt!132173)))

(declare-fun b!309330 () Bool)

(assert (=> b!309330 (= e!192378 (isBalanced!395 (c!58278 lt!132173)))))

(assert (= (and d!94796 res!140689) b!309330))

(declare-fun m!413937 () Bool)

(assert (=> d!94796 m!413937))

(declare-fun m!413939 () Bool)

(assert (=> d!94796 m!413939))

(declare-fun m!413941 () Bool)

(assert (=> b!309330 m!413941))

(assert (=> b!308121 d!94796))

(declare-fun d!94798 () Bool)

(declare-fun lt!132179 () BalanceConc!2776)

(assert (=> d!94798 (= (list!1713 lt!132179) (printListTailRec!161 thiss!17480 (dropList!196 (singletonSeq!327 call!17922) 0) (list!1713 (BalanceConc!2777 Empty!1384))))))

(declare-fun e!192379 () BalanceConc!2776)

(assert (=> d!94798 (= lt!132179 e!192379)))

(declare-fun c!58679 () Bool)

(assert (=> d!94798 (= c!58679 (>= 0 (size!3247 (singletonSeq!327 call!17922))))))

(declare-fun e!192380 () Bool)

(assert (=> d!94798 e!192380))

(declare-fun res!140690 () Bool)

(assert (=> d!94798 (=> (not res!140690) (not e!192380))))

(assert (=> d!94798 (= res!140690 (>= 0 0))))

(assert (=> d!94798 (= (printTailRec!353 thiss!17480 (singletonSeq!327 call!17922) 0 (BalanceConc!2777 Empty!1384)) lt!132179)))

(declare-fun b!309331 () Bool)

(assert (=> b!309331 (= e!192380 (<= 0 (size!3247 (singletonSeq!327 call!17922))))))

(declare-fun b!309332 () Bool)

(assert (=> b!309332 (= e!192379 (BalanceConc!2777 Empty!1384))))

(declare-fun b!309333 () Bool)

(assert (=> b!309333 (= e!192379 (printTailRec!353 thiss!17480 (singletonSeq!327 call!17922) (+ 0 1) (++!1104 (BalanceConc!2777 Empty!1384) (charsOf!424 (apply!892 (singletonSeq!327 call!17922) 0)))))))

(declare-fun lt!132176 () List!4073)

(assert (=> b!309333 (= lt!132176 (list!1716 (singletonSeq!327 call!17922)))))

(declare-fun lt!132177 () Unit!5690)

(assert (=> b!309333 (= lt!132177 (lemmaDropApply!236 lt!132176 0))))

(assert (=> b!309333 (= (head!966 (drop!251 lt!132176 0)) (apply!894 lt!132176 0))))

(declare-fun lt!132180 () Unit!5690)

(assert (=> b!309333 (= lt!132180 lt!132177)))

(declare-fun lt!132175 () List!4073)

(assert (=> b!309333 (= lt!132175 (list!1716 (singletonSeq!327 call!17922)))))

(declare-fun lt!132174 () Unit!5690)

(assert (=> b!309333 (= lt!132174 (lemmaDropTail!228 lt!132175 0))))

(assert (=> b!309333 (= (tail!541 (drop!251 lt!132175 0)) (drop!251 lt!132175 (+ 0 1)))))

(declare-fun lt!132178 () Unit!5690)

(assert (=> b!309333 (= lt!132178 lt!132174)))

(assert (= (and d!94798 res!140690) b!309331))

(assert (= (and d!94798 c!58679) b!309332))

(assert (= (and d!94798 (not c!58679)) b!309333))

(assert (=> d!94798 m!410717))

(assert (=> d!94798 m!411461))

(declare-fun m!413943 () Bool)

(assert (=> d!94798 m!413943))

(assert (=> d!94798 m!411461))

(declare-fun m!413945 () Bool)

(assert (=> d!94798 m!413945))

(declare-fun m!413947 () Bool)

(assert (=> d!94798 m!413947))

(assert (=> d!94798 m!413943))

(assert (=> d!94798 m!410717))

(declare-fun m!413949 () Bool)

(assert (=> d!94798 m!413949))

(assert (=> b!309331 m!411461))

(assert (=> b!309331 m!413945))

(assert (=> b!309333 m!411461))

(declare-fun m!413951 () Bool)

(assert (=> b!309333 m!413951))

(declare-fun m!413953 () Bool)

(assert (=> b!309333 m!413953))

(declare-fun m!413955 () Bool)

(assert (=> b!309333 m!413955))

(declare-fun m!413957 () Bool)

(assert (=> b!309333 m!413957))

(assert (=> b!309333 m!411461))

(declare-fun m!413959 () Bool)

(assert (=> b!309333 m!413959))

(assert (=> b!309333 m!411461))

(assert (=> b!309333 m!413931))

(assert (=> b!309333 m!413959))

(declare-fun m!413961 () Bool)

(assert (=> b!309333 m!413961))

(declare-fun m!413963 () Bool)

(assert (=> b!309333 m!413963))

(assert (=> b!309333 m!413955))

(declare-fun m!413965 () Bool)

(assert (=> b!309333 m!413965))

(assert (=> b!309333 m!413961))

(assert (=> b!309333 m!413951))

(declare-fun m!413967 () Bool)

(assert (=> b!309333 m!413967))

(declare-fun m!413969 () Bool)

(assert (=> b!309333 m!413969))

(declare-fun m!413971 () Bool)

(assert (=> b!309333 m!413971))

(assert (=> b!309333 m!413963))

(declare-fun m!413973 () Bool)

(assert (=> b!309333 m!413973))

(assert (=> b!308121 d!94798))

(declare-fun d!94800 () Bool)

(assert (=> d!94800 true))

(declare-fun lt!132183 () Bool)

(assert (=> d!94800 (= lt!132183 (rulesValidInductive!233 thiss!17480 rules!1920))))

(declare-fun lambda!10566 () Int)

(declare-fun forall!1077 (List!4072 Int) Bool)

(assert (=> d!94800 (= lt!132183 (forall!1077 rules!1920 lambda!10566))))

(assert (=> d!94800 (= (rulesValid!258 thiss!17480 rules!1920) lt!132183)))

(declare-fun bs!35805 () Bool)

(assert (= bs!35805 d!94800))

(assert (=> bs!35805 m!410421))

(declare-fun m!413975 () Bool)

(assert (=> bs!35805 m!413975))

(assert (=> d!93946 d!94800))

(declare-fun d!94802 () Bool)

(assert (=> d!94802 (= (inv!5012 (tag!999 (rule!1394 (h!9460 (t!43305 tokens!465))))) (= (mod (str.len (value!26573 (tag!999 (rule!1394 (h!9460 (t!43305 tokens!465)))))) 2) 0))))

(assert (=> b!308287 d!94802))

(declare-fun d!94804 () Bool)

(declare-fun res!140691 () Bool)

(declare-fun e!192381 () Bool)

(assert (=> d!94804 (=> (not res!140691) (not e!192381))))

(assert (=> d!94804 (= res!140691 (semiInverseModEq!293 (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))) (toValue!1540 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465)))))))))

(assert (=> d!94804 (= (inv!5015 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))) e!192381)))

(declare-fun b!309336 () Bool)

(assert (=> b!309336 (= e!192381 (equivClasses!276 (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))) (toValue!1540 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465)))))))))

(assert (= (and d!94804 res!140691) b!309336))

(declare-fun m!413977 () Bool)

(assert (=> d!94804 m!413977))

(declare-fun m!413979 () Bool)

(assert (=> b!309336 m!413979))

(assert (=> b!308287 d!94804))

(declare-fun d!94806 () Bool)

(assert (=> d!94806 (= (get!1388 (maxPrefix!383 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!348 thiss!17480 rules!1920 tokens!465 separatorToken!170))) (v!14932 (maxPrefix!383 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!348 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(assert (=> b!308109 d!94806))

(assert (=> b!308109 d!94522))

(assert (=> b!308109 d!94138))

(assert (=> b!308109 d!93934))

(declare-fun b!309349 () Bool)

(declare-fun res!140705 () Bool)

(declare-fun e!192386 () Bool)

(assert (=> b!309349 (=> (not res!140705) (not e!192386))))

(declare-fun height!180 (Conc!1385) Int)

(assert (=> b!309349 (= res!140705 (<= (- (height!180 (left!3378 (c!58278 lt!131324))) (height!180 (right!3708 (c!58278 lt!131324)))) 1))))

(declare-fun b!309350 () Bool)

(declare-fun e!192387 () Bool)

(assert (=> b!309350 (= e!192387 e!192386)))

(declare-fun res!140709 () Bool)

(assert (=> b!309350 (=> (not res!140709) (not e!192386))))

(assert (=> b!309350 (= res!140709 (<= (- 1) (- (height!180 (left!3378 (c!58278 lt!131324))) (height!180 (right!3708 (c!58278 lt!131324))))))))

(declare-fun b!309351 () Bool)

(declare-fun res!140708 () Bool)

(assert (=> b!309351 (=> (not res!140708) (not e!192386))))

(assert (=> b!309351 (= res!140708 (isBalanced!395 (left!3378 (c!58278 lt!131324))))))

(declare-fun b!309352 () Bool)

(declare-fun res!140706 () Bool)

(assert (=> b!309352 (=> (not res!140706) (not e!192386))))

(assert (=> b!309352 (= res!140706 (not (isEmpty!2786 (left!3378 (c!58278 lt!131324)))))))

(declare-fun b!309353 () Bool)

(declare-fun res!140707 () Bool)

(assert (=> b!309353 (=> (not res!140707) (not e!192386))))

(assert (=> b!309353 (= res!140707 (isBalanced!395 (right!3708 (c!58278 lt!131324))))))

(declare-fun b!309354 () Bool)

(assert (=> b!309354 (= e!192386 (not (isEmpty!2786 (right!3708 (c!58278 lt!131324)))))))

(declare-fun d!94808 () Bool)

(declare-fun res!140704 () Bool)

(assert (=> d!94808 (=> res!140704 e!192387)))

(assert (=> d!94808 (= res!140704 (not ((_ is Node!1385) (c!58278 lt!131324))))))

(assert (=> d!94808 (= (isBalanced!395 (c!58278 lt!131324)) e!192387)))

(assert (= (and d!94808 (not res!140704)) b!309350))

(assert (= (and b!309350 res!140709) b!309349))

(assert (= (and b!309349 res!140705) b!309351))

(assert (= (and b!309351 res!140708) b!309353))

(assert (= (and b!309353 res!140707) b!309352))

(assert (= (and b!309352 res!140706) b!309354))

(declare-fun m!413981 () Bool)

(assert (=> b!309353 m!413981))

(declare-fun m!413983 () Bool)

(assert (=> b!309351 m!413983))

(declare-fun m!413985 () Bool)

(assert (=> b!309349 m!413985))

(declare-fun m!413987 () Bool)

(assert (=> b!309349 m!413987))

(declare-fun m!413989 () Bool)

(assert (=> b!309352 m!413989))

(declare-fun m!413991 () Bool)

(assert (=> b!309354 m!413991))

(assert (=> b!309350 m!413985))

(assert (=> b!309350 m!413987))

(assert (=> b!307759 d!94808))

(assert (=> b!307719 d!94394))

(assert (=> b!307719 d!94392))

(assert (=> b!307719 d!94408))

(assert (=> b!307719 d!94556))

(assert (=> b!307719 d!94396))

(declare-fun d!94810 () Bool)

(assert (=> d!94810 (= lt!131170 (_2!2561 lt!131152))))

(assert (=> d!94810 true))

(declare-fun _$63!591 () Unit!5690)

(assert (=> d!94810 (= (choose!2695 lt!131150 lt!131170 lt!131150 (_2!2561 lt!131152) lt!131156) _$63!591)))

(assert (=> d!94092 d!94810))

(declare-fun b!309357 () Bool)

(declare-fun e!192388 () Bool)

(assert (=> b!309357 (= e!192388 (isPrefix!441 (tail!542 lt!131150) (tail!542 lt!131156)))))

(declare-fun b!309355 () Bool)

(declare-fun e!192390 () Bool)

(assert (=> b!309355 (= e!192390 e!192388)))

(declare-fun res!140712 () Bool)

(assert (=> b!309355 (=> (not res!140712) (not e!192388))))

(assert (=> b!309355 (= res!140712 (not ((_ is Nil!4061) lt!131156)))))

(declare-fun b!309358 () Bool)

(declare-fun e!192389 () Bool)

(assert (=> b!309358 (= e!192389 (>= (size!3246 lt!131156) (size!3246 lt!131150)))))

(declare-fun d!94812 () Bool)

(assert (=> d!94812 e!192389))

(declare-fun res!140710 () Bool)

(assert (=> d!94812 (=> res!140710 e!192389)))

(declare-fun lt!132184 () Bool)

(assert (=> d!94812 (= res!140710 (not lt!132184))))

(assert (=> d!94812 (= lt!132184 e!192390)))

(declare-fun res!140711 () Bool)

(assert (=> d!94812 (=> res!140711 e!192390)))

(assert (=> d!94812 (= res!140711 ((_ is Nil!4061) lt!131150))))

(assert (=> d!94812 (= (isPrefix!441 lt!131150 lt!131156) lt!132184)))

(declare-fun b!309356 () Bool)

(declare-fun res!140713 () Bool)

(assert (=> b!309356 (=> (not res!140713) (not e!192388))))

(assert (=> b!309356 (= res!140713 (= (head!968 lt!131150) (head!968 lt!131156)))))

(assert (= (and d!94812 (not res!140711)) b!309355))

(assert (= (and b!309355 res!140712) b!309356))

(assert (= (and b!309356 res!140713) b!309357))

(assert (= (and d!94812 (not res!140710)) b!309358))

(assert (=> b!309357 m!411339))

(declare-fun m!413993 () Bool)

(assert (=> b!309357 m!413993))

(assert (=> b!309357 m!411339))

(assert (=> b!309357 m!413993))

(declare-fun m!413995 () Bool)

(assert (=> b!309357 m!413995))

(assert (=> b!309358 m!410459))

(assert (=> b!309358 m!410425))

(assert (=> b!309356 m!411347))

(declare-fun m!413997 () Bool)

(assert (=> b!309356 m!413997))

(assert (=> d!94092 d!94812))

(declare-fun bs!35806 () Bool)

(declare-fun d!94814 () Bool)

(assert (= bs!35806 (and d!94814 d!94562)))

(declare-fun lambda!10567 () Int)

(assert (=> bs!35806 (= (and (= (toChars!1399 (transformation!781 (h!9459 rules!1920))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465))))) (= (toValue!1540 (transformation!781 (h!9459 rules!1920))) (toValue!1540 (transformation!781 (rule!1394 (h!9460 tokens!465)))))) (= lambda!10567 lambda!10555))))

(assert (=> d!94814 true))

(assert (=> d!94814 (< (dynLambda!2221 order!3301 (toChars!1399 (transformation!781 (h!9459 rules!1920)))) (dynLambda!2230 order!3309 lambda!10567))))

(assert (=> d!94814 true))

(assert (=> d!94814 (< (dynLambda!2219 order!3297 (toValue!1540 (transformation!781 (h!9459 rules!1920)))) (dynLambda!2230 order!3309 lambda!10567))))

(assert (=> d!94814 (= (semiInverseModEq!293 (toChars!1399 (transformation!781 (h!9459 rules!1920))) (toValue!1540 (transformation!781 (h!9459 rules!1920)))) (Forall!184 lambda!10567))))

(declare-fun bs!35807 () Bool)

(assert (= bs!35807 d!94814))

(declare-fun m!413999 () Bool)

(assert (=> bs!35807 m!413999))

(assert (=> d!94154 d!94814))

(declare-fun d!94816 () Bool)

(declare-fun c!58680 () Bool)

(assert (=> d!94816 (= c!58680 ((_ is Nil!4061) lt!131291))))

(declare-fun e!192391 () (InoxSet C!2932))

(assert (=> d!94816 (= (content!606 lt!131291) e!192391)))

(declare-fun b!309359 () Bool)

(assert (=> b!309359 (= e!192391 ((as const (Array C!2932 Bool)) false))))

(declare-fun b!309360 () Bool)

(assert (=> b!309360 (= e!192391 ((_ map or) (store ((as const (Array C!2932 Bool)) false) (h!9458 lt!131291) true) (content!606 (t!43303 lt!131291))))))

(assert (= (and d!94816 c!58680) b!309359))

(assert (= (and d!94816 (not c!58680)) b!309360))

(declare-fun m!414001 () Bool)

(assert (=> b!309360 m!414001))

(declare-fun m!414003 () Bool)

(assert (=> b!309360 m!414003))

(assert (=> d!93966 d!94816))

(assert (=> d!93966 d!94582))

(declare-fun d!94818 () Bool)

(declare-fun c!58681 () Bool)

(assert (=> d!94818 (= c!58681 ((_ is Nil!4061) lt!131151))))

(declare-fun e!192392 () (InoxSet C!2932))

(assert (=> d!94818 (= (content!606 lt!131151) e!192392)))

(declare-fun b!309361 () Bool)

(assert (=> b!309361 (= e!192392 ((as const (Array C!2932 Bool)) false))))

(declare-fun b!309362 () Bool)

(assert (=> b!309362 (= e!192392 ((_ map or) (store ((as const (Array C!2932 Bool)) false) (h!9458 lt!131151) true) (content!606 (t!43303 lt!131151))))))

(assert (= (and d!94818 c!58681) b!309361))

(assert (= (and d!94818 (not c!58681)) b!309362))

(declare-fun m!414005 () Bool)

(assert (=> b!309362 m!414005))

(declare-fun m!414007 () Bool)

(assert (=> b!309362 m!414007))

(assert (=> d!93966 d!94818))

(declare-fun d!94820 () Bool)

(assert (=> d!94820 (= (isEmpty!2778 (list!1716 (_1!2562 (lex!459 thiss!17480 rules!1920 (seqFromList!928 lt!131150))))) ((_ is Nil!4063) (list!1716 (_1!2562 (lex!459 thiss!17480 rules!1920 (seqFromList!928 lt!131150))))))))

(assert (=> d!94160 d!94820))

(declare-fun d!94822 () Bool)

(assert (=> d!94822 (= (list!1716 (_1!2562 (lex!459 thiss!17480 rules!1920 (seqFromList!928 lt!131150)))) (list!1719 (c!58278 (_1!2562 (lex!459 thiss!17480 rules!1920 (seqFromList!928 lt!131150))))))))

(declare-fun bs!35808 () Bool)

(assert (= bs!35808 d!94822))

(declare-fun m!414009 () Bool)

(assert (=> bs!35808 m!414009))

(assert (=> d!94160 d!94822))

(declare-fun d!94824 () Bool)

(declare-fun lt!132187 () Bool)

(assert (=> d!94824 (= lt!132187 (isEmpty!2778 (list!1719 (c!58278 (_1!2562 (lex!459 thiss!17480 rules!1920 (seqFromList!928 lt!131150)))))))))

(assert (=> d!94824 (= lt!132187 (= (size!3254 (c!58278 (_1!2562 (lex!459 thiss!17480 rules!1920 (seqFromList!928 lt!131150))))) 0))))

(assert (=> d!94824 (= (isEmpty!2786 (c!58278 (_1!2562 (lex!459 thiss!17480 rules!1920 (seqFromList!928 lt!131150))))) lt!132187)))

(declare-fun bs!35809 () Bool)

(assert (= bs!35809 d!94824))

(assert (=> bs!35809 m!414009))

(assert (=> bs!35809 m!414009))

(declare-fun m!414011 () Bool)

(assert (=> bs!35809 m!414011))

(declare-fun m!414013 () Bool)

(assert (=> bs!35809 m!414013))

(assert (=> d!94160 d!94824))

(declare-fun d!94826 () Bool)

(assert (=> d!94826 (= (inv!5020 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (value!26574 separatorToken!170))) (isBalanced!397 (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (value!26574 separatorToken!170)))))))

(declare-fun bs!35810 () Bool)

(assert (= bs!35810 d!94826))

(declare-fun m!414015 () Bool)

(assert (=> bs!35810 m!414015))

(assert (=> tb!19357 d!94826))

(declare-fun lt!132188 () List!4071)

(declare-fun b!309366 () Bool)

(declare-fun e!192394 () Bool)

(assert (=> b!309366 (= e!192394 (or (not (= lt!131567 Nil!4061)) (= lt!132188 call!17925)))))

(declare-fun d!94828 () Bool)

(assert (=> d!94828 e!192394))

(declare-fun res!140714 () Bool)

(assert (=> d!94828 (=> (not res!140714) (not e!192394))))

(assert (=> d!94828 (= res!140714 (= (content!606 lt!132188) ((_ map or) (content!606 call!17925) (content!606 lt!131567))))))

(declare-fun e!192393 () List!4071)

(assert (=> d!94828 (= lt!132188 e!192393)))

(declare-fun c!58682 () Bool)

(assert (=> d!94828 (= c!58682 ((_ is Nil!4061) call!17925))))

(assert (=> d!94828 (= (++!1102 call!17925 lt!131567) lt!132188)))

(declare-fun b!309365 () Bool)

(declare-fun res!140715 () Bool)

(assert (=> b!309365 (=> (not res!140715) (not e!192394))))

(assert (=> b!309365 (= res!140715 (= (size!3246 lt!132188) (+ (size!3246 call!17925) (size!3246 lt!131567))))))

(declare-fun b!309364 () Bool)

(assert (=> b!309364 (= e!192393 (Cons!4061 (h!9458 call!17925) (++!1102 (t!43303 call!17925) lt!131567)))))

(declare-fun b!309363 () Bool)

(assert (=> b!309363 (= e!192393 lt!131567)))

(assert (= (and d!94828 c!58682) b!309363))

(assert (= (and d!94828 (not c!58682)) b!309364))

(assert (= (and d!94828 res!140714) b!309365))

(assert (= (and b!309365 res!140715) b!309366))

(declare-fun m!414017 () Bool)

(assert (=> d!94828 m!414017))

(declare-fun m!414019 () Bool)

(assert (=> d!94828 m!414019))

(assert (=> d!94828 m!413653))

(declare-fun m!414021 () Bool)

(assert (=> b!309365 m!414021))

(declare-fun m!414023 () Bool)

(assert (=> b!309365 m!414023))

(assert (=> b!309365 m!413659))

(declare-fun m!414025 () Bool)

(assert (=> b!309364 m!414025))

(assert (=> b!308159 d!94828))

(declare-fun b!309369 () Bool)

(declare-fun res!140717 () Bool)

(declare-fun e!192395 () Bool)

(assert (=> b!309369 (=> (not res!140717) (not e!192395))))

(assert (=> b!309369 (= res!140717 (>= (height!179 (++!1106 (c!58276 call!17921) (c!58276 lt!131563))) (max!0 (height!179 (c!58276 call!17921)) (height!179 (c!58276 lt!131563)))))))

(declare-fun b!309370 () Bool)

(declare-fun lt!132189 () BalanceConc!2776)

(assert (=> b!309370 (= e!192395 (= (list!1713 lt!132189) (++!1102 (list!1713 call!17921) (list!1713 lt!131563))))))

(declare-fun b!309368 () Bool)

(declare-fun res!140718 () Bool)

(assert (=> b!309368 (=> (not res!140718) (not e!192395))))

(assert (=> b!309368 (= res!140718 (<= (height!179 (++!1106 (c!58276 call!17921) (c!58276 lt!131563))) (+ (max!0 (height!179 (c!58276 call!17921)) (height!179 (c!58276 lt!131563))) 1)))))

(declare-fun b!309367 () Bool)

(declare-fun res!140716 () Bool)

(assert (=> b!309367 (=> (not res!140716) (not e!192395))))

(assert (=> b!309367 (= res!140716 (isBalanced!397 (++!1106 (c!58276 call!17921) (c!58276 lt!131563))))))

(declare-fun d!94830 () Bool)

(assert (=> d!94830 e!192395))

(declare-fun res!140719 () Bool)

(assert (=> d!94830 (=> (not res!140719) (not e!192395))))

(assert (=> d!94830 (= res!140719 (appendAssocInst!75 (c!58276 call!17921) (c!58276 lt!131563)))))

(assert (=> d!94830 (= lt!132189 (BalanceConc!2777 (++!1106 (c!58276 call!17921) (c!58276 lt!131563))))))

(assert (=> d!94830 (= (++!1104 call!17921 lt!131563) lt!132189)))

(assert (= (and d!94830 res!140719) b!309367))

(assert (= (and b!309367 res!140716) b!309368))

(assert (= (and b!309368 res!140718) b!309369))

(assert (= (and b!309369 res!140717) b!309370))

(declare-fun m!414027 () Bool)

(assert (=> b!309370 m!414027))

(declare-fun m!414029 () Bool)

(assert (=> b!309370 m!414029))

(assert (=> b!309370 m!411469))

(assert (=> b!309370 m!414029))

(assert (=> b!309370 m!411469))

(declare-fun m!414031 () Bool)

(assert (=> b!309370 m!414031))

(declare-fun m!414033 () Bool)

(assert (=> b!309367 m!414033))

(assert (=> b!309367 m!414033))

(declare-fun m!414035 () Bool)

(assert (=> b!309367 m!414035))

(declare-fun m!414037 () Bool)

(assert (=> b!309368 m!414037))

(declare-fun m!414039 () Bool)

(assert (=> b!309368 m!414039))

(assert (=> b!309368 m!414033))

(declare-fun m!414041 () Bool)

(assert (=> b!309368 m!414041))

(assert (=> b!309368 m!414033))

(assert (=> b!309368 m!414037))

(assert (=> b!309368 m!414039))

(declare-fun m!414043 () Bool)

(assert (=> b!309368 m!414043))

(declare-fun m!414045 () Bool)

(assert (=> d!94830 m!414045))

(assert (=> d!94830 m!414033))

(assert (=> b!309369 m!414037))

(assert (=> b!309369 m!414039))

(assert (=> b!309369 m!414033))

(assert (=> b!309369 m!414041))

(assert (=> b!309369 m!414033))

(assert (=> b!309369 m!414037))

(assert (=> b!309369 m!414039))

(assert (=> b!309369 m!414043))

(assert (=> b!308115 d!94830))

(declare-fun d!94832 () Bool)

(declare-fun c!58683 () Bool)

(assert (=> d!94832 (= c!58683 ((_ is Nil!4061) lt!131326))))

(declare-fun e!192396 () (InoxSet C!2932))

(assert (=> d!94832 (= (content!606 lt!131326) e!192396)))

(declare-fun b!309371 () Bool)

(assert (=> b!309371 (= e!192396 ((as const (Array C!2932 Bool)) false))))

(declare-fun b!309372 () Bool)

(assert (=> b!309372 (= e!192396 ((_ map or) (store ((as const (Array C!2932 Bool)) false) (h!9458 lt!131326) true) (content!606 (t!43303 lt!131326))))))

(assert (= (and d!94832 c!58683) b!309371))

(assert (= (and d!94832 (not c!58683)) b!309372))

(declare-fun m!414047 () Bool)

(assert (=> b!309372 m!414047))

(declare-fun m!414049 () Bool)

(assert (=> b!309372 m!414049))

(assert (=> d!93990 d!94832))

(assert (=> d!93990 d!94584))

(assert (=> d!93990 d!94818))

(declare-fun d!94834 () Bool)

(declare-fun lt!132192 () Bool)

(assert (=> d!94834 (= lt!132192 (isEmpty!2775 (list!1713 (_2!2562 lt!131245))))))

(declare-fun isEmpty!2788 (Conc!1384) Bool)

(assert (=> d!94834 (= lt!132192 (isEmpty!2788 (c!58276 (_2!2562 lt!131245))))))

(assert (=> d!94834 (= (isEmpty!2782 (_2!2562 lt!131245)) lt!132192)))

(declare-fun bs!35811 () Bool)

(assert (= bs!35811 d!94834))

(declare-fun m!414051 () Bool)

(assert (=> bs!35811 m!414051))

(assert (=> bs!35811 m!414051))

(declare-fun m!414053 () Bool)

(assert (=> bs!35811 m!414053))

(declare-fun m!414055 () Bool)

(assert (=> bs!35811 m!414055))

(assert (=> b!307651 d!94834))

(declare-fun d!94836 () Bool)

(assert (=> d!94836 (= (list!1713 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (value!26574 (h!9460 tokens!465)))) (list!1717 (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (value!26574 (h!9460 tokens!465))))))))

(declare-fun bs!35812 () Bool)

(assert (= bs!35812 d!94836))

(declare-fun m!414057 () Bool)

(assert (=> bs!35812 m!414057))

(assert (=> b!307583 d!94836))

(declare-fun b!309373 () Bool)

(declare-fun res!140725 () Bool)

(declare-fun e!192399 () Bool)

(assert (=> b!309373 (=> (not res!140725) (not e!192399))))

(declare-fun call!18014 () Bool)

(assert (=> b!309373 (= res!140725 (not call!18014))))

(declare-fun b!309374 () Bool)

(declare-fun e!192401 () Bool)

(assert (=> b!309374 (= e!192401 (nullable!196 (derivativeStep!162 (regex!781 (rule!1394 (h!9460 tokens!465))) (head!968 lt!131150))))))

(declare-fun bm!18009 () Bool)

(assert (=> bm!18009 (= call!18014 (isEmpty!2775 (tail!542 lt!131150)))))

(declare-fun b!309375 () Bool)

(declare-fun e!192400 () Bool)

(declare-fun e!192403 () Bool)

(assert (=> b!309375 (= e!192400 e!192403)))

(declare-fun res!140727 () Bool)

(assert (=> b!309375 (=> res!140727 e!192403)))

(assert (=> b!309375 (= res!140727 call!18014)))

(declare-fun b!309376 () Bool)

(assert (=> b!309376 (= e!192399 (= (head!968 (tail!542 lt!131150)) (c!58277 (derivativeStep!162 (regex!781 (rule!1394 (h!9460 tokens!465))) (head!968 lt!131150)))))))

(declare-fun b!309377 () Bool)

(declare-fun res!140724 () Bool)

(assert (=> b!309377 (=> res!140724 e!192403)))

(assert (=> b!309377 (= res!140724 (not (isEmpty!2775 (tail!542 (tail!542 lt!131150)))))))

(declare-fun b!309378 () Bool)

(assert (=> b!309378 (= e!192403 (not (= (head!968 (tail!542 lt!131150)) (c!58277 (derivativeStep!162 (regex!781 (rule!1394 (h!9460 tokens!465))) (head!968 lt!131150))))))))

(declare-fun b!309379 () Bool)

(declare-fun res!140723 () Bool)

(declare-fun e!192402 () Bool)

(assert (=> b!309379 (=> res!140723 e!192402)))

(assert (=> b!309379 (= res!140723 e!192399)))

(declare-fun res!140720 () Bool)

(assert (=> b!309379 (=> (not res!140720) (not e!192399))))

(declare-fun lt!132193 () Bool)

(assert (=> b!309379 (= res!140720 lt!132193)))

(declare-fun b!309380 () Bool)

(assert (=> b!309380 (= e!192401 (matchR!323 (derivativeStep!162 (derivativeStep!162 (regex!781 (rule!1394 (h!9460 tokens!465))) (head!968 lt!131150)) (head!968 (tail!542 lt!131150))) (tail!542 (tail!542 lt!131150))))))

(declare-fun b!309381 () Bool)

(assert (=> b!309381 (= e!192402 e!192400)))

(declare-fun res!140721 () Bool)

(assert (=> b!309381 (=> (not res!140721) (not e!192400))))

(assert (=> b!309381 (= res!140721 (not lt!132193))))

(declare-fun b!309383 () Bool)

(declare-fun e!192397 () Bool)

(assert (=> b!309383 (= e!192397 (not lt!132193))))

(declare-fun b!309384 () Bool)

(declare-fun e!192398 () Bool)

(assert (=> b!309384 (= e!192398 (= lt!132193 call!18014))))

(declare-fun b!309385 () Bool)

(assert (=> b!309385 (= e!192398 e!192397)))

(declare-fun c!58686 () Bool)

(assert (=> b!309385 (= c!58686 ((_ is EmptyLang!1005) (derivativeStep!162 (regex!781 (rule!1394 (h!9460 tokens!465))) (head!968 lt!131150))))))

(declare-fun b!309386 () Bool)

(declare-fun res!140726 () Bool)

(assert (=> b!309386 (=> (not res!140726) (not e!192399))))

(assert (=> b!309386 (= res!140726 (isEmpty!2775 (tail!542 (tail!542 lt!131150))))))

(declare-fun b!309382 () Bool)

(declare-fun res!140722 () Bool)

(assert (=> b!309382 (=> res!140722 e!192402)))

(assert (=> b!309382 (= res!140722 (not ((_ is ElementMatch!1005) (derivativeStep!162 (regex!781 (rule!1394 (h!9460 tokens!465))) (head!968 lt!131150)))))))

(assert (=> b!309382 (= e!192397 e!192402)))

(declare-fun d!94838 () Bool)

(assert (=> d!94838 e!192398))

(declare-fun c!58684 () Bool)

(assert (=> d!94838 (= c!58684 ((_ is EmptyExpr!1005) (derivativeStep!162 (regex!781 (rule!1394 (h!9460 tokens!465))) (head!968 lt!131150))))))

(assert (=> d!94838 (= lt!132193 e!192401)))

(declare-fun c!58685 () Bool)

(assert (=> d!94838 (= c!58685 (isEmpty!2775 (tail!542 lt!131150)))))

(assert (=> d!94838 (validRegex!271 (derivativeStep!162 (regex!781 (rule!1394 (h!9460 tokens!465))) (head!968 lt!131150)))))

(assert (=> d!94838 (= (matchR!323 (derivativeStep!162 (regex!781 (rule!1394 (h!9460 tokens!465))) (head!968 lt!131150)) (tail!542 lt!131150)) lt!132193)))

(assert (= (and d!94838 c!58685) b!309374))

(assert (= (and d!94838 (not c!58685)) b!309380))

(assert (= (and d!94838 c!58684) b!309384))

(assert (= (and d!94838 (not c!58684)) b!309385))

(assert (= (and b!309385 c!58686) b!309383))

(assert (= (and b!309385 (not c!58686)) b!309382))

(assert (= (and b!309382 (not res!140722)) b!309379))

(assert (= (and b!309379 res!140720) b!309373))

(assert (= (and b!309373 res!140725) b!309386))

(assert (= (and b!309386 res!140726) b!309376))

(assert (= (and b!309379 (not res!140723)) b!309381))

(assert (= (and b!309381 res!140721) b!309375))

(assert (= (and b!309375 (not res!140727)) b!309377))

(assert (= (and b!309377 (not res!140724)) b!309378))

(assert (= (or b!309384 b!309373 b!309375) bm!18009))

(assert (=> b!309378 m!411339))

(assert (=> b!309378 m!411907))

(assert (=> d!94838 m!411339))

(assert (=> d!94838 m!411535))

(assert (=> d!94838 m!411529))

(declare-fun m!414059 () Bool)

(assert (=> d!94838 m!414059))

(assert (=> b!309376 m!411339))

(assert (=> b!309376 m!411907))

(assert (=> b!309380 m!411339))

(assert (=> b!309380 m!411907))

(assert (=> b!309380 m!411529))

(assert (=> b!309380 m!411907))

(declare-fun m!414061 () Bool)

(assert (=> b!309380 m!414061))

(assert (=> b!309380 m!411339))

(assert (=> b!309380 m!411897))

(assert (=> b!309380 m!414061))

(assert (=> b!309380 m!411897))

(declare-fun m!414063 () Bool)

(assert (=> b!309380 m!414063))

(assert (=> b!309374 m!411529))

(declare-fun m!414065 () Bool)

(assert (=> b!309374 m!414065))

(assert (=> b!309386 m!411339))

(assert (=> b!309386 m!411897))

(assert (=> b!309386 m!411897))

(declare-fun m!414067 () Bool)

(assert (=> b!309386 m!414067))

(assert (=> b!309377 m!411339))

(assert (=> b!309377 m!411897))

(assert (=> b!309377 m!411897))

(assert (=> b!309377 m!414067))

(assert (=> bm!18009 m!411339))

(assert (=> bm!18009 m!411535))

(assert (=> b!308242 d!94838))

(declare-fun bm!18018 () Bool)

(declare-fun c!58704 () Bool)

(declare-fun call!18023 () Regex!1005)

(declare-fun c!58705 () Bool)

(assert (=> bm!18018 (= call!18023 (derivativeStep!162 (ite c!58704 (regOne!2523 (regex!781 (rule!1394 (h!9460 tokens!465)))) (ite c!58705 (reg!1334 (regex!781 (rule!1394 (h!9460 tokens!465)))) (regOne!2522 (regex!781 (rule!1394 (h!9460 tokens!465)))))) (head!968 lt!131150)))))

(declare-fun bm!18019 () Bool)

(declare-fun call!18025 () Regex!1005)

(assert (=> bm!18019 (= call!18025 call!18023)))

(declare-fun b!309421 () Bool)

(declare-fun e!192426 () Regex!1005)

(assert (=> b!309421 (= e!192426 (Concat!1809 call!18025 (regex!781 (rule!1394 (h!9460 tokens!465)))))))

(declare-fun b!309422 () Bool)

(declare-fun e!192425 () Regex!1005)

(assert (=> b!309422 (= e!192425 e!192426)))

(assert (=> b!309422 (= c!58705 ((_ is Star!1005) (regex!781 (rule!1394 (h!9460 tokens!465)))))))

(declare-fun b!309423 () Bool)

(assert (=> b!309423 (= c!58704 ((_ is Union!1005) (regex!781 (rule!1394 (h!9460 tokens!465)))))))

(declare-fun e!192422 () Regex!1005)

(assert (=> b!309423 (= e!192422 e!192425)))

(declare-fun b!309424 () Bool)

(assert (=> b!309424 (= e!192422 (ite (= (head!968 lt!131150) (c!58277 (regex!781 (rule!1394 (h!9460 tokens!465))))) EmptyExpr!1005 EmptyLang!1005))))

(declare-fun bm!18020 () Bool)

(declare-fun call!18024 () Regex!1005)

(assert (=> bm!18020 (= call!18024 (derivativeStep!162 (ite c!58704 (regTwo!2523 (regex!781 (rule!1394 (h!9460 tokens!465)))) (regTwo!2522 (regex!781 (rule!1394 (h!9460 tokens!465))))) (head!968 lt!131150)))))

(declare-fun d!94840 () Bool)

(declare-fun lt!132264 () Regex!1005)

(assert (=> d!94840 (validRegex!271 lt!132264)))

(declare-fun e!192424 () Regex!1005)

(assert (=> d!94840 (= lt!132264 e!192424)))

(declare-fun c!58703 () Bool)

(assert (=> d!94840 (= c!58703 (or ((_ is EmptyExpr!1005) (regex!781 (rule!1394 (h!9460 tokens!465)))) ((_ is EmptyLang!1005) (regex!781 (rule!1394 (h!9460 tokens!465))))))))

(assert (=> d!94840 (validRegex!271 (regex!781 (rule!1394 (h!9460 tokens!465))))))

(assert (=> d!94840 (= (derivativeStep!162 (regex!781 (rule!1394 (h!9460 tokens!465))) (head!968 lt!131150)) lt!132264)))

(declare-fun b!309425 () Bool)

(declare-fun e!192423 () Regex!1005)

(declare-fun call!18026 () Regex!1005)

(assert (=> b!309425 (= e!192423 (Union!1005 (Concat!1809 call!18026 (regTwo!2522 (regex!781 (rule!1394 (h!9460 tokens!465))))) EmptyLang!1005))))

(declare-fun b!309426 () Bool)

(declare-fun c!58706 () Bool)

(assert (=> b!309426 (= c!58706 (nullable!196 (regOne!2522 (regex!781 (rule!1394 (h!9460 tokens!465))))))))

(assert (=> b!309426 (= e!192426 e!192423)))

(declare-fun b!309427 () Bool)

(assert (=> b!309427 (= e!192425 (Union!1005 call!18023 call!18024))))

(declare-fun b!309428 () Bool)

(assert (=> b!309428 (= e!192423 (Union!1005 (Concat!1809 call!18026 (regTwo!2522 (regex!781 (rule!1394 (h!9460 tokens!465))))) call!18024))))

(declare-fun bm!18021 () Bool)

(assert (=> bm!18021 (= call!18026 call!18025)))

(declare-fun b!309429 () Bool)

(assert (=> b!309429 (= e!192424 e!192422)))

(declare-fun c!58707 () Bool)

(assert (=> b!309429 (= c!58707 ((_ is ElementMatch!1005) (regex!781 (rule!1394 (h!9460 tokens!465)))))))

(declare-fun b!309430 () Bool)

(assert (=> b!309430 (= e!192424 EmptyLang!1005)))

(assert (= (and d!94840 c!58703) b!309430))

(assert (= (and d!94840 (not c!58703)) b!309429))

(assert (= (and b!309429 c!58707) b!309424))

(assert (= (and b!309429 (not c!58707)) b!309423))

(assert (= (and b!309423 c!58704) b!309427))

(assert (= (and b!309423 (not c!58704)) b!309422))

(assert (= (and b!309422 c!58705) b!309421))

(assert (= (and b!309422 (not c!58705)) b!309426))

(assert (= (and b!309426 c!58706) b!309428))

(assert (= (and b!309426 (not c!58706)) b!309425))

(assert (= (or b!309428 b!309425) bm!18021))

(assert (= (or b!309421 bm!18021) bm!18019))

(assert (= (or b!309427 b!309428) bm!18020))

(assert (= (or b!309427 bm!18019) bm!18018))

(assert (=> bm!18018 m!411347))

(declare-fun m!414069 () Bool)

(assert (=> bm!18018 m!414069))

(assert (=> bm!18020 m!411347))

(declare-fun m!414071 () Bool)

(assert (=> bm!18020 m!414071))

(declare-fun m!414073 () Bool)

(assert (=> d!94840 m!414073))

(assert (=> d!94840 m!411527))

(declare-fun m!414075 () Bool)

(assert (=> b!309426 m!414075))

(assert (=> b!308242 d!94840))

(declare-fun d!94842 () Bool)

(assert (=> d!94842 (= (head!968 lt!131150) (h!9458 lt!131150))))

(assert (=> b!308242 d!94842))

(assert (=> b!308242 d!94280))

(declare-fun lt!132265 () Bool)

(declare-fun d!94844 () Bool)

(assert (=> d!94844 (= lt!132265 (isEmpty!2775 (list!1713 (_2!2562 (lex!459 thiss!17480 rules!1920 (print!392 thiss!17480 (singletonSeq!327 (h!9460 tokens!465))))))))))

(assert (=> d!94844 (= lt!132265 (isEmpty!2788 (c!58276 (_2!2562 (lex!459 thiss!17480 rules!1920 (print!392 thiss!17480 (singletonSeq!327 (h!9460 tokens!465))))))))))

(assert (=> d!94844 (= (isEmpty!2782 (_2!2562 (lex!459 thiss!17480 rules!1920 (print!392 thiss!17480 (singletonSeq!327 (h!9460 tokens!465)))))) lt!132265)))

(declare-fun bs!35813 () Bool)

(assert (= bs!35813 d!94844))

(declare-fun m!414077 () Bool)

(assert (=> bs!35813 m!414077))

(assert (=> bs!35813 m!414077))

(declare-fun m!414079 () Bool)

(assert (=> bs!35813 m!414079))

(declare-fun m!414081 () Bool)

(assert (=> bs!35813 m!414081))

(assert (=> b!307652 d!94844))

(assert (=> b!307652 d!94288))

(assert (=> b!307652 d!94298))

(assert (=> b!307652 d!93978))

(declare-fun d!94846 () Bool)

(declare-fun lt!132266 () Int)

(assert (=> d!94846 (= lt!132266 (size!3253 (list!1716 (_1!2562 lt!131580))))))

(assert (=> d!94846 (= lt!132266 (size!3254 (c!58278 (_1!2562 lt!131580))))))

(assert (=> d!94846 (= (size!3247 (_1!2562 lt!131580)) lt!132266)))

(declare-fun bs!35814 () Bool)

(assert (= bs!35814 d!94846))

(assert (=> bs!35814 m!411561))

(assert (=> bs!35814 m!411561))

(declare-fun m!414083 () Bool)

(assert (=> bs!35814 m!414083))

(declare-fun m!414085 () Bool)

(assert (=> bs!35814 m!414085))

(assert (=> d!94162 d!94846))

(declare-fun b!309631 () Bool)

(declare-fun lt!132462 () tuple2!4692)

(declare-fun lt!132453 () Option!929)

(declare-fun lexRec!101 (LexerInterface!667 List!4072 BalanceConc!2776) tuple2!4692)

(assert (=> b!309631 (= lt!132462 (lexRec!101 thiss!17480 rules!1920 (_2!2563 (v!14933 lt!132453))))))

(declare-fun e!192548 () tuple2!4692)

(declare-fun prepend!186 (BalanceConc!2778 Token!1306) BalanceConc!2778)

(assert (=> b!309631 (= e!192548 (tuple2!4693 (prepend!186 (_1!2562 lt!132462) (_1!2563 (v!14933 lt!132453))) (_2!2562 lt!132462)))))

(declare-fun d!94848 () Bool)

(declare-fun e!192547 () Bool)

(assert (=> d!94848 e!192547))

(declare-fun res!140800 () Bool)

(assert (=> d!94848 (=> (not res!140800) (not e!192547))))

(declare-fun lt!132478 () tuple2!4692)

(assert (=> d!94848 (= res!140800 (= (list!1716 (_1!2562 lt!132478)) (list!1716 (_1!2562 (lexRec!101 thiss!17480 rules!1920 (seqFromList!928 lt!131150))))))))

(declare-fun e!192549 () tuple2!4692)

(assert (=> d!94848 (= lt!132478 e!192549)))

(declare-fun c!58768 () Bool)

(declare-fun lt!132477 () Option!929)

(assert (=> d!94848 (= c!58768 ((_ is Some!928) lt!132477))))

(declare-fun maxPrefixZipperSequenceV2!86 (LexerInterface!667 List!4072 BalanceConc!2776 BalanceConc!2776) Option!929)

(assert (=> d!94848 (= lt!132477 (maxPrefixZipperSequenceV2!86 thiss!17480 rules!1920 (seqFromList!928 lt!131150) (seqFromList!928 lt!131150)))))

(declare-fun lt!132451 () Unit!5690)

(declare-fun lt!132476 () Unit!5690)

(assert (=> d!94848 (= lt!132451 lt!132476)))

(declare-fun lt!132452 () List!4071)

(declare-fun lt!132465 () List!4071)

(declare-fun isSuffix!86 (List!4071 List!4071) Bool)

(assert (=> d!94848 (isSuffix!86 lt!132452 (++!1102 lt!132465 lt!132452))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!86 (List!4071 List!4071) Unit!5690)

(assert (=> d!94848 (= lt!132476 (lemmaConcatTwoListThenFSndIsSuffix!86 lt!132465 lt!132452))))

(assert (=> d!94848 (= lt!132452 (list!1713 (seqFromList!928 lt!131150)))))

(assert (=> d!94848 (= lt!132465 (list!1713 (BalanceConc!2777 Empty!1384)))))

(assert (=> d!94848 (= (lexTailRecV2!208 thiss!17480 rules!1920 (seqFromList!928 lt!131150) (BalanceConc!2777 Empty!1384) (seqFromList!928 lt!131150) (BalanceConc!2779 Empty!1385)) lt!132478)))

(declare-fun b!309632 () Bool)

(assert (=> b!309632 (= e!192547 (= (list!1713 (_2!2562 lt!132478)) (list!1713 (_2!2562 (lexRec!101 thiss!17480 rules!1920 (seqFromList!928 lt!131150))))))))

(declare-fun b!309633 () Bool)

(declare-fun lt!132463 () BalanceConc!2776)

(declare-fun append!108 (BalanceConc!2778 Token!1306) BalanceConc!2778)

(assert (=> b!309633 (= e!192549 (lexTailRecV2!208 thiss!17480 rules!1920 (seqFromList!928 lt!131150) lt!132463 (_2!2563 (v!14933 lt!132477)) (append!108 (BalanceConc!2779 Empty!1385) (_1!2563 (v!14933 lt!132477)))))))

(declare-fun lt!132458 () tuple2!4692)

(assert (=> b!309633 (= lt!132458 (lexRec!101 thiss!17480 rules!1920 (_2!2563 (v!14933 lt!132477))))))

(declare-fun lt!132461 () List!4071)

(assert (=> b!309633 (= lt!132461 (list!1713 (BalanceConc!2777 Empty!1384)))))

(declare-fun lt!132447 () List!4071)

(assert (=> b!309633 (= lt!132447 (list!1713 (charsOf!424 (_1!2563 (v!14933 lt!132477)))))))

(declare-fun lt!132449 () List!4071)

(assert (=> b!309633 (= lt!132449 (list!1713 (_2!2563 (v!14933 lt!132477))))))

(declare-fun lt!132459 () Unit!5690)

(assert (=> b!309633 (= lt!132459 (lemmaConcatAssociativity!488 lt!132461 lt!132447 lt!132449))))

(assert (=> b!309633 (= (++!1102 (++!1102 lt!132461 lt!132447) lt!132449) (++!1102 lt!132461 (++!1102 lt!132447 lt!132449)))))

(declare-fun lt!132456 () Unit!5690)

(assert (=> b!309633 (= lt!132456 lt!132459)))

(assert (=> b!309633 (= lt!132453 (maxPrefixZipperSequence!346 thiss!17480 rules!1920 (seqFromList!928 lt!131150)))))

(declare-fun c!58769 () Bool)

(assert (=> b!309633 (= c!58769 ((_ is Some!928) lt!132453))))

(assert (=> b!309633 (= (lexRec!101 thiss!17480 rules!1920 (seqFromList!928 lt!131150)) e!192548)))

(declare-fun lt!132467 () Unit!5690)

(declare-fun Unit!5720 () Unit!5690)

(assert (=> b!309633 (= lt!132467 Unit!5720)))

(declare-fun lt!132470 () List!4073)

(assert (=> b!309633 (= lt!132470 (list!1716 (BalanceConc!2779 Empty!1385)))))

(declare-fun lt!132455 () List!4073)

(assert (=> b!309633 (= lt!132455 (Cons!4063 (_1!2563 (v!14933 lt!132477)) Nil!4063))))

(declare-fun lt!132446 () List!4073)

(assert (=> b!309633 (= lt!132446 (list!1716 (_1!2562 lt!132458)))))

(declare-fun lt!132466 () Unit!5690)

(declare-fun lemmaConcatAssociativity!489 (List!4073 List!4073 List!4073) Unit!5690)

(assert (=> b!309633 (= lt!132466 (lemmaConcatAssociativity!489 lt!132470 lt!132455 lt!132446))))

(declare-fun ++!1107 (List!4073 List!4073) List!4073)

(assert (=> b!309633 (= (++!1107 (++!1107 lt!132470 lt!132455) lt!132446) (++!1107 lt!132470 (++!1107 lt!132455 lt!132446)))))

(declare-fun lt!132472 () Unit!5690)

(assert (=> b!309633 (= lt!132472 lt!132466)))

(declare-fun lt!132471 () List!4071)

(assert (=> b!309633 (= lt!132471 (++!1102 (list!1713 (BalanceConc!2777 Empty!1384)) (list!1713 (charsOf!424 (_1!2563 (v!14933 lt!132477))))))))

(declare-fun lt!132460 () List!4071)

(assert (=> b!309633 (= lt!132460 (list!1713 (_2!2563 (v!14933 lt!132477))))))

(declare-fun lt!132473 () List!4073)

(assert (=> b!309633 (= lt!132473 (list!1716 (append!108 (BalanceConc!2779 Empty!1385) (_1!2563 (v!14933 lt!132477)))))))

(declare-fun lt!132457 () Unit!5690)

(declare-fun lemmaLexThenLexPrefix!88 (LexerInterface!667 List!4072 List!4071 List!4071 List!4073 List!4073 List!4071) Unit!5690)

(assert (=> b!309633 (= lt!132457 (lemmaLexThenLexPrefix!88 thiss!17480 rules!1920 lt!132471 lt!132460 lt!132473 (list!1716 (_1!2562 lt!132458)) (list!1713 (_2!2562 lt!132458))))))

(assert (=> b!309633 (= (lexList!241 thiss!17480 rules!1920 lt!132471) (tuple2!4699 lt!132473 Nil!4061))))

(declare-fun lt!132464 () Unit!5690)

(assert (=> b!309633 (= lt!132464 lt!132457)))

(declare-fun lt!132450 () BalanceConc!2776)

(assert (=> b!309633 (= lt!132450 (++!1104 (BalanceConc!2777 Empty!1384) (charsOf!424 (_1!2563 (v!14933 lt!132477)))))))

(declare-fun lt!132474 () Option!929)

(assert (=> b!309633 (= lt!132474 (maxPrefixZipperSequence!346 thiss!17480 rules!1920 lt!132450))))

(declare-fun c!58770 () Bool)

(assert (=> b!309633 (= c!58770 ((_ is Some!928) lt!132474))))

(declare-fun e!192550 () tuple2!4692)

(assert (=> b!309633 (= (lexRec!101 thiss!17480 rules!1920 (++!1104 (BalanceConc!2777 Empty!1384) (charsOf!424 (_1!2563 (v!14933 lt!132477))))) e!192550)))

(declare-fun lt!132454 () Unit!5690)

(declare-fun Unit!5721 () Unit!5690)

(assert (=> b!309633 (= lt!132454 Unit!5721)))

(assert (=> b!309633 (= lt!132463 (++!1104 (BalanceConc!2777 Empty!1384) (charsOf!424 (_1!2563 (v!14933 lt!132477)))))))

(declare-fun lt!132448 () List!4071)

(assert (=> b!309633 (= lt!132448 (list!1713 lt!132463))))

(declare-fun lt!132475 () List!4071)

(assert (=> b!309633 (= lt!132475 (list!1713 (_2!2563 (v!14933 lt!132477))))))

(declare-fun lt!132468 () Unit!5690)

(assert (=> b!309633 (= lt!132468 (lemmaConcatTwoListThenFSndIsSuffix!86 lt!132448 lt!132475))))

(assert (=> b!309633 (isSuffix!86 lt!132475 (++!1102 lt!132448 lt!132475))))

(declare-fun lt!132479 () Unit!5690)

(assert (=> b!309633 (= lt!132479 lt!132468)))

(declare-fun b!309634 () Bool)

(assert (=> b!309634 (= e!192550 (tuple2!4693 (BalanceConc!2779 Empty!1385) lt!132450))))

(declare-fun lt!132469 () tuple2!4692)

(declare-fun b!309635 () Bool)

(assert (=> b!309635 (= lt!132469 (lexRec!101 thiss!17480 rules!1920 (_2!2563 (v!14933 lt!132474))))))

(assert (=> b!309635 (= e!192550 (tuple2!4693 (prepend!186 (_1!2562 lt!132469) (_1!2563 (v!14933 lt!132474))) (_2!2562 lt!132469)))))

(declare-fun b!309636 () Bool)

(assert (=> b!309636 (= e!192549 (tuple2!4693 (BalanceConc!2779 Empty!1385) (seqFromList!928 lt!131150)))))

(declare-fun b!309637 () Bool)

(assert (=> b!309637 (= e!192548 (tuple2!4693 (BalanceConc!2779 Empty!1385) (seqFromList!928 lt!131150)))))

(assert (= (and d!94848 c!58768) b!309633))

(assert (= (and d!94848 (not c!58768)) b!309636))

(assert (= (and b!309633 c!58769) b!309631))

(assert (= (and b!309633 (not c!58769)) b!309637))

(assert (= (and b!309633 c!58770) b!309635))

(assert (= (and b!309633 (not c!58770)) b!309634))

(assert (= (and d!94848 res!140800) b!309632))

(declare-fun m!414669 () Bool)

(assert (=> d!94848 m!414669))

(declare-fun m!414671 () Bool)

(assert (=> d!94848 m!414671))

(declare-fun m!414673 () Bool)

(assert (=> d!94848 m!414673))

(assert (=> d!94848 m!410235))

(assert (=> d!94848 m!410235))

(declare-fun m!414675 () Bool)

(assert (=> d!94848 m!414675))

(assert (=> d!94848 m!410235))

(assert (=> d!94848 m!411563))

(assert (=> d!94848 m!414671))

(declare-fun m!414677 () Bool)

(assert (=> d!94848 m!414677))

(assert (=> d!94848 m!410235))

(declare-fun m!414679 () Bool)

(assert (=> d!94848 m!414679))

(declare-fun m!414681 () Bool)

(assert (=> d!94848 m!414681))

(assert (=> d!94848 m!410717))

(assert (=> b!309633 m!410235))

(declare-fun m!414683 () Bool)

(assert (=> b!309633 m!414683))

(declare-fun m!414685 () Bool)

(assert (=> b!309633 m!414685))

(declare-fun m!414687 () Bool)

(assert (=> b!309633 m!414687))

(declare-fun m!414689 () Bool)

(assert (=> b!309633 m!414689))

(declare-fun m!414691 () Bool)

(assert (=> b!309633 m!414691))

(declare-fun m!414693 () Bool)

(assert (=> b!309633 m!414693))

(declare-fun m!414695 () Bool)

(assert (=> b!309633 m!414695))

(declare-fun m!414697 () Bool)

(assert (=> b!309633 m!414697))

(declare-fun m!414699 () Bool)

(assert (=> b!309633 m!414699))

(declare-fun m!414701 () Bool)

(assert (=> b!309633 m!414701))

(declare-fun m!414703 () Bool)

(assert (=> b!309633 m!414703))

(declare-fun m!414705 () Bool)

(assert (=> b!309633 m!414705))

(assert (=> b!309633 m!414703))

(assert (=> b!309633 m!414701))

(declare-fun m!414707 () Bool)

(assert (=> b!309633 m!414707))

(declare-fun m!414709 () Bool)

(assert (=> b!309633 m!414709))

(assert (=> b!309633 m!410717))

(assert (=> b!309633 m!414705))

(declare-fun m!414711 () Bool)

(assert (=> b!309633 m!414711))

(declare-fun m!414713 () Bool)

(assert (=> b!309633 m!414713))

(declare-fun m!414715 () Bool)

(assert (=> b!309633 m!414715))

(declare-fun m!414717 () Bool)

(assert (=> b!309633 m!414717))

(declare-fun m!414719 () Bool)

(assert (=> b!309633 m!414719))

(assert (=> b!309633 m!414691))

(declare-fun m!414721 () Bool)

(assert (=> b!309633 m!414721))

(assert (=> b!309633 m!414709))

(declare-fun m!414723 () Bool)

(assert (=> b!309633 m!414723))

(assert (=> b!309633 m!414703))

(assert (=> b!309633 m!414695))

(assert (=> b!309633 m!414715))

(declare-fun m!414725 () Bool)

(assert (=> b!309633 m!414725))

(declare-fun m!414727 () Bool)

(assert (=> b!309633 m!414727))

(declare-fun m!414729 () Bool)

(assert (=> b!309633 m!414729))

(assert (=> b!309633 m!414687))

(declare-fun m!414731 () Bool)

(assert (=> b!309633 m!414731))

(assert (=> b!309633 m!414713))

(declare-fun m!414733 () Bool)

(assert (=> b!309633 m!414733))

(declare-fun m!414735 () Bool)

(assert (=> b!309633 m!414735))

(assert (=> b!309633 m!414733))

(assert (=> b!309633 m!410235))

(assert (=> b!309633 m!414679))

(declare-fun m!414737 () Bool)

(assert (=> b!309633 m!414737))

(declare-fun m!414739 () Bool)

(assert (=> b!309633 m!414739))

(assert (=> b!309633 m!410717))

(assert (=> b!309633 m!410235))

(assert (=> b!309633 m!414715))

(declare-fun m!414741 () Bool)

(assert (=> b!309633 m!414741))

(assert (=> b!309633 m!414721))

(declare-fun m!414743 () Bool)

(assert (=> b!309633 m!414743))

(declare-fun m!414745 () Bool)

(assert (=> b!309631 m!414745))

(declare-fun m!414747 () Bool)

(assert (=> b!309631 m!414747))

(declare-fun m!414749 () Bool)

(assert (=> b!309635 m!414749))

(declare-fun m!414751 () Bool)

(assert (=> b!309635 m!414751))

(declare-fun m!414753 () Bool)

(assert (=> b!309632 m!414753))

(assert (=> b!309632 m!410235))

(assert (=> b!309632 m!414679))

(declare-fun m!414755 () Bool)

(assert (=> b!309632 m!414755))

(assert (=> d!94162 d!94848))

(declare-fun d!94970 () Bool)

(assert (=> d!94970 (= (list!1713 (_2!2562 lt!131580)) (list!1717 (c!58276 (_2!2562 lt!131580))))))

(declare-fun bs!35869 () Bool)

(assert (= bs!35869 d!94970))

(declare-fun m!414757 () Bool)

(assert (=> bs!35869 m!414757))

(assert (=> b!308264 d!94970))

(declare-fun b!309670 () Bool)

(declare-fun e!192573 () tuple2!4698)

(declare-fun lt!132494 () Option!928)

(declare-fun lt!132496 () tuple2!4698)

(assert (=> b!309670 (= e!192573 (tuple2!4699 (Cons!4063 (_1!2561 (v!14932 lt!132494)) (_1!2565 lt!132496)) (_2!2565 lt!132496)))))

(assert (=> b!309670 (= lt!132496 (lexList!241 thiss!17480 rules!1920 (_2!2561 (v!14932 lt!132494))))))

(declare-fun b!309671 () Bool)

(assert (=> b!309671 (= e!192573 (tuple2!4699 Nil!4063 (list!1713 (seqFromList!928 lt!131150))))))

(declare-fun b!309673 () Bool)

(declare-fun e!192571 () Bool)

(declare-fun e!192572 () Bool)

(assert (=> b!309673 (= e!192571 e!192572)))

(declare-fun res!140816 () Bool)

(declare-fun lt!132495 () tuple2!4698)

(assert (=> b!309673 (= res!140816 (< (size!3246 (_2!2565 lt!132495)) (size!3246 (list!1713 (seqFromList!928 lt!131150)))))))

(assert (=> b!309673 (=> (not res!140816) (not e!192572))))

(declare-fun b!309674 () Bool)

(assert (=> b!309674 (= e!192571 (= (_2!2565 lt!132495) (list!1713 (seqFromList!928 lt!131150))))))

(declare-fun b!309672 () Bool)

(assert (=> b!309672 (= e!192572 (not (isEmpty!2778 (_1!2565 lt!132495))))))

(declare-fun d!94972 () Bool)

(assert (=> d!94972 e!192571))

(declare-fun c!58778 () Bool)

(assert (=> d!94972 (= c!58778 (> (size!3253 (_1!2565 lt!132495)) 0))))

(assert (=> d!94972 (= lt!132495 e!192573)))

(declare-fun c!58779 () Bool)

(assert (=> d!94972 (= c!58779 ((_ is Some!927) lt!132494))))

(assert (=> d!94972 (= lt!132494 (maxPrefix!383 thiss!17480 rules!1920 (list!1713 (seqFromList!928 lt!131150))))))

(assert (=> d!94972 (= (lexList!241 thiss!17480 rules!1920 (list!1713 (seqFromList!928 lt!131150))) lt!132495)))

(assert (= (and d!94972 c!58779) b!309670))

(assert (= (and d!94972 (not c!58779)) b!309671))

(assert (= (and d!94972 c!58778) b!309673))

(assert (= (and d!94972 (not c!58778)) b!309674))

(assert (= (and b!309673 res!140816) b!309672))

(declare-fun m!414773 () Bool)

(assert (=> b!309670 m!414773))

(declare-fun m!414775 () Bool)

(assert (=> b!309673 m!414775))

(assert (=> b!309673 m!411563))

(declare-fun m!414777 () Bool)

(assert (=> b!309673 m!414777))

(declare-fun m!414779 () Bool)

(assert (=> b!309672 m!414779))

(declare-fun m!414781 () Bool)

(assert (=> d!94972 m!414781))

(assert (=> d!94972 m!411563))

(declare-fun m!414783 () Bool)

(assert (=> d!94972 m!414783))

(assert (=> b!308264 d!94972))

(declare-fun d!94982 () Bool)

(assert (=> d!94982 (= (list!1713 (seqFromList!928 lt!131150)) (list!1717 (c!58276 (seqFromList!928 lt!131150))))))

(declare-fun bs!35887 () Bool)

(assert (= bs!35887 d!94982))

(declare-fun m!414785 () Bool)

(assert (=> bs!35887 m!414785))

(assert (=> b!308264 d!94982))

(assert (=> bm!17918 d!94066))

(declare-fun d!94984 () Bool)

(declare-fun c!58780 () Bool)

(assert (=> d!94984 (= c!58780 ((_ is Node!1384) (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (value!26574 separatorToken!170)))))))

(declare-fun e!192574 () Bool)

(assert (=> d!94984 (= (inv!5019 (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (value!26574 separatorToken!170)))) e!192574)))

(declare-fun b!309675 () Bool)

(assert (=> b!309675 (= e!192574 (inv!5023 (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (value!26574 separatorToken!170)))))))

(declare-fun b!309676 () Bool)

(declare-fun e!192575 () Bool)

(assert (=> b!309676 (= e!192574 e!192575)))

(declare-fun res!140817 () Bool)

(assert (=> b!309676 (= res!140817 (not ((_ is Leaf!2114) (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (value!26574 separatorToken!170))))))))

(assert (=> b!309676 (=> res!140817 e!192575)))

(declare-fun b!309677 () Bool)

(assert (=> b!309677 (= e!192575 (inv!5024 (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (value!26574 separatorToken!170)))))))

(assert (= (and d!94984 c!58780) b!309675))

(assert (= (and d!94984 (not c!58780)) b!309676))

(assert (= (and b!309676 (not res!140817)) b!309677))

(declare-fun m!414793 () Bool)

(assert (=> b!309675 m!414793))

(declare-fun m!414795 () Bool)

(assert (=> b!309677 m!414795))

(assert (=> b!307643 d!94984))

(declare-fun d!94986 () Bool)

(declare-fun lt!132497 () Int)

(assert (=> d!94986 (>= lt!132497 0)))

(declare-fun e!192576 () Int)

(assert (=> d!94986 (= lt!132497 e!192576)))

(declare-fun c!58781 () Bool)

(assert (=> d!94986 (= c!58781 ((_ is Nil!4061) (_2!2561 (get!1388 lt!131185))))))

(assert (=> d!94986 (= (size!3246 (_2!2561 (get!1388 lt!131185))) lt!132497)))

(declare-fun b!309678 () Bool)

(assert (=> b!309678 (= e!192576 0)))

(declare-fun b!309679 () Bool)

(assert (=> b!309679 (= e!192576 (+ 1 (size!3246 (t!43303 (_2!2561 (get!1388 lt!131185))))))))

(assert (= (and d!94986 c!58781) b!309678))

(assert (= (and d!94986 (not c!58781)) b!309679))

(declare-fun m!414803 () Bool)

(assert (=> b!309679 m!414803))

(assert (=> b!307549 d!94986))

(assert (=> b!307549 d!94722))

(assert (=> b!307549 d!94752))

(assert (=> bs!35622 d!93940))

(declare-fun d!94988 () Bool)

(declare-fun lt!132498 () BalanceConc!2776)

(assert (=> d!94988 (= (list!1713 lt!132498) (printList!341 thiss!17480 (list!1716 (singletonSeq!327 (h!9460 (t!43305 tokens!465))))))))

(assert (=> d!94988 (= lt!132498 (printTailRec!353 thiss!17480 (singletonSeq!327 (h!9460 (t!43305 tokens!465))) 0 (BalanceConc!2777 Empty!1384)))))

(assert (=> d!94988 (= (print!392 thiss!17480 (singletonSeq!327 (h!9460 (t!43305 tokens!465)))) lt!132498)))

(declare-fun bs!35888 () Bool)

(assert (= bs!35888 d!94988))

(declare-fun m!414813 () Bool)

(assert (=> bs!35888 m!414813))

(assert (=> bs!35888 m!410905))

(declare-fun m!414815 () Bool)

(assert (=> bs!35888 m!414815))

(assert (=> bs!35888 m!414815))

(declare-fun m!414817 () Bool)

(assert (=> bs!35888 m!414817))

(assert (=> bs!35888 m!410905))

(assert (=> bs!35888 m!410909))

(assert (=> b!307893 d!94988))

(declare-fun d!94990 () Bool)

(declare-fun e!192577 () Bool)

(assert (=> d!94990 e!192577))

(declare-fun res!140818 () Bool)

(assert (=> d!94990 (=> (not res!140818) (not e!192577))))

(declare-fun lt!132499 () BalanceConc!2778)

(assert (=> d!94990 (= res!140818 (= (list!1716 lt!132499) (Cons!4063 (h!9460 (t!43305 tokens!465)) Nil!4063)))))

(assert (=> d!94990 (= lt!132499 (singleton!146 (h!9460 (t!43305 tokens!465))))))

(assert (=> d!94990 (= (singletonSeq!327 (h!9460 (t!43305 tokens!465))) lt!132499)))

(declare-fun b!309680 () Bool)

(assert (=> b!309680 (= e!192577 (isBalanced!395 (c!58278 lt!132499)))))

(assert (= (and d!94990 res!140818) b!309680))

(declare-fun m!414825 () Bool)

(assert (=> d!94990 m!414825))

(declare-fun m!414827 () Bool)

(assert (=> d!94990 m!414827))

(declare-fun m!414829 () Bool)

(assert (=> b!309680 m!414829))

(assert (=> b!307893 d!94990))

(declare-fun d!94994 () Bool)

(declare-fun lt!132506 () BalanceConc!2776)

(assert (=> d!94994 (= (list!1713 lt!132506) (printListTailRec!161 thiss!17480 (dropList!196 (singletonSeq!327 (h!9460 (t!43305 tokens!465))) 0) (list!1713 (BalanceConc!2777 Empty!1384))))))

(declare-fun e!192580 () BalanceConc!2776)

(assert (=> d!94994 (= lt!132506 e!192580)))

(declare-fun c!58782 () Bool)

(assert (=> d!94994 (= c!58782 (>= 0 (size!3247 (singletonSeq!327 (h!9460 (t!43305 tokens!465))))))))

(declare-fun e!192581 () Bool)

(assert (=> d!94994 e!192581))

(declare-fun res!140821 () Bool)

(assert (=> d!94994 (=> (not res!140821) (not e!192581))))

(assert (=> d!94994 (= res!140821 (>= 0 0))))

(assert (=> d!94994 (= (printTailRec!353 thiss!17480 (singletonSeq!327 (h!9460 (t!43305 tokens!465))) 0 (BalanceConc!2777 Empty!1384)) lt!132506)))

(declare-fun b!309683 () Bool)

(assert (=> b!309683 (= e!192581 (<= 0 (size!3247 (singletonSeq!327 (h!9460 (t!43305 tokens!465))))))))

(declare-fun b!309684 () Bool)

(assert (=> b!309684 (= e!192580 (BalanceConc!2777 Empty!1384))))

(declare-fun b!309685 () Bool)

(assert (=> b!309685 (= e!192580 (printTailRec!353 thiss!17480 (singletonSeq!327 (h!9460 (t!43305 tokens!465))) (+ 0 1) (++!1104 (BalanceConc!2777 Empty!1384) (charsOf!424 (apply!892 (singletonSeq!327 (h!9460 (t!43305 tokens!465))) 0)))))))

(declare-fun lt!132503 () List!4073)

(assert (=> b!309685 (= lt!132503 (list!1716 (singletonSeq!327 (h!9460 (t!43305 tokens!465)))))))

(declare-fun lt!132504 () Unit!5690)

(assert (=> b!309685 (= lt!132504 (lemmaDropApply!236 lt!132503 0))))

(assert (=> b!309685 (= (head!966 (drop!251 lt!132503 0)) (apply!894 lt!132503 0))))

(declare-fun lt!132507 () Unit!5690)

(assert (=> b!309685 (= lt!132507 lt!132504)))

(declare-fun lt!132502 () List!4073)

(assert (=> b!309685 (= lt!132502 (list!1716 (singletonSeq!327 (h!9460 (t!43305 tokens!465)))))))

(declare-fun lt!132501 () Unit!5690)

(assert (=> b!309685 (= lt!132501 (lemmaDropTail!228 lt!132502 0))))

(assert (=> b!309685 (= (tail!541 (drop!251 lt!132502 0)) (drop!251 lt!132502 (+ 0 1)))))

(declare-fun lt!132505 () Unit!5690)

(assert (=> b!309685 (= lt!132505 lt!132501)))

(assert (= (and d!94994 res!140821) b!309683))

(assert (= (and d!94994 c!58782) b!309684))

(assert (= (and d!94994 (not c!58782)) b!309685))

(assert (=> d!94994 m!410717))

(assert (=> d!94994 m!410905))

(declare-fun m!414837 () Bool)

(assert (=> d!94994 m!414837))

(assert (=> d!94994 m!410905))

(declare-fun m!414839 () Bool)

(assert (=> d!94994 m!414839))

(declare-fun m!414841 () Bool)

(assert (=> d!94994 m!414841))

(assert (=> d!94994 m!414837))

(assert (=> d!94994 m!410717))

(declare-fun m!414843 () Bool)

(assert (=> d!94994 m!414843))

(assert (=> b!309683 m!410905))

(assert (=> b!309683 m!414839))

(assert (=> b!309685 m!410905))

(declare-fun m!414845 () Bool)

(assert (=> b!309685 m!414845))

(declare-fun m!414847 () Bool)

(assert (=> b!309685 m!414847))

(declare-fun m!414849 () Bool)

(assert (=> b!309685 m!414849))

(declare-fun m!414851 () Bool)

(assert (=> b!309685 m!414851))

(assert (=> b!309685 m!410905))

(declare-fun m!414853 () Bool)

(assert (=> b!309685 m!414853))

(assert (=> b!309685 m!410905))

(assert (=> b!309685 m!414815))

(assert (=> b!309685 m!414853))

(declare-fun m!414855 () Bool)

(assert (=> b!309685 m!414855))

(declare-fun m!414857 () Bool)

(assert (=> b!309685 m!414857))

(assert (=> b!309685 m!414849))

(declare-fun m!414859 () Bool)

(assert (=> b!309685 m!414859))

(assert (=> b!309685 m!414855))

(assert (=> b!309685 m!414845))

(declare-fun m!414861 () Bool)

(assert (=> b!309685 m!414861))

(declare-fun m!414863 () Bool)

(assert (=> b!309685 m!414863))

(declare-fun m!414865 () Bool)

(assert (=> b!309685 m!414865))

(assert (=> b!309685 m!414857))

(declare-fun m!414867 () Bool)

(assert (=> b!309685 m!414867))

(assert (=> b!307893 d!94994))

(declare-fun b!309704 () Bool)

(declare-fun e!192590 () Unit!5690)

(declare-fun Unit!5724 () Unit!5690)

(assert (=> b!309704 (= e!192590 Unit!5724)))

(declare-fun lt!132514 () List!4071)

(assert (=> b!309704 (= lt!132514 (++!1102 call!17888 lt!131385))))

(declare-fun lt!132523 () Token!1306)

(declare-fun lt!132518 () Unit!5690)

(assert (=> b!309704 (= lt!132518 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!68 thiss!17480 (rule!1394 lt!132523) rules!1920 lt!132514))))

(assert (=> b!309704 (isEmpty!2779 (maxPrefixOneRule!172 thiss!17480 (rule!1394 lt!132523) lt!132514))))

(declare-fun lt!132526 () Unit!5690)

(assert (=> b!309704 (= lt!132526 lt!132518)))

(declare-fun lt!132521 () List!4071)

(assert (=> b!309704 (= lt!132521 (list!1713 (charsOf!424 lt!132523)))))

(declare-fun lt!132524 () Unit!5690)

(assert (=> b!309704 (= lt!132524 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!68 thiss!17480 (rule!1394 lt!132523) lt!132521 (++!1102 call!17888 lt!131385)))))

(assert (=> b!309704 (not (matchR!323 (regex!781 (rule!1394 lt!132523)) lt!132521))))

(declare-fun lt!132522 () Unit!5690)

(assert (=> b!309704 (= lt!132522 lt!132524)))

(assert (=> b!309704 false))

(declare-fun e!192591 () Bool)

(declare-fun b!309703 () Bool)

(assert (=> b!309703 (= e!192591 (= (rule!1394 lt!132523) (get!1392 (getRuleFromTag!144 thiss!17480 rules!1920 (tag!999 (rule!1394 lt!132523))))))))

(declare-fun b!309702 () Bool)

(declare-fun res!140830 () Bool)

(assert (=> b!309702 (=> (not res!140830) (not e!192591))))

(assert (=> b!309702 (= res!140830 (matchR!323 (regex!781 (get!1392 (getRuleFromTag!144 thiss!17480 rules!1920 (tag!999 (rule!1394 lt!132523))))) (list!1713 (charsOf!424 lt!132523))))))

(declare-fun d!95000 () Bool)

(assert (=> d!95000 (isDefined!767 (maxPrefix!383 thiss!17480 rules!1920 (++!1102 call!17888 lt!131385)))))

(declare-fun lt!132515 () Unit!5690)

(assert (=> d!95000 (= lt!132515 e!192590)))

(declare-fun c!58787 () Bool)

(assert (=> d!95000 (= c!58787 (isEmpty!2779 (maxPrefix!383 thiss!17480 rules!1920 (++!1102 call!17888 lt!131385))))))

(declare-fun lt!132525 () Unit!5690)

(declare-fun lt!132512 () Unit!5690)

(assert (=> d!95000 (= lt!132525 lt!132512)))

(assert (=> d!95000 e!192591))

(declare-fun res!140831 () Bool)

(assert (=> d!95000 (=> (not res!140831) (not e!192591))))

(assert (=> d!95000 (= res!140831 (isDefined!770 (getRuleFromTag!144 thiss!17480 rules!1920 (tag!999 (rule!1394 lt!132523)))))))

(assert (=> d!95000 (= lt!132512 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!144 thiss!17480 rules!1920 call!17888 lt!132523))))

(declare-fun lt!132516 () Unit!5690)

(declare-fun lt!132511 () Unit!5690)

(assert (=> d!95000 (= lt!132516 lt!132511)))

(declare-fun lt!132517 () List!4071)

(assert (=> d!95000 (isPrefix!441 lt!132517 (++!1102 call!17888 lt!131385))))

(assert (=> d!95000 (= lt!132511 (lemmaPrefixStaysPrefixWhenAddingToSuffix!68 lt!132517 call!17888 lt!131385))))

(assert (=> d!95000 (= lt!132517 (list!1713 (charsOf!424 lt!132523)))))

(declare-fun lt!132510 () Unit!5690)

(declare-fun lt!132513 () Unit!5690)

(assert (=> d!95000 (= lt!132510 lt!132513)))

(declare-fun lt!132520 () List!4071)

(declare-fun lt!132519 () List!4071)

(assert (=> d!95000 (isPrefix!441 lt!132520 (++!1102 lt!132520 lt!132519))))

(assert (=> d!95000 (= lt!132513 (lemmaConcatTwoListThenFirstIsPrefix!332 lt!132520 lt!132519))))

(assert (=> d!95000 (= lt!132519 (_2!2561 (get!1388 (maxPrefix!383 thiss!17480 rules!1920 call!17888))))))

(assert (=> d!95000 (= lt!132520 (list!1713 (charsOf!424 lt!132523)))))

(assert (=> d!95000 (= lt!132523 (head!966 (list!1716 (_1!2562 (lex!459 thiss!17480 rules!1920 (seqFromList!928 call!17888))))))))

(assert (=> d!95000 (not (isEmpty!2776 rules!1920))))

(assert (=> d!95000 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!144 thiss!17480 rules!1920 call!17888 lt!131385) lt!132515)))

(declare-fun b!309705 () Bool)

(declare-fun Unit!5725 () Unit!5690)

(assert (=> b!309705 (= e!192590 Unit!5725)))

(assert (= (and d!95000 res!140831) b!309702))

(assert (= (and b!309702 res!140830) b!309703))

(assert (= (and d!95000 c!58787) b!309704))

(assert (= (and d!95000 (not c!58787)) b!309705))

(declare-fun m!414891 () Bool)

(assert (=> b!309704 m!414891))

(declare-fun m!414895 () Bool)

(assert (=> b!309704 m!414895))

(declare-fun m!414897 () Bool)

(assert (=> b!309704 m!414897))

(assert (=> b!309704 m!414895))

(declare-fun m!414899 () Bool)

(assert (=> b!309704 m!414899))

(assert (=> b!309704 m!414891))

(declare-fun m!414901 () Bool)

(assert (=> b!309704 m!414901))

(declare-fun m!414903 () Bool)

(assert (=> b!309704 m!414903))

(declare-fun m!414905 () Bool)

(assert (=> b!309704 m!414905))

(declare-fun m!414907 () Bool)

(assert (=> b!309704 m!414907))

(assert (=> b!309704 m!414905))

(declare-fun m!414909 () Bool)

(assert (=> b!309703 m!414909))

(assert (=> b!309703 m!414909))

(declare-fun m!414911 () Bool)

(assert (=> b!309703 m!414911))

(assert (=> b!309702 m!414899))

(declare-fun m!414913 () Bool)

(assert (=> b!309702 m!414913))

(assert (=> b!309702 m!414895))

(assert (=> b!309702 m!414895))

(assert (=> b!309702 m!414899))

(assert (=> b!309702 m!414909))

(assert (=> b!309702 m!414909))

(assert (=> b!309702 m!414911))

(declare-fun m!414915 () Bool)

(assert (=> d!95000 m!414915))

(declare-fun m!414917 () Bool)

(assert (=> d!95000 m!414917))

(assert (=> d!95000 m!414891))

(declare-fun m!414919 () Bool)

(assert (=> d!95000 m!414919))

(declare-fun m!414921 () Bool)

(assert (=> d!95000 m!414921))

(declare-fun m!414923 () Bool)

(assert (=> d!95000 m!414923))

(declare-fun m!414925 () Bool)

(assert (=> d!95000 m!414925))

(declare-fun m!414927 () Bool)

(assert (=> d!95000 m!414927))

(assert (=> d!95000 m!414925))

(declare-fun m!414931 () Bool)

(assert (=> d!95000 m!414931))

(assert (=> d!95000 m!414895))

(assert (=> d!95000 m!410327))

(assert (=> d!95000 m!414915))

(declare-fun m!414937 () Bool)

(assert (=> d!95000 m!414937))

(declare-fun m!414939 () Bool)

(assert (=> d!95000 m!414939))

(assert (=> d!95000 m!414895))

(assert (=> d!95000 m!414899))

(assert (=> d!95000 m!414909))

(declare-fun m!414941 () Bool)

(assert (=> d!95000 m!414941))

(assert (=> d!95000 m!414941))

(declare-fun m!414943 () Bool)

(assert (=> d!95000 m!414943))

(assert (=> d!95000 m!414891))

(assert (=> d!95000 m!414925))

(assert (=> d!95000 m!414921))

(assert (=> d!95000 m!414919))

(declare-fun m!414945 () Bool)

(assert (=> d!95000 m!414945))

(assert (=> d!95000 m!414891))

(declare-fun m!414947 () Bool)

(assert (=> d!95000 m!414947))

(declare-fun m!414949 () Bool)

(assert (=> d!95000 m!414949))

(assert (=> d!95000 m!414909))

(declare-fun m!414951 () Bool)

(assert (=> d!95000 m!414951))

(assert (=> b!307893 d!95000))

(declare-fun d!95010 () Bool)

(assert (=> d!95010 (= (isEmpty!2775 (originalCharacters!824 (h!9460 tokens!465))) ((_ is Nil!4061) (originalCharacters!824 (h!9460 tokens!465))))))

(assert (=> d!93920 d!95010))

(assert (=> b!308238 d!94842))

(declare-fun bs!35889 () Bool)

(declare-fun d!95012 () Bool)

(assert (= bs!35889 (and d!95012 d!94562)))

(declare-fun lambda!10574 () Int)

(assert (=> bs!35889 (= (and (= (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465))))) (= (toValue!1540 (transformation!781 (rule!1394 separatorToken!170))) (toValue!1540 (transformation!781 (rule!1394 (h!9460 tokens!465)))))) (= lambda!10574 lambda!10555))))

(declare-fun bs!35890 () Bool)

(assert (= bs!35890 (and d!95012 d!94814)))

(assert (=> bs!35890 (= (and (= (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (toChars!1399 (transformation!781 (h!9459 rules!1920)))) (= (toValue!1540 (transformation!781 (rule!1394 separatorToken!170))) (toValue!1540 (transformation!781 (h!9459 rules!1920))))) (= lambda!10574 lambda!10567))))

(assert (=> d!95012 true))

(assert (=> d!95012 (< (dynLambda!2221 order!3301 (toChars!1399 (transformation!781 (rule!1394 separatorToken!170)))) (dynLambda!2230 order!3309 lambda!10574))))

(assert (=> d!95012 true))

(assert (=> d!95012 (< (dynLambda!2219 order!3297 (toValue!1540 (transformation!781 (rule!1394 separatorToken!170)))) (dynLambda!2230 order!3309 lambda!10574))))

(assert (=> d!95012 (= (semiInverseModEq!293 (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (toValue!1540 (transformation!781 (rule!1394 separatorToken!170)))) (Forall!184 lambda!10574))))

(declare-fun bs!35891 () Bool)

(assert (= bs!35891 d!95012))

(declare-fun m!414983 () Bool)

(assert (=> bs!35891 m!414983))

(assert (=> d!94158 d!95012))

(declare-fun d!95018 () Bool)

(declare-fun lt!132530 () Bool)

(assert (=> d!95018 (= lt!132530 (select (content!608 tokens!465) (h!9460 tokens!465)))))

(declare-fun e!192601 () Bool)

(assert (=> d!95018 (= lt!132530 e!192601)))

(declare-fun res!140842 () Bool)

(assert (=> d!95018 (=> (not res!140842) (not e!192601))))

(assert (=> d!95018 (= res!140842 ((_ is Cons!4063) tokens!465))))

(assert (=> d!95018 (= (contains!803 tokens!465 (h!9460 tokens!465)) lt!132530)))

(declare-fun b!309723 () Bool)

(declare-fun e!192600 () Bool)

(assert (=> b!309723 (= e!192601 e!192600)))

(declare-fun res!140841 () Bool)

(assert (=> b!309723 (=> res!140841 e!192600)))

(assert (=> b!309723 (= res!140841 (= (h!9460 tokens!465) (h!9460 tokens!465)))))

(declare-fun b!309724 () Bool)

(assert (=> b!309724 (= e!192600 (contains!803 (t!43305 tokens!465) (h!9460 tokens!465)))))

(assert (= (and d!95018 res!140842) b!309723))

(assert (= (and b!309723 (not res!140841)) b!309724))

(assert (=> d!95018 m!411291))

(declare-fun m!414991 () Bool)

(assert (=> d!95018 m!414991))

(declare-fun m!414993 () Bool)

(assert (=> b!309724 m!414993))

(assert (=> b!307726 d!95018))

(assert (=> b!308066 d!94766))

(declare-fun d!95024 () Bool)

(assert (=> d!95024 (= (apply!891 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131530)))) (seqFromList!928 (originalCharacters!824 (_1!2561 (get!1388 lt!131530))))) (dynLambda!2231 (toValue!1540 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131530))))) (seqFromList!928 (originalCharacters!824 (_1!2561 (get!1388 lt!131530))))))))

(declare-fun b_lambda!10781 () Bool)

(assert (=> (not b_lambda!10781) (not d!95024)))

(declare-fun t!43594 () Bool)

(declare-fun tb!19595 () Bool)

(assert (=> (and b!307444 (= (toValue!1540 (transformation!781 (h!9459 rules!1920))) (toValue!1540 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131530)))))) t!43594) tb!19595))

(declare-fun result!23602 () Bool)

(assert (=> tb!19595 (= result!23602 (inv!21 (dynLambda!2231 (toValue!1540 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131530))))) (seqFromList!928 (originalCharacters!824 (_1!2561 (get!1388 lt!131530)))))))))

(declare-fun m!415005 () Bool)

(assert (=> tb!19595 m!415005))

(assert (=> d!95024 t!43594))

(declare-fun b_and!26261 () Bool)

(assert (= b_and!26187 (and (=> t!43594 result!23602) b_and!26261)))

(declare-fun tb!19597 () Bool)

(declare-fun t!43596 () Bool)

(assert (=> (and b!307455 (= (toValue!1540 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (toValue!1540 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131530)))))) t!43596) tb!19597))

(declare-fun result!23604 () Bool)

(assert (= result!23604 result!23602))

(assert (=> d!95024 t!43596))

(declare-fun b_and!26263 () Bool)

(assert (= b_and!26185 (and (=> t!43596 result!23604) b_and!26263)))

(declare-fun tb!19599 () Bool)

(declare-fun t!43598 () Bool)

(assert (=> (and b!308316 (= (toValue!1540 (transformation!781 (h!9459 (t!43304 rules!1920)))) (toValue!1540 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131530)))))) t!43598) tb!19599))

(declare-fun result!23606 () Bool)

(assert (= result!23606 result!23602))

(assert (=> d!95024 t!43598))

(declare-fun b_and!26265 () Bool)

(assert (= b_and!26189 (and (=> t!43598 result!23606) b_and!26265)))

(declare-fun t!43600 () Bool)

(declare-fun tb!19601 () Bool)

(assert (=> (and b!308288 (= (toValue!1540 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))) (toValue!1540 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131530)))))) t!43600) tb!19601))

(declare-fun result!23608 () Bool)

(assert (= result!23608 result!23602))

(assert (=> d!95024 t!43600))

(declare-fun b_and!26267 () Bool)

(assert (= b_and!26181 (and (=> t!43600 result!23608) b_and!26267)))

(declare-fun tb!19603 () Bool)

(declare-fun t!43602 () Bool)

(assert (=> (and b!307440 (= (toValue!1540 (transformation!781 (rule!1394 separatorToken!170))) (toValue!1540 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131530)))))) t!43602) tb!19603))

(declare-fun result!23610 () Bool)

(assert (= result!23610 result!23602))

(assert (=> d!95024 t!43602))

(declare-fun b_and!26269 () Bool)

(assert (= b_and!26183 (and (=> t!43602 result!23610) b_and!26269)))

(assert (=> d!95024 m!411319))

(declare-fun m!415021 () Bool)

(assert (=> d!95024 m!415021))

(assert (=> b!308066 d!95024))

(declare-fun d!95034 () Bool)

(assert (=> d!95034 (= (seqFromList!928 (originalCharacters!824 (_1!2561 (get!1388 lt!131530)))) (fromListB!387 (originalCharacters!824 (_1!2561 (get!1388 lt!131530)))))))

(declare-fun bs!35895 () Bool)

(assert (= bs!35895 d!95034))

(declare-fun m!415025 () Bool)

(assert (=> bs!35895 m!415025))

(assert (=> b!308066 d!95034))

(declare-fun d!95038 () Bool)

(assert (=> d!95038 (= (inv!5012 (tag!999 (h!9459 (t!43304 rules!1920)))) (= (mod (str.len (value!26573 (tag!999 (h!9459 (t!43304 rules!1920))))) 2) 0))))

(assert (=> b!308315 d!95038))

(declare-fun d!95040 () Bool)

(declare-fun res!140848 () Bool)

(declare-fun e!192609 () Bool)

(assert (=> d!95040 (=> (not res!140848) (not e!192609))))

(assert (=> d!95040 (= res!140848 (semiInverseModEq!293 (toChars!1399 (transformation!781 (h!9459 (t!43304 rules!1920)))) (toValue!1540 (transformation!781 (h!9459 (t!43304 rules!1920))))))))

(assert (=> d!95040 (= (inv!5015 (transformation!781 (h!9459 (t!43304 rules!1920)))) e!192609)))

(declare-fun b!309736 () Bool)

(assert (=> b!309736 (= e!192609 (equivClasses!276 (toChars!1399 (transformation!781 (h!9459 (t!43304 rules!1920)))) (toValue!1540 (transformation!781 (h!9459 (t!43304 rules!1920))))))))

(assert (= (and d!95040 res!140848) b!309736))

(declare-fun m!415029 () Bool)

(assert (=> d!95040 m!415029))

(declare-fun m!415031 () Bool)

(assert (=> b!309736 m!415031))

(assert (=> b!308315 d!95040))

(declare-fun b!309741 () Bool)

(declare-fun e!192615 () Bool)

(assert (=> b!309741 (= e!192615 (matchR!323 (regex!781 (h!9459 rules!1920)) (_1!2567 (findLongestMatchInner!86 (regex!781 (h!9459 rules!1920)) Nil!4061 (size!3246 Nil!4061) lt!131156 lt!131156 (size!3246 lt!131156)))))))

(declare-fun b!309742 () Bool)

(declare-fun e!192614 () Option!928)

(declare-fun lt!132540 () tuple2!4702)

(assert (=> b!309742 (= e!192614 (Some!927 (tuple2!4691 (Token!1307 (apply!891 (transformation!781 (h!9459 rules!1920)) (seqFromList!928 (_1!2567 lt!132540))) (h!9459 rules!1920) (size!3249 (seqFromList!928 (_1!2567 lt!132540))) (_1!2567 lt!132540)) (_2!2567 lt!132540))))))

(declare-fun lt!132538 () Unit!5690)

(assert (=> b!309742 (= lt!132538 (longestMatchIsAcceptedByMatchOrIsEmpty!70 (regex!781 (h!9459 rules!1920)) lt!131156))))

(declare-fun res!140858 () Bool)

(assert (=> b!309742 (= res!140858 (isEmpty!2775 (_1!2567 (findLongestMatchInner!86 (regex!781 (h!9459 rules!1920)) Nil!4061 (size!3246 Nil!4061) lt!131156 lt!131156 (size!3246 lt!131156)))))))

(assert (=> b!309742 (=> res!140858 e!192615)))

(assert (=> b!309742 e!192615))

(declare-fun lt!132536 () Unit!5690)

(assert (=> b!309742 (= lt!132536 lt!132538)))

(declare-fun lt!132537 () Unit!5690)

(assert (=> b!309742 (= lt!132537 (lemmaSemiInverse!64 (transformation!781 (h!9459 rules!1920)) (seqFromList!928 (_1!2567 lt!132540))))))

(declare-fun b!309743 () Bool)

(declare-fun e!192613 () Bool)

(declare-fun lt!132539 () Option!928)

(assert (=> b!309743 (= e!192613 (= (size!3243 (_1!2561 (get!1388 lt!132539))) (size!3246 (originalCharacters!824 (_1!2561 (get!1388 lt!132539))))))))

(declare-fun b!309744 () Bool)

(declare-fun res!140859 () Bool)

(assert (=> b!309744 (=> (not res!140859) (not e!192613))))

(assert (=> b!309744 (= res!140859 (= (++!1102 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!132539)))) (_2!2561 (get!1388 lt!132539))) lt!131156))))

(declare-fun b!309746 () Bool)

(declare-fun res!140856 () Bool)

(assert (=> b!309746 (=> (not res!140856) (not e!192613))))

(assert (=> b!309746 (= res!140856 (= (value!26574 (_1!2561 (get!1388 lt!132539))) (apply!891 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!132539)))) (seqFromList!928 (originalCharacters!824 (_1!2561 (get!1388 lt!132539)))))))))

(declare-fun b!309747 () Bool)

(assert (=> b!309747 (= e!192614 None!927)))

(declare-fun b!309748 () Bool)

(declare-fun res!140854 () Bool)

(assert (=> b!309748 (=> (not res!140854) (not e!192613))))

(assert (=> b!309748 (= res!140854 (= (rule!1394 (_1!2561 (get!1388 lt!132539))) (h!9459 rules!1920)))))

(declare-fun b!309749 () Bool)

(declare-fun e!192616 () Bool)

(assert (=> b!309749 (= e!192616 e!192613)))

(declare-fun res!140857 () Bool)

(assert (=> b!309749 (=> (not res!140857) (not e!192613))))

(assert (=> b!309749 (= res!140857 (matchR!323 (regex!781 (h!9459 rules!1920)) (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!132539))))))))

(declare-fun b!309745 () Bool)

(declare-fun res!140853 () Bool)

(assert (=> b!309745 (=> (not res!140853) (not e!192613))))

(assert (=> b!309745 (= res!140853 (< (size!3246 (_2!2561 (get!1388 lt!132539))) (size!3246 lt!131156)))))

(declare-fun d!95044 () Bool)

(assert (=> d!95044 e!192616))

(declare-fun res!140855 () Bool)

(assert (=> d!95044 (=> res!140855 e!192616)))

(assert (=> d!95044 (= res!140855 (isEmpty!2779 lt!132539))))

(assert (=> d!95044 (= lt!132539 e!192614)))

(declare-fun c!58795 () Bool)

(assert (=> d!95044 (= c!58795 (isEmpty!2775 (_1!2567 lt!132540)))))

(assert (=> d!95044 (= lt!132540 (findLongestMatch!66 (regex!781 (h!9459 rules!1920)) lt!131156))))

(assert (=> d!95044 (ruleValid!100 thiss!17480 (h!9459 rules!1920))))

(assert (=> d!95044 (= (maxPrefixOneRule!172 thiss!17480 (h!9459 rules!1920) lt!131156) lt!132539)))

(assert (= (and d!95044 c!58795) b!309747))

(assert (= (and d!95044 (not c!58795)) b!309742))

(assert (= (and b!309742 (not res!140858)) b!309741))

(assert (= (and d!95044 (not res!140855)) b!309749))

(assert (= (and b!309749 res!140857) b!309744))

(assert (= (and b!309744 res!140859) b!309745))

(assert (= (and b!309745 res!140853) b!309748))

(assert (= (and b!309748 res!140854) b!309746))

(assert (= (and b!309746 res!140856) b!309743))

(declare-fun m!415057 () Bool)

(assert (=> b!309743 m!415057))

(declare-fun m!415059 () Bool)

(assert (=> b!309743 m!415059))

(assert (=> b!309742 m!413361))

(assert (=> b!309742 m!413361))

(assert (=> b!309742 m!410459))

(declare-fun m!415061 () Bool)

(assert (=> b!309742 m!415061))

(assert (=> b!309742 m!410459))

(declare-fun m!415063 () Bool)

(assert (=> b!309742 m!415063))

(declare-fun m!415065 () Bool)

(assert (=> b!309742 m!415065))

(declare-fun m!415067 () Bool)

(assert (=> b!309742 m!415067))

(assert (=> b!309742 m!415065))

(declare-fun m!415069 () Bool)

(assert (=> b!309742 m!415069))

(assert (=> b!309742 m!415065))

(declare-fun m!415071 () Bool)

(assert (=> b!309742 m!415071))

(assert (=> b!309742 m!415065))

(declare-fun m!415073 () Bool)

(assert (=> b!309742 m!415073))

(assert (=> b!309744 m!415057))

(declare-fun m!415075 () Bool)

(assert (=> b!309744 m!415075))

(assert (=> b!309744 m!415075))

(declare-fun m!415077 () Bool)

(assert (=> b!309744 m!415077))

(assert (=> b!309744 m!415077))

(declare-fun m!415079 () Bool)

(assert (=> b!309744 m!415079))

(assert (=> b!309748 m!415057))

(declare-fun m!415081 () Bool)

(assert (=> d!95044 m!415081))

(declare-fun m!415083 () Bool)

(assert (=> d!95044 m!415083))

(declare-fun m!415085 () Bool)

(assert (=> d!95044 m!415085))

(assert (=> d!95044 m!413415))

(assert (=> b!309741 m!413361))

(assert (=> b!309741 m!410459))

(assert (=> b!309741 m!413361))

(assert (=> b!309741 m!410459))

(assert (=> b!309741 m!415061))

(declare-fun m!415087 () Bool)

(assert (=> b!309741 m!415087))

(assert (=> b!309749 m!415057))

(assert (=> b!309749 m!415075))

(assert (=> b!309749 m!415075))

(assert (=> b!309749 m!415077))

(assert (=> b!309749 m!415077))

(declare-fun m!415089 () Bool)

(assert (=> b!309749 m!415089))

(assert (=> b!309746 m!415057))

(declare-fun m!415091 () Bool)

(assert (=> b!309746 m!415091))

(assert (=> b!309746 m!415091))

(declare-fun m!415093 () Bool)

(assert (=> b!309746 m!415093))

(assert (=> b!309745 m!415057))

(declare-fun m!415095 () Bool)

(assert (=> b!309745 m!415095))

(assert (=> b!309745 m!410459))

(assert (=> bm!17827 d!95044))

(declare-fun d!95054 () Bool)

(assert (=> d!95054 (= (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131185)))) (list!1717 (c!58276 (charsOf!424 (_1!2561 (get!1388 lt!131185))))))))

(declare-fun bs!35901 () Bool)

(assert (= bs!35901 d!95054))

(declare-fun m!415097 () Bool)

(assert (=> bs!35901 m!415097))

(assert (=> b!307553 d!95054))

(declare-fun d!95056 () Bool)

(declare-fun lt!132542 () BalanceConc!2776)

(assert (=> d!95056 (= (list!1713 lt!132542) (originalCharacters!824 (_1!2561 (get!1388 lt!131185))))))

(assert (=> d!95056 (= lt!132542 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131185))))) (value!26574 (_1!2561 (get!1388 lt!131185)))))))

(assert (=> d!95056 (= (charsOf!424 (_1!2561 (get!1388 lt!131185))) lt!132542)))

(declare-fun b_lambda!10783 () Bool)

(assert (=> (not b_lambda!10783) (not d!95056)))

(declare-fun t!43610 () Bool)

(declare-fun tb!19611 () Bool)

(assert (=> (and b!308288 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))) (toChars!1399 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131185)))))) t!43610) tb!19611))

(declare-fun b!309771 () Bool)

(declare-fun e!192628 () Bool)

(declare-fun tp!109133 () Bool)

(assert (=> b!309771 (= e!192628 (and (inv!5019 (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131185))))) (value!26574 (_1!2561 (get!1388 lt!131185)))))) tp!109133))))

(declare-fun result!23618 () Bool)

(assert (=> tb!19611 (= result!23618 (and (inv!5020 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131185))))) (value!26574 (_1!2561 (get!1388 lt!131185))))) e!192628))))

(assert (= tb!19611 b!309771))

(declare-fun m!415099 () Bool)

(assert (=> b!309771 m!415099))

(declare-fun m!415101 () Bool)

(assert (=> tb!19611 m!415101))

(assert (=> d!95056 t!43610))

(declare-fun b_and!26275 () Bool)

(assert (= b_and!26209 (and (=> t!43610 result!23618) b_and!26275)))

(declare-fun tb!19619 () Bool)

(declare-fun t!43618 () Bool)

(assert (=> (and b!307440 (= (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (toChars!1399 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131185)))))) t!43618) tb!19619))

(declare-fun result!23626 () Bool)

(assert (= result!23626 result!23618))

(assert (=> d!95056 t!43618))

(declare-fun b_and!26277 () Bool)

(assert (= b_and!26207 (and (=> t!43618 result!23626) b_and!26277)))

(declare-fun t!43622 () Bool)

(declare-fun tb!19623 () Bool)

(assert (=> (and b!308316 (= (toChars!1399 (transformation!781 (h!9459 (t!43304 rules!1920)))) (toChars!1399 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131185)))))) t!43622) tb!19623))

(declare-fun result!23630 () Bool)

(assert (= result!23630 result!23618))

(assert (=> d!95056 t!43622))

(declare-fun b_and!26279 () Bool)

(assert (= b_and!26203 (and (=> t!43622 result!23630) b_and!26279)))

(declare-fun tb!19629 () Bool)

(declare-fun t!43628 () Bool)

(assert (=> (and b!307444 (= (toChars!1399 (transformation!781 (h!9459 rules!1920))) (toChars!1399 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131185)))))) t!43628) tb!19629))

(declare-fun result!23636 () Bool)

(assert (= result!23636 result!23618))

(assert (=> d!95056 t!43628))

(declare-fun b_and!26281 () Bool)

(assert (= b_and!26201 (and (=> t!43628 result!23636) b_and!26281)))

(declare-fun tb!19633 () Bool)

(declare-fun t!43632 () Bool)

(assert (=> (and b!307455 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (toChars!1399 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131185)))))) t!43632) tb!19633))

(declare-fun result!23640 () Bool)

(assert (= result!23640 result!23618))

(assert (=> d!95056 t!43632))

(declare-fun b_and!26283 () Bool)

(assert (= b_and!26205 (and (=> t!43632 result!23640) b_and!26283)))

(declare-fun m!415103 () Bool)

(assert (=> d!95056 m!415103))

(declare-fun m!415105 () Bool)

(assert (=> d!95056 m!415105))

(assert (=> b!307553 d!95056))

(assert (=> b!307553 d!94722))

(declare-fun d!95058 () Bool)

(declare-fun charsToBigInt!0 (List!4070 Int) Int)

(assert (=> d!95058 (= (inv!15 (value!26574 (h!9460 tokens!465))) (= (charsToBigInt!0 (text!6070 (value!26574 (h!9460 tokens!465))) 0) (value!26569 (value!26574 (h!9460 tokens!465)))))))

(declare-fun bs!35902 () Bool)

(assert (= bs!35902 d!95058))

(declare-fun m!415115 () Bool)

(assert (=> bs!35902 m!415115))

(assert (=> b!307669 d!95058))

(declare-fun d!95060 () Bool)

(declare-fun lt!132543 () Token!1306)

(assert (=> d!95060 (= lt!132543 (apply!894 (list!1716 (_1!2562 lt!131243)) 0))))

(assert (=> d!95060 (= lt!132543 (apply!896 (c!58278 (_1!2562 lt!131243)) 0))))

(declare-fun e!192633 () Bool)

(assert (=> d!95060 e!192633))

(declare-fun res!140860 () Bool)

(assert (=> d!95060 (=> (not res!140860) (not e!192633))))

(assert (=> d!95060 (= res!140860 (<= 0 0))))

(assert (=> d!95060 (= (apply!892 (_1!2562 lt!131243) 0) lt!132543)))

(declare-fun b!309775 () Bool)

(assert (=> b!309775 (= e!192633 (< 0 (size!3247 (_1!2562 lt!131243))))))

(assert (= (and d!95060 res!140860) b!309775))

(declare-fun m!415117 () Bool)

(assert (=> d!95060 m!415117))

(assert (=> d!95060 m!415117))

(declare-fun m!415119 () Bool)

(assert (=> d!95060 m!415119))

(declare-fun m!415121 () Bool)

(assert (=> d!95060 m!415121))

(assert (=> b!309775 m!410553))

(assert (=> b!307638 d!95060))

(declare-fun d!95062 () Bool)

(assert (=> d!95062 (= (isEmpty!2779 lt!131190) (not ((_ is Some!927) lt!131190)))))

(assert (=> d!93916 d!95062))

(declare-fun b!309778 () Bool)

(declare-fun e!192634 () Bool)

(assert (=> b!309778 (= e!192634 (isPrefix!441 (tail!542 lt!131156) (tail!542 lt!131156)))))

(declare-fun b!309776 () Bool)

(declare-fun e!192636 () Bool)

(assert (=> b!309776 (= e!192636 e!192634)))

(declare-fun res!140863 () Bool)

(assert (=> b!309776 (=> (not res!140863) (not e!192634))))

(assert (=> b!309776 (= res!140863 (not ((_ is Nil!4061) lt!131156)))))

(declare-fun b!309779 () Bool)

(declare-fun e!192635 () Bool)

(assert (=> b!309779 (= e!192635 (>= (size!3246 lt!131156) (size!3246 lt!131156)))))

(declare-fun d!95064 () Bool)

(assert (=> d!95064 e!192635))

(declare-fun res!140861 () Bool)

(assert (=> d!95064 (=> res!140861 e!192635)))

(declare-fun lt!132544 () Bool)

(assert (=> d!95064 (= res!140861 (not lt!132544))))

(assert (=> d!95064 (= lt!132544 e!192636)))

(declare-fun res!140862 () Bool)

(assert (=> d!95064 (=> res!140862 e!192636)))

(assert (=> d!95064 (= res!140862 ((_ is Nil!4061) lt!131156))))

(assert (=> d!95064 (= (isPrefix!441 lt!131156 lt!131156) lt!132544)))

(declare-fun b!309777 () Bool)

(declare-fun res!140864 () Bool)

(assert (=> b!309777 (=> (not res!140864) (not e!192634))))

(assert (=> b!309777 (= res!140864 (= (head!968 lt!131156) (head!968 lt!131156)))))

(assert (= (and d!95064 (not res!140862)) b!309776))

(assert (= (and b!309776 res!140863) b!309777))

(assert (= (and b!309777 res!140864) b!309778))

(assert (= (and d!95064 (not res!140861)) b!309779))

(assert (=> b!309778 m!413993))

(assert (=> b!309778 m!413993))

(assert (=> b!309778 m!413993))

(assert (=> b!309778 m!413993))

(declare-fun m!415127 () Bool)

(assert (=> b!309778 m!415127))

(assert (=> b!309779 m!410459))

(assert (=> b!309779 m!410459))

(assert (=> b!309777 m!413997))

(assert (=> b!309777 m!413997))

(assert (=> d!93916 d!95064))

(declare-fun d!95066 () Bool)

(assert (=> d!95066 (isPrefix!441 lt!131156 lt!131156)))

(declare-fun lt!132547 () Unit!5690)

(declare-fun choose!2707 (List!4071 List!4071) Unit!5690)

(assert (=> d!95066 (= lt!132547 (choose!2707 lt!131156 lt!131156))))

(assert (=> d!95066 (= (lemmaIsPrefixRefl!238 lt!131156 lt!131156) lt!132547)))

(declare-fun bs!35903 () Bool)

(assert (= bs!35903 d!95066))

(assert (=> bs!35903 m!410453))

(declare-fun m!415129 () Bool)

(assert (=> bs!35903 m!415129))

(assert (=> d!93916 d!95066))

(declare-fun bs!35904 () Bool)

(declare-fun d!95068 () Bool)

(assert (= bs!35904 (and d!95068 d!94800)))

(declare-fun lambda!10577 () Int)

(assert (=> bs!35904 (= lambda!10577 lambda!10566)))

(assert (=> d!95068 true))

(declare-fun lt!132550 () Bool)

(assert (=> d!95068 (= lt!132550 (forall!1077 rules!1920 lambda!10577))))

(declare-fun e!192680 () Bool)

(assert (=> d!95068 (= lt!132550 e!192680)))

(declare-fun res!140869 () Bool)

(assert (=> d!95068 (=> res!140869 e!192680)))

(assert (=> d!95068 (= res!140869 (not ((_ is Cons!4062) rules!1920)))))

(assert (=> d!95068 (= (rulesValidInductive!233 thiss!17480 rules!1920) lt!132550)))

(declare-fun b!309858 () Bool)

(declare-fun e!192679 () Bool)

(assert (=> b!309858 (= e!192680 e!192679)))

(declare-fun res!140870 () Bool)

(assert (=> b!309858 (=> (not res!140870) (not e!192679))))

(assert (=> b!309858 (= res!140870 (ruleValid!100 thiss!17480 (h!9459 rules!1920)))))

(declare-fun b!309859 () Bool)

(assert (=> b!309859 (= e!192679 (rulesValidInductive!233 thiss!17480 (t!43304 rules!1920)))))

(assert (= (and d!95068 (not res!140869)) b!309858))

(assert (= (and b!309858 res!140870) b!309859))

(declare-fun m!415143 () Bool)

(assert (=> d!95068 m!415143))

(assert (=> b!309858 m!413415))

(declare-fun m!415145 () Bool)

(assert (=> b!309859 m!415145))

(assert (=> d!93916 d!95068))

(assert (=> b!307897 d!94058))

(declare-fun d!95070 () Bool)

(declare-fun lt!132551 () Int)

(assert (=> d!95070 (>= lt!132551 0)))

(declare-fun e!192684 () Int)

(assert (=> d!95070 (= lt!132551 e!192684)))

(declare-fun c!58796 () Bool)

(assert (=> d!95070 (= c!58796 ((_ is Nil!4061) lt!131326))))

(assert (=> d!95070 (= (size!3246 lt!131326) lt!132551)))

(declare-fun b!309872 () Bool)

(assert (=> b!309872 (= e!192684 0)))

(declare-fun b!309873 () Bool)

(assert (=> b!309873 (= e!192684 (+ 1 (size!3246 (t!43303 lt!131326))))))

(assert (= (and d!95070 c!58796) b!309872))

(assert (= (and d!95070 (not c!58796)) b!309873))

(declare-fun m!415147 () Bool)

(assert (=> b!309873 m!415147))

(assert (=> b!307772 d!95070))

(declare-fun d!95072 () Bool)

(declare-fun lt!132552 () Int)

(assert (=> d!95072 (>= lt!132552 0)))

(declare-fun e!192685 () Int)

(assert (=> d!95072 (= lt!132552 e!192685)))

(declare-fun c!58797 () Bool)

(assert (=> d!95072 (= c!58797 ((_ is Nil!4061) lt!131164))))

(assert (=> d!95072 (= (size!3246 lt!131164) lt!132552)))

(declare-fun b!309874 () Bool)

(assert (=> b!309874 (= e!192685 0)))

(declare-fun b!309875 () Bool)

(assert (=> b!309875 (= e!192685 (+ 1 (size!3246 (t!43303 lt!131164))))))

(assert (= (and d!95072 c!58797) b!309874))

(assert (= (and d!95072 (not c!58797)) b!309875))

(assert (=> b!309875 m!413719))

(assert (=> b!307772 d!95072))

(assert (=> b!307772 d!94754))

(declare-fun d!95074 () Bool)

(assert (=> d!95074 (= (isEmpty!2779 lt!131530) (not ((_ is Some!927) lt!131530)))))

(assert (=> d!94096 d!95074))

(declare-fun b!309878 () Bool)

(declare-fun e!192686 () Bool)

(assert (=> b!309878 (= e!192686 (isPrefix!441 (tail!542 lt!131170) (tail!542 lt!131170)))))

(declare-fun b!309876 () Bool)

(declare-fun e!192688 () Bool)

(assert (=> b!309876 (= e!192688 e!192686)))

(declare-fun res!140873 () Bool)

(assert (=> b!309876 (=> (not res!140873) (not e!192686))))

(assert (=> b!309876 (= res!140873 (not ((_ is Nil!4061) lt!131170)))))

(declare-fun b!309879 () Bool)

(declare-fun e!192687 () Bool)

(assert (=> b!309879 (= e!192687 (>= (size!3246 lt!131170) (size!3246 lt!131170)))))

(declare-fun d!95076 () Bool)

(assert (=> d!95076 e!192687))

(declare-fun res!140871 () Bool)

(assert (=> d!95076 (=> res!140871 e!192687)))

(declare-fun lt!132553 () Bool)

(assert (=> d!95076 (= res!140871 (not lt!132553))))

(assert (=> d!95076 (= lt!132553 e!192688)))

(declare-fun res!140872 () Bool)

(assert (=> d!95076 (=> res!140872 e!192688)))

(assert (=> d!95076 (= res!140872 ((_ is Nil!4061) lt!131170))))

(assert (=> d!95076 (= (isPrefix!441 lt!131170 lt!131170) lt!132553)))

(declare-fun b!309877 () Bool)

(declare-fun res!140874 () Bool)

(assert (=> b!309877 (=> (not res!140874) (not e!192686))))

(assert (=> b!309877 (= res!140874 (= (head!968 lt!131170) (head!968 lt!131170)))))

(assert (= (and d!95076 (not res!140872)) b!309876))

(assert (= (and b!309876 res!140873) b!309877))

(assert (= (and b!309877 res!140874) b!309878))

(assert (= (and d!95076 (not res!140871)) b!309879))

(declare-fun m!415153 () Bool)

(assert (=> b!309878 m!415153))

(assert (=> b!309878 m!415153))

(assert (=> b!309878 m!415153))

(assert (=> b!309878 m!415153))

(declare-fun m!415155 () Bool)

(assert (=> b!309878 m!415155))

(assert (=> b!309879 m!411253))

(assert (=> b!309879 m!411253))

(declare-fun m!415157 () Bool)

(assert (=> b!309877 m!415157))

(assert (=> b!309877 m!415157))

(assert (=> d!94096 d!95076))

(declare-fun d!95086 () Bool)

(assert (=> d!95086 (isPrefix!441 lt!131170 lt!131170)))

(declare-fun lt!132554 () Unit!5690)

(assert (=> d!95086 (= lt!132554 (choose!2707 lt!131170 lt!131170))))

(assert (=> d!95086 (= (lemmaIsPrefixRefl!238 lt!131170 lt!131170) lt!132554)))

(declare-fun bs!35910 () Bool)

(assert (= bs!35910 d!95086))

(assert (=> bs!35910 m!411331))

(declare-fun m!415159 () Bool)

(assert (=> bs!35910 m!415159))

(assert (=> d!94096 d!95086))

(assert (=> d!94096 d!95068))

(declare-fun b!309880 () Bool)

(declare-fun e!192691 () Bool)

(assert (=> b!309880 (= e!192691 (matchR!323 (regex!781 (h!9459 rules!1920)) (_1!2567 (findLongestMatchInner!86 (regex!781 (h!9459 rules!1920)) Nil!4061 (size!3246 Nil!4061) lt!131170 lt!131170 (size!3246 lt!131170)))))))

(declare-fun b!309881 () Bool)

(declare-fun e!192690 () Option!928)

(declare-fun lt!132559 () tuple2!4702)

(assert (=> b!309881 (= e!192690 (Some!927 (tuple2!4691 (Token!1307 (apply!891 (transformation!781 (h!9459 rules!1920)) (seqFromList!928 (_1!2567 lt!132559))) (h!9459 rules!1920) (size!3249 (seqFromList!928 (_1!2567 lt!132559))) (_1!2567 lt!132559)) (_2!2567 lt!132559))))))

(declare-fun lt!132557 () Unit!5690)

(assert (=> b!309881 (= lt!132557 (longestMatchIsAcceptedByMatchOrIsEmpty!70 (regex!781 (h!9459 rules!1920)) lt!131170))))

(declare-fun res!140880 () Bool)

(assert (=> b!309881 (= res!140880 (isEmpty!2775 (_1!2567 (findLongestMatchInner!86 (regex!781 (h!9459 rules!1920)) Nil!4061 (size!3246 Nil!4061) lt!131170 lt!131170 (size!3246 lt!131170)))))))

(assert (=> b!309881 (=> res!140880 e!192691)))

(assert (=> b!309881 e!192691))

(declare-fun lt!132555 () Unit!5690)

(assert (=> b!309881 (= lt!132555 lt!132557)))

(declare-fun lt!132556 () Unit!5690)

(assert (=> b!309881 (= lt!132556 (lemmaSemiInverse!64 (transformation!781 (h!9459 rules!1920)) (seqFromList!928 (_1!2567 lt!132559))))))

(declare-fun b!309882 () Bool)

(declare-fun e!192689 () Bool)

(declare-fun lt!132558 () Option!928)

(assert (=> b!309882 (= e!192689 (= (size!3243 (_1!2561 (get!1388 lt!132558))) (size!3246 (originalCharacters!824 (_1!2561 (get!1388 lt!132558))))))))

(declare-fun b!309883 () Bool)

(declare-fun res!140881 () Bool)

(assert (=> b!309883 (=> (not res!140881) (not e!192689))))

(assert (=> b!309883 (= res!140881 (= (++!1102 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!132558)))) (_2!2561 (get!1388 lt!132558))) lt!131170))))

(declare-fun b!309885 () Bool)

(declare-fun res!140878 () Bool)

(assert (=> b!309885 (=> (not res!140878) (not e!192689))))

(assert (=> b!309885 (= res!140878 (= (value!26574 (_1!2561 (get!1388 lt!132558))) (apply!891 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!132558)))) (seqFromList!928 (originalCharacters!824 (_1!2561 (get!1388 lt!132558)))))))))

(declare-fun b!309886 () Bool)

(assert (=> b!309886 (= e!192690 None!927)))

(declare-fun b!309887 () Bool)

(declare-fun res!140876 () Bool)

(assert (=> b!309887 (=> (not res!140876) (not e!192689))))

(assert (=> b!309887 (= res!140876 (= (rule!1394 (_1!2561 (get!1388 lt!132558))) (h!9459 rules!1920)))))

(declare-fun b!309888 () Bool)

(declare-fun e!192692 () Bool)

(assert (=> b!309888 (= e!192692 e!192689)))

(declare-fun res!140879 () Bool)

(assert (=> b!309888 (=> (not res!140879) (not e!192689))))

(assert (=> b!309888 (= res!140879 (matchR!323 (regex!781 (h!9459 rules!1920)) (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!132558))))))))

(declare-fun b!309884 () Bool)

(declare-fun res!140875 () Bool)

(assert (=> b!309884 (=> (not res!140875) (not e!192689))))

(assert (=> b!309884 (= res!140875 (< (size!3246 (_2!2561 (get!1388 lt!132558))) (size!3246 lt!131170)))))

(declare-fun d!95090 () Bool)

(assert (=> d!95090 e!192692))

(declare-fun res!140877 () Bool)

(assert (=> d!95090 (=> res!140877 e!192692)))

(assert (=> d!95090 (= res!140877 (isEmpty!2779 lt!132558))))

(assert (=> d!95090 (= lt!132558 e!192690)))

(declare-fun c!58798 () Bool)

(assert (=> d!95090 (= c!58798 (isEmpty!2775 (_1!2567 lt!132559)))))

(assert (=> d!95090 (= lt!132559 (findLongestMatch!66 (regex!781 (h!9459 rules!1920)) lt!131170))))

(assert (=> d!95090 (ruleValid!100 thiss!17480 (h!9459 rules!1920))))

(assert (=> d!95090 (= (maxPrefixOneRule!172 thiss!17480 (h!9459 rules!1920) lt!131170) lt!132558)))

(assert (= (and d!95090 c!58798) b!309886))

(assert (= (and d!95090 (not c!58798)) b!309881))

(assert (= (and b!309881 (not res!140880)) b!309880))

(assert (= (and d!95090 (not res!140877)) b!309888))

(assert (= (and b!309888 res!140879) b!309883))

(assert (= (and b!309883 res!140881) b!309884))

(assert (= (and b!309884 res!140875) b!309887))

(assert (= (and b!309887 res!140876) b!309885))

(assert (= (and b!309885 res!140878) b!309882))

(declare-fun m!415163 () Bool)

(assert (=> b!309882 m!415163))

(declare-fun m!415165 () Bool)

(assert (=> b!309882 m!415165))

(assert (=> b!309881 m!413361))

(assert (=> b!309881 m!413361))

(assert (=> b!309881 m!411253))

(declare-fun m!415167 () Bool)

(assert (=> b!309881 m!415167))

(assert (=> b!309881 m!411253))

(declare-fun m!415169 () Bool)

(assert (=> b!309881 m!415169))

(declare-fun m!415171 () Bool)

(assert (=> b!309881 m!415171))

(declare-fun m!415173 () Bool)

(assert (=> b!309881 m!415173))

(assert (=> b!309881 m!415171))

(declare-fun m!415175 () Bool)

(assert (=> b!309881 m!415175))

(assert (=> b!309881 m!415171))

(declare-fun m!415177 () Bool)

(assert (=> b!309881 m!415177))

(assert (=> b!309881 m!415171))

(declare-fun m!415179 () Bool)

(assert (=> b!309881 m!415179))

(assert (=> b!309883 m!415163))

(declare-fun m!415181 () Bool)

(assert (=> b!309883 m!415181))

(assert (=> b!309883 m!415181))

(declare-fun m!415183 () Bool)

(assert (=> b!309883 m!415183))

(assert (=> b!309883 m!415183))

(declare-fun m!415185 () Bool)

(assert (=> b!309883 m!415185))

(assert (=> b!309887 m!415163))

(declare-fun m!415187 () Bool)

(assert (=> d!95090 m!415187))

(declare-fun m!415189 () Bool)

(assert (=> d!95090 m!415189))

(declare-fun m!415191 () Bool)

(assert (=> d!95090 m!415191))

(assert (=> d!95090 m!413415))

(assert (=> b!309880 m!413361))

(assert (=> b!309880 m!411253))

(assert (=> b!309880 m!413361))

(assert (=> b!309880 m!411253))

(assert (=> b!309880 m!415167))

(declare-fun m!415193 () Bool)

(assert (=> b!309880 m!415193))

(assert (=> b!309888 m!415163))

(assert (=> b!309888 m!415181))

(assert (=> b!309888 m!415181))

(assert (=> b!309888 m!415183))

(assert (=> b!309888 m!415183))

(declare-fun m!415195 () Bool)

(assert (=> b!309888 m!415195))

(assert (=> b!309885 m!415163))

(declare-fun m!415197 () Bool)

(assert (=> b!309885 m!415197))

(assert (=> b!309885 m!415197))

(declare-fun m!415199 () Bool)

(assert (=> b!309885 m!415199))

(assert (=> b!309884 m!415163))

(declare-fun m!415201 () Bool)

(assert (=> b!309884 m!415201))

(assert (=> b!309884 m!411253))

(assert (=> bm!17911 d!95090))

(assert (=> b!307561 d!94734))

(declare-fun d!95094 () Bool)

(assert (=> d!95094 (= (apply!891 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131190)))) (seqFromList!928 (originalCharacters!824 (_1!2561 (get!1388 lt!131190))))) (dynLambda!2231 (toValue!1540 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131190))))) (seqFromList!928 (originalCharacters!824 (_1!2561 (get!1388 lt!131190))))))))

(declare-fun b_lambda!10805 () Bool)

(assert (=> (not b_lambda!10805) (not d!95094)))

(declare-fun tb!19683 () Bool)

(declare-fun t!43682 () Bool)

(assert (=> (and b!307455 (= (toValue!1540 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (toValue!1540 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131190)))))) t!43682) tb!19683))

(declare-fun result!23692 () Bool)

(assert (=> tb!19683 (= result!23692 (inv!21 (dynLambda!2231 (toValue!1540 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131190))))) (seqFromList!928 (originalCharacters!824 (_1!2561 (get!1388 lt!131190)))))))))

(declare-fun m!415203 () Bool)

(assert (=> tb!19683 m!415203))

(assert (=> d!95094 t!43682))

(declare-fun b_and!26289 () Bool)

(assert (= b_and!26263 (and (=> t!43682 result!23692) b_and!26289)))

(declare-fun t!43684 () Bool)

(declare-fun tb!19685 () Bool)

(assert (=> (and b!307440 (= (toValue!1540 (transformation!781 (rule!1394 separatorToken!170))) (toValue!1540 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131190)))))) t!43684) tb!19685))

(declare-fun result!23694 () Bool)

(assert (= result!23694 result!23692))

(assert (=> d!95094 t!43684))

(declare-fun b_and!26291 () Bool)

(assert (= b_and!26269 (and (=> t!43684 result!23694) b_and!26291)))

(declare-fun t!43686 () Bool)

(declare-fun tb!19687 () Bool)

(assert (=> (and b!307444 (= (toValue!1540 (transformation!781 (h!9459 rules!1920))) (toValue!1540 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131190)))))) t!43686) tb!19687))

(declare-fun result!23696 () Bool)

(assert (= result!23696 result!23692))

(assert (=> d!95094 t!43686))

(declare-fun b_and!26293 () Bool)

(assert (= b_and!26261 (and (=> t!43686 result!23696) b_and!26293)))

(declare-fun tb!19689 () Bool)

(declare-fun t!43688 () Bool)

(assert (=> (and b!308316 (= (toValue!1540 (transformation!781 (h!9459 (t!43304 rules!1920)))) (toValue!1540 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131190)))))) t!43688) tb!19689))

(declare-fun result!23698 () Bool)

(assert (= result!23698 result!23692))

(assert (=> d!95094 t!43688))

(declare-fun b_and!26295 () Bool)

(assert (= b_and!26265 (and (=> t!43688 result!23698) b_and!26295)))

(declare-fun t!43690 () Bool)

(declare-fun tb!19691 () Bool)

(assert (=> (and b!308288 (= (toValue!1540 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))) (toValue!1540 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131190)))))) t!43690) tb!19691))

(declare-fun result!23700 () Bool)

(assert (= result!23700 result!23692))

(assert (=> d!95094 t!43690))

(declare-fun b_and!26297 () Bool)

(assert (= b_and!26267 (and (=> t!43690 result!23700) b_and!26297)))

(assert (=> d!95094 m!410441))

(declare-fun m!415205 () Bool)

(assert (=> d!95094 m!415205))

(assert (=> b!307561 d!95094))

(declare-fun d!95096 () Bool)

(assert (=> d!95096 (= (seqFromList!928 (originalCharacters!824 (_1!2561 (get!1388 lt!131190)))) (fromListB!387 (originalCharacters!824 (_1!2561 (get!1388 lt!131190)))))))

(declare-fun bs!35912 () Bool)

(assert (= bs!35912 d!95096))

(declare-fun m!415207 () Bool)

(assert (=> bs!35912 m!415207))

(assert (=> b!307561 d!95096))

(declare-fun d!95098 () Bool)

(assert (=> d!95098 (dynLambda!2225 lambda!10492 (h!9460 tokens!465))))

(assert (=> d!95098 true))

(declare-fun _$7!390 () Unit!5690)

(assert (=> d!95098 (= (choose!2691 tokens!465 lambda!10492 (h!9460 tokens!465)) _$7!390)))

(declare-fun b_lambda!10807 () Bool)

(assert (=> (not b_lambda!10807) (not d!95098)))

(declare-fun bs!35913 () Bool)

(assert (= bs!35913 d!95098))

(assert (=> bs!35913 m!410679))

(assert (=> d!93964 d!95098))

(declare-fun d!95100 () Bool)

(declare-fun res!140882 () Bool)

(declare-fun e!192694 () Bool)

(assert (=> d!95100 (=> res!140882 e!192694)))

(assert (=> d!95100 (= res!140882 ((_ is Nil!4063) tokens!465))))

(assert (=> d!95100 (= (forall!1072 tokens!465 lambda!10492) e!192694)))

(declare-fun b!309889 () Bool)

(declare-fun e!192695 () Bool)

(assert (=> b!309889 (= e!192694 e!192695)))

(declare-fun res!140883 () Bool)

(assert (=> b!309889 (=> (not res!140883) (not e!192695))))

(assert (=> b!309889 (= res!140883 (dynLambda!2225 lambda!10492 (h!9460 tokens!465)))))

(declare-fun b!309890 () Bool)

(assert (=> b!309890 (= e!192695 (forall!1072 (t!43305 tokens!465) lambda!10492))))

(assert (= (and d!95100 (not res!140882)) b!309889))

(assert (= (and b!309889 res!140883) b!309890))

(declare-fun b_lambda!10809 () Bool)

(assert (=> (not b_lambda!10809) (not b!309889)))

(assert (=> b!309889 m!410679))

(declare-fun m!415209 () Bool)

(assert (=> b!309890 m!415209))

(assert (=> d!93964 d!95100))

(assert (=> b!307562 d!94730))

(assert (=> b!307562 d!94732))

(assert (=> b!307562 d!94734))

(declare-fun d!95102 () Bool)

(assert (=> d!95102 (= (isDefined!768 lt!131283) (not (isEmpty!2784 lt!131283)))))

(declare-fun bs!35914 () Bool)

(assert (= bs!35914 d!95102))

(declare-fun m!415211 () Bool)

(assert (=> bs!35914 m!415211))

(assert (=> b!307716 d!95102))

(declare-fun d!95104 () Bool)

(assert (=> d!95104 (= (list!1713 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (value!26574 separatorToken!170))) (list!1717 (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (value!26574 separatorToken!170)))))))

(declare-fun bs!35915 () Bool)

(assert (= bs!35915 d!95104))

(declare-fun m!415213 () Bool)

(assert (=> bs!35915 m!415213))

(assert (=> b!307641 d!95104))

(declare-fun d!95106 () Bool)

(declare-fun res!140888 () Bool)

(declare-fun e!192700 () Bool)

(assert (=> d!95106 (=> res!140888 e!192700)))

(assert (=> d!95106 (= res!140888 ((_ is Nil!4062) rules!1920))))

(assert (=> d!95106 (= (noDuplicateTag!258 thiss!17480 rules!1920 Nil!4065) e!192700)))

(declare-fun b!309895 () Bool)

(declare-fun e!192701 () Bool)

(assert (=> b!309895 (= e!192700 e!192701)))

(declare-fun res!140889 () Bool)

(assert (=> b!309895 (=> (not res!140889) (not e!192701))))

(declare-fun contains!806 (List!4075 String!5095) Bool)

(assert (=> b!309895 (= res!140889 (not (contains!806 Nil!4065 (tag!999 (h!9459 rules!1920)))))))

(declare-fun b!309896 () Bool)

(assert (=> b!309896 (= e!192701 (noDuplicateTag!258 thiss!17480 (t!43304 rules!1920) (Cons!4065 (tag!999 (h!9459 rules!1920)) Nil!4065)))))

(assert (= (and d!95106 (not res!140888)) b!309895))

(assert (= (and b!309895 res!140889) b!309896))

(declare-fun m!415215 () Bool)

(assert (=> b!309895 m!415215))

(declare-fun m!415217 () Bool)

(assert (=> b!309896 m!415217))

(assert (=> b!307667 d!95106))

(declare-fun b!309900 () Bool)

(declare-fun lt!132560 () List!4071)

(declare-fun e!192703 () Bool)

(assert (=> b!309900 (= e!192703 (or (not (= lt!131170 Nil!4061)) (= lt!132560 (t!43303 lt!131150))))))

(declare-fun d!95108 () Bool)

(assert (=> d!95108 e!192703))

(declare-fun res!140890 () Bool)

(assert (=> d!95108 (=> (not res!140890) (not e!192703))))

(assert (=> d!95108 (= res!140890 (= (content!606 lt!132560) ((_ map or) (content!606 (t!43303 lt!131150)) (content!606 lt!131170))))))

(declare-fun e!192702 () List!4071)

(assert (=> d!95108 (= lt!132560 e!192702)))

(declare-fun c!58799 () Bool)

(assert (=> d!95108 (= c!58799 ((_ is Nil!4061) (t!43303 lt!131150)))))

(assert (=> d!95108 (= (++!1102 (t!43303 lt!131150) lt!131170) lt!132560)))

(declare-fun b!309899 () Bool)

(declare-fun res!140891 () Bool)

(assert (=> b!309899 (=> (not res!140891) (not e!192703))))

(assert (=> b!309899 (= res!140891 (= (size!3246 lt!132560) (+ (size!3246 (t!43303 lt!131150)) (size!3246 lt!131170))))))

(declare-fun b!309898 () Bool)

(assert (=> b!309898 (= e!192702 (Cons!4061 (h!9458 (t!43303 lt!131150)) (++!1102 (t!43303 (t!43303 lt!131150)) lt!131170)))))

(declare-fun b!309897 () Bool)

(assert (=> b!309897 (= e!192702 lt!131170)))

(assert (= (and d!95108 c!58799) b!309897))

(assert (= (and d!95108 (not c!58799)) b!309898))

(assert (= (and d!95108 res!140890) b!309899))

(assert (= (and b!309899 res!140891) b!309900))

(declare-fun m!415219 () Bool)

(assert (=> d!95108 m!415219))

(assert (=> d!95108 m!413011))

(assert (=> d!95108 m!411247))

(declare-fun m!415221 () Bool)

(assert (=> b!309899 m!415221))

(assert (=> b!309899 m!413733))

(assert (=> b!309899 m!411253))

(declare-fun m!415223 () Bool)

(assert (=> b!309898 m!415223))

(assert (=> b!308033 d!95108))

(declare-fun b!309901 () Bool)

(declare-fun res!140897 () Bool)

(declare-fun e!192706 () Bool)

(assert (=> b!309901 (=> (not res!140897) (not e!192706))))

(declare-fun call!18047 () Bool)

(assert (=> b!309901 (= res!140897 (not call!18047))))

(declare-fun b!309902 () Bool)

(declare-fun e!192708 () Bool)

(assert (=> b!309902 (= e!192708 (nullable!196 (regex!781 (rule!1394 (_1!2561 (get!1388 lt!131530))))))))

(declare-fun bm!18042 () Bool)

(assert (=> bm!18042 (= call!18047 (isEmpty!2775 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131530))))))))

(declare-fun b!309903 () Bool)

(declare-fun e!192707 () Bool)

(declare-fun e!192710 () Bool)

(assert (=> b!309903 (= e!192707 e!192710)))

(declare-fun res!140899 () Bool)

(assert (=> b!309903 (=> res!140899 e!192710)))

(assert (=> b!309903 (= res!140899 call!18047)))

(declare-fun b!309904 () Bool)

(assert (=> b!309904 (= e!192706 (= (head!968 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131530))))) (c!58277 (regex!781 (rule!1394 (_1!2561 (get!1388 lt!131530)))))))))

(declare-fun b!309905 () Bool)

(declare-fun res!140896 () Bool)

(assert (=> b!309905 (=> res!140896 e!192710)))

(assert (=> b!309905 (= res!140896 (not (isEmpty!2775 (tail!542 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131530))))))))))

(declare-fun b!309906 () Bool)

(assert (=> b!309906 (= e!192710 (not (= (head!968 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131530))))) (c!58277 (regex!781 (rule!1394 (_1!2561 (get!1388 lt!131530))))))))))

(declare-fun b!309907 () Bool)

(declare-fun res!140895 () Bool)

(declare-fun e!192709 () Bool)

(assert (=> b!309907 (=> res!140895 e!192709)))

(assert (=> b!309907 (= res!140895 e!192706)))

(declare-fun res!140892 () Bool)

(assert (=> b!309907 (=> (not res!140892) (not e!192706))))

(declare-fun lt!132561 () Bool)

(assert (=> b!309907 (= res!140892 lt!132561)))

(declare-fun b!309908 () Bool)

(assert (=> b!309908 (= e!192708 (matchR!323 (derivativeStep!162 (regex!781 (rule!1394 (_1!2561 (get!1388 lt!131530)))) (head!968 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131530)))))) (tail!542 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131530)))))))))

(declare-fun b!309909 () Bool)

(assert (=> b!309909 (= e!192709 e!192707)))

(declare-fun res!140893 () Bool)

(assert (=> b!309909 (=> (not res!140893) (not e!192707))))

(assert (=> b!309909 (= res!140893 (not lt!132561))))

(declare-fun b!309911 () Bool)

(declare-fun e!192704 () Bool)

(assert (=> b!309911 (= e!192704 (not lt!132561))))

(declare-fun b!309912 () Bool)

(declare-fun e!192705 () Bool)

(assert (=> b!309912 (= e!192705 (= lt!132561 call!18047))))

(declare-fun b!309913 () Bool)

(assert (=> b!309913 (= e!192705 e!192704)))

(declare-fun c!58802 () Bool)

(assert (=> b!309913 (= c!58802 ((_ is EmptyLang!1005) (regex!781 (rule!1394 (_1!2561 (get!1388 lt!131530))))))))

(declare-fun b!309914 () Bool)

(declare-fun res!140898 () Bool)

(assert (=> b!309914 (=> (not res!140898) (not e!192706))))

(assert (=> b!309914 (= res!140898 (isEmpty!2775 (tail!542 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131530)))))))))

(declare-fun b!309910 () Bool)

(declare-fun res!140894 () Bool)

(assert (=> b!309910 (=> res!140894 e!192709)))

(assert (=> b!309910 (= res!140894 (not ((_ is ElementMatch!1005) (regex!781 (rule!1394 (_1!2561 (get!1388 lt!131530)))))))))

(assert (=> b!309910 (= e!192704 e!192709)))

(declare-fun d!95110 () Bool)

(assert (=> d!95110 e!192705))

(declare-fun c!58800 () Bool)

(assert (=> d!95110 (= c!58800 ((_ is EmptyExpr!1005) (regex!781 (rule!1394 (_1!2561 (get!1388 lt!131530))))))))

(assert (=> d!95110 (= lt!132561 e!192708)))

(declare-fun c!58801 () Bool)

(assert (=> d!95110 (= c!58801 (isEmpty!2775 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131530))))))))

(assert (=> d!95110 (validRegex!271 (regex!781 (rule!1394 (_1!2561 (get!1388 lt!131530)))))))

(assert (=> d!95110 (= (matchR!323 (regex!781 (rule!1394 (_1!2561 (get!1388 lt!131530)))) (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131530))))) lt!132561)))

(assert (= (and d!95110 c!58801) b!309902))

(assert (= (and d!95110 (not c!58801)) b!309908))

(assert (= (and d!95110 c!58800) b!309912))

(assert (= (and d!95110 (not c!58800)) b!309913))

(assert (= (and b!309913 c!58802) b!309911))

(assert (= (and b!309913 (not c!58802)) b!309910))

(assert (= (and b!309910 (not res!140894)) b!309907))

(assert (= (and b!309907 res!140892) b!309901))

(assert (= (and b!309901 res!140897) b!309914))

(assert (= (and b!309914 res!140898) b!309904))

(assert (= (and b!309907 (not res!140895)) b!309909))

(assert (= (and b!309909 res!140893) b!309903))

(assert (= (and b!309903 (not res!140899)) b!309905))

(assert (= (and b!309905 (not res!140896)) b!309906))

(assert (= (or b!309912 b!309901 b!309903) bm!18042))

(assert (=> b!309906 m!411315))

(declare-fun m!415225 () Bool)

(assert (=> b!309906 m!415225))

(assert (=> d!95110 m!411315))

(declare-fun m!415227 () Bool)

(assert (=> d!95110 m!415227))

(declare-fun m!415229 () Bool)

(assert (=> d!95110 m!415229))

(assert (=> b!309904 m!411315))

(assert (=> b!309904 m!415225))

(assert (=> b!309908 m!411315))

(assert (=> b!309908 m!415225))

(assert (=> b!309908 m!415225))

(declare-fun m!415231 () Bool)

(assert (=> b!309908 m!415231))

(assert (=> b!309908 m!411315))

(declare-fun m!415233 () Bool)

(assert (=> b!309908 m!415233))

(assert (=> b!309908 m!415231))

(assert (=> b!309908 m!415233))

(declare-fun m!415235 () Bool)

(assert (=> b!309908 m!415235))

(declare-fun m!415237 () Bool)

(assert (=> b!309902 m!415237))

(assert (=> b!309914 m!411315))

(assert (=> b!309914 m!415233))

(assert (=> b!309914 m!415233))

(declare-fun m!415239 () Bool)

(assert (=> b!309914 m!415239))

(assert (=> b!309905 m!411315))

(assert (=> b!309905 m!415233))

(assert (=> b!309905 m!415233))

(assert (=> b!309905 m!415239))

(assert (=> bm!18042 m!411315))

(assert (=> bm!18042 m!415227))

(assert (=> b!308060 d!95110))

(assert (=> b!308060 d!94766))

(assert (=> b!308060 d!94762))

(assert (=> b!308060 d!94764))

(declare-fun b!309917 () Bool)

(declare-fun res!140901 () Bool)

(declare-fun e!192711 () Bool)

(assert (=> b!309917 (=> (not res!140901) (not e!192711))))

(assert (=> b!309917 (= res!140901 (>= (height!179 (++!1106 (c!58276 call!17910) (c!58276 (ite c!58400 lt!131492 call!17912)))) (max!0 (height!179 (c!58276 call!17910)) (height!179 (c!58276 (ite c!58400 lt!131492 call!17912))))))))

(declare-fun lt!132562 () BalanceConc!2776)

(declare-fun b!309918 () Bool)

(assert (=> b!309918 (= e!192711 (= (list!1713 lt!132562) (++!1102 (list!1713 call!17910) (list!1713 (ite c!58400 lt!131492 call!17912)))))))

(declare-fun b!309916 () Bool)

(declare-fun res!140902 () Bool)

(assert (=> b!309916 (=> (not res!140902) (not e!192711))))

(assert (=> b!309916 (= res!140902 (<= (height!179 (++!1106 (c!58276 call!17910) (c!58276 (ite c!58400 lt!131492 call!17912)))) (+ (max!0 (height!179 (c!58276 call!17910)) (height!179 (c!58276 (ite c!58400 lt!131492 call!17912)))) 1)))))

(declare-fun b!309915 () Bool)

(declare-fun res!140900 () Bool)

(assert (=> b!309915 (=> (not res!140900) (not e!192711))))

(assert (=> b!309915 (= res!140900 (isBalanced!397 (++!1106 (c!58276 call!17910) (c!58276 (ite c!58400 lt!131492 call!17912)))))))

(declare-fun d!95112 () Bool)

(assert (=> d!95112 e!192711))

(declare-fun res!140903 () Bool)

(assert (=> d!95112 (=> (not res!140903) (not e!192711))))

(assert (=> d!95112 (= res!140903 (appendAssocInst!75 (c!58276 call!17910) (c!58276 (ite c!58400 lt!131492 call!17912))))))

(assert (=> d!95112 (= lt!132562 (BalanceConc!2777 (++!1106 (c!58276 call!17910) (c!58276 (ite c!58400 lt!131492 call!17912)))))))

(assert (=> d!95112 (= (++!1104 call!17910 (ite c!58400 lt!131492 call!17912)) lt!132562)))

(assert (= (and d!95112 res!140903) b!309915))

(assert (= (and b!309915 res!140900) b!309916))

(assert (= (and b!309916 res!140902) b!309917))

(assert (= (and b!309917 res!140901) b!309918))

(declare-fun m!415241 () Bool)

(assert (=> b!309918 m!415241))

(declare-fun m!415243 () Bool)

(assert (=> b!309918 m!415243))

(declare-fun m!415245 () Bool)

(assert (=> b!309918 m!415245))

(assert (=> b!309918 m!415243))

(assert (=> b!309918 m!415245))

(declare-fun m!415247 () Bool)

(assert (=> b!309918 m!415247))

(declare-fun m!415249 () Bool)

(assert (=> b!309915 m!415249))

(assert (=> b!309915 m!415249))

(declare-fun m!415251 () Bool)

(assert (=> b!309915 m!415251))

(declare-fun m!415253 () Bool)

(assert (=> b!309916 m!415253))

(declare-fun m!415255 () Bool)

(assert (=> b!309916 m!415255))

(assert (=> b!309916 m!415249))

(declare-fun m!415257 () Bool)

(assert (=> b!309916 m!415257))

(assert (=> b!309916 m!415249))

(assert (=> b!309916 m!415253))

(assert (=> b!309916 m!415255))

(declare-fun m!415259 () Bool)

(assert (=> b!309916 m!415259))

(declare-fun m!415261 () Bool)

(assert (=> d!95112 m!415261))

(assert (=> d!95112 m!415249))

(assert (=> b!309917 m!415253))

(assert (=> b!309917 m!415255))

(assert (=> b!309917 m!415249))

(assert (=> b!309917 m!415257))

(assert (=> b!309917 m!415249))

(assert (=> b!309917 m!415253))

(assert (=> b!309917 m!415255))

(assert (=> b!309917 m!415259))

(assert (=> bm!17909 d!95112))

(declare-fun d!95114 () Bool)

(assert (=> d!95114 (= (inv!16 (value!26574 separatorToken!170)) (= (charsToInt!0 (text!6068 (value!26574 separatorToken!170))) (value!26565 (value!26574 separatorToken!170))))))

(declare-fun bs!35916 () Bool)

(assert (= bs!35916 d!95114))

(declare-fun m!415263 () Bool)

(assert (=> bs!35916 m!415263))

(assert (=> b!307574 d!95114))

(declare-fun b!309927 () Bool)

(declare-fun e!192718 () Bool)

(declare-fun e!192720 () Bool)

(assert (=> b!309927 (= e!192718 e!192720)))

(declare-fun res!140909 () Bool)

(assert (=> b!309927 (= res!140909 (not ((_ is Cons!4062) rules!1920)))))

(assert (=> b!309927 (=> res!140909 e!192720)))

(declare-fun b!309928 () Bool)

(declare-fun e!192719 () Bool)

(assert (=> b!309928 (= e!192718 e!192719)))

(declare-fun res!140908 () Bool)

(declare-fun rulesUseDisjointChars!74 (Rule!1362 Rule!1362) Bool)

(assert (=> b!309928 (= res!140908 (rulesUseDisjointChars!74 (h!9459 rules!1920) (h!9459 rules!1920)))))

(assert (=> b!309928 (=> (not res!140908) (not e!192719))))

(declare-fun d!95116 () Bool)

(declare-fun c!58805 () Bool)

(assert (=> d!95116 (= c!58805 (and ((_ is Cons!4062) rules!1920) (not (= (isSeparator!781 (h!9459 rules!1920)) (isSeparator!781 (h!9459 rules!1920))))))))

(assert (=> d!95116 (= (ruleDisjointCharsFromAllFromOtherType!151 (h!9459 rules!1920) rules!1920) e!192718)))

(declare-fun b!309929 () Bool)

(declare-fun call!18050 () Bool)

(assert (=> b!309929 (= e!192720 call!18050)))

(declare-fun bm!18045 () Bool)

(assert (=> bm!18045 (= call!18050 (ruleDisjointCharsFromAllFromOtherType!151 (h!9459 rules!1920) (t!43304 rules!1920)))))

(declare-fun b!309930 () Bool)

(assert (=> b!309930 (= e!192719 call!18050)))

(assert (= (and d!95116 c!58805) b!309928))

(assert (= (and d!95116 (not c!58805)) b!309927))

(assert (= (and b!309928 res!140908) b!309930))

(assert (= (and b!309927 (not res!140909)) b!309929))

(assert (= (or b!309930 b!309929) bm!18045))

(declare-fun m!415265 () Bool)

(assert (=> b!309928 m!415265))

(declare-fun m!415267 () Bool)

(assert (=> bm!18045 m!415267))

(assert (=> b!308205 d!95116))

(declare-fun d!95118 () Bool)

(declare-fun lt!132563 () Token!1306)

(assert (=> d!95118 (contains!803 lt!131558 lt!132563)))

(declare-fun e!192722 () Token!1306)

(assert (=> d!95118 (= lt!132563 e!192722)))

(declare-fun c!58806 () Bool)

(assert (=> d!95118 (= c!58806 (= 0 0))))

(declare-fun e!192721 () Bool)

(assert (=> d!95118 e!192721))

(declare-fun res!140910 () Bool)

(assert (=> d!95118 (=> (not res!140910) (not e!192721))))

(assert (=> d!95118 (= res!140910 (<= 0 0))))

(assert (=> d!95118 (= (apply!894 lt!131558 0) lt!132563)))

(declare-fun b!309931 () Bool)

(assert (=> b!309931 (= e!192721 (< 0 (size!3253 lt!131558)))))

(declare-fun b!309932 () Bool)

(assert (=> b!309932 (= e!192722 (head!966 lt!131558))))

(declare-fun b!309933 () Bool)

(assert (=> b!309933 (= e!192722 (apply!894 (tail!541 lt!131558) (- 0 1)))))

(assert (= (and d!95118 res!140910) b!309931))

(assert (= (and d!95118 c!58806) b!309932))

(assert (= (and d!95118 (not c!58806)) b!309933))

(declare-fun m!415269 () Bool)

(assert (=> d!95118 m!415269))

(declare-fun m!415271 () Bool)

(assert (=> b!309931 m!415271))

(declare-fun m!415273 () Bool)

(assert (=> b!309932 m!415273))

(declare-fun m!415275 () Bool)

(assert (=> b!309933 m!415275))

(assert (=> b!309933 m!415275))

(declare-fun m!415277 () Bool)

(assert (=> b!309933 m!415277))

(assert (=> b!308119 d!95118))

(declare-fun d!95120 () Bool)

(assert (=> d!95120 (= (tail!541 (drop!251 lt!131559 0)) (drop!251 lt!131559 (+ 0 1)))))

(declare-fun lt!132564 () Unit!5690)

(assert (=> d!95120 (= lt!132564 (choose!2703 lt!131559 0))))

(declare-fun e!192723 () Bool)

(assert (=> d!95120 e!192723))

(declare-fun res!140911 () Bool)

(assert (=> d!95120 (=> (not res!140911) (not e!192723))))

(assert (=> d!95120 (= res!140911 (>= 0 0))))

(assert (=> d!95120 (= (lemmaDropTail!228 lt!131559 0) lt!132564)))

(declare-fun b!309934 () Bool)

(assert (=> b!309934 (= e!192723 (< 0 (size!3253 lt!131559)))))

(assert (= (and d!95120 res!140911) b!309934))

(assert (=> d!95120 m!411451))

(assert (=> d!95120 m!411451))

(assert (=> d!95120 m!411457))

(assert (=> d!95120 m!411453))

(declare-fun m!415279 () Bool)

(assert (=> d!95120 m!415279))

(declare-fun m!415281 () Bool)

(assert (=> b!309934 m!415281))

(assert (=> b!308119 d!95120))

(declare-fun b!309935 () Bool)

(declare-fun e!192724 () List!4073)

(assert (=> b!309935 (= e!192724 (drop!251 (t!43305 lt!131558) (- 0 1)))))

(declare-fun d!95122 () Bool)

(declare-fun e!192725 () Bool)

(assert (=> d!95122 e!192725))

(declare-fun res!140912 () Bool)

(assert (=> d!95122 (=> (not res!140912) (not e!192725))))

(declare-fun lt!132565 () List!4073)

(assert (=> d!95122 (= res!140912 (= ((_ map implies) (content!608 lt!132565) (content!608 lt!131558)) ((as const (InoxSet Token!1306)) true)))))

(declare-fun e!192727 () List!4073)

(assert (=> d!95122 (= lt!132565 e!192727)))

(declare-fun c!58810 () Bool)

(assert (=> d!95122 (= c!58810 ((_ is Nil!4063) lt!131558))))

(assert (=> d!95122 (= (drop!251 lt!131558 0) lt!132565)))

(declare-fun b!309936 () Bool)

(declare-fun e!192726 () Int)

(declare-fun call!18051 () Int)

(assert (=> b!309936 (= e!192726 call!18051)))

(declare-fun b!309937 () Bool)

(assert (=> b!309937 (= e!192727 Nil!4063)))

(declare-fun b!309938 () Bool)

(assert (=> b!309938 (= e!192727 e!192724)))

(declare-fun c!58808 () Bool)

(assert (=> b!309938 (= c!58808 (<= 0 0))))

(declare-fun b!309939 () Bool)

(declare-fun e!192728 () Int)

(assert (=> b!309939 (= e!192726 e!192728)))

(declare-fun c!58809 () Bool)

(assert (=> b!309939 (= c!58809 (>= 0 call!18051))))

(declare-fun b!309940 () Bool)

(assert (=> b!309940 (= e!192725 (= (size!3253 lt!132565) e!192726))))

(declare-fun c!58807 () Bool)

(assert (=> b!309940 (= c!58807 (<= 0 0))))

(declare-fun b!309941 () Bool)

(assert (=> b!309941 (= e!192724 lt!131558)))

(declare-fun bm!18046 () Bool)

(assert (=> bm!18046 (= call!18051 (size!3253 lt!131558))))

(declare-fun b!309942 () Bool)

(assert (=> b!309942 (= e!192728 0)))

(declare-fun b!309943 () Bool)

(assert (=> b!309943 (= e!192728 (- call!18051 0))))

(assert (= (and d!95122 c!58810) b!309937))

(assert (= (and d!95122 (not c!58810)) b!309938))

(assert (= (and b!309938 c!58808) b!309941))

(assert (= (and b!309938 (not c!58808)) b!309935))

(assert (= (and d!95122 res!140912) b!309940))

(assert (= (and b!309940 c!58807) b!309936))

(assert (= (and b!309940 (not c!58807)) b!309939))

(assert (= (and b!309939 c!58809) b!309942))

(assert (= (and b!309939 (not c!58809)) b!309943))

(assert (= (or b!309936 b!309939 b!309943) bm!18046))

(declare-fun m!415283 () Bool)

(assert (=> b!309935 m!415283))

(declare-fun m!415285 () Bool)

(assert (=> d!95122 m!415285))

(declare-fun m!415287 () Bool)

(assert (=> d!95122 m!415287))

(declare-fun m!415289 () Bool)

(assert (=> b!309940 m!415289))

(assert (=> bm!18046 m!415271))

(assert (=> b!308119 d!95122))

(declare-fun b!309946 () Bool)

(declare-fun res!140914 () Bool)

(declare-fun e!192729 () Bool)

(assert (=> b!309946 (=> (not res!140914) (not e!192729))))

(assert (=> b!309946 (= res!140914 (>= (height!179 (++!1106 (c!58276 (charsOf!424 (apply!892 lt!131159 0))) (c!58276 lt!131563))) (max!0 (height!179 (c!58276 (charsOf!424 (apply!892 lt!131159 0)))) (height!179 (c!58276 lt!131563)))))))

(declare-fun b!309947 () Bool)

(declare-fun lt!132566 () BalanceConc!2776)

(assert (=> b!309947 (= e!192729 (= (list!1713 lt!132566) (++!1102 (list!1713 (charsOf!424 (apply!892 lt!131159 0))) (list!1713 lt!131563))))))

(declare-fun b!309945 () Bool)

(declare-fun res!140915 () Bool)

(assert (=> b!309945 (=> (not res!140915) (not e!192729))))

(assert (=> b!309945 (= res!140915 (<= (height!179 (++!1106 (c!58276 (charsOf!424 (apply!892 lt!131159 0))) (c!58276 lt!131563))) (+ (max!0 (height!179 (c!58276 (charsOf!424 (apply!892 lt!131159 0)))) (height!179 (c!58276 lt!131563))) 1)))))

(declare-fun b!309944 () Bool)

(declare-fun res!140913 () Bool)

(assert (=> b!309944 (=> (not res!140913) (not e!192729))))

(assert (=> b!309944 (= res!140913 (isBalanced!397 (++!1106 (c!58276 (charsOf!424 (apply!892 lt!131159 0))) (c!58276 lt!131563))))))

(declare-fun d!95124 () Bool)

(assert (=> d!95124 e!192729))

(declare-fun res!140916 () Bool)

(assert (=> d!95124 (=> (not res!140916) (not e!192729))))

(assert (=> d!95124 (= res!140916 (appendAssocInst!75 (c!58276 (charsOf!424 (apply!892 lt!131159 0))) (c!58276 lt!131563)))))

(assert (=> d!95124 (= lt!132566 (BalanceConc!2777 (++!1106 (c!58276 (charsOf!424 (apply!892 lt!131159 0))) (c!58276 lt!131563))))))

(assert (=> d!95124 (= (++!1104 (charsOf!424 (apply!892 lt!131159 0)) lt!131563) lt!132566)))

(assert (= (and d!95124 res!140916) b!309944))

(assert (= (and b!309944 res!140913) b!309945))

(assert (= (and b!309945 res!140915) b!309946))

(assert (= (and b!309946 res!140914) b!309947))

(declare-fun m!415291 () Bool)

(assert (=> b!309947 m!415291))

(assert (=> b!309947 m!411437))

(declare-fun m!415293 () Bool)

(assert (=> b!309947 m!415293))

(assert (=> b!309947 m!411469))

(assert (=> b!309947 m!415293))

(assert (=> b!309947 m!411469))

(declare-fun m!415295 () Bool)

(assert (=> b!309947 m!415295))

(declare-fun m!415297 () Bool)

(assert (=> b!309944 m!415297))

(assert (=> b!309944 m!415297))

(declare-fun m!415299 () Bool)

(assert (=> b!309944 m!415299))

(declare-fun m!415301 () Bool)

(assert (=> b!309945 m!415301))

(assert (=> b!309945 m!414039))

(assert (=> b!309945 m!415297))

(declare-fun m!415303 () Bool)

(assert (=> b!309945 m!415303))

(assert (=> b!309945 m!415297))

(assert (=> b!309945 m!415301))

(assert (=> b!309945 m!414039))

(declare-fun m!415305 () Bool)

(assert (=> b!309945 m!415305))

(declare-fun m!415307 () Bool)

(assert (=> d!95124 m!415307))

(assert (=> d!95124 m!415297))

(assert (=> b!309946 m!415301))

(assert (=> b!309946 m!414039))

(assert (=> b!309946 m!415297))

(assert (=> b!309946 m!415303))

(assert (=> b!309946 m!415297))

(assert (=> b!309946 m!415301))

(assert (=> b!309946 m!414039))

(assert (=> b!309946 m!415305))

(assert (=> b!308119 d!95124))

(declare-fun d!95126 () Bool)

(assert (=> d!95126 (= (head!966 (drop!251 lt!131558 0)) (apply!894 lt!131558 0))))

(declare-fun lt!132567 () Unit!5690)

(assert (=> d!95126 (= lt!132567 (choose!2702 lt!131558 0))))

(declare-fun e!192730 () Bool)

(assert (=> d!95126 e!192730))

(declare-fun res!140917 () Bool)

(assert (=> d!95126 (=> (not res!140917) (not e!192730))))

(assert (=> d!95126 (= res!140917 (>= 0 0))))

(assert (=> d!95126 (= (lemmaDropApply!236 lt!131558 0) lt!132567)))

(declare-fun b!309948 () Bool)

(assert (=> b!309948 (= e!192730 (< 0 (size!3253 lt!131558)))))

(assert (= (and d!95126 res!140917) b!309948))

(assert (=> d!95126 m!411441))

(assert (=> d!95126 m!411441))

(assert (=> d!95126 m!411449))

(assert (=> d!95126 m!411447))

(declare-fun m!415309 () Bool)

(assert (=> d!95126 m!415309))

(assert (=> b!309948 m!415271))

(assert (=> b!308119 d!95126))

(declare-fun b!309949 () Bool)

(declare-fun e!192733 () Bool)

(declare-fun e!192732 () Bool)

(assert (=> b!309949 (= e!192733 e!192732)))

(declare-fun res!140918 () Bool)

(assert (=> b!309949 (=> res!140918 e!192732)))

(declare-fun lt!132572 () Option!929)

(assert (=> b!309949 (= res!140918 (not (isDefined!768 lt!132572)))))

(declare-fun b!309950 () Bool)

(declare-fun e!192731 () Bool)

(declare-fun e!192734 () Bool)

(assert (=> b!309950 (= e!192731 e!192734)))

(declare-fun res!140923 () Bool)

(assert (=> b!309950 (=> (not res!140923) (not e!192734))))

(assert (=> b!309950 (= res!140923 (= (_1!2563 (get!1390 lt!132572)) (_1!2561 (get!1388 (maxPrefixZipper!143 thiss!17480 rules!1920 (list!1713 (++!1104 (charsOf!424 (apply!892 lt!131159 0)) lt!131563)))))))))

(declare-fun b!309951 () Bool)

(declare-fun e!192735 () Bool)

(assert (=> b!309951 (= e!192732 e!192735)))

(declare-fun res!140921 () Bool)

(assert (=> b!309951 (=> (not res!140921) (not e!192735))))

(assert (=> b!309951 (= res!140921 (= (_1!2563 (get!1390 lt!132572)) (_1!2561 (get!1388 (maxPrefix!383 thiss!17480 rules!1920 (list!1713 (++!1104 (charsOf!424 (apply!892 lt!131159 0)) lt!131563)))))))))

(declare-fun d!95128 () Bool)

(assert (=> d!95128 e!192733))

(declare-fun res!140920 () Bool)

(assert (=> d!95128 (=> (not res!140920) (not e!192733))))

(assert (=> d!95128 (= res!140920 (= (isDefined!768 lt!132572) (isDefined!767 (maxPrefixZipper!143 thiss!17480 rules!1920 (list!1713 (++!1104 (charsOf!424 (apply!892 lt!131159 0)) lt!131563))))))))

(declare-fun e!192736 () Option!929)

(assert (=> d!95128 (= lt!132572 e!192736)))

(declare-fun c!58811 () Bool)

(assert (=> d!95128 (= c!58811 (and ((_ is Cons!4062) rules!1920) ((_ is Nil!4062) (t!43304 rules!1920))))))

(declare-fun lt!132574 () Unit!5690)

(declare-fun lt!132568 () Unit!5690)

(assert (=> d!95128 (= lt!132574 lt!132568)))

(declare-fun lt!132573 () List!4071)

(declare-fun lt!132571 () List!4071)

(assert (=> d!95128 (isPrefix!441 lt!132573 lt!132571)))

(assert (=> d!95128 (= lt!132568 (lemmaIsPrefixRefl!238 lt!132573 lt!132571))))

(assert (=> d!95128 (= lt!132571 (list!1713 (++!1104 (charsOf!424 (apply!892 lt!131159 0)) lt!131563)))))

(assert (=> d!95128 (= lt!132573 (list!1713 (++!1104 (charsOf!424 (apply!892 lt!131159 0)) lt!131563)))))

(assert (=> d!95128 (rulesValidInductive!233 thiss!17480 rules!1920)))

(assert (=> d!95128 (= (maxPrefixZipperSequence!346 thiss!17480 rules!1920 (++!1104 (charsOf!424 (apply!892 lt!131159 0)) lt!131563)) lt!132572)))

(declare-fun b!309952 () Bool)

(assert (=> b!309952 (= e!192735 (= (list!1713 (_2!2563 (get!1390 lt!132572))) (_2!2561 (get!1388 (maxPrefix!383 thiss!17480 rules!1920 (list!1713 (++!1104 (charsOf!424 (apply!892 lt!131159 0)) lt!131563)))))))))

(declare-fun bm!18047 () Bool)

(declare-fun call!18052 () Option!929)

(assert (=> bm!18047 (= call!18052 (maxPrefixOneRuleZipperSequence!144 thiss!17480 (h!9459 rules!1920) (++!1104 (charsOf!424 (apply!892 lt!131159 0)) lt!131563)))))

(declare-fun b!309953 () Bool)

(declare-fun res!140922 () Bool)

(assert (=> b!309953 (=> (not res!140922) (not e!192733))))

(assert (=> b!309953 (= res!140922 e!192731)))

(declare-fun res!140919 () Bool)

(assert (=> b!309953 (=> res!140919 e!192731)))

(assert (=> b!309953 (= res!140919 (not (isDefined!768 lt!132572)))))

(declare-fun b!309954 () Bool)

(assert (=> b!309954 (= e!192734 (= (list!1713 (_2!2563 (get!1390 lt!132572))) (_2!2561 (get!1388 (maxPrefixZipper!143 thiss!17480 rules!1920 (list!1713 (++!1104 (charsOf!424 (apply!892 lt!131159 0)) lt!131563)))))))))

(declare-fun b!309955 () Bool)

(assert (=> b!309955 (= e!192736 call!18052)))

(declare-fun b!309956 () Bool)

(declare-fun lt!132569 () Option!929)

(declare-fun lt!132570 () Option!929)

(assert (=> b!309956 (= e!192736 (ite (and ((_ is None!928) lt!132569) ((_ is None!928) lt!132570)) None!928 (ite ((_ is None!928) lt!132570) lt!132569 (ite ((_ is None!928) lt!132569) lt!132570 (ite (>= (size!3243 (_1!2563 (v!14933 lt!132569))) (size!3243 (_1!2563 (v!14933 lt!132570)))) lt!132569 lt!132570)))))))

(assert (=> b!309956 (= lt!132569 call!18052)))

(assert (=> b!309956 (= lt!132570 (maxPrefixZipperSequence!346 thiss!17480 (t!43304 rules!1920) (++!1104 (charsOf!424 (apply!892 lt!131159 0)) lt!131563)))))

(assert (= (and d!95128 c!58811) b!309955))

(assert (= (and d!95128 (not c!58811)) b!309956))

(assert (= (or b!309955 b!309956) bm!18047))

(assert (= (and d!95128 res!140920) b!309953))

(assert (= (and b!309953 (not res!140919)) b!309950))

(assert (= (and b!309950 res!140923) b!309954))

(assert (= (and b!309953 res!140922) b!309949))

(assert (= (and b!309949 (not res!140918)) b!309951))

(assert (= (and b!309951 res!140921) b!309952))

(declare-fun m!415311 () Bool)

(assert (=> b!309950 m!415311))

(assert (=> b!309950 m!411439))

(declare-fun m!415313 () Bool)

(assert (=> b!309950 m!415313))

(assert (=> b!309950 m!415313))

(declare-fun m!415315 () Bool)

(assert (=> b!309950 m!415315))

(assert (=> b!309950 m!415315))

(declare-fun m!415317 () Bool)

(assert (=> b!309950 m!415317))

(assert (=> b!309954 m!415315))

(assert (=> b!309954 m!415317))

(assert (=> b!309954 m!415313))

(assert (=> b!309954 m!415315))

(assert (=> b!309954 m!415311))

(declare-fun m!415319 () Bool)

(assert (=> b!309954 m!415319))

(assert (=> b!309954 m!411439))

(assert (=> b!309954 m!415313))

(assert (=> bm!18047 m!411439))

(declare-fun m!415321 () Bool)

(assert (=> bm!18047 m!415321))

(assert (=> b!309956 m!411439))

(declare-fun m!415323 () Bool)

(assert (=> b!309956 m!415323))

(declare-fun m!415325 () Bool)

(assert (=> b!309949 m!415325))

(assert (=> b!309953 m!415325))

(assert (=> b!309952 m!415313))

(declare-fun m!415327 () Bool)

(assert (=> b!309952 m!415327))

(assert (=> b!309952 m!415311))

(assert (=> b!309952 m!415319))

(assert (=> b!309952 m!411439))

(assert (=> b!309952 m!415313))

(assert (=> b!309952 m!415327))

(declare-fun m!415329 () Bool)

(assert (=> b!309952 m!415329))

(declare-fun m!415331 () Bool)

(assert (=> d!95128 m!415331))

(assert (=> d!95128 m!415325))

(assert (=> d!95128 m!415315))

(declare-fun m!415333 () Bool)

(assert (=> d!95128 m!415333))

(assert (=> d!95128 m!415313))

(assert (=> d!95128 m!415315))

(assert (=> d!95128 m!410421))

(declare-fun m!415335 () Bool)

(assert (=> d!95128 m!415335))

(assert (=> d!95128 m!411439))

(assert (=> d!95128 m!415313))

(assert (=> b!309951 m!415311))

(assert (=> b!309951 m!411439))

(assert (=> b!309951 m!415313))

(assert (=> b!309951 m!415313))

(assert (=> b!309951 m!415327))

(assert (=> b!309951 m!415327))

(assert (=> b!309951 m!415329))

(assert (=> b!308119 d!95128))

(declare-fun d!95130 () Bool)

(assert (=> d!95130 (= (head!966 (drop!251 lt!131558 0)) (h!9460 (drop!251 lt!131558 0)))))

(assert (=> b!308119 d!95130))

(assert (=> b!308119 d!94592))

(assert (=> b!308119 d!94276))

(declare-fun d!95132 () Bool)

(assert (=> d!95132 (= (tail!541 (drop!251 lt!131559 0)) (t!43305 (drop!251 lt!131559 0)))))

(assert (=> b!308119 d!95132))

(declare-fun b!309957 () Bool)

(declare-fun e!192737 () List!4073)

(assert (=> b!309957 (= e!192737 (drop!251 (t!43305 lt!131559) (- (+ 0 1) 1)))))

(declare-fun d!95134 () Bool)

(declare-fun e!192738 () Bool)

(assert (=> d!95134 e!192738))

(declare-fun res!140924 () Bool)

(assert (=> d!95134 (=> (not res!140924) (not e!192738))))

(declare-fun lt!132575 () List!4073)

(assert (=> d!95134 (= res!140924 (= ((_ map implies) (content!608 lt!132575) (content!608 lt!131559)) ((as const (InoxSet Token!1306)) true)))))

(declare-fun e!192740 () List!4073)

(assert (=> d!95134 (= lt!132575 e!192740)))

(declare-fun c!58815 () Bool)

(assert (=> d!95134 (= c!58815 ((_ is Nil!4063) lt!131559))))

(assert (=> d!95134 (= (drop!251 lt!131559 (+ 0 1)) lt!132575)))

(declare-fun b!309958 () Bool)

(declare-fun e!192739 () Int)

(declare-fun call!18053 () Int)

(assert (=> b!309958 (= e!192739 call!18053)))

(declare-fun b!309959 () Bool)

(assert (=> b!309959 (= e!192740 Nil!4063)))

(declare-fun b!309960 () Bool)

(assert (=> b!309960 (= e!192740 e!192737)))

(declare-fun c!58813 () Bool)

(assert (=> b!309960 (= c!58813 (<= (+ 0 1) 0))))

(declare-fun b!309961 () Bool)

(declare-fun e!192741 () Int)

(assert (=> b!309961 (= e!192739 e!192741)))

(declare-fun c!58814 () Bool)

(assert (=> b!309961 (= c!58814 (>= (+ 0 1) call!18053))))

(declare-fun b!309962 () Bool)

(assert (=> b!309962 (= e!192738 (= (size!3253 lt!132575) e!192739))))

(declare-fun c!58812 () Bool)

(assert (=> b!309962 (= c!58812 (<= (+ 0 1) 0))))

(declare-fun b!309963 () Bool)

(assert (=> b!309963 (= e!192737 lt!131559)))

(declare-fun bm!18048 () Bool)

(assert (=> bm!18048 (= call!18053 (size!3253 lt!131559))))

(declare-fun b!309964 () Bool)

(assert (=> b!309964 (= e!192741 0)))

(declare-fun b!309965 () Bool)

(assert (=> b!309965 (= e!192741 (- call!18053 (+ 0 1)))))

(assert (= (and d!95134 c!58815) b!309959))

(assert (= (and d!95134 (not c!58815)) b!309960))

(assert (= (and b!309960 c!58813) b!309963))

(assert (= (and b!309960 (not c!58813)) b!309957))

(assert (= (and d!95134 res!140924) b!309962))

(assert (= (and b!309962 c!58812) b!309958))

(assert (= (and b!309962 (not c!58812)) b!309961))

(assert (= (and b!309961 c!58814) b!309964))

(assert (= (and b!309961 (not c!58814)) b!309965))

(assert (= (or b!309958 b!309961 b!309965) bm!18048))

(declare-fun m!415337 () Bool)

(assert (=> b!309957 m!415337))

(declare-fun m!415339 () Bool)

(assert (=> d!95134 m!415339))

(declare-fun m!415341 () Bool)

(assert (=> d!95134 m!415341))

(declare-fun m!415343 () Bool)

(assert (=> b!309962 m!415343))

(assert (=> bm!18048 m!415281))

(assert (=> b!308119 d!95134))

(declare-fun b!309966 () Bool)

(declare-fun e!192742 () List!4073)

(assert (=> b!309966 (= e!192742 (drop!251 (t!43305 lt!131559) (- 0 1)))))

(declare-fun d!95136 () Bool)

(declare-fun e!192743 () Bool)

(assert (=> d!95136 e!192743))

(declare-fun res!140925 () Bool)

(assert (=> d!95136 (=> (not res!140925) (not e!192743))))

(declare-fun lt!132576 () List!4073)

(assert (=> d!95136 (= res!140925 (= ((_ map implies) (content!608 lt!132576) (content!608 lt!131559)) ((as const (InoxSet Token!1306)) true)))))

(declare-fun e!192745 () List!4073)

(assert (=> d!95136 (= lt!132576 e!192745)))

(declare-fun c!58819 () Bool)

(assert (=> d!95136 (= c!58819 ((_ is Nil!4063) lt!131559))))

(assert (=> d!95136 (= (drop!251 lt!131559 0) lt!132576)))

(declare-fun b!309967 () Bool)

(declare-fun e!192744 () Int)

(declare-fun call!18054 () Int)

(assert (=> b!309967 (= e!192744 call!18054)))

(declare-fun b!309968 () Bool)

(assert (=> b!309968 (= e!192745 Nil!4063)))

(declare-fun b!309969 () Bool)

(assert (=> b!309969 (= e!192745 e!192742)))

(declare-fun c!58817 () Bool)

(assert (=> b!309969 (= c!58817 (<= 0 0))))

(declare-fun b!309970 () Bool)

(declare-fun e!192746 () Int)

(assert (=> b!309970 (= e!192744 e!192746)))

(declare-fun c!58818 () Bool)

(assert (=> b!309970 (= c!58818 (>= 0 call!18054))))

(declare-fun b!309971 () Bool)

(assert (=> b!309971 (= e!192743 (= (size!3253 lt!132576) e!192744))))

(declare-fun c!58816 () Bool)

(assert (=> b!309971 (= c!58816 (<= 0 0))))

(declare-fun b!309972 () Bool)

(assert (=> b!309972 (= e!192742 lt!131559)))

(declare-fun bm!18049 () Bool)

(assert (=> bm!18049 (= call!18054 (size!3253 lt!131559))))

(declare-fun b!309973 () Bool)

(assert (=> b!309973 (= e!192746 0)))

(declare-fun b!309974 () Bool)

(assert (=> b!309974 (= e!192746 (- call!18054 0))))

(assert (= (and d!95136 c!58819) b!309968))

(assert (= (and d!95136 (not c!58819)) b!309969))

(assert (= (and b!309969 c!58817) b!309972))

(assert (= (and b!309969 (not c!58817)) b!309966))

(assert (= (and d!95136 res!140925) b!309971))

(assert (= (and b!309971 c!58816) b!309967))

(assert (= (and b!309971 (not c!58816)) b!309970))

(assert (= (and b!309970 c!58818) b!309973))

(assert (= (and b!309970 (not c!58818)) b!309974))

(assert (= (or b!309967 b!309970 b!309974) bm!18049))

(declare-fun m!415345 () Bool)

(assert (=> b!309966 m!415345))

(declare-fun m!415347 () Bool)

(assert (=> d!95136 m!415347))

(assert (=> d!95136 m!415341))

(declare-fun m!415349 () Bool)

(assert (=> b!309971 m!415349))

(assert (=> bm!18049 m!415281))

(assert (=> b!308119 d!95136))

(declare-fun d!95138 () Bool)

(assert (=> d!95138 (dynLambda!2225 lambda!10525 (apply!892 lt!131159 0))))

(declare-fun lt!132577 () Unit!5690)

(assert (=> d!95138 (= lt!132577 (choose!2691 (list!1716 lt!131159) lambda!10525 (apply!892 lt!131159 0)))))

(declare-fun e!192747 () Bool)

(assert (=> d!95138 e!192747))

(declare-fun res!140926 () Bool)

(assert (=> d!95138 (=> (not res!140926) (not e!192747))))

(assert (=> d!95138 (= res!140926 (forall!1072 (list!1716 lt!131159) lambda!10525))))

(assert (=> d!95138 (= (forallContained!334 (list!1716 lt!131159) lambda!10525 (apply!892 lt!131159 0)) lt!132577)))

(declare-fun b!309975 () Bool)

(assert (=> b!309975 (= e!192747 (contains!803 (list!1716 lt!131159) (apply!892 lt!131159 0)))))

(assert (= (and d!95138 res!140926) b!309975))

(declare-fun b_lambda!10811 () Bool)

(assert (=> (not b_lambda!10811) (not d!95138)))

(assert (=> d!95138 m!411433))

(declare-fun m!415351 () Bool)

(assert (=> d!95138 m!415351))

(assert (=> d!95138 m!410539))

(assert (=> d!95138 m!411433))

(declare-fun m!415353 () Bool)

(assert (=> d!95138 m!415353))

(assert (=> d!95138 m!410539))

(declare-fun m!415355 () Bool)

(assert (=> d!95138 m!415355))

(assert (=> b!309975 m!410539))

(assert (=> b!309975 m!411433))

(declare-fun m!415357 () Bool)

(assert (=> b!309975 m!415357))

(assert (=> b!308119 d!95138))

(declare-fun d!95140 () Bool)

(declare-fun lt!132578 () BalanceConc!2776)

(assert (=> d!95140 (= (list!1713 lt!132578) (originalCharacters!824 (apply!892 lt!131159 0)))))

(assert (=> d!95140 (= lt!132578 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (apply!892 lt!131159 0)))) (value!26574 (apply!892 lt!131159 0))))))

(assert (=> d!95140 (= (charsOf!424 (apply!892 lt!131159 0)) lt!132578)))

(declare-fun b_lambda!10813 () Bool)

(assert (=> (not b_lambda!10813) (not d!95140)))

(declare-fun tb!19693 () Bool)

(declare-fun t!43692 () Bool)

(assert (=> (and b!307444 (= (toChars!1399 (transformation!781 (h!9459 rules!1920))) (toChars!1399 (transformation!781 (rule!1394 (apply!892 lt!131159 0))))) t!43692) tb!19693))

(declare-fun b!309976 () Bool)

(declare-fun e!192748 () Bool)

(declare-fun tp!109217 () Bool)

(assert (=> b!309976 (= e!192748 (and (inv!5019 (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (apply!892 lt!131159 0)))) (value!26574 (apply!892 lt!131159 0))))) tp!109217))))

(declare-fun result!23702 () Bool)

(assert (=> tb!19693 (= result!23702 (and (inv!5020 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (apply!892 lt!131159 0)))) (value!26574 (apply!892 lt!131159 0)))) e!192748))))

(assert (= tb!19693 b!309976))

(declare-fun m!415359 () Bool)

(assert (=> b!309976 m!415359))

(declare-fun m!415361 () Bool)

(assert (=> tb!19693 m!415361))

(assert (=> d!95140 t!43692))

(declare-fun b_and!26299 () Bool)

(assert (= b_and!26281 (and (=> t!43692 result!23702) b_and!26299)))

(declare-fun tb!19695 () Bool)

(declare-fun t!43694 () Bool)

(assert (=> (and b!308316 (= (toChars!1399 (transformation!781 (h!9459 (t!43304 rules!1920)))) (toChars!1399 (transformation!781 (rule!1394 (apply!892 lt!131159 0))))) t!43694) tb!19695))

(declare-fun result!23704 () Bool)

(assert (= result!23704 result!23702))

(assert (=> d!95140 t!43694))

(declare-fun b_and!26301 () Bool)

(assert (= b_and!26279 (and (=> t!43694 result!23704) b_and!26301)))

(declare-fun t!43696 () Bool)

(declare-fun tb!19697 () Bool)

(assert (=> (and b!307440 (= (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (toChars!1399 (transformation!781 (rule!1394 (apply!892 lt!131159 0))))) t!43696) tb!19697))

(declare-fun result!23706 () Bool)

(assert (= result!23706 result!23702))

(assert (=> d!95140 t!43696))

(declare-fun b_and!26303 () Bool)

(assert (= b_and!26277 (and (=> t!43696 result!23706) b_and!26303)))

(declare-fun t!43698 () Bool)

(declare-fun tb!19699 () Bool)

(assert (=> (and b!307455 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (toChars!1399 (transformation!781 (rule!1394 (apply!892 lt!131159 0))))) t!43698) tb!19699))

(declare-fun result!23708 () Bool)

(assert (= result!23708 result!23702))

(assert (=> d!95140 t!43698))

(declare-fun b_and!26305 () Bool)

(assert (= b_and!26283 (and (=> t!43698 result!23708) b_and!26305)))

(declare-fun t!43700 () Bool)

(declare-fun tb!19701 () Bool)

(assert (=> (and b!308288 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))) (toChars!1399 (transformation!781 (rule!1394 (apply!892 lt!131159 0))))) t!43700) tb!19701))

(declare-fun result!23710 () Bool)

(assert (= result!23710 result!23702))

(assert (=> d!95140 t!43700))

(declare-fun b_and!26307 () Bool)

(assert (= b_and!26275 (and (=> t!43700 result!23710) b_and!26307)))

(declare-fun m!415363 () Bool)

(assert (=> d!95140 m!415363))

(declare-fun m!415365 () Bool)

(assert (=> d!95140 m!415365))

(assert (=> b!308119 d!95140))

(declare-fun bs!35917 () Bool)

(declare-fun d!95142 () Bool)

(assert (= bs!35917 (and d!95142 d!94270)))

(declare-fun lambda!10578 () Int)

(assert (=> bs!35917 (not (= lambda!10578 lambda!10532))))

(declare-fun bs!35918 () Bool)

(assert (= bs!35918 (and d!95142 d!94504)))

(assert (=> bs!35918 (= lambda!10578 lambda!10542)))

(declare-fun bs!35919 () Bool)

(assert (= bs!35919 (and d!95142 b!308847)))

(assert (=> bs!35919 (not (= lambda!10578 lambda!10543))))

(declare-fun bs!35920 () Bool)

(assert (= bs!35920 (and d!95142 b!307890)))

(assert (=> bs!35920 (not (= lambda!10578 lambda!10514))))

(declare-fun bs!35921 () Bool)

(assert (= bs!35921 (and d!95142 d!94136)))

(assert (=> bs!35921 (= lambda!10578 lambda!10524)))

(declare-fun bs!35922 () Bool)

(assert (= bs!35922 (and d!95142 b!308157)))

(assert (=> bs!35922 (not (= lambda!10578 lambda!10526))))

(declare-fun bs!35923 () Bool)

(assert (= bs!35923 (and d!95142 b!307468)))

(assert (=> bs!35923 (not (= lambda!10578 lambda!10492))))

(declare-fun bs!35924 () Bool)

(assert (= bs!35924 (and d!95142 b!307466)))

(assert (=> bs!35924 (= lambda!10578 lambda!10491)))

(declare-fun bs!35925 () Bool)

(assert (= bs!35925 (and d!95142 d!93922)))

(assert (=> bs!35925 (not (= lambda!10578 lambda!10508))))

(declare-fun bs!35926 () Bool)

(assert (= bs!35926 (and d!95142 b!308119)))

(assert (=> bs!35926 (not (= lambda!10578 lambda!10525))))

(declare-fun bs!35927 () Bool)

(assert (= bs!35927 (and d!95142 b!308013)))

(assert (=> bs!35927 (not (= lambda!10578 lambda!10522))))

(declare-fun bs!35928 () Bool)

(assert (= bs!35928 (and d!95142 d!94010)))

(assert (=> bs!35928 (= lambda!10578 lambda!10521)))

(declare-fun bs!35929 () Bool)

(declare-fun b!309982 () Bool)

(assert (= bs!35929 (and b!309982 d!94270)))

(declare-fun lambda!10579 () Int)

(assert (=> bs!35929 (= lambda!10579 lambda!10532)))

(declare-fun bs!35930 () Bool)

(assert (= bs!35930 (and b!309982 d!94504)))

(assert (=> bs!35930 (not (= lambda!10579 lambda!10542))))

(declare-fun bs!35931 () Bool)

(assert (= bs!35931 (and b!309982 b!308847)))

(assert (=> bs!35931 (= lambda!10579 lambda!10543)))

(declare-fun bs!35932 () Bool)

(assert (= bs!35932 (and b!309982 b!307890)))

(assert (=> bs!35932 (= lambda!10579 lambda!10514)))

(declare-fun bs!35933 () Bool)

(assert (= bs!35933 (and b!309982 d!94136)))

(assert (=> bs!35933 (not (= lambda!10579 lambda!10524))))

(declare-fun bs!35934 () Bool)

(assert (= bs!35934 (and b!309982 b!308157)))

(assert (=> bs!35934 (= lambda!10579 lambda!10526)))

(declare-fun bs!35935 () Bool)

(assert (= bs!35935 (and b!309982 b!307468)))

(assert (=> bs!35935 (= lambda!10579 lambda!10492)))

(declare-fun bs!35936 () Bool)

(assert (= bs!35936 (and b!309982 d!95142)))

(assert (=> bs!35936 (not (= lambda!10579 lambda!10578))))

(declare-fun bs!35937 () Bool)

(assert (= bs!35937 (and b!309982 b!307466)))

(assert (=> bs!35937 (not (= lambda!10579 lambda!10491))))

(declare-fun bs!35938 () Bool)

(assert (= bs!35938 (and b!309982 d!93922)))

(assert (=> bs!35938 (= lambda!10579 lambda!10508)))

(declare-fun bs!35939 () Bool)

(assert (= bs!35939 (and b!309982 b!308119)))

(assert (=> bs!35939 (= lambda!10579 lambda!10525)))

(declare-fun bs!35940 () Bool)

(assert (= bs!35940 (and b!309982 b!308013)))

(assert (=> bs!35940 (= lambda!10579 lambda!10522)))

(declare-fun bs!35941 () Bool)

(assert (= bs!35941 (and b!309982 d!94010)))

(assert (=> bs!35941 (not (= lambda!10579 lambda!10521))))

(declare-fun b!309988 () Bool)

(declare-fun e!192757 () Bool)

(assert (=> b!309988 (= e!192757 true)))

(declare-fun b!309987 () Bool)

(declare-fun e!192756 () Bool)

(assert (=> b!309987 (= e!192756 e!192757)))

(declare-fun b!309986 () Bool)

(declare-fun e!192755 () Bool)

(assert (=> b!309986 (= e!192755 e!192756)))

(assert (=> b!309982 e!192755))

(assert (= b!309987 b!309988))

(assert (= b!309986 b!309987))

(assert (= (and b!309982 ((_ is Cons!4062) rules!1920)) b!309986))

(assert (=> b!309988 (< (dynLambda!2219 order!3297 (toValue!1540 (transformation!781 (h!9459 rules!1920)))) (dynLambda!2220 order!3299 lambda!10579))))

(assert (=> b!309988 (< (dynLambda!2221 order!3301 (toChars!1399 (transformation!781 (h!9459 rules!1920)))) (dynLambda!2220 order!3299 lambda!10579))))

(assert (=> b!309982 true))

(declare-fun c!58822 () Bool)

(declare-fun bm!18050 () Bool)

(declare-fun call!18057 () BalanceConc!2776)

(declare-fun call!18059 () Token!1306)

(assert (=> bm!18050 (= call!18057 (charsOf!424 (ite c!58822 separatorToken!170 call!18059)))))

(declare-fun bm!18051 () Bool)

(declare-fun call!18056 () Token!1306)

(assert (=> bm!18051 (= call!18059 call!18056)))

(declare-fun lt!132580 () BalanceConc!2776)

(assert (=> d!95142 (= (list!1713 lt!132580) (printWithSeparatorTokenWhenNeededList!348 thiss!17480 rules!1920 (dropList!196 lt!131159 (+ 0 1)) separatorToken!170))))

(declare-fun e!192751 () BalanceConc!2776)

(assert (=> d!95142 (= lt!132580 e!192751)))

(declare-fun c!58821 () Bool)

(assert (=> d!95142 (= c!58821 (>= (+ 0 1) (size!3247 lt!131159)))))

(declare-fun lt!132587 () Unit!5690)

(assert (=> d!95142 (= lt!132587 (lemmaContentSubsetPreservesForall!140 (list!1716 lt!131159) (dropList!196 lt!131159 (+ 0 1)) lambda!10578))))

(declare-fun e!192749 () Bool)

(assert (=> d!95142 e!192749))

(declare-fun res!140928 () Bool)

(assert (=> d!95142 (=> (not res!140928) (not e!192749))))

(assert (=> d!95142 (= res!140928 (>= (+ 0 1) 0))))

(assert (=> d!95142 (= (printWithSeparatorTokenWhenNeededRec!340 thiss!17480 rules!1920 lt!131159 separatorToken!170 (+ 0 1)) lt!132580)))

(declare-fun bm!18052 () Bool)

(assert (=> bm!18052 (= call!18056 (apply!892 lt!131159 (+ 0 1)))))

(declare-fun b!309977 () Bool)

(assert (=> b!309977 (= e!192749 (<= (+ 0 1) (size!3247 lt!131159)))))

(declare-fun b!309978 () Bool)

(declare-fun e!192754 () BalanceConc!2776)

(declare-fun call!18058 () BalanceConc!2776)

(declare-fun lt!132590 () BalanceConc!2776)

(assert (=> b!309978 (= e!192754 (++!1104 call!18058 lt!132590))))

(declare-fun b!309979 () Bool)

(declare-fun e!192752 () Bool)

(declare-fun lt!132581 () Option!929)

(assert (=> b!309979 (= e!192752 (= (_1!2563 (v!14933 lt!132581)) (apply!892 lt!131159 (+ 0 1))))))

(declare-fun b!309980 () Bool)

(assert (=> b!309980 (= e!192751 (BalanceConc!2777 Empty!1384))))

(declare-fun c!58820 () Bool)

(declare-fun call!18055 () BalanceConc!2776)

(declare-fun bm!18053 () Bool)

(assert (=> bm!18053 (= call!18055 (charsOf!424 (ite c!58820 call!18056 call!18059)))))

(declare-fun b!309981 () Bool)

(declare-fun e!192753 () Bool)

(assert (=> b!309981 (= e!192753 (not (= (_1!2563 (v!14933 lt!132581)) call!18056)))))

(declare-fun e!192750 () BalanceConc!2776)

(assert (=> b!309982 (= e!192751 e!192750)))

(declare-fun lt!132585 () List!4073)

(assert (=> b!309982 (= lt!132585 (list!1716 lt!131159))))

(declare-fun lt!132582 () Unit!5690)

(assert (=> b!309982 (= lt!132582 (lemmaDropApply!236 lt!132585 (+ 0 1)))))

(assert (=> b!309982 (= (head!966 (drop!251 lt!132585 (+ 0 1))) (apply!894 lt!132585 (+ 0 1)))))

(declare-fun lt!132584 () Unit!5690)

(assert (=> b!309982 (= lt!132584 lt!132582)))

(declare-fun lt!132586 () List!4073)

(assert (=> b!309982 (= lt!132586 (list!1716 lt!131159))))

(declare-fun lt!132592 () Unit!5690)

(assert (=> b!309982 (= lt!132592 (lemmaDropTail!228 lt!132586 (+ 0 1)))))

(assert (=> b!309982 (= (tail!541 (drop!251 lt!132586 (+ 0 1))) (drop!251 lt!132586 (+ 0 1 1)))))

(declare-fun lt!132591 () Unit!5690)

(assert (=> b!309982 (= lt!132591 lt!132592)))

(declare-fun lt!132589 () Unit!5690)

(assert (=> b!309982 (= lt!132589 (forallContained!334 (list!1716 lt!131159) lambda!10579 (apply!892 lt!131159 (+ 0 1))))))

(assert (=> b!309982 (= lt!132590 (printWithSeparatorTokenWhenNeededRec!340 thiss!17480 rules!1920 lt!131159 separatorToken!170 (+ 0 1 1)))))

(assert (=> b!309982 (= lt!132581 (maxPrefixZipperSequence!346 thiss!17480 rules!1920 (++!1104 (charsOf!424 (apply!892 lt!131159 (+ 0 1))) lt!132590)))))

(declare-fun res!140929 () Bool)

(assert (=> b!309982 (= res!140929 ((_ is Some!928) lt!132581))))

(assert (=> b!309982 (=> (not res!140929) (not e!192752))))

(assert (=> b!309982 (= c!58820 e!192752)))

(declare-fun b!309983 () Bool)

(assert (=> b!309983 (= e!192750 call!18058)))

(declare-fun bm!18054 () Bool)

(assert (=> bm!18054 (= call!18058 (++!1104 call!18055 (ite c!58820 lt!132590 call!18057)))))

(declare-fun b!309984 () Bool)

(assert (=> b!309984 (= e!192754 (BalanceConc!2777 Empty!1384))))

(assert (=> b!309984 (= (print!392 thiss!17480 (singletonSeq!327 call!18059)) (printTailRec!353 thiss!17480 (singletonSeq!327 call!18059) 0 (BalanceConc!2777 Empty!1384)))))

(declare-fun lt!132583 () Unit!5690)

(declare-fun Unit!5736 () Unit!5690)

(assert (=> b!309984 (= lt!132583 Unit!5736)))

(declare-fun lt!132588 () Unit!5690)

(assert (=> b!309984 (= lt!132588 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!144 thiss!17480 rules!1920 (list!1713 call!18057) (list!1713 lt!132590)))))

(assert (=> b!309984 false))

(declare-fun lt!132579 () Unit!5690)

(declare-fun Unit!5737 () Unit!5690)

(assert (=> b!309984 (= lt!132579 Unit!5737)))

(declare-fun b!309985 () Bool)

(assert (=> b!309985 (= c!58822 e!192753)))

(declare-fun res!140927 () Bool)

(assert (=> b!309985 (=> (not res!140927) (not e!192753))))

(assert (=> b!309985 (= res!140927 ((_ is Some!928) lt!132581))))

(assert (=> b!309985 (= e!192750 e!192754)))

(assert (= (and d!95142 res!140928) b!309977))

(assert (= (and d!95142 c!58821) b!309980))

(assert (= (and d!95142 (not c!58821)) b!309982))

(assert (= (and b!309982 res!140929) b!309979))

(assert (= (and b!309982 c!58820) b!309983))

(assert (= (and b!309982 (not c!58820)) b!309985))

(assert (= (and b!309985 res!140927) b!309981))

(assert (= (and b!309985 c!58822) b!309978))

(assert (= (and b!309985 (not c!58822)) b!309984))

(assert (= (or b!309978 b!309984) bm!18051))

(assert (= (or b!309978 b!309984) bm!18050))

(assert (= (or b!309983 bm!18051 b!309981) bm!18052))

(assert (= (or b!309983 b!309978) bm!18053))

(assert (= (or b!309983 b!309978) bm!18054))

(assert (=> b!309982 m!410539))

(declare-fun m!415367 () Bool)

(assert (=> b!309982 m!415367))

(declare-fun m!415369 () Bool)

(assert (=> b!309982 m!415369))

(declare-fun m!415371 () Bool)

(assert (=> b!309982 m!415371))

(declare-fun m!415373 () Bool)

(assert (=> b!309982 m!415373))

(declare-fun m!415375 () Bool)

(assert (=> b!309982 m!415375))

(assert (=> b!309982 m!415367))

(assert (=> b!309982 m!415371))

(assert (=> b!309982 m!415367))

(assert (=> b!309982 m!415373))

(declare-fun m!415377 () Bool)

(assert (=> b!309982 m!415377))

(declare-fun m!415379 () Bool)

(assert (=> b!309982 m!415379))

(declare-fun m!415381 () Bool)

(assert (=> b!309982 m!415381))

(assert (=> b!309982 m!415375))

(declare-fun m!415383 () Bool)

(assert (=> b!309982 m!415383))

(declare-fun m!415385 () Bool)

(assert (=> b!309982 m!415385))

(declare-fun m!415387 () Bool)

(assert (=> b!309982 m!415387))

(declare-fun m!415389 () Bool)

(assert (=> b!309982 m!415389))

(assert (=> b!309982 m!415385))

(declare-fun m!415391 () Bool)

(assert (=> b!309982 m!415391))

(declare-fun m!415393 () Bool)

(assert (=> b!309982 m!415393))

(assert (=> b!309982 m!410539))

(assert (=> bm!18052 m!415367))

(declare-fun m!415395 () Bool)

(assert (=> b!309984 m!415395))

(declare-fun m!415397 () Bool)

(assert (=> b!309984 m!415397))

(assert (=> b!309984 m!415395))

(declare-fun m!415399 () Bool)

(assert (=> b!309984 m!415399))

(assert (=> b!309984 m!415395))

(declare-fun m!415401 () Bool)

(assert (=> b!309984 m!415401))

(declare-fun m!415403 () Bool)

(assert (=> b!309984 m!415403))

(declare-fun m!415405 () Bool)

(assert (=> b!309984 m!415405))

(assert (=> b!309984 m!415403))

(assert (=> b!309984 m!415401))

(declare-fun m!415407 () Bool)

(assert (=> b!309978 m!415407))

(declare-fun m!415409 () Bool)

(assert (=> bm!18050 m!415409))

(assert (=> d!95142 m!410539))

(declare-fun m!415411 () Bool)

(assert (=> d!95142 m!415411))

(declare-fun m!415413 () Bool)

(assert (=> d!95142 m!415413))

(assert (=> d!95142 m!415411))

(assert (=> d!95142 m!411481))

(assert (=> d!95142 m!415411))

(declare-fun m!415415 () Bool)

(assert (=> d!95142 m!415415))

(declare-fun m!415417 () Bool)

(assert (=> d!95142 m!415417))

(assert (=> d!95142 m!410539))

(declare-fun m!415419 () Bool)

(assert (=> bm!18053 m!415419))

(assert (=> b!309977 m!411481))

(assert (=> b!309979 m!415367))

(declare-fun m!415421 () Bool)

(assert (=> bm!18054 m!415421))

(assert (=> b!308119 d!95142))

(declare-fun bs!35942 () Bool)

(declare-fun b!310003 () Bool)

(assert (= bs!35942 (and b!310003 d!94562)))

(declare-fun lambda!10584 () Int)

(assert (=> bs!35942 (= (and (= (toChars!1399 (transformation!781 (h!9459 rules!1920))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465))))) (= (toValue!1540 (transformation!781 (h!9459 rules!1920))) (toValue!1540 (transformation!781 (rule!1394 (h!9460 tokens!465)))))) (= lambda!10584 lambda!10555))))

(declare-fun bs!35943 () Bool)

(assert (= bs!35943 (and b!310003 d!94814)))

(assert (=> bs!35943 (= lambda!10584 lambda!10567)))

(declare-fun bs!35944 () Bool)

(assert (= bs!35944 (and b!310003 d!95012)))

(assert (=> bs!35944 (= (and (= (toChars!1399 (transformation!781 (h!9459 rules!1920))) (toChars!1399 (transformation!781 (rule!1394 separatorToken!170)))) (= (toValue!1540 (transformation!781 (h!9459 rules!1920))) (toValue!1540 (transformation!781 (rule!1394 separatorToken!170))))) (= lambda!10584 lambda!10574))))

(declare-fun b!310014 () Bool)

(declare-fun e!192778 () Bool)

(assert (=> b!310014 (= e!192778 true)))

(declare-fun b!310013 () Bool)

(declare-fun e!192777 () Bool)

(assert (=> b!310013 (= e!192777 e!192778)))

(assert (=> b!310003 e!192777))

(assert (= b!310013 b!310014))

(assert (= b!310003 b!310013))

(assert (=> b!310014 (< (dynLambda!2219 order!3297 (toValue!1540 (transformation!781 (h!9459 rules!1920)))) (dynLambda!2230 order!3309 lambda!10584))))

(assert (=> b!310014 (< (dynLambda!2221 order!3301 (toChars!1399 (transformation!781 (h!9459 rules!1920)))) (dynLambda!2230 order!3309 lambda!10584))))

(declare-fun b!310001 () Bool)

(declare-fun e!192770 () Bool)

(declare-fun e!192771 () Bool)

(assert (=> b!310001 (= e!192770 e!192771)))

(declare-fun res!140940 () Bool)

(assert (=> b!310001 (=> (not res!140940) (not e!192771))))

(declare-fun lt!132622 () Option!929)

(assert (=> b!310001 (= res!140940 (= (_1!2563 (get!1390 lt!132622)) (_1!2561 (get!1388 (maxPrefixOneRule!172 thiss!17480 (h!9459 rules!1920) (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465)))))))))))

(declare-fun b!310002 () Bool)

(declare-fun e!192768 () Bool)

(assert (=> b!310002 (= e!192768 e!192770)))

(declare-fun res!140939 () Bool)

(assert (=> b!310002 (=> res!140939 e!192770)))

(assert (=> b!310002 (= res!140939 (not (isDefined!768 lt!132622)))))

(declare-fun d!95144 () Bool)

(assert (=> d!95144 e!192768))

(declare-fun res!140938 () Bool)

(assert (=> d!95144 (=> (not res!140938) (not e!192768))))

(assert (=> d!95144 (= res!140938 (= (isDefined!768 lt!132622) (isDefined!767 (maxPrefixOneRule!172 thiss!17480 (h!9459 rules!1920) (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465))))))))))

(declare-fun e!192772 () Option!929)

(assert (=> d!95144 (= lt!132622 e!192772)))

(declare-fun c!58825 () Bool)

(declare-datatypes ((tuple2!4706 0))(
  ( (tuple2!4707 (_1!2569 BalanceConc!2776) (_2!2569 BalanceConc!2776)) )
))
(declare-fun lt!132620 () tuple2!4706)

(assert (=> d!95144 (= c!58825 (isEmpty!2782 (_1!2569 lt!132620)))))

(declare-fun findLongestMatchWithZipperSequence!45 (Regex!1005 BalanceConc!2776) tuple2!4706)

(assert (=> d!95144 (= lt!132620 (findLongestMatchWithZipperSequence!45 (regex!781 (h!9459 rules!1920)) (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465)))))))

(assert (=> d!95144 (ruleValid!100 thiss!17480 (h!9459 rules!1920))))

(assert (=> d!95144 (= (maxPrefixOneRuleZipperSequence!144 thiss!17480 (h!9459 rules!1920) (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465)))) lt!132622)))

(assert (=> b!310003 (= e!192772 (Some!928 (tuple2!4695 (Token!1307 (apply!891 (transformation!781 (h!9459 rules!1920)) (_1!2569 lt!132620)) (h!9459 rules!1920) (size!3249 (_1!2569 lt!132620)) (list!1713 (_1!2569 lt!132620))) (_2!2569 lt!132620))))))

(declare-fun lt!132619 () List!4071)

(assert (=> b!310003 (= lt!132619 (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465)))))))

(declare-fun lt!132613 () Unit!5690)

(assert (=> b!310003 (= lt!132613 (longestMatchIsAcceptedByMatchOrIsEmpty!70 (regex!781 (h!9459 rules!1920)) lt!132619))))

(declare-fun res!140941 () Bool)

(assert (=> b!310003 (= res!140941 (isEmpty!2775 (_1!2567 (findLongestMatchInner!86 (regex!781 (h!9459 rules!1920)) Nil!4061 (size!3246 Nil!4061) lt!132619 lt!132619 (size!3246 lt!132619)))))))

(declare-fun e!192769 () Bool)

(assert (=> b!310003 (=> res!140941 e!192769)))

(assert (=> b!310003 e!192769))

(declare-fun lt!132616 () Unit!5690)

(assert (=> b!310003 (= lt!132616 lt!132613)))

(declare-fun lt!132614 () Unit!5690)

(declare-fun lemmaInv!48 (TokenValueInjection!1378) Unit!5690)

(assert (=> b!310003 (= lt!132614 (lemmaInv!48 (transformation!781 (h!9459 rules!1920))))))

(declare-fun lt!132621 () Unit!5690)

(declare-fun ForallOf!45 (Int BalanceConc!2776) Unit!5690)

(assert (=> b!310003 (= lt!132621 (ForallOf!45 lambda!10584 (_1!2569 lt!132620)))))

(declare-fun lt!132618 () Unit!5690)

(assert (=> b!310003 (= lt!132618 (ForallOf!45 lambda!10584 (seqFromList!928 (list!1713 (_1!2569 lt!132620)))))))

(declare-fun lt!132615 () Option!929)

(assert (=> b!310003 (= lt!132615 (Some!928 (tuple2!4695 (Token!1307 (apply!891 (transformation!781 (h!9459 rules!1920)) (_1!2569 lt!132620)) (h!9459 rules!1920) (size!3249 (_1!2569 lt!132620)) (list!1713 (_1!2569 lt!132620))) (_2!2569 lt!132620))))))

(declare-fun lt!132617 () Unit!5690)

(declare-fun lemmaEqSameImage!45 (TokenValueInjection!1378 BalanceConc!2776 BalanceConc!2776) Unit!5690)

(assert (=> b!310003 (= lt!132617 (lemmaEqSameImage!45 (transformation!781 (h!9459 rules!1920)) (_1!2569 lt!132620) (seqFromList!928 (list!1713 (_1!2569 lt!132620)))))))

(declare-fun b!310004 () Bool)

(assert (=> b!310004 (= e!192771 (= (list!1713 (_2!2563 (get!1390 lt!132622))) (_2!2561 (get!1388 (maxPrefixOneRule!172 thiss!17480 (h!9459 rules!1920) (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465)))))))))))

(declare-fun b!310005 () Bool)

(assert (=> b!310005 (= e!192772 None!928)))

(declare-fun b!310006 () Bool)

(assert (=> b!310006 (= e!192769 (matchR!323 (regex!781 (h!9459 rules!1920)) (_1!2567 (findLongestMatchInner!86 (regex!781 (h!9459 rules!1920)) Nil!4061 (size!3246 Nil!4061) lt!132619 lt!132619 (size!3246 lt!132619)))))))

(assert (= (and d!95144 c!58825) b!310005))

(assert (= (and d!95144 (not c!58825)) b!310003))

(assert (= (and b!310003 (not res!140941)) b!310006))

(assert (= (and d!95144 res!140938) b!310002))

(assert (= (and b!310002 (not res!140939)) b!310001))

(assert (= (and b!310001 res!140940) b!310004))

(assert (=> b!310006 m!413361))

(declare-fun m!415423 () Bool)

(assert (=> b!310006 m!415423))

(assert (=> b!310006 m!413361))

(assert (=> b!310006 m!415423))

(declare-fun m!415425 () Bool)

(assert (=> b!310006 m!415425))

(declare-fun m!415427 () Bool)

(assert (=> b!310006 m!415427))

(declare-fun m!415429 () Bool)

(assert (=> b!310002 m!415429))

(assert (=> b!310004 m!412265))

(declare-fun m!415431 () Bool)

(assert (=> b!310004 m!415431))

(declare-fun m!415433 () Bool)

(assert (=> b!310004 m!415433))

(declare-fun m!415435 () Bool)

(assert (=> b!310004 m!415435))

(assert (=> b!310004 m!410653))

(assert (=> b!310004 m!412265))

(assert (=> b!310004 m!410347))

(assert (=> b!310004 m!410653))

(assert (=> d!95144 m!410347))

(declare-fun m!415437 () Bool)

(assert (=> d!95144 m!415437))

(assert (=> d!95144 m!413415))

(assert (=> d!95144 m!412265))

(declare-fun m!415439 () Bool)

(assert (=> d!95144 m!415439))

(declare-fun m!415441 () Bool)

(assert (=> d!95144 m!415441))

(assert (=> d!95144 m!410347))

(assert (=> d!95144 m!410653))

(assert (=> d!95144 m!410653))

(assert (=> d!95144 m!412265))

(assert (=> d!95144 m!415429))

(assert (=> b!310003 m!413361))

(declare-fun m!415443 () Bool)

(assert (=> b!310003 m!415443))

(declare-fun m!415445 () Bool)

(assert (=> b!310003 m!415445))

(declare-fun m!415447 () Bool)

(assert (=> b!310003 m!415447))

(assert (=> b!310003 m!415423))

(declare-fun m!415449 () Bool)

(assert (=> b!310003 m!415449))

(assert (=> b!310003 m!415445))

(declare-fun m!415451 () Bool)

(assert (=> b!310003 m!415451))

(assert (=> b!310003 m!415443))

(assert (=> b!310003 m!410347))

(assert (=> b!310003 m!410653))

(declare-fun m!415453 () Bool)

(assert (=> b!310003 m!415453))

(assert (=> b!310003 m!415445))

(declare-fun m!415455 () Bool)

(assert (=> b!310003 m!415455))

(assert (=> b!310003 m!413361))

(assert (=> b!310003 m!415423))

(assert (=> b!310003 m!415425))

(declare-fun m!415457 () Bool)

(assert (=> b!310003 m!415457))

(declare-fun m!415459 () Bool)

(assert (=> b!310003 m!415459))

(declare-fun m!415461 () Bool)

(assert (=> b!310003 m!415461))

(assert (=> b!310001 m!415433))

(assert (=> b!310001 m!410347))

(assert (=> b!310001 m!410653))

(assert (=> b!310001 m!410653))

(assert (=> b!310001 m!412265))

(assert (=> b!310001 m!412265))

(assert (=> b!310001 m!415431))

(assert (=> bm!17860 d!95144))

(declare-fun d!95146 () Bool)

(assert (=> d!95146 (= (isEmpty!2775 (tail!542 lt!131150)) ((_ is Nil!4061) (tail!542 lt!131150)))))

(assert (=> b!308248 d!95146))

(assert (=> b!308248 d!94280))

(declare-fun lt!132623 () BalanceConc!2776)

(declare-fun d!95148 () Bool)

(assert (=> d!95148 (= (list!1713 lt!132623) (originalCharacters!824 (ite c!58400 call!17911 call!17914)))))

(assert (=> d!95148 (= lt!132623 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (ite c!58400 call!17911 call!17914)))) (value!26574 (ite c!58400 call!17911 call!17914))))))

(assert (=> d!95148 (= (charsOf!424 (ite c!58400 call!17911 call!17914)) lt!132623)))

(declare-fun b_lambda!10815 () Bool)

(assert (=> (not b_lambda!10815) (not d!95148)))

(declare-fun t!43702 () Bool)

(declare-fun tb!19703 () Bool)

(assert (=> (and b!307440 (= (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (toChars!1399 (transformation!781 (rule!1394 (ite c!58400 call!17911 call!17914))))) t!43702) tb!19703))

(declare-fun b!310015 () Bool)

(declare-fun tp!109218 () Bool)

(declare-fun e!192779 () Bool)

(assert (=> b!310015 (= e!192779 (and (inv!5019 (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (ite c!58400 call!17911 call!17914)))) (value!26574 (ite c!58400 call!17911 call!17914))))) tp!109218))))

(declare-fun result!23712 () Bool)

(assert (=> tb!19703 (= result!23712 (and (inv!5020 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (ite c!58400 call!17911 call!17914)))) (value!26574 (ite c!58400 call!17911 call!17914)))) e!192779))))

(assert (= tb!19703 b!310015))

(declare-fun m!415463 () Bool)

(assert (=> b!310015 m!415463))

(declare-fun m!415465 () Bool)

(assert (=> tb!19703 m!415465))

(assert (=> d!95148 t!43702))

(declare-fun b_and!26309 () Bool)

(assert (= b_and!26303 (and (=> t!43702 result!23712) b_and!26309)))

(declare-fun t!43704 () Bool)

(declare-fun tb!19705 () Bool)

(assert (=> (and b!307444 (= (toChars!1399 (transformation!781 (h!9459 rules!1920))) (toChars!1399 (transformation!781 (rule!1394 (ite c!58400 call!17911 call!17914))))) t!43704) tb!19705))

(declare-fun result!23714 () Bool)

(assert (= result!23714 result!23712))

(assert (=> d!95148 t!43704))

(declare-fun b_and!26311 () Bool)

(assert (= b_and!26299 (and (=> t!43704 result!23714) b_and!26311)))

(declare-fun t!43706 () Bool)

(declare-fun tb!19707 () Bool)

(assert (=> (and b!308316 (= (toChars!1399 (transformation!781 (h!9459 (t!43304 rules!1920)))) (toChars!1399 (transformation!781 (rule!1394 (ite c!58400 call!17911 call!17914))))) t!43706) tb!19707))

(declare-fun result!23716 () Bool)

(assert (= result!23716 result!23712))

(assert (=> d!95148 t!43706))

(declare-fun b_and!26313 () Bool)

(assert (= b_and!26301 (and (=> t!43706 result!23716) b_and!26313)))

(declare-fun tb!19709 () Bool)

(declare-fun t!43708 () Bool)

(assert (=> (and b!308288 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))) (toChars!1399 (transformation!781 (rule!1394 (ite c!58400 call!17911 call!17914))))) t!43708) tb!19709))

(declare-fun result!23718 () Bool)

(assert (= result!23718 result!23712))

(assert (=> d!95148 t!43708))

(declare-fun b_and!26315 () Bool)

(assert (= b_and!26307 (and (=> t!43708 result!23718) b_and!26315)))

(declare-fun t!43710 () Bool)

(declare-fun tb!19711 () Bool)

(assert (=> (and b!307455 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (toChars!1399 (transformation!781 (rule!1394 (ite c!58400 call!17911 call!17914))))) t!43710) tb!19711))

(declare-fun result!23720 () Bool)

(assert (= result!23720 result!23712))

(assert (=> d!95148 t!43710))

(declare-fun b_and!26317 () Bool)

(assert (= b_and!26305 (and (=> t!43710 result!23720) b_and!26317)))

(declare-fun m!415467 () Bool)

(assert (=> d!95148 m!415467))

(declare-fun m!415469 () Bool)

(assert (=> d!95148 m!415469))

(assert (=> bm!17908 d!95148))

(declare-fun d!95150 () Bool)

(declare-fun e!192780 () Bool)

(assert (=> d!95150 e!192780))

(declare-fun res!140942 () Bool)

(assert (=> d!95150 (=> (not res!140942) (not e!192780))))

(declare-fun lt!132624 () BalanceConc!2778)

(assert (=> d!95150 (= res!140942 (= (list!1716 lt!132624) (Cons!4063 separatorToken!170 Nil!4063)))))

(assert (=> d!95150 (= lt!132624 (singleton!146 separatorToken!170))))

(assert (=> d!95150 (= (singletonSeq!327 separatorToken!170) lt!132624)))

(declare-fun b!310016 () Bool)

(assert (=> b!310016 (= e!192780 (isBalanced!395 (c!58278 lt!132624)))))

(assert (= (and d!95150 res!140942) b!310016))

(declare-fun m!415471 () Bool)

(assert (=> d!95150 m!415471))

(declare-fun m!415473 () Bool)

(assert (=> d!95150 m!415473))

(declare-fun m!415475 () Bool)

(assert (=> b!310016 m!415475))

(assert (=> d!93928 d!95150))

(declare-fun d!95152 () Bool)

(assert (=> d!95152 (= (list!1716 (_1!2562 (lex!459 thiss!17480 rules!1920 (print!392 thiss!17480 (singletonSeq!327 separatorToken!170))))) (list!1719 (c!58278 (_1!2562 (lex!459 thiss!17480 rules!1920 (print!392 thiss!17480 (singletonSeq!327 separatorToken!170)))))))))

(declare-fun bs!35945 () Bool)

(assert (= bs!35945 d!95152))

(declare-fun m!415477 () Bool)

(assert (=> bs!35945 m!415477))

(assert (=> d!93928 d!95152))

(declare-fun lt!132625 () tuple2!4692)

(declare-fun e!192782 () Bool)

(declare-fun b!310017 () Bool)

(assert (=> b!310017 (= e!192782 (= (list!1713 (_2!2562 lt!132625)) (_2!2565 (lexList!241 thiss!17480 rules!1920 (list!1713 (print!392 thiss!17480 (singletonSeq!327 separatorToken!170)))))))))

(declare-fun d!95154 () Bool)

(assert (=> d!95154 e!192782))

(declare-fun res!140943 () Bool)

(assert (=> d!95154 (=> (not res!140943) (not e!192782))))

(declare-fun e!192781 () Bool)

(assert (=> d!95154 (= res!140943 e!192781)))

(declare-fun c!58826 () Bool)

(assert (=> d!95154 (= c!58826 (> (size!3247 (_1!2562 lt!132625)) 0))))

(assert (=> d!95154 (= lt!132625 (lexTailRecV2!208 thiss!17480 rules!1920 (print!392 thiss!17480 (singletonSeq!327 separatorToken!170)) (BalanceConc!2777 Empty!1384) (print!392 thiss!17480 (singletonSeq!327 separatorToken!170)) (BalanceConc!2779 Empty!1385)))))

(assert (=> d!95154 (= (lex!459 thiss!17480 rules!1920 (print!392 thiss!17480 (singletonSeq!327 separatorToken!170))) lt!132625)))

(declare-fun b!310018 () Bool)

(declare-fun res!140944 () Bool)

(assert (=> b!310018 (=> (not res!140944) (not e!192782))))

(assert (=> b!310018 (= res!140944 (= (list!1716 (_1!2562 lt!132625)) (_1!2565 (lexList!241 thiss!17480 rules!1920 (list!1713 (print!392 thiss!17480 (singletonSeq!327 separatorToken!170)))))))))

(declare-fun b!310019 () Bool)

(declare-fun e!192783 () Bool)

(assert (=> b!310019 (= e!192783 (not (isEmpty!2777 (_1!2562 lt!132625))))))

(declare-fun b!310020 () Bool)

(assert (=> b!310020 (= e!192781 e!192783)))

(declare-fun res!140945 () Bool)

(assert (=> b!310020 (= res!140945 (< (size!3249 (_2!2562 lt!132625)) (size!3249 (print!392 thiss!17480 (singletonSeq!327 separatorToken!170)))))))

(assert (=> b!310020 (=> (not res!140945) (not e!192783))))

(declare-fun b!310021 () Bool)

(assert (=> b!310021 (= e!192781 (= (_2!2562 lt!132625) (print!392 thiss!17480 (singletonSeq!327 separatorToken!170))))))

(assert (= (and d!95154 c!58826) b!310020))

(assert (= (and d!95154 (not c!58826)) b!310021))

(assert (= (and b!310020 res!140945) b!310019))

(assert (= (and d!95154 res!140943) b!310018))

(assert (= (and b!310018 res!140944) b!310017))

(declare-fun m!415479 () Bool)

(assert (=> d!95154 m!415479))

(assert (=> d!95154 m!410549))

(assert (=> d!95154 m!410549))

(declare-fun m!415481 () Bool)

(assert (=> d!95154 m!415481))

(declare-fun m!415483 () Bool)

(assert (=> b!310019 m!415483))

(declare-fun m!415485 () Bool)

(assert (=> b!310018 m!415485))

(assert (=> b!310018 m!410549))

(declare-fun m!415487 () Bool)

(assert (=> b!310018 m!415487))

(assert (=> b!310018 m!415487))

(declare-fun m!415489 () Bool)

(assert (=> b!310018 m!415489))

(declare-fun m!415491 () Bool)

(assert (=> b!310017 m!415491))

(assert (=> b!310017 m!410549))

(assert (=> b!310017 m!415487))

(assert (=> b!310017 m!415487))

(assert (=> b!310017 m!415489))

(declare-fun m!415493 () Bool)

(assert (=> b!310020 m!415493))

(assert (=> b!310020 m!410549))

(declare-fun m!415495 () Bool)

(assert (=> b!310020 m!415495))

(assert (=> d!93928 d!95154))

(declare-fun d!95156 () Bool)

(assert (=> d!95156 (= (list!1716 (singletonSeq!327 separatorToken!170)) (list!1719 (c!58278 (singletonSeq!327 separatorToken!170))))))

(declare-fun bs!35946 () Bool)

(assert (= bs!35946 d!95156))

(declare-fun m!415497 () Bool)

(assert (=> bs!35946 m!415497))

(assert (=> d!93928 d!95156))

(declare-fun d!95158 () Bool)

(declare-fun lt!132626 () BalanceConc!2776)

(assert (=> d!95158 (= (list!1713 lt!132626) (printList!341 thiss!17480 (list!1716 (singletonSeq!327 separatorToken!170))))))

(assert (=> d!95158 (= lt!132626 (printTailRec!353 thiss!17480 (singletonSeq!327 separatorToken!170) 0 (BalanceConc!2777 Empty!1384)))))

(assert (=> d!95158 (= (print!392 thiss!17480 (singletonSeq!327 separatorToken!170)) lt!132626)))

(declare-fun bs!35947 () Bool)

(assert (= bs!35947 d!95158))

(declare-fun m!415499 () Bool)

(assert (=> bs!35947 m!415499))

(assert (=> bs!35947 m!410555))

(assert (=> bs!35947 m!410557))

(assert (=> bs!35947 m!410557))

(declare-fun m!415501 () Bool)

(assert (=> bs!35947 m!415501))

(assert (=> bs!35947 m!410555))

(declare-fun m!415503 () Bool)

(assert (=> bs!35947 m!415503))

(assert (=> d!93928 d!95158))

(assert (=> d!93928 d!93982))

(declare-fun d!95160 () Bool)

(declare-fun lt!132627 () Int)

(assert (=> d!95160 (= lt!132627 (size!3253 (list!1716 (_1!2562 lt!131243))))))

(assert (=> d!95160 (= lt!132627 (size!3254 (c!58278 (_1!2562 lt!131243))))))

(assert (=> d!95160 (= (size!3247 (_1!2562 lt!131243)) lt!132627)))

(declare-fun bs!35948 () Bool)

(assert (= bs!35948 d!95160))

(assert (=> bs!35948 m!415117))

(assert (=> bs!35948 m!415117))

(declare-fun m!415505 () Bool)

(assert (=> bs!35948 m!415505))

(declare-fun m!415507 () Bool)

(assert (=> bs!35948 m!415507))

(assert (=> d!93928 d!95160))

(declare-fun b!310022 () Bool)

(declare-fun res!140951 () Bool)

(declare-fun e!192784 () Bool)

(assert (=> b!310022 (=> (not res!140951) (not e!192784))))

(declare-fun lt!132629 () Option!928)

(assert (=> b!310022 (= res!140951 (matchR!323 (regex!781 (rule!1394 (_1!2561 (get!1388 lt!132629)))) (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!132629))))))))

(declare-fun b!310023 () Bool)

(assert (=> b!310023 (= e!192784 (contains!804 rules!1920 (rule!1394 (_1!2561 (get!1388 lt!132629)))))))

(declare-fun b!310024 () Bool)

(declare-fun res!140949 () Bool)

(assert (=> b!310024 (=> (not res!140949) (not e!192784))))

(assert (=> b!310024 (= res!140949 (= (++!1102 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!132629)))) (_2!2561 (get!1388 lt!132629))) (++!1102 (list!1713 (charsOf!424 (h!9460 (t!43305 tokens!465)))) lt!131385)))))

(declare-fun d!95162 () Bool)

(declare-fun e!192786 () Bool)

(assert (=> d!95162 e!192786))

(declare-fun res!140950 () Bool)

(assert (=> d!95162 (=> res!140950 e!192786)))

(assert (=> d!95162 (= res!140950 (isEmpty!2779 lt!132629))))

(declare-fun e!192785 () Option!928)

(assert (=> d!95162 (= lt!132629 e!192785)))

(declare-fun c!58827 () Bool)

(assert (=> d!95162 (= c!58827 (and ((_ is Cons!4062) rules!1920) ((_ is Nil!4062) (t!43304 rules!1920))))))

(declare-fun lt!132632 () Unit!5690)

(declare-fun lt!132631 () Unit!5690)

(assert (=> d!95162 (= lt!132632 lt!132631)))

(assert (=> d!95162 (isPrefix!441 (++!1102 (list!1713 (charsOf!424 (h!9460 (t!43305 tokens!465)))) lt!131385) (++!1102 (list!1713 (charsOf!424 (h!9460 (t!43305 tokens!465)))) lt!131385))))

(assert (=> d!95162 (= lt!132631 (lemmaIsPrefixRefl!238 (++!1102 (list!1713 (charsOf!424 (h!9460 (t!43305 tokens!465)))) lt!131385) (++!1102 (list!1713 (charsOf!424 (h!9460 (t!43305 tokens!465)))) lt!131385)))))

(assert (=> d!95162 (rulesValidInductive!233 thiss!17480 rules!1920)))

(assert (=> d!95162 (= (maxPrefix!383 thiss!17480 rules!1920 (++!1102 (list!1713 (charsOf!424 (h!9460 (t!43305 tokens!465)))) lt!131385)) lt!132629)))

(declare-fun call!18060 () Option!928)

(declare-fun bm!18055 () Bool)

(assert (=> bm!18055 (= call!18060 (maxPrefixOneRule!172 thiss!17480 (h!9459 rules!1920) (++!1102 (list!1713 (charsOf!424 (h!9460 (t!43305 tokens!465)))) lt!131385)))))

(declare-fun b!310025 () Bool)

(declare-fun res!140946 () Bool)

(assert (=> b!310025 (=> (not res!140946) (not e!192784))))

(assert (=> b!310025 (= res!140946 (< (size!3246 (_2!2561 (get!1388 lt!132629))) (size!3246 (++!1102 (list!1713 (charsOf!424 (h!9460 (t!43305 tokens!465)))) lt!131385))))))

(declare-fun b!310026 () Bool)

(assert (=> b!310026 (= e!192785 call!18060)))

(declare-fun b!310027 () Bool)

(assert (=> b!310027 (= e!192786 e!192784)))

(declare-fun res!140948 () Bool)

(assert (=> b!310027 (=> (not res!140948) (not e!192784))))

(assert (=> b!310027 (= res!140948 (isDefined!767 lt!132629))))

(declare-fun b!310028 () Bool)

(declare-fun res!140947 () Bool)

(assert (=> b!310028 (=> (not res!140947) (not e!192784))))

(assert (=> b!310028 (= res!140947 (= (value!26574 (_1!2561 (get!1388 lt!132629))) (apply!891 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!132629)))) (seqFromList!928 (originalCharacters!824 (_1!2561 (get!1388 lt!132629)))))))))

(declare-fun b!310029 () Bool)

(declare-fun res!140952 () Bool)

(assert (=> b!310029 (=> (not res!140952) (not e!192784))))

(assert (=> b!310029 (= res!140952 (= (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!132629)))) (originalCharacters!824 (_1!2561 (get!1388 lt!132629)))))))

(declare-fun b!310030 () Bool)

(declare-fun lt!132630 () Option!928)

(declare-fun lt!132628 () Option!928)

(assert (=> b!310030 (= e!192785 (ite (and ((_ is None!927) lt!132630) ((_ is None!927) lt!132628)) None!927 (ite ((_ is None!927) lt!132628) lt!132630 (ite ((_ is None!927) lt!132630) lt!132628 (ite (>= (size!3243 (_1!2561 (v!14932 lt!132630))) (size!3243 (_1!2561 (v!14932 lt!132628)))) lt!132630 lt!132628)))))))

(assert (=> b!310030 (= lt!132630 call!18060)))

(assert (=> b!310030 (= lt!132628 (maxPrefix!383 thiss!17480 (t!43304 rules!1920) (++!1102 (list!1713 (charsOf!424 (h!9460 (t!43305 tokens!465)))) lt!131385)))))

(assert (= (and d!95162 c!58827) b!310026))

(assert (= (and d!95162 (not c!58827)) b!310030))

(assert (= (or b!310026 b!310030) bm!18055))

(assert (= (and d!95162 (not res!140950)) b!310027))

(assert (= (and b!310027 res!140948) b!310029))

(assert (= (and b!310029 res!140952) b!310025))

(assert (= (and b!310025 res!140946) b!310024))

(assert (= (and b!310024 res!140949) b!310028))

(assert (= (and b!310028 res!140947) b!310022))

(assert (= (and b!310022 res!140951) b!310023))

(assert (=> b!310030 m!410899))

(declare-fun m!415509 () Bool)

(assert (=> b!310030 m!415509))

(declare-fun m!415511 () Bool)

(assert (=> b!310024 m!415511))

(declare-fun m!415513 () Bool)

(assert (=> b!310024 m!415513))

(assert (=> b!310024 m!415513))

(declare-fun m!415515 () Bool)

(assert (=> b!310024 m!415515))

(assert (=> b!310024 m!415515))

(declare-fun m!415517 () Bool)

(assert (=> b!310024 m!415517))

(assert (=> b!310029 m!415511))

(assert (=> b!310029 m!415513))

(assert (=> b!310029 m!415513))

(assert (=> b!310029 m!415515))

(assert (=> b!310028 m!415511))

(declare-fun m!415519 () Bool)

(assert (=> b!310028 m!415519))

(assert (=> b!310028 m!415519))

(declare-fun m!415521 () Bool)

(assert (=> b!310028 m!415521))

(assert (=> b!310022 m!415511))

(assert (=> b!310022 m!415513))

(assert (=> b!310022 m!415513))

(assert (=> b!310022 m!415515))

(assert (=> b!310022 m!415515))

(declare-fun m!415523 () Bool)

(assert (=> b!310022 m!415523))

(assert (=> bm!18055 m!410899))

(declare-fun m!415525 () Bool)

(assert (=> bm!18055 m!415525))

(assert (=> b!310023 m!415511))

(declare-fun m!415527 () Bool)

(assert (=> b!310023 m!415527))

(declare-fun m!415529 () Bool)

(assert (=> d!95162 m!415529))

(assert (=> d!95162 m!410899))

(assert (=> d!95162 m!410899))

(declare-fun m!415531 () Bool)

(assert (=> d!95162 m!415531))

(assert (=> d!95162 m!410899))

(assert (=> d!95162 m!410899))

(declare-fun m!415533 () Bool)

(assert (=> d!95162 m!415533))

(assert (=> d!95162 m!410421))

(assert (=> b!310025 m!415511))

(declare-fun m!415535 () Bool)

(assert (=> b!310025 m!415535))

(assert (=> b!310025 m!410899))

(declare-fun m!415537 () Bool)

(assert (=> b!310025 m!415537))

(declare-fun m!415539 () Bool)

(assert (=> b!310027 m!415539))

(assert (=> b!307890 d!95162))

(declare-fun e!192788 () Bool)

(declare-fun lt!132633 () List!4071)

(declare-fun b!310034 () Bool)

(assert (=> b!310034 (= e!192788 (or (not (= lt!131385 Nil!4061)) (= lt!132633 (list!1713 (charsOf!424 (h!9460 (t!43305 tokens!465)))))))))

(declare-fun d!95164 () Bool)

(assert (=> d!95164 e!192788))

(declare-fun res!140953 () Bool)

(assert (=> d!95164 (=> (not res!140953) (not e!192788))))

(assert (=> d!95164 (= res!140953 (= (content!606 lt!132633) ((_ map or) (content!606 (list!1713 (charsOf!424 (h!9460 (t!43305 tokens!465))))) (content!606 lt!131385))))))

(declare-fun e!192787 () List!4071)

(assert (=> d!95164 (= lt!132633 e!192787)))

(declare-fun c!58828 () Bool)

(assert (=> d!95164 (= c!58828 ((_ is Nil!4061) (list!1713 (charsOf!424 (h!9460 (t!43305 tokens!465))))))))

(assert (=> d!95164 (= (++!1102 (list!1713 (charsOf!424 (h!9460 (t!43305 tokens!465)))) lt!131385) lt!132633)))

(declare-fun b!310033 () Bool)

(declare-fun res!140954 () Bool)

(assert (=> b!310033 (=> (not res!140954) (not e!192788))))

(assert (=> b!310033 (= res!140954 (= (size!3246 lt!132633) (+ (size!3246 (list!1713 (charsOf!424 (h!9460 (t!43305 tokens!465))))) (size!3246 lt!131385))))))

(declare-fun b!310032 () Bool)

(assert (=> b!310032 (= e!192787 (Cons!4061 (h!9458 (list!1713 (charsOf!424 (h!9460 (t!43305 tokens!465))))) (++!1102 (t!43303 (list!1713 (charsOf!424 (h!9460 (t!43305 tokens!465))))) lt!131385)))))

(declare-fun b!310031 () Bool)

(assert (=> b!310031 (= e!192787 lt!131385)))

(assert (= (and d!95164 c!58828) b!310031))

(assert (= (and d!95164 (not c!58828)) b!310032))

(assert (= (and d!95164 res!140953) b!310033))

(assert (= (and b!310033 res!140954) b!310034))

(declare-fun m!415541 () Bool)

(assert (=> d!95164 m!415541))

(assert (=> d!95164 m!410895))

(declare-fun m!415543 () Bool)

(assert (=> d!95164 m!415543))

(declare-fun m!415545 () Bool)

(assert (=> d!95164 m!415545))

(declare-fun m!415547 () Bool)

(assert (=> b!310033 m!415547))

(assert (=> b!310033 m!410895))

(declare-fun m!415549 () Bool)

(assert (=> b!310033 m!415549))

(declare-fun m!415551 () Bool)

(assert (=> b!310033 m!415551))

(declare-fun m!415553 () Bool)

(assert (=> b!310032 m!415553))

(assert (=> b!307890 d!95164))

(declare-fun bs!35949 () Bool)

(declare-fun b!310035 () Bool)

(assert (= bs!35949 (and b!310035 b!309982)))

(declare-fun lambda!10585 () Int)

(assert (=> bs!35949 (= lambda!10585 lambda!10579)))

(declare-fun bs!35950 () Bool)

(assert (= bs!35950 (and b!310035 d!94270)))

(assert (=> bs!35950 (= lambda!10585 lambda!10532)))

(declare-fun bs!35951 () Bool)

(assert (= bs!35951 (and b!310035 d!94504)))

(assert (=> bs!35951 (not (= lambda!10585 lambda!10542))))

(declare-fun bs!35952 () Bool)

(assert (= bs!35952 (and b!310035 b!308847)))

(assert (=> bs!35952 (= lambda!10585 lambda!10543)))

(declare-fun bs!35953 () Bool)

(assert (= bs!35953 (and b!310035 b!307890)))

(assert (=> bs!35953 (= lambda!10585 lambda!10514)))

(declare-fun bs!35954 () Bool)

(assert (= bs!35954 (and b!310035 d!94136)))

(assert (=> bs!35954 (not (= lambda!10585 lambda!10524))))

(declare-fun bs!35955 () Bool)

(assert (= bs!35955 (and b!310035 b!308157)))

(assert (=> bs!35955 (= lambda!10585 lambda!10526)))

(declare-fun bs!35956 () Bool)

(assert (= bs!35956 (and b!310035 b!307468)))

(assert (=> bs!35956 (= lambda!10585 lambda!10492)))

(declare-fun bs!35957 () Bool)

(assert (= bs!35957 (and b!310035 d!95142)))

(assert (=> bs!35957 (not (= lambda!10585 lambda!10578))))

(declare-fun bs!35958 () Bool)

(assert (= bs!35958 (and b!310035 b!307466)))

(assert (=> bs!35958 (not (= lambda!10585 lambda!10491))))

(declare-fun bs!35959 () Bool)

(assert (= bs!35959 (and b!310035 d!93922)))

(assert (=> bs!35959 (= lambda!10585 lambda!10508)))

(declare-fun bs!35960 () Bool)

(assert (= bs!35960 (and b!310035 b!308119)))

(assert (=> bs!35960 (= lambda!10585 lambda!10525)))

(declare-fun bs!35961 () Bool)

(assert (= bs!35961 (and b!310035 b!308013)))

(assert (=> bs!35961 (= lambda!10585 lambda!10522)))

(declare-fun bs!35962 () Bool)

(assert (= bs!35962 (and b!310035 d!94010)))

(assert (=> bs!35962 (not (= lambda!10585 lambda!10521))))

(declare-fun b!310047 () Bool)

(declare-fun e!192796 () Bool)

(assert (=> b!310047 (= e!192796 true)))

(declare-fun b!310046 () Bool)

(declare-fun e!192795 () Bool)

(assert (=> b!310046 (= e!192795 e!192796)))

(declare-fun b!310045 () Bool)

(declare-fun e!192794 () Bool)

(assert (=> b!310045 (= e!192794 e!192795)))

(assert (=> b!310035 e!192794))

(assert (= b!310046 b!310047))

(assert (= b!310045 b!310046))

(assert (= (and b!310035 ((_ is Cons!4062) rules!1920)) b!310045))

(assert (=> b!310047 (< (dynLambda!2219 order!3297 (toValue!1540 (transformation!781 (h!9459 rules!1920)))) (dynLambda!2220 order!3299 lambda!10585))))

(assert (=> b!310047 (< (dynLambda!2221 order!3301 (toChars!1399 (transformation!781 (h!9459 rules!1920)))) (dynLambda!2220 order!3299 lambda!10585))))

(assert (=> b!310035 true))

(declare-fun e!192791 () List!4071)

(declare-fun e!192793 () List!4071)

(assert (=> b!310035 (= e!192791 e!192793)))

(declare-fun lt!132636 () Unit!5690)

(assert (=> b!310035 (= lt!132636 (forallContained!334 (t!43305 (t!43305 tokens!465)) lambda!10585 (h!9460 (t!43305 (t!43305 tokens!465)))))))

(declare-fun lt!132635 () List!4071)

(assert (=> b!310035 (= lt!132635 (printWithSeparatorTokenWhenNeededList!348 thiss!17480 rules!1920 (t!43305 (t!43305 (t!43305 tokens!465))) separatorToken!170))))

(declare-fun lt!132638 () Option!928)

(assert (=> b!310035 (= lt!132638 (maxPrefix!383 thiss!17480 rules!1920 (++!1102 (list!1713 (charsOf!424 (h!9460 (t!43305 (t!43305 tokens!465))))) lt!132635)))))

(declare-fun c!58832 () Bool)

(assert (=> b!310035 (= c!58832 (and ((_ is Some!927) lt!132638) (= (_1!2561 (v!14932 lt!132638)) (h!9460 (t!43305 (t!43305 tokens!465))))))))

(declare-fun bm!18056 () Bool)

(declare-fun call!18065 () BalanceConc!2776)

(assert (=> bm!18056 (= call!18065 (charsOf!424 (h!9460 (t!43305 (t!43305 tokens!465)))))))

(declare-fun bm!18057 () Bool)

(declare-fun c!58829 () Bool)

(assert (=> bm!18057 (= c!58829 c!58832)))

(declare-fun e!192789 () List!4071)

(declare-fun call!18064 () List!4071)

(declare-fun call!18063 () List!4071)

(assert (=> bm!18057 (= call!18063 (++!1102 e!192789 (ite c!58832 lt!132635 call!18064)))))

(declare-fun bm!18058 () Bool)

(declare-fun call!18062 () BalanceConc!2776)

(assert (=> bm!18058 (= call!18062 call!18065)))

(declare-fun e!192790 () BalanceConc!2776)

(declare-fun bm!18059 () Bool)

(declare-fun call!18061 () List!4071)

(assert (=> bm!18059 (= call!18061 (list!1713 (ite c!58832 call!18065 e!192790)))))

(declare-fun b!310036 () Bool)

(assert (=> b!310036 (= e!192789 (list!1713 call!18062))))

(declare-fun b!310037 () Bool)

(declare-fun e!192792 () List!4071)

(assert (=> b!310037 (= e!192792 (++!1102 call!18063 lt!132635))))

(declare-fun bm!18060 () Bool)

(assert (=> bm!18060 (= call!18064 call!18061)))

(declare-fun c!58833 () Bool)

(declare-fun c!58830 () Bool)

(assert (=> bm!18060 (= c!58833 c!58830)))

(declare-fun b!310038 () Bool)

(assert (=> b!310038 (= e!192792 Nil!4061)))

(assert (=> b!310038 (= (print!392 thiss!17480 (singletonSeq!327 (h!9460 (t!43305 (t!43305 tokens!465))))) (printTailRec!353 thiss!17480 (singletonSeq!327 (h!9460 (t!43305 (t!43305 tokens!465)))) 0 (BalanceConc!2777 Empty!1384)))))

(declare-fun lt!132639 () Unit!5690)

(declare-fun Unit!5738 () Unit!5690)

(assert (=> b!310038 (= lt!132639 Unit!5738)))

(declare-fun lt!132637 () Unit!5690)

(assert (=> b!310038 (= lt!132637 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!144 thiss!17480 rules!1920 call!18064 lt!132635))))

(assert (=> b!310038 false))

(declare-fun lt!132634 () Unit!5690)

(declare-fun Unit!5739 () Unit!5690)

(assert (=> b!310038 (= lt!132634 Unit!5739)))

(declare-fun b!310039 () Bool)

(assert (=> b!310039 (= e!192790 call!18062)))

(declare-fun b!310040 () Bool)

(assert (=> b!310040 (= e!192793 call!18063)))

(declare-fun b!310041 () Bool)

(assert (=> b!310041 (= c!58830 (and ((_ is Some!927) lt!132638) (not (= (_1!2561 (v!14932 lt!132638)) (h!9460 (t!43305 (t!43305 tokens!465)))))))))

(assert (=> b!310041 (= e!192793 e!192792)))

(declare-fun b!310042 () Bool)

(assert (=> b!310042 (= e!192790 (charsOf!424 separatorToken!170))))

(declare-fun b!310043 () Bool)

(assert (=> b!310043 (= e!192791 Nil!4061)))

(declare-fun d!95166 () Bool)

(declare-fun c!58831 () Bool)

(assert (=> d!95166 (= c!58831 ((_ is Cons!4063) (t!43305 (t!43305 tokens!465))))))

(assert (=> d!95166 (= (printWithSeparatorTokenWhenNeededList!348 thiss!17480 rules!1920 (t!43305 (t!43305 tokens!465)) separatorToken!170) e!192791)))

(declare-fun b!310044 () Bool)

(assert (=> b!310044 (= e!192789 call!18061)))

(assert (= (and d!95166 c!58831) b!310035))

(assert (= (and d!95166 (not c!58831)) b!310043))

(assert (= (and b!310035 c!58832) b!310040))

(assert (= (and b!310035 (not c!58832)) b!310041))

(assert (= (and b!310041 c!58830) b!310037))

(assert (= (and b!310041 (not c!58830)) b!310038))

(assert (= (or b!310037 b!310038) bm!18058))

(assert (= (or b!310037 b!310038) bm!18060))

(assert (= (and bm!18060 c!58833) b!310042))

(assert (= (and bm!18060 (not c!58833)) b!310039))

(assert (= (or b!310040 bm!18058) bm!18056))

(assert (= (or b!310040 bm!18060) bm!18059))

(assert (= (or b!310040 b!310037) bm!18057))

(assert (= (and bm!18057 c!58829) b!310044))

(assert (= (and bm!18057 (not c!58829)) b!310036))

(declare-fun m!415555 () Bool)

(assert (=> bm!18056 m!415555))

(declare-fun m!415557 () Bool)

(assert (=> b!310036 m!415557))

(assert (=> b!310035 m!415555))

(assert (=> b!310035 m!415555))

(declare-fun m!415559 () Bool)

(assert (=> b!310035 m!415559))

(declare-fun m!415561 () Bool)

(assert (=> b!310035 m!415561))

(assert (=> b!310035 m!415559))

(declare-fun m!415563 () Bool)

(assert (=> b!310035 m!415563))

(declare-fun m!415565 () Bool)

(assert (=> b!310035 m!415565))

(assert (=> b!310035 m!415563))

(declare-fun m!415567 () Bool)

(assert (=> b!310035 m!415567))

(declare-fun m!415569 () Bool)

(assert (=> b!310038 m!415569))

(assert (=> b!310038 m!415569))

(declare-fun m!415571 () Bool)

(assert (=> b!310038 m!415571))

(assert (=> b!310038 m!415569))

(declare-fun m!415573 () Bool)

(assert (=> b!310038 m!415573))

(declare-fun m!415575 () Bool)

(assert (=> b!310038 m!415575))

(declare-fun m!415577 () Bool)

(assert (=> bm!18057 m!415577))

(declare-fun m!415579 () Bool)

(assert (=> b!310037 m!415579))

(declare-fun m!415581 () Bool)

(assert (=> bm!18059 m!415581))

(assert (=> b!310042 m!410285))

(assert (=> b!307890 d!95166))

(declare-fun d!95168 () Bool)

(assert (=> d!95168 (dynLambda!2225 lambda!10514 (h!9460 (t!43305 tokens!465)))))

(declare-fun lt!132640 () Unit!5690)

(assert (=> d!95168 (= lt!132640 (choose!2691 (t!43305 tokens!465) lambda!10514 (h!9460 (t!43305 tokens!465))))))

(declare-fun e!192797 () Bool)

(assert (=> d!95168 e!192797))

(declare-fun res!140955 () Bool)

(assert (=> d!95168 (=> (not res!140955) (not e!192797))))

(assert (=> d!95168 (= res!140955 (forall!1072 (t!43305 tokens!465) lambda!10514))))

(assert (=> d!95168 (= (forallContained!334 (t!43305 tokens!465) lambda!10514 (h!9460 (t!43305 tokens!465))) lt!132640)))

(declare-fun b!310048 () Bool)

(assert (=> b!310048 (= e!192797 (contains!803 (t!43305 tokens!465) (h!9460 (t!43305 tokens!465))))))

(assert (= (and d!95168 res!140955) b!310048))

(declare-fun b_lambda!10817 () Bool)

(assert (=> (not b_lambda!10817) (not d!95168)))

(declare-fun m!415583 () Bool)

(assert (=> d!95168 m!415583))

(declare-fun m!415585 () Bool)

(assert (=> d!95168 m!415585))

(declare-fun m!415587 () Bool)

(assert (=> d!95168 m!415587))

(declare-fun m!415589 () Bool)

(assert (=> b!310048 m!415589))

(assert (=> b!307890 d!95168))

(declare-fun d!95170 () Bool)

(assert (=> d!95170 (= (list!1713 (charsOf!424 (h!9460 (t!43305 tokens!465)))) (list!1717 (c!58276 (charsOf!424 (h!9460 (t!43305 tokens!465))))))))

(declare-fun bs!35963 () Bool)

(assert (= bs!35963 d!95170))

(declare-fun m!415591 () Bool)

(assert (=> bs!35963 m!415591))

(assert (=> b!307890 d!95170))

(declare-fun d!95172 () Bool)

(declare-fun lt!132641 () BalanceConc!2776)

(assert (=> d!95172 (= (list!1713 lt!132641) (originalCharacters!824 (h!9460 (t!43305 tokens!465))))))

(assert (=> d!95172 (= lt!132641 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))) (value!26574 (h!9460 (t!43305 tokens!465)))))))

(assert (=> d!95172 (= (charsOf!424 (h!9460 (t!43305 tokens!465))) lt!132641)))

(declare-fun b_lambda!10819 () Bool)

(assert (=> (not b_lambda!10819) (not d!95172)))

(declare-fun t!43712 () Bool)

(declare-fun tb!19713 () Bool)

(assert (=> (and b!308316 (= (toChars!1399 (transformation!781 (h!9459 (t!43304 rules!1920)))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465)))))) t!43712) tb!19713))

(declare-fun b!310049 () Bool)

(declare-fun e!192798 () Bool)

(declare-fun tp!109219 () Bool)

(assert (=> b!310049 (= e!192798 (and (inv!5019 (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))) (value!26574 (h!9460 (t!43305 tokens!465)))))) tp!109219))))

(declare-fun result!23722 () Bool)

(assert (=> tb!19713 (= result!23722 (and (inv!5020 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))) (value!26574 (h!9460 (t!43305 tokens!465))))) e!192798))))

(assert (= tb!19713 b!310049))

(declare-fun m!415593 () Bool)

(assert (=> b!310049 m!415593))

(declare-fun m!415595 () Bool)

(assert (=> tb!19713 m!415595))

(assert (=> d!95172 t!43712))

(declare-fun b_and!26319 () Bool)

(assert (= b_and!26313 (and (=> t!43712 result!23722) b_and!26319)))

(declare-fun t!43714 () Bool)

(declare-fun tb!19715 () Bool)

(assert (=> (and b!307440 (= (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465)))))) t!43714) tb!19715))

(declare-fun result!23724 () Bool)

(assert (= result!23724 result!23722))

(assert (=> d!95172 t!43714))

(declare-fun b_and!26321 () Bool)

(assert (= b_and!26309 (and (=> t!43714 result!23724) b_and!26321)))

(declare-fun t!43716 () Bool)

(declare-fun tb!19717 () Bool)

(assert (=> (and b!308288 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465)))))) t!43716) tb!19717))

(declare-fun result!23726 () Bool)

(assert (= result!23726 result!23722))

(assert (=> d!95172 t!43716))

(declare-fun b_and!26323 () Bool)

(assert (= b_and!26315 (and (=> t!43716 result!23726) b_and!26323)))

(declare-fun t!43718 () Bool)

(declare-fun tb!19719 () Bool)

(assert (=> (and b!307444 (= (toChars!1399 (transformation!781 (h!9459 rules!1920))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465)))))) t!43718) tb!19719))

(declare-fun result!23728 () Bool)

(assert (= result!23728 result!23722))

(assert (=> d!95172 t!43718))

(declare-fun b_and!26325 () Bool)

(assert (= b_and!26311 (and (=> t!43718 result!23728) b_and!26325)))

(declare-fun t!43720 () Bool)

(declare-fun tb!19721 () Bool)

(assert (=> (and b!307455 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465)))))) t!43720) tb!19721))

(declare-fun result!23730 () Bool)

(assert (= result!23730 result!23722))

(assert (=> d!95172 t!43720))

(declare-fun b_and!26327 () Bool)

(assert (= b_and!26317 (and (=> t!43720 result!23730) b_and!26327)))

(declare-fun m!415597 () Bool)

(assert (=> d!95172 m!415597))

(declare-fun m!415599 () Bool)

(assert (=> d!95172 m!415599))

(assert (=> b!307890 d!95172))

(declare-fun lt!132642 () List!4071)

(declare-fun b!310053 () Bool)

(declare-fun e!192800 () Bool)

(assert (=> b!310053 (= e!192800 (or (not (= lt!131151 Nil!4061)) (= lt!132642 (t!43303 (++!1102 lt!131150 lt!131164)))))))

(declare-fun d!95174 () Bool)

(assert (=> d!95174 e!192800))

(declare-fun res!140956 () Bool)

(assert (=> d!95174 (=> (not res!140956) (not e!192800))))

(assert (=> d!95174 (= res!140956 (= (content!606 lt!132642) ((_ map or) (content!606 (t!43303 (++!1102 lt!131150 lt!131164))) (content!606 lt!131151))))))

(declare-fun e!192799 () List!4071)

(assert (=> d!95174 (= lt!132642 e!192799)))

(declare-fun c!58834 () Bool)

(assert (=> d!95174 (= c!58834 ((_ is Nil!4061) (t!43303 (++!1102 lt!131150 lt!131164))))))

(assert (=> d!95174 (= (++!1102 (t!43303 (++!1102 lt!131150 lt!131164)) lt!131151) lt!132642)))

(declare-fun b!310052 () Bool)

(declare-fun res!140957 () Bool)

(assert (=> b!310052 (=> (not res!140957) (not e!192800))))

(assert (=> b!310052 (= res!140957 (= (size!3246 lt!132642) (+ (size!3246 (t!43303 (++!1102 lt!131150 lt!131164))) (size!3246 lt!131151))))))

(declare-fun b!310051 () Bool)

(assert (=> b!310051 (= e!192799 (Cons!4061 (h!9458 (t!43303 (++!1102 lt!131150 lt!131164))) (++!1102 (t!43303 (t!43303 (++!1102 lt!131150 lt!131164))) lt!131151)))))

(declare-fun b!310050 () Bool)

(assert (=> b!310050 (= e!192799 lt!131151)))

(assert (= (and d!95174 c!58834) b!310050))

(assert (= (and d!95174 (not c!58834)) b!310051))

(assert (= (and d!95174 res!140956) b!310052))

(assert (= (and b!310052 res!140957) b!310053))

(declare-fun m!415601 () Bool)

(assert (=> d!95174 m!415601))

(declare-fun m!415603 () Bool)

(assert (=> d!95174 m!415603))

(assert (=> d!95174 m!410691))

(declare-fun m!415605 () Bool)

(assert (=> b!310052 m!415605))

(declare-fun m!415607 () Bool)

(assert (=> b!310052 m!415607))

(assert (=> b!310052 m!410695))

(declare-fun m!415609 () Bool)

(assert (=> b!310051 m!415609))

(assert (=> b!307767 d!95174))

(declare-fun b!310056 () Bool)

(declare-fun e!192801 () Bool)

(assert (=> b!310056 (= e!192801 (isPrefix!441 (tail!542 lt!131150) (tail!542 (++!1102 lt!131150 lt!131170))))))

(declare-fun b!310054 () Bool)

(declare-fun e!192803 () Bool)

(assert (=> b!310054 (= e!192803 e!192801)))

(declare-fun res!140960 () Bool)

(assert (=> b!310054 (=> (not res!140960) (not e!192801))))

(assert (=> b!310054 (= res!140960 (not ((_ is Nil!4061) (++!1102 lt!131150 lt!131170))))))

(declare-fun b!310057 () Bool)

(declare-fun e!192802 () Bool)

(assert (=> b!310057 (= e!192802 (>= (size!3246 (++!1102 lt!131150 lt!131170)) (size!3246 lt!131150)))))

(declare-fun d!95176 () Bool)

(assert (=> d!95176 e!192802))

(declare-fun res!140958 () Bool)

(assert (=> d!95176 (=> res!140958 e!192802)))

(declare-fun lt!132643 () Bool)

(assert (=> d!95176 (= res!140958 (not lt!132643))))

(assert (=> d!95176 (= lt!132643 e!192803)))

(declare-fun res!140959 () Bool)

(assert (=> d!95176 (=> res!140959 e!192803)))

(assert (=> d!95176 (= res!140959 ((_ is Nil!4061) lt!131150))))

(assert (=> d!95176 (= (isPrefix!441 lt!131150 (++!1102 lt!131150 lt!131170)) lt!132643)))

(declare-fun b!310055 () Bool)

(declare-fun res!140961 () Bool)

(assert (=> b!310055 (=> (not res!140961) (not e!192801))))

(assert (=> b!310055 (= res!140961 (= (head!968 lt!131150) (head!968 (++!1102 lt!131150 lt!131170))))))

(assert (= (and d!95176 (not res!140959)) b!310054))

(assert (= (and b!310054 res!140960) b!310055))

(assert (= (and b!310055 res!140961) b!310056))

(assert (= (and d!95176 (not res!140958)) b!310057))

(assert (=> b!310056 m!411339))

(assert (=> b!310056 m!410297))

(declare-fun m!415611 () Bool)

(assert (=> b!310056 m!415611))

(assert (=> b!310056 m!411339))

(assert (=> b!310056 m!415611))

(declare-fun m!415613 () Bool)

(assert (=> b!310056 m!415613))

(assert (=> b!310057 m!410297))

(declare-fun m!415615 () Bool)

(assert (=> b!310057 m!415615))

(assert (=> b!310057 m!410425))

(assert (=> b!310055 m!411347))

(assert (=> b!310055 m!410297))

(declare-fun m!415617 () Bool)

(assert (=> b!310055 m!415617))

(assert (=> d!94078 d!95176))

(assert (=> d!94078 d!94062))

(declare-fun d!95178 () Bool)

(assert (=> d!95178 (isPrefix!441 lt!131150 (++!1102 lt!131150 lt!131170))))

(assert (=> d!95178 true))

(declare-fun _$46!803 () Unit!5690)

(assert (=> d!95178 (= (choose!2694 lt!131150 lt!131170) _$46!803)))

(declare-fun bs!35964 () Bool)

(assert (= bs!35964 d!95178))

(assert (=> bs!35964 m!410297))

(assert (=> bs!35964 m!410297))

(assert (=> bs!35964 m!411279))

(assert (=> d!94078 d!95178))

(assert (=> b!308116 d!94592))

(declare-fun b!310058 () Bool)

(declare-fun e!192806 () Bool)

(declare-fun e!192805 () Bool)

(assert (=> b!310058 (= e!192806 e!192805)))

(declare-fun res!140962 () Bool)

(assert (=> b!310058 (=> res!140962 e!192805)))

(declare-fun lt!132648 () Option!929)

(assert (=> b!310058 (= res!140962 (not (isDefined!768 lt!132648)))))

(declare-fun b!310059 () Bool)

(declare-fun e!192804 () Bool)

(declare-fun e!192807 () Bool)

(assert (=> b!310059 (= e!192804 e!192807)))

(declare-fun res!140967 () Bool)

(assert (=> b!310059 (=> (not res!140967) (not e!192807))))

(assert (=> b!310059 (= res!140967 (= (_1!2563 (get!1390 lt!132648)) (_1!2561 (get!1388 (maxPrefixZipper!143 thiss!17480 (t!43304 rules!1920) (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465)))))))))))

(declare-fun b!310060 () Bool)

(declare-fun e!192808 () Bool)

(assert (=> b!310060 (= e!192805 e!192808)))

(declare-fun res!140965 () Bool)

(assert (=> b!310060 (=> (not res!140965) (not e!192808))))

(assert (=> b!310060 (= res!140965 (= (_1!2563 (get!1390 lt!132648)) (_1!2561 (get!1388 (maxPrefix!383 thiss!17480 (t!43304 rules!1920) (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465)))))))))))

(declare-fun d!95180 () Bool)

(assert (=> d!95180 e!192806))

(declare-fun res!140964 () Bool)

(assert (=> d!95180 (=> (not res!140964) (not e!192806))))

(assert (=> d!95180 (= res!140964 (= (isDefined!768 lt!132648) (isDefined!767 (maxPrefixZipper!143 thiss!17480 (t!43304 rules!1920) (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465))))))))))

(declare-fun e!192809 () Option!929)

(assert (=> d!95180 (= lt!132648 e!192809)))

(declare-fun c!58835 () Bool)

(assert (=> d!95180 (= c!58835 (and ((_ is Cons!4062) (t!43304 rules!1920)) ((_ is Nil!4062) (t!43304 (t!43304 rules!1920)))))))

(declare-fun lt!132650 () Unit!5690)

(declare-fun lt!132644 () Unit!5690)

(assert (=> d!95180 (= lt!132650 lt!132644)))

(declare-fun lt!132649 () List!4071)

(declare-fun lt!132647 () List!4071)

(assert (=> d!95180 (isPrefix!441 lt!132649 lt!132647)))

(assert (=> d!95180 (= lt!132644 (lemmaIsPrefixRefl!238 lt!132649 lt!132647))))

(assert (=> d!95180 (= lt!132647 (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465)))))))

(assert (=> d!95180 (= lt!132649 (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465)))))))

(assert (=> d!95180 (rulesValidInductive!233 thiss!17480 (t!43304 rules!1920))))

(assert (=> d!95180 (= (maxPrefixZipperSequence!346 thiss!17480 (t!43304 rules!1920) (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465)))) lt!132648)))

(declare-fun b!310061 () Bool)

(assert (=> b!310061 (= e!192808 (= (list!1713 (_2!2563 (get!1390 lt!132648))) (_2!2561 (get!1388 (maxPrefix!383 thiss!17480 (t!43304 rules!1920) (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465)))))))))))

(declare-fun bm!18061 () Bool)

(declare-fun call!18066 () Option!929)

(assert (=> bm!18061 (= call!18066 (maxPrefixOneRuleZipperSequence!144 thiss!17480 (h!9459 (t!43304 rules!1920)) (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465)))))))

(declare-fun b!310062 () Bool)

(declare-fun res!140966 () Bool)

(assert (=> b!310062 (=> (not res!140966) (not e!192806))))

(assert (=> b!310062 (= res!140966 e!192804)))

(declare-fun res!140963 () Bool)

(assert (=> b!310062 (=> res!140963 e!192804)))

(assert (=> b!310062 (= res!140963 (not (isDefined!768 lt!132648)))))

(declare-fun b!310063 () Bool)

(assert (=> b!310063 (= e!192807 (= (list!1713 (_2!2563 (get!1390 lt!132648))) (_2!2561 (get!1388 (maxPrefixZipper!143 thiss!17480 (t!43304 rules!1920) (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465)))))))))))

(declare-fun b!310064 () Bool)

(assert (=> b!310064 (= e!192809 call!18066)))

(declare-fun b!310065 () Bool)

(declare-fun lt!132645 () Option!929)

(declare-fun lt!132646 () Option!929)

(assert (=> b!310065 (= e!192809 (ite (and ((_ is None!928) lt!132645) ((_ is None!928) lt!132646)) None!928 (ite ((_ is None!928) lt!132646) lt!132645 (ite ((_ is None!928) lt!132645) lt!132646 (ite (>= (size!3243 (_1!2563 (v!14933 lt!132645))) (size!3243 (_1!2563 (v!14933 lt!132646)))) lt!132645 lt!132646)))))))

(assert (=> b!310065 (= lt!132645 call!18066)))

(assert (=> b!310065 (= lt!132646 (maxPrefixZipperSequence!346 thiss!17480 (t!43304 (t!43304 rules!1920)) (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465)))))))

(assert (= (and d!95180 c!58835) b!310064))

(assert (= (and d!95180 (not c!58835)) b!310065))

(assert (= (or b!310064 b!310065) bm!18061))

(assert (= (and d!95180 res!140964) b!310062))

(assert (= (and b!310062 (not res!140963)) b!310059))

(assert (= (and b!310059 res!140967) b!310063))

(assert (= (and b!310062 res!140966) b!310058))

(assert (= (and b!310058 (not res!140962)) b!310060))

(assert (= (and b!310060 res!140965) b!310061))

(declare-fun m!415619 () Bool)

(assert (=> b!310059 m!415619))

(assert (=> b!310059 m!410347))

(assert (=> b!310059 m!410653))

(assert (=> b!310059 m!410653))

(assert (=> b!310059 m!412939))

(assert (=> b!310059 m!412939))

(declare-fun m!415621 () Bool)

(assert (=> b!310059 m!415621))

(assert (=> b!310063 m!412939))

(assert (=> b!310063 m!415621))

(assert (=> b!310063 m!410653))

(assert (=> b!310063 m!412939))

(assert (=> b!310063 m!415619))

(declare-fun m!415623 () Bool)

(assert (=> b!310063 m!415623))

(assert (=> b!310063 m!410347))

(assert (=> b!310063 m!410653))

(assert (=> bm!18061 m!410347))

(declare-fun m!415625 () Bool)

(assert (=> bm!18061 m!415625))

(assert (=> b!310065 m!410347))

(declare-fun m!415627 () Bool)

(assert (=> b!310065 m!415627))

(declare-fun m!415629 () Bool)

(assert (=> b!310058 m!415629))

(assert (=> b!310062 m!415629))

(assert (=> b!310061 m!410653))

(assert (=> b!310061 m!412243))

(assert (=> b!310061 m!415619))

(assert (=> b!310061 m!415623))

(assert (=> b!310061 m!410347))

(assert (=> b!310061 m!410653))

(assert (=> b!310061 m!412243))

(declare-fun m!415631 () Bool)

(assert (=> b!310061 m!415631))

(declare-fun m!415633 () Bool)

(assert (=> d!95180 m!415633))

(assert (=> d!95180 m!415629))

(assert (=> d!95180 m!412939))

(declare-fun m!415635 () Bool)

(assert (=> d!95180 m!415635))

(assert (=> d!95180 m!410653))

(assert (=> d!95180 m!412939))

(assert (=> d!95180 m!415145))

(declare-fun m!415637 () Bool)

(assert (=> d!95180 m!415637))

(assert (=> d!95180 m!410347))

(assert (=> d!95180 m!410653))

(assert (=> b!310060 m!415619))

(assert (=> b!310060 m!410347))

(assert (=> b!310060 m!410653))

(assert (=> b!310060 m!410653))

(assert (=> b!310060 m!412243))

(assert (=> b!310060 m!412243))

(assert (=> b!310060 m!415631))

(assert (=> b!307723 d!95180))

(declare-fun d!95182 () Bool)

(assert (=> d!95182 (forall!1072 (dropList!196 (seqFromList!927 (t!43305 tokens!465)) 0) lambda!10521)))

(declare-fun lt!132653 () Unit!5690)

(declare-fun choose!2708 (List!4073 List!4073 Int) Unit!5690)

(assert (=> d!95182 (= lt!132653 (choose!2708 (list!1716 (seqFromList!927 (t!43305 tokens!465))) (dropList!196 (seqFromList!927 (t!43305 tokens!465)) 0) lambda!10521))))

(assert (=> d!95182 (forall!1072 (list!1716 (seqFromList!927 (t!43305 tokens!465))) lambda!10521)))

(assert (=> d!95182 (= (lemmaContentSubsetPreservesForall!140 (list!1716 (seqFromList!927 (t!43305 tokens!465))) (dropList!196 (seqFromList!927 (t!43305 tokens!465)) 0) lambda!10521) lt!132653)))

(declare-fun bs!35965 () Bool)

(assert (= bs!35965 d!95182))

(assert (=> bs!35965 m!411181))

(declare-fun m!415639 () Bool)

(assert (=> bs!35965 m!415639))

(assert (=> bs!35965 m!411095))

(assert (=> bs!35965 m!411181))

(declare-fun m!415641 () Bool)

(assert (=> bs!35965 m!415641))

(assert (=> bs!35965 m!411095))

(declare-fun m!415643 () Bool)

(assert (=> bs!35965 m!415643))

(assert (=> d!94010 d!95182))

(declare-fun bs!35966 () Bool)

(declare-fun b!310066 () Bool)

(assert (= bs!35966 (and b!310066 b!309982)))

(declare-fun lambda!10586 () Int)

(assert (=> bs!35966 (= lambda!10586 lambda!10579)))

(declare-fun bs!35967 () Bool)

(assert (= bs!35967 (and b!310066 d!94270)))

(assert (=> bs!35967 (= lambda!10586 lambda!10532)))

(declare-fun bs!35968 () Bool)

(assert (= bs!35968 (and b!310066 d!94504)))

(assert (=> bs!35968 (not (= lambda!10586 lambda!10542))))

(declare-fun bs!35969 () Bool)

(assert (= bs!35969 (and b!310066 b!310035)))

(assert (=> bs!35969 (= lambda!10586 lambda!10585)))

(declare-fun bs!35970 () Bool)

(assert (= bs!35970 (and b!310066 b!308847)))

(assert (=> bs!35970 (= lambda!10586 lambda!10543)))

(declare-fun bs!35971 () Bool)

(assert (= bs!35971 (and b!310066 b!307890)))

(assert (=> bs!35971 (= lambda!10586 lambda!10514)))

(declare-fun bs!35972 () Bool)

(assert (= bs!35972 (and b!310066 d!94136)))

(assert (=> bs!35972 (not (= lambda!10586 lambda!10524))))

(declare-fun bs!35973 () Bool)

(assert (= bs!35973 (and b!310066 b!308157)))

(assert (=> bs!35973 (= lambda!10586 lambda!10526)))

(declare-fun bs!35974 () Bool)

(assert (= bs!35974 (and b!310066 b!307468)))

(assert (=> bs!35974 (= lambda!10586 lambda!10492)))

(declare-fun bs!35975 () Bool)

(assert (= bs!35975 (and b!310066 d!95142)))

(assert (=> bs!35975 (not (= lambda!10586 lambda!10578))))

(declare-fun bs!35976 () Bool)

(assert (= bs!35976 (and b!310066 b!307466)))

(assert (=> bs!35976 (not (= lambda!10586 lambda!10491))))

(declare-fun bs!35977 () Bool)

(assert (= bs!35977 (and b!310066 d!93922)))

(assert (=> bs!35977 (= lambda!10586 lambda!10508)))

(declare-fun bs!35978 () Bool)

(assert (= bs!35978 (and b!310066 b!308119)))

(assert (=> bs!35978 (= lambda!10586 lambda!10525)))

(declare-fun bs!35979 () Bool)

(assert (= bs!35979 (and b!310066 b!308013)))

(assert (=> bs!35979 (= lambda!10586 lambda!10522)))

(declare-fun bs!35980 () Bool)

(assert (= bs!35980 (and b!310066 d!94010)))

(assert (=> bs!35980 (not (= lambda!10586 lambda!10521))))

(declare-fun b!310078 () Bool)

(declare-fun e!192817 () Bool)

(assert (=> b!310078 (= e!192817 true)))

(declare-fun b!310077 () Bool)

(declare-fun e!192816 () Bool)

(assert (=> b!310077 (= e!192816 e!192817)))

(declare-fun b!310076 () Bool)

(declare-fun e!192815 () Bool)

(assert (=> b!310076 (= e!192815 e!192816)))

(assert (=> b!310066 e!192815))

(assert (= b!310077 b!310078))

(assert (= b!310076 b!310077))

(assert (= (and b!310066 ((_ is Cons!4062) rules!1920)) b!310076))

(assert (=> b!310078 (< (dynLambda!2219 order!3297 (toValue!1540 (transformation!781 (h!9459 rules!1920)))) (dynLambda!2220 order!3299 lambda!10586))))

(assert (=> b!310078 (< (dynLambda!2221 order!3301 (toChars!1399 (transformation!781 (h!9459 rules!1920)))) (dynLambda!2220 order!3299 lambda!10586))))

(assert (=> b!310066 true))

(declare-fun e!192812 () List!4071)

(declare-fun e!192814 () List!4071)

(assert (=> b!310066 (= e!192812 e!192814)))

(declare-fun lt!132656 () Unit!5690)

(assert (=> b!310066 (= lt!132656 (forallContained!334 (dropList!196 (seqFromList!927 (t!43305 tokens!465)) 0) lambda!10586 (h!9460 (dropList!196 (seqFromList!927 (t!43305 tokens!465)) 0))))))

(declare-fun lt!132655 () List!4071)

(assert (=> b!310066 (= lt!132655 (printWithSeparatorTokenWhenNeededList!348 thiss!17480 rules!1920 (t!43305 (dropList!196 (seqFromList!927 (t!43305 tokens!465)) 0)) separatorToken!170))))

(declare-fun lt!132658 () Option!928)

(assert (=> b!310066 (= lt!132658 (maxPrefix!383 thiss!17480 rules!1920 (++!1102 (list!1713 (charsOf!424 (h!9460 (dropList!196 (seqFromList!927 (t!43305 tokens!465)) 0)))) lt!132655)))))

(declare-fun c!58839 () Bool)

(assert (=> b!310066 (= c!58839 (and ((_ is Some!927) lt!132658) (= (_1!2561 (v!14932 lt!132658)) (h!9460 (dropList!196 (seqFromList!927 (t!43305 tokens!465)) 0)))))))

(declare-fun bm!18062 () Bool)

(declare-fun call!18071 () BalanceConc!2776)

(assert (=> bm!18062 (= call!18071 (charsOf!424 (h!9460 (dropList!196 (seqFromList!927 (t!43305 tokens!465)) 0))))))

(declare-fun bm!18063 () Bool)

(declare-fun c!58836 () Bool)

(assert (=> bm!18063 (= c!58836 c!58839)))

(declare-fun call!18070 () List!4071)

(declare-fun call!18069 () List!4071)

(declare-fun e!192810 () List!4071)

(assert (=> bm!18063 (= call!18069 (++!1102 e!192810 (ite c!58839 lt!132655 call!18070)))))

(declare-fun bm!18064 () Bool)

(declare-fun call!18068 () BalanceConc!2776)

(assert (=> bm!18064 (= call!18068 call!18071)))

(declare-fun bm!18065 () Bool)

(declare-fun call!18067 () List!4071)

(declare-fun e!192811 () BalanceConc!2776)

(assert (=> bm!18065 (= call!18067 (list!1713 (ite c!58839 call!18071 e!192811)))))

(declare-fun b!310067 () Bool)

(assert (=> b!310067 (= e!192810 (list!1713 call!18068))))

(declare-fun b!310068 () Bool)

(declare-fun e!192813 () List!4071)

(assert (=> b!310068 (= e!192813 (++!1102 call!18069 lt!132655))))

(declare-fun bm!18066 () Bool)

(assert (=> bm!18066 (= call!18070 call!18067)))

(declare-fun c!58840 () Bool)

(declare-fun c!58837 () Bool)

(assert (=> bm!18066 (= c!58840 c!58837)))

(declare-fun b!310069 () Bool)

(assert (=> b!310069 (= e!192813 Nil!4061)))

(assert (=> b!310069 (= (print!392 thiss!17480 (singletonSeq!327 (h!9460 (dropList!196 (seqFromList!927 (t!43305 tokens!465)) 0)))) (printTailRec!353 thiss!17480 (singletonSeq!327 (h!9460 (dropList!196 (seqFromList!927 (t!43305 tokens!465)) 0))) 0 (BalanceConc!2777 Empty!1384)))))

(declare-fun lt!132659 () Unit!5690)

(declare-fun Unit!5742 () Unit!5690)

(assert (=> b!310069 (= lt!132659 Unit!5742)))

(declare-fun lt!132657 () Unit!5690)

(assert (=> b!310069 (= lt!132657 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!144 thiss!17480 rules!1920 call!18070 lt!132655))))

(assert (=> b!310069 false))

(declare-fun lt!132654 () Unit!5690)

(declare-fun Unit!5743 () Unit!5690)

(assert (=> b!310069 (= lt!132654 Unit!5743)))

(declare-fun b!310070 () Bool)

(assert (=> b!310070 (= e!192811 call!18068)))

(declare-fun b!310071 () Bool)

(assert (=> b!310071 (= e!192814 call!18069)))

(declare-fun b!310072 () Bool)

(assert (=> b!310072 (= c!58837 (and ((_ is Some!927) lt!132658) (not (= (_1!2561 (v!14932 lt!132658)) (h!9460 (dropList!196 (seqFromList!927 (t!43305 tokens!465)) 0))))))))

(assert (=> b!310072 (= e!192814 e!192813)))

(declare-fun b!310073 () Bool)

(assert (=> b!310073 (= e!192811 (charsOf!424 separatorToken!170))))

(declare-fun b!310074 () Bool)

(assert (=> b!310074 (= e!192812 Nil!4061)))

(declare-fun d!95184 () Bool)

(declare-fun c!58838 () Bool)

(assert (=> d!95184 (= c!58838 ((_ is Cons!4063) (dropList!196 (seqFromList!927 (t!43305 tokens!465)) 0)))))

(assert (=> d!95184 (= (printWithSeparatorTokenWhenNeededList!348 thiss!17480 rules!1920 (dropList!196 (seqFromList!927 (t!43305 tokens!465)) 0) separatorToken!170) e!192812)))

(declare-fun b!310075 () Bool)

(assert (=> b!310075 (= e!192810 call!18067)))

(assert (= (and d!95184 c!58838) b!310066))

(assert (= (and d!95184 (not c!58838)) b!310074))

(assert (= (and b!310066 c!58839) b!310071))

(assert (= (and b!310066 (not c!58839)) b!310072))

(assert (= (and b!310072 c!58837) b!310068))

(assert (= (and b!310072 (not c!58837)) b!310069))

(assert (= (or b!310068 b!310069) bm!18064))

(assert (= (or b!310068 b!310069) bm!18066))

(assert (= (and bm!18066 c!58840) b!310073))

(assert (= (and bm!18066 (not c!58840)) b!310070))

(assert (= (or b!310071 bm!18064) bm!18062))

(assert (= (or b!310071 bm!18066) bm!18065))

(assert (= (or b!310071 b!310068) bm!18063))

(assert (= (and bm!18063 c!58836) b!310075))

(assert (= (and bm!18063 (not c!58836)) b!310067))

(declare-fun m!415645 () Bool)

(assert (=> bm!18062 m!415645))

(declare-fun m!415647 () Bool)

(assert (=> b!310067 m!415647))

(assert (=> b!310066 m!415645))

(assert (=> b!310066 m!415645))

(declare-fun m!415649 () Bool)

(assert (=> b!310066 m!415649))

(assert (=> b!310066 m!411181))

(declare-fun m!415651 () Bool)

(assert (=> b!310066 m!415651))

(assert (=> b!310066 m!415649))

(declare-fun m!415653 () Bool)

(assert (=> b!310066 m!415653))

(declare-fun m!415655 () Bool)

(assert (=> b!310066 m!415655))

(assert (=> b!310066 m!415653))

(declare-fun m!415657 () Bool)

(assert (=> b!310066 m!415657))

(declare-fun m!415659 () Bool)

(assert (=> b!310069 m!415659))

(assert (=> b!310069 m!415659))

(declare-fun m!415661 () Bool)

(assert (=> b!310069 m!415661))

(assert (=> b!310069 m!415659))

(declare-fun m!415663 () Bool)

(assert (=> b!310069 m!415663))

(declare-fun m!415665 () Bool)

(assert (=> b!310069 m!415665))

(declare-fun m!415667 () Bool)

(assert (=> bm!18063 m!415667))

(declare-fun m!415669 () Bool)

(assert (=> b!310068 m!415669))

(declare-fun m!415671 () Bool)

(assert (=> bm!18065 m!415671))

(assert (=> b!310073 m!410285))

(assert (=> d!94010 d!95184))

(declare-fun d!95186 () Bool)

(assert (=> d!95186 (= (list!1713 lt!131482) (list!1717 (c!58276 lt!131482)))))

(declare-fun bs!35981 () Bool)

(assert (= bs!35981 d!95186))

(declare-fun m!415673 () Bool)

(assert (=> bs!35981 m!415673))

(assert (=> d!94010 d!95186))

(declare-fun d!95188 () Bool)

(assert (=> d!95188 (= (dropList!196 (seqFromList!927 (t!43305 tokens!465)) 0) (drop!251 (list!1719 (c!58278 (seqFromList!927 (t!43305 tokens!465)))) 0))))

(declare-fun bs!35982 () Bool)

(assert (= bs!35982 d!95188))

(assert (=> bs!35982 m!412511))

(assert (=> bs!35982 m!412511))

(declare-fun m!415675 () Bool)

(assert (=> bs!35982 m!415675))

(assert (=> d!94010 d!95188))

(declare-fun d!95190 () Bool)

(declare-fun lt!132660 () Int)

(assert (=> d!95190 (= lt!132660 (size!3253 (list!1716 (seqFromList!927 (t!43305 tokens!465)))))))

(assert (=> d!95190 (= lt!132660 (size!3254 (c!58278 (seqFromList!927 (t!43305 tokens!465)))))))

(assert (=> d!95190 (= (size!3247 (seqFromList!927 (t!43305 tokens!465))) lt!132660)))

(declare-fun bs!35983 () Bool)

(assert (= bs!35983 d!95190))

(assert (=> bs!35983 m!410277))

(assert (=> bs!35983 m!411095))

(assert (=> bs!35983 m!411095))

(declare-fun m!415677 () Bool)

(assert (=> bs!35983 m!415677))

(declare-fun m!415679 () Bool)

(assert (=> bs!35983 m!415679))

(assert (=> d!94010 d!95190))

(assert (=> d!94010 d!94474))

(declare-fun b!310079 () Bool)

(declare-fun res!140973 () Bool)

(declare-fun e!192820 () Bool)

(assert (=> b!310079 (=> (not res!140973) (not e!192820))))

(declare-fun call!18072 () Bool)

(assert (=> b!310079 (= res!140973 (not call!18072))))

(declare-fun b!310080 () Bool)

(declare-fun e!192822 () Bool)

(assert (=> b!310080 (= e!192822 (nullable!196 (regex!781 (rule!1394 (_1!2561 (get!1388 lt!131185))))))))

(declare-fun bm!18067 () Bool)

(assert (=> bm!18067 (= call!18072 (isEmpty!2775 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131185))))))))

(declare-fun b!310081 () Bool)

(declare-fun e!192821 () Bool)

(declare-fun e!192824 () Bool)

(assert (=> b!310081 (= e!192821 e!192824)))

(declare-fun res!140975 () Bool)

(assert (=> b!310081 (=> res!140975 e!192824)))

(assert (=> b!310081 (= res!140975 call!18072)))

(declare-fun b!310082 () Bool)

(assert (=> b!310082 (= e!192820 (= (head!968 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131185))))) (c!58277 (regex!781 (rule!1394 (_1!2561 (get!1388 lt!131185)))))))))

(declare-fun b!310083 () Bool)

(declare-fun res!140972 () Bool)

(assert (=> b!310083 (=> res!140972 e!192824)))

(assert (=> b!310083 (= res!140972 (not (isEmpty!2775 (tail!542 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131185))))))))))

(declare-fun b!310084 () Bool)

(assert (=> b!310084 (= e!192824 (not (= (head!968 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131185))))) (c!58277 (regex!781 (rule!1394 (_1!2561 (get!1388 lt!131185))))))))))

(declare-fun b!310085 () Bool)

(declare-fun res!140971 () Bool)

(declare-fun e!192823 () Bool)

(assert (=> b!310085 (=> res!140971 e!192823)))

(assert (=> b!310085 (= res!140971 e!192820)))

(declare-fun res!140968 () Bool)

(assert (=> b!310085 (=> (not res!140968) (not e!192820))))

(declare-fun lt!132661 () Bool)

(assert (=> b!310085 (= res!140968 lt!132661)))

(declare-fun b!310086 () Bool)

(assert (=> b!310086 (= e!192822 (matchR!323 (derivativeStep!162 (regex!781 (rule!1394 (_1!2561 (get!1388 lt!131185)))) (head!968 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131185)))))) (tail!542 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131185)))))))))

(declare-fun b!310087 () Bool)

(assert (=> b!310087 (= e!192823 e!192821)))

(declare-fun res!140969 () Bool)

(assert (=> b!310087 (=> (not res!140969) (not e!192821))))

(assert (=> b!310087 (= res!140969 (not lt!132661))))

(declare-fun b!310089 () Bool)

(declare-fun e!192818 () Bool)

(assert (=> b!310089 (= e!192818 (not lt!132661))))

(declare-fun b!310090 () Bool)

(declare-fun e!192819 () Bool)

(assert (=> b!310090 (= e!192819 (= lt!132661 call!18072))))

(declare-fun b!310091 () Bool)

(assert (=> b!310091 (= e!192819 e!192818)))

(declare-fun c!58843 () Bool)

(assert (=> b!310091 (= c!58843 ((_ is EmptyLang!1005) (regex!781 (rule!1394 (_1!2561 (get!1388 lt!131185))))))))

(declare-fun b!310092 () Bool)

(declare-fun res!140974 () Bool)

(assert (=> b!310092 (=> (not res!140974) (not e!192820))))

(assert (=> b!310092 (= res!140974 (isEmpty!2775 (tail!542 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131185)))))))))

(declare-fun b!310088 () Bool)

(declare-fun res!140970 () Bool)

(assert (=> b!310088 (=> res!140970 e!192823)))

(assert (=> b!310088 (= res!140970 (not ((_ is ElementMatch!1005) (regex!781 (rule!1394 (_1!2561 (get!1388 lt!131185)))))))))

(assert (=> b!310088 (= e!192818 e!192823)))

(declare-fun d!95192 () Bool)

(assert (=> d!95192 e!192819))

(declare-fun c!58841 () Bool)

(assert (=> d!95192 (= c!58841 ((_ is EmptyExpr!1005) (regex!781 (rule!1394 (_1!2561 (get!1388 lt!131185))))))))

(assert (=> d!95192 (= lt!132661 e!192822)))

(declare-fun c!58842 () Bool)

(assert (=> d!95192 (= c!58842 (isEmpty!2775 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131185))))))))

(assert (=> d!95192 (validRegex!271 (regex!781 (rule!1394 (_1!2561 (get!1388 lt!131185)))))))

(assert (=> d!95192 (= (matchR!323 (regex!781 (rule!1394 (_1!2561 (get!1388 lt!131185)))) (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131185))))) lt!132661)))

(assert (= (and d!95192 c!58842) b!310080))

(assert (= (and d!95192 (not c!58842)) b!310086))

(assert (= (and d!95192 c!58841) b!310090))

(assert (= (and d!95192 (not c!58841)) b!310091))

(assert (= (and b!310091 c!58843) b!310089))

(assert (= (and b!310091 (not c!58843)) b!310088))

(assert (= (and b!310088 (not res!140970)) b!310085))

(assert (= (and b!310085 res!140968) b!310079))

(assert (= (and b!310079 res!140973) b!310092))

(assert (= (and b!310092 res!140974) b!310082))

(assert (= (and b!310085 (not res!140971)) b!310087))

(assert (= (and b!310087 res!140969) b!310081))

(assert (= (and b!310081 (not res!140975)) b!310083))

(assert (= (and b!310083 (not res!140972)) b!310084))

(assert (= (or b!310090 b!310079 b!310081) bm!18067))

(assert (=> b!310084 m!410401))

(declare-fun m!415681 () Bool)

(assert (=> b!310084 m!415681))

(assert (=> d!95192 m!410401))

(declare-fun m!415683 () Bool)

(assert (=> d!95192 m!415683))

(declare-fun m!415685 () Bool)

(assert (=> d!95192 m!415685))

(assert (=> b!310082 m!410401))

(assert (=> b!310082 m!415681))

(assert (=> b!310086 m!410401))

(assert (=> b!310086 m!415681))

(assert (=> b!310086 m!415681))

(declare-fun m!415687 () Bool)

(assert (=> b!310086 m!415687))

(assert (=> b!310086 m!410401))

(declare-fun m!415689 () Bool)

(assert (=> b!310086 m!415689))

(assert (=> b!310086 m!415687))

(assert (=> b!310086 m!415689))

(declare-fun m!415691 () Bool)

(assert (=> b!310086 m!415691))

(declare-fun m!415693 () Bool)

(assert (=> b!310080 m!415693))

(assert (=> b!310092 m!410401))

(assert (=> b!310092 m!415689))

(assert (=> b!310092 m!415689))

(declare-fun m!415695 () Bool)

(assert (=> b!310092 m!415695))

(assert (=> b!310083 m!410401))

(assert (=> b!310083 m!415689))

(assert (=> b!310083 m!415689))

(assert (=> b!310083 m!415695))

(assert (=> bm!18067 m!410401))

(assert (=> bm!18067 m!415683))

(assert (=> b!307546 d!95192))

(assert (=> b!307546 d!94722))

(assert (=> b!307546 d!95054))

(assert (=> b!307546 d!95056))

(declare-fun d!95194 () Bool)

(declare-fun lt!132662 () Int)

(assert (=> d!95194 (= lt!132662 (size!3253 (list!1716 lt!131157)))))

(assert (=> d!95194 (= lt!132662 (size!3254 (c!58278 lt!131157)))))

(assert (=> d!95194 (= (size!3247 lt!131157) lt!132662)))

(declare-fun bs!35984 () Bool)

(assert (= bs!35984 d!95194))

(assert (=> bs!35984 m!410737))

(assert (=> bs!35984 m!410737))

(declare-fun m!415697 () Bool)

(assert (=> bs!35984 m!415697))

(declare-fun m!415699 () Bool)

(assert (=> bs!35984 m!415699))

(assert (=> b!307754 d!95194))

(declare-fun d!95196 () Bool)

(declare-fun c!58844 () Bool)

(assert (=> d!95196 (= c!58844 ((_ is Nil!4061) lt!131503))))

(declare-fun e!192825 () (InoxSet C!2932))

(assert (=> d!95196 (= (content!606 lt!131503) e!192825)))

(declare-fun b!310093 () Bool)

(assert (=> b!310093 (= e!192825 ((as const (Array C!2932 Bool)) false))))

(declare-fun b!310094 () Bool)

(assert (=> b!310094 (= e!192825 ((_ map or) (store ((as const (Array C!2932 Bool)) false) (h!9458 lt!131503) true) (content!606 (t!43303 lt!131503))))))

(assert (= (and d!95196 c!58844) b!310093))

(assert (= (and d!95196 (not c!58844)) b!310094))

(declare-fun m!415701 () Bool)

(assert (=> b!310094 m!415701))

(declare-fun m!415703 () Bool)

(assert (=> b!310094 m!415703))

(assert (=> d!94062 d!95196))

(assert (=> d!94062 d!94582))

(declare-fun d!95198 () Bool)

(declare-fun c!58845 () Bool)

(assert (=> d!95198 (= c!58845 ((_ is Nil!4061) lt!131170))))

(declare-fun e!192826 () (InoxSet C!2932))

(assert (=> d!95198 (= (content!606 lt!131170) e!192826)))

(declare-fun b!310095 () Bool)

(assert (=> b!310095 (= e!192826 ((as const (Array C!2932 Bool)) false))))

(declare-fun b!310096 () Bool)

(assert (=> b!310096 (= e!192826 ((_ map or) (store ((as const (Array C!2932 Bool)) false) (h!9458 lt!131170) true) (content!606 (t!43303 lt!131170))))))

(assert (= (and d!95198 c!58845) b!310095))

(assert (= (and d!95198 (not c!58845)) b!310096))

(declare-fun m!415705 () Bool)

(assert (=> b!310096 m!415705))

(declare-fun m!415707 () Bool)

(assert (=> b!310096 m!415707))

(assert (=> d!94062 d!95198))

(assert (=> b!308008 d!95190))

(declare-fun d!95200 () Bool)

(assert (=> d!95200 (= (list!1713 (ite c!58366 call!17889 e!191494)) (list!1717 (c!58276 (ite c!58366 call!17889 e!191494))))))

(declare-fun bs!35985 () Bool)

(assert (= bs!35985 d!95200))

(declare-fun m!415709 () Bool)

(assert (=> bs!35985 m!415709))

(assert (=> bm!17883 d!95200))

(assert (=> bm!17907 d!94512))

(declare-fun d!95202 () Bool)

(assert (=> d!95202 (= (list!1713 call!17886) (list!1717 (c!58276 call!17886)))))

(declare-fun bs!35986 () Bool)

(assert (= bs!35986 d!95202))

(declare-fun m!415711 () Bool)

(assert (=> bs!35986 m!415711))

(assert (=> b!307891 d!95202))

(declare-fun d!95204 () Bool)

(declare-fun lt!132665 () Bool)

(declare-fun content!611 (List!4072) (InoxSet Rule!1362))

(assert (=> d!95204 (= lt!132665 (select (content!611 rules!1920) (rule!1394 (_1!2561 (get!1388 lt!131185)))))))

(declare-fun e!192832 () Bool)

(assert (=> d!95204 (= lt!132665 e!192832)))

(declare-fun res!140980 () Bool)

(assert (=> d!95204 (=> (not res!140980) (not e!192832))))

(assert (=> d!95204 (= res!140980 ((_ is Cons!4062) rules!1920))))

(assert (=> d!95204 (= (contains!804 rules!1920 (rule!1394 (_1!2561 (get!1388 lt!131185)))) lt!132665)))

(declare-fun b!310101 () Bool)

(declare-fun e!192831 () Bool)

(assert (=> b!310101 (= e!192832 e!192831)))

(declare-fun res!140981 () Bool)

(assert (=> b!310101 (=> res!140981 e!192831)))

(assert (=> b!310101 (= res!140981 (= (h!9459 rules!1920) (rule!1394 (_1!2561 (get!1388 lt!131185)))))))

(declare-fun b!310102 () Bool)

(assert (=> b!310102 (= e!192831 (contains!804 (t!43304 rules!1920) (rule!1394 (_1!2561 (get!1388 lt!131185)))))))

(assert (= (and d!95204 res!140980) b!310101))

(assert (= (and b!310101 (not res!140981)) b!310102))

(declare-fun m!415713 () Bool)

(assert (=> d!95204 m!415713))

(declare-fun m!415715 () Bool)

(assert (=> d!95204 m!415715))

(declare-fun m!415717 () Bool)

(assert (=> b!310102 m!415717))

(assert (=> b!307547 d!95204))

(assert (=> b!307547 d!94722))

(declare-fun b!310104 () Bool)

(declare-fun e!192833 () List!4071)

(declare-fun e!192834 () List!4071)

(assert (=> b!310104 (= e!192833 e!192834)))

(declare-fun c!58847 () Bool)

(assert (=> b!310104 (= c!58847 ((_ is Leaf!2114) (c!58276 lt!131165)))))

(declare-fun b!310105 () Bool)

(assert (=> b!310105 (= e!192834 (list!1721 (xs!3987 (c!58276 lt!131165))))))

(declare-fun b!310106 () Bool)

(assert (=> b!310106 (= e!192834 (++!1102 (list!1717 (left!3377 (c!58276 lt!131165))) (list!1717 (right!3707 (c!58276 lt!131165)))))))

(declare-fun d!95206 () Bool)

(declare-fun c!58846 () Bool)

(assert (=> d!95206 (= c!58846 ((_ is Empty!1384) (c!58276 lt!131165)))))

(assert (=> d!95206 (= (list!1717 (c!58276 lt!131165)) e!192833)))

(declare-fun b!310103 () Bool)

(assert (=> b!310103 (= e!192833 Nil!4061)))

(assert (= (and d!95206 c!58846) b!310103))

(assert (= (and d!95206 (not c!58846)) b!310104))

(assert (= (and b!310104 c!58847) b!310105))

(assert (= (and b!310104 (not c!58847)) b!310106))

(declare-fun m!415719 () Bool)

(assert (=> b!310105 m!415719))

(declare-fun m!415721 () Bool)

(assert (=> b!310106 m!415721))

(declare-fun m!415723 () Bool)

(assert (=> b!310106 m!415723))

(assert (=> b!310106 m!415721))

(assert (=> b!310106 m!415723))

(declare-fun m!415725 () Bool)

(assert (=> b!310106 m!415725))

(assert (=> d!93968 d!95206))

(declare-fun d!95208 () Bool)

(assert (=> d!95208 (= (list!1716 (_1!2562 lt!131580)) (list!1719 (c!58278 (_1!2562 lt!131580))))))

(declare-fun bs!35987 () Bool)

(assert (= bs!35987 d!95208))

(declare-fun m!415727 () Bool)

(assert (=> bs!35987 m!415727))

(assert (=> b!308265 d!95208))

(assert (=> b!308265 d!94972))

(assert (=> b!308265 d!94982))

(declare-fun e!192836 () Bool)

(declare-fun lt!132666 () List!4071)

(declare-fun b!310110 () Bool)

(assert (=> b!310110 (= e!192836 (or (not (= (ite c!58415 lt!131567 call!17926) Nil!4061)) (= lt!132666 e!191666)))))

(declare-fun d!95210 () Bool)

(assert (=> d!95210 e!192836))

(declare-fun res!140982 () Bool)

(assert (=> d!95210 (=> (not res!140982) (not e!192836))))

(assert (=> d!95210 (= res!140982 (= (content!606 lt!132666) ((_ map or) (content!606 e!191666) (content!606 (ite c!58415 lt!131567 call!17926)))))))

(declare-fun e!192835 () List!4071)

(assert (=> d!95210 (= lt!132666 e!192835)))

(declare-fun c!58848 () Bool)

(assert (=> d!95210 (= c!58848 ((_ is Nil!4061) e!191666))))

(assert (=> d!95210 (= (++!1102 e!191666 (ite c!58415 lt!131567 call!17926)) lt!132666)))

(declare-fun b!310109 () Bool)

(declare-fun res!140983 () Bool)

(assert (=> b!310109 (=> (not res!140983) (not e!192836))))

(assert (=> b!310109 (= res!140983 (= (size!3246 lt!132666) (+ (size!3246 e!191666) (size!3246 (ite c!58415 lt!131567 call!17926)))))))

(declare-fun b!310108 () Bool)

(assert (=> b!310108 (= e!192835 (Cons!4061 (h!9458 e!191666) (++!1102 (t!43303 e!191666) (ite c!58415 lt!131567 call!17926))))))

(declare-fun b!310107 () Bool)

(assert (=> b!310107 (= e!192835 (ite c!58415 lt!131567 call!17926))))

(assert (= (and d!95210 c!58848) b!310107))

(assert (= (and d!95210 (not c!58848)) b!310108))

(assert (= (and d!95210 res!140982) b!310109))

(assert (= (and b!310109 res!140983) b!310110))

(declare-fun m!415729 () Bool)

(assert (=> d!95210 m!415729))

(declare-fun m!415731 () Bool)

(assert (=> d!95210 m!415731))

(declare-fun m!415733 () Bool)

(assert (=> d!95210 m!415733))

(declare-fun m!415735 () Bool)

(assert (=> b!310109 m!415735))

(declare-fun m!415737 () Bool)

(assert (=> b!310109 m!415737))

(declare-fun m!415739 () Bool)

(assert (=> b!310109 m!415739))

(declare-fun m!415741 () Bool)

(assert (=> b!310108 m!415741))

(assert (=> bm!17919 d!95210))

(declare-fun d!95212 () Bool)

(declare-fun lt!132667 () BalanceConc!2776)

(assert (=> d!95212 (= (list!1713 lt!132667) (originalCharacters!824 (ite c!58411 separatorToken!170 call!17922)))))

(assert (=> d!95212 (= lt!132667 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (ite c!58411 separatorToken!170 call!17922)))) (value!26574 (ite c!58411 separatorToken!170 call!17922))))))

(assert (=> d!95212 (= (charsOf!424 (ite c!58411 separatorToken!170 call!17922)) lt!132667)))

(declare-fun b_lambda!10821 () Bool)

(assert (=> (not b_lambda!10821) (not d!95212)))

(declare-fun tb!19723 () Bool)

(declare-fun t!43722 () Bool)

(assert (=> (and b!308316 (= (toChars!1399 (transformation!781 (h!9459 (t!43304 rules!1920)))) (toChars!1399 (transformation!781 (rule!1394 (ite c!58411 separatorToken!170 call!17922))))) t!43722) tb!19723))

(declare-fun b!310111 () Bool)

(declare-fun tp!109220 () Bool)

(declare-fun e!192837 () Bool)

(assert (=> b!310111 (= e!192837 (and (inv!5019 (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (ite c!58411 separatorToken!170 call!17922)))) (value!26574 (ite c!58411 separatorToken!170 call!17922))))) tp!109220))))

(declare-fun result!23732 () Bool)

(assert (=> tb!19723 (= result!23732 (and (inv!5020 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (ite c!58411 separatorToken!170 call!17922)))) (value!26574 (ite c!58411 separatorToken!170 call!17922)))) e!192837))))

(assert (= tb!19723 b!310111))

(declare-fun m!415743 () Bool)

(assert (=> b!310111 m!415743))

(declare-fun m!415745 () Bool)

(assert (=> tb!19723 m!415745))

(assert (=> d!95212 t!43722))

(declare-fun b_and!26329 () Bool)

(assert (= b_and!26319 (and (=> t!43722 result!23732) b_and!26329)))

(declare-fun tb!19725 () Bool)

(declare-fun t!43724 () Bool)

(assert (=> (and b!308288 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))) (toChars!1399 (transformation!781 (rule!1394 (ite c!58411 separatorToken!170 call!17922))))) t!43724) tb!19725))

(declare-fun result!23734 () Bool)

(assert (= result!23734 result!23732))

(assert (=> d!95212 t!43724))

(declare-fun b_and!26331 () Bool)

(assert (= b_and!26323 (and (=> t!43724 result!23734) b_and!26331)))

(declare-fun tb!19727 () Bool)

(declare-fun t!43726 () Bool)

(assert (=> (and b!307444 (= (toChars!1399 (transformation!781 (h!9459 rules!1920))) (toChars!1399 (transformation!781 (rule!1394 (ite c!58411 separatorToken!170 call!17922))))) t!43726) tb!19727))

(declare-fun result!23736 () Bool)

(assert (= result!23736 result!23732))

(assert (=> d!95212 t!43726))

(declare-fun b_and!26333 () Bool)

(assert (= b_and!26325 (and (=> t!43726 result!23736) b_and!26333)))

(declare-fun t!43728 () Bool)

(declare-fun tb!19729 () Bool)

(assert (=> (and b!307455 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (toChars!1399 (transformation!781 (rule!1394 (ite c!58411 separatorToken!170 call!17922))))) t!43728) tb!19729))

(declare-fun result!23738 () Bool)

(assert (= result!23738 result!23732))

(assert (=> d!95212 t!43728))

(declare-fun b_and!26335 () Bool)

(assert (= b_and!26327 (and (=> t!43728 result!23738) b_and!26335)))

(declare-fun t!43730 () Bool)

(declare-fun tb!19731 () Bool)

(assert (=> (and b!307440 (= (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (toChars!1399 (transformation!781 (rule!1394 (ite c!58411 separatorToken!170 call!17922))))) t!43730) tb!19731))

(declare-fun result!23740 () Bool)

(assert (= result!23740 result!23732))

(assert (=> d!95212 t!43730))

(declare-fun b_and!26337 () Bool)

(assert (= b_and!26321 (and (=> t!43730 result!23740) b_and!26337)))

(declare-fun m!415747 () Bool)

(assert (=> d!95212 m!415747))

(declare-fun m!415749 () Bool)

(assert (=> d!95212 m!415749))

(assert (=> bm!17913 d!95212))

(declare-fun d!95214 () Bool)

(declare-fun lt!132668 () Int)

(assert (=> d!95214 (>= lt!132668 0)))

(declare-fun e!192838 () Int)

(assert (=> d!95214 (= lt!132668 e!192838)))

(declare-fun c!58849 () Bool)

(assert (=> d!95214 (= c!58849 ((_ is Nil!4061) (originalCharacters!824 (h!9460 tokens!465))))))

(assert (=> d!95214 (= (size!3246 (originalCharacters!824 (h!9460 tokens!465))) lt!132668)))

(declare-fun b!310112 () Bool)

(assert (=> b!310112 (= e!192838 0)))

(declare-fun b!310113 () Bool)

(assert (=> b!310113 (= e!192838 (+ 1 (size!3246 (t!43303 (originalCharacters!824 (h!9460 tokens!465))))))))

(assert (= (and d!95214 c!58849) b!310112))

(assert (= (and d!95214 (not c!58849)) b!310113))

(declare-fun m!415751 () Bool)

(assert (=> b!310113 m!415751))

(assert (=> b!307584 d!95214))

(declare-fun b!310114 () Bool)

(declare-fun res!140989 () Bool)

(declare-fun e!192841 () Bool)

(assert (=> b!310114 (=> (not res!140989) (not e!192841))))

(declare-fun call!18073 () Bool)

(assert (=> b!310114 (= res!140989 (not call!18073))))

(declare-fun b!310115 () Bool)

(declare-fun e!192843 () Bool)

(assert (=> b!310115 (= e!192843 (nullable!196 (regex!781 (rule!1394 (_1!2561 (get!1388 lt!131190))))))))

(declare-fun bm!18068 () Bool)

(assert (=> bm!18068 (= call!18073 (isEmpty!2775 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131190))))))))

(declare-fun b!310116 () Bool)

(declare-fun e!192842 () Bool)

(declare-fun e!192845 () Bool)

(assert (=> b!310116 (= e!192842 e!192845)))

(declare-fun res!140991 () Bool)

(assert (=> b!310116 (=> res!140991 e!192845)))

(assert (=> b!310116 (= res!140991 call!18073)))

(declare-fun b!310117 () Bool)

(assert (=> b!310117 (= e!192841 (= (head!968 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131190))))) (c!58277 (regex!781 (rule!1394 (_1!2561 (get!1388 lt!131190)))))))))

(declare-fun b!310118 () Bool)

(declare-fun res!140988 () Bool)

(assert (=> b!310118 (=> res!140988 e!192845)))

(assert (=> b!310118 (= res!140988 (not (isEmpty!2775 (tail!542 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131190))))))))))

(declare-fun b!310119 () Bool)

(assert (=> b!310119 (= e!192845 (not (= (head!968 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131190))))) (c!58277 (regex!781 (rule!1394 (_1!2561 (get!1388 lt!131190))))))))))

(declare-fun b!310120 () Bool)

(declare-fun res!140987 () Bool)

(declare-fun e!192844 () Bool)

(assert (=> b!310120 (=> res!140987 e!192844)))

(assert (=> b!310120 (= res!140987 e!192841)))

(declare-fun res!140984 () Bool)

(assert (=> b!310120 (=> (not res!140984) (not e!192841))))

(declare-fun lt!132669 () Bool)

(assert (=> b!310120 (= res!140984 lt!132669)))

(declare-fun b!310121 () Bool)

(assert (=> b!310121 (= e!192843 (matchR!323 (derivativeStep!162 (regex!781 (rule!1394 (_1!2561 (get!1388 lt!131190)))) (head!968 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131190)))))) (tail!542 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131190)))))))))

(declare-fun b!310122 () Bool)

(assert (=> b!310122 (= e!192844 e!192842)))

(declare-fun res!140985 () Bool)

(assert (=> b!310122 (=> (not res!140985) (not e!192842))))

(assert (=> b!310122 (= res!140985 (not lt!132669))))

(declare-fun b!310124 () Bool)

(declare-fun e!192839 () Bool)

(assert (=> b!310124 (= e!192839 (not lt!132669))))

(declare-fun b!310125 () Bool)

(declare-fun e!192840 () Bool)

(assert (=> b!310125 (= e!192840 (= lt!132669 call!18073))))

(declare-fun b!310126 () Bool)

(assert (=> b!310126 (= e!192840 e!192839)))

(declare-fun c!58852 () Bool)

(assert (=> b!310126 (= c!58852 ((_ is EmptyLang!1005) (regex!781 (rule!1394 (_1!2561 (get!1388 lt!131190))))))))

(declare-fun b!310127 () Bool)

(declare-fun res!140990 () Bool)

(assert (=> b!310127 (=> (not res!140990) (not e!192841))))

(assert (=> b!310127 (= res!140990 (isEmpty!2775 (tail!542 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131190)))))))))

(declare-fun b!310123 () Bool)

(declare-fun res!140986 () Bool)

(assert (=> b!310123 (=> res!140986 e!192844)))

(assert (=> b!310123 (= res!140986 (not ((_ is ElementMatch!1005) (regex!781 (rule!1394 (_1!2561 (get!1388 lt!131190)))))))))

(assert (=> b!310123 (= e!192839 e!192844)))

(declare-fun d!95216 () Bool)

(assert (=> d!95216 e!192840))

(declare-fun c!58850 () Bool)

(assert (=> d!95216 (= c!58850 ((_ is EmptyExpr!1005) (regex!781 (rule!1394 (_1!2561 (get!1388 lt!131190))))))))

(assert (=> d!95216 (= lt!132669 e!192843)))

(declare-fun c!58851 () Bool)

(assert (=> d!95216 (= c!58851 (isEmpty!2775 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131190))))))))

(assert (=> d!95216 (validRegex!271 (regex!781 (rule!1394 (_1!2561 (get!1388 lt!131190)))))))

(assert (=> d!95216 (= (matchR!323 (regex!781 (rule!1394 (_1!2561 (get!1388 lt!131190)))) (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131190))))) lt!132669)))

(assert (= (and d!95216 c!58851) b!310115))

(assert (= (and d!95216 (not c!58851)) b!310121))

(assert (= (and d!95216 c!58850) b!310125))

(assert (= (and d!95216 (not c!58850)) b!310126))

(assert (= (and b!310126 c!58852) b!310124))

(assert (= (and b!310126 (not c!58852)) b!310123))

(assert (= (and b!310123 (not res!140986)) b!310120))

(assert (= (and b!310120 res!140984) b!310114))

(assert (= (and b!310114 res!140989) b!310127))

(assert (= (and b!310127 res!140990) b!310117))

(assert (= (and b!310120 (not res!140987)) b!310122))

(assert (= (and b!310122 res!140985) b!310116))

(assert (= (and b!310116 (not res!140991)) b!310118))

(assert (= (and b!310118 (not res!140988)) b!310119))

(assert (= (or b!310125 b!310114 b!310116) bm!18068))

(assert (=> b!310119 m!410437))

(declare-fun m!415753 () Bool)

(assert (=> b!310119 m!415753))

(assert (=> d!95216 m!410437))

(declare-fun m!415755 () Bool)

(assert (=> d!95216 m!415755))

(declare-fun m!415757 () Bool)

(assert (=> d!95216 m!415757))

(assert (=> b!310117 m!410437))

(assert (=> b!310117 m!415753))

(assert (=> b!310121 m!410437))

(assert (=> b!310121 m!415753))

(assert (=> b!310121 m!415753))

(declare-fun m!415759 () Bool)

(assert (=> b!310121 m!415759))

(assert (=> b!310121 m!410437))

(declare-fun m!415761 () Bool)

(assert (=> b!310121 m!415761))

(assert (=> b!310121 m!415759))

(assert (=> b!310121 m!415761))

(declare-fun m!415763 () Bool)

(assert (=> b!310121 m!415763))

(declare-fun m!415765 () Bool)

(assert (=> b!310115 m!415765))

(assert (=> b!310127 m!410437))

(assert (=> b!310127 m!415761))

(assert (=> b!310127 m!415761))

(declare-fun m!415767 () Bool)

(assert (=> b!310127 m!415767))

(assert (=> b!310118 m!410437))

(assert (=> b!310118 m!415761))

(assert (=> b!310118 m!415761))

(assert (=> b!310118 m!415767))

(assert (=> bm!18068 m!410437))

(assert (=> bm!18068 m!415755))

(assert (=> b!307555 d!95216))

(assert (=> b!307555 d!94734))

(assert (=> b!307555 d!94730))

(assert (=> b!307555 d!94732))

(assert (=> b!308239 d!95146))

(assert (=> b!308239 d!94280))

(declare-fun bs!35988 () Bool)

(declare-fun d!95218 () Bool)

(assert (= bs!35988 (and d!95218 d!94518)))

(declare-fun lambda!10587 () Int)

(assert (=> bs!35988 (= (= (toValue!1540 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (toValue!1540 (transformation!781 (h!9459 rules!1920)))) (= lambda!10587 lambda!10546))))

(declare-fun bs!35989 () Bool)

(assert (= bs!35989 (and d!95218 d!94674)))

(assert (=> bs!35989 (= (= (toValue!1540 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (toValue!1540 (transformation!781 (rule!1394 separatorToken!170)))) (= lambda!10587 lambda!10559))))

(assert (=> d!95218 true))

(assert (=> d!95218 (< (dynLambda!2219 order!3297 (toValue!1540 (transformation!781 (rule!1394 (h!9460 tokens!465))))) (dynLambda!2229 order!3307 lambda!10587))))

(assert (=> d!95218 (= (equivClasses!276 (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (toValue!1540 (transformation!781 (rule!1394 (h!9460 tokens!465))))) (Forall2!160 lambda!10587))))

(declare-fun bs!35990 () Bool)

(assert (= bs!35990 d!95218))

(declare-fun m!415769 () Bool)

(assert (=> bs!35990 m!415769))

(assert (=> b!308251 d!95218))

(assert (=> b!308067 d!94762))

(assert (=> b!308067 d!94764))

(assert (=> b!308067 d!94766))

(declare-fun d!95220 () Bool)

(declare-fun lt!132670 () Int)

(assert (=> d!95220 (>= lt!132670 0)))

(declare-fun e!192846 () Int)

(assert (=> d!95220 (= lt!132670 e!192846)))

(declare-fun c!58853 () Bool)

(assert (=> d!95220 (= c!58853 ((_ is Nil!4061) (_2!2561 (get!1388 lt!131190))))))

(assert (=> d!95220 (= (size!3246 (_2!2561 (get!1388 lt!131190))) lt!132670)))

(declare-fun b!310128 () Bool)

(assert (=> b!310128 (= e!192846 0)))

(declare-fun b!310129 () Bool)

(assert (=> b!310129 (= e!192846 (+ 1 (size!3246 (t!43303 (_2!2561 (get!1388 lt!131190))))))))

(assert (= (and d!95220 c!58853) b!310128))

(assert (= (and d!95220 (not c!58853)) b!310129))

(declare-fun m!415771 () Bool)

(assert (=> b!310129 m!415771))

(assert (=> b!307558 d!95220))

(assert (=> b!307558 d!94734))

(declare-fun d!95222 () Bool)

(declare-fun lt!132671 () Int)

(assert (=> d!95222 (>= lt!132671 0)))

(declare-fun e!192847 () Int)

(assert (=> d!95222 (= lt!132671 e!192847)))

(declare-fun c!58854 () Bool)

(assert (=> d!95222 (= c!58854 ((_ is Nil!4061) lt!131156))))

(assert (=> d!95222 (= (size!3246 lt!131156) lt!132671)))

(declare-fun b!310130 () Bool)

(assert (=> b!310130 (= e!192847 0)))

(declare-fun b!310131 () Bool)

(assert (=> b!310131 (= e!192847 (+ 1 (size!3246 (t!43303 lt!131156))))))

(assert (= (and d!95222 c!58854) b!310130))

(assert (= (and d!95222 (not c!58854)) b!310131))

(declare-fun m!415773 () Bool)

(assert (=> b!310131 m!415773))

(assert (=> b!307558 d!95222))

(declare-fun d!95224 () Bool)

(declare-fun nullableFct!57 (Regex!1005) Bool)

(assert (=> d!95224 (= (nullable!196 (regex!781 (rule!1394 (h!9460 tokens!465)))) (nullableFct!57 (regex!781 (rule!1394 (h!9460 tokens!465)))))))

(declare-fun bs!35991 () Bool)

(assert (= bs!35991 d!95224))

(declare-fun m!415775 () Bool)

(assert (=> bs!35991 m!415775))

(assert (=> b!308236 d!95224))

(declare-fun d!95226 () Bool)

(declare-fun lt!132672 () Bool)

(assert (=> d!95226 (= lt!132672 (isEmpty!2775 (list!1713 (_2!2562 lt!131243))))))

(assert (=> d!95226 (= lt!132672 (isEmpty!2788 (c!58276 (_2!2562 lt!131243))))))

(assert (=> d!95226 (= (isEmpty!2782 (_2!2562 lt!131243)) lt!132672)))

(declare-fun bs!35992 () Bool)

(assert (= bs!35992 d!95226))

(declare-fun m!415777 () Bool)

(assert (=> bs!35992 m!415777))

(assert (=> bs!35992 m!415777))

(declare-fun m!415779 () Bool)

(assert (=> bs!35992 m!415779))

(declare-fun m!415781 () Bool)

(assert (=> bs!35992 m!415781))

(assert (=> b!307639 d!95226))

(declare-fun d!95228 () Bool)

(assert (=> d!95228 (= (isEmpty!2775 (originalCharacters!824 separatorToken!170)) ((_ is Nil!4061) (originalCharacters!824 separatorToken!170)))))

(assert (=> d!93930 d!95228))

(declare-fun d!95230 () Bool)

(assert (=> d!95230 (= (inv!17 (value!26574 (h!9460 tokens!465))) (= (charsToBigInt!1 (text!6069 (value!26574 (h!9460 tokens!465)))) (value!26566 (value!26574 (h!9460 tokens!465)))))))

(declare-fun bs!35993 () Bool)

(assert (= bs!35993 d!95230))

(declare-fun m!415783 () Bool)

(assert (=> bs!35993 m!415783))

(assert (=> b!307670 d!95230))

(declare-fun d!95232 () Bool)

(declare-fun lt!132673 () Int)

(assert (=> d!95232 (>= lt!132673 0)))

(declare-fun e!192848 () Int)

(assert (=> d!95232 (= lt!132673 e!192848)))

(declare-fun c!58855 () Bool)

(assert (=> d!95232 (= c!58855 ((_ is Nil!4061) (_2!2561 (get!1388 lt!131530))))))

(assert (=> d!95232 (= (size!3246 (_2!2561 (get!1388 lt!131530))) lt!132673)))

(declare-fun b!310132 () Bool)

(assert (=> b!310132 (= e!192848 0)))

(declare-fun b!310133 () Bool)

(assert (=> b!310133 (= e!192848 (+ 1 (size!3246 (t!43303 (_2!2561 (get!1388 lt!131530))))))))

(assert (= (and d!95232 c!58855) b!310132))

(assert (= (and d!95232 (not c!58855)) b!310133))

(declare-fun m!415785 () Bool)

(assert (=> b!310133 m!415785))

(assert (=> b!308063 d!95232))

(assert (=> b!308063 d!94766))

(declare-fun d!95234 () Bool)

(declare-fun lt!132674 () Int)

(assert (=> d!95234 (>= lt!132674 0)))

(declare-fun e!192849 () Int)

(assert (=> d!95234 (= lt!132674 e!192849)))

(declare-fun c!58856 () Bool)

(assert (=> d!95234 (= c!58856 ((_ is Nil!4061) lt!131170))))

(assert (=> d!95234 (= (size!3246 lt!131170) lt!132674)))

(declare-fun b!310134 () Bool)

(assert (=> b!310134 (= e!192849 0)))

(declare-fun b!310135 () Bool)

(assert (=> b!310135 (= e!192849 (+ 1 (size!3246 (t!43303 lt!131170))))))

(assert (= (and d!95234 c!58856) b!310134))

(assert (= (and d!95234 (not c!58856)) b!310135))

(declare-fun m!415787 () Bool)

(assert (=> b!310135 m!415787))

(assert (=> b!308063 d!95234))

(declare-fun d!95236 () Bool)

(declare-fun e!192852 () Bool)

(assert (=> d!95236 e!192852))

(declare-fun res!140994 () Bool)

(assert (=> d!95236 (=> (not res!140994) (not e!192852))))

(declare-fun lt!132677 () BalanceConc!2778)

(assert (=> d!95236 (= res!140994 (= (list!1716 lt!132677) tokens!465))))

(declare-fun fromList!201 (List!4073) Conc!1385)

(assert (=> d!95236 (= lt!132677 (BalanceConc!2779 (fromList!201 tokens!465)))))

(assert (=> d!95236 (= (fromListB!386 tokens!465) lt!132677)))

(declare-fun b!310138 () Bool)

(assert (=> b!310138 (= e!192852 (isBalanced!395 (fromList!201 tokens!465)))))

(assert (= (and d!95236 res!140994) b!310138))

(declare-fun m!415789 () Bool)

(assert (=> d!95236 m!415789))

(declare-fun m!415791 () Bool)

(assert (=> d!95236 m!415791))

(assert (=> b!310138 m!415791))

(assert (=> b!310138 m!415791))

(declare-fun m!415793 () Bool)

(assert (=> b!310138 m!415793))

(assert (=> d!93926 d!95236))

(declare-fun b!310139 () Bool)

(declare-fun res!141000 () Bool)

(declare-fun e!192853 () Bool)

(assert (=> b!310139 (=> (not res!141000) (not e!192853))))

(declare-fun lt!132679 () Option!928)

(assert (=> b!310139 (= res!141000 (matchR!323 (regex!781 (rule!1394 (_1!2561 (get!1388 lt!132679)))) (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!132679))))))))

(declare-fun b!310140 () Bool)

(assert (=> b!310140 (= e!192853 (contains!804 (t!43304 rules!1920) (rule!1394 (_1!2561 (get!1388 lt!132679)))))))

(declare-fun b!310141 () Bool)

(declare-fun res!140998 () Bool)

(assert (=> b!310141 (=> (not res!140998) (not e!192853))))

(assert (=> b!310141 (= res!140998 (= (++!1102 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!132679)))) (_2!2561 (get!1388 lt!132679))) lt!131150))))

(declare-fun d!95238 () Bool)

(declare-fun e!192855 () Bool)

(assert (=> d!95238 e!192855))

(declare-fun res!140999 () Bool)

(assert (=> d!95238 (=> res!140999 e!192855)))

(assert (=> d!95238 (= res!140999 (isEmpty!2779 lt!132679))))

(declare-fun e!192854 () Option!928)

(assert (=> d!95238 (= lt!132679 e!192854)))

(declare-fun c!58858 () Bool)

(assert (=> d!95238 (= c!58858 (and ((_ is Cons!4062) (t!43304 rules!1920)) ((_ is Nil!4062) (t!43304 (t!43304 rules!1920)))))))

(declare-fun lt!132682 () Unit!5690)

(declare-fun lt!132681 () Unit!5690)

(assert (=> d!95238 (= lt!132682 lt!132681)))

(assert (=> d!95238 (isPrefix!441 lt!131150 lt!131150)))

(assert (=> d!95238 (= lt!132681 (lemmaIsPrefixRefl!238 lt!131150 lt!131150))))

(assert (=> d!95238 (rulesValidInductive!233 thiss!17480 (t!43304 rules!1920))))

(assert (=> d!95238 (= (maxPrefix!383 thiss!17480 (t!43304 rules!1920) lt!131150) lt!132679)))

(declare-fun call!18074 () Option!928)

(declare-fun bm!18069 () Bool)

(assert (=> bm!18069 (= call!18074 (maxPrefixOneRule!172 thiss!17480 (h!9459 (t!43304 rules!1920)) lt!131150))))

(declare-fun b!310142 () Bool)

(declare-fun res!140995 () Bool)

(assert (=> b!310142 (=> (not res!140995) (not e!192853))))

(assert (=> b!310142 (= res!140995 (< (size!3246 (_2!2561 (get!1388 lt!132679))) (size!3246 lt!131150)))))

(declare-fun b!310143 () Bool)

(assert (=> b!310143 (= e!192854 call!18074)))

(declare-fun b!310144 () Bool)

(assert (=> b!310144 (= e!192855 e!192853)))

(declare-fun res!140997 () Bool)

(assert (=> b!310144 (=> (not res!140997) (not e!192853))))

(assert (=> b!310144 (= res!140997 (isDefined!767 lt!132679))))

(declare-fun b!310145 () Bool)

(declare-fun res!140996 () Bool)

(assert (=> b!310145 (=> (not res!140996) (not e!192853))))

(assert (=> b!310145 (= res!140996 (= (value!26574 (_1!2561 (get!1388 lt!132679))) (apply!891 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!132679)))) (seqFromList!928 (originalCharacters!824 (_1!2561 (get!1388 lt!132679)))))))))

(declare-fun b!310146 () Bool)

(declare-fun res!141001 () Bool)

(assert (=> b!310146 (=> (not res!141001) (not e!192853))))

(assert (=> b!310146 (= res!141001 (= (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!132679)))) (originalCharacters!824 (_1!2561 (get!1388 lt!132679)))))))

(declare-fun b!310147 () Bool)

(declare-fun lt!132680 () Option!928)

(declare-fun lt!132678 () Option!928)

(assert (=> b!310147 (= e!192854 (ite (and ((_ is None!927) lt!132680) ((_ is None!927) lt!132678)) None!927 (ite ((_ is None!927) lt!132678) lt!132680 (ite ((_ is None!927) lt!132680) lt!132678 (ite (>= (size!3243 (_1!2561 (v!14932 lt!132680))) (size!3243 (_1!2561 (v!14932 lt!132678)))) lt!132680 lt!132678)))))))

(assert (=> b!310147 (= lt!132680 call!18074)))

(assert (=> b!310147 (= lt!132678 (maxPrefix!383 thiss!17480 (t!43304 (t!43304 rules!1920)) lt!131150))))

(assert (= (and d!95238 c!58858) b!310143))

(assert (= (and d!95238 (not c!58858)) b!310147))

(assert (= (or b!310143 b!310147) bm!18069))

(assert (= (and d!95238 (not res!140999)) b!310144))

(assert (= (and b!310144 res!140997) b!310146))

(assert (= (and b!310146 res!141001) b!310142))

(assert (= (and b!310142 res!140995) b!310141))

(assert (= (and b!310141 res!140998) b!310145))

(assert (= (and b!310145 res!140996) b!310139))

(assert (= (and b!310139 res!141000) b!310140))

(declare-fun m!415795 () Bool)

(assert (=> b!310147 m!415795))

(declare-fun m!415797 () Bool)

(assert (=> b!310141 m!415797))

(declare-fun m!415799 () Bool)

(assert (=> b!310141 m!415799))

(assert (=> b!310141 m!415799))

(declare-fun m!415801 () Bool)

(assert (=> b!310141 m!415801))

(assert (=> b!310141 m!415801))

(declare-fun m!415803 () Bool)

(assert (=> b!310141 m!415803))

(assert (=> b!310146 m!415797))

(assert (=> b!310146 m!415799))

(assert (=> b!310146 m!415799))

(assert (=> b!310146 m!415801))

(assert (=> b!310145 m!415797))

(declare-fun m!415805 () Bool)

(assert (=> b!310145 m!415805))

(assert (=> b!310145 m!415805))

(declare-fun m!415807 () Bool)

(assert (=> b!310145 m!415807))

(assert (=> b!310139 m!415797))

(assert (=> b!310139 m!415799))

(assert (=> b!310139 m!415799))

(assert (=> b!310139 m!415801))

(assert (=> b!310139 m!415801))

(declare-fun m!415809 () Bool)

(assert (=> b!310139 m!415809))

(declare-fun m!415811 () Bool)

(assert (=> bm!18069 m!415811))

(assert (=> b!310140 m!415797))

(declare-fun m!415813 () Bool)

(assert (=> b!310140 m!415813))

(declare-fun m!415815 () Bool)

(assert (=> d!95238 m!415815))

(assert (=> d!95238 m!410417))

(assert (=> d!95238 m!410419))

(assert (=> d!95238 m!415145))

(assert (=> b!310142 m!415797))

(declare-fun m!415817 () Bool)

(assert (=> b!310142 m!415817))

(assert (=> b!310142 m!410425))

(declare-fun m!415819 () Bool)

(assert (=> b!310144 m!415819))

(assert (=> b!307554 d!95238))

(declare-fun lt!132683 () List!4071)

(declare-fun b!310151 () Bool)

(declare-fun e!192857 () Bool)

(assert (=> b!310151 (= e!192857 (or (not (= lt!131164 Nil!4061)) (= lt!132683 (t!43303 lt!131150))))))

(declare-fun d!95240 () Bool)

(assert (=> d!95240 e!192857))

(declare-fun res!141002 () Bool)

(assert (=> d!95240 (=> (not res!141002) (not e!192857))))

(assert (=> d!95240 (= res!141002 (= (content!606 lt!132683) ((_ map or) (content!606 (t!43303 lt!131150)) (content!606 lt!131164))))))

(declare-fun e!192856 () List!4071)

(assert (=> d!95240 (= lt!132683 e!192856)))

(declare-fun c!58859 () Bool)

(assert (=> d!95240 (= c!58859 ((_ is Nil!4061) (t!43303 lt!131150)))))

(assert (=> d!95240 (= (++!1102 (t!43303 lt!131150) lt!131164) lt!132683)))

(declare-fun b!310150 () Bool)

(declare-fun res!141003 () Bool)

(assert (=> b!310150 (=> (not res!141003) (not e!192857))))

(assert (=> b!310150 (= res!141003 (= (size!3246 lt!132683) (+ (size!3246 (t!43303 lt!131150)) (size!3246 lt!131164))))))

(declare-fun b!310149 () Bool)

(assert (=> b!310149 (= e!192856 (Cons!4061 (h!9458 (t!43303 lt!131150)) (++!1102 (t!43303 (t!43303 lt!131150)) lt!131164)))))

(declare-fun b!310148 () Bool)

(assert (=> b!310148 (= e!192856 lt!131164)))

(assert (= (and d!95240 c!58859) b!310148))

(assert (= (and d!95240 (not c!58859)) b!310149))

(assert (= (and d!95240 res!141002) b!310150))

(assert (= (and b!310150 res!141003) b!310151))

(declare-fun m!415821 () Bool)

(assert (=> d!95240 m!415821))

(assert (=> d!95240 m!413011))

(assert (=> d!95240 m!410787))

(declare-fun m!415823 () Bool)

(assert (=> b!310150 m!415823))

(assert (=> b!310150 m!413733))

(assert (=> b!310150 m!410791))

(declare-fun m!415825 () Bool)

(assert (=> b!310149 m!415825))

(assert (=> b!308043 d!95240))

(declare-fun d!95242 () Bool)

(declare-fun c!58860 () Bool)

(assert (=> d!95242 (= c!58860 ((_ is Nil!4061) lt!131325))))

(declare-fun e!192858 () (InoxSet C!2932))

(assert (=> d!95242 (= (content!606 lt!131325) e!192858)))

(declare-fun b!310152 () Bool)

(assert (=> b!310152 (= e!192858 ((as const (Array C!2932 Bool)) false))))

(declare-fun b!310153 () Bool)

(assert (=> b!310153 (= e!192858 ((_ map or) (store ((as const (Array C!2932 Bool)) false) (h!9458 lt!131325) true) (content!606 (t!43303 lt!131325))))))

(assert (= (and d!95242 c!58860) b!310152))

(assert (= (and d!95242 (not c!58860)) b!310153))

(declare-fun m!415827 () Bool)

(assert (=> b!310153 m!415827))

(declare-fun m!415829 () Bool)

(assert (=> b!310153 m!415829))

(assert (=> d!93984 d!95242))

(declare-fun d!95244 () Bool)

(declare-fun c!58861 () Bool)

(assert (=> d!95244 (= c!58861 ((_ is Nil!4061) (++!1102 lt!131150 lt!131164)))))

(declare-fun e!192859 () (InoxSet C!2932))

(assert (=> d!95244 (= (content!606 (++!1102 lt!131150 lt!131164)) e!192859)))

(declare-fun b!310154 () Bool)

(assert (=> b!310154 (= e!192859 ((as const (Array C!2932 Bool)) false))))

(declare-fun b!310155 () Bool)

(assert (=> b!310155 (= e!192859 ((_ map or) (store ((as const (Array C!2932 Bool)) false) (h!9458 (++!1102 lt!131150 lt!131164)) true) (content!606 (t!43303 (++!1102 lt!131150 lt!131164)))))))

(assert (= (and d!95244 c!58861) b!310154))

(assert (= (and d!95244 (not c!58861)) b!310155))

(declare-fun m!415831 () Bool)

(assert (=> b!310155 m!415831))

(assert (=> b!310155 m!415603))

(assert (=> d!93984 d!95244))

(assert (=> d!93984 d!94818))

(declare-fun d!95246 () Bool)

(declare-fun e!192860 () Bool)

(assert (=> d!95246 e!192860))

(declare-fun res!141004 () Bool)

(assert (=> d!95246 (=> (not res!141004) (not e!192860))))

(declare-fun lt!132684 () BalanceConc!2778)

(assert (=> d!95246 (= res!141004 (= (list!1716 lt!132684) (t!43305 tokens!465)))))

(assert (=> d!95246 (= lt!132684 (BalanceConc!2779 (fromList!201 (t!43305 tokens!465))))))

(assert (=> d!95246 (= (fromListB!386 (t!43305 tokens!465)) lt!132684)))

(declare-fun b!310156 () Bool)

(assert (=> b!310156 (= e!192860 (isBalanced!395 (fromList!201 (t!43305 tokens!465))))))

(assert (= (and d!95246 res!141004) b!310156))

(declare-fun m!415833 () Bool)

(assert (=> d!95246 m!415833))

(declare-fun m!415835 () Bool)

(assert (=> d!95246 m!415835))

(assert (=> b!310156 m!415835))

(assert (=> b!310156 m!415835))

(declare-fun m!415837 () Bool)

(assert (=> b!310156 m!415837))

(assert (=> d!93986 d!95246))

(declare-fun d!95248 () Bool)

(declare-fun lt!132685 () Int)

(assert (=> d!95248 (>= lt!132685 0)))

(declare-fun e!192861 () Int)

(assert (=> d!95248 (= lt!132685 e!192861)))

(declare-fun c!58862 () Bool)

(assert (=> d!95248 (= c!58862 ((_ is Nil!4061) lt!131503))))

(assert (=> d!95248 (= (size!3246 lt!131503) lt!132685)))

(declare-fun b!310157 () Bool)

(assert (=> b!310157 (= e!192861 0)))

(declare-fun b!310158 () Bool)

(assert (=> b!310158 (= e!192861 (+ 1 (size!3246 (t!43303 lt!131503))))))

(assert (= (and d!95248 c!58862) b!310157))

(assert (= (and d!95248 (not c!58862)) b!310158))

(declare-fun m!415839 () Bool)

(assert (=> b!310158 m!415839))

(assert (=> b!308034 d!95248))

(assert (=> b!308034 d!94752))

(assert (=> b!308034 d!95234))

(declare-fun d!95250 () Bool)

(declare-fun lt!132686 () Bool)

(assert (=> d!95250 (= lt!132686 (select (content!611 rules!1920) (rule!1394 (_1!2561 (get!1388 lt!131530)))))))

(declare-fun e!192863 () Bool)

(assert (=> d!95250 (= lt!132686 e!192863)))

(declare-fun res!141005 () Bool)

(assert (=> d!95250 (=> (not res!141005) (not e!192863))))

(assert (=> d!95250 (= res!141005 ((_ is Cons!4062) rules!1920))))

(assert (=> d!95250 (= (contains!804 rules!1920 (rule!1394 (_1!2561 (get!1388 lt!131530)))) lt!132686)))

(declare-fun b!310159 () Bool)

(declare-fun e!192862 () Bool)

(assert (=> b!310159 (= e!192863 e!192862)))

(declare-fun res!141006 () Bool)

(assert (=> b!310159 (=> res!141006 e!192862)))

(assert (=> b!310159 (= res!141006 (= (h!9459 rules!1920) (rule!1394 (_1!2561 (get!1388 lt!131530)))))))

(declare-fun b!310160 () Bool)

(assert (=> b!310160 (= e!192862 (contains!804 (t!43304 rules!1920) (rule!1394 (_1!2561 (get!1388 lt!131530)))))))

(assert (= (and d!95250 res!141005) b!310159))

(assert (= (and b!310159 (not res!141006)) b!310160))

(assert (=> d!95250 m!415713))

(declare-fun m!415841 () Bool)

(assert (=> d!95250 m!415841))

(declare-fun m!415843 () Bool)

(assert (=> b!310160 m!415843))

(assert (=> b!308061 d!95250))

(assert (=> b!308061 d!94766))

(declare-fun d!95252 () Bool)

(declare-fun lt!132687 () BalanceConc!2776)

(assert (=> d!95252 (= (list!1713 lt!132687) (printList!341 thiss!17480 (list!1716 (singletonSeq!327 call!17914))))))

(assert (=> d!95252 (= lt!132687 (printTailRec!353 thiss!17480 (singletonSeq!327 call!17914) 0 (BalanceConc!2777 Empty!1384)))))

(assert (=> d!95252 (= (print!392 thiss!17480 (singletonSeq!327 call!17914)) lt!132687)))

(declare-fun bs!35994 () Bool)

(assert (= bs!35994 d!95252))

(declare-fun m!415845 () Bool)

(assert (=> bs!35994 m!415845))

(assert (=> bs!35994 m!411153))

(declare-fun m!415847 () Bool)

(assert (=> bs!35994 m!415847))

(assert (=> bs!35994 m!415847))

(declare-fun m!415849 () Bool)

(assert (=> bs!35994 m!415849))

(assert (=> bs!35994 m!411153))

(assert (=> bs!35994 m!411157))

(assert (=> b!308015 d!95252))

(declare-fun d!95254 () Bool)

(assert (=> d!95254 (= (list!1713 lt!131492) (list!1717 (c!58276 lt!131492)))))

(declare-fun bs!35995 () Bool)

(assert (= bs!35995 d!95254))

(declare-fun m!415851 () Bool)

(assert (=> bs!35995 m!415851))

(assert (=> b!308015 d!95254))

(declare-fun d!95256 () Bool)

(declare-fun lt!132693 () BalanceConc!2776)

(assert (=> d!95256 (= (list!1713 lt!132693) (printListTailRec!161 thiss!17480 (dropList!196 (singletonSeq!327 call!17914) 0) (list!1713 (BalanceConc!2777 Empty!1384))))))

(declare-fun e!192864 () BalanceConc!2776)

(assert (=> d!95256 (= lt!132693 e!192864)))

(declare-fun c!58863 () Bool)

(assert (=> d!95256 (= c!58863 (>= 0 (size!3247 (singletonSeq!327 call!17914))))))

(declare-fun e!192865 () Bool)

(assert (=> d!95256 e!192865))

(declare-fun res!141007 () Bool)

(assert (=> d!95256 (=> (not res!141007) (not e!192865))))

(assert (=> d!95256 (= res!141007 (>= 0 0))))

(assert (=> d!95256 (= (printTailRec!353 thiss!17480 (singletonSeq!327 call!17914) 0 (BalanceConc!2777 Empty!1384)) lt!132693)))

(declare-fun b!310161 () Bool)

(assert (=> b!310161 (= e!192865 (<= 0 (size!3247 (singletonSeq!327 call!17914))))))

(declare-fun b!310162 () Bool)

(assert (=> b!310162 (= e!192864 (BalanceConc!2777 Empty!1384))))

(declare-fun b!310163 () Bool)

(assert (=> b!310163 (= e!192864 (printTailRec!353 thiss!17480 (singletonSeq!327 call!17914) (+ 0 1) (++!1104 (BalanceConc!2777 Empty!1384) (charsOf!424 (apply!892 (singletonSeq!327 call!17914) 0)))))))

(declare-fun lt!132690 () List!4073)

(assert (=> b!310163 (= lt!132690 (list!1716 (singletonSeq!327 call!17914)))))

(declare-fun lt!132691 () Unit!5690)

(assert (=> b!310163 (= lt!132691 (lemmaDropApply!236 lt!132690 0))))

(assert (=> b!310163 (= (head!966 (drop!251 lt!132690 0)) (apply!894 lt!132690 0))))

(declare-fun lt!132694 () Unit!5690)

(assert (=> b!310163 (= lt!132694 lt!132691)))

(declare-fun lt!132689 () List!4073)

(assert (=> b!310163 (= lt!132689 (list!1716 (singletonSeq!327 call!17914)))))

(declare-fun lt!132688 () Unit!5690)

(assert (=> b!310163 (= lt!132688 (lemmaDropTail!228 lt!132689 0))))

(assert (=> b!310163 (= (tail!541 (drop!251 lt!132689 0)) (drop!251 lt!132689 (+ 0 1)))))

(declare-fun lt!132692 () Unit!5690)

(assert (=> b!310163 (= lt!132692 lt!132688)))

(assert (= (and d!95256 res!141007) b!310161))

(assert (= (and d!95256 c!58863) b!310162))

(assert (= (and d!95256 (not c!58863)) b!310163))

(assert (=> d!95256 m!410717))

(assert (=> d!95256 m!411153))

(declare-fun m!415853 () Bool)

(assert (=> d!95256 m!415853))

(assert (=> d!95256 m!411153))

(declare-fun m!415855 () Bool)

(assert (=> d!95256 m!415855))

(declare-fun m!415857 () Bool)

(assert (=> d!95256 m!415857))

(assert (=> d!95256 m!415853))

(assert (=> d!95256 m!410717))

(declare-fun m!415859 () Bool)

(assert (=> d!95256 m!415859))

(assert (=> b!310161 m!411153))

(assert (=> b!310161 m!415855))

(assert (=> b!310163 m!411153))

(declare-fun m!415861 () Bool)

(assert (=> b!310163 m!415861))

(declare-fun m!415863 () Bool)

(assert (=> b!310163 m!415863))

(declare-fun m!415865 () Bool)

(assert (=> b!310163 m!415865))

(declare-fun m!415867 () Bool)

(assert (=> b!310163 m!415867))

(assert (=> b!310163 m!411153))

(declare-fun m!415869 () Bool)

(assert (=> b!310163 m!415869))

(assert (=> b!310163 m!411153))

(assert (=> b!310163 m!415847))

(assert (=> b!310163 m!415869))

(declare-fun m!415871 () Bool)

(assert (=> b!310163 m!415871))

(declare-fun m!415873 () Bool)

(assert (=> b!310163 m!415873))

(assert (=> b!310163 m!415865))

(declare-fun m!415875 () Bool)

(assert (=> b!310163 m!415875))

(assert (=> b!310163 m!415871))

(assert (=> b!310163 m!415861))

(declare-fun m!415877 () Bool)

(assert (=> b!310163 m!415877))

(declare-fun m!415879 () Bool)

(assert (=> b!310163 m!415879))

(declare-fun m!415881 () Bool)

(assert (=> b!310163 m!415881))

(assert (=> b!310163 m!415873))

(declare-fun m!415883 () Bool)

(assert (=> b!310163 m!415883))

(assert (=> b!308015 d!95256))

(declare-fun d!95258 () Bool)

(assert (=> d!95258 (= (list!1713 call!17912) (list!1717 (c!58276 call!17912)))))

(declare-fun bs!35996 () Bool)

(assert (= bs!35996 d!95258))

(declare-fun m!415885 () Bool)

(assert (=> bs!35996 m!415885))

(assert (=> b!308015 d!95258))

(declare-fun b!310166 () Bool)

(declare-fun e!192866 () Unit!5690)

(declare-fun Unit!5744 () Unit!5690)

(assert (=> b!310166 (= e!192866 Unit!5744)))

(declare-fun lt!132699 () List!4071)

(assert (=> b!310166 (= lt!132699 (++!1102 (list!1713 call!17912) (list!1713 lt!131492)))))

(declare-fun lt!132703 () Unit!5690)

(declare-fun lt!132708 () Token!1306)

(assert (=> b!310166 (= lt!132703 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!68 thiss!17480 (rule!1394 lt!132708) rules!1920 lt!132699))))

(assert (=> b!310166 (isEmpty!2779 (maxPrefixOneRule!172 thiss!17480 (rule!1394 lt!132708) lt!132699))))

(declare-fun lt!132711 () Unit!5690)

(assert (=> b!310166 (= lt!132711 lt!132703)))

(declare-fun lt!132706 () List!4071)

(assert (=> b!310166 (= lt!132706 (list!1713 (charsOf!424 lt!132708)))))

(declare-fun lt!132709 () Unit!5690)

(assert (=> b!310166 (= lt!132709 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!68 thiss!17480 (rule!1394 lt!132708) lt!132706 (++!1102 (list!1713 call!17912) (list!1713 lt!131492))))))

(assert (=> b!310166 (not (matchR!323 (regex!781 (rule!1394 lt!132708)) lt!132706))))

(declare-fun lt!132707 () Unit!5690)

(assert (=> b!310166 (= lt!132707 lt!132709)))

(assert (=> b!310166 false))

(declare-fun b!310165 () Bool)

(declare-fun e!192867 () Bool)

(assert (=> b!310165 (= e!192867 (= (rule!1394 lt!132708) (get!1392 (getRuleFromTag!144 thiss!17480 rules!1920 (tag!999 (rule!1394 lt!132708))))))))

(declare-fun b!310164 () Bool)

(declare-fun res!141008 () Bool)

(assert (=> b!310164 (=> (not res!141008) (not e!192867))))

(assert (=> b!310164 (= res!141008 (matchR!323 (regex!781 (get!1392 (getRuleFromTag!144 thiss!17480 rules!1920 (tag!999 (rule!1394 lt!132708))))) (list!1713 (charsOf!424 lt!132708))))))

(declare-fun d!95260 () Bool)

(assert (=> d!95260 (isDefined!767 (maxPrefix!383 thiss!17480 rules!1920 (++!1102 (list!1713 call!17912) (list!1713 lt!131492))))))

(declare-fun lt!132700 () Unit!5690)

(assert (=> d!95260 (= lt!132700 e!192866)))

(declare-fun c!58864 () Bool)

(assert (=> d!95260 (= c!58864 (isEmpty!2779 (maxPrefix!383 thiss!17480 rules!1920 (++!1102 (list!1713 call!17912) (list!1713 lt!131492)))))))

(declare-fun lt!132710 () Unit!5690)

(declare-fun lt!132697 () Unit!5690)

(assert (=> d!95260 (= lt!132710 lt!132697)))

(assert (=> d!95260 e!192867))

(declare-fun res!141009 () Bool)

(assert (=> d!95260 (=> (not res!141009) (not e!192867))))

(assert (=> d!95260 (= res!141009 (isDefined!770 (getRuleFromTag!144 thiss!17480 rules!1920 (tag!999 (rule!1394 lt!132708)))))))

(assert (=> d!95260 (= lt!132697 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!144 thiss!17480 rules!1920 (list!1713 call!17912) lt!132708))))

(declare-fun lt!132701 () Unit!5690)

(declare-fun lt!132696 () Unit!5690)

(assert (=> d!95260 (= lt!132701 lt!132696)))

(declare-fun lt!132702 () List!4071)

(assert (=> d!95260 (isPrefix!441 lt!132702 (++!1102 (list!1713 call!17912) (list!1713 lt!131492)))))

(assert (=> d!95260 (= lt!132696 (lemmaPrefixStaysPrefixWhenAddingToSuffix!68 lt!132702 (list!1713 call!17912) (list!1713 lt!131492)))))

(assert (=> d!95260 (= lt!132702 (list!1713 (charsOf!424 lt!132708)))))

(declare-fun lt!132695 () Unit!5690)

(declare-fun lt!132698 () Unit!5690)

(assert (=> d!95260 (= lt!132695 lt!132698)))

(declare-fun lt!132705 () List!4071)

(declare-fun lt!132704 () List!4071)

(assert (=> d!95260 (isPrefix!441 lt!132705 (++!1102 lt!132705 lt!132704))))

(assert (=> d!95260 (= lt!132698 (lemmaConcatTwoListThenFirstIsPrefix!332 lt!132705 lt!132704))))

(assert (=> d!95260 (= lt!132704 (_2!2561 (get!1388 (maxPrefix!383 thiss!17480 rules!1920 (list!1713 call!17912)))))))

(assert (=> d!95260 (= lt!132705 (list!1713 (charsOf!424 lt!132708)))))

(assert (=> d!95260 (= lt!132708 (head!966 (list!1716 (_1!2562 (lex!459 thiss!17480 rules!1920 (seqFromList!928 (list!1713 call!17912)))))))))

(assert (=> d!95260 (not (isEmpty!2776 rules!1920))))

(assert (=> d!95260 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!144 thiss!17480 rules!1920 (list!1713 call!17912) (list!1713 lt!131492)) lt!132700)))

(declare-fun b!310167 () Bool)

(declare-fun Unit!5745 () Unit!5690)

(assert (=> b!310167 (= e!192866 Unit!5745)))

(assert (= (and d!95260 res!141009) b!310164))

(assert (= (and b!310164 res!141008) b!310165))

(assert (= (and d!95260 c!58864) b!310166))

(assert (= (and d!95260 (not c!58864)) b!310167))

(assert (=> b!310166 m!411163))

(assert (=> b!310166 m!411165))

(declare-fun m!415887 () Bool)

(assert (=> b!310166 m!415887))

(declare-fun m!415889 () Bool)

(assert (=> b!310166 m!415889))

(declare-fun m!415891 () Bool)

(assert (=> b!310166 m!415891))

(assert (=> b!310166 m!415889))

(declare-fun m!415893 () Bool)

(assert (=> b!310166 m!415893))

(assert (=> b!310166 m!415887))

(declare-fun m!415895 () Bool)

(assert (=> b!310166 m!415895))

(declare-fun m!415897 () Bool)

(assert (=> b!310166 m!415897))

(declare-fun m!415899 () Bool)

(assert (=> b!310166 m!415899))

(declare-fun m!415901 () Bool)

(assert (=> b!310166 m!415901))

(assert (=> b!310166 m!415899))

(declare-fun m!415903 () Bool)

(assert (=> b!310165 m!415903))

(assert (=> b!310165 m!415903))

(declare-fun m!415905 () Bool)

(assert (=> b!310165 m!415905))

(assert (=> b!310164 m!415893))

(declare-fun m!415907 () Bool)

(assert (=> b!310164 m!415907))

(assert (=> b!310164 m!415889))

(assert (=> b!310164 m!415889))

(assert (=> b!310164 m!415893))

(assert (=> b!310164 m!415903))

(assert (=> b!310164 m!415903))

(assert (=> b!310164 m!415905))

(declare-fun m!415909 () Bool)

(assert (=> d!95260 m!415909))

(declare-fun m!415911 () Bool)

(assert (=> d!95260 m!415911))

(assert (=> d!95260 m!411163))

(assert (=> d!95260 m!411165))

(assert (=> d!95260 m!415887))

(assert (=> d!95260 m!411163))

(declare-fun m!415913 () Bool)

(assert (=> d!95260 m!415913))

(declare-fun m!415915 () Bool)

(assert (=> d!95260 m!415915))

(declare-fun m!415917 () Bool)

(assert (=> d!95260 m!415917))

(declare-fun m!415919 () Bool)

(assert (=> d!95260 m!415919))

(declare-fun m!415921 () Bool)

(assert (=> d!95260 m!415921))

(assert (=> d!95260 m!415919))

(declare-fun m!415923 () Bool)

(assert (=> d!95260 m!415923))

(assert (=> d!95260 m!415889))

(assert (=> d!95260 m!410327))

(assert (=> d!95260 m!415909))

(declare-fun m!415925 () Bool)

(assert (=> d!95260 m!415925))

(assert (=> d!95260 m!411163))

(assert (=> d!95260 m!411165))

(declare-fun m!415927 () Bool)

(assert (=> d!95260 m!415927))

(assert (=> d!95260 m!415889))

(assert (=> d!95260 m!415893))

(assert (=> d!95260 m!415903))

(declare-fun m!415929 () Bool)

(assert (=> d!95260 m!415929))

(assert (=> d!95260 m!415929))

(declare-fun m!415931 () Bool)

(assert (=> d!95260 m!415931))

(assert (=> d!95260 m!415887))

(assert (=> d!95260 m!415919))

(assert (=> d!95260 m!411163))

(assert (=> d!95260 m!415915))

(assert (=> d!95260 m!415913))

(declare-fun m!415933 () Bool)

(assert (=> d!95260 m!415933))

(assert (=> d!95260 m!415887))

(declare-fun m!415935 () Bool)

(assert (=> d!95260 m!415935))

(assert (=> d!95260 m!411163))

(declare-fun m!415937 () Bool)

(assert (=> d!95260 m!415937))

(assert (=> d!95260 m!415903))

(declare-fun m!415939 () Bool)

(assert (=> d!95260 m!415939))

(assert (=> b!308015 d!95260))

(declare-fun d!95262 () Bool)

(declare-fun e!192868 () Bool)

(assert (=> d!95262 e!192868))

(declare-fun res!141010 () Bool)

(assert (=> d!95262 (=> (not res!141010) (not e!192868))))

(declare-fun lt!132712 () BalanceConc!2778)

(assert (=> d!95262 (= res!141010 (= (list!1716 lt!132712) (Cons!4063 call!17914 Nil!4063)))))

(assert (=> d!95262 (= lt!132712 (singleton!146 call!17914))))

(assert (=> d!95262 (= (singletonSeq!327 call!17914) lt!132712)))

(declare-fun b!310168 () Bool)

(assert (=> b!310168 (= e!192868 (isBalanced!395 (c!58278 lt!132712)))))

(assert (= (and d!95262 res!141010) b!310168))

(declare-fun m!415941 () Bool)

(assert (=> d!95262 m!415941))

(declare-fun m!415943 () Bool)

(assert (=> d!95262 m!415943))

(declare-fun m!415945 () Bool)

(assert (=> b!310168 m!415945))

(assert (=> b!308015 d!95262))

(declare-fun b!310170 () Bool)

(declare-fun e!192869 () List!4071)

(declare-fun e!192870 () List!4071)

(assert (=> b!310170 (= e!192869 e!192870)))

(declare-fun c!58866 () Bool)

(assert (=> b!310170 (= c!58866 ((_ is Leaf!2114) (c!58276 (printWithSeparatorTokenWhenNeededRec!340 thiss!17480 rules!1920 (seqFromList!927 (t!43305 tokens!465)) separatorToken!170 0))))))

(declare-fun b!310171 () Bool)

(assert (=> b!310171 (= e!192870 (list!1721 (xs!3987 (c!58276 (printWithSeparatorTokenWhenNeededRec!340 thiss!17480 rules!1920 (seqFromList!927 (t!43305 tokens!465)) separatorToken!170 0)))))))

(declare-fun b!310172 () Bool)

(assert (=> b!310172 (= e!192870 (++!1102 (list!1717 (left!3377 (c!58276 (printWithSeparatorTokenWhenNeededRec!340 thiss!17480 rules!1920 (seqFromList!927 (t!43305 tokens!465)) separatorToken!170 0)))) (list!1717 (right!3707 (c!58276 (printWithSeparatorTokenWhenNeededRec!340 thiss!17480 rules!1920 (seqFromList!927 (t!43305 tokens!465)) separatorToken!170 0))))))))

(declare-fun c!58865 () Bool)

(declare-fun d!95264 () Bool)

(assert (=> d!95264 (= c!58865 ((_ is Empty!1384) (c!58276 (printWithSeparatorTokenWhenNeededRec!340 thiss!17480 rules!1920 (seqFromList!927 (t!43305 tokens!465)) separatorToken!170 0))))))

(assert (=> d!95264 (= (list!1717 (c!58276 (printWithSeparatorTokenWhenNeededRec!340 thiss!17480 rules!1920 (seqFromList!927 (t!43305 tokens!465)) separatorToken!170 0))) e!192869)))

(declare-fun b!310169 () Bool)

(assert (=> b!310169 (= e!192869 Nil!4061)))

(assert (= (and d!95264 c!58865) b!310169))

(assert (= (and d!95264 (not c!58865)) b!310170))

(assert (= (and b!310170 c!58866) b!310171))

(assert (= (and b!310170 (not c!58866)) b!310172))

(declare-fun m!415947 () Bool)

(assert (=> b!310171 m!415947))

(declare-fun m!415949 () Bool)

(assert (=> b!310172 m!415949))

(declare-fun m!415951 () Bool)

(assert (=> b!310172 m!415951))

(assert (=> b!310172 m!415949))

(assert (=> b!310172 m!415951))

(declare-fun m!415953 () Bool)

(assert (=> b!310172 m!415953))

(assert (=> d!94068 d!95264))

(declare-fun d!95266 () Bool)

(declare-fun lt!132713 () Int)

(assert (=> d!95266 (>= lt!132713 0)))

(declare-fun e!192871 () Int)

(assert (=> d!95266 (= lt!132713 e!192871)))

(declare-fun c!58867 () Bool)

(assert (=> d!95266 (= c!58867 ((_ is Nil!4061) (originalCharacters!824 separatorToken!170)))))

(assert (=> d!95266 (= (size!3246 (originalCharacters!824 separatorToken!170)) lt!132713)))

(declare-fun b!310173 () Bool)

(assert (=> b!310173 (= e!192871 0)))

(declare-fun b!310174 () Bool)

(assert (=> b!310174 (= e!192871 (+ 1 (size!3246 (t!43303 (originalCharacters!824 separatorToken!170)))))))

(assert (= (and d!95266 c!58867) b!310173))

(assert (= (and d!95266 (not c!58867)) b!310174))

(declare-fun m!415955 () Bool)

(assert (=> b!310174 m!415955))

(assert (=> b!307642 d!95266))

(declare-fun d!95268 () Bool)

(declare-fun res!141011 () Bool)

(declare-fun e!192872 () Bool)

(assert (=> d!95268 (=> res!141011 e!192872)))

(assert (=> d!95268 (= res!141011 (not ((_ is Cons!4062) (t!43304 rules!1920))))))

(assert (=> d!95268 (= (sepAndNonSepRulesDisjointChars!370 rules!1920 (t!43304 rules!1920)) e!192872)))

(declare-fun b!310175 () Bool)

(declare-fun e!192873 () Bool)

(assert (=> b!310175 (= e!192872 e!192873)))

(declare-fun res!141012 () Bool)

(assert (=> b!310175 (=> (not res!141012) (not e!192873))))

(assert (=> b!310175 (= res!141012 (ruleDisjointCharsFromAllFromOtherType!151 (h!9459 (t!43304 rules!1920)) rules!1920))))

(declare-fun b!310176 () Bool)

(assert (=> b!310176 (= e!192873 (sepAndNonSepRulesDisjointChars!370 rules!1920 (t!43304 (t!43304 rules!1920))))))

(assert (= (and d!95268 (not res!141011)) b!310175))

(assert (= (and b!310175 res!141012) b!310176))

(declare-fun m!415957 () Bool)

(assert (=> b!310175 m!415957))

(declare-fun m!415959 () Bool)

(assert (=> b!310176 m!415959))

(assert (=> b!308206 d!95268))

(declare-fun d!95270 () Bool)

(assert (=> d!95270 (= (list!1713 lt!131553) (list!1717 (c!58276 lt!131553)))))

(declare-fun bs!35997 () Bool)

(assert (= bs!35997 d!95270))

(declare-fun m!415961 () Bool)

(assert (=> bs!35997 m!415961))

(assert (=> d!94136 d!95270))

(declare-fun bs!35998 () Bool)

(declare-fun b!310177 () Bool)

(assert (= bs!35998 (and b!310177 b!309982)))

(declare-fun lambda!10588 () Int)

(assert (=> bs!35998 (= lambda!10588 lambda!10579)))

(declare-fun bs!35999 () Bool)

(assert (= bs!35999 (and b!310177 d!94270)))

(assert (=> bs!35999 (= lambda!10588 lambda!10532)))

(declare-fun bs!36000 () Bool)

(assert (= bs!36000 (and b!310177 d!94504)))

(assert (=> bs!36000 (not (= lambda!10588 lambda!10542))))

(declare-fun bs!36001 () Bool)

(assert (= bs!36001 (and b!310177 b!310035)))

(assert (=> bs!36001 (= lambda!10588 lambda!10585)))

(declare-fun bs!36002 () Bool)

(assert (= bs!36002 (and b!310177 b!308847)))

(assert (=> bs!36002 (= lambda!10588 lambda!10543)))

(declare-fun bs!36003 () Bool)

(assert (= bs!36003 (and b!310177 b!307890)))

(assert (=> bs!36003 (= lambda!10588 lambda!10514)))

(declare-fun bs!36004 () Bool)

(assert (= bs!36004 (and b!310177 d!94136)))

(assert (=> bs!36004 (not (= lambda!10588 lambda!10524))))

(declare-fun bs!36005 () Bool)

(assert (= bs!36005 (and b!310177 b!308157)))

(assert (=> bs!36005 (= lambda!10588 lambda!10526)))

(declare-fun bs!36006 () Bool)

(assert (= bs!36006 (and b!310177 b!307468)))

(assert (=> bs!36006 (= lambda!10588 lambda!10492)))

(declare-fun bs!36007 () Bool)

(assert (= bs!36007 (and b!310177 d!95142)))

(assert (=> bs!36007 (not (= lambda!10588 lambda!10578))))

(declare-fun bs!36008 () Bool)

(assert (= bs!36008 (and b!310177 d!93922)))

(assert (=> bs!36008 (= lambda!10588 lambda!10508)))

(declare-fun bs!36009 () Bool)

(assert (= bs!36009 (and b!310177 b!308119)))

(assert (=> bs!36009 (= lambda!10588 lambda!10525)))

(declare-fun bs!36010 () Bool)

(assert (= bs!36010 (and b!310177 b!308013)))

(assert (=> bs!36010 (= lambda!10588 lambda!10522)))

(declare-fun bs!36011 () Bool)

(assert (= bs!36011 (and b!310177 d!94010)))

(assert (=> bs!36011 (not (= lambda!10588 lambda!10521))))

(declare-fun bs!36012 () Bool)

(assert (= bs!36012 (and b!310177 b!307466)))

(assert (=> bs!36012 (not (= lambda!10588 lambda!10491))))

(declare-fun bs!36013 () Bool)

(assert (= bs!36013 (and b!310177 b!310066)))

(assert (=> bs!36013 (= lambda!10588 lambda!10586)))

(declare-fun b!310189 () Bool)

(declare-fun e!192881 () Bool)

(assert (=> b!310189 (= e!192881 true)))

(declare-fun b!310188 () Bool)

(declare-fun e!192880 () Bool)

(assert (=> b!310188 (= e!192880 e!192881)))

(declare-fun b!310187 () Bool)

(declare-fun e!192879 () Bool)

(assert (=> b!310187 (= e!192879 e!192880)))

(assert (=> b!310177 e!192879))

(assert (= b!310188 b!310189))

(assert (= b!310187 b!310188))

(assert (= (and b!310177 ((_ is Cons!4062) rules!1920)) b!310187))

(assert (=> b!310189 (< (dynLambda!2219 order!3297 (toValue!1540 (transformation!781 (h!9459 rules!1920)))) (dynLambda!2220 order!3299 lambda!10588))))

(assert (=> b!310189 (< (dynLambda!2221 order!3301 (toChars!1399 (transformation!781 (h!9459 rules!1920)))) (dynLambda!2220 order!3299 lambda!10588))))

(assert (=> b!310177 true))

(declare-fun e!192876 () List!4071)

(declare-fun e!192878 () List!4071)

(assert (=> b!310177 (= e!192876 e!192878)))

(declare-fun lt!132716 () Unit!5690)

(assert (=> b!310177 (= lt!132716 (forallContained!334 (dropList!196 lt!131159 0) lambda!10588 (h!9460 (dropList!196 lt!131159 0))))))

(declare-fun lt!132715 () List!4071)

(assert (=> b!310177 (= lt!132715 (printWithSeparatorTokenWhenNeededList!348 thiss!17480 rules!1920 (t!43305 (dropList!196 lt!131159 0)) separatorToken!170))))

(declare-fun lt!132718 () Option!928)

(assert (=> b!310177 (= lt!132718 (maxPrefix!383 thiss!17480 rules!1920 (++!1102 (list!1713 (charsOf!424 (h!9460 (dropList!196 lt!131159 0)))) lt!132715)))))

(declare-fun c!58871 () Bool)

(assert (=> b!310177 (= c!58871 (and ((_ is Some!927) lt!132718) (= (_1!2561 (v!14932 lt!132718)) (h!9460 (dropList!196 lt!131159 0)))))))

(declare-fun bm!18070 () Bool)

(declare-fun call!18079 () BalanceConc!2776)

(assert (=> bm!18070 (= call!18079 (charsOf!424 (h!9460 (dropList!196 lt!131159 0))))))

(declare-fun bm!18071 () Bool)

(declare-fun c!58868 () Bool)

(assert (=> bm!18071 (= c!58868 c!58871)))

(declare-fun call!18078 () List!4071)

(declare-fun call!18077 () List!4071)

(declare-fun e!192874 () List!4071)

(assert (=> bm!18071 (= call!18077 (++!1102 e!192874 (ite c!58871 lt!132715 call!18078)))))

(declare-fun bm!18072 () Bool)

(declare-fun call!18076 () BalanceConc!2776)

(assert (=> bm!18072 (= call!18076 call!18079)))

(declare-fun e!192875 () BalanceConc!2776)

(declare-fun bm!18073 () Bool)

(declare-fun call!18075 () List!4071)

(assert (=> bm!18073 (= call!18075 (list!1713 (ite c!58871 call!18079 e!192875)))))

(declare-fun b!310178 () Bool)

(assert (=> b!310178 (= e!192874 (list!1713 call!18076))))

(declare-fun b!310179 () Bool)

(declare-fun e!192877 () List!4071)

(assert (=> b!310179 (= e!192877 (++!1102 call!18077 lt!132715))))

(declare-fun bm!18074 () Bool)

(assert (=> bm!18074 (= call!18078 call!18075)))

(declare-fun c!58872 () Bool)

(declare-fun c!58869 () Bool)

(assert (=> bm!18074 (= c!58872 c!58869)))

(declare-fun b!310180 () Bool)

(assert (=> b!310180 (= e!192877 Nil!4061)))

(assert (=> b!310180 (= (print!392 thiss!17480 (singletonSeq!327 (h!9460 (dropList!196 lt!131159 0)))) (printTailRec!353 thiss!17480 (singletonSeq!327 (h!9460 (dropList!196 lt!131159 0))) 0 (BalanceConc!2777 Empty!1384)))))

(declare-fun lt!132719 () Unit!5690)

(declare-fun Unit!5746 () Unit!5690)

(assert (=> b!310180 (= lt!132719 Unit!5746)))

(declare-fun lt!132717 () Unit!5690)

(assert (=> b!310180 (= lt!132717 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!144 thiss!17480 rules!1920 call!18078 lt!132715))))

(assert (=> b!310180 false))

(declare-fun lt!132714 () Unit!5690)

(declare-fun Unit!5747 () Unit!5690)

(assert (=> b!310180 (= lt!132714 Unit!5747)))

(declare-fun b!310181 () Bool)

(assert (=> b!310181 (= e!192875 call!18076)))

(declare-fun b!310182 () Bool)

(assert (=> b!310182 (= e!192878 call!18077)))

(declare-fun b!310183 () Bool)

(assert (=> b!310183 (= c!58869 (and ((_ is Some!927) lt!132718) (not (= (_1!2561 (v!14932 lt!132718)) (h!9460 (dropList!196 lt!131159 0))))))))

(assert (=> b!310183 (= e!192878 e!192877)))

(declare-fun b!310184 () Bool)

(assert (=> b!310184 (= e!192875 (charsOf!424 separatorToken!170))))

(declare-fun b!310185 () Bool)

(assert (=> b!310185 (= e!192876 Nil!4061)))

(declare-fun d!95272 () Bool)

(declare-fun c!58870 () Bool)

(assert (=> d!95272 (= c!58870 ((_ is Cons!4063) (dropList!196 lt!131159 0)))))

(assert (=> d!95272 (= (printWithSeparatorTokenWhenNeededList!348 thiss!17480 rules!1920 (dropList!196 lt!131159 0) separatorToken!170) e!192876)))

(declare-fun b!310186 () Bool)

(assert (=> b!310186 (= e!192874 call!18075)))

(assert (= (and d!95272 c!58870) b!310177))

(assert (= (and d!95272 (not c!58870)) b!310185))

(assert (= (and b!310177 c!58871) b!310182))

(assert (= (and b!310177 (not c!58871)) b!310183))

(assert (= (and b!310183 c!58869) b!310179))

(assert (= (and b!310183 (not c!58869)) b!310180))

(assert (= (or b!310179 b!310180) bm!18072))

(assert (= (or b!310179 b!310180) bm!18074))

(assert (= (and bm!18074 c!58872) b!310184))

(assert (= (and bm!18074 (not c!58872)) b!310181))

(assert (= (or b!310182 bm!18072) bm!18070))

(assert (= (or b!310182 bm!18074) bm!18073))

(assert (= (or b!310182 b!310179) bm!18071))

(assert (= (and bm!18071 c!58868) b!310186))

(assert (= (and bm!18071 (not c!58868)) b!310178))

(declare-fun m!415963 () Bool)

(assert (=> bm!18070 m!415963))

(declare-fun m!415965 () Bool)

(assert (=> b!310178 m!415965))

(assert (=> b!310177 m!415963))

(assert (=> b!310177 m!415963))

(declare-fun m!415967 () Bool)

(assert (=> b!310177 m!415967))

(assert (=> b!310177 m!411477))

(declare-fun m!415969 () Bool)

(assert (=> b!310177 m!415969))

(assert (=> b!310177 m!415967))

(declare-fun m!415971 () Bool)

(assert (=> b!310177 m!415971))

(declare-fun m!415973 () Bool)

(assert (=> b!310177 m!415973))

(assert (=> b!310177 m!415971))

(declare-fun m!415975 () Bool)

(assert (=> b!310177 m!415975))

(declare-fun m!415977 () Bool)

(assert (=> b!310180 m!415977))

(assert (=> b!310180 m!415977))

(declare-fun m!415979 () Bool)

(assert (=> b!310180 m!415979))

(assert (=> b!310180 m!415977))

(declare-fun m!415981 () Bool)

(assert (=> b!310180 m!415981))

(declare-fun m!415983 () Bool)

(assert (=> b!310180 m!415983))

(declare-fun m!415985 () Bool)

(assert (=> bm!18071 m!415985))

(declare-fun m!415987 () Bool)

(assert (=> b!310179 m!415987))

(declare-fun m!415989 () Bool)

(assert (=> bm!18073 m!415989))

(assert (=> b!310184 m!410285))

(assert (=> d!94136 d!95272))

(declare-fun d!95274 () Bool)

(assert (=> d!95274 (= (dropList!196 lt!131159 0) (drop!251 (list!1719 (c!58278 lt!131159)) 0))))

(declare-fun bs!36014 () Bool)

(assert (= bs!36014 d!95274))

(assert (=> bs!36014 m!411895))

(assert (=> bs!36014 m!411895))

(declare-fun m!415991 () Bool)

(assert (=> bs!36014 m!415991))

(assert (=> d!94136 d!95274))

(assert (=> d!94136 d!94588))

(assert (=> d!94136 d!94276))

(declare-fun d!95276 () Bool)

(assert (=> d!95276 (forall!1072 (dropList!196 lt!131159 0) lambda!10524)))

(declare-fun lt!132720 () Unit!5690)

(assert (=> d!95276 (= lt!132720 (choose!2708 (list!1716 lt!131159) (dropList!196 lt!131159 0) lambda!10524))))

(assert (=> d!95276 (forall!1072 (list!1716 lt!131159) lambda!10524)))

(assert (=> d!95276 (= (lemmaContentSubsetPreservesForall!140 (list!1716 lt!131159) (dropList!196 lt!131159 0) lambda!10524) lt!132720)))

(declare-fun bs!36015 () Bool)

(assert (= bs!36015 d!95276))

(assert (=> bs!36015 m!411477))

(declare-fun m!415993 () Bool)

(assert (=> bs!36015 m!415993))

(assert (=> bs!36015 m!410539))

(assert (=> bs!36015 m!411477))

(declare-fun m!415995 () Bool)

(assert (=> bs!36015 m!415995))

(assert (=> bs!36015 m!410539))

(declare-fun m!415997 () Bool)

(assert (=> bs!36015 m!415997))

(assert (=> d!94136 d!95276))

(declare-fun b!310190 () Bool)

(declare-fun res!141018 () Bool)

(declare-fun e!192882 () Bool)

(assert (=> b!310190 (=> (not res!141018) (not e!192882))))

(declare-fun lt!132722 () Option!928)

(assert (=> b!310190 (= res!141018 (matchR!323 (regex!781 (rule!1394 (_1!2561 (get!1388 lt!132722)))) (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!132722))))))))

(declare-fun b!310191 () Bool)

(assert (=> b!310191 (= e!192882 (contains!804 (t!43304 rules!1920) (rule!1394 (_1!2561 (get!1388 lt!132722)))))))

(declare-fun b!310192 () Bool)

(declare-fun res!141016 () Bool)

(assert (=> b!310192 (=> (not res!141016) (not e!192882))))

(assert (=> b!310192 (= res!141016 (= (++!1102 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!132722)))) (_2!2561 (get!1388 lt!132722))) lt!131156))))

(declare-fun d!95278 () Bool)

(declare-fun e!192884 () Bool)

(assert (=> d!95278 e!192884))

(declare-fun res!141017 () Bool)

(assert (=> d!95278 (=> res!141017 e!192884)))

(assert (=> d!95278 (= res!141017 (isEmpty!2779 lt!132722))))

(declare-fun e!192883 () Option!928)

(assert (=> d!95278 (= lt!132722 e!192883)))

(declare-fun c!58873 () Bool)

(assert (=> d!95278 (= c!58873 (and ((_ is Cons!4062) (t!43304 rules!1920)) ((_ is Nil!4062) (t!43304 (t!43304 rules!1920)))))))

(declare-fun lt!132725 () Unit!5690)

(declare-fun lt!132724 () Unit!5690)

(assert (=> d!95278 (= lt!132725 lt!132724)))

(assert (=> d!95278 (isPrefix!441 lt!131156 lt!131156)))

(assert (=> d!95278 (= lt!132724 (lemmaIsPrefixRefl!238 lt!131156 lt!131156))))

(assert (=> d!95278 (rulesValidInductive!233 thiss!17480 (t!43304 rules!1920))))

(assert (=> d!95278 (= (maxPrefix!383 thiss!17480 (t!43304 rules!1920) lt!131156) lt!132722)))

(declare-fun call!18080 () Option!928)

(declare-fun bm!18075 () Bool)

(assert (=> bm!18075 (= call!18080 (maxPrefixOneRule!172 thiss!17480 (h!9459 (t!43304 rules!1920)) lt!131156))))

(declare-fun b!310193 () Bool)

(declare-fun res!141013 () Bool)

(assert (=> b!310193 (=> (not res!141013) (not e!192882))))

(assert (=> b!310193 (= res!141013 (< (size!3246 (_2!2561 (get!1388 lt!132722))) (size!3246 lt!131156)))))

(declare-fun b!310194 () Bool)

(assert (=> b!310194 (= e!192883 call!18080)))

(declare-fun b!310195 () Bool)

(assert (=> b!310195 (= e!192884 e!192882)))

(declare-fun res!141015 () Bool)

(assert (=> b!310195 (=> (not res!141015) (not e!192882))))

(assert (=> b!310195 (= res!141015 (isDefined!767 lt!132722))))

(declare-fun b!310196 () Bool)

(declare-fun res!141014 () Bool)

(assert (=> b!310196 (=> (not res!141014) (not e!192882))))

(assert (=> b!310196 (= res!141014 (= (value!26574 (_1!2561 (get!1388 lt!132722))) (apply!891 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!132722)))) (seqFromList!928 (originalCharacters!824 (_1!2561 (get!1388 lt!132722)))))))))

(declare-fun b!310197 () Bool)

(declare-fun res!141019 () Bool)

(assert (=> b!310197 (=> (not res!141019) (not e!192882))))

(assert (=> b!310197 (= res!141019 (= (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!132722)))) (originalCharacters!824 (_1!2561 (get!1388 lt!132722)))))))

(declare-fun b!310198 () Bool)

(declare-fun lt!132723 () Option!928)

(declare-fun lt!132721 () Option!928)

(assert (=> b!310198 (= e!192883 (ite (and ((_ is None!927) lt!132723) ((_ is None!927) lt!132721)) None!927 (ite ((_ is None!927) lt!132721) lt!132723 (ite ((_ is None!927) lt!132723) lt!132721 (ite (>= (size!3243 (_1!2561 (v!14932 lt!132723))) (size!3243 (_1!2561 (v!14932 lt!132721)))) lt!132723 lt!132721)))))))

(assert (=> b!310198 (= lt!132723 call!18080)))

(assert (=> b!310198 (= lt!132721 (maxPrefix!383 thiss!17480 (t!43304 (t!43304 rules!1920)) lt!131156))))

(assert (= (and d!95278 c!58873) b!310194))

(assert (= (and d!95278 (not c!58873)) b!310198))

(assert (= (or b!310194 b!310198) bm!18075))

(assert (= (and d!95278 (not res!141017)) b!310195))

(assert (= (and b!310195 res!141015) b!310197))

(assert (= (and b!310197 res!141019) b!310193))

(assert (= (and b!310193 res!141013) b!310192))

(assert (= (and b!310192 res!141016) b!310196))

(assert (= (and b!310196 res!141014) b!310190))

(assert (= (and b!310190 res!141018) b!310191))

(declare-fun m!415999 () Bool)

(assert (=> b!310198 m!415999))

(declare-fun m!416001 () Bool)

(assert (=> b!310192 m!416001))

(declare-fun m!416003 () Bool)

(assert (=> b!310192 m!416003))

(assert (=> b!310192 m!416003))

(declare-fun m!416005 () Bool)

(assert (=> b!310192 m!416005))

(assert (=> b!310192 m!416005))

(declare-fun m!416007 () Bool)

(assert (=> b!310192 m!416007))

(assert (=> b!310197 m!416001))

(assert (=> b!310197 m!416003))

(assert (=> b!310197 m!416003))

(assert (=> b!310197 m!416005))

(assert (=> b!310196 m!416001))

(declare-fun m!416009 () Bool)

(assert (=> b!310196 m!416009))

(assert (=> b!310196 m!416009))

(declare-fun m!416011 () Bool)

(assert (=> b!310196 m!416011))

(assert (=> b!310190 m!416001))

(assert (=> b!310190 m!416003))

(assert (=> b!310190 m!416003))

(assert (=> b!310190 m!416005))

(assert (=> b!310190 m!416005))

(declare-fun m!416013 () Bool)

(assert (=> b!310190 m!416013))

(declare-fun m!416015 () Bool)

(assert (=> bm!18075 m!416015))

(assert (=> b!310191 m!416001))

(declare-fun m!416017 () Bool)

(assert (=> b!310191 m!416017))

(declare-fun m!416019 () Bool)

(assert (=> d!95278 m!416019))

(assert (=> d!95278 m!410453))

(assert (=> d!95278 m!410455))

(assert (=> d!95278 m!415145))

(assert (=> b!310193 m!416001))

(declare-fun m!416021 () Bool)

(assert (=> b!310193 m!416021))

(assert (=> b!310193 m!410459))

(declare-fun m!416023 () Bool)

(assert (=> b!310195 m!416023))

(assert (=> b!307563 d!95278))

(assert (=> b!307717 d!94392))

(assert (=> b!307717 d!94560))

(assert (=> b!307717 d!94532))

(assert (=> b!307717 d!94408))

(assert (=> b!308082 d!94842))

(declare-fun d!95280 () Bool)

(assert (=> d!95280 (= (head!968 lt!131162) (h!9458 lt!131162))))

(assert (=> b!308082 d!95280))

(assert (=> b!308164 d!94058))

(declare-fun d!95282 () Bool)

(declare-fun res!141020 () Bool)

(declare-fun e!192885 () Bool)

(assert (=> d!95282 (=> res!141020 e!192885)))

(assert (=> d!95282 (= res!141020 ((_ is Nil!4063) (list!1716 lt!131159)))))

(assert (=> d!95282 (= (forall!1072 (list!1716 lt!131159) lambda!10508) e!192885)))

(declare-fun b!310199 () Bool)

(declare-fun e!192886 () Bool)

(assert (=> b!310199 (= e!192885 e!192886)))

(declare-fun res!141021 () Bool)

(assert (=> b!310199 (=> (not res!141021) (not e!192886))))

(assert (=> b!310199 (= res!141021 (dynLambda!2225 lambda!10508 (h!9460 (list!1716 lt!131159))))))

(declare-fun b!310200 () Bool)

(assert (=> b!310200 (= e!192886 (forall!1072 (t!43305 (list!1716 lt!131159)) lambda!10508))))

(assert (= (and d!95282 (not res!141020)) b!310199))

(assert (= (and b!310199 res!141021) b!310200))

(declare-fun b_lambda!10823 () Bool)

(assert (=> (not b_lambda!10823) (not b!310199)))

(declare-fun m!416025 () Bool)

(assert (=> b!310199 m!416025))

(declare-fun m!416027 () Bool)

(assert (=> b!310200 m!416027))

(assert (=> d!93922 d!95282))

(assert (=> d!93922 d!94276))

(declare-fun d!95284 () Bool)

(declare-fun lt!132728 () Bool)

(assert (=> d!95284 (= lt!132728 (forall!1072 (list!1716 lt!131159) lambda!10508))))

(declare-fun forall!1078 (Conc!1385 Int) Bool)

(assert (=> d!95284 (= lt!132728 (forall!1078 (c!58278 lt!131159) lambda!10508))))

(assert (=> d!95284 (= (forall!1074 lt!131159 lambda!10508) lt!132728)))

(declare-fun bs!36016 () Bool)

(assert (= bs!36016 d!95284))

(assert (=> bs!36016 m!410539))

(assert (=> bs!36016 m!410539))

(assert (=> bs!36016 m!410541))

(declare-fun m!416029 () Bool)

(assert (=> bs!36016 m!416029))

(assert (=> d!93922 d!95284))

(assert (=> d!93922 d!93982))

(declare-fun d!95286 () Bool)

(declare-fun res!141022 () Bool)

(declare-fun e!192887 () Bool)

(assert (=> d!95286 (=> (not res!141022) (not e!192887))))

(assert (=> d!95286 (= res!141022 (not (isEmpty!2775 (originalCharacters!824 (h!9460 (t!43305 tokens!465))))))))

(assert (=> d!95286 (= (inv!5016 (h!9460 (t!43305 tokens!465))) e!192887)))

(declare-fun b!310201 () Bool)

(declare-fun res!141023 () Bool)

(assert (=> b!310201 (=> (not res!141023) (not e!192887))))

(assert (=> b!310201 (= res!141023 (= (originalCharacters!824 (h!9460 (t!43305 tokens!465))) (list!1713 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))) (value!26574 (h!9460 (t!43305 tokens!465)))))))))

(declare-fun b!310202 () Bool)

(assert (=> b!310202 (= e!192887 (= (size!3243 (h!9460 (t!43305 tokens!465))) (size!3246 (originalCharacters!824 (h!9460 (t!43305 tokens!465))))))))

(assert (= (and d!95286 res!141022) b!310201))

(assert (= (and b!310201 res!141023) b!310202))

(declare-fun b_lambda!10825 () Bool)

(assert (=> (not b_lambda!10825) (not b!310201)))

(assert (=> b!310201 t!43720))

(declare-fun b_and!26339 () Bool)

(assert (= b_and!26335 (and (=> t!43720 result!23730) b_and!26339)))

(assert (=> b!310201 t!43718))

(declare-fun b_and!26341 () Bool)

(assert (= b_and!26333 (and (=> t!43718 result!23728) b_and!26341)))

(assert (=> b!310201 t!43712))

(declare-fun b_and!26343 () Bool)

(assert (= b_and!26329 (and (=> t!43712 result!23722) b_and!26343)))

(assert (=> b!310201 t!43714))

(declare-fun b_and!26345 () Bool)

(assert (= b_and!26337 (and (=> t!43714 result!23724) b_and!26345)))

(assert (=> b!310201 t!43716))

(declare-fun b_and!26347 () Bool)

(assert (= b_and!26331 (and (=> t!43716 result!23726) b_and!26347)))

(declare-fun m!416031 () Bool)

(assert (=> d!95286 m!416031))

(assert (=> b!310201 m!415599))

(assert (=> b!310201 m!415599))

(declare-fun m!416033 () Bool)

(assert (=> b!310201 m!416033))

(declare-fun m!416035 () Bool)

(assert (=> b!310202 m!416035))

(assert (=> b!308285 d!95286))

(declare-fun d!95288 () Bool)

(assert (=> d!95288 (= (inv!15 (value!26574 separatorToken!170)) (= (charsToBigInt!0 (text!6070 (value!26574 separatorToken!170)) 0) (value!26569 (value!26574 separatorToken!170))))))

(declare-fun bs!36017 () Bool)

(assert (= bs!36017 d!95288))

(declare-fun m!416037 () Bool)

(assert (=> bs!36017 m!416037))

(assert (=> b!307575 d!95288))

(declare-fun e!192889 () Bool)

(declare-fun b!310206 () Bool)

(declare-fun lt!132729 () List!4071)

(assert (=> b!310206 (= e!192889 (or (not (= (printList!341 thiss!17480 (t!43305 (Cons!4063 (h!9460 tokens!465) Nil!4063))) Nil!4061)) (= lt!132729 (list!1713 (charsOf!424 (h!9460 (Cons!4063 (h!9460 tokens!465) Nil!4063)))))))))

(declare-fun d!95290 () Bool)

(assert (=> d!95290 e!192889))

(declare-fun res!141024 () Bool)

(assert (=> d!95290 (=> (not res!141024) (not e!192889))))

(assert (=> d!95290 (= res!141024 (= (content!606 lt!132729) ((_ map or) (content!606 (list!1713 (charsOf!424 (h!9460 (Cons!4063 (h!9460 tokens!465) Nil!4063))))) (content!606 (printList!341 thiss!17480 (t!43305 (Cons!4063 (h!9460 tokens!465) Nil!4063)))))))))

(declare-fun e!192888 () List!4071)

(assert (=> d!95290 (= lt!132729 e!192888)))

(declare-fun c!58874 () Bool)

(assert (=> d!95290 (= c!58874 ((_ is Nil!4061) (list!1713 (charsOf!424 (h!9460 (Cons!4063 (h!9460 tokens!465) Nil!4063))))))))

(assert (=> d!95290 (= (++!1102 (list!1713 (charsOf!424 (h!9460 (Cons!4063 (h!9460 tokens!465) Nil!4063)))) (printList!341 thiss!17480 (t!43305 (Cons!4063 (h!9460 tokens!465) Nil!4063)))) lt!132729)))

(declare-fun b!310205 () Bool)

(declare-fun res!141025 () Bool)

(assert (=> b!310205 (=> (not res!141025) (not e!192889))))

(assert (=> b!310205 (= res!141025 (= (size!3246 lt!132729) (+ (size!3246 (list!1713 (charsOf!424 (h!9460 (Cons!4063 (h!9460 tokens!465) Nil!4063))))) (size!3246 (printList!341 thiss!17480 (t!43305 (Cons!4063 (h!9460 tokens!465) Nil!4063)))))))))

(declare-fun b!310204 () Bool)

(assert (=> b!310204 (= e!192888 (Cons!4061 (h!9458 (list!1713 (charsOf!424 (h!9460 (Cons!4063 (h!9460 tokens!465) Nil!4063))))) (++!1102 (t!43303 (list!1713 (charsOf!424 (h!9460 (Cons!4063 (h!9460 tokens!465) Nil!4063))))) (printList!341 thiss!17480 (t!43305 (Cons!4063 (h!9460 tokens!465) Nil!4063))))))))

(declare-fun b!310203 () Bool)

(assert (=> b!310203 (= e!192888 (printList!341 thiss!17480 (t!43305 (Cons!4063 (h!9460 tokens!465) Nil!4063))))))

(assert (= (and d!95290 c!58874) b!310203))

(assert (= (and d!95290 (not c!58874)) b!310204))

(assert (= (and d!95290 res!141024) b!310205))

(assert (= (and b!310205 res!141025) b!310206))

(declare-fun m!416039 () Bool)

(assert (=> d!95290 m!416039))

(assert (=> d!95290 m!410765))

(declare-fun m!416041 () Bool)

(assert (=> d!95290 m!416041))

(assert (=> d!95290 m!410767))

(declare-fun m!416043 () Bool)

(assert (=> d!95290 m!416043))

(declare-fun m!416045 () Bool)

(assert (=> b!310205 m!416045))

(assert (=> b!310205 m!410765))

(declare-fun m!416047 () Bool)

(assert (=> b!310205 m!416047))

(assert (=> b!310205 m!410767))

(declare-fun m!416049 () Bool)

(assert (=> b!310205 m!416049))

(assert (=> b!310204 m!410767))

(declare-fun m!416051 () Bool)

(assert (=> b!310204 m!416051))

(assert (=> b!307764 d!95290))

(declare-fun d!95292 () Bool)

(assert (=> d!95292 (= (list!1713 (charsOf!424 (h!9460 (Cons!4063 (h!9460 tokens!465) Nil!4063)))) (list!1717 (c!58276 (charsOf!424 (h!9460 (Cons!4063 (h!9460 tokens!465) Nil!4063))))))))

(declare-fun bs!36018 () Bool)

(assert (= bs!36018 d!95292))

(declare-fun m!416053 () Bool)

(assert (=> bs!36018 m!416053))

(assert (=> b!307764 d!95292))

(declare-fun d!95294 () Bool)

(declare-fun lt!132730 () BalanceConc!2776)

(assert (=> d!95294 (= (list!1713 lt!132730) (originalCharacters!824 (h!9460 (Cons!4063 (h!9460 tokens!465) Nil!4063))))))

(assert (=> d!95294 (= lt!132730 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (h!9460 (Cons!4063 (h!9460 tokens!465) Nil!4063))))) (value!26574 (h!9460 (Cons!4063 (h!9460 tokens!465) Nil!4063)))))))

(assert (=> d!95294 (= (charsOf!424 (h!9460 (Cons!4063 (h!9460 tokens!465) Nil!4063))) lt!132730)))

(declare-fun b_lambda!10827 () Bool)

(assert (=> (not b_lambda!10827) (not d!95294)))

(declare-fun t!43732 () Bool)

(declare-fun tb!19733 () Bool)

(assert (=> (and b!308288 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 (Cons!4063 (h!9460 tokens!465) Nil!4063)))))) t!43732) tb!19733))

(declare-fun b!310207 () Bool)

(declare-fun e!192890 () Bool)

(declare-fun tp!109221 () Bool)

(assert (=> b!310207 (= e!192890 (and (inv!5019 (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (h!9460 (Cons!4063 (h!9460 tokens!465) Nil!4063))))) (value!26574 (h!9460 (Cons!4063 (h!9460 tokens!465) Nil!4063)))))) tp!109221))))

(declare-fun result!23742 () Bool)

(assert (=> tb!19733 (= result!23742 (and (inv!5020 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (h!9460 (Cons!4063 (h!9460 tokens!465) Nil!4063))))) (value!26574 (h!9460 (Cons!4063 (h!9460 tokens!465) Nil!4063))))) e!192890))))

(assert (= tb!19733 b!310207))

(declare-fun m!416055 () Bool)

(assert (=> b!310207 m!416055))

(declare-fun m!416057 () Bool)

(assert (=> tb!19733 m!416057))

(assert (=> d!95294 t!43732))

(declare-fun b_and!26349 () Bool)

(assert (= b_and!26347 (and (=> t!43732 result!23742) b_and!26349)))

(declare-fun tb!19735 () Bool)

(declare-fun t!43734 () Bool)

(assert (=> (and b!307444 (= (toChars!1399 (transformation!781 (h!9459 rules!1920))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 (Cons!4063 (h!9460 tokens!465) Nil!4063)))))) t!43734) tb!19735))

(declare-fun result!23744 () Bool)

(assert (= result!23744 result!23742))

(assert (=> d!95294 t!43734))

(declare-fun b_and!26351 () Bool)

(assert (= b_and!26341 (and (=> t!43734 result!23744) b_and!26351)))

(declare-fun tb!19737 () Bool)

(declare-fun t!43736 () Bool)

(assert (=> (and b!308316 (= (toChars!1399 (transformation!781 (h!9459 (t!43304 rules!1920)))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 (Cons!4063 (h!9460 tokens!465) Nil!4063)))))) t!43736) tb!19737))

(declare-fun result!23746 () Bool)

(assert (= result!23746 result!23742))

(assert (=> d!95294 t!43736))

(declare-fun b_and!26353 () Bool)

(assert (= b_and!26343 (and (=> t!43736 result!23746) b_and!26353)))

(declare-fun t!43738 () Bool)

(declare-fun tb!19739 () Bool)

(assert (=> (and b!307455 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 (Cons!4063 (h!9460 tokens!465) Nil!4063)))))) t!43738) tb!19739))

(declare-fun result!23748 () Bool)

(assert (= result!23748 result!23742))

(assert (=> d!95294 t!43738))

(declare-fun b_and!26355 () Bool)

(assert (= b_and!26339 (and (=> t!43738 result!23748) b_and!26355)))

(declare-fun t!43740 () Bool)

(declare-fun tb!19741 () Bool)

(assert (=> (and b!307440 (= (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 (Cons!4063 (h!9460 tokens!465) Nil!4063)))))) t!43740) tb!19741))

(declare-fun result!23750 () Bool)

(assert (= result!23750 result!23742))

(assert (=> d!95294 t!43740))

(declare-fun b_and!26357 () Bool)

(assert (= b_and!26345 (and (=> t!43740 result!23750) b_and!26357)))

(declare-fun m!416059 () Bool)

(assert (=> d!95294 m!416059))

(declare-fun m!416061 () Bool)

(assert (=> d!95294 m!416061))

(assert (=> b!307764 d!95294))

(declare-fun d!95296 () Bool)

(declare-fun c!58875 () Bool)

(assert (=> d!95296 (= c!58875 ((_ is Cons!4063) (t!43305 (Cons!4063 (h!9460 tokens!465) Nil!4063))))))

(declare-fun e!192891 () List!4071)

(assert (=> d!95296 (= (printList!341 thiss!17480 (t!43305 (Cons!4063 (h!9460 tokens!465) Nil!4063))) e!192891)))

(declare-fun b!310208 () Bool)

(assert (=> b!310208 (= e!192891 (++!1102 (list!1713 (charsOf!424 (h!9460 (t!43305 (Cons!4063 (h!9460 tokens!465) Nil!4063))))) (printList!341 thiss!17480 (t!43305 (t!43305 (Cons!4063 (h!9460 tokens!465) Nil!4063))))))))

(declare-fun b!310209 () Bool)

(assert (=> b!310209 (= e!192891 Nil!4061)))

(assert (= (and d!95296 c!58875) b!310208))

(assert (= (and d!95296 (not c!58875)) b!310209))

(declare-fun m!416063 () Bool)

(assert (=> b!310208 m!416063))

(assert (=> b!310208 m!416063))

(declare-fun m!416065 () Bool)

(assert (=> b!310208 m!416065))

(declare-fun m!416067 () Bool)

(assert (=> b!310208 m!416067))

(assert (=> b!310208 m!416065))

(assert (=> b!310208 m!416067))

(declare-fun m!416069 () Bool)

(assert (=> b!310208 m!416069))

(assert (=> b!307764 d!95296))

(assert (=> b!307720 d!95102))

(assert (=> b!308160 d!94298))

(assert (=> b!308160 d!93978))

(declare-fun d!95298 () Bool)

(declare-fun lt!132736 () BalanceConc!2776)

(assert (=> d!95298 (= (list!1713 lt!132736) (printListTailRec!161 thiss!17480 (dropList!196 (singletonSeq!327 (h!9460 tokens!465)) 0) (list!1713 (BalanceConc!2777 Empty!1384))))))

(declare-fun e!192892 () BalanceConc!2776)

(assert (=> d!95298 (= lt!132736 e!192892)))

(declare-fun c!58876 () Bool)

(assert (=> d!95298 (= c!58876 (>= 0 (size!3247 (singletonSeq!327 (h!9460 tokens!465)))))))

(declare-fun e!192893 () Bool)

(assert (=> d!95298 e!192893))

(declare-fun res!141026 () Bool)

(assert (=> d!95298 (=> (not res!141026) (not e!192893))))

(assert (=> d!95298 (= res!141026 (>= 0 0))))

(assert (=> d!95298 (= (printTailRec!353 thiss!17480 (singletonSeq!327 (h!9460 tokens!465)) 0 (BalanceConc!2777 Empty!1384)) lt!132736)))

(declare-fun b!310210 () Bool)

(assert (=> b!310210 (= e!192893 (<= 0 (size!3247 (singletonSeq!327 (h!9460 tokens!465)))))))

(declare-fun b!310211 () Bool)

(assert (=> b!310211 (= e!192892 (BalanceConc!2777 Empty!1384))))

(declare-fun b!310212 () Bool)

(assert (=> b!310212 (= e!192892 (printTailRec!353 thiss!17480 (singletonSeq!327 (h!9460 tokens!465)) (+ 0 1) (++!1104 (BalanceConc!2777 Empty!1384) (charsOf!424 (apply!892 (singletonSeq!327 (h!9460 tokens!465)) 0)))))))

(declare-fun lt!132733 () List!4073)

(assert (=> b!310212 (= lt!132733 (list!1716 (singletonSeq!327 (h!9460 tokens!465))))))

(declare-fun lt!132734 () Unit!5690)

(assert (=> b!310212 (= lt!132734 (lemmaDropApply!236 lt!132733 0))))

(assert (=> b!310212 (= (head!966 (drop!251 lt!132733 0)) (apply!894 lt!132733 0))))

(declare-fun lt!132737 () Unit!5690)

(assert (=> b!310212 (= lt!132737 lt!132734)))

(declare-fun lt!132732 () List!4073)

(assert (=> b!310212 (= lt!132732 (list!1716 (singletonSeq!327 (h!9460 tokens!465))))))

(declare-fun lt!132731 () Unit!5690)

(assert (=> b!310212 (= lt!132731 (lemmaDropTail!228 lt!132732 0))))

(assert (=> b!310212 (= (tail!541 (drop!251 lt!132732 0)) (drop!251 lt!132732 (+ 0 1)))))

(declare-fun lt!132735 () Unit!5690)

(assert (=> b!310212 (= lt!132735 lt!132731)))

(assert (= (and d!95298 res!141026) b!310210))

(assert (= (and d!95298 c!58876) b!310211))

(assert (= (and d!95298 (not c!58876)) b!310212))

(assert (=> d!95298 m!410717))

(assert (=> d!95298 m!410261))

(declare-fun m!416071 () Bool)

(assert (=> d!95298 m!416071))

(assert (=> d!95298 m!410261))

(declare-fun m!416073 () Bool)

(assert (=> d!95298 m!416073))

(declare-fun m!416075 () Bool)

(assert (=> d!95298 m!416075))

(assert (=> d!95298 m!416071))

(assert (=> d!95298 m!410717))

(declare-fun m!416077 () Bool)

(assert (=> d!95298 m!416077))

(assert (=> b!310210 m!410261))

(assert (=> b!310210 m!416073))

(assert (=> b!310212 m!410261))

(declare-fun m!416079 () Bool)

(assert (=> b!310212 m!416079))

(declare-fun m!416081 () Bool)

(assert (=> b!310212 m!416081))

(declare-fun m!416083 () Bool)

(assert (=> b!310212 m!416083))

(declare-fun m!416085 () Bool)

(assert (=> b!310212 m!416085))

(assert (=> b!310212 m!410261))

(declare-fun m!416087 () Bool)

(assert (=> b!310212 m!416087))

(assert (=> b!310212 m!410261))

(assert (=> b!310212 m!410589))

(assert (=> b!310212 m!416087))

(declare-fun m!416089 () Bool)

(assert (=> b!310212 m!416089))

(declare-fun m!416091 () Bool)

(assert (=> b!310212 m!416091))

(assert (=> b!310212 m!416083))

(declare-fun m!416093 () Bool)

(assert (=> b!310212 m!416093))

(assert (=> b!310212 m!416089))

(assert (=> b!310212 m!416079))

(declare-fun m!416095 () Bool)

(assert (=> b!310212 m!416095))

(declare-fun m!416097 () Bool)

(assert (=> b!310212 m!416097))

(declare-fun m!416099 () Bool)

(assert (=> b!310212 m!416099))

(assert (=> b!310212 m!416091))

(declare-fun m!416101 () Bool)

(assert (=> b!310212 m!416101))

(assert (=> b!308160 d!95298))

(declare-fun b!310215 () Bool)

(declare-fun e!192894 () Unit!5690)

(declare-fun Unit!5748 () Unit!5690)

(assert (=> b!310215 (= e!192894 Unit!5748)))

(declare-fun lt!132742 () List!4071)

(assert (=> b!310215 (= lt!132742 (++!1102 call!17926 lt!131567))))

(declare-fun lt!132751 () Token!1306)

(declare-fun lt!132746 () Unit!5690)

(assert (=> b!310215 (= lt!132746 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!68 thiss!17480 (rule!1394 lt!132751) rules!1920 lt!132742))))

(assert (=> b!310215 (isEmpty!2779 (maxPrefixOneRule!172 thiss!17480 (rule!1394 lt!132751) lt!132742))))

(declare-fun lt!132754 () Unit!5690)

(assert (=> b!310215 (= lt!132754 lt!132746)))

(declare-fun lt!132749 () List!4071)

(assert (=> b!310215 (= lt!132749 (list!1713 (charsOf!424 lt!132751)))))

(declare-fun lt!132752 () Unit!5690)

(assert (=> b!310215 (= lt!132752 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!68 thiss!17480 (rule!1394 lt!132751) lt!132749 (++!1102 call!17926 lt!131567)))))

(assert (=> b!310215 (not (matchR!323 (regex!781 (rule!1394 lt!132751)) lt!132749))))

(declare-fun lt!132750 () Unit!5690)

(assert (=> b!310215 (= lt!132750 lt!132752)))

(assert (=> b!310215 false))

(declare-fun b!310214 () Bool)

(declare-fun e!192895 () Bool)

(assert (=> b!310214 (= e!192895 (= (rule!1394 lt!132751) (get!1392 (getRuleFromTag!144 thiss!17480 rules!1920 (tag!999 (rule!1394 lt!132751))))))))

(declare-fun b!310213 () Bool)

(declare-fun res!141027 () Bool)

(assert (=> b!310213 (=> (not res!141027) (not e!192895))))

(assert (=> b!310213 (= res!141027 (matchR!323 (regex!781 (get!1392 (getRuleFromTag!144 thiss!17480 rules!1920 (tag!999 (rule!1394 lt!132751))))) (list!1713 (charsOf!424 lt!132751))))))

(declare-fun d!95300 () Bool)

(assert (=> d!95300 (isDefined!767 (maxPrefix!383 thiss!17480 rules!1920 (++!1102 call!17926 lt!131567)))))

(declare-fun lt!132743 () Unit!5690)

(assert (=> d!95300 (= lt!132743 e!192894)))

(declare-fun c!58877 () Bool)

(assert (=> d!95300 (= c!58877 (isEmpty!2779 (maxPrefix!383 thiss!17480 rules!1920 (++!1102 call!17926 lt!131567))))))

(declare-fun lt!132753 () Unit!5690)

(declare-fun lt!132740 () Unit!5690)

(assert (=> d!95300 (= lt!132753 lt!132740)))

(assert (=> d!95300 e!192895))

(declare-fun res!141028 () Bool)

(assert (=> d!95300 (=> (not res!141028) (not e!192895))))

(assert (=> d!95300 (= res!141028 (isDefined!770 (getRuleFromTag!144 thiss!17480 rules!1920 (tag!999 (rule!1394 lt!132751)))))))

(assert (=> d!95300 (= lt!132740 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!144 thiss!17480 rules!1920 call!17926 lt!132751))))

(declare-fun lt!132744 () Unit!5690)

(declare-fun lt!132739 () Unit!5690)

(assert (=> d!95300 (= lt!132744 lt!132739)))

(declare-fun lt!132745 () List!4071)

(assert (=> d!95300 (isPrefix!441 lt!132745 (++!1102 call!17926 lt!131567))))

(assert (=> d!95300 (= lt!132739 (lemmaPrefixStaysPrefixWhenAddingToSuffix!68 lt!132745 call!17926 lt!131567))))

(assert (=> d!95300 (= lt!132745 (list!1713 (charsOf!424 lt!132751)))))

(declare-fun lt!132738 () Unit!5690)

(declare-fun lt!132741 () Unit!5690)

(assert (=> d!95300 (= lt!132738 lt!132741)))

(declare-fun lt!132748 () List!4071)

(declare-fun lt!132747 () List!4071)

(assert (=> d!95300 (isPrefix!441 lt!132748 (++!1102 lt!132748 lt!132747))))

(assert (=> d!95300 (= lt!132741 (lemmaConcatTwoListThenFirstIsPrefix!332 lt!132748 lt!132747))))

(assert (=> d!95300 (= lt!132747 (_2!2561 (get!1388 (maxPrefix!383 thiss!17480 rules!1920 call!17926))))))

(assert (=> d!95300 (= lt!132748 (list!1713 (charsOf!424 lt!132751)))))

(assert (=> d!95300 (= lt!132751 (head!966 (list!1716 (_1!2562 (lex!459 thiss!17480 rules!1920 (seqFromList!928 call!17926))))))))

(assert (=> d!95300 (not (isEmpty!2776 rules!1920))))

(assert (=> d!95300 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!144 thiss!17480 rules!1920 call!17926 lt!131567) lt!132743)))

(declare-fun b!310216 () Bool)

(declare-fun Unit!5749 () Unit!5690)

(assert (=> b!310216 (= e!192894 Unit!5749)))

(assert (= (and d!95300 res!141028) b!310213))

(assert (= (and b!310213 res!141027) b!310214))

(assert (= (and d!95300 c!58877) b!310215))

(assert (= (and d!95300 (not c!58877)) b!310216))

(declare-fun m!416103 () Bool)

(assert (=> b!310215 m!416103))

(declare-fun m!416105 () Bool)

(assert (=> b!310215 m!416105))

(declare-fun m!416107 () Bool)

(assert (=> b!310215 m!416107))

(assert (=> b!310215 m!416105))

(declare-fun m!416109 () Bool)

(assert (=> b!310215 m!416109))

(assert (=> b!310215 m!416103))

(declare-fun m!416111 () Bool)

(assert (=> b!310215 m!416111))

(declare-fun m!416113 () Bool)

(assert (=> b!310215 m!416113))

(declare-fun m!416115 () Bool)

(assert (=> b!310215 m!416115))

(declare-fun m!416117 () Bool)

(assert (=> b!310215 m!416117))

(assert (=> b!310215 m!416115))

(declare-fun m!416119 () Bool)

(assert (=> b!310214 m!416119))

(assert (=> b!310214 m!416119))

(declare-fun m!416121 () Bool)

(assert (=> b!310214 m!416121))

(assert (=> b!310213 m!416109))

(declare-fun m!416123 () Bool)

(assert (=> b!310213 m!416123))

(assert (=> b!310213 m!416105))

(assert (=> b!310213 m!416105))

(assert (=> b!310213 m!416109))

(assert (=> b!310213 m!416119))

(assert (=> b!310213 m!416119))

(assert (=> b!310213 m!416121))

(declare-fun m!416125 () Bool)

(assert (=> d!95300 m!416125))

(declare-fun m!416127 () Bool)

(assert (=> d!95300 m!416127))

(assert (=> d!95300 m!416103))

(declare-fun m!416129 () Bool)

(assert (=> d!95300 m!416129))

(declare-fun m!416131 () Bool)

(assert (=> d!95300 m!416131))

(declare-fun m!416133 () Bool)

(assert (=> d!95300 m!416133))

(declare-fun m!416135 () Bool)

(assert (=> d!95300 m!416135))

(declare-fun m!416137 () Bool)

(assert (=> d!95300 m!416137))

(assert (=> d!95300 m!416135))

(declare-fun m!416139 () Bool)

(assert (=> d!95300 m!416139))

(assert (=> d!95300 m!416105))

(assert (=> d!95300 m!410327))

(assert (=> d!95300 m!416125))

(declare-fun m!416141 () Bool)

(assert (=> d!95300 m!416141))

(declare-fun m!416143 () Bool)

(assert (=> d!95300 m!416143))

(assert (=> d!95300 m!416105))

(assert (=> d!95300 m!416109))

(assert (=> d!95300 m!416119))

(declare-fun m!416145 () Bool)

(assert (=> d!95300 m!416145))

(assert (=> d!95300 m!416145))

(declare-fun m!416147 () Bool)

(assert (=> d!95300 m!416147))

(assert (=> d!95300 m!416103))

(assert (=> d!95300 m!416135))

(assert (=> d!95300 m!416131))

(assert (=> d!95300 m!416129))

(declare-fun m!416149 () Bool)

(assert (=> d!95300 m!416149))

(assert (=> d!95300 m!416103))

(declare-fun m!416151 () Bool)

(assert (=> d!95300 m!416151))

(declare-fun m!416153 () Bool)

(assert (=> d!95300 m!416153))

(assert (=> d!95300 m!416119))

(declare-fun m!416155 () Bool)

(assert (=> d!95300 m!416155))

(assert (=> b!308160 d!95300))

(assert (=> bm!17880 d!95172))

(declare-fun b!310218 () Bool)

(declare-fun e!192896 () List!4071)

(declare-fun e!192897 () List!4071)

(assert (=> b!310218 (= e!192896 e!192897)))

(declare-fun c!58879 () Bool)

(assert (=> b!310218 (= c!58879 ((_ is Leaf!2114) (c!58276 (seqFromList!928 lt!131156))))))

(declare-fun b!310219 () Bool)

(assert (=> b!310219 (= e!192897 (list!1721 (xs!3987 (c!58276 (seqFromList!928 lt!131156)))))))

(declare-fun b!310220 () Bool)

(assert (=> b!310220 (= e!192897 (++!1102 (list!1717 (left!3377 (c!58276 (seqFromList!928 lt!131156)))) (list!1717 (right!3707 (c!58276 (seqFromList!928 lt!131156))))))))

(declare-fun d!95302 () Bool)

(declare-fun c!58878 () Bool)

(assert (=> d!95302 (= c!58878 ((_ is Empty!1384) (c!58276 (seqFromList!928 lt!131156))))))

(assert (=> d!95302 (= (list!1717 (c!58276 (seqFromList!928 lt!131156))) e!192896)))

(declare-fun b!310217 () Bool)

(assert (=> b!310217 (= e!192896 Nil!4061)))

(assert (= (and d!95302 c!58878) b!310217))

(assert (= (and d!95302 (not c!58878)) b!310218))

(assert (= (and b!310218 c!58879) b!310219))

(assert (= (and b!310218 (not c!58879)) b!310220))

(declare-fun m!416157 () Bool)

(assert (=> b!310219 m!416157))

(declare-fun m!416159 () Bool)

(assert (=> b!310220 m!416159))

(declare-fun m!416161 () Bool)

(assert (=> b!310220 m!416161))

(assert (=> b!310220 m!416159))

(assert (=> b!310220 m!416161))

(declare-fun m!416163 () Bool)

(assert (=> b!310220 m!416163))

(assert (=> d!93942 d!95302))

(declare-fun b!310223 () Bool)

(declare-fun res!141030 () Bool)

(declare-fun e!192898 () Bool)

(assert (=> b!310223 (=> (not res!141030) (not e!192898))))

(assert (=> b!310223 (= res!141030 (>= (height!179 (++!1106 (c!58276 call!17913) (c!58276 lt!131492))) (max!0 (height!179 (c!58276 call!17913)) (height!179 (c!58276 lt!131492)))))))

(declare-fun lt!132755 () BalanceConc!2776)

(declare-fun b!310224 () Bool)

(assert (=> b!310224 (= e!192898 (= (list!1713 lt!132755) (++!1102 (list!1713 call!17913) (list!1713 lt!131492))))))

(declare-fun b!310222 () Bool)

(declare-fun res!141031 () Bool)

(assert (=> b!310222 (=> (not res!141031) (not e!192898))))

(assert (=> b!310222 (= res!141031 (<= (height!179 (++!1106 (c!58276 call!17913) (c!58276 lt!131492))) (+ (max!0 (height!179 (c!58276 call!17913)) (height!179 (c!58276 lt!131492))) 1)))))

(declare-fun b!310221 () Bool)

(declare-fun res!141029 () Bool)

(assert (=> b!310221 (=> (not res!141029) (not e!192898))))

(assert (=> b!310221 (= res!141029 (isBalanced!397 (++!1106 (c!58276 call!17913) (c!58276 lt!131492))))))

(declare-fun d!95304 () Bool)

(assert (=> d!95304 e!192898))

(declare-fun res!141032 () Bool)

(assert (=> d!95304 (=> (not res!141032) (not e!192898))))

(assert (=> d!95304 (= res!141032 (appendAssocInst!75 (c!58276 call!17913) (c!58276 lt!131492)))))

(assert (=> d!95304 (= lt!132755 (BalanceConc!2777 (++!1106 (c!58276 call!17913) (c!58276 lt!131492))))))

(assert (=> d!95304 (= (++!1104 call!17913 lt!131492) lt!132755)))

(assert (= (and d!95304 res!141032) b!310221))

(assert (= (and b!310221 res!141029) b!310222))

(assert (= (and b!310222 res!141031) b!310223))

(assert (= (and b!310223 res!141030) b!310224))

(declare-fun m!416165 () Bool)

(assert (=> b!310224 m!416165))

(declare-fun m!416167 () Bool)

(assert (=> b!310224 m!416167))

(assert (=> b!310224 m!411165))

(assert (=> b!310224 m!416167))

(assert (=> b!310224 m!411165))

(declare-fun m!416169 () Bool)

(assert (=> b!310224 m!416169))

(declare-fun m!416171 () Bool)

(assert (=> b!310221 m!416171))

(assert (=> b!310221 m!416171))

(declare-fun m!416173 () Bool)

(assert (=> b!310221 m!416173))

(declare-fun m!416175 () Bool)

(assert (=> b!310222 m!416175))

(assert (=> b!310222 m!412379))

(assert (=> b!310222 m!416171))

(declare-fun m!416177 () Bool)

(assert (=> b!310222 m!416177))

(assert (=> b!310222 m!416171))

(assert (=> b!310222 m!416175))

(assert (=> b!310222 m!412379))

(declare-fun m!416179 () Bool)

(assert (=> b!310222 m!416179))

(declare-fun m!416181 () Bool)

(assert (=> d!95304 m!416181))

(assert (=> d!95304 m!416171))

(assert (=> b!310223 m!416175))

(assert (=> b!310223 m!412379))

(assert (=> b!310223 m!416171))

(assert (=> b!310223 m!416177))

(assert (=> b!310223 m!416171))

(assert (=> b!310223 m!416175))

(assert (=> b!310223 m!412379))

(assert (=> b!310223 m!416179))

(assert (=> b!308009 d!95304))

(declare-fun d!95306 () Bool)

(declare-fun lt!132756 () Int)

(assert (=> d!95306 (>= lt!132756 0)))

(declare-fun e!192899 () Int)

(assert (=> d!95306 (= lt!132756 e!192899)))

(declare-fun c!58880 () Bool)

(assert (=> d!95306 (= c!58880 ((_ is Nil!4061) lt!131325))))

(assert (=> d!95306 (= (size!3246 lt!131325) lt!132756)))

(declare-fun b!310225 () Bool)

(assert (=> b!310225 (= e!192899 0)))

(declare-fun b!310226 () Bool)

(assert (=> b!310226 (= e!192899 (+ 1 (size!3246 (t!43303 lt!131325))))))

(assert (= (and d!95306 c!58880) b!310225))

(assert (= (and d!95306 (not c!58880)) b!310226))

(declare-fun m!416183 () Bool)

(assert (=> b!310226 m!416183))

(assert (=> b!307768 d!95306))

(declare-fun d!95308 () Bool)

(declare-fun lt!132757 () Int)

(assert (=> d!95308 (>= lt!132757 0)))

(declare-fun e!192900 () Int)

(assert (=> d!95308 (= lt!132757 e!192900)))

(declare-fun c!58881 () Bool)

(assert (=> d!95308 (= c!58881 ((_ is Nil!4061) (++!1102 lt!131150 lt!131164)))))

(assert (=> d!95308 (= (size!3246 (++!1102 lt!131150 lt!131164)) lt!132757)))

(declare-fun b!310227 () Bool)

(assert (=> b!310227 (= e!192900 0)))

(declare-fun b!310228 () Bool)

(assert (=> b!310228 (= e!192900 (+ 1 (size!3246 (t!43303 (++!1102 lt!131150 lt!131164)))))))

(assert (= (and d!95308 c!58881) b!310227))

(assert (= (and d!95308 (not c!58881)) b!310228))

(assert (=> b!310228 m!415607))

(assert (=> b!307768 d!95308))

(assert (=> b!307768 d!94754))

(declare-fun d!95310 () Bool)

(assert (=> d!95310 (= (list!1716 lt!131324) (list!1719 (c!58278 lt!131324)))))

(declare-fun bs!36019 () Bool)

(assert (= bs!36019 d!95310))

(declare-fun m!416185 () Bool)

(assert (=> bs!36019 m!416185))

(assert (=> d!93978 d!95310))

(declare-fun d!95312 () Bool)

(declare-fun e!192903 () Bool)

(assert (=> d!95312 e!192903))

(declare-fun res!141035 () Bool)

(assert (=> d!95312 (=> (not res!141035) (not e!192903))))

(declare-fun lt!132760 () BalanceConc!2778)

(assert (=> d!95312 (= res!141035 (= (list!1716 lt!132760) (Cons!4063 (h!9460 tokens!465) Nil!4063)))))

(declare-fun choose!2709 (Token!1306) BalanceConc!2778)

(assert (=> d!95312 (= lt!132760 (choose!2709 (h!9460 tokens!465)))))

(assert (=> d!95312 (= (singleton!146 (h!9460 tokens!465)) lt!132760)))

(declare-fun b!310231 () Bool)

(assert (=> b!310231 (= e!192903 (isBalanced!395 (c!58278 lt!132760)))))

(assert (= (and d!95312 res!141035) b!310231))

(declare-fun m!416187 () Bool)

(assert (=> d!95312 m!416187))

(declare-fun m!416189 () Bool)

(assert (=> d!95312 m!416189))

(declare-fun m!416191 () Bool)

(assert (=> b!310231 m!416191))

(assert (=> d!93978 d!95312))

(declare-fun d!95314 () Bool)

(declare-fun e!192904 () Bool)

(assert (=> d!95314 e!192904))

(declare-fun res!141036 () Bool)

(assert (=> d!95314 (=> (not res!141036) (not e!192904))))

(declare-fun lt!132761 () BalanceConc!2776)

(assert (=> d!95314 (= res!141036 (= (list!1713 lt!132761) lt!131150))))

(assert (=> d!95314 (= lt!132761 (BalanceConc!2777 (fromList!200 lt!131150)))))

(assert (=> d!95314 (= (fromListB!387 lt!131150) lt!132761)))

(declare-fun b!310232 () Bool)

(assert (=> b!310232 (= e!192904 (isBalanced!397 (fromList!200 lt!131150)))))

(assert (= (and d!95314 res!141036) b!310232))

(declare-fun m!416193 () Bool)

(assert (=> d!95314 m!416193))

(declare-fun m!416195 () Bool)

(assert (=> d!95314 m!416195))

(assert (=> b!310232 m!416195))

(assert (=> b!310232 m!416195))

(declare-fun m!416197 () Bool)

(assert (=> b!310232 m!416197))

(assert (=> d!94164 d!95314))

(assert (=> d!93952 d!95068))

(assert (=> d!93952 d!94532))

(assert (=> d!93952 d!95102))

(declare-fun d!95316 () Bool)

(assert (=> d!95316 (= (isDefined!767 (maxPrefixZipper!143 thiss!17480 rules!1920 (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465)))))) (not (isEmpty!2779 (maxPrefixZipper!143 thiss!17480 rules!1920 (list!1713 (seqFromList!928 (originalCharacters!824 (h!9460 tokens!465))))))))))

(declare-fun bs!36020 () Bool)

(assert (= bs!36020 d!95316))

(assert (=> bs!36020 m!410655))

(declare-fun m!416199 () Bool)

(assert (=> bs!36020 m!416199))

(assert (=> d!93952 d!95316))

(declare-fun b!310235 () Bool)

(declare-fun e!192905 () Bool)

(assert (=> b!310235 (= e!192905 (isPrefix!441 (tail!542 lt!131284) (tail!542 lt!131282)))))

(declare-fun b!310233 () Bool)

(declare-fun e!192907 () Bool)

(assert (=> b!310233 (= e!192907 e!192905)))

(declare-fun res!141039 () Bool)

(assert (=> b!310233 (=> (not res!141039) (not e!192905))))

(assert (=> b!310233 (= res!141039 (not ((_ is Nil!4061) lt!131282)))))

(declare-fun b!310236 () Bool)

(declare-fun e!192906 () Bool)

(assert (=> b!310236 (= e!192906 (>= (size!3246 lt!131282) (size!3246 lt!131284)))))

(declare-fun d!95318 () Bool)

(assert (=> d!95318 e!192906))

(declare-fun res!141037 () Bool)

(assert (=> d!95318 (=> res!141037 e!192906)))

(declare-fun lt!132762 () Bool)

(assert (=> d!95318 (= res!141037 (not lt!132762))))

(assert (=> d!95318 (= lt!132762 e!192907)))

(declare-fun res!141038 () Bool)

(assert (=> d!95318 (=> res!141038 e!192907)))

(assert (=> d!95318 (= res!141038 ((_ is Nil!4061) lt!131284))))

(assert (=> d!95318 (= (isPrefix!441 lt!131284 lt!131282) lt!132762)))

(declare-fun b!310234 () Bool)

(declare-fun res!141040 () Bool)

(assert (=> b!310234 (=> (not res!141040) (not e!192905))))

(assert (=> b!310234 (= res!141040 (= (head!968 lt!131284) (head!968 lt!131282)))))

(assert (= (and d!95318 (not res!141038)) b!310233))

(assert (= (and b!310233 res!141039) b!310234))

(assert (= (and b!310234 res!141040) b!310235))

(assert (= (and d!95318 (not res!141037)) b!310236))

(declare-fun m!416201 () Bool)

(assert (=> b!310235 m!416201))

(declare-fun m!416203 () Bool)

(assert (=> b!310235 m!416203))

(assert (=> b!310235 m!416201))

(assert (=> b!310235 m!416203))

(declare-fun m!416205 () Bool)

(assert (=> b!310235 m!416205))

(declare-fun m!416207 () Bool)

(assert (=> b!310236 m!416207))

(declare-fun m!416209 () Bool)

(assert (=> b!310236 m!416209))

(declare-fun m!416211 () Bool)

(assert (=> b!310234 m!416211))

(declare-fun m!416213 () Bool)

(assert (=> b!310234 m!416213))

(assert (=> d!93952 d!95318))

(declare-fun d!95320 () Bool)

(assert (=> d!95320 (isPrefix!441 lt!131284 lt!131282)))

(declare-fun lt!132763 () Unit!5690)

(assert (=> d!95320 (= lt!132763 (choose!2707 lt!131284 lt!131282))))

(assert (=> d!95320 (= (lemmaIsPrefixRefl!238 lt!131284 lt!131282) lt!132763)))

(declare-fun bs!36021 () Bool)

(assert (= bs!36021 d!95320))

(assert (=> bs!36021 m!410675))

(declare-fun m!416215 () Bool)

(assert (=> bs!36021 m!416215))

(assert (=> d!93952 d!95320))

(assert (=> d!93952 d!94408))

(declare-fun d!95322 () Bool)

(declare-fun lt!132766 () Int)

(assert (=> d!95322 (= lt!132766 (size!3246 (list!1713 (_2!2562 lt!131580))))))

(declare-fun size!3255 (Conc!1384) Int)

(assert (=> d!95322 (= lt!132766 (size!3255 (c!58276 (_2!2562 lt!131580))))))

(assert (=> d!95322 (= (size!3249 (_2!2562 lt!131580)) lt!132766)))

(declare-fun bs!36022 () Bool)

(assert (= bs!36022 d!95322))

(assert (=> bs!36022 m!411567))

(assert (=> bs!36022 m!411567))

(declare-fun m!416217 () Bool)

(assert (=> bs!36022 m!416217))

(declare-fun m!416219 () Bool)

(assert (=> bs!36022 m!416219))

(assert (=> b!308267 d!95322))

(declare-fun d!95324 () Bool)

(declare-fun lt!132767 () Int)

(assert (=> d!95324 (= lt!132767 (size!3246 (list!1713 (seqFromList!928 lt!131150))))))

(assert (=> d!95324 (= lt!132767 (size!3255 (c!58276 (seqFromList!928 lt!131150))))))

(assert (=> d!95324 (= (size!3249 (seqFromList!928 lt!131150)) lt!132767)))

(declare-fun bs!36023 () Bool)

(assert (= bs!36023 d!95324))

(assert (=> bs!36023 m!410235))

(assert (=> bs!36023 m!411563))

(assert (=> bs!36023 m!411563))

(assert (=> bs!36023 m!414777))

(declare-fun m!416221 () Bool)

(assert (=> bs!36023 m!416221))

(assert (=> b!308267 d!95324))

(declare-fun d!95326 () Bool)

(assert (=> d!95326 (= (list!1713 (ite c!58415 call!17927 e!191667)) (list!1717 (c!58276 (ite c!58415 call!17927 e!191667))))))

(declare-fun bs!36024 () Bool)

(assert (= bs!36024 d!95326))

(declare-fun m!416223 () Bool)

(assert (=> bs!36024 m!416223))

(assert (=> bm!17921 d!95326))

(declare-fun d!95328 () Bool)

(declare-fun lt!132768 () Bool)

(assert (=> d!95328 (= lt!132768 (isEmpty!2778 (list!1716 (_1!2562 lt!131580))))))

(assert (=> d!95328 (= lt!132768 (isEmpty!2786 (c!58278 (_1!2562 lt!131580))))))

(assert (=> d!95328 (= (isEmpty!2777 (_1!2562 lt!131580)) lt!132768)))

(declare-fun bs!36025 () Bool)

(assert (= bs!36025 d!95328))

(assert (=> bs!36025 m!411561))

(assert (=> bs!36025 m!411561))

(declare-fun m!416225 () Bool)

(assert (=> bs!36025 m!416225))

(declare-fun m!416227 () Bool)

(assert (=> bs!36025 m!416227))

(assert (=> b!308266 d!95328))

(declare-fun b!310237 () Bool)

(declare-fun e!192908 () List!4073)

(assert (=> b!310237 (= e!192908 (drop!251 (t!43305 lt!131314) (- 0 1)))))

(declare-fun d!95330 () Bool)

(declare-fun e!192909 () Bool)

(assert (=> d!95330 e!192909))

(declare-fun res!141041 () Bool)

(assert (=> d!95330 (=> (not res!141041) (not e!192909))))

(declare-fun lt!132769 () List!4073)

(assert (=> d!95330 (= res!141041 (= ((_ map implies) (content!608 lt!132769) (content!608 lt!131314)) ((as const (InoxSet Token!1306)) true)))))

(declare-fun e!192911 () List!4073)

(assert (=> d!95330 (= lt!132769 e!192911)))

(declare-fun c!58885 () Bool)

(assert (=> d!95330 (= c!58885 ((_ is Nil!4063) lt!131314))))

(assert (=> d!95330 (= (drop!251 lt!131314 0) lt!132769)))

(declare-fun b!310238 () Bool)

(declare-fun e!192910 () Int)

(declare-fun call!18081 () Int)

(assert (=> b!310238 (= e!192910 call!18081)))

(declare-fun b!310239 () Bool)

(assert (=> b!310239 (= e!192911 Nil!4063)))

(declare-fun b!310240 () Bool)

(assert (=> b!310240 (= e!192911 e!192908)))

(declare-fun c!58883 () Bool)

(assert (=> b!310240 (= c!58883 (<= 0 0))))

(declare-fun b!310241 () Bool)

(declare-fun e!192912 () Int)

(assert (=> b!310241 (= e!192910 e!192912)))

(declare-fun c!58884 () Bool)

(assert (=> b!310241 (= c!58884 (>= 0 call!18081))))

(declare-fun b!310242 () Bool)

(assert (=> b!310242 (= e!192909 (= (size!3253 lt!132769) e!192910))))

(declare-fun c!58882 () Bool)

(assert (=> b!310242 (= c!58882 (<= 0 0))))

(declare-fun b!310243 () Bool)

(assert (=> b!310243 (= e!192908 lt!131314)))

(declare-fun bm!18076 () Bool)

(assert (=> bm!18076 (= call!18081 (size!3253 lt!131314))))

(declare-fun b!310244 () Bool)

(assert (=> b!310244 (= e!192912 0)))

(declare-fun b!310245 () Bool)

(assert (=> b!310245 (= e!192912 (- call!18081 0))))

(assert (= (and d!95330 c!58885) b!310239))

(assert (= (and d!95330 (not c!58885)) b!310240))

(assert (= (and b!310240 c!58883) b!310243))

(assert (= (and b!310240 (not c!58883)) b!310237))

(assert (= (and d!95330 res!141041) b!310242))

(assert (= (and b!310242 c!58882) b!310238))

(assert (= (and b!310242 (not c!58882)) b!310241))

(assert (= (and b!310241 c!58884) b!310244))

(assert (= (and b!310241 (not c!58884)) b!310245))

(assert (= (or b!310238 b!310241 b!310245) bm!18076))

(declare-fun m!416229 () Bool)

(assert (=> b!310237 m!416229))

(declare-fun m!416231 () Bool)

(assert (=> d!95330 m!416231))

(declare-fun m!416233 () Bool)

(assert (=> d!95330 m!416233))

(declare-fun m!416235 () Bool)

(assert (=> b!310242 m!416235))

(declare-fun m!416237 () Bool)

(assert (=> bm!18076 m!416237))

(assert (=> b!307756 d!95330))

(declare-fun d!95332 () Bool)

(declare-fun lt!132770 () BalanceConc!2776)

(assert (=> d!95332 (= (list!1713 lt!132770) (originalCharacters!824 (apply!892 lt!131157 0)))))

(assert (=> d!95332 (= lt!132770 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (apply!892 lt!131157 0)))) (value!26574 (apply!892 lt!131157 0))))))

(assert (=> d!95332 (= (charsOf!424 (apply!892 lt!131157 0)) lt!132770)))

(declare-fun b_lambda!10829 () Bool)

(assert (=> (not b_lambda!10829) (not d!95332)))

(declare-fun t!43743 () Bool)

(declare-fun tb!19743 () Bool)

(assert (=> (and b!308288 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))) (toChars!1399 (transformation!781 (rule!1394 (apply!892 lt!131157 0))))) t!43743) tb!19743))

(declare-fun b!310246 () Bool)

(declare-fun e!192913 () Bool)

(declare-fun tp!109222 () Bool)

(assert (=> b!310246 (= e!192913 (and (inv!5019 (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (apply!892 lt!131157 0)))) (value!26574 (apply!892 lt!131157 0))))) tp!109222))))

(declare-fun result!23752 () Bool)

(assert (=> tb!19743 (= result!23752 (and (inv!5020 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (apply!892 lt!131157 0)))) (value!26574 (apply!892 lt!131157 0)))) e!192913))))

(assert (= tb!19743 b!310246))

(declare-fun m!416239 () Bool)

(assert (=> b!310246 m!416239))

(declare-fun m!416241 () Bool)

(assert (=> tb!19743 m!416241))

(assert (=> d!95332 t!43743))

(declare-fun b_and!26359 () Bool)

(assert (= b_and!26349 (and (=> t!43743 result!23752) b_and!26359)))

(declare-fun t!43745 () Bool)

(declare-fun tb!19745 () Bool)

(assert (=> (and b!307455 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (toChars!1399 (transformation!781 (rule!1394 (apply!892 lt!131157 0))))) t!43745) tb!19745))

(declare-fun result!23754 () Bool)

(assert (= result!23754 result!23752))

(assert (=> d!95332 t!43745))

(declare-fun b_and!26361 () Bool)

(assert (= b_and!26355 (and (=> t!43745 result!23754) b_and!26361)))

(declare-fun tb!19747 () Bool)

(declare-fun t!43747 () Bool)

(assert (=> (and b!307444 (= (toChars!1399 (transformation!781 (h!9459 rules!1920))) (toChars!1399 (transformation!781 (rule!1394 (apply!892 lt!131157 0))))) t!43747) tb!19747))

(declare-fun result!23756 () Bool)

(assert (= result!23756 result!23752))

(assert (=> d!95332 t!43747))

(declare-fun b_and!26363 () Bool)

(assert (= b_and!26351 (and (=> t!43747 result!23756) b_and!26363)))

(declare-fun tb!19749 () Bool)

(declare-fun t!43749 () Bool)

(assert (=> (and b!307440 (= (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (toChars!1399 (transformation!781 (rule!1394 (apply!892 lt!131157 0))))) t!43749) tb!19749))

(declare-fun result!23758 () Bool)

(assert (= result!23758 result!23752))

(assert (=> d!95332 t!43749))

(declare-fun b_and!26365 () Bool)

(assert (= b_and!26357 (and (=> t!43749 result!23758) b_and!26365)))

(declare-fun tb!19751 () Bool)

(declare-fun t!43751 () Bool)

(assert (=> (and b!308316 (= (toChars!1399 (transformation!781 (h!9459 (t!43304 rules!1920)))) (toChars!1399 (transformation!781 (rule!1394 (apply!892 lt!131157 0))))) t!43751) tb!19751))

(declare-fun result!23760 () Bool)

(assert (= result!23760 result!23752))

(assert (=> d!95332 t!43751))

(declare-fun b_and!26367 () Bool)

(assert (= b_and!26353 (and (=> t!43751 result!23760) b_and!26367)))

(declare-fun m!416243 () Bool)

(assert (=> d!95332 m!416243))

(declare-fun m!416245 () Bool)

(assert (=> d!95332 m!416245))

(assert (=> b!307756 d!95332))

(declare-fun b!310249 () Bool)

(declare-fun res!141043 () Bool)

(declare-fun e!192914 () Bool)

(assert (=> b!310249 (=> (not res!141043) (not e!192914))))

(assert (=> b!310249 (= res!141043 (>= (height!179 (++!1106 (c!58276 (BalanceConc!2777 Empty!1384)) (c!58276 (charsOf!424 (apply!892 lt!131157 0))))) (max!0 (height!179 (c!58276 (BalanceConc!2777 Empty!1384))) (height!179 (c!58276 (charsOf!424 (apply!892 lt!131157 0)))))))))

(declare-fun b!310250 () Bool)

(declare-fun lt!132771 () BalanceConc!2776)

(assert (=> b!310250 (= e!192914 (= (list!1713 lt!132771) (++!1102 (list!1713 (BalanceConc!2777 Empty!1384)) (list!1713 (charsOf!424 (apply!892 lt!131157 0))))))))

(declare-fun b!310248 () Bool)

(declare-fun res!141044 () Bool)

(assert (=> b!310248 (=> (not res!141044) (not e!192914))))

(assert (=> b!310248 (= res!141044 (<= (height!179 (++!1106 (c!58276 (BalanceConc!2777 Empty!1384)) (c!58276 (charsOf!424 (apply!892 lt!131157 0))))) (+ (max!0 (height!179 (c!58276 (BalanceConc!2777 Empty!1384))) (height!179 (c!58276 (charsOf!424 (apply!892 lt!131157 0))))) 1)))))

(declare-fun b!310247 () Bool)

(declare-fun res!141042 () Bool)

(assert (=> b!310247 (=> (not res!141042) (not e!192914))))

(assert (=> b!310247 (= res!141042 (isBalanced!397 (++!1106 (c!58276 (BalanceConc!2777 Empty!1384)) (c!58276 (charsOf!424 (apply!892 lt!131157 0))))))))

(declare-fun d!95334 () Bool)

(assert (=> d!95334 e!192914))

(declare-fun res!141045 () Bool)

(assert (=> d!95334 (=> (not res!141045) (not e!192914))))

(assert (=> d!95334 (= res!141045 (appendAssocInst!75 (c!58276 (BalanceConc!2777 Empty!1384)) (c!58276 (charsOf!424 (apply!892 lt!131157 0)))))))

(assert (=> d!95334 (= lt!132771 (BalanceConc!2777 (++!1106 (c!58276 (BalanceConc!2777 Empty!1384)) (c!58276 (charsOf!424 (apply!892 lt!131157 0))))))))

(assert (=> d!95334 (= (++!1104 (BalanceConc!2777 Empty!1384) (charsOf!424 (apply!892 lt!131157 0))) lt!132771)))

(assert (= (and d!95334 res!141045) b!310247))

(assert (= (and b!310247 res!141042) b!310248))

(assert (= (and b!310248 res!141044) b!310249))

(assert (= (and b!310249 res!141043) b!310250))

(declare-fun m!416247 () Bool)

(assert (=> b!310250 m!416247))

(assert (=> b!310250 m!410717))

(assert (=> b!310250 m!410739))

(declare-fun m!416249 () Bool)

(assert (=> b!310250 m!416249))

(assert (=> b!310250 m!410717))

(assert (=> b!310250 m!416249))

(declare-fun m!416251 () Bool)

(assert (=> b!310250 m!416251))

(declare-fun m!416253 () Bool)

(assert (=> b!310247 m!416253))

(assert (=> b!310247 m!416253))

(declare-fun m!416255 () Bool)

(assert (=> b!310247 m!416255))

(declare-fun m!416257 () Bool)

(assert (=> b!310248 m!416257))

(declare-fun m!416259 () Bool)

(assert (=> b!310248 m!416259))

(assert (=> b!310248 m!416253))

(declare-fun m!416261 () Bool)

(assert (=> b!310248 m!416261))

(assert (=> b!310248 m!416253))

(assert (=> b!310248 m!416257))

(assert (=> b!310248 m!416259))

(declare-fun m!416263 () Bool)

(assert (=> b!310248 m!416263))

(declare-fun m!416265 () Bool)

(assert (=> d!95334 m!416265))

(assert (=> d!95334 m!416253))

(assert (=> b!310249 m!416257))

(assert (=> b!310249 m!416259))

(assert (=> b!310249 m!416253))

(assert (=> b!310249 m!416261))

(assert (=> b!310249 m!416253))

(assert (=> b!310249 m!416257))

(assert (=> b!310249 m!416259))

(assert (=> b!310249 m!416263))

(assert (=> b!307756 d!95334))

(declare-fun d!95336 () Bool)

(assert (=> d!95336 (= (tail!541 (drop!251 lt!131313 0)) (drop!251 lt!131313 (+ 0 1)))))

(declare-fun lt!132772 () Unit!5690)

(assert (=> d!95336 (= lt!132772 (choose!2703 lt!131313 0))))

(declare-fun e!192915 () Bool)

(assert (=> d!95336 e!192915))

(declare-fun res!141046 () Bool)

(assert (=> d!95336 (=> (not res!141046) (not e!192915))))

(assert (=> d!95336 (= res!141046 (>= 0 0))))

(assert (=> d!95336 (= (lemmaDropTail!228 lt!131313 0) lt!132772)))

(declare-fun b!310251 () Bool)

(assert (=> b!310251 (= e!192915 (< 0 (size!3253 lt!131313)))))

(assert (= (and d!95336 res!141046) b!310251))

(assert (=> d!95336 m!410741))

(assert (=> d!95336 m!410741))

(assert (=> d!95336 m!410751))

(assert (=> d!95336 m!410747))

(declare-fun m!416267 () Bool)

(assert (=> d!95336 m!416267))

(declare-fun m!416269 () Bool)

(assert (=> b!310251 m!416269))

(assert (=> b!307756 d!95336))

(declare-fun b!310252 () Bool)

(declare-fun e!192916 () List!4073)

(assert (=> b!310252 (= e!192916 (drop!251 (t!43305 lt!131313) (- 0 1)))))

(declare-fun d!95338 () Bool)

(declare-fun e!192917 () Bool)

(assert (=> d!95338 e!192917))

(declare-fun res!141047 () Bool)

(assert (=> d!95338 (=> (not res!141047) (not e!192917))))

(declare-fun lt!132773 () List!4073)

(assert (=> d!95338 (= res!141047 (= ((_ map implies) (content!608 lt!132773) (content!608 lt!131313)) ((as const (InoxSet Token!1306)) true)))))

(declare-fun e!192919 () List!4073)

(assert (=> d!95338 (= lt!132773 e!192919)))

(declare-fun c!58889 () Bool)

(assert (=> d!95338 (= c!58889 ((_ is Nil!4063) lt!131313))))

(assert (=> d!95338 (= (drop!251 lt!131313 0) lt!132773)))

(declare-fun b!310253 () Bool)

(declare-fun e!192918 () Int)

(declare-fun call!18082 () Int)

(assert (=> b!310253 (= e!192918 call!18082)))

(declare-fun b!310254 () Bool)

(assert (=> b!310254 (= e!192919 Nil!4063)))

(declare-fun b!310255 () Bool)

(assert (=> b!310255 (= e!192919 e!192916)))

(declare-fun c!58887 () Bool)

(assert (=> b!310255 (= c!58887 (<= 0 0))))

(declare-fun b!310256 () Bool)

(declare-fun e!192920 () Int)

(assert (=> b!310256 (= e!192918 e!192920)))

(declare-fun c!58888 () Bool)

(assert (=> b!310256 (= c!58888 (>= 0 call!18082))))

(declare-fun b!310257 () Bool)

(assert (=> b!310257 (= e!192917 (= (size!3253 lt!132773) e!192918))))

(declare-fun c!58886 () Bool)

(assert (=> b!310257 (= c!58886 (<= 0 0))))

(declare-fun b!310258 () Bool)

(assert (=> b!310258 (= e!192916 lt!131313)))

(declare-fun bm!18077 () Bool)

(assert (=> bm!18077 (= call!18082 (size!3253 lt!131313))))

(declare-fun b!310259 () Bool)

(assert (=> b!310259 (= e!192920 0)))

(declare-fun b!310260 () Bool)

(assert (=> b!310260 (= e!192920 (- call!18082 0))))

(assert (= (and d!95338 c!58889) b!310254))

(assert (= (and d!95338 (not c!58889)) b!310255))

(assert (= (and b!310255 c!58887) b!310258))

(assert (= (and b!310255 (not c!58887)) b!310252))

(assert (= (and d!95338 res!141047) b!310257))

(assert (= (and b!310257 c!58886) b!310253))

(assert (= (and b!310257 (not c!58886)) b!310256))

(assert (= (and b!310256 c!58888) b!310259))

(assert (= (and b!310256 (not c!58888)) b!310260))

(assert (= (or b!310253 b!310256 b!310260) bm!18077))

(declare-fun m!416271 () Bool)

(assert (=> b!310252 m!416271))

(declare-fun m!416273 () Bool)

(assert (=> d!95338 m!416273))

(declare-fun m!416275 () Bool)

(assert (=> d!95338 m!416275))

(declare-fun m!416277 () Bool)

(assert (=> b!310257 m!416277))

(assert (=> bm!18077 m!416269))

(assert (=> b!307756 d!95338))

(declare-fun d!95340 () Bool)

(assert (=> d!95340 (= (tail!541 (drop!251 lt!131313 0)) (t!43305 (drop!251 lt!131313 0)))))

(assert (=> b!307756 d!95340))

(declare-fun d!95342 () Bool)

(declare-fun lt!132774 () Token!1306)

(assert (=> d!95342 (= lt!132774 (apply!894 (list!1716 lt!131157) 0))))

(assert (=> d!95342 (= lt!132774 (apply!896 (c!58278 lt!131157) 0))))

(declare-fun e!192921 () Bool)

(assert (=> d!95342 e!192921))

(declare-fun res!141048 () Bool)

(assert (=> d!95342 (=> (not res!141048) (not e!192921))))

(assert (=> d!95342 (= res!141048 (<= 0 0))))

(assert (=> d!95342 (= (apply!892 lt!131157 0) lt!132774)))

(declare-fun b!310261 () Bool)

(assert (=> b!310261 (= e!192921 (< 0 (size!3247 lt!131157)))))

(assert (= (and d!95342 res!141048) b!310261))

(assert (=> d!95342 m!410737))

(assert (=> d!95342 m!410737))

(declare-fun m!416279 () Bool)

(assert (=> d!95342 m!416279))

(declare-fun m!416281 () Bool)

(assert (=> d!95342 m!416281))

(assert (=> b!310261 m!410721))

(assert (=> b!307756 d!95342))

(declare-fun d!95344 () Bool)

(declare-fun lt!132775 () Token!1306)

(assert (=> d!95344 (contains!803 lt!131314 lt!132775)))

(declare-fun e!192923 () Token!1306)

(assert (=> d!95344 (= lt!132775 e!192923)))

(declare-fun c!58890 () Bool)

(assert (=> d!95344 (= c!58890 (= 0 0))))

(declare-fun e!192922 () Bool)

(assert (=> d!95344 e!192922))

(declare-fun res!141049 () Bool)

(assert (=> d!95344 (=> (not res!141049) (not e!192922))))

(assert (=> d!95344 (= res!141049 (<= 0 0))))

(assert (=> d!95344 (= (apply!894 lt!131314 0) lt!132775)))

(declare-fun b!310262 () Bool)

(assert (=> b!310262 (= e!192922 (< 0 (size!3253 lt!131314)))))

(declare-fun b!310263 () Bool)

(assert (=> b!310263 (= e!192923 (head!966 lt!131314))))

(declare-fun b!310264 () Bool)

(assert (=> b!310264 (= e!192923 (apply!894 (tail!541 lt!131314) (- 0 1)))))

(assert (= (and d!95344 res!141049) b!310262))

(assert (= (and d!95344 c!58890) b!310263))

(assert (= (and d!95344 (not c!58890)) b!310264))

(declare-fun m!416283 () Bool)

(assert (=> d!95344 m!416283))

(assert (=> b!310262 m!416237))

(declare-fun m!416285 () Bool)

(assert (=> b!310263 m!416285))

(declare-fun m!416287 () Bool)

(assert (=> b!310264 m!416287))

(assert (=> b!310264 m!416287))

(declare-fun m!416289 () Bool)

(assert (=> b!310264 m!416289))

(assert (=> b!307756 d!95344))

(declare-fun d!95346 () Bool)

(assert (=> d!95346 (= (head!966 (drop!251 lt!131314 0)) (apply!894 lt!131314 0))))

(declare-fun lt!132776 () Unit!5690)

(assert (=> d!95346 (= lt!132776 (choose!2702 lt!131314 0))))

(declare-fun e!192924 () Bool)

(assert (=> d!95346 e!192924))

(declare-fun res!141050 () Bool)

(assert (=> d!95346 (=> (not res!141050) (not e!192924))))

(assert (=> d!95346 (= res!141050 (>= 0 0))))

(assert (=> d!95346 (= (lemmaDropApply!236 lt!131314 0) lt!132776)))

(declare-fun b!310265 () Bool)

(assert (=> b!310265 (= e!192924 (< 0 (size!3253 lt!131314)))))

(assert (= (and d!95346 res!141050) b!310265))

(assert (=> d!95346 m!410731))

(assert (=> d!95346 m!410731))

(assert (=> d!95346 m!410733))

(assert (=> d!95346 m!410745))

(declare-fun m!416291 () Bool)

(assert (=> d!95346 m!416291))

(assert (=> b!310265 m!416237))

(assert (=> b!307756 d!95346))

(declare-fun b!310266 () Bool)

(declare-fun e!192925 () List!4073)

(assert (=> b!310266 (= e!192925 (drop!251 (t!43305 lt!131313) (- (+ 0 1) 1)))))

(declare-fun d!95348 () Bool)

(declare-fun e!192926 () Bool)

(assert (=> d!95348 e!192926))

(declare-fun res!141051 () Bool)

(assert (=> d!95348 (=> (not res!141051) (not e!192926))))

(declare-fun lt!132777 () List!4073)

(assert (=> d!95348 (= res!141051 (= ((_ map implies) (content!608 lt!132777) (content!608 lt!131313)) ((as const (InoxSet Token!1306)) true)))))

(declare-fun e!192928 () List!4073)

(assert (=> d!95348 (= lt!132777 e!192928)))

(declare-fun c!58894 () Bool)

(assert (=> d!95348 (= c!58894 ((_ is Nil!4063) lt!131313))))

(assert (=> d!95348 (= (drop!251 lt!131313 (+ 0 1)) lt!132777)))

(declare-fun b!310267 () Bool)

(declare-fun e!192927 () Int)

(declare-fun call!18083 () Int)

(assert (=> b!310267 (= e!192927 call!18083)))

(declare-fun b!310268 () Bool)

(assert (=> b!310268 (= e!192928 Nil!4063)))

(declare-fun b!310269 () Bool)

(assert (=> b!310269 (= e!192928 e!192925)))

(declare-fun c!58892 () Bool)

(assert (=> b!310269 (= c!58892 (<= (+ 0 1) 0))))

(declare-fun b!310270 () Bool)

(declare-fun e!192929 () Int)

(assert (=> b!310270 (= e!192927 e!192929)))

(declare-fun c!58893 () Bool)

(assert (=> b!310270 (= c!58893 (>= (+ 0 1) call!18083))))

(declare-fun b!310271 () Bool)

(assert (=> b!310271 (= e!192926 (= (size!3253 lt!132777) e!192927))))

(declare-fun c!58891 () Bool)

(assert (=> b!310271 (= c!58891 (<= (+ 0 1) 0))))

(declare-fun b!310272 () Bool)

(assert (=> b!310272 (= e!192925 lt!131313)))

(declare-fun bm!18078 () Bool)

(assert (=> bm!18078 (= call!18083 (size!3253 lt!131313))))

(declare-fun b!310273 () Bool)

(assert (=> b!310273 (= e!192929 0)))

(declare-fun b!310274 () Bool)

(assert (=> b!310274 (= e!192929 (- call!18083 (+ 0 1)))))

(assert (= (and d!95348 c!58894) b!310268))

(assert (= (and d!95348 (not c!58894)) b!310269))

(assert (= (and b!310269 c!58892) b!310272))

(assert (= (and b!310269 (not c!58892)) b!310266))

(assert (= (and d!95348 res!141051) b!310271))

(assert (= (and b!310271 c!58891) b!310267))

(assert (= (and b!310271 (not c!58891)) b!310270))

(assert (= (and b!310270 c!58893) b!310273))

(assert (= (and b!310270 (not c!58893)) b!310274))

(assert (= (or b!310267 b!310270 b!310274) bm!18078))

(declare-fun m!416293 () Bool)

(assert (=> b!310266 m!416293))

(declare-fun m!416295 () Bool)

(assert (=> d!95348 m!416295))

(assert (=> d!95348 m!416275))

(declare-fun m!416297 () Bool)

(assert (=> b!310271 m!416297))

(assert (=> bm!18078 m!416269))

(assert (=> b!307756 d!95348))

(declare-fun d!95350 () Bool)

(declare-fun lt!132783 () BalanceConc!2776)

(assert (=> d!95350 (= (list!1713 lt!132783) (printListTailRec!161 thiss!17480 (dropList!196 lt!131157 (+ 0 1)) (list!1713 (++!1104 (BalanceConc!2777 Empty!1384) (charsOf!424 (apply!892 lt!131157 0))))))))

(declare-fun e!192930 () BalanceConc!2776)

(assert (=> d!95350 (= lt!132783 e!192930)))

(declare-fun c!58895 () Bool)

(assert (=> d!95350 (= c!58895 (>= (+ 0 1) (size!3247 lt!131157)))))

(declare-fun e!192931 () Bool)

(assert (=> d!95350 e!192931))

(declare-fun res!141052 () Bool)

(assert (=> d!95350 (=> (not res!141052) (not e!192931))))

(assert (=> d!95350 (= res!141052 (>= (+ 0 1) 0))))

(assert (=> d!95350 (= (printTailRec!353 thiss!17480 lt!131157 (+ 0 1) (++!1104 (BalanceConc!2777 Empty!1384) (charsOf!424 (apply!892 lt!131157 0)))) lt!132783)))

(declare-fun b!310275 () Bool)

(assert (=> b!310275 (= e!192931 (<= (+ 0 1) (size!3247 lt!131157)))))

(declare-fun b!310276 () Bool)

(assert (=> b!310276 (= e!192930 (++!1104 (BalanceConc!2777 Empty!1384) (charsOf!424 (apply!892 lt!131157 0))))))

(declare-fun b!310277 () Bool)

(assert (=> b!310277 (= e!192930 (printTailRec!353 thiss!17480 lt!131157 (+ 0 1 1) (++!1104 (++!1104 (BalanceConc!2777 Empty!1384) (charsOf!424 (apply!892 lt!131157 0))) (charsOf!424 (apply!892 lt!131157 (+ 0 1))))))))

(declare-fun lt!132780 () List!4073)

(assert (=> b!310277 (= lt!132780 (list!1716 lt!131157))))

(declare-fun lt!132781 () Unit!5690)

(assert (=> b!310277 (= lt!132781 (lemmaDropApply!236 lt!132780 (+ 0 1)))))

(assert (=> b!310277 (= (head!966 (drop!251 lt!132780 (+ 0 1))) (apply!894 lt!132780 (+ 0 1)))))

(declare-fun lt!132784 () Unit!5690)

(assert (=> b!310277 (= lt!132784 lt!132781)))

(declare-fun lt!132779 () List!4073)

(assert (=> b!310277 (= lt!132779 (list!1716 lt!131157))))

(declare-fun lt!132778 () Unit!5690)

(assert (=> b!310277 (= lt!132778 (lemmaDropTail!228 lt!132779 (+ 0 1)))))

(assert (=> b!310277 (= (tail!541 (drop!251 lt!132779 (+ 0 1))) (drop!251 lt!132779 (+ 0 1 1)))))

(declare-fun lt!132782 () Unit!5690)

(assert (=> b!310277 (= lt!132782 lt!132778)))

(assert (= (and d!95350 res!141052) b!310275))

(assert (= (and d!95350 c!58895) b!310276))

(assert (= (and d!95350 (not c!58895)) b!310277))

(assert (=> d!95350 m!410727))

(declare-fun m!416299 () Bool)

(assert (=> d!95350 m!416299))

(declare-fun m!416301 () Bool)

(assert (=> d!95350 m!416301))

(assert (=> d!95350 m!410721))

(declare-fun m!416303 () Bool)

(assert (=> d!95350 m!416303))

(assert (=> d!95350 m!416301))

(assert (=> d!95350 m!416299))

(declare-fun m!416305 () Bool)

(assert (=> d!95350 m!416305))

(assert (=> b!310275 m!410721))

(declare-fun m!416307 () Bool)

(assert (=> b!310277 m!416307))

(declare-fun m!416309 () Bool)

(assert (=> b!310277 m!416309))

(declare-fun m!416311 () Bool)

(assert (=> b!310277 m!416311))

(declare-fun m!416313 () Bool)

(assert (=> b!310277 m!416313))

(declare-fun m!416315 () Bool)

(assert (=> b!310277 m!416315))

(assert (=> b!310277 m!410737))

(assert (=> b!310277 m!416315))

(declare-fun m!416317 () Bool)

(assert (=> b!310277 m!416317))

(declare-fun m!416319 () Bool)

(assert (=> b!310277 m!416319))

(assert (=> b!310277 m!416311))

(declare-fun m!416321 () Bool)

(assert (=> b!310277 m!416321))

(assert (=> b!310277 m!410727))

(assert (=> b!310277 m!416317))

(assert (=> b!310277 m!416307))

(declare-fun m!416323 () Bool)

(assert (=> b!310277 m!416323))

(declare-fun m!416325 () Bool)

(assert (=> b!310277 m!416325))

(declare-fun m!416327 () Bool)

(assert (=> b!310277 m!416327))

(assert (=> b!310277 m!416319))

(declare-fun m!416329 () Bool)

(assert (=> b!310277 m!416329))

(assert (=> b!307756 d!95350))

(declare-fun d!95352 () Bool)

(assert (=> d!95352 (= (head!966 (drop!251 lt!131314 0)) (h!9460 (drop!251 lt!131314 0)))))

(assert (=> b!307756 d!95352))

(declare-fun d!95354 () Bool)

(assert (=> d!95354 (= (list!1716 lt!131157) (list!1719 (c!58278 lt!131157)))))

(declare-fun bs!36026 () Bool)

(assert (= bs!36026 d!95354))

(declare-fun m!416331 () Bool)

(assert (=> bs!36026 m!416331))

(assert (=> b!307756 d!95354))

(declare-fun d!95356 () Bool)

(assert (=> d!95356 (= (isEmpty!2779 lt!131148) (not ((_ is Some!927) lt!131148)))))

(assert (=> d!93894 d!95356))

(declare-fun e!192933 () Bool)

(declare-fun b!310281 () Bool)

(declare-fun lt!132785 () List!4071)

(assert (=> b!310281 (= e!192933 (or (not (= lt!131385 Nil!4061)) (= lt!132785 call!17887)))))

(declare-fun d!95358 () Bool)

(assert (=> d!95358 e!192933))

(declare-fun res!141053 () Bool)

(assert (=> d!95358 (=> (not res!141053) (not e!192933))))

(assert (=> d!95358 (= res!141053 (= (content!606 lt!132785) ((_ map or) (content!606 call!17887) (content!606 lt!131385))))))

(declare-fun e!192932 () List!4071)

(assert (=> d!95358 (= lt!132785 e!192932)))

(declare-fun c!58896 () Bool)

(assert (=> d!95358 (= c!58896 ((_ is Nil!4061) call!17887))))

(assert (=> d!95358 (= (++!1102 call!17887 lt!131385) lt!132785)))

(declare-fun b!310280 () Bool)

(declare-fun res!141054 () Bool)

(assert (=> b!310280 (=> (not res!141054) (not e!192933))))

(assert (=> b!310280 (= res!141054 (= (size!3246 lt!132785) (+ (size!3246 call!17887) (size!3246 lt!131385))))))

(declare-fun b!310279 () Bool)

(assert (=> b!310279 (= e!192932 (Cons!4061 (h!9458 call!17887) (++!1102 (t!43303 call!17887) lt!131385)))))

(declare-fun b!310278 () Bool)

(assert (=> b!310278 (= e!192932 lt!131385)))

(assert (= (and d!95358 c!58896) b!310278))

(assert (= (and d!95358 (not c!58896)) b!310279))

(assert (= (and d!95358 res!141053) b!310280))

(assert (= (and b!310280 res!141054) b!310281))

(declare-fun m!416333 () Bool)

(assert (=> d!95358 m!416333))

(declare-fun m!416335 () Bool)

(assert (=> d!95358 m!416335))

(assert (=> d!95358 m!415545))

(declare-fun m!416337 () Bool)

(assert (=> b!310280 m!416337))

(declare-fun m!416339 () Bool)

(assert (=> b!310280 m!416339))

(assert (=> b!310280 m!415551))

(declare-fun m!416341 () Bool)

(assert (=> b!310279 m!416341))

(assert (=> b!307892 d!95358))

(declare-fun b!310285 () Bool)

(declare-fun e!192935 () Bool)

(declare-fun lt!132786 () List!4071)

(assert (=> b!310285 (= e!192935 (or (not (= (_2!2561 (get!1388 lt!131185)) Nil!4061)) (= lt!132786 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131185)))))))))

(declare-fun d!95360 () Bool)

(assert (=> d!95360 e!192935))

(declare-fun res!141055 () Bool)

(assert (=> d!95360 (=> (not res!141055) (not e!192935))))

(assert (=> d!95360 (= res!141055 (= (content!606 lt!132786) ((_ map or) (content!606 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131185))))) (content!606 (_2!2561 (get!1388 lt!131185))))))))

(declare-fun e!192934 () List!4071)

(assert (=> d!95360 (= lt!132786 e!192934)))

(declare-fun c!58897 () Bool)

(assert (=> d!95360 (= c!58897 ((_ is Nil!4061) (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131185))))))))

(assert (=> d!95360 (= (++!1102 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131185)))) (_2!2561 (get!1388 lt!131185))) lt!132786)))

(declare-fun b!310284 () Bool)

(declare-fun res!141056 () Bool)

(assert (=> b!310284 (=> (not res!141056) (not e!192935))))

(assert (=> b!310284 (= res!141056 (= (size!3246 lt!132786) (+ (size!3246 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131185))))) (size!3246 (_2!2561 (get!1388 lt!131185))))))))

(declare-fun b!310283 () Bool)

(assert (=> b!310283 (= e!192934 (Cons!4061 (h!9458 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131185))))) (++!1102 (t!43303 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!131185))))) (_2!2561 (get!1388 lt!131185)))))))

(declare-fun b!310282 () Bool)

(assert (=> b!310282 (= e!192934 (_2!2561 (get!1388 lt!131185)))))

(assert (= (and d!95360 c!58897) b!310282))

(assert (= (and d!95360 (not c!58897)) b!310283))

(assert (= (and d!95360 res!141055) b!310284))

(assert (= (and b!310284 res!141056) b!310285))

(declare-fun m!416343 () Bool)

(assert (=> d!95360 m!416343))

(assert (=> d!95360 m!410401))

(declare-fun m!416345 () Bool)

(assert (=> d!95360 m!416345))

(declare-fun m!416347 () Bool)

(assert (=> d!95360 m!416347))

(declare-fun m!416349 () Bool)

(assert (=> b!310284 m!416349))

(assert (=> b!310284 m!410401))

(declare-fun m!416351 () Bool)

(assert (=> b!310284 m!416351))

(assert (=> b!310284 m!410423))

(declare-fun m!416353 () Bool)

(assert (=> b!310283 m!416353))

(assert (=> b!307548 d!95360))

(assert (=> b!307548 d!95054))

(assert (=> b!307548 d!95056))

(assert (=> b!307548 d!94722))

(assert (=> b!308240 d!94842))

(declare-fun b!310286 () Bool)

(declare-fun res!141062 () Bool)

(declare-fun e!192936 () Bool)

(assert (=> b!310286 (=> (not res!141062) (not e!192936))))

(declare-fun lt!132788 () Option!928)

(assert (=> b!310286 (= res!141062 (matchR!323 (regex!781 (rule!1394 (_1!2561 (get!1388 lt!132788)))) (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!132788))))))))

(declare-fun b!310287 () Bool)

(assert (=> b!310287 (= e!192936 (contains!804 (t!43304 rules!1920) (rule!1394 (_1!2561 (get!1388 lt!132788)))))))

(declare-fun b!310288 () Bool)

(declare-fun res!141060 () Bool)

(assert (=> b!310288 (=> (not res!141060) (not e!192936))))

(assert (=> b!310288 (= res!141060 (= (++!1102 (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!132788)))) (_2!2561 (get!1388 lt!132788))) lt!131170))))

(declare-fun d!95362 () Bool)

(declare-fun e!192938 () Bool)

(assert (=> d!95362 e!192938))

(declare-fun res!141061 () Bool)

(assert (=> d!95362 (=> res!141061 e!192938)))

(assert (=> d!95362 (= res!141061 (isEmpty!2779 lt!132788))))

(declare-fun e!192937 () Option!928)

(assert (=> d!95362 (= lt!132788 e!192937)))

(declare-fun c!58898 () Bool)

(assert (=> d!95362 (= c!58898 (and ((_ is Cons!4062) (t!43304 rules!1920)) ((_ is Nil!4062) (t!43304 (t!43304 rules!1920)))))))

(declare-fun lt!132791 () Unit!5690)

(declare-fun lt!132790 () Unit!5690)

(assert (=> d!95362 (= lt!132791 lt!132790)))

(assert (=> d!95362 (isPrefix!441 lt!131170 lt!131170)))

(assert (=> d!95362 (= lt!132790 (lemmaIsPrefixRefl!238 lt!131170 lt!131170))))

(assert (=> d!95362 (rulesValidInductive!233 thiss!17480 (t!43304 rules!1920))))

(assert (=> d!95362 (= (maxPrefix!383 thiss!17480 (t!43304 rules!1920) lt!131170) lt!132788)))

(declare-fun bm!18079 () Bool)

(declare-fun call!18084 () Option!928)

(assert (=> bm!18079 (= call!18084 (maxPrefixOneRule!172 thiss!17480 (h!9459 (t!43304 rules!1920)) lt!131170))))

(declare-fun b!310289 () Bool)

(declare-fun res!141057 () Bool)

(assert (=> b!310289 (=> (not res!141057) (not e!192936))))

(assert (=> b!310289 (= res!141057 (< (size!3246 (_2!2561 (get!1388 lt!132788))) (size!3246 lt!131170)))))

(declare-fun b!310290 () Bool)

(assert (=> b!310290 (= e!192937 call!18084)))

(declare-fun b!310291 () Bool)

(assert (=> b!310291 (= e!192938 e!192936)))

(declare-fun res!141059 () Bool)

(assert (=> b!310291 (=> (not res!141059) (not e!192936))))

(assert (=> b!310291 (= res!141059 (isDefined!767 lt!132788))))

(declare-fun b!310292 () Bool)

(declare-fun res!141058 () Bool)

(assert (=> b!310292 (=> (not res!141058) (not e!192936))))

(assert (=> b!310292 (= res!141058 (= (value!26574 (_1!2561 (get!1388 lt!132788))) (apply!891 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!132788)))) (seqFromList!928 (originalCharacters!824 (_1!2561 (get!1388 lt!132788)))))))))

(declare-fun b!310293 () Bool)

(declare-fun res!141063 () Bool)

(assert (=> b!310293 (=> (not res!141063) (not e!192936))))

(assert (=> b!310293 (= res!141063 (= (list!1713 (charsOf!424 (_1!2561 (get!1388 lt!132788)))) (originalCharacters!824 (_1!2561 (get!1388 lt!132788)))))))

(declare-fun b!310294 () Bool)

(declare-fun lt!132789 () Option!928)

(declare-fun lt!132787 () Option!928)

(assert (=> b!310294 (= e!192937 (ite (and ((_ is None!927) lt!132789) ((_ is None!927) lt!132787)) None!927 (ite ((_ is None!927) lt!132787) lt!132789 (ite ((_ is None!927) lt!132789) lt!132787 (ite (>= (size!3243 (_1!2561 (v!14932 lt!132789))) (size!3243 (_1!2561 (v!14932 lt!132787)))) lt!132789 lt!132787)))))))

(assert (=> b!310294 (= lt!132789 call!18084)))

(assert (=> b!310294 (= lt!132787 (maxPrefix!383 thiss!17480 (t!43304 (t!43304 rules!1920)) lt!131170))))

(assert (= (and d!95362 c!58898) b!310290))

(assert (= (and d!95362 (not c!58898)) b!310294))

(assert (= (or b!310290 b!310294) bm!18079))

(assert (= (and d!95362 (not res!141061)) b!310291))

(assert (= (and b!310291 res!141059) b!310293))

(assert (= (and b!310293 res!141063) b!310289))

(assert (= (and b!310289 res!141057) b!310288))

(assert (= (and b!310288 res!141060) b!310292))

(assert (= (and b!310292 res!141058) b!310286))

(assert (= (and b!310286 res!141062) b!310287))

(declare-fun m!416355 () Bool)

(assert (=> b!310294 m!416355))

(declare-fun m!416357 () Bool)

(assert (=> b!310288 m!416357))

(declare-fun m!416359 () Bool)

(assert (=> b!310288 m!416359))

(assert (=> b!310288 m!416359))

(declare-fun m!416361 () Bool)

(assert (=> b!310288 m!416361))

(assert (=> b!310288 m!416361))

(declare-fun m!416363 () Bool)

(assert (=> b!310288 m!416363))

(assert (=> b!310293 m!416357))

(assert (=> b!310293 m!416359))

(assert (=> b!310293 m!416359))

(assert (=> b!310293 m!416361))

(assert (=> b!310292 m!416357))

(declare-fun m!416365 () Bool)

(assert (=> b!310292 m!416365))

(assert (=> b!310292 m!416365))

(declare-fun m!416367 () Bool)

(assert (=> b!310292 m!416367))

(assert (=> b!310286 m!416357))

(assert (=> b!310286 m!416359))

(assert (=> b!310286 m!416359))

(assert (=> b!310286 m!416361))

(assert (=> b!310286 m!416361))

(declare-fun m!416369 () Bool)

(assert (=> b!310286 m!416369))

(declare-fun m!416371 () Bool)

(assert (=> bm!18079 m!416371))

(assert (=> b!310287 m!416357))

(declare-fun m!416373 () Bool)

(assert (=> b!310287 m!416373))

(declare-fun m!416375 () Bool)

(assert (=> d!95362 m!416375))

(assert (=> d!95362 m!411331))

(assert (=> d!95362 m!411333))

(assert (=> d!95362 m!415145))

(assert (=> b!310289 m!416357))

(declare-fun m!416377 () Bool)

(assert (=> b!310289 m!416377))

(assert (=> b!310289 m!411253))

(declare-fun m!416379 () Bool)

(assert (=> b!310291 m!416379))

(assert (=> b!308068 d!95362))

(declare-fun d!95364 () Bool)

(assert (=> d!95364 (= (list!1713 lt!131504) (list!1717 (c!58276 lt!131504)))))

(declare-fun bs!36027 () Bool)

(assert (= bs!36027 d!95364))

(declare-fun m!416381 () Bool)

(assert (=> bs!36027 m!416381))

(assert (=> d!94066 d!95364))

(declare-fun d!95366 () Bool)

(assert (=> d!95366 (= (list!1713 lt!131321) (list!1717 (c!58276 lt!131321)))))

(declare-fun bs!36028 () Bool)

(assert (= bs!36028 d!95366))

(declare-fun m!416383 () Bool)

(assert (=> bs!36028 m!416383))

(assert (=> d!93976 d!95366))

(declare-fun d!95368 () Bool)

(declare-fun c!58899 () Bool)

(assert (=> d!95368 (= c!58899 ((_ is Cons!4063) (list!1716 lt!131157)))))

(declare-fun e!192939 () List!4071)

(assert (=> d!95368 (= (printList!341 thiss!17480 (list!1716 lt!131157)) e!192939)))

(declare-fun b!310295 () Bool)

(assert (=> b!310295 (= e!192939 (++!1102 (list!1713 (charsOf!424 (h!9460 (list!1716 lt!131157)))) (printList!341 thiss!17480 (t!43305 (list!1716 lt!131157)))))))

(declare-fun b!310296 () Bool)

(assert (=> b!310296 (= e!192939 Nil!4061)))

(assert (= (and d!95368 c!58899) b!310295))

(assert (= (and d!95368 (not c!58899)) b!310296))

(declare-fun m!416385 () Bool)

(assert (=> b!310295 m!416385))

(assert (=> b!310295 m!416385))

(declare-fun m!416387 () Bool)

(assert (=> b!310295 m!416387))

(declare-fun m!416389 () Bool)

(assert (=> b!310295 m!416389))

(assert (=> b!310295 m!416387))

(assert (=> b!310295 m!416389))

(declare-fun m!416391 () Bool)

(assert (=> b!310295 m!416391))

(assert (=> d!93976 d!95368))

(assert (=> d!93976 d!95354))

(assert (=> d!93976 d!93970))

(declare-fun d!95370 () Bool)

(declare-fun lt!132792 () Bool)

(assert (=> d!95370 (= lt!132792 (select (content!611 rules!1920) (rule!1394 (_1!2561 (get!1388 lt!131190)))))))

(declare-fun e!192941 () Bool)

(assert (=> d!95370 (= lt!132792 e!192941)))

(declare-fun res!141064 () Bool)

(assert (=> d!95370 (=> (not res!141064) (not e!192941))))

(assert (=> d!95370 (= res!141064 ((_ is Cons!4062) rules!1920))))

(assert (=> d!95370 (= (contains!804 rules!1920 (rule!1394 (_1!2561 (get!1388 lt!131190)))) lt!132792)))

(declare-fun b!310297 () Bool)

(declare-fun e!192940 () Bool)

(assert (=> b!310297 (= e!192941 e!192940)))

(declare-fun res!141065 () Bool)

(assert (=> b!310297 (=> res!141065 e!192940)))

(assert (=> b!310297 (= res!141065 (= (h!9459 rules!1920) (rule!1394 (_1!2561 (get!1388 lt!131190)))))))

(declare-fun b!310298 () Bool)

(assert (=> b!310298 (= e!192940 (contains!804 (t!43304 rules!1920) (rule!1394 (_1!2561 (get!1388 lt!131190)))))))

(assert (= (and d!95370 res!141064) b!310297))

(assert (= (and b!310297 (not res!141065)) b!310298))

(assert (=> d!95370 m!415713))

(declare-fun m!416393 () Bool)

(assert (=> d!95370 m!416393))

(declare-fun m!416395 () Bool)

(assert (=> b!310298 m!416395))

(assert (=> b!307556 d!95370))

(assert (=> b!307556 d!94734))

(declare-fun d!95372 () Bool)

(assert (=> d!95372 (= (isDefined!767 lt!131185) (not (isEmpty!2779 lt!131185)))))

(declare-fun bs!36029 () Bool)

(assert (= bs!36029 d!95372))

(assert (=> bs!36029 m!410415))

(assert (=> b!307551 d!95372))

(assert (=> bm!17925 d!94688))

(declare-fun lt!132793 () List!4071)

(declare-fun e!192943 () Bool)

(declare-fun b!310302 () Bool)

(assert (=> b!310302 (= e!192943 (or (not (= lt!131151 Nil!4061)) (= lt!132793 (t!43303 lt!131150))))))

(declare-fun d!95374 () Bool)

(assert (=> d!95374 e!192943))

(declare-fun res!141066 () Bool)

(assert (=> d!95374 (=> (not res!141066) (not e!192943))))

(assert (=> d!95374 (= res!141066 (= (content!606 lt!132793) ((_ map or) (content!606 (t!43303 lt!131150)) (content!606 lt!131151))))))

(declare-fun e!192942 () List!4071)

(assert (=> d!95374 (= lt!132793 e!192942)))

(declare-fun c!58900 () Bool)

(assert (=> d!95374 (= c!58900 ((_ is Nil!4061) (t!43303 lt!131150)))))

(assert (=> d!95374 (= (++!1102 (t!43303 lt!131150) lt!131151) lt!132793)))

(declare-fun b!310301 () Bool)

(declare-fun res!141067 () Bool)

(assert (=> b!310301 (=> (not res!141067) (not e!192943))))

(assert (=> b!310301 (= res!141067 (= (size!3246 lt!132793) (+ (size!3246 (t!43303 lt!131150)) (size!3246 lt!131151))))))

(declare-fun b!310300 () Bool)

(assert (=> b!310300 (= e!192942 (Cons!4061 (h!9458 (t!43303 lt!131150)) (++!1102 (t!43303 (t!43303 lt!131150)) lt!131151)))))

(declare-fun b!310299 () Bool)

(assert (=> b!310299 (= e!192942 lt!131151)))

(assert (= (and d!95374 c!58900) b!310299))

(assert (= (and d!95374 (not c!58900)) b!310300))

(assert (= (and d!95374 res!141066) b!310301))

(assert (= (and b!310301 res!141067) b!310302))

(declare-fun m!416397 () Bool)

(assert (=> d!95374 m!416397))

(assert (=> d!95374 m!413011))

(assert (=> d!95374 m!410691))

(declare-fun m!416399 () Bool)

(assert (=> b!310301 m!416399))

(assert (=> b!310301 m!413733))

(assert (=> b!310301 m!410695))

(declare-fun m!416401 () Bool)

(assert (=> b!310300 m!416401))

(assert (=> b!307736 d!95374))

(declare-fun d!95376 () Bool)

(assert (=> d!95376 (= (list!1713 lt!131317) (list!1717 (c!58276 lt!131317)))))

(declare-fun bs!36030 () Bool)

(assert (= bs!36030 d!95376))

(declare-fun m!416403 () Bool)

(assert (=> bs!36030 m!416403))

(assert (=> d!93970 d!95376))

(declare-fun d!95378 () Bool)

(declare-fun lt!132807 () List!4071)

(assert (=> d!95378 (= lt!132807 (++!1102 (list!1713 (BalanceConc!2777 Empty!1384)) (printList!341 thiss!17480 (dropList!196 lt!131157 0))))))

(declare-fun e!192946 () List!4071)

(assert (=> d!95378 (= lt!132807 e!192946)))

(declare-fun c!58903 () Bool)

(assert (=> d!95378 (= c!58903 ((_ is Cons!4063) (dropList!196 lt!131157 0)))))

(assert (=> d!95378 (= (printListTailRec!161 thiss!17480 (dropList!196 lt!131157 0) (list!1713 (BalanceConc!2777 Empty!1384))) lt!132807)))

(declare-fun b!310307 () Bool)

(assert (=> b!310307 (= e!192946 (printListTailRec!161 thiss!17480 (t!43305 (dropList!196 lt!131157 0)) (++!1102 (list!1713 (BalanceConc!2777 Empty!1384)) (list!1713 (charsOf!424 (h!9460 (dropList!196 lt!131157 0)))))))))

(declare-fun lt!132806 () List!4071)

(assert (=> b!310307 (= lt!132806 (list!1713 (charsOf!424 (h!9460 (dropList!196 lt!131157 0)))))))

(declare-fun lt!132808 () List!4071)

(assert (=> b!310307 (= lt!132808 (printList!341 thiss!17480 (t!43305 (dropList!196 lt!131157 0))))))

(declare-fun lt!132804 () Unit!5690)

(assert (=> b!310307 (= lt!132804 (lemmaConcatAssociativity!488 (list!1713 (BalanceConc!2777 Empty!1384)) lt!132806 lt!132808))))

(assert (=> b!310307 (= (++!1102 (++!1102 (list!1713 (BalanceConc!2777 Empty!1384)) lt!132806) lt!132808) (++!1102 (list!1713 (BalanceConc!2777 Empty!1384)) (++!1102 lt!132806 lt!132808)))))

(declare-fun lt!132805 () Unit!5690)

(assert (=> b!310307 (= lt!132805 lt!132804)))

(declare-fun b!310308 () Bool)

(assert (=> b!310308 (= e!192946 (list!1713 (BalanceConc!2777 Empty!1384)))))

(assert (= (and d!95378 c!58903) b!310307))

(assert (= (and d!95378 (not c!58903)) b!310308))

(assert (=> d!95378 m!410719))

(declare-fun m!416405 () Bool)

(assert (=> d!95378 m!416405))

(assert (=> d!95378 m!410717))

(assert (=> d!95378 m!416405))

(declare-fun m!416407 () Bool)

(assert (=> d!95378 m!416407))

(declare-fun m!416409 () Bool)

(assert (=> b!310307 m!416409))

(declare-fun m!416411 () Bool)

(assert (=> b!310307 m!416411))

(declare-fun m!416413 () Bool)

(assert (=> b!310307 m!416413))

(declare-fun m!416415 () Bool)

(assert (=> b!310307 m!416415))

(assert (=> b!310307 m!410717))

(declare-fun m!416417 () Bool)

(assert (=> b!310307 m!416417))

(assert (=> b!310307 m!410717))

(declare-fun m!416419 () Bool)

(assert (=> b!310307 m!416419))

(assert (=> b!310307 m!416409))

(declare-fun m!416421 () Bool)

(assert (=> b!310307 m!416421))

(assert (=> b!310307 m!410717))

(assert (=> b!310307 m!416413))

(assert (=> b!310307 m!416421))

(assert (=> b!310307 m!416419))

(assert (=> b!310307 m!410717))

(declare-fun m!416423 () Bool)

(assert (=> b!310307 m!416423))

(declare-fun m!416425 () Bool)

(assert (=> b!310307 m!416425))

(declare-fun m!416427 () Bool)

(assert (=> b!310307 m!416427))

(assert (=> b!310307 m!416423))

(assert (=> d!93970 d!95378))

(declare-fun d!95380 () Bool)

(assert (=> d!95380 (= (dropList!196 lt!131157 0) (drop!251 (list!1719 (c!58278 lt!131157)) 0))))

(declare-fun bs!36031 () Bool)

(assert (= bs!36031 d!95380))

(assert (=> bs!36031 m!416331))

(assert (=> bs!36031 m!416331))

(declare-fun m!416429 () Bool)

(assert (=> bs!36031 m!416429))

(assert (=> d!93970 d!95380))

(assert (=> d!93970 d!95194))

(declare-fun d!95382 () Bool)

(assert (=> d!95382 (= (list!1713 (BalanceConc!2777 Empty!1384)) (list!1717 (c!58276 (BalanceConc!2777 Empty!1384))))))

(declare-fun bs!36032 () Bool)

(assert (= bs!36032 d!95382))

(declare-fun m!416431 () Bool)

(assert (=> bs!36032 m!416431))

(assert (=> d!93970 d!95382))

(declare-fun d!95384 () Bool)

(declare-fun lt!132809 () Int)

(assert (=> d!95384 (>= lt!132809 0)))

(declare-fun e!192947 () Int)

(assert (=> d!95384 (= lt!132809 e!192947)))

(declare-fun c!58904 () Bool)

(assert (=> d!95384 (= c!58904 ((_ is Nil!4061) lt!131511))))

(assert (=> d!95384 (= (size!3246 lt!131511) lt!132809)))

(declare-fun b!310309 () Bool)

(assert (=> b!310309 (= e!192947 0)))

(declare-fun b!310310 () Bool)

(assert (=> b!310310 (= e!192947 (+ 1 (size!3246 (t!43303 lt!131511))))))

(assert (= (and d!95384 c!58904) b!310309))

(assert (= (and d!95384 (not c!58904)) b!310310))

(declare-fun m!416433 () Bool)

(assert (=> b!310310 m!416433))

(assert (=> b!308044 d!95384))

(assert (=> b!308044 d!94752))

(assert (=> b!308044 d!95072))

(declare-fun d!95386 () Bool)

(declare-fun lt!132810 () Bool)

(assert (=> d!95386 (= lt!132810 (isEmpty!2775 (list!1713 (_2!2562 (lex!459 thiss!17480 rules!1920 (print!392 thiss!17480 (singletonSeq!327 separatorToken!170)))))))))

(assert (=> d!95386 (= lt!132810 (isEmpty!2788 (c!58276 (_2!2562 (lex!459 thiss!17480 rules!1920 (print!392 thiss!17480 (singletonSeq!327 separatorToken!170)))))))))

(assert (=> d!95386 (= (isEmpty!2782 (_2!2562 (lex!459 thiss!17480 rules!1920 (print!392 thiss!17480 (singletonSeq!327 separatorToken!170))))) lt!132810)))

(declare-fun bs!36033 () Bool)

(assert (= bs!36033 d!95386))

(declare-fun m!416435 () Bool)

(assert (=> bs!36033 m!416435))

(assert (=> bs!36033 m!416435))

(declare-fun m!416437 () Bool)

(assert (=> bs!36033 m!416437))

(declare-fun m!416439 () Bool)

(assert (=> bs!36033 m!416439))

(assert (=> b!307640 d!95386))

(assert (=> b!307640 d!95154))

(assert (=> b!307640 d!95158))

(assert (=> b!307640 d!95150))

(declare-fun d!95388 () Bool)

(assert (=> d!95388 (= (isEmpty!2779 lt!131185) (not ((_ is Some!927) lt!131185)))))

(assert (=> d!93896 d!95388))

(declare-fun b!310313 () Bool)

(declare-fun e!192948 () Bool)

(assert (=> b!310313 (= e!192948 (isPrefix!441 (tail!542 lt!131150) (tail!542 lt!131150)))))

(declare-fun b!310311 () Bool)

(declare-fun e!192950 () Bool)

(assert (=> b!310311 (= e!192950 e!192948)))

(declare-fun res!141070 () Bool)

(assert (=> b!310311 (=> (not res!141070) (not e!192948))))

(assert (=> b!310311 (= res!141070 (not ((_ is Nil!4061) lt!131150)))))

(declare-fun b!310314 () Bool)

(declare-fun e!192949 () Bool)

(assert (=> b!310314 (= e!192949 (>= (size!3246 lt!131150) (size!3246 lt!131150)))))

(declare-fun d!95390 () Bool)

(assert (=> d!95390 e!192949))

(declare-fun res!141068 () Bool)

(assert (=> d!95390 (=> res!141068 e!192949)))

(declare-fun lt!132811 () Bool)

(assert (=> d!95390 (= res!141068 (not lt!132811))))

(assert (=> d!95390 (= lt!132811 e!192950)))

(declare-fun res!141069 () Bool)

(assert (=> d!95390 (=> res!141069 e!192950)))

(assert (=> d!95390 (= res!141069 ((_ is Nil!4061) lt!131150))))

(assert (=> d!95390 (= (isPrefix!441 lt!131150 lt!131150) lt!132811)))

(declare-fun b!310312 () Bool)

(declare-fun res!141071 () Bool)

(assert (=> b!310312 (=> (not res!141071) (not e!192948))))

(assert (=> b!310312 (= res!141071 (= (head!968 lt!131150) (head!968 lt!131150)))))

(assert (= (and d!95390 (not res!141069)) b!310311))

(assert (= (and b!310311 res!141070) b!310312))

(assert (= (and b!310312 res!141071) b!310313))

(assert (= (and d!95390 (not res!141068)) b!310314))

(assert (=> b!310313 m!411339))

(assert (=> b!310313 m!411339))

(assert (=> b!310313 m!411339))

(assert (=> b!310313 m!411339))

(declare-fun m!416441 () Bool)

(assert (=> b!310313 m!416441))

(assert (=> b!310314 m!410425))

(assert (=> b!310314 m!410425))

(assert (=> b!310312 m!411347))

(assert (=> b!310312 m!411347))

(assert (=> d!93896 d!95390))

(declare-fun d!95392 () Bool)

(assert (=> d!95392 (isPrefix!441 lt!131150 lt!131150)))

(declare-fun lt!132812 () Unit!5690)

(assert (=> d!95392 (= lt!132812 (choose!2707 lt!131150 lt!131150))))

(assert (=> d!95392 (= (lemmaIsPrefixRefl!238 lt!131150 lt!131150) lt!132812)))

(declare-fun bs!36034 () Bool)

(assert (= bs!36034 d!95392))

(assert (=> bs!36034 m!410417))

(declare-fun m!416443 () Bool)

(assert (=> bs!36034 m!416443))

(assert (=> d!93896 d!95392))

(assert (=> d!93896 d!95068))

(declare-fun b!310317 () Bool)

(declare-fun e!192953 () Bool)

(assert (=> b!310317 (= e!192953 true)))

(declare-fun b!310316 () Bool)

(declare-fun e!192952 () Bool)

(assert (=> b!310316 (= e!192952 e!192953)))

(declare-fun b!310315 () Bool)

(declare-fun e!192951 () Bool)

(assert (=> b!310315 (= e!192951 e!192952)))

(assert (=> b!308017 e!192951))

(assert (= b!310316 b!310317))

(assert (= b!310315 b!310316))

(assert (= (and b!308017 ((_ is Cons!4062) (t!43304 rules!1920))) b!310315))

(assert (=> b!310317 (< (dynLambda!2219 order!3297 (toValue!1540 (transformation!781 (h!9459 (t!43304 rules!1920))))) (dynLambda!2220 order!3299 lambda!10522))))

(assert (=> b!310317 (< (dynLambda!2221 order!3301 (toChars!1399 (transformation!781 (h!9459 (t!43304 rules!1920))))) (dynLambda!2220 order!3299 lambda!10522))))

(declare-fun b!310320 () Bool)

(declare-fun e!192954 () Bool)

(declare-fun tp!109225 () Bool)

(assert (=> b!310320 (= e!192954 tp!109225)))

(declare-fun b!310318 () Bool)

(assert (=> b!310318 (= e!192954 tp_is_empty!1883)))

(assert (=> b!308318 (= tp!109080 e!192954)))

(declare-fun b!310321 () Bool)

(declare-fun tp!109226 () Bool)

(declare-fun tp!109224 () Bool)

(assert (=> b!310321 (= e!192954 (and tp!109226 tp!109224))))

(declare-fun b!310319 () Bool)

(declare-fun tp!109223 () Bool)

(declare-fun tp!109227 () Bool)

(assert (=> b!310319 (= e!192954 (and tp!109223 tp!109227))))

(assert (= (and b!308318 ((_ is ElementMatch!1005) (regOne!2522 (regex!781 (h!9459 rules!1920))))) b!310318))

(assert (= (and b!308318 ((_ is Concat!1809) (regOne!2522 (regex!781 (h!9459 rules!1920))))) b!310319))

(assert (= (and b!308318 ((_ is Star!1005) (regOne!2522 (regex!781 (h!9459 rules!1920))))) b!310320))

(assert (= (and b!308318 ((_ is Union!1005) (regOne!2522 (regex!781 (h!9459 rules!1920))))) b!310321))

(declare-fun b!310324 () Bool)

(declare-fun e!192955 () Bool)

(declare-fun tp!109230 () Bool)

(assert (=> b!310324 (= e!192955 tp!109230)))

(declare-fun b!310322 () Bool)

(assert (=> b!310322 (= e!192955 tp_is_empty!1883)))

(assert (=> b!308318 (= tp!109084 e!192955)))

(declare-fun b!310325 () Bool)

(declare-fun tp!109231 () Bool)

(declare-fun tp!109229 () Bool)

(assert (=> b!310325 (= e!192955 (and tp!109231 tp!109229))))

(declare-fun b!310323 () Bool)

(declare-fun tp!109228 () Bool)

(declare-fun tp!109232 () Bool)

(assert (=> b!310323 (= e!192955 (and tp!109228 tp!109232))))

(assert (= (and b!308318 ((_ is ElementMatch!1005) (regTwo!2522 (regex!781 (h!9459 rules!1920))))) b!310322))

(assert (= (and b!308318 ((_ is Concat!1809) (regTwo!2522 (regex!781 (h!9459 rules!1920))))) b!310323))

(assert (= (and b!308318 ((_ is Star!1005) (regTwo!2522 (regex!781 (h!9459 rules!1920))))) b!310324))

(assert (= (and b!308318 ((_ is Union!1005) (regTwo!2522 (regex!781 (h!9459 rules!1920))))) b!310325))

(declare-fun b!310328 () Bool)

(declare-fun e!192956 () Bool)

(declare-fun tp!109235 () Bool)

(assert (=> b!310328 (= e!192956 tp!109235)))

(declare-fun b!310326 () Bool)

(assert (=> b!310326 (= e!192956 tp_is_empty!1883)))

(assert (=> b!308287 (= tp!109052 e!192956)))

(declare-fun b!310329 () Bool)

(declare-fun tp!109236 () Bool)

(declare-fun tp!109234 () Bool)

(assert (=> b!310329 (= e!192956 (and tp!109236 tp!109234))))

(declare-fun b!310327 () Bool)

(declare-fun tp!109233 () Bool)

(declare-fun tp!109237 () Bool)

(assert (=> b!310327 (= e!192956 (and tp!109233 tp!109237))))

(assert (= (and b!308287 ((_ is ElementMatch!1005) (regex!781 (rule!1394 (h!9460 (t!43305 tokens!465)))))) b!310326))

(assert (= (and b!308287 ((_ is Concat!1809) (regex!781 (rule!1394 (h!9460 (t!43305 tokens!465)))))) b!310327))

(assert (= (and b!308287 ((_ is Star!1005) (regex!781 (rule!1394 (h!9460 (t!43305 tokens!465)))))) b!310328))

(assert (= (and b!308287 ((_ is Union!1005) (regex!781 (rule!1394 (h!9460 (t!43305 tokens!465)))))) b!310329))

(declare-fun b!310330 () Bool)

(declare-fun e!192957 () Bool)

(declare-fun tp!109238 () Bool)

(assert (=> b!310330 (= e!192957 (and tp_is_empty!1883 tp!109238))))

(assert (=> b!308286 (= tp!109050 e!192957)))

(assert (= (and b!308286 ((_ is Cons!4061) (originalCharacters!824 (h!9460 (t!43305 tokens!465))))) b!310330))

(declare-fun b!310334 () Bool)

(declare-fun b_free!11053 () Bool)

(declare-fun b_next!11053 () Bool)

(assert (=> b!310334 (= b_free!11053 (not b_next!11053))))

(declare-fun tb!19753 () Bool)

(declare-fun t!43753 () Bool)

(assert (=> (and b!310334 (= (toValue!1540 (transformation!781 (rule!1394 (h!9460 (t!43305 (t!43305 tokens!465)))))) (toValue!1540 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131185)))))) t!43753) tb!19753))

(declare-fun result!23762 () Bool)

(assert (= result!23762 result!23530))

(assert (=> d!94724 t!43753))

(declare-fun tb!19755 () Bool)

(declare-fun t!43755 () Bool)

(assert (=> (and b!310334 (= (toValue!1540 (transformation!781 (rule!1394 (h!9460 (t!43305 (t!43305 tokens!465)))))) (toValue!1540 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131530)))))) t!43755) tb!19755))

(declare-fun result!23764 () Bool)

(assert (= result!23764 result!23602))

(assert (=> d!95024 t!43755))

(declare-fun tb!19757 () Bool)

(declare-fun t!43757 () Bool)

(assert (=> (and b!310334 (= (toValue!1540 (transformation!781 (rule!1394 (h!9460 (t!43305 (t!43305 tokens!465)))))) (toValue!1540 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131190)))))) t!43757) tb!19757))

(declare-fun result!23766 () Bool)

(assert (= result!23766 result!23692))

(assert (=> d!95094 t!43757))

(declare-fun b_and!26369 () Bool)

(declare-fun tp!109240 () Bool)

(assert (=> b!310334 (= tp!109240 (and (=> t!43753 result!23762) (=> t!43755 result!23764) (=> t!43757 result!23766) b_and!26369))))

(declare-fun b_free!11055 () Bool)

(declare-fun b_next!11055 () Bool)

(assert (=> b!310334 (= b_free!11055 (not b_next!11055))))

(declare-fun t!43759 () Bool)

(declare-fun tb!19759 () Bool)

(assert (=> (and b!310334 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 (t!43305 tokens!465)))))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465))))) t!43759) tb!19759))

(declare-fun result!23768 () Bool)

(assert (= result!23768 result!23336))

(assert (=> d!94066 t!43759))

(declare-fun tb!19761 () Bool)

(declare-fun t!43761 () Bool)

(assert (=> (and b!310334 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 (t!43305 tokens!465)))))) (toChars!1399 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131190)))))) t!43761) tb!19761))

(declare-fun result!23770 () Bool)

(assert (= result!23770 result!23542))

(assert (=> d!94732 t!43761))

(declare-fun t!43763 () Bool)

(declare-fun tb!19763 () Bool)

(assert (=> (and b!310334 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 (t!43305 tokens!465)))))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465)))))) t!43763) tb!19763))

(declare-fun result!23772 () Bool)

(assert (= result!23772 result!23722))

(assert (=> d!95172 t!43763))

(declare-fun tb!19765 () Bool)

(declare-fun t!43765 () Bool)

(assert (=> (and b!310334 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 (t!43305 tokens!465)))))) (toChars!1399 (transformation!781 (rule!1394 (ite c!58409 call!17919 call!17922))))) t!43765) tb!19765))

(declare-fun result!23774 () Bool)

(assert (= result!23774 result!23470))

(assert (=> d!94528 t!43765))

(declare-fun t!43767 () Bool)

(declare-fun tb!19767 () Bool)

(assert (=> (and b!310334 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 (t!43305 tokens!465)))))) (toChars!1399 (transformation!781 (rule!1394 separatorToken!170)))) t!43767) tb!19767))

(declare-fun result!23776 () Bool)

(assert (= result!23776 result!23344))

(assert (=> b!307641 t!43767))

(declare-fun t!43769 () Bool)

(declare-fun tb!19769 () Bool)

(assert (=> (and b!310334 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 (t!43305 tokens!465)))))) (toChars!1399 (transformation!781 (rule!1394 (ite c!58402 separatorToken!170 call!17914))))) t!43769) tb!19769))

(declare-fun result!23778 () Bool)

(assert (= result!23778 result!23510))

(assert (=> d!94668 t!43769))

(declare-fun t!43771 () Bool)

(declare-fun tb!19771 () Bool)

(assert (=> (and b!310334 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 (t!43305 tokens!465)))))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 (Cons!4063 (h!9460 tokens!465) Nil!4063)))))) t!43771) tb!19771))

(declare-fun result!23780 () Bool)

(assert (= result!23780 result!23742))

(assert (=> d!95294 t!43771))

(assert (=> b!307583 t!43759))

(declare-fun t!43773 () Bool)

(declare-fun tb!19773 () Bool)

(assert (=> (and b!310334 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 (t!43305 tokens!465)))))) (toChars!1399 (transformation!781 (rule!1394 (ite c!58411 separatorToken!170 call!17922))))) t!43773) tb!19773))

(declare-fun result!23782 () Bool)

(assert (= result!23782 result!23732))

(assert (=> d!95212 t!43773))

(declare-fun t!43775 () Bool)

(declare-fun tb!19775 () Bool)

(assert (=> (and b!310334 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 (t!43305 tokens!465)))))) (toChars!1399 (transformation!781 (rule!1394 (apply!892 lt!131159 0))))) t!43775) tb!19775))

(declare-fun result!23784 () Bool)

(assert (= result!23784 result!23702))

(assert (=> d!95140 t!43775))

(declare-fun t!43777 () Bool)

(declare-fun tb!19777 () Bool)

(assert (=> (and b!310334 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 (t!43305 tokens!465)))))) (toChars!1399 (transformation!781 (rule!1394 (ite c!58400 call!17911 call!17914))))) t!43777) tb!19777))

(declare-fun result!23786 () Bool)

(assert (= result!23786 result!23712))

(assert (=> d!95148 t!43777))

(declare-fun tb!19779 () Bool)

(declare-fun t!43779 () Bool)

(assert (=> (and b!310334 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 (t!43305 tokens!465)))))) (toChars!1399 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131185)))))) t!43779) tb!19779))

(declare-fun result!23788 () Bool)

(assert (= result!23788 result!23618))

(assert (=> d!95056 t!43779))

(declare-fun tb!19781 () Bool)

(declare-fun t!43781 () Bool)

(assert (=> (and b!310334 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 (t!43305 tokens!465)))))) (toChars!1399 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131530)))))) t!43781) tb!19781))

(declare-fun result!23790 () Bool)

(assert (= result!23790 result!23552))

(assert (=> d!94764 t!43781))

(declare-fun t!43783 () Bool)

(declare-fun tb!19783 () Bool)

(assert (=> (and b!310334 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 (t!43305 tokens!465)))))) (toChars!1399 (transformation!781 (rule!1394 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0))))) t!43783) tb!19783))

(declare-fun result!23792 () Bool)

(assert (= result!23792 result!23460))

(assert (=> d!94516 t!43783))

(declare-fun t!43785 () Bool)

(declare-fun tb!19785 () Bool)

(assert (=> (and b!310334 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 (t!43305 tokens!465)))))) (toChars!1399 (transformation!781 (rule!1394 (apply!892 lt!131157 0))))) t!43785) tb!19785))

(declare-fun result!23794 () Bool)

(assert (= result!23794 result!23752))

(assert (=> d!95332 t!43785))

(assert (=> b!310201 t!43763))

(assert (=> d!94058 t!43767))

(declare-fun b_and!26371 () Bool)

(declare-fun tp!109242 () Bool)

(assert (=> b!310334 (= tp!109242 (and (=> t!43767 result!23776) (=> t!43765 result!23774) (=> t!43773 result!23782) (=> t!43771 result!23780) (=> t!43763 result!23772) (=> t!43777 result!23786) (=> t!43775 result!23784) (=> t!43779 result!23788) (=> t!43783 result!23792) (=> t!43769 result!23778) (=> t!43761 result!23770) (=> t!43785 result!23794) (=> t!43759 result!23768) (=> t!43781 result!23790) b_and!26371))))

(declare-fun e!192960 () Bool)

(declare-fun b!310331 () Bool)

(declare-fun e!192959 () Bool)

(declare-fun tp!109239 () Bool)

(assert (=> b!310331 (= e!192959 (and (inv!5016 (h!9460 (t!43305 (t!43305 tokens!465)))) e!192960 tp!109239))))

(declare-fun e!192961 () Bool)

(declare-fun tp!109243 () Bool)

(declare-fun e!192963 () Bool)

(declare-fun b!310333 () Bool)

(assert (=> b!310333 (= e!192961 (and tp!109243 (inv!5012 (tag!999 (rule!1394 (h!9460 (t!43305 (t!43305 tokens!465)))))) (inv!5015 (transformation!781 (rule!1394 (h!9460 (t!43305 (t!43305 tokens!465)))))) e!192963))))

(declare-fun tp!109241 () Bool)

(declare-fun b!310332 () Bool)

(assert (=> b!310332 (= e!192960 (and (inv!21 (value!26574 (h!9460 (t!43305 (t!43305 tokens!465))))) e!192961 tp!109241))))

(assert (=> b!308285 (= tp!109048 e!192959)))

(assert (=> b!310334 (= e!192963 (and tp!109240 tp!109242))))

(assert (= b!310333 b!310334))

(assert (= b!310332 b!310333))

(assert (= b!310331 b!310332))

(assert (= (and b!308285 ((_ is Cons!4063) (t!43305 (t!43305 tokens!465)))) b!310331))

(declare-fun m!416445 () Bool)

(assert (=> b!310331 m!416445))

(declare-fun m!416447 () Bool)

(assert (=> b!310333 m!416447))

(declare-fun m!416449 () Bool)

(assert (=> b!310333 m!416449))

(declare-fun m!416451 () Bool)

(assert (=> b!310332 m!416451))

(declare-fun b!310337 () Bool)

(declare-fun e!192966 () Bool)

(assert (=> b!310337 (= e!192966 true)))

(declare-fun b!310336 () Bool)

(declare-fun e!192965 () Bool)

(assert (=> b!310336 (= e!192965 e!192966)))

(declare-fun b!310335 () Bool)

(declare-fun e!192964 () Bool)

(assert (=> b!310335 (= e!192964 e!192965)))

(assert (=> b!307900 e!192964))

(assert (= b!310336 b!310337))

(assert (= b!310335 b!310336))

(assert (= (and b!307900 ((_ is Cons!4062) (t!43304 rules!1920))) b!310335))

(assert (=> b!310337 (< (dynLambda!2219 order!3297 (toValue!1540 (transformation!781 (h!9459 (t!43304 rules!1920))))) (dynLambda!2220 order!3299 lambda!10514))))

(assert (=> b!310337 (< (dynLambda!2221 order!3301 (toChars!1399 (transformation!781 (h!9459 (t!43304 rules!1920))))) (dynLambda!2220 order!3299 lambda!10514))))

(declare-fun b!310340 () Bool)

(declare-fun e!192969 () Bool)

(assert (=> b!310340 (= e!192969 true)))

(declare-fun b!310339 () Bool)

(declare-fun e!192968 () Bool)

(assert (=> b!310339 (= e!192968 e!192969)))

(declare-fun b!310338 () Bool)

(declare-fun e!192967 () Bool)

(assert (=> b!310338 (= e!192967 e!192968)))

(assert (=> b!307629 e!192967))

(assert (= b!310339 b!310340))

(assert (= b!310338 b!310339))

(assert (= (and b!307629 ((_ is Cons!4062) (t!43304 rules!1920))) b!310338))

(assert (=> b!310340 (< (dynLambda!2219 order!3297 (toValue!1540 (transformation!781 (h!9459 (t!43304 rules!1920))))) (dynLambda!2220 order!3299 lambda!10508))))

(assert (=> b!310340 (< (dynLambda!2221 order!3301 (toChars!1399 (transformation!781 (h!9459 (t!43304 rules!1920))))) (dynLambda!2220 order!3299 lambda!10508))))

(declare-fun b!310343 () Bool)

(declare-fun e!192972 () Bool)

(assert (=> b!310343 (= e!192972 true)))

(declare-fun b!310342 () Bool)

(declare-fun e!192971 () Bool)

(assert (=> b!310342 (= e!192971 e!192972)))

(declare-fun b!310341 () Bool)

(declare-fun e!192970 () Bool)

(assert (=> b!310341 (= e!192970 e!192971)))

(assert (=> b!308289 e!192970))

(assert (= b!310342 b!310343))

(assert (= b!310341 b!310342))

(assert (= (and b!308289 ((_ is Cons!4062) (t!43304 (t!43304 rules!1920)))) b!310341))

(assert (=> b!310343 (< (dynLambda!2219 order!3297 (toValue!1540 (transformation!781 (h!9459 (t!43304 (t!43304 rules!1920)))))) (dynLambda!2220 order!3299 lambda!10492))))

(assert (=> b!310343 (< (dynLambda!2221 order!3301 (toChars!1399 (transformation!781 (h!9459 (t!43304 (t!43304 rules!1920)))))) (dynLambda!2220 order!3299 lambda!10492))))

(declare-fun b!310346 () Bool)

(declare-fun e!192975 () Bool)

(assert (=> b!310346 (= e!192975 true)))

(declare-fun b!310345 () Bool)

(declare-fun e!192974 () Bool)

(assert (=> b!310345 (= e!192974 e!192975)))

(declare-fun b!310344 () Bool)

(declare-fun e!192973 () Bool)

(assert (=> b!310344 (= e!192973 e!192974)))

(assert (=> b!308169 e!192973))

(assert (= b!310345 b!310346))

(assert (= b!310344 b!310345))

(assert (= (and b!308169 ((_ is Cons!4062) (t!43304 rules!1920))) b!310344))

(assert (=> b!310346 (< (dynLambda!2219 order!3297 (toValue!1540 (transformation!781 (h!9459 (t!43304 rules!1920))))) (dynLambda!2220 order!3299 lambda!10526))))

(assert (=> b!310346 (< (dynLambda!2221 order!3301 (toChars!1399 (transformation!781 (h!9459 (t!43304 rules!1920))))) (dynLambda!2220 order!3299 lambda!10526))))

(declare-fun b!310347 () Bool)

(declare-fun e!192976 () Bool)

(declare-fun tp!109244 () Bool)

(assert (=> b!310347 (= e!192976 (and tp_is_empty!1883 tp!109244))))

(assert (=> b!308274 (= tp!109037 e!192976)))

(assert (= (and b!308274 ((_ is Cons!4061) (t!43303 (originalCharacters!824 separatorToken!170)))) b!310347))

(declare-fun b!310350 () Bool)

(declare-fun e!192977 () Bool)

(declare-fun tp!109247 () Bool)

(assert (=> b!310350 (= e!192977 tp!109247)))

(declare-fun b!310348 () Bool)

(assert (=> b!310348 (= e!192977 tp_is_empty!1883)))

(assert (=> b!308324 (= tp!109088 e!192977)))

(declare-fun b!310351 () Bool)

(declare-fun tp!109248 () Bool)

(declare-fun tp!109246 () Bool)

(assert (=> b!310351 (= e!192977 (and tp!109248 tp!109246))))

(declare-fun b!310349 () Bool)

(declare-fun tp!109245 () Bool)

(declare-fun tp!109249 () Bool)

(assert (=> b!310349 (= e!192977 (and tp!109245 tp!109249))))

(assert (= (and b!308324 ((_ is ElementMatch!1005) (regOne!2523 (regex!781 (rule!1394 separatorToken!170))))) b!310348))

(assert (= (and b!308324 ((_ is Concat!1809) (regOne!2523 (regex!781 (rule!1394 separatorToken!170))))) b!310349))

(assert (= (and b!308324 ((_ is Star!1005) (regOne!2523 (regex!781 (rule!1394 separatorToken!170))))) b!310350))

(assert (= (and b!308324 ((_ is Union!1005) (regOne!2523 (regex!781 (rule!1394 separatorToken!170))))) b!310351))

(declare-fun b!310354 () Bool)

(declare-fun e!192978 () Bool)

(declare-fun tp!109252 () Bool)

(assert (=> b!310354 (= e!192978 tp!109252)))

(declare-fun b!310352 () Bool)

(assert (=> b!310352 (= e!192978 tp_is_empty!1883)))

(assert (=> b!308324 (= tp!109086 e!192978)))

(declare-fun b!310355 () Bool)

(declare-fun tp!109253 () Bool)

(declare-fun tp!109251 () Bool)

(assert (=> b!310355 (= e!192978 (and tp!109253 tp!109251))))

(declare-fun b!310353 () Bool)

(declare-fun tp!109250 () Bool)

(declare-fun tp!109254 () Bool)

(assert (=> b!310353 (= e!192978 (and tp!109250 tp!109254))))

(assert (= (and b!308324 ((_ is ElementMatch!1005) (regTwo!2523 (regex!781 (rule!1394 separatorToken!170))))) b!310352))

(assert (= (and b!308324 ((_ is Concat!1809) (regTwo!2523 (regex!781 (rule!1394 separatorToken!170))))) b!310353))

(assert (= (and b!308324 ((_ is Star!1005) (regTwo!2523 (regex!781 (rule!1394 separatorToken!170))))) b!310354))

(assert (= (and b!308324 ((_ is Union!1005) (regTwo!2523 (regex!781 (rule!1394 separatorToken!170))))) b!310355))

(declare-fun b!310358 () Bool)

(declare-fun e!192979 () Bool)

(declare-fun tp!109257 () Bool)

(assert (=> b!310358 (= e!192979 tp!109257)))

(declare-fun b!310356 () Bool)

(assert (=> b!310356 (= e!192979 tp_is_empty!1883)))

(assert (=> b!308323 (= tp!109087 e!192979)))

(declare-fun b!310359 () Bool)

(declare-fun tp!109258 () Bool)

(declare-fun tp!109256 () Bool)

(assert (=> b!310359 (= e!192979 (and tp!109258 tp!109256))))

(declare-fun b!310357 () Bool)

(declare-fun tp!109255 () Bool)

(declare-fun tp!109259 () Bool)

(assert (=> b!310357 (= e!192979 (and tp!109255 tp!109259))))

(assert (= (and b!308323 ((_ is ElementMatch!1005) (reg!1334 (regex!781 (rule!1394 separatorToken!170))))) b!310356))

(assert (= (and b!308323 ((_ is Concat!1809) (reg!1334 (regex!781 (rule!1394 separatorToken!170))))) b!310357))

(assert (= (and b!308323 ((_ is Star!1005) (reg!1334 (regex!781 (rule!1394 separatorToken!170))))) b!310358))

(assert (= (and b!308323 ((_ is Union!1005) (reg!1334 (regex!781 (rule!1394 separatorToken!170))))) b!310359))

(declare-fun b!310362 () Bool)

(declare-fun e!192980 () Bool)

(declare-fun tp!109262 () Bool)

(assert (=> b!310362 (= e!192980 tp!109262)))

(declare-fun b!310360 () Bool)

(assert (=> b!310360 (= e!192980 tp_is_empty!1883)))

(assert (=> b!308305 (= tp!109066 e!192980)))

(declare-fun b!310363 () Bool)

(declare-fun tp!109263 () Bool)

(declare-fun tp!109261 () Bool)

(assert (=> b!310363 (= e!192980 (and tp!109263 tp!109261))))

(declare-fun b!310361 () Bool)

(declare-fun tp!109260 () Bool)

(declare-fun tp!109264 () Bool)

(assert (=> b!310361 (= e!192980 (and tp!109260 tp!109264))))

(assert (= (and b!308305 ((_ is ElementMatch!1005) (regOne!2523 (regex!781 (rule!1394 (h!9460 tokens!465)))))) b!310360))

(assert (= (and b!308305 ((_ is Concat!1809) (regOne!2523 (regex!781 (rule!1394 (h!9460 tokens!465)))))) b!310361))

(assert (= (and b!308305 ((_ is Star!1005) (regOne!2523 (regex!781 (rule!1394 (h!9460 tokens!465)))))) b!310362))

(assert (= (and b!308305 ((_ is Union!1005) (regOne!2523 (regex!781 (rule!1394 (h!9460 tokens!465)))))) b!310363))

(declare-fun b!310366 () Bool)

(declare-fun e!192981 () Bool)

(declare-fun tp!109267 () Bool)

(assert (=> b!310366 (= e!192981 tp!109267)))

(declare-fun b!310364 () Bool)

(assert (=> b!310364 (= e!192981 tp_is_empty!1883)))

(assert (=> b!308305 (= tp!109064 e!192981)))

(declare-fun b!310367 () Bool)

(declare-fun tp!109268 () Bool)

(declare-fun tp!109266 () Bool)

(assert (=> b!310367 (= e!192981 (and tp!109268 tp!109266))))

(declare-fun b!310365 () Bool)

(declare-fun tp!109265 () Bool)

(declare-fun tp!109269 () Bool)

(assert (=> b!310365 (= e!192981 (and tp!109265 tp!109269))))

(assert (= (and b!308305 ((_ is ElementMatch!1005) (regTwo!2523 (regex!781 (rule!1394 (h!9460 tokens!465)))))) b!310364))

(assert (= (and b!308305 ((_ is Concat!1809) (regTwo!2523 (regex!781 (rule!1394 (h!9460 tokens!465)))))) b!310365))

(assert (= (and b!308305 ((_ is Star!1005) (regTwo!2523 (regex!781 (rule!1394 (h!9460 tokens!465)))))) b!310366))

(assert (= (and b!308305 ((_ is Union!1005) (regTwo!2523 (regex!781 (rule!1394 (h!9460 tokens!465)))))) b!310367))

(declare-fun b!310368 () Bool)

(declare-fun e!192982 () Bool)

(declare-fun tp!109270 () Bool)

(assert (=> b!310368 (= e!192982 (and tp_is_empty!1883 tp!109270))))

(assert (=> b!308273 (= tp!109036 e!192982)))

(assert (= (and b!308273 ((_ is Cons!4061) (t!43303 (originalCharacters!824 (h!9460 tokens!465))))) b!310368))

(declare-fun b!310371 () Bool)

(declare-fun e!192983 () Bool)

(declare-fun tp!109273 () Bool)

(assert (=> b!310371 (= e!192983 tp!109273)))

(declare-fun b!310369 () Bool)

(assert (=> b!310369 (= e!192983 tp_is_empty!1883)))

(assert (=> b!308322 (= tp!109085 e!192983)))

(declare-fun b!310372 () Bool)

(declare-fun tp!109274 () Bool)

(declare-fun tp!109272 () Bool)

(assert (=> b!310372 (= e!192983 (and tp!109274 tp!109272))))

(declare-fun b!310370 () Bool)

(declare-fun tp!109271 () Bool)

(declare-fun tp!109275 () Bool)

(assert (=> b!310370 (= e!192983 (and tp!109271 tp!109275))))

(assert (= (and b!308322 ((_ is ElementMatch!1005) (regOne!2522 (regex!781 (rule!1394 separatorToken!170))))) b!310369))

(assert (= (and b!308322 ((_ is Concat!1809) (regOne!2522 (regex!781 (rule!1394 separatorToken!170))))) b!310370))

(assert (= (and b!308322 ((_ is Star!1005) (regOne!2522 (regex!781 (rule!1394 separatorToken!170))))) b!310371))

(assert (= (and b!308322 ((_ is Union!1005) (regOne!2522 (regex!781 (rule!1394 separatorToken!170))))) b!310372))

(declare-fun b!310375 () Bool)

(declare-fun e!192984 () Bool)

(declare-fun tp!109278 () Bool)

(assert (=> b!310375 (= e!192984 tp!109278)))

(declare-fun b!310373 () Bool)

(assert (=> b!310373 (= e!192984 tp_is_empty!1883)))

(assert (=> b!308322 (= tp!109089 e!192984)))

(declare-fun b!310376 () Bool)

(declare-fun tp!109279 () Bool)

(declare-fun tp!109277 () Bool)

(assert (=> b!310376 (= e!192984 (and tp!109279 tp!109277))))

(declare-fun b!310374 () Bool)

(declare-fun tp!109276 () Bool)

(declare-fun tp!109280 () Bool)

(assert (=> b!310374 (= e!192984 (and tp!109276 tp!109280))))

(assert (= (and b!308322 ((_ is ElementMatch!1005) (regTwo!2522 (regex!781 (rule!1394 separatorToken!170))))) b!310373))

(assert (= (and b!308322 ((_ is Concat!1809) (regTwo!2522 (regex!781 (rule!1394 separatorToken!170))))) b!310374))

(assert (= (and b!308322 ((_ is Star!1005) (regTwo!2522 (regex!781 (rule!1394 separatorToken!170))))) b!310375))

(assert (= (and b!308322 ((_ is Union!1005) (regTwo!2522 (regex!781 (rule!1394 separatorToken!170))))) b!310376))

(declare-fun tp!109289 () Bool)

(declare-fun e!192990 () Bool)

(declare-fun b!310385 () Bool)

(declare-fun tp!109288 () Bool)

(assert (=> b!310385 (= e!192990 (and (inv!5019 (left!3377 (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (value!26574 separatorToken!170))))) tp!109289 (inv!5019 (right!3707 (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (value!26574 separatorToken!170))))) tp!109288))))

(declare-fun b!310387 () Bool)

(declare-fun e!192989 () Bool)

(declare-fun tp!109287 () Bool)

(assert (=> b!310387 (= e!192989 tp!109287)))

(declare-fun b!310386 () Bool)

(declare-fun inv!5026 (IArray!2769) Bool)

(assert (=> b!310386 (= e!192990 (and (inv!5026 (xs!3987 (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (value!26574 separatorToken!170))))) e!192989))))

(assert (=> b!307643 (= tp!108976 (and (inv!5019 (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (value!26574 separatorToken!170)))) e!192990))))

(assert (= (and b!307643 ((_ is Node!1384) (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (value!26574 separatorToken!170))))) b!310385))

(assert (= b!310386 b!310387))

(assert (= (and b!307643 ((_ is Leaf!2114) (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (value!26574 separatorToken!170))))) b!310386))

(declare-fun m!416453 () Bool)

(assert (=> b!310385 m!416453))

(declare-fun m!416455 () Bool)

(assert (=> b!310385 m!416455))

(declare-fun m!416457 () Bool)

(assert (=> b!310386 m!416457))

(assert (=> b!307643 m!410567))

(declare-fun b!310390 () Bool)

(declare-fun e!192991 () Bool)

(declare-fun tp!109292 () Bool)

(assert (=> b!310390 (= e!192991 tp!109292)))

(declare-fun b!310388 () Bool)

(assert (=> b!310388 (= e!192991 tp_is_empty!1883)))

(assert (=> b!308304 (= tp!109065 e!192991)))

(declare-fun b!310391 () Bool)

(declare-fun tp!109293 () Bool)

(declare-fun tp!109291 () Bool)

(assert (=> b!310391 (= e!192991 (and tp!109293 tp!109291))))

(declare-fun b!310389 () Bool)

(declare-fun tp!109290 () Bool)

(declare-fun tp!109294 () Bool)

(assert (=> b!310389 (= e!192991 (and tp!109290 tp!109294))))

(assert (= (and b!308304 ((_ is ElementMatch!1005) (reg!1334 (regex!781 (rule!1394 (h!9460 tokens!465)))))) b!310388))

(assert (= (and b!308304 ((_ is Concat!1809) (reg!1334 (regex!781 (rule!1394 (h!9460 tokens!465)))))) b!310389))

(assert (= (and b!308304 ((_ is Star!1005) (reg!1334 (regex!781 (rule!1394 (h!9460 tokens!465)))))) b!310390))

(assert (= (and b!308304 ((_ is Union!1005) (reg!1334 (regex!781 (rule!1394 (h!9460 tokens!465)))))) b!310391))

(declare-fun e!192993 () Bool)

(declare-fun tp!109297 () Bool)

(declare-fun b!310392 () Bool)

(declare-fun tp!109296 () Bool)

(assert (=> b!310392 (= e!192993 (and (inv!5019 (left!3377 (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (value!26574 (h!9460 tokens!465)))))) tp!109297 (inv!5019 (right!3707 (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (value!26574 (h!9460 tokens!465)))))) tp!109296))))

(declare-fun b!310394 () Bool)

(declare-fun e!192992 () Bool)

(declare-fun tp!109295 () Bool)

(assert (=> b!310394 (= e!192992 tp!109295)))

(declare-fun b!310393 () Bool)

(assert (=> b!310393 (= e!192993 (and (inv!5026 (xs!3987 (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (value!26574 (h!9460 tokens!465)))))) e!192992))))

(assert (=> b!307589 (= tp!108975 (and (inv!5019 (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (value!26574 (h!9460 tokens!465))))) e!192993))))

(assert (= (and b!307589 ((_ is Node!1384) (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (value!26574 (h!9460 tokens!465)))))) b!310392))

(assert (= b!310393 b!310394))

(assert (= (and b!307589 ((_ is Leaf!2114) (c!58276 (dynLambda!2224 (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (value!26574 (h!9460 tokens!465)))))) b!310393))

(declare-fun m!416459 () Bool)

(assert (=> b!310392 m!416459))

(declare-fun m!416461 () Bool)

(assert (=> b!310392 m!416461))

(declare-fun m!416463 () Bool)

(assert (=> b!310393 m!416463))

(assert (=> b!307589 m!410469))

(declare-fun b!310397 () Bool)

(declare-fun e!192994 () Bool)

(declare-fun tp!109300 () Bool)

(assert (=> b!310397 (= e!192994 tp!109300)))

(declare-fun b!310395 () Bool)

(assert (=> b!310395 (= e!192994 tp_is_empty!1883)))

(assert (=> b!308303 (= tp!109063 e!192994)))

(declare-fun b!310398 () Bool)

(declare-fun tp!109301 () Bool)

(declare-fun tp!109299 () Bool)

(assert (=> b!310398 (= e!192994 (and tp!109301 tp!109299))))

(declare-fun b!310396 () Bool)

(declare-fun tp!109298 () Bool)

(declare-fun tp!109302 () Bool)

(assert (=> b!310396 (= e!192994 (and tp!109298 tp!109302))))

(assert (= (and b!308303 ((_ is ElementMatch!1005) (regOne!2522 (regex!781 (rule!1394 (h!9460 tokens!465)))))) b!310395))

(assert (= (and b!308303 ((_ is Concat!1809) (regOne!2522 (regex!781 (rule!1394 (h!9460 tokens!465)))))) b!310396))

(assert (= (and b!308303 ((_ is Star!1005) (regOne!2522 (regex!781 (rule!1394 (h!9460 tokens!465)))))) b!310397))

(assert (= (and b!308303 ((_ is Union!1005) (regOne!2522 (regex!781 (rule!1394 (h!9460 tokens!465)))))) b!310398))

(declare-fun b!310401 () Bool)

(declare-fun e!192995 () Bool)

(declare-fun tp!109305 () Bool)

(assert (=> b!310401 (= e!192995 tp!109305)))

(declare-fun b!310399 () Bool)

(assert (=> b!310399 (= e!192995 tp_is_empty!1883)))

(assert (=> b!308303 (= tp!109067 e!192995)))

(declare-fun b!310402 () Bool)

(declare-fun tp!109306 () Bool)

(declare-fun tp!109304 () Bool)

(assert (=> b!310402 (= e!192995 (and tp!109306 tp!109304))))

(declare-fun b!310400 () Bool)

(declare-fun tp!109303 () Bool)

(declare-fun tp!109307 () Bool)

(assert (=> b!310400 (= e!192995 (and tp!109303 tp!109307))))

(assert (= (and b!308303 ((_ is ElementMatch!1005) (regTwo!2522 (regex!781 (rule!1394 (h!9460 tokens!465)))))) b!310399))

(assert (= (and b!308303 ((_ is Concat!1809) (regTwo!2522 (regex!781 (rule!1394 (h!9460 tokens!465)))))) b!310400))

(assert (= (and b!308303 ((_ is Star!1005) (regTwo!2522 (regex!781 (rule!1394 (h!9460 tokens!465)))))) b!310401))

(assert (= (and b!308303 ((_ is Union!1005) (regTwo!2522 (regex!781 (rule!1394 (h!9460 tokens!465)))))) b!310402))

(declare-fun b!310405 () Bool)

(declare-fun e!192998 () Bool)

(assert (=> b!310405 (= e!192998 true)))

(declare-fun b!310404 () Bool)

(declare-fun e!192997 () Bool)

(assert (=> b!310404 (= e!192997 e!192998)))

(declare-fun b!310403 () Bool)

(declare-fun e!192996 () Bool)

(assert (=> b!310403 (= e!192996 e!192997)))

(assert (=> b!308127 e!192996))

(assert (= b!310404 b!310405))

(assert (= b!310403 b!310404))

(assert (= (and b!308127 ((_ is Cons!4062) (t!43304 rules!1920))) b!310403))

(assert (=> b!310405 (< (dynLambda!2219 order!3297 (toValue!1540 (transformation!781 (h!9459 (t!43304 rules!1920))))) (dynLambda!2220 order!3299 lambda!10525))))

(assert (=> b!310405 (< (dynLambda!2221 order!3301 (toChars!1399 (transformation!781 (h!9459 (t!43304 rules!1920))))) (dynLambda!2220 order!3299 lambda!10525))))

(declare-fun b!310408 () Bool)

(declare-fun e!192999 () Bool)

(declare-fun tp!109310 () Bool)

(assert (=> b!310408 (= e!192999 tp!109310)))

(declare-fun b!310406 () Bool)

(assert (=> b!310406 (= e!192999 tp_is_empty!1883)))

(assert (=> b!308315 (= tp!109077 e!192999)))

(declare-fun b!310409 () Bool)

(declare-fun tp!109311 () Bool)

(declare-fun tp!109309 () Bool)

(assert (=> b!310409 (= e!192999 (and tp!109311 tp!109309))))

(declare-fun b!310407 () Bool)

(declare-fun tp!109308 () Bool)

(declare-fun tp!109312 () Bool)

(assert (=> b!310407 (= e!192999 (and tp!109308 tp!109312))))

(assert (= (and b!308315 ((_ is ElementMatch!1005) (regex!781 (h!9459 (t!43304 rules!1920))))) b!310406))

(assert (= (and b!308315 ((_ is Concat!1809) (regex!781 (h!9459 (t!43304 rules!1920))))) b!310407))

(assert (= (and b!308315 ((_ is Star!1005) (regex!781 (h!9459 (t!43304 rules!1920))))) b!310408))

(assert (= (and b!308315 ((_ is Union!1005) (regex!781 (h!9459 (t!43304 rules!1920))))) b!310409))

(declare-fun b!310412 () Bool)

(declare-fun b_free!11057 () Bool)

(declare-fun b_next!11057 () Bool)

(assert (=> b!310412 (= b_free!11057 (not b_next!11057))))

(declare-fun tb!19787 () Bool)

(declare-fun t!43787 () Bool)

(assert (=> (and b!310412 (= (toValue!1540 (transformation!781 (h!9459 (t!43304 (t!43304 rules!1920))))) (toValue!1540 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131185)))))) t!43787) tb!19787))

(declare-fun result!23798 () Bool)

(assert (= result!23798 result!23530))

(assert (=> d!94724 t!43787))

(declare-fun tb!19789 () Bool)

(declare-fun t!43789 () Bool)

(assert (=> (and b!310412 (= (toValue!1540 (transformation!781 (h!9459 (t!43304 (t!43304 rules!1920))))) (toValue!1540 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131530)))))) t!43789) tb!19789))

(declare-fun result!23800 () Bool)

(assert (= result!23800 result!23602))

(assert (=> d!95024 t!43789))

(declare-fun t!43791 () Bool)

(declare-fun tb!19791 () Bool)

(assert (=> (and b!310412 (= (toValue!1540 (transformation!781 (h!9459 (t!43304 (t!43304 rules!1920))))) (toValue!1540 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131190)))))) t!43791) tb!19791))

(declare-fun result!23802 () Bool)

(assert (= result!23802 result!23692))

(assert (=> d!95094 t!43791))

(declare-fun tp!109313 () Bool)

(declare-fun b_and!26373 () Bool)

(assert (=> b!310412 (= tp!109313 (and (=> t!43787 result!23798) (=> t!43789 result!23800) (=> t!43791 result!23802) b_and!26373))))

(declare-fun b_free!11059 () Bool)

(declare-fun b_next!11059 () Bool)

(assert (=> b!310412 (= b_free!11059 (not b_next!11059))))

(declare-fun t!43793 () Bool)

(declare-fun tb!19793 () Bool)

(assert (=> (and b!310412 (= (toChars!1399 (transformation!781 (h!9459 (t!43304 (t!43304 rules!1920))))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465))))) t!43793) tb!19793))

(declare-fun result!23804 () Bool)

(assert (= result!23804 result!23336))

(assert (=> d!94066 t!43793))

(declare-fun tb!19795 () Bool)

(declare-fun t!43795 () Bool)

(assert (=> (and b!310412 (= (toChars!1399 (transformation!781 (h!9459 (t!43304 (t!43304 rules!1920))))) (toChars!1399 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131190)))))) t!43795) tb!19795))

(declare-fun result!23806 () Bool)

(assert (= result!23806 result!23542))

(assert (=> d!94732 t!43795))

(declare-fun t!43797 () Bool)

(declare-fun tb!19797 () Bool)

(assert (=> (and b!310412 (= (toChars!1399 (transformation!781 (h!9459 (t!43304 (t!43304 rules!1920))))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465)))))) t!43797) tb!19797))

(declare-fun result!23808 () Bool)

(assert (= result!23808 result!23722))

(assert (=> d!95172 t!43797))

(declare-fun tb!19799 () Bool)

(declare-fun t!43799 () Bool)

(assert (=> (and b!310412 (= (toChars!1399 (transformation!781 (h!9459 (t!43304 (t!43304 rules!1920))))) (toChars!1399 (transformation!781 (rule!1394 (ite c!58409 call!17919 call!17922))))) t!43799) tb!19799))

(declare-fun result!23810 () Bool)

(assert (= result!23810 result!23470))

(assert (=> d!94528 t!43799))

(declare-fun tb!19801 () Bool)

(declare-fun t!43801 () Bool)

(assert (=> (and b!310412 (= (toChars!1399 (transformation!781 (h!9459 (t!43304 (t!43304 rules!1920))))) (toChars!1399 (transformation!781 (rule!1394 separatorToken!170)))) t!43801) tb!19801))

(declare-fun result!23812 () Bool)

(assert (= result!23812 result!23344))

(assert (=> b!307641 t!43801))

(declare-fun t!43803 () Bool)

(declare-fun tb!19803 () Bool)

(assert (=> (and b!310412 (= (toChars!1399 (transformation!781 (h!9459 (t!43304 (t!43304 rules!1920))))) (toChars!1399 (transformation!781 (rule!1394 (ite c!58402 separatorToken!170 call!17914))))) t!43803) tb!19803))

(declare-fun result!23814 () Bool)

(assert (= result!23814 result!23510))

(assert (=> d!94668 t!43803))

(declare-fun tb!19805 () Bool)

(declare-fun t!43805 () Bool)

(assert (=> (and b!310412 (= (toChars!1399 (transformation!781 (h!9459 (t!43304 (t!43304 rules!1920))))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 (Cons!4063 (h!9460 tokens!465) Nil!4063)))))) t!43805) tb!19805))

(declare-fun result!23816 () Bool)

(assert (= result!23816 result!23742))

(assert (=> d!95294 t!43805))

(assert (=> b!307583 t!43793))

(declare-fun tb!19807 () Bool)

(declare-fun t!43807 () Bool)

(assert (=> (and b!310412 (= (toChars!1399 (transformation!781 (h!9459 (t!43304 (t!43304 rules!1920))))) (toChars!1399 (transformation!781 (rule!1394 (ite c!58411 separatorToken!170 call!17922))))) t!43807) tb!19807))

(declare-fun result!23818 () Bool)

(assert (= result!23818 result!23732))

(assert (=> d!95212 t!43807))

(declare-fun t!43809 () Bool)

(declare-fun tb!19809 () Bool)

(assert (=> (and b!310412 (= (toChars!1399 (transformation!781 (h!9459 (t!43304 (t!43304 rules!1920))))) (toChars!1399 (transformation!781 (rule!1394 (apply!892 lt!131159 0))))) t!43809) tb!19809))

(declare-fun result!23820 () Bool)

(assert (= result!23820 result!23702))

(assert (=> d!95140 t!43809))

(declare-fun tb!19811 () Bool)

(declare-fun t!43811 () Bool)

(assert (=> (and b!310412 (= (toChars!1399 (transformation!781 (h!9459 (t!43304 (t!43304 rules!1920))))) (toChars!1399 (transformation!781 (rule!1394 (ite c!58400 call!17911 call!17914))))) t!43811) tb!19811))

(declare-fun result!23822 () Bool)

(assert (= result!23822 result!23712))

(assert (=> d!95148 t!43811))

(declare-fun tb!19813 () Bool)

(declare-fun t!43813 () Bool)

(assert (=> (and b!310412 (= (toChars!1399 (transformation!781 (h!9459 (t!43304 (t!43304 rules!1920))))) (toChars!1399 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131185)))))) t!43813) tb!19813))

(declare-fun result!23824 () Bool)

(assert (= result!23824 result!23618))

(assert (=> d!95056 t!43813))

(declare-fun t!43815 () Bool)

(declare-fun tb!19815 () Bool)

(assert (=> (and b!310412 (= (toChars!1399 (transformation!781 (h!9459 (t!43304 (t!43304 rules!1920))))) (toChars!1399 (transformation!781 (rule!1394 (_1!2561 (get!1388 lt!131530)))))) t!43815) tb!19815))

(declare-fun result!23826 () Bool)

(assert (= result!23826 result!23552))

(assert (=> d!94764 t!43815))

(declare-fun t!43817 () Bool)

(declare-fun tb!19817 () Bool)

(assert (=> (and b!310412 (= (toChars!1399 (transformation!781 (h!9459 (t!43304 (t!43304 rules!1920))))) (toChars!1399 (transformation!781 (rule!1394 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0))))) t!43817) tb!19817))

(declare-fun result!23828 () Bool)

(assert (= result!23828 result!23460))

(assert (=> d!94516 t!43817))

(declare-fun tb!19819 () Bool)

(declare-fun t!43819 () Bool)

(assert (=> (and b!310412 (= (toChars!1399 (transformation!781 (h!9459 (t!43304 (t!43304 rules!1920))))) (toChars!1399 (transformation!781 (rule!1394 (apply!892 lt!131157 0))))) t!43819) tb!19819))

(declare-fun result!23830 () Bool)

(assert (= result!23830 result!23752))

(assert (=> d!95332 t!43819))

(assert (=> b!310201 t!43797))

(assert (=> d!94058 t!43801))

(declare-fun tp!109316 () Bool)

(declare-fun b_and!26375 () Bool)

(assert (=> b!310412 (= tp!109316 (and (=> t!43803 result!23814) (=> t!43795 result!23806) (=> t!43805 result!23816) (=> t!43801 result!23812) (=> t!43819 result!23830) (=> t!43817 result!23828) (=> t!43807 result!23818) (=> t!43799 result!23810) (=> t!43793 result!23804) (=> t!43815 result!23826) (=> t!43797 result!23808) (=> t!43809 result!23820) (=> t!43811 result!23822) (=> t!43813 result!23824) b_and!26375))))

(declare-fun e!193001 () Bool)

(assert (=> b!310412 (= e!193001 (and tp!109313 tp!109316))))

(declare-fun e!193000 () Bool)

(declare-fun b!310411 () Bool)

(declare-fun tp!109314 () Bool)

(assert (=> b!310411 (= e!193000 (and tp!109314 (inv!5012 (tag!999 (h!9459 (t!43304 (t!43304 rules!1920))))) (inv!5015 (transformation!781 (h!9459 (t!43304 (t!43304 rules!1920))))) e!193001))))

(declare-fun b!310410 () Bool)

(declare-fun e!193002 () Bool)

(declare-fun tp!109315 () Bool)

(assert (=> b!310410 (= e!193002 (and e!193000 tp!109315))))

(assert (=> b!308314 (= tp!109078 e!193002)))

(assert (= b!310411 b!310412))

(assert (= b!310410 b!310411))

(assert (= (and b!308314 ((_ is Cons!4062) (t!43304 (t!43304 rules!1920)))) b!310410))

(declare-fun m!416465 () Bool)

(assert (=> b!310411 m!416465))

(declare-fun m!416467 () Bool)

(assert (=> b!310411 m!416467))

(declare-fun b!310415 () Bool)

(declare-fun e!193004 () Bool)

(declare-fun tp!109319 () Bool)

(assert (=> b!310415 (= e!193004 tp!109319)))

(declare-fun b!310413 () Bool)

(assert (=> b!310413 (= e!193004 tp_is_empty!1883)))

(assert (=> b!308320 (= tp!109083 e!193004)))

(declare-fun b!310416 () Bool)

(declare-fun tp!109320 () Bool)

(declare-fun tp!109318 () Bool)

(assert (=> b!310416 (= e!193004 (and tp!109320 tp!109318))))

(declare-fun b!310414 () Bool)

(declare-fun tp!109317 () Bool)

(declare-fun tp!109321 () Bool)

(assert (=> b!310414 (= e!193004 (and tp!109317 tp!109321))))

(assert (= (and b!308320 ((_ is ElementMatch!1005) (regOne!2523 (regex!781 (h!9459 rules!1920))))) b!310413))

(assert (= (and b!308320 ((_ is Concat!1809) (regOne!2523 (regex!781 (h!9459 rules!1920))))) b!310414))

(assert (= (and b!308320 ((_ is Star!1005) (regOne!2523 (regex!781 (h!9459 rules!1920))))) b!310415))

(assert (= (and b!308320 ((_ is Union!1005) (regOne!2523 (regex!781 (h!9459 rules!1920))))) b!310416))

(declare-fun b!310419 () Bool)

(declare-fun e!193005 () Bool)

(declare-fun tp!109324 () Bool)

(assert (=> b!310419 (= e!193005 tp!109324)))

(declare-fun b!310417 () Bool)

(assert (=> b!310417 (= e!193005 tp_is_empty!1883)))

(assert (=> b!308320 (= tp!109081 e!193005)))

(declare-fun b!310420 () Bool)

(declare-fun tp!109325 () Bool)

(declare-fun tp!109323 () Bool)

(assert (=> b!310420 (= e!193005 (and tp!109325 tp!109323))))

(declare-fun b!310418 () Bool)

(declare-fun tp!109322 () Bool)

(declare-fun tp!109326 () Bool)

(assert (=> b!310418 (= e!193005 (and tp!109322 tp!109326))))

(assert (= (and b!308320 ((_ is ElementMatch!1005) (regTwo!2523 (regex!781 (h!9459 rules!1920))))) b!310417))

(assert (= (and b!308320 ((_ is Concat!1809) (regTwo!2523 (regex!781 (h!9459 rules!1920))))) b!310418))

(assert (= (and b!308320 ((_ is Star!1005) (regTwo!2523 (regex!781 (h!9459 rules!1920))))) b!310419))

(assert (= (and b!308320 ((_ is Union!1005) (regTwo!2523 (regex!781 (h!9459 rules!1920))))) b!310420))

(declare-fun b!310423 () Bool)

(declare-fun e!193006 () Bool)

(declare-fun tp!109329 () Bool)

(assert (=> b!310423 (= e!193006 tp!109329)))

(declare-fun b!310421 () Bool)

(assert (=> b!310421 (= e!193006 tp_is_empty!1883)))

(assert (=> b!308319 (= tp!109082 e!193006)))

(declare-fun b!310424 () Bool)

(declare-fun tp!109330 () Bool)

(declare-fun tp!109328 () Bool)

(assert (=> b!310424 (= e!193006 (and tp!109330 tp!109328))))

(declare-fun b!310422 () Bool)

(declare-fun tp!109327 () Bool)

(declare-fun tp!109331 () Bool)

(assert (=> b!310422 (= e!193006 (and tp!109327 tp!109331))))

(assert (= (and b!308319 ((_ is ElementMatch!1005) (reg!1334 (regex!781 (h!9459 rules!1920))))) b!310421))

(assert (= (and b!308319 ((_ is Concat!1809) (reg!1334 (regex!781 (h!9459 rules!1920))))) b!310422))

(assert (= (and b!308319 ((_ is Star!1005) (reg!1334 (regex!781 (h!9459 rules!1920))))) b!310423))

(assert (= (and b!308319 ((_ is Union!1005) (reg!1334 (regex!781 (h!9459 rules!1920))))) b!310424))

(declare-fun b_lambda!10831 () Bool)

(assert (= b_lambda!10809 (or b!307468 b_lambda!10831)))

(assert (=> b!309889 d!94168))

(declare-fun b_lambda!10833 () Bool)

(assert (= b_lambda!10759 (or b!307466 b_lambda!10833)))

(declare-fun bs!36035 () Bool)

(declare-fun d!95394 () Bool)

(assert (= bs!36035 (and d!95394 b!307466)))

(assert (=> bs!36035 (= (dynLambda!2225 lambda!10491 (h!9460 (t!43305 tokens!465))) (not (isSeparator!781 (rule!1394 (h!9460 (t!43305 tokens!465))))))))

(assert (=> b!309263 d!95394))

(declare-fun b_lambda!10835 () Bool)

(assert (= b_lambda!10823 (or d!93922 b_lambda!10835)))

(declare-fun bs!36036 () Bool)

(declare-fun d!95396 () Bool)

(assert (= bs!36036 (and d!95396 d!93922)))

(assert (=> bs!36036 (= (dynLambda!2225 lambda!10508 (h!9460 (list!1716 lt!131159))) (rulesProduceIndividualToken!416 thiss!17480 rules!1920 (h!9460 (list!1716 lt!131159))))))

(assert (=> bs!36036 m!411891))

(assert (=> b!310199 d!95396))

(declare-fun b_lambda!10837 () Bool)

(assert (= b_lambda!10811 (or b!308119 b_lambda!10837)))

(declare-fun bs!36037 () Bool)

(declare-fun d!95398 () Bool)

(assert (= bs!36037 (and d!95398 b!308119)))

(assert (=> bs!36037 (= (dynLambda!2225 lambda!10525 (apply!892 lt!131159 0)) (rulesProduceIndividualToken!416 thiss!17480 rules!1920 (apply!892 lt!131159 0)))))

(assert (=> bs!36037 m!411433))

(declare-fun m!416469 () Bool)

(assert (=> bs!36037 m!416469))

(assert (=> d!95138 d!95398))

(declare-fun b_lambda!10839 () Bool)

(assert (= b_lambda!10757 (or b!308157 b_lambda!10839)))

(declare-fun bs!36038 () Bool)

(declare-fun d!95400 () Bool)

(assert (= bs!36038 (and d!95400 b!308157)))

(assert (=> bs!36038 (= (dynLambda!2225 lambda!10526 (h!9460 tokens!465)) (rulesProduceIndividualToken!416 thiss!17480 rules!1920 (h!9460 tokens!465)))))

(assert (=> bs!36038 m!410341))

(assert (=> d!94702 d!95400))

(declare-fun b_lambda!10841 () Bool)

(assert (= b_lambda!10735 (or b!308013 b_lambda!10841)))

(declare-fun bs!36039 () Bool)

(declare-fun d!95402 () Bool)

(assert (= bs!36039 (and d!95402 b!308013)))

(assert (=> bs!36039 (= (dynLambda!2225 lambda!10522 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0)) (rulesProduceIndividualToken!416 thiss!17480 rules!1920 (apply!892 (seqFromList!927 (t!43305 tokens!465)) 0)))))

(assert (=> bs!36039 m!411097))

(declare-fun m!416471 () Bool)

(assert (=> bs!36039 m!416471))

(assert (=> d!94480 d!95402))

(declare-fun b_lambda!10843 () Bool)

(assert (= b_lambda!10817 (or b!307890 b_lambda!10843)))

(declare-fun bs!36040 () Bool)

(declare-fun d!95404 () Bool)

(assert (= bs!36040 (and d!95404 b!307890)))

(assert (=> bs!36040 (= (dynLambda!2225 lambda!10514 (h!9460 (t!43305 tokens!465))) (rulesProduceIndividualToken!416 thiss!17480 rules!1920 (h!9460 (t!43305 tokens!465))))))

(declare-fun m!416473 () Bool)

(assert (=> bs!36040 m!416473))

(assert (=> d!95168 d!95404))

(declare-fun b_lambda!10845 () Bool)

(assert (= b_lambda!10825 (or (and b!308288 b_free!11039) (and b!310412 b_free!11059 (= (toChars!1399 (transformation!781 (h!9459 (t!43304 (t!43304 rules!1920))))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))))) (and b!307440 b_free!11019 (= (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))))) (and b!307455 b_free!11027 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))))) (and b!310334 b_free!11055 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 (t!43305 tokens!465)))))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))))) (and b!308316 b_free!11043 (= (toChars!1399 (transformation!781 (h!9459 (t!43304 rules!1920)))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))))) (and b!307444 b_free!11023 (= (toChars!1399 (transformation!781 (h!9459 rules!1920))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))))) b_lambda!10845)))

(declare-fun b_lambda!10847 () Bool)

(assert (= b_lambda!10807 (or b!307468 b_lambda!10847)))

(assert (=> d!95098 d!94168))

(declare-fun b_lambda!10849 () Bool)

(assert (= b_lambda!10819 (or (and b!308288 b_free!11039) (and b!310412 b_free!11059 (= (toChars!1399 (transformation!781 (h!9459 (t!43304 (t!43304 rules!1920))))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))))) (and b!307440 b_free!11019 (= (toChars!1399 (transformation!781 (rule!1394 separatorToken!170))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))))) (and b!307455 b_free!11027 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 tokens!465)))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))))) (and b!310334 b_free!11055 (= (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 (t!43305 tokens!465)))))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))))) (and b!308316 b_free!11043 (= (toChars!1399 (transformation!781 (h!9459 (t!43304 rules!1920)))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))))) (and b!307444 b_free!11023 (= (toChars!1399 (transformation!781 (h!9459 rules!1920))) (toChars!1399 (transformation!781 (rule!1394 (h!9460 (t!43305 tokens!465))))))) b_lambda!10849)))

(check-sat (not b!308710) (not b_next!11025) (not d!94736) (not b!310171) (not b!309673) (not b!308556) (not b!310298) (not b!310358) (not b!310035) (not b_lambda!10815) (not b!309736) (not b!310006) (not b!310283) (not b!310020) (not d!94524) (not bm!18042) (not d!94804) (not bm!18061) (not b!309350) (not bm!18067) (not d!94288) (not d!95230) (not bm!18049) (not b!310069) (not b!309741) (not b!309349) (not b_lambda!10837) (not d!95344) (not b!309189) (not b!309279) (not b!310376) (not d!94834) (not b!309890) (not b!309904) (not b_lambda!10843) (not b!308902) (not b!308888) (not d!94276) (not b!309932) (not b!308685) (not b!308582) (not d!95342) (not b!309685) (not d!94408) (not b!309245) (not b!309020) (not b!309724) (not b!309982) (not b!310065) (not bm!18069) (not b!310310) (not d!95320) (not b!309670) (not d!94756) (not b!309298) (not d!95294) (not d!95378) (not b!310287) (not d!94846) (not b!309330) b_and!26369 (not bm!18018) (not b!309888) (not b!310411) (not d!94590) (not d!95044) (not b!309185) (not b!309197) (not d!95174) (not b!309779) (not b!310275) (not b!310242) (not d!95346) (not d!95298) (not b!310344) (not tb!19713) (not b!308541) (not b!310172) (not b!310038) (not b!308813) (not d!95210) (not bm!18054) (not d!95260) (not bm!17964) (not b!308554) (not d!95324) (not d!94814) (not b!310205) (not b!310365) (not bm!18053) (not d!95118) (not b!310261) (not b!309915) (not b!308725) (not b_lambda!10739) (not d!94826) (not d!95148) (not bs!36039) (not d!95348) (not b!310416) (not b!310051) (not b!310391) (not b!310294) (not b!308667) (not b!308998) (not b!309370) (not b_next!11021) (not b!310192) (not b!310164) (not d!94800) (not b!310228) (not b!309677) (not b!309887) (not b!309946) (not d!95178) (not b!309237) (not d!95108) (not d!94410) (not b!309188) (not b!309962) (not b!310331) (not d!94790) b_and!26289 (not d!94840) (not d!94396) (not b!309380) (not bm!18020) (not bm!18056) (not d!94762) (not d!94418) (not b!310022) (not b!308677) (not b!310397) (not d!95090) (not b!310371) (not d!95158) (not b!310295) (not b!310163) (not d!95068) (not b_lambda!10845) (not b!308883) (not d!95354) (not b!310325) (not b!310332) (not d!95330) b_and!26361 (not b!310067) (not b!309880) (not d!94828) (not b_lambda!10709) (not b!310086) (not b!309327) (not b!310419) (not d!95102) (not b!310312) (not b!310390) (not d!95162) (not d!95258) (not d!94716) (not bm!18048) (not b!310370) (not tb!19743) tp_is_empty!1883 (not b!308679) (not b!309896) (not d!94270) (not d!95380) (not d!95254) (not b!309703) (not b!308580) (not b!310400) (not b!310224) (not d!95018) (not b!310266) (not d!95304) (not b!308843) (not b!309186) (not d!95386) (not b!309878) (not b!310329) (not b!309745) (not d!95276) (not b!309353) (not d!95056) (not b!308904) (not b!309950) (not b!309934) (not d!94562) (not b_lambda!10707) (not b!309679) (not b!308857) (not b!309362) (not d!94772) (not b!310300) (not d!95182) (not bs!36036) (not d!95376) (not d!94532) (not b!310168) (not b!310201) (not b!310402) (not b!310052) (not b!308690) (not d!95292) (not bm!18047) (not b!310029) (not bm!18073) (not b!310184) (not b!310207) (not d!94844) (not b_lambda!10761) (not d!95104) (not b!308678) (not d!95144) (not b_lambda!10713) b_and!26363 (not b_lambda!10765) (not b!309859) (not b!308847) (not d!94504) (not b_lambda!10849) (not b!309984) (not b!310338) (not b_lambda!10833) (not b!309631) (not b!309775) (not d!95164) (not b!310263) (not b!309957) (not d!95310) (not d!95224) (not b!310424) (not b!310032) (not d!94758) (not d!94512) (not b!309368) (not d!94300) (not d!95180) (not b!310279) (not b!309354) (not d!94468) (not b_next!11027) (not b!309022) (not bm!17970) (not bm!18070) (not b_next!11059) (not b_lambda!10835) (not b!310394) (not d!95126) (not b!309207) (not d!95200) (not b!310314) (not d!94298) (not d!95236) (not d!95238) (not b!308535) (not b!308880) (not b!309372) (not b!310117) (not b!310362) (not b!310193) (not b!308885) (not b!310408) (not d!95286) (not b!309294) (not b!309945) (not b!308865) (not b!309949) (not b!310003) (not b!310321) (not tb!19693) (not d!95370) (not bm!18077) (not b!310280) (not d!95122) (not b!310355) (not b!308688) (not d!94972) (not b!310359) (not b!309275) (not b!309386) (not bm!18009) (not b!310084) (not b!309336) (not b!310335) (not d!95252) (not d!95374) (not b!310015) (not b!309858) (not d!95120) (not b!310196) (not b!310250) (not b!310187) (not d!94702) (not b_lambda!10763) (not b_next!11037) (not b!310033) (not b!310111) (not d!95364) (not d!94796) (not b!310198) (not b!308841) (not b!310092) (not b!310248) (not b!309635) (not b!309328) (not b!310004) (not d!95060) (not b!310146) (not b!310179) b_and!26365 (not b!310036) (not b!309749) (not d!95160) (not d!94520) (not b!310324) (not bm!17975) (not d!94726) (not b!309883) (not b!308751) (not d!94732) (not b!310028) (not b!310277) (not tb!19545) (not b_lambda!10703) (not tb!19455) (not b!310392) (not b!309024) (not b!309881) (not b!310017) (not d!94586) (not b!308533) (not d!94294) (not b!310175) (not b!310264) (not d!94838) (not b!310160) (not d!95124) (not b!308886) (not b!310023) (not b!308724) (not d!94588) (not b!309254) (not bm!18063) (not b!309966) (not bm!18055) (not b!310214) (not d!95328) (not d!95204) (not d!95250) (not b_lambda!10827) (not b_next!11023) (not b!309260) (not d!95256) (not b!310019) (not b!310080) (not b!309252) (not b!308715) (not d!95284) (not b!309978) (not b!310076) (not b!310045) b_and!26297 (not b!309352) (not d!95190) (not b!310200) (not b!309675) (not b!309931) (not b!310301) (not b!309953) (not b!309877) (not b!308805) (not b!310333) (not b!309301) (not d!95314) (not b!309333) (not d!95360) (not b!308691) (not b!309377) (not d!94836) (not b!309952) (not d!95300) (not b!309248) (not bs!36038) (not d!94286) (not b!309358) (not b!310018) (not bm!17969) (not b!309193) (not tb!19505) (not d!95334) (not d!95000) (not bm!18046) (not bm!18075) (not b!310257) (not b!308844) (not d!94746) (not d!94530) (not b!309284) (not d!95226) (not d!95150) (not b!310108) (not b!309190) (not d!95058) (not b!310407) (not b!308666) (not d!95142) (not b!310237) (not d!94528) (not b_lambda!10839) (not b!310177) (not b!308709) (not bm!18076) (not d!94738) (not b!310385) (not b!310135) (not b!308975) (not d!95170) (not b!309192) (not b!308866) (not b!309683) (not b_lambda!10831) b_and!26367 (not b!309378) (not d!95358) (not b!308840) (not bm!18057) (not b!309944) (not d!94982) (not b!308686) (not b!310307) (not d!95012) (not tb!19723) (not b!310292) (not b!308581) (not b!310231) (not b!308887) (not b!309895) (not bm!18071) (not b!309290) (not b!310083) (not bm!17962) (not b!309249) (not d!94674) (not d!95332) (not d!94740) (not d!95208) (not d!94822) (not b!310165) (not d!94594) (not bm!17966) (not d!94668) (not b!310139) b_and!26295 (not b!309246) (not d!94474) (not b!310401) (not d!94824) (not b!309261) (not b!310210) b_and!26371 (not b!309326) (not b!309283) (not b!310118) (not b!310286) (not b!309948) (not b!309951) (not d!95274) (not b!310191) (not b!309977) (not b!309898) (not bm!18052) (not b!310393) (not b!310048) (not tb!19611) (not b!310147) (not b!309251) (not b!310351) (not d!94830) (not b!308713) (not b!309253) (not b!310422) (not d!95240) (not b!310374) (not b!310289) (not b!309003) (not d!95138) (not b!309748) (not d!94990) (not b!309899) (not bm!18062) (not b!308871) (not b!308708) (not d!94484) (not b!310115) (not b!310357) (not b!309905) (not d!94994) (not b!310361) (not b!310062) (not b!308712) (not b!309778) (not d!95336) (not b!309971) (not b!309704) (not b!309875) (not b!310156) (not d!94516) (not bs!36040) (not b!308711) (not d!94730) (not b!310222) (not d!94514) (not b!310082) (not b!310284) (not b!310119) (not b!308692) (not b!309918) (not b!309278) (not b!309916) (not b!309274) (not d!94518) (not bm!18003) (not d!95128) (not d!94430) (not b!310235) (not d!94592) (not tb!19733) (not b!309364) (not b!310057) (not b!310068) (not b!310138) (not b!309023) (not b!308903) (not bm!17957) (not b!309270) (not b!310236) (not b!309906) (not b!309885) (not bm!18004) (not b!310197) b_and!26293 (not b!308800) (not b!310354) (not b!308849) (not d!95040) (not b!310262) (not b!309269) (not b!310291) (not b!310398) (not b!309940) (not b!309917) (not d!95372) (not b!309947) (not b!310174) (not b!310153) (not b!310141) (not b!310409) (not d!95140) (not b!309360) (not b!310363) (not b!310350) (not d!95246) (not b!310223) (not b!310319) (not b!308999) (not b!309742) (not bm!18005) (not bm!17958) (not b_lambda!10805) (not b_lambda!10829) (not b!310226) (not b!310131) (not d!95392) (not b!308839) (not b!310313) (not b!310387) (not bm!18050) (not b!310121) (not b!309777) (not b!309374) (not d!95034) (not b!309976) (not b!310001) (not d!95322) (not d!94848) (not tb!19595) (not d!94728) (not b!310073) (not d!94440) (not b!309369) (not b!310368) (not tb!19535) (not b!310058) (not b_next!11053) (not b_lambda!10781) (not d!94556) (not b!310066) (not b!310328) (not b!309357) (not b!309744) (not b!308539) (not b!310293) (not b!310288) (not b!310042) (not b!308687) (not b!310145) (not b!309209) (not b!309376) (not d!94318) (not b!310341) (not b!310149) (not b!309933) (not b!310195) (not d!95218) (not d!95188) (not b!310061) (not b!309292) (not b!310208) (not b!310056) (not d!95134) (not b_lambda!10813) (not d!95316) (not b!310059) (not d!95112) (not d!95338) (not b!310024) (not bm!18079) (not b!310414) (not b!310158) (not b!310204) (not b_next!11041) (not b!308557) (not b!310410) (not b_lambda!10705) (not b!310271) (not b!309743) (not b!310246) (not b!310109) (not tb!19703) (not b!310178) b_and!26291 (not b!310096) (not b!309902) (not b!310060) (not b!309746) (not d!95326) (not d!95312) (not b!308693) (not b_lambda!10753) (not d!94744) (not b!310403) (not b!310366) (not b!309884) (not b!310213) (not d!94574) (not b!308793) (not bm!17963) (not b!309632) (not b!309979) (not b!307643) (not b!309299) (not bm!18068) (not b!309004) (not d!95136) (not b!310037) (not b!309247) (not b!310349) (not b!310094) (not bm!18059) (not d!95350) (not b!310265) (not b!309928) (not b!308722) (not b!310180) (not b!310102) (not b!310190) (not b!310215) (not b!308723) (not b!310027) (not d!95086) (not tb!19525) (not b!308842) (not b!310415) (not d!95202) (not b!310142) (not d!94742) (not d!95066) (not b!308680) b_and!26359 (not b!310030) (not b!310420) (not b!308583) (not b!310049) (not b_next!11043) (not b!310063) (not b!309633) (not b!310140) (not b!310212) (not d!95186) (not bm!17968) (not bm!18065) (not d!95154) (not d!95362) (not b!309356) (not d!94720) (not b!310133) (not d!95194) (not b!310002) (not b!310106) (not b!308705) (not b!310219) (not b!309265) (not b_lambda!10741) (not b_next!11039) (not b!310251) (not b!310418) (not b!309986) (not d!95270) (not b!310247) (not d!95382) (not b!309914) (not b!310161) (not d!95192) (not d!94764) (not b!310327) (not d!94798) (not b!309935) (not d!94794) (not b!309954) (not b!310144) (not b!309975) (not d!95152) (not b_lambda!10847) (not b!310127) (not b!309296) (not b!310202) (not d!95110) (not b_next!11057) (not d!94760) (not b!309187) (not b!310315) (not bm!18078) (not d!94704) (not b!310025) (not d!94576) (not b!308534) (not b!308881) (not b!310423) (not d!94792) (not b!310320) (not tb!19683) (not bm!18045) (not d!95278) (not b!308891) (not b!310166) (not b!308540) (not b_lambda!10783) (not d!94284) (not b!307589) (not b!310113) (not d!95096) (not bm!17967) (not d!94452) (not b!310347) (not d!95262) (not d!94988) (not b_lambda!10711) (not b!309680) (not b!310232) (not b!309303) (not d!95168) (not b!309879) (not d!94970) (not b!310249) (not b!309264) (not d!95288) (not b!309365) (not b!310330) (not d!95114) (not b!310234) (not b!310105) (not d!95156) (not b!310155) (not b!310396) (not b!310372) (not b!310221) (not b!309272) (not b!310375) (not b!309908) (not b_next!11055) (not b_next!11019) (not tb!19465) (not b!310386) (not b!309873) (not b!310367) (not d!94522) (not b!309672) (not b!308882) (not b_lambda!10821) (not b!310323) (not b!309018) (not d!95212) (not b!310220) (not b!310055) (not b!310353) (not d!95366) (not bs!36037) (not b!308555) (not d!95290) (not b!310150) (not b!309331) (not d!95216) (not d!95172) (not d!94480) (not b!309426) (not b!309351) (not b!309367) (not b!310389) (not b!309882) (not b!309956) (not b!308875) b_and!26373 (not b!310252) (not b!308788) (not b!310016) (not b!310176) (not b!309702) (not b_lambda!10841) (not d!95054) (not b!310129) b_and!26375 (not b_next!11017) (not b!309771))
(check-sat (not b_next!11025) b_and!26369 (not b_next!11021) b_and!26289 b_and!26361 b_and!26363 (not b_next!11037) b_and!26365 (not b_next!11023) b_and!26297 b_and!26367 b_and!26293 (not b_next!11053) (not b_next!11039) (not b_next!11057) (not b_next!11027) (not b_next!11059) b_and!26295 b_and!26371 b_and!26291 (not b_next!11041) b_and!26359 (not b_next!11043) (not b_next!11055) (not b_next!11019) b_and!26373 b_and!26375 (not b_next!11017))
