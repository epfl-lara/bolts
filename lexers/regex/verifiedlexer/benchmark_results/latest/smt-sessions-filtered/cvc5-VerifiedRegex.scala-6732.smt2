; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!351924 () Bool)

(assert start!351924)

(declare-fun b!3748443 () Bool)

(declare-fun b_free!100085 () Bool)

(declare-fun b_next!100789 () Bool)

(assert (=> b!3748443 (= b_free!100085 (not b_next!100789))))

(declare-fun tp!1143984 () Bool)

(declare-fun b_and!278319 () Bool)

(assert (=> b!3748443 (= tp!1143984 b_and!278319)))

(declare-fun b_free!100087 () Bool)

(declare-fun b_next!100791 () Bool)

(assert (=> b!3748443 (= b_free!100087 (not b_next!100791))))

(declare-fun tp!1143978 () Bool)

(declare-fun b_and!278321 () Bool)

(assert (=> b!3748443 (= tp!1143978 b_and!278321)))

(declare-fun b!3748444 () Bool)

(declare-fun b_free!100089 () Bool)

(declare-fun b_next!100793 () Bool)

(assert (=> b!3748444 (= b_free!100089 (not b_next!100793))))

(declare-fun tp!1143975 () Bool)

(declare-fun b_and!278323 () Bool)

(assert (=> b!3748444 (= tp!1143975 b_and!278323)))

(declare-fun b_free!100091 () Bool)

(declare-fun b_next!100795 () Bool)

(assert (=> b!3748444 (= b_free!100091 (not b_next!100795))))

(declare-fun tp!1143976 () Bool)

(declare-fun b_and!278325 () Bool)

(assert (=> b!3748444 (= tp!1143976 b_and!278325)))

(declare-fun b!3748458 () Bool)

(declare-fun b_free!100093 () Bool)

(declare-fun b_next!100797 () Bool)

(assert (=> b!3748458 (= b_free!100093 (not b_next!100797))))

(declare-fun tp!1143980 () Bool)

(declare-fun b_and!278327 () Bool)

(assert (=> b!3748458 (= tp!1143980 b_and!278327)))

(declare-fun b_free!100095 () Bool)

(declare-fun b_next!100799 () Bool)

(assert (=> b!3748458 (= b_free!100095 (not b_next!100799))))

(declare-fun tp!1143977 () Bool)

(declare-fun b_and!278329 () Bool)

(assert (=> b!3748458 (= tp!1143977 b_and!278329)))

(declare-fun e!2318152 () Bool)

(assert (=> b!3748443 (= e!2318152 (and tp!1143984 tp!1143978))))

(declare-fun e!2318165 () Bool)

(assert (=> b!3748444 (= e!2318165 (and tp!1143975 tp!1143976))))

(declare-fun res!1519392 () Bool)

(declare-fun e!2318153 () Bool)

(assert (=> start!351924 (=> (not res!1519392) (not e!2318153))))

(declare-datatypes ((LexerInterface!5686 0))(
  ( (LexerInterfaceExt!5683 (__x!24871 Int)) (Lexer!5684) )
))
(declare-fun thiss!27232 () LexerInterface!5686)

(assert (=> start!351924 (= res!1519392 (is-Lexer!5684 thiss!27232))))

(assert (=> start!351924 e!2318153))

(assert (=> start!351924 true))

(declare-fun e!2318157 () Bool)

(assert (=> start!351924 e!2318157))

(declare-fun e!2318163 () Bool)

(assert (=> start!351924 e!2318163))

