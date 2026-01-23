; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!169946 () Bool)

(assert start!169946)

(declare-fun b!1729696 () Bool)

(declare-fun b_free!47299 () Bool)

(declare-fun b_next!48003 () Bool)

(assert (=> b!1729696 (= b_free!47299 (not b_next!48003))))

(declare-fun tp!493323 () Bool)

(declare-fun b_and!127351 () Bool)

(assert (=> b!1729696 (= tp!493323 b_and!127351)))

(declare-fun b_free!47301 () Bool)

(declare-fun b_next!48005 () Bool)

(assert (=> b!1729696 (= b_free!47301 (not b_next!48005))))

(declare-fun tp!493321 () Bool)

(declare-fun b_and!127353 () Bool)

(assert (=> b!1729696 (= tp!493321 b_and!127353)))

(declare-fun b!1729670 () Bool)

(declare-fun b_free!47303 () Bool)

(declare-fun b_next!48007 () Bool)

(assert (=> b!1729670 (= b_free!47303 (not b_next!48007))))

(declare-fun tp!493326 () Bool)

(declare-fun b_and!127355 () Bool)

(assert (=> b!1729670 (= tp!493326 b_and!127355)))

(declare-fun b_free!47305 () Bool)

(declare-fun b_next!48009 () Bool)

(assert (=> b!1729670 (= b_free!47305 (not b_next!48009))))

(declare-fun tp!493332 () Bool)

(declare-fun b_and!127357 () Bool)

(assert (=> b!1729670 (= tp!493332 b_and!127357)))

(declare-fun b!1729691 () Bool)

(declare-fun b_free!47307 () Bool)

(declare-fun b_next!48011 () Bool)

(assert (=> b!1729691 (= b_free!47307 (not b_next!48011))))

(declare-fun tp!493325 () Bool)

(declare-fun b_and!127359 () Bool)

(assert (=> b!1729691 (= tp!493325 b_and!127359)))

(declare-fun b_free!47309 () Bool)

(declare-fun b_next!48013 () Bool)

(assert (=> b!1729691 (= b_free!47309 (not b_next!48013))))

(declare-fun tp!493329 () Bool)

(declare-fun b_and!127361 () Bool)

(assert (=> b!1729691 (= tp!493329 b_and!127361)))

(declare-fun b!1729712 () Bool)

(declare-fun e!1106605 () Bool)

(assert (=> b!1729712 (= e!1106605 true)))

(declare-fun b!1729711 () Bool)

(declare-fun e!1106604 () Bool)

(assert (=> b!1729711 (= e!1106604 e!1106605)))

(declare-fun b!1729710 () Bool)

(declare-fun e!1106603 () Bool)

(assert (=> b!1729710 (= e!1106603 e!1106604)))

(declare-fun b!1729695 () Bool)

(assert (=> b!1729695 e!1106603))

(assert (= b!1729711 b!1729712))

(assert (= b!1729710 b!1729711))

(assert (= b!1729695 b!1729710))

(declare-fun order!11671 () Int)

(declare-fun lambda!69338 () Int)

(declare-fun order!11673 () Int)

(declare-datatypes ((List!19032 0))(
  ( (Nil!18962) (Cons!18962 (h!24363 (_ BitVec 16)) (t!160559 List!19032)) )
))
(declare-datatypes ((TokenValue!3455 0))(
  ( (FloatLiteralValue!6910 (text!24630 List!19032)) (TokenValueExt!3454 (__x!12212 Int)) (Broken!17275 (value!105549 List!19032)) (Object!3524) (End!3455) (Def!3455) (Underscore!3455) (Match!3455) (Else!3455) (Error!3455) (Case!3455) (If!3455) (Extends!3455) (Abstract!3455) (Class!3455) (Val!3455) (DelimiterValue!6910 (del!3515 List!19032)) (KeywordValue!3461 (value!105550 List!19032)) (CommentValue!6910 (value!105551 List!19032)) (WhitespaceValue!6910 (value!105552 List!19032)) (IndentationValue!3455 (value!105553 List!19032)) (String!21606) (Int32!3455) (Broken!17276 (value!105554 List!19032)) (Boolean!3456) (Unit!32816) (OperatorValue!3458 (op!3515 List!19032)) (IdentifierValue!6910 (value!105555 List!19032)) (IdentifierValue!6911 (value!105556 List!19032)) (WhitespaceValue!6911 (value!105557 List!19032)) (True!6910) (False!6910) (Broken!17277 (value!105558 List!19032)) (Broken!17278 (value!105559 List!19032)) (True!6911) (RightBrace!3455) (RightBracket!3455) (Colon!3455) (Null!3455) (Comma!3455) (LeftBracket!3455) (False!6911) (LeftBrace!3455) (ImaginaryLiteralValue!3455 (text!24631 List!19032)) (StringLiteralValue!10365 (value!105560 List!19032)) (EOFValue!3455 (value!105561 List!19032)) (IdentValue!3455 (value!105562 List!19032)) (DelimiterValue!6911 (value!105563 List!19032)) (DedentValue!3455 (value!105564 List!19032)) (NewLineValue!3455 (value!105565 List!19032)) (IntegerValue!10365 (value!105566 (_ BitVec 32)) (text!24632 List!19032)) (IntegerValue!10366 (value!105567 Int) (text!24633 List!19032)) (Times!3455) (Or!3455) (Equal!3455) (Minus!3455) (Broken!17279 (value!105568 List!19032)) (And!3455) (Div!3455) (LessEqual!3455) (Mod!3455) (Concat!8148) (Not!3455) (Plus!3455) (SpaceValue!3455 (value!105569 List!19032)) (IntegerValue!10367 (value!105570 Int) (text!24634 List!19032)) (StringLiteralValue!10366 (text!24635 List!19032)) (FloatLiteralValue!6911 (text!24636 List!19032)) (BytesLiteralValue!3455 (value!105571 List!19032)) (CommentValue!6911 (value!105572 List!19032)) (StringLiteralValue!10367 (value!105573 List!19032)) (ErrorTokenValue!3455 (msg!3516 List!19032)) )
))
(declare-datatypes ((C!9560 0))(
  ( (C!9561 (val!5376 Int)) )
))
(declare-datatypes ((List!19033 0))(
  ( (Nil!18963) (Cons!18963 (h!24364 C!9560) (t!160560 List!19033)) )
))
(declare-datatypes ((Regex!4693 0))(
  ( (ElementMatch!4693 (c!282636 C!9560)) (Concat!8149 (regOne!9898 Regex!4693) (regTwo!9898 Regex!4693)) (EmptyExpr!4693) (Star!4693 (reg!5022 Regex!4693)) (EmptyLang!4693) (Union!4693 (regOne!9899 Regex!4693) (regTwo!9899 Regex!4693)) )
))
(declare-datatypes ((String!21607 0))(
  ( (String!21608 (value!105574 String)) )
))
(declare-datatypes ((IArray!12619 0))(
  ( (IArray!12620 (innerList!6367 List!19033)) )
))
(declare-datatypes ((Conc!6307 0))(
  ( (Node!6307 (left!15143 Conc!6307) (right!15473 Conc!6307) (csize!12844 Int) (cheight!6518 Int)) (Leaf!9210 (xs!9183 IArray!12619) (csize!12845 Int)) (Empty!6307) )
))
(declare-datatypes ((BalanceConc!12558 0))(
  ( (BalanceConc!12559 (c!282637 Conc!6307)) )
))
(declare-datatypes ((TokenValueInjection!6570 0))(
  ( (TokenValueInjection!6571 (toValue!4872 Int) (toChars!4731 Int)) )
))
(declare-datatypes ((Rule!6530 0))(
  ( (Rule!6531 (regex!3365 Regex!4693) (tag!3689 String!21607) (isSeparator!3365 Bool) (transformation!3365 TokenValueInjection!6570)) )
))
(declare-datatypes ((Token!6296 0))(
  ( (Token!6297 (value!105575 TokenValue!3455) (rule!5339 Rule!6530) (size!15066 Int) (originalCharacters!4179 List!19033)) )
))
(declare-datatypes ((tuple2!18642 0))(
  ( (tuple2!18643 (_1!10723 Token!6296) (_2!10723 List!19033)) )
))
(declare-fun lt!663281 () tuple2!18642)

(declare-fun dynLambda!8826 (Int Int) Int)

(declare-fun dynLambda!8827 (Int Int) Int)

(assert (=> b!1729712 (< (dynLambda!8826 order!11671 (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281))))) (dynLambda!8827 order!11673 lambda!69338))))

(declare-fun order!11675 () Int)

(declare-fun dynLambda!8828 (Int Int) Int)

(assert (=> b!1729712 (< (dynLambda!8828 order!11675 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281))))) (dynLambda!8827 order!11673 lambda!69338))))

(declare-fun e!1106585 () Bool)

(assert (=> b!1729670 (= e!1106585 (and tp!493326 tp!493332))))

(declare-fun b!1729671 () Bool)

(declare-fun e!1106591 () Bool)

(declare-fun suffix!1421 () List!19033)

(assert (=> b!1729671 (= e!1106591 (not (= suffix!1421 Nil!18963)))))

(declare-fun b!1729672 () Bool)

(declare-fun e!1106574 () Bool)

(declare-fun e!1106577 () Bool)

(assert (=> b!1729672 (= e!1106574 e!1106577)))

(declare-fun res!776703 () Bool)

(assert (=> b!1729672 (=> res!776703 e!1106577)))

(declare-fun lt!663298 () List!19033)

(declare-datatypes ((Option!3754 0))(
  ( (None!3753) (Some!3753 (v!25170 tuple2!18642)) )
))
(declare-fun lt!663282 () Option!3754)

(assert (=> b!1729672 (= res!776703 (or (not (= lt!663298 (_2!10723 lt!663281))) (not (= lt!663282 (Some!3753 (tuple2!18643 (_1!10723 lt!663281) lt!663298))))))))

(assert (=> b!1729672 (= (_2!10723 lt!663281) lt!663298)))

(declare-datatypes ((Unit!32817 0))(
  ( (Unit!32818) )
))
(declare-fun lt!663289 () Unit!32817)

(declare-fun lt!663276 () List!19033)

(declare-fun lt!663297 () List!19033)

(declare-fun lemmaSamePrefixThenSameSuffix!750 (List!19033 List!19033 List!19033 List!19033 List!19033) Unit!32817)

(assert (=> b!1729672 (= lt!663289 (lemmaSamePrefixThenSameSuffix!750 lt!663297 (_2!10723 lt!663281) lt!663297 lt!663298 lt!663276))))

(declare-fun getSuffix!800 (List!19033 List!19033) List!19033)

(assert (=> b!1729672 (= lt!663298 (getSuffix!800 lt!663276 lt!663297))))

(declare-fun lt!663278 () TokenValue!3455)

(declare-fun lt!663299 () Int)

(assert (=> b!1729672 (= lt!663282 (Some!3753 (tuple2!18643 (Token!6297 lt!663278 (rule!5339 (_1!10723 lt!663281)) lt!663299 lt!663297) (_2!10723 lt!663281))))))

(declare-datatypes ((LexerInterface!2994 0))(
  ( (LexerInterfaceExt!2991 (__x!12213 Int)) (Lexer!2992) )
))
(declare-fun thiss!24550 () LexerInterface!2994)

(declare-fun maxPrefixOneRule!924 (LexerInterface!2994 Rule!6530 List!19033) Option!3754)

(assert (=> b!1729672 (= lt!663282 (maxPrefixOneRule!924 thiss!24550 (rule!5339 (_1!10723 lt!663281)) lt!663276))))

(declare-fun size!15067 (List!19033) Int)

(assert (=> b!1729672 (= lt!663299 (size!15067 lt!663297))))

(declare-fun apply!5170 (TokenValueInjection!6570 BalanceConc!12558) TokenValue!3455)

(declare-fun seqFromList!2339 (List!19033) BalanceConc!12558)

(assert (=> b!1729672 (= lt!663278 (apply!5170 (transformation!3365 (rule!5339 (_1!10723 lt!663281))) (seqFromList!2339 lt!663297)))))

(declare-fun lt!663304 () Unit!32817)

(declare-datatypes ((List!19034 0))(
  ( (Nil!18964) (Cons!18964 (h!24365 Rule!6530) (t!160561 List!19034)) )
))
(declare-fun rules!3447 () List!19034)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!323 (LexerInterface!2994 List!19034 List!19033 List!19033 List!19033 Rule!6530) Unit!32817)

(assert (=> b!1729672 (= lt!663304 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!323 thiss!24550 rules!3447 lt!663297 lt!663276 (_2!10723 lt!663281) (rule!5339 (_1!10723 lt!663281))))))

(declare-fun tp!493324 () Bool)

(declare-fun e!1106583 () Bool)

(declare-fun b!1729673 () Bool)

(declare-fun token!523 () Token!6296)

(declare-fun e!1106586 () Bool)

(declare-fun inv!24518 (String!21607) Bool)

(declare-fun inv!24523 (TokenValueInjection!6570) Bool)

(assert (=> b!1729673 (= e!1106586 (and tp!493324 (inv!24518 (tag!3689 (rule!5339 token!523))) (inv!24523 (transformation!3365 (rule!5339 token!523))) e!1106583))))

(declare-fun b!1729674 () Bool)

(declare-fun e!1106587 () Bool)

(declare-fun e!1106595 () Bool)

(assert (=> b!1729674 (= e!1106587 e!1106595)))

(declare-fun res!776720 () Bool)

(assert (=> b!1729674 (=> res!776720 e!1106595)))

(declare-fun lt!663277 () Regex!4693)

(declare-fun lt!663279 () List!19033)

(declare-fun prefixMatch!578 (Regex!4693 List!19033) Bool)

(assert (=> b!1729674 (= res!776720 (prefixMatch!578 lt!663277 lt!663279))))

(declare-fun lt!663294 () List!19033)

(declare-fun ++!5190 (List!19033 List!19033) List!19033)

(declare-fun head!3932 (List!19033) C!9560)

(assert (=> b!1729674 (= lt!663279 (++!5190 lt!663294 (Cons!18963 (head!3932 suffix!1421) Nil!18963)))))

(declare-fun rulesRegex!723 (LexerInterface!2994 List!19034) Regex!4693)

(assert (=> b!1729674 (= lt!663277 (rulesRegex!723 thiss!24550 rules!3447))))

(declare-fun b!1729675 () Bool)

(declare-fun tp!493322 () Bool)

(declare-fun e!1106571 () Bool)

(declare-fun inv!21 (TokenValue!3455) Bool)

(assert (=> b!1729675 (= e!1106571 (and (inv!21 (value!105575 token!523)) e!1106586 tp!493322))))

(declare-fun b!1729676 () Bool)

(declare-fun e!1106579 () Bool)

(declare-fun e!1106573 () Bool)

(assert (=> b!1729676 (= e!1106579 e!1106573)))

(declare-fun res!776717 () Bool)

(assert (=> b!1729676 (=> (not res!776717) (not e!1106573))))

(declare-fun lt!663275 () tuple2!18642)

(assert (=> b!1729676 (= res!776717 (= (_1!10723 lt!663275) token!523))))

(declare-fun lt!663270 () Option!3754)

(declare-fun get!5654 (Option!3754) tuple2!18642)

(assert (=> b!1729676 (= lt!663275 (get!5654 lt!663270))))

(declare-fun b!1729677 () Bool)

(declare-fun res!776709 () Bool)

(declare-fun e!1106569 () Bool)

(assert (=> b!1729677 (=> (not res!776709) (not e!1106569))))

(declare-fun isEmpty!11929 (List!19034) Bool)

(assert (=> b!1729677 (= res!776709 (not (isEmpty!11929 rules!3447)))))

(declare-fun b!1729678 () Bool)

(declare-fun e!1106590 () Bool)

(assert (=> b!1729678 (= e!1106595 e!1106590)))

(declare-fun res!776707 () Bool)

(assert (=> b!1729678 (=> res!776707 e!1106590)))

(declare-fun isPrefix!1606 (List!19033 List!19033) Bool)

(assert (=> b!1729678 (= res!776707 (not (isPrefix!1606 lt!663297 lt!663276)))))

(assert (=> b!1729678 (isPrefix!1606 lt!663297 (++!5190 lt!663297 (_2!10723 lt!663281)))))

(declare-fun lt!663296 () Unit!32817)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1116 (List!19033 List!19033) Unit!32817)

(assert (=> b!1729678 (= lt!663296 (lemmaConcatTwoListThenFirstIsPrefix!1116 lt!663297 (_2!10723 lt!663281)))))

(declare-fun lt!663287 () BalanceConc!12558)

(declare-fun list!7666 (BalanceConc!12558) List!19033)

(assert (=> b!1729678 (= lt!663297 (list!7666 lt!663287))))

(declare-fun charsOf!2014 (Token!6296) BalanceConc!12558)

(assert (=> b!1729678 (= lt!663287 (charsOf!2014 (_1!10723 lt!663281)))))

(declare-fun e!1106575 () Bool)

(assert (=> b!1729678 e!1106575))

(declare-fun res!776722 () Bool)

(assert (=> b!1729678 (=> (not res!776722) (not e!1106575))))

(declare-datatypes ((Option!3755 0))(
  ( (None!3754) (Some!3754 (v!25171 Rule!6530)) )
))
(declare-fun lt!663300 () Option!3755)

(declare-fun isDefined!3097 (Option!3755) Bool)

(assert (=> b!1729678 (= res!776722 (isDefined!3097 lt!663300))))

(declare-fun getRuleFromTag!415 (LexerInterface!2994 List!19034 String!21607) Option!3755)

(assert (=> b!1729678 (= lt!663300 (getRuleFromTag!415 thiss!24550 rules!3447 (tag!3689 (rule!5339 (_1!10723 lt!663281)))))))

(declare-fun lt!663302 () Unit!32817)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!415 (LexerInterface!2994 List!19034 List!19033 Token!6296) Unit!32817)

(assert (=> b!1729678 (= lt!663302 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!415 thiss!24550 rules!3447 lt!663276 (_1!10723 lt!663281)))))

(declare-fun lt!663288 () Option!3754)

(assert (=> b!1729678 (= lt!663281 (get!5654 lt!663288))))

(declare-fun lt!663274 () Unit!32817)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!518 (LexerInterface!2994 List!19034 List!19033 List!19033) Unit!32817)

(assert (=> b!1729678 (= lt!663274 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!518 thiss!24550 rules!3447 lt!663294 suffix!1421))))

(declare-fun maxPrefix!1548 (LexerInterface!2994 List!19034 List!19033) Option!3754)

(assert (=> b!1729678 (= lt!663288 (maxPrefix!1548 thiss!24550 rules!3447 lt!663276))))

(assert (=> b!1729678 (isPrefix!1606 lt!663294 lt!663276)))

(declare-fun lt!663293 () Unit!32817)

(assert (=> b!1729678 (= lt!663293 (lemmaConcatTwoListThenFirstIsPrefix!1116 lt!663294 suffix!1421))))

(assert (=> b!1729678 (= lt!663276 (++!5190 lt!663294 suffix!1421))))

(declare-fun b!1729679 () Bool)

(declare-fun e!1106588 () Bool)

(declare-fun e!1106572 () Bool)

(assert (=> b!1729679 (= e!1106588 e!1106572)))

(declare-fun res!776714 () Bool)

(assert (=> b!1729679 (=> res!776714 e!1106572)))

(declare-fun dynLambda!8829 (Int TokenValue!3455) BalanceConc!12558)

(declare-fun dynLambda!8830 (Int BalanceConc!12558) TokenValue!3455)

(assert (=> b!1729679 (= res!776714 (not (= (list!7666 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (dynLambda!8830 (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) lt!663287))) lt!663297)))))

(declare-fun lt!663286 () Unit!32817)

(declare-fun lemmaSemiInverse!511 (TokenValueInjection!6570 BalanceConc!12558) Unit!32817)

(assert (=> b!1729679 (= lt!663286 (lemmaSemiInverse!511 (transformation!3365 (rule!5339 (_1!10723 lt!663281))) lt!663287))))

(declare-fun b!1729681 () Bool)

(declare-fun e!1106581 () Bool)

(declare-fun e!1106594 () Bool)

(assert (=> b!1729681 (= e!1106581 e!1106594)))

(declare-fun res!776704 () Bool)

(assert (=> b!1729681 (=> res!776704 e!1106594)))

(declare-fun lt!663272 () List!19033)

(assert (=> b!1729681 (= res!776704 (not (= lt!663272 suffix!1421)))))

(assert (=> b!1729681 (= suffix!1421 lt!663272)))

(declare-fun lt!663295 () Unit!32817)

(assert (=> b!1729681 (= lt!663295 (lemmaSamePrefixThenSameSuffix!750 lt!663294 suffix!1421 lt!663294 lt!663272 lt!663276))))

(assert (=> b!1729681 (= lt!663272 (getSuffix!800 lt!663276 lt!663294))))

(declare-fun matchR!2167 (Regex!4693 List!19033) Bool)

(assert (=> b!1729681 (matchR!2167 lt!663277 lt!663297)))

(declare-fun lt!663301 () Unit!32817)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!114 (LexerInterface!2994 List!19034 List!19033 Token!6296 Rule!6530 List!19033) Unit!32817)

(assert (=> b!1729681 (= lt!663301 (lemmaMaxPrefixThenMatchesRulesRegex!114 thiss!24550 rules!3447 lt!663276 (_1!10723 lt!663281) (rule!5339 (_1!10723 lt!663281)) (_2!10723 lt!663281)))))

(declare-fun b!1729682 () Bool)

(assert (=> b!1729682 (= e!1106594 e!1106591)))

(declare-fun res!776712 () Bool)

(assert (=> b!1729682 (=> res!776712 e!1106591)))

(assert (=> b!1729682 (= res!776712 (not (isPrefix!1606 lt!663279 lt!663276)))))

(assert (=> b!1729682 (isPrefix!1606 (++!5190 lt!663294 (Cons!18963 (head!3932 lt!663272) Nil!18963)) lt!663276)))

(declare-fun lt!663284 () Unit!32817)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!201 (List!19033 List!19033) Unit!32817)

(assert (=> b!1729682 (= lt!663284 (lemmaAddHeadSuffixToPrefixStillPrefix!201 lt!663294 lt!663276))))

(declare-fun b!1729683 () Bool)

(assert (=> b!1729683 (= e!1106572 e!1106574)))

(declare-fun res!776719 () Bool)

(assert (=> b!1729683 (=> res!776719 e!1106574)))

(declare-fun lt!663292 () TokenValue!3455)

(declare-fun lt!663273 () Int)

(assert (=> b!1729683 (= res!776719 (not (= lt!663288 (Some!3753 (tuple2!18643 (Token!6297 lt!663292 (rule!5339 (_1!10723 lt!663281)) lt!663273 lt!663297) (_2!10723 lt!663281))))))))

(declare-fun size!15068 (BalanceConc!12558) Int)

(assert (=> b!1729683 (= lt!663273 (size!15068 lt!663287))))

(assert (=> b!1729683 (= lt!663292 (apply!5170 (transformation!3365 (rule!5339 (_1!10723 lt!663281))) lt!663287))))

(declare-fun lt!663283 () Unit!32817)

(declare-fun lemmaCharactersSize!437 (Token!6296) Unit!32817)

(assert (=> b!1729683 (= lt!663283 (lemmaCharactersSize!437 (_1!10723 lt!663281)))))

(declare-fun lt!663291 () Unit!32817)

(declare-fun lemmaEqSameImage!290 (TokenValueInjection!6570 BalanceConc!12558 BalanceConc!12558) Unit!32817)

(assert (=> b!1729683 (= lt!663291 (lemmaEqSameImage!290 (transformation!3365 (rule!5339 (_1!10723 lt!663281))) lt!663287 (seqFromList!2339 (originalCharacters!4179 (_1!10723 lt!663281)))))))

(declare-fun b!1729684 () Bool)

(declare-fun e!1106593 () Bool)

(declare-fun e!1106584 () Bool)

(declare-fun tp!493328 () Bool)

(assert (=> b!1729684 (= e!1106593 (and e!1106584 tp!493328))))

(declare-fun rule!422 () Rule!6530)

(declare-fun b!1729685 () Bool)

(declare-fun tp!493330 () Bool)

(declare-fun e!1106580 () Bool)

(assert (=> b!1729685 (= e!1106580 (and tp!493330 (inv!24518 (tag!3689 rule!422)) (inv!24523 (transformation!3365 rule!422)) e!1106585))))

(declare-fun b!1729686 () Bool)

(declare-fun res!776724 () Bool)

(assert (=> b!1729686 (=> (not res!776724) (not e!1106569))))

(declare-fun rulesInvariant!2663 (LexerInterface!2994 List!19034) Bool)

(assert (=> b!1729686 (= res!776724 (rulesInvariant!2663 thiss!24550 rules!3447))))

(declare-fun b!1729687 () Bool)

(declare-fun res!776706 () Bool)

(assert (=> b!1729687 (=> res!776706 e!1106587)))

(declare-fun isEmpty!11930 (List!19033) Bool)

(assert (=> b!1729687 (= res!776706 (isEmpty!11930 suffix!1421))))

(declare-fun b!1729688 () Bool)

(declare-fun res!776715 () Bool)

(assert (=> b!1729688 (=> (not res!776715) (not e!1106573))))

(assert (=> b!1729688 (= res!776715 (= (rule!5339 token!523) rule!422))))

(declare-fun b!1729689 () Bool)

(declare-fun e!1106578 () Bool)

(declare-fun tp_is_empty!7629 () Bool)

(declare-fun tp!493331 () Bool)

(assert (=> b!1729689 (= e!1106578 (and tp_is_empty!7629 tp!493331))))

(declare-fun b!1729690 () Bool)

(declare-fun res!776702 () Bool)

(assert (=> b!1729690 (=> (not res!776702) (not e!1106569))))

(declare-fun contains!3387 (List!19034 Rule!6530) Bool)

(assert (=> b!1729690 (= res!776702 (contains!3387 rules!3447 rule!422))))

(declare-fun e!1106589 () Bool)

(assert (=> b!1729691 (= e!1106589 (and tp!493325 tp!493329))))

(declare-fun b!1729692 () Bool)

(assert (=> b!1729692 (= e!1106573 (not e!1106587))))

(declare-fun res!776708 () Bool)

(assert (=> b!1729692 (=> res!776708 e!1106587)))

(assert (=> b!1729692 (= res!776708 (not (matchR!2167 (regex!3365 rule!422) lt!663294)))))

(declare-fun ruleValid!864 (LexerInterface!2994 Rule!6530) Bool)

(assert (=> b!1729692 (ruleValid!864 thiss!24550 rule!422)))

(declare-fun lt!663303 () Unit!32817)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!388 (LexerInterface!2994 Rule!6530 List!19034) Unit!32817)

(assert (=> b!1729692 (= lt!663303 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!388 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1729693 () Bool)

(declare-fun res!776716 () Bool)

(assert (=> b!1729693 (=> res!776716 e!1106572)))

(assert (=> b!1729693 (= res!776716 (not (= lt!663287 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (value!105575 (_1!10723 lt!663281))))))))

(declare-fun b!1729694 () Bool)

(declare-fun res!776711 () Bool)

(assert (=> b!1729694 (=> (not res!776711) (not e!1106573))))

(assert (=> b!1729694 (= res!776711 (isEmpty!11930 (_2!10723 lt!663275)))))

(assert (=> b!1729695 (= e!1106590 e!1106588)))

(declare-fun res!776723 () Bool)

(assert (=> b!1729695 (=> res!776723 e!1106588)))

(declare-fun Forall!740 (Int) Bool)

(assert (=> b!1729695 (= res!776723 (not (Forall!740 lambda!69338)))))

(declare-fun lt!663280 () Unit!32817)

(declare-fun lemmaInv!572 (TokenValueInjection!6570) Unit!32817)

(assert (=> b!1729695 (= lt!663280 (lemmaInv!572 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))))))

(assert (=> b!1729696 (= e!1106583 (and tp!493323 tp!493321))))

(declare-fun b!1729697 () Bool)

(assert (=> b!1729697 (= e!1106569 e!1106579)))

(declare-fun res!776705 () Bool)

(assert (=> b!1729697 (=> (not res!776705) (not e!1106579))))

(declare-fun isDefined!3098 (Option!3754) Bool)

(assert (=> b!1729697 (= res!776705 (isDefined!3098 lt!663270))))

(assert (=> b!1729697 (= lt!663270 (maxPrefix!1548 thiss!24550 rules!3447 lt!663294))))

(declare-fun lt!663285 () BalanceConc!12558)

(assert (=> b!1729697 (= lt!663294 (list!7666 lt!663285))))

(assert (=> b!1729697 (= lt!663285 (charsOf!2014 token!523))))

(declare-fun tp!493327 () Bool)

(declare-fun b!1729698 () Bool)

