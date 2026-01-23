; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!401272 () Bool)

(assert start!401272)

(declare-fun b!4200244 () Bool)

(declare-fun b_free!122499 () Bool)

(declare-fun b_next!123203 () Bool)

(assert (=> b!4200244 (= b_free!122499 (not b_next!123203))))

(declare-fun tp!1283153 () Bool)

(declare-fun b_and!329553 () Bool)

(assert (=> b!4200244 (= tp!1283153 b_and!329553)))

(declare-fun b_free!122501 () Bool)

(declare-fun b_next!123205 () Bool)

(assert (=> b!4200244 (= b_free!122501 (not b_next!123205))))

(declare-fun tp!1283146 () Bool)

(declare-fun b_and!329555 () Bool)

(assert (=> b!4200244 (= tp!1283146 b_and!329555)))

(declare-fun b!4200245 () Bool)

(declare-fun b_free!122503 () Bool)

(declare-fun b_next!123207 () Bool)

(assert (=> b!4200245 (= b_free!122503 (not b_next!123207))))

(declare-fun tp!1283155 () Bool)

(declare-fun b_and!329557 () Bool)

(assert (=> b!4200245 (= tp!1283155 b_and!329557)))

(declare-fun b_free!122505 () Bool)

(declare-fun b_next!123209 () Bool)

(assert (=> b!4200245 (= b_free!122505 (not b_next!123209))))

(declare-fun tp!1283150 () Bool)

(declare-fun b_and!329559 () Bool)

(assert (=> b!4200245 (= tp!1283150 b_and!329559)))

(declare-fun b!4200233 () Bool)

(declare-fun e!2607258 () Bool)

(declare-fun tp_is_empty!22187 () Bool)

(declare-fun tp!1283148 () Bool)

(assert (=> b!4200233 (= e!2607258 (and tp_is_empty!22187 tp!1283148))))

(declare-fun b!4200234 () Bool)

(declare-fun e!2607249 () Bool)

(declare-fun tp!1283151 () Bool)

(assert (=> b!4200234 (= e!2607249 (and tp_is_empty!22187 tp!1283151))))

(declare-fun b!4200235 () Bool)

(declare-fun res!1724923 () Bool)

(declare-fun e!2607253 () Bool)

(assert (=> b!4200235 (=> (not res!1724923) (not e!2607253))))

(declare-datatypes ((C!25414 0))(
  ( (C!25415 (val!14869 Int)) )
))
(declare-datatypes ((List!46272 0))(
  ( (Nil!46148) (Cons!46148 (h!51568 C!25414) (t!346777 List!46272)) )
))
(declare-fun input!3517 () List!46272)

(declare-fun p!3001 () List!46272)

(declare-fun suffix!1557 () List!46272)

(declare-fun ++!11779 (List!46272 List!46272) List!46272)

(assert (=> b!4200235 (= res!1724923 (= (++!11779 p!3001 suffix!1557) input!3517))))

(declare-fun b!4200236 () Bool)

(declare-fun e!2607251 () Bool)

(declare-fun tp!1283145 () Bool)

(assert (=> b!4200236 (= e!2607251 (and tp_is_empty!22187 tp!1283145))))

(declare-fun b!4200237 () Bool)

(declare-fun e!2607254 () Bool)

(declare-fun tp!1283149 () Bool)

(assert (=> b!4200237 (= e!2607254 (and tp_is_empty!22187 tp!1283149))))

(declare-fun b!4200239 () Bool)

(declare-fun res!1724919 () Bool)

(assert (=> b!4200239 (=> (not res!1724919) (not e!2607253))))

(declare-fun pBis!121 () List!46272)

(declare-fun isPrefix!4564 (List!46272 List!46272) Bool)

(assert (=> b!4200239 (= res!1724919 (isPrefix!4564 pBis!121 input!3517))))

(declare-fun b!4200240 () Bool)

(declare-fun res!1724920 () Bool)

