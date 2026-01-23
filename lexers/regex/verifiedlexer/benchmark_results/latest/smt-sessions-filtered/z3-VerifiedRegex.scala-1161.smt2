; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59992 () Bool)

(assert start!59992)

(declare-fun b!622488 () Bool)

(declare-fun b_free!18229 () Bool)

(declare-fun b_next!18245 () Bool)

(assert (=> b!622488 (= b_free!18229 (not b_next!18245))))

(declare-fun tp!193418 () Bool)

(declare-fun b_and!61887 () Bool)

(assert (=> b!622488 (= tp!193418 b_and!61887)))

(declare-fun b_free!18231 () Bool)

(declare-fun b_next!18247 () Bool)

(assert (=> b!622488 (= b_free!18231 (not b_next!18247))))

(declare-fun tp!193419 () Bool)

(declare-fun b_and!61889 () Bool)

(assert (=> b!622488 (= tp!193419 b_and!61889)))

(declare-fun res!270843 () Bool)

(declare-fun e!378022 () Bool)

(assert (=> start!59992 (=> (not res!270843) (not e!378022))))

(declare-datatypes ((LexerInterface!1195 0))(
  ( (LexerInterfaceExt!1192 (__x!4562 Int)) (Lexer!1193) )
))
(declare-fun thiss!14007 () LexerInterface!1195)

(declare-fun from!852 () Int)

(get-info :version)

(assert (=> start!59992 (= res!270843 (and ((_ is Lexer!1193) thiss!14007) (>= from!852 0)))))

(assert (=> start!59992 e!378022))

(assert (=> start!59992 true))

(declare-datatypes ((C!4208 0))(
  ( (C!4209 (val!2330 Int)) )
))
(declare-datatypes ((List!6418 0))(
  ( (Nil!6408) (Cons!6408 (h!11809 C!4208) (t!81925 List!6418)) )
))
(declare-datatypes ((IArray!4111 0))(
  ( (IArray!4112 (innerList!2113 List!6418)) )
))
(declare-datatypes ((Conc!2055 0))(
  ( (Node!2055 (left!5082 Conc!2055) (right!5412 Conc!2055) (csize!4340 Int) (cheight!2266 Int)) (Leaf!3217 (xs!4692 IArray!4111) (csize!4341 Int)) (Empty!2055) )
))
(declare-datatypes ((BalanceConc!4118 0))(
  ( (BalanceConc!4119 (c!114435 Conc!2055)) )
))
(declare-datatypes ((List!6419 0))(
  ( (Nil!6409) (Cons!6409 (h!11810 (_ BitVec 16)) (t!81926 List!6419)) )
))
(declare-datatypes ((TokenValue!1331 0))(
  ( (FloatLiteralValue!2662 (text!9762 List!6419)) (TokenValueExt!1330 (__x!4563 Int)) (Broken!6655 (value!42087 List!6419)) (Object!1340) (End!1331) (Def!1331) (Underscore!1331) (Match!1331) (Else!1331) (Error!1331) (Case!1331) (If!1331) (Extends!1331) (Abstract!1331) (Class!1331) (Val!1331) (DelimiterValue!2662 (del!1391 List!6419)) (KeywordValue!1337 (value!42088 List!6419)) (CommentValue!2662 (value!42089 List!6419)) (WhitespaceValue!2662 (value!42090 List!6419)) (IndentationValue!1331 (value!42091 List!6419)) (String!8402) (Int32!1331) (Broken!6656 (value!42092 List!6419)) (Boolean!1332) (Unit!11499) (OperatorValue!1334 (op!1391 List!6419)) (IdentifierValue!2662 (value!42093 List!6419)) (IdentifierValue!2663 (value!42094 List!6419)) (WhitespaceValue!2663 (value!42095 List!6419)) (True!2662) (False!2662) (Broken!6657 (value!42096 List!6419)) (Broken!6658 (value!42097 List!6419)) (True!2663) (RightBrace!1331) (RightBracket!1331) (Colon!1331) (Null!1331) (Comma!1331) (LeftBracket!1331) (False!2663) (LeftBrace!1331) (ImaginaryLiteralValue!1331 (text!9763 List!6419)) (StringLiteralValue!3993 (value!42098 List!6419)) (EOFValue!1331 (value!42099 List!6419)) (IdentValue!1331 (value!42100 List!6419)) (DelimiterValue!2663 (value!42101 List!6419)) (DedentValue!1331 (value!42102 List!6419)) (NewLineValue!1331 (value!42103 List!6419)) (IntegerValue!3993 (value!42104 (_ BitVec 32)) (text!9764 List!6419)) (IntegerValue!3994 (value!42105 Int) (text!9765 List!6419)) (Times!1331) (Or!1331) (Equal!1331) (Minus!1331) (Broken!6659 (value!42106 List!6419)) (And!1331) (Div!1331) (LessEqual!1331) (Mod!1331) (Concat!2972) (Not!1331) (Plus!1331) (SpaceValue!1331 (value!42107 List!6419)) (IntegerValue!3995 (value!42108 Int) (text!9766 List!6419)) (StringLiteralValue!3994 (text!9767 List!6419)) (FloatLiteralValue!2663 (text!9768 List!6419)) (BytesLiteralValue!1331 (value!42109 List!6419)) (CommentValue!2663 (value!42110 List!6419)) (StringLiteralValue!3995 (value!42111 List!6419)) (ErrorTokenValue!1331 (msg!1392 List!6419)) )
))
(declare-datatypes ((Regex!1641 0))(
  ( (ElementMatch!1641 (c!114436 C!4208)) (Concat!2973 (regOne!3794 Regex!1641) (regTwo!3794 Regex!1641)) (EmptyExpr!1641) (Star!1641 (reg!1970 Regex!1641)) (EmptyLang!1641) (Union!1641 (regOne!3795 Regex!1641) (regTwo!3795 Regex!1641)) )
))
(declare-datatypes ((String!8403 0))(
  ( (String!8404 (value!42112 String)) )
))
(declare-datatypes ((TokenValueInjection!2430 0))(
  ( (TokenValueInjection!2431 (toValue!2232 Int) (toChars!2091 Int)) )
))
(declare-datatypes ((Rule!2414 0))(
  ( (Rule!2415 (regex!1307 Regex!1641) (tag!1569 String!8403) (isSeparator!1307 Bool) (transformation!1307 TokenValueInjection!2430)) )
))
(declare-datatypes ((Token!2338 0))(
  ( (Token!2339 (value!42113 TokenValue!1331) (rule!2103 Rule!2414) (size!4996 Int) (originalCharacters!1340 List!6418)) )
))
(declare-datatypes ((List!6420 0))(
  ( (Nil!6410) (Cons!6410 (h!11811 Token!2338) (t!81927 List!6420)) )
))
(declare-datatypes ((IArray!4113 0))(
  ( (IArray!4114 (innerList!2114 List!6420)) )
))
(declare-datatypes ((Conc!2056 0))(
  ( (Node!2056 (left!5083 Conc!2056) (right!5413 Conc!2056) (csize!4342 Int) (cheight!2267 Int)) (Leaf!3218 (xs!4693 IArray!4113) (csize!4343 Int)) (Empty!2056) )
))
(declare-datatypes ((BalanceConc!4120 0))(
  ( (BalanceConc!4121 (c!114437 Conc!2056)) )
))
(declare-fun v!6361 () BalanceConc!4120)