(assert (=> b!1729698 (= e!1106584 (and tp!493327 (inv!24518 (tag!3689 (h!24365 rules!3447))) (inv!24523 (transformation!3365 (h!24365 rules!3447))) e!1106589))))

(declare-fun b!1729699 () Bool)

(declare-fun res!776713 () Bool)

(assert (=> b!1729699 (=> res!776713 e!1106590)))

(assert (=> b!1729699 (= res!776713 (not (matchR!2167 (regex!3365 (rule!5339 (_1!10723 lt!663281))) lt!663297)))))

(declare-fun b!1729700 () Bool)

(assert (=> b!1729700 (= e!1106577 e!1106581)))

(declare-fun res!776718 () Bool)

(assert (=> b!1729700 (=> res!776718 e!1106581)))

(assert (=> b!1729700 (= res!776718 (<= lt!663273 (size!15068 lt!663285)))))

(assert (=> b!1729700 (matchR!2167 lt!663277 lt!663294)))

(declare-fun lt!663271 () Unit!32817)

(assert (=> b!1729700 (= lt!663271 (lemmaMaxPrefixThenMatchesRulesRegex!114 thiss!24550 rules!3447 lt!663294 token!523 rule!422 Nil!18963))))

(declare-fun b!1729701 () Bool)

(declare-fun e!1106570 () Bool)

(declare-fun lt!663290 () Rule!6530)

(assert (=> b!1729701 (= e!1106570 (= (rule!5339 (_1!10723 lt!663281)) lt!663290))))

(declare-fun res!776721 () Bool)

(assert (=> start!169946 (=> (not res!776721) (not e!1106569))))

(get-info :version)

(assert (=> start!169946 (= res!776721 ((_ is Lexer!2992) thiss!24550))))

(assert (=> start!169946 e!1106569))

(assert (=> start!169946 e!1106578))

(assert (=> start!169946 e!1106580))

(assert (=> start!169946 true))

(declare-fun inv!24524 (Token!6296) Bool)

(assert (=> start!169946 (and (inv!24524 token!523) e!1106571)))

(assert (=> start!169946 e!1106593))

(declare-fun b!1729680 () Bool)

(assert (=> b!1729680 (= e!1106575 e!1106570)))

(declare-fun res!776710 () Bool)

(assert (=> b!1729680 (=> (not res!776710) (not e!1106570))))

(assert (=> b!1729680 (= res!776710 (matchR!2167 (regex!3365 lt!663290) (list!7666 (charsOf!2014 (_1!10723 lt!663281)))))))

(declare-fun get!5655 (Option!3755) Rule!6530)

(assert (=> b!1729680 (= lt!663290 (get!5655 lt!663300))))

(assert (= (and start!169946 res!776721) b!1729677))

(assert (= (and b!1729677 res!776709) b!1729686))

(assert (= (and b!1729686 res!776724) b!1729690))

(assert (= (and b!1729690 res!776702) b!1729697))

(assert (= (and b!1729697 res!776705) b!1729676))

(assert (= (and b!1729676 res!776717) b!1729694))

(assert (= (and b!1729694 res!776711) b!1729688))

(assert (= (and b!1729688 res!776715) b!1729692))

(assert (= (and b!1729692 (not res!776708)) b!1729687))

(assert (= (and b!1729687 (not res!776706)) b!1729674))

(assert (= (and b!1729674 (not res!776720)) b!1729678))

(assert (= (and b!1729678 res!776722) b!1729680))

(assert (= (and b!1729680 res!776710) b!1729701))

(assert (= (and b!1729678 (not res!776707)) b!1729699))

(assert (= (and b!1729699 (not res!776713)) b!1729695))

(assert (= (and b!1729695 (not res!776723)) b!1729679))

(assert (= (and b!1729679 (not res!776714)) b!1729693))

(assert (= (and b!1729693 (not res!776716)) b!1729683))

(assert (= (and b!1729683 (not res!776719)) b!1729672))

(assert (= (and b!1729672 (not res!776703)) b!1729700))

(assert (= (and b!1729700 (not res!776718)) b!1729681))

(assert (= (and b!1729681 (not res!776704)) b!1729682))

(assert (= (and b!1729682 (not res!776712)) b!1729671))

(assert (= (and start!169946 ((_ is Cons!18963) suffix!1421)) b!1729689))

(assert (= b!1729685 b!1729670))

(assert (= start!169946 b!1729685))

(assert (= b!1729673 b!1729696))

(assert (= b!1729675 b!1729673))

(assert (= start!169946 b!1729675))

(assert (= b!1729698 b!1729691))

(assert (= b!1729684 b!1729698))

(assert (= (and start!169946 ((_ is Cons!18964) rules!3447)) b!1729684))

(declare-fun b_lambda!55139 () Bool)

(assert (=> (not b_lambda!55139) (not b!1729679)))

(declare-fun t!160542 () Bool)

(declare-fun tb!102945 () Bool)

(assert (=> (and b!1729696 (= (toChars!4731 (transformation!3365 (rule!5339 token!523))) (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281))))) t!160542) tb!102945))

(declare-fun e!1106608 () Bool)

(declare-fun b!1729717 () Bool)

(declare-fun tp!493335 () Bool)

(declare-fun inv!24525 (Conc!6307) Bool)

(assert (=> b!1729717 (= e!1106608 (and (inv!24525 (c!282637 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (dynLambda!8830 (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) lt!663287)))) tp!493335))))

(declare-fun result!123772 () Bool)

(declare-fun inv!24526 (BalanceConc!12558) Bool)

(assert (=> tb!102945 (= result!123772 (and (inv!24526 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (dynLambda!8830 (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) lt!663287))) e!1106608))))

(assert (= tb!102945 b!1729717))

(declare-fun m!2137449 () Bool)

(assert (=> b!1729717 m!2137449))

(declare-fun m!2137451 () Bool)

(assert (=> tb!102945 m!2137451))

(assert (=> b!1729679 t!160542))

(declare-fun b_and!127363 () Bool)

(assert (= b_and!127353 (and (=> t!160542 result!123772) b_and!127363)))

(declare-fun t!160544 () Bool)

(declare-fun tb!102947 () Bool)

(assert (=> (and b!1729670 (= (toChars!4731 (transformation!3365 rule!422)) (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281))))) t!160544) tb!102947))

(declare-fun result!123776 () Bool)

(assert (= result!123776 result!123772))

(assert (=> b!1729679 t!160544))

(declare-fun b_and!127365 () Bool)

(assert (= b_and!127357 (and (=> t!160544 result!123776) b_and!127365)))

(declare-fun tb!102949 () Bool)

(declare-fun t!160546 () Bool)

(assert (=> (and b!1729691 (= (toChars!4731 (transformation!3365 (h!24365 rules!3447))) (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281))))) t!160546) tb!102949))

(declare-fun result!123778 () Bool)

(assert (= result!123778 result!123772))

(assert (=> b!1729679 t!160546))

(declare-fun b_and!127367 () Bool)

(assert (= b_and!127361 (and (=> t!160546 result!123778) b_and!127367)))

(declare-fun b_lambda!55141 () Bool)

(assert (=> (not b_lambda!55141) (not b!1729679)))

(declare-fun t!160548 () Bool)

(declare-fun tb!102951 () Bool)

(assert (=> (and b!1729696 (= (toValue!4872 (transformation!3365 (rule!5339 token!523))) (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281))))) t!160548) tb!102951))

(declare-fun result!123780 () Bool)

(assert (=> tb!102951 (= result!123780 (inv!21 (dynLambda!8830 (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) lt!663287)))))

(declare-fun m!2137453 () Bool)

(assert (=> tb!102951 m!2137453))

(assert (=> b!1729679 t!160548))

(declare-fun b_and!127369 () Bool)

(assert (= b_and!127351 (and (=> t!160548 result!123780) b_and!127369)))

(declare-fun t!160550 () Bool)

(declare-fun tb!102953 () Bool)

(assert (=> (and b!1729670 (= (toValue!4872 (transformation!3365 rule!422)) (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281))))) t!160550) tb!102953))

(declare-fun result!123784 () Bool)

(assert (= result!123784 result!123780))

(assert (=> b!1729679 t!160550))

(declare-fun b_and!127371 () Bool)

(assert (= b_and!127355 (and (=> t!160550 result!123784) b_and!127371)))

(declare-fun tb!102955 () Bool)

(declare-fun t!160552 () Bool)

(assert (=> (and b!1729691 (= (toValue!4872 (transformation!3365 (h!24365 rules!3447))) (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281))))) t!160552) tb!102955))

(declare-fun result!123786 () Bool)

(assert (= result!123786 result!123780))

(assert (=> b!1729679 t!160552))

(declare-fun b_and!127373 () Bool)

(assert (= b_and!127359 (and (=> t!160552 result!123786) b_and!127373)))

(declare-fun b_lambda!55143 () Bool)

(assert (=> (not b_lambda!55143) (not b!1729693)))

(declare-fun t!160554 () Bool)

(declare-fun tb!102957 () Bool)

(assert (=> (and b!1729696 (= (toChars!4731 (transformation!3365 (rule!5339 token!523))) (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281))))) t!160554) tb!102957))

(declare-fun b!1729720 () Bool)

(declare-fun e!1106612 () Bool)

(declare-fun tp!493336 () Bool)

(assert (=> b!1729720 (= e!1106612 (and (inv!24525 (c!282637 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (value!105575 (_1!10723 lt!663281))))) tp!493336))))

(declare-fun result!123788 () Bool)

(assert (=> tb!102957 (= result!123788 (and (inv!24526 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (value!105575 (_1!10723 lt!663281)))) e!1106612))))

(assert (= tb!102957 b!1729720))

(declare-fun m!2137455 () Bool)

(assert (=> b!1729720 m!2137455))

(declare-fun m!2137457 () Bool)

(assert (=> tb!102957 m!2137457))

(assert (=> b!1729693 t!160554))

(declare-fun b_and!127375 () Bool)

(assert (= b_and!127363 (and (=> t!160554 result!123788) b_and!127375)))

(declare-fun t!160556 () Bool)

(declare-fun tb!102959 () Bool)

(assert (=> (and b!1729670 (= (toChars!4731 (transformation!3365 rule!422)) (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281))))) t!160556) tb!102959))

(declare-fun result!123790 () Bool)

(assert (= result!123790 result!123788))

(assert (=> b!1729693 t!160556))

(declare-fun b_and!127377 () Bool)

(assert (= b_and!127365 (and (=> t!160556 result!123790) b_and!127377)))

(declare-fun t!160558 () Bool)

(declare-fun tb!102961 () Bool)

(assert (=> (and b!1729691 (= (toChars!4731 (transformation!3365 (h!24365 rules!3447))) (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281))))) t!160558) tb!102961))

(declare-fun result!123792 () Bool)

(assert (= result!123792 result!123788))

(assert (=> b!1729693 t!160558))

(declare-fun b_and!127379 () Bool)

(assert (= b_and!127367 (and (=> t!160558 result!123792) b_and!127379)))

(declare-fun m!2137459 () Bool)

(assert (=> b!1729681 m!2137459))

(declare-fun m!2137461 () Bool)

(assert (=> b!1729681 m!2137461))

(declare-fun m!2137463 () Bool)

(assert (=> b!1729681 m!2137463))

(declare-fun m!2137465 () Bool)

(assert (=> b!1729681 m!2137465))

(declare-fun m!2137467 () Bool)

(assert (=> b!1729690 m!2137467))

(declare-fun m!2137469 () Bool)

(assert (=> b!1729693 m!2137469))

(declare-fun m!2137471 () Bool)

(assert (=> b!1729695 m!2137471))

(declare-fun m!2137473 () Bool)

(assert (=> b!1729695 m!2137473))

(declare-fun m!2137475 () Bool)

(assert (=> b!1729673 m!2137475))

(declare-fun m!2137477 () Bool)

(assert (=> b!1729673 m!2137477))

(declare-fun m!2137479 () Bool)

(assert (=> b!1729700 m!2137479))

(declare-fun m!2137481 () Bool)

(assert (=> b!1729700 m!2137481))

(declare-fun m!2137483 () Bool)

(assert (=> b!1729700 m!2137483))

(declare-fun m!2137485 () Bool)

(assert (=> b!1729697 m!2137485))

(declare-fun m!2137487 () Bool)

(assert (=> b!1729697 m!2137487))

(declare-fun m!2137489 () Bool)

(assert (=> b!1729697 m!2137489))

(declare-fun m!2137491 () Bool)

(assert (=> b!1729697 m!2137491))

(declare-fun m!2137493 () Bool)

(assert (=> b!1729675 m!2137493))

(declare-fun m!2137495 () Bool)

(assert (=> b!1729676 m!2137495))

(declare-fun m!2137497 () Bool)

(assert (=> b!1729698 m!2137497))

(declare-fun m!2137499 () Bool)

(assert (=> b!1729698 m!2137499))

(declare-fun m!2137501 () Bool)

(assert (=> b!1729682 m!2137501))

(declare-fun m!2137503 () Bool)

(assert (=> b!1729682 m!2137503))

(declare-fun m!2137505 () Bool)

(assert (=> b!1729682 m!2137505))

(assert (=> b!1729682 m!2137503))

(declare-fun m!2137507 () Bool)

(assert (=> b!1729682 m!2137507))

(declare-fun m!2137509 () Bool)

(assert (=> b!1729682 m!2137509))

(declare-fun m!2137511 () Bool)

(assert (=> b!1729678 m!2137511))

(declare-fun m!2137513 () Bool)

(assert (=> b!1729678 m!2137513))

(declare-fun m!2137515 () Bool)

(assert (=> b!1729678 m!2137515))

(declare-fun m!2137517 () Bool)

(assert (=> b!1729678 m!2137517))

(declare-fun m!2137519 () Bool)

(assert (=> b!1729678 m!2137519))

(declare-fun m!2137521 () Bool)

(assert (=> b!1729678 m!2137521))

(declare-fun m!2137523 () Bool)

(assert (=> b!1729678 m!2137523))

(declare-fun m!2137525 () Bool)

(assert (=> b!1729678 m!2137525))

(declare-fun m!2137527 () Bool)

(assert (=> b!1729678 m!2137527))

(declare-fun m!2137529 () Bool)

(assert (=> b!1729678 m!2137529))

(declare-fun m!2137531 () Bool)

(assert (=> b!1729678 m!2137531))

(declare-fun m!2137533 () Bool)

(assert (=> b!1729678 m!2137533))

(declare-fun m!2137535 () Bool)

(assert (=> b!1729678 m!2137535))

(declare-fun m!2137537 () Bool)

(assert (=> b!1729678 m!2137537))

(assert (=> b!1729678 m!2137527))

(declare-fun m!2137539 () Bool)

(assert (=> b!1729678 m!2137539))

(declare-fun m!2137541 () Bool)

(assert (=> b!1729699 m!2137541))

(declare-fun m!2137543 () Bool)

(assert (=> b!1729685 m!2137543))

(declare-fun m!2137545 () Bool)

(assert (=> b!1729685 m!2137545))

(declare-fun m!2137547 () Bool)

(assert (=> b!1729683 m!2137547))

(declare-fun m!2137549 () Bool)

(assert (=> b!1729683 m!2137549))

(declare-fun m!2137551 () Bool)

(assert (=> b!1729683 m!2137551))

(assert (=> b!1729683 m!2137547))

(declare-fun m!2137553 () Bool)

(assert (=> b!1729683 m!2137553))

(declare-fun m!2137555 () Bool)

(assert (=> b!1729683 m!2137555))

(declare-fun m!2137557 () Bool)

(assert (=> b!1729692 m!2137557))

(declare-fun m!2137559 () Bool)

(assert (=> b!1729692 m!2137559))

(declare-fun m!2137561 () Bool)

(assert (=> b!1729692 m!2137561))

(assert (=> b!1729680 m!2137521))

(assert (=> b!1729680 m!2137521))

(declare-fun m!2137563 () Bool)

(assert (=> b!1729680 m!2137563))

(assert (=> b!1729680 m!2137563))

(declare-fun m!2137565 () Bool)

(assert (=> b!1729680 m!2137565))

(declare-fun m!2137567 () Bool)

(assert (=> b!1729680 m!2137567))

(declare-fun m!2137569 () Bool)

(assert (=> b!1729679 m!2137569))

(assert (=> b!1729679 m!2137569))

(declare-fun m!2137571 () Bool)

(assert (=> b!1729679 m!2137571))

(assert (=> b!1729679 m!2137571))

(declare-fun m!2137573 () Bool)

(assert (=> b!1729679 m!2137573))

(declare-fun m!2137575 () Bool)

(assert (=> b!1729679 m!2137575))

(declare-fun m!2137577 () Bool)

(assert (=> b!1729687 m!2137577))

(declare-fun m!2137579 () Bool)

(assert (=> b!1729672 m!2137579))

(declare-fun m!2137581 () Bool)

(assert (=> b!1729672 m!2137581))

(declare-fun m!2137583 () Bool)

(assert (=> b!1729672 m!2137583))

(declare-fun m!2137585 () Bool)

(assert (=> b!1729672 m!2137585))

(declare-fun m!2137587 () Bool)

(assert (=> b!1729672 m!2137587))

(declare-fun m!2137589 () Bool)

(assert (=> b!1729672 m!2137589))

(assert (=> b!1729672 m!2137589))

(declare-fun m!2137591 () Bool)

(assert (=> b!1729672 m!2137591))

(declare-fun m!2137593 () Bool)

(assert (=> b!1729694 m!2137593))

(declare-fun m!2137595 () Bool)

(assert (=> b!1729686 m!2137595))

(declare-fun m!2137597 () Bool)

(assert (=> start!169946 m!2137597))

(declare-fun m!2137599 () Bool)

(assert (=> b!1729674 m!2137599))

(declare-fun m!2137601 () Bool)

(assert (=> b!1729674 m!2137601))

(declare-fun m!2137603 () Bool)

(assert (=> b!1729674 m!2137603))

(declare-fun m!2137605 () Bool)

(assert (=> b!1729674 m!2137605))

(declare-fun m!2137607 () Bool)

(assert (=> b!1729677 m!2137607))

(check-sat (not b!1729682) (not b!1729681) (not b_next!48011) (not b_next!48009) (not b_next!48003) (not b!1729700) (not b!1729695) (not b!1729680) (not b!1729697) (not b!1729692) (not b!1729673) (not b!1729689) (not b_lambda!55139) (not b!1729717) (not b_next!48013) (not b!1729698) (not tb!102957) (not b!1729686) b_and!127379 b_and!127371 (not b_lambda!55143) (not b_lambda!55141) (not b!1729720) (not b!1729675) b_and!127373 b_and!127375 (not b_next!48005) (not b!1729699) (not b!1729674) (not b!1729679) b_and!127369 (not start!169946) (not b!1729685) (not b!1729678) (not b!1729687) (not b!1729690) tp_is_empty!7629 b_and!127377 (not tb!102945) (not tb!102951) (not b!1729684) (not b!1729676) (not b!1729672) (not b_next!48007) (not b!1729694) (not b!1729683) (not b!1729677))
(check-sat (not b_next!48011) (not b_next!48009) (not b_next!48003) (not b_next!48013) b_and!127379 b_and!127371 (not b_next!48005) b_and!127369 b_and!127377 (not b_next!48007) b_and!127373 b_and!127375)
(get-model)

(declare-fun b!1729919 () Bool)

(declare-fun e!1106728 () Bool)

(declare-fun nullable!1420 (Regex!4693) Bool)

(assert (=> b!1729919 (= e!1106728 (nullable!1420 (regex!3365 rule!422)))))

(declare-fun b!1729920 () Bool)

(declare-fun res!776846 () Bool)

(declare-fun e!1106731 () Bool)

(assert (=> b!1729920 (=> (not res!776846) (not e!1106731))))

(declare-fun call!109907 () Bool)

(assert (=> b!1729920 (= res!776846 (not call!109907))))

(declare-fun b!1729921 () Bool)

(declare-fun res!776841 () Bool)

(declare-fun e!1106729 () Bool)

(assert (=> b!1729921 (=> res!776841 e!1106729)))

(assert (=> b!1729921 (= res!776841 e!1106731)))

(declare-fun res!776847 () Bool)

(assert (=> b!1729921 (=> (not res!776847) (not e!1106731))))

(declare-fun lt!663359 () Bool)

(assert (=> b!1729921 (= res!776847 lt!663359)))

(declare-fun d!529661 () Bool)

(declare-fun e!1106734 () Bool)

(assert (=> d!529661 e!1106734))

(declare-fun c!282676 () Bool)

(assert (=> d!529661 (= c!282676 ((_ is EmptyExpr!4693) (regex!3365 rule!422)))))

(assert (=> d!529661 (= lt!663359 e!1106728)))

(declare-fun c!282677 () Bool)

(assert (=> d!529661 (= c!282677 (isEmpty!11930 lt!663294))))

(declare-fun validRegex!1894 (Regex!4693) Bool)

(assert (=> d!529661 (validRegex!1894 (regex!3365 rule!422))))

(assert (=> d!529661 (= (matchR!2167 (regex!3365 rule!422) lt!663294) lt!663359)))

(declare-fun b!1729922 () Bool)

(declare-fun e!1106732 () Bool)

(assert (=> b!1729922 (= e!1106729 e!1106732)))

(declare-fun res!776842 () Bool)

(assert (=> b!1729922 (=> (not res!776842) (not e!1106732))))

(assert (=> b!1729922 (= res!776842 (not lt!663359))))

(declare-fun b!1729923 () Bool)

(declare-fun derivativeStep!1188 (Regex!4693 C!9560) Regex!4693)

(declare-fun tail!2585 (List!19033) List!19033)

(assert (=> b!1729923 (= e!1106728 (matchR!2167 (derivativeStep!1188 (regex!3365 rule!422) (head!3932 lt!663294)) (tail!2585 lt!663294)))))

(declare-fun b!1729924 () Bool)

(declare-fun res!776848 () Bool)

(declare-fun e!1106733 () Bool)

(assert (=> b!1729924 (=> res!776848 e!1106733)))

(assert (=> b!1729924 (= res!776848 (not (isEmpty!11930 (tail!2585 lt!663294))))))

(declare-fun b!1729925 () Bool)

(declare-fun e!1106730 () Bool)

(assert (=> b!1729925 (= e!1106734 e!1106730)))

(declare-fun c!282678 () Bool)

(assert (=> b!1729925 (= c!282678 ((_ is EmptyLang!4693) (regex!3365 rule!422)))))

(declare-fun b!1729926 () Bool)

(declare-fun res!776844 () Bool)

(assert (=> b!1729926 (=> res!776844 e!1106729)))

(assert (=> b!1729926 (= res!776844 (not ((_ is ElementMatch!4693) (regex!3365 rule!422))))))

(assert (=> b!1729926 (= e!1106730 e!1106729)))

(declare-fun b!1729927 () Bool)

(assert (=> b!1729927 (= e!1106733 (not (= (head!3932 lt!663294) (c!282636 (regex!3365 rule!422)))))))

(declare-fun b!1729928 () Bool)

(declare-fun res!776845 () Bool)

(assert (=> b!1729928 (=> (not res!776845) (not e!1106731))))

(assert (=> b!1729928 (= res!776845 (isEmpty!11930 (tail!2585 lt!663294)))))

(declare-fun b!1729929 () Bool)

(assert (=> b!1729929 (= e!1106731 (= (head!3932 lt!663294) (c!282636 (regex!3365 rule!422))))))

(declare-fun b!1729930 () Bool)

(assert (=> b!1729930 (= e!1106730 (not lt!663359))))

(declare-fun b!1729931 () Bool)

(assert (=> b!1729931 (= e!1106734 (= lt!663359 call!109907))))

(declare-fun bm!109902 () Bool)

(assert (=> bm!109902 (= call!109907 (isEmpty!11930 lt!663294))))

(declare-fun b!1729932 () Bool)

(assert (=> b!1729932 (= e!1106732 e!1106733)))

(declare-fun res!776843 () Bool)

(assert (=> b!1729932 (=> res!776843 e!1106733)))

(assert (=> b!1729932 (= res!776843 call!109907)))

(assert (= (and d!529661 c!282677) b!1729919))

(assert (= (and d!529661 (not c!282677)) b!1729923))

(assert (= (and d!529661 c!282676) b!1729931))

(assert (= (and d!529661 (not c!282676)) b!1729925))

(assert (= (and b!1729925 c!282678) b!1729930))

(assert (= (and b!1729925 (not c!282678)) b!1729926))

(assert (= (and b!1729926 (not res!776844)) b!1729921))

(assert (= (and b!1729921 res!776847) b!1729920))

(assert (= (and b!1729920 res!776846) b!1729928))

(assert (= (and b!1729928 res!776845) b!1729929))

(assert (= (and b!1729921 (not res!776841)) b!1729922))

(assert (= (and b!1729922 res!776842) b!1729932))

(assert (= (and b!1729932 (not res!776843)) b!1729924))

(assert (= (and b!1729924 (not res!776848)) b!1729927))

(assert (= (or b!1729931 b!1729920 b!1729932) bm!109902))

(declare-fun m!2137757 () Bool)

(assert (=> b!1729928 m!2137757))

(assert (=> b!1729928 m!2137757))

(declare-fun m!2137759 () Bool)

(assert (=> b!1729928 m!2137759))

(declare-fun m!2137761 () Bool)

(assert (=> b!1729923 m!2137761))

(assert (=> b!1729923 m!2137761))

(declare-fun m!2137763 () Bool)

(assert (=> b!1729923 m!2137763))

(assert (=> b!1729923 m!2137757))

(assert (=> b!1729923 m!2137763))

(assert (=> b!1729923 m!2137757))

(declare-fun m!2137765 () Bool)

(assert (=> b!1729923 m!2137765))

(declare-fun m!2137767 () Bool)

(assert (=> b!1729919 m!2137767))

(assert (=> b!1729929 m!2137761))

(declare-fun m!2137769 () Bool)

(assert (=> d!529661 m!2137769))

(declare-fun m!2137771 () Bool)

(assert (=> d!529661 m!2137771))

(assert (=> bm!109902 m!2137769))

(assert (=> b!1729927 m!2137761))

(assert (=> b!1729924 m!2137757))

(assert (=> b!1729924 m!2137757))

(assert (=> b!1729924 m!2137759))

(assert (=> b!1729692 d!529661))

(declare-fun d!529663 () Bool)

(declare-fun res!776860 () Bool)

(declare-fun e!1106741 () Bool)

(assert (=> d!529663 (=> (not res!776860) (not e!1106741))))

(assert (=> d!529663 (= res!776860 (validRegex!1894 (regex!3365 rule!422)))))

(assert (=> d!529663 (= (ruleValid!864 thiss!24550 rule!422) e!1106741)))

(declare-fun b!1729946 () Bool)

(declare-fun res!776861 () Bool)

(assert (=> b!1729946 (=> (not res!776861) (not e!1106741))))

(assert (=> b!1729946 (= res!776861 (not (nullable!1420 (regex!3365 rule!422))))))

(declare-fun b!1729947 () Bool)

(assert (=> b!1729947 (= e!1106741 (not (= (tag!3689 rule!422) (String!21608 ""))))))

(assert (= (and d!529663 res!776860) b!1729946))

(assert (= (and b!1729946 res!776861) b!1729947))

(assert (=> d!529663 m!2137771))

(assert (=> b!1729946 m!2137767))

(assert (=> b!1729692 d!529663))

(declare-fun d!529667 () Bool)

(assert (=> d!529667 (ruleValid!864 thiss!24550 rule!422)))

(declare-fun lt!663368 () Unit!32817)

(declare-fun choose!10568 (LexerInterface!2994 Rule!6530 List!19034) Unit!32817)

(assert (=> d!529667 (= lt!663368 (choose!10568 thiss!24550 rule!422 rules!3447))))

(assert (=> d!529667 (contains!3387 rules!3447 rule!422)))

(assert (=> d!529667 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!388 thiss!24550 rule!422 rules!3447) lt!663368)))

(declare-fun bs!402573 () Bool)

(assert (= bs!402573 d!529667))

(assert (=> bs!402573 m!2137559))

(declare-fun m!2137829 () Bool)

(assert (=> bs!402573 m!2137829))

(assert (=> bs!402573 m!2137467))

(assert (=> b!1729692 d!529667))

(declare-fun d!529673 () Bool)

(declare-fun choose!10570 (Int) Bool)

(assert (=> d!529673 (= (Forall!740 lambda!69338) (choose!10570 lambda!69338))))

(declare-fun bs!402574 () Bool)

(assert (= bs!402574 d!529673))

(declare-fun m!2137839 () Bool)

(assert (=> bs!402574 m!2137839))

(assert (=> b!1729695 d!529673))

(declare-fun d!529679 () Bool)

(declare-fun e!1106753 () Bool)

(assert (=> d!529679 e!1106753))

(declare-fun res!776870 () Bool)

(assert (=> d!529679 (=> (not res!776870) (not e!1106753))))

(declare-fun semiInverseModEq!1333 (Int Int) Bool)

