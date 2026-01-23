; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!757452 () Bool)

(assert start!757452)

(declare-fun b!8044891 () Bool)

(declare-fun b_free!136251 () Bool)

(declare-fun b_next!137041 () Bool)

(assert (=> b!8044891 (= b_free!136251 (not b_next!137041))))

(declare-fun tp!2411105 () Bool)

(declare-fun b_and!354687 () Bool)

(assert (=> b!8044891 (= tp!2411105 b_and!354687)))

(declare-fun b_free!136253 () Bool)

(declare-fun b_next!137043 () Bool)

(assert (=> b!8044891 (= b_free!136253 (not b_next!137043))))

(declare-fun tp!2411107 () Bool)

(declare-fun b_and!354689 () Bool)

(assert (=> b!8044891 (= tp!2411107 b_and!354689)))

(declare-fun b!8044895 () Bool)

(declare-fun b_free!136255 () Bool)

(declare-fun b_next!137045 () Bool)

(assert (=> b!8044895 (= b_free!136255 (not b_next!137045))))

(declare-fun tp!2411108 () Bool)

(declare-fun b_and!354691 () Bool)

(assert (=> b!8044895 (= tp!2411108 b_and!354691)))

(declare-fun b_free!136257 () Bool)

(declare-fun b_next!137047 () Bool)

(assert (=> b!8044895 (= b_free!136257 (not b_next!137047))))

(declare-fun tp!2411104 () Bool)

(declare-fun b_and!354693 () Bool)

(assert (=> b!8044895 (= tp!2411104 b_and!354693)))

(declare-fun b!8044885 () Bool)

(declare-fun e!4739282 () Bool)

(assert (=> b!8044885 (= e!4739282 (not true))))

(declare-datatypes ((LexerInterface!8334 0))(
  ( (LexerInterfaceExt!8331 (__x!35409 Int)) (Lexer!8332) )
))
(declare-fun thiss!26855 () LexerInterface!8334)

(declare-datatypes ((C!43968 0))(
  ( (C!43969 (val!32760 Int)) )
))
(declare-datatypes ((List!75392 0))(
  ( (Nil!75266) (Cons!75266 (h!81714 C!43968) (t!391162 List!75392)) )
))
(declare-datatypes ((IArray!32085 0))(
  ( (IArray!32086 (innerList!16100 List!75392)) )
))
(declare-datatypes ((Conc!16012 0))(
  ( (Node!16012 (left!57341 Conc!16012) (right!57671 Conc!16012) (csize!32254 Int) (cheight!16223 Int)) (Leaf!30694 (xs!19410 IArray!32085) (csize!32255 Int)) (Empty!16012) )
))
(declare-datatypes ((List!75393 0))(
  ( (Nil!75267) (Cons!75267 (h!81715 (_ BitVec 16)) (t!391163 List!75393)) )
))
(declare-datatypes ((TokenValue!9064 0))(
  ( (FloatLiteralValue!18128 (text!63893 List!75393)) (TokenValueExt!9063 (__x!35410 Int)) (Broken!45320 (value!292226 List!75393)) (Object!9189) (End!9064) (Def!9064) (Underscore!9064) (Match!9064) (Else!9064) (Error!9064) (Case!9064) (If!9064) (Extends!9064) (Abstract!9064) (Class!9064) (Val!9064) (DelimiterValue!18128 (del!9124 List!75393)) (KeywordValue!9070 (value!292227 List!75393)) (CommentValue!18128 (value!292228 List!75393)) (WhitespaceValue!18128 (value!292229 List!75393)) (IndentationValue!9064 (value!292230 List!75393)) (String!85093) (Int32!9064) (Broken!45321 (value!292231 List!75393)) (Boolean!9065) (Unit!171109) (OperatorValue!9067 (op!9124 List!75393)) (IdentifierValue!18128 (value!292232 List!75393)) (IdentifierValue!18129 (value!292233 List!75393)) (WhitespaceValue!18129 (value!292234 List!75393)) (True!18128) (False!18128) (Broken!45322 (value!292235 List!75393)) (Broken!45323 (value!292236 List!75393)) (True!18129) (RightBrace!9064) (RightBracket!9064) (Colon!9064) (Null!9064) (Comma!9064) (LeftBracket!9064) (False!18129) (LeftBrace!9064) (ImaginaryLiteralValue!9064 (text!63894 List!75393)) (StringLiteralValue!27192 (value!292237 List!75393)) (EOFValue!9064 (value!292238 List!75393)) (IdentValue!9064 (value!292239 List!75393)) (DelimiterValue!18129 (value!292240 List!75393)) (DedentValue!9064 (value!292241 List!75393)) (NewLineValue!9064 (value!292242 List!75393)) (IntegerValue!27192 (value!292243 (_ BitVec 32)) (text!63895 List!75393)) (IntegerValue!27193 (value!292244 Int) (text!63896 List!75393)) (Times!9064) (Or!9064) (Equal!9064) (Minus!9064) (Broken!45324 (value!292245 List!75393)) (And!9064) (Div!9064) (LessEqual!9064) (Mod!9064) (Concat!30879) (Not!9064) (Plus!9064) (SpaceValue!9064 (value!292246 List!75393)) (IntegerValue!27194 (value!292247 Int) (text!63897 List!75393)) (StringLiteralValue!27193 (text!63898 List!75393)) (FloatLiteralValue!18129 (text!63899 List!75393)) (BytesLiteralValue!9064 (value!292248 List!75393)) (CommentValue!18129 (value!292249 List!75393)) (StringLiteralValue!27194 (value!292250 List!75393)) (ErrorTokenValue!9064 (msg!9125 List!75393)) )
))
(declare-datatypes ((BalanceConc!30980 0))(
  ( (BalanceConc!30981 (c!1475401 Conc!16012)) )
))
(declare-datatypes ((TokenValueInjection!17436 0))(
  ( (TokenValueInjection!17437 (toValue!11819 Int) (toChars!11678 Int)) )
))
(declare-datatypes ((Regex!21815 0))(
  ( (ElementMatch!21815 (c!1475402 C!43968)) (Concat!30880 (regOne!44142 Regex!21815) (regTwo!44142 Regex!21815)) (EmptyExpr!21815) (Star!21815 (reg!22144 Regex!21815)) (EmptyLang!21815) (Union!21815 (regOne!44143 Regex!21815) (regTwo!44143 Regex!21815)) )
))
(declare-datatypes ((String!85094 0))(
  ( (String!85095 (value!292251 String)) )
))
(declare-datatypes ((Rule!17288 0))(
  ( (Rule!17289 (regex!8744 Regex!21815) (tag!9608 String!85094) (isSeparator!8744 Bool) (transformation!8744 TokenValueInjection!17436)) )
))
(declare-datatypes ((List!75394 0))(
  ( (Nil!75268) (Cons!75268 (h!81716 Rule!17288) (t!391164 List!75394)) )
))
(declare-fun rules!4030 () List!75394)

