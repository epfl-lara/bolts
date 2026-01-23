; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!271264 () Bool)

(assert start!271264)

(declare-fun b!2804579 () Bool)

(declare-fun b_free!79657 () Bool)

(declare-fun b_next!80361 () Bool)

(assert (=> b!2804579 (= b_free!79657 (not b_next!80361))))

(declare-fun tp!894479 () Bool)

(declare-fun b_and!204419 () Bool)

(assert (=> b!2804579 (= tp!894479 b_and!204419)))

(declare-fun b_free!79659 () Bool)

(declare-fun b_next!80363 () Bool)

(assert (=> b!2804579 (= b_free!79659 (not b_next!80363))))

(declare-fun tp!894483 () Bool)

(declare-fun b_and!204421 () Bool)

(assert (=> b!2804579 (= tp!894483 b_and!204421)))

(declare-fun b!2804582 () Bool)

(declare-fun b_free!79661 () Bool)

(declare-fun b_next!80365 () Bool)

(assert (=> b!2804582 (= b_free!79661 (not b_next!80365))))

(declare-fun tp!894481 () Bool)

(declare-fun b_and!204423 () Bool)

(assert (=> b!2804582 (= tp!894481 b_and!204423)))

(declare-fun b_free!79663 () Bool)

(declare-fun b_next!80367 () Bool)

(assert (=> b!2804582 (= b_free!79663 (not b_next!80367))))

(declare-fun tp!894485 () Bool)

(declare-fun b_and!204425 () Bool)

(assert (=> b!2804582 (= tp!894485 b_and!204425)))

(declare-fun b!2804592 () Bool)

(declare-fun b_free!79665 () Bool)

(declare-fun b_next!80369 () Bool)

(assert (=> b!2804592 (= b_free!79665 (not b_next!80369))))

(declare-fun tp!894486 () Bool)

(declare-fun b_and!204427 () Bool)

(assert (=> b!2804592 (= tp!894486 b_and!204427)))

(declare-fun b_free!79667 () Bool)

(declare-fun b_next!80371 () Bool)

(assert (=> b!2804592 (= b_free!79667 (not b_next!80371))))

(declare-fun tp!894484 () Bool)

(declare-fun b_and!204429 () Bool)

(assert (=> b!2804592 (= tp!894484 b_and!204429)))

(declare-fun b!2804606 () Bool)

(declare-fun e!1772764 () Bool)

(assert (=> b!2804606 (= e!1772764 true)))

(declare-fun b!2804605 () Bool)

(declare-fun e!1772763 () Bool)

(assert (=> b!2804605 (= e!1772763 e!1772764)))

(declare-fun b!2804604 () Bool)

(declare-fun e!1772762 () Bool)

(assert (=> b!2804604 (= e!1772762 e!1772763)))

(declare-fun b!2804593 () Bool)

(assert (=> b!2804593 e!1772762))

(assert (= b!2804605 b!2804606))

(assert (= b!2804604 b!2804605))

