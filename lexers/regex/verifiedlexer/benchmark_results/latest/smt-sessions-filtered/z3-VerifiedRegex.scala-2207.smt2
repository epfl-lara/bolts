; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108426 () Bool)

(assert start!108426)

(declare-fun b!1214056 () Bool)

(declare-fun b_free!29033 () Bool)

(declare-fun b_next!29737 () Bool)

(assert (=> b!1214056 (= b_free!29033 (not b_next!29737))))

(declare-fun tp!344295 () Bool)

(declare-fun b_and!82337 () Bool)

(assert (=> b!1214056 (= tp!344295 b_and!82337)))

(declare-fun b_free!29035 () Bool)

(declare-fun b_next!29739 () Bool)

(assert (=> b!1214056 (= b_free!29035 (not b_next!29739))))

(declare-fun tp!344296 () Bool)

(declare-fun b_and!82339 () Bool)

(assert (=> b!1214056 (= tp!344296 b_and!82339)))

(declare-fun b!1214059 () Bool)

(declare-fun b_free!29037 () Bool)

(declare-fun b_next!29741 () Bool)

(assert (=> b!1214059 (= b_free!29037 (not b_next!29741))))

(declare-fun tp!344301 () Bool)

(declare-fun b_and!82341 () Bool)

(assert (=> b!1214059 (= tp!344301 b_and!82341)))

(declare-fun b_free!29039 () Bool)

(declare-fun b_next!29743 () Bool)

(assert (=> b!1214059 (= b_free!29039 (not b_next!29743))))

(declare-fun tp!344294 () Bool)

(declare-fun b_and!82343 () Bool)

(assert (=> b!1214059 (= tp!344294 b_and!82343)))

(declare-fun b!1214040 () Bool)

(declare-fun e!779024 () Bool)

(declare-fun e!779025 () Bool)

(assert (=> b!1214040 (= e!779024 e!779025)))

(declare-fun res!545924 () Bool)

(assert (=> b!1214040 (=> (not res!545924) (not e!779025))))

