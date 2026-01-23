; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108758 () Bool)

(assert start!108758)

(declare-fun b!1216874 () Bool)

(declare-fun b_free!29289 () Bool)

(declare-fun b_next!29993 () Bool)

(assert (=> b!1216874 (= b_free!29289 (not b_next!29993))))

(declare-fun tp!345558 () Bool)

(declare-fun b_and!82705 () Bool)

(assert (=> b!1216874 (= tp!345558 b_and!82705)))

(declare-fun b_free!29291 () Bool)

(declare-fun b_next!29995 () Bool)

(assert (=> b!1216874 (= b_free!29291 (not b_next!29995))))

(declare-fun tp!345565 () Bool)

(declare-fun b_and!82707 () Bool)

(assert (=> b!1216874 (= tp!345565 b_and!82707)))

(declare-fun b!1216870 () Bool)

(declare-fun b_free!29293 () Bool)

(declare-fun b_next!29997 () Bool)

(assert (=> b!1216870 (= b_free!29293 (not b_next!29997))))

(declare-fun tp!345559 () Bool)

(declare-fun b_and!82709 () Bool)

(assert (=> b!1216870 (= tp!345559 b_and!82709)))

(declare-fun b_free!29295 () Bool)

(declare-fun b_next!29999 () Bool)

(assert (=> b!1216870 (= b_free!29295 (not b_next!29999))))

(declare-fun tp!345556 () Bool)

(declare-fun b_and!82711 () Bool)

(assert (=> b!1216870 (= tp!345556 b_and!82711)))

(declare-fun b!1216867 () Bool)

(declare-datatypes ((Unit!18703 0))(
  ( (Unit!18704) )
))
(declare-fun e!781067 () Unit!18703)

(declare-fun Unit!18705 () Unit!18703)

(assert (=> b!1216867 (= e!781067 Unit!18705)))

