; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!370000 () Bool)

(assert start!370000)

(declare-fun b!3940515 () Bool)

(declare-fun b_free!107765 () Bool)

(declare-fun b_next!108469 () Bool)

(assert (=> b!3940515 (= b_free!107765 (not b_next!108469))))

(declare-fun tp!1199128 () Bool)

(declare-fun b_and!301055 () Bool)

(assert (=> b!3940515 (= tp!1199128 b_and!301055)))

(declare-fun b_free!107767 () Bool)

(declare-fun b_next!108471 () Bool)

(assert (=> b!3940515 (= b_free!107767 (not b_next!108471))))

(declare-fun tp!1199135 () Bool)

(declare-fun b_and!301057 () Bool)

(assert (=> b!3940515 (= tp!1199135 b_and!301057)))

(declare-fun b!3940521 () Bool)

(declare-fun b_free!107769 () Bool)

(declare-fun b_next!108473 () Bool)

(assert (=> b!3940521 (= b_free!107769 (not b_next!108473))))

(declare-fun tp!1199131 () Bool)

(declare-fun b_and!301059 () Bool)

(assert (=> b!3940521 (= tp!1199131 b_and!301059)))

(declare-fun b_free!107771 () Bool)

(declare-fun b_next!108475 () Bool)

(assert (=> b!3940521 (= b_free!107771 (not b_next!108475))))

(declare-fun tp!1199138 () Bool)

(declare-fun b_and!301061 () Bool)

(assert (=> b!3940521 (= tp!1199138 b_and!301061)))

(declare-fun b!3940523 () Bool)

(declare-fun b_free!107773 () Bool)

(declare-fun b_next!108477 () Bool)

(assert (=> b!3940523 (= b_free!107773 (not b_next!108477))))

(declare-fun tp!1199140 () Bool)

(declare-fun b_and!301063 () Bool)

(assert (=> b!3940523 (= tp!1199140 b_and!301063)))

(declare-fun b_free!107775 () Bool)

(declare-fun b_next!108479 () Bool)

(assert (=> b!3940523 (= b_free!107775 (not b_next!108479))))

(declare-fun tp!1199132 () Bool)

(declare-fun b_and!301065 () Bool)

(assert (=> b!3940523 (= tp!1199132 b_and!301065)))

(declare-fun e!2438180 () Bool)

(declare-fun e!2438187 () Bool)

(declare-fun b!3940503 () Bool)

