; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!349394 () Bool)

(assert start!349394)

(declare-fun b!3705088 () Bool)

(declare-fun b_free!99017 () Bool)

(declare-fun b_next!99721 () Bool)

(assert (=> b!3705088 (= b_free!99017 (not b_next!99721))))

(declare-fun tp!1126840 () Bool)

(declare-fun b_and!277251 () Bool)

(assert (=> b!3705088 (= tp!1126840 b_and!277251)))

(declare-fun b_free!99019 () Bool)

(declare-fun b_next!99723 () Bool)

(assert (=> b!3705088 (= b_free!99019 (not b_next!99723))))

(declare-fun tp!1126839 () Bool)

(declare-fun b_and!277253 () Bool)

(assert (=> b!3705088 (= tp!1126839 b_and!277253)))

(declare-fun tp!1126842 () Bool)

(declare-fun e!2295049 () Bool)

(declare-fun b!3705082 () Bool)

(declare-fun e!2295051 () Bool)

(declare-datatypes ((List!39610 0))(
  ( (Nil!39486) (Cons!39486 (h!44906 (_ BitVec 16)) (t!302293 List!39610)) )
))
(declare-datatypes ((TokenValue!6250 0))(
  ( (FloatLiteralValue!12500 (text!44195 List!39610)) (TokenValueExt!6249 (__x!24717 Int)) (Broken!31250 (value!191963 List!39610)) (Object!6373) (End!6250) (Def!6250) (Underscore!6250) (Match!6250) (Else!6250) (Error!6250) (Case!6250) (If!6250) (Extends!6250) (Abstract!6250) (Class!6250) (Val!6250) (DelimiterValue!12500 (del!6310 List!39610)) (KeywordValue!6256 (value!191964 List!39610)) (CommentValue!12500 (value!191965 List!39610)) (WhitespaceValue!12500 (value!191966 List!39610)) (IndentationValue!6250 (value!191967 List!39610)) (String!44583) (Int32!6250) (Broken!31251 (value!191968 List!39610)) (Boolean!6251) (Unit!57409) (OperatorValue!6253 (op!6310 List!39610)) (IdentifierValue!12500 (value!191969 List!39610)) (IdentifierValue!12501 (value!191970 List!39610)) (WhitespaceValue!12501 (value!191971 List!39610)) (True!12500) (False!12500) (Broken!31252 (value!191972 List!39610)) (Broken!31253 (value!191973 List!39610)) (True!12501) (RightBrace!6250) (RightBracket!6250) (Colon!6250) (Null!6250) (Comma!6250) (LeftBracket!6250) (False!12501) (LeftBrace!6250) (ImaginaryLiteralValue!6250 (text!44196 List!39610)) (StringLiteralValue!18750 (value!191974 List!39610)) (EOFValue!6250 (value!191975 List!39610)) (IdentValue!6250 (value!191976 List!39610)) (DelimiterValue!12501 (value!191977 List!39610)) (DedentValue!6250 (value!191978 List!39610)) (NewLineValue!6250 (value!191979 List!39610)) (IntegerValue!18750 (value!191980 (_ BitVec 32)) (text!44197 List!39610)) (IntegerValue!18751 (value!191981 Int) (text!44198 List!39610)) (Times!6250) (Or!6250) (Equal!6250) (Minus!6250) (Broken!31254 (value!191982 List!39610)) (And!6250) (Div!6250) (LessEqual!6250) (Mod!6250) (Concat!17029) (Not!6250) (Plus!6250) (SpaceValue!6250 (value!191983 List!39610)) (IntegerValue!18752 (value!191984 Int) (text!44199 List!39610)) (StringLiteralValue!18751 (text!44200 List!39610)) (FloatLiteralValue!12501 (text!44201 List!39610)) (BytesLiteralValue!6250 (value!191985 List!39610)) (CommentValue!12501 (value!191986 List!39610)) (StringLiteralValue!18752 (value!191987 List!39610)) (ErrorTokenValue!6250 (msg!6311 List!39610)) )
))
(declare-datatypes ((C!21744 0))(
  ( (C!21745 (val!12920 Int)) )
))
(declare-datatypes ((List!39611 0))(
  ( (Nil!39487) (Cons!39487 (h!44907 C!21744) (t!302294 List!39611)) )
))
(declare-datatypes ((IArray!24239 0))(
  ( (IArray!24240 (innerList!12177 List!39611)) )
))
(declare-datatypes ((Conc!12117 0))(
  ( (Node!12117 (left!30685 Conc!12117) (right!31015 Conc!12117) (csize!24464 Int) (cheight!12328 Int)) (Leaf!18738 (xs!15319 IArray!24239) (csize!24465 Int)) (Empty!12117) )
))
(declare-datatypes ((BalanceConc!23848 0))(
  ( (BalanceConc!23849 (c!639984 Conc!12117)) )
))
(declare-datatypes ((Regex!10779 0))(
  ( (ElementMatch!10779 (c!639985 C!21744)) (Concat!17030 (regOne!22070 Regex!10779) (regTwo!22070 Regex!10779)) (EmptyExpr!10779) (Star!10779 (reg!11108 Regex!10779)) (EmptyLang!10779) (Union!10779 (regOne!22071 Regex!10779) (regTwo!22071 Regex!10779)) )
))
(declare-datatypes ((String!44584 0))(
  ( (String!44585 (value!191988 String)) )
))
(declare-datatypes ((TokenValueInjection!11928 0))(
  ( (TokenValueInjection!11929 (toValue!8364 Int) (toChars!8223 Int)) )
))
(declare-datatypes ((Rule!11840 0))(
  ( (Rule!11841 (regex!6020 Regex!10779) (tag!6878 String!44584) (isSeparator!6020 Bool) (transformation!6020 TokenValueInjection!11928)) )
))
(declare-datatypes ((List!39612 0))(
  ( (Nil!39488) (Cons!39488 (h!44908 Rule!11840) (t!302295 List!39612)) )
))
(declare-fun rules!2525 () List!39612)

