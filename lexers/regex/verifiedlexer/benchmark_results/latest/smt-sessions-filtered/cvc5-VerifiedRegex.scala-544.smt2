; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!14928 () Bool)

(assert start!14928)

(declare-fun b!142168 () Bool)

(declare-fun b_free!4765 () Bool)

(declare-fun b_next!4765 () Bool)

(assert (=> b!142168 (= b_free!4765 (not b_next!4765))))

(declare-fun tp!74977 () Bool)

(declare-fun b_and!7361 () Bool)

(assert (=> b!142168 (= tp!74977 b_and!7361)))

(declare-fun b_free!4767 () Bool)

(declare-fun b_next!4767 () Bool)

(assert (=> b!142168 (= b_free!4767 (not b_next!4767))))

(declare-fun tp!74980 () Bool)

(declare-fun b_and!7363 () Bool)

(assert (=> b!142168 (= tp!74980 b_and!7363)))

(declare-fun b!142166 () Bool)

(declare-fun b_free!4769 () Bool)

(declare-fun b_next!4769 () Bool)

(assert (=> b!142166 (= b_free!4769 (not b_next!4769))))

(declare-fun tp!74983 () Bool)

(declare-fun b_and!7365 () Bool)

(assert (=> b!142166 (= tp!74983 b_and!7365)))

(declare-fun b_free!4771 () Bool)

(declare-fun b_next!4771 () Bool)

(assert (=> b!142166 (= b_free!4771 (not b_next!4771))))

(declare-fun tp!74982 () Bool)

(declare-fun b_and!7367 () Bool)

(assert (=> b!142166 (= tp!74982 b_and!7367)))

(declare-fun b!142159 () Bool)

(declare-fun e!83982 () Bool)

(declare-datatypes ((List!2437 0))(
  ( (Nil!2427) (Cons!2427 (h!7824 (_ BitVec 16)) (t!23731 List!2437)) )
))
(declare-datatypes ((TokenValue!432 0))(
  ( (FloatLiteralValue!864 (text!3469 List!2437)) (TokenValueExt!431 (__x!2351 Int)) (Broken!2160 (value!15976 List!2437)) (Object!441) (End!432) (Def!432) (Underscore!432) (Match!432) (Else!432) (Error!432) (Case!432) (If!432) (Extends!432) (Abstract!432) (Class!432) (Val!432) (DelimiterValue!864 (del!492 List!2437)) (KeywordValue!438 (value!15977 List!2437)) (CommentValue!864 (value!15978 List!2437)) (WhitespaceValue!864 (value!15979 List!2437)) (IndentationValue!432 (value!15980 List!2437)) (String!3241) (Int32!432) (Broken!2161 (value!15981 List!2437)) (Boolean!433) (Unit!1820) (OperatorValue!435 (op!492 List!2437)) (IdentifierValue!864 (value!15982 List!2437)) (IdentifierValue!865 (value!15983 List!2437)) (WhitespaceValue!865 (value!15984 List!2437)) (True!864) (False!864) (Broken!2162 (value!15985 List!2437)) (Broken!2163 (value!15986 List!2437)) (True!865) (RightBrace!432) (RightBracket!432) (Colon!432) (Null!432) (Comma!432) (LeftBracket!432) (False!865) (LeftBrace!432) (ImaginaryLiteralValue!432 (text!3470 List!2437)) (StringLiteralValue!1296 (value!15987 List!2437)) (EOFValue!432 (value!15988 List!2437)) (IdentValue!432 (value!15989 List!2437)) (DelimiterValue!865 (value!15990 List!2437)) (DedentValue!432 (value!15991 List!2437)) (NewLineValue!432 (value!15992 List!2437)) (IntegerValue!1296 (value!15993 (_ BitVec 32)) (text!3471 List!2437)) (IntegerValue!1297 (value!15994 Int) (text!3472 List!2437)) (Times!432) (Or!432) (Equal!432) (Minus!432) (Broken!2164 (value!15995 List!2437)) (And!432) (Div!432) (LessEqual!432) (Mod!432) (Concat!1066) (Not!432) (Plus!432) (SpaceValue!432 (value!15996 List!2437)) (IntegerValue!1298 (value!15997 Int) (text!3473 List!2437)) (StringLiteralValue!1297 (text!3474 List!2437)) (FloatLiteralValue!865 (text!3475 List!2437)) (BytesLiteralValue!432 (value!15998 List!2437)) (CommentValue!865 (value!15999 List!2437)) (StringLiteralValue!1298 (value!16000 List!2437)) (ErrorTokenValue!432 (msg!493 List!2437)) )
))
(declare-datatypes ((C!2190 0))(
  ( (C!2191 (val!981 Int)) )
))
(declare-datatypes ((List!2438 0))(
  ( (Nil!2428) (Cons!2428 (h!7825 C!2190) (t!23732 List!2438)) )
))
(declare-datatypes ((IArray!1285 0))(
  ( (IArray!1286 (innerList!700 List!2438)) )
))
(declare-datatypes ((Conc!642 0))(
  ( (Node!642 (left!1838 Conc!642) (right!2168 Conc!642) (csize!1514 Int) (cheight!853 Int)) (Leaf!1187 (xs!3237 IArray!1285) (csize!1515 Int)) (Empty!642) )
))
(declare-datatypes ((BalanceConc!1292 0))(
  ( (BalanceConc!1293 (c!29417 Conc!642)) )
))
(declare-datatypes ((Regex!634 0))(
  ( (ElementMatch!634 (c!29418 C!2190)) (Concat!1067 (regOne!1780 Regex!634) (regTwo!1780 Regex!634)) (EmptyExpr!634) (Star!634 (reg!963 Regex!634)) (EmptyLang!634) (Union!634 (regOne!1781 Regex!634) (regTwo!1781 Regex!634)) )
))
(declare-datatypes ((String!3242 0))(
  ( (String!3243 (value!16001 String)) )
))
(declare-datatypes ((TokenValueInjection!636 0))(
  ( (TokenValueInjection!637 (toValue!1025 Int) (toChars!884 Int)) )
))
(declare-datatypes ((Rule!620 0))(
  ( (Rule!621 (regex!410 Regex!634) (tag!588 String!3242) (isSeparator!410 Bool) (transformation!410 TokenValueInjection!636)) )
))
(declare-datatypes ((Token!564 0))(
  ( (Token!565 (value!16002 TokenValue!432) (rule!917 Rule!620) (size!2122 Int) (originalCharacters!453 List!2438)) )
))
(declare-datatypes ((List!2439 0))(
  ( (Nil!2429) (Cons!2429 (h!7826 Token!564) (t!23733 List!2439)) )
))
(declare-fun tokens!465 () List!2439)