(declare-datatypes ((List!32750 0))(
  ( (Nil!32650) (Cons!32650 (h!38070 (_ BitVec 16)) (t!228982 List!32750)) )
))
(declare-datatypes ((TokenValue!5097 0))(
  ( (FloatLiteralValue!10194 (text!36124 List!32750)) (TokenValueExt!5096 (__x!21851 Int)) (Broken!25485 (value!156821 List!32750)) (Object!5196) (End!5097) (Def!5097) (Underscore!5097) (Match!5097) (Else!5097) (Error!5097) (Case!5097) (If!5097) (Extends!5097) (Abstract!5097) (Class!5097) (Val!5097) (DelimiterValue!10194 (del!5157 List!32750)) (KeywordValue!5103 (value!156822 List!32750)) (CommentValue!10194 (value!156823 List!32750)) (WhitespaceValue!10194 (value!156824 List!32750)) (IndentationValue!5097 (value!156825 List!32750)) (String!35820) (Int32!5097) (Broken!25486 (value!156826 List!32750)) (Boolean!5098) (Unit!46745) (OperatorValue!5100 (op!5157 List!32750)) (IdentifierValue!10194 (value!156827 List!32750)) (IdentifierValue!10195 (value!156828 List!32750)) (WhitespaceValue!10195 (value!156829 List!32750)) (True!10194) (False!10194) (Broken!25487 (value!156830 List!32750)) (Broken!25488 (value!156831 List!32750)) (True!10195) (RightBrace!5097) (RightBracket!5097) (Colon!5097) (Null!5097) (Comma!5097) (LeftBracket!5097) (False!10195) (LeftBrace!5097) (ImaginaryLiteralValue!5097 (text!36125 List!32750)) (StringLiteralValue!15291 (value!156832 List!32750)) (EOFValue!5097 (value!156833 List!32750)) (IdentValue!5097 (value!156834 List!32750)) (DelimiterValue!10195 (value!156835 List!32750)) (DedentValue!5097 (value!156836 List!32750)) (NewLineValue!5097 (value!156837 List!32750)) (IntegerValue!15291 (value!156838 (_ BitVec 32)) (text!36126 List!32750)) (IntegerValue!15292 (value!156839 Int) (text!36127 List!32750)) (Times!5097) (Or!5097) (Equal!5097) (Minus!5097) (Broken!25489 (value!156840 List!32750)) (And!5097) (Div!5097) (LessEqual!5097) (Mod!5097) (Concat!13342) (Not!5097) (Plus!5097) (SpaceValue!5097 (value!156841 List!32750)) (IntegerValue!15293 (value!156842 Int) (text!36128 List!32750)) (StringLiteralValue!15292 (text!36129 List!32750)) (FloatLiteralValue!10195 (text!36130 List!32750)) (BytesLiteralValue!5097 (value!156843 List!32750)) (CommentValue!10195 (value!156844 List!32750)) (StringLiteralValue!15293 (value!156845 List!32750)) (ErrorTokenValue!5097 (msg!5158 List!32750)) )
))
(declare-datatypes ((C!16648 0))(
  ( (C!16649 (val!10258 Int)) )
))
(declare-datatypes ((List!32751 0))(
  ( (Nil!32651) (Cons!32651 (h!38071 C!16648) (t!228983 List!32751)) )
))
(declare-datatypes ((IArray!20213 0))(
  ( (IArray!20214 (innerList!10164 List!32751)) )
))
(declare-datatypes ((Conc!10104 0))(
  ( (Node!10104 (left!24644 Conc!10104) (right!24974 Conc!10104) (csize!20438 Int) (cheight!10315 Int)) (Leaf!15395 (xs!13216 IArray!20213) (csize!20439 Int)) (Empty!10104) )
))
(declare-datatypes ((BalanceConc!19822 0))(
  ( (BalanceConc!19823 (c!454566 Conc!10104)) )
))
(declare-datatypes ((TokenValueInjection!9634 0))(
  ( (TokenValueInjection!9635 (toValue!6873 Int) (toChars!6732 Int)) )
))
(declare-datatypes ((String!35821 0))(
  ( (String!35822 (value!156846 String)) )
))
(declare-datatypes ((Regex!8245 0))(
  ( (ElementMatch!8245 (c!454567 C!16648)) (Concat!13343 (regOne!17002 Regex!8245) (regTwo!17002 Regex!8245)) (EmptyExpr!8245) (Star!8245 (reg!8574 Regex!8245)) (EmptyLang!8245) (Union!8245 (regOne!17003 Regex!8245) (regTwo!17003 Regex!8245)) )
))
(declare-datatypes ((Rule!9550 0))(
  ( (Rule!9551 (regex!4875 Regex!8245) (tag!5379 String!35821) (isSeparator!4875 Bool) (transformation!4875 TokenValueInjection!9634)) )
))
(declare-datatypes ((List!32752 0))(
  ( (Nil!32652) (Cons!32652 (h!38072 Rule!9550) (t!228984 List!32752)) )
))
(declare-fun rules!2540 () List!32752)

(get-info :version)

(assert (= (and b!2804593 ((_ is Cons!32652) rules!2540)) b!2804604))

(declare-fun order!17295 () Int)

(declare-fun lambda!103039 () Int)

(declare-fun order!17297 () Int)

(declare-fun dynLambda!13652 (Int Int) Int)

(declare-fun dynLambda!13653 (Int Int) Int)