(declare-datatypes ((List!12490 0))(
  ( (Nil!12432) (Cons!12432 (h!17833 (_ BitVec 16)) (t!113236 List!12490)) )
))
(declare-datatypes ((TokenValue!2209 0))(
  ( (FloatLiteralValue!4418 (text!15908 List!12490)) (TokenValueExt!2208 (__x!8133 Int)) (Broken!11045 (value!69589 List!12490)) (Object!2266) (End!2209) (Def!2209) (Underscore!2209) (Match!2209) (Else!2209) (Error!2209) (Case!2209) (If!2209) (Extends!2209) (Abstract!2209) (Class!2209) (Val!2209) (DelimiterValue!4418 (del!2269 List!12490)) (KeywordValue!2215 (value!69590 List!12490)) (CommentValue!4418 (value!69591 List!12490)) (WhitespaceValue!4418 (value!69592 List!12490)) (IndentationValue!2209 (value!69593 List!12490)) (String!15176) (Int32!2209) (Broken!11046 (value!69594 List!12490)) (Boolean!2210) (Unit!18706) (OperatorValue!2212 (op!2269 List!12490)) (IdentifierValue!4418 (value!69595 List!12490)) (IdentifierValue!4419 (value!69596 List!12490)) (WhitespaceValue!4419 (value!69597 List!12490)) (True!4418) (False!4418) (Broken!11047 (value!69598 List!12490)) (Broken!11048 (value!69599 List!12490)) (True!4419) (RightBrace!2209) (RightBracket!2209) (Colon!2209) (Null!2209) (Comma!2209) (LeftBracket!2209) (False!4419) (LeftBrace!2209) (ImaginaryLiteralValue!2209 (text!15909 List!12490)) (StringLiteralValue!6627 (value!69600 List!12490)) (EOFValue!2209 (value!69601 List!12490)) (IdentValue!2209 (value!69602 List!12490)) (DelimiterValue!4419 (value!69603 List!12490)) (DedentValue!2209 (value!69604 List!12490)) (NewLineValue!2209 (value!69605 List!12490)) (IntegerValue!6627 (value!69606 (_ BitVec 32)) (text!15910 List!12490)) (IntegerValue!6628 (value!69607 Int) (text!15911 List!12490)) (Times!2209) (Or!2209) (Equal!2209) (Minus!2209) (Broken!11049 (value!69608 List!12490)) (And!2209) (Div!2209) (LessEqual!2209) (Mod!2209) (Concat!5620) (Not!2209) (Plus!2209) (SpaceValue!2209 (value!69609 List!12490)) (IntegerValue!6629 (value!69610 Int) (text!15912 List!12490)) (StringLiteralValue!6628 (text!15913 List!12490)) (FloatLiteralValue!4419 (text!15914 List!12490)) (BytesLiteralValue!2209 (value!69611 List!12490)) (CommentValue!4419 (value!69612 List!12490)) (StringLiteralValue!6629 (value!69613 List!12490)) (ErrorTokenValue!2209 (msg!2270 List!12490)) )
))
(declare-datatypes ((C!7140 0))(
  ( (C!7141 (val!4100 Int)) )
))
(declare-datatypes ((List!12491 0))(
  ( (Nil!12433) (Cons!12433 (h!17834 C!7140) (t!113237 List!12491)) )
))
(declare-datatypes ((IArray!8141 0))(
  ( (IArray!8142 (innerList!4128 List!12491)) )
))
(declare-datatypes ((Conc!4068 0))(
  ( (Node!4068 (left!10726 Conc!4068) (right!11056 Conc!4068) (csize!8366 Int) (cheight!4279 Int)) (Leaf!6287 (xs!6779 IArray!8141) (csize!8367 Int)) (Empty!4068) )
))
(declare-datatypes ((BalanceConc!8068 0))(
  ( (BalanceConc!8069 (c!203508 Conc!4068)) )
))
(declare-datatypes ((String!15177 0))(
  ( (String!15178 (value!69614 String)) )
))
(declare-datatypes ((Regex!3411 0))(
  ( (ElementMatch!3411 (c!203509 C!7140)) (Concat!5621 (regOne!7334 Regex!3411) (regTwo!7334 Regex!3411)) (EmptyExpr!3411) (Star!3411 (reg!3740 Regex!3411)) (EmptyLang!3411) (Union!3411 (regOne!7335 Regex!3411) (regTwo!7335 Regex!3411)) )
))
(declare-datatypes ((TokenValueInjection!4114 0))(
  ( (TokenValueInjection!4115 (toValue!3270 Int) (toChars!3129 Int)) )
))
(declare-datatypes ((Rule!4082 0))(
  ( (Rule!4083 (regex!2141 Regex!3411) (tag!2403 String!15177) (isSeparator!2141 Bool) (transformation!2141 TokenValueInjection!4114)) )
))
(declare-datatypes ((Token!3944 0))(
  ( (Token!3945 (value!69615 TokenValue!2209) (rule!3566 Rule!4082) (size!9827 Int) (originalCharacters!2695 List!12491)) )
))
(declare-datatypes ((List!12492 0))(
  ( (Nil!12434) (Cons!12434 (h!17835 Token!3944) (t!113238 List!12492)) )
))
(declare-fun lt!415895 () List!12492)

(declare-fun tokens!556 () List!12492)

(assert (=> b!1216867 (= lt!415895 (Cons!12434 (h!17835 tokens!556) Nil!12434))))

(declare-fun lt!415891 () List!12491)

(declare-datatypes ((tuple2!12298 0))(
  ( (tuple2!12299 (_1!6996 Token!3944) (_2!6996 List!12491)) )
))
(declare-fun lt!415894 () tuple2!12298)

(declare-datatypes ((LexerInterface!1836 0))(
  ( (LexerInterfaceExt!1833 (__x!8134 Int)) (Lexer!1834) )
))
(declare-fun thiss!20528 () LexerInterface!1836)

(declare-datatypes ((tuple2!12300 0))(
  ( (tuple2!12301 (_1!6997 List!12492) (_2!6997 List!12491)) )
))
(declare-fun lt!415890 () tuple2!12300)

(declare-datatypes ((List!12493 0))(
  ( (Nil!12435) (Cons!12435 (h!17836 Rule!4082) (t!113239 List!12493)) )
))
(declare-fun rules!2728 () List!12493)

(declare-fun lt!415892 () Unit!18703)

(declare-fun lemmaLexThenLexPrefix!162 (LexerInterface!1836 List!12493 List!12491 List!12491 List!12492 List!12492 List!12491) Unit!18703)

(declare-fun lexList!466 (LexerInterface!1836 List!12493 List!12491) tuple2!12300)

(assert (=> b!1216867 (= lt!415892 (lemmaLexThenLexPrefix!162 thiss!20528 rules!2728 lt!415891 (_2!6996 lt!415894) lt!415895 (_1!6997 (lexList!466 thiss!20528 rules!2728 (_2!6996 lt!415894))) (_2!6997 lt!415890)))))

