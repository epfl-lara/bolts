; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!304090 () Bool)

(assert start!304090)

(declare-fun b!3233618 () Bool)

(declare-fun b_free!86289 () Bool)

(declare-fun b_next!86993 () Bool)

(assert (=> b!3233618 (= b_free!86289 (not b_next!86993))))

(declare-fun tp!1018993 () Bool)

(declare-fun b_and!216731 () Bool)

(assert (=> b!3233618 (= tp!1018993 b_and!216731)))

(declare-fun b_free!86291 () Bool)

(declare-fun b_next!86995 () Bool)

(assert (=> b!3233618 (= b_free!86291 (not b_next!86995))))

(declare-fun tp!1018999 () Bool)

(declare-fun b_and!216733 () Bool)

(assert (=> b!3233618 (= tp!1018999 b_and!216733)))

(declare-fun b!3233607 () Bool)

(declare-fun b_free!86293 () Bool)

(declare-fun b_next!86997 () Bool)

(assert (=> b!3233607 (= b_free!86293 (not b_next!86997))))

(declare-fun tp!1019000 () Bool)

(declare-fun b_and!216735 () Bool)

(assert (=> b!3233607 (= tp!1019000 b_and!216735)))

(declare-fun b_free!86295 () Bool)

(declare-fun b_next!86999 () Bool)

(assert (=> b!3233607 (= b_free!86295 (not b_next!86999))))

(declare-fun tp!1018988 () Bool)

(declare-fun b_and!216737 () Bool)

(assert (=> b!3233607 (= tp!1018988 b_and!216737)))

(declare-fun b!3233625 () Bool)

(declare-fun b_free!86297 () Bool)

(declare-fun b_next!87001 () Bool)

(assert (=> b!3233625 (= b_free!86297 (not b_next!87001))))

(declare-fun tp!1018994 () Bool)

(declare-fun b_and!216739 () Bool)

(assert (=> b!3233625 (= tp!1018994 b_and!216739)))

(declare-fun b_free!86299 () Bool)

(declare-fun b_next!87003 () Bool)

(assert (=> b!3233625 (= b_free!86299 (not b_next!87003))))

(declare-fun tp!1018997 () Bool)

(declare-fun b_and!216741 () Bool)

(assert (=> b!3233625 (= tp!1018997 b_and!216741)))

(declare-fun b!3233602 () Bool)

(declare-fun e!2016654 () Bool)

(declare-datatypes ((C!20252 0))(
  ( (C!20253 (val!12174 Int)) )
))
(declare-datatypes ((Regex!10033 0))(
  ( (ElementMatch!10033 (c!543446 C!20252)) (Concat!15537 (regOne!20578 Regex!10033) (regTwo!20578 Regex!10033)) (EmptyExpr!10033) (Star!10033 (reg!10362 Regex!10033)) (EmptyLang!10033) (Union!10033 (regOne!20579 Regex!10033) (regTwo!20579 Regex!10033)) )
))
(declare-datatypes ((List!36520 0))(
  ( (Nil!36396) (Cons!36396 (h!41816 (_ BitVec 16)) (t!241967 List!36520)) )
))
(declare-datatypes ((TokenValue!5504 0))(
  ( (FloatLiteralValue!11008 (text!38973 List!36520)) (TokenValueExt!5503 (__x!23225 Int)) (Broken!27520 (value!170743 List!36520)) (Object!5627) (End!5504) (Def!5504) (Underscore!5504) (Match!5504) (Else!5504) (Error!5504) (Case!5504) (If!5504) (Extends!5504) (Abstract!5504) (Class!5504) (Val!5504) (DelimiterValue!11008 (del!5564 List!36520)) (KeywordValue!5510 (value!170744 List!36520)) (CommentValue!11008 (value!170745 List!36520)) (WhitespaceValue!11008 (value!170746 List!36520)) (IndentationValue!5504 (value!170747 List!36520)) (String!40853) (Int32!5504) (Broken!27521 (value!170748 List!36520)) (Boolean!5505) (Unit!50995) (OperatorValue!5507 (op!5564 List!36520)) (IdentifierValue!11008 (value!170749 List!36520)) (IdentifierValue!11009 (value!170750 List!36520)) (WhitespaceValue!11009 (value!170751 List!36520)) (True!11008) (False!11008) (Broken!27522 (value!170752 List!36520)) (Broken!27523 (value!170753 List!36520)) (True!11009) (RightBrace!5504) (RightBracket!5504) (Colon!5504) (Null!5504) (Comma!5504) (LeftBracket!5504) (False!11009) (LeftBrace!5504) (ImaginaryLiteralValue!5504 (text!38974 List!36520)) (StringLiteralValue!16512 (value!170754 List!36520)) (EOFValue!5504 (value!170755 List!36520)) (IdentValue!5504 (value!170756 List!36520)) (DelimiterValue!11009 (value!170757 List!36520)) (DedentValue!5504 (value!170758 List!36520)) (NewLineValue!5504 (value!170759 List!36520)) (IntegerValue!16512 (value!170760 (_ BitVec 32)) (text!38975 List!36520)) (IntegerValue!16513 (value!170761 Int) (text!38976 List!36520)) (Times!5504) (Or!5504) (Equal!5504) (Minus!5504) (Broken!27524 (value!170762 List!36520)) (And!5504) (Div!5504) (LessEqual!5504) (Mod!5504) (Concat!15538) (Not!5504) (Plus!5504) (SpaceValue!5504 (value!170763 List!36520)) (IntegerValue!16514 (value!170764 Int) (text!38977 List!36520)) (StringLiteralValue!16513 (text!38978 List!36520)) (FloatLiteralValue!11009 (text!38979 List!36520)) (BytesLiteralValue!5504 (value!170765 List!36520)) (CommentValue!11009 (value!170766 List!36520)) (StringLiteralValue!16514 (value!170767 List!36520)) (ErrorTokenValue!5504 (msg!5565 List!36520)) )
))
(declare-datatypes ((List!36521 0))(
  ( (Nil!36397) (Cons!36397 (h!41817 C!20252) (t!241968 List!36521)) )
))
(declare-datatypes ((IArray!21851 0))(
  ( (IArray!21852 (innerList!10983 List!36521)) )
))
(declare-datatypes ((Conc!10923 0))(
  ( (Node!10923 (left!28342 Conc!10923) (right!28672 Conc!10923) (csize!22076 Int) (cheight!11134 Int)) (Leaf!17171 (xs!14045 IArray!21851) (csize!22077 Int)) (Empty!10923) )
))
(declare-datatypes ((BalanceConc!21460 0))(
  ( (BalanceConc!21461 (c!543447 Conc!10923)) )
))
(declare-datatypes ((String!40854 0))(
  ( (String!40855 (value!170768 String)) )
))
(declare-datatypes ((TokenValueInjection!10436 0))(
  ( (TokenValueInjection!10437 (toValue!7386 Int) (toChars!7245 Int)) )
))
(declare-datatypes ((Rule!10348 0))(
  ( (Rule!10349 (regex!5274 Regex!10033) (tag!5808 String!40854) (isSeparator!5274 Bool) (transformation!5274 TokenValueInjection!10436)) )
))
(declare-datatypes ((Token!9914 0))(
  ( (Token!9915 (value!170769 TokenValue!5504) (rule!7736 Rule!10348) (size!27454 Int) (originalCharacters!5988 List!36521)) )
))
(declare-fun separatorToken!241 () Token!9914)