(declare-datatypes ((List!12394 0))(
  ( (Nil!12336) (Cons!12336 (h!17737 (_ BitVec 16)) (t!112964 List!12394)) )
))
(declare-datatypes ((TokenValue!2187 0))(
  ( (FloatLiteralValue!4374 (text!15754 List!12394)) (TokenValueExt!2186 (__x!8089 Int)) (Broken!10935 (value!68962 List!12394)) (Object!2244) (End!2187) (Def!2187) (Underscore!2187) (Match!2187) (Else!2187) (Error!2187) (Case!2187) (If!2187) (Extends!2187) (Abstract!2187) (Class!2187) (Val!2187) (DelimiterValue!4374 (del!2247 List!12394)) (KeywordValue!2193 (value!68963 List!12394)) (CommentValue!4374 (value!68964 List!12394)) (WhitespaceValue!4374 (value!68965 List!12394)) (IndentationValue!2187 (value!68966 List!12394)) (String!15066) (Int32!2187) (Broken!10936 (value!68967 List!12394)) (Boolean!2188) (Unit!18639) (OperatorValue!2190 (op!2247 List!12394)) (IdentifierValue!4374 (value!68968 List!12394)) (IdentifierValue!4375 (value!68969 List!12394)) (WhitespaceValue!4375 (value!68970 List!12394)) (True!4374) (False!4374) (Broken!10937 (value!68971 List!12394)) (Broken!10938 (value!68972 List!12394)) (True!4375) (RightBrace!2187) (RightBracket!2187) (Colon!2187) (Null!2187) (Comma!2187) (LeftBracket!2187) (False!4375) (LeftBrace!2187) (ImaginaryLiteralValue!2187 (text!15755 List!12394)) (StringLiteralValue!6561 (value!68973 List!12394)) (EOFValue!2187 (value!68974 List!12394)) (IdentValue!2187 (value!68975 List!12394)) (DelimiterValue!4375 (value!68976 List!12394)) (DedentValue!2187 (value!68977 List!12394)) (NewLineValue!2187 (value!68978 List!12394)) (IntegerValue!6561 (value!68979 (_ BitVec 32)) (text!15756 List!12394)) (IntegerValue!6562 (value!68980 Int) (text!15757 List!12394)) (Times!2187) (Or!2187) (Equal!2187) (Minus!2187) (Broken!10939 (value!68981 List!12394)) (And!2187) (Div!2187) (LessEqual!2187) (Mod!2187) (Concat!5576) (Not!2187) (Plus!2187) (SpaceValue!2187 (value!68982 List!12394)) (IntegerValue!6563 (value!68983 Int) (text!15758 List!12394)) (StringLiteralValue!6562 (text!15759 List!12394)) (FloatLiteralValue!4375 (text!15760 List!12394)) (BytesLiteralValue!2187 (value!68984 List!12394)) (CommentValue!4375 (value!68985 List!12394)) (StringLiteralValue!6563 (value!68986 List!12394)) (ErrorTokenValue!2187 (msg!2248 List!12394)) )
))
(declare-datatypes ((C!7096 0))(
  ( (C!7097 (val!4078 Int)) )
))
(declare-datatypes ((List!12395 0))(
  ( (Nil!12337) (Cons!12337 (h!17738 C!7096) (t!112965 List!12395)) )
))
(declare-datatypes ((IArray!8093 0))(
  ( (IArray!8094 (innerList!4104 List!12395)) )
))
(declare-datatypes ((Conc!4044 0))(
  ( (Node!4044 (left!10687 Conc!4044) (right!11017 Conc!4044) (csize!8318 Int) (cheight!4255 Int)) (Leaf!6252 (xs!6755 IArray!8093) (csize!8319 Int)) (Empty!4044) )
))
(declare-datatypes ((BalanceConc!8020 0))(
  ( (BalanceConc!8021 (c!203202 Conc!4044)) )
))
(declare-datatypes ((String!15067 0))(
  ( (String!15068 (value!68987 String)) )
))
(declare-datatypes ((Regex!3389 0))(
  ( (ElementMatch!3389 (c!203203 C!7096)) (Concat!5577 (regOne!7290 Regex!3389) (regTwo!7290 Regex!3389)) (EmptyExpr!3389) (Star!3389 (reg!3718 Regex!3389)) (EmptyLang!3389) (Union!3389 (regOne!7291 Regex!3389) (regTwo!7291 Regex!3389)) )
))
(declare-datatypes ((TokenValueInjection!4070 0))(
  ( (TokenValueInjection!4071 (toValue!3244 Int) (toChars!3103 Int)) )
))
(declare-datatypes ((Rule!4038 0))(
  ( (Rule!4039 (regex!2119 Regex!3389) (tag!2381 String!15067) (isSeparator!2119 Bool) (transformation!2119 TokenValueInjection!4070)) )
))
(declare-datatypes ((Token!3900 0))(
  ( (Token!3901 (value!68988 TokenValue!2187) (rule!3542 Rule!4038) (size!9787 Int) (originalCharacters!2673 List!12395)) )
))
(declare-datatypes ((tuple2!12206 0))(
  ( (tuple2!12207 (_1!6950 Token!3900) (_2!6950 List!12395)) )
))
(declare-datatypes ((Option!2481 0))(
  ( (None!2480) (Some!2480 (v!20609 tuple2!12206)) )
))
(declare-fun lt!415096 () Option!2481)

(declare-fun isDefined!2119 (Option!2481) Bool)

(assert (=> b!1214040 (= res!545924 (isDefined!2119 lt!415096))))

(declare-datatypes ((LexerInterface!1814 0))(
  ( (LexerInterfaceExt!1811 (__x!8090 Int)) (Lexer!1812) )
))
(declare-fun thiss!20528 () LexerInterface!1814)

(declare-datatypes ((List!12396 0))(
  ( (Nil!12338) (Cons!12338 (h!17739 Rule!4038) (t!112966 List!12396)) )
))
(declare-fun rules!2728 () List!12396)

(declare-fun input!2346 () List!12395)

(declare-fun maxPrefix!936 (LexerInterface!1814 List!12396 List!12395) Option!2481)