(declare-fun res!547168 () Bool)

(assert (=> b!1216867 (= res!547168 (= (lexList!466 thiss!20528 rules!2728 lt!415891) (tuple2!12301 lt!415895 Nil!12433)))))

(declare-fun e!781060 () Bool)

(assert (=> b!1216867 (=> (not res!547168) (not e!781060))))

(assert (=> b!1216867 e!781060))

(declare-fun b!1216868 () Bool)

(declare-fun e!781071 () Bool)

(declare-fun e!781074 () Bool)

(assert (=> b!1216868 (= e!781071 e!781074)))

(declare-fun res!547174 () Bool)

(assert (=> b!1216868 (=> (not res!547174) (not e!781074))))

(get-info :version)

(assert (=> b!1216868 (= res!547174 (and (= (_1!6997 lt!415890) tokens!556) (not ((_ is Nil!12434) tokens!556))))))

(declare-fun input!2346 () List!12491)

(assert (=> b!1216868 (= lt!415890 (lexList!466 thiss!20528 rules!2728 input!2346))))

(declare-fun e!781077 () Bool)

(declare-fun e!781075 () Bool)

(declare-fun tp!345557 () Bool)

(declare-fun b!1216869 () Bool)

(declare-fun inv!16624 (Token!3944) Bool)

(assert (=> b!1216869 (= e!781077 (and (inv!16624 (h!17835 tokens!556)) e!781075 tp!345557))))

(declare-fun e!781061 () Bool)

(assert (=> b!1216870 (= e!781061 (and tp!345559 tp!345556))))

(declare-fun b!1216871 () Bool)

(declare-fun e!781065 () Bool)

(declare-fun e!781078 () Bool)

(assert (=> b!1216871 (= e!781065 e!781078)))

(declare-fun res!547175 () Bool)

(assert (=> b!1216871 (=> (not res!547175) (not e!781078))))

(declare-fun lt!415888 () List!12491)

(assert (=> b!1216871 (= res!547175 (= lt!415888 lt!415891))))

(declare-fun lt!415893 () BalanceConc!8068)

(declare-fun list!4583 (BalanceConc!8068) List!12491)

(assert (=> b!1216871 (= lt!415891 (list!4583 lt!415893))))

(declare-fun lt!415887 () BalanceConc!8068)

(assert (=> b!1216871 (= lt!415888 (list!4583 lt!415887))))

(declare-fun b!1216872 () Bool)

(declare-fun res!547167 () Bool)

(assert (=> b!1216872 (=> (not res!547167) (not e!781078))))

(declare-fun ++!3177 (List!12491 List!12491) List!12491)

(assert (=> b!1216872 (= res!547167 (= (++!3177 lt!415891 (_2!6996 lt!415894)) input!2346))))

(declare-fun e!781073 () Bool)

(declare-fun b!1216873 () Bool)

(declare-fun tp!345561 () Bool)

(declare-fun inv!16621 (String!15177) Bool)

(declare-fun inv!16625 (TokenValueInjection!4114) Bool)

(assert (=> b!1216873 (= e!781073 (and tp!345561 (inv!16621 (tag!2403 (h!17836 rules!2728))) (inv!16625 (transformation!2141 (h!17836 rules!2728))) e!781061))))

(declare-fun e!781066 () Bool)

(assert (=> b!1216874 (= e!781066 (and tp!345558 tp!345565))))

(declare-fun b!1216875 () Bool)

(declare-fun e!781072 () Bool)

(declare-fun tp_is_empty!6343 () Bool)

(declare-fun tp!345562 () Bool)

(assert (=> b!1216875 (= e!781072 (and tp_is_empty!6343 tp!345562))))

(declare-fun res!547171 () Bool)

(assert (=> start!108758 (=> (not res!547171) (not e!781071))))

(assert (=> start!108758 (= res!547171 ((_ is Lexer!1834) thiss!20528))))

(assert (=> start!108758 e!781071))

(assert (=> start!108758 true))

(declare-fun e!781076 () Bool)

(assert (=> start!108758 e!781076))

(assert (=> start!108758 e!781077))

(assert (=> start!108758 e!781072))

(declare-fun b!1216876 () Bool)

(declare-fun res!547170 () Bool)

(assert (=> b!1216876 (=> (not res!547170) (not e!781071))))

(declare-fun rulesInvariant!1710 (LexerInterface!1836 List!12493) Bool)

