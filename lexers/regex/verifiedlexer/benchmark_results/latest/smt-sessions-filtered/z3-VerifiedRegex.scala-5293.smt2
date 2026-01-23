; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!271276 () Bool)

(assert start!271276)

(declare-fun b!2804920 () Bool)

(declare-fun b_free!79729 () Bool)

(declare-fun b_next!80433 () Bool)

(assert (=> b!2804920 (= b_free!79729 (not b_next!80433))))

(declare-fun tp!894722 () Bool)

(declare-fun b_and!204491 () Bool)

(assert (=> b!2804920 (= tp!894722 b_and!204491)))

(declare-fun b_free!79731 () Bool)

(declare-fun b_next!80435 () Bool)

(assert (=> b!2804920 (= b_free!79731 (not b_next!80435))))

(declare-fun tp!894716 () Bool)

(declare-fun b_and!204493 () Bool)

(assert (=> b!2804920 (= tp!894716 b_and!204493)))

(declare-fun b!2804922 () Bool)

(declare-fun b_free!79733 () Bool)

(declare-fun b_next!80437 () Bool)

(assert (=> b!2804922 (= b_free!79733 (not b_next!80437))))

(declare-fun tp!894718 () Bool)

(declare-fun b_and!204495 () Bool)

(assert (=> b!2804922 (= tp!894718 b_and!204495)))

(declare-fun b_free!79735 () Bool)

(declare-fun b_next!80439 () Bool)

(assert (=> b!2804922 (= b_free!79735 (not b_next!80439))))

(declare-fun tp!894713 () Bool)

(declare-fun b_and!204497 () Bool)

(assert (=> b!2804922 (= tp!894713 b_and!204497)))

(declare-fun b!2804908 () Bool)

(declare-fun b_free!79737 () Bool)

(declare-fun b_next!80441 () Bool)

(assert (=> b!2804908 (= b_free!79737 (not b_next!80441))))

(declare-fun tp!894712 () Bool)

(declare-fun b_and!204499 () Bool)

(assert (=> b!2804908 (= tp!894712 b_and!204499)))

(declare-fun b_free!79739 () Bool)

(declare-fun b_next!80443 () Bool)

(assert (=> b!2804908 (= b_free!79739 (not b_next!80443))))

(declare-fun tp!894715 () Bool)

(declare-fun b_and!204501 () Bool)

(assert (=> b!2804908 (= tp!894715 b_and!204501)))

(declare-fun b!2804907 () Bool)

(declare-fun res!1168570 () Bool)

(declare-fun e!1773063 () Bool)

(assert (=> b!2804907 (=> (not res!1168570) (not e!1773063))))

