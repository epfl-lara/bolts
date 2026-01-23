; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!230056 () Bool)

(assert start!230056)

(declare-fun b!2329138 () Bool)

(declare-fun b_free!70293 () Bool)

(declare-fun b_next!70997 () Bool)

(assert (=> b!2329138 (= b_free!70293 (not b_next!70997))))

(declare-fun tp!738125 () Bool)

(declare-fun b_and!185205 () Bool)

(assert (=> b!2329138 (= tp!738125 b_and!185205)))

(declare-fun b_free!70295 () Bool)

(declare-fun b_next!70999 () Bool)

(assert (=> b!2329138 (= b_free!70295 (not b_next!70999))))

(declare-fun tp!738127 () Bool)

(declare-fun b_and!185207 () Bool)

(assert (=> b!2329138 (= tp!738127 b_and!185207)))

(declare-datatypes ((List!27911 0))(
  ( (Nil!27813) (Cons!27813 (h!33214 (_ BitVec 16)) (t!207681 List!27911)) )
))
(declare-datatypes ((TokenValue!4609 0))(
  ( (FloatLiteralValue!9218 (text!32708 List!27911)) (TokenValueExt!4608 (__x!18377 Int)) (Broken!23045 (value!140741 List!27911)) (Object!4706) (End!4609) (Def!4609) (Underscore!4609) (Match!4609) (Else!4609) (Error!4609) (Case!4609) (If!4609) (Extends!4609) (Abstract!4609) (Class!4609) (Val!4609) (DelimiterValue!9218 (del!4669 List!27911)) (KeywordValue!4615 (value!140742 List!27911)) (CommentValue!9218 (value!140743 List!27911)) (WhitespaceValue!9218 (value!140744 List!27911)) (IndentationValue!4609 (value!140745 List!27911)) (String!30412) (Int32!4609) (Broken!23046 (value!140746 List!27911)) (Boolean!4610) (Unit!40581) (OperatorValue!4612 (op!4669 List!27911)) (IdentifierValue!9218 (value!140747 List!27911)) (IdentifierValue!9219 (value!140748 List!27911)) (WhitespaceValue!9219 (value!140749 List!27911)) (True!9218) (False!9218) (Broken!23047 (value!140750 List!27911)) (Broken!23048 (value!140751 List!27911)) (True!9219) (RightBrace!4609) (RightBracket!4609) (Colon!4609) (Null!4609) (Comma!4609) (LeftBracket!4609) (False!9219) (LeftBrace!4609) (ImaginaryLiteralValue!4609 (text!32709 List!27911)) (StringLiteralValue!13827 (value!140752 List!27911)) (EOFValue!4609 (value!140753 List!27911)) (IdentValue!4609 (value!140754 List!27911)) (DelimiterValue!9219 (value!140755 List!27911)) (DedentValue!4609 (value!140756 List!27911)) (NewLineValue!4609 (value!140757 List!27911)) (IntegerValue!13827 (value!140758 (_ BitVec 32)) (text!32710 List!27911)) (IntegerValue!13828 (value!140759 Int) (text!32711 List!27911)) (Times!4609) (Or!4609) (Equal!4609) (Minus!4609) (Broken!23049 (value!140760 List!27911)) (And!4609) (Div!4609) (LessEqual!4609) (Mod!4609) (Concat!11424) (Not!4609) (Plus!4609) (SpaceValue!4609 (value!140761 List!27911)) (IntegerValue!13829 (value!140762 Int) (text!32712 List!27911)) (StringLiteralValue!13828 (text!32713 List!27911)) (FloatLiteralValue!9219 (text!32714 List!27911)) (BytesLiteralValue!4609 (value!140763 List!27911)) (CommentValue!9219 (value!140764 List!27911)) (StringLiteralValue!13829 (value!140765 List!27911)) (ErrorTokenValue!4609 (msg!4670 List!27911)) )
))
(declare-datatypes ((C!13788 0))(
  ( (C!13789 (val!8050 Int)) )
))
(declare-datatypes ((Regex!6815 0))(
  ( (ElementMatch!6815 (c!369957 C!13788)) (Concat!11425 (regOne!14142 Regex!6815) (regTwo!14142 Regex!6815)) (EmptyExpr!6815) (Star!6815 (reg!7144 Regex!6815)) (EmptyLang!6815) (Union!6815 (regOne!14143 Regex!6815) (regTwo!14143 Regex!6815)) )
))
(declare-datatypes ((String!30413 0))(
  ( (String!30414 (value!140766 String)) )
))
(declare-datatypes ((List!27912 0))(
  ( (Nil!27814) (Cons!27814 (h!33215 C!13788) (t!207682 List!27912)) )
))
(declare-datatypes ((IArray!18253 0))(
  ( (IArray!18254 (innerList!9184 List!27912)) )
))
(declare-datatypes ((Conc!9124 0))(
  ( (Node!9124 (left!21108 Conc!9124) (right!21438 Conc!9124) (csize!18478 Int) (cheight!9335 Int)) (Leaf!13405 (xs!12104 IArray!18253) (csize!18479 Int)) (Empty!9124) )
))
(declare-datatypes ((BalanceConc!17860 0))(
  ( (BalanceConc!17861 (c!369958 Conc!9124)) )
))
(declare-datatypes ((TokenValueInjection!8738 0))(
  ( (TokenValueInjection!8739 (toValue!6263 Int) (toChars!6122 Int)) )
))
(declare-datatypes ((Rule!8670 0))(
  ( (Rule!8671 (regex!4435 Regex!6815) (tag!4925 String!30413) (isSeparator!4435 Bool) (transformation!4435 TokenValueInjection!8738)) )
))
(declare-datatypes ((List!27913 0))(
  ( (Nil!27815) (Cons!27815 (h!33216 Rule!8670) (t!207683 List!27913)) )
))
(declare-fun rules!853 () List!27913)

