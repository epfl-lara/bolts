; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!275134 () Bool)

(assert start!275134)

(declare-fun b!2831959 () Bool)

(declare-fun b_free!81445 () Bool)

(declare-fun b_next!82149 () Bool)

(assert (=> b!2831959 (= b_free!81445 (not b_next!82149))))

(declare-fun tp!905129 () Bool)

(declare-fun b_and!207139 () Bool)

(assert (=> b!2831959 (= tp!905129 b_and!207139)))

(declare-fun b_free!81447 () Bool)

(declare-fun b_next!82151 () Bool)

(assert (=> b!2831959 (= b_free!81447 (not b_next!82151))))

(declare-fun tp!905131 () Bool)

(declare-fun b_and!207141 () Bool)

(assert (=> b!2831959 (= tp!905131 b_and!207141)))

(declare-fun b!2831956 () Bool)

(declare-fun b_free!81449 () Bool)

(declare-fun b_next!82153 () Bool)

(assert (=> b!2831956 (= b_free!81449 (not b_next!82153))))

(declare-fun tp!905130 () Bool)

(declare-fun b_and!207143 () Bool)

(assert (=> b!2831956 (= tp!905130 b_and!207143)))

(declare-fun b_free!81451 () Bool)

(declare-fun b_next!82155 () Bool)

(assert (=> b!2831956 (= b_free!81451 (not b_next!82155))))

(declare-fun tp!905128 () Bool)

(declare-fun b_and!207145 () Bool)

(assert (=> b!2831956 (= tp!905128 b_and!207145)))

(declare-fun b!2831949 () Bool)

(declare-fun e!1792992 () Bool)

(assert (=> b!2831949 (= e!1792992 (not true))))

(declare-datatypes ((LexerInterface!4595 0))(
  ( (LexerInterfaceExt!4592 (__x!22208 Int)) (Lexer!4593) )
))
(declare-fun thiss!11007 () LexerInterface!4595)

