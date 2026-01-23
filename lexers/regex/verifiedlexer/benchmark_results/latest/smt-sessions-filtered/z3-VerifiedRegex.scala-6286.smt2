; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!314050 () Bool)

(assert start!314050)

(declare-fun b!3374628 () Bool)

(declare-fun b_free!88153 () Bool)

(declare-fun b_next!88857 () Bool)

(assert (=> b!3374628 (= b_free!88153 (not b_next!88857))))

(declare-fun tp!1055512 () Bool)

(declare-fun b_and!234207 () Bool)

(assert (=> b!3374628 (= tp!1055512 b_and!234207)))

(declare-fun b_free!88155 () Bool)

(declare-fun b_next!88859 () Bool)

(assert (=> b!3374628 (= b_free!88155 (not b_next!88859))))

(declare-fun tp!1055521 () Bool)

(declare-fun b_and!234209 () Bool)

(assert (=> b!3374628 (= tp!1055521 b_and!234209)))

(declare-fun b!3374630 () Bool)

(declare-fun b_free!88157 () Bool)

(declare-fun b_next!88861 () Bool)

(assert (=> b!3374630 (= b_free!88157 (not b_next!88861))))

(declare-fun tp!1055519 () Bool)

(declare-fun b_and!234211 () Bool)

(assert (=> b!3374630 (= tp!1055519 b_and!234211)))

(declare-fun b_free!88159 () Bool)

(declare-fun b_next!88863 () Bool)

(assert (=> b!3374630 (= b_free!88159 (not b_next!88863))))

(declare-fun tp!1055518 () Bool)

(declare-fun b_and!234213 () Bool)

(assert (=> b!3374630 (= tp!1055518 b_and!234213)))

(declare-fun b!3374653 () Bool)

(declare-fun b_free!88161 () Bool)

(declare-fun b_next!88865 () Bool)

(assert (=> b!3374653 (= b_free!88161 (not b_next!88865))))

(declare-fun tp!1055516 () Bool)

(declare-fun b_and!234215 () Bool)

(assert (=> b!3374653 (= tp!1055516 b_and!234215)))

(declare-fun b_free!88163 () Bool)

(declare-fun b_next!88867 () Bool)

(assert (=> b!3374653 (= b_free!88163 (not b_next!88867))))

(declare-fun tp!1055517 () Bool)

(declare-fun b_and!234217 () Bool)

(assert (=> b!3374653 (= tp!1055517 b_and!234217)))

(declare-fun e!2094326 () Bool)

(assert (=> b!3374628 (= e!2094326 (and tp!1055512 tp!1055521))))

(declare-fun b!3374629 () Bool)

(declare-fun e!2094310 () Bool)

(declare-fun e!2094313 () Bool)

(assert (=> b!3374629 (= e!2094310 (not e!2094313))))

(declare-fun res!1364555 () Bool)

(assert (=> b!3374629 (=> res!1364555 e!2094313)))

(declare-datatypes ((C!20408 0))(
  ( (C!20409 (val!12252 Int)) )
))
(declare-datatypes ((List!36888 0))(
  ( (Nil!36764) (Cons!36764 (h!42184 C!20408) (t!262607 List!36888)) )
))
(declare-fun lt!1145278 () List!36888)

(declare-fun lt!1145267 () List!36888)

(assert (=> b!3374629 (= res!1364555 (not (= lt!1145278 lt!1145267)))))

(declare-datatypes ((LexerInterface!4941 0))(
  ( (LexerInterfaceExt!4938 (__x!23381 Int)) (Lexer!4939) )
))
(declare-fun thiss!18206 () LexerInterface!4941)