(assert (=> b!1216876 (= res!547170 (rulesInvariant!1710 thiss!20528 rules!2728))))

(declare-fun b!1216877 () Bool)

(declare-fun e!781069 () Bool)

(assert (=> b!1216877 (= e!781074 e!781069)))

(declare-fun res!547172 () Bool)

(assert (=> b!1216877 (=> (not res!547172) (not e!781069))))

(declare-datatypes ((Option!2503 0))(
  ( (None!2502) (Some!2502 (v!20633 tuple2!12298)) )
))
(declare-fun lt!415885 () Option!2503)

(declare-fun isDefined!2141 (Option!2503) Bool)

(assert (=> b!1216877 (= res!547172 (isDefined!2141 lt!415885))))

(declare-fun maxPrefix!958 (LexerInterface!1836 List!12493 List!12491) Option!2503)

(assert (=> b!1216877 (= lt!415885 (maxPrefix!958 thiss!20528 rules!2728 input!2346))))

(declare-fun b!1216878 () Bool)

(declare-fun Unit!18707 () Unit!18703)

(assert (=> b!1216878 (= e!781067 Unit!18707)))

(declare-fun b!1216879 () Bool)

(declare-fun res!547176 () Bool)

(assert (=> b!1216879 (=> (not res!547176) (not e!781071))))

(declare-fun isEmpty!7392 (List!12493) Bool)

(assert (=> b!1216879 (= res!547176 (not (isEmpty!7392 rules!2728)))))

(declare-fun e!781063 () Bool)

(declare-fun b!1216880 () Bool)

(declare-fun tp!345560 () Bool)

(assert (=> b!1216880 (= e!781063 (and tp!345560 (inv!16621 (tag!2403 (rule!3566 (h!17835 tokens!556)))) (inv!16625 (transformation!2141 (rule!3566 (h!17835 tokens!556)))) e!781066))))

(declare-fun b!1216881 () Bool)

(declare-fun tp!345564 () Bool)

(assert (=> b!1216881 (= e!781076 (and e!781073 tp!345564))))

(declare-fun b!1216882 () Bool)

(declare-fun e!781064 () Bool)

(assert (=> b!1216882 (= e!781064 e!781065)))

(declare-fun res!547177 () Bool)

(assert (=> b!1216882 (=> (not res!547177) (not e!781065))))

(assert (=> b!1216882 (= res!547177 (= lt!415887 lt!415893))))

(declare-fun charsOf!1147 (Token!3944) BalanceConc!8068)

(assert (=> b!1216882 (= lt!415893 (charsOf!1147 (h!17835 tokens!556)))))

(assert (=> b!1216882 (= lt!415887 (charsOf!1147 (_1!6996 lt!415894)))))

(declare-fun tp!345563 () Bool)

(declare-fun b!1216883 () Bool)

(declare-fun inv!21 (TokenValue!2209) Bool)

(assert (=> b!1216883 (= e!781075 (and (inv!21 (value!69615 (h!17835 tokens!556))) e!781063 tp!345563))))

(declare-fun b!1216884 () Bool)

(assert (=> b!1216884 (= e!781069 e!781064)))

(declare-fun res!547169 () Bool)

(assert (=> b!1216884 (=> (not res!547169) (not e!781064))))

(assert (=> b!1216884 (= res!547169 (= (_1!6996 lt!415894) (h!17835 tokens!556)))))

(declare-fun get!4091 (Option!2503) tuple2!12298)

(assert (=> b!1216884 (= lt!415894 (get!4091 lt!415885))))

(declare-fun b!1216885 () Bool)

(assert (=> b!1216885 (= e!781060 false)))

(declare-fun b!1216886 () Bool)

(declare-fun res!547173 () Bool)

(assert (=> b!1216886 (=> (not res!547173) (not e!781078))))

(declare-fun matchR!1528 (Regex!3411 List!12491) Bool)

(assert (=> b!1216886 (= res!547173 (matchR!1528 (regex!2141 (rule!3566 (_1!6996 lt!415894))) lt!415888))))

(declare-fun b!1216887 () Bool)

(declare-fun lt!415886 () Bool)

(assert (=> b!1216887 (= e!781078 (not lt!415886))))

(declare-fun lt!415889 () Unit!18703)

(assert (=> b!1216887 (= lt!415889 e!781067)))

(declare-fun c!203507 () Bool)

(assert (=> b!1216887 (= c!203507 (not lt!415886))))