(declare-fun e!83981 () Bool)

(declare-fun tp!74981 () Bool)

(declare-fun inv!3201 (Token!564) Bool)

(assert (=> b!142159 (= e!83981 (and (inv!3201 (h!7826 tokens!465)) e!83982 tp!74981))))

(declare-fun b!142160 () Bool)

(declare-fun res!65810 () Bool)

(declare-fun e!83974 () Bool)

(assert (=> b!142160 (=> (not res!65810) (not e!83974))))

(declare-datatypes ((LexerInterface!296 0))(
  ( (LexerInterfaceExt!293 (__x!2352 Int)) (Lexer!294) )
))
(declare-fun thiss!17480 () LexerInterface!296)

(declare-datatypes ((List!2440 0))(
  ( (Nil!2430) (Cons!2430 (h!7827 Rule!620) (t!23734 List!2440)) )
))
(declare-fun rules!1920 () List!2440)

(declare-fun rulesInvariant!262 (LexerInterface!296 List!2440) Bool)

(assert (=> b!142160 (= res!65810 (rulesInvariant!262 thiss!17480 rules!1920))))

(declare-fun b!142161 () Bool)

(declare-fun res!65812 () Bool)

(assert (=> b!142161 (=> (not res!65812) (not e!83974))))

(declare-fun isEmpty!931 (List!2440) Bool)

(assert (=> b!142161 (= res!65812 (not (isEmpty!931 rules!1920)))))

(declare-fun tp!74984 () Bool)

(declare-fun b!142162 () Bool)

(declare-fun e!83984 () Bool)

(declare-fun e!83978 () Bool)

(declare-fun inv!3198 (String!3242) Bool)

(declare-fun inv!3202 (TokenValueInjection!636) Bool)

(assert (=> b!142162 (= e!83984 (and tp!74984 (inv!3198 (tag!588 (h!7827 rules!1920))) (inv!3202 (transformation!410 (h!7827 rules!1920))) e!83978))))

(declare-fun b!142163 () Bool)

(assert (=> b!142163 (= e!83974 false)))

(declare-fun lt!41229 () Bool)