(declare-datatypes ((List!32774 0))(
  ( (Nil!32674) (Cons!32674 (h!38094 (_ BitVec 16)) (t!229010 List!32774)) )
))
(declare-datatypes ((TokenValue!5103 0))(
  ( (FloatLiteralValue!10206 (text!36166 List!32774)) (TokenValueExt!5102 (__x!21863 Int)) (Broken!25515 (value!156992 List!32774)) (Object!5202) (End!5103) (Def!5103) (Underscore!5103) (Match!5103) (Else!5103) (Error!5103) (Case!5103) (If!5103) (Extends!5103) (Abstract!5103) (Class!5103) (Val!5103) (DelimiterValue!10206 (del!5163 List!32774)) (KeywordValue!5109 (value!156993 List!32774)) (CommentValue!10206 (value!156994 List!32774)) (WhitespaceValue!10206 (value!156995 List!32774)) (IndentationValue!5103 (value!156996 List!32774)) (String!35850) (Int32!5103) (Broken!25516 (value!156997 List!32774)) (Boolean!5104) (Unit!46757) (OperatorValue!5106 (op!5163 List!32774)) (IdentifierValue!10206 (value!156998 List!32774)) (IdentifierValue!10207 (value!156999 List!32774)) (WhitespaceValue!10207 (value!157000 List!32774)) (True!10206) (False!10206) (Broken!25517 (value!157001 List!32774)) (Broken!25518 (value!157002 List!32774)) (True!10207) (RightBrace!5103) (RightBracket!5103) (Colon!5103) (Null!5103) (Comma!5103) (LeftBracket!5103) (False!10207) (LeftBrace!5103) (ImaginaryLiteralValue!5103 (text!36167 List!32774)) (StringLiteralValue!15309 (value!157003 List!32774)) (EOFValue!5103 (value!157004 List!32774)) (IdentValue!5103 (value!157005 List!32774)) (DelimiterValue!10207 (value!157006 List!32774)) (DedentValue!5103 (value!157007 List!32774)) (NewLineValue!5103 (value!157008 List!32774)) (IntegerValue!15309 (value!157009 (_ BitVec 32)) (text!36168 List!32774)) (IntegerValue!15310 (value!157010 Int) (text!36169 List!32774)) (Times!5103) (Or!5103) (Equal!5103) (Minus!5103) (Broken!25519 (value!157011 List!32774)) (And!5103) (Div!5103) (LessEqual!5103) (Mod!5103) (Concat!13354) (Not!5103) (Plus!5103) (SpaceValue!5103 (value!157012 List!32774)) (IntegerValue!15311 (value!157013 Int) (text!36170 List!32774)) (StringLiteralValue!15310 (text!36171 List!32774)) (FloatLiteralValue!10207 (text!36172 List!32774)) (BytesLiteralValue!5103 (value!157014 List!32774)) (CommentValue!10207 (value!157015 List!32774)) (StringLiteralValue!15311 (value!157016 List!32774)) (ErrorTokenValue!5103 (msg!5164 List!32774)) )
))
(declare-datatypes ((C!16660 0))(
  ( (C!16661 (val!10264 Int)) )
))
(declare-datatypes ((List!32775 0))(
  ( (Nil!32675) (Cons!32675 (h!38095 C!16660) (t!229011 List!32775)) )
))
(declare-datatypes ((IArray!20225 0))(
  ( (IArray!20226 (innerList!10170 List!32775)) )
))
(declare-datatypes ((Conc!10110 0))(
  ( (Node!10110 (left!24657 Conc!10110) (right!24987 Conc!10110) (csize!20450 Int) (cheight!10321 Int)) (Leaf!15404 (xs!13222 IArray!20225) (csize!20451 Int)) (Empty!10110) )
))
(declare-datatypes ((BalanceConc!19834 0))(
  ( (BalanceConc!19835 (c!454578 Conc!10110)) )
))
(declare-datatypes ((TokenValueInjection!9646 0))(
  ( (TokenValueInjection!9647 (toValue!6879 Int) (toChars!6738 Int)) )
))
(declare-datatypes ((Regex!8251 0))(
  ( (ElementMatch!8251 (c!454579 C!16660)) (Concat!13355 (regOne!17014 Regex!8251) (regTwo!17014 Regex!8251)) (EmptyExpr!8251) (Star!8251 (reg!8580 Regex!8251)) (EmptyLang!8251) (Union!8251 (regOne!17015 Regex!8251) (regTwo!17015 Regex!8251)) )
))
(declare-datatypes ((String!35851 0))(
  ( (String!35852 (value!157017 String)) )
))
(declare-datatypes ((Rule!9562 0))(
  ( (Rule!9563 (regex!4881 Regex!8251) (tag!5385 String!35851) (isSeparator!4881 Bool) (transformation!4881 TokenValueInjection!9646)) )
))
(declare-datatypes ((Token!9164 0))(
  ( (Token!9165 (value!157018 TokenValue!5103) (rule!7309 Rule!9562) (size!25497 Int) (originalCharacters!5613 List!32775)) )
))
(declare-fun separatorToken!283 () Token!9164)

(declare-datatypes ((List!32776 0))(
  ( (Nil!32676) (Cons!32676 (h!38096 Token!9164) (t!229012 List!32776)) )
))
(declare-fun l!5055 () List!32776)

(get-info :version)

(assert (=> b!2804907 (= res!1168570 (and (isSeparator!4881 (rule!7309 separatorToken!283)) (not ((_ is Cons!32676) l!5055))))))

(declare-fun e!1773073 () Bool)

(assert (=> b!2804908 (= e!1773073 (and tp!894712 tp!894715))))

(declare-fun b!2804909 () Bool)

(declare-fun res!1168568 () Bool)

(assert (=> b!2804909 (=> (not res!1168568) (not e!1773063))))