(declare-datatypes ((List!75395 0))(
  ( (Nil!75269) (Cons!75269 (h!81717 String!85094) (t!391165 List!75395)) )
))
(declare-fun noDuplicateTag!3322 (LexerInterface!8334 List!75394 List!75395) Bool)

(assert (=> b!8044885 (noDuplicateTag!3322 thiss!26855 rules!4030 Nil!75269)))

(declare-datatypes ((Unit!171110 0))(
  ( (Unit!171111) )
))
(declare-fun lt!2722623 () Unit!171110)

(declare-fun lt!2722624 () List!75395)

(declare-fun lemmaNoDupTagThenAlsoWithSubListAcc!48 (LexerInterface!8334 List!75395 List!75395 List!75394) Unit!171110)

(assert (=> b!8044885 (= lt!2722623 (lemmaNoDupTagThenAlsoWithSubListAcc!48 thiss!26855 lt!2722624 Nil!75269 rules!4030))))

(declare-fun b!8044886 () Bool)

(declare-fun e!4739285 () Bool)

(assert (=> b!8044886 (= e!4739285 e!4739282)))

(declare-fun res!3180118 () Bool)

(assert (=> b!8044886 (=> (not res!3180118) (not e!4739282))))

(assert (=> b!8044886 (= res!3180118 (noDuplicateTag!3322 thiss!26855 rules!4030 lt!2722624))))

(declare-fun r!4387 () Rule!17288)

(assert (=> b!8044886 (= lt!2722624 (Cons!75269 (tag!9608 r!4387) Nil!75269))))

(declare-fun b!8044887 () Bool)

(declare-fun res!3180120 () Bool)

(assert (=> b!8044887 (=> (not res!3180120) (not e!4739285))))

(declare-fun lt!2722622 () List!75394)

(assert (=> b!8044887 (= res!3180120 (noDuplicateTag!3322 thiss!26855 lt!2722622 Nil!75269))))

(declare-fun tp!2411106 () Bool)

(declare-fun e!4739280 () Bool)

(declare-fun b!8044888 () Bool)

(declare-fun e!4739279 () Bool)

(declare-fun inv!97027 (String!85094) Bool)

(declare-fun inv!97029 (TokenValueInjection!17436) Bool)

(assert (=> b!8044888 (= e!4739280 (and tp!2411106 (inv!97027 (tag!9608 (h!81716 rules!4030))) (inv!97029 (transformation!8744 (h!81716 rules!4030))) e!4739279))))