(declare-datatypes ((Token!8348 0))(
  ( (Token!8349 (value!140767 TokenValue!4609) (rule!6791 Rule!8670) (size!22018 Int) (originalCharacters!5205 List!27912)) )
))
(declare-datatypes ((List!27914 0))(
  ( (Nil!27816) (Cons!27816 (h!33217 Token!8348) (t!207684 List!27914)) )
))
(declare-datatypes ((IArray!18255 0))(
  ( (IArray!18256 (innerList!9185 List!27914)) )
))
(declare-datatypes ((Conc!9125 0))(
  ( (Node!9125 (left!21109 Conc!9125) (right!21439 Conc!9125) (csize!18480 Int) (cheight!9336 Int)) (Leaf!13406 (xs!12105 IArray!18255) (csize!18481 Int)) (Empty!9125) )
))
(declare-datatypes ((BalanceConc!17862 0))(
  ( (BalanceConc!17863 (c!369959 Conc!9125)) )
))
(declare-fun tokens!300 () BalanceConc!17862)

(declare-fun e!1492339 () Bool)

(declare-datatypes ((PrintableTokens!1288 0))(
  ( (PrintableTokens!1289 (rules!16518 List!27913) (tokens!2484 BalanceConc!17862)) )
))
(declare-fun lt!862075 () PrintableTokens!1288)

(declare-fun b!2329130 () Bool)

(assert (=> b!2329130 (= e!1492339 (or (not (= (rules!16518 lt!862075) rules!853)) (not (= (tokens!2484 lt!862075) tokens!300))))))

(declare-datatypes ((Option!5427 0))(
  ( (None!5426) (Some!5426 (v!30672 PrintableTokens!1288)) )
))
(declare-fun get!8388 (Option!5427) PrintableTokens!1288)

(assert (=> b!2329130 (= lt!862075 (get!8388 None!5426))))

(declare-fun b!2329131 () Bool)

(declare-fun res!994430 () Bool)

(assert (=> b!2329131 (=> (not res!994430) (not e!1492339))))

(declare-datatypes ((LexerInterface!4032 0))(
  ( (LexerInterfaceExt!4029 (__x!18378 Int)) (Lexer!4030) )
))
(declare-fun rulesProduceEachTokenIndividuallyList!1362 (LexerInterface!4032 List!27913 List!27914) Bool)

(declare-fun list!11053 (BalanceConc!17862) List!27914)

(assert (=> b!2329131 (= res!994430 (rulesProduceEachTokenIndividuallyList!1362 Lexer!4030 rules!853 (list!11053 tokens!300)))))

(declare-fun b!2329132 () Bool)

(declare-fun res!994431 () Bool)

(assert (=> b!2329132 (=> (not res!994431) (not e!1492339))))

(assert (=> b!2329132 (= res!994431 false)))

(declare-fun b!2329133 () Bool)

(declare-fun res!994427 () Bool)

(assert (=> b!2329133 (=> (not res!994427) (not e!1492339))))

(declare-fun separableTokens!309 (LexerInterface!4032 BalanceConc!17862 List!27913) Bool)

(assert (=> b!2329133 (= res!994427 (not (separableTokens!309 Lexer!4030 tokens!300 rules!853)))))

(declare-fun res!994428 () Bool)