(declare-datatypes ((List!41971 0))(
  ( (Nil!41847) (Cons!41847 (h!47267 (_ BitVec 16)) (t!326790 List!41971)) )
))
(declare-datatypes ((TokenValue!6770 0))(
  ( (FloatLiteralValue!13540 (text!47835 List!41971)) (TokenValueExt!6769 (__x!25757 Int)) (Broken!33850 (value!206998 List!41971)) (Object!6893) (End!6770) (Def!6770) (Underscore!6770) (Match!6770) (Else!6770) (Error!6770) (Case!6770) (If!6770) (Extends!6770) (Abstract!6770) (Class!6770) (Val!6770) (DelimiterValue!13540 (del!6830 List!41971)) (KeywordValue!6776 (value!206999 List!41971)) (CommentValue!13540 (value!207000 List!41971)) (WhitespaceValue!13540 (value!207001 List!41971)) (IndentationValue!6770 (value!207002 List!41971)) (String!47567) (Int32!6770) (Broken!33851 (value!207003 List!41971)) (Boolean!6771) (Unit!60397) (OperatorValue!6773 (op!6830 List!41971)) (IdentifierValue!13540 (value!207004 List!41971)) (IdentifierValue!13541 (value!207005 List!41971)) (WhitespaceValue!13541 (value!207006 List!41971)) (True!13540) (False!13540) (Broken!33852 (value!207007 List!41971)) (Broken!33853 (value!207008 List!41971)) (True!13541) (RightBrace!6770) (RightBracket!6770) (Colon!6770) (Null!6770) (Comma!6770) (LeftBracket!6770) (False!13541) (LeftBrace!6770) (ImaginaryLiteralValue!6770 (text!47836 List!41971)) (StringLiteralValue!20310 (value!207009 List!41971)) (EOFValue!6770 (value!207010 List!41971)) (IdentValue!6770 (value!207011 List!41971)) (DelimiterValue!13541 (value!207012 List!41971)) (DedentValue!6770 (value!207013 List!41971)) (NewLineValue!6770 (value!207014 List!41971)) (IntegerValue!20310 (value!207015 (_ BitVec 32)) (text!47837 List!41971)) (IntegerValue!20311 (value!207016 Int) (text!47838 List!41971)) (Times!6770) (Or!6770) (Equal!6770) (Minus!6770) (Broken!33854 (value!207017 List!41971)) (And!6770) (Div!6770) (LessEqual!6770) (Mod!6770) (Concat!18215) (Not!6770) (Plus!6770) (SpaceValue!6770 (value!207018 List!41971)) (IntegerValue!20312 (value!207019 Int) (text!47839 List!41971)) (StringLiteralValue!20311 (text!47840 List!41971)) (FloatLiteralValue!13541 (text!47841 List!41971)) (BytesLiteralValue!6770 (value!207020 List!41971)) (CommentValue!13541 (value!207021 List!41971)) (StringLiteralValue!20312 (value!207022 List!41971)) (ErrorTokenValue!6770 (msg!6831 List!41971)) )
))
(declare-datatypes ((C!23076 0))(
  ( (C!23077 (val!13632 Int)) )
))
(declare-datatypes ((Regex!11445 0))(
  ( (ElementMatch!11445 (c!684604 C!23076)) (Concat!18216 (regOne!23402 Regex!11445) (regTwo!23402 Regex!11445)) (EmptyExpr!11445) (Star!11445 (reg!11774 Regex!11445)) (EmptyLang!11445) (Union!11445 (regOne!23403 Regex!11445) (regTwo!23403 Regex!11445)) )
))
(declare-datatypes ((String!47568 0))(
  ( (String!47569 (value!207023 String)) )
))
(declare-datatypes ((List!41972 0))(
  ( (Nil!41848) (Cons!41848 (h!47268 C!23076) (t!326791 List!41972)) )
))
(declare-datatypes ((IArray!25507 0))(
  ( (IArray!25508 (innerList!12811 List!41972)) )
))
(declare-datatypes ((Conc!12751 0))(
  ( (Node!12751 (left!31879 Conc!12751) (right!32209 Conc!12751) (csize!25732 Int) (cheight!12962 Int)) (Leaf!19728 (xs!16057 IArray!25507) (csize!25733 Int)) (Empty!12751) )
))
(declare-datatypes ((BalanceConc!25096 0))(
  ( (BalanceConc!25097 (c!684605 Conc!12751)) )
))
(declare-datatypes ((TokenValueInjection!12968 0))(
  ( (TokenValueInjection!12969 (toValue!9000 Int) (toChars!8859 Int)) )
))
(declare-datatypes ((Rule!12880 0))(
  ( (Rule!12881 (regex!6540 Regex!11445) (tag!7400 String!47568) (isSeparator!6540 Bool) (transformation!6540 TokenValueInjection!12968)) )
))
(declare-datatypes ((Token!12218 0))(
  ( (Token!12219 (value!207024 TokenValue!6770) (rule!9498 Rule!12880) (size!31387 Int) (originalCharacters!7140 List!41972)) )
))
(declare-datatypes ((List!41973 0))(
  ( (Nil!41849) (Cons!41849 (h!47269 Token!12218) (t!326792 List!41973)) )
))
(declare-fun prefixTokens!80 () List!41973)

(declare-fun tp!1199142 () Bool)

(declare-fun inv!56047 (String!47568) Bool)

(declare-fun inv!56050 (TokenValueInjection!12968) Bool)

(assert (=> b!3940503 (= e!2438187 (and tp!1199142 (inv!56047 (tag!7400 (rule!9498 (h!47269 prefixTokens!80)))) (inv!56050 (transformation!6540 (rule!9498 (h!47269 prefixTokens!80)))) e!2438180))))

(declare-fun b!3940504 () Bool)

(declare-fun e!2438185 () Bool)

(declare-fun tp_is_empty!19861 () Bool)

(declare-fun tp!1199139 () Bool)

(assert (=> b!3940504 (= e!2438185 (and tp_is_empty!19861 tp!1199139))))

(declare-fun b!3940505 () Bool)

(declare-fun res!1594725 () Bool)

(declare-fun e!2438189 () Bool)

