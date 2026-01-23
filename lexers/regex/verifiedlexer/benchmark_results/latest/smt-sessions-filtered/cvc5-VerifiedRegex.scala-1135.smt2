; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!59166 () Bool)

(assert start!59166)

(declare-fun b!617052 () Bool)

(declare-fun b_free!17721 () Bool)

(declare-fun b_next!17737 () Bool)

(assert (=> b!617052 (= b_free!17721 (not b_next!17737))))

(declare-fun tp!190857 () Bool)

(declare-fun b_and!61235 () Bool)

(assert (=> b!617052 (= tp!190857 b_and!61235)))

(declare-fun b_free!17723 () Bool)

(declare-fun b_next!17739 () Bool)

(assert (=> b!617052 (= b_free!17723 (not b_next!17739))))

(declare-fun tp!190854 () Bool)

(declare-fun b_and!61237 () Bool)

(assert (=> b!617052 (= tp!190854 b_and!61237)))

(declare-fun b!617051 () Bool)

(declare-fun b_free!17725 () Bool)

(declare-fun b_next!17741 () Bool)

(assert (=> b!617051 (= b_free!17725 (not b_next!17741))))

(declare-fun tp!190860 () Bool)

(declare-fun b_and!61239 () Bool)

(assert (=> b!617051 (= tp!190860 b_and!61239)))

(declare-fun b_free!17727 () Bool)

(declare-fun b_next!17743 () Bool)

(assert (=> b!617051 (= b_free!17727 (not b_next!17743))))

(declare-fun tp!190856 () Bool)

(declare-fun b_and!61241 () Bool)

(assert (=> b!617051 (= tp!190856 b_and!61241)))

(declare-fun b!617042 () Bool)

(declare-fun res!268623 () Bool)

(declare-fun e!374210 () Bool)

(assert (=> b!617042 (=> (not res!268623) (not e!374210))))

(declare-datatypes ((List!6226 0))(
  ( (Nil!6216) (Cons!6216 (h!11617 (_ BitVec 16)) (t!81465 List!6226)) )
))
(declare-datatypes ((TokenValue!1278 0))(
  ( (FloatLiteralValue!2556 (text!9391 List!6226)) (TokenValueExt!1277 (__x!4456 Int)) (Broken!6390 (value!40578 List!6226)) (Object!1287) (End!1278) (Def!1278) (Underscore!1278) (Match!1278) (Else!1278) (Error!1278) (Case!1278) (If!1278) (Extends!1278) (Abstract!1278) (Class!1278) (Val!1278) (DelimiterValue!2556 (del!1338 List!6226)) (KeywordValue!1284 (value!40579 List!6226)) (CommentValue!2556 (value!40580 List!6226)) (WhitespaceValue!2556 (value!40581 List!6226)) (IndentationValue!1278 (value!40582 List!6226)) (String!8139) (Int32!1278) (Broken!6391 (value!40583 List!6226)) (Boolean!1279) (Unit!11368) (OperatorValue!1281 (op!1338 List!6226)) (IdentifierValue!2556 (value!40584 List!6226)) (IdentifierValue!2557 (value!40585 List!6226)) (WhitespaceValue!2557 (value!40586 List!6226)) (True!2556) (False!2556) (Broken!6392 (value!40587 List!6226)) (Broken!6393 (value!40588 List!6226)) (True!2557) (RightBrace!1278) (RightBracket!1278) (Colon!1278) (Null!1278) (Comma!1278) (LeftBracket!1278) (False!2557) (LeftBrace!1278) (ImaginaryLiteralValue!1278 (text!9392 List!6226)) (StringLiteralValue!3834 (value!40589 List!6226)) (EOFValue!1278 (value!40590 List!6226)) (IdentValue!1278 (value!40591 List!6226)) (DelimiterValue!2557 (value!40592 List!6226)) (DedentValue!1278 (value!40593 List!6226)) (NewLineValue!1278 (value!40594 List!6226)) (IntegerValue!3834 (value!40595 (_ BitVec 32)) (text!9393 List!6226)) (IntegerValue!3835 (value!40596 Int) (text!9394 List!6226)) (Times!1278) (Or!1278) (Equal!1278) (Minus!1278) (Broken!6394 (value!40597 List!6226)) (And!1278) (Div!1278) (LessEqual!1278) (Mod!1278) (Concat!2866) (Not!1278) (Plus!1278) (SpaceValue!1278 (value!40598 List!6226)) (IntegerValue!3836 (value!40599 Int) (text!9395 List!6226)) (StringLiteralValue!3835 (text!9396 List!6226)) (FloatLiteralValue!2557 (text!9397 List!6226)) (BytesLiteralValue!1278 (value!40600 List!6226)) (CommentValue!2557 (value!40601 List!6226)) (StringLiteralValue!3836 (value!40602 List!6226)) (ErrorTokenValue!1278 (msg!1339 List!6226)) )
))
(declare-datatypes ((C!4102 0))(
  ( (C!4103 (val!2277 Int)) )
))
(declare-datatypes ((Regex!1588 0))(
  ( (ElementMatch!1588 (c!113765 C!4102)) (Concat!2867 (regOne!3688 Regex!1588) (regTwo!3688 Regex!1588)) (EmptyExpr!1588) (Star!1588 (reg!1917 Regex!1588)) (EmptyLang!1588) (Union!1588 (regOne!3689 Regex!1588) (regTwo!3689 Regex!1588)) )
))
(declare-datatypes ((String!8140 0))(
  ( (String!8141 (value!40603 String)) )
))
(declare-datatypes ((List!6227 0))(
  ( (Nil!6217) (Cons!6217 (h!11618 C!4102) (t!81466 List!6227)) )
))
(declare-datatypes ((IArray!3943 0))(
  ( (IArray!3944 (innerList!2029 List!6227)) )
))
(declare-datatypes ((Conc!1971 0))(
  ( (Node!1971 (left!4952 Conc!1971) (right!5282 Conc!1971) (csize!4172 Int) (cheight!2182 Int)) (Leaf!3107 (xs!4608 IArray!3943) (csize!4173 Int)) (Empty!1971) )
))
(declare-datatypes ((BalanceConc!3950 0))(
  ( (BalanceConc!3951 (c!113766 Conc!1971)) )
))
(declare-datatypes ((TokenValueInjection!2324 0))(
  ( (TokenValueInjection!2325 (toValue!2167 Int) (toChars!2026 Int)) )
))
(declare-datatypes ((Rule!2308 0))(
  ( (Rule!2309 (regex!1254 Regex!1588) (tag!1516 String!8140) (isSeparator!1254 Bool) (transformation!1254 TokenValueInjection!2324)) )
))
(declare-datatypes ((List!6228 0))(
  ( (Nil!6218) (Cons!6218 (h!11619 Rule!2308) (t!81467 List!6228)) )
))
(declare-fun rules!3744 () List!6228)