(declare-datatypes ((Regex!10111 0))(
  ( (ElementMatch!10111 (c!574754 C!20408)) (Concat!15693 (regOne!20734 Regex!10111) (regTwo!20734 Regex!10111)) (EmptyExpr!10111) (Star!10111 (reg!10440 Regex!10111)) (EmptyLang!10111) (Union!10111 (regOne!20735 Regex!10111) (regTwo!20735 Regex!10111)) )
))
(declare-datatypes ((List!36889 0))(
  ( (Nil!36765) (Cons!36765 (h!42185 (_ BitVec 16)) (t!262608 List!36889)) )
))
(declare-datatypes ((TokenValue!5582 0))(
  ( (FloatLiteralValue!11164 (text!39519 List!36889)) (TokenValueExt!5581 (__x!23382 Int)) (Broken!27910 (value!172966 List!36889)) (Object!5705) (End!5582) (Def!5582) (Underscore!5582) (Match!5582) (Else!5582) (Error!5582) (Case!5582) (If!5582) (Extends!5582) (Abstract!5582) (Class!5582) (Val!5582) (DelimiterValue!11164 (del!5642 List!36889)) (KeywordValue!5588 (value!172967 List!36889)) (CommentValue!11164 (value!172968 List!36889)) (WhitespaceValue!11164 (value!172969 List!36889)) (IndentationValue!5582 (value!172970 List!36889)) (String!41243) (Int32!5582) (Broken!27911 (value!172971 List!36889)) (Boolean!5583) (Unit!51875) (OperatorValue!5585 (op!5642 List!36889)) (IdentifierValue!11164 (value!172972 List!36889)) (IdentifierValue!11165 (value!172973 List!36889)) (WhitespaceValue!11165 (value!172974 List!36889)) (True!11164) (False!11164) (Broken!27912 (value!172975 List!36889)) (Broken!27913 (value!172976 List!36889)) (True!11165) (RightBrace!5582) (RightBracket!5582) (Colon!5582) (Null!5582) (Comma!5582) (LeftBracket!5582) (False!11165) (LeftBrace!5582) (ImaginaryLiteralValue!5582 (text!39520 List!36889)) (StringLiteralValue!16746 (value!172977 List!36889)) (EOFValue!5582 (value!172978 List!36889)) (IdentValue!5582 (value!172979 List!36889)) (DelimiterValue!11165 (value!172980 List!36889)) (DedentValue!5582 (value!172981 List!36889)) (NewLineValue!5582 (value!172982 List!36889)) (IntegerValue!16746 (value!172983 (_ BitVec 32)) (text!39521 List!36889)) (IntegerValue!16747 (value!172984 Int) (text!39522 List!36889)) (Times!5582) (Or!5582) (Equal!5582) (Minus!5582) (Broken!27914 (value!172985 List!36889)) (And!5582) (Div!5582) (LessEqual!5582) (Mod!5582) (Concat!15694) (Not!5582) (Plus!5582) (SpaceValue!5582 (value!172986 List!36889)) (IntegerValue!16748 (value!172987 Int) (text!39523 List!36889)) (StringLiteralValue!16747 (text!39524 List!36889)) (FloatLiteralValue!11165 (text!39525 List!36889)) (BytesLiteralValue!5582 (value!172988 List!36889)) (CommentValue!11165 (value!172989 List!36889)) (StringLiteralValue!16748 (value!172990 List!36889)) (ErrorTokenValue!5582 (msg!5643 List!36889)) )
))
(declare-datatypes ((IArray!22163 0))(
  ( (IArray!22164 (innerList!11139 List!36888)) )
))
(declare-datatypes ((Conc!11079 0))(
  ( (Node!11079 (left!28661 Conc!11079) (right!28991 Conc!11079) (csize!22388 Int) (cheight!11290 Int)) (Leaf!17366 (xs!14233 IArray!22163) (csize!22389 Int)) (Empty!11079) )
))
(declare-datatypes ((BalanceConc!21772 0))(
  ( (BalanceConc!21773 (c!574755 Conc!11079)) )
))
(declare-datatypes ((String!41244 0))(
  ( (String!41245 (value!172991 String)) )
))
(declare-datatypes ((TokenValueInjection!10592 0))(
  ( (TokenValueInjection!10593 (toValue!7536 Int) (toChars!7395 Int)) )
))
(declare-datatypes ((Rule!10504 0))(
  ( (Rule!10505 (regex!5352 Regex!10111) (tag!5916 String!41244) (isSeparator!5352 Bool) (transformation!5352 TokenValueInjection!10592)) )
))
(declare-datatypes ((Token!10070 0))(
  ( (Token!10071 (value!172992 TokenValue!5582) (rule!7892 Rule!10504) (size!27826 Int) (originalCharacters!6066 List!36888)) )
))
(declare-datatypes ((List!36890 0))(
  ( (Nil!36766) (Cons!36766 (h!42186 Token!10070) (t!262609 List!36890)) )
))
(declare-fun tokens!494 () List!36890)

(declare-fun printList!1489 (LexerInterface!4941 List!36890) List!36888)

(assert (=> b!3374629 (= lt!1145267 (printList!1489 thiss!18206 (Cons!36766 (h!42186 tokens!494) Nil!36766)))))

(declare-fun lt!1145284 () BalanceConc!21772)

(declare-fun list!13285 (BalanceConc!21772) List!36888)

(assert (=> b!3374629 (= lt!1145278 (list!13285 lt!1145284))))

(declare-datatypes ((IArray!22165 0))(
  ( (IArray!22166 (innerList!11140 List!36890)) )
))
(declare-datatypes ((Conc!11080 0))(
  ( (Node!11080 (left!28662 Conc!11080) (right!28992 Conc!11080) (csize!22390 Int) (cheight!11291 Int)) (Leaf!17367 (xs!14234 IArray!22165) (csize!22391 Int)) (Empty!11080) )
))
(declare-datatypes ((BalanceConc!21774 0))(
  ( (BalanceConc!21775 (c!574756 Conc!11080)) )
))
(declare-fun lt!1145271 () BalanceConc!21774)