(assert (=> b!1214040 (= lt!415096 (maxPrefix!936 thiss!20528 rules!2728 input!2346))))

(declare-datatypes ((List!12397 0))(
  ( (Nil!12339) (Cons!12339 (h!17740 Token!3900) (t!112967 List!12397)) )
))
(declare-fun tokens!556 () List!12397)

(declare-fun tp!344302 () Bool)

(declare-fun b!1214041 () Bool)

(declare-fun e!779015 () Bool)

(declare-fun e!779026 () Bool)

(declare-fun inv!16524 (String!15067) Bool)

(declare-fun inv!16527 (TokenValueInjection!4070) Bool)

(assert (=> b!1214041 (= e!779026 (and tp!344302 (inv!16524 (tag!2381 (rule!3542 (h!17740 tokens!556)))) (inv!16527 (transformation!2119 (rule!3542 (h!17740 tokens!556)))) e!779015))))

(declare-fun b!1214042 () Bool)

(declare-fun res!545922 () Bool)

(declare-fun e!779023 () Bool)

(assert (=> b!1214042 (=> (not res!545922) (not e!779023))))

(declare-fun lt!415100 () tuple2!12206)

(declare-fun lt!415098 () List!12395)

(declare-fun ++!3157 (List!12395 List!12395) List!12395)

(assert (=> b!1214042 (= res!545922 (= (++!3157 lt!415098 (_2!6950 lt!415100)) input!2346))))

(declare-fun b!1214043 () Bool)

(declare-fun res!545925 () Bool)

(assert (=> b!1214043 (=> (not res!545925) (not e!779024))))

(declare-fun isEmpty!7343 (List!12396) Bool)

(assert (=> b!1214043 (= res!545925 (not (isEmpty!7343 rules!2728)))))

(declare-fun b!1214044 () Bool)

(declare-fun e!779017 () Bool)

(declare-fun e!779029 () Bool)

(assert (=> b!1214044 (= e!779017 e!779029)))

(declare-fun res!545927 () Bool)

(assert (=> b!1214044 (=> (not res!545927) (not e!779029))))

(declare-fun lt!415099 () BalanceConc!8020)

(declare-fun lt!415097 () BalanceConc!8020)

(assert (=> b!1214044 (= res!545927 (= lt!415099 lt!415097))))

(declare-fun charsOf!1125 (Token!3900) BalanceConc!8020)

(assert (=> b!1214044 (= lt!415097 (charsOf!1125 (h!17740 tokens!556)))))

(assert (=> b!1214044 (= lt!415099 (charsOf!1125 (_1!6950 lt!415100)))))

(declare-fun b!1214045 () Bool)

(declare-fun res!545917 () Bool)

(assert (=> b!1214045 (=> (not res!545917) (not e!779023))))

(declare-fun rulesProduceIndividualToken!822 (LexerInterface!1814 List!12396 Token!3900) Bool)

(assert (=> b!1214045 (= res!545917 (not (rulesProduceIndividualToken!822 thiss!20528 rules!2728 (h!17740 tokens!556))))))

(declare-fun b!1214046 () Bool)

(declare-fun res!545921 () Bool)

(assert (=> b!1214046 (=> (not res!545921) (not e!779024))))

(get-info :version)

(assert (=> b!1214046 (= res!545921 (not ((_ is Nil!12339) tokens!556)))))

(declare-fun b!1214047 () Bool)

(declare-fun e!779019 () Bool)

(declare-fun e!779028 () Bool)

(declare-fun tp!344303 () Bool)

(assert (=> b!1214047 (= e!779019 (and e!779028 tp!344303))))

(declare-fun b!1214048 () Bool)

(assert (=> b!1214048 (= e!779025 e!779017)))

(declare-fun res!545928 () Bool)

(assert (=> b!1214048 (=> (not res!545928) (not e!779017))))

(assert (=> b!1214048 (= res!545928 (= (_1!6950 lt!415100) (h!17740 tokens!556)))))

(declare-fun get!4058 (Option!2481) tuple2!12206)