(assert (=> b!2804606 (< (dynLambda!13652 order!17295 (toValue!6873 (transformation!4875 (h!38072 rules!2540)))) (dynLambda!13653 order!17297 lambda!103039))))

(declare-fun order!17299 () Int)

(declare-fun dynLambda!13654 (Int Int) Int)

(assert (=> b!2804606 (< (dynLambda!13654 order!17299 (toChars!6732 (transformation!4875 (h!38072 rules!2540)))) (dynLambda!13653 order!17297 lambda!103039))))

(assert (=> b!2804593 true))

(declare-fun b!2804578 () Bool)

(declare-fun tp!894487 () Bool)

(declare-datatypes ((Token!9152 0))(
  ( (Token!9153 (value!156847 TokenValue!5097) (rule!7303 Rule!9550) (size!25491 Int) (originalCharacters!5607 List!32751)) )
))
(declare-fun separatorToken!283 () Token!9152)

(declare-fun e!1772746 () Bool)

(declare-fun e!1772744 () Bool)

(declare-fun inv!21 (TokenValue!5097) Bool)

(assert (=> b!2804578 (= e!1772744 (and (inv!21 (value!156847 separatorToken!283)) e!1772746 tp!894487))))

(declare-fun e!1772752 () Bool)

(assert (=> b!2804579 (= e!1772752 (and tp!894479 tp!894483))))

(declare-fun b!2804580 () Bool)

(declare-fun e!1772741 () Bool)

(assert (=> b!2804580 (= e!1772741 (not true))))

(declare-datatypes ((List!32753 0))(
  ( (Nil!32653) (Cons!32653 (h!38073 Token!9152) (t!228985 List!32753)) )
))
(declare-fun l!5055 () List!32753)

(declare-datatypes ((LexerInterface!4466 0))(
  ( (LexerInterfaceExt!4463 (__x!21852 Int)) (Lexer!4464) )
))
(declare-fun thiss!19710 () LexerInterface!4466)

(declare-fun rulesProduceEachTokenIndividuallyList!1540 (LexerInterface!4466 List!32752 List!32753) Bool)

(declare-fun withSeparatorTokenList!126 (LexerInterface!4466 List!32753 Token!9152) List!32753)

(assert (=> b!2804580 (rulesProduceEachTokenIndividuallyList!1540 thiss!19710 rules!2540 (withSeparatorTokenList!126 thiss!19710 (t!228985 l!5055) separatorToken!283))))

(declare-datatypes ((Unit!46746 0))(
  ( (Unit!46747) )
))
(declare-fun lt!1002891 () Unit!46746)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!98 (LexerInterface!4466 List!32752 List!32753 Token!9152) Unit!46746)

(assert (=> b!2804580 (= lt!1002891 (withSeparatorTokenListPreservesRulesProduceTokens!98 thiss!19710 rules!2540 (t!228985 l!5055) separatorToken!283))))

(declare-fun tp!894482 () Bool)

(declare-fun b!2804581 () Bool)

(declare-fun e!1772748 () Bool)

(declare-fun inv!44325 (String!35821) Bool)

(declare-fun inv!44328 (TokenValueInjection!9634) Bool)

(assert (=> b!2804581 (= e!1772746 (and tp!894482 (inv!44325 (tag!5379 (rule!7303 separatorToken!283))) (inv!44328 (transformation!4875 (rule!7303 separatorToken!283))) e!1772748))))

(declare-fun e!1772751 () Bool)

(assert (=> b!2804582 (= e!1772751 (and tp!894481 tp!894485))))

(declare-fun b!2804583 () Bool)

(declare-fun res!1168458 () Bool)

(declare-fun e!1772740 () Bool)

(assert (=> b!2804583 (=> (not res!1168458) (not e!1772740))))

(declare-fun rulesInvariant!3906 (LexerInterface!4466 List!32752) Bool)

(assert (=> b!2804583 (= res!1168458 (rulesInvariant!3906 thiss!19710 rules!2540))))

(declare-fun b!2804584 () Bool)

(declare-fun res!1168462 () Bool)

(assert (=> b!2804584 (=> (not res!1168462) (not e!1772740))))

(declare-fun isEmpty!18157 (List!32752) Bool)

(assert (=> b!2804584 (= res!1168462 (not (isEmpty!18157 rules!2540)))))

