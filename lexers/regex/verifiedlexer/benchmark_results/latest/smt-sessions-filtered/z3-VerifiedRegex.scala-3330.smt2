; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!189252 () Bool)

(assert start!189252)

(declare-fun res!844084 () Bool)

(declare-fun e!1206721 () Bool)

(assert (=> start!189252 (=> (not res!844084) (not e!1206721))))

(declare-datatypes ((LexerInterface!3349 0))(
  ( (LexerInterfaceExt!3346 (__x!13242 Int)) (Lexer!3347) )
))
(declare-fun thiss!13601 () LexerInterface!3349)

(declare-fun from!837 () Int)

(get-info :version)

(assert (=> start!189252 (= res!844084 (and ((_ is Lexer!3347) thiss!13601) (>= from!837 0)))))

(assert (=> start!189252 e!1206721))

(assert (=> start!189252 true))

(declare-datatypes ((List!21209 0))(
  ( (Nil!21127) (Cons!21127 (h!26528 (_ BitVec 16)) (t!175376 List!21209)) )
))
(declare-datatypes ((TokenValue!3872 0))(
  ( (FloatLiteralValue!7744 (text!27549 List!21209)) (TokenValueExt!3871 (__x!13243 Int)) (Broken!19360 (value!118041 List!21209)) (Object!3953) (End!3872) (Def!3872) (Underscore!3872) (Match!3872) (Else!3872) (Error!3872) (Case!3872) (If!3872) (Extends!3872) (Abstract!3872) (Class!3872) (Val!3872) (DelimiterValue!7744 (del!3932 List!21209)) (KeywordValue!3878 (value!118042 List!21209)) (CommentValue!7744 (value!118043 List!21209)) (WhitespaceValue!7744 (value!118044 List!21209)) (IndentationValue!3872 (value!118045 List!21209)) (String!24477) (Int32!3872) (Broken!19361 (value!118046 List!21209)) (Boolean!3873) (Unit!35521) (OperatorValue!3875 (op!3932 List!21209)) (IdentifierValue!7744 (value!118047 List!21209)) (IdentifierValue!7745 (value!118048 List!21209)) (WhitespaceValue!7745 (value!118049 List!21209)) (True!7744) (False!7744) (Broken!19362 (value!118050 List!21209)) (Broken!19363 (value!118051 List!21209)) (True!7745) (RightBrace!3872) (RightBracket!3872) (Colon!3872) (Null!3872) (Comma!3872) (LeftBracket!3872) (False!7745) (LeftBrace!3872) (ImaginaryLiteralValue!3872 (text!27550 List!21209)) (StringLiteralValue!11616 (value!118052 List!21209)) (EOFValue!3872 (value!118053 List!21209)) (IdentValue!3872 (value!118054 List!21209)) (DelimiterValue!7745 (value!118055 List!21209)) (DedentValue!3872 (value!118056 List!21209)) (NewLineValue!3872 (value!118057 List!21209)) (IntegerValue!11616 (value!118058 (_ BitVec 32)) (text!27551 List!21209)) (IntegerValue!11617 (value!118059 Int) (text!27552 List!21209)) (Times!3872) (Or!3872) (Equal!3872) (Minus!3872) (Broken!19364 (value!118060 List!21209)) (And!3872) (Div!3872) (LessEqual!3872) (Mod!3872) (Concat!9033) (Not!3872) (Plus!3872) (SpaceValue!3872 (value!118061 List!21209)) (IntegerValue!11618 (value!118062 Int) (text!27553 List!21209)) (StringLiteralValue!11617 (text!27554 List!21209)) (FloatLiteralValue!7745 (text!27555 List!21209)) (BytesLiteralValue!3872 (value!118063 List!21209)) (CommentValue!7745 (value!118064 List!21209)) (StringLiteralValue!11618 (value!118065 List!21209)) (ErrorTokenValue!3872 (msg!3933 List!21209)) )
))
(declare-datatypes ((C!10468 0))(
  ( (C!10469 (val!6186 Int)) )
))
(declare-datatypes ((List!21210 0))(
  ( (Nil!21128) (Cons!21128 (h!26529 C!10468) (t!175377 List!21210)) )
))
(declare-datatypes ((IArray!14025 0))(
  ( (IArray!14026 (innerList!7070 List!21210)) )
))
(declare-datatypes ((Conc!7010 0))(
  ( (Node!7010 (left!16952 Conc!7010) (right!17282 Conc!7010) (csize!14250 Int) (cheight!7221 Int)) (Leaf!10341 (xs!9900 IArray!14025) (csize!14251 Int)) (Empty!7010) )
))
(declare-datatypes ((BalanceConc!13836 0))(
  ( (BalanceConc!13837 (c!308268 Conc!7010)) )
))
(declare-datatypes ((Regex!5161 0))(
  ( (ElementMatch!5161 (c!308269 C!10468)) (Concat!9034 (regOne!10834 Regex!5161) (regTwo!10834 Regex!5161)) (EmptyExpr!5161) (Star!5161 (reg!5490 Regex!5161)) (EmptyLang!5161) (Union!5161 (regOne!10835 Regex!5161) (regTwo!10835 Regex!5161)) )
))
(declare-datatypes ((String!24478 0))(
  ( (String!24479 (value!118066 String)) )
))
(declare-datatypes ((TokenValueInjection!7328 0))(
  ( (TokenValueInjection!7329 (toValue!5341 Int) (toChars!5200 Int)) )
))
(declare-datatypes ((Rule!7272 0))(
  ( (Rule!7273 (regex!3736 Regex!5161) (tag!4150 String!24478) (isSeparator!3736 Bool) (transformation!3736 TokenValueInjection!7328)) )
))
(declare-datatypes ((Token!7024 0))(
  ( (Token!7025 (value!118067 TokenValue!3872) (rule!5929 Rule!7272) (size!16740 Int) (originalCharacters!4543 List!21210)) )
))
(declare-datatypes ((List!21211 0))(
  ( (Nil!21129) (Cons!21129 (h!26530 Token!7024) (t!175378 List!21211)) )
))
(declare-datatypes ((IArray!14027 0))(
  ( (IArray!14028 (innerList!7071 List!21211)) )
))
(declare-datatypes ((Conc!7011 0))(
  ( (Node!7011 (left!16953 Conc!7011) (right!17283 Conc!7011) (csize!14252 Int) (cheight!7222 Int)) (Leaf!10342 (xs!9901 IArray!14027) (csize!14253 Int)) (Empty!7011) )
))
(declare-datatypes ((BalanceConc!13838 0))(
  ( (BalanceConc!13839 (c!308270 Conc!7011)) )
))
(declare-fun v!6342 () BalanceConc!13838)