(assert (=> d!529679 (= res!776870 (semiInverseModEq!1333 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281))))))))

(declare-fun Unit!32821 () Unit!32817)

(assert (=> d!529679 (= (lemmaInv!572 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) Unit!32821)))

(declare-fun b!1729964 () Bool)

(declare-fun equivClasses!1274 (Int Int) Bool)

(assert (=> b!1729964 (= e!1106753 (equivClasses!1274 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281))))))))

(assert (= (and d!529679 res!776870) b!1729964))

(declare-fun m!2137857 () Bool)

(assert (=> d!529679 m!2137857))

(declare-fun m!2137859 () Bool)

(assert (=> b!1729964 m!2137859))

(assert (=> b!1729695 d!529679))

(declare-fun d!529693 () Bool)

(declare-fun c!282686 () Bool)

(assert (=> d!529693 (= c!282686 (isEmpty!11930 lt!663279))))

(declare-fun e!1106763 () Bool)

(assert (=> d!529693 (= (prefixMatch!578 lt!663277 lt!663279) e!1106763)))

(declare-fun b!1729978 () Bool)

(declare-fun lostCause!530 (Regex!4693) Bool)

(assert (=> b!1729978 (= e!1106763 (not (lostCause!530 lt!663277)))))

(declare-fun b!1729979 () Bool)

(assert (=> b!1729979 (= e!1106763 (prefixMatch!578 (derivativeStep!1188 lt!663277 (head!3932 lt!663279)) (tail!2585 lt!663279)))))

(assert (= (and d!529693 c!282686) b!1729978))

(assert (= (and d!529693 (not c!282686)) b!1729979))

(declare-fun m!2137881 () Bool)

(assert (=> d!529693 m!2137881))

(declare-fun m!2137883 () Bool)

(assert (=> b!1729978 m!2137883))

(declare-fun m!2137885 () Bool)

(assert (=> b!1729979 m!2137885))

(assert (=> b!1729979 m!2137885))

(declare-fun m!2137887 () Bool)

(assert (=> b!1729979 m!2137887))

(declare-fun m!2137889 () Bool)

(assert (=> b!1729979 m!2137889))

(assert (=> b!1729979 m!2137887))

(assert (=> b!1729979 m!2137889))

(declare-fun m!2137891 () Bool)

(assert (=> b!1729979 m!2137891))

(assert (=> b!1729674 d!529693))

(declare-fun b!1729990 () Bool)

(declare-fun res!776884 () Bool)

(declare-fun e!1106769 () Bool)

(assert (=> b!1729990 (=> (not res!776884) (not e!1106769))))

(declare-fun lt!663376 () List!19033)

(assert (=> b!1729990 (= res!776884 (= (size!15067 lt!663376) (+ (size!15067 lt!663294) (size!15067 (Cons!18963 (head!3932 suffix!1421) Nil!18963)))))))

(declare-fun b!1729989 () Bool)

(declare-fun e!1106768 () List!19033)

(assert (=> b!1729989 (= e!1106768 (Cons!18963 (h!24364 lt!663294) (++!5190 (t!160560 lt!663294) (Cons!18963 (head!3932 suffix!1421) Nil!18963))))))

(declare-fun b!1729988 () Bool)

(assert (=> b!1729988 (= e!1106768 (Cons!18963 (head!3932 suffix!1421) Nil!18963))))

(declare-fun b!1729991 () Bool)

(assert (=> b!1729991 (= e!1106769 (or (not (= (Cons!18963 (head!3932 suffix!1421) Nil!18963) Nil!18963)) (= lt!663376 lt!663294)))))

(declare-fun d!529703 () Bool)

(assert (=> d!529703 e!1106769))

(declare-fun res!776885 () Bool)

(assert (=> d!529703 (=> (not res!776885) (not e!1106769))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2715 (List!19033) (InoxSet C!9560))

(assert (=> d!529703 (= res!776885 (= (content!2715 lt!663376) ((_ map or) (content!2715 lt!663294) (content!2715 (Cons!18963 (head!3932 suffix!1421) Nil!18963)))))))

(assert (=> d!529703 (= lt!663376 e!1106768)))

(declare-fun c!282689 () Bool)

(assert (=> d!529703 (= c!282689 ((_ is Nil!18963) lt!663294))))

(assert (=> d!529703 (= (++!5190 lt!663294 (Cons!18963 (head!3932 suffix!1421) Nil!18963)) lt!663376)))

(assert (= (and d!529703 c!282689) b!1729988))

(assert (= (and d!529703 (not c!282689)) b!1729989))

(assert (= (and d!529703 res!776885) b!1729990))

(assert (= (and b!1729990 res!776884) b!1729991))

(declare-fun m!2137893 () Bool)

(assert (=> b!1729990 m!2137893))

(declare-fun m!2137895 () Bool)

(assert (=> b!1729990 m!2137895))

(declare-fun m!2137897 () Bool)

(assert (=> b!1729990 m!2137897))

(declare-fun m!2137899 () Bool)

(assert (=> b!1729989 m!2137899))

(declare-fun m!2137901 () Bool)

(assert (=> d!529703 m!2137901))

(declare-fun m!2137903 () Bool)

(assert (=> d!529703 m!2137903))

(declare-fun m!2137905 () Bool)

(assert (=> d!529703 m!2137905))

(assert (=> b!1729674 d!529703))

(declare-fun d!529705 () Bool)

(assert (=> d!529705 (= (head!3932 suffix!1421) (h!24364 suffix!1421))))

(assert (=> b!1729674 d!529705))

(declare-fun d!529707 () Bool)

(declare-fun lt!663379 () Unit!32817)

(declare-fun lemma!344 (List!19034 LexerInterface!2994 List!19034) Unit!32817)

(assert (=> d!529707 (= lt!663379 (lemma!344 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!69347 () Int)

(declare-datatypes ((List!19037 0))(
  ( (Nil!18967) (Cons!18967 (h!24368 Regex!4693) (t!160624 List!19037)) )
))
(declare-fun generalisedUnion!352 (List!19037) Regex!4693)

(declare-fun map!3906 (List!19034 Int) List!19037)

(assert (=> d!529707 (= (rulesRegex!723 thiss!24550 rules!3447) (generalisedUnion!352 (map!3906 rules!3447 lambda!69347)))))

(declare-fun bs!402578 () Bool)

(assert (= bs!402578 d!529707))

(declare-fun m!2137907 () Bool)

(assert (=> bs!402578 m!2137907))

(declare-fun m!2137909 () Bool)

(assert (=> bs!402578 m!2137909))

(assert (=> bs!402578 m!2137909))

(declare-fun m!2137911 () Bool)

(assert (=> bs!402578 m!2137911))

(assert (=> b!1729674 d!529707))

(declare-fun d!529709 () Bool)

(declare-fun isBalanced!1974 (Conc!6307) Bool)

(assert (=> d!529709 (= (inv!24526 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (value!105575 (_1!10723 lt!663281)))) (isBalanced!1974 (c!282637 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (value!105575 (_1!10723 lt!663281))))))))

(declare-fun bs!402579 () Bool)

(assert (= bs!402579 d!529709))

(declare-fun m!2137913 () Bool)

(assert (=> bs!402579 m!2137913))

(assert (=> tb!102957 d!529709))

(declare-fun d!529711 () Bool)

(assert (=> d!529711 (= (apply!5170 (transformation!3365 (rule!5339 (_1!10723 lt!663281))) (seqFromList!2339 lt!663297)) (dynLambda!8830 (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (seqFromList!2339 lt!663297)))))

(declare-fun b_lambda!55155 () Bool)

(assert (=> (not b_lambda!55155) (not d!529711)))

(declare-fun tb!102981 () Bool)

(declare-fun t!160581 () Bool)

(assert (=> (and b!1729696 (= (toValue!4872 (transformation!3365 (rule!5339 token!523))) (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281))))) t!160581) tb!102981))

(declare-fun result!123812 () Bool)

(assert (=> tb!102981 (= result!123812 (inv!21 (dynLambda!8830 (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (seqFromList!2339 lt!663297))))))

(declare-fun m!2137915 () Bool)

(assert (=> tb!102981 m!2137915))

(assert (=> d!529711 t!160581))

(declare-fun b_and!127411 () Bool)

(assert (= b_and!127369 (and (=> t!160581 result!123812) b_and!127411)))

(declare-fun t!160583 () Bool)

(declare-fun tb!102983 () Bool)

(assert (=> (and b!1729670 (= (toValue!4872 (transformation!3365 rule!422)) (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281))))) t!160583) tb!102983))

(declare-fun result!123814 () Bool)

(assert (= result!123814 result!123812))

(assert (=> d!529711 t!160583))

(declare-fun b_and!127413 () Bool)

(assert (= b_and!127371 (and (=> t!160583 result!123814) b_and!127413)))

(declare-fun t!160585 () Bool)

(declare-fun tb!102985 () Bool)

(assert (=> (and b!1729691 (= (toValue!4872 (transformation!3365 (h!24365 rules!3447))) (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281))))) t!160585) tb!102985))

(declare-fun result!123816 () Bool)

(assert (= result!123816 result!123812))

(assert (=> d!529711 t!160585))

(declare-fun b_and!127415 () Bool)

(assert (= b_and!127373 (and (=> t!160585 result!123816) b_and!127415)))

(assert (=> d!529711 m!2137589))

(declare-fun m!2137917 () Bool)

(assert (=> d!529711 m!2137917))

(assert (=> b!1729672 d!529711))

(declare-fun d!529713 () Bool)

(declare-fun lt!663382 () List!19033)

(assert (=> d!529713 (= (++!5190 lt!663297 lt!663382) lt!663276)))

(declare-fun e!1106773 () List!19033)

(assert (=> d!529713 (= lt!663382 e!1106773)))

(declare-fun c!282692 () Bool)

(assert (=> d!529713 (= c!282692 ((_ is Cons!18963) lt!663297))))

(assert (=> d!529713 (>= (size!15067 lt!663276) (size!15067 lt!663297))))

(assert (=> d!529713 (= (getSuffix!800 lt!663276 lt!663297) lt!663382)))

(declare-fun b!1729996 () Bool)

(assert (=> b!1729996 (= e!1106773 (getSuffix!800 (tail!2585 lt!663276) (t!160560 lt!663297)))))

(declare-fun b!1729997 () Bool)

(assert (=> b!1729997 (= e!1106773 lt!663276)))

(assert (= (and d!529713 c!282692) b!1729996))

(assert (= (and d!529713 (not c!282692)) b!1729997))

(declare-fun m!2137919 () Bool)

(assert (=> d!529713 m!2137919))

(declare-fun m!2137921 () Bool)

(assert (=> d!529713 m!2137921))

(assert (=> d!529713 m!2137585))

(declare-fun m!2137923 () Bool)

(assert (=> b!1729996 m!2137923))

(assert (=> b!1729996 m!2137923))

(declare-fun m!2137925 () Bool)

(assert (=> b!1729996 m!2137925))

(assert (=> b!1729672 d!529713))

(declare-fun d!529715 () Bool)

(declare-fun fromListB!1074 (List!19033) BalanceConc!12558)

(assert (=> d!529715 (= (seqFromList!2339 lt!663297) (fromListB!1074 lt!663297))))

(declare-fun bs!402580 () Bool)

(assert (= bs!402580 d!529715))

(declare-fun m!2137927 () Bool)

(assert (=> bs!402580 m!2137927))

(assert (=> b!1729672 d!529715))

(declare-fun b!1730016 () Bool)

(declare-fun e!1106785 () Bool)

(declare-fun lt!663395 () Option!3754)

(assert (=> b!1730016 (= e!1106785 (= (size!15066 (_1!10723 (get!5654 lt!663395))) (size!15067 (originalCharacters!4179 (_1!10723 (get!5654 lt!663395))))))))

(declare-fun b!1730018 () Bool)

(declare-fun res!776900 () Bool)

(assert (=> b!1730018 (=> (not res!776900) (not e!1106785))))

(assert (=> b!1730018 (= res!776900 (< (size!15067 (_2!10723 (get!5654 lt!663395))) (size!15067 lt!663276)))))

(declare-fun b!1730019 () Bool)

(declare-fun res!776906 () Bool)

(assert (=> b!1730019 (=> (not res!776906) (not e!1106785))))

(assert (=> b!1730019 (= res!776906 (= (value!105575 (_1!10723 (get!5654 lt!663395))) (apply!5170 (transformation!3365 (rule!5339 (_1!10723 (get!5654 lt!663395)))) (seqFromList!2339 (originalCharacters!4179 (_1!10723 (get!5654 lt!663395)))))))))

(declare-fun b!1730020 () Bool)

(declare-fun res!776901 () Bool)

(assert (=> b!1730020 (=> (not res!776901) (not e!1106785))))

(assert (=> b!1730020 (= res!776901 (= (++!5190 (list!7666 (charsOf!2014 (_1!10723 (get!5654 lt!663395)))) (_2!10723 (get!5654 lt!663395))) lt!663276))))

(declare-fun b!1730021 () Bool)

(declare-fun e!1106783 () Bool)

(declare-datatypes ((tuple2!18648 0))(
  ( (tuple2!18649 (_1!10726 List!19033) (_2!10726 List!19033)) )
))
(declare-fun findLongestMatchInner!411 (Regex!4693 List!19033 Int List!19033 List!19033 Int) tuple2!18648)

(assert (=> b!1730021 (= e!1106783 (matchR!2167 (regex!3365 (rule!5339 (_1!10723 lt!663281))) (_1!10726 (findLongestMatchInner!411 (regex!3365 (rule!5339 (_1!10723 lt!663281))) Nil!18963 (size!15067 Nil!18963) lt!663276 lt!663276 (size!15067 lt!663276)))))))

(declare-fun b!1730022 () Bool)

(declare-fun e!1106782 () Option!3754)

(assert (=> b!1730022 (= e!1106782 None!3753)))

(declare-fun b!1730023 () Bool)

(declare-fun res!776904 () Bool)

(assert (=> b!1730023 (=> (not res!776904) (not e!1106785))))

(assert (=> b!1730023 (= res!776904 (= (rule!5339 (_1!10723 (get!5654 lt!663395))) (rule!5339 (_1!10723 lt!663281))))))

(declare-fun b!1730024 () Bool)

(declare-fun e!1106784 () Bool)

(assert (=> b!1730024 (= e!1106784 e!1106785)))

(declare-fun res!776903 () Bool)

(assert (=> b!1730024 (=> (not res!776903) (not e!1106785))))

(assert (=> b!1730024 (= res!776903 (matchR!2167 (regex!3365 (rule!5339 (_1!10723 lt!663281))) (list!7666 (charsOf!2014 (_1!10723 (get!5654 lt!663395))))))))

(declare-fun b!1730017 () Bool)

(declare-fun lt!663394 () tuple2!18648)

(assert (=> b!1730017 (= e!1106782 (Some!3753 (tuple2!18643 (Token!6297 (apply!5170 (transformation!3365 (rule!5339 (_1!10723 lt!663281))) (seqFromList!2339 (_1!10726 lt!663394))) (rule!5339 (_1!10723 lt!663281)) (size!15068 (seqFromList!2339 (_1!10726 lt!663394))) (_1!10726 lt!663394)) (_2!10726 lt!663394))))))

(declare-fun lt!663396 () Unit!32817)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!395 (Regex!4693 List!19033) Unit!32817)

(assert (=> b!1730017 (= lt!663396 (longestMatchIsAcceptedByMatchOrIsEmpty!395 (regex!3365 (rule!5339 (_1!10723 lt!663281))) lt!663276))))

(declare-fun res!776905 () Bool)

(assert (=> b!1730017 (= res!776905 (isEmpty!11930 (_1!10726 (findLongestMatchInner!411 (regex!3365 (rule!5339 (_1!10723 lt!663281))) Nil!18963 (size!15067 Nil!18963) lt!663276 lt!663276 (size!15067 lt!663276)))))))

(assert (=> b!1730017 (=> res!776905 e!1106783)))

(assert (=> b!1730017 e!1106783))

(declare-fun lt!663397 () Unit!32817)

(assert (=> b!1730017 (= lt!663397 lt!663396)))

(declare-fun lt!663393 () Unit!32817)

(assert (=> b!1730017 (= lt!663393 (lemmaSemiInverse!511 (transformation!3365 (rule!5339 (_1!10723 lt!663281))) (seqFromList!2339 (_1!10726 lt!663394))))))

(declare-fun d!529717 () Bool)

(assert (=> d!529717 e!1106784))

(declare-fun res!776902 () Bool)

(assert (=> d!529717 (=> res!776902 e!1106784)))

(declare-fun isEmpty!11932 (Option!3754) Bool)

(assert (=> d!529717 (= res!776902 (isEmpty!11932 lt!663395))))

(assert (=> d!529717 (= lt!663395 e!1106782)))

(declare-fun c!282695 () Bool)

(assert (=> d!529717 (= c!282695 (isEmpty!11930 (_1!10726 lt!663394)))))

(declare-fun findLongestMatch!338 (Regex!4693 List!19033) tuple2!18648)

(assert (=> d!529717 (= lt!663394 (findLongestMatch!338 (regex!3365 (rule!5339 (_1!10723 lt!663281))) lt!663276))))

(assert (=> d!529717 (ruleValid!864 thiss!24550 (rule!5339 (_1!10723 lt!663281)))))

(assert (=> d!529717 (= (maxPrefixOneRule!924 thiss!24550 (rule!5339 (_1!10723 lt!663281)) lt!663276) lt!663395)))

(assert (= (and d!529717 c!282695) b!1730022))

(assert (= (and d!529717 (not c!282695)) b!1730017))

(assert (= (and b!1730017 (not res!776905)) b!1730021))

(assert (= (and d!529717 (not res!776902)) b!1730024))

(assert (= (and b!1730024 res!776903) b!1730020))

(assert (= (and b!1730020 res!776901) b!1730018))

(assert (= (and b!1730018 res!776900) b!1730023))

(assert (= (and b!1730023 res!776904) b!1730019))

(assert (= (and b!1730019 res!776906) b!1730016))

(declare-fun m!2137929 () Bool)

(assert (=> b!1730023 m!2137929))

(assert (=> b!1730019 m!2137929))

(declare-fun m!2137931 () Bool)

(assert (=> b!1730019 m!2137931))

(assert (=> b!1730019 m!2137931))

(declare-fun m!2137933 () Bool)

(assert (=> b!1730019 m!2137933))

(assert (=> b!1730020 m!2137929))

(declare-fun m!2137935 () Bool)

(assert (=> b!1730020 m!2137935))

(assert (=> b!1730020 m!2137935))

(declare-fun m!2137937 () Bool)

(assert (=> b!1730020 m!2137937))

(assert (=> b!1730020 m!2137937))

(declare-fun m!2137939 () Bool)

(assert (=> b!1730020 m!2137939))

(declare-fun m!2137941 () Bool)

(assert (=> b!1730021 m!2137941))

(assert (=> b!1730021 m!2137921))

(assert (=> b!1730021 m!2137941))

(assert (=> b!1730021 m!2137921))

(declare-fun m!2137943 () Bool)

(assert (=> b!1730021 m!2137943))

(declare-fun m!2137945 () Bool)

(assert (=> b!1730021 m!2137945))

(assert (=> b!1730024 m!2137929))

(assert (=> b!1730024 m!2137935))

(assert (=> b!1730024 m!2137935))

(assert (=> b!1730024 m!2137937))

(assert (=> b!1730024 m!2137937))

(declare-fun m!2137947 () Bool)

(assert (=> b!1730024 m!2137947))

(assert (=> b!1730016 m!2137929))

(declare-fun m!2137949 () Bool)

(assert (=> b!1730016 m!2137949))

(assert (=> b!1730018 m!2137929))

(declare-fun m!2137951 () Bool)

(assert (=> b!1730018 m!2137951))

(assert (=> b!1730018 m!2137921))

(declare-fun m!2137953 () Bool)

(assert (=> d!529717 m!2137953))

(declare-fun m!2137955 () Bool)

(assert (=> d!529717 m!2137955))

(declare-fun m!2137957 () Bool)

(assert (=> d!529717 m!2137957))

(declare-fun m!2137959 () Bool)

(assert (=> d!529717 m!2137959))

(assert (=> b!1730017 m!2137941))

(declare-fun m!2137961 () Bool)

(assert (=> b!1730017 m!2137961))

(declare-fun m!2137963 () Bool)

(assert (=> b!1730017 m!2137963))

(declare-fun m!2137965 () Bool)

(assert (=> b!1730017 m!2137965))

(assert (=> b!1730017 m!2137921))

(assert (=> b!1730017 m!2137961))

(declare-fun m!2137967 () Bool)

(assert (=> b!1730017 m!2137967))

(assert (=> b!1730017 m!2137961))

(declare-fun m!2137969 () Bool)

(assert (=> b!1730017 m!2137969))

(assert (=> b!1730017 m!2137961))

(declare-fun m!2137971 () Bool)

(assert (=> b!1730017 m!2137971))

(assert (=> b!1730017 m!2137941))

(assert (=> b!1730017 m!2137921))

(assert (=> b!1730017 m!2137943))

(assert (=> b!1729672 d!529717))

(declare-fun d!529719 () Bool)

(assert (=> d!529719 (= (maxPrefixOneRule!924 thiss!24550 (rule!5339 (_1!10723 lt!663281)) lt!663276) (Some!3753 (tuple2!18643 (Token!6297 (apply!5170 (transformation!3365 (rule!5339 (_1!10723 lt!663281))) (seqFromList!2339 lt!663297)) (rule!5339 (_1!10723 lt!663281)) (size!15067 lt!663297) lt!663297) (_2!10723 lt!663281))))))

(declare-fun lt!663451 () Unit!32817)

(declare-fun choose!10571 (LexerInterface!2994 List!19034 List!19033 List!19033 List!19033 Rule!6530) Unit!32817)

(assert (=> d!529719 (= lt!663451 (choose!10571 thiss!24550 rules!3447 lt!663297 lt!663276 (_2!10723 lt!663281) (rule!5339 (_1!10723 lt!663281))))))

(assert (=> d!529719 (not (isEmpty!11929 rules!3447))))

(assert (=> d!529719 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!323 thiss!24550 rules!3447 lt!663297 lt!663276 (_2!10723 lt!663281) (rule!5339 (_1!10723 lt!663281))) lt!663451)))

(declare-fun bs!402581 () Bool)

(assert (= bs!402581 d!529719))

(declare-fun m!2138023 () Bool)

(assert (=> bs!402581 m!2138023))

(assert (=> bs!402581 m!2137579))

(assert (=> bs!402581 m!2137589))

(assert (=> bs!402581 m!2137591))

(assert (=> bs!402581 m!2137589))

(assert (=> bs!402581 m!2137585))

(assert (=> bs!402581 m!2137607))

(assert (=> b!1729672 d!529719))

(declare-fun d!529723 () Bool)

(assert (=> d!529723 (= (_2!10723 lt!663281) lt!663298)))

(declare-fun lt!663454 () Unit!32817)

(declare-fun choose!10572 (List!19033 List!19033 List!19033 List!19033 List!19033) Unit!32817)

(assert (=> d!529723 (= lt!663454 (choose!10572 lt!663297 (_2!10723 lt!663281) lt!663297 lt!663298 lt!663276))))

(assert (=> d!529723 (isPrefix!1606 lt!663297 lt!663276)))

(assert (=> d!529723 (= (lemmaSamePrefixThenSameSuffix!750 lt!663297 (_2!10723 lt!663281) lt!663297 lt!663298 lt!663276) lt!663454)))

(declare-fun bs!402582 () Bool)

(assert (= bs!402582 d!529723))

(declare-fun m!2138025 () Bool)

(assert (=> bs!402582 m!2138025))

(assert (=> bs!402582 m!2137519))

(assert (=> b!1729672 d!529723))

(declare-fun d!529725 () Bool)

(declare-fun lt!663457 () Int)

(assert (=> d!529725 (>= lt!663457 0)))

(declare-fun e!1106794 () Int)

(assert (=> d!529725 (= lt!663457 e!1106794)))

(declare-fun c!282701 () Bool)

(assert (=> d!529725 (= c!282701 ((_ is Nil!18963) lt!663297))))

(assert (=> d!529725 (= (size!15067 lt!663297) lt!663457)))

(declare-fun b!1730041 () Bool)

(assert (=> b!1730041 (= e!1106794 0)))

(declare-fun b!1730042 () Bool)

(assert (=> b!1730042 (= e!1106794 (+ 1 (size!15067 (t!160560 lt!663297))))))

(assert (= (and d!529725 c!282701) b!1730041))

(assert (= (and d!529725 (not c!282701)) b!1730042))

(declare-fun m!2138027 () Bool)

(assert (=> b!1730042 m!2138027))

(assert (=> b!1729672 d!529725))

(declare-fun d!529727 () Bool)

(assert (=> d!529727 (= (isEmpty!11930 (_2!10723 lt!663275)) ((_ is Nil!18963) (_2!10723 lt!663275)))))

(assert (=> b!1729694 d!529727))

(declare-fun d!529729 () Bool)

(assert (=> d!529729 (= (inv!24518 (tag!3689 (rule!5339 token!523))) (= (mod (str.len (value!105574 (tag!3689 (rule!5339 token!523)))) 2) 0))))

(assert (=> b!1729673 d!529729))

(declare-fun d!529731 () Bool)

(declare-fun res!776919 () Bool)

(declare-fun e!1106805 () Bool)

(assert (=> d!529731 (=> (not res!776919) (not e!1106805))))

(assert (=> d!529731 (= res!776919 (semiInverseModEq!1333 (toChars!4731 (transformation!3365 (rule!5339 token!523))) (toValue!4872 (transformation!3365 (rule!5339 token!523)))))))

(assert (=> d!529731 (= (inv!24523 (transformation!3365 (rule!5339 token!523))) e!1106805)))

(declare-fun b!1730057 () Bool)

(assert (=> b!1730057 (= e!1106805 (equivClasses!1274 (toChars!4731 (transformation!3365 (rule!5339 token!523))) (toValue!4872 (transformation!3365 (rule!5339 token!523)))))))

(assert (= (and d!529731 res!776919) b!1730057))

(declare-fun m!2138029 () Bool)

(assert (=> d!529731 m!2138029))

(declare-fun m!2138031 () Bool)

(assert (=> b!1730057 m!2138031))

(assert (=> b!1729673 d!529731))

(declare-fun d!529733 () Bool)

(declare-fun c!282710 () Bool)

(assert (=> d!529733 (= c!282710 ((_ is Node!6307) (c!282637 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (dynLambda!8830 (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) lt!663287)))))))

(declare-fun e!1106814 () Bool)

(assert (=> d!529733 (= (inv!24525 (c!282637 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (dynLambda!8830 (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) lt!663287)))) e!1106814)))

(declare-fun b!1730070 () Bool)

(declare-fun inv!24529 (Conc!6307) Bool)

(assert (=> b!1730070 (= e!1106814 (inv!24529 (c!282637 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (dynLambda!8830 (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) lt!663287)))))))

(declare-fun b!1730071 () Bool)

(declare-fun e!1106815 () Bool)

(assert (=> b!1730071 (= e!1106814 e!1106815)))

(declare-fun res!776924 () Bool)

(assert (=> b!1730071 (= res!776924 (not ((_ is Leaf!9210) (c!282637 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (dynLambda!8830 (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) lt!663287))))))))

(assert (=> b!1730071 (=> res!776924 e!1106815)))

(declare-fun b!1730072 () Bool)

(declare-fun inv!24530 (Conc!6307) Bool)

(assert (=> b!1730072 (= e!1106815 (inv!24530 (c!282637 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (dynLambda!8830 (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) lt!663287)))))))

(assert (= (and d!529733 c!282710) b!1730070))

(assert (= (and d!529733 (not c!282710)) b!1730071))

(assert (= (and b!1730071 (not res!776924)) b!1730072))

(declare-fun m!2138047 () Bool)

(assert (=> b!1730070 m!2138047))

(declare-fun m!2138049 () Bool)

(assert (=> b!1730072 m!2138049))

(assert (=> b!1729717 d!529733))

(declare-fun d!529739 () Bool)

(assert (=> d!529739 (= (get!5654 lt!663270) (v!25170 lt!663270))))

(assert (=> b!1729676 d!529739))

(declare-fun d!529741 () Bool)

(assert (=> d!529741 (= (inv!24518 (tag!3689 (h!24365 rules!3447))) (= (mod (str.len (value!105574 (tag!3689 (h!24365 rules!3447)))) 2) 0))))

(assert (=> b!1729698 d!529741))

(declare-fun d!529743 () Bool)

(declare-fun res!776925 () Bool)

(declare-fun e!1106816 () Bool)

(assert (=> d!529743 (=> (not res!776925) (not e!1106816))))

(assert (=> d!529743 (= res!776925 (semiInverseModEq!1333 (toChars!4731 (transformation!3365 (h!24365 rules!3447))) (toValue!4872 (transformation!3365 (h!24365 rules!3447)))))))