(declare-fun r!3983 () Rule!2308)

(declare-fun contains!1471 (List!6228 Rule!2308) Bool)

(assert (=> b!617042 (= res!268623 (contains!1471 rules!3744 r!3983))))

(declare-fun b!617043 () Bool)

(declare-fun e!374203 () Bool)

(declare-fun e!374204 () Bool)

(declare-fun tp!190858 () Bool)

(assert (=> b!617043 (= e!374203 (and e!374204 tp!190858))))

(declare-fun b!617044 () Bool)

(declare-fun e!374208 () Bool)

(declare-fun tp_is_empty!3535 () Bool)

(declare-fun tp!190861 () Bool)

(assert (=> b!617044 (= e!374208 (and tp_is_empty!3535 tp!190861))))

(declare-fun b!617045 () Bool)

(declare-fun res!268624 () Bool)

(assert (=> b!617045 (=> (not res!268624) (not e!374210))))

(declare-fun isEmpty!4477 (List!6228) Bool)

(assert (=> b!617045 (= res!268624 (not (isEmpty!4477 rules!3744)))))

(declare-fun b!617046 () Bool)

(declare-fun res!268620 () Bool)

(assert (=> b!617046 (=> (not res!268620) (not e!374210))))

(declare-datatypes ((LexerInterface!1142 0))(
  ( (LexerInterfaceExt!1139 (__x!4457 Int)) (Lexer!1140) )
))
(declare-fun thiss!25598 () LexerInterface!1142)

(declare-fun rulesInvariant!1103 (LexerInterface!1142 List!6228) Bool)

(assert (=> b!617046 (= res!268620 (rulesInvariant!1103 thiss!25598 rules!3744))))

(declare-fun b!617047 () Bool)

(declare-fun e!374207 () Bool)

(declare-fun tp!190862 () Bool)

(assert (=> b!617047 (= e!374207 (and tp_is_empty!3535 tp!190862))))

(declare-fun b!617048 () Bool)

(declare-fun res!268625 () Bool)

(assert (=> b!617048 (=> (not res!268625) (not e!374210))))

(declare-fun p!2908 () List!6227)

(declare-fun input!3215 () List!6227)

(declare-fun isPrefix!884 (List!6227 List!6227) Bool)

(assert (=> b!617048 (= res!268625 (isPrefix!884 p!2908 input!3215))))

(declare-fun res!268622 () Bool)

(assert (=> start!59166 (=> (not res!268622) (not e!374210))))

(assert (=> start!59166 (= res!268622 (is-Lexer!1140 thiss!25598))))

(assert (=> start!59166 e!374210))

(declare-fun e!374205 () Bool)

(assert (=> start!59166 e!374205))

(assert (=> start!59166 e!374208))

(assert (=> start!59166 e!374203))

(assert (=> start!59166 true))

(assert (=> start!59166 e!374207))

(declare-fun tp!190855 () Bool)