(declare-datatypes ((C!22190 0))(
  ( (C!22191 (val!13143 Int)) )
))
(declare-datatypes ((List!40025 0))(
  ( (Nil!39901) (Cons!39901 (h!45321 C!22190) (t!302708 List!40025)) )
))
(declare-datatypes ((IArray!24393 0))(
  ( (IArray!24394 (innerList!12254 List!40025)) )
))
(declare-datatypes ((String!45262 0))(
  ( (String!45263 (value!194305 String)) )
))
(declare-datatypes ((Regex!11002 0))(
  ( (ElementMatch!11002 (c!649052 C!22190)) (Concat!17329 (regOne!22516 Regex!11002) (regTwo!22516 Regex!11002)) (EmptyExpr!11002) (Star!11002 (reg!11331 Regex!11002)) (EmptyLang!11002) (Union!11002 (regOne!22517 Regex!11002) (regTwo!22517 Regex!11002)) )
))
(declare-datatypes ((List!40026 0))(
  ( (Nil!39902) (Cons!39902 (h!45322 (_ BitVec 16)) (t!302709 List!40026)) )
))
(declare-datatypes ((TokenValue!6327 0))(
  ( (FloatLiteralValue!12654 (text!44734 List!40026)) (TokenValueExt!6326 (__x!24872 Int)) (Broken!31635 (value!194306 List!40026)) (Object!6450) (End!6327) (Def!6327) (Underscore!6327) (Match!6327) (Else!6327) (Error!6327) (Case!6327) (If!6327) (Extends!6327) (Abstract!6327) (Class!6327) (Val!6327) (DelimiterValue!12654 (del!6387 List!40026)) (KeywordValue!6333 (value!194307 List!40026)) (CommentValue!12654 (value!194308 List!40026)) (WhitespaceValue!12654 (value!194309 List!40026)) (IndentationValue!6327 (value!194310 List!40026)) (String!45264) (Int32!6327) (Broken!31636 (value!194311 List!40026)) (Boolean!6328) (Unit!57702) (OperatorValue!6330 (op!6387 List!40026)) (IdentifierValue!12654 (value!194312 List!40026)) (IdentifierValue!12655 (value!194313 List!40026)) (WhitespaceValue!12655 (value!194314 List!40026)) (True!12654) (False!12654) (Broken!31637 (value!194315 List!40026)) (Broken!31638 (value!194316 List!40026)) (True!12655) (RightBrace!6327) (RightBracket!6327) (Colon!6327) (Null!6327) (Comma!6327) (LeftBracket!6327) (False!12655) (LeftBrace!6327) (ImaginaryLiteralValue!6327 (text!44735 List!40026)) (StringLiteralValue!18981 (value!194317 List!40026)) (EOFValue!6327 (value!194318 List!40026)) (IdentValue!6327 (value!194319 List!40026)) (DelimiterValue!12655 (value!194320 List!40026)) (DedentValue!6327 (value!194321 List!40026)) (NewLineValue!6327 (value!194322 List!40026)) (IntegerValue!18981 (value!194323 (_ BitVec 32)) (text!44736 List!40026)) (IntegerValue!18982 (value!194324 Int) (text!44737 List!40026)) (Times!6327) (Or!6327) (Equal!6327) (Minus!6327) (Broken!31639 (value!194325 List!40026)) (And!6327) (Div!6327) (LessEqual!6327) (Mod!6327) (Concat!17330) (Not!6327) (Plus!6327) (SpaceValue!6327 (value!194326 List!40026)) (IntegerValue!18983 (value!194327 Int) (text!44738 List!40026)) (StringLiteralValue!18982 (text!44739 List!40026)) (FloatLiteralValue!12655 (text!44740 List!40026)) (BytesLiteralValue!6327 (value!194328 List!40026)) (CommentValue!12655 (value!194329 List!40026)) (StringLiteralValue!18983 (value!194330 List!40026)) (ErrorTokenValue!6327 (msg!6388 List!40026)) )
))
(declare-datatypes ((Conc!12194 0))(
  ( (Node!12194 (left!30882 Conc!12194) (right!31212 Conc!12194) (csize!24618 Int) (cheight!12405 Int)) (Leaf!18927 (xs!15396 IArray!24393) (csize!24619 Int)) (Empty!12194) )
))
(declare-datatypes ((BalanceConc!24002 0))(
  ( (BalanceConc!24003 (c!649053 Conc!12194)) )
))
(declare-datatypes ((TokenValueInjection!12082 0))(
  ( (TokenValueInjection!12083 (toValue!8445 Int) (toChars!8304 Int)) )
))
(declare-datatypes ((Rule!11994 0))(
  ( (Rule!11995 (regex!6097 Regex!11002) (tag!6957 String!45262) (isSeparator!6097 Bool) (transformation!6097 TokenValueInjection!12082)) )
))
(declare-datatypes ((Token!11332 0))(
  ( (Token!11333 (value!194331 TokenValue!6327) (rule!8861 Rule!11994) (size!30058 Int) (originalCharacters!6697 List!40025)) )
))
(declare-fun t!8579 () Token!11332)

(declare-fun e!2318156 () Bool)

(declare-fun inv!53407 (Token!11332) Bool)

(assert (=> start!351924 (and (inv!53407 t!8579) e!2318156)))

(declare-fun e!2318164 () Bool)