(declare-fun printTailRec!1436 (LexerInterface!4941 BalanceConc!21774 Int BalanceConc!21772) BalanceConc!21772)

(assert (=> b!3374629 (= lt!1145284 (printTailRec!1436 thiss!18206 lt!1145271 0 (BalanceConc!21773 Empty!11079)))))

(declare-fun print!2006 (LexerInterface!4941 BalanceConc!21774) BalanceConc!21772)

(assert (=> b!3374629 (= lt!1145284 (print!2006 thiss!18206 lt!1145271))))

(declare-fun singletonSeq!2448 (Token!10070) BalanceConc!21774)

(assert (=> b!3374629 (= lt!1145271 (singletonSeq!2448 (h!42186 tokens!494)))))

(declare-fun e!2094307 () Bool)

(assert (=> b!3374630 (= e!2094307 (and tp!1055519 tp!1055518))))

(declare-fun b!3374631 () Bool)

(declare-fun e!2094315 () Bool)

(declare-fun e!2094330 () Bool)

(assert (=> b!3374631 (= e!2094315 e!2094330)))

(declare-fun res!1364562 () Bool)

(assert (=> b!3374631 (=> res!1364562 e!2094330)))

(declare-fun lt!1145285 () List!36888)

(declare-fun lt!1145277 () List!36888)

(declare-fun lt!1145279 () BalanceConc!21772)

(declare-fun ++!8975 (List!36888 List!36888) List!36888)

(assert (=> b!3374631 (= res!1364562 (not (= (list!13285 lt!1145279) (++!8975 lt!1145285 lt!1145277))))))

(declare-fun separatorToken!241 () Token!10070)

(declare-fun charsOf!3366 (Token!10070) BalanceConc!21772)

(assert (=> b!3374631 (= lt!1145277 (list!13285 (charsOf!3366 separatorToken!241)))))

(declare-fun lt!1145281 () BalanceConc!21774)

(declare-fun printWithSeparatorToken!132 (LexerInterface!4941 BalanceConc!21774 Token!10070) BalanceConc!21772)

(assert (=> b!3374631 (= lt!1145279 (printWithSeparatorToken!132 thiss!18206 lt!1145281 separatorToken!241))))

(declare-fun b!3374632 () Bool)

(declare-fun e!2094324 () Bool)

(assert (=> b!3374632 (= e!2094324 e!2094310)))

(declare-fun res!1364569 () Bool)

(assert (=> b!3374632 (=> (not res!1364569) (not e!2094310))))

(declare-datatypes ((List!36891 0))(
  ( (Nil!36767) (Cons!36767 (h!42187 Rule!10504) (t!262610 List!36891)) )
))
(declare-fun rules!2135 () List!36891)

(declare-fun rulesProduceEachTokenIndividually!1392 (LexerInterface!4941 List!36891 BalanceConc!21774) Bool)

(assert (=> b!3374632 (= res!1364569 (rulesProduceEachTokenIndividually!1392 thiss!18206 rules!2135 lt!1145281))))

(declare-fun seqFromList!3757 (List!36890) BalanceConc!21774)

(assert (=> b!3374632 (= lt!1145281 (seqFromList!3757 tokens!494))))

(declare-fun e!2094312 () Bool)

(declare-fun tp!1055522 () Bool)

(declare-fun e!2094306 () Bool)

(declare-fun b!3374633 () Bool)

(declare-fun inv!21 (TokenValue!5582) Bool)

(assert (=> b!3374633 (= e!2094306 (and (inv!21 (value!172992 separatorToken!241)) e!2094312 tp!1055522))))

(declare-fun b!3374634 () Bool)

(declare-fun res!1364570 () Bool)

(assert (=> b!3374634 (=> (not res!1364570) (not e!2094324))))

(declare-fun isEmpty!20977 (List!36891) Bool)

(assert (=> b!3374634 (= res!1364570 (not (isEmpty!20977 rules!2135)))))

(declare-fun e!2094303 () Bool)

(declare-fun b!3374635 () Bool)

(declare-fun tp!1055520 () Bool)

(declare-fun e!2094316 () Bool)

(declare-fun inv!49831 (String!41244) Bool)

(declare-fun inv!49834 (TokenValueInjection!10592) Bool)

(assert (=> b!3374635 (= e!2094303 (and tp!1055520 (inv!49831 (tag!5916 (rule!7892 (h!42186 tokens!494)))) (inv!49834 (transformation!5352 (rule!7892 (h!42186 tokens!494)))) e!2094316))))

