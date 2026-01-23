; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!229952 () Bool)

(assert start!229952)

(declare-fun b!2328556 () Bool)

(declare-fun b_free!70249 () Bool)

(declare-fun b_next!70953 () Bool)

(assert (=> b!2328556 (= b_free!70249 (not b_next!70953))))

(declare-fun tp!737847 () Bool)

(declare-fun b_and!185161 () Bool)

(assert (=> b!2328556 (= tp!737847 b_and!185161)))

(declare-fun b_free!70251 () Bool)

(declare-fun b_next!70955 () Bool)

(assert (=> b!2328556 (= b_free!70251 (not b_next!70955))))

(declare-fun tp!737846 () Bool)

(declare-fun b_and!185163 () Bool)

(assert (=> b!2328556 (= tp!737846 b_and!185163)))

(declare-fun b!2328548 () Bool)

(declare-fun res!994183 () Bool)

(declare-fun e!1491955 () Bool)

(assert (=> b!2328548 (=> (not res!994183) (not e!1491955))))

(declare-datatypes ((List!27873 0))(
  ( (Nil!27775) (Cons!27775 (h!33176 (_ BitVec 16)) (t!207619 List!27873)) )
))
(declare-datatypes ((TokenValue!4600 0))(
  ( (FloatLiteralValue!9200 (text!32645 List!27873)) (TokenValueExt!4599 (__x!18359 Int)) (Broken!23000 (value!140486 List!27873)) (Object!4697) (End!4600) (Def!4600) (Underscore!4600) (Match!4600) (Else!4600) (Error!4600) (Case!4600) (If!4600) (Extends!4600) (Abstract!4600) (Class!4600) (Val!4600) (DelimiterValue!9200 (del!4660 List!27873)) (KeywordValue!4606 (value!140487 List!27873)) (CommentValue!9200 (value!140488 List!27873)) (WhitespaceValue!9200 (value!140489 List!27873)) (IndentationValue!4600 (value!140490 List!27873)) (String!30369) (Int32!4600) (Broken!23001 (value!140491 List!27873)) (Boolean!4601) (Unit!40572) (OperatorValue!4603 (op!4660 List!27873)) (IdentifierValue!9200 (value!140492 List!27873)) (IdentifierValue!9201 (value!140493 List!27873)) (WhitespaceValue!9201 (value!140494 List!27873)) (True!9200) (False!9200) (Broken!23002 (value!140495 List!27873)) (Broken!23003 (value!140496 List!27873)) (True!9201) (RightBrace!4600) (RightBracket!4600) (Colon!4600) (Null!4600) (Comma!4600) (LeftBracket!4600) (False!9201) (LeftBrace!4600) (ImaginaryLiteralValue!4600 (text!32646 List!27873)) (StringLiteralValue!13800 (value!140497 List!27873)) (EOFValue!4600 (value!140498 List!27873)) (IdentValue!4600 (value!140499 List!27873)) (DelimiterValue!9201 (value!140500 List!27873)) (DedentValue!4600 (value!140501 List!27873)) (NewLineValue!4600 (value!140502 List!27873)) (IntegerValue!13800 (value!140503 (_ BitVec 32)) (text!32647 List!27873)) (IntegerValue!13801 (value!140504 Int) (text!32648 List!27873)) (Times!4600) (Or!4600) (Equal!4600) (Minus!4600) (Broken!23004 (value!140505 List!27873)) (And!4600) (Div!4600) (LessEqual!4600) (Mod!4600) (Concat!11406) (Not!4600) (Plus!4600) (SpaceValue!4600 (value!140506 List!27873)) (IntegerValue!13802 (value!140507 Int) (text!32649 List!27873)) (StringLiteralValue!13801 (text!32650 List!27873)) (FloatLiteralValue!9201 (text!32651 List!27873)) (BytesLiteralValue!4600 (value!140508 List!27873)) (CommentValue!9201 (value!140509 List!27873)) (StringLiteralValue!13802 (value!140510 List!27873)) (ErrorTokenValue!4600 (msg!4661 List!27873)) )
))
(declare-datatypes ((C!13770 0))(
  ( (C!13771 (val!8041 Int)) )
))
(declare-datatypes ((Regex!6806 0))(
  ( (ElementMatch!6806 (c!369918 C!13770)) (Concat!11407 (regOne!14124 Regex!6806) (regTwo!14124 Regex!6806)) (EmptyExpr!6806) (Star!6806 (reg!7135 Regex!6806)) (EmptyLang!6806) (Union!6806 (regOne!14125 Regex!6806) (regTwo!14125 Regex!6806)) )
))
(declare-datatypes ((String!30370 0))(
  ( (String!30371 (value!140511 String)) )
))
(declare-datatypes ((List!27874 0))(
  ( (Nil!27776) (Cons!27776 (h!33177 C!13770) (t!207620 List!27874)) )
))
(declare-datatypes ((IArray!18217 0))(
  ( (IArray!18218 (innerList!9166 List!27874)) )
))
(declare-datatypes ((Conc!9106 0))(
  ( (Node!9106 (left!21078 Conc!9106) (right!21408 Conc!9106) (csize!18442 Int) (cheight!9317 Int)) (Leaf!13383 (xs!12086 IArray!18217) (csize!18443 Int)) (Empty!9106) )
))
(declare-datatypes ((BalanceConc!17824 0))(
  ( (BalanceConc!17825 (c!369919 Conc!9106)) )
))
(declare-datatypes ((TokenValueInjection!8720 0))(
  ( (TokenValueInjection!8721 (toValue!6254 Int) (toChars!6113 Int)) )
))
(declare-datatypes ((Rule!8652 0))(
  ( (Rule!8653 (regex!4426 Regex!6806) (tag!4916 String!30370) (isSeparator!4426 Bool) (transformation!4426 TokenValueInjection!8720)) )
))
(declare-datatypes ((List!27875 0))(
  ( (Nil!27777) (Cons!27777 (h!33178 Rule!8652) (t!207621 List!27875)) )
))
(declare-fun rules!853 () List!27875)

