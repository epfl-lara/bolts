; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!310474 () Bool)

(assert start!310474)

(declare-fun b!3326507 () Bool)

(declare-fun b_free!87505 () Bool)

(declare-fun b_next!88209 () Bool)

(assert (=> b!3326507 (= b_free!87505 (not b_next!88209))))

(declare-fun tp!1039645 () Bool)

(declare-fun b_and!229191 () Bool)

(assert (=> b!3326507 (= tp!1039645 b_and!229191)))

(declare-fun b_free!87507 () Bool)

(declare-fun b_next!88211 () Bool)

(assert (=> b!3326507 (= b_free!87507 (not b_next!88211))))

(declare-fun tp!1039647 () Bool)

(declare-fun b_and!229193 () Bool)

(assert (=> b!3326507 (= tp!1039647 b_and!229193)))

(declare-fun b!3326498 () Bool)

(declare-fun b_free!87509 () Bool)

(declare-fun b_next!88213 () Bool)

(assert (=> b!3326498 (= b_free!87509 (not b_next!88213))))

(declare-fun tp!1039644 () Bool)

(declare-fun b_and!229195 () Bool)

(assert (=> b!3326498 (= tp!1039644 b_and!229195)))

(declare-fun b_free!87511 () Bool)

(declare-fun b_next!88215 () Bool)

(assert (=> b!3326498 (= b_free!87511 (not b_next!88215))))

(declare-fun tp!1039653 () Bool)

(declare-fun b_and!229197 () Bool)

(assert (=> b!3326498 (= tp!1039653 b_and!229197)))

(declare-fun b!3326506 () Bool)

(declare-fun b_free!87513 () Bool)

(declare-fun b_next!88217 () Bool)

(assert (=> b!3326506 (= b_free!87513 (not b_next!88217))))

(declare-fun tp!1039651 () Bool)

(declare-fun b_and!229199 () Bool)

(assert (=> b!3326506 (= tp!1039651 b_and!229199)))

(declare-fun b_free!87515 () Bool)

(declare-fun b_next!88219 () Bool)

(assert (=> b!3326506 (= b_free!87515 (not b_next!88219))))

(declare-fun tp!1039643 () Bool)

(declare-fun b_and!229201 () Bool)

(assert (=> b!3326506 (= tp!1039643 b_and!229201)))

(declare-fun e!2068550 () Bool)