(assert (=> d!529743 (= (inv!24523 (transformation!3365 (h!24365 rules!3447))) e!1106816)))

(declare-fun b!1730073 () Bool)

(assert (=> b!1730073 (= e!1106816 (equivClasses!1274 (toChars!4731 (transformation!3365 (h!24365 rules!3447))) (toValue!4872 (transformation!3365 (h!24365 rules!3447)))))))

(assert (= (and d!529743 res!776925) b!1730073))

(declare-fun m!2138051 () Bool)

(assert (=> d!529743 m!2138051))

(declare-fun m!2138053 () Bool)

(assert (=> b!1730073 m!2138053))

(assert (=> b!1729698 d!529743))

(declare-fun d!529745 () Bool)

(assert (=> d!529745 (= (isEmpty!11929 rules!3447) ((_ is Nil!18964) rules!3447))))

(assert (=> b!1729677 d!529745))

(declare-fun b!1730084 () Bool)

(declare-fun e!1106824 () Bool)

(declare-fun inv!17 (TokenValue!3455) Bool)

(assert (=> b!1730084 (= e!1106824 (inv!17 (value!105575 token!523)))))

(declare-fun b!1730085 () Bool)

(declare-fun e!1106825 () Bool)

(declare-fun inv!15 (TokenValue!3455) Bool)

(assert (=> b!1730085 (= e!1106825 (inv!15 (value!105575 token!523)))))

(declare-fun b!1730086 () Bool)

(declare-fun e!1106823 () Bool)

(declare-fun inv!16 (TokenValue!3455) Bool)

(assert (=> b!1730086 (= e!1106823 (inv!16 (value!105575 token!523)))))

(declare-fun d!529747 () Bool)

(declare-fun c!282716 () Bool)

(assert (=> d!529747 (= c!282716 ((_ is IntegerValue!10365) (value!105575 token!523)))))

(assert (=> d!529747 (= (inv!21 (value!105575 token!523)) e!1106823)))

(declare-fun b!1730087 () Bool)

(declare-fun res!776928 () Bool)

(assert (=> b!1730087 (=> res!776928 e!1106825)))

(assert (=> b!1730087 (= res!776928 (not ((_ is IntegerValue!10367) (value!105575 token!523))))))

(assert (=> b!1730087 (= e!1106824 e!1106825)))

(declare-fun b!1730088 () Bool)

(assert (=> b!1730088 (= e!1106823 e!1106824)))

(declare-fun c!282715 () Bool)

(assert (=> b!1730088 (= c!282715 ((_ is IntegerValue!10366) (value!105575 token!523)))))

(assert (= (and d!529747 c!282716) b!1730086))

(assert (= (and d!529747 (not c!282716)) b!1730088))

(assert (= (and b!1730088 c!282715) b!1730084))

(assert (= (and b!1730088 (not c!282715)) b!1730087))

(assert (= (and b!1730087 (not res!776928)) b!1730085))

(declare-fun m!2138055 () Bool)

(assert (=> b!1730084 m!2138055))

(declare-fun m!2138057 () Bool)

(assert (=> b!1730085 m!2138057))

(declare-fun m!2138059 () Bool)

(assert (=> b!1730086 m!2138059))

(assert (=> b!1729675 d!529747))

(declare-fun d!529749 () Bool)

(assert (=> d!529749 (= (isDefined!3098 lt!663270) (not (isEmpty!11932 lt!663270)))))

(declare-fun bs!402584 () Bool)

(assert (= bs!402584 d!529749))

(declare-fun m!2138061 () Bool)

(assert (=> bs!402584 m!2138061))

(assert (=> b!1729697 d!529749))

(declare-fun b!1730134 () Bool)

(declare-fun res!776966 () Bool)

(declare-fun e!1106842 () Bool)

(assert (=> b!1730134 (=> (not res!776966) (not e!1106842))))

(declare-fun lt!663496 () Option!3754)

(assert (=> b!1730134 (= res!776966 (= (list!7666 (charsOf!2014 (_1!10723 (get!5654 lt!663496)))) (originalCharacters!4179 (_1!10723 (get!5654 lt!663496)))))))

(declare-fun d!529751 () Bool)

(declare-fun e!1106843 () Bool)

(assert (=> d!529751 e!1106843))

(declare-fun res!776968 () Bool)

(assert (=> d!529751 (=> res!776968 e!1106843)))

(assert (=> d!529751 (= res!776968 (isEmpty!11932 lt!663496))))

(declare-fun e!1106841 () Option!3754)

(assert (=> d!529751 (= lt!663496 e!1106841)))

(declare-fun c!282722 () Bool)

(assert (=> d!529751 (= c!282722 (and ((_ is Cons!18964) rules!3447) ((_ is Nil!18964) (t!160561 rules!3447))))))

(declare-fun lt!663497 () Unit!32817)

(declare-fun lt!663501 () Unit!32817)

(assert (=> d!529751 (= lt!663497 lt!663501)))

(assert (=> d!529751 (isPrefix!1606 lt!663294 lt!663294)))

(declare-fun lemmaIsPrefixRefl!1083 (List!19033 List!19033) Unit!32817)

(assert (=> d!529751 (= lt!663501 (lemmaIsPrefixRefl!1083 lt!663294 lt!663294))))

(declare-fun rulesValidInductive!1120 (LexerInterface!2994 List!19034) Bool)

(assert (=> d!529751 (rulesValidInductive!1120 thiss!24550 rules!3447)))

(assert (=> d!529751 (= (maxPrefix!1548 thiss!24550 rules!3447 lt!663294) lt!663496)))

(declare-fun b!1730135 () Bool)

(declare-fun res!776969 () Bool)

(assert (=> b!1730135 (=> (not res!776969) (not e!1106842))))

(assert (=> b!1730135 (= res!776969 (= (value!105575 (_1!10723 (get!5654 lt!663496))) (apply!5170 (transformation!3365 (rule!5339 (_1!10723 (get!5654 lt!663496)))) (seqFromList!2339 (originalCharacters!4179 (_1!10723 (get!5654 lt!663496)))))))))

(declare-fun b!1730136 () Bool)

(declare-fun lt!663500 () Option!3754)

(declare-fun lt!663495 () Option!3754)

(assert (=> b!1730136 (= e!1106841 (ite (and ((_ is None!3753) lt!663500) ((_ is None!3753) lt!663495)) None!3753 (ite ((_ is None!3753) lt!663495) lt!663500 (ite ((_ is None!3753) lt!663500) lt!663495 (ite (>= (size!15066 (_1!10723 (v!25170 lt!663500))) (size!15066 (_1!10723 (v!25170 lt!663495)))) lt!663500 lt!663495)))))))

(declare-fun call!109913 () Option!3754)

(assert (=> b!1730136 (= lt!663500 call!109913)))

(assert (=> b!1730136 (= lt!663495 (maxPrefix!1548 thiss!24550 (t!160561 rules!3447) lt!663294))))

(declare-fun b!1730137 () Bool)

(assert (=> b!1730137 (= e!1106841 call!109913)))

(declare-fun b!1730138 () Bool)

(assert (=> b!1730138 (= e!1106842 (contains!3387 rules!3447 (rule!5339 (_1!10723 (get!5654 lt!663496)))))))

(declare-fun bm!109908 () Bool)

(assert (=> bm!109908 (= call!109913 (maxPrefixOneRule!924 thiss!24550 (h!24365 rules!3447) lt!663294))))

(declare-fun b!1730139 () Bool)

(assert (=> b!1730139 (= e!1106843 e!1106842)))

(declare-fun res!776965 () Bool)

(assert (=> b!1730139 (=> (not res!776965) (not e!1106842))))

(assert (=> b!1730139 (= res!776965 (isDefined!3098 lt!663496))))

(declare-fun b!1730140 () Bool)

(declare-fun res!776967 () Bool)

(assert (=> b!1730140 (=> (not res!776967) (not e!1106842))))

(assert (=> b!1730140 (= res!776967 (= (++!5190 (list!7666 (charsOf!2014 (_1!10723 (get!5654 lt!663496)))) (_2!10723 (get!5654 lt!663496))) lt!663294))))

(declare-fun b!1730141 () Bool)

(declare-fun res!776964 () Bool)

(assert (=> b!1730141 (=> (not res!776964) (not e!1106842))))

(assert (=> b!1730141 (= res!776964 (< (size!15067 (_2!10723 (get!5654 lt!663496))) (size!15067 lt!663294)))))

(declare-fun b!1730142 () Bool)

(declare-fun res!776970 () Bool)

(assert (=> b!1730142 (=> (not res!776970) (not e!1106842))))

(assert (=> b!1730142 (= res!776970 (matchR!2167 (regex!3365 (rule!5339 (_1!10723 (get!5654 lt!663496)))) (list!7666 (charsOf!2014 (_1!10723 (get!5654 lt!663496))))))))

(assert (= (and d!529751 c!282722) b!1730137))

(assert (= (and d!529751 (not c!282722)) b!1730136))

(assert (= (or b!1730137 b!1730136) bm!109908))

(assert (= (and d!529751 (not res!776968)) b!1730139))

(assert (= (and b!1730139 res!776965) b!1730134))

(assert (= (and b!1730134 res!776966) b!1730141))

(assert (= (and b!1730141 res!776964) b!1730140))

(assert (= (and b!1730140 res!776967) b!1730135))

(assert (= (and b!1730135 res!776969) b!1730142))

(assert (= (and b!1730142 res!776970) b!1730138))

(declare-fun m!2138103 () Bool)

(assert (=> b!1730141 m!2138103))

(declare-fun m!2138105 () Bool)

(assert (=> b!1730141 m!2138105))

(assert (=> b!1730141 m!2137895))

(declare-fun m!2138107 () Bool)

(assert (=> bm!109908 m!2138107))

(declare-fun m!2138109 () Bool)

(assert (=> b!1730139 m!2138109))

(declare-fun m!2138111 () Bool)

(assert (=> d!529751 m!2138111))

(declare-fun m!2138113 () Bool)

(assert (=> d!529751 m!2138113))

(declare-fun m!2138115 () Bool)

(assert (=> d!529751 m!2138115))

(declare-fun m!2138117 () Bool)

(assert (=> d!529751 m!2138117))

(assert (=> b!1730134 m!2138103))

(declare-fun m!2138121 () Bool)

(assert (=> b!1730134 m!2138121))

(assert (=> b!1730134 m!2138121))

(declare-fun m!2138127 () Bool)

(assert (=> b!1730134 m!2138127))

(assert (=> b!1730138 m!2138103))

(declare-fun m!2138133 () Bool)

(assert (=> b!1730138 m!2138133))

(assert (=> b!1730142 m!2138103))

(assert (=> b!1730142 m!2138121))

(assert (=> b!1730142 m!2138121))

(assert (=> b!1730142 m!2138127))

(assert (=> b!1730142 m!2138127))

(declare-fun m!2138137 () Bool)

(assert (=> b!1730142 m!2138137))

(assert (=> b!1730140 m!2138103))

(assert (=> b!1730140 m!2138121))

(assert (=> b!1730140 m!2138121))

(assert (=> b!1730140 m!2138127))

(assert (=> b!1730140 m!2138127))

(declare-fun m!2138139 () Bool)

(assert (=> b!1730140 m!2138139))

(declare-fun m!2138141 () Bool)

(assert (=> b!1730136 m!2138141))

(assert (=> b!1730135 m!2138103))

(declare-fun m!2138143 () Bool)

(assert (=> b!1730135 m!2138143))

(assert (=> b!1730135 m!2138143))

(declare-fun m!2138155 () Bool)

(assert (=> b!1730135 m!2138155))

(assert (=> b!1729697 d!529751))

(declare-fun d!529769 () Bool)

(declare-fun list!7669 (Conc!6307) List!19033)

(assert (=> d!529769 (= (list!7666 lt!663285) (list!7669 (c!282637 lt!663285)))))

(declare-fun bs!402587 () Bool)

(assert (= bs!402587 d!529769))

(declare-fun m!2138159 () Bool)

(assert (=> bs!402587 m!2138159))

(assert (=> b!1729697 d!529769))

(declare-fun d!529771 () Bool)

(declare-fun lt!663509 () BalanceConc!12558)

(assert (=> d!529771 (= (list!7666 lt!663509) (originalCharacters!4179 token!523))))

(assert (=> d!529771 (= lt!663509 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 token!523))) (value!105575 token!523)))))

(assert (=> d!529771 (= (charsOf!2014 token!523) lt!663509)))

(declare-fun b_lambda!55159 () Bool)

(assert (=> (not b_lambda!55159) (not d!529771)))

(declare-fun t!160587 () Bool)

(declare-fun tb!102987 () Bool)

(assert (=> (and b!1729696 (= (toChars!4731 (transformation!3365 (rule!5339 token!523))) (toChars!4731 (transformation!3365 (rule!5339 token!523)))) t!160587) tb!102987))

(declare-fun b!1730155 () Bool)

(declare-fun e!1106851 () Bool)

(declare-fun tp!493338 () Bool)

(assert (=> b!1730155 (= e!1106851 (and (inv!24525 (c!282637 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 token!523))) (value!105575 token!523)))) tp!493338))))

(declare-fun result!123818 () Bool)

(assert (=> tb!102987 (= result!123818 (and (inv!24526 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 token!523))) (value!105575 token!523))) e!1106851))))

(assert (= tb!102987 b!1730155))

(declare-fun m!2138161 () Bool)

(assert (=> b!1730155 m!2138161))

(declare-fun m!2138163 () Bool)

(assert (=> tb!102987 m!2138163))

(assert (=> d!529771 t!160587))

(declare-fun b_and!127423 () Bool)

(assert (= b_and!127375 (and (=> t!160587 result!123818) b_and!127423)))

(declare-fun t!160589 () Bool)

(declare-fun tb!102989 () Bool)

(assert (=> (and b!1729670 (= (toChars!4731 (transformation!3365 rule!422)) (toChars!4731 (transformation!3365 (rule!5339 token!523)))) t!160589) tb!102989))

(declare-fun result!123820 () Bool)

(assert (= result!123820 result!123818))

(assert (=> d!529771 t!160589))

(declare-fun b_and!127425 () Bool)

(assert (= b_and!127377 (and (=> t!160589 result!123820) b_and!127425)))

(declare-fun tb!102991 () Bool)

(declare-fun t!160591 () Bool)

(assert (=> (and b!1729691 (= (toChars!4731 (transformation!3365 (h!24365 rules!3447))) (toChars!4731 (transformation!3365 (rule!5339 token!523)))) t!160591) tb!102991))

(declare-fun result!123822 () Bool)

(assert (= result!123822 result!123818))

(assert (=> d!529771 t!160591))

(declare-fun b_and!127427 () Bool)

(assert (= b_and!127379 (and (=> t!160591 result!123822) b_and!127427)))

(declare-fun m!2138165 () Bool)

(assert (=> d!529771 m!2138165))

(declare-fun m!2138167 () Bool)

(assert (=> d!529771 m!2138167))

(assert (=> b!1729697 d!529771))

(declare-fun d!529773 () Bool)

(declare-fun lt!663512 () Int)

(assert (=> d!529773 (= lt!663512 (size!15067 (list!7666 lt!663285)))))

(declare-fun size!15070 (Conc!6307) Int)

(assert (=> d!529773 (= lt!663512 (size!15070 (c!282637 lt!663285)))))

(assert (=> d!529773 (= (size!15068 lt!663285) lt!663512)))

(declare-fun bs!402588 () Bool)

(assert (= bs!402588 d!529773))

(assert (=> bs!402588 m!2137489))

(assert (=> bs!402588 m!2137489))

(declare-fun m!2138169 () Bool)

(assert (=> bs!402588 m!2138169))

(declare-fun m!2138171 () Bool)

(assert (=> bs!402588 m!2138171))

(assert (=> b!1729700 d!529773))

(declare-fun b!1730158 () Bool)

(declare-fun e!1106852 () Bool)

(assert (=> b!1730158 (= e!1106852 (nullable!1420 lt!663277))))

(declare-fun b!1730159 () Bool)

(declare-fun res!776986 () Bool)

(declare-fun e!1106857 () Bool)

(assert (=> b!1730159 (=> (not res!776986) (not e!1106857))))

(declare-fun call!109914 () Bool)

(assert (=> b!1730159 (= res!776986 (not call!109914))))

(declare-fun b!1730160 () Bool)

(declare-fun res!776979 () Bool)

(declare-fun e!1106853 () Bool)

(assert (=> b!1730160 (=> res!776979 e!1106853)))

(assert (=> b!1730160 (= res!776979 e!1106857)))

(declare-fun res!776987 () Bool)

(assert (=> b!1730160 (=> (not res!776987) (not e!1106857))))

(declare-fun lt!663515 () Bool)

(assert (=> b!1730160 (= res!776987 lt!663515)))

(declare-fun d!529775 () Bool)

(declare-fun e!1106860 () Bool)

(assert (=> d!529775 e!1106860))

(declare-fun c!282725 () Bool)

(assert (=> d!529775 (= c!282725 ((_ is EmptyExpr!4693) lt!663277))))

(assert (=> d!529775 (= lt!663515 e!1106852)))

(declare-fun c!282726 () Bool)

(assert (=> d!529775 (= c!282726 (isEmpty!11930 lt!663294))))

(assert (=> d!529775 (validRegex!1894 lt!663277)))

(assert (=> d!529775 (= (matchR!2167 lt!663277 lt!663294) lt!663515)))

(declare-fun b!1730161 () Bool)

(declare-fun e!1106858 () Bool)

(assert (=> b!1730161 (= e!1106853 e!1106858)))

(declare-fun res!776980 () Bool)

(assert (=> b!1730161 (=> (not res!776980) (not e!1106858))))

(assert (=> b!1730161 (= res!776980 (not lt!663515))))

(declare-fun b!1730162 () Bool)

(assert (=> b!1730162 (= e!1106852 (matchR!2167 (derivativeStep!1188 lt!663277 (head!3932 lt!663294)) (tail!2585 lt!663294)))))

(declare-fun b!1730163 () Bool)

(declare-fun res!776988 () Bool)

(declare-fun e!1106859 () Bool)

(assert (=> b!1730163 (=> res!776988 e!1106859)))

(assert (=> b!1730163 (= res!776988 (not (isEmpty!11930 (tail!2585 lt!663294))))))

(declare-fun b!1730164 () Bool)

(declare-fun e!1106855 () Bool)

(assert (=> b!1730164 (= e!1106860 e!1106855)))

(declare-fun c!282727 () Bool)

(assert (=> b!1730164 (= c!282727 ((_ is EmptyLang!4693) lt!663277))))

(declare-fun b!1730165 () Bool)

(declare-fun res!776984 () Bool)

(assert (=> b!1730165 (=> res!776984 e!1106853)))

(assert (=> b!1730165 (= res!776984 (not ((_ is ElementMatch!4693) lt!663277)))))

(assert (=> b!1730165 (= e!1106855 e!1106853)))

(declare-fun b!1730166 () Bool)

(assert (=> b!1730166 (= e!1106859 (not (= (head!3932 lt!663294) (c!282636 lt!663277))))))

(declare-fun b!1730167 () Bool)

(declare-fun res!776985 () Bool)

(assert (=> b!1730167 (=> (not res!776985) (not e!1106857))))

(assert (=> b!1730167 (= res!776985 (isEmpty!11930 (tail!2585 lt!663294)))))

(declare-fun b!1730168 () Bool)

(assert (=> b!1730168 (= e!1106857 (= (head!3932 lt!663294) (c!282636 lt!663277)))))

(declare-fun b!1730169 () Bool)

(assert (=> b!1730169 (= e!1106855 (not lt!663515))))

(declare-fun b!1730170 () Bool)

(assert (=> b!1730170 (= e!1106860 (= lt!663515 call!109914))))

(declare-fun bm!109909 () Bool)

(assert (=> bm!109909 (= call!109914 (isEmpty!11930 lt!663294))))

(declare-fun b!1730171 () Bool)

(assert (=> b!1730171 (= e!1106858 e!1106859)))

(declare-fun res!776983 () Bool)

(assert (=> b!1730171 (=> res!776983 e!1106859)))

(assert (=> b!1730171 (= res!776983 call!109914)))

(assert (= (and d!529775 c!282726) b!1730158))

(assert (= (and d!529775 (not c!282726)) b!1730162))

(assert (= (and d!529775 c!282725) b!1730170))

(assert (= (and d!529775 (not c!282725)) b!1730164))

(assert (= (and b!1730164 c!282727) b!1730169))

(assert (= (and b!1730164 (not c!282727)) b!1730165))

(assert (= (and b!1730165 (not res!776984)) b!1730160))

(assert (= (and b!1730160 res!776987) b!1730159))

(assert (= (and b!1730159 res!776986) b!1730167))

(assert (= (and b!1730167 res!776985) b!1730168))

(assert (= (and b!1730160 (not res!776979)) b!1730161))

(assert (= (and b!1730161 res!776980) b!1730171))

(assert (= (and b!1730171 (not res!776983)) b!1730163))

(assert (= (and b!1730163 (not res!776988)) b!1730166))

(assert (= (or b!1730170 b!1730159 b!1730171) bm!109909))

(assert (=> b!1730167 m!2137757))

(assert (=> b!1730167 m!2137757))

(assert (=> b!1730167 m!2137759))

(assert (=> b!1730162 m!2137761))

(assert (=> b!1730162 m!2137761))

(declare-fun m!2138173 () Bool)

(assert (=> b!1730162 m!2138173))

(assert (=> b!1730162 m!2137757))

(assert (=> b!1730162 m!2138173))

(assert (=> b!1730162 m!2137757))

(declare-fun m!2138175 () Bool)

(assert (=> b!1730162 m!2138175))

(declare-fun m!2138177 () Bool)

(assert (=> b!1730158 m!2138177))

(assert (=> b!1730168 m!2137761))

(assert (=> d!529775 m!2137769))

(declare-fun m!2138179 () Bool)

(assert (=> d!529775 m!2138179))

(assert (=> bm!109909 m!2137769))

(assert (=> b!1730166 m!2137761))

(assert (=> b!1730163 m!2137757))

(assert (=> b!1730163 m!2137757))

(assert (=> b!1730163 m!2137759))

(assert (=> b!1729700 d!529775))

(declare-fun d!529777 () Bool)

(assert (=> d!529777 (matchR!2167 (rulesRegex!723 thiss!24550 rules!3447) (list!7666 (charsOf!2014 token!523)))))

(declare-fun lt!663520 () Unit!32817)

(declare-fun choose!10575 (LexerInterface!2994 List!19034 List!19033 Token!6296 Rule!6530 List!19033) Unit!32817)

(assert (=> d!529777 (= lt!663520 (choose!10575 thiss!24550 rules!3447 lt!663294 token!523 rule!422 Nil!18963))))

(assert (=> d!529777 (not (isEmpty!11929 rules!3447))))

(assert (=> d!529777 (= (lemmaMaxPrefixThenMatchesRulesRegex!114 thiss!24550 rules!3447 lt!663294 token!523 rule!422 Nil!18963) lt!663520)))

(declare-fun bs!402590 () Bool)

(assert (= bs!402590 d!529777))

(assert (=> bs!402590 m!2137491))

(assert (=> bs!402590 m!2137491))

(declare-fun m!2138203 () Bool)

(assert (=> bs!402590 m!2138203))

(assert (=> bs!402590 m!2137605))

(assert (=> bs!402590 m!2138203))

(declare-fun m!2138205 () Bool)

(assert (=> bs!402590 m!2138205))

(assert (=> bs!402590 m!2137607))

(assert (=> bs!402590 m!2137605))

(declare-fun m!2138207 () Bool)

(assert (=> bs!402590 m!2138207))

(assert (=> b!1729700 d!529777))

(declare-fun d!529785 () Bool)

(assert (=> d!529785 (= (list!7666 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (dynLambda!8830 (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) lt!663287))) (list!7669 (c!282637 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (dynLambda!8830 (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) lt!663287)))))))

(declare-fun bs!402591 () Bool)

(assert (= bs!402591 d!529785))

(declare-fun m!2138209 () Bool)

(assert (=> bs!402591 m!2138209))

(assert (=> b!1729679 d!529785))

(declare-fun bs!402594 () Bool)

(declare-fun d!529787 () Bool)

(assert (= bs!402594 (and d!529787 b!1729695)))

(declare-fun lambda!69353 () Int)

(assert (=> bs!402594 (= lambda!69353 lambda!69338)))

(declare-fun b!1730208 () Bool)

(declare-fun e!1106877 () Bool)

(assert (=> b!1730208 (= e!1106877 true)))

(assert (=> d!529787 e!1106877))

(assert (= d!529787 b!1730208))

(assert (=> b!1730208 (< (dynLambda!8826 order!11671 (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281))))) (dynLambda!8827 order!11673 lambda!69353))))

(assert (=> b!1730208 (< (dynLambda!8828 order!11675 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281))))) (dynLambda!8827 order!11673 lambda!69353))))

(assert (=> d!529787 (= (list!7666 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (dynLambda!8830 (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) lt!663287))) (list!7666 lt!663287))))

(declare-fun lt!663526 () Unit!32817)

(declare-fun ForallOf!275 (Int BalanceConc!12558) Unit!32817)

(assert (=> d!529787 (= lt!663526 (ForallOf!275 lambda!69353 lt!663287))))

(assert (=> d!529787 (= (lemmaSemiInverse!511 (transformation!3365 (rule!5339 (_1!10723 lt!663281))) lt!663287) lt!663526)))

(declare-fun b_lambda!55165 () Bool)

(assert (=> (not b_lambda!55165) (not d!529787)))

(assert (=> d!529787 t!160542))

(declare-fun b_and!127441 () Bool)

(assert (= b_and!127423 (and (=> t!160542 result!123772) b_and!127441)))

(assert (=> d!529787 t!160544))

(declare-fun b_and!127443 () Bool)

(assert (= b_and!127425 (and (=> t!160544 result!123776) b_and!127443)))

(assert (=> d!529787 t!160546))

(declare-fun b_and!127445 () Bool)

(assert (= b_and!127427 (and (=> t!160546 result!123778) b_and!127445)))

(declare-fun b_lambda!55167 () Bool)

(assert (=> (not b_lambda!55167) (not d!529787)))

(assert (=> d!529787 t!160548))

(declare-fun b_and!127447 () Bool)

(assert (= b_and!127411 (and (=> t!160548 result!123780) b_and!127447)))

(assert (=> d!529787 t!160550))

(declare-fun b_and!127449 () Bool)

(assert (= b_and!127413 (and (=> t!160550 result!123784) b_and!127449)))

(assert (=> d!529787 t!160552))

(declare-fun b_and!127451 () Bool)

(assert (= b_and!127415 (and (=> t!160552 result!123786) b_and!127451)))

(assert (=> d!529787 m!2137569))

(assert (=> d!529787 m!2137571))

(assert (=> d!529787 m!2137573))

(assert (=> d!529787 m!2137531))

(declare-fun m!2138215 () Bool)

(assert (=> d!529787 m!2138215))

(assert (=> d!529787 m!2137569))

(assert (=> d!529787 m!2137571))

(assert (=> b!1729679 d!529787))

(declare-fun d!529795 () Bool)

(declare-fun c!282734 () Bool)

(assert (=> d!529795 (= c!282734 ((_ is Node!6307) (c!282637 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (value!105575 (_1!10723 lt!663281))))))))

(declare-fun e!1106878 () Bool)

(assert (=> d!529795 (= (inv!24525 (c!282637 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (value!105575 (_1!10723 lt!663281))))) e!1106878)))

(declare-fun b!1730209 () Bool)

(assert (=> b!1730209 (= e!1106878 (inv!24529 (c!282637 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (value!105575 (_1!10723 lt!663281))))))))

(declare-fun b!1730210 () Bool)

(declare-fun e!1106879 () Bool)

(assert (=> b!1730210 (= e!1106878 e!1106879)))

(declare-fun res!777008 () Bool)

(assert (=> b!1730210 (= res!777008 (not ((_ is Leaf!9210) (c!282637 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (value!105575 (_1!10723 lt!663281)))))))))

(assert (=> b!1730210 (=> res!777008 e!1106879)))

(declare-fun b!1730211 () Bool)

(assert (=> b!1730211 (= e!1106879 (inv!24530 (c!282637 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (value!105575 (_1!10723 lt!663281))))))))

(assert (= (and d!529795 c!282734) b!1730209))

(assert (= (and d!529795 (not c!282734)) b!1730210))

(assert (= (and b!1730210 (not res!777008)) b!1730211))

(declare-fun m!2138221 () Bool)

(assert (=> b!1730209 m!2138221))

(declare-fun m!2138225 () Bool)

(assert (=> b!1730211 m!2138225))

(assert (=> b!1729720 d!529795))

(declare-fun b!1730212 () Bool)

(declare-fun e!1106881 () Bool)