(assert (=> b!4200240 (=> (not res!1724920) (not e!2607253))))

(declare-datatypes ((List!46273 0))(
  ( (Nil!46149) (Cons!46149 (h!51569 (_ BitVec 16)) (t!346778 List!46273)) )
))
(declare-datatypes ((TokenValue!7935 0))(
  ( (FloatLiteralValue!15870 (text!55990 List!46273)) (TokenValueExt!7934 (__x!28093 Int)) (Broken!39675 (value!240099 List!46273)) (Object!8058) (End!7935) (Def!7935) (Underscore!7935) (Match!7935) (Else!7935) (Error!7935) (Case!7935) (If!7935) (Extends!7935) (Abstract!7935) (Class!7935) (Val!7935) (DelimiterValue!15870 (del!7995 List!46273)) (KeywordValue!7941 (value!240100 List!46273)) (CommentValue!15870 (value!240101 List!46273)) (WhitespaceValue!15870 (value!240102 List!46273)) (IndentationValue!7935 (value!240103 List!46273)) (String!53546) (Int32!7935) (Broken!39676 (value!240104 List!46273)) (Boolean!7936) (Unit!65249) (OperatorValue!7938 (op!7995 List!46273)) (IdentifierValue!15870 (value!240105 List!46273)) (IdentifierValue!15871 (value!240106 List!46273)) (WhitespaceValue!15871 (value!240107 List!46273)) (True!15870) (False!15870) (Broken!39677 (value!240108 List!46273)) (Broken!39678 (value!240109 List!46273)) (True!15871) (RightBrace!7935) (RightBracket!7935) (Colon!7935) (Null!7935) (Comma!7935) (LeftBracket!7935) (False!15871) (LeftBrace!7935) (ImaginaryLiteralValue!7935 (text!55991 List!46273)) (StringLiteralValue!23805 (value!240110 List!46273)) (EOFValue!7935 (value!240111 List!46273)) (IdentValue!7935 (value!240112 List!46273)) (DelimiterValue!15871 (value!240113 List!46273)) (DedentValue!7935 (value!240114 List!46273)) (NewLineValue!7935 (value!240115 List!46273)) (IntegerValue!23805 (value!240116 (_ BitVec 32)) (text!55992 List!46273)) (IntegerValue!23806 (value!240117 Int) (text!55993 List!46273)) (Times!7935) (Or!7935) (Equal!7935) (Minus!7935) (Broken!39679 (value!240118 List!46273)) (And!7935) (Div!7935) (LessEqual!7935) (Mod!7935) (Concat!20545) (Not!7935) (Plus!7935) (SpaceValue!7935 (value!240119 List!46273)) (IntegerValue!23807 (value!240120 Int) (text!55994 List!46273)) (StringLiteralValue!23806 (text!55995 List!46273)) (FloatLiteralValue!15871 (text!55996 List!46273)) (BytesLiteralValue!7935 (value!240121 List!46273)) (CommentValue!15871 (value!240122 List!46273)) (StringLiteralValue!23807 (value!240123 List!46273)) (ErrorTokenValue!7935 (msg!7996 List!46273)) )
))
(declare-datatypes ((IArray!27837 0))(
  ( (IArray!27838 (innerList!13976 List!46272)) )
))
(declare-datatypes ((Regex!12610 0))(
  ( (ElementMatch!12610 (c!716196 C!25414)) (Concat!20546 (regOne!25732 Regex!12610) (regTwo!25732 Regex!12610)) (EmptyExpr!12610) (Star!12610 (reg!12939 Regex!12610)) (EmptyLang!12610) (Union!12610 (regOne!25733 Regex!12610) (regTwo!25733 Regex!12610)) )
))
(declare-datatypes ((String!53547 0))(
  ( (String!53548 (value!240124 String)) )
))
(declare-datatypes ((Conc!13916 0))(
  ( (Node!13916 (left!34380 Conc!13916) (right!34710 Conc!13916) (csize!28062 Int) (cheight!14127 Int)) (Leaf!21513 (xs!17222 IArray!27837) (csize!28063 Int)) (Empty!13916) )
))
(declare-datatypes ((BalanceConc!27426 0))(
  ( (BalanceConc!27427 (c!716197 Conc!13916)) )
))
(declare-datatypes ((TokenValueInjection!15298 0))(
  ( (TokenValueInjection!15299 (toValue!10409 Int) (toChars!10268 Int)) )
))
(declare-datatypes ((Rule!15210 0))(
  ( (Rule!15211 (regex!7705 Regex!12610) (tag!8569 String!53547) (isSeparator!7705 Bool) (transformation!7705 TokenValueInjection!15298)) )
))
(declare-datatypes ((List!46274 0))(
  ( (Nil!46150) (Cons!46150 (h!51570 Rule!15210) (t!346779 List!46274)) )
))
(declare-fun rules!3967 () List!46274)