(declare-fun b!3374636 () Bool)

(declare-fun res!1364558 () Bool)

(assert (=> b!3374636 (=> (not res!1364558) (not e!2094310))))

(declare-fun lambda!120315 () Int)

(declare-fun forall!7723 (List!36890 Int) Bool)

(assert (=> b!3374636 (= res!1364558 (forall!7723 tokens!494 lambda!120315))))

(declare-fun b!3374637 () Bool)

(declare-fun e!2094320 () Bool)

(declare-fun e!2094322 () Bool)

(assert (=> b!3374637 (= e!2094320 e!2094322)))

(declare-fun res!1364577 () Bool)

(assert (=> b!3374637 (=> (not res!1364577) (not e!2094322))))

(declare-fun lt!1145274 () Rule!10504)

(declare-fun matchR!4703 (Regex!10111 List!36888) Bool)

(assert (=> b!3374637 (= res!1364577 (matchR!4703 (regex!5352 lt!1145274) lt!1145285))))

(declare-datatypes ((Option!7351 0))(
  ( (None!7350) (Some!7350 (v!36382 Rule!10504)) )
))
(declare-fun lt!1145280 () Option!7351)

(declare-fun get!11723 (Option!7351) Rule!10504)

(assert (=> b!3374637 (= lt!1145274 (get!11723 lt!1145280))))

(declare-fun e!2094311 () Bool)

(declare-fun b!3374638 () Bool)

(declare-fun tp!1055523 () Bool)

(assert (=> b!3374638 (= e!2094311 (and tp!1055523 (inv!49831 (tag!5916 (h!42187 rules!2135))) (inv!49834 (transformation!5352 (h!42187 rules!2135))) e!2094326))))

(declare-fun b!3374639 () Bool)

(declare-fun res!1364557 () Bool)

(assert (=> b!3374639 (=> (not res!1364557) (not e!2094310))))

(assert (=> b!3374639 (= res!1364557 (isSeparator!5352 (rule!7892 separatorToken!241)))))

(declare-fun res!1364572 () Bool)

(assert (=> start!314050 (=> (not res!1364572) (not e!2094324))))

(get-info :version)

(assert (=> start!314050 (= res!1364572 ((_ is Lexer!4939) thiss!18206))))

(assert (=> start!314050 e!2094324))

(assert (=> start!314050 true))

(declare-fun e!2094327 () Bool)

(assert (=> start!314050 e!2094327))

(declare-fun inv!49835 (Token!10070) Bool)

(assert (=> start!314050 (and (inv!49835 separatorToken!241) e!2094306)))

(declare-fun e!2094304 () Bool)

(assert (=> start!314050 e!2094304))

(declare-fun b!3374640 () Bool)

(declare-fun res!1364576 () Bool)

(assert (=> b!3374640 (=> (not res!1364576) (not e!2094310))))

(declare-fun sepAndNonSepRulesDisjointChars!1546 (List!36891 List!36891) Bool)

(assert (=> b!3374640 (= res!1364576 (sepAndNonSepRulesDisjointChars!1546 rules!2135 rules!2135))))

(declare-fun b!3374641 () Bool)

(declare-fun res!1364565 () Bool)

(declare-fun e!2094328 () Bool)

(assert (=> b!3374641 (=> res!1364565 e!2094328)))

(declare-fun rulesProduceIndividualToken!2433 (LexerInterface!4941 List!36891 Token!10070) Bool)

(assert (=> b!3374641 (= res!1364565 (not (rulesProduceIndividualToken!2433 thiss!18206 rules!2135 (h!42186 tokens!494))))))

(declare-fun b!3374642 () Bool)

(declare-fun res!1364563 () Bool)

(assert (=> b!3374642 (=> (not res!1364563) (not e!2094324))))

(declare-fun rulesInvariant!4338 (LexerInterface!4941 List!36891) Bool)

(assert (=> b!3374642 (= res!1364563 (rulesInvariant!4338 thiss!18206 rules!2135))))

(declare-fun b!3374643 () Bool)

(declare-fun res!1364564 () Bool)

(assert (=> b!3374643 (=> (not res!1364564) (not e!2094310))))

(assert (=> b!3374643 (= res!1364564 (and (not ((_ is Nil!36766) tokens!494)) ((_ is Nil!36766) (t!262609 tokens!494))))))

(declare-fun b!3374644 () Bool)

(declare-fun res!1364571 () Bool)

(assert (=> b!3374644 (=> (not res!1364571) (not e!2094310))))