(assert (=> b!1214048 (= lt!415100 (get!4058 lt!415096))))

(declare-fun tp!344300 () Bool)

(declare-fun e!779021 () Bool)

(declare-fun e!779027 () Bool)

(declare-fun b!1214049 () Bool)

(declare-fun inv!16528 (Token!3900) Bool)

(assert (=> b!1214049 (= e!779027 (and (inv!16528 (h!17740 tokens!556)) e!779021 tp!344300))))

(declare-fun b!1214050 () Bool)

(declare-fun res!545919 () Bool)

(assert (=> b!1214050 (=> (not res!545919) (not e!779024))))

(declare-datatypes ((tuple2!12208 0))(
  ( (tuple2!12209 (_1!6951 List!12397) (_2!6951 List!12395)) )
))
(declare-fun lexList!444 (LexerInterface!1814 List!12396 List!12395) tuple2!12208)

(assert (=> b!1214050 (= res!545919 (= (_1!6951 (lexList!444 thiss!20528 rules!2728 input!2346)) tokens!556))))

(declare-fun res!545918 () Bool)

(assert (=> start!108426 (=> (not res!545918) (not e!779024))))

(assert (=> start!108426 (= res!545918 ((_ is Lexer!1812) thiss!20528))))

(assert (=> start!108426 e!779024))

(assert (=> start!108426 true))

(assert (=> start!108426 e!779019))

(declare-fun e!779022 () Bool)

(assert (=> start!108426 e!779022))

(assert (=> start!108426 e!779027))

(declare-fun b!1214051 () Bool)

(assert (=> b!1214051 (= e!779023 false)))

(declare-fun lt!415095 () tuple2!12208)

(assert (=> b!1214051 (= lt!415095 (lexList!444 thiss!20528 rules!2728 (_2!6950 lt!415100)))))

(declare-fun b!1214052 () Bool)

(declare-fun res!545923 () Bool)

(assert (=> b!1214052 (=> (not res!545923) (not e!779024))))

(declare-fun rulesInvariant!1688 (LexerInterface!1814 List!12396) Bool)

(assert (=> b!1214052 (= res!545923 (rulesInvariant!1688 thiss!20528 rules!2728))))

(declare-fun b!1214053 () Bool)

(declare-fun res!545926 () Bool)

(assert (=> b!1214053 (=> (not res!545926) (not e!779023))))

(declare-fun lt!415101 () List!12395)

(declare-fun matchR!1511 (Regex!3389 List!12395) Bool)

(assert (=> b!1214053 (= res!545926 (matchR!1511 (regex!2119 (rule!3542 (_1!6950 lt!415100))) lt!415101))))

(declare-fun tp!344297 () Bool)

(declare-fun b!1214054 () Bool)

(declare-fun e!779020 () Bool)

(assert (=> b!1214054 (= e!779028 (and tp!344297 (inv!16524 (tag!2381 (h!17739 rules!2728))) (inv!16527 (transformation!2119 (h!17739 rules!2728))) e!779020))))

(declare-fun tp!344298 () Bool)

(declare-fun b!1214055 () Bool)

(declare-fun inv!21 (TokenValue!2187) Bool)

(assert (=> b!1214055 (= e!779021 (and (inv!21 (value!68988 (h!17740 tokens!556))) e!779026 tp!344298))))

(assert (=> b!1214056 (= e!779020 (and tp!344295 tp!344296))))

(declare-fun b!1214057 () Bool)

(declare-fun tp_is_empty!6299 () Bool)

(declare-fun tp!344299 () Bool)

(assert (=> b!1214057 (= e!779022 (and tp_is_empty!6299 tp!344299))))

(declare-fun b!1214058 () Bool)

(assert (=> b!1214058 (= e!779029 e!779023)))

(declare-fun res!545920 () Bool)

(assert (=> b!1214058 (=> (not res!545920) (not e!779023))))

(assert (=> b!1214058 (= res!545920 (= lt!415101 lt!415098))))

(declare-fun list!4557 (BalanceConc!8020) List!12395)