(declare-fun rBis!178 () Rule!15210)

(declare-fun contains!9518 (List!46274 Rule!15210) Bool)

(assert (=> b!4200240 (= res!1724920 (contains!9518 rules!3967 rBis!178))))

(declare-fun b!4200241 () Bool)

(declare-fun tp!1283152 () Bool)

(declare-fun e!2607257 () Bool)

(declare-fun e!2607255 () Bool)

(declare-fun inv!60704 (String!53547) Bool)

(declare-fun inv!60707 (TokenValueInjection!15298) Bool)

(assert (=> b!4200241 (= e!2607255 (and tp!1283152 (inv!60704 (tag!8569 (h!51570 rules!3967))) (inv!60707 (transformation!7705 (h!51570 rules!3967))) e!2607257))))

(declare-fun b!4200242 () Bool)

(declare-fun res!1724917 () Bool)

(assert (=> b!4200242 (=> (not res!1724917) (not e!2607253))))

(declare-datatypes ((LexerInterface!7300 0))(
  ( (LexerInterfaceExt!7297 (__x!28094 Int)) (Lexer!7298) )
))
(declare-fun thiss!26544 () LexerInterface!7300)

(declare-fun rulesInvariant!6511 (LexerInterface!7300 List!46274) Bool)

(assert (=> b!4200242 (= res!1724917 (rulesInvariant!6511 thiss!26544 rules!3967))))

(declare-fun b!4200243 () Bool)

(declare-fun e!2607252 () Bool)

(declare-fun tp!1283154 () Bool)

(assert (=> b!4200243 (= e!2607252 (and e!2607255 tp!1283154))))

(declare-fun b!4200238 () Bool)

(declare-fun res!1724918 () Bool)

(assert (=> b!4200238 (=> (not res!1724918) (not e!2607253))))

(declare-fun isEmpty!27330 (List!46274) Bool)

(assert (=> b!4200238 (= res!1724918 (not (isEmpty!27330 rules!3967)))))

(declare-fun res!1724922 () Bool)

(assert (=> start!401272 (=> (not res!1724922) (not e!2607253))))

(assert (=> start!401272 (= res!1724922 (is-Lexer!7298 thiss!26544))))

(assert (=> start!401272 e!2607253))

(assert (=> start!401272 true))

(declare-fun e!2607250 () Bool)

(assert (=> start!401272 e!2607250))

(assert (=> start!401272 e!2607258))

(assert (=> start!401272 e!2607252))

(assert (=> start!401272 e!2607251))

(assert (=> start!401272 e!2607249))

(assert (=> start!401272 e!2607254))

(assert (=> b!4200244 (= e!2607257 (and tp!1283153 tp!1283146))))

(declare-fun e!2607259 () Bool)

(assert (=> b!4200245 (= e!2607259 (and tp!1283155 tp!1283150))))

(declare-fun b!4200246 () Bool)

(declare-fun res!1724921 () Bool)

(assert (=> b!4200246 (=> (not res!1724921) (not e!2607253))))