(assert (=> b!3374644 (= res!1364571 (rulesProduceIndividualToken!2433 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3374645 () Bool)

(declare-fun e!2094321 () Bool)

(assert (=> b!3374645 (= e!2094330 e!2094321)))

(declare-fun res!1364559 () Bool)

(assert (=> b!3374645 (=> res!1364559 e!2094321)))

(declare-fun contains!6693 (List!36891 Rule!10504) Bool)

(assert (=> b!3374645 (= res!1364559 (not (contains!6693 rules!2135 (rule!7892 (h!42186 tokens!494)))))))

(declare-fun e!2094318 () Bool)

(assert (=> b!3374645 e!2094318))

(declare-fun res!1364574 () Bool)

(assert (=> b!3374645 (=> (not res!1364574) (not e!2094318))))

(declare-fun lt!1145286 () Option!7351)

(declare-fun isDefined!5690 (Option!7351) Bool)

(assert (=> b!3374645 (= res!1364574 (isDefined!5690 lt!1145286))))

(declare-fun getRuleFromTag!1007 (LexerInterface!4941 List!36891 String!41244) Option!7351)

(assert (=> b!3374645 (= lt!1145286 (getRuleFromTag!1007 thiss!18206 rules!2135 (tag!5916 (rule!7892 separatorToken!241))))))

(declare-datatypes ((Unit!51876 0))(
  ( (Unit!51877) )
))
(declare-fun lt!1145282 () Unit!51876)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1007 (LexerInterface!4941 List!36891 List!36888 Token!10070) Unit!51876)

(assert (=> b!3374645 (= lt!1145282 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1007 thiss!18206 rules!2135 lt!1145277 separatorToken!241))))

(assert (=> b!3374645 e!2094320))

(declare-fun res!1364556 () Bool)

(assert (=> b!3374645 (=> (not res!1364556) (not e!2094320))))

(assert (=> b!3374645 (= res!1364556 (isDefined!5690 lt!1145280))))

(assert (=> b!3374645 (= lt!1145280 (getRuleFromTag!1007 thiss!18206 rules!2135 (tag!5916 (rule!7892 (h!42186 tokens!494)))))))

(declare-fun lt!1145270 () Unit!51876)

(assert (=> b!3374645 (= lt!1145270 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1007 thiss!18206 rules!2135 lt!1145285 (h!42186 tokens!494)))))

(declare-fun lt!1145269 () Unit!51876)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!936 (LexerInterface!4941 List!36891 List!36890 Token!10070) Unit!51876)

(assert (=> b!3374645 (= lt!1145269 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!936 thiss!18206 rules!2135 tokens!494 (h!42186 tokens!494)))))

(declare-fun isEmpty!20978 (List!36888) Bool)

(declare-fun getSuffix!1446 (List!36888 List!36888) List!36888)

(assert (=> b!3374645 (isEmpty!20978 (getSuffix!1446 lt!1145285 lt!1145285))))

(declare-fun lt!1145273 () Unit!51876)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!104 (List!36888) Unit!51876)

(assert (=> b!3374645 (= lt!1145273 (lemmaGetSuffixOnListWithItSelfIsEmpty!104 lt!1145285))))

(declare-fun b!3374646 () Bool)

(assert (=> b!3374646 (= e!2094322 (= (rule!7892 (h!42186 tokens!494)) lt!1145274))))

(declare-fun b!3374647 () Bool)

(declare-fun e!2094309 () Bool)

(assert (=> b!3374647 (= e!2094318 e!2094309)))

(declare-fun res!1364566 () Bool)

(assert (=> b!3374647 (=> (not res!1364566) (not e!2094309))))

(declare-fun lt!1145268 () Rule!10504)

(assert (=> b!3374647 (= res!1364566 (matchR!4703 (regex!5352 lt!1145268) lt!1145277))))

(assert (=> b!3374647 (= lt!1145268 (get!11723 lt!1145286))))

(declare-fun b!3374648 () Bool)

(declare-fun tp!1055515 () Bool)

(declare-fun e!2094325 () Bool)

(assert (=> b!3374648 (= e!2094304 (and (inv!49835 (h!42186 tokens!494)) e!2094325 tp!1055515))))

(declare-fun b!3374649 () Bool)

(declare-fun res!1364573 () Bool)

(assert (=> b!3374649 (=> res!1364573 e!2094321)))

(assert (=> b!3374649 (= res!1364573 (not (= lt!1145285 (++!8975 lt!1145285 Nil!36764))))))

(declare-fun b!3374650 () Bool)

(declare-fun tp!1055514 () Bool)

(assert (=> b!3374650 (= e!2094325 (and (inv!21 (value!172992 (h!42186 tokens!494))) e!2094303 tp!1055514))))

(declare-fun b!3374651 () Bool)

(declare-fun e!2094317 () Bool)

(assert (=> b!3374651 (= e!2094317 (matchR!4703 (regex!5352 (rule!7892 (h!42186 tokens!494))) lt!1145285))))

