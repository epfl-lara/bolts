; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!352476 () Bool)

(assert start!352476)

(declare-fun b!3753375 () Bool)

(declare-fun b_free!100437 () Bool)

(declare-fun b_next!101141 () Bool)

(assert (=> b!3753375 (= b_free!100437 (not b_next!101141))))

(declare-fun tp!1146022 () Bool)

(declare-fun b_and!278919 () Bool)

(assert (=> b!3753375 (= tp!1146022 b_and!278919)))

(declare-fun b_free!100439 () Bool)

(declare-fun b_next!101143 () Bool)

(assert (=> b!3753375 (= b_free!100439 (not b_next!101143))))

(declare-fun tp!1146019 () Bool)

(declare-fun b_and!278921 () Bool)

(assert (=> b!3753375 (= tp!1146019 b_and!278921)))

(declare-fun e!2321753 () Bool)

(declare-fun tp!1146020 () Bool)

(declare-fun e!2321754 () Bool)

(declare-fun b!3753374 () Bool)

(declare-datatypes ((List!40143 0))(
  ( (Nil!40019) (Cons!40019 (h!45439 (_ BitVec 16)) (t!303246 List!40143)) )
))
(declare-datatypes ((TokenValue!6350 0))(
  ( (FloatLiteralValue!12700 (text!44895 List!40143)) (TokenValueExt!6349 (__x!24917 Int)) (Broken!31750 (value!194983 List!40143)) (Object!6473) (End!6350) (Def!6350) (Underscore!6350) (Match!6350) (Else!6350) (Error!6350) (Case!6350) (If!6350) (Extends!6350) (Abstract!6350) (Class!6350) (Val!6350) (DelimiterValue!12700 (del!6410 List!40143)) (KeywordValue!6356 (value!194984 List!40143)) (CommentValue!12700 (value!194985 List!40143)) (WhitespaceValue!12700 (value!194986 List!40143)) (IndentationValue!6350 (value!194987 List!40143)) (String!45407) (Int32!6350) (Broken!31751 (value!194988 List!40143)) (Boolean!6351) (Unit!57749) (OperatorValue!6353 (op!6410 List!40143)) (IdentifierValue!12700 (value!194989 List!40143)) (IdentifierValue!12701 (value!194990 List!40143)) (WhitespaceValue!12701 (value!194991 List!40143)) (True!12700) (False!12700) (Broken!31752 (value!194992 List!40143)) (Broken!31753 (value!194993 List!40143)) (True!12701) (RightBrace!6350) (RightBracket!6350) (Colon!6350) (Null!6350) (Comma!6350) (LeftBracket!6350) (False!12701) (LeftBrace!6350) (ImaginaryLiteralValue!6350 (text!44896 List!40143)) (StringLiteralValue!19050 (value!194994 List!40143)) (EOFValue!6350 (value!194995 List!40143)) (IdentValue!6350 (value!194996 List!40143)) (DelimiterValue!12701 (value!194997 List!40143)) (DedentValue!6350 (value!194998 List!40143)) (NewLineValue!6350 (value!194999 List!40143)) (IntegerValue!19050 (value!195000 (_ BitVec 32)) (text!44897 List!40143)) (IntegerValue!19051 (value!195001 Int) (text!44898 List!40143)) (Times!6350) (Or!6350) (Equal!6350) (Minus!6350) (Broken!31754 (value!195002 List!40143)) (And!6350) (Div!6350) (LessEqual!6350) (Mod!6350) (Concat!17375) (Not!6350) (Plus!6350) (SpaceValue!6350 (value!195003 List!40143)) (IntegerValue!19052 (value!195004 Int) (text!44899 List!40143)) (StringLiteralValue!19051 (text!44900 List!40143)) (FloatLiteralValue!12701 (text!44901 List!40143)) (BytesLiteralValue!6350 (value!195005 List!40143)) (CommentValue!12701 (value!195006 List!40143)) (StringLiteralValue!19052 (value!195007 List!40143)) (ErrorTokenValue!6350 (msg!6411 List!40143)) )
))
(declare-datatypes ((C!22236 0))(
  ( (C!22237 (val!13182 Int)) )
))
(declare-datatypes ((List!40144 0))(
  ( (Nil!40020) (Cons!40020 (h!45440 C!22236) (t!303247 List!40144)) )
))
(declare-datatypes ((IArray!24485 0))(
  ( (IArray!24486 (innerList!12300 List!40144)) )
))
(declare-datatypes ((Conc!12240 0))(
  ( (Node!12240 (left!30983 Conc!12240) (right!31313 Conc!12240) (csize!24710 Int) (cheight!12451 Int)) (Leaf!18992 (xs!15442 IArray!24485) (csize!24711 Int)) (Empty!12240) )
))
(declare-datatypes ((BalanceConc!24074 0))(
  ( (BalanceConc!24075 (c!649711 Conc!12240)) )
))
(declare-datatypes ((TokenValueInjection!12128 0))(
  ( (TokenValueInjection!12129 (toValue!8468 Int) (toChars!8327 Int)) )
))
(declare-datatypes ((Regex!11025 0))(
  ( (ElementMatch!11025 (c!649712 C!22236)) (Concat!17376 (regOne!22562 Regex!11025) (regTwo!22562 Regex!11025)) (EmptyExpr!11025) (Star!11025 (reg!11354 Regex!11025)) (EmptyLang!11025) (Union!11025 (regOne!22563 Regex!11025) (regTwo!22563 Regex!11025)) )
))
(declare-datatypes ((String!45408 0))(
  ( (String!45409 (value!195008 String)) )
))
(declare-datatypes ((Rule!12040 0))(
  ( (Rule!12041 (regex!6120 Regex!11025) (tag!6980 String!45408) (isSeparator!6120 Bool) (transformation!6120 TokenValueInjection!12128)) )
))
(declare-datatypes ((Token!11378 0))(
  ( (Token!11379 (value!195009 TokenValue!6350) (rule!8884 Rule!12040) (size!30115 Int) (originalCharacters!6720 List!40144)) )
))
(declare-fun separatorToken!144 () Token!11378)