(declare-datatypes ((List!33509 0))(
  ( (Nil!33385) (Cons!33385 (h!38805 (_ BitVec 16)) (t!231458 List!33509)) )
))
(declare-datatypes ((TokenValue!5235 0))(
  ( (FloatLiteralValue!10470 (text!37090 List!33509)) (TokenValueExt!5234 (__x!22209 Int)) (Broken!26175 (value!160987 List!33509)) (Object!5358) (End!5235) (Def!5235) (Underscore!5235) (Match!5235) (Else!5235) (Error!5235) (Case!5235) (If!5235) (Extends!5235) (Abstract!5235) (Class!5235) (Val!5235) (DelimiterValue!10470 (del!5295 List!33509)) (KeywordValue!5241 (value!160988 List!33509)) (CommentValue!10470 (value!160989 List!33509)) (WhitespaceValue!10470 (value!160990 List!33509)) (IndentationValue!5235 (value!160991 List!33509)) (String!36698) (Int32!5235) (Broken!26176 (value!160992 List!33509)) (Boolean!5236) (Unit!47371) (OperatorValue!5238 (op!5295 List!33509)) (IdentifierValue!10470 (value!160993 List!33509)) (IdentifierValue!10471 (value!160994 List!33509)) (WhitespaceValue!10471 (value!160995 List!33509)) (True!10470) (False!10470) (Broken!26177 (value!160996 List!33509)) (Broken!26178 (value!160997 List!33509)) (True!10471) (RightBrace!5235) (RightBracket!5235) (Colon!5235) (Null!5235) (Comma!5235) (LeftBracket!5235) (False!10471) (LeftBrace!5235) (ImaginaryLiteralValue!5235 (text!37091 List!33509)) (StringLiteralValue!15705 (value!160998 List!33509)) (EOFValue!5235 (value!160999 List!33509)) (IdentValue!5235 (value!161000 List!33509)) (DelimiterValue!10471 (value!161001 List!33509)) (DedentValue!5235 (value!161002 List!33509)) (NewLineValue!5235 (value!161003 List!33509)) (IntegerValue!15705 (value!161004 (_ BitVec 32)) (text!37092 List!33509)) (IntegerValue!15706 (value!161005 Int) (text!37093 List!33509)) (Times!5235) (Or!5235) (Equal!5235) (Minus!5235) (Broken!26179 (value!161006 List!33509)) (And!5235) (Div!5235) (LessEqual!5235) (Mod!5235) (Concat!13631) (Not!5235) (Plus!5235) (SpaceValue!5235 (value!161007 List!33509)) (IntegerValue!15707 (value!161008 Int) (text!37094 List!33509)) (StringLiteralValue!15706 (text!37095 List!33509)) (FloatLiteralValue!10471 (text!37096 List!33509)) (BytesLiteralValue!5235 (value!161009 List!33509)) (CommentValue!10471 (value!161010 List!33509)) (StringLiteralValue!15707 (value!161011 List!33509)) (ErrorTokenValue!5235 (msg!5296 List!33509)) )
))
(declare-datatypes ((C!16974 0))(
  ( (C!16975 (val!10499 Int)) )
))
(declare-datatypes ((List!33510 0))(
  ( (Nil!33386) (Cons!33386 (h!38806 C!16974) (t!231459 List!33510)) )
))
(declare-datatypes ((IArray!20735 0))(
  ( (IArray!20736 (innerList!10425 List!33510)) )
))
(declare-datatypes ((Conc!10365 0))(
  ( (Node!10365 (left!25191 Conc!10365) (right!25521 Conc!10365) (csize!20960 Int) (cheight!10576 Int)) (Leaf!15776 (xs!13477 IArray!20735) (csize!20961 Int)) (Empty!10365) )
))
(declare-datatypes ((Regex!8396 0))(
  ( (ElementMatch!8396 (c!457941 C!16974)) (Concat!13632 (regOne!17304 Regex!8396) (regTwo!17304 Regex!8396)) (EmptyExpr!8396) (Star!8396 (reg!8725 Regex!8396)) (EmptyLang!8396) (Union!8396 (regOne!17305 Regex!8396) (regTwo!17305 Regex!8396)) )
))
(declare-datatypes ((String!36699 0))(
  ( (String!36700 (value!161012 String)) )
))
(declare-datatypes ((BalanceConc!20368 0))(
  ( (BalanceConc!20369 (c!457942 Conc!10365)) )
))
(declare-datatypes ((TokenValueInjection!9898 0))(
  ( (TokenValueInjection!9899 (toValue!7035 Int) (toChars!6894 Int)) )
))
(declare-datatypes ((Rule!9810 0))(
  ( (Rule!9811 (regex!5005 Regex!8396) (tag!5509 String!36699) (isSeparator!5005 Bool) (transformation!5005 TokenValueInjection!9898)) )
))
(declare-datatypes ((Token!9412 0))(
  ( (Token!9413 (value!161013 TokenValue!5235) (rule!7433 Rule!9810) (size!25982 Int) (originalCharacters!5737 List!33510)) )
))
(declare-datatypes ((List!33511 0))(
  ( (Nil!33387) (Cons!33387 (h!38807 Token!9412) (t!231460 List!33511)) )
))
(declare-fun l!4019 () List!33511)

(declare-fun lt!1010281 () Bool)

(declare-datatypes ((List!33512 0))(
  ( (Nil!33388) (Cons!33388 (h!38808 Rule!9810) (t!231461 List!33512)) )
))
(declare-fun rules!1047 () List!33512)

(declare-fun separableTokensPredicate!914 (LexerInterface!4595 Token!9412 Token!9412 List!33512) Bool)

(assert (=> b!2831949 (= lt!1010281 (separableTokensPredicate!914 thiss!11007 (h!38807 l!4019) (h!38807 (t!231460 l!4019)) rules!1047))))

(declare-fun e!1792991 () Bool)

(assert (=> b!2831949 e!1792991))

(declare-fun res!1178844 () Bool)

(assert (=> b!2831949 (=> (not res!1178844) (not e!1792991))))

(declare-fun rulesProduceIndividualToken!2127 (LexerInterface!4595 List!33512 Token!9412) Bool)

(assert (=> b!2831949 (= res!1178844 (rulesProduceIndividualToken!2127 thiss!11007 rules!1047 (h!38807 (t!231460 l!4019))))))

(declare-datatypes ((Unit!47372 0))(
  ( (Unit!47373) )
))
(declare-fun lt!1010280 () Unit!47372)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!745 (LexerInterface!4595 List!33512 List!33511 Token!9412) Unit!47372)

(assert (=> b!2831949 (= lt!1010280 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!745 thiss!11007 rules!1047 l!4019 (h!38807 (t!231460 l!4019))))))

(assert (=> b!2831949 (rulesProduceIndividualToken!2127 thiss!11007 rules!1047 (h!38807 l!4019))))

(declare-fun lt!1010282 () Unit!47372)

(assert (=> b!2831949 (= lt!1010282 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!745 thiss!11007 rules!1047 l!4019 (h!38807 l!4019)))))

