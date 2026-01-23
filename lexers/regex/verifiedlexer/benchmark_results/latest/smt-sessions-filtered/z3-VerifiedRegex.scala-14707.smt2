; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!757914 () Bool)

(assert start!757914)

(declare-fun b!8048146 () Bool)

(declare-fun b_free!136643 () Bool)

(declare-fun b_next!137433 () Bool)

(assert (=> b!8048146 (= b_free!136643 (not b_next!137433))))

(declare-fun tp!2413211 () Bool)

(declare-fun b_and!355079 () Bool)

(assert (=> b!8048146 (= tp!2413211 b_and!355079)))

(declare-fun b_free!136645 () Bool)

(declare-fun b_next!137435 () Bool)

(assert (=> b!8048146 (= b_free!136645 (not b_next!137435))))

(declare-fun tp!2413214 () Bool)

(declare-fun b_and!355081 () Bool)

(assert (=> b!8048146 (= tp!2413214 b_and!355081)))

(declare-fun res!3181494 () Bool)

(declare-fun e!4742020 () Bool)

(assert (=> start!757914 (=> (not res!3181494) (not e!4742020))))

(declare-datatypes ((LexerInterface!8382 0))(
  ( (LexerInterfaceExt!8379 (__x!35507 Int)) (Lexer!8380) )
))
(declare-fun thiss!10876 () LexerInterface!8382)

(declare-datatypes ((List!75578 0))(
  ( (Nil!75452) (Cons!75452 (h!81900 (_ BitVec 16)) (t!391350 List!75578)) )
))
(declare-datatypes ((TokenValue!9114 0))(
  ( (FloatLiteralValue!18228 (text!64243 List!75578)) (TokenValueExt!9113 (__x!35508 Int)) (Broken!45570 (value!293606 List!75578)) (Object!9239) (End!9114) (Def!9114) (Underscore!9114) (Match!9114) (Else!9114) (Error!9114) (Case!9114) (If!9114) (Extends!9114) (Abstract!9114) (Class!9114) (Val!9114) (DelimiterValue!18228 (del!9174 List!75578)) (KeywordValue!9120 (value!293607 List!75578)) (CommentValue!18228 (value!293608 List!75578)) (WhitespaceValue!18228 (value!293609 List!75578)) (IndentationValue!9114 (value!293610 List!75578)) (String!85351) (Int32!9114) (Broken!45571 (value!293611 List!75578)) (Boolean!9115) (Unit!171177) (OperatorValue!9117 (op!9174 List!75578)) (IdentifierValue!18228 (value!293612 List!75578)) (IdentifierValue!18229 (value!293613 List!75578)) (WhitespaceValue!18229 (value!293614 List!75578)) (True!18228) (False!18228) (Broken!45572 (value!293615 List!75578)) (Broken!45573 (value!293616 List!75578)) (True!18229) (RightBrace!9114) (RightBracket!9114) (Colon!9114) (Null!9114) (Comma!9114) (LeftBracket!9114) (False!18229) (LeftBrace!9114) (ImaginaryLiteralValue!9114 (text!64244 List!75578)) (StringLiteralValue!27342 (value!293617 List!75578)) (EOFValue!9114 (value!293618 List!75578)) (IdentValue!9114 (value!293619 List!75578)) (DelimiterValue!18229 (value!293620 List!75578)) (DedentValue!9114 (value!293621 List!75578)) (NewLineValue!9114 (value!293622 List!75578)) (IntegerValue!27342 (value!293623 (_ BitVec 32)) (text!64245 List!75578)) (IntegerValue!27343 (value!293624 Int) (text!64246 List!75578)) (Times!9114) (Or!9114) (Equal!9114) (Minus!9114) (Broken!45574 (value!293625 List!75578)) (And!9114) (Div!9114) (LessEqual!9114) (Mod!9114) (Concat!30979) (Not!9114) (Plus!9114) (SpaceValue!9114 (value!293626 List!75578)) (IntegerValue!27344 (value!293627 Int) (text!64247 List!75578)) (StringLiteralValue!27343 (text!64248 List!75578)) (FloatLiteralValue!18229 (text!64249 List!75578)) (BytesLiteralValue!9114 (value!293628 List!75578)) (CommentValue!18229 (value!293629 List!75578)) (StringLiteralValue!27344 (value!293630 List!75578)) (ErrorTokenValue!9114 (msg!9175 List!75578)) )
))
(declare-datatypes ((C!44068 0))(
  ( (C!44069 (val!32810 Int)) )
))
(declare-datatypes ((List!75579 0))(
  ( (Nil!75453) (Cons!75453 (h!81901 C!44068) (t!391351 List!75579)) )
))
(declare-datatypes ((String!85352 0))(
  ( (String!85353 (value!293631 String)) )
))
(declare-datatypes ((IArray!32185 0))(
  ( (IArray!32186 (innerList!16150 List!75579)) )
))
(declare-datatypes ((Conc!16062 0))(
  ( (Node!16062 (left!57449 Conc!16062) (right!57779 Conc!16062) (csize!32354 Int) (cheight!16273 Int)) (Leaf!30770 (xs!19460 IArray!32185) (csize!32355 Int)) (Empty!16062) )
))
(declare-datatypes ((BalanceConc!31080 0))(
  ( (BalanceConc!31081 (c!1475529 Conc!16062)) )
))
(declare-datatypes ((Regex!21865 0))(
  ( (ElementMatch!21865 (c!1475530 C!44068)) (Concat!30980 (regOne!44242 Regex!21865) (regTwo!44242 Regex!21865)) (EmptyExpr!21865) (Star!21865 (reg!22194 Regex!21865)) (EmptyLang!21865) (Union!21865 (regOne!44243 Regex!21865) (regTwo!44243 Regex!21865)) )
))
(declare-datatypes ((TokenValueInjection!17536 0))(
  ( (TokenValueInjection!17537 (toValue!11877 Int) (toChars!11736 Int)) )
))
(declare-datatypes ((Rule!17388 0))(
  ( (Rule!17389 (regex!8794 Regex!21865) (tag!9658 String!85352) (isSeparator!8794 Bool) (transformation!8794 TokenValueInjection!17536)) )
))
(declare-datatypes ((List!75580 0))(
  ( (Nil!75454) (Cons!75454 (h!81902 Rule!17388) (t!391352 List!75580)) )
))
(declare-fun rules!1024 () List!75580)