(declare-datatypes ((List!32777 0))(
  ( (Nil!32677) (Cons!32677 (h!38097 Rule!9562) (t!229013 List!32777)) )
))
(declare-fun rules!2540 () List!32777)

(declare-fun isEmpty!18163 (List!32777) Bool)

(assert (=> b!2804909 (= res!1168568 (not (isEmpty!18163 rules!2540)))))

(declare-fun b!2804910 () Bool)

(declare-fun tp!894721 () Bool)

(declare-fun e!1773075 () Bool)

(declare-fun e!1773071 () Bool)

(declare-fun inv!21 (TokenValue!5103) Bool)

(assert (=> b!2804910 (= e!1773075 (and (inv!21 (value!157018 separatorToken!283)) e!1773071 tp!894721))))

(declare-fun tp!894720 () Bool)

(declare-fun e!1773074 () Bool)

(declare-fun b!2804911 () Bool)

(declare-fun e!1773065 () Bool)

(declare-fun inv!44346 (String!35851) Bool)

(declare-fun inv!44349 (TokenValueInjection!9646) Bool)

(assert (=> b!2804911 (= e!1773074 (and tp!894720 (inv!44346 (tag!5385 (rule!7309 (h!38096 l!5055)))) (inv!44349 (transformation!4881 (rule!7309 (h!38096 l!5055)))) e!1773065))))

(declare-fun b!2804912 () Bool)

(declare-fun tp!894717 () Bool)

(declare-fun e!1773068 () Bool)

(assert (=> b!2804912 (= e!1773071 (and tp!894717 (inv!44346 (tag!5385 (rule!7309 separatorToken!283))) (inv!44349 (transformation!4881 (rule!7309 separatorToken!283))) e!1773068))))

(declare-fun b!2804913 () Bool)

(declare-fun res!1168571 () Bool)

(assert (=> b!2804913 (=> (not res!1168571) (not e!1773063))))

(declare-datatypes ((LexerInterface!4472 0))(
  ( (LexerInterfaceExt!4469 (__x!21864 Int)) (Lexer!4470) )
))
(declare-fun thiss!19710 () LexerInterface!4472)

(declare-fun rulesProduceEachTokenIndividuallyList!1546 (LexerInterface!4472 List!32777 List!32776) Bool)

(assert (=> b!2804913 (= res!1168571 (rulesProduceEachTokenIndividuallyList!1546 thiss!19710 rules!2540 l!5055))))

(declare-fun tp!894719 () Bool)

(declare-fun e!1773066 () Bool)

(declare-fun b!2804914 () Bool)

(assert (=> b!2804914 (= e!1773066 (and (inv!21 (value!157018 (h!38096 l!5055))) e!1773074 tp!894719))))

(declare-fun b!2804915 () Bool)

(declare-fun res!1168567 () Bool)

(assert (=> b!2804915 (=> (not res!1168567) (not e!1773063))))

(declare-fun rulesInvariant!3912 (LexerInterface!4472 List!32777) Bool)

(assert (=> b!2804915 (= res!1168567 (rulesInvariant!3912 thiss!19710 rules!2540))))

(declare-fun e!1773070 () Bool)

(declare-fun b!2804916 () Bool)

(declare-fun tp!894710 () Bool)

(assert (=> b!2804916 (= e!1773070 (and tp!894710 (inv!44346 (tag!5385 (h!38097 rules!2540))) (inv!44349 (transformation!4881 (h!38097 rules!2540))) e!1773073))))

(declare-fun b!2804917 () Bool)

(assert (=> b!2804917 (= e!1773063 false)))

(declare-fun lt!1002928 () List!32776)

(declare-fun withSeparatorTokenList!130 (LexerInterface!4472 List!32776 Token!9164) List!32776)

(assert (=> b!2804917 (= lt!1002928 (withSeparatorTokenList!130 thiss!19710 l!5055 separatorToken!283))))

(declare-fun res!1168569 () Bool)

(assert (=> start!271276 (=> (not res!1168569) (not e!1773063))))

(assert (=> start!271276 (= res!1168569 ((_ is Lexer!4470) thiss!19710))))

(assert (=> start!271276 e!1773063))

(assert (=> start!271276 true))

(declare-fun e!1773062 () Bool)

(assert (=> start!271276 e!1773062))

(declare-fun e!1773067 () Bool)

(assert (=> start!271276 e!1773067))