(declare-datatypes ((C!20356 0))(
  ( (C!20357 (val!12226 Int)) )
))
(declare-datatypes ((Regex!10085 0))(
  ( (ElementMatch!10085 (c!564998 C!20356)) (Concat!15641 (regOne!20682 Regex!10085) (regTwo!20682 Regex!10085)) (EmptyExpr!10085) (Star!10085 (reg!10414 Regex!10085)) (EmptyLang!10085) (Union!10085 (regOne!20683 Regex!10085) (regTwo!20683 Regex!10085)) )
))
(declare-datatypes ((List!36764 0))(
  ( (Nil!36640) (Cons!36640 (h!42060 (_ BitVec 16)) (t!256661 List!36764)) )
))
(declare-datatypes ((TokenValue!5556 0))(
  ( (FloatLiteralValue!11112 (text!39337 List!36764)) (TokenValueExt!5555 (__x!23329 Int)) (Broken!27780 (value!172225 List!36764)) (Object!5679) (End!5556) (Def!5556) (Underscore!5556) (Match!5556) (Else!5556) (Error!5556) (Case!5556) (If!5556) (Extends!5556) (Abstract!5556) (Class!5556) (Val!5556) (DelimiterValue!11112 (del!5616 List!36764)) (KeywordValue!5562 (value!172226 List!36764)) (CommentValue!11112 (value!172227 List!36764)) (WhitespaceValue!11112 (value!172228 List!36764)) (IndentationValue!5556 (value!172229 List!36764)) (String!41113) (Int32!5556) (Broken!27781 (value!172230 List!36764)) (Boolean!5557) (Unit!51659) (OperatorValue!5559 (op!5616 List!36764)) (IdentifierValue!11112 (value!172231 List!36764)) (IdentifierValue!11113 (value!172232 List!36764)) (WhitespaceValue!11113 (value!172233 List!36764)) (True!11112) (False!11112) (Broken!27782 (value!172234 List!36764)) (Broken!27783 (value!172235 List!36764)) (True!11113) (RightBrace!5556) (RightBracket!5556) (Colon!5556) (Null!5556) (Comma!5556) (LeftBracket!5556) (False!11113) (LeftBrace!5556) (ImaginaryLiteralValue!5556 (text!39338 List!36764)) (StringLiteralValue!16668 (value!172236 List!36764)) (EOFValue!5556 (value!172237 List!36764)) (IdentValue!5556 (value!172238 List!36764)) (DelimiterValue!11113 (value!172239 List!36764)) (DedentValue!5556 (value!172240 List!36764)) (NewLineValue!5556 (value!172241 List!36764)) (IntegerValue!16668 (value!172242 (_ BitVec 32)) (text!39339 List!36764)) (IntegerValue!16669 (value!172243 Int) (text!39340 List!36764)) (Times!5556) (Or!5556) (Equal!5556) (Minus!5556) (Broken!27784 (value!172244 List!36764)) (And!5556) (Div!5556) (LessEqual!5556) (Mod!5556) (Concat!15642) (Not!5556) (Plus!5556) (SpaceValue!5556 (value!172245 List!36764)) (IntegerValue!16670 (value!172246 Int) (text!39341 List!36764)) (StringLiteralValue!16669 (text!39342 List!36764)) (FloatLiteralValue!11113 (text!39343 List!36764)) (BytesLiteralValue!5556 (value!172247 List!36764)) (CommentValue!11113 (value!172248 List!36764)) (StringLiteralValue!16670 (value!172249 List!36764)) (ErrorTokenValue!5556 (msg!5617 List!36764)) )
))
(declare-datatypes ((List!36765 0))(
  ( (Nil!36641) (Cons!36641 (h!42061 C!20356) (t!256662 List!36765)) )
))
(declare-datatypes ((IArray!22059 0))(
  ( (IArray!22060 (innerList!11087 List!36765)) )
))
(declare-datatypes ((Conc!11027 0))(
  ( (Node!11027 (left!28556 Conc!11027) (right!28886 Conc!11027) (csize!22284 Int) (cheight!11238 Int)) (Leaf!17301 (xs!14165 IArray!22059) (csize!22285 Int)) (Empty!11027) )
))
(declare-datatypes ((BalanceConc!21668 0))(
  ( (BalanceConc!21669 (c!564999 Conc!11027)) )
))
(declare-datatypes ((String!41114 0))(
  ( (String!41115 (value!172250 String)) )
))
(declare-datatypes ((TokenValueInjection!10540 0))(
  ( (TokenValueInjection!10541 (toValue!7486 Int) (toChars!7345 Int)) )
))
(declare-datatypes ((Rule!10452 0))(
  ( (Rule!10453 (regex!5326 Regex!10085) (tag!5878 String!41114) (isSeparator!5326 Bool) (transformation!5326 TokenValueInjection!10540)) )
))
(declare-datatypes ((Token!10018 0))(
  ( (Token!10019 (value!172251 TokenValue!5556) (rule!7848 Rule!10452) (size!27699 Int) (originalCharacters!6040 List!36765)) )
))
(declare-fun separatorToken!241 () Token!10018)

(declare-fun e!2068557 () Bool)

(declare-fun tp!1039648 () Bool)

(declare-fun b!3326484 () Bool)

(declare-fun inv!49640 (String!41114) Bool)

(declare-fun inv!49643 (TokenValueInjection!10540) Bool)