(declare-fun e!1206722 () Bool)

(declare-fun inv!28170 (BalanceConc!13838) Bool)

(assert (=> start!189252 (and (inv!28170 v!6342) e!1206722)))

(declare-fun b!1890336 () Bool)

(declare-fun e!1206720 () Bool)

(assert (=> b!1890336 (= e!1206721 e!1206720)))

(declare-fun res!844085 () Bool)

(assert (=> b!1890336 (=> (not res!844085) (not e!1206720))))

(declare-fun lt!723920 () Int)

(assert (=> b!1890336 (= res!844085 (and (<= from!837 lt!723920) (>= from!837 lt!723920)))))

(declare-fun size!16741 (BalanceConc!13838) Int)

(assert (=> b!1890336 (= lt!723920 (size!16741 v!6342))))

(declare-fun b!1890337 () Bool)

(assert (=> b!1890337 (= e!1206720 false)))

(declare-fun lt!723919 () List!21211)

(declare-fun dropList!758 (BalanceConc!13838 Int) List!21211)

(assert (=> b!1890337 (= lt!723919 (dropList!758 v!6342 from!837))))

(declare-fun b!1890338 () Bool)

(declare-fun tp!539254 () Bool)

(declare-fun inv!28171 (Conc!7011) Bool)

(assert (=> b!1890338 (= e!1206722 (and (inv!28171 (c!308270 v!6342)) tp!539254))))

(assert (= (and start!189252 res!844084) b!1890336))

(assert (= (and b!1890336 res!844085) b!1890337))

(assert (= start!189252 b!1890338))

(declare-fun m!2320971 () Bool)

(assert (=> start!189252 m!2320971))

(declare-fun m!2320973 () Bool)

(assert (=> b!1890336 m!2320973))

(declare-fun m!2320975 () Bool)

(assert (=> b!1890337 m!2320975))

(declare-fun m!2320977 () Bool)

(assert (=> b!1890338 m!2320977))

(check-sat (not b!1890336) (not b!1890338) (not b!1890337) (not start!189252))
(check-sat)