(assert (=> start!230056 (=> (not res!994428) (not e!1492339))))

(declare-fun isEmpty!15840 (List!27913) Bool)

(assert (=> start!230056 (= res!994428 (not (isEmpty!15840 rules!853)))))

(assert (=> start!230056 e!1492339))

(declare-fun e!1492336 () Bool)

(assert (=> start!230056 e!1492336))

(declare-fun e!1492338 () Bool)

(declare-fun inv!37870 (BalanceConc!17862) Bool)

(assert (=> start!230056 (and (inv!37870 tokens!300) e!1492338)))

(declare-fun b!2329134 () Bool)

(declare-fun tp!738126 () Bool)

(declare-fun inv!37871 (Conc!9125) Bool)

(assert (=> b!2329134 (= e!1492338 (and (inv!37871 (c!369959 tokens!300)) tp!738126))))

(declare-fun b!2329135 () Bool)

(declare-fun res!994432 () Bool)

(assert (=> b!2329135 (=> (not res!994432) (not e!1492339))))

(declare-fun rulesInvariant!3532 (LexerInterface!4032 List!27913) Bool)

(assert (=> b!2329135 (= res!994432 (rulesInvariant!3532 Lexer!4030 rules!853))))

(declare-fun b!2329136 () Bool)

(declare-fun e!1492340 () Bool)

(declare-fun tp!738124 () Bool)

(assert (=> b!2329136 (= e!1492336 (and e!1492340 tp!738124))))

(declare-fun e!1492337 () Bool)

(declare-fun b!2329137 () Bool)

(declare-fun tp!738123 () Bool)

(declare-fun inv!37866 (String!30413) Bool)

(declare-fun inv!37872 (TokenValueInjection!8738) Bool)

(assert (=> b!2329137 (= e!1492340 (and tp!738123 (inv!37866 (tag!4925 (h!33216 rules!853))) (inv!37872 (transformation!4435 (h!33216 rules!853))) e!1492337))))

(assert (=> b!2329138 (= e!1492337 (and tp!738125 tp!738127))))

(declare-fun b!2329139 () Bool)

(declare-fun res!994429 () Bool)

(assert (=> b!2329139 (=> (not res!994429) (not e!1492339))))

(declare-fun rulesProduceEachTokenIndividually!940 (LexerInterface!4032 List!27913 BalanceConc!17862) Bool)

(assert (=> b!2329139 (= res!994429 (rulesProduceEachTokenIndividually!940 Lexer!4030 rules!853 tokens!300))))

(assert (= (and start!230056 res!994428) b!2329135))

(assert (= (and b!2329135 res!994432) b!2329131))

(assert (= (and b!2329131 res!994430) b!2329139))

(assert (= (and b!2329139 res!994429) b!2329133))

(assert (= (and b!2329133 res!994427) b!2329132))

(assert (= (and b!2329132 res!994431) b!2329130))

(assert (= b!2329137 b!2329138))

(assert (= b!2329136 b!2329137))

(get-info :version)

(assert (= (and start!230056 ((_ is Cons!27815) rules!853)) b!2329136))

(assert (= start!230056 b!2329134))

(declare-fun m!2759391 () Bool)

(assert (=> b!2329130 m!2759391))

(declare-fun m!2759393 () Bool)

(assert (=> b!2329131 m!2759393))

(assert (=> b!2329131 m!2759393))

(declare-fun m!2759395 () Bool)

(assert (=> b!2329131 m!2759395))

(declare-fun m!2759397 () Bool)

(assert (=> b!2329134 m!2759397))

(declare-fun m!2759399 () Bool)

(assert (=> b!2329139 m!2759399))

(declare-fun m!2759401 () Bool)

(assert (=> b!2329135 m!2759401))

(declare-fun m!2759403 () Bool)

(assert (=> start!230056 m!2759403))

(declare-fun m!2759405 () Bool)

(assert (=> start!230056 m!2759405))

(declare-fun m!2759407 () Bool)

(assert (=> b!2329133 m!2759407))

(declare-fun m!2759409 () Bool)

(assert (=> b!2329137 m!2759409))

(declare-fun m!2759411 () Bool)

(assert (=> b!2329137 m!2759411))

(check-sat (not b!2329131) (not b!2329134) (not b!2329133) (not b_next!70997) (not b!2329136) (not start!230056) (not b!2329135) (not b_next!70999) b_and!185205 b_and!185207 (not b!2329130) (not b!2329139) (not b!2329137))
(check-sat b_and!185205 b_and!185207 (not b_next!70999) (not b_next!70997))