(declare-fun ruleValid!1690 (LexerInterface!4941 Rule!10504) Bool)

(assert (=> b!3374651 (ruleValid!1690 thiss!18206 (rule!7892 (h!42186 tokens!494)))))

(declare-fun lt!1145283 () Unit!51876)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!936 (LexerInterface!4941 Rule!10504 List!36891) Unit!51876)

(assert (=> b!3374651 (= lt!1145283 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!936 thiss!18206 (rule!7892 (h!42186 tokens!494)) rules!2135))))

(declare-fun b!3374652 () Bool)

(declare-fun tp!1055524 () Bool)

(assert (=> b!3374652 (= e!2094327 (and e!2094311 tp!1055524))))

(assert (=> b!3374653 (= e!2094316 (and tp!1055516 tp!1055517))))

(declare-fun tp!1055513 () Bool)

(declare-fun b!3374654 () Bool)

(assert (=> b!3374654 (= e!2094312 (and tp!1055513 (inv!49831 (tag!5916 (rule!7892 separatorToken!241))) (inv!49834 (transformation!5352 (rule!7892 separatorToken!241))) e!2094307))))

(declare-fun b!3374655 () Bool)

(assert (=> b!3374655 (= e!2094313 e!2094328)))

(declare-fun res!1364560 () Bool)

(assert (=> b!3374655 (=> res!1364560 e!2094328)))

(assert (=> b!3374655 (= res!1364560 (or (not (= lt!1145267 lt!1145285)) (not (= lt!1145278 lt!1145285))))))

(assert (=> b!3374655 (= lt!1145285 (list!13285 (charsOf!3366 (h!42186 tokens!494))))))

(declare-fun b!3374656 () Bool)

(declare-fun res!1364561 () Bool)

(assert (=> b!3374656 (=> res!1364561 e!2094321)))

(assert (=> b!3374656 (= res!1364561 (isEmpty!20978 lt!1145285))))

(declare-fun b!3374657 () Bool)

(declare-fun e!2094319 () Bool)

(assert (=> b!3374657 (= e!2094319 e!2094315)))

(declare-fun res!1364568 () Bool)

(assert (=> b!3374657 (=> res!1364568 e!2094315)))

(assert (=> b!3374657 (= res!1364568 (isSeparator!5352 (rule!7892 (h!42186 tokens!494))))))

(declare-fun lt!1145275 () Unit!51876)

(declare-fun forallContained!1299 (List!36890 Int Token!10070) Unit!51876)

(assert (=> b!3374657 (= lt!1145275 (forallContained!1299 tokens!494 lambda!120315 (h!42186 tokens!494)))))

(declare-fun b!3374658 () Bool)

(assert (=> b!3374658 (= e!2094321 e!2094317)))

(declare-fun res!1364575 () Bool)

(assert (=> b!3374658 (=> res!1364575 e!2094317)))

(declare-fun lt!1145272 () BalanceConc!21772)

(declare-datatypes ((tuple2!36316 0))(
  ( (tuple2!36317 (_1!21292 Token!10070) (_2!21292 List!36888)) )
))
(declare-datatypes ((Option!7352 0))(
  ( (None!7351) (Some!7351 (v!36383 tuple2!36316)) )
))
(declare-fun maxPrefix!2533 (LexerInterface!4941 List!36891 List!36888) Option!7352)

(declare-fun apply!8527 (TokenValueInjection!10592 BalanceConc!21772) TokenValue!5582)

(declare-fun size!27827 (List!36888) Int)

(assert (=> b!3374658 (= res!1364575 (not (= (maxPrefix!2533 thiss!18206 rules!2135 lt!1145285) (Some!7351 (tuple2!36317 (Token!10071 (apply!8527 (transformation!5352 (rule!7892 (h!42186 tokens!494))) lt!1145272) (rule!7892 (h!42186 tokens!494)) (size!27827 lt!1145285) lt!1145285) Nil!36764)))))))

(declare-fun lt!1145276 () Unit!51876)

(declare-fun lemmaSemiInverse!1213 (TokenValueInjection!10592 BalanceConc!21772) Unit!51876)

(assert (=> b!3374658 (= lt!1145276 (lemmaSemiInverse!1213 (transformation!5352 (rule!7892 (h!42186 tokens!494))) lt!1145272))))

(declare-fun b!3374659 () Bool)

(assert (=> b!3374659 (= e!2094328 e!2094319)))

(declare-fun res!1364567 () Bool)

(assert (=> b!3374659 (=> res!1364567 e!2094319)))

(declare-fun isEmpty!20979 (BalanceConc!21774) Bool)