(declare-datatypes ((IArray!1287 0))(
  ( (IArray!1288 (innerList!701 List!2439)) )
))
(declare-datatypes ((Conc!643 0))(
  ( (Node!643 (left!1839 Conc!643) (right!2169 Conc!643) (csize!1516 Int) (cheight!854 Int)) (Leaf!1188 (xs!3238 IArray!1287) (csize!1517 Int)) (Empty!643) )
))
(declare-datatypes ((BalanceConc!1294 0))(
  ( (BalanceConc!1295 (c!29419 Conc!643)) )
))
(declare-fun rulesProduceEachTokenIndividually!88 (LexerInterface!296 List!2440 BalanceConc!1294) Bool)

(declare-fun seqFromList!223 (List!2439) BalanceConc!1294)

(assert (=> b!142163 (= lt!41229 (rulesProduceEachTokenIndividually!88 thiss!17480 rules!1920 (seqFromList!223 tokens!465)))))

(declare-fun b!142164 () Bool)

(declare-fun e!83975 () Bool)

(declare-fun tp!74978 () Bool)

(assert (=> b!142164 (= e!83975 (and e!83984 tp!74978))))

(declare-fun e!83980 () Bool)

(declare-fun tp!74979 () Bool)

(declare-fun b!142165 () Bool)

(declare-fun inv!21 (TokenValue!432) Bool)

(assert (=> b!142165 (= e!83982 (and (inv!21 (value!16002 (h!7826 tokens!465))) e!83980 tp!74979))))

(declare-fun e!83977 () Bool)

(assert (=> b!142166 (= e!83977 (and tp!74983 tp!74982))))

(declare-fun res!65811 () Bool)

(assert (=> start!14928 (=> (not res!65811) (not e!83974))))

(assert (=> start!14928 (= res!65811 (is-Lexer!294 thiss!17480))))

(assert (=> start!14928 e!83974))

(assert (=> start!14928 true))

(assert (=> start!14928 e!83975))

(assert (=> start!14928 e!83981))

(declare-fun tp!74976 () Bool)

(declare-fun b!142167 () Bool)

(assert (=> b!142167 (= e!83980 (and tp!74976 (inv!3198 (tag!588 (rule!917 (h!7826 tokens!465)))) (inv!3202 (transformation!410 (rule!917 (h!7826 tokens!465)))) e!83977))))

(assert (=> b!142168 (= e!83978 (and tp!74977 tp!74980))))

(assert (= (and start!14928 res!65811) b!142161))

(assert (= (and b!142161 res!65812) b!142160))

(assert (= (and b!142160 res!65810) b!142163))

(assert (= b!142162 b!142168))

(assert (= b!142164 b!142162))

(assert (= (and start!14928 (is-Cons!2430 rules!1920)) b!142164))

(assert (= b!142167 b!142166))

(assert (= b!142165 b!142167))

(assert (= b!142159 b!142165))

(assert (= (and start!14928 (is-Cons!2429 tokens!465)) b!142159))

(declare-fun m!125027 () Bool)

(assert (=> b!142167 m!125027))

(declare-fun m!125029 () Bool)

(assert (=> b!142167 m!125029))

(declare-fun m!125031 () Bool)

(assert (=> b!142161 m!125031))

(declare-fun m!125033 () Bool)

(assert (=> b!142162 m!125033))

(declare-fun m!125035 () Bool)

(assert (=> b!142162 m!125035))

(declare-fun m!125037 () Bool)

(assert (=> b!142165 m!125037))

(declare-fun m!125039 () Bool)

(assert (=> b!142163 m!125039))

(assert (=> b!142163 m!125039))

(declare-fun m!125041 () Bool)

(assert (=> b!142163 m!125041))

(declare-fun m!125043 () Bool)

(assert (=> b!142160 m!125043))

(declare-fun m!125045 () Bool)

(assert (=> b!142159 m!125045))

(push 1)

(assert (not b_next!4769))

(assert (not b!142160))

(assert (not b!142165))

(assert (not b!142167))

(assert (not b_next!4765))

(assert (not b!142162))

(assert (not b!142161))

(assert (not b!142163))

(assert (not b_next!4767))

(assert b_and!7367)

(assert (not b!142159))

(assert b_and!7363)

(assert (not b!142164))

(assert b_and!7361)

(assert (not b_next!4771))

(assert b_and!7365)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4769))

(assert b_and!7363)

(assert (not b_next!4765))

(assert b_and!7361)

(assert (not b_next!4767))

(assert b_and!7367)

(assert (not b_next!4771))

(assert b_and!7365)

(check-sat)

(pop 1)