(declare-fun lt!1097360 () Rule!10348)

(assert (=> b!3233602 (= e!2016654 (= (rule!7736 separatorToken!241) lt!1097360))))

(declare-fun e!2016646 () Bool)

(declare-datatypes ((List!36522 0))(
  ( (Nil!36398) (Cons!36398 (h!41818 Token!9914) (t!241969 List!36522)) )
))
(declare-fun tokens!494 () List!36522)

(declare-fun tp!1018991 () Bool)

(declare-fun b!3233603 () Bool)

(declare-fun e!2016636 () Bool)

(declare-fun inv!49292 (String!40854) Bool)

(declare-fun inv!49295 (TokenValueInjection!10436) Bool)

(assert (=> b!3233603 (= e!2016636 (and tp!1018991 (inv!49292 (tag!5808 (rule!7736 (h!41818 tokens!494)))) (inv!49295 (transformation!5274 (rule!7736 (h!41818 tokens!494)))) e!2016646))))

(declare-fun b!3233604 () Bool)

(declare-fun e!2016655 () Bool)

(declare-fun e!2016657 () Bool)

(assert (=> b!3233604 (= e!2016655 e!2016657)))

(declare-fun res!1316741 () Bool)

(assert (=> b!3233604 (=> res!1316741 e!2016657)))

(declare-fun lt!1097384 () List!36521)

(declare-fun lt!1097379 () List!36521)

(assert (=> b!3233604 (= res!1316741 (not (= lt!1097384 lt!1097379)))))

(declare-fun lt!1097381 () List!36521)

(declare-fun lt!1097361 () List!36521)

(declare-fun ++!8772 (List!36521 List!36521) List!36521)

(assert (=> b!3233604 (= lt!1097379 (++!8772 lt!1097381 lt!1097361))))

(declare-fun lt!1097370 () BalanceConc!21460)

(declare-fun list!12997 (BalanceConc!21460) List!36521)

(assert (=> b!3233604 (= lt!1097384 (list!12997 lt!1097370))))

(declare-fun charsOf!3290 (Token!9914) BalanceConc!21460)

(assert (=> b!3233604 (= lt!1097361 (list!12997 (charsOf!3290 separatorToken!241)))))

(declare-datatypes ((LexerInterface!4863 0))(
  ( (LexerInterfaceExt!4860 (__x!23226 Int)) (Lexer!4861) )
))
(declare-fun thiss!18206 () LexerInterface!4863)

(declare-datatypes ((IArray!21853 0))(
  ( (IArray!21854 (innerList!10984 List!36522)) )
))
(declare-datatypes ((Conc!10924 0))(
  ( (Node!10924 (left!28343 Conc!10924) (right!28673 Conc!10924) (csize!22078 Int) (cheight!11135 Int)) (Leaf!17172 (xs!14046 IArray!21853) (csize!22079 Int)) (Empty!10924) )
))
(declare-datatypes ((BalanceConc!21462 0))(
  ( (BalanceConc!21463 (c!543448 Conc!10924)) )
))
(declare-fun lt!1097368 () BalanceConc!21462)