(declare-fun inv!52988 (String!44584) Bool)

(declare-fun inv!52990 (TokenValueInjection!11928) Bool)

(assert (=> b!3705082 (= e!2295051 (and tp!1126842 (inv!52988 (tag!6878 (h!44908 rules!2525))) (inv!52990 (transformation!6020 (h!44908 rules!2525))) e!2295049))))

(declare-fun b!3705083 () Bool)

(declare-fun res!1507273 () Bool)

(declare-fun e!2295052 () Bool)

(assert (=> b!3705083 (=> (not res!1507273) (not e!2295052))))

(declare-datatypes ((LexerInterface!5609 0))(
  ( (LexerInterfaceExt!5606 (__x!24718 Int)) (Lexer!5607) )
))
(declare-fun thiss!19663 () LexerInterface!5609)

(declare-fun rulesInvariant!5006 (LexerInterface!5609 List!39612) Bool)

(assert (=> b!3705083 (= res!1507273 (rulesInvariant!5006 thiss!19663 rules!2525))))

(declare-fun b!3705084 () Bool)

(declare-fun res!1507274 () Bool)

(assert (=> b!3705084 (=> (not res!1507274) (not e!2295052))))

(declare-fun tag!164 () String!44584)

(get-info :version)

(assert (=> b!3705084 (= res!1507274 false)))

(declare-fun res!1507272 () Bool)

(assert (=> start!349394 (=> (not res!1507272) (not e!2295052))))

(assert (=> start!349394 (= res!1507272 ((_ is Lexer!5607) thiss!19663))))

(assert (=> start!349394 e!2295052))

(assert (=> start!349394 true))

(declare-fun e!2295047 () Bool)

(assert (=> start!349394 e!2295047))

(assert (=> start!349394 (inv!52988 tag!164)))

(declare-fun b!3705085 () Bool)

(assert (=> b!3705085 (= e!2295052 true)))

(declare-fun b!3705086 () Bool)

(declare-fun tp!1126841 () Bool)

(assert (=> b!3705086 (= e!2295047 (and e!2295051 tp!1126841))))

(declare-fun b!3705087 () Bool)

(declare-fun res!1507271 () Bool)

(assert (=> b!3705087 (=> (not res!1507271) (not e!2295052))))

(declare-fun contains!7882 (List!39612 Rule!11840) Bool)

(declare-datatypes ((Option!8556 0))(
  ( (None!8555) (Some!8555 (v!38539 Rule!11840)) )
))
(declare-fun get!13148 (Option!8556) Rule!11840)

(assert (=> b!3705087 (= res!1507271 (contains!7882 rules!2525 (get!13148 None!8555)))))

(assert (=> b!3705088 (= e!2295049 (and tp!1126840 tp!1126839))))

(assert (= (and start!349394 res!1507272) b!3705083))

(assert (= (and b!3705083 res!1507273) b!3705084))

(assert (= (and b!3705084 res!1507274) b!3705087))

(assert (= (and b!3705087 res!1507271) b!3705085))

(assert (= b!3705082 b!3705088))

(assert (= b!3705086 b!3705082))

(assert (= (and start!349394 ((_ is Cons!39488) rules!2525)) b!3705086))

(declare-fun m!4215573 () Bool)

(assert (=> b!3705082 m!4215573))

(declare-fun m!4215575 () Bool)

(assert (=> b!3705082 m!4215575))

(declare-fun m!4215577 () Bool)

(assert (=> b!3705083 m!4215577))

(declare-fun m!4215579 () Bool)

(assert (=> start!349394 m!4215579))

(declare-fun m!4215581 () Bool)

(assert (=> b!3705087 m!4215581))

(assert (=> b!3705087 m!4215581))

(declare-fun m!4215583 () Bool)

(assert (=> b!3705087 m!4215583))

(check-sat (not b!3705086) (not b_next!99721) (not b!3705082) (not b_next!99723) (not b!3705083) b_and!277253 (not start!349394) b_and!277251 (not b!3705087))
(check-sat b_and!277253 b_and!277251 (not b_next!99723) (not b_next!99721))