(declare-fun b!8044889 () Bool)

(declare-fun e!4739281 () Bool)

(assert (=> b!8044889 (= e!4739281 e!4739285)))

(declare-fun res!3180121 () Bool)

(assert (=> b!8044889 (=> (not res!3180121) (not e!4739285))))

(declare-fun rulesInvariant!6802 (LexerInterface!8334 List!75394) Bool)

(assert (=> b!8044889 (= res!3180121 (rulesInvariant!6802 thiss!26855 lt!2722622))))

(assert (=> b!8044889 (= lt!2722622 (Cons!75268 r!4387 rules!4030))))

(declare-fun e!4739277 () Bool)

(declare-fun e!4739278 () Bool)

(declare-fun b!8044890 () Bool)

(declare-fun tp!2411109 () Bool)

(assert (=> b!8044890 (= e!4739278 (and tp!2411109 (inv!97027 (tag!9608 r!4387)) (inv!97029 (transformation!8744 r!4387)) e!4739277))))

(assert (=> b!8044891 (= e!4739277 (and tp!2411105 tp!2411107))))

(declare-fun res!3180119 () Bool)

(assert (=> start!757452 (=> (not res!3180119) (not e!4739281))))

(get-info :version)

(assert (=> start!757452 (= res!3180119 ((_ is Lexer!8332) thiss!26855))))

(assert (=> start!757452 e!4739281))

(assert (=> start!757452 true))

(assert (=> start!757452 e!4739278))

(declare-fun e!4739283 () Bool)

(assert (=> start!757452 e!4739283))

(declare-fun b!8044892 () Bool)

(declare-fun tp!2411103 () Bool)

(assert (=> b!8044892 (= e!4739283 (and e!4739280 tp!2411103))))

(declare-fun b!8044893 () Bool)

(declare-fun res!3180116 () Bool)

(assert (=> b!8044893 (=> (not res!3180116) (not e!4739285))))

(declare-fun rulesValidInductive!3463 (LexerInterface!8334 List!75394) Bool)

(assert (=> b!8044893 (= res!3180116 (rulesValidInductive!3463 thiss!26855 lt!2722622))))

(declare-fun b!8044894 () Bool)

(declare-fun res!3180117 () Bool)

(assert (=> b!8044894 (=> (not res!3180117) (not e!4739285))))

(assert (=> b!8044894 (= res!3180117 (rulesValidInductive!3463 thiss!26855 rules!4030))))

(assert (=> b!8044895 (= e!4739279 (and tp!2411108 tp!2411104))))

(assert (= (and start!757452 res!3180119) b!8044889))

(assert (= (and b!8044889 res!3180121) b!8044893))

(assert (= (and b!8044893 res!3180116) b!8044887))

(assert (= (and b!8044887 res!3180120) b!8044894))

(assert (= (and b!8044894 res!3180117) b!8044886))

(assert (= (and b!8044886 res!3180118) b!8044885))

(assert (= b!8044890 b!8044891))

(assert (= start!757452 b!8044890))

(assert (= b!8044888 b!8044895))

(assert (= b!8044892 b!8044888))

(assert (= (and start!757452 ((_ is Cons!75268) rules!4030)) b!8044892))

(declare-fun m!8397664 () Bool)

(assert (=> b!8044894 m!8397664))

(declare-fun m!8397666 () Bool)

(assert (=> b!8044888 m!8397666))

(declare-fun m!8397668 () Bool)

(assert (=> b!8044888 m!8397668))

(declare-fun m!8397670 () Bool)

(assert (=> b!8044887 m!8397670))

(declare-fun m!8397672 () Bool)

(assert (=> b!8044885 m!8397672))

(declare-fun m!8397674 () Bool)

(assert (=> b!8044885 m!8397674))

(declare-fun m!8397676 () Bool)

(assert (=> b!8044886 m!8397676))

(declare-fun m!8397678 () Bool)

(assert (=> b!8044890 m!8397678))

(declare-fun m!8397680 () Bool)

(assert (=> b!8044890 m!8397680))

(declare-fun m!8397682 () Bool)

(assert (=> b!8044893 m!8397682))

(declare-fun m!8397684 () Bool)

(assert (=> b!8044889 m!8397684))

(check-sat (not b!8044887) b_and!354687 (not b!8044889) (not b_next!137041) (not b!8044892) b_and!354691 (not b!8044890) (not b_next!137047) (not b!8044888) (not b!8044885) (not b!8044886) (not b_next!137045) b_and!354693 b_and!354689 (not b_next!137043) (not b!8044894) (not b!8044893))
(check-sat b_and!354687 (not b_next!137041) b_and!354691 (not b_next!137047) (not b_next!137045) b_and!354693 b_and!354689 (not b_next!137043))