(declare-datatypes ((List!40027 0))(
  ( (Nil!39903) (Cons!39903 (h!45323 Token!11332) (t!302710 List!40027)) )
))
(declare-fun tokens!606 () List!40027)

(declare-fun b!3748445 () Bool)

(declare-fun tp!1143973 () Bool)

(assert (=> b!3748445 (= e!2318163 (and (inv!53407 (h!45323 tokens!606)) e!2318164 tp!1143973))))

(declare-fun b!3748446 () Bool)

(declare-fun res!1519391 () Bool)

(assert (=> b!3748446 (=> (not res!1519391) (not e!2318153))))

(assert (=> b!3748446 (= res!1519391 (and (or (not (is-Cons!39903 tokens!606)) (not (= (h!45323 tokens!606) t!8579))) (is-Cons!39903 tokens!606)))))

(declare-fun b!3748447 () Bool)

(assert (=> b!3748447 (= e!2318153 false)))

(declare-fun lt!1299679 () Bool)

(declare-datatypes ((List!40028 0))(
  ( (Nil!39904) (Cons!39904 (h!45324 Rule!11994) (t!302711 List!40028)) )
))
(declare-fun rules!4236 () List!40028)

(declare-fun rulesProduceEachTokenIndividuallyList!1914 (LexerInterface!5686 List!40028 List!40027) Bool)

(assert (=> b!3748447 (= lt!1299679 (rulesProduceEachTokenIndividuallyList!1914 thiss!27232 rules!4236 (t!302710 tokens!606)))))

(declare-fun e!2318166 () Bool)

(declare-fun b!3748448 () Bool)

(declare-fun tp!1143974 () Bool)

(declare-fun inv!21 (TokenValue!6327) Bool)

(assert (=> b!3748448 (= e!2318156 (and (inv!21 (value!194331 t!8579)) e!2318166 tp!1143974))))

(declare-fun b!3748449 () Bool)

(declare-fun res!1519387 () Bool)

(assert (=> b!3748449 (=> (not res!1519387) (not e!2318153))))

(declare-fun contains!8149 (List!40027 Token!11332) Bool)

(assert (=> b!3748449 (= res!1519387 (contains!8149 tokens!606 t!8579))))

(declare-fun b!3748450 () Bool)

(declare-fun e!2318155 () Bool)

(declare-fun tp!1143983 () Bool)

(assert (=> b!3748450 (= e!2318157 (and e!2318155 tp!1143983))))

(declare-fun tp!1143981 () Bool)

(declare-fun b!3748451 () Bool)

(declare-fun e!2318162 () Bool)

(declare-fun inv!53404 (String!45262) Bool)

(declare-fun inv!53408 (TokenValueInjection!12082) Bool)

(assert (=> b!3748451 (= e!2318166 (and tp!1143981 (inv!53404 (tag!6957 (rule!8861 t!8579))) (inv!53408 (transformation!6097 (rule!8861 t!8579))) e!2318162))))

(declare-fun b!3748452 () Bool)

(declare-fun res!1519388 () Bool)

(assert (=> b!3748452 (=> (not res!1519388) (not e!2318153))))

(assert (=> b!3748452 (= res!1519388 (rulesProduceEachTokenIndividuallyList!1914 thiss!27232 rules!4236 tokens!606))))

(declare-fun tp!1143982 () Bool)

(declare-fun b!3748453 () Bool)

(declare-fun e!2318159 () Bool)

(assert (=> b!3748453 (= e!2318159 (and tp!1143982 (inv!53404 (tag!6957 (rule!8861 (h!45323 tokens!606)))) (inv!53408 (transformation!6097 (rule!8861 (h!45323 tokens!606)))) e!2318165))))

(declare-fun b!3748454 () Bool)

(declare-fun tp!1143979 () Bool)

(assert (=> b!3748454 (= e!2318155 (and tp!1143979 (inv!53404 (tag!6957 (h!45324 rules!4236))) (inv!53408 (transformation!6097 (h!45324 rules!4236))) e!2318152))))

(declare-fun tp!1143985 () Bool)

(declare-fun b!3748455 () Bool)

(assert (=> b!3748455 (= e!2318164 (and (inv!21 (value!194331 (h!45323 tokens!606))) e!2318159 tp!1143985))))

(declare-fun b!3748456 () Bool)

(declare-fun res!1519389 () Bool)

(assert (=> b!3748456 (=> (not res!1519389) (not e!2318153))))

(declare-fun isEmpty!23519 (List!40028) Bool)

(assert (=> b!3748456 (= res!1519389 (not (isEmpty!23519 rules!4236)))))