(declare-fun b!2804586 () Bool)

(declare-fun res!1168461 () Bool)

(assert (=> b!2804586 (=> (not res!1168461) (not e!1772740))))

(assert (=> b!2804586 (= res!1168461 (and (isSeparator!4875 (rule!7303 separatorToken!283)) ((_ is Cons!32653) l!5055)))))

(declare-fun b!2804587 () Bool)

(declare-fun tp!894480 () Bool)

(declare-fun e!1772754 () Bool)

(declare-fun e!1772745 () Bool)

(assert (=> b!2804587 (= e!1772745 (and (inv!21 (value!156847 (h!38073 l!5055))) e!1772754 tp!894480))))

(declare-fun tp!894476 () Bool)

(declare-fun b!2804588 () Bool)

(assert (=> b!2804588 (= e!1772754 (and tp!894476 (inv!44325 (tag!5379 (rule!7303 (h!38073 l!5055)))) (inv!44328 (transformation!4875 (rule!7303 (h!38073 l!5055)))) e!1772752))))

(declare-fun b!2804589 () Bool)

(declare-fun res!1168464 () Bool)

(assert (=> b!2804589 (=> (not res!1168464) (not e!1772740))))

(assert (=> b!2804589 (= res!1168464 (rulesProduceEachTokenIndividuallyList!1540 thiss!19710 rules!2540 l!5055))))

(declare-fun b!2804590 () Bool)

(declare-fun tp!894477 () Bool)

(declare-fun e!1772755 () Bool)

(declare-fun inv!44329 (Token!9152) Bool)

(assert (=> b!2804590 (= e!1772755 (and (inv!44329 (h!38073 l!5055)) e!1772745 tp!894477))))

(declare-fun b!2804591 () Bool)

(declare-fun res!1168463 () Bool)

(assert (=> b!2804591 (=> (not res!1168463) (not e!1772740))))

(declare-fun rulesProduceIndividualToken!2030 (LexerInterface!4466 List!32752 Token!9152) Bool)

(assert (=> b!2804591 (= res!1168463 (rulesProduceIndividualToken!2030 thiss!19710 rules!2540 separatorToken!283))))

(declare-fun res!1168459 () Bool)

(assert (=> start!271264 (=> (not res!1168459) (not e!1772740))))

(assert (=> start!271264 (= res!1168459 ((_ is Lexer!4464) thiss!19710))))

(assert (=> start!271264 e!1772740))

(assert (=> start!271264 true))

(declare-fun e!1772747 () Bool)

(assert (=> start!271264 e!1772747))

(assert (=> start!271264 e!1772755))

(assert (=> start!271264 (and (inv!44329 separatorToken!283) e!1772744)))

(declare-fun b!2804585 () Bool)

(declare-fun res!1168460 () Bool)

(assert (=> b!2804585 (=> (not res!1168460) (not e!1772740))))

(declare-fun contains!6031 (List!32753 Token!9152) Bool)

(assert (=> b!2804585 (= res!1168460 (contains!6031 l!5055 (h!38073 l!5055)))))

(assert (=> b!2804592 (= e!1772748 (and tp!894486 tp!894484))))

(assert (=> b!2804593 (= e!1772740 e!1772741)))

(declare-fun res!1168457 () Bool)

(assert (=> b!2804593 (=> (not res!1168457) (not e!1772741))))

(assert (=> b!2804593 (= res!1168457 (rulesProduceEachTokenIndividuallyList!1540 thiss!19710 rules!2540 (t!228985 l!5055)))))

(declare-fun lt!1002892 () Bool)

(assert (=> b!2804593 (= lt!1002892 (rulesProduceIndividualToken!2030 thiss!19710 rules!2540 (h!38073 l!5055)))))

(declare-fun lt!1002890 () Unit!46746)

(declare-fun forallContained!1057 (List!32753 Int Token!9152) Unit!46746)

(assert (=> b!2804593 (= lt!1002890 (forallContained!1057 l!5055 lambda!103039 (h!38073 l!5055)))))

(declare-fun tp!894488 () Bool)

(declare-fun e!1772742 () Bool)

(declare-fun b!2804594 () Bool)