(declare-fun inv!21 (TokenValue!6350) Bool)

(assert (=> b!3753374 (= e!2321753 (and (inv!21 (value!195009 separatorToken!144)) e!2321754 tp!1146020))))

(declare-fun e!2321750 () Bool)

(assert (=> b!3753375 (= e!2321750 (and tp!1146022 tp!1146019))))

(declare-fun b!3753376 () Bool)

(declare-fun e!2321749 () Bool)

(declare-fun e!2321755 () Bool)

(assert (=> b!3753376 (= e!2321749 e!2321755)))

(declare-fun res!1521018 () Bool)

(assert (=> b!3753376 (=> (not res!1521018) (not e!2321755))))

(declare-fun lt!1300167 () Int)

(declare-fun from!856 () Int)

(assert (=> b!3753376 (= res!1521018 (and (<= from!856 lt!1300167) (isSeparator!6120 (rule!8884 separatorToken!144)) (>= from!856 lt!1300167)))))

(declare-datatypes ((List!40145 0))(
  ( (Nil!40021) (Cons!40021 (h!45441 Token!11378) (t!303248 List!40145)) )
))
(declare-datatypes ((IArray!24487 0))(
  ( (IArray!24488 (innerList!12301 List!40145)) )
))
(declare-datatypes ((Conc!12241 0))(
  ( (Node!12241 (left!30984 Conc!12241) (right!31314 Conc!12241) (csize!24712 Int) (cheight!12452 Int)) (Leaf!18993 (xs!15443 IArray!24487) (csize!24713 Int)) (Empty!12241) )
))
(declare-datatypes ((BalanceConc!24076 0))(
  ( (BalanceConc!24077 (c!649713 Conc!12241)) )
))
(declare-fun v!6366 () BalanceConc!24076)

(declare-fun size!30116 (BalanceConc!24076) Int)

(assert (=> b!3753376 (= lt!1300167 (size!30116 v!6366))))

(declare-fun tp!1146021 () Bool)

(declare-fun b!3753377 () Bool)

(declare-fun inv!53590 (String!45408) Bool)

(declare-fun inv!53597 (TokenValueInjection!12128) Bool)

