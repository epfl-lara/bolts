; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!175534 () Bool)

(assert start!175534)

(declare-fun b!1769445 () Bool)

(declare-fun b_free!48999 () Bool)

(declare-fun b_next!49703 () Bool)

(assert (=> b!1769445 (= b_free!48999 (not b_next!49703))))

(declare-fun tp!501998 () Bool)

(declare-fun b_and!134443 () Bool)

(assert (=> b!1769445 (= tp!501998 b_and!134443)))

(declare-fun b_free!49001 () Bool)

(declare-fun b_next!49705 () Bool)

(assert (=> b!1769445 (= b_free!49001 (not b_next!49705))))

(declare-fun tp!501996 () Bool)

(declare-fun b_and!134445 () Bool)

(assert (=> b!1769445 (= tp!501996 b_and!134445)))

(declare-fun b!1769469 () Bool)

(declare-fun b_free!49003 () Bool)

(declare-fun b_next!49707 () Bool)

(assert (=> b!1769469 (= b_free!49003 (not b_next!49707))))

(declare-fun tp!502006 () Bool)

(declare-fun b_and!134447 () Bool)

(assert (=> b!1769469 (= tp!502006 b_and!134447)))

(declare-fun b_free!49005 () Bool)

(declare-fun b_next!49709 () Bool)

(assert (=> b!1769469 (= b_free!49005 (not b_next!49709))))

(declare-fun tp!502003 () Bool)

(declare-fun b_and!134449 () Bool)

(assert (=> b!1769469 (= tp!502003 b_and!134449)))

(declare-fun b!1769458 () Bool)

(declare-fun b_free!49007 () Bool)

(declare-fun b_next!49711 () Bool)

(assert (=> b!1769458 (= b_free!49007 (not b_next!49711))))

(declare-fun tp!502005 () Bool)

(declare-fun b_and!134451 () Bool)

(assert (=> b!1769458 (= tp!502005 b_and!134451)))

(declare-fun b_free!49009 () Bool)

(declare-fun b_next!49713 () Bool)

(assert (=> b!1769458 (= b_free!49009 (not b_next!49713))))

(declare-fun tp!501995 () Bool)

(declare-fun b_and!134453 () Bool)

(assert (=> b!1769458 (= tp!501995 b_and!134453)))

(declare-fun b!1769484 () Bool)

(declare-fun e!1132403 () Bool)

(assert (=> b!1769484 (= e!1132403 true)))

(declare-fun b!1769483 () Bool)

(declare-fun e!1132402 () Bool)

(assert (=> b!1769483 (= e!1132402 e!1132403)))

(declare-fun b!1769482 () Bool)

(declare-fun e!1132401 () Bool)

(assert (=> b!1769482 (= e!1132401 e!1132402)))

(declare-fun b!1769462 () Bool)

(assert (=> b!1769462 e!1132401))

(assert (= b!1769483 b!1769484))

(assert (= b!1769482 b!1769483))

(assert (= b!1769462 b!1769482))

(declare-fun order!12443 () Int)

(declare-datatypes ((List!19559 0))(
  ( (Nil!19489) (Cons!19489 (h!24890 (_ BitVec 16)) (t!165168 List!19559)) )
))
(declare-datatypes ((TokenValue!3575 0))(
  ( (FloatLiteralValue!7150 (text!25470 List!19559)) (TokenValueExt!3574 (__x!12452 Int)) (Broken!17875 (value!108969 List!19559)) (Object!3644) (End!3575) (Def!3575) (Underscore!3575) (Match!3575) (Else!3575) (Error!3575) (Case!3575) (If!3575) (Extends!3575) (Abstract!3575) (Class!3575) (Val!3575) (DelimiterValue!7150 (del!3635 List!19559)) (KeywordValue!3581 (value!108970 List!19559)) (CommentValue!7150 (value!108971 List!19559)) (WhitespaceValue!7150 (value!108972 List!19559)) (IndentationValue!3575 (value!108973 List!19559)) (String!22206) (Int32!3575) (Broken!17876 (value!108974 List!19559)) (Boolean!3576) (Unit!33685) (OperatorValue!3578 (op!3635 List!19559)) (IdentifierValue!7150 (value!108975 List!19559)) (IdentifierValue!7151 (value!108976 List!19559)) (WhitespaceValue!7151 (value!108977 List!19559)) (True!7150) (False!7150) (Broken!17877 (value!108978 List!19559)) (Broken!17878 (value!108979 List!19559)) (True!7151) (RightBrace!3575) (RightBracket!3575) (Colon!3575) (Null!3575) (Comma!3575) (LeftBracket!3575) (False!7151) (LeftBrace!3575) (ImaginaryLiteralValue!3575 (text!25471 List!19559)) (StringLiteralValue!10725 (value!108980 List!19559)) (EOFValue!3575 (value!108981 List!19559)) (IdentValue!3575 (value!108982 List!19559)) (DelimiterValue!7151 (value!108983 List!19559)) (DedentValue!3575 (value!108984 List!19559)) (NewLineValue!3575 (value!108985 List!19559)) (IntegerValue!10725 (value!108986 (_ BitVec 32)) (text!25472 List!19559)) (IntegerValue!10726 (value!108987 Int) (text!25473 List!19559)) (Times!3575) (Or!3575) (Equal!3575) (Minus!3575) (Broken!17879 (value!108988 List!19559)) (And!3575) (Div!3575) (LessEqual!3575) (Mod!3575) (Concat!8388) (Not!3575) (Plus!3575) (SpaceValue!3575 (value!108989 List!19559)) (IntegerValue!10727 (value!108990 Int) (text!25474 List!19559)) (StringLiteralValue!10726 (text!25475 List!19559)) (FloatLiteralValue!7151 (text!25476 List!19559)) (BytesLiteralValue!3575 (value!108991 List!19559)) (CommentValue!7151 (value!108992 List!19559)) (StringLiteralValue!10727 (value!108993 List!19559)) (ErrorTokenValue!3575 (msg!3636 List!19559)) )
))
(declare-datatypes ((C!9800 0))(
  ( (C!9801 (val!5496 Int)) )
))
(declare-datatypes ((List!19560 0))(
  ( (Nil!19490) (Cons!19490 (h!24891 C!9800) (t!165169 List!19560)) )
))
(declare-datatypes ((Regex!4813 0))(
  ( (ElementMatch!4813 (c!288084 C!9800)) (Concat!8389 (regOne!10138 Regex!4813) (regTwo!10138 Regex!4813)) (EmptyExpr!4813) (Star!4813 (reg!5142 Regex!4813)) (EmptyLang!4813) (Union!4813 (regOne!10139 Regex!4813) (regTwo!10139 Regex!4813)) )
))
(declare-datatypes ((String!22207 0))(
  ( (String!22208 (value!108994 String)) )
))
(declare-datatypes ((IArray!12971 0))(
  ( (IArray!12972 (innerList!6543 List!19560)) )
))
(declare-datatypes ((Conc!6483 0))(
  ( (Node!6483 (left!15607 Conc!6483) (right!15937 Conc!6483) (csize!13196 Int) (cheight!6694 Int)) (Leaf!9446 (xs!9359 IArray!12971) (csize!13197 Int)) (Empty!6483) )
))
(declare-datatypes ((BalanceConc!12910 0))(
  ( (BalanceConc!12911 (c!288085 Conc!6483)) )
))
(declare-datatypes ((TokenValueInjection!6810 0))(
  ( (TokenValueInjection!6811 (toValue!5008 Int) (toChars!4867 Int)) )
))
(declare-datatypes ((Rule!6770 0))(
  ( (Rule!6771 (regex!3485 Regex!4813) (tag!3865 String!22207) (isSeparator!3485 Bool) (transformation!3485 TokenValueInjection!6810)) )
))
(declare-datatypes ((Token!6536 0))(
  ( (Token!6537 (value!108995 TokenValue!3575) (rule!5527 Rule!6770) (size!15478 Int) (originalCharacters!4299 List!19560)) )
))
(declare-datatypes ((tuple2!19094 0))(
  ( (tuple2!19095 (_1!10949 Token!6536) (_2!10949 List!19560)) )
))
(declare-fun lt!685099 () tuple2!19094)

(declare-fun lambda!70380 () Int)

(declare-fun order!12445 () Int)

(declare-fun dynLambda!9458 (Int Int) Int)

(declare-fun dynLambda!9459 (Int Int) Int)

(assert (=> b!1769484 (< (dynLambda!9458 order!12443 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) (dynLambda!9459 order!12445 lambda!70380))))

(declare-fun order!12447 () Int)

(declare-fun dynLambda!9460 (Int Int) Int)

(assert (=> b!1769484 (< (dynLambda!9460 order!12447 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) (dynLambda!9459 order!12445 lambda!70380))))

(declare-fun b!1769442 () Bool)

(declare-fun e!1132391 () Bool)

(declare-fun e!1132388 () Bool)

(assert (=> b!1769442 (= e!1132391 e!1132388)))

(declare-fun res!796857 () Bool)

(assert (=> b!1769442 (=> (not res!796857) (not e!1132388))))

(declare-datatypes ((Option!3992 0))(
  ( (None!3991) (Some!3991 (v!25466 tuple2!19094)) )
))
(declare-fun lt!685087 () Option!3992)

(declare-fun isDefined!3335 (Option!3992) Bool)

(assert (=> b!1769442 (= res!796857 (isDefined!3335 lt!685087))))

(declare-datatypes ((LexerInterface!3114 0))(
  ( (LexerInterfaceExt!3111 (__x!12453 Int)) (Lexer!3112) )
))
(declare-fun thiss!24550 () LexerInterface!3114)

(declare-fun lt!685116 () List!19560)

(declare-datatypes ((List!19561 0))(
  ( (Nil!19491) (Cons!19491 (h!24892 Rule!6770) (t!165170 List!19561)) )
))
(declare-fun rules!3447 () List!19561)

(declare-fun maxPrefix!1668 (LexerInterface!3114 List!19561 List!19560) Option!3992)

(assert (=> b!1769442 (= lt!685087 (maxPrefix!1668 thiss!24550 rules!3447 lt!685116))))

(declare-fun lt!685102 () BalanceConc!12910)

(declare-fun list!7915 (BalanceConc!12910) List!19560)

(assert (=> b!1769442 (= lt!685116 (list!7915 lt!685102))))

(declare-fun token!523 () Token!6536)

(declare-fun charsOf!2134 (Token!6536) BalanceConc!12910)

(assert (=> b!1769442 (= lt!685102 (charsOf!2134 token!523))))

(declare-fun b!1769443 () Bool)

(declare-fun e!1132373 () Bool)

(declare-fun lt!685094 () List!19560)

(declare-fun lt!685103 () Int)

(declare-fun size!15479 (List!19560) Int)

(assert (=> b!1769443 (= e!1132373 (<= (size!15479 lt!685094) lt!685103))))

(declare-fun b!1769444 () Bool)

(declare-fun res!796867 () Bool)

(declare-fun e!1132369 () Bool)

(assert (=> b!1769444 (=> res!796867 e!1132369)))

(declare-fun suffix!1421 () List!19560)

(declare-fun isEmpty!12304 (List!19560) Bool)

(assert (=> b!1769444 (= res!796867 (isEmpty!12304 suffix!1421))))

(declare-fun e!1132390 () Bool)

(assert (=> b!1769445 (= e!1132390 (and tp!501998 tp!501996))))

(declare-fun b!1769446 () Bool)

(declare-fun e!1132394 () Bool)

(declare-fun lt!685084 () Rule!6770)

(assert (=> b!1769446 (= e!1132394 (= (rule!5527 (_1!10949 lt!685099)) lt!685084))))

(declare-fun b!1769447 () Bool)

(declare-fun res!796861 () Bool)

(declare-fun e!1132392 () Bool)

(assert (=> b!1769447 (=> (not res!796861) (not e!1132392))))

(declare-fun rule!422 () Rule!6770)

(assert (=> b!1769447 (= res!796861 (= (rule!5527 token!523) rule!422))))

(declare-fun b!1769448 () Bool)

(declare-fun res!796877 () Bool)

(assert (=> b!1769448 (=> (not res!796877) (not e!1132391))))

(declare-fun rulesInvariant!2783 (LexerInterface!3114 List!19561) Bool)

(assert (=> b!1769448 (= res!796877 (rulesInvariant!2783 thiss!24550 rules!3447))))

(declare-fun tp!502001 () Bool)

(declare-fun e!1132367 () Bool)

(declare-fun b!1769449 () Bool)

(declare-fun e!1132378 () Bool)

(declare-fun inv!25325 (String!22207) Bool)

(declare-fun inv!25330 (TokenValueInjection!6810) Bool)

(assert (=> b!1769449 (= e!1132367 (and tp!502001 (inv!25325 (tag!3865 (h!24892 rules!3447))) (inv!25330 (transformation!3485 (h!24892 rules!3447))) e!1132378))))

(declare-fun b!1769450 () Bool)

(assert (=> b!1769450 (= e!1132388 e!1132392)))

(declare-fun res!796863 () Bool)

(assert (=> b!1769450 (=> (not res!796863) (not e!1132392))))

(declare-fun lt!685101 () tuple2!19094)

(assert (=> b!1769450 (= res!796863 (= (_1!10949 lt!685101) token!523))))

(declare-fun get!5952 (Option!3992) tuple2!19094)

(assert (=> b!1769450 (= lt!685101 (get!5952 lt!685087))))

(declare-fun b!1769451 () Bool)

(declare-fun e!1132368 () Bool)

(declare-fun e!1132386 () Bool)

(assert (=> b!1769451 (= e!1132368 e!1132386)))

(declare-fun res!796873 () Bool)

(assert (=> b!1769451 (=> res!796873 e!1132386)))

(declare-fun lt!685107 () Int)

(declare-fun size!15480 (BalanceConc!12910) Int)

(assert (=> b!1769451 (= res!796873 (<= lt!685107 (size!15480 lt!685102)))))

(declare-fun lt!685113 () Regex!4813)

(declare-fun matchR!2286 (Regex!4813 List!19560) Bool)

(assert (=> b!1769451 (matchR!2286 lt!685113 lt!685116)))

(declare-datatypes ((Unit!33686 0))(
  ( (Unit!33687) )
))
(declare-fun lt!685083 () Unit!33686)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!192 (LexerInterface!3114 List!19561 List!19560 Token!6536 Rule!6770 List!19560) Unit!33686)

(assert (=> b!1769451 (= lt!685083 (lemmaMaxPrefixThenMatchesRulesRegex!192 thiss!24550 rules!3447 lt!685116 token!523 rule!422 Nil!19490))))

(declare-fun e!1132377 () Bool)

(declare-fun b!1769452 () Bool)

(declare-fun tp!501997 () Bool)

(declare-fun e!1132380 () Bool)

(assert (=> b!1769452 (= e!1132380 (and tp!501997 (inv!25325 (tag!3865 rule!422)) (inv!25330 (transformation!3485 rule!422)) e!1132377))))

(declare-fun b!1769453 () Bool)

(declare-fun e!1132393 () Bool)

(declare-fun tp!502002 () Bool)

(assert (=> b!1769453 (= e!1132393 (and tp!502002 (inv!25325 (tag!3865 (rule!5527 token!523))) (inv!25330 (transformation!3485 (rule!5527 token!523))) e!1132390))))

(declare-fun b!1769454 () Bool)

(declare-fun e!1132379 () Bool)

(declare-fun e!1132385 () Bool)

(assert (=> b!1769454 (= e!1132379 e!1132385)))

(declare-fun res!796875 () Bool)

(assert (=> b!1769454 (=> res!796875 e!1132385)))

(declare-fun lt!685100 () List!19560)

(declare-fun lt!685092 () List!19560)

(declare-fun isPrefix!1725 (List!19560 List!19560) Bool)

(assert (=> b!1769454 (= res!796875 (not (isPrefix!1725 lt!685100 lt!685092)))))

(declare-fun ++!5309 (List!19560 List!19560) List!19560)

(assert (=> b!1769454 (isPrefix!1725 lt!685100 (++!5309 lt!685100 (_2!10949 lt!685099)))))

(declare-fun lt!685088 () Unit!33686)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1234 (List!19560 List!19560) Unit!33686)

(assert (=> b!1769454 (= lt!685088 (lemmaConcatTwoListThenFirstIsPrefix!1234 lt!685100 (_2!10949 lt!685099)))))

(declare-fun lt!685082 () BalanceConc!12910)

(assert (=> b!1769454 (= lt!685100 (list!7915 lt!685082))))

(assert (=> b!1769454 (= lt!685082 (charsOf!2134 (_1!10949 lt!685099)))))

(declare-fun e!1132382 () Bool)

(assert (=> b!1769454 e!1132382))

(declare-fun res!796868 () Bool)

(assert (=> b!1769454 (=> (not res!796868) (not e!1132382))))

(declare-datatypes ((Option!3993 0))(
  ( (None!3992) (Some!3992 (v!25467 Rule!6770)) )
))
(declare-fun lt!685093 () Option!3993)

(declare-fun isDefined!3336 (Option!3993) Bool)

(assert (=> b!1769454 (= res!796868 (isDefined!3336 lt!685093))))

(declare-fun getRuleFromTag!533 (LexerInterface!3114 List!19561 String!22207) Option!3993)

(assert (=> b!1769454 (= lt!685093 (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 (_1!10949 lt!685099)))))))

(declare-fun lt!685115 () Unit!33686)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!533 (LexerInterface!3114 List!19561 List!19560 Token!6536) Unit!33686)

(assert (=> b!1769454 (= lt!685115 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!533 thiss!24550 rules!3447 lt!685092 (_1!10949 lt!685099)))))

(declare-fun lt!685114 () Option!3992)

(assert (=> b!1769454 (= lt!685099 (get!5952 lt!685114))))

(declare-fun lt!685106 () Unit!33686)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!636 (LexerInterface!3114 List!19561 List!19560 List!19560) Unit!33686)

(assert (=> b!1769454 (= lt!685106 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!636 thiss!24550 rules!3447 lt!685116 suffix!1421))))

(assert (=> b!1769454 (= lt!685114 (maxPrefix!1668 thiss!24550 rules!3447 lt!685092))))

(assert (=> b!1769454 (isPrefix!1725 lt!685116 lt!685092)))

(declare-fun lt!685110 () Unit!33686)

(assert (=> b!1769454 (= lt!685110 (lemmaConcatTwoListThenFirstIsPrefix!1234 lt!685116 suffix!1421))))

(assert (=> b!1769454 (= lt!685092 (++!5309 lt!685116 suffix!1421))))

(declare-fun b!1769456 () Bool)

(assert (=> b!1769456 (= e!1132392 (not e!1132369))))

(declare-fun res!796871 () Bool)

(assert (=> b!1769456 (=> res!796871 e!1132369)))

(assert (=> b!1769456 (= res!796871 (not (matchR!2286 (regex!3485 rule!422) lt!685116)))))

(declare-fun ruleValid!983 (LexerInterface!3114 Rule!6770) Bool)

(assert (=> b!1769456 (ruleValid!983 thiss!24550 rule!422)))

(declare-fun lt!685090 () Unit!33686)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!506 (LexerInterface!3114 Rule!6770 List!19561) Unit!33686)

(assert (=> b!1769456 (= lt!685090 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!506 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1769457 () Bool)

(declare-fun e!1132375 () Bool)

(declare-fun tp!502000 () Bool)

(assert (=> b!1769457 (= e!1132375 (and e!1132367 tp!502000))))

(assert (=> b!1769458 (= e!1132377 (and tp!502005 tp!501995))))

(declare-fun b!1769459 () Bool)

(declare-fun e!1132371 () Bool)

(assert (=> b!1769459 (= e!1132371 e!1132368)))

(declare-fun res!796872 () Bool)

(assert (=> b!1769459 (=> res!796872 e!1132368)))

(declare-fun lt!685085 () List!19560)

(declare-fun lt!685105 () Option!3992)

(assert (=> b!1769459 (= res!796872 (or (not (= lt!685085 (_2!10949 lt!685099))) (not (= lt!685105 (Some!3991 (tuple2!19095 (_1!10949 lt!685099) lt!685085))))))))

(assert (=> b!1769459 (= (_2!10949 lt!685099) lt!685085)))

(declare-fun lt!685086 () Unit!33686)

(declare-fun lemmaSamePrefixThenSameSuffix!836 (List!19560 List!19560 List!19560 List!19560 List!19560) Unit!33686)

(assert (=> b!1769459 (= lt!685086 (lemmaSamePrefixThenSameSuffix!836 lt!685100 (_2!10949 lt!685099) lt!685100 lt!685085 lt!685092))))

(declare-fun getSuffix!892 (List!19560 List!19560) List!19560)

(assert (=> b!1769459 (= lt!685085 (getSuffix!892 lt!685092 lt!685100))))

(declare-fun lt!685089 () TokenValue!3575)

(assert (=> b!1769459 (= lt!685105 (Some!3991 (tuple2!19095 (Token!6537 lt!685089 (rule!5527 (_1!10949 lt!685099)) lt!685103 lt!685100) (_2!10949 lt!685099))))))

(declare-fun maxPrefixOneRule!1037 (LexerInterface!3114 Rule!6770 List!19560) Option!3992)

(assert (=> b!1769459 (= lt!685105 (maxPrefixOneRule!1037 thiss!24550 (rule!5527 (_1!10949 lt!685099)) lt!685092))))

(assert (=> b!1769459 (= lt!685103 (size!15479 lt!685100))))

(declare-fun apply!5285 (TokenValueInjection!6810 BalanceConc!12910) TokenValue!3575)

(declare-fun seqFromList!2454 (List!19560) BalanceConc!12910)

(assert (=> b!1769459 (= lt!685089 (apply!5285 (transformation!3485 (rule!5527 (_1!10949 lt!685099))) (seqFromList!2454 lt!685100)))))

(declare-fun lt!685098 () Unit!33686)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!415 (LexerInterface!3114 List!19561 List!19560 List!19560 List!19560 Rule!6770) Unit!33686)

(assert (=> b!1769459 (= lt!685098 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!415 thiss!24550 rules!3447 lt!685100 lt!685092 (_2!10949 lt!685099) (rule!5527 (_1!10949 lt!685099))))))

(declare-fun b!1769460 () Bool)

(declare-fun res!796865 () Bool)

(assert (=> b!1769460 (=> (not res!796865) (not e!1132391))))

(declare-fun contains!3515 (List!19561 Rule!6770) Bool)

(assert (=> b!1769460 (= res!796865 (contains!3515 rules!3447 rule!422))))

(declare-fun b!1769461 () Bool)

(declare-fun e!1132372 () Bool)

(declare-fun e!1132381 () Bool)

(assert (=> b!1769461 (= e!1132372 e!1132381)))

(declare-fun res!796866 () Bool)

(assert (=> b!1769461 (=> res!796866 e!1132381)))

(declare-fun dynLambda!9461 (Int TokenValue!3575) BalanceConc!12910)

(declare-fun dynLambda!9462 (Int BalanceConc!12910) TokenValue!3575)

(assert (=> b!1769461 (= res!796866 (not (= (list!7915 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))) lt!685100)))))

(declare-fun lt!685112 () Unit!33686)

(declare-fun lemmaSemiInverse!623 (TokenValueInjection!6810 BalanceConc!12910) Unit!33686)

(assert (=> b!1769461 (= lt!685112 (lemmaSemiInverse!623 (transformation!3485 (rule!5527 (_1!10949 lt!685099))) lt!685082))))

(assert (=> b!1769462 (= e!1132385 e!1132372)))

(declare-fun res!796869 () Bool)

(assert (=> b!1769462 (=> res!796869 e!1132372)))

(declare-fun Forall!852 (Int) Bool)

(assert (=> b!1769462 (= res!796869 (not (Forall!852 lambda!70380)))))

(declare-fun lt!685111 () Unit!33686)

(declare-fun lemmaInv!684 (TokenValueInjection!6810) Unit!33686)

(assert (=> b!1769462 (= lt!685111 (lemmaInv!684 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))))

(declare-fun b!1769463 () Bool)

(assert (=> b!1769463 (= e!1132382 e!1132394)))

(declare-fun res!796878 () Bool)

(assert (=> b!1769463 (=> (not res!796878) (not e!1132394))))

(assert (=> b!1769463 (= res!796878 (matchR!2286 (regex!3485 lt!685084) (list!7915 (charsOf!2134 (_1!10949 lt!685099)))))))

(declare-fun get!5953 (Option!3993) Rule!6770)

(assert (=> b!1769463 (= lt!685084 (get!5953 lt!685093))))

(declare-fun b!1769464 () Bool)

(declare-fun res!796862 () Bool)

(assert (=> b!1769464 (=> res!796862 e!1132385)))

(assert (=> b!1769464 (= res!796862 (not (matchR!2286 (regex!3485 (rule!5527 (_1!10949 lt!685099))) lt!685100)))))

(declare-fun b!1769465 () Bool)

(declare-fun e!1132387 () Bool)

(declare-fun tp_is_empty!7869 () Bool)

(declare-fun tp!502004 () Bool)

(assert (=> b!1769465 (= e!1132387 (and tp_is_empty!7869 tp!502004))))

(declare-fun res!796876 () Bool)

(assert (=> start!175534 (=> (not res!796876) (not e!1132391))))

(get-info :version)

(assert (=> start!175534 (= res!796876 ((_ is Lexer!3112) thiss!24550))))

(assert (=> start!175534 e!1132391))

(assert (=> start!175534 e!1132387))

(assert (=> start!175534 e!1132380))

(assert (=> start!175534 true))

(declare-fun e!1132389 () Bool)

(declare-fun inv!25331 (Token!6536) Bool)

(assert (=> start!175534 (and (inv!25331 token!523) e!1132389)))

(assert (=> start!175534 e!1132375))

(declare-fun b!1769455 () Bool)

(declare-fun e!1132376 () Bool)

(assert (=> b!1769455 (= e!1132386 e!1132376)))

(declare-fun res!796874 () Bool)

(assert (=> b!1769455 (=> res!796874 e!1132376)))

(declare-fun lt!685095 () List!19560)

(assert (=> b!1769455 (= res!796874 (not (= lt!685095 suffix!1421)))))

(assert (=> b!1769455 (= suffix!1421 lt!685095)))

(declare-fun lt!685091 () Unit!33686)

(assert (=> b!1769455 (= lt!685091 (lemmaSamePrefixThenSameSuffix!836 lt!685116 suffix!1421 lt!685116 lt!685095 lt!685092))))

(assert (=> b!1769455 (= lt!685095 (getSuffix!892 lt!685092 lt!685116))))

(assert (=> b!1769455 (matchR!2286 lt!685113 lt!685100)))

(declare-fun lt!685097 () Unit!33686)

(assert (=> b!1769455 (= lt!685097 (lemmaMaxPrefixThenMatchesRulesRegex!192 thiss!24550 rules!3447 lt!685092 (_1!10949 lt!685099) (rule!5527 (_1!10949 lt!685099)) (_2!10949 lt!685099)))))

(declare-fun b!1769466 () Bool)

(declare-fun tp!501999 () Bool)

(declare-fun inv!21 (TokenValue!3575) Bool)

(assert (=> b!1769466 (= e!1132389 (and (inv!21 (value!108995 token!523)) e!1132393 tp!501999))))

(declare-fun b!1769467 () Bool)

(declare-fun res!796859 () Bool)

(assert (=> b!1769467 (=> (not res!796859) (not e!1132392))))

(assert (=> b!1769467 (= res!796859 (isEmpty!12304 (_2!10949 lt!685101)))))

(declare-fun b!1769468 () Bool)

(declare-fun res!796870 () Bool)

(assert (=> b!1769468 (=> res!796870 e!1132381)))

(assert (=> b!1769468 (= res!796870 (not (= lt!685082 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099))))))))

(assert (=> b!1769469 (= e!1132378 (and tp!502006 tp!502003))))

(declare-fun b!1769470 () Bool)

(assert (=> b!1769470 (= e!1132381 e!1132371)))

(declare-fun res!796860 () Bool)

(assert (=> b!1769470 (=> res!796860 e!1132371)))

(declare-fun lt!685108 () TokenValue!3575)

(assert (=> b!1769470 (= res!796860 (not (= lt!685114 (Some!3991 (tuple2!19095 (Token!6537 lt!685108 (rule!5527 (_1!10949 lt!685099)) lt!685107 lt!685100) (_2!10949 lt!685099))))))))

(assert (=> b!1769470 (= lt!685107 (size!15480 lt!685082))))

(assert (=> b!1769470 (= lt!685108 (apply!5285 (transformation!3485 (rule!5527 (_1!10949 lt!685099))) lt!685082))))

(declare-fun lt!685109 () Unit!33686)

(declare-fun lemmaCharactersSize!543 (Token!6536) Unit!33686)

(assert (=> b!1769470 (= lt!685109 (lemmaCharactersSize!543 (_1!10949 lt!685099)))))

(declare-fun lt!685104 () Unit!33686)

(declare-fun lemmaEqSameImage!396 (TokenValueInjection!6810 BalanceConc!12910 BalanceConc!12910) Unit!33686)

(assert (=> b!1769470 (= lt!685104 (lemmaEqSameImage!396 (transformation!3485 (rule!5527 (_1!10949 lt!685099))) lt!685082 (seqFromList!2454 (originalCharacters!4299 (_1!10949 lt!685099)))))))

(declare-fun b!1769471 () Bool)

(declare-fun res!796864 () Bool)

(assert (=> b!1769471 (=> (not res!796864) (not e!1132391))))

(declare-fun isEmpty!12305 (List!19561) Bool)

(assert (=> b!1769471 (= res!796864 (not (isEmpty!12305 rules!3447)))))

(declare-fun b!1769472 () Bool)

(assert (=> b!1769472 (= e!1132376 e!1132373)))

(declare-fun res!796858 () Bool)

(assert (=> b!1769472 (=> res!796858 e!1132373)))

(assert (=> b!1769472 (= res!796858 (not (isPrefix!1725 lt!685094 lt!685092)))))

(declare-fun head!4114 (List!19560) C!9800)

(assert (=> b!1769472 (isPrefix!1725 (++!5309 lt!685116 (Cons!19490 (head!4114 lt!685095) Nil!19490)) lt!685092)))

(declare-fun lt!685096 () Unit!33686)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!261 (List!19560 List!19560) Unit!33686)

(assert (=> b!1769472 (= lt!685096 (lemmaAddHeadSuffixToPrefixStillPrefix!261 lt!685116 lt!685092))))

(declare-fun b!1769473 () Bool)

(assert (=> b!1769473 (= e!1132369 e!1132379)))

(declare-fun res!796856 () Bool)

(assert (=> b!1769473 (=> res!796856 e!1132379)))

(declare-fun prefixMatch!696 (Regex!4813 List!19560) Bool)

(assert (=> b!1769473 (= res!796856 (prefixMatch!696 lt!685113 lt!685094))))

(assert (=> b!1769473 (= lt!685094 (++!5309 lt!685116 (Cons!19490 (head!4114 suffix!1421) Nil!19490)))))

(declare-fun rulesRegex!841 (LexerInterface!3114 List!19561) Regex!4813)

(assert (=> b!1769473 (= lt!685113 (rulesRegex!841 thiss!24550 rules!3447))))

(assert (= (and start!175534 res!796876) b!1769471))

(assert (= (and b!1769471 res!796864) b!1769448))

(assert (= (and b!1769448 res!796877) b!1769460))

(assert (= (and b!1769460 res!796865) b!1769442))

(assert (= (and b!1769442 res!796857) b!1769450))

(assert (= (and b!1769450 res!796863) b!1769467))

(assert (= (and b!1769467 res!796859) b!1769447))

(assert (= (and b!1769447 res!796861) b!1769456))

(assert (= (and b!1769456 (not res!796871)) b!1769444))

(assert (= (and b!1769444 (not res!796867)) b!1769473))

(assert (= (and b!1769473 (not res!796856)) b!1769454))

(assert (= (and b!1769454 res!796868) b!1769463))

(assert (= (and b!1769463 res!796878) b!1769446))

(assert (= (and b!1769454 (not res!796875)) b!1769464))

(assert (= (and b!1769464 (not res!796862)) b!1769462))

(assert (= (and b!1769462 (not res!796869)) b!1769461))

(assert (= (and b!1769461 (not res!796866)) b!1769468))

(assert (= (and b!1769468 (not res!796870)) b!1769470))

(assert (= (and b!1769470 (not res!796860)) b!1769459))

(assert (= (and b!1769459 (not res!796872)) b!1769451))

(assert (= (and b!1769451 (not res!796873)) b!1769455))

(assert (= (and b!1769455 (not res!796874)) b!1769472))

(assert (= (and b!1769472 (not res!796858)) b!1769443))

(assert (= (and start!175534 ((_ is Cons!19490) suffix!1421)) b!1769465))

(assert (= b!1769452 b!1769458))

(assert (= start!175534 b!1769452))

(assert (= b!1769453 b!1769445))

(assert (= b!1769466 b!1769453))

(assert (= start!175534 b!1769466))

(assert (= b!1769449 b!1769469))

(assert (= b!1769457 b!1769449))

(assert (= (and start!175534 ((_ is Cons!19491) rules!3447)) b!1769457))

(declare-fun b_lambda!57575 () Bool)

(assert (=> (not b_lambda!57575) (not b!1769461)))

(declare-fun tb!107007 () Bool)

(declare-fun t!165151 () Bool)

(assert (=> (and b!1769445 (= (toChars!4867 (transformation!3485 (rule!5527 token!523))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) t!165151) tb!107007))

(declare-fun tp!502009 () Bool)

(declare-fun b!1769489 () Bool)

(declare-fun e!1132406 () Bool)

(declare-fun inv!25332 (Conc!6483) Bool)

(assert (=> b!1769489 (= e!1132406 (and (inv!25332 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))) tp!502009))))

(declare-fun result!128746 () Bool)

(declare-fun inv!25333 (BalanceConc!12910) Bool)

(assert (=> tb!107007 (= result!128746 (and (inv!25333 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))) e!1132406))))

(assert (= tb!107007 b!1769489))

(declare-fun m!2187791 () Bool)

(assert (=> b!1769489 m!2187791))

(declare-fun m!2187793 () Bool)

(assert (=> tb!107007 m!2187793))

(assert (=> b!1769461 t!165151))

(declare-fun b_and!134455 () Bool)

(assert (= b_and!134445 (and (=> t!165151 result!128746) b_and!134455)))

(declare-fun t!165153 () Bool)

(declare-fun tb!107009 () Bool)

(assert (=> (and b!1769469 (= (toChars!4867 (transformation!3485 (h!24892 rules!3447))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) t!165153) tb!107009))

(declare-fun result!128750 () Bool)

(assert (= result!128750 result!128746))

(assert (=> b!1769461 t!165153))

(declare-fun b_and!134457 () Bool)

(assert (= b_and!134449 (and (=> t!165153 result!128750) b_and!134457)))

(declare-fun t!165155 () Bool)

(declare-fun tb!107011 () Bool)

(assert (=> (and b!1769458 (= (toChars!4867 (transformation!3485 rule!422)) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) t!165155) tb!107011))

(declare-fun result!128752 () Bool)

(assert (= result!128752 result!128746))

(assert (=> b!1769461 t!165155))

(declare-fun b_and!134459 () Bool)

(assert (= b_and!134453 (and (=> t!165155 result!128752) b_and!134459)))

(declare-fun b_lambda!57577 () Bool)

(assert (=> (not b_lambda!57577) (not b!1769461)))

(declare-fun tb!107013 () Bool)

(declare-fun t!165157 () Bool)

(assert (=> (and b!1769445 (= (toValue!5008 (transformation!3485 (rule!5527 token!523))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) t!165157) tb!107013))

(declare-fun result!128754 () Bool)

(assert (=> tb!107013 (= result!128754 (inv!21 (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))))

(declare-fun m!2187795 () Bool)

(assert (=> tb!107013 m!2187795))

(assert (=> b!1769461 t!165157))

(declare-fun b_and!134461 () Bool)

(assert (= b_and!134443 (and (=> t!165157 result!128754) b_and!134461)))

(declare-fun tb!107015 () Bool)

(declare-fun t!165159 () Bool)

(assert (=> (and b!1769469 (= (toValue!5008 (transformation!3485 (h!24892 rules!3447))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) t!165159) tb!107015))

(declare-fun result!128758 () Bool)

(assert (= result!128758 result!128754))

(assert (=> b!1769461 t!165159))

(declare-fun b_and!134463 () Bool)

(assert (= b_and!134447 (and (=> t!165159 result!128758) b_and!134463)))

(declare-fun t!165161 () Bool)

(declare-fun tb!107017 () Bool)

(assert (=> (and b!1769458 (= (toValue!5008 (transformation!3485 rule!422)) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) t!165161) tb!107017))

(declare-fun result!128760 () Bool)

(assert (= result!128760 result!128754))

(assert (=> b!1769461 t!165161))

(declare-fun b_and!134465 () Bool)

(assert (= b_and!134451 (and (=> t!165161 result!128760) b_and!134465)))

(declare-fun b_lambda!57579 () Bool)

(assert (=> (not b_lambda!57579) (not b!1769468)))

(declare-fun tb!107019 () Bool)

(declare-fun t!165163 () Bool)

(assert (=> (and b!1769445 (= (toChars!4867 (transformation!3485 (rule!5527 token!523))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) t!165163) tb!107019))

(declare-fun b!1769492 () Bool)

(declare-fun e!1132410 () Bool)

(declare-fun tp!502010 () Bool)

(assert (=> b!1769492 (= e!1132410 (and (inv!25332 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099))))) tp!502010))))

(declare-fun result!128762 () Bool)

(assert (=> tb!107019 (= result!128762 (and (inv!25333 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099)))) e!1132410))))

(assert (= tb!107019 b!1769492))

(declare-fun m!2187797 () Bool)

(assert (=> b!1769492 m!2187797))

(declare-fun m!2187799 () Bool)

(assert (=> tb!107019 m!2187799))

(assert (=> b!1769468 t!165163))

(declare-fun b_and!134467 () Bool)

(assert (= b_and!134455 (and (=> t!165163 result!128762) b_and!134467)))

(declare-fun t!165165 () Bool)

(declare-fun tb!107021 () Bool)

(assert (=> (and b!1769469 (= (toChars!4867 (transformation!3485 (h!24892 rules!3447))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) t!165165) tb!107021))

(declare-fun result!128764 () Bool)

(assert (= result!128764 result!128762))

(assert (=> b!1769468 t!165165))

(declare-fun b_and!134469 () Bool)

(assert (= b_and!134457 (and (=> t!165165 result!128764) b_and!134469)))

(declare-fun t!165167 () Bool)

(declare-fun tb!107023 () Bool)

(assert (=> (and b!1769458 (= (toChars!4867 (transformation!3485 rule!422)) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) t!165167) tb!107023))

(declare-fun result!128766 () Bool)

(assert (= result!128766 result!128762))

(assert (=> b!1769468 t!165167))

(declare-fun b_and!134471 () Bool)

(assert (= b_and!134459 (and (=> t!165167 result!128766) b_and!134471)))

(declare-fun m!2187801 () Bool)

(assert (=> b!1769467 m!2187801))

(declare-fun m!2187803 () Bool)

(assert (=> b!1769452 m!2187803))

(declare-fun m!2187805 () Bool)

(assert (=> b!1769452 m!2187805))

(declare-fun m!2187807 () Bool)

(assert (=> b!1769442 m!2187807))

(declare-fun m!2187809 () Bool)

(assert (=> b!1769442 m!2187809))

(declare-fun m!2187811 () Bool)

(assert (=> b!1769442 m!2187811))

(declare-fun m!2187813 () Bool)

(assert (=> b!1769442 m!2187813))

(declare-fun m!2187815 () Bool)

(assert (=> b!1769464 m!2187815))

(declare-fun m!2187817 () Bool)

(assert (=> b!1769450 m!2187817))

(declare-fun m!2187819 () Bool)

(assert (=> b!1769471 m!2187819))

(declare-fun m!2187821 () Bool)

(assert (=> b!1769461 m!2187821))

(assert (=> b!1769461 m!2187821))

(declare-fun m!2187823 () Bool)

(assert (=> b!1769461 m!2187823))

(assert (=> b!1769461 m!2187823))

(declare-fun m!2187825 () Bool)

(assert (=> b!1769461 m!2187825))

(declare-fun m!2187827 () Bool)

(assert (=> b!1769461 m!2187827))

(declare-fun m!2187829 () Bool)

(assert (=> b!1769443 m!2187829))

(declare-fun m!2187831 () Bool)

(assert (=> b!1769459 m!2187831))

(declare-fun m!2187833 () Bool)

(assert (=> b!1769459 m!2187833))

(declare-fun m!2187835 () Bool)

(assert (=> b!1769459 m!2187835))

(declare-fun m!2187837 () Bool)

(assert (=> b!1769459 m!2187837))

(declare-fun m!2187839 () Bool)

(assert (=> b!1769459 m!2187839))

(assert (=> b!1769459 m!2187835))

(declare-fun m!2187841 () Bool)

(assert (=> b!1769459 m!2187841))

(declare-fun m!2187843 () Bool)

(assert (=> b!1769459 m!2187843))

(declare-fun m!2187845 () Bool)

(assert (=> b!1769473 m!2187845))

(declare-fun m!2187847 () Bool)

(assert (=> b!1769473 m!2187847))

(declare-fun m!2187849 () Bool)

(assert (=> b!1769473 m!2187849))

(declare-fun m!2187851 () Bool)

(assert (=> b!1769473 m!2187851))

(declare-fun m!2187853 () Bool)

(assert (=> b!1769454 m!2187853))

(declare-fun m!2187855 () Bool)

(assert (=> b!1769454 m!2187855))

(declare-fun m!2187857 () Bool)

(assert (=> b!1769454 m!2187857))

(declare-fun m!2187859 () Bool)

(assert (=> b!1769454 m!2187859))

(declare-fun m!2187861 () Bool)

(assert (=> b!1769454 m!2187861))

(declare-fun m!2187863 () Bool)

(assert (=> b!1769454 m!2187863))

(declare-fun m!2187865 () Bool)

(assert (=> b!1769454 m!2187865))

(declare-fun m!2187867 () Bool)

(assert (=> b!1769454 m!2187867))

(declare-fun m!2187869 () Bool)

(assert (=> b!1769454 m!2187869))

(declare-fun m!2187871 () Bool)

(assert (=> b!1769454 m!2187871))

(declare-fun m!2187873 () Bool)

(assert (=> b!1769454 m!2187873))

(declare-fun m!2187875 () Bool)

(assert (=> b!1769454 m!2187875))

(assert (=> b!1769454 m!2187869))

(declare-fun m!2187877 () Bool)

(assert (=> b!1769454 m!2187877))

(declare-fun m!2187879 () Bool)

(assert (=> b!1769454 m!2187879))

(declare-fun m!2187881 () Bool)

(assert (=> b!1769454 m!2187881))

(declare-fun m!2187883 () Bool)

(assert (=> b!1769448 m!2187883))

(declare-fun m!2187885 () Bool)

(assert (=> b!1769462 m!2187885))

(declare-fun m!2187887 () Bool)

(assert (=> b!1769462 m!2187887))

(declare-fun m!2187889 () Bool)

(assert (=> b!1769451 m!2187889))

(declare-fun m!2187891 () Bool)

(assert (=> b!1769451 m!2187891))

(declare-fun m!2187893 () Bool)

(assert (=> b!1769451 m!2187893))

(declare-fun m!2187895 () Bool)

(assert (=> b!1769455 m!2187895))

(declare-fun m!2187897 () Bool)

(assert (=> b!1769455 m!2187897))

(declare-fun m!2187899 () Bool)

(assert (=> b!1769455 m!2187899))

(declare-fun m!2187901 () Bool)

(assert (=> b!1769455 m!2187901))

(declare-fun m!2187903 () Bool)

(assert (=> b!1769444 m!2187903))

(declare-fun m!2187905 () Bool)

(assert (=> b!1769453 m!2187905))

(declare-fun m!2187907 () Bool)

(assert (=> b!1769453 m!2187907))

(assert (=> b!1769463 m!2187865))

(assert (=> b!1769463 m!2187865))

(declare-fun m!2187909 () Bool)

(assert (=> b!1769463 m!2187909))

(assert (=> b!1769463 m!2187909))

(declare-fun m!2187911 () Bool)

(assert (=> b!1769463 m!2187911))

(declare-fun m!2187913 () Bool)

(assert (=> b!1769463 m!2187913))

(declare-fun m!2187915 () Bool)

(assert (=> start!175534 m!2187915))

(declare-fun m!2187917 () Bool)

(assert (=> b!1769470 m!2187917))

(assert (=> b!1769470 m!2187917))

(declare-fun m!2187919 () Bool)

(assert (=> b!1769470 m!2187919))

(declare-fun m!2187921 () Bool)

(assert (=> b!1769470 m!2187921))

(declare-fun m!2187923 () Bool)

(assert (=> b!1769470 m!2187923))

(declare-fun m!2187925 () Bool)

(assert (=> b!1769470 m!2187925))

(declare-fun m!2187927 () Bool)

(assert (=> b!1769466 m!2187927))

(declare-fun m!2187929 () Bool)

(assert (=> b!1769468 m!2187929))

(declare-fun m!2187931 () Bool)

(assert (=> b!1769449 m!2187931))

(declare-fun m!2187933 () Bool)

(assert (=> b!1769449 m!2187933))

(declare-fun m!2187935 () Bool)

(assert (=> b!1769460 m!2187935))

(declare-fun m!2187937 () Bool)

(assert (=> b!1769456 m!2187937))

(declare-fun m!2187939 () Bool)

(assert (=> b!1769456 m!2187939))

(declare-fun m!2187941 () Bool)

(assert (=> b!1769456 m!2187941))

(declare-fun m!2187943 () Bool)

(assert (=> b!1769472 m!2187943))

(declare-fun m!2187945 () Bool)

(assert (=> b!1769472 m!2187945))

(declare-fun m!2187947 () Bool)

(assert (=> b!1769472 m!2187947))

(declare-fun m!2187949 () Bool)

(assert (=> b!1769472 m!2187949))

(assert (=> b!1769472 m!2187945))

(declare-fun m!2187951 () Bool)

(assert (=> b!1769472 m!2187951))

(check-sat (not b_next!49713) b_and!134461 (not b!1769448) (not start!175534) (not b!1769455) (not tb!107013) (not b!1769489) (not b!1769463) (not b!1769472) (not b!1769442) (not b!1769462) (not tb!107019) (not b_next!49703) (not b!1769444) b_and!134469 (not b!1769464) (not tb!107007) (not b!1769456) (not b!1769454) (not b_lambda!57575) (not b_lambda!57579) (not b!1769471) (not b!1769465) (not b!1769452) (not b!1769461) (not b_next!49709) (not b!1769473) (not b_next!49711) (not b!1769449) (not b!1769443) b_and!134471 (not b!1769466) (not b!1769457) (not b_next!49705) (not b_next!49707) b_and!134465 (not b!1769492) tp_is_empty!7869 (not b!1769459) (not b!1769467) (not b_lambda!57577) (not b!1769460) (not b!1769450) b_and!134463 b_and!134467 (not b!1769451) (not b!1769453) (not b!1769470))
(check-sat (not b_next!49713) (not b_next!49703) b_and!134461 b_and!134469 (not b_next!49709) (not b_next!49711) b_and!134471 b_and!134465 b_and!134463 b_and!134467 (not b_next!49705) (not b_next!49707))
(get-model)

(declare-fun d!540379 () Bool)

(declare-fun isBalanced!2027 (Conc!6483) Bool)

(assert (=> d!540379 (= (inv!25333 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))) (isBalanced!2027 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))))))

(declare-fun bs!404519 () Bool)

(assert (= bs!404519 d!540379))

(declare-fun m!2187955 () Bool)

(assert (=> bs!404519 m!2187955))

(assert (=> tb!107007 d!540379))

(declare-fun d!540383 () Bool)

(assert (=> d!540383 (= (isEmpty!12305 rules!3447) ((_ is Nil!19491) rules!3447))))

(assert (=> b!1769471 d!540383))

(declare-fun d!540385 () Bool)

(assert (=> d!540385 (= (get!5952 lt!685087) (v!25466 lt!685087))))

(assert (=> b!1769450 d!540385))

(declare-fun d!540387 () Bool)

(assert (=> d!540387 (isPrefix!1725 (++!5309 lt!685116 (Cons!19490 (head!4114 (getSuffix!892 lt!685092 lt!685116)) Nil!19490)) lt!685092)))

(declare-fun lt!685125 () Unit!33686)

(declare-fun choose!11003 (List!19560 List!19560) Unit!33686)

(assert (=> d!540387 (= lt!685125 (choose!11003 lt!685116 lt!685092))))

(assert (=> d!540387 (isPrefix!1725 lt!685116 lt!685092)))

(assert (=> d!540387 (= (lemmaAddHeadSuffixToPrefixStillPrefix!261 lt!685116 lt!685092) lt!685125)))

(declare-fun bs!404521 () Bool)

(assert (= bs!404521 d!540387))

(declare-fun m!2187971 () Bool)

(assert (=> bs!404521 m!2187971))

(assert (=> bs!404521 m!2187881))

(assert (=> bs!404521 m!2187897))

(assert (=> bs!404521 m!2187897))

(declare-fun m!2187973 () Bool)

(assert (=> bs!404521 m!2187973))

(declare-fun m!2187975 () Bool)

(assert (=> bs!404521 m!2187975))

(declare-fun m!2187977 () Bool)

(assert (=> bs!404521 m!2187977))

(assert (=> bs!404521 m!2187975))

(assert (=> b!1769472 d!540387))

(declare-fun b!1769536 () Bool)

(declare-fun e!1132439 () Bool)

(declare-fun tail!2649 (List!19560) List!19560)

(assert (=> b!1769536 (= e!1132439 (isPrefix!1725 (tail!2649 lt!685094) (tail!2649 lt!685092)))))

(declare-fun d!540393 () Bool)

(declare-fun e!1132440 () Bool)

(assert (=> d!540393 e!1132440))

(declare-fun res!796912 () Bool)

(assert (=> d!540393 (=> res!796912 e!1132440)))

(declare-fun lt!685135 () Bool)

(assert (=> d!540393 (= res!796912 (not lt!685135))))

(declare-fun e!1132438 () Bool)

(assert (=> d!540393 (= lt!685135 e!1132438)))

(declare-fun res!796911 () Bool)

(assert (=> d!540393 (=> res!796911 e!1132438)))

(assert (=> d!540393 (= res!796911 ((_ is Nil!19490) lt!685094))))

(assert (=> d!540393 (= (isPrefix!1725 lt!685094 lt!685092) lt!685135)))

(declare-fun b!1769537 () Bool)

(assert (=> b!1769537 (= e!1132440 (>= (size!15479 lt!685092) (size!15479 lt!685094)))))

(declare-fun b!1769534 () Bool)

(assert (=> b!1769534 (= e!1132438 e!1132439)))

(declare-fun res!796910 () Bool)

(assert (=> b!1769534 (=> (not res!796910) (not e!1132439))))

(assert (=> b!1769534 (= res!796910 (not ((_ is Nil!19490) lt!685092)))))

(declare-fun b!1769535 () Bool)

(declare-fun res!796909 () Bool)

(assert (=> b!1769535 (=> (not res!796909) (not e!1132439))))

(assert (=> b!1769535 (= res!796909 (= (head!4114 lt!685094) (head!4114 lt!685092)))))

(assert (= (and d!540393 (not res!796911)) b!1769534))

(assert (= (and b!1769534 res!796910) b!1769535))

(assert (= (and b!1769535 res!796909) b!1769536))

(assert (= (and d!540393 (not res!796912)) b!1769537))

(declare-fun m!2188011 () Bool)

(assert (=> b!1769536 m!2188011))

(declare-fun m!2188013 () Bool)

(assert (=> b!1769536 m!2188013))

(assert (=> b!1769536 m!2188011))

(assert (=> b!1769536 m!2188013))

(declare-fun m!2188015 () Bool)

(assert (=> b!1769536 m!2188015))

(declare-fun m!2188017 () Bool)

(assert (=> b!1769537 m!2188017))

(assert (=> b!1769537 m!2187829))

(declare-fun m!2188019 () Bool)

(assert (=> b!1769535 m!2188019))

(declare-fun m!2188021 () Bool)

(assert (=> b!1769535 m!2188021))

(assert (=> b!1769472 d!540393))

(declare-fun b!1769540 () Bool)

(declare-fun e!1132442 () Bool)

(assert (=> b!1769540 (= e!1132442 (isPrefix!1725 (tail!2649 (++!5309 lt!685116 (Cons!19490 (head!4114 lt!685095) Nil!19490))) (tail!2649 lt!685092)))))

(declare-fun d!540405 () Bool)

(declare-fun e!1132443 () Bool)

(assert (=> d!540405 e!1132443))

(declare-fun res!796916 () Bool)

(assert (=> d!540405 (=> res!796916 e!1132443)))

(declare-fun lt!685136 () Bool)

(assert (=> d!540405 (= res!796916 (not lt!685136))))

(declare-fun e!1132441 () Bool)

(assert (=> d!540405 (= lt!685136 e!1132441)))

(declare-fun res!796915 () Bool)

(assert (=> d!540405 (=> res!796915 e!1132441)))

(assert (=> d!540405 (= res!796915 ((_ is Nil!19490) (++!5309 lt!685116 (Cons!19490 (head!4114 lt!685095) Nil!19490))))))

(assert (=> d!540405 (= (isPrefix!1725 (++!5309 lt!685116 (Cons!19490 (head!4114 lt!685095) Nil!19490)) lt!685092) lt!685136)))

(declare-fun b!1769541 () Bool)

(assert (=> b!1769541 (= e!1132443 (>= (size!15479 lt!685092) (size!15479 (++!5309 lt!685116 (Cons!19490 (head!4114 lt!685095) Nil!19490)))))))

(declare-fun b!1769538 () Bool)

(assert (=> b!1769538 (= e!1132441 e!1132442)))

(declare-fun res!796914 () Bool)

(assert (=> b!1769538 (=> (not res!796914) (not e!1132442))))

(assert (=> b!1769538 (= res!796914 (not ((_ is Nil!19490) lt!685092)))))

(declare-fun b!1769539 () Bool)

(declare-fun res!796913 () Bool)

(assert (=> b!1769539 (=> (not res!796913) (not e!1132442))))

(assert (=> b!1769539 (= res!796913 (= (head!4114 (++!5309 lt!685116 (Cons!19490 (head!4114 lt!685095) Nil!19490))) (head!4114 lt!685092)))))

(assert (= (and d!540405 (not res!796915)) b!1769538))

(assert (= (and b!1769538 res!796914) b!1769539))

(assert (= (and b!1769539 res!796913) b!1769540))

(assert (= (and d!540405 (not res!796916)) b!1769541))

(assert (=> b!1769540 m!2187945))

(declare-fun m!2188023 () Bool)

(assert (=> b!1769540 m!2188023))

(assert (=> b!1769540 m!2188013))

(assert (=> b!1769540 m!2188023))

(assert (=> b!1769540 m!2188013))

(declare-fun m!2188025 () Bool)

(assert (=> b!1769540 m!2188025))

(assert (=> b!1769541 m!2188017))

(assert (=> b!1769541 m!2187945))

(declare-fun m!2188027 () Bool)

(assert (=> b!1769541 m!2188027))

(assert (=> b!1769539 m!2187945))

(declare-fun m!2188029 () Bool)

(assert (=> b!1769539 m!2188029))

(assert (=> b!1769539 m!2188021))

(assert (=> b!1769472 d!540405))

(declare-fun b!1769550 () Bool)

(declare-fun e!1132448 () List!19560)

(assert (=> b!1769550 (= e!1132448 (Cons!19490 (head!4114 lt!685095) Nil!19490))))

(declare-fun b!1769551 () Bool)

(assert (=> b!1769551 (= e!1132448 (Cons!19490 (h!24891 lt!685116) (++!5309 (t!165169 lt!685116) (Cons!19490 (head!4114 lt!685095) Nil!19490))))))

(declare-fun d!540407 () Bool)

(declare-fun e!1132449 () Bool)

(assert (=> d!540407 e!1132449))

(declare-fun res!796922 () Bool)

(assert (=> d!540407 (=> (not res!796922) (not e!1132449))))

(declare-fun lt!685139 () List!19560)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2826 (List!19560) (InoxSet C!9800))

(assert (=> d!540407 (= res!796922 (= (content!2826 lt!685139) ((_ map or) (content!2826 lt!685116) (content!2826 (Cons!19490 (head!4114 lt!685095) Nil!19490)))))))

(assert (=> d!540407 (= lt!685139 e!1132448)))

(declare-fun c!288092 () Bool)

(assert (=> d!540407 (= c!288092 ((_ is Nil!19490) lt!685116))))

(assert (=> d!540407 (= (++!5309 lt!685116 (Cons!19490 (head!4114 lt!685095) Nil!19490)) lt!685139)))

(declare-fun b!1769553 () Bool)

(assert (=> b!1769553 (= e!1132449 (or (not (= (Cons!19490 (head!4114 lt!685095) Nil!19490) Nil!19490)) (= lt!685139 lt!685116)))))

(declare-fun b!1769552 () Bool)

(declare-fun res!796921 () Bool)

(assert (=> b!1769552 (=> (not res!796921) (not e!1132449))))

(assert (=> b!1769552 (= res!796921 (= (size!15479 lt!685139) (+ (size!15479 lt!685116) (size!15479 (Cons!19490 (head!4114 lt!685095) Nil!19490)))))))

(assert (= (and d!540407 c!288092) b!1769550))

(assert (= (and d!540407 (not c!288092)) b!1769551))

(assert (= (and d!540407 res!796922) b!1769552))

(assert (= (and b!1769552 res!796921) b!1769553))

(declare-fun m!2188031 () Bool)

(assert (=> b!1769551 m!2188031))

(declare-fun m!2188033 () Bool)

(assert (=> d!540407 m!2188033))

(declare-fun m!2188035 () Bool)

(assert (=> d!540407 m!2188035))

(declare-fun m!2188037 () Bool)

(assert (=> d!540407 m!2188037))

(declare-fun m!2188039 () Bool)

(assert (=> b!1769552 m!2188039))

(declare-fun m!2188041 () Bool)

(assert (=> b!1769552 m!2188041))

(declare-fun m!2188043 () Bool)

(assert (=> b!1769552 m!2188043))

(assert (=> b!1769472 d!540407))

(declare-fun d!540409 () Bool)

(assert (=> d!540409 (= (head!4114 lt!685095) (h!24891 lt!685095))))

(assert (=> b!1769472 d!540409))

(declare-fun d!540411 () Bool)

(declare-fun lt!685142 () Int)

(assert (=> d!540411 (= lt!685142 (size!15479 (list!7915 lt!685102)))))

(declare-fun size!15481 (Conc!6483) Int)

(assert (=> d!540411 (= lt!685142 (size!15481 (c!288085 lt!685102)))))

(assert (=> d!540411 (= (size!15480 lt!685102) lt!685142)))

(declare-fun bs!404524 () Bool)

(assert (= bs!404524 d!540411))

(assert (=> bs!404524 m!2187811))

(assert (=> bs!404524 m!2187811))

(declare-fun m!2188045 () Bool)

(assert (=> bs!404524 m!2188045))

(declare-fun m!2188047 () Bool)

(assert (=> bs!404524 m!2188047))

(assert (=> b!1769451 d!540411))

(declare-fun b!1769619 () Bool)

(declare-fun res!796969 () Bool)

(declare-fun e!1132484 () Bool)

(assert (=> b!1769619 (=> (not res!796969) (not e!1132484))))

(assert (=> b!1769619 (= res!796969 (isEmpty!12304 (tail!2649 lt!685116)))))

(declare-fun b!1769620 () Bool)

(assert (=> b!1769620 (= e!1132484 (= (head!4114 lt!685116) (c!288084 lt!685113)))))

(declare-fun bm!110921 () Bool)

(declare-fun call!110926 () Bool)

(assert (=> bm!110921 (= call!110926 (isEmpty!12304 lt!685116))))

(declare-fun b!1769621 () Bool)

(declare-fun e!1132481 () Bool)

(declare-fun e!1132486 () Bool)

(assert (=> b!1769621 (= e!1132481 e!1132486)))

(declare-fun res!796965 () Bool)

(assert (=> b!1769621 (=> res!796965 e!1132486)))

(assert (=> b!1769621 (= res!796965 call!110926)))

(declare-fun b!1769622 () Bool)

(declare-fun e!1132483 () Bool)

(assert (=> b!1769622 (= e!1132483 e!1132481)))

(declare-fun res!796968 () Bool)

(assert (=> b!1769622 (=> (not res!796968) (not e!1132481))))

(declare-fun lt!685166 () Bool)

(assert (=> b!1769622 (= res!796968 (not lt!685166))))

(declare-fun b!1769623 () Bool)

(declare-fun e!1132485 () Bool)

(assert (=> b!1769623 (= e!1132485 (not lt!685166))))

(declare-fun b!1769624 () Bool)

(declare-fun res!796966 () Bool)

(assert (=> b!1769624 (=> res!796966 e!1132486)))

(assert (=> b!1769624 (= res!796966 (not (isEmpty!12304 (tail!2649 lt!685116))))))

(declare-fun b!1769625 () Bool)

(declare-fun res!796963 () Bool)

(assert (=> b!1769625 (=> res!796963 e!1132483)))

(assert (=> b!1769625 (= res!796963 e!1132484)))

(declare-fun res!796967 () Bool)

(assert (=> b!1769625 (=> (not res!796967) (not e!1132484))))

(assert (=> b!1769625 (= res!796967 lt!685166)))

(declare-fun b!1769626 () Bool)

(declare-fun res!796970 () Bool)

(assert (=> b!1769626 (=> res!796970 e!1132483)))

(assert (=> b!1769626 (= res!796970 (not ((_ is ElementMatch!4813) lt!685113)))))

(assert (=> b!1769626 (= e!1132485 e!1132483)))

(declare-fun b!1769627 () Bool)

(assert (=> b!1769627 (= e!1132486 (not (= (head!4114 lt!685116) (c!288084 lt!685113))))))

(declare-fun b!1769628 () Bool)

(declare-fun e!1132482 () Bool)

(assert (=> b!1769628 (= e!1132482 (= lt!685166 call!110926))))

(declare-fun b!1769629 () Bool)

(assert (=> b!1769629 (= e!1132482 e!1132485)))

(declare-fun c!288105 () Bool)

(assert (=> b!1769629 (= c!288105 ((_ is EmptyLang!4813) lt!685113))))

(declare-fun b!1769630 () Bool)

(declare-fun res!796964 () Bool)

(assert (=> b!1769630 (=> (not res!796964) (not e!1132484))))

(assert (=> b!1769630 (= res!796964 (not call!110926))))

(declare-fun d!540413 () Bool)

(assert (=> d!540413 e!1132482))

(declare-fun c!288107 () Bool)

(assert (=> d!540413 (= c!288107 ((_ is EmptyExpr!4813) lt!685113))))

(declare-fun e!1132480 () Bool)

(assert (=> d!540413 (= lt!685166 e!1132480)))

(declare-fun c!288106 () Bool)

(assert (=> d!540413 (= c!288106 (isEmpty!12304 lt!685116))))

(declare-fun validRegex!1949 (Regex!4813) Bool)

(assert (=> d!540413 (validRegex!1949 lt!685113)))

(assert (=> d!540413 (= (matchR!2286 lt!685113 lt!685116) lt!685166)))

(declare-fun b!1769631 () Bool)

(declare-fun derivativeStep!1244 (Regex!4813 C!9800) Regex!4813)

(assert (=> b!1769631 (= e!1132480 (matchR!2286 (derivativeStep!1244 lt!685113 (head!4114 lt!685116)) (tail!2649 lt!685116)))))

(declare-fun b!1769632 () Bool)

(declare-fun nullable!1475 (Regex!4813) Bool)

(assert (=> b!1769632 (= e!1132480 (nullable!1475 lt!685113))))

(assert (= (and d!540413 c!288106) b!1769632))

(assert (= (and d!540413 (not c!288106)) b!1769631))

(assert (= (and d!540413 c!288107) b!1769628))

(assert (= (and d!540413 (not c!288107)) b!1769629))

(assert (= (and b!1769629 c!288105) b!1769623))

(assert (= (and b!1769629 (not c!288105)) b!1769626))

(assert (= (and b!1769626 (not res!796970)) b!1769625))

(assert (= (and b!1769625 res!796967) b!1769630))

(assert (= (and b!1769630 res!796964) b!1769619))

(assert (= (and b!1769619 res!796969) b!1769620))

(assert (= (and b!1769625 (not res!796963)) b!1769622))

(assert (= (and b!1769622 res!796968) b!1769621))

(assert (= (and b!1769621 (not res!796965)) b!1769624))

(assert (= (and b!1769624 (not res!796966)) b!1769627))

(assert (= (or b!1769628 b!1769621 b!1769630) bm!110921))

(declare-fun m!2188097 () Bool)

(assert (=> b!1769631 m!2188097))

(assert (=> b!1769631 m!2188097))

(declare-fun m!2188099 () Bool)

(assert (=> b!1769631 m!2188099))

(declare-fun m!2188101 () Bool)

(assert (=> b!1769631 m!2188101))

(assert (=> b!1769631 m!2188099))

(assert (=> b!1769631 m!2188101))

(declare-fun m!2188103 () Bool)

(assert (=> b!1769631 m!2188103))

(declare-fun m!2188105 () Bool)

(assert (=> d!540413 m!2188105))

(declare-fun m!2188107 () Bool)

(assert (=> d!540413 m!2188107))

(assert (=> b!1769620 m!2188097))

(assert (=> bm!110921 m!2188105))

(assert (=> b!1769624 m!2188101))

(assert (=> b!1769624 m!2188101))

(declare-fun m!2188109 () Bool)

(assert (=> b!1769624 m!2188109))

(assert (=> b!1769619 m!2188101))

(assert (=> b!1769619 m!2188101))

(assert (=> b!1769619 m!2188109))

(declare-fun m!2188111 () Bool)

(assert (=> b!1769632 m!2188111))

(assert (=> b!1769627 m!2188097))

(assert (=> b!1769451 d!540413))

(declare-fun d!540425 () Bool)

(assert (=> d!540425 (matchR!2286 (rulesRegex!841 thiss!24550 rules!3447) (list!7915 (charsOf!2134 token!523)))))

(declare-fun lt!685172 () Unit!33686)

(declare-fun choose!11006 (LexerInterface!3114 List!19561 List!19560 Token!6536 Rule!6770 List!19560) Unit!33686)

(assert (=> d!540425 (= lt!685172 (choose!11006 thiss!24550 rules!3447 lt!685116 token!523 rule!422 Nil!19490))))

(assert (=> d!540425 (not (isEmpty!12305 rules!3447))))

(assert (=> d!540425 (= (lemmaMaxPrefixThenMatchesRulesRegex!192 thiss!24550 rules!3447 lt!685116 token!523 rule!422 Nil!19490) lt!685172)))

(declare-fun bs!404526 () Bool)

(assert (= bs!404526 d!540425))

(assert (=> bs!404526 m!2187813))

(declare-fun m!2188135 () Bool)

(assert (=> bs!404526 m!2188135))

(assert (=> bs!404526 m!2187851))

(assert (=> bs!404526 m!2188135))

(declare-fun m!2188137 () Bool)

(assert (=> bs!404526 m!2188137))

(declare-fun m!2188139 () Bool)

(assert (=> bs!404526 m!2188139))

(assert (=> bs!404526 m!2187813))

(assert (=> bs!404526 m!2187851))

(assert (=> bs!404526 m!2187819))

(assert (=> b!1769451 d!540425))

(declare-fun d!540433 () Bool)

(declare-fun c!288125 () Bool)

(assert (=> d!540433 (= c!288125 ((_ is Node!6483) (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099))))))))

(declare-fun e!1132530 () Bool)

(assert (=> d!540433 (= (inv!25332 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099))))) e!1132530)))

(declare-fun b!1769705 () Bool)

(declare-fun inv!25336 (Conc!6483) Bool)

(assert (=> b!1769705 (= e!1132530 (inv!25336 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099))))))))

(declare-fun b!1769706 () Bool)

(declare-fun e!1132531 () Bool)

(assert (=> b!1769706 (= e!1132530 e!1132531)))

(declare-fun res!797009 () Bool)

(assert (=> b!1769706 (= res!797009 (not ((_ is Leaf!9446) (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099)))))))))

(assert (=> b!1769706 (=> res!797009 e!1132531)))

(declare-fun b!1769707 () Bool)

(declare-fun inv!25337 (Conc!6483) Bool)

(assert (=> b!1769707 (= e!1132531 (inv!25337 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099))))))))

(assert (= (and d!540433 c!288125) b!1769705))

(assert (= (and d!540433 (not c!288125)) b!1769706))

(assert (= (and b!1769706 (not res!797009)) b!1769707))

(declare-fun m!2188153 () Bool)

(assert (=> b!1769705 m!2188153))

(declare-fun m!2188155 () Bool)

(assert (=> b!1769707 m!2188155))

(assert (=> b!1769492 d!540433))

(declare-fun d!540445 () Bool)

(declare-fun c!288131 () Bool)

(assert (=> d!540445 (= c!288131 (isEmpty!12304 lt!685094))))

(declare-fun e!1132543 () Bool)

(assert (=> d!540445 (= (prefixMatch!696 lt!685113 lt!685094) e!1132543)))

(declare-fun b!1769724 () Bool)

(declare-fun lostCause!585 (Regex!4813) Bool)

(assert (=> b!1769724 (= e!1132543 (not (lostCause!585 lt!685113)))))

(declare-fun b!1769725 () Bool)

(assert (=> b!1769725 (= e!1132543 (prefixMatch!696 (derivativeStep!1244 lt!685113 (head!4114 lt!685094)) (tail!2649 lt!685094)))))

(assert (= (and d!540445 c!288131) b!1769724))

(assert (= (and d!540445 (not c!288131)) b!1769725))

(declare-fun m!2188165 () Bool)

(assert (=> d!540445 m!2188165))

(declare-fun m!2188167 () Bool)

(assert (=> b!1769724 m!2188167))

(assert (=> b!1769725 m!2188019))

(assert (=> b!1769725 m!2188019))

(declare-fun m!2188169 () Bool)

(assert (=> b!1769725 m!2188169))

(assert (=> b!1769725 m!2188011))

(assert (=> b!1769725 m!2188169))

(assert (=> b!1769725 m!2188011))

(declare-fun m!2188171 () Bool)

(assert (=> b!1769725 m!2188171))

(assert (=> b!1769473 d!540445))

(declare-fun b!1769726 () Bool)

(declare-fun e!1132544 () List!19560)

(assert (=> b!1769726 (= e!1132544 (Cons!19490 (head!4114 suffix!1421) Nil!19490))))

(declare-fun b!1769727 () Bool)

(assert (=> b!1769727 (= e!1132544 (Cons!19490 (h!24891 lt!685116) (++!5309 (t!165169 lt!685116) (Cons!19490 (head!4114 suffix!1421) Nil!19490))))))

(declare-fun d!540455 () Bool)

(declare-fun e!1132545 () Bool)

(assert (=> d!540455 e!1132545))

(declare-fun res!797017 () Bool)

(assert (=> d!540455 (=> (not res!797017) (not e!1132545))))

(declare-fun lt!685178 () List!19560)

(assert (=> d!540455 (= res!797017 (= (content!2826 lt!685178) ((_ map or) (content!2826 lt!685116) (content!2826 (Cons!19490 (head!4114 suffix!1421) Nil!19490)))))))

(assert (=> d!540455 (= lt!685178 e!1132544)))

(declare-fun c!288132 () Bool)

(assert (=> d!540455 (= c!288132 ((_ is Nil!19490) lt!685116))))

(assert (=> d!540455 (= (++!5309 lt!685116 (Cons!19490 (head!4114 suffix!1421) Nil!19490)) lt!685178)))

(declare-fun b!1769729 () Bool)

(assert (=> b!1769729 (= e!1132545 (or (not (= (Cons!19490 (head!4114 suffix!1421) Nil!19490) Nil!19490)) (= lt!685178 lt!685116)))))

(declare-fun b!1769728 () Bool)

(declare-fun res!797016 () Bool)

(assert (=> b!1769728 (=> (not res!797016) (not e!1132545))))

(assert (=> b!1769728 (= res!797016 (= (size!15479 lt!685178) (+ (size!15479 lt!685116) (size!15479 (Cons!19490 (head!4114 suffix!1421) Nil!19490)))))))

(assert (= (and d!540455 c!288132) b!1769726))

(assert (= (and d!540455 (not c!288132)) b!1769727))

(assert (= (and d!540455 res!797017) b!1769728))

(assert (= (and b!1769728 res!797016) b!1769729))

(declare-fun m!2188175 () Bool)

(assert (=> b!1769727 m!2188175))

(declare-fun m!2188177 () Bool)

(assert (=> d!540455 m!2188177))

(assert (=> d!540455 m!2188035))

(declare-fun m!2188179 () Bool)

(assert (=> d!540455 m!2188179))

(declare-fun m!2188181 () Bool)

(assert (=> b!1769728 m!2188181))

(assert (=> b!1769728 m!2188041))

(declare-fun m!2188183 () Bool)

(assert (=> b!1769728 m!2188183))

(assert (=> b!1769473 d!540455))

(declare-fun d!540459 () Bool)

(assert (=> d!540459 (= (head!4114 suffix!1421) (h!24891 suffix!1421))))

(assert (=> b!1769473 d!540459))

(declare-fun d!540461 () Bool)

(declare-fun lt!685186 () Unit!33686)

(declare-fun lemma!398 (List!19561 LexerInterface!3114 List!19561) Unit!33686)

(assert (=> d!540461 (= lt!685186 (lemma!398 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!70386 () Int)

(declare-datatypes ((List!19563 0))(
  ( (Nil!19493) (Cons!19493 (h!24894 Regex!4813) (t!165232 List!19563)) )
))
(declare-fun generalisedUnion!406 (List!19563) Regex!4813)

(declare-fun map!4020 (List!19561 Int) List!19563)

(assert (=> d!540461 (= (rulesRegex!841 thiss!24550 rules!3447) (generalisedUnion!406 (map!4020 rules!3447 lambda!70386)))))

(declare-fun bs!404529 () Bool)

(assert (= bs!404529 d!540461))

(declare-fun m!2188197 () Bool)

(assert (=> bs!404529 m!2188197))

(declare-fun m!2188199 () Bool)

(assert (=> bs!404529 m!2188199))

(assert (=> bs!404529 m!2188199))

(declare-fun m!2188201 () Bool)

(assert (=> bs!404529 m!2188201))

(assert (=> b!1769473 d!540461))

(declare-fun b!1769774 () Bool)

(declare-fun e!1132571 () Bool)

(declare-fun inv!16 (TokenValue!3575) Bool)

(assert (=> b!1769774 (= e!1132571 (inv!16 (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))))

(declare-fun b!1769775 () Bool)

(declare-fun res!797036 () Bool)

(declare-fun e!1132570 () Bool)

(assert (=> b!1769775 (=> res!797036 e!1132570)))

(assert (=> b!1769775 (= res!797036 (not ((_ is IntegerValue!10727) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))))))

(declare-fun e!1132569 () Bool)

(assert (=> b!1769775 (= e!1132569 e!1132570)))

(declare-fun d!540467 () Bool)

(declare-fun c!288147 () Bool)

(assert (=> d!540467 (= c!288147 ((_ is IntegerValue!10725) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))))

(assert (=> d!540467 (= (inv!21 (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)) e!1132571)))

(declare-fun b!1769776 () Bool)

(declare-fun inv!15 (TokenValue!3575) Bool)

(assert (=> b!1769776 (= e!1132570 (inv!15 (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))))

(declare-fun b!1769777 () Bool)

(assert (=> b!1769777 (= e!1132571 e!1132569)))

(declare-fun c!288146 () Bool)

(assert (=> b!1769777 (= c!288146 ((_ is IntegerValue!10726) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))))

(declare-fun b!1769778 () Bool)

(declare-fun inv!17 (TokenValue!3575) Bool)

(assert (=> b!1769778 (= e!1132569 (inv!17 (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))))

(assert (= (and d!540467 c!288147) b!1769774))

(assert (= (and d!540467 (not c!288147)) b!1769777))

(assert (= (and b!1769777 c!288146) b!1769778))

(assert (= (and b!1769777 (not c!288146)) b!1769775))

(assert (= (and b!1769775 (not res!797036)) b!1769776))

(declare-fun m!2188233 () Bool)

(assert (=> b!1769774 m!2188233))

(declare-fun m!2188235 () Bool)

(assert (=> b!1769776 m!2188235))

(declare-fun m!2188237 () Bool)

(assert (=> b!1769778 m!2188237))

(assert (=> tb!107013 d!540467))

(declare-fun d!540481 () Bool)

(assert (=> d!540481 (= (inv!25325 (tag!3865 rule!422)) (= (mod (str.len (value!108994 (tag!3865 rule!422))) 2) 0))))

(assert (=> b!1769452 d!540481))

(declare-fun d!540483 () Bool)

(declare-fun res!797042 () Bool)

(declare-fun e!1132580 () Bool)

(assert (=> d!540483 (=> (not res!797042) (not e!1132580))))

(declare-fun semiInverseModEq!1390 (Int Int) Bool)

(assert (=> d!540483 (= res!797042 (semiInverseModEq!1390 (toChars!4867 (transformation!3485 rule!422)) (toValue!5008 (transformation!3485 rule!422))))))

(assert (=> d!540483 (= (inv!25330 (transformation!3485 rule!422)) e!1132580)))

(declare-fun b!1769792 () Bool)

(declare-fun equivClasses!1331 (Int Int) Bool)

(assert (=> b!1769792 (= e!1132580 (equivClasses!1331 (toChars!4867 (transformation!3485 rule!422)) (toValue!5008 (transformation!3485 rule!422))))))

(assert (= (and d!540483 res!797042) b!1769792))

(declare-fun m!2188259 () Bool)

(assert (=> d!540483 m!2188259))

(declare-fun m!2188261 () Bool)

(assert (=> b!1769792 m!2188261))

(assert (=> b!1769452 d!540483))

(declare-fun d!540493 () Bool)

(assert (=> d!540493 (= (inv!25325 (tag!3865 (rule!5527 token!523))) (= (mod (str.len (value!108994 (tag!3865 (rule!5527 token!523)))) 2) 0))))

(assert (=> b!1769453 d!540493))

(declare-fun d!540495 () Bool)

(declare-fun res!797043 () Bool)

(declare-fun e!1132581 () Bool)

(assert (=> d!540495 (=> (not res!797043) (not e!1132581))))

(assert (=> d!540495 (= res!797043 (semiInverseModEq!1390 (toChars!4867 (transformation!3485 (rule!5527 token!523))) (toValue!5008 (transformation!3485 (rule!5527 token!523)))))))

(assert (=> d!540495 (= (inv!25330 (transformation!3485 (rule!5527 token!523))) e!1132581)))

(declare-fun b!1769793 () Bool)

(assert (=> b!1769793 (= e!1132581 (equivClasses!1331 (toChars!4867 (transformation!3485 (rule!5527 token!523))) (toValue!5008 (transformation!3485 (rule!5527 token!523)))))))

(assert (= (and d!540495 res!797043) b!1769793))

(declare-fun m!2188263 () Bool)

(assert (=> d!540495 m!2188263))

(declare-fun m!2188265 () Bool)

(assert (=> b!1769793 m!2188265))

(assert (=> b!1769453 d!540495))

(declare-fun d!540497 () Bool)

(declare-fun res!797049 () Bool)

(declare-fun e!1132589 () Bool)

(assert (=> d!540497 (=> (not res!797049) (not e!1132589))))

(assert (=> d!540497 (= res!797049 (not (isEmpty!12304 (originalCharacters!4299 token!523))))))

(assert (=> d!540497 (= (inv!25331 token!523) e!1132589)))

(declare-fun b!1769805 () Bool)

(declare-fun res!797050 () Bool)

(assert (=> b!1769805 (=> (not res!797050) (not e!1132589))))

(assert (=> b!1769805 (= res!797050 (= (originalCharacters!4299 token!523) (list!7915 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 token!523))) (value!108995 token!523)))))))

(declare-fun b!1769806 () Bool)

(assert (=> b!1769806 (= e!1132589 (= (size!15478 token!523) (size!15479 (originalCharacters!4299 token!523))))))

(assert (= (and d!540497 res!797049) b!1769805))

(assert (= (and b!1769805 res!797050) b!1769806))

(declare-fun b_lambda!57589 () Bool)

(assert (=> (not b_lambda!57589) (not b!1769805)))

(declare-fun t!165184 () Bool)

(declare-fun tb!107037 () Bool)

(assert (=> (and b!1769445 (= (toChars!4867 (transformation!3485 (rule!5527 token!523))) (toChars!4867 (transformation!3485 (rule!5527 token!523)))) t!165184) tb!107037))

(declare-fun b!1769807 () Bool)

(declare-fun e!1132590 () Bool)

(declare-fun tp!502012 () Bool)

(assert (=> b!1769807 (= e!1132590 (and (inv!25332 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 token!523))) (value!108995 token!523)))) tp!502012))))

(declare-fun result!128780 () Bool)

(assert (=> tb!107037 (= result!128780 (and (inv!25333 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 token!523))) (value!108995 token!523))) e!1132590))))

(assert (= tb!107037 b!1769807))

(declare-fun m!2188287 () Bool)

(assert (=> b!1769807 m!2188287))

(declare-fun m!2188289 () Bool)

(assert (=> tb!107037 m!2188289))

(assert (=> b!1769805 t!165184))

(declare-fun b_and!134497 () Bool)

(assert (= b_and!134467 (and (=> t!165184 result!128780) b_and!134497)))

(declare-fun tb!107039 () Bool)

(declare-fun t!165186 () Bool)

(assert (=> (and b!1769469 (= (toChars!4867 (transformation!3485 (h!24892 rules!3447))) (toChars!4867 (transformation!3485 (rule!5527 token!523)))) t!165186) tb!107039))

(declare-fun result!128782 () Bool)

(assert (= result!128782 result!128780))

(assert (=> b!1769805 t!165186))

(declare-fun b_and!134499 () Bool)

(assert (= b_and!134469 (and (=> t!165186 result!128782) b_and!134499)))

(declare-fun tb!107041 () Bool)

(declare-fun t!165188 () Bool)

(assert (=> (and b!1769458 (= (toChars!4867 (transformation!3485 rule!422)) (toChars!4867 (transformation!3485 (rule!5527 token!523)))) t!165188) tb!107041))

(declare-fun result!128784 () Bool)

(assert (= result!128784 result!128780))

(assert (=> b!1769805 t!165188))

(declare-fun b_and!134501 () Bool)

(assert (= b_and!134471 (and (=> t!165188 result!128784) b_and!134501)))

(declare-fun m!2188291 () Bool)

(assert (=> d!540497 m!2188291))

(declare-fun m!2188293 () Bool)

(assert (=> b!1769805 m!2188293))

(assert (=> b!1769805 m!2188293))

(declare-fun m!2188295 () Bool)

(assert (=> b!1769805 m!2188295))

(declare-fun m!2188297 () Bool)

(assert (=> b!1769806 m!2188297))

(assert (=> start!175534 d!540497))

(declare-fun b!1769826 () Bool)

(declare-fun res!797070 () Bool)

(declare-fun e!1132599 () Bool)

(assert (=> b!1769826 (=> (not res!797070) (not e!1132599))))

(declare-fun lt!685214 () Option!3992)

(assert (=> b!1769826 (= res!797070 (< (size!15479 (_2!10949 (get!5952 lt!685214))) (size!15479 lt!685092)))))

(declare-fun bm!110929 () Bool)

(declare-fun call!110934 () Option!3992)

(assert (=> bm!110929 (= call!110934 (maxPrefixOneRule!1037 thiss!24550 (h!24892 rules!3447) lt!685092))))

(declare-fun b!1769828 () Bool)

(declare-fun e!1132597 () Option!3992)

(assert (=> b!1769828 (= e!1132597 call!110934)))

(declare-fun b!1769829 () Bool)

(declare-fun res!797066 () Bool)

(assert (=> b!1769829 (=> (not res!797066) (not e!1132599))))

(assert (=> b!1769829 (= res!797066 (= (value!108995 (_1!10949 (get!5952 lt!685214))) (apply!5285 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685214)))) (seqFromList!2454 (originalCharacters!4299 (_1!10949 (get!5952 lt!685214)))))))))

(declare-fun b!1769830 () Bool)

(declare-fun res!797068 () Bool)

(assert (=> b!1769830 (=> (not res!797068) (not e!1132599))))

(assert (=> b!1769830 (= res!797068 (= (++!5309 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685214)))) (_2!10949 (get!5952 lt!685214))) lt!685092))))

(declare-fun b!1769827 () Bool)

(declare-fun res!797065 () Bool)

(assert (=> b!1769827 (=> (not res!797065) (not e!1132599))))

(assert (=> b!1769827 (= res!797065 (= (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685214)))) (originalCharacters!4299 (_1!10949 (get!5952 lt!685214)))))))

(declare-fun d!540507 () Bool)

(declare-fun e!1132598 () Bool)

(assert (=> d!540507 e!1132598))

(declare-fun res!797067 () Bool)

(assert (=> d!540507 (=> res!797067 e!1132598)))

(declare-fun isEmpty!12307 (Option!3992) Bool)

(assert (=> d!540507 (= res!797067 (isEmpty!12307 lt!685214))))

(assert (=> d!540507 (= lt!685214 e!1132597)))

(declare-fun c!288157 () Bool)

(assert (=> d!540507 (= c!288157 (and ((_ is Cons!19491) rules!3447) ((_ is Nil!19491) (t!165170 rules!3447))))))

(declare-fun lt!685212 () Unit!33686)

(declare-fun lt!685211 () Unit!33686)

(assert (=> d!540507 (= lt!685212 lt!685211)))

(assert (=> d!540507 (isPrefix!1725 lt!685092 lt!685092)))

(declare-fun lemmaIsPrefixRefl!1142 (List!19560 List!19560) Unit!33686)

(assert (=> d!540507 (= lt!685211 (lemmaIsPrefixRefl!1142 lt!685092 lt!685092))))

(declare-fun rulesValidInductive!1180 (LexerInterface!3114 List!19561) Bool)

(assert (=> d!540507 (rulesValidInductive!1180 thiss!24550 rules!3447)))

(assert (=> d!540507 (= (maxPrefix!1668 thiss!24550 rules!3447 lt!685092) lt!685214)))

(declare-fun b!1769831 () Bool)

(assert (=> b!1769831 (= e!1132598 e!1132599)))

(declare-fun res!797069 () Bool)

(assert (=> b!1769831 (=> (not res!797069) (not e!1132599))))

(assert (=> b!1769831 (= res!797069 (isDefined!3335 lt!685214))))

(declare-fun b!1769832 () Bool)

(declare-fun lt!685210 () Option!3992)

(declare-fun lt!685213 () Option!3992)

(assert (=> b!1769832 (= e!1132597 (ite (and ((_ is None!3991) lt!685210) ((_ is None!3991) lt!685213)) None!3991 (ite ((_ is None!3991) lt!685213) lt!685210 (ite ((_ is None!3991) lt!685210) lt!685213 (ite (>= (size!15478 (_1!10949 (v!25466 lt!685210))) (size!15478 (_1!10949 (v!25466 lt!685213)))) lt!685210 lt!685213)))))))

(assert (=> b!1769832 (= lt!685210 call!110934)))

(assert (=> b!1769832 (= lt!685213 (maxPrefix!1668 thiss!24550 (t!165170 rules!3447) lt!685092))))

(declare-fun b!1769833 () Bool)

(declare-fun res!797071 () Bool)

(assert (=> b!1769833 (=> (not res!797071) (not e!1132599))))

(assert (=> b!1769833 (= res!797071 (matchR!2286 (regex!3485 (rule!5527 (_1!10949 (get!5952 lt!685214)))) (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685214))))))))

(declare-fun b!1769834 () Bool)

(assert (=> b!1769834 (= e!1132599 (contains!3515 rules!3447 (rule!5527 (_1!10949 (get!5952 lt!685214)))))))

(assert (= (and d!540507 c!288157) b!1769828))

(assert (= (and d!540507 (not c!288157)) b!1769832))

(assert (= (or b!1769828 b!1769832) bm!110929))

(assert (= (and d!540507 (not res!797067)) b!1769831))

(assert (= (and b!1769831 res!797069) b!1769827))

(assert (= (and b!1769827 res!797065) b!1769826))

(assert (= (and b!1769826 res!797070) b!1769830))

(assert (= (and b!1769830 res!797068) b!1769829))

(assert (= (and b!1769829 res!797066) b!1769833))

(assert (= (and b!1769833 res!797071) b!1769834))

(declare-fun m!2188299 () Bool)

(assert (=> bm!110929 m!2188299))

(declare-fun m!2188301 () Bool)

(assert (=> b!1769829 m!2188301))

(declare-fun m!2188303 () Bool)

(assert (=> b!1769829 m!2188303))

(assert (=> b!1769829 m!2188303))

(declare-fun m!2188305 () Bool)

(assert (=> b!1769829 m!2188305))

(assert (=> b!1769826 m!2188301))

(declare-fun m!2188307 () Bool)

(assert (=> b!1769826 m!2188307))

(assert (=> b!1769826 m!2188017))

(assert (=> b!1769830 m!2188301))

(declare-fun m!2188309 () Bool)

(assert (=> b!1769830 m!2188309))

(assert (=> b!1769830 m!2188309))

(declare-fun m!2188311 () Bool)

(assert (=> b!1769830 m!2188311))

(assert (=> b!1769830 m!2188311))

(declare-fun m!2188313 () Bool)

(assert (=> b!1769830 m!2188313))

(declare-fun m!2188315 () Bool)

(assert (=> b!1769831 m!2188315))

(assert (=> b!1769827 m!2188301))

(assert (=> b!1769827 m!2188309))

(assert (=> b!1769827 m!2188309))

(assert (=> b!1769827 m!2188311))

(declare-fun m!2188317 () Bool)

(assert (=> d!540507 m!2188317))

(declare-fun m!2188319 () Bool)

(assert (=> d!540507 m!2188319))

(declare-fun m!2188321 () Bool)

(assert (=> d!540507 m!2188321))

(declare-fun m!2188323 () Bool)

(assert (=> d!540507 m!2188323))

(assert (=> b!1769834 m!2188301))

(declare-fun m!2188325 () Bool)

(assert (=> b!1769834 m!2188325))

(assert (=> b!1769833 m!2188301))

(assert (=> b!1769833 m!2188309))

(assert (=> b!1769833 m!2188309))

(assert (=> b!1769833 m!2188311))

(assert (=> b!1769833 m!2188311))

(declare-fun m!2188327 () Bool)

(assert (=> b!1769833 m!2188327))

(declare-fun m!2188329 () Bool)

(assert (=> b!1769832 m!2188329))

(assert (=> b!1769454 d!540507))

(declare-fun b!1769843 () Bool)

(declare-fun e!1132605 () Bool)

(assert (=> b!1769843 (= e!1132605 (isPrefix!1725 (tail!2649 lt!685100) (tail!2649 lt!685092)))))

(declare-fun d!540509 () Bool)

(declare-fun e!1132606 () Bool)

(assert (=> d!540509 e!1132606))

(declare-fun res!797077 () Bool)

(assert (=> d!540509 (=> res!797077 e!1132606)))

(declare-fun lt!685225 () Bool)

(assert (=> d!540509 (= res!797077 (not lt!685225))))

(declare-fun e!1132604 () Bool)

(assert (=> d!540509 (= lt!685225 e!1132604)))

(declare-fun res!797076 () Bool)

(assert (=> d!540509 (=> res!797076 e!1132604)))

(assert (=> d!540509 (= res!797076 ((_ is Nil!19490) lt!685100))))

(assert (=> d!540509 (= (isPrefix!1725 lt!685100 lt!685092) lt!685225)))

(declare-fun b!1769844 () Bool)

(assert (=> b!1769844 (= e!1132606 (>= (size!15479 lt!685092) (size!15479 lt!685100)))))

(declare-fun b!1769841 () Bool)

(assert (=> b!1769841 (= e!1132604 e!1132605)))

(declare-fun res!797075 () Bool)

(assert (=> b!1769841 (=> (not res!797075) (not e!1132605))))

(assert (=> b!1769841 (= res!797075 (not ((_ is Nil!19490) lt!685092)))))

(declare-fun b!1769842 () Bool)

(declare-fun res!797074 () Bool)

(assert (=> b!1769842 (=> (not res!797074) (not e!1132605))))

(assert (=> b!1769842 (= res!797074 (= (head!4114 lt!685100) (head!4114 lt!685092)))))

(assert (= (and d!540509 (not res!797076)) b!1769841))

(assert (= (and b!1769841 res!797075) b!1769842))

(assert (= (and b!1769842 res!797074) b!1769843))

(assert (= (and d!540509 (not res!797077)) b!1769844))

(declare-fun m!2188331 () Bool)

(assert (=> b!1769843 m!2188331))

(assert (=> b!1769843 m!2188013))

(assert (=> b!1769843 m!2188331))

(assert (=> b!1769843 m!2188013))

(declare-fun m!2188333 () Bool)

(assert (=> b!1769843 m!2188333))

(assert (=> b!1769844 m!2188017))

(assert (=> b!1769844 m!2187843))

(declare-fun m!2188335 () Bool)

(assert (=> b!1769842 m!2188335))

(assert (=> b!1769842 m!2188021))

(assert (=> b!1769454 d!540509))

(declare-fun d!540511 () Bool)

(declare-fun isEmpty!12308 (Option!3993) Bool)

(assert (=> d!540511 (= (isDefined!3336 lt!685093) (not (isEmpty!12308 lt!685093)))))

(declare-fun bs!404535 () Bool)

(assert (= bs!404535 d!540511))

(declare-fun m!2188337 () Bool)

(assert (=> bs!404535 m!2188337))

(assert (=> b!1769454 d!540511))

(declare-fun b!1769859 () Bool)

(declare-fun e!1132612 () Bool)

(assert (=> b!1769859 (= e!1132612 (isPrefix!1725 (tail!2649 lt!685116) (tail!2649 lt!685092)))))

(declare-fun d!540513 () Bool)

(declare-fun e!1132613 () Bool)

(assert (=> d!540513 e!1132613))

(declare-fun res!797093 () Bool)

(assert (=> d!540513 (=> res!797093 e!1132613)))

(declare-fun lt!685226 () Bool)

(assert (=> d!540513 (= res!797093 (not lt!685226))))

(declare-fun e!1132611 () Bool)

(assert (=> d!540513 (= lt!685226 e!1132611)))

(declare-fun res!797092 () Bool)

(assert (=> d!540513 (=> res!797092 e!1132611)))

(assert (=> d!540513 (= res!797092 ((_ is Nil!19490) lt!685116))))

(assert (=> d!540513 (= (isPrefix!1725 lt!685116 lt!685092) lt!685226)))

(declare-fun b!1769860 () Bool)

(assert (=> b!1769860 (= e!1132613 (>= (size!15479 lt!685092) (size!15479 lt!685116)))))

(declare-fun b!1769857 () Bool)

(assert (=> b!1769857 (= e!1132611 e!1132612)))

(declare-fun res!797091 () Bool)

(assert (=> b!1769857 (=> (not res!797091) (not e!1132612))))

(assert (=> b!1769857 (= res!797091 (not ((_ is Nil!19490) lt!685092)))))

(declare-fun b!1769858 () Bool)

(declare-fun res!797090 () Bool)

(assert (=> b!1769858 (=> (not res!797090) (not e!1132612))))

(assert (=> b!1769858 (= res!797090 (= (head!4114 lt!685116) (head!4114 lt!685092)))))

(assert (= (and d!540513 (not res!797092)) b!1769857))

(assert (= (and b!1769857 res!797091) b!1769858))

(assert (= (and b!1769858 res!797090) b!1769859))

(assert (= (and d!540513 (not res!797093)) b!1769860))

(assert (=> b!1769859 m!2188101))

(assert (=> b!1769859 m!2188013))

(assert (=> b!1769859 m!2188101))

(assert (=> b!1769859 m!2188013))

(declare-fun m!2188339 () Bool)

(assert (=> b!1769859 m!2188339))

(assert (=> b!1769860 m!2188017))

(assert (=> b!1769860 m!2188041))

(assert (=> b!1769858 m!2188097))

(assert (=> b!1769858 m!2188021))

(assert (=> b!1769454 d!540513))

(declare-fun b!1769863 () Bool)

(declare-fun e!1132615 () Bool)

(assert (=> b!1769863 (= e!1132615 (isPrefix!1725 (tail!2649 lt!685100) (tail!2649 (++!5309 lt!685100 (_2!10949 lt!685099)))))))

(declare-fun d!540515 () Bool)

(declare-fun e!1132616 () Bool)

(assert (=> d!540515 e!1132616))

(declare-fun res!797097 () Bool)

(assert (=> d!540515 (=> res!797097 e!1132616)))

(declare-fun lt!685227 () Bool)

(assert (=> d!540515 (= res!797097 (not lt!685227))))

(declare-fun e!1132614 () Bool)

(assert (=> d!540515 (= lt!685227 e!1132614)))

(declare-fun res!797096 () Bool)

(assert (=> d!540515 (=> res!797096 e!1132614)))

(assert (=> d!540515 (= res!797096 ((_ is Nil!19490) lt!685100))))

(assert (=> d!540515 (= (isPrefix!1725 lt!685100 (++!5309 lt!685100 (_2!10949 lt!685099))) lt!685227)))

(declare-fun b!1769864 () Bool)

(assert (=> b!1769864 (= e!1132616 (>= (size!15479 (++!5309 lt!685100 (_2!10949 lt!685099))) (size!15479 lt!685100)))))

(declare-fun b!1769861 () Bool)

(assert (=> b!1769861 (= e!1132614 e!1132615)))

(declare-fun res!797095 () Bool)

(assert (=> b!1769861 (=> (not res!797095) (not e!1132615))))

(assert (=> b!1769861 (= res!797095 (not ((_ is Nil!19490) (++!5309 lt!685100 (_2!10949 lt!685099)))))))

(declare-fun b!1769862 () Bool)

(declare-fun res!797094 () Bool)

(assert (=> b!1769862 (=> (not res!797094) (not e!1132615))))

(assert (=> b!1769862 (= res!797094 (= (head!4114 lt!685100) (head!4114 (++!5309 lt!685100 (_2!10949 lt!685099)))))))

(assert (= (and d!540515 (not res!797096)) b!1769861))

(assert (= (and b!1769861 res!797095) b!1769862))

(assert (= (and b!1769862 res!797094) b!1769863))

(assert (= (and d!540515 (not res!797097)) b!1769864))

(assert (=> b!1769863 m!2188331))

(assert (=> b!1769863 m!2187869))

(declare-fun m!2188341 () Bool)

(assert (=> b!1769863 m!2188341))

(assert (=> b!1769863 m!2188331))

(assert (=> b!1769863 m!2188341))

(declare-fun m!2188343 () Bool)

(assert (=> b!1769863 m!2188343))

(assert (=> b!1769864 m!2187869))

(declare-fun m!2188345 () Bool)

(assert (=> b!1769864 m!2188345))

(assert (=> b!1769864 m!2187843))

(assert (=> b!1769862 m!2188335))

(assert (=> b!1769862 m!2187869))

(declare-fun m!2188347 () Bool)

(assert (=> b!1769862 m!2188347))

(assert (=> b!1769454 d!540515))

(declare-fun b!1769865 () Bool)

(declare-fun e!1132617 () List!19560)

(assert (=> b!1769865 (= e!1132617 suffix!1421)))

(declare-fun b!1769866 () Bool)

(assert (=> b!1769866 (= e!1132617 (Cons!19490 (h!24891 lt!685116) (++!5309 (t!165169 lt!685116) suffix!1421)))))

(declare-fun d!540517 () Bool)

(declare-fun e!1132618 () Bool)

(assert (=> d!540517 e!1132618))

(declare-fun res!797099 () Bool)

(assert (=> d!540517 (=> (not res!797099) (not e!1132618))))

(declare-fun lt!685228 () List!19560)

(assert (=> d!540517 (= res!797099 (= (content!2826 lt!685228) ((_ map or) (content!2826 lt!685116) (content!2826 suffix!1421))))))

(assert (=> d!540517 (= lt!685228 e!1132617)))

(declare-fun c!288160 () Bool)

(assert (=> d!540517 (= c!288160 ((_ is Nil!19490) lt!685116))))

(assert (=> d!540517 (= (++!5309 lt!685116 suffix!1421) lt!685228)))

(declare-fun b!1769868 () Bool)

(assert (=> b!1769868 (= e!1132618 (or (not (= suffix!1421 Nil!19490)) (= lt!685228 lt!685116)))))

(declare-fun b!1769867 () Bool)

(declare-fun res!797098 () Bool)

(assert (=> b!1769867 (=> (not res!797098) (not e!1132618))))

(assert (=> b!1769867 (= res!797098 (= (size!15479 lt!685228) (+ (size!15479 lt!685116) (size!15479 suffix!1421))))))

(assert (= (and d!540517 c!288160) b!1769865))

(assert (= (and d!540517 (not c!288160)) b!1769866))

(assert (= (and d!540517 res!797099) b!1769867))

(assert (= (and b!1769867 res!797098) b!1769868))

(declare-fun m!2188349 () Bool)

(assert (=> b!1769866 m!2188349))

(declare-fun m!2188351 () Bool)

(assert (=> d!540517 m!2188351))

(assert (=> d!540517 m!2188035))

(declare-fun m!2188353 () Bool)

(assert (=> d!540517 m!2188353))

(declare-fun m!2188355 () Bool)

(assert (=> b!1769867 m!2188355))

(assert (=> b!1769867 m!2188041))

(declare-fun m!2188357 () Bool)

(assert (=> b!1769867 m!2188357))

(assert (=> b!1769454 d!540517))

(declare-fun d!540519 () Bool)

(declare-fun list!7917 (Conc!6483) List!19560)

(assert (=> d!540519 (= (list!7915 lt!685082) (list!7917 (c!288085 lt!685082)))))

(declare-fun bs!404536 () Bool)

(assert (= bs!404536 d!540519))

(declare-fun m!2188359 () Bool)

(assert (=> bs!404536 m!2188359))

(assert (=> b!1769454 d!540519))

(declare-fun d!540521 () Bool)

(assert (=> d!540521 (isPrefix!1725 lt!685100 (++!5309 lt!685100 (_2!10949 lt!685099)))))

(declare-fun lt!685231 () Unit!33686)

(declare-fun choose!11008 (List!19560 List!19560) Unit!33686)

(assert (=> d!540521 (= lt!685231 (choose!11008 lt!685100 (_2!10949 lt!685099)))))

(assert (=> d!540521 (= (lemmaConcatTwoListThenFirstIsPrefix!1234 lt!685100 (_2!10949 lt!685099)) lt!685231)))

(declare-fun bs!404537 () Bool)

(assert (= bs!404537 d!540521))

(assert (=> bs!404537 m!2187869))

(assert (=> bs!404537 m!2187869))

(assert (=> bs!404537 m!2187871))

(declare-fun m!2188361 () Bool)

(assert (=> bs!404537 m!2188361))

(assert (=> b!1769454 d!540521))

(declare-fun d!540523 () Bool)

(assert (=> d!540523 (isPrefix!1725 lt!685116 (++!5309 lt!685116 suffix!1421))))

(declare-fun lt!685232 () Unit!33686)

(assert (=> d!540523 (= lt!685232 (choose!11008 lt!685116 suffix!1421))))

(assert (=> d!540523 (= (lemmaConcatTwoListThenFirstIsPrefix!1234 lt!685116 suffix!1421) lt!685232)))

(declare-fun bs!404538 () Bool)

(assert (= bs!404538 d!540523))

(assert (=> bs!404538 m!2187857))

(assert (=> bs!404538 m!2187857))

(declare-fun m!2188363 () Bool)

(assert (=> bs!404538 m!2188363))

(declare-fun m!2188365 () Bool)

(assert (=> bs!404538 m!2188365))

(assert (=> b!1769454 d!540523))

(declare-fun b!1769869 () Bool)

(declare-fun e!1132619 () List!19560)

(assert (=> b!1769869 (= e!1132619 (_2!10949 lt!685099))))

(declare-fun b!1769870 () Bool)

(assert (=> b!1769870 (= e!1132619 (Cons!19490 (h!24891 lt!685100) (++!5309 (t!165169 lt!685100) (_2!10949 lt!685099))))))

(declare-fun d!540525 () Bool)

(declare-fun e!1132620 () Bool)

(assert (=> d!540525 e!1132620))

(declare-fun res!797101 () Bool)

(assert (=> d!540525 (=> (not res!797101) (not e!1132620))))

(declare-fun lt!685233 () List!19560)

(assert (=> d!540525 (= res!797101 (= (content!2826 lt!685233) ((_ map or) (content!2826 lt!685100) (content!2826 (_2!10949 lt!685099)))))))

(assert (=> d!540525 (= lt!685233 e!1132619)))

(declare-fun c!288161 () Bool)

(assert (=> d!540525 (= c!288161 ((_ is Nil!19490) lt!685100))))

(assert (=> d!540525 (= (++!5309 lt!685100 (_2!10949 lt!685099)) lt!685233)))

(declare-fun b!1769872 () Bool)

(assert (=> b!1769872 (= e!1132620 (or (not (= (_2!10949 lt!685099) Nil!19490)) (= lt!685233 lt!685100)))))

(declare-fun b!1769871 () Bool)

(declare-fun res!797100 () Bool)

(assert (=> b!1769871 (=> (not res!797100) (not e!1132620))))

(assert (=> b!1769871 (= res!797100 (= (size!15479 lt!685233) (+ (size!15479 lt!685100) (size!15479 (_2!10949 lt!685099)))))))

(assert (= (and d!540525 c!288161) b!1769869))

(assert (= (and d!540525 (not c!288161)) b!1769870))

(assert (= (and d!540525 res!797101) b!1769871))

(assert (= (and b!1769871 res!797100) b!1769872))

(declare-fun m!2188367 () Bool)

(assert (=> b!1769870 m!2188367))

(declare-fun m!2188369 () Bool)

(assert (=> d!540525 m!2188369))

(declare-fun m!2188371 () Bool)

(assert (=> d!540525 m!2188371))

(declare-fun m!2188373 () Bool)

(assert (=> d!540525 m!2188373))

(declare-fun m!2188375 () Bool)

(assert (=> b!1769871 m!2188375))

(assert (=> b!1769871 m!2187843))

(declare-fun m!2188377 () Bool)

(assert (=> b!1769871 m!2188377))

(assert (=> b!1769454 d!540525))

(declare-fun b!1769901 () Bool)

(declare-fun e!1132634 () Unit!33686)

(declare-fun Unit!33689 () Unit!33686)

(assert (=> b!1769901 (= e!1132634 Unit!33689)))

(declare-fun d!540527 () Bool)

(assert (=> d!540527 (isDefined!3335 (maxPrefix!1668 thiss!24550 rules!3447 (++!5309 lt!685116 suffix!1421)))))

(declare-fun lt!685282 () Unit!33686)

(assert (=> d!540527 (= lt!685282 e!1132634)))

(declare-fun c!288166 () Bool)

(assert (=> d!540527 (= c!288166 (isEmpty!12307 (maxPrefix!1668 thiss!24550 rules!3447 (++!5309 lt!685116 suffix!1421))))))

(declare-fun lt!685288 () Unit!33686)

(declare-fun lt!685283 () Unit!33686)

(assert (=> d!540527 (= lt!685288 lt!685283)))

(declare-fun e!1132633 () Bool)

(assert (=> d!540527 e!1132633))

(declare-fun res!797119 () Bool)

(assert (=> d!540527 (=> (not res!797119) (not e!1132633))))

(declare-fun lt!685281 () Token!6536)

(assert (=> d!540527 (= res!797119 (isDefined!3336 (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 lt!685281)))))))

(assert (=> d!540527 (= lt!685283 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!533 thiss!24550 rules!3447 lt!685116 lt!685281))))

(declare-fun lt!685294 () Unit!33686)

(declare-fun lt!685292 () Unit!33686)

(assert (=> d!540527 (= lt!685294 lt!685292)))

(declare-fun lt!685293 () List!19560)

(assert (=> d!540527 (isPrefix!1725 lt!685293 (++!5309 lt!685116 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!324 (List!19560 List!19560 List!19560) Unit!33686)

(assert (=> d!540527 (= lt!685292 (lemmaPrefixStaysPrefixWhenAddingToSuffix!324 lt!685293 lt!685116 suffix!1421))))

(assert (=> d!540527 (= lt!685293 (list!7915 (charsOf!2134 lt!685281)))))

(declare-fun lt!685284 () Unit!33686)

(declare-fun lt!685287 () Unit!33686)

(assert (=> d!540527 (= lt!685284 lt!685287)))

(declare-fun lt!685285 () List!19560)

(declare-fun lt!685291 () List!19560)

(assert (=> d!540527 (isPrefix!1725 lt!685285 (++!5309 lt!685285 lt!685291))))

(assert (=> d!540527 (= lt!685287 (lemmaConcatTwoListThenFirstIsPrefix!1234 lt!685285 lt!685291))))

(assert (=> d!540527 (= lt!685291 (_2!10949 (get!5952 (maxPrefix!1668 thiss!24550 rules!3447 lt!685116))))))

(assert (=> d!540527 (= lt!685285 (list!7915 (charsOf!2134 lt!685281)))))

(declare-datatypes ((List!19565 0))(
  ( (Nil!19495) (Cons!19495 (h!24896 Token!6536) (t!165234 List!19565)) )
))
(declare-fun head!4115 (List!19565) Token!6536)

(declare-datatypes ((IArray!12973 0))(
  ( (IArray!12974 (innerList!6544 List!19565)) )
))
(declare-datatypes ((Conc!6484 0))(
  ( (Node!6484 (left!15608 Conc!6484) (right!15938 Conc!6484) (csize!13198 Int) (cheight!6695 Int)) (Leaf!9447 (xs!9360 IArray!12973) (csize!13199 Int)) (Empty!6484) )
))
(declare-datatypes ((BalanceConc!12912 0))(
  ( (BalanceConc!12913 (c!288220 Conc!6484)) )
))
(declare-fun list!7918 (BalanceConc!12912) List!19565)

(declare-datatypes ((tuple2!19098 0))(
  ( (tuple2!19099 (_1!10951 BalanceConc!12912) (_2!10951 BalanceConc!12910)) )
))
(declare-fun lex!1463 (LexerInterface!3114 List!19561 BalanceConc!12910) tuple2!19098)

(assert (=> d!540527 (= lt!685281 (head!4115 (list!7918 (_1!10951 (lex!1463 thiss!24550 rules!3447 (seqFromList!2454 lt!685116))))))))

(assert (=> d!540527 (not (isEmpty!12305 rules!3447))))

(assert (=> d!540527 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!636 thiss!24550 rules!3447 lt!685116 suffix!1421) lt!685282)))

(declare-fun b!1769898 () Bool)

(declare-fun res!797120 () Bool)

(assert (=> b!1769898 (=> (not res!797120) (not e!1132633))))

(assert (=> b!1769898 (= res!797120 (matchR!2286 (regex!3485 (get!5953 (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 lt!685281))))) (list!7915 (charsOf!2134 lt!685281))))))

(declare-fun b!1769900 () Bool)

(declare-fun Unit!33690 () Unit!33686)

(assert (=> b!1769900 (= e!1132634 Unit!33690)))

(declare-fun lt!685296 () List!19560)

(assert (=> b!1769900 (= lt!685296 (++!5309 lt!685116 suffix!1421))))

(declare-fun lt!685289 () Unit!33686)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!332 (LexerInterface!3114 Rule!6770 List!19561 List!19560) Unit!33686)

(assert (=> b!1769900 (= lt!685289 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!332 thiss!24550 (rule!5527 lt!685281) rules!3447 lt!685296))))

(assert (=> b!1769900 (isEmpty!12307 (maxPrefixOneRule!1037 thiss!24550 (rule!5527 lt!685281) lt!685296))))

(declare-fun lt!685295 () Unit!33686)

(assert (=> b!1769900 (= lt!685295 lt!685289)))

(declare-fun lt!685297 () List!19560)

(assert (=> b!1769900 (= lt!685297 (list!7915 (charsOf!2134 lt!685281)))))

(declare-fun lt!685286 () Unit!33686)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!328 (LexerInterface!3114 Rule!6770 List!19560 List!19560) Unit!33686)

(assert (=> b!1769900 (= lt!685286 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!328 thiss!24550 (rule!5527 lt!685281) lt!685297 (++!5309 lt!685116 suffix!1421)))))

(assert (=> b!1769900 (not (matchR!2286 (regex!3485 (rule!5527 lt!685281)) lt!685297))))

(declare-fun lt!685290 () Unit!33686)

(assert (=> b!1769900 (= lt!685290 lt!685286)))

(assert (=> b!1769900 false))

(declare-fun b!1769899 () Bool)

(assert (=> b!1769899 (= e!1132633 (= (rule!5527 lt!685281) (get!5953 (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 lt!685281))))))))

(assert (= (and d!540527 res!797119) b!1769898))

(assert (= (and b!1769898 res!797120) b!1769899))

(assert (= (and d!540527 c!288166) b!1769900))

(assert (= (and d!540527 (not c!288166)) b!1769901))

(declare-fun m!2188439 () Bool)

(assert (=> d!540527 m!2188439))

(declare-fun m!2188441 () Bool)

(assert (=> d!540527 m!2188441))

(declare-fun m!2188443 () Bool)

(assert (=> d!540527 m!2188443))

(assert (=> d!540527 m!2187809))

(assert (=> d!540527 m!2187857))

(assert (=> d!540527 m!2188439))

(declare-fun m!2188445 () Bool)

(assert (=> d!540527 m!2188445))

(declare-fun m!2188447 () Bool)

(assert (=> d!540527 m!2188447))

(declare-fun m!2188449 () Bool)

(assert (=> d!540527 m!2188449))

(assert (=> d!540527 m!2187857))

(declare-fun m!2188451 () Bool)

(assert (=> d!540527 m!2188451))

(assert (=> d!540527 m!2188447))

(assert (=> d!540527 m!2188439))

(declare-fun m!2188453 () Bool)

(assert (=> d!540527 m!2188453))

(assert (=> d!540527 m!2188445))

(declare-fun m!2188455 () Bool)

(assert (=> d!540527 m!2188455))

(declare-fun m!2188457 () Bool)

(assert (=> d!540527 m!2188457))

(assert (=> d!540527 m!2187857))

(declare-fun m!2188459 () Bool)

(assert (=> d!540527 m!2188459))

(declare-fun m!2188461 () Bool)

(assert (=> d!540527 m!2188461))

(declare-fun m!2188463 () Bool)

(assert (=> d!540527 m!2188463))

(assert (=> d!540527 m!2188451))

(declare-fun m!2188465 () Bool)

(assert (=> d!540527 m!2188465))

(declare-fun m!2188467 () Bool)

(assert (=> d!540527 m!2188467))

(assert (=> d!540527 m!2187809))

(declare-fun m!2188469 () Bool)

(assert (=> d!540527 m!2188469))

(declare-fun m!2188471 () Bool)

(assert (=> d!540527 m!2188471))

(declare-fun m!2188473 () Bool)

(assert (=> d!540527 m!2188473))

(assert (=> d!540527 m!2188461))

(assert (=> d!540527 m!2187819))

(assert (=> d!540527 m!2188471))

(assert (=> b!1769898 m!2188463))

(declare-fun m!2188475 () Bool)

(assert (=> b!1769898 m!2188475))

(assert (=> b!1769898 m!2188447))

(assert (=> b!1769898 m!2188461))

(assert (=> b!1769898 m!2188461))

(assert (=> b!1769898 m!2188463))

(assert (=> b!1769898 m!2188447))

(declare-fun m!2188477 () Bool)

(assert (=> b!1769898 m!2188477))

(assert (=> b!1769900 m!2187857))

(declare-fun m!2188479 () Bool)

(assert (=> b!1769900 m!2188479))

(declare-fun m!2188481 () Bool)

(assert (=> b!1769900 m!2188481))

(assert (=> b!1769900 m!2187857))

(declare-fun m!2188483 () Bool)

(assert (=> b!1769900 m!2188483))

(assert (=> b!1769900 m!2188461))

(assert (=> b!1769900 m!2188463))

(declare-fun m!2188485 () Bool)

(assert (=> b!1769900 m!2188485))

(assert (=> b!1769900 m!2188479))

(declare-fun m!2188487 () Bool)

(assert (=> b!1769900 m!2188487))

(assert (=> b!1769900 m!2188461))

(assert (=> b!1769899 m!2188447))

(assert (=> b!1769899 m!2188447))

(assert (=> b!1769899 m!2188477))

(assert (=> b!1769454 d!540527))

(declare-fun d!540541 () Bool)

(declare-fun lt!685300 () BalanceConc!12910)

(assert (=> d!540541 (= (list!7915 lt!685300) (originalCharacters!4299 (_1!10949 lt!685099)))))

(assert (=> d!540541 (= lt!685300 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099))))))

(assert (=> d!540541 (= (charsOf!2134 (_1!10949 lt!685099)) lt!685300)))

(declare-fun b_lambda!57591 () Bool)

(assert (=> (not b_lambda!57591) (not d!540541)))

(assert (=> d!540541 t!165163))

(declare-fun b_and!134503 () Bool)

(assert (= b_and!134497 (and (=> t!165163 result!128762) b_and!134503)))

(assert (=> d!540541 t!165165))

(declare-fun b_and!134505 () Bool)

(assert (= b_and!134499 (and (=> t!165165 result!128764) b_and!134505)))

(assert (=> d!540541 t!165167))

(declare-fun b_and!134507 () Bool)

(assert (= b_and!134501 (and (=> t!165167 result!128766) b_and!134507)))

(declare-fun m!2188489 () Bool)

(assert (=> d!540541 m!2188489))

(assert (=> d!540541 m!2187929))

(assert (=> b!1769454 d!540541))

(declare-fun d!540543 () Bool)

(assert (=> d!540543 (= (get!5952 lt!685114) (v!25466 lt!685114))))

(assert (=> b!1769454 d!540543))

(declare-fun b!1769914 () Bool)

(declare-fun e!1132643 () Option!3993)

(assert (=> b!1769914 (= e!1132643 None!3992)))

(declare-fun b!1769915 () Bool)

(declare-fun e!1132644 () Option!3993)

(assert (=> b!1769915 (= e!1132644 (Some!3992 (h!24892 rules!3447)))))

(declare-fun b!1769916 () Bool)

(declare-fun e!1132645 () Bool)

(declare-fun lt!685307 () Option!3993)

(assert (=> b!1769916 (= e!1132645 (= (tag!3865 (get!5953 lt!685307)) (tag!3865 (rule!5527 (_1!10949 lt!685099)))))))

(declare-fun b!1769917 () Bool)

(declare-fun e!1132646 () Bool)

(assert (=> b!1769917 (= e!1132646 e!1132645)))

(declare-fun res!797126 () Bool)

(assert (=> b!1769917 (=> (not res!797126) (not e!1132645))))

(assert (=> b!1769917 (= res!797126 (contains!3515 rules!3447 (get!5953 lt!685307)))))

(declare-fun b!1769918 () Bool)

(assert (=> b!1769918 (= e!1132644 e!1132643)))

(declare-fun c!288172 () Bool)

(assert (=> b!1769918 (= c!288172 (and ((_ is Cons!19491) rules!3447) (not (= (tag!3865 (h!24892 rules!3447)) (tag!3865 (rule!5527 (_1!10949 lt!685099)))))))))

(declare-fun d!540545 () Bool)

(assert (=> d!540545 e!1132646))

(declare-fun res!797125 () Bool)

(assert (=> d!540545 (=> res!797125 e!1132646)))

(assert (=> d!540545 (= res!797125 (isEmpty!12308 lt!685307))))

(assert (=> d!540545 (= lt!685307 e!1132644)))

(declare-fun c!288171 () Bool)

(assert (=> d!540545 (= c!288171 (and ((_ is Cons!19491) rules!3447) (= (tag!3865 (h!24892 rules!3447)) (tag!3865 (rule!5527 (_1!10949 lt!685099))))))))

(assert (=> d!540545 (rulesInvariant!2783 thiss!24550 rules!3447)))

(assert (=> d!540545 (= (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 (_1!10949 lt!685099)))) lt!685307)))

(declare-fun b!1769919 () Bool)

(declare-fun lt!685308 () Unit!33686)

(declare-fun lt!685309 () Unit!33686)

(assert (=> b!1769919 (= lt!685308 lt!685309)))

(assert (=> b!1769919 (rulesInvariant!2783 thiss!24550 (t!165170 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!203 (LexerInterface!3114 Rule!6770 List!19561) Unit!33686)

(assert (=> b!1769919 (= lt!685309 (lemmaInvariantOnRulesThenOnTail!203 thiss!24550 (h!24892 rules!3447) (t!165170 rules!3447)))))

(assert (=> b!1769919 (= e!1132643 (getRuleFromTag!533 thiss!24550 (t!165170 rules!3447) (tag!3865 (rule!5527 (_1!10949 lt!685099)))))))

(assert (= (and d!540545 c!288171) b!1769915))

(assert (= (and d!540545 (not c!288171)) b!1769918))

(assert (= (and b!1769918 c!288172) b!1769919))

(assert (= (and b!1769918 (not c!288172)) b!1769914))

(assert (= (and d!540545 (not res!797125)) b!1769917))

(assert (= (and b!1769917 res!797126) b!1769916))

(declare-fun m!2188491 () Bool)

(assert (=> b!1769916 m!2188491))

(assert (=> b!1769917 m!2188491))

(assert (=> b!1769917 m!2188491))

(declare-fun m!2188493 () Bool)

(assert (=> b!1769917 m!2188493))

(declare-fun m!2188495 () Bool)

(assert (=> d!540545 m!2188495))

(assert (=> d!540545 m!2187883))

(declare-fun m!2188497 () Bool)

(assert (=> b!1769919 m!2188497))

(declare-fun m!2188499 () Bool)

(assert (=> b!1769919 m!2188499))

(declare-fun m!2188501 () Bool)

(assert (=> b!1769919 m!2188501))

(assert (=> b!1769454 d!540545))

(declare-fun d!540547 () Bool)

(declare-fun e!1132653 () Bool)

(assert (=> d!540547 e!1132653))

(declare-fun res!797135 () Bool)

(assert (=> d!540547 (=> (not res!797135) (not e!1132653))))

(assert (=> d!540547 (= res!797135 (isDefined!3336 (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 (_1!10949 lt!685099))))))))

(declare-fun lt!685346 () Unit!33686)

(declare-fun choose!11011 (LexerInterface!3114 List!19561 List!19560 Token!6536) Unit!33686)

(assert (=> d!540547 (= lt!685346 (choose!11011 thiss!24550 rules!3447 lt!685092 (_1!10949 lt!685099)))))

(assert (=> d!540547 (rulesInvariant!2783 thiss!24550 rules!3447)))

(assert (=> d!540547 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!533 thiss!24550 rules!3447 lt!685092 (_1!10949 lt!685099)) lt!685346)))

(declare-fun b!1769932 () Bool)

(declare-fun res!797136 () Bool)

(assert (=> b!1769932 (=> (not res!797136) (not e!1132653))))

(assert (=> b!1769932 (= res!797136 (matchR!2286 (regex!3485 (get!5953 (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 (_1!10949 lt!685099)))))) (list!7915 (charsOf!2134 (_1!10949 lt!685099)))))))

(declare-fun b!1769933 () Bool)

(assert (=> b!1769933 (= e!1132653 (= (rule!5527 (_1!10949 lt!685099)) (get!5953 (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 (_1!10949 lt!685099)))))))))

(assert (= (and d!540547 res!797135) b!1769932))

(assert (= (and b!1769932 res!797136) b!1769933))

(assert (=> d!540547 m!2187867))

(assert (=> d!540547 m!2187867))

(declare-fun m!2188503 () Bool)

(assert (=> d!540547 m!2188503))

(declare-fun m!2188505 () Bool)

(assert (=> d!540547 m!2188505))

(assert (=> d!540547 m!2187883))

(assert (=> b!1769932 m!2187909))

(declare-fun m!2188507 () Bool)

(assert (=> b!1769932 m!2188507))

(assert (=> b!1769932 m!2187867))

(assert (=> b!1769932 m!2187865))

(assert (=> b!1769932 m!2187909))

(assert (=> b!1769932 m!2187865))

(assert (=> b!1769932 m!2187867))

(declare-fun m!2188509 () Bool)

(assert (=> b!1769932 m!2188509))

(assert (=> b!1769933 m!2187867))

(assert (=> b!1769933 m!2187867))

(assert (=> b!1769933 m!2188509))

(assert (=> b!1769454 d!540547))

(declare-fun d!540549 () Bool)

(assert (=> d!540549 (= suffix!1421 lt!685095)))

(declare-fun lt!685349 () Unit!33686)

(declare-fun choose!11012 (List!19560 List!19560 List!19560 List!19560 List!19560) Unit!33686)

(assert (=> d!540549 (= lt!685349 (choose!11012 lt!685116 suffix!1421 lt!685116 lt!685095 lt!685092))))

(assert (=> d!540549 (isPrefix!1725 lt!685116 lt!685092)))

(assert (=> d!540549 (= (lemmaSamePrefixThenSameSuffix!836 lt!685116 suffix!1421 lt!685116 lt!685095 lt!685092) lt!685349)))

(declare-fun bs!404542 () Bool)

(assert (= bs!404542 d!540549))

(declare-fun m!2188511 () Bool)

(assert (=> bs!404542 m!2188511))

(assert (=> bs!404542 m!2187881))

(assert (=> b!1769455 d!540549))

(declare-fun d!540551 () Bool)

(declare-fun lt!685369 () List!19560)

(assert (=> d!540551 (= (++!5309 lt!685116 lt!685369) lt!685092)))

(declare-fun e!1132658 () List!19560)

(assert (=> d!540551 (= lt!685369 e!1132658)))

(declare-fun c!288178 () Bool)

(assert (=> d!540551 (= c!288178 ((_ is Cons!19490) lt!685116))))

(assert (=> d!540551 (>= (size!15479 lt!685092) (size!15479 lt!685116))))

(assert (=> d!540551 (= (getSuffix!892 lt!685092 lt!685116) lt!685369)))

(declare-fun b!1769942 () Bool)

(assert (=> b!1769942 (= e!1132658 (getSuffix!892 (tail!2649 lt!685092) (t!165169 lt!685116)))))

(declare-fun b!1769943 () Bool)

(assert (=> b!1769943 (= e!1132658 lt!685092)))

(assert (= (and d!540551 c!288178) b!1769942))

(assert (= (and d!540551 (not c!288178)) b!1769943))

(declare-fun m!2188529 () Bool)

(assert (=> d!540551 m!2188529))

(assert (=> d!540551 m!2188017))

(assert (=> d!540551 m!2188041))

(assert (=> b!1769942 m!2188013))

(assert (=> b!1769942 m!2188013))

(declare-fun m!2188535 () Bool)

(assert (=> b!1769942 m!2188535))

(assert (=> b!1769455 d!540551))

(declare-fun b!1769944 () Bool)

(declare-fun res!797145 () Bool)

(declare-fun e!1132663 () Bool)

(assert (=> b!1769944 (=> (not res!797145) (not e!1132663))))

(assert (=> b!1769944 (= res!797145 (isEmpty!12304 (tail!2649 lt!685100)))))

(declare-fun b!1769945 () Bool)

(assert (=> b!1769945 (= e!1132663 (= (head!4114 lt!685100) (c!288084 lt!685113)))))

(declare-fun bm!110930 () Bool)

(declare-fun call!110935 () Bool)

(assert (=> bm!110930 (= call!110935 (isEmpty!12304 lt!685100))))

(declare-fun b!1769946 () Bool)

(declare-fun e!1132660 () Bool)

(declare-fun e!1132665 () Bool)

(assert (=> b!1769946 (= e!1132660 e!1132665)))

(declare-fun res!797141 () Bool)

(assert (=> b!1769946 (=> res!797141 e!1132665)))

(assert (=> b!1769946 (= res!797141 call!110935)))

(declare-fun b!1769947 () Bool)

(declare-fun e!1132662 () Bool)

(assert (=> b!1769947 (= e!1132662 e!1132660)))

(declare-fun res!797144 () Bool)

(assert (=> b!1769947 (=> (not res!797144) (not e!1132660))))

(declare-fun lt!685370 () Bool)

(assert (=> b!1769947 (= res!797144 (not lt!685370))))

(declare-fun b!1769948 () Bool)

(declare-fun e!1132664 () Bool)

(assert (=> b!1769948 (= e!1132664 (not lt!685370))))

(declare-fun b!1769949 () Bool)

(declare-fun res!797142 () Bool)

(assert (=> b!1769949 (=> res!797142 e!1132665)))

(assert (=> b!1769949 (= res!797142 (not (isEmpty!12304 (tail!2649 lt!685100))))))

(declare-fun b!1769950 () Bool)

(declare-fun res!797139 () Bool)

(assert (=> b!1769950 (=> res!797139 e!1132662)))

(assert (=> b!1769950 (= res!797139 e!1132663)))

(declare-fun res!797143 () Bool)

(assert (=> b!1769950 (=> (not res!797143) (not e!1132663))))

(assert (=> b!1769950 (= res!797143 lt!685370)))

(declare-fun b!1769951 () Bool)

(declare-fun res!797146 () Bool)

(assert (=> b!1769951 (=> res!797146 e!1132662)))

(assert (=> b!1769951 (= res!797146 (not ((_ is ElementMatch!4813) lt!685113)))))

(assert (=> b!1769951 (= e!1132664 e!1132662)))

(declare-fun b!1769952 () Bool)

(assert (=> b!1769952 (= e!1132665 (not (= (head!4114 lt!685100) (c!288084 lt!685113))))))

(declare-fun b!1769953 () Bool)

(declare-fun e!1132661 () Bool)

(assert (=> b!1769953 (= e!1132661 (= lt!685370 call!110935))))

(declare-fun b!1769954 () Bool)

(assert (=> b!1769954 (= e!1132661 e!1132664)))

(declare-fun c!288179 () Bool)

(assert (=> b!1769954 (= c!288179 ((_ is EmptyLang!4813) lt!685113))))

(declare-fun b!1769955 () Bool)

(declare-fun res!797140 () Bool)

(assert (=> b!1769955 (=> (not res!797140) (not e!1132663))))

(assert (=> b!1769955 (= res!797140 (not call!110935))))

(declare-fun d!540553 () Bool)

(assert (=> d!540553 e!1132661))

(declare-fun c!288181 () Bool)

(assert (=> d!540553 (= c!288181 ((_ is EmptyExpr!4813) lt!685113))))

(declare-fun e!1132659 () Bool)

(assert (=> d!540553 (= lt!685370 e!1132659)))

(declare-fun c!288180 () Bool)

(assert (=> d!540553 (= c!288180 (isEmpty!12304 lt!685100))))

(assert (=> d!540553 (validRegex!1949 lt!685113)))

(assert (=> d!540553 (= (matchR!2286 lt!685113 lt!685100) lt!685370)))

(declare-fun b!1769956 () Bool)

(assert (=> b!1769956 (= e!1132659 (matchR!2286 (derivativeStep!1244 lt!685113 (head!4114 lt!685100)) (tail!2649 lt!685100)))))

(declare-fun b!1769957 () Bool)

(assert (=> b!1769957 (= e!1132659 (nullable!1475 lt!685113))))

(assert (= (and d!540553 c!288180) b!1769957))

(assert (= (and d!540553 (not c!288180)) b!1769956))

(assert (= (and d!540553 c!288181) b!1769953))

(assert (= (and d!540553 (not c!288181)) b!1769954))

(assert (= (and b!1769954 c!288179) b!1769948))

(assert (= (and b!1769954 (not c!288179)) b!1769951))

(assert (= (and b!1769951 (not res!797146)) b!1769950))

(assert (= (and b!1769950 res!797143) b!1769955))

(assert (= (and b!1769955 res!797140) b!1769944))

(assert (= (and b!1769944 res!797145) b!1769945))

(assert (= (and b!1769950 (not res!797139)) b!1769947))

(assert (= (and b!1769947 res!797144) b!1769946))

(assert (= (and b!1769946 (not res!797141)) b!1769949))

(assert (= (and b!1769949 (not res!797142)) b!1769952))

(assert (= (or b!1769953 b!1769946 b!1769955) bm!110930))

(assert (=> b!1769956 m!2188335))

(assert (=> b!1769956 m!2188335))

(declare-fun m!2188567 () Bool)

(assert (=> b!1769956 m!2188567))

(assert (=> b!1769956 m!2188331))

(assert (=> b!1769956 m!2188567))

(assert (=> b!1769956 m!2188331))

(declare-fun m!2188569 () Bool)

(assert (=> b!1769956 m!2188569))

(declare-fun m!2188571 () Bool)

(assert (=> d!540553 m!2188571))

(assert (=> d!540553 m!2188107))

(assert (=> b!1769945 m!2188335))

(assert (=> bm!110930 m!2188571))

(assert (=> b!1769949 m!2188331))

(assert (=> b!1769949 m!2188331))

(declare-fun m!2188573 () Bool)

(assert (=> b!1769949 m!2188573))

(assert (=> b!1769944 m!2188331))

(assert (=> b!1769944 m!2188331))

(assert (=> b!1769944 m!2188573))

(assert (=> b!1769957 m!2188111))

(assert (=> b!1769952 m!2188335))

(assert (=> b!1769455 d!540553))

(declare-fun d!540557 () Bool)

(assert (=> d!540557 (matchR!2286 (rulesRegex!841 thiss!24550 rules!3447) (list!7915 (charsOf!2134 (_1!10949 lt!685099))))))

(declare-fun lt!685371 () Unit!33686)

(assert (=> d!540557 (= lt!685371 (choose!11006 thiss!24550 rules!3447 lt!685092 (_1!10949 lt!685099) (rule!5527 (_1!10949 lt!685099)) (_2!10949 lt!685099)))))

(assert (=> d!540557 (not (isEmpty!12305 rules!3447))))

(assert (=> d!540557 (= (lemmaMaxPrefixThenMatchesRulesRegex!192 thiss!24550 rules!3447 lt!685092 (_1!10949 lt!685099) (rule!5527 (_1!10949 lt!685099)) (_2!10949 lt!685099)) lt!685371)))

(declare-fun bs!404544 () Bool)

(assert (= bs!404544 d!540557))

(assert (=> bs!404544 m!2187865))

(assert (=> bs!404544 m!2187909))

(assert (=> bs!404544 m!2187851))

(assert (=> bs!404544 m!2187909))

(declare-fun m!2188577 () Bool)

(assert (=> bs!404544 m!2188577))

(declare-fun m!2188579 () Bool)

(assert (=> bs!404544 m!2188579))

(assert (=> bs!404544 m!2187865))

(assert (=> bs!404544 m!2187851))

(assert (=> bs!404544 m!2187819))

(assert (=> b!1769455 d!540557))

(declare-fun b!1769962 () Bool)

(declare-fun res!797157 () Bool)

(declare-fun e!1132673 () Bool)

(assert (=> b!1769962 (=> (not res!797157) (not e!1132673))))

(assert (=> b!1769962 (= res!797157 (isEmpty!12304 (tail!2649 lt!685116)))))

(declare-fun b!1769963 () Bool)

(assert (=> b!1769963 (= e!1132673 (= (head!4114 lt!685116) (c!288084 (regex!3485 rule!422))))))

(declare-fun bm!110931 () Bool)

(declare-fun call!110936 () Bool)

(assert (=> bm!110931 (= call!110936 (isEmpty!12304 lt!685116))))

(declare-fun b!1769964 () Bool)

(declare-fun e!1132670 () Bool)

(declare-fun e!1132675 () Bool)

(assert (=> b!1769964 (= e!1132670 e!1132675)))

(declare-fun res!797153 () Bool)

(assert (=> b!1769964 (=> res!797153 e!1132675)))

(assert (=> b!1769964 (= res!797153 call!110936)))

(declare-fun b!1769965 () Bool)

(declare-fun e!1132672 () Bool)

(assert (=> b!1769965 (= e!1132672 e!1132670)))

(declare-fun res!797156 () Bool)

(assert (=> b!1769965 (=> (not res!797156) (not e!1132670))))

(declare-fun lt!685373 () Bool)

(assert (=> b!1769965 (= res!797156 (not lt!685373))))

(declare-fun b!1769966 () Bool)

(declare-fun e!1132674 () Bool)

(assert (=> b!1769966 (= e!1132674 (not lt!685373))))

(declare-fun b!1769967 () Bool)

(declare-fun res!797154 () Bool)

(assert (=> b!1769967 (=> res!797154 e!1132675)))

(assert (=> b!1769967 (= res!797154 (not (isEmpty!12304 (tail!2649 lt!685116))))))

(declare-fun b!1769968 () Bool)

(declare-fun res!797151 () Bool)

(assert (=> b!1769968 (=> res!797151 e!1132672)))

(assert (=> b!1769968 (= res!797151 e!1132673)))

(declare-fun res!797155 () Bool)

(assert (=> b!1769968 (=> (not res!797155) (not e!1132673))))

(assert (=> b!1769968 (= res!797155 lt!685373)))

(declare-fun b!1769969 () Bool)

(declare-fun res!797158 () Bool)

(assert (=> b!1769969 (=> res!797158 e!1132672)))

(assert (=> b!1769969 (= res!797158 (not ((_ is ElementMatch!4813) (regex!3485 rule!422))))))

(assert (=> b!1769969 (= e!1132674 e!1132672)))

(declare-fun b!1769970 () Bool)

(assert (=> b!1769970 (= e!1132675 (not (= (head!4114 lt!685116) (c!288084 (regex!3485 rule!422)))))))

(declare-fun b!1769971 () Bool)

(declare-fun e!1132671 () Bool)

(assert (=> b!1769971 (= e!1132671 (= lt!685373 call!110936))))

(declare-fun b!1769972 () Bool)

(assert (=> b!1769972 (= e!1132671 e!1132674)))

(declare-fun c!288182 () Bool)

(assert (=> b!1769972 (= c!288182 ((_ is EmptyLang!4813) (regex!3485 rule!422)))))

(declare-fun b!1769973 () Bool)

(declare-fun res!797152 () Bool)

(assert (=> b!1769973 (=> (not res!797152) (not e!1132673))))

(assert (=> b!1769973 (= res!797152 (not call!110936))))

(declare-fun d!540561 () Bool)

(assert (=> d!540561 e!1132671))

(declare-fun c!288184 () Bool)

(assert (=> d!540561 (= c!288184 ((_ is EmptyExpr!4813) (regex!3485 rule!422)))))

(declare-fun e!1132669 () Bool)

(assert (=> d!540561 (= lt!685373 e!1132669)))

(declare-fun c!288183 () Bool)

(assert (=> d!540561 (= c!288183 (isEmpty!12304 lt!685116))))

(assert (=> d!540561 (validRegex!1949 (regex!3485 rule!422))))

(assert (=> d!540561 (= (matchR!2286 (regex!3485 rule!422) lt!685116) lt!685373)))

(declare-fun b!1769974 () Bool)

(assert (=> b!1769974 (= e!1132669 (matchR!2286 (derivativeStep!1244 (regex!3485 rule!422) (head!4114 lt!685116)) (tail!2649 lt!685116)))))

(declare-fun b!1769975 () Bool)

(assert (=> b!1769975 (= e!1132669 (nullable!1475 (regex!3485 rule!422)))))

(assert (= (and d!540561 c!288183) b!1769975))

(assert (= (and d!540561 (not c!288183)) b!1769974))

(assert (= (and d!540561 c!288184) b!1769971))

(assert (= (and d!540561 (not c!288184)) b!1769972))

(assert (= (and b!1769972 c!288182) b!1769966))

(assert (= (and b!1769972 (not c!288182)) b!1769969))

(assert (= (and b!1769969 (not res!797158)) b!1769968))

(assert (= (and b!1769968 res!797155) b!1769973))

(assert (= (and b!1769973 res!797152) b!1769962))

(assert (= (and b!1769962 res!797157) b!1769963))

(assert (= (and b!1769968 (not res!797151)) b!1769965))

(assert (= (and b!1769965 res!797156) b!1769964))

(assert (= (and b!1769964 (not res!797153)) b!1769967))

(assert (= (and b!1769967 (not res!797154)) b!1769970))

(assert (= (or b!1769971 b!1769964 b!1769973) bm!110931))

(assert (=> b!1769974 m!2188097))

(assert (=> b!1769974 m!2188097))

(declare-fun m!2188589 () Bool)

(assert (=> b!1769974 m!2188589))

(assert (=> b!1769974 m!2188101))

(assert (=> b!1769974 m!2188589))

(assert (=> b!1769974 m!2188101))

(declare-fun m!2188591 () Bool)

(assert (=> b!1769974 m!2188591))

(assert (=> d!540561 m!2188105))

(declare-fun m!2188593 () Bool)

(assert (=> d!540561 m!2188593))

(assert (=> b!1769963 m!2188097))

(assert (=> bm!110931 m!2188105))

(assert (=> b!1769967 m!2188101))

(assert (=> b!1769967 m!2188101))

(assert (=> b!1769967 m!2188109))

(assert (=> b!1769962 m!2188101))

(assert (=> b!1769962 m!2188101))

(assert (=> b!1769962 m!2188109))

(declare-fun m!2188595 () Bool)

(assert (=> b!1769975 m!2188595))

(assert (=> b!1769970 m!2188097))

(assert (=> b!1769456 d!540561))

(declare-fun d!540565 () Bool)

(declare-fun res!797170 () Bool)

(declare-fun e!1132681 () Bool)

(assert (=> d!540565 (=> (not res!797170) (not e!1132681))))

(assert (=> d!540565 (= res!797170 (validRegex!1949 (regex!3485 rule!422)))))

(assert (=> d!540565 (= (ruleValid!983 thiss!24550 rule!422) e!1132681)))

(declare-fun b!1769989 () Bool)

(declare-fun res!797171 () Bool)

(assert (=> b!1769989 (=> (not res!797171) (not e!1132681))))

(assert (=> b!1769989 (= res!797171 (not (nullable!1475 (regex!3485 rule!422))))))

(declare-fun b!1769990 () Bool)

(assert (=> b!1769990 (= e!1132681 (not (= (tag!3865 rule!422) (String!22208 ""))))))

(assert (= (and d!540565 res!797170) b!1769989))

(assert (= (and b!1769989 res!797171) b!1769990))

(assert (=> d!540565 m!2188593))

(assert (=> b!1769989 m!2188595))

(assert (=> b!1769456 d!540565))

(declare-fun d!540569 () Bool)

(assert (=> d!540569 (ruleValid!983 thiss!24550 rule!422)))

(declare-fun lt!685385 () Unit!33686)

(declare-fun choose!11014 (LexerInterface!3114 Rule!6770 List!19561) Unit!33686)

(assert (=> d!540569 (= lt!685385 (choose!11014 thiss!24550 rule!422 rules!3447))))

(assert (=> d!540569 (contains!3515 rules!3447 rule!422)))

(assert (=> d!540569 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!506 thiss!24550 rule!422 rules!3447) lt!685385)))

(declare-fun bs!404547 () Bool)

(assert (= bs!404547 d!540569))

(assert (=> bs!404547 m!2187939))

(declare-fun m!2188633 () Bool)

(assert (=> bs!404547 m!2188633))

(assert (=> bs!404547 m!2187935))

(assert (=> b!1769456 d!540569))

(declare-fun d!540575 () Bool)

(assert (=> d!540575 (= (maxPrefixOneRule!1037 thiss!24550 (rule!5527 (_1!10949 lt!685099)) lt!685092) (Some!3991 (tuple2!19095 (Token!6537 (apply!5285 (transformation!3485 (rule!5527 (_1!10949 lt!685099))) (seqFromList!2454 lt!685100)) (rule!5527 (_1!10949 lt!685099)) (size!15479 lt!685100) lt!685100) (_2!10949 lt!685099))))))

(declare-fun lt!685401 () Unit!33686)

(declare-fun choose!11015 (LexerInterface!3114 List!19561 List!19560 List!19560 List!19560 Rule!6770) Unit!33686)

(assert (=> d!540575 (= lt!685401 (choose!11015 thiss!24550 rules!3447 lt!685100 lt!685092 (_2!10949 lt!685099) (rule!5527 (_1!10949 lt!685099))))))

(assert (=> d!540575 (not (isEmpty!12305 rules!3447))))

(assert (=> d!540575 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!415 thiss!24550 rules!3447 lt!685100 lt!685092 (_2!10949 lt!685099) (rule!5527 (_1!10949 lt!685099))) lt!685401)))

(declare-fun bs!404549 () Bool)

(assert (= bs!404549 d!540575))

(declare-fun m!2188675 () Bool)

(assert (=> bs!404549 m!2188675))

(assert (=> bs!404549 m!2187835))

(assert (=> bs!404549 m!2187837))

(assert (=> bs!404549 m!2187843))

(assert (=> bs!404549 m!2187835))

(assert (=> bs!404549 m!2187831))

(assert (=> bs!404549 m!2187819))

(assert (=> b!1769459 d!540575))

(declare-fun d!540591 () Bool)

(declare-fun lt!685406 () Int)

(assert (=> d!540591 (>= lt!685406 0)))

(declare-fun e!1132713 () Int)

(assert (=> d!540591 (= lt!685406 e!1132713)))

(declare-fun c!288199 () Bool)

(assert (=> d!540591 (= c!288199 ((_ is Nil!19490) lt!685100))))

(assert (=> d!540591 (= (size!15479 lt!685100) lt!685406)))

(declare-fun b!1770043 () Bool)

(assert (=> b!1770043 (= e!1132713 0)))

(declare-fun b!1770044 () Bool)

(assert (=> b!1770044 (= e!1132713 (+ 1 (size!15479 (t!165169 lt!685100))))))

(assert (= (and d!540591 c!288199) b!1770043))

(assert (= (and d!540591 (not c!288199)) b!1770044))

(declare-fun m!2188691 () Bool)

(assert (=> b!1770044 m!2188691))

(assert (=> b!1769459 d!540591))

(declare-fun d!540595 () Bool)

(assert (=> d!540595 (= (apply!5285 (transformation!3485 (rule!5527 (_1!10949 lt!685099))) (seqFromList!2454 lt!685100)) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (seqFromList!2454 lt!685100)))))

(declare-fun b_lambda!57595 () Bool)

(assert (=> (not b_lambda!57595) (not d!540595)))

(declare-fun t!165190 () Bool)

(declare-fun tb!107043 () Bool)

(assert (=> (and b!1769445 (= (toValue!5008 (transformation!3485 (rule!5527 token!523))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) t!165190) tb!107043))

(declare-fun result!128786 () Bool)

(assert (=> tb!107043 (= result!128786 (inv!21 (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (seqFromList!2454 lt!685100))))))

(declare-fun m!2188701 () Bool)

(assert (=> tb!107043 m!2188701))

(assert (=> d!540595 t!165190))

(declare-fun b_and!134515 () Bool)

(assert (= b_and!134461 (and (=> t!165190 result!128786) b_and!134515)))

(declare-fun t!165192 () Bool)

(declare-fun tb!107045 () Bool)

(assert (=> (and b!1769469 (= (toValue!5008 (transformation!3485 (h!24892 rules!3447))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) t!165192) tb!107045))

(declare-fun result!128788 () Bool)

(assert (= result!128788 result!128786))

(assert (=> d!540595 t!165192))

(declare-fun b_and!134517 () Bool)

(assert (= b_and!134463 (and (=> t!165192 result!128788) b_and!134517)))

(declare-fun tb!107047 () Bool)

(declare-fun t!165194 () Bool)

(assert (=> (and b!1769458 (= (toValue!5008 (transformation!3485 rule!422)) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) t!165194) tb!107047))

(declare-fun result!128790 () Bool)

(assert (= result!128790 result!128786))

(assert (=> d!540595 t!165194))

(declare-fun b_and!134519 () Bool)

(assert (= b_and!134465 (and (=> t!165194 result!128790) b_and!134519)))

(assert (=> d!540595 m!2187835))

(declare-fun m!2188707 () Bool)

(assert (=> d!540595 m!2188707))

(assert (=> b!1769459 d!540595))

(declare-fun d!540609 () Bool)

(declare-fun lt!685407 () List!19560)

(assert (=> d!540609 (= (++!5309 lt!685100 lt!685407) lt!685092)))

(declare-fun e!1132716 () List!19560)

(assert (=> d!540609 (= lt!685407 e!1132716)))

(declare-fun c!288200 () Bool)

(assert (=> d!540609 (= c!288200 ((_ is Cons!19490) lt!685100))))

(assert (=> d!540609 (>= (size!15479 lt!685092) (size!15479 lt!685100))))

(assert (=> d!540609 (= (getSuffix!892 lt!685092 lt!685100) lt!685407)))

(declare-fun b!1770046 () Bool)

(assert (=> b!1770046 (= e!1132716 (getSuffix!892 (tail!2649 lt!685092) (t!165169 lt!685100)))))

(declare-fun b!1770047 () Bool)

(assert (=> b!1770047 (= e!1132716 lt!685092)))

(assert (= (and d!540609 c!288200) b!1770046))

(assert (= (and d!540609 (not c!288200)) b!1770047))

(declare-fun m!2188709 () Bool)

(assert (=> d!540609 m!2188709))

(assert (=> d!540609 m!2188017))

(assert (=> d!540609 m!2187843))

(assert (=> b!1770046 m!2188013))

(assert (=> b!1770046 m!2188013))

(declare-fun m!2188711 () Bool)

(assert (=> b!1770046 m!2188711))

(assert (=> b!1769459 d!540609))

(declare-fun d!540611 () Bool)

(assert (=> d!540611 (= (_2!10949 lt!685099) lt!685085)))

(declare-fun lt!685408 () Unit!33686)

(assert (=> d!540611 (= lt!685408 (choose!11012 lt!685100 (_2!10949 lt!685099) lt!685100 lt!685085 lt!685092))))

(assert (=> d!540611 (isPrefix!1725 lt!685100 lt!685092)))

(assert (=> d!540611 (= (lemmaSamePrefixThenSameSuffix!836 lt!685100 (_2!10949 lt!685099) lt!685100 lt!685085 lt!685092) lt!685408)))

(declare-fun bs!404552 () Bool)

(assert (= bs!404552 d!540611))

(declare-fun m!2188713 () Bool)

(assert (=> bs!404552 m!2188713))

(assert (=> bs!404552 m!2187853))

(assert (=> b!1769459 d!540611))

(declare-fun b!1770155 () Bool)

(declare-fun res!797241 () Bool)

(declare-fun e!1132777 () Bool)

(assert (=> b!1770155 (=> (not res!797241) (not e!1132777))))

(declare-fun lt!685429 () Option!3992)

(assert (=> b!1770155 (= res!797241 (= (value!108995 (_1!10949 (get!5952 lt!685429))) (apply!5285 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685429)))) (seqFromList!2454 (originalCharacters!4299 (_1!10949 (get!5952 lt!685429)))))))))

(declare-fun b!1770156 () Bool)

(assert (=> b!1770156 (= e!1132777 (= (size!15478 (_1!10949 (get!5952 lt!685429))) (size!15479 (originalCharacters!4299 (_1!10949 (get!5952 lt!685429))))))))

(declare-fun b!1770157 () Bool)

(declare-fun e!1132776 () Option!3992)

(declare-datatypes ((tuple2!19102 0))(
  ( (tuple2!19103 (_1!10953 List!19560) (_2!10953 List!19560)) )
))
(declare-fun lt!685430 () tuple2!19102)

(assert (=> b!1770157 (= e!1132776 (Some!3991 (tuple2!19095 (Token!6537 (apply!5285 (transformation!3485 (rule!5527 (_1!10949 lt!685099))) (seqFromList!2454 (_1!10953 lt!685430))) (rule!5527 (_1!10949 lt!685099)) (size!15480 (seqFromList!2454 (_1!10953 lt!685430))) (_1!10953 lt!685430)) (_2!10953 lt!685430))))))

(declare-fun lt!685427 () Unit!33686)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!437 (Regex!4813 List!19560) Unit!33686)

(assert (=> b!1770157 (= lt!685427 (longestMatchIsAcceptedByMatchOrIsEmpty!437 (regex!3485 (rule!5527 (_1!10949 lt!685099))) lt!685092))))

(declare-fun res!797240 () Bool)

(declare-fun findLongestMatchInner!453 (Regex!4813 List!19560 Int List!19560 List!19560 Int) tuple2!19102)

(assert (=> b!1770157 (= res!797240 (isEmpty!12304 (_1!10953 (findLongestMatchInner!453 (regex!3485 (rule!5527 (_1!10949 lt!685099))) Nil!19490 (size!15479 Nil!19490) lt!685092 lt!685092 (size!15479 lt!685092)))))))

(declare-fun e!1132775 () Bool)

(assert (=> b!1770157 (=> res!797240 e!1132775)))

(assert (=> b!1770157 e!1132775))

(declare-fun lt!685431 () Unit!33686)

(assert (=> b!1770157 (= lt!685431 lt!685427)))

(declare-fun lt!685428 () Unit!33686)

(assert (=> b!1770157 (= lt!685428 (lemmaSemiInverse!623 (transformation!3485 (rule!5527 (_1!10949 lt!685099))) (seqFromList!2454 (_1!10953 lt!685430))))))

(declare-fun b!1770158 () Bool)

(declare-fun res!797242 () Bool)

(assert (=> b!1770158 (=> (not res!797242) (not e!1132777))))

(assert (=> b!1770158 (= res!797242 (= (++!5309 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685429)))) (_2!10949 (get!5952 lt!685429))) lt!685092))))

(declare-fun b!1770159 () Bool)

(assert (=> b!1770159 (= e!1132776 None!3991)))

(declare-fun d!540613 () Bool)

(declare-fun e!1132778 () Bool)

(assert (=> d!540613 e!1132778))

(declare-fun res!797237 () Bool)

(assert (=> d!540613 (=> res!797237 e!1132778)))

(assert (=> d!540613 (= res!797237 (isEmpty!12307 lt!685429))))

(assert (=> d!540613 (= lt!685429 e!1132776)))

(declare-fun c!288207 () Bool)

(assert (=> d!540613 (= c!288207 (isEmpty!12304 (_1!10953 lt!685430)))))

(declare-fun findLongestMatch!380 (Regex!4813 List!19560) tuple2!19102)

(assert (=> d!540613 (= lt!685430 (findLongestMatch!380 (regex!3485 (rule!5527 (_1!10949 lt!685099))) lt!685092))))

(assert (=> d!540613 (ruleValid!983 thiss!24550 (rule!5527 (_1!10949 lt!685099)))))

(assert (=> d!540613 (= (maxPrefixOneRule!1037 thiss!24550 (rule!5527 (_1!10949 lt!685099)) lt!685092) lt!685429)))

(declare-fun b!1770160 () Bool)

(declare-fun res!797239 () Bool)

(assert (=> b!1770160 (=> (not res!797239) (not e!1132777))))

(assert (=> b!1770160 (= res!797239 (= (rule!5527 (_1!10949 (get!5952 lt!685429))) (rule!5527 (_1!10949 lt!685099))))))

(declare-fun b!1770161 () Bool)

(assert (=> b!1770161 (= e!1132775 (matchR!2286 (regex!3485 (rule!5527 (_1!10949 lt!685099))) (_1!10953 (findLongestMatchInner!453 (regex!3485 (rule!5527 (_1!10949 lt!685099))) Nil!19490 (size!15479 Nil!19490) lt!685092 lt!685092 (size!15479 lt!685092)))))))

(declare-fun b!1770162 () Bool)

(declare-fun res!797238 () Bool)

(assert (=> b!1770162 (=> (not res!797238) (not e!1132777))))

(assert (=> b!1770162 (= res!797238 (< (size!15479 (_2!10949 (get!5952 lt!685429))) (size!15479 lt!685092)))))

(declare-fun b!1770163 () Bool)

(assert (=> b!1770163 (= e!1132778 e!1132777)))

(declare-fun res!797236 () Bool)

(assert (=> b!1770163 (=> (not res!797236) (not e!1132777))))

(assert (=> b!1770163 (= res!797236 (matchR!2286 (regex!3485 (rule!5527 (_1!10949 lt!685099))) (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685429))))))))

(assert (= (and d!540613 c!288207) b!1770159))

(assert (= (and d!540613 (not c!288207)) b!1770157))

(assert (= (and b!1770157 (not res!797240)) b!1770161))

(assert (= (and d!540613 (not res!797237)) b!1770163))

(assert (= (and b!1770163 res!797236) b!1770158))

(assert (= (and b!1770158 res!797242) b!1770162))

(assert (= (and b!1770162 res!797238) b!1770160))

(assert (= (and b!1770160 res!797239) b!1770155))

(assert (= (and b!1770155 res!797241) b!1770156))

(declare-fun m!2188767 () Bool)

(assert (=> b!1770162 m!2188767))

(declare-fun m!2188769 () Bool)

(assert (=> b!1770162 m!2188769))

(assert (=> b!1770162 m!2188017))

(declare-fun m!2188771 () Bool)

(assert (=> b!1770161 m!2188771))

(assert (=> b!1770161 m!2188017))

(assert (=> b!1770161 m!2188771))

(assert (=> b!1770161 m!2188017))

(declare-fun m!2188773 () Bool)

(assert (=> b!1770161 m!2188773))

(declare-fun m!2188775 () Bool)

(assert (=> b!1770161 m!2188775))

(assert (=> b!1770158 m!2188767))

(declare-fun m!2188777 () Bool)

(assert (=> b!1770158 m!2188777))

(assert (=> b!1770158 m!2188777))

(declare-fun m!2188779 () Bool)

(assert (=> b!1770158 m!2188779))

(assert (=> b!1770158 m!2188779))

(declare-fun m!2188781 () Bool)

(assert (=> b!1770158 m!2188781))

(assert (=> b!1770157 m!2188771))

(declare-fun m!2188783 () Bool)

(assert (=> b!1770157 m!2188783))

(declare-fun m!2188785 () Bool)

(assert (=> b!1770157 m!2188785))

(assert (=> b!1770157 m!2188783))

(declare-fun m!2188787 () Bool)

(assert (=> b!1770157 m!2188787))

(assert (=> b!1770157 m!2188783))

(declare-fun m!2188789 () Bool)

(assert (=> b!1770157 m!2188789))

(assert (=> b!1770157 m!2188783))

(declare-fun m!2188791 () Bool)

(assert (=> b!1770157 m!2188791))

(declare-fun m!2188793 () Bool)

(assert (=> b!1770157 m!2188793))

(assert (=> b!1770157 m!2188017))

(assert (=> b!1770157 m!2188771))

(assert (=> b!1770157 m!2188017))

(assert (=> b!1770157 m!2188773))

(assert (=> b!1770155 m!2188767))

(declare-fun m!2188795 () Bool)

(assert (=> b!1770155 m!2188795))

(assert (=> b!1770155 m!2188795))

(declare-fun m!2188797 () Bool)

(assert (=> b!1770155 m!2188797))

(assert (=> b!1770156 m!2188767))

(declare-fun m!2188799 () Bool)

(assert (=> b!1770156 m!2188799))

(declare-fun m!2188801 () Bool)

(assert (=> d!540613 m!2188801))

(declare-fun m!2188803 () Bool)

(assert (=> d!540613 m!2188803))

(declare-fun m!2188805 () Bool)

(assert (=> d!540613 m!2188805))

(declare-fun m!2188807 () Bool)

(assert (=> d!540613 m!2188807))

(assert (=> b!1770163 m!2188767))

(assert (=> b!1770163 m!2188777))

(assert (=> b!1770163 m!2188777))

(assert (=> b!1770163 m!2188779))

(assert (=> b!1770163 m!2188779))

(declare-fun m!2188809 () Bool)

(assert (=> b!1770163 m!2188809))

(assert (=> b!1770160 m!2188767))

(assert (=> b!1769459 d!540613))

(declare-fun d!540633 () Bool)

(declare-fun fromListB!1124 (List!19560) BalanceConc!12910)

(assert (=> d!540633 (= (seqFromList!2454 lt!685100) (fromListB!1124 lt!685100))))

(declare-fun bs!404557 () Bool)

(assert (= bs!404557 d!540633))

(declare-fun m!2188811 () Bool)

(assert (=> bs!404557 m!2188811))

(assert (=> b!1769459 d!540633))

(declare-fun d!540635 () Bool)

(declare-fun lt!685434 () Bool)

(declare-fun content!2828 (List!19561) (InoxSet Rule!6770))

(assert (=> d!540635 (= lt!685434 (select (content!2828 rules!3447) rule!422))))

(declare-fun e!1132783 () Bool)

(assert (=> d!540635 (= lt!685434 e!1132783)))

(declare-fun res!797247 () Bool)

(assert (=> d!540635 (=> (not res!797247) (not e!1132783))))

(assert (=> d!540635 (= res!797247 ((_ is Cons!19491) rules!3447))))

(assert (=> d!540635 (= (contains!3515 rules!3447 rule!422) lt!685434)))

(declare-fun b!1770168 () Bool)

(declare-fun e!1132784 () Bool)

(assert (=> b!1770168 (= e!1132783 e!1132784)))

(declare-fun res!797248 () Bool)

(assert (=> b!1770168 (=> res!797248 e!1132784)))

(assert (=> b!1770168 (= res!797248 (= (h!24892 rules!3447) rule!422))))

(declare-fun b!1770169 () Bool)

(assert (=> b!1770169 (= e!1132784 (contains!3515 (t!165170 rules!3447) rule!422))))

(assert (= (and d!540635 res!797247) b!1770168))

(assert (= (and b!1770168 (not res!797248)) b!1770169))

(declare-fun m!2188813 () Bool)

(assert (=> d!540635 m!2188813))

(declare-fun m!2188815 () Bool)

(assert (=> d!540635 m!2188815))

(declare-fun m!2188817 () Bool)

(assert (=> b!1770169 m!2188817))

(assert (=> b!1769460 d!540635))

(declare-fun d!540637 () Bool)

(assert (=> d!540637 (= (list!7915 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))) (list!7917 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))))))

(declare-fun bs!404558 () Bool)

(assert (= bs!404558 d!540637))

(declare-fun m!2188819 () Bool)

(assert (=> bs!404558 m!2188819))

(assert (=> b!1769461 d!540637))

(declare-fun bs!404559 () Bool)

(declare-fun d!540639 () Bool)

(assert (= bs!404559 (and d!540639 b!1769462)))

(declare-fun lambda!70395 () Int)

(assert (=> bs!404559 (= lambda!70395 lambda!70380)))

(declare-fun b!1770174 () Bool)

(declare-fun e!1132787 () Bool)

(assert (=> b!1770174 (= e!1132787 true)))

(assert (=> d!540639 e!1132787))

(assert (= d!540639 b!1770174))

(assert (=> b!1770174 (< (dynLambda!9458 order!12443 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) (dynLambda!9459 order!12445 lambda!70395))))

(assert (=> b!1770174 (< (dynLambda!9460 order!12447 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) (dynLambda!9459 order!12445 lambda!70395))))

(assert (=> d!540639 (= (list!7915 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))) (list!7915 lt!685082))))

(declare-fun lt!685437 () Unit!33686)

(declare-fun ForallOf!328 (Int BalanceConc!12910) Unit!33686)

(assert (=> d!540639 (= lt!685437 (ForallOf!328 lambda!70395 lt!685082))))

(assert (=> d!540639 (= (lemmaSemiInverse!623 (transformation!3485 (rule!5527 (_1!10949 lt!685099))) lt!685082) lt!685437)))

(declare-fun b_lambda!57615 () Bool)

(assert (=> (not b_lambda!57615) (not d!540639)))

(assert (=> d!540639 t!165151))

(declare-fun b_and!134549 () Bool)

(assert (= b_and!134503 (and (=> t!165151 result!128746) b_and!134549)))

(assert (=> d!540639 t!165153))

(declare-fun b_and!134551 () Bool)

(assert (= b_and!134505 (and (=> t!165153 result!128750) b_and!134551)))

(assert (=> d!540639 t!165155))

(declare-fun b_and!134553 () Bool)

(assert (= b_and!134507 (and (=> t!165155 result!128752) b_and!134553)))

(declare-fun b_lambda!57617 () Bool)

(assert (=> (not b_lambda!57617) (not d!540639)))

(assert (=> d!540639 t!165157))

(declare-fun b_and!134555 () Bool)

(assert (= b_and!134515 (and (=> t!165157 result!128754) b_and!134555)))

(assert (=> d!540639 t!165159))

(declare-fun b_and!134557 () Bool)

(assert (= b_and!134517 (and (=> t!165159 result!128758) b_and!134557)))

(assert (=> d!540639 t!165161))

(declare-fun b_and!134559 () Bool)

(assert (= b_and!134519 (and (=> t!165161 result!128760) b_and!134559)))

(assert (=> d!540639 m!2187823))

(assert (=> d!540639 m!2187825))

(declare-fun m!2188821 () Bool)

(assert (=> d!540639 m!2188821))

(assert (=> d!540639 m!2187863))

(assert (=> d!540639 m!2187821))

(assert (=> d!540639 m!2187821))

(assert (=> d!540639 m!2187823))

(assert (=> b!1769461 d!540639))

(declare-fun d!540641 () Bool)

(declare-fun choose!11016 (Int) Bool)

(assert (=> d!540641 (= (Forall!852 lambda!70380) (choose!11016 lambda!70380))))

(declare-fun bs!404560 () Bool)

(assert (= bs!404560 d!540641))

(declare-fun m!2188823 () Bool)

(assert (=> bs!404560 m!2188823))

(assert (=> b!1769462 d!540641))

(declare-fun d!540643 () Bool)

(declare-fun e!1132790 () Bool)

(assert (=> d!540643 e!1132790))

(declare-fun res!797251 () Bool)

(assert (=> d!540643 (=> (not res!797251) (not e!1132790))))

(assert (=> d!540643 (= res!797251 (semiInverseModEq!1390 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))))))

(declare-fun Unit!33693 () Unit!33686)

(assert (=> d!540643 (= (lemmaInv!684 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) Unit!33693)))

(declare-fun b!1770177 () Bool)

(assert (=> b!1770177 (= e!1132790 (equivClasses!1331 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))))))

(assert (= (and d!540643 res!797251) b!1770177))

(declare-fun m!2188825 () Bool)

(assert (=> d!540643 m!2188825))

(declare-fun m!2188827 () Bool)

(assert (=> b!1770177 m!2188827))

(assert (=> b!1769462 d!540643))

(declare-fun b!1770178 () Bool)

(declare-fun res!797258 () Bool)

(declare-fun e!1132795 () Bool)

(assert (=> b!1770178 (=> (not res!797258) (not e!1132795))))

(assert (=> b!1770178 (= res!797258 (isEmpty!12304 (tail!2649 (list!7915 (charsOf!2134 (_1!10949 lt!685099))))))))

(declare-fun b!1770179 () Bool)

(assert (=> b!1770179 (= e!1132795 (= (head!4114 (list!7915 (charsOf!2134 (_1!10949 lt!685099)))) (c!288084 (regex!3485 lt!685084))))))

(declare-fun bm!110935 () Bool)

(declare-fun call!110940 () Bool)

(assert (=> bm!110935 (= call!110940 (isEmpty!12304 (list!7915 (charsOf!2134 (_1!10949 lt!685099)))))))

(declare-fun b!1770180 () Bool)

(declare-fun e!1132792 () Bool)

(declare-fun e!1132797 () Bool)

(assert (=> b!1770180 (= e!1132792 e!1132797)))

(declare-fun res!797254 () Bool)

(assert (=> b!1770180 (=> res!797254 e!1132797)))

(assert (=> b!1770180 (= res!797254 call!110940)))

(declare-fun b!1770181 () Bool)

(declare-fun e!1132794 () Bool)

(assert (=> b!1770181 (= e!1132794 e!1132792)))

(declare-fun res!797257 () Bool)

(assert (=> b!1770181 (=> (not res!797257) (not e!1132792))))

(declare-fun lt!685438 () Bool)

(assert (=> b!1770181 (= res!797257 (not lt!685438))))

(declare-fun b!1770182 () Bool)

(declare-fun e!1132796 () Bool)

(assert (=> b!1770182 (= e!1132796 (not lt!685438))))

(declare-fun b!1770183 () Bool)

(declare-fun res!797255 () Bool)

(assert (=> b!1770183 (=> res!797255 e!1132797)))

(assert (=> b!1770183 (= res!797255 (not (isEmpty!12304 (tail!2649 (list!7915 (charsOf!2134 (_1!10949 lt!685099)))))))))

(declare-fun b!1770184 () Bool)

(declare-fun res!797252 () Bool)

(assert (=> b!1770184 (=> res!797252 e!1132794)))

(assert (=> b!1770184 (= res!797252 e!1132795)))

(declare-fun res!797256 () Bool)

(assert (=> b!1770184 (=> (not res!797256) (not e!1132795))))

(assert (=> b!1770184 (= res!797256 lt!685438)))

(declare-fun b!1770185 () Bool)

(declare-fun res!797259 () Bool)

(assert (=> b!1770185 (=> res!797259 e!1132794)))

(assert (=> b!1770185 (= res!797259 (not ((_ is ElementMatch!4813) (regex!3485 lt!685084))))))

(assert (=> b!1770185 (= e!1132796 e!1132794)))

(declare-fun b!1770186 () Bool)

(assert (=> b!1770186 (= e!1132797 (not (= (head!4114 (list!7915 (charsOf!2134 (_1!10949 lt!685099)))) (c!288084 (regex!3485 lt!685084)))))))

(declare-fun b!1770187 () Bool)

(declare-fun e!1132793 () Bool)

(assert (=> b!1770187 (= e!1132793 (= lt!685438 call!110940))))

(declare-fun b!1770188 () Bool)

(assert (=> b!1770188 (= e!1132793 e!1132796)))

(declare-fun c!288209 () Bool)

(assert (=> b!1770188 (= c!288209 ((_ is EmptyLang!4813) (regex!3485 lt!685084)))))

(declare-fun b!1770189 () Bool)

(declare-fun res!797253 () Bool)

(assert (=> b!1770189 (=> (not res!797253) (not e!1132795))))

(assert (=> b!1770189 (= res!797253 (not call!110940))))

(declare-fun d!540645 () Bool)

(assert (=> d!540645 e!1132793))

(declare-fun c!288211 () Bool)

(assert (=> d!540645 (= c!288211 ((_ is EmptyExpr!4813) (regex!3485 lt!685084)))))

(declare-fun e!1132791 () Bool)

(assert (=> d!540645 (= lt!685438 e!1132791)))

(declare-fun c!288210 () Bool)

(assert (=> d!540645 (= c!288210 (isEmpty!12304 (list!7915 (charsOf!2134 (_1!10949 lt!685099)))))))

(assert (=> d!540645 (validRegex!1949 (regex!3485 lt!685084))))

(assert (=> d!540645 (= (matchR!2286 (regex!3485 lt!685084) (list!7915 (charsOf!2134 (_1!10949 lt!685099)))) lt!685438)))

(declare-fun b!1770190 () Bool)

(assert (=> b!1770190 (= e!1132791 (matchR!2286 (derivativeStep!1244 (regex!3485 lt!685084) (head!4114 (list!7915 (charsOf!2134 (_1!10949 lt!685099))))) (tail!2649 (list!7915 (charsOf!2134 (_1!10949 lt!685099))))))))

(declare-fun b!1770191 () Bool)

(assert (=> b!1770191 (= e!1132791 (nullable!1475 (regex!3485 lt!685084)))))

(assert (= (and d!540645 c!288210) b!1770191))

(assert (= (and d!540645 (not c!288210)) b!1770190))

(assert (= (and d!540645 c!288211) b!1770187))

(assert (= (and d!540645 (not c!288211)) b!1770188))

(assert (= (and b!1770188 c!288209) b!1770182))

(assert (= (and b!1770188 (not c!288209)) b!1770185))

(assert (= (and b!1770185 (not res!797259)) b!1770184))

(assert (= (and b!1770184 res!797256) b!1770189))

(assert (= (and b!1770189 res!797253) b!1770178))

(assert (= (and b!1770178 res!797258) b!1770179))

(assert (= (and b!1770184 (not res!797252)) b!1770181))

(assert (= (and b!1770181 res!797257) b!1770180))

(assert (= (and b!1770180 (not res!797254)) b!1770183))

(assert (= (and b!1770183 (not res!797255)) b!1770186))

(assert (= (or b!1770187 b!1770180 b!1770189) bm!110935))

(assert (=> b!1770190 m!2187909))

(declare-fun m!2188829 () Bool)

(assert (=> b!1770190 m!2188829))

(assert (=> b!1770190 m!2188829))

(declare-fun m!2188831 () Bool)

(assert (=> b!1770190 m!2188831))

(assert (=> b!1770190 m!2187909))

(declare-fun m!2188833 () Bool)

(assert (=> b!1770190 m!2188833))

(assert (=> b!1770190 m!2188831))

(assert (=> b!1770190 m!2188833))

(declare-fun m!2188835 () Bool)

(assert (=> b!1770190 m!2188835))

(assert (=> d!540645 m!2187909))

(declare-fun m!2188837 () Bool)

(assert (=> d!540645 m!2188837))

(declare-fun m!2188839 () Bool)

(assert (=> d!540645 m!2188839))

(assert (=> b!1770179 m!2187909))

(assert (=> b!1770179 m!2188829))

(assert (=> bm!110935 m!2187909))

(assert (=> bm!110935 m!2188837))

(assert (=> b!1770183 m!2187909))

(assert (=> b!1770183 m!2188833))

(assert (=> b!1770183 m!2188833))

(declare-fun m!2188841 () Bool)

(assert (=> b!1770183 m!2188841))

(assert (=> b!1770178 m!2187909))

(assert (=> b!1770178 m!2188833))

(assert (=> b!1770178 m!2188833))

(assert (=> b!1770178 m!2188841))

(declare-fun m!2188843 () Bool)

(assert (=> b!1770191 m!2188843))

(assert (=> b!1770186 m!2187909))

(assert (=> b!1770186 m!2188829))

(assert (=> b!1769463 d!540645))

(declare-fun d!540647 () Bool)

(assert (=> d!540647 (= (list!7915 (charsOf!2134 (_1!10949 lt!685099))) (list!7917 (c!288085 (charsOf!2134 (_1!10949 lt!685099)))))))

(declare-fun bs!404561 () Bool)

(assert (= bs!404561 d!540647))

(declare-fun m!2188845 () Bool)

(assert (=> bs!404561 m!2188845))

(assert (=> b!1769463 d!540647))

(assert (=> b!1769463 d!540541))

(declare-fun d!540649 () Bool)

(assert (=> d!540649 (= (get!5953 lt!685093) (v!25467 lt!685093))))

(assert (=> b!1769463 d!540649))

(declare-fun d!540651 () Bool)

(assert (=> d!540651 (= (isDefined!3335 lt!685087) (not (isEmpty!12307 lt!685087)))))

(declare-fun bs!404562 () Bool)

(assert (= bs!404562 d!540651))

(declare-fun m!2188847 () Bool)

(assert (=> bs!404562 m!2188847))

(assert (=> b!1769442 d!540651))

(declare-fun b!1770192 () Bool)

(declare-fun res!797265 () Bool)

(declare-fun e!1132800 () Bool)

(assert (=> b!1770192 (=> (not res!797265) (not e!1132800))))

(declare-fun lt!685443 () Option!3992)

(assert (=> b!1770192 (= res!797265 (< (size!15479 (_2!10949 (get!5952 lt!685443))) (size!15479 lt!685116)))))

(declare-fun bm!110936 () Bool)

(declare-fun call!110941 () Option!3992)

(assert (=> bm!110936 (= call!110941 (maxPrefixOneRule!1037 thiss!24550 (h!24892 rules!3447) lt!685116))))

(declare-fun b!1770194 () Bool)

(declare-fun e!1132798 () Option!3992)

(assert (=> b!1770194 (= e!1132798 call!110941)))

(declare-fun b!1770195 () Bool)

(declare-fun res!797261 () Bool)

(assert (=> b!1770195 (=> (not res!797261) (not e!1132800))))

(assert (=> b!1770195 (= res!797261 (= (value!108995 (_1!10949 (get!5952 lt!685443))) (apply!5285 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685443)))) (seqFromList!2454 (originalCharacters!4299 (_1!10949 (get!5952 lt!685443)))))))))

(declare-fun b!1770196 () Bool)

(declare-fun res!797263 () Bool)

(assert (=> b!1770196 (=> (not res!797263) (not e!1132800))))

(assert (=> b!1770196 (= res!797263 (= (++!5309 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685443)))) (_2!10949 (get!5952 lt!685443))) lt!685116))))

(declare-fun b!1770193 () Bool)

(declare-fun res!797260 () Bool)

(assert (=> b!1770193 (=> (not res!797260) (not e!1132800))))

(assert (=> b!1770193 (= res!797260 (= (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685443)))) (originalCharacters!4299 (_1!10949 (get!5952 lt!685443)))))))

(declare-fun d!540653 () Bool)

(declare-fun e!1132799 () Bool)

(assert (=> d!540653 e!1132799))

(declare-fun res!797262 () Bool)

(assert (=> d!540653 (=> res!797262 e!1132799)))

(assert (=> d!540653 (= res!797262 (isEmpty!12307 lt!685443))))

(assert (=> d!540653 (= lt!685443 e!1132798)))

(declare-fun c!288212 () Bool)

(assert (=> d!540653 (= c!288212 (and ((_ is Cons!19491) rules!3447) ((_ is Nil!19491) (t!165170 rules!3447))))))

(declare-fun lt!685441 () Unit!33686)

(declare-fun lt!685440 () Unit!33686)

(assert (=> d!540653 (= lt!685441 lt!685440)))

(assert (=> d!540653 (isPrefix!1725 lt!685116 lt!685116)))

(assert (=> d!540653 (= lt!685440 (lemmaIsPrefixRefl!1142 lt!685116 lt!685116))))

(assert (=> d!540653 (rulesValidInductive!1180 thiss!24550 rules!3447)))

(assert (=> d!540653 (= (maxPrefix!1668 thiss!24550 rules!3447 lt!685116) lt!685443)))

(declare-fun b!1770197 () Bool)

(assert (=> b!1770197 (= e!1132799 e!1132800)))

(declare-fun res!797264 () Bool)

(assert (=> b!1770197 (=> (not res!797264) (not e!1132800))))

(assert (=> b!1770197 (= res!797264 (isDefined!3335 lt!685443))))

(declare-fun b!1770198 () Bool)

(declare-fun lt!685439 () Option!3992)

(declare-fun lt!685442 () Option!3992)

(assert (=> b!1770198 (= e!1132798 (ite (and ((_ is None!3991) lt!685439) ((_ is None!3991) lt!685442)) None!3991 (ite ((_ is None!3991) lt!685442) lt!685439 (ite ((_ is None!3991) lt!685439) lt!685442 (ite (>= (size!15478 (_1!10949 (v!25466 lt!685439))) (size!15478 (_1!10949 (v!25466 lt!685442)))) lt!685439 lt!685442)))))))

(assert (=> b!1770198 (= lt!685439 call!110941)))

(assert (=> b!1770198 (= lt!685442 (maxPrefix!1668 thiss!24550 (t!165170 rules!3447) lt!685116))))

(declare-fun b!1770199 () Bool)

(declare-fun res!797266 () Bool)

(assert (=> b!1770199 (=> (not res!797266) (not e!1132800))))

(assert (=> b!1770199 (= res!797266 (matchR!2286 (regex!3485 (rule!5527 (_1!10949 (get!5952 lt!685443)))) (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685443))))))))

(declare-fun b!1770200 () Bool)

(assert (=> b!1770200 (= e!1132800 (contains!3515 rules!3447 (rule!5527 (_1!10949 (get!5952 lt!685443)))))))

(assert (= (and d!540653 c!288212) b!1770194))

(assert (= (and d!540653 (not c!288212)) b!1770198))

(assert (= (or b!1770194 b!1770198) bm!110936))

(assert (= (and d!540653 (not res!797262)) b!1770197))

(assert (= (and b!1770197 res!797264) b!1770193))

(assert (= (and b!1770193 res!797260) b!1770192))

(assert (= (and b!1770192 res!797265) b!1770196))

(assert (= (and b!1770196 res!797263) b!1770195))

(assert (= (and b!1770195 res!797261) b!1770199))

(assert (= (and b!1770199 res!797266) b!1770200))

(declare-fun m!2188849 () Bool)

(assert (=> bm!110936 m!2188849))

(declare-fun m!2188851 () Bool)

(assert (=> b!1770195 m!2188851))

(declare-fun m!2188853 () Bool)

(assert (=> b!1770195 m!2188853))

(assert (=> b!1770195 m!2188853))

(declare-fun m!2188855 () Bool)

(assert (=> b!1770195 m!2188855))

(assert (=> b!1770192 m!2188851))

(declare-fun m!2188857 () Bool)

(assert (=> b!1770192 m!2188857))

(assert (=> b!1770192 m!2188041))

(assert (=> b!1770196 m!2188851))

(declare-fun m!2188859 () Bool)

(assert (=> b!1770196 m!2188859))

(assert (=> b!1770196 m!2188859))

(declare-fun m!2188861 () Bool)

(assert (=> b!1770196 m!2188861))

(assert (=> b!1770196 m!2188861))

(declare-fun m!2188863 () Bool)

(assert (=> b!1770196 m!2188863))

(declare-fun m!2188865 () Bool)

(assert (=> b!1770197 m!2188865))

(assert (=> b!1770193 m!2188851))

(assert (=> b!1770193 m!2188859))

(assert (=> b!1770193 m!2188859))

(assert (=> b!1770193 m!2188861))

(declare-fun m!2188867 () Bool)

(assert (=> d!540653 m!2188867))

(declare-fun m!2188869 () Bool)

(assert (=> d!540653 m!2188869))

(declare-fun m!2188871 () Bool)

(assert (=> d!540653 m!2188871))

(assert (=> d!540653 m!2188323))

(assert (=> b!1770200 m!2188851))

(declare-fun m!2188873 () Bool)

(assert (=> b!1770200 m!2188873))

(assert (=> b!1770199 m!2188851))

(assert (=> b!1770199 m!2188859))

(assert (=> b!1770199 m!2188859))

(assert (=> b!1770199 m!2188861))

(assert (=> b!1770199 m!2188861))

(declare-fun m!2188875 () Bool)

(assert (=> b!1770199 m!2188875))

(declare-fun m!2188877 () Bool)

(assert (=> b!1770198 m!2188877))

(assert (=> b!1769442 d!540653))

(declare-fun d!540655 () Bool)

(assert (=> d!540655 (= (list!7915 lt!685102) (list!7917 (c!288085 lt!685102)))))

(declare-fun bs!404563 () Bool)

(assert (= bs!404563 d!540655))

(declare-fun m!2188879 () Bool)

(assert (=> bs!404563 m!2188879))

(assert (=> b!1769442 d!540655))

(declare-fun d!540657 () Bool)

(declare-fun lt!685444 () BalanceConc!12910)

(assert (=> d!540657 (= (list!7915 lt!685444) (originalCharacters!4299 token!523))))

(assert (=> d!540657 (= lt!685444 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 token!523))) (value!108995 token!523)))))

(assert (=> d!540657 (= (charsOf!2134 token!523) lt!685444)))

(declare-fun b_lambda!57619 () Bool)

(assert (=> (not b_lambda!57619) (not d!540657)))

(assert (=> d!540657 t!165184))

(declare-fun b_and!134561 () Bool)

(assert (= b_and!134549 (and (=> t!165184 result!128780) b_and!134561)))

(assert (=> d!540657 t!165186))

(declare-fun b_and!134563 () Bool)

(assert (= b_and!134551 (and (=> t!165186 result!128782) b_and!134563)))

(assert (=> d!540657 t!165188))

(declare-fun b_and!134565 () Bool)

(assert (= b_and!134553 (and (=> t!165188 result!128784) b_and!134565)))

(declare-fun m!2188881 () Bool)

(assert (=> d!540657 m!2188881))

(assert (=> d!540657 m!2188293))

(assert (=> b!1769442 d!540657))

(declare-fun b!1770201 () Bool)

(declare-fun res!797273 () Bool)

(declare-fun e!1132805 () Bool)

(assert (=> b!1770201 (=> (not res!797273) (not e!1132805))))

(assert (=> b!1770201 (= res!797273 (isEmpty!12304 (tail!2649 lt!685100)))))

(declare-fun b!1770202 () Bool)

(assert (=> b!1770202 (= e!1132805 (= (head!4114 lt!685100) (c!288084 (regex!3485 (rule!5527 (_1!10949 lt!685099))))))))

(declare-fun bm!110937 () Bool)

(declare-fun call!110942 () Bool)

(assert (=> bm!110937 (= call!110942 (isEmpty!12304 lt!685100))))

(declare-fun b!1770203 () Bool)

(declare-fun e!1132802 () Bool)

(declare-fun e!1132807 () Bool)

(assert (=> b!1770203 (= e!1132802 e!1132807)))

(declare-fun res!797269 () Bool)

(assert (=> b!1770203 (=> res!797269 e!1132807)))

(assert (=> b!1770203 (= res!797269 call!110942)))

(declare-fun b!1770204 () Bool)

(declare-fun e!1132804 () Bool)

(assert (=> b!1770204 (= e!1132804 e!1132802)))

(declare-fun res!797272 () Bool)

(assert (=> b!1770204 (=> (not res!797272) (not e!1132802))))

(declare-fun lt!685445 () Bool)

(assert (=> b!1770204 (= res!797272 (not lt!685445))))

(declare-fun b!1770205 () Bool)

(declare-fun e!1132806 () Bool)

(assert (=> b!1770205 (= e!1132806 (not lt!685445))))

(declare-fun b!1770206 () Bool)

(declare-fun res!797270 () Bool)

(assert (=> b!1770206 (=> res!797270 e!1132807)))

(assert (=> b!1770206 (= res!797270 (not (isEmpty!12304 (tail!2649 lt!685100))))))

(declare-fun b!1770207 () Bool)

(declare-fun res!797267 () Bool)

(assert (=> b!1770207 (=> res!797267 e!1132804)))

(assert (=> b!1770207 (= res!797267 e!1132805)))

(declare-fun res!797271 () Bool)

(assert (=> b!1770207 (=> (not res!797271) (not e!1132805))))

(assert (=> b!1770207 (= res!797271 lt!685445)))

(declare-fun b!1770208 () Bool)

(declare-fun res!797274 () Bool)

(assert (=> b!1770208 (=> res!797274 e!1132804)))

(assert (=> b!1770208 (= res!797274 (not ((_ is ElementMatch!4813) (regex!3485 (rule!5527 (_1!10949 lt!685099))))))))

(assert (=> b!1770208 (= e!1132806 e!1132804)))

(declare-fun b!1770209 () Bool)

(assert (=> b!1770209 (= e!1132807 (not (= (head!4114 lt!685100) (c!288084 (regex!3485 (rule!5527 (_1!10949 lt!685099)))))))))

(declare-fun b!1770210 () Bool)

(declare-fun e!1132803 () Bool)

(assert (=> b!1770210 (= e!1132803 (= lt!685445 call!110942))))

(declare-fun b!1770211 () Bool)

(assert (=> b!1770211 (= e!1132803 e!1132806)))

(declare-fun c!288213 () Bool)

(assert (=> b!1770211 (= c!288213 ((_ is EmptyLang!4813) (regex!3485 (rule!5527 (_1!10949 lt!685099)))))))

(declare-fun b!1770212 () Bool)

(declare-fun res!797268 () Bool)

(assert (=> b!1770212 (=> (not res!797268) (not e!1132805))))

(assert (=> b!1770212 (= res!797268 (not call!110942))))

(declare-fun d!540659 () Bool)

(assert (=> d!540659 e!1132803))

(declare-fun c!288215 () Bool)

(assert (=> d!540659 (= c!288215 ((_ is EmptyExpr!4813) (regex!3485 (rule!5527 (_1!10949 lt!685099)))))))

(declare-fun e!1132801 () Bool)

(assert (=> d!540659 (= lt!685445 e!1132801)))

(declare-fun c!288214 () Bool)

(assert (=> d!540659 (= c!288214 (isEmpty!12304 lt!685100))))

(assert (=> d!540659 (validRegex!1949 (regex!3485 (rule!5527 (_1!10949 lt!685099))))))

(assert (=> d!540659 (= (matchR!2286 (regex!3485 (rule!5527 (_1!10949 lt!685099))) lt!685100) lt!685445)))

(declare-fun b!1770213 () Bool)

(assert (=> b!1770213 (= e!1132801 (matchR!2286 (derivativeStep!1244 (regex!3485 (rule!5527 (_1!10949 lt!685099))) (head!4114 lt!685100)) (tail!2649 lt!685100)))))

(declare-fun b!1770214 () Bool)

(assert (=> b!1770214 (= e!1132801 (nullable!1475 (regex!3485 (rule!5527 (_1!10949 lt!685099)))))))

(assert (= (and d!540659 c!288214) b!1770214))

(assert (= (and d!540659 (not c!288214)) b!1770213))

(assert (= (and d!540659 c!288215) b!1770210))

(assert (= (and d!540659 (not c!288215)) b!1770211))

(assert (= (and b!1770211 c!288213) b!1770205))

(assert (= (and b!1770211 (not c!288213)) b!1770208))

(assert (= (and b!1770208 (not res!797274)) b!1770207))

(assert (= (and b!1770207 res!797271) b!1770212))

(assert (= (and b!1770212 res!797268) b!1770201))

(assert (= (and b!1770201 res!797273) b!1770202))

(assert (= (and b!1770207 (not res!797267)) b!1770204))

(assert (= (and b!1770204 res!797272) b!1770203))

(assert (= (and b!1770203 (not res!797269)) b!1770206))

(assert (= (and b!1770206 (not res!797270)) b!1770209))

(assert (= (or b!1770210 b!1770203 b!1770212) bm!110937))

(assert (=> b!1770213 m!2188335))

(assert (=> b!1770213 m!2188335))

(declare-fun m!2188883 () Bool)

(assert (=> b!1770213 m!2188883))

(assert (=> b!1770213 m!2188331))

(assert (=> b!1770213 m!2188883))

(assert (=> b!1770213 m!2188331))

(declare-fun m!2188885 () Bool)

(assert (=> b!1770213 m!2188885))

(assert (=> d!540659 m!2188571))

(declare-fun m!2188887 () Bool)

(assert (=> d!540659 m!2188887))

(assert (=> b!1770202 m!2188335))

(assert (=> bm!110937 m!2188571))

(assert (=> b!1770206 m!2188331))

(assert (=> b!1770206 m!2188331))

(assert (=> b!1770206 m!2188573))

(assert (=> b!1770201 m!2188331))

(assert (=> b!1770201 m!2188331))

(assert (=> b!1770201 m!2188573))

(declare-fun m!2188889 () Bool)

(assert (=> b!1770214 m!2188889))

(assert (=> b!1770209 m!2188335))

(assert (=> b!1769464 d!540659))

(declare-fun d!540661 () Bool)

(declare-fun lt!685446 () Int)

(assert (=> d!540661 (>= lt!685446 0)))

(declare-fun e!1132808 () Int)

(assert (=> d!540661 (= lt!685446 e!1132808)))

(declare-fun c!288216 () Bool)

(assert (=> d!540661 (= c!288216 ((_ is Nil!19490) lt!685094))))

(assert (=> d!540661 (= (size!15479 lt!685094) lt!685446)))

(declare-fun b!1770215 () Bool)

(assert (=> b!1770215 (= e!1132808 0)))

(declare-fun b!1770216 () Bool)

(assert (=> b!1770216 (= e!1132808 (+ 1 (size!15479 (t!165169 lt!685094))))))

(assert (= (and d!540661 c!288216) b!1770215))

(assert (= (and d!540661 (not c!288216)) b!1770216))

(declare-fun m!2188891 () Bool)

(assert (=> b!1770216 m!2188891))

(assert (=> b!1769443 d!540661))

(declare-fun d!540663 () Bool)

(assert (=> d!540663 (= (isEmpty!12304 suffix!1421) ((_ is Nil!19490) suffix!1421))))

(assert (=> b!1769444 d!540663))

(declare-fun b!1770217 () Bool)

(declare-fun e!1132811 () Bool)

(assert (=> b!1770217 (= e!1132811 (inv!16 (value!108995 token!523)))))

(declare-fun b!1770218 () Bool)

(declare-fun res!797275 () Bool)

(declare-fun e!1132810 () Bool)

(assert (=> b!1770218 (=> res!797275 e!1132810)))

(assert (=> b!1770218 (= res!797275 (not ((_ is IntegerValue!10727) (value!108995 token!523))))))

(declare-fun e!1132809 () Bool)

(assert (=> b!1770218 (= e!1132809 e!1132810)))

(declare-fun d!540665 () Bool)

(declare-fun c!288218 () Bool)

(assert (=> d!540665 (= c!288218 ((_ is IntegerValue!10725) (value!108995 token!523)))))

(assert (=> d!540665 (= (inv!21 (value!108995 token!523)) e!1132811)))

(declare-fun b!1770219 () Bool)

(assert (=> b!1770219 (= e!1132810 (inv!15 (value!108995 token!523)))))

(declare-fun b!1770220 () Bool)

(assert (=> b!1770220 (= e!1132811 e!1132809)))

(declare-fun c!288217 () Bool)

(assert (=> b!1770220 (= c!288217 ((_ is IntegerValue!10726) (value!108995 token!523)))))

(declare-fun b!1770221 () Bool)

(assert (=> b!1770221 (= e!1132809 (inv!17 (value!108995 token!523)))))

(assert (= (and d!540665 c!288218) b!1770217))

(assert (= (and d!540665 (not c!288218)) b!1770220))

(assert (= (and b!1770220 c!288217) b!1770221))

(assert (= (and b!1770220 (not c!288217)) b!1770218))

(assert (= (and b!1770218 (not res!797275)) b!1770219))

(declare-fun m!2188893 () Bool)

(assert (=> b!1770217 m!2188893))

(declare-fun m!2188895 () Bool)

(assert (=> b!1770219 m!2188895))

(declare-fun m!2188897 () Bool)

(assert (=> b!1770221 m!2188897))

(assert (=> b!1769466 d!540665))

(declare-fun d!540667 () Bool)

(declare-fun c!288219 () Bool)

(assert (=> d!540667 (= c!288219 ((_ is Node!6483) (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))))))

(declare-fun e!1132812 () Bool)

(assert (=> d!540667 (= (inv!25332 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))) e!1132812)))

(declare-fun b!1770222 () Bool)

(assert (=> b!1770222 (= e!1132812 (inv!25336 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))))))

(declare-fun b!1770223 () Bool)

(declare-fun e!1132813 () Bool)

(assert (=> b!1770223 (= e!1132812 e!1132813)))

(declare-fun res!797276 () Bool)

(assert (=> b!1770223 (= res!797276 (not ((_ is Leaf!9446) (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))))))))

(assert (=> b!1770223 (=> res!797276 e!1132813)))

(declare-fun b!1770224 () Bool)

(assert (=> b!1770224 (= e!1132813 (inv!25337 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))))))

(assert (= (and d!540667 c!288219) b!1770222))

(assert (= (and d!540667 (not c!288219)) b!1770223))

(assert (= (and b!1770223 (not res!797276)) b!1770224))

(declare-fun m!2188899 () Bool)

(assert (=> b!1770222 m!2188899))

(declare-fun m!2188901 () Bool)

(assert (=> b!1770224 m!2188901))

(assert (=> b!1769489 d!540667))

(declare-fun d!540669 () Bool)

(assert (=> d!540669 (= (isEmpty!12304 (_2!10949 lt!685101)) ((_ is Nil!19490) (_2!10949 lt!685101)))))

(assert (=> b!1769467 d!540669))

(declare-fun d!540671 () Bool)

(assert (=> d!540671 (= (inv!25333 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099)))) (isBalanced!2027 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099))))))))

(declare-fun bs!404564 () Bool)

(assert (= bs!404564 d!540671))

(declare-fun m!2188903 () Bool)

(assert (=> bs!404564 m!2188903))

(assert (=> tb!107019 d!540671))

(declare-fun d!540673 () Bool)

(declare-fun res!797279 () Bool)

(declare-fun e!1132816 () Bool)

(assert (=> d!540673 (=> (not res!797279) (not e!1132816))))

(declare-fun rulesValid!1316 (LexerInterface!3114 List!19561) Bool)

(assert (=> d!540673 (= res!797279 (rulesValid!1316 thiss!24550 rules!3447))))

(assert (=> d!540673 (= (rulesInvariant!2783 thiss!24550 rules!3447) e!1132816)))

(declare-fun b!1770227 () Bool)

(declare-datatypes ((List!19567 0))(
  ( (Nil!19497) (Cons!19497 (h!24898 String!22207) (t!165236 List!19567)) )
))
(declare-fun noDuplicateTag!1316 (LexerInterface!3114 List!19561 List!19567) Bool)

(assert (=> b!1770227 (= e!1132816 (noDuplicateTag!1316 thiss!24550 rules!3447 Nil!19497))))

(assert (= (and d!540673 res!797279) b!1770227))

(declare-fun m!2188905 () Bool)

(assert (=> d!540673 m!2188905))

(declare-fun m!2188907 () Bool)

(assert (=> b!1770227 m!2188907))

(assert (=> b!1769448 d!540673))

(declare-fun d!540675 () Bool)

(assert (=> d!540675 (= (apply!5285 (transformation!3485 (rule!5527 (_1!10949 lt!685099))) lt!685082) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))))

(declare-fun b_lambda!57621 () Bool)

(assert (=> (not b_lambda!57621) (not d!540675)))

(assert (=> d!540675 t!165157))

(declare-fun b_and!134567 () Bool)

(assert (= b_and!134555 (and (=> t!165157 result!128754) b_and!134567)))

(assert (=> d!540675 t!165159))

(declare-fun b_and!134569 () Bool)

(assert (= b_and!134557 (and (=> t!165159 result!128758) b_and!134569)))

(assert (=> d!540675 t!165161))

(declare-fun b_and!134571 () Bool)

(assert (= b_and!134559 (and (=> t!165161 result!128760) b_and!134571)))

(assert (=> d!540675 m!2187821))

(assert (=> b!1769470 d!540675))

(declare-fun d!540677 () Bool)

(assert (=> d!540677 (= (size!15478 (_1!10949 lt!685099)) (size!15479 (originalCharacters!4299 (_1!10949 lt!685099))))))

(declare-fun Unit!33695 () Unit!33686)

(assert (=> d!540677 (= (lemmaCharactersSize!543 (_1!10949 lt!685099)) Unit!33695)))

(declare-fun bs!404565 () Bool)

(assert (= bs!404565 d!540677))

(declare-fun m!2188909 () Bool)

(assert (=> bs!404565 m!2188909))

(assert (=> b!1769470 d!540677))

(declare-fun d!540679 () Bool)

(assert (=> d!540679 (= (seqFromList!2454 (originalCharacters!4299 (_1!10949 lt!685099))) (fromListB!1124 (originalCharacters!4299 (_1!10949 lt!685099))))))

(declare-fun bs!404566 () Bool)

(assert (= bs!404566 d!540679))

(declare-fun m!2188911 () Bool)

(assert (=> bs!404566 m!2188911))

(assert (=> b!1769470 d!540679))

(declare-fun d!540681 () Bool)

(declare-fun lt!685447 () Int)

(assert (=> d!540681 (= lt!685447 (size!15479 (list!7915 lt!685082)))))

(assert (=> d!540681 (= lt!685447 (size!15481 (c!288085 lt!685082)))))

(assert (=> d!540681 (= (size!15480 lt!685082) lt!685447)))

(declare-fun bs!404567 () Bool)

(assert (= bs!404567 d!540681))

(assert (=> bs!404567 m!2187863))

(assert (=> bs!404567 m!2187863))

(declare-fun m!2188913 () Bool)

(assert (=> bs!404567 m!2188913))

(declare-fun m!2188915 () Bool)

(assert (=> bs!404567 m!2188915))

(assert (=> b!1769470 d!540681))

(declare-fun b!1770234 () Bool)

(declare-fun e!1132821 () Bool)

(assert (=> b!1770234 (= e!1132821 true)))

(declare-fun d!540683 () Bool)

(assert (=> d!540683 e!1132821))

(assert (= d!540683 b!1770234))

(declare-fun order!12451 () Int)

(declare-fun lambda!70398 () Int)

(declare-fun dynLambda!9464 (Int Int) Int)

(assert (=> b!1770234 (< (dynLambda!9458 order!12443 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) (dynLambda!9464 order!12451 lambda!70398))))

(assert (=> b!1770234 (< (dynLambda!9460 order!12447 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) (dynLambda!9464 order!12451 lambda!70398))))

(assert (=> d!540683 (= (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (seqFromList!2454 (originalCharacters!4299 (_1!10949 lt!685099)))))))

(declare-fun lt!685450 () Unit!33686)

(declare-fun Forall2of!136 (Int BalanceConc!12910 BalanceConc!12910) Unit!33686)

(assert (=> d!540683 (= lt!685450 (Forall2of!136 lambda!70398 lt!685082 (seqFromList!2454 (originalCharacters!4299 (_1!10949 lt!685099)))))))

(assert (=> d!540683 (= (list!7915 lt!685082) (list!7915 (seqFromList!2454 (originalCharacters!4299 (_1!10949 lt!685099)))))))

(assert (=> d!540683 (= (lemmaEqSameImage!396 (transformation!3485 (rule!5527 (_1!10949 lt!685099))) lt!685082 (seqFromList!2454 (originalCharacters!4299 (_1!10949 lt!685099)))) lt!685450)))

(declare-fun b_lambda!57623 () Bool)

(assert (=> (not b_lambda!57623) (not d!540683)))

(assert (=> d!540683 t!165157))

(declare-fun b_and!134573 () Bool)

(assert (= b_and!134567 (and (=> t!165157 result!128754) b_and!134573)))

(assert (=> d!540683 t!165159))

(declare-fun b_and!134575 () Bool)

(assert (= b_and!134569 (and (=> t!165159 result!128758) b_and!134575)))

(assert (=> d!540683 t!165161))

(declare-fun b_and!134577 () Bool)

(assert (= b_and!134571 (and (=> t!165161 result!128760) b_and!134577)))

(declare-fun b_lambda!57625 () Bool)

(assert (=> (not b_lambda!57625) (not d!540683)))

(declare-fun tb!107067 () Bool)

(declare-fun t!165214 () Bool)

(assert (=> (and b!1769445 (= (toValue!5008 (transformation!3485 (rule!5527 token!523))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) t!165214) tb!107067))

(declare-fun result!128818 () Bool)

(assert (=> tb!107067 (= result!128818 (inv!21 (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (seqFromList!2454 (originalCharacters!4299 (_1!10949 lt!685099))))))))

(declare-fun m!2188917 () Bool)

(assert (=> tb!107067 m!2188917))

(assert (=> d!540683 t!165214))

(declare-fun b_and!134579 () Bool)

(assert (= b_and!134573 (and (=> t!165214 result!128818) b_and!134579)))

(declare-fun t!165216 () Bool)

(declare-fun tb!107069 () Bool)

(assert (=> (and b!1769469 (= (toValue!5008 (transformation!3485 (h!24892 rules!3447))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) t!165216) tb!107069))

(declare-fun result!128820 () Bool)

(assert (= result!128820 result!128818))

(assert (=> d!540683 t!165216))

(declare-fun b_and!134581 () Bool)

(assert (= b_and!134575 (and (=> t!165216 result!128820) b_and!134581)))

(declare-fun t!165218 () Bool)

(declare-fun tb!107071 () Bool)

(assert (=> (and b!1769458 (= (toValue!5008 (transformation!3485 rule!422)) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) t!165218) tb!107071))

(declare-fun result!128822 () Bool)

(assert (= result!128822 result!128818))

(assert (=> d!540683 t!165218))

(declare-fun b_and!134583 () Bool)

(assert (= b_and!134577 (and (=> t!165218 result!128822) b_and!134583)))

(assert (=> d!540683 m!2187917))

(declare-fun m!2188919 () Bool)

(assert (=> d!540683 m!2188919))

(assert (=> d!540683 m!2187863))

(assert (=> d!540683 m!2187821))

(assert (=> d!540683 m!2187917))

(declare-fun m!2188921 () Bool)

(assert (=> d!540683 m!2188921))

(assert (=> d!540683 m!2187917))

(declare-fun m!2188923 () Bool)

(assert (=> d!540683 m!2188923))

(assert (=> b!1769470 d!540683))

(declare-fun d!540685 () Bool)

(assert (=> d!540685 (= (inv!25325 (tag!3865 (h!24892 rules!3447))) (= (mod (str.len (value!108994 (tag!3865 (h!24892 rules!3447)))) 2) 0))))

(assert (=> b!1769449 d!540685))

(declare-fun d!540687 () Bool)

(declare-fun res!797282 () Bool)

(declare-fun e!1132823 () Bool)

(assert (=> d!540687 (=> (not res!797282) (not e!1132823))))

(assert (=> d!540687 (= res!797282 (semiInverseModEq!1390 (toChars!4867 (transformation!3485 (h!24892 rules!3447))) (toValue!5008 (transformation!3485 (h!24892 rules!3447)))))))

(assert (=> d!540687 (= (inv!25330 (transformation!3485 (h!24892 rules!3447))) e!1132823)))

(declare-fun b!1770235 () Bool)

(assert (=> b!1770235 (= e!1132823 (equivClasses!1331 (toChars!4867 (transformation!3485 (h!24892 rules!3447))) (toValue!5008 (transformation!3485 (h!24892 rules!3447)))))))

(assert (= (and d!540687 res!797282) b!1770235))

(declare-fun m!2188925 () Bool)

(assert (=> d!540687 m!2188925))

(declare-fun m!2188927 () Bool)

(assert (=> b!1770235 m!2188927))

(assert (=> b!1769449 d!540687))

(declare-fun b!1770240 () Bool)

(declare-fun e!1132826 () Bool)

(declare-fun tp!502068 () Bool)

(assert (=> b!1770240 (= e!1132826 (and tp_is_empty!7869 tp!502068))))

(assert (=> b!1769466 (= tp!501999 e!1132826)))

(assert (= (and b!1769466 ((_ is Cons!19490) (originalCharacters!4299 token!523))) b!1770240))

(declare-fun tp!502076 () Bool)

(declare-fun b!1770249 () Bool)

(declare-fun tp!502077 () Bool)

(declare-fun e!1132832 () Bool)

(assert (=> b!1770249 (= e!1132832 (and (inv!25332 (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))))) tp!502077 (inv!25332 (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))))) tp!502076))))

(declare-fun b!1770251 () Bool)

(declare-fun e!1132831 () Bool)

(declare-fun tp!502075 () Bool)

(assert (=> b!1770251 (= e!1132831 tp!502075)))

(declare-fun b!1770250 () Bool)

(declare-fun inv!25339 (IArray!12971) Bool)

(assert (=> b!1770250 (= e!1132832 (and (inv!25339 (xs!9359 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))))) e!1132831))))

(assert (=> b!1769489 (= tp!502009 (and (inv!25332 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))) e!1132832))))

(assert (= (and b!1769489 ((_ is Node!6483) (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))))) b!1770249))

(assert (= b!1770250 b!1770251))

(assert (= (and b!1769489 ((_ is Leaf!9446) (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))))) b!1770250))

(declare-fun m!2188929 () Bool)

(assert (=> b!1770249 m!2188929))

(declare-fun m!2188931 () Bool)

(assert (=> b!1770249 m!2188931))

(declare-fun m!2188933 () Bool)

(assert (=> b!1770250 m!2188933))

(assert (=> b!1769489 m!2187791))

(declare-fun e!1132834 () Bool)

(declare-fun b!1770252 () Bool)

(declare-fun tp!502079 () Bool)

(declare-fun tp!502080 () Bool)

(assert (=> b!1770252 (= e!1132834 (and (inv!25332 (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099)))))) tp!502080 (inv!25332 (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099)))))) tp!502079))))

(declare-fun b!1770254 () Bool)

(declare-fun e!1132833 () Bool)

(declare-fun tp!502078 () Bool)

(assert (=> b!1770254 (= e!1132833 tp!502078)))

(declare-fun b!1770253 () Bool)

(assert (=> b!1770253 (= e!1132834 (and (inv!25339 (xs!9359 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099)))))) e!1132833))))

(assert (=> b!1769492 (= tp!502010 (and (inv!25332 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099))))) e!1132834))))

(assert (= (and b!1769492 ((_ is Node!6483) (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099)))))) b!1770252))

(assert (= b!1770253 b!1770254))

(assert (= (and b!1769492 ((_ is Leaf!9446) (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099)))))) b!1770253))

(declare-fun m!2188935 () Bool)

(assert (=> b!1770252 m!2188935))

(declare-fun m!2188937 () Bool)

(assert (=> b!1770252 m!2188937))

(declare-fun m!2188939 () Bool)

(assert (=> b!1770253 m!2188939))

(assert (=> b!1769492 m!2187797))

(declare-fun b!1770265 () Bool)

(declare-fun b_free!49015 () Bool)

(declare-fun b_next!49719 () Bool)

(assert (=> b!1770265 (= b_free!49015 (not b_next!49719))))

(declare-fun t!165220 () Bool)

(declare-fun tb!107073 () Bool)

(assert (=> (and b!1770265 (= (toValue!5008 (transformation!3485 (h!24892 (t!165170 rules!3447)))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) t!165220) tb!107073))

(declare-fun result!128830 () Bool)

(assert (= result!128830 result!128754))

(assert (=> b!1769461 t!165220))

(assert (=> d!540683 t!165220))

(assert (=> d!540639 t!165220))

(declare-fun t!165222 () Bool)

(declare-fun tb!107075 () Bool)

(assert (=> (and b!1770265 (= (toValue!5008 (transformation!3485 (h!24892 (t!165170 rules!3447)))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) t!165222) tb!107075))

(declare-fun result!128832 () Bool)

(assert (= result!128832 result!128818))

(assert (=> d!540683 t!165222))

(declare-fun t!165224 () Bool)

(declare-fun tb!107077 () Bool)

(assert (=> (and b!1770265 (= (toValue!5008 (transformation!3485 (h!24892 (t!165170 rules!3447)))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) t!165224) tb!107077))

(declare-fun result!128834 () Bool)

(assert (= result!128834 result!128786))

(assert (=> d!540595 t!165224))

(assert (=> d!540675 t!165220))

(declare-fun tp!502090 () Bool)

(declare-fun b_and!134585 () Bool)

(assert (=> b!1770265 (= tp!502090 (and (=> t!165224 result!128834) (=> t!165222 result!128832) (=> t!165220 result!128830) b_and!134585))))

(declare-fun b_free!49017 () Bool)

(declare-fun b_next!49721 () Bool)

(assert (=> b!1770265 (= b_free!49017 (not b_next!49721))))

(declare-fun tb!107079 () Bool)

(declare-fun t!165226 () Bool)

(assert (=> (and b!1770265 (= (toChars!4867 (transformation!3485 (h!24892 (t!165170 rules!3447)))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) t!165226) tb!107079))

(declare-fun result!128836 () Bool)

(assert (= result!128836 result!128746))

(assert (=> b!1769461 t!165226))

(declare-fun t!165228 () Bool)

(declare-fun tb!107081 () Bool)

(assert (=> (and b!1770265 (= (toChars!4867 (transformation!3485 (h!24892 (t!165170 rules!3447)))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) t!165228) tb!107081))

(declare-fun result!128838 () Bool)

(assert (= result!128838 result!128762))

(assert (=> d!540541 t!165228))

(assert (=> b!1769468 t!165228))

(declare-fun tb!107083 () Bool)

(declare-fun t!165230 () Bool)

(assert (=> (and b!1770265 (= (toChars!4867 (transformation!3485 (h!24892 (t!165170 rules!3447)))) (toChars!4867 (transformation!3485 (rule!5527 token!523)))) t!165230) tb!107083))

(declare-fun result!128840 () Bool)

(assert (= result!128840 result!128780))

(assert (=> b!1769805 t!165230))

(assert (=> d!540639 t!165226))

(assert (=> d!540657 t!165230))

(declare-fun tp!502092 () Bool)

(declare-fun b_and!134587 () Bool)

(assert (=> b!1770265 (= tp!502092 (and (=> t!165228 result!128838) (=> t!165230 result!128840) (=> t!165226 result!128836) b_and!134587))))

(declare-fun e!1132845 () Bool)

(assert (=> b!1770265 (= e!1132845 (and tp!502090 tp!502092))))

(declare-fun tp!502091 () Bool)

(declare-fun b!1770264 () Bool)

(declare-fun e!1132844 () Bool)

(assert (=> b!1770264 (= e!1132844 (and tp!502091 (inv!25325 (tag!3865 (h!24892 (t!165170 rules!3447)))) (inv!25330 (transformation!3485 (h!24892 (t!165170 rules!3447)))) e!1132845))))

(declare-fun b!1770263 () Bool)

(declare-fun e!1132846 () Bool)

(declare-fun tp!502089 () Bool)

(assert (=> b!1770263 (= e!1132846 (and e!1132844 tp!502089))))

(assert (=> b!1769457 (= tp!502000 e!1132846)))

(assert (= b!1770264 b!1770265))

(assert (= b!1770263 b!1770264))

(assert (= (and b!1769457 ((_ is Cons!19491) (t!165170 rules!3447))) b!1770263))

(declare-fun m!2188941 () Bool)

(assert (=> b!1770264 m!2188941))

(declare-fun m!2188943 () Bool)

(assert (=> b!1770264 m!2188943))

(declare-fun b!1770279 () Bool)

(declare-fun e!1132849 () Bool)

(declare-fun tp!502103 () Bool)

(declare-fun tp!502107 () Bool)

(assert (=> b!1770279 (= e!1132849 (and tp!502103 tp!502107))))

(declare-fun b!1770278 () Bool)

(declare-fun tp!502106 () Bool)

(assert (=> b!1770278 (= e!1132849 tp!502106)))

(assert (=> b!1769452 (= tp!501997 e!1132849)))

(declare-fun b!1770277 () Bool)

(declare-fun tp!502105 () Bool)

(declare-fun tp!502104 () Bool)

(assert (=> b!1770277 (= e!1132849 (and tp!502105 tp!502104))))

(declare-fun b!1770276 () Bool)

(assert (=> b!1770276 (= e!1132849 tp_is_empty!7869)))

(assert (= (and b!1769452 ((_ is ElementMatch!4813) (regex!3485 rule!422))) b!1770276))

(assert (= (and b!1769452 ((_ is Concat!8389) (regex!3485 rule!422))) b!1770277))

(assert (= (and b!1769452 ((_ is Star!4813) (regex!3485 rule!422))) b!1770278))

(assert (= (and b!1769452 ((_ is Union!4813) (regex!3485 rule!422))) b!1770279))

(declare-fun b!1770283 () Bool)

(declare-fun e!1132850 () Bool)

(declare-fun tp!502108 () Bool)

(declare-fun tp!502112 () Bool)

(assert (=> b!1770283 (= e!1132850 (and tp!502108 tp!502112))))

(declare-fun b!1770282 () Bool)

(declare-fun tp!502111 () Bool)

(assert (=> b!1770282 (= e!1132850 tp!502111)))

(assert (=> b!1769453 (= tp!502002 e!1132850)))

(declare-fun b!1770281 () Bool)

(declare-fun tp!502110 () Bool)

(declare-fun tp!502109 () Bool)

(assert (=> b!1770281 (= e!1132850 (and tp!502110 tp!502109))))

(declare-fun b!1770280 () Bool)

(assert (=> b!1770280 (= e!1132850 tp_is_empty!7869)))

(assert (= (and b!1769453 ((_ is ElementMatch!4813) (regex!3485 (rule!5527 token!523)))) b!1770280))

(assert (= (and b!1769453 ((_ is Concat!8389) (regex!3485 (rule!5527 token!523)))) b!1770281))

(assert (= (and b!1769453 ((_ is Star!4813) (regex!3485 (rule!5527 token!523)))) b!1770282))

(assert (= (and b!1769453 ((_ is Union!4813) (regex!3485 (rule!5527 token!523)))) b!1770283))

(declare-fun b!1770284 () Bool)

(declare-fun e!1132851 () Bool)

(declare-fun tp!502113 () Bool)

(assert (=> b!1770284 (= e!1132851 (and tp_is_empty!7869 tp!502113))))

(assert (=> b!1769465 (= tp!502004 e!1132851)))

(assert (= (and b!1769465 ((_ is Cons!19490) (t!165169 suffix!1421))) b!1770284))

(declare-fun b!1770288 () Bool)

(declare-fun e!1132852 () Bool)

(declare-fun tp!502114 () Bool)

(declare-fun tp!502118 () Bool)

(assert (=> b!1770288 (= e!1132852 (and tp!502114 tp!502118))))

(declare-fun b!1770287 () Bool)

(declare-fun tp!502117 () Bool)

(assert (=> b!1770287 (= e!1132852 tp!502117)))

(assert (=> b!1769449 (= tp!502001 e!1132852)))

(declare-fun b!1770286 () Bool)

(declare-fun tp!502116 () Bool)

(declare-fun tp!502115 () Bool)

(assert (=> b!1770286 (= e!1132852 (and tp!502116 tp!502115))))

(declare-fun b!1770285 () Bool)

(assert (=> b!1770285 (= e!1132852 tp_is_empty!7869)))

(assert (= (and b!1769449 ((_ is ElementMatch!4813) (regex!3485 (h!24892 rules!3447)))) b!1770285))

(assert (= (and b!1769449 ((_ is Concat!8389) (regex!3485 (h!24892 rules!3447)))) b!1770286))

(assert (= (and b!1769449 ((_ is Star!4813) (regex!3485 (h!24892 rules!3447)))) b!1770287))

(assert (= (and b!1769449 ((_ is Union!4813) (regex!3485 (h!24892 rules!3447)))) b!1770288))

(declare-fun b_lambda!57627 () Bool)

(assert (= b_lambda!57619 (or (and b!1769445 b_free!49001) (and b!1769469 b_free!49005 (= (toChars!4867 (transformation!3485 (h!24892 rules!3447))) (toChars!4867 (transformation!3485 (rule!5527 token!523))))) (and b!1769458 b_free!49009 (= (toChars!4867 (transformation!3485 rule!422)) (toChars!4867 (transformation!3485 (rule!5527 token!523))))) (and b!1770265 b_free!49017 (= (toChars!4867 (transformation!3485 (h!24892 (t!165170 rules!3447)))) (toChars!4867 (transformation!3485 (rule!5527 token!523))))) b_lambda!57627)))

(declare-fun b_lambda!57629 () Bool)

(assert (= b_lambda!57575 (or (and b!1769445 b_free!49001 (= (toChars!4867 (transformation!3485 (rule!5527 token!523))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (and b!1769469 b_free!49005 (= (toChars!4867 (transformation!3485 (h!24892 rules!3447))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (and b!1769458 b_free!49009 (= (toChars!4867 (transformation!3485 rule!422)) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (and b!1770265 b_free!49017 (= (toChars!4867 (transformation!3485 (h!24892 (t!165170 rules!3447)))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) b_lambda!57629)))

(declare-fun b_lambda!57631 () Bool)

(assert (= b_lambda!57589 (or (and b!1769445 b_free!49001) (and b!1769469 b_free!49005 (= (toChars!4867 (transformation!3485 (h!24892 rules!3447))) (toChars!4867 (transformation!3485 (rule!5527 token!523))))) (and b!1769458 b_free!49009 (= (toChars!4867 (transformation!3485 rule!422)) (toChars!4867 (transformation!3485 (rule!5527 token!523))))) (and b!1770265 b_free!49017 (= (toChars!4867 (transformation!3485 (h!24892 (t!165170 rules!3447)))) (toChars!4867 (transformation!3485 (rule!5527 token!523))))) b_lambda!57631)))

(declare-fun b_lambda!57633 () Bool)

(assert (= b_lambda!57577 (or (and b!1769445 b_free!48999 (= (toValue!5008 (transformation!3485 (rule!5527 token!523))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (and b!1769469 b_free!49003 (= (toValue!5008 (transformation!3485 (h!24892 rules!3447))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (and b!1769458 b_free!49007 (= (toValue!5008 (transformation!3485 rule!422)) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (and b!1770265 b_free!49015 (= (toValue!5008 (transformation!3485 (h!24892 (t!165170 rules!3447)))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) b_lambda!57633)))

(declare-fun b_lambda!57635 () Bool)

(assert (= b_lambda!57579 (or (and b!1769445 b_free!49001 (= (toChars!4867 (transformation!3485 (rule!5527 token!523))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (and b!1769469 b_free!49005 (= (toChars!4867 (transformation!3485 (h!24892 rules!3447))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (and b!1769458 b_free!49009 (= (toChars!4867 (transformation!3485 rule!422)) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (and b!1770265 b_free!49017 (= (toChars!4867 (transformation!3485 (h!24892 (t!165170 rules!3447)))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) b_lambda!57635)))

(check-sat (not bm!110929) (not b!1770250) (not b!1770235) (not b_lambda!57623) (not b!1769827) (not b!1769536) (not b!1769535) (not b!1769807) (not b!1769949) (not b!1769864) (not b_next!49713) (not b!1769952) (not b!1769975) (not b_next!49703) b_and!134583 (not b!1769944) (not b_lambda!57627) (not b!1769842) b_and!134579 (not d!540549) b_and!134565 (not b!1769539) (not tb!107037) (not d!540557) (not b_lambda!57633) (not b!1770197) (not d!540657) (not b!1770279) (not d!540517) (not b!1769776) (not b!1770227) (not b_lambda!57621) (not b!1770186) (not d!540411) (not bm!110930) (not d!540659) (not b!1769963) (not b!1769867) (not b!1769705) b_and!134581 (not b!1769970) (not d!540651) (not b!1770287) (not d!540609) (not b!1770158) (not b!1770196) (not tb!107043) (not b_next!49721) (not d!540673) (not d!540683) (not b!1770155) (not b!1770217) (not d!540445) (not b!1770183) (not b!1769627) (not b!1769932) (not d!540687) (not b!1769792) (not b!1769870) (not b!1769724) (not b!1770198) (not b!1769620) (not d!540653) (not b!1769967) (not b!1769632) (not b!1769844) (not b!1769858) (not b!1769974) (not d!540639) (not b!1770277) (not b!1769727) (not d!540655) (not d!540379) (not b!1770200) (not d!540643) (not d!540575) (not d!540561) (not d!540483) (not b!1770214) (not b!1769859) (not b!1769619) (not b!1770163) (not b!1769843) (not b!1769774) (not b_lambda!57615) (not d!540455) (not b!1769805) (not d!540387) (not b!1769933) (not b!1770216) (not d!540553) (not b!1769942) (not b!1770253) (not d!540611) (not b!1769826) (not b!1770222) (not b!1770156) (not d!540541) (not b!1769489) (not d!540519) (not b!1769725) (not b!1769631) (not b!1769863) (not b!1770219) (not b!1769860) (not b!1769957) (not b!1770046) (not b!1769541) (not b!1769537) (not d!540525) (not b_lambda!57631) (not b!1769829) (not d!540527) (not b!1769956) (not d!540545) (not b!1769728) (not b!1769871) (not d!540547) (not d!540507) (not b_next!49709) (not b_next!49719) (not b!1770162) (not d!540635) (not b!1769989) (not b_lambda!57629) (not b!1769830) (not b_lambda!57617) (not d!540565) (not d!540413) (not b!1770251) (not b!1770288) (not b!1770195) (not b!1770201) (not b!1769834) (not b_lambda!57635) (not b!1770224) (not b!1770178) (not b_next!49711) (not b!1770282) (not b!1770283) (not d!540681) (not d!540671) (not b!1770284) (not b_lambda!57591) (not b_lambda!57595) (not bm!110931) (not b!1769624) (not b!1770281) (not d!540407) (not b!1769831) (not b!1769778) (not d!540645) (not tb!107067) (not d!540569) (not b!1769806) (not b!1770157) (not b!1769917) (not b!1770240) (not b_next!49705) (not b!1770202) (not b_next!49707) (not d!540495) (not b!1769540) (not d!540521) (not b!1769900) (not d!540679) (not b!1770213) (not b!1770199) (not b!1769916) b_and!134563 (not b!1770278) (not d!540613) (not d!540641) (not b!1770169) (not b!1769899) (not bm!110936) (not b!1769492) (not bm!110921) (not b!1770193) (not b!1770254) (not d!540677) tp_is_empty!7869 (not b!1770161) (not b!1769793) (not b!1769551) (not d!540511) (not b!1770249) (not b!1769832) (not b_lambda!57625) (not b!1770209) (not d!540461) (not b!1770206) (not b!1770192) (not d!540647) (not d!540637) b_and!134561 (not d!540551) (not b!1770179) (not d!540425) (not b!1769898) (not b!1770263) (not b!1770044) (not b!1770190) (not d!540633) (not b!1770252) (not b!1769919) (not bm!110935) (not b!1770160) (not b!1769552) (not b!1769866) (not b!1769707) (not d!540523) (not b!1769833) b_and!134585 (not b!1770264) (not b!1769962) (not b!1770177) (not b!1770221) (not b!1769862) (not b!1770191) b_and!134587 (not b!1770286) (not bm!110937) (not b!1769945) (not d!540497))
(check-sat (not b_next!49713) b_and!134565 b_and!134581 (not b_next!49721) (not b_next!49711) b_and!134563 b_and!134561 b_and!134585 b_and!134587 (not b_next!49703) b_and!134583 b_and!134579 (not b_next!49709) (not b_next!49719) (not b_next!49705) (not b_next!49707))
(get-model)

(declare-fun d!540693 () Bool)

(assert (=> d!540693 (= (isEmpty!12304 (originalCharacters!4299 token!523)) ((_ is Nil!19490) (originalCharacters!4299 token!523)))))

(assert (=> d!540497 d!540693))

(declare-fun b!1770331 () Bool)

(declare-fun e!1132876 () List!19560)

(assert (=> b!1770331 (= e!1132876 (_2!10949 (get!5952 lt!685214)))))

(declare-fun b!1770332 () Bool)

(assert (=> b!1770332 (= e!1132876 (Cons!19490 (h!24891 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685214))))) (++!5309 (t!165169 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685214))))) (_2!10949 (get!5952 lt!685214)))))))

(declare-fun d!540695 () Bool)

(declare-fun e!1132877 () Bool)

(assert (=> d!540695 e!1132877))

(declare-fun res!797296 () Bool)

(assert (=> d!540695 (=> (not res!797296) (not e!1132877))))

(declare-fun lt!685508 () List!19560)

(assert (=> d!540695 (= res!797296 (= (content!2826 lt!685508) ((_ map or) (content!2826 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685214))))) (content!2826 (_2!10949 (get!5952 lt!685214))))))))

(assert (=> d!540695 (= lt!685508 e!1132876)))

(declare-fun c!288237 () Bool)

(assert (=> d!540695 (= c!288237 ((_ is Nil!19490) (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685214))))))))

(assert (=> d!540695 (= (++!5309 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685214)))) (_2!10949 (get!5952 lt!685214))) lt!685508)))

(declare-fun b!1770334 () Bool)

(assert (=> b!1770334 (= e!1132877 (or (not (= (_2!10949 (get!5952 lt!685214)) Nil!19490)) (= lt!685508 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685214)))))))))

(declare-fun b!1770333 () Bool)

(declare-fun res!797295 () Bool)

(assert (=> b!1770333 (=> (not res!797295) (not e!1132877))))

(assert (=> b!1770333 (= res!797295 (= (size!15479 lt!685508) (+ (size!15479 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685214))))) (size!15479 (_2!10949 (get!5952 lt!685214))))))))

(assert (= (and d!540695 c!288237) b!1770331))

(assert (= (and d!540695 (not c!288237)) b!1770332))

(assert (= (and d!540695 res!797296) b!1770333))

(assert (= (and b!1770333 res!797295) b!1770334))

(declare-fun m!2188955 () Bool)

(assert (=> b!1770332 m!2188955))

(declare-fun m!2188957 () Bool)

(assert (=> d!540695 m!2188957))

(assert (=> d!540695 m!2188311))

(declare-fun m!2188959 () Bool)

(assert (=> d!540695 m!2188959))

(declare-fun m!2188961 () Bool)

(assert (=> d!540695 m!2188961))

(declare-fun m!2188963 () Bool)

(assert (=> b!1770333 m!2188963))

(assert (=> b!1770333 m!2188311))

(declare-fun m!2188965 () Bool)

(assert (=> b!1770333 m!2188965))

(assert (=> b!1770333 m!2188307))

(assert (=> b!1769830 d!540695))

(declare-fun d!540697 () Bool)

(assert (=> d!540697 (= (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685214)))) (list!7917 (c!288085 (charsOf!2134 (_1!10949 (get!5952 lt!685214))))))))

(declare-fun bs!404568 () Bool)

(assert (= bs!404568 d!540697))

(declare-fun m!2188967 () Bool)

(assert (=> bs!404568 m!2188967))

(assert (=> b!1769830 d!540697))

(declare-fun d!540699 () Bool)

(declare-fun lt!685537 () BalanceConc!12910)

(assert (=> d!540699 (= (list!7915 lt!685537) (originalCharacters!4299 (_1!10949 (get!5952 lt!685214))))))

(assert (=> d!540699 (= lt!685537 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685214))))) (value!108995 (_1!10949 (get!5952 lt!685214)))))))

(assert (=> d!540699 (= (charsOf!2134 (_1!10949 (get!5952 lt!685214))) lt!685537)))

(declare-fun b_lambda!57637 () Bool)

(assert (=> (not b_lambda!57637) (not d!540699)))

(declare-fun t!165238 () Bool)

(declare-fun tb!107085 () Bool)

(assert (=> (and b!1769445 (= (toChars!4867 (transformation!3485 (rule!5527 token!523))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685214)))))) t!165238) tb!107085))

(declare-fun b!1770349 () Bool)

(declare-fun e!1132886 () Bool)

(declare-fun tp!502119 () Bool)

(assert (=> b!1770349 (= e!1132886 (and (inv!25332 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685214))))) (value!108995 (_1!10949 (get!5952 lt!685214)))))) tp!502119))))

(declare-fun result!128844 () Bool)

(assert (=> tb!107085 (= result!128844 (and (inv!25333 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685214))))) (value!108995 (_1!10949 (get!5952 lt!685214))))) e!1132886))))

(assert (= tb!107085 b!1770349))

(declare-fun m!2188969 () Bool)

(assert (=> b!1770349 m!2188969))

(declare-fun m!2188971 () Bool)

(assert (=> tb!107085 m!2188971))

(assert (=> d!540699 t!165238))

(declare-fun b_and!134589 () Bool)

(assert (= b_and!134561 (and (=> t!165238 result!128844) b_and!134589)))

(declare-fun t!165240 () Bool)

(declare-fun tb!107087 () Bool)

(assert (=> (and b!1769469 (= (toChars!4867 (transformation!3485 (h!24892 rules!3447))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685214)))))) t!165240) tb!107087))

(declare-fun result!128846 () Bool)

(assert (= result!128846 result!128844))

(assert (=> d!540699 t!165240))

(declare-fun b_and!134591 () Bool)

(assert (= b_and!134563 (and (=> t!165240 result!128846) b_and!134591)))

(declare-fun tb!107089 () Bool)

(declare-fun t!165242 () Bool)

(assert (=> (and b!1769458 (= (toChars!4867 (transformation!3485 rule!422)) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685214)))))) t!165242) tb!107089))

(declare-fun result!128848 () Bool)

(assert (= result!128848 result!128844))

(assert (=> d!540699 t!165242))

(declare-fun b_and!134593 () Bool)

(assert (= b_and!134565 (and (=> t!165242 result!128848) b_and!134593)))

(declare-fun t!165244 () Bool)

(declare-fun tb!107091 () Bool)

(assert (=> (and b!1770265 (= (toChars!4867 (transformation!3485 (h!24892 (t!165170 rules!3447)))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685214)))))) t!165244) tb!107091))

(declare-fun result!128850 () Bool)

(assert (= result!128850 result!128844))

(assert (=> d!540699 t!165244))

(declare-fun b_and!134595 () Bool)

(assert (= b_and!134587 (and (=> t!165244 result!128850) b_and!134595)))

(declare-fun m!2188973 () Bool)

(assert (=> d!540699 m!2188973))

(declare-fun m!2188975 () Bool)

(assert (=> d!540699 m!2188975))

(assert (=> b!1769830 d!540699))

(declare-fun d!540701 () Bool)

(assert (=> d!540701 (= (get!5952 lt!685214) (v!25466 lt!685214))))

(assert (=> b!1769830 d!540701))

(declare-fun b!1770352 () Bool)

(declare-fun e!1132888 () Bool)

(assert (=> b!1770352 (= e!1132888 (isPrefix!1725 (tail!2649 lt!685285) (tail!2649 (++!5309 lt!685285 lt!685291))))))

(declare-fun d!540703 () Bool)

(declare-fun e!1132889 () Bool)

(assert (=> d!540703 e!1132889))

(declare-fun res!797302 () Bool)

(assert (=> d!540703 (=> res!797302 e!1132889)))

(declare-fun lt!685538 () Bool)

(assert (=> d!540703 (= res!797302 (not lt!685538))))

(declare-fun e!1132887 () Bool)

(assert (=> d!540703 (= lt!685538 e!1132887)))

(declare-fun res!797301 () Bool)

(assert (=> d!540703 (=> res!797301 e!1132887)))

(assert (=> d!540703 (= res!797301 ((_ is Nil!19490) lt!685285))))

(assert (=> d!540703 (= (isPrefix!1725 lt!685285 (++!5309 lt!685285 lt!685291)) lt!685538)))

(declare-fun b!1770353 () Bool)

(assert (=> b!1770353 (= e!1132889 (>= (size!15479 (++!5309 lt!685285 lt!685291)) (size!15479 lt!685285)))))

(declare-fun b!1770350 () Bool)

(assert (=> b!1770350 (= e!1132887 e!1132888)))

(declare-fun res!797300 () Bool)

(assert (=> b!1770350 (=> (not res!797300) (not e!1132888))))

(assert (=> b!1770350 (= res!797300 (not ((_ is Nil!19490) (++!5309 lt!685285 lt!685291))))))

(declare-fun b!1770351 () Bool)

(declare-fun res!797299 () Bool)

(assert (=> b!1770351 (=> (not res!797299) (not e!1132888))))

(assert (=> b!1770351 (= res!797299 (= (head!4114 lt!685285) (head!4114 (++!5309 lt!685285 lt!685291))))))

(assert (= (and d!540703 (not res!797301)) b!1770350))

(assert (= (and b!1770350 res!797300) b!1770351))

(assert (= (and b!1770351 res!797299) b!1770352))

(assert (= (and d!540703 (not res!797302)) b!1770353))

(declare-fun m!2188997 () Bool)

(assert (=> b!1770352 m!2188997))

(assert (=> b!1770352 m!2188445))

(declare-fun m!2189001 () Bool)

(assert (=> b!1770352 m!2189001))

(assert (=> b!1770352 m!2188997))

(assert (=> b!1770352 m!2189001))

(declare-fun m!2189007 () Bool)

(assert (=> b!1770352 m!2189007))

(assert (=> b!1770353 m!2188445))

(declare-fun m!2189009 () Bool)

(assert (=> b!1770353 m!2189009))

(declare-fun m!2189013 () Bool)

(assert (=> b!1770353 m!2189013))

(declare-fun m!2189017 () Bool)

(assert (=> b!1770351 m!2189017))

(assert (=> b!1770351 m!2188445))

(declare-fun m!2189019 () Bool)

(assert (=> b!1770351 m!2189019))

(assert (=> d!540527 d!540703))

(declare-fun b!1770354 () Bool)

(declare-fun res!797308 () Bool)

(declare-fun e!1132892 () Bool)

(assert (=> b!1770354 (=> (not res!797308) (not e!1132892))))

(declare-fun lt!685543 () Option!3992)

(assert (=> b!1770354 (= res!797308 (< (size!15479 (_2!10949 (get!5952 lt!685543))) (size!15479 (++!5309 lt!685116 suffix!1421))))))

(declare-fun bm!110963 () Bool)

(declare-fun call!110968 () Option!3992)

(assert (=> bm!110963 (= call!110968 (maxPrefixOneRule!1037 thiss!24550 (h!24892 rules!3447) (++!5309 lt!685116 suffix!1421)))))

(declare-fun b!1770356 () Bool)

(declare-fun e!1132890 () Option!3992)

(assert (=> b!1770356 (= e!1132890 call!110968)))

(declare-fun b!1770357 () Bool)

(declare-fun res!797304 () Bool)

(assert (=> b!1770357 (=> (not res!797304) (not e!1132892))))

(assert (=> b!1770357 (= res!797304 (= (value!108995 (_1!10949 (get!5952 lt!685543))) (apply!5285 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685543)))) (seqFromList!2454 (originalCharacters!4299 (_1!10949 (get!5952 lt!685543)))))))))

(declare-fun b!1770358 () Bool)

(declare-fun res!797306 () Bool)

(assert (=> b!1770358 (=> (not res!797306) (not e!1132892))))

(assert (=> b!1770358 (= res!797306 (= (++!5309 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685543)))) (_2!10949 (get!5952 lt!685543))) (++!5309 lt!685116 suffix!1421)))))

(declare-fun b!1770355 () Bool)

(declare-fun res!797303 () Bool)

(assert (=> b!1770355 (=> (not res!797303) (not e!1132892))))

(assert (=> b!1770355 (= res!797303 (= (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685543)))) (originalCharacters!4299 (_1!10949 (get!5952 lt!685543)))))))

(declare-fun d!540705 () Bool)

(declare-fun e!1132891 () Bool)

(assert (=> d!540705 e!1132891))

(declare-fun res!797305 () Bool)

(assert (=> d!540705 (=> res!797305 e!1132891)))

(assert (=> d!540705 (= res!797305 (isEmpty!12307 lt!685543))))

(assert (=> d!540705 (= lt!685543 e!1132890)))

(declare-fun c!288244 () Bool)

(assert (=> d!540705 (= c!288244 (and ((_ is Cons!19491) rules!3447) ((_ is Nil!19491) (t!165170 rules!3447))))))

(declare-fun lt!685541 () Unit!33686)

(declare-fun lt!685540 () Unit!33686)

(assert (=> d!540705 (= lt!685541 lt!685540)))

(assert (=> d!540705 (isPrefix!1725 (++!5309 lt!685116 suffix!1421) (++!5309 lt!685116 suffix!1421))))

(assert (=> d!540705 (= lt!685540 (lemmaIsPrefixRefl!1142 (++!5309 lt!685116 suffix!1421) (++!5309 lt!685116 suffix!1421)))))

(assert (=> d!540705 (rulesValidInductive!1180 thiss!24550 rules!3447)))

(assert (=> d!540705 (= (maxPrefix!1668 thiss!24550 rules!3447 (++!5309 lt!685116 suffix!1421)) lt!685543)))

(declare-fun b!1770359 () Bool)

(assert (=> b!1770359 (= e!1132891 e!1132892)))

(declare-fun res!797307 () Bool)

(assert (=> b!1770359 (=> (not res!797307) (not e!1132892))))

(assert (=> b!1770359 (= res!797307 (isDefined!3335 lt!685543))))

(declare-fun b!1770360 () Bool)

(declare-fun lt!685539 () Option!3992)

(declare-fun lt!685542 () Option!3992)

(assert (=> b!1770360 (= e!1132890 (ite (and ((_ is None!3991) lt!685539) ((_ is None!3991) lt!685542)) None!3991 (ite ((_ is None!3991) lt!685542) lt!685539 (ite ((_ is None!3991) lt!685539) lt!685542 (ite (>= (size!15478 (_1!10949 (v!25466 lt!685539))) (size!15478 (_1!10949 (v!25466 lt!685542)))) lt!685539 lt!685542)))))))

(assert (=> b!1770360 (= lt!685539 call!110968)))

(assert (=> b!1770360 (= lt!685542 (maxPrefix!1668 thiss!24550 (t!165170 rules!3447) (++!5309 lt!685116 suffix!1421)))))

(declare-fun b!1770361 () Bool)

(declare-fun res!797309 () Bool)

(assert (=> b!1770361 (=> (not res!797309) (not e!1132892))))

(assert (=> b!1770361 (= res!797309 (matchR!2286 (regex!3485 (rule!5527 (_1!10949 (get!5952 lt!685543)))) (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685543))))))))

(declare-fun b!1770362 () Bool)

(assert (=> b!1770362 (= e!1132892 (contains!3515 rules!3447 (rule!5527 (_1!10949 (get!5952 lt!685543)))))))

(assert (= (and d!540705 c!288244) b!1770356))

(assert (= (and d!540705 (not c!288244)) b!1770360))

(assert (= (or b!1770356 b!1770360) bm!110963))

(assert (= (and d!540705 (not res!797305)) b!1770359))

(assert (= (and b!1770359 res!797307) b!1770355))

(assert (= (and b!1770355 res!797303) b!1770354))

(assert (= (and b!1770354 res!797308) b!1770358))

(assert (= (and b!1770358 res!797306) b!1770357))

(assert (= (and b!1770357 res!797304) b!1770361))

(assert (= (and b!1770361 res!797309) b!1770362))

(assert (=> bm!110963 m!2187857))

(declare-fun m!2189039 () Bool)

(assert (=> bm!110963 m!2189039))

(declare-fun m!2189041 () Bool)

(assert (=> b!1770357 m!2189041))

(declare-fun m!2189043 () Bool)

(assert (=> b!1770357 m!2189043))

(assert (=> b!1770357 m!2189043))

(declare-fun m!2189045 () Bool)

(assert (=> b!1770357 m!2189045))

(assert (=> b!1770354 m!2189041))

(declare-fun m!2189047 () Bool)

(assert (=> b!1770354 m!2189047))

(assert (=> b!1770354 m!2187857))

(declare-fun m!2189049 () Bool)

(assert (=> b!1770354 m!2189049))

(assert (=> b!1770358 m!2189041))

(declare-fun m!2189051 () Bool)

(assert (=> b!1770358 m!2189051))

(assert (=> b!1770358 m!2189051))

(declare-fun m!2189053 () Bool)

(assert (=> b!1770358 m!2189053))

(assert (=> b!1770358 m!2189053))

(declare-fun m!2189055 () Bool)

(assert (=> b!1770358 m!2189055))

(declare-fun m!2189057 () Bool)

(assert (=> b!1770359 m!2189057))

(assert (=> b!1770355 m!2189041))

(assert (=> b!1770355 m!2189051))

(assert (=> b!1770355 m!2189051))

(assert (=> b!1770355 m!2189053))

(declare-fun m!2189059 () Bool)

(assert (=> d!540705 m!2189059))

(assert (=> d!540705 m!2187857))

(assert (=> d!540705 m!2187857))

(declare-fun m!2189061 () Bool)

(assert (=> d!540705 m!2189061))

(assert (=> d!540705 m!2187857))

(assert (=> d!540705 m!2187857))

(declare-fun m!2189063 () Bool)

(assert (=> d!540705 m!2189063))

(assert (=> d!540705 m!2188323))

(assert (=> b!1770362 m!2189041))

(declare-fun m!2189065 () Bool)

(assert (=> b!1770362 m!2189065))

(assert (=> b!1770361 m!2189041))

(assert (=> b!1770361 m!2189051))

(assert (=> b!1770361 m!2189051))

(assert (=> b!1770361 m!2189053))

(assert (=> b!1770361 m!2189053))

(declare-fun m!2189071 () Bool)

(assert (=> b!1770361 m!2189071))

(assert (=> b!1770360 m!2187857))

(declare-fun m!2189073 () Bool)

(assert (=> b!1770360 m!2189073))

(assert (=> d!540527 d!540705))

(declare-fun e!1132906 () Bool)

(declare-fun b!1770375 () Bool)

(assert (=> b!1770375 (= e!1132906 (isPrefix!1725 (tail!2649 lt!685293) (tail!2649 (++!5309 lt!685116 suffix!1421))))))

(declare-fun d!540715 () Bool)

(declare-fun e!1132907 () Bool)

(assert (=> d!540715 e!1132907))

(declare-fun res!797321 () Bool)

(assert (=> d!540715 (=> res!797321 e!1132907)))

(declare-fun lt!685547 () Bool)

(assert (=> d!540715 (= res!797321 (not lt!685547))))

(declare-fun e!1132905 () Bool)

(assert (=> d!540715 (= lt!685547 e!1132905)))

(declare-fun res!797320 () Bool)

(assert (=> d!540715 (=> res!797320 e!1132905)))

(assert (=> d!540715 (= res!797320 ((_ is Nil!19490) lt!685293))))

(assert (=> d!540715 (= (isPrefix!1725 lt!685293 (++!5309 lt!685116 suffix!1421)) lt!685547)))

(declare-fun b!1770376 () Bool)

(assert (=> b!1770376 (= e!1132907 (>= (size!15479 (++!5309 lt!685116 suffix!1421)) (size!15479 lt!685293)))))

(declare-fun b!1770373 () Bool)

(assert (=> b!1770373 (= e!1132905 e!1132906)))

(declare-fun res!797319 () Bool)

(assert (=> b!1770373 (=> (not res!797319) (not e!1132906))))

(assert (=> b!1770373 (= res!797319 (not ((_ is Nil!19490) (++!5309 lt!685116 suffix!1421))))))

(declare-fun b!1770374 () Bool)

(declare-fun res!797318 () Bool)

(assert (=> b!1770374 (=> (not res!797318) (not e!1132906))))

(assert (=> b!1770374 (= res!797318 (= (head!4114 lt!685293) (head!4114 (++!5309 lt!685116 suffix!1421))))))

(assert (= (and d!540715 (not res!797320)) b!1770373))

(assert (= (and b!1770373 res!797319) b!1770374))

(assert (= (and b!1770374 res!797318) b!1770375))

(assert (= (and d!540715 (not res!797321)) b!1770376))

(declare-fun m!2189075 () Bool)

(assert (=> b!1770375 m!2189075))

(assert (=> b!1770375 m!2187857))

(declare-fun m!2189077 () Bool)

(assert (=> b!1770375 m!2189077))

(assert (=> b!1770375 m!2189075))

(assert (=> b!1770375 m!2189077))

(declare-fun m!2189079 () Bool)

(assert (=> b!1770375 m!2189079))

(assert (=> b!1770376 m!2187857))

(assert (=> b!1770376 m!2189049))

(declare-fun m!2189081 () Bool)

(assert (=> b!1770376 m!2189081))

(declare-fun m!2189083 () Bool)

(assert (=> b!1770374 m!2189083))

(assert (=> b!1770374 m!2187857))

(declare-fun m!2189085 () Bool)

(assert (=> b!1770374 m!2189085))

(assert (=> d!540527 d!540715))

(declare-fun d!540717 () Bool)

(assert (=> d!540717 (= (head!4115 (list!7918 (_1!10951 (lex!1463 thiss!24550 rules!3447 (seqFromList!2454 lt!685116))))) (h!24896 (list!7918 (_1!10951 (lex!1463 thiss!24550 rules!3447 (seqFromList!2454 lt!685116))))))))

(assert (=> d!540527 d!540717))

(declare-fun d!540719 () Bool)

(assert (=> d!540719 (= (isDefined!3336 (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 lt!685281)))) (not (isEmpty!12308 (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 lt!685281))))))))

(declare-fun bs!404569 () Bool)

(assert (= bs!404569 d!540719))

(assert (=> bs!404569 m!2188447))

(declare-fun m!2189101 () Bool)

(assert (=> bs!404569 m!2189101))

(assert (=> d!540527 d!540719))

(declare-fun d!540721 () Bool)

(declare-fun lt!685548 () BalanceConc!12910)

(assert (=> d!540721 (= (list!7915 lt!685548) (originalCharacters!4299 lt!685281))))

(assert (=> d!540721 (= lt!685548 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 lt!685281))) (value!108995 lt!685281)))))

(assert (=> d!540721 (= (charsOf!2134 lt!685281) lt!685548)))

(declare-fun b_lambda!57639 () Bool)

(assert (=> (not b_lambda!57639) (not d!540721)))

(declare-fun t!165246 () Bool)

(declare-fun tb!107093 () Bool)

(assert (=> (and b!1769445 (= (toChars!4867 (transformation!3485 (rule!5527 token!523))) (toChars!4867 (transformation!3485 (rule!5527 lt!685281)))) t!165246) tb!107093))

(declare-fun b!1770391 () Bool)

(declare-fun e!1132908 () Bool)

(declare-fun tp!502120 () Bool)

(assert (=> b!1770391 (= e!1132908 (and (inv!25332 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 lt!685281))) (value!108995 lt!685281)))) tp!502120))))

(declare-fun result!128852 () Bool)

(assert (=> tb!107093 (= result!128852 (and (inv!25333 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 lt!685281))) (value!108995 lt!685281))) e!1132908))))

(assert (= tb!107093 b!1770391))

(declare-fun m!2189107 () Bool)

(assert (=> b!1770391 m!2189107))

(declare-fun m!2189109 () Bool)

(assert (=> tb!107093 m!2189109))

(assert (=> d!540721 t!165246))

(declare-fun b_and!134597 () Bool)

(assert (= b_and!134589 (and (=> t!165246 result!128852) b_and!134597)))

(declare-fun tb!107095 () Bool)

(declare-fun t!165248 () Bool)

(assert (=> (and b!1769469 (= (toChars!4867 (transformation!3485 (h!24892 rules!3447))) (toChars!4867 (transformation!3485 (rule!5527 lt!685281)))) t!165248) tb!107095))

(declare-fun result!128854 () Bool)

(assert (= result!128854 result!128852))

(assert (=> d!540721 t!165248))

(declare-fun b_and!134599 () Bool)

(assert (= b_and!134591 (and (=> t!165248 result!128854) b_and!134599)))

(declare-fun t!165250 () Bool)

(declare-fun tb!107097 () Bool)

(assert (=> (and b!1769458 (= (toChars!4867 (transformation!3485 rule!422)) (toChars!4867 (transformation!3485 (rule!5527 lt!685281)))) t!165250) tb!107097))

(declare-fun result!128856 () Bool)

(assert (= result!128856 result!128852))

(assert (=> d!540721 t!165250))

(declare-fun b_and!134601 () Bool)

(assert (= b_and!134593 (and (=> t!165250 result!128856) b_and!134601)))

(declare-fun tb!107099 () Bool)

(declare-fun t!165252 () Bool)

(assert (=> (and b!1770265 (= (toChars!4867 (transformation!3485 (h!24892 (t!165170 rules!3447)))) (toChars!4867 (transformation!3485 (rule!5527 lt!685281)))) t!165252) tb!107099))

(declare-fun result!128858 () Bool)

(assert (= result!128858 result!128852))

(assert (=> d!540721 t!165252))

(declare-fun b_and!134603 () Bool)

(assert (= b_and!134595 (and (=> t!165252 result!128858) b_and!134603)))

(declare-fun m!2189111 () Bool)

(assert (=> d!540721 m!2189111))

(declare-fun m!2189113 () Bool)

(assert (=> d!540721 m!2189113))

(assert (=> d!540527 d!540721))

(declare-fun b!1770392 () Bool)

(declare-fun e!1132909 () Option!3993)

(assert (=> b!1770392 (= e!1132909 None!3992)))

(declare-fun b!1770393 () Bool)

(declare-fun e!1132910 () Option!3993)

(assert (=> b!1770393 (= e!1132910 (Some!3992 (h!24892 rules!3447)))))

(declare-fun b!1770394 () Bool)

(declare-fun e!1132911 () Bool)

(declare-fun lt!685550 () Option!3993)

(assert (=> b!1770394 (= e!1132911 (= (tag!3865 (get!5953 lt!685550)) (tag!3865 (rule!5527 lt!685281))))))

(declare-fun b!1770395 () Bool)

(declare-fun e!1132912 () Bool)

(assert (=> b!1770395 (= e!1132912 e!1132911)))

(declare-fun res!797323 () Bool)

(assert (=> b!1770395 (=> (not res!797323) (not e!1132911))))

(assert (=> b!1770395 (= res!797323 (contains!3515 rules!3447 (get!5953 lt!685550)))))

(declare-fun b!1770396 () Bool)

(assert (=> b!1770396 (= e!1132910 e!1132909)))

(declare-fun c!288254 () Bool)

(assert (=> b!1770396 (= c!288254 (and ((_ is Cons!19491) rules!3447) (not (= (tag!3865 (h!24892 rules!3447)) (tag!3865 (rule!5527 lt!685281))))))))

(declare-fun d!540729 () Bool)

(assert (=> d!540729 e!1132912))

(declare-fun res!797322 () Bool)

(assert (=> d!540729 (=> res!797322 e!1132912)))

(assert (=> d!540729 (= res!797322 (isEmpty!12308 lt!685550))))

(assert (=> d!540729 (= lt!685550 e!1132910)))

(declare-fun c!288253 () Bool)

(assert (=> d!540729 (= c!288253 (and ((_ is Cons!19491) rules!3447) (= (tag!3865 (h!24892 rules!3447)) (tag!3865 (rule!5527 lt!685281)))))))

(assert (=> d!540729 (rulesInvariant!2783 thiss!24550 rules!3447)))

(assert (=> d!540729 (= (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 lt!685281))) lt!685550)))

(declare-fun b!1770397 () Bool)

(declare-fun lt!685551 () Unit!33686)

(declare-fun lt!685552 () Unit!33686)

(assert (=> b!1770397 (= lt!685551 lt!685552)))

(assert (=> b!1770397 (rulesInvariant!2783 thiss!24550 (t!165170 rules!3447))))

(assert (=> b!1770397 (= lt!685552 (lemmaInvariantOnRulesThenOnTail!203 thiss!24550 (h!24892 rules!3447) (t!165170 rules!3447)))))

(assert (=> b!1770397 (= e!1132909 (getRuleFromTag!533 thiss!24550 (t!165170 rules!3447) (tag!3865 (rule!5527 lt!685281))))))

(assert (= (and d!540729 c!288253) b!1770393))

(assert (= (and d!540729 (not c!288253)) b!1770396))

(assert (= (and b!1770396 c!288254) b!1770397))

(assert (= (and b!1770396 (not c!288254)) b!1770392))

(assert (= (and d!540729 (not res!797322)) b!1770395))

(assert (= (and b!1770395 res!797323) b!1770394))

(declare-fun m!2189119 () Bool)

(assert (=> b!1770394 m!2189119))

(assert (=> b!1770395 m!2189119))

(assert (=> b!1770395 m!2189119))

(declare-fun m!2189123 () Bool)

(assert (=> b!1770395 m!2189123))

(declare-fun m!2189125 () Bool)

(assert (=> d!540729 m!2189125))

(assert (=> d!540729 m!2187883))

(assert (=> b!1770397 m!2188497))

(assert (=> b!1770397 m!2188499))

(declare-fun m!2189129 () Bool)

(assert (=> b!1770397 m!2189129))

(assert (=> d!540527 d!540729))

(assert (=> d!540527 d!540653))

(declare-fun b!1770403 () Bool)

(declare-fun e!1132917 () List!19560)

(assert (=> b!1770403 (= e!1132917 lt!685291)))

(declare-fun b!1770404 () Bool)

(assert (=> b!1770404 (= e!1132917 (Cons!19490 (h!24891 lt!685285) (++!5309 (t!165169 lt!685285) lt!685291)))))

(declare-fun d!540733 () Bool)

(declare-fun e!1132918 () Bool)

(assert (=> d!540733 e!1132918))

(declare-fun res!797329 () Bool)

(assert (=> d!540733 (=> (not res!797329) (not e!1132918))))

(declare-fun lt!685554 () List!19560)

(assert (=> d!540733 (= res!797329 (= (content!2826 lt!685554) ((_ map or) (content!2826 lt!685285) (content!2826 lt!685291))))))

(assert (=> d!540733 (= lt!685554 e!1132917)))

(declare-fun c!288255 () Bool)

(assert (=> d!540733 (= c!288255 ((_ is Nil!19490) lt!685285))))

(assert (=> d!540733 (= (++!5309 lt!685285 lt!685291) lt!685554)))

(declare-fun b!1770406 () Bool)

(assert (=> b!1770406 (= e!1132918 (or (not (= lt!685291 Nil!19490)) (= lt!685554 lt!685285)))))

(declare-fun b!1770405 () Bool)

(declare-fun res!797328 () Bool)

(assert (=> b!1770405 (=> (not res!797328) (not e!1132918))))

(assert (=> b!1770405 (= res!797328 (= (size!15479 lt!685554) (+ (size!15479 lt!685285) (size!15479 lt!685291))))))

(assert (= (and d!540733 c!288255) b!1770403))

(assert (= (and d!540733 (not c!288255)) b!1770404))

(assert (= (and d!540733 res!797329) b!1770405))

(assert (= (and b!1770405 res!797328) b!1770406))

(declare-fun m!2189133 () Bool)

(assert (=> b!1770404 m!2189133))

(declare-fun m!2189135 () Bool)

(assert (=> d!540733 m!2189135))

(declare-fun m!2189139 () Bool)

(assert (=> d!540733 m!2189139))

(declare-fun m!2189141 () Bool)

(assert (=> d!540733 m!2189141))

(declare-fun m!2189145 () Bool)

(assert (=> b!1770405 m!2189145))

(assert (=> b!1770405 m!2189013))

(declare-fun m!2189149 () Bool)

(assert (=> b!1770405 m!2189149))

(assert (=> d!540527 d!540733))

(declare-fun d!540735 () Bool)

(assert (=> d!540735 (= (seqFromList!2454 lt!685116) (fromListB!1124 lt!685116))))

(declare-fun bs!404571 () Bool)

(assert (= bs!404571 d!540735))

(declare-fun m!2189157 () Bool)

(assert (=> bs!404571 m!2189157))

(assert (=> d!540527 d!540735))

(declare-fun d!540739 () Bool)

(assert (=> d!540739 (isPrefix!1725 lt!685293 (++!5309 lt!685116 suffix!1421))))

(declare-fun lt!685557 () Unit!33686)

(declare-fun choose!11018 (List!19560 List!19560 List!19560) Unit!33686)

(assert (=> d!540739 (= lt!685557 (choose!11018 lt!685293 lt!685116 suffix!1421))))

(assert (=> d!540739 (isPrefix!1725 lt!685293 lt!685116)))

(assert (=> d!540739 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!324 lt!685293 lt!685116 suffix!1421) lt!685557)))

(declare-fun bs!404573 () Bool)

(assert (= bs!404573 d!540739))

(assert (=> bs!404573 m!2187857))

(assert (=> bs!404573 m!2187857))

(assert (=> bs!404573 m!2188459))

(declare-fun m!2189161 () Bool)

(assert (=> bs!404573 m!2189161))

(declare-fun m!2189163 () Bool)

(assert (=> bs!404573 m!2189163))

(assert (=> d!540527 d!540739))

(declare-fun b!1770572 () Bool)

(declare-fun e!1133014 () Bool)

(declare-fun lt!685612 () tuple2!19098)

(declare-fun isEmpty!12310 (BalanceConc!12912) Bool)

(assert (=> b!1770572 (= e!1133014 (not (isEmpty!12310 (_1!10951 lt!685612))))))

(declare-fun b!1770573 () Bool)

(declare-fun res!797419 () Bool)

(declare-fun e!1133012 () Bool)

(assert (=> b!1770573 (=> (not res!797419) (not e!1133012))))

(declare-datatypes ((tuple2!19104 0))(
  ( (tuple2!19105 (_1!10954 List!19565) (_2!10954 List!19560)) )
))
(declare-fun lexList!926 (LexerInterface!3114 List!19561 List!19560) tuple2!19104)

(assert (=> b!1770573 (= res!797419 (= (list!7918 (_1!10951 lt!685612)) (_1!10954 (lexList!926 thiss!24550 rules!3447 (list!7915 (seqFromList!2454 lt!685116))))))))

(declare-fun b!1770574 () Bool)

(declare-fun e!1133013 () Bool)

(assert (=> b!1770574 (= e!1133013 e!1133014)))

(declare-fun res!797417 () Bool)

(assert (=> b!1770574 (= res!797417 (< (size!15480 (_2!10951 lt!685612)) (size!15480 (seqFromList!2454 lt!685116))))))

(assert (=> b!1770574 (=> (not res!797417) (not e!1133014))))

(declare-fun d!540753 () Bool)

(assert (=> d!540753 e!1133012))

(declare-fun res!797418 () Bool)

(assert (=> d!540753 (=> (not res!797418) (not e!1133012))))

(assert (=> d!540753 (= res!797418 e!1133013)))

(declare-fun c!288291 () Bool)

(declare-fun size!15483 (BalanceConc!12912) Int)

(assert (=> d!540753 (= c!288291 (> (size!15483 (_1!10951 lt!685612)) 0))))

(declare-fun lexTailRecV2!649 (LexerInterface!3114 List!19561 BalanceConc!12910 BalanceConc!12910 BalanceConc!12910 BalanceConc!12912) tuple2!19098)

(assert (=> d!540753 (= lt!685612 (lexTailRecV2!649 thiss!24550 rules!3447 (seqFromList!2454 lt!685116) (BalanceConc!12911 Empty!6483) (seqFromList!2454 lt!685116) (BalanceConc!12913 Empty!6484)))))

(assert (=> d!540753 (= (lex!1463 thiss!24550 rules!3447 (seqFromList!2454 lt!685116)) lt!685612)))

(declare-fun b!1770575 () Bool)

(assert (=> b!1770575 (= e!1133013 (= (_2!10951 lt!685612) (seqFromList!2454 lt!685116)))))

(declare-fun b!1770576 () Bool)

(assert (=> b!1770576 (= e!1133012 (= (list!7915 (_2!10951 lt!685612)) (_2!10954 (lexList!926 thiss!24550 rules!3447 (list!7915 (seqFromList!2454 lt!685116))))))))

(assert (= (and d!540753 c!288291) b!1770574))

(assert (= (and d!540753 (not c!288291)) b!1770575))

(assert (= (and b!1770574 res!797417) b!1770572))

(assert (= (and d!540753 res!797418) b!1770573))

(assert (= (and b!1770573 res!797419) b!1770576))

(declare-fun m!2189439 () Bool)

(assert (=> b!1770574 m!2189439))

(assert (=> b!1770574 m!2188471))

(declare-fun m!2189441 () Bool)

(assert (=> b!1770574 m!2189441))

(declare-fun m!2189443 () Bool)

(assert (=> b!1770576 m!2189443))

(assert (=> b!1770576 m!2188471))

(declare-fun m!2189445 () Bool)

(assert (=> b!1770576 m!2189445))

(assert (=> b!1770576 m!2189445))

(declare-fun m!2189447 () Bool)

(assert (=> b!1770576 m!2189447))

(declare-fun m!2189449 () Bool)

(assert (=> d!540753 m!2189449))

(assert (=> d!540753 m!2188471))

(assert (=> d!540753 m!2188471))

(declare-fun m!2189451 () Bool)

(assert (=> d!540753 m!2189451))

(declare-fun m!2189453 () Bool)

(assert (=> b!1770572 m!2189453))

(declare-fun m!2189455 () Bool)

(assert (=> b!1770573 m!2189455))

(assert (=> b!1770573 m!2188471))

(assert (=> b!1770573 m!2189445))

(assert (=> b!1770573 m!2189445))

(assert (=> b!1770573 m!2189447))

(assert (=> d!540527 d!540753))

(declare-fun d!540857 () Bool)

(assert (=> d!540857 (= (isDefined!3335 (maxPrefix!1668 thiss!24550 rules!3447 (++!5309 lt!685116 suffix!1421))) (not (isEmpty!12307 (maxPrefix!1668 thiss!24550 rules!3447 (++!5309 lt!685116 suffix!1421)))))))

(declare-fun bs!404591 () Bool)

(assert (= bs!404591 d!540857))

(assert (=> bs!404591 m!2188439))

(assert (=> bs!404591 m!2188453))

(assert (=> d!540527 d!540857))

(declare-fun d!540859 () Bool)

(declare-fun e!1133017 () Bool)

(assert (=> d!540859 e!1133017))

(declare-fun res!797422 () Bool)

(assert (=> d!540859 (=> (not res!797422) (not e!1133017))))

(assert (=> d!540859 (= res!797422 (isDefined!3336 (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 lt!685281)))))))

(declare-fun lt!685615 () Unit!33686)

(assert (=> d!540859 (= lt!685615 (choose!11011 thiss!24550 rules!3447 lt!685116 lt!685281))))

(assert (=> d!540859 (rulesInvariant!2783 thiss!24550 rules!3447)))

(assert (=> d!540859 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!533 thiss!24550 rules!3447 lt!685116 lt!685281) lt!685615)))

(declare-fun b!1770579 () Bool)

(declare-fun res!797423 () Bool)

(assert (=> b!1770579 (=> (not res!797423) (not e!1133017))))

(assert (=> b!1770579 (= res!797423 (matchR!2286 (regex!3485 (get!5953 (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 lt!685281))))) (list!7915 (charsOf!2134 lt!685281))))))

(declare-fun b!1770580 () Bool)

(assert (=> b!1770580 (= e!1133017 (= (rule!5527 lt!685281) (get!5953 (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 lt!685281))))))))

(assert (= (and d!540859 res!797422) b!1770579))

(assert (= (and b!1770579 res!797423) b!1770580))

(assert (=> d!540859 m!2188447))

(assert (=> d!540859 m!2188447))

(assert (=> d!540859 m!2188449))

(declare-fun m!2189463 () Bool)

(assert (=> d!540859 m!2189463))

(assert (=> d!540859 m!2187883))

(assert (=> b!1770579 m!2188463))

(assert (=> b!1770579 m!2188475))

(assert (=> b!1770579 m!2188447))

(assert (=> b!1770579 m!2188461))

(assert (=> b!1770579 m!2188463))

(assert (=> b!1770579 m!2188461))

(assert (=> b!1770579 m!2188447))

(assert (=> b!1770579 m!2188477))

(assert (=> b!1770580 m!2188447))

(assert (=> b!1770580 m!2188447))

(assert (=> b!1770580 m!2188477))

(assert (=> d!540527 d!540859))

(assert (=> d!540527 d!540383))

(declare-fun d!540869 () Bool)

(assert (=> d!540869 (= (get!5952 (maxPrefix!1668 thiss!24550 rules!3447 lt!685116)) (v!25466 (maxPrefix!1668 thiss!24550 rules!3447 lt!685116)))))

(assert (=> d!540527 d!540869))

(declare-fun d!540871 () Bool)

(assert (=> d!540871 (= (list!7915 (charsOf!2134 lt!685281)) (list!7917 (c!288085 (charsOf!2134 lt!685281))))))

(declare-fun bs!404592 () Bool)

(assert (= bs!404592 d!540871))

(declare-fun m!2189467 () Bool)

(assert (=> bs!404592 m!2189467))

(assert (=> d!540527 d!540871))

(declare-fun d!540873 () Bool)

(assert (=> d!540873 (isPrefix!1725 lt!685285 (++!5309 lt!685285 lt!685291))))

(declare-fun lt!685618 () Unit!33686)

(assert (=> d!540873 (= lt!685618 (choose!11008 lt!685285 lt!685291))))

(assert (=> d!540873 (= (lemmaConcatTwoListThenFirstIsPrefix!1234 lt!685285 lt!685291) lt!685618)))

(declare-fun bs!404593 () Bool)

(assert (= bs!404593 d!540873))

(assert (=> bs!404593 m!2188445))

(assert (=> bs!404593 m!2188445))

(assert (=> bs!404593 m!2188455))

(declare-fun m!2189469 () Bool)

(assert (=> bs!404593 m!2189469))

(assert (=> d!540527 d!540873))

(declare-fun d!540875 () Bool)

(declare-fun list!7921 (Conc!6484) List!19565)

(assert (=> d!540875 (= (list!7918 (_1!10951 (lex!1463 thiss!24550 rules!3447 (seqFromList!2454 lt!685116)))) (list!7921 (c!288220 (_1!10951 (lex!1463 thiss!24550 rules!3447 (seqFromList!2454 lt!685116))))))))

(declare-fun bs!404594 () Bool)

(assert (= bs!404594 d!540875))

(declare-fun m!2189471 () Bool)

(assert (=> bs!404594 m!2189471))

(assert (=> d!540527 d!540875))

(assert (=> d!540527 d!540517))

(declare-fun d!540877 () Bool)

(assert (=> d!540877 (= (isEmpty!12307 (maxPrefix!1668 thiss!24550 rules!3447 (++!5309 lt!685116 suffix!1421))) (not ((_ is Some!3991) (maxPrefix!1668 thiss!24550 rules!3447 (++!5309 lt!685116 suffix!1421)))))))

(assert (=> d!540527 d!540877))

(assert (=> d!540575 d!540591))

(assert (=> d!540575 d!540595))

(declare-fun d!540881 () Bool)

(assert (=> d!540881 (= (maxPrefixOneRule!1037 thiss!24550 (rule!5527 (_1!10949 lt!685099)) lt!685092) (Some!3991 (tuple2!19095 (Token!6537 (apply!5285 (transformation!3485 (rule!5527 (_1!10949 lt!685099))) (seqFromList!2454 lt!685100)) (rule!5527 (_1!10949 lt!685099)) (size!15479 lt!685100) lt!685100) (_2!10949 lt!685099))))))

(assert (=> d!540881 true))

(declare-fun _$59!290 () Unit!33686)

(assert (=> d!540881 (= (choose!11015 thiss!24550 rules!3447 lt!685100 lt!685092 (_2!10949 lt!685099) (rule!5527 (_1!10949 lt!685099))) _$59!290)))

(declare-fun bs!404602 () Bool)

(assert (= bs!404602 d!540881))

(assert (=> bs!404602 m!2187831))

(assert (=> bs!404602 m!2187835))

(assert (=> bs!404602 m!2187835))

(assert (=> bs!404602 m!2187837))

(assert (=> bs!404602 m!2187843))

(assert (=> d!540575 d!540881))

(assert (=> d!540575 d!540383))

(assert (=> d!540575 d!540613))

(assert (=> d!540575 d!540633))

(declare-fun d!540913 () Bool)

(declare-fun nullableFct!335 (Regex!4813) Bool)

(assert (=> d!540913 (= (nullable!1475 lt!685113) (nullableFct!335 lt!685113))))

(declare-fun bs!404603 () Bool)

(assert (= bs!404603 d!540913))

(declare-fun m!2189501 () Bool)

(assert (=> bs!404603 m!2189501))

(assert (=> b!1769957 d!540913))

(declare-fun bs!404604 () Bool)

(declare-fun d!540915 () Bool)

(assert (= bs!404604 (and d!540915 b!1769462)))

(declare-fun lambda!70410 () Int)

(assert (=> bs!404604 (= (and (= (toChars!4867 (transformation!3485 (h!24892 rules!3447))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) (= (toValue!5008 (transformation!3485 (h!24892 rules!3447))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (= lambda!70410 lambda!70380))))

(declare-fun bs!404605 () Bool)

(assert (= bs!404605 (and d!540915 d!540639)))

(assert (=> bs!404605 (= (and (= (toChars!4867 (transformation!3485 (h!24892 rules!3447))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) (= (toValue!5008 (transformation!3485 (h!24892 rules!3447))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (= lambda!70410 lambda!70395))))

(assert (=> d!540915 true))

(assert (=> d!540915 (< (dynLambda!9460 order!12447 (toChars!4867 (transformation!3485 (h!24892 rules!3447)))) (dynLambda!9459 order!12445 lambda!70410))))

(assert (=> d!540915 true))

(assert (=> d!540915 (< (dynLambda!9458 order!12443 (toValue!5008 (transformation!3485 (h!24892 rules!3447)))) (dynLambda!9459 order!12445 lambda!70410))))

(assert (=> d!540915 (= (semiInverseModEq!1390 (toChars!4867 (transformation!3485 (h!24892 rules!3447))) (toValue!5008 (transformation!3485 (h!24892 rules!3447)))) (Forall!852 lambda!70410))))

(declare-fun bs!404606 () Bool)

(assert (= bs!404606 d!540915))

(declare-fun m!2189517 () Bool)

(assert (=> bs!404606 m!2189517))

(assert (=> d!540687 d!540915))

(declare-fun b!1770614 () Bool)

(declare-fun e!1133039 () List!19560)

(assert (=> b!1770614 (= e!1133039 (_2!10949 (get!5952 lt!685443)))))

(declare-fun b!1770615 () Bool)

(assert (=> b!1770615 (= e!1133039 (Cons!19490 (h!24891 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685443))))) (++!5309 (t!165169 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685443))))) (_2!10949 (get!5952 lt!685443)))))))

(declare-fun d!540929 () Bool)

(declare-fun e!1133040 () Bool)

(assert (=> d!540929 e!1133040))

(declare-fun res!797438 () Bool)

(assert (=> d!540929 (=> (not res!797438) (not e!1133040))))

(declare-fun lt!685634 () List!19560)

(assert (=> d!540929 (= res!797438 (= (content!2826 lt!685634) ((_ map or) (content!2826 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685443))))) (content!2826 (_2!10949 (get!5952 lt!685443))))))))

(assert (=> d!540929 (= lt!685634 e!1133039)))

(declare-fun c!288300 () Bool)

(assert (=> d!540929 (= c!288300 ((_ is Nil!19490) (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685443))))))))

(assert (=> d!540929 (= (++!5309 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685443)))) (_2!10949 (get!5952 lt!685443))) lt!685634)))

(declare-fun b!1770617 () Bool)

(assert (=> b!1770617 (= e!1133040 (or (not (= (_2!10949 (get!5952 lt!685443)) Nil!19490)) (= lt!685634 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685443)))))))))

(declare-fun b!1770616 () Bool)

(declare-fun res!797437 () Bool)

(assert (=> b!1770616 (=> (not res!797437) (not e!1133040))))

(assert (=> b!1770616 (= res!797437 (= (size!15479 lt!685634) (+ (size!15479 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685443))))) (size!15479 (_2!10949 (get!5952 lt!685443))))))))

(assert (= (and d!540929 c!288300) b!1770614))

(assert (= (and d!540929 (not c!288300)) b!1770615))

(assert (= (and d!540929 res!797438) b!1770616))

(assert (= (and b!1770616 res!797437) b!1770617))

(declare-fun m!2189519 () Bool)

(assert (=> b!1770615 m!2189519))

(declare-fun m!2189521 () Bool)

(assert (=> d!540929 m!2189521))

(assert (=> d!540929 m!2188861))

(declare-fun m!2189523 () Bool)

(assert (=> d!540929 m!2189523))

(declare-fun m!2189525 () Bool)

(assert (=> d!540929 m!2189525))

(declare-fun m!2189527 () Bool)

(assert (=> b!1770616 m!2189527))

(assert (=> b!1770616 m!2188861))

(declare-fun m!2189529 () Bool)

(assert (=> b!1770616 m!2189529))

(assert (=> b!1770616 m!2188857))

(assert (=> b!1770196 d!540929))

(declare-fun d!540931 () Bool)

(assert (=> d!540931 (= (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685443)))) (list!7917 (c!288085 (charsOf!2134 (_1!10949 (get!5952 lt!685443))))))))

(declare-fun bs!404607 () Bool)

(assert (= bs!404607 d!540931))

(declare-fun m!2189531 () Bool)

(assert (=> bs!404607 m!2189531))

(assert (=> b!1770196 d!540931))

(declare-fun d!540933 () Bool)

(declare-fun lt!685635 () BalanceConc!12910)

(assert (=> d!540933 (= (list!7915 lt!685635) (originalCharacters!4299 (_1!10949 (get!5952 lt!685443))))))

(assert (=> d!540933 (= lt!685635 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685443))))) (value!108995 (_1!10949 (get!5952 lt!685443)))))))

(assert (=> d!540933 (= (charsOf!2134 (_1!10949 (get!5952 lt!685443))) lt!685635)))

(declare-fun b_lambda!57655 () Bool)

(assert (=> (not b_lambda!57655) (not d!540933)))

(declare-fun t!165296 () Bool)

(declare-fun tb!107141 () Bool)

(assert (=> (and b!1769445 (= (toChars!4867 (transformation!3485 (rule!5527 token!523))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685443)))))) t!165296) tb!107141))

(declare-fun b!1770618 () Bool)

(declare-fun e!1133041 () Bool)

(declare-fun tp!502123 () Bool)

(assert (=> b!1770618 (= e!1133041 (and (inv!25332 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685443))))) (value!108995 (_1!10949 (get!5952 lt!685443)))))) tp!502123))))

(declare-fun result!128900 () Bool)

(assert (=> tb!107141 (= result!128900 (and (inv!25333 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685443))))) (value!108995 (_1!10949 (get!5952 lt!685443))))) e!1133041))))

(assert (= tb!107141 b!1770618))

(declare-fun m!2189533 () Bool)

(assert (=> b!1770618 m!2189533))

(declare-fun m!2189535 () Bool)

(assert (=> tb!107141 m!2189535))

(assert (=> d!540933 t!165296))

(declare-fun b_and!134645 () Bool)

(assert (= b_and!134597 (and (=> t!165296 result!128900) b_and!134645)))

(declare-fun tb!107143 () Bool)

(declare-fun t!165298 () Bool)

(assert (=> (and b!1769469 (= (toChars!4867 (transformation!3485 (h!24892 rules!3447))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685443)))))) t!165298) tb!107143))

(declare-fun result!128902 () Bool)

(assert (= result!128902 result!128900))

(assert (=> d!540933 t!165298))

(declare-fun b_and!134647 () Bool)

(assert (= b_and!134599 (and (=> t!165298 result!128902) b_and!134647)))

(declare-fun t!165300 () Bool)

(declare-fun tb!107145 () Bool)

(assert (=> (and b!1769458 (= (toChars!4867 (transformation!3485 rule!422)) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685443)))))) t!165300) tb!107145))

(declare-fun result!128904 () Bool)

(assert (= result!128904 result!128900))

(assert (=> d!540933 t!165300))

(declare-fun b_and!134649 () Bool)

(assert (= b_and!134601 (and (=> t!165300 result!128904) b_and!134649)))

(declare-fun t!165302 () Bool)

(declare-fun tb!107147 () Bool)

(assert (=> (and b!1770265 (= (toChars!4867 (transformation!3485 (h!24892 (t!165170 rules!3447)))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685443)))))) t!165302) tb!107147))

(declare-fun result!128906 () Bool)

(assert (= result!128906 result!128900))

(assert (=> d!540933 t!165302))

(declare-fun b_and!134651 () Bool)

(assert (= b_and!134603 (and (=> t!165302 result!128906) b_and!134651)))

(declare-fun m!2189537 () Bool)

(assert (=> d!540933 m!2189537))

(declare-fun m!2189539 () Bool)

(assert (=> d!540933 m!2189539))

(assert (=> b!1770196 d!540933))

(declare-fun d!540935 () Bool)

(assert (=> d!540935 (= (get!5952 lt!685443) (v!25466 lt!685443))))

(assert (=> b!1770196 d!540935))

(declare-fun d!540937 () Bool)

(assert (=> d!540937 (= (head!4114 lt!685116) (h!24891 lt!685116))))

(assert (=> b!1769963 d!540937))

(assert (=> b!1769827 d!540697))

(assert (=> b!1769827 d!540699))

(assert (=> b!1769827 d!540701))

(declare-fun d!540939 () Bool)

(declare-fun res!797439 () Bool)

(declare-fun e!1133042 () Bool)

(assert (=> d!540939 (=> (not res!797439) (not e!1133042))))

(assert (=> d!540939 (= res!797439 (rulesValid!1316 thiss!24550 (t!165170 rules!3447)))))

(assert (=> d!540939 (= (rulesInvariant!2783 thiss!24550 (t!165170 rules!3447)) e!1133042)))

(declare-fun b!1770619 () Bool)

(assert (=> b!1770619 (= e!1133042 (noDuplicateTag!1316 thiss!24550 (t!165170 rules!3447) Nil!19497))))

(assert (= (and d!540939 res!797439) b!1770619))

(declare-fun m!2189541 () Bool)

(assert (=> d!540939 m!2189541))

(declare-fun m!2189543 () Bool)

(assert (=> b!1770619 m!2189543))

(assert (=> b!1769919 d!540939))

(declare-fun d!540941 () Bool)

(assert (=> d!540941 (rulesInvariant!2783 thiss!24550 (t!165170 rules!3447))))

(declare-fun lt!685638 () Unit!33686)

(declare-fun choose!11020 (LexerInterface!3114 Rule!6770 List!19561) Unit!33686)

(assert (=> d!540941 (= lt!685638 (choose!11020 thiss!24550 (h!24892 rules!3447) (t!165170 rules!3447)))))

(assert (=> d!540941 (rulesInvariant!2783 thiss!24550 (Cons!19491 (h!24892 rules!3447) (t!165170 rules!3447)))))

(assert (=> d!540941 (= (lemmaInvariantOnRulesThenOnTail!203 thiss!24550 (h!24892 rules!3447) (t!165170 rules!3447)) lt!685638)))

(declare-fun bs!404608 () Bool)

(assert (= bs!404608 d!540941))

(assert (=> bs!404608 m!2188497))

(declare-fun m!2189545 () Bool)

(assert (=> bs!404608 m!2189545))

(declare-fun m!2189547 () Bool)

(assert (=> bs!404608 m!2189547))

(assert (=> b!1769919 d!540941))

(declare-fun b!1770620 () Bool)

(declare-fun e!1133043 () Option!3993)

(assert (=> b!1770620 (= e!1133043 None!3992)))

(declare-fun b!1770621 () Bool)

(declare-fun e!1133044 () Option!3993)

(assert (=> b!1770621 (= e!1133044 (Some!3992 (h!24892 (t!165170 rules!3447))))))

(declare-fun b!1770622 () Bool)

(declare-fun e!1133045 () Bool)

(declare-fun lt!685639 () Option!3993)

(assert (=> b!1770622 (= e!1133045 (= (tag!3865 (get!5953 lt!685639)) (tag!3865 (rule!5527 (_1!10949 lt!685099)))))))

(declare-fun b!1770623 () Bool)

(declare-fun e!1133046 () Bool)

(assert (=> b!1770623 (= e!1133046 e!1133045)))

(declare-fun res!797441 () Bool)

(assert (=> b!1770623 (=> (not res!797441) (not e!1133045))))

(assert (=> b!1770623 (= res!797441 (contains!3515 (t!165170 rules!3447) (get!5953 lt!685639)))))

(declare-fun b!1770624 () Bool)

(assert (=> b!1770624 (= e!1133044 e!1133043)))

(declare-fun c!288302 () Bool)

(assert (=> b!1770624 (= c!288302 (and ((_ is Cons!19491) (t!165170 rules!3447)) (not (= (tag!3865 (h!24892 (t!165170 rules!3447))) (tag!3865 (rule!5527 (_1!10949 lt!685099)))))))))

(declare-fun d!540943 () Bool)

(assert (=> d!540943 e!1133046))

(declare-fun res!797440 () Bool)

(assert (=> d!540943 (=> res!797440 e!1133046)))

(assert (=> d!540943 (= res!797440 (isEmpty!12308 lt!685639))))

(assert (=> d!540943 (= lt!685639 e!1133044)))

(declare-fun c!288301 () Bool)

(assert (=> d!540943 (= c!288301 (and ((_ is Cons!19491) (t!165170 rules!3447)) (= (tag!3865 (h!24892 (t!165170 rules!3447))) (tag!3865 (rule!5527 (_1!10949 lt!685099))))))))

(assert (=> d!540943 (rulesInvariant!2783 thiss!24550 (t!165170 rules!3447))))

(assert (=> d!540943 (= (getRuleFromTag!533 thiss!24550 (t!165170 rules!3447) (tag!3865 (rule!5527 (_1!10949 lt!685099)))) lt!685639)))

(declare-fun b!1770625 () Bool)

(declare-fun lt!685640 () Unit!33686)

(declare-fun lt!685641 () Unit!33686)

(assert (=> b!1770625 (= lt!685640 lt!685641)))

(assert (=> b!1770625 (rulesInvariant!2783 thiss!24550 (t!165170 (t!165170 rules!3447)))))

(assert (=> b!1770625 (= lt!685641 (lemmaInvariantOnRulesThenOnTail!203 thiss!24550 (h!24892 (t!165170 rules!3447)) (t!165170 (t!165170 rules!3447))))))

(assert (=> b!1770625 (= e!1133043 (getRuleFromTag!533 thiss!24550 (t!165170 (t!165170 rules!3447)) (tag!3865 (rule!5527 (_1!10949 lt!685099)))))))

(assert (= (and d!540943 c!288301) b!1770621))

(assert (= (and d!540943 (not c!288301)) b!1770624))

(assert (= (and b!1770624 c!288302) b!1770625))

(assert (= (and b!1770624 (not c!288302)) b!1770620))

(assert (= (and d!540943 (not res!797440)) b!1770623))

(assert (= (and b!1770623 res!797441) b!1770622))

(declare-fun m!2189549 () Bool)

(assert (=> b!1770622 m!2189549))

(assert (=> b!1770623 m!2189549))

(assert (=> b!1770623 m!2189549))

(declare-fun m!2189551 () Bool)

(assert (=> b!1770623 m!2189551))

(declare-fun m!2189553 () Bool)

(assert (=> d!540943 m!2189553))

(assert (=> d!540943 m!2188497))

(declare-fun m!2189555 () Bool)

(assert (=> b!1770625 m!2189555))

(declare-fun m!2189557 () Bool)

(assert (=> b!1770625 m!2189557))

(declare-fun m!2189559 () Bool)

(assert (=> b!1770625 m!2189559))

(assert (=> b!1769919 d!540943))

(declare-fun b!1770638 () Bool)

(declare-fun e!1133052 () Bool)

(declare-fun isEmpty!12311 (Conc!6483) Bool)

(assert (=> b!1770638 (= e!1133052 (not (isEmpty!12311 (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))))))))

(declare-fun b!1770639 () Bool)

(declare-fun e!1133051 () Bool)

(assert (=> b!1770639 (= e!1133051 e!1133052)))

(declare-fun res!797458 () Bool)

(assert (=> b!1770639 (=> (not res!797458) (not e!1133052))))

(declare-fun height!1009 (Conc!6483) Int)

(assert (=> b!1770639 (= res!797458 (<= (- 1) (- (height!1009 (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))))) (height!1009 (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))))))))))

(declare-fun b!1770640 () Bool)

(declare-fun res!797456 () Bool)

(assert (=> b!1770640 (=> (not res!797456) (not e!1133052))))

(assert (=> b!1770640 (= res!797456 (isBalanced!2027 (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))))))))

(declare-fun b!1770641 () Bool)

(declare-fun res!797459 () Bool)

(assert (=> b!1770641 (=> (not res!797459) (not e!1133052))))

(assert (=> b!1770641 (= res!797459 (<= (- (height!1009 (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))))) (height!1009 (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))))) 1))))

(declare-fun b!1770642 () Bool)

(declare-fun res!797454 () Bool)

(assert (=> b!1770642 (=> (not res!797454) (not e!1133052))))

(assert (=> b!1770642 (= res!797454 (isBalanced!2027 (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))))))))

(declare-fun b!1770643 () Bool)

(declare-fun res!797457 () Bool)

(assert (=> b!1770643 (=> (not res!797457) (not e!1133052))))

(assert (=> b!1770643 (= res!797457 (not (isEmpty!12311 (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))))))))

(declare-fun d!540945 () Bool)

(declare-fun res!797455 () Bool)

(assert (=> d!540945 (=> res!797455 e!1133051)))

(assert (=> d!540945 (= res!797455 (not ((_ is Node!6483) (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))))))))

(assert (=> d!540945 (= (isBalanced!2027 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))) e!1133051)))

(assert (= (and d!540945 (not res!797455)) b!1770639))

(assert (= (and b!1770639 res!797458) b!1770641))

(assert (= (and b!1770641 res!797459) b!1770642))

(assert (= (and b!1770642 res!797454) b!1770640))

(assert (= (and b!1770640 res!797456) b!1770643))

(assert (= (and b!1770643 res!797457) b!1770638))

(declare-fun m!2189565 () Bool)

(assert (=> b!1770638 m!2189565))

(declare-fun m!2189567 () Bool)

(assert (=> b!1770639 m!2189567))

(declare-fun m!2189569 () Bool)

(assert (=> b!1770639 m!2189569))

(declare-fun m!2189573 () Bool)

(assert (=> b!1770642 m!2189573))

(declare-fun m!2189577 () Bool)

(assert (=> b!1770643 m!2189577))

(declare-fun m!2189579 () Bool)

(assert (=> b!1770640 m!2189579))

(assert (=> b!1770641 m!2189567))

(assert (=> b!1770641 m!2189569))

(assert (=> d!540379 d!540945))

(declare-fun d!540953 () Bool)

(declare-fun charsToBigInt!1 (List!19559) Int)

(assert (=> d!540953 (= (inv!17 (value!108995 token!523)) (= (charsToBigInt!1 (text!25473 (value!108995 token!523))) (value!108987 (value!108995 token!523))))))

(declare-fun bs!404612 () Bool)

(assert (= bs!404612 d!540953))

(declare-fun m!2189589 () Bool)

(assert (=> bs!404612 m!2189589))

(assert (=> b!1770221 d!540953))

(assert (=> b!1770193 d!540931))

(assert (=> b!1770193 d!540933))

(assert (=> b!1770193 d!540935))

(declare-fun d!540959 () Bool)

(declare-fun charsToInt!0 (List!19559) (_ BitVec 32))

(assert (=> d!540959 (= (inv!16 (value!108995 token!523)) (= (charsToInt!0 (text!25472 (value!108995 token!523))) (value!108986 (value!108995 token!523))))))

(declare-fun bs!404613 () Bool)

(assert (= bs!404613 d!540959))

(declare-fun m!2189607 () Bool)

(assert (=> bs!404613 m!2189607))

(assert (=> b!1770217 d!540959))

(declare-fun d!540963 () Bool)

(assert (=> d!540963 (= (get!5953 (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 lt!685281)))) (v!25467 (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 lt!685281)))))))

(assert (=> b!1769899 d!540963))

(assert (=> b!1769899 d!540729))

(declare-fun b!1770679 () Bool)

(declare-fun e!1133070 () List!19560)

(assert (=> b!1770679 (= e!1133070 (++!5309 (list!7917 (left!15607 (c!288085 lt!685102))) (list!7917 (right!15937 (c!288085 lt!685102)))))))

(declare-fun b!1770678 () Bool)

(declare-fun list!7922 (IArray!12971) List!19560)

(assert (=> b!1770678 (= e!1133070 (list!7922 (xs!9359 (c!288085 lt!685102))))))

(declare-fun b!1770676 () Bool)

(declare-fun e!1133069 () List!19560)

(assert (=> b!1770676 (= e!1133069 Nil!19490)))

(declare-fun d!540965 () Bool)

(declare-fun c!288311 () Bool)

(assert (=> d!540965 (= c!288311 ((_ is Empty!6483) (c!288085 lt!685102)))))

(assert (=> d!540965 (= (list!7917 (c!288085 lt!685102)) e!1133069)))

(declare-fun b!1770677 () Bool)

(assert (=> b!1770677 (= e!1133069 e!1133070)))

(declare-fun c!288312 () Bool)

(assert (=> b!1770677 (= c!288312 ((_ is Leaf!9446) (c!288085 lt!685102)))))

(assert (= (and d!540965 c!288311) b!1770676))

(assert (= (and d!540965 (not c!288311)) b!1770677))

(assert (= (and b!1770677 c!288312) b!1770678))

(assert (= (and b!1770677 (not c!288312)) b!1770679))

(declare-fun m!2189653 () Bool)

(assert (=> b!1770679 m!2189653))

(declare-fun m!2189655 () Bool)

(assert (=> b!1770679 m!2189655))

(assert (=> b!1770679 m!2189653))

(assert (=> b!1770679 m!2189655))

(declare-fun m!2189657 () Bool)

(assert (=> b!1770679 m!2189657))

(declare-fun m!2189659 () Bool)

(assert (=> b!1770678 m!2189659))

(assert (=> d!540655 d!540965))

(declare-fun d!540969 () Bool)

(declare-fun res!797479 () Bool)

(declare-fun e!1133074 () Bool)

(assert (=> d!540969 (=> (not res!797479) (not e!1133074))))

(assert (=> d!540969 (= res!797479 (<= (size!15479 (list!7922 (xs!9359 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099))))))) 512))))

(assert (=> d!540969 (= (inv!25337 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099))))) e!1133074)))

(declare-fun b!1770686 () Bool)

(declare-fun res!797480 () Bool)

(assert (=> b!1770686 (=> (not res!797480) (not e!1133074))))

(assert (=> b!1770686 (= res!797480 (= (csize!13197 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099))))) (size!15479 (list!7922 (xs!9359 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099)))))))))))

(declare-fun b!1770687 () Bool)

(assert (=> b!1770687 (= e!1133074 (and (> (csize!13197 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099))))) 0) (<= (csize!13197 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099))))) 512)))))

(assert (= (and d!540969 res!797479) b!1770686))

(assert (= (and b!1770686 res!797480) b!1770687))

(declare-fun m!2189665 () Bool)

(assert (=> d!540969 m!2189665))

(assert (=> d!540969 m!2189665))

(declare-fun m!2189667 () Bool)

(assert (=> d!540969 m!2189667))

(assert (=> b!1770686 m!2189665))

(assert (=> b!1770686 m!2189665))

(assert (=> b!1770686 m!2189667))

(assert (=> b!1769707 d!540969))

(assert (=> d!540557 d!540647))

(assert (=> d!540557 d!540541))

(declare-fun b!1770688 () Bool)

(declare-fun res!797487 () Bool)

(declare-fun e!1133079 () Bool)

(assert (=> b!1770688 (=> (not res!797487) (not e!1133079))))

(assert (=> b!1770688 (= res!797487 (isEmpty!12304 (tail!2649 (list!7915 (charsOf!2134 (_1!10949 lt!685099))))))))

(declare-fun b!1770689 () Bool)

(assert (=> b!1770689 (= e!1133079 (= (head!4114 (list!7915 (charsOf!2134 (_1!10949 lt!685099)))) (c!288084 (rulesRegex!841 thiss!24550 rules!3447))))))

(declare-fun bm!110980 () Bool)

(declare-fun call!110985 () Bool)

(assert (=> bm!110980 (= call!110985 (isEmpty!12304 (list!7915 (charsOf!2134 (_1!10949 lt!685099)))))))

(declare-fun b!1770690 () Bool)

(declare-fun e!1133076 () Bool)

(declare-fun e!1133081 () Bool)

(assert (=> b!1770690 (= e!1133076 e!1133081)))

(declare-fun res!797483 () Bool)

(assert (=> b!1770690 (=> res!797483 e!1133081)))

(assert (=> b!1770690 (= res!797483 call!110985)))

(declare-fun b!1770691 () Bool)

(declare-fun e!1133078 () Bool)

(assert (=> b!1770691 (= e!1133078 e!1133076)))

(declare-fun res!797486 () Bool)

(assert (=> b!1770691 (=> (not res!797486) (not e!1133076))))

(declare-fun lt!685656 () Bool)

(assert (=> b!1770691 (= res!797486 (not lt!685656))))

(declare-fun b!1770692 () Bool)

(declare-fun e!1133080 () Bool)

(assert (=> b!1770692 (= e!1133080 (not lt!685656))))

(declare-fun b!1770693 () Bool)

(declare-fun res!797484 () Bool)

(assert (=> b!1770693 (=> res!797484 e!1133081)))

(assert (=> b!1770693 (= res!797484 (not (isEmpty!12304 (tail!2649 (list!7915 (charsOf!2134 (_1!10949 lt!685099)))))))))

(declare-fun b!1770694 () Bool)

(declare-fun res!797481 () Bool)

(assert (=> b!1770694 (=> res!797481 e!1133078)))

(assert (=> b!1770694 (= res!797481 e!1133079)))

(declare-fun res!797485 () Bool)

(assert (=> b!1770694 (=> (not res!797485) (not e!1133079))))

(assert (=> b!1770694 (= res!797485 lt!685656)))

(declare-fun b!1770695 () Bool)

(declare-fun res!797488 () Bool)

(assert (=> b!1770695 (=> res!797488 e!1133078)))

(assert (=> b!1770695 (= res!797488 (not ((_ is ElementMatch!4813) (rulesRegex!841 thiss!24550 rules!3447))))))

(assert (=> b!1770695 (= e!1133080 e!1133078)))

(declare-fun b!1770696 () Bool)

(assert (=> b!1770696 (= e!1133081 (not (= (head!4114 (list!7915 (charsOf!2134 (_1!10949 lt!685099)))) (c!288084 (rulesRegex!841 thiss!24550 rules!3447)))))))

(declare-fun b!1770697 () Bool)

(declare-fun e!1133077 () Bool)

(assert (=> b!1770697 (= e!1133077 (= lt!685656 call!110985))))

(declare-fun b!1770698 () Bool)

(assert (=> b!1770698 (= e!1133077 e!1133080)))

(declare-fun c!288314 () Bool)

(assert (=> b!1770698 (= c!288314 ((_ is EmptyLang!4813) (rulesRegex!841 thiss!24550 rules!3447)))))

(declare-fun b!1770699 () Bool)

(declare-fun res!797482 () Bool)

(assert (=> b!1770699 (=> (not res!797482) (not e!1133079))))

(assert (=> b!1770699 (= res!797482 (not call!110985))))

(declare-fun d!540975 () Bool)

(assert (=> d!540975 e!1133077))

(declare-fun c!288316 () Bool)

(assert (=> d!540975 (= c!288316 ((_ is EmptyExpr!4813) (rulesRegex!841 thiss!24550 rules!3447)))))

(declare-fun e!1133075 () Bool)

(assert (=> d!540975 (= lt!685656 e!1133075)))

(declare-fun c!288315 () Bool)

(assert (=> d!540975 (= c!288315 (isEmpty!12304 (list!7915 (charsOf!2134 (_1!10949 lt!685099)))))))

(assert (=> d!540975 (validRegex!1949 (rulesRegex!841 thiss!24550 rules!3447))))

(assert (=> d!540975 (= (matchR!2286 (rulesRegex!841 thiss!24550 rules!3447) (list!7915 (charsOf!2134 (_1!10949 lt!685099)))) lt!685656)))

(declare-fun b!1770700 () Bool)

(assert (=> b!1770700 (= e!1133075 (matchR!2286 (derivativeStep!1244 (rulesRegex!841 thiss!24550 rules!3447) (head!4114 (list!7915 (charsOf!2134 (_1!10949 lt!685099))))) (tail!2649 (list!7915 (charsOf!2134 (_1!10949 lt!685099))))))))

(declare-fun b!1770701 () Bool)

(assert (=> b!1770701 (= e!1133075 (nullable!1475 (rulesRegex!841 thiss!24550 rules!3447)))))

(assert (= (and d!540975 c!288315) b!1770701))

(assert (= (and d!540975 (not c!288315)) b!1770700))

(assert (= (and d!540975 c!288316) b!1770697))

(assert (= (and d!540975 (not c!288316)) b!1770698))

(assert (= (and b!1770698 c!288314) b!1770692))

(assert (= (and b!1770698 (not c!288314)) b!1770695))

(assert (= (and b!1770695 (not res!797488)) b!1770694))

(assert (= (and b!1770694 res!797485) b!1770699))

(assert (= (and b!1770699 res!797482) b!1770688))

(assert (= (and b!1770688 res!797487) b!1770689))

(assert (= (and b!1770694 (not res!797481)) b!1770691))

(assert (= (and b!1770691 res!797486) b!1770690))

(assert (= (and b!1770690 (not res!797483)) b!1770693))

(assert (= (and b!1770693 (not res!797484)) b!1770696))

(assert (= (or b!1770697 b!1770690 b!1770699) bm!110980))

(assert (=> b!1770700 m!2187909))

(assert (=> b!1770700 m!2188829))

(assert (=> b!1770700 m!2187851))

(assert (=> b!1770700 m!2188829))

(declare-fun m!2189669 () Bool)

(assert (=> b!1770700 m!2189669))

(assert (=> b!1770700 m!2187909))

(assert (=> b!1770700 m!2188833))

(assert (=> b!1770700 m!2189669))

(assert (=> b!1770700 m!2188833))

(declare-fun m!2189671 () Bool)

(assert (=> b!1770700 m!2189671))

(assert (=> d!540975 m!2187909))

(assert (=> d!540975 m!2188837))

(assert (=> d!540975 m!2187851))

(declare-fun m!2189673 () Bool)

(assert (=> d!540975 m!2189673))

(assert (=> b!1770689 m!2187909))

(assert (=> b!1770689 m!2188829))

(assert (=> bm!110980 m!2187909))

(assert (=> bm!110980 m!2188837))

(assert (=> b!1770693 m!2187909))

(assert (=> b!1770693 m!2188833))

(assert (=> b!1770693 m!2188833))

(assert (=> b!1770693 m!2188841))

(assert (=> b!1770688 m!2187909))

(assert (=> b!1770688 m!2188833))

(assert (=> b!1770688 m!2188833))

(assert (=> b!1770688 m!2188841))

(assert (=> b!1770701 m!2187851))

(declare-fun m!2189675 () Bool)

(assert (=> b!1770701 m!2189675))

(assert (=> b!1770696 m!2187909))

(assert (=> b!1770696 m!2188829))

(assert (=> d!540557 d!540975))

(declare-fun d!540977 () Bool)

(assert (=> d!540977 (matchR!2286 (rulesRegex!841 thiss!24550 rules!3447) (list!7915 (charsOf!2134 (_1!10949 lt!685099))))))

(assert (=> d!540977 true))

(declare-fun _$92!264 () Unit!33686)

(assert (=> d!540977 (= (choose!11006 thiss!24550 rules!3447 lt!685092 (_1!10949 lt!685099) (rule!5527 (_1!10949 lt!685099)) (_2!10949 lt!685099)) _$92!264)))

(declare-fun bs!404615 () Bool)

(assert (= bs!404615 d!540977))

(assert (=> bs!404615 m!2187851))

(assert (=> bs!404615 m!2187865))

(assert (=> bs!404615 m!2187865))

(assert (=> bs!404615 m!2187909))

(assert (=> bs!404615 m!2187851))

(assert (=> bs!404615 m!2187909))

(assert (=> bs!404615 m!2188577))

(assert (=> d!540557 d!540977))

(assert (=> d!540557 d!540461))

(assert (=> d!540557 d!540383))

(declare-fun d!540979 () Bool)

(assert (=> d!540979 (= (isEmpty!12304 (list!7915 (charsOf!2134 (_1!10949 lt!685099)))) ((_ is Nil!19490) (list!7915 (charsOf!2134 (_1!10949 lt!685099)))))))

(assert (=> bm!110935 d!540979))

(declare-fun bs!404616 () Bool)

(declare-fun d!540981 () Bool)

(assert (= bs!404616 (and d!540981 b!1769462)))

(declare-fun lambda!70411 () Int)

(assert (=> bs!404616 (= lambda!70411 lambda!70380)))

(declare-fun bs!404617 () Bool)

(assert (= bs!404617 (and d!540981 d!540639)))

(assert (=> bs!404617 (= lambda!70411 lambda!70395)))

(declare-fun bs!404618 () Bool)

(assert (= bs!404618 (and d!540981 d!540915)))

(assert (=> bs!404618 (= (and (= (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (toChars!4867 (transformation!3485 (h!24892 rules!3447)))) (= (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (toValue!5008 (transformation!3485 (h!24892 rules!3447))))) (= lambda!70411 lambda!70410))))

(assert (=> d!540981 true))

(assert (=> d!540981 (< (dynLambda!9460 order!12447 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) (dynLambda!9459 order!12445 lambda!70411))))

(assert (=> d!540981 true))

(assert (=> d!540981 (< (dynLambda!9458 order!12443 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) (dynLambda!9459 order!12445 lambda!70411))))

(assert (=> d!540981 (= (semiInverseModEq!1390 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) (Forall!852 lambda!70411))))

(declare-fun bs!404619 () Bool)

(assert (= bs!404619 d!540981))

(declare-fun m!2189677 () Bool)

(assert (=> bs!404619 m!2189677))

(assert (=> d!540643 d!540981))

(declare-fun d!540983 () Bool)

(declare-fun lt!685657 () Int)

(assert (=> d!540983 (>= lt!685657 0)))

(declare-fun e!1133082 () Int)

(assert (=> d!540983 (= lt!685657 e!1133082)))

(declare-fun c!288317 () Bool)

(assert (=> d!540983 (= c!288317 ((_ is Nil!19490) lt!685092))))

(assert (=> d!540983 (= (size!15479 lt!685092) lt!685657)))

(declare-fun b!1770702 () Bool)

(assert (=> b!1770702 (= e!1133082 0)))

(declare-fun b!1770703 () Bool)

(assert (=> b!1770703 (= e!1133082 (+ 1 (size!15479 (t!165169 lt!685092))))))

(assert (= (and d!540983 c!288317) b!1770702))

(assert (= (and d!540983 (not c!288317)) b!1770703))

(declare-fun m!2189679 () Bool)

(assert (=> b!1770703 m!2189679))

(assert (=> b!1769541 d!540983))

(declare-fun d!540985 () Bool)

(declare-fun lt!685658 () Int)

(assert (=> d!540985 (>= lt!685658 0)))

(declare-fun e!1133083 () Int)

(assert (=> d!540985 (= lt!685658 e!1133083)))

(declare-fun c!288318 () Bool)

(assert (=> d!540985 (= c!288318 ((_ is Nil!19490) (++!5309 lt!685116 (Cons!19490 (head!4114 lt!685095) Nil!19490))))))

(assert (=> d!540985 (= (size!15479 (++!5309 lt!685116 (Cons!19490 (head!4114 lt!685095) Nil!19490))) lt!685658)))

(declare-fun b!1770704 () Bool)

(assert (=> b!1770704 (= e!1133083 0)))

(declare-fun b!1770705 () Bool)

(assert (=> b!1770705 (= e!1133083 (+ 1 (size!15479 (t!165169 (++!5309 lt!685116 (Cons!19490 (head!4114 lt!685095) Nil!19490))))))))

(assert (= (and d!540985 c!288318) b!1770704))

(assert (= (and d!540985 (not c!288318)) b!1770705))

(declare-fun m!2189681 () Bool)

(assert (=> b!1770705 m!2189681))

(assert (=> b!1769541 d!540985))

(declare-fun b!1770706 () Bool)

(declare-fun e!1133084 () List!19560)

(assert (=> b!1770706 (= e!1133084 lt!685369)))

(declare-fun b!1770707 () Bool)

(assert (=> b!1770707 (= e!1133084 (Cons!19490 (h!24891 lt!685116) (++!5309 (t!165169 lt!685116) lt!685369)))))

(declare-fun d!540987 () Bool)

(declare-fun e!1133085 () Bool)

(assert (=> d!540987 e!1133085))

(declare-fun res!797490 () Bool)

(assert (=> d!540987 (=> (not res!797490) (not e!1133085))))

(declare-fun lt!685659 () List!19560)

(assert (=> d!540987 (= res!797490 (= (content!2826 lt!685659) ((_ map or) (content!2826 lt!685116) (content!2826 lt!685369))))))

(assert (=> d!540987 (= lt!685659 e!1133084)))

(declare-fun c!288319 () Bool)

(assert (=> d!540987 (= c!288319 ((_ is Nil!19490) lt!685116))))

(assert (=> d!540987 (= (++!5309 lt!685116 lt!685369) lt!685659)))

(declare-fun b!1770709 () Bool)

(assert (=> b!1770709 (= e!1133085 (or (not (= lt!685369 Nil!19490)) (= lt!685659 lt!685116)))))

(declare-fun b!1770708 () Bool)

(declare-fun res!797489 () Bool)

(assert (=> b!1770708 (=> (not res!797489) (not e!1133085))))

(assert (=> b!1770708 (= res!797489 (= (size!15479 lt!685659) (+ (size!15479 lt!685116) (size!15479 lt!685369))))))

(assert (= (and d!540987 c!288319) b!1770706))

(assert (= (and d!540987 (not c!288319)) b!1770707))

(assert (= (and d!540987 res!797490) b!1770708))

(assert (= (and b!1770708 res!797489) b!1770709))

(declare-fun m!2189683 () Bool)

(assert (=> b!1770707 m!2189683))

(declare-fun m!2189685 () Bool)

(assert (=> d!540987 m!2189685))

(assert (=> d!540987 m!2188035))

(declare-fun m!2189687 () Bool)

(assert (=> d!540987 m!2189687))

(declare-fun m!2189689 () Bool)

(assert (=> b!1770708 m!2189689))

(assert (=> b!1770708 m!2188041))

(declare-fun m!2189691 () Bool)

(assert (=> b!1770708 m!2189691))

(assert (=> d!540551 d!540987))

(assert (=> d!540551 d!540983))

(declare-fun d!540989 () Bool)

(declare-fun lt!685660 () Int)

(assert (=> d!540989 (>= lt!685660 0)))

(declare-fun e!1133086 () Int)

(assert (=> d!540989 (= lt!685660 e!1133086)))

(declare-fun c!288320 () Bool)

(assert (=> d!540989 (= c!288320 ((_ is Nil!19490) lt!685116))))

(assert (=> d!540989 (= (size!15479 lt!685116) lt!685660)))

(declare-fun b!1770710 () Bool)

(assert (=> b!1770710 (= e!1133086 0)))

(declare-fun b!1770711 () Bool)

(assert (=> b!1770711 (= e!1133086 (+ 1 (size!15479 (t!165169 lt!685116))))))

(assert (= (and d!540989 c!288320) b!1770710))

(assert (= (and d!540989 (not c!288320)) b!1770711))

(declare-fun m!2189693 () Bool)

(assert (=> b!1770711 m!2189693))

(assert (=> d!540551 d!540989))

(declare-fun b!1770712 () Bool)

(declare-fun e!1133087 () List!19560)

(assert (=> b!1770712 (= e!1133087 (Cons!19490 (head!4114 lt!685095) Nil!19490))))

(declare-fun b!1770713 () Bool)

(assert (=> b!1770713 (= e!1133087 (Cons!19490 (h!24891 (t!165169 lt!685116)) (++!5309 (t!165169 (t!165169 lt!685116)) (Cons!19490 (head!4114 lt!685095) Nil!19490))))))

(declare-fun d!540991 () Bool)

(declare-fun e!1133088 () Bool)

(assert (=> d!540991 e!1133088))

(declare-fun res!797492 () Bool)

(assert (=> d!540991 (=> (not res!797492) (not e!1133088))))

(declare-fun lt!685661 () List!19560)

(assert (=> d!540991 (= res!797492 (= (content!2826 lt!685661) ((_ map or) (content!2826 (t!165169 lt!685116)) (content!2826 (Cons!19490 (head!4114 lt!685095) Nil!19490)))))))

(assert (=> d!540991 (= lt!685661 e!1133087)))

(declare-fun c!288321 () Bool)

(assert (=> d!540991 (= c!288321 ((_ is Nil!19490) (t!165169 lt!685116)))))

(assert (=> d!540991 (= (++!5309 (t!165169 lt!685116) (Cons!19490 (head!4114 lt!685095) Nil!19490)) lt!685661)))

(declare-fun b!1770715 () Bool)

(assert (=> b!1770715 (= e!1133088 (or (not (= (Cons!19490 (head!4114 lt!685095) Nil!19490) Nil!19490)) (= lt!685661 (t!165169 lt!685116))))))

(declare-fun b!1770714 () Bool)

(declare-fun res!797491 () Bool)

(assert (=> b!1770714 (=> (not res!797491) (not e!1133088))))

(assert (=> b!1770714 (= res!797491 (= (size!15479 lt!685661) (+ (size!15479 (t!165169 lt!685116)) (size!15479 (Cons!19490 (head!4114 lt!685095) Nil!19490)))))))

(assert (= (and d!540991 c!288321) b!1770712))

(assert (= (and d!540991 (not c!288321)) b!1770713))

(assert (= (and d!540991 res!797492) b!1770714))

(assert (= (and b!1770714 res!797491) b!1770715))

(declare-fun m!2189695 () Bool)

(assert (=> b!1770713 m!2189695))

(declare-fun m!2189697 () Bool)

(assert (=> d!540991 m!2189697))

(declare-fun m!2189699 () Bool)

(assert (=> d!540991 m!2189699))

(assert (=> d!540991 m!2188037))

(declare-fun m!2189701 () Bool)

(assert (=> b!1770714 m!2189701))

(assert (=> b!1770714 m!2189693))

(assert (=> b!1770714 m!2188043))

(assert (=> b!1769551 d!540991))

(declare-fun bs!404625 () Bool)

(declare-fun d!540993 () Bool)

(assert (= bs!404625 (and d!540993 d!540461)))

(declare-fun lambda!70419 () Int)

(assert (=> bs!404625 (= lambda!70419 lambda!70386)))

(declare-fun lambda!70420 () Int)

(declare-fun forall!4279 (List!19563 Int) Bool)

(assert (=> d!540993 (forall!4279 (map!4020 rules!3447 lambda!70419) lambda!70420)))

(declare-fun lt!685671 () Unit!33686)

(declare-fun e!1133101 () Unit!33686)

(assert (=> d!540993 (= lt!685671 e!1133101)))

(declare-fun c!288328 () Bool)

(assert (=> d!540993 (= c!288328 ((_ is Nil!19491) rules!3447))))

(assert (=> d!540993 (rulesValidInductive!1180 thiss!24550 rules!3447)))

(assert (=> d!540993 (= (lemma!398 rules!3447 thiss!24550 rules!3447) lt!685671)))

(declare-fun b!1770736 () Bool)

(declare-fun Unit!33699 () Unit!33686)

(assert (=> b!1770736 (= e!1133101 Unit!33699)))

(declare-fun b!1770737 () Bool)

(declare-fun Unit!33700 () Unit!33686)

(assert (=> b!1770737 (= e!1133101 Unit!33700)))

(declare-fun lt!685672 () Unit!33686)

(assert (=> b!1770737 (= lt!685672 (lemma!398 rules!3447 thiss!24550 (t!165170 rules!3447)))))

(assert (= (and d!540993 c!288328) b!1770736))

(assert (= (and d!540993 (not c!288328)) b!1770737))

(declare-fun m!2189729 () Bool)

(assert (=> d!540993 m!2189729))

(assert (=> d!540993 m!2189729))

(declare-fun m!2189731 () Bool)

(assert (=> d!540993 m!2189731))

(assert (=> d!540993 m!2188323))

(declare-fun m!2189733 () Bool)

(assert (=> b!1770737 m!2189733))

(assert (=> d!540461 d!540993))

(declare-fun bs!404632 () Bool)

(declare-fun d!541015 () Bool)

(assert (= bs!404632 (and d!541015 d!540993)))

(declare-fun lambda!70424 () Int)

(assert (=> bs!404632 (= lambda!70424 lambda!70420)))

(declare-fun b!1770783 () Bool)

(declare-fun e!1133133 () Regex!4813)

(assert (=> b!1770783 (= e!1133133 (Union!4813 (h!24894 (map!4020 rules!3447 lambda!70386)) (generalisedUnion!406 (t!165232 (map!4020 rules!3447 lambda!70386)))))))

(declare-fun b!1770784 () Bool)

(assert (=> b!1770784 (= e!1133133 EmptyLang!4813)))

(declare-fun b!1770785 () Bool)

(declare-fun e!1133134 () Bool)

(declare-fun e!1133130 () Bool)

(assert (=> b!1770785 (= e!1133134 e!1133130)))

(declare-fun c!288342 () Bool)

(declare-fun isEmpty!12312 (List!19563) Bool)

(assert (=> b!1770785 (= c!288342 (isEmpty!12312 (map!4020 rules!3447 lambda!70386)))))

(declare-fun b!1770786 () Bool)

(declare-fun e!1133129 () Bool)

(declare-fun lt!685682 () Regex!4813)

(declare-fun isUnion!104 (Regex!4813) Bool)

(assert (=> b!1770786 (= e!1133129 (isUnion!104 lt!685682))))

(declare-fun b!1770787 () Bool)

(declare-fun e!1133132 () Regex!4813)

(assert (=> b!1770787 (= e!1133132 e!1133133)))

(declare-fun c!288343 () Bool)

(assert (=> b!1770787 (= c!288343 ((_ is Cons!19493) (map!4020 rules!3447 lambda!70386)))))

(declare-fun b!1770789 () Bool)

(declare-fun e!1133131 () Bool)

(assert (=> b!1770789 (= e!1133131 (isEmpty!12312 (t!165232 (map!4020 rules!3447 lambda!70386))))))

(declare-fun b!1770790 () Bool)

(declare-fun isEmptyLang!104 (Regex!4813) Bool)

(assert (=> b!1770790 (= e!1133130 (isEmptyLang!104 lt!685682))))

(declare-fun b!1770791 () Bool)

(assert (=> b!1770791 (= e!1133130 e!1133129)))

(declare-fun c!288345 () Bool)

(declare-fun tail!2650 (List!19563) List!19563)

(assert (=> b!1770791 (= c!288345 (isEmpty!12312 (tail!2650 (map!4020 rules!3447 lambda!70386))))))

(declare-fun b!1770792 () Bool)

(declare-fun head!4117 (List!19563) Regex!4813)

(assert (=> b!1770792 (= e!1133129 (= lt!685682 (head!4117 (map!4020 rules!3447 lambda!70386))))))

(assert (=> d!541015 e!1133134))

(declare-fun res!797520 () Bool)

(assert (=> d!541015 (=> (not res!797520) (not e!1133134))))

(assert (=> d!541015 (= res!797520 (validRegex!1949 lt!685682))))

(assert (=> d!541015 (= lt!685682 e!1133132)))

(declare-fun c!288344 () Bool)

(assert (=> d!541015 (= c!288344 e!1133131)))

(declare-fun res!797521 () Bool)

(assert (=> d!541015 (=> (not res!797521) (not e!1133131))))

(assert (=> d!541015 (= res!797521 ((_ is Cons!19493) (map!4020 rules!3447 lambda!70386)))))

(assert (=> d!541015 (forall!4279 (map!4020 rules!3447 lambda!70386) lambda!70424)))

(assert (=> d!541015 (= (generalisedUnion!406 (map!4020 rules!3447 lambda!70386)) lt!685682)))

(declare-fun b!1770788 () Bool)

(assert (=> b!1770788 (= e!1133132 (h!24894 (map!4020 rules!3447 lambda!70386)))))

(assert (= (and d!541015 res!797521) b!1770789))

(assert (= (and d!541015 c!288344) b!1770788))

(assert (= (and d!541015 (not c!288344)) b!1770787))

(assert (= (and b!1770787 c!288343) b!1770783))

(assert (= (and b!1770787 (not c!288343)) b!1770784))

(assert (= (and d!541015 res!797520) b!1770785))

(assert (= (and b!1770785 c!288342) b!1770790))

(assert (= (and b!1770785 (not c!288342)) b!1770791))

(assert (= (and b!1770791 c!288345) b!1770792))

(assert (= (and b!1770791 (not c!288345)) b!1770786))

(declare-fun m!2189789 () Bool)

(assert (=> d!541015 m!2189789))

(assert (=> d!541015 m!2188199))

(declare-fun m!2189791 () Bool)

(assert (=> d!541015 m!2189791))

(assert (=> b!1770792 m!2188199))

(declare-fun m!2189793 () Bool)

(assert (=> b!1770792 m!2189793))

(declare-fun m!2189795 () Bool)

(assert (=> b!1770783 m!2189795))

(declare-fun m!2189797 () Bool)

(assert (=> b!1770786 m!2189797))

(assert (=> b!1770791 m!2188199))

(declare-fun m!2189799 () Bool)

(assert (=> b!1770791 m!2189799))

(assert (=> b!1770791 m!2189799))

(declare-fun m!2189801 () Bool)

(assert (=> b!1770791 m!2189801))

(declare-fun m!2189803 () Bool)

(assert (=> b!1770789 m!2189803))

(declare-fun m!2189805 () Bool)

(assert (=> b!1770790 m!2189805))

(assert (=> b!1770785 m!2188199))

(declare-fun m!2189807 () Bool)

(assert (=> b!1770785 m!2189807))

(assert (=> d!540461 d!541015))

(declare-fun d!541039 () Bool)

(declare-fun lt!685686 () List!19563)

(declare-fun size!15484 (List!19563) Int)

(declare-fun size!15485 (List!19561) Int)

(assert (=> d!541039 (= (size!15484 lt!685686) (size!15485 rules!3447))))

(declare-fun e!1133144 () List!19563)

(assert (=> d!541039 (= lt!685686 e!1133144)))

(declare-fun c!288351 () Bool)

(assert (=> d!541039 (= c!288351 ((_ is Nil!19491) rules!3447))))

(assert (=> d!541039 (= (map!4020 rules!3447 lambda!70386) lt!685686)))

(declare-fun b!1770811 () Bool)

(assert (=> b!1770811 (= e!1133144 Nil!19493)))

(declare-fun b!1770812 () Bool)

(declare-fun $colon$colon!435 (List!19563 Regex!4813) List!19563)

(declare-fun dynLambda!9467 (Int Rule!6770) Regex!4813)

(assert (=> b!1770812 (= e!1133144 ($colon$colon!435 (map!4020 (t!165170 rules!3447) lambda!70386) (dynLambda!9467 lambda!70386 (h!24892 rules!3447))))))

(assert (= (and d!541039 c!288351) b!1770811))

(assert (= (and d!541039 (not c!288351)) b!1770812))

(declare-fun b_lambda!57659 () Bool)

(assert (=> (not b_lambda!57659) (not b!1770812)))

(declare-fun m!2189823 () Bool)

(assert (=> d!541039 m!2189823))

(declare-fun m!2189825 () Bool)

(assert (=> d!541039 m!2189825))

(declare-fun m!2189827 () Bool)

(assert (=> b!1770812 m!2189827))

(declare-fun m!2189829 () Bool)

(assert (=> b!1770812 m!2189829))

(assert (=> b!1770812 m!2189827))

(assert (=> b!1770812 m!2189829))

(declare-fun m!2189831 () Bool)

(assert (=> b!1770812 m!2189831))

(assert (=> d!540461 d!541039))

(declare-fun d!541043 () Bool)

(assert (=> d!541043 (= (get!5952 lt!685429) (v!25466 lt!685429))))

(assert (=> b!1770160 d!541043))

(declare-fun d!541045 () Bool)

(declare-fun lt!685687 () Int)

(assert (=> d!541045 (>= lt!685687 0)))

(declare-fun e!1133145 () Int)

(assert (=> d!541045 (= lt!685687 e!1133145)))

(declare-fun c!288352 () Bool)

(assert (=> d!541045 (= c!288352 ((_ is Nil!19490) lt!685178))))

(assert (=> d!541045 (= (size!15479 lt!685178) lt!685687)))

(declare-fun b!1770813 () Bool)

(assert (=> b!1770813 (= e!1133145 0)))

(declare-fun b!1770814 () Bool)

(assert (=> b!1770814 (= e!1133145 (+ 1 (size!15479 (t!165169 lt!685178))))))

(assert (= (and d!541045 c!288352) b!1770813))

(assert (= (and d!541045 (not c!288352)) b!1770814))

(declare-fun m!2189833 () Bool)

(assert (=> b!1770814 m!2189833))

(assert (=> b!1769728 d!541045))

(assert (=> b!1769728 d!540989))

(declare-fun d!541047 () Bool)

(declare-fun lt!685688 () Int)

(assert (=> d!541047 (>= lt!685688 0)))

(declare-fun e!1133146 () Int)

(assert (=> d!541047 (= lt!685688 e!1133146)))

(declare-fun c!288353 () Bool)

(assert (=> d!541047 (= c!288353 ((_ is Nil!19490) (Cons!19490 (head!4114 suffix!1421) Nil!19490)))))

(assert (=> d!541047 (= (size!15479 (Cons!19490 (head!4114 suffix!1421) Nil!19490)) lt!685688)))

(declare-fun b!1770815 () Bool)

(assert (=> b!1770815 (= e!1133146 0)))

(declare-fun b!1770816 () Bool)

(assert (=> b!1770816 (= e!1133146 (+ 1 (size!15479 (t!165169 (Cons!19490 (head!4114 suffix!1421) Nil!19490)))))))

(assert (= (and d!541047 c!288353) b!1770815))

(assert (= (and d!541047 (not c!288353)) b!1770816))

(declare-fun m!2189835 () Bool)

(assert (=> b!1770816 m!2189835))

(assert (=> b!1769728 d!541047))

(declare-fun b!1770817 () Bool)

(declare-fun res!797536 () Bool)

(declare-fun e!1133151 () Bool)

(assert (=> b!1770817 (=> (not res!797536) (not e!1133151))))

(assert (=> b!1770817 (= res!797536 (isEmpty!12304 (tail!2649 (tail!2649 lt!685116))))))

(declare-fun b!1770818 () Bool)

(assert (=> b!1770818 (= e!1133151 (= (head!4114 (tail!2649 lt!685116)) (c!288084 (derivativeStep!1244 (regex!3485 rule!422) (head!4114 lt!685116)))))))

(declare-fun bm!110986 () Bool)

(declare-fun call!110991 () Bool)

(assert (=> bm!110986 (= call!110991 (isEmpty!12304 (tail!2649 lt!685116)))))

(declare-fun b!1770819 () Bool)

(declare-fun e!1133148 () Bool)

(declare-fun e!1133153 () Bool)

(assert (=> b!1770819 (= e!1133148 e!1133153)))

(declare-fun res!797532 () Bool)

(assert (=> b!1770819 (=> res!797532 e!1133153)))

(assert (=> b!1770819 (= res!797532 call!110991)))

(declare-fun b!1770820 () Bool)

(declare-fun e!1133150 () Bool)

(assert (=> b!1770820 (= e!1133150 e!1133148)))

(declare-fun res!797535 () Bool)

(assert (=> b!1770820 (=> (not res!797535) (not e!1133148))))

(declare-fun lt!685689 () Bool)

(assert (=> b!1770820 (= res!797535 (not lt!685689))))

(declare-fun b!1770821 () Bool)

(declare-fun e!1133152 () Bool)

(assert (=> b!1770821 (= e!1133152 (not lt!685689))))

(declare-fun b!1770822 () Bool)

(declare-fun res!797533 () Bool)

(assert (=> b!1770822 (=> res!797533 e!1133153)))

(assert (=> b!1770822 (= res!797533 (not (isEmpty!12304 (tail!2649 (tail!2649 lt!685116)))))))

(declare-fun b!1770823 () Bool)

(declare-fun res!797530 () Bool)

(assert (=> b!1770823 (=> res!797530 e!1133150)))

(assert (=> b!1770823 (= res!797530 e!1133151)))

(declare-fun res!797534 () Bool)

(assert (=> b!1770823 (=> (not res!797534) (not e!1133151))))

(assert (=> b!1770823 (= res!797534 lt!685689)))

(declare-fun b!1770824 () Bool)

(declare-fun res!797537 () Bool)

(assert (=> b!1770824 (=> res!797537 e!1133150)))

(assert (=> b!1770824 (= res!797537 (not ((_ is ElementMatch!4813) (derivativeStep!1244 (regex!3485 rule!422) (head!4114 lt!685116)))))))

(assert (=> b!1770824 (= e!1133152 e!1133150)))

(declare-fun b!1770825 () Bool)

(assert (=> b!1770825 (= e!1133153 (not (= (head!4114 (tail!2649 lt!685116)) (c!288084 (derivativeStep!1244 (regex!3485 rule!422) (head!4114 lt!685116))))))))

(declare-fun b!1770826 () Bool)

(declare-fun e!1133149 () Bool)

(assert (=> b!1770826 (= e!1133149 (= lt!685689 call!110991))))

(declare-fun b!1770827 () Bool)

(assert (=> b!1770827 (= e!1133149 e!1133152)))

(declare-fun c!288354 () Bool)

(assert (=> b!1770827 (= c!288354 ((_ is EmptyLang!4813) (derivativeStep!1244 (regex!3485 rule!422) (head!4114 lt!685116))))))

(declare-fun b!1770828 () Bool)

(declare-fun res!797531 () Bool)

(assert (=> b!1770828 (=> (not res!797531) (not e!1133151))))

(assert (=> b!1770828 (= res!797531 (not call!110991))))

(declare-fun d!541049 () Bool)

(assert (=> d!541049 e!1133149))

(declare-fun c!288356 () Bool)

(assert (=> d!541049 (= c!288356 ((_ is EmptyExpr!4813) (derivativeStep!1244 (regex!3485 rule!422) (head!4114 lt!685116))))))

(declare-fun e!1133147 () Bool)

(assert (=> d!541049 (= lt!685689 e!1133147)))

(declare-fun c!288355 () Bool)

(assert (=> d!541049 (= c!288355 (isEmpty!12304 (tail!2649 lt!685116)))))

(assert (=> d!541049 (validRegex!1949 (derivativeStep!1244 (regex!3485 rule!422) (head!4114 lt!685116)))))

(assert (=> d!541049 (= (matchR!2286 (derivativeStep!1244 (regex!3485 rule!422) (head!4114 lt!685116)) (tail!2649 lt!685116)) lt!685689)))

(declare-fun b!1770829 () Bool)

(assert (=> b!1770829 (= e!1133147 (matchR!2286 (derivativeStep!1244 (derivativeStep!1244 (regex!3485 rule!422) (head!4114 lt!685116)) (head!4114 (tail!2649 lt!685116))) (tail!2649 (tail!2649 lt!685116))))))

(declare-fun b!1770830 () Bool)

(assert (=> b!1770830 (= e!1133147 (nullable!1475 (derivativeStep!1244 (regex!3485 rule!422) (head!4114 lt!685116))))))

(assert (= (and d!541049 c!288355) b!1770830))

(assert (= (and d!541049 (not c!288355)) b!1770829))

(assert (= (and d!541049 c!288356) b!1770826))

(assert (= (and d!541049 (not c!288356)) b!1770827))

(assert (= (and b!1770827 c!288354) b!1770821))

(assert (= (and b!1770827 (not c!288354)) b!1770824))

(assert (= (and b!1770824 (not res!797537)) b!1770823))

(assert (= (and b!1770823 res!797534) b!1770828))

(assert (= (and b!1770828 res!797531) b!1770817))

(assert (= (and b!1770817 res!797536) b!1770818))

(assert (= (and b!1770823 (not res!797530)) b!1770820))

(assert (= (and b!1770820 res!797535) b!1770819))

(assert (= (and b!1770819 (not res!797532)) b!1770822))

(assert (= (and b!1770822 (not res!797533)) b!1770825))

(assert (= (or b!1770826 b!1770819 b!1770828) bm!110986))

(assert (=> b!1770829 m!2188101))

(declare-fun m!2189837 () Bool)

(assert (=> b!1770829 m!2189837))

(assert (=> b!1770829 m!2188589))

(assert (=> b!1770829 m!2189837))

(declare-fun m!2189839 () Bool)

(assert (=> b!1770829 m!2189839))

(assert (=> b!1770829 m!2188101))

(declare-fun m!2189841 () Bool)

(assert (=> b!1770829 m!2189841))

(assert (=> b!1770829 m!2189839))

(assert (=> b!1770829 m!2189841))

(declare-fun m!2189843 () Bool)

(assert (=> b!1770829 m!2189843))

(assert (=> d!541049 m!2188101))

(assert (=> d!541049 m!2188109))

(assert (=> d!541049 m!2188589))

(declare-fun m!2189845 () Bool)

(assert (=> d!541049 m!2189845))

(assert (=> b!1770818 m!2188101))

(assert (=> b!1770818 m!2189837))

(assert (=> bm!110986 m!2188101))

(assert (=> bm!110986 m!2188109))

(assert (=> b!1770822 m!2188101))

(assert (=> b!1770822 m!2189841))

(assert (=> b!1770822 m!2189841))

(declare-fun m!2189847 () Bool)

(assert (=> b!1770822 m!2189847))

(assert (=> b!1770817 m!2188101))

(assert (=> b!1770817 m!2189841))

(assert (=> b!1770817 m!2189841))

(assert (=> b!1770817 m!2189847))

(assert (=> b!1770830 m!2188589))

(declare-fun m!2189849 () Bool)

(assert (=> b!1770830 m!2189849))

(assert (=> b!1770825 m!2188101))

(assert (=> b!1770825 m!2189837))

(assert (=> b!1769974 d!541049))

(declare-fun d!541051 () Bool)

(declare-fun lt!685697 () Regex!4813)

(assert (=> d!541051 (validRegex!1949 lt!685697)))

(declare-fun e!1133184 () Regex!4813)

(assert (=> d!541051 (= lt!685697 e!1133184)))

(declare-fun c!288385 () Bool)

(assert (=> d!541051 (= c!288385 (or ((_ is EmptyExpr!4813) (regex!3485 rule!422)) ((_ is EmptyLang!4813) (regex!3485 rule!422))))))

(assert (=> d!541051 (validRegex!1949 (regex!3485 rule!422))))

(assert (=> d!541051 (= (derivativeStep!1244 (regex!3485 rule!422) (head!4114 lt!685116)) lt!685697)))

(declare-fun b!1770890 () Bool)

(declare-fun c!288387 () Bool)

(assert (=> b!1770890 (= c!288387 (nullable!1475 (regOne!10138 (regex!3485 rule!422))))))

(declare-fun e!1133188 () Regex!4813)

(declare-fun e!1133187 () Regex!4813)

(assert (=> b!1770890 (= e!1133188 e!1133187)))

(declare-fun bm!111007 () Bool)

(declare-fun c!288388 () Bool)

(declare-fun call!111013 () Regex!4813)

(assert (=> bm!111007 (= call!111013 (derivativeStep!1244 (ite c!288388 (regOne!10139 (regex!3485 rule!422)) (regOne!10138 (regex!3485 rule!422))) (head!4114 lt!685116)))))

(declare-fun b!1770891 () Bool)

(assert (=> b!1770891 (= c!288388 ((_ is Union!4813) (regex!3485 rule!422)))))

(declare-fun e!1133186 () Regex!4813)

(declare-fun e!1133185 () Regex!4813)

(assert (=> b!1770891 (= e!1133186 e!1133185)))

(declare-fun bm!111008 () Bool)

(declare-fun call!111014 () Regex!4813)

(declare-fun call!111015 () Regex!4813)

(assert (=> bm!111008 (= call!111014 call!111015)))

(declare-fun b!1770892 () Bool)

(declare-fun call!111012 () Regex!4813)

(assert (=> b!1770892 (= e!1133187 (Union!4813 (Concat!8389 call!111012 (regTwo!10138 (regex!3485 rule!422))) EmptyLang!4813))))

(declare-fun b!1770893 () Bool)

(assert (=> b!1770893 (= e!1133185 (Union!4813 call!111013 call!111015))))

(declare-fun b!1770894 () Bool)

(assert (=> b!1770894 (= e!1133186 (ite (= (head!4114 lt!685116) (c!288084 (regex!3485 rule!422))) EmptyExpr!4813 EmptyLang!4813))))

(declare-fun b!1770895 () Bool)

(assert (=> b!1770895 (= e!1133187 (Union!4813 (Concat!8389 call!111013 (regTwo!10138 (regex!3485 rule!422))) call!111012))))

(declare-fun b!1770896 () Bool)

(assert (=> b!1770896 (= e!1133185 e!1133188)))

(declare-fun c!288386 () Bool)

(assert (=> b!1770896 (= c!288386 ((_ is Star!4813) (regex!3485 rule!422)))))

(declare-fun b!1770897 () Bool)

(assert (=> b!1770897 (= e!1133184 e!1133186)))

(declare-fun c!288389 () Bool)

(assert (=> b!1770897 (= c!288389 ((_ is ElementMatch!4813) (regex!3485 rule!422)))))

(declare-fun bm!111009 () Bool)

(assert (=> bm!111009 (= call!111015 (derivativeStep!1244 (ite c!288388 (regTwo!10139 (regex!3485 rule!422)) (ite c!288386 (reg!5142 (regex!3485 rule!422)) (ite c!288387 (regTwo!10138 (regex!3485 rule!422)) (regOne!10138 (regex!3485 rule!422))))) (head!4114 lt!685116)))))

(declare-fun b!1770898 () Bool)

(assert (=> b!1770898 (= e!1133188 (Concat!8389 call!111014 (regex!3485 rule!422)))))

(declare-fun bm!111010 () Bool)

(assert (=> bm!111010 (= call!111012 call!111014)))

(declare-fun b!1770899 () Bool)

(assert (=> b!1770899 (= e!1133184 EmptyLang!4813)))

(assert (= (and d!541051 c!288385) b!1770899))

(assert (= (and d!541051 (not c!288385)) b!1770897))

(assert (= (and b!1770897 c!288389) b!1770894))

(assert (= (and b!1770897 (not c!288389)) b!1770891))

(assert (= (and b!1770891 c!288388) b!1770893))

(assert (= (and b!1770891 (not c!288388)) b!1770896))

(assert (= (and b!1770896 c!288386) b!1770898))

(assert (= (and b!1770896 (not c!288386)) b!1770890))

(assert (= (and b!1770890 c!288387) b!1770895))

(assert (= (and b!1770890 (not c!288387)) b!1770892))

(assert (= (or b!1770895 b!1770892) bm!111010))

(assert (= (or b!1770898 bm!111010) bm!111008))

(assert (= (or b!1770893 bm!111008) bm!111009))

(assert (= (or b!1770893 b!1770895) bm!111007))

(declare-fun m!2189889 () Bool)

(assert (=> d!541051 m!2189889))

(assert (=> d!541051 m!2188593))

(declare-fun m!2189891 () Bool)

(assert (=> b!1770890 m!2189891))

(assert (=> bm!111007 m!2188097))

(declare-fun m!2189893 () Bool)

(assert (=> bm!111007 m!2189893))

(assert (=> bm!111009 m!2188097))

(declare-fun m!2189895 () Bool)

(assert (=> bm!111009 m!2189895))

(assert (=> b!1769974 d!541051))

(assert (=> b!1769974 d!540937))

(declare-fun d!541063 () Bool)

(assert (=> d!541063 (= (tail!2649 lt!685116) (t!165169 lt!685116))))

(assert (=> b!1769974 d!541063))

(declare-fun d!541065 () Bool)

(assert (=> d!541065 (= (get!5953 (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 (_1!10949 lt!685099))))) (v!25467 (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 (_1!10949 lt!685099))))))))

(assert (=> b!1769933 d!541065))

(assert (=> b!1769933 d!540545))

(declare-fun b!1770902 () Bool)

(declare-fun e!1133190 () Bool)

(assert (=> b!1770902 (= e!1133190 (isPrefix!1725 (tail!2649 (tail!2649 lt!685116)) (tail!2649 (tail!2649 lt!685092))))))

(declare-fun d!541067 () Bool)

(declare-fun e!1133191 () Bool)

(assert (=> d!541067 e!1133191))

(declare-fun res!797543 () Bool)

(assert (=> d!541067 (=> res!797543 e!1133191)))

(declare-fun lt!685698 () Bool)

(assert (=> d!541067 (= res!797543 (not lt!685698))))

(declare-fun e!1133189 () Bool)

(assert (=> d!541067 (= lt!685698 e!1133189)))

(declare-fun res!797542 () Bool)

(assert (=> d!541067 (=> res!797542 e!1133189)))

(assert (=> d!541067 (= res!797542 ((_ is Nil!19490) (tail!2649 lt!685116)))))

(assert (=> d!541067 (= (isPrefix!1725 (tail!2649 lt!685116) (tail!2649 lt!685092)) lt!685698)))

(declare-fun b!1770903 () Bool)

(assert (=> b!1770903 (= e!1133191 (>= (size!15479 (tail!2649 lt!685092)) (size!15479 (tail!2649 lt!685116))))))

(declare-fun b!1770900 () Bool)

(assert (=> b!1770900 (= e!1133189 e!1133190)))

(declare-fun res!797541 () Bool)

(assert (=> b!1770900 (=> (not res!797541) (not e!1133190))))

(assert (=> b!1770900 (= res!797541 (not ((_ is Nil!19490) (tail!2649 lt!685092))))))

(declare-fun b!1770901 () Bool)

(declare-fun res!797540 () Bool)

(assert (=> b!1770901 (=> (not res!797540) (not e!1133190))))

(assert (=> b!1770901 (= res!797540 (= (head!4114 (tail!2649 lt!685116)) (head!4114 (tail!2649 lt!685092))))))

(assert (= (and d!541067 (not res!797542)) b!1770900))

(assert (= (and b!1770900 res!797541) b!1770901))

(assert (= (and b!1770901 res!797540) b!1770902))

(assert (= (and d!541067 (not res!797543)) b!1770903))

(assert (=> b!1770902 m!2188101))

(assert (=> b!1770902 m!2189841))

(assert (=> b!1770902 m!2188013))

(declare-fun m!2189897 () Bool)

(assert (=> b!1770902 m!2189897))

(assert (=> b!1770902 m!2189841))

(assert (=> b!1770902 m!2189897))

(declare-fun m!2189899 () Bool)

(assert (=> b!1770902 m!2189899))

(assert (=> b!1770903 m!2188013))

(declare-fun m!2189901 () Bool)

(assert (=> b!1770903 m!2189901))

(assert (=> b!1770903 m!2188101))

(declare-fun m!2189903 () Bool)

(assert (=> b!1770903 m!2189903))

(assert (=> b!1770901 m!2188101))

(assert (=> b!1770901 m!2189837))

(assert (=> b!1770901 m!2188013))

(declare-fun m!2189905 () Bool)

(assert (=> b!1770901 m!2189905))

(assert (=> b!1769859 d!541067))

(assert (=> b!1769859 d!541063))

(declare-fun d!541069 () Bool)

(assert (=> d!541069 (= (tail!2649 lt!685092) (t!165169 lt!685092))))

(assert (=> b!1769859 d!541069))

(assert (=> b!1770156 d!541043))

(declare-fun d!541071 () Bool)

(declare-fun lt!685699 () Int)

(assert (=> d!541071 (>= lt!685699 0)))

(declare-fun e!1133192 () Int)

(assert (=> d!541071 (= lt!685699 e!1133192)))

(declare-fun c!288390 () Bool)

(assert (=> d!541071 (= c!288390 ((_ is Nil!19490) (originalCharacters!4299 (_1!10949 (get!5952 lt!685429)))))))

(assert (=> d!541071 (= (size!15479 (originalCharacters!4299 (_1!10949 (get!5952 lt!685429)))) lt!685699)))

(declare-fun b!1770904 () Bool)

(assert (=> b!1770904 (= e!1133192 0)))

(declare-fun b!1770905 () Bool)

(assert (=> b!1770905 (= e!1133192 (+ 1 (size!15479 (t!165169 (originalCharacters!4299 (_1!10949 (get!5952 lt!685429)))))))))

(assert (= (and d!541071 c!288390) b!1770904))

(assert (= (and d!541071 (not c!288390)) b!1770905))

(declare-fun m!2189907 () Bool)

(assert (=> b!1770905 m!2189907))

(assert (=> b!1770156 d!541071))

(declare-fun d!541073 () Bool)

(declare-fun c!288391 () Bool)

(assert (=> d!541073 (= c!288391 ((_ is Node!6483) (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))))))))

(declare-fun e!1133193 () Bool)

(assert (=> d!541073 (= (inv!25332 (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))))) e!1133193)))

(declare-fun b!1770906 () Bool)

(assert (=> b!1770906 (= e!1133193 (inv!25336 (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))))))))

(declare-fun b!1770907 () Bool)

(declare-fun e!1133194 () Bool)

(assert (=> b!1770907 (= e!1133193 e!1133194)))

(declare-fun res!797544 () Bool)

(assert (=> b!1770907 (= res!797544 (not ((_ is Leaf!9446) (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))))))))

(assert (=> b!1770907 (=> res!797544 e!1133194)))

(declare-fun b!1770908 () Bool)

(assert (=> b!1770908 (= e!1133194 (inv!25337 (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))))))))

(assert (= (and d!541073 c!288391) b!1770906))

(assert (= (and d!541073 (not c!288391)) b!1770907))

(assert (= (and b!1770907 (not res!797544)) b!1770908))

(declare-fun m!2189909 () Bool)

(assert (=> b!1770906 m!2189909))

(declare-fun m!2189911 () Bool)

(assert (=> b!1770908 m!2189911))

(assert (=> b!1770249 d!541073))

(declare-fun d!541075 () Bool)

(declare-fun c!288392 () Bool)

(assert (=> d!541075 (= c!288392 ((_ is Node!6483) (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))))))))

(declare-fun e!1133195 () Bool)

(assert (=> d!541075 (= (inv!25332 (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))))) e!1133195)))

(declare-fun b!1770909 () Bool)

(assert (=> b!1770909 (= e!1133195 (inv!25336 (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))))))))

(declare-fun b!1770910 () Bool)

(declare-fun e!1133196 () Bool)

(assert (=> b!1770910 (= e!1133195 e!1133196)))

(declare-fun res!797545 () Bool)

(assert (=> b!1770910 (= res!797545 (not ((_ is Leaf!9446) (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))))))))

(assert (=> b!1770910 (=> res!797545 e!1133196)))

(declare-fun b!1770911 () Bool)

(assert (=> b!1770911 (= e!1133196 (inv!25337 (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))))))))

(assert (= (and d!541075 c!288392) b!1770909))

(assert (= (and d!541075 (not c!288392)) b!1770910))

(assert (= (and b!1770910 (not res!797545)) b!1770911))

(declare-fun m!2189913 () Bool)

(assert (=> b!1770909 m!2189913))

(declare-fun m!2189915 () Bool)

(assert (=> b!1770911 m!2189915))

(assert (=> b!1770249 d!541075))

(assert (=> b!1769489 d!540667))

(assert (=> b!1769970 d!540937))

(declare-fun d!541077 () Bool)

(assert (=> d!541077 (= (list!7915 lt!685300) (list!7917 (c!288085 lt!685300)))))

(declare-fun bs!404634 () Bool)

(assert (= bs!404634 d!541077))

(declare-fun m!2189917 () Bool)

(assert (=> bs!404634 m!2189917))

(assert (=> d!540541 d!541077))

(declare-fun bs!404635 () Bool)

(declare-fun d!541079 () Bool)

(assert (= bs!404635 (and d!541079 d!540683)))

(declare-fun lambda!70427 () Int)

(assert (=> bs!404635 (= (= (toValue!5008 (transformation!3485 rule!422)) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) (= lambda!70427 lambda!70398))))

(assert (=> d!541079 true))

(assert (=> d!541079 (< (dynLambda!9458 order!12443 (toValue!5008 (transformation!3485 rule!422))) (dynLambda!9464 order!12451 lambda!70427))))

(declare-fun Forall2!563 (Int) Bool)

(assert (=> d!541079 (= (equivClasses!1331 (toChars!4867 (transformation!3485 rule!422)) (toValue!5008 (transformation!3485 rule!422))) (Forall2!563 lambda!70427))))

(declare-fun bs!404636 () Bool)

(assert (= bs!404636 d!541079))

(declare-fun m!2189919 () Bool)

(assert (=> bs!404636 m!2189919))

(assert (=> b!1769792 d!541079))

(declare-fun d!541081 () Bool)

(declare-fun lt!685700 () Bool)

(assert (=> d!541081 (= lt!685700 (select (content!2828 rules!3447) (rule!5527 (_1!10949 (get!5952 lt!685214)))))))

(declare-fun e!1133199 () Bool)

(assert (=> d!541081 (= lt!685700 e!1133199)))

(declare-fun res!797548 () Bool)

(assert (=> d!541081 (=> (not res!797548) (not e!1133199))))

(assert (=> d!541081 (= res!797548 ((_ is Cons!19491) rules!3447))))

(assert (=> d!541081 (= (contains!3515 rules!3447 (rule!5527 (_1!10949 (get!5952 lt!685214)))) lt!685700)))

(declare-fun b!1770916 () Bool)

(declare-fun e!1133200 () Bool)

(assert (=> b!1770916 (= e!1133199 e!1133200)))

(declare-fun res!797549 () Bool)

(assert (=> b!1770916 (=> res!797549 e!1133200)))

(assert (=> b!1770916 (= res!797549 (= (h!24892 rules!3447) (rule!5527 (_1!10949 (get!5952 lt!685214)))))))

(declare-fun b!1770917 () Bool)

(assert (=> b!1770917 (= e!1133200 (contains!3515 (t!165170 rules!3447) (rule!5527 (_1!10949 (get!5952 lt!685214)))))))

(assert (= (and d!541081 res!797548) b!1770916))

(assert (= (and b!1770916 (not res!797549)) b!1770917))

(assert (=> d!541081 m!2188813))

(declare-fun m!2189921 () Bool)

(assert (=> d!541081 m!2189921))

(declare-fun m!2189923 () Bool)

(assert (=> b!1770917 m!2189923))

(assert (=> b!1769834 d!541081))

(assert (=> b!1769834 d!540701))

(declare-fun d!541083 () Bool)

(assert (=> d!541083 (= (head!4114 lt!685100) (h!24891 lt!685100))))

(assert (=> b!1769945 d!541083))

(declare-fun bs!404637 () Bool)

(declare-fun d!541085 () Bool)

(assert (= bs!404637 (and d!541085 d!540683)))

(declare-fun lambda!70428 () Int)

(assert (=> bs!404637 (= lambda!70428 lambda!70398)))

(declare-fun bs!404638 () Bool)

(assert (= bs!404638 (and d!541085 d!541079)))

(assert (=> bs!404638 (= (= (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (toValue!5008 (transformation!3485 rule!422))) (= lambda!70428 lambda!70427))))

(assert (=> d!541085 true))

(assert (=> d!541085 (< (dynLambda!9458 order!12443 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) (dynLambda!9464 order!12451 lambda!70428))))

(assert (=> d!541085 (= (equivClasses!1331 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) (Forall2!563 lambda!70428))))

(declare-fun bs!404639 () Bool)

(assert (= bs!404639 d!541085))

(declare-fun m!2189925 () Bool)

(assert (=> bs!404639 m!2189925))

(assert (=> b!1770177 d!541085))

(declare-fun d!541087 () Bool)

(assert (=> d!541087 true))

(assert (=> d!541087 true))

(declare-fun res!797552 () Bool)

(assert (=> d!541087 (= (choose!11016 lambda!70380) res!797552)))

(assert (=> d!540641 d!541087))

(declare-fun b!1770918 () Bool)

(declare-fun e!1133201 () List!19560)

(assert (=> b!1770918 (= e!1133201 (Cons!19490 (head!4114 (getSuffix!892 lt!685092 lt!685116)) Nil!19490))))

(declare-fun b!1770919 () Bool)

(assert (=> b!1770919 (= e!1133201 (Cons!19490 (h!24891 lt!685116) (++!5309 (t!165169 lt!685116) (Cons!19490 (head!4114 (getSuffix!892 lt!685092 lt!685116)) Nil!19490))))))

(declare-fun d!541089 () Bool)

(declare-fun e!1133202 () Bool)

(assert (=> d!541089 e!1133202))

(declare-fun res!797554 () Bool)

(assert (=> d!541089 (=> (not res!797554) (not e!1133202))))

(declare-fun lt!685701 () List!19560)

(assert (=> d!541089 (= res!797554 (= (content!2826 lt!685701) ((_ map or) (content!2826 lt!685116) (content!2826 (Cons!19490 (head!4114 (getSuffix!892 lt!685092 lt!685116)) Nil!19490)))))))

(assert (=> d!541089 (= lt!685701 e!1133201)))

(declare-fun c!288393 () Bool)

(assert (=> d!541089 (= c!288393 ((_ is Nil!19490) lt!685116))))

(assert (=> d!541089 (= (++!5309 lt!685116 (Cons!19490 (head!4114 (getSuffix!892 lt!685092 lt!685116)) Nil!19490)) lt!685701)))

(declare-fun b!1770921 () Bool)

(assert (=> b!1770921 (= e!1133202 (or (not (= (Cons!19490 (head!4114 (getSuffix!892 lt!685092 lt!685116)) Nil!19490) Nil!19490)) (= lt!685701 lt!685116)))))

(declare-fun b!1770920 () Bool)

(declare-fun res!797553 () Bool)

(assert (=> b!1770920 (=> (not res!797553) (not e!1133202))))

(assert (=> b!1770920 (= res!797553 (= (size!15479 lt!685701) (+ (size!15479 lt!685116) (size!15479 (Cons!19490 (head!4114 (getSuffix!892 lt!685092 lt!685116)) Nil!19490)))))))

(assert (= (and d!541089 c!288393) b!1770918))

(assert (= (and d!541089 (not c!288393)) b!1770919))

(assert (= (and d!541089 res!797554) b!1770920))

(assert (= (and b!1770920 res!797553) b!1770921))

(declare-fun m!2189927 () Bool)

(assert (=> b!1770919 m!2189927))

(declare-fun m!2189929 () Bool)

(assert (=> d!541089 m!2189929))

(assert (=> d!541089 m!2188035))

(declare-fun m!2189931 () Bool)

(assert (=> d!541089 m!2189931))

(declare-fun m!2189933 () Bool)

(assert (=> b!1770920 m!2189933))

(assert (=> b!1770920 m!2188041))

(declare-fun m!2189935 () Bool)

(assert (=> b!1770920 m!2189935))

(assert (=> d!540387 d!541089))

(declare-fun d!541091 () Bool)

(assert (=> d!541091 (= (head!4114 (getSuffix!892 lt!685092 lt!685116)) (h!24891 (getSuffix!892 lt!685092 lt!685116)))))

(assert (=> d!540387 d!541091))

(declare-fun d!541093 () Bool)

(assert (=> d!541093 (isPrefix!1725 (++!5309 lt!685116 (Cons!19490 (head!4114 (getSuffix!892 lt!685092 lt!685116)) Nil!19490)) lt!685092)))

(assert (=> d!541093 true))

(declare-fun _$65!954 () Unit!33686)

(assert (=> d!541093 (= (choose!11003 lt!685116 lt!685092) _$65!954)))

(declare-fun bs!404640 () Bool)

(assert (= bs!404640 d!541093))

(assert (=> bs!404640 m!2187897))

(assert (=> bs!404640 m!2187897))

(assert (=> bs!404640 m!2187973))

(assert (=> bs!404640 m!2187975))

(assert (=> bs!404640 m!2187975))

(assert (=> bs!404640 m!2187977))

(assert (=> d!540387 d!541093))

(declare-fun b!1770924 () Bool)

(declare-fun e!1133204 () Bool)

(assert (=> b!1770924 (= e!1133204 (isPrefix!1725 (tail!2649 (++!5309 lt!685116 (Cons!19490 (head!4114 (getSuffix!892 lt!685092 lt!685116)) Nil!19490))) (tail!2649 lt!685092)))))

(declare-fun d!541095 () Bool)

(declare-fun e!1133205 () Bool)

(assert (=> d!541095 e!1133205))

(declare-fun res!797558 () Bool)

(assert (=> d!541095 (=> res!797558 e!1133205)))

(declare-fun lt!685702 () Bool)

(assert (=> d!541095 (= res!797558 (not lt!685702))))

(declare-fun e!1133203 () Bool)

(assert (=> d!541095 (= lt!685702 e!1133203)))

(declare-fun res!797557 () Bool)

(assert (=> d!541095 (=> res!797557 e!1133203)))

(assert (=> d!541095 (= res!797557 ((_ is Nil!19490) (++!5309 lt!685116 (Cons!19490 (head!4114 (getSuffix!892 lt!685092 lt!685116)) Nil!19490))))))

(assert (=> d!541095 (= (isPrefix!1725 (++!5309 lt!685116 (Cons!19490 (head!4114 (getSuffix!892 lt!685092 lt!685116)) Nil!19490)) lt!685092) lt!685702)))

(declare-fun b!1770925 () Bool)

(assert (=> b!1770925 (= e!1133205 (>= (size!15479 lt!685092) (size!15479 (++!5309 lt!685116 (Cons!19490 (head!4114 (getSuffix!892 lt!685092 lt!685116)) Nil!19490)))))))

(declare-fun b!1770922 () Bool)

(assert (=> b!1770922 (= e!1133203 e!1133204)))

(declare-fun res!797556 () Bool)

(assert (=> b!1770922 (=> (not res!797556) (not e!1133204))))

(assert (=> b!1770922 (= res!797556 (not ((_ is Nil!19490) lt!685092)))))

(declare-fun b!1770923 () Bool)

(declare-fun res!797555 () Bool)

(assert (=> b!1770923 (=> (not res!797555) (not e!1133204))))

(assert (=> b!1770923 (= res!797555 (= (head!4114 (++!5309 lt!685116 (Cons!19490 (head!4114 (getSuffix!892 lt!685092 lt!685116)) Nil!19490))) (head!4114 lt!685092)))))

(assert (= (and d!541095 (not res!797557)) b!1770922))

(assert (= (and b!1770922 res!797556) b!1770923))

(assert (= (and b!1770923 res!797555) b!1770924))

(assert (= (and d!541095 (not res!797558)) b!1770925))

(assert (=> b!1770924 m!2187975))

(declare-fun m!2189937 () Bool)

(assert (=> b!1770924 m!2189937))

(assert (=> b!1770924 m!2188013))

(assert (=> b!1770924 m!2189937))

(assert (=> b!1770924 m!2188013))

(declare-fun m!2189939 () Bool)

(assert (=> b!1770924 m!2189939))

(assert (=> b!1770925 m!2188017))

(assert (=> b!1770925 m!2187975))

(declare-fun m!2189941 () Bool)

(assert (=> b!1770925 m!2189941))

(assert (=> b!1770923 m!2187975))

(declare-fun m!2189943 () Bool)

(assert (=> b!1770923 m!2189943))

(assert (=> b!1770923 m!2188021))

(assert (=> d!540387 d!541095))

(assert (=> d!540387 d!540513))

(assert (=> d!540387 d!540551))

(declare-fun d!541097 () Bool)

(declare-fun lostCauseFct!191 (Regex!4813) Bool)

(assert (=> d!541097 (= (lostCause!585 lt!685113) (lostCauseFct!191 lt!685113))))

(declare-fun bs!404641 () Bool)

(assert (= bs!404641 d!541097))

(declare-fun m!2189945 () Bool)

(assert (=> bs!404641 m!2189945))

(assert (=> b!1769724 d!541097))

(declare-fun d!541099 () Bool)

(declare-fun lt!685703 () Int)

(assert (=> d!541099 (>= lt!685703 0)))

(declare-fun e!1133206 () Int)

(assert (=> d!541099 (= lt!685703 e!1133206)))

(declare-fun c!288394 () Bool)

(assert (=> d!541099 (= c!288394 ((_ is Nil!19490) (++!5309 lt!685100 (_2!10949 lt!685099))))))

(assert (=> d!541099 (= (size!15479 (++!5309 lt!685100 (_2!10949 lt!685099))) lt!685703)))

(declare-fun b!1770926 () Bool)

(assert (=> b!1770926 (= e!1133206 0)))

(declare-fun b!1770927 () Bool)

(assert (=> b!1770927 (= e!1133206 (+ 1 (size!15479 (t!165169 (++!5309 lt!685100 (_2!10949 lt!685099))))))))

(assert (= (and d!541099 c!288394) b!1770926))

(assert (= (and d!541099 (not c!288394)) b!1770927))

(declare-fun m!2189947 () Bool)

(assert (=> b!1770927 m!2189947))

(assert (=> b!1769864 d!541099))

(assert (=> b!1769864 d!540591))

(declare-fun d!541101 () Bool)

(assert (=> d!541101 (= (list!7915 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 token!523))) (value!108995 token!523))) (list!7917 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 token!523))) (value!108995 token!523)))))))

(declare-fun bs!404642 () Bool)

(assert (= bs!404642 d!541101))

(declare-fun m!2189949 () Bool)

(assert (=> bs!404642 m!2189949))

(assert (=> b!1769805 d!541101))

(declare-fun d!541103 () Bool)

(declare-fun lt!685704 () Bool)

(assert (=> d!541103 (= lt!685704 (select (content!2828 rules!3447) (rule!5527 (_1!10949 (get!5952 lt!685443)))))))

(declare-fun e!1133207 () Bool)

(assert (=> d!541103 (= lt!685704 e!1133207)))

(declare-fun res!797559 () Bool)

(assert (=> d!541103 (=> (not res!797559) (not e!1133207))))

(assert (=> d!541103 (= res!797559 ((_ is Cons!19491) rules!3447))))

(assert (=> d!541103 (= (contains!3515 rules!3447 (rule!5527 (_1!10949 (get!5952 lt!685443)))) lt!685704)))

(declare-fun b!1770928 () Bool)

(declare-fun e!1133208 () Bool)

(assert (=> b!1770928 (= e!1133207 e!1133208)))

(declare-fun res!797560 () Bool)

(assert (=> b!1770928 (=> res!797560 e!1133208)))

(assert (=> b!1770928 (= res!797560 (= (h!24892 rules!3447) (rule!5527 (_1!10949 (get!5952 lt!685443)))))))

(declare-fun b!1770929 () Bool)

(assert (=> b!1770929 (= e!1133208 (contains!3515 (t!165170 rules!3447) (rule!5527 (_1!10949 (get!5952 lt!685443)))))))

(assert (= (and d!541103 res!797559) b!1770928))

(assert (= (and b!1770928 (not res!797560)) b!1770929))

(assert (=> d!541103 m!2188813))

(declare-fun m!2189951 () Bool)

(assert (=> d!541103 m!2189951))

(declare-fun m!2189953 () Bool)

(assert (=> b!1770929 m!2189953))

(assert (=> b!1770200 d!541103))

(assert (=> b!1770200 d!540935))

(declare-fun bs!404643 () Bool)

(declare-fun d!541105 () Bool)

(assert (= bs!404643 (and d!541105 b!1769462)))

(declare-fun lambda!70429 () Int)

(assert (=> bs!404643 (= (and (= (toChars!4867 (transformation!3485 rule!422)) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) (= (toValue!5008 (transformation!3485 rule!422)) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (= lambda!70429 lambda!70380))))

(declare-fun bs!404644 () Bool)

(assert (= bs!404644 (and d!541105 d!540639)))

(assert (=> bs!404644 (= (and (= (toChars!4867 (transformation!3485 rule!422)) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) (= (toValue!5008 (transformation!3485 rule!422)) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (= lambda!70429 lambda!70395))))

(declare-fun bs!404645 () Bool)

(assert (= bs!404645 (and d!541105 d!540915)))

(assert (=> bs!404645 (= (and (= (toChars!4867 (transformation!3485 rule!422)) (toChars!4867 (transformation!3485 (h!24892 rules!3447)))) (= (toValue!5008 (transformation!3485 rule!422)) (toValue!5008 (transformation!3485 (h!24892 rules!3447))))) (= lambda!70429 lambda!70410))))

(declare-fun bs!404646 () Bool)

(assert (= bs!404646 (and d!541105 d!540981)))

(assert (=> bs!404646 (= (and (= (toChars!4867 (transformation!3485 rule!422)) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) (= (toValue!5008 (transformation!3485 rule!422)) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (= lambda!70429 lambda!70411))))

(assert (=> d!541105 true))

(assert (=> d!541105 (< (dynLambda!9460 order!12447 (toChars!4867 (transformation!3485 rule!422))) (dynLambda!9459 order!12445 lambda!70429))))

(assert (=> d!541105 true))

(assert (=> d!541105 (< (dynLambda!9458 order!12443 (toValue!5008 (transformation!3485 rule!422))) (dynLambda!9459 order!12445 lambda!70429))))

(assert (=> d!541105 (= (semiInverseModEq!1390 (toChars!4867 (transformation!3485 rule!422)) (toValue!5008 (transformation!3485 rule!422))) (Forall!852 lambda!70429))))

(declare-fun bs!404647 () Bool)

(assert (= bs!404647 d!541105))

(declare-fun m!2189955 () Bool)

(assert (=> bs!404647 m!2189955))

(assert (=> d!540483 d!541105))

(declare-fun b!1770932 () Bool)

(declare-fun e!1133210 () Bool)

(assert (=> b!1770932 (= e!1133210 (isPrefix!1725 (tail!2649 (tail!2649 lt!685100)) (tail!2649 (tail!2649 (++!5309 lt!685100 (_2!10949 lt!685099))))))))

(declare-fun d!541107 () Bool)

(declare-fun e!1133211 () Bool)

(assert (=> d!541107 e!1133211))

(declare-fun res!797564 () Bool)

(assert (=> d!541107 (=> res!797564 e!1133211)))

(declare-fun lt!685705 () Bool)

(assert (=> d!541107 (= res!797564 (not lt!685705))))

(declare-fun e!1133209 () Bool)

(assert (=> d!541107 (= lt!685705 e!1133209)))

(declare-fun res!797563 () Bool)

(assert (=> d!541107 (=> res!797563 e!1133209)))

(assert (=> d!541107 (= res!797563 ((_ is Nil!19490) (tail!2649 lt!685100)))))

(assert (=> d!541107 (= (isPrefix!1725 (tail!2649 lt!685100) (tail!2649 (++!5309 lt!685100 (_2!10949 lt!685099)))) lt!685705)))

(declare-fun b!1770933 () Bool)

(assert (=> b!1770933 (= e!1133211 (>= (size!15479 (tail!2649 (++!5309 lt!685100 (_2!10949 lt!685099)))) (size!15479 (tail!2649 lt!685100))))))

(declare-fun b!1770930 () Bool)

(assert (=> b!1770930 (= e!1133209 e!1133210)))

(declare-fun res!797562 () Bool)

(assert (=> b!1770930 (=> (not res!797562) (not e!1133210))))

(assert (=> b!1770930 (= res!797562 (not ((_ is Nil!19490) (tail!2649 (++!5309 lt!685100 (_2!10949 lt!685099))))))))

(declare-fun b!1770931 () Bool)

(declare-fun res!797561 () Bool)

(assert (=> b!1770931 (=> (not res!797561) (not e!1133210))))

(assert (=> b!1770931 (= res!797561 (= (head!4114 (tail!2649 lt!685100)) (head!4114 (tail!2649 (++!5309 lt!685100 (_2!10949 lt!685099))))))))

(assert (= (and d!541107 (not res!797563)) b!1770930))

(assert (= (and b!1770930 res!797562) b!1770931))

(assert (= (and b!1770931 res!797561) b!1770932))

(assert (= (and d!541107 (not res!797564)) b!1770933))

(assert (=> b!1770932 m!2188331))

(declare-fun m!2189957 () Bool)

(assert (=> b!1770932 m!2189957))

(assert (=> b!1770932 m!2188341))

(declare-fun m!2189959 () Bool)

(assert (=> b!1770932 m!2189959))

(assert (=> b!1770932 m!2189957))

(assert (=> b!1770932 m!2189959))

(declare-fun m!2189961 () Bool)

(assert (=> b!1770932 m!2189961))

(assert (=> b!1770933 m!2188341))

(declare-fun m!2189963 () Bool)

(assert (=> b!1770933 m!2189963))

(assert (=> b!1770933 m!2188331))

(declare-fun m!2189965 () Bool)

(assert (=> b!1770933 m!2189965))

(assert (=> b!1770931 m!2188331))

(declare-fun m!2189967 () Bool)

(assert (=> b!1770931 m!2189967))

(assert (=> b!1770931 m!2188341))

(declare-fun m!2189969 () Bool)

(assert (=> b!1770931 m!2189969))

(assert (=> b!1769863 d!541107))

(declare-fun d!541109 () Bool)

(assert (=> d!541109 (= (tail!2649 lt!685100) (t!165169 lt!685100))))

(assert (=> b!1769863 d!541109))

(declare-fun d!541111 () Bool)

(assert (=> d!541111 (= (tail!2649 (++!5309 lt!685100 (_2!10949 lt!685099))) (t!165169 (++!5309 lt!685100 (_2!10949 lt!685099))))))

(assert (=> b!1769863 d!541111))

(declare-fun b!1770934 () Bool)

(declare-fun res!797571 () Bool)

(declare-fun e!1133216 () Bool)

(assert (=> b!1770934 (=> (not res!797571) (not e!1133216))))

(assert (=> b!1770934 (= res!797571 (isEmpty!12304 (tail!2649 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685443)))))))))

(declare-fun b!1770935 () Bool)

(assert (=> b!1770935 (= e!1133216 (= (head!4114 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685443))))) (c!288084 (regex!3485 (rule!5527 (_1!10949 (get!5952 lt!685443)))))))))

(declare-fun bm!111011 () Bool)

(declare-fun call!111016 () Bool)

(assert (=> bm!111011 (= call!111016 (isEmpty!12304 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685443))))))))

(declare-fun b!1770936 () Bool)

(declare-fun e!1133213 () Bool)

(declare-fun e!1133218 () Bool)

(assert (=> b!1770936 (= e!1133213 e!1133218)))

(declare-fun res!797567 () Bool)

(assert (=> b!1770936 (=> res!797567 e!1133218)))

(assert (=> b!1770936 (= res!797567 call!111016)))

(declare-fun b!1770937 () Bool)

(declare-fun e!1133215 () Bool)

(assert (=> b!1770937 (= e!1133215 e!1133213)))

(declare-fun res!797570 () Bool)

(assert (=> b!1770937 (=> (not res!797570) (not e!1133213))))

(declare-fun lt!685706 () Bool)

(assert (=> b!1770937 (= res!797570 (not lt!685706))))

(declare-fun b!1770938 () Bool)

(declare-fun e!1133217 () Bool)

(assert (=> b!1770938 (= e!1133217 (not lt!685706))))

(declare-fun b!1770939 () Bool)

(declare-fun res!797568 () Bool)

(assert (=> b!1770939 (=> res!797568 e!1133218)))

(assert (=> b!1770939 (= res!797568 (not (isEmpty!12304 (tail!2649 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685443))))))))))

(declare-fun b!1770940 () Bool)

(declare-fun res!797565 () Bool)

(assert (=> b!1770940 (=> res!797565 e!1133215)))

(assert (=> b!1770940 (= res!797565 e!1133216)))

(declare-fun res!797569 () Bool)

(assert (=> b!1770940 (=> (not res!797569) (not e!1133216))))

(assert (=> b!1770940 (= res!797569 lt!685706)))

(declare-fun b!1770941 () Bool)

(declare-fun res!797572 () Bool)

(assert (=> b!1770941 (=> res!797572 e!1133215)))

(assert (=> b!1770941 (= res!797572 (not ((_ is ElementMatch!4813) (regex!3485 (rule!5527 (_1!10949 (get!5952 lt!685443)))))))))

(assert (=> b!1770941 (= e!1133217 e!1133215)))

(declare-fun b!1770942 () Bool)

(assert (=> b!1770942 (= e!1133218 (not (= (head!4114 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685443))))) (c!288084 (regex!3485 (rule!5527 (_1!10949 (get!5952 lt!685443))))))))))

(declare-fun b!1770943 () Bool)

(declare-fun e!1133214 () Bool)

(assert (=> b!1770943 (= e!1133214 (= lt!685706 call!111016))))

(declare-fun b!1770944 () Bool)

(assert (=> b!1770944 (= e!1133214 e!1133217)))

(declare-fun c!288395 () Bool)

(assert (=> b!1770944 (= c!288395 ((_ is EmptyLang!4813) (regex!3485 (rule!5527 (_1!10949 (get!5952 lt!685443))))))))

(declare-fun b!1770945 () Bool)

(declare-fun res!797566 () Bool)

(assert (=> b!1770945 (=> (not res!797566) (not e!1133216))))

(assert (=> b!1770945 (= res!797566 (not call!111016))))

(declare-fun d!541113 () Bool)

(assert (=> d!541113 e!1133214))

(declare-fun c!288397 () Bool)

(assert (=> d!541113 (= c!288397 ((_ is EmptyExpr!4813) (regex!3485 (rule!5527 (_1!10949 (get!5952 lt!685443))))))))

(declare-fun e!1133212 () Bool)

(assert (=> d!541113 (= lt!685706 e!1133212)))

(declare-fun c!288396 () Bool)

(assert (=> d!541113 (= c!288396 (isEmpty!12304 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685443))))))))

(assert (=> d!541113 (validRegex!1949 (regex!3485 (rule!5527 (_1!10949 (get!5952 lt!685443)))))))

(assert (=> d!541113 (= (matchR!2286 (regex!3485 (rule!5527 (_1!10949 (get!5952 lt!685443)))) (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685443))))) lt!685706)))

(declare-fun b!1770946 () Bool)

(assert (=> b!1770946 (= e!1133212 (matchR!2286 (derivativeStep!1244 (regex!3485 (rule!5527 (_1!10949 (get!5952 lt!685443)))) (head!4114 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685443)))))) (tail!2649 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685443)))))))))

(declare-fun b!1770947 () Bool)

(assert (=> b!1770947 (= e!1133212 (nullable!1475 (regex!3485 (rule!5527 (_1!10949 (get!5952 lt!685443))))))))

(assert (= (and d!541113 c!288396) b!1770947))

(assert (= (and d!541113 (not c!288396)) b!1770946))

(assert (= (and d!541113 c!288397) b!1770943))

(assert (= (and d!541113 (not c!288397)) b!1770944))

(assert (= (and b!1770944 c!288395) b!1770938))

(assert (= (and b!1770944 (not c!288395)) b!1770941))

(assert (= (and b!1770941 (not res!797572)) b!1770940))

(assert (= (and b!1770940 res!797569) b!1770945))

(assert (= (and b!1770945 res!797566) b!1770934))

(assert (= (and b!1770934 res!797571) b!1770935))

(assert (= (and b!1770940 (not res!797565)) b!1770937))

(assert (= (and b!1770937 res!797570) b!1770936))

(assert (= (and b!1770936 (not res!797567)) b!1770939))

(assert (= (and b!1770939 (not res!797568)) b!1770942))

(assert (= (or b!1770943 b!1770936 b!1770945) bm!111011))

(assert (=> b!1770946 m!2188861))

(declare-fun m!2189971 () Bool)

(assert (=> b!1770946 m!2189971))

(assert (=> b!1770946 m!2189971))

(declare-fun m!2189973 () Bool)

(assert (=> b!1770946 m!2189973))

(assert (=> b!1770946 m!2188861))

(declare-fun m!2189975 () Bool)

(assert (=> b!1770946 m!2189975))

(assert (=> b!1770946 m!2189973))

(assert (=> b!1770946 m!2189975))

(declare-fun m!2189977 () Bool)

(assert (=> b!1770946 m!2189977))

(assert (=> d!541113 m!2188861))

(declare-fun m!2189979 () Bool)

(assert (=> d!541113 m!2189979))

(declare-fun m!2189981 () Bool)

(assert (=> d!541113 m!2189981))

(assert (=> b!1770935 m!2188861))

(assert (=> b!1770935 m!2189971))

(assert (=> bm!111011 m!2188861))

(assert (=> bm!111011 m!2189979))

(assert (=> b!1770939 m!2188861))

(assert (=> b!1770939 m!2189975))

(assert (=> b!1770939 m!2189975))

(declare-fun m!2189983 () Bool)

(assert (=> b!1770939 m!2189983))

(assert (=> b!1770934 m!2188861))

(assert (=> b!1770934 m!2189975))

(assert (=> b!1770934 m!2189975))

(assert (=> b!1770934 m!2189983))

(declare-fun m!2189985 () Bool)

(assert (=> b!1770947 m!2189985))

(assert (=> b!1770942 m!2188861))

(assert (=> b!1770942 m!2189971))

(assert (=> b!1770199 d!541113))

(assert (=> b!1770199 d!540935))

(assert (=> b!1770199 d!540931))

(assert (=> b!1770199 d!540933))

(assert (=> b!1769829 d!540701))

(declare-fun d!541115 () Bool)

(assert (=> d!541115 (= (apply!5285 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685214)))) (seqFromList!2454 (originalCharacters!4299 (_1!10949 (get!5952 lt!685214))))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685214))))) (seqFromList!2454 (originalCharacters!4299 (_1!10949 (get!5952 lt!685214))))))))

(declare-fun b_lambda!57663 () Bool)

(assert (=> (not b_lambda!57663) (not d!541115)))

(declare-fun tb!107165 () Bool)

(declare-fun t!165322 () Bool)

(assert (=> (and b!1769445 (= (toValue!5008 (transformation!3485 (rule!5527 token!523))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685214)))))) t!165322) tb!107165))

(declare-fun result!128924 () Bool)

(assert (=> tb!107165 (= result!128924 (inv!21 (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685214))))) (seqFromList!2454 (originalCharacters!4299 (_1!10949 (get!5952 lt!685214)))))))))

(declare-fun m!2189987 () Bool)

(assert (=> tb!107165 m!2189987))

(assert (=> d!541115 t!165322))

(declare-fun b_and!134669 () Bool)

(assert (= b_and!134579 (and (=> t!165322 result!128924) b_and!134669)))

(declare-fun t!165324 () Bool)

(declare-fun tb!107167 () Bool)

(assert (=> (and b!1769469 (= (toValue!5008 (transformation!3485 (h!24892 rules!3447))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685214)))))) t!165324) tb!107167))

(declare-fun result!128926 () Bool)

(assert (= result!128926 result!128924))

(assert (=> d!541115 t!165324))

(declare-fun b_and!134671 () Bool)

(assert (= b_and!134581 (and (=> t!165324 result!128926) b_and!134671)))

(declare-fun t!165326 () Bool)

(declare-fun tb!107169 () Bool)

(assert (=> (and b!1769458 (= (toValue!5008 (transformation!3485 rule!422)) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685214)))))) t!165326) tb!107169))

(declare-fun result!128928 () Bool)

(assert (= result!128928 result!128924))

(assert (=> d!541115 t!165326))

(declare-fun b_and!134673 () Bool)

(assert (= b_and!134583 (and (=> t!165326 result!128928) b_and!134673)))

(declare-fun t!165328 () Bool)

(declare-fun tb!107171 () Bool)

(assert (=> (and b!1770265 (= (toValue!5008 (transformation!3485 (h!24892 (t!165170 rules!3447)))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685214)))))) t!165328) tb!107171))

(declare-fun result!128930 () Bool)

(assert (= result!128930 result!128924))

(assert (=> d!541115 t!165328))

(declare-fun b_and!134675 () Bool)

(assert (= b_and!134585 (and (=> t!165328 result!128930) b_and!134675)))

(assert (=> d!541115 m!2188303))

(declare-fun m!2189989 () Bool)

(assert (=> d!541115 m!2189989))

(assert (=> b!1769829 d!541115))

(declare-fun d!541117 () Bool)

(assert (=> d!541117 (= (seqFromList!2454 (originalCharacters!4299 (_1!10949 (get!5952 lt!685214)))) (fromListB!1124 (originalCharacters!4299 (_1!10949 (get!5952 lt!685214)))))))

(declare-fun bs!404648 () Bool)

(assert (= bs!404648 d!541117))

(declare-fun m!2189991 () Bool)

(assert (=> bs!404648 m!2189991))

(assert (=> b!1769829 d!541117))

(assert (=> b!1769492 d!540433))

(assert (=> d!540639 d!540637))

(assert (=> d!540639 d!540519))

(declare-fun d!541119 () Bool)

(declare-fun dynLambda!9468 (Int BalanceConc!12910) Bool)

(assert (=> d!541119 (dynLambda!9468 lambda!70395 lt!685082)))

(declare-fun lt!685709 () Unit!33686)

(declare-fun choose!11025 (Int BalanceConc!12910) Unit!33686)

(assert (=> d!541119 (= lt!685709 (choose!11025 lambda!70395 lt!685082))))

(assert (=> d!541119 (Forall!852 lambda!70395)))

(assert (=> d!541119 (= (ForallOf!328 lambda!70395 lt!685082) lt!685709)))

(declare-fun b_lambda!57665 () Bool)

(assert (=> (not b_lambda!57665) (not d!541119)))

(declare-fun bs!404649 () Bool)

(assert (= bs!404649 d!541119))

(declare-fun m!2189993 () Bool)

(assert (=> bs!404649 m!2189993))

(declare-fun m!2189995 () Bool)

(assert (=> bs!404649 m!2189995))

(declare-fun m!2189997 () Bool)

(assert (=> bs!404649 m!2189997))

(assert (=> d!540639 d!541119))

(declare-fun d!541121 () Bool)

(declare-fun lt!685710 () List!19560)

(assert (=> d!541121 (= (++!5309 (t!165169 lt!685116) lt!685710) (tail!2649 lt!685092))))

(declare-fun e!1133220 () List!19560)

(assert (=> d!541121 (= lt!685710 e!1133220)))

(declare-fun c!288398 () Bool)

(assert (=> d!541121 (= c!288398 ((_ is Cons!19490) (t!165169 lt!685116)))))

(assert (=> d!541121 (>= (size!15479 (tail!2649 lt!685092)) (size!15479 (t!165169 lt!685116)))))

(assert (=> d!541121 (= (getSuffix!892 (tail!2649 lt!685092) (t!165169 lt!685116)) lt!685710)))

(declare-fun b!1770948 () Bool)

(assert (=> b!1770948 (= e!1133220 (getSuffix!892 (tail!2649 (tail!2649 lt!685092)) (t!165169 (t!165169 lt!685116))))))

(declare-fun b!1770949 () Bool)

(assert (=> b!1770949 (= e!1133220 (tail!2649 lt!685092))))

(assert (= (and d!541121 c!288398) b!1770948))

(assert (= (and d!541121 (not c!288398)) b!1770949))

(declare-fun m!2189999 () Bool)

(assert (=> d!541121 m!2189999))

(assert (=> d!541121 m!2188013))

(assert (=> d!541121 m!2189901))

(assert (=> d!541121 m!2189693))

(assert (=> b!1770948 m!2188013))

(assert (=> b!1770948 m!2189897))

(assert (=> b!1770948 m!2189897))

(declare-fun m!2190001 () Bool)

(assert (=> b!1770948 m!2190001))

(assert (=> b!1769942 d!541121))

(assert (=> b!1769942 d!541069))

(declare-fun bs!404650 () Bool)

(declare-fun d!541123 () Bool)

(assert (= bs!404650 (and d!541123 d!540683)))

(declare-fun lambda!70430 () Int)

(assert (=> bs!404650 (= (= (toValue!5008 (transformation!3485 (h!24892 rules!3447))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) (= lambda!70430 lambda!70398))))

(declare-fun bs!404651 () Bool)

(assert (= bs!404651 (and d!541123 d!541079)))

(assert (=> bs!404651 (= (= (toValue!5008 (transformation!3485 (h!24892 rules!3447))) (toValue!5008 (transformation!3485 rule!422))) (= lambda!70430 lambda!70427))))

(declare-fun bs!404652 () Bool)

(assert (= bs!404652 (and d!541123 d!541085)))

(assert (=> bs!404652 (= (= (toValue!5008 (transformation!3485 (h!24892 rules!3447))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) (= lambda!70430 lambda!70428))))

(assert (=> d!541123 true))

(assert (=> d!541123 (< (dynLambda!9458 order!12443 (toValue!5008 (transformation!3485 (h!24892 rules!3447)))) (dynLambda!9464 order!12451 lambda!70430))))

(assert (=> d!541123 (= (equivClasses!1331 (toChars!4867 (transformation!3485 (h!24892 rules!3447))) (toValue!5008 (transformation!3485 (h!24892 rules!3447)))) (Forall2!563 lambda!70430))))

(declare-fun bs!404653 () Bool)

(assert (= bs!404653 d!541123))

(declare-fun m!2190003 () Bool)

(assert (=> bs!404653 m!2190003))

(assert (=> b!1770235 d!541123))

(declare-fun b!1770950 () Bool)

(declare-fun res!797579 () Bool)

(declare-fun e!1133225 () Bool)

(assert (=> b!1770950 (=> (not res!797579) (not e!1133225))))

(assert (=> b!1770950 (= res!797579 (isEmpty!12304 (tail!2649 (tail!2649 lt!685100))))))

(declare-fun b!1770951 () Bool)

(assert (=> b!1770951 (= e!1133225 (= (head!4114 (tail!2649 lt!685100)) (c!288084 (derivativeStep!1244 lt!685113 (head!4114 lt!685100)))))))

(declare-fun bm!111012 () Bool)

(declare-fun call!111017 () Bool)

(assert (=> bm!111012 (= call!111017 (isEmpty!12304 (tail!2649 lt!685100)))))

(declare-fun b!1770952 () Bool)

(declare-fun e!1133222 () Bool)

(declare-fun e!1133227 () Bool)

(assert (=> b!1770952 (= e!1133222 e!1133227)))

(declare-fun res!797575 () Bool)

(assert (=> b!1770952 (=> res!797575 e!1133227)))

(assert (=> b!1770952 (= res!797575 call!111017)))

(declare-fun b!1770953 () Bool)

(declare-fun e!1133224 () Bool)

(assert (=> b!1770953 (= e!1133224 e!1133222)))

(declare-fun res!797578 () Bool)

(assert (=> b!1770953 (=> (not res!797578) (not e!1133222))))

(declare-fun lt!685711 () Bool)

(assert (=> b!1770953 (= res!797578 (not lt!685711))))

(declare-fun b!1770954 () Bool)

(declare-fun e!1133226 () Bool)

(assert (=> b!1770954 (= e!1133226 (not lt!685711))))

(declare-fun b!1770955 () Bool)

(declare-fun res!797576 () Bool)

(assert (=> b!1770955 (=> res!797576 e!1133227)))

(assert (=> b!1770955 (= res!797576 (not (isEmpty!12304 (tail!2649 (tail!2649 lt!685100)))))))

(declare-fun b!1770956 () Bool)

(declare-fun res!797573 () Bool)

(assert (=> b!1770956 (=> res!797573 e!1133224)))

(assert (=> b!1770956 (= res!797573 e!1133225)))

(declare-fun res!797577 () Bool)

(assert (=> b!1770956 (=> (not res!797577) (not e!1133225))))

(assert (=> b!1770956 (= res!797577 lt!685711)))

(declare-fun b!1770957 () Bool)

(declare-fun res!797580 () Bool)

(assert (=> b!1770957 (=> res!797580 e!1133224)))

(assert (=> b!1770957 (= res!797580 (not ((_ is ElementMatch!4813) (derivativeStep!1244 lt!685113 (head!4114 lt!685100)))))))

(assert (=> b!1770957 (= e!1133226 e!1133224)))

(declare-fun b!1770958 () Bool)

(assert (=> b!1770958 (= e!1133227 (not (= (head!4114 (tail!2649 lt!685100)) (c!288084 (derivativeStep!1244 lt!685113 (head!4114 lt!685100))))))))

(declare-fun b!1770959 () Bool)

(declare-fun e!1133223 () Bool)

(assert (=> b!1770959 (= e!1133223 (= lt!685711 call!111017))))

(declare-fun b!1770960 () Bool)

(assert (=> b!1770960 (= e!1133223 e!1133226)))

(declare-fun c!288399 () Bool)

(assert (=> b!1770960 (= c!288399 ((_ is EmptyLang!4813) (derivativeStep!1244 lt!685113 (head!4114 lt!685100))))))

(declare-fun b!1770961 () Bool)

(declare-fun res!797574 () Bool)

(assert (=> b!1770961 (=> (not res!797574) (not e!1133225))))

(assert (=> b!1770961 (= res!797574 (not call!111017))))

(declare-fun d!541125 () Bool)

(assert (=> d!541125 e!1133223))

(declare-fun c!288401 () Bool)

(assert (=> d!541125 (= c!288401 ((_ is EmptyExpr!4813) (derivativeStep!1244 lt!685113 (head!4114 lt!685100))))))

(declare-fun e!1133221 () Bool)

(assert (=> d!541125 (= lt!685711 e!1133221)))

(declare-fun c!288400 () Bool)

(assert (=> d!541125 (= c!288400 (isEmpty!12304 (tail!2649 lt!685100)))))

(assert (=> d!541125 (validRegex!1949 (derivativeStep!1244 lt!685113 (head!4114 lt!685100)))))

(assert (=> d!541125 (= (matchR!2286 (derivativeStep!1244 lt!685113 (head!4114 lt!685100)) (tail!2649 lt!685100)) lt!685711)))

(declare-fun b!1770962 () Bool)

(assert (=> b!1770962 (= e!1133221 (matchR!2286 (derivativeStep!1244 (derivativeStep!1244 lt!685113 (head!4114 lt!685100)) (head!4114 (tail!2649 lt!685100))) (tail!2649 (tail!2649 lt!685100))))))

(declare-fun b!1770963 () Bool)

(assert (=> b!1770963 (= e!1133221 (nullable!1475 (derivativeStep!1244 lt!685113 (head!4114 lt!685100))))))

(assert (= (and d!541125 c!288400) b!1770963))

(assert (= (and d!541125 (not c!288400)) b!1770962))

(assert (= (and d!541125 c!288401) b!1770959))

(assert (= (and d!541125 (not c!288401)) b!1770960))

(assert (= (and b!1770960 c!288399) b!1770954))

(assert (= (and b!1770960 (not c!288399)) b!1770957))

(assert (= (and b!1770957 (not res!797580)) b!1770956))

(assert (= (and b!1770956 res!797577) b!1770961))

(assert (= (and b!1770961 res!797574) b!1770950))

(assert (= (and b!1770950 res!797579) b!1770951))

(assert (= (and b!1770956 (not res!797573)) b!1770953))

(assert (= (and b!1770953 res!797578) b!1770952))

(assert (= (and b!1770952 (not res!797575)) b!1770955))

(assert (= (and b!1770955 (not res!797576)) b!1770958))

(assert (= (or b!1770959 b!1770952 b!1770961) bm!111012))

(assert (=> b!1770962 m!2188331))

(assert (=> b!1770962 m!2189967))

(assert (=> b!1770962 m!2188567))

(assert (=> b!1770962 m!2189967))

(declare-fun m!2190005 () Bool)

(assert (=> b!1770962 m!2190005))

(assert (=> b!1770962 m!2188331))

(assert (=> b!1770962 m!2189957))

(assert (=> b!1770962 m!2190005))

(assert (=> b!1770962 m!2189957))

(declare-fun m!2190007 () Bool)

(assert (=> b!1770962 m!2190007))

(assert (=> d!541125 m!2188331))

(assert (=> d!541125 m!2188573))

(assert (=> d!541125 m!2188567))

(declare-fun m!2190009 () Bool)

(assert (=> d!541125 m!2190009))

(assert (=> b!1770951 m!2188331))

(assert (=> b!1770951 m!2189967))

(assert (=> bm!111012 m!2188331))

(assert (=> bm!111012 m!2188573))

(assert (=> b!1770955 m!2188331))

(assert (=> b!1770955 m!2189957))

(assert (=> b!1770955 m!2189957))

(declare-fun m!2190011 () Bool)

(assert (=> b!1770955 m!2190011))

(assert (=> b!1770950 m!2188331))

(assert (=> b!1770950 m!2189957))

(assert (=> b!1770950 m!2189957))

(assert (=> b!1770950 m!2190011))

(assert (=> b!1770963 m!2188567))

(declare-fun m!2190013 () Bool)

(assert (=> b!1770963 m!2190013))

(assert (=> b!1770958 m!2188331))

(assert (=> b!1770958 m!2189967))

(assert (=> b!1769956 d!541125))

(declare-fun d!541127 () Bool)

(declare-fun lt!685712 () Regex!4813)

(assert (=> d!541127 (validRegex!1949 lt!685712)))

(declare-fun e!1133228 () Regex!4813)

(assert (=> d!541127 (= lt!685712 e!1133228)))

(declare-fun c!288402 () Bool)

(assert (=> d!541127 (= c!288402 (or ((_ is EmptyExpr!4813) lt!685113) ((_ is EmptyLang!4813) lt!685113)))))

(assert (=> d!541127 (validRegex!1949 lt!685113)))

(assert (=> d!541127 (= (derivativeStep!1244 lt!685113 (head!4114 lt!685100)) lt!685712)))

(declare-fun b!1770964 () Bool)

(declare-fun c!288404 () Bool)

(assert (=> b!1770964 (= c!288404 (nullable!1475 (regOne!10138 lt!685113)))))

(declare-fun e!1133232 () Regex!4813)

(declare-fun e!1133231 () Regex!4813)

(assert (=> b!1770964 (= e!1133232 e!1133231)))

(declare-fun call!111019 () Regex!4813)

(declare-fun c!288405 () Bool)

(declare-fun bm!111013 () Bool)

(assert (=> bm!111013 (= call!111019 (derivativeStep!1244 (ite c!288405 (regOne!10139 lt!685113) (regOne!10138 lt!685113)) (head!4114 lt!685100)))))

(declare-fun b!1770965 () Bool)

(assert (=> b!1770965 (= c!288405 ((_ is Union!4813) lt!685113))))

(declare-fun e!1133230 () Regex!4813)

(declare-fun e!1133229 () Regex!4813)

(assert (=> b!1770965 (= e!1133230 e!1133229)))

(declare-fun bm!111014 () Bool)

(declare-fun call!111020 () Regex!4813)

(declare-fun call!111021 () Regex!4813)

(assert (=> bm!111014 (= call!111020 call!111021)))

(declare-fun b!1770966 () Bool)

(declare-fun call!111018 () Regex!4813)

(assert (=> b!1770966 (= e!1133231 (Union!4813 (Concat!8389 call!111018 (regTwo!10138 lt!685113)) EmptyLang!4813))))

(declare-fun b!1770967 () Bool)

(assert (=> b!1770967 (= e!1133229 (Union!4813 call!111019 call!111021))))

(declare-fun b!1770968 () Bool)

(assert (=> b!1770968 (= e!1133230 (ite (= (head!4114 lt!685100) (c!288084 lt!685113)) EmptyExpr!4813 EmptyLang!4813))))

(declare-fun b!1770969 () Bool)

(assert (=> b!1770969 (= e!1133231 (Union!4813 (Concat!8389 call!111019 (regTwo!10138 lt!685113)) call!111018))))

(declare-fun b!1770970 () Bool)

(assert (=> b!1770970 (= e!1133229 e!1133232)))

(declare-fun c!288403 () Bool)

(assert (=> b!1770970 (= c!288403 ((_ is Star!4813) lt!685113))))

(declare-fun b!1770971 () Bool)

(assert (=> b!1770971 (= e!1133228 e!1133230)))

(declare-fun c!288406 () Bool)

(assert (=> b!1770971 (= c!288406 ((_ is ElementMatch!4813) lt!685113))))

(declare-fun bm!111015 () Bool)

(assert (=> bm!111015 (= call!111021 (derivativeStep!1244 (ite c!288405 (regTwo!10139 lt!685113) (ite c!288403 (reg!5142 lt!685113) (ite c!288404 (regTwo!10138 lt!685113) (regOne!10138 lt!685113)))) (head!4114 lt!685100)))))

(declare-fun b!1770972 () Bool)

(assert (=> b!1770972 (= e!1133232 (Concat!8389 call!111020 lt!685113))))

(declare-fun bm!111016 () Bool)

(assert (=> bm!111016 (= call!111018 call!111020)))

(declare-fun b!1770973 () Bool)

(assert (=> b!1770973 (= e!1133228 EmptyLang!4813)))

(assert (= (and d!541127 c!288402) b!1770973))

(assert (= (and d!541127 (not c!288402)) b!1770971))

(assert (= (and b!1770971 c!288406) b!1770968))

(assert (= (and b!1770971 (not c!288406)) b!1770965))

(assert (= (and b!1770965 c!288405) b!1770967))

(assert (= (and b!1770965 (not c!288405)) b!1770970))

(assert (= (and b!1770970 c!288403) b!1770972))

(assert (= (and b!1770970 (not c!288403)) b!1770964))

(assert (= (and b!1770964 c!288404) b!1770969))

(assert (= (and b!1770964 (not c!288404)) b!1770966))

(assert (= (or b!1770969 b!1770966) bm!111016))

(assert (= (or b!1770972 bm!111016) bm!111014))

(assert (= (or b!1770967 bm!111014) bm!111015))

(assert (= (or b!1770967 b!1770969) bm!111013))

(declare-fun m!2190015 () Bool)

(assert (=> d!541127 m!2190015))

(assert (=> d!541127 m!2188107))

(declare-fun m!2190017 () Bool)

(assert (=> b!1770964 m!2190017))

(assert (=> bm!111013 m!2188335))

(declare-fun m!2190019 () Bool)

(assert (=> bm!111013 m!2190019))

(assert (=> bm!111015 m!2188335))

(declare-fun m!2190021 () Bool)

(assert (=> bm!111015 m!2190021))

(assert (=> b!1769956 d!541127))

(assert (=> b!1769956 d!541083))

(assert (=> b!1769956 d!541109))

(declare-fun d!541129 () Bool)

(declare-fun e!1133235 () Bool)

(assert (=> d!541129 e!1133235))

(declare-fun res!797583 () Bool)

(assert (=> d!541129 (=> (not res!797583) (not e!1133235))))

(declare-fun lt!685715 () BalanceConc!12910)

(assert (=> d!541129 (= res!797583 (= (list!7915 lt!685715) lt!685100))))

(declare-fun fromList!446 (List!19560) Conc!6483)

(assert (=> d!541129 (= lt!685715 (BalanceConc!12911 (fromList!446 lt!685100)))))

(assert (=> d!541129 (= (fromListB!1124 lt!685100) lt!685715)))

(declare-fun b!1770976 () Bool)

(assert (=> b!1770976 (= e!1133235 (isBalanced!2027 (fromList!446 lt!685100)))))

(assert (= (and d!541129 res!797583) b!1770976))

(declare-fun m!2190023 () Bool)

(assert (=> d!541129 m!2190023))

(declare-fun m!2190025 () Bool)

(assert (=> d!541129 m!2190025))

(assert (=> b!1770976 m!2190025))

(assert (=> b!1770976 m!2190025))

(declare-fun m!2190027 () Bool)

(assert (=> b!1770976 m!2190027))

(assert (=> d!540633 d!541129))

(declare-fun d!541131 () Bool)

(assert (=> d!541131 (= (isEmpty!12304 (tail!2649 lt!685116)) ((_ is Nil!19490) (tail!2649 lt!685116)))))

(assert (=> b!1769962 d!541131))

(assert (=> b!1769962 d!541063))

(assert (=> b!1770195 d!540935))

(declare-fun d!541133 () Bool)

(assert (=> d!541133 (= (apply!5285 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685443)))) (seqFromList!2454 (originalCharacters!4299 (_1!10949 (get!5952 lt!685443))))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685443))))) (seqFromList!2454 (originalCharacters!4299 (_1!10949 (get!5952 lt!685443))))))))

(declare-fun b_lambda!57667 () Bool)

(assert (=> (not b_lambda!57667) (not d!541133)))

(declare-fun tb!107173 () Bool)

(declare-fun t!165330 () Bool)

(assert (=> (and b!1769445 (= (toValue!5008 (transformation!3485 (rule!5527 token!523))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685443)))))) t!165330) tb!107173))

(declare-fun result!128932 () Bool)

(assert (=> tb!107173 (= result!128932 (inv!21 (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685443))))) (seqFromList!2454 (originalCharacters!4299 (_1!10949 (get!5952 lt!685443)))))))))

(declare-fun m!2190029 () Bool)

(assert (=> tb!107173 m!2190029))

(assert (=> d!541133 t!165330))

(declare-fun b_and!134677 () Bool)

(assert (= b_and!134669 (and (=> t!165330 result!128932) b_and!134677)))

(declare-fun t!165332 () Bool)

(declare-fun tb!107175 () Bool)

(assert (=> (and b!1769469 (= (toValue!5008 (transformation!3485 (h!24892 rules!3447))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685443)))))) t!165332) tb!107175))

(declare-fun result!128934 () Bool)

(assert (= result!128934 result!128932))

(assert (=> d!541133 t!165332))

(declare-fun b_and!134679 () Bool)

(assert (= b_and!134671 (and (=> t!165332 result!128934) b_and!134679)))

(declare-fun tb!107177 () Bool)

(declare-fun t!165334 () Bool)

(assert (=> (and b!1769458 (= (toValue!5008 (transformation!3485 rule!422)) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685443)))))) t!165334) tb!107177))

(declare-fun result!128936 () Bool)

(assert (= result!128936 result!128932))

(assert (=> d!541133 t!165334))

(declare-fun b_and!134681 () Bool)

(assert (= b_and!134673 (and (=> t!165334 result!128936) b_and!134681)))

(declare-fun t!165336 () Bool)

(declare-fun tb!107179 () Bool)

(assert (=> (and b!1770265 (= (toValue!5008 (transformation!3485 (h!24892 (t!165170 rules!3447)))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685443)))))) t!165336) tb!107179))

(declare-fun result!128938 () Bool)

(assert (= result!128938 result!128932))

(assert (=> d!541133 t!165336))

(declare-fun b_and!134683 () Bool)

(assert (= b_and!134675 (and (=> t!165336 result!128938) b_and!134683)))

(assert (=> d!541133 m!2188853))

(declare-fun m!2190031 () Bool)

(assert (=> d!541133 m!2190031))

(assert (=> b!1770195 d!541133))

(declare-fun d!541135 () Bool)

(assert (=> d!541135 (= (seqFromList!2454 (originalCharacters!4299 (_1!10949 (get!5952 lt!685443)))) (fromListB!1124 (originalCharacters!4299 (_1!10949 (get!5952 lt!685443)))))))

(declare-fun bs!404654 () Bool)

(assert (= bs!404654 d!541135))

(declare-fun m!2190033 () Bool)

(assert (=> bs!404654 m!2190033))

(assert (=> b!1770195 d!541135))

(declare-fun d!541137 () Bool)

(declare-fun lt!685716 () Int)

(assert (=> d!541137 (>= lt!685716 0)))

(declare-fun e!1133237 () Int)

(assert (=> d!541137 (= lt!685716 e!1133237)))

(declare-fun c!288408 () Bool)

(assert (=> d!541137 (= c!288408 ((_ is Nil!19490) (_2!10949 (get!5952 lt!685214))))))

(assert (=> d!541137 (= (size!15479 (_2!10949 (get!5952 lt!685214))) lt!685716)))

(declare-fun b!1770977 () Bool)

(assert (=> b!1770977 (= e!1133237 0)))

(declare-fun b!1770978 () Bool)

(assert (=> b!1770978 (= e!1133237 (+ 1 (size!15479 (t!165169 (_2!10949 (get!5952 lt!685214))))))))

(assert (= (and d!541137 c!288408) b!1770977))

(assert (= (and d!541137 (not c!288408)) b!1770978))

(declare-fun m!2190035 () Bool)

(assert (=> b!1770978 m!2190035))

(assert (=> b!1769826 d!541137))

(assert (=> b!1769826 d!540701))

(assert (=> b!1769826 d!540983))

(declare-fun d!541139 () Bool)

(declare-fun res!797588 () Bool)

(declare-fun e!1133242 () Bool)

(assert (=> d!541139 (=> res!797588 e!1133242)))

(assert (=> d!541139 (= res!797588 ((_ is Nil!19491) rules!3447))))

(assert (=> d!541139 (= (noDuplicateTag!1316 thiss!24550 rules!3447 Nil!19497) e!1133242)))

(declare-fun b!1770983 () Bool)

(declare-fun e!1133243 () Bool)

(assert (=> b!1770983 (= e!1133242 e!1133243)))

(declare-fun res!797589 () Bool)

(assert (=> b!1770983 (=> (not res!797589) (not e!1133243))))

(declare-fun contains!3517 (List!19567 String!22207) Bool)

(assert (=> b!1770983 (= res!797589 (not (contains!3517 Nil!19497 (tag!3865 (h!24892 rules!3447)))))))

(declare-fun b!1770984 () Bool)

(assert (=> b!1770984 (= e!1133243 (noDuplicateTag!1316 thiss!24550 (t!165170 rules!3447) (Cons!19497 (tag!3865 (h!24892 rules!3447)) Nil!19497)))))

(assert (= (and d!541139 (not res!797588)) b!1770983))

(assert (= (and b!1770983 res!797589) b!1770984))

(declare-fun m!2190037 () Bool)

(assert (=> b!1770983 m!2190037))

(declare-fun m!2190039 () Bool)

(assert (=> b!1770984 m!2190039))

(assert (=> b!1770227 d!541139))

(assert (=> b!1769624 d!541131))

(assert (=> b!1769624 d!541063))

(declare-fun d!541141 () Bool)

(assert (=> d!541141 (= (isEmpty!12304 (tail!2649 lt!685100)) ((_ is Nil!19490) (tail!2649 lt!685100)))))

(assert (=> b!1770206 d!541141))

(assert (=> b!1770206 d!541109))

(assert (=> b!1769844 d!540983))

(assert (=> b!1769844 d!540591))

(declare-fun d!541143 () Bool)

(assert (=> d!541143 (= (isEmpty!12304 (tail!2649 (list!7915 (charsOf!2134 (_1!10949 lt!685099))))) ((_ is Nil!19490) (tail!2649 (list!7915 (charsOf!2134 (_1!10949 lt!685099))))))))

(assert (=> b!1770183 d!541143))

(declare-fun d!541145 () Bool)

(assert (=> d!541145 (= (tail!2649 (list!7915 (charsOf!2134 (_1!10949 lt!685099)))) (t!165169 (list!7915 (charsOf!2134 (_1!10949 lt!685099)))))))

(assert (=> b!1770183 d!541145))

(declare-fun d!541147 () Bool)

(declare-fun c!288409 () Bool)

(assert (=> d!541147 (= c!288409 ((_ is Node!6483) (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 token!523))) (value!108995 token!523)))))))

(declare-fun e!1133244 () Bool)

(assert (=> d!541147 (= (inv!25332 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 token!523))) (value!108995 token!523)))) e!1133244)))

(declare-fun b!1770985 () Bool)

(assert (=> b!1770985 (= e!1133244 (inv!25336 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 token!523))) (value!108995 token!523)))))))

(declare-fun b!1770986 () Bool)

(declare-fun e!1133245 () Bool)

(assert (=> b!1770986 (= e!1133244 e!1133245)))

(declare-fun res!797590 () Bool)

(assert (=> b!1770986 (= res!797590 (not ((_ is Leaf!9446) (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 token!523))) (value!108995 token!523))))))))

(assert (=> b!1770986 (=> res!797590 e!1133245)))

(declare-fun b!1770987 () Bool)

(assert (=> b!1770987 (= e!1133245 (inv!25337 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 token!523))) (value!108995 token!523)))))))

(assert (= (and d!541147 c!288409) b!1770985))

(assert (= (and d!541147 (not c!288409)) b!1770986))

(assert (= (and b!1770986 (not res!797590)) b!1770987))

(declare-fun m!2190041 () Bool)

(assert (=> b!1770985 m!2190041))

(declare-fun m!2190043 () Bool)

(assert (=> b!1770987 m!2190043))

(assert (=> b!1769807 d!541147))

(assert (=> b!1769898 d!540871))

(assert (=> b!1769898 d!540963))

(assert (=> b!1769898 d!540721))

(declare-fun b!1770988 () Bool)

(declare-fun res!797597 () Bool)

(declare-fun e!1133250 () Bool)

(assert (=> b!1770988 (=> (not res!797597) (not e!1133250))))

(assert (=> b!1770988 (= res!797597 (isEmpty!12304 (tail!2649 (list!7915 (charsOf!2134 lt!685281)))))))

(declare-fun b!1770989 () Bool)

(assert (=> b!1770989 (= e!1133250 (= (head!4114 (list!7915 (charsOf!2134 lt!685281))) (c!288084 (regex!3485 (get!5953 (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 lt!685281))))))))))

(declare-fun bm!111017 () Bool)

(declare-fun call!111022 () Bool)

(assert (=> bm!111017 (= call!111022 (isEmpty!12304 (list!7915 (charsOf!2134 lt!685281))))))

(declare-fun b!1770990 () Bool)

(declare-fun e!1133247 () Bool)

(declare-fun e!1133252 () Bool)

(assert (=> b!1770990 (= e!1133247 e!1133252)))

(declare-fun res!797593 () Bool)

(assert (=> b!1770990 (=> res!797593 e!1133252)))

(assert (=> b!1770990 (= res!797593 call!111022)))

(declare-fun b!1770991 () Bool)

(declare-fun e!1133249 () Bool)

(assert (=> b!1770991 (= e!1133249 e!1133247)))

(declare-fun res!797596 () Bool)

(assert (=> b!1770991 (=> (not res!797596) (not e!1133247))))

(declare-fun lt!685717 () Bool)

(assert (=> b!1770991 (= res!797596 (not lt!685717))))

(declare-fun b!1770992 () Bool)

(declare-fun e!1133251 () Bool)

(assert (=> b!1770992 (= e!1133251 (not lt!685717))))

(declare-fun b!1770993 () Bool)

(declare-fun res!797594 () Bool)

(assert (=> b!1770993 (=> res!797594 e!1133252)))

(assert (=> b!1770993 (= res!797594 (not (isEmpty!12304 (tail!2649 (list!7915 (charsOf!2134 lt!685281))))))))

(declare-fun b!1770994 () Bool)

(declare-fun res!797591 () Bool)

(assert (=> b!1770994 (=> res!797591 e!1133249)))

(assert (=> b!1770994 (= res!797591 e!1133250)))

(declare-fun res!797595 () Bool)

(assert (=> b!1770994 (=> (not res!797595) (not e!1133250))))

(assert (=> b!1770994 (= res!797595 lt!685717)))

(declare-fun b!1770995 () Bool)

(declare-fun res!797598 () Bool)

(assert (=> b!1770995 (=> res!797598 e!1133249)))

(assert (=> b!1770995 (= res!797598 (not ((_ is ElementMatch!4813) (regex!3485 (get!5953 (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 lt!685281))))))))))

(assert (=> b!1770995 (= e!1133251 e!1133249)))

(declare-fun b!1770996 () Bool)

(assert (=> b!1770996 (= e!1133252 (not (= (head!4114 (list!7915 (charsOf!2134 lt!685281))) (c!288084 (regex!3485 (get!5953 (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 lt!685281)))))))))))

(declare-fun b!1770997 () Bool)

(declare-fun e!1133248 () Bool)

(assert (=> b!1770997 (= e!1133248 (= lt!685717 call!111022))))

(declare-fun b!1770998 () Bool)

(assert (=> b!1770998 (= e!1133248 e!1133251)))

(declare-fun c!288410 () Bool)

(assert (=> b!1770998 (= c!288410 ((_ is EmptyLang!4813) (regex!3485 (get!5953 (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 lt!685281)))))))))

(declare-fun b!1770999 () Bool)

(declare-fun res!797592 () Bool)

(assert (=> b!1770999 (=> (not res!797592) (not e!1133250))))

(assert (=> b!1770999 (= res!797592 (not call!111022))))

(declare-fun d!541149 () Bool)

(assert (=> d!541149 e!1133248))

(declare-fun c!288412 () Bool)

(assert (=> d!541149 (= c!288412 ((_ is EmptyExpr!4813) (regex!3485 (get!5953 (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 lt!685281)))))))))

(declare-fun e!1133246 () Bool)

(assert (=> d!541149 (= lt!685717 e!1133246)))

(declare-fun c!288411 () Bool)

(assert (=> d!541149 (= c!288411 (isEmpty!12304 (list!7915 (charsOf!2134 lt!685281))))))

(assert (=> d!541149 (validRegex!1949 (regex!3485 (get!5953 (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 lt!685281))))))))

(assert (=> d!541149 (= (matchR!2286 (regex!3485 (get!5953 (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 lt!685281))))) (list!7915 (charsOf!2134 lt!685281))) lt!685717)))

(declare-fun b!1771000 () Bool)

(assert (=> b!1771000 (= e!1133246 (matchR!2286 (derivativeStep!1244 (regex!3485 (get!5953 (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 lt!685281))))) (head!4114 (list!7915 (charsOf!2134 lt!685281)))) (tail!2649 (list!7915 (charsOf!2134 lt!685281)))))))

(declare-fun b!1771001 () Bool)

(assert (=> b!1771001 (= e!1133246 (nullable!1475 (regex!3485 (get!5953 (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 lt!685281)))))))))

(assert (= (and d!541149 c!288411) b!1771001))

(assert (= (and d!541149 (not c!288411)) b!1771000))

(assert (= (and d!541149 c!288412) b!1770997))

(assert (= (and d!541149 (not c!288412)) b!1770998))

(assert (= (and b!1770998 c!288410) b!1770992))

(assert (= (and b!1770998 (not c!288410)) b!1770995))

(assert (= (and b!1770995 (not res!797598)) b!1770994))

(assert (= (and b!1770994 res!797595) b!1770999))

(assert (= (and b!1770999 res!797592) b!1770988))

(assert (= (and b!1770988 res!797597) b!1770989))

(assert (= (and b!1770994 (not res!797591)) b!1770991))

(assert (= (and b!1770991 res!797596) b!1770990))

(assert (= (and b!1770990 (not res!797593)) b!1770993))

(assert (= (and b!1770993 (not res!797594)) b!1770996))

(assert (= (or b!1770997 b!1770990 b!1770999) bm!111017))

(assert (=> b!1771000 m!2188463))

(declare-fun m!2190045 () Bool)

(assert (=> b!1771000 m!2190045))

(assert (=> b!1771000 m!2190045))

(declare-fun m!2190047 () Bool)

(assert (=> b!1771000 m!2190047))

(assert (=> b!1771000 m!2188463))

(declare-fun m!2190049 () Bool)

(assert (=> b!1771000 m!2190049))

(assert (=> b!1771000 m!2190047))

(assert (=> b!1771000 m!2190049))

(declare-fun m!2190051 () Bool)

(assert (=> b!1771000 m!2190051))

(assert (=> d!541149 m!2188463))

(declare-fun m!2190053 () Bool)

(assert (=> d!541149 m!2190053))

(declare-fun m!2190055 () Bool)

(assert (=> d!541149 m!2190055))

(assert (=> b!1770989 m!2188463))

(assert (=> b!1770989 m!2190045))

(assert (=> bm!111017 m!2188463))

(assert (=> bm!111017 m!2190053))

(assert (=> b!1770993 m!2188463))

(assert (=> b!1770993 m!2190049))

(assert (=> b!1770993 m!2190049))

(declare-fun m!2190057 () Bool)

(assert (=> b!1770993 m!2190057))

(assert (=> b!1770988 m!2188463))

(assert (=> b!1770988 m!2190049))

(assert (=> b!1770988 m!2190049))

(assert (=> b!1770988 m!2190057))

(declare-fun m!2190059 () Bool)

(assert (=> b!1771001 m!2190059))

(assert (=> b!1770996 m!2188463))

(assert (=> b!1770996 m!2190045))

(assert (=> b!1769898 d!541149))

(assert (=> b!1769898 d!540729))

(declare-fun d!541151 () Bool)

(declare-fun lt!685718 () Int)

(assert (=> d!541151 (>= lt!685718 0)))

(declare-fun e!1133253 () Int)

(assert (=> d!541151 (= lt!685718 e!1133253)))

(declare-fun c!288413 () Bool)

(assert (=> d!541151 (= c!288413 ((_ is Nil!19490) (_2!10949 (get!5952 lt!685443))))))

(assert (=> d!541151 (= (size!15479 (_2!10949 (get!5952 lt!685443))) lt!685718)))

(declare-fun b!1771002 () Bool)

(assert (=> b!1771002 (= e!1133253 0)))

(declare-fun b!1771003 () Bool)

(assert (=> b!1771003 (= e!1133253 (+ 1 (size!15479 (t!165169 (_2!10949 (get!5952 lt!685443))))))))

(assert (= (and d!541151 c!288413) b!1771002))

(assert (= (and d!541151 (not c!288413)) b!1771003))

(declare-fun m!2190061 () Bool)

(assert (=> b!1771003 m!2190061))

(assert (=> b!1770192 d!541151))

(assert (=> b!1770192 d!540935))

(assert (=> b!1770192 d!540989))

(declare-fun d!541153 () Bool)

(assert (=> d!541153 (= (isEmpty!12304 lt!685116) ((_ is Nil!19490) lt!685116))))

(assert (=> bm!110921 d!541153))

(declare-fun d!541155 () Bool)

(assert (=> d!541155 (= (isEmpty!12304 lt!685100) ((_ is Nil!19490) lt!685100))))

(assert (=> bm!110937 d!541155))

(declare-fun bs!404655 () Bool)

(declare-fun d!541157 () Bool)

(assert (= bs!404655 (and d!541157 d!540915)))

(declare-fun lambda!70431 () Int)

(assert (=> bs!404655 (= (and (= (toChars!4867 (transformation!3485 (rule!5527 token!523))) (toChars!4867 (transformation!3485 (h!24892 rules!3447)))) (= (toValue!5008 (transformation!3485 (rule!5527 token!523))) (toValue!5008 (transformation!3485 (h!24892 rules!3447))))) (= lambda!70431 lambda!70410))))

(declare-fun bs!404656 () Bool)

(assert (= bs!404656 (and d!541157 d!541105)))

(assert (=> bs!404656 (= (and (= (toChars!4867 (transformation!3485 (rule!5527 token!523))) (toChars!4867 (transformation!3485 rule!422))) (= (toValue!5008 (transformation!3485 (rule!5527 token!523))) (toValue!5008 (transformation!3485 rule!422)))) (= lambda!70431 lambda!70429))))

(declare-fun bs!404657 () Bool)

(assert (= bs!404657 (and d!541157 b!1769462)))

(assert (=> bs!404657 (= (and (= (toChars!4867 (transformation!3485 (rule!5527 token!523))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) (= (toValue!5008 (transformation!3485 (rule!5527 token!523))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (= lambda!70431 lambda!70380))))

(declare-fun bs!404658 () Bool)

(assert (= bs!404658 (and d!541157 d!540981)))

(assert (=> bs!404658 (= (and (= (toChars!4867 (transformation!3485 (rule!5527 token!523))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) (= (toValue!5008 (transformation!3485 (rule!5527 token!523))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (= lambda!70431 lambda!70411))))

(declare-fun bs!404659 () Bool)

(assert (= bs!404659 (and d!541157 d!540639)))

(assert (=> bs!404659 (= (and (= (toChars!4867 (transformation!3485 (rule!5527 token!523))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) (= (toValue!5008 (transformation!3485 (rule!5527 token!523))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (= lambda!70431 lambda!70395))))

(assert (=> d!541157 true))

(assert (=> d!541157 (< (dynLambda!9460 order!12447 (toChars!4867 (transformation!3485 (rule!5527 token!523)))) (dynLambda!9459 order!12445 lambda!70431))))

(assert (=> d!541157 true))

(assert (=> d!541157 (< (dynLambda!9458 order!12443 (toValue!5008 (transformation!3485 (rule!5527 token!523)))) (dynLambda!9459 order!12445 lambda!70431))))

(assert (=> d!541157 (= (semiInverseModEq!1390 (toChars!4867 (transformation!3485 (rule!5527 token!523))) (toValue!5008 (transformation!3485 (rule!5527 token!523)))) (Forall!852 lambda!70431))))

(declare-fun bs!404660 () Bool)

(assert (= bs!404660 d!541157))

(declare-fun m!2190063 () Bool)

(assert (=> bs!404660 m!2190063))

(assert (=> d!540495 d!541157))

(assert (=> b!1769620 d!540937))

(assert (=> b!1769949 d!541141))

(assert (=> b!1769949 d!541109))

(declare-fun d!541159 () Bool)

(declare-fun lt!685719 () Int)

(assert (=> d!541159 (>= lt!685719 0)))

(declare-fun e!1133254 () Int)

(assert (=> d!541159 (= lt!685719 e!1133254)))

(declare-fun c!288414 () Bool)

(assert (=> d!541159 (= c!288414 ((_ is Nil!19490) (originalCharacters!4299 (_1!10949 lt!685099))))))

(assert (=> d!541159 (= (size!15479 (originalCharacters!4299 (_1!10949 lt!685099))) lt!685719)))

(declare-fun b!1771004 () Bool)

(assert (=> b!1771004 (= e!1133254 0)))

(declare-fun b!1771005 () Bool)

(assert (=> b!1771005 (= e!1133254 (+ 1 (size!15479 (t!165169 (originalCharacters!4299 (_1!10949 lt!685099))))))))

(assert (= (and d!541159 c!288414) b!1771004))

(assert (= (and d!541159 (not c!288414)) b!1771005))

(declare-fun m!2190065 () Bool)

(assert (=> b!1771005 m!2190065))

(assert (=> d!540677 d!541159))

(declare-fun d!541161 () Bool)

(declare-fun dynLambda!9469 (Int BalanceConc!12910 BalanceConc!12910) Bool)

(assert (=> d!541161 (dynLambda!9469 lambda!70398 lt!685082 (seqFromList!2454 (originalCharacters!4299 (_1!10949 lt!685099))))))

(declare-fun lt!685722 () Unit!33686)

(declare-fun choose!11027 (Int BalanceConc!12910 BalanceConc!12910) Unit!33686)

(assert (=> d!541161 (= lt!685722 (choose!11027 lambda!70398 lt!685082 (seqFromList!2454 (originalCharacters!4299 (_1!10949 lt!685099)))))))

(assert (=> d!541161 (Forall2!563 lambda!70398)))

(assert (=> d!541161 (= (Forall2of!136 lambda!70398 lt!685082 (seqFromList!2454 (originalCharacters!4299 (_1!10949 lt!685099)))) lt!685722)))

(declare-fun b_lambda!57669 () Bool)

(assert (=> (not b_lambda!57669) (not d!541161)))

(declare-fun bs!404661 () Bool)

(assert (= bs!404661 d!541161))

(assert (=> bs!404661 m!2187917))

(declare-fun m!2190067 () Bool)

(assert (=> bs!404661 m!2190067))

(assert (=> bs!404661 m!2187917))

(declare-fun m!2190069 () Bool)

(assert (=> bs!404661 m!2190069))

(declare-fun m!2190071 () Bool)

(assert (=> bs!404661 m!2190071))

(assert (=> d!540683 d!541161))

(assert (=> d!540683 d!540519))

(declare-fun d!541163 () Bool)

(assert (=> d!541163 (= (list!7915 (seqFromList!2454 (originalCharacters!4299 (_1!10949 lt!685099)))) (list!7917 (c!288085 (seqFromList!2454 (originalCharacters!4299 (_1!10949 lt!685099))))))))

(declare-fun bs!404662 () Bool)

(assert (= bs!404662 d!541163))

(declare-fun m!2190073 () Bool)

(assert (=> bs!404662 m!2190073))

(assert (=> d!540683 d!541163))

(assert (=> b!1770202 d!541083))

(declare-fun d!541165 () Bool)

(assert (=> d!541165 (= (isEmpty!12307 lt!685087) (not ((_ is Some!3991) lt!685087)))))

(assert (=> d!540651 d!541165))

(declare-fun d!541167 () Bool)

(assert (=> d!541167 (= (isEmpty!12307 lt!685429) (not ((_ is Some!3991) lt!685429)))))

(assert (=> d!540613 d!541167))

(declare-fun d!541169 () Bool)

(assert (=> d!541169 (= (isEmpty!12304 (_1!10953 lt!685430)) ((_ is Nil!19490) (_1!10953 lt!685430)))))

(assert (=> d!540613 d!541169))

(declare-fun d!541171 () Bool)

(declare-fun lt!685739 () tuple2!19102)

(assert (=> d!541171 (= (++!5309 (_1!10953 lt!685739) (_2!10953 lt!685739)) lt!685092)))

(declare-fun sizeTr!64 (List!19560 Int) Int)

(assert (=> d!541171 (= lt!685739 (findLongestMatchInner!453 (regex!3485 (rule!5527 (_1!10949 lt!685099))) Nil!19490 0 lt!685092 lt!685092 (sizeTr!64 lt!685092 0)))))

(declare-fun lt!685746 () Unit!33686)

(declare-fun lt!685745 () Unit!33686)

(assert (=> d!541171 (= lt!685746 lt!685745)))

(declare-fun lt!685740 () List!19560)

(declare-fun lt!685741 () Int)

(assert (=> d!541171 (= (sizeTr!64 lt!685740 lt!685741) (+ (size!15479 lt!685740) lt!685741))))

(declare-fun lemmaSizeTrEqualsSize!64 (List!19560 Int) Unit!33686)

(assert (=> d!541171 (= lt!685745 (lemmaSizeTrEqualsSize!64 lt!685740 lt!685741))))

(assert (=> d!541171 (= lt!685741 0)))

(assert (=> d!541171 (= lt!685740 Nil!19490)))

(declare-fun lt!685742 () Unit!33686)

(declare-fun lt!685743 () Unit!33686)

(assert (=> d!541171 (= lt!685742 lt!685743)))

(declare-fun lt!685744 () Int)

(assert (=> d!541171 (= (sizeTr!64 lt!685092 lt!685744) (+ (size!15479 lt!685092) lt!685744))))

(assert (=> d!541171 (= lt!685743 (lemmaSizeTrEqualsSize!64 lt!685092 lt!685744))))

(assert (=> d!541171 (= lt!685744 0)))

(assert (=> d!541171 (validRegex!1949 (regex!3485 (rule!5527 (_1!10949 lt!685099))))))

(assert (=> d!541171 (= (findLongestMatch!380 (regex!3485 (rule!5527 (_1!10949 lt!685099))) lt!685092) lt!685739)))

(declare-fun bs!404663 () Bool)

(assert (= bs!404663 d!541171))

(assert (=> bs!404663 m!2188017))

(assert (=> bs!404663 m!2188887))

(declare-fun m!2190075 () Bool)

(assert (=> bs!404663 m!2190075))

(declare-fun m!2190077 () Bool)

(assert (=> bs!404663 m!2190077))

(declare-fun m!2190079 () Bool)

(assert (=> bs!404663 m!2190079))

(declare-fun m!2190081 () Bool)

(assert (=> bs!404663 m!2190081))

(declare-fun m!2190083 () Bool)

(assert (=> bs!404663 m!2190083))

(declare-fun m!2190085 () Bool)

(assert (=> bs!404663 m!2190085))

(declare-fun m!2190087 () Bool)

(assert (=> bs!404663 m!2190087))

(assert (=> bs!404663 m!2190081))

(declare-fun m!2190089 () Bool)

(assert (=> bs!404663 m!2190089))

(assert (=> d!540613 d!541171))

(declare-fun d!541173 () Bool)

(declare-fun res!797599 () Bool)

(declare-fun e!1133255 () Bool)

(assert (=> d!541173 (=> (not res!797599) (not e!1133255))))

(assert (=> d!541173 (= res!797599 (validRegex!1949 (regex!3485 (rule!5527 (_1!10949 lt!685099)))))))

(assert (=> d!541173 (= (ruleValid!983 thiss!24550 (rule!5527 (_1!10949 lt!685099))) e!1133255)))

(declare-fun b!1771007 () Bool)

(declare-fun res!797600 () Bool)

(assert (=> b!1771007 (=> (not res!797600) (not e!1133255))))

(assert (=> b!1771007 (= res!797600 (not (nullable!1475 (regex!3485 (rule!5527 (_1!10949 lt!685099))))))))

(declare-fun b!1771008 () Bool)

(assert (=> b!1771008 (= e!1133255 (not (= (tag!3865 (rule!5527 (_1!10949 lt!685099))) (String!22208 ""))))))

(assert (= (and d!541173 res!797599) b!1771007))

(assert (= (and b!1771007 res!797600) b!1771008))

(assert (=> d!541173 m!2188887))

(assert (=> b!1771007 m!2188889))

(assert (=> d!540613 d!541173))

(declare-fun d!541175 () Bool)

(assert (=> d!541175 (= (inv!25333 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 token!523))) (value!108995 token!523))) (isBalanced!2027 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 token!523))) (value!108995 token!523)))))))

(declare-fun bs!404664 () Bool)

(assert (= bs!404664 d!541175))

(declare-fun m!2190091 () Bool)

(assert (=> bs!404664 m!2190091))

(assert (=> tb!107037 d!541175))

(declare-fun d!541177 () Bool)

(assert (=> d!541177 (= (head!4114 (list!7915 (charsOf!2134 (_1!10949 lt!685099)))) (h!24891 (list!7915 (charsOf!2134 (_1!10949 lt!685099)))))))

(assert (=> b!1770179 d!541177))

(declare-fun e!1133257 () Bool)

(declare-fun b!1771011 () Bool)

(assert (=> b!1771011 (= e!1133257 (isPrefix!1725 (tail!2649 (tail!2649 (++!5309 lt!685116 (Cons!19490 (head!4114 lt!685095) Nil!19490)))) (tail!2649 (tail!2649 lt!685092))))))

(declare-fun d!541179 () Bool)

(declare-fun e!1133258 () Bool)

(assert (=> d!541179 e!1133258))

(declare-fun res!797604 () Bool)

(assert (=> d!541179 (=> res!797604 e!1133258)))

(declare-fun lt!685747 () Bool)

(assert (=> d!541179 (= res!797604 (not lt!685747))))

(declare-fun e!1133256 () Bool)

(assert (=> d!541179 (= lt!685747 e!1133256)))

(declare-fun res!797603 () Bool)

(assert (=> d!541179 (=> res!797603 e!1133256)))

(assert (=> d!541179 (= res!797603 ((_ is Nil!19490) (tail!2649 (++!5309 lt!685116 (Cons!19490 (head!4114 lt!685095) Nil!19490)))))))

(assert (=> d!541179 (= (isPrefix!1725 (tail!2649 (++!5309 lt!685116 (Cons!19490 (head!4114 lt!685095) Nil!19490))) (tail!2649 lt!685092)) lt!685747)))

(declare-fun b!1771012 () Bool)

(assert (=> b!1771012 (= e!1133258 (>= (size!15479 (tail!2649 lt!685092)) (size!15479 (tail!2649 (++!5309 lt!685116 (Cons!19490 (head!4114 lt!685095) Nil!19490))))))))

(declare-fun b!1771009 () Bool)

(assert (=> b!1771009 (= e!1133256 e!1133257)))

(declare-fun res!797602 () Bool)

(assert (=> b!1771009 (=> (not res!797602) (not e!1133257))))

(assert (=> b!1771009 (= res!797602 (not ((_ is Nil!19490) (tail!2649 lt!685092))))))

(declare-fun b!1771010 () Bool)

(declare-fun res!797601 () Bool)

(assert (=> b!1771010 (=> (not res!797601) (not e!1133257))))

(assert (=> b!1771010 (= res!797601 (= (head!4114 (tail!2649 (++!5309 lt!685116 (Cons!19490 (head!4114 lt!685095) Nil!19490)))) (head!4114 (tail!2649 lt!685092))))))

(assert (= (and d!541179 (not res!797603)) b!1771009))

(assert (= (and b!1771009 res!797602) b!1771010))

(assert (= (and b!1771010 res!797601) b!1771011))

(assert (= (and d!541179 (not res!797604)) b!1771012))

(assert (=> b!1771011 m!2188023))

(declare-fun m!2190093 () Bool)

(assert (=> b!1771011 m!2190093))

(assert (=> b!1771011 m!2188013))

(assert (=> b!1771011 m!2189897))

(assert (=> b!1771011 m!2190093))

(assert (=> b!1771011 m!2189897))

(declare-fun m!2190095 () Bool)

(assert (=> b!1771011 m!2190095))

(assert (=> b!1771012 m!2188013))

(assert (=> b!1771012 m!2189901))

(assert (=> b!1771012 m!2188023))

(declare-fun m!2190097 () Bool)

(assert (=> b!1771012 m!2190097))

(assert (=> b!1771010 m!2188023))

(declare-fun m!2190099 () Bool)

(assert (=> b!1771010 m!2190099))

(assert (=> b!1771010 m!2188013))

(assert (=> b!1771010 m!2189905))

(assert (=> b!1769540 d!541179))

(declare-fun d!541181 () Bool)

(assert (=> d!541181 (= (tail!2649 (++!5309 lt!685116 (Cons!19490 (head!4114 lt!685095) Nil!19490))) (t!165169 (++!5309 lt!685116 (Cons!19490 (head!4114 lt!685095) Nil!19490))))))

(assert (=> b!1769540 d!541181))

(assert (=> b!1769540 d!541069))

(declare-fun d!541183 () Bool)

(declare-fun res!797605 () Bool)

(declare-fun e!1133259 () Bool)

(assert (=> d!541183 (=> (not res!797605) (not e!1133259))))

(assert (=> d!541183 (= res!797605 (<= (size!15479 (list!7922 (xs!9359 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))))) 512))))

(assert (=> d!541183 (= (inv!25337 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))) e!1133259)))

(declare-fun b!1771013 () Bool)

(declare-fun res!797606 () Bool)

(assert (=> b!1771013 (=> (not res!797606) (not e!1133259))))

(assert (=> b!1771013 (= res!797606 (= (csize!13197 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))) (size!15479 (list!7922 (xs!9359 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))))))))))

(declare-fun b!1771014 () Bool)

(assert (=> b!1771014 (= e!1133259 (and (> (csize!13197 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))) 0) (<= (csize!13197 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))) 512)))))

(assert (= (and d!541183 res!797605) b!1771013))

(assert (= (and b!1771013 res!797606) b!1771014))

(declare-fun m!2190101 () Bool)

(assert (=> d!541183 m!2190101))

(assert (=> d!541183 m!2190101))

(declare-fun m!2190103 () Bool)

(assert (=> d!541183 m!2190103))

(assert (=> b!1771013 m!2190101))

(assert (=> b!1771013 m!2190101))

(assert (=> b!1771013 m!2190103))

(assert (=> b!1770224 d!541183))

(declare-fun b!1771015 () Bool)

(declare-fun e!1133260 () List!19560)

(assert (=> b!1771015 (= e!1133260 (Cons!19490 (head!4114 suffix!1421) Nil!19490))))

(declare-fun b!1771016 () Bool)

(assert (=> b!1771016 (= e!1133260 (Cons!19490 (h!24891 (t!165169 lt!685116)) (++!5309 (t!165169 (t!165169 lt!685116)) (Cons!19490 (head!4114 suffix!1421) Nil!19490))))))

(declare-fun d!541185 () Bool)

(declare-fun e!1133261 () Bool)

(assert (=> d!541185 e!1133261))

(declare-fun res!797608 () Bool)

(assert (=> d!541185 (=> (not res!797608) (not e!1133261))))

(declare-fun lt!685748 () List!19560)

(assert (=> d!541185 (= res!797608 (= (content!2826 lt!685748) ((_ map or) (content!2826 (t!165169 lt!685116)) (content!2826 (Cons!19490 (head!4114 suffix!1421) Nil!19490)))))))

(assert (=> d!541185 (= lt!685748 e!1133260)))

(declare-fun c!288415 () Bool)

(assert (=> d!541185 (= c!288415 ((_ is Nil!19490) (t!165169 lt!685116)))))

(assert (=> d!541185 (= (++!5309 (t!165169 lt!685116) (Cons!19490 (head!4114 suffix!1421) Nil!19490)) lt!685748)))

(declare-fun b!1771018 () Bool)

(assert (=> b!1771018 (= e!1133261 (or (not (= (Cons!19490 (head!4114 suffix!1421) Nil!19490) Nil!19490)) (= lt!685748 (t!165169 lt!685116))))))

(declare-fun b!1771017 () Bool)

(declare-fun res!797607 () Bool)

(assert (=> b!1771017 (=> (not res!797607) (not e!1133261))))

(assert (=> b!1771017 (= res!797607 (= (size!15479 lt!685748) (+ (size!15479 (t!165169 lt!685116)) (size!15479 (Cons!19490 (head!4114 suffix!1421) Nil!19490)))))))

(assert (= (and d!541185 c!288415) b!1771015))

(assert (= (and d!541185 (not c!288415)) b!1771016))

(assert (= (and d!541185 res!797608) b!1771017))

(assert (= (and b!1771017 res!797607) b!1771018))

(declare-fun m!2190105 () Bool)

(assert (=> b!1771016 m!2190105))

(declare-fun m!2190107 () Bool)

(assert (=> d!541185 m!2190107))

(assert (=> d!541185 m!2189699))

(assert (=> d!541185 m!2188179))

(declare-fun m!2190109 () Bool)

(assert (=> b!1771017 m!2190109))

(assert (=> b!1771017 m!2189693))

(assert (=> b!1771017 m!2188183))

(assert (=> b!1769727 d!541185))

(declare-fun d!541187 () Bool)

(declare-fun charsToBigInt!0 (List!19559 Int) Int)

(assert (=> d!541187 (= (inv!15 (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)) (= (charsToBigInt!0 (text!25474 (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)) 0) (value!108990 (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))))))

(declare-fun bs!404665 () Bool)

(assert (= bs!404665 d!541187))

(declare-fun m!2190111 () Bool)

(assert (=> bs!404665 m!2190111))

(assert (=> b!1769776 d!541187))

(declare-fun d!541189 () Bool)

(declare-fun lt!685749 () Bool)

(assert (=> d!541189 (= lt!685749 (select (content!2828 (t!165170 rules!3447)) rule!422))))

(declare-fun e!1133262 () Bool)

(assert (=> d!541189 (= lt!685749 e!1133262)))

(declare-fun res!797609 () Bool)

(assert (=> d!541189 (=> (not res!797609) (not e!1133262))))

(assert (=> d!541189 (= res!797609 ((_ is Cons!19491) (t!165170 rules!3447)))))

(assert (=> d!541189 (= (contains!3515 (t!165170 rules!3447) rule!422) lt!685749)))

(declare-fun b!1771019 () Bool)

(declare-fun e!1133263 () Bool)

(assert (=> b!1771019 (= e!1133262 e!1133263)))

(declare-fun res!797610 () Bool)

(assert (=> b!1771019 (=> res!797610 e!1133263)))

(assert (=> b!1771019 (= res!797610 (= (h!24892 (t!165170 rules!3447)) rule!422))))

(declare-fun b!1771020 () Bool)

(assert (=> b!1771020 (= e!1133263 (contains!3515 (t!165170 (t!165170 rules!3447)) rule!422))))

(assert (= (and d!541189 res!797609) b!1771019))

(assert (= (and b!1771019 (not res!797610)) b!1771020))

(declare-fun m!2190113 () Bool)

(assert (=> d!541189 m!2190113))

(declare-fun m!2190115 () Bool)

(assert (=> d!541189 m!2190115))

(declare-fun m!2190117 () Bool)

(assert (=> b!1771020 m!2190117))

(assert (=> b!1770169 d!541189))

(assert (=> b!1769537 d!540983))

(assert (=> b!1769537 d!540661))

(assert (=> d!540425 d!540657))

(declare-fun b!1771021 () Bool)

(declare-fun res!797617 () Bool)

(declare-fun e!1133268 () Bool)

(assert (=> b!1771021 (=> (not res!797617) (not e!1133268))))

(assert (=> b!1771021 (= res!797617 (isEmpty!12304 (tail!2649 (list!7915 (charsOf!2134 token!523)))))))

(declare-fun b!1771022 () Bool)

(assert (=> b!1771022 (= e!1133268 (= (head!4114 (list!7915 (charsOf!2134 token!523))) (c!288084 (rulesRegex!841 thiss!24550 rules!3447))))))

(declare-fun bm!111018 () Bool)

(declare-fun call!111023 () Bool)

(assert (=> bm!111018 (= call!111023 (isEmpty!12304 (list!7915 (charsOf!2134 token!523))))))

(declare-fun b!1771023 () Bool)

(declare-fun e!1133265 () Bool)

(declare-fun e!1133270 () Bool)

(assert (=> b!1771023 (= e!1133265 e!1133270)))

(declare-fun res!797613 () Bool)

(assert (=> b!1771023 (=> res!797613 e!1133270)))

(assert (=> b!1771023 (= res!797613 call!111023)))

(declare-fun b!1771024 () Bool)

(declare-fun e!1133267 () Bool)

(assert (=> b!1771024 (= e!1133267 e!1133265)))

(declare-fun res!797616 () Bool)

(assert (=> b!1771024 (=> (not res!797616) (not e!1133265))))

(declare-fun lt!685750 () Bool)

(assert (=> b!1771024 (= res!797616 (not lt!685750))))

(declare-fun b!1771025 () Bool)

(declare-fun e!1133269 () Bool)

(assert (=> b!1771025 (= e!1133269 (not lt!685750))))

(declare-fun b!1771026 () Bool)

(declare-fun res!797614 () Bool)

(assert (=> b!1771026 (=> res!797614 e!1133270)))

(assert (=> b!1771026 (= res!797614 (not (isEmpty!12304 (tail!2649 (list!7915 (charsOf!2134 token!523))))))))

(declare-fun b!1771027 () Bool)

(declare-fun res!797611 () Bool)

(assert (=> b!1771027 (=> res!797611 e!1133267)))

(assert (=> b!1771027 (= res!797611 e!1133268)))

(declare-fun res!797615 () Bool)

(assert (=> b!1771027 (=> (not res!797615) (not e!1133268))))

(assert (=> b!1771027 (= res!797615 lt!685750)))

(declare-fun b!1771028 () Bool)

(declare-fun res!797618 () Bool)

(assert (=> b!1771028 (=> res!797618 e!1133267)))

(assert (=> b!1771028 (= res!797618 (not ((_ is ElementMatch!4813) (rulesRegex!841 thiss!24550 rules!3447))))))

(assert (=> b!1771028 (= e!1133269 e!1133267)))

(declare-fun b!1771029 () Bool)

(assert (=> b!1771029 (= e!1133270 (not (= (head!4114 (list!7915 (charsOf!2134 token!523))) (c!288084 (rulesRegex!841 thiss!24550 rules!3447)))))))

(declare-fun b!1771030 () Bool)

(declare-fun e!1133266 () Bool)

(assert (=> b!1771030 (= e!1133266 (= lt!685750 call!111023))))

(declare-fun b!1771031 () Bool)

(assert (=> b!1771031 (= e!1133266 e!1133269)))

(declare-fun c!288416 () Bool)

(assert (=> b!1771031 (= c!288416 ((_ is EmptyLang!4813) (rulesRegex!841 thiss!24550 rules!3447)))))

(declare-fun b!1771032 () Bool)

(declare-fun res!797612 () Bool)

(assert (=> b!1771032 (=> (not res!797612) (not e!1133268))))

(assert (=> b!1771032 (= res!797612 (not call!111023))))

(declare-fun d!541191 () Bool)

(assert (=> d!541191 e!1133266))

(declare-fun c!288418 () Bool)

(assert (=> d!541191 (= c!288418 ((_ is EmptyExpr!4813) (rulesRegex!841 thiss!24550 rules!3447)))))

(declare-fun e!1133264 () Bool)

(assert (=> d!541191 (= lt!685750 e!1133264)))

(declare-fun c!288417 () Bool)

(assert (=> d!541191 (= c!288417 (isEmpty!12304 (list!7915 (charsOf!2134 token!523))))))

(assert (=> d!541191 (validRegex!1949 (rulesRegex!841 thiss!24550 rules!3447))))

(assert (=> d!541191 (= (matchR!2286 (rulesRegex!841 thiss!24550 rules!3447) (list!7915 (charsOf!2134 token!523))) lt!685750)))

(declare-fun b!1771033 () Bool)

(assert (=> b!1771033 (= e!1133264 (matchR!2286 (derivativeStep!1244 (rulesRegex!841 thiss!24550 rules!3447) (head!4114 (list!7915 (charsOf!2134 token!523)))) (tail!2649 (list!7915 (charsOf!2134 token!523)))))))

(declare-fun b!1771034 () Bool)

(assert (=> b!1771034 (= e!1133264 (nullable!1475 (rulesRegex!841 thiss!24550 rules!3447)))))

(assert (= (and d!541191 c!288417) b!1771034))

(assert (= (and d!541191 (not c!288417)) b!1771033))

(assert (= (and d!541191 c!288418) b!1771030))

(assert (= (and d!541191 (not c!288418)) b!1771031))

(assert (= (and b!1771031 c!288416) b!1771025))

(assert (= (and b!1771031 (not c!288416)) b!1771028))

(assert (= (and b!1771028 (not res!797618)) b!1771027))

(assert (= (and b!1771027 res!797615) b!1771032))

(assert (= (and b!1771032 res!797612) b!1771021))

(assert (= (and b!1771021 res!797617) b!1771022))

(assert (= (and b!1771027 (not res!797611)) b!1771024))

(assert (= (and b!1771024 res!797616) b!1771023))

(assert (= (and b!1771023 (not res!797613)) b!1771026))

(assert (= (and b!1771026 (not res!797614)) b!1771029))

(assert (= (or b!1771030 b!1771023 b!1771032) bm!111018))

(assert (=> b!1771033 m!2188135))

(declare-fun m!2190119 () Bool)

(assert (=> b!1771033 m!2190119))

(assert (=> b!1771033 m!2187851))

(assert (=> b!1771033 m!2190119))

(declare-fun m!2190121 () Bool)

(assert (=> b!1771033 m!2190121))

(assert (=> b!1771033 m!2188135))

(declare-fun m!2190123 () Bool)

(assert (=> b!1771033 m!2190123))

(assert (=> b!1771033 m!2190121))

(assert (=> b!1771033 m!2190123))

(declare-fun m!2190125 () Bool)

(assert (=> b!1771033 m!2190125))

(assert (=> d!541191 m!2188135))

(declare-fun m!2190127 () Bool)

(assert (=> d!541191 m!2190127))

(assert (=> d!541191 m!2187851))

(assert (=> d!541191 m!2189673))

(assert (=> b!1771022 m!2188135))

(assert (=> b!1771022 m!2190119))

(assert (=> bm!111018 m!2188135))

(assert (=> bm!111018 m!2190127))

(assert (=> b!1771026 m!2188135))

(assert (=> b!1771026 m!2190123))

(assert (=> b!1771026 m!2190123))

(declare-fun m!2190129 () Bool)

(assert (=> b!1771026 m!2190129))

(assert (=> b!1771021 m!2188135))

(assert (=> b!1771021 m!2190123))

(assert (=> b!1771021 m!2190123))

(assert (=> b!1771021 m!2190129))

(assert (=> b!1771034 m!2187851))

(assert (=> b!1771034 m!2189675))

(assert (=> b!1771029 m!2188135))

(assert (=> b!1771029 m!2190119))

(assert (=> d!540425 d!541191))

(declare-fun d!541193 () Bool)

(assert (=> d!541193 (matchR!2286 (rulesRegex!841 thiss!24550 rules!3447) (list!7915 (charsOf!2134 token!523)))))

(assert (=> d!541193 true))

(declare-fun _$92!265 () Unit!33686)

(assert (=> d!541193 (= (choose!11006 thiss!24550 rules!3447 lt!685116 token!523 rule!422 Nil!19490) _$92!265)))

(declare-fun bs!404666 () Bool)

(assert (= bs!404666 d!541193))

(assert (=> bs!404666 m!2187851))

(assert (=> bs!404666 m!2187813))

(assert (=> bs!404666 m!2187813))

(assert (=> bs!404666 m!2188135))

(assert (=> bs!404666 m!2187851))

(assert (=> bs!404666 m!2188135))

(assert (=> bs!404666 m!2188137))

(assert (=> d!540425 d!541193))

(declare-fun d!541195 () Bool)

(assert (=> d!541195 (= (list!7915 (charsOf!2134 token!523)) (list!7917 (c!288085 (charsOf!2134 token!523))))))

(declare-fun bs!404667 () Bool)

(assert (= bs!404667 d!541195))

(declare-fun m!2190131 () Bool)

(assert (=> bs!404667 m!2190131))

(assert (=> d!540425 d!541195))

(assert (=> d!540425 d!540461))

(assert (=> d!540425 d!540383))

(assert (=> b!1769858 d!540937))

(declare-fun d!541197 () Bool)

(assert (=> d!541197 (= (head!4114 lt!685092) (h!24891 lt!685092))))

(assert (=> b!1769858 d!541197))

(declare-fun d!541199 () Bool)

(declare-fun c!288423 () Bool)

(assert (=> d!541199 (= c!288423 ((_ is Nil!19491) rules!3447))))

(declare-fun e!1133279 () (InoxSet Rule!6770))

(assert (=> d!541199 (= (content!2828 rules!3447) e!1133279)))

(declare-fun b!1771043 () Bool)

(assert (=> b!1771043 (= e!1133279 ((as const (Array Rule!6770 Bool)) false))))

(declare-fun b!1771044 () Bool)

(assert (=> b!1771044 (= e!1133279 ((_ map or) (store ((as const (Array Rule!6770 Bool)) false) (h!24892 rules!3447) true) (content!2828 (t!165170 rules!3447))))))

(assert (= (and d!541199 c!288423) b!1771043))

(assert (= (and d!541199 (not c!288423)) b!1771044))

(declare-fun m!2190133 () Bool)

(assert (=> b!1771044 m!2190133))

(assert (=> b!1771044 m!2190113))

(assert (=> d!540635 d!541199))

(assert (=> b!1769932 d!540647))

(assert (=> b!1769932 d!540541))

(assert (=> b!1769932 d!540545))

(assert (=> b!1769932 d!541065))

(declare-fun b!1771051 () Bool)

(declare-fun res!797631 () Bool)

(declare-fun e!1133284 () Bool)

(assert (=> b!1771051 (=> (not res!797631) (not e!1133284))))

(assert (=> b!1771051 (= res!797631 (isEmpty!12304 (tail!2649 (list!7915 (charsOf!2134 (_1!10949 lt!685099))))))))

(declare-fun b!1771052 () Bool)

(assert (=> b!1771052 (= e!1133284 (= (head!4114 (list!7915 (charsOf!2134 (_1!10949 lt!685099)))) (c!288084 (regex!3485 (get!5953 (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 (_1!10949 lt!685099)))))))))))

(declare-fun bm!111019 () Bool)

(declare-fun call!111024 () Bool)

(assert (=> bm!111019 (= call!111024 (isEmpty!12304 (list!7915 (charsOf!2134 (_1!10949 lt!685099)))))))

(declare-fun b!1771053 () Bool)

(declare-fun e!1133281 () Bool)

(declare-fun e!1133286 () Bool)

(assert (=> b!1771053 (= e!1133281 e!1133286)))

(declare-fun res!797627 () Bool)

(assert (=> b!1771053 (=> res!797627 e!1133286)))

(assert (=> b!1771053 (= res!797627 call!111024)))

(declare-fun b!1771054 () Bool)

(declare-fun e!1133283 () Bool)

(assert (=> b!1771054 (= e!1133283 e!1133281)))

(declare-fun res!797630 () Bool)

(assert (=> b!1771054 (=> (not res!797630) (not e!1133281))))

(declare-fun lt!685753 () Bool)

(assert (=> b!1771054 (= res!797630 (not lt!685753))))

(declare-fun b!1771055 () Bool)

(declare-fun e!1133285 () Bool)

(assert (=> b!1771055 (= e!1133285 (not lt!685753))))

(declare-fun b!1771056 () Bool)

(declare-fun res!797628 () Bool)

(assert (=> b!1771056 (=> res!797628 e!1133286)))

(assert (=> b!1771056 (= res!797628 (not (isEmpty!12304 (tail!2649 (list!7915 (charsOf!2134 (_1!10949 lt!685099)))))))))

(declare-fun b!1771057 () Bool)

(declare-fun res!797625 () Bool)

(assert (=> b!1771057 (=> res!797625 e!1133283)))

(assert (=> b!1771057 (= res!797625 e!1133284)))

(declare-fun res!797629 () Bool)

(assert (=> b!1771057 (=> (not res!797629) (not e!1133284))))

(assert (=> b!1771057 (= res!797629 lt!685753)))

(declare-fun b!1771058 () Bool)

(declare-fun res!797632 () Bool)

(assert (=> b!1771058 (=> res!797632 e!1133283)))

(assert (=> b!1771058 (= res!797632 (not ((_ is ElementMatch!4813) (regex!3485 (get!5953 (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 (_1!10949 lt!685099)))))))))))

(assert (=> b!1771058 (= e!1133285 e!1133283)))

(declare-fun b!1771059 () Bool)

(assert (=> b!1771059 (= e!1133286 (not (= (head!4114 (list!7915 (charsOf!2134 (_1!10949 lt!685099)))) (c!288084 (regex!3485 (get!5953 (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 (_1!10949 lt!685099))))))))))))

(declare-fun b!1771060 () Bool)

(declare-fun e!1133282 () Bool)

(assert (=> b!1771060 (= e!1133282 (= lt!685753 call!111024))))

(declare-fun b!1771061 () Bool)

(assert (=> b!1771061 (= e!1133282 e!1133285)))

(declare-fun c!288424 () Bool)

(assert (=> b!1771061 (= c!288424 ((_ is EmptyLang!4813) (regex!3485 (get!5953 (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 (_1!10949 lt!685099))))))))))

(declare-fun b!1771062 () Bool)

(declare-fun res!797626 () Bool)

(assert (=> b!1771062 (=> (not res!797626) (not e!1133284))))

(assert (=> b!1771062 (= res!797626 (not call!111024))))

(declare-fun d!541201 () Bool)

(assert (=> d!541201 e!1133282))

(declare-fun c!288426 () Bool)

(assert (=> d!541201 (= c!288426 ((_ is EmptyExpr!4813) (regex!3485 (get!5953 (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 (_1!10949 lt!685099))))))))))

(declare-fun e!1133280 () Bool)

(assert (=> d!541201 (= lt!685753 e!1133280)))

(declare-fun c!288425 () Bool)

(assert (=> d!541201 (= c!288425 (isEmpty!12304 (list!7915 (charsOf!2134 (_1!10949 lt!685099)))))))

(assert (=> d!541201 (validRegex!1949 (regex!3485 (get!5953 (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 (_1!10949 lt!685099)))))))))

(assert (=> d!541201 (= (matchR!2286 (regex!3485 (get!5953 (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 (_1!10949 lt!685099)))))) (list!7915 (charsOf!2134 (_1!10949 lt!685099)))) lt!685753)))

(declare-fun b!1771063 () Bool)

(assert (=> b!1771063 (= e!1133280 (matchR!2286 (derivativeStep!1244 (regex!3485 (get!5953 (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 (_1!10949 lt!685099)))))) (head!4114 (list!7915 (charsOf!2134 (_1!10949 lt!685099))))) (tail!2649 (list!7915 (charsOf!2134 (_1!10949 lt!685099))))))))

(declare-fun b!1771064 () Bool)

(assert (=> b!1771064 (= e!1133280 (nullable!1475 (regex!3485 (get!5953 (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 (_1!10949 lt!685099))))))))))

(assert (= (and d!541201 c!288425) b!1771064))

(assert (= (and d!541201 (not c!288425)) b!1771063))

(assert (= (and d!541201 c!288426) b!1771060))

(assert (= (and d!541201 (not c!288426)) b!1771061))

(assert (= (and b!1771061 c!288424) b!1771055))

(assert (= (and b!1771061 (not c!288424)) b!1771058))

(assert (= (and b!1771058 (not res!797632)) b!1771057))

(assert (= (and b!1771057 res!797629) b!1771062))

(assert (= (and b!1771062 res!797626) b!1771051))

(assert (= (and b!1771051 res!797631) b!1771052))

(assert (= (and b!1771057 (not res!797625)) b!1771054))

(assert (= (and b!1771054 res!797630) b!1771053))

(assert (= (and b!1771053 (not res!797627)) b!1771056))

(assert (= (and b!1771056 (not res!797628)) b!1771059))

(assert (= (or b!1771060 b!1771053 b!1771062) bm!111019))

(assert (=> b!1771063 m!2187909))

(assert (=> b!1771063 m!2188829))

(assert (=> b!1771063 m!2188829))

(declare-fun m!2190135 () Bool)

(assert (=> b!1771063 m!2190135))

(assert (=> b!1771063 m!2187909))

(assert (=> b!1771063 m!2188833))

(assert (=> b!1771063 m!2190135))

(assert (=> b!1771063 m!2188833))

(declare-fun m!2190137 () Bool)

(assert (=> b!1771063 m!2190137))

(assert (=> d!541201 m!2187909))

(assert (=> d!541201 m!2188837))

(declare-fun m!2190139 () Bool)

(assert (=> d!541201 m!2190139))

(assert (=> b!1771052 m!2187909))

(assert (=> b!1771052 m!2188829))

(assert (=> bm!111019 m!2187909))

(assert (=> bm!111019 m!2188837))

(assert (=> b!1771056 m!2187909))

(assert (=> b!1771056 m!2188833))

(assert (=> b!1771056 m!2188833))

(assert (=> b!1771056 m!2188841))

(assert (=> b!1771051 m!2187909))

(assert (=> b!1771051 m!2188833))

(assert (=> b!1771051 m!2188833))

(assert (=> b!1771051 m!2188841))

(declare-fun m!2190141 () Bool)

(assert (=> b!1771064 m!2190141))

(assert (=> b!1771059 m!2187909))

(assert (=> b!1771059 m!2188829))

(assert (=> b!1769932 d!541201))

(assert (=> b!1770155 d!541043))

(declare-fun d!541203 () Bool)

(assert (=> d!541203 (= (apply!5285 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685429)))) (seqFromList!2454 (originalCharacters!4299 (_1!10949 (get!5952 lt!685429))))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685429))))) (seqFromList!2454 (originalCharacters!4299 (_1!10949 (get!5952 lt!685429))))))))

(declare-fun b_lambda!57671 () Bool)

(assert (=> (not b_lambda!57671) (not d!541203)))

(declare-fun t!165338 () Bool)

(declare-fun tb!107181 () Bool)

(assert (=> (and b!1769445 (= (toValue!5008 (transformation!3485 (rule!5527 token!523))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685429)))))) t!165338) tb!107181))

(declare-fun result!128940 () Bool)

(assert (=> tb!107181 (= result!128940 (inv!21 (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685429))))) (seqFromList!2454 (originalCharacters!4299 (_1!10949 (get!5952 lt!685429)))))))))

(declare-fun m!2190143 () Bool)

(assert (=> tb!107181 m!2190143))

(assert (=> d!541203 t!165338))

(declare-fun b_and!134685 () Bool)

(assert (= b_and!134677 (and (=> t!165338 result!128940) b_and!134685)))

(declare-fun t!165340 () Bool)

(declare-fun tb!107183 () Bool)

(assert (=> (and b!1769469 (= (toValue!5008 (transformation!3485 (h!24892 rules!3447))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685429)))))) t!165340) tb!107183))

(declare-fun result!128942 () Bool)

(assert (= result!128942 result!128940))

(assert (=> d!541203 t!165340))

(declare-fun b_and!134687 () Bool)

(assert (= b_and!134679 (and (=> t!165340 result!128942) b_and!134687)))

(declare-fun t!165342 () Bool)

(declare-fun tb!107185 () Bool)

(assert (=> (and b!1769458 (= (toValue!5008 (transformation!3485 rule!422)) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685429)))))) t!165342) tb!107185))

(declare-fun result!128944 () Bool)

(assert (= result!128944 result!128940))

(assert (=> d!541203 t!165342))

(declare-fun b_and!134689 () Bool)

(assert (= b_and!134681 (and (=> t!165342 result!128944) b_and!134689)))

(declare-fun tb!107187 () Bool)

(declare-fun t!165344 () Bool)

(assert (=> (and b!1770265 (= (toValue!5008 (transformation!3485 (h!24892 (t!165170 rules!3447)))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685429)))))) t!165344) tb!107187))

(declare-fun result!128946 () Bool)

(assert (= result!128946 result!128940))

(assert (=> d!541203 t!165344))

(declare-fun b_and!134691 () Bool)

(assert (= b_and!134683 (and (=> t!165344 result!128946) b_and!134691)))

(assert (=> d!541203 m!2188795))

(declare-fun m!2190145 () Bool)

(assert (=> d!541203 m!2190145))

(assert (=> b!1770155 d!541203))

(declare-fun d!541205 () Bool)

(assert (=> d!541205 (= (seqFromList!2454 (originalCharacters!4299 (_1!10949 (get!5952 lt!685429)))) (fromListB!1124 (originalCharacters!4299 (_1!10949 (get!5952 lt!685429)))))))

(declare-fun bs!404668 () Bool)

(assert (= bs!404668 d!541205))

(declare-fun m!2190147 () Bool)

(assert (=> bs!404668 m!2190147))

(assert (=> b!1770155 d!541205))

(declare-fun b!1771070 () Bool)

(declare-fun res!797642 () Bool)

(declare-fun e!1133295 () Bool)

(assert (=> b!1771070 (=> (not res!797642) (not e!1133295))))

(assert (=> b!1771070 (= res!797642 (isEmpty!12304 (tail!2649 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685214)))))))))

(declare-fun b!1771071 () Bool)

(assert (=> b!1771071 (= e!1133295 (= (head!4114 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685214))))) (c!288084 (regex!3485 (rule!5527 (_1!10949 (get!5952 lt!685214)))))))))

(declare-fun bm!111020 () Bool)

(declare-fun call!111025 () Bool)

(assert (=> bm!111020 (= call!111025 (isEmpty!12304 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685214))))))))

(declare-fun b!1771072 () Bool)

(declare-fun e!1133292 () Bool)

(declare-fun e!1133297 () Bool)

(assert (=> b!1771072 (= e!1133292 e!1133297)))

(declare-fun res!797638 () Bool)

(assert (=> b!1771072 (=> res!797638 e!1133297)))

(assert (=> b!1771072 (= res!797638 call!111025)))

(declare-fun b!1771073 () Bool)

(declare-fun e!1133294 () Bool)

(assert (=> b!1771073 (= e!1133294 e!1133292)))

(declare-fun res!797641 () Bool)

(assert (=> b!1771073 (=> (not res!797641) (not e!1133292))))

(declare-fun lt!685755 () Bool)

(assert (=> b!1771073 (= res!797641 (not lt!685755))))

(declare-fun b!1771074 () Bool)

(declare-fun e!1133296 () Bool)

(assert (=> b!1771074 (= e!1133296 (not lt!685755))))

(declare-fun b!1771075 () Bool)

(declare-fun res!797639 () Bool)

(assert (=> b!1771075 (=> res!797639 e!1133297)))

(assert (=> b!1771075 (= res!797639 (not (isEmpty!12304 (tail!2649 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685214))))))))))

(declare-fun b!1771076 () Bool)

(declare-fun res!797636 () Bool)

(assert (=> b!1771076 (=> res!797636 e!1133294)))

(assert (=> b!1771076 (= res!797636 e!1133295)))

(declare-fun res!797640 () Bool)

(assert (=> b!1771076 (=> (not res!797640) (not e!1133295))))

(assert (=> b!1771076 (= res!797640 lt!685755)))

(declare-fun b!1771077 () Bool)

(declare-fun res!797643 () Bool)

(assert (=> b!1771077 (=> res!797643 e!1133294)))

(assert (=> b!1771077 (= res!797643 (not ((_ is ElementMatch!4813) (regex!3485 (rule!5527 (_1!10949 (get!5952 lt!685214)))))))))

(assert (=> b!1771077 (= e!1133296 e!1133294)))

(declare-fun b!1771078 () Bool)

(assert (=> b!1771078 (= e!1133297 (not (= (head!4114 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685214))))) (c!288084 (regex!3485 (rule!5527 (_1!10949 (get!5952 lt!685214))))))))))

(declare-fun b!1771079 () Bool)

(declare-fun e!1133293 () Bool)

(assert (=> b!1771079 (= e!1133293 (= lt!685755 call!111025))))

(declare-fun b!1771080 () Bool)

(assert (=> b!1771080 (= e!1133293 e!1133296)))

(declare-fun c!288428 () Bool)

(assert (=> b!1771080 (= c!288428 ((_ is EmptyLang!4813) (regex!3485 (rule!5527 (_1!10949 (get!5952 lt!685214))))))))

(declare-fun b!1771081 () Bool)

(declare-fun res!797637 () Bool)

(assert (=> b!1771081 (=> (not res!797637) (not e!1133295))))

(assert (=> b!1771081 (= res!797637 (not call!111025))))

(declare-fun d!541207 () Bool)

(assert (=> d!541207 e!1133293))

(declare-fun c!288430 () Bool)

(assert (=> d!541207 (= c!288430 ((_ is EmptyExpr!4813) (regex!3485 (rule!5527 (_1!10949 (get!5952 lt!685214))))))))

(declare-fun e!1133291 () Bool)

(assert (=> d!541207 (= lt!685755 e!1133291)))

(declare-fun c!288429 () Bool)

(assert (=> d!541207 (= c!288429 (isEmpty!12304 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685214))))))))

(assert (=> d!541207 (validRegex!1949 (regex!3485 (rule!5527 (_1!10949 (get!5952 lt!685214)))))))

(assert (=> d!541207 (= (matchR!2286 (regex!3485 (rule!5527 (_1!10949 (get!5952 lt!685214)))) (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685214))))) lt!685755)))

(declare-fun b!1771082 () Bool)

(assert (=> b!1771082 (= e!1133291 (matchR!2286 (derivativeStep!1244 (regex!3485 (rule!5527 (_1!10949 (get!5952 lt!685214)))) (head!4114 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685214)))))) (tail!2649 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685214)))))))))

(declare-fun b!1771083 () Bool)

(assert (=> b!1771083 (= e!1133291 (nullable!1475 (regex!3485 (rule!5527 (_1!10949 (get!5952 lt!685214))))))))

(assert (= (and d!541207 c!288429) b!1771083))

(assert (= (and d!541207 (not c!288429)) b!1771082))

(assert (= (and d!541207 c!288430) b!1771079))

(assert (= (and d!541207 (not c!288430)) b!1771080))

(assert (= (and b!1771080 c!288428) b!1771074))

(assert (= (and b!1771080 (not c!288428)) b!1771077))

(assert (= (and b!1771077 (not res!797643)) b!1771076))

(assert (= (and b!1771076 res!797640) b!1771081))

(assert (= (and b!1771081 res!797637) b!1771070))

(assert (= (and b!1771070 res!797642) b!1771071))

(assert (= (and b!1771076 (not res!797636)) b!1771073))

(assert (= (and b!1771073 res!797641) b!1771072))

(assert (= (and b!1771072 (not res!797638)) b!1771075))

(assert (= (and b!1771075 (not res!797639)) b!1771078))

(assert (= (or b!1771079 b!1771072 b!1771081) bm!111020))

(assert (=> b!1771082 m!2188311))

(declare-fun m!2190171 () Bool)

(assert (=> b!1771082 m!2190171))

(assert (=> b!1771082 m!2190171))

(declare-fun m!2190173 () Bool)

(assert (=> b!1771082 m!2190173))

(assert (=> b!1771082 m!2188311))

(declare-fun m!2190175 () Bool)

(assert (=> b!1771082 m!2190175))

(assert (=> b!1771082 m!2190173))

(assert (=> b!1771082 m!2190175))

(declare-fun m!2190177 () Bool)

(assert (=> b!1771082 m!2190177))

(assert (=> d!541207 m!2188311))

(declare-fun m!2190179 () Bool)

(assert (=> d!541207 m!2190179))

(declare-fun m!2190181 () Bool)

(assert (=> d!541207 m!2190181))

(assert (=> b!1771071 m!2188311))

(assert (=> b!1771071 m!2190171))

(assert (=> bm!111020 m!2188311))

(assert (=> bm!111020 m!2190179))

(assert (=> b!1771075 m!2188311))

(assert (=> b!1771075 m!2190175))

(assert (=> b!1771075 m!2190175))

(declare-fun m!2190193 () Bool)

(assert (=> b!1771075 m!2190193))

(assert (=> b!1771070 m!2188311))

(assert (=> b!1771070 m!2190175))

(assert (=> b!1771070 m!2190175))

(assert (=> b!1771070 m!2190193))

(declare-fun m!2190199 () Bool)

(assert (=> b!1771083 m!2190199))

(assert (=> b!1771078 m!2188311))

(assert (=> b!1771078 m!2190171))

(assert (=> b!1769833 d!541207))

(assert (=> b!1769833 d!540701))

(assert (=> b!1769833 d!540697))

(assert (=> b!1769833 d!540699))

(declare-fun d!541217 () Bool)

(assert (=> d!541217 (= (isEmpty!12308 lt!685307) (not ((_ is Some!3992) lt!685307)))))

(assert (=> d!540545 d!541217))

(assert (=> d!540545 d!540673))

(declare-fun d!541219 () Bool)

(assert (=> d!541219 true))

(declare-fun lt!685765 () Bool)

(assert (=> d!541219 (= lt!685765 (rulesValidInductive!1180 thiss!24550 rules!3447))))

(declare-fun lambda!70434 () Int)

(declare-fun forall!4280 (List!19561 Int) Bool)

(assert (=> d!541219 (= lt!685765 (forall!4280 rules!3447 lambda!70434))))

(assert (=> d!541219 (= (rulesValid!1316 thiss!24550 rules!3447) lt!685765)))

(declare-fun bs!404672 () Bool)

(assert (= bs!404672 d!541219))

(assert (=> bs!404672 m!2188323))

(declare-fun m!2190235 () Bool)

(assert (=> bs!404672 m!2190235))

(assert (=> d!540673 d!541219))

(assert (=> b!1769944 d!541141))

(assert (=> b!1769944 d!541109))

(declare-fun d!541225 () Bool)

(declare-fun lt!685766 () Int)

(assert (=> d!541225 (>= lt!685766 0)))

(declare-fun e!1133304 () Int)

(assert (=> d!541225 (= lt!685766 e!1133304)))

(declare-fun c!288432 () Bool)

(assert (=> d!541225 (= c!288432 ((_ is Nil!19490) (t!165169 lt!685100)))))

(assert (=> d!541225 (= (size!15479 (t!165169 lt!685100)) lt!685766)))

(declare-fun b!1771099 () Bool)

(assert (=> b!1771099 (= e!1133304 0)))

(declare-fun b!1771100 () Bool)

(assert (=> b!1771100 (= e!1133304 (+ 1 (size!15479 (t!165169 (t!165169 lt!685100)))))))

(assert (= (and d!541225 c!288432) b!1771099))

(assert (= (and d!541225 (not c!288432)) b!1771100))

(declare-fun m!2190237 () Bool)

(assert (=> b!1771100 m!2190237))

(assert (=> b!1770044 d!541225))

(assert (=> b!1769632 d!540913))

(declare-fun d!541227 () Bool)

(assert (=> d!541227 (= (nullable!1475 (regex!3485 (rule!5527 (_1!10949 lt!685099)))) (nullableFct!335 (regex!3485 (rule!5527 (_1!10949 lt!685099)))))))

(declare-fun bs!404673 () Bool)

(assert (= bs!404673 d!541227))

(declare-fun m!2190239 () Bool)

(assert (=> bs!404673 m!2190239))

(assert (=> b!1770214 d!541227))

(declare-fun d!541229 () Bool)

(declare-fun lt!685767 () Int)

(assert (=> d!541229 (>= lt!685767 0)))

(declare-fun e!1133305 () Int)

(assert (=> d!541229 (= lt!685767 e!1133305)))

(declare-fun c!288433 () Bool)

(assert (=> d!541229 (= c!288433 ((_ is Nil!19490) (list!7915 lt!685082)))))

(assert (=> d!541229 (= (size!15479 (list!7915 lt!685082)) lt!685767)))

(declare-fun b!1771101 () Bool)

(assert (=> b!1771101 (= e!1133305 0)))

(declare-fun b!1771102 () Bool)

(assert (=> b!1771102 (= e!1133305 (+ 1 (size!15479 (t!165169 (list!7915 lt!685082)))))))

(assert (= (and d!541229 c!288433) b!1771101))

(assert (= (and d!541229 (not c!288433)) b!1771102))

(declare-fun m!2190243 () Bool)

(assert (=> b!1771102 m!2190243))

(assert (=> d!540681 d!541229))

(assert (=> d!540681 d!540519))

(declare-fun d!541231 () Bool)

(declare-fun lt!685771 () Int)

(assert (=> d!541231 (= lt!685771 (size!15479 (list!7917 (c!288085 lt!685082))))))

(assert (=> d!541231 (= lt!685771 (ite ((_ is Empty!6483) (c!288085 lt!685082)) 0 (ite ((_ is Leaf!9446) (c!288085 lt!685082)) (csize!13197 (c!288085 lt!685082)) (csize!13196 (c!288085 lt!685082)))))))

(assert (=> d!541231 (= (size!15481 (c!288085 lt!685082)) lt!685771)))

(declare-fun bs!404675 () Bool)

(assert (= bs!404675 d!541231))

(assert (=> bs!404675 m!2188359))

(assert (=> bs!404675 m!2188359))

(declare-fun m!2190257 () Bool)

(assert (=> bs!404675 m!2190257))

(assert (=> d!540681 d!541231))

(assert (=> d!540569 d!540565))

(declare-fun d!541239 () Bool)

(assert (=> d!541239 (ruleValid!983 thiss!24550 rule!422)))

(assert (=> d!541239 true))

(declare-fun _$65!957 () Unit!33686)

(assert (=> d!541239 (= (choose!11014 thiss!24550 rule!422 rules!3447) _$65!957)))

(declare-fun bs!404676 () Bool)

(assert (= bs!404676 d!541239))

(assert (=> bs!404676 m!2187939))

(assert (=> d!540569 d!541239))

(assert (=> d!540569 d!540635))

(declare-fun d!541241 () Bool)

(assert (=> d!541241 (= (isEmpty!12308 lt!685093) (not ((_ is Some!3992) lt!685093)))))

(assert (=> d!540511 d!541241))

(declare-fun d!541243 () Bool)

(assert (=> d!541243 (= (nullable!1475 (regex!3485 lt!685084)) (nullableFct!335 (regex!3485 lt!685084)))))

(declare-fun bs!404678 () Bool)

(assert (= bs!404678 d!541243))

(declare-fun m!2190259 () Bool)

(assert (=> bs!404678 m!2190259))

(assert (=> b!1770191 d!541243))

(assert (=> b!1769862 d!541083))

(declare-fun d!541245 () Bool)

(assert (=> d!541245 (= (head!4114 (++!5309 lt!685100 (_2!10949 lt!685099))) (h!24891 (++!5309 lt!685100 (_2!10949 lt!685099))))))

(assert (=> b!1769862 d!541245))

(declare-fun b!1771107 () Bool)

(declare-fun res!797665 () Bool)

(declare-fun e!1133313 () Bool)

(assert (=> b!1771107 (=> (not res!797665) (not e!1133313))))

(assert (=> b!1771107 (= res!797665 (isEmpty!12304 (tail!2649 (tail!2649 (list!7915 (charsOf!2134 (_1!10949 lt!685099)))))))))

(declare-fun b!1771108 () Bool)

(assert (=> b!1771108 (= e!1133313 (= (head!4114 (tail!2649 (list!7915 (charsOf!2134 (_1!10949 lt!685099))))) (c!288084 (derivativeStep!1244 (regex!3485 lt!685084) (head!4114 (list!7915 (charsOf!2134 (_1!10949 lt!685099))))))))))

(declare-fun bm!111022 () Bool)

(declare-fun call!111027 () Bool)

(assert (=> bm!111022 (= call!111027 (isEmpty!12304 (tail!2649 (list!7915 (charsOf!2134 (_1!10949 lt!685099))))))))

(declare-fun b!1771109 () Bool)

(declare-fun e!1133310 () Bool)

(declare-fun e!1133315 () Bool)

(assert (=> b!1771109 (= e!1133310 e!1133315)))

(declare-fun res!797661 () Bool)

(assert (=> b!1771109 (=> res!797661 e!1133315)))

(assert (=> b!1771109 (= res!797661 call!111027)))

(declare-fun b!1771110 () Bool)

(declare-fun e!1133312 () Bool)

(assert (=> b!1771110 (= e!1133312 e!1133310)))

(declare-fun res!797664 () Bool)

(assert (=> b!1771110 (=> (not res!797664) (not e!1133310))))

(declare-fun lt!685775 () Bool)

(assert (=> b!1771110 (= res!797664 (not lt!685775))))

(declare-fun b!1771111 () Bool)

(declare-fun e!1133314 () Bool)

(assert (=> b!1771111 (= e!1133314 (not lt!685775))))

(declare-fun b!1771112 () Bool)

(declare-fun res!797662 () Bool)

(assert (=> b!1771112 (=> res!797662 e!1133315)))

(assert (=> b!1771112 (= res!797662 (not (isEmpty!12304 (tail!2649 (tail!2649 (list!7915 (charsOf!2134 (_1!10949 lt!685099))))))))))

(declare-fun b!1771113 () Bool)

(declare-fun res!797659 () Bool)

(assert (=> b!1771113 (=> res!797659 e!1133312)))

(assert (=> b!1771113 (= res!797659 e!1133313)))

(declare-fun res!797663 () Bool)

(assert (=> b!1771113 (=> (not res!797663) (not e!1133313))))

(assert (=> b!1771113 (= res!797663 lt!685775)))

(declare-fun b!1771114 () Bool)

(declare-fun res!797666 () Bool)

(assert (=> b!1771114 (=> res!797666 e!1133312)))

(assert (=> b!1771114 (= res!797666 (not ((_ is ElementMatch!4813) (derivativeStep!1244 (regex!3485 lt!685084) (head!4114 (list!7915 (charsOf!2134 (_1!10949 lt!685099))))))))))

(assert (=> b!1771114 (= e!1133314 e!1133312)))

(declare-fun b!1771115 () Bool)

(assert (=> b!1771115 (= e!1133315 (not (= (head!4114 (tail!2649 (list!7915 (charsOf!2134 (_1!10949 lt!685099))))) (c!288084 (derivativeStep!1244 (regex!3485 lt!685084) (head!4114 (list!7915 (charsOf!2134 (_1!10949 lt!685099)))))))))))

(declare-fun b!1771116 () Bool)

(declare-fun e!1133311 () Bool)

(assert (=> b!1771116 (= e!1133311 (= lt!685775 call!111027))))

(declare-fun b!1771117 () Bool)

(assert (=> b!1771117 (= e!1133311 e!1133314)))

(declare-fun c!288434 () Bool)

(assert (=> b!1771117 (= c!288434 ((_ is EmptyLang!4813) (derivativeStep!1244 (regex!3485 lt!685084) (head!4114 (list!7915 (charsOf!2134 (_1!10949 lt!685099)))))))))

(declare-fun b!1771118 () Bool)

(declare-fun res!797660 () Bool)

(assert (=> b!1771118 (=> (not res!797660) (not e!1133313))))

(assert (=> b!1771118 (= res!797660 (not call!111027))))

(declare-fun d!541249 () Bool)

(assert (=> d!541249 e!1133311))

(declare-fun c!288436 () Bool)

(assert (=> d!541249 (= c!288436 ((_ is EmptyExpr!4813) (derivativeStep!1244 (regex!3485 lt!685084) (head!4114 (list!7915 (charsOf!2134 (_1!10949 lt!685099)))))))))

(declare-fun e!1133309 () Bool)

(assert (=> d!541249 (= lt!685775 e!1133309)))

(declare-fun c!288435 () Bool)

(assert (=> d!541249 (= c!288435 (isEmpty!12304 (tail!2649 (list!7915 (charsOf!2134 (_1!10949 lt!685099))))))))

(assert (=> d!541249 (validRegex!1949 (derivativeStep!1244 (regex!3485 lt!685084) (head!4114 (list!7915 (charsOf!2134 (_1!10949 lt!685099))))))))

(assert (=> d!541249 (= (matchR!2286 (derivativeStep!1244 (regex!3485 lt!685084) (head!4114 (list!7915 (charsOf!2134 (_1!10949 lt!685099))))) (tail!2649 (list!7915 (charsOf!2134 (_1!10949 lt!685099))))) lt!685775)))

(declare-fun b!1771119 () Bool)

(assert (=> b!1771119 (= e!1133309 (matchR!2286 (derivativeStep!1244 (derivativeStep!1244 (regex!3485 lt!685084) (head!4114 (list!7915 (charsOf!2134 (_1!10949 lt!685099))))) (head!4114 (tail!2649 (list!7915 (charsOf!2134 (_1!10949 lt!685099)))))) (tail!2649 (tail!2649 (list!7915 (charsOf!2134 (_1!10949 lt!685099)))))))))

(declare-fun b!1771120 () Bool)

(assert (=> b!1771120 (= e!1133309 (nullable!1475 (derivativeStep!1244 (regex!3485 lt!685084) (head!4114 (list!7915 (charsOf!2134 (_1!10949 lt!685099)))))))))

(assert (= (and d!541249 c!288435) b!1771120))

(assert (= (and d!541249 (not c!288435)) b!1771119))

(assert (= (and d!541249 c!288436) b!1771116))

(assert (= (and d!541249 (not c!288436)) b!1771117))

(assert (= (and b!1771117 c!288434) b!1771111))

(assert (= (and b!1771117 (not c!288434)) b!1771114))

(assert (= (and b!1771114 (not res!797666)) b!1771113))

(assert (= (and b!1771113 res!797663) b!1771118))

(assert (= (and b!1771118 res!797660) b!1771107))

(assert (= (and b!1771107 res!797665) b!1771108))

(assert (= (and b!1771113 (not res!797659)) b!1771110))

(assert (= (and b!1771110 res!797664) b!1771109))

(assert (= (and b!1771109 (not res!797661)) b!1771112))

(assert (= (and b!1771112 (not res!797662)) b!1771115))

(assert (= (or b!1771116 b!1771109 b!1771118) bm!111022))

(assert (=> b!1771119 m!2188833))

(declare-fun m!2190265 () Bool)

(assert (=> b!1771119 m!2190265))

(assert (=> b!1771119 m!2188831))

(assert (=> b!1771119 m!2190265))

(declare-fun m!2190269 () Bool)

(assert (=> b!1771119 m!2190269))

(assert (=> b!1771119 m!2188833))

(declare-fun m!2190271 () Bool)

(assert (=> b!1771119 m!2190271))

(assert (=> b!1771119 m!2190269))

(assert (=> b!1771119 m!2190271))

(declare-fun m!2190273 () Bool)

(assert (=> b!1771119 m!2190273))

(assert (=> d!541249 m!2188833))

(assert (=> d!541249 m!2188841))

(assert (=> d!541249 m!2188831))

(declare-fun m!2190275 () Bool)

(assert (=> d!541249 m!2190275))

(assert (=> b!1771108 m!2188833))

(assert (=> b!1771108 m!2190265))

(assert (=> bm!111022 m!2188833))

(assert (=> bm!111022 m!2188841))

(assert (=> b!1771112 m!2188833))

(assert (=> b!1771112 m!2190271))

(assert (=> b!1771112 m!2190271))

(declare-fun m!2190277 () Bool)

(assert (=> b!1771112 m!2190277))

(assert (=> b!1771107 m!2188833))

(assert (=> b!1771107 m!2190271))

(assert (=> b!1771107 m!2190271))

(assert (=> b!1771107 m!2190277))

(assert (=> b!1771120 m!2188831))

(declare-fun m!2190279 () Bool)

(assert (=> b!1771120 m!2190279))

(assert (=> b!1771115 m!2188833))

(assert (=> b!1771115 m!2190265))

(assert (=> b!1770190 d!541249))

(declare-fun d!541257 () Bool)

(declare-fun lt!685778 () Regex!4813)

(assert (=> d!541257 (validRegex!1949 lt!685778)))

(declare-fun e!1133319 () Regex!4813)

(assert (=> d!541257 (= lt!685778 e!1133319)))

(declare-fun c!288438 () Bool)

(assert (=> d!541257 (= c!288438 (or ((_ is EmptyExpr!4813) (regex!3485 lt!685084)) ((_ is EmptyLang!4813) (regex!3485 lt!685084))))))

(assert (=> d!541257 (validRegex!1949 (regex!3485 lt!685084))))

(assert (=> d!541257 (= (derivativeStep!1244 (regex!3485 lt!685084) (head!4114 (list!7915 (charsOf!2134 (_1!10949 lt!685099))))) lt!685778)))

(declare-fun b!1771127 () Bool)

(declare-fun c!288440 () Bool)

(assert (=> b!1771127 (= c!288440 (nullable!1475 (regOne!10138 (regex!3485 lt!685084))))))

(declare-fun e!1133323 () Regex!4813)

(declare-fun e!1133322 () Regex!4813)

(assert (=> b!1771127 (= e!1133323 e!1133322)))

(declare-fun bm!111023 () Bool)

(declare-fun call!111029 () Regex!4813)

(declare-fun c!288441 () Bool)

(assert (=> bm!111023 (= call!111029 (derivativeStep!1244 (ite c!288441 (regOne!10139 (regex!3485 lt!685084)) (regOne!10138 (regex!3485 lt!685084))) (head!4114 (list!7915 (charsOf!2134 (_1!10949 lt!685099))))))))

(declare-fun b!1771128 () Bool)

(assert (=> b!1771128 (= c!288441 ((_ is Union!4813) (regex!3485 lt!685084)))))

(declare-fun e!1133321 () Regex!4813)

(declare-fun e!1133320 () Regex!4813)

(assert (=> b!1771128 (= e!1133321 e!1133320)))

(declare-fun bm!111024 () Bool)

(declare-fun call!111030 () Regex!4813)

(declare-fun call!111031 () Regex!4813)

(assert (=> bm!111024 (= call!111030 call!111031)))

(declare-fun b!1771129 () Bool)

(declare-fun call!111028 () Regex!4813)

(assert (=> b!1771129 (= e!1133322 (Union!4813 (Concat!8389 call!111028 (regTwo!10138 (regex!3485 lt!685084))) EmptyLang!4813))))

(declare-fun b!1771130 () Bool)

(assert (=> b!1771130 (= e!1133320 (Union!4813 call!111029 call!111031))))

(declare-fun b!1771131 () Bool)

(assert (=> b!1771131 (= e!1133321 (ite (= (head!4114 (list!7915 (charsOf!2134 (_1!10949 lt!685099)))) (c!288084 (regex!3485 lt!685084))) EmptyExpr!4813 EmptyLang!4813))))

(declare-fun b!1771132 () Bool)

(assert (=> b!1771132 (= e!1133322 (Union!4813 (Concat!8389 call!111029 (regTwo!10138 (regex!3485 lt!685084))) call!111028))))

(declare-fun b!1771133 () Bool)

(assert (=> b!1771133 (= e!1133320 e!1133323)))

(declare-fun c!288439 () Bool)

(assert (=> b!1771133 (= c!288439 ((_ is Star!4813) (regex!3485 lt!685084)))))

(declare-fun b!1771134 () Bool)

(assert (=> b!1771134 (= e!1133319 e!1133321)))

(declare-fun c!288442 () Bool)

(assert (=> b!1771134 (= c!288442 ((_ is ElementMatch!4813) (regex!3485 lt!685084)))))

(declare-fun bm!111025 () Bool)

(assert (=> bm!111025 (= call!111031 (derivativeStep!1244 (ite c!288441 (regTwo!10139 (regex!3485 lt!685084)) (ite c!288439 (reg!5142 (regex!3485 lt!685084)) (ite c!288440 (regTwo!10138 (regex!3485 lt!685084)) (regOne!10138 (regex!3485 lt!685084))))) (head!4114 (list!7915 (charsOf!2134 (_1!10949 lt!685099))))))))

(declare-fun b!1771135 () Bool)

(assert (=> b!1771135 (= e!1133323 (Concat!8389 call!111030 (regex!3485 lt!685084)))))

(declare-fun bm!111026 () Bool)

(assert (=> bm!111026 (= call!111028 call!111030)))

(declare-fun b!1771136 () Bool)

(assert (=> b!1771136 (= e!1133319 EmptyLang!4813)))

(assert (= (and d!541257 c!288438) b!1771136))

(assert (= (and d!541257 (not c!288438)) b!1771134))

(assert (= (and b!1771134 c!288442) b!1771131))

(assert (= (and b!1771134 (not c!288442)) b!1771128))

(assert (= (and b!1771128 c!288441) b!1771130))

(assert (= (and b!1771128 (not c!288441)) b!1771133))

(assert (= (and b!1771133 c!288439) b!1771135))

(assert (= (and b!1771133 (not c!288439)) b!1771127))

(assert (= (and b!1771127 c!288440) b!1771132))

(assert (= (and b!1771127 (not c!288440)) b!1771129))

(assert (= (or b!1771132 b!1771129) bm!111026))

(assert (= (or b!1771135 bm!111026) bm!111024))

(assert (= (or b!1771130 bm!111024) bm!111025))

(assert (= (or b!1771130 b!1771132) bm!111023))

(declare-fun m!2190293 () Bool)

(assert (=> d!541257 m!2190293))

(assert (=> d!541257 m!2188839))

(declare-fun m!2190295 () Bool)

(assert (=> b!1771127 m!2190295))

(assert (=> bm!111023 m!2188829))

(declare-fun m!2190297 () Bool)

(assert (=> bm!111023 m!2190297))

(assert (=> bm!111025 m!2188829))

(declare-fun m!2190299 () Bool)

(assert (=> bm!111025 m!2190299))

(assert (=> b!1770190 d!541257))

(assert (=> b!1770190 d!541177))

(assert (=> b!1770190 d!541145))

(declare-fun d!541263 () Bool)

(declare-fun lt!685782 () Int)

(assert (=> d!541263 (>= lt!685782 0)))

(declare-fun e!1133328 () Int)

(assert (=> d!541263 (= lt!685782 e!1133328)))

(declare-fun c!288445 () Bool)

(assert (=> d!541263 (= c!288445 ((_ is Nil!19490) lt!685228))))

(assert (=> d!541263 (= (size!15479 lt!685228) lt!685782)))

(declare-fun b!1771143 () Bool)

(assert (=> b!1771143 (= e!1133328 0)))

(declare-fun b!1771144 () Bool)

(assert (=> b!1771144 (= e!1133328 (+ 1 (size!15479 (t!165169 lt!685228))))))

(assert (= (and d!541263 c!288445) b!1771143))

(assert (= (and d!541263 (not c!288445)) b!1771144))

(declare-fun m!2190303 () Bool)

(assert (=> b!1771144 m!2190303))

(assert (=> b!1769867 d!541263))

(assert (=> b!1769867 d!540989))

(declare-fun d!541265 () Bool)

(declare-fun lt!685783 () Int)

(assert (=> d!541265 (>= lt!685783 0)))

(declare-fun e!1133329 () Int)

(assert (=> d!541265 (= lt!685783 e!1133329)))

(declare-fun c!288446 () Bool)

(assert (=> d!541265 (= c!288446 ((_ is Nil!19490) suffix!1421))))

(assert (=> d!541265 (= (size!15479 suffix!1421) lt!685783)))

(declare-fun b!1771145 () Bool)

(assert (=> b!1771145 (= e!1133329 0)))

(declare-fun b!1771146 () Bool)

(assert (=> b!1771146 (= e!1133329 (+ 1 (size!15479 (t!165169 suffix!1421))))))

(assert (= (and d!541265 c!288446) b!1771145))

(assert (= (and d!541265 (not c!288446)) b!1771146))

(declare-fun m!2190311 () Bool)

(assert (=> b!1771146 m!2190311))

(assert (=> b!1769867 d!541265))

(assert (=> d!540521 d!540515))

(assert (=> d!540521 d!540525))

(declare-fun d!541268 () Bool)

(assert (=> d!541268 (isPrefix!1725 lt!685100 (++!5309 lt!685100 (_2!10949 lt!685099)))))

(assert (=> d!541268 true))

(declare-fun _$46!1220 () Unit!33686)

(assert (=> d!541268 (= (choose!11008 lt!685100 (_2!10949 lt!685099)) _$46!1220)))

(declare-fun bs!404680 () Bool)

(assert (= bs!404680 d!541268))

(assert (=> bs!404680 m!2187869))

(assert (=> bs!404680 m!2187869))

(assert (=> bs!404680 m!2187871))

(assert (=> d!540521 d!541268))

(declare-fun b!1771161 () Bool)

(declare-fun res!797686 () Bool)

(declare-fun e!1133339 () Bool)

(assert (=> b!1771161 (=> (not res!797686) (not e!1133339))))

(declare-fun lt!685789 () Option!3992)

(assert (=> b!1771161 (= res!797686 (< (size!15479 (_2!10949 (get!5952 lt!685789))) (size!15479 lt!685116)))))

(declare-fun call!111033 () Option!3992)

(declare-fun bm!111028 () Bool)

(assert (=> bm!111028 (= call!111033 (maxPrefixOneRule!1037 thiss!24550 (h!24892 (t!165170 rules!3447)) lt!685116))))

(declare-fun b!1771163 () Bool)

(declare-fun e!1133337 () Option!3992)

(assert (=> b!1771163 (= e!1133337 call!111033)))

(declare-fun b!1771164 () Bool)

(declare-fun res!797682 () Bool)

(assert (=> b!1771164 (=> (not res!797682) (not e!1133339))))

(assert (=> b!1771164 (= res!797682 (= (value!108995 (_1!10949 (get!5952 lt!685789))) (apply!5285 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685789)))) (seqFromList!2454 (originalCharacters!4299 (_1!10949 (get!5952 lt!685789)))))))))

(declare-fun b!1771165 () Bool)

(declare-fun res!797684 () Bool)

(assert (=> b!1771165 (=> (not res!797684) (not e!1133339))))

(assert (=> b!1771165 (= res!797684 (= (++!5309 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685789)))) (_2!10949 (get!5952 lt!685789))) lt!685116))))

(declare-fun b!1771162 () Bool)

(declare-fun res!797681 () Bool)

(assert (=> b!1771162 (=> (not res!797681) (not e!1133339))))

(assert (=> b!1771162 (= res!797681 (= (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685789)))) (originalCharacters!4299 (_1!10949 (get!5952 lt!685789)))))))

(declare-fun d!541271 () Bool)

(declare-fun e!1133338 () Bool)

(assert (=> d!541271 e!1133338))

(declare-fun res!797683 () Bool)

(assert (=> d!541271 (=> res!797683 e!1133338)))

(assert (=> d!541271 (= res!797683 (isEmpty!12307 lt!685789))))

(assert (=> d!541271 (= lt!685789 e!1133337)))

(declare-fun c!288450 () Bool)

(assert (=> d!541271 (= c!288450 (and ((_ is Cons!19491) (t!165170 rules!3447)) ((_ is Nil!19491) (t!165170 (t!165170 rules!3447)))))))

(declare-fun lt!685787 () Unit!33686)

(declare-fun lt!685786 () Unit!33686)

(assert (=> d!541271 (= lt!685787 lt!685786)))

(assert (=> d!541271 (isPrefix!1725 lt!685116 lt!685116)))

(assert (=> d!541271 (= lt!685786 (lemmaIsPrefixRefl!1142 lt!685116 lt!685116))))

(assert (=> d!541271 (rulesValidInductive!1180 thiss!24550 (t!165170 rules!3447))))

(assert (=> d!541271 (= (maxPrefix!1668 thiss!24550 (t!165170 rules!3447) lt!685116) lt!685789)))

(declare-fun b!1771166 () Bool)

(assert (=> b!1771166 (= e!1133338 e!1133339)))

(declare-fun res!797685 () Bool)

(assert (=> b!1771166 (=> (not res!797685) (not e!1133339))))

(assert (=> b!1771166 (= res!797685 (isDefined!3335 lt!685789))))

(declare-fun b!1771167 () Bool)

(declare-fun lt!685785 () Option!3992)

(declare-fun lt!685788 () Option!3992)

(assert (=> b!1771167 (= e!1133337 (ite (and ((_ is None!3991) lt!685785) ((_ is None!3991) lt!685788)) None!3991 (ite ((_ is None!3991) lt!685788) lt!685785 (ite ((_ is None!3991) lt!685785) lt!685788 (ite (>= (size!15478 (_1!10949 (v!25466 lt!685785))) (size!15478 (_1!10949 (v!25466 lt!685788)))) lt!685785 lt!685788)))))))

(assert (=> b!1771167 (= lt!685785 call!111033)))

(assert (=> b!1771167 (= lt!685788 (maxPrefix!1668 thiss!24550 (t!165170 (t!165170 rules!3447)) lt!685116))))

(declare-fun b!1771168 () Bool)

(declare-fun res!797687 () Bool)

(assert (=> b!1771168 (=> (not res!797687) (not e!1133339))))

(assert (=> b!1771168 (= res!797687 (matchR!2286 (regex!3485 (rule!5527 (_1!10949 (get!5952 lt!685789)))) (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685789))))))))

(declare-fun b!1771169 () Bool)

(assert (=> b!1771169 (= e!1133339 (contains!3515 (t!165170 rules!3447) (rule!5527 (_1!10949 (get!5952 lt!685789)))))))

(assert (= (and d!541271 c!288450) b!1771163))

(assert (= (and d!541271 (not c!288450)) b!1771167))

(assert (= (or b!1771163 b!1771167) bm!111028))

(assert (= (and d!541271 (not res!797683)) b!1771166))

(assert (= (and b!1771166 res!797685) b!1771162))

(assert (= (and b!1771162 res!797681) b!1771161))

(assert (= (and b!1771161 res!797686) b!1771165))

(assert (= (and b!1771165 res!797684) b!1771164))

(assert (= (and b!1771164 res!797682) b!1771168))

(assert (= (and b!1771168 res!797687) b!1771169))

(declare-fun m!2190331 () Bool)

(assert (=> bm!111028 m!2190331))

(declare-fun m!2190333 () Bool)

(assert (=> b!1771164 m!2190333))

(declare-fun m!2190335 () Bool)

(assert (=> b!1771164 m!2190335))

(assert (=> b!1771164 m!2190335))

(declare-fun m!2190337 () Bool)

(assert (=> b!1771164 m!2190337))

(assert (=> b!1771161 m!2190333))

(declare-fun m!2190339 () Bool)

(assert (=> b!1771161 m!2190339))

(assert (=> b!1771161 m!2188041))

(assert (=> b!1771165 m!2190333))

(declare-fun m!2190341 () Bool)

(assert (=> b!1771165 m!2190341))

(assert (=> b!1771165 m!2190341))

(declare-fun m!2190343 () Bool)

(assert (=> b!1771165 m!2190343))

(assert (=> b!1771165 m!2190343))

(declare-fun m!2190345 () Bool)

(assert (=> b!1771165 m!2190345))

(declare-fun m!2190347 () Bool)

(assert (=> b!1771166 m!2190347))

(assert (=> b!1771162 m!2190333))

(assert (=> b!1771162 m!2190341))

(assert (=> b!1771162 m!2190341))

(assert (=> b!1771162 m!2190343))

(declare-fun m!2190349 () Bool)

(assert (=> d!541271 m!2190349))

(assert (=> d!541271 m!2188869))

(assert (=> d!541271 m!2188871))

(declare-fun m!2190351 () Bool)

(assert (=> d!541271 m!2190351))

(assert (=> b!1771169 m!2190333))

(declare-fun m!2190353 () Bool)

(assert (=> b!1771169 m!2190353))

(assert (=> b!1771168 m!2190333))

(assert (=> b!1771168 m!2190341))

(assert (=> b!1771168 m!2190341))

(assert (=> b!1771168 m!2190343))

(assert (=> b!1771168 m!2190343))

(declare-fun m!2190355 () Bool)

(assert (=> b!1771168 m!2190355))

(declare-fun m!2190357 () Bool)

(assert (=> b!1771167 m!2190357))

(assert (=> b!1770198 d!541271))

(assert (=> b!1769627 d!540937))

(declare-fun d!541277 () Bool)

(declare-fun e!1133340 () Bool)

(assert (=> d!541277 e!1133340))

(declare-fun res!797688 () Bool)

(assert (=> d!541277 (=> (not res!797688) (not e!1133340))))

(declare-fun lt!685790 () BalanceConc!12910)

(assert (=> d!541277 (= res!797688 (= (list!7915 lt!685790) (originalCharacters!4299 (_1!10949 lt!685099))))))

(assert (=> d!541277 (= lt!685790 (BalanceConc!12911 (fromList!446 (originalCharacters!4299 (_1!10949 lt!685099)))))))

(assert (=> d!541277 (= (fromListB!1124 (originalCharacters!4299 (_1!10949 lt!685099))) lt!685790)))

(declare-fun b!1771170 () Bool)

(assert (=> b!1771170 (= e!1133340 (isBalanced!2027 (fromList!446 (originalCharacters!4299 (_1!10949 lt!685099)))))))

(assert (= (and d!541277 res!797688) b!1771170))

(declare-fun m!2190359 () Bool)

(assert (=> d!541277 m!2190359))

(declare-fun m!2190361 () Bool)

(assert (=> d!541277 m!2190361))

(assert (=> b!1771170 m!2190361))

(assert (=> b!1771170 m!2190361))

(declare-fun m!2190363 () Bool)

(assert (=> b!1771170 m!2190363))

(assert (=> d!540679 d!541277))

(assert (=> b!1770209 d!541083))

(declare-fun d!541279 () Bool)

(assert (=> d!541279 (= (isEmpty!12307 lt!685443) (not ((_ is Some!3991) lt!685443)))))

(assert (=> d!540653 d!541279))

(declare-fun b!1771173 () Bool)

(declare-fun e!1133342 () Bool)

(assert (=> b!1771173 (= e!1133342 (isPrefix!1725 (tail!2649 lt!685116) (tail!2649 lt!685116)))))

(declare-fun d!541281 () Bool)

(declare-fun e!1133343 () Bool)

(assert (=> d!541281 e!1133343))

(declare-fun res!797692 () Bool)

(assert (=> d!541281 (=> res!797692 e!1133343)))

(declare-fun lt!685791 () Bool)

(assert (=> d!541281 (= res!797692 (not lt!685791))))

(declare-fun e!1133341 () Bool)

(assert (=> d!541281 (= lt!685791 e!1133341)))

(declare-fun res!797691 () Bool)

(assert (=> d!541281 (=> res!797691 e!1133341)))

(assert (=> d!541281 (= res!797691 ((_ is Nil!19490) lt!685116))))

(assert (=> d!541281 (= (isPrefix!1725 lt!685116 lt!685116) lt!685791)))

(declare-fun b!1771174 () Bool)

(assert (=> b!1771174 (= e!1133343 (>= (size!15479 lt!685116) (size!15479 lt!685116)))))

(declare-fun b!1771171 () Bool)

(assert (=> b!1771171 (= e!1133341 e!1133342)))

(declare-fun res!797690 () Bool)

(assert (=> b!1771171 (=> (not res!797690) (not e!1133342))))

(assert (=> b!1771171 (= res!797690 (not ((_ is Nil!19490) lt!685116)))))

(declare-fun b!1771172 () Bool)

(declare-fun res!797689 () Bool)

(assert (=> b!1771172 (=> (not res!797689) (not e!1133342))))

(assert (=> b!1771172 (= res!797689 (= (head!4114 lt!685116) (head!4114 lt!685116)))))

(assert (= (and d!541281 (not res!797691)) b!1771171))

(assert (= (and b!1771171 res!797690) b!1771172))

(assert (= (and b!1771172 res!797689) b!1771173))

(assert (= (and d!541281 (not res!797692)) b!1771174))

(assert (=> b!1771173 m!2188101))

(assert (=> b!1771173 m!2188101))

(assert (=> b!1771173 m!2188101))

(assert (=> b!1771173 m!2188101))

(declare-fun m!2190365 () Bool)

(assert (=> b!1771173 m!2190365))

(assert (=> b!1771174 m!2188041))

(assert (=> b!1771174 m!2188041))

(assert (=> b!1771172 m!2188097))

(assert (=> b!1771172 m!2188097))

(assert (=> d!540653 d!541281))

(declare-fun d!541283 () Bool)

(assert (=> d!541283 (isPrefix!1725 lt!685116 lt!685116)))

(declare-fun lt!685794 () Unit!33686)

(declare-fun choose!11029 (List!19560 List!19560) Unit!33686)

(assert (=> d!541283 (= lt!685794 (choose!11029 lt!685116 lt!685116))))

(assert (=> d!541283 (= (lemmaIsPrefixRefl!1142 lt!685116 lt!685116) lt!685794)))

(declare-fun bs!404683 () Bool)

(assert (= bs!404683 d!541283))

(assert (=> bs!404683 m!2188869))

(declare-fun m!2190367 () Bool)

(assert (=> bs!404683 m!2190367))

(assert (=> d!540653 d!541283))

(declare-fun bs!404686 () Bool)

(declare-fun d!541287 () Bool)

(assert (= bs!404686 (and d!541287 d!541219)))

(declare-fun lambda!70437 () Int)

(assert (=> bs!404686 (= lambda!70437 lambda!70434)))

(assert (=> d!541287 true))

(declare-fun lt!685801 () Bool)

(assert (=> d!541287 (= lt!685801 (forall!4280 rules!3447 lambda!70437))))

(declare-fun e!1133363 () Bool)

(assert (=> d!541287 (= lt!685801 e!1133363)))

(declare-fun res!797717 () Bool)

(assert (=> d!541287 (=> res!797717 e!1133363)))

(assert (=> d!541287 (= res!797717 (not ((_ is Cons!19491) rules!3447)))))

(assert (=> d!541287 (= (rulesValidInductive!1180 thiss!24550 rules!3447) lt!685801)))

(declare-fun b!1771207 () Bool)

(declare-fun e!1133364 () Bool)

(assert (=> b!1771207 (= e!1133363 e!1133364)))

(declare-fun res!797718 () Bool)

(assert (=> b!1771207 (=> (not res!797718) (not e!1133364))))

(assert (=> b!1771207 (= res!797718 (ruleValid!983 thiss!24550 (h!24892 rules!3447)))))

(declare-fun b!1771208 () Bool)

(assert (=> b!1771208 (= e!1133364 (rulesValidInductive!1180 thiss!24550 (t!165170 rules!3447)))))

(assert (= (and d!541287 (not res!797717)) b!1771207))

(assert (= (and b!1771207 res!797718) b!1771208))

(declare-fun m!2190387 () Bool)

(assert (=> d!541287 m!2190387))

(declare-fun m!2190389 () Bool)

(assert (=> b!1771207 m!2190389))

(assert (=> b!1771208 m!2190351))

(assert (=> d!540653 d!541287))

(declare-fun d!541301 () Bool)

(assert (=> d!541301 (= (inv!25339 (xs!9359 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099)))))) (<= (size!15479 (innerList!6543 (xs!9359 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099))))))) 2147483647))))

(declare-fun bs!404687 () Bool)

(assert (= bs!404687 d!541301))

(declare-fun m!2190395 () Bool)

(assert (=> bs!404687 m!2190395))

(assert (=> b!1770253 d!541301))

(declare-fun d!541305 () Bool)

(declare-fun lt!685802 () List!19560)

(assert (=> d!541305 (= (++!5309 (t!165169 lt!685100) lt!685802) (tail!2649 lt!685092))))

(declare-fun e!1133365 () List!19560)

(assert (=> d!541305 (= lt!685802 e!1133365)))

(declare-fun c!288455 () Bool)

(assert (=> d!541305 (= c!288455 ((_ is Cons!19490) (t!165169 lt!685100)))))

(assert (=> d!541305 (>= (size!15479 (tail!2649 lt!685092)) (size!15479 (t!165169 lt!685100)))))

(assert (=> d!541305 (= (getSuffix!892 (tail!2649 lt!685092) (t!165169 lt!685100)) lt!685802)))

(declare-fun b!1771209 () Bool)

(assert (=> b!1771209 (= e!1133365 (getSuffix!892 (tail!2649 (tail!2649 lt!685092)) (t!165169 (t!165169 lt!685100))))))

(declare-fun b!1771210 () Bool)

(assert (=> b!1771210 (= e!1133365 (tail!2649 lt!685092))))

(assert (= (and d!541305 c!288455) b!1771209))

(assert (= (and d!541305 (not c!288455)) b!1771210))

(declare-fun m!2190397 () Bool)

(assert (=> d!541305 m!2190397))

(assert (=> d!541305 m!2188013))

(assert (=> d!541305 m!2189901))

(assert (=> d!541305 m!2188691))

(assert (=> b!1771209 m!2188013))

(assert (=> b!1771209 m!2189897))

(assert (=> b!1771209 m!2189897))

(declare-fun m!2190399 () Bool)

(assert (=> b!1771209 m!2190399))

(assert (=> b!1770046 d!541305))

(assert (=> b!1770046 d!541069))

(assert (=> b!1770186 d!541177))

(declare-fun b!1771211 () Bool)

(declare-fun e!1133367 () Bool)

(assert (=> b!1771211 (= e!1133367 (not (isEmpty!12311 (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099))))))))))

(declare-fun b!1771212 () Bool)

(declare-fun e!1133366 () Bool)

(assert (=> b!1771212 (= e!1133366 e!1133367)))

(declare-fun res!797723 () Bool)

(assert (=> b!1771212 (=> (not res!797723) (not e!1133367))))

(assert (=> b!1771212 (= res!797723 (<= (- 1) (- (height!1009 (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099)))))) (height!1009 (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099)))))))))))

(declare-fun b!1771213 () Bool)

(declare-fun res!797721 () Bool)

(assert (=> b!1771213 (=> (not res!797721) (not e!1133367))))

(assert (=> b!1771213 (= res!797721 (isBalanced!2027 (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099)))))))))

(declare-fun b!1771214 () Bool)

(declare-fun res!797724 () Bool)

(assert (=> b!1771214 (=> (not res!797724) (not e!1133367))))

(assert (=> b!1771214 (= res!797724 (<= (- (height!1009 (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099)))))) (height!1009 (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099))))))) 1))))

(declare-fun b!1771215 () Bool)

(declare-fun res!797719 () Bool)

(assert (=> b!1771215 (=> (not res!797719) (not e!1133367))))

(assert (=> b!1771215 (= res!797719 (isBalanced!2027 (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099)))))))))

(declare-fun b!1771216 () Bool)

(declare-fun res!797722 () Bool)

(assert (=> b!1771216 (=> (not res!797722) (not e!1133367))))

(assert (=> b!1771216 (= res!797722 (not (isEmpty!12311 (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099))))))))))

(declare-fun d!541307 () Bool)

(declare-fun res!797720 () Bool)

(assert (=> d!541307 (=> res!797720 e!1133366)))

(assert (=> d!541307 (= res!797720 (not ((_ is Node!6483) (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099)))))))))

(assert (=> d!541307 (= (isBalanced!2027 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099))))) e!1133366)))

(assert (= (and d!541307 (not res!797720)) b!1771212))

(assert (= (and b!1771212 res!797723) b!1771214))

(assert (= (and b!1771214 res!797724) b!1771215))

(assert (= (and b!1771215 res!797719) b!1771213))

(assert (= (and b!1771213 res!797721) b!1771216))

(assert (= (and b!1771216 res!797722) b!1771211))

(declare-fun m!2190403 () Bool)

(assert (=> b!1771211 m!2190403))

(declare-fun m!2190405 () Bool)

(assert (=> b!1771212 m!2190405))

(declare-fun m!2190409 () Bool)

(assert (=> b!1771212 m!2190409))

(declare-fun m!2190413 () Bool)

(assert (=> b!1771215 m!2190413))

(declare-fun m!2190415 () Bool)

(assert (=> b!1771216 m!2190415))

(declare-fun m!2190419 () Bool)

(assert (=> b!1771213 m!2190419))

(assert (=> b!1771214 m!2190405))

(assert (=> b!1771214 m!2190409))

(assert (=> d!540671 d!541307))

(declare-fun d!541311 () Bool)

(assert (=> d!541311 (= (inv!15 (value!108995 token!523)) (= (charsToBigInt!0 (text!25474 (value!108995 token!523)) 0) (value!108990 (value!108995 token!523))))))

(declare-fun bs!404691 () Bool)

(assert (= bs!404691 d!541311))

(declare-fun m!2190423 () Bool)

(assert (=> bs!404691 m!2190423))

(assert (=> b!1770219 d!541311))

(declare-fun bs!404692 () Bool)

(declare-fun d!541315 () Bool)

(assert (= bs!404692 (and d!541315 d!540683)))

(declare-fun lambda!70439 () Int)

(assert (=> bs!404692 (= (= (toValue!5008 (transformation!3485 (rule!5527 token!523))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) (= lambda!70439 lambda!70398))))

(declare-fun bs!404693 () Bool)

(assert (= bs!404693 (and d!541315 d!541079)))

(assert (=> bs!404693 (= (= (toValue!5008 (transformation!3485 (rule!5527 token!523))) (toValue!5008 (transformation!3485 rule!422))) (= lambda!70439 lambda!70427))))

(declare-fun bs!404694 () Bool)

(assert (= bs!404694 (and d!541315 d!541085)))

(assert (=> bs!404694 (= (= (toValue!5008 (transformation!3485 (rule!5527 token!523))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) (= lambda!70439 lambda!70428))))

(declare-fun bs!404695 () Bool)

(assert (= bs!404695 (and d!541315 d!541123)))

(assert (=> bs!404695 (= (= (toValue!5008 (transformation!3485 (rule!5527 token!523))) (toValue!5008 (transformation!3485 (h!24892 rules!3447)))) (= lambda!70439 lambda!70430))))

(assert (=> d!541315 true))

(assert (=> d!541315 (< (dynLambda!9458 order!12443 (toValue!5008 (transformation!3485 (rule!5527 token!523)))) (dynLambda!9464 order!12451 lambda!70439))))

(assert (=> d!541315 (= (equivClasses!1331 (toChars!4867 (transformation!3485 (rule!5527 token!523))) (toValue!5008 (transformation!3485 (rule!5527 token!523)))) (Forall2!563 lambda!70439))))

(declare-fun bs!404696 () Bool)

(assert (= bs!404696 d!541315))

(declare-fun m!2190427 () Bool)

(assert (=> bs!404696 m!2190427))

(assert (=> b!1769793 d!541315))

(declare-fun b!1771226 () Bool)

(declare-fun e!1133372 () List!19560)

(assert (=> b!1771226 (= e!1133372 (++!5309 (list!7917 (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))))) (list!7917 (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))))))))

(declare-fun b!1771225 () Bool)

(assert (=> b!1771225 (= e!1133372 (list!7922 (xs!9359 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))))))))

(declare-fun b!1771223 () Bool)

(declare-fun e!1133371 () List!19560)

(assert (=> b!1771223 (= e!1133371 Nil!19490)))

(declare-fun d!541319 () Bool)

(declare-fun c!288459 () Bool)

(assert (=> d!541319 (= c!288459 ((_ is Empty!6483) (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))))))

(assert (=> d!541319 (= (list!7917 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))) e!1133371)))

(declare-fun b!1771224 () Bool)

(assert (=> b!1771224 (= e!1133371 e!1133372)))

(declare-fun c!288460 () Bool)

(assert (=> b!1771224 (= c!288460 ((_ is Leaf!9446) (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))))))

(assert (= (and d!541319 c!288459) b!1771223))

(assert (= (and d!541319 (not c!288459)) b!1771224))

(assert (= (and b!1771224 c!288460) b!1771225))

(assert (= (and b!1771224 (not c!288460)) b!1771226))

(declare-fun m!2190429 () Bool)

(assert (=> b!1771226 m!2190429))

(declare-fun m!2190431 () Bool)

(assert (=> b!1771226 m!2190431))

(assert (=> b!1771226 m!2190429))

(assert (=> b!1771226 m!2190431))

(declare-fun m!2190433 () Bool)

(assert (=> b!1771226 m!2190433))

(assert (=> b!1771225 m!2190101))

(assert (=> d!540637 d!541319))

(declare-fun b!1771229 () Bool)

(declare-fun e!1133374 () Bool)

(assert (=> b!1771229 (= e!1133374 (isPrefix!1725 (tail!2649 (tail!2649 lt!685100)) (tail!2649 (tail!2649 lt!685092))))))

(declare-fun d!541321 () Bool)

(declare-fun e!1133375 () Bool)

(assert (=> d!541321 e!1133375))

(declare-fun res!797728 () Bool)

(assert (=> d!541321 (=> res!797728 e!1133375)))

(declare-fun lt!685804 () Bool)

(assert (=> d!541321 (= res!797728 (not lt!685804))))

(declare-fun e!1133373 () Bool)

(assert (=> d!541321 (= lt!685804 e!1133373)))

(declare-fun res!797727 () Bool)

(assert (=> d!541321 (=> res!797727 e!1133373)))

(assert (=> d!541321 (= res!797727 ((_ is Nil!19490) (tail!2649 lt!685100)))))

(assert (=> d!541321 (= (isPrefix!1725 (tail!2649 lt!685100) (tail!2649 lt!685092)) lt!685804)))

(declare-fun b!1771230 () Bool)

(assert (=> b!1771230 (= e!1133375 (>= (size!15479 (tail!2649 lt!685092)) (size!15479 (tail!2649 lt!685100))))))

(declare-fun b!1771227 () Bool)

(assert (=> b!1771227 (= e!1133373 e!1133374)))

(declare-fun res!797726 () Bool)

(assert (=> b!1771227 (=> (not res!797726) (not e!1133374))))

(assert (=> b!1771227 (= res!797726 (not ((_ is Nil!19490) (tail!2649 lt!685092))))))

(declare-fun b!1771228 () Bool)

(declare-fun res!797725 () Bool)

(assert (=> b!1771228 (=> (not res!797725) (not e!1133374))))

(assert (=> b!1771228 (= res!797725 (= (head!4114 (tail!2649 lt!685100)) (head!4114 (tail!2649 lt!685092))))))

(assert (= (and d!541321 (not res!797727)) b!1771227))

(assert (= (and b!1771227 res!797726) b!1771228))

(assert (= (and b!1771228 res!797725) b!1771229))

(assert (= (and d!541321 (not res!797728)) b!1771230))

(assert (=> b!1771229 m!2188331))

(assert (=> b!1771229 m!2189957))

(assert (=> b!1771229 m!2188013))

(assert (=> b!1771229 m!2189897))

(assert (=> b!1771229 m!2189957))

(assert (=> b!1771229 m!2189897))

(declare-fun m!2190437 () Bool)

(assert (=> b!1771229 m!2190437))

(assert (=> b!1771230 m!2188013))

(assert (=> b!1771230 m!2189901))

(assert (=> b!1771230 m!2188331))

(assert (=> b!1771230 m!2189965))

(assert (=> b!1771228 m!2188331))

(assert (=> b!1771228 m!2189967))

(assert (=> b!1771228 m!2188013))

(assert (=> b!1771228 m!2189905))

(assert (=> b!1769843 d!541321))

(assert (=> b!1769843 d!541109))

(assert (=> b!1769843 d!541069))

(declare-fun d!541325 () Bool)

(declare-fun lt!685805 () Bool)

(assert (=> d!541325 (= lt!685805 (select (content!2828 rules!3447) (get!5953 lt!685307)))))

(declare-fun e!1133378 () Bool)

(assert (=> d!541325 (= lt!685805 e!1133378)))

(declare-fun res!797729 () Bool)

(assert (=> d!541325 (=> (not res!797729) (not e!1133378))))

(assert (=> d!541325 (= res!797729 ((_ is Cons!19491) rules!3447))))

(assert (=> d!541325 (= (contains!3515 rules!3447 (get!5953 lt!685307)) lt!685805)))

(declare-fun b!1771235 () Bool)

(declare-fun e!1133379 () Bool)

(assert (=> b!1771235 (= e!1133378 e!1133379)))

(declare-fun res!797730 () Bool)

(assert (=> b!1771235 (=> res!797730 e!1133379)))

(assert (=> b!1771235 (= res!797730 (= (h!24892 rules!3447) (get!5953 lt!685307)))))

(declare-fun b!1771236 () Bool)

(assert (=> b!1771236 (= e!1133379 (contains!3515 (t!165170 rules!3447) (get!5953 lt!685307)))))

(assert (= (and d!541325 res!797729) b!1771235))

(assert (= (and b!1771235 (not res!797730)) b!1771236))

(assert (=> d!541325 m!2188813))

(assert (=> d!541325 m!2188491))

(declare-fun m!2190443 () Bool)

(assert (=> d!541325 m!2190443))

(assert (=> b!1771236 m!2188491))

(declare-fun m!2190445 () Bool)

(assert (=> b!1771236 m!2190445))

(assert (=> b!1769917 d!541325))

(declare-fun d!541327 () Bool)

(assert (=> d!541327 (= (get!5953 lt!685307) (v!25467 lt!685307))))

(assert (=> b!1769917 d!541327))

(declare-fun b!1771237 () Bool)

(declare-fun e!1133380 () List!19560)

(assert (=> b!1771237 (= e!1133380 lt!685407)))

(declare-fun b!1771238 () Bool)

(assert (=> b!1771238 (= e!1133380 (Cons!19490 (h!24891 lt!685100) (++!5309 (t!165169 lt!685100) lt!685407)))))

(declare-fun d!541331 () Bool)

(declare-fun e!1133381 () Bool)

(assert (=> d!541331 e!1133381))

(declare-fun res!797732 () Bool)

(assert (=> d!541331 (=> (not res!797732) (not e!1133381))))

(declare-fun lt!685806 () List!19560)

(assert (=> d!541331 (= res!797732 (= (content!2826 lt!685806) ((_ map or) (content!2826 lt!685100) (content!2826 lt!685407))))))

(assert (=> d!541331 (= lt!685806 e!1133380)))

(declare-fun c!288463 () Bool)

(assert (=> d!541331 (= c!288463 ((_ is Nil!19490) lt!685100))))

(assert (=> d!541331 (= (++!5309 lt!685100 lt!685407) lt!685806)))

(declare-fun b!1771240 () Bool)

(assert (=> b!1771240 (= e!1133381 (or (not (= lt!685407 Nil!19490)) (= lt!685806 lt!685100)))))

(declare-fun b!1771239 () Bool)

(declare-fun res!797731 () Bool)

(assert (=> b!1771239 (=> (not res!797731) (not e!1133381))))

(assert (=> b!1771239 (= res!797731 (= (size!15479 lt!685806) (+ (size!15479 lt!685100) (size!15479 lt!685407))))))

(assert (= (and d!541331 c!288463) b!1771237))

(assert (= (and d!541331 (not c!288463)) b!1771238))

(assert (= (and d!541331 res!797732) b!1771239))

(assert (= (and b!1771239 res!797731) b!1771240))

(declare-fun m!2190449 () Bool)

(assert (=> b!1771238 m!2190449))

(declare-fun m!2190451 () Bool)

(assert (=> d!541331 m!2190451))

(assert (=> d!541331 m!2188371))

(declare-fun m!2190455 () Bool)

(assert (=> d!541331 m!2190455))

(declare-fun m!2190459 () Bool)

(assert (=> b!1771239 m!2190459))

(assert (=> b!1771239 m!2187843))

(declare-fun m!2190463 () Bool)

(assert (=> b!1771239 m!2190463))

(assert (=> d!540609 d!541331))

(assert (=> d!540609 d!540983))

(assert (=> d!540609 d!540591))

(declare-fun d!541335 () Bool)

(declare-fun c!288471 () Bool)

(assert (=> d!541335 (= c!288471 ((_ is Nil!19490) lt!685178))))

(declare-fun e!1133394 () (InoxSet C!9800))

(assert (=> d!541335 (= (content!2826 lt!685178) e!1133394)))

(declare-fun b!1771264 () Bool)

(assert (=> b!1771264 (= e!1133394 ((as const (Array C!9800 Bool)) false))))

(declare-fun b!1771265 () Bool)

(assert (=> b!1771265 (= e!1133394 ((_ map or) (store ((as const (Array C!9800 Bool)) false) (h!24891 lt!685178) true) (content!2826 (t!165169 lt!685178))))))

(assert (= (and d!541335 c!288471) b!1771264))

(assert (= (and d!541335 (not c!288471)) b!1771265))

(declare-fun m!2190483 () Bool)

(assert (=> b!1771265 m!2190483))

(declare-fun m!2190485 () Bool)

(assert (=> b!1771265 m!2190485))

(assert (=> d!540455 d!541335))

(declare-fun d!541341 () Bool)

(declare-fun c!288472 () Bool)

(assert (=> d!541341 (= c!288472 ((_ is Nil!19490) lt!685116))))

(declare-fun e!1133395 () (InoxSet C!9800))

(assert (=> d!541341 (= (content!2826 lt!685116) e!1133395)))

(declare-fun b!1771266 () Bool)

(assert (=> b!1771266 (= e!1133395 ((as const (Array C!9800 Bool)) false))))

(declare-fun b!1771267 () Bool)

(assert (=> b!1771267 (= e!1133395 ((_ map or) (store ((as const (Array C!9800 Bool)) false) (h!24891 lt!685116) true) (content!2826 (t!165169 lt!685116))))))

(assert (= (and d!541341 c!288472) b!1771266))

(assert (= (and d!541341 (not c!288472)) b!1771267))

(declare-fun m!2190487 () Bool)

(assert (=> b!1771267 m!2190487))

(assert (=> b!1771267 m!2189699))

(assert (=> d!540455 d!541341))

(declare-fun d!541345 () Bool)

(declare-fun c!288473 () Bool)

(assert (=> d!541345 (= c!288473 ((_ is Nil!19490) (Cons!19490 (head!4114 suffix!1421) Nil!19490)))))

(declare-fun e!1133397 () (InoxSet C!9800))

(assert (=> d!541345 (= (content!2826 (Cons!19490 (head!4114 suffix!1421) Nil!19490)) e!1133397)))

(declare-fun b!1771269 () Bool)

(assert (=> b!1771269 (= e!1133397 ((as const (Array C!9800 Bool)) false))))

(declare-fun b!1771270 () Bool)

(assert (=> b!1771270 (= e!1133397 ((_ map or) (store ((as const (Array C!9800 Bool)) false) (h!24891 (Cons!19490 (head!4114 suffix!1421) Nil!19490)) true) (content!2826 (t!165169 (Cons!19490 (head!4114 suffix!1421) Nil!19490)))))))

(assert (= (and d!541345 c!288473) b!1771269))

(assert (= (and d!541345 (not c!288473)) b!1771270))

(declare-fun m!2190493 () Bool)

(assert (=> b!1771270 m!2190493))

(declare-fun m!2190495 () Bool)

(assert (=> b!1771270 m!2190495))

(assert (=> d!540455 d!541345))

(declare-fun d!541349 () Bool)

(assert (=> d!541349 (= (inv!17 (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)) (= (charsToBigInt!1 (text!25473 (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))) (value!108987 (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))))))

(declare-fun bs!404699 () Bool)

(assert (= bs!404699 d!541349))

(declare-fun m!2190497 () Bool)

(assert (=> bs!404699 m!2190497))

(assert (=> b!1769778 d!541349))

(declare-fun b!1771274 () Bool)

(declare-fun e!1133399 () List!19560)

(assert (=> b!1771274 (= e!1133399 (++!5309 (list!7917 (left!15607 (c!288085 lt!685082))) (list!7917 (right!15937 (c!288085 lt!685082)))))))

(declare-fun b!1771273 () Bool)

(assert (=> b!1771273 (= e!1133399 (list!7922 (xs!9359 (c!288085 lt!685082))))))

(declare-fun b!1771271 () Bool)

(declare-fun e!1133398 () List!19560)

(assert (=> b!1771271 (= e!1133398 Nil!19490)))

(declare-fun d!541351 () Bool)

(declare-fun c!288474 () Bool)

(assert (=> d!541351 (= c!288474 ((_ is Empty!6483) (c!288085 lt!685082)))))

(assert (=> d!541351 (= (list!7917 (c!288085 lt!685082)) e!1133398)))

(declare-fun b!1771272 () Bool)

(assert (=> b!1771272 (= e!1133398 e!1133399)))

(declare-fun c!288475 () Bool)

(assert (=> b!1771272 (= c!288475 ((_ is Leaf!9446) (c!288085 lt!685082)))))

(assert (= (and d!541351 c!288474) b!1771271))

(assert (= (and d!541351 (not c!288474)) b!1771272))

(assert (= (and b!1771272 c!288475) b!1771273))

(assert (= (and b!1771272 (not c!288475)) b!1771274))

(declare-fun m!2190499 () Bool)

(assert (=> b!1771274 m!2190499))

(declare-fun m!2190501 () Bool)

(assert (=> b!1771274 m!2190501))

(assert (=> b!1771274 m!2190499))

(assert (=> b!1771274 m!2190501))

(declare-fun m!2190503 () Bool)

(assert (=> b!1771274 m!2190503))

(declare-fun m!2190505 () Bool)

(assert (=> b!1771273 m!2190505))

(assert (=> d!540519 d!541351))

(declare-fun b!1771275 () Bool)

(declare-fun res!797749 () Bool)

(declare-fun e!1133404 () Bool)

(assert (=> b!1771275 (=> (not res!797749) (not e!1133404))))

(assert (=> b!1771275 (= res!797749 (isEmpty!12304 (tail!2649 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685429)))))))))

(declare-fun b!1771276 () Bool)

(assert (=> b!1771276 (= e!1133404 (= (head!4114 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685429))))) (c!288084 (regex!3485 (rule!5527 (_1!10949 lt!685099))))))))

(declare-fun bm!111031 () Bool)

(declare-fun call!111036 () Bool)

(assert (=> bm!111031 (= call!111036 (isEmpty!12304 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685429))))))))

(declare-fun b!1771277 () Bool)

(declare-fun e!1133401 () Bool)

(declare-fun e!1133406 () Bool)

(assert (=> b!1771277 (= e!1133401 e!1133406)))

(declare-fun res!797745 () Bool)

(assert (=> b!1771277 (=> res!797745 e!1133406)))

(assert (=> b!1771277 (= res!797745 call!111036)))

(declare-fun b!1771278 () Bool)

(declare-fun e!1133403 () Bool)

(assert (=> b!1771278 (= e!1133403 e!1133401)))

(declare-fun res!797748 () Bool)

(assert (=> b!1771278 (=> (not res!797748) (not e!1133401))))

(declare-fun lt!685808 () Bool)

(assert (=> b!1771278 (= res!797748 (not lt!685808))))

(declare-fun b!1771279 () Bool)

(declare-fun e!1133405 () Bool)

(assert (=> b!1771279 (= e!1133405 (not lt!685808))))

(declare-fun b!1771280 () Bool)

(declare-fun res!797746 () Bool)

(assert (=> b!1771280 (=> res!797746 e!1133406)))

(assert (=> b!1771280 (= res!797746 (not (isEmpty!12304 (tail!2649 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685429))))))))))

(declare-fun b!1771281 () Bool)

(declare-fun res!797743 () Bool)

(assert (=> b!1771281 (=> res!797743 e!1133403)))

(assert (=> b!1771281 (= res!797743 e!1133404)))

(declare-fun res!797747 () Bool)

(assert (=> b!1771281 (=> (not res!797747) (not e!1133404))))

(assert (=> b!1771281 (= res!797747 lt!685808)))

(declare-fun b!1771282 () Bool)

(declare-fun res!797750 () Bool)

(assert (=> b!1771282 (=> res!797750 e!1133403)))

(assert (=> b!1771282 (= res!797750 (not ((_ is ElementMatch!4813) (regex!3485 (rule!5527 (_1!10949 lt!685099))))))))

(assert (=> b!1771282 (= e!1133405 e!1133403)))

(declare-fun b!1771283 () Bool)

(assert (=> b!1771283 (= e!1133406 (not (= (head!4114 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685429))))) (c!288084 (regex!3485 (rule!5527 (_1!10949 lt!685099)))))))))

(declare-fun b!1771284 () Bool)

(declare-fun e!1133402 () Bool)

(assert (=> b!1771284 (= e!1133402 (= lt!685808 call!111036))))

(declare-fun b!1771285 () Bool)

(assert (=> b!1771285 (= e!1133402 e!1133405)))

(declare-fun c!288476 () Bool)

(assert (=> b!1771285 (= c!288476 ((_ is EmptyLang!4813) (regex!3485 (rule!5527 (_1!10949 lt!685099)))))))

(declare-fun b!1771286 () Bool)

(declare-fun res!797744 () Bool)

(assert (=> b!1771286 (=> (not res!797744) (not e!1133404))))

(assert (=> b!1771286 (= res!797744 (not call!111036))))

(declare-fun d!541353 () Bool)

(assert (=> d!541353 e!1133402))

(declare-fun c!288478 () Bool)

(assert (=> d!541353 (= c!288478 ((_ is EmptyExpr!4813) (regex!3485 (rule!5527 (_1!10949 lt!685099)))))))

(declare-fun e!1133400 () Bool)

(assert (=> d!541353 (= lt!685808 e!1133400)))

(declare-fun c!288477 () Bool)

(assert (=> d!541353 (= c!288477 (isEmpty!12304 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685429))))))))

(assert (=> d!541353 (validRegex!1949 (regex!3485 (rule!5527 (_1!10949 lt!685099))))))

(assert (=> d!541353 (= (matchR!2286 (regex!3485 (rule!5527 (_1!10949 lt!685099))) (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685429))))) lt!685808)))

(declare-fun b!1771287 () Bool)

(assert (=> b!1771287 (= e!1133400 (matchR!2286 (derivativeStep!1244 (regex!3485 (rule!5527 (_1!10949 lt!685099))) (head!4114 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685429)))))) (tail!2649 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685429)))))))))

(declare-fun b!1771288 () Bool)

(assert (=> b!1771288 (= e!1133400 (nullable!1475 (regex!3485 (rule!5527 (_1!10949 lt!685099)))))))

(assert (= (and d!541353 c!288477) b!1771288))

(assert (= (and d!541353 (not c!288477)) b!1771287))

(assert (= (and d!541353 c!288478) b!1771284))

(assert (= (and d!541353 (not c!288478)) b!1771285))

(assert (= (and b!1771285 c!288476) b!1771279))

(assert (= (and b!1771285 (not c!288476)) b!1771282))

(assert (= (and b!1771282 (not res!797750)) b!1771281))

(assert (= (and b!1771281 res!797747) b!1771286))

(assert (= (and b!1771286 res!797744) b!1771275))

(assert (= (and b!1771275 res!797749) b!1771276))

(assert (= (and b!1771281 (not res!797743)) b!1771278))

(assert (= (and b!1771278 res!797748) b!1771277))

(assert (= (and b!1771277 (not res!797745)) b!1771280))

(assert (= (and b!1771280 (not res!797746)) b!1771283))

(assert (= (or b!1771284 b!1771277 b!1771286) bm!111031))

(assert (=> b!1771287 m!2188779))

(declare-fun m!2190507 () Bool)

(assert (=> b!1771287 m!2190507))

(assert (=> b!1771287 m!2190507))

(declare-fun m!2190509 () Bool)

(assert (=> b!1771287 m!2190509))

(assert (=> b!1771287 m!2188779))

(declare-fun m!2190511 () Bool)

(assert (=> b!1771287 m!2190511))

(assert (=> b!1771287 m!2190509))

(assert (=> b!1771287 m!2190511))

(declare-fun m!2190513 () Bool)

(assert (=> b!1771287 m!2190513))

(assert (=> d!541353 m!2188779))

(declare-fun m!2190515 () Bool)

(assert (=> d!541353 m!2190515))

(assert (=> d!541353 m!2188887))

(assert (=> b!1771276 m!2188779))

(assert (=> b!1771276 m!2190507))

(assert (=> bm!111031 m!2188779))

(assert (=> bm!111031 m!2190515))

(assert (=> b!1771280 m!2188779))

(assert (=> b!1771280 m!2190511))

(assert (=> b!1771280 m!2190511))

(declare-fun m!2190517 () Bool)

(assert (=> b!1771280 m!2190517))

(assert (=> b!1771275 m!2188779))

(assert (=> b!1771275 m!2190511))

(assert (=> b!1771275 m!2190511))

(assert (=> b!1771275 m!2190517))

(assert (=> b!1771288 m!2188889))

(assert (=> b!1771283 m!2188779))

(assert (=> b!1771283 m!2190507))

(assert (=> b!1770163 d!541353))

(declare-fun d!541355 () Bool)

(assert (=> d!541355 (= (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685429)))) (list!7917 (c!288085 (charsOf!2134 (_1!10949 (get!5952 lt!685429))))))))

(declare-fun bs!404700 () Bool)

(assert (= bs!404700 d!541355))

(declare-fun m!2190519 () Bool)

(assert (=> bs!404700 m!2190519))

(assert (=> b!1770163 d!541355))

(declare-fun d!541357 () Bool)

(declare-fun lt!685811 () BalanceConc!12910)

(assert (=> d!541357 (= (list!7915 lt!685811) (originalCharacters!4299 (_1!10949 (get!5952 lt!685429))))))

(assert (=> d!541357 (= lt!685811 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685429))))) (value!108995 (_1!10949 (get!5952 lt!685429)))))))

(assert (=> d!541357 (= (charsOf!2134 (_1!10949 (get!5952 lt!685429))) lt!685811)))

(declare-fun b_lambda!57673 () Bool)

(assert (=> (not b_lambda!57673) (not d!541357)))

(declare-fun tb!107189 () Bool)

(declare-fun t!165347 () Bool)

(assert (=> (and b!1769445 (= (toChars!4867 (transformation!3485 (rule!5527 token!523))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685429)))))) t!165347) tb!107189))

(declare-fun b!1771289 () Bool)

(declare-fun e!1133407 () Bool)

(declare-fun tp!502126 () Bool)

(assert (=> b!1771289 (= e!1133407 (and (inv!25332 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685429))))) (value!108995 (_1!10949 (get!5952 lt!685429)))))) tp!502126))))

(declare-fun result!128948 () Bool)

(assert (=> tb!107189 (= result!128948 (and (inv!25333 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685429))))) (value!108995 (_1!10949 (get!5952 lt!685429))))) e!1133407))))

(assert (= tb!107189 b!1771289))

(declare-fun m!2190525 () Bool)

(assert (=> b!1771289 m!2190525))

(declare-fun m!2190527 () Bool)

(assert (=> tb!107189 m!2190527))

(assert (=> d!541357 t!165347))

(declare-fun b_and!134693 () Bool)

(assert (= b_and!134645 (and (=> t!165347 result!128948) b_and!134693)))

(declare-fun tb!107191 () Bool)

(declare-fun t!165349 () Bool)

(assert (=> (and b!1769469 (= (toChars!4867 (transformation!3485 (h!24892 rules!3447))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685429)))))) t!165349) tb!107191))

(declare-fun result!128950 () Bool)

(assert (= result!128950 result!128948))

(assert (=> d!541357 t!165349))

(declare-fun b_and!134695 () Bool)

(assert (= b_and!134647 (and (=> t!165349 result!128950) b_and!134695)))

(declare-fun t!165351 () Bool)

(declare-fun tb!107193 () Bool)

(assert (=> (and b!1769458 (= (toChars!4867 (transformation!3485 rule!422)) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685429)))))) t!165351) tb!107193))

(declare-fun result!128952 () Bool)

(assert (= result!128952 result!128948))

(assert (=> d!541357 t!165351))

(declare-fun b_and!134697 () Bool)

(assert (= b_and!134649 (and (=> t!165351 result!128952) b_and!134697)))

(declare-fun tb!107195 () Bool)

(declare-fun t!165353 () Bool)

(assert (=> (and b!1770265 (= (toChars!4867 (transformation!3485 (h!24892 (t!165170 rules!3447)))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685429)))))) t!165353) tb!107195))

(declare-fun result!128954 () Bool)

(assert (= result!128954 result!128948))

(assert (=> d!541357 t!165353))

(declare-fun b_and!134699 () Bool)

(assert (= b_and!134651 (and (=> t!165353 result!128954) b_and!134699)))

(declare-fun m!2190529 () Bool)

(assert (=> d!541357 m!2190529))

(declare-fun m!2190531 () Bool)

(assert (=> d!541357 m!2190531))

(assert (=> b!1770163 d!541357))

(assert (=> b!1770163 d!541043))

(assert (=> b!1770201 d!541141))

(assert (=> b!1770201 d!541109))

(declare-fun d!541361 () Bool)

(declare-fun lt!685816 () Int)

(assert (=> d!541361 (>= lt!685816 0)))

(declare-fun e!1133412 () Int)

(assert (=> d!541361 (= lt!685816 e!1133412)))

(declare-fun c!288481 () Bool)

(assert (=> d!541361 (= c!288481 ((_ is Nil!19490) (list!7915 lt!685102)))))

(assert (=> d!541361 (= (size!15479 (list!7915 lt!685102)) lt!685816)))

(declare-fun b!1771296 () Bool)

(assert (=> b!1771296 (= e!1133412 0)))

(declare-fun b!1771297 () Bool)

(assert (=> b!1771297 (= e!1133412 (+ 1 (size!15479 (t!165169 (list!7915 lt!685102)))))))

(assert (= (and d!541361 c!288481) b!1771296))

(assert (= (and d!541361 (not c!288481)) b!1771297))

(declare-fun m!2190545 () Bool)

(assert (=> b!1771297 m!2190545))

(assert (=> d!540411 d!541361))

(assert (=> d!540411 d!540655))

(declare-fun d!541363 () Bool)

(declare-fun lt!685817 () Int)

(assert (=> d!541363 (= lt!685817 (size!15479 (list!7917 (c!288085 lt!685102))))))

(assert (=> d!541363 (= lt!685817 (ite ((_ is Empty!6483) (c!288085 lt!685102)) 0 (ite ((_ is Leaf!9446) (c!288085 lt!685102)) (csize!13197 (c!288085 lt!685102)) (csize!13196 (c!288085 lt!685102)))))))

(assert (=> d!541363 (= (size!15481 (c!288085 lt!685102)) lt!685817)))

(declare-fun bs!404702 () Bool)

(assert (= bs!404702 d!541363))

(assert (=> bs!404702 m!2188879))

(assert (=> bs!404702 m!2188879))

(declare-fun m!2190547 () Bool)

(assert (=> bs!404702 m!2190547))

(assert (=> d!540411 d!541363))

(assert (=> d!540659 d!541155))

(declare-fun c!288488 () Bool)

(declare-fun c!288489 () Bool)

(declare-fun bm!111041 () Bool)

(declare-fun call!111048 () Bool)

(assert (=> bm!111041 (= call!111048 (validRegex!1949 (ite c!288489 (reg!5142 (regex!3485 (rule!5527 (_1!10949 lt!685099)))) (ite c!288488 (regTwo!10139 (regex!3485 (rule!5527 (_1!10949 lt!685099)))) (regOne!10138 (regex!3485 (rule!5527 (_1!10949 lt!685099))))))))))

(declare-fun b!1771343 () Bool)

(declare-fun res!797790 () Bool)

(declare-fun e!1133444 () Bool)

(assert (=> b!1771343 (=> (not res!797790) (not e!1133444))))

(declare-fun call!111046 () Bool)

(assert (=> b!1771343 (= res!797790 call!111046)))

(declare-fun e!1133441 () Bool)

(assert (=> b!1771343 (= e!1133441 e!1133444)))

(declare-fun bm!111042 () Bool)

(declare-fun call!111047 () Bool)

(assert (=> bm!111042 (= call!111047 call!111048)))

(declare-fun b!1771344 () Bool)

(declare-fun res!797789 () Bool)

(declare-fun e!1133440 () Bool)

(assert (=> b!1771344 (=> res!797789 e!1133440)))

(assert (=> b!1771344 (= res!797789 (not ((_ is Concat!8389) (regex!3485 (rule!5527 (_1!10949 lt!685099))))))))

(assert (=> b!1771344 (= e!1133441 e!1133440)))

(declare-fun b!1771345 () Bool)

(declare-fun e!1133443 () Bool)

(declare-fun e!1133442 () Bool)

(assert (=> b!1771345 (= e!1133443 e!1133442)))

(assert (=> b!1771345 (= c!288489 ((_ is Star!4813) (regex!3485 (rule!5527 (_1!10949 lt!685099)))))))

(declare-fun bm!111043 () Bool)

(assert (=> bm!111043 (= call!111046 (validRegex!1949 (ite c!288488 (regOne!10139 (regex!3485 (rule!5527 (_1!10949 lt!685099)))) (regTwo!10138 (regex!3485 (rule!5527 (_1!10949 lt!685099)))))))))

(declare-fun b!1771346 () Bool)

(declare-fun e!1133445 () Bool)

(assert (=> b!1771346 (= e!1133442 e!1133445)))

(declare-fun res!797787 () Bool)

(assert (=> b!1771346 (= res!797787 (not (nullable!1475 (reg!5142 (regex!3485 (rule!5527 (_1!10949 lt!685099)))))))))

(assert (=> b!1771346 (=> (not res!797787) (not e!1133445))))

(declare-fun d!541367 () Bool)

(declare-fun res!797788 () Bool)

(assert (=> d!541367 (=> res!797788 e!1133443)))

(assert (=> d!541367 (= res!797788 ((_ is ElementMatch!4813) (regex!3485 (rule!5527 (_1!10949 lt!685099)))))))

(assert (=> d!541367 (= (validRegex!1949 (regex!3485 (rule!5527 (_1!10949 lt!685099)))) e!1133443)))

(declare-fun b!1771347 () Bool)

(declare-fun e!1133446 () Bool)

(assert (=> b!1771347 (= e!1133446 call!111046)))

(declare-fun b!1771348 () Bool)

(assert (=> b!1771348 (= e!1133442 e!1133441)))

(assert (=> b!1771348 (= c!288488 ((_ is Union!4813) (regex!3485 (rule!5527 (_1!10949 lt!685099)))))))

(declare-fun b!1771349 () Bool)

(assert (=> b!1771349 (= e!1133445 call!111048)))

(declare-fun b!1771350 () Bool)

(assert (=> b!1771350 (= e!1133444 call!111047)))

(declare-fun b!1771351 () Bool)

(assert (=> b!1771351 (= e!1133440 e!1133446)))

(declare-fun res!797786 () Bool)

(assert (=> b!1771351 (=> (not res!797786) (not e!1133446))))

(assert (=> b!1771351 (= res!797786 call!111047)))

(assert (= (and d!541367 (not res!797788)) b!1771345))

(assert (= (and b!1771345 c!288489) b!1771346))

(assert (= (and b!1771345 (not c!288489)) b!1771348))

(assert (= (and b!1771346 res!797787) b!1771349))

(assert (= (and b!1771348 c!288488) b!1771343))

(assert (= (and b!1771348 (not c!288488)) b!1771344))

(assert (= (and b!1771343 res!797790) b!1771350))

(assert (= (and b!1771344 (not res!797789)) b!1771351))

(assert (= (and b!1771351 res!797786) b!1771347))

(assert (= (or b!1771343 b!1771347) bm!111043))

(assert (= (or b!1771350 b!1771351) bm!111042))

(assert (= (or b!1771349 bm!111042) bm!111041))

(declare-fun m!2190559 () Bool)

(assert (=> bm!111041 m!2190559))

(declare-fun m!2190565 () Bool)

(assert (=> bm!111043 m!2190565))

(declare-fun m!2190567 () Bool)

(assert (=> b!1771346 m!2190567))

(assert (=> d!540659 d!541367))

(declare-fun b!1771354 () Bool)

(declare-fun e!1133448 () Bool)

(assert (=> b!1771354 (= e!1133448 (isPrefix!1725 (tail!2649 lt!685116) (tail!2649 (++!5309 lt!685116 suffix!1421))))))

(declare-fun d!541373 () Bool)

(declare-fun e!1133449 () Bool)

(assert (=> d!541373 e!1133449))

(declare-fun res!797794 () Bool)

(assert (=> d!541373 (=> res!797794 e!1133449)))

(declare-fun lt!685818 () Bool)

(assert (=> d!541373 (= res!797794 (not lt!685818))))

(declare-fun e!1133447 () Bool)

(assert (=> d!541373 (= lt!685818 e!1133447)))

(declare-fun res!797793 () Bool)

(assert (=> d!541373 (=> res!797793 e!1133447)))

(assert (=> d!541373 (= res!797793 ((_ is Nil!19490) lt!685116))))

(assert (=> d!541373 (= (isPrefix!1725 lt!685116 (++!5309 lt!685116 suffix!1421)) lt!685818)))

(declare-fun b!1771355 () Bool)

(assert (=> b!1771355 (= e!1133449 (>= (size!15479 (++!5309 lt!685116 suffix!1421)) (size!15479 lt!685116)))))

(declare-fun b!1771352 () Bool)

(assert (=> b!1771352 (= e!1133447 e!1133448)))

(declare-fun res!797792 () Bool)

(assert (=> b!1771352 (=> (not res!797792) (not e!1133448))))

(assert (=> b!1771352 (= res!797792 (not ((_ is Nil!19490) (++!5309 lt!685116 suffix!1421))))))

(declare-fun b!1771353 () Bool)

(declare-fun res!797791 () Bool)

(assert (=> b!1771353 (=> (not res!797791) (not e!1133448))))

(assert (=> b!1771353 (= res!797791 (= (head!4114 lt!685116) (head!4114 (++!5309 lt!685116 suffix!1421))))))

(assert (= (and d!541373 (not res!797793)) b!1771352))

(assert (= (and b!1771352 res!797792) b!1771353))

(assert (= (and b!1771353 res!797791) b!1771354))

(assert (= (and d!541373 (not res!797794)) b!1771355))

(assert (=> b!1771354 m!2188101))

(assert (=> b!1771354 m!2187857))

(assert (=> b!1771354 m!2189077))

(assert (=> b!1771354 m!2188101))

(assert (=> b!1771354 m!2189077))

(declare-fun m!2190571 () Bool)

(assert (=> b!1771354 m!2190571))

(assert (=> b!1771355 m!2187857))

(assert (=> b!1771355 m!2189049))

(assert (=> b!1771355 m!2188041))

(assert (=> b!1771353 m!2188097))

(assert (=> b!1771353 m!2187857))

(assert (=> b!1771353 m!2189085))

(assert (=> d!540523 d!541373))

(assert (=> d!540523 d!540517))

(declare-fun d!541377 () Bool)

(assert (=> d!541377 (isPrefix!1725 lt!685116 (++!5309 lt!685116 suffix!1421))))

(assert (=> d!541377 true))

(declare-fun _$46!1221 () Unit!33686)

(assert (=> d!541377 (= (choose!11008 lt!685116 suffix!1421) _$46!1221)))

(declare-fun bs!404704 () Bool)

(assert (= bs!404704 d!541377))

(assert (=> bs!404704 m!2187857))

(assert (=> bs!404704 m!2187857))

(assert (=> bs!404704 m!2188363))

(assert (=> d!540523 d!541377))

(declare-fun call!111051 () Bool)

(declare-fun c!288493 () Bool)

(declare-fun c!288492 () Bool)

(declare-fun bm!111044 () Bool)

(assert (=> bm!111044 (= call!111051 (validRegex!1949 (ite c!288493 (reg!5142 (regex!3485 rule!422)) (ite c!288492 (regTwo!10139 (regex!3485 rule!422)) (regOne!10138 (regex!3485 rule!422))))))))

(declare-fun b!1771362 () Bool)

(declare-fun res!797801 () Bool)

(declare-fun e!1133457 () Bool)

(assert (=> b!1771362 (=> (not res!797801) (not e!1133457))))

(declare-fun call!111049 () Bool)

(assert (=> b!1771362 (= res!797801 call!111049)))

(declare-fun e!1133454 () Bool)

(assert (=> b!1771362 (= e!1133454 e!1133457)))

(declare-fun bm!111045 () Bool)

(declare-fun call!111050 () Bool)

(assert (=> bm!111045 (= call!111050 call!111051)))

(declare-fun b!1771363 () Bool)

(declare-fun res!797800 () Bool)

(declare-fun e!1133453 () Bool)

(assert (=> b!1771363 (=> res!797800 e!1133453)))

(assert (=> b!1771363 (= res!797800 (not ((_ is Concat!8389) (regex!3485 rule!422))))))

(assert (=> b!1771363 (= e!1133454 e!1133453)))

(declare-fun b!1771364 () Bool)

(declare-fun e!1133456 () Bool)

(declare-fun e!1133455 () Bool)

(assert (=> b!1771364 (= e!1133456 e!1133455)))

(assert (=> b!1771364 (= c!288493 ((_ is Star!4813) (regex!3485 rule!422)))))

(declare-fun bm!111046 () Bool)

(assert (=> bm!111046 (= call!111049 (validRegex!1949 (ite c!288492 (regOne!10139 (regex!3485 rule!422)) (regTwo!10138 (regex!3485 rule!422)))))))

(declare-fun b!1771365 () Bool)

(declare-fun e!1133458 () Bool)

(assert (=> b!1771365 (= e!1133455 e!1133458)))

(declare-fun res!797798 () Bool)

(assert (=> b!1771365 (= res!797798 (not (nullable!1475 (reg!5142 (regex!3485 rule!422)))))))

(assert (=> b!1771365 (=> (not res!797798) (not e!1133458))))

(declare-fun d!541381 () Bool)

(declare-fun res!797799 () Bool)

(assert (=> d!541381 (=> res!797799 e!1133456)))

(assert (=> d!541381 (= res!797799 ((_ is ElementMatch!4813) (regex!3485 rule!422)))))

(assert (=> d!541381 (= (validRegex!1949 (regex!3485 rule!422)) e!1133456)))

(declare-fun b!1771366 () Bool)

(declare-fun e!1133459 () Bool)

(assert (=> b!1771366 (= e!1133459 call!111049)))

(declare-fun b!1771367 () Bool)

(assert (=> b!1771367 (= e!1133455 e!1133454)))

(assert (=> b!1771367 (= c!288492 ((_ is Union!4813) (regex!3485 rule!422)))))

(declare-fun b!1771368 () Bool)

(assert (=> b!1771368 (= e!1133458 call!111051)))

(declare-fun b!1771369 () Bool)

(assert (=> b!1771369 (= e!1133457 call!111050)))

(declare-fun b!1771370 () Bool)

(assert (=> b!1771370 (= e!1133453 e!1133459)))

(declare-fun res!797797 () Bool)

(assert (=> b!1771370 (=> (not res!797797) (not e!1133459))))

(assert (=> b!1771370 (= res!797797 call!111050)))

(assert (= (and d!541381 (not res!797799)) b!1771364))

(assert (= (and b!1771364 c!288493) b!1771365))

(assert (= (and b!1771364 (not c!288493)) b!1771367))

(assert (= (and b!1771365 res!797798) b!1771368))

(assert (= (and b!1771367 c!288492) b!1771362))

(assert (= (and b!1771367 (not c!288492)) b!1771363))

(assert (= (and b!1771362 res!797801) b!1771369))

(assert (= (and b!1771363 (not res!797800)) b!1771370))

(assert (= (and b!1771370 res!797797) b!1771366))

(assert (= (or b!1771362 b!1771366) bm!111046))

(assert (= (or b!1771369 b!1771370) bm!111045))

(assert (= (or b!1771368 bm!111045) bm!111044))

(declare-fun m!2190581 () Bool)

(assert (=> bm!111044 m!2190581))

(declare-fun m!2190583 () Bool)

(assert (=> bm!111046 m!2190583))

(declare-fun m!2190585 () Bool)

(assert (=> b!1771365 m!2190585))

(assert (=> d!540565 d!541381))

(assert (=> b!1769619 d!541131))

(assert (=> b!1769619 d!541063))

(assert (=> d!540645 d!540979))

(declare-fun call!111054 () Bool)

(declare-fun bm!111047 () Bool)

(declare-fun c!288494 () Bool)

(declare-fun c!288495 () Bool)

(assert (=> bm!111047 (= call!111054 (validRegex!1949 (ite c!288495 (reg!5142 (regex!3485 lt!685084)) (ite c!288494 (regTwo!10139 (regex!3485 lt!685084)) (regOne!10138 (regex!3485 lt!685084))))))))

(declare-fun b!1771371 () Bool)

(declare-fun res!797806 () Bool)

(declare-fun e!1133464 () Bool)

(assert (=> b!1771371 (=> (not res!797806) (not e!1133464))))

(declare-fun call!111052 () Bool)

(assert (=> b!1771371 (= res!797806 call!111052)))

(declare-fun e!1133461 () Bool)

(assert (=> b!1771371 (= e!1133461 e!1133464)))

(declare-fun bm!111048 () Bool)

(declare-fun call!111053 () Bool)

(assert (=> bm!111048 (= call!111053 call!111054)))

(declare-fun b!1771372 () Bool)

(declare-fun res!797805 () Bool)

(declare-fun e!1133460 () Bool)

(assert (=> b!1771372 (=> res!797805 e!1133460)))

(assert (=> b!1771372 (= res!797805 (not ((_ is Concat!8389) (regex!3485 lt!685084))))))

(assert (=> b!1771372 (= e!1133461 e!1133460)))

(declare-fun b!1771373 () Bool)

(declare-fun e!1133463 () Bool)

(declare-fun e!1133462 () Bool)

(assert (=> b!1771373 (= e!1133463 e!1133462)))

(assert (=> b!1771373 (= c!288495 ((_ is Star!4813) (regex!3485 lt!685084)))))

(declare-fun bm!111049 () Bool)

(assert (=> bm!111049 (= call!111052 (validRegex!1949 (ite c!288494 (regOne!10139 (regex!3485 lt!685084)) (regTwo!10138 (regex!3485 lt!685084)))))))

(declare-fun b!1771374 () Bool)

(declare-fun e!1133465 () Bool)

(assert (=> b!1771374 (= e!1133462 e!1133465)))

(declare-fun res!797803 () Bool)

(assert (=> b!1771374 (= res!797803 (not (nullable!1475 (reg!5142 (regex!3485 lt!685084)))))))

(assert (=> b!1771374 (=> (not res!797803) (not e!1133465))))

(declare-fun d!541385 () Bool)

(declare-fun res!797804 () Bool)

(assert (=> d!541385 (=> res!797804 e!1133463)))

(assert (=> d!541385 (= res!797804 ((_ is ElementMatch!4813) (regex!3485 lt!685084)))))

(assert (=> d!541385 (= (validRegex!1949 (regex!3485 lt!685084)) e!1133463)))

(declare-fun b!1771375 () Bool)

(declare-fun e!1133466 () Bool)

(assert (=> b!1771375 (= e!1133466 call!111052)))

(declare-fun b!1771376 () Bool)

(assert (=> b!1771376 (= e!1133462 e!1133461)))

(assert (=> b!1771376 (= c!288494 ((_ is Union!4813) (regex!3485 lt!685084)))))

(declare-fun b!1771377 () Bool)

(assert (=> b!1771377 (= e!1133465 call!111054)))

(declare-fun b!1771378 () Bool)

(assert (=> b!1771378 (= e!1133464 call!111053)))

(declare-fun b!1771379 () Bool)

(assert (=> b!1771379 (= e!1133460 e!1133466)))

(declare-fun res!797802 () Bool)

(assert (=> b!1771379 (=> (not res!797802) (not e!1133466))))

(assert (=> b!1771379 (= res!797802 call!111053)))

(assert (= (and d!541385 (not res!797804)) b!1771373))

(assert (= (and b!1771373 c!288495) b!1771374))

(assert (= (and b!1771373 (not c!288495)) b!1771376))

(assert (= (and b!1771374 res!797803) b!1771377))

(assert (= (and b!1771376 c!288494) b!1771371))

(assert (= (and b!1771376 (not c!288494)) b!1771372))

(assert (= (and b!1771371 res!797806) b!1771378))

(assert (= (and b!1771372 (not res!797805)) b!1771379))

(assert (= (and b!1771379 res!797802) b!1771375))

(assert (= (or b!1771371 b!1771375) bm!111049))

(assert (= (or b!1771378 b!1771379) bm!111048))

(assert (= (or b!1771377 bm!111048) bm!111047))

(declare-fun m!2190589 () Bool)

(assert (=> bm!111047 m!2190589))

(declare-fun m!2190591 () Bool)

(assert (=> bm!111049 m!2190591))

(declare-fun m!2190593 () Bool)

(assert (=> b!1771374 m!2190593))

(assert (=> d!540645 d!541385))

(declare-fun d!541389 () Bool)

(declare-fun res!797813 () Bool)

(declare-fun e!1133469 () Bool)

(assert (=> d!541389 (=> (not res!797813) (not e!1133469))))

(assert (=> d!541389 (= res!797813 (= (csize!13196 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099))))) (+ (size!15481 (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099)))))) (size!15481 (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099)))))))))))

(assert (=> d!541389 (= (inv!25336 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099))))) e!1133469)))

(declare-fun b!1771386 () Bool)

(declare-fun res!797814 () Bool)

(assert (=> b!1771386 (=> (not res!797814) (not e!1133469))))

(assert (=> b!1771386 (= res!797814 (and (not (= (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099))))) Empty!6483)) (not (= (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099))))) Empty!6483))))))

(declare-fun b!1771387 () Bool)

(declare-fun res!797815 () Bool)

(assert (=> b!1771387 (=> (not res!797815) (not e!1133469))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1771387 (= res!797815 (= (cheight!6694 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099))))) (+ (max!0 (height!1009 (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099)))))) (height!1009 (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099))))))) 1)))))

(declare-fun b!1771388 () Bool)

(assert (=> b!1771388 (= e!1133469 (<= 0 (cheight!6694 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099)))))))))

(assert (= (and d!541389 res!797813) b!1771386))

(assert (= (and b!1771386 res!797814) b!1771387))

(assert (= (and b!1771387 res!797815) b!1771388))

(declare-fun m!2190597 () Bool)

(assert (=> d!541389 m!2190597))

(declare-fun m!2190599 () Bool)

(assert (=> d!541389 m!2190599))

(assert (=> b!1771387 m!2190405))

(assert (=> b!1771387 m!2190409))

(assert (=> b!1771387 m!2190405))

(assert (=> b!1771387 m!2190409))

(declare-fun m!2190601 () Bool)

(assert (=> b!1771387 m!2190601))

(assert (=> b!1769705 d!541389))

(declare-fun b!1771393 () Bool)

(declare-fun e!1133472 () List!19560)

(assert (=> b!1771393 (= e!1133472 (_2!10949 (get!5952 lt!685429)))))

(declare-fun b!1771394 () Bool)

(assert (=> b!1771394 (= e!1133472 (Cons!19490 (h!24891 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685429))))) (++!5309 (t!165169 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685429))))) (_2!10949 (get!5952 lt!685429)))))))

(declare-fun d!541393 () Bool)

(declare-fun e!1133473 () Bool)

(assert (=> d!541393 e!1133473))

(declare-fun res!797821 () Bool)

(assert (=> d!541393 (=> (not res!797821) (not e!1133473))))

(declare-fun lt!685821 () List!19560)

(assert (=> d!541393 (= res!797821 (= (content!2826 lt!685821) ((_ map or) (content!2826 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685429))))) (content!2826 (_2!10949 (get!5952 lt!685429))))))))

(assert (=> d!541393 (= lt!685821 e!1133472)))

(declare-fun c!288496 () Bool)

(assert (=> d!541393 (= c!288496 ((_ is Nil!19490) (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685429))))))))

(assert (=> d!541393 (= (++!5309 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685429)))) (_2!10949 (get!5952 lt!685429))) lt!685821)))

(declare-fun b!1771396 () Bool)

(assert (=> b!1771396 (= e!1133473 (or (not (= (_2!10949 (get!5952 lt!685429)) Nil!19490)) (= lt!685821 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685429)))))))))

(declare-fun b!1771395 () Bool)

(declare-fun res!797820 () Bool)

(assert (=> b!1771395 (=> (not res!797820) (not e!1133473))))

(assert (=> b!1771395 (= res!797820 (= (size!15479 lt!685821) (+ (size!15479 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685429))))) (size!15479 (_2!10949 (get!5952 lt!685429))))))))

(assert (= (and d!541393 c!288496) b!1771393))

(assert (= (and d!541393 (not c!288496)) b!1771394))

(assert (= (and d!541393 res!797821) b!1771395))

(assert (= (and b!1771395 res!797820) b!1771396))

(declare-fun m!2190603 () Bool)

(assert (=> b!1771394 m!2190603))

(declare-fun m!2190605 () Bool)

(assert (=> d!541393 m!2190605))

(assert (=> d!541393 m!2188779))

(declare-fun m!2190607 () Bool)

(assert (=> d!541393 m!2190607))

(declare-fun m!2190609 () Bool)

(assert (=> d!541393 m!2190609))

(declare-fun m!2190611 () Bool)

(assert (=> b!1771395 m!2190611))

(assert (=> b!1771395 m!2188779))

(declare-fun m!2190613 () Bool)

(assert (=> b!1771395 m!2190613))

(assert (=> b!1771395 m!2188769))

(assert (=> b!1770158 d!541393))

(assert (=> b!1770158 d!541355))

(assert (=> b!1770158 d!541357))

(assert (=> b!1770158 d!541043))

(declare-fun d!541395 () Bool)

(assert (=> d!541395 (= (head!4114 (++!5309 lt!685116 (Cons!19490 (head!4114 lt!685095) Nil!19490))) (h!24891 (++!5309 lt!685116 (Cons!19490 (head!4114 lt!685095) Nil!19490))))))

(assert (=> b!1769539 d!541395))

(assert (=> b!1769539 d!541197))

(declare-fun d!541397 () Bool)

(assert (=> d!541397 (= (isDefined!3336 (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 (_1!10949 lt!685099))))) (not (isEmpty!12308 (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 (_1!10949 lt!685099)))))))))

(declare-fun bs!404710 () Bool)

(assert (= bs!404710 d!541397))

(assert (=> bs!404710 m!2187867))

(declare-fun m!2190615 () Bool)

(assert (=> bs!404710 m!2190615))

(assert (=> d!540547 d!541397))

(assert (=> d!540547 d!540545))

(declare-fun d!541399 () Bool)

(declare-fun e!1133492 () Bool)

(assert (=> d!541399 e!1133492))

(declare-fun res!797839 () Bool)

(assert (=> d!541399 (=> (not res!797839) (not e!1133492))))

(assert (=> d!541399 (= res!797839 (isDefined!3336 (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 (_1!10949 lt!685099))))))))

(assert (=> d!541399 true))

(declare-fun _$52!1124 () Unit!33686)

(assert (=> d!541399 (= (choose!11011 thiss!24550 rules!3447 lt!685092 (_1!10949 lt!685099)) _$52!1124)))

(declare-fun b!1771432 () Bool)

(declare-fun res!797840 () Bool)

(assert (=> b!1771432 (=> (not res!797840) (not e!1133492))))

(assert (=> b!1771432 (= res!797840 (matchR!2286 (regex!3485 (get!5953 (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 (_1!10949 lt!685099)))))) (list!7915 (charsOf!2134 (_1!10949 lt!685099)))))))

(declare-fun b!1771433 () Bool)

(assert (=> b!1771433 (= e!1133492 (= (rule!5527 (_1!10949 lt!685099)) (get!5953 (getRuleFromTag!533 thiss!24550 rules!3447 (tag!3865 (rule!5527 (_1!10949 lt!685099)))))))))

(assert (= (and d!541399 res!797839) b!1771432))

(assert (= (and b!1771432 res!797840) b!1771433))

(assert (=> d!541399 m!2187867))

(assert (=> d!541399 m!2187867))

(assert (=> d!541399 m!2188503))

(assert (=> b!1771432 m!2187867))

(assert (=> b!1771432 m!2187865))

(assert (=> b!1771432 m!2187865))

(assert (=> b!1771432 m!2187909))

(assert (=> b!1771432 m!2187867))

(assert (=> b!1771432 m!2188509))

(assert (=> b!1771432 m!2187909))

(assert (=> b!1771432 m!2188507))

(assert (=> b!1771433 m!2187867))

(assert (=> b!1771433 m!2187867))

(assert (=> b!1771433 m!2188509))

(assert (=> d!540547 d!541399))

(assert (=> d!540547 d!540673))

(assert (=> b!1770178 d!541143))

(assert (=> b!1770178 d!541145))

(declare-fun d!541425 () Bool)

(declare-fun lt!685833 () Int)

(assert (=> d!541425 (>= lt!685833 0)))

(declare-fun e!1133497 () Int)

(assert (=> d!541425 (= lt!685833 e!1133497)))

(declare-fun c!288507 () Bool)

(assert (=> d!541425 (= c!288507 ((_ is Nil!19490) lt!685233))))

(assert (=> d!541425 (= (size!15479 lt!685233) lt!685833)))

(declare-fun b!1771440 () Bool)

(assert (=> b!1771440 (= e!1133497 0)))

(declare-fun b!1771441 () Bool)

(assert (=> b!1771441 (= e!1133497 (+ 1 (size!15479 (t!165169 lt!685233))))))

(assert (= (and d!541425 c!288507) b!1771440))

(assert (= (and d!541425 (not c!288507)) b!1771441))

(declare-fun m!2190677 () Bool)

(assert (=> b!1771441 m!2190677))

(assert (=> b!1769871 d!541425))

(assert (=> b!1769871 d!540591))

(declare-fun d!541427 () Bool)

(declare-fun lt!685834 () Int)

(assert (=> d!541427 (>= lt!685834 0)))

(declare-fun e!1133498 () Int)

(assert (=> d!541427 (= lt!685834 e!1133498)))

(declare-fun c!288508 () Bool)

(assert (=> d!541427 (= c!288508 ((_ is Nil!19490) (_2!10949 lt!685099)))))

(assert (=> d!541427 (= (size!15479 (_2!10949 lt!685099)) lt!685834)))

(declare-fun b!1771442 () Bool)

(assert (=> b!1771442 (= e!1133498 0)))

(declare-fun b!1771443 () Bool)

(assert (=> b!1771443 (= e!1133498 (+ 1 (size!15479 (t!165169 (_2!10949 lt!685099)))))))

(assert (= (and d!541427 c!288508) b!1771442))

(assert (= (and d!541427 (not c!288508)) b!1771443))

(declare-fun m!2190683 () Bool)

(assert (=> b!1771443 m!2190683))

(assert (=> b!1769871 d!541427))

(declare-fun b!1771446 () Bool)

(declare-fun e!1133500 () Bool)

(assert (=> b!1771446 (= e!1133500 (isPrefix!1725 (tail!2649 (tail!2649 lt!685094)) (tail!2649 (tail!2649 lt!685092))))))

(declare-fun d!541433 () Bool)

(declare-fun e!1133501 () Bool)

(assert (=> d!541433 e!1133501))

(declare-fun res!797848 () Bool)

(assert (=> d!541433 (=> res!797848 e!1133501)))

(declare-fun lt!685835 () Bool)

(assert (=> d!541433 (= res!797848 (not lt!685835))))

(declare-fun e!1133499 () Bool)

(assert (=> d!541433 (= lt!685835 e!1133499)))

(declare-fun res!797847 () Bool)

(assert (=> d!541433 (=> res!797847 e!1133499)))

(assert (=> d!541433 (= res!797847 ((_ is Nil!19490) (tail!2649 lt!685094)))))

(assert (=> d!541433 (= (isPrefix!1725 (tail!2649 lt!685094) (tail!2649 lt!685092)) lt!685835)))

(declare-fun b!1771447 () Bool)

(assert (=> b!1771447 (= e!1133501 (>= (size!15479 (tail!2649 lt!685092)) (size!15479 (tail!2649 lt!685094))))))

(declare-fun b!1771444 () Bool)

(assert (=> b!1771444 (= e!1133499 e!1133500)))

(declare-fun res!797846 () Bool)

(assert (=> b!1771444 (=> (not res!797846) (not e!1133500))))

(assert (=> b!1771444 (= res!797846 (not ((_ is Nil!19490) (tail!2649 lt!685092))))))

(declare-fun b!1771445 () Bool)

(declare-fun res!797845 () Bool)

(assert (=> b!1771445 (=> (not res!797845) (not e!1133500))))

(assert (=> b!1771445 (= res!797845 (= (head!4114 (tail!2649 lt!685094)) (head!4114 (tail!2649 lt!685092))))))

(assert (= (and d!541433 (not res!797847)) b!1771444))

(assert (= (and b!1771444 res!797846) b!1771445))

(assert (= (and b!1771445 res!797845) b!1771446))

(assert (= (and d!541433 (not res!797848)) b!1771447))

(assert (=> b!1771446 m!2188011))

(declare-fun m!2190685 () Bool)

(assert (=> b!1771446 m!2190685))

(assert (=> b!1771446 m!2188013))

(assert (=> b!1771446 m!2189897))

(assert (=> b!1771446 m!2190685))

(assert (=> b!1771446 m!2189897))

(declare-fun m!2190687 () Bool)

(assert (=> b!1771446 m!2190687))

(assert (=> b!1771447 m!2188013))

(assert (=> b!1771447 m!2189901))

(assert (=> b!1771447 m!2188011))

(declare-fun m!2190689 () Bool)

(assert (=> b!1771447 m!2190689))

(assert (=> b!1771445 m!2188011))

(declare-fun m!2190691 () Bool)

(assert (=> b!1771445 m!2190691))

(assert (=> b!1771445 m!2188013))

(assert (=> b!1771445 m!2189905))

(assert (=> b!1769536 d!541433))

(declare-fun d!541435 () Bool)

(assert (=> d!541435 (= (tail!2649 lt!685094) (t!165169 lt!685094))))

(assert (=> b!1769536 d!541435))

(assert (=> b!1769536 d!541069))

(declare-fun d!541437 () Bool)

(assert (=> d!541437 (= (isEmpty!12307 lt!685214) (not ((_ is Some!3991) lt!685214)))))

(assert (=> d!540507 d!541437))

(declare-fun b!1771450 () Bool)

(declare-fun e!1133503 () Bool)

(assert (=> b!1771450 (= e!1133503 (isPrefix!1725 (tail!2649 lt!685092) (tail!2649 lt!685092)))))

(declare-fun d!541441 () Bool)

(declare-fun e!1133504 () Bool)

(assert (=> d!541441 e!1133504))

(declare-fun res!797852 () Bool)

(assert (=> d!541441 (=> res!797852 e!1133504)))

(declare-fun lt!685836 () Bool)

(assert (=> d!541441 (= res!797852 (not lt!685836))))

(declare-fun e!1133502 () Bool)

(assert (=> d!541441 (= lt!685836 e!1133502)))

(declare-fun res!797851 () Bool)

(assert (=> d!541441 (=> res!797851 e!1133502)))

(assert (=> d!541441 (= res!797851 ((_ is Nil!19490) lt!685092))))

(assert (=> d!541441 (= (isPrefix!1725 lt!685092 lt!685092) lt!685836)))

(declare-fun b!1771451 () Bool)

(assert (=> b!1771451 (= e!1133504 (>= (size!15479 lt!685092) (size!15479 lt!685092)))))

(declare-fun b!1771448 () Bool)

(assert (=> b!1771448 (= e!1133502 e!1133503)))

(declare-fun res!797850 () Bool)

(assert (=> b!1771448 (=> (not res!797850) (not e!1133503))))

(assert (=> b!1771448 (= res!797850 (not ((_ is Nil!19490) lt!685092)))))

(declare-fun b!1771449 () Bool)

(declare-fun res!797849 () Bool)

(assert (=> b!1771449 (=> (not res!797849) (not e!1133503))))

(assert (=> b!1771449 (= res!797849 (= (head!4114 lt!685092) (head!4114 lt!685092)))))

(assert (= (and d!541441 (not res!797851)) b!1771448))

(assert (= (and b!1771448 res!797850) b!1771449))

(assert (= (and b!1771449 res!797849) b!1771450))

(assert (= (and d!541441 (not res!797852)) b!1771451))

(assert (=> b!1771450 m!2188013))

(assert (=> b!1771450 m!2188013))

(assert (=> b!1771450 m!2188013))

(assert (=> b!1771450 m!2188013))

(declare-fun m!2190695 () Bool)

(assert (=> b!1771450 m!2190695))

(assert (=> b!1771451 m!2188017))

(assert (=> b!1771451 m!2188017))

(assert (=> b!1771449 m!2188021))

(assert (=> b!1771449 m!2188021))

(assert (=> d!540507 d!541441))

(declare-fun d!541445 () Bool)

(assert (=> d!541445 (isPrefix!1725 lt!685092 lt!685092)))

(declare-fun lt!685838 () Unit!33686)

(assert (=> d!541445 (= lt!685838 (choose!11029 lt!685092 lt!685092))))

(assert (=> d!541445 (= (lemmaIsPrefixRefl!1142 lt!685092 lt!685092) lt!685838)))

(declare-fun bs!404713 () Bool)

(assert (= bs!404713 d!541445))

(assert (=> bs!404713 m!2188319))

(declare-fun m!2190697 () Bool)

(assert (=> bs!404713 m!2190697))

(assert (=> d!540507 d!541445))

(assert (=> d!540507 d!541287))

(assert (=> d!540413 d!541153))

(declare-fun c!288513 () Bool)

(declare-fun call!111059 () Bool)

(declare-fun c!288512 () Bool)

(declare-fun bm!111052 () Bool)

(assert (=> bm!111052 (= call!111059 (validRegex!1949 (ite c!288513 (reg!5142 lt!685113) (ite c!288512 (regTwo!10139 lt!685113) (regOne!10138 lt!685113)))))))

(declare-fun b!1771466 () Bool)

(declare-fun res!797865 () Bool)

(declare-fun e!1133516 () Bool)

(assert (=> b!1771466 (=> (not res!797865) (not e!1133516))))

(declare-fun call!111057 () Bool)

(assert (=> b!1771466 (= res!797865 call!111057)))

(declare-fun e!1133513 () Bool)

(assert (=> b!1771466 (= e!1133513 e!1133516)))

(declare-fun bm!111053 () Bool)

(declare-fun call!111058 () Bool)

(assert (=> bm!111053 (= call!111058 call!111059)))

(declare-fun b!1771467 () Bool)

(declare-fun res!797864 () Bool)

(declare-fun e!1133512 () Bool)

(assert (=> b!1771467 (=> res!797864 e!1133512)))

(assert (=> b!1771467 (= res!797864 (not ((_ is Concat!8389) lt!685113)))))

(assert (=> b!1771467 (= e!1133513 e!1133512)))

(declare-fun b!1771468 () Bool)

(declare-fun e!1133515 () Bool)

(declare-fun e!1133514 () Bool)

(assert (=> b!1771468 (= e!1133515 e!1133514)))

(assert (=> b!1771468 (= c!288513 ((_ is Star!4813) lt!685113))))

(declare-fun bm!111054 () Bool)

(assert (=> bm!111054 (= call!111057 (validRegex!1949 (ite c!288512 (regOne!10139 lt!685113) (regTwo!10138 lt!685113))))))

(declare-fun b!1771469 () Bool)

(declare-fun e!1133517 () Bool)

(assert (=> b!1771469 (= e!1133514 e!1133517)))

(declare-fun res!797862 () Bool)

(assert (=> b!1771469 (= res!797862 (not (nullable!1475 (reg!5142 lt!685113))))))

(assert (=> b!1771469 (=> (not res!797862) (not e!1133517))))

(declare-fun d!541447 () Bool)

(declare-fun res!797863 () Bool)

(assert (=> d!541447 (=> res!797863 e!1133515)))

(assert (=> d!541447 (= res!797863 ((_ is ElementMatch!4813) lt!685113))))

(assert (=> d!541447 (= (validRegex!1949 lt!685113) e!1133515)))

(declare-fun b!1771470 () Bool)

(declare-fun e!1133518 () Bool)

(assert (=> b!1771470 (= e!1133518 call!111057)))

(declare-fun b!1771471 () Bool)

(assert (=> b!1771471 (= e!1133514 e!1133513)))

(assert (=> b!1771471 (= c!288512 ((_ is Union!4813) lt!685113))))

(declare-fun b!1771472 () Bool)

(assert (=> b!1771472 (= e!1133517 call!111059)))

(declare-fun b!1771473 () Bool)

(assert (=> b!1771473 (= e!1133516 call!111058)))

(declare-fun b!1771474 () Bool)

(assert (=> b!1771474 (= e!1133512 e!1133518)))

(declare-fun res!797861 () Bool)

(assert (=> b!1771474 (=> (not res!797861) (not e!1133518))))

(assert (=> b!1771474 (= res!797861 call!111058)))

(assert (= (and d!541447 (not res!797863)) b!1771468))

(assert (= (and b!1771468 c!288513) b!1771469))

(assert (= (and b!1771468 (not c!288513)) b!1771471))

(assert (= (and b!1771469 res!797862) b!1771472))

(assert (= (and b!1771471 c!288512) b!1771466))

(assert (= (and b!1771471 (not c!288512)) b!1771467))

(assert (= (and b!1771466 res!797865) b!1771473))

(assert (= (and b!1771467 (not res!797864)) b!1771474))

(assert (= (and b!1771474 res!797861) b!1771470))

(assert (= (or b!1771466 b!1771470) bm!111054))

(assert (= (or b!1771473 b!1771474) bm!111053))

(assert (= (or b!1771472 bm!111053) bm!111052))

(declare-fun m!2190701 () Bool)

(assert (=> bm!111052 m!2190701))

(declare-fun m!2190705 () Bool)

(assert (=> bm!111054 m!2190705))

(declare-fun m!2190707 () Bool)

(assert (=> b!1771469 m!2190707))

(assert (=> d!540413 d!541447))

(declare-fun b!1771475 () Bool)

(declare-fun res!797872 () Bool)

(declare-fun e!1133523 () Bool)

(assert (=> b!1771475 (=> (not res!797872) (not e!1133523))))

(assert (=> b!1771475 (= res!797872 (isEmpty!12304 (tail!2649 (tail!2649 lt!685116))))))

(declare-fun b!1771476 () Bool)

(assert (=> b!1771476 (= e!1133523 (= (head!4114 (tail!2649 lt!685116)) (c!288084 (derivativeStep!1244 lt!685113 (head!4114 lt!685116)))))))

(declare-fun bm!111055 () Bool)

(declare-fun call!111060 () Bool)

(assert (=> bm!111055 (= call!111060 (isEmpty!12304 (tail!2649 lt!685116)))))

(declare-fun b!1771477 () Bool)

(declare-fun e!1133520 () Bool)

(declare-fun e!1133525 () Bool)

(assert (=> b!1771477 (= e!1133520 e!1133525)))

(declare-fun res!797868 () Bool)

(assert (=> b!1771477 (=> res!797868 e!1133525)))

(assert (=> b!1771477 (= res!797868 call!111060)))

(declare-fun b!1771478 () Bool)

(declare-fun e!1133522 () Bool)

(assert (=> b!1771478 (= e!1133522 e!1133520)))

(declare-fun res!797871 () Bool)

(assert (=> b!1771478 (=> (not res!797871) (not e!1133520))))

(declare-fun lt!685839 () Bool)

(assert (=> b!1771478 (= res!797871 (not lt!685839))))

(declare-fun b!1771479 () Bool)

(declare-fun e!1133524 () Bool)

(assert (=> b!1771479 (= e!1133524 (not lt!685839))))

(declare-fun b!1771480 () Bool)

(declare-fun res!797869 () Bool)

(assert (=> b!1771480 (=> res!797869 e!1133525)))

(assert (=> b!1771480 (= res!797869 (not (isEmpty!12304 (tail!2649 (tail!2649 lt!685116)))))))

(declare-fun b!1771481 () Bool)

(declare-fun res!797866 () Bool)

(assert (=> b!1771481 (=> res!797866 e!1133522)))

(assert (=> b!1771481 (= res!797866 e!1133523)))

(declare-fun res!797870 () Bool)

(assert (=> b!1771481 (=> (not res!797870) (not e!1133523))))

(assert (=> b!1771481 (= res!797870 lt!685839)))

(declare-fun b!1771482 () Bool)

(declare-fun res!797873 () Bool)

(assert (=> b!1771482 (=> res!797873 e!1133522)))

(assert (=> b!1771482 (= res!797873 (not ((_ is ElementMatch!4813) (derivativeStep!1244 lt!685113 (head!4114 lt!685116)))))))

(assert (=> b!1771482 (= e!1133524 e!1133522)))

(declare-fun b!1771483 () Bool)

(assert (=> b!1771483 (= e!1133525 (not (= (head!4114 (tail!2649 lt!685116)) (c!288084 (derivativeStep!1244 lt!685113 (head!4114 lt!685116))))))))

(declare-fun b!1771484 () Bool)

(declare-fun e!1133521 () Bool)

(assert (=> b!1771484 (= e!1133521 (= lt!685839 call!111060))))

(declare-fun b!1771485 () Bool)

(assert (=> b!1771485 (= e!1133521 e!1133524)))

(declare-fun c!288514 () Bool)

(assert (=> b!1771485 (= c!288514 ((_ is EmptyLang!4813) (derivativeStep!1244 lt!685113 (head!4114 lt!685116))))))

(declare-fun b!1771486 () Bool)

(declare-fun res!797867 () Bool)

(assert (=> b!1771486 (=> (not res!797867) (not e!1133523))))

(assert (=> b!1771486 (= res!797867 (not call!111060))))

(declare-fun d!541449 () Bool)

(assert (=> d!541449 e!1133521))

(declare-fun c!288516 () Bool)

(assert (=> d!541449 (= c!288516 ((_ is EmptyExpr!4813) (derivativeStep!1244 lt!685113 (head!4114 lt!685116))))))

(declare-fun e!1133519 () Bool)

(assert (=> d!541449 (= lt!685839 e!1133519)))

(declare-fun c!288515 () Bool)

(assert (=> d!541449 (= c!288515 (isEmpty!12304 (tail!2649 lt!685116)))))

(assert (=> d!541449 (validRegex!1949 (derivativeStep!1244 lt!685113 (head!4114 lt!685116)))))

(assert (=> d!541449 (= (matchR!2286 (derivativeStep!1244 lt!685113 (head!4114 lt!685116)) (tail!2649 lt!685116)) lt!685839)))

(declare-fun b!1771487 () Bool)

(assert (=> b!1771487 (= e!1133519 (matchR!2286 (derivativeStep!1244 (derivativeStep!1244 lt!685113 (head!4114 lt!685116)) (head!4114 (tail!2649 lt!685116))) (tail!2649 (tail!2649 lt!685116))))))

(declare-fun b!1771488 () Bool)

(assert (=> b!1771488 (= e!1133519 (nullable!1475 (derivativeStep!1244 lt!685113 (head!4114 lt!685116))))))

(assert (= (and d!541449 c!288515) b!1771488))

(assert (= (and d!541449 (not c!288515)) b!1771487))

(assert (= (and d!541449 c!288516) b!1771484))

(assert (= (and d!541449 (not c!288516)) b!1771485))

(assert (= (and b!1771485 c!288514) b!1771479))

(assert (= (and b!1771485 (not c!288514)) b!1771482))

(assert (= (and b!1771482 (not res!797873)) b!1771481))

(assert (= (and b!1771481 res!797870) b!1771486))

(assert (= (and b!1771486 res!797867) b!1771475))

(assert (= (and b!1771475 res!797872) b!1771476))

(assert (= (and b!1771481 (not res!797866)) b!1771478))

(assert (= (and b!1771478 res!797871) b!1771477))

(assert (= (and b!1771477 (not res!797868)) b!1771480))

(assert (= (and b!1771480 (not res!797869)) b!1771483))

(assert (= (or b!1771484 b!1771477 b!1771486) bm!111055))

(assert (=> b!1771487 m!2188101))

(assert (=> b!1771487 m!2189837))

(assert (=> b!1771487 m!2188099))

(assert (=> b!1771487 m!2189837))

(declare-fun m!2190717 () Bool)

(assert (=> b!1771487 m!2190717))

(assert (=> b!1771487 m!2188101))

(assert (=> b!1771487 m!2189841))

(assert (=> b!1771487 m!2190717))

(assert (=> b!1771487 m!2189841))

(declare-fun m!2190723 () Bool)

(assert (=> b!1771487 m!2190723))

(assert (=> d!541449 m!2188101))

(assert (=> d!541449 m!2188109))

(assert (=> d!541449 m!2188099))

(declare-fun m!2190725 () Bool)

(assert (=> d!541449 m!2190725))

(assert (=> b!1771476 m!2188101))

(assert (=> b!1771476 m!2189837))

(assert (=> bm!111055 m!2188101))

(assert (=> bm!111055 m!2188109))

(assert (=> b!1771480 m!2188101))

(assert (=> b!1771480 m!2189841))

(assert (=> b!1771480 m!2189841))

(assert (=> b!1771480 m!2189847))

(assert (=> b!1771475 m!2188101))

(assert (=> b!1771475 m!2189841))

(assert (=> b!1771475 m!2189841))

(assert (=> b!1771475 m!2189847))

(assert (=> b!1771488 m!2188099))

(declare-fun m!2190727 () Bool)

(assert (=> b!1771488 m!2190727))

(assert (=> b!1771483 m!2188101))

(assert (=> b!1771483 m!2189837))

(assert (=> b!1769631 d!541449))

(declare-fun d!541457 () Bool)

(declare-fun lt!685841 () Regex!4813)

(assert (=> d!541457 (validRegex!1949 lt!685841)))

(declare-fun e!1133528 () Regex!4813)

(assert (=> d!541457 (= lt!685841 e!1133528)))

(declare-fun c!288517 () Bool)

(assert (=> d!541457 (= c!288517 (or ((_ is EmptyExpr!4813) lt!685113) ((_ is EmptyLang!4813) lt!685113)))))

(assert (=> d!541457 (validRegex!1949 lt!685113)))

(assert (=> d!541457 (= (derivativeStep!1244 lt!685113 (head!4114 lt!685116)) lt!685841)))

(declare-fun b!1771491 () Bool)

(declare-fun c!288519 () Bool)

(assert (=> b!1771491 (= c!288519 (nullable!1475 (regOne!10138 lt!685113)))))

(declare-fun e!1133532 () Regex!4813)

(declare-fun e!1133531 () Regex!4813)

(assert (=> b!1771491 (= e!1133532 e!1133531)))

(declare-fun c!288520 () Bool)

(declare-fun call!111062 () Regex!4813)

(declare-fun bm!111056 () Bool)

(assert (=> bm!111056 (= call!111062 (derivativeStep!1244 (ite c!288520 (regOne!10139 lt!685113) (regOne!10138 lt!685113)) (head!4114 lt!685116)))))

(declare-fun b!1771492 () Bool)

(assert (=> b!1771492 (= c!288520 ((_ is Union!4813) lt!685113))))

(declare-fun e!1133530 () Regex!4813)

(declare-fun e!1133529 () Regex!4813)

(assert (=> b!1771492 (= e!1133530 e!1133529)))

(declare-fun bm!111057 () Bool)

(declare-fun call!111063 () Regex!4813)

(declare-fun call!111064 () Regex!4813)

(assert (=> bm!111057 (= call!111063 call!111064)))

(declare-fun b!1771493 () Bool)

(declare-fun call!111061 () Regex!4813)

(assert (=> b!1771493 (= e!1133531 (Union!4813 (Concat!8389 call!111061 (regTwo!10138 lt!685113)) EmptyLang!4813))))

(declare-fun b!1771494 () Bool)

(assert (=> b!1771494 (= e!1133529 (Union!4813 call!111062 call!111064))))

(declare-fun b!1771495 () Bool)

(assert (=> b!1771495 (= e!1133530 (ite (= (head!4114 lt!685116) (c!288084 lt!685113)) EmptyExpr!4813 EmptyLang!4813))))

(declare-fun b!1771496 () Bool)

(assert (=> b!1771496 (= e!1133531 (Union!4813 (Concat!8389 call!111062 (regTwo!10138 lt!685113)) call!111061))))

(declare-fun b!1771497 () Bool)

(assert (=> b!1771497 (= e!1133529 e!1133532)))

(declare-fun c!288518 () Bool)

(assert (=> b!1771497 (= c!288518 ((_ is Star!4813) lt!685113))))

(declare-fun b!1771498 () Bool)

(assert (=> b!1771498 (= e!1133528 e!1133530)))

(declare-fun c!288521 () Bool)

(assert (=> b!1771498 (= c!288521 ((_ is ElementMatch!4813) lt!685113))))

(declare-fun bm!111058 () Bool)

(assert (=> bm!111058 (= call!111064 (derivativeStep!1244 (ite c!288520 (regTwo!10139 lt!685113) (ite c!288518 (reg!5142 lt!685113) (ite c!288519 (regTwo!10138 lt!685113) (regOne!10138 lt!685113)))) (head!4114 lt!685116)))))

(declare-fun b!1771499 () Bool)

(assert (=> b!1771499 (= e!1133532 (Concat!8389 call!111063 lt!685113))))

(declare-fun bm!111059 () Bool)

(assert (=> bm!111059 (= call!111061 call!111063)))

(declare-fun b!1771500 () Bool)

(assert (=> b!1771500 (= e!1133528 EmptyLang!4813)))

(assert (= (and d!541457 c!288517) b!1771500))

(assert (= (and d!541457 (not c!288517)) b!1771498))

(assert (= (and b!1771498 c!288521) b!1771495))

(assert (= (and b!1771498 (not c!288521)) b!1771492))

(assert (= (and b!1771492 c!288520) b!1771494))

(assert (= (and b!1771492 (not c!288520)) b!1771497))

(assert (= (and b!1771497 c!288518) b!1771499))

(assert (= (and b!1771497 (not c!288518)) b!1771491))

(assert (= (and b!1771491 c!288519) b!1771496))

(assert (= (and b!1771491 (not c!288519)) b!1771493))

(assert (= (or b!1771496 b!1771493) bm!111059))

(assert (= (or b!1771499 bm!111059) bm!111057))

(assert (= (or b!1771494 bm!111057) bm!111058))

(assert (= (or b!1771494 b!1771496) bm!111056))

(declare-fun m!2190729 () Bool)

(assert (=> d!541457 m!2190729))

(assert (=> d!541457 m!2188107))

(assert (=> b!1771491 m!2190017))

(assert (=> bm!111056 m!2188097))

(declare-fun m!2190731 () Bool)

(assert (=> bm!111056 m!2190731))

(assert (=> bm!111058 m!2188097))

(declare-fun m!2190733 () Bool)

(assert (=> bm!111058 m!2190733))

(assert (=> b!1769631 d!541457))

(assert (=> b!1769631 d!540937))

(assert (=> b!1769631 d!541063))

(declare-fun b!1771501 () Bool)

(declare-fun res!797884 () Bool)

(declare-fun e!1133535 () Bool)

(assert (=> b!1771501 (=> (not res!797884) (not e!1133535))))

(declare-fun lt!685846 () Option!3992)

(assert (=> b!1771501 (= res!797884 (< (size!15479 (_2!10949 (get!5952 lt!685846))) (size!15479 lt!685092)))))

(declare-fun bm!111060 () Bool)

(declare-fun call!111065 () Option!3992)

(assert (=> bm!111060 (= call!111065 (maxPrefixOneRule!1037 thiss!24550 (h!24892 (t!165170 rules!3447)) lt!685092))))

(declare-fun b!1771503 () Bool)

(declare-fun e!1133533 () Option!3992)

(assert (=> b!1771503 (= e!1133533 call!111065)))

(declare-fun b!1771504 () Bool)

(declare-fun res!797880 () Bool)

(assert (=> b!1771504 (=> (not res!797880) (not e!1133535))))

(assert (=> b!1771504 (= res!797880 (= (value!108995 (_1!10949 (get!5952 lt!685846))) (apply!5285 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685846)))) (seqFromList!2454 (originalCharacters!4299 (_1!10949 (get!5952 lt!685846)))))))))

(declare-fun b!1771505 () Bool)

(declare-fun res!797882 () Bool)

(assert (=> b!1771505 (=> (not res!797882) (not e!1133535))))

(assert (=> b!1771505 (= res!797882 (= (++!5309 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685846)))) (_2!10949 (get!5952 lt!685846))) lt!685092))))

(declare-fun b!1771502 () Bool)

(declare-fun res!797879 () Bool)

(assert (=> b!1771502 (=> (not res!797879) (not e!1133535))))

(assert (=> b!1771502 (= res!797879 (= (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685846)))) (originalCharacters!4299 (_1!10949 (get!5952 lt!685846)))))))

(declare-fun d!541459 () Bool)

(declare-fun e!1133534 () Bool)

(assert (=> d!541459 e!1133534))

(declare-fun res!797881 () Bool)

(assert (=> d!541459 (=> res!797881 e!1133534)))

(assert (=> d!541459 (= res!797881 (isEmpty!12307 lt!685846))))

(assert (=> d!541459 (= lt!685846 e!1133533)))

(declare-fun c!288522 () Bool)

(assert (=> d!541459 (= c!288522 (and ((_ is Cons!19491) (t!165170 rules!3447)) ((_ is Nil!19491) (t!165170 (t!165170 rules!3447)))))))

(declare-fun lt!685844 () Unit!33686)

(declare-fun lt!685843 () Unit!33686)

(assert (=> d!541459 (= lt!685844 lt!685843)))

(assert (=> d!541459 (isPrefix!1725 lt!685092 lt!685092)))

(assert (=> d!541459 (= lt!685843 (lemmaIsPrefixRefl!1142 lt!685092 lt!685092))))

(assert (=> d!541459 (rulesValidInductive!1180 thiss!24550 (t!165170 rules!3447))))

(assert (=> d!541459 (= (maxPrefix!1668 thiss!24550 (t!165170 rules!3447) lt!685092) lt!685846)))

(declare-fun b!1771506 () Bool)

(assert (=> b!1771506 (= e!1133534 e!1133535)))

(declare-fun res!797883 () Bool)

(assert (=> b!1771506 (=> (not res!797883) (not e!1133535))))

(assert (=> b!1771506 (= res!797883 (isDefined!3335 lt!685846))))

(declare-fun b!1771507 () Bool)

(declare-fun lt!685842 () Option!3992)

(declare-fun lt!685845 () Option!3992)

(assert (=> b!1771507 (= e!1133533 (ite (and ((_ is None!3991) lt!685842) ((_ is None!3991) lt!685845)) None!3991 (ite ((_ is None!3991) lt!685845) lt!685842 (ite ((_ is None!3991) lt!685842) lt!685845 (ite (>= (size!15478 (_1!10949 (v!25466 lt!685842))) (size!15478 (_1!10949 (v!25466 lt!685845)))) lt!685842 lt!685845)))))))

(assert (=> b!1771507 (= lt!685842 call!111065)))

(assert (=> b!1771507 (= lt!685845 (maxPrefix!1668 thiss!24550 (t!165170 (t!165170 rules!3447)) lt!685092))))

(declare-fun b!1771508 () Bool)

(declare-fun res!797885 () Bool)

(assert (=> b!1771508 (=> (not res!797885) (not e!1133535))))

(assert (=> b!1771508 (= res!797885 (matchR!2286 (regex!3485 (rule!5527 (_1!10949 (get!5952 lt!685846)))) (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685846))))))))

(declare-fun b!1771509 () Bool)

(assert (=> b!1771509 (= e!1133535 (contains!3515 (t!165170 rules!3447) (rule!5527 (_1!10949 (get!5952 lt!685846)))))))

(assert (= (and d!541459 c!288522) b!1771503))

(assert (= (and d!541459 (not c!288522)) b!1771507))

(assert (= (or b!1771503 b!1771507) bm!111060))

(assert (= (and d!541459 (not res!797881)) b!1771506))

(assert (= (and b!1771506 res!797883) b!1771502))

(assert (= (and b!1771502 res!797879) b!1771501))

(assert (= (and b!1771501 res!797884) b!1771505))

(assert (= (and b!1771505 res!797882) b!1771504))

(assert (= (and b!1771504 res!797880) b!1771508))

(assert (= (and b!1771508 res!797885) b!1771509))

(declare-fun m!2190745 () Bool)

(assert (=> bm!111060 m!2190745))

(declare-fun m!2190747 () Bool)

(assert (=> b!1771504 m!2190747))

(declare-fun m!2190749 () Bool)

(assert (=> b!1771504 m!2190749))

(assert (=> b!1771504 m!2190749))

(declare-fun m!2190751 () Bool)

(assert (=> b!1771504 m!2190751))

(assert (=> b!1771501 m!2190747))

(declare-fun m!2190753 () Bool)

(assert (=> b!1771501 m!2190753))

(assert (=> b!1771501 m!2188017))

(assert (=> b!1771505 m!2190747))

(declare-fun m!2190755 () Bool)

(assert (=> b!1771505 m!2190755))

(assert (=> b!1771505 m!2190755))

(declare-fun m!2190757 () Bool)

(assert (=> b!1771505 m!2190757))

(assert (=> b!1771505 m!2190757))

(declare-fun m!2190759 () Bool)

(assert (=> b!1771505 m!2190759))

(declare-fun m!2190761 () Bool)

(assert (=> b!1771506 m!2190761))

(assert (=> b!1771502 m!2190747))

(assert (=> b!1771502 m!2190755))

(assert (=> b!1771502 m!2190755))

(assert (=> b!1771502 m!2190757))

(declare-fun m!2190763 () Bool)

(assert (=> d!541459 m!2190763))

(assert (=> d!541459 m!2188319))

(assert (=> d!541459 m!2188321))

(assert (=> d!541459 m!2190351))

(assert (=> b!1771509 m!2190747))

(declare-fun m!2190769 () Bool)

(assert (=> b!1771509 m!2190769))

(assert (=> b!1771508 m!2190747))

(assert (=> b!1771508 m!2190755))

(assert (=> b!1771508 m!2190755))

(assert (=> b!1771508 m!2190757))

(assert (=> b!1771508 m!2190757))

(declare-fun m!2190775 () Bool)

(assert (=> b!1771508 m!2190775))

(declare-fun m!2190777 () Bool)

(assert (=> b!1771507 m!2190777))

(assert (=> b!1769832 d!541459))

(declare-fun b!1771534 () Bool)

(declare-fun res!797900 () Bool)

(declare-fun e!1133552 () Bool)

(assert (=> b!1771534 (=> (not res!797900) (not e!1133552))))

(assert (=> b!1771534 (= res!797900 (isEmpty!12304 (tail!2649 (tail!2649 lt!685100))))))

(declare-fun b!1771535 () Bool)

(assert (=> b!1771535 (= e!1133552 (= (head!4114 (tail!2649 lt!685100)) (c!288084 (derivativeStep!1244 (regex!3485 (rule!5527 (_1!10949 lt!685099))) (head!4114 lt!685100)))))))

(declare-fun bm!111066 () Bool)

(declare-fun call!111071 () Bool)

(assert (=> bm!111066 (= call!111071 (isEmpty!12304 (tail!2649 lt!685100)))))

(declare-fun b!1771536 () Bool)

(declare-fun e!1133549 () Bool)

(declare-fun e!1133554 () Bool)

(assert (=> b!1771536 (= e!1133549 e!1133554)))

(declare-fun res!797896 () Bool)

(assert (=> b!1771536 (=> res!797896 e!1133554)))

(assert (=> b!1771536 (= res!797896 call!111071)))

(declare-fun b!1771537 () Bool)

(declare-fun e!1133551 () Bool)

(assert (=> b!1771537 (= e!1133551 e!1133549)))

(declare-fun res!797899 () Bool)

(assert (=> b!1771537 (=> (not res!797899) (not e!1133549))))

(declare-fun lt!685849 () Bool)

(assert (=> b!1771537 (= res!797899 (not lt!685849))))

(declare-fun b!1771538 () Bool)

(declare-fun e!1133553 () Bool)

(assert (=> b!1771538 (= e!1133553 (not lt!685849))))

(declare-fun b!1771539 () Bool)

(declare-fun res!797897 () Bool)

(assert (=> b!1771539 (=> res!797897 e!1133554)))

(assert (=> b!1771539 (= res!797897 (not (isEmpty!12304 (tail!2649 (tail!2649 lt!685100)))))))

(declare-fun b!1771540 () Bool)

(declare-fun res!797894 () Bool)

(assert (=> b!1771540 (=> res!797894 e!1133551)))

(assert (=> b!1771540 (= res!797894 e!1133552)))

(declare-fun res!797898 () Bool)

(assert (=> b!1771540 (=> (not res!797898) (not e!1133552))))

(assert (=> b!1771540 (= res!797898 lt!685849)))

(declare-fun b!1771541 () Bool)

(declare-fun res!797901 () Bool)

(assert (=> b!1771541 (=> res!797901 e!1133551)))

(assert (=> b!1771541 (= res!797901 (not ((_ is ElementMatch!4813) (derivativeStep!1244 (regex!3485 (rule!5527 (_1!10949 lt!685099))) (head!4114 lt!685100)))))))

(assert (=> b!1771541 (= e!1133553 e!1133551)))

(declare-fun b!1771542 () Bool)

(assert (=> b!1771542 (= e!1133554 (not (= (head!4114 (tail!2649 lt!685100)) (c!288084 (derivativeStep!1244 (regex!3485 (rule!5527 (_1!10949 lt!685099))) (head!4114 lt!685100))))))))

(declare-fun b!1771543 () Bool)

(declare-fun e!1133550 () Bool)

(assert (=> b!1771543 (= e!1133550 (= lt!685849 call!111071))))

(declare-fun b!1771544 () Bool)

(assert (=> b!1771544 (= e!1133550 e!1133553)))

(declare-fun c!288531 () Bool)

(assert (=> b!1771544 (= c!288531 ((_ is EmptyLang!4813) (derivativeStep!1244 (regex!3485 (rule!5527 (_1!10949 lt!685099))) (head!4114 lt!685100))))))

(declare-fun b!1771545 () Bool)

(declare-fun res!797895 () Bool)

(assert (=> b!1771545 (=> (not res!797895) (not e!1133552))))

(assert (=> b!1771545 (= res!797895 (not call!111071))))

(declare-fun d!541467 () Bool)

(assert (=> d!541467 e!1133550))

(declare-fun c!288533 () Bool)

(assert (=> d!541467 (= c!288533 ((_ is EmptyExpr!4813) (derivativeStep!1244 (regex!3485 (rule!5527 (_1!10949 lt!685099))) (head!4114 lt!685100))))))

(declare-fun e!1133548 () Bool)

(assert (=> d!541467 (= lt!685849 e!1133548)))

(declare-fun c!288532 () Bool)

(assert (=> d!541467 (= c!288532 (isEmpty!12304 (tail!2649 lt!685100)))))

(assert (=> d!541467 (validRegex!1949 (derivativeStep!1244 (regex!3485 (rule!5527 (_1!10949 lt!685099))) (head!4114 lt!685100)))))

(assert (=> d!541467 (= (matchR!2286 (derivativeStep!1244 (regex!3485 (rule!5527 (_1!10949 lt!685099))) (head!4114 lt!685100)) (tail!2649 lt!685100)) lt!685849)))

(declare-fun b!1771546 () Bool)

(assert (=> b!1771546 (= e!1133548 (matchR!2286 (derivativeStep!1244 (derivativeStep!1244 (regex!3485 (rule!5527 (_1!10949 lt!685099))) (head!4114 lt!685100)) (head!4114 (tail!2649 lt!685100))) (tail!2649 (tail!2649 lt!685100))))))

(declare-fun b!1771547 () Bool)

(assert (=> b!1771547 (= e!1133548 (nullable!1475 (derivativeStep!1244 (regex!3485 (rule!5527 (_1!10949 lt!685099))) (head!4114 lt!685100))))))

(assert (= (and d!541467 c!288532) b!1771547))

(assert (= (and d!541467 (not c!288532)) b!1771546))

(assert (= (and d!541467 c!288533) b!1771543))

(assert (= (and d!541467 (not c!288533)) b!1771544))

(assert (= (and b!1771544 c!288531) b!1771538))

(assert (= (and b!1771544 (not c!288531)) b!1771541))

(assert (= (and b!1771541 (not res!797901)) b!1771540))

(assert (= (and b!1771540 res!797898) b!1771545))

(assert (= (and b!1771545 res!797895) b!1771534))

(assert (= (and b!1771534 res!797900) b!1771535))

(assert (= (and b!1771540 (not res!797894)) b!1771537))

(assert (= (and b!1771537 res!797899) b!1771536))

(assert (= (and b!1771536 (not res!797896)) b!1771539))

(assert (= (and b!1771539 (not res!797897)) b!1771542))

(assert (= (or b!1771543 b!1771536 b!1771545) bm!111066))

(assert (=> b!1771546 m!2188331))

(assert (=> b!1771546 m!2189967))

(assert (=> b!1771546 m!2188883))

(assert (=> b!1771546 m!2189967))

(declare-fun m!2190779 () Bool)

(assert (=> b!1771546 m!2190779))

(assert (=> b!1771546 m!2188331))

(assert (=> b!1771546 m!2189957))

(assert (=> b!1771546 m!2190779))

(assert (=> b!1771546 m!2189957))

(declare-fun m!2190783 () Bool)

(assert (=> b!1771546 m!2190783))

(assert (=> d!541467 m!2188331))

(assert (=> d!541467 m!2188573))

(assert (=> d!541467 m!2188883))

(declare-fun m!2190785 () Bool)

(assert (=> d!541467 m!2190785))

(assert (=> b!1771535 m!2188331))

(assert (=> b!1771535 m!2189967))

(assert (=> bm!111066 m!2188331))

(assert (=> bm!111066 m!2188573))

(assert (=> b!1771539 m!2188331))

(assert (=> b!1771539 m!2189957))

(assert (=> b!1771539 m!2189957))

(assert (=> b!1771539 m!2190011))

(assert (=> b!1771534 m!2188331))

(assert (=> b!1771534 m!2189957))

(assert (=> b!1771534 m!2189957))

(assert (=> b!1771534 m!2190011))

(assert (=> b!1771547 m!2188883))

(declare-fun m!2190787 () Bool)

(assert (=> b!1771547 m!2190787))

(assert (=> b!1771542 m!2188331))

(assert (=> b!1771542 m!2189967))

(assert (=> b!1770213 d!541467))

(declare-fun d!541473 () Bool)

(declare-fun lt!685851 () Regex!4813)

(assert (=> d!541473 (validRegex!1949 lt!685851)))

(declare-fun e!1133557 () Regex!4813)

(assert (=> d!541473 (= lt!685851 e!1133557)))

(declare-fun c!288536 () Bool)

(assert (=> d!541473 (= c!288536 (or ((_ is EmptyExpr!4813) (regex!3485 (rule!5527 (_1!10949 lt!685099)))) ((_ is EmptyLang!4813) (regex!3485 (rule!5527 (_1!10949 lt!685099))))))))

(assert (=> d!541473 (validRegex!1949 (regex!3485 (rule!5527 (_1!10949 lt!685099))))))

(assert (=> d!541473 (= (derivativeStep!1244 (regex!3485 (rule!5527 (_1!10949 lt!685099))) (head!4114 lt!685100)) lt!685851)))

(declare-fun b!1771552 () Bool)

(declare-fun c!288538 () Bool)

(assert (=> b!1771552 (= c!288538 (nullable!1475 (regOne!10138 (regex!3485 (rule!5527 (_1!10949 lt!685099))))))))

(declare-fun e!1133561 () Regex!4813)

(declare-fun e!1133560 () Regex!4813)

(assert (=> b!1771552 (= e!1133561 e!1133560)))

(declare-fun bm!111067 () Bool)

(declare-fun call!111073 () Regex!4813)

(declare-fun c!288539 () Bool)

(assert (=> bm!111067 (= call!111073 (derivativeStep!1244 (ite c!288539 (regOne!10139 (regex!3485 (rule!5527 (_1!10949 lt!685099)))) (regOne!10138 (regex!3485 (rule!5527 (_1!10949 lt!685099))))) (head!4114 lt!685100)))))

(declare-fun b!1771553 () Bool)

(assert (=> b!1771553 (= c!288539 ((_ is Union!4813) (regex!3485 (rule!5527 (_1!10949 lt!685099)))))))

(declare-fun e!1133559 () Regex!4813)

(declare-fun e!1133558 () Regex!4813)

(assert (=> b!1771553 (= e!1133559 e!1133558)))

(declare-fun bm!111068 () Bool)

(declare-fun call!111074 () Regex!4813)

(declare-fun call!111075 () Regex!4813)

(assert (=> bm!111068 (= call!111074 call!111075)))

(declare-fun b!1771554 () Bool)

(declare-fun call!111072 () Regex!4813)

(assert (=> b!1771554 (= e!1133560 (Union!4813 (Concat!8389 call!111072 (regTwo!10138 (regex!3485 (rule!5527 (_1!10949 lt!685099))))) EmptyLang!4813))))

(declare-fun b!1771555 () Bool)

(assert (=> b!1771555 (= e!1133558 (Union!4813 call!111073 call!111075))))

(declare-fun b!1771556 () Bool)

(assert (=> b!1771556 (= e!1133559 (ite (= (head!4114 lt!685100) (c!288084 (regex!3485 (rule!5527 (_1!10949 lt!685099))))) EmptyExpr!4813 EmptyLang!4813))))

(declare-fun b!1771557 () Bool)

(assert (=> b!1771557 (= e!1133560 (Union!4813 (Concat!8389 call!111073 (regTwo!10138 (regex!3485 (rule!5527 (_1!10949 lt!685099))))) call!111072))))

(declare-fun b!1771558 () Bool)

(assert (=> b!1771558 (= e!1133558 e!1133561)))

(declare-fun c!288537 () Bool)

(assert (=> b!1771558 (= c!288537 ((_ is Star!4813) (regex!3485 (rule!5527 (_1!10949 lt!685099)))))))

(declare-fun b!1771559 () Bool)

(assert (=> b!1771559 (= e!1133557 e!1133559)))

(declare-fun c!288540 () Bool)

(assert (=> b!1771559 (= c!288540 ((_ is ElementMatch!4813) (regex!3485 (rule!5527 (_1!10949 lt!685099)))))))

(declare-fun bm!111069 () Bool)

(assert (=> bm!111069 (= call!111075 (derivativeStep!1244 (ite c!288539 (regTwo!10139 (regex!3485 (rule!5527 (_1!10949 lt!685099)))) (ite c!288537 (reg!5142 (regex!3485 (rule!5527 (_1!10949 lt!685099)))) (ite c!288538 (regTwo!10138 (regex!3485 (rule!5527 (_1!10949 lt!685099)))) (regOne!10138 (regex!3485 (rule!5527 (_1!10949 lt!685099))))))) (head!4114 lt!685100)))))

(declare-fun b!1771560 () Bool)

(assert (=> b!1771560 (= e!1133561 (Concat!8389 call!111074 (regex!3485 (rule!5527 (_1!10949 lt!685099)))))))

(declare-fun bm!111070 () Bool)

(assert (=> bm!111070 (= call!111072 call!111074)))

(declare-fun b!1771561 () Bool)

(assert (=> b!1771561 (= e!1133557 EmptyLang!4813)))

(assert (= (and d!541473 c!288536) b!1771561))

(assert (= (and d!541473 (not c!288536)) b!1771559))

(assert (= (and b!1771559 c!288540) b!1771556))

(assert (= (and b!1771559 (not c!288540)) b!1771553))

(assert (= (and b!1771553 c!288539) b!1771555))

(assert (= (and b!1771553 (not c!288539)) b!1771558))

(assert (= (and b!1771558 c!288537) b!1771560))

(assert (= (and b!1771558 (not c!288537)) b!1771552))

(assert (= (and b!1771552 c!288538) b!1771557))

(assert (= (and b!1771552 (not c!288538)) b!1771554))

(assert (= (or b!1771557 b!1771554) bm!111070))

(assert (= (or b!1771560 bm!111070) bm!111068))

(assert (= (or b!1771555 bm!111068) bm!111069))

(assert (= (or b!1771555 b!1771557) bm!111067))

(declare-fun m!2190799 () Bool)

(assert (=> d!541473 m!2190799))

(assert (=> d!541473 m!2188887))

(declare-fun m!2190801 () Bool)

(assert (=> b!1771552 m!2190801))

(assert (=> bm!111067 m!2188335))

(declare-fun m!2190803 () Bool)

(assert (=> bm!111067 m!2190803))

(assert (=> bm!111069 m!2188335))

(declare-fun m!2190807 () Bool)

(assert (=> bm!111069 m!2190807))

(assert (=> b!1770213 d!541473))

(assert (=> b!1770213 d!541083))

(assert (=> b!1770213 d!541109))

(assert (=> bm!110931 d!541153))

(declare-fun d!541479 () Bool)

(assert (=> d!541479 (= (isDefined!3335 lt!685443) (not (isEmpty!12307 lt!685443)))))

(declare-fun bs!404719 () Bool)

(assert (= bs!404719 d!541479))

(assert (=> bs!404719 m!2188867))

(assert (=> b!1770197 d!541479))

(declare-fun d!541481 () Bool)

(declare-fun c!288542 () Bool)

(assert (=> d!541481 (= c!288542 ((_ is Nil!19490) lt!685139))))

(declare-fun e!1133566 () (InoxSet C!9800))

(assert (=> d!541481 (= (content!2826 lt!685139) e!1133566)))

(declare-fun b!1771568 () Bool)

(assert (=> b!1771568 (= e!1133566 ((as const (Array C!9800 Bool)) false))))

(declare-fun b!1771569 () Bool)

(assert (=> b!1771569 (= e!1133566 ((_ map or) (store ((as const (Array C!9800 Bool)) false) (h!24891 lt!685139) true) (content!2826 (t!165169 lt!685139))))))

(assert (= (and d!541481 c!288542) b!1771568))

(assert (= (and d!541481 (not c!288542)) b!1771569))

(declare-fun m!2190815 () Bool)

(assert (=> b!1771569 m!2190815))

(declare-fun m!2190817 () Bool)

(assert (=> b!1771569 m!2190817))

(assert (=> d!540407 d!541481))

(assert (=> d!540407 d!541341))

(declare-fun d!541487 () Bool)

(declare-fun c!288544 () Bool)

(assert (=> d!541487 (= c!288544 ((_ is Nil!19490) (Cons!19490 (head!4114 lt!685095) Nil!19490)))))

(declare-fun e!1133568 () (InoxSet C!9800))

(assert (=> d!541487 (= (content!2826 (Cons!19490 (head!4114 lt!685095) Nil!19490)) e!1133568)))

(declare-fun b!1771572 () Bool)

(assert (=> b!1771572 (= e!1133568 ((as const (Array C!9800 Bool)) false))))

(declare-fun b!1771573 () Bool)

(assert (=> b!1771573 (= e!1133568 ((_ map or) (store ((as const (Array C!9800 Bool)) false) (h!24891 (Cons!19490 (head!4114 lt!685095) Nil!19490)) true) (content!2826 (t!165169 (Cons!19490 (head!4114 lt!685095) Nil!19490)))))))

(assert (= (and d!541487 c!288544) b!1771572))

(assert (= (and d!541487 (not c!288544)) b!1771573))

(declare-fun m!2190821 () Bool)

(assert (=> b!1771573 m!2190821))

(declare-fun m!2190823 () Bool)

(assert (=> b!1771573 m!2190823))

(assert (=> d!540407 d!541487))

(declare-fun b!1771576 () Bool)

(declare-fun e!1133570 () List!19560)

(assert (=> b!1771576 (= e!1133570 suffix!1421)))

(declare-fun b!1771577 () Bool)

(assert (=> b!1771577 (= e!1133570 (Cons!19490 (h!24891 (t!165169 lt!685116)) (++!5309 (t!165169 (t!165169 lt!685116)) suffix!1421)))))

(declare-fun d!541491 () Bool)

(declare-fun e!1133571 () Bool)

(assert (=> d!541491 e!1133571))

(declare-fun res!797907 () Bool)

(assert (=> d!541491 (=> (not res!797907) (not e!1133571))))

(declare-fun lt!685855 () List!19560)

(assert (=> d!541491 (= res!797907 (= (content!2826 lt!685855) ((_ map or) (content!2826 (t!165169 lt!685116)) (content!2826 suffix!1421))))))

(assert (=> d!541491 (= lt!685855 e!1133570)))

(declare-fun c!288546 () Bool)

(assert (=> d!541491 (= c!288546 ((_ is Nil!19490) (t!165169 lt!685116)))))

(assert (=> d!541491 (= (++!5309 (t!165169 lt!685116) suffix!1421) lt!685855)))

(declare-fun b!1771579 () Bool)

(assert (=> b!1771579 (= e!1133571 (or (not (= suffix!1421 Nil!19490)) (= lt!685855 (t!165169 lt!685116))))))

(declare-fun b!1771578 () Bool)

(declare-fun res!797906 () Bool)

(assert (=> b!1771578 (=> (not res!797906) (not e!1133571))))

(assert (=> b!1771578 (= res!797906 (= (size!15479 lt!685855) (+ (size!15479 (t!165169 lt!685116)) (size!15479 suffix!1421))))))

(assert (= (and d!541491 c!288546) b!1771576))

(assert (= (and d!541491 (not c!288546)) b!1771577))

(assert (= (and d!541491 res!797907) b!1771578))

(assert (= (and b!1771578 res!797906) b!1771579))

(declare-fun m!2190827 () Bool)

(assert (=> b!1771577 m!2190827))

(declare-fun m!2190829 () Bool)

(assert (=> d!541491 m!2190829))

(assert (=> d!541491 m!2189699))

(assert (=> d!541491 m!2188353))

(declare-fun m!2190831 () Bool)

(assert (=> b!1771578 m!2190831))

(assert (=> b!1771578 m!2189693))

(assert (=> b!1771578 m!2188357))

(assert (=> b!1769866 d!541491))

(declare-fun b!1771597 () Bool)

(declare-fun e!1133580 () List!19560)

(assert (=> b!1771597 (= e!1133580 (++!5309 (list!7917 (left!15607 (c!288085 (charsOf!2134 (_1!10949 lt!685099))))) (list!7917 (right!15937 (c!288085 (charsOf!2134 (_1!10949 lt!685099)))))))))

(declare-fun b!1771596 () Bool)

(assert (=> b!1771596 (= e!1133580 (list!7922 (xs!9359 (c!288085 (charsOf!2134 (_1!10949 lt!685099))))))))

(declare-fun b!1771594 () Bool)

(declare-fun e!1133579 () List!19560)

(assert (=> b!1771594 (= e!1133579 Nil!19490)))

(declare-fun d!541495 () Bool)

(declare-fun c!288550 () Bool)

(assert (=> d!541495 (= c!288550 ((_ is Empty!6483) (c!288085 (charsOf!2134 (_1!10949 lt!685099)))))))

(assert (=> d!541495 (= (list!7917 (c!288085 (charsOf!2134 (_1!10949 lt!685099)))) e!1133579)))

(declare-fun b!1771595 () Bool)

(assert (=> b!1771595 (= e!1133579 e!1133580)))

(declare-fun c!288551 () Bool)

(assert (=> b!1771595 (= c!288551 ((_ is Leaf!9446) (c!288085 (charsOf!2134 (_1!10949 lt!685099)))))))

(assert (= (and d!541495 c!288550) b!1771594))

(assert (= (and d!541495 (not c!288550)) b!1771595))

(assert (= (and b!1771595 c!288551) b!1771596))

(assert (= (and b!1771595 (not c!288551)) b!1771597))

(declare-fun m!2190833 () Bool)

(assert (=> b!1771597 m!2190833))

(declare-fun m!2190835 () Bool)

(assert (=> b!1771597 m!2190835))

(assert (=> b!1771597 m!2190833))

(assert (=> b!1771597 m!2190835))

(declare-fun m!2190839 () Bool)

(assert (=> b!1771597 m!2190839))

(declare-fun m!2190841 () Bool)

(assert (=> b!1771596 m!2190841))

(assert (=> d!540647 d!541495))

(declare-fun d!541497 () Bool)

(assert (=> d!541497 (= (inv!25325 (tag!3865 (h!24892 (t!165170 rules!3447)))) (= (mod (str.len (value!108994 (tag!3865 (h!24892 (t!165170 rules!3447))))) 2) 0))))

(assert (=> b!1770264 d!541497))

(declare-fun d!541499 () Bool)

(declare-fun res!797916 () Bool)

(declare-fun e!1133581 () Bool)

(assert (=> d!541499 (=> (not res!797916) (not e!1133581))))

(assert (=> d!541499 (= res!797916 (semiInverseModEq!1390 (toChars!4867 (transformation!3485 (h!24892 (t!165170 rules!3447)))) (toValue!5008 (transformation!3485 (h!24892 (t!165170 rules!3447))))))))

(assert (=> d!541499 (= (inv!25330 (transformation!3485 (h!24892 (t!165170 rules!3447)))) e!1133581)))

(declare-fun b!1771598 () Bool)

(assert (=> b!1771598 (= e!1133581 (equivClasses!1331 (toChars!4867 (transformation!3485 (h!24892 (t!165170 rules!3447)))) (toValue!5008 (transformation!3485 (h!24892 (t!165170 rules!3447))))))))

(assert (= (and d!541499 res!797916) b!1771598))

(declare-fun m!2190849 () Bool)

(assert (=> d!541499 m!2190849))

(declare-fun m!2190851 () Bool)

(assert (=> b!1771598 m!2190851))

(assert (=> b!1770264 d!541499))

(declare-fun d!541503 () Bool)

(declare-fun lt!685858 () Int)

(assert (=> d!541503 (>= lt!685858 0)))

(declare-fun e!1133587 () Int)

(assert (=> d!541503 (= lt!685858 e!1133587)))

(declare-fun c!288557 () Bool)

(assert (=> d!541503 (= c!288557 ((_ is Nil!19490) (t!165169 lt!685094)))))

(assert (=> d!541503 (= (size!15479 (t!165169 lt!685094)) lt!685858)))

(declare-fun b!1771609 () Bool)

(assert (=> b!1771609 (= e!1133587 0)))

(declare-fun b!1771610 () Bool)

(assert (=> b!1771610 (= e!1133587 (+ 1 (size!15479 (t!165169 (t!165169 lt!685094)))))))

(assert (= (and d!541503 c!288557) b!1771609))

(assert (= (and d!541503 (not c!288557)) b!1771610))

(declare-fun m!2190853 () Bool)

(assert (=> b!1771610 m!2190853))

(assert (=> b!1770216 d!541503))

(declare-fun d!541505 () Bool)

(declare-fun c!288558 () Bool)

(assert (=> d!541505 (= c!288558 ((_ is Node!6483) (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099)))))))))

(declare-fun e!1133588 () Bool)

(assert (=> d!541505 (= (inv!25332 (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099)))))) e!1133588)))

(declare-fun b!1771611 () Bool)

(assert (=> b!1771611 (= e!1133588 (inv!25336 (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099)))))))))

(declare-fun b!1771612 () Bool)

(declare-fun e!1133589 () Bool)

(assert (=> b!1771612 (= e!1133588 e!1133589)))

(declare-fun res!797917 () Bool)

(assert (=> b!1771612 (= res!797917 (not ((_ is Leaf!9446) (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099))))))))))

(assert (=> b!1771612 (=> res!797917 e!1133589)))

(declare-fun b!1771613 () Bool)

(assert (=> b!1771613 (= e!1133589 (inv!25337 (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099)))))))))

(assert (= (and d!541505 c!288558) b!1771611))

(assert (= (and d!541505 (not c!288558)) b!1771612))

(assert (= (and b!1771612 (not res!797917)) b!1771613))

(declare-fun m!2190855 () Bool)

(assert (=> b!1771611 m!2190855))

(declare-fun m!2190857 () Bool)

(assert (=> b!1771613 m!2190857))

(assert (=> b!1770252 d!541505))

(declare-fun d!541507 () Bool)

(declare-fun c!288559 () Bool)

(assert (=> d!541507 (= c!288559 ((_ is Node!6483) (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099)))))))))

(declare-fun e!1133590 () Bool)

(assert (=> d!541507 (= (inv!25332 (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099)))))) e!1133590)))

(declare-fun b!1771614 () Bool)

(assert (=> b!1771614 (= e!1133590 (inv!25336 (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099)))))))))

(declare-fun b!1771615 () Bool)

(declare-fun e!1133591 () Bool)

(assert (=> b!1771615 (= e!1133590 e!1133591)))

(declare-fun res!797918 () Bool)

(assert (=> b!1771615 (= res!797918 (not ((_ is Leaf!9446) (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099))))))))))

(assert (=> b!1771615 (=> res!797918 e!1133591)))

(declare-fun b!1771616 () Bool)

(assert (=> b!1771616 (= e!1133591 (inv!25337 (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099)))))))))

(assert (= (and d!541507 c!288559) b!1771614))

(assert (= (and d!541507 (not c!288559)) b!1771615))

(assert (= (and b!1771615 (not res!797918)) b!1771616))

(declare-fun m!2190865 () Bool)

(assert (=> b!1771614 m!2190865))

(declare-fun m!2190867 () Bool)

(assert (=> b!1771616 m!2190867))

(assert (=> b!1770252 d!541507))

(declare-fun b!1771617 () Bool)

(declare-fun res!797924 () Bool)

(declare-fun e!1133594 () Bool)

(assert (=> b!1771617 (=> (not res!797924) (not e!1133594))))

(declare-fun lt!685861 () Option!3992)

(assert (=> b!1771617 (= res!797924 (= (value!108995 (_1!10949 (get!5952 lt!685861))) (apply!5285 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685861)))) (seqFromList!2454 (originalCharacters!4299 (_1!10949 (get!5952 lt!685861)))))))))

(declare-fun b!1771618 () Bool)

(assert (=> b!1771618 (= e!1133594 (= (size!15478 (_1!10949 (get!5952 lt!685861))) (size!15479 (originalCharacters!4299 (_1!10949 (get!5952 lt!685861))))))))

(declare-fun b!1771619 () Bool)

(declare-fun e!1133593 () Option!3992)

(declare-fun lt!685862 () tuple2!19102)

(assert (=> b!1771619 (= e!1133593 (Some!3991 (tuple2!19095 (Token!6537 (apply!5285 (transformation!3485 (h!24892 rules!3447)) (seqFromList!2454 (_1!10953 lt!685862))) (h!24892 rules!3447) (size!15480 (seqFromList!2454 (_1!10953 lt!685862))) (_1!10953 lt!685862)) (_2!10953 lt!685862))))))

(declare-fun lt!685859 () Unit!33686)

(assert (=> b!1771619 (= lt!685859 (longestMatchIsAcceptedByMatchOrIsEmpty!437 (regex!3485 (h!24892 rules!3447)) lt!685092))))

(declare-fun res!797923 () Bool)

(assert (=> b!1771619 (= res!797923 (isEmpty!12304 (_1!10953 (findLongestMatchInner!453 (regex!3485 (h!24892 rules!3447)) Nil!19490 (size!15479 Nil!19490) lt!685092 lt!685092 (size!15479 lt!685092)))))))

(declare-fun e!1133592 () Bool)

(assert (=> b!1771619 (=> res!797923 e!1133592)))

(assert (=> b!1771619 e!1133592))

(declare-fun lt!685863 () Unit!33686)

(assert (=> b!1771619 (= lt!685863 lt!685859)))

(declare-fun lt!685860 () Unit!33686)

(assert (=> b!1771619 (= lt!685860 (lemmaSemiInverse!623 (transformation!3485 (h!24892 rules!3447)) (seqFromList!2454 (_1!10953 lt!685862))))))

(declare-fun b!1771620 () Bool)

(declare-fun res!797925 () Bool)

(assert (=> b!1771620 (=> (not res!797925) (not e!1133594))))

(assert (=> b!1771620 (= res!797925 (= (++!5309 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685861)))) (_2!10949 (get!5952 lt!685861))) lt!685092))))

(declare-fun b!1771621 () Bool)

(assert (=> b!1771621 (= e!1133593 None!3991)))

(declare-fun d!541509 () Bool)

(declare-fun e!1133595 () Bool)

(assert (=> d!541509 e!1133595))

(declare-fun res!797920 () Bool)

(assert (=> d!541509 (=> res!797920 e!1133595)))

(assert (=> d!541509 (= res!797920 (isEmpty!12307 lt!685861))))

(assert (=> d!541509 (= lt!685861 e!1133593)))

(declare-fun c!288560 () Bool)

(assert (=> d!541509 (= c!288560 (isEmpty!12304 (_1!10953 lt!685862)))))

(assert (=> d!541509 (= lt!685862 (findLongestMatch!380 (regex!3485 (h!24892 rules!3447)) lt!685092))))

(assert (=> d!541509 (ruleValid!983 thiss!24550 (h!24892 rules!3447))))

(assert (=> d!541509 (= (maxPrefixOneRule!1037 thiss!24550 (h!24892 rules!3447) lt!685092) lt!685861)))

(declare-fun b!1771622 () Bool)

(declare-fun res!797922 () Bool)

(assert (=> b!1771622 (=> (not res!797922) (not e!1133594))))

(assert (=> b!1771622 (= res!797922 (= (rule!5527 (_1!10949 (get!5952 lt!685861))) (h!24892 rules!3447)))))

(declare-fun b!1771623 () Bool)

(assert (=> b!1771623 (= e!1133592 (matchR!2286 (regex!3485 (h!24892 rules!3447)) (_1!10953 (findLongestMatchInner!453 (regex!3485 (h!24892 rules!3447)) Nil!19490 (size!15479 Nil!19490) lt!685092 lt!685092 (size!15479 lt!685092)))))))

(declare-fun b!1771624 () Bool)

(declare-fun res!797921 () Bool)

(assert (=> b!1771624 (=> (not res!797921) (not e!1133594))))

(assert (=> b!1771624 (= res!797921 (< (size!15479 (_2!10949 (get!5952 lt!685861))) (size!15479 lt!685092)))))

(declare-fun b!1771625 () Bool)

(assert (=> b!1771625 (= e!1133595 e!1133594)))

(declare-fun res!797919 () Bool)

(assert (=> b!1771625 (=> (not res!797919) (not e!1133594))))

(assert (=> b!1771625 (= res!797919 (matchR!2286 (regex!3485 (h!24892 rules!3447)) (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685861))))))))

(assert (= (and d!541509 c!288560) b!1771621))

(assert (= (and d!541509 (not c!288560)) b!1771619))

(assert (= (and b!1771619 (not res!797923)) b!1771623))

(assert (= (and d!541509 (not res!797920)) b!1771625))

(assert (= (and b!1771625 res!797919) b!1771620))

(assert (= (and b!1771620 res!797925) b!1771624))

(assert (= (and b!1771624 res!797921) b!1771622))

(assert (= (and b!1771622 res!797922) b!1771617))

(assert (= (and b!1771617 res!797924) b!1771618))

(declare-fun m!2190877 () Bool)

(assert (=> b!1771624 m!2190877))

(declare-fun m!2190879 () Bool)

(assert (=> b!1771624 m!2190879))

(assert (=> b!1771624 m!2188017))

(assert (=> b!1771623 m!2188771))

(assert (=> b!1771623 m!2188017))

(assert (=> b!1771623 m!2188771))

(assert (=> b!1771623 m!2188017))

(declare-fun m!2190881 () Bool)

(assert (=> b!1771623 m!2190881))

(declare-fun m!2190883 () Bool)

(assert (=> b!1771623 m!2190883))

(assert (=> b!1771620 m!2190877))

(declare-fun m!2190889 () Bool)

(assert (=> b!1771620 m!2190889))

(assert (=> b!1771620 m!2190889))

(declare-fun m!2190893 () Bool)

(assert (=> b!1771620 m!2190893))

(assert (=> b!1771620 m!2190893))

(declare-fun m!2190897 () Bool)

(assert (=> b!1771620 m!2190897))

(assert (=> b!1771619 m!2188771))

(declare-fun m!2190899 () Bool)

(assert (=> b!1771619 m!2190899))

(declare-fun m!2190901 () Bool)

(assert (=> b!1771619 m!2190901))

(assert (=> b!1771619 m!2190899))

(declare-fun m!2190903 () Bool)

(assert (=> b!1771619 m!2190903))

(assert (=> b!1771619 m!2190899))

(declare-fun m!2190905 () Bool)

(assert (=> b!1771619 m!2190905))

(assert (=> b!1771619 m!2190899))

(declare-fun m!2190907 () Bool)

(assert (=> b!1771619 m!2190907))

(declare-fun m!2190911 () Bool)

(assert (=> b!1771619 m!2190911))

(assert (=> b!1771619 m!2188017))

(assert (=> b!1771619 m!2188771))

(assert (=> b!1771619 m!2188017))

(assert (=> b!1771619 m!2190881))

(assert (=> b!1771617 m!2190877))

(declare-fun m!2190915 () Bool)

(assert (=> b!1771617 m!2190915))

(assert (=> b!1771617 m!2190915))

(declare-fun m!2190917 () Bool)

(assert (=> b!1771617 m!2190917))

(assert (=> b!1771618 m!2190877))

(declare-fun m!2190919 () Bool)

(assert (=> b!1771618 m!2190919))

(declare-fun m!2190921 () Bool)

(assert (=> d!541509 m!2190921))

(declare-fun m!2190923 () Bool)

(assert (=> d!541509 m!2190923))

(declare-fun m!2190925 () Bool)

(assert (=> d!541509 m!2190925))

(assert (=> d!541509 m!2190389))

(assert (=> b!1771625 m!2190877))

(assert (=> b!1771625 m!2190889))

(assert (=> b!1771625 m!2190889))

(assert (=> b!1771625 m!2190893))

(assert (=> b!1771625 m!2190893))

(declare-fun m!2190933 () Bool)

(assert (=> b!1771625 m!2190933))

(assert (=> b!1771622 m!2190877))

(assert (=> bm!110929 d!541509))

(declare-fun d!541521 () Bool)

(assert (=> d!541521 (= (list!7915 lt!685444) (list!7917 (c!288085 lt!685444)))))

(declare-fun bs!404720 () Bool)

(assert (= bs!404720 d!541521))

(declare-fun m!2190941 () Bool)

(assert (=> bs!404720 m!2190941))

(assert (=> d!540657 d!541521))

(declare-fun d!541525 () Bool)

(declare-fun c!288575 () Bool)

(assert (=> d!541525 (= c!288575 ((_ is Nil!19490) lt!685233))))

(declare-fun e!1133616 () (InoxSet C!9800))

(assert (=> d!541525 (= (content!2826 lt!685233) e!1133616)))

(declare-fun b!1771664 () Bool)

(assert (=> b!1771664 (= e!1133616 ((as const (Array C!9800 Bool)) false))))

(declare-fun b!1771665 () Bool)

(assert (=> b!1771665 (= e!1133616 ((_ map or) (store ((as const (Array C!9800 Bool)) false) (h!24891 lt!685233) true) (content!2826 (t!165169 lt!685233))))))

(assert (= (and d!541525 c!288575) b!1771664))

(assert (= (and d!541525 (not c!288575)) b!1771665))

(declare-fun m!2190943 () Bool)

(assert (=> b!1771665 m!2190943))

(declare-fun m!2190945 () Bool)

(assert (=> b!1771665 m!2190945))

(assert (=> d!540525 d!541525))

(declare-fun d!541527 () Bool)

(declare-fun c!288576 () Bool)

(assert (=> d!541527 (= c!288576 ((_ is Nil!19490) lt!685100))))

(declare-fun e!1133617 () (InoxSet C!9800))

(assert (=> d!541527 (= (content!2826 lt!685100) e!1133617)))

(declare-fun b!1771666 () Bool)

(assert (=> b!1771666 (= e!1133617 ((as const (Array C!9800 Bool)) false))))

(declare-fun b!1771667 () Bool)

(assert (=> b!1771667 (= e!1133617 ((_ map or) (store ((as const (Array C!9800 Bool)) false) (h!24891 lt!685100) true) (content!2826 (t!165169 lt!685100))))))

(assert (= (and d!541527 c!288576) b!1771666))

(assert (= (and d!541527 (not c!288576)) b!1771667))

(declare-fun m!2190947 () Bool)

(assert (=> b!1771667 m!2190947))

(declare-fun m!2190949 () Bool)

(assert (=> b!1771667 m!2190949))

(assert (=> d!540525 d!541527))

(declare-fun d!541529 () Bool)

(declare-fun c!288577 () Bool)

(assert (=> d!541529 (= c!288577 ((_ is Nil!19490) (_2!10949 lt!685099)))))

(declare-fun e!1133618 () (InoxSet C!9800))

(assert (=> d!541529 (= (content!2826 (_2!10949 lt!685099)) e!1133618)))

(declare-fun b!1771668 () Bool)

(assert (=> b!1771668 (= e!1133618 ((as const (Array C!9800 Bool)) false))))

(declare-fun b!1771669 () Bool)

(assert (=> b!1771669 (= e!1133618 ((_ map or) (store ((as const (Array C!9800 Bool)) false) (h!24891 (_2!10949 lt!685099)) true) (content!2826 (t!165169 (_2!10949 lt!685099)))))))

(assert (= (and d!541529 c!288577) b!1771668))

(assert (= (and d!541529 (not c!288577)) b!1771669))

(declare-fun m!2190951 () Bool)

(assert (=> b!1771669 m!2190951))

(declare-fun m!2190953 () Bool)

(assert (=> b!1771669 m!2190953))

(assert (=> d!540525 d!541529))

(declare-fun d!541531 () Bool)

(assert (=> d!541531 (= (isEmpty!12304 lt!685094) ((_ is Nil!19490) lt!685094))))

(assert (=> d!540445 d!541531))

(assert (=> d!540553 d!541155))

(assert (=> d!540553 d!541447))

(declare-fun b!1771670 () Bool)

(declare-fun res!797941 () Bool)

(declare-fun e!1133621 () Bool)

(assert (=> b!1771670 (=> (not res!797941) (not e!1133621))))

(declare-fun lt!685870 () Option!3992)

(assert (=> b!1771670 (= res!797941 (= (value!108995 (_1!10949 (get!5952 lt!685870))) (apply!5285 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685870)))) (seqFromList!2454 (originalCharacters!4299 (_1!10949 (get!5952 lt!685870)))))))))

(declare-fun b!1771671 () Bool)

(assert (=> b!1771671 (= e!1133621 (= (size!15478 (_1!10949 (get!5952 lt!685870))) (size!15479 (originalCharacters!4299 (_1!10949 (get!5952 lt!685870))))))))

(declare-fun b!1771672 () Bool)

(declare-fun e!1133620 () Option!3992)

(declare-fun lt!685871 () tuple2!19102)

(assert (=> b!1771672 (= e!1133620 (Some!3991 (tuple2!19095 (Token!6537 (apply!5285 (transformation!3485 (h!24892 rules!3447)) (seqFromList!2454 (_1!10953 lt!685871))) (h!24892 rules!3447) (size!15480 (seqFromList!2454 (_1!10953 lt!685871))) (_1!10953 lt!685871)) (_2!10953 lt!685871))))))

(declare-fun lt!685868 () Unit!33686)

(assert (=> b!1771672 (= lt!685868 (longestMatchIsAcceptedByMatchOrIsEmpty!437 (regex!3485 (h!24892 rules!3447)) lt!685116))))

(declare-fun res!797940 () Bool)

(assert (=> b!1771672 (= res!797940 (isEmpty!12304 (_1!10953 (findLongestMatchInner!453 (regex!3485 (h!24892 rules!3447)) Nil!19490 (size!15479 Nil!19490) lt!685116 lt!685116 (size!15479 lt!685116)))))))

(declare-fun e!1133619 () Bool)

(assert (=> b!1771672 (=> res!797940 e!1133619)))

(assert (=> b!1771672 e!1133619))

(declare-fun lt!685872 () Unit!33686)

(assert (=> b!1771672 (= lt!685872 lt!685868)))

(declare-fun lt!685869 () Unit!33686)

(assert (=> b!1771672 (= lt!685869 (lemmaSemiInverse!623 (transformation!3485 (h!24892 rules!3447)) (seqFromList!2454 (_1!10953 lt!685871))))))

(declare-fun b!1771673 () Bool)

(declare-fun res!797942 () Bool)

(assert (=> b!1771673 (=> (not res!797942) (not e!1133621))))

(assert (=> b!1771673 (= res!797942 (= (++!5309 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685870)))) (_2!10949 (get!5952 lt!685870))) lt!685116))))

(declare-fun b!1771674 () Bool)

(assert (=> b!1771674 (= e!1133620 None!3991)))

(declare-fun d!541533 () Bool)

(declare-fun e!1133622 () Bool)

(assert (=> d!541533 e!1133622))

(declare-fun res!797937 () Bool)

(assert (=> d!541533 (=> res!797937 e!1133622)))

(assert (=> d!541533 (= res!797937 (isEmpty!12307 lt!685870))))

(assert (=> d!541533 (= lt!685870 e!1133620)))

(declare-fun c!288578 () Bool)

(assert (=> d!541533 (= c!288578 (isEmpty!12304 (_1!10953 lt!685871)))))

(assert (=> d!541533 (= lt!685871 (findLongestMatch!380 (regex!3485 (h!24892 rules!3447)) lt!685116))))

(assert (=> d!541533 (ruleValid!983 thiss!24550 (h!24892 rules!3447))))

(assert (=> d!541533 (= (maxPrefixOneRule!1037 thiss!24550 (h!24892 rules!3447) lt!685116) lt!685870)))

(declare-fun b!1771675 () Bool)

(declare-fun res!797939 () Bool)

(assert (=> b!1771675 (=> (not res!797939) (not e!1133621))))

(assert (=> b!1771675 (= res!797939 (= (rule!5527 (_1!10949 (get!5952 lt!685870))) (h!24892 rules!3447)))))

(declare-fun b!1771676 () Bool)

(assert (=> b!1771676 (= e!1133619 (matchR!2286 (regex!3485 (h!24892 rules!3447)) (_1!10953 (findLongestMatchInner!453 (regex!3485 (h!24892 rules!3447)) Nil!19490 (size!15479 Nil!19490) lt!685116 lt!685116 (size!15479 lt!685116)))))))

(declare-fun b!1771677 () Bool)

(declare-fun res!797938 () Bool)

(assert (=> b!1771677 (=> (not res!797938) (not e!1133621))))

(assert (=> b!1771677 (= res!797938 (< (size!15479 (_2!10949 (get!5952 lt!685870))) (size!15479 lt!685116)))))

(declare-fun b!1771678 () Bool)

(assert (=> b!1771678 (= e!1133622 e!1133621)))

(declare-fun res!797936 () Bool)

(assert (=> b!1771678 (=> (not res!797936) (not e!1133621))))

(assert (=> b!1771678 (= res!797936 (matchR!2286 (regex!3485 (h!24892 rules!3447)) (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685870))))))))

(assert (= (and d!541533 c!288578) b!1771674))

(assert (= (and d!541533 (not c!288578)) b!1771672))

(assert (= (and b!1771672 (not res!797940)) b!1771676))

(assert (= (and d!541533 (not res!797937)) b!1771678))

(assert (= (and b!1771678 res!797936) b!1771673))

(assert (= (and b!1771673 res!797942) b!1771677))

(assert (= (and b!1771677 res!797938) b!1771675))

(assert (= (and b!1771675 res!797939) b!1771670))

(assert (= (and b!1771670 res!797941) b!1771671))

(declare-fun m!2190965 () Bool)

(assert (=> b!1771677 m!2190965))

(declare-fun m!2190967 () Bool)

(assert (=> b!1771677 m!2190967))

(assert (=> b!1771677 m!2188041))

(assert (=> b!1771676 m!2188771))

(assert (=> b!1771676 m!2188041))

(assert (=> b!1771676 m!2188771))

(assert (=> b!1771676 m!2188041))

(declare-fun m!2190969 () Bool)

(assert (=> b!1771676 m!2190969))

(declare-fun m!2190973 () Bool)

(assert (=> b!1771676 m!2190973))

(assert (=> b!1771673 m!2190965))

(declare-fun m!2190977 () Bool)

(assert (=> b!1771673 m!2190977))

(assert (=> b!1771673 m!2190977))

(declare-fun m!2190979 () Bool)

(assert (=> b!1771673 m!2190979))

(assert (=> b!1771673 m!2190979))

(declare-fun m!2190981 () Bool)

(assert (=> b!1771673 m!2190981))

(assert (=> b!1771672 m!2188771))

(declare-fun m!2190983 () Bool)

(assert (=> b!1771672 m!2190983))

(declare-fun m!2190985 () Bool)

(assert (=> b!1771672 m!2190985))

(assert (=> b!1771672 m!2190983))

(declare-fun m!2190987 () Bool)

(assert (=> b!1771672 m!2190987))

(assert (=> b!1771672 m!2190983))

(declare-fun m!2190989 () Bool)

(assert (=> b!1771672 m!2190989))

(assert (=> b!1771672 m!2190983))

(declare-fun m!2190991 () Bool)

(assert (=> b!1771672 m!2190991))

(declare-fun m!2190993 () Bool)

(assert (=> b!1771672 m!2190993))

(assert (=> b!1771672 m!2188041))

(assert (=> b!1771672 m!2188771))

(assert (=> b!1771672 m!2188041))

(assert (=> b!1771672 m!2190969))

(assert (=> b!1771670 m!2190965))

(declare-fun m!2190995 () Bool)

(assert (=> b!1771670 m!2190995))

(assert (=> b!1771670 m!2190995))

(declare-fun m!2190997 () Bool)

(assert (=> b!1771670 m!2190997))

(assert (=> b!1771671 m!2190965))

(declare-fun m!2190999 () Bool)

(assert (=> b!1771671 m!2190999))

(declare-fun m!2191003 () Bool)

(assert (=> d!541533 m!2191003))

(declare-fun m!2191007 () Bool)

(assert (=> d!541533 m!2191007))

(declare-fun m!2191011 () Bool)

(assert (=> d!541533 m!2191011))

(assert (=> d!541533 m!2190389))

(assert (=> b!1771678 m!2190965))

(assert (=> b!1771678 m!2190977))

(assert (=> b!1771678 m!2190977))

(assert (=> b!1771678 m!2190979))

(assert (=> b!1771678 m!2190979))

(declare-fun m!2191015 () Bool)

(assert (=> b!1771678 m!2191015))

(assert (=> b!1771675 m!2190965))

(assert (=> bm!110936 d!541533))

(assert (=> d!540561 d!541153))

(assert (=> d!540561 d!541381))

(declare-fun d!541547 () Bool)

(assert (=> d!541547 (= (nullable!1475 (regex!3485 rule!422)) (nullableFct!335 (regex!3485 rule!422)))))

(declare-fun bs!404727 () Bool)

(assert (= bs!404727 d!541547))

(declare-fun m!2191019 () Bool)

(assert (=> bs!404727 m!2191019))

(assert (=> b!1769989 d!541547))

(declare-fun d!541551 () Bool)

(assert (=> d!541551 (= suffix!1421 lt!685095)))

(assert (=> d!541551 true))

(declare-fun _$63!780 () Unit!33686)

(assert (=> d!541551 (= (choose!11012 lt!685116 suffix!1421 lt!685116 lt!685095 lt!685092) _$63!780)))

(assert (=> d!540549 d!541551))

(assert (=> d!540549 d!540513))

(declare-fun b!1771695 () Bool)

(declare-fun res!797960 () Bool)

(declare-fun e!1133633 () Bool)

(assert (=> b!1771695 (=> (not res!797960) (not e!1133633))))

(declare-fun lt!685878 () Option!3992)

(assert (=> b!1771695 (= res!797960 (= (value!108995 (_1!10949 (get!5952 lt!685878))) (apply!5285 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685878)))) (seqFromList!2454 (originalCharacters!4299 (_1!10949 (get!5952 lt!685878)))))))))

(declare-fun b!1771696 () Bool)

(assert (=> b!1771696 (= e!1133633 (= (size!15478 (_1!10949 (get!5952 lt!685878))) (size!15479 (originalCharacters!4299 (_1!10949 (get!5952 lt!685878))))))))

(declare-fun b!1771697 () Bool)

(declare-fun e!1133632 () Option!3992)

(declare-fun lt!685879 () tuple2!19102)

(assert (=> b!1771697 (= e!1133632 (Some!3991 (tuple2!19095 (Token!6537 (apply!5285 (transformation!3485 (rule!5527 lt!685281)) (seqFromList!2454 (_1!10953 lt!685879))) (rule!5527 lt!685281) (size!15480 (seqFromList!2454 (_1!10953 lt!685879))) (_1!10953 lt!685879)) (_2!10953 lt!685879))))))

(declare-fun lt!685876 () Unit!33686)

(assert (=> b!1771697 (= lt!685876 (longestMatchIsAcceptedByMatchOrIsEmpty!437 (regex!3485 (rule!5527 lt!685281)) lt!685296))))

(declare-fun res!797959 () Bool)

(assert (=> b!1771697 (= res!797959 (isEmpty!12304 (_1!10953 (findLongestMatchInner!453 (regex!3485 (rule!5527 lt!685281)) Nil!19490 (size!15479 Nil!19490) lt!685296 lt!685296 (size!15479 lt!685296)))))))

(declare-fun e!1133631 () Bool)

(assert (=> b!1771697 (=> res!797959 e!1133631)))

(assert (=> b!1771697 e!1133631))

(declare-fun lt!685880 () Unit!33686)

(assert (=> b!1771697 (= lt!685880 lt!685876)))

(declare-fun lt!685877 () Unit!33686)

(assert (=> b!1771697 (= lt!685877 (lemmaSemiInverse!623 (transformation!3485 (rule!5527 lt!685281)) (seqFromList!2454 (_1!10953 lt!685879))))))

(declare-fun b!1771698 () Bool)

(declare-fun res!797961 () Bool)

(assert (=> b!1771698 (=> (not res!797961) (not e!1133633))))

(assert (=> b!1771698 (= res!797961 (= (++!5309 (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685878)))) (_2!10949 (get!5952 lt!685878))) lt!685296))))

(declare-fun b!1771699 () Bool)

(assert (=> b!1771699 (= e!1133632 None!3991)))

(declare-fun d!541555 () Bool)

(declare-fun e!1133634 () Bool)

(assert (=> d!541555 e!1133634))

(declare-fun res!797956 () Bool)

(assert (=> d!541555 (=> res!797956 e!1133634)))

(assert (=> d!541555 (= res!797956 (isEmpty!12307 lt!685878))))

(assert (=> d!541555 (= lt!685878 e!1133632)))

(declare-fun c!288581 () Bool)

(assert (=> d!541555 (= c!288581 (isEmpty!12304 (_1!10953 lt!685879)))))

(assert (=> d!541555 (= lt!685879 (findLongestMatch!380 (regex!3485 (rule!5527 lt!685281)) lt!685296))))

(assert (=> d!541555 (ruleValid!983 thiss!24550 (rule!5527 lt!685281))))

(assert (=> d!541555 (= (maxPrefixOneRule!1037 thiss!24550 (rule!5527 lt!685281) lt!685296) lt!685878)))

(declare-fun b!1771700 () Bool)

(declare-fun res!797958 () Bool)

(assert (=> b!1771700 (=> (not res!797958) (not e!1133633))))

(assert (=> b!1771700 (= res!797958 (= (rule!5527 (_1!10949 (get!5952 lt!685878))) (rule!5527 lt!685281)))))

(declare-fun b!1771701 () Bool)

(assert (=> b!1771701 (= e!1133631 (matchR!2286 (regex!3485 (rule!5527 lt!685281)) (_1!10953 (findLongestMatchInner!453 (regex!3485 (rule!5527 lt!685281)) Nil!19490 (size!15479 Nil!19490) lt!685296 lt!685296 (size!15479 lt!685296)))))))

(declare-fun b!1771702 () Bool)

(declare-fun res!797957 () Bool)

(assert (=> b!1771702 (=> (not res!797957) (not e!1133633))))

(assert (=> b!1771702 (= res!797957 (< (size!15479 (_2!10949 (get!5952 lt!685878))) (size!15479 lt!685296)))))

(declare-fun b!1771703 () Bool)

(assert (=> b!1771703 (= e!1133634 e!1133633)))

(declare-fun res!797955 () Bool)

(assert (=> b!1771703 (=> (not res!797955) (not e!1133633))))

(assert (=> b!1771703 (= res!797955 (matchR!2286 (regex!3485 (rule!5527 lt!685281)) (list!7915 (charsOf!2134 (_1!10949 (get!5952 lt!685878))))))))

(assert (= (and d!541555 c!288581) b!1771699))

(assert (= (and d!541555 (not c!288581)) b!1771697))

(assert (= (and b!1771697 (not res!797959)) b!1771701))

(assert (= (and d!541555 (not res!797956)) b!1771703))

(assert (= (and b!1771703 res!797955) b!1771698))

(assert (= (and b!1771698 res!797961) b!1771702))

(assert (= (and b!1771702 res!797957) b!1771700))

(assert (= (and b!1771700 res!797958) b!1771695))

(assert (= (and b!1771695 res!797960) b!1771696))

(declare-fun m!2191031 () Bool)

(assert (=> b!1771702 m!2191031))

(declare-fun m!2191033 () Bool)

(assert (=> b!1771702 m!2191033))

(declare-fun m!2191035 () Bool)

(assert (=> b!1771702 m!2191035))

(assert (=> b!1771701 m!2188771))

(assert (=> b!1771701 m!2191035))

(assert (=> b!1771701 m!2188771))

(assert (=> b!1771701 m!2191035))

(declare-fun m!2191037 () Bool)

(assert (=> b!1771701 m!2191037))

(declare-fun m!2191039 () Bool)

(assert (=> b!1771701 m!2191039))

(assert (=> b!1771698 m!2191031))

(declare-fun m!2191041 () Bool)

(assert (=> b!1771698 m!2191041))

(assert (=> b!1771698 m!2191041))

(declare-fun m!2191043 () Bool)

(assert (=> b!1771698 m!2191043))

(assert (=> b!1771698 m!2191043))

(declare-fun m!2191045 () Bool)

(assert (=> b!1771698 m!2191045))

(assert (=> b!1771697 m!2188771))

(declare-fun m!2191047 () Bool)

(assert (=> b!1771697 m!2191047))

(declare-fun m!2191049 () Bool)

(assert (=> b!1771697 m!2191049))

(assert (=> b!1771697 m!2191047))

(declare-fun m!2191051 () Bool)

(assert (=> b!1771697 m!2191051))

(assert (=> b!1771697 m!2191047))

(declare-fun m!2191053 () Bool)

(assert (=> b!1771697 m!2191053))

(assert (=> b!1771697 m!2191047))

(declare-fun m!2191055 () Bool)

(assert (=> b!1771697 m!2191055))

(declare-fun m!2191057 () Bool)

(assert (=> b!1771697 m!2191057))

(assert (=> b!1771697 m!2191035))

(assert (=> b!1771697 m!2188771))

(assert (=> b!1771697 m!2191035))

(assert (=> b!1771697 m!2191037))

(assert (=> b!1771695 m!2191031))

(declare-fun m!2191059 () Bool)

(assert (=> b!1771695 m!2191059))

(assert (=> b!1771695 m!2191059))

(declare-fun m!2191061 () Bool)

(assert (=> b!1771695 m!2191061))

(assert (=> b!1771696 m!2191031))

(declare-fun m!2191063 () Bool)

(assert (=> b!1771696 m!2191063))

(declare-fun m!2191065 () Bool)

(assert (=> d!541555 m!2191065))

(declare-fun m!2191067 () Bool)

(assert (=> d!541555 m!2191067))

(declare-fun m!2191069 () Bool)

(assert (=> d!541555 m!2191069))

(declare-fun m!2191071 () Bool)

(assert (=> d!541555 m!2191071))

(assert (=> b!1771703 m!2191031))

(assert (=> b!1771703 m!2191041))

(assert (=> b!1771703 m!2191041))

(assert (=> b!1771703 m!2191043))

(assert (=> b!1771703 m!2191043))

(declare-fun m!2191073 () Bool)

(assert (=> b!1771703 m!2191073))

(assert (=> b!1771700 m!2191031))

(assert (=> b!1769900 d!541555))

(assert (=> b!1769900 d!540721))

(declare-fun d!541565 () Bool)

(assert (=> d!541565 (= (isEmpty!12307 (maxPrefixOneRule!1037 thiss!24550 (rule!5527 lt!685281) lt!685296)) (not ((_ is Some!3991) (maxPrefixOneRule!1037 thiss!24550 (rule!5527 lt!685281) lt!685296))))))

(assert (=> b!1769900 d!541565))

(assert (=> b!1769900 d!540517))

(declare-fun d!541567 () Bool)

(assert (=> d!541567 (isEmpty!12307 (maxPrefixOneRule!1037 thiss!24550 (rule!5527 lt!685281) lt!685296))))

(declare-fun lt!685888 () Unit!33686)

(declare-fun choose!11031 (LexerInterface!3114 Rule!6770 List!19561 List!19560) Unit!33686)

(assert (=> d!541567 (= lt!685888 (choose!11031 thiss!24550 (rule!5527 lt!685281) rules!3447 lt!685296))))

(assert (=> d!541567 (not (isEmpty!12305 rules!3447))))

(assert (=> d!541567 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!332 thiss!24550 (rule!5527 lt!685281) rules!3447 lt!685296) lt!685888)))

(declare-fun bs!404735 () Bool)

(assert (= bs!404735 d!541567))

(assert (=> bs!404735 m!2188479))

(assert (=> bs!404735 m!2188479))

(assert (=> bs!404735 m!2188481))

(declare-fun m!2191091 () Bool)

(assert (=> bs!404735 m!2191091))

(assert (=> bs!404735 m!2187819))

(assert (=> b!1769900 d!541567))

(declare-fun d!541575 () Bool)

(assert (=> d!541575 (not (matchR!2286 (regex!3485 (rule!5527 lt!685281)) lt!685297))))

(declare-fun lt!685893 () Unit!33686)

(declare-fun choose!11032 (LexerInterface!3114 Rule!6770 List!19560 List!19560) Unit!33686)

(assert (=> d!541575 (= lt!685893 (choose!11032 thiss!24550 (rule!5527 lt!685281) lt!685297 (++!5309 lt!685116 suffix!1421)))))

(assert (=> d!541575 (isPrefix!1725 lt!685297 (++!5309 lt!685116 suffix!1421))))

(assert (=> d!541575 (= (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!328 thiss!24550 (rule!5527 lt!685281) lt!685297 (++!5309 lt!685116 suffix!1421)) lt!685893)))

(declare-fun bs!404737 () Bool)

(assert (= bs!404737 d!541575))

(assert (=> bs!404737 m!2188485))

(assert (=> bs!404737 m!2187857))

(declare-fun m!2191101 () Bool)

(assert (=> bs!404737 m!2191101))

(assert (=> bs!404737 m!2187857))

(declare-fun m!2191103 () Bool)

(assert (=> bs!404737 m!2191103))

(assert (=> b!1769900 d!541575))

(declare-fun b!1771727 () Bool)

(declare-fun res!797983 () Bool)

(declare-fun e!1133655 () Bool)

(assert (=> b!1771727 (=> (not res!797983) (not e!1133655))))

(assert (=> b!1771727 (= res!797983 (isEmpty!12304 (tail!2649 lt!685297)))))

(declare-fun b!1771728 () Bool)

(assert (=> b!1771728 (= e!1133655 (= (head!4114 lt!685297) (c!288084 (regex!3485 (rule!5527 lt!685281)))))))

(declare-fun bm!111086 () Bool)

(declare-fun call!111091 () Bool)

(assert (=> bm!111086 (= call!111091 (isEmpty!12304 lt!685297))))

(declare-fun b!1771729 () Bool)

(declare-fun e!1133652 () Bool)

(declare-fun e!1133657 () Bool)

(assert (=> b!1771729 (= e!1133652 e!1133657)))

(declare-fun res!797979 () Bool)

(assert (=> b!1771729 (=> res!797979 e!1133657)))

(assert (=> b!1771729 (= res!797979 call!111091)))

(declare-fun b!1771730 () Bool)

(declare-fun e!1133654 () Bool)

(assert (=> b!1771730 (= e!1133654 e!1133652)))

(declare-fun res!797982 () Bool)

(assert (=> b!1771730 (=> (not res!797982) (not e!1133652))))

(declare-fun lt!685894 () Bool)

(assert (=> b!1771730 (= res!797982 (not lt!685894))))

(declare-fun b!1771731 () Bool)

(declare-fun e!1133656 () Bool)

(assert (=> b!1771731 (= e!1133656 (not lt!685894))))

(declare-fun b!1771732 () Bool)

(declare-fun res!797980 () Bool)

(assert (=> b!1771732 (=> res!797980 e!1133657)))

(assert (=> b!1771732 (= res!797980 (not (isEmpty!12304 (tail!2649 lt!685297))))))

(declare-fun b!1771733 () Bool)

(declare-fun res!797977 () Bool)

(assert (=> b!1771733 (=> res!797977 e!1133654)))

(assert (=> b!1771733 (= res!797977 e!1133655)))

(declare-fun res!797981 () Bool)

(assert (=> b!1771733 (=> (not res!797981) (not e!1133655))))

(assert (=> b!1771733 (= res!797981 lt!685894)))

(declare-fun b!1771734 () Bool)

(declare-fun res!797984 () Bool)

(assert (=> b!1771734 (=> res!797984 e!1133654)))

(assert (=> b!1771734 (= res!797984 (not ((_ is ElementMatch!4813) (regex!3485 (rule!5527 lt!685281)))))))

(assert (=> b!1771734 (= e!1133656 e!1133654)))

(declare-fun b!1771735 () Bool)

(assert (=> b!1771735 (= e!1133657 (not (= (head!4114 lt!685297) (c!288084 (regex!3485 (rule!5527 lt!685281))))))))

(declare-fun b!1771736 () Bool)

(declare-fun e!1133653 () Bool)

(assert (=> b!1771736 (= e!1133653 (= lt!685894 call!111091))))

(declare-fun b!1771737 () Bool)

(assert (=> b!1771737 (= e!1133653 e!1133656)))

(declare-fun c!288585 () Bool)

(assert (=> b!1771737 (= c!288585 ((_ is EmptyLang!4813) (regex!3485 (rule!5527 lt!685281))))))

(declare-fun b!1771738 () Bool)

(declare-fun res!797978 () Bool)

(assert (=> b!1771738 (=> (not res!797978) (not e!1133655))))

(assert (=> b!1771738 (= res!797978 (not call!111091))))

(declare-fun d!541583 () Bool)

(assert (=> d!541583 e!1133653))

(declare-fun c!288587 () Bool)

(assert (=> d!541583 (= c!288587 ((_ is EmptyExpr!4813) (regex!3485 (rule!5527 lt!685281))))))

(declare-fun e!1133651 () Bool)

(assert (=> d!541583 (= lt!685894 e!1133651)))

(declare-fun c!288586 () Bool)

(assert (=> d!541583 (= c!288586 (isEmpty!12304 lt!685297))))

(assert (=> d!541583 (validRegex!1949 (regex!3485 (rule!5527 lt!685281)))))

(assert (=> d!541583 (= (matchR!2286 (regex!3485 (rule!5527 lt!685281)) lt!685297) lt!685894)))

(declare-fun b!1771739 () Bool)

(assert (=> b!1771739 (= e!1133651 (matchR!2286 (derivativeStep!1244 (regex!3485 (rule!5527 lt!685281)) (head!4114 lt!685297)) (tail!2649 lt!685297)))))

(declare-fun b!1771740 () Bool)

(assert (=> b!1771740 (= e!1133651 (nullable!1475 (regex!3485 (rule!5527 lt!685281))))))

(assert (= (and d!541583 c!288586) b!1771740))

(assert (= (and d!541583 (not c!288586)) b!1771739))

(assert (= (and d!541583 c!288587) b!1771736))

(assert (= (and d!541583 (not c!288587)) b!1771737))

(assert (= (and b!1771737 c!288585) b!1771731))

(assert (= (and b!1771737 (not c!288585)) b!1771734))

(assert (= (and b!1771734 (not res!797984)) b!1771733))

(assert (= (and b!1771733 res!797981) b!1771738))

(assert (= (and b!1771738 res!797978) b!1771727))

(assert (= (and b!1771727 res!797983) b!1771728))

(assert (= (and b!1771733 (not res!797977)) b!1771730))

(assert (= (and b!1771730 res!797982) b!1771729))

(assert (= (and b!1771729 (not res!797979)) b!1771732))

(assert (= (and b!1771732 (not res!797980)) b!1771735))

(assert (= (or b!1771736 b!1771729 b!1771738) bm!111086))

(declare-fun m!2191119 () Bool)

(assert (=> b!1771739 m!2191119))

(assert (=> b!1771739 m!2191119))

(declare-fun m!2191121 () Bool)

(assert (=> b!1771739 m!2191121))

(declare-fun m!2191123 () Bool)

(assert (=> b!1771739 m!2191123))

(assert (=> b!1771739 m!2191121))

(assert (=> b!1771739 m!2191123))

(declare-fun m!2191125 () Bool)

(assert (=> b!1771739 m!2191125))

(declare-fun m!2191127 () Bool)

(assert (=> d!541583 m!2191127))

(declare-fun m!2191129 () Bool)

(assert (=> d!541583 m!2191129))

(assert (=> b!1771728 m!2191119))

(assert (=> bm!111086 m!2191127))

(assert (=> b!1771732 m!2191123))

(assert (=> b!1771732 m!2191123))

(declare-fun m!2191131 () Bool)

(assert (=> b!1771732 m!2191131))

(assert (=> b!1771727 m!2191123))

(assert (=> b!1771727 m!2191123))

(assert (=> b!1771727 m!2191131))

(declare-fun m!2191133 () Bool)

(assert (=> b!1771740 m!2191133))

(assert (=> b!1771735 m!2191119))

(assert (=> b!1769900 d!541583))

(assert (=> b!1769900 d!540871))

(assert (=> b!1769952 d!541083))

(assert (=> b!1769916 d!541327))

(declare-fun b!1771751 () Bool)

(declare-fun e!1133665 () Bool)

(assert (=> b!1771751 (= e!1133665 (inv!16 (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (seqFromList!2454 lt!685100))))))

(declare-fun b!1771752 () Bool)

(declare-fun res!797985 () Bool)

(declare-fun e!1133664 () Bool)

(assert (=> b!1771752 (=> res!797985 e!1133664)))

(assert (=> b!1771752 (= res!797985 (not ((_ is IntegerValue!10727) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (seqFromList!2454 lt!685100)))))))

(declare-fun e!1133663 () Bool)

(assert (=> b!1771752 (= e!1133663 e!1133664)))

(declare-fun d!541587 () Bool)

(declare-fun c!288594 () Bool)

(assert (=> d!541587 (= c!288594 ((_ is IntegerValue!10725) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (seqFromList!2454 lt!685100))))))

(assert (=> d!541587 (= (inv!21 (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (seqFromList!2454 lt!685100))) e!1133665)))

(declare-fun b!1771753 () Bool)

(assert (=> b!1771753 (= e!1133664 (inv!15 (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (seqFromList!2454 lt!685100))))))

(declare-fun b!1771754 () Bool)

(assert (=> b!1771754 (= e!1133665 e!1133663)))

(declare-fun c!288593 () Bool)

(assert (=> b!1771754 (= c!288593 ((_ is IntegerValue!10726) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (seqFromList!2454 lt!685100))))))

(declare-fun b!1771755 () Bool)

(assert (=> b!1771755 (= e!1133663 (inv!17 (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (seqFromList!2454 lt!685100))))))

(assert (= (and d!541587 c!288594) b!1771751))

(assert (= (and d!541587 (not c!288594)) b!1771754))

(assert (= (and b!1771754 c!288593) b!1771755))

(assert (= (and b!1771754 (not c!288593)) b!1771752))

(assert (= (and b!1771752 (not res!797985)) b!1771753))

(declare-fun m!2191135 () Bool)

(assert (=> b!1771751 m!2191135))

(declare-fun m!2191137 () Bool)

(assert (=> b!1771753 m!2191137))

(declare-fun m!2191139 () Bool)

(assert (=> b!1771755 m!2191139))

(assert (=> tb!107043 d!541587))

(assert (=> b!1769842 d!541083))

(assert (=> b!1769842 d!541197))

(declare-fun d!541589 () Bool)

(declare-fun lt!685896 () Int)

(assert (=> d!541589 (>= lt!685896 0)))

(declare-fun e!1133666 () Int)

(assert (=> d!541589 (= lt!685896 e!1133666)))

(declare-fun c!288595 () Bool)

(assert (=> d!541589 (= c!288595 ((_ is Nil!19490) (_2!10949 (get!5952 lt!685429))))))

(assert (=> d!541589 (= (size!15479 (_2!10949 (get!5952 lt!685429))) lt!685896)))

(declare-fun b!1771756 () Bool)

(assert (=> b!1771756 (= e!1133666 0)))

(declare-fun b!1771757 () Bool)

(assert (=> b!1771757 (= e!1133666 (+ 1 (size!15479 (t!165169 (_2!10949 (get!5952 lt!685429))))))))

(assert (= (and d!541589 c!288595) b!1771756))

(assert (= (and d!541589 (not c!288595)) b!1771757))

(declare-fun m!2191149 () Bool)

(assert (=> b!1771757 m!2191149))

(assert (=> b!1770162 d!541589))

(assert (=> b!1770162 d!541043))

(assert (=> b!1770162 d!540983))

(declare-fun d!541593 () Bool)

(declare-fun c!288596 () Bool)

(assert (=> d!541593 (= c!288596 ((_ is Nil!19490) lt!685228))))

(declare-fun e!1133670 () (InoxSet C!9800))

(assert (=> d!541593 (= (content!2826 lt!685228) e!1133670)))

(declare-fun b!1771762 () Bool)

(assert (=> b!1771762 (= e!1133670 ((as const (Array C!9800 Bool)) false))))

(declare-fun b!1771763 () Bool)

(assert (=> b!1771763 (= e!1133670 ((_ map or) (store ((as const (Array C!9800 Bool)) false) (h!24891 lt!685228) true) (content!2826 (t!165169 lt!685228))))))

(assert (= (and d!541593 c!288596) b!1771762))

(assert (= (and d!541593 (not c!288596)) b!1771763))

(declare-fun m!2191151 () Bool)

(assert (=> b!1771763 m!2191151))

(declare-fun m!2191153 () Bool)

(assert (=> b!1771763 m!2191153))

(assert (=> d!540517 d!541593))

(assert (=> d!540517 d!541341))

(declare-fun d!541595 () Bool)

(declare-fun c!288597 () Bool)

(assert (=> d!541595 (= c!288597 ((_ is Nil!19490) suffix!1421))))

(declare-fun e!1133671 () (InoxSet C!9800))

(assert (=> d!541595 (= (content!2826 suffix!1421) e!1133671)))

(declare-fun b!1771764 () Bool)

(assert (=> b!1771764 (= e!1133671 ((as const (Array C!9800 Bool)) false))))

(declare-fun b!1771765 () Bool)

(assert (=> b!1771765 (= e!1133671 ((_ map or) (store ((as const (Array C!9800 Bool)) false) (h!24891 suffix!1421) true) (content!2826 (t!165169 suffix!1421))))))

(assert (= (and d!541595 c!288597) b!1771764))

(assert (= (and d!541595 (not c!288597)) b!1771765))

(declare-fun m!2191157 () Bool)

(assert (=> b!1771765 m!2191157))

(declare-fun m!2191159 () Bool)

(assert (=> b!1771765 m!2191159))

(assert (=> d!540517 d!541595))

(assert (=> b!1769975 d!541547))

(declare-fun b!1771768 () Bool)

(declare-fun res!797996 () Bool)

(declare-fun e!1133677 () Bool)

(assert (=> b!1771768 (=> (not res!797996) (not e!1133677))))

(assert (=> b!1771768 (= res!797996 (isEmpty!12304 (tail!2649 (_1!10953 (findLongestMatchInner!453 (regex!3485 (rule!5527 (_1!10949 lt!685099))) Nil!19490 (size!15479 Nil!19490) lt!685092 lt!685092 (size!15479 lt!685092))))))))

(declare-fun b!1771769 () Bool)

(assert (=> b!1771769 (= e!1133677 (= (head!4114 (_1!10953 (findLongestMatchInner!453 (regex!3485 (rule!5527 (_1!10949 lt!685099))) Nil!19490 (size!15479 Nil!19490) lt!685092 lt!685092 (size!15479 lt!685092)))) (c!288084 (regex!3485 (rule!5527 (_1!10949 lt!685099))))))))

(declare-fun bm!111091 () Bool)

(declare-fun call!111096 () Bool)

(assert (=> bm!111091 (= call!111096 (isEmpty!12304 (_1!10953 (findLongestMatchInner!453 (regex!3485 (rule!5527 (_1!10949 lt!685099))) Nil!19490 (size!15479 Nil!19490) lt!685092 lt!685092 (size!15479 lt!685092)))))))

(declare-fun b!1771770 () Bool)

(declare-fun e!1133674 () Bool)

(declare-fun e!1133679 () Bool)

(assert (=> b!1771770 (= e!1133674 e!1133679)))

(declare-fun res!797992 () Bool)

(assert (=> b!1771770 (=> res!797992 e!1133679)))

(assert (=> b!1771770 (= res!797992 call!111096)))

(declare-fun b!1771771 () Bool)

(declare-fun e!1133676 () Bool)

(assert (=> b!1771771 (= e!1133676 e!1133674)))

(declare-fun res!797995 () Bool)

(assert (=> b!1771771 (=> (not res!797995) (not e!1133674))))

(declare-fun lt!685898 () Bool)

(assert (=> b!1771771 (= res!797995 (not lt!685898))))

(declare-fun b!1771772 () Bool)

(declare-fun e!1133678 () Bool)

(assert (=> b!1771772 (= e!1133678 (not lt!685898))))

(declare-fun b!1771773 () Bool)

(declare-fun res!797993 () Bool)

(assert (=> b!1771773 (=> res!797993 e!1133679)))

(assert (=> b!1771773 (= res!797993 (not (isEmpty!12304 (tail!2649 (_1!10953 (findLongestMatchInner!453 (regex!3485 (rule!5527 (_1!10949 lt!685099))) Nil!19490 (size!15479 Nil!19490) lt!685092 lt!685092 (size!15479 lt!685092)))))))))

(declare-fun b!1771774 () Bool)

(declare-fun res!797990 () Bool)

(assert (=> b!1771774 (=> res!797990 e!1133676)))

(assert (=> b!1771774 (= res!797990 e!1133677)))

(declare-fun res!797994 () Bool)

(assert (=> b!1771774 (=> (not res!797994) (not e!1133677))))

(assert (=> b!1771774 (= res!797994 lt!685898)))

(declare-fun b!1771775 () Bool)

(declare-fun res!797997 () Bool)

(assert (=> b!1771775 (=> res!797997 e!1133676)))

(assert (=> b!1771775 (= res!797997 (not ((_ is ElementMatch!4813) (regex!3485 (rule!5527 (_1!10949 lt!685099))))))))

(assert (=> b!1771775 (= e!1133678 e!1133676)))

(declare-fun b!1771776 () Bool)

(assert (=> b!1771776 (= e!1133679 (not (= (head!4114 (_1!10953 (findLongestMatchInner!453 (regex!3485 (rule!5527 (_1!10949 lt!685099))) Nil!19490 (size!15479 Nil!19490) lt!685092 lt!685092 (size!15479 lt!685092)))) (c!288084 (regex!3485 (rule!5527 (_1!10949 lt!685099)))))))))

(declare-fun b!1771777 () Bool)

(declare-fun e!1133675 () Bool)

(assert (=> b!1771777 (= e!1133675 (= lt!685898 call!111096))))

(declare-fun b!1771778 () Bool)

(assert (=> b!1771778 (= e!1133675 e!1133678)))

(declare-fun c!288599 () Bool)

(assert (=> b!1771778 (= c!288599 ((_ is EmptyLang!4813) (regex!3485 (rule!5527 (_1!10949 lt!685099)))))))

(declare-fun b!1771779 () Bool)

(declare-fun res!797991 () Bool)

(assert (=> b!1771779 (=> (not res!797991) (not e!1133677))))

(assert (=> b!1771779 (= res!797991 (not call!111096))))

(declare-fun d!541597 () Bool)

(assert (=> d!541597 e!1133675))

(declare-fun c!288601 () Bool)

(assert (=> d!541597 (= c!288601 ((_ is EmptyExpr!4813) (regex!3485 (rule!5527 (_1!10949 lt!685099)))))))

(declare-fun e!1133673 () Bool)

(assert (=> d!541597 (= lt!685898 e!1133673)))

(declare-fun c!288600 () Bool)

(assert (=> d!541597 (= c!288600 (isEmpty!12304 (_1!10953 (findLongestMatchInner!453 (regex!3485 (rule!5527 (_1!10949 lt!685099))) Nil!19490 (size!15479 Nil!19490) lt!685092 lt!685092 (size!15479 lt!685092)))))))

(assert (=> d!541597 (validRegex!1949 (regex!3485 (rule!5527 (_1!10949 lt!685099))))))

(assert (=> d!541597 (= (matchR!2286 (regex!3485 (rule!5527 (_1!10949 lt!685099))) (_1!10953 (findLongestMatchInner!453 (regex!3485 (rule!5527 (_1!10949 lt!685099))) Nil!19490 (size!15479 Nil!19490) lt!685092 lt!685092 (size!15479 lt!685092)))) lt!685898)))

(declare-fun b!1771780 () Bool)

(assert (=> b!1771780 (= e!1133673 (matchR!2286 (derivativeStep!1244 (regex!3485 (rule!5527 (_1!10949 lt!685099))) (head!4114 (_1!10953 (findLongestMatchInner!453 (regex!3485 (rule!5527 (_1!10949 lt!685099))) Nil!19490 (size!15479 Nil!19490) lt!685092 lt!685092 (size!15479 lt!685092))))) (tail!2649 (_1!10953 (findLongestMatchInner!453 (regex!3485 (rule!5527 (_1!10949 lt!685099))) Nil!19490 (size!15479 Nil!19490) lt!685092 lt!685092 (size!15479 lt!685092))))))))

(declare-fun b!1771781 () Bool)

(assert (=> b!1771781 (= e!1133673 (nullable!1475 (regex!3485 (rule!5527 (_1!10949 lt!685099)))))))

(assert (= (and d!541597 c!288600) b!1771781))

(assert (= (and d!541597 (not c!288600)) b!1771780))

(assert (= (and d!541597 c!288601) b!1771777))

(assert (= (and d!541597 (not c!288601)) b!1771778))

(assert (= (and b!1771778 c!288599) b!1771772))

(assert (= (and b!1771778 (not c!288599)) b!1771775))

(assert (= (and b!1771775 (not res!797997)) b!1771774))

(assert (= (and b!1771774 res!797994) b!1771779))

(assert (= (and b!1771779 res!797991) b!1771768))

(assert (= (and b!1771768 res!797996) b!1771769))

(assert (= (and b!1771774 (not res!797990)) b!1771771))

(assert (= (and b!1771771 res!797995) b!1771770))

(assert (= (and b!1771770 (not res!797992)) b!1771773))

(assert (= (and b!1771773 (not res!797993)) b!1771776))

(assert (= (or b!1771777 b!1771770 b!1771779) bm!111091))

(declare-fun m!2191173 () Bool)

(assert (=> b!1771780 m!2191173))

(assert (=> b!1771780 m!2191173))

(declare-fun m!2191175 () Bool)

(assert (=> b!1771780 m!2191175))

(declare-fun m!2191177 () Bool)

(assert (=> b!1771780 m!2191177))

(assert (=> b!1771780 m!2191175))

(assert (=> b!1771780 m!2191177))

(declare-fun m!2191179 () Bool)

(assert (=> b!1771780 m!2191179))

(assert (=> d!541597 m!2188793))

(assert (=> d!541597 m!2188887))

(assert (=> b!1771769 m!2191173))

(assert (=> bm!111091 m!2188793))

(assert (=> b!1771773 m!2191177))

(assert (=> b!1771773 m!2191177))

(declare-fun m!2191181 () Bool)

(assert (=> b!1771773 m!2191181))

(assert (=> b!1771768 m!2191177))

(assert (=> b!1771768 m!2191177))

(assert (=> b!1771768 m!2191181))

(assert (=> b!1771781 m!2188889))

(assert (=> b!1771776 m!2191173))

(assert (=> b!1770161 d!541597))

(declare-fun b!1771953 () Bool)

(declare-fun c!288642 () Bool)

(declare-fun call!111116 () Bool)

(assert (=> b!1771953 (= c!288642 call!111116)))

(declare-fun lt!685989 () Unit!33686)

(declare-fun lt!685979 () Unit!33686)

(assert (=> b!1771953 (= lt!685989 lt!685979)))

(assert (=> b!1771953 (= lt!685092 Nil!19490)))

(declare-fun call!111117 () Unit!33686)

(assert (=> b!1771953 (= lt!685979 call!111117)))

(declare-fun lt!685987 () Unit!33686)

(declare-fun lt!685981 () Unit!33686)

(assert (=> b!1771953 (= lt!685987 lt!685981)))

(declare-fun call!111115 () Bool)

(assert (=> b!1771953 call!111115))

(declare-fun call!111120 () Unit!33686)

(assert (=> b!1771953 (= lt!685981 call!111120)))

(declare-fun e!1133765 () tuple2!19102)

(declare-fun e!1133769 () tuple2!19102)

(assert (=> b!1771953 (= e!1133765 e!1133769)))

(declare-fun b!1771954 () Bool)

(declare-fun e!1133767 () tuple2!19102)

(declare-fun lt!685980 () tuple2!19102)

(assert (=> b!1771954 (= e!1133767 lt!685980)))

(declare-fun b!1771955 () Bool)

(declare-fun e!1133762 () tuple2!19102)

(declare-fun call!111113 () tuple2!19102)

(assert (=> b!1771955 (= e!1133762 call!111113)))

(declare-fun bm!111108 () Bool)

(assert (=> bm!111108 (= call!111116 (nullable!1475 (regex!3485 (rule!5527 (_1!10949 lt!685099)))))))

(declare-fun b!1771956 () Bool)

(declare-fun e!1133766 () Bool)

(declare-fun e!1133768 () Bool)

(assert (=> b!1771956 (= e!1133766 e!1133768)))

(declare-fun res!798014 () Bool)

(assert (=> b!1771956 (=> res!798014 e!1133768)))

(declare-fun lt!685996 () tuple2!19102)

(assert (=> b!1771956 (= res!798014 (isEmpty!12304 (_1!10953 lt!685996)))))

(declare-fun bm!111109 () Bool)

(assert (=> bm!111109 (= call!111115 (isPrefix!1725 lt!685092 lt!685092))))

(declare-fun b!1771957 () Bool)

(declare-fun e!1133764 () tuple2!19102)

(assert (=> b!1771957 (= e!1133764 (tuple2!19103 Nil!19490 lt!685092))))

(declare-fun bm!111110 () Bool)

(declare-fun call!111114 () List!19560)

(declare-fun lt!685990 () List!19560)

(declare-fun call!111119 () Regex!4813)

(assert (=> bm!111110 (= call!111113 (findLongestMatchInner!453 call!111119 lt!685990 (+ (size!15479 Nil!19490) 1) call!111114 lt!685092 (size!15479 lt!685092)))))

(declare-fun d!541607 () Bool)

(assert (=> d!541607 e!1133766))

(declare-fun res!798013 () Bool)

(assert (=> d!541607 (=> (not res!798013) (not e!1133766))))

(assert (=> d!541607 (= res!798013 (= (++!5309 (_1!10953 lt!685996) (_2!10953 lt!685996)) lt!685092))))

(assert (=> d!541607 (= lt!685996 e!1133764)))

(declare-fun c!288640 () Bool)

(assert (=> d!541607 (= c!288640 (lostCause!585 (regex!3485 (rule!5527 (_1!10949 lt!685099)))))))

(declare-fun lt!685971 () Unit!33686)

(declare-fun Unit!33703 () Unit!33686)

(assert (=> d!541607 (= lt!685971 Unit!33703)))

(assert (=> d!541607 (= (getSuffix!892 lt!685092 Nil!19490) lt!685092)))

(declare-fun lt!685977 () Unit!33686)

(declare-fun lt!685983 () Unit!33686)

(assert (=> d!541607 (= lt!685977 lt!685983)))

(declare-fun lt!685972 () List!19560)

(assert (=> d!541607 (= lt!685092 lt!685972)))

(assert (=> d!541607 (= lt!685983 (lemmaSamePrefixThenSameSuffix!836 Nil!19490 lt!685092 Nil!19490 lt!685972 lt!685092))))

(assert (=> d!541607 (= lt!685972 (getSuffix!892 lt!685092 Nil!19490))))

(declare-fun lt!685978 () Unit!33686)

(declare-fun lt!685982 () Unit!33686)

(assert (=> d!541607 (= lt!685978 lt!685982)))

(assert (=> d!541607 (isPrefix!1725 Nil!19490 (++!5309 Nil!19490 lt!685092))))

(assert (=> d!541607 (= lt!685982 (lemmaConcatTwoListThenFirstIsPrefix!1234 Nil!19490 lt!685092))))

(assert (=> d!541607 (validRegex!1949 (regex!3485 (rule!5527 (_1!10949 lt!685099))))))

(assert (=> d!541607 (= (findLongestMatchInner!453 (regex!3485 (rule!5527 (_1!10949 lt!685099))) Nil!19490 (size!15479 Nil!19490) lt!685092 lt!685092 (size!15479 lt!685092)) lt!685996)))

(declare-fun b!1771958 () Bool)

(assert (=> b!1771958 (= e!1133768 (>= (size!15479 (_1!10953 lt!685996)) (size!15479 Nil!19490)))))

(declare-fun bm!111111 () Bool)

(assert (=> bm!111111 (= call!111120 (lemmaIsPrefixRefl!1142 lt!685092 lt!685092))))

(declare-fun bm!111112 () Bool)

(declare-fun call!111118 () C!9800)

(assert (=> bm!111112 (= call!111118 (head!4114 lt!685092))))

(declare-fun b!1771959 () Bool)

(assert (=> b!1771959 (= e!1133769 (tuple2!19103 Nil!19490 lt!685092))))

(declare-fun b!1771960 () Bool)

(assert (=> b!1771960 (= e!1133762 e!1133767)))

(assert (=> b!1771960 (= lt!685980 call!111113)))

(declare-fun c!288638 () Bool)

(assert (=> b!1771960 (= c!288638 (isEmpty!12304 (_1!10953 lt!685980)))))

(declare-fun b!1771961 () Bool)

(assert (=> b!1771961 (= e!1133769 (tuple2!19103 Nil!19490 Nil!19490))))

(declare-fun b!1771962 () Bool)

(assert (=> b!1771962 (= e!1133764 e!1133765)))

(declare-fun c!288639 () Bool)

(assert (=> b!1771962 (= c!288639 (= (size!15479 Nil!19490) (size!15479 lt!685092)))))

(declare-fun b!1771963 () Bool)

(declare-fun e!1133763 () Unit!33686)

(declare-fun Unit!33704 () Unit!33686)

(assert (=> b!1771963 (= e!1133763 Unit!33704)))

(declare-fun lt!685975 () Unit!33686)

(assert (=> b!1771963 (= lt!685975 call!111120)))

(assert (=> b!1771963 call!111115))

(declare-fun lt!685970 () Unit!33686)

(assert (=> b!1771963 (= lt!685970 lt!685975)))

(declare-fun lt!685984 () Unit!33686)

(assert (=> b!1771963 (= lt!685984 call!111117)))

(assert (=> b!1771963 (= lt!685092 Nil!19490)))

(declare-fun lt!685991 () Unit!33686)

(assert (=> b!1771963 (= lt!685991 lt!685984)))

(assert (=> b!1771963 false))

(declare-fun bm!111113 () Bool)

(assert (=> bm!111113 (= call!111114 (tail!2649 lt!685092))))

(declare-fun b!1771964 () Bool)

(declare-fun c!288637 () Bool)

(assert (=> b!1771964 (= c!288637 call!111116)))

(declare-fun lt!685995 () Unit!33686)

(declare-fun lt!685976 () Unit!33686)

(assert (=> b!1771964 (= lt!685995 lt!685976)))

(declare-fun lt!685974 () C!9800)

(declare-fun lt!685988 () List!19560)

(assert (=> b!1771964 (= (++!5309 (++!5309 Nil!19490 (Cons!19490 lt!685974 Nil!19490)) lt!685988) lt!685092)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!461 (List!19560 C!9800 List!19560 List!19560) Unit!33686)

(assert (=> b!1771964 (= lt!685976 (lemmaMoveElementToOtherListKeepsConcatEq!461 Nil!19490 lt!685974 lt!685988 lt!685092))))

(assert (=> b!1771964 (= lt!685988 (tail!2649 lt!685092))))

(assert (=> b!1771964 (= lt!685974 (head!4114 lt!685092))))

(declare-fun lt!685986 () Unit!33686)

(declare-fun lt!685993 () Unit!33686)

(assert (=> b!1771964 (= lt!685986 lt!685993)))

(assert (=> b!1771964 (isPrefix!1725 (++!5309 Nil!19490 (Cons!19490 (head!4114 (getSuffix!892 lt!685092 Nil!19490)) Nil!19490)) lt!685092)))

(assert (=> b!1771964 (= lt!685993 (lemmaAddHeadSuffixToPrefixStillPrefix!261 Nil!19490 lt!685092))))

(declare-fun lt!685985 () Unit!33686)

(declare-fun lt!685994 () Unit!33686)

(assert (=> b!1771964 (= lt!685985 lt!685994)))

(assert (=> b!1771964 (= lt!685994 (lemmaAddHeadSuffixToPrefixStillPrefix!261 Nil!19490 lt!685092))))

(assert (=> b!1771964 (= lt!685990 (++!5309 Nil!19490 (Cons!19490 (head!4114 lt!685092) Nil!19490)))))

(declare-fun lt!685973 () Unit!33686)

(assert (=> b!1771964 (= lt!685973 e!1133763)))

(declare-fun c!288641 () Bool)

(assert (=> b!1771964 (= c!288641 (= (size!15479 Nil!19490) (size!15479 lt!685092)))))

(declare-fun lt!685992 () Unit!33686)

(declare-fun lt!685997 () Unit!33686)

(assert (=> b!1771964 (= lt!685992 lt!685997)))

(assert (=> b!1771964 (<= (size!15479 Nil!19490) (size!15479 lt!685092))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!136 (List!19560 List!19560) Unit!33686)

(assert (=> b!1771964 (= lt!685997 (lemmaIsPrefixThenSmallerEqSize!136 Nil!19490 lt!685092))))

(assert (=> b!1771964 (= e!1133765 e!1133762)))

(declare-fun bm!111114 () Bool)

(assert (=> bm!111114 (= call!111119 (derivativeStep!1244 (regex!3485 (rule!5527 (_1!10949 lt!685099))) call!111118))))

(declare-fun bm!111115 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!245 (List!19560 List!19560 List!19560) Unit!33686)

(assert (=> bm!111115 (= call!111117 (lemmaIsPrefixSameLengthThenSameList!245 lt!685092 Nil!19490 lt!685092))))

(declare-fun b!1771965 () Bool)

(declare-fun Unit!33705 () Unit!33686)

(assert (=> b!1771965 (= e!1133763 Unit!33705)))

(declare-fun b!1771966 () Bool)

(assert (=> b!1771966 (= e!1133767 (tuple2!19103 Nil!19490 lt!685092))))

(assert (= (and d!541607 c!288640) b!1771957))

(assert (= (and d!541607 (not c!288640)) b!1771962))

(assert (= (and b!1771962 c!288639) b!1771953))

(assert (= (and b!1771962 (not c!288639)) b!1771964))

(assert (= (and b!1771953 c!288642) b!1771961))

(assert (= (and b!1771953 (not c!288642)) b!1771959))

(assert (= (and b!1771964 c!288641) b!1771963))

(assert (= (and b!1771964 (not c!288641)) b!1771965))

(assert (= (and b!1771964 c!288637) b!1771960))

(assert (= (and b!1771964 (not c!288637)) b!1771955))

(assert (= (and b!1771960 c!288638) b!1771966))

(assert (= (and b!1771960 (not c!288638)) b!1771954))

(assert (= (or b!1771960 b!1771955) bm!111113))

(assert (= (or b!1771960 b!1771955) bm!111112))

(assert (= (or b!1771960 b!1771955) bm!111114))

(assert (= (or b!1771960 b!1771955) bm!111110))

(assert (= (or b!1771953 b!1771964) bm!111108))

(assert (= (or b!1771953 b!1771963) bm!111115))

(assert (= (or b!1771953 b!1771963) bm!111109))

(assert (= (or b!1771953 b!1771963) bm!111111))

(assert (= (and d!541607 res!798013) b!1771956))

(assert (= (and b!1771956 (not res!798014)) b!1771958))

(assert (=> bm!111110 m!2188017))

(declare-fun m!2191275 () Bool)

(assert (=> bm!111110 m!2191275))

(assert (=> bm!111108 m!2188889))

(declare-fun m!2191277 () Bool)

(assert (=> b!1771960 m!2191277))

(assert (=> bm!111109 m!2188319))

(declare-fun m!2191279 () Bool)

(assert (=> b!1771964 m!2191279))

(declare-fun m!2191281 () Bool)

(assert (=> b!1771964 m!2191281))

(declare-fun m!2191283 () Bool)

(assert (=> b!1771964 m!2191283))

(declare-fun m!2191285 () Bool)

(assert (=> b!1771964 m!2191285))

(declare-fun m!2191287 () Bool)

(assert (=> b!1771964 m!2191287))

(assert (=> b!1771964 m!2188013))

(assert (=> b!1771964 m!2188771))

(declare-fun m!2191289 () Bool)

(assert (=> b!1771964 m!2191289))

(assert (=> b!1771964 m!2188017))

(assert (=> b!1771964 m!2191289))

(declare-fun m!2191291 () Bool)

(assert (=> b!1771964 m!2191291))

(declare-fun m!2191293 () Bool)

(assert (=> b!1771964 m!2191293))

(declare-fun m!2191295 () Bool)

(assert (=> b!1771964 m!2191295))

(declare-fun m!2191297 () Bool)

(assert (=> b!1771964 m!2191297))

(assert (=> b!1771964 m!2191295))

(assert (=> b!1771964 m!2188021))

(assert (=> b!1771964 m!2191283))

(declare-fun m!2191299 () Bool)

(assert (=> b!1771956 m!2191299))

(declare-fun m!2191301 () Bool)

(assert (=> b!1771958 m!2191301))

(assert (=> b!1771958 m!2188771))

(assert (=> bm!111111 m!2188321))

(declare-fun m!2191303 () Bool)

(assert (=> bm!111115 m!2191303))

(declare-fun m!2191305 () Bool)

(assert (=> bm!111114 m!2191305))

(declare-fun m!2191307 () Bool)

(assert (=> d!541607 m!2191307))

(declare-fun m!2191309 () Bool)

(assert (=> d!541607 m!2191309))

(assert (=> d!541607 m!2191283))

(declare-fun m!2191311 () Bool)

(assert (=> d!541607 m!2191311))

(declare-fun m!2191313 () Bool)

(assert (=> d!541607 m!2191313))

(assert (=> d!541607 m!2191311))

(declare-fun m!2191315 () Bool)

(assert (=> d!541607 m!2191315))

(assert (=> d!541607 m!2188887))

(declare-fun m!2191317 () Bool)

(assert (=> d!541607 m!2191317))

(assert (=> bm!111112 m!2188021))

(assert (=> bm!111113 m!2188013))

(assert (=> b!1770161 d!541607))

(declare-fun d!541631 () Bool)

(declare-fun lt!685998 () Int)

(assert (=> d!541631 (>= lt!685998 0)))

(declare-fun e!1133770 () Int)

(assert (=> d!541631 (= lt!685998 e!1133770)))

(declare-fun c!288643 () Bool)

(assert (=> d!541631 (= c!288643 ((_ is Nil!19490) Nil!19490))))

(assert (=> d!541631 (= (size!15479 Nil!19490) lt!685998)))

(declare-fun b!1771967 () Bool)

(assert (=> b!1771967 (= e!1133770 0)))

(declare-fun b!1771968 () Bool)

(assert (=> b!1771968 (= e!1133770 (+ 1 (size!15479 (t!165169 Nil!19490))))))

(assert (= (and d!541631 c!288643) b!1771967))

(assert (= (and d!541631 (not c!288643)) b!1771968))

(declare-fun m!2191319 () Bool)

(assert (=> b!1771968 m!2191319))

(assert (=> b!1770161 d!541631))

(assert (=> b!1770161 d!540983))

(declare-fun d!541633 () Bool)

(declare-fun lt!685999 () Int)

(assert (=> d!541633 (>= lt!685999 0)))

(declare-fun e!1133771 () Int)

(assert (=> d!541633 (= lt!685999 e!1133771)))

(declare-fun c!288644 () Bool)

(assert (=> d!541633 (= c!288644 ((_ is Nil!19490) lt!685139))))

(assert (=> d!541633 (= (size!15479 lt!685139) lt!685999)))

(declare-fun b!1771969 () Bool)

(assert (=> b!1771969 (= e!1133771 0)))

(declare-fun b!1771970 () Bool)

(assert (=> b!1771970 (= e!1133771 (+ 1 (size!15479 (t!165169 lt!685139))))))

(assert (= (and d!541633 c!288644) b!1771969))

(assert (= (and d!541633 (not c!288644)) b!1771970))

(declare-fun m!2191321 () Bool)

(assert (=> b!1771970 m!2191321))

(assert (=> b!1769552 d!541633))

(assert (=> b!1769552 d!540989))

(declare-fun d!541635 () Bool)

(declare-fun lt!686000 () Int)

(assert (=> d!541635 (>= lt!686000 0)))

(declare-fun e!1133772 () Int)

(assert (=> d!541635 (= lt!686000 e!1133772)))

(declare-fun c!288645 () Bool)

(assert (=> d!541635 (= c!288645 ((_ is Nil!19490) (Cons!19490 (head!4114 lt!685095) Nil!19490)))))

(assert (=> d!541635 (= (size!15479 (Cons!19490 (head!4114 lt!685095) Nil!19490)) lt!686000)))

(declare-fun b!1771971 () Bool)

(assert (=> b!1771971 (= e!1133772 0)))

(declare-fun b!1771972 () Bool)

(assert (=> b!1771972 (= e!1133772 (+ 1 (size!15479 (t!165169 (Cons!19490 (head!4114 lt!685095) Nil!19490)))))))

(assert (= (and d!541635 c!288645) b!1771971))

(assert (= (and d!541635 (not c!288645)) b!1771972))

(declare-fun m!2191323 () Bool)

(assert (=> b!1771972 m!2191323))

(assert (=> b!1769552 d!541635))

(declare-fun b!1771973 () Bool)

(declare-fun e!1133775 () Bool)

(assert (=> b!1771973 (= e!1133775 (inv!16 (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (seqFromList!2454 (originalCharacters!4299 (_1!10949 lt!685099))))))))

(declare-fun b!1771974 () Bool)

(declare-fun res!798015 () Bool)

(declare-fun e!1133774 () Bool)

(assert (=> b!1771974 (=> res!798015 e!1133774)))

(assert (=> b!1771974 (= res!798015 (not ((_ is IntegerValue!10727) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (seqFromList!2454 (originalCharacters!4299 (_1!10949 lt!685099)))))))))

(declare-fun e!1133773 () Bool)

(assert (=> b!1771974 (= e!1133773 e!1133774)))

(declare-fun d!541637 () Bool)

(declare-fun c!288647 () Bool)

(assert (=> d!541637 (= c!288647 ((_ is IntegerValue!10725) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (seqFromList!2454 (originalCharacters!4299 (_1!10949 lt!685099))))))))

(assert (=> d!541637 (= (inv!21 (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (seqFromList!2454 (originalCharacters!4299 (_1!10949 lt!685099))))) e!1133775)))

(declare-fun b!1771975 () Bool)

(assert (=> b!1771975 (= e!1133774 (inv!15 (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (seqFromList!2454 (originalCharacters!4299 (_1!10949 lt!685099))))))))

(declare-fun b!1771976 () Bool)

(assert (=> b!1771976 (= e!1133775 e!1133773)))

(declare-fun c!288646 () Bool)

(assert (=> b!1771976 (= c!288646 ((_ is IntegerValue!10726) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (seqFromList!2454 (originalCharacters!4299 (_1!10949 lt!685099))))))))

(declare-fun b!1771977 () Bool)

(assert (=> b!1771977 (= e!1133773 (inv!17 (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (seqFromList!2454 (originalCharacters!4299 (_1!10949 lt!685099))))))))

(assert (= (and d!541637 c!288647) b!1771973))

(assert (= (and d!541637 (not c!288647)) b!1771976))

(assert (= (and b!1771976 c!288646) b!1771977))

(assert (= (and b!1771976 (not c!288646)) b!1771974))

(assert (= (and b!1771974 (not res!798015)) b!1771975))

(declare-fun m!2191325 () Bool)

(assert (=> b!1771973 m!2191325))

(declare-fun m!2191327 () Bool)

(assert (=> b!1771975 m!2191327))

(declare-fun m!2191329 () Bool)

(assert (=> b!1771977 m!2191329))

(assert (=> tb!107067 d!541637))

(assert (=> b!1769860 d!540983))

(assert (=> b!1769860 d!540989))

(declare-fun d!541639 () Bool)

(assert (=> d!541639 (= (isEmpty!12304 (_1!10953 (findLongestMatchInner!453 (regex!3485 (rule!5527 (_1!10949 lt!685099))) Nil!19490 (size!15479 Nil!19490) lt!685092 lt!685092 (size!15479 lt!685092)))) ((_ is Nil!19490) (_1!10953 (findLongestMatchInner!453 (regex!3485 (rule!5527 (_1!10949 lt!685099))) Nil!19490 (size!15479 Nil!19490) lt!685092 lt!685092 (size!15479 lt!685092)))))))

(assert (=> b!1770157 d!541639))

(declare-fun d!541641 () Bool)

(declare-fun e!1133778 () Bool)

(assert (=> d!541641 e!1133778))

(declare-fun res!798018 () Bool)

(assert (=> d!541641 (=> res!798018 e!1133778)))

(assert (=> d!541641 (= res!798018 (isEmpty!12304 (_1!10953 (findLongestMatchInner!453 (regex!3485 (rule!5527 (_1!10949 lt!685099))) Nil!19490 (size!15479 Nil!19490) lt!685092 lt!685092 (size!15479 lt!685092)))))))

(declare-fun lt!686003 () Unit!33686)

(declare-fun choose!11033 (Regex!4813 List!19560) Unit!33686)

(assert (=> d!541641 (= lt!686003 (choose!11033 (regex!3485 (rule!5527 (_1!10949 lt!685099))) lt!685092))))

(assert (=> d!541641 (validRegex!1949 (regex!3485 (rule!5527 (_1!10949 lt!685099))))))

(assert (=> d!541641 (= (longestMatchIsAcceptedByMatchOrIsEmpty!437 (regex!3485 (rule!5527 (_1!10949 lt!685099))) lt!685092) lt!686003)))

(declare-fun b!1771980 () Bool)

(assert (=> b!1771980 (= e!1133778 (matchR!2286 (regex!3485 (rule!5527 (_1!10949 lt!685099))) (_1!10953 (findLongestMatchInner!453 (regex!3485 (rule!5527 (_1!10949 lt!685099))) Nil!19490 (size!15479 Nil!19490) lt!685092 lt!685092 (size!15479 lt!685092)))))))

(assert (= (and d!541641 (not res!798018)) b!1771980))

(assert (=> d!541641 m!2188771))

(declare-fun m!2191331 () Bool)

(assert (=> d!541641 m!2191331))

(assert (=> d!541641 m!2188887))

(assert (=> d!541641 m!2188017))

(assert (=> d!541641 m!2188771))

(assert (=> d!541641 m!2188017))

(assert (=> d!541641 m!2188773))

(assert (=> d!541641 m!2188793))

(assert (=> b!1771980 m!2188771))

(assert (=> b!1771980 m!2188017))

(assert (=> b!1771980 m!2188771))

(assert (=> b!1771980 m!2188017))

(assert (=> b!1771980 m!2188773))

(assert (=> b!1771980 m!2188775))

(assert (=> b!1770157 d!541641))

(assert (=> b!1770157 d!541607))

(declare-fun d!541643 () Bool)

(assert (=> d!541643 (= (seqFromList!2454 (_1!10953 lt!685430)) (fromListB!1124 (_1!10953 lt!685430)))))

(declare-fun bs!404752 () Bool)

(assert (= bs!404752 d!541643))

(declare-fun m!2191333 () Bool)

(assert (=> bs!404752 m!2191333))

(assert (=> b!1770157 d!541643))

(declare-fun d!541645 () Bool)

(declare-fun lt!686004 () Int)

(assert (=> d!541645 (= lt!686004 (size!15479 (list!7915 (seqFromList!2454 (_1!10953 lt!685430)))))))

(assert (=> d!541645 (= lt!686004 (size!15481 (c!288085 (seqFromList!2454 (_1!10953 lt!685430)))))))

(assert (=> d!541645 (= (size!15480 (seqFromList!2454 (_1!10953 lt!685430))) lt!686004)))

(declare-fun bs!404753 () Bool)

(assert (= bs!404753 d!541645))

(assert (=> bs!404753 m!2188783))

(declare-fun m!2191335 () Bool)

(assert (=> bs!404753 m!2191335))

(assert (=> bs!404753 m!2191335))

(declare-fun m!2191337 () Bool)

(assert (=> bs!404753 m!2191337))

(declare-fun m!2191339 () Bool)

(assert (=> bs!404753 m!2191339))

(assert (=> b!1770157 d!541645))

(declare-fun bs!404754 () Bool)

(declare-fun d!541647 () Bool)

(assert (= bs!404754 (and d!541647 d!540915)))

(declare-fun lambda!70454 () Int)

(assert (=> bs!404754 (= (and (= (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (toChars!4867 (transformation!3485 (h!24892 rules!3447)))) (= (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (toValue!5008 (transformation!3485 (h!24892 rules!3447))))) (= lambda!70454 lambda!70410))))

(declare-fun bs!404755 () Bool)

(assert (= bs!404755 (and d!541647 b!1769462)))

(assert (=> bs!404755 (= lambda!70454 lambda!70380)))

(declare-fun bs!404756 () Bool)

(assert (= bs!404756 (and d!541647 d!540981)))

(assert (=> bs!404756 (= lambda!70454 lambda!70411)))

(declare-fun bs!404757 () Bool)

(assert (= bs!404757 (and d!541647 d!540639)))

(assert (=> bs!404757 (= lambda!70454 lambda!70395)))

(declare-fun bs!404758 () Bool)

(assert (= bs!404758 (and d!541647 d!541157)))

(assert (=> bs!404758 (= (and (= (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (toChars!4867 (transformation!3485 (rule!5527 token!523)))) (= (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (toValue!5008 (transformation!3485 (rule!5527 token!523))))) (= lambda!70454 lambda!70431))))

(declare-fun bs!404759 () Bool)

(assert (= bs!404759 (and d!541647 d!541105)))

(assert (=> bs!404759 (= (and (= (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (toChars!4867 (transformation!3485 rule!422))) (= (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (toValue!5008 (transformation!3485 rule!422)))) (= lambda!70454 lambda!70429))))

(declare-fun b!1771981 () Bool)

(declare-fun e!1133779 () Bool)

(assert (=> b!1771981 (= e!1133779 true)))

(assert (=> d!541647 e!1133779))

(assert (= d!541647 b!1771981))

(assert (=> b!1771981 (< (dynLambda!9458 order!12443 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) (dynLambda!9459 order!12445 lambda!70454))))

(assert (=> b!1771981 (< (dynLambda!9460 order!12447 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) (dynLambda!9459 order!12445 lambda!70454))))

(assert (=> d!541647 (= (list!7915 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (seqFromList!2454 (_1!10953 lt!685430))))) (list!7915 (seqFromList!2454 (_1!10953 lt!685430))))))

(declare-fun lt!686005 () Unit!33686)

(assert (=> d!541647 (= lt!686005 (ForallOf!328 lambda!70454 (seqFromList!2454 (_1!10953 lt!685430))))))

(assert (=> d!541647 (= (lemmaSemiInverse!623 (transformation!3485 (rule!5527 (_1!10949 lt!685099))) (seqFromList!2454 (_1!10953 lt!685430))) lt!686005)))

(declare-fun b_lambda!57711 () Bool)

(assert (=> (not b_lambda!57711) (not d!541647)))

(declare-fun tb!107243 () Bool)

(declare-fun t!165402 () Bool)

(assert (=> (and b!1769445 (= (toChars!4867 (transformation!3485 (rule!5527 token!523))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) t!165402) tb!107243))

(declare-fun tp!502231 () Bool)

(declare-fun e!1133780 () Bool)

(declare-fun b!1771982 () Bool)

(assert (=> b!1771982 (= e!1133780 (and (inv!25332 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (seqFromList!2454 (_1!10953 lt!685430)))))) tp!502231))))

(declare-fun result!129002 () Bool)

(assert (=> tb!107243 (= result!129002 (and (inv!25333 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (seqFromList!2454 (_1!10953 lt!685430))))) e!1133780))))

(assert (= tb!107243 b!1771982))

(declare-fun m!2191341 () Bool)

(assert (=> b!1771982 m!2191341))

(declare-fun m!2191343 () Bool)

(assert (=> tb!107243 m!2191343))

(assert (=> d!541647 t!165402))

(declare-fun b_and!134769 () Bool)

(assert (= b_and!134693 (and (=> t!165402 result!129002) b_and!134769)))

(declare-fun tb!107245 () Bool)

(declare-fun t!165404 () Bool)

(assert (=> (and b!1769469 (= (toChars!4867 (transformation!3485 (h!24892 rules!3447))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) t!165404) tb!107245))

(declare-fun result!129004 () Bool)

(assert (= result!129004 result!129002))

(assert (=> d!541647 t!165404))

(declare-fun b_and!134771 () Bool)

(assert (= b_and!134695 (and (=> t!165404 result!129004) b_and!134771)))

(declare-fun t!165406 () Bool)

(declare-fun tb!107247 () Bool)

(assert (=> (and b!1769458 (= (toChars!4867 (transformation!3485 rule!422)) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) t!165406) tb!107247))

(declare-fun result!129006 () Bool)

(assert (= result!129006 result!129002))

(assert (=> d!541647 t!165406))

(declare-fun b_and!134773 () Bool)

(assert (= b_and!134697 (and (=> t!165406 result!129006) b_and!134773)))

(declare-fun tb!107249 () Bool)

(declare-fun t!165408 () Bool)

(assert (=> (and b!1770265 (= (toChars!4867 (transformation!3485 (h!24892 (t!165170 rules!3447)))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) t!165408) tb!107249))

(declare-fun result!129008 () Bool)

(assert (= result!129008 result!129002))

(assert (=> d!541647 t!165408))

(declare-fun b_and!134775 () Bool)

(assert (= b_and!134699 (and (=> t!165408 result!129008) b_and!134775)))

(declare-fun b_lambda!57713 () Bool)

(assert (=> (not b_lambda!57713) (not d!541647)))

(declare-fun t!165410 () Bool)

(declare-fun tb!107251 () Bool)

(assert (=> (and b!1769445 (= (toValue!5008 (transformation!3485 (rule!5527 token!523))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) t!165410) tb!107251))

(declare-fun result!129010 () Bool)

(assert (=> tb!107251 (= result!129010 (inv!21 (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (seqFromList!2454 (_1!10953 lt!685430)))))))

(declare-fun m!2191345 () Bool)

(assert (=> tb!107251 m!2191345))

(assert (=> d!541647 t!165410))

(declare-fun b_and!134777 () Bool)

(assert (= b_and!134685 (and (=> t!165410 result!129010) b_and!134777)))

(declare-fun tb!107253 () Bool)

(declare-fun t!165412 () Bool)

(assert (=> (and b!1769469 (= (toValue!5008 (transformation!3485 (h!24892 rules!3447))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) t!165412) tb!107253))

(declare-fun result!129012 () Bool)

(assert (= result!129012 result!129010))

(assert (=> d!541647 t!165412))

(declare-fun b_and!134779 () Bool)

(assert (= b_and!134687 (and (=> t!165412 result!129012) b_and!134779)))

(declare-fun t!165414 () Bool)

(declare-fun tb!107255 () Bool)

(assert (=> (and b!1769458 (= (toValue!5008 (transformation!3485 rule!422)) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) t!165414) tb!107255))

(declare-fun result!129014 () Bool)

(assert (= result!129014 result!129010))

(assert (=> d!541647 t!165414))

(declare-fun b_and!134781 () Bool)

(assert (= b_and!134689 (and (=> t!165414 result!129014) b_and!134781)))

(declare-fun t!165416 () Bool)

(declare-fun tb!107257 () Bool)

(assert (=> (and b!1770265 (= (toValue!5008 (transformation!3485 (h!24892 (t!165170 rules!3447)))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) t!165416) tb!107257))

(declare-fun result!129016 () Bool)

(assert (= result!129016 result!129010))

(assert (=> d!541647 t!165416))

(declare-fun b_and!134783 () Bool)

(assert (= b_and!134691 (and (=> t!165416 result!129016) b_and!134783)))

(declare-fun m!2191347 () Bool)

(assert (=> d!541647 m!2191347))

(declare-fun m!2191349 () Bool)

(assert (=> d!541647 m!2191349))

(assert (=> d!541647 m!2188783))

(declare-fun m!2191351 () Bool)

(assert (=> d!541647 m!2191351))

(assert (=> d!541647 m!2188783))

(assert (=> d!541647 m!2191335))

(assert (=> d!541647 m!2188783))

(declare-fun m!2191353 () Bool)

(assert (=> d!541647 m!2191353))

(assert (=> d!541647 m!2191353))

(assert (=> d!541647 m!2191347))

(assert (=> b!1770157 d!541647))

(declare-fun d!541649 () Bool)

(assert (=> d!541649 (= (apply!5285 (transformation!3485 (rule!5527 (_1!10949 lt!685099))) (seqFromList!2454 (_1!10953 lt!685430))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (seqFromList!2454 (_1!10953 lt!685430))))))

(declare-fun b_lambda!57715 () Bool)

(assert (=> (not b_lambda!57715) (not d!541649)))

(assert (=> d!541649 t!165410))

(declare-fun b_and!134785 () Bool)

(assert (= b_and!134777 (and (=> t!165410 result!129010) b_and!134785)))

(assert (=> d!541649 t!165412))

(declare-fun b_and!134787 () Bool)

(assert (= b_and!134779 (and (=> t!165412 result!129012) b_and!134787)))

(assert (=> d!541649 t!165414))

(declare-fun b_and!134789 () Bool)

(assert (= b_and!134781 (and (=> t!165414 result!129014) b_and!134789)))

(assert (=> d!541649 t!165416))

(declare-fun b_and!134791 () Bool)

(assert (= b_and!134783 (and (=> t!165416 result!129016) b_and!134791)))

(assert (=> d!541649 m!2188783))

(assert (=> d!541649 m!2191353))

(assert (=> b!1770157 d!541649))

(assert (=> b!1770157 d!541631))

(assert (=> b!1770157 d!540983))

(declare-fun d!541651 () Bool)

(declare-fun res!798019 () Bool)

(declare-fun e!1133782 () Bool)

(assert (=> d!541651 (=> (not res!798019) (not e!1133782))))

(assert (=> d!541651 (= res!798019 (= (csize!13196 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))) (+ (size!15481 (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))))) (size!15481 (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))))))))))

(assert (=> d!541651 (= (inv!25336 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))) e!1133782)))

(declare-fun b!1771983 () Bool)

(declare-fun res!798020 () Bool)

(assert (=> b!1771983 (=> (not res!798020) (not e!1133782))))

(assert (=> b!1771983 (= res!798020 (and (not (= (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))) Empty!6483)) (not (= (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))) Empty!6483))))))

(declare-fun b!1771984 () Bool)

(declare-fun res!798021 () Bool)

(assert (=> b!1771984 (=> (not res!798021) (not e!1133782))))

(assert (=> b!1771984 (= res!798021 (= (cheight!6694 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))) (+ (max!0 (height!1009 (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))))) (height!1009 (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))))) 1)))))

(declare-fun b!1771985 () Bool)

(assert (=> b!1771985 (= e!1133782 (<= 0 (cheight!6694 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))))))))

(assert (= (and d!541651 res!798019) b!1771983))

(assert (= (and b!1771983 res!798020) b!1771984))

(assert (= (and b!1771984 res!798021) b!1771985))

(declare-fun m!2191355 () Bool)

(assert (=> d!541651 m!2191355))

(declare-fun m!2191357 () Bool)

(assert (=> d!541651 m!2191357))

(assert (=> b!1771984 m!2189567))

(assert (=> b!1771984 m!2189569))

(assert (=> b!1771984 m!2189567))

(assert (=> b!1771984 m!2189569))

(declare-fun m!2191359 () Bool)

(assert (=> b!1771984 m!2191359))

(assert (=> b!1770222 d!541651))

(declare-fun d!541653 () Bool)

(assert (=> d!541653 (= (inv!16 (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)) (= (charsToInt!0 (text!25472 (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))) (value!108986 (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))))))

(declare-fun bs!404760 () Bool)

(assert (= bs!404760 d!541653))

(declare-fun m!2191361 () Bool)

(assert (=> bs!404760 m!2191361))

(assert (=> b!1769774 d!541653))

(declare-fun b!1771986 () Bool)

(declare-fun e!1133783 () List!19560)

(assert (=> b!1771986 (= e!1133783 (_2!10949 lt!685099))))

(declare-fun b!1771987 () Bool)

(assert (=> b!1771987 (= e!1133783 (Cons!19490 (h!24891 (t!165169 lt!685100)) (++!5309 (t!165169 (t!165169 lt!685100)) (_2!10949 lt!685099))))))

(declare-fun d!541655 () Bool)

(declare-fun e!1133784 () Bool)

(assert (=> d!541655 e!1133784))

(declare-fun res!798023 () Bool)

(assert (=> d!541655 (=> (not res!798023) (not e!1133784))))

(declare-fun lt!686006 () List!19560)

(assert (=> d!541655 (= res!798023 (= (content!2826 lt!686006) ((_ map or) (content!2826 (t!165169 lt!685100)) (content!2826 (_2!10949 lt!685099)))))))

(assert (=> d!541655 (= lt!686006 e!1133783)))

(declare-fun c!288648 () Bool)

(assert (=> d!541655 (= c!288648 ((_ is Nil!19490) (t!165169 lt!685100)))))

(assert (=> d!541655 (= (++!5309 (t!165169 lt!685100) (_2!10949 lt!685099)) lt!686006)))

(declare-fun b!1771989 () Bool)

(assert (=> b!1771989 (= e!1133784 (or (not (= (_2!10949 lt!685099) Nil!19490)) (= lt!686006 (t!165169 lt!685100))))))

(declare-fun b!1771988 () Bool)

(declare-fun res!798022 () Bool)

(assert (=> b!1771988 (=> (not res!798022) (not e!1133784))))

(assert (=> b!1771988 (= res!798022 (= (size!15479 lt!686006) (+ (size!15479 (t!165169 lt!685100)) (size!15479 (_2!10949 lt!685099)))))))

(assert (= (and d!541655 c!288648) b!1771986))

(assert (= (and d!541655 (not c!288648)) b!1771987))

(assert (= (and d!541655 res!798023) b!1771988))

(assert (= (and b!1771988 res!798022) b!1771989))

(declare-fun m!2191363 () Bool)

(assert (=> b!1771987 m!2191363))

(declare-fun m!2191365 () Bool)

(assert (=> d!541655 m!2191365))

(assert (=> d!541655 m!2190949))

(assert (=> d!541655 m!2188373))

(declare-fun m!2191367 () Bool)

(assert (=> b!1771988 m!2191367))

(assert (=> b!1771988 m!2188691))

(assert (=> b!1771988 m!2188377))

(assert (=> b!1769870 d!541655))

(assert (=> bm!110930 d!541155))

(declare-fun d!541657 () Bool)

(assert (=> d!541657 (= (inv!25339 (xs!9359 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))))) (<= (size!15479 (innerList!6543 (xs!9359 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))))) 2147483647))))

(declare-fun bs!404761 () Bool)

(assert (= bs!404761 d!541657))

(declare-fun m!2191369 () Bool)

(assert (=> bs!404761 m!2191369))

(assert (=> b!1770250 d!541657))

(declare-fun d!541659 () Bool)

(assert (=> d!541659 (= (head!4114 lt!685094) (h!24891 lt!685094))))

(assert (=> b!1769535 d!541659))

(assert (=> b!1769535 d!541197))

(declare-fun d!541661 () Bool)

(declare-fun lt!686007 () Int)

(assert (=> d!541661 (>= lt!686007 0)))

(declare-fun e!1133785 () Int)

(assert (=> d!541661 (= lt!686007 e!1133785)))

(declare-fun c!288649 () Bool)

(assert (=> d!541661 (= c!288649 ((_ is Nil!19490) (originalCharacters!4299 token!523)))))

(assert (=> d!541661 (= (size!15479 (originalCharacters!4299 token!523)) lt!686007)))

(declare-fun b!1771990 () Bool)

(assert (=> b!1771990 (= e!1133785 0)))

(declare-fun b!1771991 () Bool)

(assert (=> b!1771991 (= e!1133785 (+ 1 (size!15479 (t!165169 (originalCharacters!4299 token!523)))))))

(assert (= (and d!541661 c!288649) b!1771990))

(assert (= (and d!541661 (not c!288649)) b!1771991))

(declare-fun m!2191371 () Bool)

(assert (=> b!1771991 m!2191371))

(assert (=> b!1769806 d!541661))

(assert (=> b!1769967 d!541131))

(assert (=> b!1769967 d!541063))

(declare-fun d!541663 () Bool)

(declare-fun c!288650 () Bool)

(assert (=> d!541663 (= c!288650 (isEmpty!12304 (tail!2649 lt!685094)))))

(declare-fun e!1133786 () Bool)

(assert (=> d!541663 (= (prefixMatch!696 (derivativeStep!1244 lt!685113 (head!4114 lt!685094)) (tail!2649 lt!685094)) e!1133786)))

(declare-fun b!1771992 () Bool)

(assert (=> b!1771992 (= e!1133786 (not (lostCause!585 (derivativeStep!1244 lt!685113 (head!4114 lt!685094)))))))

(declare-fun b!1771993 () Bool)

(assert (=> b!1771993 (= e!1133786 (prefixMatch!696 (derivativeStep!1244 (derivativeStep!1244 lt!685113 (head!4114 lt!685094)) (head!4114 (tail!2649 lt!685094))) (tail!2649 (tail!2649 lt!685094))))))

(assert (= (and d!541663 c!288650) b!1771992))

(assert (= (and d!541663 (not c!288650)) b!1771993))

(assert (=> d!541663 m!2188011))

(declare-fun m!2191373 () Bool)

(assert (=> d!541663 m!2191373))

(assert (=> b!1771992 m!2188169))

(declare-fun m!2191375 () Bool)

(assert (=> b!1771992 m!2191375))

(assert (=> b!1771993 m!2188011))

(assert (=> b!1771993 m!2190691))

(assert (=> b!1771993 m!2188169))

(assert (=> b!1771993 m!2190691))

(declare-fun m!2191377 () Bool)

(assert (=> b!1771993 m!2191377))

(assert (=> b!1771993 m!2188011))

(assert (=> b!1771993 m!2190685))

(assert (=> b!1771993 m!2191377))

(assert (=> b!1771993 m!2190685))

(declare-fun m!2191379 () Bool)

(assert (=> b!1771993 m!2191379))

(assert (=> b!1769725 d!541663))

(declare-fun d!541665 () Bool)

(declare-fun lt!686008 () Regex!4813)

(assert (=> d!541665 (validRegex!1949 lt!686008)))

(declare-fun e!1133787 () Regex!4813)

(assert (=> d!541665 (= lt!686008 e!1133787)))

(declare-fun c!288651 () Bool)

(assert (=> d!541665 (= c!288651 (or ((_ is EmptyExpr!4813) lt!685113) ((_ is EmptyLang!4813) lt!685113)))))

(assert (=> d!541665 (validRegex!1949 lt!685113)))

(assert (=> d!541665 (= (derivativeStep!1244 lt!685113 (head!4114 lt!685094)) lt!686008)))

(declare-fun b!1771994 () Bool)

(declare-fun c!288653 () Bool)

(assert (=> b!1771994 (= c!288653 (nullable!1475 (regOne!10138 lt!685113)))))

(declare-fun e!1133791 () Regex!4813)

(declare-fun e!1133790 () Regex!4813)

(assert (=> b!1771994 (= e!1133791 e!1133790)))

(declare-fun bm!111116 () Bool)

(declare-fun c!288654 () Bool)

(declare-fun call!111122 () Regex!4813)

(assert (=> bm!111116 (= call!111122 (derivativeStep!1244 (ite c!288654 (regOne!10139 lt!685113) (regOne!10138 lt!685113)) (head!4114 lt!685094)))))

(declare-fun b!1771995 () Bool)

(assert (=> b!1771995 (= c!288654 ((_ is Union!4813) lt!685113))))

(declare-fun e!1133789 () Regex!4813)

(declare-fun e!1133788 () Regex!4813)

(assert (=> b!1771995 (= e!1133789 e!1133788)))

(declare-fun bm!111117 () Bool)

(declare-fun call!111123 () Regex!4813)

(declare-fun call!111124 () Regex!4813)

(assert (=> bm!111117 (= call!111123 call!111124)))

(declare-fun b!1771996 () Bool)

(declare-fun call!111121 () Regex!4813)

(assert (=> b!1771996 (= e!1133790 (Union!4813 (Concat!8389 call!111121 (regTwo!10138 lt!685113)) EmptyLang!4813))))

(declare-fun b!1771997 () Bool)

(assert (=> b!1771997 (= e!1133788 (Union!4813 call!111122 call!111124))))

(declare-fun b!1771998 () Bool)

(assert (=> b!1771998 (= e!1133789 (ite (= (head!4114 lt!685094) (c!288084 lt!685113)) EmptyExpr!4813 EmptyLang!4813))))

(declare-fun b!1771999 () Bool)

(assert (=> b!1771999 (= e!1133790 (Union!4813 (Concat!8389 call!111122 (regTwo!10138 lt!685113)) call!111121))))

(declare-fun b!1772000 () Bool)

(assert (=> b!1772000 (= e!1133788 e!1133791)))

(declare-fun c!288652 () Bool)

(assert (=> b!1772000 (= c!288652 ((_ is Star!4813) lt!685113))))

(declare-fun b!1772001 () Bool)

(assert (=> b!1772001 (= e!1133787 e!1133789)))

(declare-fun c!288655 () Bool)

(assert (=> b!1772001 (= c!288655 ((_ is ElementMatch!4813) lt!685113))))

(declare-fun bm!111118 () Bool)

(assert (=> bm!111118 (= call!111124 (derivativeStep!1244 (ite c!288654 (regTwo!10139 lt!685113) (ite c!288652 (reg!5142 lt!685113) (ite c!288653 (regTwo!10138 lt!685113) (regOne!10138 lt!685113)))) (head!4114 lt!685094)))))

(declare-fun b!1772002 () Bool)

(assert (=> b!1772002 (= e!1133791 (Concat!8389 call!111123 lt!685113))))

(declare-fun bm!111119 () Bool)

(assert (=> bm!111119 (= call!111121 call!111123)))

(declare-fun b!1772003 () Bool)

(assert (=> b!1772003 (= e!1133787 EmptyLang!4813)))

(assert (= (and d!541665 c!288651) b!1772003))

(assert (= (and d!541665 (not c!288651)) b!1772001))

(assert (= (and b!1772001 c!288655) b!1771998))

(assert (= (and b!1772001 (not c!288655)) b!1771995))

(assert (= (and b!1771995 c!288654) b!1771997))

(assert (= (and b!1771995 (not c!288654)) b!1772000))

(assert (= (and b!1772000 c!288652) b!1772002))

(assert (= (and b!1772000 (not c!288652)) b!1771994))

(assert (= (and b!1771994 c!288653) b!1771999))

(assert (= (and b!1771994 (not c!288653)) b!1771996))

(assert (= (or b!1771999 b!1771996) bm!111119))

(assert (= (or b!1772002 bm!111119) bm!111117))

(assert (= (or b!1771997 bm!111117) bm!111118))

(assert (= (or b!1771997 b!1771999) bm!111116))

(declare-fun m!2191381 () Bool)

(assert (=> d!541665 m!2191381))

(assert (=> d!541665 m!2188107))

(assert (=> b!1771994 m!2190017))

(assert (=> bm!111116 m!2188019))

(declare-fun m!2191383 () Bool)

(assert (=> bm!111116 m!2191383))

(assert (=> bm!111118 m!2188019))

(declare-fun m!2191385 () Bool)

(assert (=> bm!111118 m!2191385))

(assert (=> b!1769725 d!541665))

(assert (=> b!1769725 d!541659))

(assert (=> b!1769725 d!541435))

(declare-fun d!541667 () Bool)

(assert (=> d!541667 (= (_2!10949 lt!685099) lt!685085)))

(assert (=> d!541667 true))

(declare-fun _$63!781 () Unit!33686)

(assert (=> d!541667 (= (choose!11012 lt!685100 (_2!10949 lt!685099) lt!685100 lt!685085 lt!685092) _$63!781)))

(assert (=> d!540611 d!541667))

(assert (=> d!540611 d!540509))

(declare-fun d!541669 () Bool)

(assert (=> d!541669 (= (isDefined!3335 lt!685214) (not (isEmpty!12307 lt!685214)))))

(declare-fun bs!404762 () Bool)

(assert (= bs!404762 d!541669))

(assert (=> bs!404762 m!2188317))

(assert (=> b!1769831 d!541669))

(declare-fun b!1772007 () Bool)

(declare-fun e!1133792 () Bool)

(declare-fun tp!502232 () Bool)

(declare-fun tp!502236 () Bool)

(assert (=> b!1772007 (= e!1133792 (and tp!502232 tp!502236))))

(declare-fun b!1772006 () Bool)

(declare-fun tp!502235 () Bool)

(assert (=> b!1772006 (= e!1133792 tp!502235)))

(assert (=> b!1770283 (= tp!502108 e!1133792)))

(declare-fun b!1772005 () Bool)

(declare-fun tp!502234 () Bool)

(declare-fun tp!502233 () Bool)

(assert (=> b!1772005 (= e!1133792 (and tp!502234 tp!502233))))

(declare-fun b!1772004 () Bool)

(assert (=> b!1772004 (= e!1133792 tp_is_empty!7869)))

(assert (= (and b!1770283 ((_ is ElementMatch!4813) (regOne!10139 (regex!3485 (rule!5527 token!523))))) b!1772004))

(assert (= (and b!1770283 ((_ is Concat!8389) (regOne!10139 (regex!3485 (rule!5527 token!523))))) b!1772005))

(assert (= (and b!1770283 ((_ is Star!4813) (regOne!10139 (regex!3485 (rule!5527 token!523))))) b!1772006))

(assert (= (and b!1770283 ((_ is Union!4813) (regOne!10139 (regex!3485 (rule!5527 token!523))))) b!1772007))

(declare-fun b!1772011 () Bool)

(declare-fun e!1133793 () Bool)

(declare-fun tp!502237 () Bool)

(declare-fun tp!502241 () Bool)

(assert (=> b!1772011 (= e!1133793 (and tp!502237 tp!502241))))

(declare-fun b!1772010 () Bool)

(declare-fun tp!502240 () Bool)

(assert (=> b!1772010 (= e!1133793 tp!502240)))

(assert (=> b!1770283 (= tp!502112 e!1133793)))

(declare-fun b!1772009 () Bool)

(declare-fun tp!502239 () Bool)

(declare-fun tp!502238 () Bool)

(assert (=> b!1772009 (= e!1133793 (and tp!502239 tp!502238))))

(declare-fun b!1772008 () Bool)

(assert (=> b!1772008 (= e!1133793 tp_is_empty!7869)))

(assert (= (and b!1770283 ((_ is ElementMatch!4813) (regTwo!10139 (regex!3485 (rule!5527 token!523))))) b!1772008))

(assert (= (and b!1770283 ((_ is Concat!8389) (regTwo!10139 (regex!3485 (rule!5527 token!523))))) b!1772009))

(assert (= (and b!1770283 ((_ is Star!4813) (regTwo!10139 (regex!3485 (rule!5527 token!523))))) b!1772010))

(assert (= (and b!1770283 ((_ is Union!4813) (regTwo!10139 (regex!3485 (rule!5527 token!523))))) b!1772011))

(declare-fun b!1772015 () Bool)

(declare-fun e!1133794 () Bool)

(declare-fun tp!502242 () Bool)

(declare-fun tp!502246 () Bool)

(assert (=> b!1772015 (= e!1133794 (and tp!502242 tp!502246))))

(declare-fun b!1772014 () Bool)

(declare-fun tp!502245 () Bool)

(assert (=> b!1772014 (= e!1133794 tp!502245)))

(assert (=> b!1770278 (= tp!502106 e!1133794)))

(declare-fun b!1772013 () Bool)

(declare-fun tp!502244 () Bool)

(declare-fun tp!502243 () Bool)

(assert (=> b!1772013 (= e!1133794 (and tp!502244 tp!502243))))

(declare-fun b!1772012 () Bool)

(assert (=> b!1772012 (= e!1133794 tp_is_empty!7869)))

(assert (= (and b!1770278 ((_ is ElementMatch!4813) (reg!5142 (regex!3485 rule!422)))) b!1772012))

(assert (= (and b!1770278 ((_ is Concat!8389) (reg!5142 (regex!3485 rule!422)))) b!1772013))

(assert (= (and b!1770278 ((_ is Star!4813) (reg!5142 (regex!3485 rule!422)))) b!1772014))

(assert (= (and b!1770278 ((_ is Union!4813) (reg!5142 (regex!3485 rule!422)))) b!1772015))

(declare-fun b!1772018 () Bool)

(declare-fun b_free!49023 () Bool)

(declare-fun b_next!49727 () Bool)

(assert (=> b!1772018 (= b_free!49023 (not b_next!49727))))

(declare-fun t!165418 () Bool)

(declare-fun tb!107259 () Bool)

(assert (=> (and b!1772018 (= (toValue!5008 (transformation!3485 (h!24892 (t!165170 (t!165170 rules!3447))))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) t!165418) tb!107259))

(declare-fun result!129018 () Bool)

(assert (= result!129018 result!129010))

(assert (=> d!541649 t!165418))

(declare-fun tb!107261 () Bool)

(declare-fun t!165420 () Bool)

(assert (=> (and b!1772018 (= (toValue!5008 (transformation!3485 (h!24892 (t!165170 (t!165170 rules!3447))))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) t!165420) tb!107261))

(declare-fun result!129020 () Bool)

(assert (= result!129020 result!128754))

(assert (=> b!1769461 t!165420))

(assert (=> d!540639 t!165420))

(declare-fun t!165422 () Bool)

(declare-fun tb!107263 () Bool)

(assert (=> (and b!1772018 (= (toValue!5008 (transformation!3485 (h!24892 (t!165170 (t!165170 rules!3447))))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685214)))))) t!165422) tb!107263))

(declare-fun result!129022 () Bool)

(assert (= result!129022 result!128924))

(assert (=> d!541115 t!165422))

(declare-fun tb!107265 () Bool)

(declare-fun t!165424 () Bool)

(assert (=> (and b!1772018 (= (toValue!5008 (transformation!3485 (h!24892 (t!165170 (t!165170 rules!3447))))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) t!165424) tb!107265))

(declare-fun result!129024 () Bool)

(assert (= result!129024 result!128818))

(assert (=> d!540683 t!165424))

(declare-fun t!165426 () Bool)

(declare-fun tb!107267 () Bool)

(assert (=> (and b!1772018 (= (toValue!5008 (transformation!3485 (h!24892 (t!165170 (t!165170 rules!3447))))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) t!165426) tb!107267))

(declare-fun result!129026 () Bool)

(assert (= result!129026 result!128786))

(assert (=> d!540595 t!165426))

(declare-fun t!165428 () Bool)

(declare-fun tb!107269 () Bool)

(assert (=> (and b!1772018 (= (toValue!5008 (transformation!3485 (h!24892 (t!165170 (t!165170 rules!3447))))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685429)))))) t!165428) tb!107269))

(declare-fun result!129028 () Bool)

(assert (= result!129028 result!128940))

(assert (=> d!541203 t!165428))

(assert (=> d!540683 t!165420))

(assert (=> d!541647 t!165418))

(declare-fun tb!107271 () Bool)

(declare-fun t!165430 () Bool)

(assert (=> (and b!1772018 (= (toValue!5008 (transformation!3485 (h!24892 (t!165170 (t!165170 rules!3447))))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685443)))))) t!165430) tb!107271))

(declare-fun result!129030 () Bool)

(assert (= result!129030 result!128932))

(assert (=> d!541133 t!165430))

(assert (=> d!540675 t!165420))

(declare-fun b_and!134793 () Bool)

(declare-fun tp!502248 () Bool)

(assert (=> b!1772018 (= tp!502248 (and (=> t!165424 result!129024) (=> t!165420 result!129020) (=> t!165426 result!129026) (=> t!165418 result!129018) (=> t!165428 result!129028) (=> t!165430 result!129030) (=> t!165422 result!129022) b_and!134793))))

(declare-fun b_free!49025 () Bool)

(declare-fun b_next!49729 () Bool)

(assert (=> b!1772018 (= b_free!49025 (not b_next!49729))))

(declare-fun tb!107273 () Bool)

(declare-fun t!165432 () Bool)

(assert (=> (and b!1772018 (= (toChars!4867 (transformation!3485 (h!24892 (t!165170 (t!165170 rules!3447))))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) t!165432) tb!107273))

(declare-fun result!129032 () Bool)

(assert (= result!129032 result!128762))

(assert (=> d!540541 t!165432))

(declare-fun tb!107275 () Bool)

(declare-fun t!165434 () Bool)

(assert (=> (and b!1772018 (= (toChars!4867 (transformation!3485 (h!24892 (t!165170 (t!165170 rules!3447))))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) t!165434) tb!107275))

(declare-fun result!129034 () Bool)

(assert (= result!129034 result!129002))

(assert (=> d!541647 t!165434))

(declare-fun tb!107277 () Bool)

(declare-fun t!165436 () Bool)

(assert (=> (and b!1772018 (= (toChars!4867 (transformation!3485 (h!24892 (t!165170 (t!165170 rules!3447))))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685443)))))) t!165436) tb!107277))

(declare-fun result!129036 () Bool)

(assert (= result!129036 result!128900))

(assert (=> d!540933 t!165436))

(declare-fun t!165438 () Bool)

(declare-fun tb!107279 () Bool)

(assert (=> (and b!1772018 (= (toChars!4867 (transformation!3485 (h!24892 (t!165170 (t!165170 rules!3447))))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685429)))))) t!165438) tb!107279))

(declare-fun result!129038 () Bool)

(assert (= result!129038 result!128948))

(assert (=> d!541357 t!165438))

(assert (=> b!1769468 t!165432))

(declare-fun t!165440 () Bool)

(declare-fun tb!107281 () Bool)

(assert (=> (and b!1772018 (= (toChars!4867 (transformation!3485 (h!24892 (t!165170 (t!165170 rules!3447))))) (toChars!4867 (transformation!3485 (rule!5527 token!523)))) t!165440) tb!107281))

(declare-fun result!129040 () Bool)

(assert (= result!129040 result!128780))

(assert (=> b!1769805 t!165440))

(declare-fun tb!107283 () Bool)

(declare-fun t!165442 () Bool)

(assert (=> (and b!1772018 (= (toChars!4867 (transformation!3485 (h!24892 (t!165170 (t!165170 rules!3447))))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099))))) t!165442) tb!107283))

(declare-fun result!129042 () Bool)

(assert (= result!129042 result!128746))

(assert (=> d!540639 t!165442))

(assert (=> d!540657 t!165440))

(declare-fun tb!107285 () Bool)

(declare-fun t!165444 () Bool)

(assert (=> (and b!1772018 (= (toChars!4867 (transformation!3485 (h!24892 (t!165170 (t!165170 rules!3447))))) (toChars!4867 (transformation!3485 (rule!5527 lt!685281)))) t!165444) tb!107285))

(declare-fun result!129044 () Bool)

(assert (= result!129044 result!128852))

(assert (=> d!540721 t!165444))

(declare-fun t!165446 () Bool)

(declare-fun tb!107287 () Bool)

(assert (=> (and b!1772018 (= (toChars!4867 (transformation!3485 (h!24892 (t!165170 (t!165170 rules!3447))))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 (get!5952 lt!685214)))))) t!165446) tb!107287))

(declare-fun result!129046 () Bool)

(assert (= result!129046 result!128844))

(assert (=> d!540699 t!165446))

(assert (=> b!1769461 t!165442))

(declare-fun tp!502250 () Bool)

(declare-fun b_and!134795 () Bool)

(assert (=> b!1772018 (= tp!502250 (and (=> t!165442 result!129042) (=> t!165434 result!129034) (=> t!165444 result!129044) (=> t!165432 result!129032) (=> t!165436 result!129036) (=> t!165440 result!129040) (=> t!165438 result!129038) (=> t!165446 result!129046) b_and!134795))))

(declare-fun e!1133797 () Bool)

(assert (=> b!1772018 (= e!1133797 (and tp!502248 tp!502250))))

(declare-fun b!1772017 () Bool)

(declare-fun tp!502249 () Bool)

(declare-fun e!1133796 () Bool)

(assert (=> b!1772017 (= e!1133796 (and tp!502249 (inv!25325 (tag!3865 (h!24892 (t!165170 (t!165170 rules!3447))))) (inv!25330 (transformation!3485 (h!24892 (t!165170 (t!165170 rules!3447))))) e!1133797))))

(declare-fun b!1772016 () Bool)

(declare-fun e!1133798 () Bool)

(declare-fun tp!502247 () Bool)

(assert (=> b!1772016 (= e!1133798 (and e!1133796 tp!502247))))

(assert (=> b!1770263 (= tp!502089 e!1133798)))

(assert (= b!1772017 b!1772018))

(assert (= b!1772016 b!1772017))

(assert (= (and b!1770263 ((_ is Cons!19491) (t!165170 (t!165170 rules!3447)))) b!1772016))

(declare-fun m!2191387 () Bool)

(assert (=> b!1772017 m!2191387))

(declare-fun m!2191389 () Bool)

(assert (=> b!1772017 m!2191389))

(declare-fun b!1772019 () Bool)

(declare-fun e!1133799 () Bool)

(declare-fun tp!502251 () Bool)

(assert (=> b!1772019 (= e!1133799 (and tp_is_empty!7869 tp!502251))))

(assert (=> b!1770254 (= tp!502078 e!1133799)))

(assert (= (and b!1770254 ((_ is Cons!19490) (innerList!6543 (xs!9359 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099)))))))) b!1772019))

(declare-fun b!1772023 () Bool)

(declare-fun e!1133800 () Bool)

(declare-fun tp!502252 () Bool)

(declare-fun tp!502256 () Bool)

(assert (=> b!1772023 (= e!1133800 (and tp!502252 tp!502256))))

(declare-fun b!1772022 () Bool)

(declare-fun tp!502255 () Bool)

(assert (=> b!1772022 (= e!1133800 tp!502255)))

(assert (=> b!1770282 (= tp!502111 e!1133800)))

(declare-fun b!1772021 () Bool)

(declare-fun tp!502254 () Bool)

(declare-fun tp!502253 () Bool)

(assert (=> b!1772021 (= e!1133800 (and tp!502254 tp!502253))))

(declare-fun b!1772020 () Bool)

(assert (=> b!1772020 (= e!1133800 tp_is_empty!7869)))

(assert (= (and b!1770282 ((_ is ElementMatch!4813) (reg!5142 (regex!3485 (rule!5527 token!523))))) b!1772020))

(assert (= (and b!1770282 ((_ is Concat!8389) (reg!5142 (regex!3485 (rule!5527 token!523))))) b!1772021))

(assert (= (and b!1770282 ((_ is Star!4813) (reg!5142 (regex!3485 (rule!5527 token!523))))) b!1772022))

(assert (= (and b!1770282 ((_ is Union!4813) (reg!5142 (regex!3485 (rule!5527 token!523))))) b!1772023))

(declare-fun b!1772027 () Bool)

(declare-fun e!1133801 () Bool)

(declare-fun tp!502257 () Bool)

(declare-fun tp!502261 () Bool)

(assert (=> b!1772027 (= e!1133801 (and tp!502257 tp!502261))))

(declare-fun b!1772026 () Bool)

(declare-fun tp!502260 () Bool)

(assert (=> b!1772026 (= e!1133801 tp!502260)))

(assert (=> b!1770287 (= tp!502117 e!1133801)))

(declare-fun b!1772025 () Bool)

(declare-fun tp!502259 () Bool)

(declare-fun tp!502258 () Bool)

(assert (=> b!1772025 (= e!1133801 (and tp!502259 tp!502258))))

(declare-fun b!1772024 () Bool)

(assert (=> b!1772024 (= e!1133801 tp_is_empty!7869)))

(assert (= (and b!1770287 ((_ is ElementMatch!4813) (reg!5142 (regex!3485 (h!24892 rules!3447))))) b!1772024))

(assert (= (and b!1770287 ((_ is Concat!8389) (reg!5142 (regex!3485 (h!24892 rules!3447))))) b!1772025))

(assert (= (and b!1770287 ((_ is Star!4813) (reg!5142 (regex!3485 (h!24892 rules!3447))))) b!1772026))

(assert (= (and b!1770287 ((_ is Union!4813) (reg!5142 (regex!3485 (h!24892 rules!3447))))) b!1772027))

(declare-fun b!1772031 () Bool)

(declare-fun e!1133802 () Bool)

(declare-fun tp!502262 () Bool)

(declare-fun tp!502266 () Bool)

(assert (=> b!1772031 (= e!1133802 (and tp!502262 tp!502266))))

(declare-fun b!1772030 () Bool)

(declare-fun tp!502265 () Bool)

(assert (=> b!1772030 (= e!1133802 tp!502265)))

(assert (=> b!1770279 (= tp!502103 e!1133802)))

(declare-fun b!1772029 () Bool)

(declare-fun tp!502264 () Bool)

(declare-fun tp!502263 () Bool)

(assert (=> b!1772029 (= e!1133802 (and tp!502264 tp!502263))))

(declare-fun b!1772028 () Bool)

(assert (=> b!1772028 (= e!1133802 tp_is_empty!7869)))

(assert (= (and b!1770279 ((_ is ElementMatch!4813) (regOne!10139 (regex!3485 rule!422)))) b!1772028))

(assert (= (and b!1770279 ((_ is Concat!8389) (regOne!10139 (regex!3485 rule!422)))) b!1772029))

(assert (= (and b!1770279 ((_ is Star!4813) (regOne!10139 (regex!3485 rule!422)))) b!1772030))

(assert (= (and b!1770279 ((_ is Union!4813) (regOne!10139 (regex!3485 rule!422)))) b!1772031))

(declare-fun b!1772035 () Bool)

(declare-fun e!1133803 () Bool)

(declare-fun tp!502267 () Bool)

(declare-fun tp!502271 () Bool)

(assert (=> b!1772035 (= e!1133803 (and tp!502267 tp!502271))))

(declare-fun b!1772034 () Bool)

(declare-fun tp!502270 () Bool)

(assert (=> b!1772034 (= e!1133803 tp!502270)))

(assert (=> b!1770279 (= tp!502107 e!1133803)))

(declare-fun b!1772033 () Bool)

(declare-fun tp!502269 () Bool)

(declare-fun tp!502268 () Bool)

(assert (=> b!1772033 (= e!1133803 (and tp!502269 tp!502268))))

(declare-fun b!1772032 () Bool)

(assert (=> b!1772032 (= e!1133803 tp_is_empty!7869)))

(assert (= (and b!1770279 ((_ is ElementMatch!4813) (regTwo!10139 (regex!3485 rule!422)))) b!1772032))

(assert (= (and b!1770279 ((_ is Concat!8389) (regTwo!10139 (regex!3485 rule!422)))) b!1772033))

(assert (= (and b!1770279 ((_ is Star!4813) (regTwo!10139 (regex!3485 rule!422)))) b!1772034))

(assert (= (and b!1770279 ((_ is Union!4813) (regTwo!10139 (regex!3485 rule!422)))) b!1772035))

(declare-fun b!1772039 () Bool)

(declare-fun e!1133804 () Bool)

(declare-fun tp!502272 () Bool)

(declare-fun tp!502276 () Bool)

(assert (=> b!1772039 (= e!1133804 (and tp!502272 tp!502276))))

(declare-fun b!1772038 () Bool)

(declare-fun tp!502275 () Bool)

(assert (=> b!1772038 (= e!1133804 tp!502275)))

(assert (=> b!1770264 (= tp!502091 e!1133804)))

(declare-fun b!1772037 () Bool)

(declare-fun tp!502274 () Bool)

(declare-fun tp!502273 () Bool)

(assert (=> b!1772037 (= e!1133804 (and tp!502274 tp!502273))))

(declare-fun b!1772036 () Bool)

(assert (=> b!1772036 (= e!1133804 tp_is_empty!7869)))

(assert (= (and b!1770264 ((_ is ElementMatch!4813) (regex!3485 (h!24892 (t!165170 rules!3447))))) b!1772036))

(assert (= (and b!1770264 ((_ is Concat!8389) (regex!3485 (h!24892 (t!165170 rules!3447))))) b!1772037))

(assert (= (and b!1770264 ((_ is Star!4813) (regex!3485 (h!24892 (t!165170 rules!3447))))) b!1772038))

(assert (= (and b!1770264 ((_ is Union!4813) (regex!3485 (h!24892 (t!165170 rules!3447))))) b!1772039))

(declare-fun b!1772043 () Bool)

(declare-fun e!1133805 () Bool)

(declare-fun tp!502277 () Bool)

(declare-fun tp!502281 () Bool)

(assert (=> b!1772043 (= e!1133805 (and tp!502277 tp!502281))))

(declare-fun b!1772042 () Bool)

(declare-fun tp!502280 () Bool)

(assert (=> b!1772042 (= e!1133805 tp!502280)))

(assert (=> b!1770286 (= tp!502116 e!1133805)))

(declare-fun b!1772041 () Bool)

(declare-fun tp!502279 () Bool)

(declare-fun tp!502278 () Bool)

(assert (=> b!1772041 (= e!1133805 (and tp!502279 tp!502278))))

(declare-fun b!1772040 () Bool)

(assert (=> b!1772040 (= e!1133805 tp_is_empty!7869)))

(assert (= (and b!1770286 ((_ is ElementMatch!4813) (regOne!10138 (regex!3485 (h!24892 rules!3447))))) b!1772040))

(assert (= (and b!1770286 ((_ is Concat!8389) (regOne!10138 (regex!3485 (h!24892 rules!3447))))) b!1772041))

(assert (= (and b!1770286 ((_ is Star!4813) (regOne!10138 (regex!3485 (h!24892 rules!3447))))) b!1772042))

(assert (= (and b!1770286 ((_ is Union!4813) (regOne!10138 (regex!3485 (h!24892 rules!3447))))) b!1772043))

(declare-fun b!1772047 () Bool)

(declare-fun e!1133806 () Bool)

(declare-fun tp!502282 () Bool)

(declare-fun tp!502286 () Bool)

(assert (=> b!1772047 (= e!1133806 (and tp!502282 tp!502286))))

(declare-fun b!1772046 () Bool)

(declare-fun tp!502285 () Bool)

(assert (=> b!1772046 (= e!1133806 tp!502285)))

(assert (=> b!1770286 (= tp!502115 e!1133806)))

(declare-fun b!1772045 () Bool)

(declare-fun tp!502284 () Bool)

(declare-fun tp!502283 () Bool)

(assert (=> b!1772045 (= e!1133806 (and tp!502284 tp!502283))))

(declare-fun b!1772044 () Bool)

(assert (=> b!1772044 (= e!1133806 tp_is_empty!7869)))

(assert (= (and b!1770286 ((_ is ElementMatch!4813) (regTwo!10138 (regex!3485 (h!24892 rules!3447))))) b!1772044))

(assert (= (and b!1770286 ((_ is Concat!8389) (regTwo!10138 (regex!3485 (h!24892 rules!3447))))) b!1772045))

(assert (= (and b!1770286 ((_ is Star!4813) (regTwo!10138 (regex!3485 (h!24892 rules!3447))))) b!1772046))

(assert (= (and b!1770286 ((_ is Union!4813) (regTwo!10138 (regex!3485 (h!24892 rules!3447))))) b!1772047))

(declare-fun e!1133808 () Bool)

(declare-fun tp!502288 () Bool)

(declare-fun b!1772048 () Bool)

(declare-fun tp!502289 () Bool)

(assert (=> b!1772048 (= e!1133808 (and (inv!25332 (left!15607 (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099))))))) tp!502289 (inv!25332 (right!15937 (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099))))))) tp!502288))))

(declare-fun b!1772050 () Bool)

(declare-fun e!1133807 () Bool)

(declare-fun tp!502287 () Bool)

(assert (=> b!1772050 (= e!1133807 tp!502287)))

(declare-fun b!1772049 () Bool)

(assert (=> b!1772049 (= e!1133808 (and (inv!25339 (xs!9359 (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099))))))) e!1133807))))

(assert (=> b!1770252 (= tp!502080 (and (inv!25332 (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099)))))) e!1133808))))

(assert (= (and b!1770252 ((_ is Node!6483) (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099))))))) b!1772048))

(assert (= b!1772049 b!1772050))

(assert (= (and b!1770252 ((_ is Leaf!9446) (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099))))))) b!1772049))

(declare-fun m!2191391 () Bool)

(assert (=> b!1772048 m!2191391))

(declare-fun m!2191393 () Bool)

(assert (=> b!1772048 m!2191393))

(declare-fun m!2191395 () Bool)

(assert (=> b!1772049 m!2191395))

(assert (=> b!1770252 m!2188935))

(declare-fun e!1133810 () Bool)

(declare-fun b!1772051 () Bool)

(declare-fun tp!502291 () Bool)

(declare-fun tp!502292 () Bool)

(assert (=> b!1772051 (= e!1133810 (and (inv!25332 (left!15607 (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099))))))) tp!502292 (inv!25332 (right!15937 (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099))))))) tp!502291))))

(declare-fun b!1772053 () Bool)

(declare-fun e!1133809 () Bool)

(declare-fun tp!502290 () Bool)

(assert (=> b!1772053 (= e!1133809 tp!502290)))

(declare-fun b!1772052 () Bool)

(assert (=> b!1772052 (= e!1133810 (and (inv!25339 (xs!9359 (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099))))))) e!1133809))))

(assert (=> b!1770252 (= tp!502079 (and (inv!25332 (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099)))))) e!1133810))))

(assert (= (and b!1770252 ((_ is Node!6483) (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099))))))) b!1772051))

(assert (= b!1772052 b!1772053))

(assert (= (and b!1770252 ((_ is Leaf!9446) (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (value!108995 (_1!10949 lt!685099))))))) b!1772052))

(declare-fun m!2191397 () Bool)

(assert (=> b!1772051 m!2191397))

(declare-fun m!2191399 () Bool)

(assert (=> b!1772051 m!2191399))

(declare-fun m!2191401 () Bool)

(assert (=> b!1772052 m!2191401))

(assert (=> b!1770252 m!2188937))

(declare-fun b!1772057 () Bool)

(declare-fun e!1133811 () Bool)

(declare-fun tp!502293 () Bool)

(declare-fun tp!502297 () Bool)

(assert (=> b!1772057 (= e!1133811 (and tp!502293 tp!502297))))

(declare-fun b!1772056 () Bool)

(declare-fun tp!502296 () Bool)

(assert (=> b!1772056 (= e!1133811 tp!502296)))

(assert (=> b!1770277 (= tp!502105 e!1133811)))

(declare-fun b!1772055 () Bool)

(declare-fun tp!502295 () Bool)

(declare-fun tp!502294 () Bool)

(assert (=> b!1772055 (= e!1133811 (and tp!502295 tp!502294))))

(declare-fun b!1772054 () Bool)

(assert (=> b!1772054 (= e!1133811 tp_is_empty!7869)))

(assert (= (and b!1770277 ((_ is ElementMatch!4813) (regOne!10138 (regex!3485 rule!422)))) b!1772054))

(assert (= (and b!1770277 ((_ is Concat!8389) (regOne!10138 (regex!3485 rule!422)))) b!1772055))

(assert (= (and b!1770277 ((_ is Star!4813) (regOne!10138 (regex!3485 rule!422)))) b!1772056))

(assert (= (and b!1770277 ((_ is Union!4813) (regOne!10138 (regex!3485 rule!422)))) b!1772057))

(declare-fun b!1772061 () Bool)

(declare-fun e!1133812 () Bool)

(declare-fun tp!502298 () Bool)

(declare-fun tp!502302 () Bool)

(assert (=> b!1772061 (= e!1133812 (and tp!502298 tp!502302))))

(declare-fun b!1772060 () Bool)

(declare-fun tp!502301 () Bool)

(assert (=> b!1772060 (= e!1133812 tp!502301)))

(assert (=> b!1770277 (= tp!502104 e!1133812)))

(declare-fun b!1772059 () Bool)

(declare-fun tp!502300 () Bool)

(declare-fun tp!502299 () Bool)

(assert (=> b!1772059 (= e!1133812 (and tp!502300 tp!502299))))

(declare-fun b!1772058 () Bool)

(assert (=> b!1772058 (= e!1133812 tp_is_empty!7869)))

(assert (= (and b!1770277 ((_ is ElementMatch!4813) (regTwo!10138 (regex!3485 rule!422)))) b!1772058))

(assert (= (and b!1770277 ((_ is Concat!8389) (regTwo!10138 (regex!3485 rule!422)))) b!1772059))

(assert (= (and b!1770277 ((_ is Star!4813) (regTwo!10138 (regex!3485 rule!422)))) b!1772060))

(assert (= (and b!1770277 ((_ is Union!4813) (regTwo!10138 (regex!3485 rule!422)))) b!1772061))

(declare-fun b!1772062 () Bool)

(declare-fun e!1133813 () Bool)

(declare-fun tp!502303 () Bool)

(assert (=> b!1772062 (= e!1133813 (and tp_is_empty!7869 tp!502303))))

(assert (=> b!1770240 (= tp!502068 e!1133813)))

(assert (= (and b!1770240 ((_ is Cons!19490) (t!165169 (originalCharacters!4299 token!523)))) b!1772062))

(declare-fun b!1772066 () Bool)

(declare-fun e!1133814 () Bool)

(declare-fun tp!502304 () Bool)

(declare-fun tp!502308 () Bool)

(assert (=> b!1772066 (= e!1133814 (and tp!502304 tp!502308))))

(declare-fun b!1772065 () Bool)

(declare-fun tp!502307 () Bool)

(assert (=> b!1772065 (= e!1133814 tp!502307)))

(assert (=> b!1770281 (= tp!502110 e!1133814)))

(declare-fun b!1772064 () Bool)

(declare-fun tp!502306 () Bool)

(declare-fun tp!502305 () Bool)

(assert (=> b!1772064 (= e!1133814 (and tp!502306 tp!502305))))

(declare-fun b!1772063 () Bool)

(assert (=> b!1772063 (= e!1133814 tp_is_empty!7869)))

(assert (= (and b!1770281 ((_ is ElementMatch!4813) (regOne!10138 (regex!3485 (rule!5527 token!523))))) b!1772063))

(assert (= (and b!1770281 ((_ is Concat!8389) (regOne!10138 (regex!3485 (rule!5527 token!523))))) b!1772064))

(assert (= (and b!1770281 ((_ is Star!4813) (regOne!10138 (regex!3485 (rule!5527 token!523))))) b!1772065))

(assert (= (and b!1770281 ((_ is Union!4813) (regOne!10138 (regex!3485 (rule!5527 token!523))))) b!1772066))

(declare-fun b!1772070 () Bool)

(declare-fun e!1133815 () Bool)

(declare-fun tp!502309 () Bool)

(declare-fun tp!502313 () Bool)

(assert (=> b!1772070 (= e!1133815 (and tp!502309 tp!502313))))

(declare-fun b!1772069 () Bool)

(declare-fun tp!502312 () Bool)

(assert (=> b!1772069 (= e!1133815 tp!502312)))

(assert (=> b!1770281 (= tp!502109 e!1133815)))

(declare-fun b!1772068 () Bool)

(declare-fun tp!502311 () Bool)

(declare-fun tp!502310 () Bool)

(assert (=> b!1772068 (= e!1133815 (and tp!502311 tp!502310))))

(declare-fun b!1772067 () Bool)

(assert (=> b!1772067 (= e!1133815 tp_is_empty!7869)))

(assert (= (and b!1770281 ((_ is ElementMatch!4813) (regTwo!10138 (regex!3485 (rule!5527 token!523))))) b!1772067))

(assert (= (and b!1770281 ((_ is Concat!8389) (regTwo!10138 (regex!3485 (rule!5527 token!523))))) b!1772068))

(assert (= (and b!1770281 ((_ is Star!4813) (regTwo!10138 (regex!3485 (rule!5527 token!523))))) b!1772069))

(assert (= (and b!1770281 ((_ is Union!4813) (regTwo!10138 (regex!3485 (rule!5527 token!523))))) b!1772070))

(declare-fun tp!502316 () Bool)

(declare-fun e!1133817 () Bool)

(declare-fun tp!502315 () Bool)

(declare-fun b!1772071 () Bool)

(assert (=> b!1772071 (= e!1133817 (and (inv!25332 (left!15607 (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))))) tp!502316 (inv!25332 (right!15937 (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))))) tp!502315))))

(declare-fun b!1772073 () Bool)

(declare-fun e!1133816 () Bool)

(declare-fun tp!502314 () Bool)

(assert (=> b!1772073 (= e!1133816 tp!502314)))

(declare-fun b!1772072 () Bool)

(assert (=> b!1772072 (= e!1133817 (and (inv!25339 (xs!9359 (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))))) e!1133816))))

(assert (=> b!1770249 (= tp!502077 (and (inv!25332 (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))))) e!1133817))))

(assert (= (and b!1770249 ((_ is Node!6483) (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))))) b!1772071))

(assert (= b!1772072 b!1772073))

(assert (= (and b!1770249 ((_ is Leaf!9446) (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))))) b!1772072))

(declare-fun m!2191403 () Bool)

(assert (=> b!1772071 m!2191403))

(declare-fun m!2191405 () Bool)

(assert (=> b!1772071 m!2191405))

(declare-fun m!2191407 () Bool)

(assert (=> b!1772072 m!2191407))

(assert (=> b!1770249 m!2188929))

(declare-fun tp!502318 () Bool)

(declare-fun tp!502319 () Bool)

(declare-fun b!1772074 () Bool)

(declare-fun e!1133819 () Bool)

(assert (=> b!1772074 (= e!1133819 (and (inv!25332 (left!15607 (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))))) tp!502319 (inv!25332 (right!15937 (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))))) tp!502318))))

(declare-fun b!1772076 () Bool)

(declare-fun e!1133818 () Bool)

(declare-fun tp!502317 () Bool)

(assert (=> b!1772076 (= e!1133818 tp!502317)))

(declare-fun b!1772075 () Bool)

(assert (=> b!1772075 (= e!1133819 (and (inv!25339 (xs!9359 (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))))) e!1133818))))

(assert (=> b!1770249 (= tp!502076 (and (inv!25332 (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))))) e!1133819))))

(assert (= (and b!1770249 ((_ is Node!6483) (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))))) b!1772074))

(assert (= b!1772075 b!1772076))

(assert (= (and b!1770249 ((_ is Leaf!9446) (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082)))))) b!1772075))

(declare-fun m!2191409 () Bool)

(assert (=> b!1772074 m!2191409))

(declare-fun m!2191411 () Bool)

(assert (=> b!1772074 m!2191411))

(declare-fun m!2191413 () Bool)

(assert (=> b!1772075 m!2191413))

(assert (=> b!1770249 m!2188931))

(declare-fun b!1772077 () Bool)

(declare-fun e!1133820 () Bool)

(declare-fun tp!502320 () Bool)

(assert (=> b!1772077 (= e!1133820 (and tp_is_empty!7869 tp!502320))))

(assert (=> b!1770251 (= tp!502075 e!1133820)))

(assert (= (and b!1770251 ((_ is Cons!19490) (innerList!6543 (xs!9359 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))))))) b!1772077))

(declare-fun tp!502323 () Bool)

(declare-fun tp!502322 () Bool)

(declare-fun b!1772078 () Bool)

(declare-fun e!1133822 () Bool)

(assert (=> b!1772078 (= e!1133822 (and (inv!25332 (left!15607 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 token!523))) (value!108995 token!523))))) tp!502323 (inv!25332 (right!15937 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 token!523))) (value!108995 token!523))))) tp!502322))))

(declare-fun b!1772080 () Bool)

(declare-fun e!1133821 () Bool)

(declare-fun tp!502321 () Bool)

(assert (=> b!1772080 (= e!1133821 tp!502321)))

(declare-fun b!1772079 () Bool)

(assert (=> b!1772079 (= e!1133822 (and (inv!25339 (xs!9359 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 token!523))) (value!108995 token!523))))) e!1133821))))

(assert (=> b!1769807 (= tp!502012 (and (inv!25332 (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 token!523))) (value!108995 token!523)))) e!1133822))))

(assert (= (and b!1769807 ((_ is Node!6483) (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 token!523))) (value!108995 token!523))))) b!1772078))

(assert (= b!1772079 b!1772080))

(assert (= (and b!1769807 ((_ is Leaf!9446) (c!288085 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 token!523))) (value!108995 token!523))))) b!1772079))

(declare-fun m!2191415 () Bool)

(assert (=> b!1772078 m!2191415))

(declare-fun m!2191417 () Bool)

(assert (=> b!1772078 m!2191417))

(declare-fun m!2191419 () Bool)

(assert (=> b!1772079 m!2191419))

(assert (=> b!1769807 m!2188287))

(declare-fun b!1772084 () Bool)

(declare-fun e!1133823 () Bool)

(declare-fun tp!502324 () Bool)

(declare-fun tp!502328 () Bool)

(assert (=> b!1772084 (= e!1133823 (and tp!502324 tp!502328))))

(declare-fun b!1772083 () Bool)

(declare-fun tp!502327 () Bool)

(assert (=> b!1772083 (= e!1133823 tp!502327)))

(assert (=> b!1770288 (= tp!502114 e!1133823)))

(declare-fun b!1772082 () Bool)

(declare-fun tp!502326 () Bool)

(declare-fun tp!502325 () Bool)

(assert (=> b!1772082 (= e!1133823 (and tp!502326 tp!502325))))

(declare-fun b!1772081 () Bool)

(assert (=> b!1772081 (= e!1133823 tp_is_empty!7869)))

(assert (= (and b!1770288 ((_ is ElementMatch!4813) (regOne!10139 (regex!3485 (h!24892 rules!3447))))) b!1772081))

(assert (= (and b!1770288 ((_ is Concat!8389) (regOne!10139 (regex!3485 (h!24892 rules!3447))))) b!1772082))

(assert (= (and b!1770288 ((_ is Star!4813) (regOne!10139 (regex!3485 (h!24892 rules!3447))))) b!1772083))

(assert (= (and b!1770288 ((_ is Union!4813) (regOne!10139 (regex!3485 (h!24892 rules!3447))))) b!1772084))

(declare-fun b!1772088 () Bool)

(declare-fun e!1133824 () Bool)

(declare-fun tp!502329 () Bool)

(declare-fun tp!502333 () Bool)

(assert (=> b!1772088 (= e!1133824 (and tp!502329 tp!502333))))

(declare-fun b!1772087 () Bool)

(declare-fun tp!502332 () Bool)

(assert (=> b!1772087 (= e!1133824 tp!502332)))

(assert (=> b!1770288 (= tp!502118 e!1133824)))

(declare-fun b!1772086 () Bool)

(declare-fun tp!502331 () Bool)

(declare-fun tp!502330 () Bool)

(assert (=> b!1772086 (= e!1133824 (and tp!502331 tp!502330))))

(declare-fun b!1772085 () Bool)

(assert (=> b!1772085 (= e!1133824 tp_is_empty!7869)))

(assert (= (and b!1770288 ((_ is ElementMatch!4813) (regTwo!10139 (regex!3485 (h!24892 rules!3447))))) b!1772085))

(assert (= (and b!1770288 ((_ is Concat!8389) (regTwo!10139 (regex!3485 (h!24892 rules!3447))))) b!1772086))

(assert (= (and b!1770288 ((_ is Star!4813) (regTwo!10139 (regex!3485 (h!24892 rules!3447))))) b!1772087))

(assert (= (and b!1770288 ((_ is Union!4813) (regTwo!10139 (regex!3485 (h!24892 rules!3447))))) b!1772088))

(declare-fun b!1772089 () Bool)

(declare-fun e!1133825 () Bool)

(declare-fun tp!502334 () Bool)

(assert (=> b!1772089 (= e!1133825 (and tp_is_empty!7869 tp!502334))))

(assert (=> b!1770284 (= tp!502113 e!1133825)))

(assert (= (and b!1770284 ((_ is Cons!19490) (t!165169 (t!165169 suffix!1421)))) b!1772089))

(declare-fun b_lambda!57717 () Bool)

(assert (= b_lambda!57591 (or (and b!1770265 b_free!49017 (= (toChars!4867 (transformation!3485 (h!24892 (t!165170 rules!3447)))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (and b!1772018 b_free!49025 (= (toChars!4867 (transformation!3485 (h!24892 (t!165170 (t!165170 rules!3447))))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (and b!1769445 b_free!49001 (= (toChars!4867 (transformation!3485 (rule!5527 token!523))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (and b!1769469 b_free!49005 (= (toChars!4867 (transformation!3485 (h!24892 rules!3447))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (and b!1769458 b_free!49009 (= (toChars!4867 (transformation!3485 rule!422)) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) b_lambda!57717)))

(declare-fun b_lambda!57719 () Bool)

(assert (= b_lambda!57659 (or d!540461 b_lambda!57719)))

(declare-fun bs!404763 () Bool)

(declare-fun d!541671 () Bool)

(assert (= bs!404763 (and d!541671 d!540461)))

(assert (=> bs!404763 (= (dynLambda!9467 lambda!70386 (h!24892 rules!3447)) (regex!3485 (h!24892 rules!3447)))))

(assert (=> b!1770812 d!541671))

(declare-fun b_lambda!57721 () Bool)

(assert (= b_lambda!57665 (or d!540639 b_lambda!57721)))

(declare-fun bs!404764 () Bool)

(declare-fun d!541673 () Bool)

(assert (= bs!404764 (and d!541673 d!540639)))

(assert (=> bs!404764 (= (dynLambda!9468 lambda!70395 lt!685082) (= (list!7915 (dynLambda!9461 (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082))) (list!7915 lt!685082)))))

(declare-fun b_lambda!57737 () Bool)

(assert (=> (not b_lambda!57737) (not bs!404764)))

(assert (=> bs!404764 t!165153))

(declare-fun b_and!134797 () Bool)

(assert (= b_and!134771 (and (=> t!165153 result!128750) b_and!134797)))

(assert (=> bs!404764 t!165155))

(declare-fun b_and!134799 () Bool)

(assert (= b_and!134773 (and (=> t!165155 result!128752) b_and!134799)))

(assert (=> bs!404764 t!165151))

(declare-fun b_and!134801 () Bool)

(assert (= b_and!134769 (and (=> t!165151 result!128746) b_and!134801)))

(assert (=> bs!404764 t!165442))

(declare-fun b_and!134803 () Bool)

(assert (= b_and!134795 (and (=> t!165442 result!129042) b_and!134803)))

(assert (=> bs!404764 t!165226))

(declare-fun b_and!134805 () Bool)

(assert (= b_and!134775 (and (=> t!165226 result!128836) b_and!134805)))

(declare-fun b_lambda!57739 () Bool)

(assert (=> (not b_lambda!57739) (not bs!404764)))

(assert (=> bs!404764 t!165220))

(declare-fun b_and!134807 () Bool)

(assert (= b_and!134791 (and (=> t!165220 result!128830) b_and!134807)))

(assert (=> bs!404764 t!165161))

(declare-fun b_and!134809 () Bool)

(assert (= b_and!134789 (and (=> t!165161 result!128760) b_and!134809)))

(assert (=> bs!404764 t!165157))

(declare-fun b_and!134811 () Bool)

(assert (= b_and!134785 (and (=> t!165157 result!128754) b_and!134811)))

(assert (=> bs!404764 t!165420))

(declare-fun b_and!134813 () Bool)

(assert (= b_and!134793 (and (=> t!165420 result!129020) b_and!134813)))

(assert (=> bs!404764 t!165159))

(declare-fun b_and!134815 () Bool)

(assert (= b_and!134787 (and (=> t!165159 result!128758) b_and!134815)))

(assert (=> bs!404764 m!2187863))

(assert (=> bs!404764 m!2187821))

(assert (=> bs!404764 m!2187823))

(assert (=> bs!404764 m!2187821))

(assert (=> bs!404764 m!2187823))

(assert (=> bs!404764 m!2187825))

(assert (=> d!541119 d!541673))

(declare-fun b_lambda!57723 () Bool)

(assert (= b_lambda!57669 (or d!540683 b_lambda!57723)))

(declare-fun bs!404765 () Bool)

(declare-fun d!541675 () Bool)

(assert (= bs!404765 (and d!541675 d!540683)))

(declare-fun res!798024 () Bool)

(declare-fun e!1133826 () Bool)

(assert (=> bs!404765 (=> res!798024 e!1133826)))

(assert (=> bs!404765 (= res!798024 (not (= (list!7915 lt!685082) (list!7915 (seqFromList!2454 (originalCharacters!4299 (_1!10949 lt!685099)))))))))

(assert (=> bs!404765 (= (dynLambda!9469 lambda!70398 lt!685082 (seqFromList!2454 (originalCharacters!4299 (_1!10949 lt!685099)))) e!1133826)))

(declare-fun b!1772090 () Bool)

(assert (=> b!1772090 (= e!1133826 (= (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) lt!685082) (dynLambda!9462 (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))) (seqFromList!2454 (originalCharacters!4299 (_1!10949 lt!685099))))))))

(assert (= (and bs!404765 (not res!798024)) b!1772090))

(declare-fun b_lambda!57741 () Bool)

(assert (=> (not b_lambda!57741) (not b!1772090)))

(assert (=> b!1772090 t!165161))

(declare-fun b_and!134817 () Bool)

(assert (= b_and!134809 (and (=> t!165161 result!128760) b_and!134817)))

(assert (=> b!1772090 t!165220))

(declare-fun b_and!134819 () Bool)

(assert (= b_and!134807 (and (=> t!165220 result!128830) b_and!134819)))

(assert (=> b!1772090 t!165157))

(declare-fun b_and!134821 () Bool)

(assert (= b_and!134811 (and (=> t!165157 result!128754) b_and!134821)))

(assert (=> b!1772090 t!165420))

(declare-fun b_and!134823 () Bool)

(assert (= b_and!134813 (and (=> t!165420 result!129020) b_and!134823)))

(assert (=> b!1772090 t!165159))

(declare-fun b_and!134825 () Bool)

(assert (= b_and!134815 (and (=> t!165159 result!128758) b_and!134825)))

(declare-fun b_lambda!57743 () Bool)

(assert (=> (not b_lambda!57743) (not b!1772090)))

(assert (=> b!1772090 t!165214))

(declare-fun b_and!134827 () Bool)

(assert (= b_and!134821 (and (=> t!165214 result!128818) b_and!134827)))

(assert (=> b!1772090 t!165218))

(declare-fun b_and!134829 () Bool)

(assert (= b_and!134817 (and (=> t!165218 result!128822) b_and!134829)))

(assert (=> b!1772090 t!165222))

(declare-fun b_and!134831 () Bool)

(assert (= b_and!134819 (and (=> t!165222 result!128832) b_and!134831)))

(assert (=> b!1772090 t!165424))

(declare-fun b_and!134833 () Bool)

(assert (= b_and!134823 (and (=> t!165424 result!129024) b_and!134833)))

(assert (=> b!1772090 t!165216))

(declare-fun b_and!134835 () Bool)

(assert (= b_and!134825 (and (=> t!165216 result!128820) b_and!134835)))

(assert (=> bs!404765 m!2187863))

(assert (=> bs!404765 m!2187917))

(assert (=> bs!404765 m!2188921))

(assert (=> b!1772090 m!2187821))

(assert (=> b!1772090 m!2187917))

(assert (=> b!1772090 m!2188923))

(assert (=> d!541161 d!541675))

(declare-fun b_lambda!57725 () Bool)

(assert (= b_lambda!57625 (or (and b!1769458 b_free!49007 (= (toValue!5008 (transformation!3485 rule!422)) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (and b!1769445 b_free!48999 (= (toValue!5008 (transformation!3485 (rule!5527 token!523))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (and b!1769469 b_free!49003 (= (toValue!5008 (transformation!3485 (h!24892 rules!3447))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (and b!1770265 b_free!49015 (= (toValue!5008 (transformation!3485 (h!24892 (t!165170 rules!3447)))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (and b!1772018 b_free!49023 (= (toValue!5008 (transformation!3485 (h!24892 (t!165170 (t!165170 rules!3447))))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) b_lambda!57725)))

(declare-fun b_lambda!57727 () Bool)

(assert (= b_lambda!57617 (or (and b!1769458 b_free!49007 (= (toValue!5008 (transformation!3485 rule!422)) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (and b!1769445 b_free!48999 (= (toValue!5008 (transformation!3485 (rule!5527 token!523))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (and b!1769469 b_free!49003 (= (toValue!5008 (transformation!3485 (h!24892 rules!3447))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (and b!1770265 b_free!49015 (= (toValue!5008 (transformation!3485 (h!24892 (t!165170 rules!3447)))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (and b!1772018 b_free!49023 (= (toValue!5008 (transformation!3485 (h!24892 (t!165170 (t!165170 rules!3447))))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) b_lambda!57727)))

(declare-fun b_lambda!57729 () Bool)

(assert (= b_lambda!57595 (or (and b!1769458 b_free!49007 (= (toValue!5008 (transformation!3485 rule!422)) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (and b!1769445 b_free!48999 (= (toValue!5008 (transformation!3485 (rule!5527 token!523))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (and b!1769469 b_free!49003 (= (toValue!5008 (transformation!3485 (h!24892 rules!3447))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (and b!1770265 b_free!49015 (= (toValue!5008 (transformation!3485 (h!24892 (t!165170 rules!3447)))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (and b!1772018 b_free!49023 (= (toValue!5008 (transformation!3485 (h!24892 (t!165170 (t!165170 rules!3447))))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) b_lambda!57729)))

(declare-fun b_lambda!57731 () Bool)

(assert (= b_lambda!57615 (or (and b!1770265 b_free!49017 (= (toChars!4867 (transformation!3485 (h!24892 (t!165170 rules!3447)))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (and b!1772018 b_free!49025 (= (toChars!4867 (transformation!3485 (h!24892 (t!165170 (t!165170 rules!3447))))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (and b!1769445 b_free!49001 (= (toChars!4867 (transformation!3485 (rule!5527 token!523))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (and b!1769469 b_free!49005 (= (toChars!4867 (transformation!3485 (h!24892 rules!3447))) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (and b!1769458 b_free!49009 (= (toChars!4867 (transformation!3485 rule!422)) (toChars!4867 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) b_lambda!57731)))

(declare-fun b_lambda!57733 () Bool)

(assert (= b_lambda!57621 (or (and b!1769458 b_free!49007 (= (toValue!5008 (transformation!3485 rule!422)) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (and b!1769445 b_free!48999 (= (toValue!5008 (transformation!3485 (rule!5527 token!523))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (and b!1769469 b_free!49003 (= (toValue!5008 (transformation!3485 (h!24892 rules!3447))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (and b!1770265 b_free!49015 (= (toValue!5008 (transformation!3485 (h!24892 (t!165170 rules!3447)))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (and b!1772018 b_free!49023 (= (toValue!5008 (transformation!3485 (h!24892 (t!165170 (t!165170 rules!3447))))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) b_lambda!57733)))

(declare-fun b_lambda!57735 () Bool)

(assert (= b_lambda!57623 (or (and b!1769458 b_free!49007 (= (toValue!5008 (transformation!3485 rule!422)) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (and b!1769445 b_free!48999 (= (toValue!5008 (transformation!3485 (rule!5527 token!523))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (and b!1769469 b_free!49003 (= (toValue!5008 (transformation!3485 (h!24892 rules!3447))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (and b!1770265 b_free!49015 (= (toValue!5008 (transformation!3485 (h!24892 (t!165170 rules!3447)))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) (and b!1772018 b_free!49023 (= (toValue!5008 (transformation!3485 (h!24892 (t!165170 (t!165170 rules!3447))))) (toValue!5008 (transformation!3485 (rule!5527 (_1!10949 lt!685099)))))) b_lambda!57735)))

(check-sat (not b!1771115) (not b!1770616) (not b!1771546) (not b!1770375) (not tb!107085) (not d!541607) b_and!134829 (not b!1772022) (not b!1770679) (not b!1769807) (not d!541081) (not bm!111114) (not b!1771119) (not b!1770985) (not b_lambda!57729) (not bm!111056) (not b!1771275) (not d!540981) (not bm!111047) (not b!1770931) (not b!1771100) (not bm!111115) (not b!1772013) (not b_next!49713) (not b!1771619) (not b!1772051) (not d!541119) (not d!541479) (not b!1771984) (not b!1771727) (not b!1770905) (not b!1771212) (not d!540933) (not bm!111025) (not b!1771703) (not b!1771958) (not bm!111012) (not b!1771982) (not bm!111043) (not bm!111018) (not b!1772015) (not b!1772011) (not d!541647) (not b_lambda!57639) (not b!1771696) (not bm!111118) (not b!1772052) (not b_lambda!57627) (not b!1770622) (not bm!111055) (not b!1771000) (not b!1770678) (not b!1771228) (not b!1771596) (not b!1770917) (not b!1771475) (not d!540931) (not d!541645) (not b!1770790) (not d!541651) (not b_next!49703) (not b!1771229) (not b!1772065) (not b!1771161) (not b_lambda!57737) (not b!1770573) (not b!1772061) (not d!541157) (not b!1772025) (not b_lambda!57633) (not b!1770714) (not b!1771755) (not b!1770987) (not bm!111108) (not b!1770786) (not d!541669) (not b!1772060) (not b_lambda!57637) (not d!541643) (not b!1772083) (not b!1770963) (not b!1772009) (not b!1772069) b_and!134833 (not d!541389) (not b!1771394) (not b!1771353) (not b!1770374) (not b!1770902) (not b_lambda!57713) (not d!541657) (not b!1771667) (not b!1770572) (not b!1772066) (not b!1772045) (not d!541655) (not bm!110980) (not b!1770783) (not bm!111067) (not b!1771618) (not d!541085) (not b!1771064) (not bm!110986) (not d!541113) (not b!1770349) (not b!1771012) (not b_lambda!57739) (not d!541449) (not b!1771977) (not b!1771502) (not b!1772077) (not b!1770950) (not b!1772087) (not b_lambda!57731) (not b!1771739) (not b!1771239) (not b!1771172) (not b!1771597) (not d!541457) (not b!1771346) (not d!541509) (not b!1771297) (not b!1771026) (not b!1770923) (not b!1771753) (not bm!111116) (not d!541641) (not b!1771505) (not b!1771509) (not d!541533) (not b!1772037) (not bm!111007) (not d!540941) (not d!541597) (not b_lambda!57655) (not b_lambda!57723) (not d!541103) (not b!1771776) (not b_lambda!57711) (not d!540739) (not d!540859) (not b!1771063) (not b_lambda!57717) (not b!1771506) (not b!1770939) (not b!1771022) (not b!1772078) (not d!541301) (not b!1772064) (not d!541521) (not d!541349) (not b!1770934) (not b_next!49721) (not b!1771433) (not b!1770958) (not b!1771769) (not b!1772088) (not d!541653) (not d!541171) (not d!541271) (not d!541195) (not d!541257) (not b_lambda!57671) (not b!1771508) (not b!1772027) (not b!1771166) (not d!541125) (not b!1771763) (not b!1771956) (not d!541491) (not b!1771623) (not b!1770830) (not b!1770711) (not b!1771052) b_and!134827 (not d!541325) (not b!1771483) (not b!1770927) (not b!1770962) (not b!1771001) (not b!1771007) (not b!1772075) (not b!1771507) (not d!540977) (not d!540987) (not d!541445) (not b!1770688) (not d!541183) (not b!1770792) (not b!1771021) (not b!1770355) (not d!540857) (not b!1771573) (not b!1770376) (not d!540697) (not b!1772043) (not b!1771003) (not d!540733) (not d!541105) (not d!541357) (not b!1771670) (not bm!111044) (not d!540753) (not b!1770639) (not b!1771665) b_and!134805 (not b!1771980) (not b!1771735) (not b!1771216) (not b!1771208) (not b!1770901) (not b!1771146) (not b!1771215) (not b!1771213) (not b!1771082) (not d!541127) (not b!1771280) (not b!1770911) (not d!541231) (not b!1771230) (not b!1771992) (not bm!111028) (not b!1770391) (not b!1771469) (not b!1770686) (not d!540969) (not b!1771446) (not b!1770932) (not bm!111013) (not b_lambda!57673) (not d!541583) b_and!134799 (not b!1772068) (not b!1770993) (not bm!111020) (not b!1770576) (not d!541161) (not b!1771265) (not b!1770641) (not b!1771017) (not b!1771169) (not tb!107251) (not d!540699) (not b!1771033) (not b!1771700) (not b!1770929) (not b!1771676) (not b!1771005) (not b!1770619) (not b!1771108) b_and!134835 (not b!1770643) (not b!1771491) (not b!1770579) (not d!541117) (not b!1771614) (not b!1771728) (not d!541665) (not b!1771120) (not b!1771170) (not b!1772062) (not b!1771480) (not d!540881) (not b!1770353) (not b!1770903) (not bm!111015) (not b!1770817) (not b_lambda!57741) (not d!541547) (not b!1771029) (not b!1771075) (not b!1770933) (not b!1771701) (not b!1770638) (not b!1771238) (not d!540875) (not d!541039) (not d!540991) (not d!541377) (not b!1771993) (not bm!111046) (not b!1772059) (not b!1771207) (not b!1771112) (not b!1772026) (not b!1771994) (not b!1770814) (not b!1771781) (not d!541101) (not b!1771365) (not d!541353) (not b!1771616) (not b!1770825) (not b!1771447) (not bm!111017) (not b!1772034) (not d!540913) b_and!134803 (not bm!111022) (not d!540695) (not d!541555) (not b!1772041) (not d!541397) (not b!1770360) (not d!540993) (not d!541123) (not b!1771010) (not bm!111031) (not bm!111052) (not d!541207) (not b!1771174) (not b!1772029) (not b!1771598) (not bm!111011) (not b!1771273) (not b!1771625) (not b!1771757) (not b!1771487) (not b!1771476) (not b!1770359) (not b!1771964) (not b!1771672) (not b_lambda!57631) (not b!1772007) (not b_lambda!57725) (not b!1771695) (not bm!111109) (not b!1770816) (not d!541193) (not b!1772057) (not b!1770919) (not bm!111066) (not d!540735) (not b!1771056) (not tb!107165) (not b!1770890) (not b!1771374) (not b!1770984) (not d!541205) (not b!1770812) (not b!1771236) (not tb!107093) (not b!1771552) (not d!541149) (not d!541315) (not b!1770640) (not d!541135) (not d!541473) (not b!1771432) (not d!540719) (not d!541051) (not b!1770708) (not b_next!49709) (not b!1771225) (not d!541089) (not b_next!49719) (not b!1770362) (not b!1771765) (not d!541393) (not b!1771620) (not b!1770623) (not b!1771534) (not b!1772033) (not b_lambda!57663) (not b!1772073) (not b!1771267) (not d!541015) (not d!540705) (not b!1771276) (not bm!111069) (not b!1771991) (not b_lambda!57743) (not b!1771611) (not b!1771016) (not b!1770404) (not b!1772005) (not b!1770906) (not b!1771698) (not b!1771697) (not b!1771107) (not b!1771287) (not b!1771355) (not b!1771569) (not b!1770983) (not bm!111091) (not b_lambda!57629) (not b!1772071) (not bm!111060) (not b!1770976) (not b!1771973) (not b!1772050) (not d!541249) (not d!541175) (not d!541331) (not b_lambda!57727) (not b!1771677) (not b!1772056) (not b!1770354) (not b_lambda!57635) (not b!1770822) (not b!1771988) (not b!1771070) (not b!1771167) (not b!1770696) (not b!1770351) (not b!1771270) (not b!1771173) (not b!1770618) (not b!1771214) (not d!541311) (not b!1771168) (not b!1771443) (not b_next!49711) (not d!540959) (not b!1771547) (not b!1772017) (not d!541163) (not b!1771968) (not tb!107173) (not b!1772039) (not b!1772079) (not tb!107243) (not b!1771504) (not b!1772010) (not d!540915) (not b!1770707) (not b!1772074) (not bm!111054) (not b!1771622) (not d!541173) (not d!541189) (not b!1770951) (not b!1771970) (not d!541363) (not d!541287) b_and!134831 (not b!1771617) (not b!1772053) (not d!541399) (not b!1770955) (not b!1771059) (not bm!111112) (not b!1772035) (not b!1770693) (not b!1770925) (not b!1771610) (not b!1772084) (not bs!404765) (not d!541097) (not bm!111058) (not b!1771051) (not b!1772021) (not d!541467) (not b!1771445) (not b!1772046) (not b!1771395) (not d!541567) (not b!1770829) (not b!1772055) (not b!1771673) (not b!1771675) (not b_lambda!57735) (not b!1770397) (not b!1770357) (not b!1770737) (not b!1771975) (not b!1771083) (not b!1770405) (not b!1771671) (not bm!111041) (not d!541243) (not b!1772030) (not b!1771488) (not b!1772076) (not b!1772089) (not b_next!49705) (not b!1772082) (not b_next!49707) (not b!1770978) (not b!1772072) (not b!1770333) (not b!1770964) (not b!1770785) (not b!1770789) (not d!541219) (not b!1771034) (not b!1770947) (not b!1771987) (not d!541355) (not b!1771577) (not b!1772042) (not d!541187) (not d!541283) (not b!1771288) (not bm!111023) (not b!1771751) (not bm!111049) (not d!541077) (not b!1771102) (not d!540953) (not bm!111086) (not b_lambda!57667) (not b!1771732) (not d!541277) (not b!1772048) (not b!1770909) (not b!1770942) (not b!1770713) (not b!1771960) (not b!1771773) (not b!1771162) (not d!540939) b_and!134797 (not b!1770705) (not b!1770920) (not bm!111110) (not b!1772038) (not b!1771071) (not b_lambda!57719) (not b!1770818) (not b!1771624) (not d!541575) (not b!1770946) (not d!541185) (not b!1771165) (not tb!107141) (not b!1770700) (not d!540873) (not d!540721) (not b!1770908) (not b!1772014) (not b!1771578) (not b!1772006) (not b!1771768) (not d!541079) (not b!1772019) (not b!1771678) tp_is_empty!7869 (not b!1770615) (not b!1770625) (not b!1771289) (not d!541268) (not b!1771011) (not b!1770701) (not b!1771144) (not b!1771535) (not b!1771078) (not d!541093) (not b!1770249) (not b!1770988) (not b!1770689) (not b!1770791) (not bm!110963) (not d!540871) b_and!134801 (not b!1771501) (not d!541201) (not b!1771669) (not b!1771127) (not b!1771211) (not b!1770394) (not b!1771451) (not b!1772023) (not d!541121) (not b_next!49727) (not d!541191) (not b!1771209) (not d!541499) (not d!540929) (not b!1770996) (not b!1772047) (not d!540975) (not tb!107189) (not b!1770989) (not b!1772070) (not b!1771449) (not bm!111009) (not b!1770252) (not d!540729) (not b!1771283) (not bm!111113) (not b!1771164) (not d!541305) (not b!1771226) (not b!1772049) (not b!1771542) (not b!1771972) (not b!1770332) (not tb!107181) (not b!1771020) (not b!1772080) (not b!1770358) (not b!1772016) (not d!541239) (not b_lambda!57721) (not b!1771044) (not b!1772031) (not b!1770703) (not bm!111111) (not b!1770924) (not b!1770642) (not b!1771702) (not b_next!49729) (not b!1771740) (not b!1772086) (not b!1770352) (not b!1770935) (not b!1771441) (not b!1771450) (not d!540943) (not b_lambda!57733) (not b!1770580) (not bs!404764) (not b!1770395) (not d!541459) (not b!1770574) (not b!1771387) (not b!1771013) (not b!1770361) (not b_lambda!57715) (not bm!111019) (not b!1771354) (not b!1771613) (not b!1770948) (not d!541663) (not d!541129) (not b!1771539) (not b!1771780) (not d!541049) (not d!541227) (not b!1771274))
(check-sat b_and!134829 (not b_next!49713) (not b_next!49703) b_and!134833 (not b_next!49721) b_and!134827 b_and!134805 b_and!134803 (not b_next!49711) b_and!134831 b_and!134797 (not b_next!49729) b_and!134799 b_and!134835 (not b_next!49709) (not b_next!49719) (not b_next!49705) (not b_next!49707) b_and!134801 (not b_next!49727))