(declare-fun inv!44350 (Token!9164) Bool)

(assert (=> start!271276 (and (inv!44350 separatorToken!283) e!1773075)))

(declare-fun b!2804918 () Bool)

(declare-fun res!1168572 () Bool)

(assert (=> b!2804918 (=> (not res!1168572) (not e!1773063))))

(declare-fun rulesProduceIndividualToken!2036 (LexerInterface!4472 List!32777 Token!9164) Bool)

(assert (=> b!2804918 (= res!1168572 (rulesProduceIndividualToken!2036 thiss!19710 rules!2540 separatorToken!283))))

(declare-fun b!2804919 () Bool)

(declare-fun tp!894714 () Bool)

(assert (=> b!2804919 (= e!1773062 (and e!1773070 tp!894714))))

(assert (=> b!2804920 (= e!1773065 (and tp!894722 tp!894716))))

(declare-fun tp!894711 () Bool)

(declare-fun b!2804921 () Bool)

(assert (=> b!2804921 (= e!1773067 (and (inv!44350 (h!38096 l!5055)) e!1773066 tp!894711))))

(assert (=> b!2804922 (= e!1773068 (and tp!894718 tp!894713))))

(assert (= (and start!271276 res!1168569) b!2804909))

(assert (= (and b!2804909 res!1168568) b!2804915))

(assert (= (and b!2804915 res!1168567) b!2804913))

(assert (= (and b!2804913 res!1168571) b!2804918))

(assert (= (and b!2804918 res!1168572) b!2804907))

(assert (= (and b!2804907 res!1168570) b!2804917))

(assert (= b!2804916 b!2804908))

(assert (= b!2804919 b!2804916))

(assert (= (and start!271276 ((_ is Cons!32677) rules!2540)) b!2804919))

(assert (= b!2804911 b!2804920))

(assert (= b!2804914 b!2804911))

(assert (= b!2804921 b!2804914))

(assert (= (and start!271276 ((_ is Cons!32676) l!5055)) b!2804921))

(assert (= b!2804912 b!2804922))

(assert (= b!2804910 b!2804912))

(assert (= start!271276 b!2804910))

(declare-fun m!3234243 () Bool)

(assert (=> b!2804913 m!3234243))

(declare-fun m!3234245 () Bool)

(assert (=> b!2804909 m!3234245))

(declare-fun m!3234247 () Bool)

(assert (=> b!2804911 m!3234247))

(declare-fun m!3234249 () Bool)

(assert (=> b!2804911 m!3234249))

(declare-fun m!3234251 () Bool)

(assert (=> b!2804921 m!3234251))

(declare-fun m!3234253 () Bool)

(assert (=> b!2804918 m!3234253))

(declare-fun m!3234255 () Bool)

(assert (=> b!2804914 m!3234255))

(declare-fun m!3234257 () Bool)

(assert (=> start!271276 m!3234257))

(declare-fun m!3234259 () Bool)

(assert (=> b!2804915 m!3234259))

(declare-fun m!3234261 () Bool)

(assert (=> b!2804910 m!3234261))

(declare-fun m!3234263 () Bool)

(assert (=> b!2804912 m!3234263))

(declare-fun m!3234265 () Bool)

(assert (=> b!2804912 m!3234265))

(declare-fun m!3234267 () Bool)

(assert (=> b!2804917 m!3234267))

(declare-fun m!3234269 () Bool)

(assert (=> b!2804916 m!3234269))

(declare-fun m!3234271 () Bool)

(assert (=> b!2804916 m!3234271))

(check-sat b_and!204495 b_and!204499 (not b!2804911) (not b_next!80433) (not b_next!80435) (not b_next!80439) (not b!2804918) (not b_next!80443) (not b!2804914) (not b_next!80437) b_and!204491 (not b_next!80441) (not b!2804912) (not b!2804910) b_and!204497 (not start!271276) (not b!2804921) (not b!2804916) (not b!2804919) (not b!2804913) (not b!2804915) (not b!2804909) b_and!204501 b_and!204493 (not b!2804917))
(check-sat b_and!204495 b_and!204499 (not b_next!80433) b_and!204501 (not b_next!80435) (not b_next!80439) (not b_next!80443) b_and!204493 (not b_next!80437) b_and!204491 (not b_next!80441) b_and!204497)