(declare-fun rulesProduceIndividualToken!832 (LexerInterface!1836 List!12493 Token!3944) Bool)

(assert (=> b!1216887 (= lt!415886 (rulesProduceIndividualToken!832 thiss!20528 rules!2728 (h!17835 tokens!556)))))

(assert (= (and start!108758 res!547171) b!1216879))

(assert (= (and b!1216879 res!547176) b!1216876))

(assert (= (and b!1216876 res!547170) b!1216868))

(assert (= (and b!1216868 res!547174) b!1216877))

(assert (= (and b!1216877 res!547172) b!1216884))

(assert (= (and b!1216884 res!547169) b!1216882))

(assert (= (and b!1216882 res!547177) b!1216871))

(assert (= (and b!1216871 res!547175) b!1216872))

(assert (= (and b!1216872 res!547167) b!1216886))

(assert (= (and b!1216886 res!547173) b!1216887))

(assert (= (and b!1216887 c!203507) b!1216867))

(assert (= (and b!1216887 (not c!203507)) b!1216878))

(assert (= (and b!1216867 res!547168) b!1216885))

(assert (= b!1216873 b!1216870))

(assert (= b!1216881 b!1216873))

(assert (= (and start!108758 ((_ is Cons!12435) rules!2728)) b!1216881))

(assert (= b!1216880 b!1216874))

(assert (= b!1216883 b!1216880))

(assert (= b!1216869 b!1216883))

(assert (= (and start!108758 ((_ is Cons!12434) tokens!556)) b!1216869))

(assert (= (and start!108758 ((_ is Cons!12433) input!2346)) b!1216875))

(declare-fun m!1391079 () Bool)

(assert (=> b!1216877 m!1391079))

(declare-fun m!1391081 () Bool)

(assert (=> b!1216877 m!1391081))

(declare-fun m!1391083 () Bool)

(assert (=> b!1216873 m!1391083))

(declare-fun m!1391085 () Bool)

(assert (=> b!1216873 m!1391085))

(declare-fun m!1391087 () Bool)

(assert (=> b!1216867 m!1391087))

(declare-fun m!1391089 () Bool)

(assert (=> b!1216867 m!1391089))

(declare-fun m!1391091 () Bool)

(assert (=> b!1216867 m!1391091))

(declare-fun m!1391093 () Bool)

(assert (=> b!1216871 m!1391093))

(declare-fun m!1391095 () Bool)

(assert (=> b!1216871 m!1391095))

(declare-fun m!1391097 () Bool)

(assert (=> b!1216869 m!1391097))

(declare-fun m!1391099 () Bool)

(assert (=> b!1216884 m!1391099))

(declare-fun m!1391101 () Bool)

(assert (=> b!1216868 m!1391101))

(declare-fun m!1391103 () Bool)

(assert (=> b!1216887 m!1391103))

(declare-fun m!1391105 () Bool)

(assert (=> b!1216882 m!1391105))

(declare-fun m!1391107 () Bool)

(assert (=> b!1216882 m!1391107))

(declare-fun m!1391109 () Bool)

(assert (=> b!1216886 m!1391109))

(declare-fun m!1391111 () Bool)

(assert (=> b!1216880 m!1391111))

(declare-fun m!1391113 () Bool)

(assert (=> b!1216880 m!1391113))

(declare-fun m!1391115 () Bool)

(assert (=> b!1216872 m!1391115))

(declare-fun m!1391117 () Bool)

(assert (=> b!1216883 m!1391117))

(declare-fun m!1391119 () Bool)

(assert (=> b!1216879 m!1391119))

(declare-fun m!1391121 () Bool)

(assert (=> b!1216876 m!1391121))

(check-sat (not b!1216873) b_and!82705 (not b!1216880) (not b_next!29997) b_and!82707 (not b!1216887) (not b_next!29993) (not b!1216871) (not b_next!29995) (not b!1216867) b_and!82711 (not b!1216877) (not b!1216884) (not b!1216876) (not b!1216872) b_and!82709 tp_is_empty!6343 (not b!1216869) (not b!1216881) (not b_next!29999) (not b!1216879) (not b!1216868) (not b!1216886) (not b!1216875) (not b!1216882) (not b!1216883))
(check-sat b_and!82705 b_and!82709 (not b_next!29997) b_and!82707 (not b_next!29993) (not b_next!29999) (not b_next!29995) b_and!82711)