(assert (=> b!4200246 (= res!1724921 (isPrefix!4564 p!3001 input!3517))))

(declare-fun b!4200247 () Bool)

(declare-fun tp!1283147 () Bool)

(assert (=> b!4200247 (= e!2607250 (and tp!1283147 (inv!60704 (tag!8569 rBis!178)) (inv!60707 (transformation!7705 rBis!178)) e!2607259))))

(declare-fun b!4200248 () Bool)

(assert (=> b!4200248 (= e!2607253 false)))

(declare-fun lt!1496291 () Bool)

(declare-fun rulesValidInductive!2853 (LexerInterface!7300 List!46274) Bool)

(assert (=> b!4200248 (= lt!1496291 (rulesValidInductive!2853 thiss!26544 rules!3967))))

(assert (= (and start!401272 res!1724922) b!4200235))

(assert (= (and b!4200235 res!1724923) b!4200246))

(assert (= (and b!4200246 res!1724921) b!4200239))

(assert (= (and b!4200239 res!1724919) b!4200238))

(assert (= (and b!4200238 res!1724918) b!4200242))

(assert (= (and b!4200242 res!1724917) b!4200240))

(assert (= (and b!4200240 res!1724920) b!4200248))

(assert (= b!4200247 b!4200245))

(assert (= start!401272 b!4200247))

(assert (= (and start!401272 (is-Cons!46148 p!3001)) b!4200233))

(assert (= b!4200241 b!4200244))

(assert (= b!4200243 b!4200241))

(assert (= (and start!401272 (is-Cons!46150 rules!3967)) b!4200243))

(assert (= (and start!401272 (is-Cons!46148 input!3517)) b!4200236))

(assert (= (and start!401272 (is-Cons!46148 pBis!121)) b!4200234))

(assert (= (and start!401272 (is-Cons!46148 suffix!1557)) b!4200237))

(declare-fun m!4788751 () Bool)

(assert (=> b!4200247 m!4788751))

(declare-fun m!4788753 () Bool)

(assert (=> b!4200247 m!4788753))

(declare-fun m!4788755 () Bool)

(assert (=> b!4200242 m!4788755))

(declare-fun m!4788757 () Bool)

(assert (=> b!4200240 m!4788757))

(declare-fun m!4788759 () Bool)

(assert (=> b!4200238 m!4788759))

(declare-fun m!4788761 () Bool)

(assert (=> b!4200235 m!4788761))

(declare-fun m!4788763 () Bool)

(assert (=> b!4200248 m!4788763))

(declare-fun m!4788765 () Bool)

(assert (=> b!4200239 m!4788765))

(declare-fun m!4788767 () Bool)

(assert (=> b!4200246 m!4788767))

(declare-fun m!4788769 () Bool)

(assert (=> b!4200241 m!4788769))

(declare-fun m!4788771 () Bool)

(assert (=> b!4200241 m!4788771))

(push 1)

(assert (not b!4200248))

(assert (not b!4200242))

(assert (not b!4200247))

(assert b_and!329553)

(assert (not b!4200233))

(assert (not b_next!123203))

(assert (not b!4200243))

(assert (not b!4200241))

(assert (not b_next!123207))

(assert b_and!329559)

(assert (not b_next!123209))

(assert b_and!329557)

(assert (not b!4200238))

(assert b_and!329555)

(assert (not b_next!123205))

(assert (not b!4200239))

(assert (not b!4200234))

(assert (not b!4200237))

(assert (not b!4200236))

(assert (not b!4200240))

(assert (not b!4200235))

(assert (not b!4200246))

(assert tp_is_empty!22187)

(check-sat)

(pop 1)

(push 1)

(assert b_and!329553)

(assert b_and!329555)

(assert (not b_next!123205))

(assert (not b_next!123203))

(assert (not b_next!123207))

(assert b_and!329559)

(assert (not b_next!123209))

(assert b_and!329557)

(check-sat)

(pop 1)