(declare-datatypes ((Token!8330 0))(
  ( (Token!8331 (value!140512 TokenValue!4600) (rule!6782 Rule!8652) (size!22009 Int) (originalCharacters!5196 List!27874)) )
))
(declare-datatypes ((List!27876 0))(
  ( (Nil!27778) (Cons!27778 (h!33179 Token!8330) (t!207622 List!27876)) )
))
(declare-datatypes ((IArray!18219 0))(
  ( (IArray!18220 (innerList!9167 List!27876)) )
))
(declare-datatypes ((Conc!9107 0))(
  ( (Node!9107 (left!21079 Conc!9107) (right!21409 Conc!9107) (csize!18444 Int) (cheight!9318 Int)) (Leaf!13384 (xs!12087 IArray!18219) (csize!18445 Int)) (Empty!9107) )
))
(declare-datatypes ((BalanceConc!17826 0))(
  ( (BalanceConc!17827 (c!369920 Conc!9107)) )
))
(declare-fun tokens!300 () BalanceConc!17826)

(declare-datatypes ((LexerInterface!4023 0))(
  ( (LexerInterfaceExt!4020 (__x!18360 Int)) (Lexer!4021) )
))
(declare-fun rulesProduceEachTokenIndividually!931 (LexerInterface!4023 List!27875 BalanceConc!17826) Bool)

(assert (=> b!2328548 (= res!994183 (rulesProduceEachTokenIndividually!931 Lexer!4021 rules!853 tokens!300))))

(declare-fun b!2328549 () Bool)

(declare-fun e!1491957 () Bool)

(declare-fun e!1491953 () Bool)

(declare-fun tp!737848 () Bool)

(assert (=> b!2328549 (= e!1491957 (and e!1491953 tp!737848))))

(declare-fun b!2328550 () Bool)

(declare-fun res!994182 () Bool)

(assert (=> b!2328550 (=> (not res!994182) (not e!1491955))))

(declare-fun separableTokens!300 (LexerInterface!4023 BalanceConc!17826 List!27875) Bool)

(assert (=> b!2328550 (= res!994182 (not (separableTokens!300 Lexer!4021 tokens!300 rules!853)))))

(declare-fun res!994185 () Bool)

(assert (=> start!229952 (=> (not res!994185) (not e!1491955))))

(declare-fun isEmpty!15829 (List!27875) Bool)

(assert (=> start!229952 (= res!994185 (not (isEmpty!15829 rules!853)))))