(assert (=> b!3753377 (= e!2321754 (and tp!1146021 (inv!53590 (tag!6980 (rule!8884 separatorToken!144))) (inv!53597 (transformation!6120 (rule!8884 separatorToken!144))) e!2321750))))

(declare-fun b!3753378 () Bool)

(declare-fun e!2321748 () Bool)

(declare-fun acc!419 () BalanceConc!24074)

(declare-fun tp!1146024 () Bool)

(declare-fun inv!53598 (Conc!12240) Bool)

(assert (=> b!3753378 (= e!2321748 (and (inv!53598 (c!649711 acc!419)) tp!1146024))))

(declare-fun res!1521019 () Bool)

(assert (=> start!352476 (=> (not res!1521019) (not e!2321749))))

(declare-datatypes ((LexerInterface!5709 0))(
  ( (LexerInterfaceExt!5706 (__x!24918 Int)) (Lexer!5707) )
))
(declare-fun thiss!14060 () LexerInterface!5709)

(get-info :version)

(assert (=> start!352476 (= res!1521019 (and ((_ is Lexer!5707) thiss!14060) (>= from!856 0)))))

(assert (=> start!352476 e!2321749))

(declare-fun inv!53599 (BalanceConc!24074) Bool)

(assert (=> start!352476 (and (inv!53599 acc!419) e!2321748)))

(assert (=> start!352476 true))

(declare-fun inv!53600 (Token!11378) Bool)

(assert (=> start!352476 (and (inv!53600 separatorToken!144) e!2321753)))

(declare-fun e!2321752 () Bool)

(declare-fun inv!53601 (BalanceConc!24076) Bool)

(assert (=> start!352476 (and (inv!53601 v!6366) e!2321752)))

(declare-fun b!3753379 () Bool)

(assert (=> b!3753379 (= e!2321755 false)))

(declare-fun lt!1300168 () List!40144)

(declare-fun list!14750 (BalanceConc!24074) List!40144)

(assert (=> b!3753379 (= lt!1300168 (list!14750 acc!419))))

(declare-fun lt!1300169 () List!40145)

(declare-fun dropList!1263 (BalanceConc!24076 Int) List!40145)

(assert (=> b!3753379 (= lt!1300169 (dropList!1263 v!6366 from!856))))

(declare-fun b!3753380 () Bool)

(declare-fun tp!1146023 () Bool)

(declare-fun inv!53602 (Conc!12241) Bool)

(assert (=> b!3753380 (= e!2321752 (and (inv!53602 (c!649713 v!6366)) tp!1146023))))

(assert (= (and start!352476 res!1521019) b!3753376))

(assert (= (and b!3753376 res!1521018) b!3753379))

(assert (= start!352476 b!3753378))

(assert (= b!3753377 b!3753375))

(assert (= b!3753374 b!3753377))

(assert (= start!352476 b!3753374))

(assert (= start!352476 b!3753380))

(declare-fun m!4245151 () Bool)

(assert (=> b!3753380 m!4245151))

(declare-fun m!4245153 () Bool)

(assert (=> b!3753377 m!4245153))

(declare-fun m!4245155 () Bool)

(assert (=> b!3753377 m!4245155))

(declare-fun m!4245157 () Bool)

(assert (=> start!352476 m!4245157))

(declare-fun m!4245159 () Bool)

(assert (=> start!352476 m!4245159))

(declare-fun m!4245161 () Bool)

(assert (=> start!352476 m!4245161))

(declare-fun m!4245163 () Bool)

(assert (=> b!3753378 m!4245163))

(declare-fun m!4245165 () Bool)

(assert (=> b!3753379 m!4245165))

(declare-fun m!4245167 () Bool)

(assert (=> b!3753379 m!4245167))

(declare-fun m!4245169 () Bool)

(assert (=> b!3753374 m!4245169))

(declare-fun m!4245171 () Bool)

(assert (=> b!3753376 m!4245171))

(check-sat (not b!3753374) (not b!3753380) b_and!278921 b_and!278919 (not b!3753377) (not b_next!101143) (not b!3753376) (not b_next!101141) (not start!352476) (not b!3753378) (not b!3753379))
(check-sat b_and!278921 b_and!278919 (not b_next!101143) (not b_next!101141))