(declare-fun e!378019 () Bool)

(declare-fun inv!8135 (BalanceConc!4120) Bool)

(assert (=> start!59992 (and (inv!8135 v!6361) e!378019)))

(declare-fun separatorToken!136 () Token!2338)

(declare-fun e!378018 () Bool)

(declare-fun inv!8136 (Token!2338) Bool)

(assert (=> start!59992 (and (inv!8136 separatorToken!136) e!378018)))

(declare-fun lt!266332 () Int)

(declare-fun b!622487 () Bool)

(assert (=> b!622487 (= e!378022 (and (<= from!852 lt!266332) (isSeparator!1307 (rule!2103 separatorToken!136)) (< (- lt!266332 from!852) 0)))))

(declare-fun size!4997 (BalanceConc!4120) Int)

(assert (=> b!622487 (= lt!266332 (size!4997 v!6361))))

(declare-fun e!378020 () Bool)

(assert (=> b!622488 (= e!378020 (and tp!193418 tp!193419))))

(declare-fun tp!193421 () Bool)

(declare-fun e!378016 () Bool)

(declare-fun b!622489 () Bool)

(declare-fun inv!8130 (String!8403) Bool)

(declare-fun inv!8137 (TokenValueInjection!2430) Bool)

(assert (=> b!622489 (= e!378016 (and tp!193421 (inv!8130 (tag!1569 (rule!2103 separatorToken!136))) (inv!8137 (transformation!1307 (rule!2103 separatorToken!136))) e!378020))))

(declare-fun b!622490 () Bool)

(declare-fun tp!193420 () Bool)

(declare-fun inv!21 (TokenValue!1331) Bool)

(assert (=> b!622490 (= e!378018 (and (inv!21 (value!42113 separatorToken!136)) e!378016 tp!193420))))

(declare-fun b!622491 () Bool)

(declare-fun tp!193417 () Bool)

(declare-fun inv!8138 (Conc!2056) Bool)

(assert (=> b!622491 (= e!378019 (and (inv!8138 (c!114437 v!6361)) tp!193417))))

(assert (= (and start!59992 res!270843) b!622487))

(assert (= start!59992 b!622491))

(assert (= b!622489 b!622488))

(assert (= b!622490 b!622489))

(assert (= start!59992 b!622490))

(declare-fun m!890801 () Bool)

(assert (=> start!59992 m!890801))

(declare-fun m!890803 () Bool)

(assert (=> start!59992 m!890803))

(declare-fun m!890805 () Bool)

(assert (=> b!622491 m!890805))

(declare-fun m!890807 () Bool)

(assert (=> b!622489 m!890807))

(declare-fun m!890809 () Bool)

(assert (=> b!622489 m!890809))

(declare-fun m!890811 () Bool)

(assert (=> b!622490 m!890811))

(declare-fun m!890813 () Bool)

(assert (=> b!622487 m!890813))

(check-sat b_and!61889 (not b!622491) (not b_next!18245) (not start!59992) (not b_next!18247) (not b!622490) (not b!622489) b_and!61887 (not b!622487))
(check-sat b_and!61887 b_and!61889 (not b_next!18247) (not b_next!18245))