(declare-fun printWithSeparatorToken!80 (LexerInterface!4863 BalanceConc!21462 Token!9914) BalanceConc!21460)

(assert (=> b!3233604 (= lt!1097370 (printWithSeparatorToken!80 thiss!18206 lt!1097368 separatorToken!241))))

(declare-fun b!3233605 () Bool)

(declare-fun e!2016653 () Bool)

(declare-fun e!2016638 () Bool)

(assert (=> b!3233605 (= e!2016653 e!2016638)))

(declare-fun res!1316739 () Bool)

(assert (=> b!3233605 (=> res!1316739 e!2016638)))

(declare-datatypes ((tuple2!35834 0))(
  ( (tuple2!35835 (_1!21051 Token!9914) (_2!21051 List!36521)) )
))
(declare-datatypes ((Option!7231 0))(
  ( (None!7230) (Some!7230 (v!35858 tuple2!35834)) )
))
(declare-fun lt!1097385 () Option!7231)

(get-info :version)

(assert (=> b!3233605 (= res!1316739 (not ((_ is Some!7230) lt!1097385)))))

(declare-datatypes ((List!36523 0))(
  ( (Nil!36399) (Cons!36399 (h!41819 Rule!10348) (t!241970 List!36523)) )
))
(declare-fun rules!2135 () List!36523)

(declare-fun maxPrefix!2491 (LexerInterface!4863 List!36523 List!36521) Option!7231)

(assert (=> b!3233605 (= lt!1097385 (maxPrefix!2491 thiss!18206 rules!2135 lt!1097384))))

(assert (=> b!3233605 (= (maxPrefix!2491 thiss!18206 rules!2135 lt!1097379) (Some!7230 (tuple2!35835 (h!41818 tokens!494) lt!1097361)))))

(declare-datatypes ((Unit!50996 0))(
  ( (Unit!50997) )
))
(declare-fun lt!1097359 () Unit!50996)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!180 (LexerInterface!4863 List!36523 Token!9914 Rule!10348 List!36521 Rule!10348) Unit!50996)

(assert (=> b!3233605 (= lt!1097359 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!180 thiss!18206 rules!2135 (h!41818 tokens!494) (rule!7736 (h!41818 tokens!494)) lt!1097361 (rule!7736 separatorToken!241)))))

(declare-fun lt!1097364 () C!20252)

(declare-fun contains!6541 (List!36521 C!20252) Bool)

(declare-fun usedCharacters!576 (Regex!10033) List!36521)

(assert (=> b!3233605 (not (contains!6541 (usedCharacters!576 (regex!5274 (rule!7736 (h!41818 tokens!494)))) lt!1097364))))

(declare-fun lt!1097373 () Unit!50996)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!180 (LexerInterface!4863 List!36523 List!36523 Rule!10348 Rule!10348 C!20252) Unit!50996)

(assert (=> b!3233605 (= lt!1097373 (lemmaNonSepRuleNotContainsCharContainedInASepRule!180 thiss!18206 rules!2135 rules!2135 (rule!7736 (h!41818 tokens!494)) (rule!7736 separatorToken!241) lt!1097364))))

(declare-fun b!3233606 () Bool)

(declare-fun e!2016652 () Bool)

(declare-fun e!2016662 () Bool)

(assert (=> b!3233606 (= e!2016652 e!2016662)))

(declare-fun res!1316731 () Bool)

(assert (=> b!3233606 (=> res!1316731 e!2016662)))

(declare-fun lt!1097376 () List!36521)

(declare-fun lt!1097378 () List!36521)

(assert (=> b!3233606 (= res!1316731 (or (not (= lt!1097378 lt!1097381)) (not (= lt!1097376 lt!1097381))))))

(assert (=> b!3233606 (= lt!1097381 (list!12997 (charsOf!3290 (h!41818 tokens!494))))))

(declare-fun e!2016647 () Bool)

(assert (=> b!3233607 (= e!2016647 (and tp!1019000 tp!1018988))))

(declare-fun b!3233608 () Bool)

(declare-fun e!2016656 () Bool)

(assert (=> b!3233608 (= e!2016656 e!2016654)))

(declare-fun res!1316743 () Bool)

(assert (=> b!3233608 (=> (not res!1316743) (not e!2016654))))

(declare-fun matchR!4655 (Regex!10033 List!36521) Bool)

(assert (=> b!3233608 (= res!1316743 (matchR!4655 (regex!5274 lt!1097360) lt!1097361))))

(declare-datatypes ((Option!7232 0))(
  ( (None!7231) (Some!7231 (v!35859 Rule!10348)) )
))
(declare-fun lt!1097371 () Option!7232)

(declare-fun get!11595 (Option!7232) Rule!10348)

(assert (=> b!3233608 (= lt!1097360 (get!11595 lt!1097371))))

(declare-fun b!3233609 () Bool)

(declare-fun e!2016637 () Bool)

(declare-fun e!2016640 () Bool)

(declare-fun tp!1018995 () Bool)

