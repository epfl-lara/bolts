; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!303458 () Bool)

(assert start!303458)

(declare-fun b!3228076 () Bool)

(declare-fun b_free!86129 () Bool)

(declare-fun b_next!86833 () Bool)

(assert (=> b!3228076 (= b_free!86129 (not b_next!86833))))

(declare-fun tp!1017251 () Bool)

(declare-fun b_and!216179 () Bool)

(assert (=> b!3228076 (= tp!1017251 b_and!216179)))

(declare-fun b_free!86131 () Bool)

(declare-fun b_next!86835 () Bool)

(assert (=> b!3228076 (= b_free!86131 (not b_next!86835))))

(declare-fun tp!1017253 () Bool)

(declare-fun b_and!216181 () Bool)

(assert (=> b!3228076 (= tp!1017253 b_and!216181)))

(declare-fun b!3228072 () Bool)

(declare-fun b_free!86133 () Bool)

(declare-fun b_next!86837 () Bool)

(assert (=> b!3228072 (= b_free!86133 (not b_next!86837))))

(declare-fun tp!1017254 () Bool)

(declare-fun b_and!216183 () Bool)

(assert (=> b!3228072 (= tp!1017254 b_and!216183)))

(declare-fun b_free!86135 () Bool)

(declare-fun b_next!86839 () Bool)

(assert (=> b!3228072 (= b_free!86135 (not b_next!86839))))

(declare-fun tp!1017256 () Bool)

(declare-fun b_and!216185 () Bool)

(assert (=> b!3228072 (= tp!1017256 b_and!216185)))

(declare-fun b!3228087 () Bool)

(declare-fun b_free!86137 () Bool)

(declare-fun b_next!86841 () Bool)

(assert (=> b!3228087 (= b_free!86137 (not b_next!86841))))

(declare-fun tp!1017257 () Bool)

(declare-fun b_and!216187 () Bool)

(assert (=> b!3228087 (= tp!1017257 b_and!216187)))

(declare-fun b_free!86139 () Bool)

(declare-fun b_next!86843 () Bool)

(assert (=> b!3228087 (= b_free!86139 (not b_next!86843))))

(declare-fun tp!1017252 () Bool)

(declare-fun b_and!216189 () Bool)

(assert (=> b!3228087 (= tp!1017252 b_and!216189)))

(declare-fun b!3228071 () Bool)

(declare-fun res!1314641 () Bool)

(declare-fun e!2013389 () Bool)

(assert (=> b!3228071 (=> (not res!1314641) (not e!2013389))))

(declare-datatypes ((LexerInterface!4855 0))(
  ( (LexerInterfaceExt!4852 (__x!23209 Int)) (Lexer!4853) )
))
(declare-fun thiss!18206 () LexerInterface!4855)

(declare-datatypes ((C!20236 0))(
  ( (C!20237 (val!12166 Int)) )
))
(declare-datatypes ((Regex!10025 0))(
  ( (ElementMatch!10025 (c!542432 C!20236)) (Concat!15521 (regOne!20562 Regex!10025) (regTwo!20562 Regex!10025)) (EmptyExpr!10025) (Star!10025 (reg!10354 Regex!10025)) (EmptyLang!10025) (Union!10025 (regOne!20563 Regex!10025) (regTwo!20563 Regex!10025)) )
))
(declare-datatypes ((List!36484 0))(
  ( (Nil!36360) (Cons!36360 (h!41780 (_ BitVec 16)) (t!241329 List!36484)) )
))
(declare-datatypes ((TokenValue!5496 0))(
  ( (FloatLiteralValue!10992 (text!38917 List!36484)) (TokenValueExt!5495 (__x!23210 Int)) (Broken!27480 (value!170515 List!36484)) (Object!5619) (End!5496) (Def!5496) (Underscore!5496) (Match!5496) (Else!5496) (Error!5496) (Case!5496) (If!5496) (Extends!5496) (Abstract!5496) (Class!5496) (Val!5496) (DelimiterValue!10992 (del!5556 List!36484)) (KeywordValue!5502 (value!170516 List!36484)) (CommentValue!10992 (value!170517 List!36484)) (WhitespaceValue!10992 (value!170518 List!36484)) (IndentationValue!5496 (value!170519 List!36484)) (String!40813) (Int32!5496) (Broken!27481 (value!170520 List!36484)) (Boolean!5497) (Unit!50945) (OperatorValue!5499 (op!5556 List!36484)) (IdentifierValue!10992 (value!170521 List!36484)) (IdentifierValue!10993 (value!170522 List!36484)) (WhitespaceValue!10993 (value!170523 List!36484)) (True!10992) (False!10992) (Broken!27482 (value!170524 List!36484)) (Broken!27483 (value!170525 List!36484)) (True!10993) (RightBrace!5496) (RightBracket!5496) (Colon!5496) (Null!5496) (Comma!5496) (LeftBracket!5496) (False!10993) (LeftBrace!5496) (ImaginaryLiteralValue!5496 (text!38918 List!36484)) (StringLiteralValue!16488 (value!170526 List!36484)) (EOFValue!5496 (value!170527 List!36484)) (IdentValue!5496 (value!170528 List!36484)) (DelimiterValue!10993 (value!170529 List!36484)) (DedentValue!5496 (value!170530 List!36484)) (NewLineValue!5496 (value!170531 List!36484)) (IntegerValue!16488 (value!170532 (_ BitVec 32)) (text!38919 List!36484)) (IntegerValue!16489 (value!170533 Int) (text!38920 List!36484)) (Times!5496) (Or!5496) (Equal!5496) (Minus!5496) (Broken!27484 (value!170534 List!36484)) (And!5496) (Div!5496) (LessEqual!5496) (Mod!5496) (Concat!15522) (Not!5496) (Plus!5496) (SpaceValue!5496 (value!170535 List!36484)) (IntegerValue!16490 (value!170536 Int) (text!38921 List!36484)) (StringLiteralValue!16489 (text!38922 List!36484)) (FloatLiteralValue!10993 (text!38923 List!36484)) (BytesLiteralValue!5496 (value!170537 List!36484)) (CommentValue!10993 (value!170538 List!36484)) (StringLiteralValue!16490 (value!170539 List!36484)) (ErrorTokenValue!5496 (msg!5557 List!36484)) )
))
(declare-datatypes ((List!36485 0))(
  ( (Nil!36361) (Cons!36361 (h!41781 C!20236) (t!241330 List!36485)) )
))
(declare-datatypes ((IArray!21819 0))(
  ( (IArray!21820 (innerList!10967 List!36485)) )
))
(declare-datatypes ((Conc!10907 0))(
  ( (Node!10907 (left!28314 Conc!10907) (right!28644 Conc!10907) (csize!22044 Int) (cheight!11118 Int)) (Leaf!17151 (xs!14025 IArray!21819) (csize!22045 Int)) (Empty!10907) )
))
(declare-datatypes ((BalanceConc!21428 0))(
  ( (BalanceConc!21429 (c!542433 Conc!10907)) )
))
(declare-datatypes ((String!40814 0))(
  ( (String!40815 (value!170540 String)) )
))
(declare-datatypes ((TokenValueInjection!10420 0))(
  ( (TokenValueInjection!10421 (toValue!7374 Int) (toChars!7233 Int)) )
))
(declare-datatypes ((Rule!10332 0))(
  ( (Rule!10333 (regex!5266 Regex!10025) (tag!5798 String!40814) (isSeparator!5266 Bool) (transformation!5266 TokenValueInjection!10420)) )
))
(declare-datatypes ((List!36486 0))(
  ( (Nil!36362) (Cons!36362 (h!41782 Rule!10332) (t!241331 List!36486)) )
))
(declare-fun rules!2135 () List!36486)

(declare-fun rulesInvariant!4252 (LexerInterface!4855 List!36486) Bool)

(assert (=> b!3228071 (= res!1314641 (rulesInvariant!4252 thiss!18206 rules!2135))))

(declare-fun e!2013392 () Bool)

(assert (=> b!3228072 (= e!2013392 (and tp!1017254 tp!1017256))))

(declare-fun b!3228073 () Bool)

(declare-fun res!1314644 () Bool)

(declare-fun e!2013384 () Bool)

(assert (=> b!3228073 (=> res!1314644 e!2013384)))

(declare-fun lt!1095073 () List!36485)

(declare-datatypes ((Token!9898 0))(
  ( (Token!9899 (value!170541 TokenValue!5496) (rule!7724 Rule!10332) (size!27425 Int) (originalCharacters!5980 List!36485)) )
))
(declare-datatypes ((List!36487 0))(
  ( (Nil!36363) (Cons!36363 (h!41783 Token!9898) (t!241332 List!36487)) )
))
(declare-datatypes ((IArray!21821 0))(
  ( (IArray!21822 (innerList!10968 List!36487)) )
))
(declare-datatypes ((Conc!10908 0))(
  ( (Node!10908 (left!28315 Conc!10908) (right!28645 Conc!10908) (csize!22046 Int) (cheight!11119 Int)) (Leaf!17152 (xs!14026 IArray!21821) (csize!22047 Int)) (Empty!10908) )
))
(declare-datatypes ((BalanceConc!21430 0))(
  ( (BalanceConc!21431 (c!542434 Conc!10908)) )
))
(declare-fun isEmpty!20446 (BalanceConc!21430) Bool)

(declare-datatypes ((tuple2!35788 0))(
  ( (tuple2!35789 (_1!21028 BalanceConc!21430) (_2!21028 BalanceConc!21428)) )
))
(declare-fun lex!2183 (LexerInterface!4855 List!36486 BalanceConc!21428) tuple2!35788)

(declare-fun seqFromList!3595 (List!36485) BalanceConc!21428)

(assert (=> b!3228073 (= res!1314644 (isEmpty!20446 (_1!21028 (lex!2183 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073)))))))

(declare-fun b!3228074 () Bool)

(declare-fun e!2013391 () Bool)

(declare-fun e!2013390 () Bool)

(assert (=> b!3228074 (= e!2013391 (not e!2013390))))

(declare-fun res!1314640 () Bool)

(assert (=> b!3228074 (=> res!1314640 e!2013390)))

(declare-fun lt!1095072 () List!36485)

(declare-fun lt!1095074 () List!36485)

(assert (=> b!3228074 (= res!1314640 (not (= lt!1095072 lt!1095074)))))

(declare-fun tokens!494 () List!36487)

(declare-fun printList!1405 (LexerInterface!4855 List!36487) List!36485)

(assert (=> b!3228074 (= lt!1095074 (printList!1405 thiss!18206 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))

(declare-fun lt!1095070 () BalanceConc!21428)

(declare-fun list!12975 (BalanceConc!21428) List!36485)

(assert (=> b!3228074 (= lt!1095072 (list!12975 lt!1095070))))

(declare-fun lt!1095069 () BalanceConc!21430)

(declare-fun printTailRec!1352 (LexerInterface!4855 BalanceConc!21430 Int BalanceConc!21428) BalanceConc!21428)

(assert (=> b!3228074 (= lt!1095070 (printTailRec!1352 thiss!18206 lt!1095069 0 (BalanceConc!21429 Empty!10907)))))

(declare-fun print!1920 (LexerInterface!4855 BalanceConc!21430) BalanceConc!21428)

(assert (=> b!3228074 (= lt!1095070 (print!1920 thiss!18206 lt!1095069))))

(declare-fun singletonSeq!2362 (Token!9898) BalanceConc!21430)

(assert (=> b!3228074 (= lt!1095069 (singletonSeq!2362 (h!41783 tokens!494)))))

(declare-fun b!3228075 () Bool)

(declare-fun res!1314638 () Bool)

(assert (=> b!3228075 (=> (not res!1314638) (not e!2013391))))

(declare-fun separatorToken!241 () Token!9898)

(assert (=> b!3228075 (= res!1314638 (isSeparator!5266 (rule!7724 separatorToken!241)))))

(declare-fun b!3228077 () Bool)

(declare-fun res!1314636 () Bool)

(assert (=> b!3228077 (=> (not res!1314636) (not e!2013391))))

(declare-fun sepAndNonSepRulesDisjointChars!1460 (List!36486 List!36486) Bool)

(assert (=> b!3228077 (= res!1314636 (sepAndNonSepRulesDisjointChars!1460 rules!2135 rules!2135))))

(declare-fun b!3228078 () Bool)

(declare-fun res!1314645 () Bool)

(assert (=> b!3228078 (=> (not res!1314645) (not e!2013391))))

(declare-fun lambda!118207 () Int)

(declare-fun forall!7470 (List!36487 Int) Bool)

(assert (=> b!3228078 (= res!1314645 (forall!7470 tokens!494 lambda!118207))))

(declare-fun b!3228079 () Bool)

(declare-fun res!1314643 () Bool)

(assert (=> b!3228079 (=> res!1314643 e!2013384)))

(declare-fun rulesProduceIndividualToken!2347 (LexerInterface!4855 List!36486 Token!9898) Bool)

(assert (=> b!3228079 (= res!1314643 (not (rulesProduceIndividualToken!2347 thiss!18206 rules!2135 (h!41783 tokens!494))))))

(declare-fun tp!1017260 () Bool)

(declare-fun b!3228080 () Bool)

(declare-fun e!2013398 () Bool)

(declare-fun e!2013393 () Bool)

(declare-fun inv!49246 (String!40814) Bool)

(declare-fun inv!49249 (TokenValueInjection!10420) Bool)

(assert (=> b!3228080 (= e!2013398 (and tp!1017260 (inv!49246 (tag!5798 (rule!7724 separatorToken!241))) (inv!49249 (transformation!5266 (rule!7724 separatorToken!241))) e!2013393))))

(declare-fun b!3228081 () Bool)

(declare-fun e!2013381 () Bool)

(assert (=> b!3228081 (= e!2013384 e!2013381)))

(declare-fun res!1314646 () Bool)

(assert (=> b!3228081 (=> res!1314646 e!2013381)))

(assert (=> b!3228081 (= res!1314646 (isSeparator!5266 (rule!7724 (h!41783 tokens!494))))))

(declare-datatypes ((Unit!50946 0))(
  ( (Unit!50947) )
))
(declare-fun lt!1095071 () Unit!50946)

(declare-fun forallContained!1227 (List!36487 Int Token!9898) Unit!50946)

(assert (=> b!3228081 (= lt!1095071 (forallContained!1227 tokens!494 lambda!118207 (h!41783 tokens!494)))))

(declare-fun e!2013395 () Bool)

(declare-fun e!2013382 () Bool)

(declare-fun b!3228082 () Bool)

(declare-fun tp!1017248 () Bool)

(declare-fun inv!49250 (Token!9898) Bool)

(assert (=> b!3228082 (= e!2013395 (and (inv!49250 (h!41783 tokens!494)) e!2013382 tp!1017248))))

(declare-fun b!3228083 () Bool)

(assert (=> b!3228083 (= e!2013390 e!2013384)))

(declare-fun res!1314639 () Bool)

(assert (=> b!3228083 (=> res!1314639 e!2013384)))

(assert (=> b!3228083 (= res!1314639 (or (not (= lt!1095074 lt!1095073)) (not (= lt!1095072 lt!1095073))))))

(declare-fun charsOf!3282 (Token!9898) BalanceConc!21428)

(assert (=> b!3228083 (= lt!1095073 (list!12975 (charsOf!3282 (h!41783 tokens!494))))))

(declare-fun b!3228084 () Bool)

(declare-fun lt!1095068 () BalanceConc!21430)

(declare-fun printWithSeparatorToken!72 (LexerInterface!4855 BalanceConc!21430 Token!9898) BalanceConc!21428)

(declare-fun ++!8756 (List!36485 List!36485) List!36485)

(assert (=> b!3228084 (= e!2013381 (= (list!12975 (printWithSeparatorToken!72 thiss!18206 lt!1095068 separatorToken!241)) (++!8756 lt!1095073 (list!12975 (charsOf!3282 separatorToken!241)))))))

(declare-fun e!2013396 () Bool)

(declare-fun b!3228085 () Bool)

(declare-fun tp!1017258 () Bool)

(declare-fun inv!21 (TokenValue!5496) Bool)

(assert (=> b!3228085 (= e!2013382 (and (inv!21 (value!170541 (h!41783 tokens!494))) e!2013396 tp!1017258))))

(declare-fun b!3228086 () Bool)

(assert (=> b!3228086 (= e!2013389 e!2013391)))

(declare-fun res!1314637 () Bool)

(assert (=> b!3228086 (=> (not res!1314637) (not e!2013391))))

(declare-fun rulesProduceEachTokenIndividually!1306 (LexerInterface!4855 List!36486 BalanceConc!21430) Bool)

(assert (=> b!3228086 (= res!1314637 (rulesProduceEachTokenIndividually!1306 thiss!18206 rules!2135 lt!1095068))))

(declare-fun seqFromList!3596 (List!36487) BalanceConc!21430)

(assert (=> b!3228086 (= lt!1095068 (seqFromList!3596 tokens!494))))

(assert (=> b!3228087 (= e!2013393 (and tp!1017257 tp!1017252))))

(declare-fun b!3228088 () Bool)

(declare-fun res!1314648 () Bool)

(assert (=> b!3228088 (=> (not res!1314648) (not e!2013391))))

(get-info :version)

(assert (=> b!3228088 (= res!1314648 (and (not ((_ is Nil!36363) tokens!494)) ((_ is Nil!36363) (t!241332 tokens!494))))))

(declare-fun e!2013397 () Bool)

(assert (=> b!3228076 (= e!2013397 (and tp!1017251 tp!1017253))))

(declare-fun res!1314642 () Bool)

(assert (=> start!303458 (=> (not res!1314642) (not e!2013389))))

(assert (=> start!303458 (= res!1314642 ((_ is Lexer!4853) thiss!18206))))

(assert (=> start!303458 e!2013389))

(assert (=> start!303458 true))

(declare-fun e!2013399 () Bool)

(assert (=> start!303458 e!2013399))

(declare-fun e!2013385 () Bool)

(assert (=> start!303458 (and (inv!49250 separatorToken!241) e!2013385)))

(assert (=> start!303458 e!2013395))

(declare-fun b!3228089 () Bool)

(declare-fun res!1314647 () Bool)

(assert (=> b!3228089 (=> (not res!1314647) (not e!2013389))))

(declare-fun isEmpty!20447 (List!36486) Bool)

(assert (=> b!3228089 (= res!1314647 (not (isEmpty!20447 rules!2135)))))

(declare-fun e!2013394 () Bool)

(declare-fun tp!1017250 () Bool)

(declare-fun b!3228090 () Bool)

(assert (=> b!3228090 (= e!2013394 (and tp!1017250 (inv!49246 (tag!5798 (h!41782 rules!2135))) (inv!49249 (transformation!5266 (h!41782 rules!2135))) e!2013392))))

(declare-fun b!3228091 () Bool)

(declare-fun tp!1017259 () Bool)

(assert (=> b!3228091 (= e!2013399 (and e!2013394 tp!1017259))))

(declare-fun b!3228092 () Bool)

(declare-fun tp!1017255 () Bool)

(assert (=> b!3228092 (= e!2013385 (and (inv!21 (value!170541 separatorToken!241)) e!2013398 tp!1017255))))

(declare-fun b!3228093 () Bool)

(declare-fun tp!1017249 () Bool)

(assert (=> b!3228093 (= e!2013396 (and tp!1017249 (inv!49246 (tag!5798 (rule!7724 (h!41783 tokens!494)))) (inv!49249 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) e!2013397))))

(declare-fun b!3228094 () Bool)

(declare-fun res!1314649 () Bool)

(assert (=> b!3228094 (=> (not res!1314649) (not e!2013391))))

(assert (=> b!3228094 (= res!1314649 (rulesProduceIndividualToken!2347 thiss!18206 rules!2135 separatorToken!241))))

(assert (= (and start!303458 res!1314642) b!3228089))

(assert (= (and b!3228089 res!1314647) b!3228071))

(assert (= (and b!3228071 res!1314641) b!3228086))

(assert (= (and b!3228086 res!1314637) b!3228094))

(assert (= (and b!3228094 res!1314649) b!3228075))

(assert (= (and b!3228075 res!1314638) b!3228078))

(assert (= (and b!3228078 res!1314645) b!3228077))

(assert (= (and b!3228077 res!1314636) b!3228088))

(assert (= (and b!3228088 res!1314648) b!3228074))

(assert (= (and b!3228074 (not res!1314640)) b!3228083))

(assert (= (and b!3228083 (not res!1314639)) b!3228079))

(assert (= (and b!3228079 (not res!1314643)) b!3228073))

(assert (= (and b!3228073 (not res!1314644)) b!3228081))

(assert (= (and b!3228081 (not res!1314646)) b!3228084))

(assert (= b!3228090 b!3228072))

(assert (= b!3228091 b!3228090))

(assert (= (and start!303458 ((_ is Cons!36362) rules!2135)) b!3228091))

(assert (= b!3228080 b!3228087))

(assert (= b!3228092 b!3228080))

(assert (= start!303458 b!3228092))

(assert (= b!3228093 b!3228076))

(assert (= b!3228085 b!3228093))

(assert (= b!3228082 b!3228085))

(assert (= (and start!303458 ((_ is Cons!36363) tokens!494)) b!3228082))

(declare-fun m!3507107 () Bool)

(assert (=> b!3228080 m!3507107))

(declare-fun m!3507109 () Bool)

(assert (=> b!3228080 m!3507109))

(declare-fun m!3507111 () Bool)

(assert (=> b!3228090 m!3507111))

(declare-fun m!3507113 () Bool)

(assert (=> b!3228090 m!3507113))

(declare-fun m!3507115 () Bool)

(assert (=> b!3228083 m!3507115))

(assert (=> b!3228083 m!3507115))

(declare-fun m!3507117 () Bool)

(assert (=> b!3228083 m!3507117))

(declare-fun m!3507119 () Bool)

(assert (=> b!3228082 m!3507119))

(declare-fun m!3507121 () Bool)

(assert (=> b!3228086 m!3507121))

(declare-fun m!3507123 () Bool)

(assert (=> b!3228086 m!3507123))

(declare-fun m!3507125 () Bool)

(assert (=> b!3228089 m!3507125))

(declare-fun m!3507127 () Bool)

(assert (=> b!3228085 m!3507127))

(declare-fun m!3507129 () Bool)

(assert (=> start!303458 m!3507129))

(declare-fun m!3507131 () Bool)

(assert (=> b!3228094 m!3507131))

(declare-fun m!3507133 () Bool)

(assert (=> b!3228078 m!3507133))

(declare-fun m!3507135 () Bool)

(assert (=> b!3228093 m!3507135))

(declare-fun m!3507137 () Bool)

(assert (=> b!3228093 m!3507137))

(declare-fun m!3507139 () Bool)

(assert (=> b!3228074 m!3507139))

(declare-fun m!3507141 () Bool)

(assert (=> b!3228074 m!3507141))

(declare-fun m!3507143 () Bool)

(assert (=> b!3228074 m!3507143))

(declare-fun m!3507145 () Bool)

(assert (=> b!3228074 m!3507145))

(declare-fun m!3507147 () Bool)

(assert (=> b!3228074 m!3507147))

(declare-fun m!3507149 () Bool)

(assert (=> b!3228084 m!3507149))

(declare-fun m!3507151 () Bool)

(assert (=> b!3228084 m!3507151))

(declare-fun m!3507153 () Bool)

(assert (=> b!3228084 m!3507153))

(declare-fun m!3507155 () Bool)

(assert (=> b!3228084 m!3507155))

(assert (=> b!3228084 m!3507153))

(assert (=> b!3228084 m!3507149))

(assert (=> b!3228084 m!3507155))

(declare-fun m!3507157 () Bool)

(assert (=> b!3228084 m!3507157))

(declare-fun m!3507159 () Bool)

(assert (=> b!3228079 m!3507159))

(declare-fun m!3507161 () Bool)

(assert (=> b!3228071 m!3507161))

(declare-fun m!3507163 () Bool)

(assert (=> b!3228092 m!3507163))

(declare-fun m!3507165 () Bool)

(assert (=> b!3228073 m!3507165))

(assert (=> b!3228073 m!3507165))

(declare-fun m!3507167 () Bool)

(assert (=> b!3228073 m!3507167))

(declare-fun m!3507169 () Bool)

(assert (=> b!3228073 m!3507169))

(declare-fun m!3507171 () Bool)

(assert (=> b!3228081 m!3507171))

(declare-fun m!3507173 () Bool)

(assert (=> b!3228077 m!3507173))

(check-sat (not b!3228073) (not b!3228090) b_and!216187 (not b_next!86843) (not b_next!86835) b_and!216183 (not b!3228091) (not b!3228093) (not b!3228079) (not b!3228080) (not b!3228094) b_and!216185 (not b!3228083) b_and!216179 b_and!216189 (not b_next!86839) (not b!3228077) (not b!3228074) (not b!3228082) (not b_next!86833) (not b_next!86837) (not b!3228089) b_and!216181 (not b!3228092) (not b!3228081) (not b!3228071) (not start!303458) (not b!3228084) (not b!3228086) (not b!3228085) (not b!3228078) (not b_next!86841))
(check-sat b_and!216187 (not b_next!86833) (not b_next!86843) (not b_next!86837) b_and!216181 (not b_next!86835) b_and!216183 b_and!216185 (not b_next!86841) b_and!216179 b_and!216189 (not b_next!86839))
(get-model)

(declare-fun b!3228111 () Bool)

(declare-fun e!2013413 () Bool)

(declare-fun inv!17 (TokenValue!5496) Bool)

(assert (=> b!3228111 (= e!2013413 (inv!17 (value!170541 (h!41783 tokens!494))))))

(declare-fun b!3228112 () Bool)

(declare-fun res!1314666 () Bool)

(declare-fun e!2013415 () Bool)

(assert (=> b!3228112 (=> res!1314666 e!2013415)))

(assert (=> b!3228112 (= res!1314666 (not ((_ is IntegerValue!16490) (value!170541 (h!41783 tokens!494)))))))

(assert (=> b!3228112 (= e!2013413 e!2013415)))

(declare-fun b!3228113 () Bool)

(declare-fun e!2013414 () Bool)

(assert (=> b!3228113 (= e!2013414 e!2013413)))

(declare-fun c!542439 () Bool)

(assert (=> b!3228113 (= c!542439 ((_ is IntegerValue!16489) (value!170541 (h!41783 tokens!494))))))

(declare-fun d!886392 () Bool)

(declare-fun c!542440 () Bool)

(assert (=> d!886392 (= c!542440 ((_ is IntegerValue!16488) (value!170541 (h!41783 tokens!494))))))

(assert (=> d!886392 (= (inv!21 (value!170541 (h!41783 tokens!494))) e!2013414)))

(declare-fun b!3228114 () Bool)

(declare-fun inv!16 (TokenValue!5496) Bool)

(assert (=> b!3228114 (= e!2013414 (inv!16 (value!170541 (h!41783 tokens!494))))))

(declare-fun b!3228115 () Bool)

(declare-fun inv!15 (TokenValue!5496) Bool)

(assert (=> b!3228115 (= e!2013415 (inv!15 (value!170541 (h!41783 tokens!494))))))

(assert (= (and d!886392 c!542440) b!3228114))

(assert (= (and d!886392 (not c!542440)) b!3228113))

(assert (= (and b!3228113 c!542439) b!3228111))

(assert (= (and b!3228113 (not c!542439)) b!3228112))

(assert (= (and b!3228112 (not res!1314666)) b!3228115))

(declare-fun m!3507185 () Bool)

(assert (=> b!3228111 m!3507185))

(declare-fun m!3507187 () Bool)

(assert (=> b!3228114 m!3507187))

(declare-fun m!3507189 () Bool)

(assert (=> b!3228115 m!3507189))

(assert (=> b!3228085 d!886392))

(declare-fun d!886400 () Bool)

(declare-fun lt!1095097 () BalanceConc!21428)

(declare-fun printListTailRec!576 (LexerInterface!4855 List!36487 List!36485) List!36485)

(declare-fun dropList!1093 (BalanceConc!21430 Int) List!36487)

(assert (=> d!886400 (= (list!12975 lt!1095097) (printListTailRec!576 thiss!18206 (dropList!1093 lt!1095069 0) (list!12975 (BalanceConc!21429 Empty!10907))))))

(declare-fun e!2013424 () BalanceConc!21428)

(assert (=> d!886400 (= lt!1095097 e!2013424)))

(declare-fun c!542443 () Bool)

(declare-fun size!27429 (BalanceConc!21430) Int)

(assert (=> d!886400 (= c!542443 (>= 0 (size!27429 lt!1095069)))))

(declare-fun e!2013423 () Bool)

(assert (=> d!886400 e!2013423))

(declare-fun res!1314672 () Bool)

(assert (=> d!886400 (=> (not res!1314672) (not e!2013423))))

(assert (=> d!886400 (= res!1314672 (>= 0 0))))

(assert (=> d!886400 (= (printTailRec!1352 thiss!18206 lt!1095069 0 (BalanceConc!21429 Empty!10907)) lt!1095097)))

(declare-fun b!3228125 () Bool)

(assert (=> b!3228125 (= e!2013423 (<= 0 (size!27429 lt!1095069)))))

(declare-fun b!3228126 () Bool)

(assert (=> b!3228126 (= e!2013424 (BalanceConc!21429 Empty!10907))))

(declare-fun b!3228127 () Bool)

(declare-fun ++!8757 (BalanceConc!21428 BalanceConc!21428) BalanceConc!21428)

(declare-fun apply!8300 (BalanceConc!21430 Int) Token!9898)

(assert (=> b!3228127 (= e!2013424 (printTailRec!1352 thiss!18206 lt!1095069 (+ 0 1) (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095069 0)))))))

(declare-fun lt!1095094 () List!36487)

(declare-fun list!12978 (BalanceConc!21430) List!36487)

(assert (=> b!3228127 (= lt!1095094 (list!12978 lt!1095069))))

(declare-fun lt!1095093 () Unit!50946)

(declare-fun lemmaDropApply!1052 (List!36487 Int) Unit!50946)

(assert (=> b!3228127 (= lt!1095093 (lemmaDropApply!1052 lt!1095094 0))))

(declare-fun head!7088 (List!36487) Token!9898)

(declare-fun drop!1876 (List!36487 Int) List!36487)

(declare-fun apply!8301 (List!36487 Int) Token!9898)

(assert (=> b!3228127 (= (head!7088 (drop!1876 lt!1095094 0)) (apply!8301 lt!1095094 0))))

(declare-fun lt!1095095 () Unit!50946)

(assert (=> b!3228127 (= lt!1095095 lt!1095093)))

(declare-fun lt!1095096 () List!36487)

(assert (=> b!3228127 (= lt!1095096 (list!12978 lt!1095069))))

(declare-fun lt!1095092 () Unit!50946)

(declare-fun lemmaDropTail!936 (List!36487 Int) Unit!50946)

(assert (=> b!3228127 (= lt!1095092 (lemmaDropTail!936 lt!1095096 0))))

(declare-fun tail!5232 (List!36487) List!36487)

(assert (=> b!3228127 (= (tail!5232 (drop!1876 lt!1095096 0)) (drop!1876 lt!1095096 (+ 0 1)))))

(declare-fun lt!1095098 () Unit!50946)

(assert (=> b!3228127 (= lt!1095098 lt!1095092)))

(assert (= (and d!886400 res!1314672) b!3228125))

(assert (= (and d!886400 c!542443) b!3228126))

(assert (= (and d!886400 (not c!542443)) b!3228127))

(declare-fun m!3507195 () Bool)

(assert (=> d!886400 m!3507195))

(declare-fun m!3507197 () Bool)

(assert (=> d!886400 m!3507197))

(assert (=> d!886400 m!3507197))

(declare-fun m!3507199 () Bool)

(assert (=> d!886400 m!3507199))

(declare-fun m!3507201 () Bool)

(assert (=> d!886400 m!3507201))

(declare-fun m!3507203 () Bool)

(assert (=> d!886400 m!3507203))

(assert (=> d!886400 m!3507199))

(assert (=> b!3228125 m!3507195))

(declare-fun m!3507205 () Bool)

(assert (=> b!3228127 m!3507205))

(declare-fun m!3507207 () Bool)

(assert (=> b!3228127 m!3507207))

(declare-fun m!3507209 () Bool)

(assert (=> b!3228127 m!3507209))

(declare-fun m!3507211 () Bool)

(assert (=> b!3228127 m!3507211))

(declare-fun m!3507213 () Bool)

(assert (=> b!3228127 m!3507213))

(declare-fun m!3507215 () Bool)

(assert (=> b!3228127 m!3507215))

(declare-fun m!3507217 () Bool)

(assert (=> b!3228127 m!3507217))

(declare-fun m!3507219 () Bool)

(assert (=> b!3228127 m!3507219))

(declare-fun m!3507221 () Bool)

(assert (=> b!3228127 m!3507221))

(declare-fun m!3507223 () Bool)

(assert (=> b!3228127 m!3507223))

(assert (=> b!3228127 m!3507215))

(declare-fun m!3507225 () Bool)

(assert (=> b!3228127 m!3507225))

(declare-fun m!3507227 () Bool)

(assert (=> b!3228127 m!3507227))

(assert (=> b!3228127 m!3507221))

(assert (=> b!3228127 m!3507207))

(assert (=> b!3228127 m!3507219))

(declare-fun m!3507229 () Bool)

(assert (=> b!3228127 m!3507229))

(assert (=> b!3228127 m!3507225))

(assert (=> b!3228074 d!886400))

(declare-fun d!886404 () Bool)

(declare-fun lt!1095105 () BalanceConc!21428)

(assert (=> d!886404 (= (list!12975 lt!1095105) (printList!1405 thiss!18206 (list!12978 lt!1095069)))))

(assert (=> d!886404 (= lt!1095105 (printTailRec!1352 thiss!18206 lt!1095069 0 (BalanceConc!21429 Empty!10907)))))

(assert (=> d!886404 (= (print!1920 thiss!18206 lt!1095069) lt!1095105)))

(declare-fun bs!543026 () Bool)

(assert (= bs!543026 d!886404))

(declare-fun m!3507231 () Bool)

(assert (=> bs!543026 m!3507231))

(assert (=> bs!543026 m!3507205))

(assert (=> bs!543026 m!3507205))

(declare-fun m!3507233 () Bool)

(assert (=> bs!543026 m!3507233))

(assert (=> bs!543026 m!3507143))

(assert (=> b!3228074 d!886404))

(declare-fun d!886406 () Bool)

(declare-fun list!12979 (Conc!10907) List!36485)

(assert (=> d!886406 (= (list!12975 lt!1095070) (list!12979 (c!542433 lt!1095070)))))

(declare-fun bs!543027 () Bool)

(assert (= bs!543027 d!886406))

(declare-fun m!3507269 () Bool)

(assert (=> bs!543027 m!3507269))

(assert (=> b!3228074 d!886406))

(declare-fun d!886412 () Bool)

(declare-fun e!2013435 () Bool)

(assert (=> d!886412 e!2013435))

(declare-fun res!1314687 () Bool)

(assert (=> d!886412 (=> (not res!1314687) (not e!2013435))))

(declare-fun lt!1095112 () BalanceConc!21430)

(assert (=> d!886412 (= res!1314687 (= (list!12978 lt!1095112) (Cons!36363 (h!41783 tokens!494) Nil!36363)))))

(declare-fun singleton!1009 (Token!9898) BalanceConc!21430)

(assert (=> d!886412 (= lt!1095112 (singleton!1009 (h!41783 tokens!494)))))

(assert (=> d!886412 (= (singletonSeq!2362 (h!41783 tokens!494)) lt!1095112)))

(declare-fun b!3228142 () Bool)

(declare-fun isBalanced!3244 (Conc!10908) Bool)

(assert (=> b!3228142 (= e!2013435 (isBalanced!3244 (c!542434 lt!1095112)))))

(assert (= (and d!886412 res!1314687) b!3228142))

(declare-fun m!3507271 () Bool)

(assert (=> d!886412 m!3507271))

(declare-fun m!3507273 () Bool)

(assert (=> d!886412 m!3507273))

(declare-fun m!3507275 () Bool)

(assert (=> b!3228142 m!3507275))

(assert (=> b!3228074 d!886412))

(declare-fun d!886414 () Bool)

(declare-fun c!542446 () Bool)

(assert (=> d!886414 (= c!542446 ((_ is Cons!36363) (Cons!36363 (h!41783 tokens!494) Nil!36363)))))

(declare-fun e!2013438 () List!36485)

(assert (=> d!886414 (= (printList!1405 thiss!18206 (Cons!36363 (h!41783 tokens!494) Nil!36363)) e!2013438)))

(declare-fun b!3228147 () Bool)

(assert (=> b!3228147 (= e!2013438 (++!8756 (list!12975 (charsOf!3282 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363)))) (printList!1405 thiss!18206 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))))

(declare-fun b!3228148 () Bool)

(assert (=> b!3228148 (= e!2013438 Nil!36361)))

(assert (= (and d!886414 c!542446) b!3228147))

(assert (= (and d!886414 (not c!542446)) b!3228148))

(declare-fun m!3507289 () Bool)

(assert (=> b!3228147 m!3507289))

(assert (=> b!3228147 m!3507289))

(declare-fun m!3507291 () Bool)

(assert (=> b!3228147 m!3507291))

(declare-fun m!3507293 () Bool)

(assert (=> b!3228147 m!3507293))

(assert (=> b!3228147 m!3507291))

(assert (=> b!3228147 m!3507293))

(declare-fun m!3507295 () Bool)

(assert (=> b!3228147 m!3507295))

(assert (=> b!3228074 d!886414))

(declare-fun bs!543034 () Bool)

(declare-fun d!886422 () Bool)

(assert (= bs!543034 (and d!886422 b!3228078)))

(declare-fun lambda!118217 () Int)

(assert (=> bs!543034 (not (= lambda!118217 lambda!118207))))

(declare-fun b!3228227 () Bool)

(declare-fun e!2013492 () Bool)

(assert (=> b!3228227 (= e!2013492 true)))

(declare-fun b!3228226 () Bool)

(declare-fun e!2013491 () Bool)

(assert (=> b!3228226 (= e!2013491 e!2013492)))

(declare-fun b!3228225 () Bool)

(declare-fun e!2013490 () Bool)

(assert (=> b!3228225 (= e!2013490 e!2013491)))

(assert (=> d!886422 e!2013490))

(assert (= b!3228226 b!3228227))

(assert (= b!3228225 b!3228226))

(assert (= (and d!886422 ((_ is Cons!36362) rules!2135)) b!3228225))

(declare-fun order!18761 () Int)

(declare-fun order!18763 () Int)

(declare-fun dynLambda!14791 (Int Int) Int)

(declare-fun dynLambda!14792 (Int Int) Int)

(assert (=> b!3228227 (< (dynLambda!14791 order!18761 (toValue!7374 (transformation!5266 (h!41782 rules!2135)))) (dynLambda!14792 order!18763 lambda!118217))))

(declare-fun order!18765 () Int)

(declare-fun dynLambda!14793 (Int Int) Int)

(assert (=> b!3228227 (< (dynLambda!14793 order!18765 (toChars!7233 (transformation!5266 (h!41782 rules!2135)))) (dynLambda!14792 order!18763 lambda!118217))))

(assert (=> d!886422 true))

(declare-fun e!2013483 () Bool)

(assert (=> d!886422 e!2013483))

(declare-fun res!1314715 () Bool)

(assert (=> d!886422 (=> (not res!1314715) (not e!2013483))))

(declare-fun lt!1095130 () Bool)

(assert (=> d!886422 (= res!1314715 (= lt!1095130 (forall!7470 (list!12978 lt!1095068) lambda!118217)))))

(declare-fun forall!7472 (BalanceConc!21430 Int) Bool)

(assert (=> d!886422 (= lt!1095130 (forall!7472 lt!1095068 lambda!118217))))

(assert (=> d!886422 (not (isEmpty!20447 rules!2135))))

(assert (=> d!886422 (= (rulesProduceEachTokenIndividually!1306 thiss!18206 rules!2135 lt!1095068) lt!1095130)))

(declare-fun b!3228216 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1743 (LexerInterface!4855 List!36486 List!36487) Bool)

(assert (=> b!3228216 (= e!2013483 (= lt!1095130 (rulesProduceEachTokenIndividuallyList!1743 thiss!18206 rules!2135 (list!12978 lt!1095068))))))

(assert (= (and d!886422 res!1314715) b!3228216))

(declare-fun m!3507355 () Bool)

(assert (=> d!886422 m!3507355))

(assert (=> d!886422 m!3507355))

(declare-fun m!3507357 () Bool)

(assert (=> d!886422 m!3507357))

(declare-fun m!3507359 () Bool)

(assert (=> d!886422 m!3507359))

(assert (=> d!886422 m!3507125))

(assert (=> b!3228216 m!3507355))

(assert (=> b!3228216 m!3507355))

(declare-fun m!3507361 () Bool)

(assert (=> b!3228216 m!3507361))

(assert (=> b!3228086 d!886422))

(declare-fun d!886442 () Bool)

(declare-fun fromListB!1567 (List!36487) BalanceConc!21430)

(assert (=> d!886442 (= (seqFromList!3596 tokens!494) (fromListB!1567 tokens!494))))

(declare-fun bs!543035 () Bool)

(assert (= bs!543035 d!886442))

(declare-fun m!3507363 () Bool)

(assert (=> bs!543035 m!3507363))

(assert (=> b!3228086 d!886442))

(declare-fun d!886444 () Bool)

(assert (=> d!886444 (= (inv!49246 (tag!5798 (rule!7724 (h!41783 tokens!494)))) (= (mod (str.len (value!170540 (tag!5798 (rule!7724 (h!41783 tokens!494))))) 2) 0))))

(assert (=> b!3228093 d!886444))

(declare-fun d!886446 () Bool)

(declare-fun res!1314718 () Bool)

(declare-fun e!2013495 () Bool)

(assert (=> d!886446 (=> (not res!1314718) (not e!2013495))))

(declare-fun semiInverseModEq!2171 (Int Int) Bool)

(assert (=> d!886446 (= res!1314718 (semiInverseModEq!2171 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (toValue!7374 (transformation!5266 (rule!7724 (h!41783 tokens!494))))))))

(assert (=> d!886446 (= (inv!49249 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) e!2013495)))

(declare-fun b!3228232 () Bool)

(declare-fun equivClasses!2070 (Int Int) Bool)

(assert (=> b!3228232 (= e!2013495 (equivClasses!2070 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (toValue!7374 (transformation!5266 (rule!7724 (h!41783 tokens!494))))))))

(assert (= (and d!886446 res!1314718) b!3228232))

(declare-fun m!3507365 () Bool)

(assert (=> d!886446 m!3507365))

(declare-fun m!3507367 () Bool)

(assert (=> b!3228232 m!3507367))

(assert (=> b!3228093 d!886446))

(declare-fun d!886448 () Bool)

(declare-fun res!1314721 () Bool)

(declare-fun e!2013498 () Bool)

(assert (=> d!886448 (=> (not res!1314721) (not e!2013498))))

(declare-fun rulesValid!1931 (LexerInterface!4855 List!36486) Bool)

(assert (=> d!886448 (= res!1314721 (rulesValid!1931 thiss!18206 rules!2135))))

(assert (=> d!886448 (= (rulesInvariant!4252 thiss!18206 rules!2135) e!2013498)))

(declare-fun b!3228235 () Bool)

(declare-datatypes ((List!36489 0))(
  ( (Nil!36365) (Cons!36365 (h!41785 String!40814) (t!241386 List!36489)) )
))
(declare-fun noDuplicateTag!1927 (LexerInterface!4855 List!36486 List!36489) Bool)

(assert (=> b!3228235 (= e!2013498 (noDuplicateTag!1927 thiss!18206 rules!2135 Nil!36365))))

(assert (= (and d!886448 res!1314721) b!3228235))

(declare-fun m!3507369 () Bool)

(assert (=> d!886448 m!3507369))

(declare-fun m!3507371 () Bool)

(assert (=> b!3228235 m!3507371))

(assert (=> b!3228071 d!886448))

(declare-fun d!886450 () Bool)

(declare-fun res!1314726 () Bool)

(declare-fun e!2013501 () Bool)

(assert (=> d!886450 (=> (not res!1314726) (not e!2013501))))

(declare-fun isEmpty!20452 (List!36485) Bool)

(assert (=> d!886450 (= res!1314726 (not (isEmpty!20452 (originalCharacters!5980 (h!41783 tokens!494)))))))

(assert (=> d!886450 (= (inv!49250 (h!41783 tokens!494)) e!2013501)))

(declare-fun b!3228240 () Bool)

(declare-fun res!1314727 () Bool)

(assert (=> b!3228240 (=> (not res!1314727) (not e!2013501))))

(declare-fun dynLambda!14794 (Int TokenValue!5496) BalanceConc!21428)

(assert (=> b!3228240 (= res!1314727 (= (originalCharacters!5980 (h!41783 tokens!494)) (list!12975 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))))))

(declare-fun b!3228241 () Bool)

(declare-fun size!27430 (List!36485) Int)

(assert (=> b!3228241 (= e!2013501 (= (size!27425 (h!41783 tokens!494)) (size!27430 (originalCharacters!5980 (h!41783 tokens!494)))))))

(assert (= (and d!886450 res!1314726) b!3228240))

(assert (= (and b!3228240 res!1314727) b!3228241))

(declare-fun b_lambda!88881 () Bool)

(assert (=> (not b_lambda!88881) (not b!3228240)))

(declare-fun t!241350 () Bool)

(declare-fun tb!159841 () Bool)

(assert (=> (and b!3228076 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494))))) t!241350) tb!159841))

(declare-fun b!3228246 () Bool)

(declare-fun e!2013504 () Bool)

(declare-fun tp!1017266 () Bool)

(declare-fun inv!49253 (Conc!10907) Bool)

(assert (=> b!3228246 (= e!2013504 (and (inv!49253 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))) tp!1017266))))

(declare-fun result!202380 () Bool)

(declare-fun inv!49254 (BalanceConc!21428) Bool)

(assert (=> tb!159841 (= result!202380 (and (inv!49254 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494)))) e!2013504))))

(assert (= tb!159841 b!3228246))

(declare-fun m!3507373 () Bool)

(assert (=> b!3228246 m!3507373))

(declare-fun m!3507375 () Bool)

(assert (=> tb!159841 m!3507375))

(assert (=> b!3228240 t!241350))

(declare-fun b_and!216203 () Bool)

(assert (= b_and!216181 (and (=> t!241350 result!202380) b_and!216203)))

(declare-fun tb!159843 () Bool)

(declare-fun t!241352 () Bool)

(assert (=> (and b!3228072 (= (toChars!7233 (transformation!5266 (h!41782 rules!2135))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494))))) t!241352) tb!159843))

(declare-fun result!202384 () Bool)

(assert (= result!202384 result!202380))

(assert (=> b!3228240 t!241352))

(declare-fun b_and!216205 () Bool)

(assert (= b_and!216185 (and (=> t!241352 result!202384) b_and!216205)))

(declare-fun t!241354 () Bool)

(declare-fun tb!159845 () Bool)

(assert (=> (and b!3228087 (= (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494))))) t!241354) tb!159845))

(declare-fun result!202386 () Bool)

(assert (= result!202386 result!202380))

(assert (=> b!3228240 t!241354))

(declare-fun b_and!216207 () Bool)

(assert (= b_and!216189 (and (=> t!241354 result!202386) b_and!216207)))

(declare-fun m!3507377 () Bool)

(assert (=> d!886450 m!3507377))

(declare-fun m!3507379 () Bool)

(assert (=> b!3228240 m!3507379))

(assert (=> b!3228240 m!3507379))

(declare-fun m!3507381 () Bool)

(assert (=> b!3228240 m!3507381))

(declare-fun m!3507383 () Bool)

(assert (=> b!3228241 m!3507383))

(assert (=> b!3228082 d!886450))

(declare-fun lt!1095133 () Bool)

(declare-fun d!886452 () Bool)

(declare-fun isEmpty!20453 (List!36487) Bool)

(assert (=> d!886452 (= lt!1095133 (isEmpty!20453 (list!12978 (_1!21028 (lex!2183 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073))))))))

(declare-fun isEmpty!20454 (Conc!10908) Bool)

(assert (=> d!886452 (= lt!1095133 (isEmpty!20454 (c!542434 (_1!21028 (lex!2183 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073))))))))

(assert (=> d!886452 (= (isEmpty!20446 (_1!21028 (lex!2183 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073)))) lt!1095133)))

(declare-fun bs!543036 () Bool)

(assert (= bs!543036 d!886452))

(declare-fun m!3507385 () Bool)

(assert (=> bs!543036 m!3507385))

(assert (=> bs!543036 m!3507385))

(declare-fun m!3507387 () Bool)

(assert (=> bs!543036 m!3507387))

(declare-fun m!3507389 () Bool)

(assert (=> bs!543036 m!3507389))

(assert (=> b!3228073 d!886452))

(declare-fun d!886454 () Bool)

(declare-fun e!2013532 () Bool)

(assert (=> d!886454 e!2013532))

(declare-fun res!1314753 () Bool)

(assert (=> d!886454 (=> (not res!1314753) (not e!2013532))))

(declare-fun e!2013531 () Bool)

(assert (=> d!886454 (= res!1314753 e!2013531)))

(declare-fun c!542463 () Bool)

(declare-fun lt!1095143 () tuple2!35788)

(assert (=> d!886454 (= c!542463 (> (size!27429 (_1!21028 lt!1095143)) 0))))

(declare-fun lexTailRecV2!947 (LexerInterface!4855 List!36486 BalanceConc!21428 BalanceConc!21428 BalanceConc!21428 BalanceConc!21430) tuple2!35788)

(assert (=> d!886454 (= lt!1095143 (lexTailRecV2!947 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073) (BalanceConc!21429 Empty!10907) (seqFromList!3595 lt!1095073) (BalanceConc!21431 Empty!10908)))))

(assert (=> d!886454 (= (lex!2183 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073)) lt!1095143)))

(declare-fun b!3228283 () Bool)

(declare-datatypes ((tuple2!35792 0))(
  ( (tuple2!35793 (_1!21030 List!36487) (_2!21030 List!36485)) )
))
(declare-fun lexList!1335 (LexerInterface!4855 List!36486 List!36485) tuple2!35792)

(assert (=> b!3228283 (= e!2013532 (= (list!12975 (_2!21028 lt!1095143)) (_2!21030 (lexList!1335 thiss!18206 rules!2135 (list!12975 (seqFromList!3595 lt!1095073))))))))

(declare-fun b!3228284 () Bool)

(declare-fun e!2013530 () Bool)

(assert (=> b!3228284 (= e!2013531 e!2013530)))

(declare-fun res!1314755 () Bool)

(declare-fun size!27431 (BalanceConc!21428) Int)

(assert (=> b!3228284 (= res!1314755 (< (size!27431 (_2!21028 lt!1095143)) (size!27431 (seqFromList!3595 lt!1095073))))))

(assert (=> b!3228284 (=> (not res!1314755) (not e!2013530))))

(declare-fun b!3228285 () Bool)

(declare-fun res!1314754 () Bool)

(assert (=> b!3228285 (=> (not res!1314754) (not e!2013532))))

(assert (=> b!3228285 (= res!1314754 (= (list!12978 (_1!21028 lt!1095143)) (_1!21030 (lexList!1335 thiss!18206 rules!2135 (list!12975 (seqFromList!3595 lt!1095073))))))))

(declare-fun b!3228286 () Bool)

(assert (=> b!3228286 (= e!2013531 (= (_2!21028 lt!1095143) (seqFromList!3595 lt!1095073)))))

(declare-fun b!3228287 () Bool)

(assert (=> b!3228287 (= e!2013530 (not (isEmpty!20446 (_1!21028 lt!1095143))))))

(assert (= (and d!886454 c!542463) b!3228284))

(assert (= (and d!886454 (not c!542463)) b!3228286))

(assert (= (and b!3228284 res!1314755) b!3228287))

(assert (= (and d!886454 res!1314753) b!3228285))

(assert (= (and b!3228285 res!1314754) b!3228283))

(declare-fun m!3507445 () Bool)

(assert (=> d!886454 m!3507445))

(assert (=> d!886454 m!3507165))

(assert (=> d!886454 m!3507165))

(declare-fun m!3507447 () Bool)

(assert (=> d!886454 m!3507447))

(declare-fun m!3507449 () Bool)

(assert (=> b!3228287 m!3507449))

(declare-fun m!3507451 () Bool)

(assert (=> b!3228284 m!3507451))

(assert (=> b!3228284 m!3507165))

(declare-fun m!3507453 () Bool)

(assert (=> b!3228284 m!3507453))

(declare-fun m!3507455 () Bool)

(assert (=> b!3228283 m!3507455))

(assert (=> b!3228283 m!3507165))

(declare-fun m!3507457 () Bool)

(assert (=> b!3228283 m!3507457))

(assert (=> b!3228283 m!3507457))

(declare-fun m!3507459 () Bool)

(assert (=> b!3228283 m!3507459))

(declare-fun m!3507461 () Bool)

(assert (=> b!3228285 m!3507461))

(assert (=> b!3228285 m!3507165))

(assert (=> b!3228285 m!3507457))

(assert (=> b!3228285 m!3507457))

(assert (=> b!3228285 m!3507459))

(assert (=> b!3228073 d!886454))

(declare-fun d!886482 () Bool)

(declare-fun fromListB!1568 (List!36485) BalanceConc!21428)

(assert (=> d!886482 (= (seqFromList!3595 lt!1095073) (fromListB!1568 lt!1095073))))

(declare-fun bs!543041 () Bool)

(assert (= bs!543041 d!886482))

(declare-fun m!3507463 () Bool)

(assert (=> bs!543041 m!3507463))

(assert (=> b!3228073 d!886482))

(declare-fun d!886484 () Bool)

(declare-fun lt!1095167 () BalanceConc!21428)

(assert (=> d!886484 (= (list!12975 lt!1095167) (originalCharacters!5980 separatorToken!241))))

(assert (=> d!886484 (= lt!1095167 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))))

(assert (=> d!886484 (= (charsOf!3282 separatorToken!241) lt!1095167)))

(declare-fun b_lambda!88889 () Bool)

(assert (=> (not b_lambda!88889) (not d!886484)))

(declare-fun tb!159853 () Bool)

(declare-fun t!241362 () Bool)

(assert (=> (and b!3228076 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241)))) t!241362) tb!159853))

(declare-fun b!3228297 () Bool)

(declare-fun e!2013539 () Bool)

(declare-fun tp!1017268 () Bool)

(assert (=> b!3228297 (= e!2013539 (and (inv!49253 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))) tp!1017268))))

(declare-fun result!202394 () Bool)

(assert (=> tb!159853 (= result!202394 (and (inv!49254 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241))) e!2013539))))

(assert (= tb!159853 b!3228297))

(declare-fun m!3507483 () Bool)

(assert (=> b!3228297 m!3507483))

(declare-fun m!3507487 () Bool)

(assert (=> tb!159853 m!3507487))

(assert (=> d!886484 t!241362))

(declare-fun b_and!216221 () Bool)

(assert (= b_and!216203 (and (=> t!241362 result!202394) b_and!216221)))

(declare-fun tb!159855 () Bool)

(declare-fun t!241364 () Bool)

(assert (=> (and b!3228072 (= (toChars!7233 (transformation!5266 (h!41782 rules!2135))) (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241)))) t!241364) tb!159855))

(declare-fun result!202396 () Bool)

(assert (= result!202396 result!202394))

(assert (=> d!886484 t!241364))

(declare-fun b_and!216223 () Bool)

(assert (= b_and!216205 (and (=> t!241364 result!202396) b_and!216223)))

(declare-fun t!241366 () Bool)

(declare-fun tb!159857 () Bool)

(assert (=> (and b!3228087 (= (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241)))) t!241366) tb!159857))

(declare-fun result!202398 () Bool)

(assert (= result!202398 result!202394))

(assert (=> d!886484 t!241366))

(declare-fun b_and!216225 () Bool)

(assert (= b_and!216207 (and (=> t!241366 result!202398) b_and!216225)))

(declare-fun m!3507499 () Bool)

(assert (=> d!886484 m!3507499))

(declare-fun m!3507503 () Bool)

(assert (=> d!886484 m!3507503))

(assert (=> b!3228084 d!886484))

(declare-fun d!886486 () Bool)

(assert (=> d!886486 (= (list!12975 (printWithSeparatorToken!72 thiss!18206 lt!1095068 separatorToken!241)) (list!12979 (c!542433 (printWithSeparatorToken!72 thiss!18206 lt!1095068 separatorToken!241))))))

(declare-fun bs!543042 () Bool)

(assert (= bs!543042 d!886486))

(declare-fun m!3507507 () Bool)

(assert (=> bs!543042 m!3507507))

(assert (=> b!3228084 d!886486))

(declare-fun b!3228309 () Bool)

(declare-fun e!2013548 () List!36485)

(assert (=> b!3228309 (= e!2013548 (list!12975 (charsOf!3282 separatorToken!241)))))

(declare-fun b!3228310 () Bool)

(assert (=> b!3228310 (= e!2013548 (Cons!36361 (h!41781 lt!1095073) (++!8756 (t!241330 lt!1095073) (list!12975 (charsOf!3282 separatorToken!241)))))))

(declare-fun e!2013547 () Bool)

(declare-fun lt!1095173 () List!36485)

(declare-fun b!3228312 () Bool)

(assert (=> b!3228312 (= e!2013547 (or (not (= (list!12975 (charsOf!3282 separatorToken!241)) Nil!36361)) (= lt!1095173 lt!1095073)))))

(declare-fun b!3228311 () Bool)

(declare-fun res!1314766 () Bool)

(assert (=> b!3228311 (=> (not res!1314766) (not e!2013547))))

(assert (=> b!3228311 (= res!1314766 (= (size!27430 lt!1095173) (+ (size!27430 lt!1095073) (size!27430 (list!12975 (charsOf!3282 separatorToken!241))))))))

(declare-fun d!886490 () Bool)

(assert (=> d!886490 e!2013547))

(declare-fun res!1314767 () Bool)

(assert (=> d!886490 (=> (not res!1314767) (not e!2013547))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4918 (List!36485) (InoxSet C!20236))

(assert (=> d!886490 (= res!1314767 (= (content!4918 lt!1095173) ((_ map or) (content!4918 lt!1095073) (content!4918 (list!12975 (charsOf!3282 separatorToken!241))))))))

(assert (=> d!886490 (= lt!1095173 e!2013548)))

(declare-fun c!542469 () Bool)

(assert (=> d!886490 (= c!542469 ((_ is Nil!36361) lt!1095073))))

(assert (=> d!886490 (= (++!8756 lt!1095073 (list!12975 (charsOf!3282 separatorToken!241))) lt!1095173)))

(assert (= (and d!886490 c!542469) b!3228309))

(assert (= (and d!886490 (not c!542469)) b!3228310))

(assert (= (and d!886490 res!1314767) b!3228311))

(assert (= (and b!3228311 res!1314766) b!3228312))

(assert (=> b!3228310 m!3507149))

(declare-fun m!3507515 () Bool)

(assert (=> b!3228310 m!3507515))

(declare-fun m!3507517 () Bool)

(assert (=> b!3228311 m!3507517))

(declare-fun m!3507519 () Bool)

(assert (=> b!3228311 m!3507519))

(assert (=> b!3228311 m!3507149))

(declare-fun m!3507521 () Bool)

(assert (=> b!3228311 m!3507521))

(declare-fun m!3507523 () Bool)

(assert (=> d!886490 m!3507523))

(declare-fun m!3507525 () Bool)

(assert (=> d!886490 m!3507525))

(assert (=> d!886490 m!3507149))

(declare-fun m!3507527 () Bool)

(assert (=> d!886490 m!3507527))

(assert (=> b!3228084 d!886490))

(declare-fun d!886494 () Bool)

(declare-fun lt!1095176 () BalanceConc!21428)

(declare-fun printWithSeparatorTokenList!188 (LexerInterface!4855 List!36487 Token!9898) List!36485)

(assert (=> d!886494 (= (list!12975 lt!1095176) (printWithSeparatorTokenList!188 thiss!18206 (list!12978 lt!1095068) separatorToken!241))))

(declare-fun printWithSeparatorTokenTailRec!16 (LexerInterface!4855 BalanceConc!21430 Token!9898 Int BalanceConc!21428) BalanceConc!21428)

(assert (=> d!886494 (= lt!1095176 (printWithSeparatorTokenTailRec!16 thiss!18206 lt!1095068 separatorToken!241 0 (BalanceConc!21429 Empty!10907)))))

(assert (=> d!886494 (isSeparator!5266 (rule!7724 separatorToken!241))))

(assert (=> d!886494 (= (printWithSeparatorToken!72 thiss!18206 lt!1095068 separatorToken!241) lt!1095176)))

(declare-fun bs!543044 () Bool)

(assert (= bs!543044 d!886494))

(declare-fun m!3507549 () Bool)

(assert (=> bs!543044 m!3507549))

(assert (=> bs!543044 m!3507355))

(assert (=> bs!543044 m!3507355))

(declare-fun m!3507551 () Bool)

(assert (=> bs!543044 m!3507551))

(declare-fun m!3507553 () Bool)

(assert (=> bs!543044 m!3507553))

(assert (=> b!3228084 d!886494))

(declare-fun d!886498 () Bool)

(assert (=> d!886498 (= (list!12975 (charsOf!3282 separatorToken!241)) (list!12979 (c!542433 (charsOf!3282 separatorToken!241))))))

(declare-fun bs!543045 () Bool)

(assert (= bs!543045 d!886498))

(declare-fun m!3507555 () Bool)

(assert (=> bs!543045 m!3507555))

(assert (=> b!3228084 d!886498))

(declare-fun d!886500 () Bool)

(assert (=> d!886500 (= (list!12975 (charsOf!3282 (h!41783 tokens!494))) (list!12979 (c!542433 (charsOf!3282 (h!41783 tokens!494)))))))

(declare-fun bs!543046 () Bool)

(assert (= bs!543046 d!886500))

(declare-fun m!3507557 () Bool)

(assert (=> bs!543046 m!3507557))

(assert (=> b!3228083 d!886500))

(declare-fun d!886502 () Bool)

(declare-fun lt!1095177 () BalanceConc!21428)

(assert (=> d!886502 (= (list!12975 lt!1095177) (originalCharacters!5980 (h!41783 tokens!494)))))

(assert (=> d!886502 (= lt!1095177 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))))

(assert (=> d!886502 (= (charsOf!3282 (h!41783 tokens!494)) lt!1095177)))

(declare-fun b_lambda!88903 () Bool)

(assert (=> (not b_lambda!88903) (not d!886502)))

(assert (=> d!886502 t!241350))

(declare-fun b_and!216235 () Bool)

(assert (= b_and!216221 (and (=> t!241350 result!202380) b_and!216235)))

(assert (=> d!886502 t!241352))

(declare-fun b_and!216237 () Bool)

(assert (= b_and!216223 (and (=> t!241352 result!202384) b_and!216237)))

(assert (=> d!886502 t!241354))

(declare-fun b_and!216239 () Bool)

(assert (= b_and!216225 (and (=> t!241354 result!202386) b_and!216239)))

(declare-fun m!3507559 () Bool)

(assert (=> d!886502 m!3507559))

(assert (=> d!886502 m!3507379))

(assert (=> b!3228083 d!886502))

(declare-fun d!886504 () Bool)

(declare-fun lt!1095183 () Bool)

(declare-fun e!2013595 () Bool)

(assert (=> d!886504 (= lt!1095183 e!2013595)))

(declare-fun res!1314774 () Bool)

(assert (=> d!886504 (=> (not res!1314774) (not e!2013595))))

(assert (=> d!886504 (= res!1314774 (= (list!12978 (_1!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241))))) (list!12978 (singletonSeq!2362 separatorToken!241))))))

(declare-fun e!2013596 () Bool)

(assert (=> d!886504 (= lt!1095183 e!2013596)))

(declare-fun res!1314775 () Bool)

(assert (=> d!886504 (=> (not res!1314775) (not e!2013596))))

(declare-fun lt!1095182 () tuple2!35788)

(assert (=> d!886504 (= res!1314775 (= (size!27429 (_1!21028 lt!1095182)) 1))))

(assert (=> d!886504 (= lt!1095182 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241))))))

(assert (=> d!886504 (not (isEmpty!20447 rules!2135))))

(assert (=> d!886504 (= (rulesProduceIndividualToken!2347 thiss!18206 rules!2135 separatorToken!241) lt!1095183)))

(declare-fun b!3228378 () Bool)

(declare-fun res!1314776 () Bool)

(assert (=> b!3228378 (=> (not res!1314776) (not e!2013596))))

(assert (=> b!3228378 (= res!1314776 (= (apply!8300 (_1!21028 lt!1095182) 0) separatorToken!241))))

(declare-fun b!3228379 () Bool)

(declare-fun isEmpty!20455 (BalanceConc!21428) Bool)

(assert (=> b!3228379 (= e!2013596 (isEmpty!20455 (_2!21028 lt!1095182)))))

(declare-fun b!3228380 () Bool)

(assert (=> b!3228380 (= e!2013595 (isEmpty!20455 (_2!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241))))))))

(assert (= (and d!886504 res!1314775) b!3228378))

(assert (= (and b!3228378 res!1314776) b!3228379))

(assert (= (and d!886504 res!1314774) b!3228380))

(declare-fun m!3507561 () Bool)

(assert (=> d!886504 m!3507561))

(declare-fun m!3507563 () Bool)

(assert (=> d!886504 m!3507563))

(declare-fun m!3507565 () Bool)

(assert (=> d!886504 m!3507565))

(declare-fun m!3507567 () Bool)

(assert (=> d!886504 m!3507567))

(declare-fun m!3507569 () Bool)

(assert (=> d!886504 m!3507569))

(assert (=> d!886504 m!3507125))

(assert (=> d!886504 m!3507561))

(declare-fun m!3507571 () Bool)

(assert (=> d!886504 m!3507571))

(assert (=> d!886504 m!3507561))

(assert (=> d!886504 m!3507565))

(declare-fun m!3507573 () Bool)

(assert (=> b!3228378 m!3507573))

(declare-fun m!3507575 () Bool)

(assert (=> b!3228379 m!3507575))

(assert (=> b!3228380 m!3507561))

(assert (=> b!3228380 m!3507561))

(assert (=> b!3228380 m!3507565))

(assert (=> b!3228380 m!3507565))

(assert (=> b!3228380 m!3507567))

(declare-fun m!3507577 () Bool)

(assert (=> b!3228380 m!3507577))

(assert (=> b!3228094 d!886504))

(declare-fun d!886506 () Bool)

(declare-fun res!1314777 () Bool)

(declare-fun e!2013597 () Bool)

(assert (=> d!886506 (=> (not res!1314777) (not e!2013597))))

(assert (=> d!886506 (= res!1314777 (not (isEmpty!20452 (originalCharacters!5980 separatorToken!241))))))

(assert (=> d!886506 (= (inv!49250 separatorToken!241) e!2013597)))

(declare-fun b!3228381 () Bool)

(declare-fun res!1314778 () Bool)

(assert (=> b!3228381 (=> (not res!1314778) (not e!2013597))))

(assert (=> b!3228381 (= res!1314778 (= (originalCharacters!5980 separatorToken!241) (list!12975 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))))))

(declare-fun b!3228382 () Bool)

(assert (=> b!3228382 (= e!2013597 (= (size!27425 separatorToken!241) (size!27430 (originalCharacters!5980 separatorToken!241))))))

(assert (= (and d!886506 res!1314777) b!3228381))

(assert (= (and b!3228381 res!1314778) b!3228382))

(declare-fun b_lambda!88905 () Bool)

(assert (=> (not b_lambda!88905) (not b!3228381)))

(assert (=> b!3228381 t!241362))

(declare-fun b_and!216241 () Bool)

(assert (= b_and!216235 (and (=> t!241362 result!202394) b_and!216241)))

(assert (=> b!3228381 t!241364))

(declare-fun b_and!216243 () Bool)

(assert (= b_and!216237 (and (=> t!241364 result!202396) b_and!216243)))

(assert (=> b!3228381 t!241366))

(declare-fun b_and!216245 () Bool)

(assert (= b_and!216239 (and (=> t!241366 result!202398) b_and!216245)))

(declare-fun m!3507579 () Bool)

(assert (=> d!886506 m!3507579))

(assert (=> b!3228381 m!3507503))

(assert (=> b!3228381 m!3507503))

(declare-fun m!3507581 () Bool)

(assert (=> b!3228381 m!3507581))

(declare-fun m!3507583 () Bool)

(assert (=> b!3228382 m!3507583))

(assert (=> start!303458 d!886506))

(declare-fun d!886508 () Bool)

(assert (=> d!886508 (= (inv!49246 (tag!5798 (rule!7724 separatorToken!241))) (= (mod (str.len (value!170540 (tag!5798 (rule!7724 separatorToken!241)))) 2) 0))))

(assert (=> b!3228080 d!886508))

(declare-fun d!886510 () Bool)

(declare-fun res!1314779 () Bool)

(declare-fun e!2013598 () Bool)

(assert (=> d!886510 (=> (not res!1314779) (not e!2013598))))

(assert (=> d!886510 (= res!1314779 (semiInverseModEq!2171 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (toValue!7374 (transformation!5266 (rule!7724 separatorToken!241)))))))

(assert (=> d!886510 (= (inv!49249 (transformation!5266 (rule!7724 separatorToken!241))) e!2013598)))

(declare-fun b!3228383 () Bool)

(assert (=> b!3228383 (= e!2013598 (equivClasses!2070 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (toValue!7374 (transformation!5266 (rule!7724 separatorToken!241)))))))

(assert (= (and d!886510 res!1314779) b!3228383))

(declare-fun m!3507585 () Bool)

(assert (=> d!886510 m!3507585))

(declare-fun m!3507587 () Bool)

(assert (=> b!3228383 m!3507587))

(assert (=> b!3228080 d!886510))

(declare-fun d!886512 () Bool)

(declare-fun lt!1095185 () Bool)

(declare-fun e!2013599 () Bool)

(assert (=> d!886512 (= lt!1095185 e!2013599)))

(declare-fun res!1314780 () Bool)

(assert (=> d!886512 (=> (not res!1314780) (not e!2013599))))

(assert (=> d!886512 (= res!1314780 (= (list!12978 (_1!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494)))))) (list!12978 (singletonSeq!2362 (h!41783 tokens!494)))))))

(declare-fun e!2013600 () Bool)

(assert (=> d!886512 (= lt!1095185 e!2013600)))

(declare-fun res!1314781 () Bool)

(assert (=> d!886512 (=> (not res!1314781) (not e!2013600))))

(declare-fun lt!1095184 () tuple2!35788)

(assert (=> d!886512 (= res!1314781 (= (size!27429 (_1!21028 lt!1095184)) 1))))

(assert (=> d!886512 (= lt!1095184 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494)))))))

(assert (=> d!886512 (not (isEmpty!20447 rules!2135))))

(assert (=> d!886512 (= (rulesProduceIndividualToken!2347 thiss!18206 rules!2135 (h!41783 tokens!494)) lt!1095185)))

(declare-fun b!3228384 () Bool)

(declare-fun res!1314782 () Bool)

(assert (=> b!3228384 (=> (not res!1314782) (not e!2013600))))

(assert (=> b!3228384 (= res!1314782 (= (apply!8300 (_1!21028 lt!1095184) 0) (h!41783 tokens!494)))))

(declare-fun b!3228385 () Bool)

(assert (=> b!3228385 (= e!2013600 (isEmpty!20455 (_2!21028 lt!1095184)))))

(declare-fun b!3228386 () Bool)

(assert (=> b!3228386 (= e!2013599 (isEmpty!20455 (_2!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494)))))))))

(assert (= (and d!886512 res!1314781) b!3228384))

(assert (= (and b!3228384 res!1314782) b!3228385))

(assert (= (and d!886512 res!1314780) b!3228386))

(assert (=> d!886512 m!3507141))

(declare-fun m!3507589 () Bool)

(assert (=> d!886512 m!3507589))

(declare-fun m!3507591 () Bool)

(assert (=> d!886512 m!3507591))

(declare-fun m!3507593 () Bool)

(assert (=> d!886512 m!3507593))

(declare-fun m!3507595 () Bool)

(assert (=> d!886512 m!3507595))

(assert (=> d!886512 m!3507125))

(assert (=> d!886512 m!3507141))

(declare-fun m!3507597 () Bool)

(assert (=> d!886512 m!3507597))

(assert (=> d!886512 m!3507141))

(assert (=> d!886512 m!3507591))

(declare-fun m!3507599 () Bool)

(assert (=> b!3228384 m!3507599))

(declare-fun m!3507601 () Bool)

(assert (=> b!3228385 m!3507601))

(assert (=> b!3228386 m!3507141))

(assert (=> b!3228386 m!3507141))

(assert (=> b!3228386 m!3507591))

(assert (=> b!3228386 m!3507591))

(assert (=> b!3228386 m!3507593))

(declare-fun m!3507603 () Bool)

(assert (=> b!3228386 m!3507603))

(assert (=> b!3228079 d!886512))

(declare-fun d!886514 () Bool)

(assert (=> d!886514 (= (inv!49246 (tag!5798 (h!41782 rules!2135))) (= (mod (str.len (value!170540 (tag!5798 (h!41782 rules!2135)))) 2) 0))))

(assert (=> b!3228090 d!886514))

(declare-fun d!886516 () Bool)

(declare-fun res!1314783 () Bool)

(declare-fun e!2013601 () Bool)

(assert (=> d!886516 (=> (not res!1314783) (not e!2013601))))

(assert (=> d!886516 (= res!1314783 (semiInverseModEq!2171 (toChars!7233 (transformation!5266 (h!41782 rules!2135))) (toValue!7374 (transformation!5266 (h!41782 rules!2135)))))))

(assert (=> d!886516 (= (inv!49249 (transformation!5266 (h!41782 rules!2135))) e!2013601)))

(declare-fun b!3228387 () Bool)

(assert (=> b!3228387 (= e!2013601 (equivClasses!2070 (toChars!7233 (transformation!5266 (h!41782 rules!2135))) (toValue!7374 (transformation!5266 (h!41782 rules!2135)))))))

(assert (= (and d!886516 res!1314783) b!3228387))

(declare-fun m!3507605 () Bool)

(assert (=> d!886516 m!3507605))

(declare-fun m!3507607 () Bool)

(assert (=> b!3228387 m!3507607))

(assert (=> b!3228090 d!886516))

(declare-fun d!886518 () Bool)

(declare-fun dynLambda!14795 (Int Token!9898) Bool)

(assert (=> d!886518 (dynLambda!14795 lambda!118207 (h!41783 tokens!494))))

(declare-fun lt!1095188 () Unit!50946)

(declare-fun choose!18828 (List!36487 Int Token!9898) Unit!50946)

(assert (=> d!886518 (= lt!1095188 (choose!18828 tokens!494 lambda!118207 (h!41783 tokens!494)))))

(declare-fun e!2013604 () Bool)

(assert (=> d!886518 e!2013604))

(declare-fun res!1314786 () Bool)

(assert (=> d!886518 (=> (not res!1314786) (not e!2013604))))

(assert (=> d!886518 (= res!1314786 (forall!7470 tokens!494 lambda!118207))))

(assert (=> d!886518 (= (forallContained!1227 tokens!494 lambda!118207 (h!41783 tokens!494)) lt!1095188)))

(declare-fun b!3228390 () Bool)

(declare-fun contains!6527 (List!36487 Token!9898) Bool)

(assert (=> b!3228390 (= e!2013604 (contains!6527 tokens!494 (h!41783 tokens!494)))))

(assert (= (and d!886518 res!1314786) b!3228390))

(declare-fun b_lambda!88907 () Bool)

(assert (=> (not b_lambda!88907) (not d!886518)))

(declare-fun m!3507609 () Bool)

(assert (=> d!886518 m!3507609))

(declare-fun m!3507611 () Bool)

(assert (=> d!886518 m!3507611))

(assert (=> d!886518 m!3507133))

(declare-fun m!3507613 () Bool)

(assert (=> b!3228390 m!3507613))

(assert (=> b!3228081 d!886518))

(declare-fun b!3228391 () Bool)

(declare-fun e!2013605 () Bool)

(assert (=> b!3228391 (= e!2013605 (inv!17 (value!170541 separatorToken!241)))))

(declare-fun b!3228392 () Bool)

(declare-fun res!1314787 () Bool)

(declare-fun e!2013607 () Bool)

(assert (=> b!3228392 (=> res!1314787 e!2013607)))

(assert (=> b!3228392 (= res!1314787 (not ((_ is IntegerValue!16490) (value!170541 separatorToken!241))))))

(assert (=> b!3228392 (= e!2013605 e!2013607)))

(declare-fun b!3228393 () Bool)

(declare-fun e!2013606 () Bool)

(assert (=> b!3228393 (= e!2013606 e!2013605)))

(declare-fun c!542473 () Bool)

(assert (=> b!3228393 (= c!542473 ((_ is IntegerValue!16489) (value!170541 separatorToken!241)))))

(declare-fun d!886520 () Bool)

(declare-fun c!542474 () Bool)

(assert (=> d!886520 (= c!542474 ((_ is IntegerValue!16488) (value!170541 separatorToken!241)))))

(assert (=> d!886520 (= (inv!21 (value!170541 separatorToken!241)) e!2013606)))

(declare-fun b!3228394 () Bool)

(assert (=> b!3228394 (= e!2013606 (inv!16 (value!170541 separatorToken!241)))))

(declare-fun b!3228395 () Bool)

(assert (=> b!3228395 (= e!2013607 (inv!15 (value!170541 separatorToken!241)))))

(assert (= (and d!886520 c!542474) b!3228394))

(assert (= (and d!886520 (not c!542474)) b!3228393))

(assert (= (and b!3228393 c!542473) b!3228391))

(assert (= (and b!3228393 (not c!542473)) b!3228392))

(assert (= (and b!3228392 (not res!1314787)) b!3228395))

(declare-fun m!3507615 () Bool)

(assert (=> b!3228391 m!3507615))

(declare-fun m!3507617 () Bool)

(assert (=> b!3228394 m!3507617))

(declare-fun m!3507619 () Bool)

(assert (=> b!3228395 m!3507619))

(assert (=> b!3228092 d!886520))

(declare-fun d!886522 () Bool)

(declare-fun res!1314792 () Bool)

(declare-fun e!2013612 () Bool)

(assert (=> d!886522 (=> res!1314792 e!2013612)))

(assert (=> d!886522 (= res!1314792 (not ((_ is Cons!36362) rules!2135)))))

(assert (=> d!886522 (= (sepAndNonSepRulesDisjointChars!1460 rules!2135 rules!2135) e!2013612)))

(declare-fun b!3228400 () Bool)

(declare-fun e!2013613 () Bool)

(assert (=> b!3228400 (= e!2013612 e!2013613)))

(declare-fun res!1314793 () Bool)

(assert (=> b!3228400 (=> (not res!1314793) (not e!2013613))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!607 (Rule!10332 List!36486) Bool)

(assert (=> b!3228400 (= res!1314793 (ruleDisjointCharsFromAllFromOtherType!607 (h!41782 rules!2135) rules!2135))))

(declare-fun b!3228401 () Bool)

(assert (=> b!3228401 (= e!2013613 (sepAndNonSepRulesDisjointChars!1460 rules!2135 (t!241331 rules!2135)))))

(assert (= (and d!886522 (not res!1314792)) b!3228400))

(assert (= (and b!3228400 res!1314793) b!3228401))

(declare-fun m!3507621 () Bool)

(assert (=> b!3228400 m!3507621))

(declare-fun m!3507623 () Bool)

(assert (=> b!3228401 m!3507623))

(assert (=> b!3228077 d!886522))

(declare-fun d!886524 () Bool)

(assert (=> d!886524 (= (isEmpty!20447 rules!2135) ((_ is Nil!36362) rules!2135))))

(assert (=> b!3228089 d!886524))

(declare-fun d!886526 () Bool)

(declare-fun res!1314798 () Bool)

(declare-fun e!2013618 () Bool)

(assert (=> d!886526 (=> res!1314798 e!2013618)))

(assert (=> d!886526 (= res!1314798 ((_ is Nil!36363) tokens!494))))

(assert (=> d!886526 (= (forall!7470 tokens!494 lambda!118207) e!2013618)))

(declare-fun b!3228406 () Bool)

(declare-fun e!2013619 () Bool)

(assert (=> b!3228406 (= e!2013618 e!2013619)))

(declare-fun res!1314799 () Bool)

(assert (=> b!3228406 (=> (not res!1314799) (not e!2013619))))

(assert (=> b!3228406 (= res!1314799 (dynLambda!14795 lambda!118207 (h!41783 tokens!494)))))

(declare-fun b!3228407 () Bool)

(assert (=> b!3228407 (= e!2013619 (forall!7470 (t!241332 tokens!494) lambda!118207))))

(assert (= (and d!886526 (not res!1314798)) b!3228406))

(assert (= (and b!3228406 res!1314799) b!3228407))

(declare-fun b_lambda!88909 () Bool)

(assert (=> (not b_lambda!88909) (not b!3228406)))

(assert (=> b!3228406 m!3507609))

(declare-fun m!3507625 () Bool)

(assert (=> b!3228407 m!3507625))

(assert (=> b!3228078 d!886526))

(declare-fun b!3228412 () Bool)

(declare-fun e!2013622 () Bool)

(declare-fun tp_is_empty!17329 () Bool)

(declare-fun tp!1017327 () Bool)

(assert (=> b!3228412 (= e!2013622 (and tp_is_empty!17329 tp!1017327))))

(assert (=> b!3228085 (= tp!1017258 e!2013622)))

(assert (= (and b!3228085 ((_ is Cons!36361) (originalCharacters!5980 (h!41783 tokens!494)))) b!3228412))

(declare-fun b!3228424 () Bool)

(declare-fun e!2013625 () Bool)

(declare-fun tp!1017342 () Bool)

(declare-fun tp!1017339 () Bool)

(assert (=> b!3228424 (= e!2013625 (and tp!1017342 tp!1017339))))

(declare-fun b!3228425 () Bool)

(declare-fun tp!1017340 () Bool)

(assert (=> b!3228425 (= e!2013625 tp!1017340)))

(assert (=> b!3228080 (= tp!1017260 e!2013625)))

(declare-fun b!3228423 () Bool)

(assert (=> b!3228423 (= e!2013625 tp_is_empty!17329)))

(declare-fun b!3228426 () Bool)

(declare-fun tp!1017341 () Bool)

(declare-fun tp!1017338 () Bool)

(assert (=> b!3228426 (= e!2013625 (and tp!1017341 tp!1017338))))

(assert (= (and b!3228080 ((_ is ElementMatch!10025) (regex!5266 (rule!7724 separatorToken!241)))) b!3228423))

(assert (= (and b!3228080 ((_ is Concat!15521) (regex!5266 (rule!7724 separatorToken!241)))) b!3228424))

(assert (= (and b!3228080 ((_ is Star!10025) (regex!5266 (rule!7724 separatorToken!241)))) b!3228425))

(assert (= (and b!3228080 ((_ is Union!10025) (regex!5266 (rule!7724 separatorToken!241)))) b!3228426))

(declare-fun b!3228428 () Bool)

(declare-fun e!2013626 () Bool)

(declare-fun tp!1017347 () Bool)

(declare-fun tp!1017344 () Bool)

(assert (=> b!3228428 (= e!2013626 (and tp!1017347 tp!1017344))))

(declare-fun b!3228429 () Bool)

(declare-fun tp!1017345 () Bool)

(assert (=> b!3228429 (= e!2013626 tp!1017345)))

(assert (=> b!3228090 (= tp!1017250 e!2013626)))

(declare-fun b!3228427 () Bool)

(assert (=> b!3228427 (= e!2013626 tp_is_empty!17329)))

(declare-fun b!3228430 () Bool)

(declare-fun tp!1017346 () Bool)

(declare-fun tp!1017343 () Bool)

(assert (=> b!3228430 (= e!2013626 (and tp!1017346 tp!1017343))))

(assert (= (and b!3228090 ((_ is ElementMatch!10025) (regex!5266 (h!41782 rules!2135)))) b!3228427))

(assert (= (and b!3228090 ((_ is Concat!15521) (regex!5266 (h!41782 rules!2135)))) b!3228428))

(assert (= (and b!3228090 ((_ is Star!10025) (regex!5266 (h!41782 rules!2135)))) b!3228429))

(assert (= (and b!3228090 ((_ is Union!10025) (regex!5266 (h!41782 rules!2135)))) b!3228430))

(declare-fun b!3228431 () Bool)

(declare-fun e!2013627 () Bool)

(declare-fun tp!1017348 () Bool)

(assert (=> b!3228431 (= e!2013627 (and tp_is_empty!17329 tp!1017348))))

(assert (=> b!3228092 (= tp!1017255 e!2013627)))

(assert (= (and b!3228092 ((_ is Cons!36361) (originalCharacters!5980 separatorToken!241))) b!3228431))

(declare-fun b!3228442 () Bool)

(declare-fun b_free!86149 () Bool)

(declare-fun b_next!86853 () Bool)

(assert (=> b!3228442 (= b_free!86149 (not b_next!86853))))

(declare-fun tp!1017360 () Bool)

(declare-fun b_and!216247 () Bool)

(assert (=> b!3228442 (= tp!1017360 b_and!216247)))

(declare-fun b_free!86151 () Bool)

(declare-fun b_next!86855 () Bool)

(assert (=> b!3228442 (= b_free!86151 (not b_next!86855))))

(declare-fun t!241379 () Bool)

(declare-fun tb!159867 () Bool)

(assert (=> (and b!3228442 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 rules!2135)))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494))))) t!241379) tb!159867))

(declare-fun result!202422 () Bool)

(assert (= result!202422 result!202380))

(assert (=> b!3228240 t!241379))

(declare-fun tb!159869 () Bool)

(declare-fun t!241381 () Bool)

(assert (=> (and b!3228442 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 rules!2135)))) (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241)))) t!241381) tb!159869))

(declare-fun result!202424 () Bool)

(assert (= result!202424 result!202394))

(assert (=> d!886484 t!241381))

(assert (=> d!886502 t!241379))

(assert (=> b!3228381 t!241381))

(declare-fun b_and!216249 () Bool)

(declare-fun tp!1017357 () Bool)

(assert (=> b!3228442 (= tp!1017357 (and (=> t!241379 result!202422) (=> t!241381 result!202424) b_and!216249))))

(declare-fun e!2013639 () Bool)

(assert (=> b!3228442 (= e!2013639 (and tp!1017360 tp!1017357))))

(declare-fun e!2013636 () Bool)

(declare-fun tp!1017358 () Bool)

(declare-fun b!3228441 () Bool)

(assert (=> b!3228441 (= e!2013636 (and tp!1017358 (inv!49246 (tag!5798 (h!41782 (t!241331 rules!2135)))) (inv!49249 (transformation!5266 (h!41782 (t!241331 rules!2135)))) e!2013639))))

(declare-fun b!3228440 () Bool)

(declare-fun e!2013637 () Bool)

(declare-fun tp!1017359 () Bool)

(assert (=> b!3228440 (= e!2013637 (and e!2013636 tp!1017359))))

(assert (=> b!3228091 (= tp!1017259 e!2013637)))

(assert (= b!3228441 b!3228442))

(assert (= b!3228440 b!3228441))

(assert (= (and b!3228091 ((_ is Cons!36362) (t!241331 rules!2135))) b!3228440))

(declare-fun m!3507627 () Bool)

(assert (=> b!3228441 m!3507627))

(declare-fun m!3507629 () Bool)

(assert (=> b!3228441 m!3507629))

(declare-fun b!3228444 () Bool)

(declare-fun e!2013640 () Bool)

(declare-fun tp!1017365 () Bool)

(declare-fun tp!1017362 () Bool)

(assert (=> b!3228444 (= e!2013640 (and tp!1017365 tp!1017362))))

(declare-fun b!3228445 () Bool)

(declare-fun tp!1017363 () Bool)

(assert (=> b!3228445 (= e!2013640 tp!1017363)))

(assert (=> b!3228093 (= tp!1017249 e!2013640)))

(declare-fun b!3228443 () Bool)

(assert (=> b!3228443 (= e!2013640 tp_is_empty!17329)))

(declare-fun b!3228446 () Bool)

(declare-fun tp!1017364 () Bool)

(declare-fun tp!1017361 () Bool)

(assert (=> b!3228446 (= e!2013640 (and tp!1017364 tp!1017361))))

(assert (= (and b!3228093 ((_ is ElementMatch!10025) (regex!5266 (rule!7724 (h!41783 tokens!494))))) b!3228443))

(assert (= (and b!3228093 ((_ is Concat!15521) (regex!5266 (rule!7724 (h!41783 tokens!494))))) b!3228444))

(assert (= (and b!3228093 ((_ is Star!10025) (regex!5266 (rule!7724 (h!41783 tokens!494))))) b!3228445))

(assert (= (and b!3228093 ((_ is Union!10025) (regex!5266 (rule!7724 (h!41783 tokens!494))))) b!3228446))

(declare-fun b!3228460 () Bool)

(declare-fun b_free!86153 () Bool)

(declare-fun b_next!86857 () Bool)

(assert (=> b!3228460 (= b_free!86153 (not b_next!86857))))

(declare-fun tp!1017376 () Bool)

(declare-fun b_and!216251 () Bool)

(assert (=> b!3228460 (= tp!1017376 b_and!216251)))

(declare-fun b_free!86155 () Bool)

(declare-fun b_next!86859 () Bool)

(assert (=> b!3228460 (= b_free!86155 (not b_next!86859))))

(declare-fun t!241383 () Bool)

(declare-fun tb!159871 () Bool)

(assert (=> (and b!3228460 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494))))) t!241383) tb!159871))

(declare-fun result!202428 () Bool)

(assert (= result!202428 result!202380))

(assert (=> b!3228240 t!241383))

(declare-fun t!241385 () Bool)

(declare-fun tb!159873 () Bool)

(assert (=> (and b!3228460 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241)))) t!241385) tb!159873))

(declare-fun result!202430 () Bool)

(assert (= result!202430 result!202394))

(assert (=> d!886484 t!241385))

(assert (=> d!886502 t!241383))

(assert (=> b!3228381 t!241385))

(declare-fun b_and!216253 () Bool)

(declare-fun tp!1017377 () Bool)

(assert (=> b!3228460 (= tp!1017377 (and (=> t!241383 result!202428) (=> t!241385 result!202430) b_and!216253))))

(declare-fun e!2013655 () Bool)

(assert (=> b!3228460 (= e!2013655 (and tp!1017376 tp!1017377))))

(declare-fun e!2013656 () Bool)

(assert (=> b!3228082 (= tp!1017248 e!2013656)))

(declare-fun tp!1017379 () Bool)

(declare-fun e!2013653 () Bool)

(declare-fun b!3228457 () Bool)

(assert (=> b!3228457 (= e!2013656 (and (inv!49250 (h!41783 (t!241332 tokens!494))) e!2013653 tp!1017379))))

(declare-fun tp!1017380 () Bool)

(declare-fun b!3228459 () Bool)

(declare-fun e!2013654 () Bool)

(assert (=> b!3228459 (= e!2013654 (and tp!1017380 (inv!49246 (tag!5798 (rule!7724 (h!41783 (t!241332 tokens!494))))) (inv!49249 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) e!2013655))))

(declare-fun b!3228458 () Bool)

(declare-fun tp!1017378 () Bool)

(assert (=> b!3228458 (= e!2013653 (and (inv!21 (value!170541 (h!41783 (t!241332 tokens!494)))) e!2013654 tp!1017378))))

(assert (= b!3228459 b!3228460))

(assert (= b!3228458 b!3228459))

(assert (= b!3228457 b!3228458))

(assert (= (and b!3228082 ((_ is Cons!36363) (t!241332 tokens!494))) b!3228457))

(declare-fun m!3507631 () Bool)

(assert (=> b!3228457 m!3507631))

(declare-fun m!3507633 () Bool)

(assert (=> b!3228459 m!3507633))

(declare-fun m!3507635 () Bool)

(assert (=> b!3228459 m!3507635))

(declare-fun m!3507637 () Bool)

(assert (=> b!3228458 m!3507637))

(declare-fun b_lambda!88911 () Bool)

(assert (= b_lambda!88889 (or (and b!3228072 b_free!86135 (= (toChars!7233 (transformation!5266 (h!41782 rules!2135))) (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))))) (and b!3228460 b_free!86155 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))))) (and b!3228442 b_free!86151 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 rules!2135)))) (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))))) (and b!3228087 b_free!86139) (and b!3228076 b_free!86131 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))))) b_lambda!88911)))

(declare-fun b_lambda!88913 () Bool)

(assert (= b_lambda!88909 (or b!3228078 b_lambda!88913)))

(declare-fun bs!543047 () Bool)

(declare-fun d!886528 () Bool)

(assert (= bs!543047 (and d!886528 b!3228078)))

(assert (=> bs!543047 (= (dynLambda!14795 lambda!118207 (h!41783 tokens!494)) (not (isSeparator!5266 (rule!7724 (h!41783 tokens!494)))))))

(assert (=> b!3228406 d!886528))

(declare-fun b_lambda!88915 () Bool)

(assert (= b_lambda!88907 (or b!3228078 b_lambda!88915)))

(assert (=> d!886518 d!886528))

(declare-fun b_lambda!88917 () Bool)

(assert (= b_lambda!88881 (or (and b!3228442 b_free!86151 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 rules!2135)))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))))) (and b!3228072 b_free!86135 (= (toChars!7233 (transformation!5266 (h!41782 rules!2135))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))))) (and b!3228076 b_free!86131) (and b!3228087 b_free!86139 (= (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))))) (and b!3228460 b_free!86155 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))))) b_lambda!88917)))

(declare-fun b_lambda!88919 () Bool)

(assert (= b_lambda!88903 (or (and b!3228442 b_free!86151 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 rules!2135)))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))))) (and b!3228072 b_free!86135 (= (toChars!7233 (transformation!5266 (h!41782 rules!2135))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))))) (and b!3228076 b_free!86131) (and b!3228087 b_free!86139 (= (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))))) (and b!3228460 b_free!86155 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))))) b_lambda!88919)))

(declare-fun b_lambda!88921 () Bool)

(assert (= b_lambda!88905 (or (and b!3228072 b_free!86135 (= (toChars!7233 (transformation!5266 (h!41782 rules!2135))) (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))))) (and b!3228460 b_free!86155 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))))) (and b!3228442 b_free!86151 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 rules!2135)))) (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))))) (and b!3228087 b_free!86139) (and b!3228076 b_free!86131 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))))) b_lambda!88921)))

(check-sat (not b!3228441) (not b!3228381) (not b!3228445) (not b!3228246) (not b!3228127) (not b!3228225) (not d!886504) (not b!3228407) (not b!3228216) (not b!3228147) b_and!216179 (not b_next!86839) (not b!3228390) (not d!886518) b_and!216187 (not b_lambda!88911) (not d!886498) (not b!3228142) (not b_lambda!88915) b_and!216243 (not b_next!86833) (not b!3228285) (not d!886512) (not b!3228431) (not b!3228240) (not b!3228232) (not b!3228458) (not b!3228379) b_and!216253 (not b!3228428) (not tb!159841) (not b_next!86843) (not d!886446) (not b!3228311) (not d!886442) b_and!216241 (not b_next!86837) (not b_next!86857) (not d!886506) (not b!3228111) (not b!3228391) (not b!3228284) (not b!3228297) (not d!886494) (not b!3228459) (not b_next!86835) (not b!3228440) (not b_lambda!88919) (not b!3228241) (not d!886486) (not b!3228429) (not d!886510) (not d!886484) (not b_next!86859) (not d!886404) (not d!886422) (not d!886406) (not b!3228426) (not b!3228386) (not b!3228425) (not b!3228457) b_and!216183 b_and!216247 (not b!3228394) (not b!3228385) (not b_lambda!88913) (not d!886450) (not d!886400) (not d!886490) (not d!886502) (not d!886412) (not b!3228401) (not b!3228384) tp_is_empty!17329 (not b!3228382) (not d!886454) (not b!3228387) (not b!3228383) (not b!3228378) (not b!3228446) (not b!3228125) (not b!3228380) (not b!3228430) (not b!3228310) (not d!886500) (not b!3228395) b_and!216251 (not tb!159853) (not b!3228235) (not d!886516) (not b!3228444) (not b!3228287) (not b!3228412) (not b!3228424) (not d!886482) (not d!886452) b_and!216245 (not b_next!86853) (not b_lambda!88921) (not d!886448) (not b_next!86855) (not b!3228115) (not b_lambda!88917) (not b!3228400) (not b!3228283) (not b!3228114) b_and!216249 (not b_next!86841))
(check-sat b_and!216187 b_and!216253 (not b_next!86843) (not b_next!86835) (not b_next!86859) b_and!216183 b_and!216247 b_and!216251 b_and!216245 (not b_next!86853) (not b_next!86855) b_and!216179 (not b_next!86839) b_and!216243 (not b_next!86833) b_and!216241 (not b_next!86837) (not b_next!86857) b_and!216249 (not b_next!86841))
(get-model)

(declare-fun d!886534 () Bool)

(assert (=> d!886534 (dynLambda!14795 lambda!118207 (h!41783 tokens!494))))

(assert (=> d!886534 true))

(declare-fun _$7!1116 () Unit!50946)

(assert (=> d!886534 (= (choose!18828 tokens!494 lambda!118207 (h!41783 tokens!494)) _$7!1116)))

(declare-fun b_lambda!88923 () Bool)

(assert (=> (not b_lambda!88923) (not d!886534)))

(declare-fun bs!543049 () Bool)

(assert (= bs!543049 d!886534))

(assert (=> bs!543049 m!3507609))

(assert (=> d!886518 d!886534))

(assert (=> d!886518 d!886526))

(declare-fun d!886536 () Bool)

(declare-fun e!2013661 () Bool)

(assert (=> d!886536 e!2013661))

(declare-fun res!1314807 () Bool)

(assert (=> d!886536 (=> (not res!1314807) (not e!2013661))))

(declare-fun lt!1095191 () BalanceConc!21430)

(assert (=> d!886536 (= res!1314807 (= (list!12978 lt!1095191) tokens!494))))

(declare-fun fromList!632 (List!36487) Conc!10908)

(assert (=> d!886536 (= lt!1095191 (BalanceConc!21431 (fromList!632 tokens!494)))))

(assert (=> d!886536 (= (fromListB!1567 tokens!494) lt!1095191)))

(declare-fun b!3228463 () Bool)

(assert (=> b!3228463 (= e!2013661 (isBalanced!3244 (fromList!632 tokens!494)))))

(assert (= (and d!886536 res!1314807) b!3228463))

(declare-fun m!3507641 () Bool)

(assert (=> d!886536 m!3507641))

(declare-fun m!3507643 () Bool)

(assert (=> d!886536 m!3507643))

(assert (=> b!3228463 m!3507643))

(assert (=> b!3228463 m!3507643))

(declare-fun m!3507645 () Bool)

(assert (=> b!3228463 m!3507645))

(assert (=> d!886442 d!886536))

(declare-fun d!886538 () Bool)

(declare-fun lt!1095194 () Int)

(assert (=> d!886538 (= lt!1095194 (size!27430 (list!12975 (_2!21028 lt!1095143))))))

(declare-fun size!27432 (Conc!10907) Int)

(assert (=> d!886538 (= lt!1095194 (size!27432 (c!542433 (_2!21028 lt!1095143))))))

(assert (=> d!886538 (= (size!27431 (_2!21028 lt!1095143)) lt!1095194)))

(declare-fun bs!543050 () Bool)

(assert (= bs!543050 d!886538))

(assert (=> bs!543050 m!3507455))

(assert (=> bs!543050 m!3507455))

(declare-fun m!3507647 () Bool)

(assert (=> bs!543050 m!3507647))

(declare-fun m!3507649 () Bool)

(assert (=> bs!543050 m!3507649))

(assert (=> b!3228284 d!886538))

(declare-fun d!886540 () Bool)

(declare-fun lt!1095195 () Int)

(assert (=> d!886540 (= lt!1095195 (size!27430 (list!12975 (seqFromList!3595 lt!1095073))))))

(assert (=> d!886540 (= lt!1095195 (size!27432 (c!542433 (seqFromList!3595 lt!1095073))))))

(assert (=> d!886540 (= (size!27431 (seqFromList!3595 lt!1095073)) lt!1095195)))

(declare-fun bs!543051 () Bool)

(assert (= bs!543051 d!886540))

(assert (=> bs!543051 m!3507165))

(assert (=> bs!543051 m!3507457))

(assert (=> bs!543051 m!3507457))

(declare-fun m!3507651 () Bool)

(assert (=> bs!543051 m!3507651))

(declare-fun m!3507653 () Bool)

(assert (=> bs!543051 m!3507653))

(assert (=> b!3228284 d!886540))

(declare-fun d!886542 () Bool)

(assert (=> d!886542 (= (list!12975 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241))) (list!12979 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))))))

(declare-fun bs!543052 () Bool)

(assert (= bs!543052 d!886542))

(declare-fun m!3507655 () Bool)

(assert (=> bs!543052 m!3507655))

(assert (=> b!3228381 d!886542))

(declare-fun b!3228484 () Bool)

(declare-fun res!1314831 () Bool)

(declare-fun e!2013669 () Bool)

(assert (=> b!3228484 (=> (not res!1314831) (not e!2013669))))

(assert (=> b!3228484 (= res!1314831 (isBalanced!3244 (left!28315 (c!542434 lt!1095112))))))

(declare-fun d!886544 () Bool)

(declare-fun res!1314828 () Bool)

(declare-fun e!2013668 () Bool)

(assert (=> d!886544 (=> res!1314828 e!2013668)))

(assert (=> d!886544 (= res!1314828 (not ((_ is Node!10908) (c!542434 lt!1095112))))))

(assert (=> d!886544 (= (isBalanced!3244 (c!542434 lt!1095112)) e!2013668)))

(declare-fun b!3228485 () Bool)

(declare-fun res!1314833 () Bool)

(assert (=> b!3228485 (=> (not res!1314833) (not e!2013669))))

(assert (=> b!3228485 (= res!1314833 (not (isEmpty!20454 (left!28315 (c!542434 lt!1095112)))))))

(declare-fun b!3228486 () Bool)

(declare-fun res!1314830 () Bool)

(assert (=> b!3228486 (=> (not res!1314830) (not e!2013669))))

(declare-fun height!1577 (Conc!10908) Int)

(assert (=> b!3228486 (= res!1314830 (<= (- (height!1577 (left!28315 (c!542434 lt!1095112))) (height!1577 (right!28645 (c!542434 lt!1095112)))) 1))))

(declare-fun b!3228487 () Bool)

(declare-fun res!1314832 () Bool)

(assert (=> b!3228487 (=> (not res!1314832) (not e!2013669))))

(assert (=> b!3228487 (= res!1314832 (isBalanced!3244 (right!28645 (c!542434 lt!1095112))))))

(declare-fun b!3228488 () Bool)

(assert (=> b!3228488 (= e!2013668 e!2013669)))

(declare-fun res!1314829 () Bool)

(assert (=> b!3228488 (=> (not res!1314829) (not e!2013669))))

(assert (=> b!3228488 (= res!1314829 (<= (- 1) (- (height!1577 (left!28315 (c!542434 lt!1095112))) (height!1577 (right!28645 (c!542434 lt!1095112))))))))

(declare-fun b!3228489 () Bool)

(assert (=> b!3228489 (= e!2013669 (not (isEmpty!20454 (right!28645 (c!542434 lt!1095112)))))))

(assert (= (and d!886544 (not res!1314828)) b!3228488))

(assert (= (and b!3228488 res!1314829) b!3228486))

(assert (= (and b!3228486 res!1314830) b!3228484))

(assert (= (and b!3228484 res!1314831) b!3228487))

(assert (= (and b!3228487 res!1314832) b!3228485))

(assert (= (and b!3228485 res!1314833) b!3228489))

(declare-fun m!3507657 () Bool)

(assert (=> b!3228488 m!3507657))

(declare-fun m!3507659 () Bool)

(assert (=> b!3228488 m!3507659))

(assert (=> b!3228486 m!3507657))

(assert (=> b!3228486 m!3507659))

(declare-fun m!3507661 () Bool)

(assert (=> b!3228487 m!3507661))

(declare-fun m!3507663 () Bool)

(assert (=> b!3228484 m!3507663))

(declare-fun m!3507665 () Bool)

(assert (=> b!3228485 m!3507665))

(declare-fun m!3507667 () Bool)

(assert (=> b!3228489 m!3507667))

(assert (=> b!3228142 d!886544))

(declare-fun d!886546 () Bool)

(assert (=> d!886546 (= (list!12975 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494)))) (list!12979 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))))))

(declare-fun bs!543053 () Bool)

(assert (= bs!543053 d!886546))

(declare-fun m!3507669 () Bool)

(assert (=> bs!543053 m!3507669))

(assert (=> b!3228240 d!886546))

(declare-fun d!886548 () Bool)

(assert (=> d!886548 (= (inv!49246 (tag!5798 (h!41782 (t!241331 rules!2135)))) (= (mod (str.len (value!170540 (tag!5798 (h!41782 (t!241331 rules!2135))))) 2) 0))))

(assert (=> b!3228441 d!886548))

(declare-fun d!886550 () Bool)

(declare-fun res!1314834 () Bool)

(declare-fun e!2013670 () Bool)

(assert (=> d!886550 (=> (not res!1314834) (not e!2013670))))

(assert (=> d!886550 (= res!1314834 (semiInverseModEq!2171 (toChars!7233 (transformation!5266 (h!41782 (t!241331 rules!2135)))) (toValue!7374 (transformation!5266 (h!41782 (t!241331 rules!2135))))))))

(assert (=> d!886550 (= (inv!49249 (transformation!5266 (h!41782 (t!241331 rules!2135)))) e!2013670)))

(declare-fun b!3228490 () Bool)

(assert (=> b!3228490 (= e!2013670 (equivClasses!2070 (toChars!7233 (transformation!5266 (h!41782 (t!241331 rules!2135)))) (toValue!7374 (transformation!5266 (h!41782 (t!241331 rules!2135))))))))

(assert (= (and d!886550 res!1314834) b!3228490))

(declare-fun m!3507671 () Bool)

(assert (=> d!886550 m!3507671))

(declare-fun m!3507673 () Bool)

(assert (=> b!3228490 m!3507673))

(assert (=> b!3228441 d!886550))

(declare-fun b!3228503 () Bool)

(declare-fun e!2013680 () Bool)

(declare-fun e!2013679 () Bool)

(assert (=> b!3228503 (= e!2013680 e!2013679)))

(declare-fun res!1314843 () Bool)

(assert (=> b!3228503 (= res!1314843 (not ((_ is Cons!36362) rules!2135)))))

(assert (=> b!3228503 (=> res!1314843 e!2013679)))

(declare-fun b!3228504 () Bool)

(declare-fun e!2013678 () Bool)

(assert (=> b!3228504 (= e!2013680 e!2013678)))

(declare-fun res!1314844 () Bool)

(declare-fun rulesUseDisjointChars!282 (Rule!10332 Rule!10332) Bool)

(assert (=> b!3228504 (= res!1314844 (rulesUseDisjointChars!282 (h!41782 rules!2135) (h!41782 rules!2135)))))

(assert (=> b!3228504 (=> (not res!1314844) (not e!2013678))))

(declare-fun b!3228505 () Bool)

(declare-fun call!233205 () Bool)

(assert (=> b!3228505 (= e!2013678 call!233205)))

(declare-fun d!886552 () Bool)

(declare-fun c!542481 () Bool)

(assert (=> d!886552 (= c!542481 (and ((_ is Cons!36362) rules!2135) (not (= (isSeparator!5266 (h!41782 rules!2135)) (isSeparator!5266 (h!41782 rules!2135))))))))

(assert (=> d!886552 (= (ruleDisjointCharsFromAllFromOtherType!607 (h!41782 rules!2135) rules!2135) e!2013680)))

(declare-fun bm!233200 () Bool)

(assert (=> bm!233200 (= call!233205 (ruleDisjointCharsFromAllFromOtherType!607 (h!41782 rules!2135) (t!241331 rules!2135)))))

(declare-fun b!3228506 () Bool)

(assert (=> b!3228506 (= e!2013679 call!233205)))

(assert (= (and d!886552 c!542481) b!3228504))

(assert (= (and d!886552 (not c!542481)) b!3228503))

(assert (= (and b!3228504 res!1314844) b!3228505))

(assert (= (and b!3228503 (not res!1314843)) b!3228506))

(assert (= (or b!3228505 b!3228506) bm!233200))

(declare-fun m!3507695 () Bool)

(assert (=> b!3228504 m!3507695))

(declare-fun m!3507697 () Bool)

(assert (=> bm!233200 m!3507697))

(assert (=> b!3228400 d!886552))

(declare-fun d!886558 () Bool)

(assert (=> d!886558 true))

(declare-fun lambda!118220 () Int)

(declare-fun order!18767 () Int)

(declare-fun dynLambda!14796 (Int Int) Int)

(assert (=> d!886558 (< (dynLambda!14791 order!18761 (toValue!7374 (transformation!5266 (rule!7724 (h!41783 tokens!494))))) (dynLambda!14796 order!18767 lambda!118220))))

(declare-fun Forall2!875 (Int) Bool)

(assert (=> d!886558 (= (equivClasses!2070 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (toValue!7374 (transformation!5266 (rule!7724 (h!41783 tokens!494))))) (Forall2!875 lambda!118220))))

(declare-fun bs!543054 () Bool)

(assert (= bs!543054 d!886558))

(declare-fun m!3507699 () Bool)

(assert (=> bs!543054 m!3507699))

(assert (=> b!3228232 d!886558))

(declare-fun d!886560 () Bool)

(declare-fun lt!1095203 () Int)

(declare-fun size!27433 (List!36487) Int)

(assert (=> d!886560 (= lt!1095203 (size!27433 (list!12978 lt!1095069)))))

(declare-fun size!27434 (Conc!10908) Int)

(assert (=> d!886560 (= lt!1095203 (size!27434 (c!542434 lt!1095069)))))

(assert (=> d!886560 (= (size!27429 lt!1095069) lt!1095203)))

(declare-fun bs!543055 () Bool)

(assert (= bs!543055 d!886560))

(assert (=> bs!543055 m!3507205))

(assert (=> bs!543055 m!3507205))

(declare-fun m!3507701 () Bool)

(assert (=> bs!543055 m!3507701))

(declare-fun m!3507703 () Bool)

(assert (=> bs!543055 m!3507703))

(assert (=> b!3228125 d!886560))

(declare-fun d!886562 () Bool)

(assert (=> d!886562 (= (list!12975 lt!1095167) (list!12979 (c!542433 lt!1095167)))))

(declare-fun bs!543056 () Bool)

(assert (= bs!543056 d!886562))

(declare-fun m!3507705 () Bool)

(assert (=> bs!543056 m!3507705))

(assert (=> d!886484 d!886562))

(declare-fun d!886564 () Bool)

(declare-fun res!1314853 () Bool)

(declare-fun e!2013697 () Bool)

(assert (=> d!886564 (=> res!1314853 e!2013697)))

(assert (=> d!886564 (= res!1314853 ((_ is Nil!36362) rules!2135))))

(assert (=> d!886564 (= (noDuplicateTag!1927 thiss!18206 rules!2135 Nil!36365) e!2013697)))

(declare-fun b!3228533 () Bool)

(declare-fun e!2013698 () Bool)

(assert (=> b!3228533 (= e!2013697 e!2013698)))

(declare-fun res!1314854 () Bool)

(assert (=> b!3228533 (=> (not res!1314854) (not e!2013698))))

(declare-fun contains!6528 (List!36489 String!40814) Bool)

(assert (=> b!3228533 (= res!1314854 (not (contains!6528 Nil!36365 (tag!5798 (h!41782 rules!2135)))))))

(declare-fun b!3228534 () Bool)

(assert (=> b!3228534 (= e!2013698 (noDuplicateTag!1927 thiss!18206 (t!241331 rules!2135) (Cons!36365 (tag!5798 (h!41782 rules!2135)) Nil!36365)))))

(assert (= (and d!886564 (not res!1314853)) b!3228533))

(assert (= (and b!3228533 res!1314854) b!3228534))

(declare-fun m!3507707 () Bool)

(assert (=> b!3228533 m!3507707))

(declare-fun m!3507709 () Bool)

(assert (=> b!3228534 m!3507709))

(assert (=> b!3228235 d!886564))

(declare-fun d!886566 () Bool)

(declare-fun list!12980 (Conc!10908) List!36487)

(assert (=> d!886566 (= (list!12978 lt!1095112) (list!12980 (c!542434 lt!1095112)))))

(declare-fun bs!543057 () Bool)

(assert (= bs!543057 d!886566))

(declare-fun m!3507711 () Bool)

(assert (=> bs!543057 m!3507711))

(assert (=> d!886412 d!886566))

(declare-fun d!886568 () Bool)

(declare-fun e!2013706 () Bool)

(assert (=> d!886568 e!2013706))

(declare-fun res!1314858 () Bool)

(assert (=> d!886568 (=> (not res!1314858) (not e!2013706))))

(declare-fun lt!1095207 () BalanceConc!21430)

(assert (=> d!886568 (= res!1314858 (= (list!12978 lt!1095207) (Cons!36363 (h!41783 tokens!494) Nil!36363)))))

(declare-fun choose!18829 (Token!9898) BalanceConc!21430)

(assert (=> d!886568 (= lt!1095207 (choose!18829 (h!41783 tokens!494)))))

(assert (=> d!886568 (= (singleton!1009 (h!41783 tokens!494)) lt!1095207)))

(declare-fun b!3228546 () Bool)

(assert (=> b!3228546 (= e!2013706 (isBalanced!3244 (c!542434 lt!1095207)))))

(assert (= (and d!886568 res!1314858) b!3228546))

(declare-fun m!3507723 () Bool)

(assert (=> d!886568 m!3507723))

(declare-fun m!3507725 () Bool)

(assert (=> d!886568 m!3507725))

(declare-fun m!3507727 () Bool)

(assert (=> b!3228546 m!3507727))

(assert (=> d!886412 d!886568))

(declare-fun d!886572 () Bool)

(assert (=> d!886572 (= (list!12975 lt!1095105) (list!12979 (c!542433 lt!1095105)))))

(declare-fun bs!543058 () Bool)

(assert (= bs!543058 d!886572))

(declare-fun m!3507729 () Bool)

(assert (=> bs!543058 m!3507729))

(assert (=> d!886404 d!886572))

(declare-fun d!886574 () Bool)

(declare-fun c!542498 () Bool)

(assert (=> d!886574 (= c!542498 ((_ is Cons!36363) (list!12978 lt!1095069)))))

(declare-fun e!2013712 () List!36485)

(assert (=> d!886574 (= (printList!1405 thiss!18206 (list!12978 lt!1095069)) e!2013712)))

(declare-fun b!3228556 () Bool)

(assert (=> b!3228556 (= e!2013712 (++!8756 (list!12975 (charsOf!3282 (h!41783 (list!12978 lt!1095069)))) (printList!1405 thiss!18206 (t!241332 (list!12978 lt!1095069)))))))

(declare-fun b!3228557 () Bool)

(assert (=> b!3228557 (= e!2013712 Nil!36361)))

(assert (= (and d!886574 c!542498) b!3228556))

(assert (= (and d!886574 (not c!542498)) b!3228557))

(declare-fun m!3507731 () Bool)

(assert (=> b!3228556 m!3507731))

(assert (=> b!3228556 m!3507731))

(declare-fun m!3507733 () Bool)

(assert (=> b!3228556 m!3507733))

(declare-fun m!3507735 () Bool)

(assert (=> b!3228556 m!3507735))

(assert (=> b!3228556 m!3507733))

(assert (=> b!3228556 m!3507735))

(declare-fun m!3507737 () Bool)

(assert (=> b!3228556 m!3507737))

(assert (=> d!886404 d!886574))

(declare-fun d!886576 () Bool)

(assert (=> d!886576 (= (list!12978 lt!1095069) (list!12980 (c!542434 lt!1095069)))))

(declare-fun bs!543059 () Bool)

(assert (= bs!543059 d!886576))

(declare-fun m!3507739 () Bool)

(assert (=> bs!543059 m!3507739))

(assert (=> d!886404 d!886576))

(assert (=> d!886404 d!886400))

(declare-fun e!2013718 () List!36485)

(declare-fun b!3228569 () Bool)

(assert (=> b!3228569 (= e!2013718 (++!8756 (list!12979 (left!28314 (c!542433 (printWithSeparatorToken!72 thiss!18206 lt!1095068 separatorToken!241)))) (list!12979 (right!28644 (c!542433 (printWithSeparatorToken!72 thiss!18206 lt!1095068 separatorToken!241))))))))

(declare-fun b!3228568 () Bool)

(declare-fun list!12981 (IArray!21819) List!36485)

(assert (=> b!3228568 (= e!2013718 (list!12981 (xs!14025 (c!542433 (printWithSeparatorToken!72 thiss!18206 lt!1095068 separatorToken!241)))))))

(declare-fun b!3228567 () Bool)

(declare-fun e!2013717 () List!36485)

(assert (=> b!3228567 (= e!2013717 e!2013718)))

(declare-fun c!542504 () Bool)

(assert (=> b!3228567 (= c!542504 ((_ is Leaf!17151) (c!542433 (printWithSeparatorToken!72 thiss!18206 lt!1095068 separatorToken!241))))))

(declare-fun c!542503 () Bool)

(declare-fun d!886578 () Bool)

(assert (=> d!886578 (= c!542503 ((_ is Empty!10907) (c!542433 (printWithSeparatorToken!72 thiss!18206 lt!1095068 separatorToken!241))))))

(assert (=> d!886578 (= (list!12979 (c!542433 (printWithSeparatorToken!72 thiss!18206 lt!1095068 separatorToken!241))) e!2013717)))

(declare-fun b!3228566 () Bool)

(assert (=> b!3228566 (= e!2013717 Nil!36361)))

(assert (= (and d!886578 c!542503) b!3228566))

(assert (= (and d!886578 (not c!542503)) b!3228567))

(assert (= (and b!3228567 c!542504) b!3228568))

(assert (= (and b!3228567 (not c!542504)) b!3228569))

(declare-fun m!3507751 () Bool)

(assert (=> b!3228569 m!3507751))

(declare-fun m!3507753 () Bool)

(assert (=> b!3228569 m!3507753))

(assert (=> b!3228569 m!3507751))

(assert (=> b!3228569 m!3507753))

(declare-fun m!3507755 () Bool)

(assert (=> b!3228569 m!3507755))

(declare-fun m!3507757 () Bool)

(assert (=> b!3228568 m!3507757))

(assert (=> d!886486 d!886578))

(declare-fun d!886584 () Bool)

(declare-fun isBalanced!3247 (Conc!10907) Bool)

(assert (=> d!886584 (= (inv!49254 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494)))) (isBalanced!3247 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))))))

(declare-fun bs!543060 () Bool)

(assert (= bs!543060 d!886584))

(declare-fun m!3507759 () Bool)

(assert (=> bs!543060 m!3507759))

(assert (=> tb!159841 d!886584))

(declare-fun d!886586 () Bool)

(declare-fun charsToBigInt!1 (List!36484) Int)

(assert (=> d!886586 (= (inv!17 (value!170541 (h!41783 tokens!494))) (= (charsToBigInt!1 (text!38920 (value!170541 (h!41783 tokens!494)))) (value!170533 (value!170541 (h!41783 tokens!494)))))))

(declare-fun bs!543061 () Bool)

(assert (= bs!543061 d!886586))

(declare-fun m!3507761 () Bool)

(assert (=> bs!543061 m!3507761))

(assert (=> b!3228111 d!886586))

(declare-fun d!886588 () Bool)

(declare-fun lt!1095215 () Token!9898)

(assert (=> d!886588 (= lt!1095215 (apply!8301 (list!12978 (_1!21028 lt!1095184)) 0))))

(declare-fun apply!8303 (Conc!10908 Int) Token!9898)

(assert (=> d!886588 (= lt!1095215 (apply!8303 (c!542434 (_1!21028 lt!1095184)) 0))))

(declare-fun e!2013725 () Bool)

(assert (=> d!886588 e!2013725))

(declare-fun res!1314865 () Bool)

(assert (=> d!886588 (=> (not res!1314865) (not e!2013725))))

(assert (=> d!886588 (= res!1314865 (<= 0 0))))

(assert (=> d!886588 (= (apply!8300 (_1!21028 lt!1095184) 0) lt!1095215)))

(declare-fun b!3228576 () Bool)

(assert (=> b!3228576 (= e!2013725 (< 0 (size!27429 (_1!21028 lt!1095184))))))

(assert (= (and d!886588 res!1314865) b!3228576))

(declare-fun m!3507773 () Bool)

(assert (=> d!886588 m!3507773))

(assert (=> d!886588 m!3507773))

(declare-fun m!3507775 () Bool)

(assert (=> d!886588 m!3507775))

(declare-fun m!3507777 () Bool)

(assert (=> d!886588 m!3507777))

(assert (=> b!3228576 m!3507595))

(assert (=> b!3228384 d!886588))

(declare-fun b!3228580 () Bool)

(declare-fun e!2013727 () List!36485)

(assert (=> b!3228580 (= e!2013727 (++!8756 (list!12979 (left!28314 (c!542433 lt!1095070))) (list!12979 (right!28644 (c!542433 lt!1095070)))))))

(declare-fun b!3228579 () Bool)

(assert (=> b!3228579 (= e!2013727 (list!12981 (xs!14025 (c!542433 lt!1095070))))))

(declare-fun b!3228578 () Bool)

(declare-fun e!2013726 () List!36485)

(assert (=> b!3228578 (= e!2013726 e!2013727)))

(declare-fun c!542506 () Bool)

(assert (=> b!3228578 (= c!542506 ((_ is Leaf!17151) (c!542433 lt!1095070)))))

(declare-fun d!886594 () Bool)

(declare-fun c!542505 () Bool)

(assert (=> d!886594 (= c!542505 ((_ is Empty!10907) (c!542433 lt!1095070)))))

(assert (=> d!886594 (= (list!12979 (c!542433 lt!1095070)) e!2013726)))

(declare-fun b!3228577 () Bool)

(assert (=> b!3228577 (= e!2013726 Nil!36361)))

(assert (= (and d!886594 c!542505) b!3228577))

(assert (= (and d!886594 (not c!542505)) b!3228578))

(assert (= (and b!3228578 c!542506) b!3228579))

(assert (= (and b!3228578 (not c!542506)) b!3228580))

(declare-fun m!3507779 () Bool)

(assert (=> b!3228580 m!3507779))

(declare-fun m!3507781 () Bool)

(assert (=> b!3228580 m!3507781))

(assert (=> b!3228580 m!3507779))

(assert (=> b!3228580 m!3507781))

(declare-fun m!3507783 () Bool)

(assert (=> b!3228580 m!3507783))

(declare-fun m!3507785 () Bool)

(assert (=> b!3228579 m!3507785))

(assert (=> d!886406 d!886594))

(declare-fun bs!543078 () Bool)

(declare-fun d!886596 () Bool)

(assert (= bs!543078 (and d!886596 b!3228078)))

(declare-fun lambda!118233 () Int)

(assert (=> bs!543078 (not (= lambda!118233 lambda!118207))))

(declare-fun bs!543079 () Bool)

(assert (= bs!543079 (and d!886596 d!886422)))

(assert (=> bs!543079 (= lambda!118233 lambda!118217)))

(declare-fun b!3228696 () Bool)

(declare-fun e!2013804 () Bool)

(assert (=> b!3228696 (= e!2013804 true)))

(declare-fun b!3228695 () Bool)

(declare-fun e!2013803 () Bool)

(assert (=> b!3228695 (= e!2013803 e!2013804)))

(declare-fun b!3228694 () Bool)

(declare-fun e!2013802 () Bool)

(assert (=> b!3228694 (= e!2013802 e!2013803)))

(assert (=> d!886596 e!2013802))

(assert (= b!3228695 b!3228696))

(assert (= b!3228694 b!3228695))

(assert (= (and d!886596 ((_ is Cons!36362) rules!2135)) b!3228694))

(assert (=> b!3228696 (< (dynLambda!14791 order!18761 (toValue!7374 (transformation!5266 (h!41782 rules!2135)))) (dynLambda!14792 order!18763 lambda!118233))))

(assert (=> b!3228696 (< (dynLambda!14793 order!18765 (toChars!7233 (transformation!5266 (h!41782 rules!2135)))) (dynLambda!14792 order!18763 lambda!118233))))

(assert (=> d!886596 true))

(declare-fun lt!1095267 () Bool)

(assert (=> d!886596 (= lt!1095267 (forall!7470 (list!12978 lt!1095068) lambda!118233))))

(declare-fun e!2013798 () Bool)

(assert (=> d!886596 (= lt!1095267 e!2013798)))

(declare-fun res!1314911 () Bool)

(assert (=> d!886596 (=> res!1314911 e!2013798)))

(assert (=> d!886596 (= res!1314911 (not ((_ is Cons!36363) (list!12978 lt!1095068))))))

(assert (=> d!886596 (not (isEmpty!20447 rules!2135))))

(assert (=> d!886596 (= (rulesProduceEachTokenIndividuallyList!1743 thiss!18206 rules!2135 (list!12978 lt!1095068)) lt!1095267)))

(declare-fun b!3228687 () Bool)

(declare-fun e!2013797 () Bool)

(assert (=> b!3228687 (= e!2013798 e!2013797)))

(declare-fun res!1314912 () Bool)

(assert (=> b!3228687 (=> (not res!1314912) (not e!2013797))))

(assert (=> b!3228687 (= res!1314912 (rulesProduceIndividualToken!2347 thiss!18206 rules!2135 (h!41783 (list!12978 lt!1095068))))))

(declare-fun b!3228688 () Bool)

(assert (=> b!3228688 (= e!2013797 (rulesProduceEachTokenIndividuallyList!1743 thiss!18206 rules!2135 (t!241332 (list!12978 lt!1095068))))))

(assert (= (and d!886596 (not res!1314911)) b!3228687))

(assert (= (and b!3228687 res!1314912) b!3228688))

(assert (=> d!886596 m!3507355))

(declare-fun m!3507983 () Bool)

(assert (=> d!886596 m!3507983))

(assert (=> d!886596 m!3507125))

(declare-fun m!3507985 () Bool)

(assert (=> b!3228687 m!3507985))

(declare-fun m!3507987 () Bool)

(assert (=> b!3228688 m!3507987))

(assert (=> b!3228216 d!886596))

(declare-fun d!886672 () Bool)

(assert (=> d!886672 (= (list!12978 lt!1095068) (list!12980 (c!542434 lt!1095068)))))

(declare-fun bs!543081 () Bool)

(assert (= bs!543081 d!886672))

(declare-fun m!3507989 () Bool)

(assert (=> bs!543081 m!3507989))

(assert (=> b!3228216 d!886672))

(declare-fun d!886674 () Bool)

(declare-fun c!542539 () Bool)

(assert (=> d!886674 (= c!542539 ((_ is Node!10907) (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))))))

(declare-fun e!2013813 () Bool)

(assert (=> d!886674 (= (inv!49253 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))) e!2013813)))

(declare-fun b!3228707 () Bool)

(declare-fun inv!49255 (Conc!10907) Bool)

(assert (=> b!3228707 (= e!2013813 (inv!49255 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))))))

(declare-fun b!3228708 () Bool)

(declare-fun e!2013815 () Bool)

(assert (=> b!3228708 (= e!2013813 e!2013815)))

(declare-fun res!1314921 () Bool)

(assert (=> b!3228708 (= res!1314921 (not ((_ is Leaf!17151) (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494)))))))))

(assert (=> b!3228708 (=> res!1314921 e!2013815)))

(declare-fun b!3228710 () Bool)

(declare-fun inv!49256 (Conc!10907) Bool)

(assert (=> b!3228710 (= e!2013815 (inv!49256 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))))))

(assert (= (and d!886674 c!542539) b!3228707))

(assert (= (and d!886674 (not c!542539)) b!3228708))

(assert (= (and b!3228708 (not res!1314921)) b!3228710))

(declare-fun m!3507997 () Bool)

(assert (=> b!3228707 m!3507997))

(declare-fun m!3508001 () Bool)

(assert (=> b!3228710 m!3508001))

(assert (=> b!3228246 d!886674))

(declare-fun d!886680 () Bool)

(declare-fun res!1314923 () Bool)

(declare-fun e!2013817 () Bool)

(assert (=> d!886680 (=> res!1314923 e!2013817)))

(assert (=> d!886680 (= res!1314923 ((_ is Nil!36363) (list!12978 lt!1095068)))))

(assert (=> d!886680 (= (forall!7470 (list!12978 lt!1095068) lambda!118217) e!2013817)))

(declare-fun b!3228712 () Bool)

(declare-fun e!2013818 () Bool)

(assert (=> b!3228712 (= e!2013817 e!2013818)))

(declare-fun res!1314924 () Bool)

(assert (=> b!3228712 (=> (not res!1314924) (not e!2013818))))

(assert (=> b!3228712 (= res!1314924 (dynLambda!14795 lambda!118217 (h!41783 (list!12978 lt!1095068))))))

(declare-fun b!3228713 () Bool)

(assert (=> b!3228713 (= e!2013818 (forall!7470 (t!241332 (list!12978 lt!1095068)) lambda!118217))))

(assert (= (and d!886680 (not res!1314923)) b!3228712))

(assert (= (and b!3228712 res!1314924) b!3228713))

(declare-fun b_lambda!88933 () Bool)

(assert (=> (not b_lambda!88933) (not b!3228712)))

(declare-fun m!3508007 () Bool)

(assert (=> b!3228712 m!3508007))

(declare-fun m!3508009 () Bool)

(assert (=> b!3228713 m!3508009))

(assert (=> d!886422 d!886680))

(assert (=> d!886422 d!886672))

(declare-fun d!886684 () Bool)

(declare-fun lt!1095277 () Bool)

(assert (=> d!886684 (= lt!1095277 (forall!7470 (list!12978 lt!1095068) lambda!118217))))

(declare-fun forall!7473 (Conc!10908 Int) Bool)

(assert (=> d!886684 (= lt!1095277 (forall!7473 (c!542434 lt!1095068) lambda!118217))))

(assert (=> d!886684 (= (forall!7472 lt!1095068 lambda!118217) lt!1095277)))

(declare-fun bs!543084 () Bool)

(assert (= bs!543084 d!886684))

(assert (=> bs!543084 m!3507355))

(assert (=> bs!543084 m!3507355))

(assert (=> bs!543084 m!3507357))

(declare-fun m!3508011 () Bool)

(assert (=> bs!543084 m!3508011))

(assert (=> d!886422 d!886684))

(assert (=> d!886422 d!886524))

(declare-fun d!886686 () Bool)

(assert (=> d!886686 (= (inv!49246 (tag!5798 (rule!7724 (h!41783 (t!241332 tokens!494))))) (= (mod (str.len (value!170540 (tag!5798 (rule!7724 (h!41783 (t!241332 tokens!494)))))) 2) 0))))

(assert (=> b!3228459 d!886686))

(declare-fun d!886688 () Bool)

(declare-fun res!1314937 () Bool)

(declare-fun e!2013823 () Bool)

(assert (=> d!886688 (=> (not res!1314937) (not e!2013823))))

(assert (=> d!886688 (= res!1314937 (semiInverseModEq!2171 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (toValue!7374 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494)))))))))

(assert (=> d!886688 (= (inv!49249 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) e!2013823)))

(declare-fun b!3228726 () Bool)

(assert (=> b!3228726 (= e!2013823 (equivClasses!2070 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (toValue!7374 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494)))))))))

(assert (= (and d!886688 res!1314937) b!3228726))

(declare-fun m!3508013 () Bool)

(assert (=> d!886688 m!3508013))

(declare-fun m!3508015 () Bool)

(assert (=> b!3228726 m!3508015))

(assert (=> b!3228459 d!886688))

(declare-fun d!886690 () Bool)

(declare-fun lt!1095280 () Int)

(assert (=> d!886690 (>= lt!1095280 0)))

(declare-fun e!2013828 () Int)

(assert (=> d!886690 (= lt!1095280 e!2013828)))

(declare-fun c!542542 () Bool)

(assert (=> d!886690 (= c!542542 ((_ is Nil!36361) lt!1095173))))

(assert (=> d!886690 (= (size!27430 lt!1095173) lt!1095280)))

(declare-fun b!3228737 () Bool)

(assert (=> b!3228737 (= e!2013828 0)))

(declare-fun b!3228738 () Bool)

(assert (=> b!3228738 (= e!2013828 (+ 1 (size!27430 (t!241330 lt!1095173))))))

(assert (= (and d!886690 c!542542) b!3228737))

(assert (= (and d!886690 (not c!542542)) b!3228738))

(declare-fun m!3508017 () Bool)

(assert (=> b!3228738 m!3508017))

(assert (=> b!3228311 d!886690))

(declare-fun d!886692 () Bool)

(declare-fun lt!1095281 () Int)

(assert (=> d!886692 (>= lt!1095281 0)))

(declare-fun e!2013829 () Int)

(assert (=> d!886692 (= lt!1095281 e!2013829)))

(declare-fun c!542543 () Bool)

(assert (=> d!886692 (= c!542543 ((_ is Nil!36361) lt!1095073))))

(assert (=> d!886692 (= (size!27430 lt!1095073) lt!1095281)))

(declare-fun b!3228739 () Bool)

(assert (=> b!3228739 (= e!2013829 0)))

(declare-fun b!3228740 () Bool)

(assert (=> b!3228740 (= e!2013829 (+ 1 (size!27430 (t!241330 lt!1095073))))))

(assert (= (and d!886692 c!542543) b!3228739))

(assert (= (and d!886692 (not c!542543)) b!3228740))

(declare-fun m!3508019 () Bool)

(assert (=> b!3228740 m!3508019))

(assert (=> b!3228311 d!886692))

(declare-fun d!886694 () Bool)

(declare-fun lt!1095282 () Int)

(assert (=> d!886694 (>= lt!1095282 0)))

(declare-fun e!2013830 () Int)

(assert (=> d!886694 (= lt!1095282 e!2013830)))

(declare-fun c!542544 () Bool)

(assert (=> d!886694 (= c!542544 ((_ is Nil!36361) (list!12975 (charsOf!3282 separatorToken!241))))))

(assert (=> d!886694 (= (size!27430 (list!12975 (charsOf!3282 separatorToken!241))) lt!1095282)))

(declare-fun b!3228741 () Bool)

(assert (=> b!3228741 (= e!2013830 0)))

(declare-fun b!3228742 () Bool)

(assert (=> b!3228742 (= e!2013830 (+ 1 (size!27430 (t!241330 (list!12975 (charsOf!3282 separatorToken!241))))))))

(assert (= (and d!886694 c!542544) b!3228741))

(assert (= (and d!886694 (not c!542544)) b!3228742))

(declare-fun m!3508027 () Bool)

(assert (=> b!3228742 m!3508027))

(assert (=> b!3228311 d!886694))

(declare-fun d!886696 () Bool)

(assert (=> d!886696 (= (list!12975 lt!1095097) (list!12979 (c!542433 lt!1095097)))))

(declare-fun bs!543085 () Bool)

(assert (= bs!543085 d!886696))

(declare-fun m!3508035 () Bool)

(assert (=> bs!543085 m!3508035))

(assert (=> d!886400 d!886696))

(assert (=> d!886400 d!886560))

(declare-fun d!886700 () Bool)

(assert (=> d!886700 (= (list!12975 (BalanceConc!21429 Empty!10907)) (list!12979 (c!542433 (BalanceConc!21429 Empty!10907))))))

(declare-fun bs!543086 () Bool)

(assert (= bs!543086 d!886700))

(declare-fun m!3508037 () Bool)

(assert (=> bs!543086 m!3508037))

(assert (=> d!886400 d!886700))

(declare-fun d!886702 () Bool)

(assert (=> d!886702 (= (dropList!1093 lt!1095069 0) (drop!1876 (list!12980 (c!542434 lt!1095069)) 0))))

(declare-fun bs!543088 () Bool)

(assert (= bs!543088 d!886702))

(assert (=> bs!543088 m!3507739))

(assert (=> bs!543088 m!3507739))

(declare-fun m!3508047 () Bool)

(assert (=> bs!543088 m!3508047))

(assert (=> d!886400 d!886702))

(declare-fun d!886706 () Bool)

(declare-fun lt!1095294 () List!36485)

(assert (=> d!886706 (= lt!1095294 (++!8756 (list!12975 (BalanceConc!21429 Empty!10907)) (printList!1405 thiss!18206 (dropList!1093 lt!1095069 0))))))

(declare-fun e!2013844 () List!36485)

(assert (=> d!886706 (= lt!1095294 e!2013844)))

(declare-fun c!542549 () Bool)

(assert (=> d!886706 (= c!542549 ((_ is Cons!36363) (dropList!1093 lt!1095069 0)))))

(assert (=> d!886706 (= (printListTailRec!576 thiss!18206 (dropList!1093 lt!1095069 0) (list!12975 (BalanceConc!21429 Empty!10907))) lt!1095294)))

(declare-fun b!3228760 () Bool)

(assert (=> b!3228760 (= e!2013844 (printListTailRec!576 thiss!18206 (t!241332 (dropList!1093 lt!1095069 0)) (++!8756 (list!12975 (BalanceConc!21429 Empty!10907)) (list!12975 (charsOf!3282 (h!41783 (dropList!1093 lt!1095069 0)))))))))

(declare-fun lt!1095297 () List!36485)

(assert (=> b!3228760 (= lt!1095297 (list!12975 (charsOf!3282 (h!41783 (dropList!1093 lt!1095069 0)))))))

(declare-fun lt!1095295 () List!36485)

(assert (=> b!3228760 (= lt!1095295 (printList!1405 thiss!18206 (t!241332 (dropList!1093 lt!1095069 0))))))

(declare-fun lt!1095293 () Unit!50946)

(declare-fun lemmaConcatAssociativity!1789 (List!36485 List!36485 List!36485) Unit!50946)

(assert (=> b!3228760 (= lt!1095293 (lemmaConcatAssociativity!1789 (list!12975 (BalanceConc!21429 Empty!10907)) lt!1095297 lt!1095295))))

(assert (=> b!3228760 (= (++!8756 (++!8756 (list!12975 (BalanceConc!21429 Empty!10907)) lt!1095297) lt!1095295) (++!8756 (list!12975 (BalanceConc!21429 Empty!10907)) (++!8756 lt!1095297 lt!1095295)))))

(declare-fun lt!1095296 () Unit!50946)

(assert (=> b!3228760 (= lt!1095296 lt!1095293)))

(declare-fun b!3228761 () Bool)

(assert (=> b!3228761 (= e!2013844 (list!12975 (BalanceConc!21429 Empty!10907)))))

(assert (= (and d!886706 c!542549) b!3228760))

(assert (= (and d!886706 (not c!542549)) b!3228761))

(assert (=> d!886706 m!3507197))

(declare-fun m!3508071 () Bool)

(assert (=> d!886706 m!3508071))

(assert (=> d!886706 m!3507199))

(assert (=> d!886706 m!3508071))

(declare-fun m!3508073 () Bool)

(assert (=> d!886706 m!3508073))

(declare-fun m!3508075 () Bool)

(assert (=> b!3228760 m!3508075))

(declare-fun m!3508077 () Bool)

(assert (=> b!3228760 m!3508077))

(declare-fun m!3508079 () Bool)

(assert (=> b!3228760 m!3508079))

(declare-fun m!3508081 () Bool)

(assert (=> b!3228760 m!3508081))

(assert (=> b!3228760 m!3507199))

(assert (=> b!3228760 m!3508079))

(declare-fun m!3508083 () Bool)

(assert (=> b!3228760 m!3508083))

(declare-fun m!3508085 () Bool)

(assert (=> b!3228760 m!3508085))

(assert (=> b!3228760 m!3507199))

(declare-fun m!3508087 () Bool)

(assert (=> b!3228760 m!3508087))

(assert (=> b!3228760 m!3508085))

(declare-fun m!3508089 () Bool)

(assert (=> b!3228760 m!3508089))

(declare-fun m!3508091 () Bool)

(assert (=> b!3228760 m!3508091))

(assert (=> b!3228760 m!3507199))

(assert (=> b!3228760 m!3508091))

(declare-fun m!3508095 () Bool)

(assert (=> b!3228760 m!3508095))

(assert (=> b!3228760 m!3507199))

(assert (=> b!3228760 m!3508089))

(assert (=> b!3228760 m!3508075))

(assert (=> d!886400 d!886706))

(declare-fun d!886728 () Bool)

(declare-fun e!2013847 () Bool)

(assert (=> d!886728 e!2013847))

(declare-fun res!1314955 () Bool)

(assert (=> d!886728 (=> (not res!1314955) (not e!2013847))))

(declare-fun lt!1095303 () BalanceConc!21428)

(assert (=> d!886728 (= res!1314955 (= (list!12975 lt!1095303) lt!1095073))))

(declare-fun fromList!633 (List!36485) Conc!10907)

(assert (=> d!886728 (= lt!1095303 (BalanceConc!21429 (fromList!633 lt!1095073)))))

(assert (=> d!886728 (= (fromListB!1568 lt!1095073) lt!1095303)))

(declare-fun b!3228764 () Bool)

(assert (=> b!3228764 (= e!2013847 (isBalanced!3247 (fromList!633 lt!1095073)))))

(assert (= (and d!886728 res!1314955) b!3228764))

(declare-fun m!3508097 () Bool)

(assert (=> d!886728 m!3508097))

(declare-fun m!3508099 () Bool)

(assert (=> d!886728 m!3508099))

(assert (=> b!3228764 m!3508099))

(assert (=> b!3228764 m!3508099))

(declare-fun m!3508101 () Bool)

(assert (=> b!3228764 m!3508101))

(assert (=> d!886482 d!886728))

(declare-fun d!886730 () Bool)

(declare-fun charsToBigInt!0 (List!36484 Int) Int)

(assert (=> d!886730 (= (inv!15 (value!170541 (h!41783 tokens!494))) (= (charsToBigInt!0 (text!38921 (value!170541 (h!41783 tokens!494))) 0) (value!170536 (value!170541 (h!41783 tokens!494)))))))

(declare-fun bs!543096 () Bool)

(assert (= bs!543096 d!886730))

(declare-fun m!3508103 () Bool)

(assert (=> bs!543096 m!3508103))

(assert (=> b!3228115 d!886730))

(declare-fun bs!543097 () Bool)

(declare-fun d!886732 () Bool)

(assert (= bs!543097 (and d!886732 d!886558)))

(declare-fun lambda!118235 () Int)

(assert (=> bs!543097 (= (= (toValue!7374 (transformation!5266 (h!41782 rules!2135))) (toValue!7374 (transformation!5266 (rule!7724 (h!41783 tokens!494))))) (= lambda!118235 lambda!118220))))

(assert (=> d!886732 true))

(assert (=> d!886732 (< (dynLambda!14791 order!18761 (toValue!7374 (transformation!5266 (h!41782 rules!2135)))) (dynLambda!14796 order!18767 lambda!118235))))

(assert (=> d!886732 (= (equivClasses!2070 (toChars!7233 (transformation!5266 (h!41782 rules!2135))) (toValue!7374 (transformation!5266 (h!41782 rules!2135)))) (Forall2!875 lambda!118235))))

(declare-fun bs!543098 () Bool)

(assert (= bs!543098 d!886732))

(declare-fun m!3508105 () Bool)

(assert (=> bs!543098 m!3508105))

(assert (=> b!3228387 d!886732))

(declare-fun d!886734 () Bool)

(assert (=> d!886734 true))

(declare-fun lambda!118238 () Int)

(declare-fun order!18773 () Int)

(declare-fun dynLambda!14797 (Int Int) Int)

(assert (=> d!886734 (< (dynLambda!14793 order!18765 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241)))) (dynLambda!14797 order!18773 lambda!118238))))

(assert (=> d!886734 true))

(assert (=> d!886734 (< (dynLambda!14791 order!18761 (toValue!7374 (transformation!5266 (rule!7724 separatorToken!241)))) (dynLambda!14797 order!18773 lambda!118238))))

(declare-fun Forall!1278 (Int) Bool)

(assert (=> d!886734 (= (semiInverseModEq!2171 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (toValue!7374 (transformation!5266 (rule!7724 separatorToken!241)))) (Forall!1278 lambda!118238))))

(declare-fun bs!543099 () Bool)

(assert (= bs!543099 d!886734))

(declare-fun m!3508107 () Bool)

(assert (=> bs!543099 m!3508107))

(assert (=> d!886510 d!886734))

(declare-fun b!3228772 () Bool)

(declare-fun e!2013849 () List!36485)

(assert (=> b!3228772 (= e!2013849 (++!8756 (list!12979 (left!28314 (c!542433 (charsOf!3282 (h!41783 tokens!494))))) (list!12979 (right!28644 (c!542433 (charsOf!3282 (h!41783 tokens!494)))))))))

(declare-fun b!3228771 () Bool)

(assert (=> b!3228771 (= e!2013849 (list!12981 (xs!14025 (c!542433 (charsOf!3282 (h!41783 tokens!494))))))))

(declare-fun b!3228770 () Bool)

(declare-fun e!2013848 () List!36485)

(assert (=> b!3228770 (= e!2013848 e!2013849)))

(declare-fun c!542552 () Bool)

(assert (=> b!3228770 (= c!542552 ((_ is Leaf!17151) (c!542433 (charsOf!3282 (h!41783 tokens!494)))))))

(declare-fun d!886736 () Bool)

(declare-fun c!542551 () Bool)

(assert (=> d!886736 (= c!542551 ((_ is Empty!10907) (c!542433 (charsOf!3282 (h!41783 tokens!494)))))))

(assert (=> d!886736 (= (list!12979 (c!542433 (charsOf!3282 (h!41783 tokens!494)))) e!2013848)))

(declare-fun b!3228769 () Bool)

(assert (=> b!3228769 (= e!2013848 Nil!36361)))

(assert (= (and d!886736 c!542551) b!3228769))

(assert (= (and d!886736 (not c!542551)) b!3228770))

(assert (= (and b!3228770 c!542552) b!3228771))

(assert (= (and b!3228770 (not c!542552)) b!3228772))

(declare-fun m!3508109 () Bool)

(assert (=> b!3228772 m!3508109))

(declare-fun m!3508111 () Bool)

(assert (=> b!3228772 m!3508111))

(assert (=> b!3228772 m!3508109))

(assert (=> b!3228772 m!3508111))

(declare-fun m!3508113 () Bool)

(assert (=> b!3228772 m!3508113))

(declare-fun m!3508115 () Bool)

(assert (=> b!3228771 m!3508115))

(assert (=> d!886500 d!886736))

(declare-fun d!886738 () Bool)

(assert (=> d!886738 (= (list!12975 lt!1095176) (list!12979 (c!542433 lt!1095176)))))

(declare-fun bs!543100 () Bool)

(assert (= bs!543100 d!886738))

(declare-fun m!3508117 () Bool)

(assert (=> bs!543100 m!3508117))

(assert (=> d!886494 d!886738))

(declare-fun d!886740 () Bool)

(declare-fun c!542555 () Bool)

(assert (=> d!886740 (= c!542555 ((_ is Cons!36363) (list!12978 lt!1095068)))))

(declare-fun e!2013852 () List!36485)

(assert (=> d!886740 (= (printWithSeparatorTokenList!188 thiss!18206 (list!12978 lt!1095068) separatorToken!241) e!2013852)))

(declare-fun b!3228777 () Bool)

(assert (=> b!3228777 (= e!2013852 (++!8756 (++!8756 (list!12975 (charsOf!3282 (h!41783 (list!12978 lt!1095068)))) (list!12975 (charsOf!3282 separatorToken!241))) (printWithSeparatorTokenList!188 thiss!18206 (t!241332 (list!12978 lt!1095068)) separatorToken!241)))))

(declare-fun b!3228778 () Bool)

(assert (=> b!3228778 (= e!2013852 Nil!36361)))

(assert (= (and d!886740 c!542555) b!3228777))

(assert (= (and d!886740 (not c!542555)) b!3228778))

(assert (=> b!3228777 m!3507153))

(declare-fun m!3508119 () Bool)

(assert (=> b!3228777 m!3508119))

(assert (=> b!3228777 m!3507149))

(declare-fun m!3508121 () Bool)

(assert (=> b!3228777 m!3508121))

(declare-fun m!3508123 () Bool)

(assert (=> b!3228777 m!3508123))

(assert (=> b!3228777 m!3508123))

(assert (=> b!3228777 m!3508119))

(declare-fun m!3508125 () Bool)

(assert (=> b!3228777 m!3508125))

(assert (=> b!3228777 m!3507153))

(assert (=> b!3228777 m!3507149))

(assert (=> b!3228777 m!3508121))

(assert (=> b!3228777 m!3508125))

(declare-fun m!3508127 () Bool)

(assert (=> b!3228777 m!3508127))

(assert (=> d!886494 d!886740))

(assert (=> d!886494 d!886672))

(declare-fun d!886742 () Bool)

(declare-fun lt!1095324 () BalanceConc!21428)

(declare-fun printWithSeparatorTokenListTailRec!3 (LexerInterface!4855 List!36487 Token!9898 List!36485) List!36485)

(assert (=> d!886742 (= (list!12975 lt!1095324) (printWithSeparatorTokenListTailRec!3 thiss!18206 (dropList!1093 lt!1095068 0) separatorToken!241 (list!12975 (BalanceConc!21429 Empty!10907))))))

(declare-fun e!2013857 () BalanceConc!21428)

(assert (=> d!886742 (= lt!1095324 e!2013857)))

(declare-fun c!542558 () Bool)

(assert (=> d!886742 (= c!542558 (>= 0 (size!27429 lt!1095068)))))

(declare-fun e!2013858 () Bool)

(assert (=> d!886742 e!2013858))

(declare-fun res!1314958 () Bool)

(assert (=> d!886742 (=> (not res!1314958) (not e!2013858))))

(assert (=> d!886742 (= res!1314958 (>= 0 0))))

(assert (=> d!886742 (= (printWithSeparatorTokenTailRec!16 thiss!18206 lt!1095068 separatorToken!241 0 (BalanceConc!21429 Empty!10907)) lt!1095324)))

(declare-fun b!3228785 () Bool)

(assert (=> b!3228785 (= e!2013858 (<= 0 (size!27429 lt!1095068)))))

(declare-fun b!3228786 () Bool)

(assert (=> b!3228786 (= e!2013857 (BalanceConc!21429 Empty!10907))))

(declare-fun b!3228787 () Bool)

(assert (=> b!3228787 (= e!2013857 (printWithSeparatorTokenTailRec!16 thiss!18206 lt!1095068 separatorToken!241 (+ 0 1) (++!8757 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095068 0))) (charsOf!3282 separatorToken!241))))))

(declare-fun lt!1095319 () List!36487)

(assert (=> b!3228787 (= lt!1095319 (list!12978 lt!1095068))))

(declare-fun lt!1095321 () Unit!50946)

(assert (=> b!3228787 (= lt!1095321 (lemmaDropApply!1052 lt!1095319 0))))

(assert (=> b!3228787 (= (head!7088 (drop!1876 lt!1095319 0)) (apply!8301 lt!1095319 0))))

(declare-fun lt!1095318 () Unit!50946)

(assert (=> b!3228787 (= lt!1095318 lt!1095321)))

(declare-fun lt!1095320 () List!36487)

(assert (=> b!3228787 (= lt!1095320 (list!12978 lt!1095068))))

(declare-fun lt!1095322 () Unit!50946)

(assert (=> b!3228787 (= lt!1095322 (lemmaDropTail!936 lt!1095320 0))))

(assert (=> b!3228787 (= (tail!5232 (drop!1876 lt!1095320 0)) (drop!1876 lt!1095320 (+ 0 1)))))

(declare-fun lt!1095323 () Unit!50946)

(assert (=> b!3228787 (= lt!1095323 lt!1095322)))

(assert (= (and d!886742 res!1314958) b!3228785))

(assert (= (and d!886742 c!542558) b!3228786))

(assert (= (and d!886742 (not c!542558)) b!3228787))

(declare-fun m!3508129 () Bool)

(assert (=> d!886742 m!3508129))

(declare-fun m!3508131 () Bool)

(assert (=> d!886742 m!3508131))

(assert (=> d!886742 m!3507199))

(declare-fun m!3508133 () Bool)

(assert (=> d!886742 m!3508133))

(assert (=> d!886742 m!3507199))

(assert (=> d!886742 m!3508131))

(declare-fun m!3508135 () Bool)

(assert (=> d!886742 m!3508135))

(assert (=> b!3228785 m!3508129))

(declare-fun m!3508137 () Bool)

(assert (=> b!3228787 m!3508137))

(declare-fun m!3508139 () Bool)

(assert (=> b!3228787 m!3508139))

(declare-fun m!3508141 () Bool)

(assert (=> b!3228787 m!3508141))

(declare-fun m!3508143 () Bool)

(assert (=> b!3228787 m!3508143))

(declare-fun m!3508145 () Bool)

(assert (=> b!3228787 m!3508145))

(assert (=> b!3228787 m!3507153))

(declare-fun m!3508147 () Bool)

(assert (=> b!3228787 m!3508147))

(assert (=> b!3228787 m!3507355))

(assert (=> b!3228787 m!3508143))

(assert (=> b!3228787 m!3508145))

(assert (=> b!3228787 m!3508147))

(declare-fun m!3508149 () Bool)

(assert (=> b!3228787 m!3508149))

(assert (=> b!3228787 m!3507153))

(assert (=> b!3228787 m!3508137))

(declare-fun m!3508151 () Bool)

(assert (=> b!3228787 m!3508151))

(declare-fun m!3508153 () Bool)

(assert (=> b!3228787 m!3508153))

(declare-fun m!3508155 () Bool)

(assert (=> b!3228787 m!3508155))

(declare-fun m!3508157 () Bool)

(assert (=> b!3228787 m!3508157))

(declare-fun m!3508159 () Bool)

(assert (=> b!3228787 m!3508159))

(assert (=> b!3228787 m!3508141))

(declare-fun m!3508161 () Bool)

(assert (=> b!3228787 m!3508161))

(assert (=> b!3228787 m!3508153))

(assert (=> d!886494 d!886742))

(declare-fun d!886744 () Bool)

(assert (=> d!886744 (= (inv!15 (value!170541 separatorToken!241)) (= (charsToBigInt!0 (text!38921 (value!170541 separatorToken!241)) 0) (value!170536 (value!170541 separatorToken!241))))))

(declare-fun bs!543101 () Bool)

(assert (= bs!543101 d!886744))

(declare-fun m!3508163 () Bool)

(assert (=> bs!543101 m!3508163))

(assert (=> b!3228395 d!886744))

(declare-fun d!886746 () Bool)

(declare-fun lt!1095327 () Bool)

(declare-fun content!4920 (List!36487) (InoxSet Token!9898))

(assert (=> d!886746 (= lt!1095327 (select (content!4920 tokens!494) (h!41783 tokens!494)))))

(declare-fun e!2013864 () Bool)

(assert (=> d!886746 (= lt!1095327 e!2013864)))

(declare-fun res!1314963 () Bool)

(assert (=> d!886746 (=> (not res!1314963) (not e!2013864))))

(assert (=> d!886746 (= res!1314963 ((_ is Cons!36363) tokens!494))))

(assert (=> d!886746 (= (contains!6527 tokens!494 (h!41783 tokens!494)) lt!1095327)))

(declare-fun b!3228792 () Bool)

(declare-fun e!2013863 () Bool)

(assert (=> b!3228792 (= e!2013864 e!2013863)))

(declare-fun res!1314964 () Bool)

(assert (=> b!3228792 (=> res!1314964 e!2013863)))

(assert (=> b!3228792 (= res!1314964 (= (h!41783 tokens!494) (h!41783 tokens!494)))))

(declare-fun b!3228793 () Bool)

(assert (=> b!3228793 (= e!2013863 (contains!6527 (t!241332 tokens!494) (h!41783 tokens!494)))))

(assert (= (and d!886746 res!1314963) b!3228792))

(assert (= (and b!3228792 (not res!1314964)) b!3228793))

(declare-fun m!3508165 () Bool)

(assert (=> d!886746 m!3508165))

(declare-fun m!3508167 () Bool)

(assert (=> d!886746 m!3508167))

(declare-fun m!3508169 () Bool)

(assert (=> b!3228793 m!3508169))

(assert (=> b!3228390 d!886746))

(declare-fun d!886748 () Bool)

(assert (=> d!886748 (= (inv!49254 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241))) (isBalanced!3247 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))))))

(declare-fun bs!543102 () Bool)

(assert (= bs!543102 d!886748))

(declare-fun m!3508171 () Bool)

(assert (=> bs!543102 m!3508171))

(assert (=> tb!159853 d!886748))

(declare-fun d!886750 () Bool)

(declare-fun lt!1095328 () Token!9898)

(assert (=> d!886750 (= lt!1095328 (apply!8301 (list!12978 (_1!21028 lt!1095182)) 0))))

(assert (=> d!886750 (= lt!1095328 (apply!8303 (c!542434 (_1!21028 lt!1095182)) 0))))

(declare-fun e!2013865 () Bool)

(assert (=> d!886750 e!2013865))

(declare-fun res!1314965 () Bool)

(assert (=> d!886750 (=> (not res!1314965) (not e!2013865))))

(assert (=> d!886750 (= res!1314965 (<= 0 0))))

(assert (=> d!886750 (= (apply!8300 (_1!21028 lt!1095182) 0) lt!1095328)))

(declare-fun b!3228794 () Bool)

(assert (=> b!3228794 (= e!2013865 (< 0 (size!27429 (_1!21028 lt!1095182))))))

(assert (= (and d!886750 res!1314965) b!3228794))

(declare-fun m!3508173 () Bool)

(assert (=> d!886750 m!3508173))

(assert (=> d!886750 m!3508173))

(declare-fun m!3508175 () Bool)

(assert (=> d!886750 m!3508175))

(declare-fun m!3508177 () Bool)

(assert (=> d!886750 m!3508177))

(assert (=> b!3228794 m!3507569))

(assert (=> b!3228378 d!886750))

(declare-fun d!886752 () Bool)

(assert (=> d!886752 (= (inv!17 (value!170541 separatorToken!241)) (= (charsToBigInt!1 (text!38920 (value!170541 separatorToken!241))) (value!170533 (value!170541 separatorToken!241))))))

(declare-fun bs!543103 () Bool)

(assert (= bs!543103 d!886752))

(declare-fun m!3508179 () Bool)

(assert (=> bs!543103 m!3508179))

(assert (=> b!3228391 d!886752))

(declare-fun lt!1095331 () Bool)

(declare-fun d!886754 () Bool)

(assert (=> d!886754 (= lt!1095331 (isEmpty!20452 (list!12975 (_2!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494))))))))))

(declare-fun isEmpty!20456 (Conc!10907) Bool)

(assert (=> d!886754 (= lt!1095331 (isEmpty!20456 (c!542433 (_2!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494))))))))))

(assert (=> d!886754 (= (isEmpty!20455 (_2!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494)))))) lt!1095331)))

(declare-fun bs!543104 () Bool)

(assert (= bs!543104 d!886754))

(declare-fun m!3508181 () Bool)

(assert (=> bs!543104 m!3508181))

(assert (=> bs!543104 m!3508181))

(declare-fun m!3508183 () Bool)

(assert (=> bs!543104 m!3508183))

(declare-fun m!3508185 () Bool)

(assert (=> bs!543104 m!3508185))

(assert (=> b!3228386 d!886754))

(declare-fun d!886756 () Bool)

(declare-fun e!2013868 () Bool)

(assert (=> d!886756 e!2013868))

(declare-fun res!1314966 () Bool)

(assert (=> d!886756 (=> (not res!1314966) (not e!2013868))))

(declare-fun e!2013867 () Bool)

(assert (=> d!886756 (= res!1314966 e!2013867)))

(declare-fun c!542559 () Bool)

(declare-fun lt!1095332 () tuple2!35788)

(assert (=> d!886756 (= c!542559 (> (size!27429 (_1!21028 lt!1095332)) 0))))

(assert (=> d!886756 (= lt!1095332 (lexTailRecV2!947 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494))) (BalanceConc!21429 Empty!10907) (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494))) (BalanceConc!21431 Empty!10908)))))

(assert (=> d!886756 (= (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494)))) lt!1095332)))

(declare-fun b!3228795 () Bool)

(assert (=> b!3228795 (= e!2013868 (= (list!12975 (_2!21028 lt!1095332)) (_2!21030 (lexList!1335 thiss!18206 rules!2135 (list!12975 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494))))))))))

(declare-fun b!3228796 () Bool)

(declare-fun e!2013866 () Bool)

(assert (=> b!3228796 (= e!2013867 e!2013866)))

(declare-fun res!1314968 () Bool)

(assert (=> b!3228796 (= res!1314968 (< (size!27431 (_2!21028 lt!1095332)) (size!27431 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494))))))))

(assert (=> b!3228796 (=> (not res!1314968) (not e!2013866))))

(declare-fun b!3228797 () Bool)

(declare-fun res!1314967 () Bool)

(assert (=> b!3228797 (=> (not res!1314967) (not e!2013868))))

(assert (=> b!3228797 (= res!1314967 (= (list!12978 (_1!21028 lt!1095332)) (_1!21030 (lexList!1335 thiss!18206 rules!2135 (list!12975 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494))))))))))

(declare-fun b!3228798 () Bool)

(assert (=> b!3228798 (= e!2013867 (= (_2!21028 lt!1095332) (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494)))))))

(declare-fun b!3228799 () Bool)

(assert (=> b!3228799 (= e!2013866 (not (isEmpty!20446 (_1!21028 lt!1095332))))))

(assert (= (and d!886756 c!542559) b!3228796))

(assert (= (and d!886756 (not c!542559)) b!3228798))

(assert (= (and b!3228796 res!1314968) b!3228799))

(assert (= (and d!886756 res!1314966) b!3228797))

(assert (= (and b!3228797 res!1314967) b!3228795))

(declare-fun m!3508187 () Bool)

(assert (=> d!886756 m!3508187))

(assert (=> d!886756 m!3507591))

(assert (=> d!886756 m!3507591))

(declare-fun m!3508189 () Bool)

(assert (=> d!886756 m!3508189))

(declare-fun m!3508191 () Bool)

(assert (=> b!3228799 m!3508191))

(declare-fun m!3508193 () Bool)

(assert (=> b!3228796 m!3508193))

(assert (=> b!3228796 m!3507591))

(declare-fun m!3508195 () Bool)

(assert (=> b!3228796 m!3508195))

(declare-fun m!3508197 () Bool)

(assert (=> b!3228795 m!3508197))

(assert (=> b!3228795 m!3507591))

(declare-fun m!3508199 () Bool)

(assert (=> b!3228795 m!3508199))

(assert (=> b!3228795 m!3508199))

(declare-fun m!3508201 () Bool)

(assert (=> b!3228795 m!3508201))

(declare-fun m!3508203 () Bool)

(assert (=> b!3228797 m!3508203))

(assert (=> b!3228797 m!3507591))

(assert (=> b!3228797 m!3508199))

(assert (=> b!3228797 m!3508199))

(assert (=> b!3228797 m!3508201))

(assert (=> b!3228386 d!886756))

(declare-fun d!886758 () Bool)

(declare-fun lt!1095333 () BalanceConc!21428)

(assert (=> d!886758 (= (list!12975 lt!1095333) (printList!1405 thiss!18206 (list!12978 (singletonSeq!2362 (h!41783 tokens!494)))))))

(assert (=> d!886758 (= lt!1095333 (printTailRec!1352 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494)) 0 (BalanceConc!21429 Empty!10907)))))

(assert (=> d!886758 (= (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494))) lt!1095333)))

(declare-fun bs!543105 () Bool)

(assert (= bs!543105 d!886758))

(declare-fun m!3508205 () Bool)

(assert (=> bs!543105 m!3508205))

(assert (=> bs!543105 m!3507141))

(assert (=> bs!543105 m!3507589))

(assert (=> bs!543105 m!3507589))

(declare-fun m!3508207 () Bool)

(assert (=> bs!543105 m!3508207))

(assert (=> bs!543105 m!3507141))

(declare-fun m!3508209 () Bool)

(assert (=> bs!543105 m!3508209))

(assert (=> b!3228386 d!886758))

(assert (=> b!3228386 d!886412))

(declare-fun d!886760 () Bool)

(assert (=> d!886760 (= (isEmpty!20452 (originalCharacters!5980 separatorToken!241)) ((_ is Nil!36361) (originalCharacters!5980 separatorToken!241)))))

(assert (=> d!886506 d!886760))

(declare-fun bs!543106 () Bool)

(declare-fun d!886762 () Bool)

(assert (= bs!543106 (and d!886762 d!886734)))

(declare-fun lambda!118239 () Int)

(assert (=> bs!543106 (= (and (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241)))) (= (toValue!7374 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (toValue!7374 (transformation!5266 (rule!7724 separatorToken!241))))) (= lambda!118239 lambda!118238))))

(assert (=> d!886762 true))

(assert (=> d!886762 (< (dynLambda!14793 order!18765 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494))))) (dynLambda!14797 order!18773 lambda!118239))))

(assert (=> d!886762 true))

(assert (=> d!886762 (< (dynLambda!14791 order!18761 (toValue!7374 (transformation!5266 (rule!7724 (h!41783 tokens!494))))) (dynLambda!14797 order!18773 lambda!118239))))

(assert (=> d!886762 (= (semiInverseModEq!2171 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (toValue!7374 (transformation!5266 (rule!7724 (h!41783 tokens!494))))) (Forall!1278 lambda!118239))))

(declare-fun bs!543107 () Bool)

(assert (= bs!543107 d!886762))

(declare-fun m!3508211 () Bool)

(assert (=> bs!543107 m!3508211))

(assert (=> d!886446 d!886762))

(declare-fun d!886764 () Bool)

(declare-fun lt!1095334 () Bool)

(assert (=> d!886764 (= lt!1095334 (isEmpty!20452 (list!12975 (_2!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241)))))))))

(assert (=> d!886764 (= lt!1095334 (isEmpty!20456 (c!542433 (_2!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241)))))))))

(assert (=> d!886764 (= (isEmpty!20455 (_2!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241))))) lt!1095334)))

(declare-fun bs!543108 () Bool)

(assert (= bs!543108 d!886764))

(declare-fun m!3508213 () Bool)

(assert (=> bs!543108 m!3508213))

(assert (=> bs!543108 m!3508213))

(declare-fun m!3508215 () Bool)

(assert (=> bs!543108 m!3508215))

(declare-fun m!3508217 () Bool)

(assert (=> bs!543108 m!3508217))

(assert (=> b!3228380 d!886764))

(declare-fun d!886766 () Bool)

(declare-fun e!2013871 () Bool)

(assert (=> d!886766 e!2013871))

(declare-fun res!1314969 () Bool)

(assert (=> d!886766 (=> (not res!1314969) (not e!2013871))))

(declare-fun e!2013870 () Bool)

(assert (=> d!886766 (= res!1314969 e!2013870)))

(declare-fun c!542560 () Bool)

(declare-fun lt!1095335 () tuple2!35788)

(assert (=> d!886766 (= c!542560 (> (size!27429 (_1!21028 lt!1095335)) 0))))

(assert (=> d!886766 (= lt!1095335 (lexTailRecV2!947 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241)) (BalanceConc!21429 Empty!10907) (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241)) (BalanceConc!21431 Empty!10908)))))

(assert (=> d!886766 (= (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241))) lt!1095335)))

(declare-fun b!3228800 () Bool)

(assert (=> b!3228800 (= e!2013871 (= (list!12975 (_2!21028 lt!1095335)) (_2!21030 (lexList!1335 thiss!18206 rules!2135 (list!12975 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241)))))))))

(declare-fun b!3228801 () Bool)

(declare-fun e!2013869 () Bool)

(assert (=> b!3228801 (= e!2013870 e!2013869)))

(declare-fun res!1314971 () Bool)

(assert (=> b!3228801 (= res!1314971 (< (size!27431 (_2!21028 lt!1095335)) (size!27431 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241)))))))

(assert (=> b!3228801 (=> (not res!1314971) (not e!2013869))))

(declare-fun b!3228802 () Bool)

(declare-fun res!1314970 () Bool)

(assert (=> b!3228802 (=> (not res!1314970) (not e!2013871))))

(assert (=> b!3228802 (= res!1314970 (= (list!12978 (_1!21028 lt!1095335)) (_1!21030 (lexList!1335 thiss!18206 rules!2135 (list!12975 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241)))))))))

(declare-fun b!3228803 () Bool)

(assert (=> b!3228803 (= e!2013870 (= (_2!21028 lt!1095335) (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241))))))

(declare-fun b!3228804 () Bool)

(assert (=> b!3228804 (= e!2013869 (not (isEmpty!20446 (_1!21028 lt!1095335))))))

(assert (= (and d!886766 c!542560) b!3228801))

(assert (= (and d!886766 (not c!542560)) b!3228803))

(assert (= (and b!3228801 res!1314971) b!3228804))

(assert (= (and d!886766 res!1314969) b!3228802))

(assert (= (and b!3228802 res!1314970) b!3228800))

(declare-fun m!3508219 () Bool)

(assert (=> d!886766 m!3508219))

(assert (=> d!886766 m!3507565))

(assert (=> d!886766 m!3507565))

(declare-fun m!3508221 () Bool)

(assert (=> d!886766 m!3508221))

(declare-fun m!3508223 () Bool)

(assert (=> b!3228804 m!3508223))

(declare-fun m!3508225 () Bool)

(assert (=> b!3228801 m!3508225))

(assert (=> b!3228801 m!3507565))

(declare-fun m!3508227 () Bool)

(assert (=> b!3228801 m!3508227))

(declare-fun m!3508229 () Bool)

(assert (=> b!3228800 m!3508229))

(assert (=> b!3228800 m!3507565))

(declare-fun m!3508231 () Bool)

(assert (=> b!3228800 m!3508231))

(assert (=> b!3228800 m!3508231))

(declare-fun m!3508233 () Bool)

(assert (=> b!3228800 m!3508233))

(declare-fun m!3508235 () Bool)

(assert (=> b!3228802 m!3508235))

(assert (=> b!3228802 m!3507565))

(assert (=> b!3228802 m!3508231))

(assert (=> b!3228802 m!3508231))

(assert (=> b!3228802 m!3508233))

(assert (=> b!3228380 d!886766))

(declare-fun d!886768 () Bool)

(declare-fun lt!1095336 () BalanceConc!21428)

(assert (=> d!886768 (= (list!12975 lt!1095336) (printList!1405 thiss!18206 (list!12978 (singletonSeq!2362 separatorToken!241))))))

(assert (=> d!886768 (= lt!1095336 (printTailRec!1352 thiss!18206 (singletonSeq!2362 separatorToken!241) 0 (BalanceConc!21429 Empty!10907)))))

(assert (=> d!886768 (= (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241)) lt!1095336)))

(declare-fun bs!543109 () Bool)

(assert (= bs!543109 d!886768))

(declare-fun m!3508237 () Bool)

(assert (=> bs!543109 m!3508237))

(assert (=> bs!543109 m!3507561))

(assert (=> bs!543109 m!3507563))

(assert (=> bs!543109 m!3507563))

(declare-fun m!3508239 () Bool)

(assert (=> bs!543109 m!3508239))

(assert (=> bs!543109 m!3507561))

(declare-fun m!3508241 () Bool)

(assert (=> bs!543109 m!3508241))

(assert (=> b!3228380 d!886768))

(declare-fun d!886770 () Bool)

(declare-fun e!2013872 () Bool)

(assert (=> d!886770 e!2013872))

(declare-fun res!1314972 () Bool)

(assert (=> d!886770 (=> (not res!1314972) (not e!2013872))))

(declare-fun lt!1095337 () BalanceConc!21430)

(assert (=> d!886770 (= res!1314972 (= (list!12978 lt!1095337) (Cons!36363 separatorToken!241 Nil!36363)))))

(assert (=> d!886770 (= lt!1095337 (singleton!1009 separatorToken!241))))

(assert (=> d!886770 (= (singletonSeq!2362 separatorToken!241) lt!1095337)))

(declare-fun b!3228805 () Bool)

(assert (=> b!3228805 (= e!2013872 (isBalanced!3244 (c!542434 lt!1095337)))))

(assert (= (and d!886770 res!1314972) b!3228805))

(declare-fun m!3508243 () Bool)

(assert (=> d!886770 m!3508243))

(declare-fun m!3508245 () Bool)

(assert (=> d!886770 m!3508245))

(declare-fun m!3508247 () Bool)

(assert (=> b!3228805 m!3508247))

(assert (=> b!3228380 d!886770))

(declare-fun d!886772 () Bool)

(assert (=> d!886772 (= (list!12975 (_2!21028 lt!1095143)) (list!12979 (c!542433 (_2!21028 lt!1095143))))))

(declare-fun bs!543110 () Bool)

(assert (= bs!543110 d!886772))

(declare-fun m!3508249 () Bool)

(assert (=> bs!543110 m!3508249))

(assert (=> b!3228283 d!886772))

(declare-fun b!3228816 () Bool)

(declare-fun e!2013880 () tuple2!35792)

(assert (=> b!3228816 (= e!2013880 (tuple2!35793 Nil!36363 (list!12975 (seqFromList!3595 lt!1095073))))))

(declare-fun b!3228817 () Bool)

(declare-fun e!2013881 () Bool)

(declare-fun lt!1095346 () tuple2!35792)

(assert (=> b!3228817 (= e!2013881 (not (isEmpty!20453 (_1!21030 lt!1095346))))))

(declare-fun d!886774 () Bool)

(declare-fun e!2013879 () Bool)

(assert (=> d!886774 e!2013879))

(declare-fun c!542565 () Bool)

(assert (=> d!886774 (= c!542565 (> (size!27433 (_1!21030 lt!1095346)) 0))))

(assert (=> d!886774 (= lt!1095346 e!2013880)))

(declare-fun c!542566 () Bool)

(declare-datatypes ((tuple2!35794 0))(
  ( (tuple2!35795 (_1!21031 Token!9898) (_2!21031 List!36485)) )
))
(declare-datatypes ((Option!7215 0))(
  ( (None!7214) (Some!7214 (v!35824 tuple2!35794)) )
))
(declare-fun lt!1095345 () Option!7215)

(assert (=> d!886774 (= c!542566 ((_ is Some!7214) lt!1095345))))

(declare-fun maxPrefix!2486 (LexerInterface!4855 List!36486 List!36485) Option!7215)

(assert (=> d!886774 (= lt!1095345 (maxPrefix!2486 thiss!18206 rules!2135 (list!12975 (seqFromList!3595 lt!1095073))))))

(assert (=> d!886774 (= (lexList!1335 thiss!18206 rules!2135 (list!12975 (seqFromList!3595 lt!1095073))) lt!1095346)))

(declare-fun b!3228818 () Bool)

(declare-fun lt!1095344 () tuple2!35792)

(assert (=> b!3228818 (= e!2013880 (tuple2!35793 (Cons!36363 (_1!21031 (v!35824 lt!1095345)) (_1!21030 lt!1095344)) (_2!21030 lt!1095344)))))

(assert (=> b!3228818 (= lt!1095344 (lexList!1335 thiss!18206 rules!2135 (_2!21031 (v!35824 lt!1095345))))))

(declare-fun b!3228819 () Bool)

(assert (=> b!3228819 (= e!2013879 (= (_2!21030 lt!1095346) (list!12975 (seqFromList!3595 lt!1095073))))))

(declare-fun b!3228820 () Bool)

(assert (=> b!3228820 (= e!2013879 e!2013881)))

(declare-fun res!1314975 () Bool)

(assert (=> b!3228820 (= res!1314975 (< (size!27430 (_2!21030 lt!1095346)) (size!27430 (list!12975 (seqFromList!3595 lt!1095073)))))))

(assert (=> b!3228820 (=> (not res!1314975) (not e!2013881))))

(assert (= (and d!886774 c!542566) b!3228818))

(assert (= (and d!886774 (not c!542566)) b!3228816))

(assert (= (and d!886774 c!542565) b!3228820))

(assert (= (and d!886774 (not c!542565)) b!3228819))

(assert (= (and b!3228820 res!1314975) b!3228817))

(declare-fun m!3508251 () Bool)

(assert (=> b!3228817 m!3508251))

(declare-fun m!3508253 () Bool)

(assert (=> d!886774 m!3508253))

(assert (=> d!886774 m!3507457))

(declare-fun m!3508255 () Bool)

(assert (=> d!886774 m!3508255))

(declare-fun m!3508257 () Bool)

(assert (=> b!3228818 m!3508257))

(declare-fun m!3508259 () Bool)

(assert (=> b!3228820 m!3508259))

(assert (=> b!3228820 m!3507457))

(assert (=> b!3228820 m!3507651))

(assert (=> b!3228283 d!886774))

(declare-fun d!886776 () Bool)

(assert (=> d!886776 (= (list!12975 (seqFromList!3595 lt!1095073)) (list!12979 (c!542433 (seqFromList!3595 lt!1095073))))))

(declare-fun bs!543111 () Bool)

(assert (= bs!543111 d!886776))

(declare-fun m!3508261 () Bool)

(assert (=> bs!543111 m!3508261))

(assert (=> b!3228283 d!886776))

(declare-fun d!886778 () Bool)

(assert (=> d!886778 (= (list!12975 lt!1095177) (list!12979 (c!542433 lt!1095177)))))

(declare-fun bs!543112 () Bool)

(assert (= bs!543112 d!886778))

(declare-fun m!3508263 () Bool)

(assert (=> bs!543112 m!3508263))

(assert (=> d!886502 d!886778))

(declare-fun d!886780 () Bool)

(declare-fun c!542567 () Bool)

(assert (=> d!886780 (= c!542567 ((_ is Node!10907) (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))))))

(declare-fun e!2013882 () Bool)

(assert (=> d!886780 (= (inv!49253 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))) e!2013882)))

(declare-fun b!3228821 () Bool)

(assert (=> b!3228821 (= e!2013882 (inv!49255 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))))))

(declare-fun b!3228822 () Bool)

(declare-fun e!2013883 () Bool)

(assert (=> b!3228822 (= e!2013882 e!2013883)))

(declare-fun res!1314976 () Bool)

(assert (=> b!3228822 (= res!1314976 (not ((_ is Leaf!17151) (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241))))))))

(assert (=> b!3228822 (=> res!1314976 e!2013883)))

(declare-fun b!3228823 () Bool)

(assert (=> b!3228823 (= e!2013883 (inv!49256 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))))))

(assert (= (and d!886780 c!542567) b!3228821))

(assert (= (and d!886780 (not c!542567)) b!3228822))

(assert (= (and b!3228822 (not res!1314976)) b!3228823))

(declare-fun m!3508265 () Bool)

(assert (=> b!3228821 m!3508265))

(declare-fun m!3508267 () Bool)

(assert (=> b!3228823 m!3508267))

(assert (=> b!3228297 d!886780))

(declare-fun d!886782 () Bool)

(assert (=> d!886782 (= (isEmpty!20453 (list!12978 (_1!21028 (lex!2183 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073))))) ((_ is Nil!36363) (list!12978 (_1!21028 (lex!2183 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073))))))))

(assert (=> d!886452 d!886782))

(declare-fun d!886784 () Bool)

(assert (=> d!886784 (= (list!12978 (_1!21028 (lex!2183 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073)))) (list!12980 (c!542434 (_1!21028 (lex!2183 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073))))))))

(declare-fun bs!543113 () Bool)

(assert (= bs!543113 d!886784))

(declare-fun m!3508269 () Bool)

(assert (=> bs!543113 m!3508269))

(assert (=> d!886452 d!886784))

(declare-fun lt!1095349 () Bool)

(declare-fun d!886786 () Bool)

(assert (=> d!886786 (= lt!1095349 (isEmpty!20453 (list!12980 (c!542434 (_1!21028 (lex!2183 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073)))))))))

(assert (=> d!886786 (= lt!1095349 (= (size!27434 (c!542434 (_1!21028 (lex!2183 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073))))) 0))))

(assert (=> d!886786 (= (isEmpty!20454 (c!542434 (_1!21028 (lex!2183 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073))))) lt!1095349)))

(declare-fun bs!543114 () Bool)

(assert (= bs!543114 d!886786))

(assert (=> bs!543114 m!3508269))

(assert (=> bs!543114 m!3508269))

(declare-fun m!3508271 () Bool)

(assert (=> bs!543114 m!3508271))

(declare-fun m!3508273 () Bool)

(assert (=> bs!543114 m!3508273))

(assert (=> d!886452 d!886786))

(declare-fun d!886788 () Bool)

(declare-fun res!1314977 () Bool)

(declare-fun e!2013884 () Bool)

(assert (=> d!886788 (=> res!1314977 e!2013884)))

(assert (=> d!886788 (= res!1314977 ((_ is Nil!36363) (t!241332 tokens!494)))))

(assert (=> d!886788 (= (forall!7470 (t!241332 tokens!494) lambda!118207) e!2013884)))

(declare-fun b!3228824 () Bool)

(declare-fun e!2013885 () Bool)

(assert (=> b!3228824 (= e!2013884 e!2013885)))

(declare-fun res!1314978 () Bool)

(assert (=> b!3228824 (=> (not res!1314978) (not e!2013885))))

(assert (=> b!3228824 (= res!1314978 (dynLambda!14795 lambda!118207 (h!41783 (t!241332 tokens!494))))))

(declare-fun b!3228825 () Bool)

(assert (=> b!3228825 (= e!2013885 (forall!7470 (t!241332 (t!241332 tokens!494)) lambda!118207))))

(assert (= (and d!886788 (not res!1314977)) b!3228824))

(assert (= (and b!3228824 res!1314978) b!3228825))

(declare-fun b_lambda!88937 () Bool)

(assert (=> (not b_lambda!88937) (not b!3228824)))

(declare-fun m!3508275 () Bool)

(assert (=> b!3228824 m!3508275))

(declare-fun m!3508277 () Bool)

(assert (=> b!3228825 m!3508277))

(assert (=> b!3228407 d!886788))

(declare-fun bs!543115 () Bool)

(declare-fun d!886790 () Bool)

(assert (= bs!543115 (and d!886790 d!886558)))

(declare-fun lambda!118240 () Int)

(assert (=> bs!543115 (= (= (toValue!7374 (transformation!5266 (rule!7724 separatorToken!241))) (toValue!7374 (transformation!5266 (rule!7724 (h!41783 tokens!494))))) (= lambda!118240 lambda!118220))))

(declare-fun bs!543116 () Bool)

(assert (= bs!543116 (and d!886790 d!886732)))

(assert (=> bs!543116 (= (= (toValue!7374 (transformation!5266 (rule!7724 separatorToken!241))) (toValue!7374 (transformation!5266 (h!41782 rules!2135)))) (= lambda!118240 lambda!118235))))

(assert (=> d!886790 true))

(assert (=> d!886790 (< (dynLambda!14791 order!18761 (toValue!7374 (transformation!5266 (rule!7724 separatorToken!241)))) (dynLambda!14796 order!18767 lambda!118240))))

(assert (=> d!886790 (= (equivClasses!2070 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (toValue!7374 (transformation!5266 (rule!7724 separatorToken!241)))) (Forall2!875 lambda!118240))))

(declare-fun bs!543117 () Bool)

(assert (= bs!543117 d!886790))

(declare-fun m!3508279 () Bool)

(assert (=> bs!543117 m!3508279))

(assert (=> b!3228383 d!886790))

(declare-fun d!886792 () Bool)

(declare-fun lt!1095350 () Int)

(assert (=> d!886792 (>= lt!1095350 0)))

(declare-fun e!2013886 () Int)

(assert (=> d!886792 (= lt!1095350 e!2013886)))

(declare-fun c!542568 () Bool)

(assert (=> d!886792 (= c!542568 ((_ is Nil!36361) (originalCharacters!5980 separatorToken!241)))))

(assert (=> d!886792 (= (size!27430 (originalCharacters!5980 separatorToken!241)) lt!1095350)))

(declare-fun b!3228826 () Bool)

(assert (=> b!3228826 (= e!2013886 0)))

(declare-fun b!3228827 () Bool)

(assert (=> b!3228827 (= e!2013886 (+ 1 (size!27430 (t!241330 (originalCharacters!5980 separatorToken!241)))))))

(assert (= (and d!886792 c!542568) b!3228826))

(assert (= (and d!886792 (not c!542568)) b!3228827))

(declare-fun m!3508281 () Bool)

(assert (=> b!3228827 m!3508281))

(assert (=> b!3228382 d!886792))

(declare-fun d!886794 () Bool)

(declare-fun lt!1095351 () Int)

(assert (=> d!886794 (>= lt!1095351 0)))

(declare-fun e!2013887 () Int)

(assert (=> d!886794 (= lt!1095351 e!2013887)))

(declare-fun c!542569 () Bool)

(assert (=> d!886794 (= c!542569 ((_ is Nil!36361) (originalCharacters!5980 (h!41783 tokens!494))))))

(assert (=> d!886794 (= (size!27430 (originalCharacters!5980 (h!41783 tokens!494))) lt!1095351)))

(declare-fun b!3228828 () Bool)

(assert (=> b!3228828 (= e!2013887 0)))

(declare-fun b!3228829 () Bool)

(assert (=> b!3228829 (= e!2013887 (+ 1 (size!27430 (t!241330 (originalCharacters!5980 (h!41783 tokens!494))))))))

(assert (= (and d!886794 c!542569) b!3228828))

(assert (= (and d!886794 (not c!542569)) b!3228829))

(declare-fun m!3508283 () Bool)

(assert (=> b!3228829 m!3508283))

(assert (=> b!3228241 d!886794))

(declare-fun d!886796 () Bool)

(declare-fun res!1314979 () Bool)

(declare-fun e!2013888 () Bool)

(assert (=> d!886796 (=> res!1314979 e!2013888)))

(assert (=> d!886796 (= res!1314979 (not ((_ is Cons!36362) (t!241331 rules!2135))))))

(assert (=> d!886796 (= (sepAndNonSepRulesDisjointChars!1460 rules!2135 (t!241331 rules!2135)) e!2013888)))

(declare-fun b!3228830 () Bool)

(declare-fun e!2013889 () Bool)

(assert (=> b!3228830 (= e!2013888 e!2013889)))

(declare-fun res!1314980 () Bool)

(assert (=> b!3228830 (=> (not res!1314980) (not e!2013889))))

(assert (=> b!3228830 (= res!1314980 (ruleDisjointCharsFromAllFromOtherType!607 (h!41782 (t!241331 rules!2135)) rules!2135))))

(declare-fun b!3228831 () Bool)

(assert (=> b!3228831 (= e!2013889 (sepAndNonSepRulesDisjointChars!1460 rules!2135 (t!241331 (t!241331 rules!2135))))))

(assert (= (and d!886796 (not res!1314979)) b!3228830))

(assert (= (and b!3228830 res!1314980) b!3228831))

(declare-fun m!3508285 () Bool)

(assert (=> b!3228830 m!3508285))

(declare-fun m!3508287 () Bool)

(assert (=> b!3228831 m!3508287))

(assert (=> b!3228401 d!886796))

(declare-fun d!886798 () Bool)

(declare-fun res!1314981 () Bool)

(declare-fun e!2013890 () Bool)

(assert (=> d!886798 (=> (not res!1314981) (not e!2013890))))

(assert (=> d!886798 (= res!1314981 (not (isEmpty!20452 (originalCharacters!5980 (h!41783 (t!241332 tokens!494))))))))

(assert (=> d!886798 (= (inv!49250 (h!41783 (t!241332 tokens!494))) e!2013890)))

(declare-fun b!3228832 () Bool)

(declare-fun res!1314982 () Bool)

(assert (=> b!3228832 (=> (not res!1314982) (not e!2013890))))

(assert (=> b!3228832 (= res!1314982 (= (originalCharacters!5980 (h!41783 (t!241332 tokens!494))) (list!12975 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (value!170541 (h!41783 (t!241332 tokens!494)))))))))

(declare-fun b!3228833 () Bool)

(assert (=> b!3228833 (= e!2013890 (= (size!27425 (h!41783 (t!241332 tokens!494))) (size!27430 (originalCharacters!5980 (h!41783 (t!241332 tokens!494))))))))

(assert (= (and d!886798 res!1314981) b!3228832))

(assert (= (and b!3228832 res!1314982) b!3228833))

(declare-fun b_lambda!88939 () Bool)

(assert (=> (not b_lambda!88939) (not b!3228832)))

(declare-fun tb!159895 () Bool)

(declare-fun t!241417 () Bool)

(assert (=> (and b!3228087 (= (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494)))))) t!241417) tb!159895))

(declare-fun b!3228834 () Bool)

(declare-fun e!2013891 () Bool)

(declare-fun tp!1017383 () Bool)

(assert (=> b!3228834 (= e!2013891 (and (inv!49253 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (value!170541 (h!41783 (t!241332 tokens!494)))))) tp!1017383))))

(declare-fun result!202452 () Bool)

(assert (=> tb!159895 (= result!202452 (and (inv!49254 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (value!170541 (h!41783 (t!241332 tokens!494))))) e!2013891))))

(assert (= tb!159895 b!3228834))

(declare-fun m!3508289 () Bool)

(assert (=> b!3228834 m!3508289))

(declare-fun m!3508291 () Bool)

(assert (=> tb!159895 m!3508291))

(assert (=> b!3228832 t!241417))

(declare-fun b_and!216275 () Bool)

(assert (= b_and!216245 (and (=> t!241417 result!202452) b_and!216275)))

(declare-fun t!241419 () Bool)

(declare-fun tb!159897 () Bool)

(assert (=> (and b!3228072 (= (toChars!7233 (transformation!5266 (h!41782 rules!2135))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494)))))) t!241419) tb!159897))

(declare-fun result!202454 () Bool)

(assert (= result!202454 result!202452))

(assert (=> b!3228832 t!241419))

(declare-fun b_and!216277 () Bool)

(assert (= b_and!216243 (and (=> t!241419 result!202454) b_and!216277)))

(declare-fun t!241421 () Bool)

(declare-fun tb!159899 () Bool)

(assert (=> (and b!3228460 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494)))))) t!241421) tb!159899))

(declare-fun result!202456 () Bool)

(assert (= result!202456 result!202452))

(assert (=> b!3228832 t!241421))

(declare-fun b_and!216279 () Bool)

(assert (= b_and!216253 (and (=> t!241421 result!202456) b_and!216279)))

(declare-fun t!241423 () Bool)

(declare-fun tb!159901 () Bool)

(assert (=> (and b!3228076 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494)))))) t!241423) tb!159901))

(declare-fun result!202458 () Bool)

(assert (= result!202458 result!202452))

(assert (=> b!3228832 t!241423))

(declare-fun b_and!216281 () Bool)

(assert (= b_and!216241 (and (=> t!241423 result!202458) b_and!216281)))

(declare-fun t!241425 () Bool)

(declare-fun tb!159903 () Bool)

(assert (=> (and b!3228442 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 rules!2135)))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494)))))) t!241425) tb!159903))

(declare-fun result!202460 () Bool)

(assert (= result!202460 result!202452))

(assert (=> b!3228832 t!241425))

(declare-fun b_and!216283 () Bool)

(assert (= b_and!216249 (and (=> t!241425 result!202460) b_and!216283)))

(declare-fun m!3508293 () Bool)

(assert (=> d!886798 m!3508293))

(declare-fun m!3508295 () Bool)

(assert (=> b!3228832 m!3508295))

(assert (=> b!3228832 m!3508295))

(declare-fun m!3508297 () Bool)

(assert (=> b!3228832 m!3508297))

(declare-fun m!3508299 () Bool)

(assert (=> b!3228833 m!3508299))

(assert (=> b!3228457 d!886798))

(declare-fun d!886800 () Bool)

(assert (=> d!886800 (= (list!12978 (_1!21028 lt!1095143)) (list!12980 (c!542434 (_1!21028 lt!1095143))))))

(declare-fun bs!543118 () Bool)

(assert (= bs!543118 d!886800))

(declare-fun m!3508301 () Bool)

(assert (=> bs!543118 m!3508301))

(assert (=> b!3228285 d!886800))

(assert (=> b!3228285 d!886774))

(assert (=> b!3228285 d!886776))

(declare-fun d!886802 () Bool)

(declare-fun lt!1095352 () Bool)

(assert (=> d!886802 (= lt!1095352 (isEmpty!20453 (list!12978 (_1!21028 lt!1095143))))))

(assert (=> d!886802 (= lt!1095352 (isEmpty!20454 (c!542434 (_1!21028 lt!1095143))))))

(assert (=> d!886802 (= (isEmpty!20446 (_1!21028 lt!1095143)) lt!1095352)))

(declare-fun bs!543119 () Bool)

(assert (= bs!543119 d!886802))

(assert (=> bs!543119 m!3507461))

(assert (=> bs!543119 m!3507461))

(declare-fun m!3508303 () Bool)

(assert (=> bs!543119 m!3508303))

(declare-fun m!3508305 () Bool)

(assert (=> bs!543119 m!3508305))

(assert (=> b!3228287 d!886802))

(declare-fun d!886804 () Bool)

(declare-fun lt!1095353 () Int)

(assert (=> d!886804 (= lt!1095353 (size!27433 (list!12978 (_1!21028 lt!1095184))))))

(assert (=> d!886804 (= lt!1095353 (size!27434 (c!542434 (_1!21028 lt!1095184))))))

(assert (=> d!886804 (= (size!27429 (_1!21028 lt!1095184)) lt!1095353)))

(declare-fun bs!543120 () Bool)

(assert (= bs!543120 d!886804))

(assert (=> bs!543120 m!3507773))

(assert (=> bs!543120 m!3507773))

(declare-fun m!3508307 () Bool)

(assert (=> bs!543120 m!3508307))

(declare-fun m!3508309 () Bool)

(assert (=> bs!543120 m!3508309))

(assert (=> d!886512 d!886804))

(declare-fun d!886806 () Bool)

(assert (=> d!886806 (= (list!12978 (_1!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494)))))) (list!12980 (c!542434 (_1!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494))))))))))

(declare-fun bs!543121 () Bool)

(assert (= bs!543121 d!886806))

(declare-fun m!3508311 () Bool)

(assert (=> bs!543121 m!3508311))

(assert (=> d!886512 d!886806))

(assert (=> d!886512 d!886756))

(assert (=> d!886512 d!886758))

(declare-fun d!886808 () Bool)

(assert (=> d!886808 (= (list!12978 (singletonSeq!2362 (h!41783 tokens!494))) (list!12980 (c!542434 (singletonSeq!2362 (h!41783 tokens!494)))))))

(declare-fun bs!543122 () Bool)

(assert (= bs!543122 d!886808))

(declare-fun m!3508313 () Bool)

(assert (=> bs!543122 m!3508313))

(assert (=> d!886512 d!886808))

(assert (=> d!886512 d!886412))

(assert (=> d!886512 d!886524))

(declare-fun d!886810 () Bool)

(declare-fun lt!1095356 () Int)

(assert (=> d!886810 (= lt!1095356 (size!27433 (list!12978 (_1!21028 lt!1095143))))))

(assert (=> d!886810 (= lt!1095356 (size!27434 (c!542434 (_1!21028 lt!1095143))))))

(assert (=> d!886810 (= (size!27429 (_1!21028 lt!1095143)) lt!1095356)))

(declare-fun bs!543123 () Bool)

(assert (= bs!543123 d!886810))

(assert (=> bs!543123 m!3507461))

(assert (=> bs!543123 m!3507461))

(declare-fun m!3508315 () Bool)

(assert (=> bs!543123 m!3508315))

(declare-fun m!3508317 () Bool)

(assert (=> bs!543123 m!3508317))

(assert (=> d!886454 d!886810))

(declare-fun b!3228921 () Bool)

(declare-fun e!2013949 () tuple2!35788)

(assert (=> b!3228921 (= e!2013949 (tuple2!35789 (BalanceConc!21431 Empty!10908) (seqFromList!3595 lt!1095073)))))

(declare-fun b!3228922 () Bool)

(declare-fun e!2013950 () tuple2!35788)

(declare-fun lt!1095489 () BalanceConc!21428)

(assert (=> b!3228922 (= e!2013950 (tuple2!35789 (BalanceConc!21431 Empty!10908) lt!1095489))))

(declare-fun d!886812 () Bool)

(declare-fun e!2013948 () Bool)

(assert (=> d!886812 e!2013948))

(declare-fun res!1315007 () Bool)

(assert (=> d!886812 (=> (not res!1315007) (not e!2013948))))

(declare-fun lt!1095487 () tuple2!35788)

(declare-fun lexRec!694 (LexerInterface!4855 List!36486 BalanceConc!21428) tuple2!35788)

(assert (=> d!886812 (= res!1315007 (= (list!12978 (_1!21028 lt!1095487)) (list!12978 (_1!21028 (lexRec!694 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073))))))))

(declare-fun e!2013947 () tuple2!35788)

(assert (=> d!886812 (= lt!1095487 e!2013947)))

(declare-fun c!542600 () Bool)

(declare-datatypes ((tuple2!35798 0))(
  ( (tuple2!35799 (_1!21033 Token!9898) (_2!21033 BalanceConc!21428)) )
))
(declare-datatypes ((Option!7217 0))(
  ( (None!7216) (Some!7216 (v!35826 tuple2!35798)) )
))
(declare-fun lt!1095485 () Option!7217)

(assert (=> d!886812 (= c!542600 ((_ is Some!7216) lt!1095485))))

(declare-fun maxPrefixZipperSequenceV2!481 (LexerInterface!4855 List!36486 BalanceConc!21428 BalanceConc!21428) Option!7217)

(assert (=> d!886812 (= lt!1095485 (maxPrefixZipperSequenceV2!481 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073) (seqFromList!3595 lt!1095073)))))

(declare-fun lt!1095483 () Unit!50946)

(declare-fun lt!1095500 () Unit!50946)

(assert (=> d!886812 (= lt!1095483 lt!1095500)))

(declare-fun lt!1095480 () List!36485)

(declare-fun lt!1095476 () List!36485)

(declare-fun isSuffix!856 (List!36485 List!36485) Bool)

(assert (=> d!886812 (isSuffix!856 lt!1095480 (++!8756 lt!1095476 lt!1095480))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!541 (List!36485 List!36485) Unit!50946)

(assert (=> d!886812 (= lt!1095500 (lemmaConcatTwoListThenFSndIsSuffix!541 lt!1095476 lt!1095480))))

(assert (=> d!886812 (= lt!1095480 (list!12975 (seqFromList!3595 lt!1095073)))))

(assert (=> d!886812 (= lt!1095476 (list!12975 (BalanceConc!21429 Empty!10907)))))

(assert (=> d!886812 (= (lexTailRecV2!947 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073) (BalanceConc!21429 Empty!10907) (seqFromList!3595 lt!1095073) (BalanceConc!21431 Empty!10908)) lt!1095487)))

(declare-fun b!3228923 () Bool)

(assert (=> b!3228923 (= e!2013948 (= (list!12975 (_2!21028 lt!1095487)) (list!12975 (_2!21028 (lexRec!694 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073))))))))

(declare-fun b!3228924 () Bool)

(assert (=> b!3228924 (= e!2013947 (tuple2!35789 (BalanceConc!21431 Empty!10908) (seqFromList!3595 lt!1095073)))))

(declare-fun b!3228925 () Bool)

(declare-fun lt!1095486 () BalanceConc!21428)

(declare-fun append!874 (BalanceConc!21430 Token!9898) BalanceConc!21430)

(assert (=> b!3228925 (= e!2013947 (lexTailRecV2!947 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073) lt!1095486 (_2!21033 (v!35826 lt!1095485)) (append!874 (BalanceConc!21431 Empty!10908) (_1!21033 (v!35826 lt!1095485)))))))

(declare-fun lt!1095475 () tuple2!35788)

(assert (=> b!3228925 (= lt!1095475 (lexRec!694 thiss!18206 rules!2135 (_2!21033 (v!35826 lt!1095485))))))

(declare-fun lt!1095498 () List!36485)

(assert (=> b!3228925 (= lt!1095498 (list!12975 (BalanceConc!21429 Empty!10907)))))

(declare-fun lt!1095477 () List!36485)

(assert (=> b!3228925 (= lt!1095477 (list!12975 (charsOf!3282 (_1!21033 (v!35826 lt!1095485)))))))

(declare-fun lt!1095473 () List!36485)

(assert (=> b!3228925 (= lt!1095473 (list!12975 (_2!21033 (v!35826 lt!1095485))))))

(declare-fun lt!1095491 () Unit!50946)

(assert (=> b!3228925 (= lt!1095491 (lemmaConcatAssociativity!1789 lt!1095498 lt!1095477 lt!1095473))))

(assert (=> b!3228925 (= (++!8756 (++!8756 lt!1095498 lt!1095477) lt!1095473) (++!8756 lt!1095498 (++!8756 lt!1095477 lt!1095473)))))

(declare-fun lt!1095499 () Unit!50946)

(assert (=> b!3228925 (= lt!1095499 lt!1095491)))

(declare-fun lt!1095482 () Option!7217)

(declare-fun maxPrefixZipperSequence!1087 (LexerInterface!4855 List!36486 BalanceConc!21428) Option!7217)

(assert (=> b!3228925 (= lt!1095482 (maxPrefixZipperSequence!1087 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073)))))

(declare-fun c!542601 () Bool)

(assert (=> b!3228925 (= c!542601 ((_ is Some!7216) lt!1095482))))

(assert (=> b!3228925 (= (lexRec!694 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073)) e!2013949)))

(declare-fun lt!1095495 () Unit!50946)

(declare-fun Unit!50948 () Unit!50946)

(assert (=> b!3228925 (= lt!1095495 Unit!50948)))

(declare-fun lt!1095493 () List!36487)

(assert (=> b!3228925 (= lt!1095493 (list!12978 (BalanceConc!21431 Empty!10908)))))

(declare-fun lt!1095497 () List!36487)

(assert (=> b!3228925 (= lt!1095497 (Cons!36363 (_1!21033 (v!35826 lt!1095485)) Nil!36363))))

(declare-fun lt!1095496 () List!36487)

(assert (=> b!3228925 (= lt!1095496 (list!12978 (_1!21028 lt!1095475)))))

(declare-fun lt!1095490 () Unit!50946)

(declare-fun lemmaConcatAssociativity!1790 (List!36487 List!36487 List!36487) Unit!50946)

(assert (=> b!3228925 (= lt!1095490 (lemmaConcatAssociativity!1790 lt!1095493 lt!1095497 lt!1095496))))

(declare-fun ++!8760 (List!36487 List!36487) List!36487)

(assert (=> b!3228925 (= (++!8760 (++!8760 lt!1095493 lt!1095497) lt!1095496) (++!8760 lt!1095493 (++!8760 lt!1095497 lt!1095496)))))

(declare-fun lt!1095505 () Unit!50946)

(assert (=> b!3228925 (= lt!1095505 lt!1095490)))

(declare-fun lt!1095492 () List!36485)

(assert (=> b!3228925 (= lt!1095492 (++!8756 (list!12975 (BalanceConc!21429 Empty!10907)) (list!12975 (charsOf!3282 (_1!21033 (v!35826 lt!1095485))))))))

(declare-fun lt!1095506 () List!36485)

(assert (=> b!3228925 (= lt!1095506 (list!12975 (_2!21033 (v!35826 lt!1095485))))))

(declare-fun lt!1095488 () List!36487)

(assert (=> b!3228925 (= lt!1095488 (list!12978 (append!874 (BalanceConc!21431 Empty!10908) (_1!21033 (v!35826 lt!1095485)))))))

(declare-fun lt!1095504 () Unit!50946)

(declare-fun lemmaLexThenLexPrefix!459 (LexerInterface!4855 List!36486 List!36485 List!36485 List!36487 List!36487 List!36485) Unit!50946)

(assert (=> b!3228925 (= lt!1095504 (lemmaLexThenLexPrefix!459 thiss!18206 rules!2135 lt!1095492 lt!1095506 lt!1095488 (list!12978 (_1!21028 lt!1095475)) (list!12975 (_2!21028 lt!1095475))))))

(assert (=> b!3228925 (= (lexList!1335 thiss!18206 rules!2135 lt!1095492) (tuple2!35793 lt!1095488 Nil!36361))))

(declare-fun lt!1095478 () Unit!50946)

(assert (=> b!3228925 (= lt!1095478 lt!1095504)))

(assert (=> b!3228925 (= lt!1095489 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (_1!21033 (v!35826 lt!1095485)))))))

(declare-fun lt!1095481 () Option!7217)

(assert (=> b!3228925 (= lt!1095481 (maxPrefixZipperSequence!1087 thiss!18206 rules!2135 lt!1095489))))

(declare-fun c!542599 () Bool)

(assert (=> b!3228925 (= c!542599 ((_ is Some!7216) lt!1095481))))

(assert (=> b!3228925 (= (lexRec!694 thiss!18206 rules!2135 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (_1!21033 (v!35826 lt!1095485))))) e!2013950)))

(declare-fun lt!1095484 () Unit!50946)

(declare-fun Unit!50949 () Unit!50946)

(assert (=> b!3228925 (= lt!1095484 Unit!50949)))

(assert (=> b!3228925 (= lt!1095486 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (_1!21033 (v!35826 lt!1095485)))))))

(declare-fun lt!1095503 () List!36485)

(assert (=> b!3228925 (= lt!1095503 (list!12975 lt!1095486))))

(declare-fun lt!1095494 () List!36485)

(assert (=> b!3228925 (= lt!1095494 (list!12975 (_2!21033 (v!35826 lt!1095485))))))

(declare-fun lt!1095502 () Unit!50946)

(assert (=> b!3228925 (= lt!1095502 (lemmaConcatTwoListThenFSndIsSuffix!541 lt!1095503 lt!1095494))))

(assert (=> b!3228925 (isSuffix!856 lt!1095494 (++!8756 lt!1095503 lt!1095494))))

(declare-fun lt!1095479 () Unit!50946)

(assert (=> b!3228925 (= lt!1095479 lt!1095502)))

(declare-fun lt!1095474 () tuple2!35788)

(declare-fun b!3228926 () Bool)

(assert (=> b!3228926 (= lt!1095474 (lexRec!694 thiss!18206 rules!2135 (_2!21033 (v!35826 lt!1095482))))))

(declare-fun prepend!1182 (BalanceConc!21430 Token!9898) BalanceConc!21430)

(assert (=> b!3228926 (= e!2013949 (tuple2!35789 (prepend!1182 (_1!21028 lt!1095474) (_1!21033 (v!35826 lt!1095482))) (_2!21028 lt!1095474)))))

(declare-fun b!3228927 () Bool)

(declare-fun lt!1095501 () tuple2!35788)

(assert (=> b!3228927 (= lt!1095501 (lexRec!694 thiss!18206 rules!2135 (_2!21033 (v!35826 lt!1095481))))))

(assert (=> b!3228927 (= e!2013950 (tuple2!35789 (prepend!1182 (_1!21028 lt!1095501) (_1!21033 (v!35826 lt!1095481))) (_2!21028 lt!1095501)))))

(assert (= (and d!886812 c!542600) b!3228925))

(assert (= (and d!886812 (not c!542600)) b!3228924))

(assert (= (and b!3228925 c!542601) b!3228926))

(assert (= (and b!3228925 (not c!542601)) b!3228921))

(assert (= (and b!3228925 c!542599) b!3228927))

(assert (= (and b!3228925 (not c!542599)) b!3228922))

(assert (= (and d!886812 res!1315007) b!3228923))

(declare-fun m!3508527 () Bool)

(assert (=> b!3228923 m!3508527))

(assert (=> b!3228923 m!3507165))

(declare-fun m!3508529 () Bool)

(assert (=> b!3228923 m!3508529))

(declare-fun m!3508531 () Bool)

(assert (=> b!3228923 m!3508531))

(declare-fun m!3508533 () Bool)

(assert (=> b!3228925 m!3508533))

(declare-fun m!3508535 () Bool)

(assert (=> b!3228925 m!3508535))

(declare-fun m!3508537 () Bool)

(assert (=> b!3228925 m!3508537))

(declare-fun m!3508539 () Bool)

(assert (=> b!3228925 m!3508539))

(declare-fun m!3508541 () Bool)

(assert (=> b!3228925 m!3508541))

(declare-fun m!3508543 () Bool)

(assert (=> b!3228925 m!3508543))

(declare-fun m!3508545 () Bool)

(assert (=> b!3228925 m!3508545))

(assert (=> b!3228925 m!3507165))

(assert (=> b!3228925 m!3508529))

(declare-fun m!3508547 () Bool)

(assert (=> b!3228925 m!3508547))

(assert (=> b!3228925 m!3507199))

(declare-fun m!3508549 () Bool)

(assert (=> b!3228925 m!3508549))

(declare-fun m!3508551 () Bool)

(assert (=> b!3228925 m!3508551))

(declare-fun m!3508553 () Bool)

(assert (=> b!3228925 m!3508553))

(declare-fun m!3508555 () Bool)

(assert (=> b!3228925 m!3508555))

(assert (=> b!3228925 m!3507165))

(assert (=> b!3228925 m!3508555))

(declare-fun m!3508557 () Bool)

(assert (=> b!3228925 m!3508557))

(declare-fun m!3508559 () Bool)

(assert (=> b!3228925 m!3508559))

(declare-fun m!3508561 () Bool)

(assert (=> b!3228925 m!3508561))

(assert (=> b!3228925 m!3508543))

(declare-fun m!3508563 () Bool)

(assert (=> b!3228925 m!3508563))

(declare-fun m!3508565 () Bool)

(assert (=> b!3228925 m!3508565))

(assert (=> b!3228925 m!3508539))

(assert (=> b!3228925 m!3508555))

(declare-fun m!3508567 () Bool)

(assert (=> b!3228925 m!3508567))

(assert (=> b!3228925 m!3508551))

(declare-fun m!3508569 () Bool)

(assert (=> b!3228925 m!3508569))

(declare-fun m!3508571 () Bool)

(assert (=> b!3228925 m!3508571))

(assert (=> b!3228925 m!3508543))

(assert (=> b!3228925 m!3507199))

(assert (=> b!3228925 m!3508563))

(declare-fun m!3508573 () Bool)

(assert (=> b!3228925 m!3508573))

(declare-fun m!3508575 () Bool)

(assert (=> b!3228925 m!3508575))

(assert (=> b!3228925 m!3508565))

(declare-fun m!3508577 () Bool)

(assert (=> b!3228925 m!3508577))

(declare-fun m!3508579 () Bool)

(assert (=> b!3228925 m!3508579))

(assert (=> b!3228925 m!3508545))

(declare-fun m!3508581 () Bool)

(assert (=> b!3228925 m!3508581))

(declare-fun m!3508583 () Bool)

(assert (=> b!3228925 m!3508583))

(assert (=> b!3228925 m!3507165))

(declare-fun m!3508585 () Bool)

(assert (=> b!3228925 m!3508585))

(assert (=> b!3228925 m!3508579))

(declare-fun m!3508587 () Bool)

(assert (=> b!3228925 m!3508587))

(declare-fun m!3508589 () Bool)

(assert (=> b!3228925 m!3508589))

(assert (=> b!3228925 m!3508589))

(declare-fun m!3508591 () Bool)

(assert (=> b!3228925 m!3508591))

(declare-fun m!3508593 () Bool)

(assert (=> b!3228925 m!3508593))

(assert (=> b!3228925 m!3508549))

(assert (=> b!3228925 m!3508569))

(declare-fun m!3508595 () Bool)

(assert (=> b!3228927 m!3508595))

(declare-fun m!3508597 () Bool)

(assert (=> b!3228927 m!3508597))

(assert (=> d!886812 m!3507165))

(assert (=> d!886812 m!3507165))

(declare-fun m!3508599 () Bool)

(assert (=> d!886812 m!3508599))

(assert (=> d!886812 m!3507165))

(assert (=> d!886812 m!3508529))

(declare-fun m!3508601 () Bool)

(assert (=> d!886812 m!3508601))

(declare-fun m!3508603 () Bool)

(assert (=> d!886812 m!3508603))

(declare-fun m!3508605 () Bool)

(assert (=> d!886812 m!3508605))

(assert (=> d!886812 m!3508601))

(declare-fun m!3508607 () Bool)

(assert (=> d!886812 m!3508607))

(assert (=> d!886812 m!3507165))

(assert (=> d!886812 m!3507457))

(assert (=> d!886812 m!3507199))

(declare-fun m!3508609 () Bool)

(assert (=> d!886812 m!3508609))

(declare-fun m!3508611 () Bool)

(assert (=> b!3228926 m!3508611))

(declare-fun m!3508613 () Bool)

(assert (=> b!3228926 m!3508613))

(assert (=> d!886454 d!886812))

(declare-fun b!3228931 () Bool)

(declare-fun e!2013952 () List!36485)

(assert (=> b!3228931 (= e!2013952 (++!8756 (list!12979 (left!28314 (c!542433 (charsOf!3282 separatorToken!241)))) (list!12979 (right!28644 (c!542433 (charsOf!3282 separatorToken!241))))))))

(declare-fun b!3228930 () Bool)

(assert (=> b!3228930 (= e!2013952 (list!12981 (xs!14025 (c!542433 (charsOf!3282 separatorToken!241)))))))

(declare-fun b!3228929 () Bool)

(declare-fun e!2013951 () List!36485)

(assert (=> b!3228929 (= e!2013951 e!2013952)))

(declare-fun c!542603 () Bool)

(assert (=> b!3228929 (= c!542603 ((_ is Leaf!17151) (c!542433 (charsOf!3282 separatorToken!241))))))

(declare-fun d!886884 () Bool)

(declare-fun c!542602 () Bool)

(assert (=> d!886884 (= c!542602 ((_ is Empty!10907) (c!542433 (charsOf!3282 separatorToken!241))))))

(assert (=> d!886884 (= (list!12979 (c!542433 (charsOf!3282 separatorToken!241))) e!2013951)))

(declare-fun b!3228928 () Bool)

(assert (=> b!3228928 (= e!2013951 Nil!36361)))

(assert (= (and d!886884 c!542602) b!3228928))

(assert (= (and d!886884 (not c!542602)) b!3228929))

(assert (= (and b!3228929 c!542603) b!3228930))

(assert (= (and b!3228929 (not c!542603)) b!3228931))

(declare-fun m!3508615 () Bool)

(assert (=> b!3228931 m!3508615))

(declare-fun m!3508617 () Bool)

(assert (=> b!3228931 m!3508617))

(assert (=> b!3228931 m!3508615))

(assert (=> b!3228931 m!3508617))

(declare-fun m!3508619 () Bool)

(assert (=> b!3228931 m!3508619))

(declare-fun m!3508621 () Bool)

(assert (=> b!3228930 m!3508621))

(assert (=> d!886498 d!886884))

(declare-fun d!886886 () Bool)

(assert (=> d!886886 true))

(declare-fun lt!1095509 () Bool)

(declare-fun rulesValidInductive!1789 (LexerInterface!4855 List!36486) Bool)

(assert (=> d!886886 (= lt!1095509 (rulesValidInductive!1789 thiss!18206 rules!2135))))

(declare-fun lambda!118248 () Int)

(declare-fun forall!7476 (List!36486 Int) Bool)

(assert (=> d!886886 (= lt!1095509 (forall!7476 rules!2135 lambda!118248))))

(assert (=> d!886886 (= (rulesValid!1931 thiss!18206 rules!2135) lt!1095509)))

(declare-fun bs!543147 () Bool)

(assert (= bs!543147 d!886886))

(declare-fun m!3508623 () Bool)

(assert (=> bs!543147 m!3508623))

(declare-fun m!3508625 () Bool)

(assert (=> bs!543147 m!3508625))

(assert (=> d!886448 d!886886))

(declare-fun b!3228952 () Bool)

(declare-fun e!2013964 () List!36487)

(assert (=> b!3228952 (= e!2013964 lt!1095096)))

(declare-fun b!3228953 () Bool)

(assert (=> b!3228953 (= e!2013964 (drop!1876 (t!241332 lt!1095096) (- (+ 0 1) 1)))))

(declare-fun b!3228954 () Bool)

(declare-fun e!2013967 () Int)

(assert (=> b!3228954 (= e!2013967 0)))

(declare-fun b!3228955 () Bool)

(declare-fun e!2013965 () List!36487)

(assert (=> b!3228955 (= e!2013965 Nil!36363)))

(declare-fun b!3228956 () Bool)

(declare-fun e!2013963 () Bool)

(declare-fun lt!1095512 () List!36487)

(declare-fun e!2013966 () Int)

(assert (=> b!3228956 (= e!2013963 (= (size!27433 lt!1095512) e!2013966))))

(declare-fun c!542614 () Bool)

(assert (=> b!3228956 (= c!542614 (<= (+ 0 1) 0))))

(declare-fun b!3228957 () Bool)

(declare-fun call!233216 () Int)

(assert (=> b!3228957 (= e!2013967 (- call!233216 (+ 0 1)))))

(declare-fun b!3228958 () Bool)

(assert (=> b!3228958 (= e!2013966 call!233216)))

(declare-fun bm!233211 () Bool)

(assert (=> bm!233211 (= call!233216 (size!27433 lt!1095096))))

(declare-fun d!886888 () Bool)

(assert (=> d!886888 e!2013963))

(declare-fun res!1315010 () Bool)

(assert (=> d!886888 (=> (not res!1315010) (not e!2013963))))

(assert (=> d!886888 (= res!1315010 (= ((_ map implies) (content!4920 lt!1095512) (content!4920 lt!1095096)) ((as const (InoxSet Token!9898)) true)))))

(assert (=> d!886888 (= lt!1095512 e!2013965)))

(declare-fun c!542612 () Bool)

(assert (=> d!886888 (= c!542612 ((_ is Nil!36363) lt!1095096))))

(assert (=> d!886888 (= (drop!1876 lt!1095096 (+ 0 1)) lt!1095512)))

(declare-fun b!3228959 () Bool)

(assert (=> b!3228959 (= e!2013966 e!2013967)))

(declare-fun c!542613 () Bool)

(assert (=> b!3228959 (= c!542613 (>= (+ 0 1) call!233216))))

(declare-fun b!3228960 () Bool)

(assert (=> b!3228960 (= e!2013965 e!2013964)))

(declare-fun c!542615 () Bool)

(assert (=> b!3228960 (= c!542615 (<= (+ 0 1) 0))))

(assert (= (and d!886888 c!542612) b!3228955))

(assert (= (and d!886888 (not c!542612)) b!3228960))

(assert (= (and b!3228960 c!542615) b!3228952))

(assert (= (and b!3228960 (not c!542615)) b!3228953))

(assert (= (and d!886888 res!1315010) b!3228956))

(assert (= (and b!3228956 c!542614) b!3228958))

(assert (= (and b!3228956 (not c!542614)) b!3228959))

(assert (= (and b!3228959 c!542613) b!3228954))

(assert (= (and b!3228959 (not c!542613)) b!3228957))

(assert (= (or b!3228958 b!3228959 b!3228957) bm!233211))

(declare-fun m!3508627 () Bool)

(assert (=> b!3228953 m!3508627))

(declare-fun m!3508629 () Bool)

(assert (=> b!3228956 m!3508629))

(declare-fun m!3508631 () Bool)

(assert (=> bm!233211 m!3508631))

(declare-fun m!3508633 () Bool)

(assert (=> d!886888 m!3508633))

(declare-fun m!3508635 () Bool)

(assert (=> d!886888 m!3508635))

(assert (=> b!3228127 d!886888))

(declare-fun d!886890 () Bool)

(assert (=> d!886890 (= (head!7088 (drop!1876 lt!1095094 0)) (apply!8301 lt!1095094 0))))

(declare-fun lt!1095515 () Unit!50946)

(declare-fun choose!18833 (List!36487 Int) Unit!50946)

(assert (=> d!886890 (= lt!1095515 (choose!18833 lt!1095094 0))))

(declare-fun e!2013970 () Bool)

(assert (=> d!886890 e!2013970))

(declare-fun res!1315013 () Bool)

(assert (=> d!886890 (=> (not res!1315013) (not e!2013970))))

(assert (=> d!886890 (= res!1315013 (>= 0 0))))

(assert (=> d!886890 (= (lemmaDropApply!1052 lt!1095094 0) lt!1095515)))

(declare-fun b!3228963 () Bool)

(assert (=> b!3228963 (= e!2013970 (< 0 (size!27433 lt!1095094)))))

(assert (= (and d!886890 res!1315013) b!3228963))

(assert (=> d!886890 m!3507215))

(assert (=> d!886890 m!3507215))

(assert (=> d!886890 m!3507217))

(assert (=> d!886890 m!3507213))

(declare-fun m!3508637 () Bool)

(assert (=> d!886890 m!3508637))

(declare-fun m!3508639 () Bool)

(assert (=> b!3228963 m!3508639))

(assert (=> b!3228127 d!886890))

(declare-fun b!3228964 () Bool)

(declare-fun e!2013972 () List!36487)

(assert (=> b!3228964 (= e!2013972 lt!1095094)))

(declare-fun b!3228965 () Bool)

(assert (=> b!3228965 (= e!2013972 (drop!1876 (t!241332 lt!1095094) (- 0 1)))))

(declare-fun b!3228966 () Bool)

(declare-fun e!2013975 () Int)

(assert (=> b!3228966 (= e!2013975 0)))

(declare-fun b!3228967 () Bool)

(declare-fun e!2013973 () List!36487)

(assert (=> b!3228967 (= e!2013973 Nil!36363)))

(declare-fun b!3228968 () Bool)

(declare-fun e!2013971 () Bool)

(declare-fun lt!1095516 () List!36487)

(declare-fun e!2013974 () Int)

(assert (=> b!3228968 (= e!2013971 (= (size!27433 lt!1095516) e!2013974))))

(declare-fun c!542618 () Bool)

(assert (=> b!3228968 (= c!542618 (<= 0 0))))

(declare-fun b!3228969 () Bool)

(declare-fun call!233217 () Int)

(assert (=> b!3228969 (= e!2013975 (- call!233217 0))))

(declare-fun b!3228970 () Bool)

(assert (=> b!3228970 (= e!2013974 call!233217)))

(declare-fun bm!233212 () Bool)

(assert (=> bm!233212 (= call!233217 (size!27433 lt!1095094))))

(declare-fun d!886892 () Bool)

(assert (=> d!886892 e!2013971))

(declare-fun res!1315014 () Bool)

(assert (=> d!886892 (=> (not res!1315014) (not e!2013971))))

(assert (=> d!886892 (= res!1315014 (= ((_ map implies) (content!4920 lt!1095516) (content!4920 lt!1095094)) ((as const (InoxSet Token!9898)) true)))))

(assert (=> d!886892 (= lt!1095516 e!2013973)))

(declare-fun c!542616 () Bool)

(assert (=> d!886892 (= c!542616 ((_ is Nil!36363) lt!1095094))))

(assert (=> d!886892 (= (drop!1876 lt!1095094 0) lt!1095516)))

(declare-fun b!3228971 () Bool)

(assert (=> b!3228971 (= e!2013974 e!2013975)))

(declare-fun c!542617 () Bool)

(assert (=> b!3228971 (= c!542617 (>= 0 call!233217))))

(declare-fun b!3228972 () Bool)

(assert (=> b!3228972 (= e!2013973 e!2013972)))

(declare-fun c!542619 () Bool)

(assert (=> b!3228972 (= c!542619 (<= 0 0))))

(assert (= (and d!886892 c!542616) b!3228967))

(assert (= (and d!886892 (not c!542616)) b!3228972))

(assert (= (and b!3228972 c!542619) b!3228964))

(assert (= (and b!3228972 (not c!542619)) b!3228965))

(assert (= (and d!886892 res!1315014) b!3228968))

(assert (= (and b!3228968 c!542618) b!3228970))

(assert (= (and b!3228968 (not c!542618)) b!3228971))

(assert (= (and b!3228971 c!542617) b!3228966))

(assert (= (and b!3228971 (not c!542617)) b!3228969))

(assert (= (or b!3228970 b!3228971 b!3228969) bm!233212))

(declare-fun m!3508641 () Bool)

(assert (=> b!3228965 m!3508641))

(declare-fun m!3508643 () Bool)

(assert (=> b!3228968 m!3508643))

(assert (=> bm!233212 m!3508639))

(declare-fun m!3508645 () Bool)

(assert (=> d!886892 m!3508645))

(declare-fun m!3508647 () Bool)

(assert (=> d!886892 m!3508647))

(assert (=> b!3228127 d!886892))

(declare-fun d!886894 () Bool)

(assert (=> d!886894 (= (tail!5232 (drop!1876 lt!1095096 0)) (t!241332 (drop!1876 lt!1095096 0)))))

(assert (=> b!3228127 d!886894))

(declare-fun d!886896 () Bool)

(assert (=> d!886896 (= (tail!5232 (drop!1876 lt!1095096 0)) (drop!1876 lt!1095096 (+ 0 1)))))

(declare-fun lt!1095519 () Unit!50946)

(declare-fun choose!18834 (List!36487 Int) Unit!50946)

(assert (=> d!886896 (= lt!1095519 (choose!18834 lt!1095096 0))))

(declare-fun e!2013978 () Bool)

(assert (=> d!886896 e!2013978))

(declare-fun res!1315017 () Bool)

(assert (=> d!886896 (=> (not res!1315017) (not e!2013978))))

(assert (=> d!886896 (= res!1315017 (>= 0 0))))

(assert (=> d!886896 (= (lemmaDropTail!936 lt!1095096 0) lt!1095519)))

(declare-fun b!3228975 () Bool)

(assert (=> b!3228975 (= e!2013978 (< 0 (size!27433 lt!1095096)))))

(assert (= (and d!886896 res!1315017) b!3228975))

(assert (=> d!886896 m!3507225))

(assert (=> d!886896 m!3507225))

(assert (=> d!886896 m!3507227))

(assert (=> d!886896 m!3507211))

(declare-fun m!3508649 () Bool)

(assert (=> d!886896 m!3508649))

(assert (=> b!3228975 m!3508631))

(assert (=> b!3228127 d!886896))

(declare-fun d!886898 () Bool)

(assert (=> d!886898 (= (head!7088 (drop!1876 lt!1095094 0)) (h!41783 (drop!1876 lt!1095094 0)))))

(assert (=> b!3228127 d!886898))

(declare-fun d!886900 () Bool)

(declare-fun lt!1095520 () Token!9898)

(assert (=> d!886900 (= lt!1095520 (apply!8301 (list!12978 lt!1095069) 0))))

(assert (=> d!886900 (= lt!1095520 (apply!8303 (c!542434 lt!1095069) 0))))

(declare-fun e!2013979 () Bool)

(assert (=> d!886900 e!2013979))

(declare-fun res!1315018 () Bool)

(assert (=> d!886900 (=> (not res!1315018) (not e!2013979))))

(assert (=> d!886900 (= res!1315018 (<= 0 0))))

(assert (=> d!886900 (= (apply!8300 lt!1095069 0) lt!1095520)))

(declare-fun b!3228976 () Bool)

(assert (=> b!3228976 (= e!2013979 (< 0 (size!27429 lt!1095069)))))

(assert (= (and d!886900 res!1315018) b!3228976))

(assert (=> d!886900 m!3507205))

(assert (=> d!886900 m!3507205))

(declare-fun m!3508651 () Bool)

(assert (=> d!886900 m!3508651))

(declare-fun m!3508653 () Bool)

(assert (=> d!886900 m!3508653))

(assert (=> b!3228976 m!3507195))

(assert (=> b!3228127 d!886900))

(declare-fun d!886902 () Bool)

(declare-fun lt!1095521 () BalanceConc!21428)

(assert (=> d!886902 (= (list!12975 lt!1095521) (originalCharacters!5980 (apply!8300 lt!1095069 0)))))

(assert (=> d!886902 (= lt!1095521 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 0)))) (value!170541 (apply!8300 lt!1095069 0))))))

(assert (=> d!886902 (= (charsOf!3282 (apply!8300 lt!1095069 0)) lt!1095521)))

(declare-fun b_lambda!88943 () Bool)

(assert (=> (not b_lambda!88943) (not d!886902)))

(declare-fun tb!159915 () Bool)

(declare-fun t!241439 () Bool)

(assert (=> (and b!3228460 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 0))))) t!241439) tb!159915))

(declare-fun b!3228977 () Bool)

(declare-fun e!2013980 () Bool)

(declare-fun tp!1017385 () Bool)

(assert (=> b!3228977 (= e!2013980 (and (inv!49253 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 0)))) (value!170541 (apply!8300 lt!1095069 0))))) tp!1017385))))

(declare-fun result!202472 () Bool)

(assert (=> tb!159915 (= result!202472 (and (inv!49254 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 0)))) (value!170541 (apply!8300 lt!1095069 0)))) e!2013980))))

(assert (= tb!159915 b!3228977))

(declare-fun m!3508655 () Bool)

(assert (=> b!3228977 m!3508655))

(declare-fun m!3508657 () Bool)

(assert (=> tb!159915 m!3508657))

(assert (=> d!886902 t!241439))

(declare-fun b_and!216295 () Bool)

(assert (= b_and!216279 (and (=> t!241439 result!202472) b_and!216295)))

(declare-fun tb!159917 () Bool)

(declare-fun t!241441 () Bool)

(assert (=> (and b!3228076 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 0))))) t!241441) tb!159917))

(declare-fun result!202474 () Bool)

(assert (= result!202474 result!202472))

(assert (=> d!886902 t!241441))

(declare-fun b_and!216297 () Bool)

(assert (= b_and!216281 (and (=> t!241441 result!202474) b_and!216297)))

(declare-fun t!241443 () Bool)

(declare-fun tb!159919 () Bool)

(assert (=> (and b!3228072 (= (toChars!7233 (transformation!5266 (h!41782 rules!2135))) (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 0))))) t!241443) tb!159919))

(declare-fun result!202476 () Bool)

(assert (= result!202476 result!202472))

(assert (=> d!886902 t!241443))

(declare-fun b_and!216299 () Bool)

(assert (= b_and!216277 (and (=> t!241443 result!202476) b_and!216299)))

(declare-fun tb!159921 () Bool)

(declare-fun t!241445 () Bool)

(assert (=> (and b!3228087 (= (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 0))))) t!241445) tb!159921))

(declare-fun result!202478 () Bool)

(assert (= result!202478 result!202472))

(assert (=> d!886902 t!241445))

(declare-fun b_and!216301 () Bool)

(assert (= b_and!216275 (and (=> t!241445 result!202478) b_and!216301)))

(declare-fun t!241447 () Bool)

(declare-fun tb!159923 () Bool)

(assert (=> (and b!3228442 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 rules!2135)))) (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 0))))) t!241447) tb!159923))

(declare-fun result!202480 () Bool)

(assert (= result!202480 result!202472))

(assert (=> d!886902 t!241447))

(declare-fun b_and!216303 () Bool)

(assert (= b_and!216283 (and (=> t!241447 result!202480) b_and!216303)))

(declare-fun m!3508659 () Bool)

(assert (=> d!886902 m!3508659))

(declare-fun m!3508661 () Bool)

(assert (=> d!886902 m!3508661))

(assert (=> b!3228127 d!886902))

(declare-fun d!886904 () Bool)

(declare-fun lt!1095524 () Token!9898)

(assert (=> d!886904 (contains!6527 lt!1095094 lt!1095524)))

(declare-fun e!2013985 () Token!9898)

(assert (=> d!886904 (= lt!1095524 e!2013985)))

(declare-fun c!542622 () Bool)

(assert (=> d!886904 (= c!542622 (= 0 0))))

(declare-fun e!2013986 () Bool)

(assert (=> d!886904 e!2013986))

(declare-fun res!1315021 () Bool)

(assert (=> d!886904 (=> (not res!1315021) (not e!2013986))))

(assert (=> d!886904 (= res!1315021 (<= 0 0))))

(assert (=> d!886904 (= (apply!8301 lt!1095094 0) lt!1095524)))

(declare-fun b!3228984 () Bool)

(assert (=> b!3228984 (= e!2013986 (< 0 (size!27433 lt!1095094)))))

(declare-fun b!3228985 () Bool)

(assert (=> b!3228985 (= e!2013985 (head!7088 lt!1095094))))

(declare-fun b!3228986 () Bool)

(assert (=> b!3228986 (= e!2013985 (apply!8301 (tail!5232 lt!1095094) (- 0 1)))))

(assert (= (and d!886904 res!1315021) b!3228984))

(assert (= (and d!886904 c!542622) b!3228985))

(assert (= (and d!886904 (not c!542622)) b!3228986))

(declare-fun m!3508663 () Bool)

(assert (=> d!886904 m!3508663))

(assert (=> b!3228984 m!3508639))

(declare-fun m!3508665 () Bool)

(assert (=> b!3228985 m!3508665))

(declare-fun m!3508667 () Bool)

(assert (=> b!3228986 m!3508667))

(assert (=> b!3228986 m!3508667))

(declare-fun m!3508669 () Bool)

(assert (=> b!3228986 m!3508669))

(assert (=> b!3228127 d!886904))

(declare-fun b!3228995 () Bool)

(declare-fun res!1315031 () Bool)

(declare-fun e!2013989 () Bool)

(assert (=> b!3228995 (=> (not res!1315031) (not e!2013989))))

(declare-fun ++!8761 (Conc!10907 Conc!10907) Conc!10907)

(assert (=> b!3228995 (= res!1315031 (isBalanced!3247 (++!8761 (c!542433 (BalanceConc!21429 Empty!10907)) (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0))))))))

(declare-fun b!3228996 () Bool)

(declare-fun res!1315033 () Bool)

(assert (=> b!3228996 (=> (not res!1315033) (not e!2013989))))

(declare-fun height!1580 (Conc!10907) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3228996 (= res!1315033 (<= (height!1580 (++!8761 (c!542433 (BalanceConc!21429 Empty!10907)) (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0))))) (+ (max!0 (height!1580 (c!542433 (BalanceConc!21429 Empty!10907))) (height!1580 (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0))))) 1)))))

(declare-fun b!3228997 () Bool)

(declare-fun res!1315030 () Bool)

(assert (=> b!3228997 (=> (not res!1315030) (not e!2013989))))

(assert (=> b!3228997 (= res!1315030 (>= (height!1580 (++!8761 (c!542433 (BalanceConc!21429 Empty!10907)) (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0))))) (max!0 (height!1580 (c!542433 (BalanceConc!21429 Empty!10907))) (height!1580 (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0)))))))))

(declare-fun d!886906 () Bool)

(assert (=> d!886906 e!2013989))

(declare-fun res!1315032 () Bool)

(assert (=> d!886906 (=> (not res!1315032) (not e!2013989))))

(declare-fun appendAssocInst!745 (Conc!10907 Conc!10907) Bool)

(assert (=> d!886906 (= res!1315032 (appendAssocInst!745 (c!542433 (BalanceConc!21429 Empty!10907)) (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0)))))))

(declare-fun lt!1095537 () BalanceConc!21428)

(assert (=> d!886906 (= lt!1095537 (BalanceConc!21429 (++!8761 (c!542433 (BalanceConc!21429 Empty!10907)) (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0))))))))

(assert (=> d!886906 (= (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095069 0))) lt!1095537)))

(declare-fun b!3228998 () Bool)

(assert (=> b!3228998 (= e!2013989 (= (list!12975 lt!1095537) (++!8756 (list!12975 (BalanceConc!21429 Empty!10907)) (list!12975 (charsOf!3282 (apply!8300 lt!1095069 0))))))))

(assert (= (and d!886906 res!1315032) b!3228995))

(assert (= (and b!3228995 res!1315031) b!3228996))

(assert (= (and b!3228996 res!1315033) b!3228997))

(assert (= (and b!3228997 res!1315030) b!3228998))

(declare-fun m!3508671 () Bool)

(assert (=> b!3228997 m!3508671))

(declare-fun m!3508673 () Bool)

(assert (=> b!3228997 m!3508673))

(assert (=> b!3228997 m!3508671))

(declare-fun m!3508675 () Bool)

(assert (=> b!3228997 m!3508675))

(declare-fun m!3508677 () Bool)

(assert (=> b!3228997 m!3508677))

(assert (=> b!3228997 m!3508677))

(assert (=> b!3228997 m!3508673))

(declare-fun m!3508679 () Bool)

(assert (=> b!3228997 m!3508679))

(declare-fun m!3508681 () Bool)

(assert (=> d!886906 m!3508681))

(assert (=> d!886906 m!3508671))

(assert (=> b!3228995 m!3508671))

(assert (=> b!3228995 m!3508671))

(declare-fun m!3508683 () Bool)

(assert (=> b!3228995 m!3508683))

(declare-fun m!3508685 () Bool)

(assert (=> b!3228998 m!3508685))

(assert (=> b!3228998 m!3507199))

(assert (=> b!3228998 m!3507221))

(declare-fun m!3508687 () Bool)

(assert (=> b!3228998 m!3508687))

(assert (=> b!3228998 m!3507199))

(assert (=> b!3228998 m!3508687))

(declare-fun m!3508689 () Bool)

(assert (=> b!3228998 m!3508689))

(assert (=> b!3228996 m!3508671))

(assert (=> b!3228996 m!3508673))

(assert (=> b!3228996 m!3508671))

(assert (=> b!3228996 m!3508675))

(assert (=> b!3228996 m!3508677))

(assert (=> b!3228996 m!3508677))

(assert (=> b!3228996 m!3508673))

(assert (=> b!3228996 m!3508679))

(assert (=> b!3228127 d!886906))

(declare-fun d!886908 () Bool)

(declare-fun lt!1095557 () BalanceConc!21428)

(assert (=> d!886908 (= (list!12975 lt!1095557) (printListTailRec!576 thiss!18206 (dropList!1093 lt!1095069 (+ 0 1)) (list!12975 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095069 0))))))))

(declare-fun e!2013993 () BalanceConc!21428)

(assert (=> d!886908 (= lt!1095557 e!2013993)))

(declare-fun c!542628 () Bool)

(assert (=> d!886908 (= c!542628 (>= (+ 0 1) (size!27429 lt!1095069)))))

(declare-fun e!2013992 () Bool)

(assert (=> d!886908 e!2013992))

(declare-fun res!1315034 () Bool)

(assert (=> d!886908 (=> (not res!1315034) (not e!2013992))))

(assert (=> d!886908 (= res!1315034 (>= (+ 0 1) 0))))

(assert (=> d!886908 (= (printTailRec!1352 thiss!18206 lt!1095069 (+ 0 1) (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095069 0)))) lt!1095557)))

(declare-fun b!3229003 () Bool)

(assert (=> b!3229003 (= e!2013992 (<= (+ 0 1) (size!27429 lt!1095069)))))

(declare-fun b!3229004 () Bool)

(assert (=> b!3229004 (= e!2013993 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095069 0))))))

(declare-fun b!3229005 () Bool)

(assert (=> b!3229005 (= e!2013993 (printTailRec!1352 thiss!18206 lt!1095069 (+ 0 1 1) (++!8757 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095069 0))) (charsOf!3282 (apply!8300 lt!1095069 (+ 0 1))))))))

(declare-fun lt!1095554 () List!36487)

(assert (=> b!3229005 (= lt!1095554 (list!12978 lt!1095069))))

(declare-fun lt!1095553 () Unit!50946)

(assert (=> b!3229005 (= lt!1095553 (lemmaDropApply!1052 lt!1095554 (+ 0 1)))))

(assert (=> b!3229005 (= (head!7088 (drop!1876 lt!1095554 (+ 0 1))) (apply!8301 lt!1095554 (+ 0 1)))))

(declare-fun lt!1095555 () Unit!50946)

(assert (=> b!3229005 (= lt!1095555 lt!1095553)))

(declare-fun lt!1095556 () List!36487)

(assert (=> b!3229005 (= lt!1095556 (list!12978 lt!1095069))))

(declare-fun lt!1095552 () Unit!50946)

(assert (=> b!3229005 (= lt!1095552 (lemmaDropTail!936 lt!1095556 (+ 0 1)))))

(assert (=> b!3229005 (= (tail!5232 (drop!1876 lt!1095556 (+ 0 1))) (drop!1876 lt!1095556 (+ 0 1 1)))))

(declare-fun lt!1095558 () Unit!50946)

(assert (=> b!3229005 (= lt!1095558 lt!1095552)))

(assert (= (and d!886908 res!1315034) b!3229003))

(assert (= (and d!886908 c!542628) b!3229004))

(assert (= (and d!886908 (not c!542628)) b!3229005))

(assert (=> d!886908 m!3507195))

(declare-fun m!3508691 () Bool)

(assert (=> d!886908 m!3508691))

(assert (=> d!886908 m!3508691))

(declare-fun m!3508693 () Bool)

(assert (=> d!886908 m!3508693))

(declare-fun m!3508695 () Bool)

(assert (=> d!886908 m!3508695))

(declare-fun m!3508697 () Bool)

(assert (=> d!886908 m!3508697))

(assert (=> d!886908 m!3507207))

(assert (=> d!886908 m!3508693))

(assert (=> b!3229003 m!3507195))

(assert (=> b!3229005 m!3507205))

(declare-fun m!3508699 () Bool)

(assert (=> b!3229005 m!3508699))

(declare-fun m!3508701 () Bool)

(assert (=> b!3229005 m!3508701))

(declare-fun m!3508703 () Bool)

(assert (=> b!3229005 m!3508703))

(declare-fun m!3508705 () Bool)

(assert (=> b!3229005 m!3508705))

(declare-fun m!3508707 () Bool)

(assert (=> b!3229005 m!3508707))

(declare-fun m!3508709 () Bool)

(assert (=> b!3229005 m!3508709))

(declare-fun m!3508711 () Bool)

(assert (=> b!3229005 m!3508711))

(declare-fun m!3508713 () Bool)

(assert (=> b!3229005 m!3508713))

(declare-fun m!3508715 () Bool)

(assert (=> b!3229005 m!3508715))

(assert (=> b!3229005 m!3508707))

(declare-fun m!3508717 () Bool)

(assert (=> b!3229005 m!3508717))

(declare-fun m!3508719 () Bool)

(assert (=> b!3229005 m!3508719))

(assert (=> b!3229005 m!3507207))

(assert (=> b!3229005 m!3508713))

(assert (=> b!3229005 m!3508699))

(assert (=> b!3229005 m!3508711))

(declare-fun m!3508721 () Bool)

(assert (=> b!3229005 m!3508721))

(assert (=> b!3229005 m!3508717))

(assert (=> b!3228127 d!886908))

(assert (=> b!3228127 d!886576))

(declare-fun b!3229014 () Bool)

(declare-fun e!2013999 () List!36487)

(assert (=> b!3229014 (= e!2013999 lt!1095096)))

(declare-fun b!3229015 () Bool)

(assert (=> b!3229015 (= e!2013999 (drop!1876 (t!241332 lt!1095096) (- 0 1)))))

(declare-fun b!3229016 () Bool)

(declare-fun e!2014002 () Int)

(assert (=> b!3229016 (= e!2014002 0)))

(declare-fun b!3229017 () Bool)

(declare-fun e!2014000 () List!36487)

(assert (=> b!3229017 (= e!2014000 Nil!36363)))

(declare-fun b!3229018 () Bool)

(declare-fun e!2013998 () Bool)

(declare-fun lt!1095591 () List!36487)

(declare-fun e!2014001 () Int)

(assert (=> b!3229018 (= e!2013998 (= (size!27433 lt!1095591) e!2014001))))

(declare-fun c!542635 () Bool)

(assert (=> b!3229018 (= c!542635 (<= 0 0))))

(declare-fun b!3229019 () Bool)

(declare-fun call!233218 () Int)

(assert (=> b!3229019 (= e!2014002 (- call!233218 0))))

(declare-fun b!3229020 () Bool)

(assert (=> b!3229020 (= e!2014001 call!233218)))

(declare-fun bm!233213 () Bool)

(assert (=> bm!233213 (= call!233218 (size!27433 lt!1095096))))

(declare-fun d!886910 () Bool)

(assert (=> d!886910 e!2013998))

(declare-fun res!1315035 () Bool)

(assert (=> d!886910 (=> (not res!1315035) (not e!2013998))))

(assert (=> d!886910 (= res!1315035 (= ((_ map implies) (content!4920 lt!1095591) (content!4920 lt!1095096)) ((as const (InoxSet Token!9898)) true)))))

(assert (=> d!886910 (= lt!1095591 e!2014000)))

(declare-fun c!542633 () Bool)

(assert (=> d!886910 (= c!542633 ((_ is Nil!36363) lt!1095096))))

(assert (=> d!886910 (= (drop!1876 lt!1095096 0) lt!1095591)))

(declare-fun b!3229021 () Bool)

(assert (=> b!3229021 (= e!2014001 e!2014002)))

(declare-fun c!542634 () Bool)

(assert (=> b!3229021 (= c!542634 (>= 0 call!233218))))

(declare-fun b!3229022 () Bool)

(assert (=> b!3229022 (= e!2014000 e!2013999)))

(declare-fun c!542636 () Bool)

(assert (=> b!3229022 (= c!542636 (<= 0 0))))

(assert (= (and d!886910 c!542633) b!3229017))

(assert (= (and d!886910 (not c!542633)) b!3229022))

(assert (= (and b!3229022 c!542636) b!3229014))

(assert (= (and b!3229022 (not c!542636)) b!3229015))

(assert (= (and d!886910 res!1315035) b!3229018))

(assert (= (and b!3229018 c!542635) b!3229020))

(assert (= (and b!3229018 (not c!542635)) b!3229021))

(assert (= (and b!3229021 c!542634) b!3229016))

(assert (= (and b!3229021 (not c!542634)) b!3229019))

(assert (= (or b!3229020 b!3229021 b!3229019) bm!233213))

(declare-fun m!3508723 () Bool)

(assert (=> b!3229015 m!3508723))

(declare-fun m!3508725 () Bool)

(assert (=> b!3229018 m!3508725))

(assert (=> bm!233213 m!3508631))

(declare-fun m!3508727 () Bool)

(assert (=> d!886910 m!3508727))

(assert (=> d!886910 m!3508635))

(assert (=> b!3228127 d!886910))

(declare-fun b!3229023 () Bool)

(declare-fun e!2014003 () Bool)

(assert (=> b!3229023 (= e!2014003 (inv!17 (value!170541 (h!41783 (t!241332 tokens!494)))))))

(declare-fun b!3229024 () Bool)

(declare-fun res!1315036 () Bool)

(declare-fun e!2014005 () Bool)

(assert (=> b!3229024 (=> res!1315036 e!2014005)))

(assert (=> b!3229024 (= res!1315036 (not ((_ is IntegerValue!16490) (value!170541 (h!41783 (t!241332 tokens!494))))))))

(assert (=> b!3229024 (= e!2014003 e!2014005)))

(declare-fun b!3229025 () Bool)

(declare-fun e!2014004 () Bool)

(assert (=> b!3229025 (= e!2014004 e!2014003)))

(declare-fun c!542637 () Bool)

(assert (=> b!3229025 (= c!542637 ((_ is IntegerValue!16489) (value!170541 (h!41783 (t!241332 tokens!494)))))))

(declare-fun d!886912 () Bool)

(declare-fun c!542638 () Bool)

(assert (=> d!886912 (= c!542638 ((_ is IntegerValue!16488) (value!170541 (h!41783 (t!241332 tokens!494)))))))

(assert (=> d!886912 (= (inv!21 (value!170541 (h!41783 (t!241332 tokens!494)))) e!2014004)))

(declare-fun b!3229026 () Bool)

(assert (=> b!3229026 (= e!2014004 (inv!16 (value!170541 (h!41783 (t!241332 tokens!494)))))))

(declare-fun b!3229027 () Bool)

(assert (=> b!3229027 (= e!2014005 (inv!15 (value!170541 (h!41783 (t!241332 tokens!494)))))))

(assert (= (and d!886912 c!542638) b!3229026))

(assert (= (and d!886912 (not c!542638)) b!3229025))

(assert (= (and b!3229025 c!542637) b!3229023))

(assert (= (and b!3229025 (not c!542637)) b!3229024))

(assert (= (and b!3229024 (not res!1315036)) b!3229027))

(declare-fun m!3508729 () Bool)

(assert (=> b!3229023 m!3508729))

(declare-fun m!3508731 () Bool)

(assert (=> b!3229026 m!3508731))

(declare-fun m!3508733 () Bool)

(assert (=> b!3229027 m!3508733))

(assert (=> b!3228458 d!886912))

(declare-fun b!3229028 () Bool)

(declare-fun e!2014007 () List!36485)

(assert (=> b!3229028 (= e!2014007 (list!12975 (charsOf!3282 separatorToken!241)))))

(declare-fun b!3229029 () Bool)

(assert (=> b!3229029 (= e!2014007 (Cons!36361 (h!41781 (t!241330 lt!1095073)) (++!8756 (t!241330 (t!241330 lt!1095073)) (list!12975 (charsOf!3282 separatorToken!241)))))))

(declare-fun lt!1095604 () List!36485)

(declare-fun e!2014006 () Bool)

(declare-fun b!3229031 () Bool)

(assert (=> b!3229031 (= e!2014006 (or (not (= (list!12975 (charsOf!3282 separatorToken!241)) Nil!36361)) (= lt!1095604 (t!241330 lt!1095073))))))

(declare-fun b!3229030 () Bool)

(declare-fun res!1315037 () Bool)

(assert (=> b!3229030 (=> (not res!1315037) (not e!2014006))))

(assert (=> b!3229030 (= res!1315037 (= (size!27430 lt!1095604) (+ (size!27430 (t!241330 lt!1095073)) (size!27430 (list!12975 (charsOf!3282 separatorToken!241))))))))

(declare-fun d!886914 () Bool)

(assert (=> d!886914 e!2014006))

(declare-fun res!1315038 () Bool)

(assert (=> d!886914 (=> (not res!1315038) (not e!2014006))))

(assert (=> d!886914 (= res!1315038 (= (content!4918 lt!1095604) ((_ map or) (content!4918 (t!241330 lt!1095073)) (content!4918 (list!12975 (charsOf!3282 separatorToken!241))))))))

(assert (=> d!886914 (= lt!1095604 e!2014007)))

(declare-fun c!542639 () Bool)

(assert (=> d!886914 (= c!542639 ((_ is Nil!36361) (t!241330 lt!1095073)))))

(assert (=> d!886914 (= (++!8756 (t!241330 lt!1095073) (list!12975 (charsOf!3282 separatorToken!241))) lt!1095604)))

(assert (= (and d!886914 c!542639) b!3229028))

(assert (= (and d!886914 (not c!542639)) b!3229029))

(assert (= (and d!886914 res!1315038) b!3229030))

(assert (= (and b!3229030 res!1315037) b!3229031))

(assert (=> b!3229029 m!3507149))

(declare-fun m!3508735 () Bool)

(assert (=> b!3229029 m!3508735))

(declare-fun m!3508737 () Bool)

(assert (=> b!3229030 m!3508737))

(assert (=> b!3229030 m!3508019))

(assert (=> b!3229030 m!3507149))

(assert (=> b!3229030 m!3507521))

(declare-fun m!3508739 () Bool)

(assert (=> d!886914 m!3508739))

(declare-fun m!3508741 () Bool)

(assert (=> d!886914 m!3508741))

(assert (=> d!886914 m!3507149))

(assert (=> d!886914 m!3507527))

(assert (=> b!3228310 d!886914))

(declare-fun d!886916 () Bool)

(assert (=> d!886916 (= (isEmpty!20452 (originalCharacters!5980 (h!41783 tokens!494))) ((_ is Nil!36361) (originalCharacters!5980 (h!41783 tokens!494))))))

(assert (=> d!886450 d!886916))

(declare-fun d!886918 () Bool)

(declare-fun charsToInt!0 (List!36484) (_ BitVec 32))

(assert (=> d!886918 (= (inv!16 (value!170541 (h!41783 tokens!494))) (= (charsToInt!0 (text!38919 (value!170541 (h!41783 tokens!494)))) (value!170532 (value!170541 (h!41783 tokens!494)))))))

(declare-fun bs!543148 () Bool)

(assert (= bs!543148 d!886918))

(declare-fun m!3508743 () Bool)

(assert (=> bs!543148 m!3508743))

(assert (=> b!3228114 d!886918))

(declare-fun d!886920 () Bool)

(assert (=> d!886920 (= (inv!16 (value!170541 separatorToken!241)) (= (charsToInt!0 (text!38919 (value!170541 separatorToken!241))) (value!170532 (value!170541 separatorToken!241))))))

(declare-fun bs!543149 () Bool)

(assert (= bs!543149 d!886920))

(declare-fun m!3508745 () Bool)

(assert (=> bs!543149 m!3508745))

(assert (=> b!3228394 d!886920))

(declare-fun b!3229034 () Bool)

(declare-fun e!2014011 () List!36485)

(assert (=> b!3229034 (= e!2014011 (printList!1405 thiss!18206 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))

(declare-fun b!3229035 () Bool)

(assert (=> b!3229035 (= e!2014011 (Cons!36361 (h!41781 (list!12975 (charsOf!3282 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))) (++!8756 (t!241330 (list!12975 (charsOf!3282 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))) (printList!1405 thiss!18206 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))))

(declare-fun b!3229037 () Bool)

(declare-fun e!2014010 () Bool)

(declare-fun lt!1095605 () List!36485)

(assert (=> b!3229037 (= e!2014010 (or (not (= (printList!1405 thiss!18206 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363))) Nil!36361)) (= lt!1095605 (list!12975 (charsOf!3282 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))))))

(declare-fun b!3229036 () Bool)

(declare-fun res!1315041 () Bool)

(assert (=> b!3229036 (=> (not res!1315041) (not e!2014010))))

(assert (=> b!3229036 (= res!1315041 (= (size!27430 lt!1095605) (+ (size!27430 (list!12975 (charsOf!3282 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))) (size!27430 (printList!1405 thiss!18206 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))))))

(declare-fun d!886922 () Bool)

(assert (=> d!886922 e!2014010))

(declare-fun res!1315042 () Bool)

(assert (=> d!886922 (=> (not res!1315042) (not e!2014010))))

(assert (=> d!886922 (= res!1315042 (= (content!4918 lt!1095605) ((_ map or) (content!4918 (list!12975 (charsOf!3282 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))) (content!4918 (printList!1405 thiss!18206 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))))))

(assert (=> d!886922 (= lt!1095605 e!2014011)))

(declare-fun c!542640 () Bool)

(assert (=> d!886922 (= c!542640 ((_ is Nil!36361) (list!12975 (charsOf!3282 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))))

(assert (=> d!886922 (= (++!8756 (list!12975 (charsOf!3282 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363)))) (printList!1405 thiss!18206 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363)))) lt!1095605)))

(assert (= (and d!886922 c!542640) b!3229034))

(assert (= (and d!886922 (not c!542640)) b!3229035))

(assert (= (and d!886922 res!1315042) b!3229036))

(assert (= (and b!3229036 res!1315041) b!3229037))

(assert (=> b!3229035 m!3507293))

(declare-fun m!3508747 () Bool)

(assert (=> b!3229035 m!3508747))

(declare-fun m!3508749 () Bool)

(assert (=> b!3229036 m!3508749))

(assert (=> b!3229036 m!3507291))

(declare-fun m!3508751 () Bool)

(assert (=> b!3229036 m!3508751))

(assert (=> b!3229036 m!3507293))

(declare-fun m!3508753 () Bool)

(assert (=> b!3229036 m!3508753))

(declare-fun m!3508755 () Bool)

(assert (=> d!886922 m!3508755))

(assert (=> d!886922 m!3507291))

(declare-fun m!3508757 () Bool)

(assert (=> d!886922 m!3508757))

(assert (=> d!886922 m!3507293))

(declare-fun m!3508759 () Bool)

(assert (=> d!886922 m!3508759))

(assert (=> b!3228147 d!886922))

(declare-fun d!886924 () Bool)

(assert (=> d!886924 (= (list!12975 (charsOf!3282 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363)))) (list!12979 (c!542433 (charsOf!3282 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))))

(declare-fun bs!543150 () Bool)

(assert (= bs!543150 d!886924))

(declare-fun m!3508761 () Bool)

(assert (=> bs!543150 m!3508761))

(assert (=> b!3228147 d!886924))

(declare-fun d!886926 () Bool)

(declare-fun lt!1095606 () BalanceConc!21428)

(assert (=> d!886926 (= (list!12975 lt!1095606) (originalCharacters!5980 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))

(assert (=> d!886926 (= lt!1095606 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))) (value!170541 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))))

(assert (=> d!886926 (= (charsOf!3282 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))) lt!1095606)))

(declare-fun b_lambda!88945 () Bool)

(assert (=> (not b_lambda!88945) (not d!886926)))

(declare-fun t!241449 () Bool)

(declare-fun tb!159925 () Bool)

(assert (=> (and b!3228076 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))) t!241449) tb!159925))

(declare-fun b!3229038 () Bool)

(declare-fun e!2014012 () Bool)

(declare-fun tp!1017386 () Bool)

(assert (=> b!3229038 (= e!2014012 (and (inv!49253 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))) (value!170541 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))) tp!1017386))))

(declare-fun result!202482 () Bool)

(assert (=> tb!159925 (= result!202482 (and (inv!49254 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))) (value!170541 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))) e!2014012))))

(assert (= tb!159925 b!3229038))

(declare-fun m!3508763 () Bool)

(assert (=> b!3229038 m!3508763))

(declare-fun m!3508765 () Bool)

(assert (=> tb!159925 m!3508765))

(assert (=> d!886926 t!241449))

(declare-fun b_and!216305 () Bool)

(assert (= b_and!216297 (and (=> t!241449 result!202482) b_and!216305)))

(declare-fun tb!159927 () Bool)

(declare-fun t!241451 () Bool)

(assert (=> (and b!3228442 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 rules!2135)))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))) t!241451) tb!159927))

(declare-fun result!202484 () Bool)

(assert (= result!202484 result!202482))

(assert (=> d!886926 t!241451))

(declare-fun b_and!216307 () Bool)

(assert (= b_and!216303 (and (=> t!241451 result!202484) b_and!216307)))

(declare-fun tb!159929 () Bool)

(declare-fun t!241453 () Bool)

(assert (=> (and b!3228072 (= (toChars!7233 (transformation!5266 (h!41782 rules!2135))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))) t!241453) tb!159929))

(declare-fun result!202486 () Bool)

(assert (= result!202486 result!202482))

(assert (=> d!886926 t!241453))

(declare-fun b_and!216309 () Bool)

(assert (= b_and!216299 (and (=> t!241453 result!202486) b_and!216309)))

(declare-fun tb!159931 () Bool)

(declare-fun t!241455 () Bool)

(assert (=> (and b!3228087 (= (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))) t!241455) tb!159931))

(declare-fun result!202488 () Bool)

(assert (= result!202488 result!202482))

(assert (=> d!886926 t!241455))

(declare-fun b_and!216311 () Bool)

(assert (= b_and!216301 (and (=> t!241455 result!202488) b_and!216311)))

(declare-fun t!241457 () Bool)

(declare-fun tb!159933 () Bool)

(assert (=> (and b!3228460 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))) t!241457) tb!159933))

(declare-fun result!202490 () Bool)

(assert (= result!202490 result!202482))

(assert (=> d!886926 t!241457))

(declare-fun b_and!216313 () Bool)

(assert (= b_and!216295 (and (=> t!241457 result!202490) b_and!216313)))

(declare-fun m!3508767 () Bool)

(assert (=> d!886926 m!3508767))

(declare-fun m!3508769 () Bool)

(assert (=> d!886926 m!3508769))

(assert (=> b!3228147 d!886926))

(declare-fun d!886928 () Bool)

(declare-fun c!542641 () Bool)

(assert (=> d!886928 (= c!542641 ((_ is Cons!36363) (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))

(declare-fun e!2014013 () List!36485)

(assert (=> d!886928 (= (printList!1405 thiss!18206 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363))) e!2014013)))

(declare-fun b!3229039 () Bool)

(assert (=> b!3229039 (= e!2014013 (++!8756 (list!12975 (charsOf!3282 (h!41783 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363))))) (printList!1405 thiss!18206 (t!241332 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))))

(declare-fun b!3229040 () Bool)

(assert (=> b!3229040 (= e!2014013 Nil!36361)))

(assert (= (and d!886928 c!542641) b!3229039))

(assert (= (and d!886928 (not c!542641)) b!3229040))

(declare-fun m!3508771 () Bool)

(assert (=> b!3229039 m!3508771))

(assert (=> b!3229039 m!3508771))

(declare-fun m!3508773 () Bool)

(assert (=> b!3229039 m!3508773))

(declare-fun m!3508775 () Bool)

(assert (=> b!3229039 m!3508775))

(assert (=> b!3229039 m!3508773))

(assert (=> b!3229039 m!3508775))

(declare-fun m!3508777 () Bool)

(assert (=> b!3229039 m!3508777))

(assert (=> b!3228147 d!886928))

(declare-fun d!886930 () Bool)

(declare-fun c!542644 () Bool)

(assert (=> d!886930 (= c!542644 ((_ is Nil!36361) lt!1095173))))

(declare-fun e!2014016 () (InoxSet C!20236))

(assert (=> d!886930 (= (content!4918 lt!1095173) e!2014016)))

(declare-fun b!3229045 () Bool)

(assert (=> b!3229045 (= e!2014016 ((as const (Array C!20236 Bool)) false))))

(declare-fun b!3229046 () Bool)

(assert (=> b!3229046 (= e!2014016 ((_ map or) (store ((as const (Array C!20236 Bool)) false) (h!41781 lt!1095173) true) (content!4918 (t!241330 lt!1095173))))))

(assert (= (and d!886930 c!542644) b!3229045))

(assert (= (and d!886930 (not c!542644)) b!3229046))

(declare-fun m!3508779 () Bool)

(assert (=> b!3229046 m!3508779))

(declare-fun m!3508781 () Bool)

(assert (=> b!3229046 m!3508781))

(assert (=> d!886490 d!886930))

(declare-fun d!886932 () Bool)

(declare-fun c!542645 () Bool)

(assert (=> d!886932 (= c!542645 ((_ is Nil!36361) lt!1095073))))

(declare-fun e!2014017 () (InoxSet C!20236))

(assert (=> d!886932 (= (content!4918 lt!1095073) e!2014017)))

(declare-fun b!3229047 () Bool)

(assert (=> b!3229047 (= e!2014017 ((as const (Array C!20236 Bool)) false))))

(declare-fun b!3229048 () Bool)

(assert (=> b!3229048 (= e!2014017 ((_ map or) (store ((as const (Array C!20236 Bool)) false) (h!41781 lt!1095073) true) (content!4918 (t!241330 lt!1095073))))))

(assert (= (and d!886932 c!542645) b!3229047))

(assert (= (and d!886932 (not c!542645)) b!3229048))

(declare-fun m!3508783 () Bool)

(assert (=> b!3229048 m!3508783))

(assert (=> b!3229048 m!3508741))

(assert (=> d!886490 d!886932))

(declare-fun d!886934 () Bool)

(declare-fun c!542646 () Bool)

(assert (=> d!886934 (= c!542646 ((_ is Nil!36361) (list!12975 (charsOf!3282 separatorToken!241))))))

(declare-fun e!2014018 () (InoxSet C!20236))

(assert (=> d!886934 (= (content!4918 (list!12975 (charsOf!3282 separatorToken!241))) e!2014018)))

(declare-fun b!3229049 () Bool)

(assert (=> b!3229049 (= e!2014018 ((as const (Array C!20236 Bool)) false))))

(declare-fun b!3229050 () Bool)

(assert (=> b!3229050 (= e!2014018 ((_ map or) (store ((as const (Array C!20236 Bool)) false) (h!41781 (list!12975 (charsOf!3282 separatorToken!241))) true) (content!4918 (t!241330 (list!12975 (charsOf!3282 separatorToken!241))))))))

(assert (= (and d!886934 c!542646) b!3229049))

(assert (= (and d!886934 (not c!542646)) b!3229050))

(declare-fun m!3508785 () Bool)

(assert (=> b!3229050 m!3508785))

(declare-fun m!3508787 () Bool)

(assert (=> b!3229050 m!3508787))

(assert (=> d!886490 d!886934))

(declare-fun bs!543151 () Bool)

(declare-fun d!886936 () Bool)

(assert (= bs!543151 (and d!886936 d!886734)))

(declare-fun lambda!118249 () Int)

(assert (=> bs!543151 (= (and (= (toChars!7233 (transformation!5266 (h!41782 rules!2135))) (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241)))) (= (toValue!7374 (transformation!5266 (h!41782 rules!2135))) (toValue!7374 (transformation!5266 (rule!7724 separatorToken!241))))) (= lambda!118249 lambda!118238))))

(declare-fun bs!543152 () Bool)

(assert (= bs!543152 (and d!886936 d!886762)))

(assert (=> bs!543152 (= (and (= (toChars!7233 (transformation!5266 (h!41782 rules!2135))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494))))) (= (toValue!7374 (transformation!5266 (h!41782 rules!2135))) (toValue!7374 (transformation!5266 (rule!7724 (h!41783 tokens!494)))))) (= lambda!118249 lambda!118239))))

(assert (=> d!886936 true))

(assert (=> d!886936 (< (dynLambda!14793 order!18765 (toChars!7233 (transformation!5266 (h!41782 rules!2135)))) (dynLambda!14797 order!18773 lambda!118249))))

(assert (=> d!886936 true))

(assert (=> d!886936 (< (dynLambda!14791 order!18761 (toValue!7374 (transformation!5266 (h!41782 rules!2135)))) (dynLambda!14797 order!18773 lambda!118249))))

(assert (=> d!886936 (= (semiInverseModEq!2171 (toChars!7233 (transformation!5266 (h!41782 rules!2135))) (toValue!7374 (transformation!5266 (h!41782 rules!2135)))) (Forall!1278 lambda!118249))))

(declare-fun bs!543153 () Bool)

(assert (= bs!543153 d!886936))

(declare-fun m!3508789 () Bool)

(assert (=> bs!543153 m!3508789))

(assert (=> d!886516 d!886936))

(declare-fun d!886938 () Bool)

(declare-fun lt!1095607 () Bool)

(assert (=> d!886938 (= lt!1095607 (isEmpty!20452 (list!12975 (_2!21028 lt!1095184))))))

(assert (=> d!886938 (= lt!1095607 (isEmpty!20456 (c!542433 (_2!21028 lt!1095184))))))

(assert (=> d!886938 (= (isEmpty!20455 (_2!21028 lt!1095184)) lt!1095607)))

(declare-fun bs!543154 () Bool)

(assert (= bs!543154 d!886938))

(declare-fun m!3508791 () Bool)

(assert (=> bs!543154 m!3508791))

(assert (=> bs!543154 m!3508791))

(declare-fun m!3508793 () Bool)

(assert (=> bs!543154 m!3508793))

(declare-fun m!3508795 () Bool)

(assert (=> bs!543154 m!3508795))

(assert (=> b!3228385 d!886938))

(declare-fun d!886940 () Bool)

(assert (=> d!886940 (= (list!12978 (singletonSeq!2362 separatorToken!241)) (list!12980 (c!542434 (singletonSeq!2362 separatorToken!241))))))

(declare-fun bs!543155 () Bool)

(assert (= bs!543155 d!886940))

(declare-fun m!3508797 () Bool)

(assert (=> bs!543155 m!3508797))

(assert (=> d!886504 d!886940))

(declare-fun d!886942 () Bool)

(assert (=> d!886942 (= (list!12978 (_1!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241))))) (list!12980 (c!542434 (_1!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241)))))))))

(declare-fun bs!543156 () Bool)

(assert (= bs!543156 d!886942))

(declare-fun m!3508799 () Bool)

(assert (=> bs!543156 m!3508799))

(assert (=> d!886504 d!886942))

(assert (=> d!886504 d!886770))

(assert (=> d!886504 d!886768))

(assert (=> d!886504 d!886524))

(assert (=> d!886504 d!886766))

(declare-fun d!886944 () Bool)

(declare-fun lt!1095608 () Int)

(assert (=> d!886944 (= lt!1095608 (size!27433 (list!12978 (_1!21028 lt!1095182))))))

(assert (=> d!886944 (= lt!1095608 (size!27434 (c!542434 (_1!21028 lt!1095182))))))

(assert (=> d!886944 (= (size!27429 (_1!21028 lt!1095182)) lt!1095608)))

(declare-fun bs!543157 () Bool)

(assert (= bs!543157 d!886944))

(assert (=> bs!543157 m!3508173))

(assert (=> bs!543157 m!3508173))

(declare-fun m!3508801 () Bool)

(assert (=> bs!543157 m!3508801))

(declare-fun m!3508803 () Bool)

(assert (=> bs!543157 m!3508803))

(assert (=> d!886504 d!886944))

(declare-fun d!886946 () Bool)

(declare-fun lt!1095609 () Bool)

(assert (=> d!886946 (= lt!1095609 (isEmpty!20452 (list!12975 (_2!21028 lt!1095182))))))

(assert (=> d!886946 (= lt!1095609 (isEmpty!20456 (c!542433 (_2!21028 lt!1095182))))))

(assert (=> d!886946 (= (isEmpty!20455 (_2!21028 lt!1095182)) lt!1095609)))

(declare-fun bs!543158 () Bool)

(assert (= bs!543158 d!886946))

(declare-fun m!3508805 () Bool)

(assert (=> bs!543158 m!3508805))

(assert (=> bs!543158 m!3508805))

(declare-fun m!3508807 () Bool)

(assert (=> bs!543158 m!3508807))

(declare-fun m!3508809 () Bool)

(assert (=> bs!543158 m!3508809))

(assert (=> b!3228379 d!886946))

(declare-fun b!3229052 () Bool)

(declare-fun e!2014019 () Bool)

(declare-fun tp!1017391 () Bool)

(declare-fun tp!1017388 () Bool)

(assert (=> b!3229052 (= e!2014019 (and tp!1017391 tp!1017388))))

(declare-fun b!3229053 () Bool)

(declare-fun tp!1017389 () Bool)

(assert (=> b!3229053 (= e!2014019 tp!1017389)))

(assert (=> b!3228444 (= tp!1017365 e!2014019)))

(declare-fun b!3229051 () Bool)

(assert (=> b!3229051 (= e!2014019 tp_is_empty!17329)))

(declare-fun b!3229054 () Bool)

(declare-fun tp!1017390 () Bool)

(declare-fun tp!1017387 () Bool)

(assert (=> b!3229054 (= e!2014019 (and tp!1017390 tp!1017387))))

(assert (= (and b!3228444 ((_ is ElementMatch!10025) (regOne!20562 (regex!5266 (rule!7724 (h!41783 tokens!494)))))) b!3229051))

(assert (= (and b!3228444 ((_ is Concat!15521) (regOne!20562 (regex!5266 (rule!7724 (h!41783 tokens!494)))))) b!3229052))

(assert (= (and b!3228444 ((_ is Star!10025) (regOne!20562 (regex!5266 (rule!7724 (h!41783 tokens!494)))))) b!3229053))

(assert (= (and b!3228444 ((_ is Union!10025) (regOne!20562 (regex!5266 (rule!7724 (h!41783 tokens!494)))))) b!3229054))

(declare-fun b!3229056 () Bool)

(declare-fun e!2014020 () Bool)

(declare-fun tp!1017396 () Bool)

(declare-fun tp!1017393 () Bool)

(assert (=> b!3229056 (= e!2014020 (and tp!1017396 tp!1017393))))

(declare-fun b!3229057 () Bool)

(declare-fun tp!1017394 () Bool)

(assert (=> b!3229057 (= e!2014020 tp!1017394)))

(assert (=> b!3228444 (= tp!1017362 e!2014020)))

(declare-fun b!3229055 () Bool)

(assert (=> b!3229055 (= e!2014020 tp_is_empty!17329)))

(declare-fun b!3229058 () Bool)

(declare-fun tp!1017395 () Bool)

(declare-fun tp!1017392 () Bool)

(assert (=> b!3229058 (= e!2014020 (and tp!1017395 tp!1017392))))

(assert (= (and b!3228444 ((_ is ElementMatch!10025) (regTwo!20562 (regex!5266 (rule!7724 (h!41783 tokens!494)))))) b!3229055))

(assert (= (and b!3228444 ((_ is Concat!15521) (regTwo!20562 (regex!5266 (rule!7724 (h!41783 tokens!494)))))) b!3229056))

(assert (= (and b!3228444 ((_ is Star!10025) (regTwo!20562 (regex!5266 (rule!7724 (h!41783 tokens!494)))))) b!3229057))

(assert (= (and b!3228444 ((_ is Union!10025) (regTwo!20562 (regex!5266 (rule!7724 (h!41783 tokens!494)))))) b!3229058))

(declare-fun b!3229060 () Bool)

(declare-fun e!2014021 () Bool)

(declare-fun tp!1017401 () Bool)

(declare-fun tp!1017398 () Bool)

(assert (=> b!3229060 (= e!2014021 (and tp!1017401 tp!1017398))))

(declare-fun b!3229061 () Bool)

(declare-fun tp!1017399 () Bool)

(assert (=> b!3229061 (= e!2014021 tp!1017399)))

(assert (=> b!3228445 (= tp!1017363 e!2014021)))

(declare-fun b!3229059 () Bool)

(assert (=> b!3229059 (= e!2014021 tp_is_empty!17329)))

(declare-fun b!3229062 () Bool)

(declare-fun tp!1017400 () Bool)

(declare-fun tp!1017397 () Bool)

(assert (=> b!3229062 (= e!2014021 (and tp!1017400 tp!1017397))))

(assert (= (and b!3228445 ((_ is ElementMatch!10025) (reg!10354 (regex!5266 (rule!7724 (h!41783 tokens!494)))))) b!3229059))

(assert (= (and b!3228445 ((_ is Concat!15521) (reg!10354 (regex!5266 (rule!7724 (h!41783 tokens!494)))))) b!3229060))

(assert (= (and b!3228445 ((_ is Star!10025) (reg!10354 (regex!5266 (rule!7724 (h!41783 tokens!494)))))) b!3229061))

(assert (= (and b!3228445 ((_ is Union!10025) (reg!10354 (regex!5266 (rule!7724 (h!41783 tokens!494)))))) b!3229062))

(declare-fun b!3229078 () Bool)

(declare-fun tp!1017408 () Bool)

(declare-fun tp!1017410 () Bool)

(declare-fun e!2014031 () Bool)

(assert (=> b!3229078 (= e!2014031 (and (inv!49253 (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241))))) tp!1017410 (inv!49253 (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241))))) tp!1017408))))

(declare-fun b!3229080 () Bool)

(declare-fun e!2014030 () Bool)

(declare-fun tp!1017409 () Bool)

(assert (=> b!3229080 (= e!2014030 tp!1017409)))

(declare-fun b!3229079 () Bool)

(declare-fun inv!49259 (IArray!21819) Bool)

(assert (=> b!3229079 (= e!2014031 (and (inv!49259 (xs!14025 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241))))) e!2014030))))

(assert (=> b!3228297 (= tp!1017268 (and (inv!49253 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))) e!2014031))))

(assert (= (and b!3228297 ((_ is Node!10907) (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241))))) b!3229078))

(assert (= b!3229079 b!3229080))

(assert (= (and b!3228297 ((_ is Leaf!17151) (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241))))) b!3229079))

(declare-fun m!3508811 () Bool)

(assert (=> b!3229078 m!3508811))

(declare-fun m!3508813 () Bool)

(assert (=> b!3229078 m!3508813))

(declare-fun m!3508815 () Bool)

(assert (=> b!3229079 m!3508815))

(assert (=> b!3228297 m!3507483))

(declare-fun b!3229081 () Bool)

(declare-fun e!2014032 () Bool)

(declare-fun tp!1017411 () Bool)

(assert (=> b!3229081 (= e!2014032 (and tp_is_empty!17329 tp!1017411))))

(assert (=> b!3228412 (= tp!1017327 e!2014032)))

(assert (= (and b!3228412 ((_ is Cons!36361) (t!241330 (originalCharacters!5980 (h!41783 tokens!494))))) b!3229081))

(declare-fun b!3229083 () Bool)

(declare-fun e!2014033 () Bool)

(declare-fun tp!1017416 () Bool)

(declare-fun tp!1017413 () Bool)

(assert (=> b!3229083 (= e!2014033 (and tp!1017416 tp!1017413))))

(declare-fun b!3229084 () Bool)

(declare-fun tp!1017414 () Bool)

(assert (=> b!3229084 (= e!2014033 tp!1017414)))

(assert (=> b!3228446 (= tp!1017364 e!2014033)))

(declare-fun b!3229082 () Bool)

(assert (=> b!3229082 (= e!2014033 tp_is_empty!17329)))

(declare-fun b!3229085 () Bool)

(declare-fun tp!1017415 () Bool)

(declare-fun tp!1017412 () Bool)

(assert (=> b!3229085 (= e!2014033 (and tp!1017415 tp!1017412))))

(assert (= (and b!3228446 ((_ is ElementMatch!10025) (regOne!20563 (regex!5266 (rule!7724 (h!41783 tokens!494)))))) b!3229082))

(assert (= (and b!3228446 ((_ is Concat!15521) (regOne!20563 (regex!5266 (rule!7724 (h!41783 tokens!494)))))) b!3229083))

(assert (= (and b!3228446 ((_ is Star!10025) (regOne!20563 (regex!5266 (rule!7724 (h!41783 tokens!494)))))) b!3229084))

(assert (= (and b!3228446 ((_ is Union!10025) (regOne!20563 (regex!5266 (rule!7724 (h!41783 tokens!494)))))) b!3229085))

(declare-fun b!3229087 () Bool)

(declare-fun e!2014034 () Bool)

(declare-fun tp!1017421 () Bool)

(declare-fun tp!1017418 () Bool)

(assert (=> b!3229087 (= e!2014034 (and tp!1017421 tp!1017418))))

(declare-fun b!3229088 () Bool)

(declare-fun tp!1017419 () Bool)

(assert (=> b!3229088 (= e!2014034 tp!1017419)))

(assert (=> b!3228446 (= tp!1017361 e!2014034)))

(declare-fun b!3229086 () Bool)

(assert (=> b!3229086 (= e!2014034 tp_is_empty!17329)))

(declare-fun b!3229089 () Bool)

(declare-fun tp!1017420 () Bool)

(declare-fun tp!1017417 () Bool)

(assert (=> b!3229089 (= e!2014034 (and tp!1017420 tp!1017417))))

(assert (= (and b!3228446 ((_ is ElementMatch!10025) (regTwo!20563 (regex!5266 (rule!7724 (h!41783 tokens!494)))))) b!3229086))

(assert (= (and b!3228446 ((_ is Concat!15521) (regTwo!20563 (regex!5266 (rule!7724 (h!41783 tokens!494)))))) b!3229087))

(assert (= (and b!3228446 ((_ is Star!10025) (regTwo!20563 (regex!5266 (rule!7724 (h!41783 tokens!494)))))) b!3229088))

(assert (= (and b!3228446 ((_ is Union!10025) (regTwo!20563 (regex!5266 (rule!7724 (h!41783 tokens!494)))))) b!3229089))

(declare-fun tp!1017424 () Bool)

(declare-fun b!3229090 () Bool)

(declare-fun e!2014036 () Bool)

(declare-fun tp!1017422 () Bool)

(assert (=> b!3229090 (= e!2014036 (and (inv!49253 (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494)))))) tp!1017424 (inv!49253 (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494)))))) tp!1017422))))

(declare-fun b!3229092 () Bool)

(declare-fun e!2014035 () Bool)

(declare-fun tp!1017423 () Bool)

(assert (=> b!3229092 (= e!2014035 tp!1017423)))

(declare-fun b!3229091 () Bool)

(assert (=> b!3229091 (= e!2014036 (and (inv!49259 (xs!14025 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494)))))) e!2014035))))

(assert (=> b!3228246 (= tp!1017266 (and (inv!49253 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))) e!2014036))))

(assert (= (and b!3228246 ((_ is Node!10907) (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494)))))) b!3229090))

(assert (= b!3229091 b!3229092))

(assert (= (and b!3228246 ((_ is Leaf!17151) (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494)))))) b!3229091))

(declare-fun m!3508817 () Bool)

(assert (=> b!3229090 m!3508817))

(declare-fun m!3508819 () Bool)

(assert (=> b!3229090 m!3508819))

(declare-fun m!3508821 () Bool)

(assert (=> b!3229091 m!3508821))

(assert (=> b!3228246 m!3507373))

(declare-fun b!3229093 () Bool)

(declare-fun e!2014037 () Bool)

(declare-fun tp!1017425 () Bool)

(assert (=> b!3229093 (= e!2014037 (and tp_is_empty!17329 tp!1017425))))

(assert (=> b!3228458 (= tp!1017378 e!2014037)))

(assert (= (and b!3228458 ((_ is Cons!36361) (originalCharacters!5980 (h!41783 (t!241332 tokens!494))))) b!3229093))

(declare-fun b!3229094 () Bool)

(declare-fun e!2014038 () Bool)

(declare-fun tp!1017426 () Bool)

(assert (=> b!3229094 (= e!2014038 (and tp_is_empty!17329 tp!1017426))))

(assert (=> b!3228431 (= tp!1017348 e!2014038)))

(assert (= (and b!3228431 ((_ is Cons!36361) (t!241330 (originalCharacters!5980 separatorToken!241)))) b!3229094))

(declare-fun b!3229096 () Bool)

(declare-fun e!2014039 () Bool)

(declare-fun tp!1017431 () Bool)

(declare-fun tp!1017428 () Bool)

(assert (=> b!3229096 (= e!2014039 (and tp!1017431 tp!1017428))))

(declare-fun b!3229097 () Bool)

(declare-fun tp!1017429 () Bool)

(assert (=> b!3229097 (= e!2014039 tp!1017429)))

(assert (=> b!3228459 (= tp!1017380 e!2014039)))

(declare-fun b!3229095 () Bool)

(assert (=> b!3229095 (= e!2014039 tp_is_empty!17329)))

(declare-fun b!3229098 () Bool)

(declare-fun tp!1017430 () Bool)

(declare-fun tp!1017427 () Bool)

(assert (=> b!3229098 (= e!2014039 (and tp!1017430 tp!1017427))))

(assert (= (and b!3228459 ((_ is ElementMatch!10025) (regex!5266 (rule!7724 (h!41783 (t!241332 tokens!494)))))) b!3229095))

(assert (= (and b!3228459 ((_ is Concat!15521) (regex!5266 (rule!7724 (h!41783 (t!241332 tokens!494)))))) b!3229096))

(assert (= (and b!3228459 ((_ is Star!10025) (regex!5266 (rule!7724 (h!41783 (t!241332 tokens!494)))))) b!3229097))

(assert (= (and b!3228459 ((_ is Union!10025) (regex!5266 (rule!7724 (h!41783 (t!241332 tokens!494)))))) b!3229098))

(declare-fun b!3229100 () Bool)

(declare-fun e!2014040 () Bool)

(declare-fun tp!1017436 () Bool)

(declare-fun tp!1017433 () Bool)

(assert (=> b!3229100 (= e!2014040 (and tp!1017436 tp!1017433))))

(declare-fun b!3229101 () Bool)

(declare-fun tp!1017434 () Bool)

(assert (=> b!3229101 (= e!2014040 tp!1017434)))

(assert (=> b!3228429 (= tp!1017345 e!2014040)))

(declare-fun b!3229099 () Bool)

(assert (=> b!3229099 (= e!2014040 tp_is_empty!17329)))

(declare-fun b!3229102 () Bool)

(declare-fun tp!1017435 () Bool)

(declare-fun tp!1017432 () Bool)

(assert (=> b!3229102 (= e!2014040 (and tp!1017435 tp!1017432))))

(assert (= (and b!3228429 ((_ is ElementMatch!10025) (reg!10354 (regex!5266 (h!41782 rules!2135))))) b!3229099))

(assert (= (and b!3228429 ((_ is Concat!15521) (reg!10354 (regex!5266 (h!41782 rules!2135))))) b!3229100))

(assert (= (and b!3228429 ((_ is Star!10025) (reg!10354 (regex!5266 (h!41782 rules!2135))))) b!3229101))

(assert (= (and b!3228429 ((_ is Union!10025) (reg!10354 (regex!5266 (h!41782 rules!2135))))) b!3229102))

(declare-fun b!3229104 () Bool)

(declare-fun e!2014041 () Bool)

(declare-fun tp!1017441 () Bool)

(declare-fun tp!1017438 () Bool)

(assert (=> b!3229104 (= e!2014041 (and tp!1017441 tp!1017438))))

(declare-fun b!3229105 () Bool)

(declare-fun tp!1017439 () Bool)

(assert (=> b!3229105 (= e!2014041 tp!1017439)))

(assert (=> b!3228441 (= tp!1017358 e!2014041)))

(declare-fun b!3229103 () Bool)

(assert (=> b!3229103 (= e!2014041 tp_is_empty!17329)))

(declare-fun b!3229106 () Bool)

(declare-fun tp!1017440 () Bool)

(declare-fun tp!1017437 () Bool)

(assert (=> b!3229106 (= e!2014041 (and tp!1017440 tp!1017437))))

(assert (= (and b!3228441 ((_ is ElementMatch!10025) (regex!5266 (h!41782 (t!241331 rules!2135))))) b!3229103))

(assert (= (and b!3228441 ((_ is Concat!15521) (regex!5266 (h!41782 (t!241331 rules!2135))))) b!3229104))

(assert (= (and b!3228441 ((_ is Star!10025) (regex!5266 (h!41782 (t!241331 rules!2135))))) b!3229105))

(assert (= (and b!3228441 ((_ is Union!10025) (regex!5266 (h!41782 (t!241331 rules!2135))))) b!3229106))

(declare-fun b!3229108 () Bool)

(declare-fun e!2014042 () Bool)

(declare-fun tp!1017446 () Bool)

(declare-fun tp!1017443 () Bool)

(assert (=> b!3229108 (= e!2014042 (and tp!1017446 tp!1017443))))

(declare-fun b!3229109 () Bool)

(declare-fun tp!1017444 () Bool)

(assert (=> b!3229109 (= e!2014042 tp!1017444)))

(assert (=> b!3228425 (= tp!1017340 e!2014042)))

(declare-fun b!3229107 () Bool)

(assert (=> b!3229107 (= e!2014042 tp_is_empty!17329)))

(declare-fun b!3229110 () Bool)

(declare-fun tp!1017445 () Bool)

(declare-fun tp!1017442 () Bool)

(assert (=> b!3229110 (= e!2014042 (and tp!1017445 tp!1017442))))

(assert (= (and b!3228425 ((_ is ElementMatch!10025) (reg!10354 (regex!5266 (rule!7724 separatorToken!241))))) b!3229107))

(assert (= (and b!3228425 ((_ is Concat!15521) (reg!10354 (regex!5266 (rule!7724 separatorToken!241))))) b!3229108))

(assert (= (and b!3228425 ((_ is Star!10025) (reg!10354 (regex!5266 (rule!7724 separatorToken!241))))) b!3229109))

(assert (= (and b!3228425 ((_ is Union!10025) (reg!10354 (regex!5266 (rule!7724 separatorToken!241))))) b!3229110))

(declare-fun b!3229112 () Bool)

(declare-fun e!2014043 () Bool)

(declare-fun tp!1017451 () Bool)

(declare-fun tp!1017448 () Bool)

(assert (=> b!3229112 (= e!2014043 (and tp!1017451 tp!1017448))))

(declare-fun b!3229113 () Bool)

(declare-fun tp!1017449 () Bool)

(assert (=> b!3229113 (= e!2014043 tp!1017449)))

(assert (=> b!3228430 (= tp!1017346 e!2014043)))

(declare-fun b!3229111 () Bool)

(assert (=> b!3229111 (= e!2014043 tp_is_empty!17329)))

(declare-fun b!3229114 () Bool)

(declare-fun tp!1017450 () Bool)

(declare-fun tp!1017447 () Bool)

(assert (=> b!3229114 (= e!2014043 (and tp!1017450 tp!1017447))))

(assert (= (and b!3228430 ((_ is ElementMatch!10025) (regOne!20563 (regex!5266 (h!41782 rules!2135))))) b!3229111))

(assert (= (and b!3228430 ((_ is Concat!15521) (regOne!20563 (regex!5266 (h!41782 rules!2135))))) b!3229112))

(assert (= (and b!3228430 ((_ is Star!10025) (regOne!20563 (regex!5266 (h!41782 rules!2135))))) b!3229113))

(assert (= (and b!3228430 ((_ is Union!10025) (regOne!20563 (regex!5266 (h!41782 rules!2135))))) b!3229114))

(declare-fun b!3229116 () Bool)

(declare-fun e!2014044 () Bool)

(declare-fun tp!1017456 () Bool)

(declare-fun tp!1017453 () Bool)

(assert (=> b!3229116 (= e!2014044 (and tp!1017456 tp!1017453))))

(declare-fun b!3229117 () Bool)

(declare-fun tp!1017454 () Bool)

(assert (=> b!3229117 (= e!2014044 tp!1017454)))

(assert (=> b!3228430 (= tp!1017343 e!2014044)))

(declare-fun b!3229115 () Bool)

(assert (=> b!3229115 (= e!2014044 tp_is_empty!17329)))

(declare-fun b!3229118 () Bool)

(declare-fun tp!1017455 () Bool)

(declare-fun tp!1017452 () Bool)

(assert (=> b!3229118 (= e!2014044 (and tp!1017455 tp!1017452))))

(assert (= (and b!3228430 ((_ is ElementMatch!10025) (regTwo!20563 (regex!5266 (h!41782 rules!2135))))) b!3229115))

(assert (= (and b!3228430 ((_ is Concat!15521) (regTwo!20563 (regex!5266 (h!41782 rules!2135))))) b!3229116))

(assert (= (and b!3228430 ((_ is Star!10025) (regTwo!20563 (regex!5266 (h!41782 rules!2135))))) b!3229117))

(assert (= (and b!3228430 ((_ is Union!10025) (regTwo!20563 (regex!5266 (h!41782 rules!2135))))) b!3229118))

(declare-fun b!3229120 () Bool)

(declare-fun e!2014045 () Bool)

(declare-fun tp!1017461 () Bool)

(declare-fun tp!1017458 () Bool)

(assert (=> b!3229120 (= e!2014045 (and tp!1017461 tp!1017458))))

(declare-fun b!3229121 () Bool)

(declare-fun tp!1017459 () Bool)

(assert (=> b!3229121 (= e!2014045 tp!1017459)))

(assert (=> b!3228426 (= tp!1017341 e!2014045)))

(declare-fun b!3229119 () Bool)

(assert (=> b!3229119 (= e!2014045 tp_is_empty!17329)))

(declare-fun b!3229122 () Bool)

(declare-fun tp!1017460 () Bool)

(declare-fun tp!1017457 () Bool)

(assert (=> b!3229122 (= e!2014045 (and tp!1017460 tp!1017457))))

(assert (= (and b!3228426 ((_ is ElementMatch!10025) (regOne!20563 (regex!5266 (rule!7724 separatorToken!241))))) b!3229119))

(assert (= (and b!3228426 ((_ is Concat!15521) (regOne!20563 (regex!5266 (rule!7724 separatorToken!241))))) b!3229120))

(assert (= (and b!3228426 ((_ is Star!10025) (regOne!20563 (regex!5266 (rule!7724 separatorToken!241))))) b!3229121))

(assert (= (and b!3228426 ((_ is Union!10025) (regOne!20563 (regex!5266 (rule!7724 separatorToken!241))))) b!3229122))

(declare-fun b!3229124 () Bool)

(declare-fun e!2014046 () Bool)

(declare-fun tp!1017466 () Bool)

(declare-fun tp!1017463 () Bool)

(assert (=> b!3229124 (= e!2014046 (and tp!1017466 tp!1017463))))

(declare-fun b!3229125 () Bool)

(declare-fun tp!1017464 () Bool)

(assert (=> b!3229125 (= e!2014046 tp!1017464)))

(assert (=> b!3228426 (= tp!1017338 e!2014046)))

(declare-fun b!3229123 () Bool)

(assert (=> b!3229123 (= e!2014046 tp_is_empty!17329)))

(declare-fun b!3229126 () Bool)

(declare-fun tp!1017465 () Bool)

(declare-fun tp!1017462 () Bool)

(assert (=> b!3229126 (= e!2014046 (and tp!1017465 tp!1017462))))

(assert (= (and b!3228426 ((_ is ElementMatch!10025) (regTwo!20563 (regex!5266 (rule!7724 separatorToken!241))))) b!3229123))

(assert (= (and b!3228426 ((_ is Concat!15521) (regTwo!20563 (regex!5266 (rule!7724 separatorToken!241))))) b!3229124))

(assert (= (and b!3228426 ((_ is Star!10025) (regTwo!20563 (regex!5266 (rule!7724 separatorToken!241))))) b!3229125))

(assert (= (and b!3228426 ((_ is Union!10025) (regTwo!20563 (regex!5266 (rule!7724 separatorToken!241))))) b!3229126))

(declare-fun b!3229130 () Bool)

(declare-fun b_free!86157 () Bool)

(declare-fun b_next!86861 () Bool)

(assert (=> b!3229130 (= b_free!86157 (not b_next!86861))))

(declare-fun tp!1017467 () Bool)

(declare-fun b_and!216315 () Bool)

(assert (=> b!3229130 (= tp!1017467 b_and!216315)))

(declare-fun b_free!86159 () Bool)

(declare-fun b_next!86863 () Bool)

(assert (=> b!3229130 (= b_free!86159 (not b_next!86863))))

(declare-fun tb!159935 () Bool)

(declare-fun t!241459 () Bool)

(assert (=> (and b!3229130 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494)))))) (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241)))) t!241459) tb!159935))

(declare-fun result!202494 () Bool)

(assert (= result!202494 result!202394))

(assert (=> b!3228381 t!241459))

(declare-fun t!241461 () Bool)

(declare-fun tb!159937 () Bool)

(assert (=> (and b!3229130 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494)))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494)))))) t!241461) tb!159937))

(declare-fun result!202496 () Bool)

(assert (= result!202496 result!202452))

(assert (=> b!3228832 t!241461))

(declare-fun t!241463 () Bool)

(declare-fun tb!159939 () Bool)

(assert (=> (and b!3229130 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494)))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))) t!241463) tb!159939))

(declare-fun result!202498 () Bool)

(assert (= result!202498 result!202482))

(assert (=> d!886926 t!241463))

(assert (=> d!886484 t!241459))

(declare-fun t!241465 () Bool)

(declare-fun tb!159941 () Bool)

(assert (=> (and b!3229130 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494)))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494))))) t!241465) tb!159941))

(declare-fun result!202500 () Bool)

(assert (= result!202500 result!202380))

(assert (=> b!3228240 t!241465))

(declare-fun tb!159943 () Bool)

(declare-fun t!241467 () Bool)

(assert (=> (and b!3229130 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494)))))) (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 0))))) t!241467) tb!159943))

(declare-fun result!202502 () Bool)

(assert (= result!202502 result!202472))

(assert (=> d!886902 t!241467))

(assert (=> d!886502 t!241465))

(declare-fun tp!1017468 () Bool)

(declare-fun b_and!216317 () Bool)

(assert (=> b!3229130 (= tp!1017468 (and (=> t!241459 result!202494) (=> t!241461 result!202496) (=> t!241463 result!202498) (=> t!241465 result!202500) (=> t!241467 result!202502) b_and!216317))))

(declare-fun e!2014049 () Bool)

(assert (=> b!3229130 (= e!2014049 (and tp!1017467 tp!1017468))))

(declare-fun e!2014050 () Bool)

(assert (=> b!3228457 (= tp!1017379 e!2014050)))

(declare-fun tp!1017470 () Bool)

(declare-fun b!3229127 () Bool)

(declare-fun e!2014047 () Bool)

(assert (=> b!3229127 (= e!2014050 (and (inv!49250 (h!41783 (t!241332 (t!241332 tokens!494)))) e!2014047 tp!1017470))))

(declare-fun tp!1017471 () Bool)

(declare-fun b!3229129 () Bool)

(declare-fun e!2014048 () Bool)

(assert (=> b!3229129 (= e!2014048 (and tp!1017471 (inv!49246 (tag!5798 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494)))))) (inv!49249 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494)))))) e!2014049))))

(declare-fun b!3229128 () Bool)

(declare-fun tp!1017469 () Bool)

(assert (=> b!3229128 (= e!2014047 (and (inv!21 (value!170541 (h!41783 (t!241332 (t!241332 tokens!494))))) e!2014048 tp!1017469))))

(assert (= b!3229129 b!3229130))

(assert (= b!3229128 b!3229129))

(assert (= b!3229127 b!3229128))

(assert (= (and b!3228457 ((_ is Cons!36363) (t!241332 (t!241332 tokens!494)))) b!3229127))

(declare-fun m!3508919 () Bool)

(assert (=> b!3229127 m!3508919))

(declare-fun m!3508921 () Bool)

(assert (=> b!3229129 m!3508921))

(declare-fun m!3508925 () Bool)

(assert (=> b!3229129 m!3508925))

(declare-fun m!3508927 () Bool)

(assert (=> b!3229128 m!3508927))

(declare-fun b!3229136 () Bool)

(declare-fun e!2014055 () Bool)

(declare-fun tp!1017476 () Bool)

(declare-fun tp!1017473 () Bool)

(assert (=> b!3229136 (= e!2014055 (and tp!1017476 tp!1017473))))

(declare-fun b!3229137 () Bool)

(declare-fun tp!1017474 () Bool)

(assert (=> b!3229137 (= e!2014055 tp!1017474)))

(assert (=> b!3228428 (= tp!1017347 e!2014055)))

(declare-fun b!3229135 () Bool)

(assert (=> b!3229135 (= e!2014055 tp_is_empty!17329)))

(declare-fun b!3229138 () Bool)

(declare-fun tp!1017475 () Bool)

(declare-fun tp!1017472 () Bool)

(assert (=> b!3229138 (= e!2014055 (and tp!1017475 tp!1017472))))

(assert (= (and b!3228428 ((_ is ElementMatch!10025) (regOne!20562 (regex!5266 (h!41782 rules!2135))))) b!3229135))

(assert (= (and b!3228428 ((_ is Concat!15521) (regOne!20562 (regex!5266 (h!41782 rules!2135))))) b!3229136))

(assert (= (and b!3228428 ((_ is Star!10025) (regOne!20562 (regex!5266 (h!41782 rules!2135))))) b!3229137))

(assert (= (and b!3228428 ((_ is Union!10025) (regOne!20562 (regex!5266 (h!41782 rules!2135))))) b!3229138))

(declare-fun b!3229140 () Bool)

(declare-fun e!2014056 () Bool)

(declare-fun tp!1017481 () Bool)

(declare-fun tp!1017478 () Bool)

(assert (=> b!3229140 (= e!2014056 (and tp!1017481 tp!1017478))))

(declare-fun b!3229141 () Bool)

(declare-fun tp!1017479 () Bool)

(assert (=> b!3229141 (= e!2014056 tp!1017479)))

(assert (=> b!3228428 (= tp!1017344 e!2014056)))

(declare-fun b!3229139 () Bool)

(assert (=> b!3229139 (= e!2014056 tp_is_empty!17329)))

(declare-fun b!3229142 () Bool)

(declare-fun tp!1017480 () Bool)

(declare-fun tp!1017477 () Bool)

(assert (=> b!3229142 (= e!2014056 (and tp!1017480 tp!1017477))))

(assert (= (and b!3228428 ((_ is ElementMatch!10025) (regTwo!20562 (regex!5266 (h!41782 rules!2135))))) b!3229139))

(assert (= (and b!3228428 ((_ is Concat!15521) (regTwo!20562 (regex!5266 (h!41782 rules!2135))))) b!3229140))

(assert (= (and b!3228428 ((_ is Star!10025) (regTwo!20562 (regex!5266 (h!41782 rules!2135))))) b!3229141))

(assert (= (and b!3228428 ((_ is Union!10025) (regTwo!20562 (regex!5266 (h!41782 rules!2135))))) b!3229142))

(declare-fun b!3229145 () Bool)

(declare-fun b_free!86161 () Bool)

(declare-fun b_next!86865 () Bool)

(assert (=> b!3229145 (= b_free!86161 (not b_next!86865))))

(declare-fun tp!1017485 () Bool)

(declare-fun b_and!216319 () Bool)

(assert (=> b!3229145 (= tp!1017485 b_and!216319)))

(declare-fun b_free!86163 () Bool)

(declare-fun b_next!86867 () Bool)

(assert (=> b!3229145 (= b_free!86163 (not b_next!86867))))

(declare-fun tb!159945 () Bool)

(declare-fun t!241469 () Bool)

(assert (=> (and b!3229145 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 rules!2135))))) (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241)))) t!241469) tb!159945))

(declare-fun result!202504 () Bool)

(assert (= result!202504 result!202394))

(assert (=> b!3228381 t!241469))

(declare-fun t!241471 () Bool)

(declare-fun tb!159947 () Bool)

(assert (=> (and b!3229145 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 rules!2135))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494)))))) t!241471) tb!159947))

(declare-fun result!202506 () Bool)

(assert (= result!202506 result!202452))

(assert (=> b!3228832 t!241471))

(declare-fun t!241473 () Bool)

(declare-fun tb!159949 () Bool)

(assert (=> (and b!3229145 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 rules!2135))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))) t!241473) tb!159949))

(declare-fun result!202508 () Bool)

(assert (= result!202508 result!202482))

(assert (=> d!886926 t!241473))

(assert (=> d!886484 t!241469))

(declare-fun t!241475 () Bool)

(declare-fun tb!159951 () Bool)

(assert (=> (and b!3229145 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 rules!2135))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494))))) t!241475) tb!159951))

(declare-fun result!202510 () Bool)

(assert (= result!202510 result!202380))

(assert (=> b!3228240 t!241475))

(declare-fun tb!159953 () Bool)

(declare-fun t!241477 () Bool)

(assert (=> (and b!3229145 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 rules!2135))))) (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 0))))) t!241477) tb!159953))

(declare-fun result!202512 () Bool)

(assert (= result!202512 result!202472))

(assert (=> d!886902 t!241477))

(assert (=> d!886502 t!241475))

(declare-fun b_and!216321 () Bool)

(declare-fun tp!1017482 () Bool)

(assert (=> b!3229145 (= tp!1017482 (and (=> t!241475 result!202510) (=> t!241469 result!202504) (=> t!241473 result!202508) (=> t!241471 result!202506) (=> t!241477 result!202512) b_and!216321))))

(declare-fun e!2014060 () Bool)

(assert (=> b!3229145 (= e!2014060 (and tp!1017485 tp!1017482))))

(declare-fun e!2014057 () Bool)

(declare-fun b!3229144 () Bool)

(declare-fun tp!1017483 () Bool)

(assert (=> b!3229144 (= e!2014057 (and tp!1017483 (inv!49246 (tag!5798 (h!41782 (t!241331 (t!241331 rules!2135))))) (inv!49249 (transformation!5266 (h!41782 (t!241331 (t!241331 rules!2135))))) e!2014060))))

(declare-fun b!3229143 () Bool)

(declare-fun e!2014058 () Bool)

(declare-fun tp!1017484 () Bool)

(assert (=> b!3229143 (= e!2014058 (and e!2014057 tp!1017484))))

(assert (=> b!3228440 (= tp!1017359 e!2014058)))

(assert (= b!3229144 b!3229145))

(assert (= b!3229143 b!3229144))

(assert (= (and b!3228440 ((_ is Cons!36362) (t!241331 (t!241331 rules!2135)))) b!3229143))

(declare-fun m!3508935 () Bool)

(assert (=> b!3229144 m!3508935))

(declare-fun m!3508937 () Bool)

(assert (=> b!3229144 m!3508937))

(declare-fun b!3229152 () Bool)

(declare-fun e!2014065 () Bool)

(assert (=> b!3229152 (= e!2014065 true)))

(declare-fun b!3229151 () Bool)

(declare-fun e!2014064 () Bool)

(assert (=> b!3229151 (= e!2014064 e!2014065)))

(declare-fun b!3229150 () Bool)

(declare-fun e!2014063 () Bool)

(assert (=> b!3229150 (= e!2014063 e!2014064)))

(assert (=> b!3228225 e!2014063))

(assert (= b!3229151 b!3229152))

(assert (= b!3229150 b!3229151))

(assert (= (and b!3228225 ((_ is Cons!36362) (t!241331 rules!2135))) b!3229150))

(assert (=> b!3229152 (< (dynLambda!14791 order!18761 (toValue!7374 (transformation!5266 (h!41782 (t!241331 rules!2135))))) (dynLambda!14792 order!18763 lambda!118217))))

(assert (=> b!3229152 (< (dynLambda!14793 order!18765 (toChars!7233 (transformation!5266 (h!41782 (t!241331 rules!2135))))) (dynLambda!14792 order!18763 lambda!118217))))

(declare-fun b!3229154 () Bool)

(declare-fun e!2014066 () Bool)

(declare-fun tp!1017490 () Bool)

(declare-fun tp!1017487 () Bool)

(assert (=> b!3229154 (= e!2014066 (and tp!1017490 tp!1017487))))

(declare-fun b!3229155 () Bool)

(declare-fun tp!1017488 () Bool)

(assert (=> b!3229155 (= e!2014066 tp!1017488)))

(assert (=> b!3228424 (= tp!1017342 e!2014066)))

(declare-fun b!3229153 () Bool)

(assert (=> b!3229153 (= e!2014066 tp_is_empty!17329)))

(declare-fun b!3229156 () Bool)

(declare-fun tp!1017489 () Bool)

(declare-fun tp!1017486 () Bool)

(assert (=> b!3229156 (= e!2014066 (and tp!1017489 tp!1017486))))

(assert (= (and b!3228424 ((_ is ElementMatch!10025) (regOne!20562 (regex!5266 (rule!7724 separatorToken!241))))) b!3229153))

(assert (= (and b!3228424 ((_ is Concat!15521) (regOne!20562 (regex!5266 (rule!7724 separatorToken!241))))) b!3229154))

(assert (= (and b!3228424 ((_ is Star!10025) (regOne!20562 (regex!5266 (rule!7724 separatorToken!241))))) b!3229155))

(assert (= (and b!3228424 ((_ is Union!10025) (regOne!20562 (regex!5266 (rule!7724 separatorToken!241))))) b!3229156))

(declare-fun b!3229158 () Bool)

(declare-fun e!2014067 () Bool)

(declare-fun tp!1017495 () Bool)

(declare-fun tp!1017492 () Bool)

(assert (=> b!3229158 (= e!2014067 (and tp!1017495 tp!1017492))))

(declare-fun b!3229159 () Bool)

(declare-fun tp!1017493 () Bool)

(assert (=> b!3229159 (= e!2014067 tp!1017493)))

(assert (=> b!3228424 (= tp!1017339 e!2014067)))

(declare-fun b!3229157 () Bool)

(assert (=> b!3229157 (= e!2014067 tp_is_empty!17329)))

(declare-fun b!3229160 () Bool)

(declare-fun tp!1017494 () Bool)

(declare-fun tp!1017491 () Bool)

(assert (=> b!3229160 (= e!2014067 (and tp!1017494 tp!1017491))))

(assert (= (and b!3228424 ((_ is ElementMatch!10025) (regTwo!20562 (regex!5266 (rule!7724 separatorToken!241))))) b!3229157))

(assert (= (and b!3228424 ((_ is Concat!15521) (regTwo!20562 (regex!5266 (rule!7724 separatorToken!241))))) b!3229158))

(assert (= (and b!3228424 ((_ is Star!10025) (regTwo!20562 (regex!5266 (rule!7724 separatorToken!241))))) b!3229159))

(assert (= (and b!3228424 ((_ is Union!10025) (regTwo!20562 (regex!5266 (rule!7724 separatorToken!241))))) b!3229160))

(declare-fun b_lambda!88947 () Bool)

(assert (= b_lambda!88933 (or d!886422 b_lambda!88947)))

(declare-fun bs!543161 () Bool)

(declare-fun d!886956 () Bool)

(assert (= bs!543161 (and d!886956 d!886422)))

(assert (=> bs!543161 (= (dynLambda!14795 lambda!118217 (h!41783 (list!12978 lt!1095068))) (rulesProduceIndividualToken!2347 thiss!18206 rules!2135 (h!41783 (list!12978 lt!1095068))))))

(assert (=> bs!543161 m!3507985))

(assert (=> b!3228712 d!886956))

(declare-fun b_lambda!88949 () Bool)

(assert (= b_lambda!88937 (or b!3228078 b_lambda!88949)))

(declare-fun bs!543162 () Bool)

(declare-fun d!886960 () Bool)

(assert (= bs!543162 (and d!886960 b!3228078)))

(assert (=> bs!543162 (= (dynLambda!14795 lambda!118207 (h!41783 (t!241332 tokens!494))) (not (isSeparator!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))))))

(assert (=> b!3228824 d!886960))

(declare-fun b_lambda!88951 () Bool)

(assert (= b_lambda!88939 (or (and b!3228442 b_free!86151 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 rules!2135)))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))))) (and b!3228087 b_free!86139 (= (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))))) (and b!3228072 b_free!86135 (= (toChars!7233 (transformation!5266 (h!41782 rules!2135))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))))) (and b!3228076 b_free!86131 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))))) (and b!3228460 b_free!86155) (and b!3229145 b_free!86163 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 rules!2135))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))))) (and b!3229130 b_free!86159 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494)))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))))) b_lambda!88951)))

(declare-fun b_lambda!88953 () Bool)

(assert (= b_lambda!88923 (or b!3228078 b_lambda!88953)))

(assert (=> d!886534 d!886528))

(check-sat (not d!886560) (not d!886750) (not d!886562) (not b!3228953) (not b!3228246) (not b!3228926) (not d!886800) (not b!3228977) (not b!3228802) (not b!3228998) (not b!3228740) (not d!886546) (not b!3229093) (not d!886566) (not d!886758) (not b!3228963) (not b!3229154) (not b!3229039) b_and!216311 b_and!216321 (not d!886730) (not b!3229003) (not b!3228568) (not d!886946) (not b!3228984) (not b!3228800) (not b!3228827) (not b!3229052) (not b!3228805) (not d!886926) (not b!3228580) b_and!216179 (not d!886806) (not d!886790) (not b!3228995) (not b!3228829) (not b!3229054) (not d!886672) (not b_next!86839) (not b!3229128) (not b_lambda!88911) (not b!3228927) (not b!3229081) (not d!886536) (not b!3229142) (not b!3228968) (not b_next!86861) (not b!3229138) b_and!216187 (not b!3228817) (not d!886732) (not b_lambda!88915) (not bm!233211) (not b!3229080) (not b!3229048) (not b!3228504) (not b!3229127) (not b!3229109) (not b!3229083) (not d!886762) (not d!886904) (not d!886538) (not d!886742) (not b_next!86833) (not b!3229144) (not b!3229155) (not b!3228488) (not b!3229117) (not b!3229160) (not b!3228726) (not b!3228771) (not b!3228764) (not d!886752) (not b!3229090) b_and!216305 (not d!886914) (not b_next!86843) (not d!886890) (not b_lambda!88953) (not d!886920) (not b!3228787) (not b!3229027) (not b!3229105) (not b!3228823) (not b!3229100) (not b_next!86837) (not b!3228834) (not b!3228490) (not b!3229038) (not b_next!86867) (not b!3229079) (not b_next!86857) (not d!886684) (not b!3229124) (not b!3228569) (not b!3229118) (not b!3228710) (not b!3229143) (not b!3229120) (not d!886910) (not b!3229035) (not d!886734) (not d!886572) (not d!886922) (not b!3229023) (not d!886936) (not b!3229140) (not d!886784) (not d!886550) (not b!3228785) (not b!3229125) (not d!886558) (not b!3228297) (not b!3229136) (not b!3229061) (not d!886754) (not b!3229056) (not d!886798) (not d!886906) (not b!3229089) (not tb!159915) (not d!886702) (not d!886700) (not b!3228738) (not d!886756) (not d!886778) (not b!3229116) (not b!3228825) (not b!3228986) (not b!3228694) (not b!3229126) b_and!216319 (not d!886586) (not d!886804) (not b!3228742) (not d!886748) (not b!3228489) (not d!886918) (not b!3228796) (not b!3229062) (not b!3229087) (not b_lambda!88945) (not b_next!86865) (not b_lambda!88919) (not b!3228797) (not b!3228956) (not b!3228546) (not b!3229102) (not b!3229110) (not b_next!86835) (not d!886808) (not b!3228818) (not b!3229122) (not d!886542) b_and!216309 (not d!886908) (not b!3228976) (not d!886892) (not b_next!86859) (not b!3228533) (not b!3229108) (not b!3229078) (not b!3228997) (not bs!543161) (not d!886886) (not b!3229036) (not d!886596) b_and!216183 (not b!3229005) (not d!886706) (not b!3228688) (not b!3228799) (not b!3229030) (not b!3228821) b_and!216315 (not b_next!86863) (not d!886738) (not b!3228777) (not b!3228463) (not b_lambda!88913) b_and!216317 b_and!216307 (not b_lambda!88949) b_and!216247 (not b!3229046) (not d!886810) (not b!3228794) (not b!3228931) (not d!886942) (not b!3228760) (not b!3228833) (not b!3228996) tp_is_empty!17329 (not b!3228831) (not b!3229158) (not d!886802) (not b!3229058) (not d!886774) (not b!3229092) (not b!3229106) (not d!886576) (not d!886940) (not b!3228930) (not d!886728) (not b!3229050) (not b!3229060) (not d!886776) (not b!3228579) (not d!886746) (not b!3228795) (not b!3229098) (not d!886688) (not b!3228487) (not d!886772) (not b!3228707) (not d!886902) (not b!3229150) b_and!216251 (not b!3229053) (not d!886944) (not b!3229015) (not d!886696) (not d!886786) (not d!886938) (not d!886900) (not b!3229029) (not bm!233200) (not b!3229112) (not d!886766) (not b_lambda!88951) (not b!3229156) (not d!886584) (not d!886744) (not b!3229091) (not b!3228965) (not b!3228486) (not tb!159895) (not d!886588) (not b!3228713) (not b!3228485) (not b!3228772) (not b!3229121) (not tb!159925) (not b_lambda!88943) (not d!886812) (not b!3229094) (not b!3229018) (not b!3229141) (not b!3229084) (not b!3229137) (not b_next!86853) (not b!3229096) (not b!3228830) (not b!3228484) (not b!3229104) (not b!3228687) (not b!3228534) (not b_lambda!88921) (not b!3229113) (not b!3229101) (not b!3228576) b_and!216313 (not b!3228556) (not b!3229129) (not b!3228923) (not d!886768) (not d!886568) (not b_next!86855) (not b!3229114) (not b!3228925) (not b!3229088) (not b!3229159) (not b!3228801) (not b_lambda!88917) (not b!3229097) (not b!3228820) (not d!886764) (not b!3229085) (not d!886540) (not b!3228832) (not d!886896) (not bm!233212) (not b!3228985) (not b!3229026) (not b!3228804) (not d!886924) (not d!886888) (not b_lambda!88947) (not bm!233213) (not d!886770) (not b!3229057) (not b_next!86841) (not b!3228975) (not b!3228793))
(check-sat (not b_next!86833) b_and!216305 (not b_next!86843) b_and!216319 b_and!216309 (not b_next!86859) b_and!216183 b_and!216251 (not b_next!86853) (not b_next!86841) b_and!216311 b_and!216321 b_and!216179 (not b_next!86839) (not b_next!86861) b_and!216187 (not b_next!86837) (not b_next!86857) (not b_next!86867) (not b_next!86835) (not b_next!86865) b_and!216247 b_and!216315 (not b_next!86863) b_and!216317 b_and!216307 b_and!216313 (not b_next!86855))
(get-model)

(declare-fun b!3229267 () Bool)

(declare-fun e!2014116 () List!36487)

(assert (=> b!3229267 (= e!2014116 (t!241332 lt!1095096))))

(declare-fun b!3229268 () Bool)

(assert (=> b!3229268 (= e!2014116 (drop!1876 (t!241332 (t!241332 lt!1095096)) (- (- (+ 0 1) 1) 1)))))

(declare-fun b!3229269 () Bool)

(declare-fun e!2014119 () Int)

(assert (=> b!3229269 (= e!2014119 0)))

(declare-fun b!3229270 () Bool)

(declare-fun e!2014117 () List!36487)

(assert (=> b!3229270 (= e!2014117 Nil!36363)))

(declare-fun b!3229271 () Bool)

(declare-fun e!2014115 () Bool)

(declare-fun lt!1095655 () List!36487)

(declare-fun e!2014118 () Int)

(assert (=> b!3229271 (= e!2014115 (= (size!27433 lt!1095655) e!2014118))))

(declare-fun c!542661 () Bool)

(assert (=> b!3229271 (= c!542661 (<= (- (+ 0 1) 1) 0))))

(declare-fun b!3229272 () Bool)

(declare-fun call!233219 () Int)

(assert (=> b!3229272 (= e!2014119 (- call!233219 (- (+ 0 1) 1)))))

(declare-fun b!3229273 () Bool)

(assert (=> b!3229273 (= e!2014118 call!233219)))

(declare-fun bm!233214 () Bool)

(assert (=> bm!233214 (= call!233219 (size!27433 (t!241332 lt!1095096)))))

(declare-fun d!886990 () Bool)

(assert (=> d!886990 e!2014115))

(declare-fun res!1315052 () Bool)

(assert (=> d!886990 (=> (not res!1315052) (not e!2014115))))

(assert (=> d!886990 (= res!1315052 (= ((_ map implies) (content!4920 lt!1095655) (content!4920 (t!241332 lt!1095096))) ((as const (InoxSet Token!9898)) true)))))

(assert (=> d!886990 (= lt!1095655 e!2014117)))

(declare-fun c!542659 () Bool)

(assert (=> d!886990 (= c!542659 ((_ is Nil!36363) (t!241332 lt!1095096)))))

(assert (=> d!886990 (= (drop!1876 (t!241332 lt!1095096) (- (+ 0 1) 1)) lt!1095655)))

(declare-fun b!3229274 () Bool)

(assert (=> b!3229274 (= e!2014118 e!2014119)))

(declare-fun c!542660 () Bool)

(assert (=> b!3229274 (= c!542660 (>= (- (+ 0 1) 1) call!233219))))

(declare-fun b!3229275 () Bool)

(assert (=> b!3229275 (= e!2014117 e!2014116)))

(declare-fun c!542662 () Bool)

(assert (=> b!3229275 (= c!542662 (<= (- (+ 0 1) 1) 0))))

(assert (= (and d!886990 c!542659) b!3229270))

(assert (= (and d!886990 (not c!542659)) b!3229275))

(assert (= (and b!3229275 c!542662) b!3229267))

(assert (= (and b!3229275 (not c!542662)) b!3229268))

(assert (= (and d!886990 res!1315052) b!3229271))

(assert (= (and b!3229271 c!542661) b!3229273))

(assert (= (and b!3229271 (not c!542661)) b!3229274))

(assert (= (and b!3229274 c!542660) b!3229269))

(assert (= (and b!3229274 (not c!542660)) b!3229272))

(assert (= (or b!3229273 b!3229274 b!3229272) bm!233214))

(declare-fun m!3509007 () Bool)

(assert (=> b!3229268 m!3509007))

(declare-fun m!3509009 () Bool)

(assert (=> b!3229271 m!3509009))

(declare-fun m!3509011 () Bool)

(assert (=> bm!233214 m!3509011))

(declare-fun m!3509013 () Bool)

(assert (=> d!886990 m!3509013))

(declare-fun m!3509015 () Bool)

(assert (=> d!886990 m!3509015))

(assert (=> b!3228953 d!886990))

(declare-fun d!886992 () Bool)

(assert (=> d!886992 (= (inv!49246 (tag!5798 (h!41782 (t!241331 (t!241331 rules!2135))))) (= (mod (str.len (value!170540 (tag!5798 (h!41782 (t!241331 (t!241331 rules!2135)))))) 2) 0))))

(assert (=> b!3229144 d!886992))

(declare-fun d!886994 () Bool)

(declare-fun res!1315053 () Bool)

(declare-fun e!2014120 () Bool)

(assert (=> d!886994 (=> (not res!1315053) (not e!2014120))))

(assert (=> d!886994 (= res!1315053 (semiInverseModEq!2171 (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 rules!2135))))) (toValue!7374 (transformation!5266 (h!41782 (t!241331 (t!241331 rules!2135)))))))))

(assert (=> d!886994 (= (inv!49249 (transformation!5266 (h!41782 (t!241331 (t!241331 rules!2135))))) e!2014120)))

(declare-fun b!3229276 () Bool)

(assert (=> b!3229276 (= e!2014120 (equivClasses!2070 (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 rules!2135))))) (toValue!7374 (transformation!5266 (h!41782 (t!241331 (t!241331 rules!2135)))))))))

(assert (= (and d!886994 res!1315053) b!3229276))

(declare-fun m!3509017 () Bool)

(assert (=> d!886994 m!3509017))

(declare-fun m!3509019 () Bool)

(assert (=> b!3229276 m!3509019))

(assert (=> b!3229144 d!886994))

(declare-fun d!886996 () Bool)

(declare-fun res!1315054 () Bool)

(declare-fun e!2014121 () Bool)

(assert (=> d!886996 (=> (not res!1315054) (not e!2014121))))

(assert (=> d!886996 (= res!1315054 (not (isEmpty!20452 (originalCharacters!5980 (h!41783 (t!241332 (t!241332 tokens!494)))))))))

(assert (=> d!886996 (= (inv!49250 (h!41783 (t!241332 (t!241332 tokens!494)))) e!2014121)))

(declare-fun b!3229277 () Bool)

(declare-fun res!1315055 () Bool)

(assert (=> b!3229277 (=> (not res!1315055) (not e!2014121))))

(assert (=> b!3229277 (= res!1315055 (= (originalCharacters!5980 (h!41783 (t!241332 (t!241332 tokens!494)))) (list!12975 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494)))))) (value!170541 (h!41783 (t!241332 (t!241332 tokens!494))))))))))

(declare-fun b!3229278 () Bool)

(assert (=> b!3229278 (= e!2014121 (= (size!27425 (h!41783 (t!241332 (t!241332 tokens!494)))) (size!27430 (originalCharacters!5980 (h!41783 (t!241332 (t!241332 tokens!494)))))))))

(assert (= (and d!886996 res!1315054) b!3229277))

(assert (= (and b!3229277 res!1315055) b!3229278))

(declare-fun b_lambda!88963 () Bool)

(assert (=> (not b_lambda!88963) (not b!3229277)))

(declare-fun t!241500 () Bool)

(declare-fun tb!159975 () Bool)

(assert (=> (and b!3228087 (= (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494))))))) t!241500) tb!159975))

(declare-fun b!3229279 () Bool)

(declare-fun e!2014122 () Bool)

(declare-fun tp!1017605 () Bool)

(assert (=> b!3229279 (= e!2014122 (and (inv!49253 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494)))))) (value!170541 (h!41783 (t!241332 (t!241332 tokens!494))))))) tp!1017605))))

(declare-fun result!202536 () Bool)

(assert (=> tb!159975 (= result!202536 (and (inv!49254 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494)))))) (value!170541 (h!41783 (t!241332 (t!241332 tokens!494)))))) e!2014122))))

(assert (= tb!159975 b!3229279))

(declare-fun m!3509021 () Bool)

(assert (=> b!3229279 m!3509021))

(declare-fun m!3509023 () Bool)

(assert (=> tb!159975 m!3509023))

(assert (=> b!3229277 t!241500))

(declare-fun b_and!216331 () Bool)

(assert (= b_and!216311 (and (=> t!241500 result!202536) b_and!216331)))

(declare-fun t!241502 () Bool)

(declare-fun tb!159977 () Bool)

(assert (=> (and b!3228076 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494))))))) t!241502) tb!159977))

(declare-fun result!202538 () Bool)

(assert (= result!202538 result!202536))

(assert (=> b!3229277 t!241502))

(declare-fun b_and!216333 () Bool)

(assert (= b_and!216305 (and (=> t!241502 result!202538) b_and!216333)))

(declare-fun t!241504 () Bool)

(declare-fun tb!159979 () Bool)

(assert (=> (and b!3228072 (= (toChars!7233 (transformation!5266 (h!41782 rules!2135))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494))))))) t!241504) tb!159979))

(declare-fun result!202540 () Bool)

(assert (= result!202540 result!202536))

(assert (=> b!3229277 t!241504))

(declare-fun b_and!216335 () Bool)

(assert (= b_and!216309 (and (=> t!241504 result!202540) b_and!216335)))

(declare-fun tb!159981 () Bool)

(declare-fun t!241506 () Bool)

(assert (=> (and b!3229145 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 rules!2135))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494))))))) t!241506) tb!159981))

(declare-fun result!202542 () Bool)

(assert (= result!202542 result!202536))

(assert (=> b!3229277 t!241506))

(declare-fun b_and!216337 () Bool)

(assert (= b_and!216321 (and (=> t!241506 result!202542) b_and!216337)))

(declare-fun t!241508 () Bool)

(declare-fun tb!159983 () Bool)

(assert (=> (and b!3229130 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494)))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494))))))) t!241508) tb!159983))

(declare-fun result!202544 () Bool)

(assert (= result!202544 result!202536))

(assert (=> b!3229277 t!241508))

(declare-fun b_and!216339 () Bool)

(assert (= b_and!216317 (and (=> t!241508 result!202544) b_and!216339)))

(declare-fun tb!159985 () Bool)

(declare-fun t!241510 () Bool)

(assert (=> (and b!3228442 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 rules!2135)))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494))))))) t!241510) tb!159985))

(declare-fun result!202546 () Bool)

(assert (= result!202546 result!202536))

(assert (=> b!3229277 t!241510))

(declare-fun b_and!216341 () Bool)

(assert (= b_and!216307 (and (=> t!241510 result!202546) b_and!216341)))

(declare-fun t!241512 () Bool)

(declare-fun tb!159987 () Bool)

(assert (=> (and b!3228460 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494))))))) t!241512) tb!159987))

(declare-fun result!202548 () Bool)

(assert (= result!202548 result!202536))

(assert (=> b!3229277 t!241512))

(declare-fun b_and!216343 () Bool)

(assert (= b_and!216313 (and (=> t!241512 result!202548) b_and!216343)))

(declare-fun m!3509025 () Bool)

(assert (=> d!886996 m!3509025))

(declare-fun m!3509027 () Bool)

(assert (=> b!3229277 m!3509027))

(assert (=> b!3229277 m!3509027))

(declare-fun m!3509029 () Bool)

(assert (=> b!3229277 m!3509029))

(declare-fun m!3509031 () Bool)

(assert (=> b!3229278 m!3509031))

(assert (=> b!3229127 d!886996))

(declare-fun b!3229280 () Bool)

(declare-fun e!2014124 () List!36487)

(assert (=> b!3229280 (= e!2014124 lt!1095320)))

(declare-fun b!3229281 () Bool)

(assert (=> b!3229281 (= e!2014124 (drop!1876 (t!241332 lt!1095320) (- 0 1)))))

(declare-fun b!3229282 () Bool)

(declare-fun e!2014127 () Int)

(assert (=> b!3229282 (= e!2014127 0)))

(declare-fun b!3229283 () Bool)

(declare-fun e!2014125 () List!36487)

(assert (=> b!3229283 (= e!2014125 Nil!36363)))

(declare-fun b!3229284 () Bool)

(declare-fun e!2014123 () Bool)

(declare-fun lt!1095656 () List!36487)

(declare-fun e!2014126 () Int)

(assert (=> b!3229284 (= e!2014123 (= (size!27433 lt!1095656) e!2014126))))

(declare-fun c!542665 () Bool)

(assert (=> b!3229284 (= c!542665 (<= 0 0))))

(declare-fun b!3229285 () Bool)

(declare-fun call!233220 () Int)

(assert (=> b!3229285 (= e!2014127 (- call!233220 0))))

(declare-fun b!3229286 () Bool)

(assert (=> b!3229286 (= e!2014126 call!233220)))

(declare-fun bm!233215 () Bool)

(assert (=> bm!233215 (= call!233220 (size!27433 lt!1095320))))

(declare-fun d!886998 () Bool)

(assert (=> d!886998 e!2014123))

(declare-fun res!1315056 () Bool)

(assert (=> d!886998 (=> (not res!1315056) (not e!2014123))))

(assert (=> d!886998 (= res!1315056 (= ((_ map implies) (content!4920 lt!1095656) (content!4920 lt!1095320)) ((as const (InoxSet Token!9898)) true)))))

(assert (=> d!886998 (= lt!1095656 e!2014125)))

(declare-fun c!542663 () Bool)

(assert (=> d!886998 (= c!542663 ((_ is Nil!36363) lt!1095320))))

(assert (=> d!886998 (= (drop!1876 lt!1095320 0) lt!1095656)))

(declare-fun b!3229287 () Bool)

(assert (=> b!3229287 (= e!2014126 e!2014127)))

(declare-fun c!542664 () Bool)

(assert (=> b!3229287 (= c!542664 (>= 0 call!233220))))

(declare-fun b!3229288 () Bool)

(assert (=> b!3229288 (= e!2014125 e!2014124)))

(declare-fun c!542666 () Bool)

(assert (=> b!3229288 (= c!542666 (<= 0 0))))

(assert (= (and d!886998 c!542663) b!3229283))

(assert (= (and d!886998 (not c!542663)) b!3229288))

(assert (= (and b!3229288 c!542666) b!3229280))

(assert (= (and b!3229288 (not c!542666)) b!3229281))

(assert (= (and d!886998 res!1315056) b!3229284))

(assert (= (and b!3229284 c!542665) b!3229286))

(assert (= (and b!3229284 (not c!542665)) b!3229287))

(assert (= (and b!3229287 c!542664) b!3229282))

(assert (= (and b!3229287 (not c!542664)) b!3229285))

(assert (= (or b!3229286 b!3229287 b!3229285) bm!233215))

(declare-fun m!3509033 () Bool)

(assert (=> b!3229281 m!3509033))

(declare-fun m!3509035 () Bool)

(assert (=> b!3229284 m!3509035))

(declare-fun m!3509037 () Bool)

(assert (=> bm!233215 m!3509037))

(declare-fun m!3509039 () Bool)

(assert (=> d!886998 m!3509039))

(declare-fun m!3509041 () Bool)

(assert (=> d!886998 m!3509041))

(assert (=> b!3228787 d!886998))

(declare-fun d!887000 () Bool)

(declare-fun lt!1095657 () BalanceConc!21428)

(assert (=> d!887000 (= (list!12975 lt!1095657) (originalCharacters!5980 (apply!8300 lt!1095068 0)))))

(assert (=> d!887000 (= lt!1095657 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095068 0)))) (value!170541 (apply!8300 lt!1095068 0))))))

(assert (=> d!887000 (= (charsOf!3282 (apply!8300 lt!1095068 0)) lt!1095657)))

(declare-fun b_lambda!88965 () Bool)

(assert (=> (not b_lambda!88965) (not d!887000)))

(declare-fun t!241514 () Bool)

(declare-fun tb!159989 () Bool)

(assert (=> (and b!3228442 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 rules!2135)))) (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095068 0))))) t!241514) tb!159989))

(declare-fun b!3229289 () Bool)

(declare-fun e!2014128 () Bool)

(declare-fun tp!1017606 () Bool)

(assert (=> b!3229289 (= e!2014128 (and (inv!49253 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095068 0)))) (value!170541 (apply!8300 lt!1095068 0))))) tp!1017606))))

(declare-fun result!202550 () Bool)

(assert (=> tb!159989 (= result!202550 (and (inv!49254 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095068 0)))) (value!170541 (apply!8300 lt!1095068 0)))) e!2014128))))

(assert (= tb!159989 b!3229289))

(declare-fun m!3509043 () Bool)

(assert (=> b!3229289 m!3509043))

(declare-fun m!3509045 () Bool)

(assert (=> tb!159989 m!3509045))

(assert (=> d!887000 t!241514))

(declare-fun b_and!216345 () Bool)

(assert (= b_and!216341 (and (=> t!241514 result!202550) b_and!216345)))

(declare-fun t!241516 () Bool)

(declare-fun tb!159991 () Bool)

(assert (=> (and b!3229145 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 rules!2135))))) (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095068 0))))) t!241516) tb!159991))

(declare-fun result!202552 () Bool)

(assert (= result!202552 result!202550))

(assert (=> d!887000 t!241516))

(declare-fun b_and!216347 () Bool)

(assert (= b_and!216337 (and (=> t!241516 result!202552) b_and!216347)))

(declare-fun t!241518 () Bool)

(declare-fun tb!159993 () Bool)

(assert (=> (and b!3228076 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095068 0))))) t!241518) tb!159993))

(declare-fun result!202554 () Bool)

(assert (= result!202554 result!202550))

(assert (=> d!887000 t!241518))

(declare-fun b_and!216349 () Bool)

(assert (= b_and!216333 (and (=> t!241518 result!202554) b_and!216349)))

(declare-fun tb!159995 () Bool)

(declare-fun t!241520 () Bool)

(assert (=> (and b!3228072 (= (toChars!7233 (transformation!5266 (h!41782 rules!2135))) (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095068 0))))) t!241520) tb!159995))

(declare-fun result!202556 () Bool)

(assert (= result!202556 result!202550))

(assert (=> d!887000 t!241520))

(declare-fun b_and!216351 () Bool)

(assert (= b_and!216335 (and (=> t!241520 result!202556) b_and!216351)))

(declare-fun t!241522 () Bool)

(declare-fun tb!159997 () Bool)

(assert (=> (and b!3229130 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494)))))) (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095068 0))))) t!241522) tb!159997))

(declare-fun result!202558 () Bool)

(assert (= result!202558 result!202550))

(assert (=> d!887000 t!241522))

(declare-fun b_and!216353 () Bool)

(assert (= b_and!216339 (and (=> t!241522 result!202558) b_and!216353)))

(declare-fun t!241524 () Bool)

(declare-fun tb!159999 () Bool)

(assert (=> (and b!3228087 (= (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095068 0))))) t!241524) tb!159999))

(declare-fun result!202560 () Bool)

(assert (= result!202560 result!202550))

(assert (=> d!887000 t!241524))

(declare-fun b_and!216355 () Bool)

(assert (= b_and!216331 (and (=> t!241524 result!202560) b_and!216355)))

(declare-fun t!241526 () Bool)

(declare-fun tb!160001 () Bool)

(assert (=> (and b!3228460 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095068 0))))) t!241526) tb!160001))

(declare-fun result!202562 () Bool)

(assert (= result!202562 result!202550))

(assert (=> d!887000 t!241526))

(declare-fun b_and!216357 () Bool)

(assert (= b_and!216343 (and (=> t!241526 result!202562) b_and!216357)))

(declare-fun m!3509047 () Bool)

(assert (=> d!887000 m!3509047))

(declare-fun m!3509049 () Bool)

(assert (=> d!887000 m!3509049))

(assert (=> b!3228787 d!887000))

(declare-fun d!887002 () Bool)

(assert (=> d!887002 (= (tail!5232 (drop!1876 lt!1095320 0)) (t!241332 (drop!1876 lt!1095320 0)))))

(assert (=> b!3228787 d!887002))

(assert (=> b!3228787 d!886484))

(declare-fun lt!1095664 () BalanceConc!21428)

(declare-fun d!887004 () Bool)

(assert (=> d!887004 (= (list!12975 lt!1095664) (printWithSeparatorTokenListTailRec!3 thiss!18206 (dropList!1093 lt!1095068 (+ 0 1)) separatorToken!241 (list!12975 (++!8757 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095068 0))) (charsOf!3282 separatorToken!241)))))))

(declare-fun e!2014129 () BalanceConc!21428)

(assert (=> d!887004 (= lt!1095664 e!2014129)))

(declare-fun c!542667 () Bool)

(assert (=> d!887004 (= c!542667 (>= (+ 0 1) (size!27429 lt!1095068)))))

(declare-fun e!2014130 () Bool)

(assert (=> d!887004 e!2014130))

(declare-fun res!1315057 () Bool)

(assert (=> d!887004 (=> (not res!1315057) (not e!2014130))))

(assert (=> d!887004 (= res!1315057 (>= (+ 0 1) 0))))

(assert (=> d!887004 (= (printWithSeparatorTokenTailRec!16 thiss!18206 lt!1095068 separatorToken!241 (+ 0 1) (++!8757 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095068 0))) (charsOf!3282 separatorToken!241))) lt!1095664)))

(declare-fun b!3229290 () Bool)

(assert (=> b!3229290 (= e!2014130 (<= (+ 0 1) (size!27429 lt!1095068)))))

(declare-fun b!3229291 () Bool)

(assert (=> b!3229291 (= e!2014129 (++!8757 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095068 0))) (charsOf!3282 separatorToken!241)))))

(declare-fun b!3229292 () Bool)

(assert (=> b!3229292 (= e!2014129 (printWithSeparatorTokenTailRec!16 thiss!18206 lt!1095068 separatorToken!241 (+ 0 1 1) (++!8757 (++!8757 (++!8757 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095068 0))) (charsOf!3282 separatorToken!241)) (charsOf!3282 (apply!8300 lt!1095068 (+ 0 1)))) (charsOf!3282 separatorToken!241))))))

(declare-fun lt!1095659 () List!36487)

(assert (=> b!3229292 (= lt!1095659 (list!12978 lt!1095068))))

(declare-fun lt!1095661 () Unit!50946)

(assert (=> b!3229292 (= lt!1095661 (lemmaDropApply!1052 lt!1095659 (+ 0 1)))))

(assert (=> b!3229292 (= (head!7088 (drop!1876 lt!1095659 (+ 0 1))) (apply!8301 lt!1095659 (+ 0 1)))))

(declare-fun lt!1095658 () Unit!50946)

(assert (=> b!3229292 (= lt!1095658 lt!1095661)))

(declare-fun lt!1095660 () List!36487)

(assert (=> b!3229292 (= lt!1095660 (list!12978 lt!1095068))))

(declare-fun lt!1095662 () Unit!50946)

(assert (=> b!3229292 (= lt!1095662 (lemmaDropTail!936 lt!1095660 (+ 0 1)))))

(assert (=> b!3229292 (= (tail!5232 (drop!1876 lt!1095660 (+ 0 1))) (drop!1876 lt!1095660 (+ 0 1 1)))))

(declare-fun lt!1095663 () Unit!50946)

(assert (=> b!3229292 (= lt!1095663 lt!1095662)))

(assert (= (and d!887004 res!1315057) b!3229290))

(assert (= (and d!887004 c!542667) b!3229291))

(assert (= (and d!887004 (not c!542667)) b!3229292))

(assert (=> d!887004 m!3508129))

(declare-fun m!3509051 () Bool)

(assert (=> d!887004 m!3509051))

(declare-fun m!3509053 () Bool)

(assert (=> d!887004 m!3509053))

(declare-fun m!3509055 () Bool)

(assert (=> d!887004 m!3509055))

(assert (=> d!887004 m!3508147))

(assert (=> d!887004 m!3509053))

(assert (=> d!887004 m!3509051))

(declare-fun m!3509057 () Bool)

(assert (=> d!887004 m!3509057))

(assert (=> b!3229290 m!3508129))

(declare-fun m!3509059 () Bool)

(assert (=> b!3229292 m!3509059))

(declare-fun m!3509061 () Bool)

(assert (=> b!3229292 m!3509061))

(declare-fun m!3509063 () Bool)

(assert (=> b!3229292 m!3509063))

(declare-fun m!3509065 () Bool)

(assert (=> b!3229292 m!3509065))

(declare-fun m!3509067 () Bool)

(assert (=> b!3229292 m!3509067))

(assert (=> b!3229292 m!3507153))

(declare-fun m!3509069 () Bool)

(assert (=> b!3229292 m!3509069))

(assert (=> b!3229292 m!3507355))

(assert (=> b!3229292 m!3508147))

(assert (=> b!3229292 m!3509065))

(assert (=> b!3229292 m!3509067))

(assert (=> b!3229292 m!3509069))

(declare-fun m!3509071 () Bool)

(assert (=> b!3229292 m!3509071))

(assert (=> b!3229292 m!3507153))

(assert (=> b!3229292 m!3509059))

(declare-fun m!3509073 () Bool)

(assert (=> b!3229292 m!3509073))

(declare-fun m!3509075 () Bool)

(assert (=> b!3229292 m!3509075))

(declare-fun m!3509077 () Bool)

(assert (=> b!3229292 m!3509077))

(declare-fun m!3509079 () Bool)

(assert (=> b!3229292 m!3509079))

(declare-fun m!3509081 () Bool)

(assert (=> b!3229292 m!3509081))

(assert (=> b!3229292 m!3509063))

(declare-fun m!3509083 () Bool)

(assert (=> b!3229292 m!3509083))

(assert (=> b!3229292 m!3509075))

(assert (=> b!3228787 d!887004))

(declare-fun d!887006 () Bool)

(declare-fun lt!1095665 () Token!9898)

(assert (=> d!887006 (contains!6527 lt!1095319 lt!1095665)))

(declare-fun e!2014131 () Token!9898)

(assert (=> d!887006 (= lt!1095665 e!2014131)))

(declare-fun c!542668 () Bool)

(assert (=> d!887006 (= c!542668 (= 0 0))))

(declare-fun e!2014132 () Bool)

(assert (=> d!887006 e!2014132))

(declare-fun res!1315058 () Bool)

(assert (=> d!887006 (=> (not res!1315058) (not e!2014132))))

(assert (=> d!887006 (= res!1315058 (<= 0 0))))

(assert (=> d!887006 (= (apply!8301 lt!1095319 0) lt!1095665)))

(declare-fun b!3229293 () Bool)

(assert (=> b!3229293 (= e!2014132 (< 0 (size!27433 lt!1095319)))))

(declare-fun b!3229294 () Bool)

(assert (=> b!3229294 (= e!2014131 (head!7088 lt!1095319))))

(declare-fun b!3229295 () Bool)

(assert (=> b!3229295 (= e!2014131 (apply!8301 (tail!5232 lt!1095319) (- 0 1)))))

(assert (= (and d!887006 res!1315058) b!3229293))

(assert (= (and d!887006 c!542668) b!3229294))

(assert (= (and d!887006 (not c!542668)) b!3229295))

(declare-fun m!3509085 () Bool)

(assert (=> d!887006 m!3509085))

(declare-fun m!3509087 () Bool)

(assert (=> b!3229293 m!3509087))

(declare-fun m!3509089 () Bool)

(assert (=> b!3229294 m!3509089))

(declare-fun m!3509091 () Bool)

(assert (=> b!3229295 m!3509091))

(assert (=> b!3229295 m!3509091))

(declare-fun m!3509093 () Bool)

(assert (=> b!3229295 m!3509093))

(assert (=> b!3228787 d!887006))

(assert (=> b!3228787 d!886672))

(declare-fun b!3229296 () Bool)

(declare-fun e!2014134 () List!36487)

(assert (=> b!3229296 (= e!2014134 lt!1095319)))

(declare-fun b!3229297 () Bool)

(assert (=> b!3229297 (= e!2014134 (drop!1876 (t!241332 lt!1095319) (- 0 1)))))

(declare-fun b!3229298 () Bool)

(declare-fun e!2014137 () Int)

(assert (=> b!3229298 (= e!2014137 0)))

(declare-fun b!3229299 () Bool)

(declare-fun e!2014135 () List!36487)

(assert (=> b!3229299 (= e!2014135 Nil!36363)))

(declare-fun b!3229300 () Bool)

(declare-fun e!2014133 () Bool)

(declare-fun lt!1095666 () List!36487)

(declare-fun e!2014136 () Int)

(assert (=> b!3229300 (= e!2014133 (= (size!27433 lt!1095666) e!2014136))))

(declare-fun c!542671 () Bool)

(assert (=> b!3229300 (= c!542671 (<= 0 0))))

(declare-fun b!3229301 () Bool)

(declare-fun call!233221 () Int)

(assert (=> b!3229301 (= e!2014137 (- call!233221 0))))

(declare-fun b!3229302 () Bool)

(assert (=> b!3229302 (= e!2014136 call!233221)))

(declare-fun bm!233216 () Bool)

(assert (=> bm!233216 (= call!233221 (size!27433 lt!1095319))))

(declare-fun d!887008 () Bool)

(assert (=> d!887008 e!2014133))

(declare-fun res!1315059 () Bool)

(assert (=> d!887008 (=> (not res!1315059) (not e!2014133))))

(assert (=> d!887008 (= res!1315059 (= ((_ map implies) (content!4920 lt!1095666) (content!4920 lt!1095319)) ((as const (InoxSet Token!9898)) true)))))

(assert (=> d!887008 (= lt!1095666 e!2014135)))

(declare-fun c!542669 () Bool)

(assert (=> d!887008 (= c!542669 ((_ is Nil!36363) lt!1095319))))

(assert (=> d!887008 (= (drop!1876 lt!1095319 0) lt!1095666)))

(declare-fun b!3229303 () Bool)

(assert (=> b!3229303 (= e!2014136 e!2014137)))

(declare-fun c!542670 () Bool)

(assert (=> b!3229303 (= c!542670 (>= 0 call!233221))))

(declare-fun b!3229304 () Bool)

(assert (=> b!3229304 (= e!2014135 e!2014134)))

(declare-fun c!542672 () Bool)

(assert (=> b!3229304 (= c!542672 (<= 0 0))))

(assert (= (and d!887008 c!542669) b!3229299))

(assert (= (and d!887008 (not c!542669)) b!3229304))

(assert (= (and b!3229304 c!542672) b!3229296))

(assert (= (and b!3229304 (not c!542672)) b!3229297))

(assert (= (and d!887008 res!1315059) b!3229300))

(assert (= (and b!3229300 c!542671) b!3229302))

(assert (= (and b!3229300 (not c!542671)) b!3229303))

(assert (= (and b!3229303 c!542670) b!3229298))

(assert (= (and b!3229303 (not c!542670)) b!3229301))

(assert (= (or b!3229302 b!3229303 b!3229301) bm!233216))

(declare-fun m!3509095 () Bool)

(assert (=> b!3229297 m!3509095))

(declare-fun m!3509097 () Bool)

(assert (=> b!3229300 m!3509097))

(assert (=> bm!233216 m!3509087))

(declare-fun m!3509099 () Bool)

(assert (=> d!887008 m!3509099))

(declare-fun m!3509101 () Bool)

(assert (=> d!887008 m!3509101))

(assert (=> b!3228787 d!887008))

(declare-fun b!3229305 () Bool)

(declare-fun res!1315061 () Bool)

(declare-fun e!2014138 () Bool)

(assert (=> b!3229305 (=> (not res!1315061) (not e!2014138))))

(assert (=> b!3229305 (= res!1315061 (isBalanced!3247 (++!8761 (c!542433 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095068 0)))) (c!542433 (charsOf!3282 separatorToken!241)))))))

(declare-fun b!3229306 () Bool)

(declare-fun res!1315063 () Bool)

(assert (=> b!3229306 (=> (not res!1315063) (not e!2014138))))

(assert (=> b!3229306 (= res!1315063 (<= (height!1580 (++!8761 (c!542433 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095068 0)))) (c!542433 (charsOf!3282 separatorToken!241)))) (+ (max!0 (height!1580 (c!542433 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095068 0))))) (height!1580 (c!542433 (charsOf!3282 separatorToken!241)))) 1)))))

(declare-fun b!3229307 () Bool)

(declare-fun res!1315060 () Bool)

(assert (=> b!3229307 (=> (not res!1315060) (not e!2014138))))

(assert (=> b!3229307 (= res!1315060 (>= (height!1580 (++!8761 (c!542433 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095068 0)))) (c!542433 (charsOf!3282 separatorToken!241)))) (max!0 (height!1580 (c!542433 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095068 0))))) (height!1580 (c!542433 (charsOf!3282 separatorToken!241))))))))

(declare-fun d!887010 () Bool)

(assert (=> d!887010 e!2014138))

(declare-fun res!1315062 () Bool)

(assert (=> d!887010 (=> (not res!1315062) (not e!2014138))))

(assert (=> d!887010 (= res!1315062 (appendAssocInst!745 (c!542433 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095068 0)))) (c!542433 (charsOf!3282 separatorToken!241))))))

(declare-fun lt!1095667 () BalanceConc!21428)

(assert (=> d!887010 (= lt!1095667 (BalanceConc!21429 (++!8761 (c!542433 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095068 0)))) (c!542433 (charsOf!3282 separatorToken!241)))))))

(assert (=> d!887010 (= (++!8757 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095068 0))) (charsOf!3282 separatorToken!241)) lt!1095667)))

(declare-fun b!3229308 () Bool)

(assert (=> b!3229308 (= e!2014138 (= (list!12975 lt!1095667) (++!8756 (list!12975 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095068 0)))) (list!12975 (charsOf!3282 separatorToken!241)))))))

(assert (= (and d!887010 res!1315062) b!3229305))

(assert (= (and b!3229305 res!1315061) b!3229306))

(assert (= (and b!3229306 res!1315063) b!3229307))

(assert (= (and b!3229307 res!1315060) b!3229308))

(declare-fun m!3509103 () Bool)

(assert (=> b!3229307 m!3509103))

(declare-fun m!3509105 () Bool)

(assert (=> b!3229307 m!3509105))

(assert (=> b!3229307 m!3509103))

(declare-fun m!3509107 () Bool)

(assert (=> b!3229307 m!3509107))

(declare-fun m!3509109 () Bool)

(assert (=> b!3229307 m!3509109))

(assert (=> b!3229307 m!3509109))

(assert (=> b!3229307 m!3509105))

(declare-fun m!3509111 () Bool)

(assert (=> b!3229307 m!3509111))

(declare-fun m!3509113 () Bool)

(assert (=> d!887010 m!3509113))

(assert (=> d!887010 m!3509103))

(assert (=> b!3229305 m!3509103))

(assert (=> b!3229305 m!3509103))

(declare-fun m!3509115 () Bool)

(assert (=> b!3229305 m!3509115))

(declare-fun m!3509117 () Bool)

(assert (=> b!3229308 m!3509117))

(assert (=> b!3229308 m!3508145))

(declare-fun m!3509119 () Bool)

(assert (=> b!3229308 m!3509119))

(assert (=> b!3229308 m!3507153))

(assert (=> b!3229308 m!3507149))

(assert (=> b!3229308 m!3509119))

(assert (=> b!3229308 m!3507149))

(declare-fun m!3509121 () Bool)

(assert (=> b!3229308 m!3509121))

(assert (=> b!3229306 m!3509103))

(assert (=> b!3229306 m!3509105))

(assert (=> b!3229306 m!3509103))

(assert (=> b!3229306 m!3509107))

(assert (=> b!3229306 m!3509109))

(assert (=> b!3229306 m!3509109))

(assert (=> b!3229306 m!3509105))

(assert (=> b!3229306 m!3509111))

(assert (=> b!3228787 d!887010))

(declare-fun b!3229309 () Bool)

(declare-fun e!2014140 () List!36487)

(assert (=> b!3229309 (= e!2014140 lt!1095320)))

(declare-fun b!3229310 () Bool)

(assert (=> b!3229310 (= e!2014140 (drop!1876 (t!241332 lt!1095320) (- (+ 0 1) 1)))))

(declare-fun b!3229311 () Bool)

(declare-fun e!2014143 () Int)

(assert (=> b!3229311 (= e!2014143 0)))

(declare-fun b!3229312 () Bool)

(declare-fun e!2014141 () List!36487)

(assert (=> b!3229312 (= e!2014141 Nil!36363)))

(declare-fun b!3229313 () Bool)

(declare-fun e!2014139 () Bool)

(declare-fun lt!1095668 () List!36487)

(declare-fun e!2014142 () Int)

(assert (=> b!3229313 (= e!2014139 (= (size!27433 lt!1095668) e!2014142))))

(declare-fun c!542675 () Bool)

(assert (=> b!3229313 (= c!542675 (<= (+ 0 1) 0))))

(declare-fun b!3229314 () Bool)

(declare-fun call!233222 () Int)

(assert (=> b!3229314 (= e!2014143 (- call!233222 (+ 0 1)))))

(declare-fun b!3229315 () Bool)

(assert (=> b!3229315 (= e!2014142 call!233222)))

(declare-fun bm!233217 () Bool)

(assert (=> bm!233217 (= call!233222 (size!27433 lt!1095320))))

(declare-fun d!887012 () Bool)

(assert (=> d!887012 e!2014139))

(declare-fun res!1315064 () Bool)

(assert (=> d!887012 (=> (not res!1315064) (not e!2014139))))

(assert (=> d!887012 (= res!1315064 (= ((_ map implies) (content!4920 lt!1095668) (content!4920 lt!1095320)) ((as const (InoxSet Token!9898)) true)))))

(assert (=> d!887012 (= lt!1095668 e!2014141)))

(declare-fun c!542673 () Bool)

(assert (=> d!887012 (= c!542673 ((_ is Nil!36363) lt!1095320))))

(assert (=> d!887012 (= (drop!1876 lt!1095320 (+ 0 1)) lt!1095668)))

(declare-fun b!3229316 () Bool)

(assert (=> b!3229316 (= e!2014142 e!2014143)))

(declare-fun c!542674 () Bool)

(assert (=> b!3229316 (= c!542674 (>= (+ 0 1) call!233222))))

(declare-fun b!3229317 () Bool)

(assert (=> b!3229317 (= e!2014141 e!2014140)))

(declare-fun c!542676 () Bool)

(assert (=> b!3229317 (= c!542676 (<= (+ 0 1) 0))))

(assert (= (and d!887012 c!542673) b!3229312))

(assert (= (and d!887012 (not c!542673)) b!3229317))

(assert (= (and b!3229317 c!542676) b!3229309))

(assert (= (and b!3229317 (not c!542676)) b!3229310))

(assert (= (and d!887012 res!1315064) b!3229313))

(assert (= (and b!3229313 c!542675) b!3229315))

(assert (= (and b!3229313 (not c!542675)) b!3229316))

(assert (= (and b!3229316 c!542674) b!3229311))

(assert (= (and b!3229316 (not c!542674)) b!3229314))

(assert (= (or b!3229315 b!3229316 b!3229314) bm!233217))

(declare-fun m!3509123 () Bool)

(assert (=> b!3229310 m!3509123))

(declare-fun m!3509125 () Bool)

(assert (=> b!3229313 m!3509125))

(assert (=> bm!233217 m!3509037))

(declare-fun m!3509127 () Bool)

(assert (=> d!887012 m!3509127))

(assert (=> d!887012 m!3509041))

(assert (=> b!3228787 d!887012))

(declare-fun d!887014 () Bool)

(assert (=> d!887014 (= (head!7088 (drop!1876 lt!1095319 0)) (apply!8301 lt!1095319 0))))

(declare-fun lt!1095669 () Unit!50946)

(assert (=> d!887014 (= lt!1095669 (choose!18833 lt!1095319 0))))

(declare-fun e!2014144 () Bool)

(assert (=> d!887014 e!2014144))

(declare-fun res!1315065 () Bool)

(assert (=> d!887014 (=> (not res!1315065) (not e!2014144))))

(assert (=> d!887014 (= res!1315065 (>= 0 0))))

(assert (=> d!887014 (= (lemmaDropApply!1052 lt!1095319 0) lt!1095669)))

(declare-fun b!3229318 () Bool)

(assert (=> b!3229318 (= e!2014144 (< 0 (size!27433 lt!1095319)))))

(assert (= (and d!887014 res!1315065) b!3229318))

(assert (=> d!887014 m!3508153))

(assert (=> d!887014 m!3508153))

(assert (=> d!887014 m!3508155))

(assert (=> d!887014 m!3508159))

(declare-fun m!3509129 () Bool)

(assert (=> d!887014 m!3509129))

(assert (=> b!3229318 m!3509087))

(assert (=> b!3228787 d!887014))

(declare-fun d!887016 () Bool)

(assert (=> d!887016 (= (tail!5232 (drop!1876 lt!1095320 0)) (drop!1876 lt!1095320 (+ 0 1)))))

(declare-fun lt!1095670 () Unit!50946)

(assert (=> d!887016 (= lt!1095670 (choose!18834 lt!1095320 0))))

(declare-fun e!2014145 () Bool)

(assert (=> d!887016 e!2014145))

(declare-fun res!1315066 () Bool)

(assert (=> d!887016 (=> (not res!1315066) (not e!2014145))))

(assert (=> d!887016 (= res!1315066 (>= 0 0))))

(assert (=> d!887016 (= (lemmaDropTail!936 lt!1095320 0) lt!1095670)))

(declare-fun b!3229319 () Bool)

(assert (=> b!3229319 (= e!2014145 (< 0 (size!27433 lt!1095320)))))

(assert (= (and d!887016 res!1315066) b!3229319))

(assert (=> d!887016 m!3508137))

(assert (=> d!887016 m!3508137))

(assert (=> d!887016 m!3508139))

(assert (=> d!887016 m!3508151))

(declare-fun m!3509131 () Bool)

(assert (=> d!887016 m!3509131))

(assert (=> b!3229319 m!3509037))

(assert (=> b!3228787 d!887016))

(declare-fun d!887018 () Bool)

(assert (=> d!887018 (= (head!7088 (drop!1876 lt!1095319 0)) (h!41783 (drop!1876 lt!1095319 0)))))

(assert (=> b!3228787 d!887018))

(declare-fun d!887020 () Bool)

(declare-fun lt!1095671 () Token!9898)

(assert (=> d!887020 (= lt!1095671 (apply!8301 (list!12978 lt!1095068) 0))))

(assert (=> d!887020 (= lt!1095671 (apply!8303 (c!542434 lt!1095068) 0))))

(declare-fun e!2014146 () Bool)

(assert (=> d!887020 e!2014146))

(declare-fun res!1315067 () Bool)

(assert (=> d!887020 (=> (not res!1315067) (not e!2014146))))

(assert (=> d!887020 (= res!1315067 (<= 0 0))))

(assert (=> d!887020 (= (apply!8300 lt!1095068 0) lt!1095671)))

(declare-fun b!3229320 () Bool)

(assert (=> b!3229320 (= e!2014146 (< 0 (size!27429 lt!1095068)))))

(assert (= (and d!887020 res!1315067) b!3229320))

(assert (=> d!887020 m!3507355))

(assert (=> d!887020 m!3507355))

(declare-fun m!3509133 () Bool)

(assert (=> d!887020 m!3509133))

(declare-fun m!3509135 () Bool)

(assert (=> d!887020 m!3509135))

(assert (=> b!3229320 m!3508129))

(assert (=> b!3228787 d!887020))

(declare-fun b!3229321 () Bool)

(declare-fun res!1315069 () Bool)

(declare-fun e!2014147 () Bool)

(assert (=> b!3229321 (=> (not res!1315069) (not e!2014147))))

(assert (=> b!3229321 (= res!1315069 (isBalanced!3247 (++!8761 (c!542433 (BalanceConc!21429 Empty!10907)) (c!542433 (charsOf!3282 (apply!8300 lt!1095068 0))))))))

(declare-fun b!3229322 () Bool)

(declare-fun res!1315071 () Bool)

(assert (=> b!3229322 (=> (not res!1315071) (not e!2014147))))

(assert (=> b!3229322 (= res!1315071 (<= (height!1580 (++!8761 (c!542433 (BalanceConc!21429 Empty!10907)) (c!542433 (charsOf!3282 (apply!8300 lt!1095068 0))))) (+ (max!0 (height!1580 (c!542433 (BalanceConc!21429 Empty!10907))) (height!1580 (c!542433 (charsOf!3282 (apply!8300 lt!1095068 0))))) 1)))))

(declare-fun b!3229323 () Bool)

(declare-fun res!1315068 () Bool)

(assert (=> b!3229323 (=> (not res!1315068) (not e!2014147))))

(assert (=> b!3229323 (= res!1315068 (>= (height!1580 (++!8761 (c!542433 (BalanceConc!21429 Empty!10907)) (c!542433 (charsOf!3282 (apply!8300 lt!1095068 0))))) (max!0 (height!1580 (c!542433 (BalanceConc!21429 Empty!10907))) (height!1580 (c!542433 (charsOf!3282 (apply!8300 lt!1095068 0)))))))))

(declare-fun d!887022 () Bool)

(assert (=> d!887022 e!2014147))

(declare-fun res!1315070 () Bool)

(assert (=> d!887022 (=> (not res!1315070) (not e!2014147))))

(assert (=> d!887022 (= res!1315070 (appendAssocInst!745 (c!542433 (BalanceConc!21429 Empty!10907)) (c!542433 (charsOf!3282 (apply!8300 lt!1095068 0)))))))

(declare-fun lt!1095672 () BalanceConc!21428)

(assert (=> d!887022 (= lt!1095672 (BalanceConc!21429 (++!8761 (c!542433 (BalanceConc!21429 Empty!10907)) (c!542433 (charsOf!3282 (apply!8300 lt!1095068 0))))))))

(assert (=> d!887022 (= (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095068 0))) lt!1095672)))

(declare-fun b!3229324 () Bool)

(assert (=> b!3229324 (= e!2014147 (= (list!12975 lt!1095672) (++!8756 (list!12975 (BalanceConc!21429 Empty!10907)) (list!12975 (charsOf!3282 (apply!8300 lt!1095068 0))))))))

(assert (= (and d!887022 res!1315070) b!3229321))

(assert (= (and b!3229321 res!1315069) b!3229322))

(assert (= (and b!3229322 res!1315071) b!3229323))

(assert (= (and b!3229323 res!1315068) b!3229324))

(declare-fun m!3509137 () Bool)

(assert (=> b!3229323 m!3509137))

(declare-fun m!3509139 () Bool)

(assert (=> b!3229323 m!3509139))

(assert (=> b!3229323 m!3509137))

(declare-fun m!3509141 () Bool)

(assert (=> b!3229323 m!3509141))

(assert (=> b!3229323 m!3508677))

(assert (=> b!3229323 m!3508677))

(assert (=> b!3229323 m!3509139))

(declare-fun m!3509143 () Bool)

(assert (=> b!3229323 m!3509143))

(declare-fun m!3509145 () Bool)

(assert (=> d!887022 m!3509145))

(assert (=> d!887022 m!3509137))

(assert (=> b!3229321 m!3509137))

(assert (=> b!3229321 m!3509137))

(declare-fun m!3509147 () Bool)

(assert (=> b!3229321 m!3509147))

(declare-fun m!3509149 () Bool)

(assert (=> b!3229324 m!3509149))

(assert (=> b!3229324 m!3507199))

(assert (=> b!3229324 m!3508143))

(declare-fun m!3509151 () Bool)

(assert (=> b!3229324 m!3509151))

(assert (=> b!3229324 m!3507199))

(assert (=> b!3229324 m!3509151))

(declare-fun m!3509153 () Bool)

(assert (=> b!3229324 m!3509153))

(assert (=> b!3229322 m!3509137))

(assert (=> b!3229322 m!3509139))

(assert (=> b!3229322 m!3509137))

(assert (=> b!3229322 m!3509141))

(assert (=> b!3229322 m!3508677))

(assert (=> b!3229322 m!3508677))

(assert (=> b!3229322 m!3509139))

(assert (=> b!3229322 m!3509143))

(assert (=> b!3228787 d!887022))

(declare-fun d!887024 () Bool)

(declare-fun lt!1095673 () Bool)

(assert (=> d!887024 (= lt!1095673 (isEmpty!20453 (list!12980 (right!28645 (c!542434 lt!1095112)))))))

(assert (=> d!887024 (= lt!1095673 (= (size!27434 (right!28645 (c!542434 lt!1095112))) 0))))

(assert (=> d!887024 (= (isEmpty!20454 (right!28645 (c!542434 lt!1095112))) lt!1095673)))

(declare-fun bs!543172 () Bool)

(assert (= bs!543172 d!887024))

(declare-fun m!3509155 () Bool)

(assert (=> bs!543172 m!3509155))

(assert (=> bs!543172 m!3509155))

(declare-fun m!3509157 () Bool)

(assert (=> bs!543172 m!3509157))

(declare-fun m!3509159 () Bool)

(assert (=> bs!543172 m!3509159))

(assert (=> b!3228489 d!887024))

(declare-fun d!887026 () Bool)

(declare-fun lt!1095676 () Int)

(assert (=> d!887026 (>= lt!1095676 0)))

(declare-fun e!2014150 () Int)

(assert (=> d!887026 (= lt!1095676 e!2014150)))

(declare-fun c!542679 () Bool)

(assert (=> d!887026 (= c!542679 ((_ is Nil!36363) lt!1095591))))

(assert (=> d!887026 (= (size!27433 lt!1095591) lt!1095676)))

(declare-fun b!3229329 () Bool)

(assert (=> b!3229329 (= e!2014150 0)))

(declare-fun b!3229330 () Bool)

(assert (=> b!3229330 (= e!2014150 (+ 1 (size!27433 (t!241332 lt!1095591))))))

(assert (= (and d!887026 c!542679) b!3229329))

(assert (= (and d!887026 (not c!542679)) b!3229330))

(declare-fun m!3509161 () Bool)

(assert (=> b!3229330 m!3509161))

(assert (=> b!3229018 d!887026))

(declare-fun b!3229331 () Bool)

(declare-fun e!2014153 () Bool)

(declare-fun e!2014152 () Bool)

(assert (=> b!3229331 (= e!2014153 e!2014152)))

(declare-fun res!1315072 () Bool)

(assert (=> b!3229331 (= res!1315072 (not ((_ is Cons!36362) rules!2135)))))

(assert (=> b!3229331 (=> res!1315072 e!2014152)))

(declare-fun b!3229332 () Bool)

(declare-fun e!2014151 () Bool)

(assert (=> b!3229332 (= e!2014153 e!2014151)))

(declare-fun res!1315073 () Bool)

(assert (=> b!3229332 (= res!1315073 (rulesUseDisjointChars!282 (h!41782 (t!241331 rules!2135)) (h!41782 rules!2135)))))

(assert (=> b!3229332 (=> (not res!1315073) (not e!2014151))))

(declare-fun b!3229333 () Bool)

(declare-fun call!233223 () Bool)

(assert (=> b!3229333 (= e!2014151 call!233223)))

(declare-fun d!887028 () Bool)

(declare-fun c!542680 () Bool)

(assert (=> d!887028 (= c!542680 (and ((_ is Cons!36362) rules!2135) (not (= (isSeparator!5266 (h!41782 rules!2135)) (isSeparator!5266 (h!41782 (t!241331 rules!2135)))))))))

(assert (=> d!887028 (= (ruleDisjointCharsFromAllFromOtherType!607 (h!41782 (t!241331 rules!2135)) rules!2135) e!2014153)))

(declare-fun bm!233218 () Bool)

(assert (=> bm!233218 (= call!233223 (ruleDisjointCharsFromAllFromOtherType!607 (h!41782 (t!241331 rules!2135)) (t!241331 rules!2135)))))

(declare-fun b!3229334 () Bool)

(assert (=> b!3229334 (= e!2014152 call!233223)))

(assert (= (and d!887028 c!542680) b!3229332))

(assert (= (and d!887028 (not c!542680)) b!3229331))

(assert (= (and b!3229332 res!1315073) b!3229333))

(assert (= (and b!3229331 (not res!1315072)) b!3229334))

(assert (= (or b!3229333 b!3229334) bm!233218))

(declare-fun m!3509163 () Bool)

(assert (=> b!3229332 m!3509163))

(declare-fun m!3509165 () Bool)

(assert (=> bm!233218 m!3509165))

(assert (=> b!3228830 d!887028))

(declare-fun d!887030 () Bool)

(declare-fun lt!1095677 () Int)

(assert (=> d!887030 (>= lt!1095677 0)))

(declare-fun e!2014154 () Int)

(assert (=> d!887030 (= lt!1095677 e!2014154)))

(declare-fun c!542681 () Bool)

(assert (=> d!887030 (= c!542681 ((_ is Nil!36363) (list!12978 (_1!21028 lt!1095184))))))

(assert (=> d!887030 (= (size!27433 (list!12978 (_1!21028 lt!1095184))) lt!1095677)))

(declare-fun b!3229335 () Bool)

(assert (=> b!3229335 (= e!2014154 0)))

(declare-fun b!3229336 () Bool)

(assert (=> b!3229336 (= e!2014154 (+ 1 (size!27433 (t!241332 (list!12978 (_1!21028 lt!1095184))))))))

(assert (= (and d!887030 c!542681) b!3229335))

(assert (= (and d!887030 (not c!542681)) b!3229336))

(declare-fun m!3509167 () Bool)

(assert (=> b!3229336 m!3509167))

(assert (=> d!886804 d!887030))

(declare-fun d!887032 () Bool)

(assert (=> d!887032 (= (list!12978 (_1!21028 lt!1095184)) (list!12980 (c!542434 (_1!21028 lt!1095184))))))

(declare-fun bs!543173 () Bool)

(assert (= bs!543173 d!887032))

(declare-fun m!3509169 () Bool)

(assert (=> bs!543173 m!3509169))

(assert (=> d!886804 d!887032))

(declare-fun d!887034 () Bool)

(declare-fun lt!1095680 () Int)

(assert (=> d!887034 (= lt!1095680 (size!27433 (list!12980 (c!542434 (_1!21028 lt!1095184)))))))

(assert (=> d!887034 (= lt!1095680 (ite ((_ is Empty!10908) (c!542434 (_1!21028 lt!1095184))) 0 (ite ((_ is Leaf!17152) (c!542434 (_1!21028 lt!1095184))) (csize!22047 (c!542434 (_1!21028 lt!1095184))) (csize!22046 (c!542434 (_1!21028 lt!1095184))))))))

(assert (=> d!887034 (= (size!27434 (c!542434 (_1!21028 lt!1095184))) lt!1095680)))

(declare-fun bs!543174 () Bool)

(assert (= bs!543174 d!887034))

(assert (=> bs!543174 m!3509169))

(assert (=> bs!543174 m!3509169))

(declare-fun m!3509171 () Bool)

(assert (=> bs!543174 m!3509171))

(assert (=> d!886804 d!887034))

(declare-fun d!887036 () Bool)

(assert (=> d!887036 (= (inv!49259 (xs!14025 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494)))))) (<= (size!27430 (innerList!10967 (xs!14025 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))))) 2147483647))))

(declare-fun bs!543175 () Bool)

(assert (= bs!543175 d!887036))

(declare-fun m!3509173 () Bool)

(assert (=> bs!543175 m!3509173))

(assert (=> b!3229091 d!887036))

(declare-fun d!887038 () Bool)

(declare-fun res!1315080 () Bool)

(declare-fun e!2014157 () Bool)

(assert (=> d!887038 (=> (not res!1315080) (not e!2014157))))

(assert (=> d!887038 (= res!1315080 (= (csize!22044 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))) (+ (size!27432 (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494)))))) (size!27432 (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494)))))))))))

(assert (=> d!887038 (= (inv!49255 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))) e!2014157)))

(declare-fun b!3229343 () Bool)

(declare-fun res!1315081 () Bool)

(assert (=> b!3229343 (=> (not res!1315081) (not e!2014157))))

(assert (=> b!3229343 (= res!1315081 (and (not (= (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))) Empty!10907)) (not (= (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))) Empty!10907))))))

(declare-fun b!3229344 () Bool)

(declare-fun res!1315082 () Bool)

(assert (=> b!3229344 (=> (not res!1315082) (not e!2014157))))

(assert (=> b!3229344 (= res!1315082 (= (cheight!11118 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))) (+ (max!0 (height!1580 (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494)))))) (height!1580 (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))))) 1)))))

(declare-fun b!3229345 () Bool)

(assert (=> b!3229345 (= e!2014157 (<= 0 (cheight!11118 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494)))))))))

(assert (= (and d!887038 res!1315080) b!3229343))

(assert (= (and b!3229343 res!1315081) b!3229344))

(assert (= (and b!3229344 res!1315082) b!3229345))

(declare-fun m!3509175 () Bool)

(assert (=> d!887038 m!3509175))

(declare-fun m!3509177 () Bool)

(assert (=> d!887038 m!3509177))

(declare-fun m!3509179 () Bool)

(assert (=> b!3229344 m!3509179))

(declare-fun m!3509181 () Bool)

(assert (=> b!3229344 m!3509181))

(assert (=> b!3229344 m!3509179))

(assert (=> b!3229344 m!3509181))

(declare-fun m!3509183 () Bool)

(assert (=> b!3229344 m!3509183))

(assert (=> b!3228707 d!887038))

(declare-fun d!887040 () Bool)

(declare-fun lt!1095681 () Int)

(assert (=> d!887040 (= lt!1095681 (size!27433 (list!12978 (_1!21028 lt!1095335))))))

(assert (=> d!887040 (= lt!1095681 (size!27434 (c!542434 (_1!21028 lt!1095335))))))

(assert (=> d!887040 (= (size!27429 (_1!21028 lt!1095335)) lt!1095681)))

(declare-fun bs!543176 () Bool)

(assert (= bs!543176 d!887040))

(assert (=> bs!543176 m!3508235))

(assert (=> bs!543176 m!3508235))

(declare-fun m!3509185 () Bool)

(assert (=> bs!543176 m!3509185))

(declare-fun m!3509187 () Bool)

(assert (=> bs!543176 m!3509187))

(assert (=> d!886766 d!887040))

(declare-fun b!3229346 () Bool)

(declare-fun e!2014160 () tuple2!35788)

(assert (=> b!3229346 (= e!2014160 (tuple2!35789 (BalanceConc!21431 Empty!10908) (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241))))))

(declare-fun b!3229347 () Bool)

(declare-fun e!2014161 () tuple2!35788)

(declare-fun lt!1095698 () BalanceConc!21428)

(assert (=> b!3229347 (= e!2014161 (tuple2!35789 (BalanceConc!21431 Empty!10908) lt!1095698))))

(declare-fun d!887042 () Bool)

(declare-fun e!2014159 () Bool)

(assert (=> d!887042 e!2014159))

(declare-fun res!1315083 () Bool)

(assert (=> d!887042 (=> (not res!1315083) (not e!2014159))))

(declare-fun lt!1095696 () tuple2!35788)

(assert (=> d!887042 (= res!1315083 (= (list!12978 (_1!21028 lt!1095696)) (list!12978 (_1!21028 (lexRec!694 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241)))))))))

(declare-fun e!2014158 () tuple2!35788)

(assert (=> d!887042 (= lt!1095696 e!2014158)))

(declare-fun c!542683 () Bool)

(declare-fun lt!1095694 () Option!7217)

(assert (=> d!887042 (= c!542683 ((_ is Some!7216) lt!1095694))))

(assert (=> d!887042 (= lt!1095694 (maxPrefixZipperSequenceV2!481 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241)) (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241))))))

(declare-fun lt!1095692 () Unit!50946)

(declare-fun lt!1095709 () Unit!50946)

(assert (=> d!887042 (= lt!1095692 lt!1095709)))

(declare-fun lt!1095689 () List!36485)

(declare-fun lt!1095685 () List!36485)

(assert (=> d!887042 (isSuffix!856 lt!1095689 (++!8756 lt!1095685 lt!1095689))))

(assert (=> d!887042 (= lt!1095709 (lemmaConcatTwoListThenFSndIsSuffix!541 lt!1095685 lt!1095689))))

(assert (=> d!887042 (= lt!1095689 (list!12975 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241))))))

(assert (=> d!887042 (= lt!1095685 (list!12975 (BalanceConc!21429 Empty!10907)))))

(assert (=> d!887042 (= (lexTailRecV2!947 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241)) (BalanceConc!21429 Empty!10907) (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241)) (BalanceConc!21431 Empty!10908)) lt!1095696)))

(declare-fun b!3229348 () Bool)

(assert (=> b!3229348 (= e!2014159 (= (list!12975 (_2!21028 lt!1095696)) (list!12975 (_2!21028 (lexRec!694 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241)))))))))

(declare-fun b!3229349 () Bool)

(assert (=> b!3229349 (= e!2014158 (tuple2!35789 (BalanceConc!21431 Empty!10908) (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241))))))

(declare-fun lt!1095695 () BalanceConc!21428)

(declare-fun b!3229350 () Bool)

(assert (=> b!3229350 (= e!2014158 (lexTailRecV2!947 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241)) lt!1095695 (_2!21033 (v!35826 lt!1095694)) (append!874 (BalanceConc!21431 Empty!10908) (_1!21033 (v!35826 lt!1095694)))))))

(declare-fun lt!1095684 () tuple2!35788)

(assert (=> b!3229350 (= lt!1095684 (lexRec!694 thiss!18206 rules!2135 (_2!21033 (v!35826 lt!1095694))))))

(declare-fun lt!1095707 () List!36485)

(assert (=> b!3229350 (= lt!1095707 (list!12975 (BalanceConc!21429 Empty!10907)))))

(declare-fun lt!1095686 () List!36485)

(assert (=> b!3229350 (= lt!1095686 (list!12975 (charsOf!3282 (_1!21033 (v!35826 lt!1095694)))))))

(declare-fun lt!1095682 () List!36485)

(assert (=> b!3229350 (= lt!1095682 (list!12975 (_2!21033 (v!35826 lt!1095694))))))

(declare-fun lt!1095700 () Unit!50946)

(assert (=> b!3229350 (= lt!1095700 (lemmaConcatAssociativity!1789 lt!1095707 lt!1095686 lt!1095682))))

(assert (=> b!3229350 (= (++!8756 (++!8756 lt!1095707 lt!1095686) lt!1095682) (++!8756 lt!1095707 (++!8756 lt!1095686 lt!1095682)))))

(declare-fun lt!1095708 () Unit!50946)

(assert (=> b!3229350 (= lt!1095708 lt!1095700)))

(declare-fun lt!1095691 () Option!7217)

(assert (=> b!3229350 (= lt!1095691 (maxPrefixZipperSequence!1087 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241))))))

(declare-fun c!542684 () Bool)

(assert (=> b!3229350 (= c!542684 ((_ is Some!7216) lt!1095691))))

(assert (=> b!3229350 (= (lexRec!694 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241))) e!2014160)))

(declare-fun lt!1095704 () Unit!50946)

(declare-fun Unit!50952 () Unit!50946)

(assert (=> b!3229350 (= lt!1095704 Unit!50952)))

(declare-fun lt!1095702 () List!36487)

(assert (=> b!3229350 (= lt!1095702 (list!12978 (BalanceConc!21431 Empty!10908)))))

(declare-fun lt!1095706 () List!36487)

(assert (=> b!3229350 (= lt!1095706 (Cons!36363 (_1!21033 (v!35826 lt!1095694)) Nil!36363))))

(declare-fun lt!1095705 () List!36487)

(assert (=> b!3229350 (= lt!1095705 (list!12978 (_1!21028 lt!1095684)))))

(declare-fun lt!1095699 () Unit!50946)

(assert (=> b!3229350 (= lt!1095699 (lemmaConcatAssociativity!1790 lt!1095702 lt!1095706 lt!1095705))))

(assert (=> b!3229350 (= (++!8760 (++!8760 lt!1095702 lt!1095706) lt!1095705) (++!8760 lt!1095702 (++!8760 lt!1095706 lt!1095705)))))

(declare-fun lt!1095714 () Unit!50946)

(assert (=> b!3229350 (= lt!1095714 lt!1095699)))

(declare-fun lt!1095701 () List!36485)

(assert (=> b!3229350 (= lt!1095701 (++!8756 (list!12975 (BalanceConc!21429 Empty!10907)) (list!12975 (charsOf!3282 (_1!21033 (v!35826 lt!1095694))))))))

(declare-fun lt!1095715 () List!36485)

(assert (=> b!3229350 (= lt!1095715 (list!12975 (_2!21033 (v!35826 lt!1095694))))))

(declare-fun lt!1095697 () List!36487)

(assert (=> b!3229350 (= lt!1095697 (list!12978 (append!874 (BalanceConc!21431 Empty!10908) (_1!21033 (v!35826 lt!1095694)))))))

(declare-fun lt!1095713 () Unit!50946)

(assert (=> b!3229350 (= lt!1095713 (lemmaLexThenLexPrefix!459 thiss!18206 rules!2135 lt!1095701 lt!1095715 lt!1095697 (list!12978 (_1!21028 lt!1095684)) (list!12975 (_2!21028 lt!1095684))))))

(assert (=> b!3229350 (= (lexList!1335 thiss!18206 rules!2135 lt!1095701) (tuple2!35793 lt!1095697 Nil!36361))))

(declare-fun lt!1095687 () Unit!50946)

(assert (=> b!3229350 (= lt!1095687 lt!1095713)))

(assert (=> b!3229350 (= lt!1095698 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (_1!21033 (v!35826 lt!1095694)))))))

(declare-fun lt!1095690 () Option!7217)

(assert (=> b!3229350 (= lt!1095690 (maxPrefixZipperSequence!1087 thiss!18206 rules!2135 lt!1095698))))

(declare-fun c!542682 () Bool)

(assert (=> b!3229350 (= c!542682 ((_ is Some!7216) lt!1095690))))

(assert (=> b!3229350 (= (lexRec!694 thiss!18206 rules!2135 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (_1!21033 (v!35826 lt!1095694))))) e!2014161)))

(declare-fun lt!1095693 () Unit!50946)

(declare-fun Unit!50953 () Unit!50946)

(assert (=> b!3229350 (= lt!1095693 Unit!50953)))

(assert (=> b!3229350 (= lt!1095695 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (_1!21033 (v!35826 lt!1095694)))))))

(declare-fun lt!1095712 () List!36485)

(assert (=> b!3229350 (= lt!1095712 (list!12975 lt!1095695))))

(declare-fun lt!1095703 () List!36485)

(assert (=> b!3229350 (= lt!1095703 (list!12975 (_2!21033 (v!35826 lt!1095694))))))

(declare-fun lt!1095711 () Unit!50946)

(assert (=> b!3229350 (= lt!1095711 (lemmaConcatTwoListThenFSndIsSuffix!541 lt!1095712 lt!1095703))))

(assert (=> b!3229350 (isSuffix!856 lt!1095703 (++!8756 lt!1095712 lt!1095703))))

(declare-fun lt!1095688 () Unit!50946)

(assert (=> b!3229350 (= lt!1095688 lt!1095711)))

(declare-fun b!3229351 () Bool)

(declare-fun lt!1095683 () tuple2!35788)

(assert (=> b!3229351 (= lt!1095683 (lexRec!694 thiss!18206 rules!2135 (_2!21033 (v!35826 lt!1095691))))))

(assert (=> b!3229351 (= e!2014160 (tuple2!35789 (prepend!1182 (_1!21028 lt!1095683) (_1!21033 (v!35826 lt!1095691))) (_2!21028 lt!1095683)))))

(declare-fun lt!1095710 () tuple2!35788)

(declare-fun b!3229352 () Bool)

(assert (=> b!3229352 (= lt!1095710 (lexRec!694 thiss!18206 rules!2135 (_2!21033 (v!35826 lt!1095690))))))

(assert (=> b!3229352 (= e!2014161 (tuple2!35789 (prepend!1182 (_1!21028 lt!1095710) (_1!21033 (v!35826 lt!1095690))) (_2!21028 lt!1095710)))))

(assert (= (and d!887042 c!542683) b!3229350))

(assert (= (and d!887042 (not c!542683)) b!3229349))

(assert (= (and b!3229350 c!542684) b!3229351))

(assert (= (and b!3229350 (not c!542684)) b!3229346))

(assert (= (and b!3229350 c!542682) b!3229352))

(assert (= (and b!3229350 (not c!542682)) b!3229347))

(assert (= (and d!887042 res!1315083) b!3229348))

(declare-fun m!3509195 () Bool)

(assert (=> b!3229348 m!3509195))

(assert (=> b!3229348 m!3507565))

(declare-fun m!3509197 () Bool)

(assert (=> b!3229348 m!3509197))

(declare-fun m!3509199 () Bool)

(assert (=> b!3229348 m!3509199))

(declare-fun m!3509201 () Bool)

(assert (=> b!3229350 m!3509201))

(declare-fun m!3509203 () Bool)

(assert (=> b!3229350 m!3509203))

(declare-fun m!3509205 () Bool)

(assert (=> b!3229350 m!3509205))

(declare-fun m!3509207 () Bool)

(assert (=> b!3229350 m!3509207))

(declare-fun m!3509209 () Bool)

(assert (=> b!3229350 m!3509209))

(declare-fun m!3509211 () Bool)

(assert (=> b!3229350 m!3509211))

(declare-fun m!3509213 () Bool)

(assert (=> b!3229350 m!3509213))

(assert (=> b!3229350 m!3507565))

(assert (=> b!3229350 m!3509197))

(declare-fun m!3509215 () Bool)

(assert (=> b!3229350 m!3509215))

(assert (=> b!3229350 m!3507199))

(declare-fun m!3509217 () Bool)

(assert (=> b!3229350 m!3509217))

(declare-fun m!3509219 () Bool)

(assert (=> b!3229350 m!3509219))

(declare-fun m!3509221 () Bool)

(assert (=> b!3229350 m!3509221))

(declare-fun m!3509223 () Bool)

(assert (=> b!3229350 m!3509223))

(assert (=> b!3229350 m!3507565))

(assert (=> b!3229350 m!3509223))

(declare-fun m!3509225 () Bool)

(assert (=> b!3229350 m!3509225))

(declare-fun m!3509227 () Bool)

(assert (=> b!3229350 m!3509227))

(declare-fun m!3509229 () Bool)

(assert (=> b!3229350 m!3509229))

(assert (=> b!3229350 m!3509211))

(declare-fun m!3509231 () Bool)

(assert (=> b!3229350 m!3509231))

(declare-fun m!3509233 () Bool)

(assert (=> b!3229350 m!3509233))

(assert (=> b!3229350 m!3509207))

(assert (=> b!3229350 m!3509223))

(declare-fun m!3509235 () Bool)

(assert (=> b!3229350 m!3509235))

(assert (=> b!3229350 m!3509219))

(declare-fun m!3509237 () Bool)

(assert (=> b!3229350 m!3509237))

(declare-fun m!3509239 () Bool)

(assert (=> b!3229350 m!3509239))

(assert (=> b!3229350 m!3509211))

(assert (=> b!3229350 m!3507199))

(assert (=> b!3229350 m!3509231))

(declare-fun m!3509241 () Bool)

(assert (=> b!3229350 m!3509241))

(assert (=> b!3229350 m!3508575))

(assert (=> b!3229350 m!3509233))

(declare-fun m!3509243 () Bool)

(assert (=> b!3229350 m!3509243))

(declare-fun m!3509245 () Bool)

(assert (=> b!3229350 m!3509245))

(assert (=> b!3229350 m!3509213))

(declare-fun m!3509247 () Bool)

(assert (=> b!3229350 m!3509247))

(declare-fun m!3509249 () Bool)

(assert (=> b!3229350 m!3509249))

(assert (=> b!3229350 m!3507565))

(declare-fun m!3509251 () Bool)

(assert (=> b!3229350 m!3509251))

(assert (=> b!3229350 m!3509245))

(declare-fun m!3509253 () Bool)

(assert (=> b!3229350 m!3509253))

(declare-fun m!3509255 () Bool)

(assert (=> b!3229350 m!3509255))

(assert (=> b!3229350 m!3509255))

(declare-fun m!3509257 () Bool)

(assert (=> b!3229350 m!3509257))

(declare-fun m!3509259 () Bool)

(assert (=> b!3229350 m!3509259))

(assert (=> b!3229350 m!3509217))

(assert (=> b!3229350 m!3509237))

(declare-fun m!3509261 () Bool)

(assert (=> b!3229352 m!3509261))

(declare-fun m!3509263 () Bool)

(assert (=> b!3229352 m!3509263))

(assert (=> d!887042 m!3507565))

(assert (=> d!887042 m!3507565))

(declare-fun m!3509265 () Bool)

(assert (=> d!887042 m!3509265))

(assert (=> d!887042 m!3507565))

(assert (=> d!887042 m!3509197))

(declare-fun m!3509267 () Bool)

(assert (=> d!887042 m!3509267))

(declare-fun m!3509269 () Bool)

(assert (=> d!887042 m!3509269))

(declare-fun m!3509271 () Bool)

(assert (=> d!887042 m!3509271))

(assert (=> d!887042 m!3509267))

(declare-fun m!3509273 () Bool)

(assert (=> d!887042 m!3509273))

(assert (=> d!887042 m!3507565))

(assert (=> d!887042 m!3508231))

(assert (=> d!887042 m!3507199))

(declare-fun m!3509275 () Bool)

(assert (=> d!887042 m!3509275))

(declare-fun m!3509277 () Bool)

(assert (=> b!3229351 m!3509277))

(declare-fun m!3509279 () Bool)

(assert (=> b!3229351 m!3509279))

(assert (=> d!886766 d!887042))

(declare-fun d!887050 () Bool)

(declare-fun res!1315084 () Bool)

(declare-fun e!2014163 () Bool)

(assert (=> d!887050 (=> res!1315084 e!2014163)))

(assert (=> d!887050 (= res!1315084 ((_ is Nil!36362) (t!241331 rules!2135)))))

(assert (=> d!887050 (= (noDuplicateTag!1927 thiss!18206 (t!241331 rules!2135) (Cons!36365 (tag!5798 (h!41782 rules!2135)) Nil!36365)) e!2014163)))

(declare-fun b!3229355 () Bool)

(declare-fun e!2014164 () Bool)

(assert (=> b!3229355 (= e!2014163 e!2014164)))

(declare-fun res!1315085 () Bool)

(assert (=> b!3229355 (=> (not res!1315085) (not e!2014164))))

(assert (=> b!3229355 (= res!1315085 (not (contains!6528 (Cons!36365 (tag!5798 (h!41782 rules!2135)) Nil!36365) (tag!5798 (h!41782 (t!241331 rules!2135))))))))

(declare-fun b!3229356 () Bool)

(assert (=> b!3229356 (= e!2014164 (noDuplicateTag!1927 thiss!18206 (t!241331 (t!241331 rules!2135)) (Cons!36365 (tag!5798 (h!41782 (t!241331 rules!2135))) (Cons!36365 (tag!5798 (h!41782 rules!2135)) Nil!36365))))))

(assert (= (and d!887050 (not res!1315084)) b!3229355))

(assert (= (and b!3229355 res!1315085) b!3229356))

(declare-fun m!3509281 () Bool)

(assert (=> b!3229355 m!3509281))

(declare-fun m!3509283 () Bool)

(assert (=> b!3229356 m!3509283))

(assert (=> b!3228534 d!887050))

(declare-fun d!887052 () Bool)

(assert (=> d!887052 (= (isEmpty!20453 (list!12980 (c!542434 (_1!21028 (lex!2183 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073)))))) ((_ is Nil!36363) (list!12980 (c!542434 (_1!21028 (lex!2183 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073)))))))))

(assert (=> d!886786 d!887052))

(declare-fun b!3229371 () Bool)

(declare-fun e!2014171 () List!36487)

(assert (=> b!3229371 (= e!2014171 Nil!36363)))

(declare-fun b!3229374 () Bool)

(declare-fun e!2014172 () List!36487)

(assert (=> b!3229374 (= e!2014172 (++!8760 (list!12980 (left!28315 (c!542434 (_1!21028 (lex!2183 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073)))))) (list!12980 (right!28645 (c!542434 (_1!21028 (lex!2183 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073))))))))))

(declare-fun b!3229373 () Bool)

(declare-fun list!12985 (IArray!21821) List!36487)

(assert (=> b!3229373 (= e!2014172 (list!12985 (xs!14026 (c!542434 (_1!21028 (lex!2183 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073)))))))))

(declare-fun b!3229372 () Bool)

(assert (=> b!3229372 (= e!2014171 e!2014172)))

(declare-fun c!542691 () Bool)

(assert (=> b!3229372 (= c!542691 ((_ is Leaf!17152) (c!542434 (_1!21028 (lex!2183 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073))))))))

(declare-fun d!887054 () Bool)

(declare-fun c!542690 () Bool)

(assert (=> d!887054 (= c!542690 ((_ is Empty!10908) (c!542434 (_1!21028 (lex!2183 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073))))))))

(assert (=> d!887054 (= (list!12980 (c!542434 (_1!21028 (lex!2183 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073))))) e!2014171)))

(assert (= (and d!887054 c!542690) b!3229371))

(assert (= (and d!887054 (not c!542690)) b!3229372))

(assert (= (and b!3229372 c!542691) b!3229373))

(assert (= (and b!3229372 (not c!542691)) b!3229374))

(declare-fun m!3509285 () Bool)

(assert (=> b!3229374 m!3509285))

(declare-fun m!3509287 () Bool)

(assert (=> b!3229374 m!3509287))

(assert (=> b!3229374 m!3509285))

(assert (=> b!3229374 m!3509287))

(declare-fun m!3509289 () Bool)

(assert (=> b!3229374 m!3509289))

(declare-fun m!3509291 () Bool)

(assert (=> b!3229373 m!3509291))

(assert (=> d!886786 d!887054))

(declare-fun lt!1095716 () Int)

(declare-fun d!887056 () Bool)

(assert (=> d!887056 (= lt!1095716 (size!27433 (list!12980 (c!542434 (_1!21028 (lex!2183 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073)))))))))

(assert (=> d!887056 (= lt!1095716 (ite ((_ is Empty!10908) (c!542434 (_1!21028 (lex!2183 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073))))) 0 (ite ((_ is Leaf!17152) (c!542434 (_1!21028 (lex!2183 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073))))) (csize!22047 (c!542434 (_1!21028 (lex!2183 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073))))) (csize!22046 (c!542434 (_1!21028 (lex!2183 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073))))))))))

(assert (=> d!887056 (= (size!27434 (c!542434 (_1!21028 (lex!2183 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073))))) lt!1095716)))

(declare-fun bs!543178 () Bool)

(assert (= bs!543178 d!887056))

(assert (=> bs!543178 m!3508269))

(assert (=> bs!543178 m!3508269))

(declare-fun m!3509293 () Bool)

(assert (=> bs!543178 m!3509293))

(assert (=> d!886786 d!887056))

(declare-fun d!887058 () Bool)

(assert (=> d!887058 (= (list!12978 lt!1095337) (list!12980 (c!542434 lt!1095337)))))

(declare-fun bs!543179 () Bool)

(assert (= bs!543179 d!887058))

(declare-fun m!3509295 () Bool)

(assert (=> bs!543179 m!3509295))

(assert (=> d!886770 d!887058))

(declare-fun d!887060 () Bool)

(declare-fun e!2014173 () Bool)

(assert (=> d!887060 e!2014173))

(declare-fun res!1315092 () Bool)

(assert (=> d!887060 (=> (not res!1315092) (not e!2014173))))

(declare-fun lt!1095717 () BalanceConc!21430)

(assert (=> d!887060 (= res!1315092 (= (list!12978 lt!1095717) (Cons!36363 separatorToken!241 Nil!36363)))))

(assert (=> d!887060 (= lt!1095717 (choose!18829 separatorToken!241))))

(assert (=> d!887060 (= (singleton!1009 separatorToken!241) lt!1095717)))

(declare-fun b!3229375 () Bool)

(assert (=> b!3229375 (= e!2014173 (isBalanced!3244 (c!542434 lt!1095717)))))

(assert (= (and d!887060 res!1315092) b!3229375))

(declare-fun m!3509297 () Bool)

(assert (=> d!887060 m!3509297))

(declare-fun m!3509299 () Bool)

(assert (=> d!887060 m!3509299))

(declare-fun m!3509301 () Bool)

(assert (=> b!3229375 m!3509301))

(assert (=> d!886770 d!887060))

(declare-fun b!3229452 () Bool)

(declare-fun e!2014221 () tuple2!35788)

(declare-fun lt!1095738 () tuple2!35788)

(declare-fun lt!1095739 () Option!7217)

(assert (=> b!3229452 (= e!2014221 (tuple2!35789 (prepend!1182 (_1!21028 lt!1095738) (_1!21033 (v!35826 lt!1095739))) (_2!21028 lt!1095738)))))

(assert (=> b!3229452 (= lt!1095738 (lexRec!694 thiss!18206 rules!2135 (_2!21033 (v!35826 lt!1095739))))))

(declare-fun b!3229453 () Bool)

(declare-fun e!2014219 () Bool)

(declare-fun lt!1095737 () tuple2!35788)

(assert (=> b!3229453 (= e!2014219 (= (list!12975 (_2!21028 lt!1095737)) (list!12975 (_2!21033 (v!35826 lt!1095481)))))))

(declare-fun d!887062 () Bool)

(declare-fun e!2014218 () Bool)

(assert (=> d!887062 e!2014218))

(declare-fun res!1315132 () Bool)

(assert (=> d!887062 (=> (not res!1315132) (not e!2014218))))

(assert (=> d!887062 (= res!1315132 e!2014219)))

(declare-fun c!542712 () Bool)

(assert (=> d!887062 (= c!542712 (> (size!27429 (_1!21028 lt!1095737)) 0))))

(assert (=> d!887062 (= lt!1095737 e!2014221)))

(declare-fun c!542711 () Bool)

(assert (=> d!887062 (= c!542711 ((_ is Some!7216) lt!1095739))))

(assert (=> d!887062 (= lt!1095739 (maxPrefixZipperSequence!1087 thiss!18206 rules!2135 (_2!21033 (v!35826 lt!1095481))))))

(assert (=> d!887062 (= (lexRec!694 thiss!18206 rules!2135 (_2!21033 (v!35826 lt!1095481))) lt!1095737)))

(declare-fun b!3229454 () Bool)

(assert (=> b!3229454 (= e!2014218 (= (list!12975 (_2!21028 lt!1095737)) (_2!21030 (lexList!1335 thiss!18206 rules!2135 (list!12975 (_2!21033 (v!35826 lt!1095481)))))))))

(declare-fun b!3229455 () Bool)

(declare-fun res!1315131 () Bool)

(assert (=> b!3229455 (=> (not res!1315131) (not e!2014218))))

(assert (=> b!3229455 (= res!1315131 (= (list!12978 (_1!21028 lt!1095737)) (_1!21030 (lexList!1335 thiss!18206 rules!2135 (list!12975 (_2!21033 (v!35826 lt!1095481)))))))))

(declare-fun b!3229456 () Bool)

(declare-fun e!2014220 () Bool)

(assert (=> b!3229456 (= e!2014220 (not (isEmpty!20446 (_1!21028 lt!1095737))))))

(declare-fun b!3229457 () Bool)

(assert (=> b!3229457 (= e!2014219 e!2014220)))

(declare-fun res!1315133 () Bool)

(assert (=> b!3229457 (= res!1315133 (< (size!27431 (_2!21028 lt!1095737)) (size!27431 (_2!21033 (v!35826 lt!1095481)))))))

(assert (=> b!3229457 (=> (not res!1315133) (not e!2014220))))

(declare-fun b!3229458 () Bool)

(assert (=> b!3229458 (= e!2014221 (tuple2!35789 (BalanceConc!21431 Empty!10908) (_2!21033 (v!35826 lt!1095481))))))

(assert (= (and d!887062 c!542711) b!3229452))

(assert (= (and d!887062 (not c!542711)) b!3229458))

(assert (= (and d!887062 c!542712) b!3229457))

(assert (= (and d!887062 (not c!542712)) b!3229453))

(assert (= (and b!3229457 res!1315133) b!3229456))

(assert (= (and d!887062 res!1315132) b!3229455))

(assert (= (and b!3229455 res!1315131) b!3229454))

(declare-fun m!3509409 () Bool)

(assert (=> b!3229452 m!3509409))

(declare-fun m!3509411 () Bool)

(assert (=> b!3229452 m!3509411))

(declare-fun m!3509413 () Bool)

(assert (=> b!3229453 m!3509413))

(declare-fun m!3509415 () Bool)

(assert (=> b!3229453 m!3509415))

(declare-fun m!3509417 () Bool)

(assert (=> b!3229456 m!3509417))

(assert (=> b!3229454 m!3509413))

(assert (=> b!3229454 m!3509415))

(assert (=> b!3229454 m!3509415))

(declare-fun m!3509419 () Bool)

(assert (=> b!3229454 m!3509419))

(declare-fun m!3509421 () Bool)

(assert (=> d!887062 m!3509421))

(declare-fun m!3509423 () Bool)

(assert (=> d!887062 m!3509423))

(declare-fun m!3509425 () Bool)

(assert (=> b!3229455 m!3509425))

(assert (=> b!3229455 m!3509415))

(assert (=> b!3229455 m!3509415))

(assert (=> b!3229455 m!3509419))

(declare-fun m!3509427 () Bool)

(assert (=> b!3229457 m!3509427))

(declare-fun m!3509429 () Bool)

(assert (=> b!3229457 m!3509429))

(assert (=> b!3228927 d!887062))

(declare-fun d!887100 () Bool)

(declare-fun e!2014232 () Bool)

(assert (=> d!887100 e!2014232))

(declare-fun res!1315138 () Bool)

(assert (=> d!887100 (=> (not res!1315138) (not e!2014232))))

(declare-fun prepend!1184 (Conc!10908 Token!9898) Conc!10908)

(assert (=> d!887100 (= res!1315138 (isBalanced!3244 (prepend!1184 (c!542434 (_1!21028 lt!1095501)) (_1!21033 (v!35826 lt!1095481)))))))

(declare-fun lt!1095746 () BalanceConc!21430)

(assert (=> d!887100 (= lt!1095746 (BalanceConc!21431 (prepend!1184 (c!542434 (_1!21028 lt!1095501)) (_1!21033 (v!35826 lt!1095481)))))))

(assert (=> d!887100 (= (prepend!1182 (_1!21028 lt!1095501) (_1!21033 (v!35826 lt!1095481))) lt!1095746)))

(declare-fun b!3229475 () Bool)

(assert (=> b!3229475 (= e!2014232 (= (list!12978 lt!1095746) (Cons!36363 (_1!21033 (v!35826 lt!1095481)) (list!12978 (_1!21028 lt!1095501)))))))

(assert (= (and d!887100 res!1315138) b!3229475))

(declare-fun m!3509431 () Bool)

(assert (=> d!887100 m!3509431))

(assert (=> d!887100 m!3509431))

(declare-fun m!3509433 () Bool)

(assert (=> d!887100 m!3509433))

(declare-fun m!3509435 () Bool)

(assert (=> b!3229475 m!3509435))

(declare-fun m!3509437 () Bool)

(assert (=> b!3229475 m!3509437))

(assert (=> b!3228927 d!887100))

(declare-fun d!887102 () Bool)

(declare-fun lt!1095747 () Int)

(assert (=> d!887102 (>= lt!1095747 0)))

(declare-fun e!2014233 () Int)

(assert (=> d!887102 (= lt!1095747 e!2014233)))

(declare-fun c!542720 () Bool)

(assert (=> d!887102 (= c!542720 ((_ is Nil!36363) lt!1095516))))

(assert (=> d!887102 (= (size!27433 lt!1095516) lt!1095747)))

(declare-fun b!3229476 () Bool)

(assert (=> b!3229476 (= e!2014233 0)))

(declare-fun b!3229477 () Bool)

(assert (=> b!3229477 (= e!2014233 (+ 1 (size!27433 (t!241332 lt!1095516))))))

(assert (= (and d!887102 c!542720) b!3229476))

(assert (= (and d!887102 (not c!542720)) b!3229477))

(declare-fun m!3509439 () Bool)

(assert (=> b!3229477 m!3509439))

(assert (=> b!3228968 d!887102))

(declare-fun b!3229488 () Bool)

(declare-fun e!2014239 () List!36485)

(assert (=> b!3229488 (= e!2014239 (++!8756 (list!12979 (left!28314 (c!542433 (BalanceConc!21429 Empty!10907)))) (list!12979 (right!28644 (c!542433 (BalanceConc!21429 Empty!10907))))))))

(declare-fun b!3229487 () Bool)

(assert (=> b!3229487 (= e!2014239 (list!12981 (xs!14025 (c!542433 (BalanceConc!21429 Empty!10907)))))))

(declare-fun b!3229486 () Bool)

(declare-fun e!2014238 () List!36485)

(assert (=> b!3229486 (= e!2014238 e!2014239)))

(declare-fun c!542725 () Bool)

(assert (=> b!3229486 (= c!542725 ((_ is Leaf!17151) (c!542433 (BalanceConc!21429 Empty!10907))))))

(declare-fun d!887104 () Bool)

(declare-fun c!542724 () Bool)

(assert (=> d!887104 (= c!542724 ((_ is Empty!10907) (c!542433 (BalanceConc!21429 Empty!10907))))))

(assert (=> d!887104 (= (list!12979 (c!542433 (BalanceConc!21429 Empty!10907))) e!2014238)))

(declare-fun b!3229485 () Bool)

(assert (=> b!3229485 (= e!2014238 Nil!36361)))

(assert (= (and d!887104 c!542724) b!3229485))

(assert (= (and d!887104 (not c!542724)) b!3229486))

(assert (= (and b!3229486 c!542725) b!3229487))

(assert (= (and b!3229486 (not c!542725)) b!3229488))

(declare-fun m!3509441 () Bool)

(assert (=> b!3229488 m!3509441))

(declare-fun m!3509443 () Bool)

(assert (=> b!3229488 m!3509443))

(assert (=> b!3229488 m!3509441))

(assert (=> b!3229488 m!3509443))

(declare-fun m!3509445 () Bool)

(assert (=> b!3229488 m!3509445))

(declare-fun m!3509447 () Bool)

(assert (=> b!3229487 m!3509447))

(assert (=> d!886700 d!887104))

(declare-fun d!887106 () Bool)

(assert (=> d!887106 (= (isEmpty!20453 (list!12978 (_1!21028 lt!1095143))) ((_ is Nil!36363) (list!12978 (_1!21028 lt!1095143))))))

(assert (=> d!886802 d!887106))

(assert (=> d!886802 d!886800))

(declare-fun d!887108 () Bool)

(declare-fun lt!1095750 () Bool)

(assert (=> d!887108 (= lt!1095750 (isEmpty!20453 (list!12980 (c!542434 (_1!21028 lt!1095143)))))))

(assert (=> d!887108 (= lt!1095750 (= (size!27434 (c!542434 (_1!21028 lt!1095143))) 0))))

(assert (=> d!887108 (= (isEmpty!20454 (c!542434 (_1!21028 lt!1095143))) lt!1095750)))

(declare-fun bs!543182 () Bool)

(assert (= bs!543182 d!887108))

(assert (=> bs!543182 m!3508301))

(assert (=> bs!543182 m!3508301))

(declare-fun m!3509449 () Bool)

(assert (=> bs!543182 m!3509449))

(assert (=> bs!543182 m!3508317))

(assert (=> d!886802 d!887108))

(declare-fun d!887110 () Bool)

(assert (=> d!887110 (= (list!12975 (_2!21028 lt!1095335)) (list!12979 (c!542433 (_2!21028 lt!1095335))))))

(declare-fun bs!543183 () Bool)

(assert (= bs!543183 d!887110))

(declare-fun m!3509453 () Bool)

(assert (=> bs!543183 m!3509453))

(assert (=> b!3228800 d!887110))

(declare-fun b!3229489 () Bool)

(declare-fun e!2014241 () tuple2!35792)

(assert (=> b!3229489 (= e!2014241 (tuple2!35793 Nil!36363 (list!12975 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241)))))))

(declare-fun b!3229490 () Bool)

(declare-fun e!2014242 () Bool)

(declare-fun lt!1095753 () tuple2!35792)

(assert (=> b!3229490 (= e!2014242 (not (isEmpty!20453 (_1!21030 lt!1095753))))))

(declare-fun d!887112 () Bool)

(declare-fun e!2014240 () Bool)

(assert (=> d!887112 e!2014240))

(declare-fun c!542726 () Bool)

(assert (=> d!887112 (= c!542726 (> (size!27433 (_1!21030 lt!1095753)) 0))))

(assert (=> d!887112 (= lt!1095753 e!2014241)))

(declare-fun c!542727 () Bool)

(declare-fun lt!1095752 () Option!7215)

(assert (=> d!887112 (= c!542727 ((_ is Some!7214) lt!1095752))))

(assert (=> d!887112 (= lt!1095752 (maxPrefix!2486 thiss!18206 rules!2135 (list!12975 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241)))))))

(assert (=> d!887112 (= (lexList!1335 thiss!18206 rules!2135 (list!12975 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241)))) lt!1095753)))

(declare-fun b!3229491 () Bool)

(declare-fun lt!1095751 () tuple2!35792)

(assert (=> b!3229491 (= e!2014241 (tuple2!35793 (Cons!36363 (_1!21031 (v!35824 lt!1095752)) (_1!21030 lt!1095751)) (_2!21030 lt!1095751)))))

(assert (=> b!3229491 (= lt!1095751 (lexList!1335 thiss!18206 rules!2135 (_2!21031 (v!35824 lt!1095752))))))

(declare-fun b!3229492 () Bool)

(assert (=> b!3229492 (= e!2014240 (= (_2!21030 lt!1095753) (list!12975 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241)))))))

(declare-fun b!3229493 () Bool)

(assert (=> b!3229493 (= e!2014240 e!2014242)))

(declare-fun res!1315140 () Bool)

(assert (=> b!3229493 (= res!1315140 (< (size!27430 (_2!21030 lt!1095753)) (size!27430 (list!12975 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241))))))))

(assert (=> b!3229493 (=> (not res!1315140) (not e!2014242))))

(assert (= (and d!887112 c!542727) b!3229491))

(assert (= (and d!887112 (not c!542727)) b!3229489))

(assert (= (and d!887112 c!542726) b!3229493))

(assert (= (and d!887112 (not c!542726)) b!3229492))

(assert (= (and b!3229493 res!1315140) b!3229490))

(declare-fun m!3509467 () Bool)

(assert (=> b!3229490 m!3509467))

(declare-fun m!3509469 () Bool)

(assert (=> d!887112 m!3509469))

(assert (=> d!887112 m!3508231))

(declare-fun m!3509471 () Bool)

(assert (=> d!887112 m!3509471))

(declare-fun m!3509473 () Bool)

(assert (=> b!3229491 m!3509473))

(declare-fun m!3509475 () Bool)

(assert (=> b!3229493 m!3509475))

(assert (=> b!3229493 m!3508231))

(declare-fun m!3509477 () Bool)

(assert (=> b!3229493 m!3509477))

(assert (=> b!3228800 d!887112))

(declare-fun d!887116 () Bool)

(assert (=> d!887116 (= (list!12975 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241))) (list!12979 (c!542433 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241)))))))

(declare-fun bs!543184 () Bool)

(assert (= bs!543184 d!887116))

(declare-fun m!3509479 () Bool)

(assert (=> bs!543184 m!3509479))

(assert (=> b!3228800 d!887116))

(declare-fun d!887118 () Bool)

(assert (=> d!887118 (= (list!12981 (xs!14025 (c!542433 (printWithSeparatorToken!72 thiss!18206 lt!1095068 separatorToken!241)))) (innerList!10967 (xs!14025 (c!542433 (printWithSeparatorToken!72 thiss!18206 lt!1095068 separatorToken!241)))))))

(assert (=> b!3228568 d!887118))

(declare-fun b!3229501 () Bool)

(declare-fun e!2014246 () List!36485)

(assert (=> b!3229501 (= e!2014246 (++!8756 (list!12979 (left!28314 (c!542433 (seqFromList!3595 lt!1095073)))) (list!12979 (right!28644 (c!542433 (seqFromList!3595 lt!1095073))))))))

(declare-fun b!3229500 () Bool)

(assert (=> b!3229500 (= e!2014246 (list!12981 (xs!14025 (c!542433 (seqFromList!3595 lt!1095073)))))))

(declare-fun b!3229499 () Bool)

(declare-fun e!2014245 () List!36485)

(assert (=> b!3229499 (= e!2014245 e!2014246)))

(declare-fun c!542731 () Bool)

(assert (=> b!3229499 (= c!542731 ((_ is Leaf!17151) (c!542433 (seqFromList!3595 lt!1095073))))))

(declare-fun d!887120 () Bool)

(declare-fun c!542730 () Bool)

(assert (=> d!887120 (= c!542730 ((_ is Empty!10907) (c!542433 (seqFromList!3595 lt!1095073))))))

(assert (=> d!887120 (= (list!12979 (c!542433 (seqFromList!3595 lt!1095073))) e!2014245)))

(declare-fun b!3229498 () Bool)

(assert (=> b!3229498 (= e!2014245 Nil!36361)))

(assert (= (and d!887120 c!542730) b!3229498))

(assert (= (and d!887120 (not c!542730)) b!3229499))

(assert (= (and b!3229499 c!542731) b!3229500))

(assert (= (and b!3229499 (not c!542731)) b!3229501))

(declare-fun m!3509487 () Bool)

(assert (=> b!3229501 m!3509487))

(declare-fun m!3509489 () Bool)

(assert (=> b!3229501 m!3509489))

(assert (=> b!3229501 m!3509487))

(assert (=> b!3229501 m!3509489))

(declare-fun m!3509491 () Bool)

(assert (=> b!3229501 m!3509491))

(declare-fun m!3509493 () Bool)

(assert (=> b!3229500 m!3509493))

(assert (=> d!886776 d!887120))

(declare-fun b!3229504 () Bool)

(declare-fun e!2014249 () List!36485)

(assert (=> b!3229504 (= e!2014249 (++!8756 lt!1095297 lt!1095295))))

(declare-fun b!3229505 () Bool)

(assert (=> b!3229505 (= e!2014249 (Cons!36361 (h!41781 (list!12975 (BalanceConc!21429 Empty!10907))) (++!8756 (t!241330 (list!12975 (BalanceConc!21429 Empty!10907))) (++!8756 lt!1095297 lt!1095295))))))

(declare-fun e!2014248 () Bool)

(declare-fun b!3229507 () Bool)

(declare-fun lt!1095754 () List!36485)

(assert (=> b!3229507 (= e!2014248 (or (not (= (++!8756 lt!1095297 lt!1095295) Nil!36361)) (= lt!1095754 (list!12975 (BalanceConc!21429 Empty!10907)))))))

(declare-fun b!3229506 () Bool)

(declare-fun res!1315141 () Bool)

(assert (=> b!3229506 (=> (not res!1315141) (not e!2014248))))

(assert (=> b!3229506 (= res!1315141 (= (size!27430 lt!1095754) (+ (size!27430 (list!12975 (BalanceConc!21429 Empty!10907))) (size!27430 (++!8756 lt!1095297 lt!1095295)))))))

(declare-fun d!887124 () Bool)

(assert (=> d!887124 e!2014248))

(declare-fun res!1315142 () Bool)

(assert (=> d!887124 (=> (not res!1315142) (not e!2014248))))

(assert (=> d!887124 (= res!1315142 (= (content!4918 lt!1095754) ((_ map or) (content!4918 (list!12975 (BalanceConc!21429 Empty!10907))) (content!4918 (++!8756 lt!1095297 lt!1095295)))))))

(assert (=> d!887124 (= lt!1095754 e!2014249)))

(declare-fun c!542733 () Bool)

(assert (=> d!887124 (= c!542733 ((_ is Nil!36361) (list!12975 (BalanceConc!21429 Empty!10907))))))

(assert (=> d!887124 (= (++!8756 (list!12975 (BalanceConc!21429 Empty!10907)) (++!8756 lt!1095297 lt!1095295)) lt!1095754)))

(assert (= (and d!887124 c!542733) b!3229504))

(assert (= (and d!887124 (not c!542733)) b!3229505))

(assert (= (and d!887124 res!1315142) b!3229506))

(assert (= (and b!3229506 res!1315141) b!3229507))

(assert (=> b!3229505 m!3508091))

(declare-fun m!3509499 () Bool)

(assert (=> b!3229505 m!3509499))

(declare-fun m!3509501 () Bool)

(assert (=> b!3229506 m!3509501))

(assert (=> b!3229506 m!3507199))

(declare-fun m!3509503 () Bool)

(assert (=> b!3229506 m!3509503))

(assert (=> b!3229506 m!3508091))

(declare-fun m!3509505 () Bool)

(assert (=> b!3229506 m!3509505))

(declare-fun m!3509507 () Bool)

(assert (=> d!887124 m!3509507))

(assert (=> d!887124 m!3507199))

(declare-fun m!3509509 () Bool)

(assert (=> d!887124 m!3509509))

(assert (=> d!887124 m!3508091))

(declare-fun m!3509511 () Bool)

(assert (=> d!887124 m!3509511))

(assert (=> b!3228760 d!887124))

(declare-fun b!3229508 () Bool)

(declare-fun e!2014251 () List!36485)

(assert (=> b!3229508 (= e!2014251 (list!12975 (charsOf!3282 (h!41783 (dropList!1093 lt!1095069 0)))))))

(declare-fun b!3229509 () Bool)

(assert (=> b!3229509 (= e!2014251 (Cons!36361 (h!41781 (list!12975 (BalanceConc!21429 Empty!10907))) (++!8756 (t!241330 (list!12975 (BalanceConc!21429 Empty!10907))) (list!12975 (charsOf!3282 (h!41783 (dropList!1093 lt!1095069 0)))))))))

(declare-fun b!3229511 () Bool)

(declare-fun e!2014250 () Bool)

(declare-fun lt!1095755 () List!36485)

(assert (=> b!3229511 (= e!2014250 (or (not (= (list!12975 (charsOf!3282 (h!41783 (dropList!1093 lt!1095069 0)))) Nil!36361)) (= lt!1095755 (list!12975 (BalanceConc!21429 Empty!10907)))))))

(declare-fun b!3229510 () Bool)

(declare-fun res!1315143 () Bool)

(assert (=> b!3229510 (=> (not res!1315143) (not e!2014250))))

(assert (=> b!3229510 (= res!1315143 (= (size!27430 lt!1095755) (+ (size!27430 (list!12975 (BalanceConc!21429 Empty!10907))) (size!27430 (list!12975 (charsOf!3282 (h!41783 (dropList!1093 lt!1095069 0))))))))))

(declare-fun d!887128 () Bool)

(assert (=> d!887128 e!2014250))

(declare-fun res!1315144 () Bool)

(assert (=> d!887128 (=> (not res!1315144) (not e!2014250))))

(assert (=> d!887128 (= res!1315144 (= (content!4918 lt!1095755) ((_ map or) (content!4918 (list!12975 (BalanceConc!21429 Empty!10907))) (content!4918 (list!12975 (charsOf!3282 (h!41783 (dropList!1093 lt!1095069 0))))))))))

(assert (=> d!887128 (= lt!1095755 e!2014251)))

(declare-fun c!542734 () Bool)

(assert (=> d!887128 (= c!542734 ((_ is Nil!36361) (list!12975 (BalanceConc!21429 Empty!10907))))))

(assert (=> d!887128 (= (++!8756 (list!12975 (BalanceConc!21429 Empty!10907)) (list!12975 (charsOf!3282 (h!41783 (dropList!1093 lt!1095069 0))))) lt!1095755)))

(assert (= (and d!887128 c!542734) b!3229508))

(assert (= (and d!887128 (not c!542734)) b!3229509))

(assert (= (and d!887128 res!1315144) b!3229510))

(assert (= (and b!3229510 res!1315143) b!3229511))

(assert (=> b!3229509 m!3508089))

(declare-fun m!3509513 () Bool)

(assert (=> b!3229509 m!3509513))

(declare-fun m!3509515 () Bool)

(assert (=> b!3229510 m!3509515))

(assert (=> b!3229510 m!3507199))

(assert (=> b!3229510 m!3509503))

(assert (=> b!3229510 m!3508089))

(declare-fun m!3509517 () Bool)

(assert (=> b!3229510 m!3509517))

(declare-fun m!3509519 () Bool)

(assert (=> d!887128 m!3509519))

(assert (=> d!887128 m!3507199))

(assert (=> d!887128 m!3509509))

(assert (=> d!887128 m!3508089))

(declare-fun m!3509521 () Bool)

(assert (=> d!887128 m!3509521))

(assert (=> b!3228760 d!887128))

(declare-fun d!887130 () Bool)

(declare-fun c!542735 () Bool)

(assert (=> d!887130 (= c!542735 ((_ is Cons!36363) (t!241332 (dropList!1093 lt!1095069 0))))))

(declare-fun e!2014252 () List!36485)

(assert (=> d!887130 (= (printList!1405 thiss!18206 (t!241332 (dropList!1093 lt!1095069 0))) e!2014252)))

(declare-fun b!3229512 () Bool)

(assert (=> b!3229512 (= e!2014252 (++!8756 (list!12975 (charsOf!3282 (h!41783 (t!241332 (dropList!1093 lt!1095069 0))))) (printList!1405 thiss!18206 (t!241332 (t!241332 (dropList!1093 lt!1095069 0))))))))

(declare-fun b!3229513 () Bool)

(assert (=> b!3229513 (= e!2014252 Nil!36361)))

(assert (= (and d!887130 c!542735) b!3229512))

(assert (= (and d!887130 (not c!542735)) b!3229513))

(declare-fun m!3509523 () Bool)

(assert (=> b!3229512 m!3509523))

(assert (=> b!3229512 m!3509523))

(declare-fun m!3509525 () Bool)

(assert (=> b!3229512 m!3509525))

(declare-fun m!3509527 () Bool)

(assert (=> b!3229512 m!3509527))

(assert (=> b!3229512 m!3509525))

(assert (=> b!3229512 m!3509527))

(declare-fun m!3509529 () Bool)

(assert (=> b!3229512 m!3509529))

(assert (=> b!3228760 d!887130))

(declare-fun d!887132 () Bool)

(assert (=> d!887132 (= (++!8756 (++!8756 (list!12975 (BalanceConc!21429 Empty!10907)) lt!1095297) lt!1095295) (++!8756 (list!12975 (BalanceConc!21429 Empty!10907)) (++!8756 lt!1095297 lt!1095295)))))

(declare-fun lt!1095758 () Unit!50946)

(declare-fun choose!18836 (List!36485 List!36485 List!36485) Unit!50946)

(assert (=> d!887132 (= lt!1095758 (choose!18836 (list!12975 (BalanceConc!21429 Empty!10907)) lt!1095297 lt!1095295))))

(assert (=> d!887132 (= (lemmaConcatAssociativity!1789 (list!12975 (BalanceConc!21429 Empty!10907)) lt!1095297 lt!1095295) lt!1095758)))

(declare-fun bs!543185 () Bool)

(assert (= bs!543185 d!887132))

(assert (=> bs!543185 m!3507199))

(assert (=> bs!543185 m!3508091))

(assert (=> bs!543185 m!3508095))

(assert (=> bs!543185 m!3508091))

(assert (=> bs!543185 m!3507199))

(assert (=> bs!543185 m!3508079))

(assert (=> bs!543185 m!3508079))

(assert (=> bs!543185 m!3508081))

(assert (=> bs!543185 m!3507199))

(declare-fun m!3509531 () Bool)

(assert (=> bs!543185 m!3509531))

(assert (=> b!3228760 d!887132))

(declare-fun b!3229520 () Bool)

(declare-fun e!2014258 () List!36485)

(assert (=> b!3229520 (= e!2014258 lt!1095297)))

(declare-fun b!3229521 () Bool)

(assert (=> b!3229521 (= e!2014258 (Cons!36361 (h!41781 (list!12975 (BalanceConc!21429 Empty!10907))) (++!8756 (t!241330 (list!12975 (BalanceConc!21429 Empty!10907))) lt!1095297)))))

(declare-fun b!3229523 () Bool)

(declare-fun e!2014257 () Bool)

(declare-fun lt!1095759 () List!36485)

(assert (=> b!3229523 (= e!2014257 (or (not (= lt!1095297 Nil!36361)) (= lt!1095759 (list!12975 (BalanceConc!21429 Empty!10907)))))))

(declare-fun b!3229522 () Bool)

(declare-fun res!1315151 () Bool)

(assert (=> b!3229522 (=> (not res!1315151) (not e!2014257))))

(assert (=> b!3229522 (= res!1315151 (= (size!27430 lt!1095759) (+ (size!27430 (list!12975 (BalanceConc!21429 Empty!10907))) (size!27430 lt!1095297))))))

(declare-fun d!887134 () Bool)

(assert (=> d!887134 e!2014257))

(declare-fun res!1315152 () Bool)

(assert (=> d!887134 (=> (not res!1315152) (not e!2014257))))

(assert (=> d!887134 (= res!1315152 (= (content!4918 lt!1095759) ((_ map or) (content!4918 (list!12975 (BalanceConc!21429 Empty!10907))) (content!4918 lt!1095297))))))

(assert (=> d!887134 (= lt!1095759 e!2014258)))

(declare-fun c!542736 () Bool)

(assert (=> d!887134 (= c!542736 ((_ is Nil!36361) (list!12975 (BalanceConc!21429 Empty!10907))))))

(assert (=> d!887134 (= (++!8756 (list!12975 (BalanceConc!21429 Empty!10907)) lt!1095297) lt!1095759)))

(assert (= (and d!887134 c!542736) b!3229520))

(assert (= (and d!887134 (not c!542736)) b!3229521))

(assert (= (and d!887134 res!1315152) b!3229522))

(assert (= (and b!3229522 res!1315151) b!3229523))

(declare-fun m!3509533 () Bool)

(assert (=> b!3229521 m!3509533))

(declare-fun m!3509535 () Bool)

(assert (=> b!3229522 m!3509535))

(assert (=> b!3229522 m!3507199))

(assert (=> b!3229522 m!3509503))

(declare-fun m!3509537 () Bool)

(assert (=> b!3229522 m!3509537))

(declare-fun m!3509539 () Bool)

(assert (=> d!887134 m!3509539))

(assert (=> d!887134 m!3507199))

(assert (=> d!887134 m!3509509))

(declare-fun m!3509541 () Bool)

(assert (=> d!887134 m!3509541))

(assert (=> b!3228760 d!887134))

(declare-fun d!887136 () Bool)

(assert (=> d!887136 (= (list!12975 (charsOf!3282 (h!41783 (dropList!1093 lt!1095069 0)))) (list!12979 (c!542433 (charsOf!3282 (h!41783 (dropList!1093 lt!1095069 0))))))))

(declare-fun bs!543186 () Bool)

(assert (= bs!543186 d!887136))

(declare-fun m!3509543 () Bool)

(assert (=> bs!543186 m!3509543))

(assert (=> b!3228760 d!887136))

(declare-fun b!3229530 () Bool)

(declare-fun e!2014260 () List!36485)

(assert (=> b!3229530 (= e!2014260 lt!1095295)))

(declare-fun b!3229531 () Bool)

(assert (=> b!3229531 (= e!2014260 (Cons!36361 (h!41781 lt!1095297) (++!8756 (t!241330 lt!1095297) lt!1095295)))))

(declare-fun b!3229533 () Bool)

(declare-fun e!2014259 () Bool)

(declare-fun lt!1095760 () List!36485)

(assert (=> b!3229533 (= e!2014259 (or (not (= lt!1095295 Nil!36361)) (= lt!1095760 lt!1095297)))))

(declare-fun b!3229532 () Bool)

(declare-fun res!1315159 () Bool)

(assert (=> b!3229532 (=> (not res!1315159) (not e!2014259))))

(assert (=> b!3229532 (= res!1315159 (= (size!27430 lt!1095760) (+ (size!27430 lt!1095297) (size!27430 lt!1095295))))))

(declare-fun d!887138 () Bool)

(assert (=> d!887138 e!2014259))

(declare-fun res!1315160 () Bool)

(assert (=> d!887138 (=> (not res!1315160) (not e!2014259))))

(assert (=> d!887138 (= res!1315160 (= (content!4918 lt!1095760) ((_ map or) (content!4918 lt!1095297) (content!4918 lt!1095295))))))

(assert (=> d!887138 (= lt!1095760 e!2014260)))

(declare-fun c!542737 () Bool)

(assert (=> d!887138 (= c!542737 ((_ is Nil!36361) lt!1095297))))

(assert (=> d!887138 (= (++!8756 lt!1095297 lt!1095295) lt!1095760)))

(assert (= (and d!887138 c!542737) b!3229530))

(assert (= (and d!887138 (not c!542737)) b!3229531))

(assert (= (and d!887138 res!1315160) b!3229532))

(assert (= (and b!3229532 res!1315159) b!3229533))

(declare-fun m!3509545 () Bool)

(assert (=> b!3229531 m!3509545))

(declare-fun m!3509547 () Bool)

(assert (=> b!3229532 m!3509547))

(assert (=> b!3229532 m!3509537))

(declare-fun m!3509549 () Bool)

(assert (=> b!3229532 m!3509549))

(declare-fun m!3509551 () Bool)

(assert (=> d!887138 m!3509551))

(assert (=> d!887138 m!3509541))

(declare-fun m!3509553 () Bool)

(assert (=> d!887138 m!3509553))

(assert (=> b!3228760 d!887138))

(declare-fun d!887140 () Bool)

(declare-fun lt!1095762 () List!36485)

(assert (=> d!887140 (= lt!1095762 (++!8756 (++!8756 (list!12975 (BalanceConc!21429 Empty!10907)) (list!12975 (charsOf!3282 (h!41783 (dropList!1093 lt!1095069 0))))) (printList!1405 thiss!18206 (t!241332 (dropList!1093 lt!1095069 0)))))))

(declare-fun e!2014261 () List!36485)

(assert (=> d!887140 (= lt!1095762 e!2014261)))

(declare-fun c!542738 () Bool)

(assert (=> d!887140 (= c!542738 ((_ is Cons!36363) (t!241332 (dropList!1093 lt!1095069 0))))))

(assert (=> d!887140 (= (printListTailRec!576 thiss!18206 (t!241332 (dropList!1093 lt!1095069 0)) (++!8756 (list!12975 (BalanceConc!21429 Empty!10907)) (list!12975 (charsOf!3282 (h!41783 (dropList!1093 lt!1095069 0)))))) lt!1095762)))

(declare-fun b!3229534 () Bool)

(assert (=> b!3229534 (= e!2014261 (printListTailRec!576 thiss!18206 (t!241332 (t!241332 (dropList!1093 lt!1095069 0))) (++!8756 (++!8756 (list!12975 (BalanceConc!21429 Empty!10907)) (list!12975 (charsOf!3282 (h!41783 (dropList!1093 lt!1095069 0))))) (list!12975 (charsOf!3282 (h!41783 (t!241332 (dropList!1093 lt!1095069 0))))))))))

(declare-fun lt!1095765 () List!36485)

(assert (=> b!3229534 (= lt!1095765 (list!12975 (charsOf!3282 (h!41783 (t!241332 (dropList!1093 lt!1095069 0))))))))

(declare-fun lt!1095763 () List!36485)

(assert (=> b!3229534 (= lt!1095763 (printList!1405 thiss!18206 (t!241332 (t!241332 (dropList!1093 lt!1095069 0)))))))

(declare-fun lt!1095761 () Unit!50946)

(assert (=> b!3229534 (= lt!1095761 (lemmaConcatAssociativity!1789 (++!8756 (list!12975 (BalanceConc!21429 Empty!10907)) (list!12975 (charsOf!3282 (h!41783 (dropList!1093 lt!1095069 0))))) lt!1095765 lt!1095763))))

(assert (=> b!3229534 (= (++!8756 (++!8756 (++!8756 (list!12975 (BalanceConc!21429 Empty!10907)) (list!12975 (charsOf!3282 (h!41783 (dropList!1093 lt!1095069 0))))) lt!1095765) lt!1095763) (++!8756 (++!8756 (list!12975 (BalanceConc!21429 Empty!10907)) (list!12975 (charsOf!3282 (h!41783 (dropList!1093 lt!1095069 0))))) (++!8756 lt!1095765 lt!1095763)))))

(declare-fun lt!1095764 () Unit!50946)

(assert (=> b!3229534 (= lt!1095764 lt!1095761)))

(declare-fun b!3229535 () Bool)

(assert (=> b!3229535 (= e!2014261 (++!8756 (list!12975 (BalanceConc!21429 Empty!10907)) (list!12975 (charsOf!3282 (h!41783 (dropList!1093 lt!1095069 0))))))))

(assert (= (and d!887140 c!542738) b!3229534))

(assert (= (and d!887140 (not c!542738)) b!3229535))

(assert (=> d!887140 m!3508083))

(assert (=> d!887140 m!3508075))

(assert (=> d!887140 m!3508083))

(declare-fun m!3509555 () Bool)

(assert (=> d!887140 m!3509555))

(declare-fun m!3509557 () Bool)

(assert (=> b!3229534 m!3509557))

(declare-fun m!3509559 () Bool)

(assert (=> b!3229534 m!3509559))

(declare-fun m!3509561 () Bool)

(assert (=> b!3229534 m!3509561))

(declare-fun m!3509563 () Bool)

(assert (=> b!3229534 m!3509563))

(assert (=> b!3229534 m!3508075))

(assert (=> b!3229534 m!3509561))

(assert (=> b!3229534 m!3509527))

(assert (=> b!3229534 m!3509523))

(assert (=> b!3229534 m!3508075))

(declare-fun m!3509565 () Bool)

(assert (=> b!3229534 m!3509565))

(assert (=> b!3229534 m!3509523))

(assert (=> b!3229534 m!3509525))

(declare-fun m!3509567 () Bool)

(assert (=> b!3229534 m!3509567))

(assert (=> b!3229534 m!3508075))

(assert (=> b!3229534 m!3509567))

(declare-fun m!3509569 () Bool)

(assert (=> b!3229534 m!3509569))

(assert (=> b!3229534 m!3508075))

(assert (=> b!3229534 m!3509525))

(assert (=> b!3229534 m!3509557))

(assert (=> b!3228760 d!887140))

(declare-fun b!3229536 () Bool)

(declare-fun e!2014263 () List!36485)

(assert (=> b!3229536 (= e!2014263 lt!1095295)))

(declare-fun b!3229537 () Bool)

(assert (=> b!3229537 (= e!2014263 (Cons!36361 (h!41781 (++!8756 (list!12975 (BalanceConc!21429 Empty!10907)) lt!1095297)) (++!8756 (t!241330 (++!8756 (list!12975 (BalanceConc!21429 Empty!10907)) lt!1095297)) lt!1095295)))))

(declare-fun b!3229539 () Bool)

(declare-fun e!2014262 () Bool)

(declare-fun lt!1095766 () List!36485)

(assert (=> b!3229539 (= e!2014262 (or (not (= lt!1095295 Nil!36361)) (= lt!1095766 (++!8756 (list!12975 (BalanceConc!21429 Empty!10907)) lt!1095297))))))

(declare-fun b!3229538 () Bool)

(declare-fun res!1315161 () Bool)

(assert (=> b!3229538 (=> (not res!1315161) (not e!2014262))))

(assert (=> b!3229538 (= res!1315161 (= (size!27430 lt!1095766) (+ (size!27430 (++!8756 (list!12975 (BalanceConc!21429 Empty!10907)) lt!1095297)) (size!27430 lt!1095295))))))

(declare-fun d!887142 () Bool)

(assert (=> d!887142 e!2014262))

(declare-fun res!1315162 () Bool)

(assert (=> d!887142 (=> (not res!1315162) (not e!2014262))))

(assert (=> d!887142 (= res!1315162 (= (content!4918 lt!1095766) ((_ map or) (content!4918 (++!8756 (list!12975 (BalanceConc!21429 Empty!10907)) lt!1095297)) (content!4918 lt!1095295))))))

(assert (=> d!887142 (= lt!1095766 e!2014263)))

(declare-fun c!542739 () Bool)

(assert (=> d!887142 (= c!542739 ((_ is Nil!36361) (++!8756 (list!12975 (BalanceConc!21429 Empty!10907)) lt!1095297)))))

(assert (=> d!887142 (= (++!8756 (++!8756 (list!12975 (BalanceConc!21429 Empty!10907)) lt!1095297) lt!1095295) lt!1095766)))

(assert (= (and d!887142 c!542739) b!3229536))

(assert (= (and d!887142 (not c!542739)) b!3229537))

(assert (= (and d!887142 res!1315162) b!3229538))

(assert (= (and b!3229538 res!1315161) b!3229539))

(declare-fun m!3509571 () Bool)

(assert (=> b!3229537 m!3509571))

(declare-fun m!3509573 () Bool)

(assert (=> b!3229538 m!3509573))

(assert (=> b!3229538 m!3508079))

(declare-fun m!3509575 () Bool)

(assert (=> b!3229538 m!3509575))

(assert (=> b!3229538 m!3509549))

(declare-fun m!3509577 () Bool)

(assert (=> d!887142 m!3509577))

(assert (=> d!887142 m!3508079))

(declare-fun m!3509579 () Bool)

(assert (=> d!887142 m!3509579))

(assert (=> d!887142 m!3509553))

(assert (=> b!3228760 d!887142))

(declare-fun d!887144 () Bool)

(declare-fun lt!1095767 () BalanceConc!21428)

(assert (=> d!887144 (= (list!12975 lt!1095767) (originalCharacters!5980 (h!41783 (dropList!1093 lt!1095069 0))))))

(assert (=> d!887144 (= lt!1095767 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (dropList!1093 lt!1095069 0))))) (value!170541 (h!41783 (dropList!1093 lt!1095069 0)))))))

(assert (=> d!887144 (= (charsOf!3282 (h!41783 (dropList!1093 lt!1095069 0))) lt!1095767)))

(declare-fun b_lambda!88967 () Bool)

(assert (=> (not b_lambda!88967) (not d!887144)))

(declare-fun t!241534 () Bool)

(declare-fun tb!160003 () Bool)

(assert (=> (and b!3228072 (= (toChars!7233 (transformation!5266 (h!41782 rules!2135))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (dropList!1093 lt!1095069 0)))))) t!241534) tb!160003))

(declare-fun b!3229540 () Bool)

(declare-fun e!2014264 () Bool)

(declare-fun tp!1017607 () Bool)

(assert (=> b!3229540 (= e!2014264 (and (inv!49253 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (dropList!1093 lt!1095069 0))))) (value!170541 (h!41783 (dropList!1093 lt!1095069 0)))))) tp!1017607))))

(declare-fun result!202564 () Bool)

(assert (=> tb!160003 (= result!202564 (and (inv!49254 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (dropList!1093 lt!1095069 0))))) (value!170541 (h!41783 (dropList!1093 lt!1095069 0))))) e!2014264))))

(assert (= tb!160003 b!3229540))

(declare-fun m!3509581 () Bool)

(assert (=> b!3229540 m!3509581))

(declare-fun m!3509583 () Bool)

(assert (=> tb!160003 m!3509583))

(assert (=> d!887144 t!241534))

(declare-fun b_and!216359 () Bool)

(assert (= b_and!216351 (and (=> t!241534 result!202564) b_and!216359)))

(declare-fun tb!160005 () Bool)

(declare-fun t!241536 () Bool)

(assert (=> (and b!3229145 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 rules!2135))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (dropList!1093 lt!1095069 0)))))) t!241536) tb!160005))

(declare-fun result!202566 () Bool)

(assert (= result!202566 result!202564))

(assert (=> d!887144 t!241536))

(declare-fun b_and!216361 () Bool)

(assert (= b_and!216347 (and (=> t!241536 result!202566) b_and!216361)))

(declare-fun tb!160007 () Bool)

(declare-fun t!241538 () Bool)

(assert (=> (and b!3228442 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 rules!2135)))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (dropList!1093 lt!1095069 0)))))) t!241538) tb!160007))

(declare-fun result!202568 () Bool)

(assert (= result!202568 result!202564))

(assert (=> d!887144 t!241538))

(declare-fun b_and!216363 () Bool)

(assert (= b_and!216345 (and (=> t!241538 result!202568) b_and!216363)))

(declare-fun t!241540 () Bool)

(declare-fun tb!160009 () Bool)

(assert (=> (and b!3229130 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494)))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (dropList!1093 lt!1095069 0)))))) t!241540) tb!160009))

(declare-fun result!202570 () Bool)

(assert (= result!202570 result!202564))

(assert (=> d!887144 t!241540))

(declare-fun b_and!216365 () Bool)

(assert (= b_and!216353 (and (=> t!241540 result!202570) b_and!216365)))

(declare-fun tb!160011 () Bool)

(declare-fun t!241542 () Bool)

(assert (=> (and b!3228076 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (dropList!1093 lt!1095069 0)))))) t!241542) tb!160011))

(declare-fun result!202572 () Bool)

(assert (= result!202572 result!202564))

(assert (=> d!887144 t!241542))

(declare-fun b_and!216367 () Bool)

(assert (= b_and!216349 (and (=> t!241542 result!202572) b_and!216367)))

(declare-fun t!241544 () Bool)

(declare-fun tb!160013 () Bool)

(assert (=> (and b!3228087 (= (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (dropList!1093 lt!1095069 0)))))) t!241544) tb!160013))

(declare-fun result!202574 () Bool)

(assert (= result!202574 result!202564))

(assert (=> d!887144 t!241544))

(declare-fun b_and!216369 () Bool)

(assert (= b_and!216355 (and (=> t!241544 result!202574) b_and!216369)))

(declare-fun t!241546 () Bool)

(declare-fun tb!160015 () Bool)

(assert (=> (and b!3228460 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (dropList!1093 lt!1095069 0)))))) t!241546) tb!160015))

(declare-fun result!202576 () Bool)

(assert (= result!202576 result!202564))

(assert (=> d!887144 t!241546))

(declare-fun b_and!216371 () Bool)

(assert (= b_and!216357 (and (=> t!241546 result!202576) b_and!216371)))

(declare-fun m!3509585 () Bool)

(assert (=> d!887144 m!3509585))

(declare-fun m!3509587 () Bool)

(assert (=> d!887144 m!3509587))

(assert (=> b!3228760 d!887144))

(declare-fun d!887146 () Bool)

(declare-fun lt!1095768 () Bool)

(assert (=> d!887146 (= lt!1095768 (select (content!4920 lt!1095094) lt!1095524))))

(declare-fun e!2014268 () Bool)

(assert (=> d!887146 (= lt!1095768 e!2014268)))

(declare-fun res!1315169 () Bool)

(assert (=> d!887146 (=> (not res!1315169) (not e!2014268))))

(assert (=> d!887146 (= res!1315169 ((_ is Cons!36363) lt!1095094))))

(assert (=> d!887146 (= (contains!6527 lt!1095094 lt!1095524) lt!1095768)))

(declare-fun b!3229547 () Bool)

(declare-fun e!2014267 () Bool)

(assert (=> b!3229547 (= e!2014268 e!2014267)))

(declare-fun res!1315170 () Bool)

(assert (=> b!3229547 (=> res!1315170 e!2014267)))

(assert (=> b!3229547 (= res!1315170 (= (h!41783 lt!1095094) lt!1095524))))

(declare-fun b!3229548 () Bool)

(assert (=> b!3229548 (= e!2014267 (contains!6527 (t!241332 lt!1095094) lt!1095524))))

(assert (= (and d!887146 res!1315169) b!3229547))

(assert (= (and b!3229547 (not res!1315170)) b!3229548))

(assert (=> d!887146 m!3508647))

(declare-fun m!3509589 () Bool)

(assert (=> d!887146 m!3509589))

(declare-fun m!3509591 () Bool)

(assert (=> b!3229548 m!3509591))

(assert (=> d!886904 d!887146))

(declare-fun d!887148 () Bool)

(declare-fun lt!1095769 () Int)

(assert (=> d!887148 (>= lt!1095769 0)))

(declare-fun e!2014269 () Int)

(assert (=> d!887148 (= lt!1095769 e!2014269)))

(declare-fun c!542740 () Bool)

(assert (=> d!887148 (= c!542740 ((_ is Nil!36361) (t!241330 lt!1095173)))))

(assert (=> d!887148 (= (size!27430 (t!241330 lt!1095173)) lt!1095769)))

(declare-fun b!3229549 () Bool)

(assert (=> b!3229549 (= e!2014269 0)))

(declare-fun b!3229550 () Bool)

(assert (=> b!3229550 (= e!2014269 (+ 1 (size!27430 (t!241330 (t!241330 lt!1095173)))))))

(assert (= (and d!887148 c!542740) b!3229549))

(assert (= (and d!887148 (not c!542740)) b!3229550))

(declare-fun m!3509601 () Bool)

(assert (=> b!3229550 m!3509601))

(assert (=> b!3228738 d!887148))

(declare-fun b!3229551 () Bool)

(declare-fun e!2014270 () Bool)

(assert (=> b!3229551 (= e!2014270 (inv!17 (value!170541 (h!41783 (t!241332 (t!241332 tokens!494))))))))

(declare-fun b!3229552 () Bool)

(declare-fun res!1315171 () Bool)

(declare-fun e!2014272 () Bool)

(assert (=> b!3229552 (=> res!1315171 e!2014272)))

(assert (=> b!3229552 (= res!1315171 (not ((_ is IntegerValue!16490) (value!170541 (h!41783 (t!241332 (t!241332 tokens!494)))))))))

(assert (=> b!3229552 (= e!2014270 e!2014272)))

(declare-fun b!3229553 () Bool)

(declare-fun e!2014271 () Bool)

(assert (=> b!3229553 (= e!2014271 e!2014270)))

(declare-fun c!542741 () Bool)

(assert (=> b!3229553 (= c!542741 ((_ is IntegerValue!16489) (value!170541 (h!41783 (t!241332 (t!241332 tokens!494))))))))

(declare-fun d!887150 () Bool)

(declare-fun c!542742 () Bool)

(assert (=> d!887150 (= c!542742 ((_ is IntegerValue!16488) (value!170541 (h!41783 (t!241332 (t!241332 tokens!494))))))))

(assert (=> d!887150 (= (inv!21 (value!170541 (h!41783 (t!241332 (t!241332 tokens!494))))) e!2014271)))

(declare-fun b!3229554 () Bool)

(assert (=> b!3229554 (= e!2014271 (inv!16 (value!170541 (h!41783 (t!241332 (t!241332 tokens!494))))))))

(declare-fun b!3229555 () Bool)

(assert (=> b!3229555 (= e!2014272 (inv!15 (value!170541 (h!41783 (t!241332 (t!241332 tokens!494))))))))

(assert (= (and d!887150 c!542742) b!3229554))

(assert (= (and d!887150 (not c!542742)) b!3229553))

(assert (= (and b!3229553 c!542741) b!3229551))

(assert (= (and b!3229553 (not c!542741)) b!3229552))

(assert (= (and b!3229552 (not res!1315171)) b!3229555))

(declare-fun m!3509607 () Bool)

(assert (=> b!3229551 m!3509607))

(declare-fun m!3509609 () Bool)

(assert (=> b!3229554 m!3509609))

(declare-fun m!3509611 () Bool)

(assert (=> b!3229555 m!3509611))

(assert (=> b!3229128 d!887150))

(declare-fun d!887154 () Bool)

(assert (=> d!887154 (= (inv!49254 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (value!170541 (h!41783 (t!241332 tokens!494))))) (isBalanced!3247 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (value!170541 (h!41783 (t!241332 tokens!494)))))))))

(declare-fun bs!543187 () Bool)

(assert (= bs!543187 d!887154))

(declare-fun m!3509613 () Bool)

(assert (=> bs!543187 m!3509613))

(assert (=> tb!159895 d!887154))

(declare-fun b!3229556 () Bool)

(declare-fun e!2014274 () List!36485)

(assert (=> b!3229556 (= e!2014274 (printList!1405 thiss!18206 (t!241332 (list!12978 lt!1095069))))))

(declare-fun b!3229557 () Bool)

(assert (=> b!3229557 (= e!2014274 (Cons!36361 (h!41781 (list!12975 (charsOf!3282 (h!41783 (list!12978 lt!1095069))))) (++!8756 (t!241330 (list!12975 (charsOf!3282 (h!41783 (list!12978 lt!1095069))))) (printList!1405 thiss!18206 (t!241332 (list!12978 lt!1095069))))))))

(declare-fun b!3229559 () Bool)

(declare-fun e!2014273 () Bool)

(declare-fun lt!1095770 () List!36485)

(assert (=> b!3229559 (= e!2014273 (or (not (= (printList!1405 thiss!18206 (t!241332 (list!12978 lt!1095069))) Nil!36361)) (= lt!1095770 (list!12975 (charsOf!3282 (h!41783 (list!12978 lt!1095069)))))))))

(declare-fun b!3229558 () Bool)

(declare-fun res!1315172 () Bool)

(assert (=> b!3229558 (=> (not res!1315172) (not e!2014273))))

(assert (=> b!3229558 (= res!1315172 (= (size!27430 lt!1095770) (+ (size!27430 (list!12975 (charsOf!3282 (h!41783 (list!12978 lt!1095069))))) (size!27430 (printList!1405 thiss!18206 (t!241332 (list!12978 lt!1095069)))))))))

(declare-fun d!887156 () Bool)

(assert (=> d!887156 e!2014273))

(declare-fun res!1315173 () Bool)

(assert (=> d!887156 (=> (not res!1315173) (not e!2014273))))

(assert (=> d!887156 (= res!1315173 (= (content!4918 lt!1095770) ((_ map or) (content!4918 (list!12975 (charsOf!3282 (h!41783 (list!12978 lt!1095069))))) (content!4918 (printList!1405 thiss!18206 (t!241332 (list!12978 lt!1095069)))))))))

(assert (=> d!887156 (= lt!1095770 e!2014274)))

(declare-fun c!542743 () Bool)

(assert (=> d!887156 (= c!542743 ((_ is Nil!36361) (list!12975 (charsOf!3282 (h!41783 (list!12978 lt!1095069))))))))

(assert (=> d!887156 (= (++!8756 (list!12975 (charsOf!3282 (h!41783 (list!12978 lt!1095069)))) (printList!1405 thiss!18206 (t!241332 (list!12978 lt!1095069)))) lt!1095770)))

(assert (= (and d!887156 c!542743) b!3229556))

(assert (= (and d!887156 (not c!542743)) b!3229557))

(assert (= (and d!887156 res!1315173) b!3229558))

(assert (= (and b!3229558 res!1315172) b!3229559))

(assert (=> b!3229557 m!3507735))

(declare-fun m!3509615 () Bool)

(assert (=> b!3229557 m!3509615))

(declare-fun m!3509617 () Bool)

(assert (=> b!3229558 m!3509617))

(assert (=> b!3229558 m!3507733))

(declare-fun m!3509619 () Bool)

(assert (=> b!3229558 m!3509619))

(assert (=> b!3229558 m!3507735))

(declare-fun m!3509621 () Bool)

(assert (=> b!3229558 m!3509621))

(declare-fun m!3509623 () Bool)

(assert (=> d!887156 m!3509623))

(assert (=> d!887156 m!3507733))

(declare-fun m!3509625 () Bool)

(assert (=> d!887156 m!3509625))

(assert (=> d!887156 m!3507735))

(declare-fun m!3509627 () Bool)

(assert (=> d!887156 m!3509627))

(assert (=> b!3228556 d!887156))

(declare-fun d!887160 () Bool)

(assert (=> d!887160 (= (list!12975 (charsOf!3282 (h!41783 (list!12978 lt!1095069)))) (list!12979 (c!542433 (charsOf!3282 (h!41783 (list!12978 lt!1095069))))))))

(declare-fun bs!543189 () Bool)

(assert (= bs!543189 d!887160))

(declare-fun m!3509633 () Bool)

(assert (=> bs!543189 m!3509633))

(assert (=> b!3228556 d!887160))

(declare-fun d!887162 () Bool)

(declare-fun lt!1095772 () BalanceConc!21428)

(assert (=> d!887162 (= (list!12975 lt!1095772) (originalCharacters!5980 (h!41783 (list!12978 lt!1095069))))))

(assert (=> d!887162 (= lt!1095772 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (list!12978 lt!1095069))))) (value!170541 (h!41783 (list!12978 lt!1095069)))))))

(assert (=> d!887162 (= (charsOf!3282 (h!41783 (list!12978 lt!1095069))) lt!1095772)))

(declare-fun b_lambda!88969 () Bool)

(assert (=> (not b_lambda!88969) (not d!887162)))

(declare-fun tb!160017 () Bool)

(declare-fun t!241548 () Bool)

(assert (=> (and b!3228076 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (list!12978 lt!1095069)))))) t!241548) tb!160017))

(declare-fun b!3229560 () Bool)

(declare-fun e!2014275 () Bool)

(declare-fun tp!1017608 () Bool)

(assert (=> b!3229560 (= e!2014275 (and (inv!49253 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (list!12978 lt!1095069))))) (value!170541 (h!41783 (list!12978 lt!1095069)))))) tp!1017608))))

(declare-fun result!202578 () Bool)

(assert (=> tb!160017 (= result!202578 (and (inv!49254 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (list!12978 lt!1095069))))) (value!170541 (h!41783 (list!12978 lt!1095069))))) e!2014275))))

(assert (= tb!160017 b!3229560))

(declare-fun m!3509639 () Bool)

(assert (=> b!3229560 m!3509639))

(declare-fun m!3509641 () Bool)

(assert (=> tb!160017 m!3509641))

(assert (=> d!887162 t!241548))

(declare-fun b_and!216373 () Bool)

(assert (= b_and!216367 (and (=> t!241548 result!202578) b_and!216373)))

(declare-fun tb!160019 () Bool)

(declare-fun t!241550 () Bool)

(assert (=> (and b!3228460 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (list!12978 lt!1095069)))))) t!241550) tb!160019))

(declare-fun result!202580 () Bool)

(assert (= result!202580 result!202578))

(assert (=> d!887162 t!241550))

(declare-fun b_and!216375 () Bool)

(assert (= b_and!216371 (and (=> t!241550 result!202580) b_and!216375)))

(declare-fun t!241552 () Bool)

(declare-fun tb!160021 () Bool)

(assert (=> (and b!3229145 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 rules!2135))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (list!12978 lt!1095069)))))) t!241552) tb!160021))

(declare-fun result!202582 () Bool)

(assert (= result!202582 result!202578))

(assert (=> d!887162 t!241552))

(declare-fun b_and!216377 () Bool)

(assert (= b_and!216361 (and (=> t!241552 result!202582) b_and!216377)))

(declare-fun t!241554 () Bool)

(declare-fun tb!160023 () Bool)

(assert (=> (and b!3228072 (= (toChars!7233 (transformation!5266 (h!41782 rules!2135))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (list!12978 lt!1095069)))))) t!241554) tb!160023))

(declare-fun result!202584 () Bool)

(assert (= result!202584 result!202578))

(assert (=> d!887162 t!241554))

(declare-fun b_and!216379 () Bool)

(assert (= b_and!216359 (and (=> t!241554 result!202584) b_and!216379)))

(declare-fun tb!160025 () Bool)

(declare-fun t!241556 () Bool)

(assert (=> (and b!3228087 (= (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (list!12978 lt!1095069)))))) t!241556) tb!160025))

(declare-fun result!202586 () Bool)

(assert (= result!202586 result!202578))

(assert (=> d!887162 t!241556))

(declare-fun b_and!216381 () Bool)

(assert (= b_and!216369 (and (=> t!241556 result!202586) b_and!216381)))

(declare-fun t!241558 () Bool)

(declare-fun tb!160027 () Bool)

(assert (=> (and b!3229130 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494)))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (list!12978 lt!1095069)))))) t!241558) tb!160027))

(declare-fun result!202588 () Bool)

(assert (= result!202588 result!202578))

(assert (=> d!887162 t!241558))

(declare-fun b_and!216383 () Bool)

(assert (= b_and!216365 (and (=> t!241558 result!202588) b_and!216383)))

(declare-fun t!241560 () Bool)

(declare-fun tb!160029 () Bool)

(assert (=> (and b!3228442 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 rules!2135)))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (list!12978 lt!1095069)))))) t!241560) tb!160029))

(declare-fun result!202590 () Bool)

(assert (= result!202590 result!202578))

(assert (=> d!887162 t!241560))

(declare-fun b_and!216385 () Bool)

(assert (= b_and!216363 (and (=> t!241560 result!202590) b_and!216385)))

(declare-fun m!3509645 () Bool)

(assert (=> d!887162 m!3509645))

(declare-fun m!3509647 () Bool)

(assert (=> d!887162 m!3509647))

(assert (=> b!3228556 d!887162))

(declare-fun d!887170 () Bool)

(declare-fun c!542744 () Bool)

(assert (=> d!887170 (= c!542744 ((_ is Cons!36363) (t!241332 (list!12978 lt!1095069))))))

(declare-fun e!2014276 () List!36485)

(assert (=> d!887170 (= (printList!1405 thiss!18206 (t!241332 (list!12978 lt!1095069))) e!2014276)))

(declare-fun b!3229561 () Bool)

(assert (=> b!3229561 (= e!2014276 (++!8756 (list!12975 (charsOf!3282 (h!41783 (t!241332 (list!12978 lt!1095069))))) (printList!1405 thiss!18206 (t!241332 (t!241332 (list!12978 lt!1095069))))))))

(declare-fun b!3229562 () Bool)

(assert (=> b!3229562 (= e!2014276 Nil!36361)))

(assert (= (and d!887170 c!542744) b!3229561))

(assert (= (and d!887170 (not c!542744)) b!3229562))

(declare-fun m!3509649 () Bool)

(assert (=> b!3229561 m!3509649))

(assert (=> b!3229561 m!3509649))

(declare-fun m!3509651 () Bool)

(assert (=> b!3229561 m!3509651))

(declare-fun m!3509653 () Bool)

(assert (=> b!3229561 m!3509653))

(assert (=> b!3229561 m!3509651))

(assert (=> b!3229561 m!3509653))

(declare-fun m!3509655 () Bool)

(assert (=> b!3229561 m!3509655))

(assert (=> b!3228556 d!887170))

(declare-fun d!887172 () Bool)

(declare-fun lt!1095774 () Int)

(assert (=> d!887172 (>= lt!1095774 0)))

(declare-fun e!2014277 () Int)

(assert (=> d!887172 (= lt!1095774 e!2014277)))

(declare-fun c!542745 () Bool)

(assert (=> d!887172 (= c!542745 ((_ is Nil!36363) (_1!21030 lt!1095346)))))

(assert (=> d!887172 (= (size!27433 (_1!21030 lt!1095346)) lt!1095774)))

(declare-fun b!3229563 () Bool)

(assert (=> b!3229563 (= e!2014277 0)))

(declare-fun b!3229564 () Bool)

(assert (=> b!3229564 (= e!2014277 (+ 1 (size!27433 (t!241332 (_1!21030 lt!1095346)))))))

(assert (= (and d!887172 c!542745) b!3229563))

(assert (= (and d!887172 (not c!542745)) b!3229564))

(declare-fun m!3509657 () Bool)

(assert (=> b!3229564 m!3509657))

(assert (=> d!886774 d!887172))

(declare-fun b!3229622 () Bool)

(declare-fun res!1315220 () Bool)

(declare-fun e!2014319 () Bool)

(assert (=> b!3229622 (=> (not res!1315220) (not e!2014319))))

(declare-fun lt!1095795 () Option!7215)

(declare-fun get!11577 (Option!7215) tuple2!35794)

(declare-fun apply!8306 (TokenValueInjection!10420 BalanceConc!21428) TokenValue!5496)

(assert (=> b!3229622 (= res!1315220 (= (value!170541 (_1!21031 (get!11577 lt!1095795))) (apply!8306 (transformation!5266 (rule!7724 (_1!21031 (get!11577 lt!1095795)))) (seqFromList!3595 (originalCharacters!5980 (_1!21031 (get!11577 lt!1095795)))))))))

(declare-fun b!3229623 () Bool)

(declare-fun e!2014316 () Option!7215)

(declare-fun lt!1095794 () Option!7215)

(declare-fun lt!1095793 () Option!7215)

(assert (=> b!3229623 (= e!2014316 (ite (and ((_ is None!7214) lt!1095794) ((_ is None!7214) lt!1095793)) None!7214 (ite ((_ is None!7214) lt!1095793) lt!1095794 (ite ((_ is None!7214) lt!1095794) lt!1095793 (ite (>= (size!27425 (_1!21031 (v!35824 lt!1095794))) (size!27425 (_1!21031 (v!35824 lt!1095793)))) lt!1095794 lt!1095793)))))))

(declare-fun call!233229 () Option!7215)

(assert (=> b!3229623 (= lt!1095794 call!233229)))

(assert (=> b!3229623 (= lt!1095793 (maxPrefix!2486 thiss!18206 (t!241331 rules!2135) (list!12975 (seqFromList!3595 lt!1095073))))))

(declare-fun b!3229624 () Bool)

(declare-fun e!2014323 () Bool)

(assert (=> b!3229624 (= e!2014323 e!2014319)))

(declare-fun res!1315213 () Bool)

(assert (=> b!3229624 (=> (not res!1315213) (not e!2014319))))

(declare-fun isDefined!5591 (Option!7215) Bool)

(assert (=> b!3229624 (= res!1315213 (isDefined!5591 lt!1095795))))

(declare-fun bm!233224 () Bool)

(declare-fun maxPrefixOneRule!1621 (LexerInterface!4855 Rule!10332 List!36485) Option!7215)

(assert (=> bm!233224 (= call!233229 (maxPrefixOneRule!1621 thiss!18206 (h!41782 rules!2135) (list!12975 (seqFromList!3595 lt!1095073))))))

(declare-fun b!3229625 () Bool)

(declare-fun res!1315226 () Bool)

(assert (=> b!3229625 (=> (not res!1315226) (not e!2014319))))

(declare-fun matchR!4646 (Regex!10025 List!36485) Bool)

(assert (=> b!3229625 (= res!1315226 (matchR!4646 (regex!5266 (rule!7724 (_1!21031 (get!11577 lt!1095795)))) (list!12975 (charsOf!3282 (_1!21031 (get!11577 lt!1095795))))))))

(declare-fun b!3229626 () Bool)

(declare-fun res!1315215 () Bool)

(assert (=> b!3229626 (=> (not res!1315215) (not e!2014319))))

(assert (=> b!3229626 (= res!1315215 (= (++!8756 (list!12975 (charsOf!3282 (_1!21031 (get!11577 lt!1095795)))) (_2!21031 (get!11577 lt!1095795))) (list!12975 (seqFromList!3595 lt!1095073))))))

(declare-fun d!887174 () Bool)

(assert (=> d!887174 e!2014323))

(declare-fun res!1315218 () Bool)

(assert (=> d!887174 (=> res!1315218 e!2014323)))

(declare-fun isEmpty!20458 (Option!7215) Bool)

(assert (=> d!887174 (= res!1315218 (isEmpty!20458 lt!1095795))))

(assert (=> d!887174 (= lt!1095795 e!2014316)))

(declare-fun c!542755 () Bool)

(assert (=> d!887174 (= c!542755 (and ((_ is Cons!36362) rules!2135) ((_ is Nil!36362) (t!241331 rules!2135))))))

(declare-fun lt!1095796 () Unit!50946)

(declare-fun lt!1095797 () Unit!50946)

(assert (=> d!887174 (= lt!1095796 lt!1095797)))

(declare-fun isPrefix!2789 (List!36485 List!36485) Bool)

(assert (=> d!887174 (isPrefix!2789 (list!12975 (seqFromList!3595 lt!1095073)) (list!12975 (seqFromList!3595 lt!1095073)))))

(declare-fun lemmaIsPrefixRefl!1748 (List!36485 List!36485) Unit!50946)

(assert (=> d!887174 (= lt!1095797 (lemmaIsPrefixRefl!1748 (list!12975 (seqFromList!3595 lt!1095073)) (list!12975 (seqFromList!3595 lt!1095073))))))

(assert (=> d!887174 (rulesValidInductive!1789 thiss!18206 rules!2135)))

(assert (=> d!887174 (= (maxPrefix!2486 thiss!18206 rules!2135 (list!12975 (seqFromList!3595 lt!1095073))) lt!1095795)))

(declare-fun b!3229627 () Bool)

(declare-fun res!1315224 () Bool)

(assert (=> b!3229627 (=> (not res!1315224) (not e!2014319))))

(assert (=> b!3229627 (= res!1315224 (= (list!12975 (charsOf!3282 (_1!21031 (get!11577 lt!1095795)))) (originalCharacters!5980 (_1!21031 (get!11577 lt!1095795)))))))

(declare-fun b!3229628 () Bool)

(assert (=> b!3229628 (= e!2014316 call!233229)))

(declare-fun b!3229629 () Bool)

(declare-fun res!1315216 () Bool)

(assert (=> b!3229629 (=> (not res!1315216) (not e!2014319))))

(assert (=> b!3229629 (= res!1315216 (< (size!27430 (_2!21031 (get!11577 lt!1095795))) (size!27430 (list!12975 (seqFromList!3595 lt!1095073)))))))

(declare-fun b!3229630 () Bool)

(declare-fun contains!6530 (List!36486 Rule!10332) Bool)

(assert (=> b!3229630 (= e!2014319 (contains!6530 rules!2135 (rule!7724 (_1!21031 (get!11577 lt!1095795)))))))

(assert (= (and d!887174 c!542755) b!3229628))

(assert (= (and d!887174 (not c!542755)) b!3229623))

(assert (= (or b!3229628 b!3229623) bm!233224))

(assert (= (and d!887174 (not res!1315218)) b!3229624))

(assert (= (and b!3229624 res!1315213) b!3229627))

(assert (= (and b!3229627 res!1315224) b!3229629))

(assert (= (and b!3229629 res!1315216) b!3229626))

(assert (= (and b!3229626 res!1315215) b!3229622))

(assert (= (and b!3229622 res!1315220) b!3229625))

(assert (= (and b!3229625 res!1315226) b!3229630))

(declare-fun m!3509711 () Bool)

(assert (=> b!3229629 m!3509711))

(declare-fun m!3509715 () Bool)

(assert (=> b!3229629 m!3509715))

(assert (=> b!3229629 m!3507457))

(assert (=> b!3229629 m!3507651))

(assert (=> b!3229630 m!3509711))

(declare-fun m!3509717 () Bool)

(assert (=> b!3229630 m!3509717))

(assert (=> b!3229623 m!3507457))

(declare-fun m!3509721 () Bool)

(assert (=> b!3229623 m!3509721))

(assert (=> bm!233224 m!3507457))

(declare-fun m!3509723 () Bool)

(assert (=> bm!233224 m!3509723))

(declare-fun m!3509725 () Bool)

(assert (=> d!887174 m!3509725))

(assert (=> d!887174 m!3507457))

(assert (=> d!887174 m!3507457))

(declare-fun m!3509729 () Bool)

(assert (=> d!887174 m!3509729))

(assert (=> d!887174 m!3507457))

(assert (=> d!887174 m!3507457))

(declare-fun m!3509733 () Bool)

(assert (=> d!887174 m!3509733))

(assert (=> d!887174 m!3508623))

(assert (=> b!3229625 m!3509711))

(declare-fun m!3509739 () Bool)

(assert (=> b!3229625 m!3509739))

(assert (=> b!3229625 m!3509739))

(declare-fun m!3509743 () Bool)

(assert (=> b!3229625 m!3509743))

(assert (=> b!3229625 m!3509743))

(declare-fun m!3509745 () Bool)

(assert (=> b!3229625 m!3509745))

(declare-fun m!3509749 () Bool)

(assert (=> b!3229624 m!3509749))

(assert (=> b!3229627 m!3509711))

(assert (=> b!3229627 m!3509739))

(assert (=> b!3229627 m!3509739))

(assert (=> b!3229627 m!3509743))

(assert (=> b!3229626 m!3509711))

(assert (=> b!3229626 m!3509739))

(assert (=> b!3229626 m!3509739))

(assert (=> b!3229626 m!3509743))

(assert (=> b!3229626 m!3509743))

(declare-fun m!3509759 () Bool)

(assert (=> b!3229626 m!3509759))

(assert (=> b!3229622 m!3509711))

(declare-fun m!3509761 () Bool)

(assert (=> b!3229622 m!3509761))

(assert (=> b!3229622 m!3509761))

(declare-fun m!3509765 () Bool)

(assert (=> b!3229622 m!3509765))

(assert (=> d!886774 d!887174))

(declare-fun d!887198 () Bool)

(declare-fun res!1315229 () Bool)

(declare-fun e!2014328 () Bool)

(assert (=> d!887198 (=> res!1315229 e!2014328)))

(assert (=> d!887198 (= res!1315229 (not ((_ is Cons!36362) (t!241331 (t!241331 rules!2135)))))))

(assert (=> d!887198 (= (sepAndNonSepRulesDisjointChars!1460 rules!2135 (t!241331 (t!241331 rules!2135))) e!2014328)))

(declare-fun b!3229640 () Bool)

(declare-fun e!2014329 () Bool)

(assert (=> b!3229640 (= e!2014328 e!2014329)))

(declare-fun res!1315230 () Bool)

(assert (=> b!3229640 (=> (not res!1315230) (not e!2014329))))

(assert (=> b!3229640 (= res!1315230 (ruleDisjointCharsFromAllFromOtherType!607 (h!41782 (t!241331 (t!241331 rules!2135))) rules!2135))))

(declare-fun b!3229641 () Bool)

(assert (=> b!3229641 (= e!2014329 (sepAndNonSepRulesDisjointChars!1460 rules!2135 (t!241331 (t!241331 (t!241331 rules!2135)))))))

(assert (= (and d!887198 (not res!1315229)) b!3229640))

(assert (= (and b!3229640 res!1315230) b!3229641))

(declare-fun m!3509767 () Bool)

(assert (=> b!3229640 m!3509767))

(declare-fun m!3509769 () Bool)

(assert (=> b!3229641 m!3509769))

(assert (=> b!3228831 d!887198))

(declare-fun d!887200 () Bool)

(assert (=> d!887200 (= (list!12981 (xs!14025 (c!542433 lt!1095070))) (innerList!10967 (xs!14025 (c!542433 lt!1095070))))))

(assert (=> b!3228579 d!887200))

(declare-fun d!887202 () Bool)

(declare-fun lt!1095798 () Int)

(assert (=> d!887202 (>= lt!1095798 0)))

(declare-fun e!2014330 () Int)

(assert (=> d!887202 (= lt!1095798 e!2014330)))

(declare-fun c!542756 () Bool)

(assert (=> d!887202 (= c!542756 ((_ is Nil!36363) lt!1095096))))

(assert (=> d!887202 (= (size!27433 lt!1095096) lt!1095798)))

(declare-fun b!3229642 () Bool)

(assert (=> b!3229642 (= e!2014330 0)))

(declare-fun b!3229643 () Bool)

(assert (=> b!3229643 (= e!2014330 (+ 1 (size!27433 (t!241332 lt!1095096))))))

(assert (= (and d!887202 c!542756) b!3229642))

(assert (= (and d!887202 (not c!542756)) b!3229643))

(assert (=> b!3229643 m!3509011))

(assert (=> b!3228975 d!887202))

(declare-fun b!3229647 () Bool)

(declare-fun e!2014332 () List!36485)

(assert (=> b!3229647 (= e!2014332 (++!8756 (list!12979 (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241))))) (list!12979 (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))))))))

(declare-fun b!3229646 () Bool)

(assert (=> b!3229646 (= e!2014332 (list!12981 (xs!14025 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241))))))))

(declare-fun b!3229645 () Bool)

(declare-fun e!2014331 () List!36485)

(assert (=> b!3229645 (= e!2014331 e!2014332)))

(declare-fun c!542758 () Bool)

(assert (=> b!3229645 (= c!542758 ((_ is Leaf!17151) (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))))))

(declare-fun d!887204 () Bool)

(declare-fun c!542757 () Bool)

(assert (=> d!887204 (= c!542757 ((_ is Empty!10907) (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))))))

(assert (=> d!887204 (= (list!12979 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))) e!2014331)))

(declare-fun b!3229644 () Bool)

(assert (=> b!3229644 (= e!2014331 Nil!36361)))

(assert (= (and d!887204 c!542757) b!3229644))

(assert (= (and d!887204 (not c!542757)) b!3229645))

(assert (= (and b!3229645 c!542758) b!3229646))

(assert (= (and b!3229645 (not c!542758)) b!3229647))

(declare-fun m!3509771 () Bool)

(assert (=> b!3229647 m!3509771))

(declare-fun m!3509773 () Bool)

(assert (=> b!3229647 m!3509773))

(assert (=> b!3229647 m!3509771))

(assert (=> b!3229647 m!3509773))

(declare-fun m!3509775 () Bool)

(assert (=> b!3229647 m!3509775))

(declare-fun m!3509777 () Bool)

(assert (=> b!3229646 m!3509777))

(assert (=> d!886542 d!887204))

(declare-fun b!3229648 () Bool)

(declare-fun e!2014333 () List!36487)

(assert (=> b!3229648 (= e!2014333 Nil!36363)))

(declare-fun b!3229651 () Bool)

(declare-fun e!2014334 () List!36487)

(assert (=> b!3229651 (= e!2014334 (++!8760 (list!12980 (left!28315 (c!542434 (_1!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241))))))) (list!12980 (right!28645 (c!542434 (_1!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241)))))))))))

(declare-fun b!3229650 () Bool)

(assert (=> b!3229650 (= e!2014334 (list!12985 (xs!14026 (c!542434 (_1!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241))))))))))

(declare-fun b!3229649 () Bool)

(assert (=> b!3229649 (= e!2014333 e!2014334)))

(declare-fun c!542760 () Bool)

(assert (=> b!3229649 (= c!542760 ((_ is Leaf!17152) (c!542434 (_1!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241)))))))))

(declare-fun d!887206 () Bool)

(declare-fun c!542759 () Bool)

(assert (=> d!887206 (= c!542759 ((_ is Empty!10908) (c!542434 (_1!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241)))))))))

(assert (=> d!887206 (= (list!12980 (c!542434 (_1!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241)))))) e!2014333)))

(assert (= (and d!887206 c!542759) b!3229648))

(assert (= (and d!887206 (not c!542759)) b!3229649))

(assert (= (and b!3229649 c!542760) b!3229650))

(assert (= (and b!3229649 (not c!542760)) b!3229651))

(declare-fun m!3509779 () Bool)

(assert (=> b!3229651 m!3509779))

(declare-fun m!3509781 () Bool)

(assert (=> b!3229651 m!3509781))

(assert (=> b!3229651 m!3509779))

(assert (=> b!3229651 m!3509781))

(declare-fun m!3509783 () Bool)

(assert (=> b!3229651 m!3509783))

(declare-fun m!3509785 () Bool)

(assert (=> b!3229650 m!3509785))

(assert (=> d!886942 d!887206))

(declare-fun d!887208 () Bool)

(declare-fun lt!1095799 () Int)

(assert (=> d!887208 (>= lt!1095799 0)))

(declare-fun e!2014335 () Int)

(assert (=> d!887208 (= lt!1095799 e!2014335)))

(declare-fun c!542761 () Bool)

(assert (=> d!887208 (= c!542761 ((_ is Nil!36363) lt!1095094))))

(assert (=> d!887208 (= (size!27433 lt!1095094) lt!1095799)))

(declare-fun b!3229652 () Bool)

(assert (=> b!3229652 (= e!2014335 0)))

(declare-fun b!3229653 () Bool)

(assert (=> b!3229653 (= e!2014335 (+ 1 (size!27433 (t!241332 lt!1095094))))))

(assert (= (and d!887208 c!542761) b!3229652))

(assert (= (and d!887208 (not c!542761)) b!3229653))

(declare-fun m!3509787 () Bool)

(assert (=> b!3229653 m!3509787))

(assert (=> b!3228963 d!887208))

(declare-fun d!887210 () Bool)

(declare-fun res!1315235 () Bool)

(declare-fun e!2014338 () Bool)

(assert (=> d!887210 (=> (not res!1315235) (not e!2014338))))

(assert (=> d!887210 (= res!1315235 (<= (size!27430 (list!12981 (xs!14025 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))))) 512))))

(assert (=> d!887210 (= (inv!49256 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))) e!2014338)))

(declare-fun b!3229658 () Bool)

(declare-fun res!1315236 () Bool)

(assert (=> b!3229658 (=> (not res!1315236) (not e!2014338))))

(assert (=> b!3229658 (= res!1315236 (= (csize!22045 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))) (size!27430 (list!12981 (xs!14025 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241))))))))))

(declare-fun b!3229659 () Bool)

(assert (=> b!3229659 (= e!2014338 (and (> (csize!22045 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))) 0) (<= (csize!22045 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))) 512)))))

(assert (= (and d!887210 res!1315235) b!3229658))

(assert (= (and b!3229658 res!1315236) b!3229659))

(assert (=> d!887210 m!3509777))

(assert (=> d!887210 m!3509777))

(declare-fun m!3509789 () Bool)

(assert (=> d!887210 m!3509789))

(assert (=> b!3229658 m!3509777))

(assert (=> b!3229658 m!3509777))

(assert (=> b!3229658 m!3509789))

(assert (=> b!3228823 d!887210))

(declare-fun d!887212 () Bool)

(declare-fun choose!625 (List!36484) (_ BitVec 32))

(assert (=> d!887212 (= (charsToInt!0 (text!38919 (value!170541 separatorToken!241))) (choose!625 (text!38919 (value!170541 separatorToken!241))))))

(declare-fun bs!543199 () Bool)

(assert (= bs!543199 d!887212))

(declare-fun m!3509791 () Bool)

(assert (=> bs!543199 m!3509791))

(assert (=> d!886920 d!887212))

(declare-fun d!887214 () Bool)

(declare-fun lt!1095800 () Int)

(assert (=> d!887214 (= lt!1095800 (size!27430 (list!12975 (_2!21028 lt!1095335))))))

(assert (=> d!887214 (= lt!1095800 (size!27432 (c!542433 (_2!21028 lt!1095335))))))

(assert (=> d!887214 (= (size!27431 (_2!21028 lt!1095335)) lt!1095800)))

(declare-fun bs!543200 () Bool)

(assert (= bs!543200 d!887214))

(assert (=> bs!543200 m!3508229))

(assert (=> bs!543200 m!3508229))

(declare-fun m!3509793 () Bool)

(assert (=> bs!543200 m!3509793))

(declare-fun m!3509795 () Bool)

(assert (=> bs!543200 m!3509795))

(assert (=> b!3228801 d!887214))

(declare-fun d!887216 () Bool)

(declare-fun lt!1095801 () Int)

(assert (=> d!887216 (= lt!1095801 (size!27430 (list!12975 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241)))))))

(assert (=> d!887216 (= lt!1095801 (size!27432 (c!542433 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241)))))))

(assert (=> d!887216 (= (size!27431 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241))) lt!1095801)))

(declare-fun bs!543201 () Bool)

(assert (= bs!543201 d!887216))

(assert (=> bs!543201 m!3507565))

(assert (=> bs!543201 m!3508231))

(assert (=> bs!543201 m!3508231))

(assert (=> bs!543201 m!3509477))

(declare-fun m!3509797 () Bool)

(assert (=> bs!543201 m!3509797))

(assert (=> b!3228801 d!887216))

(declare-fun d!887218 () Bool)

(assert (=> d!887218 (= (list!12975 lt!1095333) (list!12979 (c!542433 lt!1095333)))))

(declare-fun bs!543202 () Bool)

(assert (= bs!543202 d!887218))

(declare-fun m!3509799 () Bool)

(assert (=> bs!543202 m!3509799))

(assert (=> d!886758 d!887218))

(declare-fun d!887220 () Bool)

(declare-fun c!542762 () Bool)

(assert (=> d!887220 (= c!542762 ((_ is Cons!36363) (list!12978 (singletonSeq!2362 (h!41783 tokens!494)))))))

(declare-fun e!2014339 () List!36485)

(assert (=> d!887220 (= (printList!1405 thiss!18206 (list!12978 (singletonSeq!2362 (h!41783 tokens!494)))) e!2014339)))

(declare-fun b!3229660 () Bool)

(assert (=> b!3229660 (= e!2014339 (++!8756 (list!12975 (charsOf!3282 (h!41783 (list!12978 (singletonSeq!2362 (h!41783 tokens!494)))))) (printList!1405 thiss!18206 (t!241332 (list!12978 (singletonSeq!2362 (h!41783 tokens!494)))))))))

(declare-fun b!3229661 () Bool)

(assert (=> b!3229661 (= e!2014339 Nil!36361)))

(assert (= (and d!887220 c!542762) b!3229660))

(assert (= (and d!887220 (not c!542762)) b!3229661))

(declare-fun m!3509801 () Bool)

(assert (=> b!3229660 m!3509801))

(assert (=> b!3229660 m!3509801))

(declare-fun m!3509803 () Bool)

(assert (=> b!3229660 m!3509803))

(declare-fun m!3509805 () Bool)

(assert (=> b!3229660 m!3509805))

(assert (=> b!3229660 m!3509803))

(assert (=> b!3229660 m!3509805))

(declare-fun m!3509807 () Bool)

(assert (=> b!3229660 m!3509807))

(assert (=> d!886758 d!887220))

(assert (=> d!886758 d!886808))

(declare-fun d!887222 () Bool)

(declare-fun lt!1095807 () BalanceConc!21428)

(assert (=> d!887222 (= (list!12975 lt!1095807) (printListTailRec!576 thiss!18206 (dropList!1093 (singletonSeq!2362 (h!41783 tokens!494)) 0) (list!12975 (BalanceConc!21429 Empty!10907))))))

(declare-fun e!2014341 () BalanceConc!21428)

(assert (=> d!887222 (= lt!1095807 e!2014341)))

(declare-fun c!542763 () Bool)

(assert (=> d!887222 (= c!542763 (>= 0 (size!27429 (singletonSeq!2362 (h!41783 tokens!494)))))))

(declare-fun e!2014340 () Bool)

(assert (=> d!887222 e!2014340))

(declare-fun res!1315237 () Bool)

(assert (=> d!887222 (=> (not res!1315237) (not e!2014340))))

(assert (=> d!887222 (= res!1315237 (>= 0 0))))

(assert (=> d!887222 (= (printTailRec!1352 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494)) 0 (BalanceConc!21429 Empty!10907)) lt!1095807)))

(declare-fun b!3229662 () Bool)

(assert (=> b!3229662 (= e!2014340 (<= 0 (size!27429 (singletonSeq!2362 (h!41783 tokens!494)))))))

(declare-fun b!3229663 () Bool)

(assert (=> b!3229663 (= e!2014341 (BalanceConc!21429 Empty!10907))))

(declare-fun b!3229664 () Bool)

(assert (=> b!3229664 (= e!2014341 (printTailRec!1352 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494)) (+ 0 1) (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 (singletonSeq!2362 (h!41783 tokens!494)) 0)))))))

(declare-fun lt!1095804 () List!36487)

(assert (=> b!3229664 (= lt!1095804 (list!12978 (singletonSeq!2362 (h!41783 tokens!494))))))

(declare-fun lt!1095803 () Unit!50946)

(assert (=> b!3229664 (= lt!1095803 (lemmaDropApply!1052 lt!1095804 0))))

(assert (=> b!3229664 (= (head!7088 (drop!1876 lt!1095804 0)) (apply!8301 lt!1095804 0))))

(declare-fun lt!1095805 () Unit!50946)

(assert (=> b!3229664 (= lt!1095805 lt!1095803)))

(declare-fun lt!1095806 () List!36487)

(assert (=> b!3229664 (= lt!1095806 (list!12978 (singletonSeq!2362 (h!41783 tokens!494))))))

(declare-fun lt!1095802 () Unit!50946)

(assert (=> b!3229664 (= lt!1095802 (lemmaDropTail!936 lt!1095806 0))))

(assert (=> b!3229664 (= (tail!5232 (drop!1876 lt!1095806 0)) (drop!1876 lt!1095806 (+ 0 1)))))

(declare-fun lt!1095808 () Unit!50946)

(assert (=> b!3229664 (= lt!1095808 lt!1095802)))

(assert (= (and d!887222 res!1315237) b!3229662))

(assert (= (and d!887222 c!542763) b!3229663))

(assert (= (and d!887222 (not c!542763)) b!3229664))

(assert (=> d!887222 m!3507141))

(declare-fun m!3509809 () Bool)

(assert (=> d!887222 m!3509809))

(assert (=> d!887222 m!3507141))

(declare-fun m!3509811 () Bool)

(assert (=> d!887222 m!3509811))

(assert (=> d!887222 m!3509811))

(assert (=> d!887222 m!3507199))

(declare-fun m!3509813 () Bool)

(assert (=> d!887222 m!3509813))

(declare-fun m!3509815 () Bool)

(assert (=> d!887222 m!3509815))

(assert (=> d!887222 m!3507199))

(assert (=> b!3229662 m!3507141))

(assert (=> b!3229662 m!3509809))

(assert (=> b!3229664 m!3507141))

(assert (=> b!3229664 m!3507589))

(assert (=> b!3229664 m!3507141))

(declare-fun m!3509817 () Bool)

(assert (=> b!3229664 m!3509817))

(declare-fun m!3509819 () Bool)

(assert (=> b!3229664 m!3509819))

(declare-fun m!3509821 () Bool)

(assert (=> b!3229664 m!3509821))

(declare-fun m!3509823 () Bool)

(assert (=> b!3229664 m!3509823))

(declare-fun m!3509825 () Bool)

(assert (=> b!3229664 m!3509825))

(declare-fun m!3509827 () Bool)

(assert (=> b!3229664 m!3509827))

(declare-fun m!3509829 () Bool)

(assert (=> b!3229664 m!3509829))

(declare-fun m!3509831 () Bool)

(assert (=> b!3229664 m!3509831))

(declare-fun m!3509833 () Bool)

(assert (=> b!3229664 m!3509833))

(assert (=> b!3229664 m!3509825))

(declare-fun m!3509835 () Bool)

(assert (=> b!3229664 m!3509835))

(declare-fun m!3509837 () Bool)

(assert (=> b!3229664 m!3509837))

(assert (=> b!3229664 m!3509831))

(assert (=> b!3229664 m!3509817))

(assert (=> b!3229664 m!3507141))

(assert (=> b!3229664 m!3509829))

(declare-fun m!3509839 () Bool)

(assert (=> b!3229664 m!3509839))

(assert (=> b!3229664 m!3509835))

(assert (=> d!886758 d!887222))

(declare-fun bs!543203 () Bool)

(declare-fun d!887224 () Bool)

(assert (= bs!543203 (and d!887224 d!886734)))

(declare-fun lambda!118251 () Int)

(assert (=> bs!543203 (= (and (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241)))) (= (toValue!7374 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (toValue!7374 (transformation!5266 (rule!7724 separatorToken!241))))) (= lambda!118251 lambda!118238))))

(declare-fun bs!543204 () Bool)

(assert (= bs!543204 (and d!887224 d!886762)))

(assert (=> bs!543204 (= (and (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494))))) (= (toValue!7374 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (toValue!7374 (transformation!5266 (rule!7724 (h!41783 tokens!494)))))) (= lambda!118251 lambda!118239))))

(declare-fun bs!543205 () Bool)

(assert (= bs!543205 (and d!887224 d!886936)))

(assert (=> bs!543205 (= (and (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (toChars!7233 (transformation!5266 (h!41782 rules!2135)))) (= (toValue!7374 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (toValue!7374 (transformation!5266 (h!41782 rules!2135))))) (= lambda!118251 lambda!118249))))

(assert (=> d!887224 true))

(assert (=> d!887224 (< (dynLambda!14793 order!18765 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494)))))) (dynLambda!14797 order!18773 lambda!118251))))

(assert (=> d!887224 true))

(assert (=> d!887224 (< (dynLambda!14791 order!18761 (toValue!7374 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494)))))) (dynLambda!14797 order!18773 lambda!118251))))

(assert (=> d!887224 (= (semiInverseModEq!2171 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (toValue!7374 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494)))))) (Forall!1278 lambda!118251))))

(declare-fun bs!543206 () Bool)

(assert (= bs!543206 d!887224))

(declare-fun m!3509841 () Bool)

(assert (=> bs!543206 m!3509841))

(assert (=> d!886688 d!887224))

(declare-fun d!887226 () Bool)

(assert (=> d!887226 (= (list!12978 (_1!21028 lt!1095335)) (list!12980 (c!542434 (_1!21028 lt!1095335))))))

(declare-fun bs!543207 () Bool)

(assert (= bs!543207 d!887226))

(declare-fun m!3509843 () Bool)

(assert (=> bs!543207 m!3509843))

(assert (=> b!3228802 d!887226))

(assert (=> b!3228802 d!887112))

(assert (=> b!3228802 d!887116))

(assert (=> b!3228984 d!887208))

(declare-fun e!2014343 () List!36485)

(declare-fun b!3229665 () Bool)

(assert (=> b!3229665 (= e!2014343 (list!12979 (right!28644 (c!542433 (printWithSeparatorToken!72 thiss!18206 lt!1095068 separatorToken!241)))))))

(declare-fun b!3229666 () Bool)

(assert (=> b!3229666 (= e!2014343 (Cons!36361 (h!41781 (list!12979 (left!28314 (c!542433 (printWithSeparatorToken!72 thiss!18206 lt!1095068 separatorToken!241))))) (++!8756 (t!241330 (list!12979 (left!28314 (c!542433 (printWithSeparatorToken!72 thiss!18206 lt!1095068 separatorToken!241))))) (list!12979 (right!28644 (c!542433 (printWithSeparatorToken!72 thiss!18206 lt!1095068 separatorToken!241)))))))))

(declare-fun b!3229668 () Bool)

(declare-fun lt!1095809 () List!36485)

(declare-fun e!2014342 () Bool)

(assert (=> b!3229668 (= e!2014342 (or (not (= (list!12979 (right!28644 (c!542433 (printWithSeparatorToken!72 thiss!18206 lt!1095068 separatorToken!241)))) Nil!36361)) (= lt!1095809 (list!12979 (left!28314 (c!542433 (printWithSeparatorToken!72 thiss!18206 lt!1095068 separatorToken!241)))))))))

(declare-fun b!3229667 () Bool)

(declare-fun res!1315238 () Bool)

(assert (=> b!3229667 (=> (not res!1315238) (not e!2014342))))

(assert (=> b!3229667 (= res!1315238 (= (size!27430 lt!1095809) (+ (size!27430 (list!12979 (left!28314 (c!542433 (printWithSeparatorToken!72 thiss!18206 lt!1095068 separatorToken!241))))) (size!27430 (list!12979 (right!28644 (c!542433 (printWithSeparatorToken!72 thiss!18206 lt!1095068 separatorToken!241))))))))))

(declare-fun d!887228 () Bool)

(assert (=> d!887228 e!2014342))

(declare-fun res!1315239 () Bool)

(assert (=> d!887228 (=> (not res!1315239) (not e!2014342))))

(assert (=> d!887228 (= res!1315239 (= (content!4918 lt!1095809) ((_ map or) (content!4918 (list!12979 (left!28314 (c!542433 (printWithSeparatorToken!72 thiss!18206 lt!1095068 separatorToken!241))))) (content!4918 (list!12979 (right!28644 (c!542433 (printWithSeparatorToken!72 thiss!18206 lt!1095068 separatorToken!241))))))))))

(assert (=> d!887228 (= lt!1095809 e!2014343)))

(declare-fun c!542764 () Bool)

(assert (=> d!887228 (= c!542764 ((_ is Nil!36361) (list!12979 (left!28314 (c!542433 (printWithSeparatorToken!72 thiss!18206 lt!1095068 separatorToken!241))))))))

(assert (=> d!887228 (= (++!8756 (list!12979 (left!28314 (c!542433 (printWithSeparatorToken!72 thiss!18206 lt!1095068 separatorToken!241)))) (list!12979 (right!28644 (c!542433 (printWithSeparatorToken!72 thiss!18206 lt!1095068 separatorToken!241))))) lt!1095809)))

(assert (= (and d!887228 c!542764) b!3229665))

(assert (= (and d!887228 (not c!542764)) b!3229666))

(assert (= (and d!887228 res!1315239) b!3229667))

(assert (= (and b!3229667 res!1315238) b!3229668))

(assert (=> b!3229666 m!3507753))

(declare-fun m!3509845 () Bool)

(assert (=> b!3229666 m!3509845))

(declare-fun m!3509847 () Bool)

(assert (=> b!3229667 m!3509847))

(assert (=> b!3229667 m!3507751))

(declare-fun m!3509849 () Bool)

(assert (=> b!3229667 m!3509849))

(assert (=> b!3229667 m!3507753))

(declare-fun m!3509851 () Bool)

(assert (=> b!3229667 m!3509851))

(declare-fun m!3509853 () Bool)

(assert (=> d!887228 m!3509853))

(assert (=> d!887228 m!3507751))

(declare-fun m!3509855 () Bool)

(assert (=> d!887228 m!3509855))

(assert (=> d!887228 m!3507753))

(declare-fun m!3509857 () Bool)

(assert (=> d!887228 m!3509857))

(assert (=> b!3228569 d!887228))

(declare-fun e!2014345 () List!36485)

(declare-fun b!3229672 () Bool)

(assert (=> b!3229672 (= e!2014345 (++!8756 (list!12979 (left!28314 (left!28314 (c!542433 (printWithSeparatorToken!72 thiss!18206 lt!1095068 separatorToken!241))))) (list!12979 (right!28644 (left!28314 (c!542433 (printWithSeparatorToken!72 thiss!18206 lt!1095068 separatorToken!241)))))))))

(declare-fun b!3229671 () Bool)

(assert (=> b!3229671 (= e!2014345 (list!12981 (xs!14025 (left!28314 (c!542433 (printWithSeparatorToken!72 thiss!18206 lt!1095068 separatorToken!241))))))))

(declare-fun b!3229670 () Bool)

(declare-fun e!2014344 () List!36485)

(assert (=> b!3229670 (= e!2014344 e!2014345)))

(declare-fun c!542766 () Bool)

(assert (=> b!3229670 (= c!542766 ((_ is Leaf!17151) (left!28314 (c!542433 (printWithSeparatorToken!72 thiss!18206 lt!1095068 separatorToken!241)))))))

(declare-fun c!542765 () Bool)

(declare-fun d!887230 () Bool)

(assert (=> d!887230 (= c!542765 ((_ is Empty!10907) (left!28314 (c!542433 (printWithSeparatorToken!72 thiss!18206 lt!1095068 separatorToken!241)))))))

(assert (=> d!887230 (= (list!12979 (left!28314 (c!542433 (printWithSeparatorToken!72 thiss!18206 lt!1095068 separatorToken!241)))) e!2014344)))

(declare-fun b!3229669 () Bool)

(assert (=> b!3229669 (= e!2014344 Nil!36361)))

(assert (= (and d!887230 c!542765) b!3229669))

(assert (= (and d!887230 (not c!542765)) b!3229670))

(assert (= (and b!3229670 c!542766) b!3229671))

(assert (= (and b!3229670 (not c!542766)) b!3229672))

(declare-fun m!3509859 () Bool)

(assert (=> b!3229672 m!3509859))

(declare-fun m!3509861 () Bool)

(assert (=> b!3229672 m!3509861))

(assert (=> b!3229672 m!3509859))

(assert (=> b!3229672 m!3509861))

(declare-fun m!3509863 () Bool)

(assert (=> b!3229672 m!3509863))

(declare-fun m!3509865 () Bool)

(assert (=> b!3229671 m!3509865))

(assert (=> b!3228569 d!887230))

(declare-fun e!2014347 () List!36485)

(declare-fun b!3229676 () Bool)

(assert (=> b!3229676 (= e!2014347 (++!8756 (list!12979 (left!28314 (right!28644 (c!542433 (printWithSeparatorToken!72 thiss!18206 lt!1095068 separatorToken!241))))) (list!12979 (right!28644 (right!28644 (c!542433 (printWithSeparatorToken!72 thiss!18206 lt!1095068 separatorToken!241)))))))))

(declare-fun b!3229675 () Bool)

(assert (=> b!3229675 (= e!2014347 (list!12981 (xs!14025 (right!28644 (c!542433 (printWithSeparatorToken!72 thiss!18206 lt!1095068 separatorToken!241))))))))

(declare-fun b!3229674 () Bool)

(declare-fun e!2014346 () List!36485)

(assert (=> b!3229674 (= e!2014346 e!2014347)))

(declare-fun c!542768 () Bool)

(assert (=> b!3229674 (= c!542768 ((_ is Leaf!17151) (right!28644 (c!542433 (printWithSeparatorToken!72 thiss!18206 lt!1095068 separatorToken!241)))))))

(declare-fun d!887232 () Bool)

(declare-fun c!542767 () Bool)

(assert (=> d!887232 (= c!542767 ((_ is Empty!10907) (right!28644 (c!542433 (printWithSeparatorToken!72 thiss!18206 lt!1095068 separatorToken!241)))))))

(assert (=> d!887232 (= (list!12979 (right!28644 (c!542433 (printWithSeparatorToken!72 thiss!18206 lt!1095068 separatorToken!241)))) e!2014346)))

(declare-fun b!3229673 () Bool)

(assert (=> b!3229673 (= e!2014346 Nil!36361)))

(assert (= (and d!887232 c!542767) b!3229673))

(assert (= (and d!887232 (not c!542767)) b!3229674))

(assert (= (and b!3229674 c!542768) b!3229675))

(assert (= (and b!3229674 (not c!542768)) b!3229676))

(declare-fun m!3509867 () Bool)

(assert (=> b!3229676 m!3509867))

(declare-fun m!3509869 () Bool)

(assert (=> b!3229676 m!3509869))

(assert (=> b!3229676 m!3509867))

(assert (=> b!3229676 m!3509869))

(declare-fun m!3509871 () Bool)

(assert (=> b!3229676 m!3509871))

(declare-fun m!3509873 () Bool)

(assert (=> b!3229675 m!3509873))

(assert (=> b!3228569 d!887232))

(declare-fun d!887234 () Bool)

(assert (=> d!887234 (= (inv!49246 (tag!5798 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494)))))) (= (mod (str.len (value!170540 (tag!5798 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494))))))) 2) 0))))

(assert (=> b!3229129 d!887234))

(declare-fun d!887236 () Bool)

(declare-fun res!1315240 () Bool)

(declare-fun e!2014348 () Bool)

(assert (=> d!887236 (=> (not res!1315240) (not e!2014348))))

(assert (=> d!887236 (= res!1315240 (semiInverseModEq!2171 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494)))))) (toValue!7374 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494))))))))))

(assert (=> d!887236 (= (inv!49249 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494)))))) e!2014348)))

(declare-fun b!3229677 () Bool)

(assert (=> b!3229677 (= e!2014348 (equivClasses!2070 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494)))))) (toValue!7374 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494))))))))))

(assert (= (and d!887236 res!1315240) b!3229677))

(declare-fun m!3509875 () Bool)

(assert (=> d!887236 m!3509875))

(declare-fun m!3509877 () Bool)

(assert (=> b!3229677 m!3509877))

(assert (=> b!3229129 d!887236))

(declare-fun d!887238 () Bool)

(declare-fun lt!1095810 () Int)

(assert (=> d!887238 (>= lt!1095810 0)))

(declare-fun e!2014349 () Int)

(assert (=> d!887238 (= lt!1095810 e!2014349)))

(declare-fun c!542769 () Bool)

(assert (=> d!887238 (= c!542769 ((_ is Nil!36361) (list!12975 (seqFromList!3595 lt!1095073))))))

(assert (=> d!887238 (= (size!27430 (list!12975 (seqFromList!3595 lt!1095073))) lt!1095810)))

(declare-fun b!3229678 () Bool)

(assert (=> b!3229678 (= e!2014349 0)))

(declare-fun b!3229679 () Bool)

(assert (=> b!3229679 (= e!2014349 (+ 1 (size!27430 (t!241330 (list!12975 (seqFromList!3595 lt!1095073))))))))

(assert (= (and d!887238 c!542769) b!3229678))

(assert (= (and d!887238 (not c!542769)) b!3229679))

(declare-fun m!3509879 () Bool)

(assert (=> b!3229679 m!3509879))

(assert (=> d!886540 d!887238))

(assert (=> d!886540 d!886776))

(declare-fun d!887240 () Bool)

(declare-fun lt!1095813 () Int)

(assert (=> d!887240 (= lt!1095813 (size!27430 (list!12979 (c!542433 (seqFromList!3595 lt!1095073)))))))

(assert (=> d!887240 (= lt!1095813 (ite ((_ is Empty!10907) (c!542433 (seqFromList!3595 lt!1095073))) 0 (ite ((_ is Leaf!17151) (c!542433 (seqFromList!3595 lt!1095073))) (csize!22045 (c!542433 (seqFromList!3595 lt!1095073))) (csize!22044 (c!542433 (seqFromList!3595 lt!1095073))))))))

(assert (=> d!887240 (= (size!27432 (c!542433 (seqFromList!3595 lt!1095073))) lt!1095813)))

(declare-fun bs!543208 () Bool)

(assert (= bs!543208 d!887240))

(assert (=> bs!543208 m!3508261))

(assert (=> bs!543208 m!3508261))

(declare-fun m!3509881 () Bool)

(assert (=> bs!543208 m!3509881))

(assert (=> d!886540 d!887240))

(declare-fun d!887242 () Bool)

(declare-fun lt!1095814 () Int)

(assert (=> d!887242 (= lt!1095814 (size!27433 (list!12978 (_1!21028 lt!1095332))))))

(assert (=> d!887242 (= lt!1095814 (size!27434 (c!542434 (_1!21028 lt!1095332))))))

(assert (=> d!887242 (= (size!27429 (_1!21028 lt!1095332)) lt!1095814)))

(declare-fun bs!543209 () Bool)

(assert (= bs!543209 d!887242))

(assert (=> bs!543209 m!3508203))

(assert (=> bs!543209 m!3508203))

(declare-fun m!3509883 () Bool)

(assert (=> bs!543209 m!3509883))

(declare-fun m!3509885 () Bool)

(assert (=> bs!543209 m!3509885))

(assert (=> d!886756 d!887242))

(declare-fun b!3229694 () Bool)

(declare-fun e!2014358 () tuple2!35788)

(assert (=> b!3229694 (= e!2014358 (tuple2!35789 (BalanceConc!21431 Empty!10908) (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494)))))))

(declare-fun b!3229695 () Bool)

(declare-fun e!2014359 () tuple2!35788)

(declare-fun lt!1095835 () BalanceConc!21428)

(assert (=> b!3229695 (= e!2014359 (tuple2!35789 (BalanceConc!21431 Empty!10908) lt!1095835))))

(declare-fun d!887244 () Bool)

(declare-fun e!2014357 () Bool)

(assert (=> d!887244 e!2014357))

(declare-fun res!1315243 () Bool)

(assert (=> d!887244 (=> (not res!1315243) (not e!2014357))))

(declare-fun lt!1095833 () tuple2!35788)

(assert (=> d!887244 (= res!1315243 (= (list!12978 (_1!21028 lt!1095833)) (list!12978 (_1!21028 (lexRec!694 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494))))))))))

(declare-fun e!2014356 () tuple2!35788)

(assert (=> d!887244 (= lt!1095833 e!2014356)))

(declare-fun c!542775 () Bool)

(declare-fun lt!1095831 () Option!7217)

(assert (=> d!887244 (= c!542775 ((_ is Some!7216) lt!1095831))))

(assert (=> d!887244 (= lt!1095831 (maxPrefixZipperSequenceV2!481 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494))) (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494)))))))

(declare-fun lt!1095829 () Unit!50946)

(declare-fun lt!1095846 () Unit!50946)

(assert (=> d!887244 (= lt!1095829 lt!1095846)))

(declare-fun lt!1095826 () List!36485)

(declare-fun lt!1095822 () List!36485)

(assert (=> d!887244 (isSuffix!856 lt!1095826 (++!8756 lt!1095822 lt!1095826))))

(assert (=> d!887244 (= lt!1095846 (lemmaConcatTwoListThenFSndIsSuffix!541 lt!1095822 lt!1095826))))

(assert (=> d!887244 (= lt!1095826 (list!12975 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494)))))))

(assert (=> d!887244 (= lt!1095822 (list!12975 (BalanceConc!21429 Empty!10907)))))

(assert (=> d!887244 (= (lexTailRecV2!947 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494))) (BalanceConc!21429 Empty!10907) (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494))) (BalanceConc!21431 Empty!10908)) lt!1095833)))

(declare-fun b!3229696 () Bool)

(assert (=> b!3229696 (= e!2014357 (= (list!12975 (_2!21028 lt!1095833)) (list!12975 (_2!21028 (lexRec!694 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494))))))))))

(declare-fun b!3229697 () Bool)

(assert (=> b!3229697 (= e!2014356 (tuple2!35789 (BalanceConc!21431 Empty!10908) (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494)))))))

(declare-fun b!3229698 () Bool)

(declare-fun lt!1095832 () BalanceConc!21428)

(assert (=> b!3229698 (= e!2014356 (lexTailRecV2!947 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494))) lt!1095832 (_2!21033 (v!35826 lt!1095831)) (append!874 (BalanceConc!21431 Empty!10908) (_1!21033 (v!35826 lt!1095831)))))))

(declare-fun lt!1095821 () tuple2!35788)

(assert (=> b!3229698 (= lt!1095821 (lexRec!694 thiss!18206 rules!2135 (_2!21033 (v!35826 lt!1095831))))))

(declare-fun lt!1095844 () List!36485)

(assert (=> b!3229698 (= lt!1095844 (list!12975 (BalanceConc!21429 Empty!10907)))))

(declare-fun lt!1095823 () List!36485)

(assert (=> b!3229698 (= lt!1095823 (list!12975 (charsOf!3282 (_1!21033 (v!35826 lt!1095831)))))))

(declare-fun lt!1095819 () List!36485)

(assert (=> b!3229698 (= lt!1095819 (list!12975 (_2!21033 (v!35826 lt!1095831))))))

(declare-fun lt!1095837 () Unit!50946)

(assert (=> b!3229698 (= lt!1095837 (lemmaConcatAssociativity!1789 lt!1095844 lt!1095823 lt!1095819))))

(assert (=> b!3229698 (= (++!8756 (++!8756 lt!1095844 lt!1095823) lt!1095819) (++!8756 lt!1095844 (++!8756 lt!1095823 lt!1095819)))))

(declare-fun lt!1095845 () Unit!50946)

(assert (=> b!3229698 (= lt!1095845 lt!1095837)))

(declare-fun lt!1095828 () Option!7217)

(assert (=> b!3229698 (= lt!1095828 (maxPrefixZipperSequence!1087 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494)))))))

(declare-fun c!542777 () Bool)

(assert (=> b!3229698 (= c!542777 ((_ is Some!7216) lt!1095828))))

(assert (=> b!3229698 (= (lexRec!694 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494)))) e!2014358)))

(declare-fun lt!1095841 () Unit!50946)

(declare-fun Unit!50954 () Unit!50946)

(assert (=> b!3229698 (= lt!1095841 Unit!50954)))

(declare-fun lt!1095839 () List!36487)

(assert (=> b!3229698 (= lt!1095839 (list!12978 (BalanceConc!21431 Empty!10908)))))

(declare-fun lt!1095843 () List!36487)

(assert (=> b!3229698 (= lt!1095843 (Cons!36363 (_1!21033 (v!35826 lt!1095831)) Nil!36363))))

(declare-fun lt!1095842 () List!36487)

(assert (=> b!3229698 (= lt!1095842 (list!12978 (_1!21028 lt!1095821)))))

(declare-fun lt!1095836 () Unit!50946)

(assert (=> b!3229698 (= lt!1095836 (lemmaConcatAssociativity!1790 lt!1095839 lt!1095843 lt!1095842))))

(assert (=> b!3229698 (= (++!8760 (++!8760 lt!1095839 lt!1095843) lt!1095842) (++!8760 lt!1095839 (++!8760 lt!1095843 lt!1095842)))))

(declare-fun lt!1095851 () Unit!50946)

(assert (=> b!3229698 (= lt!1095851 lt!1095836)))

(declare-fun lt!1095838 () List!36485)

(assert (=> b!3229698 (= lt!1095838 (++!8756 (list!12975 (BalanceConc!21429 Empty!10907)) (list!12975 (charsOf!3282 (_1!21033 (v!35826 lt!1095831))))))))

(declare-fun lt!1095852 () List!36485)

(assert (=> b!3229698 (= lt!1095852 (list!12975 (_2!21033 (v!35826 lt!1095831))))))

(declare-fun lt!1095834 () List!36487)

(assert (=> b!3229698 (= lt!1095834 (list!12978 (append!874 (BalanceConc!21431 Empty!10908) (_1!21033 (v!35826 lt!1095831)))))))

(declare-fun lt!1095850 () Unit!50946)

(assert (=> b!3229698 (= lt!1095850 (lemmaLexThenLexPrefix!459 thiss!18206 rules!2135 lt!1095838 lt!1095852 lt!1095834 (list!12978 (_1!21028 lt!1095821)) (list!12975 (_2!21028 lt!1095821))))))

(assert (=> b!3229698 (= (lexList!1335 thiss!18206 rules!2135 lt!1095838) (tuple2!35793 lt!1095834 Nil!36361))))

(declare-fun lt!1095824 () Unit!50946)

(assert (=> b!3229698 (= lt!1095824 lt!1095850)))

(assert (=> b!3229698 (= lt!1095835 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (_1!21033 (v!35826 lt!1095831)))))))

(declare-fun lt!1095827 () Option!7217)

(assert (=> b!3229698 (= lt!1095827 (maxPrefixZipperSequence!1087 thiss!18206 rules!2135 lt!1095835))))

(declare-fun c!542774 () Bool)

(assert (=> b!3229698 (= c!542774 ((_ is Some!7216) lt!1095827))))

(assert (=> b!3229698 (= (lexRec!694 thiss!18206 rules!2135 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (_1!21033 (v!35826 lt!1095831))))) e!2014359)))

(declare-fun lt!1095830 () Unit!50946)

(declare-fun Unit!50955 () Unit!50946)

(assert (=> b!3229698 (= lt!1095830 Unit!50955)))

(assert (=> b!3229698 (= lt!1095832 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (_1!21033 (v!35826 lt!1095831)))))))

(declare-fun lt!1095849 () List!36485)

(assert (=> b!3229698 (= lt!1095849 (list!12975 lt!1095832))))

(declare-fun lt!1095840 () List!36485)

(assert (=> b!3229698 (= lt!1095840 (list!12975 (_2!21033 (v!35826 lt!1095831))))))

(declare-fun lt!1095848 () Unit!50946)

(assert (=> b!3229698 (= lt!1095848 (lemmaConcatTwoListThenFSndIsSuffix!541 lt!1095849 lt!1095840))))

(assert (=> b!3229698 (isSuffix!856 lt!1095840 (++!8756 lt!1095849 lt!1095840))))

(declare-fun lt!1095825 () Unit!50946)

(assert (=> b!3229698 (= lt!1095825 lt!1095848)))

(declare-fun lt!1095820 () tuple2!35788)

(declare-fun b!3229699 () Bool)

(assert (=> b!3229699 (= lt!1095820 (lexRec!694 thiss!18206 rules!2135 (_2!21033 (v!35826 lt!1095828))))))

(assert (=> b!3229699 (= e!2014358 (tuple2!35789 (prepend!1182 (_1!21028 lt!1095820) (_1!21033 (v!35826 lt!1095828))) (_2!21028 lt!1095820)))))

(declare-fun lt!1095847 () tuple2!35788)

(declare-fun b!3229700 () Bool)

(assert (=> b!3229700 (= lt!1095847 (lexRec!694 thiss!18206 rules!2135 (_2!21033 (v!35826 lt!1095827))))))

(assert (=> b!3229700 (= e!2014359 (tuple2!35789 (prepend!1182 (_1!21028 lt!1095847) (_1!21033 (v!35826 lt!1095827))) (_2!21028 lt!1095847)))))

(assert (= (and d!887244 c!542775) b!3229698))

(assert (= (and d!887244 (not c!542775)) b!3229697))

(assert (= (and b!3229698 c!542777) b!3229699))

(assert (= (and b!3229698 (not c!542777)) b!3229694))

(assert (= (and b!3229698 c!542774) b!3229700))

(assert (= (and b!3229698 (not c!542774)) b!3229695))

(assert (= (and d!887244 res!1315243) b!3229696))

(declare-fun m!3509887 () Bool)

(assert (=> b!3229696 m!3509887))

(assert (=> b!3229696 m!3507591))

(declare-fun m!3509889 () Bool)

(assert (=> b!3229696 m!3509889))

(declare-fun m!3509891 () Bool)

(assert (=> b!3229696 m!3509891))

(declare-fun m!3509893 () Bool)

(assert (=> b!3229698 m!3509893))

(declare-fun m!3509895 () Bool)

(assert (=> b!3229698 m!3509895))

(declare-fun m!3509897 () Bool)

(assert (=> b!3229698 m!3509897))

(declare-fun m!3509899 () Bool)

(assert (=> b!3229698 m!3509899))

(declare-fun m!3509901 () Bool)

(assert (=> b!3229698 m!3509901))

(declare-fun m!3509903 () Bool)

(assert (=> b!3229698 m!3509903))

(declare-fun m!3509905 () Bool)

(assert (=> b!3229698 m!3509905))

(assert (=> b!3229698 m!3507591))

(assert (=> b!3229698 m!3509889))

(declare-fun m!3509907 () Bool)

(assert (=> b!3229698 m!3509907))

(assert (=> b!3229698 m!3507199))

(declare-fun m!3509909 () Bool)

(assert (=> b!3229698 m!3509909))

(declare-fun m!3509911 () Bool)

(assert (=> b!3229698 m!3509911))

(declare-fun m!3509913 () Bool)

(assert (=> b!3229698 m!3509913))

(declare-fun m!3509915 () Bool)

(assert (=> b!3229698 m!3509915))

(assert (=> b!3229698 m!3507591))

(assert (=> b!3229698 m!3509915))

(declare-fun m!3509917 () Bool)

(assert (=> b!3229698 m!3509917))

(declare-fun m!3509919 () Bool)

(assert (=> b!3229698 m!3509919))

(declare-fun m!3509921 () Bool)

(assert (=> b!3229698 m!3509921))

(assert (=> b!3229698 m!3509903))

(declare-fun m!3509923 () Bool)

(assert (=> b!3229698 m!3509923))

(declare-fun m!3509925 () Bool)

(assert (=> b!3229698 m!3509925))

(assert (=> b!3229698 m!3509899))

(assert (=> b!3229698 m!3509915))

(declare-fun m!3509927 () Bool)

(assert (=> b!3229698 m!3509927))

(assert (=> b!3229698 m!3509911))

(declare-fun m!3509929 () Bool)

(assert (=> b!3229698 m!3509929))

(declare-fun m!3509931 () Bool)

(assert (=> b!3229698 m!3509931))

(assert (=> b!3229698 m!3509903))

(assert (=> b!3229698 m!3507199))

(assert (=> b!3229698 m!3509923))

(declare-fun m!3509933 () Bool)

(assert (=> b!3229698 m!3509933))

(assert (=> b!3229698 m!3508575))

(assert (=> b!3229698 m!3509925))

(declare-fun m!3509935 () Bool)

(assert (=> b!3229698 m!3509935))

(declare-fun m!3509937 () Bool)

(assert (=> b!3229698 m!3509937))

(assert (=> b!3229698 m!3509905))

(declare-fun m!3509939 () Bool)

(assert (=> b!3229698 m!3509939))

(declare-fun m!3509941 () Bool)

(assert (=> b!3229698 m!3509941))

(assert (=> b!3229698 m!3507591))

(declare-fun m!3509943 () Bool)

(assert (=> b!3229698 m!3509943))

(assert (=> b!3229698 m!3509937))

(declare-fun m!3509945 () Bool)

(assert (=> b!3229698 m!3509945))

(declare-fun m!3509947 () Bool)

(assert (=> b!3229698 m!3509947))

(assert (=> b!3229698 m!3509947))

(declare-fun m!3509949 () Bool)

(assert (=> b!3229698 m!3509949))

(declare-fun m!3509951 () Bool)

(assert (=> b!3229698 m!3509951))

(assert (=> b!3229698 m!3509909))

(assert (=> b!3229698 m!3509929))

(declare-fun m!3509953 () Bool)

(assert (=> b!3229700 m!3509953))

(declare-fun m!3509955 () Bool)

(assert (=> b!3229700 m!3509955))

(assert (=> d!887244 m!3507591))

(assert (=> d!887244 m!3507591))

(declare-fun m!3509957 () Bool)

(assert (=> d!887244 m!3509957))

(assert (=> d!887244 m!3507591))

(assert (=> d!887244 m!3509889))

(declare-fun m!3509959 () Bool)

(assert (=> d!887244 m!3509959))

(declare-fun m!3509961 () Bool)

(assert (=> d!887244 m!3509961))

(declare-fun m!3509963 () Bool)

(assert (=> d!887244 m!3509963))

(assert (=> d!887244 m!3509959))

(declare-fun m!3509965 () Bool)

(assert (=> d!887244 m!3509965))

(assert (=> d!887244 m!3507591))

(assert (=> d!887244 m!3508199))

(assert (=> d!887244 m!3507199))

(declare-fun m!3509967 () Bool)

(assert (=> d!887244 m!3509967))

(declare-fun m!3509969 () Bool)

(assert (=> b!3229699 m!3509969))

(declare-fun m!3509971 () Bool)

(assert (=> b!3229699 m!3509971))

(assert (=> d!886756 d!887244))

(declare-fun d!887246 () Bool)

(declare-fun lt!1095857 () Int)

(assert (=> d!887246 (>= lt!1095857 0)))

(declare-fun e!2014372 () Int)

(assert (=> d!887246 (= lt!1095857 e!2014372)))

(declare-fun c!542789 () Bool)

(assert (=> d!887246 (= c!542789 ((_ is Nil!36361) (t!241330 lt!1095073)))))

(assert (=> d!887246 (= (size!27430 (t!241330 lt!1095073)) lt!1095857)))

(declare-fun b!3229721 () Bool)

(assert (=> b!3229721 (= e!2014372 0)))

(declare-fun b!3229722 () Bool)

(assert (=> b!3229722 (= e!2014372 (+ 1 (size!27430 (t!241330 (t!241330 lt!1095073)))))))

(assert (= (and d!887246 c!542789) b!3229721))

(assert (= (and d!887246 (not c!542789)) b!3229722))

(declare-fun m!3509973 () Bool)

(assert (=> b!3229722 m!3509973))

(assert (=> b!3228740 d!887246))

(declare-fun b!3229723 () Bool)

(declare-fun e!2014374 () List!36485)

(assert (=> b!3229723 (= e!2014374 (list!12979 (right!28644 (c!542433 lt!1095070))))))

(declare-fun b!3229724 () Bool)

(assert (=> b!3229724 (= e!2014374 (Cons!36361 (h!41781 (list!12979 (left!28314 (c!542433 lt!1095070)))) (++!8756 (t!241330 (list!12979 (left!28314 (c!542433 lt!1095070)))) (list!12979 (right!28644 (c!542433 lt!1095070))))))))

(declare-fun b!3229726 () Bool)

(declare-fun e!2014373 () Bool)

(declare-fun lt!1095858 () List!36485)

(assert (=> b!3229726 (= e!2014373 (or (not (= (list!12979 (right!28644 (c!542433 lt!1095070))) Nil!36361)) (= lt!1095858 (list!12979 (left!28314 (c!542433 lt!1095070))))))))

(declare-fun b!3229725 () Bool)

(declare-fun res!1315244 () Bool)

(assert (=> b!3229725 (=> (not res!1315244) (not e!2014373))))

(assert (=> b!3229725 (= res!1315244 (= (size!27430 lt!1095858) (+ (size!27430 (list!12979 (left!28314 (c!542433 lt!1095070)))) (size!27430 (list!12979 (right!28644 (c!542433 lt!1095070)))))))))

(declare-fun d!887248 () Bool)

(assert (=> d!887248 e!2014373))

(declare-fun res!1315245 () Bool)

(assert (=> d!887248 (=> (not res!1315245) (not e!2014373))))

(assert (=> d!887248 (= res!1315245 (= (content!4918 lt!1095858) ((_ map or) (content!4918 (list!12979 (left!28314 (c!542433 lt!1095070)))) (content!4918 (list!12979 (right!28644 (c!542433 lt!1095070)))))))))

(assert (=> d!887248 (= lt!1095858 e!2014374)))

(declare-fun c!542790 () Bool)

(assert (=> d!887248 (= c!542790 ((_ is Nil!36361) (list!12979 (left!28314 (c!542433 lt!1095070)))))))

(assert (=> d!887248 (= (++!8756 (list!12979 (left!28314 (c!542433 lt!1095070))) (list!12979 (right!28644 (c!542433 lt!1095070)))) lt!1095858)))

(assert (= (and d!887248 c!542790) b!3229723))

(assert (= (and d!887248 (not c!542790)) b!3229724))

(assert (= (and d!887248 res!1315245) b!3229725))

(assert (= (and b!3229725 res!1315244) b!3229726))

(assert (=> b!3229724 m!3507781))

(declare-fun m!3509975 () Bool)

(assert (=> b!3229724 m!3509975))

(declare-fun m!3509977 () Bool)

(assert (=> b!3229725 m!3509977))

(assert (=> b!3229725 m!3507779))

(declare-fun m!3509979 () Bool)

(assert (=> b!3229725 m!3509979))

(assert (=> b!3229725 m!3507781))

(declare-fun m!3509981 () Bool)

(assert (=> b!3229725 m!3509981))

(declare-fun m!3509983 () Bool)

(assert (=> d!887248 m!3509983))

(assert (=> d!887248 m!3507779))

(declare-fun m!3509985 () Bool)

(assert (=> d!887248 m!3509985))

(assert (=> d!887248 m!3507781))

(declare-fun m!3509987 () Bool)

(assert (=> d!887248 m!3509987))

(assert (=> b!3228580 d!887248))

(declare-fun b!3229730 () Bool)

(declare-fun e!2014376 () List!36485)

(assert (=> b!3229730 (= e!2014376 (++!8756 (list!12979 (left!28314 (left!28314 (c!542433 lt!1095070)))) (list!12979 (right!28644 (left!28314 (c!542433 lt!1095070))))))))

(declare-fun b!3229729 () Bool)

(assert (=> b!3229729 (= e!2014376 (list!12981 (xs!14025 (left!28314 (c!542433 lt!1095070)))))))

(declare-fun b!3229728 () Bool)

(declare-fun e!2014375 () List!36485)

(assert (=> b!3229728 (= e!2014375 e!2014376)))

(declare-fun c!542792 () Bool)

(assert (=> b!3229728 (= c!542792 ((_ is Leaf!17151) (left!28314 (c!542433 lt!1095070))))))

(declare-fun d!887250 () Bool)

(declare-fun c!542791 () Bool)

(assert (=> d!887250 (= c!542791 ((_ is Empty!10907) (left!28314 (c!542433 lt!1095070))))))

(assert (=> d!887250 (= (list!12979 (left!28314 (c!542433 lt!1095070))) e!2014375)))

(declare-fun b!3229727 () Bool)

(assert (=> b!3229727 (= e!2014375 Nil!36361)))

(assert (= (and d!887250 c!542791) b!3229727))

(assert (= (and d!887250 (not c!542791)) b!3229728))

(assert (= (and b!3229728 c!542792) b!3229729))

(assert (= (and b!3229728 (not c!542792)) b!3229730))

(declare-fun m!3509989 () Bool)

(assert (=> b!3229730 m!3509989))

(declare-fun m!3509991 () Bool)

(assert (=> b!3229730 m!3509991))

(assert (=> b!3229730 m!3509989))

(assert (=> b!3229730 m!3509991))

(declare-fun m!3509993 () Bool)

(assert (=> b!3229730 m!3509993))

(declare-fun m!3509995 () Bool)

(assert (=> b!3229729 m!3509995))

(assert (=> b!3228580 d!887250))

(declare-fun b!3229734 () Bool)

(declare-fun e!2014378 () List!36485)

(assert (=> b!3229734 (= e!2014378 (++!8756 (list!12979 (left!28314 (right!28644 (c!542433 lt!1095070)))) (list!12979 (right!28644 (right!28644 (c!542433 lt!1095070))))))))

(declare-fun b!3229733 () Bool)

(assert (=> b!3229733 (= e!2014378 (list!12981 (xs!14025 (right!28644 (c!542433 lt!1095070)))))))

(declare-fun b!3229732 () Bool)

(declare-fun e!2014377 () List!36485)

(assert (=> b!3229732 (= e!2014377 e!2014378)))

(declare-fun c!542794 () Bool)

(assert (=> b!3229732 (= c!542794 ((_ is Leaf!17151) (right!28644 (c!542433 lt!1095070))))))

(declare-fun d!887252 () Bool)

(declare-fun c!542793 () Bool)

(assert (=> d!887252 (= c!542793 ((_ is Empty!10907) (right!28644 (c!542433 lt!1095070))))))

(assert (=> d!887252 (= (list!12979 (right!28644 (c!542433 lt!1095070))) e!2014377)))

(declare-fun b!3229731 () Bool)

(assert (=> b!3229731 (= e!2014377 Nil!36361)))

(assert (= (and d!887252 c!542793) b!3229731))

(assert (= (and d!887252 (not c!542793)) b!3229732))

(assert (= (and b!3229732 c!542794) b!3229733))

(assert (= (and b!3229732 (not c!542794)) b!3229734))

(declare-fun m!3509997 () Bool)

(assert (=> b!3229734 m!3509997))

(declare-fun m!3509999 () Bool)

(assert (=> b!3229734 m!3509999))

(assert (=> b!3229734 m!3509997))

(assert (=> b!3229734 m!3509999))

(declare-fun m!3510001 () Bool)

(assert (=> b!3229734 m!3510001))

(declare-fun m!3510003 () Bool)

(assert (=> b!3229733 m!3510003))

(assert (=> b!3228580 d!887252))

(declare-fun d!887254 () Bool)

(declare-fun res!1315246 () Bool)

(declare-fun e!2014379 () Bool)

(assert (=> d!887254 (=> res!1315246 e!2014379)))

(assert (=> d!887254 (= res!1315246 ((_ is Nil!36363) (t!241332 (t!241332 tokens!494))))))

(assert (=> d!887254 (= (forall!7470 (t!241332 (t!241332 tokens!494)) lambda!118207) e!2014379)))

(declare-fun b!3229735 () Bool)

(declare-fun e!2014380 () Bool)

(assert (=> b!3229735 (= e!2014379 e!2014380)))

(declare-fun res!1315247 () Bool)

(assert (=> b!3229735 (=> (not res!1315247) (not e!2014380))))

(assert (=> b!3229735 (= res!1315247 (dynLambda!14795 lambda!118207 (h!41783 (t!241332 (t!241332 tokens!494)))))))

(declare-fun b!3229736 () Bool)

(assert (=> b!3229736 (= e!2014380 (forall!7470 (t!241332 (t!241332 (t!241332 tokens!494))) lambda!118207))))

(assert (= (and d!887254 (not res!1315246)) b!3229735))

(assert (= (and b!3229735 res!1315247) b!3229736))

(declare-fun b_lambda!88971 () Bool)

(assert (=> (not b_lambda!88971) (not b!3229735)))

(declare-fun m!3510005 () Bool)

(assert (=> b!3229735 m!3510005))

(declare-fun m!3510007 () Bool)

(assert (=> b!3229736 m!3510007))

(assert (=> b!3228825 d!887254))

(assert (=> b!3228246 d!886674))

(declare-fun d!887256 () Bool)

(assert (=> d!887256 (= (inv!49254 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 0)))) (value!170541 (apply!8300 lt!1095069 0)))) (isBalanced!3247 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 0)))) (value!170541 (apply!8300 lt!1095069 0))))))))

(declare-fun bs!543210 () Bool)

(assert (= bs!543210 d!887256))

(declare-fun m!3510009 () Bool)

(assert (=> bs!543210 m!3510009))

(assert (=> tb!159915 d!887256))

(assert (=> b!3228576 d!886804))

(declare-fun d!887258 () Bool)

(declare-fun lt!1095860 () Bool)

(declare-fun e!2014381 () Bool)

(assert (=> d!887258 (= lt!1095860 e!2014381)))

(declare-fun res!1315248 () Bool)

(assert (=> d!887258 (=> (not res!1315248) (not e!2014381))))

(assert (=> d!887258 (= res!1315248 (= (list!12978 (_1!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 (list!12978 lt!1095068))))))) (list!12978 (singletonSeq!2362 (h!41783 (list!12978 lt!1095068))))))))

(declare-fun e!2014382 () Bool)

(assert (=> d!887258 (= lt!1095860 e!2014382)))

(declare-fun res!1315249 () Bool)

(assert (=> d!887258 (=> (not res!1315249) (not e!2014382))))

(declare-fun lt!1095859 () tuple2!35788)

(assert (=> d!887258 (= res!1315249 (= (size!27429 (_1!21028 lt!1095859)) 1))))

(assert (=> d!887258 (= lt!1095859 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 (list!12978 lt!1095068))))))))

(assert (=> d!887258 (not (isEmpty!20447 rules!2135))))

(assert (=> d!887258 (= (rulesProduceIndividualToken!2347 thiss!18206 rules!2135 (h!41783 (list!12978 lt!1095068))) lt!1095860)))

(declare-fun b!3229737 () Bool)

(declare-fun res!1315250 () Bool)

(assert (=> b!3229737 (=> (not res!1315250) (not e!2014382))))

(assert (=> b!3229737 (= res!1315250 (= (apply!8300 (_1!21028 lt!1095859) 0) (h!41783 (list!12978 lt!1095068))))))

(declare-fun b!3229738 () Bool)

(assert (=> b!3229738 (= e!2014382 (isEmpty!20455 (_2!21028 lt!1095859)))))

(declare-fun b!3229739 () Bool)

(assert (=> b!3229739 (= e!2014381 (isEmpty!20455 (_2!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 (list!12978 lt!1095068))))))))))

(assert (= (and d!887258 res!1315249) b!3229737))

(assert (= (and b!3229737 res!1315250) b!3229738))

(assert (= (and d!887258 res!1315248) b!3229739))

(declare-fun m!3510011 () Bool)

(assert (=> d!887258 m!3510011))

(declare-fun m!3510013 () Bool)

(assert (=> d!887258 m!3510013))

(declare-fun m!3510015 () Bool)

(assert (=> d!887258 m!3510015))

(declare-fun m!3510017 () Bool)

(assert (=> d!887258 m!3510017))

(declare-fun m!3510019 () Bool)

(assert (=> d!887258 m!3510019))

(assert (=> d!887258 m!3507125))

(assert (=> d!887258 m!3510011))

(declare-fun m!3510021 () Bool)

(assert (=> d!887258 m!3510021))

(assert (=> d!887258 m!3510011))

(assert (=> d!887258 m!3510015))

(declare-fun m!3510023 () Bool)

(assert (=> b!3229737 m!3510023))

(declare-fun m!3510025 () Bool)

(assert (=> b!3229738 m!3510025))

(assert (=> b!3229739 m!3510011))

(assert (=> b!3229739 m!3510011))

(assert (=> b!3229739 m!3510015))

(assert (=> b!3229739 m!3510015))

(assert (=> b!3229739 m!3510017))

(declare-fun m!3510027 () Bool)

(assert (=> b!3229739 m!3510027))

(assert (=> b!3228687 d!887258))

(declare-fun d!887260 () Bool)

(declare-fun lt!1095861 () Int)

(assert (=> d!887260 (>= lt!1095861 0)))

(declare-fun e!2014383 () Int)

(assert (=> d!887260 (= lt!1095861 e!2014383)))

(declare-fun c!542795 () Bool)

(assert (=> d!887260 (= c!542795 ((_ is Nil!36361) (t!241330 (list!12975 (charsOf!3282 separatorToken!241)))))))

(assert (=> d!887260 (= (size!27430 (t!241330 (list!12975 (charsOf!3282 separatorToken!241)))) lt!1095861)))

(declare-fun b!3229740 () Bool)

(assert (=> b!3229740 (= e!2014383 0)))

(declare-fun b!3229741 () Bool)

(assert (=> b!3229741 (= e!2014383 (+ 1 (size!27430 (t!241330 (t!241330 (list!12975 (charsOf!3282 separatorToken!241)))))))))

(assert (= (and d!887260 c!542795) b!3229740))

(assert (= (and d!887260 (not c!542795)) b!3229741))

(declare-fun m!3510029 () Bool)

(assert (=> b!3229741 m!3510029))

(assert (=> b!3228742 d!887260))

(declare-fun d!887262 () Bool)

(assert (=> d!887262 (= (list!12975 (_2!21028 lt!1095332)) (list!12979 (c!542433 (_2!21028 lt!1095332))))))

(declare-fun bs!543211 () Bool)

(assert (= bs!543211 d!887262))

(declare-fun m!3510031 () Bool)

(assert (=> bs!543211 m!3510031))

(assert (=> b!3228795 d!887262))

(declare-fun b!3229742 () Bool)

(declare-fun e!2014385 () tuple2!35792)

(assert (=> b!3229742 (= e!2014385 (tuple2!35793 Nil!36363 (list!12975 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494))))))))

(declare-fun b!3229743 () Bool)

(declare-fun e!2014386 () Bool)

(declare-fun lt!1095864 () tuple2!35792)

(assert (=> b!3229743 (= e!2014386 (not (isEmpty!20453 (_1!21030 lt!1095864))))))

(declare-fun d!887264 () Bool)

(declare-fun e!2014384 () Bool)

(assert (=> d!887264 e!2014384))

(declare-fun c!542796 () Bool)

(assert (=> d!887264 (= c!542796 (> (size!27433 (_1!21030 lt!1095864)) 0))))

(assert (=> d!887264 (= lt!1095864 e!2014385)))

(declare-fun c!542797 () Bool)

(declare-fun lt!1095863 () Option!7215)

(assert (=> d!887264 (= c!542797 ((_ is Some!7214) lt!1095863))))

(assert (=> d!887264 (= lt!1095863 (maxPrefix!2486 thiss!18206 rules!2135 (list!12975 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494))))))))

(assert (=> d!887264 (= (lexList!1335 thiss!18206 rules!2135 (list!12975 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494))))) lt!1095864)))

(declare-fun b!3229744 () Bool)

(declare-fun lt!1095862 () tuple2!35792)

(assert (=> b!3229744 (= e!2014385 (tuple2!35793 (Cons!36363 (_1!21031 (v!35824 lt!1095863)) (_1!21030 lt!1095862)) (_2!21030 lt!1095862)))))

(assert (=> b!3229744 (= lt!1095862 (lexList!1335 thiss!18206 rules!2135 (_2!21031 (v!35824 lt!1095863))))))

(declare-fun b!3229745 () Bool)

(assert (=> b!3229745 (= e!2014384 (= (_2!21030 lt!1095864) (list!12975 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494))))))))

(declare-fun b!3229746 () Bool)

(assert (=> b!3229746 (= e!2014384 e!2014386)))

(declare-fun res!1315251 () Bool)

(assert (=> b!3229746 (= res!1315251 (< (size!27430 (_2!21030 lt!1095864)) (size!27430 (list!12975 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494)))))))))

(assert (=> b!3229746 (=> (not res!1315251) (not e!2014386))))

(assert (= (and d!887264 c!542797) b!3229744))

(assert (= (and d!887264 (not c!542797)) b!3229742))

(assert (= (and d!887264 c!542796) b!3229746))

(assert (= (and d!887264 (not c!542796)) b!3229745))

(assert (= (and b!3229746 res!1315251) b!3229743))

(declare-fun m!3510033 () Bool)

(assert (=> b!3229743 m!3510033))

(declare-fun m!3510035 () Bool)

(assert (=> d!887264 m!3510035))

(assert (=> d!887264 m!3508199))

(declare-fun m!3510037 () Bool)

(assert (=> d!887264 m!3510037))

(declare-fun m!3510039 () Bool)

(assert (=> b!3229744 m!3510039))

(declare-fun m!3510041 () Bool)

(assert (=> b!3229746 m!3510041))

(assert (=> b!3229746 m!3508199))

(declare-fun m!3510043 () Bool)

(assert (=> b!3229746 m!3510043))

(assert (=> b!3228795 d!887264))

(declare-fun d!887266 () Bool)

(assert (=> d!887266 (= (list!12975 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494)))) (list!12979 (c!542433 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494))))))))

(declare-fun bs!543212 () Bool)

(assert (= bs!543212 d!887266))

(declare-fun m!3510045 () Bool)

(assert (=> bs!543212 m!3510045))

(assert (=> b!3228795 d!887266))

(declare-fun d!887268 () Bool)

(assert (=> d!887268 (= (list!12975 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (value!170541 (h!41783 (t!241332 tokens!494))))) (list!12979 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (value!170541 (h!41783 (t!241332 tokens!494)))))))))

(declare-fun bs!543213 () Bool)

(assert (= bs!543213 d!887268))

(declare-fun m!3510047 () Bool)

(assert (=> bs!543213 m!3510047))

(assert (=> b!3228832 d!887268))

(assert (=> d!886896 d!886894))

(assert (=> d!886896 d!886910))

(assert (=> d!886896 d!886888))

(declare-fun d!887270 () Bool)

(assert (=> d!887270 (= (tail!5232 (drop!1876 lt!1095096 0)) (drop!1876 lt!1095096 (+ 0 1)))))

(assert (=> d!887270 true))

(declare-fun _$28!614 () Unit!50946)

(assert (=> d!887270 (= (choose!18834 lt!1095096 0) _$28!614)))

(declare-fun bs!543214 () Bool)

(assert (= bs!543214 d!887270))

(assert (=> bs!543214 m!3507225))

(assert (=> bs!543214 m!3507225))

(assert (=> bs!543214 m!3507227))

(assert (=> bs!543214 m!3507211))

(assert (=> d!886896 d!887270))

(declare-fun d!887272 () Bool)

(assert (=> d!887272 (= (inv!49254 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))) (value!170541 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))) (isBalanced!3247 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))) (value!170541 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))))))

(declare-fun bs!543215 () Bool)

(assert (= bs!543215 d!887272))

(declare-fun m!3510049 () Bool)

(assert (=> bs!543215 m!3510049))

(assert (=> tb!159925 d!887272))

(assert (=> bs!543161 d!887258))

(assert (=> d!886890 d!886898))

(assert (=> d!886890 d!886892))

(assert (=> d!886890 d!886904))

(declare-fun d!887274 () Bool)

(assert (=> d!887274 (= (head!7088 (drop!1876 lt!1095094 0)) (apply!8301 lt!1095094 0))))

(assert (=> d!887274 true))

(declare-fun _$27!871 () Unit!50946)

(assert (=> d!887274 (= (choose!18833 lt!1095094 0) _$27!871)))

(declare-fun bs!543216 () Bool)

(assert (= bs!543216 d!887274))

(assert (=> bs!543216 m!3507215))

(assert (=> bs!543216 m!3507215))

(assert (=> bs!543216 m!3507217))

(assert (=> bs!543216 m!3507213))

(assert (=> d!886890 d!887274))

(declare-fun d!887276 () Bool)

(declare-fun choose!18840 (Int) Bool)

(assert (=> d!887276 (= (Forall2!875 lambda!118240) (choose!18840 lambda!118240))))

(declare-fun bs!543217 () Bool)

(assert (= bs!543217 d!887276))

(declare-fun m!3510051 () Bool)

(assert (=> bs!543217 m!3510051))

(assert (=> d!886790 d!887276))

(declare-fun d!887278 () Bool)

(declare-fun c!542800 () Bool)

(assert (=> d!887278 (= c!542800 ((_ is Nil!36360) (text!38921 (value!170541 separatorToken!241))))))

(declare-fun e!2014391 () Int)

(assert (=> d!887278 (= (charsToBigInt!0 (text!38921 (value!170541 separatorToken!241)) 0) e!2014391)))

(declare-fun b!3229759 () Bool)

(assert (=> b!3229759 (= e!2014391 0)))

(declare-fun b!3229760 () Bool)

(declare-fun charToBigInt!0 ((_ BitVec 16)) Int)

(assert (=> b!3229760 (= e!2014391 (charsToBigInt!0 (t!241329 (text!38921 (value!170541 separatorToken!241))) (+ (* 0 10) (charToBigInt!0 (h!41780 (text!38921 (value!170541 separatorToken!241)))))))))

(assert (= (and d!887278 c!542800) b!3229759))

(assert (= (and d!887278 (not c!542800)) b!3229760))

(declare-fun m!3510053 () Bool)

(assert (=> b!3229760 m!3510053))

(declare-fun m!3510055 () Bool)

(assert (=> b!3229760 m!3510055))

(assert (=> d!886744 d!887278))

(declare-fun d!887280 () Bool)

(declare-fun lt!1095865 () Token!9898)

(assert (=> d!887280 (contains!6527 (list!12978 lt!1095069) lt!1095865)))

(declare-fun e!2014392 () Token!9898)

(assert (=> d!887280 (= lt!1095865 e!2014392)))

(declare-fun c!542801 () Bool)

(assert (=> d!887280 (= c!542801 (= 0 0))))

(declare-fun e!2014393 () Bool)

(assert (=> d!887280 e!2014393))

(declare-fun res!1315260 () Bool)

(assert (=> d!887280 (=> (not res!1315260) (not e!2014393))))

(assert (=> d!887280 (= res!1315260 (<= 0 0))))

(assert (=> d!887280 (= (apply!8301 (list!12978 lt!1095069) 0) lt!1095865)))

(declare-fun b!3229761 () Bool)

(assert (=> b!3229761 (= e!2014393 (< 0 (size!27433 (list!12978 lt!1095069))))))

(declare-fun b!3229762 () Bool)

(assert (=> b!3229762 (= e!2014392 (head!7088 (list!12978 lt!1095069)))))

(declare-fun b!3229763 () Bool)

(assert (=> b!3229763 (= e!2014392 (apply!8301 (tail!5232 (list!12978 lt!1095069)) (- 0 1)))))

(assert (= (and d!887280 res!1315260) b!3229761))

(assert (= (and d!887280 c!542801) b!3229762))

(assert (= (and d!887280 (not c!542801)) b!3229763))

(assert (=> d!887280 m!3507205))

(declare-fun m!3510057 () Bool)

(assert (=> d!887280 m!3510057))

(assert (=> b!3229761 m!3507205))

(assert (=> b!3229761 m!3507701))

(assert (=> b!3229762 m!3507205))

(declare-fun m!3510059 () Bool)

(assert (=> b!3229762 m!3510059))

(assert (=> b!3229763 m!3507205))

(declare-fun m!3510061 () Bool)

(assert (=> b!3229763 m!3510061))

(assert (=> b!3229763 m!3510061))

(declare-fun m!3510063 () Bool)

(assert (=> b!3229763 m!3510063))

(assert (=> d!886900 d!887280))

(assert (=> d!886900 d!886576))

(declare-fun b!3229807 () Bool)

(declare-fun e!2014420 () Int)

(assert (=> b!3229807 (= e!2014420 0)))

(declare-fun b!3229808 () Bool)

(assert (=> b!3229808 (= e!2014420 (- 0 (size!27434 (left!28315 (c!542434 lt!1095069)))))))

(declare-fun d!887282 () Bool)

(declare-fun lt!1095874 () Token!9898)

(assert (=> d!887282 (= lt!1095874 (apply!8301 (list!12980 (c!542434 lt!1095069)) 0))))

(declare-fun e!2014417 () Token!9898)

(assert (=> d!887282 (= lt!1095874 e!2014417)))

(declare-fun c!542819 () Bool)

(assert (=> d!887282 (= c!542819 ((_ is Leaf!17152) (c!542434 lt!1095069)))))

(declare-fun e!2014418 () Bool)

(assert (=> d!887282 e!2014418))

(declare-fun res!1315270 () Bool)

(assert (=> d!887282 (=> (not res!1315270) (not e!2014418))))

(assert (=> d!887282 (= res!1315270 (<= 0 0))))

(assert (=> d!887282 (= (apply!8303 (c!542434 lt!1095069) 0) lt!1095874)))

(declare-fun b!3229809 () Bool)

(assert (=> b!3229809 (= e!2014418 (< 0 (size!27434 (c!542434 lt!1095069))))))

(declare-fun b!3229810 () Bool)

(declare-fun e!2014419 () Token!9898)

(declare-fun call!233280 () Token!9898)

(assert (=> b!3229810 (= e!2014419 call!233280)))

(declare-fun b!3229811 () Bool)

(declare-fun apply!8307 (IArray!21821 Int) Token!9898)

(assert (=> b!3229811 (= e!2014417 (apply!8307 (xs!14026 (c!542434 lt!1095069)) 0))))

(declare-fun b!3229812 () Bool)

(assert (=> b!3229812 (= e!2014417 e!2014419)))

(declare-fun lt!1095875 () Bool)

(declare-fun appendIndex!314 (List!36487 List!36487 Int) Bool)

(assert (=> b!3229812 (= lt!1095875 (appendIndex!314 (list!12980 (left!28315 (c!542434 lt!1095069))) (list!12980 (right!28645 (c!542434 lt!1095069))) 0))))

(declare-fun c!542820 () Bool)

(assert (=> b!3229812 (= c!542820 (< 0 (size!27434 (left!28315 (c!542434 lt!1095069)))))))

(declare-fun bm!233275 () Bool)

(declare-fun c!542821 () Bool)

(assert (=> bm!233275 (= c!542821 c!542820)))

(assert (=> bm!233275 (= call!233280 (apply!8303 (ite c!542820 (left!28315 (c!542434 lt!1095069)) (right!28645 (c!542434 lt!1095069))) e!2014420))))

(declare-fun b!3229813 () Bool)

(assert (=> b!3229813 (= e!2014419 call!233280)))

(assert (= (and d!887282 res!1315270) b!3229809))

(assert (= (and d!887282 c!542819) b!3229811))

(assert (= (and d!887282 (not c!542819)) b!3229812))

(assert (= (and b!3229812 c!542820) b!3229813))

(assert (= (and b!3229812 (not c!542820)) b!3229810))

(assert (= (or b!3229813 b!3229810) bm!233275))

(assert (= (and bm!233275 c!542821) b!3229807))

(assert (= (and bm!233275 (not c!542821)) b!3229808))

(declare-fun m!3510107 () Bool)

(assert (=> b!3229811 m!3510107))

(declare-fun m!3510109 () Bool)

(assert (=> bm!233275 m!3510109))

(assert (=> b!3229809 m!3507703))

(assert (=> d!887282 m!3507739))

(assert (=> d!887282 m!3507739))

(declare-fun m!3510111 () Bool)

(assert (=> d!887282 m!3510111))

(declare-fun m!3510113 () Bool)

(assert (=> b!3229812 m!3510113))

(declare-fun m!3510115 () Bool)

(assert (=> b!3229812 m!3510115))

(assert (=> b!3229812 m!3510113))

(assert (=> b!3229812 m!3510115))

(declare-fun m!3510117 () Bool)

(assert (=> b!3229812 m!3510117))

(declare-fun m!3510119 () Bool)

(assert (=> b!3229812 m!3510119))

(assert (=> b!3229808 m!3510119))

(assert (=> d!886900 d!887282))

(declare-fun b!3229822 () Bool)

(declare-fun e!2014427 () List!36487)

(assert (=> b!3229822 (= e!2014427 Nil!36363)))

(declare-fun b!3229825 () Bool)

(declare-fun e!2014428 () List!36487)

(assert (=> b!3229825 (= e!2014428 (++!8760 (list!12980 (left!28315 (c!542434 lt!1095068))) (list!12980 (right!28645 (c!542434 lt!1095068)))))))

(declare-fun b!3229824 () Bool)

(assert (=> b!3229824 (= e!2014428 (list!12985 (xs!14026 (c!542434 lt!1095068))))))

(declare-fun b!3229823 () Bool)

(assert (=> b!3229823 (= e!2014427 e!2014428)))

(declare-fun c!542825 () Bool)

(assert (=> b!3229823 (= c!542825 ((_ is Leaf!17152) (c!542434 lt!1095068)))))

(declare-fun d!887294 () Bool)

(declare-fun c!542824 () Bool)

(assert (=> d!887294 (= c!542824 ((_ is Empty!10908) (c!542434 lt!1095068)))))

(assert (=> d!887294 (= (list!12980 (c!542434 lt!1095068)) e!2014427)))

(assert (= (and d!887294 c!542824) b!3229822))

(assert (= (and d!887294 (not c!542824)) b!3229823))

(assert (= (and b!3229823 c!542825) b!3229824))

(assert (= (and b!3229823 (not c!542825)) b!3229825))

(declare-fun m!3510121 () Bool)

(assert (=> b!3229825 m!3510121))

(declare-fun m!3510123 () Bool)

(assert (=> b!3229825 m!3510123))

(assert (=> b!3229825 m!3510121))

(assert (=> b!3229825 m!3510123))

(declare-fun m!3510125 () Bool)

(assert (=> b!3229825 m!3510125))

(declare-fun m!3510127 () Bool)

(assert (=> b!3229824 m!3510127))

(assert (=> d!886672 d!887294))

(declare-fun b!3229860 () Bool)

(declare-fun e!2014450 () Bool)

(assert (=> b!3229860 (= e!2014450 true)))

(declare-fun b!3229859 () Bool)

(declare-fun e!2014449 () Bool)

(assert (=> b!3229859 (= e!2014449 e!2014450)))

(declare-fun d!887296 () Bool)

(assert (=> d!887296 e!2014449))

(assert (= b!3229859 b!3229860))

(assert (= d!887296 b!3229859))

(declare-fun order!18775 () Int)

(declare-fun lambda!118257 () Int)

(declare-fun dynLambda!14801 (Int Int) Int)

(assert (=> b!3229860 (< (dynLambda!14791 order!18761 (toValue!7374 (transformation!5266 (h!41782 rules!2135)))) (dynLambda!14801 order!18775 lambda!118257))))

(assert (=> b!3229860 (< (dynLambda!14793 order!18765 (toChars!7233 (transformation!5266 (h!41782 rules!2135)))) (dynLambda!14801 order!18775 lambda!118257))))

(declare-fun res!1315286 () Bool)

(declare-fun e!2014440 () Bool)

(assert (=> d!887296 (=> (not res!1315286) (not e!2014440))))

(declare-fun forall!7479 (List!36485 Int) Bool)

(declare-fun usedCharacters!570 (Regex!10025) List!36485)

(assert (=> d!887296 (= res!1315286 (forall!7479 (usedCharacters!570 (regex!5266 (h!41782 rules!2135))) lambda!118257))))

(assert (=> d!887296 (= (rulesUseDisjointChars!282 (h!41782 rules!2135) (h!41782 rules!2135)) e!2014440)))

(declare-fun b!3229845 () Bool)

(assert (=> b!3229845 (= e!2014440 (forall!7479 (usedCharacters!570 (regex!5266 (h!41782 rules!2135))) lambda!118257))))

(assert (= (and d!887296 res!1315286) b!3229845))

(declare-fun m!3510185 () Bool)

(assert (=> d!887296 m!3510185))

(assert (=> d!887296 m!3510185))

(declare-fun m!3510187 () Bool)

(assert (=> d!887296 m!3510187))

(assert (=> b!3229845 m!3510185))

(assert (=> b!3229845 m!3510185))

(assert (=> b!3229845 m!3510187))

(assert (=> b!3228504 d!887296))

(assert (=> b!3228297 d!886780))

(declare-fun d!887316 () Bool)

(declare-fun choose!644 (List!36484) Int)

(assert (=> d!887316 (= (charsToBigInt!1 (text!38920 (value!170541 (h!41783 tokens!494)))) (choose!644 (text!38920 (value!170541 (h!41783 tokens!494)))))))

(declare-fun bs!543226 () Bool)

(assert (= bs!543226 d!887316))

(declare-fun m!3510193 () Bool)

(assert (=> bs!543226 m!3510193))

(assert (=> d!886586 d!887316))

(declare-fun d!887322 () Bool)

(declare-fun lt!1095886 () BalanceConc!21428)

(assert (=> d!887322 (= (list!12975 lt!1095886) (originalCharacters!5980 (h!41783 (list!12978 lt!1095068))))))

(assert (=> d!887322 (= lt!1095886 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (list!12978 lt!1095068))))) (value!170541 (h!41783 (list!12978 lt!1095068)))))))

(assert (=> d!887322 (= (charsOf!3282 (h!41783 (list!12978 lt!1095068))) lt!1095886)))

(declare-fun b_lambda!88973 () Bool)

(assert (=> (not b_lambda!88973) (not d!887322)))

(declare-fun tb!160031 () Bool)

(declare-fun t!241566 () Bool)

(assert (=> (and b!3229130 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494)))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (list!12978 lt!1095068)))))) t!241566) tb!160031))

(declare-fun b!3229868 () Bool)

(declare-fun e!2014455 () Bool)

(declare-fun tp!1017612 () Bool)

(assert (=> b!3229868 (= e!2014455 (and (inv!49253 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (list!12978 lt!1095068))))) (value!170541 (h!41783 (list!12978 lt!1095068)))))) tp!1017612))))

(declare-fun result!202592 () Bool)

(assert (=> tb!160031 (= result!202592 (and (inv!49254 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (list!12978 lt!1095068))))) (value!170541 (h!41783 (list!12978 lt!1095068))))) e!2014455))))

(assert (= tb!160031 b!3229868))

(declare-fun m!3510205 () Bool)

(assert (=> b!3229868 m!3510205))

(declare-fun m!3510207 () Bool)

(assert (=> tb!160031 m!3510207))

(assert (=> d!887322 t!241566))

(declare-fun b_and!216387 () Bool)

(assert (= b_and!216383 (and (=> t!241566 result!202592) b_and!216387)))

(declare-fun tb!160033 () Bool)

(declare-fun t!241568 () Bool)

(assert (=> (and b!3228072 (= (toChars!7233 (transformation!5266 (h!41782 rules!2135))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (list!12978 lt!1095068)))))) t!241568) tb!160033))

(declare-fun result!202594 () Bool)

(assert (= result!202594 result!202592))

(assert (=> d!887322 t!241568))

(declare-fun b_and!216389 () Bool)

(assert (= b_and!216379 (and (=> t!241568 result!202594) b_and!216389)))

(declare-fun tb!160035 () Bool)

(declare-fun t!241570 () Bool)

(assert (=> (and b!3228442 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 rules!2135)))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (list!12978 lt!1095068)))))) t!241570) tb!160035))

(declare-fun result!202596 () Bool)

(assert (= result!202596 result!202592))

(assert (=> d!887322 t!241570))

(declare-fun b_and!216391 () Bool)

(assert (= b_and!216385 (and (=> t!241570 result!202596) b_and!216391)))

(declare-fun t!241572 () Bool)

(declare-fun tb!160037 () Bool)

(assert (=> (and b!3229145 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 rules!2135))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (list!12978 lt!1095068)))))) t!241572) tb!160037))

(declare-fun result!202598 () Bool)

(assert (= result!202598 result!202592))

(assert (=> d!887322 t!241572))

(declare-fun b_and!216393 () Bool)

(assert (= b_and!216377 (and (=> t!241572 result!202598) b_and!216393)))

(declare-fun tb!160039 () Bool)

(declare-fun t!241574 () Bool)

(assert (=> (and b!3228087 (= (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (list!12978 lt!1095068)))))) t!241574) tb!160039))

(declare-fun result!202600 () Bool)

(assert (= result!202600 result!202592))

(assert (=> d!887322 t!241574))

(declare-fun b_and!216395 () Bool)

(assert (= b_and!216381 (and (=> t!241574 result!202600) b_and!216395)))

(declare-fun t!241576 () Bool)

(declare-fun tb!160041 () Bool)

(assert (=> (and b!3228076 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (list!12978 lt!1095068)))))) t!241576) tb!160041))

(declare-fun result!202602 () Bool)

(assert (= result!202602 result!202592))

(assert (=> d!887322 t!241576))

(declare-fun b_and!216397 () Bool)

(assert (= b_and!216373 (and (=> t!241576 result!202602) b_and!216397)))

(declare-fun t!241578 () Bool)

(declare-fun tb!160043 () Bool)

(assert (=> (and b!3228460 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (list!12978 lt!1095068)))))) t!241578) tb!160043))

(declare-fun result!202604 () Bool)

(assert (= result!202604 result!202592))

(assert (=> d!887322 t!241578))

(declare-fun b_and!216399 () Bool)

(assert (= b_and!216375 (and (=> t!241578 result!202604) b_and!216399)))

(declare-fun m!3510211 () Bool)

(assert (=> d!887322 m!3510211))

(declare-fun m!3510213 () Bool)

(assert (=> d!887322 m!3510213))

(assert (=> b!3228777 d!887322))

(declare-fun b!3229873 () Bool)

(declare-fun e!2014459 () List!36485)

(assert (=> b!3229873 (= e!2014459 (list!12975 (charsOf!3282 separatorToken!241)))))

(declare-fun b!3229874 () Bool)

(assert (=> b!3229874 (= e!2014459 (Cons!36361 (h!41781 (list!12975 (charsOf!3282 (h!41783 (list!12978 lt!1095068))))) (++!8756 (t!241330 (list!12975 (charsOf!3282 (h!41783 (list!12978 lt!1095068))))) (list!12975 (charsOf!3282 separatorToken!241)))))))

(declare-fun e!2014458 () Bool)

(declare-fun b!3229876 () Bool)

(declare-fun lt!1095888 () List!36485)

(assert (=> b!3229876 (= e!2014458 (or (not (= (list!12975 (charsOf!3282 separatorToken!241)) Nil!36361)) (= lt!1095888 (list!12975 (charsOf!3282 (h!41783 (list!12978 lt!1095068)))))))))

(declare-fun b!3229875 () Bool)

(declare-fun res!1315295 () Bool)

(assert (=> b!3229875 (=> (not res!1315295) (not e!2014458))))

(assert (=> b!3229875 (= res!1315295 (= (size!27430 lt!1095888) (+ (size!27430 (list!12975 (charsOf!3282 (h!41783 (list!12978 lt!1095068))))) (size!27430 (list!12975 (charsOf!3282 separatorToken!241))))))))

(declare-fun d!887328 () Bool)

(assert (=> d!887328 e!2014458))

(declare-fun res!1315296 () Bool)

(assert (=> d!887328 (=> (not res!1315296) (not e!2014458))))

(assert (=> d!887328 (= res!1315296 (= (content!4918 lt!1095888) ((_ map or) (content!4918 (list!12975 (charsOf!3282 (h!41783 (list!12978 lt!1095068))))) (content!4918 (list!12975 (charsOf!3282 separatorToken!241))))))))

(assert (=> d!887328 (= lt!1095888 e!2014459)))

(declare-fun c!542839 () Bool)

(assert (=> d!887328 (= c!542839 ((_ is Nil!36361) (list!12975 (charsOf!3282 (h!41783 (list!12978 lt!1095068))))))))

(assert (=> d!887328 (= (++!8756 (list!12975 (charsOf!3282 (h!41783 (list!12978 lt!1095068)))) (list!12975 (charsOf!3282 separatorToken!241))) lt!1095888)))

(assert (= (and d!887328 c!542839) b!3229873))

(assert (= (and d!887328 (not c!542839)) b!3229874))

(assert (= (and d!887328 res!1315296) b!3229875))

(assert (= (and b!3229875 res!1315295) b!3229876))

(assert (=> b!3229874 m!3507149))

(declare-fun m!3510237 () Bool)

(assert (=> b!3229874 m!3510237))

(declare-fun m!3510239 () Bool)

(assert (=> b!3229875 m!3510239))

(assert (=> b!3229875 m!3508119))

(declare-fun m!3510241 () Bool)

(assert (=> b!3229875 m!3510241))

(assert (=> b!3229875 m!3507149))

(assert (=> b!3229875 m!3507521))

(declare-fun m!3510243 () Bool)

(assert (=> d!887328 m!3510243))

(assert (=> d!887328 m!3508119))

(declare-fun m!3510245 () Bool)

(assert (=> d!887328 m!3510245))

(assert (=> d!887328 m!3507149))

(assert (=> d!887328 m!3507527))

(assert (=> b!3228777 d!887328))

(declare-fun d!887334 () Bool)

(assert (=> d!887334 (= (list!12975 (charsOf!3282 (h!41783 (list!12978 lt!1095068)))) (list!12979 (c!542433 (charsOf!3282 (h!41783 (list!12978 lt!1095068))))))))

(declare-fun bs!543228 () Bool)

(assert (= bs!543228 d!887334))

(declare-fun m!3510255 () Bool)

(assert (=> bs!543228 m!3510255))

(assert (=> b!3228777 d!887334))

(declare-fun d!887338 () Bool)

(declare-fun c!542844 () Bool)

(assert (=> d!887338 (= c!542844 ((_ is Cons!36363) (t!241332 (list!12978 lt!1095068))))))

(declare-fun e!2014464 () List!36485)

(assert (=> d!887338 (= (printWithSeparatorTokenList!188 thiss!18206 (t!241332 (list!12978 lt!1095068)) separatorToken!241) e!2014464)))

(declare-fun b!3229885 () Bool)

(assert (=> b!3229885 (= e!2014464 (++!8756 (++!8756 (list!12975 (charsOf!3282 (h!41783 (t!241332 (list!12978 lt!1095068))))) (list!12975 (charsOf!3282 separatorToken!241))) (printWithSeparatorTokenList!188 thiss!18206 (t!241332 (t!241332 (list!12978 lt!1095068))) separatorToken!241)))))

(declare-fun b!3229886 () Bool)

(assert (=> b!3229886 (= e!2014464 Nil!36361)))

(assert (= (and d!887338 c!542844) b!3229885))

(assert (= (and d!887338 (not c!542844)) b!3229886))

(assert (=> b!3229885 m!3507153))

(declare-fun m!3510259 () Bool)

(assert (=> b!3229885 m!3510259))

(assert (=> b!3229885 m!3507149))

(declare-fun m!3510261 () Bool)

(assert (=> b!3229885 m!3510261))

(declare-fun m!3510263 () Bool)

(assert (=> b!3229885 m!3510263))

(assert (=> b!3229885 m!3510263))

(assert (=> b!3229885 m!3510259))

(declare-fun m!3510265 () Bool)

(assert (=> b!3229885 m!3510265))

(assert (=> b!3229885 m!3507153))

(assert (=> b!3229885 m!3507149))

(assert (=> b!3229885 m!3510261))

(assert (=> b!3229885 m!3510265))

(declare-fun m!3510267 () Bool)

(assert (=> b!3229885 m!3510267))

(assert (=> b!3228777 d!887338))

(assert (=> b!3228777 d!886484))

(assert (=> b!3228777 d!886498))

(declare-fun b!3229887 () Bool)

(declare-fun e!2014466 () List!36485)

(assert (=> b!3229887 (= e!2014466 (printWithSeparatorTokenList!188 thiss!18206 (t!241332 (list!12978 lt!1095068)) separatorToken!241))))

(declare-fun b!3229888 () Bool)

(assert (=> b!3229888 (= e!2014466 (Cons!36361 (h!41781 (++!8756 (list!12975 (charsOf!3282 (h!41783 (list!12978 lt!1095068)))) (list!12975 (charsOf!3282 separatorToken!241)))) (++!8756 (t!241330 (++!8756 (list!12975 (charsOf!3282 (h!41783 (list!12978 lt!1095068)))) (list!12975 (charsOf!3282 separatorToken!241)))) (printWithSeparatorTokenList!188 thiss!18206 (t!241332 (list!12978 lt!1095068)) separatorToken!241))))))

(declare-fun lt!1095889 () List!36485)

(declare-fun b!3229890 () Bool)

(declare-fun e!2014465 () Bool)

(assert (=> b!3229890 (= e!2014465 (or (not (= (printWithSeparatorTokenList!188 thiss!18206 (t!241332 (list!12978 lt!1095068)) separatorToken!241) Nil!36361)) (= lt!1095889 (++!8756 (list!12975 (charsOf!3282 (h!41783 (list!12978 lt!1095068)))) (list!12975 (charsOf!3282 separatorToken!241))))))))

(declare-fun b!3229889 () Bool)

(declare-fun res!1315297 () Bool)

(assert (=> b!3229889 (=> (not res!1315297) (not e!2014465))))

(assert (=> b!3229889 (= res!1315297 (= (size!27430 lt!1095889) (+ (size!27430 (++!8756 (list!12975 (charsOf!3282 (h!41783 (list!12978 lt!1095068)))) (list!12975 (charsOf!3282 separatorToken!241)))) (size!27430 (printWithSeparatorTokenList!188 thiss!18206 (t!241332 (list!12978 lt!1095068)) separatorToken!241)))))))

(declare-fun d!887344 () Bool)

(assert (=> d!887344 e!2014465))

(declare-fun res!1315298 () Bool)

(assert (=> d!887344 (=> (not res!1315298) (not e!2014465))))

(assert (=> d!887344 (= res!1315298 (= (content!4918 lt!1095889) ((_ map or) (content!4918 (++!8756 (list!12975 (charsOf!3282 (h!41783 (list!12978 lt!1095068)))) (list!12975 (charsOf!3282 separatorToken!241)))) (content!4918 (printWithSeparatorTokenList!188 thiss!18206 (t!241332 (list!12978 lt!1095068)) separatorToken!241)))))))

(assert (=> d!887344 (= lt!1095889 e!2014466)))

(declare-fun c!542845 () Bool)

(assert (=> d!887344 (= c!542845 ((_ is Nil!36361) (++!8756 (list!12975 (charsOf!3282 (h!41783 (list!12978 lt!1095068)))) (list!12975 (charsOf!3282 separatorToken!241)))))))

(assert (=> d!887344 (= (++!8756 (++!8756 (list!12975 (charsOf!3282 (h!41783 (list!12978 lt!1095068)))) (list!12975 (charsOf!3282 separatorToken!241))) (printWithSeparatorTokenList!188 thiss!18206 (t!241332 (list!12978 lt!1095068)) separatorToken!241)) lt!1095889)))

(assert (= (and d!887344 c!542845) b!3229887))

(assert (= (and d!887344 (not c!542845)) b!3229888))

(assert (= (and d!887344 res!1315298) b!3229889))

(assert (= (and b!3229889 res!1315297) b!3229890))

(assert (=> b!3229888 m!3508125))

(declare-fun m!3510269 () Bool)

(assert (=> b!3229888 m!3510269))

(declare-fun m!3510271 () Bool)

(assert (=> b!3229889 m!3510271))

(assert (=> b!3229889 m!3508121))

(declare-fun m!3510273 () Bool)

(assert (=> b!3229889 m!3510273))

(assert (=> b!3229889 m!3508125))

(declare-fun m!3510275 () Bool)

(assert (=> b!3229889 m!3510275))

(declare-fun m!3510277 () Bool)

(assert (=> d!887344 m!3510277))

(assert (=> d!887344 m!3508121))

(declare-fun m!3510279 () Bool)

(assert (=> d!887344 m!3510279))

(assert (=> d!887344 m!3508125))

(declare-fun m!3510281 () Bool)

(assert (=> d!887344 m!3510281))

(assert (=> b!3228777 d!887344))

(declare-fun d!887346 () Bool)

(declare-fun lt!1095893 () Int)

(assert (=> d!887346 (>= lt!1095893 0)))

(declare-fun e!2014467 () Int)

(assert (=> d!887346 (= lt!1095893 e!2014467)))

(declare-fun c!542846 () Bool)

(assert (=> d!887346 (= c!542846 ((_ is Nil!36363) lt!1095512))))

(assert (=> d!887346 (= (size!27433 lt!1095512) lt!1095893)))

(declare-fun b!3229891 () Bool)

(assert (=> b!3229891 (= e!2014467 0)))

(declare-fun b!3229892 () Bool)

(assert (=> b!3229892 (= e!2014467 (+ 1 (size!27433 (t!241332 lt!1095512))))))

(assert (= (and d!887346 c!542846) b!3229891))

(assert (= (and d!887346 (not c!542846)) b!3229892))

(declare-fun m!3510287 () Bool)

(assert (=> b!3229892 m!3510287))

(assert (=> b!3228956 d!887346))

(declare-fun d!887350 () Bool)

(assert (=> d!887350 (= (isEmpty!20453 (_1!21030 lt!1095346)) ((_ is Nil!36363) (_1!21030 lt!1095346)))))

(assert (=> b!3228817 d!887350))

(declare-fun d!887352 () Bool)

(assert (=> d!887352 (= (head!7088 lt!1095094) (h!41783 lt!1095094))))

(assert (=> b!3228985 d!887352))

(declare-fun d!887354 () Bool)

(assert (=> d!887354 (= (inv!17 (value!170541 (h!41783 (t!241332 tokens!494)))) (= (charsToBigInt!1 (text!38920 (value!170541 (h!41783 (t!241332 tokens!494))))) (value!170533 (value!170541 (h!41783 (t!241332 tokens!494))))))))

(declare-fun bs!543231 () Bool)

(assert (= bs!543231 d!887354))

(declare-fun m!3510291 () Bool)

(assert (=> bs!543231 m!3510291))

(assert (=> b!3229023 d!887354))

(declare-fun d!887358 () Bool)

(declare-fun choose!18841 (Int) Bool)

(assert (=> d!887358 (= (Forall!1278 lambda!118249) (choose!18841 lambda!118249))))

(declare-fun bs!543233 () Bool)

(assert (= bs!543233 d!887358))

(declare-fun m!3510297 () Bool)

(assert (=> bs!543233 m!3510297))

(assert (=> d!886936 d!887358))

(declare-fun bs!543234 () Bool)

(declare-fun d!887364 () Bool)

(assert (= bs!543234 (and d!887364 b!3228078)))

(declare-fun lambda!118258 () Int)

(assert (=> bs!543234 (not (= lambda!118258 lambda!118207))))

(declare-fun bs!543235 () Bool)

(assert (= bs!543235 (and d!887364 d!886422)))

(assert (=> bs!543235 (= lambda!118258 lambda!118217)))

(declare-fun bs!543236 () Bool)

(assert (= bs!543236 (and d!887364 d!886596)))

(assert (=> bs!543236 (= lambda!118258 lambda!118233)))

(declare-fun b!3229901 () Bool)

(declare-fun e!2014474 () Bool)

(assert (=> b!3229901 (= e!2014474 true)))

(declare-fun b!3229900 () Bool)

(declare-fun e!2014473 () Bool)

(assert (=> b!3229900 (= e!2014473 e!2014474)))

(declare-fun b!3229899 () Bool)

(declare-fun e!2014472 () Bool)

(assert (=> b!3229899 (= e!2014472 e!2014473)))

(assert (=> d!887364 e!2014472))

(assert (= b!3229900 b!3229901))

(assert (= b!3229899 b!3229900))

(assert (= (and d!887364 ((_ is Cons!36362) rules!2135)) b!3229899))

(assert (=> b!3229901 (< (dynLambda!14791 order!18761 (toValue!7374 (transformation!5266 (h!41782 rules!2135)))) (dynLambda!14792 order!18763 lambda!118258))))

(assert (=> b!3229901 (< (dynLambda!14793 order!18765 (toChars!7233 (transformation!5266 (h!41782 rules!2135)))) (dynLambda!14792 order!18763 lambda!118258))))

(assert (=> d!887364 true))

(declare-fun lt!1095896 () Bool)

(assert (=> d!887364 (= lt!1095896 (forall!7470 (t!241332 (list!12978 lt!1095068)) lambda!118258))))

(declare-fun e!2014471 () Bool)

(assert (=> d!887364 (= lt!1095896 e!2014471)))

(declare-fun res!1315299 () Bool)

(assert (=> d!887364 (=> res!1315299 e!2014471)))

(assert (=> d!887364 (= res!1315299 (not ((_ is Cons!36363) (t!241332 (list!12978 lt!1095068)))))))

(assert (=> d!887364 (not (isEmpty!20447 rules!2135))))

(assert (=> d!887364 (= (rulesProduceEachTokenIndividuallyList!1743 thiss!18206 rules!2135 (t!241332 (list!12978 lt!1095068))) lt!1095896)))

(declare-fun b!3229897 () Bool)

(declare-fun e!2014470 () Bool)

(assert (=> b!3229897 (= e!2014471 e!2014470)))

(declare-fun res!1315300 () Bool)

(assert (=> b!3229897 (=> (not res!1315300) (not e!2014470))))

(assert (=> b!3229897 (= res!1315300 (rulesProduceIndividualToken!2347 thiss!18206 rules!2135 (h!41783 (t!241332 (list!12978 lt!1095068)))))))

(declare-fun b!3229898 () Bool)

(assert (=> b!3229898 (= e!2014470 (rulesProduceEachTokenIndividuallyList!1743 thiss!18206 rules!2135 (t!241332 (t!241332 (list!12978 lt!1095068)))))))

(assert (= (and d!887364 (not res!1315299)) b!3229897))

(assert (= (and b!3229897 res!1315300) b!3229898))

(declare-fun m!3510299 () Bool)

(assert (=> d!887364 m!3510299))

(assert (=> d!887364 m!3507125))

(declare-fun m!3510301 () Bool)

(assert (=> b!3229897 m!3510301))

(declare-fun m!3510303 () Bool)

(assert (=> b!3229898 m!3510303))

(assert (=> b!3228688 d!887364))

(declare-fun d!887366 () Bool)

(assert (=> d!887366 (= (Forall!1278 lambda!118238) (choose!18841 lambda!118238))))

(declare-fun bs!543237 () Bool)

(assert (= bs!543237 d!887366))

(declare-fun m!3510305 () Bool)

(assert (=> bs!543237 m!3510305))

(assert (=> d!886734 d!887366))

(declare-fun d!887368 () Bool)

(assert (=> d!887368 (= (isEmpty!20452 (list!12975 (_2!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494))))))) ((_ is Nil!36361) (list!12975 (_2!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494))))))))))

(assert (=> d!886754 d!887368))

(declare-fun d!887370 () Bool)

(assert (=> d!887370 (= (list!12975 (_2!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494)))))) (list!12979 (c!542433 (_2!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494))))))))))

(declare-fun bs!543238 () Bool)

(assert (= bs!543238 d!887370))

(declare-fun m!3510309 () Bool)

(assert (=> bs!543238 m!3510309))

(assert (=> d!886754 d!887370))

(declare-fun d!887372 () Bool)

(declare-fun lt!1095902 () Bool)

(assert (=> d!887372 (= lt!1095902 (isEmpty!20452 (list!12979 (c!542433 (_2!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494)))))))))))

(assert (=> d!887372 (= lt!1095902 (= (size!27432 (c!542433 (_2!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494))))))) 0))))

(assert (=> d!887372 (= (isEmpty!20456 (c!542433 (_2!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494))))))) lt!1095902)))

(declare-fun bs!543242 () Bool)

(assert (= bs!543242 d!887372))

(assert (=> bs!543242 m!3510309))

(assert (=> bs!543242 m!3510309))

(declare-fun m!3510333 () Bool)

(assert (=> bs!543242 m!3510333))

(declare-fun m!3510335 () Bool)

(assert (=> bs!543242 m!3510335))

(assert (=> d!886754 d!887372))

(declare-fun d!887386 () Bool)

(declare-fun c!542856 () Bool)

(assert (=> d!887386 (= c!542856 ((_ is Node!10907) (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241))))))))

(declare-fun e!2014485 () Bool)

(assert (=> d!887386 (= (inv!49253 (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241))))) e!2014485)))

(declare-fun b!3229920 () Bool)

(assert (=> b!3229920 (= e!2014485 (inv!49255 (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241))))))))

(declare-fun b!3229921 () Bool)

(declare-fun e!2014486 () Bool)

(assert (=> b!3229921 (= e!2014485 e!2014486)))

(declare-fun res!1315305 () Bool)

(assert (=> b!3229921 (= res!1315305 (not ((_ is Leaf!17151) (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))))))))

(assert (=> b!3229921 (=> res!1315305 e!2014486)))

(declare-fun b!3229922 () Bool)

(assert (=> b!3229922 (= e!2014486 (inv!49256 (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241))))))))

(assert (= (and d!887386 c!542856) b!3229920))

(assert (= (and d!887386 (not c!542856)) b!3229921))

(assert (= (and b!3229921 (not res!1315305)) b!3229922))

(declare-fun m!3510337 () Bool)

(assert (=> b!3229920 m!3510337))

(declare-fun m!3510339 () Bool)

(assert (=> b!3229922 m!3510339))

(assert (=> b!3229078 d!887386))

(declare-fun d!887388 () Bool)

(declare-fun c!542857 () Bool)

(assert (=> d!887388 (= c!542857 ((_ is Node!10907) (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241))))))))

(declare-fun e!2014487 () Bool)

(assert (=> d!887388 (= (inv!49253 (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241))))) e!2014487)))

(declare-fun b!3229923 () Bool)

(assert (=> b!3229923 (= e!2014487 (inv!49255 (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241))))))))

(declare-fun b!3229924 () Bool)

(declare-fun e!2014488 () Bool)

(assert (=> b!3229924 (= e!2014487 e!2014488)))

(declare-fun res!1315306 () Bool)

(assert (=> b!3229924 (= res!1315306 (not ((_ is Leaf!17151) (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))))))))

(assert (=> b!3229924 (=> res!1315306 e!2014488)))

(declare-fun b!3229925 () Bool)

(assert (=> b!3229925 (= e!2014488 (inv!49256 (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241))))))))

(assert (= (and d!887388 c!542857) b!3229923))

(assert (= (and d!887388 (not c!542857)) b!3229924))

(assert (= (and b!3229924 (not res!1315306)) b!3229925))

(declare-fun m!3510351 () Bool)

(assert (=> b!3229923 m!3510351))

(declare-fun m!3510353 () Bool)

(assert (=> b!3229925 m!3510353))

(assert (=> b!3229078 d!887388))

(declare-fun d!887392 () Bool)

(declare-fun res!1315309 () Bool)

(declare-fun e!2014491 () Bool)

(assert (=> d!887392 (=> (not res!1315309) (not e!2014491))))

(assert (=> d!887392 (= res!1315309 (<= (size!27430 (list!12981 (xs!14025 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))))) 512))))

(assert (=> d!887392 (= (inv!49256 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))) e!2014491)))

(declare-fun b!3229929 () Bool)

(declare-fun res!1315310 () Bool)

(assert (=> b!3229929 (=> (not res!1315310) (not e!2014491))))

(assert (=> b!3229929 (= res!1315310 (= (csize!22045 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))) (size!27430 (list!12981 (xs!14025 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494)))))))))))

(declare-fun b!3229931 () Bool)

(assert (=> b!3229931 (= e!2014491 (and (> (csize!22045 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))) 0) (<= (csize!22045 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))) 512)))))

(assert (= (and d!887392 res!1315309) b!3229929))

(assert (= (and b!3229929 res!1315310) b!3229931))

(declare-fun m!3510355 () Bool)

(assert (=> d!887392 m!3510355))

(assert (=> d!887392 m!3510355))

(declare-fun m!3510357 () Bool)

(assert (=> d!887392 m!3510357))

(assert (=> b!3229929 m!3510355))

(assert (=> b!3229929 m!3510355))

(assert (=> b!3229929 m!3510357))

(assert (=> b!3228710 d!887392))

(declare-fun d!887394 () Bool)

(declare-fun res!1315330 () Bool)

(declare-fun e!2014501 () Bool)

(assert (=> d!887394 (=> res!1315330 e!2014501)))

(assert (=> d!887394 (= res!1315330 (not ((_ is Node!10907) (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494)))))))))

(assert (=> d!887394 (= (isBalanced!3247 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))) e!2014501)))

(declare-fun b!3229953 () Bool)

(declare-fun res!1315332 () Bool)

(declare-fun e!2014500 () Bool)

(assert (=> b!3229953 (=> (not res!1315332) (not e!2014500))))

(assert (=> b!3229953 (= res!1315332 (not (isEmpty!20456 (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))))))))

(declare-fun b!3229954 () Bool)

(assert (=> b!3229954 (= e!2014501 e!2014500)))

(declare-fun res!1315334 () Bool)

(assert (=> b!3229954 (=> (not res!1315334) (not e!2014500))))

(assert (=> b!3229954 (= res!1315334 (<= (- 1) (- (height!1580 (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494)))))) (height!1580 (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494)))))))))))

(declare-fun b!3229955 () Bool)

(declare-fun res!1315329 () Bool)

(assert (=> b!3229955 (=> (not res!1315329) (not e!2014500))))

(assert (=> b!3229955 (= res!1315329 (<= (- (height!1580 (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494)))))) (height!1580 (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))))) 1))))

(declare-fun b!3229956 () Bool)

(declare-fun res!1315331 () Bool)

(assert (=> b!3229956 (=> (not res!1315331) (not e!2014500))))

(assert (=> b!3229956 (= res!1315331 (isBalanced!3247 (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494)))))))))

(declare-fun b!3229957 () Bool)

(assert (=> b!3229957 (= e!2014500 (not (isEmpty!20456 (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))))))))

(declare-fun b!3229958 () Bool)

(declare-fun res!1315333 () Bool)

(assert (=> b!3229958 (=> (not res!1315333) (not e!2014500))))

(assert (=> b!3229958 (= res!1315333 (isBalanced!3247 (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494)))))))))

(assert (= (and d!887394 (not res!1315330)) b!3229954))

(assert (= (and b!3229954 res!1315334) b!3229955))

(assert (= (and b!3229955 res!1315329) b!3229958))

(assert (= (and b!3229958 res!1315333) b!3229956))

(assert (= (and b!3229956 res!1315331) b!3229953))

(assert (= (and b!3229953 res!1315332) b!3229957))

(assert (=> b!3229954 m!3509179))

(assert (=> b!3229954 m!3509181))

(declare-fun m!3510407 () Bool)

(assert (=> b!3229957 m!3510407))

(declare-fun m!3510409 () Bool)

(assert (=> b!3229953 m!3510409))

(declare-fun m!3510411 () Bool)

(assert (=> b!3229958 m!3510411))

(assert (=> b!3229955 m!3509179))

(assert (=> b!3229955 m!3509181))

(declare-fun m!3510413 () Bool)

(assert (=> b!3229956 m!3510413))

(assert (=> d!886584 d!887394))

(declare-fun b!3229961 () Bool)

(declare-fun e!2014504 () List!36487)

(assert (=> b!3229961 (= e!2014504 Nil!36363)))

(declare-fun b!3229964 () Bool)

(declare-fun e!2014505 () List!36487)

(assert (=> b!3229964 (= e!2014505 (++!8760 (list!12980 (left!28315 (c!542434 (_1!21028 lt!1095143)))) (list!12980 (right!28645 (c!542434 (_1!21028 lt!1095143))))))))

(declare-fun b!3229963 () Bool)

(assert (=> b!3229963 (= e!2014505 (list!12985 (xs!14026 (c!542434 (_1!21028 lt!1095143)))))))

(declare-fun b!3229962 () Bool)

(assert (=> b!3229962 (= e!2014504 e!2014505)))

(declare-fun c!542861 () Bool)

(assert (=> b!3229962 (= c!542861 ((_ is Leaf!17152) (c!542434 (_1!21028 lt!1095143))))))

(declare-fun d!887408 () Bool)

(declare-fun c!542860 () Bool)

(assert (=> d!887408 (= c!542860 ((_ is Empty!10908) (c!542434 (_1!21028 lt!1095143))))))

(assert (=> d!887408 (= (list!12980 (c!542434 (_1!21028 lt!1095143))) e!2014504)))

(assert (= (and d!887408 c!542860) b!3229961))

(assert (= (and d!887408 (not c!542860)) b!3229962))

(assert (= (and b!3229962 c!542861) b!3229963))

(assert (= (and b!3229962 (not c!542861)) b!3229964))

(declare-fun m!3510415 () Bool)

(assert (=> b!3229964 m!3510415))

(declare-fun m!3510417 () Bool)

(assert (=> b!3229964 m!3510417))

(assert (=> b!3229964 m!3510415))

(assert (=> b!3229964 m!3510417))

(declare-fun m!3510419 () Bool)

(assert (=> b!3229964 m!3510419))

(declare-fun m!3510421 () Bool)

(assert (=> b!3229963 m!3510421))

(assert (=> d!886800 d!887408))

(declare-fun b!3229965 () Bool)

(declare-fun e!2014506 () List!36487)

(assert (=> b!3229965 (= e!2014506 Nil!36363)))

(declare-fun b!3229968 () Bool)

(declare-fun e!2014507 () List!36487)

(assert (=> b!3229968 (= e!2014507 (++!8760 (list!12980 (left!28315 (c!542434 lt!1095069))) (list!12980 (right!28645 (c!542434 lt!1095069)))))))

(declare-fun b!3229967 () Bool)

(assert (=> b!3229967 (= e!2014507 (list!12985 (xs!14026 (c!542434 lt!1095069))))))

(declare-fun b!3229966 () Bool)

(assert (=> b!3229966 (= e!2014506 e!2014507)))

(declare-fun c!542863 () Bool)

(assert (=> b!3229966 (= c!542863 ((_ is Leaf!17152) (c!542434 lt!1095069)))))

(declare-fun d!887410 () Bool)

(declare-fun c!542862 () Bool)

(assert (=> d!887410 (= c!542862 ((_ is Empty!10908) (c!542434 lt!1095069)))))

(assert (=> d!887410 (= (list!12980 (c!542434 lt!1095069)) e!2014506)))

(assert (= (and d!887410 c!542862) b!3229965))

(assert (= (and d!887410 (not c!542862)) b!3229966))

(assert (= (and b!3229966 c!542863) b!3229967))

(assert (= (and b!3229966 (not c!542863)) b!3229968))

(assert (=> b!3229968 m!3510113))

(assert (=> b!3229968 m!3510115))

(assert (=> b!3229968 m!3510113))

(assert (=> b!3229968 m!3510115))

(declare-fun m!3510429 () Bool)

(assert (=> b!3229968 m!3510429))

(declare-fun m!3510431 () Bool)

(assert (=> b!3229967 m!3510431))

(assert (=> d!886576 d!887410))

(declare-fun d!887414 () Bool)

(declare-fun lt!1095909 () Token!9898)

(assert (=> d!887414 (contains!6527 (list!12978 (_1!21028 lt!1095182)) lt!1095909)))

(declare-fun e!2014509 () Token!9898)

(assert (=> d!887414 (= lt!1095909 e!2014509)))

(declare-fun c!542864 () Bool)

(assert (=> d!887414 (= c!542864 (= 0 0))))

(declare-fun e!2014510 () Bool)

(assert (=> d!887414 e!2014510))

(declare-fun res!1315338 () Bool)

(assert (=> d!887414 (=> (not res!1315338) (not e!2014510))))

(assert (=> d!887414 (= res!1315338 (<= 0 0))))

(assert (=> d!887414 (= (apply!8301 (list!12978 (_1!21028 lt!1095182)) 0) lt!1095909)))

(declare-fun b!3229970 () Bool)

(assert (=> b!3229970 (= e!2014510 (< 0 (size!27433 (list!12978 (_1!21028 lt!1095182)))))))

(declare-fun b!3229971 () Bool)

(assert (=> b!3229971 (= e!2014509 (head!7088 (list!12978 (_1!21028 lt!1095182))))))

(declare-fun b!3229972 () Bool)

(assert (=> b!3229972 (= e!2014509 (apply!8301 (tail!5232 (list!12978 (_1!21028 lt!1095182))) (- 0 1)))))

(assert (= (and d!887414 res!1315338) b!3229970))

(assert (= (and d!887414 c!542864) b!3229971))

(assert (= (and d!887414 (not c!542864)) b!3229972))

(assert (=> d!887414 m!3508173))

(declare-fun m!3510433 () Bool)

(assert (=> d!887414 m!3510433))

(assert (=> b!3229970 m!3508173))

(assert (=> b!3229970 m!3508801))

(assert (=> b!3229971 m!3508173))

(declare-fun m!3510435 () Bool)

(assert (=> b!3229971 m!3510435))

(assert (=> b!3229972 m!3508173))

(declare-fun m!3510437 () Bool)

(assert (=> b!3229972 m!3510437))

(assert (=> b!3229972 m!3510437))

(declare-fun m!3510439 () Bool)

(assert (=> b!3229972 m!3510439))

(assert (=> d!886750 d!887414))

(declare-fun d!887416 () Bool)

(assert (=> d!887416 (= (list!12978 (_1!21028 lt!1095182)) (list!12980 (c!542434 (_1!21028 lt!1095182))))))

(declare-fun bs!543245 () Bool)

(assert (= bs!543245 d!887416))

(declare-fun m!3510441 () Bool)

(assert (=> bs!543245 m!3510441))

(assert (=> d!886750 d!887416))

(declare-fun b!3229973 () Bool)

(declare-fun e!2014514 () Int)

(assert (=> b!3229973 (= e!2014514 0)))

(declare-fun b!3229974 () Bool)

(assert (=> b!3229974 (= e!2014514 (- 0 (size!27434 (left!28315 (c!542434 (_1!21028 lt!1095182))))))))

(declare-fun d!887418 () Bool)

(declare-fun lt!1095910 () Token!9898)

(assert (=> d!887418 (= lt!1095910 (apply!8301 (list!12980 (c!542434 (_1!21028 lt!1095182))) 0))))

(declare-fun e!2014511 () Token!9898)

(assert (=> d!887418 (= lt!1095910 e!2014511)))

(declare-fun c!542865 () Bool)

(assert (=> d!887418 (= c!542865 ((_ is Leaf!17152) (c!542434 (_1!21028 lt!1095182))))))

(declare-fun e!2014512 () Bool)

(assert (=> d!887418 e!2014512))

(declare-fun res!1315339 () Bool)

(assert (=> d!887418 (=> (not res!1315339) (not e!2014512))))

(assert (=> d!887418 (= res!1315339 (<= 0 0))))

(assert (=> d!887418 (= (apply!8303 (c!542434 (_1!21028 lt!1095182)) 0) lt!1095910)))

(declare-fun b!3229975 () Bool)

(assert (=> b!3229975 (= e!2014512 (< 0 (size!27434 (c!542434 (_1!21028 lt!1095182)))))))

(declare-fun b!3229976 () Bool)

(declare-fun e!2014513 () Token!9898)

(declare-fun call!233281 () Token!9898)

(assert (=> b!3229976 (= e!2014513 call!233281)))

(declare-fun b!3229977 () Bool)

(assert (=> b!3229977 (= e!2014511 (apply!8307 (xs!14026 (c!542434 (_1!21028 lt!1095182))) 0))))

(declare-fun b!3229978 () Bool)

(assert (=> b!3229978 (= e!2014511 e!2014513)))

(declare-fun lt!1095911 () Bool)

(assert (=> b!3229978 (= lt!1095911 (appendIndex!314 (list!12980 (left!28315 (c!542434 (_1!21028 lt!1095182)))) (list!12980 (right!28645 (c!542434 (_1!21028 lt!1095182)))) 0))))

(declare-fun c!542866 () Bool)

(assert (=> b!3229978 (= c!542866 (< 0 (size!27434 (left!28315 (c!542434 (_1!21028 lt!1095182))))))))

(declare-fun bm!233276 () Bool)

(declare-fun c!542867 () Bool)

(assert (=> bm!233276 (= c!542867 c!542866)))

(assert (=> bm!233276 (= call!233281 (apply!8303 (ite c!542866 (left!28315 (c!542434 (_1!21028 lt!1095182))) (right!28645 (c!542434 (_1!21028 lt!1095182)))) e!2014514))))

(declare-fun b!3229979 () Bool)

(assert (=> b!3229979 (= e!2014513 call!233281)))

(assert (= (and d!887418 res!1315339) b!3229975))

(assert (= (and d!887418 c!542865) b!3229977))

(assert (= (and d!887418 (not c!542865)) b!3229978))

(assert (= (and b!3229978 c!542866) b!3229979))

(assert (= (and b!3229978 (not c!542866)) b!3229976))

(assert (= (or b!3229979 b!3229976) bm!233276))

(assert (= (and bm!233276 c!542867) b!3229973))

(assert (= (and bm!233276 (not c!542867)) b!3229974))

(declare-fun m!3510443 () Bool)

(assert (=> b!3229977 m!3510443))

(declare-fun m!3510445 () Bool)

(assert (=> bm!233276 m!3510445))

(assert (=> b!3229975 m!3508803))

(assert (=> d!887418 m!3510441))

(assert (=> d!887418 m!3510441))

(declare-fun m!3510447 () Bool)

(assert (=> d!887418 m!3510447))

(declare-fun m!3510449 () Bool)

(assert (=> b!3229978 m!3510449))

(declare-fun m!3510451 () Bool)

(assert (=> b!3229978 m!3510451))

(assert (=> b!3229978 m!3510449))

(assert (=> b!3229978 m!3510451))

(declare-fun m!3510453 () Bool)

(assert (=> b!3229978 m!3510453))

(declare-fun m!3510455 () Bool)

(assert (=> b!3229978 m!3510455))

(assert (=> b!3229974 m!3510455))

(assert (=> d!886750 d!887418))

(declare-fun b!3229980 () Bool)

(declare-fun res!1315343 () Bool)

(declare-fun e!2014516 () Bool)

(assert (=> b!3229980 (=> (not res!1315343) (not e!2014516))))

(assert (=> b!3229980 (= res!1315343 (isBalanced!3244 (left!28315 (left!28315 (c!542434 lt!1095112)))))))

(declare-fun d!887420 () Bool)

(declare-fun res!1315340 () Bool)

(declare-fun e!2014515 () Bool)

(assert (=> d!887420 (=> res!1315340 e!2014515)))

(assert (=> d!887420 (= res!1315340 (not ((_ is Node!10908) (left!28315 (c!542434 lt!1095112)))))))

(assert (=> d!887420 (= (isBalanced!3244 (left!28315 (c!542434 lt!1095112))) e!2014515)))

(declare-fun b!3229981 () Bool)

(declare-fun res!1315345 () Bool)

(assert (=> b!3229981 (=> (not res!1315345) (not e!2014516))))

(assert (=> b!3229981 (= res!1315345 (not (isEmpty!20454 (left!28315 (left!28315 (c!542434 lt!1095112))))))))

(declare-fun b!3229982 () Bool)

(declare-fun res!1315342 () Bool)

(assert (=> b!3229982 (=> (not res!1315342) (not e!2014516))))

(assert (=> b!3229982 (= res!1315342 (<= (- (height!1577 (left!28315 (left!28315 (c!542434 lt!1095112)))) (height!1577 (right!28645 (left!28315 (c!542434 lt!1095112))))) 1))))

(declare-fun b!3229983 () Bool)

(declare-fun res!1315344 () Bool)

(assert (=> b!3229983 (=> (not res!1315344) (not e!2014516))))

(assert (=> b!3229983 (= res!1315344 (isBalanced!3244 (right!28645 (left!28315 (c!542434 lt!1095112)))))))

(declare-fun b!3229984 () Bool)

(assert (=> b!3229984 (= e!2014515 e!2014516)))

(declare-fun res!1315341 () Bool)

(assert (=> b!3229984 (=> (not res!1315341) (not e!2014516))))

(assert (=> b!3229984 (= res!1315341 (<= (- 1) (- (height!1577 (left!28315 (left!28315 (c!542434 lt!1095112)))) (height!1577 (right!28645 (left!28315 (c!542434 lt!1095112)))))))))

(declare-fun b!3229985 () Bool)

(assert (=> b!3229985 (= e!2014516 (not (isEmpty!20454 (right!28645 (left!28315 (c!542434 lt!1095112))))))))

(assert (= (and d!887420 (not res!1315340)) b!3229984))

(assert (= (and b!3229984 res!1315341) b!3229982))

(assert (= (and b!3229982 res!1315342) b!3229980))

(assert (= (and b!3229980 res!1315343) b!3229983))

(assert (= (and b!3229983 res!1315344) b!3229981))

(assert (= (and b!3229981 res!1315345) b!3229985))

(declare-fun m!3510457 () Bool)

(assert (=> b!3229984 m!3510457))

(declare-fun m!3510459 () Bool)

(assert (=> b!3229984 m!3510459))

(assert (=> b!3229982 m!3510457))

(assert (=> b!3229982 m!3510459))

(declare-fun m!3510461 () Bool)

(assert (=> b!3229983 m!3510461))

(declare-fun m!3510463 () Bool)

(assert (=> b!3229980 m!3510463))

(declare-fun m!3510465 () Bool)

(assert (=> b!3229981 m!3510465))

(declare-fun m!3510467 () Bool)

(assert (=> b!3229985 m!3510467))

(assert (=> b!3228484 d!887420))

(declare-fun d!887422 () Bool)

(declare-fun lt!1095912 () Int)

(assert (=> d!887422 (>= lt!1095912 0)))

(declare-fun e!2014519 () Int)

(assert (=> d!887422 (= lt!1095912 e!2014519)))

(declare-fun c!542870 () Bool)

(assert (=> d!887422 (= c!542870 ((_ is Nil!36361) (originalCharacters!5980 (h!41783 (t!241332 tokens!494)))))))

(assert (=> d!887422 (= (size!27430 (originalCharacters!5980 (h!41783 (t!241332 tokens!494)))) lt!1095912)))

(declare-fun b!3229986 () Bool)

(assert (=> b!3229986 (= e!2014519 0)))

(declare-fun b!3229987 () Bool)

(assert (=> b!3229987 (= e!2014519 (+ 1 (size!27430 (t!241330 (originalCharacters!5980 (h!41783 (t!241332 tokens!494)))))))))

(assert (= (and d!887422 c!542870) b!3229986))

(assert (= (and d!887422 (not c!542870)) b!3229987))

(declare-fun m!3510469 () Bool)

(assert (=> b!3229987 m!3510469))

(assert (=> b!3228833 d!887422))

(declare-fun d!887424 () Bool)

(declare-fun res!1315348 () Bool)

(declare-fun e!2014520 () Bool)

(assert (=> d!887424 (=> res!1315348 e!2014520)))

(assert (=> d!887424 (= res!1315348 ((_ is Nil!36363) (list!12978 lt!1095068)))))

(assert (=> d!887424 (= (forall!7470 (list!12978 lt!1095068) lambda!118233) e!2014520)))

(declare-fun b!3229988 () Bool)

(declare-fun e!2014521 () Bool)

(assert (=> b!3229988 (= e!2014520 e!2014521)))

(declare-fun res!1315349 () Bool)

(assert (=> b!3229988 (=> (not res!1315349) (not e!2014521))))

(assert (=> b!3229988 (= res!1315349 (dynLambda!14795 lambda!118233 (h!41783 (list!12978 lt!1095068))))))

(declare-fun b!3229989 () Bool)

(assert (=> b!3229989 (= e!2014521 (forall!7470 (t!241332 (list!12978 lt!1095068)) lambda!118233))))

(assert (= (and d!887424 (not res!1315348)) b!3229988))

(assert (= (and b!3229988 res!1315349) b!3229989))

(declare-fun b_lambda!88977 () Bool)

(assert (=> (not b_lambda!88977) (not b!3229988)))

(declare-fun m!3510471 () Bool)

(assert (=> b!3229988 m!3510471))

(declare-fun m!3510473 () Bool)

(assert (=> b!3229989 m!3510473))

(assert (=> d!886596 d!887424))

(assert (=> d!886596 d!886524))

(declare-fun d!887426 () Bool)

(declare-fun lt!1095913 () Int)

(assert (=> d!887426 (= lt!1095913 (size!27430 (list!12975 (_2!21028 lt!1095332))))))

(assert (=> d!887426 (= lt!1095913 (size!27432 (c!542433 (_2!21028 lt!1095332))))))

(assert (=> d!887426 (= (size!27431 (_2!21028 lt!1095332)) lt!1095913)))

(declare-fun bs!543246 () Bool)

(assert (= bs!543246 d!887426))

(assert (=> bs!543246 m!3508197))

(assert (=> bs!543246 m!3508197))

(declare-fun m!3510475 () Bool)

(assert (=> bs!543246 m!3510475))

(declare-fun m!3510477 () Bool)

(assert (=> bs!543246 m!3510477))

(assert (=> b!3228796 d!887426))

(declare-fun d!887428 () Bool)

(declare-fun lt!1095914 () Int)

(assert (=> d!887428 (= lt!1095914 (size!27430 (list!12975 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494))))))))

(assert (=> d!887428 (= lt!1095914 (size!27432 (c!542433 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494))))))))

(assert (=> d!887428 (= (size!27431 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494)))) lt!1095914)))

(declare-fun bs!543247 () Bool)

(assert (= bs!543247 d!887428))

(assert (=> bs!543247 m!3507591))

(assert (=> bs!543247 m!3508199))

(assert (=> bs!543247 m!3508199))

(assert (=> bs!543247 m!3510043))

(declare-fun m!3510479 () Bool)

(assert (=> bs!543247 m!3510479))

(assert (=> b!3228796 d!887428))

(declare-fun d!887430 () Bool)

(assert (=> d!887430 (= (isEmpty!20452 (list!12975 (_2!21028 lt!1095184))) ((_ is Nil!36361) (list!12975 (_2!21028 lt!1095184))))))

(assert (=> d!886938 d!887430))

(declare-fun d!887432 () Bool)

(assert (=> d!887432 (= (list!12975 (_2!21028 lt!1095184)) (list!12979 (c!542433 (_2!21028 lt!1095184))))))

(declare-fun bs!543248 () Bool)

(assert (= bs!543248 d!887432))

(declare-fun m!3510481 () Bool)

(assert (=> bs!543248 m!3510481))

(assert (=> d!886938 d!887432))

(declare-fun d!887434 () Bool)

(declare-fun lt!1095915 () Bool)

(assert (=> d!887434 (= lt!1095915 (isEmpty!20452 (list!12979 (c!542433 (_2!21028 lt!1095184)))))))

(assert (=> d!887434 (= lt!1095915 (= (size!27432 (c!542433 (_2!21028 lt!1095184))) 0))))

(assert (=> d!887434 (= (isEmpty!20456 (c!542433 (_2!21028 lt!1095184))) lt!1095915)))

(declare-fun bs!543249 () Bool)

(assert (= bs!543249 d!887434))

(assert (=> bs!543249 m!3510481))

(assert (=> bs!543249 m!3510481))

(declare-fun m!3510483 () Bool)

(assert (=> bs!543249 m!3510483))

(declare-fun m!3510485 () Bool)

(assert (=> bs!543249 m!3510485))

(assert (=> d!886938 d!887434))

(declare-fun b!3229995 () Bool)

(declare-fun e!2014523 () List!36485)

(assert (=> b!3229995 (= e!2014523 (++!8756 (list!12979 (left!28314 (c!542433 (_2!21028 lt!1095143)))) (list!12979 (right!28644 (c!542433 (_2!21028 lt!1095143))))))))

(declare-fun b!3229994 () Bool)

(assert (=> b!3229994 (= e!2014523 (list!12981 (xs!14025 (c!542433 (_2!21028 lt!1095143)))))))

(declare-fun b!3229993 () Bool)

(declare-fun e!2014522 () List!36485)

(assert (=> b!3229993 (= e!2014522 e!2014523)))

(declare-fun c!542874 () Bool)

(assert (=> b!3229993 (= c!542874 ((_ is Leaf!17151) (c!542433 (_2!21028 lt!1095143))))))

(declare-fun d!887436 () Bool)

(declare-fun c!542873 () Bool)

(assert (=> d!887436 (= c!542873 ((_ is Empty!10907) (c!542433 (_2!21028 lt!1095143))))))

(assert (=> d!887436 (= (list!12979 (c!542433 (_2!21028 lt!1095143))) e!2014522)))

(declare-fun b!3229992 () Bool)

(assert (=> b!3229992 (= e!2014522 Nil!36361)))

(assert (= (and d!887436 c!542873) b!3229992))

(assert (= (and d!887436 (not c!542873)) b!3229993))

(assert (= (and b!3229993 c!542874) b!3229994))

(assert (= (and b!3229993 (not c!542874)) b!3229995))

(declare-fun m!3510487 () Bool)

(assert (=> b!3229995 m!3510487))

(declare-fun m!3510489 () Bool)

(assert (=> b!3229995 m!3510489))

(assert (=> b!3229995 m!3510487))

(assert (=> b!3229995 m!3510489))

(declare-fun m!3510491 () Bool)

(assert (=> b!3229995 m!3510491))

(declare-fun m!3510493 () Bool)

(assert (=> b!3229994 m!3510493))

(assert (=> d!886772 d!887436))

(declare-fun d!887438 () Bool)

(declare-fun lt!1095916 () Bool)

(assert (=> d!887438 (= lt!1095916 (isEmpty!20453 (list!12978 (_1!21028 lt!1095335))))))

(assert (=> d!887438 (= lt!1095916 (isEmpty!20454 (c!542434 (_1!21028 lt!1095335))))))

(assert (=> d!887438 (= (isEmpty!20446 (_1!21028 lt!1095335)) lt!1095916)))

(declare-fun bs!543250 () Bool)

(assert (= bs!543250 d!887438))

(assert (=> bs!543250 m!3508235))

(assert (=> bs!543250 m!3508235))

(declare-fun m!3510495 () Bool)

(assert (=> bs!543250 m!3510495))

(declare-fun m!3510497 () Bool)

(assert (=> bs!543250 m!3510497))

(assert (=> b!3228804 d!887438))

(declare-fun d!887440 () Bool)

(assert (=> d!887440 (= (charsToInt!0 (text!38919 (value!170541 (h!41783 tokens!494)))) (choose!625 (text!38919 (value!170541 (h!41783 tokens!494)))))))

(declare-fun bs!543251 () Bool)

(assert (= bs!543251 d!887440))

(declare-fun m!3510499 () Bool)

(assert (=> bs!543251 m!3510499))

(assert (=> d!886918 d!887440))

(declare-fun b!3229999 () Bool)

(declare-fun e!2014526 () List!36485)

(assert (=> b!3229999 (= e!2014526 (printList!1405 thiss!18206 (t!241332 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))))

(declare-fun b!3230000 () Bool)

(assert (=> b!3230000 (= e!2014526 (Cons!36361 (h!41781 (list!12975 (charsOf!3282 (h!41783 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))) (++!8756 (t!241330 (list!12975 (charsOf!3282 (h!41783 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))) (printList!1405 thiss!18206 (t!241332 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))))))

(declare-fun e!2014525 () Bool)

(declare-fun lt!1095917 () List!36485)

(declare-fun b!3230002 () Bool)

(assert (=> b!3230002 (= e!2014525 (or (not (= (printList!1405 thiss!18206 (t!241332 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363)))) Nil!36361)) (= lt!1095917 (list!12975 (charsOf!3282 (h!41783 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))))))

(declare-fun b!3230001 () Bool)

(declare-fun res!1315351 () Bool)

(assert (=> b!3230001 (=> (not res!1315351) (not e!2014525))))

(assert (=> b!3230001 (= res!1315351 (= (size!27430 lt!1095917) (+ (size!27430 (list!12975 (charsOf!3282 (h!41783 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))) (size!27430 (printList!1405 thiss!18206 (t!241332 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))))))

(declare-fun d!887442 () Bool)

(assert (=> d!887442 e!2014525))

(declare-fun res!1315352 () Bool)

(assert (=> d!887442 (=> (not res!1315352) (not e!2014525))))

(assert (=> d!887442 (= res!1315352 (= (content!4918 lt!1095917) ((_ map or) (content!4918 (list!12975 (charsOf!3282 (h!41783 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))) (content!4918 (printList!1405 thiss!18206 (t!241332 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))))))

(assert (=> d!887442 (= lt!1095917 e!2014526)))

(declare-fun c!542875 () Bool)

(assert (=> d!887442 (= c!542875 ((_ is Nil!36361) (list!12975 (charsOf!3282 (h!41783 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))))))

(assert (=> d!887442 (= (++!8756 (list!12975 (charsOf!3282 (h!41783 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363))))) (printList!1405 thiss!18206 (t!241332 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363))))) lt!1095917)))

(assert (= (and d!887442 c!542875) b!3229999))

(assert (= (and d!887442 (not c!542875)) b!3230000))

(assert (= (and d!887442 res!1315352) b!3230001))

(assert (= (and b!3230001 res!1315351) b!3230002))

(assert (=> b!3230000 m!3508775))

(declare-fun m!3510501 () Bool)

(assert (=> b!3230000 m!3510501))

(declare-fun m!3510503 () Bool)

(assert (=> b!3230001 m!3510503))

(assert (=> b!3230001 m!3508773))

(declare-fun m!3510505 () Bool)

(assert (=> b!3230001 m!3510505))

(assert (=> b!3230001 m!3508775))

(declare-fun m!3510507 () Bool)

(assert (=> b!3230001 m!3510507))

(declare-fun m!3510509 () Bool)

(assert (=> d!887442 m!3510509))

(assert (=> d!887442 m!3508773))

(declare-fun m!3510511 () Bool)

(assert (=> d!887442 m!3510511))

(assert (=> d!887442 m!3508775))

(declare-fun m!3510513 () Bool)

(assert (=> d!887442 m!3510513))

(assert (=> b!3229039 d!887442))

(declare-fun d!887444 () Bool)

(assert (=> d!887444 (= (list!12975 (charsOf!3282 (h!41783 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363))))) (list!12979 (c!542433 (charsOf!3282 (h!41783 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))))))

(declare-fun bs!543252 () Bool)

(assert (= bs!543252 d!887444))

(declare-fun m!3510515 () Bool)

(assert (=> bs!543252 m!3510515))

(assert (=> b!3229039 d!887444))

(declare-fun d!887446 () Bool)

(declare-fun lt!1095918 () BalanceConc!21428)

(assert (=> d!887446 (= (list!12975 lt!1095918) (originalCharacters!5980 (h!41783 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))))

(assert (=> d!887446 (= lt!1095918 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))) (value!170541 (h!41783 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))))

(assert (=> d!887446 (= (charsOf!3282 (h!41783 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363)))) lt!1095918)))

(declare-fun b_lambda!88979 () Bool)

(assert (=> (not b_lambda!88979) (not d!887446)))

(declare-fun tb!160059 () Bool)

(declare-fun t!241597 () Bool)

(assert (=> (and b!3228087 (= (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))) t!241597) tb!160059))

(declare-fun b!3230009 () Bool)

(declare-fun e!2014533 () Bool)

(declare-fun tp!1017614 () Bool)

(assert (=> b!3230009 (= e!2014533 (and (inv!49253 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))) (value!170541 (h!41783 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))) tp!1017614))))

(declare-fun result!202620 () Bool)

(assert (=> tb!160059 (= result!202620 (and (inv!49254 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))) (value!170541 (h!41783 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))) e!2014533))))

(assert (= tb!160059 b!3230009))

(declare-fun m!3510517 () Bool)

(assert (=> b!3230009 m!3510517))

(declare-fun m!3510521 () Bool)

(assert (=> tb!160059 m!3510521))

(assert (=> d!887446 t!241597))

(declare-fun b_and!216415 () Bool)

(assert (= b_and!216395 (and (=> t!241597 result!202620) b_and!216415)))

(declare-fun t!241599 () Bool)

(declare-fun tb!160061 () Bool)

(assert (=> (and b!3229130 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494)))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))) t!241599) tb!160061))

(declare-fun result!202622 () Bool)

(assert (= result!202622 result!202620))

(assert (=> d!887446 t!241599))

(declare-fun b_and!216417 () Bool)

(assert (= b_and!216387 (and (=> t!241599 result!202622) b_and!216417)))

(declare-fun t!241601 () Bool)

(declare-fun tb!160063 () Bool)

(assert (=> (and b!3228442 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 rules!2135)))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))) t!241601) tb!160063))

(declare-fun result!202624 () Bool)

(assert (= result!202624 result!202620))

(assert (=> d!887446 t!241601))

(declare-fun b_and!216419 () Bool)

(assert (= b_and!216391 (and (=> t!241601 result!202624) b_and!216419)))

(declare-fun t!241603 () Bool)

(declare-fun tb!160065 () Bool)

(assert (=> (and b!3228076 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))) t!241603) tb!160065))

(declare-fun result!202626 () Bool)

(assert (= result!202626 result!202620))

(assert (=> d!887446 t!241603))

(declare-fun b_and!216421 () Bool)

(assert (= b_and!216397 (and (=> t!241603 result!202626) b_and!216421)))

(declare-fun t!241605 () Bool)

(declare-fun tb!160067 () Bool)

(assert (=> (and b!3229145 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 rules!2135))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))) t!241605) tb!160067))

(declare-fun result!202628 () Bool)

(assert (= result!202628 result!202620))

(assert (=> d!887446 t!241605))

(declare-fun b_and!216423 () Bool)

(assert (= b_and!216393 (and (=> t!241605 result!202628) b_and!216423)))

(declare-fun t!241607 () Bool)

(declare-fun tb!160069 () Bool)

(assert (=> (and b!3228460 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))) t!241607) tb!160069))

(declare-fun result!202630 () Bool)

(assert (= result!202630 result!202620))

(assert (=> d!887446 t!241607))

(declare-fun b_and!216425 () Bool)

(assert (= b_and!216399 (and (=> t!241607 result!202630) b_and!216425)))

(declare-fun tb!160071 () Bool)

(declare-fun t!241609 () Bool)

(assert (=> (and b!3228072 (= (toChars!7233 (transformation!5266 (h!41782 rules!2135))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))) t!241609) tb!160071))

(declare-fun result!202632 () Bool)

(assert (= result!202632 result!202620))

(assert (=> d!887446 t!241609))

(declare-fun b_and!216427 () Bool)

(assert (= b_and!216389 (and (=> t!241609 result!202632) b_and!216427)))

(declare-fun m!3510531 () Bool)

(assert (=> d!887446 m!3510531))

(declare-fun m!3510533 () Bool)

(assert (=> d!887446 m!3510533))

(assert (=> b!3229039 d!887446))

(declare-fun d!887452 () Bool)

(declare-fun c!542877 () Bool)

(assert (=> d!887452 (= c!542877 ((_ is Cons!36363) (t!241332 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))))

(declare-fun e!2014535 () List!36485)

(assert (=> d!887452 (= (printList!1405 thiss!18206 (t!241332 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363)))) e!2014535)))

(declare-fun b!3230012 () Bool)

(assert (=> b!3230012 (= e!2014535 (++!8756 (list!12975 (charsOf!3282 (h!41783 (t!241332 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))) (printList!1405 thiss!18206 (t!241332 (t!241332 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))))))

(declare-fun b!3230013 () Bool)

(assert (=> b!3230013 (= e!2014535 Nil!36361)))

(assert (= (and d!887452 c!542877) b!3230012))

(assert (= (and d!887452 (not c!542877)) b!3230013))

(declare-fun m!3510537 () Bool)

(assert (=> b!3230012 m!3510537))

(assert (=> b!3230012 m!3510537))

(declare-fun m!3510539 () Bool)

(assert (=> b!3230012 m!3510539))

(declare-fun m!3510541 () Bool)

(assert (=> b!3230012 m!3510541))

(assert (=> b!3230012 m!3510539))

(assert (=> b!3230012 m!3510541))

(declare-fun m!3510543 () Bool)

(assert (=> b!3230012 m!3510543))

(assert (=> b!3229039 d!887452))

(declare-fun bs!543254 () Bool)

(declare-fun d!887456 () Bool)

(assert (= bs!543254 (and d!887456 d!886734)))

(declare-fun lambda!118264 () Int)

(assert (=> bs!543254 (= (and (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 rules!2135)))) (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241)))) (= (toValue!7374 (transformation!5266 (h!41782 (t!241331 rules!2135)))) (toValue!7374 (transformation!5266 (rule!7724 separatorToken!241))))) (= lambda!118264 lambda!118238))))

(declare-fun bs!543255 () Bool)

(assert (= bs!543255 (and d!887456 d!886762)))

(assert (=> bs!543255 (= (and (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 rules!2135)))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494))))) (= (toValue!7374 (transformation!5266 (h!41782 (t!241331 rules!2135)))) (toValue!7374 (transformation!5266 (rule!7724 (h!41783 tokens!494)))))) (= lambda!118264 lambda!118239))))

(declare-fun bs!543256 () Bool)

(assert (= bs!543256 (and d!887456 d!886936)))

(assert (=> bs!543256 (= (and (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 rules!2135)))) (toChars!7233 (transformation!5266 (h!41782 rules!2135)))) (= (toValue!7374 (transformation!5266 (h!41782 (t!241331 rules!2135)))) (toValue!7374 (transformation!5266 (h!41782 rules!2135))))) (= lambda!118264 lambda!118249))))

(declare-fun bs!543257 () Bool)

(assert (= bs!543257 (and d!887456 d!887224)))

(assert (=> bs!543257 (= (and (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 rules!2135)))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494)))))) (= (toValue!7374 (transformation!5266 (h!41782 (t!241331 rules!2135)))) (toValue!7374 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))))) (= lambda!118264 lambda!118251))))

(assert (=> d!887456 true))

(assert (=> d!887456 (< (dynLambda!14793 order!18765 (toChars!7233 (transformation!5266 (h!41782 (t!241331 rules!2135))))) (dynLambda!14797 order!18773 lambda!118264))))

(assert (=> d!887456 true))

(assert (=> d!887456 (< (dynLambda!14791 order!18761 (toValue!7374 (transformation!5266 (h!41782 (t!241331 rules!2135))))) (dynLambda!14797 order!18773 lambda!118264))))

(assert (=> d!887456 (= (semiInverseModEq!2171 (toChars!7233 (transformation!5266 (h!41782 (t!241331 rules!2135)))) (toValue!7374 (transformation!5266 (h!41782 (t!241331 rules!2135))))) (Forall!1278 lambda!118264))))

(declare-fun bs!543258 () Bool)

(assert (= bs!543258 d!887456))

(declare-fun m!3510545 () Bool)

(assert (=> bs!543258 m!3510545))

(assert (=> d!886550 d!887456))

(declare-fun d!887458 () Bool)

(declare-fun c!542883 () Bool)

(assert (=> d!887458 (= c!542883 ((_ is Nil!36363) lt!1095512))))

(declare-fun e!2014543 () (InoxSet Token!9898))

(assert (=> d!887458 (= (content!4920 lt!1095512) e!2014543)))

(declare-fun b!3230026 () Bool)

(assert (=> b!3230026 (= e!2014543 ((as const (Array Token!9898 Bool)) false))))

(declare-fun b!3230027 () Bool)

(assert (=> b!3230027 (= e!2014543 ((_ map or) (store ((as const (Array Token!9898 Bool)) false) (h!41783 lt!1095512) true) (content!4920 (t!241332 lt!1095512))))))

(assert (= (and d!887458 c!542883) b!3230026))

(assert (= (and d!887458 (not c!542883)) b!3230027))

(declare-fun m!3510561 () Bool)

(assert (=> b!3230027 m!3510561))

(declare-fun m!3510563 () Bool)

(assert (=> b!3230027 m!3510563))

(assert (=> d!886888 d!887458))

(declare-fun d!887468 () Bool)

(declare-fun c!542886 () Bool)

(assert (=> d!887468 (= c!542886 ((_ is Nil!36363) lt!1095096))))

(declare-fun e!2014546 () (InoxSet Token!9898))

(assert (=> d!887468 (= (content!4920 lt!1095096) e!2014546)))

(declare-fun b!3230032 () Bool)

(assert (=> b!3230032 (= e!2014546 ((as const (Array Token!9898 Bool)) false))))

(declare-fun b!3230033 () Bool)

(assert (=> b!3230033 (= e!2014546 ((_ map or) (store ((as const (Array Token!9898 Bool)) false) (h!41783 lt!1095096) true) (content!4920 (t!241332 lt!1095096))))))

(assert (= (and d!887468 c!542886) b!3230032))

(assert (= (and d!887468 (not c!542886)) b!3230033))

(declare-fun m!3510565 () Bool)

(assert (=> b!3230033 m!3510565))

(assert (=> b!3230033 m!3509015))

(assert (=> d!886888 d!887468))

(declare-fun d!887470 () Bool)

(declare-fun lt!1095924 () Token!9898)

(assert (=> d!887470 (contains!6527 (tail!5232 lt!1095094) lt!1095924)))

(declare-fun e!2014547 () Token!9898)

(assert (=> d!887470 (= lt!1095924 e!2014547)))

(declare-fun c!542887 () Bool)

(assert (=> d!887470 (= c!542887 (= (- 0 1) 0))))

(declare-fun e!2014548 () Bool)

(assert (=> d!887470 e!2014548))

(declare-fun res!1315355 () Bool)

(assert (=> d!887470 (=> (not res!1315355) (not e!2014548))))

(assert (=> d!887470 (= res!1315355 (<= 0 (- 0 1)))))

(assert (=> d!887470 (= (apply!8301 (tail!5232 lt!1095094) (- 0 1)) lt!1095924)))

(declare-fun b!3230034 () Bool)

(assert (=> b!3230034 (= e!2014548 (< (- 0 1) (size!27433 (tail!5232 lt!1095094))))))

(declare-fun b!3230035 () Bool)

(assert (=> b!3230035 (= e!2014547 (head!7088 (tail!5232 lt!1095094)))))

(declare-fun b!3230036 () Bool)

(assert (=> b!3230036 (= e!2014547 (apply!8301 (tail!5232 (tail!5232 lt!1095094)) (- (- 0 1) 1)))))

(assert (= (and d!887470 res!1315355) b!3230034))

(assert (= (and d!887470 c!542887) b!3230035))

(assert (= (and d!887470 (not c!542887)) b!3230036))

(assert (=> d!887470 m!3508667))

(declare-fun m!3510567 () Bool)

(assert (=> d!887470 m!3510567))

(assert (=> b!3230034 m!3508667))

(declare-fun m!3510569 () Bool)

(assert (=> b!3230034 m!3510569))

(assert (=> b!3230035 m!3508667))

(declare-fun m!3510571 () Bool)

(assert (=> b!3230035 m!3510571))

(assert (=> b!3230036 m!3508667))

(declare-fun m!3510573 () Bool)

(assert (=> b!3230036 m!3510573))

(assert (=> b!3230036 m!3510573))

(declare-fun m!3510575 () Bool)

(assert (=> b!3230036 m!3510575))

(assert (=> b!3228986 d!887470))

(declare-fun d!887472 () Bool)

(assert (=> d!887472 (= (tail!5232 lt!1095094) (t!241332 lt!1095094))))

(assert (=> b!3228986 d!887472))

(declare-fun d!887474 () Bool)

(assert (=> d!887474 (= (list!12975 lt!1095557) (list!12979 (c!542433 lt!1095557)))))

(declare-fun bs!543260 () Bool)

(assert (= bs!543260 d!887474))

(declare-fun m!3510579 () Bool)

(assert (=> bs!543260 m!3510579))

(assert (=> d!886908 d!887474))

(declare-fun d!887478 () Bool)

(assert (=> d!887478 (= (dropList!1093 lt!1095069 (+ 0 1)) (drop!1876 (list!12980 (c!542434 lt!1095069)) (+ 0 1)))))

(declare-fun bs!543261 () Bool)

(assert (= bs!543261 d!887478))

(assert (=> bs!543261 m!3507739))

(assert (=> bs!543261 m!3507739))

(declare-fun m!3510585 () Bool)

(assert (=> bs!543261 m!3510585))

(assert (=> d!886908 d!887478))

(declare-fun d!887482 () Bool)

(assert (=> d!887482 (= (list!12975 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095069 0)))) (list!12979 (c!542433 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095069 0))))))))

(declare-fun bs!543262 () Bool)

(assert (= bs!543262 d!887482))

(declare-fun m!3510589 () Bool)

(assert (=> bs!543262 m!3510589))

(assert (=> d!886908 d!887482))

(declare-fun d!887484 () Bool)

(declare-fun lt!1095926 () List!36485)

(assert (=> d!887484 (= lt!1095926 (++!8756 (list!12975 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095069 0)))) (printList!1405 thiss!18206 (dropList!1093 lt!1095069 (+ 0 1)))))))

(declare-fun e!2014554 () List!36485)

(assert (=> d!887484 (= lt!1095926 e!2014554)))

(declare-fun c!542893 () Bool)

(assert (=> d!887484 (= c!542893 ((_ is Cons!36363) (dropList!1093 lt!1095069 (+ 0 1))))))

(assert (=> d!887484 (= (printListTailRec!576 thiss!18206 (dropList!1093 lt!1095069 (+ 0 1)) (list!12975 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095069 0))))) lt!1095926)))

(declare-fun b!3230047 () Bool)

(assert (=> b!3230047 (= e!2014554 (printListTailRec!576 thiss!18206 (t!241332 (dropList!1093 lt!1095069 (+ 0 1))) (++!8756 (list!12975 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095069 0)))) (list!12975 (charsOf!3282 (h!41783 (dropList!1093 lt!1095069 (+ 0 1))))))))))

(declare-fun lt!1095929 () List!36485)

(assert (=> b!3230047 (= lt!1095929 (list!12975 (charsOf!3282 (h!41783 (dropList!1093 lt!1095069 (+ 0 1))))))))

(declare-fun lt!1095927 () List!36485)

(assert (=> b!3230047 (= lt!1095927 (printList!1405 thiss!18206 (t!241332 (dropList!1093 lt!1095069 (+ 0 1)))))))

(declare-fun lt!1095925 () Unit!50946)

(assert (=> b!3230047 (= lt!1095925 (lemmaConcatAssociativity!1789 (list!12975 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095069 0)))) lt!1095929 lt!1095927))))

(assert (=> b!3230047 (= (++!8756 (++!8756 (list!12975 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095069 0)))) lt!1095929) lt!1095927) (++!8756 (list!12975 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095069 0)))) (++!8756 lt!1095929 lt!1095927)))))

(declare-fun lt!1095928 () Unit!50946)

(assert (=> b!3230047 (= lt!1095928 lt!1095925)))

(declare-fun b!3230048 () Bool)

(assert (=> b!3230048 (= e!2014554 (list!12975 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095069 0)))))))

(assert (= (and d!887484 c!542893) b!3230047))

(assert (= (and d!887484 (not c!542893)) b!3230048))

(assert (=> d!887484 m!3508691))

(declare-fun m!3510603 () Bool)

(assert (=> d!887484 m!3510603))

(assert (=> d!887484 m!3508693))

(assert (=> d!887484 m!3510603))

(declare-fun m!3510607 () Bool)

(assert (=> d!887484 m!3510607))

(declare-fun m!3510609 () Bool)

(assert (=> b!3230047 m!3510609))

(declare-fun m!3510613 () Bool)

(assert (=> b!3230047 m!3510613))

(declare-fun m!3510615 () Bool)

(assert (=> b!3230047 m!3510615))

(declare-fun m!3510617 () Bool)

(assert (=> b!3230047 m!3510617))

(assert (=> b!3230047 m!3508693))

(assert (=> b!3230047 m!3510615))

(declare-fun m!3510621 () Bool)

(assert (=> b!3230047 m!3510621))

(declare-fun m!3510623 () Bool)

(assert (=> b!3230047 m!3510623))

(assert (=> b!3230047 m!3508693))

(declare-fun m!3510625 () Bool)

(assert (=> b!3230047 m!3510625))

(assert (=> b!3230047 m!3510623))

(declare-fun m!3510627 () Bool)

(assert (=> b!3230047 m!3510627))

(declare-fun m!3510629 () Bool)

(assert (=> b!3230047 m!3510629))

(assert (=> b!3230047 m!3508693))

(assert (=> b!3230047 m!3510629))

(declare-fun m!3510631 () Bool)

(assert (=> b!3230047 m!3510631))

(assert (=> b!3230047 m!3508693))

(assert (=> b!3230047 m!3510627))

(assert (=> b!3230047 m!3510609))

(assert (=> d!886908 d!887484))

(assert (=> d!886908 d!886560))

(declare-fun d!887498 () Bool)

(assert (=> d!887498 (= (Forall2!875 lambda!118220) (choose!18840 lambda!118220))))

(declare-fun bs!543263 () Bool)

(assert (= bs!543263 d!887498))

(declare-fun m!3510635 () Bool)

(assert (=> bs!543263 m!3510635))

(assert (=> d!886558 d!887498))

(declare-fun d!887502 () Bool)

(assert (=> d!887502 (= (list!12975 lt!1095606) (list!12979 (c!542433 lt!1095606)))))

(declare-fun bs!543264 () Bool)

(assert (= bs!543264 d!887502))

(declare-fun m!3510637 () Bool)

(assert (=> bs!543264 m!3510637))

(assert (=> d!886926 d!887502))

(declare-fun d!887506 () Bool)

(assert (=> d!887506 (= (list!12978 lt!1095191) (list!12980 (c!542434 lt!1095191)))))

(declare-fun bs!543265 () Bool)

(assert (= bs!543265 d!887506))

(declare-fun m!3510639 () Bool)

(assert (=> bs!543265 m!3510639))

(assert (=> d!886536 d!887506))

(declare-fun d!887510 () Bool)

(declare-fun e!2014574 () Bool)

(assert (=> d!887510 e!2014574))

(declare-fun res!1315361 () Bool)

(assert (=> d!887510 (=> (not res!1315361) (not e!2014574))))

(declare-fun lt!1095941 () Conc!10908)

(assert (=> d!887510 (= res!1315361 (= (list!12980 lt!1095941) tokens!494))))

(declare-fun choose!18843 (List!36487) Conc!10908)

(assert (=> d!887510 (= lt!1095941 (choose!18843 tokens!494))))

(assert (=> d!887510 (= (fromList!632 tokens!494) lt!1095941)))

(declare-fun b!3230079 () Bool)

(assert (=> b!3230079 (= e!2014574 (isBalanced!3244 lt!1095941))))

(assert (= (and d!887510 res!1315361) b!3230079))

(declare-fun m!3510657 () Bool)

(assert (=> d!887510 m!3510657))

(declare-fun m!3510659 () Bool)

(assert (=> d!887510 m!3510659))

(declare-fun m!3510661 () Bool)

(assert (=> b!3230079 m!3510661))

(assert (=> d!886536 d!887510))

(declare-fun d!887520 () Bool)

(declare-fun lt!1095942 () Int)

(assert (=> d!887520 (>= lt!1095942 0)))

(declare-fun e!2014575 () Int)

(assert (=> d!887520 (= lt!1095942 e!2014575)))

(declare-fun c!542905 () Bool)

(assert (=> d!887520 (= c!542905 ((_ is Nil!36363) (list!12978 lt!1095069)))))

(assert (=> d!887520 (= (size!27433 (list!12978 lt!1095069)) lt!1095942)))

(declare-fun b!3230080 () Bool)

(assert (=> b!3230080 (= e!2014575 0)))

(declare-fun b!3230081 () Bool)

(assert (=> b!3230081 (= e!2014575 (+ 1 (size!27433 (t!241332 (list!12978 lt!1095069)))))))

(assert (= (and d!887520 c!542905) b!3230080))

(assert (= (and d!887520 (not c!542905)) b!3230081))

(declare-fun m!3510665 () Bool)

(assert (=> b!3230081 m!3510665))

(assert (=> d!886560 d!887520))

(assert (=> d!886560 d!886576))

(declare-fun d!887524 () Bool)

(declare-fun lt!1095943 () Int)

(assert (=> d!887524 (= lt!1095943 (size!27433 (list!12980 (c!542434 lt!1095069))))))

(assert (=> d!887524 (= lt!1095943 (ite ((_ is Empty!10908) (c!542434 lt!1095069)) 0 (ite ((_ is Leaf!17152) (c!542434 lt!1095069)) (csize!22047 (c!542434 lt!1095069)) (csize!22046 (c!542434 lt!1095069)))))))

(assert (=> d!887524 (= (size!27434 (c!542434 lt!1095069)) lt!1095943)))

(declare-fun bs!543271 () Bool)

(assert (= bs!543271 d!887524))

(assert (=> bs!543271 m!3507739))

(assert (=> bs!543271 m!3507739))

(declare-fun m!3510669 () Bool)

(assert (=> bs!543271 m!3510669))

(assert (=> d!886560 d!887524))

(assert (=> d!886784 d!887054))

(declare-fun d!887528 () Bool)

(assert (=> d!887528 (= (list!12975 lt!1095521) (list!12979 (c!542433 lt!1095521)))))

(declare-fun bs!543272 () Bool)

(assert (= bs!543272 d!887528))

(declare-fun m!3510671 () Bool)

(assert (=> bs!543272 m!3510671))

(assert (=> d!886902 d!887528))

(declare-fun b!3230084 () Bool)

(declare-fun e!2014578 () tuple2!35792)

(assert (=> b!3230084 (= e!2014578 (tuple2!35793 Nil!36363 (_2!21031 (v!35824 lt!1095345))))))

(declare-fun b!3230085 () Bool)

(declare-fun e!2014579 () Bool)

(declare-fun lt!1095946 () tuple2!35792)

(assert (=> b!3230085 (= e!2014579 (not (isEmpty!20453 (_1!21030 lt!1095946))))))

(declare-fun d!887530 () Bool)

(declare-fun e!2014577 () Bool)

(assert (=> d!887530 e!2014577))

(declare-fun c!542906 () Bool)

(assert (=> d!887530 (= c!542906 (> (size!27433 (_1!21030 lt!1095946)) 0))))

(assert (=> d!887530 (= lt!1095946 e!2014578)))

(declare-fun c!542907 () Bool)

(declare-fun lt!1095945 () Option!7215)

(assert (=> d!887530 (= c!542907 ((_ is Some!7214) lt!1095945))))

(assert (=> d!887530 (= lt!1095945 (maxPrefix!2486 thiss!18206 rules!2135 (_2!21031 (v!35824 lt!1095345))))))

(assert (=> d!887530 (= (lexList!1335 thiss!18206 rules!2135 (_2!21031 (v!35824 lt!1095345))) lt!1095946)))

(declare-fun b!3230086 () Bool)

(declare-fun lt!1095944 () tuple2!35792)

(assert (=> b!3230086 (= e!2014578 (tuple2!35793 (Cons!36363 (_1!21031 (v!35824 lt!1095945)) (_1!21030 lt!1095944)) (_2!21030 lt!1095944)))))

(assert (=> b!3230086 (= lt!1095944 (lexList!1335 thiss!18206 rules!2135 (_2!21031 (v!35824 lt!1095945))))))

(declare-fun b!3230087 () Bool)

(assert (=> b!3230087 (= e!2014577 (= (_2!21030 lt!1095946) (_2!21031 (v!35824 lt!1095345))))))

(declare-fun b!3230088 () Bool)

(assert (=> b!3230088 (= e!2014577 e!2014579)))

(declare-fun res!1315364 () Bool)

(assert (=> b!3230088 (= res!1315364 (< (size!27430 (_2!21030 lt!1095946)) (size!27430 (_2!21031 (v!35824 lt!1095345)))))))

(assert (=> b!3230088 (=> (not res!1315364) (not e!2014579))))

(assert (= (and d!887530 c!542907) b!3230086))

(assert (= (and d!887530 (not c!542907)) b!3230084))

(assert (= (and d!887530 c!542906) b!3230088))

(assert (= (and d!887530 (not c!542906)) b!3230087))

(assert (= (and b!3230088 res!1315364) b!3230085))

(declare-fun m!3510677 () Bool)

(assert (=> b!3230085 m!3510677))

(declare-fun m!3510679 () Bool)

(assert (=> d!887530 m!3510679))

(declare-fun m!3510681 () Bool)

(assert (=> d!887530 m!3510681))

(declare-fun m!3510683 () Bool)

(assert (=> b!3230086 m!3510683))

(declare-fun m!3510685 () Bool)

(assert (=> b!3230088 m!3510685))

(declare-fun m!3510687 () Bool)

(assert (=> b!3230088 m!3510687))

(assert (=> b!3228818 d!887530))

(declare-fun d!887532 () Bool)

(declare-fun res!1315366 () Bool)

(declare-fun e!2014582 () Bool)

(assert (=> d!887532 (=> res!1315366 e!2014582)))

(assert (=> d!887532 (= res!1315366 (not ((_ is Node!10907) (++!8761 (c!542433 (BalanceConc!21429 Empty!10907)) (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0)))))))))

(assert (=> d!887532 (= (isBalanced!3247 (++!8761 (c!542433 (BalanceConc!21429 Empty!10907)) (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0))))) e!2014582)))

(declare-fun b!3230090 () Bool)

(declare-fun res!1315368 () Bool)

(declare-fun e!2014581 () Bool)

(assert (=> b!3230090 (=> (not res!1315368) (not e!2014581))))

(assert (=> b!3230090 (= res!1315368 (not (isEmpty!20456 (left!28314 (++!8761 (c!542433 (BalanceConc!21429 Empty!10907)) (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0))))))))))

(declare-fun b!3230091 () Bool)

(assert (=> b!3230091 (= e!2014582 e!2014581)))

(declare-fun res!1315370 () Bool)

(assert (=> b!3230091 (=> (not res!1315370) (not e!2014581))))

(assert (=> b!3230091 (= res!1315370 (<= (- 1) (- (height!1580 (left!28314 (++!8761 (c!542433 (BalanceConc!21429 Empty!10907)) (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0)))))) (height!1580 (right!28644 (++!8761 (c!542433 (BalanceConc!21429 Empty!10907)) (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0)))))))))))

(declare-fun b!3230092 () Bool)

(declare-fun res!1315365 () Bool)

(assert (=> b!3230092 (=> (not res!1315365) (not e!2014581))))

(assert (=> b!3230092 (= res!1315365 (<= (- (height!1580 (left!28314 (++!8761 (c!542433 (BalanceConc!21429 Empty!10907)) (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0)))))) (height!1580 (right!28644 (++!8761 (c!542433 (BalanceConc!21429 Empty!10907)) (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0))))))) 1))))

(declare-fun b!3230093 () Bool)

(declare-fun res!1315367 () Bool)

(assert (=> b!3230093 (=> (not res!1315367) (not e!2014581))))

(assert (=> b!3230093 (= res!1315367 (isBalanced!3247 (right!28644 (++!8761 (c!542433 (BalanceConc!21429 Empty!10907)) (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0)))))))))

(declare-fun b!3230094 () Bool)

(assert (=> b!3230094 (= e!2014581 (not (isEmpty!20456 (right!28644 (++!8761 (c!542433 (BalanceConc!21429 Empty!10907)) (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0))))))))))

(declare-fun b!3230095 () Bool)

(declare-fun res!1315369 () Bool)

(assert (=> b!3230095 (=> (not res!1315369) (not e!2014581))))

(assert (=> b!3230095 (= res!1315369 (isBalanced!3247 (left!28314 (++!8761 (c!542433 (BalanceConc!21429 Empty!10907)) (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0)))))))))

(assert (= (and d!887532 (not res!1315366)) b!3230091))

(assert (= (and b!3230091 res!1315370) b!3230092))

(assert (= (and b!3230092 res!1315365) b!3230095))

(assert (= (and b!3230095 res!1315369) b!3230093))

(assert (= (and b!3230093 res!1315367) b!3230090))

(assert (= (and b!3230090 res!1315368) b!3230094))

(declare-fun m!3510697 () Bool)

(assert (=> b!3230091 m!3510697))

(declare-fun m!3510699 () Bool)

(assert (=> b!3230091 m!3510699))

(declare-fun m!3510701 () Bool)

(assert (=> b!3230094 m!3510701))

(declare-fun m!3510703 () Bool)

(assert (=> b!3230090 m!3510703))

(declare-fun m!3510705 () Bool)

(assert (=> b!3230095 m!3510705))

(assert (=> b!3230092 m!3510697))

(assert (=> b!3230092 m!3510699))

(declare-fun m!3510707 () Bool)

(assert (=> b!3230093 m!3510707))

(assert (=> b!3228995 d!887532))

(declare-fun bm!233311 () Bool)

(declare-fun call!233329 () Conc!10907)

(declare-fun call!233323 () Conc!10907)

(assert (=> bm!233311 (= call!233329 call!233323)))

(declare-fun bm!233312 () Bool)

(declare-fun call!233326 () Conc!10907)

(declare-fun call!233318 () Conc!10907)

(assert (=> bm!233312 (= call!233326 call!233318)))

(declare-fun bm!233314 () Bool)

(declare-fun call!233317 () Conc!10907)

(assert (=> bm!233314 (= call!233317 call!233323)))

(declare-fun b!3230160 () Bool)

(declare-fun res!1315396 () Bool)

(declare-fun e!2014614 () Bool)

(assert (=> b!3230160 (=> (not res!1315396) (not e!2014614))))

(declare-fun lt!1095958 () Conc!10907)

(assert (=> b!3230160 (= res!1315396 (isBalanced!3247 lt!1095958))))

(declare-fun c!542928 () Bool)

(declare-fun lt!1095961 () Conc!10907)

(declare-fun call!233330 () Conc!10907)

(declare-fun c!542931 () Bool)

(declare-fun bm!233315 () Bool)

(declare-fun c!542932 () Bool)

(declare-fun c!542935 () Bool)

(declare-fun c!542933 () Bool)

(declare-fun lt!1095960 () Conc!10907)

(declare-fun <>!279 (Conc!10907 Conc!10907) Conc!10907)

(assert (=> bm!233315 (= call!233318 (<>!279 (ite c!542933 (c!542433 (BalanceConc!21429 Empty!10907)) (ite c!542928 (ite c!542931 (left!28314 (right!28644 (c!542433 (BalanceConc!21429 Empty!10907)))) (left!28314 (c!542433 (BalanceConc!21429 Empty!10907)))) (ite c!542932 call!233329 (ite c!542935 call!233330 lt!1095961)))) (ite c!542933 (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0))) (ite c!542928 (ite c!542931 lt!1095960 (left!28314 (right!28644 (c!542433 (BalanceConc!21429 Empty!10907))))) (ite (or c!542932 c!542935) (right!28644 (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0)))) call!233330)))))))

(declare-fun b!3230161 () Bool)

(declare-fun e!2014620 () Conc!10907)

(declare-fun call!233331 () Conc!10907)

(assert (=> b!3230161 (= e!2014620 call!233331)))

(declare-fun b!3230162 () Bool)

(declare-fun e!2014613 () Conc!10907)

(declare-fun e!2014616 () Conc!10907)

(assert (=> b!3230162 (= e!2014613 e!2014616)))

(declare-fun c!542934 () Bool)

(assert (=> b!3230162 (= c!542934 (= (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0))) Empty!10907))))

(declare-fun b!3230163 () Bool)

(declare-fun lt!1095959 () Int)

(assert (=> b!3230163 (= c!542933 (and (<= (- 1) lt!1095959) (<= lt!1095959 1)))))

(assert (=> b!3230163 (= lt!1095959 (- (height!1580 (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0)))) (height!1580 (c!542433 (BalanceConc!21429 Empty!10907)))))))

(declare-fun e!2014619 () Conc!10907)

(assert (=> b!3230163 (= e!2014616 e!2014619)))

(declare-fun bm!233316 () Bool)

(declare-fun call!233322 () Int)

(assert (=> bm!233316 (= call!233322 (height!1580 (ite c!542928 (left!28314 (c!542433 (BalanceConc!21429 Empty!10907))) (left!28314 (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0)))))))))

(declare-fun b!3230164 () Bool)

(declare-fun res!1315397 () Bool)

(assert (=> b!3230164 (=> (not res!1315397) (not e!2014614))))

(assert (=> b!3230164 (= res!1315397 (>= (height!1580 lt!1095958) (max!0 (height!1580 (c!542433 (BalanceConc!21429 Empty!10907))) (height!1580 (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0)))))))))

(declare-fun bm!233317 () Bool)

(declare-fun call!233320 () Conc!10907)

(assert (=> bm!233317 (= call!233331 call!233320)))

(declare-fun b!3230165 () Bool)

(assert (=> b!3230165 (= e!2014619 call!233318)))

(declare-fun b!3230166 () Bool)

(assert (=> b!3230166 (= e!2014616 (c!542433 (BalanceConc!21429 Empty!10907)))))

(declare-fun bm!233318 () Bool)

(assert (=> bm!233318 (= call!233330 call!233320)))

(declare-fun bm!233313 () Bool)

(declare-fun call!233316 () Int)

(assert (=> bm!233313 (= call!233316 (height!1580 (ite c!542928 (right!28644 (c!542433 (BalanceConc!21429 Empty!10907))) lt!1095961)))))

(declare-fun d!887536 () Bool)

(assert (=> d!887536 e!2014614))

(declare-fun res!1315395 () Bool)

(assert (=> d!887536 (=> (not res!1315395) (not e!2014614))))

(assert (=> d!887536 (= res!1315395 (appendAssocInst!745 (c!542433 (BalanceConc!21429 Empty!10907)) (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0)))))))

(assert (=> d!887536 (= lt!1095958 e!2014613)))

(declare-fun c!542930 () Bool)

(assert (=> d!887536 (= c!542930 (= (c!542433 (BalanceConc!21429 Empty!10907)) Empty!10907))))

(declare-fun e!2014618 () Bool)

(assert (=> d!887536 e!2014618))

(declare-fun res!1315399 () Bool)

(assert (=> d!887536 (=> (not res!1315399) (not e!2014618))))

(assert (=> d!887536 (= res!1315399 (isBalanced!3247 (c!542433 (BalanceConc!21429 Empty!10907))))))

(assert (=> d!887536 (= (++!8761 (c!542433 (BalanceConc!21429 Empty!10907)) (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0)))) lt!1095958)))

(declare-fun b!3230167 () Bool)

(declare-fun call!233319 () Int)

(assert (=> b!3230167 (= c!542932 (>= call!233319 call!233322))))

(declare-fun e!2014617 () Conc!10907)

(declare-fun e!2014622 () Conc!10907)

(assert (=> b!3230167 (= e!2014617 e!2014622)))

(declare-fun b!3230168 () Bool)

(declare-fun e!2014621 () Conc!10907)

(declare-fun call!233325 () Conc!10907)

(assert (=> b!3230168 (= e!2014621 call!233325)))

(declare-fun bm!233319 () Bool)

(declare-fun c!542929 () Bool)

(assert (=> bm!233319 (= call!233323 (++!8761 (ite c!542928 (ite c!542929 (right!28644 (c!542433 (BalanceConc!21429 Empty!10907))) (right!28644 (right!28644 (c!542433 (BalanceConc!21429 Empty!10907))))) (c!542433 (BalanceConc!21429 Empty!10907))) (ite c!542928 (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0))) (ite c!542932 (left!28314 (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0)))) (left!28314 (left!28314 (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0)))))))))))

(declare-fun b!3230169 () Bool)

(declare-fun e!2014615 () Conc!10907)

(declare-fun call!233324 () Conc!10907)

(assert (=> b!3230169 (= e!2014615 call!233324)))

(declare-fun b!3230170 () Bool)

(declare-fun res!1315398 () Bool)

(assert (=> b!3230170 (=> (not res!1315398) (not e!2014614))))

(assert (=> b!3230170 (= res!1315398 (<= (height!1580 lt!1095958) (+ (max!0 (height!1580 (c!542433 (BalanceConc!21429 Empty!10907))) (height!1580 (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0))))) 1)))))

(declare-fun b!3230171 () Bool)

(declare-fun call!233327 () Conc!10907)

(assert (=> b!3230171 (= e!2014622 call!233327)))

(declare-fun bm!233320 () Bool)

(assert (=> bm!233320 (= call!233327 call!233326)))

(declare-fun b!3230172 () Bool)

(assert (=> b!3230172 (= e!2014620 e!2014615)))

(assert (=> b!3230172 (= lt!1095960 call!233317)))

(declare-fun call!233328 () Int)

(assert (=> b!3230172 (= c!542931 (= call!233328 (- call!233319 3)))))

(declare-fun b!3230173 () Bool)

(assert (=> b!3230173 (= e!2014615 call!233324)))

(declare-fun b!3230174 () Bool)

(assert (=> b!3230174 (= e!2014618 (isBalanced!3247 (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0)))))))

(declare-fun b!3230175 () Bool)

(assert (=> b!3230175 (= e!2014622 e!2014621)))

(assert (=> b!3230175 (= lt!1095961 call!233329)))

(assert (=> b!3230175 (= c!542935 (= call!233316 (- call!233328 3)))))

(declare-fun b!3230176 () Bool)

(assert (=> b!3230176 (= e!2014619 e!2014617)))

(assert (=> b!3230176 (= c!542928 (< lt!1095959 (- 1)))))

(declare-fun bm!233321 () Bool)

(assert (=> bm!233321 (= call!233324 call!233331)))

(declare-fun bm!233322 () Bool)

(assert (=> bm!233322 (= call!233319 (height!1580 (ite c!542928 (c!542433 (BalanceConc!21429 Empty!10907)) (right!28644 (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0)))))))))

(declare-fun bm!233323 () Bool)

(assert (=> bm!233323 (= call!233325 call!233327)))

(declare-fun bm!233324 () Bool)

(assert (=> bm!233324 (= call!233328 (height!1580 (ite c!542928 lt!1095960 (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0))))))))

(declare-fun bm!233325 () Bool)

(declare-fun call!233321 () Conc!10907)

(assert (=> bm!233325 (= call!233320 (<>!279 (ite c!542928 (ite (or c!542929 c!542931) (left!28314 (c!542433 (BalanceConc!21429 Empty!10907))) call!233321) (ite c!542935 lt!1095961 (right!28644 (left!28314 (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0))))))) (ite c!542928 (ite c!542929 call!233317 (ite c!542931 call!233321 lt!1095960)) (ite c!542935 (right!28644 (left!28314 (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0))))) (right!28644 (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0))))))))))

(declare-fun bm!233326 () Bool)

(assert (=> bm!233326 (= call!233321 call!233326)))

(declare-fun b!3230177 () Bool)

(assert (=> b!3230177 (= e!2014613 (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0))))))

(declare-fun b!3230178 () Bool)

(assert (=> b!3230178 (= e!2014621 call!233325)))

(declare-fun b!3230179 () Bool)

(assert (=> b!3230179 (= c!542929 (>= call!233322 call!233316))))

(assert (=> b!3230179 (= e!2014617 e!2014620)))

(declare-fun b!3230180 () Bool)

(assert (=> b!3230180 (= e!2014614 (= (list!12979 lt!1095958) (++!8756 (list!12979 (c!542433 (BalanceConc!21429 Empty!10907))) (list!12979 (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0)))))))))

(assert (= (and d!887536 res!1315399) b!3230174))

(assert (= (and d!887536 c!542930) b!3230177))

(assert (= (and d!887536 (not c!542930)) b!3230162))

(assert (= (and b!3230162 c!542934) b!3230166))

(assert (= (and b!3230162 (not c!542934)) b!3230163))

(assert (= (and b!3230163 c!542933) b!3230165))

(assert (= (and b!3230163 (not c!542933)) b!3230176))

(assert (= (and b!3230176 c!542928) b!3230179))

(assert (= (and b!3230176 (not c!542928)) b!3230167))

(assert (= (and b!3230179 c!542929) b!3230161))

(assert (= (and b!3230179 (not c!542929)) b!3230172))

(assert (= (and b!3230172 c!542931) b!3230173))

(assert (= (and b!3230172 (not c!542931)) b!3230169))

(assert (= (or b!3230173 b!3230169) bm!233326))

(assert (= (or b!3230173 b!3230169) bm!233321))

(assert (= (or b!3230161 b!3230172) bm!233314))

(assert (= (or b!3230161 bm!233321) bm!233317))

(assert (= (and b!3230167 c!542932) b!3230171))

(assert (= (and b!3230167 (not c!542932)) b!3230175))

(assert (= (and b!3230175 c!542935) b!3230168))

(assert (= (and b!3230175 (not c!542935)) b!3230178))

(assert (= (or b!3230168 b!3230178) bm!233318))

(assert (= (or b!3230168 b!3230178) bm!233323))

(assert (= (or b!3230171 b!3230175) bm!233311))

(assert (= (or b!3230171 bm!233323) bm!233320))

(assert (= (or bm!233314 bm!233311) bm!233319))

(assert (= (or b!3230179 b!3230167) bm!233316))

(assert (= (or bm!233317 bm!233318) bm!233325))

(assert (= (or bm!233326 bm!233320) bm!233312))

(assert (= (or b!3230172 b!3230167) bm!233322))

(assert (= (or b!3230172 b!3230175) bm!233324))

(assert (= (or b!3230179 b!3230175) bm!233313))

(assert (= (or b!3230165 bm!233312) bm!233315))

(assert (= (and d!887536 res!1315395) b!3230160))

(assert (= (and b!3230160 res!1315396) b!3230170))

(assert (= (and b!3230170 res!1315398) b!3230164))

(assert (= (and b!3230164 res!1315397) b!3230180))

(assert (=> d!887536 m!3508681))

(declare-fun m!3510761 () Bool)

(assert (=> d!887536 m!3510761))

(declare-fun m!3510763 () Bool)

(assert (=> bm!233325 m!3510763))

(declare-fun m!3510765 () Bool)

(assert (=> b!3230164 m!3510765))

(assert (=> b!3230164 m!3508677))

(assert (=> b!3230164 m!3508673))

(assert (=> b!3230164 m!3508677))

(assert (=> b!3230164 m!3508673))

(assert (=> b!3230164 m!3508679))

(declare-fun m!3510767 () Bool)

(assert (=> bm!233324 m!3510767))

(declare-fun m!3510769 () Bool)

(assert (=> b!3230160 m!3510769))

(declare-fun m!3510771 () Bool)

(assert (=> b!3230180 m!3510771))

(assert (=> b!3230180 m!3508037))

(declare-fun m!3510773 () Bool)

(assert (=> b!3230180 m!3510773))

(assert (=> b!3230180 m!3508037))

(assert (=> b!3230180 m!3510773))

(declare-fun m!3510775 () Bool)

(assert (=> b!3230180 m!3510775))

(declare-fun m!3510777 () Bool)

(assert (=> bm!233313 m!3510777))

(declare-fun m!3510779 () Bool)

(assert (=> bm!233316 m!3510779))

(assert (=> b!3230163 m!3508673))

(assert (=> b!3230163 m!3508677))

(declare-fun m!3510781 () Bool)

(assert (=> b!3230174 m!3510781))

(declare-fun m!3510783 () Bool)

(assert (=> bm!233319 m!3510783))

(declare-fun m!3510785 () Bool)

(assert (=> bm!233322 m!3510785))

(assert (=> b!3230170 m!3510765))

(assert (=> b!3230170 m!3508677))

(assert (=> b!3230170 m!3508673))

(assert (=> b!3230170 m!3508677))

(assert (=> b!3230170 m!3508673))

(assert (=> b!3230170 m!3508679))

(declare-fun m!3510787 () Bool)

(assert (=> bm!233315 m!3510787))

(assert (=> b!3228995 d!887536))

(declare-fun d!887554 () Bool)

(assert (=> d!887554 (= (list!12981 (xs!14025 (c!542433 (charsOf!3282 (h!41783 tokens!494))))) (innerList!10967 (xs!14025 (c!542433 (charsOf!3282 (h!41783 tokens!494))))))))

(assert (=> b!3228771 d!887554))

(declare-fun b!3230181 () Bool)

(declare-fun res!1315403 () Bool)

(declare-fun e!2014624 () Bool)

(assert (=> b!3230181 (=> (not res!1315403) (not e!2014624))))

(assert (=> b!3230181 (= res!1315403 (isBalanced!3244 (left!28315 (c!542434 lt!1095337))))))

(declare-fun d!887556 () Bool)

(declare-fun res!1315400 () Bool)

(declare-fun e!2014623 () Bool)

(assert (=> d!887556 (=> res!1315400 e!2014623)))

(assert (=> d!887556 (= res!1315400 (not ((_ is Node!10908) (c!542434 lt!1095337))))))

(assert (=> d!887556 (= (isBalanced!3244 (c!542434 lt!1095337)) e!2014623)))

(declare-fun b!3230182 () Bool)

(declare-fun res!1315405 () Bool)

(assert (=> b!3230182 (=> (not res!1315405) (not e!2014624))))

(assert (=> b!3230182 (= res!1315405 (not (isEmpty!20454 (left!28315 (c!542434 lt!1095337)))))))

(declare-fun b!3230183 () Bool)

(declare-fun res!1315402 () Bool)

(assert (=> b!3230183 (=> (not res!1315402) (not e!2014624))))

(assert (=> b!3230183 (= res!1315402 (<= (- (height!1577 (left!28315 (c!542434 lt!1095337))) (height!1577 (right!28645 (c!542434 lt!1095337)))) 1))))

(declare-fun b!3230184 () Bool)

(declare-fun res!1315404 () Bool)

(assert (=> b!3230184 (=> (not res!1315404) (not e!2014624))))

(assert (=> b!3230184 (= res!1315404 (isBalanced!3244 (right!28645 (c!542434 lt!1095337))))))

(declare-fun b!3230185 () Bool)

(assert (=> b!3230185 (= e!2014623 e!2014624)))

(declare-fun res!1315401 () Bool)

(assert (=> b!3230185 (=> (not res!1315401) (not e!2014624))))

(assert (=> b!3230185 (= res!1315401 (<= (- 1) (- (height!1577 (left!28315 (c!542434 lt!1095337))) (height!1577 (right!28645 (c!542434 lt!1095337))))))))

(declare-fun b!3230186 () Bool)

(assert (=> b!3230186 (= e!2014624 (not (isEmpty!20454 (right!28645 (c!542434 lt!1095337)))))))

(assert (= (and d!887556 (not res!1315400)) b!3230185))

(assert (= (and b!3230185 res!1315401) b!3230183))

(assert (= (and b!3230183 res!1315402) b!3230181))

(assert (= (and b!3230181 res!1315403) b!3230184))

(assert (= (and b!3230184 res!1315404) b!3230182))

(assert (= (and b!3230182 res!1315405) b!3230186))

(declare-fun m!3510789 () Bool)

(assert (=> b!3230185 m!3510789))

(declare-fun m!3510791 () Bool)

(assert (=> b!3230185 m!3510791))

(assert (=> b!3230183 m!3510789))

(assert (=> b!3230183 m!3510791))

(declare-fun m!3510793 () Bool)

(assert (=> b!3230184 m!3510793))

(declare-fun m!3510795 () Bool)

(assert (=> b!3230181 m!3510795))

(declare-fun m!3510797 () Bool)

(assert (=> b!3230182 m!3510797))

(declare-fun m!3510799 () Bool)

(assert (=> b!3230186 m!3510799))

(assert (=> b!3228805 d!887556))

(declare-fun d!887558 () Bool)

(declare-fun lt!1095962 () Int)

(assert (=> d!887558 (>= lt!1095962 0)))

(declare-fun e!2014625 () Int)

(assert (=> d!887558 (= lt!1095962 e!2014625)))

(declare-fun c!542936 () Bool)

(assert (=> d!887558 (= c!542936 ((_ is Nil!36361) (list!12975 (_2!21028 lt!1095143))))))

(assert (=> d!887558 (= (size!27430 (list!12975 (_2!21028 lt!1095143))) lt!1095962)))

(declare-fun b!3230187 () Bool)

(assert (=> b!3230187 (= e!2014625 0)))

(declare-fun b!3230188 () Bool)

(assert (=> b!3230188 (= e!2014625 (+ 1 (size!27430 (t!241330 (list!12975 (_2!21028 lt!1095143))))))))

(assert (= (and d!887558 c!542936) b!3230187))

(assert (= (and d!887558 (not c!542936)) b!3230188))

(declare-fun m!3510801 () Bool)

(assert (=> b!3230188 m!3510801))

(assert (=> d!886538 d!887558))

(assert (=> d!886538 d!886772))

(declare-fun d!887560 () Bool)

(declare-fun lt!1095963 () Int)

(assert (=> d!887560 (= lt!1095963 (size!27430 (list!12979 (c!542433 (_2!21028 lt!1095143)))))))

(assert (=> d!887560 (= lt!1095963 (ite ((_ is Empty!10907) (c!542433 (_2!21028 lt!1095143))) 0 (ite ((_ is Leaf!17151) (c!542433 (_2!21028 lt!1095143))) (csize!22045 (c!542433 (_2!21028 lt!1095143))) (csize!22044 (c!542433 (_2!21028 lt!1095143))))))))

(assert (=> d!887560 (= (size!27432 (c!542433 (_2!21028 lt!1095143))) lt!1095963)))

(declare-fun bs!543280 () Bool)

(assert (= bs!543280 d!887560))

(assert (=> bs!543280 m!3508249))

(assert (=> bs!543280 m!3508249))

(declare-fun m!3510803 () Bool)

(assert (=> bs!543280 m!3510803))

(assert (=> d!886538 d!887560))

(assert (=> bm!233212 d!887208))

(declare-fun d!887562 () Bool)

(assert (=> d!887562 (= (inv!49259 (xs!14025 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241))))) (<= (size!27430 (innerList!10967 (xs!14025 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))))) 2147483647))))

(declare-fun bs!543281 () Bool)

(assert (= bs!543281 d!887562))

(declare-fun m!3510805 () Bool)

(assert (=> bs!543281 m!3510805))

(assert (=> b!3229079 d!887562))

(declare-fun d!887564 () Bool)

(declare-fun lt!1095964 () Bool)

(assert (=> d!887564 (= lt!1095964 (isEmpty!20453 (list!12980 (left!28315 (c!542434 lt!1095112)))))))

(assert (=> d!887564 (= lt!1095964 (= (size!27434 (left!28315 (c!542434 lt!1095112))) 0))))

(assert (=> d!887564 (= (isEmpty!20454 (left!28315 (c!542434 lt!1095112))) lt!1095964)))

(declare-fun bs!543282 () Bool)

(assert (= bs!543282 d!887564))

(declare-fun m!3510807 () Bool)

(assert (=> bs!543282 m!3510807))

(assert (=> bs!543282 m!3510807))

(declare-fun m!3510809 () Bool)

(assert (=> bs!543282 m!3510809))

(declare-fun m!3510811 () Bool)

(assert (=> bs!543282 m!3510811))

(assert (=> b!3228485 d!887564))

(declare-fun d!887566 () Bool)

(assert (=> d!887566 (= (list!12978 (_1!21028 lt!1095332)) (list!12980 (c!542434 (_1!21028 lt!1095332))))))

(declare-fun bs!543283 () Bool)

(assert (= bs!543283 d!887566))

(declare-fun m!3510813 () Bool)

(assert (=> bs!543283 m!3510813))

(assert (=> b!3228797 d!887566))

(assert (=> b!3228797 d!887264))

(assert (=> b!3228797 d!887266))

(assert (=> bm!233213 d!887202))

(declare-fun b!3230192 () Bool)

(declare-fun e!2014627 () List!36485)

(assert (=> b!3230192 (= e!2014627 (++!8756 (list!12979 (left!28314 (c!542433 lt!1095105))) (list!12979 (right!28644 (c!542433 lt!1095105)))))))

(declare-fun b!3230191 () Bool)

(assert (=> b!3230191 (= e!2014627 (list!12981 (xs!14025 (c!542433 lt!1095105))))))

(declare-fun b!3230190 () Bool)

(declare-fun e!2014626 () List!36485)

(assert (=> b!3230190 (= e!2014626 e!2014627)))

(declare-fun c!542938 () Bool)

(assert (=> b!3230190 (= c!542938 ((_ is Leaf!17151) (c!542433 lt!1095105)))))

(declare-fun d!887568 () Bool)

(declare-fun c!542937 () Bool)

(assert (=> d!887568 (= c!542937 ((_ is Empty!10907) (c!542433 lt!1095105)))))

(assert (=> d!887568 (= (list!12979 (c!542433 lt!1095105)) e!2014626)))

(declare-fun b!3230189 () Bool)

(assert (=> b!3230189 (= e!2014626 Nil!36361)))

(assert (= (and d!887568 c!542937) b!3230189))

(assert (= (and d!887568 (not c!542937)) b!3230190))

(assert (= (and b!3230190 c!542938) b!3230191))

(assert (= (and b!3230190 (not c!542938)) b!3230192))

(declare-fun m!3510815 () Bool)

(assert (=> b!3230192 m!3510815))

(declare-fun m!3510817 () Bool)

(assert (=> b!3230192 m!3510817))

(assert (=> b!3230192 m!3510815))

(assert (=> b!3230192 m!3510817))

(declare-fun m!3510819 () Bool)

(assert (=> b!3230192 m!3510819))

(declare-fun m!3510821 () Bool)

(assert (=> b!3230191 m!3510821))

(assert (=> d!886572 d!887568))

(declare-fun b!3230196 () Bool)

(declare-fun e!2014629 () List!36485)

(assert (=> b!3230196 (= e!2014629 (++!8756 (list!12979 (left!28314 (c!542433 lt!1095167))) (list!12979 (right!28644 (c!542433 lt!1095167)))))))

(declare-fun b!3230195 () Bool)

(assert (=> b!3230195 (= e!2014629 (list!12981 (xs!14025 (c!542433 lt!1095167))))))

(declare-fun b!3230194 () Bool)

(declare-fun e!2014628 () List!36485)

(assert (=> b!3230194 (= e!2014628 e!2014629)))

(declare-fun c!542940 () Bool)

(assert (=> b!3230194 (= c!542940 ((_ is Leaf!17151) (c!542433 lt!1095167)))))

(declare-fun d!887570 () Bool)

(declare-fun c!542939 () Bool)

(assert (=> d!887570 (= c!542939 ((_ is Empty!10907) (c!542433 lt!1095167)))))

(assert (=> d!887570 (= (list!12979 (c!542433 lt!1095167)) e!2014628)))

(declare-fun b!3230193 () Bool)

(assert (=> b!3230193 (= e!2014628 Nil!36361)))

(assert (= (and d!887570 c!542939) b!3230193))

(assert (= (and d!887570 (not c!542939)) b!3230194))

(assert (= (and b!3230194 c!542940) b!3230195))

(assert (= (and b!3230194 (not c!542940)) b!3230196))

(declare-fun m!3510823 () Bool)

(assert (=> b!3230196 m!3510823))

(declare-fun m!3510825 () Bool)

(assert (=> b!3230196 m!3510825))

(assert (=> b!3230196 m!3510823))

(assert (=> b!3230196 m!3510825))

(declare-fun m!3510827 () Bool)

(assert (=> b!3230196 m!3510827))

(declare-fun m!3510829 () Bool)

(assert (=> b!3230195 m!3510829))

(assert (=> d!886562 d!887570))

(declare-fun d!887572 () Bool)

(declare-fun lt!1095965 () Int)

(assert (=> d!887572 (>= lt!1095965 0)))

(declare-fun e!2014630 () Int)

(assert (=> d!887572 (= lt!1095965 e!2014630)))

(declare-fun c!542941 () Bool)

(assert (=> d!887572 (= c!542941 ((_ is Nil!36363) (list!12978 (_1!21028 lt!1095143))))))

(assert (=> d!887572 (= (size!27433 (list!12978 (_1!21028 lt!1095143))) lt!1095965)))

(declare-fun b!3230197 () Bool)

(assert (=> b!3230197 (= e!2014630 0)))

(declare-fun b!3230198 () Bool)

(assert (=> b!3230198 (= e!2014630 (+ 1 (size!27433 (t!241332 (list!12978 (_1!21028 lt!1095143))))))))

(assert (= (and d!887572 c!542941) b!3230197))

(assert (= (and d!887572 (not c!542941)) b!3230198))

(declare-fun m!3510831 () Bool)

(assert (=> b!3230198 m!3510831))

(assert (=> d!886810 d!887572))

(assert (=> d!886810 d!886800))

(declare-fun d!887574 () Bool)

(declare-fun lt!1095966 () Int)

(assert (=> d!887574 (= lt!1095966 (size!27433 (list!12980 (c!542434 (_1!21028 lt!1095143)))))))

(assert (=> d!887574 (= lt!1095966 (ite ((_ is Empty!10908) (c!542434 (_1!21028 lt!1095143))) 0 (ite ((_ is Leaf!17152) (c!542434 (_1!21028 lt!1095143))) (csize!22047 (c!542434 (_1!21028 lt!1095143))) (csize!22046 (c!542434 (_1!21028 lt!1095143))))))))

(assert (=> d!887574 (= (size!27434 (c!542434 (_1!21028 lt!1095143))) lt!1095966)))

(declare-fun bs!543284 () Bool)

(assert (= bs!543284 d!887574))

(assert (=> bs!543284 m!3508301))

(assert (=> bs!543284 m!3508301))

(declare-fun m!3510833 () Bool)

(assert (=> bs!543284 m!3510833))

(assert (=> d!886810 d!887574))

(declare-fun d!887576 () Bool)

(assert (=> d!887576 (= (height!1577 (left!28315 (c!542434 lt!1095112))) (ite ((_ is Empty!10908) (left!28315 (c!542434 lt!1095112))) 0 (ite ((_ is Leaf!17152) (left!28315 (c!542434 lt!1095112))) 1 (cheight!11119 (left!28315 (c!542434 lt!1095112))))))))

(assert (=> b!3228486 d!887576))

(declare-fun d!887578 () Bool)

(assert (=> d!887578 (= (height!1577 (right!28645 (c!542434 lt!1095112))) (ite ((_ is Empty!10908) (right!28645 (c!542434 lt!1095112))) 0 (ite ((_ is Leaf!17152) (right!28645 (c!542434 lt!1095112))) 1 (cheight!11119 (right!28645 (c!542434 lt!1095112))))))))

(assert (=> b!3228486 d!887578))

(declare-fun b!3230199 () Bool)

(declare-fun e!2014632 () List!36487)

(assert (=> b!3230199 (= e!2014632 (t!241332 lt!1095096))))

(declare-fun b!3230200 () Bool)

(assert (=> b!3230200 (= e!2014632 (drop!1876 (t!241332 (t!241332 lt!1095096)) (- (- 0 1) 1)))))

(declare-fun b!3230201 () Bool)

(declare-fun e!2014635 () Int)

(assert (=> b!3230201 (= e!2014635 0)))

(declare-fun b!3230202 () Bool)

(declare-fun e!2014633 () List!36487)

(assert (=> b!3230202 (= e!2014633 Nil!36363)))

(declare-fun b!3230203 () Bool)

(declare-fun e!2014631 () Bool)

(declare-fun lt!1095967 () List!36487)

(declare-fun e!2014634 () Int)

(assert (=> b!3230203 (= e!2014631 (= (size!27433 lt!1095967) e!2014634))))

(declare-fun c!542944 () Bool)

(assert (=> b!3230203 (= c!542944 (<= (- 0 1) 0))))

(declare-fun b!3230204 () Bool)

(declare-fun call!233332 () Int)

(assert (=> b!3230204 (= e!2014635 (- call!233332 (- 0 1)))))

(declare-fun b!3230205 () Bool)

(assert (=> b!3230205 (= e!2014634 call!233332)))

(declare-fun bm!233327 () Bool)

(assert (=> bm!233327 (= call!233332 (size!27433 (t!241332 lt!1095096)))))

(declare-fun d!887580 () Bool)

(assert (=> d!887580 e!2014631))

(declare-fun res!1315406 () Bool)

(assert (=> d!887580 (=> (not res!1315406) (not e!2014631))))

(assert (=> d!887580 (= res!1315406 (= ((_ map implies) (content!4920 lt!1095967) (content!4920 (t!241332 lt!1095096))) ((as const (InoxSet Token!9898)) true)))))

(assert (=> d!887580 (= lt!1095967 e!2014633)))

(declare-fun c!542942 () Bool)

(assert (=> d!887580 (= c!542942 ((_ is Nil!36363) (t!241332 lt!1095096)))))

(assert (=> d!887580 (= (drop!1876 (t!241332 lt!1095096) (- 0 1)) lt!1095967)))

(declare-fun b!3230206 () Bool)

(assert (=> b!3230206 (= e!2014634 e!2014635)))

(declare-fun c!542943 () Bool)

(assert (=> b!3230206 (= c!542943 (>= (- 0 1) call!233332))))

(declare-fun b!3230207 () Bool)

(assert (=> b!3230207 (= e!2014633 e!2014632)))

(declare-fun c!542945 () Bool)

(assert (=> b!3230207 (= c!542945 (<= (- 0 1) 0))))

(assert (= (and d!887580 c!542942) b!3230202))

(assert (= (and d!887580 (not c!542942)) b!3230207))

(assert (= (and b!3230207 c!542945) b!3230199))

(assert (= (and b!3230207 (not c!542945)) b!3230200))

(assert (= (and d!887580 res!1315406) b!3230203))

(assert (= (and b!3230203 c!542944) b!3230205))

(assert (= (and b!3230203 (not c!542944)) b!3230206))

(assert (= (and b!3230206 c!542943) b!3230201))

(assert (= (and b!3230206 (not c!542943)) b!3230204))

(assert (= (or b!3230205 b!3230206 b!3230204) bm!233327))

(declare-fun m!3510835 () Bool)

(assert (=> b!3230200 m!3510835))

(declare-fun m!3510837 () Bool)

(assert (=> b!3230203 m!3510837))

(assert (=> bm!233327 m!3509011))

(declare-fun m!3510839 () Bool)

(assert (=> d!887580 m!3510839))

(assert (=> d!887580 m!3509015))

(assert (=> b!3229015 d!887580))

(declare-fun d!887582 () Bool)

(declare-fun c!542946 () Bool)

(assert (=> d!887582 (= c!542946 ((_ is Nil!36360) (text!38921 (value!170541 (h!41783 tokens!494)))))))

(declare-fun e!2014636 () Int)

(assert (=> d!887582 (= (charsToBigInt!0 (text!38921 (value!170541 (h!41783 tokens!494))) 0) e!2014636)))

(declare-fun b!3230208 () Bool)

(assert (=> b!3230208 (= e!2014636 0)))

(declare-fun b!3230209 () Bool)

(assert (=> b!3230209 (= e!2014636 (charsToBigInt!0 (t!241329 (text!38921 (value!170541 (h!41783 tokens!494)))) (+ (* 0 10) (charToBigInt!0 (h!41780 (text!38921 (value!170541 (h!41783 tokens!494))))))))))

(assert (= (and d!887582 c!542946) b!3230208))

(assert (= (and d!887582 (not c!542946)) b!3230209))

(declare-fun m!3510841 () Bool)

(assert (=> b!3230209 m!3510841))

(declare-fun m!3510843 () Bool)

(assert (=> b!3230209 m!3510843))

(assert (=> d!886730 d!887582))

(declare-fun bs!543285 () Bool)

(declare-fun d!887584 () Bool)

(assert (= bs!543285 (and d!887584 d!886558)))

(declare-fun lambda!118267 () Int)

(assert (=> bs!543285 (= (= (toValue!7374 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (toValue!7374 (transformation!5266 (rule!7724 (h!41783 tokens!494))))) (= lambda!118267 lambda!118220))))

(declare-fun bs!543286 () Bool)

(assert (= bs!543286 (and d!887584 d!886732)))

(assert (=> bs!543286 (= (= (toValue!7374 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (toValue!7374 (transformation!5266 (h!41782 rules!2135)))) (= lambda!118267 lambda!118235))))

(declare-fun bs!543287 () Bool)

(assert (= bs!543287 (and d!887584 d!886790)))

(assert (=> bs!543287 (= (= (toValue!7374 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (toValue!7374 (transformation!5266 (rule!7724 separatorToken!241)))) (= lambda!118267 lambda!118240))))

(assert (=> d!887584 true))

(assert (=> d!887584 (< (dynLambda!14791 order!18761 (toValue!7374 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494)))))) (dynLambda!14796 order!18767 lambda!118267))))

(assert (=> d!887584 (= (equivClasses!2070 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (toValue!7374 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494)))))) (Forall2!875 lambda!118267))))

(declare-fun bs!543288 () Bool)

(assert (= bs!543288 d!887584))

(declare-fun m!3510845 () Bool)

(assert (=> bs!543288 m!3510845))

(assert (=> b!3228726 d!887584))

(declare-fun d!887586 () Bool)

(assert (=> d!887586 (= (list!12981 (xs!14025 (c!542433 (charsOf!3282 separatorToken!241)))) (innerList!10967 (xs!14025 (c!542433 (charsOf!3282 separatorToken!241)))))))

(assert (=> b!3228930 d!887586))

(declare-fun b!3230210 () Bool)

(declare-fun res!1315410 () Bool)

(declare-fun e!2014638 () Bool)

(assert (=> b!3230210 (=> (not res!1315410) (not e!2014638))))

(assert (=> b!3230210 (= res!1315410 (isBalanced!3244 (left!28315 (c!542434 lt!1095207))))))

(declare-fun d!887588 () Bool)

(declare-fun res!1315407 () Bool)

(declare-fun e!2014637 () Bool)

(assert (=> d!887588 (=> res!1315407 e!2014637)))

(assert (=> d!887588 (= res!1315407 (not ((_ is Node!10908) (c!542434 lt!1095207))))))

(assert (=> d!887588 (= (isBalanced!3244 (c!542434 lt!1095207)) e!2014637)))

(declare-fun b!3230211 () Bool)

(declare-fun res!1315412 () Bool)

(assert (=> b!3230211 (=> (not res!1315412) (not e!2014638))))

(assert (=> b!3230211 (= res!1315412 (not (isEmpty!20454 (left!28315 (c!542434 lt!1095207)))))))

(declare-fun b!3230212 () Bool)

(declare-fun res!1315409 () Bool)

(assert (=> b!3230212 (=> (not res!1315409) (not e!2014638))))

(assert (=> b!3230212 (= res!1315409 (<= (- (height!1577 (left!28315 (c!542434 lt!1095207))) (height!1577 (right!28645 (c!542434 lt!1095207)))) 1))))

(declare-fun b!3230213 () Bool)

(declare-fun res!1315411 () Bool)

(assert (=> b!3230213 (=> (not res!1315411) (not e!2014638))))

(assert (=> b!3230213 (= res!1315411 (isBalanced!3244 (right!28645 (c!542434 lt!1095207))))))

(declare-fun b!3230214 () Bool)

(assert (=> b!3230214 (= e!2014637 e!2014638)))

(declare-fun res!1315408 () Bool)

(assert (=> b!3230214 (=> (not res!1315408) (not e!2014638))))

(assert (=> b!3230214 (= res!1315408 (<= (- 1) (- (height!1577 (left!28315 (c!542434 lt!1095207))) (height!1577 (right!28645 (c!542434 lt!1095207))))))))

(declare-fun b!3230215 () Bool)

(assert (=> b!3230215 (= e!2014638 (not (isEmpty!20454 (right!28645 (c!542434 lt!1095207)))))))

(assert (= (and d!887588 (not res!1315407)) b!3230214))

(assert (= (and b!3230214 res!1315408) b!3230212))

(assert (= (and b!3230212 res!1315409) b!3230210))

(assert (= (and b!3230210 res!1315410) b!3230213))

(assert (= (and b!3230213 res!1315411) b!3230211))

(assert (= (and b!3230211 res!1315412) b!3230215))

(declare-fun m!3510847 () Bool)

(assert (=> b!3230214 m!3510847))

(declare-fun m!3510849 () Bool)

(assert (=> b!3230214 m!3510849))

(assert (=> b!3230212 m!3510847))

(assert (=> b!3230212 m!3510849))

(declare-fun m!3510851 () Bool)

(assert (=> b!3230213 m!3510851))

(declare-fun m!3510853 () Bool)

(assert (=> b!3230210 m!3510853))

(declare-fun m!3510855 () Bool)

(assert (=> b!3230211 m!3510855))

(declare-fun m!3510857 () Bool)

(assert (=> b!3230215 m!3510857))

(assert (=> b!3228546 d!887588))

(declare-fun b!3230216 () Bool)

(declare-fun e!2014641 () Bool)

(declare-fun e!2014640 () Bool)

(assert (=> b!3230216 (= e!2014641 e!2014640)))

(declare-fun res!1315413 () Bool)

(assert (=> b!3230216 (= res!1315413 (not ((_ is Cons!36362) (t!241331 rules!2135))))))

(assert (=> b!3230216 (=> res!1315413 e!2014640)))

(declare-fun b!3230217 () Bool)

(declare-fun e!2014639 () Bool)

(assert (=> b!3230217 (= e!2014641 e!2014639)))

(declare-fun res!1315414 () Bool)

(assert (=> b!3230217 (= res!1315414 (rulesUseDisjointChars!282 (h!41782 rules!2135) (h!41782 (t!241331 rules!2135))))))

(assert (=> b!3230217 (=> (not res!1315414) (not e!2014639))))

(declare-fun b!3230218 () Bool)

(declare-fun call!233333 () Bool)

(assert (=> b!3230218 (= e!2014639 call!233333)))

(declare-fun d!887590 () Bool)

(declare-fun c!542947 () Bool)

(assert (=> d!887590 (= c!542947 (and ((_ is Cons!36362) (t!241331 rules!2135)) (not (= (isSeparator!5266 (h!41782 (t!241331 rules!2135))) (isSeparator!5266 (h!41782 rules!2135))))))))

(assert (=> d!887590 (= (ruleDisjointCharsFromAllFromOtherType!607 (h!41782 rules!2135) (t!241331 rules!2135)) e!2014641)))

(declare-fun bm!233328 () Bool)

(assert (=> bm!233328 (= call!233333 (ruleDisjointCharsFromAllFromOtherType!607 (h!41782 rules!2135) (t!241331 (t!241331 rules!2135))))))

(declare-fun b!3230219 () Bool)

(assert (=> b!3230219 (= e!2014640 call!233333)))

(assert (= (and d!887590 c!542947) b!3230217))

(assert (= (and d!887590 (not c!542947)) b!3230216))

(assert (= (and b!3230217 res!1315414) b!3230218))

(assert (= (and b!3230216 (not res!1315413)) b!3230219))

(assert (= (or b!3230218 b!3230219) bm!233328))

(declare-fun m!3510859 () Bool)

(assert (=> b!3230217 m!3510859))

(declare-fun m!3510861 () Bool)

(assert (=> bm!233328 m!3510861))

(assert (=> bm!233200 d!887590))

(declare-fun b!3230220 () Bool)

(declare-fun res!1315418 () Bool)

(declare-fun e!2014643 () Bool)

(assert (=> b!3230220 (=> (not res!1315418) (not e!2014643))))

(assert (=> b!3230220 (= res!1315418 (isBalanced!3244 (left!28315 (fromList!632 tokens!494))))))

(declare-fun d!887592 () Bool)

(declare-fun res!1315415 () Bool)

(declare-fun e!2014642 () Bool)

(assert (=> d!887592 (=> res!1315415 e!2014642)))

(assert (=> d!887592 (= res!1315415 (not ((_ is Node!10908) (fromList!632 tokens!494))))))

(assert (=> d!887592 (= (isBalanced!3244 (fromList!632 tokens!494)) e!2014642)))

(declare-fun b!3230221 () Bool)

(declare-fun res!1315420 () Bool)

(assert (=> b!3230221 (=> (not res!1315420) (not e!2014643))))

(assert (=> b!3230221 (= res!1315420 (not (isEmpty!20454 (left!28315 (fromList!632 tokens!494)))))))

(declare-fun b!3230222 () Bool)

(declare-fun res!1315417 () Bool)

(assert (=> b!3230222 (=> (not res!1315417) (not e!2014643))))

(assert (=> b!3230222 (= res!1315417 (<= (- (height!1577 (left!28315 (fromList!632 tokens!494))) (height!1577 (right!28645 (fromList!632 tokens!494)))) 1))))

(declare-fun b!3230223 () Bool)

(declare-fun res!1315419 () Bool)

(assert (=> b!3230223 (=> (not res!1315419) (not e!2014643))))

(assert (=> b!3230223 (= res!1315419 (isBalanced!3244 (right!28645 (fromList!632 tokens!494))))))

(declare-fun b!3230224 () Bool)

(assert (=> b!3230224 (= e!2014642 e!2014643)))

(declare-fun res!1315416 () Bool)

(assert (=> b!3230224 (=> (not res!1315416) (not e!2014643))))

(assert (=> b!3230224 (= res!1315416 (<= (- 1) (- (height!1577 (left!28315 (fromList!632 tokens!494))) (height!1577 (right!28645 (fromList!632 tokens!494))))))))

(declare-fun b!3230225 () Bool)

(assert (=> b!3230225 (= e!2014643 (not (isEmpty!20454 (right!28645 (fromList!632 tokens!494)))))))

(assert (= (and d!887592 (not res!1315415)) b!3230224))

(assert (= (and b!3230224 res!1315416) b!3230222))

(assert (= (and b!3230222 res!1315417) b!3230220))

(assert (= (and b!3230220 res!1315418) b!3230223))

(assert (= (and b!3230223 res!1315419) b!3230221))

(assert (= (and b!3230221 res!1315420) b!3230225))

(declare-fun m!3510863 () Bool)

(assert (=> b!3230224 m!3510863))

(declare-fun m!3510865 () Bool)

(assert (=> b!3230224 m!3510865))

(assert (=> b!3230222 m!3510863))

(assert (=> b!3230222 m!3510865))

(declare-fun m!3510867 () Bool)

(assert (=> b!3230223 m!3510867))

(declare-fun m!3510869 () Bool)

(assert (=> b!3230220 m!3510869))

(declare-fun m!3510871 () Bool)

(assert (=> b!3230221 m!3510871))

(declare-fun m!3510873 () Bool)

(assert (=> b!3230225 m!3510873))

(assert (=> b!3228463 d!887592))

(assert (=> b!3228463 d!887510))

(assert (=> b!3229003 d!886560))

(declare-fun b!3230226 () Bool)

(declare-fun e!2014644 () List!36487)

(assert (=> b!3230226 (= e!2014644 Nil!36363)))

(declare-fun b!3230229 () Bool)

(declare-fun e!2014645 () List!36487)

(assert (=> b!3230229 (= e!2014645 (++!8760 (list!12980 (left!28315 (c!542434 (singletonSeq!2362 separatorToken!241)))) (list!12980 (right!28645 (c!542434 (singletonSeq!2362 separatorToken!241))))))))

(declare-fun b!3230228 () Bool)

(assert (=> b!3230228 (= e!2014645 (list!12985 (xs!14026 (c!542434 (singletonSeq!2362 separatorToken!241)))))))

(declare-fun b!3230227 () Bool)

(assert (=> b!3230227 (= e!2014644 e!2014645)))

(declare-fun c!542949 () Bool)

(assert (=> b!3230227 (= c!542949 ((_ is Leaf!17152) (c!542434 (singletonSeq!2362 separatorToken!241))))))

(declare-fun d!887594 () Bool)

(declare-fun c!542948 () Bool)

(assert (=> d!887594 (= c!542948 ((_ is Empty!10908) (c!542434 (singletonSeq!2362 separatorToken!241))))))

(assert (=> d!887594 (= (list!12980 (c!542434 (singletonSeq!2362 separatorToken!241))) e!2014644)))

(assert (= (and d!887594 c!542948) b!3230226))

(assert (= (and d!887594 (not c!542948)) b!3230227))

(assert (= (and b!3230227 c!542949) b!3230228))

(assert (= (and b!3230227 (not c!542949)) b!3230229))

(declare-fun m!3510875 () Bool)

(assert (=> b!3230229 m!3510875))

(declare-fun m!3510877 () Bool)

(assert (=> b!3230229 m!3510877))

(assert (=> b!3230229 m!3510875))

(assert (=> b!3230229 m!3510877))

(declare-fun m!3510879 () Bool)

(assert (=> b!3230229 m!3510879))

(declare-fun m!3510881 () Bool)

(assert (=> b!3230228 m!3510881))

(assert (=> d!886940 d!887594))

(assert (=> d!886812 d!886700))

(declare-fun d!887596 () Bool)

(assert (=> d!887596 (isSuffix!856 lt!1095480 (++!8756 lt!1095476 lt!1095480))))

(declare-fun lt!1095970 () Unit!50946)

(declare-fun choose!18844 (List!36485 List!36485) Unit!50946)

(assert (=> d!887596 (= lt!1095970 (choose!18844 lt!1095476 lt!1095480))))

(assert (=> d!887596 (= (lemmaConcatTwoListThenFSndIsSuffix!541 lt!1095476 lt!1095480) lt!1095970)))

(declare-fun bs!543289 () Bool)

(assert (= bs!543289 d!887596))

(assert (=> bs!543289 m!3508601))

(assert (=> bs!543289 m!3508601))

(assert (=> bs!543289 m!3508607))

(declare-fun m!3510883 () Bool)

(assert (=> bs!543289 m!3510883))

(assert (=> d!886812 d!887596))

(declare-fun b!3230430 () Bool)

(declare-fun e!2014766 () Option!7217)

(declare-fun call!233341 () Option!7217)

(assert (=> b!3230430 (= e!2014766 call!233341)))

(declare-fun b!3230431 () Bool)

(declare-fun lt!1096046 () Option!7217)

(declare-fun lt!1096045 () Option!7217)

(assert (=> b!3230431 (= e!2014766 (ite (and ((_ is None!7216) lt!1096046) ((_ is None!7216) lt!1096045)) None!7216 (ite ((_ is None!7216) lt!1096045) lt!1096046 (ite ((_ is None!7216) lt!1096046) lt!1096045 (ite (>= (size!27425 (_1!21033 (v!35826 lt!1096046))) (size!27425 (_1!21033 (v!35826 lt!1096045)))) lt!1096046 lt!1096045)))))))

(assert (=> b!3230431 (= lt!1096046 call!233341)))

(assert (=> b!3230431 (= lt!1096045 (maxPrefixZipperSequenceV2!481 thiss!18206 (t!241331 rules!2135) (seqFromList!3595 lt!1095073) (seqFromList!3595 lt!1095073)))))

(declare-fun b!3230432 () Bool)

(declare-fun e!2014764 () Bool)

(declare-fun e!2014765 () Bool)

(assert (=> b!3230432 (= e!2014764 e!2014765)))

(declare-fun res!1315496 () Bool)

(assert (=> b!3230432 (=> (not res!1315496) (not e!2014765))))

(declare-fun lt!1096048 () Option!7217)

(declare-fun get!11578 (Option!7217) tuple2!35798)

(declare-fun maxPrefixZipper!490 (LexerInterface!4855 List!36486 List!36485) Option!7215)

(assert (=> b!3230432 (= res!1315496 (= (_1!21033 (get!11578 lt!1096048)) (_1!21031 (get!11577 (maxPrefixZipper!490 thiss!18206 rules!2135 (list!12975 (seqFromList!3595 lt!1095073)))))))))

(declare-fun b!3230433 () Bool)

(declare-fun e!2014767 () Bool)

(assert (=> b!3230433 (= e!2014767 (= (list!12975 (_2!21033 (get!11578 lt!1096048))) (_2!21031 (get!11577 (maxPrefix!2486 thiss!18206 rules!2135 (list!12975 (seqFromList!3595 lt!1095073)))))))))

(declare-fun b!3230434 () Bool)

(declare-fun e!2014769 () Bool)

(assert (=> b!3230434 (= e!2014769 e!2014767)))

(declare-fun res!1315500 () Bool)

(assert (=> b!3230434 (=> (not res!1315500) (not e!2014767))))

(assert (=> b!3230434 (= res!1315500 (= (_1!21033 (get!11578 lt!1096048)) (_1!21031 (get!11577 (maxPrefix!2486 thiss!18206 rules!2135 (list!12975 (seqFromList!3595 lt!1095073)))))))))

(declare-fun d!887598 () Bool)

(declare-fun e!2014768 () Bool)

(assert (=> d!887598 e!2014768))

(declare-fun res!1315495 () Bool)

(assert (=> d!887598 (=> (not res!1315495) (not e!2014768))))

(declare-fun isDefined!5592 (Option!7217) Bool)

(assert (=> d!887598 (= res!1315495 (= (isDefined!5592 lt!1096048) (isDefined!5591 (maxPrefixZipper!490 thiss!18206 rules!2135 (list!12975 (seqFromList!3595 lt!1095073))))))))

(assert (=> d!887598 (= lt!1096048 e!2014766)))

(declare-fun c!543013 () Bool)

(assert (=> d!887598 (= c!543013 (and ((_ is Cons!36362) rules!2135) ((_ is Nil!36362) (t!241331 rules!2135))))))

(declare-fun lt!1096044 () Unit!50946)

(declare-fun lt!1096043 () Unit!50946)

(assert (=> d!887598 (= lt!1096044 lt!1096043)))

(declare-fun lt!1096047 () List!36485)

(declare-fun lt!1096049 () List!36485)

(assert (=> d!887598 (isPrefix!2789 lt!1096047 lt!1096049)))

(assert (=> d!887598 (= lt!1096043 (lemmaIsPrefixRefl!1748 lt!1096047 lt!1096049))))

(assert (=> d!887598 (= lt!1096049 (list!12975 (seqFromList!3595 lt!1095073)))))

(assert (=> d!887598 (= lt!1096047 (list!12975 (seqFromList!3595 lt!1095073)))))

(assert (=> d!887598 (rulesValidInductive!1789 thiss!18206 rules!2135)))

(assert (=> d!887598 (= (maxPrefixZipperSequenceV2!481 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073) (seqFromList!3595 lt!1095073)) lt!1096048)))

(declare-fun b!3230435 () Bool)

(assert (=> b!3230435 (= e!2014765 (= (list!12975 (_2!21033 (get!11578 lt!1096048))) (_2!21031 (get!11577 (maxPrefixZipper!490 thiss!18206 rules!2135 (list!12975 (seqFromList!3595 lt!1095073)))))))))

(declare-fun b!3230436 () Bool)

(assert (=> b!3230436 (= e!2014768 e!2014769)))

(declare-fun res!1315498 () Bool)

(assert (=> b!3230436 (=> res!1315498 e!2014769)))

(assert (=> b!3230436 (= res!1315498 (not (isDefined!5592 lt!1096048)))))

(declare-fun b!3230437 () Bool)

(declare-fun res!1315499 () Bool)

(assert (=> b!3230437 (=> (not res!1315499) (not e!2014768))))

(assert (=> b!3230437 (= res!1315499 e!2014764)))

(declare-fun res!1315497 () Bool)

(assert (=> b!3230437 (=> res!1315497 e!2014764)))

(assert (=> b!3230437 (= res!1315497 (not (isDefined!5592 lt!1096048)))))

(declare-fun bm!233336 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV2!188 (LexerInterface!4855 Rule!10332 BalanceConc!21428 BalanceConc!21428) Option!7217)

(assert (=> bm!233336 (= call!233341 (maxPrefixOneRuleZipperSequenceV2!188 thiss!18206 (h!41782 rules!2135) (seqFromList!3595 lt!1095073) (seqFromList!3595 lt!1095073)))))

(assert (= (and d!887598 c!543013) b!3230430))

(assert (= (and d!887598 (not c!543013)) b!3230431))

(assert (= (or b!3230430 b!3230431) bm!233336))

(assert (= (and d!887598 res!1315495) b!3230437))

(assert (= (and b!3230437 (not res!1315497)) b!3230432))

(assert (= (and b!3230432 res!1315496) b!3230435))

(assert (= (and b!3230437 res!1315499) b!3230436))

(assert (= (and b!3230436 (not res!1315498)) b!3230434))

(assert (= (and b!3230434 res!1315500) b!3230433))

(declare-fun m!3511279 () Bool)

(assert (=> b!3230434 m!3511279))

(assert (=> b!3230434 m!3507165))

(assert (=> b!3230434 m!3507457))

(assert (=> b!3230434 m!3507457))

(assert (=> b!3230434 m!3508255))

(assert (=> b!3230434 m!3508255))

(declare-fun m!3511281 () Bool)

(assert (=> b!3230434 m!3511281))

(declare-fun m!3511283 () Bool)

(assert (=> b!3230436 m!3511283))

(assert (=> b!3230437 m!3511283))

(assert (=> bm!233336 m!3507165))

(assert (=> bm!233336 m!3507165))

(declare-fun m!3511285 () Bool)

(assert (=> bm!233336 m!3511285))

(declare-fun m!3511287 () Bool)

(assert (=> b!3230433 m!3511287))

(assert (=> b!3230433 m!3507165))

(assert (=> b!3230433 m!3507457))

(assert (=> b!3230433 m!3507457))

(assert (=> b!3230433 m!3508255))

(assert (=> b!3230433 m!3511279))

(assert (=> b!3230433 m!3508255))

(assert (=> b!3230433 m!3511281))

(assert (=> b!3230432 m!3511279))

(assert (=> b!3230432 m!3507165))

(assert (=> b!3230432 m!3507457))

(assert (=> b!3230432 m!3507457))

(declare-fun m!3511293 () Bool)

(assert (=> b!3230432 m!3511293))

(assert (=> b!3230432 m!3511293))

(declare-fun m!3511295 () Bool)

(assert (=> b!3230432 m!3511295))

(assert (=> b!3230431 m!3507165))

(assert (=> b!3230431 m!3507165))

(declare-fun m!3511297 () Bool)

(assert (=> b!3230431 m!3511297))

(assert (=> b!3230435 m!3511287))

(assert (=> b!3230435 m!3507457))

(assert (=> b!3230435 m!3511293))

(assert (=> b!3230435 m!3507165))

(assert (=> b!3230435 m!3507457))

(assert (=> b!3230435 m!3511293))

(assert (=> b!3230435 m!3511295))

(assert (=> b!3230435 m!3511279))

(declare-fun m!3511299 () Bool)

(assert (=> d!887598 m!3511299))

(assert (=> d!887598 m!3511293))

(declare-fun m!3511305 () Bool)

(assert (=> d!887598 m!3511305))

(assert (=> d!887598 m!3508623))

(assert (=> d!887598 m!3507165))

(assert (=> d!887598 m!3507457))

(declare-fun m!3511307 () Bool)

(assert (=> d!887598 m!3511307))

(assert (=> d!887598 m!3511283))

(assert (=> d!887598 m!3507457))

(assert (=> d!887598 m!3511293))

(assert (=> d!886812 d!887598))

(declare-fun d!887720 () Bool)

(assert (=> d!887720 (= (list!12978 (_1!21028 (lexRec!694 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073)))) (list!12980 (c!542434 (_1!21028 (lexRec!694 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073))))))))

(declare-fun bs!543305 () Bool)

(assert (= bs!543305 d!887720))

(declare-fun m!3511315 () Bool)

(assert (=> bs!543305 m!3511315))

(assert (=> d!886812 d!887720))

(declare-fun d!887724 () Bool)

(assert (=> d!887724 (= (list!12978 (_1!21028 lt!1095487)) (list!12980 (c!542434 (_1!21028 lt!1095487))))))

(declare-fun bs!543306 () Bool)

(assert (= bs!543306 d!887724))

(declare-fun m!3511319 () Bool)

(assert (=> bs!543306 m!3511319))

(assert (=> d!886812 d!887724))

(declare-fun d!887726 () Bool)

(declare-fun e!2014786 () Bool)

(assert (=> d!887726 e!2014786))

(declare-fun res!1315509 () Bool)

(assert (=> d!887726 (=> res!1315509 e!2014786)))

(declare-fun lt!1096059 () Bool)

(assert (=> d!887726 (= res!1315509 (not lt!1096059))))

(declare-fun drop!1878 (List!36485 Int) List!36485)

(assert (=> d!887726 (= lt!1096059 (= lt!1095480 (drop!1878 (++!8756 lt!1095476 lt!1095480) (- (size!27430 (++!8756 lt!1095476 lt!1095480)) (size!27430 lt!1095480)))))))

(assert (=> d!887726 (= (isSuffix!856 lt!1095480 (++!8756 lt!1095476 lt!1095480)) lt!1096059)))

(declare-fun b!3230461 () Bool)

(assert (=> b!3230461 (= e!2014786 (>= (size!27430 (++!8756 lt!1095476 lt!1095480)) (size!27430 lt!1095480)))))

(assert (= (and d!887726 (not res!1315509)) b!3230461))

(assert (=> d!887726 m!3508601))

(declare-fun m!3511357 () Bool)

(assert (=> d!887726 m!3511357))

(declare-fun m!3511359 () Bool)

(assert (=> d!887726 m!3511359))

(assert (=> d!887726 m!3508601))

(declare-fun m!3511361 () Bool)

(assert (=> d!887726 m!3511361))

(assert (=> b!3230461 m!3508601))

(assert (=> b!3230461 m!3511357))

(assert (=> b!3230461 m!3511359))

(assert (=> d!886812 d!887726))

(assert (=> d!886812 d!886776))

(declare-fun b!3230464 () Bool)

(declare-fun e!2014790 () List!36485)

(assert (=> b!3230464 (= e!2014790 lt!1095480)))

(declare-fun b!3230465 () Bool)

(assert (=> b!3230465 (= e!2014790 (Cons!36361 (h!41781 lt!1095476) (++!8756 (t!241330 lt!1095476) lt!1095480)))))

(declare-fun e!2014789 () Bool)

(declare-fun b!3230467 () Bool)

(declare-fun lt!1096060 () List!36485)

(assert (=> b!3230467 (= e!2014789 (or (not (= lt!1095480 Nil!36361)) (= lt!1096060 lt!1095476)))))

(declare-fun b!3230466 () Bool)

(declare-fun res!1315512 () Bool)

(assert (=> b!3230466 (=> (not res!1315512) (not e!2014789))))

(assert (=> b!3230466 (= res!1315512 (= (size!27430 lt!1096060) (+ (size!27430 lt!1095476) (size!27430 lt!1095480))))))

(declare-fun d!887740 () Bool)

(assert (=> d!887740 e!2014789))

(declare-fun res!1315513 () Bool)

(assert (=> d!887740 (=> (not res!1315513) (not e!2014789))))

(assert (=> d!887740 (= res!1315513 (= (content!4918 lt!1096060) ((_ map or) (content!4918 lt!1095476) (content!4918 lt!1095480))))))

(assert (=> d!887740 (= lt!1096060 e!2014790)))

(declare-fun c!543021 () Bool)

(assert (=> d!887740 (= c!543021 ((_ is Nil!36361) lt!1095476))))

(assert (=> d!887740 (= (++!8756 lt!1095476 lt!1095480) lt!1096060)))

(assert (= (and d!887740 c!543021) b!3230464))

(assert (= (and d!887740 (not c!543021)) b!3230465))

(assert (= (and d!887740 res!1315513) b!3230466))

(assert (= (and b!3230466 res!1315512) b!3230467))

(declare-fun m!3511367 () Bool)

(assert (=> b!3230465 m!3511367))

(declare-fun m!3511369 () Bool)

(assert (=> b!3230466 m!3511369))

(declare-fun m!3511371 () Bool)

(assert (=> b!3230466 m!3511371))

(assert (=> b!3230466 m!3511359))

(declare-fun m!3511373 () Bool)

(assert (=> d!887740 m!3511373))

(declare-fun m!3511375 () Bool)

(assert (=> d!887740 m!3511375))

(declare-fun m!3511377 () Bool)

(assert (=> d!887740 m!3511377))

(assert (=> d!886812 d!887740))

(declare-fun b!3230468 () Bool)

(declare-fun e!2014794 () tuple2!35788)

(declare-fun lt!1096062 () tuple2!35788)

(declare-fun lt!1096063 () Option!7217)

(assert (=> b!3230468 (= e!2014794 (tuple2!35789 (prepend!1182 (_1!21028 lt!1096062) (_1!21033 (v!35826 lt!1096063))) (_2!21028 lt!1096062)))))

(assert (=> b!3230468 (= lt!1096062 (lexRec!694 thiss!18206 rules!2135 (_2!21033 (v!35826 lt!1096063))))))

(declare-fun b!3230469 () Bool)

(declare-fun e!2014792 () Bool)

(declare-fun lt!1096061 () tuple2!35788)

(assert (=> b!3230469 (= e!2014792 (= (list!12975 (_2!21028 lt!1096061)) (list!12975 (seqFromList!3595 lt!1095073))))))

(declare-fun d!887744 () Bool)

(declare-fun e!2014791 () Bool)

(assert (=> d!887744 e!2014791))

(declare-fun res!1315515 () Bool)

(assert (=> d!887744 (=> (not res!1315515) (not e!2014791))))

(assert (=> d!887744 (= res!1315515 e!2014792)))

(declare-fun c!543023 () Bool)

(assert (=> d!887744 (= c!543023 (> (size!27429 (_1!21028 lt!1096061)) 0))))

(assert (=> d!887744 (= lt!1096061 e!2014794)))

(declare-fun c!543022 () Bool)

(assert (=> d!887744 (= c!543022 ((_ is Some!7216) lt!1096063))))

(assert (=> d!887744 (= lt!1096063 (maxPrefixZipperSequence!1087 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073)))))

(assert (=> d!887744 (= (lexRec!694 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073)) lt!1096061)))

(declare-fun b!3230470 () Bool)

(assert (=> b!3230470 (= e!2014791 (= (list!12975 (_2!21028 lt!1096061)) (_2!21030 (lexList!1335 thiss!18206 rules!2135 (list!12975 (seqFromList!3595 lt!1095073))))))))

(declare-fun b!3230471 () Bool)

(declare-fun res!1315514 () Bool)

(assert (=> b!3230471 (=> (not res!1315514) (not e!2014791))))

(assert (=> b!3230471 (= res!1315514 (= (list!12978 (_1!21028 lt!1096061)) (_1!21030 (lexList!1335 thiss!18206 rules!2135 (list!12975 (seqFromList!3595 lt!1095073))))))))

(declare-fun b!3230472 () Bool)

(declare-fun e!2014793 () Bool)

(assert (=> b!3230472 (= e!2014793 (not (isEmpty!20446 (_1!21028 lt!1096061))))))

(declare-fun b!3230473 () Bool)

(assert (=> b!3230473 (= e!2014792 e!2014793)))

(declare-fun res!1315516 () Bool)

(assert (=> b!3230473 (= res!1315516 (< (size!27431 (_2!21028 lt!1096061)) (size!27431 (seqFromList!3595 lt!1095073))))))

(assert (=> b!3230473 (=> (not res!1315516) (not e!2014793))))

(declare-fun b!3230474 () Bool)

(assert (=> b!3230474 (= e!2014794 (tuple2!35789 (BalanceConc!21431 Empty!10908) (seqFromList!3595 lt!1095073)))))

(assert (= (and d!887744 c!543022) b!3230468))

(assert (= (and d!887744 (not c!543022)) b!3230474))

(assert (= (and d!887744 c!543023) b!3230473))

(assert (= (and d!887744 (not c!543023)) b!3230469))

(assert (= (and b!3230473 res!1315516) b!3230472))

(assert (= (and d!887744 res!1315515) b!3230471))

(assert (= (and b!3230471 res!1315514) b!3230470))

(declare-fun m!3511379 () Bool)

(assert (=> b!3230468 m!3511379))

(declare-fun m!3511381 () Bool)

(assert (=> b!3230468 m!3511381))

(declare-fun m!3511383 () Bool)

(assert (=> b!3230469 m!3511383))

(assert (=> b!3230469 m!3507165))

(assert (=> b!3230469 m!3507457))

(declare-fun m!3511385 () Bool)

(assert (=> b!3230472 m!3511385))

(assert (=> b!3230470 m!3511383))

(assert (=> b!3230470 m!3507165))

(assert (=> b!3230470 m!3507457))

(assert (=> b!3230470 m!3507457))

(assert (=> b!3230470 m!3507459))

(declare-fun m!3511387 () Bool)

(assert (=> d!887744 m!3511387))

(assert (=> d!887744 m!3507165))

(assert (=> d!887744 m!3508585))

(declare-fun m!3511389 () Bool)

(assert (=> b!3230471 m!3511389))

(assert (=> b!3230471 m!3507165))

(assert (=> b!3230471 m!3507457))

(assert (=> b!3230471 m!3507457))

(assert (=> b!3230471 m!3507459))

(declare-fun m!3511391 () Bool)

(assert (=> b!3230473 m!3511391))

(assert (=> b!3230473 m!3507165))

(assert (=> b!3230473 m!3507453))

(assert (=> d!886812 d!887744))

(declare-fun d!887748 () Bool)

(assert (=> d!887748 (= (list!12975 (_2!21028 lt!1095487)) (list!12979 (c!542433 (_2!21028 lt!1095487))))))

(declare-fun bs!543309 () Bool)

(assert (= bs!543309 d!887748))

(declare-fun m!3511393 () Bool)

(assert (=> bs!543309 m!3511393))

(assert (=> b!3228923 d!887748))

(declare-fun d!887750 () Bool)

(assert (=> d!887750 (= (list!12975 (_2!21028 (lexRec!694 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073)))) (list!12979 (c!542433 (_2!21028 (lexRec!694 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073))))))))

(declare-fun bs!543310 () Bool)

(assert (= bs!543310 d!887750))

(declare-fun m!3511395 () Bool)

(assert (=> bs!543310 m!3511395))

(assert (=> b!3228923 d!887750))

(assert (=> b!3228923 d!887744))

(declare-fun d!887754 () Bool)

(assert (=> d!887754 (= (Forall2!875 lambda!118235) (choose!18840 lambda!118235))))

(declare-fun bs!543311 () Bool)

(assert (= bs!543311 d!887754))

(declare-fun m!3511397 () Bool)

(assert (=> bs!543311 m!3511397))

(assert (=> d!886732 d!887754))

(declare-fun d!887758 () Bool)

(declare-fun c!543024 () Bool)

(assert (=> d!887758 (= c!543024 ((_ is Nil!36361) (t!241330 lt!1095173)))))

(declare-fun e!2014795 () (InoxSet C!20236))

(assert (=> d!887758 (= (content!4918 (t!241330 lt!1095173)) e!2014795)))

(declare-fun b!3230475 () Bool)

(assert (=> b!3230475 (= e!2014795 ((as const (Array C!20236 Bool)) false))))

(declare-fun b!3230476 () Bool)

(assert (=> b!3230476 (= e!2014795 ((_ map or) (store ((as const (Array C!20236 Bool)) false) (h!41781 (t!241330 lt!1095173)) true) (content!4918 (t!241330 (t!241330 lt!1095173)))))))

(assert (= (and d!887758 c!543024) b!3230475))

(assert (= (and d!887758 (not c!543024)) b!3230476))

(declare-fun m!3511399 () Bool)

(assert (=> b!3230476 m!3511399))

(declare-fun m!3511401 () Bool)

(assert (=> b!3230476 m!3511401))

(assert (=> b!3229046 d!887758))

(declare-fun d!887762 () Bool)

(assert (=> d!887762 (= (height!1580 (c!542433 (BalanceConc!21429 Empty!10907))) (ite ((_ is Empty!10907) (c!542433 (BalanceConc!21429 Empty!10907))) 0 (ite ((_ is Leaf!17151) (c!542433 (BalanceConc!21429 Empty!10907))) 1 (cheight!11118 (c!542433 (BalanceConc!21429 Empty!10907))))))))

(assert (=> b!3228996 d!887762))

(declare-fun d!887764 () Bool)

(assert (=> d!887764 (= (height!1580 (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0)))) (ite ((_ is Empty!10907) (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0)))) 0 (ite ((_ is Leaf!17151) (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0)))) 1 (cheight!11118 (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0)))))))))

(assert (=> b!3228996 d!887764))

(declare-fun d!887768 () Bool)

(assert (=> d!887768 (= (max!0 (height!1580 (c!542433 (BalanceConc!21429 Empty!10907))) (height!1580 (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0))))) (ite (< (height!1580 (c!542433 (BalanceConc!21429 Empty!10907))) (height!1580 (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0))))) (height!1580 (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0)))) (height!1580 (c!542433 (BalanceConc!21429 Empty!10907)))))))

(assert (=> b!3228996 d!887768))

(declare-fun d!887778 () Bool)

(assert (=> d!887778 (= (height!1580 (++!8761 (c!542433 (BalanceConc!21429 Empty!10907)) (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0))))) (ite ((_ is Empty!10907) (++!8761 (c!542433 (BalanceConc!21429 Empty!10907)) (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0))))) 0 (ite ((_ is Leaf!17151) (++!8761 (c!542433 (BalanceConc!21429 Empty!10907)) (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0))))) 1 (cheight!11118 (++!8761 (c!542433 (BalanceConc!21429 Empty!10907)) (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0))))))))))

(assert (=> b!3228996 d!887778))

(assert (=> b!3228996 d!887536))

(declare-fun d!887780 () Bool)

(declare-fun lt!1096069 () Int)

(assert (=> d!887780 (>= lt!1096069 0)))

(declare-fun e!2014803 () Int)

(assert (=> d!887780 (= lt!1096069 e!2014803)))

(declare-fun c!543027 () Bool)

(assert (=> d!887780 (= c!543027 ((_ is Nil!36361) (_2!21030 lt!1095346)))))

(assert (=> d!887780 (= (size!27430 (_2!21030 lt!1095346)) lt!1096069)))

(declare-fun b!3230487 () Bool)

(assert (=> b!3230487 (= e!2014803 0)))

(declare-fun b!3230488 () Bool)

(assert (=> b!3230488 (= e!2014803 (+ 1 (size!27430 (t!241330 (_2!21030 lt!1095346)))))))

(assert (= (and d!887780 c!543027) b!3230487))

(assert (= (and d!887780 (not c!543027)) b!3230488))

(declare-fun m!3511443 () Bool)

(assert (=> b!3230488 m!3511443))

(assert (=> b!3228820 d!887780))

(assert (=> b!3228820 d!887238))

(declare-fun b!3230489 () Bool)

(declare-fun e!2014805 () List!36487)

(assert (=> b!3230489 (= e!2014805 (t!241332 lt!1095094))))

(declare-fun b!3230490 () Bool)

(assert (=> b!3230490 (= e!2014805 (drop!1876 (t!241332 (t!241332 lt!1095094)) (- (- 0 1) 1)))))

(declare-fun b!3230491 () Bool)

(declare-fun e!2014808 () Int)

(assert (=> b!3230491 (= e!2014808 0)))

(declare-fun b!3230492 () Bool)

(declare-fun e!2014806 () List!36487)

(assert (=> b!3230492 (= e!2014806 Nil!36363)))

(declare-fun b!3230493 () Bool)

(declare-fun e!2014804 () Bool)

(declare-fun lt!1096070 () List!36487)

(declare-fun e!2014807 () Int)

(assert (=> b!3230493 (= e!2014804 (= (size!27433 lt!1096070) e!2014807))))

(declare-fun c!543030 () Bool)

(assert (=> b!3230493 (= c!543030 (<= (- 0 1) 0))))

(declare-fun b!3230494 () Bool)

(declare-fun call!233343 () Int)

(assert (=> b!3230494 (= e!2014808 (- call!233343 (- 0 1)))))

(declare-fun b!3230495 () Bool)

(assert (=> b!3230495 (= e!2014807 call!233343)))

(declare-fun bm!233338 () Bool)

(assert (=> bm!233338 (= call!233343 (size!27433 (t!241332 lt!1095094)))))

(declare-fun d!887784 () Bool)

(assert (=> d!887784 e!2014804))

(declare-fun res!1315523 () Bool)

(assert (=> d!887784 (=> (not res!1315523) (not e!2014804))))

(assert (=> d!887784 (= res!1315523 (= ((_ map implies) (content!4920 lt!1096070) (content!4920 (t!241332 lt!1095094))) ((as const (InoxSet Token!9898)) true)))))

(assert (=> d!887784 (= lt!1096070 e!2014806)))

(declare-fun c!543028 () Bool)

(assert (=> d!887784 (= c!543028 ((_ is Nil!36363) (t!241332 lt!1095094)))))

(assert (=> d!887784 (= (drop!1876 (t!241332 lt!1095094) (- 0 1)) lt!1096070)))

(declare-fun b!3230496 () Bool)

(assert (=> b!3230496 (= e!2014807 e!2014808)))

(declare-fun c!543029 () Bool)

(assert (=> b!3230496 (= c!543029 (>= (- 0 1) call!233343))))

(declare-fun b!3230497 () Bool)

(assert (=> b!3230497 (= e!2014806 e!2014805)))

(declare-fun c!543031 () Bool)

(assert (=> b!3230497 (= c!543031 (<= (- 0 1) 0))))

(assert (= (and d!887784 c!543028) b!3230492))

(assert (= (and d!887784 (not c!543028)) b!3230497))

(assert (= (and b!3230497 c!543031) b!3230489))

(assert (= (and b!3230497 (not c!543031)) b!3230490))

(assert (= (and d!887784 res!1315523) b!3230493))

(assert (= (and b!3230493 c!543030) b!3230495))

(assert (= (and b!3230493 (not c!543030)) b!3230496))

(assert (= (and b!3230496 c!543029) b!3230491))

(assert (= (and b!3230496 (not c!543029)) b!3230494))

(assert (= (or b!3230495 b!3230496 b!3230494) bm!233338))

(declare-fun m!3511445 () Bool)

(assert (=> b!3230490 m!3511445))

(declare-fun m!3511447 () Bool)

(assert (=> b!3230493 m!3511447))

(assert (=> bm!233338 m!3509787))

(declare-fun m!3511449 () Bool)

(assert (=> d!887784 m!3511449))

(declare-fun m!3511451 () Bool)

(assert (=> d!887784 m!3511451))

(assert (=> b!3228965 d!887784))

(declare-fun d!887786 () Bool)

(declare-fun res!1315525 () Bool)

(declare-fun e!2014810 () Bool)

(assert (=> d!887786 (=> res!1315525 e!2014810)))

(assert (=> d!887786 (= res!1315525 (not ((_ is Node!10907) (fromList!633 lt!1095073))))))

(assert (=> d!887786 (= (isBalanced!3247 (fromList!633 lt!1095073)) e!2014810)))

(declare-fun b!3230498 () Bool)

(declare-fun res!1315527 () Bool)

(declare-fun e!2014809 () Bool)

(assert (=> b!3230498 (=> (not res!1315527) (not e!2014809))))

(assert (=> b!3230498 (= res!1315527 (not (isEmpty!20456 (left!28314 (fromList!633 lt!1095073)))))))

(declare-fun b!3230499 () Bool)

(assert (=> b!3230499 (= e!2014810 e!2014809)))

(declare-fun res!1315529 () Bool)

(assert (=> b!3230499 (=> (not res!1315529) (not e!2014809))))

(assert (=> b!3230499 (= res!1315529 (<= (- 1) (- (height!1580 (left!28314 (fromList!633 lt!1095073))) (height!1580 (right!28644 (fromList!633 lt!1095073))))))))

(declare-fun b!3230500 () Bool)

(declare-fun res!1315524 () Bool)

(assert (=> b!3230500 (=> (not res!1315524) (not e!2014809))))

(assert (=> b!3230500 (= res!1315524 (<= (- (height!1580 (left!28314 (fromList!633 lt!1095073))) (height!1580 (right!28644 (fromList!633 lt!1095073)))) 1))))

(declare-fun b!3230501 () Bool)

(declare-fun res!1315526 () Bool)

(assert (=> b!3230501 (=> (not res!1315526) (not e!2014809))))

(assert (=> b!3230501 (= res!1315526 (isBalanced!3247 (right!28644 (fromList!633 lt!1095073))))))

(declare-fun b!3230502 () Bool)

(assert (=> b!3230502 (= e!2014809 (not (isEmpty!20456 (right!28644 (fromList!633 lt!1095073)))))))

(declare-fun b!3230503 () Bool)

(declare-fun res!1315528 () Bool)

(assert (=> b!3230503 (=> (not res!1315528) (not e!2014809))))

(assert (=> b!3230503 (= res!1315528 (isBalanced!3247 (left!28314 (fromList!633 lt!1095073))))))

(assert (= (and d!887786 (not res!1315525)) b!3230499))

(assert (= (and b!3230499 res!1315529) b!3230500))

(assert (= (and b!3230500 res!1315524) b!3230503))

(assert (= (and b!3230503 res!1315528) b!3230501))

(assert (= (and b!3230501 res!1315526) b!3230498))

(assert (= (and b!3230498 res!1315527) b!3230502))

(declare-fun m!3511453 () Bool)

(assert (=> b!3230499 m!3511453))

(declare-fun m!3511455 () Bool)

(assert (=> b!3230499 m!3511455))

(declare-fun m!3511457 () Bool)

(assert (=> b!3230502 m!3511457))

(declare-fun m!3511459 () Bool)

(assert (=> b!3230498 m!3511459))

(declare-fun m!3511461 () Bool)

(assert (=> b!3230503 m!3511461))

(assert (=> b!3230500 m!3511453))

(assert (=> b!3230500 m!3511455))

(declare-fun m!3511463 () Bool)

(assert (=> b!3230501 m!3511463))

(assert (=> b!3228764 d!887786))

(declare-fun d!887788 () Bool)

(declare-fun e!2014813 () Bool)

(assert (=> d!887788 e!2014813))

(declare-fun res!1315532 () Bool)

(assert (=> d!887788 (=> (not res!1315532) (not e!2014813))))

(declare-fun lt!1096073 () Conc!10907)

(assert (=> d!887788 (= res!1315532 (= (list!12979 lt!1096073) lt!1095073))))

(declare-fun choose!18845 (List!36485) Conc!10907)

(assert (=> d!887788 (= lt!1096073 (choose!18845 lt!1095073))))

(assert (=> d!887788 (= (fromList!633 lt!1095073) lt!1096073)))

(declare-fun b!3230506 () Bool)

(assert (=> b!3230506 (= e!2014813 (isBalanced!3247 lt!1096073))))

(assert (= (and d!887788 res!1315532) b!3230506))

(declare-fun m!3511465 () Bool)

(assert (=> d!887788 m!3511465))

(declare-fun m!3511467 () Bool)

(assert (=> d!887788 m!3511467))

(declare-fun m!3511469 () Bool)

(assert (=> b!3230506 m!3511469))

(assert (=> b!3228764 d!887788))

(declare-fun b!3230510 () Bool)

(declare-fun e!2014815 () List!36485)

(assert (=> b!3230510 (= e!2014815 (++!8756 (list!12979 (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494)))))) (list!12979 (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))))))))

(declare-fun b!3230509 () Bool)

(assert (=> b!3230509 (= e!2014815 (list!12981 (xs!14025 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494)))))))))

(declare-fun b!3230508 () Bool)

(declare-fun e!2014814 () List!36485)

(assert (=> b!3230508 (= e!2014814 e!2014815)))

(declare-fun c!543033 () Bool)

(assert (=> b!3230508 (= c!543033 ((_ is Leaf!17151) (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))))))

(declare-fun d!887790 () Bool)

(declare-fun c!543032 () Bool)

(assert (=> d!887790 (= c!543032 ((_ is Empty!10907) (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))))))

(assert (=> d!887790 (= (list!12979 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))) e!2014814)))

(declare-fun b!3230507 () Bool)

(assert (=> b!3230507 (= e!2014814 Nil!36361)))

(assert (= (and d!887790 c!543032) b!3230507))

(assert (= (and d!887790 (not c!543032)) b!3230508))

(assert (= (and b!3230508 c!543033) b!3230509))

(assert (= (and b!3230508 (not c!543033)) b!3230510))

(declare-fun m!3511471 () Bool)

(assert (=> b!3230510 m!3511471))

(declare-fun m!3511473 () Bool)

(assert (=> b!3230510 m!3511473))

(assert (=> b!3230510 m!3511471))

(assert (=> b!3230510 m!3511473))

(declare-fun m!3511475 () Bool)

(assert (=> b!3230510 m!3511475))

(assert (=> b!3230509 m!3510355))

(assert (=> d!886546 d!887790))

(declare-fun d!887792 () Bool)

(declare-fun c!543034 () Bool)

(assert (=> d!887792 (= c!543034 ((_ is Nil!36363) lt!1095591))))

(declare-fun e!2014816 () (InoxSet Token!9898))

(assert (=> d!887792 (= (content!4920 lt!1095591) e!2014816)))

(declare-fun b!3230511 () Bool)

(assert (=> b!3230511 (= e!2014816 ((as const (Array Token!9898 Bool)) false))))

(declare-fun b!3230512 () Bool)

(assert (=> b!3230512 (= e!2014816 ((_ map or) (store ((as const (Array Token!9898 Bool)) false) (h!41783 lt!1095591) true) (content!4920 (t!241332 lt!1095591))))))

(assert (= (and d!887792 c!543034) b!3230511))

(assert (= (and d!887792 (not c!543034)) b!3230512))

(declare-fun m!3511477 () Bool)

(assert (=> b!3230512 m!3511477))

(declare-fun m!3511479 () Bool)

(assert (=> b!3230512 m!3511479))

(assert (=> d!886910 d!887792))

(assert (=> d!886910 d!887468))

(declare-fun b!3230513 () Bool)

(declare-fun e!2014818 () List!36485)

(assert (=> b!3230513 (= e!2014818 (list!12979 (right!28644 (c!542433 (charsOf!3282 (h!41783 tokens!494))))))))

(declare-fun b!3230514 () Bool)

(assert (=> b!3230514 (= e!2014818 (Cons!36361 (h!41781 (list!12979 (left!28314 (c!542433 (charsOf!3282 (h!41783 tokens!494)))))) (++!8756 (t!241330 (list!12979 (left!28314 (c!542433 (charsOf!3282 (h!41783 tokens!494)))))) (list!12979 (right!28644 (c!542433 (charsOf!3282 (h!41783 tokens!494))))))))))

(declare-fun b!3230516 () Bool)

(declare-fun e!2014817 () Bool)

(declare-fun lt!1096074 () List!36485)

(assert (=> b!3230516 (= e!2014817 (or (not (= (list!12979 (right!28644 (c!542433 (charsOf!3282 (h!41783 tokens!494))))) Nil!36361)) (= lt!1096074 (list!12979 (left!28314 (c!542433 (charsOf!3282 (h!41783 tokens!494))))))))))

(declare-fun b!3230515 () Bool)

(declare-fun res!1315533 () Bool)

(assert (=> b!3230515 (=> (not res!1315533) (not e!2014817))))

(assert (=> b!3230515 (= res!1315533 (= (size!27430 lt!1096074) (+ (size!27430 (list!12979 (left!28314 (c!542433 (charsOf!3282 (h!41783 tokens!494)))))) (size!27430 (list!12979 (right!28644 (c!542433 (charsOf!3282 (h!41783 tokens!494)))))))))))

(declare-fun d!887794 () Bool)

(assert (=> d!887794 e!2014817))

(declare-fun res!1315534 () Bool)

(assert (=> d!887794 (=> (not res!1315534) (not e!2014817))))

(assert (=> d!887794 (= res!1315534 (= (content!4918 lt!1096074) ((_ map or) (content!4918 (list!12979 (left!28314 (c!542433 (charsOf!3282 (h!41783 tokens!494)))))) (content!4918 (list!12979 (right!28644 (c!542433 (charsOf!3282 (h!41783 tokens!494)))))))))))

(assert (=> d!887794 (= lt!1096074 e!2014818)))

(declare-fun c!543035 () Bool)

(assert (=> d!887794 (= c!543035 ((_ is Nil!36361) (list!12979 (left!28314 (c!542433 (charsOf!3282 (h!41783 tokens!494)))))))))

(assert (=> d!887794 (= (++!8756 (list!12979 (left!28314 (c!542433 (charsOf!3282 (h!41783 tokens!494))))) (list!12979 (right!28644 (c!542433 (charsOf!3282 (h!41783 tokens!494)))))) lt!1096074)))

(assert (= (and d!887794 c!543035) b!3230513))

(assert (= (and d!887794 (not c!543035)) b!3230514))

(assert (= (and d!887794 res!1315534) b!3230515))

(assert (= (and b!3230515 res!1315533) b!3230516))

(assert (=> b!3230514 m!3508111))

(declare-fun m!3511481 () Bool)

(assert (=> b!3230514 m!3511481))

(declare-fun m!3511483 () Bool)

(assert (=> b!3230515 m!3511483))

(assert (=> b!3230515 m!3508109))

(declare-fun m!3511485 () Bool)

(assert (=> b!3230515 m!3511485))

(assert (=> b!3230515 m!3508111))

(declare-fun m!3511487 () Bool)

(assert (=> b!3230515 m!3511487))

(declare-fun m!3511489 () Bool)

(assert (=> d!887794 m!3511489))

(assert (=> d!887794 m!3508109))

(declare-fun m!3511491 () Bool)

(assert (=> d!887794 m!3511491))

(assert (=> d!887794 m!3508111))

(declare-fun m!3511493 () Bool)

(assert (=> d!887794 m!3511493))

(assert (=> b!3228772 d!887794))

(declare-fun b!3230520 () Bool)

(declare-fun e!2014820 () List!36485)

(assert (=> b!3230520 (= e!2014820 (++!8756 (list!12979 (left!28314 (left!28314 (c!542433 (charsOf!3282 (h!41783 tokens!494)))))) (list!12979 (right!28644 (left!28314 (c!542433 (charsOf!3282 (h!41783 tokens!494))))))))))

(declare-fun b!3230519 () Bool)

(assert (=> b!3230519 (= e!2014820 (list!12981 (xs!14025 (left!28314 (c!542433 (charsOf!3282 (h!41783 tokens!494)))))))))

(declare-fun b!3230518 () Bool)

(declare-fun e!2014819 () List!36485)

(assert (=> b!3230518 (= e!2014819 e!2014820)))

(declare-fun c!543037 () Bool)

(assert (=> b!3230518 (= c!543037 ((_ is Leaf!17151) (left!28314 (c!542433 (charsOf!3282 (h!41783 tokens!494))))))))

(declare-fun d!887796 () Bool)

(declare-fun c!543036 () Bool)

(assert (=> d!887796 (= c!543036 ((_ is Empty!10907) (left!28314 (c!542433 (charsOf!3282 (h!41783 tokens!494))))))))

(assert (=> d!887796 (= (list!12979 (left!28314 (c!542433 (charsOf!3282 (h!41783 tokens!494))))) e!2014819)))

(declare-fun b!3230517 () Bool)

(assert (=> b!3230517 (= e!2014819 Nil!36361)))

(assert (= (and d!887796 c!543036) b!3230517))

(assert (= (and d!887796 (not c!543036)) b!3230518))

(assert (= (and b!3230518 c!543037) b!3230519))

(assert (= (and b!3230518 (not c!543037)) b!3230520))

(declare-fun m!3511495 () Bool)

(assert (=> b!3230520 m!3511495))

(declare-fun m!3511497 () Bool)

(assert (=> b!3230520 m!3511497))

(assert (=> b!3230520 m!3511495))

(assert (=> b!3230520 m!3511497))

(declare-fun m!3511499 () Bool)

(assert (=> b!3230520 m!3511499))

(declare-fun m!3511501 () Bool)

(assert (=> b!3230519 m!3511501))

(assert (=> b!3228772 d!887796))

(declare-fun b!3230524 () Bool)

(declare-fun e!2014822 () List!36485)

(assert (=> b!3230524 (= e!2014822 (++!8756 (list!12979 (left!28314 (right!28644 (c!542433 (charsOf!3282 (h!41783 tokens!494)))))) (list!12979 (right!28644 (right!28644 (c!542433 (charsOf!3282 (h!41783 tokens!494))))))))))

(declare-fun b!3230523 () Bool)

(assert (=> b!3230523 (= e!2014822 (list!12981 (xs!14025 (right!28644 (c!542433 (charsOf!3282 (h!41783 tokens!494)))))))))

(declare-fun b!3230522 () Bool)

(declare-fun e!2014821 () List!36485)

(assert (=> b!3230522 (= e!2014821 e!2014822)))

(declare-fun c!543039 () Bool)

(assert (=> b!3230522 (= c!543039 ((_ is Leaf!17151) (right!28644 (c!542433 (charsOf!3282 (h!41783 tokens!494))))))))

(declare-fun d!887798 () Bool)

(declare-fun c!543038 () Bool)

(assert (=> d!887798 (= c!543038 ((_ is Empty!10907) (right!28644 (c!542433 (charsOf!3282 (h!41783 tokens!494))))))))

(assert (=> d!887798 (= (list!12979 (right!28644 (c!542433 (charsOf!3282 (h!41783 tokens!494))))) e!2014821)))

(declare-fun b!3230521 () Bool)

(assert (=> b!3230521 (= e!2014821 Nil!36361)))

(assert (= (and d!887798 c!543038) b!3230521))

(assert (= (and d!887798 (not c!543038)) b!3230522))

(assert (= (and b!3230522 c!543039) b!3230523))

(assert (= (and b!3230522 (not c!543039)) b!3230524))

(declare-fun m!3511503 () Bool)

(assert (=> b!3230524 m!3511503))

(declare-fun m!3511505 () Bool)

(assert (=> b!3230524 m!3511505))

(assert (=> b!3230524 m!3511503))

(assert (=> b!3230524 m!3511505))

(declare-fun m!3511507 () Bool)

(assert (=> b!3230524 m!3511507))

(declare-fun m!3511509 () Bool)

(assert (=> b!3230523 m!3511509))

(assert (=> b!3228772 d!887798))

(declare-fun b!3230543 () Bool)

(declare-fun e!2014843 () Bool)

(declare-fun e!2014846 () Bool)

(assert (=> b!3230543 (= e!2014843 e!2014846)))

(declare-fun res!1315558 () Bool)

(assert (=> b!3230543 (=> res!1315558 e!2014846)))

(assert (=> b!3230543 (= res!1315558 (not ((_ is Node!10907) (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0))))))))

(declare-fun b!3230544 () Bool)

(declare-fun e!2014844 () Bool)

(declare-fun e!2014842 () Bool)

(assert (=> b!3230544 (= e!2014844 e!2014842)))

(declare-fun res!1315556 () Bool)

(assert (=> b!3230544 (=> (not res!1315556) (not e!2014842))))

(declare-fun appendAssoc!216 (List!36485 List!36485 List!36485) Bool)

(assert (=> b!3230544 (= res!1315556 (appendAssoc!216 (list!12979 (left!28314 (c!542433 (BalanceConc!21429 Empty!10907)))) (list!12979 (right!28644 (c!542433 (BalanceConc!21429 Empty!10907)))) (list!12979 (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0))))))))

(declare-fun b!3230545 () Bool)

(declare-fun e!2014847 () Bool)

(declare-fun e!2014841 () Bool)

(assert (=> b!3230545 (= e!2014847 e!2014841)))

(declare-fun res!1315561 () Bool)

(assert (=> b!3230545 (=> res!1315561 e!2014841)))

(assert (=> b!3230545 (= res!1315561 (not ((_ is Node!10907) (left!28314 (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0)))))))))

(declare-fun b!3230546 () Bool)

(declare-fun e!2014849 () Bool)

(assert (=> b!3230546 (= e!2014849 (appendAssoc!216 (++!8756 (list!12979 (c!542433 (BalanceConc!21429 Empty!10907))) (list!12979 (left!28314 (left!28314 (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0))))))) (list!12979 (right!28644 (left!28314 (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0)))))) (list!12979 (right!28644 (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0)))))))))

(declare-fun b!3230548 () Bool)

(declare-fun e!2014848 () Bool)

(assert (=> b!3230548 (= e!2014848 (appendAssoc!216 (list!12979 (left!28314 (c!542433 (BalanceConc!21429 Empty!10907)))) (list!12979 (left!28314 (right!28644 (c!542433 (BalanceConc!21429 Empty!10907))))) (++!8756 (list!12979 (right!28644 (right!28644 (c!542433 (BalanceConc!21429 Empty!10907))))) (list!12979 (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0)))))))))

(declare-fun b!3230549 () Bool)

(assert (=> b!3230549 (= e!2014846 e!2014847)))

(declare-fun res!1315557 () Bool)

(assert (=> b!3230549 (=> (not res!1315557) (not e!2014847))))

(assert (=> b!3230549 (= res!1315557 (appendAssoc!216 (list!12979 (c!542433 (BalanceConc!21429 Empty!10907))) (list!12979 (left!28314 (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0))))) (list!12979 (right!28644 (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0)))))))))

(declare-fun b!3230550 () Bool)

(declare-fun e!2014845 () Bool)

(assert (=> b!3230550 (= e!2014845 e!2014848)))

(declare-fun res!1315559 () Bool)

(assert (=> b!3230550 (=> (not res!1315559) (not e!2014848))))

(assert (=> b!3230550 (= res!1315559 (appendAssoc!216 (list!12979 (left!28314 (right!28644 (c!542433 (BalanceConc!21429 Empty!10907))))) (list!12979 (right!28644 (right!28644 (c!542433 (BalanceConc!21429 Empty!10907))))) (list!12979 (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0))))))))

(declare-fun b!3230551 () Bool)

(assert (=> b!3230551 (= e!2014842 e!2014845)))

(declare-fun res!1315560 () Bool)

(assert (=> b!3230551 (=> res!1315560 e!2014845)))

(assert (=> b!3230551 (= res!1315560 (not ((_ is Node!10907) (right!28644 (c!542433 (BalanceConc!21429 Empty!10907))))))))

(declare-fun b!3230547 () Bool)

(assert (=> b!3230547 (= e!2014841 e!2014849)))

(declare-fun res!1315555 () Bool)

(assert (=> b!3230547 (=> (not res!1315555) (not e!2014849))))

(assert (=> b!3230547 (= res!1315555 (appendAssoc!216 (list!12979 (c!542433 (BalanceConc!21429 Empty!10907))) (list!12979 (left!28314 (left!28314 (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0)))))) (list!12979 (right!28644 (left!28314 (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0))))))))))

(declare-fun d!887800 () Bool)

(assert (=> d!887800 e!2014843))

(declare-fun res!1315553 () Bool)

(assert (=> d!887800 (=> (not res!1315553) (not e!2014843))))

(assert (=> d!887800 (= res!1315553 e!2014844)))

(declare-fun res!1315554 () Bool)

(assert (=> d!887800 (=> res!1315554 e!2014844)))

(assert (=> d!887800 (= res!1315554 (not ((_ is Node!10907) (c!542433 (BalanceConc!21429 Empty!10907)))))))

(assert (=> d!887800 (= (appendAssocInst!745 (c!542433 (BalanceConc!21429 Empty!10907)) (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0)))) true)))

(assert (= (and d!887800 (not res!1315554)) b!3230544))

(assert (= (and b!3230544 res!1315556) b!3230551))

(assert (= (and b!3230551 (not res!1315560)) b!3230550))

(assert (= (and b!3230550 res!1315559) b!3230548))

(assert (= (and d!887800 res!1315553) b!3230543))

(assert (= (and b!3230543 (not res!1315558)) b!3230549))

(assert (= (and b!3230549 res!1315557) b!3230545))

(assert (= (and b!3230545 (not res!1315561)) b!3230547))

(assert (= (and b!3230547 res!1315555) b!3230546))

(assert (=> b!3230549 m!3508037))

(declare-fun m!3511511 () Bool)

(assert (=> b!3230549 m!3511511))

(declare-fun m!3511513 () Bool)

(assert (=> b!3230549 m!3511513))

(assert (=> b!3230549 m!3508037))

(assert (=> b!3230549 m!3511511))

(assert (=> b!3230549 m!3511513))

(declare-fun m!3511515 () Bool)

(assert (=> b!3230549 m!3511515))

(assert (=> b!3230544 m!3509441))

(assert (=> b!3230544 m!3509443))

(assert (=> b!3230544 m!3510773))

(assert (=> b!3230544 m!3509441))

(assert (=> b!3230544 m!3509443))

(assert (=> b!3230544 m!3510773))

(declare-fun m!3511517 () Bool)

(assert (=> b!3230544 m!3511517))

(assert (=> b!3230547 m!3508037))

(declare-fun m!3511519 () Bool)

(assert (=> b!3230547 m!3511519))

(declare-fun m!3511521 () Bool)

(assert (=> b!3230547 m!3511521))

(assert (=> b!3230547 m!3508037))

(assert (=> b!3230547 m!3511519))

(assert (=> b!3230547 m!3511521))

(declare-fun m!3511523 () Bool)

(assert (=> b!3230547 m!3511523))

(assert (=> b!3230546 m!3511519))

(assert (=> b!3230546 m!3508037))

(assert (=> b!3230546 m!3511519))

(declare-fun m!3511525 () Bool)

(assert (=> b!3230546 m!3511525))

(assert (=> b!3230546 m!3511521))

(assert (=> b!3230546 m!3511513))

(assert (=> b!3230546 m!3508037))

(assert (=> b!3230546 m!3511525))

(assert (=> b!3230546 m!3511521))

(assert (=> b!3230546 m!3511513))

(declare-fun m!3511527 () Bool)

(assert (=> b!3230546 m!3511527))

(declare-fun m!3511529 () Bool)

(assert (=> b!3230550 m!3511529))

(declare-fun m!3511531 () Bool)

(assert (=> b!3230550 m!3511531))

(assert (=> b!3230550 m!3510773))

(assert (=> b!3230550 m!3511529))

(assert (=> b!3230550 m!3511531))

(assert (=> b!3230550 m!3510773))

(declare-fun m!3511533 () Bool)

(assert (=> b!3230550 m!3511533))

(assert (=> b!3230548 m!3510773))

(assert (=> b!3230548 m!3511531))

(assert (=> b!3230548 m!3509441))

(assert (=> b!3230548 m!3509441))

(assert (=> b!3230548 m!3511529))

(declare-fun m!3511535 () Bool)

(assert (=> b!3230548 m!3511535))

(declare-fun m!3511537 () Bool)

(assert (=> b!3230548 m!3511537))

(assert (=> b!3230548 m!3511531))

(assert (=> b!3230548 m!3510773))

(assert (=> b!3230548 m!3511535))

(assert (=> b!3230548 m!3511529))

(assert (=> d!886906 d!887800))

(assert (=> d!886906 d!887536))

(declare-fun b!3230552 () Bool)

(declare-fun res!1315565 () Bool)

(declare-fun e!2014851 () Bool)

(assert (=> b!3230552 (=> (not res!1315565) (not e!2014851))))

(assert (=> b!3230552 (= res!1315565 (isBalanced!3244 (left!28315 (right!28645 (c!542434 lt!1095112)))))))

(declare-fun d!887802 () Bool)

(declare-fun res!1315562 () Bool)

(declare-fun e!2014850 () Bool)

(assert (=> d!887802 (=> res!1315562 e!2014850)))

(assert (=> d!887802 (= res!1315562 (not ((_ is Node!10908) (right!28645 (c!542434 lt!1095112)))))))

(assert (=> d!887802 (= (isBalanced!3244 (right!28645 (c!542434 lt!1095112))) e!2014850)))

(declare-fun b!3230553 () Bool)

(declare-fun res!1315567 () Bool)

(assert (=> b!3230553 (=> (not res!1315567) (not e!2014851))))

(assert (=> b!3230553 (= res!1315567 (not (isEmpty!20454 (left!28315 (right!28645 (c!542434 lt!1095112))))))))

(declare-fun b!3230554 () Bool)

(declare-fun res!1315564 () Bool)

(assert (=> b!3230554 (=> (not res!1315564) (not e!2014851))))

(assert (=> b!3230554 (= res!1315564 (<= (- (height!1577 (left!28315 (right!28645 (c!542434 lt!1095112)))) (height!1577 (right!28645 (right!28645 (c!542434 lt!1095112))))) 1))))

(declare-fun b!3230555 () Bool)

(declare-fun res!1315566 () Bool)

(assert (=> b!3230555 (=> (not res!1315566) (not e!2014851))))

(assert (=> b!3230555 (= res!1315566 (isBalanced!3244 (right!28645 (right!28645 (c!542434 lt!1095112)))))))

(declare-fun b!3230556 () Bool)

(assert (=> b!3230556 (= e!2014850 e!2014851)))

(declare-fun res!1315563 () Bool)

(assert (=> b!3230556 (=> (not res!1315563) (not e!2014851))))

(assert (=> b!3230556 (= res!1315563 (<= (- 1) (- (height!1577 (left!28315 (right!28645 (c!542434 lt!1095112)))) (height!1577 (right!28645 (right!28645 (c!542434 lt!1095112)))))))))

(declare-fun b!3230557 () Bool)

(assert (=> b!3230557 (= e!2014851 (not (isEmpty!20454 (right!28645 (right!28645 (c!542434 lt!1095112))))))))

(assert (= (and d!887802 (not res!1315562)) b!3230556))

(assert (= (and b!3230556 res!1315563) b!3230554))

(assert (= (and b!3230554 res!1315564) b!3230552))

(assert (= (and b!3230552 res!1315565) b!3230555))

(assert (= (and b!3230555 res!1315566) b!3230553))

(assert (= (and b!3230553 res!1315567) b!3230557))

(declare-fun m!3511539 () Bool)

(assert (=> b!3230556 m!3511539))

(declare-fun m!3511541 () Bool)

(assert (=> b!3230556 m!3511541))

(assert (=> b!3230554 m!3511539))

(assert (=> b!3230554 m!3511541))

(declare-fun m!3511543 () Bool)

(assert (=> b!3230555 m!3511543))

(declare-fun m!3511545 () Bool)

(assert (=> b!3230552 m!3511545))

(declare-fun m!3511547 () Bool)

(assert (=> b!3230553 m!3511547))

(declare-fun m!3511549 () Bool)

(assert (=> b!3230557 m!3511549))

(assert (=> b!3228487 d!887802))

(assert (=> b!3228976 d!886560))

(declare-fun d!887804 () Bool)

(assert (=> d!887804 (= (isEmpty!20452 (list!12975 (_2!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241)))))) ((_ is Nil!36361) (list!12975 (_2!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241)))))))))

(assert (=> d!886764 d!887804))

(declare-fun d!887806 () Bool)

(assert (=> d!887806 (= (list!12975 (_2!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241))))) (list!12979 (c!542433 (_2!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241)))))))))

(declare-fun bs!543314 () Bool)

(assert (= bs!543314 d!887806))

(declare-fun m!3511551 () Bool)

(assert (=> bs!543314 m!3511551))

(assert (=> d!886764 d!887806))

(declare-fun d!887808 () Bool)

(declare-fun lt!1096075 () Bool)

(assert (=> d!887808 (= lt!1096075 (isEmpty!20452 (list!12979 (c!542433 (_2!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241))))))))))

(assert (=> d!887808 (= lt!1096075 (= (size!27432 (c!542433 (_2!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241)))))) 0))))

(assert (=> d!887808 (= (isEmpty!20456 (c!542433 (_2!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 separatorToken!241)))))) lt!1096075)))

(declare-fun bs!543315 () Bool)

(assert (= bs!543315 d!887808))

(assert (=> bs!543315 m!3511551))

(assert (=> bs!543315 m!3511551))

(declare-fun m!3511553 () Bool)

(assert (=> bs!543315 m!3511553))

(declare-fun m!3511555 () Bool)

(assert (=> bs!543315 m!3511555))

(assert (=> d!886764 d!887808))

(declare-fun d!887810 () Bool)

(declare-fun c!543040 () Bool)

(assert (=> d!887810 (= c!543040 ((_ is Nil!36361) lt!1095605))))

(declare-fun e!2014852 () (InoxSet C!20236))

(assert (=> d!887810 (= (content!4918 lt!1095605) e!2014852)))

(declare-fun b!3230558 () Bool)

(assert (=> b!3230558 (= e!2014852 ((as const (Array C!20236 Bool)) false))))

(declare-fun b!3230559 () Bool)

(assert (=> b!3230559 (= e!2014852 ((_ map or) (store ((as const (Array C!20236 Bool)) false) (h!41781 lt!1095605) true) (content!4918 (t!241330 lt!1095605))))))

(assert (= (and d!887810 c!543040) b!3230558))

(assert (= (and d!887810 (not c!543040)) b!3230559))

(declare-fun m!3511557 () Bool)

(assert (=> b!3230559 m!3511557))

(declare-fun m!3511559 () Bool)

(assert (=> b!3230559 m!3511559))

(assert (=> d!886922 d!887810))

(declare-fun d!887812 () Bool)

(declare-fun c!543041 () Bool)

(assert (=> d!887812 (= c!543041 ((_ is Nil!36361) (list!12975 (charsOf!3282 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))))

(declare-fun e!2014853 () (InoxSet C!20236))

(assert (=> d!887812 (= (content!4918 (list!12975 (charsOf!3282 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))) e!2014853)))

(declare-fun b!3230560 () Bool)

(assert (=> b!3230560 (= e!2014853 ((as const (Array C!20236 Bool)) false))))

(declare-fun b!3230561 () Bool)

(assert (=> b!3230561 (= e!2014853 ((_ map or) (store ((as const (Array C!20236 Bool)) false) (h!41781 (list!12975 (charsOf!3282 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))) true) (content!4918 (t!241330 (list!12975 (charsOf!3282 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))))))

(assert (= (and d!887812 c!543041) b!3230560))

(assert (= (and d!887812 (not c!543041)) b!3230561))

(declare-fun m!3511561 () Bool)

(assert (=> b!3230561 m!3511561))

(declare-fun m!3511563 () Bool)

(assert (=> b!3230561 m!3511563))

(assert (=> d!886922 d!887812))

(declare-fun d!887814 () Bool)

(declare-fun c!543042 () Bool)

(assert (=> d!887814 (= c!543042 ((_ is Nil!36361) (printList!1405 thiss!18206 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))))

(declare-fun e!2014854 () (InoxSet C!20236))

(assert (=> d!887814 (= (content!4918 (printList!1405 thiss!18206 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363)))) e!2014854)))

(declare-fun b!3230562 () Bool)

(assert (=> b!3230562 (= e!2014854 ((as const (Array C!20236 Bool)) false))))

(declare-fun b!3230563 () Bool)

(assert (=> b!3230563 (= e!2014854 ((_ map or) (store ((as const (Array C!20236 Bool)) false) (h!41781 (printList!1405 thiss!18206 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363)))) true) (content!4918 (t!241330 (printList!1405 thiss!18206 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))))))

(assert (= (and d!887814 c!543042) b!3230562))

(assert (= (and d!887814 (not c!543042)) b!3230563))

(declare-fun m!3511565 () Bool)

(assert (=> b!3230563 m!3511565))

(declare-fun m!3511567 () Bool)

(assert (=> b!3230563 m!3511567))

(assert (=> d!886922 d!887814))

(declare-fun d!887816 () Bool)

(declare-fun lt!1096076 () Bool)

(assert (=> d!887816 (= lt!1096076 (isEmpty!20453 (list!12978 (_1!21028 lt!1095332))))))

(assert (=> d!887816 (= lt!1096076 (isEmpty!20454 (c!542434 (_1!21028 lt!1095332))))))

(assert (=> d!887816 (= (isEmpty!20446 (_1!21028 lt!1095332)) lt!1096076)))

(declare-fun bs!543316 () Bool)

(assert (= bs!543316 d!887816))

(assert (=> bs!543316 m!3508203))

(assert (=> bs!543316 m!3508203))

(declare-fun m!3511569 () Bool)

(assert (=> bs!543316 m!3511569))

(declare-fun m!3511571 () Bool)

(assert (=> bs!543316 m!3511571))

(assert (=> b!3228799 d!887816))

(declare-fun d!887818 () Bool)

(declare-fun lt!1096077 () Int)

(assert (=> d!887818 (= lt!1096077 (size!27433 (list!12978 lt!1095068)))))

(assert (=> d!887818 (= lt!1096077 (size!27434 (c!542434 lt!1095068)))))

(assert (=> d!887818 (= (size!27429 lt!1095068) lt!1096077)))

(declare-fun bs!543317 () Bool)

(assert (= bs!543317 d!887818))

(assert (=> bs!543317 m!3507355))

(assert (=> bs!543317 m!3507355))

(declare-fun m!3511573 () Bool)

(assert (=> bs!543317 m!3511573))

(declare-fun m!3511575 () Bool)

(assert (=> bs!543317 m!3511575))

(assert (=> b!3228785 d!887818))

(declare-fun d!887820 () Bool)

(declare-fun c!543043 () Bool)

(assert (=> d!887820 (= c!543043 ((_ is Nil!36361) (t!241330 (list!12975 (charsOf!3282 separatorToken!241)))))))

(declare-fun e!2014855 () (InoxSet C!20236))

(assert (=> d!887820 (= (content!4918 (t!241330 (list!12975 (charsOf!3282 separatorToken!241)))) e!2014855)))

(declare-fun b!3230564 () Bool)

(assert (=> b!3230564 (= e!2014855 ((as const (Array C!20236 Bool)) false))))

(declare-fun b!3230565 () Bool)

(assert (=> b!3230565 (= e!2014855 ((_ map or) (store ((as const (Array C!20236 Bool)) false) (h!41781 (t!241330 (list!12975 (charsOf!3282 separatorToken!241)))) true) (content!4918 (t!241330 (t!241330 (list!12975 (charsOf!3282 separatorToken!241)))))))))

(assert (= (and d!887820 c!543043) b!3230564))

(assert (= (and d!887820 (not c!543043)) b!3230565))

(declare-fun m!3511577 () Bool)

(assert (=> b!3230565 m!3511577))

(declare-fun m!3511579 () Bool)

(assert (=> b!3230565 m!3511579))

(assert (=> b!3229050 d!887820))

(declare-fun d!887822 () Bool)

(assert (=> d!887822 (= (isEmpty!20452 (list!12975 (_2!21028 lt!1095182))) ((_ is Nil!36361) (list!12975 (_2!21028 lt!1095182))))))

(assert (=> d!886946 d!887822))

(declare-fun d!887824 () Bool)

(assert (=> d!887824 (= (list!12975 (_2!21028 lt!1095182)) (list!12979 (c!542433 (_2!21028 lt!1095182))))))

(declare-fun bs!543318 () Bool)

(assert (= bs!543318 d!887824))

(declare-fun m!3511581 () Bool)

(assert (=> bs!543318 m!3511581))

(assert (=> d!886946 d!887824))

(declare-fun d!887826 () Bool)

(declare-fun lt!1096078 () Bool)

(assert (=> d!887826 (= lt!1096078 (isEmpty!20452 (list!12979 (c!542433 (_2!21028 lt!1095182)))))))

(assert (=> d!887826 (= lt!1096078 (= (size!27432 (c!542433 (_2!21028 lt!1095182))) 0))))

(assert (=> d!887826 (= (isEmpty!20456 (c!542433 (_2!21028 lt!1095182))) lt!1096078)))

(declare-fun bs!543319 () Bool)

(assert (= bs!543319 d!887826))

(assert (=> bs!543319 m!3511581))

(assert (=> bs!543319 m!3511581))

(declare-fun m!3511583 () Bool)

(assert (=> bs!543319 m!3511583))

(declare-fun m!3511585 () Bool)

(assert (=> bs!543319 m!3511585))

(assert (=> d!886946 d!887826))

(declare-fun b!3230566 () Bool)

(declare-fun e!2014857 () List!36485)

(assert (=> b!3230566 (= e!2014857 (list!12979 (right!28644 (c!542433 (charsOf!3282 separatorToken!241)))))))

(declare-fun b!3230567 () Bool)

(assert (=> b!3230567 (= e!2014857 (Cons!36361 (h!41781 (list!12979 (left!28314 (c!542433 (charsOf!3282 separatorToken!241))))) (++!8756 (t!241330 (list!12979 (left!28314 (c!542433 (charsOf!3282 separatorToken!241))))) (list!12979 (right!28644 (c!542433 (charsOf!3282 separatorToken!241)))))))))

(declare-fun b!3230569 () Bool)

(declare-fun e!2014856 () Bool)

(declare-fun lt!1096079 () List!36485)

(assert (=> b!3230569 (= e!2014856 (or (not (= (list!12979 (right!28644 (c!542433 (charsOf!3282 separatorToken!241)))) Nil!36361)) (= lt!1096079 (list!12979 (left!28314 (c!542433 (charsOf!3282 separatorToken!241)))))))))

(declare-fun b!3230568 () Bool)

(declare-fun res!1315568 () Bool)

(assert (=> b!3230568 (=> (not res!1315568) (not e!2014856))))

(assert (=> b!3230568 (= res!1315568 (= (size!27430 lt!1096079) (+ (size!27430 (list!12979 (left!28314 (c!542433 (charsOf!3282 separatorToken!241))))) (size!27430 (list!12979 (right!28644 (c!542433 (charsOf!3282 separatorToken!241))))))))))

(declare-fun d!887828 () Bool)

(assert (=> d!887828 e!2014856))

(declare-fun res!1315569 () Bool)

(assert (=> d!887828 (=> (not res!1315569) (not e!2014856))))

(assert (=> d!887828 (= res!1315569 (= (content!4918 lt!1096079) ((_ map or) (content!4918 (list!12979 (left!28314 (c!542433 (charsOf!3282 separatorToken!241))))) (content!4918 (list!12979 (right!28644 (c!542433 (charsOf!3282 separatorToken!241))))))))))

(assert (=> d!887828 (= lt!1096079 e!2014857)))

(declare-fun c!543044 () Bool)

(assert (=> d!887828 (= c!543044 ((_ is Nil!36361) (list!12979 (left!28314 (c!542433 (charsOf!3282 separatorToken!241))))))))

(assert (=> d!887828 (= (++!8756 (list!12979 (left!28314 (c!542433 (charsOf!3282 separatorToken!241)))) (list!12979 (right!28644 (c!542433 (charsOf!3282 separatorToken!241))))) lt!1096079)))

(assert (= (and d!887828 c!543044) b!3230566))

(assert (= (and d!887828 (not c!543044)) b!3230567))

(assert (= (and d!887828 res!1315569) b!3230568))

(assert (= (and b!3230568 res!1315568) b!3230569))

(assert (=> b!3230567 m!3508617))

(declare-fun m!3511587 () Bool)

(assert (=> b!3230567 m!3511587))

(declare-fun m!3511589 () Bool)

(assert (=> b!3230568 m!3511589))

(assert (=> b!3230568 m!3508615))

(declare-fun m!3511591 () Bool)

(assert (=> b!3230568 m!3511591))

(assert (=> b!3230568 m!3508617))

(declare-fun m!3511593 () Bool)

(assert (=> b!3230568 m!3511593))

(declare-fun m!3511595 () Bool)

(assert (=> d!887828 m!3511595))

(assert (=> d!887828 m!3508615))

(declare-fun m!3511597 () Bool)

(assert (=> d!887828 m!3511597))

(assert (=> d!887828 m!3508617))

(declare-fun m!3511599 () Bool)

(assert (=> d!887828 m!3511599))

(assert (=> b!3228931 d!887828))

(declare-fun b!3230573 () Bool)

(declare-fun e!2014859 () List!36485)

(assert (=> b!3230573 (= e!2014859 (++!8756 (list!12979 (left!28314 (left!28314 (c!542433 (charsOf!3282 separatorToken!241))))) (list!12979 (right!28644 (left!28314 (c!542433 (charsOf!3282 separatorToken!241)))))))))

(declare-fun b!3230572 () Bool)

(assert (=> b!3230572 (= e!2014859 (list!12981 (xs!14025 (left!28314 (c!542433 (charsOf!3282 separatorToken!241))))))))

(declare-fun b!3230571 () Bool)

(declare-fun e!2014858 () List!36485)

(assert (=> b!3230571 (= e!2014858 e!2014859)))

(declare-fun c!543046 () Bool)

(assert (=> b!3230571 (= c!543046 ((_ is Leaf!17151) (left!28314 (c!542433 (charsOf!3282 separatorToken!241)))))))

(declare-fun d!887830 () Bool)

(declare-fun c!543045 () Bool)

(assert (=> d!887830 (= c!543045 ((_ is Empty!10907) (left!28314 (c!542433 (charsOf!3282 separatorToken!241)))))))

(assert (=> d!887830 (= (list!12979 (left!28314 (c!542433 (charsOf!3282 separatorToken!241)))) e!2014858)))

(declare-fun b!3230570 () Bool)

(assert (=> b!3230570 (= e!2014858 Nil!36361)))

(assert (= (and d!887830 c!543045) b!3230570))

(assert (= (and d!887830 (not c!543045)) b!3230571))

(assert (= (and b!3230571 c!543046) b!3230572))

(assert (= (and b!3230571 (not c!543046)) b!3230573))

(declare-fun m!3511601 () Bool)

(assert (=> b!3230573 m!3511601))

(declare-fun m!3511603 () Bool)

(assert (=> b!3230573 m!3511603))

(assert (=> b!3230573 m!3511601))

(assert (=> b!3230573 m!3511603))

(declare-fun m!3511605 () Bool)

(assert (=> b!3230573 m!3511605))

(declare-fun m!3511607 () Bool)

(assert (=> b!3230572 m!3511607))

(assert (=> b!3228931 d!887830))

(declare-fun b!3230577 () Bool)

(declare-fun e!2014861 () List!36485)

(assert (=> b!3230577 (= e!2014861 (++!8756 (list!12979 (left!28314 (right!28644 (c!542433 (charsOf!3282 separatorToken!241))))) (list!12979 (right!28644 (right!28644 (c!542433 (charsOf!3282 separatorToken!241)))))))))

(declare-fun b!3230576 () Bool)

(assert (=> b!3230576 (= e!2014861 (list!12981 (xs!14025 (right!28644 (c!542433 (charsOf!3282 separatorToken!241))))))))

(declare-fun b!3230575 () Bool)

(declare-fun e!2014860 () List!36485)

(assert (=> b!3230575 (= e!2014860 e!2014861)))

(declare-fun c!543048 () Bool)

(assert (=> b!3230575 (= c!543048 ((_ is Leaf!17151) (right!28644 (c!542433 (charsOf!3282 separatorToken!241)))))))

(declare-fun d!887832 () Bool)

(declare-fun c!543047 () Bool)

(assert (=> d!887832 (= c!543047 ((_ is Empty!10907) (right!28644 (c!542433 (charsOf!3282 separatorToken!241)))))))

(assert (=> d!887832 (= (list!12979 (right!28644 (c!542433 (charsOf!3282 separatorToken!241)))) e!2014860)))

(declare-fun b!3230574 () Bool)

(assert (=> b!3230574 (= e!2014860 Nil!36361)))

(assert (= (and d!887832 c!543047) b!3230574))

(assert (= (and d!887832 (not c!543047)) b!3230575))

(assert (= (and b!3230575 c!543048) b!3230576))

(assert (= (and b!3230575 (not c!543048)) b!3230577))

(declare-fun m!3511609 () Bool)

(assert (=> b!3230577 m!3511609))

(declare-fun m!3511611 () Bool)

(assert (=> b!3230577 m!3511611))

(assert (=> b!3230577 m!3511609))

(assert (=> b!3230577 m!3511611))

(declare-fun m!3511613 () Bool)

(assert (=> b!3230577 m!3511613))

(declare-fun m!3511615 () Bool)

(assert (=> b!3230576 m!3511615))

(assert (=> b!3228931 d!887832))

(declare-fun d!887834 () Bool)

(assert (=> d!887834 (= (list!12978 lt!1095207) (list!12980 (c!542434 lt!1095207)))))

(declare-fun bs!543320 () Bool)

(assert (= bs!543320 d!887834))

(declare-fun m!3511617 () Bool)

(assert (=> bs!543320 m!3511617))

(assert (=> d!886568 d!887834))

(declare-fun d!887836 () Bool)

(declare-fun e!2014866 () Bool)

(assert (=> d!887836 e!2014866))

(declare-fun res!1315575 () Bool)

(assert (=> d!887836 (=> (not res!1315575) (not e!2014866))))

(declare-fun res!1315574 () BalanceConc!21430)

(assert (=> d!887836 (= res!1315575 (= (list!12978 res!1315574) (Cons!36363 (h!41783 tokens!494) Nil!36363)))))

(declare-fun e!2014867 () Bool)

(declare-fun inv!49263 (BalanceConc!21430) Bool)

(assert (=> d!887836 (and (inv!49263 res!1315574) e!2014867)))

(assert (=> d!887836 (= (choose!18829 (h!41783 tokens!494)) res!1315574)))

(declare-fun b!3230582 () Bool)

(declare-fun tp!1017621 () Bool)

(declare-fun inv!49264 (Conc!10908) Bool)

(assert (=> b!3230582 (= e!2014867 (and (inv!49264 (c!542434 res!1315574)) tp!1017621))))

(declare-fun b!3230583 () Bool)

(assert (=> b!3230583 (= e!2014866 (isBalanced!3244 (c!542434 res!1315574)))))

(assert (= d!887836 b!3230582))

(assert (= (and d!887836 res!1315575) b!3230583))

(declare-fun m!3511619 () Bool)

(assert (=> d!887836 m!3511619))

(declare-fun m!3511621 () Bool)

(assert (=> d!887836 m!3511621))

(declare-fun m!3511623 () Bool)

(assert (=> b!3230582 m!3511623))

(declare-fun m!3511625 () Bool)

(assert (=> b!3230583 m!3511625))

(assert (=> d!886568 d!887836))

(declare-fun b!3230587 () Bool)

(declare-fun e!2014869 () List!36485)

(assert (=> b!3230587 (= e!2014869 (++!8756 (list!12979 (left!28314 (c!542433 lt!1095177))) (list!12979 (right!28644 (c!542433 lt!1095177)))))))

(declare-fun b!3230586 () Bool)

(assert (=> b!3230586 (= e!2014869 (list!12981 (xs!14025 (c!542433 lt!1095177))))))

(declare-fun b!3230585 () Bool)

(declare-fun e!2014868 () List!36485)

(assert (=> b!3230585 (= e!2014868 e!2014869)))

(declare-fun c!543050 () Bool)

(assert (=> b!3230585 (= c!543050 ((_ is Leaf!17151) (c!542433 lt!1095177)))))

(declare-fun d!887838 () Bool)

(declare-fun c!543049 () Bool)

(assert (=> d!887838 (= c!543049 ((_ is Empty!10907) (c!542433 lt!1095177)))))

(assert (=> d!887838 (= (list!12979 (c!542433 lt!1095177)) e!2014868)))

(declare-fun b!3230584 () Bool)

(assert (=> b!3230584 (= e!2014868 Nil!36361)))

(assert (= (and d!887838 c!543049) b!3230584))

(assert (= (and d!887838 (not c!543049)) b!3230585))

(assert (= (and b!3230585 c!543050) b!3230586))

(assert (= (and b!3230585 (not c!543050)) b!3230587))

(declare-fun m!3511627 () Bool)

(assert (=> b!3230587 m!3511627))

(declare-fun m!3511629 () Bool)

(assert (=> b!3230587 m!3511629))

(assert (=> b!3230587 m!3511627))

(assert (=> b!3230587 m!3511629))

(declare-fun m!3511631 () Bool)

(assert (=> b!3230587 m!3511631))

(declare-fun m!3511633 () Bool)

(assert (=> b!3230586 m!3511633))

(assert (=> d!886778 d!887838))

(declare-fun b!3230588 () Bool)

(declare-fun e!2014871 () List!36485)

(assert (=> b!3230588 (= e!2014871 (printList!1405 thiss!18206 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))

(declare-fun b!3230589 () Bool)

(assert (=> b!3230589 (= e!2014871 (Cons!36361 (h!41781 (t!241330 (list!12975 (charsOf!3282 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))) (++!8756 (t!241330 (t!241330 (list!12975 (charsOf!3282 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))) (printList!1405 thiss!18206 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))))

(declare-fun b!3230591 () Bool)

(declare-fun e!2014870 () Bool)

(declare-fun lt!1096080 () List!36485)

(assert (=> b!3230591 (= e!2014870 (or (not (= (printList!1405 thiss!18206 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363))) Nil!36361)) (= lt!1096080 (t!241330 (list!12975 (charsOf!3282 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))))))

(declare-fun b!3230590 () Bool)

(declare-fun res!1315576 () Bool)

(assert (=> b!3230590 (=> (not res!1315576) (not e!2014870))))

(assert (=> b!3230590 (= res!1315576 (= (size!27430 lt!1096080) (+ (size!27430 (t!241330 (list!12975 (charsOf!3282 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))) (size!27430 (printList!1405 thiss!18206 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))))))

(declare-fun d!887840 () Bool)

(assert (=> d!887840 e!2014870))

(declare-fun res!1315577 () Bool)

(assert (=> d!887840 (=> (not res!1315577) (not e!2014870))))

(assert (=> d!887840 (= res!1315577 (= (content!4918 lt!1096080) ((_ map or) (content!4918 (t!241330 (list!12975 (charsOf!3282 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))) (content!4918 (printList!1405 thiss!18206 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))))))

(assert (=> d!887840 (= lt!1096080 e!2014871)))

(declare-fun c!543051 () Bool)

(assert (=> d!887840 (= c!543051 ((_ is Nil!36361) (t!241330 (list!12975 (charsOf!3282 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))))))

(assert (=> d!887840 (= (++!8756 (t!241330 (list!12975 (charsOf!3282 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))) (printList!1405 thiss!18206 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363)))) lt!1096080)))

(assert (= (and d!887840 c!543051) b!3230588))

(assert (= (and d!887840 (not c!543051)) b!3230589))

(assert (= (and d!887840 res!1315577) b!3230590))

(assert (= (and b!3230590 res!1315576) b!3230591))

(assert (=> b!3230589 m!3507293))

(declare-fun m!3511635 () Bool)

(assert (=> b!3230589 m!3511635))

(declare-fun m!3511637 () Bool)

(assert (=> b!3230590 m!3511637))

(declare-fun m!3511639 () Bool)

(assert (=> b!3230590 m!3511639))

(assert (=> b!3230590 m!3507293))

(assert (=> b!3230590 m!3508753))

(declare-fun m!3511641 () Bool)

(assert (=> d!887840 m!3511641))

(assert (=> d!887840 m!3511563))

(assert (=> d!887840 m!3507293))

(assert (=> d!887840 m!3508759))

(assert (=> b!3229035 d!887840))

(declare-fun b!3230595 () Bool)

(declare-fun e!2014873 () List!36485)

(assert (=> b!3230595 (= e!2014873 (++!8756 (list!12979 (left!28314 (c!542433 lt!1095097))) (list!12979 (right!28644 (c!542433 lt!1095097)))))))

(declare-fun b!3230594 () Bool)

(assert (=> b!3230594 (= e!2014873 (list!12981 (xs!14025 (c!542433 lt!1095097))))))

(declare-fun b!3230593 () Bool)

(declare-fun e!2014872 () List!36485)

(assert (=> b!3230593 (= e!2014872 e!2014873)))

(declare-fun c!543053 () Bool)

(assert (=> b!3230593 (= c!543053 ((_ is Leaf!17151) (c!542433 lt!1095097)))))

(declare-fun d!887842 () Bool)

(declare-fun c!543052 () Bool)

(assert (=> d!887842 (= c!543052 ((_ is Empty!10907) (c!542433 lt!1095097)))))

(assert (=> d!887842 (= (list!12979 (c!542433 lt!1095097)) e!2014872)))

(declare-fun b!3230592 () Bool)

(assert (=> b!3230592 (= e!2014872 Nil!36361)))

(assert (= (and d!887842 c!543052) b!3230592))

(assert (= (and d!887842 (not c!543052)) b!3230593))

(assert (= (and b!3230593 c!543053) b!3230594))

(assert (= (and b!3230593 (not c!543053)) b!3230595))

(declare-fun m!3511643 () Bool)

(assert (=> b!3230595 m!3511643))

(declare-fun m!3511645 () Bool)

(assert (=> b!3230595 m!3511645))

(assert (=> b!3230595 m!3511643))

(assert (=> b!3230595 m!3511645))

(declare-fun m!3511647 () Bool)

(assert (=> b!3230595 m!3511647))

(declare-fun m!3511649 () Bool)

(assert (=> b!3230594 m!3511649))

(assert (=> d!886696 d!887842))

(declare-fun d!887844 () Bool)

(declare-fun c!543054 () Bool)

(assert (=> d!887844 (= c!543054 ((_ is Node!10907) (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (value!170541 (h!41783 (t!241332 tokens!494)))))))))

(declare-fun e!2014874 () Bool)

(assert (=> d!887844 (= (inv!49253 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (value!170541 (h!41783 (t!241332 tokens!494)))))) e!2014874)))

(declare-fun b!3230596 () Bool)

(assert (=> b!3230596 (= e!2014874 (inv!49255 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (value!170541 (h!41783 (t!241332 tokens!494)))))))))

(declare-fun b!3230597 () Bool)

(declare-fun e!2014875 () Bool)

(assert (=> b!3230597 (= e!2014874 e!2014875)))

(declare-fun res!1315578 () Bool)

(assert (=> b!3230597 (= res!1315578 (not ((_ is Leaf!17151) (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (value!170541 (h!41783 (t!241332 tokens!494))))))))))

(assert (=> b!3230597 (=> res!1315578 e!2014875)))

(declare-fun b!3230598 () Bool)

(assert (=> b!3230598 (= e!2014875 (inv!49256 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (value!170541 (h!41783 (t!241332 tokens!494)))))))))

(assert (= (and d!887844 c!543054) b!3230596))

(assert (= (and d!887844 (not c!543054)) b!3230597))

(assert (= (and b!3230597 (not res!1315578)) b!3230598))

(declare-fun m!3511651 () Bool)

(assert (=> b!3230596 m!3511651))

(declare-fun m!3511653 () Bool)

(assert (=> b!3230598 m!3511653))

(assert (=> b!3228834 d!887844))

(declare-fun d!887846 () Bool)

(assert (=> d!887846 (= (list!12975 lt!1095486) (list!12979 (c!542433 lt!1095486)))))

(declare-fun bs!543321 () Bool)

(assert (= bs!543321 d!887846))

(declare-fun m!3511655 () Bool)

(assert (=> bs!543321 m!3511655))

(assert (=> b!3228925 d!887846))

(declare-fun b!3230607 () Bool)

(declare-fun e!2014881 () List!36487)

(assert (=> b!3230607 (= e!2014881 lt!1095497)))

(declare-fun d!887848 () Bool)

(declare-fun e!2014880 () Bool)

(assert (=> d!887848 e!2014880))

(declare-fun res!1315584 () Bool)

(assert (=> d!887848 (=> (not res!1315584) (not e!2014880))))

(declare-fun lt!1096083 () List!36487)

(assert (=> d!887848 (= res!1315584 (= (content!4920 lt!1096083) ((_ map or) (content!4920 lt!1095493) (content!4920 lt!1095497))))))

(assert (=> d!887848 (= lt!1096083 e!2014881)))

(declare-fun c!543057 () Bool)

(assert (=> d!887848 (= c!543057 ((_ is Nil!36363) lt!1095493))))

(assert (=> d!887848 (= (++!8760 lt!1095493 lt!1095497) lt!1096083)))

(declare-fun b!3230608 () Bool)

(assert (=> b!3230608 (= e!2014881 (Cons!36363 (h!41783 lt!1095493) (++!8760 (t!241332 lt!1095493) lt!1095497)))))

(declare-fun b!3230610 () Bool)

(assert (=> b!3230610 (= e!2014880 (or (not (= lt!1095497 Nil!36363)) (= lt!1096083 lt!1095493)))))

(declare-fun b!3230609 () Bool)

(declare-fun res!1315583 () Bool)

(assert (=> b!3230609 (=> (not res!1315583) (not e!2014880))))

(assert (=> b!3230609 (= res!1315583 (= (size!27433 lt!1096083) (+ (size!27433 lt!1095493) (size!27433 lt!1095497))))))

(assert (= (and d!887848 c!543057) b!3230607))

(assert (= (and d!887848 (not c!543057)) b!3230608))

(assert (= (and d!887848 res!1315584) b!3230609))

(assert (= (and b!3230609 res!1315583) b!3230610))

(declare-fun m!3511657 () Bool)

(assert (=> d!887848 m!3511657))

(declare-fun m!3511659 () Bool)

(assert (=> d!887848 m!3511659))

(declare-fun m!3511661 () Bool)

(assert (=> d!887848 m!3511661))

(declare-fun m!3511663 () Bool)

(assert (=> b!3230608 m!3511663))

(declare-fun m!3511665 () Bool)

(assert (=> b!3230609 m!3511665))

(declare-fun m!3511667 () Bool)

(assert (=> b!3230609 m!3511667))

(declare-fun m!3511669 () Bool)

(assert (=> b!3230609 m!3511669))

(assert (=> b!3228925 d!887848))

(assert (=> b!3228925 d!886700))

(declare-fun d!887850 () Bool)

(assert (=> d!887850 (= (++!8760 (++!8760 lt!1095493 lt!1095497) lt!1095496) (++!8760 lt!1095493 (++!8760 lt!1095497 lt!1095496)))))

(declare-fun lt!1096086 () Unit!50946)

(declare-fun choose!18846 (List!36487 List!36487 List!36487) Unit!50946)

(assert (=> d!887850 (= lt!1096086 (choose!18846 lt!1095493 lt!1095497 lt!1095496))))

(assert (=> d!887850 (= (lemmaConcatAssociativity!1790 lt!1095493 lt!1095497 lt!1095496) lt!1096086)))

(declare-fun bs!543322 () Bool)

(assert (= bs!543322 d!887850))

(assert (=> bs!543322 m!3508539))

(assert (=> bs!543322 m!3508541))

(declare-fun m!3511671 () Bool)

(assert (=> bs!543322 m!3511671))

(assert (=> bs!543322 m!3508569))

(assert (=> bs!543322 m!3508571))

(assert (=> bs!543322 m!3508539))

(assert (=> bs!543322 m!3508569))

(assert (=> b!3228925 d!887850))

(declare-fun b!3230611 () Bool)

(declare-fun res!1315586 () Bool)

(declare-fun e!2014882 () Bool)

(assert (=> b!3230611 (=> (not res!1315586) (not e!2014882))))

(assert (=> b!3230611 (= res!1315586 (isBalanced!3247 (++!8761 (c!542433 (BalanceConc!21429 Empty!10907)) (c!542433 (charsOf!3282 (_1!21033 (v!35826 lt!1095485)))))))))

(declare-fun b!3230612 () Bool)

(declare-fun res!1315588 () Bool)

(assert (=> b!3230612 (=> (not res!1315588) (not e!2014882))))

(assert (=> b!3230612 (= res!1315588 (<= (height!1580 (++!8761 (c!542433 (BalanceConc!21429 Empty!10907)) (c!542433 (charsOf!3282 (_1!21033 (v!35826 lt!1095485)))))) (+ (max!0 (height!1580 (c!542433 (BalanceConc!21429 Empty!10907))) (height!1580 (c!542433 (charsOf!3282 (_1!21033 (v!35826 lt!1095485)))))) 1)))))

(declare-fun b!3230613 () Bool)

(declare-fun res!1315585 () Bool)

(assert (=> b!3230613 (=> (not res!1315585) (not e!2014882))))

(assert (=> b!3230613 (= res!1315585 (>= (height!1580 (++!8761 (c!542433 (BalanceConc!21429 Empty!10907)) (c!542433 (charsOf!3282 (_1!21033 (v!35826 lt!1095485)))))) (max!0 (height!1580 (c!542433 (BalanceConc!21429 Empty!10907))) (height!1580 (c!542433 (charsOf!3282 (_1!21033 (v!35826 lt!1095485))))))))))

(declare-fun d!887852 () Bool)

(assert (=> d!887852 e!2014882))

(declare-fun res!1315587 () Bool)

(assert (=> d!887852 (=> (not res!1315587) (not e!2014882))))

(assert (=> d!887852 (= res!1315587 (appendAssocInst!745 (c!542433 (BalanceConc!21429 Empty!10907)) (c!542433 (charsOf!3282 (_1!21033 (v!35826 lt!1095485))))))))

(declare-fun lt!1096087 () BalanceConc!21428)

(assert (=> d!887852 (= lt!1096087 (BalanceConc!21429 (++!8761 (c!542433 (BalanceConc!21429 Empty!10907)) (c!542433 (charsOf!3282 (_1!21033 (v!35826 lt!1095485)))))))))

(assert (=> d!887852 (= (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (_1!21033 (v!35826 lt!1095485)))) lt!1096087)))

(declare-fun b!3230614 () Bool)

(assert (=> b!3230614 (= e!2014882 (= (list!12975 lt!1096087) (++!8756 (list!12975 (BalanceConc!21429 Empty!10907)) (list!12975 (charsOf!3282 (_1!21033 (v!35826 lt!1095485)))))))))

(assert (= (and d!887852 res!1315587) b!3230611))

(assert (= (and b!3230611 res!1315586) b!3230612))

(assert (= (and b!3230612 res!1315588) b!3230613))

(assert (= (and b!3230613 res!1315585) b!3230614))

(declare-fun m!3511673 () Bool)

(assert (=> b!3230613 m!3511673))

(declare-fun m!3511675 () Bool)

(assert (=> b!3230613 m!3511675))

(assert (=> b!3230613 m!3511673))

(declare-fun m!3511677 () Bool)

(assert (=> b!3230613 m!3511677))

(assert (=> b!3230613 m!3508677))

(assert (=> b!3230613 m!3508677))

(assert (=> b!3230613 m!3511675))

(declare-fun m!3511679 () Bool)

(assert (=> b!3230613 m!3511679))

(declare-fun m!3511681 () Bool)

(assert (=> d!887852 m!3511681))

(assert (=> d!887852 m!3511673))

(assert (=> b!3230611 m!3511673))

(assert (=> b!3230611 m!3511673))

(declare-fun m!3511683 () Bool)

(assert (=> b!3230611 m!3511683))

(declare-fun m!3511685 () Bool)

(assert (=> b!3230614 m!3511685))

(assert (=> b!3230614 m!3507199))

(assert (=> b!3230614 m!3508543))

(assert (=> b!3230614 m!3508563))

(assert (=> b!3230614 m!3507199))

(assert (=> b!3230614 m!3508563))

(assert (=> b!3230614 m!3508573))

(assert (=> b!3230612 m!3511673))

(assert (=> b!3230612 m!3511675))

(assert (=> b!3230612 m!3511673))

(assert (=> b!3230612 m!3511677))

(assert (=> b!3230612 m!3508677))

(assert (=> b!3230612 m!3508677))

(assert (=> b!3230612 m!3511675))

(assert (=> b!3230612 m!3511679))

(assert (=> b!3228925 d!887852))

(declare-fun b!3230615 () Bool)

(declare-fun e!2014885 () tuple2!35788)

(assert (=> b!3230615 (= e!2014885 (tuple2!35789 (BalanceConc!21431 Empty!10908) (_2!21033 (v!35826 lt!1095485))))))

(declare-fun b!3230616 () Bool)

(declare-fun e!2014886 () tuple2!35788)

(declare-fun lt!1096104 () BalanceConc!21428)

(assert (=> b!3230616 (= e!2014886 (tuple2!35789 (BalanceConc!21431 Empty!10908) lt!1096104))))

(declare-fun d!887854 () Bool)

(declare-fun e!2014884 () Bool)

(assert (=> d!887854 e!2014884))

(declare-fun res!1315589 () Bool)

(assert (=> d!887854 (=> (not res!1315589) (not e!2014884))))

(declare-fun lt!1096102 () tuple2!35788)

(assert (=> d!887854 (= res!1315589 (= (list!12978 (_1!21028 lt!1096102)) (list!12978 (_1!21028 (lexRec!694 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073))))))))

(declare-fun e!2014883 () tuple2!35788)

(assert (=> d!887854 (= lt!1096102 e!2014883)))

(declare-fun c!543059 () Bool)

(declare-fun lt!1096100 () Option!7217)

(assert (=> d!887854 (= c!543059 ((_ is Some!7216) lt!1096100))))

(assert (=> d!887854 (= lt!1096100 (maxPrefixZipperSequenceV2!481 thiss!18206 rules!2135 (_2!21033 (v!35826 lt!1095485)) (seqFromList!3595 lt!1095073)))))

(declare-fun lt!1096098 () Unit!50946)

(declare-fun lt!1096115 () Unit!50946)

(assert (=> d!887854 (= lt!1096098 lt!1096115)))

(declare-fun lt!1096095 () List!36485)

(declare-fun lt!1096091 () List!36485)

(assert (=> d!887854 (isSuffix!856 lt!1096095 (++!8756 lt!1096091 lt!1096095))))

(assert (=> d!887854 (= lt!1096115 (lemmaConcatTwoListThenFSndIsSuffix!541 lt!1096091 lt!1096095))))

(assert (=> d!887854 (= lt!1096095 (list!12975 (_2!21033 (v!35826 lt!1095485))))))

(assert (=> d!887854 (= lt!1096091 (list!12975 lt!1095486))))

(assert (=> d!887854 (= (lexTailRecV2!947 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073) lt!1095486 (_2!21033 (v!35826 lt!1095485)) (append!874 (BalanceConc!21431 Empty!10908) (_1!21033 (v!35826 lt!1095485)))) lt!1096102)))

(declare-fun b!3230617 () Bool)

(assert (=> b!3230617 (= e!2014884 (= (list!12975 (_2!21028 lt!1096102)) (list!12975 (_2!21028 (lexRec!694 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073))))))))

(declare-fun b!3230618 () Bool)

(assert (=> b!3230618 (= e!2014883 (tuple2!35789 (append!874 (BalanceConc!21431 Empty!10908) (_1!21033 (v!35826 lt!1095485))) (_2!21033 (v!35826 lt!1095485))))))

(declare-fun lt!1096101 () BalanceConc!21428)

(declare-fun b!3230619 () Bool)

(assert (=> b!3230619 (= e!2014883 (lexTailRecV2!947 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073) lt!1096101 (_2!21033 (v!35826 lt!1096100)) (append!874 (append!874 (BalanceConc!21431 Empty!10908) (_1!21033 (v!35826 lt!1095485))) (_1!21033 (v!35826 lt!1096100)))))))

(declare-fun lt!1096090 () tuple2!35788)

(assert (=> b!3230619 (= lt!1096090 (lexRec!694 thiss!18206 rules!2135 (_2!21033 (v!35826 lt!1096100))))))

(declare-fun lt!1096113 () List!36485)

(assert (=> b!3230619 (= lt!1096113 (list!12975 lt!1095486))))

(declare-fun lt!1096092 () List!36485)

(assert (=> b!3230619 (= lt!1096092 (list!12975 (charsOf!3282 (_1!21033 (v!35826 lt!1096100)))))))

(declare-fun lt!1096088 () List!36485)

(assert (=> b!3230619 (= lt!1096088 (list!12975 (_2!21033 (v!35826 lt!1096100))))))

(declare-fun lt!1096106 () Unit!50946)

(assert (=> b!3230619 (= lt!1096106 (lemmaConcatAssociativity!1789 lt!1096113 lt!1096092 lt!1096088))))

(assert (=> b!3230619 (= (++!8756 (++!8756 lt!1096113 lt!1096092) lt!1096088) (++!8756 lt!1096113 (++!8756 lt!1096092 lt!1096088)))))

(declare-fun lt!1096114 () Unit!50946)

(assert (=> b!3230619 (= lt!1096114 lt!1096106)))

(declare-fun lt!1096097 () Option!7217)

(assert (=> b!3230619 (= lt!1096097 (maxPrefixZipperSequence!1087 thiss!18206 rules!2135 (_2!21033 (v!35826 lt!1095485))))))

(declare-fun c!543060 () Bool)

(assert (=> b!3230619 (= c!543060 ((_ is Some!7216) lt!1096097))))

(assert (=> b!3230619 (= (lexRec!694 thiss!18206 rules!2135 (_2!21033 (v!35826 lt!1095485))) e!2014885)))

(declare-fun lt!1096110 () Unit!50946)

(declare-fun Unit!50956 () Unit!50946)

(assert (=> b!3230619 (= lt!1096110 Unit!50956)))

(declare-fun lt!1096108 () List!36487)

(assert (=> b!3230619 (= lt!1096108 (list!12978 (append!874 (BalanceConc!21431 Empty!10908) (_1!21033 (v!35826 lt!1095485)))))))

(declare-fun lt!1096112 () List!36487)

(assert (=> b!3230619 (= lt!1096112 (Cons!36363 (_1!21033 (v!35826 lt!1096100)) Nil!36363))))

(declare-fun lt!1096111 () List!36487)

(assert (=> b!3230619 (= lt!1096111 (list!12978 (_1!21028 lt!1096090)))))

(declare-fun lt!1096105 () Unit!50946)

(assert (=> b!3230619 (= lt!1096105 (lemmaConcatAssociativity!1790 lt!1096108 lt!1096112 lt!1096111))))

(assert (=> b!3230619 (= (++!8760 (++!8760 lt!1096108 lt!1096112) lt!1096111) (++!8760 lt!1096108 (++!8760 lt!1096112 lt!1096111)))))

(declare-fun lt!1096120 () Unit!50946)

(assert (=> b!3230619 (= lt!1096120 lt!1096105)))

(declare-fun lt!1096107 () List!36485)

(assert (=> b!3230619 (= lt!1096107 (++!8756 (list!12975 lt!1095486) (list!12975 (charsOf!3282 (_1!21033 (v!35826 lt!1096100))))))))

(declare-fun lt!1096121 () List!36485)

(assert (=> b!3230619 (= lt!1096121 (list!12975 (_2!21033 (v!35826 lt!1096100))))))

(declare-fun lt!1096103 () List!36487)

(assert (=> b!3230619 (= lt!1096103 (list!12978 (append!874 (append!874 (BalanceConc!21431 Empty!10908) (_1!21033 (v!35826 lt!1095485))) (_1!21033 (v!35826 lt!1096100)))))))

(declare-fun lt!1096119 () Unit!50946)

(assert (=> b!3230619 (= lt!1096119 (lemmaLexThenLexPrefix!459 thiss!18206 rules!2135 lt!1096107 lt!1096121 lt!1096103 (list!12978 (_1!21028 lt!1096090)) (list!12975 (_2!21028 lt!1096090))))))

(assert (=> b!3230619 (= (lexList!1335 thiss!18206 rules!2135 lt!1096107) (tuple2!35793 lt!1096103 Nil!36361))))

(declare-fun lt!1096093 () Unit!50946)

(assert (=> b!3230619 (= lt!1096093 lt!1096119)))

(assert (=> b!3230619 (= lt!1096104 (++!8757 lt!1095486 (charsOf!3282 (_1!21033 (v!35826 lt!1096100)))))))

(declare-fun lt!1096096 () Option!7217)

(assert (=> b!3230619 (= lt!1096096 (maxPrefixZipperSequence!1087 thiss!18206 rules!2135 lt!1096104))))

(declare-fun c!543058 () Bool)

(assert (=> b!3230619 (= c!543058 ((_ is Some!7216) lt!1096096))))

(assert (=> b!3230619 (= (lexRec!694 thiss!18206 rules!2135 (++!8757 lt!1095486 (charsOf!3282 (_1!21033 (v!35826 lt!1096100))))) e!2014886)))

(declare-fun lt!1096099 () Unit!50946)

(declare-fun Unit!50957 () Unit!50946)

(assert (=> b!3230619 (= lt!1096099 Unit!50957)))

(assert (=> b!3230619 (= lt!1096101 (++!8757 lt!1095486 (charsOf!3282 (_1!21033 (v!35826 lt!1096100)))))))

(declare-fun lt!1096118 () List!36485)

(assert (=> b!3230619 (= lt!1096118 (list!12975 lt!1096101))))

(declare-fun lt!1096109 () List!36485)

(assert (=> b!3230619 (= lt!1096109 (list!12975 (_2!21033 (v!35826 lt!1096100))))))

(declare-fun lt!1096117 () Unit!50946)

(assert (=> b!3230619 (= lt!1096117 (lemmaConcatTwoListThenFSndIsSuffix!541 lt!1096118 lt!1096109))))

(assert (=> b!3230619 (isSuffix!856 lt!1096109 (++!8756 lt!1096118 lt!1096109))))

(declare-fun lt!1096094 () Unit!50946)

(assert (=> b!3230619 (= lt!1096094 lt!1096117)))

(declare-fun b!3230620 () Bool)

(declare-fun lt!1096089 () tuple2!35788)

(assert (=> b!3230620 (= lt!1096089 (lexRec!694 thiss!18206 rules!2135 (_2!21033 (v!35826 lt!1096097))))))

(assert (=> b!3230620 (= e!2014885 (tuple2!35789 (prepend!1182 (_1!21028 lt!1096089) (_1!21033 (v!35826 lt!1096097))) (_2!21028 lt!1096089)))))

(declare-fun lt!1096116 () tuple2!35788)

(declare-fun b!3230621 () Bool)

(assert (=> b!3230621 (= lt!1096116 (lexRec!694 thiss!18206 rules!2135 (_2!21033 (v!35826 lt!1096096))))))

(assert (=> b!3230621 (= e!2014886 (tuple2!35789 (prepend!1182 (_1!21028 lt!1096116) (_1!21033 (v!35826 lt!1096096))) (_2!21028 lt!1096116)))))

(assert (= (and d!887854 c!543059) b!3230619))

(assert (= (and d!887854 (not c!543059)) b!3230618))

(assert (= (and b!3230619 c!543060) b!3230620))

(assert (= (and b!3230619 (not c!543060)) b!3230615))

(assert (= (and b!3230619 c!543058) b!3230621))

(assert (= (and b!3230619 (not c!543058)) b!3230616))

(assert (= (and d!887854 res!1315589) b!3230617))

(declare-fun m!3511687 () Bool)

(assert (=> b!3230617 m!3511687))

(assert (=> b!3230617 m!3507165))

(assert (=> b!3230617 m!3508529))

(assert (=> b!3230617 m!3508531))

(declare-fun m!3511689 () Bool)

(assert (=> b!3230619 m!3511689))

(declare-fun m!3511691 () Bool)

(assert (=> b!3230619 m!3511691))

(declare-fun m!3511693 () Bool)

(assert (=> b!3230619 m!3511693))

(declare-fun m!3511695 () Bool)

(assert (=> b!3230619 m!3511695))

(declare-fun m!3511697 () Bool)

(assert (=> b!3230619 m!3511697))

(declare-fun m!3511699 () Bool)

(assert (=> b!3230619 m!3511699))

(declare-fun m!3511701 () Bool)

(assert (=> b!3230619 m!3511701))

(assert (=> b!3230619 m!3508559))

(declare-fun m!3511703 () Bool)

(assert (=> b!3230619 m!3511703))

(assert (=> b!3230619 m!3508561))

(declare-fun m!3511705 () Bool)

(assert (=> b!3230619 m!3511705))

(declare-fun m!3511707 () Bool)

(assert (=> b!3230619 m!3511707))

(declare-fun m!3511709 () Bool)

(assert (=> b!3230619 m!3511709))

(assert (=> b!3230619 m!3508555))

(declare-fun m!3511711 () Bool)

(assert (=> b!3230619 m!3511711))

(assert (=> b!3230619 m!3507165))

(assert (=> b!3230619 m!3511711))

(declare-fun m!3511713 () Bool)

(assert (=> b!3230619 m!3511713))

(declare-fun m!3511715 () Bool)

(assert (=> b!3230619 m!3511715))

(declare-fun m!3511717 () Bool)

(assert (=> b!3230619 m!3511717))

(assert (=> b!3230619 m!3511699))

(declare-fun m!3511719 () Bool)

(assert (=> b!3230619 m!3511719))

(declare-fun m!3511721 () Bool)

(assert (=> b!3230619 m!3511721))

(assert (=> b!3230619 m!3511695))

(assert (=> b!3230619 m!3511711))

(declare-fun m!3511723 () Bool)

(assert (=> b!3230619 m!3511723))

(assert (=> b!3230619 m!3511707))

(declare-fun m!3511725 () Bool)

(assert (=> b!3230619 m!3511725))

(declare-fun m!3511727 () Bool)

(assert (=> b!3230619 m!3511727))

(assert (=> b!3230619 m!3511699))

(assert (=> b!3230619 m!3508561))

(assert (=> b!3230619 m!3511719))

(declare-fun m!3511729 () Bool)

(assert (=> b!3230619 m!3511729))

(assert (=> b!3230619 m!3508555))

(assert (=> b!3230619 m!3508567))

(assert (=> b!3230619 m!3511721))

(declare-fun m!3511731 () Bool)

(assert (=> b!3230619 m!3511731))

(declare-fun m!3511733 () Bool)

(assert (=> b!3230619 m!3511733))

(assert (=> b!3230619 m!3511701))

(declare-fun m!3511735 () Bool)

(assert (=> b!3230619 m!3511735))

(declare-fun m!3511737 () Bool)

(assert (=> b!3230619 m!3511737))

(declare-fun m!3511739 () Bool)

(assert (=> b!3230619 m!3511739))

(assert (=> b!3230619 m!3511733))

(declare-fun m!3511741 () Bool)

(assert (=> b!3230619 m!3511741))

(declare-fun m!3511743 () Bool)

(assert (=> b!3230619 m!3511743))

(assert (=> b!3230619 m!3511743))

(declare-fun m!3511745 () Bool)

(assert (=> b!3230619 m!3511745))

(declare-fun m!3511747 () Bool)

(assert (=> b!3230619 m!3511747))

(assert (=> b!3230619 m!3511705))

(assert (=> b!3230619 m!3511725))

(declare-fun m!3511749 () Bool)

(assert (=> b!3230621 m!3511749))

(declare-fun m!3511751 () Bool)

(assert (=> b!3230621 m!3511751))

(assert (=> d!887854 m!3507165))

(declare-fun m!3511753 () Bool)

(assert (=> d!887854 m!3511753))

(assert (=> d!887854 m!3507165))

(assert (=> d!887854 m!3508529))

(declare-fun m!3511755 () Bool)

(assert (=> d!887854 m!3511755))

(declare-fun m!3511757 () Bool)

(assert (=> d!887854 m!3511757))

(assert (=> d!887854 m!3508605))

(assert (=> d!887854 m!3511755))

(declare-fun m!3511759 () Bool)

(assert (=> d!887854 m!3511759))

(assert (=> d!887854 m!3508547))

(assert (=> d!887854 m!3508561))

(declare-fun m!3511761 () Bool)

(assert (=> d!887854 m!3511761))

(declare-fun m!3511763 () Bool)

(assert (=> b!3230620 m!3511763))

(declare-fun m!3511765 () Bool)

(assert (=> b!3230620 m!3511765))

(assert (=> b!3228925 d!887854))

(declare-fun b!3230622 () Bool)

(declare-fun e!2014888 () List!36487)

(assert (=> b!3230622 (= e!2014888 (++!8760 lt!1095497 lt!1095496))))

(declare-fun d!887856 () Bool)

(declare-fun e!2014887 () Bool)

(assert (=> d!887856 e!2014887))

(declare-fun res!1315591 () Bool)

(assert (=> d!887856 (=> (not res!1315591) (not e!2014887))))

(declare-fun lt!1096122 () List!36487)

(assert (=> d!887856 (= res!1315591 (= (content!4920 lt!1096122) ((_ map or) (content!4920 lt!1095493) (content!4920 (++!8760 lt!1095497 lt!1095496)))))))

(assert (=> d!887856 (= lt!1096122 e!2014888)))

(declare-fun c!543061 () Bool)

(assert (=> d!887856 (= c!543061 ((_ is Nil!36363) lt!1095493))))

(assert (=> d!887856 (= (++!8760 lt!1095493 (++!8760 lt!1095497 lt!1095496)) lt!1096122)))

(declare-fun b!3230623 () Bool)

(assert (=> b!3230623 (= e!2014888 (Cons!36363 (h!41783 lt!1095493) (++!8760 (t!241332 lt!1095493) (++!8760 lt!1095497 lt!1095496))))))

(declare-fun b!3230625 () Bool)

(assert (=> b!3230625 (= e!2014887 (or (not (= (++!8760 lt!1095497 lt!1095496) Nil!36363)) (= lt!1096122 lt!1095493)))))

(declare-fun b!3230624 () Bool)

(declare-fun res!1315590 () Bool)

(assert (=> b!3230624 (=> (not res!1315590) (not e!2014887))))

(assert (=> b!3230624 (= res!1315590 (= (size!27433 lt!1096122) (+ (size!27433 lt!1095493) (size!27433 (++!8760 lt!1095497 lt!1095496)))))))

(assert (= (and d!887856 c!543061) b!3230622))

(assert (= (and d!887856 (not c!543061)) b!3230623))

(assert (= (and d!887856 res!1315591) b!3230624))

(assert (= (and b!3230624 res!1315590) b!3230625))

(declare-fun m!3511767 () Bool)

(assert (=> d!887856 m!3511767))

(assert (=> d!887856 m!3511659))

(assert (=> d!887856 m!3508539))

(declare-fun m!3511769 () Bool)

(assert (=> d!887856 m!3511769))

(assert (=> b!3230623 m!3508539))

(declare-fun m!3511771 () Bool)

(assert (=> b!3230623 m!3511771))

(declare-fun m!3511773 () Bool)

(assert (=> b!3230624 m!3511773))

(assert (=> b!3230624 m!3511667))

(assert (=> b!3230624 m!3508539))

(declare-fun m!3511775 () Bool)

(assert (=> b!3230624 m!3511775))

(assert (=> b!3228925 d!887856))

(declare-fun d!887858 () Bool)

(declare-fun e!2014889 () Bool)

(assert (=> d!887858 e!2014889))

(declare-fun res!1315592 () Bool)

(assert (=> d!887858 (=> res!1315592 e!2014889)))

(declare-fun lt!1096123 () Bool)

(assert (=> d!887858 (= res!1315592 (not lt!1096123))))

(assert (=> d!887858 (= lt!1096123 (= lt!1095494 (drop!1878 (++!8756 lt!1095503 lt!1095494) (- (size!27430 (++!8756 lt!1095503 lt!1095494)) (size!27430 lt!1095494)))))))

(assert (=> d!887858 (= (isSuffix!856 lt!1095494 (++!8756 lt!1095503 lt!1095494)) lt!1096123)))

(declare-fun b!3230626 () Bool)

(assert (=> b!3230626 (= e!2014889 (>= (size!27430 (++!8756 lt!1095503 lt!1095494)) (size!27430 lt!1095494)))))

(assert (= (and d!887858 (not res!1315592)) b!3230626))

(assert (=> d!887858 m!3508579))

(declare-fun m!3511777 () Bool)

(assert (=> d!887858 m!3511777))

(declare-fun m!3511779 () Bool)

(assert (=> d!887858 m!3511779))

(assert (=> d!887858 m!3508579))

(declare-fun m!3511781 () Bool)

(assert (=> d!887858 m!3511781))

(assert (=> b!3230626 m!3508579))

(assert (=> b!3230626 m!3511777))

(assert (=> b!3230626 m!3511779))

(assert (=> b!3228925 d!887858))

(declare-fun b!3230627 () Bool)

(declare-fun e!2014891 () List!36485)

(assert (=> b!3230627 (= e!2014891 lt!1095473)))

(declare-fun b!3230628 () Bool)

(assert (=> b!3230628 (= e!2014891 (Cons!36361 (h!41781 (++!8756 lt!1095498 lt!1095477)) (++!8756 (t!241330 (++!8756 lt!1095498 lt!1095477)) lt!1095473)))))

(declare-fun e!2014890 () Bool)

(declare-fun lt!1096124 () List!36485)

(declare-fun b!3230630 () Bool)

(assert (=> b!3230630 (= e!2014890 (or (not (= lt!1095473 Nil!36361)) (= lt!1096124 (++!8756 lt!1095498 lt!1095477))))))

(declare-fun b!3230629 () Bool)

(declare-fun res!1315593 () Bool)

(assert (=> b!3230629 (=> (not res!1315593) (not e!2014890))))

(assert (=> b!3230629 (= res!1315593 (= (size!27430 lt!1096124) (+ (size!27430 (++!8756 lt!1095498 lt!1095477)) (size!27430 lt!1095473))))))

(declare-fun d!887860 () Bool)

(assert (=> d!887860 e!2014890))

(declare-fun res!1315594 () Bool)

(assert (=> d!887860 (=> (not res!1315594) (not e!2014890))))

(assert (=> d!887860 (= res!1315594 (= (content!4918 lt!1096124) ((_ map or) (content!4918 (++!8756 lt!1095498 lt!1095477)) (content!4918 lt!1095473))))))

(assert (=> d!887860 (= lt!1096124 e!2014891)))

(declare-fun c!543062 () Bool)

(assert (=> d!887860 (= c!543062 ((_ is Nil!36361) (++!8756 lt!1095498 lt!1095477)))))

(assert (=> d!887860 (= (++!8756 (++!8756 lt!1095498 lt!1095477) lt!1095473) lt!1096124)))

(assert (= (and d!887860 c!543062) b!3230627))

(assert (= (and d!887860 (not c!543062)) b!3230628))

(assert (= (and d!887860 res!1315594) b!3230629))

(assert (= (and b!3230629 res!1315593) b!3230630))

(declare-fun m!3511783 () Bool)

(assert (=> b!3230628 m!3511783))

(declare-fun m!3511785 () Bool)

(assert (=> b!3230629 m!3511785))

(assert (=> b!3230629 m!3508589))

(declare-fun m!3511787 () Bool)

(assert (=> b!3230629 m!3511787))

(declare-fun m!3511789 () Bool)

(assert (=> b!3230629 m!3511789))

(declare-fun m!3511791 () Bool)

(assert (=> d!887860 m!3511791))

(assert (=> d!887860 m!3508589))

(declare-fun m!3511793 () Bool)

(assert (=> d!887860 m!3511793))

(declare-fun m!3511795 () Bool)

(assert (=> d!887860 m!3511795))

(assert (=> b!3228925 d!887860))

(declare-fun d!887862 () Bool)

(assert (=> d!887862 (= (list!12975 (_2!21028 lt!1095475)) (list!12979 (c!542433 (_2!21028 lt!1095475))))))

(declare-fun bs!543323 () Bool)

(assert (= bs!543323 d!887862))

(declare-fun m!3511797 () Bool)

(assert (=> bs!543323 m!3511797))

(assert (=> b!3228925 d!887862))

(declare-fun lt!1096195 () Option!7217)

(declare-fun b!3230729 () Bool)

(declare-fun e!2014951 () Bool)

(assert (=> b!3230729 (= e!2014951 (= (list!12975 (_2!21033 (get!11578 lt!1096195))) (_2!21031 (get!11577 (maxPrefixZipper!490 thiss!18206 rules!2135 (list!12975 (seqFromList!3595 lt!1095073)))))))))

(declare-fun b!3230730 () Bool)

(declare-fun e!2014949 () Option!7217)

(declare-fun lt!1096193 () Option!7217)

(declare-fun lt!1096190 () Option!7217)

(assert (=> b!3230730 (= e!2014949 (ite (and ((_ is None!7216) lt!1096193) ((_ is None!7216) lt!1096190)) None!7216 (ite ((_ is None!7216) lt!1096190) lt!1096193 (ite ((_ is None!7216) lt!1096193) lt!1096190 (ite (>= (size!27425 (_1!21033 (v!35826 lt!1096193))) (size!27425 (_1!21033 (v!35826 lt!1096190)))) lt!1096193 lt!1096190)))))))

(declare-fun call!233352 () Option!7217)

(assert (=> b!3230730 (= lt!1096193 call!233352)))

(assert (=> b!3230730 (= lt!1096190 (maxPrefixZipperSequence!1087 thiss!18206 (t!241331 rules!2135) (seqFromList!3595 lt!1095073)))))

(declare-fun b!3230731 () Bool)

(declare-fun res!1315659 () Bool)

(declare-fun e!2014952 () Bool)

(assert (=> b!3230731 (=> (not res!1315659) (not e!2014952))))

(declare-fun e!2014954 () Bool)

(assert (=> b!3230731 (= res!1315659 e!2014954)))

(declare-fun res!1315657 () Bool)

(assert (=> b!3230731 (=> res!1315657 e!2014954)))

(assert (=> b!3230731 (= res!1315657 (not (isDefined!5592 lt!1096195)))))

(declare-fun b!3230732 () Bool)

(declare-fun e!2014953 () Bool)

(assert (=> b!3230732 (= e!2014952 e!2014953)))

(declare-fun res!1315656 () Bool)

(assert (=> b!3230732 (=> res!1315656 e!2014953)))

(assert (=> b!3230732 (= res!1315656 (not (isDefined!5592 lt!1096195)))))

(declare-fun b!3230733 () Bool)

(assert (=> b!3230733 (= e!2014949 call!233352)))

(declare-fun b!3230734 () Bool)

(assert (=> b!3230734 (= e!2014954 e!2014951)))

(declare-fun res!1315658 () Bool)

(assert (=> b!3230734 (=> (not res!1315658) (not e!2014951))))

(assert (=> b!3230734 (= res!1315658 (= (_1!21033 (get!11578 lt!1096195)) (_1!21031 (get!11577 (maxPrefixZipper!490 thiss!18206 rules!2135 (list!12975 (seqFromList!3595 lt!1095073)))))))))

(declare-fun d!887864 () Bool)

(assert (=> d!887864 e!2014952))

(declare-fun res!1315660 () Bool)

(assert (=> d!887864 (=> (not res!1315660) (not e!2014952))))

(assert (=> d!887864 (= res!1315660 (= (isDefined!5592 lt!1096195) (isDefined!5591 (maxPrefixZipper!490 thiss!18206 rules!2135 (list!12975 (seqFromList!3595 lt!1095073))))))))

(assert (=> d!887864 (= lt!1096195 e!2014949)))

(declare-fun c!543082 () Bool)

(assert (=> d!887864 (= c!543082 (and ((_ is Cons!36362) rules!2135) ((_ is Nil!36362) (t!241331 rules!2135))))))

(declare-fun lt!1096191 () Unit!50946)

(declare-fun lt!1096192 () Unit!50946)

(assert (=> d!887864 (= lt!1096191 lt!1096192)))

(declare-fun lt!1096194 () List!36485)

(declare-fun lt!1096189 () List!36485)

(assert (=> d!887864 (isPrefix!2789 lt!1096194 lt!1096189)))

(assert (=> d!887864 (= lt!1096192 (lemmaIsPrefixRefl!1748 lt!1096194 lt!1096189))))

(assert (=> d!887864 (= lt!1096189 (list!12975 (seqFromList!3595 lt!1095073)))))

(assert (=> d!887864 (= lt!1096194 (list!12975 (seqFromList!3595 lt!1095073)))))

(assert (=> d!887864 (rulesValidInductive!1789 thiss!18206 rules!2135)))

(assert (=> d!887864 (= (maxPrefixZipperSequence!1087 thiss!18206 rules!2135 (seqFromList!3595 lt!1095073)) lt!1096195)))

(declare-fun b!3230735 () Bool)

(declare-fun e!2014950 () Bool)

(assert (=> b!3230735 (= e!2014950 (= (list!12975 (_2!21033 (get!11578 lt!1096195))) (_2!21031 (get!11577 (maxPrefix!2486 thiss!18206 rules!2135 (list!12975 (seqFromList!3595 lt!1095073)))))))))

(declare-fun bm!233347 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!505 (LexerInterface!4855 Rule!10332 BalanceConc!21428) Option!7217)

(assert (=> bm!233347 (= call!233352 (maxPrefixOneRuleZipperSequence!505 thiss!18206 (h!41782 rules!2135) (seqFromList!3595 lt!1095073)))))

(declare-fun b!3230736 () Bool)

(assert (=> b!3230736 (= e!2014953 e!2014950)))

(declare-fun res!1315655 () Bool)

(assert (=> b!3230736 (=> (not res!1315655) (not e!2014950))))

(assert (=> b!3230736 (= res!1315655 (= (_1!21033 (get!11578 lt!1096195)) (_1!21031 (get!11577 (maxPrefix!2486 thiss!18206 rules!2135 (list!12975 (seqFromList!3595 lt!1095073)))))))))

(assert (= (and d!887864 c!543082) b!3230733))

(assert (= (and d!887864 (not c!543082)) b!3230730))

(assert (= (or b!3230733 b!3230730) bm!233347))

(assert (= (and d!887864 res!1315660) b!3230731))

(assert (= (and b!3230731 (not res!1315657)) b!3230734))

(assert (= (and b!3230734 res!1315658) b!3230729))

(assert (= (and b!3230731 res!1315659) b!3230732))

(assert (= (and b!3230732 (not res!1315656)) b!3230736))

(assert (= (and b!3230736 res!1315655) b!3230735))

(assert (=> b!3230730 m!3507165))

(declare-fun m!3511917 () Bool)

(assert (=> b!3230730 m!3511917))

(declare-fun m!3511921 () Bool)

(assert (=> b!3230729 m!3511921))

(assert (=> b!3230729 m!3507165))

(assert (=> b!3230729 m!3507457))

(assert (=> b!3230729 m!3507457))

(assert (=> b!3230729 m!3511293))

(assert (=> b!3230729 m!3511293))

(assert (=> b!3230729 m!3511295))

(declare-fun m!3511929 () Bool)

(assert (=> b!3230729 m!3511929))

(assert (=> b!3230736 m!3511929))

(assert (=> b!3230736 m!3507165))

(assert (=> b!3230736 m!3507457))

(assert (=> b!3230736 m!3507457))

(assert (=> b!3230736 m!3508255))

(assert (=> b!3230736 m!3508255))

(assert (=> b!3230736 m!3511281))

(declare-fun m!3511933 () Bool)

(assert (=> b!3230731 m!3511933))

(assert (=> b!3230735 m!3511921))

(assert (=> b!3230735 m!3507457))

(assert (=> b!3230735 m!3508255))

(assert (=> b!3230735 m!3507165))

(assert (=> b!3230735 m!3507457))

(assert (=> b!3230735 m!3511929))

(assert (=> b!3230735 m!3508255))

(assert (=> b!3230735 m!3511281))

(assert (=> b!3230734 m!3511929))

(assert (=> b!3230734 m!3507165))

(assert (=> b!3230734 m!3507457))

(assert (=> b!3230734 m!3507457))

(assert (=> b!3230734 m!3511293))

(assert (=> b!3230734 m!3511293))

(assert (=> b!3230734 m!3511295))

(assert (=> b!3230732 m!3511933))

(assert (=> bm!233347 m!3507165))

(declare-fun m!3511937 () Bool)

(assert (=> bm!233347 m!3511937))

(assert (=> d!887864 m!3511933))

(assert (=> d!887864 m!3507165))

(assert (=> d!887864 m!3507457))

(assert (=> d!887864 m!3511293))

(assert (=> d!887864 m!3511305))

(assert (=> d!887864 m!3508623))

(assert (=> d!887864 m!3507457))

(assert (=> d!887864 m!3511293))

(declare-fun m!3511939 () Bool)

(assert (=> d!887864 m!3511939))

(declare-fun m!3511943 () Bool)

(assert (=> d!887864 m!3511943))

(assert (=> b!3228925 d!887864))

(declare-fun b!3230739 () Bool)

(declare-fun e!2014957 () List!36487)

(assert (=> b!3230739 (= e!2014957 lt!1095496)))

(declare-fun d!887916 () Bool)

(declare-fun e!2014956 () Bool)

(assert (=> d!887916 e!2014956))

(declare-fun res!1315662 () Bool)

(assert (=> d!887916 (=> (not res!1315662) (not e!2014956))))

(declare-fun lt!1096198 () List!36487)

(assert (=> d!887916 (= res!1315662 (= (content!4920 lt!1096198) ((_ map or) (content!4920 (++!8760 lt!1095493 lt!1095497)) (content!4920 lt!1095496))))))

(assert (=> d!887916 (= lt!1096198 e!2014957)))

(declare-fun c!543084 () Bool)

(assert (=> d!887916 (= c!543084 ((_ is Nil!36363) (++!8760 lt!1095493 lt!1095497)))))

(assert (=> d!887916 (= (++!8760 (++!8760 lt!1095493 lt!1095497) lt!1095496) lt!1096198)))

(declare-fun b!3230740 () Bool)

(assert (=> b!3230740 (= e!2014957 (Cons!36363 (h!41783 (++!8760 lt!1095493 lt!1095497)) (++!8760 (t!241332 (++!8760 lt!1095493 lt!1095497)) lt!1095496)))))

(declare-fun b!3230742 () Bool)

(assert (=> b!3230742 (= e!2014956 (or (not (= lt!1095496 Nil!36363)) (= lt!1096198 (++!8760 lt!1095493 lt!1095497))))))

(declare-fun b!3230741 () Bool)

(declare-fun res!1315661 () Bool)

(assert (=> b!3230741 (=> (not res!1315661) (not e!2014956))))

(assert (=> b!3230741 (= res!1315661 (= (size!27433 lt!1096198) (+ (size!27433 (++!8760 lt!1095493 lt!1095497)) (size!27433 lt!1095496))))))

(assert (= (and d!887916 c!543084) b!3230739))

(assert (= (and d!887916 (not c!543084)) b!3230740))

(assert (= (and d!887916 res!1315662) b!3230741))

(assert (= (and b!3230741 res!1315661) b!3230742))

(declare-fun m!3511947 () Bool)

(assert (=> d!887916 m!3511947))

(assert (=> d!887916 m!3508569))

(declare-fun m!3511949 () Bool)

(assert (=> d!887916 m!3511949))

(declare-fun m!3511951 () Bool)

(assert (=> d!887916 m!3511951))

(declare-fun m!3511955 () Bool)

(assert (=> b!3230740 m!3511955))

(declare-fun m!3511959 () Bool)

(assert (=> b!3230741 m!3511959))

(assert (=> b!3230741 m!3508569))

(declare-fun m!3511961 () Bool)

(assert (=> b!3230741 m!3511961))

(declare-fun m!3511963 () Bool)

(assert (=> b!3230741 m!3511963))

(assert (=> b!3228925 d!887916))

(declare-fun b!3230747 () Bool)

(declare-fun e!2014964 () tuple2!35788)

(declare-fun lt!1096200 () tuple2!35788)

(declare-fun lt!1096201 () Option!7217)

(assert (=> b!3230747 (= e!2014964 (tuple2!35789 (prepend!1182 (_1!21028 lt!1096200) (_1!21033 (v!35826 lt!1096201))) (_2!21028 lt!1096200)))))

(assert (=> b!3230747 (= lt!1096200 (lexRec!694 thiss!18206 rules!2135 (_2!21033 (v!35826 lt!1096201))))))

(declare-fun b!3230748 () Bool)

(declare-fun e!2014962 () Bool)

(declare-fun lt!1096199 () tuple2!35788)

(assert (=> b!3230748 (= e!2014962 (= (list!12975 (_2!21028 lt!1096199)) (list!12975 (_2!21033 (v!35826 lt!1095485)))))))

(declare-fun d!887922 () Bool)

(declare-fun e!2014961 () Bool)

(assert (=> d!887922 e!2014961))

(declare-fun res!1315666 () Bool)

(assert (=> d!887922 (=> (not res!1315666) (not e!2014961))))

(assert (=> d!887922 (= res!1315666 e!2014962)))

(declare-fun c!543087 () Bool)

(assert (=> d!887922 (= c!543087 (> (size!27429 (_1!21028 lt!1096199)) 0))))

(assert (=> d!887922 (= lt!1096199 e!2014964)))

(declare-fun c!543086 () Bool)

(assert (=> d!887922 (= c!543086 ((_ is Some!7216) lt!1096201))))

(assert (=> d!887922 (= lt!1096201 (maxPrefixZipperSequence!1087 thiss!18206 rules!2135 (_2!21033 (v!35826 lt!1095485))))))

(assert (=> d!887922 (= (lexRec!694 thiss!18206 rules!2135 (_2!21033 (v!35826 lt!1095485))) lt!1096199)))

(declare-fun b!3230749 () Bool)

(assert (=> b!3230749 (= e!2014961 (= (list!12975 (_2!21028 lt!1096199)) (_2!21030 (lexList!1335 thiss!18206 rules!2135 (list!12975 (_2!21033 (v!35826 lt!1095485)))))))))

(declare-fun b!3230750 () Bool)

(declare-fun res!1315665 () Bool)

(assert (=> b!3230750 (=> (not res!1315665) (not e!2014961))))

(assert (=> b!3230750 (= res!1315665 (= (list!12978 (_1!21028 lt!1096199)) (_1!21030 (lexList!1335 thiss!18206 rules!2135 (list!12975 (_2!21033 (v!35826 lt!1095485)))))))))

(declare-fun b!3230751 () Bool)

(declare-fun e!2014963 () Bool)

(assert (=> b!3230751 (= e!2014963 (not (isEmpty!20446 (_1!21028 lt!1096199))))))

(declare-fun b!3230752 () Bool)

(assert (=> b!3230752 (= e!2014962 e!2014963)))

(declare-fun res!1315667 () Bool)

(assert (=> b!3230752 (= res!1315667 (< (size!27431 (_2!21028 lt!1096199)) (size!27431 (_2!21033 (v!35826 lt!1095485)))))))

(assert (=> b!3230752 (=> (not res!1315667) (not e!2014963))))

(declare-fun b!3230753 () Bool)

(assert (=> b!3230753 (= e!2014964 (tuple2!35789 (BalanceConc!21431 Empty!10908) (_2!21033 (v!35826 lt!1095485))))))

(assert (= (and d!887922 c!543086) b!3230747))

(assert (= (and d!887922 (not c!543086)) b!3230753))

(assert (= (and d!887922 c!543087) b!3230752))

(assert (= (and d!887922 (not c!543087)) b!3230748))

(assert (= (and b!3230752 res!1315667) b!3230751))

(assert (= (and d!887922 res!1315666) b!3230750))

(assert (= (and b!3230750 res!1315665) b!3230749))

(declare-fun m!3511969 () Bool)

(assert (=> b!3230747 m!3511969))

(declare-fun m!3511971 () Bool)

(assert (=> b!3230747 m!3511971))

(declare-fun m!3511973 () Bool)

(assert (=> b!3230748 m!3511973))

(assert (=> b!3230748 m!3508547))

(declare-fun m!3511975 () Bool)

(assert (=> b!3230751 m!3511975))

(assert (=> b!3230749 m!3511973))

(assert (=> b!3230749 m!3508547))

(assert (=> b!3230749 m!3508547))

(declare-fun m!3511981 () Bool)

(assert (=> b!3230749 m!3511981))

(declare-fun m!3511985 () Bool)

(assert (=> d!887922 m!3511985))

(assert (=> d!887922 m!3511739))

(declare-fun m!3511989 () Bool)

(assert (=> b!3230750 m!3511989))

(assert (=> b!3230750 m!3508547))

(assert (=> b!3230750 m!3508547))

(assert (=> b!3230750 m!3511981))

(declare-fun m!3511993 () Bool)

(assert (=> b!3230752 m!3511993))

(declare-fun m!3511995 () Bool)

(assert (=> b!3230752 m!3511995))

(assert (=> b!3228925 d!887922))

(declare-fun b!3230758 () Bool)

(declare-fun e!2014970 () tuple2!35788)

(declare-fun lt!1096204 () tuple2!35788)

(declare-fun lt!1096205 () Option!7217)

(assert (=> b!3230758 (= e!2014970 (tuple2!35789 (prepend!1182 (_1!21028 lt!1096204) (_1!21033 (v!35826 lt!1096205))) (_2!21028 lt!1096204)))))

(assert (=> b!3230758 (= lt!1096204 (lexRec!694 thiss!18206 rules!2135 (_2!21033 (v!35826 lt!1096205))))))

(declare-fun b!3230759 () Bool)

(declare-fun e!2014968 () Bool)

(declare-fun lt!1096203 () tuple2!35788)

(assert (=> b!3230759 (= e!2014968 (= (list!12975 (_2!21028 lt!1096203)) (list!12975 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (_1!21033 (v!35826 lt!1095485)))))))))

(declare-fun d!887930 () Bool)

(declare-fun e!2014967 () Bool)

(assert (=> d!887930 e!2014967))

(declare-fun res!1315671 () Bool)

(assert (=> d!887930 (=> (not res!1315671) (not e!2014967))))

(assert (=> d!887930 (= res!1315671 e!2014968)))

(declare-fun c!543090 () Bool)

(assert (=> d!887930 (= c!543090 (> (size!27429 (_1!21028 lt!1096203)) 0))))

(assert (=> d!887930 (= lt!1096203 e!2014970)))

(declare-fun c!543089 () Bool)

(assert (=> d!887930 (= c!543089 ((_ is Some!7216) lt!1096205))))

(assert (=> d!887930 (= lt!1096205 (maxPrefixZipperSequence!1087 thiss!18206 rules!2135 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (_1!21033 (v!35826 lt!1095485))))))))

(assert (=> d!887930 (= (lexRec!694 thiss!18206 rules!2135 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (_1!21033 (v!35826 lt!1095485))))) lt!1096203)))

(declare-fun b!3230760 () Bool)

(assert (=> b!3230760 (= e!2014967 (= (list!12975 (_2!21028 lt!1096203)) (_2!21030 (lexList!1335 thiss!18206 rules!2135 (list!12975 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (_1!21033 (v!35826 lt!1095485)))))))))))

(declare-fun b!3230761 () Bool)

(declare-fun res!1315670 () Bool)

(assert (=> b!3230761 (=> (not res!1315670) (not e!2014967))))

(assert (=> b!3230761 (= res!1315670 (= (list!12978 (_1!21028 lt!1096203)) (_1!21030 (lexList!1335 thiss!18206 rules!2135 (list!12975 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (_1!21033 (v!35826 lt!1095485)))))))))))

(declare-fun b!3230762 () Bool)

(declare-fun e!2014969 () Bool)

(assert (=> b!3230762 (= e!2014969 (not (isEmpty!20446 (_1!21028 lt!1096203))))))

(declare-fun b!3230763 () Bool)

(assert (=> b!3230763 (= e!2014968 e!2014969)))

(declare-fun res!1315672 () Bool)

(assert (=> b!3230763 (= res!1315672 (< (size!27431 (_2!21028 lt!1096203)) (size!27431 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (_1!21033 (v!35826 lt!1095485)))))))))

(assert (=> b!3230763 (=> (not res!1315672) (not e!2014969))))

(declare-fun b!3230764 () Bool)

(assert (=> b!3230764 (= e!2014970 (tuple2!35789 (BalanceConc!21431 Empty!10908) (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (_1!21033 (v!35826 lt!1095485))))))))

(assert (= (and d!887930 c!543089) b!3230758))

(assert (= (and d!887930 (not c!543089)) b!3230764))

(assert (= (and d!887930 c!543090) b!3230763))

(assert (= (and d!887930 (not c!543090)) b!3230759))

(assert (= (and b!3230763 res!1315672) b!3230762))

(assert (= (and d!887930 res!1315671) b!3230761))

(assert (= (and b!3230761 res!1315670) b!3230760))

(declare-fun m!3512009 () Bool)

(assert (=> b!3230758 m!3512009))

(declare-fun m!3512011 () Bool)

(assert (=> b!3230758 m!3512011))

(declare-fun m!3512013 () Bool)

(assert (=> b!3230759 m!3512013))

(assert (=> b!3230759 m!3508545))

(declare-fun m!3512015 () Bool)

(assert (=> b!3230759 m!3512015))

(declare-fun m!3512017 () Bool)

(assert (=> b!3230762 m!3512017))

(assert (=> b!3230760 m!3512013))

(assert (=> b!3230760 m!3508545))

(assert (=> b!3230760 m!3512015))

(assert (=> b!3230760 m!3512015))

(declare-fun m!3512019 () Bool)

(assert (=> b!3230760 m!3512019))

(declare-fun m!3512021 () Bool)

(assert (=> d!887930 m!3512021))

(assert (=> d!887930 m!3508545))

(declare-fun m!3512023 () Bool)

(assert (=> d!887930 m!3512023))

(declare-fun m!3512027 () Bool)

(assert (=> b!3230761 m!3512027))

(assert (=> b!3230761 m!3508545))

(assert (=> b!3230761 m!3512015))

(assert (=> b!3230761 m!3512015))

(assert (=> b!3230761 m!3512019))

(declare-fun m!3512033 () Bool)

(assert (=> b!3230763 m!3512033))

(assert (=> b!3230763 m!3508545))

(declare-fun m!3512035 () Bool)

(assert (=> b!3230763 m!3512035))

(assert (=> b!3228925 d!887930))

(declare-fun d!887940 () Bool)

(assert (=> d!887940 (= (list!12978 (BalanceConc!21431 Empty!10908)) (list!12980 (c!542434 (BalanceConc!21431 Empty!10908))))))

(declare-fun bs!543338 () Bool)

(assert (= bs!543338 d!887940))

(declare-fun m!3512039 () Bool)

(assert (=> bs!543338 m!3512039))

(assert (=> b!3228925 d!887940))

(declare-fun b!3230773 () Bool)

(declare-fun lt!1096220 () Option!7217)

(declare-fun e!2014978 () Bool)

(assert (=> b!3230773 (= e!2014978 (= (list!12975 (_2!21033 (get!11578 lt!1096220))) (_2!21031 (get!11577 (maxPrefixZipper!490 thiss!18206 rules!2135 (list!12975 lt!1095489))))))))

(declare-fun b!3230774 () Bool)

(declare-fun e!2014976 () Option!7217)

(declare-fun lt!1096218 () Option!7217)

(declare-fun lt!1096215 () Option!7217)

(assert (=> b!3230774 (= e!2014976 (ite (and ((_ is None!7216) lt!1096218) ((_ is None!7216) lt!1096215)) None!7216 (ite ((_ is None!7216) lt!1096215) lt!1096218 (ite ((_ is None!7216) lt!1096218) lt!1096215 (ite (>= (size!27425 (_1!21033 (v!35826 lt!1096218))) (size!27425 (_1!21033 (v!35826 lt!1096215)))) lt!1096218 lt!1096215)))))))

(declare-fun call!233354 () Option!7217)

(assert (=> b!3230774 (= lt!1096218 call!233354)))

(assert (=> b!3230774 (= lt!1096215 (maxPrefixZipperSequence!1087 thiss!18206 (t!241331 rules!2135) lt!1095489))))

(declare-fun b!3230775 () Bool)

(declare-fun res!1315679 () Bool)

(declare-fun e!2014979 () Bool)

(assert (=> b!3230775 (=> (not res!1315679) (not e!2014979))))

(declare-fun e!2014981 () Bool)

(assert (=> b!3230775 (= res!1315679 e!2014981)))

(declare-fun res!1315677 () Bool)

(assert (=> b!3230775 (=> res!1315677 e!2014981)))

(assert (=> b!3230775 (= res!1315677 (not (isDefined!5592 lt!1096220)))))

(declare-fun b!3230776 () Bool)

(declare-fun e!2014980 () Bool)

(assert (=> b!3230776 (= e!2014979 e!2014980)))

(declare-fun res!1315676 () Bool)

(assert (=> b!3230776 (=> res!1315676 e!2014980)))

(assert (=> b!3230776 (= res!1315676 (not (isDefined!5592 lt!1096220)))))

(declare-fun b!3230777 () Bool)

(assert (=> b!3230777 (= e!2014976 call!233354)))

(declare-fun b!3230778 () Bool)

(assert (=> b!3230778 (= e!2014981 e!2014978)))

(declare-fun res!1315678 () Bool)

(assert (=> b!3230778 (=> (not res!1315678) (not e!2014978))))

(assert (=> b!3230778 (= res!1315678 (= (_1!21033 (get!11578 lt!1096220)) (_1!21031 (get!11577 (maxPrefixZipper!490 thiss!18206 rules!2135 (list!12975 lt!1095489))))))))

(declare-fun d!887944 () Bool)

(assert (=> d!887944 e!2014979))

(declare-fun res!1315680 () Bool)

(assert (=> d!887944 (=> (not res!1315680) (not e!2014979))))

(assert (=> d!887944 (= res!1315680 (= (isDefined!5592 lt!1096220) (isDefined!5591 (maxPrefixZipper!490 thiss!18206 rules!2135 (list!12975 lt!1095489)))))))

(assert (=> d!887944 (= lt!1096220 e!2014976)))

(declare-fun c!543094 () Bool)

(assert (=> d!887944 (= c!543094 (and ((_ is Cons!36362) rules!2135) ((_ is Nil!36362) (t!241331 rules!2135))))))

(declare-fun lt!1096216 () Unit!50946)

(declare-fun lt!1096217 () Unit!50946)

(assert (=> d!887944 (= lt!1096216 lt!1096217)))

(declare-fun lt!1096219 () List!36485)

(declare-fun lt!1096214 () List!36485)

(assert (=> d!887944 (isPrefix!2789 lt!1096219 lt!1096214)))

(assert (=> d!887944 (= lt!1096217 (lemmaIsPrefixRefl!1748 lt!1096219 lt!1096214))))

(assert (=> d!887944 (= lt!1096214 (list!12975 lt!1095489))))

(assert (=> d!887944 (= lt!1096219 (list!12975 lt!1095489))))

(assert (=> d!887944 (rulesValidInductive!1789 thiss!18206 rules!2135)))

(assert (=> d!887944 (= (maxPrefixZipperSequence!1087 thiss!18206 rules!2135 lt!1095489) lt!1096220)))

(declare-fun b!3230779 () Bool)

(declare-fun e!2014977 () Bool)

(assert (=> b!3230779 (= e!2014977 (= (list!12975 (_2!21033 (get!11578 lt!1096220))) (_2!21031 (get!11577 (maxPrefix!2486 thiss!18206 rules!2135 (list!12975 lt!1095489))))))))

(declare-fun bm!233349 () Bool)

(assert (=> bm!233349 (= call!233354 (maxPrefixOneRuleZipperSequence!505 thiss!18206 (h!41782 rules!2135) lt!1095489))))

(declare-fun b!3230780 () Bool)

(assert (=> b!3230780 (= e!2014980 e!2014977)))

(declare-fun res!1315675 () Bool)

(assert (=> b!3230780 (=> (not res!1315675) (not e!2014977))))

(assert (=> b!3230780 (= res!1315675 (= (_1!21033 (get!11578 lt!1096220)) (_1!21031 (get!11577 (maxPrefix!2486 thiss!18206 rules!2135 (list!12975 lt!1095489))))))))

(assert (= (and d!887944 c!543094) b!3230777))

(assert (= (and d!887944 (not c!543094)) b!3230774))

(assert (= (or b!3230777 b!3230774) bm!233349))

(assert (= (and d!887944 res!1315680) b!3230775))

(assert (= (and b!3230775 (not res!1315677)) b!3230778))

(assert (= (and b!3230778 res!1315678) b!3230773))

(assert (= (and b!3230775 res!1315679) b!3230776))

(assert (= (and b!3230776 (not res!1315676)) b!3230780))

(assert (= (and b!3230780 res!1315675) b!3230779))

(declare-fun m!3512073 () Bool)

(assert (=> b!3230774 m!3512073))

(declare-fun m!3512075 () Bool)

(assert (=> b!3230773 m!3512075))

(declare-fun m!3512077 () Bool)

(assert (=> b!3230773 m!3512077))

(assert (=> b!3230773 m!3512077))

(declare-fun m!3512079 () Bool)

(assert (=> b!3230773 m!3512079))

(assert (=> b!3230773 m!3512079))

(declare-fun m!3512087 () Bool)

(assert (=> b!3230773 m!3512087))

(declare-fun m!3512089 () Bool)

(assert (=> b!3230773 m!3512089))

(assert (=> b!3230780 m!3512089))

(assert (=> b!3230780 m!3512077))

(assert (=> b!3230780 m!3512077))

(declare-fun m!3512093 () Bool)

(assert (=> b!3230780 m!3512093))

(assert (=> b!3230780 m!3512093))

(declare-fun m!3512095 () Bool)

(assert (=> b!3230780 m!3512095))

(declare-fun m!3512097 () Bool)

(assert (=> b!3230775 m!3512097))

(assert (=> b!3230779 m!3512075))

(assert (=> b!3230779 m!3512077))

(assert (=> b!3230779 m!3512093))

(assert (=> b!3230779 m!3512077))

(assert (=> b!3230779 m!3512089))

(assert (=> b!3230779 m!3512093))

(assert (=> b!3230779 m!3512095))

(assert (=> b!3230778 m!3512089))

(assert (=> b!3230778 m!3512077))

(assert (=> b!3230778 m!3512077))

(assert (=> b!3230778 m!3512079))

(assert (=> b!3230778 m!3512079))

(assert (=> b!3230778 m!3512087))

(assert (=> b!3230776 m!3512097))

(declare-fun m!3512101 () Bool)

(assert (=> bm!233349 m!3512101))

(assert (=> d!887944 m!3512097))

(assert (=> d!887944 m!3512077))

(assert (=> d!887944 m!3512079))

(declare-fun m!3512105 () Bool)

(assert (=> d!887944 m!3512105))

(assert (=> d!887944 m!3508623))

(assert (=> d!887944 m!3512077))

(assert (=> d!887944 m!3512079))

(declare-fun m!3512107 () Bool)

(assert (=> d!887944 m!3512107))

(declare-fun m!3512109 () Bool)

(assert (=> d!887944 m!3512109))

(assert (=> b!3228925 d!887944))

(declare-fun d!887958 () Bool)

(assert (=> d!887958 (= (++!8756 (++!8756 lt!1095498 lt!1095477) lt!1095473) (++!8756 lt!1095498 (++!8756 lt!1095477 lt!1095473)))))

(declare-fun lt!1096221 () Unit!50946)

(assert (=> d!887958 (= lt!1096221 (choose!18836 lt!1095498 lt!1095477 lt!1095473))))

(assert (=> d!887958 (= (lemmaConcatAssociativity!1789 lt!1095498 lt!1095477 lt!1095473) lt!1096221)))

(declare-fun bs!543343 () Bool)

(assert (= bs!543343 d!887958))

(assert (=> bs!543343 m!3508565))

(assert (=> bs!543343 m!3508577))

(assert (=> bs!543343 m!3508565))

(assert (=> bs!543343 m!3508589))

(assert (=> bs!543343 m!3508589))

(assert (=> bs!543343 m!3508591))

(declare-fun m!3512117 () Bool)

(assert (=> bs!543343 m!3512117))

(assert (=> b!3228925 d!887958))

(declare-fun d!887962 () Bool)

(declare-fun lt!1096222 () BalanceConc!21428)

(assert (=> d!887962 (= (list!12975 lt!1096222) (originalCharacters!5980 (_1!21033 (v!35826 lt!1095485))))))

(assert (=> d!887962 (= lt!1096222 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (_1!21033 (v!35826 lt!1095485))))) (value!170541 (_1!21033 (v!35826 lt!1095485)))))))

(assert (=> d!887962 (= (charsOf!3282 (_1!21033 (v!35826 lt!1095485))) lt!1096222)))

(declare-fun b_lambda!88997 () Bool)

(assert (=> (not b_lambda!88997) (not d!887962)))

(declare-fun t!241673 () Bool)

(declare-fun tb!160129 () Bool)

(assert (=> (and b!3229130 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494)))))) (toChars!7233 (transformation!5266 (rule!7724 (_1!21033 (v!35826 lt!1095485)))))) t!241673) tb!160129))

(declare-fun b!3230790 () Bool)

(declare-fun e!2014987 () Bool)

(declare-fun tp!1017622 () Bool)

(assert (=> b!3230790 (= e!2014987 (and (inv!49253 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (_1!21033 (v!35826 lt!1095485))))) (value!170541 (_1!21033 (v!35826 lt!1095485)))))) tp!1017622))))

(declare-fun result!202690 () Bool)

(assert (=> tb!160129 (= result!202690 (and (inv!49254 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (_1!21033 (v!35826 lt!1095485))))) (value!170541 (_1!21033 (v!35826 lt!1095485))))) e!2014987))))

(assert (= tb!160129 b!3230790))

(declare-fun m!3512125 () Bool)

(assert (=> b!3230790 m!3512125))

(declare-fun m!3512127 () Bool)

(assert (=> tb!160129 m!3512127))

(assert (=> d!887962 t!241673))

(declare-fun b_and!216485 () Bool)

(assert (= b_and!216417 (and (=> t!241673 result!202690) b_and!216485)))

(declare-fun tb!160131 () Bool)

(declare-fun t!241675 () Bool)

(assert (=> (and b!3228460 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (toChars!7233 (transformation!5266 (rule!7724 (_1!21033 (v!35826 lt!1095485)))))) t!241675) tb!160131))

(declare-fun result!202692 () Bool)

(assert (= result!202692 result!202690))

(assert (=> d!887962 t!241675))

(declare-fun b_and!216487 () Bool)

(assert (= b_and!216425 (and (=> t!241675 result!202692) b_and!216487)))

(declare-fun tb!160133 () Bool)

(declare-fun t!241677 () Bool)

(assert (=> (and b!3229145 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 rules!2135))))) (toChars!7233 (transformation!5266 (rule!7724 (_1!21033 (v!35826 lt!1095485)))))) t!241677) tb!160133))

(declare-fun result!202694 () Bool)

(assert (= result!202694 result!202690))

(assert (=> d!887962 t!241677))

(declare-fun b_and!216489 () Bool)

(assert (= b_and!216423 (and (=> t!241677 result!202694) b_and!216489)))

(declare-fun tb!160135 () Bool)

(declare-fun t!241679 () Bool)

(assert (=> (and b!3228442 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 rules!2135)))) (toChars!7233 (transformation!5266 (rule!7724 (_1!21033 (v!35826 lt!1095485)))))) t!241679) tb!160135))

(declare-fun result!202696 () Bool)

(assert (= result!202696 result!202690))

(assert (=> d!887962 t!241679))

(declare-fun b_and!216491 () Bool)

(assert (= b_and!216419 (and (=> t!241679 result!202696) b_and!216491)))

(declare-fun tb!160137 () Bool)

(declare-fun t!241681 () Bool)

(assert (=> (and b!3228087 (= (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (toChars!7233 (transformation!5266 (rule!7724 (_1!21033 (v!35826 lt!1095485)))))) t!241681) tb!160137))

(declare-fun result!202698 () Bool)

(assert (= result!202698 result!202690))

(assert (=> d!887962 t!241681))

(declare-fun b_and!216493 () Bool)

(assert (= b_and!216415 (and (=> t!241681 result!202698) b_and!216493)))

(declare-fun tb!160139 () Bool)

(declare-fun t!241683 () Bool)

(assert (=> (and b!3228076 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (toChars!7233 (transformation!5266 (rule!7724 (_1!21033 (v!35826 lt!1095485)))))) t!241683) tb!160139))

(declare-fun result!202700 () Bool)

(assert (= result!202700 result!202690))

(assert (=> d!887962 t!241683))

(declare-fun b_and!216495 () Bool)

(assert (= b_and!216421 (and (=> t!241683 result!202700) b_and!216495)))

(declare-fun tb!160141 () Bool)

(declare-fun t!241685 () Bool)

(assert (=> (and b!3228072 (= (toChars!7233 (transformation!5266 (h!41782 rules!2135))) (toChars!7233 (transformation!5266 (rule!7724 (_1!21033 (v!35826 lt!1095485)))))) t!241685) tb!160141))

(declare-fun result!202702 () Bool)

(assert (= result!202702 result!202690))

(assert (=> d!887962 t!241685))

(declare-fun b_and!216497 () Bool)

(assert (= b_and!216427 (and (=> t!241685 result!202702) b_and!216497)))

(declare-fun m!3512135 () Bool)

(assert (=> d!887962 m!3512135))

(declare-fun m!3512139 () Bool)

(assert (=> d!887962 m!3512139))

(assert (=> b!3228925 d!887962))

(declare-fun b!3230791 () Bool)

(declare-fun e!2014989 () List!36485)

(assert (=> b!3230791 (= e!2014989 lt!1095477)))

(declare-fun b!3230792 () Bool)

(assert (=> b!3230792 (= e!2014989 (Cons!36361 (h!41781 lt!1095498) (++!8756 (t!241330 lt!1095498) lt!1095477)))))

(declare-fun b!3230794 () Bool)

(declare-fun lt!1096230 () List!36485)

(declare-fun e!2014988 () Bool)

(assert (=> b!3230794 (= e!2014988 (or (not (= lt!1095477 Nil!36361)) (= lt!1096230 lt!1095498)))))

(declare-fun b!3230793 () Bool)

(declare-fun res!1315682 () Bool)

(assert (=> b!3230793 (=> (not res!1315682) (not e!2014988))))

(assert (=> b!3230793 (= res!1315682 (= (size!27430 lt!1096230) (+ (size!27430 lt!1095498) (size!27430 lt!1095477))))))

(declare-fun d!887966 () Bool)

(assert (=> d!887966 e!2014988))

(declare-fun res!1315683 () Bool)

(assert (=> d!887966 (=> (not res!1315683) (not e!2014988))))

(assert (=> d!887966 (= res!1315683 (= (content!4918 lt!1096230) ((_ map or) (content!4918 lt!1095498) (content!4918 lt!1095477))))))

(assert (=> d!887966 (= lt!1096230 e!2014989)))

(declare-fun c!543099 () Bool)

(assert (=> d!887966 (= c!543099 ((_ is Nil!36361) lt!1095498))))

(assert (=> d!887966 (= (++!8756 lt!1095498 lt!1095477) lt!1096230)))

(assert (= (and d!887966 c!543099) b!3230791))

(assert (= (and d!887966 (not c!543099)) b!3230792))

(assert (= (and d!887966 res!1315683) b!3230793))

(assert (= (and b!3230793 res!1315682) b!3230794))

(declare-fun m!3512165 () Bool)

(assert (=> b!3230792 m!3512165))

(declare-fun m!3512167 () Bool)

(assert (=> b!3230793 m!3512167))

(declare-fun m!3512169 () Bool)

(assert (=> b!3230793 m!3512169))

(declare-fun m!3512171 () Bool)

(assert (=> b!3230793 m!3512171))

(declare-fun m!3512173 () Bool)

(assert (=> d!887966 m!3512173))

(declare-fun m!3512175 () Bool)

(assert (=> d!887966 m!3512175))

(declare-fun m!3512177 () Bool)

(assert (=> d!887966 m!3512177))

(assert (=> b!3228925 d!887966))

(assert (=> b!3228925 d!887744))

(declare-fun d!887970 () Bool)

(assert (=> d!887970 (= (lexList!1335 thiss!18206 rules!2135 lt!1095492) (tuple2!35793 lt!1095488 Nil!36361))))

(declare-fun lt!1096306 () Unit!50946)

(declare-fun choose!18848 (LexerInterface!4855 List!36486 List!36485 List!36485 List!36487 List!36487 List!36485) Unit!50946)

(assert (=> d!887970 (= lt!1096306 (choose!18848 thiss!18206 rules!2135 lt!1095492 lt!1095506 lt!1095488 (list!12978 (_1!21028 lt!1095475)) (list!12975 (_2!21028 lt!1095475))))))

(assert (=> d!887970 (not (isEmpty!20447 rules!2135))))

(assert (=> d!887970 (= (lemmaLexThenLexPrefix!459 thiss!18206 rules!2135 lt!1095492 lt!1095506 lt!1095488 (list!12978 (_1!21028 lt!1095475)) (list!12975 (_2!21028 lt!1095475))) lt!1096306)))

(declare-fun bs!543351 () Bool)

(assert (= bs!543351 d!887970))

(assert (=> bs!543351 m!3508583))

(assert (=> bs!543351 m!3508549))

(assert (=> bs!543351 m!3508551))

(declare-fun m!3512399 () Bool)

(assert (=> bs!543351 m!3512399))

(assert (=> bs!543351 m!3507125))

(assert (=> b!3228925 d!887970))

(declare-fun b!3230827 () Bool)

(declare-fun e!2015008 () List!36485)

(assert (=> b!3230827 (= e!2015008 lt!1095494)))

(declare-fun b!3230828 () Bool)

(assert (=> b!3230828 (= e!2015008 (Cons!36361 (h!41781 lt!1095503) (++!8756 (t!241330 lt!1095503) lt!1095494)))))

(declare-fun lt!1096307 () List!36485)

(declare-fun e!2015007 () Bool)

(declare-fun b!3230830 () Bool)

(assert (=> b!3230830 (= e!2015007 (or (not (= lt!1095494 Nil!36361)) (= lt!1096307 lt!1095503)))))

(declare-fun b!3230829 () Bool)

(declare-fun res!1315694 () Bool)

(assert (=> b!3230829 (=> (not res!1315694) (not e!2015007))))

(assert (=> b!3230829 (= res!1315694 (= (size!27430 lt!1096307) (+ (size!27430 lt!1095503) (size!27430 lt!1095494))))))

(declare-fun d!888002 () Bool)

(assert (=> d!888002 e!2015007))

(declare-fun res!1315695 () Bool)

(assert (=> d!888002 (=> (not res!1315695) (not e!2015007))))

(assert (=> d!888002 (= res!1315695 (= (content!4918 lt!1096307) ((_ map or) (content!4918 lt!1095503) (content!4918 lt!1095494))))))

(assert (=> d!888002 (= lt!1096307 e!2015008)))

(declare-fun c!543111 () Bool)

(assert (=> d!888002 (= c!543111 ((_ is Nil!36361) lt!1095503))))

(assert (=> d!888002 (= (++!8756 lt!1095503 lt!1095494) lt!1096307)))

(assert (= (and d!888002 c!543111) b!3230827))

(assert (= (and d!888002 (not c!543111)) b!3230828))

(assert (= (and d!888002 res!1315695) b!3230829))

(assert (= (and b!3230829 res!1315694) b!3230830))

(declare-fun m!3512407 () Bool)

(assert (=> b!3230828 m!3512407))

(declare-fun m!3512409 () Bool)

(assert (=> b!3230829 m!3512409))

(declare-fun m!3512411 () Bool)

(assert (=> b!3230829 m!3512411))

(assert (=> b!3230829 m!3511779))

(declare-fun m!3512413 () Bool)

(assert (=> d!888002 m!3512413))

(declare-fun m!3512415 () Bool)

(assert (=> d!888002 m!3512415))

(declare-fun m!3512417 () Bool)

(assert (=> d!888002 m!3512417))

(assert (=> b!3228925 d!888002))

(declare-fun d!888008 () Bool)

(assert (=> d!888008 (= (list!12978 (append!874 (BalanceConc!21431 Empty!10908) (_1!21033 (v!35826 lt!1095485)))) (list!12980 (c!542434 (append!874 (BalanceConc!21431 Empty!10908) (_1!21033 (v!35826 lt!1095485))))))))

(declare-fun bs!543352 () Bool)

(assert (= bs!543352 d!888008))

(declare-fun m!3512423 () Bool)

(assert (=> bs!543352 m!3512423))

(assert (=> b!3228925 d!888008))

(declare-fun b!3230844 () Bool)

(declare-fun e!2015017 () List!36485)

(assert (=> b!3230844 (= e!2015017 (list!12975 (charsOf!3282 (_1!21033 (v!35826 lt!1095485)))))))

(declare-fun b!3230846 () Bool)

(assert (=> b!3230846 (= e!2015017 (Cons!36361 (h!41781 (list!12975 (BalanceConc!21429 Empty!10907))) (++!8756 (t!241330 (list!12975 (BalanceConc!21429 Empty!10907))) (list!12975 (charsOf!3282 (_1!21033 (v!35826 lt!1095485)))))))))

(declare-fun b!3230848 () Bool)

(declare-fun e!2015016 () Bool)

(declare-fun lt!1096310 () List!36485)

(assert (=> b!3230848 (= e!2015016 (or (not (= (list!12975 (charsOf!3282 (_1!21033 (v!35826 lt!1095485)))) Nil!36361)) (= lt!1096310 (list!12975 (BalanceConc!21429 Empty!10907)))))))

(declare-fun b!3230847 () Bool)

(declare-fun res!1315704 () Bool)

(assert (=> b!3230847 (=> (not res!1315704) (not e!2015016))))

(assert (=> b!3230847 (= res!1315704 (= (size!27430 lt!1096310) (+ (size!27430 (list!12975 (BalanceConc!21429 Empty!10907))) (size!27430 (list!12975 (charsOf!3282 (_1!21033 (v!35826 lt!1095485))))))))))

(declare-fun d!888012 () Bool)

(assert (=> d!888012 e!2015016))

(declare-fun res!1315705 () Bool)

(assert (=> d!888012 (=> (not res!1315705) (not e!2015016))))

(assert (=> d!888012 (= res!1315705 (= (content!4918 lt!1096310) ((_ map or) (content!4918 (list!12975 (BalanceConc!21429 Empty!10907))) (content!4918 (list!12975 (charsOf!3282 (_1!21033 (v!35826 lt!1095485))))))))))

(assert (=> d!888012 (= lt!1096310 e!2015017)))

(declare-fun c!543115 () Bool)

(assert (=> d!888012 (= c!543115 ((_ is Nil!36361) (list!12975 (BalanceConc!21429 Empty!10907))))))

(assert (=> d!888012 (= (++!8756 (list!12975 (BalanceConc!21429 Empty!10907)) (list!12975 (charsOf!3282 (_1!21033 (v!35826 lt!1095485))))) lt!1096310)))

(assert (= (and d!888012 c!543115) b!3230844))

(assert (= (and d!888012 (not c!543115)) b!3230846))

(assert (= (and d!888012 res!1315705) b!3230847))

(assert (= (and b!3230847 res!1315704) b!3230848))

(assert (=> b!3230846 m!3508563))

(declare-fun m!3512431 () Bool)

(assert (=> b!3230846 m!3512431))

(declare-fun m!3512433 () Bool)

(assert (=> b!3230847 m!3512433))

(assert (=> b!3230847 m!3507199))

(assert (=> b!3230847 m!3509503))

(assert (=> b!3230847 m!3508563))

(declare-fun m!3512435 () Bool)

(assert (=> b!3230847 m!3512435))

(declare-fun m!3512439 () Bool)

(assert (=> d!888012 m!3512439))

(assert (=> d!888012 m!3507199))

(assert (=> d!888012 m!3509509))

(assert (=> d!888012 m!3508563))

(declare-fun m!3512447 () Bool)

(assert (=> d!888012 m!3512447))

(assert (=> b!3228925 d!888012))

(declare-fun b!3230849 () Bool)

(declare-fun e!2015019 () List!36485)

(assert (=> b!3230849 (= e!2015019 (++!8756 lt!1095477 lt!1095473))))

(declare-fun b!3230850 () Bool)

(assert (=> b!3230850 (= e!2015019 (Cons!36361 (h!41781 lt!1095498) (++!8756 (t!241330 lt!1095498) (++!8756 lt!1095477 lt!1095473))))))

(declare-fun lt!1096311 () List!36485)

(declare-fun b!3230852 () Bool)

(declare-fun e!2015018 () Bool)

(assert (=> b!3230852 (= e!2015018 (or (not (= (++!8756 lt!1095477 lt!1095473) Nil!36361)) (= lt!1096311 lt!1095498)))))

(declare-fun b!3230851 () Bool)

(declare-fun res!1315706 () Bool)

(assert (=> b!3230851 (=> (not res!1315706) (not e!2015018))))

(assert (=> b!3230851 (= res!1315706 (= (size!27430 lt!1096311) (+ (size!27430 lt!1095498) (size!27430 (++!8756 lt!1095477 lt!1095473)))))))

(declare-fun d!888018 () Bool)

(assert (=> d!888018 e!2015018))

(declare-fun res!1315707 () Bool)

(assert (=> d!888018 (=> (not res!1315707) (not e!2015018))))

(assert (=> d!888018 (= res!1315707 (= (content!4918 lt!1096311) ((_ map or) (content!4918 lt!1095498) (content!4918 (++!8756 lt!1095477 lt!1095473)))))))

(assert (=> d!888018 (= lt!1096311 e!2015019)))

(declare-fun c!543116 () Bool)

(assert (=> d!888018 (= c!543116 ((_ is Nil!36361) lt!1095498))))

(assert (=> d!888018 (= (++!8756 lt!1095498 (++!8756 lt!1095477 lt!1095473)) lt!1096311)))

(assert (= (and d!888018 c!543116) b!3230849))

(assert (= (and d!888018 (not c!543116)) b!3230850))

(assert (= (and d!888018 res!1315707) b!3230851))

(assert (= (and b!3230851 res!1315706) b!3230852))

(assert (=> b!3230850 m!3508565))

(declare-fun m!3512457 () Bool)

(assert (=> b!3230850 m!3512457))

(declare-fun m!3512459 () Bool)

(assert (=> b!3230851 m!3512459))

(assert (=> b!3230851 m!3512169))

(assert (=> b!3230851 m!3508565))

(declare-fun m!3512461 () Bool)

(assert (=> b!3230851 m!3512461))

(declare-fun m!3512463 () Bool)

(assert (=> d!888018 m!3512463))

(assert (=> d!888018 m!3512175))

(assert (=> d!888018 m!3508565))

(declare-fun m!3512465 () Bool)

(assert (=> d!888018 m!3512465))

(assert (=> b!3228925 d!888018))

(declare-fun d!888026 () Bool)

(assert (=> d!888026 (= (list!12978 (_1!21028 lt!1095475)) (list!12980 (c!542434 (_1!21028 lt!1095475))))))

(declare-fun bs!543356 () Bool)

(assert (= bs!543356 d!888026))

(declare-fun m!3512467 () Bool)

(assert (=> bs!543356 m!3512467))

(assert (=> b!3228925 d!888026))

(declare-fun d!888028 () Bool)

(assert (=> d!888028 (= (list!12975 (charsOf!3282 (_1!21033 (v!35826 lt!1095485)))) (list!12979 (c!542433 (charsOf!3282 (_1!21033 (v!35826 lt!1095485))))))))

(declare-fun bs!543357 () Bool)

(assert (= bs!543357 d!888028))

(declare-fun m!3512469 () Bool)

(assert (=> bs!543357 m!3512469))

(assert (=> b!3228925 d!888028))

(declare-fun d!888030 () Bool)

(assert (=> d!888030 (= (list!12975 (_2!21033 (v!35826 lt!1095485))) (list!12979 (c!542433 (_2!21033 (v!35826 lt!1095485)))))))

(declare-fun bs!543358 () Bool)

(assert (= bs!543358 d!888030))

(declare-fun m!3512471 () Bool)

(assert (=> bs!543358 m!3512471))

(assert (=> b!3228925 d!888030))

(declare-fun d!888032 () Bool)

(assert (=> d!888032 (isSuffix!856 lt!1095494 (++!8756 lt!1095503 lt!1095494))))

(declare-fun lt!1096312 () Unit!50946)

(assert (=> d!888032 (= lt!1096312 (choose!18844 lt!1095503 lt!1095494))))

(assert (=> d!888032 (= (lemmaConcatTwoListThenFSndIsSuffix!541 lt!1095503 lt!1095494) lt!1096312)))

(declare-fun bs!543359 () Bool)

(assert (= bs!543359 d!888032))

(assert (=> bs!543359 m!3508579))

(assert (=> bs!543359 m!3508579))

(assert (=> bs!543359 m!3508587))

(declare-fun m!3512473 () Bool)

(assert (=> bs!543359 m!3512473))

(assert (=> b!3228925 d!888032))

(declare-fun b!3230853 () Bool)

(declare-fun e!2015021 () List!36487)

(assert (=> b!3230853 (= e!2015021 lt!1095496)))

(declare-fun d!888034 () Bool)

(declare-fun e!2015020 () Bool)

(assert (=> d!888034 e!2015020))

(declare-fun res!1315709 () Bool)

(assert (=> d!888034 (=> (not res!1315709) (not e!2015020))))

(declare-fun lt!1096313 () List!36487)

(assert (=> d!888034 (= res!1315709 (= (content!4920 lt!1096313) ((_ map or) (content!4920 lt!1095497) (content!4920 lt!1095496))))))

(assert (=> d!888034 (= lt!1096313 e!2015021)))

(declare-fun c!543117 () Bool)

(assert (=> d!888034 (= c!543117 ((_ is Nil!36363) lt!1095497))))

(assert (=> d!888034 (= (++!8760 lt!1095497 lt!1095496) lt!1096313)))

(declare-fun b!3230854 () Bool)

(assert (=> b!3230854 (= e!2015021 (Cons!36363 (h!41783 lt!1095497) (++!8760 (t!241332 lt!1095497) lt!1095496)))))

(declare-fun b!3230856 () Bool)

(assert (=> b!3230856 (= e!2015020 (or (not (= lt!1095496 Nil!36363)) (= lt!1096313 lt!1095497)))))

(declare-fun b!3230855 () Bool)

(declare-fun res!1315708 () Bool)

(assert (=> b!3230855 (=> (not res!1315708) (not e!2015020))))

(assert (=> b!3230855 (= res!1315708 (= (size!27433 lt!1096313) (+ (size!27433 lt!1095497) (size!27433 lt!1095496))))))

(assert (= (and d!888034 c!543117) b!3230853))

(assert (= (and d!888034 (not c!543117)) b!3230854))

(assert (= (and d!888034 res!1315709) b!3230855))

(assert (= (and b!3230855 res!1315708) b!3230856))

(declare-fun m!3512475 () Bool)

(assert (=> d!888034 m!3512475))

(assert (=> d!888034 m!3511661))

(assert (=> d!888034 m!3511951))

(declare-fun m!3512477 () Bool)

(assert (=> b!3230854 m!3512477))

(declare-fun m!3512479 () Bool)

(assert (=> b!3230855 m!3512479))

(assert (=> b!3230855 m!3511669))

(assert (=> b!3230855 m!3511963))

(assert (=> b!3228925 d!888034))

(declare-fun b!3230857 () Bool)

(declare-fun e!2015023 () List!36485)

(assert (=> b!3230857 (= e!2015023 lt!1095473)))

(declare-fun b!3230858 () Bool)

(assert (=> b!3230858 (= e!2015023 (Cons!36361 (h!41781 lt!1095477) (++!8756 (t!241330 lt!1095477) lt!1095473)))))

(declare-fun lt!1096314 () List!36485)

(declare-fun b!3230860 () Bool)

(declare-fun e!2015022 () Bool)

(assert (=> b!3230860 (= e!2015022 (or (not (= lt!1095473 Nil!36361)) (= lt!1096314 lt!1095477)))))

(declare-fun b!3230859 () Bool)

(declare-fun res!1315710 () Bool)

(assert (=> b!3230859 (=> (not res!1315710) (not e!2015022))))

(assert (=> b!3230859 (= res!1315710 (= (size!27430 lt!1096314) (+ (size!27430 lt!1095477) (size!27430 lt!1095473))))))

(declare-fun d!888036 () Bool)

(assert (=> d!888036 e!2015022))

(declare-fun res!1315711 () Bool)

(assert (=> d!888036 (=> (not res!1315711) (not e!2015022))))

(assert (=> d!888036 (= res!1315711 (= (content!4918 lt!1096314) ((_ map or) (content!4918 lt!1095477) (content!4918 lt!1095473))))))

(assert (=> d!888036 (= lt!1096314 e!2015023)))

(declare-fun c!543118 () Bool)

(assert (=> d!888036 (= c!543118 ((_ is Nil!36361) lt!1095477))))

(assert (=> d!888036 (= (++!8756 lt!1095477 lt!1095473) lt!1096314)))

(assert (= (and d!888036 c!543118) b!3230857))

(assert (= (and d!888036 (not c!543118)) b!3230858))

(assert (= (and d!888036 res!1315711) b!3230859))

(assert (= (and b!3230859 res!1315710) b!3230860))

(declare-fun m!3512481 () Bool)

(assert (=> b!3230858 m!3512481))

(declare-fun m!3512483 () Bool)

(assert (=> b!3230859 m!3512483))

(assert (=> b!3230859 m!3512171))

(assert (=> b!3230859 m!3511789))

(declare-fun m!3512485 () Bool)

(assert (=> d!888036 m!3512485))

(assert (=> d!888036 m!3512177))

(assert (=> d!888036 m!3511795))

(assert (=> b!3228925 d!888036))

(declare-fun d!888038 () Bool)

(declare-fun e!2015026 () Bool)

(assert (=> d!888038 e!2015026))

(declare-fun res!1315714 () Bool)

(assert (=> d!888038 (=> (not res!1315714) (not e!2015026))))

(declare-fun append!876 (Conc!10908 Token!9898) Conc!10908)

(assert (=> d!888038 (= res!1315714 (isBalanced!3244 (append!876 (c!542434 (BalanceConc!21431 Empty!10908)) (_1!21033 (v!35826 lt!1095485)))))))

(declare-fun lt!1096317 () BalanceConc!21430)

(assert (=> d!888038 (= lt!1096317 (BalanceConc!21431 (append!876 (c!542434 (BalanceConc!21431 Empty!10908)) (_1!21033 (v!35826 lt!1095485)))))))

(assert (=> d!888038 (= (append!874 (BalanceConc!21431 Empty!10908) (_1!21033 (v!35826 lt!1095485))) lt!1096317)))

(declare-fun b!3230863 () Bool)

(declare-fun $colon+!222 (List!36487 Token!9898) List!36487)

(assert (=> b!3230863 (= e!2015026 (= (list!12978 lt!1096317) ($colon+!222 (list!12978 (BalanceConc!21431 Empty!10908)) (_1!21033 (v!35826 lt!1095485)))))))

(assert (= (and d!888038 res!1315714) b!3230863))

(declare-fun m!3512487 () Bool)

(assert (=> d!888038 m!3512487))

(assert (=> d!888038 m!3512487))

(declare-fun m!3512489 () Bool)

(assert (=> d!888038 m!3512489))

(declare-fun m!3512491 () Bool)

(assert (=> b!3230863 m!3512491))

(assert (=> b!3230863 m!3508575))

(assert (=> b!3230863 m!3508575))

(declare-fun m!3512493 () Bool)

(assert (=> b!3230863 m!3512493))

(assert (=> b!3228925 d!888038))

(declare-fun b!3230868 () Bool)

(declare-fun e!2015028 () tuple2!35792)

(assert (=> b!3230868 (= e!2015028 (tuple2!35793 Nil!36363 lt!1095492))))

(declare-fun b!3230869 () Bool)

(declare-fun e!2015029 () Bool)

(declare-fun lt!1096322 () tuple2!35792)

(assert (=> b!3230869 (= e!2015029 (not (isEmpty!20453 (_1!21030 lt!1096322))))))

(declare-fun d!888040 () Bool)

(declare-fun e!2015027 () Bool)

(assert (=> d!888040 e!2015027))

(declare-fun c!543120 () Bool)

(assert (=> d!888040 (= c!543120 (> (size!27433 (_1!21030 lt!1096322)) 0))))

(assert (=> d!888040 (= lt!1096322 e!2015028)))

(declare-fun c!543122 () Bool)

(declare-fun lt!1096321 () Option!7215)

(assert (=> d!888040 (= c!543122 ((_ is Some!7214) lt!1096321))))

(assert (=> d!888040 (= lt!1096321 (maxPrefix!2486 thiss!18206 rules!2135 lt!1095492))))

(assert (=> d!888040 (= (lexList!1335 thiss!18206 rules!2135 lt!1095492) lt!1096322)))

(declare-fun b!3230870 () Bool)

(declare-fun lt!1096320 () tuple2!35792)

(assert (=> b!3230870 (= e!2015028 (tuple2!35793 (Cons!36363 (_1!21031 (v!35824 lt!1096321)) (_1!21030 lt!1096320)) (_2!21030 lt!1096320)))))

(assert (=> b!3230870 (= lt!1096320 (lexList!1335 thiss!18206 rules!2135 (_2!21031 (v!35824 lt!1096321))))))

(declare-fun b!3230871 () Bool)

(assert (=> b!3230871 (= e!2015027 (= (_2!21030 lt!1096322) lt!1095492))))

(declare-fun b!3230872 () Bool)

(assert (=> b!3230872 (= e!2015027 e!2015029)))

(declare-fun res!1315715 () Bool)

(assert (=> b!3230872 (= res!1315715 (< (size!27430 (_2!21030 lt!1096322)) (size!27430 lt!1095492)))))

(assert (=> b!3230872 (=> (not res!1315715) (not e!2015029))))

(assert (= (and d!888040 c!543122) b!3230870))

(assert (= (and d!888040 (not c!543122)) b!3230868))

(assert (= (and d!888040 c!543120) b!3230872))

(assert (= (and d!888040 (not c!543120)) b!3230871))

(assert (= (and b!3230872 res!1315715) b!3230869))

(declare-fun m!3512495 () Bool)

(assert (=> b!3230869 m!3512495))

(declare-fun m!3512497 () Bool)

(assert (=> d!888040 m!3512497))

(declare-fun m!3512499 () Bool)

(assert (=> d!888040 m!3512499))

(declare-fun m!3512501 () Bool)

(assert (=> b!3230870 m!3512501))

(declare-fun m!3512503 () Bool)

(assert (=> b!3230872 m!3512503))

(declare-fun m!3512505 () Bool)

(assert (=> b!3230872 m!3512505))

(assert (=> b!3228925 d!888040))

(assert (=> b!3228997 d!887762))

(assert (=> b!3228997 d!887764))

(assert (=> b!3228997 d!887768))

(assert (=> b!3228997 d!887778))

(assert (=> b!3228997 d!887536))

(declare-fun d!888042 () Bool)

(assert (=> d!888042 (= (charsToBigInt!1 (text!38920 (value!170541 separatorToken!241))) (choose!644 (text!38920 (value!170541 separatorToken!241))))))

(declare-fun bs!543360 () Bool)

(assert (= bs!543360 d!888042))

(declare-fun m!3512507 () Bool)

(assert (=> bs!543360 m!3512507))

(assert (=> d!886752 d!888042))

(declare-fun d!888044 () Bool)

(declare-fun res!1315717 () Bool)

(declare-fun e!2015033 () Bool)

(assert (=> d!888044 (=> res!1315717 e!2015033)))

(assert (=> d!888044 (= res!1315717 (not ((_ is Node!10907) (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241))))))))

(assert (=> d!888044 (= (isBalanced!3247 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))) e!2015033)))

(declare-fun b!3230873 () Bool)

(declare-fun res!1315719 () Bool)

(declare-fun e!2015032 () Bool)

(assert (=> b!3230873 (=> (not res!1315719) (not e!2015032))))

(assert (=> b!3230873 (= res!1315719 (not (isEmpty!20456 (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))))))))

(declare-fun b!3230874 () Bool)

(assert (=> b!3230874 (= e!2015033 e!2015032)))

(declare-fun res!1315721 () Bool)

(assert (=> b!3230874 (=> (not res!1315721) (not e!2015032))))

(assert (=> b!3230874 (= res!1315721 (<= (- 1) (- (height!1580 (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241))))) (height!1580 (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241))))))))))

(declare-fun b!3230875 () Bool)

(declare-fun res!1315716 () Bool)

(assert (=> b!3230875 (=> (not res!1315716) (not e!2015032))))

(assert (=> b!3230875 (= res!1315716 (<= (- (height!1580 (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241))))) (height!1580 (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))))) 1))))

(declare-fun b!3230876 () Bool)

(declare-fun res!1315718 () Bool)

(assert (=> b!3230876 (=> (not res!1315718) (not e!2015032))))

(assert (=> b!3230876 (= res!1315718 (isBalanced!3247 (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241))))))))

(declare-fun b!3230877 () Bool)

(assert (=> b!3230877 (= e!2015032 (not (isEmpty!20456 (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))))))))

(declare-fun b!3230878 () Bool)

(declare-fun res!1315720 () Bool)

(assert (=> b!3230878 (=> (not res!1315720) (not e!2015032))))

(assert (=> b!3230878 (= res!1315720 (isBalanced!3247 (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241))))))))

(assert (= (and d!888044 (not res!1315717)) b!3230874))

(assert (= (and b!3230874 res!1315721) b!3230875))

(assert (= (and b!3230875 res!1315716) b!3230878))

(assert (= (and b!3230878 res!1315720) b!3230876))

(assert (= (and b!3230876 res!1315718) b!3230873))

(assert (= (and b!3230873 res!1315719) b!3230877))

(declare-fun m!3512509 () Bool)

(assert (=> b!3230874 m!3512509))

(declare-fun m!3512511 () Bool)

(assert (=> b!3230874 m!3512511))

(declare-fun m!3512513 () Bool)

(assert (=> b!3230877 m!3512513))

(declare-fun m!3512515 () Bool)

(assert (=> b!3230873 m!3512515))

(declare-fun m!3512517 () Bool)

(assert (=> b!3230878 m!3512517))

(assert (=> b!3230875 m!3512509))

(assert (=> b!3230875 m!3512511))

(declare-fun m!3512519 () Bool)

(assert (=> b!3230876 m!3512519))

(assert (=> d!886748 d!888044))

(declare-fun d!888046 () Bool)

(assert (=> d!888046 (= (inv!16 (value!170541 (h!41783 (t!241332 tokens!494)))) (= (charsToInt!0 (text!38919 (value!170541 (h!41783 (t!241332 tokens!494))))) (value!170532 (value!170541 (h!41783 (t!241332 tokens!494))))))))

(declare-fun bs!543361 () Bool)

(assert (= bs!543361 d!888046))

(declare-fun m!3512521 () Bool)

(assert (=> bs!543361 m!3512521))

(assert (=> b!3229026 d!888046))

(declare-fun d!888048 () Bool)

(assert (=> d!888048 (= (isEmpty!20452 (originalCharacters!5980 (h!41783 (t!241332 tokens!494)))) ((_ is Nil!36361) (originalCharacters!5980 (h!41783 (t!241332 tokens!494)))))))

(assert (=> d!886798 d!888048))

(declare-fun b!3230879 () Bool)

(declare-fun e!2015035 () List!36485)

(assert (=> b!3230879 (= e!2015035 (printList!1405 thiss!18206 (dropList!1093 lt!1095069 0)))))

(declare-fun b!3230880 () Bool)

(assert (=> b!3230880 (= e!2015035 (Cons!36361 (h!41781 (list!12975 (BalanceConc!21429 Empty!10907))) (++!8756 (t!241330 (list!12975 (BalanceConc!21429 Empty!10907))) (printList!1405 thiss!18206 (dropList!1093 lt!1095069 0)))))))

(declare-fun b!3230882 () Bool)

(declare-fun lt!1096339 () List!36485)

(declare-fun e!2015034 () Bool)

(assert (=> b!3230882 (= e!2015034 (or (not (= (printList!1405 thiss!18206 (dropList!1093 lt!1095069 0)) Nil!36361)) (= lt!1096339 (list!12975 (BalanceConc!21429 Empty!10907)))))))

(declare-fun b!3230881 () Bool)

(declare-fun res!1315722 () Bool)

(assert (=> b!3230881 (=> (not res!1315722) (not e!2015034))))

(assert (=> b!3230881 (= res!1315722 (= (size!27430 lt!1096339) (+ (size!27430 (list!12975 (BalanceConc!21429 Empty!10907))) (size!27430 (printList!1405 thiss!18206 (dropList!1093 lt!1095069 0))))))))

(declare-fun d!888050 () Bool)

(assert (=> d!888050 e!2015034))

(declare-fun res!1315723 () Bool)

(assert (=> d!888050 (=> (not res!1315723) (not e!2015034))))

(assert (=> d!888050 (= res!1315723 (= (content!4918 lt!1096339) ((_ map or) (content!4918 (list!12975 (BalanceConc!21429 Empty!10907))) (content!4918 (printList!1405 thiss!18206 (dropList!1093 lt!1095069 0))))))))

(assert (=> d!888050 (= lt!1096339 e!2015035)))

(declare-fun c!543124 () Bool)

(assert (=> d!888050 (= c!543124 ((_ is Nil!36361) (list!12975 (BalanceConc!21429 Empty!10907))))))

(assert (=> d!888050 (= (++!8756 (list!12975 (BalanceConc!21429 Empty!10907)) (printList!1405 thiss!18206 (dropList!1093 lt!1095069 0))) lt!1096339)))

(assert (= (and d!888050 c!543124) b!3230879))

(assert (= (and d!888050 (not c!543124)) b!3230880))

(assert (= (and d!888050 res!1315723) b!3230881))

(assert (= (and b!3230881 res!1315722) b!3230882))

(assert (=> b!3230880 m!3508071))

(declare-fun m!3512523 () Bool)

(assert (=> b!3230880 m!3512523))

(declare-fun m!3512525 () Bool)

(assert (=> b!3230881 m!3512525))

(assert (=> b!3230881 m!3507199))

(assert (=> b!3230881 m!3509503))

(assert (=> b!3230881 m!3508071))

(declare-fun m!3512527 () Bool)

(assert (=> b!3230881 m!3512527))

(declare-fun m!3512529 () Bool)

(assert (=> d!888050 m!3512529))

(assert (=> d!888050 m!3507199))

(assert (=> d!888050 m!3509509))

(assert (=> d!888050 m!3508071))

(declare-fun m!3512531 () Bool)

(assert (=> d!888050 m!3512531))

(assert (=> d!886706 d!888050))

(declare-fun d!888052 () Bool)

(declare-fun c!543125 () Bool)

(assert (=> d!888052 (= c!543125 ((_ is Cons!36363) (dropList!1093 lt!1095069 0)))))

(declare-fun e!2015036 () List!36485)

(assert (=> d!888052 (= (printList!1405 thiss!18206 (dropList!1093 lt!1095069 0)) e!2015036)))

(declare-fun b!3230883 () Bool)

(assert (=> b!3230883 (= e!2015036 (++!8756 (list!12975 (charsOf!3282 (h!41783 (dropList!1093 lt!1095069 0)))) (printList!1405 thiss!18206 (t!241332 (dropList!1093 lt!1095069 0)))))))

(declare-fun b!3230884 () Bool)

(assert (=> b!3230884 (= e!2015036 Nil!36361)))

(assert (= (and d!888052 c!543125) b!3230883))

(assert (= (and d!888052 (not c!543125)) b!3230884))

(assert (=> b!3230883 m!3508085))

(assert (=> b!3230883 m!3508085))

(assert (=> b!3230883 m!3508089))

(assert (=> b!3230883 m!3508083))

(assert (=> b!3230883 m!3508089))

(assert (=> b!3230883 m!3508083))

(declare-fun m!3512533 () Bool)

(assert (=> b!3230883 m!3512533))

(assert (=> d!886706 d!888052))

(declare-fun b!3230885 () Bool)

(declare-fun e!2015037 () List!36487)

(assert (=> b!3230885 (= e!2015037 Nil!36363)))

(declare-fun b!3230888 () Bool)

(declare-fun e!2015038 () List!36487)

(assert (=> b!3230888 (= e!2015038 (++!8760 (list!12980 (left!28315 (c!542434 (singletonSeq!2362 (h!41783 tokens!494))))) (list!12980 (right!28645 (c!542434 (singletonSeq!2362 (h!41783 tokens!494)))))))))

(declare-fun b!3230887 () Bool)

(assert (=> b!3230887 (= e!2015038 (list!12985 (xs!14026 (c!542434 (singletonSeq!2362 (h!41783 tokens!494))))))))

(declare-fun b!3230886 () Bool)

(assert (=> b!3230886 (= e!2015037 e!2015038)))

(declare-fun c!543127 () Bool)

(assert (=> b!3230886 (= c!543127 ((_ is Leaf!17152) (c!542434 (singletonSeq!2362 (h!41783 tokens!494)))))))

(declare-fun d!888054 () Bool)

(declare-fun c!543126 () Bool)

(assert (=> d!888054 (= c!543126 ((_ is Empty!10908) (c!542434 (singletonSeq!2362 (h!41783 tokens!494)))))))

(assert (=> d!888054 (= (list!12980 (c!542434 (singletonSeq!2362 (h!41783 tokens!494)))) e!2015037)))

(assert (= (and d!888054 c!543126) b!3230885))

(assert (= (and d!888054 (not c!543126)) b!3230886))

(assert (= (and b!3230886 c!543127) b!3230887))

(assert (= (and b!3230886 (not c!543127)) b!3230888))

(declare-fun m!3512535 () Bool)

(assert (=> b!3230888 m!3512535))

(declare-fun m!3512537 () Bool)

(assert (=> b!3230888 m!3512537))

(assert (=> b!3230888 m!3512535))

(assert (=> b!3230888 m!3512537))

(declare-fun m!3512539 () Bool)

(assert (=> b!3230888 m!3512539))

(declare-fun m!3512541 () Bool)

(assert (=> b!3230887 m!3512541))

(assert (=> d!886808 d!888054))

(declare-fun d!888056 () Bool)

(declare-fun c!543128 () Bool)

(assert (=> d!888056 (= c!543128 ((_ is Nil!36361) (t!241330 lt!1095073)))))

(declare-fun e!2015039 () (InoxSet C!20236))

(assert (=> d!888056 (= (content!4918 (t!241330 lt!1095073)) e!2015039)))

(declare-fun b!3230889 () Bool)

(assert (=> b!3230889 (= e!2015039 ((as const (Array C!20236 Bool)) false))))

(declare-fun b!3230890 () Bool)

(assert (=> b!3230890 (= e!2015039 ((_ map or) (store ((as const (Array C!20236 Bool)) false) (h!41781 (t!241330 lt!1095073)) true) (content!4918 (t!241330 (t!241330 lt!1095073)))))))

(assert (= (and d!888056 c!543128) b!3230889))

(assert (= (and d!888056 (not c!543128)) b!3230890))

(declare-fun m!3512543 () Bool)

(assert (=> b!3230890 m!3512543))

(declare-fun m!3512545 () Bool)

(assert (=> b!3230890 m!3512545))

(assert (=> b!3229048 d!888056))

(declare-fun d!888058 () Bool)

(declare-fun lt!1096349 () Token!9898)

(assert (=> d!888058 (contains!6527 (list!12978 (_1!21028 lt!1095184)) lt!1096349)))

(declare-fun e!2015041 () Token!9898)

(assert (=> d!888058 (= lt!1096349 e!2015041)))

(declare-fun c!543130 () Bool)

(assert (=> d!888058 (= c!543130 (= 0 0))))

(declare-fun e!2015042 () Bool)

(assert (=> d!888058 e!2015042))

(declare-fun res!1315724 () Bool)

(assert (=> d!888058 (=> (not res!1315724) (not e!2015042))))

(assert (=> d!888058 (= res!1315724 (<= 0 0))))

(assert (=> d!888058 (= (apply!8301 (list!12978 (_1!21028 lt!1095184)) 0) lt!1096349)))

(declare-fun b!3230893 () Bool)

(assert (=> b!3230893 (= e!2015042 (< 0 (size!27433 (list!12978 (_1!21028 lt!1095184)))))))

(declare-fun b!3230894 () Bool)

(assert (=> b!3230894 (= e!2015041 (head!7088 (list!12978 (_1!21028 lt!1095184))))))

(declare-fun b!3230895 () Bool)

(assert (=> b!3230895 (= e!2015041 (apply!8301 (tail!5232 (list!12978 (_1!21028 lt!1095184))) (- 0 1)))))

(assert (= (and d!888058 res!1315724) b!3230893))

(assert (= (and d!888058 c!543130) b!3230894))

(assert (= (and d!888058 (not c!543130)) b!3230895))

(assert (=> d!888058 m!3507773))

(declare-fun m!3512547 () Bool)

(assert (=> d!888058 m!3512547))

(assert (=> b!3230893 m!3507773))

(assert (=> b!3230893 m!3508307))

(assert (=> b!3230894 m!3507773))

(declare-fun m!3512549 () Bool)

(assert (=> b!3230894 m!3512549))

(assert (=> b!3230895 m!3507773))

(declare-fun m!3512551 () Bool)

(assert (=> b!3230895 m!3512551))

(assert (=> b!3230895 m!3512551))

(declare-fun m!3512553 () Bool)

(assert (=> b!3230895 m!3512553))

(assert (=> d!886588 d!888058))

(assert (=> d!886588 d!887032))

(declare-fun b!3230896 () Bool)

(declare-fun e!2015046 () Int)

(assert (=> b!3230896 (= e!2015046 0)))

(declare-fun b!3230897 () Bool)

(assert (=> b!3230897 (= e!2015046 (- 0 (size!27434 (left!28315 (c!542434 (_1!21028 lt!1095184))))))))

(declare-fun d!888060 () Bool)

(declare-fun lt!1096350 () Token!9898)

(assert (=> d!888060 (= lt!1096350 (apply!8301 (list!12980 (c!542434 (_1!21028 lt!1095184))) 0))))

(declare-fun e!2015043 () Token!9898)

(assert (=> d!888060 (= lt!1096350 e!2015043)))

(declare-fun c!543131 () Bool)

(assert (=> d!888060 (= c!543131 ((_ is Leaf!17152) (c!542434 (_1!21028 lt!1095184))))))

(declare-fun e!2015044 () Bool)

(assert (=> d!888060 e!2015044))

(declare-fun res!1315725 () Bool)

(assert (=> d!888060 (=> (not res!1315725) (not e!2015044))))

(assert (=> d!888060 (= res!1315725 (<= 0 0))))

(assert (=> d!888060 (= (apply!8303 (c!542434 (_1!21028 lt!1095184)) 0) lt!1096350)))

(declare-fun b!3230898 () Bool)

(assert (=> b!3230898 (= e!2015044 (< 0 (size!27434 (c!542434 (_1!21028 lt!1095184)))))))

(declare-fun b!3230899 () Bool)

(declare-fun e!2015045 () Token!9898)

(declare-fun call!233355 () Token!9898)

(assert (=> b!3230899 (= e!2015045 call!233355)))

(declare-fun b!3230900 () Bool)

(assert (=> b!3230900 (= e!2015043 (apply!8307 (xs!14026 (c!542434 (_1!21028 lt!1095184))) 0))))

(declare-fun b!3230901 () Bool)

(assert (=> b!3230901 (= e!2015043 e!2015045)))

(declare-fun lt!1096351 () Bool)

(assert (=> b!3230901 (= lt!1096351 (appendIndex!314 (list!12980 (left!28315 (c!542434 (_1!21028 lt!1095184)))) (list!12980 (right!28645 (c!542434 (_1!21028 lt!1095184)))) 0))))

(declare-fun c!543132 () Bool)

(assert (=> b!3230901 (= c!543132 (< 0 (size!27434 (left!28315 (c!542434 (_1!21028 lt!1095184))))))))

(declare-fun bm!233350 () Bool)

(declare-fun c!543133 () Bool)

(assert (=> bm!233350 (= c!543133 c!543132)))

(assert (=> bm!233350 (= call!233355 (apply!8303 (ite c!543132 (left!28315 (c!542434 (_1!21028 lt!1095184))) (right!28645 (c!542434 (_1!21028 lt!1095184)))) e!2015046))))

(declare-fun b!3230902 () Bool)

(assert (=> b!3230902 (= e!2015045 call!233355)))

(assert (= (and d!888060 res!1315725) b!3230898))

(assert (= (and d!888060 c!543131) b!3230900))

(assert (= (and d!888060 (not c!543131)) b!3230901))

(assert (= (and b!3230901 c!543132) b!3230902))

(assert (= (and b!3230901 (not c!543132)) b!3230899))

(assert (= (or b!3230902 b!3230899) bm!233350))

(assert (= (and bm!233350 c!543133) b!3230896))

(assert (= (and bm!233350 (not c!543133)) b!3230897))

(declare-fun m!3512567 () Bool)

(assert (=> b!3230900 m!3512567))

(declare-fun m!3512573 () Bool)

(assert (=> bm!233350 m!3512573))

(assert (=> b!3230898 m!3508309))

(assert (=> d!888060 m!3509169))

(assert (=> d!888060 m!3509169))

(declare-fun m!3512579 () Bool)

(assert (=> d!888060 m!3512579))

(declare-fun m!3512581 () Bool)

(assert (=> b!3230901 m!3512581))

(declare-fun m!3512583 () Bool)

(assert (=> b!3230901 m!3512583))

(assert (=> b!3230901 m!3512581))

(assert (=> b!3230901 m!3512583))

(declare-fun m!3512587 () Bool)

(assert (=> b!3230901 m!3512587))

(declare-fun m!3512589 () Bool)

(assert (=> b!3230901 m!3512589))

(assert (=> b!3230897 m!3512589))

(assert (=> d!886588 d!888060))

(declare-fun b!3230903 () Bool)

(declare-fun e!2015047 () List!36487)

(assert (=> b!3230903 (= e!2015047 Nil!36363)))

(declare-fun e!2015048 () List!36487)

(declare-fun b!3230906 () Bool)

(assert (=> b!3230906 (= e!2015048 (++!8760 (list!12980 (left!28315 (c!542434 (_1!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494)))))))) (list!12980 (right!28645 (c!542434 (_1!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494))))))))))))

(declare-fun b!3230905 () Bool)

(assert (=> b!3230905 (= e!2015048 (list!12985 (xs!14026 (c!542434 (_1!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494)))))))))))

(declare-fun b!3230904 () Bool)

(assert (=> b!3230904 (= e!2015047 e!2015048)))

(declare-fun c!543135 () Bool)

(assert (=> b!3230904 (= c!543135 ((_ is Leaf!17152) (c!542434 (_1!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494))))))))))

(declare-fun c!543134 () Bool)

(declare-fun d!888062 () Bool)

(assert (=> d!888062 (= c!543134 ((_ is Empty!10908) (c!542434 (_1!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494))))))))))

(assert (=> d!888062 (= (list!12980 (c!542434 (_1!21028 (lex!2183 thiss!18206 rules!2135 (print!1920 thiss!18206 (singletonSeq!2362 (h!41783 tokens!494))))))) e!2015047)))

(assert (= (and d!888062 c!543134) b!3230903))

(assert (= (and d!888062 (not c!543134)) b!3230904))

(assert (= (and b!3230904 c!543135) b!3230905))

(assert (= (and b!3230904 (not c!543135)) b!3230906))

(declare-fun m!3512607 () Bool)

(assert (=> b!3230906 m!3512607))

(declare-fun m!3512609 () Bool)

(assert (=> b!3230906 m!3512609))

(assert (=> b!3230906 m!3512607))

(assert (=> b!3230906 m!3512609))

(declare-fun m!3512611 () Bool)

(assert (=> b!3230906 m!3512611))

(declare-fun m!3512613 () Bool)

(assert (=> b!3230905 m!3512613))

(assert (=> d!886806 d!888062))

(declare-fun d!888066 () Bool)

(declare-fun lt!1096352 () Int)

(assert (=> d!888066 (>= lt!1096352 0)))

(declare-fun e!2015049 () Int)

(assert (=> d!888066 (= lt!1096352 e!2015049)))

(declare-fun c!543136 () Bool)

(assert (=> d!888066 (= c!543136 ((_ is Nil!36363) (list!12978 (_1!21028 lt!1095182))))))

(assert (=> d!888066 (= (size!27433 (list!12978 (_1!21028 lt!1095182))) lt!1096352)))

(declare-fun b!3230907 () Bool)

(assert (=> b!3230907 (= e!2015049 0)))

(declare-fun b!3230908 () Bool)

(assert (=> b!3230908 (= e!2015049 (+ 1 (size!27433 (t!241332 (list!12978 (_1!21028 lt!1095182))))))))

(assert (= (and d!888066 c!543136) b!3230907))

(assert (= (and d!888066 (not c!543136)) b!3230908))

(declare-fun m!3512619 () Bool)

(assert (=> b!3230908 m!3512619))

(assert (=> d!886944 d!888066))

(assert (=> d!886944 d!887416))

(declare-fun d!888070 () Bool)

(declare-fun lt!1096353 () Int)

(assert (=> d!888070 (= lt!1096353 (size!27433 (list!12980 (c!542434 (_1!21028 lt!1095182)))))))

(assert (=> d!888070 (= lt!1096353 (ite ((_ is Empty!10908) (c!542434 (_1!21028 lt!1095182))) 0 (ite ((_ is Leaf!17152) (c!542434 (_1!21028 lt!1095182))) (csize!22047 (c!542434 (_1!21028 lt!1095182))) (csize!22046 (c!542434 (_1!21028 lt!1095182))))))))

(assert (=> d!888070 (= (size!27434 (c!542434 (_1!21028 lt!1095182))) lt!1096353)))

(declare-fun bs!543364 () Bool)

(assert (= bs!543364 d!888070))

(assert (=> bs!543364 m!3510441))

(assert (=> bs!543364 m!3510441))

(declare-fun m!3512621 () Bool)

(assert (=> bs!543364 m!3512621))

(assert (=> d!886944 d!888070))

(declare-fun b!3230909 () Bool)

(declare-fun e!2015050 () List!36487)

(assert (=> b!3230909 (= e!2015050 Nil!36363)))

(declare-fun b!3230912 () Bool)

(declare-fun e!2015051 () List!36487)

(assert (=> b!3230912 (= e!2015051 (++!8760 (list!12980 (left!28315 (c!542434 lt!1095112))) (list!12980 (right!28645 (c!542434 lt!1095112)))))))

(declare-fun b!3230911 () Bool)

(assert (=> b!3230911 (= e!2015051 (list!12985 (xs!14026 (c!542434 lt!1095112))))))

(declare-fun b!3230910 () Bool)

(assert (=> b!3230910 (= e!2015050 e!2015051)))

(declare-fun c!543138 () Bool)

(assert (=> b!3230910 (= c!543138 ((_ is Leaf!17152) (c!542434 lt!1095112)))))

(declare-fun d!888074 () Bool)

(declare-fun c!543137 () Bool)

(assert (=> d!888074 (= c!543137 ((_ is Empty!10908) (c!542434 lt!1095112)))))

(assert (=> d!888074 (= (list!12980 (c!542434 lt!1095112)) e!2015050)))

(assert (= (and d!888074 c!543137) b!3230909))

(assert (= (and d!888074 (not c!543137)) b!3230910))

(assert (= (and b!3230910 c!543138) b!3230911))

(assert (= (and b!3230910 (not c!543138)) b!3230912))

(assert (=> b!3230912 m!3510807))

(assert (=> b!3230912 m!3509155))

(assert (=> b!3230912 m!3510807))

(assert (=> b!3230912 m!3509155))

(declare-fun m!3512625 () Bool)

(assert (=> b!3230912 m!3512625))

(declare-fun m!3512627 () Bool)

(assert (=> b!3230911 m!3512627))

(assert (=> d!886566 d!888074))

(declare-fun d!888078 () Bool)

(assert (=> d!888078 (= (list!12975 lt!1095303) (list!12979 (c!542433 lt!1095303)))))

(declare-fun bs!543366 () Bool)

(assert (= bs!543366 d!888078))

(declare-fun m!3512629 () Bool)

(assert (=> bs!543366 m!3512629))

(assert (=> d!886728 d!888078))

(assert (=> d!886728 d!887788))

(declare-fun d!888080 () Bool)

(declare-fun c!543140 () Bool)

(assert (=> d!888080 (= c!543140 ((_ is Nil!36361) lt!1095604))))

(declare-fun e!2015053 () (InoxSet C!20236))

(assert (=> d!888080 (= (content!4918 lt!1095604) e!2015053)))

(declare-fun b!3230915 () Bool)

(assert (=> b!3230915 (= e!2015053 ((as const (Array C!20236 Bool)) false))))

(declare-fun b!3230916 () Bool)

(assert (=> b!3230916 (= e!2015053 ((_ map or) (store ((as const (Array C!20236 Bool)) false) (h!41781 lt!1095604) true) (content!4918 (t!241330 lt!1095604))))))

(assert (= (and d!888080 c!543140) b!3230915))

(assert (= (and d!888080 (not c!543140)) b!3230916))

(declare-fun m!3512631 () Bool)

(assert (=> b!3230916 m!3512631))

(declare-fun m!3512633 () Bool)

(assert (=> b!3230916 m!3512633))

(assert (=> d!886914 d!888080))

(assert (=> d!886914 d!888056))

(assert (=> d!886914 d!886934))

(declare-fun d!888082 () Bool)

(declare-fun c!543141 () Bool)

(assert (=> d!888082 (= c!543141 ((_ is Nil!36363) lt!1095516))))

(declare-fun e!2015054 () (InoxSet Token!9898))

(assert (=> d!888082 (= (content!4920 lt!1095516) e!2015054)))

(declare-fun b!3230917 () Bool)

(assert (=> b!3230917 (= e!2015054 ((as const (Array Token!9898 Bool)) false))))

(declare-fun b!3230918 () Bool)

(assert (=> b!3230918 (= e!2015054 ((_ map or) (store ((as const (Array Token!9898 Bool)) false) (h!41783 lt!1095516) true) (content!4920 (t!241332 lt!1095516))))))

(assert (= (and d!888082 c!543141) b!3230917))

(assert (= (and d!888082 (not c!543141)) b!3230918))

(declare-fun m!3512643 () Bool)

(assert (=> b!3230918 m!3512643))

(declare-fun m!3512645 () Bool)

(assert (=> b!3230918 m!3512645))

(assert (=> d!886892 d!888082))

(declare-fun d!888084 () Bool)

(declare-fun c!543142 () Bool)

(assert (=> d!888084 (= c!543142 ((_ is Nil!36363) lt!1095094))))

(declare-fun e!2015055 () (InoxSet Token!9898))

(assert (=> d!888084 (= (content!4920 lt!1095094) e!2015055)))

(declare-fun b!3230919 () Bool)

(assert (=> b!3230919 (= e!2015055 ((as const (Array Token!9898 Bool)) false))))

(declare-fun b!3230920 () Bool)

(assert (=> b!3230920 (= e!2015055 ((_ map or) (store ((as const (Array Token!9898 Bool)) false) (h!41783 lt!1095094) true) (content!4920 (t!241332 lt!1095094))))))

(assert (= (and d!888084 c!543142) b!3230919))

(assert (= (and d!888084 (not c!543142)) b!3230920))

(declare-fun m!3512655 () Bool)

(assert (=> b!3230920 m!3512655))

(assert (=> b!3230920 m!3511451))

(assert (=> d!886892 d!888084))

(declare-fun d!888086 () Bool)

(declare-fun c!543143 () Bool)

(assert (=> d!888086 (= c!543143 ((_ is Node!10907) (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))) (value!170541 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))))))

(declare-fun e!2015056 () Bool)

(assert (=> d!888086 (= (inv!49253 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))) (value!170541 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))) e!2015056)))

(declare-fun b!3230921 () Bool)

(assert (=> b!3230921 (= e!2015056 (inv!49255 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))) (value!170541 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))))))

(declare-fun b!3230922 () Bool)

(declare-fun e!2015057 () Bool)

(assert (=> b!3230922 (= e!2015056 e!2015057)))

(declare-fun res!1315726 () Bool)

(assert (=> b!3230922 (= res!1315726 (not ((_ is Leaf!17151) (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))) (value!170541 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))))))

(assert (=> b!3230922 (=> res!1315726 e!2015057)))

(declare-fun b!3230923 () Bool)

(assert (=> b!3230923 (= e!2015057 (inv!49256 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))) (value!170541 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))))))

(assert (= (and d!888086 c!543143) b!3230921))

(assert (= (and d!888086 (not c!543143)) b!3230922))

(assert (= (and b!3230922 (not res!1315726)) b!3230923))

(declare-fun m!3512665 () Bool)

(assert (=> b!3230921 m!3512665))

(declare-fun m!3512667 () Bool)

(assert (=> b!3230923 m!3512667))

(assert (=> b!3229038 d!888086))

(declare-fun d!888090 () Bool)

(assert (=> d!888090 (= (list!12975 lt!1095336) (list!12979 (c!542433 lt!1095336)))))

(declare-fun bs!543368 () Bool)

(assert (= bs!543368 d!888090))

(declare-fun m!3512671 () Bool)

(assert (=> bs!543368 m!3512671))

(assert (=> d!886768 d!888090))

(declare-fun d!888094 () Bool)

(declare-fun c!543144 () Bool)

(assert (=> d!888094 (= c!543144 ((_ is Cons!36363) (list!12978 (singletonSeq!2362 separatorToken!241))))))

(declare-fun e!2015058 () List!36485)

(assert (=> d!888094 (= (printList!1405 thiss!18206 (list!12978 (singletonSeq!2362 separatorToken!241))) e!2015058)))

(declare-fun b!3230924 () Bool)

(assert (=> b!3230924 (= e!2015058 (++!8756 (list!12975 (charsOf!3282 (h!41783 (list!12978 (singletonSeq!2362 separatorToken!241))))) (printList!1405 thiss!18206 (t!241332 (list!12978 (singletonSeq!2362 separatorToken!241))))))))

(declare-fun b!3230925 () Bool)

(assert (=> b!3230925 (= e!2015058 Nil!36361)))

(assert (= (and d!888094 c!543144) b!3230924))

(assert (= (and d!888094 (not c!543144)) b!3230925))

(declare-fun m!3512675 () Bool)

(assert (=> b!3230924 m!3512675))

(assert (=> b!3230924 m!3512675))

(declare-fun m!3512677 () Bool)

(assert (=> b!3230924 m!3512677))

(declare-fun m!3512679 () Bool)

(assert (=> b!3230924 m!3512679))

(assert (=> b!3230924 m!3512677))

(assert (=> b!3230924 m!3512679))

(declare-fun m!3512681 () Bool)

(assert (=> b!3230924 m!3512681))

(assert (=> d!886768 d!888094))

(assert (=> d!886768 d!886940))

(declare-fun d!888098 () Bool)

(declare-fun lt!1096365 () BalanceConc!21428)

(assert (=> d!888098 (= (list!12975 lt!1096365) (printListTailRec!576 thiss!18206 (dropList!1093 (singletonSeq!2362 separatorToken!241) 0) (list!12975 (BalanceConc!21429 Empty!10907))))))

(declare-fun e!2015062 () BalanceConc!21428)

(assert (=> d!888098 (= lt!1096365 e!2015062)))

(declare-fun c!543146 () Bool)

(assert (=> d!888098 (= c!543146 (>= 0 (size!27429 (singletonSeq!2362 separatorToken!241))))))

(declare-fun e!2015061 () Bool)

(assert (=> d!888098 e!2015061))

(declare-fun res!1315729 () Bool)

(assert (=> d!888098 (=> (not res!1315729) (not e!2015061))))

(assert (=> d!888098 (= res!1315729 (>= 0 0))))

(assert (=> d!888098 (= (printTailRec!1352 thiss!18206 (singletonSeq!2362 separatorToken!241) 0 (BalanceConc!21429 Empty!10907)) lt!1096365)))

(declare-fun b!3230930 () Bool)

(assert (=> b!3230930 (= e!2015061 (<= 0 (size!27429 (singletonSeq!2362 separatorToken!241))))))

(declare-fun b!3230931 () Bool)

(assert (=> b!3230931 (= e!2015062 (BalanceConc!21429 Empty!10907))))

(declare-fun b!3230932 () Bool)

(assert (=> b!3230932 (= e!2015062 (printTailRec!1352 thiss!18206 (singletonSeq!2362 separatorToken!241) (+ 0 1) (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 (singletonSeq!2362 separatorToken!241) 0)))))))

(declare-fun lt!1096362 () List!36487)

(assert (=> b!3230932 (= lt!1096362 (list!12978 (singletonSeq!2362 separatorToken!241)))))

(declare-fun lt!1096361 () Unit!50946)

(assert (=> b!3230932 (= lt!1096361 (lemmaDropApply!1052 lt!1096362 0))))

(assert (=> b!3230932 (= (head!7088 (drop!1876 lt!1096362 0)) (apply!8301 lt!1096362 0))))

(declare-fun lt!1096363 () Unit!50946)

(assert (=> b!3230932 (= lt!1096363 lt!1096361)))

(declare-fun lt!1096364 () List!36487)

(assert (=> b!3230932 (= lt!1096364 (list!12978 (singletonSeq!2362 separatorToken!241)))))

(declare-fun lt!1096360 () Unit!50946)

(assert (=> b!3230932 (= lt!1096360 (lemmaDropTail!936 lt!1096364 0))))

(assert (=> b!3230932 (= (tail!5232 (drop!1876 lt!1096364 0)) (drop!1876 lt!1096364 (+ 0 1)))))

(declare-fun lt!1096366 () Unit!50946)

(assert (=> b!3230932 (= lt!1096366 lt!1096360)))

(assert (= (and d!888098 res!1315729) b!3230930))

(assert (= (and d!888098 c!543146) b!3230931))

(assert (= (and d!888098 (not c!543146)) b!3230932))

(assert (=> d!888098 m!3507561))

(declare-fun m!3512705 () Bool)

(assert (=> d!888098 m!3512705))

(assert (=> d!888098 m!3507561))

(declare-fun m!3512707 () Bool)

(assert (=> d!888098 m!3512707))

(assert (=> d!888098 m!3512707))

(assert (=> d!888098 m!3507199))

(declare-fun m!3512709 () Bool)

(assert (=> d!888098 m!3512709))

(declare-fun m!3512711 () Bool)

(assert (=> d!888098 m!3512711))

(assert (=> d!888098 m!3507199))

(assert (=> b!3230930 m!3507561))

(assert (=> b!3230930 m!3512705))

(assert (=> b!3230932 m!3507561))

(assert (=> b!3230932 m!3507563))

(assert (=> b!3230932 m!3507561))

(declare-fun m!3512719 () Bool)

(assert (=> b!3230932 m!3512719))

(declare-fun m!3512721 () Bool)

(assert (=> b!3230932 m!3512721))

(declare-fun m!3512725 () Bool)

(assert (=> b!3230932 m!3512725))

(declare-fun m!3512727 () Bool)

(assert (=> b!3230932 m!3512727))

(declare-fun m!3512729 () Bool)

(assert (=> b!3230932 m!3512729))

(declare-fun m!3512731 () Bool)

(assert (=> b!3230932 m!3512731))

(declare-fun m!3512733 () Bool)

(assert (=> b!3230932 m!3512733))

(declare-fun m!3512735 () Bool)

(assert (=> b!3230932 m!3512735))

(declare-fun m!3512737 () Bool)

(assert (=> b!3230932 m!3512737))

(assert (=> b!3230932 m!3512729))

(declare-fun m!3512739 () Bool)

(assert (=> b!3230932 m!3512739))

(declare-fun m!3512741 () Bool)

(assert (=> b!3230932 m!3512741))

(assert (=> b!3230932 m!3512735))

(assert (=> b!3230932 m!3512719))

(assert (=> b!3230932 m!3507561))

(assert (=> b!3230932 m!3512733))

(declare-fun m!3512743 () Bool)

(assert (=> b!3230932 m!3512743))

(assert (=> b!3230932 m!3512739))

(assert (=> d!886768 d!888098))

(assert (=> bm!233211 d!887202))

(declare-fun b!3230948 () Bool)

(declare-fun e!2015071 () List!36485)

(assert (=> b!3230948 (= e!2015071 (++!8756 (list!12979 (left!28314 (c!542433 (charsOf!3282 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))) (list!12979 (right!28644 (c!542433 (charsOf!3282 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))))))

(declare-fun b!3230947 () Bool)

(assert (=> b!3230947 (= e!2015071 (list!12981 (xs!14025 (c!542433 (charsOf!3282 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))))))

(declare-fun b!3230946 () Bool)

(declare-fun e!2015070 () List!36485)

(assert (=> b!3230946 (= e!2015070 e!2015071)))

(declare-fun c!543153 () Bool)

(assert (=> b!3230946 (= c!543153 ((_ is Leaf!17151) (c!542433 (charsOf!3282 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))))

(declare-fun d!888106 () Bool)

(declare-fun c!543152 () Bool)

(assert (=> d!888106 (= c!543152 ((_ is Empty!10907) (c!542433 (charsOf!3282 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))))

(assert (=> d!888106 (= (list!12979 (c!542433 (charsOf!3282 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))) e!2015070)))

(declare-fun b!3230945 () Bool)

(assert (=> b!3230945 (= e!2015070 Nil!36361)))

(assert (= (and d!888106 c!543152) b!3230945))

(assert (= (and d!888106 (not c!543152)) b!3230946))

(assert (= (and b!3230946 c!543153) b!3230947))

(assert (= (and b!3230946 (not c!543153)) b!3230948))

(declare-fun m!3512753 () Bool)

(assert (=> b!3230948 m!3512753))

(declare-fun m!3512757 () Bool)

(assert (=> b!3230948 m!3512757))

(assert (=> b!3230948 m!3512753))

(assert (=> b!3230948 m!3512757))

(declare-fun m!3512759 () Bool)

(assert (=> b!3230948 m!3512759))

(declare-fun m!3512761 () Bool)

(assert (=> b!3230947 m!3512761))

(assert (=> d!886924 d!888106))

(assert (=> b!3228794 d!886944))

(assert (=> b!3228488 d!887576))

(assert (=> b!3228488 d!887578))

(declare-fun d!888114 () Bool)

(declare-fun c!543156 () Bool)

(assert (=> d!888114 (= c!543156 ((_ is Nil!36363) tokens!494))))

(declare-fun e!2015074 () (InoxSet Token!9898))

(assert (=> d!888114 (= (content!4920 tokens!494) e!2015074)))

(declare-fun b!3230953 () Bool)

(assert (=> b!3230953 (= e!2015074 ((as const (Array Token!9898 Bool)) false))))

(declare-fun b!3230954 () Bool)

(assert (=> b!3230954 (= e!2015074 ((_ map or) (store ((as const (Array Token!9898 Bool)) false) (h!41783 tokens!494) true) (content!4920 (t!241332 tokens!494))))))

(assert (= (and d!888114 c!543156) b!3230953))

(assert (= (and d!888114 (not c!543156)) b!3230954))

(declare-fun m!3512767 () Bool)

(assert (=> b!3230954 m!3512767))

(declare-fun m!3512771 () Bool)

(assert (=> b!3230954 m!3512771))

(assert (=> d!886746 d!888114))

(declare-fun d!888116 () Bool)

(declare-fun lt!1096368 () Bool)

(assert (=> d!888116 (= lt!1096368 (select (content!4920 (t!241332 tokens!494)) (h!41783 tokens!494)))))

(declare-fun e!2015076 () Bool)

(assert (=> d!888116 (= lt!1096368 e!2015076)))

(declare-fun res!1315732 () Bool)

(assert (=> d!888116 (=> (not res!1315732) (not e!2015076))))

(assert (=> d!888116 (= res!1315732 ((_ is Cons!36363) (t!241332 tokens!494)))))

(assert (=> d!888116 (= (contains!6527 (t!241332 tokens!494) (h!41783 tokens!494)) lt!1096368)))

(declare-fun b!3230955 () Bool)

(declare-fun e!2015075 () Bool)

(assert (=> b!3230955 (= e!2015076 e!2015075)))

(declare-fun res!1315733 () Bool)

(assert (=> b!3230955 (=> res!1315733 e!2015075)))

(assert (=> b!3230955 (= res!1315733 (= (h!41783 (t!241332 tokens!494)) (h!41783 tokens!494)))))

(declare-fun b!3230956 () Bool)

(assert (=> b!3230956 (= e!2015075 (contains!6527 (t!241332 (t!241332 tokens!494)) (h!41783 tokens!494)))))

(assert (= (and d!888116 res!1315732) b!3230955))

(assert (= (and b!3230955 (not res!1315733)) b!3230956))

(assert (=> d!888116 m!3512771))

(declare-fun m!3512777 () Bool)

(assert (=> d!888116 m!3512777))

(declare-fun m!3512779 () Bool)

(assert (=> b!3230956 m!3512779))

(assert (=> b!3228793 d!888116))

(declare-fun bs!543373 () Bool)

(declare-fun d!888122 () Bool)

(assert (= bs!543373 (and d!888122 d!886558)))

(declare-fun lambda!118272 () Int)

(assert (=> bs!543373 (= (= (toValue!7374 (transformation!5266 (h!41782 (t!241331 rules!2135)))) (toValue!7374 (transformation!5266 (rule!7724 (h!41783 tokens!494))))) (= lambda!118272 lambda!118220))))

(declare-fun bs!543374 () Bool)

(assert (= bs!543374 (and d!888122 d!886732)))

(assert (=> bs!543374 (= (= (toValue!7374 (transformation!5266 (h!41782 (t!241331 rules!2135)))) (toValue!7374 (transformation!5266 (h!41782 rules!2135)))) (= lambda!118272 lambda!118235))))

(declare-fun bs!543375 () Bool)

(assert (= bs!543375 (and d!888122 d!886790)))

(assert (=> bs!543375 (= (= (toValue!7374 (transformation!5266 (h!41782 (t!241331 rules!2135)))) (toValue!7374 (transformation!5266 (rule!7724 separatorToken!241)))) (= lambda!118272 lambda!118240))))

(declare-fun bs!543376 () Bool)

(assert (= bs!543376 (and d!888122 d!887584)))

(assert (=> bs!543376 (= (= (toValue!7374 (transformation!5266 (h!41782 (t!241331 rules!2135)))) (toValue!7374 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494)))))) (= lambda!118272 lambda!118267))))

(assert (=> d!888122 true))

(assert (=> d!888122 (< (dynLambda!14791 order!18761 (toValue!7374 (transformation!5266 (h!41782 (t!241331 rules!2135))))) (dynLambda!14796 order!18767 lambda!118272))))

(assert (=> d!888122 (= (equivClasses!2070 (toChars!7233 (transformation!5266 (h!41782 (t!241331 rules!2135)))) (toValue!7374 (transformation!5266 (h!41782 (t!241331 rules!2135))))) (Forall2!875 lambda!118272))))

(declare-fun bs!543377 () Bool)

(assert (= bs!543377 d!888122))

(declare-fun m!3512789 () Bool)

(assert (=> bs!543377 m!3512789))

(assert (=> b!3228490 d!888122))

(declare-fun b!3230969 () Bool)

(declare-fun e!2015082 () List!36485)

(assert (=> b!3230969 (= e!2015082 (++!8756 (list!12979 (left!28314 (c!542433 lt!1095176))) (list!12979 (right!28644 (c!542433 lt!1095176)))))))

(declare-fun b!3230968 () Bool)

(assert (=> b!3230968 (= e!2015082 (list!12981 (xs!14025 (c!542433 lt!1095176))))))

(declare-fun b!3230967 () Bool)

(declare-fun e!2015081 () List!36485)

(assert (=> b!3230967 (= e!2015081 e!2015082)))

(declare-fun c!543160 () Bool)

(assert (=> b!3230967 (= c!543160 ((_ is Leaf!17151) (c!542433 lt!1095176)))))

(declare-fun d!888128 () Bool)

(declare-fun c!543159 () Bool)

(assert (=> d!888128 (= c!543159 ((_ is Empty!10907) (c!542433 lt!1095176)))))

(assert (=> d!888128 (= (list!12979 (c!542433 lt!1095176)) e!2015081)))

(declare-fun b!3230966 () Bool)

(assert (=> b!3230966 (= e!2015081 Nil!36361)))

(assert (= (and d!888128 c!543159) b!3230966))

(assert (= (and d!888128 (not c!543159)) b!3230967))

(assert (= (and b!3230967 c!543160) b!3230968))

(assert (= (and b!3230967 (not c!543160)) b!3230969))

(declare-fun m!3512805 () Bool)

(assert (=> b!3230969 m!3512805))

(declare-fun m!3512807 () Bool)

(assert (=> b!3230969 m!3512807))

(assert (=> b!3230969 m!3512805))

(assert (=> b!3230969 m!3512807))

(declare-fun m!3512809 () Bool)

(assert (=> b!3230969 m!3512809))

(declare-fun m!3512811 () Bool)

(assert (=> b!3230968 m!3512811))

(assert (=> d!886738 d!888128))

(declare-fun b!3230974 () Bool)

(declare-fun e!2015086 () List!36487)

(assert (=> b!3230974 (= e!2015086 (list!12980 (c!542434 lt!1095069)))))

(declare-fun b!3230975 () Bool)

(assert (=> b!3230975 (= e!2015086 (drop!1876 (t!241332 (list!12980 (c!542434 lt!1095069))) (- 0 1)))))

(declare-fun b!3230976 () Bool)

(declare-fun e!2015089 () Int)

(assert (=> b!3230976 (= e!2015089 0)))

(declare-fun b!3230977 () Bool)

(declare-fun e!2015087 () List!36487)

(assert (=> b!3230977 (= e!2015087 Nil!36363)))

(declare-fun b!3230978 () Bool)

(declare-fun e!2015085 () Bool)

(declare-fun lt!1096372 () List!36487)

(declare-fun e!2015088 () Int)

(assert (=> b!3230978 (= e!2015085 (= (size!27433 lt!1096372) e!2015088))))

(declare-fun c!543165 () Bool)

(assert (=> b!3230978 (= c!543165 (<= 0 0))))

(declare-fun b!3230979 () Bool)

(declare-fun call!233357 () Int)

(assert (=> b!3230979 (= e!2015089 (- call!233357 0))))

(declare-fun b!3230980 () Bool)

(assert (=> b!3230980 (= e!2015088 call!233357)))

(declare-fun bm!233352 () Bool)

(assert (=> bm!233352 (= call!233357 (size!27433 (list!12980 (c!542434 lt!1095069))))))

(declare-fun d!888132 () Bool)

(assert (=> d!888132 e!2015085))

(declare-fun res!1315739 () Bool)

(assert (=> d!888132 (=> (not res!1315739) (not e!2015085))))

(assert (=> d!888132 (= res!1315739 (= ((_ map implies) (content!4920 lt!1096372) (content!4920 (list!12980 (c!542434 lt!1095069)))) ((as const (InoxSet Token!9898)) true)))))

(assert (=> d!888132 (= lt!1096372 e!2015087)))

(declare-fun c!543163 () Bool)

(assert (=> d!888132 (= c!543163 ((_ is Nil!36363) (list!12980 (c!542434 lt!1095069))))))

(assert (=> d!888132 (= (drop!1876 (list!12980 (c!542434 lt!1095069)) 0) lt!1096372)))

(declare-fun b!3230981 () Bool)

(assert (=> b!3230981 (= e!2015088 e!2015089)))

(declare-fun c!543164 () Bool)

(assert (=> b!3230981 (= c!543164 (>= 0 call!233357))))

(declare-fun b!3230982 () Bool)

(assert (=> b!3230982 (= e!2015087 e!2015086)))

(declare-fun c!543166 () Bool)

(assert (=> b!3230982 (= c!543166 (<= 0 0))))

(assert (= (and d!888132 c!543163) b!3230977))

(assert (= (and d!888132 (not c!543163)) b!3230982))

(assert (= (and b!3230982 c!543166) b!3230974))

(assert (= (and b!3230982 (not c!543166)) b!3230975))

(assert (= (and d!888132 res!1315739) b!3230978))

(assert (= (and b!3230978 c!543165) b!3230980))

(assert (= (and b!3230978 (not c!543165)) b!3230981))

(assert (= (and b!3230981 c!543164) b!3230976))

(assert (= (and b!3230981 (not c!543164)) b!3230979))

(assert (= (or b!3230980 b!3230981 b!3230979) bm!233352))

(declare-fun m!3512829 () Bool)

(assert (=> b!3230975 m!3512829))

(declare-fun m!3512831 () Bool)

(assert (=> b!3230978 m!3512831))

(assert (=> bm!233352 m!3507739))

(assert (=> bm!233352 m!3510669))

(declare-fun m!3512833 () Bool)

(assert (=> d!888132 m!3512833))

(assert (=> d!888132 m!3507739))

(declare-fun m!3512835 () Bool)

(assert (=> d!888132 m!3512835))

(assert (=> d!886702 d!888132))

(assert (=> d!886702 d!887410))

(declare-fun b!3230987 () Bool)

(declare-fun e!2015093 () List!36485)

(assert (=> b!3230987 (= e!2015093 (list!12975 (charsOf!3282 separatorToken!241)))))

(declare-fun b!3230988 () Bool)

(assert (=> b!3230988 (= e!2015093 (Cons!36361 (h!41781 (t!241330 (t!241330 lt!1095073))) (++!8756 (t!241330 (t!241330 (t!241330 lt!1095073))) (list!12975 (charsOf!3282 separatorToken!241)))))))

(declare-fun b!3230990 () Bool)

(declare-fun lt!1096374 () List!36485)

(declare-fun e!2015092 () Bool)

(assert (=> b!3230990 (= e!2015092 (or (not (= (list!12975 (charsOf!3282 separatorToken!241)) Nil!36361)) (= lt!1096374 (t!241330 (t!241330 lt!1095073)))))))

(declare-fun b!3230989 () Bool)

(declare-fun res!1315740 () Bool)

(assert (=> b!3230989 (=> (not res!1315740) (not e!2015092))))

(assert (=> b!3230989 (= res!1315740 (= (size!27430 lt!1096374) (+ (size!27430 (t!241330 (t!241330 lt!1095073))) (size!27430 (list!12975 (charsOf!3282 separatorToken!241))))))))

(declare-fun d!888138 () Bool)

(assert (=> d!888138 e!2015092))

(declare-fun res!1315741 () Bool)

(assert (=> d!888138 (=> (not res!1315741) (not e!2015092))))

(assert (=> d!888138 (= res!1315741 (= (content!4918 lt!1096374) ((_ map or) (content!4918 (t!241330 (t!241330 lt!1095073))) (content!4918 (list!12975 (charsOf!3282 separatorToken!241))))))))

(assert (=> d!888138 (= lt!1096374 e!2015093)))

(declare-fun c!543169 () Bool)

(assert (=> d!888138 (= c!543169 ((_ is Nil!36361) (t!241330 (t!241330 lt!1095073))))))

(assert (=> d!888138 (= (++!8756 (t!241330 (t!241330 lt!1095073)) (list!12975 (charsOf!3282 separatorToken!241))) lt!1096374)))

(assert (= (and d!888138 c!543169) b!3230987))

(assert (= (and d!888138 (not c!543169)) b!3230988))

(assert (= (and d!888138 res!1315741) b!3230989))

(assert (= (and b!3230989 res!1315740) b!3230990))

(assert (=> b!3230988 m!3507149))

(declare-fun m!3512841 () Bool)

(assert (=> b!3230988 m!3512841))

(declare-fun m!3512843 () Bool)

(assert (=> b!3230989 m!3512843))

(assert (=> b!3230989 m!3509973))

(assert (=> b!3230989 m!3507149))

(assert (=> b!3230989 m!3507521))

(declare-fun m!3512845 () Bool)

(assert (=> d!888138 m!3512845))

(assert (=> d!888138 m!3512545))

(assert (=> d!888138 m!3507149))

(assert (=> d!888138 m!3507527))

(assert (=> b!3229029 d!888138))

(declare-fun d!888142 () Bool)

(declare-fun lt!1096382 () Int)

(assert (=> d!888142 (>= lt!1096382 0)))

(declare-fun e!2015096 () Int)

(assert (=> d!888142 (= lt!1096382 e!2015096)))

(declare-fun c!543171 () Bool)

(assert (=> d!888142 (= c!543171 ((_ is Nil!36361) (t!241330 (originalCharacters!5980 separatorToken!241))))))

(assert (=> d!888142 (= (size!27430 (t!241330 (originalCharacters!5980 separatorToken!241))) lt!1096382)))

(declare-fun b!3230994 () Bool)

(assert (=> b!3230994 (= e!2015096 0)))

(declare-fun b!3230995 () Bool)

(assert (=> b!3230995 (= e!2015096 (+ 1 (size!27430 (t!241330 (t!241330 (originalCharacters!5980 separatorToken!241))))))))

(assert (= (and d!888142 c!543171) b!3230994))

(assert (= (and d!888142 (not c!543171)) b!3230995))

(declare-fun m!3512847 () Bool)

(assert (=> b!3230995 m!3512847))

(assert (=> b!3228827 d!888142))

(declare-fun d!888144 () Bool)

(declare-fun c!543172 () Bool)

(assert (=> d!888144 (= c!543172 ((_ is Node!10907) (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494)))))))))

(declare-fun e!2015097 () Bool)

(assert (=> d!888144 (= (inv!49253 (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494)))))) e!2015097)))

(declare-fun b!3230996 () Bool)

(assert (=> b!3230996 (= e!2015097 (inv!49255 (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494)))))))))

(declare-fun b!3230997 () Bool)

(declare-fun e!2015098 () Bool)

(assert (=> b!3230997 (= e!2015097 e!2015098)))

(declare-fun res!1315743 () Bool)

(assert (=> b!3230997 (= res!1315743 (not ((_ is Leaf!17151) (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))))))))

(assert (=> b!3230997 (=> res!1315743 e!2015098)))

(declare-fun b!3230998 () Bool)

(assert (=> b!3230998 (= e!2015098 (inv!49256 (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494)))))))))

(assert (= (and d!888144 c!543172) b!3230996))

(assert (= (and d!888144 (not c!543172)) b!3230997))

(assert (= (and b!3230997 (not res!1315743)) b!3230998))

(declare-fun m!3512849 () Bool)

(assert (=> b!3230996 m!3512849))

(declare-fun m!3512851 () Bool)

(assert (=> b!3230998 m!3512851))

(assert (=> b!3229090 d!888144))

(declare-fun d!888146 () Bool)

(declare-fun c!543173 () Bool)

(assert (=> d!888146 (= c!543173 ((_ is Node!10907) (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494)))))))))

(declare-fun e!2015099 () Bool)

(assert (=> d!888146 (= (inv!49253 (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494)))))) e!2015099)))

(declare-fun b!3230999 () Bool)

(assert (=> b!3230999 (= e!2015099 (inv!49255 (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494)))))))))

(declare-fun b!3231000 () Bool)

(declare-fun e!2015100 () Bool)

(assert (=> b!3231000 (= e!2015099 e!2015100)))

(declare-fun res!1315744 () Bool)

(assert (=> b!3231000 (= res!1315744 (not ((_ is Leaf!17151) (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))))))))

(assert (=> b!3231000 (=> res!1315744 e!2015100)))

(declare-fun b!3231001 () Bool)

(assert (=> b!3231001 (= e!2015100 (inv!49256 (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494)))))))))

(assert (= (and d!888146 c!543173) b!3230999))

(assert (= (and d!888146 (not c!543173)) b!3231000))

(assert (= (and b!3231000 (not res!1315744)) b!3231001))

(declare-fun m!3512859 () Bool)

(assert (=> b!3230999 m!3512859))

(declare-fun m!3512861 () Bool)

(assert (=> b!3231001 m!3512861))

(assert (=> b!3229090 d!888146))

(declare-fun d!888148 () Bool)

(declare-fun lt!1096383 () Token!9898)

(assert (=> d!888148 (= lt!1096383 (apply!8301 (list!12978 lt!1095069) (+ 0 1)))))

(assert (=> d!888148 (= lt!1096383 (apply!8303 (c!542434 lt!1095069) (+ 0 1)))))

(declare-fun e!2015101 () Bool)

(assert (=> d!888148 e!2015101))

(declare-fun res!1315745 () Bool)

(assert (=> d!888148 (=> (not res!1315745) (not e!2015101))))

(assert (=> d!888148 (= res!1315745 (<= 0 (+ 0 1)))))

(assert (=> d!888148 (= (apply!8300 lt!1095069 (+ 0 1)) lt!1096383)))

(declare-fun b!3231002 () Bool)

(assert (=> b!3231002 (= e!2015101 (< (+ 0 1) (size!27429 lt!1095069)))))

(assert (= (and d!888148 res!1315745) b!3231002))

(assert (=> d!888148 m!3507205))

(assert (=> d!888148 m!3507205))

(declare-fun m!3512885 () Bool)

(assert (=> d!888148 m!3512885))

(declare-fun m!3512887 () Bool)

(assert (=> d!888148 m!3512887))

(assert (=> b!3231002 m!3507195))

(assert (=> b!3229005 d!888148))

(declare-fun b!3231003 () Bool)

(declare-fun e!2015103 () List!36487)

(assert (=> b!3231003 (= e!2015103 lt!1095556)))

(declare-fun b!3231004 () Bool)

(assert (=> b!3231004 (= e!2015103 (drop!1876 (t!241332 lt!1095556) (- (+ 0 1) 1)))))

(declare-fun b!3231005 () Bool)

(declare-fun e!2015106 () Int)

(assert (=> b!3231005 (= e!2015106 0)))

(declare-fun b!3231006 () Bool)

(declare-fun e!2015104 () List!36487)

(assert (=> b!3231006 (= e!2015104 Nil!36363)))

(declare-fun b!3231007 () Bool)

(declare-fun e!2015102 () Bool)

(declare-fun lt!1096384 () List!36487)

(declare-fun e!2015105 () Int)

(assert (=> b!3231007 (= e!2015102 (= (size!27433 lt!1096384) e!2015105))))

(declare-fun c!543176 () Bool)

(assert (=> b!3231007 (= c!543176 (<= (+ 0 1) 0))))

(declare-fun b!3231008 () Bool)

(declare-fun call!233358 () Int)

(assert (=> b!3231008 (= e!2015106 (- call!233358 (+ 0 1)))))

(declare-fun b!3231009 () Bool)

(assert (=> b!3231009 (= e!2015105 call!233358)))

(declare-fun bm!233353 () Bool)

(assert (=> bm!233353 (= call!233358 (size!27433 lt!1095556))))

(declare-fun d!888150 () Bool)

(assert (=> d!888150 e!2015102))

(declare-fun res!1315746 () Bool)

(assert (=> d!888150 (=> (not res!1315746) (not e!2015102))))

(assert (=> d!888150 (= res!1315746 (= ((_ map implies) (content!4920 lt!1096384) (content!4920 lt!1095556)) ((as const (InoxSet Token!9898)) true)))))

(assert (=> d!888150 (= lt!1096384 e!2015104)))

(declare-fun c!543174 () Bool)

(assert (=> d!888150 (= c!543174 ((_ is Nil!36363) lt!1095556))))

(assert (=> d!888150 (= (drop!1876 lt!1095556 (+ 0 1)) lt!1096384)))

(declare-fun b!3231010 () Bool)

(assert (=> b!3231010 (= e!2015105 e!2015106)))

(declare-fun c!543175 () Bool)

(assert (=> b!3231010 (= c!543175 (>= (+ 0 1) call!233358))))

(declare-fun b!3231011 () Bool)

(assert (=> b!3231011 (= e!2015104 e!2015103)))

(declare-fun c!543177 () Bool)

(assert (=> b!3231011 (= c!543177 (<= (+ 0 1) 0))))

(assert (= (and d!888150 c!543174) b!3231006))

(assert (= (and d!888150 (not c!543174)) b!3231011))

(assert (= (and b!3231011 c!543177) b!3231003))

(assert (= (and b!3231011 (not c!543177)) b!3231004))

(assert (= (and d!888150 res!1315746) b!3231007))

(assert (= (and b!3231007 c!543176) b!3231009))

(assert (= (and b!3231007 (not c!543176)) b!3231010))

(assert (= (and b!3231010 c!543175) b!3231005))

(assert (= (and b!3231010 (not c!543175)) b!3231008))

(assert (= (or b!3231009 b!3231010 b!3231008) bm!233353))

(declare-fun m!3512895 () Bool)

(assert (=> b!3231004 m!3512895))

(declare-fun m!3512897 () Bool)

(assert (=> b!3231007 m!3512897))

(declare-fun m!3512899 () Bool)

(assert (=> bm!233353 m!3512899))

(declare-fun m!3512901 () Bool)

(assert (=> d!888150 m!3512901))

(declare-fun m!3512903 () Bool)

(assert (=> d!888150 m!3512903))

(assert (=> b!3229005 d!888150))

(declare-fun d!888154 () Bool)

(assert (=> d!888154 (= (tail!5232 (drop!1876 lt!1095556 (+ 0 1))) (t!241332 (drop!1876 lt!1095556 (+ 0 1))))))

(assert (=> b!3229005 d!888154))

(declare-fun b!3231021 () Bool)

(declare-fun e!2015113 () List!36487)

(assert (=> b!3231021 (= e!2015113 lt!1095556)))

(declare-fun b!3231022 () Bool)

(assert (=> b!3231022 (= e!2015113 (drop!1876 (t!241332 lt!1095556) (- (+ 0 1 1) 1)))))

(declare-fun b!3231023 () Bool)

(declare-fun e!2015116 () Int)

(assert (=> b!3231023 (= e!2015116 0)))

(declare-fun b!3231024 () Bool)

(declare-fun e!2015114 () List!36487)

(assert (=> b!3231024 (= e!2015114 Nil!36363)))

(declare-fun b!3231025 () Bool)

(declare-fun e!2015112 () Bool)

(declare-fun lt!1096386 () List!36487)

(declare-fun e!2015115 () Int)

(assert (=> b!3231025 (= e!2015112 (= (size!27433 lt!1096386) e!2015115))))

(declare-fun c!543184 () Bool)

(assert (=> b!3231025 (= c!543184 (<= (+ 0 1 1) 0))))

(declare-fun b!3231026 () Bool)

(declare-fun call!233360 () Int)

(assert (=> b!3231026 (= e!2015116 (- call!233360 (+ 0 1 1)))))

(declare-fun b!3231027 () Bool)

(assert (=> b!3231027 (= e!2015115 call!233360)))

(declare-fun bm!233355 () Bool)

(assert (=> bm!233355 (= call!233360 (size!27433 lt!1095556))))

(declare-fun d!888156 () Bool)

(assert (=> d!888156 e!2015112))

(declare-fun res!1315748 () Bool)

(assert (=> d!888156 (=> (not res!1315748) (not e!2015112))))

(assert (=> d!888156 (= res!1315748 (= ((_ map implies) (content!4920 lt!1096386) (content!4920 lt!1095556)) ((as const (InoxSet Token!9898)) true)))))

(assert (=> d!888156 (= lt!1096386 e!2015114)))

(declare-fun c!543182 () Bool)

(assert (=> d!888156 (= c!543182 ((_ is Nil!36363) lt!1095556))))

(assert (=> d!888156 (= (drop!1876 lt!1095556 (+ 0 1 1)) lt!1096386)))

(declare-fun b!3231028 () Bool)

(assert (=> b!3231028 (= e!2015115 e!2015116)))

(declare-fun c!543183 () Bool)

(assert (=> b!3231028 (= c!543183 (>= (+ 0 1 1) call!233360))))

(declare-fun b!3231029 () Bool)

(assert (=> b!3231029 (= e!2015114 e!2015113)))

(declare-fun c!543185 () Bool)

(assert (=> b!3231029 (= c!543185 (<= (+ 0 1 1) 0))))

(assert (= (and d!888156 c!543182) b!3231024))

(assert (= (and d!888156 (not c!543182)) b!3231029))

(assert (= (and b!3231029 c!543185) b!3231021))

(assert (= (and b!3231029 (not c!543185)) b!3231022))

(assert (= (and d!888156 res!1315748) b!3231025))

(assert (= (and b!3231025 c!543184) b!3231027))

(assert (= (and b!3231025 (not c!543184)) b!3231028))

(assert (= (and b!3231028 c!543183) b!3231023))

(assert (= (and b!3231028 (not c!543183)) b!3231026))

(assert (= (or b!3231027 b!3231028 b!3231026) bm!233355))

(declare-fun m!3512915 () Bool)

(assert (=> b!3231022 m!3512915))

(declare-fun m!3512917 () Bool)

(assert (=> b!3231025 m!3512917))

(assert (=> bm!233355 m!3512899))

(declare-fun m!3512919 () Bool)

(assert (=> d!888156 m!3512919))

(assert (=> d!888156 m!3512903))

(assert (=> b!3229005 d!888156))

(declare-fun d!888160 () Bool)

(declare-fun lt!1096388 () Token!9898)

(assert (=> d!888160 (contains!6527 lt!1095554 lt!1096388)))

(declare-fun e!2015117 () Token!9898)

(assert (=> d!888160 (= lt!1096388 e!2015117)))

(declare-fun c!543186 () Bool)

(assert (=> d!888160 (= c!543186 (= (+ 0 1) 0))))

(declare-fun e!2015118 () Bool)

(assert (=> d!888160 e!2015118))

(declare-fun res!1315749 () Bool)

(assert (=> d!888160 (=> (not res!1315749) (not e!2015118))))

(assert (=> d!888160 (= res!1315749 (<= 0 (+ 0 1)))))

(assert (=> d!888160 (= (apply!8301 lt!1095554 (+ 0 1)) lt!1096388)))

(declare-fun b!3231030 () Bool)

(assert (=> b!3231030 (= e!2015118 (< (+ 0 1) (size!27433 lt!1095554)))))

(declare-fun b!3231031 () Bool)

(assert (=> b!3231031 (= e!2015117 (head!7088 lt!1095554))))

(declare-fun b!3231032 () Bool)

(assert (=> b!3231032 (= e!2015117 (apply!8301 (tail!5232 lt!1095554) (- (+ 0 1) 1)))))

(assert (= (and d!888160 res!1315749) b!3231030))

(assert (= (and d!888160 c!543186) b!3231031))

(assert (= (and d!888160 (not c!543186)) b!3231032))

(declare-fun m!3512921 () Bool)

(assert (=> d!888160 m!3512921))

(declare-fun m!3512927 () Bool)

(assert (=> b!3231030 m!3512927))

(declare-fun m!3512929 () Bool)

(assert (=> b!3231031 m!3512929))

(declare-fun m!3512931 () Bool)

(assert (=> b!3231032 m!3512931))

(assert (=> b!3231032 m!3512931))

(declare-fun m!3512933 () Bool)

(assert (=> b!3231032 m!3512933))

(assert (=> b!3229005 d!888160))

(declare-fun d!888162 () Bool)

(assert (=> d!888162 (= (head!7088 (drop!1876 lt!1095554 (+ 0 1))) (apply!8301 lt!1095554 (+ 0 1)))))

(declare-fun lt!1096389 () Unit!50946)

(assert (=> d!888162 (= lt!1096389 (choose!18833 lt!1095554 (+ 0 1)))))

(declare-fun e!2015120 () Bool)

(assert (=> d!888162 e!2015120))

(declare-fun res!1315750 () Bool)

(assert (=> d!888162 (=> (not res!1315750) (not e!2015120))))

(assert (=> d!888162 (= res!1315750 (>= (+ 0 1) 0))))

(assert (=> d!888162 (= (lemmaDropApply!1052 lt!1095554 (+ 0 1)) lt!1096389)))

(declare-fun b!3231034 () Bool)

(assert (=> b!3231034 (= e!2015120 (< (+ 0 1) (size!27433 lt!1095554)))))

(assert (= (and d!888162 res!1315750) b!3231034))

(assert (=> d!888162 m!3508707))

(assert (=> d!888162 m!3508707))

(assert (=> d!888162 m!3508709))

(assert (=> d!888162 m!3508705))

(declare-fun m!3512939 () Bool)

(assert (=> d!888162 m!3512939))

(assert (=> b!3231034 m!3512927))

(assert (=> b!3229005 d!888162))

(declare-fun d!888166 () Bool)

(declare-fun lt!1096396 () BalanceConc!21428)

(assert (=> d!888166 (= (list!12975 lt!1096396) (printListTailRec!576 thiss!18206 (dropList!1093 lt!1095069 (+ 0 1 1)) (list!12975 (++!8757 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095069 0))) (charsOf!3282 (apply!8300 lt!1095069 (+ 0 1)))))))))

(declare-fun e!2015123 () BalanceConc!21428)

(assert (=> d!888166 (= lt!1096396 e!2015123)))

(declare-fun c!543187 () Bool)

(assert (=> d!888166 (= c!543187 (>= (+ 0 1 1) (size!27429 lt!1095069)))))

(declare-fun e!2015122 () Bool)

(assert (=> d!888166 e!2015122))

(declare-fun res!1315752 () Bool)

(assert (=> d!888166 (=> (not res!1315752) (not e!2015122))))

(assert (=> d!888166 (= res!1315752 (>= (+ 0 1 1) 0))))

(assert (=> d!888166 (= (printTailRec!1352 thiss!18206 lt!1095069 (+ 0 1 1) (++!8757 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095069 0))) (charsOf!3282 (apply!8300 lt!1095069 (+ 0 1))))) lt!1096396)))

(declare-fun b!3231036 () Bool)

(assert (=> b!3231036 (= e!2015122 (<= (+ 0 1 1) (size!27429 lt!1095069)))))

(declare-fun b!3231037 () Bool)

(assert (=> b!3231037 (= e!2015123 (++!8757 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095069 0))) (charsOf!3282 (apply!8300 lt!1095069 (+ 0 1)))))))

(declare-fun b!3231038 () Bool)

(assert (=> b!3231038 (= e!2015123 (printTailRec!1352 thiss!18206 lt!1095069 (+ 0 1 1 1) (++!8757 (++!8757 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095069 0))) (charsOf!3282 (apply!8300 lt!1095069 (+ 0 1)))) (charsOf!3282 (apply!8300 lt!1095069 (+ 0 1 1))))))))

(declare-fun lt!1096393 () List!36487)

(assert (=> b!3231038 (= lt!1096393 (list!12978 lt!1095069))))

(declare-fun lt!1096392 () Unit!50946)

(assert (=> b!3231038 (= lt!1096392 (lemmaDropApply!1052 lt!1096393 (+ 0 1 1)))))

(assert (=> b!3231038 (= (head!7088 (drop!1876 lt!1096393 (+ 0 1 1))) (apply!8301 lt!1096393 (+ 0 1 1)))))

(declare-fun lt!1096394 () Unit!50946)

(assert (=> b!3231038 (= lt!1096394 lt!1096392)))

(declare-fun lt!1096395 () List!36487)

(assert (=> b!3231038 (= lt!1096395 (list!12978 lt!1095069))))

(declare-fun lt!1096391 () Unit!50946)

(assert (=> b!3231038 (= lt!1096391 (lemmaDropTail!936 lt!1096395 (+ 0 1 1)))))

(assert (=> b!3231038 (= (tail!5232 (drop!1876 lt!1096395 (+ 0 1 1))) (drop!1876 lt!1096395 (+ 0 1 1 1)))))

(declare-fun lt!1096397 () Unit!50946)

(assert (=> b!3231038 (= lt!1096397 lt!1096391)))

(assert (= (and d!888166 res!1315752) b!3231036))

(assert (= (and d!888166 c!543187) b!3231037))

(assert (= (and d!888166 (not c!543187)) b!3231038))

(assert (=> d!888166 m!3507195))

(declare-fun m!3512955 () Bool)

(assert (=> d!888166 m!3512955))

(assert (=> d!888166 m!3512955))

(declare-fun m!3512957 () Bool)

(assert (=> d!888166 m!3512957))

(declare-fun m!3512959 () Bool)

(assert (=> d!888166 m!3512959))

(declare-fun m!3512961 () Bool)

(assert (=> d!888166 m!3512961))

(assert (=> d!888166 m!3508699))

(assert (=> d!888166 m!3512957))

(assert (=> b!3231036 m!3507195))

(assert (=> b!3231038 m!3507205))

(declare-fun m!3512967 () Bool)

(assert (=> b!3231038 m!3512967))

(declare-fun m!3512973 () Bool)

(assert (=> b!3231038 m!3512973))

(declare-fun m!3512975 () Bool)

(assert (=> b!3231038 m!3512975))

(declare-fun m!3512977 () Bool)

(assert (=> b!3231038 m!3512977))

(declare-fun m!3512979 () Bool)

(assert (=> b!3231038 m!3512979))

(declare-fun m!3512981 () Bool)

(assert (=> b!3231038 m!3512981))

(declare-fun m!3512983 () Bool)

(assert (=> b!3231038 m!3512983))

(declare-fun m!3512985 () Bool)

(assert (=> b!3231038 m!3512985))

(declare-fun m!3512987 () Bool)

(assert (=> b!3231038 m!3512987))

(assert (=> b!3231038 m!3512979))

(declare-fun m!3512989 () Bool)

(assert (=> b!3231038 m!3512989))

(declare-fun m!3512991 () Bool)

(assert (=> b!3231038 m!3512991))

(assert (=> b!3231038 m!3508699))

(assert (=> b!3231038 m!3512985))

(assert (=> b!3231038 m!3512967))

(assert (=> b!3231038 m!3512983))

(declare-fun m!3512993 () Bool)

(assert (=> b!3231038 m!3512993))

(assert (=> b!3231038 m!3512989))

(assert (=> b!3229005 d!888166))

(declare-fun d!888176 () Bool)

(declare-fun lt!1096401 () BalanceConc!21428)

(assert (=> d!888176 (= (list!12975 lt!1096401) (originalCharacters!5980 (apply!8300 lt!1095069 (+ 0 1))))))

(assert (=> d!888176 (= lt!1096401 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 (+ 0 1))))) (value!170541 (apply!8300 lt!1095069 (+ 0 1)))))))

(assert (=> d!888176 (= (charsOf!3282 (apply!8300 lt!1095069 (+ 0 1))) lt!1096401)))

(declare-fun b_lambda!89001 () Bool)

(assert (=> (not b_lambda!89001) (not d!888176)))

(declare-fun t!241701 () Bool)

(declare-fun tb!160157 () Bool)

(assert (=> (and b!3228076 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 (+ 0 1)))))) t!241701) tb!160157))

(declare-fun b!3231061 () Bool)

(declare-fun e!2015137 () Bool)

(declare-fun tp!1017624 () Bool)

(assert (=> b!3231061 (= e!2015137 (and (inv!49253 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 (+ 0 1))))) (value!170541 (apply!8300 lt!1095069 (+ 0 1)))))) tp!1017624))))

(declare-fun result!202718 () Bool)

(assert (=> tb!160157 (= result!202718 (and (inv!49254 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 (+ 0 1))))) (value!170541 (apply!8300 lt!1095069 (+ 0 1))))) e!2015137))))

(assert (= tb!160157 b!3231061))

(declare-fun m!3513003 () Bool)

(assert (=> b!3231061 m!3513003))

(declare-fun m!3513005 () Bool)

(assert (=> tb!160157 m!3513005))

(assert (=> d!888176 t!241701))

(declare-fun b_and!216513 () Bool)

(assert (= b_and!216495 (and (=> t!241701 result!202718) b_and!216513)))

(declare-fun t!241703 () Bool)

(declare-fun tb!160159 () Bool)

(assert (=> (and b!3228460 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 (+ 0 1)))))) t!241703) tb!160159))

(declare-fun result!202720 () Bool)

(assert (= result!202720 result!202718))

(assert (=> d!888176 t!241703))

(declare-fun b_and!216515 () Bool)

(assert (= b_and!216487 (and (=> t!241703 result!202720) b_and!216515)))

(declare-fun t!241705 () Bool)

(declare-fun tb!160161 () Bool)

(assert (=> (and b!3228072 (= (toChars!7233 (transformation!5266 (h!41782 rules!2135))) (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 (+ 0 1)))))) t!241705) tb!160161))

(declare-fun result!202722 () Bool)

(assert (= result!202722 result!202718))

(assert (=> d!888176 t!241705))

(declare-fun b_and!216517 () Bool)

(assert (= b_and!216497 (and (=> t!241705 result!202722) b_and!216517)))

(declare-fun t!241707 () Bool)

(declare-fun tb!160163 () Bool)

(assert (=> (and b!3229145 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 rules!2135))))) (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 (+ 0 1)))))) t!241707) tb!160163))

(declare-fun result!202724 () Bool)

(assert (= result!202724 result!202718))

(assert (=> d!888176 t!241707))

(declare-fun b_and!216519 () Bool)

(assert (= b_and!216489 (and (=> t!241707 result!202724) b_and!216519)))

(declare-fun t!241709 () Bool)

(declare-fun tb!160165 () Bool)

(assert (=> (and b!3228442 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 rules!2135)))) (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 (+ 0 1)))))) t!241709) tb!160165))

(declare-fun result!202726 () Bool)

(assert (= result!202726 result!202718))

(assert (=> d!888176 t!241709))

(declare-fun b_and!216521 () Bool)

(assert (= b_and!216491 (and (=> t!241709 result!202726) b_and!216521)))

(declare-fun tb!160167 () Bool)

(declare-fun t!241711 () Bool)

(assert (=> (and b!3228087 (= (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 (+ 0 1)))))) t!241711) tb!160167))

(declare-fun result!202728 () Bool)

(assert (= result!202728 result!202718))

(assert (=> d!888176 t!241711))

(declare-fun b_and!216523 () Bool)

(assert (= b_and!216493 (and (=> t!241711 result!202728) b_and!216523)))

(declare-fun tb!160169 () Bool)

(declare-fun t!241713 () Bool)

(assert (=> (and b!3229130 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494)))))) (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 (+ 0 1)))))) t!241713) tb!160169))

(declare-fun result!202730 () Bool)

(assert (= result!202730 result!202718))

(assert (=> d!888176 t!241713))

(declare-fun b_and!216525 () Bool)

(assert (= b_and!216485 (and (=> t!241713 result!202730) b_and!216525)))

(declare-fun m!3513007 () Bool)

(assert (=> d!888176 m!3513007))

(declare-fun m!3513009 () Bool)

(assert (=> d!888176 m!3513009))

(assert (=> b!3229005 d!888176))

(assert (=> b!3229005 d!886576))

(declare-fun b!3231066 () Bool)

(declare-fun e!2015140 () List!36487)

(assert (=> b!3231066 (= e!2015140 lt!1095554)))

(declare-fun b!3231067 () Bool)

(assert (=> b!3231067 (= e!2015140 (drop!1876 (t!241332 lt!1095554) (- (+ 0 1) 1)))))

(declare-fun b!3231068 () Bool)

(declare-fun e!2015143 () Int)

(assert (=> b!3231068 (= e!2015143 0)))

(declare-fun b!3231069 () Bool)

(declare-fun e!2015141 () List!36487)

(assert (=> b!3231069 (= e!2015141 Nil!36363)))

(declare-fun b!3231070 () Bool)

(declare-fun e!2015139 () Bool)

(declare-fun lt!1096404 () List!36487)

(declare-fun e!2015142 () Int)

(assert (=> b!3231070 (= e!2015139 (= (size!27433 lt!1096404) e!2015142))))

(declare-fun c!543199 () Bool)

(assert (=> b!3231070 (= c!543199 (<= (+ 0 1) 0))))

(declare-fun b!3231071 () Bool)

(declare-fun call!233363 () Int)

(assert (=> b!3231071 (= e!2015143 (- call!233363 (+ 0 1)))))

(declare-fun b!3231072 () Bool)

(assert (=> b!3231072 (= e!2015142 call!233363)))

(declare-fun bm!233358 () Bool)

(assert (=> bm!233358 (= call!233363 (size!27433 lt!1095554))))

(declare-fun d!888184 () Bool)

(assert (=> d!888184 e!2015139))

(declare-fun res!1315761 () Bool)

(assert (=> d!888184 (=> (not res!1315761) (not e!2015139))))

(assert (=> d!888184 (= res!1315761 (= ((_ map implies) (content!4920 lt!1096404) (content!4920 lt!1095554)) ((as const (InoxSet Token!9898)) true)))))

(assert (=> d!888184 (= lt!1096404 e!2015141)))

(declare-fun c!543197 () Bool)

(assert (=> d!888184 (= c!543197 ((_ is Nil!36363) lt!1095554))))

(assert (=> d!888184 (= (drop!1876 lt!1095554 (+ 0 1)) lt!1096404)))

(declare-fun b!3231073 () Bool)

(assert (=> b!3231073 (= e!2015142 e!2015143)))

(declare-fun c!543198 () Bool)

(assert (=> b!3231073 (= c!543198 (>= (+ 0 1) call!233363))))

(declare-fun b!3231074 () Bool)

(assert (=> b!3231074 (= e!2015141 e!2015140)))

(declare-fun c!543200 () Bool)

(assert (=> b!3231074 (= c!543200 (<= (+ 0 1) 0))))

(assert (= (and d!888184 c!543197) b!3231069))

(assert (= (and d!888184 (not c!543197)) b!3231074))

(assert (= (and b!3231074 c!543200) b!3231066))

(assert (= (and b!3231074 (not c!543200)) b!3231067))

(assert (= (and d!888184 res!1315761) b!3231070))

(assert (= (and b!3231070 c!543199) b!3231072))

(assert (= (and b!3231070 (not c!543199)) b!3231073))

(assert (= (and b!3231073 c!543198) b!3231068))

(assert (= (and b!3231073 (not c!543198)) b!3231071))

(assert (= (or b!3231072 b!3231073 b!3231071) bm!233358))

(declare-fun m!3513017 () Bool)

(assert (=> b!3231067 m!3513017))

(declare-fun m!3513019 () Bool)

(assert (=> b!3231070 m!3513019))

(assert (=> bm!233358 m!3512927))

(declare-fun m!3513021 () Bool)

(assert (=> d!888184 m!3513021))

(declare-fun m!3513023 () Bool)

(assert (=> d!888184 m!3513023))

(assert (=> b!3229005 d!888184))

(declare-fun d!888186 () Bool)

(assert (=> d!888186 (= (tail!5232 (drop!1876 lt!1095556 (+ 0 1))) (drop!1876 lt!1095556 (+ 0 1 1)))))

(declare-fun lt!1096405 () Unit!50946)

(assert (=> d!888186 (= lt!1096405 (choose!18834 lt!1095556 (+ 0 1)))))

(declare-fun e!2015144 () Bool)

(assert (=> d!888186 e!2015144))

(declare-fun res!1315762 () Bool)

(assert (=> d!888186 (=> (not res!1315762) (not e!2015144))))

(assert (=> d!888186 (= res!1315762 (>= (+ 0 1) 0))))

(assert (=> d!888186 (= (lemmaDropTail!936 lt!1095556 (+ 0 1)) lt!1096405)))

(declare-fun b!3231075 () Bool)

(assert (=> b!3231075 (= e!2015144 (< (+ 0 1) (size!27433 lt!1095556)))))

(assert (= (and d!888186 res!1315762) b!3231075))

(assert (=> d!888186 m!3508717))

(assert (=> d!888186 m!3508717))

(assert (=> d!888186 m!3508719))

(assert (=> d!888186 m!3508703))

(declare-fun m!3513036 () Bool)

(assert (=> d!888186 m!3513036))

(assert (=> b!3231075 m!3512899))

(assert (=> b!3229005 d!888186))

(declare-fun b!3231077 () Bool)

(declare-fun res!1315764 () Bool)

(declare-fun e!2015146 () Bool)

(assert (=> b!3231077 (=> (not res!1315764) (not e!2015146))))

(assert (=> b!3231077 (= res!1315764 (isBalanced!3247 (++!8761 (c!542433 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095069 0)))) (c!542433 (charsOf!3282 (apply!8300 lt!1095069 (+ 0 1)))))))))

(declare-fun b!3231078 () Bool)

(declare-fun res!1315767 () Bool)

(assert (=> b!3231078 (=> (not res!1315767) (not e!2015146))))

(assert (=> b!3231078 (= res!1315767 (<= (height!1580 (++!8761 (c!542433 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095069 0)))) (c!542433 (charsOf!3282 (apply!8300 lt!1095069 (+ 0 1)))))) (+ (max!0 (height!1580 (c!542433 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095069 0))))) (height!1580 (c!542433 (charsOf!3282 (apply!8300 lt!1095069 (+ 0 1)))))) 1)))))

(declare-fun b!3231079 () Bool)

(declare-fun res!1315763 () Bool)

(assert (=> b!3231079 (=> (not res!1315763) (not e!2015146))))

(assert (=> b!3231079 (= res!1315763 (>= (height!1580 (++!8761 (c!542433 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095069 0)))) (c!542433 (charsOf!3282 (apply!8300 lt!1095069 (+ 0 1)))))) (max!0 (height!1580 (c!542433 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095069 0))))) (height!1580 (c!542433 (charsOf!3282 (apply!8300 lt!1095069 (+ 0 1))))))))))

(declare-fun d!888188 () Bool)

(assert (=> d!888188 e!2015146))

(declare-fun res!1315766 () Bool)

(assert (=> d!888188 (=> (not res!1315766) (not e!2015146))))

(assert (=> d!888188 (= res!1315766 (appendAssocInst!745 (c!542433 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095069 0)))) (c!542433 (charsOf!3282 (apply!8300 lt!1095069 (+ 0 1))))))))

(declare-fun lt!1096406 () BalanceConc!21428)

(assert (=> d!888188 (= lt!1096406 (BalanceConc!21429 (++!8761 (c!542433 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095069 0)))) (c!542433 (charsOf!3282 (apply!8300 lt!1095069 (+ 0 1)))))))))

(assert (=> d!888188 (= (++!8757 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095069 0))) (charsOf!3282 (apply!8300 lt!1095069 (+ 0 1)))) lt!1096406)))

(declare-fun b!3231080 () Bool)

(assert (=> b!3231080 (= e!2015146 (= (list!12975 lt!1096406) (++!8756 (list!12975 (++!8757 (BalanceConc!21429 Empty!10907) (charsOf!3282 (apply!8300 lt!1095069 0)))) (list!12975 (charsOf!3282 (apply!8300 lt!1095069 (+ 0 1)))))))))

(assert (= (and d!888188 res!1315766) b!3231077))

(assert (= (and b!3231077 res!1315764) b!3231078))

(assert (= (and b!3231078 res!1315767) b!3231079))

(assert (= (and b!3231079 res!1315763) b!3231080))

(declare-fun m!3513041 () Bool)

(assert (=> b!3231079 m!3513041))

(declare-fun m!3513043 () Bool)

(assert (=> b!3231079 m!3513043))

(assert (=> b!3231079 m!3513041))

(declare-fun m!3513045 () Bool)

(assert (=> b!3231079 m!3513045))

(declare-fun m!3513047 () Bool)

(assert (=> b!3231079 m!3513047))

(assert (=> b!3231079 m!3513047))

(assert (=> b!3231079 m!3513043))

(declare-fun m!3513049 () Bool)

(assert (=> b!3231079 m!3513049))

(declare-fun m!3513051 () Bool)

(assert (=> d!888188 m!3513051))

(assert (=> d!888188 m!3513041))

(assert (=> b!3231077 m!3513041))

(assert (=> b!3231077 m!3513041))

(declare-fun m!3513059 () Bool)

(assert (=> b!3231077 m!3513059))

(declare-fun m!3513063 () Bool)

(assert (=> b!3231080 m!3513063))

(assert (=> b!3231080 m!3507207))

(assert (=> b!3231080 m!3508693))

(assert (=> b!3231080 m!3508713))

(declare-fun m!3513067 () Bool)

(assert (=> b!3231080 m!3513067))

(assert (=> b!3231080 m!3508693))

(assert (=> b!3231080 m!3513067))

(declare-fun m!3513073 () Bool)

(assert (=> b!3231080 m!3513073))

(assert (=> b!3231078 m!3513041))

(assert (=> b!3231078 m!3513043))

(assert (=> b!3231078 m!3513041))

(assert (=> b!3231078 m!3513045))

(assert (=> b!3231078 m!3513047))

(assert (=> b!3231078 m!3513047))

(assert (=> b!3231078 m!3513043))

(assert (=> b!3231078 m!3513049))

(assert (=> b!3229005 d!888188))

(declare-fun d!888194 () Bool)

(assert (=> d!888194 (= (head!7088 (drop!1876 lt!1095554 (+ 0 1))) (h!41783 (drop!1876 lt!1095554 (+ 0 1))))))

(assert (=> b!3229005 d!888194))

(declare-fun d!888196 () Bool)

(declare-fun lt!1096409 () Int)

(assert (=> d!888196 (>= lt!1096409 0)))

(declare-fun e!2015148 () Int)

(assert (=> d!888196 (= lt!1096409 e!2015148)))

(declare-fun c!543201 () Bool)

(assert (=> d!888196 (= c!543201 ((_ is Nil!36361) lt!1095605))))

(assert (=> d!888196 (= (size!27430 lt!1095605) lt!1096409)))

(declare-fun b!3231085 () Bool)

(assert (=> b!3231085 (= e!2015148 0)))

(declare-fun b!3231086 () Bool)

(assert (=> b!3231086 (= e!2015148 (+ 1 (size!27430 (t!241330 lt!1095605))))))

(assert (= (and d!888196 c!543201) b!3231085))

(assert (= (and d!888196 (not c!543201)) b!3231086))

(declare-fun m!3513081 () Bool)

(assert (=> b!3231086 m!3513081))

(assert (=> b!3229036 d!888196))

(declare-fun d!888200 () Bool)

(declare-fun lt!1096413 () Int)

(assert (=> d!888200 (>= lt!1096413 0)))

(declare-fun e!2015152 () Int)

(assert (=> d!888200 (= lt!1096413 e!2015152)))

(declare-fun c!543204 () Bool)

(assert (=> d!888200 (= c!543204 ((_ is Nil!36361) (list!12975 (charsOf!3282 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))))

(assert (=> d!888200 (= (size!27430 (list!12975 (charsOf!3282 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))) lt!1096413)))

(declare-fun b!3231092 () Bool)

(assert (=> b!3231092 (= e!2015152 0)))

(declare-fun b!3231093 () Bool)

(assert (=> b!3231093 (= e!2015152 (+ 1 (size!27430 (t!241330 (list!12975 (charsOf!3282 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))))))

(assert (= (and d!888200 c!543204) b!3231092))

(assert (= (and d!888200 (not c!543204)) b!3231093))

(assert (=> b!3231093 m!3511639))

(assert (=> b!3229036 d!888200))

(declare-fun d!888202 () Bool)

(declare-fun lt!1096414 () Int)

(assert (=> d!888202 (>= lt!1096414 0)))

(declare-fun e!2015153 () Int)

(assert (=> d!888202 (= lt!1096414 e!2015153)))

(declare-fun c!543205 () Bool)

(assert (=> d!888202 (= c!543205 ((_ is Nil!36361) (printList!1405 thiss!18206 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))))

(assert (=> d!888202 (= (size!27430 (printList!1405 thiss!18206 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363)))) lt!1096414)))

(declare-fun b!3231094 () Bool)

(assert (=> b!3231094 (= e!2015153 0)))

(declare-fun b!3231095 () Bool)

(assert (=> b!3231095 (= e!2015153 (+ 1 (size!27430 (t!241330 (printList!1405 thiss!18206 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))))))

(assert (= (and d!888202 c!543205) b!3231094))

(assert (= (and d!888202 (not c!543205)) b!3231095))

(declare-fun m!3513089 () Bool)

(assert (=> b!3231095 m!3513089))

(assert (=> b!3229036 d!888202))

(declare-fun d!888204 () Bool)

(declare-fun res!1315773 () Bool)

(declare-fun e!2015154 () Bool)

(assert (=> d!888204 (=> res!1315773 e!2015154)))

(assert (=> d!888204 (= res!1315773 ((_ is Nil!36363) (t!241332 (list!12978 lt!1095068))))))

(assert (=> d!888204 (= (forall!7470 (t!241332 (list!12978 lt!1095068)) lambda!118217) e!2015154)))

(declare-fun b!3231096 () Bool)

(declare-fun e!2015155 () Bool)

(assert (=> b!3231096 (= e!2015154 e!2015155)))

(declare-fun res!1315774 () Bool)

(assert (=> b!3231096 (=> (not res!1315774) (not e!2015155))))

(assert (=> b!3231096 (= res!1315774 (dynLambda!14795 lambda!118217 (h!41783 (t!241332 (list!12978 lt!1095068)))))))

(declare-fun b!3231097 () Bool)

(assert (=> b!3231097 (= e!2015155 (forall!7470 (t!241332 (t!241332 (list!12978 lt!1095068))) lambda!118217))))

(assert (= (and d!888204 (not res!1315773)) b!3231096))

(assert (= (and b!3231096 res!1315774) b!3231097))

(declare-fun b_lambda!89003 () Bool)

(assert (=> (not b_lambda!89003) (not b!3231096)))

(declare-fun m!3513097 () Bool)

(assert (=> b!3231096 m!3513097))

(declare-fun m!3513099 () Bool)

(assert (=> b!3231097 m!3513099))

(assert (=> b!3228713 d!888204))

(declare-fun d!888208 () Bool)

(declare-fun lt!1096451 () Bool)

(declare-fun content!4922 (List!36489) (InoxSet String!40814))

(assert (=> d!888208 (= lt!1096451 (select (content!4922 Nil!36365) (tag!5798 (h!41782 rules!2135))))))

(declare-fun e!2015164 () Bool)

(assert (=> d!888208 (= lt!1096451 e!2015164)))

(declare-fun res!1315781 () Bool)

(assert (=> d!888208 (=> (not res!1315781) (not e!2015164))))

(assert (=> d!888208 (= res!1315781 ((_ is Cons!36365) Nil!36365))))

(assert (=> d!888208 (= (contains!6528 Nil!36365 (tag!5798 (h!41782 rules!2135))) lt!1096451)))

(declare-fun b!3231109 () Bool)

(declare-fun e!2015165 () Bool)

(assert (=> b!3231109 (= e!2015164 e!2015165)))

(declare-fun res!1315780 () Bool)

(assert (=> b!3231109 (=> res!1315780 e!2015165)))

(assert (=> b!3231109 (= res!1315780 (= (h!41785 Nil!36365) (tag!5798 (h!41782 rules!2135))))))

(declare-fun b!3231110 () Bool)

(assert (=> b!3231110 (= e!2015165 (contains!6528 (t!241386 Nil!36365) (tag!5798 (h!41782 rules!2135))))))

(assert (= (and d!888208 res!1315781) b!3231109))

(assert (= (and b!3231109 (not res!1315780)) b!3231110))

(declare-fun m!3513153 () Bool)

(assert (=> d!888208 m!3513153))

(declare-fun m!3513155 () Bool)

(assert (=> d!888208 m!3513155))

(declare-fun m!3513157 () Bool)

(assert (=> b!3231110 m!3513157))

(assert (=> b!3228533 d!888208))

(declare-fun d!888210 () Bool)

(declare-fun lt!1096452 () Int)

(assert (=> d!888210 (>= lt!1096452 0)))

(declare-fun e!2015166 () Int)

(assert (=> d!888210 (= lt!1096452 e!2015166)))

(declare-fun c!543209 () Bool)

(assert (=> d!888210 (= c!543209 ((_ is Nil!36361) lt!1095604))))

(assert (=> d!888210 (= (size!27430 lt!1095604) lt!1096452)))

(declare-fun b!3231111 () Bool)

(assert (=> b!3231111 (= e!2015166 0)))

(declare-fun b!3231112 () Bool)

(assert (=> b!3231112 (= e!2015166 (+ 1 (size!27430 (t!241330 lt!1095604))))))

(assert (= (and d!888210 c!543209) b!3231111))

(assert (= (and d!888210 (not c!543209)) b!3231112))

(declare-fun m!3513171 () Bool)

(assert (=> b!3231112 m!3513171))

(assert (=> b!3229030 d!888210))

(assert (=> b!3229030 d!887246))

(assert (=> b!3229030 d!886694))

(declare-fun d!888212 () Bool)

(assert (=> d!888212 (= (Forall!1278 lambda!118239) (choose!18841 lambda!118239))))

(declare-fun bs!543379 () Bool)

(assert (= bs!543379 d!888212))

(declare-fun m!3513179 () Bool)

(assert (=> bs!543379 m!3513179))

(assert (=> d!886762 d!888212))

(declare-fun d!888214 () Bool)

(assert (=> d!888214 (= (inv!15 (value!170541 (h!41783 (t!241332 tokens!494)))) (= (charsToBigInt!0 (text!38921 (value!170541 (h!41783 (t!241332 tokens!494)))) 0) (value!170536 (value!170541 (h!41783 (t!241332 tokens!494))))))))

(declare-fun bs!543380 () Bool)

(assert (= bs!543380 d!888214))

(declare-fun m!3513185 () Bool)

(assert (=> bs!543380 m!3513185))

(assert (=> b!3229027 d!888214))

(declare-fun bs!543383 () Bool)

(declare-fun d!888216 () Bool)

(assert (= bs!543383 (and d!888216 d!886886)))

(declare-fun lambda!118275 () Int)

(assert (=> bs!543383 (= lambda!118275 lambda!118248)))

(assert (=> d!888216 true))

(declare-fun lt!1096460 () Bool)

(assert (=> d!888216 (= lt!1096460 (forall!7476 rules!2135 lambda!118275))))

(declare-fun e!2015177 () Bool)

(assert (=> d!888216 (= lt!1096460 e!2015177)))

(declare-fun res!1315792 () Bool)

(assert (=> d!888216 (=> res!1315792 e!2015177)))

(assert (=> d!888216 (= res!1315792 (not ((_ is Cons!36362) rules!2135)))))

(assert (=> d!888216 (= (rulesValidInductive!1789 thiss!18206 rules!2135) lt!1096460)))

(declare-fun b!3231128 () Bool)

(declare-fun e!2015178 () Bool)

(assert (=> b!3231128 (= e!2015177 e!2015178)))

(declare-fun res!1315791 () Bool)

(assert (=> b!3231128 (=> (not res!1315791) (not e!2015178))))

(declare-fun ruleValid!1656 (LexerInterface!4855 Rule!10332) Bool)

(assert (=> b!3231128 (= res!1315791 (ruleValid!1656 thiss!18206 (h!41782 rules!2135)))))

(declare-fun b!3231129 () Bool)

(assert (=> b!3231129 (= e!2015178 (rulesValidInductive!1789 thiss!18206 (t!241331 rules!2135)))))

(assert (= (and d!888216 (not res!1315792)) b!3231128))

(assert (= (and b!3231128 res!1315791) b!3231129))

(declare-fun m!3513229 () Bool)

(assert (=> d!888216 m!3513229))

(declare-fun m!3513231 () Bool)

(assert (=> b!3231128 m!3513231))

(declare-fun m!3513233 () Bool)

(assert (=> b!3231129 m!3513233))

(assert (=> d!886886 d!888216))

(declare-fun d!888228 () Bool)

(declare-fun res!1315797 () Bool)

(declare-fun e!2015183 () Bool)

(assert (=> d!888228 (=> res!1315797 e!2015183)))

(assert (=> d!888228 (= res!1315797 ((_ is Nil!36362) rules!2135))))

(assert (=> d!888228 (= (forall!7476 rules!2135 lambda!118248) e!2015183)))

(declare-fun b!3231134 () Bool)

(declare-fun e!2015184 () Bool)

(assert (=> b!3231134 (= e!2015183 e!2015184)))

(declare-fun res!1315798 () Bool)

(assert (=> b!3231134 (=> (not res!1315798) (not e!2015184))))

(declare-fun dynLambda!14803 (Int Rule!10332) Bool)

(assert (=> b!3231134 (= res!1315798 (dynLambda!14803 lambda!118248 (h!41782 rules!2135)))))

(declare-fun b!3231135 () Bool)

(assert (=> b!3231135 (= e!2015184 (forall!7476 (t!241331 rules!2135) lambda!118248))))

(assert (= (and d!888228 (not res!1315797)) b!3231134))

(assert (= (and b!3231134 res!1315798) b!3231135))

(declare-fun b_lambda!89005 () Bool)

(assert (=> (not b_lambda!89005) (not b!3231134)))

(declare-fun m!3513235 () Bool)

(assert (=> b!3231134 m!3513235))

(declare-fun m!3513237 () Bool)

(assert (=> b!3231135 m!3513237))

(assert (=> d!886886 d!888228))

(declare-fun b!3231136 () Bool)

(declare-fun e!2015188 () tuple2!35788)

(declare-fun lt!1096462 () tuple2!35788)

(declare-fun lt!1096463 () Option!7217)

(assert (=> b!3231136 (= e!2015188 (tuple2!35789 (prepend!1182 (_1!21028 lt!1096462) (_1!21033 (v!35826 lt!1096463))) (_2!21028 lt!1096462)))))

(assert (=> b!3231136 (= lt!1096462 (lexRec!694 thiss!18206 rules!2135 (_2!21033 (v!35826 lt!1096463))))))

(declare-fun b!3231137 () Bool)

(declare-fun e!2015186 () Bool)

(declare-fun lt!1096461 () tuple2!35788)

(assert (=> b!3231137 (= e!2015186 (= (list!12975 (_2!21028 lt!1096461)) (list!12975 (_2!21033 (v!35826 lt!1095482)))))))

(declare-fun d!888230 () Bool)

(declare-fun e!2015185 () Bool)

(assert (=> d!888230 e!2015185))

(declare-fun res!1315800 () Bool)

(assert (=> d!888230 (=> (not res!1315800) (not e!2015185))))

(assert (=> d!888230 (= res!1315800 e!2015186)))

(declare-fun c!543214 () Bool)

(assert (=> d!888230 (= c!543214 (> (size!27429 (_1!21028 lt!1096461)) 0))))

(assert (=> d!888230 (= lt!1096461 e!2015188)))

(declare-fun c!543213 () Bool)

(assert (=> d!888230 (= c!543213 ((_ is Some!7216) lt!1096463))))

(assert (=> d!888230 (= lt!1096463 (maxPrefixZipperSequence!1087 thiss!18206 rules!2135 (_2!21033 (v!35826 lt!1095482))))))

(assert (=> d!888230 (= (lexRec!694 thiss!18206 rules!2135 (_2!21033 (v!35826 lt!1095482))) lt!1096461)))

(declare-fun b!3231138 () Bool)

(assert (=> b!3231138 (= e!2015185 (= (list!12975 (_2!21028 lt!1096461)) (_2!21030 (lexList!1335 thiss!18206 rules!2135 (list!12975 (_2!21033 (v!35826 lt!1095482)))))))))

(declare-fun b!3231139 () Bool)

(declare-fun res!1315799 () Bool)

(assert (=> b!3231139 (=> (not res!1315799) (not e!2015185))))

(assert (=> b!3231139 (= res!1315799 (= (list!12978 (_1!21028 lt!1096461)) (_1!21030 (lexList!1335 thiss!18206 rules!2135 (list!12975 (_2!21033 (v!35826 lt!1095482)))))))))

(declare-fun b!3231140 () Bool)

(declare-fun e!2015187 () Bool)

(assert (=> b!3231140 (= e!2015187 (not (isEmpty!20446 (_1!21028 lt!1096461))))))

(declare-fun b!3231141 () Bool)

(assert (=> b!3231141 (= e!2015186 e!2015187)))

(declare-fun res!1315801 () Bool)

(assert (=> b!3231141 (= res!1315801 (< (size!27431 (_2!21028 lt!1096461)) (size!27431 (_2!21033 (v!35826 lt!1095482)))))))

(assert (=> b!3231141 (=> (not res!1315801) (not e!2015187))))

(declare-fun b!3231142 () Bool)

(assert (=> b!3231142 (= e!2015188 (tuple2!35789 (BalanceConc!21431 Empty!10908) (_2!21033 (v!35826 lt!1095482))))))

(assert (= (and d!888230 c!543213) b!3231136))

(assert (= (and d!888230 (not c!543213)) b!3231142))

(assert (= (and d!888230 c!543214) b!3231141))

(assert (= (and d!888230 (not c!543214)) b!3231137))

(assert (= (and b!3231141 res!1315801) b!3231140))

(assert (= (and d!888230 res!1315800) b!3231139))

(assert (= (and b!3231139 res!1315799) b!3231138))

(declare-fun m!3513239 () Bool)

(assert (=> b!3231136 m!3513239))

(declare-fun m!3513241 () Bool)

(assert (=> b!3231136 m!3513241))

(declare-fun m!3513243 () Bool)

(assert (=> b!3231137 m!3513243))

(declare-fun m!3513245 () Bool)

(assert (=> b!3231137 m!3513245))

(declare-fun m!3513247 () Bool)

(assert (=> b!3231140 m!3513247))

(assert (=> b!3231138 m!3513243))

(assert (=> b!3231138 m!3513245))

(assert (=> b!3231138 m!3513245))

(declare-fun m!3513249 () Bool)

(assert (=> b!3231138 m!3513249))

(declare-fun m!3513251 () Bool)

(assert (=> d!888230 m!3513251))

(declare-fun m!3513253 () Bool)

(assert (=> d!888230 m!3513253))

(declare-fun m!3513255 () Bool)

(assert (=> b!3231139 m!3513255))

(assert (=> b!3231139 m!3513245))

(assert (=> b!3231139 m!3513245))

(assert (=> b!3231139 m!3513249))

(declare-fun m!3513257 () Bool)

(assert (=> b!3231141 m!3513257))

(declare-fun m!3513259 () Bool)

(assert (=> b!3231141 m!3513259))

(assert (=> b!3228926 d!888230))

(declare-fun d!888232 () Bool)

(declare-fun e!2015189 () Bool)

(assert (=> d!888232 e!2015189))

(declare-fun res!1315802 () Bool)

(assert (=> d!888232 (=> (not res!1315802) (not e!2015189))))

(assert (=> d!888232 (= res!1315802 (isBalanced!3244 (prepend!1184 (c!542434 (_1!21028 lt!1095474)) (_1!21033 (v!35826 lt!1095482)))))))

(declare-fun lt!1096464 () BalanceConc!21430)

(assert (=> d!888232 (= lt!1096464 (BalanceConc!21431 (prepend!1184 (c!542434 (_1!21028 lt!1095474)) (_1!21033 (v!35826 lt!1095482)))))))

(assert (=> d!888232 (= (prepend!1182 (_1!21028 lt!1095474) (_1!21033 (v!35826 lt!1095482))) lt!1096464)))

(declare-fun b!3231143 () Bool)

(assert (=> b!3231143 (= e!2015189 (= (list!12978 lt!1096464) (Cons!36363 (_1!21033 (v!35826 lt!1095482)) (list!12978 (_1!21028 lt!1095474)))))))

(assert (= (and d!888232 res!1315802) b!3231143))

(declare-fun m!3513261 () Bool)

(assert (=> d!888232 m!3513261))

(assert (=> d!888232 m!3513261))

(declare-fun m!3513263 () Bool)

(assert (=> d!888232 m!3513263))

(declare-fun m!3513265 () Bool)

(assert (=> b!3231143 m!3513265))

(declare-fun m!3513267 () Bool)

(assert (=> b!3231143 m!3513267))

(assert (=> b!3228926 d!888232))

(declare-fun d!888234 () Bool)

(assert (=> d!888234 (= (list!12975 lt!1095537) (list!12979 (c!542433 lt!1095537)))))

(declare-fun bs!543384 () Bool)

(assert (= bs!543384 d!888234))

(declare-fun m!3513269 () Bool)

(assert (=> bs!543384 m!3513269))

(assert (=> b!3228998 d!888234))

(declare-fun b!3231144 () Bool)

(declare-fun e!2015191 () List!36485)

(assert (=> b!3231144 (= e!2015191 (list!12975 (charsOf!3282 (apply!8300 lt!1095069 0))))))

(declare-fun b!3231145 () Bool)

(assert (=> b!3231145 (= e!2015191 (Cons!36361 (h!41781 (list!12975 (BalanceConc!21429 Empty!10907))) (++!8756 (t!241330 (list!12975 (BalanceConc!21429 Empty!10907))) (list!12975 (charsOf!3282 (apply!8300 lt!1095069 0))))))))

(declare-fun b!3231147 () Bool)

(declare-fun e!2015190 () Bool)

(declare-fun lt!1096465 () List!36485)

(assert (=> b!3231147 (= e!2015190 (or (not (= (list!12975 (charsOf!3282 (apply!8300 lt!1095069 0))) Nil!36361)) (= lt!1096465 (list!12975 (BalanceConc!21429 Empty!10907)))))))

(declare-fun b!3231146 () Bool)

(declare-fun res!1315803 () Bool)

(assert (=> b!3231146 (=> (not res!1315803) (not e!2015190))))

(assert (=> b!3231146 (= res!1315803 (= (size!27430 lt!1096465) (+ (size!27430 (list!12975 (BalanceConc!21429 Empty!10907))) (size!27430 (list!12975 (charsOf!3282 (apply!8300 lt!1095069 0)))))))))

(declare-fun d!888236 () Bool)

(assert (=> d!888236 e!2015190))

(declare-fun res!1315804 () Bool)

(assert (=> d!888236 (=> (not res!1315804) (not e!2015190))))

(assert (=> d!888236 (= res!1315804 (= (content!4918 lt!1096465) ((_ map or) (content!4918 (list!12975 (BalanceConc!21429 Empty!10907))) (content!4918 (list!12975 (charsOf!3282 (apply!8300 lt!1095069 0)))))))))

(assert (=> d!888236 (= lt!1096465 e!2015191)))

(declare-fun c!543215 () Bool)

(assert (=> d!888236 (= c!543215 ((_ is Nil!36361) (list!12975 (BalanceConc!21429 Empty!10907))))))

(assert (=> d!888236 (= (++!8756 (list!12975 (BalanceConc!21429 Empty!10907)) (list!12975 (charsOf!3282 (apply!8300 lt!1095069 0)))) lt!1096465)))

(assert (= (and d!888236 c!543215) b!3231144))

(assert (= (and d!888236 (not c!543215)) b!3231145))

(assert (= (and d!888236 res!1315804) b!3231146))

(assert (= (and b!3231146 res!1315803) b!3231147))

(assert (=> b!3231145 m!3508687))

(declare-fun m!3513271 () Bool)

(assert (=> b!3231145 m!3513271))

(declare-fun m!3513273 () Bool)

(assert (=> b!3231146 m!3513273))

(assert (=> b!3231146 m!3507199))

(assert (=> b!3231146 m!3509503))

(assert (=> b!3231146 m!3508687))

(declare-fun m!3513275 () Bool)

(assert (=> b!3231146 m!3513275))

(declare-fun m!3513277 () Bool)

(assert (=> d!888236 m!3513277))

(assert (=> d!888236 m!3507199))

(assert (=> d!888236 m!3509509))

(assert (=> d!888236 m!3508687))

(declare-fun m!3513279 () Bool)

(assert (=> d!888236 m!3513279))

(assert (=> b!3228998 d!888236))

(assert (=> b!3228998 d!886700))

(declare-fun d!888238 () Bool)

(assert (=> d!888238 (= (list!12975 (charsOf!3282 (apply!8300 lt!1095069 0))) (list!12979 (c!542433 (charsOf!3282 (apply!8300 lt!1095069 0)))))))

(declare-fun bs!543385 () Bool)

(assert (= bs!543385 d!888238))

(assert (=> bs!543385 m!3510773))

(assert (=> b!3228998 d!888238))

(assert (=> d!886742 d!886700))

(declare-fun d!888240 () Bool)

(assert (=> d!888240 (= (dropList!1093 lt!1095068 0) (drop!1876 (list!12980 (c!542434 lt!1095068)) 0))))

(declare-fun bs!543386 () Bool)

(assert (= bs!543386 d!888240))

(assert (=> bs!543386 m!3507989))

(assert (=> bs!543386 m!3507989))

(declare-fun m!3513281 () Bool)

(assert (=> bs!543386 m!3513281))

(assert (=> d!886742 d!888240))

(declare-fun d!888242 () Bool)

(declare-fun lt!1096484 () List!36485)

(assert (=> d!888242 (= lt!1096484 (++!8756 (list!12975 (BalanceConc!21429 Empty!10907)) (printWithSeparatorTokenList!188 thiss!18206 (dropList!1093 lt!1095068 0) separatorToken!241)))))

(declare-fun e!2015194 () List!36485)

(assert (=> d!888242 (= lt!1096484 e!2015194)))

(declare-fun c!543218 () Bool)

(assert (=> d!888242 (= c!543218 ((_ is Cons!36363) (dropList!1093 lt!1095068 0)))))

(assert (=> d!888242 (isSeparator!5266 (rule!7724 separatorToken!241))))

(assert (=> d!888242 (= (printWithSeparatorTokenListTailRec!3 thiss!18206 (dropList!1093 lt!1095068 0) separatorToken!241 (list!12975 (BalanceConc!21429 Empty!10907))) lt!1096484)))

(declare-fun b!3231152 () Bool)

(assert (=> b!3231152 (= e!2015194 (printWithSeparatorTokenListTailRec!3 thiss!18206 (t!241332 (dropList!1093 lt!1095068 0)) separatorToken!241 (++!8756 (++!8756 (list!12975 (BalanceConc!21429 Empty!10907)) (list!12975 (charsOf!3282 (h!41783 (dropList!1093 lt!1095068 0))))) (list!12975 (charsOf!3282 separatorToken!241)))))))

(declare-fun lt!1096489 () List!36485)

(assert (=> b!3231152 (= lt!1096489 (++!8756 (list!12975 (charsOf!3282 (h!41783 (dropList!1093 lt!1095068 0)))) (list!12975 (charsOf!3282 separatorToken!241))))))

(declare-fun lt!1096488 () List!36485)

(assert (=> b!3231152 (= lt!1096488 (printWithSeparatorTokenList!188 thiss!18206 (t!241332 (dropList!1093 lt!1095068 0)) separatorToken!241))))

(declare-fun lt!1096486 () Unit!50946)

(assert (=> b!3231152 (= lt!1096486 (lemmaConcatAssociativity!1789 (list!12975 (BalanceConc!21429 Empty!10907)) lt!1096489 lt!1096488))))

(assert (=> b!3231152 (= (++!8756 (++!8756 (list!12975 (BalanceConc!21429 Empty!10907)) lt!1096489) lt!1096488) (++!8756 (list!12975 (BalanceConc!21429 Empty!10907)) (++!8756 lt!1096489 lt!1096488)))))

(declare-fun lt!1096492 () Unit!50946)

(assert (=> b!3231152 (= lt!1096492 lt!1096486)))

(declare-fun lt!1096487 () List!36485)

(assert (=> b!3231152 (= lt!1096487 (list!12975 (charsOf!3282 (h!41783 (dropList!1093 lt!1095068 0)))))))

(declare-fun lt!1096491 () List!36485)

(assert (=> b!3231152 (= lt!1096491 (list!12975 (charsOf!3282 separatorToken!241)))))

(declare-fun lt!1096485 () Unit!50946)

(assert (=> b!3231152 (= lt!1096485 (lemmaConcatAssociativity!1789 (list!12975 (BalanceConc!21429 Empty!10907)) lt!1096487 lt!1096491))))

(assert (=> b!3231152 (= (++!8756 (++!8756 (list!12975 (BalanceConc!21429 Empty!10907)) lt!1096487) lt!1096491) (++!8756 (list!12975 (BalanceConc!21429 Empty!10907)) (++!8756 lt!1096487 lt!1096491)))))

(declare-fun lt!1096490 () Unit!50946)

(assert (=> b!3231152 (= lt!1096490 lt!1096485)))

(declare-fun b!3231153 () Bool)

(assert (=> b!3231153 (= e!2015194 (list!12975 (BalanceConc!21429 Empty!10907)))))

(assert (= (and d!888242 c!543218) b!3231152))

(assert (= (and d!888242 (not c!543218)) b!3231153))

(assert (=> d!888242 m!3508131))

(declare-fun m!3513283 () Bool)

(assert (=> d!888242 m!3513283))

(assert (=> d!888242 m!3507199))

(assert (=> d!888242 m!3513283))

(declare-fun m!3513285 () Bool)

(assert (=> d!888242 m!3513285))

(assert (=> b!3231152 m!3507199))

(declare-fun m!3513287 () Bool)

(assert (=> b!3231152 m!3513287))

(assert (=> b!3231152 m!3507199))

(declare-fun m!3513289 () Bool)

(assert (=> b!3231152 m!3513289))

(declare-fun m!3513291 () Bool)

(assert (=> b!3231152 m!3513291))

(assert (=> b!3231152 m!3507199))

(declare-fun m!3513293 () Bool)

(assert (=> b!3231152 m!3513293))

(declare-fun m!3513295 () Bool)

(assert (=> b!3231152 m!3513295))

(assert (=> b!3231152 m!3513289))

(assert (=> b!3231152 m!3507149))

(declare-fun m!3513297 () Bool)

(assert (=> b!3231152 m!3513297))

(assert (=> b!3231152 m!3507199))

(declare-fun m!3513299 () Bool)

(assert (=> b!3231152 m!3513299))

(declare-fun m!3513301 () Bool)

(assert (=> b!3231152 m!3513301))

(assert (=> b!3231152 m!3513291))

(assert (=> b!3231152 m!3507149))

(declare-fun m!3513303 () Bool)

(assert (=> b!3231152 m!3513303))

(assert (=> b!3231152 m!3513299))

(assert (=> b!3231152 m!3513293))

(assert (=> b!3231152 m!3507199))

(declare-fun m!3513305 () Bool)

(assert (=> b!3231152 m!3513305))

(declare-fun m!3513307 () Bool)

(assert (=> b!3231152 m!3513307))

(declare-fun m!3513309 () Bool)

(assert (=> b!3231152 m!3513309))

(declare-fun m!3513311 () Bool)

(assert (=> b!3231152 m!3513311))

(assert (=> b!3231152 m!3507199))

(assert (=> b!3231152 m!3513307))

(declare-fun m!3513313 () Bool)

(assert (=> b!3231152 m!3513313))

(assert (=> b!3231152 m!3513289))

(assert (=> b!3231152 m!3513313))

(assert (=> b!3231152 m!3507153))

(assert (=> b!3231152 m!3507153))

(assert (=> b!3231152 m!3507149))

(assert (=> b!3231152 m!3507199))

(declare-fun m!3513315 () Bool)

(assert (=> b!3231152 m!3513315))

(assert (=> b!3231152 m!3513303))

(declare-fun m!3513317 () Bool)

(assert (=> b!3231152 m!3513317))

(assert (=> b!3231152 m!3513305))

(declare-fun m!3513319 () Bool)

(assert (=> b!3231152 m!3513319))

(assert (=> d!886742 d!888242))

(assert (=> d!886742 d!887818))

(declare-fun d!888244 () Bool)

(assert (=> d!888244 (= (list!12975 lt!1095324) (list!12979 (c!542433 lt!1095324)))))

(declare-fun bs!543387 () Bool)

(assert (= bs!543387 d!888244))

(declare-fun m!3513321 () Bool)

(assert (=> bs!543387 m!3513321))

(assert (=> d!886742 d!888244))

(declare-fun d!888246 () Bool)

(declare-fun res!1315805 () Bool)

(declare-fun e!2015195 () Bool)

(assert (=> d!888246 (=> (not res!1315805) (not e!2015195))))

(assert (=> d!888246 (= res!1315805 (= (csize!22044 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))) (+ (size!27432 (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241))))) (size!27432 (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241))))))))))

(assert (=> d!888246 (= (inv!49255 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))) e!2015195)))

(declare-fun b!3231154 () Bool)

(declare-fun res!1315806 () Bool)

(assert (=> b!3231154 (=> (not res!1315806) (not e!2015195))))

(assert (=> b!3231154 (= res!1315806 (and (not (= (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))) Empty!10907)) (not (= (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))) Empty!10907))))))

(declare-fun b!3231155 () Bool)

(declare-fun res!1315807 () Bool)

(assert (=> b!3231155 (=> (not res!1315807) (not e!2015195))))

(assert (=> b!3231155 (= res!1315807 (= (cheight!11118 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))) (+ (max!0 (height!1580 (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241))))) (height!1580 (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))))) 1)))))

(declare-fun b!3231156 () Bool)

(assert (=> b!3231156 (= e!2015195 (<= 0 (cheight!11118 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241))))))))

(assert (= (and d!888246 res!1315805) b!3231154))

(assert (= (and b!3231154 res!1315806) b!3231155))

(assert (= (and b!3231155 res!1315807) b!3231156))

(declare-fun m!3513323 () Bool)

(assert (=> d!888246 m!3513323))

(declare-fun m!3513325 () Bool)

(assert (=> d!888246 m!3513325))

(assert (=> b!3231155 m!3512509))

(assert (=> b!3231155 m!3512511))

(assert (=> b!3231155 m!3512509))

(assert (=> b!3231155 m!3512511))

(declare-fun m!3513327 () Bool)

(assert (=> b!3231155 m!3513327))

(assert (=> b!3228821 d!888246))

(assert (=> d!886684 d!886680))

(assert (=> d!886684 d!886672))

(declare-fun b!3231166 () Bool)

(declare-fun e!2015202 () Bool)

(declare-fun forall!7480 (IArray!21821 Int) Bool)

(assert (=> b!3231166 (= e!2015202 (forall!7480 (xs!14026 (c!542434 lt!1095068)) lambda!118217))))

(declare-fun b!3231167 () Bool)

(declare-fun e!2015203 () Bool)

(assert (=> b!3231167 (= e!2015202 e!2015203)))

(declare-fun lt!1096497 () Unit!50946)

(declare-fun lemmaForallConcat!170 (List!36487 List!36487 Int) Unit!50946)

(assert (=> b!3231167 (= lt!1096497 (lemmaForallConcat!170 (list!12980 (left!28315 (c!542434 lt!1095068))) (list!12980 (right!28645 (c!542434 lt!1095068))) lambda!118217))))

(declare-fun res!1315812 () Bool)

(assert (=> b!3231167 (= res!1315812 (forall!7473 (left!28315 (c!542434 lt!1095068)) lambda!118217))))

(assert (=> b!3231167 (=> (not res!1315812) (not e!2015203))))

(declare-fun b!3231165 () Bool)

(declare-fun e!2015204 () Bool)

(assert (=> b!3231165 (= e!2015204 e!2015202)))

(declare-fun c!543221 () Bool)

(assert (=> b!3231165 (= c!543221 ((_ is Leaf!17152) (c!542434 lt!1095068)))))

(declare-fun d!888248 () Bool)

(declare-fun lt!1096498 () Bool)

(assert (=> d!888248 (= lt!1096498 (forall!7470 (list!12980 (c!542434 lt!1095068)) lambda!118217))))

(assert (=> d!888248 (= lt!1096498 e!2015204)))

(declare-fun res!1315813 () Bool)

(assert (=> d!888248 (=> res!1315813 e!2015204)))

(assert (=> d!888248 (= res!1315813 ((_ is Empty!10908) (c!542434 lt!1095068)))))

(assert (=> d!888248 (= (forall!7473 (c!542434 lt!1095068) lambda!118217) lt!1096498)))

(declare-fun b!3231168 () Bool)

(assert (=> b!3231168 (= e!2015203 (forall!7473 (right!28645 (c!542434 lt!1095068)) lambda!118217))))

(assert (= (and d!888248 (not res!1315813)) b!3231165))

(assert (= (and b!3231165 c!543221) b!3231166))

(assert (= (and b!3231165 (not c!543221)) b!3231167))

(assert (= (and b!3231167 res!1315812) b!3231168))

(declare-fun m!3513329 () Bool)

(assert (=> b!3231166 m!3513329))

(assert (=> b!3231167 m!3510121))

(assert (=> b!3231167 m!3510123))

(assert (=> b!3231167 m!3510121))

(assert (=> b!3231167 m!3510123))

(declare-fun m!3513331 () Bool)

(assert (=> b!3231167 m!3513331))

(declare-fun m!3513333 () Bool)

(assert (=> b!3231167 m!3513333))

(assert (=> d!888248 m!3507989))

(assert (=> d!888248 m!3507989))

(declare-fun m!3513335 () Bool)

(assert (=> d!888248 m!3513335))

(declare-fun m!3513337 () Bool)

(assert (=> b!3231168 m!3513337))

(assert (=> d!886684 d!888248))

(declare-fun d!888250 () Bool)

(declare-fun c!543222 () Bool)

(assert (=> d!888250 (= c!543222 ((_ is Node!10907) (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 0)))) (value!170541 (apply!8300 lt!1095069 0))))))))

(declare-fun e!2015205 () Bool)

(assert (=> d!888250 (= (inv!49253 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 0)))) (value!170541 (apply!8300 lt!1095069 0))))) e!2015205)))

(declare-fun b!3231169 () Bool)

(assert (=> b!3231169 (= e!2015205 (inv!49255 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 0)))) (value!170541 (apply!8300 lt!1095069 0))))))))

(declare-fun b!3231170 () Bool)

(declare-fun e!2015206 () Bool)

(assert (=> b!3231170 (= e!2015205 e!2015206)))

(declare-fun res!1315814 () Bool)

(assert (=> b!3231170 (= res!1315814 (not ((_ is Leaf!17151) (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 0)))) (value!170541 (apply!8300 lt!1095069 0)))))))))

(assert (=> b!3231170 (=> res!1315814 e!2015206)))

(declare-fun b!3231171 () Bool)

(assert (=> b!3231171 (= e!2015206 (inv!49256 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 0)))) (value!170541 (apply!8300 lt!1095069 0))))))))

(assert (= (and d!888250 c!543222) b!3231169))

(assert (= (and d!888250 (not c!543222)) b!3231170))

(assert (= (and b!3231170 (not res!1315814)) b!3231171))

(declare-fun m!3513339 () Bool)

(assert (=> b!3231169 m!3513339))

(declare-fun m!3513341 () Bool)

(assert (=> b!3231171 m!3513341))

(assert (=> b!3228977 d!888250))

(declare-fun d!888252 () Bool)

(declare-fun lt!1096499 () Int)

(assert (=> d!888252 (>= lt!1096499 0)))

(declare-fun e!2015207 () Int)

(assert (=> d!888252 (= lt!1096499 e!2015207)))

(declare-fun c!543223 () Bool)

(assert (=> d!888252 (= c!543223 ((_ is Nil!36361) (t!241330 (originalCharacters!5980 (h!41783 tokens!494)))))))

(assert (=> d!888252 (= (size!27430 (t!241330 (originalCharacters!5980 (h!41783 tokens!494)))) lt!1096499)))

(declare-fun b!3231172 () Bool)

(assert (=> b!3231172 (= e!2015207 0)))

(declare-fun b!3231173 () Bool)

(assert (=> b!3231173 (= e!2015207 (+ 1 (size!27430 (t!241330 (t!241330 (originalCharacters!5980 (h!41783 tokens!494)))))))))

(assert (= (and d!888252 c!543223) b!3231172))

(assert (= (and d!888252 (not c!543223)) b!3231173))

(declare-fun m!3513343 () Bool)

(assert (=> b!3231173 m!3513343))

(assert (=> b!3228829 d!888252))

(declare-fun b!3231175 () Bool)

(declare-fun e!2015208 () Bool)

(declare-fun tp!1017629 () Bool)

(declare-fun tp!1017626 () Bool)

(assert (=> b!3231175 (= e!2015208 (and tp!1017629 tp!1017626))))

(declare-fun b!3231176 () Bool)

(declare-fun tp!1017627 () Bool)

(assert (=> b!3231176 (= e!2015208 tp!1017627)))

(assert (=> b!3229088 (= tp!1017419 e!2015208)))

(declare-fun b!3231174 () Bool)

(assert (=> b!3231174 (= e!2015208 tp_is_empty!17329)))

(declare-fun b!3231177 () Bool)

(declare-fun tp!1017628 () Bool)

(declare-fun tp!1017625 () Bool)

(assert (=> b!3231177 (= e!2015208 (and tp!1017628 tp!1017625))))

(assert (= (and b!3229088 ((_ is ElementMatch!10025) (reg!10354 (regTwo!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231174))

(assert (= (and b!3229088 ((_ is Concat!15521) (reg!10354 (regTwo!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231175))

(assert (= (and b!3229088 ((_ is Star!10025) (reg!10354 (regTwo!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231176))

(assert (= (and b!3229088 ((_ is Union!10025) (reg!10354 (regTwo!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231177))

(declare-fun b!3231179 () Bool)

(declare-fun e!2015209 () Bool)

(declare-fun tp!1017634 () Bool)

(declare-fun tp!1017631 () Bool)

(assert (=> b!3231179 (= e!2015209 (and tp!1017634 tp!1017631))))

(declare-fun b!3231180 () Bool)

(declare-fun tp!1017632 () Bool)

(assert (=> b!3231180 (= e!2015209 tp!1017632)))

(assert (=> b!3229053 (= tp!1017389 e!2015209)))

(declare-fun b!3231178 () Bool)

(assert (=> b!3231178 (= e!2015209 tp_is_empty!17329)))

(declare-fun b!3231181 () Bool)

(declare-fun tp!1017633 () Bool)

(declare-fun tp!1017630 () Bool)

(assert (=> b!3231181 (= e!2015209 (and tp!1017633 tp!1017630))))

(assert (= (and b!3229053 ((_ is ElementMatch!10025) (reg!10354 (regOne!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231178))

(assert (= (and b!3229053 ((_ is Concat!15521) (reg!10354 (regOne!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231179))

(assert (= (and b!3229053 ((_ is Star!10025) (reg!10354 (regOne!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231180))

(assert (= (and b!3229053 ((_ is Union!10025) (reg!10354 (regOne!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231181))

(declare-fun b!3231183 () Bool)

(declare-fun e!2015210 () Bool)

(declare-fun tp!1017639 () Bool)

(declare-fun tp!1017636 () Bool)

(assert (=> b!3231183 (= e!2015210 (and tp!1017639 tp!1017636))))

(declare-fun b!3231184 () Bool)

(declare-fun tp!1017637 () Bool)

(assert (=> b!3231184 (= e!2015210 tp!1017637)))

(assert (=> b!3229062 (= tp!1017400 e!2015210)))

(declare-fun b!3231182 () Bool)

(assert (=> b!3231182 (= e!2015210 tp_is_empty!17329)))

(declare-fun b!3231185 () Bool)

(declare-fun tp!1017638 () Bool)

(declare-fun tp!1017635 () Bool)

(assert (=> b!3231185 (= e!2015210 (and tp!1017638 tp!1017635))))

(assert (= (and b!3229062 ((_ is ElementMatch!10025) (regOne!20563 (reg!10354 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231182))

(assert (= (and b!3229062 ((_ is Concat!15521) (regOne!20563 (reg!10354 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231183))

(assert (= (and b!3229062 ((_ is Star!10025) (regOne!20563 (reg!10354 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231184))

(assert (= (and b!3229062 ((_ is Union!10025) (regOne!20563 (reg!10354 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231185))

(declare-fun b!3231187 () Bool)

(declare-fun e!2015211 () Bool)

(declare-fun tp!1017644 () Bool)

(declare-fun tp!1017641 () Bool)

(assert (=> b!3231187 (= e!2015211 (and tp!1017644 tp!1017641))))

(declare-fun b!3231188 () Bool)

(declare-fun tp!1017642 () Bool)

(assert (=> b!3231188 (= e!2015211 tp!1017642)))

(assert (=> b!3229062 (= tp!1017397 e!2015211)))

(declare-fun b!3231186 () Bool)

(assert (=> b!3231186 (= e!2015211 tp_is_empty!17329)))

(declare-fun b!3231189 () Bool)

(declare-fun tp!1017643 () Bool)

(declare-fun tp!1017640 () Bool)

(assert (=> b!3231189 (= e!2015211 (and tp!1017643 tp!1017640))))

(assert (= (and b!3229062 ((_ is ElementMatch!10025) (regTwo!20563 (reg!10354 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231186))

(assert (= (and b!3229062 ((_ is Concat!15521) (regTwo!20563 (reg!10354 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231187))

(assert (= (and b!3229062 ((_ is Star!10025) (regTwo!20563 (reg!10354 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231188))

(assert (= (and b!3229062 ((_ is Union!10025) (regTwo!20563 (reg!10354 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231189))

(declare-fun b!3231191 () Bool)

(declare-fun e!2015212 () Bool)

(declare-fun tp!1017649 () Bool)

(declare-fun tp!1017646 () Bool)

(assert (=> b!3231191 (= e!2015212 (and tp!1017649 tp!1017646))))

(declare-fun b!3231192 () Bool)

(declare-fun tp!1017647 () Bool)

(assert (=> b!3231192 (= e!2015212 tp!1017647)))

(assert (=> b!3229144 (= tp!1017483 e!2015212)))

(declare-fun b!3231190 () Bool)

(assert (=> b!3231190 (= e!2015212 tp_is_empty!17329)))

(declare-fun b!3231193 () Bool)

(declare-fun tp!1017648 () Bool)

(declare-fun tp!1017645 () Bool)

(assert (=> b!3231193 (= e!2015212 (and tp!1017648 tp!1017645))))

(assert (= (and b!3229144 ((_ is ElementMatch!10025) (regex!5266 (h!41782 (t!241331 (t!241331 rules!2135)))))) b!3231190))

(assert (= (and b!3229144 ((_ is Concat!15521) (regex!5266 (h!41782 (t!241331 (t!241331 rules!2135)))))) b!3231191))

(assert (= (and b!3229144 ((_ is Star!10025) (regex!5266 (h!41782 (t!241331 (t!241331 rules!2135)))))) b!3231192))

(assert (= (and b!3229144 ((_ is Union!10025) (regex!5266 (h!41782 (t!241331 (t!241331 rules!2135)))))) b!3231193))

(declare-fun b!3231197 () Bool)

(declare-fun b_free!86173 () Bool)

(declare-fun b_next!86877 () Bool)

(assert (=> b!3231197 (= b_free!86173 (not b_next!86877))))

(declare-fun tp!1017650 () Bool)

(declare-fun b_and!216527 () Bool)

(assert (=> b!3231197 (= tp!1017650 b_and!216527)))

(declare-fun b_free!86175 () Bool)

(declare-fun b_next!86879 () Bool)

(assert (=> b!3231197 (= b_free!86175 (not b_next!86879))))

(declare-fun t!241716 () Bool)

(declare-fun tb!160171 () Bool)

(assert (=> (and b!3231197 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 (t!241332 tokens!494))))))) (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 (+ 0 1)))))) t!241716) tb!160171))

(declare-fun result!202732 () Bool)

(assert (= result!202732 result!202718))

(assert (=> d!888176 t!241716))

(declare-fun tb!160173 () Bool)

(declare-fun t!241718 () Bool)

(assert (=> (and b!3231197 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 (t!241332 tokens!494))))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (dropList!1093 lt!1095069 0)))))) t!241718) tb!160173))

(declare-fun result!202734 () Bool)

(assert (= result!202734 result!202564))

(assert (=> d!887144 t!241718))

(declare-fun t!241720 () Bool)

(declare-fun tb!160175 () Bool)

(assert (=> (and b!3231197 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 (t!241332 tokens!494))))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494))))))) t!241720) tb!160175))

(declare-fun result!202736 () Bool)

(assert (= result!202736 result!202536))

(assert (=> b!3229277 t!241720))

(declare-fun t!241722 () Bool)

(declare-fun tb!160177 () Bool)

(assert (=> (and b!3231197 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 (t!241332 tokens!494))))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494)))))) t!241722) tb!160177))

(declare-fun result!202738 () Bool)

(assert (= result!202738 result!202452))

(assert (=> b!3228832 t!241722))

(declare-fun t!241724 () Bool)

(declare-fun tb!160179 () Bool)

(assert (=> (and b!3231197 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 (t!241332 tokens!494))))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))) t!241724) tb!160179))

(declare-fun result!202740 () Bool)

(assert (= result!202740 result!202482))

(assert (=> d!886926 t!241724))

(declare-fun t!241726 () Bool)

(declare-fun tb!160181 () Bool)

(assert (=> (and b!3231197 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 (t!241332 tokens!494))))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (list!12978 lt!1095068)))))) t!241726) tb!160181))

(declare-fun result!202742 () Bool)

(assert (= result!202742 result!202592))

(assert (=> d!887322 t!241726))

(declare-fun t!241728 () Bool)

(declare-fun tb!160183 () Bool)

(assert (=> (and b!3231197 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 (t!241332 tokens!494))))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))) t!241728) tb!160183))

(declare-fun result!202744 () Bool)

(assert (= result!202744 result!202620))

(assert (=> d!887446 t!241728))

(declare-fun t!241730 () Bool)

(declare-fun tb!160185 () Bool)

(assert (=> (and b!3231197 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 (t!241332 tokens!494))))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (list!12978 lt!1095069)))))) t!241730) tb!160185))

(declare-fun result!202746 () Bool)

(assert (= result!202746 result!202578))

(assert (=> d!887162 t!241730))

(declare-fun tb!160187 () Bool)

(declare-fun t!241732 () Bool)

(assert (=> (and b!3231197 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 (t!241332 tokens!494))))))) (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241)))) t!241732) tb!160187))

(declare-fun result!202748 () Bool)

(assert (= result!202748 result!202394))

(assert (=> b!3228381 t!241732))

(assert (=> d!886484 t!241732))

(declare-fun t!241734 () Bool)

(declare-fun tb!160189 () Bool)

(assert (=> (and b!3231197 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 (t!241332 tokens!494))))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494))))) t!241734) tb!160189))

(declare-fun result!202750 () Bool)

(assert (= result!202750 result!202380))

(assert (=> b!3228240 t!241734))

(declare-fun tb!160191 () Bool)

(declare-fun t!241736 () Bool)

(assert (=> (and b!3231197 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 (t!241332 tokens!494))))))) (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 0))))) t!241736) tb!160191))

(declare-fun result!202752 () Bool)

(assert (= result!202752 result!202472))

(assert (=> d!886902 t!241736))

(assert (=> d!886502 t!241734))

(declare-fun t!241738 () Bool)

(declare-fun tb!160193 () Bool)

(assert (=> (and b!3231197 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 (t!241332 tokens!494))))))) (toChars!7233 (transformation!5266 (rule!7724 (_1!21033 (v!35826 lt!1095485)))))) t!241738) tb!160193))

(declare-fun result!202754 () Bool)

(assert (= result!202754 result!202690))

(assert (=> d!887962 t!241738))

(declare-fun tb!160195 () Bool)

(declare-fun t!241740 () Bool)

(assert (=> (and b!3231197 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 (t!241332 tokens!494))))))) (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095068 0))))) t!241740) tb!160195))

(declare-fun result!202756 () Bool)

(assert (= result!202756 result!202550))

(assert (=> d!887000 t!241740))

(declare-fun b_and!216529 () Bool)

(declare-fun tp!1017651 () Bool)

(assert (=> b!3231197 (= tp!1017651 (and (=> t!241724 result!202740) (=> t!241730 result!202746) (=> t!241740 result!202756) (=> t!241722 result!202738) (=> t!241728 result!202744) (=> t!241720 result!202736) (=> t!241718 result!202734) (=> t!241716 result!202732) (=> t!241732 result!202748) (=> t!241726 result!202742) (=> t!241736 result!202752) (=> t!241738 result!202754) (=> t!241734 result!202750) b_and!216529))))

(declare-fun e!2015215 () Bool)

(assert (=> b!3231197 (= e!2015215 (and tp!1017650 tp!1017651))))

(declare-fun e!2015216 () Bool)

(assert (=> b!3229127 (= tp!1017470 e!2015216)))

(declare-fun e!2015213 () Bool)

(declare-fun b!3231194 () Bool)

(declare-fun tp!1017653 () Bool)

(assert (=> b!3231194 (= e!2015216 (and (inv!49250 (h!41783 (t!241332 (t!241332 (t!241332 tokens!494))))) e!2015213 tp!1017653))))

(declare-fun b!3231196 () Bool)

(declare-fun e!2015214 () Bool)

(declare-fun tp!1017654 () Bool)

(assert (=> b!3231196 (= e!2015214 (and tp!1017654 (inv!49246 (tag!5798 (rule!7724 (h!41783 (t!241332 (t!241332 (t!241332 tokens!494))))))) (inv!49249 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 (t!241332 tokens!494))))))) e!2015215))))

(declare-fun tp!1017652 () Bool)

(declare-fun b!3231195 () Bool)

(assert (=> b!3231195 (= e!2015213 (and (inv!21 (value!170541 (h!41783 (t!241332 (t!241332 (t!241332 tokens!494)))))) e!2015214 tp!1017652))))

(assert (= b!3231196 b!3231197))

(assert (= b!3231195 b!3231196))

(assert (= b!3231194 b!3231195))

(assert (= (and b!3229127 ((_ is Cons!36363) (t!241332 (t!241332 (t!241332 tokens!494))))) b!3231194))

(declare-fun m!3513345 () Bool)

(assert (=> b!3231194 m!3513345))

(declare-fun m!3513347 () Bool)

(assert (=> b!3231196 m!3513347))

(declare-fun m!3513349 () Bool)

(assert (=> b!3231196 m!3513349))

(declare-fun m!3513351 () Bool)

(assert (=> b!3231195 m!3513351))

(declare-fun b!3231198 () Bool)

(declare-fun e!2015219 () Bool)

(declare-fun tp!1017655 () Bool)

(assert (=> b!3231198 (= e!2015219 (and tp_is_empty!17329 tp!1017655))))

(assert (=> b!3229081 (= tp!1017411 e!2015219)))

(assert (= (and b!3229081 ((_ is Cons!36361) (t!241330 (t!241330 (originalCharacters!5980 (h!41783 tokens!494)))))) b!3231198))

(declare-fun b!3231199 () Bool)

(declare-fun e!2015220 () Bool)

(declare-fun tp!1017656 () Bool)

(assert (=> b!3231199 (= e!2015220 (and tp_is_empty!17329 tp!1017656))))

(assert (=> b!3229094 (= tp!1017426 e!2015220)))

(assert (= (and b!3229094 ((_ is Cons!36361) (t!241330 (t!241330 (originalCharacters!5980 separatorToken!241))))) b!3231199))

(declare-fun b!3231201 () Bool)

(declare-fun e!2015221 () Bool)

(declare-fun tp!1017661 () Bool)

(declare-fun tp!1017658 () Bool)

(assert (=> b!3231201 (= e!2015221 (and tp!1017661 tp!1017658))))

(declare-fun b!3231202 () Bool)

(declare-fun tp!1017659 () Bool)

(assert (=> b!3231202 (= e!2015221 tp!1017659)))

(assert (=> b!3229125 (= tp!1017464 e!2015221)))

(declare-fun b!3231200 () Bool)

(assert (=> b!3231200 (= e!2015221 tp_is_empty!17329)))

(declare-fun b!3231203 () Bool)

(declare-fun tp!1017660 () Bool)

(declare-fun tp!1017657 () Bool)

(assert (=> b!3231203 (= e!2015221 (and tp!1017660 tp!1017657))))

(assert (= (and b!3229125 ((_ is ElementMatch!10025) (reg!10354 (regTwo!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231200))

(assert (= (and b!3229125 ((_ is Concat!15521) (reg!10354 (regTwo!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231201))

(assert (= (and b!3229125 ((_ is Star!10025) (reg!10354 (regTwo!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231202))

(assert (= (and b!3229125 ((_ is Union!10025) (reg!10354 (regTwo!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231203))

(declare-fun b!3231205 () Bool)

(declare-fun e!2015222 () Bool)

(declare-fun tp!1017666 () Bool)

(declare-fun tp!1017663 () Bool)

(assert (=> b!3231205 (= e!2015222 (and tp!1017666 tp!1017663))))

(declare-fun b!3231206 () Bool)

(declare-fun tp!1017664 () Bool)

(assert (=> b!3231206 (= e!2015222 tp!1017664)))

(assert (=> b!3229129 (= tp!1017471 e!2015222)))

(declare-fun b!3231204 () Bool)

(assert (=> b!3231204 (= e!2015222 tp_is_empty!17329)))

(declare-fun b!3231207 () Bool)

(declare-fun tp!1017665 () Bool)

(declare-fun tp!1017662 () Bool)

(assert (=> b!3231207 (= e!2015222 (and tp!1017665 tp!1017662))))

(assert (= (and b!3229129 ((_ is ElementMatch!10025) (regex!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494))))))) b!3231204))

(assert (= (and b!3229129 ((_ is Concat!15521) (regex!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494))))))) b!3231205))

(assert (= (and b!3229129 ((_ is Star!10025) (regex!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494))))))) b!3231206))

(assert (= (and b!3229129 ((_ is Union!10025) (regex!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494))))))) b!3231207))

(declare-fun b!3231209 () Bool)

(declare-fun e!2015223 () Bool)

(declare-fun tp!1017671 () Bool)

(declare-fun tp!1017668 () Bool)

(assert (=> b!3231209 (= e!2015223 (and tp!1017671 tp!1017668))))

(declare-fun b!3231210 () Bool)

(declare-fun tp!1017669 () Bool)

(assert (=> b!3231210 (= e!2015223 tp!1017669)))

(assert (=> b!3229155 (= tp!1017488 e!2015223)))

(declare-fun b!3231208 () Bool)

(assert (=> b!3231208 (= e!2015223 tp_is_empty!17329)))

(declare-fun b!3231211 () Bool)

(declare-fun tp!1017670 () Bool)

(declare-fun tp!1017667 () Bool)

(assert (=> b!3231211 (= e!2015223 (and tp!1017670 tp!1017667))))

(assert (= (and b!3229155 ((_ is ElementMatch!10025) (reg!10354 (regOne!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231208))

(assert (= (and b!3229155 ((_ is Concat!15521) (reg!10354 (regOne!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231209))

(assert (= (and b!3229155 ((_ is Star!10025) (reg!10354 (regOne!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231210))

(assert (= (and b!3229155 ((_ is Union!10025) (reg!10354 (regOne!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231211))

(declare-fun b!3231213 () Bool)

(declare-fun e!2015224 () Bool)

(declare-fun tp!1017676 () Bool)

(declare-fun tp!1017673 () Bool)

(assert (=> b!3231213 (= e!2015224 (and tp!1017676 tp!1017673))))

(declare-fun b!3231214 () Bool)

(declare-fun tp!1017674 () Bool)

(assert (=> b!3231214 (= e!2015224 tp!1017674)))

(assert (=> b!3229120 (= tp!1017461 e!2015224)))

(declare-fun b!3231212 () Bool)

(assert (=> b!3231212 (= e!2015224 tp_is_empty!17329)))

(declare-fun b!3231215 () Bool)

(declare-fun tp!1017675 () Bool)

(declare-fun tp!1017672 () Bool)

(assert (=> b!3231215 (= e!2015224 (and tp!1017675 tp!1017672))))

(assert (= (and b!3229120 ((_ is ElementMatch!10025) (regOne!20562 (regOne!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231212))

(assert (= (and b!3229120 ((_ is Concat!15521) (regOne!20562 (regOne!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231213))

(assert (= (and b!3229120 ((_ is Star!10025) (regOne!20562 (regOne!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231214))

(assert (= (and b!3229120 ((_ is Union!10025) (regOne!20562 (regOne!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231215))

(declare-fun b!3231217 () Bool)

(declare-fun e!2015225 () Bool)

(declare-fun tp!1017681 () Bool)

(declare-fun tp!1017678 () Bool)

(assert (=> b!3231217 (= e!2015225 (and tp!1017681 tp!1017678))))

(declare-fun b!3231218 () Bool)

(declare-fun tp!1017679 () Bool)

(assert (=> b!3231218 (= e!2015225 tp!1017679)))

(assert (=> b!3229120 (= tp!1017458 e!2015225)))

(declare-fun b!3231216 () Bool)

(assert (=> b!3231216 (= e!2015225 tp_is_empty!17329)))

(declare-fun b!3231219 () Bool)

(declare-fun tp!1017680 () Bool)

(declare-fun tp!1017677 () Bool)

(assert (=> b!3231219 (= e!2015225 (and tp!1017680 tp!1017677))))

(assert (= (and b!3229120 ((_ is ElementMatch!10025) (regTwo!20562 (regOne!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231216))

(assert (= (and b!3229120 ((_ is Concat!15521) (regTwo!20562 (regOne!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231217))

(assert (= (and b!3229120 ((_ is Star!10025) (regTwo!20562 (regOne!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231218))

(assert (= (and b!3229120 ((_ is Union!10025) (regTwo!20562 (regOne!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231219))

(declare-fun b!3231221 () Bool)

(declare-fun e!2015226 () Bool)

(declare-fun tp!1017686 () Bool)

(declare-fun tp!1017683 () Bool)

(assert (=> b!3231221 (= e!2015226 (and tp!1017686 tp!1017683))))

(declare-fun b!3231222 () Bool)

(declare-fun tp!1017684 () Bool)

(assert (=> b!3231222 (= e!2015226 tp!1017684)))

(assert (=> b!3229141 (= tp!1017479 e!2015226)))

(declare-fun b!3231220 () Bool)

(assert (=> b!3231220 (= e!2015226 tp_is_empty!17329)))

(declare-fun b!3231223 () Bool)

(declare-fun tp!1017685 () Bool)

(declare-fun tp!1017682 () Bool)

(assert (=> b!3231223 (= e!2015226 (and tp!1017685 tp!1017682))))

(assert (= (and b!3229141 ((_ is ElementMatch!10025) (reg!10354 (regTwo!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231220))

(assert (= (and b!3229141 ((_ is Concat!15521) (reg!10354 (regTwo!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231221))

(assert (= (and b!3229141 ((_ is Star!10025) (reg!10354 (regTwo!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231222))

(assert (= (and b!3229141 ((_ is Union!10025) (reg!10354 (regTwo!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231223))

(declare-fun b!3231225 () Bool)

(declare-fun e!2015227 () Bool)

(declare-fun tp!1017691 () Bool)

(declare-fun tp!1017688 () Bool)

(assert (=> b!3231225 (= e!2015227 (and tp!1017691 tp!1017688))))

(declare-fun b!3231226 () Bool)

(declare-fun tp!1017689 () Bool)

(assert (=> b!3231226 (= e!2015227 tp!1017689)))

(assert (=> b!3229104 (= tp!1017441 e!2015227)))

(declare-fun b!3231224 () Bool)

(assert (=> b!3231224 (= e!2015227 tp_is_empty!17329)))

(declare-fun b!3231227 () Bool)

(declare-fun tp!1017690 () Bool)

(declare-fun tp!1017687 () Bool)

(assert (=> b!3231227 (= e!2015227 (and tp!1017690 tp!1017687))))

(assert (= (and b!3229104 ((_ is ElementMatch!10025) (regOne!20562 (regex!5266 (h!41782 (t!241331 rules!2135)))))) b!3231224))

(assert (= (and b!3229104 ((_ is Concat!15521) (regOne!20562 (regex!5266 (h!41782 (t!241331 rules!2135)))))) b!3231225))

(assert (= (and b!3229104 ((_ is Star!10025) (regOne!20562 (regex!5266 (h!41782 (t!241331 rules!2135)))))) b!3231226))

(assert (= (and b!3229104 ((_ is Union!10025) (regOne!20562 (regex!5266 (h!41782 (t!241331 rules!2135)))))) b!3231227))

(declare-fun b!3231229 () Bool)

(declare-fun e!2015228 () Bool)

(declare-fun tp!1017696 () Bool)

(declare-fun tp!1017693 () Bool)

(assert (=> b!3231229 (= e!2015228 (and tp!1017696 tp!1017693))))

(declare-fun b!3231230 () Bool)

(declare-fun tp!1017694 () Bool)

(assert (=> b!3231230 (= e!2015228 tp!1017694)))

(assert (=> b!3229104 (= tp!1017438 e!2015228)))

(declare-fun b!3231228 () Bool)

(assert (=> b!3231228 (= e!2015228 tp_is_empty!17329)))

(declare-fun b!3231231 () Bool)

(declare-fun tp!1017695 () Bool)

(declare-fun tp!1017692 () Bool)

(assert (=> b!3231231 (= e!2015228 (and tp!1017695 tp!1017692))))

(assert (= (and b!3229104 ((_ is ElementMatch!10025) (regTwo!20562 (regex!5266 (h!41782 (t!241331 rules!2135)))))) b!3231228))

(assert (= (and b!3229104 ((_ is Concat!15521) (regTwo!20562 (regex!5266 (h!41782 (t!241331 rules!2135)))))) b!3231229))

(assert (= (and b!3229104 ((_ is Star!10025) (regTwo!20562 (regex!5266 (h!41782 (t!241331 rules!2135)))))) b!3231230))

(assert (= (and b!3229104 ((_ is Union!10025) (regTwo!20562 (regex!5266 (h!41782 (t!241331 rules!2135)))))) b!3231231))

(declare-fun e!2015230 () Bool)

(declare-fun tp!1017699 () Bool)

(declare-fun tp!1017697 () Bool)

(declare-fun b!3231232 () Bool)

(assert (=> b!3231232 (= e!2015230 (and (inv!49253 (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (value!170541 (h!41783 (t!241332 tokens!494))))))) tp!1017699 (inv!49253 (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (value!170541 (h!41783 (t!241332 tokens!494))))))) tp!1017697))))

(declare-fun b!3231234 () Bool)

(declare-fun e!2015229 () Bool)

(declare-fun tp!1017698 () Bool)

(assert (=> b!3231234 (= e!2015229 tp!1017698)))

(declare-fun b!3231233 () Bool)

(assert (=> b!3231233 (= e!2015230 (and (inv!49259 (xs!14025 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (value!170541 (h!41783 (t!241332 tokens!494))))))) e!2015229))))

(assert (=> b!3228834 (= tp!1017383 (and (inv!49253 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (value!170541 (h!41783 (t!241332 tokens!494)))))) e!2015230))))

(assert (= (and b!3228834 ((_ is Node!10907) (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (value!170541 (h!41783 (t!241332 tokens!494))))))) b!3231232))

(assert (= b!3231233 b!3231234))

(assert (= (and b!3228834 ((_ is Leaf!17151) (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (value!170541 (h!41783 (t!241332 tokens!494))))))) b!3231233))

(declare-fun m!3513353 () Bool)

(assert (=> b!3231232 m!3513353))

(declare-fun m!3513355 () Bool)

(assert (=> b!3231232 m!3513355))

(declare-fun m!3513357 () Bool)

(assert (=> b!3231233 m!3513357))

(assert (=> b!3228834 m!3508289))

(declare-fun b!3231236 () Bool)

(declare-fun e!2015231 () Bool)

(declare-fun tp!1017704 () Bool)

(declare-fun tp!1017701 () Bool)

(assert (=> b!3231236 (= e!2015231 (and tp!1017704 tp!1017701))))

(declare-fun b!3231237 () Bool)

(declare-fun tp!1017702 () Bool)

(assert (=> b!3231237 (= e!2015231 tp!1017702)))

(assert (=> b!3229137 (= tp!1017474 e!2015231)))

(declare-fun b!3231235 () Bool)

(assert (=> b!3231235 (= e!2015231 tp_is_empty!17329)))

(declare-fun b!3231238 () Bool)

(declare-fun tp!1017703 () Bool)

(declare-fun tp!1017700 () Bool)

(assert (=> b!3231238 (= e!2015231 (and tp!1017703 tp!1017700))))

(assert (= (and b!3229137 ((_ is ElementMatch!10025) (reg!10354 (regOne!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231235))

(assert (= (and b!3229137 ((_ is Concat!15521) (reg!10354 (regOne!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231236))

(assert (= (and b!3229137 ((_ is Star!10025) (reg!10354 (regOne!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231237))

(assert (= (and b!3229137 ((_ is Union!10025) (reg!10354 (regOne!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231238))

(declare-fun b!3231240 () Bool)

(declare-fun e!2015232 () Bool)

(declare-fun tp!1017709 () Bool)

(declare-fun tp!1017706 () Bool)

(assert (=> b!3231240 (= e!2015232 (and tp!1017709 tp!1017706))))

(declare-fun b!3231241 () Bool)

(declare-fun tp!1017707 () Bool)

(assert (=> b!3231241 (= e!2015232 tp!1017707)))

(assert (=> b!3229105 (= tp!1017439 e!2015232)))

(declare-fun b!3231239 () Bool)

(assert (=> b!3231239 (= e!2015232 tp_is_empty!17329)))

(declare-fun b!3231242 () Bool)

(declare-fun tp!1017708 () Bool)

(declare-fun tp!1017705 () Bool)

(assert (=> b!3231242 (= e!2015232 (and tp!1017708 tp!1017705))))

(assert (= (and b!3229105 ((_ is ElementMatch!10025) (reg!10354 (regex!5266 (h!41782 (t!241331 rules!2135)))))) b!3231239))

(assert (= (and b!3229105 ((_ is Concat!15521) (reg!10354 (regex!5266 (h!41782 (t!241331 rules!2135)))))) b!3231240))

(assert (= (and b!3229105 ((_ is Star!10025) (reg!10354 (regex!5266 (h!41782 (t!241331 rules!2135)))))) b!3231241))

(assert (= (and b!3229105 ((_ is Union!10025) (reg!10354 (regex!5266 (h!41782 (t!241331 rules!2135)))))) b!3231242))

(declare-fun b!3231244 () Bool)

(declare-fun e!2015233 () Bool)

(declare-fun tp!1017714 () Bool)

(declare-fun tp!1017711 () Bool)

(assert (=> b!3231244 (= e!2015233 (and tp!1017714 tp!1017711))))

(declare-fun b!3231245 () Bool)

(declare-fun tp!1017712 () Bool)

(assert (=> b!3231245 (= e!2015233 tp!1017712)))

(assert (=> b!3229108 (= tp!1017446 e!2015233)))

(declare-fun b!3231243 () Bool)

(assert (=> b!3231243 (= e!2015233 tp_is_empty!17329)))

(declare-fun b!3231246 () Bool)

(declare-fun tp!1017713 () Bool)

(declare-fun tp!1017710 () Bool)

(assert (=> b!3231246 (= e!2015233 (and tp!1017713 tp!1017710))))

(assert (= (and b!3229108 ((_ is ElementMatch!10025) (regOne!20562 (reg!10354 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231243))

(assert (= (and b!3229108 ((_ is Concat!15521) (regOne!20562 (reg!10354 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231244))

(assert (= (and b!3229108 ((_ is Star!10025) (regOne!20562 (reg!10354 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231245))

(assert (= (and b!3229108 ((_ is Union!10025) (regOne!20562 (reg!10354 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231246))

(declare-fun b!3231248 () Bool)

(declare-fun e!2015234 () Bool)

(declare-fun tp!1017719 () Bool)

(declare-fun tp!1017716 () Bool)

(assert (=> b!3231248 (= e!2015234 (and tp!1017719 tp!1017716))))

(declare-fun b!3231249 () Bool)

(declare-fun tp!1017717 () Bool)

(assert (=> b!3231249 (= e!2015234 tp!1017717)))

(assert (=> b!3229108 (= tp!1017443 e!2015234)))

(declare-fun b!3231247 () Bool)

(assert (=> b!3231247 (= e!2015234 tp_is_empty!17329)))

(declare-fun b!3231250 () Bool)

(declare-fun tp!1017718 () Bool)

(declare-fun tp!1017715 () Bool)

(assert (=> b!3231250 (= e!2015234 (and tp!1017718 tp!1017715))))

(assert (= (and b!3229108 ((_ is ElementMatch!10025) (regTwo!20562 (reg!10354 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231247))

(assert (= (and b!3229108 ((_ is Concat!15521) (regTwo!20562 (reg!10354 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231248))

(assert (= (and b!3229108 ((_ is Star!10025) (regTwo!20562 (reg!10354 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231249))

(assert (= (and b!3229108 ((_ is Union!10025) (regTwo!20562 (reg!10354 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231250))

(declare-fun b!3231252 () Bool)

(declare-fun e!2015235 () Bool)

(declare-fun tp!1017724 () Bool)

(declare-fun tp!1017721 () Bool)

(assert (=> b!3231252 (= e!2015235 (and tp!1017724 tp!1017721))))

(declare-fun b!3231253 () Bool)

(declare-fun tp!1017722 () Bool)

(assert (=> b!3231253 (= e!2015235 tp!1017722)))

(assert (=> b!3229084 (= tp!1017414 e!2015235)))

(declare-fun b!3231251 () Bool)

(assert (=> b!3231251 (= e!2015235 tp_is_empty!17329)))

(declare-fun b!3231254 () Bool)

(declare-fun tp!1017723 () Bool)

(declare-fun tp!1017720 () Bool)

(assert (=> b!3231254 (= e!2015235 (and tp!1017723 tp!1017720))))

(assert (= (and b!3229084 ((_ is ElementMatch!10025) (reg!10354 (regOne!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231251))

(assert (= (and b!3229084 ((_ is Concat!15521) (reg!10354 (regOne!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231252))

(assert (= (and b!3229084 ((_ is Star!10025) (reg!10354 (regOne!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231253))

(assert (= (and b!3229084 ((_ is Union!10025) (reg!10354 (regOne!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231254))

(declare-fun b!3231256 () Bool)

(declare-fun e!2015236 () Bool)

(declare-fun tp!1017729 () Bool)

(declare-fun tp!1017726 () Bool)

(assert (=> b!3231256 (= e!2015236 (and tp!1017729 tp!1017726))))

(declare-fun b!3231257 () Bool)

(declare-fun tp!1017727 () Bool)

(assert (=> b!3231257 (= e!2015236 tp!1017727)))

(assert (=> b!3229058 (= tp!1017395 e!2015236)))

(declare-fun b!3231255 () Bool)

(assert (=> b!3231255 (= e!2015236 tp_is_empty!17329)))

(declare-fun b!3231258 () Bool)

(declare-fun tp!1017728 () Bool)

(declare-fun tp!1017725 () Bool)

(assert (=> b!3231258 (= e!2015236 (and tp!1017728 tp!1017725))))

(assert (= (and b!3229058 ((_ is ElementMatch!10025) (regOne!20563 (regTwo!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231255))

(assert (= (and b!3229058 ((_ is Concat!15521) (regOne!20563 (regTwo!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231256))

(assert (= (and b!3229058 ((_ is Star!10025) (regOne!20563 (regTwo!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231257))

(assert (= (and b!3229058 ((_ is Union!10025) (regOne!20563 (regTwo!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231258))

(declare-fun b!3231260 () Bool)

(declare-fun e!2015237 () Bool)

(declare-fun tp!1017734 () Bool)

(declare-fun tp!1017731 () Bool)

(assert (=> b!3231260 (= e!2015237 (and tp!1017734 tp!1017731))))

(declare-fun b!3231261 () Bool)

(declare-fun tp!1017732 () Bool)

(assert (=> b!3231261 (= e!2015237 tp!1017732)))

(assert (=> b!3229058 (= tp!1017392 e!2015237)))

(declare-fun b!3231259 () Bool)

(assert (=> b!3231259 (= e!2015237 tp_is_empty!17329)))

(declare-fun b!3231262 () Bool)

(declare-fun tp!1017733 () Bool)

(declare-fun tp!1017730 () Bool)

(assert (=> b!3231262 (= e!2015237 (and tp!1017733 tp!1017730))))

(assert (= (and b!3229058 ((_ is ElementMatch!10025) (regTwo!20563 (regTwo!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231259))

(assert (= (and b!3229058 ((_ is Concat!15521) (regTwo!20563 (regTwo!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231260))

(assert (= (and b!3229058 ((_ is Star!10025) (regTwo!20563 (regTwo!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231261))

(assert (= (and b!3229058 ((_ is Union!10025) (regTwo!20563 (regTwo!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231262))

(declare-fun b!3231264 () Bool)

(declare-fun e!2015238 () Bool)

(declare-fun tp!1017739 () Bool)

(declare-fun tp!1017736 () Bool)

(assert (=> b!3231264 (= e!2015238 (and tp!1017739 tp!1017736))))

(declare-fun b!3231265 () Bool)

(declare-fun tp!1017737 () Bool)

(assert (=> b!3231265 (= e!2015238 tp!1017737)))

(assert (=> b!3229116 (= tp!1017456 e!2015238)))

(declare-fun b!3231263 () Bool)

(assert (=> b!3231263 (= e!2015238 tp_is_empty!17329)))

(declare-fun b!3231266 () Bool)

(declare-fun tp!1017738 () Bool)

(declare-fun tp!1017735 () Bool)

(assert (=> b!3231266 (= e!2015238 (and tp!1017738 tp!1017735))))

(assert (= (and b!3229116 ((_ is ElementMatch!10025) (regOne!20562 (regTwo!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231263))

(assert (= (and b!3229116 ((_ is Concat!15521) (regOne!20562 (regTwo!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231264))

(assert (= (and b!3229116 ((_ is Star!10025) (regOne!20562 (regTwo!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231265))

(assert (= (and b!3229116 ((_ is Union!10025) (regOne!20562 (regTwo!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231266))

(declare-fun b!3231268 () Bool)

(declare-fun e!2015239 () Bool)

(declare-fun tp!1017744 () Bool)

(declare-fun tp!1017741 () Bool)

(assert (=> b!3231268 (= e!2015239 (and tp!1017744 tp!1017741))))

(declare-fun b!3231269 () Bool)

(declare-fun tp!1017742 () Bool)

(assert (=> b!3231269 (= e!2015239 tp!1017742)))

(assert (=> b!3229116 (= tp!1017453 e!2015239)))

(declare-fun b!3231267 () Bool)

(assert (=> b!3231267 (= e!2015239 tp_is_empty!17329)))

(declare-fun b!3231270 () Bool)

(declare-fun tp!1017743 () Bool)

(declare-fun tp!1017740 () Bool)

(assert (=> b!3231270 (= e!2015239 (and tp!1017743 tp!1017740))))

(assert (= (and b!3229116 ((_ is ElementMatch!10025) (regTwo!20562 (regTwo!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231267))

(assert (= (and b!3229116 ((_ is Concat!15521) (regTwo!20562 (regTwo!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231268))

(assert (= (and b!3229116 ((_ is Star!10025) (regTwo!20562 (regTwo!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231269))

(assert (= (and b!3229116 ((_ is Union!10025) (regTwo!20562 (regTwo!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231270))

(declare-fun b!3231272 () Bool)

(declare-fun e!2015240 () Bool)

(declare-fun tp!1017749 () Bool)

(declare-fun tp!1017746 () Bool)

(assert (=> b!3231272 (= e!2015240 (and tp!1017749 tp!1017746))))

(declare-fun b!3231273 () Bool)

(declare-fun tp!1017747 () Bool)

(assert (=> b!3231273 (= e!2015240 tp!1017747)))

(assert (=> b!3229113 (= tp!1017449 e!2015240)))

(declare-fun b!3231271 () Bool)

(assert (=> b!3231271 (= e!2015240 tp_is_empty!17329)))

(declare-fun b!3231274 () Bool)

(declare-fun tp!1017748 () Bool)

(declare-fun tp!1017745 () Bool)

(assert (=> b!3231274 (= e!2015240 (and tp!1017748 tp!1017745))))

(assert (= (and b!3229113 ((_ is ElementMatch!10025) (reg!10354 (regOne!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231271))

(assert (= (and b!3229113 ((_ is Concat!15521) (reg!10354 (regOne!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231272))

(assert (= (and b!3229113 ((_ is Star!10025) (reg!10354 (regOne!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231273))

(assert (= (and b!3229113 ((_ is Union!10025) (reg!10354 (regOne!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231274))

(declare-fun b!3231276 () Bool)

(declare-fun e!2015241 () Bool)

(declare-fun tp!1017754 () Bool)

(declare-fun tp!1017751 () Bool)

(assert (=> b!3231276 (= e!2015241 (and tp!1017754 tp!1017751))))

(declare-fun b!3231277 () Bool)

(declare-fun tp!1017752 () Bool)

(assert (=> b!3231277 (= e!2015241 tp!1017752)))

(assert (=> b!3229118 (= tp!1017455 e!2015241)))

(declare-fun b!3231275 () Bool)

(assert (=> b!3231275 (= e!2015241 tp_is_empty!17329)))

(declare-fun b!3231278 () Bool)

(declare-fun tp!1017753 () Bool)

(declare-fun tp!1017750 () Bool)

(assert (=> b!3231278 (= e!2015241 (and tp!1017753 tp!1017750))))

(assert (= (and b!3229118 ((_ is ElementMatch!10025) (regOne!20563 (regTwo!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231275))

(assert (= (and b!3229118 ((_ is Concat!15521) (regOne!20563 (regTwo!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231276))

(assert (= (and b!3229118 ((_ is Star!10025) (regOne!20563 (regTwo!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231277))

(assert (= (and b!3229118 ((_ is Union!10025) (regOne!20563 (regTwo!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231278))

(declare-fun b!3231280 () Bool)

(declare-fun e!2015242 () Bool)

(declare-fun tp!1017759 () Bool)

(declare-fun tp!1017756 () Bool)

(assert (=> b!3231280 (= e!2015242 (and tp!1017759 tp!1017756))))

(declare-fun b!3231281 () Bool)

(declare-fun tp!1017757 () Bool)

(assert (=> b!3231281 (= e!2015242 tp!1017757)))

(assert (=> b!3229118 (= tp!1017452 e!2015242)))

(declare-fun b!3231279 () Bool)

(assert (=> b!3231279 (= e!2015242 tp_is_empty!17329)))

(declare-fun b!3231282 () Bool)

(declare-fun tp!1017758 () Bool)

(declare-fun tp!1017755 () Bool)

(assert (=> b!3231282 (= e!2015242 (and tp!1017758 tp!1017755))))

(assert (= (and b!3229118 ((_ is ElementMatch!10025) (regTwo!20563 (regTwo!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231279))

(assert (= (and b!3229118 ((_ is Concat!15521) (regTwo!20563 (regTwo!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231280))

(assert (= (and b!3229118 ((_ is Star!10025) (regTwo!20563 (regTwo!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231281))

(assert (= (and b!3229118 ((_ is Union!10025) (regTwo!20563 (regTwo!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231282))

(declare-fun b!3231284 () Bool)

(declare-fun e!2015243 () Bool)

(declare-fun tp!1017764 () Bool)

(declare-fun tp!1017761 () Bool)

(assert (=> b!3231284 (= e!2015243 (and tp!1017764 tp!1017761))))

(declare-fun b!3231285 () Bool)

(declare-fun tp!1017762 () Bool)

(assert (=> b!3231285 (= e!2015243 tp!1017762)))

(assert (=> b!3229100 (= tp!1017436 e!2015243)))

(declare-fun b!3231283 () Bool)

(assert (=> b!3231283 (= e!2015243 tp_is_empty!17329)))

(declare-fun b!3231286 () Bool)

(declare-fun tp!1017763 () Bool)

(declare-fun tp!1017760 () Bool)

(assert (=> b!3231286 (= e!2015243 (and tp!1017763 tp!1017760))))

(assert (= (and b!3229100 ((_ is ElementMatch!10025) (regOne!20562 (reg!10354 (regex!5266 (h!41782 rules!2135)))))) b!3231283))

(assert (= (and b!3229100 ((_ is Concat!15521) (regOne!20562 (reg!10354 (regex!5266 (h!41782 rules!2135)))))) b!3231284))

(assert (= (and b!3229100 ((_ is Star!10025) (regOne!20562 (reg!10354 (regex!5266 (h!41782 rules!2135)))))) b!3231285))

(assert (= (and b!3229100 ((_ is Union!10025) (regOne!20562 (reg!10354 (regex!5266 (h!41782 rules!2135)))))) b!3231286))

(declare-fun b!3231288 () Bool)

(declare-fun e!2015244 () Bool)

(declare-fun tp!1017769 () Bool)

(declare-fun tp!1017766 () Bool)

(assert (=> b!3231288 (= e!2015244 (and tp!1017769 tp!1017766))))

(declare-fun b!3231289 () Bool)

(declare-fun tp!1017767 () Bool)

(assert (=> b!3231289 (= e!2015244 tp!1017767)))

(assert (=> b!3229100 (= tp!1017433 e!2015244)))

(declare-fun b!3231287 () Bool)

(assert (=> b!3231287 (= e!2015244 tp_is_empty!17329)))

(declare-fun b!3231290 () Bool)

(declare-fun tp!1017768 () Bool)

(declare-fun tp!1017765 () Bool)

(assert (=> b!3231290 (= e!2015244 (and tp!1017768 tp!1017765))))

(assert (= (and b!3229100 ((_ is ElementMatch!10025) (regTwo!20562 (reg!10354 (regex!5266 (h!41782 rules!2135)))))) b!3231287))

(assert (= (and b!3229100 ((_ is Concat!15521) (regTwo!20562 (reg!10354 (regex!5266 (h!41782 rules!2135)))))) b!3231288))

(assert (= (and b!3229100 ((_ is Star!10025) (regTwo!20562 (reg!10354 (regex!5266 (h!41782 rules!2135)))))) b!3231289))

(assert (= (and b!3229100 ((_ is Union!10025) (regTwo!20562 (reg!10354 (regex!5266 (h!41782 rules!2135)))))) b!3231290))

(declare-fun b!3231292 () Bool)

(declare-fun e!2015245 () Bool)

(declare-fun tp!1017774 () Bool)

(declare-fun tp!1017771 () Bool)

(assert (=> b!3231292 (= e!2015245 (and tp!1017774 tp!1017771))))

(declare-fun b!3231293 () Bool)

(declare-fun tp!1017772 () Bool)

(assert (=> b!3231293 (= e!2015245 tp!1017772)))

(assert (=> b!3229102 (= tp!1017435 e!2015245)))

(declare-fun b!3231291 () Bool)

(assert (=> b!3231291 (= e!2015245 tp_is_empty!17329)))

(declare-fun b!3231294 () Bool)

(declare-fun tp!1017773 () Bool)

(declare-fun tp!1017770 () Bool)

(assert (=> b!3231294 (= e!2015245 (and tp!1017773 tp!1017770))))

(assert (= (and b!3229102 ((_ is ElementMatch!10025) (regOne!20563 (reg!10354 (regex!5266 (h!41782 rules!2135)))))) b!3231291))

(assert (= (and b!3229102 ((_ is Concat!15521) (regOne!20563 (reg!10354 (regex!5266 (h!41782 rules!2135)))))) b!3231292))

(assert (= (and b!3229102 ((_ is Star!10025) (regOne!20563 (reg!10354 (regex!5266 (h!41782 rules!2135)))))) b!3231293))

(assert (= (and b!3229102 ((_ is Union!10025) (regOne!20563 (reg!10354 (regex!5266 (h!41782 rules!2135)))))) b!3231294))

(declare-fun b!3231296 () Bool)

(declare-fun e!2015246 () Bool)

(declare-fun tp!1017779 () Bool)

(declare-fun tp!1017776 () Bool)

(assert (=> b!3231296 (= e!2015246 (and tp!1017779 tp!1017776))))

(declare-fun b!3231297 () Bool)

(declare-fun tp!1017777 () Bool)

(assert (=> b!3231297 (= e!2015246 tp!1017777)))

(assert (=> b!3229102 (= tp!1017432 e!2015246)))

(declare-fun b!3231295 () Bool)

(assert (=> b!3231295 (= e!2015246 tp_is_empty!17329)))

(declare-fun b!3231298 () Bool)

(declare-fun tp!1017778 () Bool)

(declare-fun tp!1017775 () Bool)

(assert (=> b!3231298 (= e!2015246 (and tp!1017778 tp!1017775))))

(assert (= (and b!3229102 ((_ is ElementMatch!10025) (regTwo!20563 (reg!10354 (regex!5266 (h!41782 rules!2135)))))) b!3231295))

(assert (= (and b!3229102 ((_ is Concat!15521) (regTwo!20563 (reg!10354 (regex!5266 (h!41782 rules!2135)))))) b!3231296))

(assert (= (and b!3229102 ((_ is Star!10025) (regTwo!20563 (reg!10354 (regex!5266 (h!41782 rules!2135)))))) b!3231297))

(assert (= (and b!3229102 ((_ is Union!10025) (regTwo!20563 (reg!10354 (regex!5266 (h!41782 rules!2135)))))) b!3231298))

(declare-fun b!3231300 () Bool)

(declare-fun e!2015247 () Bool)

(declare-fun tp!1017784 () Bool)

(declare-fun tp!1017781 () Bool)

(assert (=> b!3231300 (= e!2015247 (and tp!1017784 tp!1017781))))

(declare-fun b!3231301 () Bool)

(declare-fun tp!1017782 () Bool)

(assert (=> b!3231301 (= e!2015247 tp!1017782)))

(assert (=> b!3229110 (= tp!1017445 e!2015247)))

(declare-fun b!3231299 () Bool)

(assert (=> b!3231299 (= e!2015247 tp_is_empty!17329)))

(declare-fun b!3231302 () Bool)

(declare-fun tp!1017783 () Bool)

(declare-fun tp!1017780 () Bool)

(assert (=> b!3231302 (= e!2015247 (and tp!1017783 tp!1017780))))

(assert (= (and b!3229110 ((_ is ElementMatch!10025) (regOne!20563 (reg!10354 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231299))

(assert (= (and b!3229110 ((_ is Concat!15521) (regOne!20563 (reg!10354 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231300))

(assert (= (and b!3229110 ((_ is Star!10025) (regOne!20563 (reg!10354 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231301))

(assert (= (and b!3229110 ((_ is Union!10025) (regOne!20563 (reg!10354 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231302))

(declare-fun b!3231304 () Bool)

(declare-fun e!2015248 () Bool)

(declare-fun tp!1017789 () Bool)

(declare-fun tp!1017786 () Bool)

(assert (=> b!3231304 (= e!2015248 (and tp!1017789 tp!1017786))))

(declare-fun b!3231305 () Bool)

(declare-fun tp!1017787 () Bool)

(assert (=> b!3231305 (= e!2015248 tp!1017787)))

(assert (=> b!3229110 (= tp!1017442 e!2015248)))

(declare-fun b!3231303 () Bool)

(assert (=> b!3231303 (= e!2015248 tp_is_empty!17329)))

(declare-fun b!3231306 () Bool)

(declare-fun tp!1017788 () Bool)

(declare-fun tp!1017785 () Bool)

(assert (=> b!3231306 (= e!2015248 (and tp!1017788 tp!1017785))))

(assert (= (and b!3229110 ((_ is ElementMatch!10025) (regTwo!20563 (reg!10354 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231303))

(assert (= (and b!3229110 ((_ is Concat!15521) (regTwo!20563 (reg!10354 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231304))

(assert (= (and b!3229110 ((_ is Star!10025) (regTwo!20563 (reg!10354 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231305))

(assert (= (and b!3229110 ((_ is Union!10025) (regTwo!20563 (reg!10354 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231306))

(declare-fun b!3231308 () Bool)

(declare-fun e!2015249 () Bool)

(declare-fun tp!1017794 () Bool)

(declare-fun tp!1017791 () Bool)

(assert (=> b!3231308 (= e!2015249 (and tp!1017794 tp!1017791))))

(declare-fun b!3231309 () Bool)

(declare-fun tp!1017792 () Bool)

(assert (=> b!3231309 (= e!2015249 tp!1017792)))

(assert (=> b!3229158 (= tp!1017495 e!2015249)))

(declare-fun b!3231307 () Bool)

(assert (=> b!3231307 (= e!2015249 tp_is_empty!17329)))

(declare-fun b!3231310 () Bool)

(declare-fun tp!1017793 () Bool)

(declare-fun tp!1017790 () Bool)

(assert (=> b!3231310 (= e!2015249 (and tp!1017793 tp!1017790))))

(assert (= (and b!3229158 ((_ is ElementMatch!10025) (regOne!20562 (regTwo!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231307))

(assert (= (and b!3229158 ((_ is Concat!15521) (regOne!20562 (regTwo!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231308))

(assert (= (and b!3229158 ((_ is Star!10025) (regOne!20562 (regTwo!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231309))

(assert (= (and b!3229158 ((_ is Union!10025) (regOne!20562 (regTwo!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231310))

(declare-fun b!3231312 () Bool)

(declare-fun e!2015250 () Bool)

(declare-fun tp!1017799 () Bool)

(declare-fun tp!1017796 () Bool)

(assert (=> b!3231312 (= e!2015250 (and tp!1017799 tp!1017796))))

(declare-fun b!3231313 () Bool)

(declare-fun tp!1017797 () Bool)

(assert (=> b!3231313 (= e!2015250 tp!1017797)))

(assert (=> b!3229158 (= tp!1017492 e!2015250)))

(declare-fun b!3231311 () Bool)

(assert (=> b!3231311 (= e!2015250 tp_is_empty!17329)))

(declare-fun b!3231314 () Bool)

(declare-fun tp!1017798 () Bool)

(declare-fun tp!1017795 () Bool)

(assert (=> b!3231314 (= e!2015250 (and tp!1017798 tp!1017795))))

(assert (= (and b!3229158 ((_ is ElementMatch!10025) (regTwo!20562 (regTwo!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231311))

(assert (= (and b!3229158 ((_ is Concat!15521) (regTwo!20562 (regTwo!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231312))

(assert (= (and b!3229158 ((_ is Star!10025) (regTwo!20562 (regTwo!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231313))

(assert (= (and b!3229158 ((_ is Union!10025) (regTwo!20562 (regTwo!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231314))

(declare-fun b!3231316 () Bool)

(declare-fun e!2015251 () Bool)

(declare-fun tp!1017804 () Bool)

(declare-fun tp!1017801 () Bool)

(assert (=> b!3231316 (= e!2015251 (and tp!1017804 tp!1017801))))

(declare-fun b!3231317 () Bool)

(declare-fun tp!1017802 () Bool)

(assert (=> b!3231317 (= e!2015251 tp!1017802)))

(assert (=> b!3229097 (= tp!1017429 e!2015251)))

(declare-fun b!3231315 () Bool)

(assert (=> b!3231315 (= e!2015251 tp_is_empty!17329)))

(declare-fun b!3231318 () Bool)

(declare-fun tp!1017803 () Bool)

(declare-fun tp!1017800 () Bool)

(assert (=> b!3231318 (= e!2015251 (and tp!1017803 tp!1017800))))

(assert (= (and b!3229097 ((_ is ElementMatch!10025) (reg!10354 (regex!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))))) b!3231315))

(assert (= (and b!3229097 ((_ is Concat!15521) (reg!10354 (regex!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))))) b!3231316))

(assert (= (and b!3229097 ((_ is Star!10025) (reg!10354 (regex!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))))) b!3231317))

(assert (= (and b!3229097 ((_ is Union!10025) (reg!10354 (regex!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))))) b!3231318))

(declare-fun b!3231320 () Bool)

(declare-fun e!2015252 () Bool)

(declare-fun tp!1017809 () Bool)

(declare-fun tp!1017806 () Bool)

(assert (=> b!3231320 (= e!2015252 (and tp!1017809 tp!1017806))))

(declare-fun b!3231321 () Bool)

(declare-fun tp!1017807 () Bool)

(assert (=> b!3231321 (= e!2015252 tp!1017807)))

(assert (=> b!3229060 (= tp!1017401 e!2015252)))

(declare-fun b!3231319 () Bool)

(assert (=> b!3231319 (= e!2015252 tp_is_empty!17329)))

(declare-fun b!3231322 () Bool)

(declare-fun tp!1017808 () Bool)

(declare-fun tp!1017805 () Bool)

(assert (=> b!3231322 (= e!2015252 (and tp!1017808 tp!1017805))))

(assert (= (and b!3229060 ((_ is ElementMatch!10025) (regOne!20562 (reg!10354 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231319))

(assert (= (and b!3229060 ((_ is Concat!15521) (regOne!20562 (reg!10354 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231320))

(assert (= (and b!3229060 ((_ is Star!10025) (regOne!20562 (reg!10354 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231321))

(assert (= (and b!3229060 ((_ is Union!10025) (regOne!20562 (reg!10354 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231322))

(declare-fun b!3231324 () Bool)

(declare-fun e!2015253 () Bool)

(declare-fun tp!1017814 () Bool)

(declare-fun tp!1017811 () Bool)

(assert (=> b!3231324 (= e!2015253 (and tp!1017814 tp!1017811))))

(declare-fun b!3231325 () Bool)

(declare-fun tp!1017812 () Bool)

(assert (=> b!3231325 (= e!2015253 tp!1017812)))

(assert (=> b!3229060 (= tp!1017398 e!2015253)))

(declare-fun b!3231323 () Bool)

(assert (=> b!3231323 (= e!2015253 tp_is_empty!17329)))

(declare-fun b!3231326 () Bool)

(declare-fun tp!1017813 () Bool)

(declare-fun tp!1017810 () Bool)

(assert (=> b!3231326 (= e!2015253 (and tp!1017813 tp!1017810))))

(assert (= (and b!3229060 ((_ is ElementMatch!10025) (regTwo!20562 (reg!10354 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231323))

(assert (= (and b!3229060 ((_ is Concat!15521) (regTwo!20562 (reg!10354 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231324))

(assert (= (and b!3229060 ((_ is Star!10025) (regTwo!20562 (reg!10354 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231325))

(assert (= (and b!3229060 ((_ is Union!10025) (regTwo!20562 (reg!10354 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231326))

(declare-fun b!3231328 () Bool)

(declare-fun e!2015254 () Bool)

(declare-fun tp!1017819 () Bool)

(declare-fun tp!1017816 () Bool)

(assert (=> b!3231328 (= e!2015254 (and tp!1017819 tp!1017816))))

(declare-fun b!3231329 () Bool)

(declare-fun tp!1017817 () Bool)

(assert (=> b!3231329 (= e!2015254 tp!1017817)))

(assert (=> b!3229160 (= tp!1017494 e!2015254)))

(declare-fun b!3231327 () Bool)

(assert (=> b!3231327 (= e!2015254 tp_is_empty!17329)))

(declare-fun b!3231330 () Bool)

(declare-fun tp!1017818 () Bool)

(declare-fun tp!1017815 () Bool)

(assert (=> b!3231330 (= e!2015254 (and tp!1017818 tp!1017815))))

(assert (= (and b!3229160 ((_ is ElementMatch!10025) (regOne!20563 (regTwo!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231327))

(assert (= (and b!3229160 ((_ is Concat!15521) (regOne!20563 (regTwo!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231328))

(assert (= (and b!3229160 ((_ is Star!10025) (regOne!20563 (regTwo!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231329))

(assert (= (and b!3229160 ((_ is Union!10025) (regOne!20563 (regTwo!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231330))

(declare-fun b!3231332 () Bool)

(declare-fun e!2015255 () Bool)

(declare-fun tp!1017824 () Bool)

(declare-fun tp!1017821 () Bool)

(assert (=> b!3231332 (= e!2015255 (and tp!1017824 tp!1017821))))

(declare-fun b!3231333 () Bool)

(declare-fun tp!1017822 () Bool)

(assert (=> b!3231333 (= e!2015255 tp!1017822)))

(assert (=> b!3229160 (= tp!1017491 e!2015255)))

(declare-fun b!3231331 () Bool)

(assert (=> b!3231331 (= e!2015255 tp_is_empty!17329)))

(declare-fun b!3231334 () Bool)

(declare-fun tp!1017823 () Bool)

(declare-fun tp!1017820 () Bool)

(assert (=> b!3231334 (= e!2015255 (and tp!1017823 tp!1017820))))

(assert (= (and b!3229160 ((_ is ElementMatch!10025) (regTwo!20563 (regTwo!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231331))

(assert (= (and b!3229160 ((_ is Concat!15521) (regTwo!20563 (regTwo!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231332))

(assert (= (and b!3229160 ((_ is Star!10025) (regTwo!20563 (regTwo!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231333))

(assert (= (and b!3229160 ((_ is Union!10025) (regTwo!20563 (regTwo!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231334))

(declare-fun b!3231336 () Bool)

(declare-fun e!2015256 () Bool)

(declare-fun tp!1017829 () Bool)

(declare-fun tp!1017826 () Bool)

(assert (=> b!3231336 (= e!2015256 (and tp!1017829 tp!1017826))))

(declare-fun b!3231337 () Bool)

(declare-fun tp!1017827 () Bool)

(assert (=> b!3231337 (= e!2015256 tp!1017827)))

(assert (=> b!3229087 (= tp!1017421 e!2015256)))

(declare-fun b!3231335 () Bool)

(assert (=> b!3231335 (= e!2015256 tp_is_empty!17329)))

(declare-fun b!3231338 () Bool)

(declare-fun tp!1017828 () Bool)

(declare-fun tp!1017825 () Bool)

(assert (=> b!3231338 (= e!2015256 (and tp!1017828 tp!1017825))))

(assert (= (and b!3229087 ((_ is ElementMatch!10025) (regOne!20562 (regTwo!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231335))

(assert (= (and b!3229087 ((_ is Concat!15521) (regOne!20562 (regTwo!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231336))

(assert (= (and b!3229087 ((_ is Star!10025) (regOne!20562 (regTwo!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231337))

(assert (= (and b!3229087 ((_ is Union!10025) (regOne!20562 (regTwo!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231338))

(declare-fun b!3231340 () Bool)

(declare-fun e!2015257 () Bool)

(declare-fun tp!1017834 () Bool)

(declare-fun tp!1017831 () Bool)

(assert (=> b!3231340 (= e!2015257 (and tp!1017834 tp!1017831))))

(declare-fun b!3231341 () Bool)

(declare-fun tp!1017832 () Bool)

(assert (=> b!3231341 (= e!2015257 tp!1017832)))

(assert (=> b!3229087 (= tp!1017418 e!2015257)))

(declare-fun b!3231339 () Bool)

(assert (=> b!3231339 (= e!2015257 tp_is_empty!17329)))

(declare-fun b!3231342 () Bool)

(declare-fun tp!1017833 () Bool)

(declare-fun tp!1017830 () Bool)

(assert (=> b!3231342 (= e!2015257 (and tp!1017833 tp!1017830))))

(assert (= (and b!3229087 ((_ is ElementMatch!10025) (regTwo!20562 (regTwo!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231339))

(assert (= (and b!3229087 ((_ is Concat!15521) (regTwo!20562 (regTwo!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231340))

(assert (= (and b!3229087 ((_ is Star!10025) (regTwo!20562 (regTwo!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231341))

(assert (= (and b!3229087 ((_ is Union!10025) (regTwo!20562 (regTwo!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231342))

(declare-fun b!3231344 () Bool)

(declare-fun e!2015258 () Bool)

(declare-fun tp!1017839 () Bool)

(declare-fun tp!1017836 () Bool)

(assert (=> b!3231344 (= e!2015258 (and tp!1017839 tp!1017836))))

(declare-fun b!3231345 () Bool)

(declare-fun tp!1017837 () Bool)

(assert (=> b!3231345 (= e!2015258 tp!1017837)))

(assert (=> b!3229052 (= tp!1017391 e!2015258)))

(declare-fun b!3231343 () Bool)

(assert (=> b!3231343 (= e!2015258 tp_is_empty!17329)))

(declare-fun b!3231346 () Bool)

(declare-fun tp!1017838 () Bool)

(declare-fun tp!1017835 () Bool)

(assert (=> b!3231346 (= e!2015258 (and tp!1017838 tp!1017835))))

(assert (= (and b!3229052 ((_ is ElementMatch!10025) (regOne!20562 (regOne!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231343))

(assert (= (and b!3229052 ((_ is Concat!15521) (regOne!20562 (regOne!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231344))

(assert (= (and b!3229052 ((_ is Star!10025) (regOne!20562 (regOne!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231345))

(assert (= (and b!3229052 ((_ is Union!10025) (regOne!20562 (regOne!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231346))

(declare-fun b!3231348 () Bool)

(declare-fun e!2015259 () Bool)

(declare-fun tp!1017844 () Bool)

(declare-fun tp!1017841 () Bool)

(assert (=> b!3231348 (= e!2015259 (and tp!1017844 tp!1017841))))

(declare-fun b!3231349 () Bool)

(declare-fun tp!1017842 () Bool)

(assert (=> b!3231349 (= e!2015259 tp!1017842)))

(assert (=> b!3229052 (= tp!1017388 e!2015259)))

(declare-fun b!3231347 () Bool)

(assert (=> b!3231347 (= e!2015259 tp_is_empty!17329)))

(declare-fun b!3231350 () Bool)

(declare-fun tp!1017843 () Bool)

(declare-fun tp!1017840 () Bool)

(assert (=> b!3231350 (= e!2015259 (and tp!1017843 tp!1017840))))

(assert (= (and b!3229052 ((_ is ElementMatch!10025) (regTwo!20562 (regOne!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231347))

(assert (= (and b!3229052 ((_ is Concat!15521) (regTwo!20562 (regOne!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231348))

(assert (= (and b!3229052 ((_ is Star!10025) (regTwo!20562 (regOne!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231349))

(assert (= (and b!3229052 ((_ is Union!10025) (regTwo!20562 (regOne!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231350))

(declare-fun e!2015261 () Bool)

(declare-fun tp!1017845 () Bool)

(declare-fun tp!1017847 () Bool)

(declare-fun b!3231351 () Bool)

(assert (=> b!3231351 (= e!2015261 (and (inv!49253 (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))) (value!170541 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))) tp!1017847 (inv!49253 (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))) (value!170541 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))) tp!1017845))))

(declare-fun b!3231353 () Bool)

(declare-fun e!2015260 () Bool)

(declare-fun tp!1017846 () Bool)

(assert (=> b!3231353 (= e!2015260 tp!1017846)))

(declare-fun b!3231352 () Bool)

(assert (=> b!3231352 (= e!2015261 (and (inv!49259 (xs!14025 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))) (value!170541 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))) e!2015260))))

(assert (=> b!3229038 (= tp!1017386 (and (inv!49253 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))) (value!170541 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))) e!2015261))))

(assert (= (and b!3229038 ((_ is Node!10907) (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))) (value!170541 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))) b!3231351))

(assert (= b!3231352 b!3231353))

(assert (= (and b!3229038 ((_ is Leaf!17151) (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))) (value!170541 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))) b!3231352))

(declare-fun m!3513359 () Bool)

(assert (=> b!3231351 m!3513359))

(declare-fun m!3513361 () Bool)

(assert (=> b!3231351 m!3513361))

(declare-fun m!3513363 () Bool)

(assert (=> b!3231352 m!3513363))

(assert (=> b!3229038 m!3508763))

(declare-fun b!3231355 () Bool)

(declare-fun e!2015262 () Bool)

(declare-fun tp!1017852 () Bool)

(declare-fun tp!1017849 () Bool)

(assert (=> b!3231355 (= e!2015262 (and tp!1017852 tp!1017849))))

(declare-fun b!3231356 () Bool)

(declare-fun tp!1017850 () Bool)

(assert (=> b!3231356 (= e!2015262 tp!1017850)))

(assert (=> b!3229089 (= tp!1017420 e!2015262)))

(declare-fun b!3231354 () Bool)

(assert (=> b!3231354 (= e!2015262 tp_is_empty!17329)))

(declare-fun b!3231357 () Bool)

(declare-fun tp!1017851 () Bool)

(declare-fun tp!1017848 () Bool)

(assert (=> b!3231357 (= e!2015262 (and tp!1017851 tp!1017848))))

(assert (= (and b!3229089 ((_ is ElementMatch!10025) (regOne!20563 (regTwo!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231354))

(assert (= (and b!3229089 ((_ is Concat!15521) (regOne!20563 (regTwo!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231355))

(assert (= (and b!3229089 ((_ is Star!10025) (regOne!20563 (regTwo!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231356))

(assert (= (and b!3229089 ((_ is Union!10025) (regOne!20563 (regTwo!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231357))

(declare-fun b!3231359 () Bool)

(declare-fun e!2015263 () Bool)

(declare-fun tp!1017857 () Bool)

(declare-fun tp!1017854 () Bool)

(assert (=> b!3231359 (= e!2015263 (and tp!1017857 tp!1017854))))

(declare-fun b!3231360 () Bool)

(declare-fun tp!1017855 () Bool)

(assert (=> b!3231360 (= e!2015263 tp!1017855)))

(assert (=> b!3229089 (= tp!1017417 e!2015263)))

(declare-fun b!3231358 () Bool)

(assert (=> b!3231358 (= e!2015263 tp_is_empty!17329)))

(declare-fun b!3231361 () Bool)

(declare-fun tp!1017856 () Bool)

(declare-fun tp!1017853 () Bool)

(assert (=> b!3231361 (= e!2015263 (and tp!1017856 tp!1017853))))

(assert (= (and b!3229089 ((_ is ElementMatch!10025) (regTwo!20563 (regTwo!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231358))

(assert (= (and b!3229089 ((_ is Concat!15521) (regTwo!20563 (regTwo!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231359))

(assert (= (and b!3229089 ((_ is Star!10025) (regTwo!20563 (regTwo!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231360))

(assert (= (and b!3229089 ((_ is Union!10025) (regTwo!20563 (regTwo!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231361))

(declare-fun b!3231363 () Bool)

(declare-fun e!2015264 () Bool)

(declare-fun tp!1017862 () Bool)

(declare-fun tp!1017859 () Bool)

(assert (=> b!3231363 (= e!2015264 (and tp!1017862 tp!1017859))))

(declare-fun b!3231364 () Bool)

(declare-fun tp!1017860 () Bool)

(assert (=> b!3231364 (= e!2015264 tp!1017860)))

(assert (=> b!3229054 (= tp!1017390 e!2015264)))

(declare-fun b!3231362 () Bool)

(assert (=> b!3231362 (= e!2015264 tp_is_empty!17329)))

(declare-fun b!3231365 () Bool)

(declare-fun tp!1017861 () Bool)

(declare-fun tp!1017858 () Bool)

(assert (=> b!3231365 (= e!2015264 (and tp!1017861 tp!1017858))))

(assert (= (and b!3229054 ((_ is ElementMatch!10025) (regOne!20563 (regOne!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231362))

(assert (= (and b!3229054 ((_ is Concat!15521) (regOne!20563 (regOne!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231363))

(assert (= (and b!3229054 ((_ is Star!10025) (regOne!20563 (regOne!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231364))

(assert (= (and b!3229054 ((_ is Union!10025) (regOne!20563 (regOne!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231365))

(declare-fun b!3231367 () Bool)

(declare-fun e!2015265 () Bool)

(declare-fun tp!1017867 () Bool)

(declare-fun tp!1017864 () Bool)

(assert (=> b!3231367 (= e!2015265 (and tp!1017867 tp!1017864))))

(declare-fun b!3231368 () Bool)

(declare-fun tp!1017865 () Bool)

(assert (=> b!3231368 (= e!2015265 tp!1017865)))

(assert (=> b!3229054 (= tp!1017387 e!2015265)))

(declare-fun b!3231366 () Bool)

(assert (=> b!3231366 (= e!2015265 tp_is_empty!17329)))

(declare-fun b!3231369 () Bool)

(declare-fun tp!1017866 () Bool)

(declare-fun tp!1017863 () Bool)

(assert (=> b!3231369 (= e!2015265 (and tp!1017866 tp!1017863))))

(assert (= (and b!3229054 ((_ is ElementMatch!10025) (regTwo!20563 (regOne!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231366))

(assert (= (and b!3229054 ((_ is Concat!15521) (regTwo!20563 (regOne!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231367))

(assert (= (and b!3229054 ((_ is Star!10025) (regTwo!20563 (regOne!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231368))

(assert (= (and b!3229054 ((_ is Union!10025) (regTwo!20563 (regOne!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231369))

(declare-fun b!3231371 () Bool)

(declare-fun e!2015266 () Bool)

(declare-fun tp!1017872 () Bool)

(declare-fun tp!1017869 () Bool)

(assert (=> b!3231371 (= e!2015266 (and tp!1017872 tp!1017869))))

(declare-fun b!3231372 () Bool)

(declare-fun tp!1017870 () Bool)

(assert (=> b!3231372 (= e!2015266 tp!1017870)))

(assert (=> b!3229124 (= tp!1017466 e!2015266)))

(declare-fun b!3231370 () Bool)

(assert (=> b!3231370 (= e!2015266 tp_is_empty!17329)))

(declare-fun b!3231373 () Bool)

(declare-fun tp!1017871 () Bool)

(declare-fun tp!1017868 () Bool)

(assert (=> b!3231373 (= e!2015266 (and tp!1017871 tp!1017868))))

(assert (= (and b!3229124 ((_ is ElementMatch!10025) (regOne!20562 (regTwo!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231370))

(assert (= (and b!3229124 ((_ is Concat!15521) (regOne!20562 (regTwo!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231371))

(assert (= (and b!3229124 ((_ is Star!10025) (regOne!20562 (regTwo!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231372))

(assert (= (and b!3229124 ((_ is Union!10025) (regOne!20562 (regTwo!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231373))

(declare-fun b!3231375 () Bool)

(declare-fun e!2015267 () Bool)

(declare-fun tp!1017877 () Bool)

(declare-fun tp!1017874 () Bool)

(assert (=> b!3231375 (= e!2015267 (and tp!1017877 tp!1017874))))

(declare-fun b!3231376 () Bool)

(declare-fun tp!1017875 () Bool)

(assert (=> b!3231376 (= e!2015267 tp!1017875)))

(assert (=> b!3229124 (= tp!1017463 e!2015267)))

(declare-fun b!3231374 () Bool)

(assert (=> b!3231374 (= e!2015267 tp_is_empty!17329)))

(declare-fun b!3231377 () Bool)

(declare-fun tp!1017876 () Bool)

(declare-fun tp!1017873 () Bool)

(assert (=> b!3231377 (= e!2015267 (and tp!1017876 tp!1017873))))

(assert (= (and b!3229124 ((_ is ElementMatch!10025) (regTwo!20562 (regTwo!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231374))

(assert (= (and b!3229124 ((_ is Concat!15521) (regTwo!20562 (regTwo!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231375))

(assert (= (and b!3229124 ((_ is Star!10025) (regTwo!20562 (regTwo!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231376))

(assert (= (and b!3229124 ((_ is Union!10025) (regTwo!20562 (regTwo!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231377))

(declare-fun b!3231378 () Bool)

(declare-fun e!2015268 () Bool)

(declare-fun tp!1017878 () Bool)

(assert (=> b!3231378 (= e!2015268 (and tp_is_empty!17329 tp!1017878))))

(assert (=> b!3229128 (= tp!1017469 e!2015268)))

(assert (= (and b!3229128 ((_ is Cons!36361) (originalCharacters!5980 (h!41783 (t!241332 (t!241332 tokens!494)))))) b!3231378))

(declare-fun b!3231382 () Bool)

(declare-fun e!2015269 () Bool)

(declare-fun tp!1017883 () Bool)

(declare-fun tp!1017880 () Bool)

(assert (=> b!3231382 (= e!2015269 (and tp!1017883 tp!1017880))))

(declare-fun b!3231383 () Bool)

(declare-fun tp!1017881 () Bool)

(assert (=> b!3231383 (= e!2015269 tp!1017881)))

(assert (=> b!3229126 (= tp!1017465 e!2015269)))

(declare-fun b!3231381 () Bool)

(assert (=> b!3231381 (= e!2015269 tp_is_empty!17329)))

(declare-fun b!3231384 () Bool)

(declare-fun tp!1017882 () Bool)

(declare-fun tp!1017879 () Bool)

(assert (=> b!3231384 (= e!2015269 (and tp!1017882 tp!1017879))))

(assert (= (and b!3229126 ((_ is ElementMatch!10025) (regOne!20563 (regTwo!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231381))

(assert (= (and b!3229126 ((_ is Concat!15521) (regOne!20563 (regTwo!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231382))

(assert (= (and b!3229126 ((_ is Star!10025) (regOne!20563 (regTwo!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231383))

(assert (= (and b!3229126 ((_ is Union!10025) (regOne!20563 (regTwo!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231384))

(declare-fun b!3231388 () Bool)

(declare-fun e!2015272 () Bool)

(declare-fun tp!1017888 () Bool)

(declare-fun tp!1017885 () Bool)

(assert (=> b!3231388 (= e!2015272 (and tp!1017888 tp!1017885))))

(declare-fun b!3231389 () Bool)

(declare-fun tp!1017886 () Bool)

(assert (=> b!3231389 (= e!2015272 tp!1017886)))

(assert (=> b!3229126 (= tp!1017462 e!2015272)))

(declare-fun b!3231387 () Bool)

(assert (=> b!3231387 (= e!2015272 tp_is_empty!17329)))

(declare-fun b!3231390 () Bool)

(declare-fun tp!1017887 () Bool)

(declare-fun tp!1017884 () Bool)

(assert (=> b!3231390 (= e!2015272 (and tp!1017887 tp!1017884))))

(assert (= (and b!3229126 ((_ is ElementMatch!10025) (regTwo!20563 (regTwo!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231387))

(assert (= (and b!3229126 ((_ is Concat!15521) (regTwo!20563 (regTwo!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231388))

(assert (= (and b!3229126 ((_ is Star!10025) (regTwo!20563 (regTwo!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231389))

(assert (= (and b!3229126 ((_ is Union!10025) (regTwo!20563 (regTwo!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231390))

(declare-fun b!3231392 () Bool)

(declare-fun e!2015273 () Bool)

(declare-fun tp!1017893 () Bool)

(declare-fun tp!1017890 () Bool)

(assert (=> b!3231392 (= e!2015273 (and tp!1017893 tp!1017890))))

(declare-fun b!3231393 () Bool)

(declare-fun tp!1017891 () Bool)

(assert (=> b!3231393 (= e!2015273 tp!1017891)))

(assert (=> b!3229140 (= tp!1017481 e!2015273)))

(declare-fun b!3231391 () Bool)

(assert (=> b!3231391 (= e!2015273 tp_is_empty!17329)))

(declare-fun b!3231394 () Bool)

(declare-fun tp!1017892 () Bool)

(declare-fun tp!1017889 () Bool)

(assert (=> b!3231394 (= e!2015273 (and tp!1017892 tp!1017889))))

(assert (= (and b!3229140 ((_ is ElementMatch!10025) (regOne!20562 (regTwo!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231391))

(assert (= (and b!3229140 ((_ is Concat!15521) (regOne!20562 (regTwo!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231392))

(assert (= (and b!3229140 ((_ is Star!10025) (regOne!20562 (regTwo!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231393))

(assert (= (and b!3229140 ((_ is Union!10025) (regOne!20562 (regTwo!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231394))

(declare-fun b!3231396 () Bool)

(declare-fun e!2015274 () Bool)

(declare-fun tp!1017898 () Bool)

(declare-fun tp!1017895 () Bool)

(assert (=> b!3231396 (= e!2015274 (and tp!1017898 tp!1017895))))

(declare-fun b!3231397 () Bool)

(declare-fun tp!1017896 () Bool)

(assert (=> b!3231397 (= e!2015274 tp!1017896)))

(assert (=> b!3229140 (= tp!1017478 e!2015274)))

(declare-fun b!3231395 () Bool)

(assert (=> b!3231395 (= e!2015274 tp_is_empty!17329)))

(declare-fun b!3231398 () Bool)

(declare-fun tp!1017897 () Bool)

(declare-fun tp!1017894 () Bool)

(assert (=> b!3231398 (= e!2015274 (and tp!1017897 tp!1017894))))

(assert (= (and b!3229140 ((_ is ElementMatch!10025) (regTwo!20562 (regTwo!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231395))

(assert (= (and b!3229140 ((_ is Concat!15521) (regTwo!20562 (regTwo!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231396))

(assert (= (and b!3229140 ((_ is Star!10025) (regTwo!20562 (regTwo!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231397))

(assert (= (and b!3229140 ((_ is Union!10025) (regTwo!20562 (regTwo!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231398))

(declare-fun tp!1017899 () Bool)

(declare-fun b!3231399 () Bool)

(declare-fun e!2015276 () Bool)

(declare-fun tp!1017901 () Bool)

(assert (=> b!3231399 (= e!2015276 (and (inv!49253 (left!28314 (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))))) tp!1017901 (inv!49253 (right!28644 (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))))) tp!1017899))))

(declare-fun b!3231401 () Bool)

(declare-fun e!2015275 () Bool)

(declare-fun tp!1017900 () Bool)

(assert (=> b!3231401 (= e!2015275 tp!1017900)))

(declare-fun b!3231400 () Bool)

(assert (=> b!3231400 (= e!2015276 (and (inv!49259 (xs!14025 (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))))) e!2015275))))

(assert (=> b!3229090 (= tp!1017424 (and (inv!49253 (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494)))))) e!2015276))))

(assert (= (and b!3229090 ((_ is Node!10907) (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))))) b!3231399))

(assert (= b!3231400 b!3231401))

(assert (= (and b!3229090 ((_ is Leaf!17151) (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))))) b!3231400))

(declare-fun m!3513365 () Bool)

(assert (=> b!3231399 m!3513365))

(declare-fun m!3513367 () Bool)

(assert (=> b!3231399 m!3513367))

(declare-fun m!3513369 () Bool)

(assert (=> b!3231400 m!3513369))

(assert (=> b!3229090 m!3508817))

(declare-fun b!3231404 () Bool)

(declare-fun e!2015280 () Bool)

(declare-fun tp!1017902 () Bool)

(declare-fun tp!1017904 () Bool)

(assert (=> b!3231404 (= e!2015280 (and (inv!49253 (left!28314 (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))))) tp!1017904 (inv!49253 (right!28644 (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))))) tp!1017902))))

(declare-fun b!3231406 () Bool)

(declare-fun e!2015279 () Bool)

(declare-fun tp!1017903 () Bool)

(assert (=> b!3231406 (= e!2015279 tp!1017903)))

(declare-fun b!3231405 () Bool)

(assert (=> b!3231405 (= e!2015280 (and (inv!49259 (xs!14025 (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))))) e!2015279))))

(assert (=> b!3229090 (= tp!1017422 (and (inv!49253 (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494)))))) e!2015280))))

(assert (= (and b!3229090 ((_ is Node!10907) (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))))) b!3231404))

(assert (= b!3231405 b!3231406))

(assert (= (and b!3229090 ((_ is Leaf!17151) (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494))))))) b!3231405))

(declare-fun m!3513371 () Bool)

(assert (=> b!3231404 m!3513371))

(declare-fun m!3513373 () Bool)

(assert (=> b!3231404 m!3513373))

(declare-fun m!3513375 () Bool)

(assert (=> b!3231405 m!3513375))

(assert (=> b!3229090 m!3508819))

(declare-fun b!3231416 () Bool)

(declare-fun e!2015289 () Bool)

(declare-fun tp!1017909 () Bool)

(declare-fun tp!1017906 () Bool)

(assert (=> b!3231416 (= e!2015289 (and tp!1017909 tp!1017906))))

(declare-fun b!3231417 () Bool)

(declare-fun tp!1017907 () Bool)

(assert (=> b!3231417 (= e!2015289 tp!1017907)))

(assert (=> b!3229154 (= tp!1017490 e!2015289)))

(declare-fun b!3231415 () Bool)

(assert (=> b!3231415 (= e!2015289 tp_is_empty!17329)))

(declare-fun b!3231418 () Bool)

(declare-fun tp!1017908 () Bool)

(declare-fun tp!1017905 () Bool)

(assert (=> b!3231418 (= e!2015289 (and tp!1017908 tp!1017905))))

(assert (= (and b!3229154 ((_ is ElementMatch!10025) (regOne!20562 (regOne!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231415))

(assert (= (and b!3229154 ((_ is Concat!15521) (regOne!20562 (regOne!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231416))

(assert (= (and b!3229154 ((_ is Star!10025) (regOne!20562 (regOne!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231417))

(assert (= (and b!3229154 ((_ is Union!10025) (regOne!20562 (regOne!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231418))

(declare-fun b!3231422 () Bool)

(declare-fun e!2015290 () Bool)

(declare-fun tp!1017914 () Bool)

(declare-fun tp!1017911 () Bool)

(assert (=> b!3231422 (= e!2015290 (and tp!1017914 tp!1017911))))

(declare-fun b!3231423 () Bool)

(declare-fun tp!1017912 () Bool)

(assert (=> b!3231423 (= e!2015290 tp!1017912)))

(assert (=> b!3229154 (= tp!1017487 e!2015290)))

(declare-fun b!3231421 () Bool)

(assert (=> b!3231421 (= e!2015290 tp_is_empty!17329)))

(declare-fun b!3231424 () Bool)

(declare-fun tp!1017913 () Bool)

(declare-fun tp!1017910 () Bool)

(assert (=> b!3231424 (= e!2015290 (and tp!1017913 tp!1017910))))

(assert (= (and b!3229154 ((_ is ElementMatch!10025) (regTwo!20562 (regOne!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231421))

(assert (= (and b!3229154 ((_ is Concat!15521) (regTwo!20562 (regOne!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231422))

(assert (= (and b!3229154 ((_ is Star!10025) (regTwo!20562 (regOne!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231423))

(assert (= (and b!3229154 ((_ is Union!10025) (regTwo!20562 (regOne!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231424))

(declare-fun b!3231425 () Bool)

(declare-fun e!2015291 () Bool)

(declare-fun tp!1017915 () Bool)

(assert (=> b!3231425 (= e!2015291 (and tp_is_empty!17329 tp!1017915))))

(assert (=> b!3229092 (= tp!1017423 e!2015291)))

(assert (= (and b!3229092 ((_ is Cons!36361) (innerList!10967 (xs!14025 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (value!170541 (h!41783 tokens!494)))))))) b!3231425))

(declare-fun b!3231427 () Bool)

(declare-fun e!2015292 () Bool)

(declare-fun tp!1017920 () Bool)

(declare-fun tp!1017917 () Bool)

(assert (=> b!3231427 (= e!2015292 (and tp!1017920 tp!1017917))))

(declare-fun b!3231428 () Bool)

(declare-fun tp!1017918 () Bool)

(assert (=> b!3231428 (= e!2015292 tp!1017918)))

(assert (=> b!3229056 (= tp!1017396 e!2015292)))

(declare-fun b!3231426 () Bool)

(assert (=> b!3231426 (= e!2015292 tp_is_empty!17329)))

(declare-fun b!3231429 () Bool)

(declare-fun tp!1017919 () Bool)

(declare-fun tp!1017916 () Bool)

(assert (=> b!3231429 (= e!2015292 (and tp!1017919 tp!1017916))))

(assert (= (and b!3229056 ((_ is ElementMatch!10025) (regOne!20562 (regTwo!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231426))

(assert (= (and b!3229056 ((_ is Concat!15521) (regOne!20562 (regTwo!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231427))

(assert (= (and b!3229056 ((_ is Star!10025) (regOne!20562 (regTwo!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231428))

(assert (= (and b!3229056 ((_ is Union!10025) (regOne!20562 (regTwo!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231429))

(declare-fun b!3231431 () Bool)

(declare-fun e!2015293 () Bool)

(declare-fun tp!1017925 () Bool)

(declare-fun tp!1017922 () Bool)

(assert (=> b!3231431 (= e!2015293 (and tp!1017925 tp!1017922))))

(declare-fun b!3231432 () Bool)

(declare-fun tp!1017923 () Bool)

(assert (=> b!3231432 (= e!2015293 tp!1017923)))

(assert (=> b!3229056 (= tp!1017393 e!2015293)))

(declare-fun b!3231430 () Bool)

(assert (=> b!3231430 (= e!2015293 tp_is_empty!17329)))

(declare-fun b!3231433 () Bool)

(declare-fun tp!1017924 () Bool)

(declare-fun tp!1017921 () Bool)

(assert (=> b!3231433 (= e!2015293 (and tp!1017924 tp!1017921))))

(assert (= (and b!3229056 ((_ is ElementMatch!10025) (regTwo!20562 (regTwo!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231430))

(assert (= (and b!3229056 ((_ is Concat!15521) (regTwo!20562 (regTwo!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231431))

(assert (= (and b!3229056 ((_ is Star!10025) (regTwo!20562 (regTwo!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231432))

(assert (= (and b!3229056 ((_ is Union!10025) (regTwo!20562 (regTwo!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231433))

(declare-fun b!3231435 () Bool)

(declare-fun e!2015294 () Bool)

(declare-fun tp!1017930 () Bool)

(declare-fun tp!1017927 () Bool)

(assert (=> b!3231435 (= e!2015294 (and tp!1017930 tp!1017927))))

(declare-fun b!3231436 () Bool)

(declare-fun tp!1017928 () Bool)

(assert (=> b!3231436 (= e!2015294 tp!1017928)))

(assert (=> b!3229156 (= tp!1017489 e!2015294)))

(declare-fun b!3231434 () Bool)

(assert (=> b!3231434 (= e!2015294 tp_is_empty!17329)))

(declare-fun b!3231437 () Bool)

(declare-fun tp!1017929 () Bool)

(declare-fun tp!1017926 () Bool)

(assert (=> b!3231437 (= e!2015294 (and tp!1017929 tp!1017926))))

(assert (= (and b!3229156 ((_ is ElementMatch!10025) (regOne!20563 (regOne!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231434))

(assert (= (and b!3229156 ((_ is Concat!15521) (regOne!20563 (regOne!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231435))

(assert (= (and b!3229156 ((_ is Star!10025) (regOne!20563 (regOne!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231436))

(assert (= (and b!3229156 ((_ is Union!10025) (regOne!20563 (regOne!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231437))

(declare-fun b!3231439 () Bool)

(declare-fun e!2015295 () Bool)

(declare-fun tp!1017935 () Bool)

(declare-fun tp!1017932 () Bool)

(assert (=> b!3231439 (= e!2015295 (and tp!1017935 tp!1017932))))

(declare-fun b!3231440 () Bool)

(declare-fun tp!1017933 () Bool)

(assert (=> b!3231440 (= e!2015295 tp!1017933)))

(assert (=> b!3229156 (= tp!1017486 e!2015295)))

(declare-fun b!3231438 () Bool)

(assert (=> b!3231438 (= e!2015295 tp_is_empty!17329)))

(declare-fun b!3231441 () Bool)

(declare-fun tp!1017934 () Bool)

(declare-fun tp!1017931 () Bool)

(assert (=> b!3231441 (= e!2015295 (and tp!1017934 tp!1017931))))

(assert (= (and b!3229156 ((_ is ElementMatch!10025) (regTwo!20563 (regOne!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231438))

(assert (= (and b!3229156 ((_ is Concat!15521) (regTwo!20563 (regOne!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231439))

(assert (= (and b!3229156 ((_ is Star!10025) (regTwo!20563 (regOne!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231440))

(assert (= (and b!3229156 ((_ is Union!10025) (regTwo!20563 (regOne!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231441))

(declare-fun b!3231443 () Bool)

(declare-fun e!2015296 () Bool)

(declare-fun tp!1017940 () Bool)

(declare-fun tp!1017937 () Bool)

(assert (=> b!3231443 (= e!2015296 (and tp!1017940 tp!1017937))))

(declare-fun b!3231444 () Bool)

(declare-fun tp!1017938 () Bool)

(assert (=> b!3231444 (= e!2015296 tp!1017938)))

(assert (=> b!3229121 (= tp!1017459 e!2015296)))

(declare-fun b!3231442 () Bool)

(assert (=> b!3231442 (= e!2015296 tp_is_empty!17329)))

(declare-fun b!3231445 () Bool)

(declare-fun tp!1017939 () Bool)

(declare-fun tp!1017936 () Bool)

(assert (=> b!3231445 (= e!2015296 (and tp!1017939 tp!1017936))))

(assert (= (and b!3229121 ((_ is ElementMatch!10025) (reg!10354 (regOne!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231442))

(assert (= (and b!3229121 ((_ is Concat!15521) (reg!10354 (regOne!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231443))

(assert (= (and b!3229121 ((_ is Star!10025) (reg!10354 (regOne!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231444))

(assert (= (and b!3229121 ((_ is Union!10025) (reg!10354 (regOne!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231445))

(declare-fun b!3231447 () Bool)

(declare-fun e!2015297 () Bool)

(declare-fun tp!1017945 () Bool)

(declare-fun tp!1017942 () Bool)

(assert (=> b!3231447 (= e!2015297 (and tp!1017945 tp!1017942))))

(declare-fun b!3231448 () Bool)

(declare-fun tp!1017943 () Bool)

(assert (=> b!3231448 (= e!2015297 tp!1017943)))

(assert (=> b!3229142 (= tp!1017480 e!2015297)))

(declare-fun b!3231446 () Bool)

(assert (=> b!3231446 (= e!2015297 tp_is_empty!17329)))

(declare-fun b!3231449 () Bool)

(declare-fun tp!1017944 () Bool)

(declare-fun tp!1017941 () Bool)

(assert (=> b!3231449 (= e!2015297 (and tp!1017944 tp!1017941))))

(assert (= (and b!3229142 ((_ is ElementMatch!10025) (regOne!20563 (regTwo!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231446))

(assert (= (and b!3229142 ((_ is Concat!15521) (regOne!20563 (regTwo!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231447))

(assert (= (and b!3229142 ((_ is Star!10025) (regOne!20563 (regTwo!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231448))

(assert (= (and b!3229142 ((_ is Union!10025) (regOne!20563 (regTwo!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231449))

(declare-fun b!3231451 () Bool)

(declare-fun e!2015298 () Bool)

(declare-fun tp!1017950 () Bool)

(declare-fun tp!1017947 () Bool)

(assert (=> b!3231451 (= e!2015298 (and tp!1017950 tp!1017947))))

(declare-fun b!3231452 () Bool)

(declare-fun tp!1017948 () Bool)

(assert (=> b!3231452 (= e!2015298 tp!1017948)))

(assert (=> b!3229142 (= tp!1017477 e!2015298)))

(declare-fun b!3231450 () Bool)

(assert (=> b!3231450 (= e!2015298 tp_is_empty!17329)))

(declare-fun b!3231453 () Bool)

(declare-fun tp!1017949 () Bool)

(declare-fun tp!1017946 () Bool)

(assert (=> b!3231453 (= e!2015298 (and tp!1017949 tp!1017946))))

(assert (= (and b!3229142 ((_ is ElementMatch!10025) (regTwo!20563 (regTwo!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231450))

(assert (= (and b!3229142 ((_ is Concat!15521) (regTwo!20563 (regTwo!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231451))

(assert (= (and b!3229142 ((_ is Star!10025) (regTwo!20563 (regTwo!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231452))

(assert (= (and b!3229142 ((_ is Union!10025) (regTwo!20563 (regTwo!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231453))

(declare-fun b!3231456 () Bool)

(declare-fun e!2015301 () Bool)

(assert (=> b!3231456 (= e!2015301 true)))

(declare-fun b!3231455 () Bool)

(declare-fun e!2015300 () Bool)

(assert (=> b!3231455 (= e!2015300 e!2015301)))

(declare-fun b!3231454 () Bool)

(declare-fun e!2015299 () Bool)

(assert (=> b!3231454 (= e!2015299 e!2015300)))

(assert (=> b!3228694 e!2015299))

(assert (= b!3231455 b!3231456))

(assert (= b!3231454 b!3231455))

(assert (= (and b!3228694 ((_ is Cons!36362) (t!241331 rules!2135))) b!3231454))

(assert (=> b!3231456 (< (dynLambda!14791 order!18761 (toValue!7374 (transformation!5266 (h!41782 (t!241331 rules!2135))))) (dynLambda!14792 order!18763 lambda!118233))))

(assert (=> b!3231456 (< (dynLambda!14793 order!18765 (toChars!7233 (transformation!5266 (h!41782 (t!241331 rules!2135))))) (dynLambda!14792 order!18763 lambda!118233))))

(declare-fun b!3231458 () Bool)

(declare-fun e!2015302 () Bool)

(declare-fun tp!1017955 () Bool)

(declare-fun tp!1017952 () Bool)

(assert (=> b!3231458 (= e!2015302 (and tp!1017955 tp!1017952))))

(declare-fun b!3231459 () Bool)

(declare-fun tp!1017953 () Bool)

(assert (=> b!3231459 (= e!2015302 tp!1017953)))

(assert (=> b!3229083 (= tp!1017416 e!2015302)))

(declare-fun b!3231457 () Bool)

(assert (=> b!3231457 (= e!2015302 tp_is_empty!17329)))

(declare-fun b!3231460 () Bool)

(declare-fun tp!1017954 () Bool)

(declare-fun tp!1017951 () Bool)

(assert (=> b!3231460 (= e!2015302 (and tp!1017954 tp!1017951))))

(assert (= (and b!3229083 ((_ is ElementMatch!10025) (regOne!20562 (regOne!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231457))

(assert (= (and b!3229083 ((_ is Concat!15521) (regOne!20562 (regOne!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231458))

(assert (= (and b!3229083 ((_ is Star!10025) (regOne!20562 (regOne!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231459))

(assert (= (and b!3229083 ((_ is Union!10025) (regOne!20562 (regOne!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231460))

(declare-fun b!3231462 () Bool)

(declare-fun e!2015303 () Bool)

(declare-fun tp!1017960 () Bool)

(declare-fun tp!1017957 () Bool)

(assert (=> b!3231462 (= e!2015303 (and tp!1017960 tp!1017957))))

(declare-fun b!3231463 () Bool)

(declare-fun tp!1017958 () Bool)

(assert (=> b!3231463 (= e!2015303 tp!1017958)))

(assert (=> b!3229083 (= tp!1017413 e!2015303)))

(declare-fun b!3231461 () Bool)

(assert (=> b!3231461 (= e!2015303 tp_is_empty!17329)))

(declare-fun b!3231464 () Bool)

(declare-fun tp!1017959 () Bool)

(declare-fun tp!1017956 () Bool)

(assert (=> b!3231464 (= e!2015303 (and tp!1017959 tp!1017956))))

(assert (= (and b!3229083 ((_ is ElementMatch!10025) (regTwo!20562 (regOne!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231461))

(assert (= (and b!3229083 ((_ is Concat!15521) (regTwo!20562 (regOne!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231462))

(assert (= (and b!3229083 ((_ is Star!10025) (regTwo!20562 (regOne!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231463))

(assert (= (and b!3229083 ((_ is Union!10025) (regTwo!20562 (regOne!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231464))

(declare-fun b!3231466 () Bool)

(declare-fun e!2015304 () Bool)

(declare-fun tp!1017965 () Bool)

(declare-fun tp!1017962 () Bool)

(assert (=> b!3231466 (= e!2015304 (and tp!1017965 tp!1017962))))

(declare-fun b!3231467 () Bool)

(declare-fun tp!1017963 () Bool)

(assert (=> b!3231467 (= e!2015304 tp!1017963)))

(assert (=> b!3229057 (= tp!1017394 e!2015304)))

(declare-fun b!3231465 () Bool)

(assert (=> b!3231465 (= e!2015304 tp_is_empty!17329)))

(declare-fun b!3231468 () Bool)

(declare-fun tp!1017964 () Bool)

(declare-fun tp!1017961 () Bool)

(assert (=> b!3231468 (= e!2015304 (and tp!1017964 tp!1017961))))

(assert (= (and b!3229057 ((_ is ElementMatch!10025) (reg!10354 (regTwo!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231465))

(assert (= (and b!3229057 ((_ is Concat!15521) (reg!10354 (regTwo!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231466))

(assert (= (and b!3229057 ((_ is Star!10025) (reg!10354 (regTwo!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231467))

(assert (= (and b!3229057 ((_ is Union!10025) (reg!10354 (regTwo!20562 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231468))

(declare-fun b!3231470 () Bool)

(declare-fun e!2015305 () Bool)

(declare-fun tp!1017970 () Bool)

(declare-fun tp!1017967 () Bool)

(assert (=> b!3231470 (= e!2015305 (and tp!1017970 tp!1017967))))

(declare-fun b!3231471 () Bool)

(declare-fun tp!1017968 () Bool)

(assert (=> b!3231471 (= e!2015305 tp!1017968)))

(assert (=> b!3229136 (= tp!1017476 e!2015305)))

(declare-fun b!3231469 () Bool)

(assert (=> b!3231469 (= e!2015305 tp_is_empty!17329)))

(declare-fun b!3231472 () Bool)

(declare-fun tp!1017969 () Bool)

(declare-fun tp!1017966 () Bool)

(assert (=> b!3231472 (= e!2015305 (and tp!1017969 tp!1017966))))

(assert (= (and b!3229136 ((_ is ElementMatch!10025) (regOne!20562 (regOne!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231469))

(assert (= (and b!3229136 ((_ is Concat!15521) (regOne!20562 (regOne!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231470))

(assert (= (and b!3229136 ((_ is Star!10025) (regOne!20562 (regOne!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231471))

(assert (= (and b!3229136 ((_ is Union!10025) (regOne!20562 (regOne!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231472))

(declare-fun b!3231474 () Bool)

(declare-fun e!2015306 () Bool)

(declare-fun tp!1017975 () Bool)

(declare-fun tp!1017972 () Bool)

(assert (=> b!3231474 (= e!2015306 (and tp!1017975 tp!1017972))))

(declare-fun b!3231475 () Bool)

(declare-fun tp!1017973 () Bool)

(assert (=> b!3231475 (= e!2015306 tp!1017973)))

(assert (=> b!3229136 (= tp!1017473 e!2015306)))

(declare-fun b!3231473 () Bool)

(assert (=> b!3231473 (= e!2015306 tp_is_empty!17329)))

(declare-fun b!3231476 () Bool)

(declare-fun tp!1017974 () Bool)

(declare-fun tp!1017971 () Bool)

(assert (=> b!3231476 (= e!2015306 (and tp!1017974 tp!1017971))))

(assert (= (and b!3229136 ((_ is ElementMatch!10025) (regTwo!20562 (regOne!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231473))

(assert (= (and b!3229136 ((_ is Concat!15521) (regTwo!20562 (regOne!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231474))

(assert (= (and b!3229136 ((_ is Star!10025) (regTwo!20562 (regOne!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231475))

(assert (= (and b!3229136 ((_ is Union!10025) (regTwo!20562 (regOne!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231476))

(declare-fun b!3231478 () Bool)

(declare-fun e!2015307 () Bool)

(declare-fun tp!1017980 () Bool)

(declare-fun tp!1017977 () Bool)

(assert (=> b!3231478 (= e!2015307 (and tp!1017980 tp!1017977))))

(declare-fun b!3231479 () Bool)

(declare-fun tp!1017978 () Bool)

(assert (=> b!3231479 (= e!2015307 tp!1017978)))

(assert (=> b!3229122 (= tp!1017460 e!2015307)))

(declare-fun b!3231477 () Bool)

(assert (=> b!3231477 (= e!2015307 tp_is_empty!17329)))

(declare-fun b!3231480 () Bool)

(declare-fun tp!1017979 () Bool)

(declare-fun tp!1017976 () Bool)

(assert (=> b!3231480 (= e!2015307 (and tp!1017979 tp!1017976))))

(assert (= (and b!3229122 ((_ is ElementMatch!10025) (regOne!20563 (regOne!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231477))

(assert (= (and b!3229122 ((_ is Concat!15521) (regOne!20563 (regOne!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231478))

(assert (= (and b!3229122 ((_ is Star!10025) (regOne!20563 (regOne!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231479))

(assert (= (and b!3229122 ((_ is Union!10025) (regOne!20563 (regOne!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231480))

(declare-fun b!3231482 () Bool)

(declare-fun e!2015308 () Bool)

(declare-fun tp!1017985 () Bool)

(declare-fun tp!1017982 () Bool)

(assert (=> b!3231482 (= e!2015308 (and tp!1017985 tp!1017982))))

(declare-fun b!3231483 () Bool)

(declare-fun tp!1017983 () Bool)

(assert (=> b!3231483 (= e!2015308 tp!1017983)))

(assert (=> b!3229122 (= tp!1017457 e!2015308)))

(declare-fun b!3231481 () Bool)

(assert (=> b!3231481 (= e!2015308 tp_is_empty!17329)))

(declare-fun b!3231484 () Bool)

(declare-fun tp!1017984 () Bool)

(declare-fun tp!1017981 () Bool)

(assert (=> b!3231484 (= e!2015308 (and tp!1017984 tp!1017981))))

(assert (= (and b!3229122 ((_ is ElementMatch!10025) (regTwo!20563 (regOne!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231481))

(assert (= (and b!3229122 ((_ is Concat!15521) (regTwo!20563 (regOne!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231482))

(assert (= (and b!3229122 ((_ is Star!10025) (regTwo!20563 (regOne!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231483))

(assert (= (and b!3229122 ((_ is Union!10025) (regTwo!20563 (regOne!20563 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231484))

(declare-fun b!3231486 () Bool)

(declare-fun e!2015309 () Bool)

(declare-fun tp!1017990 () Bool)

(declare-fun tp!1017987 () Bool)

(assert (=> b!3231486 (= e!2015309 (and tp!1017990 tp!1017987))))

(declare-fun b!3231487 () Bool)

(declare-fun tp!1017988 () Bool)

(assert (=> b!3231487 (= e!2015309 tp!1017988)))

(assert (=> b!3229117 (= tp!1017454 e!2015309)))

(declare-fun b!3231485 () Bool)

(assert (=> b!3231485 (= e!2015309 tp_is_empty!17329)))

(declare-fun b!3231488 () Bool)

(declare-fun tp!1017989 () Bool)

(declare-fun tp!1017986 () Bool)

(assert (=> b!3231488 (= e!2015309 (and tp!1017989 tp!1017986))))

(assert (= (and b!3229117 ((_ is ElementMatch!10025) (reg!10354 (regTwo!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231485))

(assert (= (and b!3229117 ((_ is Concat!15521) (reg!10354 (regTwo!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231486))

(assert (= (and b!3229117 ((_ is Star!10025) (reg!10354 (regTwo!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231487))

(assert (= (and b!3229117 ((_ is Union!10025) (reg!10354 (regTwo!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231488))

(declare-fun b!3231490 () Bool)

(declare-fun e!2015310 () Bool)

(declare-fun tp!1017995 () Bool)

(declare-fun tp!1017992 () Bool)

(assert (=> b!3231490 (= e!2015310 (and tp!1017995 tp!1017992))))

(declare-fun b!3231491 () Bool)

(declare-fun tp!1017993 () Bool)

(assert (=> b!3231491 (= e!2015310 tp!1017993)))

(assert (=> b!3229138 (= tp!1017475 e!2015310)))

(declare-fun b!3231489 () Bool)

(assert (=> b!3231489 (= e!2015310 tp_is_empty!17329)))

(declare-fun b!3231492 () Bool)

(declare-fun tp!1017994 () Bool)

(declare-fun tp!1017991 () Bool)

(assert (=> b!3231492 (= e!2015310 (and tp!1017994 tp!1017991))))

(assert (= (and b!3229138 ((_ is ElementMatch!10025) (regOne!20563 (regOne!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231489))

(assert (= (and b!3229138 ((_ is Concat!15521) (regOne!20563 (regOne!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231490))

(assert (= (and b!3229138 ((_ is Star!10025) (regOne!20563 (regOne!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231491))

(assert (= (and b!3229138 ((_ is Union!10025) (regOne!20563 (regOne!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231492))

(declare-fun b!3231494 () Bool)

(declare-fun e!2015311 () Bool)

(declare-fun tp!1018000 () Bool)

(declare-fun tp!1017997 () Bool)

(assert (=> b!3231494 (= e!2015311 (and tp!1018000 tp!1017997))))

(declare-fun b!3231495 () Bool)

(declare-fun tp!1017998 () Bool)

(assert (=> b!3231495 (= e!2015311 tp!1017998)))

(assert (=> b!3229138 (= tp!1017472 e!2015311)))

(declare-fun b!3231493 () Bool)

(assert (=> b!3231493 (= e!2015311 tp_is_empty!17329)))

(declare-fun b!3231496 () Bool)

(declare-fun tp!1017999 () Bool)

(declare-fun tp!1017996 () Bool)

(assert (=> b!3231496 (= e!2015311 (and tp!1017999 tp!1017996))))

(assert (= (and b!3229138 ((_ is ElementMatch!10025) (regTwo!20563 (regOne!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231493))

(assert (= (and b!3229138 ((_ is Concat!15521) (regTwo!20563 (regOne!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231494))

(assert (= (and b!3229138 ((_ is Star!10025) (regTwo!20563 (regOne!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231495))

(assert (= (and b!3229138 ((_ is Union!10025) (regTwo!20563 (regOne!20562 (regex!5266 (h!41782 rules!2135)))))) b!3231496))

(declare-fun b!3231498 () Bool)

(declare-fun e!2015312 () Bool)

(declare-fun tp!1018005 () Bool)

(declare-fun tp!1018002 () Bool)

(assert (=> b!3231498 (= e!2015312 (and tp!1018005 tp!1018002))))

(declare-fun b!3231499 () Bool)

(declare-fun tp!1018003 () Bool)

(assert (=> b!3231499 (= e!2015312 tp!1018003)))

(assert (=> b!3229106 (= tp!1017440 e!2015312)))

(declare-fun b!3231497 () Bool)

(assert (=> b!3231497 (= e!2015312 tp_is_empty!17329)))

(declare-fun b!3231500 () Bool)

(declare-fun tp!1018004 () Bool)

(declare-fun tp!1018001 () Bool)

(assert (=> b!3231500 (= e!2015312 (and tp!1018004 tp!1018001))))

(assert (= (and b!3229106 ((_ is ElementMatch!10025) (regOne!20563 (regex!5266 (h!41782 (t!241331 rules!2135)))))) b!3231497))

(assert (= (and b!3229106 ((_ is Concat!15521) (regOne!20563 (regex!5266 (h!41782 (t!241331 rules!2135)))))) b!3231498))

(assert (= (and b!3229106 ((_ is Star!10025) (regOne!20563 (regex!5266 (h!41782 (t!241331 rules!2135)))))) b!3231499))

(assert (= (and b!3229106 ((_ is Union!10025) (regOne!20563 (regex!5266 (h!41782 (t!241331 rules!2135)))))) b!3231500))

(declare-fun b!3231502 () Bool)

(declare-fun e!2015313 () Bool)

(declare-fun tp!1018010 () Bool)

(declare-fun tp!1018007 () Bool)

(assert (=> b!3231502 (= e!2015313 (and tp!1018010 tp!1018007))))

(declare-fun b!3231503 () Bool)

(declare-fun tp!1018008 () Bool)

(assert (=> b!3231503 (= e!2015313 tp!1018008)))

(assert (=> b!3229106 (= tp!1017437 e!2015313)))

(declare-fun b!3231501 () Bool)

(assert (=> b!3231501 (= e!2015313 tp_is_empty!17329)))

(declare-fun b!3231504 () Bool)

(declare-fun tp!1018009 () Bool)

(declare-fun tp!1018006 () Bool)

(assert (=> b!3231504 (= e!2015313 (and tp!1018009 tp!1018006))))

(assert (= (and b!3229106 ((_ is ElementMatch!10025) (regTwo!20563 (regex!5266 (h!41782 (t!241331 rules!2135)))))) b!3231501))

(assert (= (and b!3229106 ((_ is Concat!15521) (regTwo!20563 (regex!5266 (h!41782 (t!241331 rules!2135)))))) b!3231502))

(assert (= (and b!3229106 ((_ is Star!10025) (regTwo!20563 (regex!5266 (h!41782 (t!241331 rules!2135)))))) b!3231503))

(assert (= (and b!3229106 ((_ is Union!10025) (regTwo!20563 (regex!5266 (h!41782 (t!241331 rules!2135)))))) b!3231504))

(declare-fun b!3231506 () Bool)

(declare-fun e!2015314 () Bool)

(declare-fun tp!1018015 () Bool)

(declare-fun tp!1018012 () Bool)

(assert (=> b!3231506 (= e!2015314 (and tp!1018015 tp!1018012))))

(declare-fun b!3231507 () Bool)

(declare-fun tp!1018013 () Bool)

(assert (=> b!3231507 (= e!2015314 tp!1018013)))

(assert (=> b!3229101 (= tp!1017434 e!2015314)))

(declare-fun b!3231505 () Bool)

(assert (=> b!3231505 (= e!2015314 tp_is_empty!17329)))

(declare-fun b!3231508 () Bool)

(declare-fun tp!1018014 () Bool)

(declare-fun tp!1018011 () Bool)

(assert (=> b!3231508 (= e!2015314 (and tp!1018014 tp!1018011))))

(assert (= (and b!3229101 ((_ is ElementMatch!10025) (reg!10354 (reg!10354 (regex!5266 (h!41782 rules!2135)))))) b!3231505))

(assert (= (and b!3229101 ((_ is Concat!15521) (reg!10354 (reg!10354 (regex!5266 (h!41782 rules!2135)))))) b!3231506))

(assert (= (and b!3229101 ((_ is Star!10025) (reg!10354 (reg!10354 (regex!5266 (h!41782 rules!2135)))))) b!3231507))

(assert (= (and b!3229101 ((_ is Union!10025) (reg!10354 (reg!10354 (regex!5266 (h!41782 rules!2135)))))) b!3231508))

(declare-fun tp!1018018 () Bool)

(declare-fun tp!1018016 () Bool)

(declare-fun e!2015316 () Bool)

(declare-fun b!3231509 () Bool)

(assert (=> b!3231509 (= e!2015316 (and (inv!49253 (left!28314 (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))))) tp!1018018 (inv!49253 (right!28644 (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))))) tp!1018016))))

(declare-fun b!3231511 () Bool)

(declare-fun e!2015315 () Bool)

(declare-fun tp!1018017 () Bool)

(assert (=> b!3231511 (= e!2015315 tp!1018017)))

(declare-fun b!3231510 () Bool)

(assert (=> b!3231510 (= e!2015316 (and (inv!49259 (xs!14025 (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))))) e!2015315))))

(assert (=> b!3229078 (= tp!1017410 (and (inv!49253 (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241))))) e!2015316))))

(assert (= (and b!3229078 ((_ is Node!10907) (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))))) b!3231509))

(assert (= b!3231510 b!3231511))

(assert (= (and b!3229078 ((_ is Leaf!17151) (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))))) b!3231510))

(declare-fun m!3513377 () Bool)

(assert (=> b!3231509 m!3513377))

(declare-fun m!3513379 () Bool)

(assert (=> b!3231509 m!3513379))

(declare-fun m!3513381 () Bool)

(assert (=> b!3231510 m!3513381))

(assert (=> b!3229078 m!3508811))

(declare-fun tp!1018021 () Bool)

(declare-fun tp!1018019 () Bool)

(declare-fun b!3231512 () Bool)

(declare-fun e!2015318 () Bool)

(assert (=> b!3231512 (= e!2015318 (and (inv!49253 (left!28314 (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))))) tp!1018021 (inv!49253 (right!28644 (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))))) tp!1018019))))

(declare-fun b!3231514 () Bool)

(declare-fun e!2015317 () Bool)

(declare-fun tp!1018020 () Bool)

(assert (=> b!3231514 (= e!2015317 tp!1018020)))

(declare-fun b!3231513 () Bool)

(assert (=> b!3231513 (= e!2015318 (and (inv!49259 (xs!14025 (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))))) e!2015317))))

(assert (=> b!3229078 (= tp!1017408 (and (inv!49253 (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241))))) e!2015318))))

(assert (= (and b!3229078 ((_ is Node!10907) (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))))) b!3231512))

(assert (= b!3231513 b!3231514))

(assert (= (and b!3229078 ((_ is Leaf!17151) (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241)))))) b!3231513))

(declare-fun m!3513383 () Bool)

(assert (=> b!3231512 m!3513383))

(declare-fun m!3513385 () Bool)

(assert (=> b!3231512 m!3513385))

(declare-fun m!3513387 () Bool)

(assert (=> b!3231513 m!3513387))

(assert (=> b!3229078 m!3508813))

(declare-fun b!3231519 () Bool)

(declare-fun e!2015325 () Bool)

(declare-fun tp!1018026 () Bool)

(declare-fun tp!1018023 () Bool)

(assert (=> b!3231519 (= e!2015325 (and tp!1018026 tp!1018023))))

(declare-fun b!3231521 () Bool)

(declare-fun tp!1018024 () Bool)

(assert (=> b!3231521 (= e!2015325 tp!1018024)))

(assert (=> b!3229109 (= tp!1017444 e!2015325)))

(declare-fun b!3231518 () Bool)

(assert (=> b!3231518 (= e!2015325 tp_is_empty!17329)))

(declare-fun b!3231523 () Bool)

(declare-fun tp!1018025 () Bool)

(declare-fun tp!1018022 () Bool)

(assert (=> b!3231523 (= e!2015325 (and tp!1018025 tp!1018022))))

(assert (= (and b!3229109 ((_ is ElementMatch!10025) (reg!10354 (reg!10354 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231518))

(assert (= (and b!3229109 ((_ is Concat!15521) (reg!10354 (reg!10354 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231519))

(assert (= (and b!3229109 ((_ is Star!10025) (reg!10354 (reg!10354 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231521))

(assert (= (and b!3229109 ((_ is Union!10025) (reg!10354 (reg!10354 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231523))

(declare-fun b!3231528 () Bool)

(declare-fun e!2015326 () Bool)

(declare-fun tp!1018031 () Bool)

(declare-fun tp!1018028 () Bool)

(assert (=> b!3231528 (= e!2015326 (and tp!1018031 tp!1018028))))

(declare-fun b!3231529 () Bool)

(declare-fun tp!1018029 () Bool)

(assert (=> b!3231529 (= e!2015326 tp!1018029)))

(assert (=> b!3229085 (= tp!1017415 e!2015326)))

(declare-fun b!3231527 () Bool)

(assert (=> b!3231527 (= e!2015326 tp_is_empty!17329)))

(declare-fun b!3231530 () Bool)

(declare-fun tp!1018030 () Bool)

(declare-fun tp!1018027 () Bool)

(assert (=> b!3231530 (= e!2015326 (and tp!1018030 tp!1018027))))

(assert (= (and b!3229085 ((_ is ElementMatch!10025) (regOne!20563 (regOne!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231527))

(assert (= (and b!3229085 ((_ is Concat!15521) (regOne!20563 (regOne!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231528))

(assert (= (and b!3229085 ((_ is Star!10025) (regOne!20563 (regOne!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231529))

(assert (= (and b!3229085 ((_ is Union!10025) (regOne!20563 (regOne!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231530))

(declare-fun b!3231532 () Bool)

(declare-fun e!2015327 () Bool)

(declare-fun tp!1018036 () Bool)

(declare-fun tp!1018033 () Bool)

(assert (=> b!3231532 (= e!2015327 (and tp!1018036 tp!1018033))))

(declare-fun b!3231533 () Bool)

(declare-fun tp!1018034 () Bool)

(assert (=> b!3231533 (= e!2015327 tp!1018034)))

(assert (=> b!3229085 (= tp!1017412 e!2015327)))

(declare-fun b!3231531 () Bool)

(assert (=> b!3231531 (= e!2015327 tp_is_empty!17329)))

(declare-fun b!3231534 () Bool)

(declare-fun tp!1018035 () Bool)

(declare-fun tp!1018032 () Bool)

(assert (=> b!3231534 (= e!2015327 (and tp!1018035 tp!1018032))))

(assert (= (and b!3229085 ((_ is ElementMatch!10025) (regTwo!20563 (regOne!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231531))

(assert (= (and b!3229085 ((_ is Concat!15521) (regTwo!20563 (regOne!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231532))

(assert (= (and b!3229085 ((_ is Star!10025) (regTwo!20563 (regOne!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231533))

(assert (= (and b!3229085 ((_ is Union!10025) (regTwo!20563 (regOne!20563 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231534))

(declare-fun b!3231536 () Bool)

(declare-fun e!2015328 () Bool)

(declare-fun tp!1018041 () Bool)

(declare-fun tp!1018038 () Bool)

(assert (=> b!3231536 (= e!2015328 (and tp!1018041 tp!1018038))))

(declare-fun b!3231537 () Bool)

(declare-fun tp!1018039 () Bool)

(assert (=> b!3231537 (= e!2015328 tp!1018039)))

(assert (=> b!3229112 (= tp!1017451 e!2015328)))

(declare-fun b!3231535 () Bool)

(assert (=> b!3231535 (= e!2015328 tp_is_empty!17329)))

(declare-fun b!3231538 () Bool)

(declare-fun tp!1018040 () Bool)

(declare-fun tp!1018037 () Bool)

(assert (=> b!3231538 (= e!2015328 (and tp!1018040 tp!1018037))))

(assert (= (and b!3229112 ((_ is ElementMatch!10025) (regOne!20562 (regOne!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231535))

(assert (= (and b!3229112 ((_ is Concat!15521) (regOne!20562 (regOne!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231536))

(assert (= (and b!3229112 ((_ is Star!10025) (regOne!20562 (regOne!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231537))

(assert (= (and b!3229112 ((_ is Union!10025) (regOne!20562 (regOne!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231538))

(declare-fun b!3231540 () Bool)

(declare-fun e!2015329 () Bool)

(declare-fun tp!1018046 () Bool)

(declare-fun tp!1018043 () Bool)

(assert (=> b!3231540 (= e!2015329 (and tp!1018046 tp!1018043))))

(declare-fun b!3231541 () Bool)

(declare-fun tp!1018044 () Bool)

(assert (=> b!3231541 (= e!2015329 tp!1018044)))

(assert (=> b!3229112 (= tp!1017448 e!2015329)))

(declare-fun b!3231539 () Bool)

(assert (=> b!3231539 (= e!2015329 tp_is_empty!17329)))

(declare-fun b!3231542 () Bool)

(declare-fun tp!1018045 () Bool)

(declare-fun tp!1018042 () Bool)

(assert (=> b!3231542 (= e!2015329 (and tp!1018045 tp!1018042))))

(assert (= (and b!3229112 ((_ is ElementMatch!10025) (regTwo!20562 (regOne!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231539))

(assert (= (and b!3229112 ((_ is Concat!15521) (regTwo!20562 (regOne!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231540))

(assert (= (and b!3229112 ((_ is Star!10025) (regTwo!20562 (regOne!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231541))

(assert (= (and b!3229112 ((_ is Union!10025) (regTwo!20562 (regOne!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231542))

(declare-fun b!3231543 () Bool)

(declare-fun e!2015330 () Bool)

(declare-fun tp!1018047 () Bool)

(assert (=> b!3231543 (= e!2015330 (and tp_is_empty!17329 tp!1018047))))

(assert (=> b!3229080 (= tp!1017409 e!2015330)))

(assert (= (and b!3229080 ((_ is Cons!36361) (innerList!10967 (xs!14025 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (value!170541 separatorToken!241))))))) b!3231543))

(declare-fun b!3231545 () Bool)

(declare-fun e!2015331 () Bool)

(declare-fun tp!1018052 () Bool)

(declare-fun tp!1018049 () Bool)

(assert (=> b!3231545 (= e!2015331 (and tp!1018052 tp!1018049))))

(declare-fun b!3231546 () Bool)

(declare-fun tp!1018050 () Bool)

(assert (=> b!3231546 (= e!2015331 tp!1018050)))

(assert (=> b!3229114 (= tp!1017450 e!2015331)))

(declare-fun b!3231544 () Bool)

(assert (=> b!3231544 (= e!2015331 tp_is_empty!17329)))

(declare-fun b!3231547 () Bool)

(declare-fun tp!1018051 () Bool)

(declare-fun tp!1018048 () Bool)

(assert (=> b!3231547 (= e!2015331 (and tp!1018051 tp!1018048))))

(assert (= (and b!3229114 ((_ is ElementMatch!10025) (regOne!20563 (regOne!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231544))

(assert (= (and b!3229114 ((_ is Concat!15521) (regOne!20563 (regOne!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231545))

(assert (= (and b!3229114 ((_ is Star!10025) (regOne!20563 (regOne!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231546))

(assert (= (and b!3229114 ((_ is Union!10025) (regOne!20563 (regOne!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231547))

(declare-fun b!3231549 () Bool)

(declare-fun e!2015332 () Bool)

(declare-fun tp!1018057 () Bool)

(declare-fun tp!1018054 () Bool)

(assert (=> b!3231549 (= e!2015332 (and tp!1018057 tp!1018054))))

(declare-fun b!3231550 () Bool)

(declare-fun tp!1018055 () Bool)

(assert (=> b!3231550 (= e!2015332 tp!1018055)))

(assert (=> b!3229114 (= tp!1017447 e!2015332)))

(declare-fun b!3231548 () Bool)

(assert (=> b!3231548 (= e!2015332 tp_is_empty!17329)))

(declare-fun b!3231551 () Bool)

(declare-fun tp!1018056 () Bool)

(declare-fun tp!1018053 () Bool)

(assert (=> b!3231551 (= e!2015332 (and tp!1018056 tp!1018053))))

(assert (= (and b!3229114 ((_ is ElementMatch!10025) (regTwo!20563 (regOne!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231548))

(assert (= (and b!3229114 ((_ is Concat!15521) (regTwo!20563 (regOne!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231549))

(assert (= (and b!3229114 ((_ is Star!10025) (regTwo!20563 (regOne!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231550))

(assert (= (and b!3229114 ((_ is Union!10025) (regTwo!20563 (regOne!20563 (regex!5266 (h!41782 rules!2135)))))) b!3231551))

(declare-fun b!3231553 () Bool)

(declare-fun e!2015333 () Bool)

(declare-fun tp!1018062 () Bool)

(declare-fun tp!1018059 () Bool)

(assert (=> b!3231553 (= e!2015333 (and tp!1018062 tp!1018059))))

(declare-fun b!3231554 () Bool)

(declare-fun tp!1018060 () Bool)

(assert (=> b!3231554 (= e!2015333 tp!1018060)))

(assert (=> b!3229096 (= tp!1017431 e!2015333)))

(declare-fun b!3231552 () Bool)

(assert (=> b!3231552 (= e!2015333 tp_is_empty!17329)))

(declare-fun b!3231555 () Bool)

(declare-fun tp!1018061 () Bool)

(declare-fun tp!1018058 () Bool)

(assert (=> b!3231555 (= e!2015333 (and tp!1018061 tp!1018058))))

(assert (= (and b!3229096 ((_ is ElementMatch!10025) (regOne!20562 (regex!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))))) b!3231552))

(assert (= (and b!3229096 ((_ is Concat!15521) (regOne!20562 (regex!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))))) b!3231553))

(assert (= (and b!3229096 ((_ is Star!10025) (regOne!20562 (regex!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))))) b!3231554))

(assert (= (and b!3229096 ((_ is Union!10025) (regOne!20562 (regex!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))))) b!3231555))

(declare-fun b!3231557 () Bool)

(declare-fun e!2015334 () Bool)

(declare-fun tp!1018067 () Bool)

(declare-fun tp!1018064 () Bool)

(assert (=> b!3231557 (= e!2015334 (and tp!1018067 tp!1018064))))

(declare-fun b!3231558 () Bool)

(declare-fun tp!1018065 () Bool)

(assert (=> b!3231558 (= e!2015334 tp!1018065)))

(assert (=> b!3229096 (= tp!1017428 e!2015334)))

(declare-fun b!3231556 () Bool)

(assert (=> b!3231556 (= e!2015334 tp_is_empty!17329)))

(declare-fun b!3231559 () Bool)

(declare-fun tp!1018066 () Bool)

(declare-fun tp!1018063 () Bool)

(assert (=> b!3231559 (= e!2015334 (and tp!1018066 tp!1018063))))

(assert (= (and b!3229096 ((_ is ElementMatch!10025) (regTwo!20562 (regex!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))))) b!3231556))

(assert (= (and b!3229096 ((_ is Concat!15521) (regTwo!20562 (regex!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))))) b!3231557))

(assert (= (and b!3229096 ((_ is Star!10025) (regTwo!20562 (regex!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))))) b!3231558))

(assert (= (and b!3229096 ((_ is Union!10025) (regTwo!20562 (regex!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))))) b!3231559))

(declare-fun tp!1018070 () Bool)

(declare-fun tp!1018068 () Bool)

(declare-fun b!3231560 () Bool)

(declare-fun e!2015336 () Bool)

(assert (=> b!3231560 (= e!2015336 (and (inv!49253 (left!28314 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 0)))) (value!170541 (apply!8300 lt!1095069 0)))))) tp!1018070 (inv!49253 (right!28644 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 0)))) (value!170541 (apply!8300 lt!1095069 0)))))) tp!1018068))))

(declare-fun b!3231562 () Bool)

(declare-fun e!2015335 () Bool)

(declare-fun tp!1018069 () Bool)

(assert (=> b!3231562 (= e!2015335 tp!1018069)))

(declare-fun b!3231561 () Bool)

(assert (=> b!3231561 (= e!2015336 (and (inv!49259 (xs!14025 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 0)))) (value!170541 (apply!8300 lt!1095069 0)))))) e!2015335))))

(assert (=> b!3228977 (= tp!1017385 (and (inv!49253 (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 0)))) (value!170541 (apply!8300 lt!1095069 0))))) e!2015336))))

(assert (= (and b!3228977 ((_ is Node!10907) (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 0)))) (value!170541 (apply!8300 lt!1095069 0)))))) b!3231560))

(assert (= b!3231561 b!3231562))

(assert (= (and b!3228977 ((_ is Leaf!17151) (c!542433 (dynLambda!14794 (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 0)))) (value!170541 (apply!8300 lt!1095069 0)))))) b!3231561))

(declare-fun m!3513399 () Bool)

(assert (=> b!3231560 m!3513399))

(declare-fun m!3513403 () Bool)

(assert (=> b!3231560 m!3513403))

(declare-fun m!3513405 () Bool)

(assert (=> b!3231561 m!3513405))

(assert (=> b!3228977 m!3508655))

(declare-fun b!3231565 () Bool)

(declare-fun e!2015339 () Bool)

(assert (=> b!3231565 (= e!2015339 true)))

(declare-fun b!3231564 () Bool)

(declare-fun e!2015338 () Bool)

(assert (=> b!3231564 (= e!2015338 e!2015339)))

(declare-fun b!3231563 () Bool)

(declare-fun e!2015337 () Bool)

(assert (=> b!3231563 (= e!2015337 e!2015338)))

(assert (=> b!3229150 e!2015337))

(assert (= b!3231564 b!3231565))

(assert (= b!3231563 b!3231564))

(assert (= (and b!3229150 ((_ is Cons!36362) (t!241331 (t!241331 rules!2135)))) b!3231563))

(assert (=> b!3231565 (< (dynLambda!14791 order!18761 (toValue!7374 (transformation!5266 (h!41782 (t!241331 (t!241331 rules!2135)))))) (dynLambda!14792 order!18763 lambda!118217))))

(assert (=> b!3231565 (< (dynLambda!14793 order!18765 (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 rules!2135)))))) (dynLambda!14792 order!18763 lambda!118217))))

(declare-fun b!3231567 () Bool)

(declare-fun e!2015340 () Bool)

(declare-fun tp!1018075 () Bool)

(declare-fun tp!1018072 () Bool)

(assert (=> b!3231567 (= e!2015340 (and tp!1018075 tp!1018072))))

(declare-fun b!3231568 () Bool)

(declare-fun tp!1018073 () Bool)

(assert (=> b!3231568 (= e!2015340 tp!1018073)))

(assert (=> b!3229159 (= tp!1017493 e!2015340)))

(declare-fun b!3231566 () Bool)

(assert (=> b!3231566 (= e!2015340 tp_is_empty!17329)))

(declare-fun b!3231569 () Bool)

(declare-fun tp!1018074 () Bool)

(declare-fun tp!1018071 () Bool)

(assert (=> b!3231569 (= e!2015340 (and tp!1018074 tp!1018071))))

(assert (= (and b!3229159 ((_ is ElementMatch!10025) (reg!10354 (regTwo!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231566))

(assert (= (and b!3229159 ((_ is Concat!15521) (reg!10354 (regTwo!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231567))

(assert (= (and b!3229159 ((_ is Star!10025) (reg!10354 (regTwo!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231568))

(assert (= (and b!3229159 ((_ is Union!10025) (reg!10354 (regTwo!20562 (regex!5266 (rule!7724 separatorToken!241)))))) b!3231569))

(declare-fun b!3231571 () Bool)

(declare-fun e!2015341 () Bool)

(declare-fun tp!1018080 () Bool)

(declare-fun tp!1018077 () Bool)

(assert (=> b!3231571 (= e!2015341 (and tp!1018080 tp!1018077))))

(declare-fun b!3231572 () Bool)

(declare-fun tp!1018078 () Bool)

(assert (=> b!3231572 (= e!2015341 tp!1018078)))

(assert (=> b!3229098 (= tp!1017430 e!2015341)))

(declare-fun b!3231570 () Bool)

(assert (=> b!3231570 (= e!2015341 tp_is_empty!17329)))

(declare-fun b!3231573 () Bool)

(declare-fun tp!1018079 () Bool)

(declare-fun tp!1018076 () Bool)

(assert (=> b!3231573 (= e!2015341 (and tp!1018079 tp!1018076))))

(assert (= (and b!3229098 ((_ is ElementMatch!10025) (regOne!20563 (regex!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))))) b!3231570))

(assert (= (and b!3229098 ((_ is Concat!15521) (regOne!20563 (regex!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))))) b!3231571))

(assert (= (and b!3229098 ((_ is Star!10025) (regOne!20563 (regex!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))))) b!3231572))

(assert (= (and b!3229098 ((_ is Union!10025) (regOne!20563 (regex!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))))) b!3231573))

(declare-fun b!3231575 () Bool)

(declare-fun e!2015342 () Bool)

(declare-fun tp!1018085 () Bool)

(declare-fun tp!1018082 () Bool)

(assert (=> b!3231575 (= e!2015342 (and tp!1018085 tp!1018082))))

(declare-fun b!3231576 () Bool)

(declare-fun tp!1018083 () Bool)

(assert (=> b!3231576 (= e!2015342 tp!1018083)))

(assert (=> b!3229098 (= tp!1017427 e!2015342)))

(declare-fun b!3231574 () Bool)

(assert (=> b!3231574 (= e!2015342 tp_is_empty!17329)))

(declare-fun b!3231577 () Bool)

(declare-fun tp!1018084 () Bool)

(declare-fun tp!1018081 () Bool)

(assert (=> b!3231577 (= e!2015342 (and tp!1018084 tp!1018081))))

(assert (= (and b!3229098 ((_ is ElementMatch!10025) (regTwo!20563 (regex!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))))) b!3231574))

(assert (= (and b!3229098 ((_ is Concat!15521) (regTwo!20563 (regex!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))))) b!3231575))

(assert (= (and b!3229098 ((_ is Star!10025) (regTwo!20563 (regex!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))))) b!3231576))

(assert (= (and b!3229098 ((_ is Union!10025) (regTwo!20563 (regex!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))))) b!3231577))

(declare-fun b!3231578 () Bool)

(declare-fun e!2015343 () Bool)

(declare-fun tp!1018086 () Bool)

(assert (=> b!3231578 (= e!2015343 (and tp_is_empty!17329 tp!1018086))))

(assert (=> b!3229093 (= tp!1017425 e!2015343)))

(assert (= (and b!3229093 ((_ is Cons!36361) (t!241330 (originalCharacters!5980 (h!41783 (t!241332 tokens!494)))))) b!3231578))

(declare-fun b!3231580 () Bool)

(declare-fun e!2015344 () Bool)

(declare-fun tp!1018091 () Bool)

(declare-fun tp!1018088 () Bool)

(assert (=> b!3231580 (= e!2015344 (and tp!1018091 tp!1018088))))

(declare-fun b!3231581 () Bool)

(declare-fun tp!1018089 () Bool)

(assert (=> b!3231581 (= e!2015344 tp!1018089)))

(assert (=> b!3229061 (= tp!1017399 e!2015344)))

(declare-fun b!3231579 () Bool)

(assert (=> b!3231579 (= e!2015344 tp_is_empty!17329)))

(declare-fun b!3231582 () Bool)

(declare-fun tp!1018090 () Bool)

(declare-fun tp!1018087 () Bool)

(assert (=> b!3231582 (= e!2015344 (and tp!1018090 tp!1018087))))

(assert (= (and b!3229061 ((_ is ElementMatch!10025) (reg!10354 (reg!10354 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231579))

(assert (= (and b!3229061 ((_ is Concat!15521) (reg!10354 (reg!10354 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231580))

(assert (= (and b!3229061 ((_ is Star!10025) (reg!10354 (reg!10354 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231581))

(assert (= (and b!3229061 ((_ is Union!10025) (reg!10354 (reg!10354 (regex!5266 (rule!7724 (h!41783 tokens!494))))))) b!3231582))

(declare-fun b!3231585 () Bool)

(declare-fun b_free!86177 () Bool)

(declare-fun b_next!86881 () Bool)

(assert (=> b!3231585 (= b_free!86177 (not b_next!86881))))

(declare-fun tp!1018095 () Bool)

(declare-fun b_and!216531 () Bool)

(assert (=> b!3231585 (= tp!1018095 b_and!216531)))

(declare-fun b_free!86179 () Bool)

(declare-fun b_next!86883 () Bool)

(assert (=> b!3231585 (= b_free!86179 (not b_next!86883))))

(declare-fun tb!160199 () Bool)

(declare-fun t!241744 () Bool)

(assert (=> (and b!3231585 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 (t!241331 rules!2135)))))) (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 (+ 0 1)))))) t!241744) tb!160199))

(declare-fun result!202760 () Bool)

(assert (= result!202760 result!202718))

(assert (=> d!888176 t!241744))

(declare-fun tb!160201 () Bool)

(declare-fun t!241746 () Bool)

(assert (=> (and b!3231585 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 (t!241331 rules!2135)))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (dropList!1093 lt!1095069 0)))))) t!241746) tb!160201))

(declare-fun result!202762 () Bool)

(assert (= result!202762 result!202564))

(assert (=> d!887144 t!241746))

(declare-fun t!241748 () Bool)

(declare-fun tb!160203 () Bool)

(assert (=> (and b!3231585 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 (t!241331 rules!2135)))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494))))))) t!241748) tb!160203))

(declare-fun result!202764 () Bool)

(assert (= result!202764 result!202536))

(assert (=> b!3229277 t!241748))

(declare-fun t!241750 () Bool)

(declare-fun tb!160205 () Bool)

(assert (=> (and b!3231585 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 (t!241331 rules!2135)))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494)))))) t!241750) tb!160205))

(declare-fun result!202766 () Bool)

(assert (= result!202766 result!202452))

(assert (=> b!3228832 t!241750))

(declare-fun tb!160209 () Bool)

(declare-fun t!241754 () Bool)

(assert (=> (and b!3231585 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 (t!241331 rules!2135)))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363)))))) t!241754) tb!160209))

(declare-fun result!202770 () Bool)

(assert (= result!202770 result!202482))

(assert (=> d!886926 t!241754))

(declare-fun tb!160211 () Bool)

(declare-fun t!241756 () Bool)

(assert (=> (and b!3231585 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 (t!241331 rules!2135)))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (list!12978 lt!1095068)))))) t!241756) tb!160211))

(declare-fun result!202772 () Bool)

(assert (= result!202772 result!202592))

(assert (=> d!887322 t!241756))

(declare-fun t!241760 () Bool)

(declare-fun tb!160215 () Bool)

(assert (=> (and b!3231585 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 (t!241331 rules!2135)))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))) t!241760) tb!160215))

(declare-fun result!202776 () Bool)

(assert (= result!202776 result!202620))

(assert (=> d!887446 t!241760))

(declare-fun tb!160219 () Bool)

(declare-fun t!241764 () Bool)

(assert (=> (and b!3231585 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 (t!241331 rules!2135)))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (list!12978 lt!1095069)))))) t!241764) tb!160219))

(declare-fun result!202780 () Bool)

(assert (= result!202780 result!202578))

(assert (=> d!887162 t!241764))

(declare-fun t!241768 () Bool)

(declare-fun tb!160223 () Bool)

(assert (=> (and b!3231585 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 (t!241331 rules!2135)))))) (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241)))) t!241768) tb!160223))

(declare-fun result!202784 () Bool)

(assert (= result!202784 result!202394))

(assert (=> b!3228381 t!241768))

(assert (=> d!886484 t!241768))

(declare-fun t!241772 () Bool)

(declare-fun tb!160227 () Bool)

(assert (=> (and b!3231585 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 (t!241331 rules!2135)))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494))))) t!241772) tb!160227))

(declare-fun result!202788 () Bool)

(assert (= result!202788 result!202380))

(assert (=> b!3228240 t!241772))

(declare-fun t!241774 () Bool)

(declare-fun tb!160229 () Bool)

(assert (=> (and b!3231585 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 (t!241331 rules!2135)))))) (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 0))))) t!241774) tb!160229))

(declare-fun result!202790 () Bool)

(assert (= result!202790 result!202472))

(assert (=> d!886902 t!241774))

(assert (=> d!886502 t!241772))

(declare-fun tb!160233 () Bool)

(declare-fun t!241778 () Bool)

(assert (=> (and b!3231585 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 (t!241331 rules!2135)))))) (toChars!7233 (transformation!5266 (rule!7724 (_1!21033 (v!35826 lt!1095485)))))) t!241778) tb!160233))

(declare-fun result!202794 () Bool)

(assert (= result!202794 result!202690))

(assert (=> d!887962 t!241778))

(declare-fun t!241780 () Bool)

(declare-fun tb!160235 () Bool)

(assert (=> (and b!3231585 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 (t!241331 rules!2135)))))) (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095068 0))))) t!241780) tb!160235))

(declare-fun result!202796 () Bool)

(assert (= result!202796 result!202550))

(assert (=> d!887000 t!241780))

(declare-fun b_and!216533 () Bool)

(declare-fun tp!1018092 () Bool)

(assert (=> b!3231585 (= tp!1018092 (and (=> t!241768 result!202784) (=> t!241772 result!202788) (=> t!241750 result!202766) (=> t!241760 result!202776) (=> t!241746 result!202762) (=> t!241754 result!202770) (=> t!241774 result!202790) (=> t!241756 result!202772) (=> t!241748 result!202764) (=> t!241778 result!202794) (=> t!241764 result!202780) (=> t!241744 result!202760) (=> t!241780 result!202796) b_and!216533))))

(declare-fun e!2015348 () Bool)

(assert (=> b!3231585 (= e!2015348 (and tp!1018095 tp!1018092))))

(declare-fun b!3231584 () Bool)

(declare-fun e!2015345 () Bool)

(declare-fun tp!1018093 () Bool)

(assert (=> b!3231584 (= e!2015345 (and tp!1018093 (inv!49246 (tag!5798 (h!41782 (t!241331 (t!241331 (t!241331 rules!2135)))))) (inv!49249 (transformation!5266 (h!41782 (t!241331 (t!241331 (t!241331 rules!2135)))))) e!2015348))))

(declare-fun b!3231583 () Bool)

(declare-fun e!2015346 () Bool)

(declare-fun tp!1018094 () Bool)

(assert (=> b!3231583 (= e!2015346 (and e!2015345 tp!1018094))))

(assert (=> b!3229143 (= tp!1017484 e!2015346)))

(assert (= b!3231584 b!3231585))

(assert (= b!3231583 b!3231584))

(assert (= (and b!3229143 ((_ is Cons!36362) (t!241331 (t!241331 (t!241331 rules!2135))))) b!3231583))

(declare-fun m!3513421 () Bool)

(assert (=> b!3231584 m!3513421))

(declare-fun m!3513423 () Bool)

(assert (=> b!3231584 m!3513423))

(declare-fun b_lambda!89009 () Bool)

(assert (= b_lambda!88963 (or (and b!3228442 b_free!86151 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 rules!2135)))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494)))))))) (and b!3228087 b_free!86139 (= (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494)))))))) (and b!3228072 b_free!86135 (= (toChars!7233 (transformation!5266 (h!41782 rules!2135))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494)))))))) (and b!3231197 b_free!86175 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 (t!241332 tokens!494))))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494)))))))) (and b!3229130 b_free!86159) (and b!3231585 b_free!86179 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 (t!241331 rules!2135)))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494)))))))) (and b!3228460 b_free!86155 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494)))))))) (and b!3228076 b_free!86131 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494)))))))) (and b!3229145 b_free!86163 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 rules!2135))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494)))))))) b_lambda!89009)))

(declare-fun b_lambda!89011 () Bool)

(assert (= b_lambda!88917 (or (and b!3229130 b_free!86159 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494)))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))))) (and b!3229145 b_free!86163 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 rules!2135))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))))) (and b!3231197 b_free!86175 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 (t!241332 tokens!494))))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))))) (and b!3231585 b_free!86179 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 (t!241331 rules!2135)))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))))) b_lambda!89011)))

(declare-fun b_lambda!89013 () Bool)

(assert (= b_lambda!88945 (or (and b!3231197 b_free!86175 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 (t!241332 tokens!494))))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))) (and b!3228072 b_free!86135 (= (toChars!7233 (transformation!5266 (h!41782 rules!2135))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))) (and b!3228076 b_free!86131 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))) (and b!3229145 b_free!86163 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 rules!2135))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))) (and b!3228442 b_free!86151 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 rules!2135)))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))) (and b!3231585 b_free!86179 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 (t!241331 rules!2135)))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))) (and b!3229130 b_free!86159 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494)))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))) (and b!3228460 b_free!86155 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))) (and b!3228087 b_free!86139 (= (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (Cons!36363 (h!41783 tokens!494) Nil!36363))))))) b_lambda!89013)))

(declare-fun b_lambda!89015 () Bool)

(assert (= b_lambda!88971 (or b!3228078 b_lambda!89015)))

(declare-fun bs!543391 () Bool)

(declare-fun d!888266 () Bool)

(assert (= bs!543391 (and d!888266 b!3228078)))

(assert (=> bs!543391 (= (dynLambda!14795 lambda!118207 (h!41783 (t!241332 (t!241332 tokens!494)))) (not (isSeparator!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494)))))))))

(assert (=> b!3229735 d!888266))

(declare-fun b_lambda!89017 () Bool)

(assert (= b_lambda!89003 (or d!886422 b_lambda!89017)))

(declare-fun bs!543392 () Bool)

(declare-fun d!888268 () Bool)

(assert (= bs!543392 (and d!888268 d!886422)))

(assert (=> bs!543392 (= (dynLambda!14795 lambda!118217 (h!41783 (t!241332 (list!12978 lt!1095068)))) (rulesProduceIndividualToken!2347 thiss!18206 rules!2135 (h!41783 (t!241332 (list!12978 lt!1095068)))))))

(assert (=> bs!543392 m!3510301))

(assert (=> b!3231096 d!888268))

(declare-fun b_lambda!89019 () Bool)

(assert (= b_lambda!88943 (or (and b!3228087 b_free!86139 (= (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))) (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 0)))))) (and b!3228072 b_free!86135 (= (toChars!7233 (transformation!5266 (h!41782 rules!2135))) (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 0)))))) (and b!3231197 b_free!86175 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 (t!241332 tokens!494))))))) (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 0)))))) (and b!3231585 b_free!86179 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 (t!241331 rules!2135)))))) (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 0)))))) (and b!3229145 b_free!86163 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 rules!2135))))) (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 0)))))) (and b!3228460 b_free!86155 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 tokens!494))))) (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 0)))))) (and b!3229130 b_free!86159 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494)))))) (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 0)))))) (and b!3228442 b_free!86151 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 rules!2135)))) (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 0)))))) (and b!3228076 b_free!86131 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))) (toChars!7233 (transformation!5266 (rule!7724 (apply!8300 lt!1095069 0)))))) b_lambda!89019)))

(declare-fun b_lambda!89021 () Bool)

(assert (= b_lambda!88911 (or (and b!3229130 b_free!86159 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494)))))) (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))))) (and b!3229145 b_free!86163 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 rules!2135))))) (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))))) (and b!3231197 b_free!86175 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 (t!241332 tokens!494))))))) (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))))) (and b!3231585 b_free!86179 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 (t!241331 rules!2135)))))) (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))))) b_lambda!89021)))

(declare-fun b_lambda!89023 () Bool)

(assert (= b_lambda!88977 (or d!886596 b_lambda!89023)))

(declare-fun bs!543393 () Bool)

(declare-fun d!888270 () Bool)

(assert (= bs!543393 (and d!888270 d!886596)))

(assert (=> bs!543393 (= (dynLambda!14795 lambda!118233 (h!41783 (list!12978 lt!1095068))) (rulesProduceIndividualToken!2347 thiss!18206 rules!2135 (h!41783 (list!12978 lt!1095068))))))

(assert (=> bs!543393 m!3507985))

(assert (=> b!3229988 d!888270))

(declare-fun b_lambda!89025 () Bool)

(assert (= b_lambda!88919 (or (and b!3229130 b_free!86159 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494)))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))))) (and b!3229145 b_free!86163 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 rules!2135))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))))) (and b!3231197 b_free!86175 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 (t!241332 tokens!494))))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))))) (and b!3231585 b_free!86179 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 (t!241331 rules!2135)))))) (toChars!7233 (transformation!5266 (rule!7724 (h!41783 tokens!494)))))) b_lambda!89025)))

(declare-fun b_lambda!89027 () Bool)

(assert (= b_lambda!88921 (or (and b!3229130 b_free!86159 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 tokens!494)))))) (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))))) (and b!3229145 b_free!86163 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 rules!2135))))) (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))))) (and b!3231197 b_free!86175 (= (toChars!7233 (transformation!5266 (rule!7724 (h!41783 (t!241332 (t!241332 (t!241332 tokens!494))))))) (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))))) (and b!3231585 b_free!86179 (= (toChars!7233 (transformation!5266 (h!41782 (t!241331 (t!241331 (t!241331 rules!2135)))))) (toChars!7233 (transformation!5266 (rule!7724 separatorToken!241))))) b_lambda!89027)))

(declare-fun b_lambda!89029 () Bool)

(assert (= b_lambda!89005 (or d!886886 b_lambda!89029)))

(declare-fun bs!543394 () Bool)

(declare-fun d!888272 () Bool)

(assert (= bs!543394 (and d!888272 d!886886)))

(assert (=> bs!543394 (= (dynLambda!14803 lambda!118248 (h!41782 rules!2135)) (ruleValid!1656 thiss!18206 (h!41782 rules!2135)))))

(assert (=> bs!543394 m!3513231))

(assert (=> b!3231134 d!888272))

(check-sat (not b!3229643) (not b!3229662) (not b!3231555) (not b!3229290) (not b!3229522) (not b!3229350) (not b!3229736) (not b!3231357) (not b!3228977) (not b!3230793) (not d!887276) (not b!3229977) (not b!3230790) (not b!3231231) (not d!888060) (not b!3230212) (not b!3229677) (not d!887060) (not b!3231484) (not b!3231425) (not b!3231324) (not d!887564) (not d!888244) (not b!3231333) (not b!3231219) (not b!3231214) (not d!887110) (not b!3231281) (not b!3230222) (not b!3229954) (not b_lambda!89015) (not b!3230850) (not tb!160129) (not b!3231378) (not b!3229953) (not tb!160017) (not b!3231474) (not b!3231572) (not d!888162) (not b!3229970) (not b!3230548) (not b!3230509) (not d!887940) (not b!3229277) (not b!3229980) (not b_lambda!89019) (not d!888008) (not b!3231583) (not b!3229650) (not d!888030) (not d!887226) (not d!888176) (not b!3231367) (not b!3230211) (not b!3230890) (not b!3231246) (not d!887124) (not d!887142) (not b!3231502) (not b!3231270) (not b!3231181) b_and!216527 (not d!887040) (not b!3231499) (not b!3231152) (not b!3231448) (not b!3229875) (not d!888156) (not d!888038) (not b!3230498) (not b!3231532) (not b!3231067) (not b!3229625) (not d!887240) (not b!3229510) (not d!887560) (not d!887042) (not b!3231475) (not b!3231257) (not b_next!86879) (not b!3231383) (not d!888070) (not b!3231330) (not b!3231223) b_and!216529 (not b!3231316) (not b!3229307) (not b!3230547) (not b!3230209) (not b!3229306) (not b!3230828) (not b!3230846) (not b!3231449) (not b!3229738) (not b!3230956) (not b!3229268) (not d!887506) b_and!216519 (not b!3230090) (not b!3229281) (not b!3231276) (not b!3231286) (not b!3231211) (not b_lambda!89001) (not d!888018) (not b!3231233) (not b!3229975) (not b_lambda!88997) (not d!887850) (not b!3231140) (not b!3231304) (not b!3229743) (not b!3230731) b_and!216179 (not b!3229323) (not b!3231238) (not b!3231191) (not b!3231179) (not b!3230095) (not b!3231511) (not d!887144) (not b!3229488) (not b!3230185) (not b!3229550) (not b!3231545) (not b!3231345) (not b!3230079) (not d!887846) (not b!3231472) (not b_next!86839) (not b!3229500) (not b!3231187) (not b!3229330) (not d!887268) (not b!3229974) (not b_next!86861) (not bs!543393) (not b!3229922) b_and!216187 (not b!3230998) (not b!3231298) (not b!3231194) (not b!3231514) (not b_lambda!89027) (not b!3230220) (not bm!233316) (not b!3231188) (not b!3231167) (not d!888238) (not b!3231250) (not b!3231284) (not bm!233325) (not b!3231262) (not b!3230763) (not b!3230855) (not d!887440) (not b!3230027) (not b!3230609) (not b!3231280) (not d!888078) (not b!3230434) (not b!3231512) (not bm!233224) (not b!3230876) (not d!888046) (not d!887784) (not b!3231129) (not d!887248) (not b!3229811) (not b!3230923) (not b!3231261) (not b!3230751) (not b!3229955) (not b!3231002) (not b!3230619) (not b_lambda!88915) (not b!3231036) (not d!888214) (not b!3230225) (not b!3229284) (not b!3231061) (not b!3231551) (not b!3230776) (not b!3230912) (not b!3231166) (not b!3230567) (not b!3230969) (not b!3231308) (not b!3229551) (not d!888246) (not d!887826) (not d!887214) (not b!3229734) (not b!3229981) (not b!3231363) (not d!887004) (not b_lambda!89029) (not b!3230503) (not b!3230893) (not b!3230829) (not b!3230775) (not b!3230975) (not d!887566) (not b!3229679) (not b!3229744) (not b!3231264) (not b!3230734) (not b!3231278) (not bm!233276) (not b!3231365) (not b_next!86833) (not b!3230033) (not b!3231503) (not b!3231189) (not b!3230611) (not d!887146) (not d!887366) (not b!3229739) (not b!3231312) (not b!3231389) (not b!3231568) (not b!3230628) (not b!3229825) (not b!3231557) (not b!3231205) (not d!888036) (not d!888058) (not d!888240) (not b!3231398) (not d!887024) (not b!3231272) (not d!888232) (not b!3229332) (not b!3230613) (not d!887482) (not b!3229972) (not d!887322) (not b!3230160) (not b!3230988) (not b!3230196) (not b!3231326) (not d!888184) (not b!3231210) (not bm!233355) (not b!3231433) (not tb!160157) (not b!3231136) (not b!3230749) (not b!3231300) (not b!3229763) (not b!3230493) (not b!3231483) (not b!3230877) (not d!888208) (not b!3231143) (not b!3229305) (not b!3231554) (not b!3230872) b_and!216533 (not b!3230469) (not b!3230780) (not d!887372) (not b!3229090) (not b!3231416) (not b!3230576) (not b!3231320) (not b!3231176) (not b!3231371) (not b!3229374) (not b!3230470) (not d!887038) (not b!3230792) (not b!3230217) (not b!3231476) (not b!3231321) (not b!3231310) (not d!887502) (not b!3229698) (not b_next!86843) (not b!3229967) (not b!3231361) (not b!3229532) (not b!3231217) (not d!887598) (not b!3231070) b_and!216523 (not b!3231177) (not b!3229344) (not b!3229561) (not b!3230215) (not b!3231494) (not d!887816) (not b!3230561) (not b!3230773) (not b_lambda!88953) (not b!3229318) (not d!887418) (not b!3231296) (not b!3230870) (not b!3229521) (not b!3229490) (not b_next!86837) (not bm!233218) (not b!3231221) (not b_next!86857) (not b!3231491) (not b!3229647) (not b!3230761) (not b!3231507) (not b!3229672) (not d!887216) (not b!3230488) (not d!887316) (not b!3231510) (not b!3231237) (not d!887432) (not b!3231467) (not b!3230433) (not bm!233217) (not b!3229289) (not tb!159989) (not d!887854) (not b!3230897) (not b!3231245) (not d!887530) (not b!3231185) (not b!3228834) (not d!887584) (not d!887808) (not b!3230000) (not b!3231318) (not b!3229038) (not b!3230732) (not d!888012) (not d!887416) (not b_next!86867) (not b!3231282) (not b!3231372) (not bm!233336) (not b!3230550) (not b!3231038) (not b!3229453) (not b!3231322) (not b!3231550) (not b!3230594) (not b!3230468) b_and!216521 (not d!887818) (not b!3231232) (not b!3231031) (not b!3231213) (not b!3231138) (not d!887134) (not d!888002) (not d!887852) (not b!3230587) (not b!3230549) (not b!3231508) (not b!3231332) (not b!3231173) (not b!3231462) (not b!3231441) (not b!3229989) (not b!3231222) (not b!3230881) (not b!3231431) (not b!3230557) (not b!3229531) (not b!3231382) (not b!3229978) (not b!3230948) (not b!3231285) (not d!887720) (not b!3230873) (not b!3230565) (not b!3230009) (not b!3231196) (not d!888040) (not b!3231334) (not b!3230954) (not b!3231352) (not b!3231289) (not d!887970) (not b!3231273) (not b!3230431) (not tb!159975) (not b!3229308) (not b!3230081) (not d!887574) (not b!3231423) (not b!3231198) (not b!3231234) (not b!3230181) (not d!887334) (not b!3231135) (not b!3229352) (not b!3230435) (not b!3229540) (not b!3229696) (not b!3230502) (not b!3231506) (not b!3229899) (not d!888216) (not b!3231559) (not b!3230164) (not d!887858) (not d!887580) (not d!887748) (not b!3230748) (not d!887162) (not b_lambda!89013) (not b!3231432) (not b!3230621) (not b!3231396) (not b!3230203) (not b!3230589) (not b!3231405) (not b!3231549) (not b!3231397) (not b!3231575) (not b!3230968) (not d!888148) (not b!3230759) (not d!887536) (not b!3229963) (not b!3229746) (not b!3231075) (not b!3230035) (not d!887280) (not d!888236) (not b!3231471) (not bs!543394) (not d!887020) (not d!887510) (not d!887358) (not b!3231547) (not b!3229762) (not b!3229971) (not d!888212) (not b!3231175) (not d!887528) b_and!216319 (not b!3230901) (not b!3230499) (not b!3230186) (not b!3229812) b_and!216531 (not b!3231355) (not d!887156) (not b!3229646) (not b!3229923) (not b!3230563) (not b!3231112) (not d!888026) (not b!3230228) (not d!887498) (not b!3231078) (not b!3229651) (not b!3229809) (not b!3231180) (not b!3231203) (not d!887438) (not b!3231252) (not b!3231576) (not b!3231248) (not b!3231241) (not b!3231025) (not b!3229626) (not b!3231086) (not b!3231500) (not b!3231004) (not d!887272) (not b_next!86835) (not b!3230888) (not b!3230524) (not b_next!86865) (not b!3231139) (not b!3231253) (not b!3230471) (not b!3230612) (not b!3229956) (not b!3231582) (not b!3231199) (not b!3229512) (not d!887008) (not b!3229897) (not d!887242) (not b!3230210) (not bm!233215) (not bm!233338) (not b!3230863) (not b!3229456) (not b!3230184) (not b!3231227) (not b!3231492) (not b!3230195) (not b!3231202) (not b!3231536) (not b!3229929) (not d!887032) (not b!3229995) (not b!3230191) (not b!3230213) (not b!3229487) (not b!3229292) (not b!3231561) (not b!3230624) (not b!3231340) (not bm!233349) b_and!216525 (not b!3230174) (not b!3231466) (not b!3231353) (not b!3230741) (not b!3230735) (not bm!233328) (not d!887596) (not b!3230887) (not b!3230520) (not b!3229624) (not b!3230092) (not b!3231454) (not b!3231141) (not b!3229310) (not d!888234) (not b!3230500) (not d!887478) (not b!3231373) (not b!3230559) (not b!3231406) (not b!3229501) (not b!3231529) (not d!887456) (not d!887266) (not b!3231249) (not b!3230906) (not b!3231377) (not b!3230094) (not d!887862) (not b!3229509) (not b_next!86859) (not b!3229699) (not b!3229313) (not b!3230573) (not b!3230930) (not d!887414) (not b!3229321) (not b!3229322) (not b!3231306) (not b!3229300) (not d!888116) (not b!3230859) (not b!3230995) (not d!887446) (not b!3230590) (not b!3230583) (not b!3229295) (not b!3229640) (not b!3231513) (not b!3231230) (not d!887116) (not b!3229078) (not d!887270) (not b!3229457) (not b!3229319) (not b!3231584) (not b!3231297) (not b!3230461) (not b!3231562) (not b!3230432) b_and!216183 (not b!3229984) (not b!3231452) (not b!3230900) (not b!3231356) (not d!887012) (not d!887212) (not d!887794) (not b!3230596) (not b!3229725) (not b!3231368) (not b!3231488) (not b!3229675) (not d!887958) (not b!3231537) (not b!3231128) (not b!3231236) (not b!3231533) (not b!3230921) (not b!3231110) (not b!3230623) (not b!3230595) (not b!3231007) (not bm!233327) (not b!3231265) (not b!3230001) (not b!3230086) (not d!887056) (not b!3229548) (not b!3231338) (not d!887966) (not b!3231351) (not bm!233275) (not b!3231534) (not b!3229320) (not b!3231400) (not b_lambda!88949) b_and!216247 b_and!216315 (not d!887328) (not b_next!86863) (not b!3229538) (not b!3231429) (not d!887744) (not b_lambda!88913) (not b!3229676) (not b!3231309) (not b!3229729) (not b!3229276) (not d!887058) (not b_lambda!88969) (not b!3230572) (not b!3231146) (not b!3229664) (not b!3231523) (not d!888188) (not d!887210) (not d!887132) (not d!887034) (not b!3229994) (not b!3231001) (not d!886990) (not d!887344) (not d!887444) (not b!3230932) (not d!887916) (not d!887726) (not b!3231030) (not b!3230223) (not b!3229348) (not d!887000) (not b_next!86883) (not b!3231022) (not b!3231428) (not b!3230758) (not b!3230553) (not d!887856) (not b!3229700) (not b!3229964) (not b!3230473) (not b!3229506) (not b!3231369) (not b!3231364) (not b_next!86877) (not b!3229722) (not b!3231437) (not b!3230898) (not d!887824) (not b!3230523) (not d!887006) (not b!3230465) (not b!3231487) (not bm!233313) (not d!887036) (not b!3229452) (not b!3229505) (not b!3230221) (not b!3231274) (not b!3230730) (not b!3231225) (not b!3230472) (not b!3229297) (not b!3230182) (not d!888166) (not b!3231269) (not d!888242) (not d!886994) (not b!3231325) (not b!3231305) (not b!3231349) (not b!3231495) (not bm!233353) (not d!887022) (not bm!233216) (not b!3230183) (not b!3231192) (not b!3231392) (not b!3230617) (not b!3231546) (not b!3231350) (not b!3231543) (not b!3230874) tp_is_empty!17329 (not b!3231498) (not bm!233347) (not b!3231376) (not b!3230947) (not b!3231390) (not b!3231169) (not b!3229641) (not b!3229623) (not b!3230198) (not b!3229733) (not d!887262) (not b!3230188) (not d!887484) (not b!3231422) (not b!3230750) (not d!887258) (not b_lambda!89011) (not b!3230894) (not b!3230555) (not b!3231573) (not b!3231418) (not b!3231240) (not b!3231097) (not b!3230629) (not b!3229892) (not b!3231509) (not d!887296) (not d!887218) (not d!888230) (not b!3230854) (not b!3231463) (not b!3231528) (not b!3229629) (not d!887224) (not b!3231468) (not b!3231563) (not d!887140) (not d!887236) (not d!887428) (not d!887930) (not d!887136) (not b!3231560) (not b!3231171) (not b!3229724) (not b!3230736) (not d!888028) (not b!3230577) (not b!3231558) (not b!3231401) (not b!3230880) (not b!3231439) (not b!3231459) (not b!3230546) (not b!3229889) (not b!3230229) (not b!3231519) (not b!3231183) (not b!3231384) (not b!3230747) (not b!3231337) (not b!3229985) (not d!887392) (not b!3231209) (not b!3230779) (not b!3231301) (not d!887806) (not bm!233319) (not b!3231229) (not d!888132) (not d!888050) (not b!3230163) (not b!3231342) (not b!3231571) (not b!3229475) (not b!3231445) (not b!3229356) (not b!3229278) (not d!888122) (not b!3231486) (not bm!233352) (not b!3229627) (not b_lambda!89017) (not d!887828) (not d!887256) (not b!3231440) (not b!3231254) (not d!887264) (not b!3231458) (not b!3229868) (not b_lambda!89009) (not b!3231417) (not d!887244) (not b!3230490) (not b!3231032) (not d!888160) (not b_next!86881) (not b!3230514) (not b_lambda!89021) (not b!3230466) (not b!3231538) (not d!887274) (not b!3230554) (not b!3230515) (not b!3230916) b_and!216513 (not b!3230436) (not b!3230774) (not bm!233322) (not b!3231581) (not b!3229653) (not b!3231313) (not b!3229741) (not b!3229845) (not d!887740) (not b!3230762) (not b!3231034) (not b!3231336) (not b_lambda!88965) (not b!3231540) (not b!3230568) (not b!3231478) (not b!3229730) (not b!3230598) (not d!888090) (not b!3231341) (not b!3231317) (not b!3230847) (not b!3229968) (not b!3231424) (not b!3230214) (not b!3229622) (not b!3231266) (not b!3230911) (not b!3231460) (not d!887724) (not b!3229557) (not b!3231294) (not b!3230034) (not b!3230620) (not b!3231201) (not d!887426) (not d!886996) b_and!216251 (not b!3231359) (not b!3230878) (not b!3230091) (not b!3230476) (not b!3229885) (not d!888186) (not b!3229920) (not b!3231137) (not b!3231427) (not d!887354) (not b!3231277) (not d!887010) (not b!3229554) (not tb!160059) (not b!3229658) (not d!887836) (not b_lambda!88973) (not b!3231453) (not b!3229925) (not b!3229375) (not b!3229630) (not b!3231256) (not b!3231480) (not b_lambda!89025) (not b!3229824) (not d!887962) (not b!3230544) (not b!3230989) (not b!3229982) (not b!3231443) (not b!3229671) (not b_lambda!88951) (not b!3230088) (not tb!160003) (not b!3230556) (not b!3229373) (not b!3231553) (not b!3231328) (not b!3231207) (not d!887228) (not b!3230999) (not b!3230036) (not b!3231218) (not b!3230012) (not b!3230085) (not b!3230908) (not b!3231436) (not b!3231206) (not b!3230608) (not b!3229537) (not b!3231168) (not b!3230224) (not d!887128) (not b!3230552) (not b!3229455) (not bm!233350) (not b!3230729) (not b!3230170) (not b!3229760) (not b!3230875) (not d!888150) (not b!3231268) (not d!887788) (not d!887442) (not d!887860) (not b!3230506) (not b!3229898) (not b!3229293) (not tb!160031) (not b!3231193) (not b!3229477) (not b!3231080) (not b!3231577) (not bm!233214) (not d!887370) (not b!3229874) (not bm!233315) (not d!887864) (not b!3231260) (not b!3231288) (not b!3229355) (not b!3229660) (not b!3229983) (not b!3231451) (not b!3231360) (not b!3230858) (not d!888032) (not d!888042) (not b!3231226) (not bs!543392) (not b!3230586) (not b!3229294) (not d!887524) (not d!887160) (not b!3230510) (not b!3231504) (not b!3230869) (not b!3231479) (not b!3231290) (not b!3231496) (not b!3231348) (not b!3231569) (not b!3230192) (not d!887562) (not b_next!86853) (not d!887470) (not b!3230614) (not b!3230582) (not b!3230501) (not b!3230200) (not b!3229888) (not b!3230778) (not b!3231077) (not b!3231184) b_and!216515 (not d!888098) (not b!3231244) (not b!3230093) (not b!3229271) (not d!887112) (not b!3231344) (not b!3231490) (not d!887754) (not b!3231521) (not b_lambda!89023) (not d!887016) (not b!3230883) (not b!3230626) (not b!3230895) (not d!887222) (not b!3231195) (not b!3231314) (not b!3231292) (not b!3231346) (not b!3231399) (not b!3229761) (not b!3231530) (not b!3229336) (not b!3231470) (not b!3231242) (not b!3230978) (not b!3231393) (not b!3230180) (not d!888138) (not b_next!86855) (not b!3231258) (not d!887848) (not b!3230437) (not b!3230905) (not b!3231375) (not b!3231155) (not b_lambda!88979) (not b!3231447) (not b!3231388) (not b!3231404) (not b!3229560) (not b!3231444) (not b!3229558) (not d!887922) (not b!3231567) (not b!3229324) (not bm!233358) (not d!886998) (not b!3230047) (not b!3230519) (not bm!233324) (not b!3231482) (not b!3231394) (not d!888034) (not d!887840) (not d!887750) (not b!3231578) (not b!3229279) (not b!3230760) (not b!3231095) (not b!3230920) (not d!887108) (not d!887834) (not b!3229957) (not b!3229666) (not b!3229555) (not b!3229564) (not d!888248) (not d!887174) (not b!3231329) (not b!3229737) (not d!887014) (not d!887282) (not b!3229351) (not d!887474) b_and!216517 (not b!3230740) (not b!3229667) (not b!3229534) (not b!3231580) (not b!3229808) (not b!3229491) (not b!3229987) (not d!887434) (not b!3231541) (not d!887062) (not b!3230851) (not b!3231464) (not b!3229493) (not b!3229454) (not b!3231093) (not b!3230996) (not b!3230918) (not b!3231145) (not b_lambda!88947) (not d!887364) (not b!3230924) (not b!3231302) (not b!3230512) (not b!3231079) (not d!887138) (not b!3229958) (not d!887100) (not b!3231215) (not b!3231542) (not b!3230752) (not b!3231293) (not d!887944) (not b_next!86841) (not d!887154) (not b!3231435) (not b_lambda!88967))
(check-sat (not b_next!86833) b_and!216533 b_and!216521 b_and!216525 (not b_next!86859) b_and!216183 (not b_next!86883) (not b_next!86877) b_and!216251 (not b_next!86855) b_and!216517 (not b_next!86841) b_and!216527 (not b_next!86879) b_and!216529 b_and!216179 b_and!216519 (not b_next!86839) (not b_next!86861) b_and!216187 (not b_next!86843) b_and!216523 (not b_next!86837) (not b_next!86857) (not b_next!86867) b_and!216531 b_and!216319 (not b_next!86835) (not b_next!86865) b_and!216247 b_and!216315 (not b_next!86863) b_and!216513 (not b_next!86881) b_and!216515 (not b_next!86853))