(assert (=> b!1214058 (= lt!415098 (list!4557 lt!415097))))

(assert (=> b!1214058 (= lt!415101 (list!4557 lt!415099))))

(assert (=> b!1214059 (= e!779015 (and tp!344301 tp!344294))))

(assert (= (and start!108426 res!545918) b!1214043))

(assert (= (and b!1214043 res!545925) b!1214052))

(assert (= (and b!1214052 res!545923) b!1214050))

(assert (= (and b!1214050 res!545919) b!1214046))

(assert (= (and b!1214046 res!545921) b!1214040))

(assert (= (and b!1214040 res!545924) b!1214048))

(assert (= (and b!1214048 res!545928) b!1214044))

(assert (= (and b!1214044 res!545927) b!1214058))

(assert (= (and b!1214058 res!545920) b!1214042))

(assert (= (and b!1214042 res!545922) b!1214053))

(assert (= (and b!1214053 res!545926) b!1214045))

(assert (= (and b!1214045 res!545917) b!1214051))

(assert (= b!1214054 b!1214056))

(assert (= b!1214047 b!1214054))

(assert (= (and start!108426 ((_ is Cons!12338) rules!2728)) b!1214047))

(assert (= (and start!108426 ((_ is Cons!12337) input!2346)) b!1214057))

(assert (= b!1214041 b!1214059))

(assert (= b!1214055 b!1214041))

(assert (= b!1214049 b!1214055))

(assert (= (and start!108426 ((_ is Cons!12339) tokens!556)) b!1214049))

(declare-fun m!1388983 () Bool)

(assert (=> b!1214052 m!1388983))

(declare-fun m!1388985 () Bool)

(assert (=> b!1214044 m!1388985))

(declare-fun m!1388987 () Bool)

(assert (=> b!1214044 m!1388987))

(declare-fun m!1388989 () Bool)

(assert (=> b!1214040 m!1388989))

(declare-fun m!1388991 () Bool)

(assert (=> b!1214040 m!1388991))

(declare-fun m!1388993 () Bool)

(assert (=> b!1214045 m!1388993))

(declare-fun m!1388995 () Bool)

(assert (=> b!1214041 m!1388995))

(declare-fun m!1388997 () Bool)

(assert (=> b!1214041 m!1388997))

(declare-fun m!1388999 () Bool)

(assert (=> b!1214048 m!1388999))

(declare-fun m!1389001 () Bool)

(assert (=> b!1214055 m!1389001))

(declare-fun m!1389003 () Bool)

(assert (=> b!1214050 m!1389003))

(declare-fun m!1389005 () Bool)

(assert (=> b!1214058 m!1389005))

(declare-fun m!1389007 () Bool)

(assert (=> b!1214058 m!1389007))

(declare-fun m!1389009 () Bool)

(assert (=> b!1214054 m!1389009))

(declare-fun m!1389011 () Bool)

(assert (=> b!1214054 m!1389011))

(declare-fun m!1389013 () Bool)

(assert (=> b!1214042 m!1389013))

(declare-fun m!1389015 () Bool)

(assert (=> b!1214053 m!1389015))

(declare-fun m!1389017 () Bool)

(assert (=> b!1214043 m!1389017))

(declare-fun m!1389019 () Bool)

(assert (=> b!1214051 m!1389019))

(declare-fun m!1389021 () Bool)

(assert (=> b!1214049 m!1389021))

(check-sat (not b!1214055) b_and!82343 (not b!1214058) (not b!1214053) (not b_next!29739) b_and!82339 (not b_next!29737) (not b!1214057) (not b!1214052) (not b!1214050) b_and!82337 (not b!1214048) (not b_next!29743) (not b!1214045) (not b!1214051) (not b!1214054) (not b!1214040) (not b_next!29741) (not b!1214049) (not b!1214044) (not b!1214043) b_and!82341 (not b!1214042) (not b!1214041) (not b!1214047) tp_is_empty!6299)
(check-sat b_and!82343 (not b_next!29741) (not b_next!29739) b_and!82341 b_and!82339 (not b_next!29737) b_and!82337 (not b_next!29743))