(assert (=> b!1730212 (= e!1106881 (inv!17 (dynLambda!8830 (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) lt!663287)))))

(declare-fun b!1730213 () Bool)

(declare-fun e!1106882 () Bool)

(assert (=> b!1730213 (= e!1106882 (inv!15 (dynLambda!8830 (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) lt!663287)))))

(declare-fun b!1730214 () Bool)

(declare-fun e!1106880 () Bool)

(assert (=> b!1730214 (= e!1106880 (inv!16 (dynLambda!8830 (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) lt!663287)))))

(declare-fun d!529797 () Bool)

(declare-fun c!282736 () Bool)

(assert (=> d!529797 (= c!282736 ((_ is IntegerValue!10365) (dynLambda!8830 (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) lt!663287)))))

(assert (=> d!529797 (= (inv!21 (dynLambda!8830 (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) lt!663287)) e!1106880)))

(declare-fun b!1730215 () Bool)

(declare-fun res!777009 () Bool)

(assert (=> b!1730215 (=> res!777009 e!1106882)))

(assert (=> b!1730215 (= res!777009 (not ((_ is IntegerValue!10367) (dynLambda!8830 (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) lt!663287))))))

(assert (=> b!1730215 (= e!1106881 e!1106882)))

(declare-fun b!1730216 () Bool)

(assert (=> b!1730216 (= e!1106880 e!1106881)))

(declare-fun c!282735 () Bool)

(assert (=> b!1730216 (= c!282735 ((_ is IntegerValue!10366) (dynLambda!8830 (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) lt!663287)))))

(assert (= (and d!529797 c!282736) b!1730214))

(assert (= (and d!529797 (not c!282736)) b!1730216))

(assert (= (and b!1730216 c!282735) b!1730212))

(assert (= (and b!1730216 (not c!282735)) b!1730215))

(assert (= (and b!1730215 (not res!777009)) b!1730213))

(declare-fun m!2138237 () Bool)

(assert (=> b!1730212 m!2138237))

(declare-fun m!2138239 () Bool)

(assert (=> b!1730213 m!2138239))

(declare-fun m!2138241 () Bool)

(assert (=> b!1730214 m!2138241))

(assert (=> tb!102951 d!529797))

(declare-fun d!529799 () Bool)

(assert (=> d!529799 (= (inv!24526 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (dynLambda!8830 (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) lt!663287))) (isBalanced!1974 (c!282637 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (dynLambda!8830 (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) lt!663287)))))))

(declare-fun bs!402595 () Bool)

(assert (= bs!402595 d!529799))

(declare-fun m!2138245 () Bool)

(assert (=> bs!402595 m!2138245))

(assert (=> tb!102945 d!529799))

(declare-fun b!1730217 () Bool)

(declare-fun e!1106883 () Bool)

(assert (=> b!1730217 (= e!1106883 (nullable!1420 (regex!3365 (rule!5339 (_1!10723 lt!663281)))))))

(declare-fun b!1730218 () Bool)

(declare-fun res!777015 () Bool)

(declare-fun e!1106886 () Bool)

(assert (=> b!1730218 (=> (not res!777015) (not e!1106886))))

(declare-fun call!109917 () Bool)

(assert (=> b!1730218 (= res!777015 (not call!109917))))

(declare-fun b!1730219 () Bool)

(declare-fun res!777010 () Bool)

(declare-fun e!1106884 () Bool)

(assert (=> b!1730219 (=> res!777010 e!1106884)))

(assert (=> b!1730219 (= res!777010 e!1106886)))

(declare-fun res!777016 () Bool)

(assert (=> b!1730219 (=> (not res!777016) (not e!1106886))))

(declare-fun lt!663532 () Bool)

(assert (=> b!1730219 (= res!777016 lt!663532)))

(declare-fun d!529801 () Bool)

(declare-fun e!1106889 () Bool)

(assert (=> d!529801 e!1106889))

(declare-fun c!282737 () Bool)

(assert (=> d!529801 (= c!282737 ((_ is EmptyExpr!4693) (regex!3365 (rule!5339 (_1!10723 lt!663281)))))))

(assert (=> d!529801 (= lt!663532 e!1106883)))

(declare-fun c!282738 () Bool)

(assert (=> d!529801 (= c!282738 (isEmpty!11930 lt!663297))))

(assert (=> d!529801 (validRegex!1894 (regex!3365 (rule!5339 (_1!10723 lt!663281))))))

(assert (=> d!529801 (= (matchR!2167 (regex!3365 (rule!5339 (_1!10723 lt!663281))) lt!663297) lt!663532)))

(declare-fun b!1730220 () Bool)

(declare-fun e!1106887 () Bool)

(assert (=> b!1730220 (= e!1106884 e!1106887)))

(declare-fun res!777011 () Bool)

(assert (=> b!1730220 (=> (not res!777011) (not e!1106887))))

(assert (=> b!1730220 (= res!777011 (not lt!663532))))

(declare-fun b!1730221 () Bool)

(assert (=> b!1730221 (= e!1106883 (matchR!2167 (derivativeStep!1188 (regex!3365 (rule!5339 (_1!10723 lt!663281))) (head!3932 lt!663297)) (tail!2585 lt!663297)))))

(declare-fun b!1730222 () Bool)

(declare-fun res!777017 () Bool)

(declare-fun e!1106888 () Bool)

(assert (=> b!1730222 (=> res!777017 e!1106888)))

(assert (=> b!1730222 (= res!777017 (not (isEmpty!11930 (tail!2585 lt!663297))))))

(declare-fun b!1730223 () Bool)

(declare-fun e!1106885 () Bool)

(assert (=> b!1730223 (= e!1106889 e!1106885)))

(declare-fun c!282739 () Bool)

(assert (=> b!1730223 (= c!282739 ((_ is EmptyLang!4693) (regex!3365 (rule!5339 (_1!10723 lt!663281)))))))

(declare-fun b!1730224 () Bool)

(declare-fun res!777013 () Bool)

(assert (=> b!1730224 (=> res!777013 e!1106884)))

(assert (=> b!1730224 (= res!777013 (not ((_ is ElementMatch!4693) (regex!3365 (rule!5339 (_1!10723 lt!663281))))))))

(assert (=> b!1730224 (= e!1106885 e!1106884)))

(declare-fun b!1730225 () Bool)

(assert (=> b!1730225 (= e!1106888 (not (= (head!3932 lt!663297) (c!282636 (regex!3365 (rule!5339 (_1!10723 lt!663281)))))))))

(declare-fun b!1730226 () Bool)

(declare-fun res!777014 () Bool)

(assert (=> b!1730226 (=> (not res!777014) (not e!1106886))))

(assert (=> b!1730226 (= res!777014 (isEmpty!11930 (tail!2585 lt!663297)))))

(declare-fun b!1730227 () Bool)

(assert (=> b!1730227 (= e!1106886 (= (head!3932 lt!663297) (c!282636 (regex!3365 (rule!5339 (_1!10723 lt!663281))))))))

(declare-fun b!1730228 () Bool)

(assert (=> b!1730228 (= e!1106885 (not lt!663532))))

(declare-fun b!1730229 () Bool)

(assert (=> b!1730229 (= e!1106889 (= lt!663532 call!109917))))

(declare-fun bm!109912 () Bool)

(assert (=> bm!109912 (= call!109917 (isEmpty!11930 lt!663297))))

(declare-fun b!1730230 () Bool)

(assert (=> b!1730230 (= e!1106887 e!1106888)))

(declare-fun res!777012 () Bool)

(assert (=> b!1730230 (=> res!777012 e!1106888)))

(assert (=> b!1730230 (= res!777012 call!109917)))

(assert (= (and d!529801 c!282738) b!1730217))

(assert (= (and d!529801 (not c!282738)) b!1730221))

(assert (= (and d!529801 c!282737) b!1730229))

(assert (= (and d!529801 (not c!282737)) b!1730223))

(assert (= (and b!1730223 c!282739) b!1730228))

(assert (= (and b!1730223 (not c!282739)) b!1730224))

(assert (= (and b!1730224 (not res!777013)) b!1730219))

(assert (= (and b!1730219 res!777016) b!1730218))

(assert (= (and b!1730218 res!777015) b!1730226))

(assert (= (and b!1730226 res!777014) b!1730227))

(assert (= (and b!1730219 (not res!777010)) b!1730220))

(assert (= (and b!1730220 res!777011) b!1730230))

(assert (= (and b!1730230 (not res!777012)) b!1730222))

(assert (= (and b!1730222 (not res!777017)) b!1730225))

(assert (= (or b!1730229 b!1730218 b!1730230) bm!109912))

(declare-fun m!2138261 () Bool)

(assert (=> b!1730226 m!2138261))

(assert (=> b!1730226 m!2138261))

(declare-fun m!2138263 () Bool)

(assert (=> b!1730226 m!2138263))

(declare-fun m!2138265 () Bool)

(assert (=> b!1730221 m!2138265))

(assert (=> b!1730221 m!2138265))

(declare-fun m!2138269 () Bool)

(assert (=> b!1730221 m!2138269))

(assert (=> b!1730221 m!2138261))

(assert (=> b!1730221 m!2138269))

(assert (=> b!1730221 m!2138261))

(declare-fun m!2138271 () Bool)

(assert (=> b!1730221 m!2138271))

(declare-fun m!2138273 () Bool)

(assert (=> b!1730217 m!2138273))

(assert (=> b!1730227 m!2138265))

(declare-fun m!2138275 () Bool)

(assert (=> d!529801 m!2138275))

(declare-fun m!2138279 () Bool)

(assert (=> d!529801 m!2138279))

(assert (=> bm!109912 m!2138275))

(assert (=> b!1730225 m!2138265))

(assert (=> b!1730222 m!2138261))

(assert (=> b!1730222 m!2138261))

(assert (=> b!1730222 m!2138263))

(assert (=> b!1729699 d!529801))

(declare-fun d!529811 () Bool)

(declare-fun e!1106923 () Bool)

(assert (=> d!529811 e!1106923))

(declare-fun res!777040 () Bool)

(assert (=> d!529811 (=> (not res!777040) (not e!1106923))))

(assert (=> d!529811 (= res!777040 (isDefined!3097 (getRuleFromTag!415 thiss!24550 rules!3447 (tag!3689 (rule!5339 (_1!10723 lt!663281))))))))

(declare-fun lt!663541 () Unit!32817)

(declare-fun choose!10576 (LexerInterface!2994 List!19034 List!19033 Token!6296) Unit!32817)

(assert (=> d!529811 (= lt!663541 (choose!10576 thiss!24550 rules!3447 lt!663276 (_1!10723 lt!663281)))))

(assert (=> d!529811 (rulesInvariant!2663 thiss!24550 rules!3447)))

(assert (=> d!529811 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!415 thiss!24550 rules!3447 lt!663276 (_1!10723 lt!663281)) lt!663541)))

(declare-fun b!1730305 () Bool)

(declare-fun res!777041 () Bool)

(assert (=> b!1730305 (=> (not res!777041) (not e!1106923))))

(assert (=> b!1730305 (= res!777041 (matchR!2167 (regex!3365 (get!5655 (getRuleFromTag!415 thiss!24550 rules!3447 (tag!3689 (rule!5339 (_1!10723 lt!663281)))))) (list!7666 (charsOf!2014 (_1!10723 lt!663281)))))))

(declare-fun b!1730306 () Bool)

(assert (=> b!1730306 (= e!1106923 (= (rule!5339 (_1!10723 lt!663281)) (get!5655 (getRuleFromTag!415 thiss!24550 rules!3447 (tag!3689 (rule!5339 (_1!10723 lt!663281)))))))))

(assert (= (and d!529811 res!777040) b!1730305))

(assert (= (and b!1730305 res!777041) b!1730306))

(assert (=> d!529811 m!2137511))

(assert (=> d!529811 m!2137511))

(declare-fun m!2138323 () Bool)

(assert (=> d!529811 m!2138323))

(declare-fun m!2138325 () Bool)

(assert (=> d!529811 m!2138325))

(assert (=> d!529811 m!2137595))

(assert (=> b!1730305 m!2137563))

(declare-fun m!2138327 () Bool)

(assert (=> b!1730305 m!2138327))

(assert (=> b!1730305 m!2137511))

(assert (=> b!1730305 m!2137521))

(assert (=> b!1730305 m!2137563))

(assert (=> b!1730305 m!2137511))

(declare-fun m!2138329 () Bool)

(assert (=> b!1730305 m!2138329))

(assert (=> b!1730305 m!2137521))

(assert (=> b!1730306 m!2137511))

(assert (=> b!1730306 m!2137511))

(assert (=> b!1730306 m!2138329))

(assert (=> b!1729678 d!529811))

(declare-fun d!529831 () Bool)

(declare-fun e!1106948 () Bool)

(assert (=> d!529831 e!1106948))

(declare-fun res!777051 () Bool)

(assert (=> d!529831 (=> res!777051 e!1106948)))

(declare-fun lt!663544 () Bool)

(assert (=> d!529831 (= res!777051 (not lt!663544))))

(declare-fun e!1106950 () Bool)

(assert (=> d!529831 (= lt!663544 e!1106950)))

(declare-fun res!777052 () Bool)

(assert (=> d!529831 (=> res!777052 e!1106950)))

(assert (=> d!529831 (= res!777052 ((_ is Nil!18963) lt!663297))))

(assert (=> d!529831 (= (isPrefix!1606 lt!663297 (++!5190 lt!663297 (_2!10723 lt!663281))) lt!663544)))

(declare-fun b!1730339 () Bool)

(assert (=> b!1730339 (= e!1106948 (>= (size!15067 (++!5190 lt!663297 (_2!10723 lt!663281))) (size!15067 lt!663297)))))

(declare-fun b!1730336 () Bool)

(declare-fun e!1106949 () Bool)

(assert (=> b!1730336 (= e!1106950 e!1106949)))

(declare-fun res!777050 () Bool)

(assert (=> b!1730336 (=> (not res!777050) (not e!1106949))))

(assert (=> b!1730336 (= res!777050 (not ((_ is Nil!18963) (++!5190 lt!663297 (_2!10723 lt!663281)))))))

(declare-fun b!1730338 () Bool)

(assert (=> b!1730338 (= e!1106949 (isPrefix!1606 (tail!2585 lt!663297) (tail!2585 (++!5190 lt!663297 (_2!10723 lt!663281)))))))

(declare-fun b!1730337 () Bool)

(declare-fun res!777053 () Bool)

(assert (=> b!1730337 (=> (not res!777053) (not e!1106949))))

(assert (=> b!1730337 (= res!777053 (= (head!3932 lt!663297) (head!3932 (++!5190 lt!663297 (_2!10723 lt!663281)))))))

(assert (= (and d!529831 (not res!777052)) b!1730336))

(assert (= (and b!1730336 res!777050) b!1730337))

(assert (= (and b!1730337 res!777053) b!1730338))

(assert (= (and d!529831 (not res!777051)) b!1730339))

(assert (=> b!1730339 m!2137527))

(declare-fun m!2138347 () Bool)

(assert (=> b!1730339 m!2138347))

(assert (=> b!1730339 m!2137585))

(assert (=> b!1730338 m!2138261))

(assert (=> b!1730338 m!2137527))

(declare-fun m!2138349 () Bool)

(assert (=> b!1730338 m!2138349))

(assert (=> b!1730338 m!2138261))

(assert (=> b!1730338 m!2138349))

(declare-fun m!2138351 () Bool)

(assert (=> b!1730338 m!2138351))

(assert (=> b!1730337 m!2138265))

(assert (=> b!1730337 m!2137527))

(declare-fun m!2138353 () Bool)

(assert (=> b!1730337 m!2138353))

(assert (=> b!1729678 d!529831))

(declare-fun d!529833 () Bool)

(declare-fun e!1106951 () Bool)

(assert (=> d!529833 e!1106951))

(declare-fun res!777055 () Bool)

(assert (=> d!529833 (=> res!777055 e!1106951)))

(declare-fun lt!663545 () Bool)

(assert (=> d!529833 (= res!777055 (not lt!663545))))

(declare-fun e!1106953 () Bool)

(assert (=> d!529833 (= lt!663545 e!1106953)))

(declare-fun res!777056 () Bool)

(assert (=> d!529833 (=> res!777056 e!1106953)))

(assert (=> d!529833 (= res!777056 ((_ is Nil!18963) lt!663294))))

(assert (=> d!529833 (= (isPrefix!1606 lt!663294 lt!663276) lt!663545)))

(declare-fun b!1730343 () Bool)

(assert (=> b!1730343 (= e!1106951 (>= (size!15067 lt!663276) (size!15067 lt!663294)))))

(declare-fun b!1730340 () Bool)

(declare-fun e!1106952 () Bool)

(assert (=> b!1730340 (= e!1106953 e!1106952)))

(declare-fun res!777054 () Bool)

(assert (=> b!1730340 (=> (not res!777054) (not e!1106952))))

(assert (=> b!1730340 (= res!777054 (not ((_ is Nil!18963) lt!663276)))))

(declare-fun b!1730342 () Bool)

(assert (=> b!1730342 (= e!1106952 (isPrefix!1606 (tail!2585 lt!663294) (tail!2585 lt!663276)))))

(declare-fun b!1730341 () Bool)

(declare-fun res!777057 () Bool)

(assert (=> b!1730341 (=> (not res!777057) (not e!1106952))))

(assert (=> b!1730341 (= res!777057 (= (head!3932 lt!663294) (head!3932 lt!663276)))))

(assert (= (and d!529833 (not res!777056)) b!1730340))

(assert (= (and b!1730340 res!777054) b!1730341))

(assert (= (and b!1730341 res!777057) b!1730342))

(assert (= (and d!529833 (not res!777055)) b!1730343))

(assert (=> b!1730343 m!2137921))

(assert (=> b!1730343 m!2137895))

(assert (=> b!1730342 m!2137757))

(assert (=> b!1730342 m!2137923))

(assert (=> b!1730342 m!2137757))

(assert (=> b!1730342 m!2137923))

(declare-fun m!2138355 () Bool)

(assert (=> b!1730342 m!2138355))

(assert (=> b!1730341 m!2137761))

(declare-fun m!2138357 () Bool)

(assert (=> b!1730341 m!2138357))

(assert (=> b!1729678 d!529833))

(declare-fun b!1730346 () Bool)

(declare-fun res!777058 () Bool)

(declare-fun e!1106955 () Bool)

(assert (=> b!1730346 (=> (not res!777058) (not e!1106955))))

(declare-fun lt!663546 () List!19033)

(assert (=> b!1730346 (= res!777058 (= (size!15067 lt!663546) (+ (size!15067 lt!663297) (size!15067 (_2!10723 lt!663281)))))))

(declare-fun b!1730345 () Bool)

(declare-fun e!1106954 () List!19033)

(assert (=> b!1730345 (= e!1106954 (Cons!18963 (h!24364 lt!663297) (++!5190 (t!160560 lt!663297) (_2!10723 lt!663281))))))

(declare-fun b!1730344 () Bool)

(assert (=> b!1730344 (= e!1106954 (_2!10723 lt!663281))))

(declare-fun b!1730347 () Bool)

(assert (=> b!1730347 (= e!1106955 (or (not (= (_2!10723 lt!663281) Nil!18963)) (= lt!663546 lt!663297)))))

(declare-fun d!529835 () Bool)

(assert (=> d!529835 e!1106955))

(declare-fun res!777059 () Bool)

(assert (=> d!529835 (=> (not res!777059) (not e!1106955))))

(assert (=> d!529835 (= res!777059 (= (content!2715 lt!663546) ((_ map or) (content!2715 lt!663297) (content!2715 (_2!10723 lt!663281)))))))

(assert (=> d!529835 (= lt!663546 e!1106954)))

(declare-fun c!282750 () Bool)

(assert (=> d!529835 (= c!282750 ((_ is Nil!18963) lt!663297))))

(assert (=> d!529835 (= (++!5190 lt!663297 (_2!10723 lt!663281)) lt!663546)))

(assert (= (and d!529835 c!282750) b!1730344))

(assert (= (and d!529835 (not c!282750)) b!1730345))

(assert (= (and d!529835 res!777059) b!1730346))

(assert (= (and b!1730346 res!777058) b!1730347))

(declare-fun m!2138359 () Bool)

(assert (=> b!1730346 m!2138359))

(assert (=> b!1730346 m!2137585))

(declare-fun m!2138361 () Bool)

(assert (=> b!1730346 m!2138361))

(declare-fun m!2138363 () Bool)

(assert (=> b!1730345 m!2138363))

(declare-fun m!2138365 () Bool)

(assert (=> d!529835 m!2138365))

(declare-fun m!2138367 () Bool)

(assert (=> d!529835 m!2138367))

(declare-fun m!2138369 () Bool)

(assert (=> d!529835 m!2138369))

(assert (=> b!1729678 d!529835))

(declare-fun b!1730360 () Bool)

(declare-fun e!1106964 () Bool)

(declare-fun e!1106966 () Bool)

(assert (=> b!1730360 (= e!1106964 e!1106966)))

(declare-fun res!777065 () Bool)

(assert (=> b!1730360 (=> (not res!777065) (not e!1106966))))

(declare-fun lt!663553 () Option!3755)

(assert (=> b!1730360 (= res!777065 (contains!3387 rules!3447 (get!5655 lt!663553)))))

(declare-fun d!529837 () Bool)

(assert (=> d!529837 e!1106964))

(declare-fun res!777064 () Bool)

(assert (=> d!529837 (=> res!777064 e!1106964)))

(declare-fun isEmpty!11934 (Option!3755) Bool)

(assert (=> d!529837 (= res!777064 (isEmpty!11934 lt!663553))))

(declare-fun e!1106965 () Option!3755)

(assert (=> d!529837 (= lt!663553 e!1106965)))

(declare-fun c!282756 () Bool)

(assert (=> d!529837 (= c!282756 (and ((_ is Cons!18964) rules!3447) (= (tag!3689 (h!24365 rules!3447)) (tag!3689 (rule!5339 (_1!10723 lt!663281))))))))

(assert (=> d!529837 (rulesInvariant!2663 thiss!24550 rules!3447)))

(assert (=> d!529837 (= (getRuleFromTag!415 thiss!24550 rules!3447 (tag!3689 (rule!5339 (_1!10723 lt!663281)))) lt!663553)))

(declare-fun b!1730361 () Bool)

(assert (=> b!1730361 (= e!1106966 (= (tag!3689 (get!5655 lt!663553)) (tag!3689 (rule!5339 (_1!10723 lt!663281)))))))

(declare-fun b!1730362 () Bool)

(declare-fun e!1106967 () Option!3755)

(assert (=> b!1730362 (= e!1106965 e!1106967)))

(declare-fun c!282755 () Bool)

(assert (=> b!1730362 (= c!282755 (and ((_ is Cons!18964) rules!3447) (not (= (tag!3689 (h!24365 rules!3447)) (tag!3689 (rule!5339 (_1!10723 lt!663281)))))))))

(declare-fun b!1730363 () Bool)

(assert (=> b!1730363 (= e!1106967 None!3754)))

(declare-fun b!1730364 () Bool)

(assert (=> b!1730364 (= e!1106965 (Some!3754 (h!24365 rules!3447)))))

(declare-fun b!1730365 () Bool)

(declare-fun lt!663555 () Unit!32817)

(declare-fun lt!663554 () Unit!32817)

(assert (=> b!1730365 (= lt!663555 lt!663554)))