(declare-datatypes ((tuple2!36318 0))(
  ( (tuple2!36319 (_1!21293 BalanceConc!21774) (_2!21293 BalanceConc!21772)) )
))
(declare-fun lex!2267 (LexerInterface!4941 List!36891 BalanceConc!21772) tuple2!36318)

(assert (=> b!3374659 (= res!1364567 (isEmpty!20979 (_1!21293 (lex!2267 thiss!18206 rules!2135 lt!1145272))))))

(declare-fun seqFromList!3758 (List!36888) BalanceConc!21772)

(assert (=> b!3374659 (= lt!1145272 (seqFromList!3758 lt!1145285))))

(declare-fun b!3374660 () Bool)

(assert (=> b!3374660 (= e!2094309 (= (rule!7892 separatorToken!241) lt!1145268))))

(assert (= (and start!314050 res!1364572) b!3374634))

(assert (= (and b!3374634 res!1364570) b!3374642))

(assert (= (and b!3374642 res!1364563) b!3374632))

(assert (= (and b!3374632 res!1364569) b!3374644))

(assert (= (and b!3374644 res!1364571) b!3374639))

(assert (= (and b!3374639 res!1364557) b!3374636))

(assert (= (and b!3374636 res!1364558) b!3374640))

(assert (= (and b!3374640 res!1364576) b!3374643))

(assert (= (and b!3374643 res!1364564) b!3374629))

(assert (= (and b!3374629 (not res!1364555)) b!3374655))

(assert (= (and b!3374655 (not res!1364560)) b!3374641))

(assert (= (and b!3374641 (not res!1364565)) b!3374659))

(assert (= (and b!3374659 (not res!1364567)) b!3374657))

(assert (= (and b!3374657 (not res!1364568)) b!3374631))

(assert (= (and b!3374631 (not res!1364562)) b!3374645))

(assert (= (and b!3374645 res!1364556) b!3374637))

(assert (= (and b!3374637 res!1364577) b!3374646))

(assert (= (and b!3374645 res!1364574) b!3374647))

(assert (= (and b!3374647 res!1364566) b!3374660))

(assert (= (and b!3374645 (not res!1364559)) b!3374649))

(assert (= (and b!3374649 (not res!1364573)) b!3374656))

(assert (= (and b!3374656 (not res!1364561)) b!3374658))

(assert (= (and b!3374658 (not res!1364575)) b!3374651))

(assert (= b!3374638 b!3374628))

(assert (= b!3374652 b!3374638))

(assert (= (and start!314050 ((_ is Cons!36767) rules!2135)) b!3374652))

(assert (= b!3374654 b!3374630))

(assert (= b!3374633 b!3374654))

(assert (= start!314050 b!3374633))

(assert (= b!3374635 b!3374653))

(assert (= b!3374650 b!3374635))

(assert (= b!3374648 b!3374650))

(assert (= (and start!314050 ((_ is Cons!36766) tokens!494)) b!3374648))

(declare-fun m!3737981 () Bool)

(assert (=> b!3374657 m!3737981))

(declare-fun m!3737983 () Bool)

(assert (=> b!3374631 m!3737983))

(declare-fun m!3737985 () Bool)

(assert (=> b!3374631 m!3737985))

(assert (=> b!3374631 m!3737983))

(declare-fun m!3737987 () Bool)

(assert (=> b!3374631 m!3737987))

(declare-fun m!3737989 () Bool)

(assert (=> b!3374631 m!3737989))

(declare-fun m!3737991 () Bool)

(assert (=> b!3374631 m!3737991))

(declare-fun m!3737993 () Bool)

(assert (=> b!3374632 m!3737993))

(declare-fun m!3737995 () Bool)

(assert (=> b!3374632 m!3737995))

(declare-fun m!3737997 () Bool)

(assert (=> b!3374629 m!3737997))

(declare-fun m!3737999 () Bool)

(assert (=> b!3374629 m!3737999))

(declare-fun m!3738001 () Bool)

(assert (=> b!3374629 m!3738001))

(declare-fun m!3738003 () Bool)

(assert (=> b!3374629 m!3738003))

(declare-fun m!3738005 () Bool)

(assert (=> b!3374629 m!3738005))

(declare-fun m!3738007 () Bool)

(assert (=> b!3374633 m!3738007))

(declare-fun m!3738009 () Bool)

(assert (=> b!3374649 m!3738009))

(declare-fun m!3738011 () Bool)

(assert (=> b!3374651 m!3738011))

(declare-fun m!3738013 () Bool)

(assert (=> b!3374651 m!3738013))

(declare-fun m!3738015 () Bool)

(assert (=> b!3374651 m!3738015))

(declare-fun m!3738017 () Bool)

(assert (=> b!3374637 m!3738017))

(declare-fun m!3738019 () Bool)