(get-info :version)

(assert (=> start!757914 (= res!3181494 (and ((_ is Lexer!8380) thiss!10876) (not ((_ is Nil!75454) rules!1024))))))

(assert (=> start!757914 e!4742020))

(assert (=> start!757914 true))

(declare-fun e!4742021 () Bool)

(assert (=> start!757914 e!4742021))

(declare-fun e!4742017 () Bool)

(assert (=> start!757914 e!4742017))

(declare-fun b!8048142 () Bool)

(assert (=> b!8048142 (= e!4742020 false)))

(declare-fun lt!2722922 () Bool)

(declare-datatypes ((List!75581 0))(
  ( (Nil!75455) (Cons!75455 (h!81903 String!85352) (t!391353 List!75581)) )
))
(declare-fun acc!325 () List!75581)

(declare-fun contains!21077 (List!75581 String!85352) Bool)

(assert (=> b!8048142 (= lt!2722922 (contains!21077 acc!325 (tag!9658 (h!81902 rules!1024))))))

(declare-fun b!8048143 () Bool)

(declare-fun tp!2413215 () Bool)

(declare-fun inv!97155 (String!85352) Bool)

(assert (=> b!8048143 (= e!4742017 (and (inv!97155 (h!81903 acc!325)) tp!2413215))))

(declare-fun e!4742018 () Bool)

(declare-fun b!8048144 () Bool)

(declare-fun e!4742019 () Bool)

(declare-fun tp!2413213 () Bool)

(declare-fun inv!97157 (TokenValueInjection!17536) Bool)

(assert (=> b!8048144 (= e!4742018 (and tp!2413213 (inv!97155 (tag!9658 (h!81902 rules!1024))) (inv!97157 (transformation!8794 (h!81902 rules!1024))) e!4742019))))

(declare-fun b!8048145 () Bool)

(declare-fun tp!2413212 () Bool)

(assert (=> b!8048145 (= e!4742021 (and e!4742018 tp!2413212))))

(assert (=> b!8048146 (= e!4742019 (and tp!2413211 tp!2413214))))

(assert (= (and start!757914 res!3181494) b!8048142))

(assert (= b!8048144 b!8048146))

(assert (= b!8048145 b!8048144))

(assert (= (and start!757914 ((_ is Cons!75454) rules!1024)) b!8048145))

(assert (= (and start!757914 ((_ is Cons!75455) acc!325)) b!8048143))

(declare-fun m!8399410 () Bool)

(assert (=> b!8048142 m!8399410))

(declare-fun m!8399412 () Bool)

(assert (=> b!8048143 m!8399412))

(declare-fun m!8399414 () Bool)

(assert (=> b!8048144 m!8399414))

(declare-fun m!8399416 () Bool)

(assert (=> b!8048144 m!8399416))

(check-sat (not b!8048142) (not b_next!137433) (not b!8048145) (not b!8048144) (not b!8048143) b_and!355079 b_and!355081 (not b_next!137435))
(check-sat b_and!355079 b_and!355081 (not b_next!137433) (not b_next!137435))