(assert (=> b!1730365 (rulesInvariant!2663 thiss!24550 (t!160561 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!148 (LexerInterface!2994 Rule!6530 List!19034) Unit!32817)

(assert (=> b!1730365 (= lt!663554 (lemmaInvariantOnRulesThenOnTail!148 thiss!24550 (h!24365 rules!3447) (t!160561 rules!3447)))))

(assert (=> b!1730365 (= e!1106967 (getRuleFromTag!415 thiss!24550 (t!160561 rules!3447) (tag!3689 (rule!5339 (_1!10723 lt!663281)))))))

(assert (= (and d!529837 c!282756) b!1730364))

(assert (= (and d!529837 (not c!282756)) b!1730362))

(assert (= (and b!1730362 c!282755) b!1730365))

(assert (= (and b!1730362 (not c!282755)) b!1730363))

(assert (= (and d!529837 (not res!777064)) b!1730360))

(assert (= (and b!1730360 res!777065) b!1730361))

(declare-fun m!2138371 () Bool)

(assert (=> b!1730360 m!2138371))

(assert (=> b!1730360 m!2138371))

(declare-fun m!2138373 () Bool)

(assert (=> b!1730360 m!2138373))

(declare-fun m!2138375 () Bool)

(assert (=> d!529837 m!2138375))

(assert (=> d!529837 m!2137595))

(assert (=> b!1730361 m!2138371))

(declare-fun m!2138377 () Bool)

(assert (=> b!1730365 m!2138377))

(declare-fun m!2138379 () Bool)

(assert (=> b!1730365 m!2138379))

(declare-fun m!2138381 () Bool)

(assert (=> b!1730365 m!2138381))

(assert (=> b!1729678 d!529837))

(declare-fun b!1730366 () Bool)

(declare-fun res!777068 () Bool)

(declare-fun e!1106969 () Bool)

(assert (=> b!1730366 (=> (not res!777068) (not e!1106969))))

(declare-fun lt!663557 () Option!3754)

(assert (=> b!1730366 (= res!777068 (= (list!7666 (charsOf!2014 (_1!10723 (get!5654 lt!663557)))) (originalCharacters!4179 (_1!10723 (get!5654 lt!663557)))))))

(declare-fun d!529839 () Bool)

(declare-fun e!1106970 () Bool)

(assert (=> d!529839 e!1106970))

(declare-fun res!777070 () Bool)

(assert (=> d!529839 (=> res!777070 e!1106970)))

(assert (=> d!529839 (= res!777070 (isEmpty!11932 lt!663557))))

(declare-fun e!1106968 () Option!3754)

(assert (=> d!529839 (= lt!663557 e!1106968)))

(declare-fun c!282757 () Bool)

(assert (=> d!529839 (= c!282757 (and ((_ is Cons!18964) rules!3447) ((_ is Nil!18964) (t!160561 rules!3447))))))

(declare-fun lt!663558 () Unit!32817)

(declare-fun lt!663560 () Unit!32817)

(assert (=> d!529839 (= lt!663558 lt!663560)))

(assert (=> d!529839 (isPrefix!1606 lt!663276 lt!663276)))

(assert (=> d!529839 (= lt!663560 (lemmaIsPrefixRefl!1083 lt!663276 lt!663276))))

(assert (=> d!529839 (rulesValidInductive!1120 thiss!24550 rules!3447)))

(assert (=> d!529839 (= (maxPrefix!1548 thiss!24550 rules!3447 lt!663276) lt!663557)))

(declare-fun b!1730367 () Bool)

(declare-fun res!777071 () Bool)

(assert (=> b!1730367 (=> (not res!777071) (not e!1106969))))

(assert (=> b!1730367 (= res!777071 (= (value!105575 (_1!10723 (get!5654 lt!663557))) (apply!5170 (transformation!3365 (rule!5339 (_1!10723 (get!5654 lt!663557)))) (seqFromList!2339 (originalCharacters!4179 (_1!10723 (get!5654 lt!663557)))))))))

(declare-fun b!1730368 () Bool)

(declare-fun lt!663559 () Option!3754)

(declare-fun lt!663556 () Option!3754)

(assert (=> b!1730368 (= e!1106968 (ite (and ((_ is None!3753) lt!663559) ((_ is None!3753) lt!663556)) None!3753 (ite ((_ is None!3753) lt!663556) lt!663559 (ite ((_ is None!3753) lt!663559) lt!663556 (ite (>= (size!15066 (_1!10723 (v!25170 lt!663559))) (size!15066 (_1!10723 (v!25170 lt!663556)))) lt!663559 lt!663556)))))))

(declare-fun call!109920 () Option!3754)

(assert (=> b!1730368 (= lt!663559 call!109920)))

(assert (=> b!1730368 (= lt!663556 (maxPrefix!1548 thiss!24550 (t!160561 rules!3447) lt!663276))))

(declare-fun b!1730369 () Bool)

(assert (=> b!1730369 (= e!1106968 call!109920)))

(declare-fun b!1730370 () Bool)

(assert (=> b!1730370 (= e!1106969 (contains!3387 rules!3447 (rule!5339 (_1!10723 (get!5654 lt!663557)))))))

(declare-fun bm!109915 () Bool)

(assert (=> bm!109915 (= call!109920 (maxPrefixOneRule!924 thiss!24550 (h!24365 rules!3447) lt!663276))))

(declare-fun b!1730371 () Bool)

(assert (=> b!1730371 (= e!1106970 e!1106969)))

(declare-fun res!777067 () Bool)

(assert (=> b!1730371 (=> (not res!777067) (not e!1106969))))

(assert (=> b!1730371 (= res!777067 (isDefined!3098 lt!663557))))

(declare-fun b!1730372 () Bool)

(declare-fun res!777069 () Bool)

(assert (=> b!1730372 (=> (not res!777069) (not e!1106969))))

(assert (=> b!1730372 (= res!777069 (= (++!5190 (list!7666 (charsOf!2014 (_1!10723 (get!5654 lt!663557)))) (_2!10723 (get!5654 lt!663557))) lt!663276))))

(declare-fun b!1730373 () Bool)

(declare-fun res!777066 () Bool)

(assert (=> b!1730373 (=> (not res!777066) (not e!1106969))))

(assert (=> b!1730373 (= res!777066 (< (size!15067 (_2!10723 (get!5654 lt!663557))) (size!15067 lt!663276)))))

(declare-fun b!1730374 () Bool)

(declare-fun res!777072 () Bool)

(assert (=> b!1730374 (=> (not res!777072) (not e!1106969))))

(assert (=> b!1730374 (= res!777072 (matchR!2167 (regex!3365 (rule!5339 (_1!10723 (get!5654 lt!663557)))) (list!7666 (charsOf!2014 (_1!10723 (get!5654 lt!663557))))))))

(assert (= (and d!529839 c!282757) b!1730369))

(assert (= (and d!529839 (not c!282757)) b!1730368))

(assert (= (or b!1730369 b!1730368) bm!109915))

(assert (= (and d!529839 (not res!777070)) b!1730371))

(assert (= (and b!1730371 res!777067) b!1730366))

(assert (= (and b!1730366 res!777068) b!1730373))

(assert (= (and b!1730373 res!777066) b!1730372))

(assert (= (and b!1730372 res!777069) b!1730367))

(assert (= (and b!1730367 res!777071) b!1730374))

(assert (= (and b!1730374 res!777072) b!1730370))

(declare-fun m!2138383 () Bool)

(assert (=> b!1730373 m!2138383))

(declare-fun m!2138385 () Bool)

(assert (=> b!1730373 m!2138385))

(assert (=> b!1730373 m!2137921))

(declare-fun m!2138387 () Bool)

(assert (=> bm!109915 m!2138387))

(declare-fun m!2138389 () Bool)

(assert (=> b!1730371 m!2138389))

(declare-fun m!2138391 () Bool)

(assert (=> d!529839 m!2138391))

(declare-fun m!2138393 () Bool)

(assert (=> d!529839 m!2138393))

(declare-fun m!2138395 () Bool)

(assert (=> d!529839 m!2138395))

(assert (=> d!529839 m!2138117))

(assert (=> b!1730366 m!2138383))

(declare-fun m!2138397 () Bool)

(assert (=> b!1730366 m!2138397))

(assert (=> b!1730366 m!2138397))

(declare-fun m!2138399 () Bool)

(assert (=> b!1730366 m!2138399))

(assert (=> b!1730370 m!2138383))

(declare-fun m!2138401 () Bool)

(assert (=> b!1730370 m!2138401))

(assert (=> b!1730374 m!2138383))

(assert (=> b!1730374 m!2138397))

(assert (=> b!1730374 m!2138397))

(assert (=> b!1730374 m!2138399))

(assert (=> b!1730374 m!2138399))

(declare-fun m!2138403 () Bool)

(assert (=> b!1730374 m!2138403))

(assert (=> b!1730372 m!2138383))

(assert (=> b!1730372 m!2138397))

(assert (=> b!1730372 m!2138397))

(assert (=> b!1730372 m!2138399))

(assert (=> b!1730372 m!2138399))

(declare-fun m!2138405 () Bool)

(assert (=> b!1730372 m!2138405))

(declare-fun m!2138407 () Bool)

(assert (=> b!1730368 m!2138407))

(assert (=> b!1730367 m!2138383))

(declare-fun m!2138409 () Bool)

(assert (=> b!1730367 m!2138409))

(assert (=> b!1730367 m!2138409))

(declare-fun m!2138411 () Bool)

(assert (=> b!1730367 m!2138411))

(assert (=> b!1729678 d!529839))

(declare-fun d!529841 () Bool)

(assert (=> d!529841 (isPrefix!1606 lt!663297 (++!5190 lt!663297 (_2!10723 lt!663281)))))

(declare-fun lt!663563 () Unit!32817)

(declare-fun choose!10577 (List!19033 List!19033) Unit!32817)

(assert (=> d!529841 (= lt!663563 (choose!10577 lt!663297 (_2!10723 lt!663281)))))

(assert (=> d!529841 (= (lemmaConcatTwoListThenFirstIsPrefix!1116 lt!663297 (_2!10723 lt!663281)) lt!663563)))

(declare-fun bs!402601 () Bool)

(assert (= bs!402601 d!529841))

(assert (=> bs!402601 m!2137527))

(assert (=> bs!402601 m!2137527))

(assert (=> bs!402601 m!2137539))

(declare-fun m!2138413 () Bool)

(assert (=> bs!402601 m!2138413))

(assert (=> b!1729678 d!529841))

(declare-fun d!529843 () Bool)

(assert (=> d!529843 (= (isDefined!3097 lt!663300) (not (isEmpty!11934 lt!663300)))))

(declare-fun bs!402602 () Bool)

(assert (= bs!402602 d!529843))

(declare-fun m!2138415 () Bool)

(assert (=> bs!402602 m!2138415))

(assert (=> b!1729678 d!529843))

(declare-fun d!529845 () Bool)

(declare-fun lt!663564 () BalanceConc!12558)

(assert (=> d!529845 (= (list!7666 lt!663564) (originalCharacters!4179 (_1!10723 lt!663281)))))

(assert (=> d!529845 (= lt!663564 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (value!105575 (_1!10723 lt!663281))))))

(assert (=> d!529845 (= (charsOf!2014 (_1!10723 lt!663281)) lt!663564)))

(declare-fun b_lambda!55181 () Bool)

(assert (=> (not b_lambda!55181) (not d!529845)))

(assert (=> d!529845 t!160554))

(declare-fun b_and!127463 () Bool)

(assert (= b_and!127441 (and (=> t!160554 result!123788) b_and!127463)))

(assert (=> d!529845 t!160556))

(declare-fun b_and!127465 () Bool)

(assert (= b_and!127443 (and (=> t!160556 result!123790) b_and!127465)))

(assert (=> d!529845 t!160558))

(declare-fun b_and!127467 () Bool)

(assert (= b_and!127445 (and (=> t!160558 result!123792) b_and!127467)))

(declare-fun m!2138417 () Bool)

(assert (=> d!529845 m!2138417))

(assert (=> d!529845 m!2137469))

(assert (=> b!1729678 d!529845))

(declare-fun d!529847 () Bool)

(declare-fun e!1106971 () Bool)

(assert (=> d!529847 e!1106971))

(declare-fun res!777074 () Bool)

(assert (=> d!529847 (=> res!777074 e!1106971)))

(declare-fun lt!663565 () Bool)

(assert (=> d!529847 (= res!777074 (not lt!663565))))

(declare-fun e!1106973 () Bool)

(assert (=> d!529847 (= lt!663565 e!1106973)))

(declare-fun res!777075 () Bool)

(assert (=> d!529847 (=> res!777075 e!1106973)))

(assert (=> d!529847 (= res!777075 ((_ is Nil!18963) lt!663297))))

(assert (=> d!529847 (= (isPrefix!1606 lt!663297 lt!663276) lt!663565)))

(declare-fun b!1730378 () Bool)

(assert (=> b!1730378 (= e!1106971 (>= (size!15067 lt!663276) (size!15067 lt!663297)))))

(declare-fun b!1730375 () Bool)

(declare-fun e!1106972 () Bool)

(assert (=> b!1730375 (= e!1106973 e!1106972)))

(declare-fun res!777073 () Bool)

(assert (=> b!1730375 (=> (not res!777073) (not e!1106972))))

(assert (=> b!1730375 (= res!777073 (not ((_ is Nil!18963) lt!663276)))))

(declare-fun b!1730377 () Bool)

(assert (=> b!1730377 (= e!1106972 (isPrefix!1606 (tail!2585 lt!663297) (tail!2585 lt!663276)))))

(declare-fun b!1730376 () Bool)

(declare-fun res!777076 () Bool)

(assert (=> b!1730376 (=> (not res!777076) (not e!1106972))))

(assert (=> b!1730376 (= res!777076 (= (head!3932 lt!663297) (head!3932 lt!663276)))))

(assert (= (and d!529847 (not res!777075)) b!1730375))

(assert (= (and b!1730375 res!777073) b!1730376))

(assert (= (and b!1730376 res!777076) b!1730377))

(assert (= (and d!529847 (not res!777074)) b!1730378))

(assert (=> b!1730378 m!2137921))

(assert (=> b!1730378 m!2137585))

(assert (=> b!1730377 m!2138261))

(assert (=> b!1730377 m!2137923))

(assert (=> b!1730377 m!2138261))

(assert (=> b!1730377 m!2137923))

(declare-fun m!2138419 () Bool)

(assert (=> b!1730377 m!2138419))

(assert (=> b!1730376 m!2138265))

(assert (=> b!1730376 m!2138357))

(assert (=> b!1729678 d!529847))

(declare-fun d!529849 () Bool)

(assert (=> d!529849 (isPrefix!1606 lt!663294 (++!5190 lt!663294 suffix!1421))))

(declare-fun lt!663566 () Unit!32817)

(assert (=> d!529849 (= lt!663566 (choose!10577 lt!663294 suffix!1421))))

(assert (=> d!529849 (= (lemmaConcatTwoListThenFirstIsPrefix!1116 lt!663294 suffix!1421) lt!663566)))

(declare-fun bs!402603 () Bool)

(assert (= bs!402603 d!529849))

(assert (=> bs!402603 m!2137535))

(assert (=> bs!402603 m!2137535))

(declare-fun m!2138421 () Bool)

(assert (=> bs!402603 m!2138421))

(declare-fun m!2138423 () Bool)

(assert (=> bs!402603 m!2138423))

(assert (=> b!1729678 d!529849))

(declare-fun b!1730381 () Bool)

(declare-fun res!777077 () Bool)

(declare-fun e!1106975 () Bool)

(assert (=> b!1730381 (=> (not res!777077) (not e!1106975))))

(declare-fun lt!663567 () List!19033)

(assert (=> b!1730381 (= res!777077 (= (size!15067 lt!663567) (+ (size!15067 lt!663294) (size!15067 suffix!1421))))))

(declare-fun b!1730380 () Bool)

(declare-fun e!1106974 () List!19033)

(assert (=> b!1730380 (= e!1106974 (Cons!18963 (h!24364 lt!663294) (++!5190 (t!160560 lt!663294) suffix!1421)))))

(declare-fun b!1730379 () Bool)

(assert (=> b!1730379 (= e!1106974 suffix!1421)))

(declare-fun b!1730382 () Bool)

(assert (=> b!1730382 (= e!1106975 (or (not (= suffix!1421 Nil!18963)) (= lt!663567 lt!663294)))))

(declare-fun d!529851 () Bool)

(assert (=> d!529851 e!1106975))

(declare-fun res!777078 () Bool)

(assert (=> d!529851 (=> (not res!777078) (not e!1106975))))

(assert (=> d!529851 (= res!777078 (= (content!2715 lt!663567) ((_ map or) (content!2715 lt!663294) (content!2715 suffix!1421))))))

(assert (=> d!529851 (= lt!663567 e!1106974)))

(declare-fun c!282758 () Bool)

(assert (=> d!529851 (= c!282758 ((_ is Nil!18963) lt!663294))))

(assert (=> d!529851 (= (++!5190 lt!663294 suffix!1421) lt!663567)))

(assert (= (and d!529851 c!282758) b!1730379))

(assert (= (and d!529851 (not c!282758)) b!1730380))

(assert (= (and d!529851 res!777078) b!1730381))

(assert (= (and b!1730381 res!777077) b!1730382))

(declare-fun m!2138425 () Bool)

(assert (=> b!1730381 m!2138425))

(assert (=> b!1730381 m!2137895))

(declare-fun m!2138427 () Bool)

(assert (=> b!1730381 m!2138427))

(declare-fun m!2138429 () Bool)

(assert (=> b!1730380 m!2138429))

(declare-fun m!2138431 () Bool)

(assert (=> d!529851 m!2138431))

(assert (=> d!529851 m!2137903))

(declare-fun m!2138433 () Bool)

(assert (=> d!529851 m!2138433))

(assert (=> b!1729678 d!529851))

(declare-fun d!529853 () Bool)

(assert (=> d!529853 (= (get!5654 lt!663288) (v!25170 lt!663288))))

(assert (=> b!1729678 d!529853))

(declare-fun b!1730393 () Bool)

(declare-fun e!1106980 () Unit!32817)

(declare-fun Unit!32824 () Unit!32817)

(assert (=> b!1730393 (= e!1106980 Unit!32824)))

(declare-fun lt!663616 () List!19033)

(assert (=> b!1730393 (= lt!663616 (++!5190 lt!663294 suffix!1421))))

(declare-fun lt!663606 () Unit!32817)

(declare-fun lt!663617 () Token!6296)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!277 (LexerInterface!2994 Rule!6530 List!19034 List!19033) Unit!32817)

(assert (=> b!1730393 (= lt!663606 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!277 thiss!24550 (rule!5339 lt!663617) rules!3447 lt!663616))))

(assert (=> b!1730393 (isEmpty!11932 (maxPrefixOneRule!924 thiss!24550 (rule!5339 lt!663617) lt!663616))))

(declare-fun lt!663615 () Unit!32817)

(assert (=> b!1730393 (= lt!663615 lt!663606)))

(declare-fun lt!663605 () List!19033)

(assert (=> b!1730393 (= lt!663605 (list!7666 (charsOf!2014 lt!663617)))))

(declare-fun lt!663611 () Unit!32817)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!273 (LexerInterface!2994 Rule!6530 List!19033 List!19033) Unit!32817)

(assert (=> b!1730393 (= lt!663611 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!273 thiss!24550 (rule!5339 lt!663617) lt!663605 (++!5190 lt!663294 suffix!1421)))))

(assert (=> b!1730393 (not (matchR!2167 (regex!3365 (rule!5339 lt!663617)) lt!663605))))

(declare-fun lt!663618 () Unit!32817)

(assert (=> b!1730393 (= lt!663618 lt!663611)))

(assert (=> b!1730393 false))

(declare-fun b!1730392 () Bool)

(declare-fun e!1106981 () Bool)

(assert (=> b!1730392 (= e!1106981 (= (rule!5339 lt!663617) (get!5655 (getRuleFromTag!415 thiss!24550 rules!3447 (tag!3689 (rule!5339 lt!663617))))))))

(declare-fun b!1730391 () Bool)

(declare-fun res!777084 () Bool)

(assert (=> b!1730391 (=> (not res!777084) (not e!1106981))))

(assert (=> b!1730391 (= res!777084 (matchR!2167 (regex!3365 (get!5655 (getRuleFromTag!415 thiss!24550 rules!3447 (tag!3689 (rule!5339 lt!663617))))) (list!7666 (charsOf!2014 lt!663617))))))

(declare-fun d!529855 () Bool)

(assert (=> d!529855 (isDefined!3098 (maxPrefix!1548 thiss!24550 rules!3447 (++!5190 lt!663294 suffix!1421)))))

(declare-fun lt!663614 () Unit!32817)

(assert (=> d!529855 (= lt!663614 e!1106980)))

(declare-fun c!282761 () Bool)

(assert (=> d!529855 (= c!282761 (isEmpty!11932 (maxPrefix!1548 thiss!24550 rules!3447 (++!5190 lt!663294 suffix!1421))))))

(declare-fun lt!663613 () Unit!32817)

(declare-fun lt!663612 () Unit!32817)

(assert (=> d!529855 (= lt!663613 lt!663612)))

(assert (=> d!529855 e!1106981))

(declare-fun res!777083 () Bool)

(assert (=> d!529855 (=> (not res!777083) (not e!1106981))))

(assert (=> d!529855 (= res!777083 (isDefined!3097 (getRuleFromTag!415 thiss!24550 rules!3447 (tag!3689 (rule!5339 lt!663617)))))))

(assert (=> d!529855 (= lt!663612 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!415 thiss!24550 rules!3447 lt!663294 lt!663617))))

(declare-fun lt!663607 () Unit!32817)

(declare-fun lt!663609 () Unit!32817)

(assert (=> d!529855 (= lt!663607 lt!663609)))

(declare-fun lt!663602 () List!19033)

(assert (=> d!529855 (isPrefix!1606 lt!663602 (++!5190 lt!663294 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!269 (List!19033 List!19033 List!19033) Unit!32817)

(assert (=> d!529855 (= lt!663609 (lemmaPrefixStaysPrefixWhenAddingToSuffix!269 lt!663602 lt!663294 suffix!1421))))

(assert (=> d!529855 (= lt!663602 (list!7666 (charsOf!2014 lt!663617)))))

(declare-fun lt!663604 () Unit!32817)

(declare-fun lt!663603 () Unit!32817)

(assert (=> d!529855 (= lt!663604 lt!663603)))

(declare-fun lt!663608 () List!19033)

(declare-fun lt!663610 () List!19033)

(assert (=> d!529855 (isPrefix!1606 lt!663608 (++!5190 lt!663608 lt!663610))))

(assert (=> d!529855 (= lt!663603 (lemmaConcatTwoListThenFirstIsPrefix!1116 lt!663608 lt!663610))))

(assert (=> d!529855 (= lt!663610 (_2!10723 (get!5654 (maxPrefix!1548 thiss!24550 rules!3447 lt!663294))))))

(assert (=> d!529855 (= lt!663608 (list!7666 (charsOf!2014 lt!663617)))))

(declare-datatypes ((List!19039 0))(
  ( (Nil!18969) (Cons!18969 (h!24370 Token!6296) (t!160626 List!19039)) )
))
(declare-fun head!3934 (List!19039) Token!6296)

(declare-datatypes ((IArray!12623 0))(
  ( (IArray!12624 (innerList!6369 List!19039)) )
))
(declare-datatypes ((Conc!6309 0))(
  ( (Node!6309 (left!15145 Conc!6309) (right!15475 Conc!6309) (csize!12848 Int) (cheight!6520 Int)) (Leaf!9212 (xs!9185 IArray!12623) (csize!12849 Int)) (Empty!6309) )
))
(declare-datatypes ((BalanceConc!12562 0))(
  ( (BalanceConc!12563 (c!282771 Conc!6309)) )
))
(declare-fun list!7670 (BalanceConc!12562) List!19039)

(declare-datatypes ((tuple2!18650 0))(
  ( (tuple2!18651 (_1!10727 BalanceConc!12562) (_2!10727 BalanceConc!12558)) )
))
(declare-fun lex!1408 (LexerInterface!2994 List!19034 BalanceConc!12558) tuple2!18650)

(assert (=> d!529855 (= lt!663617 (head!3934 (list!7670 (_1!10727 (lex!1408 thiss!24550 rules!3447 (seqFromList!2339 lt!663294))))))))

(assert (=> d!529855 (not (isEmpty!11929 rules!3447))))

(assert (=> d!529855 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!518 thiss!24550 rules!3447 lt!663294 suffix!1421) lt!663614)))

(declare-fun b!1730394 () Bool)

(declare-fun Unit!32825 () Unit!32817)

(assert (=> b!1730394 (= e!1106980 Unit!32825)))

(assert (= (and d!529855 res!777083) b!1730391))

(assert (= (and b!1730391 res!777084) b!1730392))

(assert (= (and d!529855 c!282761) b!1730393))

(assert (= (and d!529855 (not c!282761)) b!1730394))

(declare-fun m!2138435 () Bool)

(assert (=> b!1730393 m!2138435))

(declare-fun m!2138437 () Bool)

(assert (=> b!1730393 m!2138437))

(declare-fun m!2138439 () Bool)

(assert (=> b!1730393 m!2138439))

(assert (=> b!1730393 m!2137535))

(assert (=> b!1730393 m!2138439))

(declare-fun m!2138441 () Bool)

(assert (=> b!1730393 m!2138441))

(declare-fun m!2138443 () Bool)

(assert (=> b!1730393 m!2138443))

(assert (=> b!1730393 m!2137535))

(declare-fun m!2138445 () Bool)

(assert (=> b!1730393 m!2138445))

(assert (=> b!1730393 m!2138443))

(declare-fun m!2138447 () Bool)

(assert (=> b!1730393 m!2138447))

(declare-fun m!2138449 () Bool)

(assert (=> b!1730392 m!2138449))

(assert (=> b!1730392 m!2138449))

(declare-fun m!2138451 () Bool)

(assert (=> b!1730392 m!2138451))

(assert (=> b!1730391 m!2138449))

(assert (=> b!1730391 m!2138451))

(assert (=> b!1730391 m!2138439))

(assert (=> b!1730391 m!2138441))

(declare-fun m!2138453 () Bool)

(assert (=> b!1730391 m!2138453))

(assert (=> b!1730391 m!2138439))

(assert (=> b!1730391 m!2138441))

(assert (=> b!1730391 m!2138449))

(assert (=> d!529855 m!2137607))

(assert (=> d!529855 m!2137535))

(declare-fun m!2138455 () Bool)

(assert (=> d!529855 m!2138455))

(declare-fun m!2138457 () Bool)

(assert (=> d!529855 m!2138457))

(declare-fun m!2138459 () Bool)

(assert (=> d!529855 m!2138459))

(declare-fun m!2138461 () Bool)

(assert (=> d!529855 m!2138461))

(assert (=> d!529855 m!2137487))

(declare-fun m!2138463 () Bool)

(assert (=> d!529855 m!2138463))

(assert (=> d!529855 m!2138459))

(declare-fun m!2138465 () Bool)

(assert (=> d!529855 m!2138465))

(declare-fun m!2138467 () Bool)

(assert (=> d!529855 m!2138467))

(assert (=> d!529855 m!2138439))

(declare-fun m!2138469 () Bool)

(assert (=> d!529855 m!2138469))

(assert (=> d!529855 m!2138455))

(declare-fun m!2138471 () Bool)

(assert (=> d!529855 m!2138471))

(assert (=> d!529855 m!2138455))

(declare-fun m!2138473 () Bool)

(assert (=> d!529855 m!2138473))

(assert (=> d!529855 m!2138449))

(assert (=> d!529855 m!2138465))

(assert (=> d!529855 m!2138449))

(declare-fun m!2138475 () Bool)

(assert (=> d!529855 m!2138475))

(assert (=> d!529855 m!2137535))

(declare-fun m!2138477 () Bool)

(assert (=> d!529855 m!2138477))

(assert (=> d!529855 m!2138469))

(declare-fun m!2138479 () Bool)

(assert (=> d!529855 m!2138479))

(assert (=> d!529855 m!2137535))

(assert (=> d!529855 m!2137487))

(declare-fun m!2138481 () Bool)

(assert (=> d!529855 m!2138481))

(declare-fun m!2138483 () Bool)

(assert (=> d!529855 m!2138483))

(assert (=> d!529855 m!2138439))

(assert (=> d!529855 m!2138441))

(assert (=> b!1729678 d!529855))

(declare-fun d!529857 () Bool)

(assert (=> d!529857 (= (list!7666 lt!663287) (list!7669 (c!282637 lt!663287)))))

(declare-fun bs!402604 () Bool)

(assert (= bs!402604 d!529857))

(declare-fun m!2138485 () Bool)

(assert (=> bs!402604 m!2138485))

(assert (=> b!1729678 d!529857))

(declare-fun d!529859 () Bool)

(declare-fun res!777089 () Bool)

(declare-fun e!1106984 () Bool)

(assert (=> d!529859 (=> (not res!777089) (not e!1106984))))

(assert (=> d!529859 (= res!777089 (not (isEmpty!11930 (originalCharacters!4179 token!523))))))

(assert (=> d!529859 (= (inv!24524 token!523) e!1106984)))

(declare-fun b!1730399 () Bool)

(declare-fun res!777090 () Bool)

(assert (=> b!1730399 (=> (not res!777090) (not e!1106984))))

(assert (=> b!1730399 (= res!777090 (= (originalCharacters!4179 token!523) (list!7666 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 token!523))) (value!105575 token!523)))))))

(declare-fun b!1730400 () Bool)

(assert (=> b!1730400 (= e!1106984 (= (size!15066 token!523) (size!15067 (originalCharacters!4179 token!523))))))

(assert (= (and d!529859 res!777089) b!1730399))

(assert (= (and b!1730399 res!777090) b!1730400))

(declare-fun b_lambda!55183 () Bool)

(assert (=> (not b_lambda!55183) (not b!1730399)))

(assert (=> b!1730399 t!160587))

(declare-fun b_and!127469 () Bool)

(assert (= b_and!127463 (and (=> t!160587 result!123818) b_and!127469)))

(assert (=> b!1730399 t!160589))

(declare-fun b_and!127471 () Bool)

(assert (= b_and!127465 (and (=> t!160589 result!123820) b_and!127471)))

(assert (=> b!1730399 t!160591))

(declare-fun b_and!127473 () Bool)

(assert (= b_and!127467 (and (=> t!160591 result!123822) b_and!127473)))

(declare-fun m!2138487 () Bool)

(assert (=> d!529859 m!2138487))

(assert (=> b!1730399 m!2138167))

(assert (=> b!1730399 m!2138167))

(declare-fun m!2138489 () Bool)

(assert (=> b!1730399 m!2138489))

(declare-fun m!2138491 () Bool)

(assert (=> b!1730400 m!2138491))

(assert (=> start!169946 d!529859))

(declare-fun d!529861 () Bool)

(declare-fun e!1106985 () Bool)

(assert (=> d!529861 e!1106985))

(declare-fun res!777092 () Bool)

(assert (=> d!529861 (=> res!777092 e!1106985)))

(declare-fun lt!663619 () Bool)

(assert (=> d!529861 (= res!777092 (not lt!663619))))

(declare-fun e!1106987 () Bool)

(assert (=> d!529861 (= lt!663619 e!1106987)))

(declare-fun res!777093 () Bool)

(assert (=> d!529861 (=> res!777093 e!1106987)))

(assert (=> d!529861 (= res!777093 ((_ is Nil!18963) lt!663279))))

(assert (=> d!529861 (= (isPrefix!1606 lt!663279 lt!663276) lt!663619)))

(declare-fun b!1730404 () Bool)

(assert (=> b!1730404 (= e!1106985 (>= (size!15067 lt!663276) (size!15067 lt!663279)))))

(declare-fun b!1730401 () Bool)

(declare-fun e!1106986 () Bool)

(assert (=> b!1730401 (= e!1106987 e!1106986)))

(declare-fun res!777091 () Bool)

(assert (=> b!1730401 (=> (not res!777091) (not e!1106986))))

(assert (=> b!1730401 (= res!777091 (not ((_ is Nil!18963) lt!663276)))))

(declare-fun b!1730403 () Bool)

(assert (=> b!1730403 (= e!1106986 (isPrefix!1606 (tail!2585 lt!663279) (tail!2585 lt!663276)))))

(declare-fun b!1730402 () Bool)

(declare-fun res!777094 () Bool)

(assert (=> b!1730402 (=> (not res!777094) (not e!1106986))))

(assert (=> b!1730402 (= res!777094 (= (head!3932 lt!663279) (head!3932 lt!663276)))))

(assert (= (and d!529861 (not res!777093)) b!1730401))

(assert (= (and b!1730401 res!777091) b!1730402))

(assert (= (and b!1730402 res!777094) b!1730403))

(assert (= (and d!529861 (not res!777092)) b!1730404))

(assert (=> b!1730404 m!2137921))

(declare-fun m!2138493 () Bool)

(assert (=> b!1730404 m!2138493))

(assert (=> b!1730403 m!2137889))

(assert (=> b!1730403 m!2137923))

(assert (=> b!1730403 m!2137889))

(assert (=> b!1730403 m!2137923))

(declare-fun m!2138495 () Bool)

(assert (=> b!1730403 m!2138495))

(assert (=> b!1730402 m!2137885))

(assert (=> b!1730402 m!2138357))

(assert (=> b!1729682 d!529861))

(declare-fun d!529863 () Bool)

(declare-fun e!1106988 () Bool)

(assert (=> d!529863 e!1106988))

(declare-fun res!777096 () Bool)

(assert (=> d!529863 (=> res!777096 e!1106988)))

(declare-fun lt!663620 () Bool)

(assert (=> d!529863 (= res!777096 (not lt!663620))))

(declare-fun e!1106990 () Bool)

(assert (=> d!529863 (= lt!663620 e!1106990)))

(declare-fun res!777097 () Bool)

(assert (=> d!529863 (=> res!777097 e!1106990)))

(assert (=> d!529863 (= res!777097 ((_ is Nil!18963) (++!5190 lt!663294 (Cons!18963 (head!3932 lt!663272) Nil!18963))))))

(assert (=> d!529863 (= (isPrefix!1606 (++!5190 lt!663294 (Cons!18963 (head!3932 lt!663272) Nil!18963)) lt!663276) lt!663620)))