(declare-fun b!3748457 () Bool)

(declare-fun res!1519386 () Bool)

(assert (=> b!3748457 (=> (not res!1519386) (not e!2318153))))

(declare-fun rulesInvariant!5083 (LexerInterface!5686 List!40028) Bool)

(assert (=> b!3748457 (= res!1519386 (rulesInvariant!5083 thiss!27232 rules!4236))))

(assert (=> b!3748458 (= e!2318162 (and tp!1143980 tp!1143977))))

(declare-fun b!3748459 () Bool)

(declare-fun res!1519390 () Bool)

(assert (=> b!3748459 (=> (not res!1519390) (not e!2318153))))

(assert (=> b!3748459 (= res!1519390 (contains!8149 (t!302710 tokens!606) t!8579))))

(assert (= (and start!351924 res!1519392) b!3748456))

(assert (= (and b!3748456 res!1519389) b!3748457))

(assert (= (and b!3748457 res!1519386) b!3748449))

(assert (= (and b!3748449 res!1519387) b!3748452))

(assert (= (and b!3748452 res!1519388) b!3748446))

(assert (= (and b!3748446 res!1519391) b!3748459))

(assert (= (and b!3748459 res!1519390) b!3748447))

(assert (= b!3748454 b!3748443))

(assert (= b!3748450 b!3748454))

(assert (= (and start!351924 (is-Cons!39904 rules!4236)) b!3748450))

(assert (= b!3748453 b!3748444))

(assert (= b!3748455 b!3748453))

(assert (= b!3748445 b!3748455))

(assert (= (and start!351924 (is-Cons!39903 tokens!606)) b!3748445))

(assert (= b!3748451 b!3748458))

(assert (= b!3748448 b!3748451))

(assert (= start!351924 b!3748448))

(declare-fun m!4240205 () Bool)

(assert (=> start!351924 m!4240205))

(declare-fun m!4240207 () Bool)

(assert (=> b!3748447 m!4240207))

(declare-fun m!4240209 () Bool)

(assert (=> b!3748452 m!4240209))

(declare-fun m!4240211 () Bool)

(assert (=> b!3748454 m!4240211))

(declare-fun m!4240213 () Bool)

(assert (=> b!3748454 m!4240213))

(declare-fun m!4240215 () Bool)

(assert (=> b!3748455 m!4240215))

(declare-fun m!4240217 () Bool)

(assert (=> b!3748459 m!4240217))

(declare-fun m!4240219 () Bool)

(assert (=> b!3748449 m!4240219))

(declare-fun m!4240221 () Bool)

(assert (=> b!3748445 m!4240221))

(declare-fun m!4240223 () Bool)

(assert (=> b!3748453 m!4240223))

(declare-fun m!4240225 () Bool)

(assert (=> b!3748453 m!4240225))

(declare-fun m!4240227 () Bool)

(assert (=> b!3748457 m!4240227))

(declare-fun m!4240229 () Bool)

(assert (=> b!3748456 m!4240229))

(declare-fun m!4240231 () Bool)

(assert (=> b!3748451 m!4240231))

(declare-fun m!4240233 () Bool)

(assert (=> b!3748451 m!4240233))

(declare-fun m!4240235 () Bool)

(assert (=> b!3748448 m!4240235))

(push 1)

(assert (not b!3748459))

(assert (not b_next!100797))

(assert b_and!278321)

(assert (not b!3748453))

(assert (not b!3748447))

(assert b_and!278327)

(assert b_and!278329)

(assert (not b!3748452))

(assert b_and!278323)

(assert (not b!3748457))

(assert (not b!3748449))

(assert (not b_next!100789))

(assert (not b!3748455))

(assert (not b_next!100793))

(assert (not b!3748448))

(assert (not b!3748454))

(assert (not b_next!100799))

(assert b_and!278325)

(assert (not start!351924))

(assert (not b!3748445))

(assert (not b_next!100791))

(assert b_and!278319)

(assert (not b!3748450))

(assert (not b_next!100795))

(assert (not b!3748456))

(assert (not b!3748451))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!100793))

(assert (not b_next!100797))

(assert b_and!278321)

(assert b_and!278327)

(assert b_and!278329)

(assert b_and!278323)

(assert (not b_next!100795))

(assert (not b_next!100789))

(assert (not b_next!100799))

(assert b_and!278325)

(assert (not b_next!100791))

(assert b_and!278319)

(check-sat)

(pop 1)