(declare-fun b!2831950 () Bool)

(declare-fun res!1178841 () Bool)

(assert (=> b!2831950 (=> (not res!1178841) (not e!1792992))))

(declare-fun rulesInvariant!4011 (LexerInterface!4595 List!33512) Bool)

(assert (=> b!2831950 (= res!1178841 (rulesInvariant!4011 thiss!11007 rules!1047))))

(declare-fun b!2831951 () Bool)

(declare-fun res!1178845 () Bool)

(assert (=> b!2831951 (=> (not res!1178845) (not e!1792992))))

(declare-fun isEmpty!18410 (List!33512) Bool)

(assert (=> b!2831951 (= res!1178845 (not (isEmpty!18410 rules!1047)))))

(declare-fun b!2831952 () Bool)

(declare-fun res!1178843 () Bool)

(assert (=> b!2831952 (=> (not res!1178843) (not e!1792992))))

(assert (=> b!2831952 (= res!1178843 (and (is-Cons!33387 l!4019) (is-Cons!33387 (t!231460 l!4019))))))

(declare-fun res!1178847 () Bool)

(assert (=> start!275134 (=> (not res!1178847) (not e!1792992))))

(assert (=> start!275134 (= res!1178847 (is-Lexer!4593 thiss!11007))))

(assert (=> start!275134 e!1792992))

(assert (=> start!275134 true))

(declare-fun e!1792988 () Bool)

(assert (=> start!275134 e!1792988))

(declare-fun e!1792993 () Bool)

(assert (=> start!275134 e!1792993))

(declare-fun b!2831953 () Bool)

(declare-fun res!1178842 () Bool)

(assert (=> b!2831953 (=> (not res!1178842) (not e!1792992))))

(declare-datatypes ((IArray!20737 0))(
  ( (IArray!20738 (innerList!10426 List!33511)) )
))
(declare-datatypes ((Conc!10366 0))(
  ( (Node!10366 (left!25192 Conc!10366) (right!25522 Conc!10366) (csize!20962 Int) (cheight!10577 Int)) (Leaf!15777 (xs!13478 IArray!20737) (csize!20963 Int)) (Empty!10366) )
))
(declare-datatypes ((BalanceConc!20370 0))(
  ( (BalanceConc!20371 (c!457943 Conc!10366)) )
))
(declare-fun rulesProduceEachTokenIndividually!1111 (LexerInterface!4595 List!33512 BalanceConc!20370) Bool)

(declare-fun seqFromList!3251 (List!33511) BalanceConc!20370)

(assert (=> b!2831953 (= res!1178842 (rulesProduceEachTokenIndividually!1111 thiss!11007 rules!1047 (seqFromList!3251 l!4019)))))

(declare-fun b!2831954 () Bool)

(declare-fun e!1792990 () Bool)

(declare-fun tp!905134 () Bool)

(assert (=> b!2831954 (= e!1792988 (and e!1792990 tp!905134))))

(declare-fun b!2831955 () Bool)

(declare-fun size!25983 (BalanceConc!20368) Int)

(declare-fun charsOf!3101 (Token!9412) BalanceConc!20368)

(assert (=> b!2831955 (= e!1792991 (> (size!25983 (charsOf!3101 (h!38807 (t!231460 l!4019)))) 0))))

(declare-fun e!1792995 () Bool)

(assert (=> b!2831956 (= e!1792995 (and tp!905130 tp!905128))))

(declare-fun b!2831957 () Bool)

(declare-fun res!1178846 () Bool)

(assert (=> b!2831957 (=> (not res!1178846) (not e!1792992))))

(declare-fun rulesProduceEachTokenIndividuallyList!1638 (LexerInterface!4595 List!33512 List!33511) Bool)

(assert (=> b!2831957 (= res!1178846 (rulesProduceEachTokenIndividuallyList!1638 thiss!11007 rules!1047 l!4019))))

(declare-fun e!1792989 () Bool)

(declare-fun b!2831958 () Bool)

(declare-fun e!1792984 () Bool)

(declare-fun tp!905135 () Bool)

(declare-fun inv!21 (TokenValue!5235) Bool)

(assert (=> b!2831958 (= e!1792984 (and (inv!21 (value!161013 (h!38807 l!4019))) e!1792989 tp!905135))))

(declare-fun e!1792986 () Bool)

(assert (=> b!2831959 (= e!1792986 (and tp!905129 tp!905131))))

(declare-fun tp!905132 () Bool)

(declare-fun b!2831960 () Bool)