(declare-fun b!1730408 () Bool)

(assert (=> b!1730408 (= e!1106988 (>= (size!15067 lt!663276) (size!15067 (++!5190 lt!663294 (Cons!18963 (head!3932 lt!663272) Nil!18963)))))))

(declare-fun b!1730405 () Bool)

(declare-fun e!1106989 () Bool)

(assert (=> b!1730405 (= e!1106990 e!1106989)))

(declare-fun res!777095 () Bool)

(assert (=> b!1730405 (=> (not res!777095) (not e!1106989))))

(assert (=> b!1730405 (= res!777095 (not ((_ is Nil!18963) lt!663276)))))

(declare-fun b!1730407 () Bool)

(assert (=> b!1730407 (= e!1106989 (isPrefix!1606 (tail!2585 (++!5190 lt!663294 (Cons!18963 (head!3932 lt!663272) Nil!18963))) (tail!2585 lt!663276)))))

(declare-fun b!1730406 () Bool)

(declare-fun res!777098 () Bool)

(assert (=> b!1730406 (=> (not res!777098) (not e!1106989))))

(assert (=> b!1730406 (= res!777098 (= (head!3932 (++!5190 lt!663294 (Cons!18963 (head!3932 lt!663272) Nil!18963))) (head!3932 lt!663276)))))

(assert (= (and d!529863 (not res!777097)) b!1730405))

(assert (= (and b!1730405 res!777095) b!1730406))

(assert (= (and b!1730406 res!777098) b!1730407))

(assert (= (and d!529863 (not res!777096)) b!1730408))

(assert (=> b!1730408 m!2137921))

(assert (=> b!1730408 m!2137503))

(declare-fun m!2138497 () Bool)

(assert (=> b!1730408 m!2138497))

(assert (=> b!1730407 m!2137503))

(declare-fun m!2138499 () Bool)

(assert (=> b!1730407 m!2138499))

(assert (=> b!1730407 m!2137923))

(assert (=> b!1730407 m!2138499))

(assert (=> b!1730407 m!2137923))

(declare-fun m!2138501 () Bool)

(assert (=> b!1730407 m!2138501))

(assert (=> b!1730406 m!2137503))

(declare-fun m!2138503 () Bool)

(assert (=> b!1730406 m!2138503))

(assert (=> b!1730406 m!2138357))

(assert (=> b!1729682 d!529863))

(declare-fun b!1730411 () Bool)

(declare-fun res!777099 () Bool)

(declare-fun e!1106992 () Bool)

(assert (=> b!1730411 (=> (not res!777099) (not e!1106992))))

(declare-fun lt!663621 () List!19033)

(assert (=> b!1730411 (= res!777099 (= (size!15067 lt!663621) (+ (size!15067 lt!663294) (size!15067 (Cons!18963 (head!3932 lt!663272) Nil!18963)))))))

(declare-fun b!1730410 () Bool)

(declare-fun e!1106991 () List!19033)

(assert (=> b!1730410 (= e!1106991 (Cons!18963 (h!24364 lt!663294) (++!5190 (t!160560 lt!663294) (Cons!18963 (head!3932 lt!663272) Nil!18963))))))

(declare-fun b!1730409 () Bool)

(assert (=> b!1730409 (= e!1106991 (Cons!18963 (head!3932 lt!663272) Nil!18963))))

(declare-fun b!1730412 () Bool)

(assert (=> b!1730412 (= e!1106992 (or (not (= (Cons!18963 (head!3932 lt!663272) Nil!18963) Nil!18963)) (= lt!663621 lt!663294)))))

(declare-fun d!529865 () Bool)

(assert (=> d!529865 e!1106992))

(declare-fun res!777100 () Bool)

(assert (=> d!529865 (=> (not res!777100) (not e!1106992))))

(assert (=> d!529865 (= res!777100 (= (content!2715 lt!663621) ((_ map or) (content!2715 lt!663294) (content!2715 (Cons!18963 (head!3932 lt!663272) Nil!18963)))))))

(assert (=> d!529865 (= lt!663621 e!1106991)))

(declare-fun c!282762 () Bool)

(assert (=> d!529865 (= c!282762 ((_ is Nil!18963) lt!663294))))

(assert (=> d!529865 (= (++!5190 lt!663294 (Cons!18963 (head!3932 lt!663272) Nil!18963)) lt!663621)))

(assert (= (and d!529865 c!282762) b!1730409))

(assert (= (and d!529865 (not c!282762)) b!1730410))

(assert (= (and d!529865 res!777100) b!1730411))

(assert (= (and b!1730411 res!777099) b!1730412))

(declare-fun m!2138505 () Bool)

(assert (=> b!1730411 m!2138505))

(assert (=> b!1730411 m!2137895))

(declare-fun m!2138507 () Bool)

(assert (=> b!1730411 m!2138507))

(declare-fun m!2138509 () Bool)

(assert (=> b!1730410 m!2138509))

(declare-fun m!2138511 () Bool)

(assert (=> d!529865 m!2138511))

(assert (=> d!529865 m!2137903))

(declare-fun m!2138513 () Bool)

(assert (=> d!529865 m!2138513))

(assert (=> b!1729682 d!529865))

(declare-fun d!529867 () Bool)

(assert (=> d!529867 (= (head!3932 lt!663272) (h!24364 lt!663272))))

(assert (=> b!1729682 d!529867))

(declare-fun d!529869 () Bool)

(assert (=> d!529869 (isPrefix!1606 (++!5190 lt!663294 (Cons!18963 (head!3932 (getSuffix!800 lt!663276 lt!663294)) Nil!18963)) lt!663276)))

(declare-fun lt!663624 () Unit!32817)

(declare-fun choose!10578 (List!19033 List!19033) Unit!32817)

(assert (=> d!529869 (= lt!663624 (choose!10578 lt!663294 lt!663276))))

(assert (=> d!529869 (isPrefix!1606 lt!663294 lt!663276)))

(assert (=> d!529869 (= (lemmaAddHeadSuffixToPrefixStillPrefix!201 lt!663294 lt!663276) lt!663624)))

(declare-fun bs!402605 () Bool)

(assert (= bs!402605 d!529869))

(assert (=> bs!402605 m!2137461))

(declare-fun m!2138515 () Bool)

(assert (=> bs!402605 m!2138515))

(declare-fun m!2138517 () Bool)

(assert (=> bs!402605 m!2138517))

(declare-fun m!2138519 () Bool)

(assert (=> bs!402605 m!2138519))

(assert (=> bs!402605 m!2138519))

(declare-fun m!2138521 () Bool)

(assert (=> bs!402605 m!2138521))

(assert (=> bs!402605 m!2137529))

(assert (=> bs!402605 m!2137461))

(assert (=> b!1729682 d!529869))

(declare-fun b!1730413 () Bool)

(declare-fun e!1106993 () Bool)

(assert (=> b!1730413 (= e!1106993 (nullable!1420 (regex!3365 lt!663290)))))

(declare-fun b!1730414 () Bool)

(declare-fun res!777106 () Bool)

(declare-fun e!1106996 () Bool)

(assert (=> b!1730414 (=> (not res!777106) (not e!1106996))))

(declare-fun call!109921 () Bool)

(assert (=> b!1730414 (= res!777106 (not call!109921))))

(declare-fun b!1730415 () Bool)

(declare-fun res!777101 () Bool)

(declare-fun e!1106994 () Bool)

(assert (=> b!1730415 (=> res!777101 e!1106994)))

(assert (=> b!1730415 (= res!777101 e!1106996)))

(declare-fun res!777107 () Bool)

(assert (=> b!1730415 (=> (not res!777107) (not e!1106996))))

(declare-fun lt!663625 () Bool)

(assert (=> b!1730415 (= res!777107 lt!663625)))

(declare-fun d!529871 () Bool)

(declare-fun e!1106999 () Bool)

(assert (=> d!529871 e!1106999))

(declare-fun c!282763 () Bool)

(assert (=> d!529871 (= c!282763 ((_ is EmptyExpr!4693) (regex!3365 lt!663290)))))

(assert (=> d!529871 (= lt!663625 e!1106993)))

(declare-fun c!282764 () Bool)

(assert (=> d!529871 (= c!282764 (isEmpty!11930 (list!7666 (charsOf!2014 (_1!10723 lt!663281)))))))

(assert (=> d!529871 (validRegex!1894 (regex!3365 lt!663290))))

(assert (=> d!529871 (= (matchR!2167 (regex!3365 lt!663290) (list!7666 (charsOf!2014 (_1!10723 lt!663281)))) lt!663625)))

(declare-fun b!1730416 () Bool)

(declare-fun e!1106997 () Bool)

(assert (=> b!1730416 (= e!1106994 e!1106997)))

(declare-fun res!777102 () Bool)

(assert (=> b!1730416 (=> (not res!777102) (not e!1106997))))

(assert (=> b!1730416 (= res!777102 (not lt!663625))))

(declare-fun b!1730417 () Bool)

(assert (=> b!1730417 (= e!1106993 (matchR!2167 (derivativeStep!1188 (regex!3365 lt!663290) (head!3932 (list!7666 (charsOf!2014 (_1!10723 lt!663281))))) (tail!2585 (list!7666 (charsOf!2014 (_1!10723 lt!663281))))))))

(declare-fun b!1730418 () Bool)

(declare-fun res!777108 () Bool)

(declare-fun e!1106998 () Bool)

(assert (=> b!1730418 (=> res!777108 e!1106998)))

(assert (=> b!1730418 (= res!777108 (not (isEmpty!11930 (tail!2585 (list!7666 (charsOf!2014 (_1!10723 lt!663281)))))))))

(declare-fun b!1730419 () Bool)

(declare-fun e!1106995 () Bool)

(assert (=> b!1730419 (= e!1106999 e!1106995)))

(declare-fun c!282765 () Bool)

(assert (=> b!1730419 (= c!282765 ((_ is EmptyLang!4693) (regex!3365 lt!663290)))))

(declare-fun b!1730420 () Bool)

(declare-fun res!777104 () Bool)

(assert (=> b!1730420 (=> res!777104 e!1106994)))

(assert (=> b!1730420 (= res!777104 (not ((_ is ElementMatch!4693) (regex!3365 lt!663290))))))

(assert (=> b!1730420 (= e!1106995 e!1106994)))

(declare-fun b!1730421 () Bool)

(assert (=> b!1730421 (= e!1106998 (not (= (head!3932 (list!7666 (charsOf!2014 (_1!10723 lt!663281)))) (c!282636 (regex!3365 lt!663290)))))))

(declare-fun b!1730422 () Bool)

(declare-fun res!777105 () Bool)

(assert (=> b!1730422 (=> (not res!777105) (not e!1106996))))

(assert (=> b!1730422 (= res!777105 (isEmpty!11930 (tail!2585 (list!7666 (charsOf!2014 (_1!10723 lt!663281))))))))

(declare-fun b!1730423 () Bool)

(assert (=> b!1730423 (= e!1106996 (= (head!3932 (list!7666 (charsOf!2014 (_1!10723 lt!663281)))) (c!282636 (regex!3365 lt!663290))))))

(declare-fun b!1730424 () Bool)

(assert (=> b!1730424 (= e!1106995 (not lt!663625))))

(declare-fun b!1730425 () Bool)

(assert (=> b!1730425 (= e!1106999 (= lt!663625 call!109921))))

(declare-fun bm!109916 () Bool)

(assert (=> bm!109916 (= call!109921 (isEmpty!11930 (list!7666 (charsOf!2014 (_1!10723 lt!663281)))))))

(declare-fun b!1730426 () Bool)

(assert (=> b!1730426 (= e!1106997 e!1106998)))

(declare-fun res!777103 () Bool)

(assert (=> b!1730426 (=> res!777103 e!1106998)))

(assert (=> b!1730426 (= res!777103 call!109921)))

(assert (= (and d!529871 c!282764) b!1730413))

(assert (= (and d!529871 (not c!282764)) b!1730417))

(assert (= (and d!529871 c!282763) b!1730425))

(assert (= (and d!529871 (not c!282763)) b!1730419))

(assert (= (and b!1730419 c!282765) b!1730424))

(assert (= (and b!1730419 (not c!282765)) b!1730420))

(assert (= (and b!1730420 (not res!777104)) b!1730415))

(assert (= (and b!1730415 res!777107) b!1730414))

(assert (= (and b!1730414 res!777106) b!1730422))

(assert (= (and b!1730422 res!777105) b!1730423))

(assert (= (and b!1730415 (not res!777101)) b!1730416))

(assert (= (and b!1730416 res!777102) b!1730426))

(assert (= (and b!1730426 (not res!777103)) b!1730418))

(assert (= (and b!1730418 (not res!777108)) b!1730421))

(assert (= (or b!1730425 b!1730414 b!1730426) bm!109916))

(assert (=> b!1730422 m!2137563))

(declare-fun m!2138523 () Bool)

(assert (=> b!1730422 m!2138523))

(assert (=> b!1730422 m!2138523))

(declare-fun m!2138525 () Bool)

(assert (=> b!1730422 m!2138525))

(assert (=> b!1730417 m!2137563))

(declare-fun m!2138527 () Bool)

(assert (=> b!1730417 m!2138527))

(assert (=> b!1730417 m!2138527))

(declare-fun m!2138529 () Bool)

(assert (=> b!1730417 m!2138529))

(assert (=> b!1730417 m!2137563))

(assert (=> b!1730417 m!2138523))

(assert (=> b!1730417 m!2138529))

(assert (=> b!1730417 m!2138523))

(declare-fun m!2138531 () Bool)

(assert (=> b!1730417 m!2138531))

(declare-fun m!2138533 () Bool)

(assert (=> b!1730413 m!2138533))

(assert (=> b!1730423 m!2137563))

(assert (=> b!1730423 m!2138527))

(assert (=> d!529871 m!2137563))

(declare-fun m!2138535 () Bool)

(assert (=> d!529871 m!2138535))

(declare-fun m!2138537 () Bool)

(assert (=> d!529871 m!2138537))

(assert (=> bm!109916 m!2137563))

(assert (=> bm!109916 m!2138535))

(assert (=> b!1730421 m!2137563))

(assert (=> b!1730421 m!2138527))

(assert (=> b!1730418 m!2137563))

(assert (=> b!1730418 m!2138523))

(assert (=> b!1730418 m!2138523))

(assert (=> b!1730418 m!2138525))

(assert (=> b!1729680 d!529871))

(declare-fun d!529873 () Bool)

(assert (=> d!529873 (= (list!7666 (charsOf!2014 (_1!10723 lt!663281))) (list!7669 (c!282637 (charsOf!2014 (_1!10723 lt!663281)))))))

(declare-fun bs!402606 () Bool)

(assert (= bs!402606 d!529873))

(declare-fun m!2138539 () Bool)

(assert (=> bs!402606 m!2138539))

(assert (=> b!1729680 d!529873))

(assert (=> b!1729680 d!529845))

(declare-fun d!529875 () Bool)

(assert (=> d!529875 (= (get!5655 lt!663300) (v!25171 lt!663300))))

(assert (=> b!1729680 d!529875))

(declare-fun d!529877 () Bool)

(assert (=> d!529877 (= suffix!1421 lt!663272)))

(declare-fun lt!663626 () Unit!32817)

(assert (=> d!529877 (= lt!663626 (choose!10572 lt!663294 suffix!1421 lt!663294 lt!663272 lt!663276))))

(assert (=> d!529877 (isPrefix!1606 lt!663294 lt!663276)))

(assert (=> d!529877 (= (lemmaSamePrefixThenSameSuffix!750 lt!663294 suffix!1421 lt!663294 lt!663272 lt!663276) lt!663626)))

(declare-fun bs!402607 () Bool)

(assert (= bs!402607 d!529877))

(declare-fun m!2138541 () Bool)

(assert (=> bs!402607 m!2138541))

(assert (=> bs!402607 m!2137529))

(assert (=> b!1729681 d!529877))

(declare-fun d!529879 () Bool)

(declare-fun lt!663627 () List!19033)

(assert (=> d!529879 (= (++!5190 lt!663294 lt!663627) lt!663276)))

(declare-fun e!1107000 () List!19033)

(assert (=> d!529879 (= lt!663627 e!1107000)))

(declare-fun c!282766 () Bool)

(assert (=> d!529879 (= c!282766 ((_ is Cons!18963) lt!663294))))

(assert (=> d!529879 (>= (size!15067 lt!663276) (size!15067 lt!663294))))

(assert (=> d!529879 (= (getSuffix!800 lt!663276 lt!663294) lt!663627)))

(declare-fun b!1730427 () Bool)

(assert (=> b!1730427 (= e!1107000 (getSuffix!800 (tail!2585 lt!663276) (t!160560 lt!663294)))))

(declare-fun b!1730428 () Bool)

(assert (=> b!1730428 (= e!1107000 lt!663276)))

(assert (= (and d!529879 c!282766) b!1730427))

(assert (= (and d!529879 (not c!282766)) b!1730428))

(declare-fun m!2138543 () Bool)

(assert (=> d!529879 m!2138543))

(assert (=> d!529879 m!2137921))

(assert (=> d!529879 m!2137895))

(assert (=> b!1730427 m!2137923))

(assert (=> b!1730427 m!2137923))

(declare-fun m!2138545 () Bool)

(assert (=> b!1730427 m!2138545))

(assert (=> b!1729681 d!529879))

(declare-fun b!1730429 () Bool)

(declare-fun e!1107001 () Bool)

(assert (=> b!1730429 (= e!1107001 (nullable!1420 lt!663277))))

(declare-fun b!1730430 () Bool)

(declare-fun res!777114 () Bool)

(declare-fun e!1107004 () Bool)

(assert (=> b!1730430 (=> (not res!777114) (not e!1107004))))

(declare-fun call!109922 () Bool)

(assert (=> b!1730430 (= res!777114 (not call!109922))))

(declare-fun b!1730431 () Bool)

(declare-fun res!777109 () Bool)

(declare-fun e!1107002 () Bool)

(assert (=> b!1730431 (=> res!777109 e!1107002)))

(assert (=> b!1730431 (= res!777109 e!1107004)))

(declare-fun res!777115 () Bool)

(assert (=> b!1730431 (=> (not res!777115) (not e!1107004))))

(declare-fun lt!663628 () Bool)

(assert (=> b!1730431 (= res!777115 lt!663628)))

(declare-fun d!529881 () Bool)

(declare-fun e!1107007 () Bool)

(assert (=> d!529881 e!1107007))

(declare-fun c!282767 () Bool)

(assert (=> d!529881 (= c!282767 ((_ is EmptyExpr!4693) lt!663277))))

(assert (=> d!529881 (= lt!663628 e!1107001)))

(declare-fun c!282768 () Bool)

(assert (=> d!529881 (= c!282768 (isEmpty!11930 lt!663297))))

(assert (=> d!529881 (validRegex!1894 lt!663277)))

(assert (=> d!529881 (= (matchR!2167 lt!663277 lt!663297) lt!663628)))

(declare-fun b!1730432 () Bool)

(declare-fun e!1107005 () Bool)

(assert (=> b!1730432 (= e!1107002 e!1107005)))

(declare-fun res!777110 () Bool)

(assert (=> b!1730432 (=> (not res!777110) (not e!1107005))))

(assert (=> b!1730432 (= res!777110 (not lt!663628))))

(declare-fun b!1730433 () Bool)

(assert (=> b!1730433 (= e!1107001 (matchR!2167 (derivativeStep!1188 lt!663277 (head!3932 lt!663297)) (tail!2585 lt!663297)))))

(declare-fun b!1730434 () Bool)

(declare-fun res!777116 () Bool)

(declare-fun e!1107006 () Bool)

(assert (=> b!1730434 (=> res!777116 e!1107006)))

(assert (=> b!1730434 (= res!777116 (not (isEmpty!11930 (tail!2585 lt!663297))))))

(declare-fun b!1730435 () Bool)

(declare-fun e!1107003 () Bool)

(assert (=> b!1730435 (= e!1107007 e!1107003)))

(declare-fun c!282769 () Bool)

(assert (=> b!1730435 (= c!282769 ((_ is EmptyLang!4693) lt!663277))))

(declare-fun b!1730436 () Bool)

(declare-fun res!777112 () Bool)

(assert (=> b!1730436 (=> res!777112 e!1107002)))

(assert (=> b!1730436 (= res!777112 (not ((_ is ElementMatch!4693) lt!663277)))))

(assert (=> b!1730436 (= e!1107003 e!1107002)))

(declare-fun b!1730437 () Bool)

(assert (=> b!1730437 (= e!1107006 (not (= (head!3932 lt!663297) (c!282636 lt!663277))))))

(declare-fun b!1730438 () Bool)

(declare-fun res!777113 () Bool)

(assert (=> b!1730438 (=> (not res!777113) (not e!1107004))))

(assert (=> b!1730438 (= res!777113 (isEmpty!11930 (tail!2585 lt!663297)))))

(declare-fun b!1730439 () Bool)

(assert (=> b!1730439 (= e!1107004 (= (head!3932 lt!663297) (c!282636 lt!663277)))))

(declare-fun b!1730440 () Bool)

(assert (=> b!1730440 (= e!1107003 (not lt!663628))))

(declare-fun b!1730441 () Bool)

(assert (=> b!1730441 (= e!1107007 (= lt!663628 call!109922))))

(declare-fun bm!109917 () Bool)

(assert (=> bm!109917 (= call!109922 (isEmpty!11930 lt!663297))))

(declare-fun b!1730442 () Bool)

(assert (=> b!1730442 (= e!1107005 e!1107006)))

(declare-fun res!777111 () Bool)

(assert (=> b!1730442 (=> res!777111 e!1107006)))

(assert (=> b!1730442 (= res!777111 call!109922)))

(assert (= (and d!529881 c!282768) b!1730429))

(assert (= (and d!529881 (not c!282768)) b!1730433))

(assert (= (and d!529881 c!282767) b!1730441))

(assert (= (and d!529881 (not c!282767)) b!1730435))

(assert (= (and b!1730435 c!282769) b!1730440))

(assert (= (and b!1730435 (not c!282769)) b!1730436))

(assert (= (and b!1730436 (not res!777112)) b!1730431))

(assert (= (and b!1730431 res!777115) b!1730430))

(assert (= (and b!1730430 res!777114) b!1730438))

(assert (= (and b!1730438 res!777113) b!1730439))

(assert (= (and b!1730431 (not res!777109)) b!1730432))

(assert (= (and b!1730432 res!777110) b!1730442))

(assert (= (and b!1730442 (not res!777111)) b!1730434))

(assert (= (and b!1730434 (not res!777116)) b!1730437))

(assert (= (or b!1730441 b!1730430 b!1730442) bm!109917))

(assert (=> b!1730438 m!2138261))

(assert (=> b!1730438 m!2138261))

(assert (=> b!1730438 m!2138263))

(assert (=> b!1730433 m!2138265))

(assert (=> b!1730433 m!2138265))

(declare-fun m!2138547 () Bool)

(assert (=> b!1730433 m!2138547))

(assert (=> b!1730433 m!2138261))

(assert (=> b!1730433 m!2138547))

(assert (=> b!1730433 m!2138261))

(declare-fun m!2138549 () Bool)

(assert (=> b!1730433 m!2138549))

(assert (=> b!1730429 m!2138177))

(assert (=> b!1730439 m!2138265))

(assert (=> d!529881 m!2138275))

(assert (=> d!529881 m!2138179))

(assert (=> bm!109917 m!2138275))

(assert (=> b!1730437 m!2138265))

(assert (=> b!1730434 m!2138261))

(assert (=> b!1730434 m!2138261))

(assert (=> b!1730434 m!2138263))

(assert (=> b!1729681 d!529881))

(declare-fun d!529883 () Bool)

(assert (=> d!529883 (matchR!2167 (rulesRegex!723 thiss!24550 rules!3447) (list!7666 (charsOf!2014 (_1!10723 lt!663281))))))

(declare-fun lt!663629 () Unit!32817)

(assert (=> d!529883 (= lt!663629 (choose!10575 thiss!24550 rules!3447 lt!663276 (_1!10723 lt!663281) (rule!5339 (_1!10723 lt!663281)) (_2!10723 lt!663281)))))

(assert (=> d!529883 (not (isEmpty!11929 rules!3447))))

(assert (=> d!529883 (= (lemmaMaxPrefixThenMatchesRulesRegex!114 thiss!24550 rules!3447 lt!663276 (_1!10723 lt!663281) (rule!5339 (_1!10723 lt!663281)) (_2!10723 lt!663281)) lt!663629)))

(declare-fun bs!402608 () Bool)

(assert (= bs!402608 d!529883))

(assert (=> bs!402608 m!2137521))

(assert (=> bs!402608 m!2137521))

(assert (=> bs!402608 m!2137563))

(assert (=> bs!402608 m!2137605))

(assert (=> bs!402608 m!2137563))

(declare-fun m!2138551 () Bool)

(assert (=> bs!402608 m!2138551))

(assert (=> bs!402608 m!2137607))

(assert (=> bs!402608 m!2137605))

(declare-fun m!2138553 () Bool)

(assert (=> bs!402608 m!2138553))

(assert (=> b!1729681 d!529883))

(declare-fun d!529885 () Bool)

(assert (=> d!529885 (= (inv!24518 (tag!3689 rule!422)) (= (mod (str.len (value!105574 (tag!3689 rule!422))) 2) 0))))

(assert (=> b!1729685 d!529885))

(declare-fun d!529887 () Bool)

(declare-fun res!777117 () Bool)

(declare-fun e!1107008 () Bool)

(assert (=> d!529887 (=> (not res!777117) (not e!1107008))))

(assert (=> d!529887 (= res!777117 (semiInverseModEq!1333 (toChars!4731 (transformation!3365 rule!422)) (toValue!4872 (transformation!3365 rule!422))))))

(assert (=> d!529887 (= (inv!24523 (transformation!3365 rule!422)) e!1107008)))

(declare-fun b!1730443 () Bool)

(assert (=> b!1730443 (= e!1107008 (equivClasses!1274 (toChars!4731 (transformation!3365 rule!422)) (toValue!4872 (transformation!3365 rule!422))))))

(assert (= (and d!529887 res!777117) b!1730443))

(declare-fun m!2138555 () Bool)

(assert (=> d!529887 m!2138555))

(declare-fun m!2138557 () Bool)

(assert (=> b!1730443 m!2138557))

(assert (=> b!1729685 d!529887))

(declare-fun b!1730450 () Bool)

(declare-fun e!1107013 () Bool)

(assert (=> b!1730450 (= e!1107013 true)))

(declare-fun d!529889 () Bool)

(assert (=> d!529889 e!1107013))

(assert (= d!529889 b!1730450))

(declare-fun order!11679 () Int)

(declare-fun lambda!69356 () Int)

(declare-fun dynLambda!8832 (Int Int) Int)

(assert (=> b!1730450 (< (dynLambda!8826 order!11671 (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281))))) (dynLambda!8832 order!11679 lambda!69356))))

(assert (=> b!1730450 (< (dynLambda!8828 order!11675 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281))))) (dynLambda!8832 order!11679 lambda!69356))))

(assert (=> d!529889 (= (dynLambda!8830 (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) lt!663287) (dynLambda!8830 (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (seqFromList!2339 (originalCharacters!4179 (_1!10723 lt!663281)))))))

(declare-fun lt!663632 () Unit!32817)

(declare-fun Forall2of!89 (Int BalanceConc!12558 BalanceConc!12558) Unit!32817)

(assert (=> d!529889 (= lt!663632 (Forall2of!89 lambda!69356 lt!663287 (seqFromList!2339 (originalCharacters!4179 (_1!10723 lt!663281)))))))

(assert (=> d!529889 (= (list!7666 lt!663287) (list!7666 (seqFromList!2339 (originalCharacters!4179 (_1!10723 lt!663281)))))))

(assert (=> d!529889 (= (lemmaEqSameImage!290 (transformation!3365 (rule!5339 (_1!10723 lt!663281))) lt!663287 (seqFromList!2339 (originalCharacters!4179 (_1!10723 lt!663281)))) lt!663632)))

(declare-fun b_lambda!55185 () Bool)

(assert (=> (not b_lambda!55185) (not d!529889)))

(assert (=> d!529889 t!160548))

(declare-fun b_and!127475 () Bool)

(assert (= b_and!127447 (and (=> t!160548 result!123780) b_and!127475)))

(assert (=> d!529889 t!160550))

(declare-fun b_and!127477 () Bool)

(assert (= b_and!127449 (and (=> t!160550 result!123784) b_and!127477)))

(assert (=> d!529889 t!160552))

(declare-fun b_and!127479 () Bool)

(assert (= b_and!127451 (and (=> t!160552 result!123786) b_and!127479)))

(declare-fun b_lambda!55187 () Bool)

(assert (=> (not b_lambda!55187) (not d!529889)))

(declare-fun t!160606 () Bool)

(declare-fun tb!103005 () Bool)

(assert (=> (and b!1729696 (= (toValue!4872 (transformation!3365 (rule!5339 token!523))) (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281))))) t!160606) tb!103005))