(assert (=> b!3326484 (= e!2068557 (and tp!1039648 (inv!49640 (tag!5878 (rule!7848 separatorToken!241))) (inv!49643 (transformation!5326 (rule!7848 separatorToken!241))) e!2068550))))

(declare-fun b!3326485 () Bool)

(declare-fun res!1349138 () Bool)

(declare-fun e!2068542 () Bool)

(assert (=> b!3326485 (=> (not res!1349138) (not e!2068542))))

(declare-datatypes ((LexerInterface!4915 0))(
  ( (LexerInterfaceExt!4912 (__x!23330 Int)) (Lexer!4913) )
))
(declare-fun thiss!18206 () LexerInterface!4915)

(declare-datatypes ((List!36766 0))(
  ( (Nil!36642) (Cons!36642 (h!42062 Rule!10452) (t!256663 List!36766)) )
))
(declare-fun rules!2135 () List!36766)

(declare-fun rulesProduceIndividualToken!2407 (LexerInterface!4915 List!36766 Token!10018) Bool)

(assert (=> b!3326485 (= res!1349138 (rulesProduceIndividualToken!2407 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3326486 () Bool)

(declare-fun e!2068552 () Bool)

(declare-fun e!2068556 () Bool)

(declare-fun tp!1039652 () Bool)

(assert (=> b!3326486 (= e!2068552 (and e!2068556 tp!1039652))))

(declare-fun b!3326487 () Bool)

(declare-fun res!1349141 () Bool)

(assert (=> b!3326487 (=> (not res!1349141) (not e!2068542))))

(declare-datatypes ((List!36767 0))(
  ( (Nil!36643) (Cons!36643 (h!42063 Token!10018) (t!256664 List!36767)) )
))
(declare-fun tokens!494 () List!36767)

(get-info :version)

(assert (=> b!3326487 (= res!1349141 (and (not ((_ is Nil!36643) tokens!494)) ((_ is Nil!36643) (t!256664 tokens!494))))))

(declare-fun b!3326488 () Bool)

(declare-fun res!1349131 () Bool)

(declare-fun e!2068543 () Bool)

(assert (=> b!3326488 (=> res!1349131 e!2068543)))

(declare-fun lt!1130334 () List!36765)

(declare-datatypes ((IArray!22061 0))(
  ( (IArray!22062 (innerList!11088 List!36767)) )
))
(declare-datatypes ((Conc!11028 0))(
  ( (Node!11028 (left!28557 Conc!11028) (right!28887 Conc!11028) (csize!22286 Int) (cheight!11239 Int)) (Leaf!17302 (xs!14166 IArray!22061) (csize!22287 Int)) (Empty!11028) )
))
(declare-datatypes ((BalanceConc!21670 0))(
  ( (BalanceConc!21671 (c!565000 Conc!11028)) )
))
(declare-fun lt!1130331 () BalanceConc!21670)

(declare-fun list!13189 (BalanceConc!21668) List!36765)

(declare-fun printWithSeparatorToken!106 (LexerInterface!4915 BalanceConc!21670 Token!10018) BalanceConc!21668)

(declare-fun ++!8901 (List!36765 List!36765) List!36765)

(declare-fun charsOf!3340 (Token!10018) BalanceConc!21668)

(assert (=> b!3326488 (= res!1349131 (not (= (list!13189 (printWithSeparatorToken!106 thiss!18206 lt!1130331 separatorToken!241)) (++!8901 lt!1130334 (list!13189 (charsOf!3340 separatorToken!241))))))))

(declare-fun b!3326489 () Bool)

(declare-fun res!1349129 () Bool)

(assert (=> b!3326489 (=> (not res!1349129) (not e!2068542))))

(declare-fun sepAndNonSepRulesDisjointChars!1520 (List!36766 List!36766) Bool)

(assert (=> b!3326489 (= res!1349129 (sepAndNonSepRulesDisjointChars!1520 rules!2135 rules!2135))))

(declare-fun e!2068545 () Bool)

(declare-fun b!3326490 () Bool)

(declare-fun tp!1039649 () Bool)

(declare-fun e!2068546 () Bool)

(assert (=> b!3326490 (= e!2068545 (and tp!1039649 (inv!49640 (tag!5878 (rule!7848 (h!42063 tokens!494)))) (inv!49643 (transformation!5326 (rule!7848 (h!42063 tokens!494)))) e!2068546))))

(declare-fun b!3326491 () Bool)

(declare-fun res!1349137 () Bool)

(assert (=> b!3326491 (=> (not res!1349137) (not e!2068542))))

(assert (=> b!3326491 (= res!1349137 (isSeparator!5326 (rule!7848 separatorToken!241)))))

(declare-fun b!3326492 () Bool)

(declare-fun res!1349135 () Bool)

(declare-fun e!2068554 () Bool)

(assert (=> b!3326492 (=> (not res!1349135) (not e!2068554))))

(declare-fun isEmpty!20801 (List!36766) Bool)

(assert (=> b!3326492 (= res!1349135 (not (isEmpty!20801 rules!2135)))))

(declare-fun b!3326493 () Bool)

(assert (=> b!3326493 (= e!2068543 true)))

(declare-fun isEmpty!20802 (List!36765) Bool)

(declare-fun getSuffix!1420 (List!36765 List!36765) List!36765)

(assert (=> b!3326493 (isEmpty!20802 (getSuffix!1420 lt!1130334 lt!1130334))))

(declare-datatypes ((Unit!51660 0))(
  ( (Unit!51661) )
))
(declare-fun lt!1130332 () Unit!51660)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!78 (List!36765) Unit!51660)

(assert (=> b!3326493 (= lt!1130332 (lemmaGetSuffixOnListWithItSelfIsEmpty!78 lt!1130334))))

(declare-fun b!3326494 () Bool)

(declare-fun e!2068558 () Bool)

(declare-fun tp!1039654 () Bool)

(declare-fun e!2068559 () Bool)

(declare-fun inv!49644 (Token!10018) Bool)

(assert (=> b!3326494 (= e!2068559 (and (inv!49644 (h!42063 tokens!494)) e!2068558 tp!1039654))))

(declare-fun b!3326495 () Bool)

(declare-fun res!1349136 () Bool)

(declare-fun e!2068551 () Bool)

(assert (=> b!3326495 (=> res!1349136 e!2068551)))

(declare-fun isEmpty!20803 (BalanceConc!21670) Bool)

(declare-datatypes ((tuple2!36146 0))(
  ( (tuple2!36147 (_1!21207 BalanceConc!21670) (_2!21207 BalanceConc!21668)) )
))
(declare-fun lex!2241 (LexerInterface!4915 List!36766 BalanceConc!21668) tuple2!36146)

(declare-fun seqFromList!3705 (List!36765) BalanceConc!21668)

(assert (=> b!3326495 (= res!1349136 (isEmpty!20803 (_1!21207 (lex!2241 thiss!18206 rules!2135 (seqFromList!3705 lt!1130334)))))))

(declare-fun b!3326496 () Bool)

(assert (=> b!3326496 (= e!2068551 e!2068543)))

(declare-fun res!1349128 () Bool)

(assert (=> b!3326496 (=> res!1349128 e!2068543)))

(assert (=> b!3326496 (= res!1349128 (isSeparator!5326 (rule!7848 (h!42063 tokens!494))))))

(declare-fun lt!1130330 () Unit!51660)

(declare-fun lambda!119671 () Int)

(declare-fun forallContained!1273 (List!36767 Int Token!10018) Unit!51660)

(assert (=> b!3326496 (= lt!1130330 (forallContained!1273 tokens!494 lambda!119671 (h!42063 tokens!494)))))

(declare-fun b!3326497 () Bool)

(assert (=> b!3326497 (= e!2068554 e!2068542)))

(declare-fun res!1349132 () Bool)

(assert (=> b!3326497 (=> (not res!1349132) (not e!2068542))))

(declare-fun rulesProduceEachTokenIndividually!1366 (LexerInterface!4915 List!36766 BalanceConc!21670) Bool)

(assert (=> b!3326497 (= res!1349132 (rulesProduceEachTokenIndividually!1366 thiss!18206 rules!2135 lt!1130331))))

(declare-fun seqFromList!3706 (List!36767) BalanceConc!21670)

(assert (=> b!3326497 (= lt!1130331 (seqFromList!3706 tokens!494))))

(assert (=> b!3326498 (= e!2068550 (and tp!1039644 tp!1039653))))

(declare-fun b!3326499 () Bool)

(declare-fun e!2068544 () Bool)

(assert (=> b!3326499 (= e!2068542 (not e!2068544))))

(declare-fun res!1349127 () Bool)

(assert (=> b!3326499 (=> res!1349127 e!2068544)))

(declare-fun lt!1130335 () List!36765)

(declare-fun lt!1130333 () List!36765)

(assert (=> b!3326499 (= res!1349127 (not (= lt!1130335 lt!1130333)))))

(declare-fun printList!1463 (LexerInterface!4915 List!36767) List!36765)

(assert (=> b!3326499 (= lt!1130333 (printList!1463 thiss!18206 (Cons!36643 (h!42063 tokens!494) Nil!36643)))))

(declare-fun lt!1130329 () BalanceConc!21668)

(assert (=> b!3326499 (= lt!1130335 (list!13189 lt!1130329))))

(declare-fun lt!1130336 () BalanceConc!21670)

(declare-fun printTailRec!1410 (LexerInterface!4915 BalanceConc!21670 Int BalanceConc!21668) BalanceConc!21668)

(assert (=> b!3326499 (= lt!1130329 (printTailRec!1410 thiss!18206 lt!1130336 0 (BalanceConc!21669 Empty!11027)))))

(declare-fun print!1980 (LexerInterface!4915 BalanceConc!21670) BalanceConc!21668)

(assert (=> b!3326499 (= lt!1130329 (print!1980 thiss!18206 lt!1130336))))

(declare-fun singletonSeq!2422 (Token!10018) BalanceConc!21670)

(assert (=> b!3326499 (= lt!1130336 (singletonSeq!2422 (h!42063 tokens!494)))))

(declare-fun b!3326500 () Bool)

(declare-fun res!1349134 () Bool)

(assert (=> b!3326500 (=> (not res!1349134) (not e!2068542))))

(declare-fun forall!7641 (List!36767 Int) Bool)

(assert (=> b!3326500 (= res!1349134 (forall!7641 tokens!494 lambda!119671))))

(declare-fun res!1349130 () Bool)

(assert (=> start!310474 (=> (not res!1349130) (not e!2068554))))

(assert (=> start!310474 (= res!1349130 ((_ is Lexer!4913) thiss!18206))))

(assert (=> start!310474 e!2068554))

(assert (=> start!310474 true))

(assert (=> start!310474 e!2068552))

(declare-fun e!2068541 () Bool)

(assert (=> start!310474 (and (inv!49644 separatorToken!241) e!2068541)))

(assert (=> start!310474 e!2068559))

(declare-fun b!3326501 () Bool)

(declare-fun tp!1039650 () Bool)

(declare-fun e!2068548 () Bool)

(assert (=> b!3326501 (= e!2068556 (and tp!1039650 (inv!49640 (tag!5878 (h!42062 rules!2135))) (inv!49643 (transformation!5326 (h!42062 rules!2135))) e!2068548))))

(declare-fun tp!1039646 () Bool)

(declare-fun b!3326502 () Bool)

(declare-fun inv!21 (TokenValue!5556) Bool)

(assert (=> b!3326502 (= e!2068558 (and (inv!21 (value!172251 (h!42063 tokens!494))) e!2068545 tp!1039646))))

(declare-fun b!3326503 () Bool)

(declare-fun res!1349140 () Bool)

(assert (=> b!3326503 (=> res!1349140 e!2068551)))

(assert (=> b!3326503 (= res!1349140 (not (rulesProduceIndividualToken!2407 thiss!18206 rules!2135 (h!42063 tokens!494))))))

(declare-fun b!3326504 () Bool)

(assert (=> b!3326504 (= e!2068544 e!2068551)))

(declare-fun res!1349139 () Bool)

(assert (=> b!3326504 (=> res!1349139 e!2068551)))

(assert (=> b!3326504 (= res!1349139 (or (not (= lt!1130333 lt!1130334)) (not (= lt!1130335 lt!1130334))))))

(assert (=> b!3326504 (= lt!1130334 (list!13189 (charsOf!3340 (h!42063 tokens!494))))))

(declare-fun tp!1039642 () Bool)

(declare-fun b!3326505 () Bool)

(assert (=> b!3326505 (= e!2068541 (and (inv!21 (value!172251 separatorToken!241)) e!2068557 tp!1039642))))

(assert (=> b!3326506 (= e!2068548 (and tp!1039651 tp!1039643))))

(assert (=> b!3326507 (= e!2068546 (and tp!1039645 tp!1039647))))

(declare-fun b!3326508 () Bool)

(declare-fun res!1349133 () Bool)

(assert (=> b!3326508 (=> (not res!1349133) (not e!2068554))))

(declare-fun rulesInvariant!4312 (LexerInterface!4915 List!36766) Bool)

(assert (=> b!3326508 (= res!1349133 (rulesInvariant!4312 thiss!18206 rules!2135))))

(assert (= (and start!310474 res!1349130) b!3326492))

(assert (= (and b!3326492 res!1349135) b!3326508))

(assert (= (and b!3326508 res!1349133) b!3326497))

(assert (= (and b!3326497 res!1349132) b!3326485))

(assert (= (and b!3326485 res!1349138) b!3326491))

(assert (= (and b!3326491 res!1349137) b!3326500))

(assert (= (and b!3326500 res!1349134) b!3326489))

(assert (= (and b!3326489 res!1349129) b!3326487))

(assert (= (and b!3326487 res!1349141) b!3326499))

(assert (= (and b!3326499 (not res!1349127)) b!3326504))

(assert (= (and b!3326504 (not res!1349139)) b!3326503))

(assert (= (and b!3326503 (not res!1349140)) b!3326495))

(assert (= (and b!3326495 (not res!1349136)) b!3326496))

(assert (= (and b!3326496 (not res!1349128)) b!3326488))

(assert (= (and b!3326488 (not res!1349131)) b!3326493))

(assert (= b!3326501 b!3326506))

(assert (= b!3326486 b!3326501))

(assert (= (and start!310474 ((_ is Cons!36642) rules!2135)) b!3326486))

(assert (= b!3326484 b!3326498))

(assert (= b!3326505 b!3326484))

(assert (= start!310474 b!3326505))

(assert (= b!3326490 b!3326507))

(assert (= b!3326502 b!3326490))

(assert (= b!3326494 b!3326502))

(assert (= (and start!310474 ((_ is Cons!36643) tokens!494)) b!3326494))

(declare-fun m!3666577 () Bool)

(assert (=> b!3326503 m!3666577))

(declare-fun m!3666579 () Bool)

(assert (=> b!3326496 m!3666579))

(declare-fun m!3666581 () Bool)

(assert (=> b!3326499 m!3666581))

(declare-fun m!3666583 () Bool)

(assert (=> b!3326499 m!3666583))

(declare-fun m!3666585 () Bool)

(assert (=> b!3326499 m!3666585))

(declare-fun m!3666587 () Bool)

(assert (=> b!3326499 m!3666587))

(declare-fun m!3666589 () Bool)

(assert (=> b!3326499 m!3666589))

(declare-fun m!3666591 () Bool)

(assert (=> b!3326502 m!3666591))

(declare-fun m!3666593 () Bool)

(assert (=> b!3326485 m!3666593))

(declare-fun m!3666595 () Bool)

(assert (=> b!3326490 m!3666595))

(declare-fun m!3666597 () Bool)

(assert (=> b!3326490 m!3666597))

(declare-fun m!3666599 () Bool)

(assert (=> b!3326489 m!3666599))

(declare-fun m!3666601 () Bool)

(assert (=> b!3326484 m!3666601))

(declare-fun m!3666603 () Bool)

(assert (=> b!3326484 m!3666603))

(declare-fun m!3666605 () Bool)

(assert (=> b!3326504 m!3666605))

(assert (=> b!3326504 m!3666605))

(declare-fun m!3666607 () Bool)

(assert (=> b!3326504 m!3666607))

(declare-fun m!3666609 () Bool)

(assert (=> b!3326500 m!3666609))

(declare-fun m!3666611 () Bool)

(assert (=> b!3326495 m!3666611))

(assert (=> b!3326495 m!3666611))

(declare-fun m!3666613 () Bool)

(assert (=> b!3326495 m!3666613))

(declare-fun m!3666615 () Bool)

(assert (=> b!3326495 m!3666615))

(declare-fun m!3666617 () Bool)

(assert (=> b!3326508 m!3666617))

(declare-fun m!3666619 () Bool)

(assert (=> b!3326505 m!3666619))

(declare-fun m!3666621 () Bool)

(assert (=> b!3326493 m!3666621))

(assert (=> b!3326493 m!3666621))

(declare-fun m!3666623 () Bool)

(assert (=> b!3326493 m!3666623))

(declare-fun m!3666625 () Bool)

(assert (=> b!3326493 m!3666625))

(declare-fun m!3666627 () Bool)

(assert (=> b!3326488 m!3666627))

(declare-fun m!3666629 () Bool)

(assert (=> b!3326488 m!3666629))

(assert (=> b!3326488 m!3666627))

(declare-fun m!3666631 () Bool)

(assert (=> b!3326488 m!3666631))

(assert (=> b!3326488 m!3666629))

(declare-fun m!3666633 () Bool)

(assert (=> b!3326488 m!3666633))

(assert (=> b!3326488 m!3666631))

(declare-fun m!3666635 () Bool)

(assert (=> b!3326488 m!3666635))

(declare-fun m!3666637 () Bool)

(assert (=> b!3326501 m!3666637))

(declare-fun m!3666639 () Bool)

(assert (=> b!3326501 m!3666639))

(declare-fun m!3666641 () Bool)

(assert (=> b!3326494 m!3666641))

(declare-fun m!3666643 () Bool)

(assert (=> start!310474 m!3666643))

(declare-fun m!3666645 () Bool)

(assert (=> b!3326492 m!3666645))

(declare-fun m!3666647 () Bool)

(assert (=> b!3326497 m!3666647))

(declare-fun m!3666649 () Bool)

(assert (=> b!3326497 m!3666649))

(check-sat (not b!3326501) (not b_next!88209) (not b!3326492) (not b_next!88211) (not b!3326488) b_and!229199 (not b_next!88215) (not b!3326500) (not b!3326495) b_and!229201 (not b_next!88217) (not b_next!88219) (not b!3326485) (not b_next!88213) (not b!3326499) (not start!310474) b_and!229195 (not b!3326502) (not b!3326497) (not b!3326490) (not b!3326504) (not b!3326494) (not b!3326496) (not b!3326486) (not b!3326489) (not b!3326505) b_and!229197 (not b!3326503) b_and!229191 b_and!229193 (not b!3326493) (not b!3326508) (not b!3326484))
(check-sat (not b_next!88209) (not b_next!88211) (not b_next!88213) b_and!229195 b_and!229199 b_and!229197 (not b_next!88215) b_and!229191 b_and!229193 b_and!229201 (not b_next!88217) (not b_next!88219))