(assert (=> b!3940505 (=> (not res!1594725) (not e!2438189))))

(declare-fun prefix!426 () List!41972)

(declare-fun isEmpty!24964 (List!41972) Bool)

(assert (=> b!3940505 (= res!1594725 (not (isEmpty!24964 prefix!426)))))

(declare-fun b!3940506 () Bool)

(declare-fun e!2438196 () Bool)

(declare-fun e!2438178 () Bool)

(assert (=> b!3940506 (= e!2438196 e!2438178)))

(declare-fun res!1594726 () Bool)

(assert (=> b!3940506 (=> (not res!1594726) (not e!2438178))))

(declare-datatypes ((tuple2!41134 0))(
  ( (tuple2!41135 (_1!23701 Token!12218) (_2!23701 List!41972)) )
))
(declare-datatypes ((Option!8960 0))(
  ( (None!8959) (Some!8959 (v!39289 tuple2!41134)) )
))
(declare-fun lt!1378358 () Option!8960)

(get-info :version)

(assert (=> b!3940506 (= res!1594726 ((_ is Some!8959) lt!1378358))))

(declare-datatypes ((List!41974 0))(
  ( (Nil!41850) (Cons!41850 (h!47270 Rule!12880) (t!326793 List!41974)) )
))
(declare-fun rules!2768 () List!41974)

(declare-fun lt!1378357 () List!41972)

(declare-datatypes ((LexerInterface!6129 0))(
  ( (LexerInterfaceExt!6126 (__x!25758 Int)) (Lexer!6127) )
))
(declare-fun thiss!20629 () LexerInterface!6129)

(declare-fun maxPrefix!3433 (LexerInterface!6129 List!41974 List!41972) Option!8960)

(assert (=> b!3940506 (= lt!1378358 (maxPrefix!3433 thiss!20629 rules!2768 lt!1378357))))

(declare-fun b!3940507 () Bool)

(declare-fun res!1594721 () Bool)

(assert (=> b!3940507 (=> (not res!1594721) (not e!2438189))))

(declare-fun isEmpty!24965 (List!41974) Bool)

(assert (=> b!3940507 (= res!1594721 (not (isEmpty!24965 rules!2768)))))

(declare-fun tp!1199130 () Bool)

(declare-fun b!3940508 () Bool)

(declare-fun e!2438188 () Bool)

(declare-fun e!2438183 () Bool)

(declare-fun inv!56051 (Token!12218) Bool)

(assert (=> b!3940508 (= e!2438188 (and (inv!56051 (h!47269 prefixTokens!80)) e!2438183 tp!1199130))))

(declare-fun b!3940509 () Bool)

(assert (=> b!3940509 (= e!2438178 false)))

(declare-datatypes ((Unit!60398 0))(
  ( (Unit!60399) )
))
(declare-fun lt!1378359 () Unit!60398)

(declare-fun lemmaCharactersSize!1193 (Token!12218) Unit!60398)

(assert (=> b!3940509 (= lt!1378359 (lemmaCharactersSize!1193 (_1!23701 (v!39289 lt!1378358))))))

(declare-fun b!3940510 () Bool)

(declare-fun e!2438177 () Bool)

(declare-fun tp!1199129 () Bool)

(assert (=> b!3940510 (= e!2438177 (and tp_is_empty!19861 tp!1199129))))

(declare-fun b!3940511 () Bool)

(declare-fun e!2438190 () Bool)

(declare-fun e!2438193 () Bool)

(declare-fun tp!1199141 () Bool)

(assert (=> b!3940511 (= e!2438190 (and tp!1199141 (inv!56047 (tag!7400 (h!47270 rules!2768))) (inv!56050 (transformation!6540 (h!47270 rules!2768))) e!2438193))))

(declare-fun res!1594727 () Bool)

(assert (=> start!370000 (=> (not res!1594727) (not e!2438189))))

(assert (=> start!370000 (= res!1594727 ((_ is Lexer!6127) thiss!20629))))

(assert (=> start!370000 e!2438189))

(assert (=> start!370000 e!2438185))

(assert (=> start!370000 true))

(declare-fun e!2438179 () Bool)

(assert (=> start!370000 e!2438179))

(declare-fun e!2438184 () Bool)

(assert (=> start!370000 e!2438184))

(assert (=> start!370000 e!2438188))