(declare-fun result!123844 () Bool)

(assert (=> tb!103005 (= result!123844 (inv!21 (dynLambda!8830 (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (seqFromList!2339 (originalCharacters!4179 (_1!10723 lt!663281))))))))

(declare-fun m!2138559 () Bool)

(assert (=> tb!103005 m!2138559))

(assert (=> d!529889 t!160606))

(declare-fun b_and!127481 () Bool)

(assert (= b_and!127475 (and (=> t!160606 result!123844) b_and!127481)))

(declare-fun t!160608 () Bool)

(declare-fun tb!103007 () Bool)

(assert (=> (and b!1729670 (= (toValue!4872 (transformation!3365 rule!422)) (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281))))) t!160608) tb!103007))

(declare-fun result!123846 () Bool)

(assert (= result!123846 result!123844))

(assert (=> d!529889 t!160608))

(declare-fun b_and!127483 () Bool)

(assert (= b_and!127477 (and (=> t!160608 result!123846) b_and!127483)))

(declare-fun tb!103009 () Bool)

(declare-fun t!160610 () Bool)

(assert (=> (and b!1729691 (= (toValue!4872 (transformation!3365 (h!24365 rules!3447))) (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281))))) t!160610) tb!103009))

(declare-fun result!123848 () Bool)

(assert (= result!123848 result!123844))

(assert (=> d!529889 t!160610))

(declare-fun b_and!127485 () Bool)

(assert (= b_and!127479 (and (=> t!160610 result!123848) b_and!127485)))

(assert (=> d!529889 m!2137531))

(assert (=> d!529889 m!2137547))

(declare-fun m!2138561 () Bool)

(assert (=> d!529889 m!2138561))

(assert (=> d!529889 m!2137547))

(declare-fun m!2138563 () Bool)

(assert (=> d!529889 m!2138563))

(assert (=> d!529889 m!2137569))

(assert (=> d!529889 m!2137547))

(declare-fun m!2138565 () Bool)

(assert (=> d!529889 m!2138565))

(assert (=> b!1729683 d!529889))

(declare-fun d!529891 () Bool)

(assert (=> d!529891 (= (apply!5170 (transformation!3365 (rule!5339 (_1!10723 lt!663281))) lt!663287) (dynLambda!8830 (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) lt!663287))))

(declare-fun b_lambda!55189 () Bool)

(assert (=> (not b_lambda!55189) (not d!529891)))

(assert (=> d!529891 t!160548))

(declare-fun b_and!127487 () Bool)

(assert (= b_and!127481 (and (=> t!160548 result!123780) b_and!127487)))

(assert (=> d!529891 t!160550))

(declare-fun b_and!127489 () Bool)

(assert (= b_and!127483 (and (=> t!160550 result!123784) b_and!127489)))

(assert (=> d!529891 t!160552))

(declare-fun b_and!127491 () Bool)

(assert (= b_and!127485 (and (=> t!160552 result!123786) b_and!127491)))

(assert (=> d!529891 m!2137569))

(assert (=> b!1729683 d!529891))

(declare-fun d!529893 () Bool)

(assert (=> d!529893 (= (size!15066 (_1!10723 lt!663281)) (size!15067 (originalCharacters!4179 (_1!10723 lt!663281))))))

(declare-fun Unit!32826 () Unit!32817)

(assert (=> d!529893 (= (lemmaCharactersSize!437 (_1!10723 lt!663281)) Unit!32826)))

(declare-fun bs!402609 () Bool)

(assert (= bs!402609 d!529893))

(declare-fun m!2138567 () Bool)

(assert (=> bs!402609 m!2138567))

(assert (=> b!1729683 d!529893))

(declare-fun d!529895 () Bool)

(assert (=> d!529895 (= (seqFromList!2339 (originalCharacters!4179 (_1!10723 lt!663281))) (fromListB!1074 (originalCharacters!4179 (_1!10723 lt!663281))))))

(declare-fun bs!402610 () Bool)

(assert (= bs!402610 d!529895))

(declare-fun m!2138569 () Bool)

(assert (=> bs!402610 m!2138569))

(assert (=> b!1729683 d!529895))

(declare-fun d!529897 () Bool)

(declare-fun lt!663633 () Int)

(assert (=> d!529897 (= lt!663633 (size!15067 (list!7666 lt!663287)))))

(assert (=> d!529897 (= lt!663633 (size!15070 (c!282637 lt!663287)))))

(assert (=> d!529897 (= (size!15068 lt!663287) lt!663633)))

(declare-fun bs!402611 () Bool)

(assert (= bs!402611 d!529897))

(assert (=> bs!402611 m!2137531))

(assert (=> bs!402611 m!2137531))

(declare-fun m!2138571 () Bool)

(assert (=> bs!402611 m!2138571))

(declare-fun m!2138573 () Bool)

(assert (=> bs!402611 m!2138573))

(assert (=> b!1729683 d!529897))

(declare-fun d!529899 () Bool)

(assert (=> d!529899 (= (isEmpty!11930 suffix!1421) ((_ is Nil!18963) suffix!1421))))

(assert (=> b!1729687 d!529899))

(declare-fun d!529901 () Bool)

(declare-fun res!777122 () Bool)

(declare-fun e!1107017 () Bool)

(assert (=> d!529901 (=> (not res!777122) (not e!1107017))))

(declare-fun rulesValid!1260 (LexerInterface!2994 List!19034) Bool)

(assert (=> d!529901 (= res!777122 (rulesValid!1260 thiss!24550 rules!3447))))

(assert (=> d!529901 (= (rulesInvariant!2663 thiss!24550 rules!3447) e!1107017)))

(declare-fun b!1730453 () Bool)

(declare-datatypes ((List!19040 0))(
  ( (Nil!18970) (Cons!18970 (h!24371 String!21607) (t!160627 List!19040)) )
))
(declare-fun noDuplicateTag!1260 (LexerInterface!2994 List!19034 List!19040) Bool)

(assert (=> b!1730453 (= e!1107017 (noDuplicateTag!1260 thiss!24550 rules!3447 Nil!18970))))

(assert (= (and d!529901 res!777122) b!1730453))

(declare-fun m!2138575 () Bool)

(assert (=> d!529901 m!2138575))

(declare-fun m!2138577 () Bool)

(assert (=> b!1730453 m!2138577))

(assert (=> b!1729686 d!529901))

(declare-fun d!529903 () Bool)

(declare-fun lt!663636 () Bool)

(declare-fun content!2716 (List!19034) (InoxSet Rule!6530))

(assert (=> d!529903 (= lt!663636 (select (content!2716 rules!3447) rule!422))))

(declare-fun e!1107022 () Bool)

(assert (=> d!529903 (= lt!663636 e!1107022)))

(declare-fun res!777127 () Bool)

(assert (=> d!529903 (=> (not res!777127) (not e!1107022))))

(assert (=> d!529903 (= res!777127 ((_ is Cons!18964) rules!3447))))

(assert (=> d!529903 (= (contains!3387 rules!3447 rule!422) lt!663636)))

(declare-fun b!1730458 () Bool)

(declare-fun e!1107023 () Bool)

(assert (=> b!1730458 (= e!1107022 e!1107023)))

(declare-fun res!777128 () Bool)

(assert (=> b!1730458 (=> res!777128 e!1107023)))

(assert (=> b!1730458 (= res!777128 (= (h!24365 rules!3447) rule!422))))

(declare-fun b!1730459 () Bool)

(assert (=> b!1730459 (= e!1107023 (contains!3387 (t!160561 rules!3447) rule!422))))

(assert (= (and d!529903 res!777127) b!1730458))

(assert (= (and b!1730458 (not res!777128)) b!1730459))

(declare-fun m!2138579 () Bool)

(assert (=> d!529903 m!2138579))

(declare-fun m!2138581 () Bool)

(assert (=> d!529903 m!2138581))

(declare-fun m!2138583 () Bool)

(assert (=> b!1730459 m!2138583))

(assert (=> b!1729690 d!529903))

(declare-fun b!1730472 () Bool)

(declare-fun e!1107026 () Bool)

(declare-fun tp!493402 () Bool)

(assert (=> b!1730472 (= e!1107026 tp!493402)))

(assert (=> b!1729698 (= tp!493327 e!1107026)))

(declare-fun b!1730471 () Bool)

(declare-fun tp!493404 () Bool)

(declare-fun tp!493406 () Bool)

(assert (=> b!1730471 (= e!1107026 (and tp!493404 tp!493406))))

(declare-fun b!1730473 () Bool)

(declare-fun tp!493405 () Bool)

(declare-fun tp!493403 () Bool)

(assert (=> b!1730473 (= e!1107026 (and tp!493405 tp!493403))))

(declare-fun b!1730470 () Bool)

(assert (=> b!1730470 (= e!1107026 tp_is_empty!7629)))

(assert (= (and b!1729698 ((_ is ElementMatch!4693) (regex!3365 (h!24365 rules!3447)))) b!1730470))

(assert (= (and b!1729698 ((_ is Concat!8149) (regex!3365 (h!24365 rules!3447)))) b!1730471))

(assert (= (and b!1729698 ((_ is Star!4693) (regex!3365 (h!24365 rules!3447)))) b!1730472))

(assert (= (and b!1729698 ((_ is Union!4693) (regex!3365 (h!24365 rules!3447)))) b!1730473))

(declare-fun b!1730478 () Bool)

(declare-fun e!1107029 () Bool)

(declare-fun tp!493409 () Bool)

(assert (=> b!1730478 (= e!1107029 (and tp_is_empty!7629 tp!493409))))

(assert (=> b!1729675 (= tp!493322 e!1107029)))

(assert (= (and b!1729675 ((_ is Cons!18963) (originalCharacters!4179 token!523))) b!1730478))

(declare-fun b!1730489 () Bool)

(declare-fun b_free!47315 () Bool)

(declare-fun b_next!48019 () Bool)

(assert (=> b!1730489 (= b_free!47315 (not b_next!48019))))

(declare-fun t!160612 () Bool)

(declare-fun tb!103011 () Bool)

(assert (=> (and b!1730489 (= (toValue!4872 (transformation!3365 (h!24365 (t!160561 rules!3447)))) (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281))))) t!160612) tb!103011))

(declare-fun result!123856 () Bool)

(assert (= result!123856 result!123780))

(assert (=> d!529891 t!160612))

(assert (=> d!529787 t!160612))

(assert (=> b!1729679 t!160612))

(assert (=> d!529889 t!160612))

(declare-fun t!160614 () Bool)

(declare-fun tb!103013 () Bool)

(assert (=> (and b!1730489 (= (toValue!4872 (transformation!3365 (h!24365 (t!160561 rules!3447)))) (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281))))) t!160614) tb!103013))

(declare-fun result!123858 () Bool)

(assert (= result!123858 result!123844))

(assert (=> d!529889 t!160614))

(declare-fun t!160616 () Bool)

(declare-fun tb!103015 () Bool)

(assert (=> (and b!1730489 (= (toValue!4872 (transformation!3365 (h!24365 (t!160561 rules!3447)))) (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281))))) t!160616) tb!103015))

(declare-fun result!123860 () Bool)

(assert (= result!123860 result!123812))

(assert (=> d!529711 t!160616))

(declare-fun tp!493419 () Bool)

(declare-fun b_and!127493 () Bool)

(assert (=> b!1730489 (= tp!493419 (and (=> t!160614 result!123858) (=> t!160612 result!123856) (=> t!160616 result!123860) b_and!127493))))

(declare-fun b_free!47317 () Bool)

(declare-fun b_next!48021 () Bool)

(assert (=> b!1730489 (= b_free!47317 (not b_next!48021))))

(declare-fun t!160618 () Bool)

(declare-fun tb!103017 () Bool)

(assert (=> (and b!1730489 (= (toChars!4731 (transformation!3365 (h!24365 (t!160561 rules!3447)))) (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281))))) t!160618) tb!103017))

(declare-fun result!123862 () Bool)

(assert (= result!123862 result!123788))

(assert (=> b!1729693 t!160618))

(declare-fun tb!103019 () Bool)

(declare-fun t!160620 () Bool)

(assert (=> (and b!1730489 (= (toChars!4731 (transformation!3365 (h!24365 (t!160561 rules!3447)))) (toChars!4731 (transformation!3365 (rule!5339 token!523)))) t!160620) tb!103019))

(declare-fun result!123864 () Bool)

(assert (= result!123864 result!123818))

(assert (=> d!529771 t!160620))

(assert (=> d!529845 t!160618))

(declare-fun t!160622 () Bool)

(declare-fun tb!103021 () Bool)

(assert (=> (and b!1730489 (= (toChars!4731 (transformation!3365 (h!24365 (t!160561 rules!3447)))) (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281))))) t!160622) tb!103021))

(declare-fun result!123866 () Bool)

(assert (= result!123866 result!123772))

(assert (=> b!1729679 t!160622))

(assert (=> d!529787 t!160622))

(assert (=> b!1730399 t!160620))

(declare-fun tp!493421 () Bool)

(declare-fun b_and!127495 () Bool)

(assert (=> b!1730489 (= tp!493421 (and (=> t!160620 result!123864) (=> t!160618 result!123862) (=> t!160622 result!123866) b_and!127495))))

(declare-fun e!1107038 () Bool)

(assert (=> b!1730489 (= e!1107038 (and tp!493419 tp!493421))))

(declare-fun tp!493418 () Bool)

(declare-fun e!1107039 () Bool)

(declare-fun b!1730488 () Bool)

(assert (=> b!1730488 (= e!1107039 (and tp!493418 (inv!24518 (tag!3689 (h!24365 (t!160561 rules!3447)))) (inv!24523 (transformation!3365 (h!24365 (t!160561 rules!3447)))) e!1107038))))

(declare-fun b!1730487 () Bool)

(declare-fun e!1107040 () Bool)

(declare-fun tp!493420 () Bool)

(assert (=> b!1730487 (= e!1107040 (and e!1107039 tp!493420))))

(assert (=> b!1729684 (= tp!493328 e!1107040)))

(assert (= b!1730488 b!1730489))

(assert (= b!1730487 b!1730488))

(assert (= (and b!1729684 ((_ is Cons!18964) (t!160561 rules!3447))) b!1730487))

(declare-fun m!2138585 () Bool)

(assert (=> b!1730488 m!2138585))

(declare-fun m!2138587 () Bool)

(assert (=> b!1730488 m!2138587))

(declare-fun e!1107047 () Bool)

(declare-fun tp!493428 () Bool)

(declare-fun tp!493430 () Bool)

(declare-fun b!1730498 () Bool)

(assert (=> b!1730498 (= e!1107047 (and (inv!24525 (left!15143 (c!282637 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (value!105575 (_1!10723 lt!663281)))))) tp!493430 (inv!24525 (right!15473 (c!282637 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (value!105575 (_1!10723 lt!663281)))))) tp!493428))))

(declare-fun b!1730500 () Bool)

(declare-fun e!1107046 () Bool)

(declare-fun tp!493429 () Bool)

(assert (=> b!1730500 (= e!1107046 tp!493429)))

(declare-fun b!1730499 () Bool)

(declare-fun inv!24532 (IArray!12619) Bool)

(assert (=> b!1730499 (= e!1107047 (and (inv!24532 (xs!9183 (c!282637 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (value!105575 (_1!10723 lt!663281)))))) e!1107046))))

(assert (=> b!1729720 (= tp!493336 (and (inv!24525 (c!282637 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (value!105575 (_1!10723 lt!663281))))) e!1107047))))

(assert (= (and b!1729720 ((_ is Node!6307) (c!282637 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (value!105575 (_1!10723 lt!663281)))))) b!1730498))

(assert (= b!1730499 b!1730500))

(assert (= (and b!1729720 ((_ is Leaf!9210) (c!282637 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (value!105575 (_1!10723 lt!663281)))))) b!1730499))

(declare-fun m!2138589 () Bool)

(assert (=> b!1730498 m!2138589))

(declare-fun m!2138591 () Bool)

(assert (=> b!1730498 m!2138591))

(declare-fun m!2138593 () Bool)

(assert (=> b!1730499 m!2138593))

(assert (=> b!1729720 m!2137455))

(declare-fun b!1730503 () Bool)

(declare-fun e!1107048 () Bool)

(declare-fun tp!493431 () Bool)

(assert (=> b!1730503 (= e!1107048 tp!493431)))

(assert (=> b!1729685 (= tp!493330 e!1107048)))

(declare-fun b!1730502 () Bool)

(declare-fun tp!493433 () Bool)

(declare-fun tp!493435 () Bool)

(assert (=> b!1730502 (= e!1107048 (and tp!493433 tp!493435))))

(declare-fun b!1730504 () Bool)

(declare-fun tp!493434 () Bool)

(declare-fun tp!493432 () Bool)

(assert (=> b!1730504 (= e!1107048 (and tp!493434 tp!493432))))

(declare-fun b!1730501 () Bool)

(assert (=> b!1730501 (= e!1107048 tp_is_empty!7629)))

(assert (= (and b!1729685 ((_ is ElementMatch!4693) (regex!3365 rule!422))) b!1730501))

(assert (= (and b!1729685 ((_ is Concat!8149) (regex!3365 rule!422))) b!1730502))

(assert (= (and b!1729685 ((_ is Star!4693) (regex!3365 rule!422))) b!1730503))

(assert (= (and b!1729685 ((_ is Union!4693) (regex!3365 rule!422))) b!1730504))

(declare-fun b!1730505 () Bool)

(declare-fun e!1107049 () Bool)

(declare-fun tp!493436 () Bool)

(assert (=> b!1730505 (= e!1107049 (and tp_is_empty!7629 tp!493436))))

(assert (=> b!1729689 (= tp!493331 e!1107049)))

(assert (= (and b!1729689 ((_ is Cons!18963) (t!160560 suffix!1421))) b!1730505))

(declare-fun b!1730508 () Bool)

(declare-fun e!1107050 () Bool)

(declare-fun tp!493437 () Bool)

(assert (=> b!1730508 (= e!1107050 tp!493437)))

(assert (=> b!1729673 (= tp!493324 e!1107050)))

(declare-fun b!1730507 () Bool)

(declare-fun tp!493439 () Bool)

(declare-fun tp!493441 () Bool)

(assert (=> b!1730507 (= e!1107050 (and tp!493439 tp!493441))))

(declare-fun b!1730509 () Bool)

(declare-fun tp!493440 () Bool)

(declare-fun tp!493438 () Bool)

(assert (=> b!1730509 (= e!1107050 (and tp!493440 tp!493438))))

(declare-fun b!1730506 () Bool)

(assert (=> b!1730506 (= e!1107050 tp_is_empty!7629)))

(assert (= (and b!1729673 ((_ is ElementMatch!4693) (regex!3365 (rule!5339 token!523)))) b!1730506))

(assert (= (and b!1729673 ((_ is Concat!8149) (regex!3365 (rule!5339 token!523)))) b!1730507))

(assert (= (and b!1729673 ((_ is Star!4693) (regex!3365 (rule!5339 token!523)))) b!1730508))

(assert (= (and b!1729673 ((_ is Union!4693) (regex!3365 (rule!5339 token!523)))) b!1730509))

(declare-fun tp!493444 () Bool)

(declare-fun b!1730510 () Bool)

(declare-fun e!1107052 () Bool)

(declare-fun tp!493442 () Bool)

(assert (=> b!1730510 (= e!1107052 (and (inv!24525 (left!15143 (c!282637 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (dynLambda!8830 (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) lt!663287))))) tp!493444 (inv!24525 (right!15473 (c!282637 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (dynLambda!8830 (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) lt!663287))))) tp!493442))))

(declare-fun b!1730512 () Bool)

(declare-fun e!1107051 () Bool)

(declare-fun tp!493443 () Bool)

(assert (=> b!1730512 (= e!1107051 tp!493443)))

(declare-fun b!1730511 () Bool)

(assert (=> b!1730511 (= e!1107052 (and (inv!24532 (xs!9183 (c!282637 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (dynLambda!8830 (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) lt!663287))))) e!1107051))))

(assert (=> b!1729717 (= tp!493335 (and (inv!24525 (c!282637 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (dynLambda!8830 (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) lt!663287)))) e!1107052))))

(assert (= (and b!1729717 ((_ is Node!6307) (c!282637 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (dynLambda!8830 (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) lt!663287))))) b!1730510))

(assert (= b!1730511 b!1730512))

(assert (= (and b!1729717 ((_ is Leaf!9210) (c!282637 (dynLambda!8829 (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) (dynLambda!8830 (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))) lt!663287))))) b!1730511))

(declare-fun m!2138595 () Bool)

(assert (=> b!1730510 m!2138595))

(declare-fun m!2138597 () Bool)

(assert (=> b!1730510 m!2138597))

(declare-fun m!2138599 () Bool)

(assert (=> b!1730511 m!2138599))

(assert (=> b!1729717 m!2137449))

(declare-fun b_lambda!55191 () Bool)

(assert (= b_lambda!55143 (or (and b!1729696 b_free!47301 (= (toChars!4731 (transformation!3365 (rule!5339 token!523))) (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))))) (and b!1729670 b_free!47305 (= (toChars!4731 (transformation!3365 rule!422)) (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))))) (and b!1729691 b_free!47309 (= (toChars!4731 (transformation!3365 (h!24365 rules!3447))) (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))))) (and b!1730489 b_free!47317 (= (toChars!4731 (transformation!3365 (h!24365 (t!160561 rules!3447)))) (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))))) b_lambda!55191)))

(declare-fun b_lambda!55193 () Bool)

(assert (= b_lambda!55139 (or (and b!1729696 b_free!47301 (= (toChars!4731 (transformation!3365 (rule!5339 token!523))) (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))))) (and b!1729670 b_free!47305 (= (toChars!4731 (transformation!3365 rule!422)) (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))))) (and b!1729691 b_free!47309 (= (toChars!4731 (transformation!3365 (h!24365 rules!3447))) (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))))) (and b!1730489 b_free!47317 (= (toChars!4731 (transformation!3365 (h!24365 (t!160561 rules!3447)))) (toChars!4731 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))))) b_lambda!55193)))

(declare-fun b_lambda!55195 () Bool)

(assert (= b_lambda!55183 (or (and b!1729696 b_free!47301) (and b!1729670 b_free!47305 (= (toChars!4731 (transformation!3365 rule!422)) (toChars!4731 (transformation!3365 (rule!5339 token!523))))) (and b!1729691 b_free!47309 (= (toChars!4731 (transformation!3365 (h!24365 rules!3447))) (toChars!4731 (transformation!3365 (rule!5339 token!523))))) (and b!1730489 b_free!47317 (= (toChars!4731 (transformation!3365 (h!24365 (t!160561 rules!3447)))) (toChars!4731 (transformation!3365 (rule!5339 token!523))))) b_lambda!55195)))

(declare-fun b_lambda!55197 () Bool)

(assert (= b_lambda!55159 (or (and b!1729696 b_free!47301) (and b!1729670 b_free!47305 (= (toChars!4731 (transformation!3365 rule!422)) (toChars!4731 (transformation!3365 (rule!5339 token!523))))) (and b!1729691 b_free!47309 (= (toChars!4731 (transformation!3365 (h!24365 rules!3447))) (toChars!4731 (transformation!3365 (rule!5339 token!523))))) (and b!1730489 b_free!47317 (= (toChars!4731 (transformation!3365 (h!24365 (t!160561 rules!3447)))) (toChars!4731 (transformation!3365 (rule!5339 token!523))))) b_lambda!55197)))

(declare-fun b_lambda!55199 () Bool)

(assert (= b_lambda!55141 (or (and b!1729696 b_free!47299 (= (toValue!4872 (transformation!3365 (rule!5339 token!523))) (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))))) (and b!1729670 b_free!47303 (= (toValue!4872 (transformation!3365 rule!422)) (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))))) (and b!1729691 b_free!47307 (= (toValue!4872 (transformation!3365 (h!24365 rules!3447))) (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))))) (and b!1730489 b_free!47315 (= (toValue!4872 (transformation!3365 (h!24365 (t!160561 rules!3447)))) (toValue!4872 (transformation!3365 (rule!5339 (_1!10723 lt!663281)))))) b_lambda!55199)))

(check-sat (not b!1730422) (not b!1730437) (not d!529713) (not b!1730439) (not b!1730498) (not b_lambda!55193) (not b!1730423) (not bm!109912) (not d!529709) (not b!1730140) (not b_lambda!55155) (not b!1730227) (not b_lambda!55165) (not b!1730214) (not d!529661) (not b!1730360) (not b!1729919) (not d!529897) b_and!127495 (not b!1730057) b_and!127489 (not b_lambda!55185) (not b!1730417) (not d!529877) (not b!1730472) (not b!1730162) (not b!1730508) (not b!1730226) (not d!529703) (not b!1730141) (not bm!109908) (not b!1730070) (not b!1730487) (not d!529903) (not b!1730209) (not d!529679) (not d!529839) (not b!1729989) (not b!1730507) (not b!1729978) (not b!1730411) (not b!1730505) (not b!1730217) (not b!1730453) (not b!1730434) (not b_lambda!55167) (not d!529837) (not d!529895) (not d!529843) (not b!1730020) (not b!1730370) (not b!1730471) (not b!1730085) (not b!1730345) (not b!1730367) (not b!1730504) (not b!1730381) (not b!1730361) (not b_next!48011) (not b!1730343) (not bm!109909) (not bm!109916) (not b!1730073) (not b!1730024) (not d!529743) (not b!1730438) (not b_next!48009) (not b_lambda!55199) (not b!1730337) (not bm!109917) b_and!127491 (not b!1730502) (not b!1730402) (not b!1730339) (not b!1730168) (not d!529859) (not b!1729717) (not d!529857) (not d!529749) (not b!1730510) (not b!1730400) b_and!127473 (not b_lambda!55189) (not b!1730086) (not b_next!48021) (not b!1730368) b_and!127469 (not b_next!48003) (not b!1730155) (not d!529873) (not b!1730371) (not b!1729927) (not b!1729979) (not b_next!48013) (not b_lambda!55181) (not d!529717) (not b!1730306) (not b!1729964) (not b!1730407) (not b!1730167) (not d!529799) (not b!1730503) (not b!1730346) (not b!1730404) (not b!1730163) (not d!529881) (not b!1730023) (not b!1730222) (not b_lambda!55187) (not tb!103005) (not b!1730393) (not d!529849) (not b!1730366) (not b!1730373) (not b!1730488) (not b!1729946) (not b!1730213) (not b!1730158) (not b!1730478) (not d!529719) (not b!1730017) (not d!529879) (not b!1730221) (not d!529693) (not b!1730225) (not b!1730138) (not d!529801) (not b!1730391) (not b_lambda!55197) (not b!1730443) (not b!1730410) (not b!1729990) (not b!1730512) (not b!1730305) (not b!1730380) (not b!1730134) (not d!529883) (not b!1730433) (not b!1730166) (not b!1730084) (not d!529773) (not d!529851) (not b!1730408) (not d!529663) (not b!1730427) (not b_next!48019) (not b!1730378) b_and!127487 (not b!1730499) (not b!1730341) (not d!529871) (not d!529673) (not b!1730018) (not b!1729720) (not b!1730403) (not b!1730211) (not b!1730338) (not b!1730418) (not d!529777) (not b!1730342) (not b_next!48005) (not b!1730372) (not tb!102987) (not b_lambda!55191) (not b!1729996) (not d!529841) (not d!529715) (not b!1730377) (not b!1730413) (not d!529889) (not d!529751) (not b!1730365) (not d!529901) (not b!1730016) (not d!529785) (not d!529865) b_and!127471 (not d!529835) (not b!1730374) (not d!529731) (not tb!102981) (not d!529869) (not b!1730399) (not d!529893) (not d!529887) tp_is_empty!7629 (not b_lambda!55195) (not b!1730042) (not b!1730142) (not b!1730139) (not b!1729929) (not d!529667) (not b!1729928) (not d!529769) (not b!1730376) b_and!127493 (not d!529845) (not d!529707) (not b!1730136) (not b!1730406) (not b!1730392) (not d!529771) (not b!1730135) (not d!529723) (not b!1730421) (not b!1730511) (not b!1730459) (not b!1730072) (not b!1730019) (not b!1730021) (not d!529787) (not b_next!48007) (not b!1730509) (not b!1729924) (not b!1729923) (not b!1730500) (not bm!109915) (not bm!109902) (not d!529811) (not d!529855) (not b!1730212) (not d!529775) (not b!1730429) (not b!1730473))
(check-sat b_and!127495 b_and!127489 (not b_next!48011) b_and!127473 (not b_next!48013) (not b_next!48005) b_and!127471 b_and!127493 (not b_next!48007) (not b_next!48009) b_and!127491 (not b_next!48021) b_and!127469 (not b_next!48003) (not b_next!48019) b_and!127487)