(assert (=> b!2804594 (= e!1772742 (and tp!894488 (inv!44325 (tag!5379 (h!38072 rules!2540))) (inv!44328 (transformation!4875 (h!38072 rules!2540))) e!1772751))))

(declare-fun b!2804595 () Bool)

(declare-fun tp!894478 () Bool)

(assert (=> b!2804595 (= e!1772747 (and e!1772742 tp!894478))))

(assert (= (and start!271264 res!1168459) b!2804584))

(assert (= (and b!2804584 res!1168462) b!2804583))

(assert (= (and b!2804583 res!1168458) b!2804589))

(assert (= (and b!2804589 res!1168464) b!2804591))

(assert (= (and b!2804591 res!1168463) b!2804586))

(assert (= (and b!2804586 res!1168461) b!2804585))

(assert (= (and b!2804585 res!1168460) b!2804593))

(assert (= (and b!2804593 res!1168457) b!2804580))

(assert (= b!2804594 b!2804582))

(assert (= b!2804595 b!2804594))

(assert (= (and start!271264 ((_ is Cons!32652) rules!2540)) b!2804595))

(assert (= b!2804588 b!2804579))

(assert (= b!2804587 b!2804588))

(assert (= b!2804590 b!2804587))

(assert (= (and start!271264 ((_ is Cons!32653) l!5055)) b!2804590))

(assert (= b!2804581 b!2804592))

(assert (= b!2804578 b!2804581))

(assert (= start!271264 b!2804578))

(declare-fun m!3234027 () Bool)

(assert (=> b!2804581 m!3234027))

(declare-fun m!3234029 () Bool)

(assert (=> b!2804581 m!3234029))

(declare-fun m!3234031 () Bool)

(assert (=> b!2804578 m!3234031))

(declare-fun m!3234033 () Bool)

(assert (=> b!2804589 m!3234033))

(declare-fun m!3234035 () Bool)

(assert (=> b!2804583 m!3234035))

(declare-fun m!3234037 () Bool)

(assert (=> b!2804594 m!3234037))

(declare-fun m!3234039 () Bool)

(assert (=> b!2804594 m!3234039))

(declare-fun m!3234041 () Bool)

(assert (=> b!2804585 m!3234041))

(declare-fun m!3234043 () Bool)

(assert (=> b!2804587 m!3234043))

(declare-fun m!3234045 () Bool)

(assert (=> b!2804590 m!3234045))

(declare-fun m!3234047 () Bool)

(assert (=> start!271264 m!3234047))

(declare-fun m!3234049 () Bool)

(assert (=> b!2804584 m!3234049))

(declare-fun m!3234051 () Bool)

(assert (=> b!2804593 m!3234051))

(declare-fun m!3234053 () Bool)

(assert (=> b!2804593 m!3234053))

(declare-fun m!3234055 () Bool)

(assert (=> b!2804593 m!3234055))

(declare-fun m!3234057 () Bool)

(assert (=> b!2804588 m!3234057))

(declare-fun m!3234059 () Bool)

(assert (=> b!2804588 m!3234059))

(declare-fun m!3234061 () Bool)

(assert (=> b!2804580 m!3234061))

(assert (=> b!2804580 m!3234061))

(declare-fun m!3234063 () Bool)

(assert (=> b!2804580 m!3234063))

(declare-fun m!3234065 () Bool)

(assert (=> b!2804580 m!3234065))

(declare-fun m!3234067 () Bool)

(assert (=> b!2804591 m!3234067))

(check-sat (not b!2804590) (not b!2804587) b_and!204427 b_and!204421 (not b!2804594) (not b_next!80363) (not b!2804591) (not b!2804584) (not b!2804578) (not b!2804604) (not b_next!80371) (not b_next!80365) (not b!2804595) (not b!2804581) b_and!204425 (not start!271264) (not b!2804589) (not b_next!80369) (not b!2804593) (not b_next!80361) (not b!2804588) b_and!204419 (not b!2804583) b_and!204429 (not b!2804585) b_and!204423 (not b!2804580) (not b_next!80367))
(check-sat (not b_next!80369) (not b_next!80361) b_and!204427 b_and!204419 b_and!204421 (not b_next!80367) (not b_next!80363) (not b_next!80371) (not b_next!80365) b_and!204425 b_and!204429 b_and!204423)