(declare-fun e!2438195 () Bool)

(assert (=> start!370000 e!2438195))

(assert (=> start!370000 e!2438177))

(declare-fun b!3940512 () Bool)

(declare-fun res!1594723 () Bool)

(assert (=> b!3940512 (=> (not res!1594723) (not e!2438196))))

(declare-fun suffixResult!91 () List!41972)

(declare-fun suffix!1176 () List!41972)

(declare-fun suffixTokens!72 () List!41973)

(declare-datatypes ((tuple2!41136 0))(
  ( (tuple2!41137 (_1!23702 List!41973) (_2!23702 List!41972)) )
))
(declare-fun lexList!1897 (LexerInterface!6129 List!41974 List!41972) tuple2!41136)

(assert (=> b!3940512 (= res!1594723 (= (lexList!1897 thiss!20629 rules!2768 suffix!1176) (tuple2!41137 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3940513 () Bool)

(declare-fun res!1594722 () Bool)

(assert (=> b!3940513 (=> (not res!1594722) (not e!2438189))))

(declare-fun isEmpty!24966 (List!41973) Bool)

(assert (=> b!3940513 (= res!1594722 (not (isEmpty!24966 prefixTokens!80)))))

(declare-fun b!3940514 () Bool)

(assert (=> b!3940514 (= e!2438189 e!2438196)))

(declare-fun res!1594724 () Bool)

(assert (=> b!3940514 (=> (not res!1594724) (not e!2438196))))

(declare-fun ++!10837 (List!41973 List!41973) List!41973)

(assert (=> b!3940514 (= res!1594724 (= (lexList!1897 thiss!20629 rules!2768 lt!1378357) (tuple2!41137 (++!10837 prefixTokens!80 suffixTokens!72) suffixResult!91)))))

(declare-fun ++!10838 (List!41972 List!41972) List!41972)

(assert (=> b!3940514 (= lt!1378357 (++!10838 prefix!426 suffix!1176))))

(declare-fun e!2438186 () Bool)

(assert (=> b!3940515 (= e!2438186 (and tp!1199128 tp!1199135))))

(declare-fun b!3940516 () Bool)

(declare-fun tp!1199127 () Bool)

(declare-fun e!2438191 () Bool)

(assert (=> b!3940516 (= e!2438191 (and tp!1199127 (inv!56047 (tag!7400 (rule!9498 (h!47269 suffixTokens!72)))) (inv!56050 (transformation!6540 (rule!9498 (h!47269 suffixTokens!72)))) e!2438186))))

(declare-fun b!3940517 () Bool)

(declare-fun res!1594720 () Bool)

(assert (=> b!3940517 (=> (not res!1594720) (not e!2438189))))

(declare-fun rulesInvariant!5472 (LexerInterface!6129 List!41974) Bool)

(assert (=> b!3940517 (= res!1594720 (rulesInvariant!5472 thiss!20629 rules!2768))))

(declare-fun b!3940518 () Bool)

(declare-fun tp!1199126 () Bool)

(assert (=> b!3940518 (= e!2438179 (and tp_is_empty!19861 tp!1199126))))

(declare-fun tp!1199137 () Bool)

(declare-fun e!2438198 () Bool)

(declare-fun b!3940519 () Bool)

(declare-fun inv!21 (TokenValue!6770) Bool)

(assert (=> b!3940519 (= e!2438198 (and (inv!21 (value!207024 (h!47269 suffixTokens!72))) e!2438191 tp!1199137))))

(declare-fun tp!1199134 () Bool)

(declare-fun b!3940520 () Bool)

(assert (=> b!3940520 (= e!2438183 (and (inv!21 (value!207024 (h!47269 prefixTokens!80))) e!2438187 tp!1199134))))

(assert (=> b!3940521 (= e!2438180 (and tp!1199131 tp!1199138))))

(declare-fun b!3940522 () Bool)

(declare-fun tp!1199133 () Bool)

(assert (=> b!3940522 (= e!2438195 (and (inv!56051 (h!47269 suffixTokens!72)) e!2438198 tp!1199133))))

(assert (=> b!3940523 (= e!2438193 (and tp!1199140 tp!1199132))))

(declare-fun b!3940524 () Bool)

(declare-fun tp!1199136 () Bool)

(assert (=> b!3940524 (= e!2438184 (and e!2438190 tp!1199136))))

(assert (= (and start!370000 res!1594727) b!3940507))

(assert (= (and b!3940507 res!1594721) b!3940517))

(assert (= (and b!3940517 res!1594720) b!3940513))

(assert (= (and b!3940513 res!1594722) b!3940505))

(assert (= (and b!3940505 res!1594725) b!3940514))

(assert (= (and b!3940514 res!1594724) b!3940512))

(assert (= (and b!3940512 res!1594723) b!3940506))

(assert (= (and b!3940506 res!1594726) b!3940509))

(assert (= (and start!370000 ((_ is Cons!41848) suffixResult!91)) b!3940504))

(assert (= (and start!370000 ((_ is Cons!41848) suffix!1176)) b!3940518))

(assert (= b!3940511 b!3940523))

(assert (= b!3940524 b!3940511))

(assert (= (and start!370000 ((_ is Cons!41850) rules!2768)) b!3940524))

(assert (= b!3940503 b!3940521))

(assert (= b!3940520 b!3940503))

(assert (= b!3940508 b!3940520))

(assert (= (and start!370000 ((_ is Cons!41849) prefixTokens!80)) b!3940508))

(assert (= b!3940516 b!3940515))

(assert (= b!3940519 b!3940516))

(assert (= b!3940522 b!3940519))

(assert (= (and start!370000 ((_ is Cons!41849) suffixTokens!72)) b!3940522))

(assert (= (and start!370000 ((_ is Cons!41848) prefix!426)) b!3940510))

(declare-fun m!4509197 () Bool)

(assert (=> b!3940509 m!4509197))

(declare-fun m!4509199 () Bool)

(assert (=> b!3940522 m!4509199))

(declare-fun m!4509201 () Bool)

(assert (=> b!3940507 m!4509201))

(declare-fun m!4509203 () Bool)

(assert (=> b!3940505 m!4509203))

(declare-fun m!4509205 () Bool)

(assert (=> b!3940511 m!4509205))

(declare-fun m!4509207 () Bool)

(assert (=> b!3940511 m!4509207))

(declare-fun m!4509209 () Bool)

(assert (=> b!3940516 m!4509209))

(declare-fun m!4509211 () Bool)

(assert (=> b!3940516 m!4509211))

(declare-fun m!4509213 () Bool)

(assert (=> b!3940508 m!4509213))

(declare-fun m!4509215 () Bool)

(assert (=> b!3940517 m!4509215))

(declare-fun m!4509217 () Bool)

(assert (=> b!3940513 m!4509217))

(declare-fun m!4509219 () Bool)

(assert (=> b!3940503 m!4509219))

(declare-fun m!4509221 () Bool)

(assert (=> b!3940503 m!4509221))

(declare-fun m!4509223 () Bool)

(assert (=> b!3940514 m!4509223))

(declare-fun m!4509225 () Bool)

(assert (=> b!3940514 m!4509225))

(declare-fun m!4509227 () Bool)

(assert (=> b!3940514 m!4509227))

(declare-fun m!4509229 () Bool)

(assert (=> b!3940512 m!4509229))

(declare-fun m!4509231 () Bool)

(assert (=> b!3940520 m!4509231))

(declare-fun m!4509233 () Bool)

(assert (=> b!3940506 m!4509233))

(declare-fun m!4509235 () Bool)

(assert (=> b!3940519 m!4509235))

(check-sat (not b_next!108469) (not b!3940507) (not b!3940522) (not b!3940518) (not b_next!108471) (not b!3940520) (not b!3940512) b_and!301065 (not b!3940504) (not b!3940513) (not b!3940510) (not b!3940514) b_and!301061 (not b_next!108477) (not b!3940506) (not b!3940508) (not b!3940517) (not b!3940511) (not b_next!108479) (not b!3940503) b_and!301063 (not b!3940516) (not b!3940519) b_and!301055 (not b!3940524) (not b!3940505) (not b_next!108475) b_and!301059 (not b_next!108473) tp_is_empty!19861 (not b!3940509) b_and!301057)
(check-sat (not b_next!108469) (not b_next!108477) (not b_next!108479) (not b_next!108471) b_and!301063 b_and!301065 b_and!301055 (not b_next!108473) b_and!301057 b_and!301061 (not b_next!108475) b_and!301059)