(assert (=> b!3233609 (= e!2016637 (and e!2016640 tp!1018995))))

(declare-fun b!3233610 () Bool)

(assert (=> b!3233610 (= e!2016657 e!2016653)))

(declare-fun res!1316734 () Bool)

(assert (=> b!3233610 (=> res!1316734 e!2016653)))

(declare-fun lt!1097366 () Bool)

(assert (=> b!3233610 (= res!1316734 lt!1097366)))

(declare-fun lt!1097365 () Unit!50996)

(declare-fun e!2016663 () Unit!50996)

(assert (=> b!3233610 (= lt!1097365 e!2016663)))

(declare-fun c!543445 () Bool)

(assert (=> b!3233610 (= c!543445 lt!1097366)))

(assert (=> b!3233610 (= lt!1097366 (not (contains!6541 (usedCharacters!576 (regex!5274 (rule!7736 separatorToken!241))) lt!1097364)))))

(declare-fun head!7097 (List!36521) C!20252)

(assert (=> b!3233610 (= lt!1097364 (head!7097 lt!1097361))))

(declare-fun lt!1097386 () BalanceConc!21460)

(declare-fun maxPrefixOneRule!1628 (LexerInterface!4863 Rule!10348 List!36521) Option!7231)

(declare-fun apply!8318 (TokenValueInjection!10436 BalanceConc!21460) TokenValue!5504)

(declare-fun size!27455 (List!36521) Int)

(assert (=> b!3233610 (= (maxPrefixOneRule!1628 thiss!18206 (rule!7736 (h!41818 tokens!494)) lt!1097381) (Some!7230 (tuple2!35835 (Token!9915 (apply!8318 (transformation!5274 (rule!7736 (h!41818 tokens!494))) lt!1097386) (rule!7736 (h!41818 tokens!494)) (size!27455 lt!1097381) lt!1097381) Nil!36397)))))

(declare-fun lt!1097369 () Unit!50996)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!739 (LexerInterface!4863 List!36523 List!36521 List!36521 List!36521 Rule!10348) Unit!50996)

(assert (=> b!3233610 (= lt!1097369 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!739 thiss!18206 rules!2135 lt!1097381 lt!1097381 Nil!36397 (rule!7736 (h!41818 tokens!494))))))

(assert (=> b!3233610 e!2016656))

(declare-fun res!1316740 () Bool)

(assert (=> b!3233610 (=> (not res!1316740) (not e!2016656))))

(declare-fun isDefined!5604 (Option!7232) Bool)

(assert (=> b!3233610 (= res!1316740 (isDefined!5604 lt!1097371))))

(declare-fun getRuleFromTag!965 (LexerInterface!4863 List!36523 String!40854) Option!7232)

(assert (=> b!3233610 (= lt!1097371 (getRuleFromTag!965 thiss!18206 rules!2135 (tag!5808 (rule!7736 separatorToken!241))))))

(declare-fun lt!1097383 () Unit!50996)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!965 (LexerInterface!4863 List!36523 List!36521 Token!9914) Unit!50996)

(assert (=> b!3233610 (= lt!1097383 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!965 thiss!18206 rules!2135 lt!1097361 separatorToken!241))))

(declare-fun e!2016650 () Bool)

(assert (=> b!3233610 e!2016650))

(declare-fun res!1316745 () Bool)

(assert (=> b!3233610 (=> (not res!1316745) (not e!2016650))))

(declare-fun lt!1097363 () Option!7232)

(assert (=> b!3233610 (= res!1316745 (isDefined!5604 lt!1097363))))

(assert (=> b!3233610 (= lt!1097363 (getRuleFromTag!965 thiss!18206 rules!2135 (tag!5808 (rule!7736 (h!41818 tokens!494)))))))

(declare-fun lt!1097382 () Unit!50996)

(assert (=> b!3233610 (= lt!1097382 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!965 thiss!18206 rules!2135 lt!1097381 (h!41818 tokens!494)))))

(declare-fun lt!1097375 () Unit!50996)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!888 (LexerInterface!4863 List!36523 List!36522 Token!9914) Unit!50996)

(assert (=> b!3233610 (= lt!1097375 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!888 thiss!18206 rules!2135 tokens!494 (h!41818 tokens!494)))))

(declare-fun isEmpty!20491 (List!36521) Bool)

(declare-fun getSuffix!1398 (List!36521 List!36521) List!36521)

(assert (=> b!3233610 (isEmpty!20491 (getSuffix!1398 lt!1097381 lt!1097381))))

(declare-fun lt!1097362 () Unit!50996)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!62 (List!36521) Unit!50996)

(assert (=> b!3233610 (= lt!1097362 (lemmaGetSuffixOnListWithItSelfIsEmpty!62 lt!1097381))))

(declare-fun b!3233612 () Bool)

(declare-fun res!1316738 () Bool)

(declare-fun e!2016658 () Bool)

(assert (=> b!3233612 (=> (not res!1316738) (not e!2016658))))

(declare-fun rulesProduceIndividualToken!2355 (LexerInterface!4863 List!36523 Token!9914) Bool)