(declare-fun inv!45344 (Token!9412) Bool)

(assert (=> b!2831960 (= e!1792993 (and (inv!45344 (h!38807 l!4019)) e!1792984 tp!905132))))

(declare-fun b!2831961 () Bool)

(declare-fun tp!905127 () Bool)

(declare-fun inv!45341 (String!36699) Bool)

(declare-fun inv!45345 (TokenValueInjection!9898) Bool)

(assert (=> b!2831961 (= e!1792989 (and tp!905127 (inv!45341 (tag!5509 (rule!7433 (h!38807 l!4019)))) (inv!45345 (transformation!5005 (rule!7433 (h!38807 l!4019)))) e!1792995))))

(declare-fun tp!905133 () Bool)

(declare-fun b!2831962 () Bool)

(assert (=> b!2831962 (= e!1792990 (and tp!905133 (inv!45341 (tag!5509 (h!38808 rules!1047))) (inv!45345 (transformation!5005 (h!38808 rules!1047))) e!1792986))))

(assert (= (and start!275134 res!1178847) b!2831951))

(assert (= (and b!2831951 res!1178845) b!2831950))

(assert (= (and b!2831950 res!1178841) b!2831957))

(assert (= (and b!2831957 res!1178846) b!2831953))

(assert (= (and b!2831953 res!1178842) b!2831952))

(assert (= (and b!2831952 res!1178843) b!2831949))

(assert (= (and b!2831949 res!1178844) b!2831955))

(assert (= b!2831962 b!2831959))

(assert (= b!2831954 b!2831962))

(assert (= (and start!275134 (is-Cons!33388 rules!1047)) b!2831954))

(assert (= b!2831961 b!2831956))

(assert (= b!2831958 b!2831961))

(assert (= b!2831960 b!2831958))

(assert (= (and start!275134 (is-Cons!33387 l!4019)) b!2831960))

(declare-fun m!3261595 () Bool)

(assert (=> b!2831951 m!3261595))

(declare-fun m!3261597 () Bool)

(assert (=> b!2831955 m!3261597))

(assert (=> b!2831955 m!3261597))

(declare-fun m!3261599 () Bool)

(assert (=> b!2831955 m!3261599))

(declare-fun m!3261601 () Bool)

(assert (=> b!2831960 m!3261601))

(declare-fun m!3261603 () Bool)

(assert (=> b!2831949 m!3261603))

(declare-fun m!3261605 () Bool)

(assert (=> b!2831949 m!3261605))

(declare-fun m!3261607 () Bool)

(assert (=> b!2831949 m!3261607))

(declare-fun m!3261609 () Bool)

(assert (=> b!2831949 m!3261609))

(declare-fun m!3261611 () Bool)

(assert (=> b!2831949 m!3261611))

(declare-fun m!3261613 () Bool)

(assert (=> b!2831958 m!3261613))

(declare-fun m!3261615 () Bool)

(assert (=> b!2831961 m!3261615))

(declare-fun m!3261617 () Bool)

(assert (=> b!2831961 m!3261617))

(declare-fun m!3261619 () Bool)

(assert (=> b!2831950 m!3261619))

(declare-fun m!3261621 () Bool)

(assert (=> b!2831953 m!3261621))

(assert (=> b!2831953 m!3261621))

(declare-fun m!3261623 () Bool)

(assert (=> b!2831953 m!3261623))

(declare-fun m!3261625 () Bool)

(assert (=> b!2831962 m!3261625))

(declare-fun m!3261627 () Bool)

(assert (=> b!2831962 m!3261627))

(declare-fun m!3261629 () Bool)

(assert (=> b!2831957 m!3261629))

(push 1)

(assert (not b!2831962))

(assert (not b!2831950))

(assert (not b_next!82153))

(assert (not b!2831954))

(assert b_and!207143)

(assert (not b_next!82151))

(assert (not b!2831953))

(assert (not b!2831960))

(assert b_and!207145)

(assert (not b!2831958))

(assert (not b!2831955))

(assert (not b!2831951))

(assert (not b!2831961))

(assert (not b!2831949))

(assert (not b_next!82155))

(assert (not b!2831957))

(assert b_and!207141)

(assert b_and!207139)

(assert (not b_next!82149))

(check-sat)

(pop 1)

(push 1)

(assert b_and!207145)

(assert (not b_next!82153))

(assert (not b_next!82155))

(assert b_and!207143)

(assert (not b_next!82151))

(assert b_and!207141)

(assert b_and!207139)

(assert (not b_next!82149))

(check-sat)

(pop 1)