(assert (=> b!3374637 m!3738019))

(declare-fun m!3738021 () Bool)

(assert (=> b!3374650 m!3738021))

(declare-fun m!3738023 () Bool)

(assert (=> b!3374645 m!3738023))

(declare-fun m!3738025 () Bool)

(assert (=> b!3374645 m!3738025))

(declare-fun m!3738027 () Bool)

(assert (=> b!3374645 m!3738027))

(assert (=> b!3374645 m!3738025))

(declare-fun m!3738029 () Bool)

(assert (=> b!3374645 m!3738029))

(declare-fun m!3738031 () Bool)

(assert (=> b!3374645 m!3738031))

(declare-fun m!3738033 () Bool)

(assert (=> b!3374645 m!3738033))

(declare-fun m!3738035 () Bool)

(assert (=> b!3374645 m!3738035))

(declare-fun m!3738037 () Bool)

(assert (=> b!3374645 m!3738037))

(declare-fun m!3738039 () Bool)

(assert (=> b!3374645 m!3738039))

(declare-fun m!3738041 () Bool)

(assert (=> b!3374645 m!3738041))

(declare-fun m!3738043 () Bool)

(assert (=> b!3374645 m!3738043))

(declare-fun m!3738045 () Bool)

(assert (=> start!314050 m!3738045))

(declare-fun m!3738047 () Bool)

(assert (=> b!3374634 m!3738047))

(declare-fun m!3738049 () Bool)

(assert (=> b!3374658 m!3738049))

(declare-fun m!3738051 () Bool)

(assert (=> b!3374658 m!3738051))

(declare-fun m!3738053 () Bool)

(assert (=> b!3374658 m!3738053))

(declare-fun m!3738055 () Bool)

(assert (=> b!3374658 m!3738055))

(declare-fun m!3738057 () Bool)

(assert (=> b!3374655 m!3738057))

(assert (=> b!3374655 m!3738057))

(declare-fun m!3738059 () Bool)

(assert (=> b!3374655 m!3738059))

(declare-fun m!3738061 () Bool)

(assert (=> b!3374642 m!3738061))

(declare-fun m!3738063 () Bool)

(assert (=> b!3374644 m!3738063))

(declare-fun m!3738065 () Bool)

(assert (=> b!3374638 m!3738065))

(declare-fun m!3738067 () Bool)

(assert (=> b!3374638 m!3738067))

(declare-fun m!3738069 () Bool)

(assert (=> b!3374647 m!3738069))

(declare-fun m!3738071 () Bool)

(assert (=> b!3374647 m!3738071))

(declare-fun m!3738073 () Bool)

(assert (=> b!3374636 m!3738073))

(declare-fun m!3738075 () Bool)

(assert (=> b!3374659 m!3738075))

(declare-fun m!3738077 () Bool)

(assert (=> b!3374659 m!3738077))

(declare-fun m!3738079 () Bool)

(assert (=> b!3374659 m!3738079))

(declare-fun m!3738081 () Bool)

(assert (=> b!3374640 m!3738081))

(declare-fun m!3738083 () Bool)

(assert (=> b!3374654 m!3738083))

(declare-fun m!3738085 () Bool)

(assert (=> b!3374654 m!3738085))

(declare-fun m!3738087 () Bool)

(assert (=> b!3374656 m!3738087))

(declare-fun m!3738089 () Bool)

(assert (=> b!3374648 m!3738089))

(declare-fun m!3738091 () Bool)

(assert (=> b!3374635 m!3738091))

(declare-fun m!3738093 () Bool)

(assert (=> b!3374635 m!3738093))

(declare-fun m!3738095 () Bool)

(assert (=> b!3374641 m!3738095))

(check-sat (not b!3374638) (not b!3374647) (not b!3374634) (not start!314050) (not b!3374654) (not b!3374640) (not b_next!88859) (not b!3374650) (not b_next!88867) (not b!3374637) (not b!3374656) (not b!3374629) (not b!3374636) b_and!234211 (not b!3374633) (not b!3374632) (not b_next!88857) (not b!3374649) (not b!3374642) b_and!234215 (not b!3374641) (not b_next!88863) (not b!3374648) b_and!234207 b_and!234209 (not b!3374644) (not b!3374652) (not b!3374658) (not b!3374631) (not b!3374655) (not b_next!88865) (not b!3374651) (not b!3374645) (not b_next!88861) (not b!3374635) (not b!3374659) (not b!3374657) b_and!234217 b_and!234213)
(check-sat b_and!234211 (not b_next!88857) b_and!234215 (not b_next!88859) (not b_next!88863) (not b_next!88867) (not b_next!88865) (not b_next!88861) b_and!234207 b_and!234209 b_and!234217 b_and!234213)