(assert (=> b!3233612 (= res!1316738 (rulesProduceIndividualToken!2355 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3233613 () Bool)

(declare-fun e!2016651 () Bool)

(assert (=> b!3233613 (= e!2016650 e!2016651)))

(declare-fun res!1316732 () Bool)

(assert (=> b!3233613 (=> (not res!1316732) (not e!2016651))))

(declare-fun lt!1097367 () Rule!10348)

(assert (=> b!3233613 (= res!1316732 (matchR!4655 (regex!5274 lt!1097367) lt!1097381))))

(assert (=> b!3233613 (= lt!1097367 (get!11595 lt!1097363))))

(declare-fun b!3233614 () Bool)

(declare-fun res!1316727 () Bool)

(assert (=> b!3233614 (=> (not res!1316727) (not e!2016658))))

(assert (=> b!3233614 (= res!1316727 (and (not ((_ is Nil!36398) tokens!494)) ((_ is Nil!36398) (t!241969 tokens!494))))))

(declare-fun tp!1018992 () Bool)

(declare-fun b!3233615 () Bool)

(assert (=> b!3233615 (= e!2016640 (and tp!1018992 (inv!49292 (tag!5808 (h!41819 rules!2135))) (inv!49295 (transformation!5274 (h!41819 rules!2135))) e!2016647))))

(declare-fun b!3233616 () Bool)

(declare-fun e!2016648 () Bool)

(assert (=> b!3233616 (= e!2016648 e!2016658)))

(declare-fun res!1316730 () Bool)

(assert (=> b!3233616 (=> (not res!1316730) (not e!2016658))))

(declare-fun rulesProduceEachTokenIndividually!1314 (LexerInterface!4863 List!36523 BalanceConc!21462) Bool)

(assert (=> b!3233616 (= res!1316730 (rulesProduceEachTokenIndividually!1314 thiss!18206 rules!2135 lt!1097368))))

(declare-fun seqFromList!3611 (List!36522) BalanceConc!21462)

(assert (=> b!3233616 (= lt!1097368 (seqFromList!3611 tokens!494))))

(declare-fun tp!1018989 () Bool)

(declare-fun e!2016644 () Bool)

(declare-fun b!3233617 () Bool)

(declare-fun e!2016660 () Bool)

(declare-fun inv!49296 (Token!9914) Bool)

(assert (=> b!3233617 (= e!2016660 (and (inv!49296 (h!41818 tokens!494)) e!2016644 tp!1018989))))

(declare-fun e!2016643 () Bool)

(assert (=> b!3233618 (= e!2016643 (and tp!1018993 tp!1018999))))

(declare-fun b!3233619 () Bool)

(declare-fun e!2016659 () Bool)

(assert (=> b!3233619 (= e!2016659 e!2016655)))

(declare-fun res!1316726 () Bool)

(assert (=> b!3233619 (=> res!1316726 e!2016655)))

(assert (=> b!3233619 (= res!1316726 (isSeparator!5274 (rule!7736 (h!41818 tokens!494))))))

(declare-fun lt!1097374 () Unit!50996)

(declare-fun lambda!118325 () Int)

(declare-fun forallContained!1235 (List!36522 Int Token!9914) Unit!50996)

(assert (=> b!3233619 (= lt!1097374 (forallContained!1235 tokens!494 lambda!118325 (h!41818 tokens!494)))))

(declare-fun b!3233620 () Bool)

(declare-fun res!1316744 () Bool)

(assert (=> b!3233620 (=> (not res!1316744) (not e!2016648))))

(declare-fun isEmpty!20492 (List!36523) Bool)

(assert (=> b!3233620 (= res!1316744 (not (isEmpty!20492 rules!2135)))))

(declare-fun e!2016645 () Bool)

(declare-fun tp!1018990 () Bool)

(declare-fun b!3233621 () Bool)

(assert (=> b!3233621 (= e!2016645 (and tp!1018990 (inv!49292 (tag!5808 (rule!7736 separatorToken!241))) (inv!49295 (transformation!5274 (rule!7736 separatorToken!241))) e!2016643))))

(declare-fun tp!1018998 () Bool)

(declare-fun b!3233622 () Bool)

(declare-fun inv!21 (TokenValue!5504) Bool)

(assert (=> b!3233622 (= e!2016644 (and (inv!21 (value!170769 (h!41818 tokens!494))) e!2016636 tp!1018998))))

(declare-fun b!3233623 () Bool)

(declare-fun Unit!50998 () Unit!50996)

(assert (=> b!3233623 (= e!2016663 Unit!50998)))

(declare-fun lt!1097372 () Unit!50996)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!422 (Regex!10033 List!36521 C!20252) Unit!50996)

(assert (=> b!3233623 (= lt!1097372 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!422 (regex!5274 (rule!7736 separatorToken!241)) lt!1097361 lt!1097364))))

(declare-fun res!1316742 () Bool)

(assert (=> b!3233623 (= res!1316742 (not (matchR!4655 (regex!5274 (rule!7736 separatorToken!241)) lt!1097361)))))

(declare-fun e!2016664 () Bool)

(assert (=> b!3233623 (=> (not res!1316742) (not e!2016664))))

(assert (=> b!3233623 e!2016664))

(declare-fun b!3233624 () Bool)

(assert (=> b!3233624 (= e!2016638 (= (_1!21051 (v!35858 lt!1097385)) (h!41818 tokens!494)))))

(assert (=> b!3233625 (= e!2016646 (and tp!1018994 tp!1018997))))

(declare-fun b!3233626 () Bool)

(declare-fun res!1316735 () Bool)

(assert (=> b!3233626 (=> (not res!1316735) (not e!2016658))))

(declare-fun forall!7490 (List!36522 Int) Bool)

(assert (=> b!3233626 (= res!1316735 (forall!7490 tokens!494 lambda!118325))))

(declare-fun b!3233627 () Bool)

(assert (=> b!3233627 (= e!2016651 (= (rule!7736 (h!41818 tokens!494)) lt!1097367))))

(declare-fun b!3233628 () Bool)

(declare-fun res!1316737 () Bool)

(assert (=> b!3233628 (=> res!1316737 e!2016638)))

(declare-fun get!11596 (Option!7231) tuple2!35834)

(assert (=> b!3233628 (= res!1316737 (not (= (_2!21051 (v!35858 lt!1097385)) (_2!21051 (get!11596 lt!1097385)))))))

(declare-fun b!3233629 () Bool)

(assert (=> b!3233629 (= e!2016658 (not e!2016652))))

(declare-fun res!1316728 () Bool)

(assert (=> b!3233629 (=> res!1316728 e!2016652)))

(assert (=> b!3233629 (= res!1316728 (not (= lt!1097376 lt!1097378)))))

(declare-fun printList!1413 (LexerInterface!4863 List!36522) List!36521)

(assert (=> b!3233629 (= lt!1097378 (printList!1413 thiss!18206 (Cons!36398 (h!41818 tokens!494) Nil!36398)))))

(declare-fun lt!1097377 () BalanceConc!21460)

(assert (=> b!3233629 (= lt!1097376 (list!12997 lt!1097377))))

(declare-fun lt!1097380 () BalanceConc!21462)

(declare-fun printTailRec!1360 (LexerInterface!4863 BalanceConc!21462 Int BalanceConc!21460) BalanceConc!21460)

(assert (=> b!3233629 (= lt!1097377 (printTailRec!1360 thiss!18206 lt!1097380 0 (BalanceConc!21461 Empty!10923)))))

(declare-fun print!1928 (LexerInterface!4863 BalanceConc!21462) BalanceConc!21460)

(assert (=> b!3233629 (= lt!1097377 (print!1928 thiss!18206 lt!1097380))))

(declare-fun singletonSeq!2370 (Token!9914) BalanceConc!21462)

(assert (=> b!3233629 (= lt!1097380 (singletonSeq!2370 (h!41818 tokens!494)))))

(declare-fun b!3233630 () Bool)

(assert (=> b!3233630 (= e!2016662 e!2016659)))

(declare-fun res!1316729 () Bool)

(assert (=> b!3233630 (=> res!1316729 e!2016659)))

(declare-fun isEmpty!20493 (BalanceConc!21462) Bool)

(declare-datatypes ((tuple2!35836 0))(
  ( (tuple2!35837 (_1!21052 BalanceConc!21462) (_2!21052 BalanceConc!21460)) )
))
(declare-fun lex!2191 (LexerInterface!4863 List!36523 BalanceConc!21460) tuple2!35836)

(assert (=> b!3233630 (= res!1316729 (isEmpty!20493 (_1!21052 (lex!2191 thiss!18206 rules!2135 lt!1097386))))))

(declare-fun seqFromList!3612 (List!36521) BalanceConc!21460)

(assert (=> b!3233630 (= lt!1097386 (seqFromList!3612 lt!1097381))))

(declare-fun b!3233631 () Bool)

(declare-fun res!1316724 () Bool)

(assert (=> b!3233631 (=> (not res!1316724) (not e!2016658))))

(assert (=> b!3233631 (= res!1316724 (isSeparator!5274 (rule!7736 separatorToken!241)))))

(declare-fun b!3233632 () Bool)

(declare-fun res!1316733 () Bool)

(assert (=> b!3233632 (=> (not res!1316733) (not e!2016658))))

(declare-fun sepAndNonSepRulesDisjointChars!1468 (List!36523 List!36523) Bool)

(assert (=> b!3233632 (= res!1316733 (sepAndNonSepRulesDisjointChars!1468 rules!2135 rules!2135))))

(declare-fun b!3233633 () Bool)

(declare-fun Unit!50999 () Unit!50996)

(assert (=> b!3233633 (= e!2016663 Unit!50999)))

(declare-fun b!3233634 () Bool)

(assert (=> b!3233634 (= e!2016664 false)))

(declare-fun tp!1018996 () Bool)

(declare-fun e!2016649 () Bool)

(declare-fun b!3233635 () Bool)

(assert (=> b!3233635 (= e!2016649 (and (inv!21 (value!170769 separatorToken!241)) e!2016645 tp!1018996))))

(declare-fun b!3233636 () Bool)

(declare-fun res!1316723 () Bool)

(assert (=> b!3233636 (=> res!1316723 e!2016662)))

(assert (=> b!3233636 (= res!1316723 (not (rulesProduceIndividualToken!2355 thiss!18206 rules!2135 (h!41818 tokens!494))))))

(declare-fun b!3233611 () Bool)

(declare-fun res!1316736 () Bool)

(assert (=> b!3233611 (=> (not res!1316736) (not e!2016648))))

(declare-fun rulesInvariant!4260 (LexerInterface!4863 List!36523) Bool)

(assert (=> b!3233611 (= res!1316736 (rulesInvariant!4260 thiss!18206 rules!2135))))

(declare-fun res!1316725 () Bool)

(assert (=> start!304090 (=> (not res!1316725) (not e!2016648))))

(assert (=> start!304090 (= res!1316725 ((_ is Lexer!4861) thiss!18206))))

(assert (=> start!304090 e!2016648))

(assert (=> start!304090 true))

(assert (=> start!304090 e!2016637))

(assert (=> start!304090 (and (inv!49296 separatorToken!241) e!2016649)))

(assert (=> start!304090 e!2016660))

(assert (= (and start!304090 res!1316725) b!3233620))

(assert (= (and b!3233620 res!1316744) b!3233611))

(assert (= (and b!3233611 res!1316736) b!3233616))

(assert (= (and b!3233616 res!1316730) b!3233612))

(assert (= (and b!3233612 res!1316738) b!3233631))

(assert (= (and b!3233631 res!1316724) b!3233626))

(assert (= (and b!3233626 res!1316735) b!3233632))

(assert (= (and b!3233632 res!1316733) b!3233614))

(assert (= (and b!3233614 res!1316727) b!3233629))

(assert (= (and b!3233629 (not res!1316728)) b!3233606))

(assert (= (and b!3233606 (not res!1316731)) b!3233636))

(assert (= (and b!3233636 (not res!1316723)) b!3233630))

(assert (= (and b!3233630 (not res!1316729)) b!3233619))

(assert (= (and b!3233619 (not res!1316726)) b!3233604))

(assert (= (and b!3233604 (not res!1316741)) b!3233610))

(assert (= (and b!3233610 res!1316745) b!3233613))

(assert (= (and b!3233613 res!1316732) b!3233627))

(assert (= (and b!3233610 res!1316740) b!3233608))

(assert (= (and b!3233608 res!1316743) b!3233602))

(assert (= (and b!3233610 c!543445) b!3233623))

(assert (= (and b!3233610 (not c!543445)) b!3233633))

(assert (= (and b!3233623 res!1316742) b!3233634))

(assert (= (and b!3233610 (not res!1316734)) b!3233605))

(assert (= (and b!3233605 (not res!1316739)) b!3233628))

(assert (= (and b!3233628 (not res!1316737)) b!3233624))

(assert (= b!3233615 b!3233607))

(assert (= b!3233609 b!3233615))

(assert (= (and start!304090 ((_ is Cons!36399) rules!2135)) b!3233609))

(assert (= b!3233621 b!3233618))

(assert (= b!3233635 b!3233621))

(assert (= start!304090 b!3233635))

(assert (= b!3233603 b!3233625))

(assert (= b!3233622 b!3233603))

(assert (= b!3233617 b!3233622))

(assert (= (and start!304090 ((_ is Cons!36398) tokens!494)) b!3233617))

(declare-fun m!3515447 () Bool)

(assert (=> b!3233629 m!3515447))

(declare-fun m!3515449 () Bool)

(assert (=> b!3233629 m!3515449))

(declare-fun m!3515451 () Bool)

(assert (=> b!3233629 m!3515451))

(declare-fun m!3515453 () Bool)

(assert (=> b!3233629 m!3515453))

(declare-fun m!3515455 () Bool)

(assert (=> b!3233629 m!3515455))

(declare-fun m!3515457 () Bool)

(assert (=> b!3233630 m!3515457))

(declare-fun m!3515459 () Bool)

(assert (=> b!3233630 m!3515459))

(declare-fun m!3515461 () Bool)

(assert (=> b!3233630 m!3515461))

(declare-fun m!3515463 () Bool)

(assert (=> b!3233621 m!3515463))

(declare-fun m!3515465 () Bool)

(assert (=> b!3233621 m!3515465))

(declare-fun m!3515467 () Bool)

(assert (=> b!3233604 m!3515467))

(declare-fun m!3515469 () Bool)

(assert (=> b!3233604 m!3515469))

(assert (=> b!3233604 m!3515467))

(declare-fun m!3515471 () Bool)

(assert (=> b!3233604 m!3515471))

(declare-fun m!3515473 () Bool)

(assert (=> b!3233604 m!3515473))

(declare-fun m!3515475 () Bool)

(assert (=> b!3233604 m!3515475))

(declare-fun m!3515477 () Bool)

(assert (=> start!304090 m!3515477))

(declare-fun m!3515479 () Bool)

(assert (=> b!3233636 m!3515479))

(declare-fun m!3515481 () Bool)

(assert (=> b!3233603 m!3515481))

(declare-fun m!3515483 () Bool)

(assert (=> b!3233603 m!3515483))

(declare-fun m!3515485 () Bool)

(assert (=> b!3233622 m!3515485))

(declare-fun m!3515487 () Bool)

(assert (=> b!3233608 m!3515487))

(declare-fun m!3515489 () Bool)

(assert (=> b!3233608 m!3515489))

(declare-fun m!3515491 () Bool)

(assert (=> b!3233612 m!3515491))

(declare-fun m!3515493 () Bool)

(assert (=> b!3233617 m!3515493))

(declare-fun m!3515495 () Bool)

(assert (=> b!3233623 m!3515495))

(declare-fun m!3515497 () Bool)

(assert (=> b!3233623 m!3515497))

(declare-fun m!3515499 () Bool)

(assert (=> b!3233611 m!3515499))

(declare-fun m!3515501 () Bool)

(assert (=> b!3233628 m!3515501))

(declare-fun m!3515503 () Bool)

(assert (=> b!3233635 m!3515503))

(declare-fun m!3515505 () Bool)

(assert (=> b!3233626 m!3515505))

(declare-fun m!3515507 () Bool)

(assert (=> b!3233616 m!3515507))

(declare-fun m!3515509 () Bool)

(assert (=> b!3233616 m!3515509))

(declare-fun m!3515511 () Bool)

(assert (=> b!3233619 m!3515511))

(declare-fun m!3515513 () Bool)

(assert (=> b!3233620 m!3515513))

(declare-fun m!3515515 () Bool)

(assert (=> b!3233606 m!3515515))

(assert (=> b!3233606 m!3515515))

(declare-fun m!3515517 () Bool)

(assert (=> b!3233606 m!3515517))

(declare-fun m!3515519 () Bool)

(assert (=> b!3233605 m!3515519))

(declare-fun m!3515521 () Bool)

(assert (=> b!3233605 m!3515521))

(declare-fun m!3515523 () Bool)

(assert (=> b!3233605 m!3515523))

(declare-fun m!3515525 () Bool)

(assert (=> b!3233605 m!3515525))

(declare-fun m!3515527 () Bool)

(assert (=> b!3233605 m!3515527))

(assert (=> b!3233605 m!3515523))

(declare-fun m!3515529 () Bool)

(assert (=> b!3233605 m!3515529))

(declare-fun m!3515531 () Bool)

(assert (=> b!3233632 m!3515531))

(declare-fun m!3515533 () Bool)

(assert (=> b!3233613 m!3515533))

(declare-fun m!3515535 () Bool)

(assert (=> b!3233613 m!3515535))

(declare-fun m!3515537 () Bool)

(assert (=> b!3233610 m!3515537))

(declare-fun m!3515539 () Bool)

(assert (=> b!3233610 m!3515539))

(declare-fun m!3515541 () Bool)

(assert (=> b!3233610 m!3515541))

(declare-fun m!3515543 () Bool)

(assert (=> b!3233610 m!3515543))

(declare-fun m!3515545 () Bool)

(assert (=> b!3233610 m!3515545))

(declare-fun m!3515547 () Bool)

(assert (=> b!3233610 m!3515547))

(declare-fun m!3515549 () Bool)

(assert (=> b!3233610 m!3515549))

(declare-fun m!3515551 () Bool)

(assert (=> b!3233610 m!3515551))

(declare-fun m!3515553 () Bool)

(assert (=> b!3233610 m!3515553))

(declare-fun m!3515555 () Bool)

(assert (=> b!3233610 m!3515555))

(declare-fun m!3515557 () Bool)

(assert (=> b!3233610 m!3515557))

(declare-fun m!3515559 () Bool)

(assert (=> b!3233610 m!3515559))

(declare-fun m!3515561 () Bool)

(assert (=> b!3233610 m!3515561))

(assert (=> b!3233610 m!3515541))

(declare-fun m!3515563 () Bool)

(assert (=> b!3233610 m!3515563))

(assert (=> b!3233610 m!3515545))

(declare-fun m!3515565 () Bool)

(assert (=> b!3233610 m!3515565))

(declare-fun m!3515567 () Bool)

(assert (=> b!3233610 m!3515567))

(declare-fun m!3515569 () Bool)

(assert (=> b!3233610 m!3515569))

(declare-fun m!3515571 () Bool)

(assert (=> b!3233615 m!3515571))

(declare-fun m!3515573 () Bool)

(assert (=> b!3233615 m!3515573))

(check-sat (not b!3233617) (not b!3233626) b_and!216731 b_and!216741 (not b!3233619) b_and!216739 (not b_next!86999) (not b!3233622) (not b_next!86995) (not b!3233612) b_and!216737 (not b_next!86997) (not b!3233630) (not b!3233635) (not b!3233611) (not b_next!86993) (not b!3233613) (not b!3233603) (not b!3233632) (not b!3233629) (not start!304090) (not b!3233621) (not b!3233636) b_and!216735 (not b!3233604) (not b!3233623) b_and!216733 (not b!3233628) (not b!3233620) (not b!3233610) (not b_next!87003) (not b!3233608) (not b!3233616) (not b!3233606) (not b!3233609) (not b_next!87001) (not b!3233615) (not b!3233605))
(check-sat b_and!216731 b_and!216741 b_and!216735 b_and!216739 b_and!216733 (not b_next!87003) (not b_next!86999) (not b_next!86995) (not b_next!87001) b_and!216737 (not b_next!86997) (not b_next!86993))