(declare-fun b!617049 () Bool)

(declare-fun e!374212 () Bool)

(declare-fun inv!7905 (String!8140) Bool)

(declare-fun inv!7908 (TokenValueInjection!2324) Bool)

(assert (=> b!617049 (= e!374204 (and tp!190855 (inv!7905 (tag!1516 (h!11619 rules!3744))) (inv!7908 (transformation!1254 (h!11619 rules!3744))) e!374212))))

(declare-fun b!617050 () Bool)

(declare-fun res!268621 () Bool)

(assert (=> b!617050 (=> (not res!268621) (not e!374210))))

(declare-datatypes ((Token!2232 0))(
  ( (Token!2233 (value!40604 TokenValue!1278) (rule!2042 Rule!2308) (size!4859 Int) (originalCharacters!1287 List!6227)) )
))
(declare-datatypes ((tuple2!7036 0))(
  ( (tuple2!7037 (_1!3782 Token!2232) (_2!3782 List!6227)) )
))
(declare-datatypes ((Option!1599 0))(
  ( (None!1598) (Some!1598 (v!16517 tuple2!7036)) )
))
(declare-fun isEmpty!4478 (Option!1599) Bool)

(declare-fun maxPrefix!832 (LexerInterface!1142 List!6228 List!6227) Option!1599)

(assert (=> b!617050 (= res!268621 (isEmpty!4478 (maxPrefix!832 thiss!25598 rules!3744 input!3215)))))

(declare-fun e!374209 () Bool)

(assert (=> b!617051 (= e!374209 (and tp!190860 tp!190856))))

(assert (=> b!617052 (= e!374212 (and tp!190857 tp!190854))))

(declare-fun b!617053 () Bool)

(assert (=> b!617053 (= e!374210 false)))

(declare-fun lt!264465 () Bool)

(declare-fun rulesValidInductive!477 (LexerInterface!1142 List!6228) Bool)

(assert (=> b!617053 (= lt!264465 (rulesValidInductive!477 thiss!25598 rules!3744))))

(declare-fun b!617054 () Bool)

(declare-fun tp!190859 () Bool)

(assert (=> b!617054 (= e!374205 (and tp!190859 (inv!7905 (tag!1516 r!3983)) (inv!7908 (transformation!1254 r!3983)) e!374209))))

(assert (= (and start!59166 res!268622) b!617048))

(assert (= (and b!617048 res!268625) b!617045))

(assert (= (and b!617045 res!268624) b!617046))

(assert (= (and b!617046 res!268620) b!617042))

(assert (= (and b!617042 res!268623) b!617050))

(assert (= (and b!617050 res!268621) b!617053))

(assert (= b!617054 b!617051))

(assert (= start!59166 b!617054))

(assert (= (and start!59166 (is-Cons!6217 p!2908)) b!617044))

(assert (= b!617049 b!617052))

(assert (= b!617043 b!617049))

(assert (= (and start!59166 (is-Cons!6218 rules!3744)) b!617043))

(assert (= (and start!59166 (is-Cons!6217 input!3215)) b!617047))

(declare-fun m!885475 () Bool)

(assert (=> b!617050 m!885475))

(assert (=> b!617050 m!885475))

(declare-fun m!885477 () Bool)

(assert (=> b!617050 m!885477))

(declare-fun m!885479 () Bool)

(assert (=> b!617053 m!885479))

(declare-fun m!885481 () Bool)

(assert (=> b!617046 m!885481))

(declare-fun m!885483 () Bool)

(assert (=> b!617054 m!885483))

(declare-fun m!885485 () Bool)

(assert (=> b!617054 m!885485))

(declare-fun m!885487 () Bool)

(assert (=> b!617045 m!885487))

(declare-fun m!885489 () Bool)

(assert (=> b!617042 m!885489))

(declare-fun m!885491 () Bool)

(assert (=> b!617048 m!885491))

(declare-fun m!885493 () Bool)

(assert (=> b!617049 m!885493))

(declare-fun m!885495 () Bool)

(assert (=> b!617049 m!885495))

(push 1)

(assert (not b!617042))

(assert (not b_next!17741))

(assert (not b!617050))

(assert (not b!617053))

(assert (not b!617047))

(assert b_and!61241)

(assert b_and!61237)

(assert (not b_next!17743))

(assert (not b!617049))

(assert (not b!617048))

(assert (not b_next!17737))

(assert (not b!617045))

(assert (not b_next!17739))

(assert tp_is_empty!3535)

(assert (not b!617046))

(assert b_and!61239)

(assert b_and!61235)

(assert (not b!617054))

(assert (not b!617043))

(assert (not b!617044))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!17739))

(assert (not b_next!17741))

(assert b_and!61239)

(assert b_and!61241)

(assert b_and!61237)

(assert (not b_next!17743))

(assert b_and!61235)

(assert (not b_next!17737))

(check-sat)

(pop 1)