(assert (=> start!229952 e!1491955))

(assert (=> start!229952 e!1491957))

(declare-fun e!1491952 () Bool)

(declare-fun inv!37823 (BalanceConc!17826) Bool)

(assert (=> start!229952 (and (inv!37823 tokens!300) e!1491952)))

(declare-fun b!2328551 () Bool)

(assert (=> b!2328551 (= e!1491955 false)))

(declare-fun b!2328552 () Bool)

(declare-fun tp!737844 () Bool)

(declare-fun inv!37824 (Conc!9107) Bool)

(assert (=> b!2328552 (= e!1491952 (and (inv!37824 (c!369920 tokens!300)) tp!737844))))

(declare-fun tp!737845 () Bool)

(declare-fun b!2328553 () Bool)

(declare-fun e!1491954 () Bool)

(declare-fun inv!37820 (String!30370) Bool)

(declare-fun inv!37825 (TokenValueInjection!8720) Bool)

(assert (=> b!2328553 (= e!1491953 (and tp!737845 (inv!37820 (tag!4916 (h!33178 rules!853))) (inv!37825 (transformation!4426 (h!33178 rules!853))) e!1491954))))

(declare-fun b!2328554 () Bool)

(declare-fun res!994184 () Bool)

(assert (=> b!2328554 (=> (not res!994184) (not e!1491955))))

(declare-fun rulesProduceEachTokenIndividuallyList!1353 (LexerInterface!4023 List!27875 List!27876) Bool)

(declare-fun list!11042 (BalanceConc!17826) List!27876)

(assert (=> b!2328554 (= res!994184 (rulesProduceEachTokenIndividuallyList!1353 Lexer!4021 rules!853 (list!11042 tokens!300)))))

(declare-fun b!2328555 () Bool)

(declare-fun res!994181 () Bool)

(assert (=> b!2328555 (=> (not res!994181) (not e!1491955))))

(declare-fun rulesInvariant!3523 (LexerInterface!4023 List!27875) Bool)

(assert (=> b!2328555 (= res!994181 (rulesInvariant!3523 Lexer!4021 rules!853))))

(assert (=> b!2328556 (= e!1491954 (and tp!737847 tp!737846))))

(assert (= (and start!229952 res!994185) b!2328555))

(assert (= (and b!2328555 res!994181) b!2328554))

(assert (= (and b!2328554 res!994184) b!2328548))

(assert (= (and b!2328548 res!994183) b!2328550))

(assert (= (and b!2328550 res!994182) b!2328551))

(assert (= b!2328553 b!2328556))

(assert (= b!2328549 b!2328553))

(assert (= (and start!229952 (is-Cons!27777 rules!853)) b!2328549))

(assert (= start!229952 b!2328552))

(declare-fun m!2759065 () Bool)

(assert (=> b!2328553 m!2759065))

(declare-fun m!2759067 () Bool)

(assert (=> b!2328553 m!2759067))

(declare-fun m!2759069 () Bool)

(assert (=> b!2328548 m!2759069))

(declare-fun m!2759071 () Bool)

(assert (=> b!2328555 m!2759071))

(declare-fun m!2759073 () Bool)

(assert (=> b!2328552 m!2759073))

(declare-fun m!2759075 () Bool)

(assert (=> b!2328550 m!2759075))

(declare-fun m!2759077 () Bool)

(assert (=> start!229952 m!2759077))

(declare-fun m!2759079 () Bool)

(assert (=> start!229952 m!2759079))

(declare-fun m!2759081 () Bool)

(assert (=> b!2328554 m!2759081))

(assert (=> b!2328554 m!2759081))

(declare-fun m!2759083 () Bool)

(assert (=> b!2328554 m!2759083))

(push 1)

(assert (not b!2328550))

(assert (not b!2328552))

(assert (not start!229952))

(assert (not b_next!70953))

(assert b_and!185163)

(assert (not b!2328549))

(assert (not b!2328548))

(assert (not b_next!70955))

(assert (not b!2328554))

(assert (not b!2328555))

(assert b_and!185161)

(assert (not b!2328553))

(check-sat)

(pop 1)

(push 1)

(assert b_and!185161)

(assert b_and!185163)

(assert (not b_next!70955))

(assert (not b_next!70953))

(check-sat)

(pop 1)

